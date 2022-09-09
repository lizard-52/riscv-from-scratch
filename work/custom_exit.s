.global exit_ok
.global exit_fail

exit_ok:
    .cfi_startproc
    addi sp,sp,-16
    sw s0,8(sp)
    addi s0,sp,16

    li a0, 42
	li a7, 93

    nop
    nop
    nop
    nop
	ebreak

    #return probably never used, I'll stick it here anyways
    lw      s0,8(sp)
    addi    sp,sp,16
    ret
    .cfi_endproc

exit_fail:
    .cfi_startproc
    addi sp,sp,-16
    sw s0,8(sp)
    addi s0,sp,16

    li a0, 0
	li a7, 93

    nop
    nop
    nop
    nop
	ebreak

    #return probably never used, I'll stick it here anyways
    lw      s0,8(sp)
    addi    sp,sp,16
    ret
    .cfi_endproc
