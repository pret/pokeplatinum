	.include "macros/function.inc"
	.include "include/ov63_0222D1C0.inc"

	

	.text


	thumb_func_start ov63_0222D1C0
ov63_0222D1C0: ; 0x0222D1C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	add r0, r3, #0
	mov r1, #0x1c
	add r5, r2, #0
	str r3, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x1c
	mov r0, #0
_0222D1DC:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0222D1DC
	str r6, [r4, #0]
	str r7, [r4, #4]
	ldrb r0, [r5]
	add r2, r5, #0
	str r0, [r4, #0x10]
	ldrb r1, [r5, #1]
	str r1, [r4, #0x14]
	ldr r0, [r4, #4]
	bl ov63_0222D31C
	ldr r0, [sp, #4]
	add r3, r4, #0
	str r0, [sp]
	ldrb r0, [r5, #8]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #0xa]
	add r3, #0xc
	bl sub_02006F6C
	str r0, [r4, #8]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D1C0

	thumb_func_start ov63_0222D214
ov63_0222D214: ; 0x0222D214
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D214

	thumb_func_start ov63_0222D228
ov63_0222D228: ; 0x0222D228
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	bl ov63_0222D1B0
	add r5, r0, #0
	add r0, r4, #0
	bl ov63_0222D1B8
	add r4, r0, #0
	ldr r0, [r6, #0x10]
	cmp r0, #0
	bne _0222D2A8
	cmp r5, #0
	ble _0222D25C
	lsl r0, r5, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222D26A
_0222D25C:
	lsl r0, r5, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222D26A:
	add r7, r0, #0
	cmp r4, #0
	ble _0222D282
	lsl r0, r4, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222D290
_0222D282:
	lsl r0, r4, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222D290:
	bl sub_020E1740
	str r0, [sp]
	add r0, r7, #0
	bl sub_020E1740
	add r2, r0, #0
	ldr r0, [r6, #0]
	ldr r1, [sp]
	bl sub_0200962C
	b _0222D30E
_0222D2A8:
	cmp r5, #0
	ble _0222D2BE
	lsl r0, r5, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222D2CC
_0222D2BE:
	lsl r0, r5, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222D2CC:
	add r7, r0, #0
	cmp r4, #0
	ble _0222D2E4
	lsl r0, r4, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222D2F2
_0222D2E4:
	lsl r0, r4, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222D2F2:
	bl sub_020E1740
	str r0, [sp, #4]
	add r0, r7, #0
	bl sub_020E1740
	mov r2, #3
	add r3, r0, #0
	lsl r2, r2, #0x12
	ldr r0, [r6, #0]
	ldr r1, [sp, #4]
	add r2, r3, r2
	bl sub_0200964C
_0222D30E:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov63_0222D378
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222D228

	thumb_func_start ov63_0222D31C
ov63_0222D31C: ; 0x0222D31C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	ldr r6, _0222D374 ; =0x0222DCB4
	add r5, r0, #0
	add r4, r1, #0
	ldmia r6!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldrb r1, [r2, #2]
	add r0, sp, #0
	strb r1, [r0, #0x11]
	ldrb r1, [r2, #3]
	strb r1, [r0, #0x12]
	ldrb r1, [r2, #4]
	strb r1, [r0, #0x13]
	ldrb r1, [r2, #5]
	strb r1, [r0, #0x14]
	ldrb r1, [r2, #6]
	strb r1, [r0, #0x15]
	mov r1, #0
	strb r1, [r0, #0x16]
	ldrb r0, [r2, #7]
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl sub_02019044
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_0222D374: .word 0x0222DCB4
	thumb_func_end ov63_0222D31C

	thumb_func_start ov63_0222D378
ov63_0222D378: ; 0x0222D378
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	asr r0, r1, #2
	lsr r0, r0, #0x1d
	add r0, r1, r0
	lsl r0, r0, #0xd
	asr r3, r0, #0x10
	asr r0, r2, #2
	lsr r0, r0, #0x1d
	add r0, r2, r0
	lsr r4, r1, #0x1f
	lsl r6, r1, #0x1d
	sub r6, r6, r4
	mov r1, #0x1d
	ror r6, r1
	add r4, r4, r6
	lsl r4, r4, #0x10
	asr r6, r4, #0x10
	lsr r4, r2, #0x1f
	lsl r2, r2, #0x1d
	sub r2, r2, r4
	ror r2, r1
	add r1, r4, r2
	lsl r1, r1, #0x10
	asr r4, r1, #0x10
	lsl r0, r0, #0xd
	ldrh r1, [r5, #0x18]
	asr r0, r0, #0x10
	cmp r3, r1
	bne _0222D3BC
	ldrh r1, [r5, #0x1a]
	cmp r0, r1
	beq _0222D3E4
_0222D3BC:
	strh r3, [r5, #0x18]
	strh r0, [r5, #0x1a]
	neg r0, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	neg r3, r3
	lsl r3, r3, #0x10
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0xc]
	asr r3, r3, #0x10
	bl ov63_0222D408
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C3C0
_0222D3E4:
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #0
	add r3, r6, #0
	bl sub_0201C63C
	ldr r1, [r5, #0x14]
	ldr r0, [r5, #4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #3
	add r3, r4, #0
	bl sub_0201C63C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov63_0222D378

	thumb_func_start ov63_0222D408
ov63_0222D408: ; 0x0222D408
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x1c]
	add r0, r2, #0
	ldrh r0, [r0]
	ldr r4, [sp, #0x50]
	add r5, r3, #0
	lsl r0, r0, #0xd
	asr r0, r0, #0x10
	str r0, [sp, #0x34]
	add r0, r2, #0
	ldrh r0, [r0, #2]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	lsl r0, r0, #0xd
	asr r0, r0, #0x10
	str r0, [sp, #0x30]
	cmp r5, #0
	bge _0222D438
	neg r0, r5
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x2c]
	b _0222D43C
_0222D438:
	mov r0, #0
	str r0, [sp, #0x2c]
_0222D43C:
	cmp r4, #0
	bge _0222D44A
	neg r0, r4
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0x28]
	b _0222D44E
_0222D44A:
	mov r0, #0
	str r0, [sp, #0x28]
_0222D44E:
	cmp r5, #0
	bgt _0222D454
	mov r5, #0
_0222D454:
	cmp r4, #0
	bgt _0222D45A
	mov r4, #0
_0222D45A:
	mov r0, #0x21
	sub r0, r0, r5
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0x19
	sub r0, r0, r4
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	ldr r0, [sp, #0x2c]
	add r1, r0, r7
	ldr r0, [sp, #0x34]
	cmp r0, r1
	bge _0222D47C
	sub r0, r1, r0
	sub r0, r7, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
_0222D47C:
	ldr r0, [sp, #0x28]
	add r1, r0, r6
	ldr r0, [sp, #0x30]
	cmp r0, r1
	bge _0222D48E
	sub r0, r1, r0
	sub r0, r6, r0
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
_0222D48E:
	mov r2, #0
	str r2, [sp]
	mov r0, #0x21
	str r0, [sp, #4]
	mov r0, #0x19
	ldr r1, [sp, #0x20]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x1c]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019CB8
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x24]
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	lsl r2, r5, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	lsl r3, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	lsr r1, r1, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl ov63_0222D4F8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222D408

	thumb_func_start ov63_0222D4F8
ov63_0222D4F8: ; 0x0222D4F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #0x1c]
	str r1, [sp, #0x20]
	ldr r0, [sp, #0x70]
	str r3, [sp, #0x24]
	str r0, [sp, #0x70]
	ldr r0, [sp, #0x78]
	add r4, r2, #0
	str r0, [sp, #0x78]
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x80]
	ldr r0, [sp, #0x7c]
	ldr r1, [sp, #0x80]
	bl ov63_0222D688
	str r0, [sp, #0x40]
	cmp r0, #0
	add r1, sp, #0x58
	bne _0222D550
	ldrb r0, [r1, #0x10]
	add r2, r4, #0
	str r0, [sp]
	ldrb r0, [r1, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x70]
	str r0, [sp, #8]
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x78]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x7c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_020198E8
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
_0222D550:
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x48]
	cmp r0, #0
	bgt _0222D55C
	b _0222D682
_0222D55C:
	mov r0, #0x10
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x3c]
	mov r0, #0x1c
	ldrsb r0, [r1, r0]
	str r0, [sp, #0x38]
	lsl r0, r4, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x34]
_0222D56E:
	ldr r0, [sp, #0x78]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	ldr r1, [sp, #0x48]
	add r1, r0, r1
	cmp r1, #0x20
	bgt _0222D58E
	ldr r1, [sp, #0x48]
	str r1, [sp, #0x44]
	mov r1, #0
	str r1, [sp, #0x48]
	b _0222D5A2
_0222D58E:
	mov r1, #0x20
	sub r1, r1, r0
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	str r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	sub r1, r2, r1
	lsl r1, r1, #0x18
	asr r1, r1, #0x18
	str r1, [sp, #0x48]
_0222D5A2:
	ldr r1, [sp, #0x78]
	ldr r4, [sp, #0x3c]
	lsl r1, r1, #0x13
	asr r2, r1, #0x18
	add r1, r4, #0
	ldr r5, [sp, #0x38]
	ldr r7, [sp, #0x34]
	cmp r1, #0
	ble _0222D662
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0x30]
	ldr r1, [sp, #0x44]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsr r0, r0, #0x18
	str r1, [sp, #0x2c]
	str r0, [sp, #0x4c]
_0222D5C8:
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	add r0, r2, r1
	str r0, [sp, #0x28]
	add r0, r0, r4
	cmp r0, #0x20
	bgt _0222D5E2
	add r6, r4, #0
	mov r4, #0
	b _0222D5F2
_0222D5E2:
	ldr r0, [sp, #0x28]
	mov r1, #0x20
	sub r0, r1, r0
	lsl r0, r0, #0x18
	asr r6, r0, #0x18
	sub r0, r4, r6
	lsl r0, r0, #0x18
	asr r4, r0, #0x18
_0222D5F2:
	ldr r0, [sp, #0x7c]
	asr r1, r5, #4
	str r0, [sp]
	ldr r0, [sp, #0x80]
	lsr r1, r1, #0x1b
	add r1, r5, r1
	str r0, [sp, #4]
	add r0, sp, #0x50
	str r0, [sp, #8]
	lsl r1, r1, #0x13
	asr r1, r1, #0x18
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x70]
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x40]
	lsr r1, r1, #0x18
	bl ov63_0222D6BC
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x2c]
	lsl r2, r7, #0x18
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	add r1, sp, #0x50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x4c]
	lsr r2, r2, #0x18
	str r0, [sp, #0x10]
	mov r0, #0
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	ldr r3, [sp, #0x24]
	bl sub_020198E8
	add r0, r5, r6
	lsl r0, r0, #0x18
	asr r5, r0, #0x18
	add r0, r7, r6
	lsl r0, r0, #0x18
	asr r7, r0, #0x18
	cmp r4, #0
	bgt _0222D5C8
_0222D662:
	ldr r1, [sp, #0x78]
	ldr r0, [sp, #0x44]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x78]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x44]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x48]
	cmp r0, #0
	ble _0222D682
	b _0222D56E
_0222D682:
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D4F8

	thumb_func_start ov63_0222D688
ov63_0222D688: ; 0x0222D688
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0x40
	bls _0222D696
	bl sub_02022974
_0222D696:
	cmp r4, #0x40
	bls _0222D69E
	bl sub_02022974
_0222D69E:
	cmp r5, #0x20
	bhi _0222D6AE
	cmp r4, #0x20
	bhi _0222D6AA
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222D6AA:
	mov r0, #2
	pop {r3, r4, r5, pc}
_0222D6AE:
	cmp r4, #0x20
	bhi _0222D6B6
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222D6B6:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov63_0222D688

	thumb_func_start ov63_0222D6BC
ov63_0222D6BC: ; 0x0222D6BC
	push {r4, r5, r6, lr}
	add r5, r3, #0
	add r6, r2, #0
	ldr r4, [sp, #0x10]
	ldr r3, [sp, #0x14]
	ldr r2, [sp, #0x18]
	cmp r5, #3
	bhi _0222D770
	add r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsl r5, r5, #0x10
	asr r5, r5, #0x10
	add pc, r5
_0222D6D8: ; jump table
	.short _0222D6E0 - _0222D6D8 - 2 ; case 0
	.short _0222D6E6 - _0222D6D8 - 2 ; case 1
	.short _0222D704 - _0222D6D8 - 2 ; case 2
	.short _0222D722 - _0222D6D8 - 2 ; case 3
_0222D6E0:
	strh r4, [r2]
	strh r3, [r2, #2]
	pop {r4, r5, r6, pc}
_0222D6E6:
	add r5, r1, #1
	lsl r5, r5, #5
	cmp r5, r4
	bgt _0222D6F2
	mov r4, #0x20
	b _0222D6F6
_0222D6F2:
	lsl r5, r1, #5
	sub r4, r4, r5
_0222D6F6:
	strh r4, [r2]
	strh r3, [r2, #2]
	lsl r2, r3, #0x16
	asr r2, r2, #0x10
	mul r2, r1
	add r0, r0, r2
	pop {r4, r5, r6, pc}
_0222D704:
	add r1, r6, #1
	lsl r1, r1, #5
	strh r4, [r2]
	cmp r1, r3
	bgt _0222D712
	mov r1, #0x20
	b _0222D716
_0222D712:
	lsl r1, r6, #5
	sub r1, r3, r1
_0222D716:
	strh r1, [r2, #2]
	lsl r1, r4, #0x16
	asr r1, r1, #0x10
	mul r1, r6
	add r0, r0, r1
	pop {r4, r5, r6, pc}
_0222D722:
	add r5, r1, #1
	lsl r5, r5, #5
	cmp r5, r4
	bgt _0222D72E
	mov r5, #0x20
	b _0222D732
_0222D72E:
	lsl r5, r1, #5
	sub r5, r4, r5
_0222D732:
	strh r5, [r2]
	add r5, r6, #1
	lsl r5, r5, #5
	cmp r5, r3
	bgt _0222D740
	mov r5, #0x20
	b _0222D744
_0222D740:
	lsl r5, r6, #5
	sub r5, r3, r5
_0222D744:
	strh r5, [r2, #2]
	cmp r6, #0
	bne _0222D75C
	mov r2, #0
	cmp r1, #0
	beq _0222D76C
	mov r1, #2
	lsl r1, r1, #0xa
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	b _0222D76C
_0222D75C:
	lsl r2, r4, #0x16
	lsr r2, r2, #0x10
	cmp r1, #0
	beq _0222D76C
	lsl r1, r3, #6
	add r1, r2, r1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
_0222D76C:
	add r0, r0, r2
	pop {r4, r5, r6, pc}
_0222D770:
	bl sub_02022974
	bl sub_02022974
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222D6BC

	.rodata


	.global Unk_ov63_0222DCB4
Unk_ov63_0222DCB4: ; 0x0222DCB4
	.incbin "incbin/overlay63_rodata.bin", 0x3B4, 0x1C

