// ARM1156T2  Register Definition File
//

INCLUDE "arm11.rd"
INCLUDE "arm11x6.rd"

REG=cp15_tcmst   0x00000080 COPROC15 4  // c15_0_o2_0  : TCM Status

//
REG_FIELD=cp15_tcmst   dtcm 18 16, itcm 2 0

// Override generic field breakdowns from arm11.rd:
// No FA, TR fields.
REG_FIELD=cp15_cntrl   ee 25 25, ve 24 24, xp 23 23,
                       u 22 22, fi 21 21, it 18 18, dt 16 16, l4 15 15,
                       rr 14 14, v 13 13, i 12 12, z 11 11, f 10 10, r 9 9,
                       s 8 8, b 7 7, w 3 3, c 2 2, a 1 1, m 0 0
REG_FIELD=cp15_ifs     sd 12 12, status4 10 10, dom 7 4, status 3 0

// PSRs have extra bits for the Thumb2 IT state:

REG_FIELD=cpsr		n 31 31, z 30 30, c 29 29, c 28 28, q 27 27,
			it3 26 26, it4 25 25, j 24 24, ge 19 16,
			it_cond 15 12, it1 11 11, it2 10 10, e 9 9,
			a 8 8, i 7 7, f 6 6, t 5 5, mode 4 0

REG_FIELD=spsr		n 31 31, z 30 30, c 29 29, c 28 28, q 27 27,
			it3 26 26, it4 25 25, j 24 24, ge 19 16,
			it_cond 15 12, it1 11 11, it2 10 10, e 9 9,
			a 8 8, i 7 7, f 6 6, t 5 5, mode 4 0

REG_FIELD=spsr_abort	n 31 31, z 30 30, c 29 29, c 28 28, q 27 27,
			it3 26 26, it4 25 25, j 24 24, ge 19 16,
			it_cond 15 12, it1 11 11, it2 10 10, e 9 9,
			a 8 8, i 7 7, f 6 6, t 5 5, mode 4 0

REG_FIELD=spsr_fiq	n 31 31, z 30 30, c 29 29, c 28 28, q 27 27,
			it3 26 26, it4 25 25, j 24 24, ge 19 16,
			it_cond 15 12, it1 11 11, it2 10 10, e 9 9,
			a 8 8, i 7 7, f 6 6, t 5 5, mode 4 0

REG_FIELD=spsr_irq	n 31 31, z 30 30, c 29 29, c 28 28, q 27 27,
			it3 26 26, it4 25 25, j 24 24, ge 19 16,
			it_cond 15 12, it1 11 11, it2 10 10, e 9 9,
			a 8 8, i 7 7, f 6 6, t 5 5, mode 4 0

REG_FIELD=spsr_svc	n 31 31, z 30 30, c 29 29, c 28 28, q 27 27,
			it3 26 26, it4 25 25, j 24 24, ge 19 16,
			it_cond 15 12, it1 11 11, it2 10 10, e 9 9,
			a 8 8, i 7 7, f 6 6, t 5 5, mode 4 0

REG_FIELD=spsr_undef	n 31 31, z 30 30, c 29 29, c 28 28, q 27 27,
			it3 26 26, it4 25 25, j 24 24, ge 19 16,
			it_cond 15 12, it1 11 11, it2 10 10, e 9 9,
			a 8 8, i 7 7, f 6 6, t 5 5, mode 4 0
