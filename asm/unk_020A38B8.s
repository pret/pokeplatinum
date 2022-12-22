	.include "macros/function.inc"
	.include "include/unk_020A38B8.inc"

	

	.text


	arm_func_start sub_020A38B8
sub_020A38B8: ; 0x020A38B8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r4, _020A3A30 ; =0x0000FFFF
	mov lr, #0
	and ip, lr, #0
	add r5, r4, #0xff0000
	and r2, r2, #1
	mov r6, ip, lsl #2
	and r3, r3, #3
	and r5, r1, r5
	orr r1, r3, r2, lsl #2
	orr r6, r6, r2, lsr #30
	mov r7, ip, lsl #3
	and r2, r0, r4
	orr r0, r1, r5, lsl #3
	orr r1, r0, r2, lsl #27
	mov r3, ip, lsl #0x1b
	orr r3, r3, r2, lsr #5
	orr r7, r7, r5, lsr #29
	orr r0, ip, r6
	orr r0, r7, r0
	orr r0, r3, r0
	add r2, sp, #8
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_020A391C:
	ldrb r0, [r2]
	add lr, lr, #1
	cmp lr, #6
	eor r0, r0, #0xd6
	strb r0, [r2], #1
	blt _020A391C
	ldr r2, _020A3A34 ; =0x020F9540
	add r4, sp, #8
	mov r5, #0
_020A3940:
	ldrb r3, [r4]
	add r5, r5, #1
	cmp r5, #5
	mov r0, r3, asr #4
	and r1, r0, #0xf
	and r0, r3, #0xf
	ldrb r1, [r2, r1]
	ldrb r0, [r2, r0]
	orr r0, r0, r1, lsl #4
	strb r0, [r4], #1
	blt _020A3940
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl MI_CpuCopy8
	ldr r4, _020A3A38 ; =0x020F9538
	add r3, sp, #0
	mov r5, #0
	add r0, sp, #8
