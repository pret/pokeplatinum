	.include "macros/function.inc"
	.include "include/unk_020A490C.inc"

	

	.text


	arm_func_start sub_020A490C
sub_020A490C: ; 0x020A490C
	stmfd sp!, {r4, r5, r6, lr}
	mov r3, #0
	str r3, [r0, #0]
	cmp r2, #0x10
	str r3, [r0, #4]
	movhi r2, #0x10
	add r0, r0, #8
_020A4928:
	str r3, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020A4928
	mov r5, #0
	mov r6, r5
	mov lr, r5
	mov ip, r5
_020A4948:
	ldrb r3, [r1, r6]
	ldr r4, [r0, lr, lsl #2]
	add r6, r6, #1
	add r3, r4, r3
	add r3, r5, r3
	and r5, r3, #0xff
	ldr r3, [r0, r5, lsl #2]
	cmp r6, r2
	str r3, [r0, lr, lsl #2]
	add lr, lr, #1
	moveq r6, ip
	str r4, [r0, r5, lsl #2]
	cmp lr, #0x100
	blt _020A4948
	mov r2, #0
_020A4984:
	ldr r1, [r0, r2, lsl #2]
	mov r1, r1, lsl #0x18
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #0x100
	blt _020A4984
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end sub_020A490C

	arm_func_start sub_020A49A4
sub_020A49A4: ; 0x020A49A4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r3, #0
	strb r3, [r0]
	cmp r2, #0x10
	strb r3, [r0, #1]
	movhi r2, #0x10
	add r0, r0, #4
_020A49C4:
	strb r3, [r0, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _020A49C4
	mov r6, #0
	mov r7, r6
	mov r4, r6
	mov r3, r6
	and ip, r2, #0xff
_020A49E8:
	ldrb r5, [r0, r4]
	ldrb lr, [r1, r7]
	add r2, r7, #1
	and r7, r2, #0xff
	add r2, r5, lr
	add r2, r6, r2
	and r6, r2, #0xff
	ldrb r2, [r0, r6]
	add lr, r0, r4
	add r4, r4, #1
	strb r2, [lr]
	cmp r7, ip
	moveq r7, r3
	cmp r4, #0x100
	strb r5, [r0, r6]
	blt _020A49E8
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_020A49A4