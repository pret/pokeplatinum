	.include "macros/function.inc"
	.include "include/unk_020A6F08.inc"

	

	.text


	arm_func_start sub_020A6F08
sub_020A6F08: ; 0x020A6F08
	ldrh r1, [r0, #2]
	tst r1, #1
	ldrh r1, [r0]
	ldrne r0, [r0, #4]
	addne r0, r0, r1, lsl #4
	ldreq r0, [r0, #4]
	addeq r0, r0, r1, lsl #3
	bx lr
	arm_func_end sub_020A6F08

	arm_func_start sub_020A6F28
sub_020A6F28: ; 0x020A6F28
	ldr ip, _020A6F34 ; =sub_020A72C4
	add r0, r0, #8
	bx ip
	; .align 2, 0
_020A6F34: .word sub_020A72C4
	arm_func_end sub_020A6F28

	arm_func_start sub_020A6F38
sub_020A6F38: ; 0x020A6F38
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r1, _020A6F70 ; =0x4345424B
	bl sub_020A727C
	movs r4, r0
	moveq r0, #0
	streq r0, [r5]
	ldmeqia sp!, {r3, r4, r5, pc}
	add r0, r4, #8
	bl sub_020A6F9C
	add r0, r4, #8
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6F70: .word 0x4345424B
	arm_func_end sub_020A6F38

	arm_func_start sub_020A6F74
sub_020A6F74: ; 0x020A6F74
	ldrh r2, [r0]
	cmp r1, r2
	movhs r0, #0
	bxhs lr
	ldrh r2, [r0, #2]
	ldr r0, [r0, #4]
	tst r2, #1
	addne r0, r0, r1, lsl #4
	addeq r0, r0, r1, lsl #3
	bx lr
	arm_func_end sub_020A6F74

	arm_func_start sub_020A6F9C
sub_020A6F9C: ; 0x020A6F9C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r1, [r5, #4]
	add r1, r1, r5
	str r1, [r5, #4]
	bl sub_020A6F08
	ldrh r1, [r5]
	mov r4, r0
	mov r6, #0
	cmp r1, #0
	bls _020A6FF8
_020A6FC8:
	mov r0, r5
	mov r1, r6
	bl sub_020A6F74
	ldr r2, [r0, #4]
	add r1, r6, #1
	add r2, r2, r4
	str r2, [r0, #4]
	mov r0, r1, lsl #0x10
	ldrh r1, [r5]
	mov r6, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020A6FC8
_020A6FF8:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _020A701C
	add r1, r0, r5
	str r1, [r5, #0xc]
	ldr r0, [r1, #4]
	add r0, r0, r1
	str r0, [r1, #4]
	str r1, [r5, #0xc]
_020A701C:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r0, r5
	str r0, [r5, #0x14]
	bl sub_020A6F28
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020A6F9C