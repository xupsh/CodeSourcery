// ARM11 MPCore (MP11)  Register Definition File
//

INCLUDE "arm11.rd"
INCLUDE "vfp-data.rd"
INCLUDE "vfp-system-arm11.rd"

// Additional CP15 registers

REG=cp15_coreid   0x00000140 COPROC15 4  // c15_0_o5_0  : CPU ID

REG=cp15_vptvapr 0x0000101c COPROC15 4  // c15_7_o0_8  : xlate VA, priv read
REG=cp15_vptvapw 0x0000105c COPROC15 4  // c15_7_o1_8  : xlate VA, priv write
REG=cp15_vptvaur 0x0000109c COPROC15 4  // c15_7_o2_8  : xlate VA, user read
REG=cp15_vptvawu 0x000010dc COPROC15 4  // c15_7_o3_8  : xlate VA, user write
REG=cp15_vptpa   0x0000081c COPROC15 4  // c15_7_o0_4  : xlate PA (or fault)

// CP15 R8 registers are Write-only, don't put them in a window!
REG=cp15_iitm    0x00000ae0 COPROC15 4  // c15_8_o3_5  : Invalidate Instruction TLB on MVA only
REG=cp15_idtm    0x00000ce0 COPROC15 4  // c15_8_o3_6  : Invalidate Data TLB on MVA only
REG=cp15_iutm    0x00000ee0 COPROC15 4  // c15_8_o3_7  : Invalidate Unified TLB on MVA only

REG=cp15_tlbdc   0x0000e23c COPROC15 4  //             : TLB Debug Control

REG=cp15_tlbi    0x0000a8bc COPROC15 4  //               : TLB lockdown Index
REG=cp15_tlbva   0x0000aabc COPROC15 4  //               : TLB lockdown VA
REG=cp15_tlbpa   0x0000acbc COPROC15 4  //               : TLB lockdown PA
REG=cp15_tlba    0x0000aebc COPROC15 4  //               : TLB lockdown Attribute

//
REG_FIELD=cp15_coreid	cluster 11 8, cpu 3 0
// cp15_vptpa has an entirely different breakdown if xlate faulted
REG_FIELD=cp15_vptpa    pa 31 12, s 8 8, type 7 6, inner 5 4, outer 3 2, nofault 0 0

REG_FIELD=cp15_tlbi  l 31 31, index 5 0
REG_FIELD=cp15_tlbva vpn 31 12, process 9 0
REG_FIELD=cp15_tlbpa ppn 31 12, size 7 6, ap 3 1, v 0 0
REG_FIELD=cp15_tlba  ap3 31 30, ap2 29 28, ap1 27 26, spv 25 25,
                     domain 8 5, xn 4 4, rgn 3 1, s 0 0

// Override field breakdowns from arm11.rd
REG_FIELD=cp15_pf1      secext 7 4, pm 3 0
REG_FIELD=cp15_df0      sdm 7 4, adm 3 0
REG_FIELD=cp15_mmf2     wfi 27 24, mbf 23 20, tlbmu 19 16,
                        tlbmh 15 12, l1cmrh 11 8, l1bprh 7 4, l1fprh 3 0
REG_FIELD=cp15_mmf3     l2mall 15 12, l2msw 11 8, l2mva 7 4, l2mpa 3 0
REG_FIELD=cp15_isf4     smi 15 12, wb 11 8, ws 7 4, u 3 0
REG_FIELD=cp15_cntrl   fa 29 29, tr 28 28, nm 27 27, ee 25 25, xp 23 23,
                       u 22 22, l4 15 15, v 13 13, i 12 12, z 11 11, r 9 9,
                       s 8 8, c 2 2, a 1 1, m 0 0
REG_FIELD=cp15_auxctl  sa 5 5, ex 4 4, f 3 3, sb 2 2, db 1 1, rs 0 0
// See comments in arm11.rd regarding ttba and nbits fields in cp15_ttb0
REG_FIELD=cp15_ttb0    ttba 31 14, nbits 13 7, rgn 4 3, s 1 1
REG_FIELD=cp15_ttb1    ttba 31 14, rgn 4 3, s 1 1

REG_FIELD=cp15_tlbdc   iml 5 5, dml 4 4

