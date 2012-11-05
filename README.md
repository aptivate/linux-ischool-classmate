# iSchool Linux Classmate Kernel

This patched DSDT fixes a problem with the DSDT supplied by the Intel
Classmate laptop's BIOS, which interacts particularly badly with the
Ubuntu Lucid kernel (2.6.32).

## Symptoms

Lid open/closed events are long delayed. We've observed delays of
several hours. It doesn't happen to all Classmates, it's usually
repeatable on each one, but sometimes magically fixes itself.

When the lid is closed on a faulty Classmate, the backlight goes off,
but the kernel doesn't generate any ACPI events (as shown by running
`acpi_listen` or `kacpimon`) and the contents of
`/proc/acpi/button/lid/LID/state` doesn't change, until several hours
later.

## Software versions

This has only been tested using Ubuntu Lucid (10.04 LTS) and the
Linux 2.5.32-36 kernel. I think the problem exists in all older kernels,
and potentially any later version if `acpid` is not running or the
brightness keys (Fn+F7 and Fn+F8) are not configured or don't change the
backlight level.

## Description of the problem

The problem occurs when automatic brightness control is enabled by
pressing Fn+F10. The embedded controller signals the kernel to execute
the following control method in the DSDT:

	\_SB.PCI0.LPC0.EC0._Q13

which enables a timer in the EC (the LSST flag, I think) which then
triggers every 10-30 ms, sending a message to the kernel to execute
this control method:

	\_SB.PCI0.LPC0.EC0._Q2A

That method is supposed to adjust the screen brightness to match the
ambient light level, or something. It does this by simulating keypresses
of the brightness up and down keys (Fn+F7 and Fn+F8) which send the
kernel a Notify on the Fn key:

	Notify (FNBT, 0x83)

(and 0x84, 0x93, 0x94), which is supposed to make the kernel increase or
decrease the screen brightness. `_Q2A` does this in a loop with delays
adding up to 120 ms times the difference in brightness level between the
target and current level.

So if the kernel responds to these brightness change events, the first
`_Q2A` will adjust the brightness to the desired levels, and the remaining
ones will do nothing (except sleep for 10 ms) when invoked. Because the
first invocation of `_Q2A` will take at least 120 ms, and these events are
generated every 10-30 ms, there will be some queued up to execute while
`_Q2A` runs for the first time. But the queue will eventually empty and
other events can be processed.

The problem happens because the Lucid kernel doesn't respond to these
brightness events. I think it doesn't even know about them. I think later
kernels such as 3.4.7 do know about them, but generate an Input layer
event (a kind of keypress) which `acpid` or `X` is supposed to receive
and interpret to change the brightness.

In any case, until and unless the brightness ends up at the expected
level, _every_ invocation of `_Q2A` will take at least 120 ms, and as
the events which trigger them are queued up every 10-30 ms, the queue
grows and other events, particularly LID events, are long delayed (up
to several hours, or four times as long as the system has been booted
before the lid is closed).

## Reproducing the problem

You can see this happening if you boot a kernel with ACPI and dynamic
debugging enabled, i.e. the following kernel options:

	CONFIG_ACPI_DEBUG
	CONFIG_DYNAMIC_DEBUG

Disable automatic brightness (e.g. using Fn+F7 to adjust brightness
manually), enable some debugging messages:

	mount -t debugfs none /sys/kernel/debug
	echo '0x00000004' | tee /sys/module/acpi/parameters/debug_layer
	echo '0x00000004' | tee /sys/module/acpi/parameters/debug_level
	echo -n 'file ec.c +p' | tee /sys/kernel/debug/dynamic_debug/control
	tail -f /var/log/syslog /var/log/debug | egrep '(push query execution|ev_queue_notify_reques)'

If you see any of these, then you didn't disable automatic brightness yet:

	acpi:ACPI: EC: push query execution (0x2a) on queue

If you see a constant stream of these messages, then wait for it to finish
(wait for the queue to empty; it may be faster to reboot as this can take
several hours, up to 12 times as long as the system has been booted for):

	evmisc-0125 [07] ev_queue_notify_reques: Dispatching Notify on [FNBT] Node f70152b8 Value 0x83 (**Device Specific**)
	evmisc-0201 [07] ev_queue_notify_reques: No notify handler for Notify (FNBT, 83) node f70152b8

