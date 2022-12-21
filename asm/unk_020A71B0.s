	.include "macros/function.inc"
	.include "include/unk_020A71B0.inc"

	

	.text


	arm_func_start sub_020A71B0
sub_020A71B0: ; 0x020A71B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A71E8 ; =0x504C5454
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A7238
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A71E8: .word 0x504C5454
	arm_func_end sub_020A71B0

	arm_func_start sub_020A71EC
sub_020A71EC: ; 0x020A71EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A7224 ; =0x50434D50
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A7228
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7224: .word 0x50434D50
	arm_func_end sub_020A71EC

	arm_func_start sub_020A7228
sub_020A7228: ; 0x020A7228
	ldr r1, [r0, #4]
	add r1, r1, r0
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020A7228

	arm_func_start sub_020A7238
sub_020A7238: ; 0x020A7238
	ldr r1, [r0, #0xc]
	add r1, r1, r0
	str r1, [r0, #0xc]
	bx lr
	arm_func_end sub_020A7238