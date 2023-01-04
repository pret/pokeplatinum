	.include "macros/function.inc"
	.include "overlay018/ov18_0222FD3C.inc"

	

	.text


	arm_func_start ov18_0222FD3C
ov18_0222FD3C: ; 0x0222FD3C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r0, #0xc
	sub r1, r0, #0x10
	bl ov18_02245068
	ldr r1, _0222FD98 ; =0x022532D4
	ldr ip, _0222FD9C ; =ov18_0222FEDC
	str r0, [r1, #0]
	ldr r2, _0222FDA0 ; =ov18_0222FEB4
	ldr r3, _0222FDA4 ; =ov18_0222FECC
	str ip, [sp]
	mov ip, #0x800
	mov r0, #0xf
	mov r1, #0x40
	str ip, [sp, #4]
	blx ov18_0222AB50
	cmp r0, #1
	beq _0222FD88
	bl OS_Terminate
_0222FD88:
	mov r0, #0xa
	bl OS_Sleep
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222FD98: .word Unk_ov18_022532D4
_0222FD9C: .word ov18_0222FEDC
_0222FDA0: .word ov18_0222FEB4
_0222FDA4: .word ov18_0222FECC
	arm_func_end ov18_0222FD3C

	arm_func_start ov18_0222FDA8
ov18_0222FDA8: ; 0x0222FDA8
	stmfd sp!, {r3, lr}
	blx ov18_0222AC38
	cmp r0, #1
	beq _0222FDBC
	bl OS_Terminate
_0222FDBC:
	ldr r0, _0222FDC8 ; =0x022532D4
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222FDC8: .word Unk_ov18_022532D4
	arm_func_end ov18_0222FDA8

	arm_func_start ov18_0222FDCC
ov18_0222FDCC: ; 0x0222FDCC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0xe8
	ldr r1, _0222FE84 ; =0x022532D4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0]
	cmp r1, #7
	addls pc, pc, r1, lsl #2
	b _0222FE7C
_0222FDEC: ; jump table
	b _0222FE0C ; case 0
	b _0222FE0C ; case 1
	b _0222FE18 ; case 2
	b _0222FE0C ; case 3
	b _0222FE24 ; case 4
	b _0222FE0C ; case 5
	b _0222FE30 ; case 6
	b _0222FE78 ; case 7
_0222FE0C:
	add sp, sp, #0xe8
	mov r0, #0
	ldmia sp!, {r3, pc}
_0222FE18:
	add sp, sp, #0xe8
	mov r0, #1
	ldmia sp!, {r3, pc}
_0222FE24:
	add sp, sp, #0xe8
	mov r0, #2
	ldmia sp!, {r3, pc}
_0222FE30:
	add r0, sp, #0
	blx ov18_0222AD04
	cmp r0, #1
	beq _0222FE44
	bl OS_Terminate
_0222FE44:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	blt _0222FE6C
	cmp r0, #3
	bgt _0222FE6C
	ldr r0, [sp, #0x24]
	cmp r0, #1
	addeq sp, sp, #0xe8
	moveq r0, #3
	ldmeqia sp!, {r3, pc}
_0222FE6C:
	add sp, sp, #0xe8
	mov r0, #5
	ldmia sp!, {r3, pc}
_0222FE78:
	mov r0, #4
_0222FE7C:
	add sp, sp, #0xe8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222FE84: .word Unk_ov18_022532D4
	arm_func_end ov18_0222FDCC

	arm_func_start ov18_0222FE88
ov18_0222FE88: ; 0x0222FE88
	stmfd sp!, {r3, lr}
	sub sp, sp, #0xe8
	add r0, sp, #0
	blx ov18_0222AD04
	cmp r0, #1
	beq _0222FEA4
	bl OS_Terminate
_0222FEA4:
	add r0, sp, #0
	bl ov18_0223E3AC
	add sp, sp, #0xe8
	ldmia sp!, {r3, pc}
	arm_func_end ov18_0222FE88

	arm_func_start ov18_0222FEB4
ov18_0222FEB4: ; 0x0222FEB4
	ldr r3, _0222FEC8 ; =0x022532D4
	ldmia r0, {r0, r1, r2}
	ldr r3, [r3, #0]
	stmia r3, {r0, r1, r2}
	bx lr
	; .align 2, 0
_0222FEC8: .word Unk_ov18_022532D4
	arm_func_end ov18_0222FEB4

	arm_func_start ov18_0222FECC
ov18_0222FECC: ; 0x0222FECC
	ldr ip, _0222FED8 ; =ov18_02245068
	mov r1, #0x20
	bx ip
	; .align 2, 0
_0222FED8: .word ov18_02245068
	arm_func_end ov18_0222FECC

	arm_func_start ov18_0222FEDC
ov18_0222FEDC: ; 0x0222FEDC
	ldr ip, _0222FEE4 ; =ov18_022450D0
	bx ip
	; .align 2, 0
_0222FEE4: .word ov18_022450D0
	arm_func_end ov18_0222FEDC

	.bss


	.global Unk_ov18_022532D4
Unk_ov18_022532D4: ; 0x022532D4
	.space 0x4

