  .file	"hello_world.c"
  .option pic
  .attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0"
  .attribute unaligned_access, 0
  .attribute stack_align, 16
  .text
  .section	.rodata
  .align	3
.LC0:
  .string	"%d"
  .text
  .align	1
  .globl	main
  .type	main, @function
main:
  addi	sp,sp,-16
  sd	ra,8(sp)
  sd	s0,0(sp)
  addi	s0,sp,16
  li	a1,42
  lla	a0,.LC0
  call	printf@plt
  ld	ra,8(sp)
  ld	s0,0(sp)
  addi	sp,sp,16
  jr	ra
