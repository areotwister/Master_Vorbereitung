# As in book and slides with original binary 'x' registers.

	.globl	mul
	.type	mul, @function
mul:
	li	x28,16
	li	x5,0
.L1:
	li	x6,0
.L2:
	li	x7,0
	mul	x30,x5,x28
	add	x30,x30,x6
	slli	x30,x30,3
	add	x30,x12,x30
	fld	f0,0(x30)
.L3:
	mul	x29,x7,x28
	add	x29,x29,x6
	slli	x29,x29,3
	add	x29,x11,x29
	fld	f1,0(x29)
	mul	x29,x5,x28
	add	x29,x29,x7
	slli	x29,x29,3
	add 	x29,x10,x29
	fld	f2,0(x29)
	fmul.d	f1,f2,f1
	fadd.d	f0,f0,f1
	addi	x7,x7,1
	bltu	x7,x28,.L3
	fsd	f0,0(x30)
	addi	x6,x6,1
	bltu	x6,x28,.L2
	addi	x5,x5,1
	bltu	x5,x28,.L1
	ret
