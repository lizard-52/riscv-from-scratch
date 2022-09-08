.global main
main:

li t0, -2
sb t0, -1(sp)
lbu t1, -1(sp)
li t2, 254
beq t1, t2, success

failure:	
	li a0, 0
	li a7, 93
	ecall
success:
	li a0, 42
	li a7, 93
	ecall
