	.include "macros/function.inc"
	.include "include/scrollbar.inc"

	

	.extern Unk_ov18_02249734
	.text


	arm_func_start ov18_0223D218
ov18_0223D218: ; 0x0223D218
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	mov r7, r1
	mov r0, #0x20
	mov r1, #4
	mov r5, r2
	mov r4, r3
	bl ov18_02245068
	ldr r2, _0223D2E4 ; =0x0225337C
	ldr ip, [sp, #0x18]
	str r0, [r2, #0]
	strb r6, [r0, #0x1b]
	ldr r1, [r2, #0]
	mov r0, r5
	strb r7, [r1, #0x19]
	ldr r3, [r2, #0]
	mov r1, r4
	strb ip, [r3, #0x1a]
	ldr r2, [r2, #0]
	add r2, r2, #0x10
	bl ov18_02244C2C
	ldr r1, _0223D2E8 ; =0x0224956C
	mov r0, #0
	ldrb r1, [r1, r6]
	mov r2, #1
	bl ov18_02243F8C
	mov r2, r5
	ldr r5, _0223D2E4 ; =0x0225337C
	ldr r3, [sp, #0x18]
	ldr r6, [r5, #0]
	mvn r1, #0
	str r0, [r6, #0]
	ldr r0, [r5, #0]
	add r3, r4, r3
	ldr r0, [r0, #0]
	bl ov18_02243CF4
	mov r0, r5
	ldr r0, [r0, #0]
	mvn r1, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl ov18_02243DE4
	mov r0, #0
	ldr r1, _0223D2EC ; =ov18_0223D390
	mov r2, r0
	mov r3, #0x80
	bl ov18_02246304
	mov r1, r5
	ldr r1, [r1, #0]
	str r0, [r1, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D2E4: .word Unk_ov18_0225337C
_0223D2E8: .word Unk_ov18_0224956C
_0223D2EC: .word ov18_0223D390
	arm_func_end ov18_0223D218

	arm_func_start ov18_0223D2F0
ov18_0223D2F0: ; 0x0223D2F0
	stmfd sp!, {r3, lr}
	ldr r1, _0223D324 ; =0x0225337C
	mov r0, #0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	bl ov18_022463CC
	ldr r0, _0223D324 ; =0x0225337C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov18_02243B3C
	ldr r0, _0223D328 ; =0x0225337C
	bl ov18_0224508C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223D324: .word Unk_ov18_0225337C
_0223D328: .word Unk_ov18_0225337C
	arm_func_end ov18_0223D2F0

	arm_func_start ov18_0223D32C
ov18_0223D32C: ; 0x0223D32C
	ldr r0, _0223D33C ; =0x0225337C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x1a]
	bx lr
	; .align 2, 0
_0223D33C: .word Unk_ov18_0225337C
	arm_func_end ov18_0223D32C

	arm_func_start ov18_0223D340
ov18_0223D340: ; 0x0223D340
	ldr r0, _0223D350 ; =0x0225337C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x1d]
	bx lr
	; .align 2, 0
_0223D350: .word Unk_ov18_0225337C
	arm_func_end ov18_0223D340

	arm_func_start ov18_0223D354
ov18_0223D354: ; 0x0223D354
	ldr ip, _0223D35C ; =ov18_0223D8A0
	bx ip
	; .align 2, 0
_0223D35C: .word ov18_0223D8A0
	arm_func_end ov18_0223D354

	arm_func_start ov18_0223D360
ov18_0223D360: ; 0x0223D360
	ldr r0, _0223D374 ; =0x0225337C
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x1e]
	bx lr
	; .align 2, 0
_0223D374: .word Unk_ov18_0225337C
	arm_func_end ov18_0223D360

	arm_func_start ov18_0223D378
ov18_0223D378: ; 0x0223D378
	ldr r0, _0223D38C ; =0x0225337C
	mov r1, #1
	ldr r0, [r0, #0]
	strb r1, [r0, #0x1e]
	bx lr
	; .align 2, 0
_0223D38C: .word Unk_ov18_0225337C
	arm_func_end ov18_0223D378

	arm_func_start ov18_0223D390
ov18_0223D390: ; 0x0223D390
	stmfd sp!, {r3, lr}
	ldr r0, _0223D510 ; =0x0225337C
	mov r2, #0
	ldr r1, [r0, #0]
	strb r2, [r1, #0x1d]
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x1c]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_0223D3B8: ; jump table
	b _0223D3C8 ; case 0
	b _0223D478 ; case 1
	b _0223D480 ; case 2
	b _0223D4C8 ; case 3
_0223D3C8:
	ldrb r0, [r1, #0x1e]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0223D6F0
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_0223D3E4: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _0223D3F8 ; case 1
	b _0223D458 ; case 2
	b _0223D464 ; case 3
	b _0223D470 ; case 4
_0223D3F8:
	ldr r0, _0223D510 ; =0x0225337C
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0x1b]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0x16
	bl ov18_0223E994
	mov r0, #0
	bl ov18_0223E9B8
	ldr r0, _0223D510 ; =0x0225337C
	mov r2, #1
	ldr r1, [r0, #0]
	strb r2, [r1, #0x1d]
	ldr r0, [r0, #0]
	add r0, r0, #0x14
	bl ov18_022457B8
	ldr r0, _0223D510 ; =0x0225337C
	mov r1, #1
	ldr r3, [r0, #0]
	ldrb r2, [r3, #0x1a]
	strb r2, [r3, #0x18]
	ldr r0, [r0, #0]
	strb r1, [r0, #0x1c]
	ldmia sp!, {r3, pc}
_0223D458:
	mov r0, #2
	bl ov18_0223D65C
	ldmia sp!, {r3, pc}
_0223D464:
	mov r0, #3
	bl ov18_0223D65C
	ldmia sp!, {r3, pc}
_0223D470:
	bl ov18_0223D688
	ldmia sp!, {r3, pc}
_0223D478:
	bl ov18_0223D514
	ldmia sp!, {r3, pc}
_0223D480:
	mov r0, #2
	bl ov18_0223D77C
	cmp r0, #2
	beq _0223D4B0
	ldr r0, _0223D510 ; =0x0225337C
	mov r3, #5
	ldr r2, [r0, #0]
	mov r1, #0
	strb r3, [r2, #0x1d]
	ldr r0, [r0, #0]
	strb r1, [r0, #0x1c]
	ldmia sp!, {r3, pc}
_0223D4B0:
	bl ov18_0223D6F0
	cmp r0, #2
	ldmneia sp!, {r3, pc}
	mov r0, #2
	bl ov18_0223D65C
	ldmia sp!, {r3, pc}
_0223D4C8:
	mov r0, #3
	bl ov18_0223D77C
	cmp r0, #3
	beq _0223D4F8
	ldr r0, _0223D510 ; =0x0225337C
	mov r3, #7
	ldr r2, [r0, #0]
	mov r1, #0
	strb r3, [r2, #0x1d]
	ldr r0, [r0, #0]
	strb r1, [r0, #0x1c]
	ldmia sp!, {r3, pc}
_0223D4F8:
	bl ov18_0223D6F0
	cmp r0, #3
	ldmneia sp!, {r3, pc}
	mov r0, #3
	bl ov18_0223D65C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223D510: .word Unk_ov18_0225337C
	arm_func_end ov18_0223D390

	arm_func_start ov18_0223D514
ov18_0223D514: ; 0x0223D514
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _0223D5D8 ; =0x02249734
	bl ov18_02245530
	cmp r0, #0
	beq _0223D5B0
	add r0, sp, #0
	bl ov18_022457B8
	ldr r0, _0223D5DC ; =0x0225337C
	ldrh r1, [sp]
	ldr r3, [r0, #0]
	ldrh r0, [r3, #0x10]
	sub r0, r0, #0x1e
	cmp r1, r0
	blt _0223D5B0
	ldrh r1, [sp, #2]
	ldrh r0, [r3, #0x16]
	ldrb r2, [r3, #0x18]
	sub r0, r1, r0
	adds r4, r2, r0
	movmi r4, #0
	bmi _0223D588
	ldrb r1, [r3, #0x1b]
	ldr r0, _0223D5E0 ; =0x02249570
	ldrb r2, [r3, #0x19]
	ldrb r0, [r0, r1]
	sub r0, r2, r0
	cmp r4, r0
	movge r4, r0
_0223D588:
	mov r0, r4
	bl ov18_0223D5E4
	mov r0, r4
	bl ov18_0223D8A0
	ldr r0, _0223D5DC ; =0x0225337C
	mov r1, #2
	ldr r0, [r0, #0]
	add sp, sp, #4
	strb r1, [r0, #0x1d]
	ldmia sp!, {r3, r4, pc}
_0223D5B0:
	bl ov18_0223E9FC
	ldr r0, _0223D5DC ; =0x0225337C
	mov r3, #0
	ldr r2, [r0, #0]
	mov r1, #3
	strb r3, [r2, #0x1c]
	ldr r0, [r0, #0]
	strb r1, [r0, #0x1d]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0223D5D8: .word Unk_ov18_02249734
_0223D5DC: .word Unk_ov18_0225337C
_0223D5E0: .word Unk_ov18_02249570
	arm_func_end ov18_0223D514

	arm_func_start ov18_0223D5E4
ov18_0223D5E4: ; 0x0223D5E4
	stmfd sp!, {r4, lr}
	ldr r1, _0223D654 ; =0x0225337C
	ldr r1, [r1, #0]
	ldrb r1, [r1, #0x1a]
	subs r4, r1, r0
	rsbmi r4, r4, #0
	cmp r4, #2
	movlt r0, #0
	blt _0223D61C
	cmp r4, #6
	mov r0, #0x7f
	bge _0223D61C
	rsb r1, r4, #6
	bl FX_DivS32
_0223D61C:
	bl ov18_0223E9B8
	cmp r4, #2
	mvnlt r1, #0xff
	blt _0223D648
	cmp r4, #6
	movge r1, #0x100
	bge _0223D648
	rsb r1, r4, #6
	mov r0, #0x200
	bl FX_DivS32
	sub r1, r0, #0x100
_0223D648:
	ldr r0, _0223D658 ; =0x0000FFFF
	bl ov18_0223E9D8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223D654: .word Unk_ov18_0225337C
_0223D658: .word 0x0000FFFF
	arm_func_end ov18_0223D5E4

	arm_func_start ov18_0223D65C
ov18_0223D65C: ; 0x0223D65C
	ldr r1, _0223D684 ; =0x0225337C
	cmp r0, #2
	ldr r1, [r1, #0]
	strb r0, [r1, #0x1c]
	ldr r0, _0223D684 ; =0x0225337C
	moveq r1, #4
	ldr r0, [r0, #0]
	movne r1, #6
	strb r1, [r0, #0x1d]
	bx lr
	; .align 2, 0
_0223D684: .word Unk_ov18_0225337C
	arm_func_end ov18_0223D65C

	arm_func_start ov18_0223D688
ov18_0223D688: ; 0x0223D688
	stmfd sp!, {r3, lr}
	add r0, sp, #0
	bl ov18_022457B8
	ldr r0, _0223D6E8 ; =0x0225337C
	ldr r2, _0223D6EC ; =0x02249570
	ldr ip, [r0]
	ldrh r1, [sp, #2]
	ldrb r3, [ip, #0x1b]
	ldrh r0, [ip, #0x12]
	ldrb r2, [r2, r3]
	sub r0, r1, r0
	subs r0, r0, r2, lsr #1
	movmi r0, #0
	bmi _0223D6D0
	ldrb r1, [ip, #0x19]
	sub r1, r1, r2
	cmp r0, r1
	movge r0, r1
_0223D6D0:
	bl ov18_0223D8A0
	ldr r0, _0223D6E8 ; =0x0225337C
	mov r1, #3
	ldr r0, [r0, #0]
	strb r1, [r0, #0x1d]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223D6E8: .word Unk_ov18_0225337C
_0223D6EC: .word Unk_ov18_02249570
	arm_func_end ov18_0223D688

	arm_func_start ov18_0223D6F0
ov18_0223D6F0: ; 0x0223D6F0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r1, sp, #0
	mov r0, #1
	bl ov18_0223D7C8
	add r0, sp, #0
	bl ov18_02245640
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r5, #2
	add r4, sp, #0
_0223D724:
	mov r0, r5
	mov r1, r4
	bl ov18_0223D7C8
	mov r0, r4
	bl ov18_02245640
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmneia sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #3
	ble _0223D724
	add r1, sp, #0
	mov r0, #4
	bl ov18_0223D7C8
	add r0, sp, #0
	bl ov18_022455B8
	cmp r0, #0
	movne r0, #4
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov18_0223D6F0

	arm_func_start ov18_0223D77C
ov18_0223D77C: ; 0x0223D77C
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, #2
	add r4, sp, #0
_0223D78C:
	mov r0, r5
	mov r1, r4
	bl ov18_0223D7C8
	mov r0, r4
	bl ov18_02245530
	cmp r0, #0
	addne sp, sp, #8
	movne r0, r5
	ldmneia sp!, {r3, r4, r5, pc}
	add r5, r5, #1
	cmp r5, #3
	ble _0223D78C
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov18_0223D77C

	arm_func_start ov18_0223D7C8
ov18_0223D7C8: ; 0x0223D7C8
	ldr r2, _0223D898 ; =0x0225337C
	cmp r0, #4
	ldr r3, [r2, #0]
	ldrh r3, [r3, #0x10]
	strh r3, [r1]
	add r3, r3, #0xc
	strh r3, [r1, #4]
	addls pc, pc, r0, lsl #2
	bx lr
_0223D7EC: ; jump table
	bx lr ; case 0
	b _0223D800 ; case 1
	b _0223D834 ; case 2
	b _0223D854 ; case 3
	b _0223D878 ; case 4
_0223D800:
	ldr r3, [r2, #0]
	ldr r0, _0223D89C ; =0x02249570
	ldrh ip, [r3, #0x12]
	ldrb r3, [r3, #0x1a]
	add r3, ip, r3
	strh r3, [r1, #2]
	ldr r2, [r2, #0]
	ldrh r3, [r1, #2]
	ldrb r2, [r2, #0x1b]
	ldrb r0, [r0, r2]
	add r0, r3, r0
	strh r0, [r1, #6]
	bx lr
_0223D834:
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0x12]
	sub r0, r0, #0xd
	strh r0, [r1, #2]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0x12]
	strh r0, [r1, #6]
	bx lr
_0223D854:
	ldr r0, [r2, #0]
	ldrh r2, [r0, #0x12]
	ldrb r0, [r0, #0x19]
	add r0, r2, r0
	strh r0, [r1, #2]
	ldrh r0, [r1, #2]
	add r0, r0, #0xd
	strh r0, [r1, #6]
	bx lr
_0223D878:
	ldr r0, [r2, #0]
	ldrh r3, [r0, #0x12]
	strh r3, [r1, #2]
	ldr r0, [r2, #0]
	ldrb r0, [r0, #0x19]
	add r0, r3, r0
	strh r0, [r1, #6]
	bx lr
	; .align 2, 0
_0223D898: .word Unk_ov18_0225337C
_0223D89C: .word Unk_ov18_02249570
	arm_func_end ov18_0223D7C8

	arm_func_start ov18_0223D8A0
ov18_0223D8A0: ; 0x0223D8A0
	stmfd sp!, {r4, lr}
	ldr r1, _0223D8D8 ; =0x0225337C
	mov r4, r0
	ldr r0, [r1, #0]
	mvn r1, #0
	ldrh r3, [r0, #0x12]
	ldrh r2, [r0, #0x10]
	ldr r0, [r0, #0]
	add r3, r4, r3
	bl ov18_02243CF4
	ldr r0, _0223D8D8 ; =0x0225337C
	ldr r0, [r0, #0]
	strb r4, [r0, #0x1a]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223D8D8: .word Unk_ov18_0225337C
	arm_func_end ov18_0223D8A0

	.rodata


	.global Unk_ov18_0224956C
Unk_ov18_0224956C: ; 0x0224956C
	.incbin "incbin/overlay18_rodata.bin", 0x3138, 0x313C - 0x3138

	.global Unk_ov18_02249570
Unk_ov18_02249570: ; 0x02249570
	.incbin "incbin/overlay18_rodata.bin", 0x313C, 0x3



	.bss


	.global Unk_ov18_0225337C
Unk_ov18_0225337C: ; 0x0225337C
	.space 0x4

