					//	.globl	mul
					//	.type	mul, @function
					//mul:

void mul (unsigned long a0, unsigned long a1, unsigned long a2)
{
	unsigned long t0, t1, t2, t3, t4, t5;
	double f0, f1, f2;

	t3 = 8;			//	li	t3,8
	t0 = 0;				//	li	t0,0
L1:					//.L1:
	t1 = 0;				//	li	t1,0
L2:					//.L2:
	t2 = 0;				//	li	t2,0
	t5 = t0 * t3;			//	mul	t5,t0,t3
	t5 = t5 + t1;			//	add	t5,t5,t1
	t5 = t5 << 3;			//	slli	t5,t5,3
	t5 = a2 + t5;			//	add	t5,a2,t5
	f0 = *(double*)(0 + t5);	//	fld	f0,0(t5)
L3:					//.L3:
	t4 = t2 * t3;			//	mul	t4,t2,t3
	t4 = t4 + t1;			//	add	t4,t4,t1
	t4 = t4 << 3;			//	slli	t4,t4,3
	t4 = a1 + t4;			//	add	t4,a1,t4
	f1 = *(double*)(0 + t4);	//	fld	f1,0(t4)
	t4 = t0 * t3;			//	mul	t4,t0,t3
	t4 = t4 + t2;			//	add	t4,t4,t2
	t4 = t4 << 3;			//	slli	t4,t4,3
	t4 = a0 + t4;			//	add 	t4,a0,t4
	f2 = *(double*)(0 + t4);	//	fld	f2,0(t4)
	f1 = f2 * f1; 			//	fmul.d	f1,f2,f1
	f0 = f0 + f1;			//	fadd.d	f0,f0,f1
	t2 = t2 + 1;			//	addi	t2,t2,1
	if (t2 < t3) goto L3;		//	bltu	t2,t3,.L3
	*(double*)(0 + t5) = f0;	//	fsd	f0,0(t5)
	t1 = t1 + 1;			//	addi	t1,t1,1
	if (t1 < t3) goto L2;		//	bltu	t1,t3,.L2
	t0 = t0 + 1;			//	addi	t0,t0,1
	if (t0 < t3) goto L1;		//	bltu	t0,t3,.L1
	return;				//	ret
}
