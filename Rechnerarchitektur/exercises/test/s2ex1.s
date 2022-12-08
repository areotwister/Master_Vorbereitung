  .section	.rodata
  .align	3
.LC0:
  .string	"%d"
	.align	3
.LC1:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
  .data
	.align	3
.LC2:
  .word	1
  .word	1
  .word	1
  .word	1
  .word	1
  .word	1
  .word	1
  .word	1
  .align	1
  .text
  .globl	main
main:
  addi	sp,sp,-16
  sd	ra,8(sp)
  sd	s0,0(sp)
  addi	s0,sp,16
  ## code start
  # f = x5
  # g = x6
  # h = x7
  # i = x28
  # j = x29
  # a)
  # setup
  # li x6,41
  # li x7,6
  # task
  # addi x7,x7,-5
  # add x5,x6,x7
  # c)
  # setup
  li x28,7
  li x29,3
  # task
	lla	x10,.LC1
  sub x28,x28,x29
  li x29,4
  mul x28,x28,x29
  add x10,x10,x28
  lw x28,0(x10)
  lla	x11,.LC2
  sw x28,28(x11)
  ## code end
  # mv	a1,x5 # a)
  lw a1,28(x11) # b)
  lla	a0,.LC0
  call	printf@plt
  ld	ra,8(sp)
  ld	s0,0(sp)
  addi	sp,sp,16
  jr	ra
# b)
# a = c + b + c;
