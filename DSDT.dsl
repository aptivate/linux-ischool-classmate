/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100528
 *
 * Disassembly of DSDT.dat, Wed Jun  6 11:46:49 2012
 *
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x00005727 (22311)
 *     Revision         0x01 **** ACPI 1.0, no 64-bit math support
 *     Checksum         0x26
 *     OEM ID           "INTEL"
 *     OEM Table ID     "BEARG31A"
 *     OEM Revision     0x06040000 (100925440)
 *     Compiler ID      "MSFT"
 *     Compiler Version 0x03000001 (50331649)
 */
DefinitionBlock ("DSDT.aml", "DSDT", 1, "INTEL", "BEARG31A", 0x06040000)
{
    External (LNKE)
    External (LNKF)
    External (LNKB)
    External (LNKG)
    External (LNKA)
    External (LNKC)
    External (LNKH)
    External (LNKD)

    OperationRegion (NV1, SystemIO, 0x72, 0x02)
    Field (NV1, ByteAcc, NoLock, Preserve)
    {
        INDX,   8, 
        DATA,   8
    }

    IndexField (INDX, DATA, ByteAcc, NoLock, Preserve)
    {
                Offset (0x51), 
        WLEN,   1, 
        WLST,   1, 
        G3EN,   1, 
        G3ST,   1, 
        CLST,   1, 
                Offset (0x52), 
        FNLK,   8, 
        MPEG,   2, 
        BKLV,   3, 
        G3SX,   1, 
                Offset (0x54), 
        GSNX,   8, 
        GSNY,   8, 
        GSNZ,   8, 
        S4EN,   1, 
        WARM,   1, 
        S4WL,   1, 
        S43G,   1, 
        S4TP,   1, 
        S4BL,   3, 
        S3C4,   1, 
        TPMF,   1, 
        WEBC,   1, 
        HOMK,   1, 
        W510,   1
    }

    OperationRegion (PRT0, SystemIO, 0x80, 0x08)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32, 
        GDEV,   8
    }

    OperationRegion (IO_T, SystemIO, 0x0800, 0x10)
    Field (IO_T, ByteAcc, NoLock, Preserve)
    {
                Offset (0x08), 
        TRP0,   8
    }

    OperationRegion (GNVS, SystemMemory, 0x3F5CCD7C, 0x0100)
    Field (GNVS, AnyAcc, Lock, Preserve)
    {
        OSYS,   16, 
        SMIF,   8, 
        PRM0,   8, 
        PRM1,   8, 
        SCIF,   8, 
        PRM2,   8, 
        PRM3,   8, 
        LCKF,   8, 
        PRM4,   8, 
        PRM5,   8, 
        P80D,   32, 
        LIDS,   8, 
        PWRS,   8, 
        DBGS,   8, 
        LINX,   8, 
                Offset (0x14), 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
                Offset (0x1E), 
        BNUM,   8, 
        B0SC,   8, 
        B1SC,   8, 
        B2SC,   8, 
        B0SS,   8, 
        B1SS,   8, 
        B2SS,   8, 
                Offset (0x28), 
        APIC,   8, 
        MPEN,   8, 
                Offset (0x2B), 
        PPCM,   8, 
        PCP0,   8, 
        PCP1,   8, 
                Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
                Offset (0x3C), 
        IGDS,   8, 
        TLST,   8, 
        CADL,   8, 
        PADL,   8, 
        CSTE,   16, 
        NSTE,   16, 
        SSTE,   16, 
        NDID,   8, 
        DID1,   32, 
        DID2,   32, 
        DID3,   32, 
        DID4,   32, 
        DID5,   32, 
                Offset (0x67), 
        BLCS,   8, 
        BRTL,   8, 
        ALSE,   8, 
        ALAF,   8, 
        LLOW,   8, 
        LHIH,   8, 
                Offset (0x6E), 
        EMAE,   8, 
        EMAP,   16, 
        EMAL,   16, 
                Offset (0x74), 
        MEFE,   8, 
                Offset (0x78), 
        TPMP,   8, 
        TPME,   8, 
                Offset (0x82), 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8
    }

    OperationRegion (RCRB, SystemMemory, 0xFED1C000, 0x00004000)
    Field (RCRB, DWordAcc, Lock, Preserve)
    {
                Offset (0x1000), 
                Offset (0x3000), 
                Offset (0x3404), 
        HPAS,   2, 
            ,   5, 
        HPAE,   1, 
                Offset (0x3418), 
            ,   1, 
        PATD,   1, 
        SATD,   1, 
        SMBD,   1
    }

    Scope (_GPE)
    {
        Method (_L02, 0, NotSerialized)
        {
            Notify (\_TZ.TZ01, 0x80)
        }

        Method (_L03, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB1, 0x02)
        }

        Method (_L04, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB2, 0x02)
        }

        Method (_L06, 0, NotSerialized)
        {
            If (\_SB.PCI0.IGD0.GSSE)
            {
                \_SB.PCI0.IGD0.OPRN ()
            }
            Else
            {
                Store (0x01, \_SB.PCI0.LPC0.SCIS)
            }
        }

        Method (_L09, 0, NotSerialized)
        {
            If (\_SB.PCI0.EXP1.PSP1)
            {
                Store (0x01, \_SB.PCI0.EXP1.PSP1)
                Store (0x01, \_SB.PCI0.EXP1.PMCS)
                Notify (\_SB.PCI0.EXP1, 0x02)
            }

            If (\_SB.PCI0.EXP2.PSP2)
            {
                Store (0x01, \_SB.PCI0.EXP2.PSP2)
                Store (0x01, \_SB.PCI0.EXP2.PMCS)
                Notify (\_SB.PCI0.EXP2, 0x02)
            }

            If (\_SB.PCI0.EXP3.PSP3)
            {
                Store (0x01, \_SB.PCI0.EXP3.PSP3)
                Store (0x01, \_SB.PCI0.EXP3.PMCS)
                Notify (\_SB.PCI0.EXP3, 0x02)
            }
        }

        Method (_L0B, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.PCIB, 0x02)
        }

        Method (_L0C, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB3, 0x02)
        }

        Method (_L0D, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.EUSB, 0x02)
        }

        Method (_L0E, 0, NotSerialized)
        {
            Notify (\_SB.PCI0.USB4, 0x02)
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x00, 0x00001010, 0x06) {}
        Processor (CPU1, 0x01, 0x00001010, 0x06) {}
        Processor (CPU2, 0x02, 0x00001010, 0x06) {}
        Processor (CPU3, 0x03, 0x00001010, 0x06) {}
        Processor (CPU4, 0x04, 0x00001010, 0x06) {}
        Processor (CPU5, 0x05, 0x00001010, 0x06) {}
        Processor (CPU6, 0x06, 0x00001010, 0x06) {}
        Processor (CPU7, 0x07, 0x00001010, 0x06) {}
    }

    Scope (_SB)
    {
        OperationRegion (TCG1, SystemMemory, 0x3F5CCD75, 0x0007)
        Field (TCG1, AnyAcc, NoLock, Preserve)
        {
            PPRQ,   8, 
            PPLO,   8, 
            PPRP,   8, 
            PPOR,   8, 
            TPRS,   8, 
            TPMV,   8, 
            MOR,    8
        }

        Method (PHSR, 1, Serialized)
        {
            Store (Arg0, BCMD)
            Store (Zero, DID)
            Store (Zero, SMIC)
            If (LEqual (BCMD, Arg0)) {}
            Store (Zero, BCMD)
            Store (Zero, DID)
            Return (0x00)
        }

        OperationRegion (SMI0, SystemIO, 0x0000FE00, 0x00000002)
        Field (SMI0, AnyAcc, NoLock, Preserve)
        {
            SMIC,   8
        }

        OperationRegion (SMI1, SystemMemory, 0x3F5CEEBD, 0x00000090)
        Field (SMI1, AnyAcc, NoLock, Preserve)
        {
            BCMD,   8, 
            DID,    32, 
            INFO,   1024
        }

        Field (SMI1, AnyAcc, NoLock, Preserve)
        {
                    AccessAs (ByteAcc, 0x00), 
                    Offset (0x05), 
            INF,    8
        }

        Name (PR00, Package (0x0B)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                0x01, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x00, 
                LNKH, 
                0x00
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x01, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x00, 
                LNKG, 
                0x00
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x01, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x00, 
                LNKA, 
                0x00
            }
        })
        Name (AR00, Package (0x0B)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                0x01, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x00, 
                0x00, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x01, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                0x00, 
                0x00, 
                0x16
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x01, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                0x00, 
                0x00, 
                0x10
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                0x00
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                0x00
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKC, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                0x00
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKD, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKA, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                0x00
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x12
            }
        })
        Name (PR01, Package (0x05)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                LNKF, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                LNKG, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                0x00
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                0x00
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x00, 
                LNKE, 
                0x00
            }
        })
        Name (AR01, Package (0x05)
        {
            Package (0x04)
            {
                0xFFFF, 
                0x00, 
                0x00, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x01, 
                0x00, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                0x00, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                0x00, 
                0x14
            }, 

            Package (0x04)
            {
                0x0008FFFF, 
                0x00, 
                0x00, 
                0x14
            }
        })
        Device (PCI0)
        {
            OperationRegion (MPCE, PCI_Config, 0x48, 0x04)
            Field (MPCE, DWordAcc, NoLock, Preserve)
            {
                PEXE,   1, 
                LENG,   2, 
                    ,   25, 
                EXBA,   4
            }

            Method (_INI, 0, NotSerialized)
            {
                Store (0x00, PEXE)
                \_SB.OSHT ()
                If (CondRefOf (_OSI, Local0))
                {
                    Store (0x07D1, OSYS)
                }
                Else
                {
                    If (LEqual (SizeOf (_OS), 0x14))
                    {
                        Store (0x07D0, OSYS)
                    }
                    Else
                    {
                        If (LEqual (SizeOf (_OS), 0x27))
                        {
                            Store (0x07CF, OSYS)
                        }
                        Else
                        {
                            Store (0x07CE, OSYS)
                        }
                    }
                }

                P8XH (0x00, 0x0806)
            }

            Name (_HID, EisaId ("PNP0A08"))
            Name (_CID, EisaId ("PNP0A03"))
            Name (_ADR, 0x00)
            Method (_OSC, 4, NotSerialized)
            {
                Store (Arg2, Local0)
                Multiply (Local0, 0x04, Local1)
                Name (BUF1, Buffer (Local1) {})
                Store (Arg3, BUF1)
                Store (0x00, Local1)
                Store (0x00, Local2)
                While (Local0)
                {
                    Multiply (Local1, 0x04, Local2)
                    CreateDWordField (BUF1, Local2, CAPB)
                    If (Arg2)
                    {
                        And (CAPB, 0xFFFFFFFC)
                        Or (CAPB, 0x00)
                    }
                    Else
                    {
                    }

                    Increment (Local1)
                    Decrement (Local0)
                }

                Return (BUF1)
            }

            OperationRegion (REGS, PCI_Config, 0x40, 0xC0)
            Field (REGS, ByteAcc, NoLock, Preserve)
            {
                        Offset (0x50), 
                PAM0,   8, 
                PAM1,   8, 
                PAM2,   8, 
                PAM3,   8, 
                PAM4,   8, 
                PAM5,   8, 
                PAM6,   8, 
                    ,   7, 
                HEN,    1, 
                        Offset (0x60), 
                TASM,   10, 
                        Offset (0x62), 
                        Offset (0x70), 
                Z000,   16
            }

            Name (RSRC, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x003F,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0040,             // Length
                    0x00,, )
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    0x00,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000C3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y01, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C4000,         // Range Minimum
                    0x000C7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y02, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C8000,         // Range Minimum
                    0x000CBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y03, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000CC000,         // Range Minimum
                    0x000CFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y04, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D0000,         // Range Minimum
                    0x000D3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y05, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D4000,         // Range Minimum
                    0x000D7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y06, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000D8000,         // Range Minimum
                    0x000DBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y07, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000DC000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y08, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000E3FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y09, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E4000,         // Range Minimum
                    0x000E7FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y0A, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E8000,         // Range Minimum
                    0x000EBFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y0B, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000EC000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00004000,         // Length
                    0x00,, _Y0C, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    0x00,, _Y0D, AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000001,         // Length
                    0x00,, _Y00, AddressRangeMemory, TypeStatic)
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FDFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F100,         // Length
                    0x00,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000000,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000001,         // Length
                    0x00,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0xFED40000,         // Range Minimum
                    0xFED44FFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00005000,         // Length
                    ,, _Y0E, AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)
            {
                Store (Zero, Local1)
                CreateDWordField (RSRC, \_SB.PCI0._Y00._MIN, BTMN)
                CreateDWordField (RSRC, \_SB.PCI0._Y00._MAX, BTMX)
                CreateDWordField (RSRC, \_SB.PCI0._Y00._LEN, BTLN)
                ShiftLeft (And (Z000, 0xFFF0), 0x10, BTMN)
                Subtract (0xF8000000, BTMN, BTLN)
                Subtract (Add (BTMN, BTLN), 0x01, BTMX)
                CreateBitField (RSRC, \_SB.PCI0._Y01._RW, C0RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y01._MIN, C0MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y01._MAX, C0MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y01._LEN, C0LN)
                Store (One, C0RW)
                If (LEqual (And (PAM1, 0x03), 0x01))
                {
                    Store (Zero, C0RW)
                }

                Store (Zero, C0LN)
                If (LNot (And (PAM1, 0x03)))
                {
                    Store (0x4000, C0LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y02._RW, C4RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y02._MIN, C4MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y02._MAX, C4MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y02._LEN, C4LN)
                Store (One, C4RW)
                If (LEqual (And (PAM1, 0x30), 0x10))
                {
                    Store (Zero, C4RW)
                }

                Store (Zero, C4LN)
                If (LNot (And (PAM1, 0x30)))
                {
                    Store (0x4000, C4LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y03._RW, C8RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y03._MIN, C8MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y03._MAX, C8MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y03._LEN, C8LN)
                Store (One, C8RW)
                If (LEqual (And (PAM2, 0x03), 0x01))
                {
                    Store (Zero, C8RW)
                }

                Store (Zero, C8LN)
                If (LNot (And (PAM2, 0x03)))
                {
                    Store (0x4000, C8LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y04._RW, CCRW)
                CreateDWordField (RSRC, \_SB.PCI0._Y04._MIN, CCMN)
                CreateDWordField (RSRC, \_SB.PCI0._Y04._MAX, CCMX)
                CreateDWordField (RSRC, \_SB.PCI0._Y04._LEN, CCLN)
                Store (One, CCRW)
                If (LEqual (And (PAM2, 0x30), 0x10))
                {
                    Store (Zero, CCRW)
                }

                Store (Zero, CCLN)
                If (LNot (And (PAM2, 0x30)))
                {
                    Store (0x4000, CCLN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y05._RW, D0RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y05._MIN, D0MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y05._MAX, D0MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y05._LEN, D0LN)
                Store (One, D0RW)
                If (LEqual (And (PAM3, 0x03), 0x01))
                {
                    Store (Zero, D0RW)
                }

                Store (Zero, D0LN)
                If (LNot (And (PAM3, 0x03)))
                {
                    Store (0x4000, D0LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y06._RW, D4RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y06._MIN, D4MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y06._MAX, D4MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y06._LEN, D4LN)
                Store (One, D4RW)
                If (LEqual (And (PAM3, 0x30), 0x10))
                {
                    Store (Zero, D4RW)
                }

                Store (Zero, D4LN)
                If (LNot (And (PAM3, 0x30)))
                {
                    Store (0x4000, D4LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y07._RW, D8RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y07._MIN, D8MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y07._MAX, D8MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y07._LEN, D8LN)
                Store (One, D8RW)
                If (LEqual (And (PAM4, 0x03), 0x01))
                {
                    Store (Zero, D8RW)
                }

                Store (Zero, D8LN)
                If (LNot (And (PAM4, 0x03)))
                {
                    Store (0x4000, D8LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y08._RW, DCRW)
                CreateDWordField (RSRC, \_SB.PCI0._Y08._MIN, DCMN)
                CreateDWordField (RSRC, \_SB.PCI0._Y08._MAX, DCMX)
                CreateDWordField (RSRC, \_SB.PCI0._Y08._LEN, DCLN)
                Store (One, DCRW)
                If (LEqual (And (PAM4, 0x30), 0x10))
                {
                    Store (Zero, DCRW)
                }

                Store (Zero, DCLN)
                If (LNot (And (PAM4, 0x30)))
                {
                    Store (0x4000, DCLN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y09._RW, E0RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y09._MIN, E0MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y09._MAX, E0MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y09._LEN, E0LN)
                Store (One, E0RW)
                If (LEqual (And (PAM5, 0x03), 0x01))
                {
                    Store (Zero, E0RW)
                }

                Store (Zero, E0LN)
                If (LNot (And (PAM5, 0x03)))
                {
                    Store (0x4000, E0LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0A._RW, E4RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y0A._MIN, E4MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y0A._MAX, E4MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y0A._LEN, E4LN)
                Store (One, E4RW)
                If (LEqual (And (PAM5, 0x30), 0x10))
                {
                    Store (Zero, E4RW)
                }

                Store (Zero, E4LN)
                If (LNot (And (PAM5, 0x30)))
                {
                    Store (0x4000, E4LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0B._RW, E8RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y0B._MIN, E8MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y0B._MAX, E8MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y0B._LEN, E8LN)
                Store (One, E8RW)
                If (LEqual (And (PAM6, 0x03), 0x01))
                {
                    Store (Zero, E8RW)
                }

                Store (Zero, E8LN)
                If (LNot (And (PAM6, 0x03)))
                {
                    Store (0x4000, E8LN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0C._RW, ECRW)
                CreateDWordField (RSRC, \_SB.PCI0._Y0C._MIN, ECMN)
                CreateDWordField (RSRC, \_SB.PCI0._Y0C._MAX, ECMX)
                CreateDWordField (RSRC, \_SB.PCI0._Y0C._LEN, ECLN)
                Store (One, ECRW)
                If (LEqual (And (PAM6, 0x30), 0x10))
                {
                    Store (Zero, ECRW)
                }

                Store (Zero, ECLN)
                If (LNot (And (PAM6, 0x30)))
                {
                    Store (0x4000, ECLN)
                }

                CreateBitField (RSRC, \_SB.PCI0._Y0D._RW, F0RW)
                CreateDWordField (RSRC, \_SB.PCI0._Y0D._MIN, F0MN)
                CreateDWordField (RSRC, \_SB.PCI0._Y0D._MAX, F0MX)
                CreateDWordField (RSRC, \_SB.PCI0._Y0D._LEN, F0LN)
                Store (One, F0RW)
                If (LEqual (And (PAM0, 0x30), 0x10))
                {
                    Store (Zero, F0RW)
                }

                Store (Zero, F0LN)
                If (LNot (And (PAM0, 0x30)))
                {
                    Store (0x00010000, F0LN)
                }

                If (TPMP)
                {
                    CreateDWordField (RSRC, \_SB.PCI0._Y0E._LEN, TPML)
                    Store (0x5000, TPML)
                }

                Return (RSRC)
            }

            Method (_S3D, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (_S4D, 0, NotSerialized)
            {
                Return (0x02)
            }

            Method (_PRT, 0, NotSerialized)
            {
                If (PICF)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Device (IGD0)
            {
                Name (_ADR, 0x00020000)
                OperationRegion (IGDP, PCI_Config, 0x40, 0xC0)
                Field (IGDP, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x12), 
                        ,   1, 
                    GIVD,   1, 
                        ,   2, 
                    GUMA,   3, 
                            Offset (0x14), 
                        ,   4, 
                    GMFN,   1, 
                            Offset (0x18), 
                    SSRW,   32, 
                            Offset (0xA4), 
                    ASLE,   8, 
                            Offset (0xA8), 
                    GSSE,   1, 
                    GSSB,   14, 
                    GSES,   1, 
                            Offset (0xB0), 
                            Offset (0xB1), 
                    CDVL,   5, 
                            Offset (0xB2), 
                            Offset (0xBC), 
                    ASLS,   32
                }

                Method (_STA, 0, NotSerialized)
                {
                    If (LEqual (ASLS, 0xFEF00000))
                    {
                        Return (0x00)
                    }
                    Else
                    {
                        Return (0x0F)
                    }
                }

                OperationRegion (IGDM, SystemMemory, 0x3F5CCE7C, 0x00002040)
                Field (IGDM, AnyAcc, NoLock, Preserve)
                {
                    SIGN,   128, 
                    SIZE,   32, 
                    OVER,   32, 
                    SVER,   256, 
                    VVER,   128, 
                    GVER,   128, 
                    MBOX,   32, 
                            Offset (0x100), 
                    DRDY,   32, 
                    CSTS,   32, 
                    CEVT,   32, 
                            Offset (0x120), 
                    DIDL,   256, 
                    CPDL,   256, 
                    CADL,   256, 
                    NADL,   256, 
                    ASLP,   32, 
                    TIDX,   32, 
                    CHPD,   32, 
                    CLID,   32, 
                    CDCK,   32, 
                    SXSW,   32, 
                    EVTS,   32, 
                    CNOT,   32, 
                    NRDY,   32, 
                            Offset (0x200), 
                    SCIE,   1, 
                    GEFC,   4, 
                    GXFC,   3, 
                    GESF,   8, 
                            Offset (0x204), 
                    PARM,   32, 
                    DSLP,   32, 
                            Offset (0x300), 
                    ARDY,   32, 
                    ASLC,   32, 
                    TCHE,   32, 
                    ALSI,   32, 
                    BCLP,   32, 
                    PFIT,   32, 
                            Offset (0x400), 
                    GVD1,   57344, 
                    IBTT,   8, 
                    IPAT,   8, 
                    ITVF,   8, 
                    ITVM,   8, 
                    IPSC,   8, 
                    IBLC,   8, 
                    IBIA,   8, 
                    ISSC,   8, 
                    I409,   8, 
                    I509,   8, 
                    I609,   8, 
                    I709,   8, 
                    IDMM,   8, 
                    IDMS,   8, 
                    IF1E,   8, 
                    GSMI,   8, 
                    HVCO,   8, 
                    LIDS,   8, 
                    CGCS,   16
                }

                Name (DBTB, Package (0x11)
                {
                    0x00, 
                    0x01, 
                    0x02, 
                    0x03, 
                    0x04, 
                    0x05, 
                    0x06, 
                    0x07, 
                    0x08, 
                    0x09, 
                    0x0A, 
                    0x10, 
                    0x11, 
                    0x12, 
                    0x13, 
                    0x14, 
                    0xFF
                })
                Method (_DOS, 1, NotSerialized)
                {
                }

                Name (SUCC, 0x01)
                Name (NVLD, 0x02)
                Name (CRIT, 0x04)
                Name (NCRT, 0x06)
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, 0x00))
                    {
                        Store (0x00, PARM)
                        Or (PARM, ShiftLeft (0x01, 0x00), PARM)
                        Or (PARM, ShiftLeft (0x01, 0x03), PARM)
                        Or (PARM, ShiftLeft (0x01, 0x06), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x01))
                    {
                        Store (0x00, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Name (LOOP, 0x00)
                        And (PARM, 0xFFFFFF00, PARM)
                        Or (DerefOf (Index (DBTB, IBTT)), PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05)) {}
                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, 0x01, PARM)
                        Or (PARM, ShiftLeft (GMFN, 0x01), PARM)
                        Or (PARM, ShiftLeft (0x02, 0x0B), PARM)
                        If (LEqual (IDMM, 0x00))
                        {
                            Or (PARM, ShiftLeft (IDMS, 0x0D), PARM)
                        }

                        If (LOr (LEqual (IDMM, 0x01), LEqual (IDMM, 0x03)))
                        {
                            Or (PARM, ShiftLeft (IDMS, 0x11), PARM)
                        }

                        Or (PARM, ShiftLeft (CGCS, 0x15), PARM)
                        Store (0x01, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A)) {}
                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, 0x00))
                    {
                        Store (0x00, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                Method (OPRN, 0, Serialized)
                {
                    If (LEqual (GEFC, 0x04))
                    {
                        Store (GBDA (), GXFC)
                    }

                    If (LEqual (GEFC, 0x06))
                    {
                        Store (SBCB (), GXFC)
                    }

                    Store (PARM, SSRW)
                    Store (0x00, GEFC)
                    Store (0x01, \_SB.PCI0.LPC0.SCIS)
                    Store (0x00, GSSE)
                    Store (0x00, SCIE)
                    Return (Zero)
                }
            }

            Device (IGD1)
            {
                Name (_ADR, 0x00020001)
            }

            Device (EXP1)
            {
                Name (_ADR, 0x001C0000)
                OperationRegion (P1CS, PCI_Config, 0x40, 0x0100)
                Field (P1CS, AnyAcc, NoLock, WriteAsZeros)
                {
                            Offset (0x1A), 
                    ABP1,   1, 
                        ,   2, 
                    PDC1,   1, 
                        ,   2, 
                    PDS1,   1, 
                            Offset (0x20), 
                            Offset (0x22), 
                    PSP1,   1, 
                            Offset (0x9C), 
                        ,   30, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Device (PXS1)
                {
                    Name (_ADR, 0x00)
                    OperationRegion (X1CS, PCI_Config, 0x00, 0x0100)
                    Field (X1CS, AnyAcc, NoLock, WriteAsZeros)
                    {
                        X1DV,   32
                    }

                    Method (_RMV, 0, NotSerialized)
                    {
                        Return (0x00)
                    }
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICF)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (EXP2)
            {
                Name (_ADR, 0x001C0001)
                OperationRegion (P2CS, PCI_Config, 0x40, 0x0100)
                Field (P2CS, AnyAcc, NoLock, WriteAsZeros)
                {
                            Offset (0x1A), 
                    ABP2,   1, 
                        ,   2, 
                    PDC2,   1, 
                        ,   2, 
                    PDS2,   1, 
                            Offset (0x20), 
                            Offset (0x22), 
                    PSP2,   1, 
                            Offset (0x9C), 
                        ,   30, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Device (PXS2)
                {
                    Name (_ADR, 0x00)
                    OperationRegion (X2CS, PCI_Config, 0x00, 0x0100)
                    Field (X2CS, AnyAcc, NoLock, WriteAsZeros)
                    {
                        X2DV,   32
                    }

                    Method (_RMV, 0, NotSerialized)
                    {
                        Return (0x00)
                    }
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICF)
                    {
                        Return (AR05)
                    }

                    Return (PR05)
                }
            }

            Device (EXP3)
            {
                Name (_ADR, 0x001C0002)
                OperationRegion (P3CS, PCI_Config, 0x40, 0x0100)
                Field (P3CS, AnyAcc, NoLock, WriteAsZeros)
                {
                            Offset (0x1A), 
                    ABP3,   1, 
                        ,   2, 
                    PDC3,   1, 
                        ,   2, 
                    PDS3,   1, 
                            Offset (0x20), 
                            Offset (0x22), 
                    PSP3,   1, 
                            Offset (0x9C), 
                        ,   30, 
                    HPCS,   1, 
                    PMCS,   1
                }

                Device (PXS3)
                {
                    Name (_ADR, 0x00)
                    OperationRegion (X3CS, PCI_Config, 0x00, 0x0100)
                    Field (X3CS, AnyAcc, NoLock, WriteAsZeros)
                    {
                        X3DV,   32
                    }

                    Method (_RMV, 0, NotSerialized)
                    {
                        Return (0x00)
                    }
                }

                Name (_PRW, Package (0x02)
                {
                    0x09, 
                    0x04
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICF)
                    {
                        Return (AR06)
                    }

                    Return (PR06)
                }
            }

            Device (PCIB)
            {
                Name (_ADR, 0x001E0000)
                Name (_PRW, Package (0x02)
                {
                    0x0B, 
                    0x03
                })
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICF)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }
            }

            Device (LPC0)
            {
                Name (_ADR, 0x001F0000)
                Name (DVEN, 0x00)
                OperationRegion (TCOI, SystemIO, 0x1060, 0x08)
                Field (TCOI, WordAcc, NoLock, Preserve)
                {
                            Offset (0x04), 
                        ,   9, 
                    SCIS,   1, 
                            Offset (0x06)
                }

                Method (DECD, 4, Serialized)
                {
                    Store (Arg0, Debug)
                }

                Device (MBRD)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x1F)
                    Name (RSRC, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0010,             // Range Minimum
                            0x0010,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0024,             // Range Minimum
                            0x0024,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0028,             // Range Minimum
                            0x0028,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x002C,             // Range Minimum
                            0x002C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0030,             // Range Minimum
                            0x0030,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0034,             // Range Minimum
                            0x0034,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0038,             // Range Minimum
                            0x0038,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x003C,             // Range Minimum
                            0x003C,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0072,             // Range Minimum
                            0x0072,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0090,             // Range Minimum
                            0x0090,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x00A4,             // Range Minimum
                            0x00A4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A8,             // Range Minimum
                            0x00A8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00AC,             // Range Minimum
                            0x00AC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B0,             // Range Minimum
                            0x00B0,             // Range Maximum
                            0x01,               // Alignment
                            0x06,               // Length
                            )
                        IO (Decode16,
                            0x00B8,             // Range Minimum
                            0x00B8,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00BC,             // Range Minimum
                            0x00BC,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0800,             // Range Minimum
                            0x0800,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            _Y0F)
                        IO (Decode16,
                            0x1180,             // Range Minimum
                            0x1180,             // Range Maximum
                            0x01,               // Alignment
                            0x40,               // Length
                            _Y10)
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0xFE00,             // Range Minimum
                            0xFE00,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0068,             // Range Minimum
                            0x0068,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0200,             // Range Minimum
                            0x0200,             // Range Maximum
                            0x00,               // Alignment
                            0x10,               // Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xE0000000,         // Address Base
                            0x10000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFED14000,         // Address Base
                            0x00004000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xF8000000,         // Address Base
                            0x04000000,         // Address Length
                            )
                        Memory32Fixed (ReadWrite,
                            0xFEF00000,         // Address Base
                            0x00100000,         // Address Length
                            )
                    })
                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.MBRD._Y0F._MIN, PMMN)
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.MBRD._Y0F._MAX, PMMX)
                        And (^^PMBA, 0xFF80, PMMN)
                        Store (PMMN, PMMX)
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.MBRD._Y10._MIN, GPMN)
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.MBRD._Y10._MAX, GPMX)
                        And (^^GPBA, 0xFF80, GPMN)
                        Store (GPMN, GPMX)
                        Return (RSRC)
                    }
                }

                Device (DMAC)
                {
                    Name (_HID, EisaId ("PNP0200"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0000,             // Range Minimum
                            0x0000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer16, )
                            {4}
                    })
                }

                Device (MATH)
                {
                    Name (_HID, EisaId ("PNP0C04"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x00F0,             // Range Minimum
                            0x00F0,             // Range Maximum
                            0x01,               // Alignment
                            0x0F,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {13}
                    })
                }

                Device (PIC)
                {
                    Name (_HID, EisaId ("PNP0000"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0020,             // Range Minimum
                            0x0020,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {2}
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                    Method (_CRS, 0, Serialized)
                    {
                        If (And (MTSE, 0x00020000))
                        {
                            Return (BUF0)
                        }

                        Return (BUF1)
                    }
                }

                Scope (\)
                {
                    Name (FGEC, 0x00)
                    Name (OSFL, 0x00)
                    Name (OSEC, 0x00)
                    Name (THPP, 0x00)
                    Name (OSF1, 0x00)
                    Name (OSF6, 0x00)
                    Name (OSFN, 0x00)
                    Name (OSF9, 0x00)
                    Name (BKLT, 0x00)
                    Name (BKIP, 0x00)
                    Name (WLIP, 0x00)
                    Name (G3IP, 0x00)
                    Name (TPST, 0x00)
                    Name (WLEB, 0x00)
                }

                Scope (\_SB.PCI0.LPC0)
                {
                    Device (IPML)
                    {
                        Name (_HID, "IPML200")
                        Name (_UID, 0x00)
                        Name (VALU, 0x00)
                        Method (GRDI, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, 0xC0))
                            {
                                Return (\BKLV)
                            }

                            If (LEqual (Arg0, 0xC1))
                            {
                                If (LEqual (\WLEN, 0x01))
                                {
                                    Store (0x01, \_SB.PCI0.LPC0.EC0.ECWL)
                                    Return (0xFF)
                                }

                                If (\WLST)
                                {
                                    Return (0x00)
                                }
                                Else
                                {
                                    Return (0x01)
                                }
                            }

                            If (LEqual (Arg0, 0xC2))
                            {
                                Store (0x01, \_SB.PCI0.LPC0.EC0.XLDO)
                                Return (\_SB.PCI0.LPC0.EC0.XLDO)
                            }

                            If (LEqual (Arg0, 0xC3))
                            {
                                If (LEqual (\G3EN, 0x01))
                                {
                                    Return (0xFF)
                                }

                                If (\G3ST)
                                {
                                    Return (0x00)
                                }
                                Else
                                {
                                    Return (0x01)
                                }
                            }

                            Store (Arg0, P80H)
                            Store (0xFF, VALU)
                            Return (VALU)
                        }

                        Method (GWRI, 2, NotSerialized)
                        {
                            If (LEqual (Arg0, 0xC0))
                            {
                                If (Not (LAnd (LGreaterEqual (Arg1, 0x00), LLessEqual (Arg1, 
                                    0x07))))
                                {
                                    Return (0xFF)
                                }

                                Store (\_SB.PCI0.LPC0.EC0.XBNS, Local0)
                                Store (Arg1, \_SB.PCI0.LPC0.EC0.XBNS)
                                Store (Arg1, \BKLV)
                                Return (Local0)
                            }

                            If (LEqual (Arg0, 0xC1))
                            {
                                If (Not (LOr (LEqual (Arg1, 0x00), LEqual (Arg1, 0x01))))
                                {
                                    Return (0xFF)
                                }

                                If (LEqual (Arg1, 0x00))
                                {
                                    TRAP (0x52)
                                    Store (0x01, \WLST)
                                    Store (0x00, Local0)
                                    Sleep (0x07D0)
                                    Notify (\_SB.PCI0.EXP2, 0x01)
                                }

                                If (LEqual (Arg1, 0x01))
                                {
                                    TRAP (0x51)
                                    Store (0x00, \WLST)
                                    Store (0x01, Local0)
                                    Sleep (0x3C)
                                    Notify (\_SB.PCI0.EXP2, 0x01)
                                }

                                Sleep (0x012C)
                                Return (Local0)
                            }

                            If (LEqual (Arg0, 0xC2))
                            {
                                If (Not (LOr (LEqual (Arg1, 0x00), LEqual (Arg1, 0x01))))
                                {
                                    Return (0xFF)
                                }

                                Store (\_SB.PCI0.LPC0.EC0.XLDO, Local0)
                                If (LEqual (Arg1, 0x00)) {}
                                If (LEqual (Arg1, 0x01)) {}
                                Store (0x01, \_SB.PCI0.LPC0.EC0.XLDO)
                                Return (\_SB.PCI0.LPC0.EC0.XLDO)
                            }

                            If (LEqual (Arg0, 0xC3))
                            {
                                If (Not (LOr (LEqual (Arg1, 0x00), LEqual (Arg1, 0x01))))
                                {
                                    Return (0xFF)
                                }

                                If (LEqual (\G3EN, 0x01))
                                {
                                    Return (0xFF)
                                }

                                If (\G3ST)
                                {
                                    Store (0x01, Local0)
                                }
                                Else
                                {
                                    Store (0x00, Local0)
                                }

                                If (LEqual (Arg1, 0x00))
                                {
                                    TRAP (0x54)
                                    Store (0x01, \G3ST)
                                }

                                If (LEqual (Arg1, 0x01))
                                {
                                    TRAP (0x53)
                                    Store (0x00, \G3ST)
                                }

                                Sleep (0x012C)
                                Return (Local0)
                            }

                            Store (0xFF, VALU)
                            Return (VALU)
                        }

                        Name (EBST, Package (0x08)
                        {
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00, 
                            0x00
                        })
                        Method (EBTR, 1, NotSerialized)
                        {
                            Store (\_SB.PCI0.LPC0.EC0.XST3, Local0)
                            And (Local0, 0xFF, Index (EBST, 0x01))
                            ShiftRight (Local0, 0x08, Index (EBST, 0x00))
                            Store (\_SB.PCI0.LPC0.EC0.BAVC, Local0)
                            And (Local0, 0xFF, Index (EBST, 0x03))
                            ShiftRight (Local0, 0x08, Index (EBST, 0x02))
                            Store (\_SB.PCI0.LPC0.EC0.BATT, Local0)
                            And (Local0, 0xFF, Index (EBST, 0x05))
                            Store (\_SB.PCI0.LPC0.EC0.BT1C, Local0)
                            And (Local0, 0xFF, Index (EBST, 0x07))
                            ShiftRight (Local0, 0x08, Index (EBST, 0x06))
                            Return (EBST)
                        }
                    }

                    Device (FNBT)
                    {
                        Name (_HID, "FnBT0000")
                        Name (_UID, 0x00)
                        Method (FNCT, 1, NotSerialized)
                        {
                            And (Arg0, 0x01, Local0)
                            Store (Local0, FNLK)
                        }
                    }

                    Device (ACCE)
                    {
                        Name (_HID, "ACCE0001")
                        Name (_UID, 0x00)
                        Name (AXIS, Buffer (0x06)
                        {
                            0x00, 0x00, 0x00
                        })
                        Name (GCMD, Buffer (0x01)
                        {
                            0x00
                        })
                        CreateWordField (AXIS, 0x00, GX)
                        CreateWordField (AXIS, 0x02, GY)
                        CreateWordField (AXIS, 0x04, GZ)
                        Method (_STA, 0, NotSerialized)
                        {
                            If (\GDEV)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (0x00)
                            }
                        }

                        Method (ACMD, 4, NotSerialized)
                        {
                            If (LEqual (Arg0, 0x01))
                            {
                                Store (0x01, \_SB.PCI0.LPC0.EC0.APST)
                                If (LEqual (\_SB.PCI0.LPC0.EC0.ECST, 0x01))
                                {
                                    Sleep (0x03)
                                }
                                Else
                                {
                                }

                                Store (\_SB.PCI0.LPC0.EC0.GXRG, GX)
                                Store (\_SB.PCI0.LPC0.EC0.GYRG, GY)
                                Store (\_SB.PCI0.LPC0.EC0.GZRG, GZ)
                                Store (0x00, \_SB.PCI0.LPC0.EC0.APST)
                                Return (AXIS)
                            }

                            If (LEqual (Arg0, 0x02))
                            {
                                Store (Arg1, \_SB.PCI0.LPC0.EC0.GETB)
                            }

                            If (LEqual (Arg0, 0x03))
                            {
                                Store (0x01, \_SB.PCI0.LPC0.EC0.GRUN)
                            }

                            If (LEqual (Arg0, 0x04))
                            {
                                Store (0x00, \_SB.PCI0.LPC0.EC0.GRUN)
                            }

                            If (LEqual (Arg0, 0x05))
                            {
                                Store (Arg1, \_SB.PCI0.LPC0.EC0.GWRG)
                                Store (0x01, \_SB.PCI0.LPC0.EC0.GSWT)
                            }

                            If (LEqual (Arg0, 0x06))
                            {
                                Store (0x01, \_SB.PCI0.LPC0.EC0.GSRD)
                                Sleep (0xFA)
                                Store (\_SB.PCI0.LPC0.EC0.GRRG, Local0)
                                Store (And (Local0, 0x03), Index (GCMD, 0x00))
                                Return (GCMD)
                            }

                            If (LEqual (Arg0, 0x07))
                            {
                                Store (Arg1, \_SB.PCI0.LPC0.EC0.MXRG)
                                Store (Arg2, \_SB.PCI0.LPC0.EC0.MYRG)
                                Store (Arg3, \_SB.PCI0.LPC0.EC0.MZRG)
                                Store (0x01, \_SB.PCI0.LPC0.EC0.MREG)
                                Store (\_SB.PCI0.LPC0.EC0.MXRG, GSNX)
                                Store (\_SB.PCI0.LPC0.EC0.MYRG, GSNY)
                                Store (\_SB.PCI0.LPC0.EC0.MZRG, GSNZ)
                            }

                            If (LEqual (Arg0, 0x08))
                            {
                                Store (Arg1, \_SB.PCI0.LPC0.EC0.TACT)
                                Store (0x01, \_SB.PCI0.LPC0.EC0.SACT)
                            }

                            If (LEqual (Arg0, 0x09))
                            {
                                Store (Arg1, \_SB.PCI0.LPC0.EC0.GETA)
                                Store (0x01, \_SB.PCI0.LPC0.EC0.GDLT)
                            }
                        }

                        Method (TCMD, 0, NotSerialized)
                        {
                            TRAP (0x57)
                        }
                    }

                    Device (EC0)
                    {
                        Name (_GPE, 0x11)
                        Name (_HID, EisaId ("PNP0C09"))
                        Name (_CRS, ResourceTemplate ()
                        {
                            IO (Decode16,
                                0x0062,             // Range Minimum
                                0x0062,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                            IO (Decode16,
                                0x0066,             // Range Minimum
                                0x0066,             // Range Maximum
                                0x00,               // Alignment
                                0x01,               // Length
                                )
                        })
                        Method (_REG, 2, NotSerialized)
                        {
                            If (LEqual (Arg0, 0x03))
                            {
                                Store (Arg1, \FGEC)
                                Store (OSFL, Local0)
                                Store (0x04, \OSEC)
                                Store (\OSEC, XSEC)
                                Store (\WLEN, \_SB.PCI0.LPC0.EC0.ECWL)
                                Store (\G3EN, \_SB.PCI0.LPC0.EC0.EC3G)
                                Store (\W510, \_SB.PCI0.LPC0.EC0.WO3G)
                            }
                        }

                        Scope (\_SB.PCI0)
                        {
                            Device (BAT1)
                            {
                                Name (_HID, EisaId ("PNP0C0A"))
                                Name (_UID, 0x00)
                                Name (_PCL, Package (0x01)
                                {
                                    \_SB.PCI0
                                })
                                Name (PAK1, Package (0x0D)
                                {
                                    0x00, 
                                    0x1130, 
                                    0x1130, 
                                    0x00, 
                                    0x2A30, 
                                    0x00, 
                                    0x00, 
                                    0x10, 
                                    0x08, 
                                    "CMPC", 
                                    "00001", 
                                    "LiON", 
                                    "ECS"
                                })
                                Method (_BIF, 0, NotSerialized)
                                {
                                    Store (\_SB.PCI0.LPC0.EC0.XIF0, Index (PAK1, 0x00))
                                    Store (\_SB.PCI0.LPC0.EC0.XIF1, Index (PAK1, 0x01))
                                    Store (\_SB.PCI0.LPC0.EC0.XIF2, Local0)
                                    Store (Local0, Index (PAK1, 0x02))
                                    Store (\_SB.PCI0.LPC0.EC0.XIF3, Index (PAK1, 0x03))
                                    Store (\_SB.PCI0.LPC0.EC0.XIF4, Index (PAK1, 0x04))
                                    Store (\_SB.PCI0.LPC0.EC0.XIF5, Index (PAK1, 0x05))
                                    Return (PAK1)
                                }

                                Name (BFB1, Package (0x04)
                                {
                                    0x00, 
                                    0xFFFFFFFF, 
                                    0x1034, 
                                    0x2A30
                                })
                                Method (_BST, 0, NotSerialized)
                                {
                                    Sleep (0x07D0)
                                    Store (\_SB.PCI0.LPC0.EC0.XST0, Index (BFB1, 0x00))
                                    Store (\_SB.PCI0.LPC0.EC0.XST1, Index (BFB1, 0x01))
                                    Store (\_SB.PCI0.LPC0.EC0.XST2, Index (BFB1, 0x02))
                                    Store (\_SB.PCI0.LPC0.EC0.XST3, Index (BFB1, 0x03))
                                    Return (BFB1)
                                }

                                Method (_BTM, 0, NotSerialized)
                                {
                                    Multiply (\_SB.PCI0.LPC0.EC0.XST2, 0x0E10, Local0)
                                    Divide (Local0, \_SB.PCI0.LPC0.EC0.XST1, Local1, Local2)
                                    Return (Local2)
                                }

                                Method (_STA, 0, NotSerialized)
                                {
                                    If (LEqual (\FGEC, 0x00))
                                    {
                                        Store (0x00, Local0)
                                    }
                                    Else
                                    {
                                        Store (\_SB.PCI0.LPC0.EC0.XTIN, Local0)
                                    }

                                    If (Local0)
                                    {
                                        Return (0x1F)
                                    }
                                    Else
                                    {
                                        Return (0x0F)
                                    }
                                }
                            }
                        }

                        Scope (\_SB.PCI0.LPC0.EC0)
                        {
                            Method (_Q06, 0, NotSerialized)
                            {
                                Store (0x06, P80H)
                                Sleep (0x14)
                                Notify (\_SB.PCI0.BAT1, 0x80)
                                Sleep (0x14)
                                Notify (\_SB.PCI0.BAT1, 0x81)
                                Sleep (0x14)
                            }
                        }

                        OperationRegion (ECXP, EmbeddedControl, 0x00, 0x0100)
                        Field (ECXP, ByteAcc, Lock, Preserve)
                        {
                            XIF0,   16, 
                            XIF1,   16, 
                            XIF2,   16, 
                            XIF3,   16, 
                            XIF4,   16, 
                            XIF5,   16, 
                            XIF6,   16, 
                            XIF7,   16, 
                            XIF8,   16, 
                            XIF9,   64, 
                            XIFA,   64, 
                            XIFB,   64, 
                            XIFC,   64, 
                            XST0,   16, 
                            XST1,   16, 
                            XST2,   16, 
                            XST3,   16, 
                            XTP0,   16, 
                            XCIN,   1, 
                                ,   1, 
                            XTIN,   1, 
                                    Offset (0x3D), 
                                    Offset (0x3E), 
                            XHPP,   7, 
                                    Offset (0x3F), 
                                    Offset (0x40), 
                            XSEC,   8, 
                            FNF1,   1, 
                            FNF2,   1, 
                            FNF3,   1, 
                            FNF4,   1, 
                            FNF6,   1, 
                            FNF7,   1, 
                            FNF8,   1, 
                            FNF9,   1, 
                                    Offset (0x43), 
                            XBNS,   8, 
                                    Offset (0x4F), 
                            XIN3,   6, 
                            XLDO,   1, 
                            XLEN,   1, 
                                    Offset (0x57), 
                            XSLP,   3, 
                                ,   4, 
                            XAEF,   1, 
                                    Offset (0x5A), 
                            ECWL,   1, 
                            EC3G,   1, 
                            TPON,   1, 
                                    Offset (0x75), 
                            SP3S,   8, 
                            LSLV,   4, 
                            LSEN,   1, 
                            LSST,   1, 
                                    Offset (0x7B), 
                            WLN4,   1, 
                                    Offset (0x7D), 
                            XNPN,   8, 
                                    Offset (0x9E), 
                            WO3G,   1, 
                                    Offset (0x9F), 
                            BATT,   8, 
                                    Offset (0xA4), 
                            BAVC,   16, 
                            BT1C,   16, 
                                    Offset (0xB1), 
                            GSTA,   1, 
                            GRUN,   1, 
                            GSWT,   1, 
                            GSRD,   1, 
                            GDLT,   1, 
                            SACT,   1, 
                            MREG,   1, 
                                    Offset (0xB3), 
                            GXRG,   16, 
                            GYRG,   16, 
                            GZRG,   16, 
                                    Offset (0xC0), 
                            GWRG,   8, 
                            GRRG,   8, 
                            GETA,   8, 
                            TACT,   8, 
                            MXRG,   8, 
                            MYRG,   8, 
                            MZRG,   8, 
                            GETB,   16, 
                                    Offset (0xCF), 
                            APST,   1, 
                            ECST,   1, 
                                    Offset (0xD2), 
                            S3FG,   1
                        }

                        OperationRegion (PMRG, SystemIO, 0x1000, 0x80)
                        Field (PMRG, ByteAcc, NoLock, Preserve)
                        {
                                    Offset (0x10), 
                            THRT,   8, 
                                    Offset (0x30), 
                                ,   4, 
                            SLPS,   1
                        }
                    }
                }

                Scope (\_SB)
                {
                    Name (SLPS, 0x00)
                    Device (SLPB)
                    {
                        Name (_HID, EisaId ("PNP0C0E"))
                        Method (_STA, 0, NotSerialized)
                        {
                            Return (0x0B)
                        }

                        Method (SBEV, 0, NotSerialized)
                        {
                            If (SLPS)
                            {
                                Store (0x00, SLPS)
                                Notify (SLPB, 0x02)
                            }
                            Else
                            {
                                Store (0x01, SLPS)
                                Notify (SLPB, 0x80)
                            }
                        }
                    }
                }

                Scope (\_SB.PCI0.LPC0.EC0)
                {
                    Method (_Q08, 0, NotSerialized)
                    {
                        Store (0x08, P80H)
                        Sleep (0x1F40)
                        Notify (\_SB.PCI0, 0x00)
                    }

                    Method (_Q0A, 0, NotSerialized)
                    {
                        Store (0x0A, P80H)
                        If (LEqual (0xF9, OSFN))
                        {
                            Sleep (0x03E8)
                        }

                        If (LAnd (LEqual (OSF1, 0x00), LEqual (OSF9, 0x00)))
                        {
                            Store (0x01, OSF1)
                            If (LEqual (\WLEN, 0x00))
                            {
                                Notify (\_SB.PCI0.LPC0.FNBT, 0x81)
                                Sleep (0x0A)
                                Notify (\_SB.PCI0.LPC0.FNBT, 0x91)
                                Sleep (0x0BB8)
                                Store (0xF1, OSFN)
                            }

                            Store (0x00, OSF1)
                        }
                    }

                    Method (_Q0B, 0, NotSerialized)
                    {
                        Store (0x0B, P80H)
                        Sleep (0xC8)
                        If (FNLK)
                        {
                            Notify (\_SB.SLPB, 0x80)
                        }
                    }

                    Method (_Q0F, 0, NotSerialized)
                    {
                        Store (0x0F, P80H)
                        If (LNotEqual (OSF6, 0x82))
                        {
                            Notify (\_SB.PCI0.LPC0.FNBT, 0x82)
                            Store (0x82, P80H)
                            Store (0x82, OSF6)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.LPC0.FNBT, 0x92)
                            Store (0x92, P80H)
                            Store (0x92, OSF6)
                        }
                    }

                    Method (_Q10, 0, NotSerialized)
                    {
                        Store (0x10, P80H)
                        Notify (FNBT, 0x83)
                    }

                    Method (_Q11, 0, NotSerialized)
                    {
                        Store (0x11, P80H)
                        Sleep (0x3C)
                        Notify (FNBT, 0x84)
                    }

                    Method (_Q48, 0, NotSerialized)
                    {
                        Sleep (0x0A)
                        Notify (FNBT, 0x93)
                        Sleep (0x0A)
                        If (LEqual (\CLST, 0x01))
                        {
                            Store (0x00, \CLST)
                            Store (0x00, \_SB.PCI0.LPC0.EC0.LSST)
                        }
                    }

                    Method (_Q49, 0, NotSerialized)
                    {
                        Sleep (0x0A)
                        Notify (FNBT, 0x94)
                        Sleep (0x0A)
                        If (LEqual (\CLST, 0x01))
                        {
                            Store (0x00, \CLST)
                            Store (0x00, \_SB.PCI0.LPC0.EC0.LSST)
                        }
                    }

                    Method (_Q12, 0, NotSerialized)
                    {
                        Store (0x12, P80H)
                        If (LEqual (0xF1, OSFN))
                        {
                            Sleep (0x03E8)
                        }

                        If (LAnd (LEqual (OSF1, 0x00), LEqual (OSF9, 0x00)))
                        {
                            Store (0x01, OSF9)
                            If (LEqual (G3EN, 0x00))
                            {
                                Notify (\_SB.PCI0.LPC0.FNBT, 0x86)
                                Sleep (0x0A)
                                Notify (\_SB.PCI0.LPC0.FNBT, 0x96)
                                Sleep (0x0BB8)
                                Store (0xF9, OSFN)
                            }

                            Store (0x00, OSF9)
                        }
                    }

                    Method (_Q13, 0, NotSerialized)
                    {
                        Store (0x13, P80H)
                        Return (0xFF)

                        // Don't want to ever enable this feature,
                        // as it generates an interrupt storm.
                                                
                        /*
                        If (LEqual (LSEN, 0x01))
                        {
                            If (LEqual (\CLST, 0x00))
                            {
                                Store (0x01, \CLST)
                                Store (0x01, \_SB.PCI0.LPC0.EC0.LSST)
                            }
                        }
                        */
                    }

                    Method (_Q15, 0, NotSerialized)
                    {
                        Store (0x15, P80H)
                        If (LEqual (\WEBC, 0x00))
                        {
                            Notify (\_SB.PCI0.LPC0.FNBT, 0x87)
                            Store (0x87, P80H)
                            Sleep (0x01F4)
                            Notify (\_SB.PCI0.LPC0.FNBT, 0x97)
                            Store (0x97, P80H)
                            Store (0x01, \WEBC)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.LPC0.FNBT, 0x87)
                            Store (0x87, P80H)
                            Notify (\_SB.PCI0.LPC0.FNBT, 0x97)
                            Store (0x97, P80H)
                            Store (0x00, \WEBC)
                        }
                    }

                    Method (_Q17, 0, NotSerialized)
                    {
                        Store (0x17, P80H)
                        If (LNotEqual (OSF6, 0x85))
                        {
                            Notify (\_SB.PCI0.LPC0.FNBT, 0x85)
                            Store (0x85, P80H)
                            Store (0x85, OSF6)
                        }
                        Else
                        {
                            Notify (\_SB.PCI0.LPC0.FNBT, 0x95)
                            Store (0x95, P80H)
                            Store (0x95, OSF6)
                        }
                    }

                    Method (_Q1A, 0, NotSerialized)
                    {
                        Store (0x1A, P80H)
                        Store (\_SB.PCI0.LPC0.EC0.XBNS, \S4BL)
                        Store (0x00, \_SB.PCI0.LPC0.EC0.XBNS)
                    }

                    Method (_Q1B, 0, NotSerialized)
                    {
                        Store (0x1B, P80H)
                        Store (S4BL, \_SB.PCI0.LPC0.EC0.XBNS)
                    }

                    Method (_Q1E, 0, NotSerialized)
                    {
                        Store (0x1E, P80H)
                        Store (0x00, THRT)
                    }

                    Method (_Q1F, 0, NotSerialized)
                    {
                        Store (0x1F, P80H)
                        Store (0x1E, THRT)
                    }

                    Method (_Q20, 0, NotSerialized)
                    {
                        Store (0x20, P80H)
                        Store (0x1C, THRT)
                    }

                    Method (_Q21, 0, NotSerialized)
                    {
                        Store (0x21, P80H)
                        Store (0x1A, THRT)
                    }

                    Method (_Q22, 0, NotSerialized)
                    {
                        Store (0x22, P80H)
                        Store (0x18, THRT)
                    }

                    Method (_Q23, 0, NotSerialized)
                    {
                        Store (0x23, P80H)
                        Store (0x16, THRT)
                    }

                    Method (_Q24, 0, NotSerialized)
                    {
                        Store (0x24, P80H)
                        Store (0x14, THRT)
                    }

                    Method (_Q25, 0, NotSerialized)
                    {
                        Store (0x25, P80H)
                        Store (0x12, THRT)
                    }

                    Method (_Q27, 0, NotSerialized)
                    {
                        Store (0x27, P80H)
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q28, 0, NotSerialized)
                    {
                        LANC (0x00)
                        Sleep (0x07D0)
                        LANC (0x01)
                        Store (0x28, P80H)
                    }

                    Method (_Q29, 0, NotSerialized)
                    {
                        LANC (0x03)
                        Store (0x29, P80H)
                    }

                    Method (_Q2B, 0, NotSerialized)
                    {
                        Store (0x2B, P80H)
                        Store (0xFF, \FNLK)
                        Store (\GSNX, \_SB.PCI0.LPC0.EC0.MXRG)
                        Store (\GSNY, \_SB.PCI0.LPC0.EC0.MYRG)
                        Store (\GSNZ, \_SB.PCI0.LPC0.EC0.MZRG)
                        Store (0x01, \_SB.PCI0.LPC0.EC0.MREG)
                        Store (\S4BL, \_SB.PCI0.LPC0.EC0.XBNS)
                        Store (\_SB.PCI0.LPC0.EC0.GSTA, \GDEV)
                    }

                    Method (_Q2C, 0, NotSerialized)
                    {
                        Store (0x2C, P80H)
                    }

                    Method (_Q3E, 0, NotSerialized)
                    {
                        Store (0x3E, P80H)
                        Notify (\_SB.PCI0.LPC0.ACCE, 0x82)
                    }

                    Method (_Q3F, 0, NotSerialized)
                    {
                        Store (0x3F, P80H)
                        Notify (\_SB.PCI0.LPC0.ACCE, 0x81)
                    }

                    Method (_Q62, 0, NotSerialized)
                    {
                        P8XH (0x00, 0x62)
                        Notify (FNBT, 0x96)
                    }

                    Method (_Q2A, 0, NotSerialized)
                    {
                        // If the timer event is called, because
                        // the auto backlight feature is enabled from
                        // before we disabled it, disable it now to
                        // stop the interrupt storm.
                        
                        Store (0x00, \CLST)
                        Store (0x00, \_SB.PCI0.LPC0.EC0.LSST)
                        
                        Return (0xFF)
                        
                        /*                    
                        If (LEqual (LSEN, 0x01))
                        {
                            If (LEqual (\CLST, 0x01))
                            {
                                Store (XBNS, Local0)
                                Store (LSLV, Local1)
                                While (LGreater (Local1, Local0))
                                {
                                    Store (0x55, P80H)
                                    Sleep (0x0A)
                                    Notify (FNBT, 0x84)
                                    Sleep (0x0A)
                                    Notify (FNBT, 0x94)
                                    Sleep (0x64)
                                    Increment (Local0)
                                }

                                While (LLess (Local1, Local0))
                                {
                                    Store (0xAA, P80H)
                                    Sleep (0x0A)
                                    Notify (FNBT, 0x83)
                                    Sleep (0x0A)
                                    Notify (FNBT, 0x93)
                                    Sleep (0x64)
                                    Decrement (Local0)
                                }

                                If (LEqual (LSLV, XBNS))
                                {
                                    Sleep (0x0A)
                                }
                            }
                        }
                        */
                    }

                    Method (LANC, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, 0x00))
                        {
                            Store (0x86, P80H)
                            TRAP (0x56)
                            Store (0x00, \_SB.PCI0.LPC0.EC0.XLDO)
                            Sleep (0x01F4)
                        }

                        If (LEqual (Arg0, 0x01))
                        {
                            Store (0x85, P80H)
                            TRAP (0x55)
                            Store (0x01, \_SB.PCI0.LPC0.EC0.XLDO)
                            Sleep (0x01F4)
                        }

                        If (LEqual (Arg0, 0x02)) {}
                        If (LEqual (Arg0, 0x03)) {}
                    }
                }

                Scope (\_SB.PCI0)
                {
                    Device (AC0)
                    {
                        Name (_HID, "ACPI0003")
                        Name (_PCL, Package (0x01)
                        {
                            \_SB.PCI0
                        })
                        Method (_PSR, 0, NotSerialized)
                        {
                            If (LEqual (\FGEC, 0x00))
                            {
                                Store (0x01, Local0)
                            }
                            Else
                            {
                                Store (\_SB.PCI0.LPC0.EC0.XCIN, Local0)
                            }

                            Return (Local0)
                        }
                    }
                }

                Scope (\_SB.PCI0.LPC0.EC0)
                {
                    Method (_Q07, 0, NotSerialized)
                    {
                        Store (0x07, P80H)
                        Notify (\_PR.CPU1, 0x80)
                        Notify (\_SB.PCI0.AC0, 0x80)
                        Notify (\_SB.PCI0.BAT1, 0x80)
                    }
                }

                Scope (\_SB.PCI0)
                {
                    Name (\LIDF, 0x01)
                    Device (LID)
                    {
                        Name (_HID, EisaId ("PNP0C0D"))
                        Method (_LID, 0, NotSerialized)
                        {
                            Return (\LIDF)
                        }
                    }
                }

                Scope (\_SB.PCI0.LPC0.EC0)
                {
                    Method (_Q16, 0, NotSerialized)
                    {
                        Store (0x16, P80H)
                        Store (0x01, \LIDF)
                        Notify (\_SB.PCI0.LID, 0x80)
                    }

                    Method (_Q19, 0, NotSerialized)
                    {
                        Store (0x19, P80H)
                        Store (0x00, \LIDF)
                        Notify (\_SB.PCI0.LID, 0x80)
                    }
                }

                Device (SPKR)
                {
                    Name (_HID, EisaId ("PNP0800"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))
                    Name (BUF0, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                    })
                    Name (BUF1, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0040,             // Range Minimum
                            0x0040,             // Range Maximum
                            0x01,               // Alignment
                            0x04,               // Length
                            )
                        IO (Decode16,
                            0x0050,             // Range Minimum
                            0x0050,             // Range Maximum
                            0x10,               // Alignment
                            0x04,               // Length
                            )
                        IRQNoFlags ()
                            {0}
                    })
                    Method (_CRS, 0, Serialized)
                    {
                        If (And (MTSE, 0x00020000))
                        {
                            Return (BUF0)
                        }

                        Return (BUF1)
                    }
                }

                OperationRegion (MMTO, PCI_Config, 0xD0, 0x04)
                Field (MMTO, DWordAcc, NoLock, Preserve)
                {
                    MTSE,   32
                }

                Device (TPM)
                {
                    Method (_HID, 0, NotSerialized)
                    {
                        Return (0x0010A35C)
                    }

                    Name (_CID, EisaId ("PNP0C31"))
                    Name (_UID, 0x01)
                    Method (_STA, 0, NotSerialized)
                    {
                        If (TPMP)
                        {
                            Return (0x0F)
                        }

                        Return (0x00)
                    }

                    Name (_CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadWrite,
                            0xFED40000,         // Address Base
                            0x00005000,         // Address Length
                            )
                    })
                    Method (UCMP, 2, NotSerialized)
                    {
                        If (LNotEqual (0x10, SizeOf (Arg0)))
                        {
                            Return (0x00)
                        }

                        If (LNotEqual (0x10, SizeOf (Arg1)))
                        {
                            Return (0x00)
                        }

                        Store (0x00, Local0)
                        While (LLess (Local0, 0x10))
                        {
                            If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (
                                Arg1, Local0))))
                            {
                                Return (0x00)
                            }

                            Increment (Local0)
                        }

                        Return (0x01)
                    }

                    Method (_DSM, 4, Serialized)
                    {
                        If (LEqual (UCMP (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0xA6, 0xFA, 0xDD, 0x3D, 0x1B, 0x36, 0xB4, 0x4E, 
                                        /* 0008 */    0xA4, 0x24, 0x8D, 0x10, 0x08, 0x9D, 0x16, 0x53
                                    }), 0x01))
                        {
                            If (LEqual (Arg2, 0x00))
                            {
                                Return (Buffer (0x01)
                                {
                                    0x7F
                                })
                            }

                            If (LEqual (Arg2, 0x01))
                            {
                                Return (Buffer (0x04)
                                {
                                    "1.0"
                                })
                            }

                            If (LEqual (Arg2, 0x02))
                            {
                                If (TPRS)
                                {
                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x00))
                                    {
                                        Store (0x00, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x01))
                                    {
                                        Store (0x01, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x02))
                                    {
                                        Store (0x02, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x03))
                                    {
                                        Store (0x03, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x04))
                                    {
                                        Store (0x04, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x05))
                                    {
                                        Store (0x05, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x06))
                                    {
                                        Store (0x06, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x07))
                                    {
                                        Store (0x07, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x08))
                                    {
                                        Store (0x08, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x09))
                                    {
                                        Store (0x09, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0A))
                                    {
                                        Store (0x0A, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0B))
                                    {
                                        Store (0x0B, PPRQ)
                                        Return (0x00)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0C))
                                    {
                                        Store (0x00, PPRQ)
                                        Return (0x01)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0D))
                                    {
                                        Store (0x00, PPRQ)
                                        Return (0x01)
                                    }

                                    If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x0E))
                                    {
                                        Store (0x0E, PPRQ)
                                        Return (0x00)
                                    }

                                    Return (0x01)
                                }

                                Return (0x01)
                            }

                            If (LEqual (Arg2, 0x03))
                            {
                                Name (TMP1, Package (0x02)
                                {
                                    0x00, 
                                    0xFFFFFFFF
                                })
                                Store (\_SB.PPRQ, Index (TMP1, 0x01))
                                Return (TMP1)
                            }

                            If (LEqual (Arg2, 0x04))
                            {
                                Return (0x01)
                            }

                            If (LEqual (Arg2, 0x05))
                            {
                                Name (TMP2, Package (0x03)
                                {
                                    0x00, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (\_SB.PPLO, Index (TMP2, 0x01))
                                If (LOr (LOr (LGreater (\_SB.PPLO, 0x0E), LEqual (\_SB.PPLO, 0x0C)), LEqual (
                                    \_SB.PPLO, 0x0D)))
                                {
                                    Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                If (LEqual (PPRP, 0xFF))
                                {
                                    Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                If (PPOR)
                                {
                                    Store (0xFFFFFFF0, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                Store (\_SB.PPRP, Index (TMP2, 0x02))
                                Return (TMP2)
                            }

                            If (LEqual (Arg2, 0x06))
                            {
                                CreateByteField (Arg3, 0x04, LAN0)
                                CreateByteField (Arg3, 0x05, LAN1)
                                Or (ShiftLeft (LAN1, 0x08), LAN0, P80H)
                                If (LOr (LEqual (LAN0, 0x65), LEqual (LAN0, 0x45)))
                                {
                                    If (LOr (LEqual (LAN1, 0x6E), LEqual (LAN1, 0x4E)))
                                    {
                                        Return (0x00)
                                    }
                                }

                                Return (0x01)
                            }

                            Return (0x01)
                        }

                        If (LEqual (UCMP (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0xED, 0x54, 0x60, 0x37, 0x13, 0xCC, 0x75, 0x46, 
                                        /* 0008 */    0x90, 0x1C, 0x47, 0x56, 0xD7, 0xF2, 0xD4, 0x5D
                                    }), 0x01))
                        {
                            If (LEqual (Arg2, 0x00))
                            {
                                Return (Buffer (0x01)
                                {
                                    0x01
                                })
                            }

                            If (LEqual (Arg2, 0x01))
                            {
                                If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x00))
                                {
                                    Store (0x00, \_SB.MOR)
                                    Return (0x00)
                                }

                                If (LEqual (DerefOf (Index (Arg3, 0x00)), 0x01))
                                {
                                    Store (0x01, \_SB.MOR)
                                    Return (0x00)
                                }
                            }

                            Return (0x01)
                        }

                        Return (Buffer (0x01)
                        {
                            0x00
                        })
                    }
                }

                Device (KBC0)
                {
                    Name (_HID, EisaId ("PNP0303"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0060,             // Range Minimum
                            0x0060,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0064,             // Range Minimum
                            0x0064,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {1}
                    })
                }

                Device (MSE0)
                {
                    Name (_HID, EisaId ("PNP0F13"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                }

                Device (LNKA)
                {
                    Name (_HID, EisaId ("PNP0C0F"))
                    Name (_UID, 0x01)
                    Name (_PRS, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,10,11,12,14,15}
                    })
                    Name (RSRC, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, _Y11)
                            {}
                    })
                    Method (_DIS, 0, NotSerialized)
                    {
                        Or (PIRA, 0x80, PIRA)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.LNKA._Y11._INT, IRQ0)
                        And (PIRA, 0x0F, Local0)
                        ShiftLeft (0x01, Local0, IRQ0)
                        Store (RSRC, Debug)
                        Return (RSRC)
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        Store (Arg0, Debug)
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Or (Local0, And (PIRA, 0x70), PIRA)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (PIRA, 0x80))
                        {
                            Return (0x09)
                        }

                        Return (0x0B)
                    }
                }

                Device (LNKB)
                {
                    Name (_HID, EisaId ("PNP0C0F"))
                    Name (_UID, 0x02)
                    Name (_PRS, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,10,11,12,14,15}
                    })
                    Name (RSRC, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, _Y12)
                            {}
                    })
                    Method (_DIS, 0, NotSerialized)
                    {
                        Or (PIRB, 0x80, PIRB)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.LNKB._Y12._INT, IRQ0)
                        And (PIRB, 0x0F, Local0)
                        ShiftLeft (0x01, Local0, IRQ0)
                        Return (RSRC)
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Or (Local0, And (PIRB, 0x70), PIRB)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (PIRB, 0x80))
                        {
                            Return (0x09)
                        }

                        Return (0x0B)
                    }
                }

                Device (LNKC)
                {
                    Name (_HID, EisaId ("PNP0C0F"))
                    Name (_UID, 0x03)
                    Name (_PRS, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,10,11,12,14,15}
                    })
                    Name (RSRC, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, _Y13)
                            {}
                    })
                    Method (_DIS, 0, NotSerialized)
                    {
                        Or (PIRC, 0x80, PIRC)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.LNKC._Y13._INT, IRQ0)
                        And (PIRC, 0x0F, Local0)
                        ShiftLeft (0x01, Local0, IRQ0)
                        Return (RSRC)
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Or (Local0, And (PIRC, 0x70), PIRC)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (PIRC, 0x80))
                        {
                            Return (0x09)
                        }

                        Return (0x0B)
                    }
                }

                Device (LNKD)
                {
                    Name (_HID, EisaId ("PNP0C0F"))
                    Name (_UID, 0x04)
                    Name (_PRS, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,10,11,12,14,15}
                    })
                    Name (RSRC, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, _Y14)
                            {}
                    })
                    Method (_DIS, 0, NotSerialized)
                    {
                        Or (PIRD, 0x80, PIRD)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.LNKD._Y14._INT, IRQ0)
                        And (PIRD, 0x0F, Local0)
                        ShiftLeft (0x01, Local0, IRQ0)
                        Return (RSRC)
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Or (Local0, And (PIRD, 0x70), PIRD)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (PIRD, 0x80))
                        {
                            Return (0x09)
                        }

                        Return (0x0B)
                    }
                }

                Device (LNKE)
                {
                    Name (_HID, EisaId ("PNP0C0F"))
                    Name (_UID, 0x05)
                    Name (_PRS, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,10,11,12,14,15}
                    })
                    Name (RSRC, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, _Y15)
                            {}
                    })
                    Method (_DIS, 0, NotSerialized)
                    {
                        Or (PIRE, 0x80, PIRE)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.LNKE._Y15._INT, IRQ0)
                        And (PIRE, 0x0F, Local0)
                        ShiftLeft (0x01, Local0, IRQ0)
                        Store (RSRC, Debug)
                        Return (RSRC)
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        Store (Arg0, Debug)
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Or (Local0, And (PIRE, 0x70), PIRE)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (PIRE, 0x80))
                        {
                            Return (0x09)
                        }

                        Return (0x0B)
                    }
                }

                Device (LNKF)
                {
                    Name (_HID, EisaId ("PNP0C0F"))
                    Name (_UID, 0x06)
                    Name (_PRS, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,10,11,12,14,15}
                    })
                    Name (RSRC, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, _Y16)
                            {}
                    })
                    Method (_DIS, 0, NotSerialized)
                    {
                        Or (PIRF, 0x80, PIRF)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.LNKF._Y16._INT, IRQ0)
                        And (PIRF, 0x0F, Local0)
                        ShiftLeft (0x01, Local0, IRQ0)
                        Store (RSRC, Debug)
                        Return (RSRC)
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        Store (Arg0, Debug)
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Or (Local0, And (PIRF, 0x70), PIRF)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (PIRF, 0x80))
                        {
                            Return (0x09)
                        }

                        Return (0x0B)
                    }
                }

                Device (LNKG)
                {
                    Name (_HID, EisaId ("PNP0C0F"))
                    Name (_UID, 0x07)
                    Name (_PRS, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,10,11,12,14,15}
                    })
                    Name (RSRC, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, _Y17)
                            {}
                    })
                    Method (_DIS, 0, NotSerialized)
                    {
                        Or (PIRG, 0x80, PIRG)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.LNKG._Y17._INT, IRQ0)
                        And (PIRG, 0x0F, Local0)
                        ShiftLeft (0x01, Local0, IRQ0)
                        Store (RSRC, Debug)
                        Return (RSRC)
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        Store (Arg0, Debug)
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Or (Local0, And (PIRG, 0x70), PIRG)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (PIRG, 0x80))
                        {
                            Return (0x09)
                        }

                        Return (0x0B)
                    }
                }

                Device (LNKH)
                {
                    Name (_HID, EisaId ("PNP0C0F"))
                    Name (_UID, 0x08)
                    Name (_PRS, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, )
                            {3,4,5,6,7,10,11,12,14,15}
                    })
                    Name (RSRC, ResourceTemplate ()
                    {
                        IRQ (Level, ActiveLow, Shared, _Y18)
                            {}
                    })
                    Method (_DIS, 0, NotSerialized)
                    {
                        Or (PIRH, 0x80, PIRH)
                    }

                    Method (_CRS, 0, NotSerialized)
                    {
                        CreateWordField (RSRC, \_SB.PCI0.LPC0.LNKH._Y18._INT, IRQ0)
                        And (PIRH, 0x0F, Local0)
                        ShiftLeft (0x01, Local0, IRQ0)
                        Store (RSRC, Debug)
                        Return (RSRC)
                    }

                    Method (_SRS, 1, NotSerialized)
                    {
                        Store (Arg0, Debug)
                        CreateWordField (Arg0, 0x01, IRQ0)
                        FindSetRightBit (IRQ0, Local0)
                        Decrement (Local0)
                        Or (Local0, And (PIRH, 0x70), PIRH)
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (PIRH, 0x80))
                        {
                            Return (0x09)
                        }

                        Return (0x0B)
                    }
                }

                OperationRegion (GPOX, SystemIO, 0x1180, 0x30)
                Field (GPOX, DWordAcc, NoLock, Preserve)
                {
                            Offset (0x07), 
                        ,   3, 
                    IO27,   1, 
                            Offset (0x0F), 
                        ,   3, 
                    LV27,   1, 
                            Offset (0x1B), 
                        ,   3, 
                    BL27,   1
                }

                OperationRegion (PIRX, PCI_Config, 0x60, 0x04)
                Field (PIRX, DWordAcc, Lock, Preserve)
                {
                            AccessAs (ByteAcc, 0x00), 
                    PIRA,   8, 
                    PIRB,   8, 
                    PIRC,   8, 
                    PIRD,   8
                }

                OperationRegion (PIRY, PCI_Config, 0x68, 0x04)
                Field (PIRY, DWordAcc, Lock, Preserve)
                {
                            AccessAs (ByteAcc, 0x00), 
                    PIRE,   8, 
                    PIRF,   8, 
                    PIRG,   8, 
                    PIRH,   8
                }

                OperationRegion (ELR0, PCI_Config, 0xA0, 0x14)
                Field (ELR0, DWordAcc, Lock, Preserve)
                {
                        ,   9, 
                    PBLV,   1, 
                            Offset (0x10), 
                        ,   1, 
                    ELSS,   1, 
                        ,   1, 
                    ELST,   1, 
                    ELPB,   1, 
                            Offset (0x11), 
                        ,   1, 
                    ELLO,   1, 
                    ELGN,   2, 
                    ELYL,   2, 
                    ELBE,   1, 
                    ELIE,   1, 
                    ELSN,   1, 
                    ELOC,   1, 
                            Offset (0x13), 
                    ELSO,   1
                }

                OperationRegion (ROUT, SystemIO, 0xB8, 0x04)
                Field (ROUT, DWordAcc, Lock, Preserve)
                {
                            AccessAs (ByteAcc, 0x00), 
                    GPI0,   2, 
                    GPI1,   2, 
                    GPI2,   2, 
                    GPI3,   2, 
                    GPI4,   2, 
                    GPI5,   2, 
                    GPI6,   2, 
                    GPI7,   2, 
                    GPI8,   2, 
                    GPI9,   2, 
                    GP10,   2, 
                    GP11,   2, 
                    GP12,   2, 
                    GP13,   2, 
                    GP14,   2, 
                    GP15,   2
                }

                OperationRegion (PMIO, SystemIO, 0x1000, 0x30)
                Field (PMIO, WordAcc, NoLock, Preserve)
                {
                            AccessAs (DWordAcc, 0x00), 
                            Offset (0x2D), 
                        ,   4, 
                    GPES,   1, 
                            Offset (0x2F), 
                        ,   4, 
                    GPEE,   1
                }

                OperationRegion (REGS, PCI_Config, 0x40, 0x10)
                Field (REGS, DWordAcc, Lock, Preserve)
                {
                    PMBA,   16, 
                            Offset (0x08), 
                    GPBA,   16
                }

                Device (FWH)
                {
                    Name (_HID, EisaId ("INT0800"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF800000,         // Address Base
                            0x00800000,         // Address Length
                            )
                    })
                }
            }

            Name (NATA, Package (0x01)
            {
                0x001F0002
            })
            Method (GETP, 1, NotSerialized)
            {
                Noop
                If (LEqual (And (Arg0, 0x09), 0x00))
                {
                    Return (0xFFFFFFFF)
                }

                If (LEqual (And (Arg0, 0x09), 0x08))
                {
                    Return (0x0384)
                }

                ShiftRight (And (Arg0, 0x0300), 0x08, Local0)
                ShiftRight (And (Arg0, 0x3000), 0x0C, Local1)
                Return (Multiply (0x1E, Subtract (0x09, Add (Local0, Local1))
                    ))
            }

            Method (GETD, 4, NotSerialized)
            {
                Noop
                If (Arg0)
                {
                    If (Arg1)
                    {
                        Return (0x14)
                    }

                    If (Arg2)
                    {
                        Return (Multiply (Subtract (0x04, Arg3), 0x0F))
                    }

                    Return (Multiply (Subtract (0x04, Arg3), 0x1E))
                }

                Return (0xFFFFFFFF)
            }

            Method (GETT, 1, NotSerialized)
            {
                Noop
                Return (Multiply (0x1E, Subtract (0x09, Add (And (ShiftRight (Arg0, 0x02
                    ), 0x03), And (Arg0, 0x03)))))
            }

            Method (GETF, 3, NotSerialized)
            {
                Noop
                Name (TMPF, 0x00)
                If (Arg0)
                {
                    Or (TMPF, 0x01, TMPF)
                }

                If (And (Arg2, 0x02))
                {
                    Or (TMPF, 0x02, TMPF)
                }

                If (Arg1)
                {
                    Or (TMPF, 0x04, TMPF)
                }

                If (And (Arg2, 0x20))
                {
                    Or (TMPF, 0x08, TMPF)
                }

                If (And (Arg2, 0x4000))
                {
                    Or (TMPF, 0x10, TMPF)
                }

                Return (TMPF)
            }

            Method (SETP, 3, NotSerialized)
            {
                Noop
                If (LGreaterEqual (Arg0, 0xF0))
                {
                    Return (0x08)
                }
                Else
                {
                    If (And (Arg1, 0x02))
                    {
                        If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                        {
                            Return (0x2301)
                        }

                        If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, 0x01)))
                        {
                            Return (0x2101)
                        }
                    }

                    Return (0x1001)
                }
            }

            Method (SETD, 1, NotSerialized)
            {
                Noop
                If (LLessEqual (Arg0, 0x14))
                {
                    Return (0x01)
                }

                If (LLessEqual (Arg0, 0x1E))
                {
                    Return (0x02)
                }

                If (LLessEqual (Arg0, 0x2D))
                {
                    Return (0x01)
                }

                If (LLessEqual (Arg0, 0x3C))
                {
                    Return (0x02)
                }

                If (LLessEqual (Arg0, 0x5A))
                {
                    Return (0x01)
                }

                Return (0x00)
            }

            Method (SETT, 3, NotSerialized)
            {
                Noop
                If (And (Arg1, 0x02))
                {
                    If (LAnd (LLessEqual (Arg0, 0x78), And (Arg2, 0x02)))
                    {
                        Return (0x0B)
                    }

                    If (LAnd (LLessEqual (Arg0, 0xB4), And (Arg2, 0x01)))
                    {
                        Return (0x09)
                    }
                }

                Return (0x04)
            }

            Device (IDE1)
            {
                Name (_ADR, 0x001F0002)
                OperationRegion (IDEP, PCI_Config, 0x10, 0x04)
                Field (IDEP, DWordAcc, NoLock, Preserve)
                {
                    PCMD,   16
                }

                OperationRegion (IDES, PCI_Config, 0x18, 0x04)
                Field (IDES, DWordAcc, NoLock, Preserve)
                {
                    SCMD,   16
                }

                OperationRegion (IDEC, PCI_Config, 0x40, 0x18)
                Field (IDEC, DWordAcc, NoLock, Preserve)
                {
                    PRIT,   16, 
                    SECT,   16, 
                    PSIT,   4, 
                    SSIT,   4, 
                            Offset (0x08), 
                    SDMA,   4, 
                            Offset (0x0A), 
                    SDT0,   2, 
                        ,   2, 
                    SDT1,   2, 
                            Offset (0x0B), 
                    SDT2,   2, 
                        ,   2, 
                    SDT3,   2, 
                            Offset (0x14), 
                    ICR0,   4, 
                    ICR1,   4, 
                    ICR2,   4, 
                    ICR3,   4, 
                    ICR4,   4, 
                    ICR5,   4
                }

                OperationRegion (IDE1, PCI_Config, 0x90, 0x04)
                Field (IDE1, DWordAcc, NoLock, Preserve)
                {
                    MAP,    8, 
                            Offset (0x02), 
                    PCS,    8
                }

                OperationRegion (PBIO, SystemIO, 0x000018EF, 0x00000008)
                Field (PBIO, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x07), 
                        ,   7, 
                    PBSY,   1
                }

                OperationRegion (SBIO, SystemIO, 0x000018EF, 0x00000008)
                Field (SBIO, ByteAcc, NoLock, Preserve)
                {
                            Offset (0x07), 
                        ,   7, 
                    SBSY,   1
                }

                Method (BSSP, 1, NotSerialized)
                {
                    If (LEqual (0x01, \SPNF))
                    {
                        Store (And (0x50, PCS), Local0)
                        Store (And (0xA0, PCS), Local1)
                        Store (0x00, Local2)
                        Store (0x00, Local3)
                        If (Arg0)
                        {
                            If (LEqual (0x80, Local1))
                            {
                                While (LAnd (SBSY, LGreater (0x4B, Local3)))
                                {
                                    Sleep (0x64)
                                    Increment (Local3)
                                }
                            }
                        }
                        Else
                        {
                            If (LEqual (0x40, Local0))
                            {
                                While (LAnd (PBSY, LGreater (0x4B, Local2)))
                                {
                                    Sleep (0x64)
                                    Increment (Local2)
                                }
                            }
                        }

                        Store (0x00, \SPNF)
                    }
                }

                Method (CTYP, 1, NotSerialized)
                {
                    Store (Zero, Local0)
                    If (Arg0)
                    {
                        If (LAnd (LGreater (MAP, 0x01), LLess (MAP, 0x06)))
                        {
                            Store (0x01, Local0)
                        }
                        Else
                        {
                            If (LEqual (MAP, Zero))
                            {
                                Store (0x03, Local0)
                            }

                            If (LEqual (MAP, One))
                            {
                                Store (0x04, Local0)
                            }
                        }
                    }
                    Else
                    {
                        If (LGreater (MAP, 0x05))
                        {
                            Store (0x02, Local0)
                        }
                        Else
                        {
                            If (LEqual (MAP, Zero))
                            {
                                Store (0x05, Local0)
                            }

                            If (LEqual (MAP, One))
                            {
                                Store (0x06, Local0)
                            }
                        }
                    }

                    Return (Local0)
                }

                Device (PRID)
                {
                    Name (_ADR, 0x00)
                    Method (_GTM, 0, NotSerialized)
                    {
                        Noop
                        Name (PBUF, Buffer (0x14)
                        {
                            /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0010 */    0x00, 0x00, 0x00, 0x00
                        })
                        CreateDWordField (PBUF, 0x00, PIO0)
                        CreateDWordField (PBUF, 0x04, DMA0)
                        CreateDWordField (PBUF, 0x08, PIO1)
                        CreateDWordField (PBUF, 0x0C, DMA1)
                        CreateDWordField (PBUF, 0x10, FLAG)
                        Store (GETP (PRIT), PIO0)
                        Store (GETD (And (SDMA, 0x01), And (ICR3, 0x01), 
                            And (ICR0, 0x01), SDT0), DMA0)
                        If (LEqual (DMA0, 0xFFFFFFFF))
                        {
                            Store (PIO0, DMA0)
                        }

                        If (And (PRIT, 0x4000))
                        {
                            If (LEqual (And (PRIT, 0x90), 0x80))
                            {
                                Store (0x0384, PIO1)
                            }
                            Else
                            {
                                Store (GETT (PSIT), PIO1)
                            }
                        }
                        Else
                        {
                            Store (0xFFFFFFFF, PIO1)
                        }

                        Store (GETD (And (SDMA, 0x02), And (ICR3, 0x02), 
                            And (ICR0, 0x02), SDT1), DMA1)
                        If (LEqual (DMA1, 0xFFFFFFFF))
                        {
                            Store (PIO1, DMA1)
                        }

                        Store (GETF (And (SDMA, 0x01), And (SDMA, 0x02), 
                            PRIT), FLAG)
                        Return (PBUF)
                    }

                    Method (_STM, 3, NotSerialized)
                    {
                        Noop
                        CreateDWordField (Arg0, 0x00, PIO0)
                        CreateDWordField (Arg0, 0x04, DMA0)
                        CreateDWordField (Arg0, 0x08, PIO1)
                        CreateDWordField (Arg0, 0x0C, DMA1)
                        CreateDWordField (Arg0, 0x10, FLAG)
                        Store (0x04, ICR2)
                        If (LEqual (SizeOf (Arg1), 0x0200))
                        {
                            And (PRIT, 0x4CF0, PRIT)
                            And (SDMA, 0x0E, SDMA)
                            Store (0x00, SDT0)
                            And (ICR0, 0x0E, ICR0)
                            And (ICR1, 0x0E, ICR1)
                            And (ICR3, 0x0E, ICR3)
                            And (ICR5, 0x0E, ICR5)
                            CreateWordField (Arg1, 0x62, W490)
                            CreateWordField (Arg1, 0x6A, W530)
                            CreateWordField (Arg1, 0x7E, W630)
                            CreateWordField (Arg1, 0x80, W640)
                            CreateWordField (Arg1, 0xB0, W880)
                            Or (PRIT, 0x8004, PRIT)
                            If (LAnd (And (FLAG, 0x02), And (W490, 0x0800)))
                            {
                                Or (PRIT, 0x02, PRIT)
                            }

                            Or (PRIT, SETP (PIO0, W530, W640), PRIT)
                            If (And (FLAG, 0x01))
                            {
                                Or (SDMA, 0x01, SDMA)
                                Store (SETD (DMA0), SDT0)
                                If (And (W880, 0x20))
                                {
                                    Or (ICR1, 0x01, ICR1)
                                    Or (ICR5, 0x01, ICR5)
                                }

                                If (And (W880, 0x10))
                                {
                                    Or (ICR1, 0x01, ICR1)
                                }

                                If (LLess (DMA0, 0x1E))
                                {
                                    Or (ICR3, 0x01, ICR3)
                                }

                                If (LLess (DMA0, 0x3C))
                                {
                                    Or (ICR0, 0x01, ICR0)
                                }
                            }
                        }

                        If (LEqual (SizeOf (Arg2), 0x0200))
                        {
                            And (PRIT, 0x3F0F, PRIT)
                            Store (0x00, PSIT)
                            And (SDMA, 0x0D, SDMA)
                            Store (0x00, SDT1)
                            And (ICR0, 0x0D, ICR0)
                            And (ICR1, 0x0D, ICR1)
                            And (ICR3, 0x0D, ICR3)
                            And (ICR5, 0x0D, ICR5)
                            CreateWordField (Arg2, 0x62, W491)
                            CreateWordField (Arg2, 0x6A, W531)
                            CreateWordField (Arg2, 0x7E, W631)
                            CreateWordField (Arg2, 0x80, W641)
                            CreateWordField (Arg2, 0xB0, W881)
                            Or (PRIT, 0x8040, PRIT)
                            If (LAnd (And (FLAG, 0x08), And (W491, 0x0800)))
                            {
                                Or (PRIT, 0x20, PRIT)
                            }

                            If (And (FLAG, 0x10))
                            {
                                Or (PRIT, 0x4000, PRIT)
                                If (LGreater (PIO1, 0xF0))
                                {
                                    Or (PRIT, 0x80, PRIT)
                                }
                                Else
                                {
                                    Or (PRIT, 0x10, PRIT)
                                    Store (SETT (PIO1, W531, W641), PSIT)
                                }
                            }

                            If (And (FLAG, 0x04))
                            {
                                Or (SDMA, 0x02, SDMA)
                                Store (SETD (DMA1), SDT1)
                                If (And (W881, 0x20))
                                {
                                    Or (ICR1, 0x02, ICR1)
                                    Or (ICR5, 0x02, ICR5)
                                }

                                If (And (W881, 0x10))
                                {
                                    Or (ICR1, 0x02, ICR1)
                                }

                                If (LLess (DMA0, 0x1E))
                                {
                                    Or (ICR3, 0x02, ICR3)
                                }

                                If (LLess (DMA0, 0x3C))
                                {
                                    Or (ICR0, 0x02, ICR0)
                                }
                            }
                        }
                    }

                    Method (_PS0, 0, NotSerialized)
                    {
                        BSSP (0x00)
                    }

                    Method (_PS3, 0, NotSerialized)
                    {
                    }

                    Device (P_D0)
                    {
                        Name (_ADR, 0x00)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Noop
                            Name (PIB0, Buffer (0x0E)
                            {
                                /* 0000 */    0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x03, 
                                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                            })
                            CreateByteField (PIB0, 0x01, PMD0)
                            CreateByteField (PIB0, 0x08, DMD0)
                            If (And (PRIT, 0x02))
                            {
                                If (LEqual (And (PRIT, 0x09), 0x08))
                                {
                                    Store (0x08, PMD0)
                                }
                                Else
                                {
                                    Store (0x0A, PMD0)
                                    ShiftRight (And (PRIT, 0x0300), 0x08, Local0)
                                    ShiftRight (And (PRIT, 0x3000), 0x0C, Local1)
                                    Add (Local0, Local1, Local2)
                                    If (LEqual (0x03, Local2))
                                    {
                                        Store (0x0B, PMD0)
                                    }

                                    If (LEqual (0x05, Local2))
                                    {
                                        Store (0x0C, PMD0)
                                    }
                                }
                            }
                            Else
                            {
                                Store (0x01, PMD0)
                            }

                            If (And (SDMA, 0x01))
                            {
                                Store (Or (SDT0, 0x40), DMD0)
                                If (And (ICR0, 0x01))
                                {
                                    Add (DMD0, 0x02, DMD0)
                                }

                                If (And (ICR3, 0x01))
                                {
                                    Store (0x45, DMD0)
                                }
                            }
                            Else
                            {
                                Or (Subtract (And (PMD0, 0x07), 0x02), 0x20, DMD0)
                            }

                            Return (PIB0)
                        }
                    }

                    Device (P_D1)
                    {
                        Name (_ADR, 0x01)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Noop
                            Name (PIB1, Buffer (0x0E)
                            {
                                /* 0000 */    0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF, 0x03, 
                                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                            })
                            CreateByteField (PIB1, 0x01, PMD1)
                            CreateByteField (PIB1, 0x08, DMD1)
                            If (And (PRIT, 0x20))
                            {
                                If (LEqual (And (PRIT, 0x90), 0x80))
                                {
                                    Store (0x08, PMD1)
                                }
                                Else
                                {
                                    Add (And (PSIT, 0x03), ShiftRight (And (PSIT, 0x0C), 
                                        0x02), Local0)
                                    If (LEqual (0x05, Local0))
                                    {
                                        Store (0x0C, PMD1)
                                    }
                                    Else
                                    {
                                        If (LEqual (0x03, Local0))
                                        {
                                            Store (0x0B, PMD1)
                                        }
                                        Else
                                        {
                                            Store (0x0A, PMD1)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Store (0x01, PMD1)
                            }

                            If (And (SDMA, 0x02))
                            {
                                Store (Or (SDT1, 0x40), DMD1)
                                If (And (ICR0, 0x02))
                                {
                                    Add (DMD1, 0x02, DMD1)
                                }

                                If (And (ICR3, 0x02))
                                {
                                    Store (0x45, DMD1)
                                }
                            }
                            Else
                            {
                                Or (Subtract (And (PMD1, 0x07), 0x02), 0x20, DMD1)
                            }

                            Return (PIB1)
                        }
                    }
                }

                Device (SECD)
                {
                    Name (_ADR, 0x01)
                    Method (_GTM, 0, NotSerialized)
                    {
                        Noop
                        Name (SBUF, Buffer (0x14)
                        {
                            /* 0000 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0010 */    0x00, 0x00, 0x00, 0x00
                        })
                        CreateDWordField (SBUF, 0x00, PIO0)
                        CreateDWordField (SBUF, 0x04, DMA0)
                        CreateDWordField (SBUF, 0x08, PIO1)
                        CreateDWordField (SBUF, 0x0C, DMA1)
                        CreateDWordField (SBUF, 0x10, FLAG)
                        Store (GETP (SECT), PIO0)
                        Store (GETD (And (SDMA, 0x04), And (ICR3, 0x04), 
                            And (ICR0, 0x04), SDT2), DMA0)
                        If (LEqual (DMA0, 0xFFFFFFFF))
                        {
                            Store (PIO0, DMA0)
                        }

                        If (And (SECT, 0x4000))
                        {
                            If (LEqual (And (SECT, 0x90), 0x80))
                            {
                                Store (0x0384, PIO1)
                            }
                            Else
                            {
                                Store (GETT (SSIT), PIO1)
                            }
                        }
                        Else
                        {
                            Store (0xFFFFFFFF, PIO1)
                        }

                        Store (GETD (And (SDMA, 0x08), And (ICR3, 0x08), 
                            And (ICR0, 0x08), SDT3), DMA1)
                        If (LEqual (DMA1, 0xFFFFFFFF))
                        {
                            Store (PIO1, DMA1)
                        }

                        Store (GETF (And (SDMA, 0x04), And (SDMA, 0x08), 
                            SECT), FLAG)
                        Return (SBUF)
                    }

                    Method (_STM, 3, NotSerialized)
                    {
                        Noop
                        CreateDWordField (Arg0, 0x00, PIO0)
                        CreateDWordField (Arg0, 0x04, DMA0)
                        CreateDWordField (Arg0, 0x08, PIO1)
                        CreateDWordField (Arg0, 0x0C, DMA1)
                        CreateDWordField (Arg0, 0x10, FLAG)
                        Store (0x04, ICR2)
                        If (LEqual (SizeOf (Arg1), 0x0200))
                        {
                            And (SECT, 0x4CF0, SECT)
                            And (SDMA, 0x0B, SDMA)
                            Store (0x00, SDT2)
                            And (ICR0, 0x0B, ICR0)
                            And (ICR1, 0x0B, ICR1)
                            And (ICR3, 0x0B, ICR3)
                            And (ICR5, 0x0B, ICR5)
                            CreateWordField (Arg1, 0x62, W490)
                            CreateWordField (Arg1, 0x6A, W530)
                            CreateWordField (Arg1, 0x7E, W630)
                            CreateWordField (Arg1, 0x80, W640)
                            CreateWordField (Arg1, 0xB0, W880)
                            Or (SECT, 0x8004, SECT)
                            If (LAnd (And (FLAG, 0x02), And (W490, 0x0800)))
                            {
                                Or (SECT, 0x02, SECT)
                            }

                            Or (SECT, SETP (PIO0, W530, W640), SECT)
                            If (And (FLAG, 0x01))
                            {
                                Or (SDMA, 0x04, SDMA)
                                Store (SETD (DMA0), SDT2)
                                If (And (W880, 0x20))
                                {
                                    Or (ICR1, 0x04, ICR1)
                                    Or (ICR5, 0x04, ICR5)
                                }

                                If (And (W880, 0x10))
                                {
                                    Or (ICR1, 0x04, ICR1)
                                }

                                If (LLess (DMA0, 0x1E))
                                {
                                    Or (ICR3, 0x04, ICR3)
                                }

                                If (LLess (DMA0, 0x3C))
                                {
                                    Or (ICR0, 0x04, ICR0)
                                }
                            }
                        }

                        If (LEqual (SizeOf (Arg2), 0x0200))
                        {
                            And (SECT, 0x3F0F, SECT)
                            Store (0x00, SSIT)
                            And (SDMA, 0x07, SDMA)
                            Store (0x00, SDT3)
                            And (ICR0, 0x07, ICR0)
                            And (ICR1, 0x07, ICR1)
                            And (ICR3, 0x07, ICR3)
                            And (ICR5, 0x07, ICR5)
                            CreateWordField (Arg2, 0x62, W491)
                            CreateWordField (Arg2, 0x6A, W531)
                            CreateWordField (Arg2, 0x7E, W631)
                            CreateWordField (Arg2, 0x80, W641)
                            CreateWordField (Arg2, 0xB0, W881)
                            Or (SECT, 0x8040, SECT)
                            If (LAnd (And (FLAG, 0x08), And (W491, 0x0800)))
                            {
                                Or (SECT, 0x20, SECT)
                            }

                            If (And (FLAG, 0x10))
                            {
                                Or (SECT, 0x4000, SECT)
                                If (LGreater (PIO1, 0xF0))
                                {
                                    Or (SECT, 0x80, SECT)
                                }
                                Else
                                {
                                    Or (SECT, 0x10, SECT)
                                    Store (SETT (PIO1, W531, W641), SSIT)
                                }
                            }

                            If (And (FLAG, 0x04))
                            {
                                Or (SDMA, 0x08, SDMA)
                                Store (SETD (DMA1), SDT3)
                                If (And (W881, 0x20))
                                {
                                    Or (ICR1, 0x08, ICR1)
                                    Or (ICR5, 0x08, ICR5)
                                }

                                If (And (W881, 0x10))
                                {
                                    Or (ICR1, 0x08, ICR1)
                                }

                                If (LLess (DMA0, 0x1E))
                                {
                                    Or (ICR3, 0x08, ICR3)
                                }

                                If (LLess (DMA0, 0x3C))
                                {
                                    Or (ICR0, 0x08, ICR0)
                                }
                            }
                        }
                    }

                    Method (_PS0, 0, NotSerialized)
                    {
                        BSSP (0x01)
                    }

                    Method (_PS3, 0, NotSerialized)
                    {
                    }

                    Device (S_D0)
                    {
                        Name (_ADR, 0x00)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Noop
                            Name (SIB0, Buffer (0x0E)
                            {
                                /* 0000 */    0x03, 0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF, 0x03, 
                                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xA0, 0xEF
                            })
                            CreateByteField (SIB0, 0x01, PMD0)
                            CreateByteField (SIB0, 0x08, DMD0)
                            If (And (SECT, 0x02))
                            {
                                If (LEqual (And (SECT, 0x09), 0x08))
                                {
                                    Store (0x08, PMD0)
                                }
                                Else
                                {
                                    Store (0x0A, PMD0)
                                    ShiftRight (And (SECT, 0x0300), 0x08, Local0)
                                    ShiftRight (And (SECT, 0x3000), 0x0C, Local1)
                                    Add (Local0, Local1, Local2)
                                    If (LEqual (0x03, Local2))
                                    {
                                        Store (0x0B, PMD0)
                                    }

                                    If (LEqual (0x05, Local2))
                                    {
                                        Store (0x0C, PMD0)
                                    }
                                }
                            }
                            Else
                            {
                                Store (0x01, PMD0)
                            }

                            If (And (SDMA, 0x04))
                            {
                                Store (Or (SDT2, 0x40), DMD0)
                                If (And (ICR0, 0x04))
                                {
                                    Add (DMD0, 0x02, DMD0)
                                }

                                If (And (ICR3, 0x04))
                                {
                                    Store (0x45, DMD0)
                                }
                            }
                            Else
                            {
                                Or (Subtract (And (PMD0, 0x07), 0x02), 0x20, DMD0)
                            }

                            Return (SIB0)
                        }
                    }

                    Device (S_D1)
                    {
                        Name (_ADR, 0x01)
                        Method (_GTF, 0, NotSerialized)
                        {
                            Noop
                            Name (SIB1, Buffer (0x0E)
                            {
                                /* 0000 */    0x03, 0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF, 0x03, 
                                /* 0008 */    0x00, 0x00, 0x00, 0x00, 0xB0, 0xEF
                            })
                            CreateByteField (SIB1, 0x01, PMD1)
                            CreateByteField (SIB1, 0x08, DMD1)
                            If (And (SECT, 0x20))
                            {
                                If (LEqual (And (SECT, 0x90), 0x80))
                                {
                                    Store (0x08, PMD1)
                                }
                                Else
                                {
                                    Add (And (SSIT, 0x03), ShiftRight (And (SSIT, 0x0C), 
                                        0x02), Local0)
                                    If (LEqual (0x05, Local0))
                                    {
                                        Store (0x0C, PMD1)
                                    }
                                    Else
                                    {
                                        If (LEqual (0x03, Local0))
                                        {
                                            Store (0x0B, PMD1)
                                        }
                                        Else
                                        {
                                            Store (0x0A, PMD1)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Store (0x01, PMD1)
                            }

                            If (And (SDMA, 0x02))
                            {
                                Store (Or (SDT3, 0x40), DMD1)
                                If (And (ICR0, 0x08))
                                {
                                    Add (DMD1, 0x02, DMD1)
                                }

                                If (And (ICR3, 0x08))
                                {
                                    Store (0x45, DMD1)
                                }
                            }
                            Else
                            {
                                Or (Subtract (And (PMD1, 0x07), 0x02), 0x20, DMD1)
                            }

                            Return (SIB1)
                        }
                    }
                }
            }

            Device (SMBS)
            {
                Name (_ADR, 0x001F0003)
            }

            Device (PWRB)
            {
                Name (_HID, EisaId ("PNP0C0C"))
                Name (_PRW, Package (0x02)
                {
                    0x1D, 
                    0x03
                })
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0000)
                OperationRegion (USBO, PCI_Config, 0xC4, 0x04)
                Field (USBO, DWordAcc, Lock, Preserve)
                {
                    RSEN,   2
                }

                Name (_PRW, Package (0x02)
                {
                    0x03, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (0x03, RSEN)
                    }
                    Else
                    {
                        Store (0x00, RSEN)
                    }
                }

                Method (_S3D, 0, NotSerialized)
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)
                {
                    Return (0x02)
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0001)
                OperationRegion (USBO, PCI_Config, 0xC4, 0x04)
                Field (USBO, DWordAcc, Lock, Preserve)
                {
                    RSEN,   2
                }

                Name (_PRW, Package (0x02)
                {
                    0x04, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (0x03, RSEN)
                    }
                    Else
                    {
                        Store (0x00, RSEN)
                    }
                }

                Method (_S3D, 0, NotSerialized)
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)
                {
                    Return (0x02)
                }
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0002)
                OperationRegion (USBO, PCI_Config, 0xC4, 0x04)
                Field (USBO, DWordAcc, Lock, Preserve)
                {
                    RSEN,   2
                }

                Name (_PRW, Package (0x02)
                {
                    0x0C, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (0x03, RSEN)
                    }
                    Else
                    {
                        Store (0x00, RSEN)
                    }
                }

                Method (_S3D, 0, NotSerialized)
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)
                {
                    Return (0x02)
                }
            }

            Device (USB4)
            {
                Name (_ADR, 0x001D0003)
                OperationRegion (USBO, PCI_Config, 0xC4, 0x04)
                Field (USBO, DWordAcc, Lock, Preserve)
                {
                    RSEN,   2
                }

                Name (_PRW, Package (0x02)
                {
                    0x0E, 
                    0x03
                })
                Method (_PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (0x03, RSEN)
                    }
                    Else
                    {
                        Store (0x00, RSEN)
                    }
                }

                Method (_S3D, 0, NotSerialized)
                {
                    Return (0x02)
                }

                Method (_S4D, 0, NotSerialized)
                {
                    Return (0x02)
                }
            }

            Device (EUSB)
            {
                Name (_ADR, 0x001D0007)
                Name (_S3D, 0x02)
                Name (_S4D, 0x02)
                Name (_PRW, Package (0x02)
                {
                    0x0D, 
                    0x03
                })
            }
        }
    }

    Scope (_SI)
    {
        Method (_SST, 1, NotSerialized)
        {
            If (LEqual (Arg0, 0x01)) {}
            If (LEqual (Arg0, 0x03))
            {
                If (LEqual (OSYS, 0x07CE))
                {
                    Or (Arg0, 0x80, \_SB.BCMD)
                    Store (Zero, \_SB.SMIC)
                }

                If (LEqual (OSYS, 0x07CF))
                {
                    Or (Arg0, 0x80, \_SB.BCMD)
                    Store (Zero, \_SB.SMIC)
                }
                Else
                {
                }
            }
        }
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, 0x00))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, 0x01))
        {
            Store (Or (And (P80D, 0xFFFF00FF), ShiftLeft (Arg1, 0x08)
                ), P80D)
        }

        If (LEqual (Arg0, 0x02))
        {
            Store (Or (And (P80D, 0xFF00FFFF), ShiftLeft (Arg1, 0x10)
                ), P80D)
        }

        If (LEqual (Arg0, 0x03))
        {
            Store (Or (And (P80D, 0x00FFFFFF), ShiftLeft (Arg1, 0x18)
                ), P80D)
        }

        Store (P80D, P80H)
    }

    Method (TRAP, 1, Serialized)
    {
        Store (Arg0, SMIF)
        Store (0x00, TRP0)
        Return (SMIF)
    }

    Scope (\_TZ)
    {
        Name (THPP, 0x00)
        ThermalZone (TZ01)
        {
            Method (KELV, 1, NotSerialized)
            {
                If (LGreater (Arg0, 0x7F))
                {
                    XOr (Arg0, 0xFF, Local0)
                    Add (Local0, 0x01, Local0)
                    Multiply (Local0, 0x0A, Local0)
                    Subtract (0x0AAC, Local0, Local1)
                }
                Else
                {
                    Multiply (Arg0, 0x0A, Local0)
                    Add (Local0, 0x0AAC, Local1)
                }

                Return (Local1)
            }

            Method (_TMP, 0, NotSerialized)
            {
                Return (KELV (\_SB.PCI0.LPC0.EC0.XHPP))
            }

            Method (_CRT, 0, NotSerialized)
            {
                Return (KELV (0x63))
            }

            Method (_TSP, 0, NotSerialized)
            {
                Return (0x0A)
            }
        }
    }

    Name (_S0, Package (0x02)
    {
        0x00, 
        0x00
    })
    Name (_S1, Package (0x02)
    {
        0x01, 
        0x01
    })
    Name (_S3, Package (0x02)
    {
        0x05, 
        0x05
    })
    Name (_S4, Package (0x02)
    {
        0x06, 
        0x06
    })
    Name (_S5, Package (0x02)
    {
        0x07, 
        0x07
    })
    Name (PICF, 0x00)
    Name (SPNF, 0x00)
    Method (_PIC, 1, NotSerialized)
    {
        Store (Arg0, \PICF)
    }

    Method (_PTS, 1, NotSerialized)
    {
        Store (\_SB.PCI0.LPC0.EC0.XBNS, \S4BL)
        If (LEqual (Arg0, 0x04))
        {
            If (LEqual (\_SB.PCI0.LPC0.EC0.WO3G, 0x00))
            {
                Store (\_SB.PCI0.LPC0.EC0.EC3G, \_SB.PCI0.LPC0.EC0.ECWL)
            }

            Store (\_SB.PCI0.LPC0.EC0.EC3G, \G3ST)
            Store (\_SB.PCI0.LPC0.EC0.ECWL, \WLST)
            Store (\_SB.PCI0.LPC0.EC0.XBNS, \S4BL)
            Store (\_SB.PCI0.LPC0.EC0.WO3G, \W510)
            Store (0x01, S4EN)
            Store (Arg0, P80H)
        }
        Else
        {
            Store (0x00, S4EN)
        }

        Sleep (0x03E8)
        Store (Arg0, P80H)
    }

    Method (_WAK, 1, NotSerialized)
    {
        ShiftLeft (Arg0, 0x04, P80H)
        Store (0x00, \_SB.PCI0.PEXE)
        Store (0x31, P80H)
        If (LEqual (Arg0, 0x03))
        {
            Store (0x01, \SPNF)
            Store (0x32, P80H)
            Store (0x33, P80H)
            TRAP (0x50)
            Store (0x34, P80H)
            Store (\_SB.PCI0.LPC0.EC0.GSTA, \GDEV)
            Store (0x35, P80H)
        }

        If (LEqual (Arg0, 0x04))
        {
            \_SB.OSHT ()
            If (LGreater (Arg0, 0x03))
            {
                Store (\G3ST, \_SB.PCI0.LPC0.EC0.EC3G)
                Store (\WLST, \_SB.PCI0.LPC0.EC0.ECWL)
                Store (\S4BL, \_SB.PCI0.LPC0.EC0.XBNS)
                Store (\W510, \_SB.PCI0.LPC0.EC0.WO3G)
            }

            Store (0x01, \_SB.PCI0.LPC0.EC0.WLN4)
        }

        If (LEqual (OSYS, 0x07CE))
        {
            Notify (\_SB.PCI0.PWRB, 0x02)
        }

        Store (0xAA, P80H)
        Store (0xFF, \FNLK)
        Store (\GSNX, \_SB.PCI0.LPC0.EC0.MXRG)
        Store (\GSNY, \_SB.PCI0.LPC0.EC0.MYRG)
        Store (\GSNZ, \_SB.PCI0.LPC0.EC0.MZRG)
        Store (0x01, \_SB.PCI0.LPC0.EC0.MREG)
        Store (0xBB, P80H)
    }

    Scope (\_SB)
    {
        Name (OSTB, Ones)
        OperationRegion (OSTY, SystemMemory, 0x3F5CEEBC, 0x00000001)
        Field (OSTY, AnyAcc, NoLock, Preserve)
        {
            TPOS,   8
        }

        Method (OSTP, 0, NotSerialized)
        {
            If (LEqual (^OSTB, Ones))
            {
                If (CondRefOf (\_OSI, Local0))
                {
                    If (\_OSI ("Windows 2001.1"))
                    {
                        Store (0x20, ^OSTB)
                        Store (0x20, ^TPOS)
                    }
                    Else
                    {
                        If (\_OSI ("Windows 2001 SP1"))
                        {
                            Store (0x10, ^OSTB)
                            Store (0x10, ^TPOS)
                        }
                        Else
                        {
                            If (\_OSI ("Windows 2001"))
                            {
                                Store (0x08, ^OSTB)
                                Store (0x08, ^TPOS)
                            }
                            Else
                            {
                                Store (0x00, ^OSTB)
                                Store (0x00, ^TPOS)
                            }
                        }
                    }
                }
                Else
                {
                    If (CondRefOf (\_OS, Local0))
                    {
                        If (^SEQL (\_OS, "Microsoft Windows"))
                        {
                            Store (0x01, ^OSTB)
                            Store (0x01, ^TPOS)
                        }
                        Else
                        {
                            If (^SEQL (\_OS, "Microsoft WindowsME: Millennium Edition"))
                            {
                                Store (0x02, ^OSTB)
                                Store (0x02, ^TPOS)
                            }
                            Else
                            {
                                If (^SEQL (\_OS, "Microsoft Windows NT"))
                                {
                                    Store (0x04, ^OSTB)
                                    Store (0x04, ^TPOS)
                                }
                                Else
                                {
                                    Store (0x00, ^OSTB)
                                    Store (0x00, ^TPOS)
                                }
                            }
                        }
                    }
                    Else
                    {
                        Store (0x00, ^OSTB)
                        Store (0x00, ^TPOS)
                    }
                }
            }

            Return (^OSTB)
        }

        Method (OSHT, 0, NotSerialized)
        {
            \_SB.OSTP ()
        }

        Method (SEQL, 2, Serialized)
        {
            Store (SizeOf (Arg0), Local0)
            Store (SizeOf (Arg1), Local1)
            If (LNotEqual (Local0, Local1))
            {
                Return (Zero)
            }

            Name (BUF0, Buffer (Local0) {})
            Store (Arg0, BUF0)
            Name (BUF1, Buffer (Local0) {})
            Store (Arg1, BUF1)
            Store (Zero, Local2)
            While (LLess (Local2, Local0))
            {
                Store (DerefOf (Index (BUF0, Local2)), Local3)
                Store (DerefOf (Index (BUF1, Local2)), Local4)
                If (LNotEqual (Local3, Local4))
                {
                    Return (Zero)
                }

                Increment (Local2)
            }

            Return (One)
        }
    }

    Name (FWSO, "FWSO")
    Name (_PSC, 0x00)
    Method (_PS0, 0, NotSerialized)
    {
        Store (_PSC, Local0)
        Store (0x00, _PSC)
        If (LEqual (Local0, 0x03))
        {
            Store (0x01, \_SB.INF)
            While (\_SB.INF)
            {
                If (LAnd (LEqual (\_SB.INF, 0x01), LGreaterEqual (\_SB.OSTB, 0x04)))
                {
                    Sleep (0x01F4)
                }
            }
        }
    }

    Method (_PS3, 0, NotSerialized)
    {
        Store (0x03, _PSC)
    }
}

