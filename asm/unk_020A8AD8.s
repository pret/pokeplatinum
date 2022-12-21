	.include "macros/function.inc"
	.include "include/unk_020A8AD8.inc"

	

	.text


	arm_func_start sub_020A8AD8
sub_020A8AD8: ; 0x020A8AD8
	ldr r3, [r0, #0]
	cmp r3, #1
	bxne lr
	ldrh r3, [r0, #0x12]
	orr r3, r3, #8
	strh r3, [r0, #0x12]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	arm_func_end sub_020A8AD8

	arm_func_start sub_020A8AFC
sub_020A8AFC: ; 0x020A8AFC
	ldr r2, [r0, #0]
	cmp r2, #1
	bxne lr
	ldrh r2, [r0, #0x12]
	orr r2, r2, #4
	strh r2, [r0, #0x12]
	strh r1, [r0, #0x10]
	bx lr
	arm_func_end sub_020A8AFC

	arm_func_start sub_020A8B1C
sub_020A8B1C: ; 0x020A8B1C
	ldr r3, [r0, #0]
	cmp r3, #1
	bxne lr
	ldrh r3, [r0, #0x12]
	orr r3, r3, #2
	strh r3, [r0, #0x12]
	stmib r0, {r1, r2}
	bx lr
	arm_func_end sub_020A8B1C

	arm_func_start sub_020A8B3C
sub_020A8B3C: ; 0x020A8B3C
	ldr ip, _020A8B48 ; =sub_020A8B4C
	str r1, [r0, #0]
	bx ip
	; .align 2, 0
_020A8B48: .word sub_020A8B4C
	arm_func_end sub_020A8B3C

	arm_func_start sub_020A8B4C
sub_020A8B4C: ; 0x020A8B4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #4
	mov r0, #0
	mov r2, #0x18
	bl sub_020C4AF0
	mov r0, #0x1000
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020A8B4C