_020A398C:
	ldrb r2, [r3], #1
	ldrb r1, [r4], #1
	add r5, r5, #1
	cmp r5, #5
	strb r2, [r0, r1]
	blt _020A398C
	ldrb r2, [sp, #0xd]
	mov r1, #0
	ldr r3, [sp, #8]
	and r2, r2, #7
	strb r1, [sp, #0xf]
	strb r1, [sp, #0xe]
	strb r2, [sp, #0xd]
	ldr r2, [sp, #0xc]
	mov r4, r3, lsl #1
	mov r2, r2, lsl #1
	orr r2, r2, r3, lsr #31
	str r2, [sp, #0xc]
	ldrb r2, [sp, #0xd]
	str r4, [sp, #8]
	ldrb r3, [sp, #8]
	mov r2, r2, asr #3
	and r2, r2, #1
	orr r2, r3, r2
	strb r2, [sp, #8]
_020A39F0:
	ldrb r2, [r0]
	add r1, r1, #1
	cmp r1, #6
	eor r2, r2, #0x67
	strb r2, [r0], #1
	blt _020A39F0
	ldrb r0, [sp, #0xd]
	mov r1, #0
	strb r1, [sp, #0xf]
	and r0, r0, #7
	strb r1, [sp, #0xe]
	strb r0, [sp, #0xd]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A3A30: .word 0x0000FFFF
_020A3A34: .word 0x020F9540
_020A3A38: .word 0x020F9538
	arm_func_end sub_020A38B8

	arm_func_start sub_020A3A3C
sub_020A3A3C: ; 0x020A3A3C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov sl, r0
	bl sub_020A283C
	bl RTC_Init
	add r0, sp, #0x14
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x14
	add r1, sp, #8
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r0, #0
	subs r2, r4, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _020A3AB8
	ldr r0, _020A3C08 ; =OS_GetTick
	adds r4, r4, r0
_020A3AB8:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r5, _020A3C0C ; =0x5D588B65
	ldr r6, _020A3C10 ; =0x00269EC3
	ldrb r1, [sp]
	mla sb, r4, r5, r6
	mov r0, r0, lsl #8
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldr r0, _020A3C14 ; =0x000009BF
	ldrb r7, [sp, #4]
	orr r1, r2, r1
	cmp r1, r0
	mov r2, sb, lsr #0x10
	mov r0, #0x3e8
	mul r3, r2, r0
	mov r2, r3, lsr #0x10
	movne r1, #1
	ldrb r0, [sp, #5]
	ldrb r4, [sp, #3]
	mov r3, r7, lsl #8
	moveq r1, #0
	orr r4, r3, r4, lsl #16
	strh r2, [sl, #0x10]
	mov r3, #0
	str r3, [sl]
	str r3, [sl, #4]
	ldrh r2, [sl, #0x12]
	and r7, r1, #0xff
	orr r8, r0, r4
	str r3, [sl, #8]
	cmp r2, #0
	str r3, [sl, #0xc]
	bne _020A3BA8
	ldr r0, [sl, #8]
	cmp r3, r3
	cmpeq r0, r3
	bne _020A3BFC
	mov fp, r3
	mov r4, r3
_020A3B5C:
	mul r0, sb, r5
	adds sb, r0, r6
	bne _020A3B74
_020A3B68:
	mul r0, sb, r5
	adds sb, r0, r6
	beq _020A3B68
_020A3B74:
	strh sb, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl sub_020A38B8
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, fp
	cmpeq r0, r4
	beq _020A3B5C
	b _020A3BFC
_020A3BA8:
	ldr r0, [sl, #8]
	cmp r3, r3
	cmpeq r0, r3
	bne _020A3BFC
	mov r6, r3
	mov r5, r3
	mov r4, r3
_020A3BC4:
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	add r0, r0, #1
	strh r0, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r3, r6
	bl sub_020A38B8
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, r5
	cmpeq r0, r4
	beq _020A3BC4
_020A3BFC:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A3C08: .word OS_GetTick
_020A3C0C: .word 0x5D588B65
_020A3C10: .word 0x00269EC3
_020A3C14: .word 0x000009BF
	arm_func_end sub_020A3A3C

	arm_func_start sub_020A3C18
sub_020A3C18: ; 0x020A3C18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_020A3A3C
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	mov r1, r4
	bl sub_020A2914
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020A3C18

	arm_func_start sub_020A3C5C
sub_020A3C5C: ; 0x020A3C5C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl sub_020A283C
	add ip, r5, #8
	ldmia ip, {r2, r3}
	stmia r5, {r2, r3}
	add r1, sp, #8
	ldmia r1, {r2, r3}
	mov r0, r5
	mov r1, r4
	stmia ip, {r2, r3}
	bl sub_020A2914
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	arm_func_end sub_020A3C5C

	arm_func_start sub_020A3CAC
sub_020A3CAC: ; 0x020A3CAC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	add r2, sp, #0
	mov r1, #0
	mov sl, r0
	strb r1, [r2]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	strb r1, [r2, #4]
	strb r1, [r2, #5]
	bl sub_020A283C
	bl RTC_Init
	add r0, sp, #0x14
	bl RTC_GetDate
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #8
	bl RTC_GetTime
	cmp r0, #0
	addne sp, sp, #0x24
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x14
	add r1, sp, #8
	bl RTC_ConvertDateTimeToSecond
	mov r4, r0
	mov r0, #0
	subs r2, r4, r0
	sbcs r2, r1, r0
	addlt sp, sp, #0x24
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl OS_IsTickAvailable
	cmp r0, #0
	beq _020A3D48
	ldr r0, _020A3E3C ; =OS_GetTick
	adds r4, r4, r0
_020A3D48:
	add r0, sp, #0
	bl OS_GetMacAddress
	ldrb r0, [sp, #1]
	ldr r5, _020A3E40 ; =0x5D588B65
	ldr r6, _020A3E44 ; =0x00269EC3
	ldrb r1, [sp]
	mov r0, r0, lsl #8
	mla sb, r4, r5, r6
	orr r1, r0, r1, lsl #16
	ldrb r2, [sp, #2]
	ldr r0, _020A3E48 ; =0x000009BF
	ldrb r7, [sp, #4]
	orr r1, r2, r1
	cmp r1, r0
	movne r1, #1
	mov r2, sb, lsr #0x10
	mov r0, #0x3e8
	mul r4, r2, r0
	mov r2, r4, lsr #0x10
	ldrb r0, [sp, #5]
	ldrb r8, [sp, #3]
	mov r4, r7, lsl #8
	moveq r1, #0
	mov r3, #0
	strh r2, [sl, #0x10]
	str r3, [sl, #8]
	str r3, [sl, #0xc]
	orr r4, r4, r8, lsl #16
	ldr r2, [sl, #8]
	cmp r3, #0
	cmpeq r2, #0
	and r7, r1, #0xff
	orr r8, r0, r4
	bne _020A3E30
	mov fp, r3
	mov r4, r3
_020A3DD8:
	mla sb, r5, sb, r6
	b _020A3DE4
_020A3DE0:
	mla sb, r5, sb, r6
_020A3DE4:
	cmp sb, #0
	beq _020A3DE0
	ldrh r2, [sl, #0x12]
	mov r0, sb, lsl #0x10
	mov r1, r0, lsr #0x10
	cmp r2, r0, lsr #16
	beq _020A3DE0
	strh r1, [sl, #0x12]
	ldrh r0, [sl, #0x12]
	mov r1, r8
	mov r2, r7
	mov r3, #0
	bl sub_020A38B8
	str r0, [sl, #8]
	str r1, [sl, #0xc]
	ldr r0, [sl, #8]
	cmp r1, fp
	cmpeq r0, r4
	beq _020A3DD8
_020A3E30:
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A3E3C: .word OS_GetTick
_020A3E40: .word 0x5D588B65
_020A3E44: .word 0x00269EC3
_020A3E48: .word 0x000009BF
	arm_func_end sub_020A3CAC

	arm_func_start sub_020A3E4C
sub_020A3E4C: ; 0x020A3E4C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_020A283C
	add r0, sp, #0
	ldmia r0, {r2, r3}
	stmia r4, {r2, r3}
	add r1, sp, #8
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r0, [sp, #4]
	ldr r1, [sp]
	cmp r0, #0
	mov r0, #0
	cmpeq r1, #0
	movne r0, #1
	str r0, [r4, #0x10]
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end sub_020A3E4C

	arm_func_start sub_020A3EA0
sub_020A3EA0: ; 0x020A3EA0
	stmdb sp!, {lr}
	sub sp, sp, #0x14
	add r0, sp, #0
	bl sub_020A283C
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	cmp r0, #0
	cmpeq r1, #0
	mov r0, #0
	bne _020A3EE4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	cmp r1, r0
	cmpeq r2, r0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {pc}
_020A3EE4:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {pc}
	arm_func_end sub_020A3EA0

	.rodata


	.global Unk_020F9538
Unk_020F9538: ; 0x020F9538
	.incbin "incbin/arm9_rodata.bin", 0x148F8, 0x14900 - 0x148F8

	.global Unk_020F9540
Unk_020F9540: ; 0x020F9540
	.incbin "incbin/arm9_rodata.bin", 0x14900, 0x10

