  .section	.rodata
  .align	3
.LC0:
  .string	"%d"
	.align	3
.LC1:
	.word	1
	.word	2
  .text
  .align	1
  .globl	main
main:
  addi	sp,sp,-16
  sd	ra,8(sp)
  sd	s0,0(sp)
  addi	s0,sp,16
  ## code start
  # task 3a):
  # lui a0,912092 # 0xDEADB
  # addi a0,a0,-273
  # task 3b)
  # setup
  li a0,1
  slli a0,a0,31
  # li a0,12 # toggle
  li a1,-12
  # solution
  li t0,1
  slli t0,t0,31
  bgtu a0,t0,.ELSE
  add a1,zero,a0 # mv a1,a0
  j .EXIT
.ELSE:
    addi a1,zero,-1
.EXIT:
  ## code end
  # mv a1,a0 # a)
  lla	a0,.LC0
  call	printf@plt
  ld	ra,8(sp)
  ld	s0,0(sp)
  addi	sp,sp,16
  jr	ra
	.size	main, .-main