// Private memory region Memory-mapped registers
//	NOTE: the actual memory region base address is remappable via the
//	PERIPHBASE[17:0] pins.  The definitions below assume the default
//	base address value of 0x1f000000.  If your target uses a different
//	base address, the addresses will need to be changed to match.

REG=scu_cntrl	0x1F000000  PHYSICAL  4	// SCU Control register
REG=scu_config	0x1F000004  PHYSICAL  4	// SCU Configuration register (read-only)
REG=scu_status	0x1F000008  PHYSICAL  4	// SCU CPU Status register
// scu_invall is a write-only register, don't put it in a window!
REG=scu_invall	0x1F00000C  PHYSICAL  4	// SCU Invalidate All register
REG=scu_pmc	0x1F000010  PHYSICAL  4	// SCU Performance Monitor Control register
REG=scu_pme0	0x1F000014  PHYSICAL  4	// SCU Monitor Counter Events register 0
REG=scu_pme1	0x1F000018  PHYSICAL  4	// SCU Monitor Counter Events register 1
REG=scu_mn0	0x1F00001C  PHYSICAL  4	// SCU Monitor Counter register 0
REG=scu_mn1	0x1F000020  PHYSICAL  4	// SCU Monitor Counter register 1
REG=scu_mn2	0x1F000024  PHYSICAL  4	// SCU Monitor Counter register 2
REG=scu_mn3	0x1F000028  PHYSICAL  4	// SCU Monitor Counter register 3
REG=scu_mn4	0x1F00002C  PHYSICAL  4	// SCU Monitor Counter register 4
REG=scu_mn5	0x1F000030  PHYSICAL  4	// SCU Monitor Counter register 5
REG=scu_mn6	0x1F000034  PHYSICAL  4	// SCU Monitor Counter register 6
REG=scu_mn7	0x1F000038  PHYSICAL  4	// SCU Monitor Counter register 7

// cpuN_eoi is a write-only register, don't put it in a window!
REG=cpu0_cntrl	0x1F000200  PHYSICAL  4	// CPU0 Interface Control register
REG=cpu0_mask	0x1F000204  PHYSICAL  4	// CPU0 Priority Mask register
REG=cpu0_bpoint	0x1F000208  PHYSICAL  4	// CPU0 Binary Point register
REG=cpu0_ia	0x1F00020C  PHYSICAL  4	// CPU0 Interrupt Acknowledge register
REG=cpu0_eoi	0x1F000210  PHYSICAL  4	// CPU0 End Of Interrupt register
REG=cpu0_rp	0x1F000214  PHYSICAL  4	// CPU0 Running Priority register
REG=cpu0_hpi	0x1F000218  PHYSICAL  4	// CPU0 Highest Pending Interrupt register
REG=cpu1_cntrl	0x1F000300  PHYSICAL  4	// CPU1 Interface Control register
REG=cpu1_mask	0x1F000304  PHYSICAL  4	// CPU1 Priority Mask register
REG=cpu1_bpoint	0x1F000308  PHYSICAL  4	// CPU1 Binary Point register
REG=cpu1_ia	0x1F00030C  PHYSICAL  4	// CPU1 Interrupt Acknowledge register
REG=cpu1_eoi	0x1F000310  PHYSICAL  4	// CPU1 End Of Interrupt register
REG=cpu1_rp	0x1F000314  PHYSICAL  4	// CPU1 Running Priority register
REG=cpu1_hpi	0x1F000318  PHYSICAL  4	// CPU1 Highest Pending Interrupt register
REG=cpu2_cntrl	0x1F000400  PHYSICAL  4	// CPU2 Interface Control register
REG=cpu2_mask	0x1F000404  PHYSICAL  4	// CPU2 Priority Mask register
REG=cpu2_bpoint	0x1F000408  PHYSICAL  4	// CPU2 Binary Point register
REG=cpu2_ia	0x1F00040C  PHYSICAL  4	// CPU2 Interrupt Acknowledge register
REG=cpu2_eoi	0x1F000410  PHYSICAL  4	// CPU2 End Of Interrupt register
REG=cpu2_rp	0x1F000414  PHYSICAL  4	// CPU2 Running Priority register
REG=cpu2_hpi	0x1F000418  PHYSICAL  4	// CPU2 Highest Pending Interrupt register
REG=cpu3_cntrl	0x1F000500  PHYSICAL  4	// CPU3 Interface Control register
REG=cpu3_mask	0x1F000504  PHYSICAL  4	// CPU3 Priority Mask register
REG=cpu3_bpoint	0x1F000508  PHYSICAL  4	// CPU3 Binary Point register
REG=cpu3_ia	0x1F00050C  PHYSICAL  4	// CPU3 Interrupt Acknowledge register
REG=cpu3_eoi	0x1F000510  PHYSICAL  4	// CPU3 End Of Interrupt register
REG=cpu3_rp	0x1F000514  PHYSICAL  4	// CPU3 Running Priority register
REG=cpu3_hpi	0x1F000518  PHYSICAL  4	// CPU3 Highest Pending Interrupt register

