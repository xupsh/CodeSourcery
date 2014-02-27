// ARM1136J-S  Register Definition File
//

INCLUDE "arm11.rd"
INCLUDE "arm11x6.rd"

REG=cp15_tcmst   0x00000080 COPROC15 4  // c15_0_o2_0  : TCM Status

REG=cp15_bts     0x0000191c COPROC15 4  // c15_7_o4_12 : Block Transfer Status
// cp15_spr is Write-only, don't put it in a Window!
REG=cp15_spr     0x0000195c COPROC15 4  // c15_7_o5_12 : Stop Prefetch Range

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

REG=cp15_dmr     0x0000043c COPROC15 4  // c15_15_o0_2  : Data Memory Remap
REG=cp15_imr     0x0000047c COPROC15 4  // c15_15_o1_2  : Instruction Memory Remap
REG=cp15_dmamr   0x000004bc COPROC15 4  // c15_15_o2_2  : DMA Memory Remap

REG=cp15_ddc     0x0000603c COPROC15 4  //              : Data Debug Cache
REG=cp15_idc     0x0000607c COPROC15 4  //              : Instruction Debug Cache

// Next three are write-only, don't put them in a window!
REG=cp15_dtro    0x0000643c COPROC15 4  //              : Data Tag RAM Read Operation
REG=cp15_itro    0x0000647c COPROC15 4  //              : Instruction Tag RAM Read Operation
REG=cp15_icdro   0x0000687c COPROC15 4  //              : Instruction Cache Data RAM Read Operation

REG=cp15_ismv    0x0000743c COPROC15 4 SEQ 0 7 16  //   : Instruction SmartCache Master Valid (0-7)
REG=cp15_dsmv    0x00007c3c COPROC15 4 SEQ 0 7 16  //   : Data SmartCache Master Valid (0-7)

REG=cp15_dmi     0x0000a83c COPROC15 4  //              : Data MicroTLB Index
REG=cp15_imi     0x0000a87c COPROC15 4  //              : Instruction MicroTLB Index

// Next two are write-only, don't put them in a window!
REG=cp15_rteo    0x0000a8bc COPROC15 4  //              : Read main TLB Entry Operation
REG=cp15_wteo    0x0000a93c COPROC15 4  //              : Write main TLB Entry Operation

REG=cp15_dmva    0x0000aa3c COPROC15 4  //              : Data MicroTLB VA
REG=cp15_imva    0x0000aa7c COPROC15 4  //              : Instruction MicroTLB VA
REG=cp15_tlbva   0x0000aabc COPROC15 4  //              : main TLB VA
REG=cp15_dmpa    0x0000ac3c COPROC15 4  //              : Data MicroTLB PA
REG=cp15_impa    0x0000ac7c COPROC15 4  //              : Instruction MicroTLB PA
REG=cp15_tlbpa   0x0000acbc COPROC15 4  //              : main TLB PA
REG=cp15_dma     0x0000ae3c COPROC15 4  //              : Data MicroTLB Attribute
REG=cp15_ima     0x0000ae7c COPROC15 4  //              : Instruction MicroTLB Attribute
REG=cp15_tlba    0x0000aebc COPROC15 4  //              : main TLB Attribute
REG=cp15_tlbmv   0x0000bc3c COPROC15 4  SEQ 0 7 16  //  : main TLB Master Valid (0-7)

REG=cp15_cdc     0x0000e03c COPROC15 4  //              : Cache Debug Control
REG=cp15_tlbdc   0x0000e23c COPROC15 4  //              : TLB Debug Control

//
REG_FIELD=cp15_tcmst   dtcm 18 16, itcm 2 0

REG_FIELD=cp15_disp  ch1 1 1, ch0 0 0
REG_FIELD=cp15_disq  ch1 1 1, ch0 0 0
REG_FIELD=cp15_disr  ch1 1 1, ch0 0 0
REG_FIELD=cp15_disi  ch1 1 1, ch0 0 0
REG_FIELD=cp15_dua   u1 1 1, u0 0 0
REG_FIELD=cp15_dctrl tr 31 31, dt 30 30, ic 29 29, ie 28 28, ft 27 27,
                     um 26 26, st 19 8, ts 1 0
REG_FIELD=cp15_dcs   bp 12 12, es 11 7, is 6 2, status 1 0
REG_FIELD=cp15_dcid  procid 31 8, asid 7 0

REG_FIELD=cp15_dmr   owb 24 23, owt 22 21, owbwa 20 19, onc 18 17, s 16 16,
                     ns 15 15, iwb 14 12, iwt 11 9, dev 8 6, so 5 3, inc 2 0
REG_FIELD=cp15_imr   owb 24 23, owt 22 21, owbwa 20 19, onc 18 17, s 16 16,
                     ns 15 15, iwb 14 12, iwt 11 9, dev 8 6, so 5 3, inc 2 0
REG_FIELD=cp15_dmamr owb 24 23, owt 22 21, owbwa 20 19, onc 18 17, s 16 16,
                     ns 15 15, iwb 14 12, iwt 11 9, dev 8 6, so 5 3, inc 2 0
// For the following, "tag" includes the Tag Index bits, if any
REG_FIELD=cp15_ddc   tag 31 10, dirty 2 1, valid 0 0
REG_FIELD=cp15_idc   tag 31 10, dirty 2 1, valid 0 0

REG_FIELD=cp15_dmi   index 3 0
REG_FIELD=cp15_imi   index 3 0

REG_FIELD=cp15_dmva  vpn 31 10, proc 9 0
REG_FIELD=cp15_imva  vpn 31 10, proc 9 0
REG_FIELD=cp15_tlbva vpn 31 10, proc 9 0
REG_FIELD=cp15_dmpa  ppn 31 10, sz 9 6, xrgn 5 4, ap 3 1, v 0 0
REG_FIELD=cp15_impa  ppn 31 10, sz 9 6, xrgn 5 4, ap 3 1, v 0 0
REG_FIELD=cp15_tlbpa ppn 31 10, sz 9 6, xrgn 5 4, ap 3 1, v 0 0
REG_FIELD=cp15_dma   spv 25 25, domain 8 5, xn 4 4, rgn 3 1, s 0 0
REG_FIELD=cp15_ima   spv 25 25, domain 8 5, xn 4 4, rgn 3 1, s 0 0
REG_FIELD=cp15_tlba  ap3 31 30, ap2 29 28, ap1 27 26, spv 25 25,
                     domain 8 5, xn 4 4, rgn 3 1, s 0 0

REG_FIELD=cp15_cdc   wt 2 2, il 1 1, dl 0 0
REG_FIELD=cp15_tlbdc imm 7 7, dmm 6 6, iml 5 5, dml 4 4,
                     ium 3 3, dum 2 2, iul 1 1, dul 0 0

// Override generic field breakdowns from arm11.rd:
REG_FIELD=cp15_cache ctype 28 25, s 24 24, dp 23 23, dsize 20 18, dass 17 15, dm 14 14, dlen 13 12, ip 11 11, isize 8 6, iass 5 3, im 2 2, ilen 1 0
REG_FIELD=cp15_dfs   rw 11 11, status4 10 10, dom 7 4, status 3 0
REG_FIELD=cp15_ifs   status 3 0

//
// Add CP15 to Register Window
REG_WINDOW = CP15 cp15_cpuid, cp15_cntrl
//
// <eof>
