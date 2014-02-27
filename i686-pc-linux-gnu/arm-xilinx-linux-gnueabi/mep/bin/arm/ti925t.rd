// TI925T CP15 Register Definition File
REG=cp15_cpuid 0x00000000 COPROC15 4
REG=cp15_cache 0x00000040 COPROC15 4
REG=cp15_cntrl 0x00000004 COPROC15 4
REG=cp15_tbase 0x00000008 COPROC15 4
REG=cp15_domac 0x0000000C COPROC15 4
REG=cp15_dstat 0x00000014 COPROC15 4
REG=cp15_daddr 0x00000018 COPROC15 4
REG=cp15_dtlbl 0x00000228 COPROC15 4
REG=cp15_itlbl 0x00000268 COPROC15 4
REG=cp15_fcpid 0x00000034 COPROC15 4

// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_cache, cp15_cntrl, cp15_tbase, cp15_domac, cp15_dstat, cp15_daddr, cp15_dtlbl, cp15_itlbl, cp15_fcpid
