	.include "macros/function.inc"
	.include "include/unk_020B2384.inc"

	

	.text


	arm_func_start sub_020B2384
sub_020B2384: ; 0x020B2384
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x6c
	mov r6, r0
	ldr ip, [r6, #0x1c]
	mov r4, r1
	mov r5, r2
	mov r7, r3
	cmp ip, #0x1000
	beq _020B23C4
	add r1, sp, #0xc
	mov r0, #0x1b
	mov r2, #3
	str ip, [sp, #0xc]
	str ip, [sp, #0x10]
	str ip, [sp, #0x14]
	bl sub_020B275C
_020B23C4:
	cmp r7, #0
	beq _020B2570
	ldrb r0, [r6, #0x18]
	cmp r4, r0
	bhs _020B2570
	cmp r6, #0
	ldrne r0, [r6, #8]
	cmpne r0, #0
	addne r3, r6, r0
	moveq r3, #0
	cmp r3, #0
	beq _020B2434
	adds r2, r3, #4
	beq _020B2420
	ldrb r0, [r3, #5]
	cmp r4, r0
	bhs _020B2420
	ldrh r1, [r3, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r4, r1
	b _020B2424
_020B2420:
	mov r1, #0
_020B2424:
	cmp r1, #0
	ldrne r0, [r1]
	addne r4, r3, r0
	bne _020B2438
_020B2434:
	mov r4, #0
_020B2438:
	ldr r0, [r4, #0xc]
	tst r0, #0x1f0000
	addeq sp, sp, #0x6c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _020B261C ; =0x00293130
	str r0, [sp, #0x50]
	ldr r0, [r4, #4]
	str r0, [sp, #0x54]
	ldr r0, [r4, #8]
	str r0, [sp, #0x58]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x5c]
	ldrh r0, [r4, #0x1e]
	tst r0, #0x20
	bicne r0, r1, #0x1f0000
	ldr r1, _020B2620 ; =0x00002B2A
	strne r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r2, [r4, #0x14]
	ldr r0, [sp, #0x50]
	str r2, [sp, #0x64]
	ldrh r3, [r4, #0x1c]
	add r1, sp, #0x54
	mov r2, #6
	str r3, [sp, #0x68]
	bl sub_020B275C
	ldrh r0, [r4, #0x1e]
	tst r0, #1
	beq _020B2570
	mov r2, #8
	str r2, [sp, #0x18]
	ldrh r1, [r4, #0x20]
	add r0, r4, #0x2c
	strh r1, [sp, #0x44]
	ldrh r1, [r4, #0x22]
	strh r1, [sp, #0x46]
	ldr r1, [r4, #0x24]
	str r1, [sp, #0x48]
	ldr r1, [r4, #0x28]
	str r1, [sp, #0x4c]
	ldrh r1, [r4, #0x1e]
	tst r1, #2
	orrne r1, r2, #1
	strne r1, [sp, #0x18]
	bne _020B2500
	ldr r1, [r0, #0]
	str r1, [sp, #0x30]
	ldr r1, [r0, #4]
	add r0, r0, #8
	str r1, [sp, #0x34]
_020B2500:
	ldrh r1, [r4, #0x1e]
	tst r1, #4
	ldrne r1, [sp, #0x18]
	orrne r1, r1, #2
	strne r1, [sp, #0x18]
	bne _020B252C
	ldrsh r1, [r0]
	strh r1, [sp, #0x38]
	ldrsh r1, [r0, #2]
	add r0, r0, #4
	strh r1, [sp, #0x3a]
_020B252C:
	ldrh r1, [r4, #0x1e]
	tst r1, #8
	ldrne r0, [sp, #0x18]
	orrne r0, r0, #4
	strne r0, [sp, #0x18]
	bne _020B2554
	ldr r1, [r0, #0]
	str r1, [sp, #0x3c]
	ldr r0, [r0, #4]
	str r0, [sp, #0x40]
_020B2554:
	ldrb r1, [r6, #0x16]
	ldr r0, _020B2624 ; =0x02100F54
	ldr r1, [r0, r1, lsl #2]
	cmp r1, #0
	beq _020B2570
	add r0, sp, #0x18
	blx r1
_020B2570:
	ldrb r0, [r6, #0x19]
	cmp r5, r0
	bhs _020B25E8
	cmp r6, #0
	ldrne r0, [r6, #0xc]
	cmpne r0, #0
	addne r2, r6, r0
	moveq r2, #0
	cmp r2, #0
	beq _020B25D4
	beq _020B25C0
	ldrb r0, [r2, #1]
	cmp r5, r0
	bhs _020B25C0
	ldrh r1, [r2, #6]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _020B25C4
_020B25C0:
	mov r1, #0
_020B25C4:
	cmp r1, #0
	ldrne r0, [r1]
	addne r2, r2, r0
	bne _020B25D8
_020B25D4:
	mov r2, #0
_020B25D8:
	ldr r0, [r2, #8]
	ldr r1, [r2, #0xc]
	add r0, r2, r0
	bl sub_020B26A8
_020B25E8:
	ldr r3, [r6, #0x20]
	cmp r3, #0x1000
	addeq sp, sp, #0x6c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, #0x1b
	mov r2, #3
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	bl sub_020B275C
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020B261C: .word 0x00293130
_020B2620: .word 0x00002B2A
_020B2624: .word 0x02100F54
	arm_func_end sub_020B2384