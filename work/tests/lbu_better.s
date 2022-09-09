.global main
main:

li t0, 1
sw t0, -4(sp)
lbu t1, -4(sp)
li t2, 1

sb t0, -3(sp)
li t0, 2
sb t0, -2(sp)
lw t3, -4(sp)

beq t1, t2, success

failure:	
	li a0, 0
	li a7, 93
	ecall
success:
	li a0, 42
	li a7, 93
	ecall
