	.include "macros/function.inc"
	.include "include/unk_020C29C0.inc"

	

	.text


	arm_func_start sub_020C29C0
sub_020C29C0: ; 0x020C29C0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end sub_020C29C0

	arm_func_start sub_020C29D8
sub_020C29D8: ; 0x020C29D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020C2A58 ; =0x021CCC80
	mov r4, r0
	ldr r7, [r1, #4]
	mov r6, #0
_020C29F4:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _020C2A20
	str r7, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r0, r7
	add r2, r1, #1
	mov r1, r5
	str r2, [r5, #0xc]
	bl sub_020C2B68
	b _020C2A4C
_020C2A20:
	cmp r0, r7
	bne _020C2A38
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020C2A4C
_020C2A38:
	mov r0, r5
	str r5, [r7, #0x84]
	bl sub_020C2218
	str r6, [r7, #0x84]
	b _020C29F4
_020C2A4C:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C2A58: .word 0x021CCC80
	arm_func_end sub_020C29D8

	arm_func_start sub_020C2A5C
sub_020C2A5C: ; 0x020C2A5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r1, _020C2AB4 ; =0x021CCC80
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _020C2AA8
	ldr r1, [r5, #0xc]
	subs r1, r1, #1
	str r1, [r5, #0xc]
	bne _020C2AA8
	mov r1, r5
	bl sub_020C2B8C
	mov r1, #0
	mov r0, r5
	str r1, [r5, #8]
	bl sub_020C2268
_020C2AA8:
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C2AB4: .word 0x021CCC80
	arm_func_end sub_020C2A5C

	arm_func_start sub_020C2AB8
sub_020C2AB8: ; 0x020C2AB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x88]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, #0
_020C2AD0:
	add r0, r5, #0x88
	bl sub_020C1C3C
	str r4, [r0, #0xc]
	str r4, [r0, #8]
	bl sub_020C2268
	ldr r0, [r5, #0x88]
	cmp r0, #0
	bne _020C2AD0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C2AB8

	arm_func_start sub_020C2AF4
sub_020C2AF4: ; 0x020C2AF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r2, [r5, #8]
	ldr r1, _020C2B64 ; =0x021CCC80
	mov r4, r0
	cmp r2, #0
	ldr r0, [r1, #4]
	bne _020C2B38
	str r0, [r5, #8]
	ldr r2, [r5, #0xc]
	mov r1, r5
	add r2, r2, #1
	str r2, [r5, #0xc]
	bl sub_020C2B68
	mov r6, #1
	b _020C2B54
_020C2B38:
	cmp r2, r0
	movne r6, #0
	bne _020C2B54
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
_020C2B54:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C2B64: .word 0x021CCC80
	arm_func_end sub_020C2AF4

	arm_func_start sub_020C2B68
sub_020C2B68: ; 0x020C2B68
	ldr r2, [r0, #0x8c]
	cmp r2, #0
	streq r1, [r0, #0x88]
	strne r1, [r2, #0x10]
	str r2, [r1, #0x14]
	mov r2, #0
	str r2, [r1, #0x10]
	str r1, [r0, #0x8c]
	bx lr
	arm_func_end sub_020C2B68

	arm_func_start sub_020C2B8C
sub_020C2B8C: ; 0x020C2B8C
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r2, #0
	streq r1, [r0, #0x8c]
	strne r1, [r2, #0x14]
	cmp r1, #0
	streq r2, [r0, #0x88]
	strne r2, [r1, #0x10]
	bx lr
	arm_func_end sub_020C2B8C