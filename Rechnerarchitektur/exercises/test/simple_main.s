	.globl	main
main:
	li	a5,15
	sw	a5,12(sp)
	jr	ra
	.size	main, .-main
	.ident	"GCC: (GNU) 12.2.0"
	.section	.note.GNU-stack,"",@progbits
