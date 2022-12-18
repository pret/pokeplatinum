	.include "macros/function.inc"
	.include "include/ov20_021D2EA4.inc"

	

	.text


	thumb_func_start ov20_021D2EA4
ov20_021D2EA4: ; 0x021D2EA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #0x1b
	add r5, r0, #0
	mov r0, #0x23
	lsl r1, r1, #4
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	str r6, [r4, #4]
	str r7, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x3c]
	str r0, [r4, #0x40]
	str r0, [r4, #0x44]
	mov r0, #0x80
	mov r1, #0x23
	bl sub_02023790
	str r0, [r4, #0x4c]
	ldr r2, _021D2EEC ; =0x000001B5
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x23
	bl sub_0200B144
	str r0, [r4, #0x48]
	mov r0, #0x23
	bl sub_020149F0
	str r0, [r4, #0x50]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2EEC: .word 0x000001B5
	thumb_func_end ov20_021D2EA4

	thumb_func_start ov20_021D2EF0
ov20_021D2EF0: ; 0x021D2EF0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021D2EFE
	bl sub_02014A20
_021D2EFE:
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	beq _021D2F08
	bl sub_02021BD4
_021D2F08:
	ldr r0, [r4, #0x40]
	cmp r0, #0
	beq _021D2F12
	bl sub_02021BD4
_021D2F12:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021D2F1C
	bl sub_02021BD4
_021D2F1C:
	ldr r0, [r4, #0x48]
	cmp r0, #0
	beq _021D2F26
	bl sub_0200B190
_021D2F26:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	beq _021D2F30
	bl sub_020237BC
_021D2F30:
	add r0, r4, #0
	add r0, #0xc
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x1c
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x2c
	bl sub_0201A8FC
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov20_021D2EF0

	thumb_func_start ov20_021D2F50
ov20_021D2F50: ; 0x021D2F50
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl ov20_021D2E04
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov20_021D30A4
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	bl sub_0200710C
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_020070E8
	lsr r4, r0, #5
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	lsl r0, r4, #0x10
	add r1, r5, #0
	str r2, [sp, #0xc]
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0xc
	mov r3, #3
	bl sub_0201A7E8
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	add r1, r5, #0
	str r3, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0x6c
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x1c
	mov r2, #0
	bl sub_0201A7E8
	mov r0, #0xf
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xa2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r1, r5, #0
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, #0x2c
	mov r2, #0
	mov r3, #0x17
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0xc2
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x23
	str r0, [sp, #0xc]
	mov r0, #0x26
	add r2, r6, #0
	add r3, r1, #0
	bl sub_02006E3C
	add r0, r4, #0
	add r0, #0xc2
	str r0, [r5, #0x60]
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x23
	mov r3, #7
	str r0, [sp, #4]
	mov r0, #0x26
	mov r1, #0x18
	mov r2, #0
	lsl r3, r3, #6
	bl sub_02006E84
	ldr r0, [r5, #4]
	bl ov20_021D2080
	lsl r0, r0, #0x18
	add r2, r4, #0
	lsr r0, r0, #0x18
	add r2, #0xcb
	str r0, [sp]
	mov r0, #0x23
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0xf
	bl sub_0200DD0C
	add r0, r5, #0
	add r4, #0xcb
	add r0, #0x1c
	add r1, r4, #0
	mov r2, #0xf
	bl sub_0200E010
	add r0, r5, #0
	add r0, #0xc
	bl sub_0201A9F4
	add r0, r5, #0
	add r0, #0x1c
	bl sub_0201A9F4
	add r0, r5, #0
	bl ov20_021D312C
	add r0, r5, #0
	bl ov20_021D3228
	add r0, r5, #0
	mov r1, #0
	bl ov20_021D3578
	add r0, r5, #0
	bl ov20_021D3184
	add r0, r6, #0
	mov r1, #0
	bl sub_02019448
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov20_021D2F50

	thumb_func_start ov20_021D30A4
ov20_021D30A4: ; 0x021D30A4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	add r5, r1, #0
	str r0, [sp]
	mov r0, #0x23
	mov r2, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #6
	add r3, r2, #0
	bl sub_02007130
	add r0, r5, #0
	mov r1, #6
	add r2, sp, #8
	mov r3, #0x23
	bl sub_020071EC
	add r5, r0, #0
	ldr r0, [sp, #8]
	add r1, r4, #0
	mov r2, #5
	ldr r0, [r0, #0xc]
	add r1, #0x70
	lsl r2, r2, #6
	bl sub_020C4B18
	add r4, #0x70
	mov r1, #5
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_020C2C54
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D30A4

	thumb_func_start ov20_021D30F8
ov20_021D30F8: ; 0x021D30F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #2
	bne _021D311E
	ldr r0, [r4, #4]
	bl ov20_021D1F9C
	add r0, r0, #1
	add r4, #0x70
	lsl r0, r0, #5
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C00B4
	pop {r4, pc}
_021D311E:
	add r4, #0x70
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C00B4
	pop {r4, pc}
	thumb_func_end ov20_021D30F8

	thumb_func_start ov20_021D312C
ov20_021D312C: ; 0x021D312C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #0
	beq _021D3144
	cmp r0, #1
	beq _021D315A
	cmp r0, #2
	beq _021D317E
	pop {r4, pc}
_021D3144:
	add r0, r4, #0
	mov r1, #0x68
	add r0, #0x54
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #0x10
	add r0, #0x56
	strh r1, [r0]
	mov r0, #1
	str r0, [r4, #0x5c]
	pop {r4, pc}
_021D315A:
	add r0, r4, #0
	mov r1, #0x30
	add r0, #0x54
	strh r1, [r0]
	add r0, r4, #0
	mov r2, #0x10
	add r0, #0x56
	strh r2, [r0]
	add r0, r4, #0
	mov r1, #0xa0
	add r0, #0x58
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x5a
	strh r2, [r0]
	mov r0, #2
	str r0, [r4, #0x5c]
	pop {r4, pc}
_021D317E:
	mov r0, #0
	str r0, [r4, #0x5c]
	pop {r4, pc}
	thumb_func_end ov20_021D312C

	thumb_func_start ov20_021D3184
ov20_021D3184: ; 0x021D3184
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021D319C
	add r0, r4, #0
	add r0, #0x54
	add r1, sp, #8
	bl ov20_021D34E0
	b _021D31A6
_021D319C:
	mov r1, #0x80
	add r0, sp, #8
	strh r1, [r0]
	mov r1, #0x18
	strh r1, [r0, #2]
_021D31A6:
	mov r2, #0
	ldr r0, [r4, #0]
	add r1, sp, #0xc
	add r3, r2, #0
	bl ov20_021D2E0C
	mov r2, #0
	str r2, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r5, sp, #8
	mov r3, #2
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r4, #0]
	add r1, sp, #0xc
	bl ov20_021D2E50
	str r0, [r4, #0x3c]
	add r0, r4, #0
	mov r1, #1
	bl ov20_021D375C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0xc
	mov r2, #6
	mov r3, #0x18
	bl ov20_021D2E50
	mov r1, #0xd
	str r0, [r4, #0x40]
	bl sub_02021D6C
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r1, sp, #0xc
	mov r2, #0xfa
	mov r3, #0x18
	bl ov20_021D2E50
	str r0, [r4, #0x44]
	mov r1, #0xc
	bl sub_02021D6C
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #2
	beq _021D3222
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021CAC
_021D3222:
	add sp, #0x30
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D3184

	thumb_func_start ov20_021D3228
ov20_021D3228: ; 0x021D3228
	push {r4, lr}
	add r4, r0, #0
	bl ov20_021D30F8
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0xd
	bl sub_0201ADA4
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #0
	beq _021D324E
	cmp r0, #1
	beq _021D3274
	cmp r0, #2
	beq _021D32BE
	b _021D32C6
_021D324E:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x54
	bl ov20_021D34F4
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov20_021D1FA8
	add r1, r4, #0
	add r2, r4, #0
	add r3, r0, #0
	add r0, r4, #0
	add r1, #0xc
	add r2, #0x54
	bl ov20_021D351C
	b _021D32C6
_021D3274:
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x54
	bl ov20_021D34F4
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xc
	add r1, #0x58
	bl ov20_021D34F4
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov20_021D1FA8
	add r1, r4, #0
	add r2, r4, #0
	add r3, r0, #0
	add r0, r4, #0
	add r1, #0xc
	add r2, #0x54
	bl ov20_021D351C
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov20_021D1FA8
	add r1, r4, #0
	add r2, r4, #0
	add r3, r0, #0
	add r0, r4, #0
	add r1, #0xc
	add r2, #0x58
	bl ov20_021D351C
	b _021D32C6
_021D32BE:
	add r0, r4, #0
	bl ov20_021D32D0
	str r0, [r4, #0x5c]
_021D32C6:
	add r4, #0xc
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r4, pc}
	thumb_func_end ov20_021D3228

	thumb_func_start ov20_021D32D0
ov20_021D32D0: ; 0x021D32D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r0, #4]
	mov r1, #0x23
	bl ov20_021D1FC0
	mov r4, #0
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, #0x64
	str r4, [sp, #0x18]
	add r5, r4, #0
	bl ov20_021D33C8
	ldr r7, [sp, #0x10]
	add r0, r7, #0
	str r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	add r0, r7, #0
	add r6, r7, #0
	str r0, [sp, #0x20]
	add r0, #0x64
	add r6, #0x54
	str r0, [sp, #0x20]
_021D330A:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	bl ov20_021D3400
	cmp r0, #3
	bhi _021D33A2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D3322: ; jump table
	.short _021D332A - _021D3322 - 2 ; case 0
	.short _021D3352 - _021D3322 - 2 ; case 1
	.short _021D3398 - _021D3322 - 2 ; case 2
	.short _021D339E - _021D3322 - 2 ; case 3
_021D332A:
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D33C0 ; =0x0003040D
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	mov r1, #1
	add r3, r5, #0
	bl sub_0201D78C
	ldr r1, [sp, #0x1c]
	mov r0, #1
	mov r2, #0
	bl sub_02002D7C
	add r5, r5, r0
	b _021D33A2
_021D3352:
	add r1, r5, #0
	add r0, r7, #0
	add r1, #0x32
	add r0, #0x54
	strh r1, [r0]
	add r1, r4, #0
	add r0, r7, #0
	add r1, #8
	add r0, #0x56
	strh r1, [r0]
	ldr r0, [sp, #0x24]
	add r1, r6, #0
	bl ov20_021D34F4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #4]
	bl ov20_021D1FA8
	add r3, r0, #0
	ldr r0, _021D33C4 ; =0x0000FFFF
	cmp r3, r0
	beq _021D338A
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x24]
	add r2, r6, #0
	bl ov20_021D351C
_021D338A:
	ldr r0, [sp, #0x18]
	add r7, r7, #4
	add r0, r0, #1
	add r6, r6, #4
	str r0, [sp, #0x18]
	add r5, #0x64
	b _021D33A2
_021D3398:
	add r4, #0x10
	mov r5, #0
	b _021D33A2
_021D339E:
	mov r0, #0
	str r0, [sp, #0x14]
_021D33A2:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021D330A
	ldr r0, [sp, #0x10]
	add r0, #0x64
	str r0, [sp, #0x10]
	bl ov20_021D33F4
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D33C0: .word 0x0003040D
_021D33C4: .word 0x0000FFFF
	thumb_func_end ov20_021D32D0

	thumb_func_start ov20_021D33C8
ov20_021D33C8: ; 0x021D33C8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	mov r1, #0x23
	bl ov20_021D1FC0
	str r0, [r4, #0]
	bl sub_02023E2C
	str r0, [r4, #4]
	ldrh r1, [r0]
	ldr r0, _021D33F0 ; =0x0000FFFE
	cmp r1, r0
	bne _021D33EA
	mov r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
_021D33EA:
	mov r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
_021D33F0: .word 0x0000FFFE
	thumb_func_end ov20_021D33C8

	thumb_func_start ov20_021D33F4
ov20_021D33F4: ; 0x021D33F4
	ldr r3, _021D33FC ; =sub_020237BC
	ldr r0, [r0, #0]
	bx r3
	nop
_021D33FC: .word sub_020237BC
	thumb_func_end ov20_021D33F4

	thumb_func_start ov20_021D3400
ov20_021D3400: ; 0x021D3400
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	str r1, [sp]
	mov ip, r0
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _021D3490
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D341C: ; jump table
	.short _021D3424 - _021D341C - 2 ; case 0
	.short _021D347A - _021D341C - 2 ; case 1
	.short _021D3486 - _021D341C - 2 ; case 2
	.short _021D3490 - _021D341C - 2 ; case 3
_021D3424:
	cmp r0, #0
	bne _021D3460
	ldr r6, _021D34C8 ; =0x0000FFFE
	mov r3, #0xe
	mov r0, #1
	mov r1, #3
	mov r2, #2
	add r7, r6, #1
	lsl r3, r3, #0xc
_021D3436:
	ldr r5, [r4, #4]
	ldrh r5, [r5]
	cmp r5, r3
	beq _021D3448
	cmp r5, r6
	beq _021D3450
	cmp r5, r7
	beq _021D344C
	b _021D3454
_021D3448:
	str r2, [r4, #8]
	b _021D345A
_021D344C:
	str r1, [r4, #8]
	b _021D345A
_021D3450:
	str r0, [r4, #8]
	b _021D345A
_021D3454:
	ldr r5, [r4, #4]
	add r5, r5, #2
	str r5, [r4, #4]
_021D345A:
	ldr r5, [r4, #8]
	cmp r5, #0
	beq _021D3436
_021D3460:
	ldr r3, [r4, #4]
	mov r2, ip
	sub r3, r3, r2
	lsr r2, r3, #0x1f
	add r2, r3, r2
	asr r2, r2, #1
	ldr r0, [sp]
	mov r1, ip
	add r2, r2, #1
	bl sub_02023D8C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D347A:
	mov r0, ip
	bl sub_0201D0C8
	str r0, [r4, #4]
	mov r0, #1
	b _021D3494
_021D3486:
	mov r0, ip
	add r0, r0, #2
	str r0, [r4, #4]
	mov r0, #2
	b _021D3494
_021D3490:
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021D3494:
	ldr r1, [r4, #4]
	ldrh r2, [r1]
	mov r1, #0xe
	lsl r1, r1, #0xc
	cmp r2, r1
	beq _021D34AE
	ldr r1, _021D34C8 ; =0x0000FFFE
	cmp r2, r1
	beq _021D34BA
	add r1, r1, #1
	cmp r2, r1
	beq _021D34B4
	b _021D34C0
_021D34AE:
	mov r1, #2
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021D34B4:
	mov r1, #3
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021D34BA:
	mov r1, #1
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_021D34C0:
	mov r1, #0
	str r1, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D34C8: .word 0x0000FFFE
	thumb_func_end ov20_021D3400

	thumb_func_start ov20_021D34CC
ov20_021D34CC: ; 0x021D34CC
	mov r2, #0
	ldrsh r2, [r0, r2]
	sub r2, #0x30
	strh r2, [r1]
	mov r2, #2
	ldrsh r0, [r0, r2]
	sub r0, #8
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D34CC

	thumb_func_start ov20_021D34E0
ov20_021D34E0: ; 0x021D34E0
	mov r2, #0
	ldrsh r2, [r0, r2]
	add r2, #0x18
	strh r2, [r1]
	mov r2, #2
	ldrsh r0, [r0, r2]
	add r0, #8
	strh r0, [r1, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D34E0

	thumb_func_start ov20_021D34F4
ov20_021D34F4: ; 0x021D34F4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, r1, #0
	add r1, sp, #8
	bl ov20_021D34CC
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r3, sp, #8
	ldrh r2, [r3]
	ldrh r3, [r3, #2]
	add r0, r4, #0
	mov r1, #0xe
	bl sub_0201AE78
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov20_021D34F4

	thumb_func_start ov20_021D351C
ov20_021D351C: ; 0x021D351C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _021D356C ; =0x0000FFFF
	add r6, r3, #0
	add r4, r1, #0
	cmp r6, r0
	beq _021D3566
	add r0, r2, #0
	add r1, sp, #0x10
	bl ov20_021D34CC
	ldr r1, [r5, #0x4c]
	add r0, r6, #0
	bl sub_02014DB8
	ldr r1, [r5, #0x4c]
	mov r0, #1
	mov r2, #0
	bl sub_02002D7C
	add r3, sp, #0x10
	mov r0, #2
	ldrsh r0, [r3, r0]
	mov r6, #0
	mov r1, #1
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3570 ; =0x0005060E
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldrsh r3, [r3, r6]
	ldr r2, [r5, #0x4c]
	add r0, r4, #0
	bl sub_0201D78C
_021D3566:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_021D356C: .word 0x0000FFFF
_021D3570: .word 0x0005060E
	thumb_func_end ov20_021D351C

	thumb_func_start ov20_021D3574
ov20_021D3574: ; 0x021D3574
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end ov20_021D3574

	thumb_func_start ov20_021D3578
ov20_021D3578: ; 0x021D3578
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	add r5, r1, #0
	add r0, #0x1c
	mov r1, #9
	bl sub_0201ADA4
	cmp r5, #3
	bhi _021D3674
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D3598: ; jump table
	.short _021D35A0 - _021D3598 - 2 ; case 0
	.short _021D362A - _021D3598 - 2 ; case 1
	.short _021D3604 - _021D3598 - 2 ; case 2
	.short _021D3650 - _021D3598 - 2 ; case 3
_021D35A0:
	mov r0, #2
	mov r1, #0x3c
	mov r2, #0
	bl sub_0200B368
	add r5, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #2
	mov r1, #0
	bl sub_02023790
	mov r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0200B7B4
	ldr r0, [r4, #4]
	bl ov20_021D1F88
	add r1, r0, #0
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	bl sub_0200B1B8
	ldr r2, [r4, #0x4c]
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3680 ; =0x00010209
	mov r1, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x1c
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B3F0
	b _021D3674
_021D3604:
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	mov r1, #6
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3680 ; =0x00010209
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x4c]
	add r0, #0x1c
	bl sub_0201D78C
	b _021D3674
_021D362A:
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	mov r1, #7
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3680 ; =0x00010209
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x4c]
	add r0, #0x1c
	bl sub_0201D78C
	b _021D3674
_021D3650:
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	mov r1, #8
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3680 ; =0x00010209
	mov r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x4c]
	add r0, #0x1c
	bl sub_0201D78C
_021D3674:
	add r4, #0x1c
	add r0, r4, #0
	bl sub_0201ACCC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D3680: .word 0x00010209
	thumb_func_end ov20_021D3578

	thumb_func_start ov20_021D3684
ov20_021D3684: ; 0x021D3684
	ldr r3, _021D368C ; =ov20_021D375C
	mov r1, #0
	bx r3
	nop
_021D368C: .word ov20_021D375C
	thumb_func_end ov20_021D3684

	thumb_func_start ov20_021D3690
ov20_021D3690: ; 0x021D3690
	ldr r3, _021D3698 ; =ov20_021D375C
	mov r1, #1
	bx r3
	nop
_021D3698: .word ov20_021D375C
	thumb_func_end ov20_021D3690

	thumb_func_start ov20_021D369C
ov20_021D369C: ; 0x021D369C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x3c]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #1
	bl ov20_021D375C
	pop {r4, pc}
	thumb_func_end ov20_021D369C

	thumb_func_start ov20_021D36B0
ov20_021D36B0: ; 0x021D36B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #2
	bne _021D36CE
	ldr r0, [r4, #0x40]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x44]
	mov r1, #0
	bl sub_02021CAC
_021D36CE:
	pop {r4, pc}
	thumb_func_end ov20_021D36B0

	thumb_func_start ov20_021D36D0
ov20_021D36D0: ; 0x021D36D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov20_021D1F84
	cmp r0, #2
	bne _021D36FE
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x44]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r4, #0x40]
	mov r1, #0xd
	bl sub_02021D6C
	ldr r0, [r4, #0x44]
	mov r1, #0xc
	bl sub_02021D6C
_021D36FE:
	pop {r4, pc}
	thumb_func_end ov20_021D36D0

	thumb_func_start ov20_021D3700
ov20_021D3700: ; 0x021D3700
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021D3730
	add r2, r4, #0
	lsl r0, r1, #2
	add r2, #0x54
	add r0, r2, r0
	add r1, sp, #0
	bl ov20_021D34E0
	add r1, sp, #0
	mov r2, #0
	ldrsh r0, [r1, r2]
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	b _021D3748
_021D3730:
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp, #4]
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_02021C50
_021D3748:
	ldr r0, [r4, #0x3c]
	add r1, sp, #4
	bl sub_02021C50
	add r0, r4, #0
	mov r1, #1
	bl ov20_021D375C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov20_021D3700

	thumb_func_start ov20_021D375C
ov20_021D375C: ; 0x021D375C
	push {r3, lr}
	ldr r2, [r0, #0x5c]
	cmp r2, #0
	beq _021D377A
	cmp r1, #0
	ldr r0, [r0, #0x3c]
	beq _021D3772
	mov r1, #0
	bl sub_02021D6C
	pop {r3, pc}
_021D3772:
	mov r1, #1
	bl sub_02021D6C
	pop {r3, pc}
_021D377A:
	cmp r1, #0
	ldr r0, [r0, #0x3c]
	beq _021D3788
	mov r1, #0xe
	bl sub_02021D6C
	pop {r3, pc}
_021D3788:
	mov r1, #0xf
	bl sub_02021D6C
	pop {r3, pc}
	thumb_func_end ov20_021D375C

	thumb_func_start ov20_021D3790
ov20_021D3790: ; 0x021D3790
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x2c
	mov r1, #9
	bl sub_0201ADA4
	ldr r0, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	mov r1, #9
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3818 ; =0x00010209
	mov r3, #0xe
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x4c]
	add r0, #0x2c
	bl sub_0201D78C
	ldr r0, [r5, #0x48]
	ldr r2, [r5, #0x4c]
	mov r1, #0xa
	bl sub_0200B1B8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D3818 ; =0x00010209
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	ldr r2, [r5, #0x4c]
	add r0, #0x2c
	mov r3, #0xe
	bl sub_0201D78C
	ldr r2, [r5, #0x60]
	add r0, r5, #0
	lsl r2, r2, #0x10
	add r0, #0x2c
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #0xe
	bl sub_0200DC48
	add r1, r5, #0
	ldr r0, [r5, #0x50]
	add r1, #0x2c
	mov r2, #0
	lsl r3, r4, #4
	bl sub_02014A58
	add r5, #0x2c
	add r0, r5, #0
	bl sub_0201A954
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D3818: .word 0x00010209
	thumb_func_end ov20_021D3790

	thumb_func_start ov20_021D381C
ov20_021D381C: ; 0x021D381C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r4, r1, #0
	add r0, #0x2c
	mov r1, #9
	add r3, r2, #0
	bl sub_0201AE78
	ldr r0, [r5, #0x50]
	add r5, #0x2c
	add r1, r5, #0
	mov r2, #0
	lsl r3, r4, #4
	bl sub_02014A58
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D381C

	thumb_func_start ov20_021D384C
ov20_021D384C: ; 0x021D384C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x2c
	mov r1, #0
	bl sub_0200DC9C
	add r4, #0x2c
	add r0, r4, #0
	bl sub_0201ACF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D384C