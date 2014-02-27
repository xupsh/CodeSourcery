// Register Definition File (spaces.rd)
// Defines memory and register spaces for the ARM Architecture

SPACE=MEMORY	0x0	// Normal memory access
SPACE=PHYSICAL  0x09    // Physical memory space
SPACE=MEP_DA    0xFE    // Debug Agent (:DA) space
SPACE=MEP_INT   0xFF    // MEP Internal Space

SPACE=CRNT	0x100	// r0 - r15 
SPACE=USER	0x200   // User/System
SPACE=SVC	0x300
SPACE=IRQ	0x400
SPACE=FIQ	0x500
SPACE=ABORT	0x600
SPACE=UNDEF	0x700
SPACE=STATUS	0x800   // cpsr, spsr{svc,abort,undef,irq,fiq}

// coprocessers (bits 0..3) define coproc #, (16 registers per) 
SPACE=COPROC0	0xf00  
SPACE=COPROC1	0xf01  
SPACE=COPROC2	0xf02  
SPACE=COPROC3	0xf03  
SPACE=COPROC4	0xf04  
SPACE=COPROC5	0xf05  
SPACE=COPROC6	0xf06  
SPACE=COPROC7	0xf07  
SPACE=COPROC8	0xf08  
SPACE=COPROC9	0xf09  
SPACE=COPROC10	0xf0A  
SPACE=COPROC11	0xf0B  
SPACE=COPROC12	0xf0C  
SPACE=COPROC13	0xf0D  
SPACE=COPROC14	0xf0E  
SPACE=COPROC15	0xf0F  
