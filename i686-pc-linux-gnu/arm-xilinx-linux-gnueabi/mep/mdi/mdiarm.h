/* Start of header file for ARM Specific MDI  (MDIarm.h) */

#ifndef MDI_ARM_Specification_Definitions
#define MDI_ARM_Specification_Definitions

/* Valid values for MDIDDataT.FClass: */
#define MDIARM_FClass       "ARM"
/* Valid values for MDIDDataT.FISA: */
/* None defined at this time */

/* Valid values for Resource */
/* All spaces are valid for most architectures, but Cortex-M is limited to
 *     MDIARMCURRENT, MDIARMSTATUS, MDIARMPHYSICAL, MDIARMGVIRTUAL
 */

	/* General registers, current mode. Offset == register number (0-15) */
#define MDIARMCURRENT       1
	/* General registers, user mode. Offset == register number (0-15) */
#define MDIARMUSER          2
	/* General registers, svc mode. Offset == register number (0-15) */
#define MDIARMSVC           3
	/* General registers, irq mode. Offset == register number (0-15) */
#define MDIARMIRQ           4
	/* General registers, fiq mode. Offset == register number (0-15) */
#define MDIARMFIQ           5
	/* General registers, abort mode. Offset == register number (0-15) */
#define MDIARMABORT			6
	/* General registers, undef mode. Offset == register number (0-15) */
#define MDIARMUNDEF			7
	/* Status registers. (different depending upon architecture)
	 * ARM7/ARM9/ARM11/Cortex-A)
	 *						0:  cpsr
	 *						1:  spsr, current mode
	 *						2:  spsr, svc mode
	 *						3:  spsr, abort mode
	 *						4:  spsr, undef mode
	 *						5:  spsr, irq mode
	 *						6:  spsr, fiq mode
	 *  Cortex-M Status/System Registers
	 *						0:  apsr
	 *						1:  iapsr
	 *						2:  eapsr
	 *						3:  xpsr
	 *						5:  ipsr
	 *						6:  epsr
	 *						7:  iepsr
	 *						8:  msp
	 *						8:  sp_main
	 *						9:  psp
	 *						9: sp_process
	 *						16: primask
	 *						17: basepri
	 *						18: basepri_max
	 *						19: faultmask
	 *						20: control
	 */
#define MDIARMSTATUS        8
	/* Location counter pseudo-register */
#define MDIARMPC            9
	/* Coprocessor registers for each coprocessor.
	 *
	 * For 32-bit registers, the MCR/MRC instructions include four fields
	 * that can be combined by the CP to select a register: Op1 (b23:21,
	 * CP specific opcode bits), Rn (b19:16, the CP src/dest reg),
	 * Op2 (b7:5, CP specific opcode bits), and Rm (b3:0, the "additional
	 * CP register").  The 16384 possible registers are addressed as
	 * follows:
	 *
	 * Offset == Op1 << 11 | Rm << 7 | Op2 << 4 | Rn
	 *
	 * For 64-bit registers, the MCRR/MRRC instructions include two fields
	 * that can be combined by the CP to select a register: Op (b7:4,
	 * CP specific opcode bits), and Rm (b3:0, the CP src/dest reg).  The
	 * 128 possible registers addressed as follows:
	 *
	 * Offset == Op << 4 | Rm
	 */
#define MDIARMCP0           16
#define MDIARMCP1           17
#define MDIARMCP2           18
#define MDIARMCP3           19
#define MDIARMCP4           20
#define MDIARMCP5           21
#define MDIARMCP6           22
#define MDIARMCP7           23
#define MDIARMCP8           24
#define MDIARMCP9           25
#define MDIARMCP10          26
#define MDIARMCP11          27
#define MDIARMCP12          28
#define MDIARMCP13          29
#define MDIARMCP14          30
#define MDIARMCP15          31
	/* Physical memory addresses (bypassing MMU).  Offset = address */
#define MDIARMPHYSICAL      32
	/* Virtual memory addresses.  Offset = address */
#define MDIARMGVIRTUAL      33

/*
** For MDISetBp(), MDISetSWBp(), and MDITraceRead(), setting the low
** order address bit to 1 means that the addressed instruction is a
** THUMB instruction.
*/
#define MDIARM_Flg_THUMB   1

#endif

/* End of header file for ARM Specific MDI (MDIarm.h) */
