  .section	.rodata
  .align	3
.LC0:
  .string	"%d"
  # .string	"%ld" for long
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
  # lui a0,912092 # 0xDEADC
  # addi a0,a0,-273 # EEF
  # task 3bi)
#  # setup
#  addi a0,zero,-1
#  srli a0,a0,32
#  # li a0,12 # toggle
#  # solution
#  addi t0,zero,-1
#  srli t0,t0,33
#  bgtu a0,t0,.ELSE
#  add a1,zero,a0 # mv a1,a0
#  j .EXIT
#.ELSE:
#  addi a1,zero,-1
#.EXIT:
  # task 3bii)
  # setup
#  addi a0,zero,-12
#  # addi a0,zero,12 # toggle
#  # solution
#  addi t0,zero,-1
#  srli t0,t0,33
#  bgt a0,t0,.ELSE
#  # add a1,zero,a0 # mv a1,a0
#  add a1,zero,a0 # mv a1,a0
#  j .EXIT
#.ELSE:
#  addi a1,zero,-1
#.EXIT:
  # task 3biii)
#  # setup
#  addi a0,zero,-1
#  srli a0,a0,32
#  # addi a0,zero,-1 # toggle
#  # srli a0,a0,33
#  # solution
#  addi t0,zero,1
#  slli t0,t0,32
#  bltu a0,t0,.IF
#  addi a1,zero,-1
#  j .EXIT
#.IF:
#  add a1,zero,a0 # mv a1,a0
#.EXIT:
  # task 3c)
  jal zero,67128 # ,.TARGET
  # auipc x1,0
  # jalr x1,18(x1)
  nop
  nop
  nop
  nop
  nop
.TARGET:
  li a1,42
  nop
  # code end
  # mv a1,a0 # a)
  lla	a0,.LC0
  call	printf@plt
  ld	ra,8(sp)
  ld	s0,0(sp)
  addi	sp,sp,16
  jr	ra
	.size	main, .-main
