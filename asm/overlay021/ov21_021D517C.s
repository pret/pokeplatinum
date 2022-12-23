	.include "macros/function.inc"
	.include "overlay021/ov21_021D517C.inc"

	

	.text


	thumb_func_start ov21_021D517C
ov21_021D517C: ; 0x021D517C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	str r2, [sp, #0x18]
	str r1, [sp, #0x14]
	str r0, [sp, #0x5c]
	mov r0, #0
	str r3, [sp, #0x1c]
	add r1, sp, #0x48
	str r0, [sp, #0x38]
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _021D5210
	ldr r0, [sp, #0x38]
	ldrb r6, [r1, #0x10]
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	ldrh r0, [r1, #0x24]
	str r0, [sp, #0x2c]
	ldrh r0, [r1, #0x20]
	str r0, [sp, #0x28]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x24]
_021D51AE:
	ldr r0, [sp, #0x24]
	mov r7, #0
	cmp r0, #0
	ble _021D51F6
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x30]
	add r4, r7, #0
	add r5, r1, r0
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x3c]
_021D51CA:
	str r6, [sp]
	ldrb r0, [r5]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r0, r4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl ov21_021D5248
	ldr r0, [sp, #0x24]
	add r7, r7, #1
	add r4, r4, r6
	add r5, r5, #1
	cmp r7, r0
	blt _021D51CA
_021D51F6:
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	add r0, r0, r6
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	add r0, r1, r0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x38]
	add r1, r0, #1
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x38]
	cmp r1, r0
	blt _021D51AE
_021D5210:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D517C

	thumb_func_start ov21_021D5214
ov21_021D5214: ; 0x021D5214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r2, #0
	str r0, [sp, #4]
	add r5, r1, #0
	mov r6, #0
	cmp r7, #0
	ble _021D5244
_021D5224:
	mov r4, #0
	cmp r5, #0
	ble _021D523E
_021D522A:
	ldr r0, [sp, #4]
	add r1, r4, #0
	add r2, r6, #0
	add r3, r5, #0
	str r7, [sp]
	bl ov21_021D52A0
	add r4, r4, #1
	cmp r4, r5
	blt _021D522A
_021D523E:
	add r6, r6, #1
	cmp r6, r7
	blt _021D5224
_021D5244:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5214

	thumb_func_start ov21_021D5248
ov21_021D5248: ; 0x021D5248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x3c]
	str r0, [sp, #0x18]
	add r5, r2, #0
	add r6, r3, #0
	cmp r1, #0
	beq _021D529C
	ldr r0, [sp, #0x38]
	add r4, r1, #0
	mul r4, r0
	add r0, r4, #0
	add r1, r5, #0
	bl _s32_div_f
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl _s32_div_f
	str r5, [sp]
	add r4, r1, #0
	str r6, [sp, #4]
	add r0, sp, #0x28
	ldrb r1, [r0, #0x18]
	lsl r2, r4, #0x10
	lsl r3, r7, #0x10
	str r1, [sp, #8]
	ldrb r0, [r0, #0x1c]
	ldr r1, [sp, #0x1c]
	lsr r2, r2, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	lsr r3, r3, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	bl sub_0201ADDC
_021D529C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5248

	thumb_func_start ov21_021D52A0
ov21_021D52A0: ; 0x021D52A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r2, #0
	add r6, r1, #0
	add r1, r7, #0
	mul r1, r3
	add r4, r0, #0
	add r5, r6, r1
	ldrb r1, [r4, r5]
	cmp r1, #0
	bne _021D52CE
	ldr r1, [sp, #0x20]
	str r3, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	add r2, r6, #0
	add r3, r7, #0
	bl ov21_021D5304
	ldr r0, [sp, #8]
	bl ov21_021D5424
	strb r0, [r4, r5]
_021D52CE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021D52A0

	thumb_func_start ov21_021D52D4
ov21_021D52D4: ; 0x021D52D4
	push {r3, r4}
	cmp r1, #0
	blt _021D52DE
	cmp r1, r3
	blt _021D52E6
_021D52DE:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_021D52E6:
	cmp r2, #0
	blt _021D52F0
	ldr r4, [sp, #8]
	cmp r2, r4
	blt _021D52F8
_021D52F0:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4}
	bx lr
_021D52F8:
	mul r3, r2
	add r1, r1, r3
	ldrb r0, [r0, r1]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021D52D4

	thumb_func_start ov21_021D5304
ov21_021D5304: ; 0x021D5304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [sp, #0x20]
	add r6, r2, #0
	str r1, [sp, #0x20]
	add r7, r3, #0
	mov r1, #0
	str r1, [r5, #0]
	ldr r4, [sp, #0x24]
	ldr r3, [sp, #0x20]
	add r1, r6, #0
	sub r2, r7, #1
	str r0, [sp, #4]
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D5332
	ldr r1, [r5, #0]
	mov r0, #1
	orr r0, r1
	str r0, [r5, #0]
_021D5332:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r6, #0
	add r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D534C
	ldr r1, [r5, #0]
	mov r0, #2
	orr r0, r1
	str r0, [r5, #0]
_021D534C:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	sub r1, r6, #1
	add r2, r7, #0
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D5366
	ldr r1, [r5, #0]
	mov r0, #4
	orr r0, r1
	str r0, [r5, #0]
_021D5366:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r6, #1
	add r2, r7, #0
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D5380
	ldr r1, [r5, #0]
	mov r0, #8
	orr r0, r1
	str r0, [r5, #0]
_021D5380:
	ldr r0, [r5, #0]
	mov r1, #1
	tst r1, r0
	bne _021D53A8
	mov r1, #4
	tst r0, r1
	bne _021D53A8
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	sub r1, r6, #1
	sub r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D53A8
	ldr r1, [r5, #0]
	mov r0, #0x10
	orr r0, r1
	str r0, [r5, #0]
_021D53A8:
	ldr r0, [r5, #0]
	mov r1, #1
	tst r1, r0
	bne _021D53D0
	mov r1, #8
	tst r0, r1
	bne _021D53D0
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r6, #1
	sub r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D53D0
	ldr r1, [r5, #0]
	mov r0, #0x20
	orr r0, r1
	str r0, [r5, #0]
_021D53D0:
	ldr r0, [r5, #0]
	mov r1, #2
	tst r1, r0
	bne _021D53F8
	mov r1, #4
	tst r0, r1
	bne _021D53F8
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	sub r1, r6, #1
	add r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D53F8
	ldr r1, [r5, #0]
	mov r0, #0x40
	orr r0, r1
	str r0, [r5, #0]
_021D53F8:
	ldr r0, [r5, #0]
	mov r1, #2
	tst r1, r0
	bne _021D5420
	mov r1, #8
	tst r0, r1
	bne _021D5420
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	add r1, r6, #1
	add r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D5420
	ldr r1, [r5, #0]
	mov r0, #0x80
	orr r0, r1
	str r0, [r5, #0]
_021D5420:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5304

	thumb_func_start ov21_021D5424
ov21_021D5424: ; 0x021D5424
	push {r4, lr}
	cmp r0, #0x84
	bgt _021D54FA
	blt _021D542E
	b _021D55EC
_021D542E:
	cmp r0, #0x58
	bgt _021D54E0
	blt _021D5436
	b _021D55C4
_021D5436:
	cmp r0, #0x48
	bgt _021D54D2
	blt _021D543E
	b _021D55F4
_021D543E:
	cmp r0, #0x41
	bhi _021D54D8
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D544E: ; jump table
	.short _021D553C - _021D544E - 2 ; case 0
	.short _021D5540 - _021D544E - 2 ; case 1
	.short _021D5544 - _021D544E - 2 ; case 2
	.short _021D5550 - _021D544E - 2 ; case 3
	.short _021D5548 - _021D544E - 2 ; case 4
	.short _021D5554 - _021D544E - 2 ; case 5
	.short _021D555C - _021D544E - 2 ; case 6
	.short _021D5568 - _021D544E - 2 ; case 7
	.short _021D554C - _021D544E - 2 ; case 8
	.short _021D5558 - _021D544E - 2 ; case 9
	.short _021D5560 - _021D544E - 2 ; case 10
	.short _021D556C - _021D544E - 2 ; case 11
	.short _021D5564 - _021D544E - 2 ; case 12
	.short _021D5570 - _021D544E - 2 ; case 13
	.short _021D5574 - _021D544E - 2 ; case 14
	.short _021D5578 - _021D544E - 2 ; case 15
	.short _021D557C - _021D544E - 2 ; case 16
	.short _021D55F8 - _021D544E - 2 ; case 17
	.short _021D55E0 - _021D544E - 2 ; case 18
	.short _021D55F8 - _021D544E - 2 ; case 19
	.short _021D55F8 - _021D544E - 2 ; case 20
	.short _021D55F8 - _021D544E - 2 ; case 21
	.short _021D55F8 - _021D544E - 2 ; case 22
	.short _021D55F8 - _021D544E - 2 ; case 23
	.short _021D55F0 - _021D544E - 2 ; case 24
	.short _021D55F8 - _021D544E - 2 ; case 25
	.short _021D55D4 - _021D544E - 2 ; case 26
	.short _021D55F8 - _021D544E - 2 ; case 27
	.short _021D55F8 - _021D544E - 2 ; case 28
	.short _021D55F8 - _021D544E - 2 ; case 29
	.short _021D55F8 - _021D544E - 2 ; case 30
	.short _021D55F8 - _021D544E - 2 ; case 31
	.short _021D5580 - _021D544E - 2 ; case 32
	.short _021D55F8 - _021D544E - 2 ; case 33
	.short _021D55E4 - _021D544E - 2 ; case 34
	.short _021D55F8 - _021D544E - 2 ; case 35
	.short _021D55E8 - _021D544E - 2 ; case 36
	.short _021D55F8 - _021D544E - 2 ; case 37
	.short _021D55D0 - _021D544E - 2 ; case 38
	.short _021D55F8 - _021D544E - 2 ; case 39
	.short _021D55F8 - _021D544E - 2 ; case 40
	.short _021D55F8 - _021D544E - 2 ; case 41
	.short _021D55F8 - _021D544E - 2 ; case 42
	.short _021D55F8 - _021D544E - 2 ; case 43
	.short _021D55F8 - _021D544E - 2 ; case 44
	.short _021D55F8 - _021D544E - 2 ; case 45
	.short _021D55F8 - _021D544E - 2 ; case 46
	.short _021D55F8 - _021D544E - 2 ; case 47
	.short _021D558C - _021D544E - 2 ; case 48
	.short _021D55F8 - _021D544E - 2 ; case 49
	.short _021D55BC - _021D544E - 2 ; case 50
	.short _021D55F8 - _021D544E - 2 ; case 51
	.short _021D55F8 - _021D544E - 2 ; case 52
	.short _021D55F8 - _021D544E - 2 ; case 53
	.short _021D55F8 - _021D544E - 2 ; case 54
	.short _021D55F8 - _021D544E - 2 ; case 55
	.short _021D55F8 - _021D544E - 2 ; case 56
	.short _021D55F8 - _021D544E - 2 ; case 57
	.short _021D55F8 - _021D544E - 2 ; case 58
	.short _021D55F8 - _021D544E - 2 ; case 59
	.short _021D55F8 - _021D544E - 2 ; case 60
	.short _021D55F8 - _021D544E - 2 ; case 61
	.short _021D55F8 - _021D544E - 2 ; case 62
	.short _021D55F8 - _021D544E - 2 ; case 63
	.short _021D5584 - _021D544E - 2 ; case 64
	.short _021D55D8 - _021D544E - 2 ; case 65
_021D54D2:
	cmp r0, #0x49
	bgt _021D54DA
	beq _021D55CC
_021D54D8:
	b _021D55F8
_021D54DA:
	cmp r0, #0x50
	beq _021D5590
	b _021D55F8
_021D54E0:
	cmp r0, #0x70
	bgt _021D54EC
	bge _021D55A4
	cmp r0, #0x60
	beq _021D5598
	b _021D55F8
_021D54EC:
	cmp r0, #0x80
	bgt _021D54F4
	beq _021D5588
	b _021D55F8
_021D54F4:
	cmp r0, #0x81
	beq _021D55DC
	b _021D55F8
_021D54FA:
	cmp r0, #0xb0
	bgt _021D551A
	bge _021D55A8
	cmp r0, #0x90
	bgt _021D550C
	bge _021D5594
	cmp r0, #0x85
	beq _021D55C8
	b _021D55F8
_021D550C:
	cmp r0, #0xa0
	bgt _021D5514
	beq _021D559C
	b _021D55F8
_021D5514:
	cmp r0, #0xa4
	beq _021D55C0
	b _021D55F8
_021D551A:
	cmp r0, #0xd0
	bgt _021D552E
	bge _021D55AC
	cmp r0, #0xc0
	bgt _021D5528
	beq _021D55A0
	b _021D55F8
_021D5528:
	cmp r0, #0xc1
	beq _021D55B8
	b _021D55F8
_021D552E:
	cmp r0, #0xe0
	bgt _021D5536
	beq _021D55B0
	b _021D55F8
_021D5536:
	cmp r0, #0xf0
	beq _021D55B4
	b _021D55F8
_021D553C:
	mov r4, #0
	b _021D55FC
_021D5540:
	mov r4, #2
	b _021D55FC
_021D5544:
	mov r4, #3
	b _021D55FC
_021D5548:
	mov r4, #4
	b _021D55FC
_021D554C:
	mov r4, #5
	b _021D55FC
_021D5550:
	mov r4, #6
	b _021D55FC
_021D5554:
	mov r4, #7
	b _021D55FC
_021D5558:
	mov r4, #8
	b _021D55FC
_021D555C:
	mov r4, #9
	b _021D55FC
_021D5560:
	mov r4, #0xa
	b _021D55FC
_021D5564:
	mov r4, #0xb
	b _021D55FC
_021D5568:
	mov r4, #0xc
	b _021D55FC
_021D556C:
	mov r4, #0xd
	b _021D55FC
_021D5570:
	mov r4, #0xe
	b _021D55FC
_021D5574:
	mov r4, #0xf
	b _021D55FC
_021D5578:
	mov r4, #0x10
	b _021D55FC
_021D557C:
	mov r4, #0x11
	b _021D55FC
_021D5580:
	mov r4, #0x12
	b _021D55FC
_021D5584:
	mov r4, #0x13
	b _021D55FC
_021D5588:
	mov r4, #0x14
	b _021D55FC
_021D558C:
	mov r4, #0x15
	b _021D55FC
_021D5590:
	mov r4, #0x16
	b _021D55FC
_021D5594:
	mov r4, #0x17
	b _021D55FC
_021D5598:
	mov r4, #0x18
	b _021D55FC
_021D559C:
	mov r4, #0x19
	b _021D55FC
_021D55A0:
	mov r4, #0x1a
	b _021D55FC
_021D55A4:
	mov r4, #0x1b
	b _021D55FC
_021D55A8:
	mov r4, #0x1c
	b _021D55FC
_021D55AC:
	mov r4, #0x1d
	b _021D55FC
_021D55B0:
	mov r4, #0x1e
	b _021D55FC
_021D55B4:
	mov r4, #0x1f
	b _021D55FC
_021D55B8:
	mov r4, #0x20
	b _021D55FC
_021D55BC:
	mov r4, #0x21
	b _021D55FC
_021D55C0:
	mov r4, #0x22
	b _021D55FC
_021D55C4:
	mov r4, #0x23
	b _021D55FC
_021D55C8:
	mov r4, #0x24
	b _021D55FC
_021D55CC:
	mov r4, #0x25
	b _021D55FC
_021D55D0:
	mov r4, #0x26
	b _021D55FC
_021D55D4:
	mov r4, #0x27
	b _021D55FC
_021D55D8:
	mov r4, #0x28
	b _021D55FC
_021D55DC:
	mov r4, #0x29
	b _021D55FC
_021D55E0:
	mov r4, #0x2a
	b _021D55FC
_021D55E4:
	mov r4, #0x2b
	b _021D55FC
_021D55E8:
	mov r4, #0x2c
	b _021D55FC
_021D55EC:
	mov r4, #0x2d
	b _021D55FC
_021D55F0:
	mov r4, #0x2e
	b _021D55FC
_021D55F4:
	mov r4, #0x2f
	b _021D55FC
_021D55F8:
	bl GF_AssertFail
_021D55FC:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov21_021D5424