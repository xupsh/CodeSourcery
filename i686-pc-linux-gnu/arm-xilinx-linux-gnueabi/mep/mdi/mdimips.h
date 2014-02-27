/* Start of header file for MIPS Specific MDI (MDImips.h) */

#ifndef MDI_MIPS_Specification_Definitions
#define MDI_MIPS_Specification_Definitions

/* Valid values for MDIDDataT.FClass: */
#define MDIMIP_FClass "MIPS"
/* Valid values for MDIDDataT.FISA: */
#define MDIMIP_FISA_M1 "MIPSI"
#define MDIMIP_FISA_M2 "MIPSII"
#define MDIMIP_FISA_M3 "MIPSIII"
#define MDIMIP_FISA_M4 "MIPSIV"
#define MDIMIP_FISA_M5 "MIPSV"
#define MDIMIP_FISA_M32 "MIPS32"
#define MDIMIP_FISA_M64 "MIPS64"

/* Valid values for Resource */
#define MDIMIPCPU           1
#define MDIMIPPC            2
#define MDIMIPHILO          3
#define MDIMIPTLB           4
#define MDIMIPPICACHET      5
#define MDIMIPPUCACHET      5
#define MDIMIPPDCACHET      6
#define MDIMIPSICACHET      7
#define MDIMIPSUCACHET      7
#define MDIMIPSDCACHET      8
#define MDIMIP192ACC        9
#define MDIMIPCP0           10
#define MDIMIPCP0C          11
#define MDIMIPCP1           12
#define MDIMIPCP1C          13
#define MDIMIPCP2           14
#define MDIMIPCP2C          15
#define MDIMIPCP3           16
#define MDIMIPCP3C          17
#define MDIMIPFP            18
#define MDIMIPDFP           19
#define MDIMIPPICACHE       20
#define MDIMIPPUCACHE       20
#define MDIMIPPDCACHE       21
#define MDIMIPSICACHE       22
#define MDIMIPSUCACHE       22
#define MDIMIPSDCACHE       23
#define MDIMIPPHYSICAL      24
#define MDIMIPGVIRTUAL      25
#define MDIMIPEJTAG         26
// These resource definitions came match the MTI specficiation
#define MDIMIPSRS           27		
#define MDIMIPFPR           28		
#define MDIMIPDSP			29
#define MDIMIPTICACHET		30
#define MDIMIPTUCACHET		MDIMIPTICACHET
// 31 was used in MTI Spec rev 2.11
#define MDIMIPTDCACHET		32
#define MDIMIPTICACHE		33
#define MDIMIPTUCACHE		MDIMIPTICACHE
// 34 was used in MTI Spec rev 2.11
#define MDIMIPTDCACHE		35
#define MDIMIPITCVIRTUAL	36
#define MDIMIPITC			MDIMIPITCVIRTUAL // for backwards compatibility

#define MDIMIPVIRTUAL 0x00001000 /* 0x10xx: 0x1000+ASID value */

/*
 ** For MDISetBp(), MDISetSWBp(), and MDITraceRead(), setting the low
 ** order address bit to 1 means that the addressed instruction is a
 ** MIPS16 instruction.
 */
#define MDIMIP_Flg_MIPS16   1

#endif

/* End of header file for MIPS Specific MDI (MDImips.h) */
