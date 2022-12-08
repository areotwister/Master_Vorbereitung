  .section	.rodata
  .align	3
.LC0:
  .string	"%d"
  .align	1
  .globl	main
main:
  addi	sp,sp,-16
  sd	ra,8(sp)
  sd	s0,0(sp)
  addi	s0,sp,16
  # code start
  # code end
  li	a1,42
  lla	a0,.LC0
  call	printf@plt
  ld	ra,8(sp)
  ld	s0,0(sp)
  addi	sp,sp,16
  jr	ra