If you see nothing, try closing the lid and check that you see the following
(if not, try to figure out where syslogd is sending messages from /proc/kmsg):

	acpi:ACPI: EC: push query execution (0x19) on queue
	evmisc-0125 [07] ev_queue_notify_reques: Dispatching Notify on [LID_] Node f7018060 Value 0x80 (**Device Specific**)

When you open the lid, you should see this message:

	acpi:ACPI: EC: push query execution (0x16) on queue
	evmisc-0125 [07] ev_queue_notify_reques: Dispatching Notify on [LID_] Node f7018060 Value 0x80 (**Device Specific**)

This means that the event from the enbedded controller (0x19 or 0x16) is
quickly dispatched to the operating system (Notify on the `LID_` device).

Now try enabling automatic brightness for 10 seconds (Fn+F10, wait 10
seconds, Fn+F7) and then close and open the lid. You should see that the
`Dispatching Notify on [FNBT]` messages continue for about 30 seconds after
you press Fn+F7, and the `Dispatching Notify on [LID_]` messages only
appear after all of these have been processed, i.e. 30 seconds late.

## Workaround

The workaround in DSDT.asl is to disable the `_Q13` control method which
responds to Fn+F10 by enabling the timer; and if we receive any `_Q2A`
events, which indicate that the timer is already enabled, then we disable
it, so we should not get any more `_Q2A` events after that.

The supplied `kernel.config` enables the ACPI and dynamic debugging
options listed earlier, and tells the kernel to override the DSDT using
the supplied version. You can build this kernel by following these steps:

	git clone git://kernel.ubuntu.com/ubuntu/ubuntu-lucid.git
	git clone git://github.com/aptivate/linux-ischool-classmate.git
	cp linux-ischool-classmate/kernel.config ubuntu-lucid/.config
	cp linux-ischool-classmate/DSDT.hex ubuntu-lucid/
	cd ubuntu-lucid/
	CONCURRENCY_LEVEL=3 fakeroot make-kpkg --initrd \
	    --append-to-version=-cw-custom-dsdt-120731-1 \
	    kernel-image kernel-headers kernel-debug

Copy the resulting kernel package to a Classmate laptop and install it.
Then run `update-initramfs` and `update-grub`:

	sudo update-initramfs -k 2.6.32.59+drm33.24-cw-custom-dsdt-120807-1 -c
	sudo update-grub

Check that `update-grub` detects both the new kernel and its corresponding
`initrd.img`, then reboot using the new kernel and verify that the problem
is fixed.

## Files

* `DSDT.dsl` is the source code for the modified DSDT with the fix.
* `DSDT.dsl.orig` is the source code for the original, unmodified DSDT
  which does not compile due to errors in the code.
* `Makefile` uses the Intel compiler `iasl` to compile `DSDT.dsl` into
  `DSDT.hex` and `DSDT.aml`.
* `DSDT.hex` is the compiled C code to be inserted into the Linux kernel.
* `kernel.config` is the Linux kernel configuration used to build the
  replacement kernel for the Intel Classmate as described above.
* `kernel.config-2.6.32-36-generic` is the original kernel configuration
  on which the replacement is based.

## Realtek RTL8192 driver DKMS package

Based on [r8169 by Tista](https://launchpad.net/~tista/+archive/x120e/+sourcepub/1806468/+listing-archive-extra),
updated to the latest 0007.0809.2012 driver release from Realtek.

See [this thread](https://bugs.launchpad.net/ubuntu/+source/linux/+bug/902557)
for details of the problems with this card. Precise drivers don't work
reliably.

To build the DKMS package:

	git clone git://github.com/aptivate/linux-ischool-classmate.git
	cd rtl8192ce-dkms/r8192ce-0007.0809.2012-1~classmate~121102~1cw
	debuild -i -us -uc -b
	dpkg -i ../r8192ce_0007.0809.2012-1~classmate~121102~1cw_all.deb

