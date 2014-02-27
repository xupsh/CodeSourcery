/* Start of header file for PowerPC Specific MDI  (MDIppc.h) */


/*
** REVISION LOG:
**
** Mar 1, 07 - Initial version
** Jun 1, 07 - Added MDIPPC_VSCR, MDIPPC_VECTOR to support SIMD instructions
*/

#ifndef MDI_PPC_Specification_Definitions
#define MDI_PPC_Specification_Definitions

/* Valid values for MDIDDataT.FClass: */
#define MDIPPC_FClass       "PPC"
/* Valid values for MDIDDataT.FISA: */
#define MDIPPC_FISA_3BOOK	"3BOOK"		/* As specified by Books I-III */
#define MDIPPC_FISA_BOOKE	"BOOKE"		/* As specified by Book E */

/* Valid values for Resource */

	/* General Purpose Registers. Offset == register number (0-31) */
#define MDIPPC_GPR			1
	/* Special Purpose Registers. Offset == register number (0-1023)
	 * Note: the register number is the 10-bit SPR field of the mtspr/mfspr
	 * instruction.  The existence and architectural meaning of each
	 * register depends on the specific target processor.
	 */
#define MDIPPC_SPR			2
	/* Device Control Registers. Offset == register number (0-1023)
	 * Note: the register number is the 10-bit DCR field of the mtdcr/mfdcr
	 * instruction.  The existence and architectural meaning of each
	 * register depends on the specific target processor.
	 * Note: some PPC implementations include additional device control
	 * registers that are accessed by writing an address (register selector)
	 * to a DCR and then reading/writing the datum via a second
	 * DCR.  The MDI specification intentionally does not provide
	 * resource encodings for direct access to these IMRs (Indirectly
	 * Mapped Registers). Debuggers should access them by manipulating the
	 * appropriate address and data DCRs, just as target code would do.
	 */
#define MDIPPC_DCR			3
	/* Floating Point data registers. Offset == register number (0-31)
	 * Note: FPRs are always 64-bit double precision format.
	 */
#define MDIPPC_FPR			4
	/* Location counter pseudo-register.  Offset == 0 */
#define MDIPPC_PC			5
	/* Condition Reg1ister.  Offset == 0 */
#define MDIPPC_CR			6
	/* Machine State Register.  Offset == 0 */
#define MDIPPC_MSR			7
	/* Floating Point Status Register. Offset == 0 */
#define MDIPPC_FPSCR		8
	/* "Book E" compliant MMU implementations have a software accessible
	 * Translation Lookaside Buffer.  The number of entries and the
	 * size and format of each entry are implementation specific, as
	 * are the semantics of the read/write instructions.
	 * Conventionally, the tlbre/tlbwe instructions divide each TLB
	 * entry into a set of GPR sized words and transfer the words between
	 * the entry and the GPRs. So the TLB space is modeled as an array of
	 * GPR-sized registers consisting of the N words for entry 0 followed by
	 * the N words for entry 1, etc.  The contents of each word match the
	 * layout of the GPRs documented by the implementation for the
	 * tlbre/tlbwe instructions.
	 */
	/* TLB registers.  offset = (entry number) * (words/entry) + (word number) */
#define MDIPPC_TLB			9
    /* Freescale TLB0 registers */
#define MDIPPC_TLB0			9
	/* "Book III" compliant MMU implementations have a software accessible
	 * Segment Lookaside Buffer containing an implementation-dependent
	 * number of 94 bit entries.  The slbmte and slbmfev/slbmfee instructions
	 * map the fields of each entry onto a pair of 64-bit GPRs.  So the SLB
	 * space is modeled as as an array of 64-bit registers consisting of the
	 * 2 words for entry 0 followed by the 2 words for entry 1, etc.  For
	 * each entry, the first (even) word corresponds to the slbmte
	 * instruction's "RS" register (VSID) and the second (odd) word
	 * corresponds to the slbmte instruction's "RB" register (ESID).
	 */
	/* SLB registers.  offset = (entry number) * 2 + (word number, 0 or 1) */
#define MDIPPC_SLB			10
    /* Freescale TLB1 registers */
#define MDIPPC_TLB1			10

	/* Physical memory addresses (bypassing MMU).  Offset = Real Address */
#define MDIPPCPHYSICAL      11

	/* Virtual memory addresses.
	 * The resource encodings needed for virtual addressing are heavily
	 * dependent on the MMU architecture of the target processor.  For
	 * PPC, there are two main MMU architectures defined.
	 * 
	 * The MMU architecture specified by "Book E" ("Enhanced PowerPC") has
	 * a software-accessible TLB and a software-driven reload model with
	 * no specified in-memory page table format.  In addition to the
	 * 32- or 64-bit "Effective Address", TLB lookups are always qualified 
	 * by a separate one-bit "Address space" for Instruction fetch and 
	 * Load/Store (data) accesses.  Also, lookups can further qualified by
	 * an implementation-defined "Process ID" (PID) of up to 32 bits.
	 * A PID value of 0 signifies a "global" entry where PID matching is
	 * suppressed.
	 * The following to resources are used to access global (PID=0) Data and
	 * Instruction memory via the corresponding current Address Space bit
	 * in the Machine State register.
	 */
	/* Global Virtual Data memory addresses.  Offset = Effective Address */
#define MDIPPCGDVIRTUAL		12
	/* Global Virtual Instruction memory addresses.  Offset = Effective Address */
#define MDIPPCGIVIRTUAL		13
	/* Vector Status and Control Register.  Offset = 0, 32 bits */
#define MDIPPC_VSCR			14
	/* Vector Registers.  Offset = register number 0..31.  Each register is 128
	 * bits wide
	 */
#define MDIPPC_VECTOR		15
	/*
	 * The following two equates define resource ranges to provide access
	 * to virtual addresses with explicit values for the "Address Space"
	 * flag and PID value.  The defined ranges only support PIDs up to 24
	 * bits, not the full 32 bits allowed by Book E.  This is not expected to
	 * be a problem in practice, since most implementations use an 8 bit PID.
	 */
	/* Address Space 0, PID value xxxxxxxx */
#define MDIPPCVIRTUAL0       0x80000000  /* 0x80xxxxxx: xxxxxx == PID value */
	/* Address Space 1, PID value xxxxxxxx */
#define MDIPPCVIRTUAL1       0xC0000000  /* 0xC0xxxxxx: xxxxxx == PID value */

	/*  "Book III"
	 * ("Classic PowerPC") specifies a three-stage MMU with a table of
	 * software accessible Segment descriptors, an inaccessible TLB,
	 * and hardware driven in-memory page tables.  There are no address
	 * space qualifiers applied to the original "Effective Address", so
	 * a single resource encoding is all that's needed.
	 * Debuggers that don't support multiple address spaces should also
	 * use this encoding
	 */
	/* default Virtual memory addresses.  Offset = Effective Address */
#define MDIPPCVIRTUAL		16

#endif
/* End of header file for PowerPC Specific MDI (MDIppc.h) */
