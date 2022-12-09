  .section	.rodata
  .align	3
.LC0:
  .string	"%d"
	.align	3
.LC1:
	.word	1
	.word	2
  .align	1
  .text
  .globl	main
main:
  # TODO: main function braucht auch sd und so...
  ## code start
  # task 2:
  # setup
 li a0,5
  # solution
 call fib
  ## code end
  mv a1,a0
  lla	a0,.LC0
  call	printf@plt
  ld	ra,8(sp)
  ld	s0,0(sp)
  addi	sp,sp,24
  jr	ra
fib:
  mv a1,a0
  addi	sp,sp,-24
  sd s0,16(sp)
  addi s0,sp,24
  li t0,1
  ble a1,t0,.ELSE
  li a0,1
  beq x0,x0,.EXIT
.ELSE:
  sw ra,-16(s0)
  sw a1,-24(s0)
  addi a0,a1,-1
  call fib
  mv t1,a0
  lw a1,-24(s0)
  addi a0,a1,-2
  call fib
  mv t2,a0
  add a0,t1,t2
  lw ra,-16(s0)
.EXIT:
  lw s0,-8(s0)
  # ret
  jalr x0,0(ra)
