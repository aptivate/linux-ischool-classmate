/*
 * Intel ACPI Component Architecture
 * AML Disassembler version 20100528
 *
 * Disassembly of DSDT.bin, Mon Oct 29 12:23:55 2012
 *
 *
 * Original Table Header:
 *     Signature        "DSDT"
 *     Length           0x000064B7 (25783)
 *     Revision         0x02
 *     Checksum         0x75
 *     OEM ID           "ECSSYS"
 *     OEM Table ID     "ECSPRDCT"
 *     OEM Revision     0x00000001 (1)
 *     Compiler ID      "INTL"
 *     Compiler Version 0x20061109 (537268489)
 */
DefinitionBlock ("DSDT.aml", "DSDT", 2, "ECSSYS", "ECSPRDCT", 0x00000001)
{
    External (NDN3, MethodObj)    // 1 Arguments
    External (PDC3)
    External (PDC2)
    External (PDC1)
    External (PDC0)
    External (CFGD)
    External (\_PR_.CPU0._PSS)
    External (\_PR_.CPU0._PPC)

    Name (SS1, One)
    Name (SS2, Zero)
    Name (SS3, One)
    Name (SS4, One)
    Name (IOST, 0xFFFF)
    Name (TOPM, 0x000FFFFF)
    Name (ROMS, 0xFFE00000)
    Name (MG1B, 0x000FFFFF)
    Name (MG1L, 0x000FFFFF)
    Name (MG2B, 0x000FFFFF)
    Name (MG2L, 0x000FFFFF)
    Name (SP3O, 0x2E)
    Name (IO4B, 0x0A20)
    Name (IO4L, 0x20)
    Name (SP1O, 0x4E)
    Name (SMBS, 0xEFA0)
    Name (PBLK, 0x0410)
    Name (PMBS, 0x0400)
    Name (PMLN, 0x80)
    Name (LVL2, 0x0414)
    Name (LVL3, 0x0415)
    Name (LVL4, 0x0416)
    Name (SMIP, 0xB2)
    Name (GPBS, 0x0500)
    Name (GPLN, 0x80)
    Name (APCB, 0xFEC00000)
    Name (APCL, 0x1000)
    Name (PM30, 0x0430)
    Name (SRCB, 0xFED1C000)
    Name (SRCL, 0x4000)
    Name (SUSW, 0xFF)
    Name (HPTB, 0xFED00000)
    Name (HPTC, 0xFED1F404)
    Name (MCHB, 0xFED14000)
    Name (MCHL, 0x4000)
    Name (EGPB, 0xFED19000)
    Name (EGPL, 0x1000)
    Name (DMIB, 0xFED18000)
    Name (DMIL, 0x1000)
    Name (IFPB, 0xFED14000)
    Name (IFPL, 0x1000)
    Name (PEBS, 0xE0000000)
    Name (PELN, 0x10000000)
    Name (FMBL, One)
    Name (FDTP, 0x02)
    Name (TRTP, One)
    Name (TRTD, 0x02)
    Name (TRTI, 0x03)
    Name (GCDD, One)
    Name (DSTA, 0x0A)
    Name (DSLO, 0x02)
    Name (DSLC, 0x03)
    Name (PITS, 0x10)
    Name (SBCS, 0x12)
    Name (SALS, 0x13)
    Name (LSSS, 0x2A)
    Name (PSSS, 0x2B)
    Name (SOOT, 0x35)
    Name (ESCS, 0x48)
    Name (SDGV, 0x1C)
    Name (TCGM, One)
    Name (ACPH, 0xDE)
    Name (ASSB, Zero)
    Name (AOTB, Zero)
    Name (AAXB, Zero)
    Name (PEHP, One)
    Name (SHPC, Zero)
    Name (PEPM, One)
    Name (PEER, One)
    Name (PECS, One)
    Name (ITKE, Zero)
    Name (DSSP, Zero)
    Name (FHPP, Zero)
    Name (SMBL, 0x10)
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
        CMBT,   1, 
        DGBT,   1, 
        BBST,   1, 
        FNLK,   8, 
        MPEG,   2, 
        BKLV,   3, 
        G3SX,   1, 
        APLS,   1, 
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
        W510,   1, 
        TPSS,   1, 
        CAML,   1, 
                Offset (0x59), 
        DTVE,   1
    }

    OperationRegion (GNVS, SystemMemory, 0x7F646E18, 0x0160)
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
        THOF,   8, 
        ACT1,   8, 
        ACTT,   8, 
        PSVT,   8, 
        TC1V,   8, 
        TC2V,   8, 
        TSPV,   8, 
        CRTT,   8, 
        DTSE,   8, 
        DTS1,   8, 
        DTS2,   8, 
        DTSF,   8, 
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
        PCP0,   8, 
        PCP1,   8, 
        PPCM,   8, 
        PPMF,   32, 
                Offset (0x32), 
        NATP,   8, 
        CMAP,   8, 
        CMBP,   8, 
        LPTP,   8, 
        FDCP,   8, 
        CMCP,   8, 
        CIRP,   8, 
        W381,   8, 
        NPCE,   8, 
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
        KSV0,   32, 
        KSV1,   8, 
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
        DSTS,   8, 
                Offset (0x78), 
        TPMP,   8, 
                Offset (0x7A), 
        MORD,   8, 
        TCGP,   8, 
        PPRP,   32, 
        PPRQ,   8, 
        LPPR,   8, 
        GTF0,   56, 
        GTF2,   56, 
        IDEM,   8, 
        GTF1,   56, 
        BID,    8, 
                Offset (0x9E), 
        ALFP,   8, 
                Offset (0xA2), 
        BTLP,   64, 
        ASLB,   32, 
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
        HVCO,   8, 
        NXD1,   32, 
        NXD2,   32, 
        NXD3,   32, 
        NXD4,   32, 
        NXD5,   32, 
        NXD6,   32, 
        NXD7,   32, 
        NXD8,   32, 
        GSMI,   8, 
        PAVP,   8, 
                Offset (0xE1), 
        OSCC,   8, 
        NEXP,   8, 
                Offset (0xEB), 
        DSEN,   8, 
        ECON,   8, 
        GPIC,   8, 
        CTYP,   8, 
        L01C,   8, 
        VFN0,   8, 
        VFN1,   8, 
                Offset (0x100), 
        NVGA,   32, 
        NVHA,   32, 
        AMDA,   32, 
        DID6,   32, 
        DID7,   32, 
        DID8,   32, 
                Offset (0x15B), 
        ACST,   8, 
        BTST,   8, 
        PFLV,   8, 
        BREV,   8, 
        AOAC,   8
    }

    Scope (_SB)
    {
        OperationRegion (SMI0, SystemIO, 0xB2, One)
        Field (SMI0, AnyAcc, NoLock, Preserve)
        {
            SMIC,   8
        }

        OperationRegion (SMI1, SystemMemory, 0x7F405018, 0x00001000)
        Field (SMI1, AnyAcc, NoLock, Preserve)
        {
            BCMD,   16, 
            DID,    32, 
            INFO,   1024
        }

        Field (SMI1, AnyAcc, NoLock, Preserve)
        {
                    AccessAs (ByteAcc, 0x00), 
                    Offset (0x05), 
            INFB,   8
        }

        Field (SMI1, AnyAcc, NoLock, Preserve)
        {
                    Offset (0x06), 
            INFD,   32
        }

        Mutex (PSMX, 0x00)
        Method (PHS1, 1, NotSerialized)
        {
            Acquire (PSMX, 0xFFFF)
            Store (Zero, DID)
            Store (Arg0, BCMD)
            Store (0xAB, SMIC)
            Store (INFD, Local0)
            Release (PSMX)
            Store (Zero, BCMD)
            Return (Local0)
        }

        Method (PHS2, 2, NotSerialized)
        {
            Acquire (PSMX, 0xFFFF)
            Store (Zero, DID)
            Store (Arg1, INFD)
            Store (Arg0, BCMD)
            Store (0xAB, SMIC)
            Store (INFD, Local0)
            Release (PSMX)
            Store (Zero, BCMD)
            Return (Local0)
        }

        Name (PR00, Package (0x0B)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                LNKA, 
                Zero
            }
        })
        Name (AR00, Package (0x0B)
        {
            Package (0x04)
            {
                0x001FFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                Zero, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001DFFFF, 
                0x03, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001BFFFF, 
                Zero, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0x001CFFFF, 
                0x03, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0x0002FFFF, 
                Zero, 
                Zero, 
                0x10
            }
        })
        Name (PR01, Package (0x05)
        {
            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                LNKE, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKF, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKG, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKH, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKE, 
                Zero
            }
        })
        Name (AR01, Package (0x05)
        {
            Package (0x04)
            {
                0x0008FFFF, 
                Zero, 
                Zero, 
                0x14
            }, 

            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x15
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x16
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x17
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x14
            }
        })
        Name (PR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKD, 
                Zero
            }
        })
        Name (AR04, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x13
            }
        })
        Name (PR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKA, 
                Zero
            }
        })
        Name (AR05, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x10
            }
        })
        Name (PR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKC, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKB, 
                Zero
            }
        })
        Name (AR06, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x12
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x11
            }
        })
        Name (PR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                LNKD, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                LNKA, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                LNKB, 
                Zero
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                LNKC, 
                Zero
            }
        })
        Name (AR07, Package (0x04)
        {
            Package (0x04)
            {
                0xFFFF, 
                Zero, 
                Zero, 
                0x13
            }, 

            Package (0x04)
            {
                0xFFFF, 
                One, 
                Zero, 
                0x10
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x02, 
                Zero, 
                0x11
            }, 

            Package (0x04)
            {
                0xFFFF, 
                0x03, 
                Zero, 
                0x12
            }
        })
        Name (PRSA, ResourceTemplate ()
        {
            IRQ (Level, ActiveLow, Shared, )
                {3,4,5,6,10,11,12,14,15}
        })
        Alias (PRSA, PRSB)
        Alias (PRSA, PRSC)
        Alias (PRSA, PRSD)
        Alias (PRSA, PRSE)
        Alias (PRSA, PRSF)
        Alias (PRSA, PRSG)
        Alias (PRSA, PRSH)
        Device (PCI0)
        {
            Name (_HID, EisaId ("PNP0A08"))
            Name (_CID, EisaId ("PNP0A03"))
            Name (_ADR, Zero)
            Method (^BN00, 0, NotSerialized)
            {
                Return (Zero)
            }

            Method (_BBN, 0, NotSerialized)
            {
                Return (BN00 ())
            }

            Name (_UID, Zero)
            Method (_PRT, 0, NotSerialized)
            {
                If (PICM)
                {
                    Return (AR00)
                }

                Return (PR00)
            }

            Device (CDVC)
            {
                Name (_ADR, Zero)
                OperationRegion (HBUS, PCI_Config, Zero, 0xFF)
                Field (HBUS, DWordAcc, NoLock, Preserve)
                {
                            Offset (0xD0), 
                    SMCR,   32, 
                    SMDR,   32, 
                    MCRX,   32
                }

                Method (RMBR, 2, Serialized)
                {
                    Or (ShiftLeft (Arg0, 0x10), ShiftLeft (Arg1, 0x08), Local0)
                    Or (0x100000F0, Local0, SMCR)
                    Return (SMDR)
                }

                Method (WMBR, 3, Serialized)
                {
                    Store (Arg2, SMDR)
                    Or (ShiftLeft (Arg0, 0x10), ShiftLeft (Arg1, 0x08), Local0)
                    Or (0x110000F0, Local0, SMCR)
                }
            }

            Name (BUF0, ResourceTemplate ()
            {
                WordBusNumber (ResourceProducer, MinFixed, MaxFixed, PosDecode,
                    0x0000,             // Granularity
                    0x0000,             // Range Minimum
                    0x00FF,             // Range Maximum
                    0x0000,             // Translation Offset
                    0x0100,             // Length
                    ,, )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0x00000CF7,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00000CF8,         // Length
                    ,, , TypeStatic)
                IO (Decode16,
                    0x0CF8,             // Range Minimum
                    0x0CF8,             // Range Maximum
                    0x01,               // Alignment
                    0x08,               // Length
                    )
                DWordIO (ResourceProducer, MinFixed, MaxFixed, PosDecode, EntireRange,
                    0x00000000,         // Granularity
                    0x00000D00,         // Range Minimum
                    0x0000FFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x0000F300,         // Length
                    ,, , TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000A0000,         // Range Minimum
                    0x000BFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000C0000,         // Range Minimum
                    0x000DFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00020000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000E0000,         // Range Minimum
                    0x000EFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x000F0000,         // Range Minimum
                    0x000FFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00010000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x3F800000,         // Range Minimum
                    0x3FFFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0x00800000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
                DWordMemory (ResourceProducer, PosDecode, MinFixed, MaxFixed, Cacheable, ReadWrite,
                    0x00000000,         // Granularity
                    0x00000000,         // Range Minimum
                    0xFEBFFFFF,         // Range Maximum
                    0x00000000,         // Translation Offset
                    0xFEC00000,         // Length
                    ,, , AddressRangeMemory, TypeStatic)
            })
            Method (_CRS, 0, Serialized)
            {
                CreateDWordField (BUF0, 0xD8, M1MN)
                CreateDWordField (BUF0, 0xDC, M1MX)
                CreateDWordField (BUF0, 0xE4, M1LN)
                And (^CDVC.RMBR (0x02, 0x08), 0xF0000000, M1MN)
                Add (Subtract (M1MX, M1MN), One, M1LN)
                CreateDWordField (BUF0, 0xBE, GSMN)
                CreateDWordField (BUF0, 0xC2, GSMX)
                CreateDWordField (BUF0, 0xCA, GSLN)
                If (IGDS)
                {
                    Store (^GFX0.GSTM, GSMN)
                    And (^CDVC.RMBR (0x02, 0x08), 0xF0000000, GSMX)
                    Subtract (GSMX, GSMN, GSLN)
                    Subtract (GSMX, One, GSMX)
                }
                Else
                {
                    Store (Zero, GSMN)
                    Store (Zero, GSMX)
                    Store (Zero, GSLN)
                }

                Return (BUF0)
            }

            Name (GUID, Buffer (0x10)
            {
                /* 0000 */    0x5B, 0x4D, 0xDB, 0x33, 0xF7, 0x1F, 0x1C, 0x40, 
                /* 0008 */    0x96, 0x57, 0x74, 0x41, 0xC0, 0x3D, 0xD7, 0x66
            })
            Name (SUPP, Zero)
            Name (CTRL, Zero)
            Method (_OSC, 4, Serialized)
            {
                Store (Arg3, Local0)
                CreateDWordField (Local0, Zero, CDW1)
                CreateDWordField (Local0, 0x04, CDW2)
                CreateDWordField (Local0, 0x08, CDW3)
                If (LAnd (LEqual (Arg0, GUID), NEXP))
                {
                    Store (CDW2, SUPP)
                    Store (CDW3, CTRL)
                    If (Not (And (CDW1, One)))
                    {
                        If (And (CTRL, 0x02))
                        {
                            NHPG ()
                        }

                        If (And (CTRL, 0x04))
                        {
                            NPME ()
                        }
                    }

                    If (LNotEqual (Arg1, One))
                    {
                        Or (CDW1, 0x08, CDW1)
                    }

                    If (LNotEqual (CDW3, CTRL))
                    {
                        Or (CDW1, 0x10, CDW1)
                    }

                    Store (CTRL, CDW3)
                    Store (CTRL, OSCC)
                    Return (Local0)
                }
                Else
                {
                    Or (CDW1, 0x04, CDW1)
                    Return (Local0)
                }
            }

            Device (P0P1)
            {
                Name (_ADR, 0x001E0000)
                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR01)
                    }

                    Return (PR01)
                }

                Device (ELAN)
                {
                    Name (_ADR, 0x00080000)
                    Method (_PRW, 0, NotSerialized)
                    {
                        Return (GPRW (0x0B, 0x04))
                    }
                }
            }

            Device (LPCB)
            {
                Name (_ADR, 0x001F0000)
                Scope (\_SB)
                {
                    Name (TCGP, Buffer (0x08)
                    {
                        /* 0000 */    0x1F, 0xE0, 0x1F, 0x01, 0x02, 0x04, 0x08, 0xF0
                    })
                    CreateByteField (TCGP, Zero, PPRQ)
                    CreateByteField (TCGP, One, PPL1)
                    CreateByteField (TCGP, 0x02, PPRP)
                    CreateByteField (TCGP, 0x03, TPRS)
                    CreateByteField (TCGP, 0x04, PPOR)
                    CreateByteField (TCGP, 0x05, TPMV)
                    CreateByteField (TCGP, 0x06, MOR)
                    CreateByteField (TCGP, 0x07, TVEN)
                    OperationRegion (TCGC, SystemIO, 0x72, 0x02)
                    Field (TCGC, ByteAcc, Lock, Preserve)
                    {
                        TIDX,   8, 
                        TPDA,   8
                    }

                    IndexField (TIDX, TPDA, ByteAcc, Lock, Preserve)
                    {
                                Offset (0x40), 
                        TPP1,   8, 
                        PPLO,   8, 
                        TPP3,   8
                    }

                    OperationRegion (SMIP, SystemIO, 0xB2, 0x02)
                    Field (SMIP, WordAcc, NoLock, Preserve)
                    {
                        SMIT,   8, 
                        SMID,   8
                    }

                    OperationRegion (PCI0.LPCB.LPC1, PCI_Config, 0x40, 0xC0)
                    Field (PCI0.LPCB.LPC1, AnyAcc, NoLock, Preserve)
                    {
                                Offset (0x20), 
                        PARC,   8, 
                        PBRC,   8, 
                        PCRC,   8, 
                        PDRC,   8, 
                                Offset (0x28), 
                        PERC,   8, 
                        PFRC,   8, 
                        PGRC,   8, 
                        PHRC,   8
                    }

                    Device (LNKA)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, One)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PARC, 0x80, PARC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLA, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLA, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PARC, 0x0F), IRQ0)
                            Return (RTLA)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PARC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PARC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKB)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x02)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PBRC, 0x80, PBRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLB, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLB, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PBRC, 0x0F), IRQ0)
                            Return (RTLB)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PBRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PBRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKC)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x03)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PCRC, 0x80, PCRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLC, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLC, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PCRC, 0x0F), IRQ0)
                            Return (RTLC)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PCRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PCRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKD)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x04)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PDRC, 0x80, PDRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLD, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLD, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PDRC, 0x0F), IRQ0)
                            Return (RTLD)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PDRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PDRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKE)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x05)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PERC, 0x80, PERC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLE, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLE, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PERC, 0x0F), IRQ0)
                            Return (RTLE)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PERC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PERC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKF)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x06)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PFRC, 0x80, PFRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLF, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLF, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PFRC, 0x0F), IRQ0)
                            Return (RTLF)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PFRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PFRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKG)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x07)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PGRC, 0x80, PGRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,10,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLG, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLG, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PGRC, 0x0F), IRQ0)
                            Return (RTLG)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PGRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PGRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }

                    Device (LNKH)
                    {
                        Name (_HID, EisaId ("PNP0C0F"))
                        Name (_UID, 0x08)
                        Method (_DIS, 0, Serialized)
                        {
                            Or (PHRC, 0x80, PHRC)
                        }

                        Name (_PRS, ResourceTemplate ()
                        {
                            IRQ (Level, ActiveLow, Shared, )
                                {1,3,4,5,6,7,11,12,14,15}
                        })
                        Method (_CRS, 0, Serialized)
                        {
                            Name (RTLH, ResourceTemplate ()
                            {
                                IRQ (Level, ActiveLow, Shared, )
                                    {}
                            })
                            CreateWordField (RTLH, One, IRQ0)
                            Store (Zero, IRQ0)
                            ShiftLeft (One, And (PHRC, 0x0F), IRQ0)
                            Return (RTLH)
                        }

                        Method (_SRS, 1, Serialized)
                        {
                            CreateWordField (Arg0, One, IRQ0)
                            FindSetRightBit (IRQ0, Local0)
                            Decrement (Local0)
                            Store (Local0, PHRC)
                        }

                        Method (_STA, 0, Serialized)
                        {
                            If (And (PHRC, 0x80))
                            {
                                Return (0x09)
                            }
                            Else
                            {
                                Return (0x0B)
                            }
                        }
                    }
                }

                OperationRegion (LPC0, PCI_Config, 0x40, 0xC0)
                Field (LPC0, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x40), 
                    IOD0,   8, 
                    IOD1,   8, 
                            Offset (0xB0), 
                    RAEN,   1, 
                        ,   13, 
                    RCBA,   18
                }

                Scope (\)
                {
                    Name (FGEC, Zero)
                    Name (OSFL, Zero)
                    Name (OSEC, Zero)
                    Name (THPP, Zero)
                    Name (OSF1, Zero)
                    Name (OSF6, Zero)
                    Name (OSFN, Zero)
                    Name (OSF9, Zero)
                    Name (BKLT, Zero)
                    Name (BKIP, Zero)
                    Name (WLIP, Zero)
                    Name (G3IP, Zero)
                    Name (TPST, Zero)
                    Name (WLEB, Zero)
                    Name (PKEY, Zero)
                    Name (OSHG, 0xE0)
                    Name (L02S, Zero)
                }

                Scope (\_SB.PCI0.LPCB)
                {
                    Device (IPML)
                    {
                        Name (_HID, "IPML200")
                        Name (_UID, Zero)
                        Name (VALU, Zero)
                        Method (GRDI, 1, NotSerialized)
                        {
                            If (LEqual (Arg0, 0xC0))
                            {
                                Return (BKLV)
                            }

                            If (LEqual (Arg0, 0xC1))
                            {
                                If (LEqual (WLEN, One))
                                {
                                    Store (One, ^^EC0.ECWL)
                                    Return (0xFF)
                                }

                                If (WLST)
                                {
                                    Return (Zero)
                                }
                                Else
                                {
                                    Return (One)
                                }
                            }

                            If (LEqual (Arg0, 0xC2))
                            {
                                Store (One, ^^EC0.XLDO)
                                Sleep (0x0A)
                                Return (^^EC0.XLDO)
                            }

                            If (LEqual (Arg0, 0xC3))
                            {
                                If (LEqual (G3EN, One))
                                {
                                    Return (0xFF)
                                }

                                If (G3ST)
                                {
                                    Return (Zero)
                                }
                                Else
                                {
                                    Return (One)
                                }
                            }

                            If (LEqual (Arg0, 0xC4))
                            {
                                If (LAnd (LEqual (CMBT, One), LEqual (DGBT, One)))
                                {
                                    Return (0xFF)
                                }

                                If (LEqual (BBST, One))
                                {
                                    Return (Zero)
                                }
                                Else
                                {
                                    Return (One)
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
                                If (Not (LAnd (LGreaterEqual (Arg1, Zero), LLessEqual (Arg1, 
                                    0x07))))
                                {
                                    Return (0xFF)
                                }

                                Store (^^EC0.XBNS, Local0)
                                Sleep (0x0A)
                                Store (Arg1, ^^EC0.XBNS)
                                Store (Arg1, BKLV)
                                Return (Local0)
                            }

                            If (LEqual (Arg0, 0xC1))
                            {
                                If (Not (LOr (LEqual (Arg1, Zero), LEqual (Arg1, One))))
                                {
                                    Return (0xFF)
                                }

                                If (LEqual (Arg1, Zero))
                                {
                                    PHS1 (0x52)
                                    Store (One, WLST)
                                    Store (Zero, Local0)
                                    Sleep (0x07D0)
                                }

                                If (LEqual (Arg1, One))
                                {
                                    PHS1 (0x51)
                                    Store (Zero, WLST)
                                    Store (One, Local0)
                                    Sleep (0x3C)
                                }

                                Sleep (0x012C)
                                Return (Local0)
                            }

                            If (LEqual (Arg0, 0xC2))
                            {
                                If (Not (LOr (LEqual (Arg1, Zero), LEqual (Arg1, One))))
                                {
                                    Return (0xFF)
                                }

                                Store (^^EC0.XLDO, Local0)
                                If (LEqual (Arg1, Zero)) {}
                                If (LEqual (Arg1, One)) {}
                                Store (One, ^^EC0.XLDO)
                                Sleep (0x0A)
                                Return (^^EC0.XLDO)
                            }

                            If (LEqual (Arg0, 0xC3))
                            {
                                If (Not (LOr (LEqual (Arg1, Zero), LEqual (Arg1, One))))
                                {
                                    Return (0xFF)
                                }

                                If (LEqual (G3EN, One))
                                {
                                    Return (0xFF)
                                }

                                If (G3ST)
                                {
                                    Store (One, Local0)
                                }
                                Else
                                {
                                    Store (Zero, Local0)
                                }

                                If (LEqual (Arg1, Zero))
                                {
                                    Store (One, G3ST)
                                    PHS1 (0x54)
                                }

                                If (LEqual (Arg1, One))
                                {
                                    Store (Zero, G3ST)
                                    PHS1 (0x53)
                                }

                                Sleep (0x012C)
                                Return (Local0)
                            }

                            If (LEqual (Arg0, 0xC4))
                            {
                                If (Not (LOr (LEqual (Arg1, Zero), LEqual (Arg1, One))))
                                {
                                    Return (0xFF)
                                }

                                If (LAnd (LEqual (CMBT, One), LEqual (DGBT, One)))
                                {
                                    Return (0xFF)
                                }

                                If (LEqual (Arg1, Zero))
                                {
                                    Store (One, BBST)
                                    Store (Zero, Local0)
                                    If (LEqual (CMBT, Zero))
                                    {
                                        Store (Zero, GP22)
                                    }

                                    If (LEqual (DGBT, Zero))
                                    {
                                        Store (Zero, GP36)
                                    }
                                }

                                If (LEqual (Arg1, One))
                                {
                                    Store (Zero, BBST)
                                    Store (One, Local0)
                                    If (LEqual (CMBT, Zero))
                                    {
                                        Store (One, GP22)
                                    }

                                    If (LEqual (DGBT, Zero))
                                    {
                                        Store (One, GP36)
                                    }
                                }

                                Sleep (0x012C)
                                Return (Local0)
                            }

                            Store (0xFF, VALU)
                            Return (VALU)
                        }

                        Name (EBST, Package (0x08)
                        {
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero, 
                            Zero
                        })
                        Method (EBTR, 1, NotSerialized)
                        {
                            Store (^^EC0.XST3, Local0)
                            And (Local0, 0xFF, Index (EBST, One))
                            ShiftRight (Local0, 0x08, Index (EBST, Zero))
                            Store (^^EC0.BAVC, Local0)
                            And (Local0, 0xFF, Index (EBST, 0x03))
                            ShiftRight (Local0, 0x08, Index (EBST, 0x02))
                            Store (^^EC0.BATT, Local0)
                            And (Local0, 0xFF, Index (EBST, 0x05))
                            Store (^^EC0.BT1C, Local0)
                            And (Local0, 0xFF, Index (EBST, 0x07))
                            ShiftRight (Local0, 0x08, Index (EBST, 0x06))
                            Return (EBST)
                        }
                    }

                    Device (FNBT)
                    {
                        Name (_HID, "FnBT0000")
                        Name (_UID, Zero)
                        Method (FNCT, 1, NotSerialized)
                        {
                            And (Arg0, One, Local0)
                            Store (Local0, FNLK)
                        }

                        Method (FNST, 1, NotSerialized)
                        {
                            Store (^^EC0.PKDE, Local0)
                            And (Local0, One, Local0)
                            Return (Local0)
                        }
                    }

                    Device (ACCE)
                    {
                        Name (_HID, "ACCE0001")
                        Name (_UID, Zero)
                        Name (AXIS, Buffer (0x06)
                        {
                            0x00, 0x00, 0x00
                        })
                        Name (GCMD, Zero)
                        CreateWordField (AXIS, Zero, GX)
                        CreateWordField (AXIS, 0x02, GY)
                        CreateWordField (AXIS, 0x04, GZ)
                        Method (_STA, 0, NotSerialized)
                        {
                            If (GDEV)
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }

                        Method (ACMD, 4, NotSerialized)
                        {
                            If (LEqual (Arg0, One))
                            {
                                Store (One, ^^EC0.APST)
                                Sleep (0x0A)
                                If (LEqual (^^EC0.ECST, One))
                                {
                                    Sleep (0x03)
                                }
                                Else
                                {
                                }

                                Store (^^EC0.GXRG, GX)
                                Sleep (0x0A)
                                Store (^^EC0.GYRG, GY)
                                Sleep (0x0A)
                                Store (^^EC0.GZRG, GZ)
                                Sleep (0x0A)
                                Store (Zero, ^^EC0.APST)
                                Return (AXIS)
                            }

                            If (LEqual (Arg0, 0x02))
                            {
                                Store (Arg1, ^^EC0.GETB)
                            }

                            If (LEqual (Arg0, 0x03))
                            {
                                Store (One, ^^EC0.GRUN)
                            }

                            If (LEqual (Arg0, 0x04))
                            {
                                Store (Zero, ^^EC0.GRUN)
                            }

                            If (LEqual (Arg0, 0x05))
                            {
                                Store (Arg1, ^^EC0.GWRG)
                                Sleep (0x0A)
                                Store (One, ^^EC0.GSWT)
                            }

                            If (LEqual (Arg0, 0x06))
                            {
                                Store (One, ^^EC0.GSRD)
                                Sleep (0xFA)
                                Store (^^EC0.GRRG, Local0)
                                Store (And (Local0, 0x03), GCMD)
                                Return (GCMD)
                            }

                            If (LEqual (Arg0, 0x07))
                            {
                                Store (Arg1, ^^EC0.MXRG)
                                Sleep (0x0A)
                                Store (Arg2, ^^EC0.MYRG)
                                Sleep (0x0A)
                                Store (Arg3, ^^EC0.MZRG)
                                Sleep (0x0A)
                                Store (One, ^^EC0.MREG)
                                Sleep (0x0A)
                                Store (^^EC0.MXRG, GSNX)
                                Sleep (0x0A)
                                Store (^^EC0.MYRG, GSNY)
                                Sleep (0x0A)
                                Store (^^EC0.MZRG, GSNZ)
                            }

                            If (LEqual (Arg0, 0x08))
                            {
                                Store (Arg1, ^^EC0.TACT)
                                Sleep (0x0A)
                                Store (One, ^^EC0.SACT)
                            }

                            If (LEqual (Arg0, 0x09))
                            {
                                Store (Arg1, ^^EC0.GETA)
                                Sleep (0x0A)
                                Store (One, ^^EC0.GDLT)
                            }
                        }

                        Method (TCMD, 0, NotSerialized)
                        {
                            PHS1 (0x57)
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
                        Name (BUT1, Zero)
                        Name (BUT2, Zero)
                        Method (_REG, 2, NotSerialized)
                        {
                            Store (0x7F, P80H)
                            If (LEqual (Arg0, 0x03))
                            {
                                Store (Arg1, FGEC)
                                Store (OSFL, Local0)
                                Store (0x04, OSEC)
                                Store (OSEC, XSEC)
                                Sleep (0x0A)
                                Store (WLEN, ECWL)
                                Sleep (0x0A)
                                Store (G3EN, EC3G)
                                Sleep (0x0A)
                                Sleep (0x0A)
                                Store (W510, WO3G)
                                Sleep (0x0A)
                                Store (GSNX, MXRG)
                                Sleep (0x0A)
                                Store (GSNY, MYRG)
                                Sleep (0x0A)
                                Store (GSNZ, MZRG)
                                Sleep (0x0A)
                                Store (One, MREG)
                            }

                            Store (0x80, P80H)
                        }

                        Scope (^^^PCI0)
                        {
                            Device (BAT1)
                            {
                                Name (_HID, EisaId ("PNP0C0A"))
                                Name (_UID, Zero)
                                Name (_PCL, Package (0x01)
                                {
                                    PCI0
                                })
                                Name (PAK1, Package (0x0D)
                                {
                                    Zero, 
                                    0x1130, 
                                    0x1130, 
                                    Zero, 
                                    0x2A30, 
                                    Zero, 
                                    Zero, 
                                    0x10, 
                                    0x08, 
                                    "CMPC", 
                                    "00001", 
                                    "LiON", 
                                    "ECS"
                                })
                                Method (_BIF, 0, NotSerialized)
                                {
                                    Store (0xD0, P80H)
                                    Store (^^LPCB.EC0.XIF0, Index (PAK1, Zero))
                                    Sleep (0x0A)
                                    Store (^^LPCB.EC0.XIF1, Index (PAK1, One))
                                    Sleep (0x0A)
                                    Store (^^LPCB.EC0.XIF2, Local0)
                                    Sleep (0x0A)
                                    Store (Local0, Index (PAK1, 0x02))
                                    Sleep (0x0A)
                                    Store (^^LPCB.EC0.XIF3, Index (PAK1, 0x03))
                                    Sleep (0x0A)
                                    Store (^^LPCB.EC0.XIF4, Index (PAK1, 0x04))
                                    Sleep (0x0A)
                                    Store (^^LPCB.EC0.XIF5, Index (PAK1, 0x05))
                                    Store (0xD1, P80H)
                                    Return (PAK1)
                                }

                                Name (BFB1, Package (0x04)
                                {
                                    Zero, 
                                    0xFFFFFFFF, 
                                    0x1034, 
                                    0x2A30
                                })
                                Method (_BST, 0, NotSerialized)
                                {
                                    Store (^^LPCB.EC0.XST0, Index (BFB1, Zero))
                                    Sleep (0x0A)
                                    Store (^^LPCB.EC0.XST2, Index (BFB1, 0x02))
                                    Sleep (0x0A)
                                    Store (^^LPCB.EC0.XST3, Index (BFB1, 0x03))
                                    Sleep (0x0A)
                                    Return (BFB1)
                                }

                                Method (_BTM, 1, NotSerialized)
                                {
                                    Store (0xD4, P80H)
                                    Multiply (^^LPCB.EC0.XST2, 0x0E10, Local0)
                                    Sleep (0x0A)
                                    Divide (Local0, ^^LPCB.EC0.XST1, Local1, Local2)
                                    Store (0xD5, P80H)
                                    Return (Local2)
                                }

                                Method (_STA, 0, NotSerialized)
                                {
                                    If (LEqual (FGEC, Zero))
                                    {
                                        Store (Zero, Local0)
                                    }
                                    Else
                                    {
                                        Store (^^LPCB.EC0.XTIN, Local0)
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

                        Scope (\_SB.PCI0.LPCB.EC0)
                        {
                            Method (_Q06, 0, NotSerialized)
                            {
                                Store (0x06, P80H)
                                Sleep (0x14)
                                Notify (BAT1, 0x80)
                                Sleep (0x14)
                                Notify (BAT1, 0x81)
                                Sleep (0x14)
                            }
                        }

                        OperationRegion (ECXP, EmbeddedControl, Zero, 0x0100)
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
                                    Offset (0x71), 
                            LSTE,   1, 
                                ,   2, 
                            REQQ,   1, 
                                    Offset (0x75), 
                            SP3S,   8, 
                                    Offset (0x7B), 
                            WLN4,   1, 
                                    Offset (0x7D), 
                            XNPN,   8, 
                                    Offset (0x80), 
                            SATA,   1, 
                            S4ST,   1, 
                                    Offset (0x83), 
                            LSLV,   4, 
                            LSEN,   1, 
                            LSST,   1, 
                                ,   1, 
                            LSAP,   1, 
                                    Offset (0x99), 
                            COLD,   1, 
                                    Offset (0x9A), 
                            QKEY,   1, 
                            HOME,   1, 
                                    Offset (0x9B), 
                            PKDE,   1, 
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
                                    Offset (0xD0), 
                                ,   1, 
                            LSID,   1, 
                                ,   1, 
                            GSID,   1, 
                                    Offset (0xD2), 
                            S3FG,   1
                        }

                        OperationRegion (PMRG, SystemIO, 0x0400, 0x80)
                        Field (PMRG, ByteAcc, NoLock, Preserve)
                        {
                                    Offset (0x10), 
                            THRT,   8, 
                                    Offset (0x30), 
                                ,   4, 
                            SLPS,   1
                        }

                        OperationRegion (DGPC, SystemIO, 0x0500, 0xFF)
                        Field (DGPC, WordAcc, NoLock, Preserve)
                        {
                                    Offset (0x0E), 
                                ,   6, 
                            CBTE,   1, 
                                    Offset (0x0F), 
                                ,   4, 
                            WEBE,   1, 
                                    Offset (0x38), 
                                ,   4, 
                            BTEN,   1
                        }
                    }
                }

                Scope (\_SB)
                {
                    Name (SLPS, Zero)
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
                                Store (Zero, SLPS)
                                Notify (SLPB, 0x02)
                            }
                            Else
                            {
                                Store (One, SLPS)
                                Notify (SLPB, 0x80)
                            }
                        }
                    }
                }

                Scope (EC0)
                {
                    Method (_Q08, 0, NotSerialized)
                    {
                        Store (0x08, P80H)
                        Sleep (0x1F40)
                        Notify (PCI0, Zero)
                    }

                    Method (_Q0A, 0, NotSerialized)
                    {
                        Store (0x0A, P80H)
                        Notify (FNBT, 0x8B)
                    }

                    Method (_Q2B, 0, NotSerialized)
                    {
                        Store (0x2B, P80H)
                        Notify (FNBT, 0x9B)
                    }

                    Method (_Q0B, 0, NotSerialized)
                    {
                        Store (0x0B, P80H)
                        Sleep (0xC8)
                        If (FNLK)
                        {
                            Notify (SLPB, 0x80)
                        }
                    }

                    Method (_Q0F, 0, NotSerialized)
                    {
                        Store (0x0F, P80H)
                        Notify (FNBT, 0x82)
                    }

                    Method (_Q2C, 0, NotSerialized)
                    {
                        Store (0x2C, P80H)
                        Notify (FNBT, 0x92)
                    }

                    Method (_Q10, 0, NotSerialized)
                    {
                        Store (0x10, P80H)
                        Notify (FNBT, 0x83)
                    }

                    Method (_Q48, 0, NotSerialized)
                    {
                        Sleep (0x0A)
                        Notify (FNBT, 0x93)
                        Sleep (0x0A)
                        If (LEqual (CLST, One))
                        {
                            Store (Zero, CLST)
                            Store (Zero, LSST)
                        }
                    }

                    Method (_Q11, 0, NotSerialized)
                    {
                        Store (0x11, P80H)
                        Sleep (0x3C)
                        Notify (FNBT, 0x84)
                    }

                    Method (_Q49, 0, NotSerialized)
                    {
                        Sleep (0x0A)
                        Notify (FNBT, 0x94)
                        Sleep (0x0A)
                        If (LEqual (CLST, One))
                        {
                            Store (Zero, CLST)
                            Store (Zero, LSST)
                        }
                    }

                    Method (_Q12, 0, NotSerialized)
                    {
                        Store (0x12, P80H)
                    }

                    Method (_Q13, 0, NotSerialized)
                    {
                        Store (0x13, P80H)
                        If (LEqual (LSEN, One))
                        {
                            If (LEqual (CLST, Zero))
                            {
                                Store (One, CLST)
                                Store (One, LSST)
                            }
                        }
                    }

                    Method (_Q15, 0, NotSerialized)
                    {
                        Store (0x15, P80H)
                        If (LEqual (WEBC, Zero))
                        {
                            Notify (FNBT, 0x87)
                            Store (0x87, P80H)
                            Sleep (0x01F4)
                            Notify (FNBT, 0x97)
                            Store (0x97, P80H)
                            Store (One, WEBC)
                        }
                        Else
                        {
                            Notify (FNBT, 0x87)
                            Store (0x87, P80H)
                            Notify (FNBT, 0x97)
                            Store (0x97, P80H)
                            Store (Zero, WEBC)
                        }
                    }

                    Method (_Q17, 0, NotSerialized)
                    {
                        Store (0x17, P80H)
                        If (LNotEqual (OSF6, 0x85))
                        {
                            Notify (FNBT, 0x85)
                            Store (0x85, P80H)
                            Store (0x85, OSF6)
                        }
                        Else
                        {
                            Notify (FNBT, 0x95)
                            Store (0x95, P80H)
                            Store (0x95, OSF6)
                        }
                    }

                    Method (_Q1A, 0, NotSerialized)
                    {
                        Store (0x1A, P80H)
                        Store (One, GP28)
                        Store (One, CAML)
                    }

                    Method (_Q1B, 0, NotSerialized)
                    {
                        Store (0x1B, P80H)
                        If (LEqual (LSID, One))
                        {
                            If (LEqual (CAML, One))
                            {
                                Store (Zero, GP28)
                                Store (Zero, CAML)
                                Store (0x78, P80H)
                            }
                            Else
                            {
                                Store (One, GP28)
                                Store (One, CAML)
                                Store (0x79, P80H)
                            }
                        }
                    }

                    Method (_Q1C, 0, NotSerialized)
                    {
                        Store (0x1C, P80H)
                        Store (Zero, GP28)
                        Store (Zero, CAML)
                    }

                    Method (_Q1D, 0, NotSerialized)
                    {
                        Store (0x1D, P80H)
                        If (LNotEqual (PKEY, 0x8C))
                        {
                            Notify (FNBT, 0x8C)
                            Store (0x8C, P80H)
                            Store (0x8C, PKEY)
                        }
                        Else
                        {
                            Notify (FNBT, 0x9C)
                            Store (0x9C, P80H)
                            Store (0x9C, PKEY)
                        }
                    }

                    Method (_Q1E, 0, NotSerialized)
                    {
                        Store (0x1E, P80H)
                        If (And (CFGD, One))
                        {
                            Store (Zero, \_PR.CPU0._PPC)
                            PNOT ()
                        }
                    }

                    Method (_Q1F, 0, NotSerialized)
                    {
                        Store (0x1F, P80H)
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, PPCM)
                        If (LEqual (PPCM, 0x05))
                        {
                            Store (0x05, BUT2)
                        }
                        Else
                        {
                            Divide (PPCM, 0x02, BUT1, BUT2)
                        }

                        If (And (CFGD, One))
                        {
                            Store (BUT2, \_PR.CPU0._PPC)
                            PNOT ()
                        }
                    }

                    Method (_Q20, 0, NotSerialized)
                    {
                        Store (0x20, P80H)
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, PPCM)
                        If (LEqual (PPCM, 0x05))
                        {
                            Store (0x05, BUT2)
                        }
                        Else
                        {
                            Divide (PPCM, 0x02, BUT1, BUT2)
                        }

                        If (And (CFGD, One))
                        {
                            Store (BUT2, \_PR.CPU0._PPC)
                            PNOT ()
                        }
                    }

                    Method (_Q21, 0, NotSerialized)
                    {
                        Store (0x21, P80H)
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, PPCM)
                        If (LEqual (PPCM, 0x05))
                        {
                            Store (0x04, BUT2)
                        }
                        Else
                        {
                            Divide (PPCM, 0x02, BUT1, BUT2)
                        }

                        If (And (CFGD, One))
                        {
                            Store (BUT2, \_PR.CPU0._PPC)
                            PNOT ()
                        }
                    }

                    Method (_Q22, 0, NotSerialized)
                    {
                        Store (0x22, P80H)
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, PPCM)
                        If (LEqual (PPCM, 0x05))
                        {
                            Store (0x04, BUT2)
                        }
                        Else
                        {
                            Divide (PPCM, 0x02, BUT1, BUT2)
                        }

                        If (And (CFGD, One))
                        {
                            Store (BUT2, \_PR.CPU0._PPC)
                            PNOT ()
                        }
                    }

                    Method (_Q23, 0, NotSerialized)
                    {
                        Store (0x23, P80H)
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, PPCM)
                        If (LEqual (PPCM, 0x05))
                        {
                            Store (0x03, BUT2)
                        }
                        Else
                        {
                            Divide (PPCM, 0x02, BUT1, BUT2)
                        }

                        If (And (CFGD, One))
                        {
                            Store (BUT2, \_PR.CPU0._PPC)
                            PNOT ()
                        }
                    }

                    Method (_Q24, 0, NotSerialized)
                    {
                        Store (0x24, P80H)
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, PPCM)
                        If (LEqual (PPCM, 0x05))
                        {
                            Store (0x02, BUT2)
                        }
                        Else
                        {
                            Divide (PPCM, 0x02, BUT1, BUT2)
                        }

                        If (And (CFGD, One))
                        {
                            Store (BUT2, \_PR.CPU0._PPC)
                            PNOT ()
                        }
                    }

                    Method (_Q25, 0, NotSerialized)
                    {
                        Store (0x25, P80H)
                        Subtract (SizeOf (\_PR.CPU0._PSS), One, PPCM)
                        If (LEqual (PPCM, 0x05))
                        {
                            Store (One, BUT2)
                        }
                        Else
                        {
                            Divide (PPCM, 0x02, BUT1, BUT2)
                        }

                        If (And (CFGD, One))
                        {
                            Store (BUT2, \_PR.CPU0._PPC)
                            PNOT ()
                        }
                    }

                    Method (_Q26, 0, NotSerialized)
                    {
                        Store (OSHG, P80H)
                    }

                    Method (_Q27, 0, NotSerialized)
                    {
                        Store (0x27, P80H)
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q2D, 0, NotSerialized)
                    {
                        PHS1 (0x58)
                        Notify (\_TZ.TZ01, 0x80)
                    }

                    Method (_Q3E, 0, NotSerialized)
                    {
                        Store (0x3E, P80H)
                        Notify (ACCE, 0x82)
                    }

                    Method (_Q3F, 0, NotSerialized)
                    {
                        Store (0x3F, P80H)
                        Notify (ACCE, 0x81)
                    }

                    Method (_Q2A, 0, NotSerialized)
                    {
                        If (LEqual (LSEN, One))
                        {
                            If (LEqual (CLST, One))
                            {
                                Store (XBNS, Local0)
                                Sleep (0x0A)
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
                    }

                    Method (LANC, 1, NotSerialized)
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (0x86, P80H)
                            PHS1 (0x56)
                            Store (Zero, XLDO)
                            Sleep (0x01F4)
                        }

                        If (LEqual (Arg0, One))
                        {
                            Store (0x85, P80H)
                            PHS1 (0x55)
                            Store (One, XLDO)
                            Sleep (0x01F4)
                        }

                        If (LEqual (Arg0, 0x02)) {}
                        If (LEqual (Arg0, 0x03)) {}
                    }
                }

                Scope (^^PCI0)
                {
                    Device (AC0)
                    {
                        Name (_HID, "ACPI0003")
                        Name (_PCL, Package (0x01)
                        {
                            PCI0
                        })
                        Method (_PSR, 0, NotSerialized)
                        {
                            If (LEqual (FGEC, Zero))
                            {
                                Store (One, Local0)
                            }
                            Else
                            {
                                Store (^^LPCB.EC0.XCIN, Local0)
                            }

                            Return (Local0)
                        }
                    }
                }

                Scope (EC0)
                {
                    Method (_Q07, 0, NotSerialized)
                    {
                        If (LEqual (XCIN, One))
                        {
                            Store (One, ACST)
                        }
                        Else
                        {
                            Store (Zero, ACST)
                        }

                        Notify (\_PR.CPU0, 0x81)
                        Store (0x07, P80H)
                        P8XH (Zero, 0x07)
                        Notify (\_PR.CPU1, 0x81)
                        Notify (AC0, 0x80)
                        Notify (BAT1, 0x80)
                    }
                }

                Scope (^^PCI0)
                {
                    Name (\LIDF, One)
                    Device (LID)
                    {
                        Name (_HID, EisaId ("PNP0C0D"))
                        Method (_LID, 0, NotSerialized)
                        {
                            Return (LIDF)
                        }
                    }
                }

                Scope (EC0)
                {
                    Method (_Q16, 0, NotSerialized)
                    {
                        Store (0x16, P80H)
                        Store (One, LIDF)
                        Notify (LID, 0x80)
                    }

                    Method (_Q19, 0, NotSerialized)
                    {
                        Store (0x19, P80H)
                        Store (Zero, LIDF)
                        Notify (LID, 0x80)
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
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x0081,             // Range Minimum
                            0x0081,             // Range Maximum
                            0x01,               // Alignment
                            0x11,               // Length
                            )
                        IO (Decode16,
                            0x0093,             // Range Minimum
                            0x0093,             // Range Maximum
                            0x01,               // Alignment
                            0x0D,               // Length
                            )
                        IO (Decode16,
                            0x00C0,             // Range Minimum
                            0x00C0,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        DMA (Compatibility, NotBusMaster, Transfer8_16, )
                            {4}
                    })
                }

                Device (FWHD)
                {
                    Name (_HID, EisaId ("INT0800"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFF000000,         // Address Base
                            0x01000000,         // Address Length
                            )
                    })
                }

                Device (HPET)
                {
                    Name (_HID, EisaId ("PNP0103"))
                    Name (BUF0, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED00000,         // Address Base
                            0x00000400,         // Address Length
                            )
                    })
                    Method (_STA, 0, NotSerialized)
                    {
                        If (LGreaterEqual (OSYS, 0x07D1))
                        {
                            If (HPAE)
                            {
                                Return (0x0F)
                            }
                        }
                        Else
                        {
                            If (HPAE)
                            {
                                Return (0x0B)
                            }
                        }

                        Return (Zero)
                    }

                    Method (_CRS, 0, Serialized)
                    {
                        If (HPAE)
                        {
                            CreateDWordField (BUF0, 0x04, HPT0)
                            If (LEqual (HPAS, One))
                            {
                                Store (0xFED01000, HPT0)
                            }

                            If (LEqual (HPAS, 0x02))
                            {
                                Store (0xFED02000, HPT0)
                            }

                            If (LEqual (HPAS, 0x03))
                            {
                                Store (0xFED03000, HPT0)
                            }
                        }

                        Return (BUF0)
                    }
                }

                Device (IPIC)
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
                            0x00A0,             // Range Minimum
                            0x00A0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
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
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x00B4,             // Range Minimum
                            0x00B4,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
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
                            0x04D0,             // Range Minimum
                            0x04D0,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IRQNoFlags ()
                            {2}
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
                            0x01,               // Length
                            )
                        IRQNoFlags ()
                            {13}
                    })
                }

                Device (LDRC)
                {
                    Name (_HID, EisaId ("PNP0C02"))
                    Name (_UID, 0x02)
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x002E,             // Range Minimum
                            0x002E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x004E,             // Range Minimum
                            0x004E,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0061,             // Range Minimum
                            0x0061,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0063,             // Range Minimum
                            0x0063,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0065,             // Range Minimum
                            0x0065,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0067,             // Range Minimum
                            0x0067,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0080,             // Range Minimum
                            0x0080,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0092,             // Range Minimum
                            0x0092,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x00B2,             // Range Minimum
                            0x00B2,             // Range Maximum
                            0x01,               // Alignment
                            0x02,               // Length
                            )
                        IO (Decode16,
                            0x0680,             // Range Minimum
                            0x0680,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                        IO (Decode16,
                            0x1000,             // Range Minimum
                            0x1000,             // Range Maximum
                            0x01,               // Alignment
                            0x10,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0xFFFF,             // Range Minimum
                            0xFFFF,             // Range Maximum
                            0x01,               // Alignment
                            0x01,               // Length
                            )
                        IO (Decode16,
                            0x0400,             // Range Minimum
                            0x0400,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0500,             // Range Minimum
                            0x0500,             // Range Maximum
                            0x01,               // Alignment
                            0x80,               // Length
                            )
                        IO (Decode16,
                            0x0600,             // Range Minimum
                            0x0600,             // Range Maximum
                            0x01,               // Alignment
                            0x20,               // Length
                            )
                    })
                }

                Device (RTC)
                {
                    Name (_HID, EisaId ("PNP0B00"))
                    Name (_CRS, ResourceTemplate ()
                    {
                        IO (Decode16,
                            0x0070,             // Range Minimum
                            0x0070,             // Range Maximum
                            0x01,               // Alignment
                            0x08,               // Length
                            )
                        IRQNoFlags ()
                            {8}
                    })
                }

                Device (TIMR)
                {
                    Name (_HID, EisaId ("PNP0100"))
                    Name (_CRS, ResourceTemplate ()
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
                }

                OperationRegion (PKBS, SystemIO, 0x60, 0x05)
                Field (PKBS, ByteAcc, Lock, Preserve)
                {
                    PKBD,   8, 
                            Offset (0x02), 
                            Offset (0x03), 
                            Offset (0x04), 
                    PKBC,   8
                }

                Device (PS2K)
                {
                    Name (_HID, EisaId ("PNP0303"))
                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (LEqual (PKBD, 0xFF), LEqual (PKBC, 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

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
                    Name (_PRS, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            FixedIO (
                                0x0060,             // Address
                                0x01,               // Length
                                )
                            FixedIO (
                                0x0064,             // Address
                                0x01,               // Length
                                )
                            IRQNoFlags ()
                                {1}
                        }
                        EndDependentFn ()
                    })
                }

                Device (PS2M)
                {
                    Name (_HID, EisaId ("PNP0F13"))
                    Method (_STA, 0, NotSerialized)
                    {
                        If (And (LEqual (PKBD, 0xFF), LEqual (PKBC, 0xFF)))
                        {
                            Return (Zero)
                        }

                        Return (0x0F)
                    }

                    Name (_CRS, ResourceTemplate ()
                    {
                        IRQ (Edge, ActiveHigh, Exclusive, )
                            {12}
                    })
                    Name (_PRS, ResourceTemplate ()
                    {
                        StartDependentFn (0x00, 0x00)
                        {
                            IRQNoFlags ()
                                {12}
                        }
                        EndDependentFn ()
                    })
                }

                Device (TPM)
                {
                    Name (TMPV, Zero)
                    Method (_HID, 0, NotSerialized)
                    {
                        If (LEqual (TVID, 0x15D1))
                        {
                            Return (0x0201D824)
                        }

                        If (LOr (LEqual (TVID, 0x1050), LEqual (TVID, 0x100B)))
                        {
                            Return (0x0010A35C)
                        }

                        If (LEqual (TVID, 0x19FA))
                        {
                            Return (0x0435CF4D)
                        }

                        If (LEqual (TDID, 0x1002))
                        {
                            Return (0x02016D08)
                        }

                        If (LEqual (TDID, 0x1001))
                        {
                            Return (0x01016D08)
                        }

                        If (LEqual (TVID, 0x1114))
                        {
                            Return (0x00128D06)
                        }

                        Return (0x310CD041)
                    }

                    Name (_CID, EisaId ("PNP0C31"))
                    Name (_UID, One)
                    OperationRegion (TMMB, SystemMemory, 0xFED40000, 0x1000)
                    Field (TMMB, ByteAcc, Lock, Preserve)
                    {
                        ACCS,   8, 
                                Offset (0x18), 
                        TSTA,   8, 
                        TBCA,   8, 
                                Offset (0xF00), 
                        TVID,   16, 
                        TDID,   16
                    }

                    Method (_STA, 0, NotSerialized)
                    {
                        If (LEqual (ACCS, 0xFF))
                        {
                            Return (Zero)
                        }
                        Else
                        {
                            If (LEqual (TPMP, One))
                            {
                                Return (0x0F)
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Name (_CRS, ResourceTemplate ()
                    {
                        Memory32Fixed (ReadOnly,
                            0xFED40000,         // Address Base
                            0x00005000,         // Address Length
                            )
                    })
                    Method (UCMP, 2, NotSerialized)
                    {
                        If (LNotEqual (0x10, SizeOf (Arg0)))
                        {
                            Return (Zero)
                        }

                        If (LNotEqual (0x10, SizeOf (Arg1)))
                        {
                            Return (Zero)
                        }

                        Store (Zero, Local0)
                        While (LLess (Local0, 0x10))
                        {
                            If (LNotEqual (DerefOf (Index (Arg0, Local0)), DerefOf (Index (
                                Arg1, Local0))))
                            {
                                Return (Zero)
                            }

                            Increment (Local0)
                        }

                        Return (One)
                    }

                    Method (_DSM, 4, Serialized)
                    {
                        Name (TTMP, Buffer (One)
                        {
                            0x00
                        })
                        CreateByteField (TTMP, Zero, TMPV)
                        If (LEqual (UCMP (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0xA6, 0xFA, 0xDD, 0x3D, 0x1B, 0x36, 0xB4, 0x4E, 
                                        /* 0008 */    0xA4, 0x24, 0x8D, 0x10, 0x08, 0x9D, 0x16, 0x53
                                    }), One))
                        {
                            If (LEqual (Arg2, Zero))
                            {
                                Return (Buffer (One)
                                {
                                    0x7F
                                })
                            }

                            If (LEqual (Arg2, One))
                            {
                                Return (Buffer (0x04)
                                {
                                    "1.0"
                                })
                            }

                            If (LEqual (Arg2, 0x02))
                            {
                                Store (TPP3, TMPV)
                                If (And (TMPV, TPRS))
                                {
                                    If (LOr (LLessEqual (DerefOf (Index (Arg3, Zero)), 0x0B), 
                                        LEqual (DerefOf (Index (Arg3, Zero)), 0x0E)))
                                    {
                                        Store (DerefOf (Index (Arg3, Zero)), SMID)
                                        Store (0xC1, SMIT)
                                        Store (DerefOf (Index (Arg3, Zero)), TPP1)
                                        Return (Zero)
                                    }

                                    Return (One)
                                }

                                Return (One)
                            }

                            If (LEqual (Arg2, 0x03))
                            {
                                Name (TMP1, Package (0x02)
                                {
                                    Zero, 
                                    0xFFFFFFFF
                                })
                                Store (TPP1, TMPV)
                                Store (And (TMPV, PPRQ, TMPV), Index (TMP1, One))
                                Return (TMP1)
                            }

                            If (LEqual (Arg2, 0x04))
                            {
                                Return (One)
                            }

                            If (LEqual (Arg2, 0x05))
                            {
                                Name (TMP2, Package (0x03)
                                {
                                    Zero, 
                                    0xFFFFFFFF, 
                                    0xFFFFFFFF
                                })
                                Store (PPLO, Index (TMP2, One))
                                If (LOr (LOr (LGreater (PPLO, 0x0E), LEqual (PPLO, 0x0C)), LEqual (
                                    PPLO, 0x0D)))
                                {
                                    Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                Store (TPP1, TMPV)
                                And (TMPV, PPRP, TMPV)
                                If (LEqual (TMPV, PPRP))
                                {
                                    Store (0xFFFFFFF1, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                Store (TPP3, TMPV)
                                If (And (TMPV, PPOR))
                                {
                                    Store (0xFFFFFFF0, Index (TMP2, 0x02))
                                    Return (TMP2)
                                }

                                Store (PPRP, Index (TMP2, 0x02))
                                Return (TMP2)
                            }

                            If (LEqual (Arg2, 0x06))
                            {
                                CreateByteField (Arg3, 0x04, LAN0)
                                CreateByteField (Arg3, 0x05, LAN1)
                                If (LOr (LEqual (LAN0, 0x65), LEqual (LAN0, 0x45)))
                                {
                                    If (LOr (LEqual (LAN1, 0x6E), LEqual (LAN1, 0x4E)))
                                    {
                                        Return (Zero)
                                    }
                                }

                                Return (One)
                            }

                            Return (One)
                        }

                        If (LEqual (UCMP (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0xED, 0x54, 0x60, 0x37, 0x13, 0xCC, 0x75, 0x46, 
                                        /* 0008 */    0x90, 0x1C, 0x47, 0x56, 0xD7, 0xF2, 0xD4, 0x5D
                                    }), One))
                        {
                            If (LEqual (Arg2, Zero))
                            {
                                Return (Buffer (One)
                                {
                                    0x01
                                })
                            }

                            If (LEqual (Arg2, One))
                            {
                                If (LEqual (DerefOf (Index (Arg3, Zero)), Zero))
                                {
                                    Store (0x80, SMID)
                                    Store (0xC1, SMIT)
                                    Return (Zero)
                                }

                                If (LEqual (DerefOf (Index (Arg3, Zero)), One))
                                {
                                    Store (0x81, SMID)
                                    Store (0xC1, SMIT)
                                    Return (Zero)
                                }
                            }

                            Return (One)
                        }

                        Return (Buffer (One)
                        {
                            0x00
                        })
                    }
                }
            }

            Device (USB0)
            {
                Name (_ADR, 0x001D0000)
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Device (HUBN)
                {
                    Name (_ADR, Zero)
                    Device (PRT1)
                    {
                        Name (_ADR, One)
                        Method (_DSM, 4, NotSerialized)
                        {
                            Name (_T_1, Zero)
                            Name (_T_0, Zero)
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B, 
                                        /* 0008 */    0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                Store (ToInteger (Arg2), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x07
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x00
                                        })
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)
                        Method (_DSM, 4, NotSerialized)
                        {
                            Name (_T_1, Zero)
                            Name (_T_0, Zero)
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B, 
                                        /* 0008 */    0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                Store (ToInteger (Arg2), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x07
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x00
                                        })
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x03, 0x03))
                }

                Device (RHUB)
                {
                    Name (_ADR, Zero)
                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }
                }
            }

            Device (USB1)
            {
                Name (_ADR, 0x001D0001)
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Device (HUBN)
                {
                    Name (_ADR, Zero)
                    Device (PRT1)
                    {
                        Name (_ADR, One)
                        Method (_DSM, 4, NotSerialized)
                        {
                            Name (_T_1, Zero)
                            Name (_T_0, Zero)
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B, 
                                        /* 0008 */    0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                Store (ToInteger (Arg2), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x07
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x00
                                        })
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)
                        Method (_DSM, 4, NotSerialized)
                        {
                            Name (_T_1, Zero)
                            Name (_T_0, Zero)
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B, 
                                        /* 0008 */    0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                Store (ToInteger (Arg2), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x07
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x00
                                        })
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x04, 0x03))
                }

                Device (RHUB)
                {
                    Name (_ADR, Zero)
                    Device (PRT1)
                    {
                        Name (_ADR, One)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }
                }
            }

            Device (USB2)
            {
                Name (_ADR, 0x001D0002)
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Device (HUBN)
                {
                    Name (_ADR, Zero)
                    Device (PRT1)
                    {
                        Name (_ADR, One)
                        Method (_DSM, 4, NotSerialized)
                        {
                            Name (_T_1, Zero)
                            Name (_T_0, Zero)
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B, 
                                        /* 0008 */    0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                Store (ToInteger (Arg2), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x07
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x00
                                        })
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)
                        Method (_DSM, 4, NotSerialized)
                        {
                            Name (_T_1, Zero)
                            Name (_T_0, Zero)
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B, 
                                        /* 0008 */    0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                Store (ToInteger (Arg2), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x07
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x00
                                        })
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Device (RHUB)
                {
                    Name (_ADR, Zero)
                    Device (PRT1)
                    {
                        Name (_ADR, One)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }
                }
            }

            Device (USB3)
            {
                Name (_ADR, 0x001D0003)
                OperationRegion (U1CS, PCI_Config, 0xC4, 0x04)
                Field (U1CS, DWordAcc, NoLock, Preserve)
                {
                    U1EN,   2
                }

                Method (_PSW, 1, NotSerialized)
                {
                    If (Arg0)
                    {
                        Store (0x03, U1EN)
                    }
                    Else
                    {
                        Store (Zero, U1EN)
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

                Device (HUBN)
                {
                    Name (_ADR, Zero)
                    Device (PRT1)
                    {
                        Name (_ADR, One)
                        Method (_DSM, 4, NotSerialized)
                        {
                            Name (_T_1, Zero)
                            Name (_T_0, Zero)
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B, 
                                        /* 0008 */    0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                Store (ToInteger (Arg2), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x07
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x00
                                        })
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }

                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)
                        Method (_DSM, 4, NotSerialized)
                        {
                            Name (_T_1, Zero)
                            Name (_T_0, Zero)
                            If (LEqual (Arg0, Buffer (0x10)
                                    {
                                        /* 0000 */    0x8F, 0x70, 0xFC, 0xA5, 0x75, 0x87, 0xA6, 0x4B, 
                                        /* 0008 */    0xBD, 0x0C, 0xBA, 0x90, 0xA1, 0xEC, 0x72, 0xF8
                                    }))
                            {
                                Store (ToInteger (Arg2), _T_0)
                                If (LEqual (_T_0, Zero))
                                {
                                    Store (ToInteger (Arg1), _T_1)
                                    If (LEqual (_T_1, One))
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x07
                                        })
                                    }
                                    Else
                                    {
                                        Return (Buffer (One)
                                        {
                                            0x00
                                        })
                                    }
                                }
                                Else
                                {
                                    If (LEqual (_T_0, One))
                                    {
                                        Return (One)
                                    }
                                    Else
                                    {
                                        If (LEqual (_T_0, 0x02))
                                        {
                                            Return (SDGV)
                                        }
                                        Else
                                        {
                                            Return (Zero)
                                        }
                                    }
                                }
                            }
                            Else
                            {
                                Return (Zero)
                            }
                        }
                    }
                }

                Device (RHUB)
                {
                    Name (_ADR, Zero)
                    Device (PRT1)
                    {
                        Name (_ADR, One)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }
                }
            }

            Device (USB7)
            {
                Name (_ADR, 0x001D0007)
                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x0D, 0x03))
                }

                Device (RHUB)
                {
                    Name (_ADR, Zero)
                    Device (PRT2)
                    {
                        Name (_ADR, 0x02)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }

                    Device (PRT3)
                    {
                        Name (_ADR, 0x03)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }

                    Device (PRT5)
                    {
                        Name (_ADR, 0x05)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }

                    Device (PRT6)
                    {
                        Name (_ADR, 0x06)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }

                    Device (PRT7)
                    {
                        Name (_ADR, 0x07)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }

                    Device (PRT8)
                    {
                        Name (_ADR, 0x08)
                        Name (_UPC, Package (0x04)
                        {
                            0xFF, 
                            0xFF, 
                            Zero, 
                            Zero
                        })
                        Name (_PLD, Buffer (0x10)
                        {
                            /* 0000 */    0x81, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
                            /* 0008 */    0x30, 0x1C, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
                        })
                    }
                }
            }

            Device (HDEF)
            {
                Name (_ADR, 0x001B0000)
                OperationRegion (HDAR, PCI_Config, 0x4C, 0x10)
                Field (HDAR, WordAcc, NoLock, Preserve)
                {
                    DCKA,   1, 
                            Offset (0x01), 
                    DCKM,   1, 
                        ,   6, 
                    DCKS,   1, 
                            Offset (0x08), 
                        ,   15, 
                    PMES,   1
                }
            }

            Device (RP01)
            {
                Name (_ADR, 0x001C0000)
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                            Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                            Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                            Offset (0x1B), 
                    LSCX,   1, 
                            Offset (0x20), 
                            Offset (0x22), 
                    PSPX,   1, 
                            Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)
                    Name (_PRW, Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR04)
                    }

                    Return (PR04)
                }
            }

            Device (RP02)
            {
                Name (_ADR, 0x001C0001)
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                            Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                            Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                            Offset (0x1B), 
                    LSCX,   1, 
                            Offset (0x20), 
                            Offset (0x22), 
                    PSPX,   1, 
                            Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)
                    Name (_PRW, Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR05)
                    }

                    Return (PR05)
                }
            }

            Device (RP03)
            {
                Name (_ADR, 0x001C0002)
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                            Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                            Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                            Offset (0x1B), 
                    LSCX,   1, 
                            Offset (0x20), 
                            Offset (0x22), 
                    PSPX,   1, 
                            Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)
                    Name (_PRW, Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR06)
                    }

                    Return (PR06)
                }
            }

            Device (RP04)
            {
                Name (_ADR, 0x001C0003)
                OperationRegion (PXCS, PCI_Config, 0x40, 0xC0)
                Field (PXCS, AnyAcc, NoLock, WriteAsZeros)
                {
                            Offset (0x12), 
                        ,   13, 
                    LASX,   1, 
                            Offset (0x1A), 
                    ABPX,   1, 
                        ,   2, 
                    PDCX,   1, 
                        ,   2, 
                    PDSX,   1, 
                            Offset (0x1B), 
                    LSCX,   1, 
                            Offset (0x20), 
                            Offset (0x22), 
                    PSPX,   1, 
                            Offset (0x98), 
                        ,   30, 
                    HPEX,   1, 
                    PMEX,   1, 
                        ,   30, 
                    HPSX,   1, 
                    PMSX,   1
                }

                Device (PXSX)
                {
                    Name (_ADR, Zero)
                    Name (_PRW, Package (0x02)
                    {
                        0x09, 
                        0x04
                    })
                }

                Method (_PRW, 0, NotSerialized)
                {
                    Return (GPRW (0x09, 0x04))
                }

                Method (_PRT, 0, NotSerialized)
                {
                    If (PICM)
                    {
                        Return (AR07)
                    }

                    Return (PR07)
                }
            }
        }

        Scope (\_GPE)
        {
            Method (_L0B, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.P0P1.ELAN, 0x02)
            }

            Method (_L03, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.USB0, 0x02)
            }

            Method (_L04, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.USB1, 0x02)
            }

            Method (_L0C, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.USB2, 0x02)
            }

            Method (_L0E, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.USB3, 0x02)
            }

            Method (_L0D, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.USB7, 0x02)
            }

            Method (_L09, 0, NotSerialized)
            {
                Notify (\_SB.PCI0.RP01, 0x02)
                Notify (\_SB.PCI0.RP02, 0x02)
                Notify (\_SB.PCI0.RP03, 0x02)
                Notify (\_SB.PCI0.RP04, 0x02)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (GFX0)
        {
            Name (_ADR, 0x00020000)
            Method (_DOS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x07), DSEN)
            }

            Method (_DOD, 0, NotSerialized)
            {
                Store (Zero, NDID)
                If (LNotEqual (DIDL, Zero))
                {
                    Store (SDDL (DIDL), DID1)
                }

                If (LNotEqual (DDL2, Zero))
                {
                    Store (SDDL (DDL2), DID2)
                }

                If (LNotEqual (DDL3, Zero))
                {
                    Store (SDDL (DDL3), DID3)
                }

                If (LNotEqual (DDL4, Zero))
                {
                    Store (SDDL (DDL4), DID4)
                }

                If (LNotEqual (DDL5, Zero))
                {
                    Store (SDDL (DDL5), DID5)
                }

                If (LEqual (NDID, One))
                {
                    Name (TMP1, Package (0x01)
                    {
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP1, Zero))
                    Return (TMP1)
                }

                If (LEqual (NDID, 0x02))
                {
                    Name (TMP2, Package (0x02)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP2, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP2, One))
                    Return (TMP2)
                }

                If (LEqual (NDID, 0x03))
                {
                    Name (TMP3, Package (0x03)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP3, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP3, One))
                    Store (Or (0x00010000, DID3), Index (TMP3, 0x02))
                    Return (TMP3)
                }

                If (LEqual (NDID, 0x04))
                {
                    Name (TMP4, Package (0x04)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP4, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP4, One))
                    Store (Or (0x00010000, DID3), Index (TMP4, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP4, 0x03))
                    Return (TMP4)
                }

                If (LGreater (NDID, 0x04))
                {
                    Name (TMP5, Package (0x05)
                    {
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF, 
                        0xFFFFFFFF
                    })
                    Store (Or (0x00010000, DID1), Index (TMP5, Zero))
                    Store (Or (0x00010000, DID2), Index (TMP5, One))
                    Store (Or (0x00010000, DID3), Index (TMP5, 0x02))
                    Store (Or (0x00010000, DID4), Index (TMP5, 0x03))
                    Store (Or (0x00010000, DID5), Index (TMP5, 0x04))
                    Return (TMP5)
                }

                Return (Package (0x01)
                {
                    0x0400
                })
            }

            Device (DD01)
            {
                Method (_ADR, 0, Serialized)
                {
                    If (LEqual (DID1, Zero))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID1))
                    }
                }

                Method (_DCS, 0, NotSerialized)
                {
                    Return (CDDS (DID1))
                }

                Method (_DGS, 0, NotSerialized)
                {
                    Return (NDDS (DID1))
                }

                Method (_DSS, 1, NotSerialized)
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD02)
            {
                Method (_ADR, 0, Serialized)
                {
                    If (LEqual (DID2, Zero))
                    {
                        Return (0x02)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID2))
                    }
                }

                Method (_DCS, 0, NotSerialized)
                {
                    Return (CDDS (DID2))
                }

                Method (_DGS, 0, NotSerialized)
                {
                    Return (NDDS (DID2))
                }

                Method (_DSS, 1, NotSerialized)
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD03)
            {
                Method (_ADR, 0, Serialized)
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x03)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID3))
                    }
                }

                Method (_DCS, 0, NotSerialized)
                {
                    If (LEqual (DID3, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID3))
                    }
                }

                Method (_DGS, 0, NotSerialized)
                {
                    Return (NDDS (DID3))
                }

                Method (_DSS, 1, NotSerialized)
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD04)
            {
                Method (_ADR, 0, Serialized)
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x04)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID4))
                    }
                }

                Method (_DCS, 0, NotSerialized)
                {
                    If (LEqual (DID4, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID4))
                    }
                }

                Method (_DGS, 0, NotSerialized)
                {
                    Return (NDDS (DID4))
                }

                Method (_DSS, 1, NotSerialized)
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD05)
            {
                Method (_ADR, 0, Serialized)
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x05)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID5))
                    }
                }

                Method (_DCS, 0, NotSerialized)
                {
                    If (LEqual (DID5, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID5))
                    }
                }

                Method (_DGS, 0, NotSerialized)
                {
                    Return (NDDS (DID5))
                }

                Method (_DSS, 1, NotSerialized)
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD06)
            {
                Method (_ADR, 0, Serialized)
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x06)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID6))
                    }
                }

                Method (_DCS, 0, NotSerialized)
                {
                    If (LEqual (DID6, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID6))
                    }
                }

                Method (_DGS, 0, NotSerialized)
                {
                    Return (NDDS (DID6))
                }

                Method (_DSS, 1, NotSerialized)
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD07)
            {
                Method (_ADR, 0, Serialized)
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x07)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID7))
                    }
                }

                Method (_DCS, 0, NotSerialized)
                {
                    If (LEqual (DID7, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID7))
                    }
                }

                Method (_DGS, 0, NotSerialized)
                {
                    Return (NDDS (DID7))
                }

                Method (_DSS, 1, NotSerialized)
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Device (DD08)
            {
                Method (_ADR, 0, Serialized)
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x08)
                    }
                    Else
                    {
                        Return (And (0xFFFF, DID8))
                    }
                }

                Method (_DCS, 0, NotSerialized)
                {
                    If (LEqual (DID8, Zero))
                    {
                        Return (0x0B)
                    }
                    Else
                    {
                        Return (CDDS (DID8))
                    }
                }

                Method (_DGS, 0, NotSerialized)
                {
                    Return (NDDS (DID8))
                }

                Method (_DSS, 1, NotSerialized)
                {
                    If (LEqual (And (Arg0, 0xC0000000), 0xC0000000))
                    {
                        Store (NSTE, CSTE)
                    }
                }
            }

            Method (SDDL, 1, NotSerialized)
            {
                Increment (NDID)
                Store (And (Arg0, 0x0F0F), Local0)
                Or (0x80000000, Local0, Local1)
                If (LEqual (DIDL, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL2, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL3, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL4, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL5, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL6, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL7, Local0))
                {
                    Return (Local1)
                }

                If (LEqual (DDL8, Local0))
                {
                    Return (Local1)
                }

                Return (Zero)
            }

            Method (CDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (0x1D)
                }

                If (LEqual (CADL, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL2, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL3, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL4, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL5, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL6, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL7, Local0))
                {
                    Return (0x1F)
                }

                If (LEqual (CAL8, Local0))
                {
                    Return (0x1F)
                }

                Return (0x1D)
            }

            Method (NDDS, 1, NotSerialized)
            {
                Store (And (Arg0, 0x0F0F), Local0)
                If (LEqual (Zero, Local0))
                {
                    Return (Zero)
                }

                If (LEqual (NADL, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL2, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL3, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL4, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL5, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL6, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL7, Local0))
                {
                    Return (One)
                }

                If (LEqual (NDL8, Local0))
                {
                    Return (One)
                }

                Return (Zero)
            }

            Scope (^^PCI0)
            {
                OperationRegion (MCHP, PCI_Config, 0x40, 0xC0)
                Field (MCHP, AnyAcc, NoLock, Preserve)
                {
                            Offset (0x60), 
                    TASM,   10, 
                            Offset (0x62)
                }
            }

            OperationRegion (IGDP, PCI_Config, Zero, 0x0100)
            Field (IGDP, AnyAcc, NoLock, Preserve)
            {
                        Offset (0x10), 
                MADR,   32, 
                        Offset (0x52), 
                    ,   1, 
                GIVD,   1, 
                    ,   2, 
                GUMA,   3, 
                        Offset (0x54), 
                    ,   4, 
                GMFN,   1, 
                        Offset (0x58), 
                        Offset (0x5C), 
                GSTM,   32, 
                        Offset (0xE0), 
                GSSE,   1, 
                GSSB,   14, 
                GSES,   1, 
                        Offset (0xE4), 
                ASLE,   8, 
                        Offset (0xE8), 
                        Offset (0xFC), 
                ASLS,   32
            }

            OperationRegion (IGDM, SystemMemory, ASLB, 0x2000)
            Field (IGDM, AnyAcc, NoLock, Preserve)
            {
                SIGN,   128, 
                SIZE,   32, 
                OVER,   32, 
                SVER,   256, 
                VVER,   128, 
                GVER,   128, 
                MBOX,   32, 
                DMOD,   32, 
                        Offset (0x100), 
                DRDY,   32, 
                CSTS,   32, 
                CEVT,   32, 
                        Offset (0x120), 
                DIDL,   32, 
                DDL2,   32, 
                DDL3,   32, 
                DDL4,   32, 
                DDL5,   32, 
                DDL6,   32, 
                DDL7,   32, 
                DDL8,   32, 
                CPDL,   32, 
                CPL2,   32, 
                CPL3,   32, 
                CPL4,   32, 
                CPL5,   32, 
                CPL6,   32, 
                CPL7,   32, 
                CPL8,   32, 
                CAD1,   32, 
                CAL2,   32, 
                CAL3,   32, 
                CAL4,   32, 
                CAL5,   32, 
                CAL6,   32, 
                CAL7,   32, 
                CAL8,   32, 
                NADL,   32, 
                NDL2,   32, 
                NDL3,   32, 
                NDL4,   32, 
                NDL5,   32, 
                NDL6,   32, 
                NDL7,   32, 
                NDL8,   32, 
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
                CBLV,   32, 
                BCLM,   320, 
                CPFM,   32, 
                EPFM,   32, 
                PLUT,   592, 
                PFMB,   32, 
                CCDV,   32, 
                PCFT,   32, 
                        Offset (0x400), 
                GVD1,   49152, 
                PHED,   32, 
                BDDC,   2048
            }

            Name (DBTB, Package (0x15)
            {
                Zero, 
                0x07, 
                0x38, 
                0x01C0, 
                0x0E00, 
                0x3F, 
                0x01C7, 
                0x0E07, 
                0x01F8, 
                0x0E38, 
                0x0FC0, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                Zero, 
                0x7000, 
                0x7007, 
                0x7038, 
                0x71C0, 
                0x7E00
            })
            Name (CDCT, Package (0x06)
            {
                Package (0x01)
                {
                    0xA0
                }, 

                Package (0x01)
                {
                    0xC8
                }, 

                Package (0x01)
                {
                    0x010B
                }, 

                Package (0x01)
                {
                    0x0140
                }, 

                Package (0x01)
                {
                    0x0164
                }, 

                Package (0x01)
                {
                    0x0190
                }
            })
            Name (SUCC, One)
            Name (NVLD, 0x02)
            Name (CRIT, 0x04)
            Name (NCRT, 0x06)
            Method (GSCI, 0, Serialized)
            {
                Method (GBDA, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (0x0279, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (0x0240, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        And (PARM, 0xEFFF0000, PARM)
                        And (PARM, ShiftLeft (DerefOf (Index (DBTB, IBTT)), 0x10), 
                            PARM)
                        Or (IBTT, PARM, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (IPSC, PARM)
                        Or (PARM, ShiftLeft (IPAT, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Or (PARM, ShiftLeft (LIDS, 0x10), PARM)
                        Add (PARM, 0x00010000, PARM)
                        Or (PARM, ShiftLeft (IBLC, 0x12), PARM)
                        Or (PARM, ShiftLeft (IBIA, 0x14), PARM)
                        Store (Zero, GESF)
                        If (LEqual (ALSE, 0x02))
                        {
                            Or (PARM, 0x00020000, PARM)
                        }
                        Else
                        {
                            And (PARM, 0xFFFDFFFF, PARM)
                        }

                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (ITVF, PARM)
                        Or (PARM, ShiftLeft (ITVM, 0x04), PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        Store (GIVD, PARM)
                        XOr (PARM, One, PARM)
                        Or (PARM, ShiftLeft (GMFN, One), PARM)
                        Or (PARM, 0x1000, PARM)
                        Or (PARM, ShiftLeft (IDMS, 0x0D), PARM)
                        Store (One, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        Store (Zero, PARM)
                        If (ISSC)
                        {
                            Or (PARM, 0x03, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (CRIT)
                }

                Method (SBCB, 0, Serialized)
                {
                    If (LEqual (GESF, Zero))
                    {
                        Store (Zero, PARM)
                        If (LEqual (PFLV, FMBL))
                        {
                            Store (0x000F87FD, PARM)
                        }

                        If (LEqual (PFLV, FDTP))
                        {
                            Store (0x000F87BD, PARM)
                        }

                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, One))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x03))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x04))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x05))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x06))
                    {
                        Store (And (PARM, 0x0F), ITVF)
                        Store (ShiftRight (And (PARM, 0xF0), 0x04), ITVM)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x07))
                    {
                        If (LEqual (PARM, Zero))
                        {
                            Store (CLID, Local0)
                            If (And (0x80000000, Local0))
                            {
                                And (CLID, 0x0F, CLID)
                                GLID (CLID)
                            }
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x08))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x09))
                    {
                        And (PARM, 0xFF, IBTT)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0A))
                    {
                        And (PARM, 0xFF, IPSC)
                        If (And (ShiftRight (PARM, 0x08), 0xFF))
                        {
                            And (ShiftRight (PARM, 0x08), 0xFF, IPAT)
                            Decrement (IPAT)
                        }

                        And (ShiftRight (PARM, 0x12), 0x03, IBLC)
                        And (ShiftRight (PARM, 0x14), 0x07, IBIA)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x0B))
                    {
                        And (ShiftRight (PARM, One), One, IF1E)
                        And (ShiftRight (PARM, 0x0D), 0xFF, IDMS)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x10))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x11))
                    {
                        Store (ShiftLeft (LIDS, 0x08), PARM)
                        Add (PARM, 0x0100, PARM)
                        Store (Zero, GESF)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x12))
                    {
                        If (And (PARM, One))
                        {
                            If (LEqual (ShiftRight (PARM, One), One))
                            {
                                Store (One, ISSC)
                            }
                            Else
                            {
                                Store (Zero, GESF)
                                Return (CRIT)
                            }
                        }
                        Else
                        {
                            Store (Zero, ISSC)
                        }

                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x13))
                    {
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    If (LEqual (GESF, 0x14))
                    {
                        And (PARM, 0x0F, PAVP)
                        Store (Zero, GESF)
                        Store (Zero, PARM)
                        Return (SUCC)
                    }

                    Store (Zero, GESF)
                    Return (SUCC)
                }

                If (LEqual (GEFC, 0x04))
                {
                    Store (GBDA (), GXFC)
                }

                If (LEqual (GEFC, 0x06))
                {
                    Store (SBCB (), GXFC)
                }

                Store (Zero, GEFC)
                Store (One, SCIS)
                Store (Zero, GSSE)
                Store (Zero, SCIE)
                Return (Zero)
            }

            Method (PDRD, 0, NotSerialized)
            {
                If (LNot (DRDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (DRDY))
            }

            Method (PSTS, 0, NotSerialized)
            {
                If (LGreater (CSTS, 0x02))
                {
                    Sleep (ASLP)
                }

                Return (LEqual (CSTS, 0x03))
            }

            Method (GNOT, 2, NotSerialized)
            {
                If (PDRD ())
                {
                    Return (One)
                }

                Store (Arg0, CEVT)
                Store (0x03, CSTS)
                If (LAnd (LEqual (CHPD, Zero), LEqual (Arg1, Zero)))
                {
                    If (LOr (LGreater (OSYS, 0x07D0), LLess (OSYS, 0x07D6)))
                    {
                        Notify (PCI0, Arg1)
                    }
                    Else
                    {
                        Notify (GFX0, Arg1)
                    }
                }

                Notify (GFX0, 0x80)
                Return (Zero)
            }

            Method (GHDS, 1, NotSerialized)
            {
                Store (Arg0, TIDX)
                Return (GNOT (One, Zero))
            }

            Method (GLID, 1, NotSerialized)
            {
                Store (Arg0, CLID)
                Return (GNOT (0x02, Zero))
            }

            Method (GDCK, 1, NotSerialized)
            {
                Store (Arg0, CDCK)
                Return (GNOT (0x04, Zero))
            }

            Method (PARD, 0, NotSerialized)
            {
                If (LNot (ARDY))
                {
                    Sleep (ASLP)
                }

                Return (LNot (ARDY))
            }

            Method (AINT, 2, NotSerialized)
            {
                If (LNot (And (TCHE, ShiftLeft (One, Arg0))))
                {
                    Return (One)
                }

                If (PARD ())
                {
                    Return (One)
                }

                If (LEqual (Arg0, 0x02))
                {
                    If (CPFM)
                    {
                        And (CPFM, 0x0F, Local0)
                        And (EPFM, 0x0F, Local1)
                        If (LEqual (Local0, One))
                        {
                            If (And (Local1, 0x06))
                            {
                                Store (0x06, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x08))
                                {
                                    Store (0x08, PFIT)
                                }
                                Else
                                {
                                    Store (One, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x06))
                        {
                            If (And (Local1, 0x08))
                            {
                                Store (0x08, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, One))
                                {
                                    Store (One, PFIT)
                                }
                                Else
                                {
                                    Store (0x06, PFIT)
                                }
                            }
                        }

                        If (LEqual (Local0, 0x08))
                        {
                            If (And (Local1, One))
                            {
                                Store (One, PFIT)
                            }
                            Else
                            {
                                If (And (Local1, 0x06))
                                {
                                    Store (0x06, PFIT)
                                }
                                Else
                                {
                                    Store (0x08, PFIT)
                                }
                            }
                        }
                    }
                    Else
                    {
                        XOr (PFIT, 0x07, PFIT)
                    }

                    Or (PFIT, 0x80000000, PFIT)
                    Store (0x04, ASLC)
                }
                Else
                {
                    If (LEqual (Arg0, One))
                    {
                        Store (Divide (Multiply (Arg1, 0xFF), 0x64, ), BCLP)
                        Or (BCLP, 0x80000000, BCLP)
                        Store (0x02, ASLC)
                    }
                    Else
                    {
                        If (LEqual (Arg0, Zero))
                        {
                            Store (Arg1, ALSI)
                            Store (One, ASLC)
                        }
                        Else
                        {
                            Return (One)
                        }
                    }
                }

                Store (One, ASLE)
                Return (Zero)
            }

            Method (SCIP, 0, NotSerialized)
            {
                If (LNotEqual (OVER, Zero))
                {
                    Return (LNot (GSMI))
                }

                Return (Zero)
            }
        }

        Device (EXP2)
        {
            Name (_ADR, 0x03000000)
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
                Name (_ADR, Zero)
                OperationRegion (X2CS, PCI_Config, Zero, 0x0100)
                Field (X2CS, AnyAcc, NoLock, WriteAsZeros)
                {
                    X2DV,   32
                }

                Method (_RMV, 0, NotSerialized)
                {
                    Return (Zero)
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

        OperationRegion (MPCE, PCI_Config, 0x48, 0x04)
        Field (MPCE, DWordAcc, NoLock, Preserve)
        {
            PEXE,   1, 
            LENG,   2, 
                ,   25, 
            EXBA,   4
        }
    }

    Scope (_PR)
    {
        Processor (CPU0, 0x01, 0x00000410, 0x06) {}
        Processor (CPU1, 0x02, 0x00000410, 0x06) {}
        Processor (CPU2, 0x03, 0x00000410, 0x06) {}
        Processor (CPU3, 0x04, 0x00000410, 0x06) {}
    }

    Mutex (MUTX, 0x00)
    OperationRegion (PRT0, SystemIO, 0x80, 0x08)
    Field (PRT0, DWordAcc, Lock, Preserve)
    {
        P80H,   32, 
        GDEV,   8
    }

    Method (P8XH, 2, Serialized)
    {
        If (LEqual (Arg0, Zero))
        {
            Store (Or (And (P80D, 0xFFFFFF00), Arg1), P80D)
        }

        If (LEqual (Arg0, One))
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

    Method (_PIC, 1, NotSerialized)
    {
        Store (Arg0, GPIC)
        Store (Arg0, PICM)
    }

    OperationRegion (SWC0, SystemIO, 0x0610, 0x0F)
    Field (SWC0, ByteAcc, NoLock, Preserve)
    {
        G1S,    8, 
                Offset (0x04), 
        G1E,    8, 
                Offset (0x0A), 
        G1S2,   8, 
        G1S3,   8
    }

    OperationRegion (SWC1, SystemIO, PMBS, 0x30)
    Field (SWC1, DWordAcc, NoLock, Preserve)
    {
                Offset (0x28), 
        G0S,    32, 
        G0EN,   32
    }

    Method (_PTS, 1, NotSerialized)
    {
        Store (Arg0, P80H)
        Store (0x15, P80H)
        If (LEqual (Arg0, 0x03))
        {
            Store (0x16, P80H)
            Store (\_SB.PCI0.LPCB.EC0.EC3G, G3ST)
            Sleep (0x0A)
            Store (0x17, P80H)
            Store (One, \_SB.PCI0.LPCB.EC0.EC3G)
            Store (0x18, P80H)
        }

        Store (0x19, P80H)
        Store (\_SB.PCI0.LPCB.EC0.XBNS, S4BL)
        Store (0x1A, P80H)
        If (LEqual (Arg0, 0x04))
        {
            Store (0x1B, P80H)
            Store (One, S4EN)
            Store (One, \_SB.PCI0.LPCB.EC0.S4ST)
            Sleep (0x0A)
            Store (\_SB.PCI0.LPCB.EC0.TPON, TPSS)
            Store (\_SB.PCI0.LPCB.EC0.LSAP, APLS)
        }
        Else
        {
            Store (0x1C, P80H)
            Store (Zero, S4EN)
            Store (0x1D, P80H)
        }

        Store (0x77, P80H)
    }

    Method (_WAK, 1, Serialized)
    {
        ShiftLeft (Arg0, 0x04, P80H)
        Store (0x04, \_SB.PCI0.LPCB.EC0.XSEC)
        Notify (\_SB.PCI0.PWRB, 0x02)
        TRAP (TRTP, 0x50)
        If (LEqual (Arg0, 0x03))
        {
            Store (\_SB.PCI0.LPCB.EC0.GSTA, GDEV)
            Sleep (0x0A)
            Store (G3ST, \_SB.PCI0.LPCB.EC0.EC3G)
        }

        If (LEqual (Arg0, 0x04))
        {
            Store (G3ST, \_SB.PCI0.LPCB.EC0.EC3G)
            Sleep (0x0A)
            Store (WLST, \_SB.PCI0.LPCB.EC0.ECWL)
            Sleep (0x0A)
            Store (TPSS, \_SB.PCI0.LPCB.EC0.TPON)
            Sleep (0x0A)
            Store (APLS, \_SB.PCI0.LPCB.EC0.LSAP)
            Sleep (0x0A)
            Store (APLS, \_SB.PCI0.LPCB.EC0.LSAP)
        }

        If (LEqual (OSYS, 0x07CE))
        {
            Notify (\_SB.PCI0.PWRB, 0x02)
        }

        Store (0xFF, FNLK)
        Store (GSNX, \_SB.PCI0.LPCB.EC0.MXRG)
        Sleep (0x0A)
        Store (GSNY, \_SB.PCI0.LPCB.EC0.MYRG)
        Sleep (0x0A)
        Store (GSNZ, \_SB.PCI0.LPCB.EC0.MZRG)
        Sleep (0x0A)
        Store (One, \_SB.PCI0.LPCB.EC0.MREG)
        Sleep (0x0A)
        Store (\_SB.PCI0.LPCB.EC0.EC3G, G3ST)
        Sleep (0x0A)
        Store (\_SB.PCI0.LPCB.EC0.ECWL, WLST)
        Sleep (0x0A)
        Store (\_SB.PCI0.LPCB.EC0.TPON, TPSS)
        \_SB.PCI0.LPCB.EC0._Q1E ()
        If (LEqual (BBST, Zero))
        {
            If (LEqual (CMBT, Zero))
            {
                Store (One, GP22)
            }

            If (LEqual (DGBT, Zero))
            {
                Store (One, GP36)
            }
        }
        Else
        {
            If (LEqual (CMBT, Zero))
            {
                Store (Zero, GP22)
            }

            If (LEqual (DGBT, Zero))
            {
                Store (Zero, GP36)
            }
        }

        Store (0x35, P80H)
        Return (Package (0x02)
        {
            Zero, 
            Zero
        })
    }

    Method (PNOT, 0, Serialized)
    {
        If (MPEN)
        {
            If (And (PDC0, 0x08))
            {
                Notify (\_PR.CPU0, 0x80)
                If (And (PDC0, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU0, 0x81)
                }
            }

            If (And (PDC1, 0x08))
            {
                Notify (\_PR.CPU1, 0x80)
                If (And (PDC1, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU1, 0x81)
                }
            }

            If (And (PDC2, 0x08))
            {
                Notify (\_PR.CPU2, 0x80)
                If (And (PDC2, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU2, 0x81)
                }
            }

            If (And (PDC3, 0x08))
            {
                Notify (\_PR.CPU3, 0x80)
                If (And (PDC3, 0x10))
                {
                    Sleep (0x64)
                    Notify (\_PR.CPU3, 0x81)
                }
            }
        }
        Else
        {
            Notify (\_PR.CPU0, 0x80)
            Sleep (0x64)
            Notify (\_PR.CPU0, 0x81)
        }
    }

    Method (TRAP, 2, Serialized)
    {
        Store (Arg1, SMIF)
        If (LEqual (Arg0, TRTP))
        {
            Store (Zero, TRP0)
        }

        If (LEqual (Arg0, TRTD))
        {
            Store (Arg1, DTSF)
            Store (Zero, TRPD)
            Return (DTSF)
        }

        If (LEqual (Arg0, TRTI))
        {
            If (LEqual (PFLV, FMBL))
            {
                Store (Arg1, TRPH)
            }

            Store (Zero, SMIF)
        }

        Return (SMIF)
    }

    Scope (_SB)
    {
        Method (_INI, 0, NotSerialized)
        {
            Store (0x50, P80H)
            If (DTSE)
            {
                TRAP (TRTD, 0x0A)
            }
        }

        Device (PCI0.PWRB)
        {
            Name (_HID, EisaId ("PNP0C0C"))
            Name (_PRW, Package (0x02)
            {
                0x1D, 
                0x03
            })
        }

        Scope (PCI0)
        {
            Method (_INI, 0, NotSerialized)
            {
                Store (0x07D0, OSYS)
                If (CondRefOf (_OSI, Local0))
                {
                    If (_OSI ("Linux"))
                    {
                        Store (0x03E8, OSYS)
                    }

                    If (_OSI ("Windows 2001"))
                    {
                        Store (0x07D1, OSYS)
                    }

                    If (_OSI ("Windows 2001 SP1"))
                    {
                        Store (0x07D1, OSYS)
                    }

                    If (_OSI ("Windows 2001 SP2"))
                    {
                        Store (0x07D2, OSYS)
                    }

                    If (_OSI ("Windows 2006"))
                    {
                        Store (0x07D6, OSYS)
                    }

                    If (_OSI ("Windows 2009"))
                    {
                        Store (0x07D9, OSYS)
                    }

                    If (LAnd (MPEN, LEqual (OSYS, 0x07D1)))
                    {
                        TRAP (TRTP, ESCS)
                    }

                    TRAP (TRTI, SOOT)
                }
            }

            Method (NHPG, 0, Serialized)
            {
                Store (Zero, ^RP01.HPEX)
                Store (Zero, ^RP02.HPEX)
                Store (One, ^RP01.HPSX)
                Store (One, ^RP02.HPSX)
            }

            Method (NPME, 0, Serialized)
            {
                Store (Zero, ^RP01.PMEX)
                Store (Zero, ^RP02.PMEX)
                Store (One, ^RP01.PMSX)
                Store (One, ^RP02.PMSX)
            }
        }
    }

    Name (PICM, Zero)
    Name (PRWP, Package (0x02)
    {
        Zero, 
        Zero
    })
    Method (GPRW, 2, NotSerialized)
    {
        Store (Arg0, Index (PRWP, Zero))
        Store (ShiftLeft (SS1, One), Local0)
        Or (Local0, ShiftLeft (SS2, 0x02), Local0)
        Or (Local0, ShiftLeft (SS3, 0x03), Local0)
        Or (Local0, ShiftLeft (SS4, 0x04), Local0)
        If (And (ShiftLeft (One, Arg1), Local0))
        {
            Store (Arg1, Index (PRWP, One))
        }
        Else
        {
            ShiftRight (Local0, One, Local0)
            FindSetRightBit (Local0, Index (PRWP, One))
        }

        Return (PRWP)
    }

    Scope (_TZ)
    {
        PowerResource (FN00, 0x00, 0x0000)
        {
            Method (_STA, 0, Serialized)
            {
                Return (VFN0)
            }

            Method (_ON, 0, Serialized)
            {
                Store (One, VFN0)
                If (LEqual (PFLV, FMBL)) {}
            }

            Method (_OFF, 0, Serialized)
            {
                Store (Zero, VFN0)
                If (LEqual (PFLV, FMBL)) {}
            }
        }

        Device (FAN0)
        {
            Name (_HID, EisaId ("PNP0C0B"))
            Name (_UID, Zero)
            Name (_PR0, Package (0x01)
            {
                FN00
            })
        }

        ThermalZone (TZ01)
        {
            Method (_AC0, 0, Serialized)
            {
                Return (Add (0x0AAC, Multiply (ACTT, 0x0A)))
            }

            Name (_AL0, Package (0x01)
            {
                FAN0
            })
            Method (_CRT, 0, Serialized)
            {
                Return (Add (0x0AAC, Multiply (CRTT, 0x0A)))
            }

            Method (_SCP, 1, Serialized)
            {
                Store (Arg0, CTYP)
            }

            Method (_TMP, 0, Serialized)
            {
                If (DTSE)
                {
                    If (LGreaterEqual (DTS1, DTS2))
                    {
                        Return (Add (0x0AAC, Multiply (DTS1, 0x0A)))
                    }

                    Return (Add (0x0AAC, Multiply (DTS2, 0x0A)))
                }

                Store (\_SB.PCI0.LPCB.EC0.XHPP, Local0)
                Return (Add (0x0AAC, Multiply (Local0, 0x0A)))
                Return (0x0BB8)
            }

            Method (_PSL, 0, Serialized)
            {
                If (LEqual (MPEN, 0x04))
                {
                    Return (Package (0x04)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1, 
                        \_PR.CPU2, 
                        \_PR.CPU3
                    })
                }

                If (MPEN)
                {
                    Return (Package (0x02)
                    {
                        \_PR.CPU0, 
                        \_PR.CPU1
                    })
                }

                Return (Package (0x01)
                {
                    \_PR.CPU0
                })
            }

            Method (_PSV, 0, Serialized)
            {
                Return (Add (0x0AAC, Multiply (PSVT, 0x0A)))
            }

            Method (_TC1, 0, Serialized)
            {
                Return (TC1V)
            }

            Method (_TC2, 0, Serialized)
            {
                Return (TC2V)
            }

            Method (_TSP, 0, Serialized)
            {
                Return (TSPV)
            }
        }
    }

    Scope (_SB.PCI0)
    {
        Device (PDRC)
        {
            Name (_HID, EisaId ("PNP0C02"))
            Name (_UID, One)
            Name (BUF0, ResourceTemplate ()
            {
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00004000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00001000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0x00000000,         // Address Base
                    0x00000000,         // Address Length
                    )
                Memory32Fixed (ReadWrite,
                    0xFED45000,         // Address Base
                    0x0004B000,         // Address Length
                    )
            })
            Method (_CRS, 0, Serialized)
            {
                CreateDWordField (BUF0, 0x04, RBR0)
                ShiftLeft (^^LPCB.RCBA, 0x0E, RBR0)
                Return (BUF0)
            }
        }
    }

    Method (BRTN, 1, Serialized)
    {
        If (LEqual (And (DID1, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD01, Arg0)
        }

        If (LEqual (And (DID2, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD02, Arg0)
        }

        If (LEqual (And (DID3, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD03, Arg0)
        }

        If (LEqual (And (DID4, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD04, Arg0)
        }

        If (LEqual (And (DID5, 0x0F00), 0x0400))
        {
            Notify (\_SB.PCI0.GFX0.DD05, Arg0)
        }

        If (CondRefOf (NDN3))
        {
            NDN3 (Arg0)
        }
    }

    Scope (\)
    {
        OperationRegion (IO_T, SystemIO, 0x1000, 0x10)
        Field (IO_T, ByteAcc, NoLock, Preserve)
        {
            TRPI,   16, 
                    Offset (0x04), 
                    Offset (0x06), 
                    Offset (0x08), 
            TRP0,   8, 
                    Offset (0x0A), 
                    Offset (0x0B), 
                    Offset (0x0C), 
                    Offset (0x0D), 
                    Offset (0x0E), 
                    Offset (0x0F), 
                    Offset (0x10)
        }

        OperationRegion (IO_D, SystemIO, 0x0810, 0x04)
        Field (IO_D, ByteAcc, NoLock, Preserve)
        {
            TRPD,   8
        }

        OperationRegion (IO_H, SystemIO, 0x1000, 0x04)
        Field (IO_H, ByteAcc, NoLock, Preserve)
        {
            TRPH,   8
        }

        OperationRegion (PMIO, SystemIO, 0x0400, 0x80)
        Field (PMIO, ByteAcc, NoLock, Preserve)
        {
                    Offset (0x28), 
                ,   2, 
            SPST,   1, 
                ,   17, 
            GP4S,   1, 
                ,   1, 
            GP6S,   1, 
            GP7S,   1, 
                ,   4, 
            G12S,   1, 
                ,   1, 
            G14S,   1, 
                    Offset (0x2C), 
                ,   20, 
            GP4E,   1, 
                ,   1, 
            GP6E,   1, 
            GP7E,   1, 
                ,   4, 
            G12E,   1, 
                ,   1, 
            G14E,   1, 
                    Offset (0x30), 
                    Offset (0x42), 
                ,   1, 
            GPEC,   1, 
                    Offset (0x64), 
                ,   9, 
            SCIS,   1, 
                    Offset (0x66)
        }

        OperationRegion (GBAS, SystemIO, 0x0500, 0x40)
        Field (GBAS, ByteAcc, NoLock, Preserve)
        {
            GU00,   8, 
            GU01,   8, 
            GU02,   8, 
            GU03,   8, 
            GIO0,   8, 
            GIO1,   8, 
            GIO2,   8, 
            GIO3,   8, 
                    Offset (0x0C), 
            GL00,   4, 
            GP04,   1, 
                ,   1, 
            GP06,   1, 
            GP07,   1, 
            GL01,   4, 
            GP12,   1, 
                ,   1, 
            GP14,   1, 
                    Offset (0x0E), 
            GL02,   6, 
            GP22,   1, 
                    Offset (0x0F), 
            GL03,   3, 
            GP27,   1, 
            GP28,   1, 
                    Offset (0x10), 
                    Offset (0x18), 
            GB00,   8, 
            GB01,   8, 
            GB02,   8, 
            GB03,   8, 
                    Offset (0x2C), 
            GIV0,   4, 
            GI04,   1, 
                ,   1, 
            GI06,   1, 
            GI07,   1, 
            GIV1,   4, 
            GI12,   1, 
                ,   1, 
            GI14,   1, 
                    Offset (0x2E), 
            GIV2,   8, 
            GIV3,   8, 
            GU04,   8, 
            GU05,   8, 
            GU06,   8, 
            GU07,   8, 
            GIO4,   8, 
            GIO5,   8, 
            GIO6,   8, 
            GIO7,   8, 
            GL04,   4, 
            GP36,   1, 
                ,   1, 
            GP38,   1, 
            GP39,   1, 
            GL05,   8, 
            GL06,   8, 
            GL07,   8
        }

        OperationRegion (RCRB, SystemMemory, 0xFED1C000, 0x4000)
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
                ,   1, 
            SATD,   1, 
            SMBD,   1, 
            HDAD,   1, 
                    Offset (0x341A), 
            RP1D,   1, 
            RP2D,   1, 
            RP3D,   1, 
            RP4D,   1, 
            RP5D,   1, 
            RP6D,   1
        }
    }

    Scope (_SB.PCI0)
    {
        Device (SATA)
        {
            Name (_ADR, 0x001F0002)
        }

        Device (SBUS)
        {
            Name (_ADR, 0x001F0003)
            OperationRegion (SMBP, PCI_Config, 0x40, 0xC0)
            Field (SMBP, DWordAcc, NoLock, Preserve)
            {
                    ,   2, 
                I2CE,   1
            }

            OperationRegion (SMPB, PCI_Config, 0x20, 0x04)
            Field (SMPB, DWordAcc, NoLock, Preserve)
            {
                    ,   5, 
                SBAR,   11
            }

            OperationRegion (SMBI, SystemIO, 0xEFA0, 0x10)
            Field (SMBI, ByteAcc, NoLock, Preserve)
            {
                HSTS,   8, 
                        Offset (0x02), 
                HCON,   8, 
                HCOM,   8, 
                TXSA,   8, 
                DAT0,   8, 
                DAT1,   8, 
                HBDR,   8, 
                PECR,   8, 
                RXSA,   8, 
                SDAT,   16
            }

            Method (SSXB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRXB, 1, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (0x44, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRB, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (Arg2, DAT0)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDB, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x48, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (DAT0)
                }

                Return (0xFFFF)
            }

            Method (SWRW, 3, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                And (Arg2, 0xFF, DAT1)
                And (ShiftRight (Arg2, 0x08), 0xFF, DAT0)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SRDW, 2, Serialized)
            {
                If (STRT ())
                {
                    Return (0xFFFF)
                }

                Store (Zero, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x4C, HCON)
                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (Or (ShiftLeft (DAT0, 0x08), DAT1))
                }

                Return (0xFFFFFFFF)
            }

            Method (SBLW, 4, Serialized)
            {
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg3, I2CE)
                Store (0xBF, HSTS)
                Store (Arg0, TXSA)
                Store (Arg1, HCOM)
                Store (SizeOf (Arg2), DAT0)
                Store (Zero, Local1)
                Store (DerefOf (Index (Arg2, Zero)), HBDR)
                Store (0x54, HCON)
                While (LGreater (SizeOf (Arg2), Local1))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (0x80, HSTS)
                    Increment (Local1)
                    If (LGreater (SizeOf (Arg2), Local1))
                    {
                        Store (DerefOf (Index (Arg2, Local1)), HBDR)
                    }
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (One)
                }

                Return (Zero)
            }

            Method (SBLR, 3, Serialized)
            {
                Name (TBUF, Buffer (0x0100) {})
                If (STRT ())
                {
                    Return (Zero)
                }

                Store (Arg2, I2CE)
                Store (0xBF, HSTS)
                Store (Or (Arg0, One), TXSA)
                Store (Arg1, HCOM)
                Store (0x54, HCON)
                Store (0x0FA0, Local0)
                While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                {
                    Decrement (Local0)
                    Stall (0x32)
                }

                If (LNot (Local0))
                {
                    KILL ()
                    Return (Zero)
                }

                Store (DAT0, Index (TBUF, Zero))
                Store (0x80, HSTS)
                Store (One, Local1)
                While (LLess (Local1, DerefOf (Index (TBUF, Zero))))
                {
                    Store (0x0FA0, Local0)
                    While (LAnd (LNot (And (HSTS, 0x80)), Local0))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                    }

                    If (LNot (Local0))
                    {
                        KILL ()
                        Return (Zero)
                    }

                    Store (HBDR, Index (TBUF, Local1))
                    Store (0x80, HSTS)
                    Increment (Local1)
                }

                If (COMP ())
                {
                    Or (HSTS, 0xFF, HSTS)
                    Return (TBUF)
                }

                Return (Zero)
            }

            Method (STRT, 0, Serialized)
            {
                Store (0xC8, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x40))
                    {
                        Decrement (Local0)
                        Sleep (One)
                        If (LEqual (Local0, Zero))
                        {
                            Return (One)
                        }
                    }
                    Else
                    {
                        Store (Zero, Local0)
                    }
                }

                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, One))
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                    Else
                    {
                        Return (Zero)
                    }
                }

                Return (One)
            }

            Method (COMP, 0, Serialized)
            {
                Store (0x0FA0, Local0)
                While (Local0)
                {
                    If (And (HSTS, 0x02))
                    {
                        Return (One)
                    }
                    Else
                    {
                        Decrement (Local0)
                        Stall (0x32)
                        If (LEqual (Local0, Zero))
                        {
                            KILL ()
                        }
                    }
                }

                Return (Zero)
            }

            Method (KILL, 0, Serialized)
            {
                Or (HCON, 0x02, HCON)
                Or (HSTS, 0xFF, HSTS)
            }
        }
    }

    Scope (_GPE)
    {
        Method (_L01, 0, NotSerialized)
        {
            Add (L01C, One, L01C)
            If (LAnd (LEqual (RP1D, Zero), \_SB.PCI0.RP01.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP01.PDCX)
                {
                    Store (One, \_SB.PCI0.RP01.PDCX)
                    Store (One, \_SB.PCI0.RP01.HPSX)
                    Notify (\_SB.PCI0.RP01, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP01.HPSX)
                }
            }

            If (LAnd (LEqual (RP2D, Zero), \_SB.PCI0.RP02.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP02.PDCX)
                {
                    Store (One, \_SB.PCI0.RP02.PDCX)
                    Store (One, \_SB.PCI0.RP02.HPSX)
                    Notify (\_SB.PCI0.RP02, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP02.HPSX)
                }
            }

            If (LAnd (LEqual (RP3D, Zero), \_SB.PCI0.RP03.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP03.PDCX)
                {
                    Store (One, \_SB.PCI0.RP03.PDCX)
                    Store (One, \_SB.PCI0.RP03.HPSX)
                    Notify (\_SB.PCI0.RP03, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP03.HPSX)
                }
            }

            If (LAnd (LEqual (RP4D, Zero), \_SB.PCI0.RP04.HPSX))
            {
                Sleep (0x64)
                If (\_SB.PCI0.RP04.PDCX)
                {
                    Store (One, \_SB.PCI0.RP04.PDCX)
                    Store (One, \_SB.PCI0.RP04.HPSX)
                    Notify (\_SB.PCI0.RP04, Zero)
                }
                Else
                {
                    Store (One, \_SB.PCI0.RP04.HPSX)
                }
            }
        }

        Method (_L02, 0, NotSerialized)
        {
            Store (Zero, GPEC)
            Store (One, L02S)
            Notify (\_TZ.TZ01, 0x80)
        }

        Method (_L06, 0, NotSerialized)
        {
            If (LAnd (\_SB.PCI0.GFX0.GSSE, LNot (GSMI)))
            {
                \_SB.PCI0.GFX0.GSCI ()
            }
        }

        Method (_L14, 0, NotSerialized)
        {
            Store (0x14, P80H)
            Store (Zero, GP4E)
            Not (GI04, GI04)
            Store (One, GP4S)
            Sleep (0x0A)
            If (LEqual (GP04, One))
            {
                Notify (\_SB.PCI0.LPCB.FNBT, 0x8D)
                Store (0x8D, P80H)
            }
            Else
            {
                Notify (\_SB.PCI0.LPCB.FNBT, 0x9D)
                Store (0x9D, P80H)
            }

            Store (One, GP4E)
        }
    }

    Name (_S0, Package (0x04)
    {
        Zero, 
        Zero, 
        Zero, 
        Zero
    })
    If (SS1)
    {
        Name (_S1, Package (0x04)
        {
            One, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS3)
    {
        Name (_S3, Package (0x04)
        {
            0x05, 
            Zero, 
            Zero, 
            Zero
        })
    }

    If (SS4)
    {
        Name (_S4, Package (0x04)
        {
            0x06, 
            Zero, 
            Zero, 
            Zero
        })
    }

    Name (_S5, Package (0x04)
    {
        0x07, 
        Zero, 
        Zero, 
        Zero
    })
    Name (PICF, Zero)
}

