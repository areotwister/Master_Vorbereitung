  # .section	.rodata
  .section	.data
  .align	3
.LC0:
  .string	"%d,%d"
  # .string	"%ld" for long
	.align	3
.LC1:
	.dword	42
	.dword	24
  .text
  .align	1
  .globl	main
main:
  ## code start
  # task a)
  # setup
  lla	a0,.LC1
  addi a1,a0,8
  addi a2,zero,34
  addi a3,zero,0
  # function routine
  addi	sp,sp,-24
  sd	ra,16(sp)
  sd	s0,8(sp)
  addi	s0,sp,24
  sd a0,-24(s0)
  # solution
  call enough_money
  # task b)
  # setup
  beq a0,zero,.EXIT_MAIN
  ld a0,-24(s0)
  # solution
  call remove_money
  ## code end
  # mv a1,a0 # a)
.EXIT_MAIN:
  ld a1,0(a0)
  ld a2,8(a0)
  lla	a0,.LC0
  call	printf@plt
  ld a0,-24(s0)
  ld	ra,-8(s0)
  ld	s0,-16(s0)
  addi	sp,sp,24
  jr	ra
	.size	main, .-main
  .align	1
  .globl	enough_money
enough_money:
  addi sp,sp,-8
  sd s0,0(sp)
  addi s0,sp,8
  # ------------------
  ld a0,0(a0)
  blt a0,a2,.NOT_IF
  addi a0,zero,1
  beq zero,zero,.EXIT
.NOT_IF:
  addi a0,zero,0
.EXIT:
  # ------------------
  ld s0,-8(s0)
  addi sp,sp,8
  ret
	.size	enough_money, .-enough_money
  .align	1
  .globl	enough_money
remove_money:
  addi sp,sp,-8
  sd s0,0(sp)
  addi s0,sp,8
  # ------------------
  ld t0,0(a0)
  sub t0,t0,a2
  sd t0,0(a0)
  # ------------------
  ld s0,-8(s0)
  addi sp,sp,8
  ret
	.size	remove_money, .-remove_money
