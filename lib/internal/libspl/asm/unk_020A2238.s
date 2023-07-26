	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020A2238
sub_020A2238: ; 0x020A2238
	ldr r3, [r1, #0]
	cmp r3, #0
	bne _020A2278
	ldr r2, [r0, #0]
	cmp r2, r1
	moveq r2, #0
	streq r2, [r0]
	streq r2, [r0, #8]
	beq _020A22A4
	ldr r2, [r1, #4]
	mov r3, #0
	str r3, [r2, #0]
	ldr r2, [r0, #8]
	ldr r2, [r2, #4]
	str r2, [r0, #8]
	b _020A22A4
_020A2278:
	ldr r2, [r0, #0]
	cmp r2, r1
	streq r3, [r0]
	ldreq r2, [r0]
	moveq r3, #0
	streq r3, [r2, #4]
	ldrne r2, [r1, #4]
	strne r2, [r3, #4]
	ldrne r3, [r1]
	ldrne r2, [r1, #4]
	strne r3, [r2]
_020A22A4:
	ldr r2, [r0, #4]
	sub r2, r2, #1
	str r2, [r0, #4]
	mov r0, r1
	bx lr
	arm_func_end sub_020A2238

	arm_func_start sub_020A22B8
sub_020A22B8: ; 0x020A22B8
	ldr r2, [r0, #0]
	mov r3, #0
	mov ip, r3
	cmp r2, #0
	beq _020A22FC
	ldr r1, [r2, #0]
	mov ip, r2
	str r1, [r0, #0]
	ldr r1, [r0, #0]
	cmp r1, #0
	ldrne r1, [r2]
	strne r3, [r1, #4]
	streq r3, [r0]
	streq r3, [r0, #8]
	ldr r1, [r0, #4]
	sub r1, r1, #1
	str r1, [r0, #4]
_020A22FC:
	mov r0, ip
	bx lr
	arm_func_end sub_020A22B8

	arm_func_start sub_020A2304
sub_020A2304: ; 0x020A2304
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _020A232C
	str r1, [r0, #0]
	str r1, [r0, #8]
	mov r2, #0
	str r2, [r1, #0]
	ldr r2, [r1, #0]
	str r2, [r1, #4]
	b _020A2344
_020A232C:
	str r2, [r1, #0]
	mov r2, #0
	str r2, [r1, #4]
	ldr r2, [r0, #0]
	str r1, [r2, #4]
	str r1, [r0, #0]
_020A2344:
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	arm_func_end sub_020A2304