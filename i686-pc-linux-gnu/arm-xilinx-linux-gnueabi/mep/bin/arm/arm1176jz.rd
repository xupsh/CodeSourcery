// ARM1176JZF-S  Register Definition File
//

INCLUDE "arm11.rd"
INCLUDE "arm11x6.rd"

// cp15_* registers "banked" in secure and non-secure "worlds":
// cntrl, sc, sde, nsac, dac, dfs, ifs, fa, ifa, pa, cds, iit, iite, iita,
// idt, idte, idta, iut, iute, iuta, tsel, pmrr, nmrr, snvba,
// fpid, cid, urwpid, uropid, popid

REG=cp15_tcmst   0x00000080 COPROC15 4  // c15_0_o2_0  : TCM Status

REG=cp15_sc      0x00000204 COPROC15 4  // c15_1_o0_1   : Secure Configuration
REG=cp15_sde     0x00000244 COPROC15 4  // c15_1_o1_1   : Secure Debug Enable
REG=cp15_nsac    0x00000284 COPROC15 4  // c15_1_o2_1   : Non-Secure Access Control

REG=cp15_ifa     0x00000098 COPROC15 4  // c15_6_o2_0   : Instruction Fault Address
REG=cp15_pa      0x0000081c COPROC15 4  // c15_7_o0_4   : PA

// Write-only operation registers
REG=cp15_v2pcwpr 0x0000101c COPROC15 4  // c15_7_o0_8   : VA to PA in Current World with Privileged Read
REG=cp15_v2pcwpw 0x0000105c COPROC15 4  // c15_7_o1_8   : VA to PA in Current World with Privileged Write
REG=cp15_v2pcwur 0x0000109c COPROC15 4  // c15_7_o2_8   : VA to PA in Current World with User Read
REG=cp15_v2pcwuw 0x000010dc COPROC15 4  // c15_7_o3_8   : VA to PA in Current World with User Write
REG=cp15_v2powpr 0x0000111c COPROC15 4  // c15_7_o4_8   : VA to PA in Other World with Privileged Read
REG=cp15_v2powpw 0x0000115c COPROC15 4  // c15_7_o5_8   : VA to PA in Other World with Privileged Write
REG=cp15_v2powur 0x0000119c COPROC15 4  // c15_7_o6_8   : VA to PA in Other World with User Read
REG=cp15_v2powuw 0x000011dc COPROC15 4  // c15_7_o7_8   : VA to PA in Other World with User Write

REG=cp15_dtnca   0x000002a4 COPROC15 4  // c15_9_o2_1   : Data TCM Nonsecure Control Access
REG=cp15_itnca   0x000002e4 COPROC15 4  // c15_9_o3_1   : Instruction TCM Nonsecure Control Access
REG=cp15_tsel    0x00000424 COPROC15 4  // c15_9_o0_2   : TCM Selection
REG=cp15_cbo     0x00001024 COPROC15 4  // c15_9_o0_8   : Cache Behavior Override

REG=cp15_disp    0x0000002c COPROC15 4  // c15_11      : DMA ID and Status, Present
REG=cp15_disq    0x0000006c COPROC15 4  // c15_11_o1_0 : DMA ID and Status, Queued 
REG=cp15_disr    0x000000ac COPROC15 4  // c15_11_o2_0 : DMA ID and Status, Running
REG=cp15_disi    0x000000ec COPROC15 4  // c15_11_o3_0 : DMA ID and Status, Interrupting
REG=cp15_dua     0x0000022c COPROC15 4  // c15_11_o0_1 : DMA User Accessibiity
REG=cp15_dcn     0x0000042c COPROC15 4  // c15_11_o0_2 : DMA Channel Number
// The three DMA Enable registers are write-only, don't put them in a window!
REG=cp15_dstop   0x0000062c COPROC15 4  // c15_11_o0_3 : DMA enable (Stop)
REG=cp15_dstart  0x0000066c COPROC15 4  // c15_11_o1_3 : DMA enable (Start)
REG=cp15_dclear  0x000006ac COPROC15 4  // c15_11_o2_3 : DMA enable (Clear)
REG=cp15_dctrl   0x0000082c COPROC15 4  // c15_11_o0_4 : DMA Control
REG=cp15_disa    0x00000a2c COPROC15 4  // c15_11_o0_5 : DMA Internal Start Address
REG=cp15_desa    0x00000c2c COPROC15 4  // c15_11_o0_6 : DMA External Start Address
REG=cp15_diea    0x00000e2c COPROC15 4  // c15_11_o0_7 : DMA Internal End Address
REG=cp15_dcs     0x0000102c COPROC15 4  // c15_11_o0_8 : DMA Channel Status
REG=cp15_dcid    0x00001e2c COPROC15 4  // c15_11_o0_15 : DMA Context ID