// cpuN_wd is a write-only register, don't put it in a window!
REG=cpu0_tload	0x1F000700  PHYSICAL  4	// CPU0 Timer Load register
REG=cpu0_tcount	0x1F000704  PHYSICAL  4	// CPU0 Timer Count register
REG=cpu0_tcntrl	0x1F000708  PHYSICAL  4	// CPU0 Timer Control register
REG=cpu0_tis	0x1F00070C  PHYSICAL  4	// CPU0 Timer Interrupt Status register
REG=cpu0_wload	0x1F000720  PHYSICAL  4	// CPU0 Watchdog Load register
REG=cpu0_wcount	0x1F000724  PHYSICAL  4	// CPU0 Watchdog Count register
REG=cpu0_wcntrl	0x1F000728  PHYSICAL  4	// CPU0 Watchdog Control register
REG=cpu0_wis	0x1F00072C  PHYSICAL  4	// CPU0 Watchdog Interrupt Status register
REG=cpu0_wrs	0x1F000730  PHYSICAL  4	// CPU0 Watchdog Reset Sent register
REG=cpu0_wd	0x1F000730  PHYSICAL  4	// CPU0 Watchdog Disable register
REG=cpu1_tload	0x1F000800  PHYSICAL  4	// CPU1 Timer Load register
REG=cpu1_tcount	0x1F000804  PHYSICAL  4	// CPU1 Timer Count register
REG=cpu1_tcntrl	0x1F000808  PHYSICAL  4	// CPU1 Timer Control register
REG=cpu1_tis	0x1F00080C  PHYSICAL  4	// CPU1 Timer Interrupt Status register
REG=cpu1_wload	0x1F000820  PHYSICAL  4	// CPU1 Watchdog Load register
REG=cpu1_wcount	0x1F000824  PHYSICAL  4	// CPU1 Watchdog Count register
REG=cpu1_wcntrl	0x1F000828  PHYSICAL  4	// CPU1 Watchdog Control register
REG=cpu1_wis	0x1F00082C  PHYSICAL  4	// CPU1 Watchdog Interrupt Status register
REG=cpu1_wrs	0x1F000830  PHYSICAL  4	// CPU1 Watchdog Reset Sent register
REG=cpu1_wd	0x1F000830  PHYSICAL  4	// CPU1 Watchdog Disable register
REG=cpu2_tload	0x1F000900  PHYSICAL  4	// CPU2 Timer Load register
REG=cpu2_tcount	0x1F000904  PHYSICAL  4	// CPU2 Timer Count register
REG=cpu2_tcntrl	0x1F000908  PHYSICAL  4	// CPU2 Timer Control register
REG=cpu2_tis	0x1F00090C  PHYSICAL  4	// CPU2 Timer Interrupt Status register
REG=cpu2_wload	0x1F000920  PHYSICAL  4	// CPU2 Watchdog Load register
REG=cpu2_wcount	0x1F000924  PHYSICAL  4	// CPU2 Watchdog Count register
REG=cpu2_wcntrl	0x1F000928  PHYSICAL  4	// CPU2 Watchdog Control register
REG=cpu2_wis	0x1F00092C  PHYSICAL  4	// CPU2 Watchdog Interrupt Status register
REG=cpu2_wrs	0x1F000930  PHYSICAL  4	// CPU2 Watchdog Reset Sent register
REG=cpu2_wd	0x1F000930  PHYSICAL  4	// CPU2 Watchdog Disable register
REG=cpu3_tload	0x1F000A00  PHYSICAL  4	// CPU3 Timer Load register
REG=cpu3_tcount	0x1F000A04  PHYSICAL  4	// CPU3 Timer Count register
REG=cpu3_tcntrl	0x1F000A08  PHYSICAL  4	// CPU3 Timer Control register
REG=cpu3_tis	0x1F000A0C  PHYSICAL  4	// CPU3 Timer Interrupt Status register
REG=cpu3_wload	0x1F000A20  PHYSICAL  4	// CPU3 Watchdog Load register
REG=cpu3_wcount	0x1F000A24  PHYSICAL  4	// CPU3 Watchdog Count register
REG=cpu3_wcntrl	0x1F000A28  PHYSICAL  4	// CPU3 Watchdog Control register
REG=cpu3_wis	0x1F000A2C  PHYSICAL  4	// CPU3 Watchdog Interrupt Status register
REG=cpu3_wrs	0x1F000A30  PHYSICAL  4	// CPU3 Watchdog Reset Sent register
REG=cpu3_wd	0x1F000A30  PHYSICAL  4	// CPU3 Watchdog Disable register

