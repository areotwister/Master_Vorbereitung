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
  .globl	fib
fib:
  mv a1,a0
  addi	sp,sp,-24
  sd ra,16(sp)
  sd s0,8(sp)
  addi s0,sp,24
  sd a1,-24(s0)
  li t0,1
  blt t0,a1,.ELSE
  li a0,1
  # j .EXIT
  jal x0,.EXIT
.ELSE:
  addi a0,a1,-1
  call fib
  ld a1,-24(s0)
  sd a0,-24(s0)
  addi a0,a1,-2
  call fib
  mv t2,a0
  ld t1,-24(s0)
  add a0,t1,t2
  ld ra,-16(s0)
  # j .EXIT
  # jal x0,.EXIT
.EXIT:
  ld ra,-8(s0)
  ld s0,-16(s0)
  addi	sp,sp,24
  # ret
  jalr x0,0(ra)
	.size	fib, .-fib
  .align	1
  .globl	main
main:
  addi	sp,sp,-16
  sd	ra,8(sp)
  sd	s0,0(sp)
  addi	s0,sp,16
  ## code start
  # task 2a):
  # # setup
  # li a0,5
  # solution
  # call fib
  # task 2b):
  # setup
  li a0,5
  # solution
  li t0,1
  li t1,1
  li t2,1
  addi sp,sp,-8
  sd s0,0(sp)
  addi s0,sp,8
.CONDITION:
  bge t3,a0,.LOOPEXIT
.LOOP:
  mv t3,t1
  add t1,t1,t0
  mv t0,t3
  addi t2,t2,1
  j .CONDITION
.LOOPEXIT:
  mv a0,t1
  ld s0,0(sp)
  addi sp,sp,8
  ## code end
  mv a1,a0
  lla	a0,.LC0
  call	printf@plt
  ld	ra,8(sp)
  ld	s0,0(sp)
  addi	sp,sp,16
  jr	ra
	.size	main, .-main
