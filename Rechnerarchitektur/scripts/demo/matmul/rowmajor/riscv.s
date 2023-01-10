# As in book and slides with proper ABI registers.

	.globl	mul
	.type	mul, @function
mul:
	li	t3,8
	li	t0,0
.L1:
	li	t1,0
.L2:
	li	t2,0
	mul	t5,t0,t3
	add	t5,t5,t1
	slli	t5,t5,3
	add	t5,a2,t5
	fld	f0,0(t5)
.L3:
	mul	t4,t2,t3
	add	t4,t4,t1
	slli	t4,t4,3
	add	t4,a1,t4
	fld	f1,0(t4)
	mul	t4,t0,t3
	add	t4,t4,t2
	slli	t4,t4,3
	add 	t4,a0,t4
	fld	f2,0(t4)
	fmul.d	f1,f2,f1
	fadd.d	f0,f0,f1
	addi	t2,t2,1
	bltu	t2,t3,.L3
	fsd	f0,0(t5)
	addi	t1,t1,1
	bltu	t1,t3,.L2
	addi	t0,t0,1
	bltu	t0,t3,.L1
	ret