REG=id_cntrl	0x1F001000  PHYSICAL  4	// ID (Interrupt Distributor) Control register
REG=id_ict	0x1F001000  PHYSICAL  4	// ID Interrupt Controller Type register

//
REG_FIELD=scu_cntrl	en 0 0
REG_FIELD=scu_config	tagsz3 15 14, tagsz2 13 12, tagsz1 11 10, tagsz0 9 8,
			smp3 7 7, smp2 6 6, smp1 5 5, smp0 4 4, ncpus 1 0
REG_FIELD=scu_status	cpu3 7 6, cpu2 5 4, cpu1 3 2, cpu0 1 0
REG_FIELD=scu_pmc	ov7 23 23, ov6 22 22, ov5 21 21, ov4 20 20, ov3 19 19,
			ov2 18 18, ov1 17 17, ov0 16 16, ie7 15 15, ie6 14 14,
			ie5 13 13, ie4 12 12, ie3 11 11, ie2 10 10, ie1 9 9,
			ie0 8 8, p 1 1, e 0 0
REG_FIELD=scu_pme0	evcnt3 31 24, evcnt2 23 16, evcnt1 15 8, evcnt0 7 0
REG_FIELD=scu_pme1	evcnt7 31 24, evcnt6 23 16, evcnt5 15 8, evcnt4 7 0

REG_FIELD=cpu0_cntrl	en 0 0
REG_FIELD=cpu0_mask	mask 7 4
REG_FIELD=cpu0_bpoint	bpoint 2 0
REG_FIELD=cpu0_ia	cpu 12 10, int 9 0
REG_FIELD=cpu0_rp	priority 7 4
REG_FIELD=cpu0_hpi	cpu 12 10, int 9 0
REG_FIELD=cpu1_cntrl	en 0 0
REG_FIELD=cpu1_mask	mask 7 4
REG_FIELD=cpu1_bpoint	bpoint 2 0
REG_FIELD=cpu1_ia	cpu 12 10, int 9 0
REG_FIELD=cpu1_rp	priority 7 4
REG_FIELD=cpu1_hpi	cpu 12 10, int 9 0
REG_FIELD=cpu2_cntrl	en 0 0
REG_FIELD=cpu2_mask	mask 7 4
REG_FIELD=cpu2_bpoint	bpoint 2 0
REG_FIELD=cpu2_ia	cpu 12 10, int 9 0
REG_FIELD=cpu2_rp	priority 7 4
REG_FIELD=cpu2_hpi	cpu 12 10, int 9 0
REG_FIELD=cpu3_cntrl	en 0 0
REG_FIELD=cpu3_mask	mask 7 4
REG_FIELD=cpu3_bpoint	bpoint 2 0
REG_FIELD=cpu3_ia	cpu 12 10, int 9 0
REG_FIELD=cpu3_rp	priority 7 4
REG_FIELD=cpu3_hpi	cpu 12 10, int 9 0

REG_FIELD=cpu0_tcntrl	prescale 15 8, ite 2 2, ar 1 1, te 0 0
REG_FIELD=cpu0_tis	event 0 0
REG_FIELD=cpu0_wcntrl	prescale 15 8, wm 3 3, ite 2 2, ar 1 1, we 0 0
REG_FIELD=cpu0_wis	event 0 0
REG_FIELD=cpu0_wrs	reset 0 0