REG=cp15_snvba   0x00000030 COPROC15 4  // c15_12       : Secure/Nonsecure Vector Base Address
REG=cp15_mvba    0x00000070 COPROC15 4  // c15_12_o1_0  : Monitor Vector Base Address
REG=cp15_is      0x00000230 COPROC15 4  // c15_12_o0_1  : Interrupt Status

REG=cp15_snavc   0x0000123c COPROC15 4  // c15_15_o0_9   : Secure/Nonsecure Access Validation Control

REG=cp15_svcr    0x0000193c COPROC15 4  // c15_15_o4_12  : System Validation Counter, Reset count
REG=cp15_svci    0x0000197c COPROC15 4  // c15_15_o5_12  : System Validation Counter, Interrupt count
REG=cp15_svcfi   0x000019bc COPROC15 4  // c15_15_o6_12  : System Validation Counter, Fast Interrupt count
REG=cp15_svcd    0x000019fc COPROC15 4  // c15_15_o7_12  : System Validation Counter, Debug request count

REG=cp15_svcon   0x00001a7c COPROC15 4 SEQ 1 7 16  //    : Start SVC Counters (1-7)
// Op2 are actually don't-care bits for this register:
REG=cp15_svcdon  0x00003a3c COPROC15 4  //               : Start Debug Request Counter
REG=cp15_svcoff  0x00005a7c COPROC15 4 SEQ 1 7 16  //    : Stop SVC Counters (1-7)
// Op2 are actually don't-care bits for this register:
REG=cp15_svcdoff 0x00007a3c COPROC15 4  //               : Stop Debug Request Counter

REG=cp15_svcsm   0x00001c3c COPROC15 4  // c15_15_o0_14  : System Validation Cache Size Mask

REG=cp15_tlbi    0x0000a8bc COPROC15 4  //               : TLB lockdown Index
REG=cp15_tlbva   0x0000aabc COPROC15 4  //               : TLB lockdown VA
REG=cp15_tlbpa   0x0000acbc COPROC15 4  //               : TLB lockdown PA
REG=cp15_tlba    0x0000aebc COPROC15 4  //               : TLB lockdown Attribute

//
REG_FIELD=cp15_tcmst   dtcm 18 16, itcm 2 0

REG_FIELD=cp15_sc    net 6 6, aw 5 5, fw 4 4, ea 3 3, fiq 2 2, irq 1 1, ns 0 0
REG_FIELD=cp15_sde   suniden 1 1, suiden 0 0
REG_FIELD=cp15_nsac  dma 18 18, tl 17 17, cl 16 16, cp13 13 13, cp12 12 12,
                     cp11 11 11, cp10 10 10, cp9 9 9, cp8 8 8, cp7 7 7, cp6 6 6,
                     cp5 5 5, cp4 4 4, cp3 3 3, cp2 2 2, cp1 1 1, cp0 0 0

REG_FIELD=cp15_dtnca ns 0 0
REG_FIELD=cp15_itnca ns 0 0
REG_FIELD=cp15_tsel  tcmnum 1 0
REG_FIELD=cp15_cbo   s_wt 5 5, s_il 4 4, s_dl 3 3, ns_wt 2 2, ns_il 1 1, ns_dl 0 0

REG_FIELD=cp15_disp  ch1 1 1, ch0 0 0
REG_FIELD=cp15_disq  ch1 1 1, ch0 0 0
REG_FIELD=cp15_disr  ch1 1 1, ch0 0 0
REG_FIELD=cp15_disi  ch1 1 1, ch0 0 0
REG_FIELD=cp15_dua   u1 1 1, u0 0 0
REG_FIELD=cp15_dctrl tr 31 31, dt 30 30, ic 29 29, ie 28 28, ft 27 27,
                     um 26 26, st 19 8, ts 1 0
REG_FIELD=cp15_dcs   ecx0 16 16, isx0 13 13, bp 12 12, es 11 7, is 6 2, status 1 0
REG_FIELD=cp15_dcid  procid 31 8, asid 7 0

REG_FIELD=cp15_is    a 8 8, i 7 7, f 6 6

REG_FIELD=cp15_svcsm we 31 31, dtcm 14 12, itcm 10 8, dc 6 4, ic 2 0

REG_FIELD=cp15_tlbi  index 2 0
REG_FIELD=cp15_tlbva va 31 12, g 9 9, asid 7 0
REG_FIELD=cp15_tlbpa pa 31 12, nsa 9 9, nstid 8 8, size 5 4, apx 3 3, ap 2 1, v 0 0
REG_FIELD=cp15_tlba  ap3 31 30, ap2 29 28, ap1 27 26, spv 25 25,
                     domain 10 7, xn 6 6, tex 5 3, c 2 2, b 1 1, s 0 0

// Override generic field breakdowns from arm11.rd:
REG_FIELD=cp15_cache ctype 28 25, s 24 24, dp 23 23, dsize 21 18, dass 17 15, dm 14 14, dlen 13 12, ip 11 11, isize 9 6, iass 5 3, im 2 2, ilen 1 0


//
// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_cntrl
//
// <eof>
