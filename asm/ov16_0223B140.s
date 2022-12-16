	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov16_0223B140
ov16_0223B140: ; 0x0223B140
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r6, r0, #0
	bl sub_02006840
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0xf
	bls _0223B156
	b _0223B370
_0223B156:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B162: ; jump table
	.short _0223B182 - _0223B162 - 2 ; case 0
	.short _0223B1AE - _0223B162 - 2 ; case 1
	.short _0223B1E8 - _0223B162 - 2 ; case 2
	.short _0223B1FE - _0223B162 - 2 ; case 3
	.short _0223B214 - _0223B162 - 2 ; case 4
	.short _0223B224 - _0223B162 - 2 ; case 5
	.short _0223B23A - _0223B162 - 2 ; case 6
	.short _0223B256 - _0223B162 - 2 ; case 7
	.short _0223B268 - _0223B162 - 2 ; case 8
	.short _0223B284 - _0223B162 - 2 ; case 9
	.short _0223B29A - _0223B162 - 2 ; case 10
	.short _0223B2B6 - _0223B162 - 2 ; case 11
	.short _0223B2D2 - _0223B162 - 2 ; case 12
	.short _0223B2D8 - _0223B162 - 2 ; case 13
	.short _0223B348 - _0223B162 - 2 ; case 14
	.short _0223B36A - _0223B162 - 2 ; case 15
_0223B182:
	mov r2, #0xb
	mov r0, #3
	mov r1, #5
	lsl r2, r2, #0x10
	bl sub_02017FC8
	ldr r1, [r5, #0]
	mov r0, #4
	tst r0, r1
	beq _0223B1A8
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #0x10
	tst r0, r1
	bne _0223B1A8
	mov r0, #1
	str r0, [r4, #0]
	b _0223B370
_0223B1A8:
	mov r0, #3
	str r0, [r4, #0]
	b _0223B370
_0223B1AE:
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_0223D10C
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02038F8C
	bl sub_020389B8
	cmp r0, #0
	bne _0223B1D6
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x14
	bl sub_0202CF28
	b _0223B1E2
_0223B1D6:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x19
	bl sub_0202CF28
_0223B1E2:
	mov r0, #2
	str r0, [r4, #0]
	b _0223B370
_0223B1E8:
	add r0, r6, #0
	bl ov16_0223D354
	cmp r0, #1
	bne _0223B260
	add r0, r6, #0
	bl ov16_0223D7B4
	mov r0, #3
	str r0, [r4, #0]
	b _0223B370
_0223B1FE:
	add r0, r6, #0
	bl ov16_0223D800
	cmp r0, #1
	bne _0223B20E
	mov r0, #4
	str r0, [r4, #0]
	b _0223B370
_0223B20E:
	mov r0, #5
	str r0, [r4, #0]
	b _0223B370
_0223B214:
	add r0, r6, #0
	bl ov16_0223D944
	cmp r0, #1
	bne _0223B260
	mov r0, #5
	str r0, [r4, #0]
	b _0223B370
_0223B224:
	add r0, r6, #0
	bl ov16_0223D98C
	cmp r0, #1
	bne _0223B234
	mov r0, #6
	str r0, [r4, #0]
	b _0223B370
_0223B234:
	mov r0, #8
	str r0, [r4, #0]
	b _0223B370
_0223B23A:
	add r0, r6, #0
	bl ov16_0223DAD4
	cmp r0, #1
	bne _0223B260
	ldr r0, _0223B378 ; =0x0000000A
	bl sub_02006514
	mov r0, #7
	str r0, [r4, #0]
	mov r0, #0x3d
	bl sub_020364F0
	b _0223B370
_0223B256:
	mov r0, #0x3d
	bl sub_02036540
	cmp r0, #0
	bne _0223B262
_0223B260:
	b _0223B370
_0223B262:
	mov r0, #8
	str r0, [r4, #0]
	b _0223B370
_0223B268:
	ldr r0, _0223B37C ; =0x0000000B
	mov r1, #2
	bl sub_02006590
	ldr r0, _0223B380 ; =0x0000000C
	mov r1, #2
	bl sub_02006590
	add r0, r6, #0
	bl ov16_0223B790
	mov r0, #9
	str r0, [r4, #0]
	b _0223B370
_0223B284:
	add r0, r6, #0
	bl ov16_0223BBD0
	cmp r0, #1
	bne _0223B370
	add r0, r6, #0
	bl ov16_0223BCB4
	mov r0, #0xa
	str r0, [r4, #0]
	b _0223B370
_0223B29A:
	add r0, r6, #0
	bl ov16_0223DB1C
	cmp r0, #1
	bne _0223B2AA
	mov r0, #0xb
	str r0, [r4, #0]
	b _0223B370
_0223B2AA:
	mov r0, #5
	bl sub_0201807C
	mov r0, #0xd
	str r0, [r4, #0]
	b _0223B370
_0223B2B6:
	add r0, r6, #0
	bl ov16_0223DD10
	cmp r0, #1
	bne _0223B370
	ldr r0, _0223B378 ; =0x0000000A
	bl sub_02006514
	mov r0, #5
	bl sub_0201807C
	mov r0, #0xc
	str r0, [r4, #0]
	b _0223B370
_0223B2D2:
	mov r0, #0xf
	str r0, [r4, #0]
	b _0223B370
_0223B2D8:
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl ov16_0223ECC4
	add r6, r0, #0
	beq _0223B342
	mov r0, #3
	mov r1, #0x49
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r2, [r5, r0]
	mov r3, #0x49
	str r2, [sp]
	add r2, r0, #0
	sub r2, #0x58
	ldr r2, [r5, r2]
	str r2, [sp, #4]
	add r2, r0, #0
	sub r2, #0x60
	ldr r2, [r5, r2]
	str r2, [sp, #8]
	add r2, r0, #0
	sub r2, #0x24
	ldr r2, [r5, r2]
	sub r0, #0x40
	str r2, [sp, #0xc]
	ldr r0, [r5, r0]
	add r2, r6, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x14]
	mov r0, #3
	str r0, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r3, #0xe7
	ldr r0, [r5, #4]
	ldr r3, [r5, r3]
	bl sub_0207AE68
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0xe
	str r0, [r4, #0]
	b _0223B370
_0223B342:
	mov r0, #0xf
	str r0, [r4, #0]
	b _0223B370
_0223B348:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r5, [r5, r0]
	add r0, r5, #0
	bl sub_0207B0D0
	cmp r0, #1
	bne _0223B370
	add r0, r5, #0
	bl sub_0207B0E0
	mov r0, #0x49
	bl sub_0201807C
	mov r0, #0xd
	str r0, [r4, #0]
	b _0223B370
_0223B36A:
	add sp, #0x28
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223B370:
	mov r0, #0
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_0223B378: .word 0x0000000A
_0223B37C: .word 0x0000000B
_0223B380: .word 0x0000000C
	thumb_func_end ov16_0223B140

	thumb_func_start ov16_0223B384
ov16_0223B384: ; 0x0223B384
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov16_02268A14
	ldr r0, [r4, #4]
	bl ov16_022687A0
	ldr r1, _0223B3D0 ; =0x000023FF
	mov r0, #4
	ldrb r2, [r4, r1]
	orr r0, r2
	strb r0, [r4, r1]
	mov r0, #2
	bl sub_02002C60
	add r0, r4, #0
	mov r1, #3
	bl ov16_0223F314
	ldr r0, _0223B3D4 ; =0x00002445
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0223B3C0
	ldr r0, _0223B3D8 ; =0x0000000C
	bl sub_02006514
	b _0223B3C6
_0223B3C0:
	ldr r0, _0223B3DC ; =0x0000000E
	bl sub_02006514
_0223B3C6:
	ldr r0, _0223B3E0 ; =0x0000000D
	mov r1, #2
	bl sub_02006590
	pop {r4, pc}
	; .align 2, 0
_0223B3D0: .word 0x000023FF
_0223B3D4: .word 0x00002445
_0223B3D8: .word 0x0000000C
_0223B3DC: .word 0x0000000E
_0223B3E0: .word 0x0000000D
	thumb_func_end ov16_0223B384

	thumb_func_start ov16_0223B3E4
ov16_0223B3E4: ; 0x0223B3E4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov16_02268A14
	ldr r0, [r4, #8]
	bl sub_0201A8FC
	ldr r0, [r4, #4]
	bl ov16_0223C288
	add r0, r4, #0
	bl ov16_0223C2BC
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200D0B0
	add r4, #0x90
	ldr r0, [r4, #0]
	bl sub_0200C8D4
	bl sub_0201DC3C
	mov r0, #2
	bl sub_02002C60
	pop {r4, pc}
	thumb_func_end ov16_0223B3E4

	thumb_func_start ov16_0223B430
ov16_0223B430: ; 0x0223B430
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0223B528 ; =0x0000000D
	bl sub_02006514
	ldr r0, _0223B52C ; =0x00002445
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0223B44E
	ldr r0, _0223B530 ; =0x0000000C
	mov r1, #2
	bl sub_02006590
	b _0223B456
_0223B44E:
	ldr r0, _0223B534 ; =0x0000000E
	mov r1, #2
	bl sub_02006590
_0223B456:
	add r0, r5, #0
	mov r1, #0
	bl ov16_0223F314
	bl sub_02024208
	add r4, r0, #0
	bl sub_02024200
	add r1, r0, #0
	mov r0, #0
	add r2, r4, #0
	bl sub_020C4AF0
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_0223F6E4
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_0223E1B4
	add r3, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r6, #0
	add r2, r5, #0
	bl ov16_022687C8
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #2
	mov r1, #5
	bl sub_02002BB8
	ldr r1, _0223B538 ; =0x000023FF
	mov r0, #2
	ldrb r2, [r5, r1]
	orr r0, r2
	strb r0, [r5, r1]
	ldr r0, [r5, #4]
	bl ov16_02268744
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ov16_02268A88
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	mov r2, #0x67
	str r3, [sp, #4]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r6, #0
	add r1, r4, #0
	bl ov16_02268C04
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl ov16_02268D40
	add r0, r6, #0
	bl sub_02006CA8
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #1
	bl sub_020027A8
	add r0, r5, #0
	bl ov16_0223DD4C
	add r5, #0x90
	ldr r0, [r5, #0]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223B528: .word 0x0000000D
_0223B52C: .word 0x00002445
_0223B530: .word 0x0000000C
_0223B534: .word 0x0000000E
_0223B538: .word 0x000023FF
	thumb_func_end ov16_0223B430

	thumb_func_start ov16_0223B53C
ov16_0223B53C: ; 0x0223B53C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	bl sub_0201A8FC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	bl ov16_0223F3EC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0223B53C

	thumb_func_start ov16_0223B578
ov16_0223B578: ; 0x0223B578
	push {r4, r5, r6, lr}
	sub sp, #0x68
	ldr r1, _0223B72C ; =0x000023FF
	add r5, r0, #0
	ldrb r2, [r5, r1]
	mov r0, #1
	ldr r4, _0223B730 ; =0x0226E3A4
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	add r3, sp, #0x14
	mov r2, #0xa
_0223B592:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223B592
	ldr r0, [r4, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r5, #4]
	add r2, sp, #0x14
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02019EBC
	ldr r0, [r5, #4]
	mov r1, #2
	add r2, sp, #0x30
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r5, #4]
	mov r1, #3
	add r2, sp, #0x4c
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	mov r1, #3
	bl sub_02019EBC
	ldr r1, _0223B734 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	add r0, r5, #0
	bl ov16_0223EDE0
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #4]
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200E218
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r1, _0223B738 ; =0x00002404
	ldr r2, [r5, #4]
	ldr r1, [r5, r1]
	mov r0, #7
	add r1, r1, #3
	mov r3, #3
	bl sub_02006E3C
	add r0, r5, #0
	bl ov16_0223EC04
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r3, _0223B738 ; =0x00002404
	ldr r0, [r5, #0x28]
	ldr r6, [r5, r3]
	mov r1, #7
	lsl r3, r6, #1
	add r3, r6, r3
	add r3, #0xac
	add r2, r3, r2
	mov r3, #5
	bl sub_02003050
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0x26
	mov r3, #5
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0xe
	mov r2, #7
	mov r3, #5
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #7
	mov r1, #2
	mov r3, #3
	bl sub_02006E60
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0223B73C ; =0xFFFF1FFF
	ldr r3, _0223B740 ; =0x04001000
	and r2, r1
	str r2, [r0, #0]
	ldr r2, [r3, #0]
	and r1, r2
	add r2, r0, #0
	str r1, [r3, #0]
	add r2, #0x48
	ldrh r3, [r2]
	mov r1, #0x3f
	add r0, #0x4a
	bic r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _0223B744 ; =ov16_0223CE68
	add r1, r5, #0
	bl sub_02017798
	ldr r0, _0223B72C ; =0x000023FF
	mov r3, #2
	ldrb r1, [r5, r0]
	mov r2, #1
	orr r1, r3
	strb r1, [r5, r0]
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	bl sub_0201A7E8
	ldr r0, [r5, #8]
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r5, #8]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	add r0, r5, #0
	bl ov16_0223DD4C
	add sp, #0x68
	pop {r4, r5, r6, pc}
	nop
_0223B72C: .word 0x000023FF
_0223B730: .word 0x0226E3A4
_0223B734: .word 0x04000008
_0223B738: .word 0x00002404
_0223B73C: .word 0xFFFF1FFF
_0223B740: .word 0x04001000
_0223B744: .word ov16_0223CE68
	thumb_func_end ov16_0223B578

	thumb_func_start ov16_0223B748
ov16_0223B748: ; 0x0223B748
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223B784 ; =0x00002445
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bne _0223B75A
	bl sub_02022974
_0223B75A:
	ldr r0, _0223B784 ; =0x00002445
	cmp r4, #0
	strb r4, [r5, r0]
	bne _0223B772
	ldr r0, _0223B788 ; =0x0000000E
	bl sub_02006514
	ldr r0, _0223B78C ; =0x0000000C
	mov r1, #2
	bl sub_02006590
	pop {r3, r4, r5, pc}
_0223B772:
	ldr r0, _0223B78C ; =0x0000000C
	bl sub_02006514
	ldr r0, _0223B788 ; =0x0000000E
	mov r1, #2
	bl sub_02006590
	pop {r3, r4, r5, pc}
	nop
_0223B784: .word 0x00002445
_0223B788: .word 0x0000000E
_0223B78C: .word 0x0000000C
	thumb_func_end ov16_0223B748

	thumb_func_start ov16_0223B790
ov16_0223B790: ; 0x0223B790
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	add r7, r0, #0
	bl sub_020241F8
	add r5, r0, #0
	bl sub_020241F0
	add r1, r0, #0
	mov r0, #0
	add r2, r5, #0
	bl sub_020C4AF0
	bl sub_02024208
	add r5, r0, #0
	bl sub_02024200
	add r1, r0, #0
	mov r0, #0
	add r2, r5, #0
	bl sub_020C4AF0
	bl ov16_0223CD7C
	str r0, [r4, #0]
	bl sub_020177A4
	mov r0, #2
	mov r1, #5
	bl sub_02002BB8
	mov r0, #0xe
	mov r1, #2
	mov r2, #0xf
	mov r3, #5
	bl sub_0200C440
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	mov r0, #5
	bl sub_02002F38
	str r0, [r4, #0x28]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #0x28]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #5
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #0x28]
	lsl r2, r1, #9
	mov r3, #5
	bl sub_02002F70
	mov r2, #7
	ldr r0, [r4, #0x28]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #5
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #0x28]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #5
	bl sub_02002F70
	mov r0, #5
	bl sub_02018340
	str r0, [r4, #4]
	mov r0, #5
	mov r1, #3
	bl sub_0201A778
	str r0, [r4, #8]
	mov r6, #0
	add r5, r4, #0
_0223B850:
	mov r1, #0x32
	mov r0, #5
	lsl r1, r1, #6
	bl sub_02018144
	mov r1, #0x1d
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _0223B850
	mov r0, #0x40
	mov r1, #5
	bl sub_0201DBEC
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r5, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r6, r0, #0
	add r0, r4, #0
	bl ov16_0223F6E4
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_0223E1B4
	add r3, r0, #0
	mov r0, #7
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, r6, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r4, #0
	bl ov16_022687C8
	mov r1, #0x67
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r5, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl sub_02006CA8
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov16_0223C004
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, [r4, #8]
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r0, #5
	bl sub_0200C6E4
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	ldr r1, _0223BB90 ; =0x0226E2E4
	ldr r2, _0223BB94 ; =0x0226E29C
	mov r3, #0x20
	bl sub_0200C73C
	ldr r1, _0223BB98 ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_0200C704
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x80
	bl sub_0200C7C0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x90
	add r1, #0x94
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, _0223BB9C ; =0x0226E2B0
	bl sub_0200CB30
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_0200C738
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov16_02268A88
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r6, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #0
	mov r2, #0x67
	str r3, [sp, #4]
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	add r0, r6, #0
	add r1, r5, #0
	bl ov16_02268C04
	mov r1, #0x67
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r5, #0
	bl ov16_02268D40
	add r0, r6, #0
	bl sub_02006CA8
	add r0, r5, #0
	bl sub_02006CA8
	mov r0, #5
	bl sub_0200762C
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #0xc0
	bl sub_02008A84
	add r0, r4, #0
	bl ov16_0223F36C
	bl ov16_0223CE28
	mov r0, #5
	bl ov12_0221FCDC
	add r1, r4, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov16_0223C210
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r2, #0x17
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	mov r3, #5
	bl sub_0200B144
	str r0, [r4, #0xc]
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0
	mov r3, #5
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #5
	bl sub_0200B358
	str r0, [r4, #0x14]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #5
	bl sub_02023790
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02003164
	ldr r1, _0223BBA0 ; =0x00002228
	mov r2, #0xe0
	add r1, r4, r1
	bl sub_020C4B18
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_02003164
	ldr r1, _0223BBA4 ; =0x00002308
	mov r2, #0xe0
	add r1, r4, r1
	bl sub_020C4B18
	add r0, r4, #0
	bl ov16_0223EC04
	mov r1, #0
	lsl r6, r0, #2
	str r1, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	ldr r3, _0223BBA8 ; =0x00002404
	mov r5, #0xc
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x28]
	mul r5, r3
	ldr r3, _0223BBAC ; =0x0226E44C
	mov r2, #2
	add r3, r3, r5
	ldr r3, [r6, r3]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_020038B0
	mov r0, #0xc0
	str r0, [sp]
	add r0, #0x40
	str r0, [sp, #4]
	ldr r3, _0223BBA8 ; =0x00002404
	mov r5, #0xc
	ldr r3, [r4, r3]
	ldr r0, [r4, #0x28]
	mul r5, r3
	ldr r3, _0223BBAC ; =0x0226E44C
	mov r1, #0
	add r3, r3, r5
	ldr r3, [r6, r3]
	mov r2, #2
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_020038B0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xdf
	str r0, [sp, #4]
	ldr r3, _0223BBA8 ; =0x00002404
	mov r5, #0xc
	ldr r3, [r4, r3]
	mov r1, #2
	mul r5, r3
	ldr r3, _0223BBAC ; =0x0226E44C
	ldr r0, [r4, #0x28]
	add r3, r3, r5
	ldr r3, [r6, r3]
	add r2, r1, #0
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	bl sub_020038B0
	mov r1, #0
	mov r0, #0xa0
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020038B0
	mov r2, #0
	str r2, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	mov r1, #1
	add r3, r2, #0
	bl sub_020038B0
	mov r2, #0
	str r2, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r3, _0223BBB0 ; =0x0000FFFF
	mov r1, #3
	bl sub_020038B0
	ldr r0, [r4, #0x28]
	mov r1, #0
	mov r2, #0xb
	mov r3, #5
	bl sub_0201567C
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02015738
	ldr r0, _0223BBB4 ; =ov16_0223CF48
	ldr r2, _0223BBB8 ; =0x0000EA60
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x1c]
	ldr r0, _0223BBBC ; =ov16_0223CF8C
	ldr r2, _0223BBC0 ; =0x0000C350
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0x20]
	mov r2, #0x4b
	ldr r0, _0223BBC4 ; =ov16_0223D0C4
	add r1, r4, #0
	lsl r2, r2, #4
	bl sub_0200DA04
	str r0, [r4, #0x24]
	mov r1, #0x32
	ldr r0, _0223BBC8 ; =0x00002438
	mvn r1, r1
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov16_0223DD4C
	add r0, r4, #0
	bl ov16_0223E1B0
	bl sub_0207D9F8
	mov r0, #5
	mov r1, #4
	mov r2, #0
	bl sub_02015F84
	mov r1, #0x72
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #4
	mov r1, #5
	bl sub_0201DCC8
	mov r1, #0x73
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0223BBCC ; =0x0000240C
	ldr r1, [r4, r0]
	mov r0, #0x10
	tst r0, r1
	beq _0223BB8A
	mov r0, #0x6f
	mov r1, #0x92
	mov r5, #0
	lsl r0, r0, #2
	lsl r1, r1, #6
_0223BB7C:
	add r2, r7, r5
	ldrb r3, [r2, r0]
	add r2, r4, r5
	add r5, r5, #1
	strb r3, [r2, r1]
	cmp r5, #4
	blt _0223BB7C
_0223BB8A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223BB90: .word 0x0226E2E4
_0223BB94: .word 0x0226E29C
_0223BB98: .word 0x00100010
_0223BB9C: .word 0x0226E2B0
_0223BBA0: .word 0x00002228
_0223BBA4: .word 0x00002308
_0223BBA8: .word 0x00002404
_0223BBAC: .word 0x0226E44C
_0223BBB0: .word 0x0000FFFF
_0223BBB4: .word ov16_0223CF48
_0223BBB8: .word 0x0000EA60
_0223BBBC: .word ov16_0223CF8C
_0223BBC0: .word 0x0000C350
_0223BBC4: .word ov16_0223D0C4
_0223BBC8: .word 0x00002438
_0223BBCC: .word 0x0000240C
	thumb_func_end ov16_0223B790

	thumb_func_start ov16_0223BBD0
ov16_0223BBD0: ; 0x0223BBD0
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0200682C
	add r4, r0, #0
	ldr r2, [r4, #0x2c]
	mov r1, #4
	tst r1, r2
	beq _0223BC16
	ldr r1, _0223BCA8 ; =0x0000240C
	mov r2, #0x10
	ldr r3, [r4, r1]
	tst r2, r3
	bne _0223BC16
	sub r1, #0x10
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0223BBF8
	ldr r1, [r4, #0x30]
	bl ov16_0224B990
_0223BBF8:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0223BCA2
	add r5, r4, #0
_0223BC02:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov16_0225C0DC
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223BC02
	b _0223BCA2
_0223BC16:
	ldr r0, _0223BCAC ; =0x000023FC
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0223BC32
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0224B990
	ldr r1, _0223BCB0 ; =0x000023FE
	strb r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02264988
_0223BC32:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0223BC58
	add r5, r4, #0
	add r7, r6, #0
_0223BC3E:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov16_0225C0DC
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02264988
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223BC3E
_0223BC58:
	ldr r0, _0223BCB0 ; =0x000023FE
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0223BCA2
	sub r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0223BC7C
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0224B990
	ldr r1, _0223BCB0 ; =0x000023FE
	strb r0, [r4, r1]
	add r0, r4, #0
	mov r1, #1
	bl ov16_02264988
_0223BC7C:
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0223BCA2
	add r5, r4, #0
	add r7, r6, #0
_0223BC88:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov16_0225C0DC
	add r0, r4, #0
	add r1, r7, #0
	bl ov16_02264988
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223BC88
_0223BCA2:
	ldr r0, _0223BCB0 ; =0x000023FE
	ldrb r0, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BCA8: .word 0x0000240C
_0223BCAC: .word 0x000023FC
_0223BCB0: .word 0x000023FE
	thumb_func_end ov16_0223BBD0

	thumb_func_start ov16_0223BCB4
ov16_0223BCB4: ; 0x0223BCB4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	ldr r3, _0223BFD4 ; =0x0000244C
	mov r2, #0x67
	ldr r1, [r4, r3]
	add r7, r0, #0
	lsl r2, r2, #2
	str r1, [r7, r2]
	add r1, r3, #0
	sub r1, #0x40
	ldr r1, [r4, r1]
	sub r2, #0x10
	str r1, [r7, r2]
	sub r3, #0x40
	ldr r2, [r4, r3]
	mov r1, #0x10
	tst r1, r2
	bne _0223BCE8
	bl sub_0202F8AC
_0223BCE8:
	ldr r0, _0223BFD8 ; =0x00002445
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0223BCF8
	add r0, r4, #0
	mov r1, #0
	bl ov16_0223B748
_0223BCF8:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	add r0, r4, #0
	bl ov16_0223EE70
	ldr r0, _0223BFDC ; =0x00002420
	ldrb r0, [r4, r0]
	cmp r0, #4
	beq _0223BD26
	ldr r0, [r4, #0x6c]
	mov r1, #0
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_0223EF68
_0223BD26:
	mov r0, #0
	str r0, [sp]
	add r6, r7, #0
	add r5, r4, #0
_0223BD2E:
	ldr r0, [r5, #0x68]
	ldr r1, [r6, #4]
	bl sub_0207A21C
	ldr r0, [r5, #0x68]
	bl sub_020181C4
	add r1, r6, #0
	add r1, #0xf8
	ldr r0, [r5, #0x48]
	ldr r1, [r1, #0]
	bl sub_02025E80
	ldr r0, [r5, #0x48]
	bl sub_020181C4
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r5, r5, #4
	str r0, [sp]
	cmp r0, #4
	blt _0223BD2E
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02015760
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r0, [r4, #0x58]
	ldr r1, [r7, r1]
	bl sub_0207D3EC
	ldr r0, [r4, #0x58]
	bl sub_020181C4
	mov r1, #0x11
	lsl r1, r1, #4
	ldr r0, [r4, #0x60]
	ldr r1, [r7, r1]
	bl sub_02026338
	ldr r0, [r4, #0x60]
	bl sub_020181C4
	mov r0, #0x45
	ldr r1, [r4, #0x64]
	lsl r0, r0, #2
	str r1, [r7, r0]
	add r1, r0, #0
	ldr r2, [r4, #0x5c]
	sub r1, #8
	str r2, [r7, r1]
	add r1, r0, #0
	add r1, #0xac
	ldr r2, [r4, r1]
	add r1, r0, #0
	add r1, #0xa4
	str r2, [r7, r1]
	add r1, r4, #0
	add r1, #0x98
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x14
	str r2, [r7, r1]
	add r1, r4, #0
	add r1, #0x9c
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0x20
	str r2, [r7, r1]
	add r1, r0, #0
	ldr r2, _0223BFE0 ; =0x00002414
	add r1, #0x7c
	ldr r3, [r4, r2]
	add r0, #0x5c
	str r3, [r7, r1]
	add r1, r2, #0
	add r1, #0xc
	ldrb r3, [r4, r1]
	mov r1, #0x3f
	add r2, #0x28
	and r1, r3
	str r1, [r7, #0x14]
	ldr r1, [r4, r2]
	mov r2, #4
	str r1, [r7, r0]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r3, #0
	bl ov16_0225B45C
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov16_0225B45C
	mov r1, #0x4e
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	mov r3, #0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #6
	bl ov16_0225B45C
	add r5, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #6
	mov r3, #2
	bl ov16_0225B45C
	mov r1, #0x4f
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	add r0, r5, r0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #7
	mov r3, #0
	bl ov16_0225B45C
	add r5, r0, #0
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #7
	mov r3, #2
	bl ov16_0225B45C
	mov r1, #5
	lsl r1, r1, #6
	ldr r2, [r7, r1]
	add r0, r5, r0
	add r0, r2, r0
	str r0, [r7, r1]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #3
	mov r3, #0
	bl ov16_0225B45C
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r7, r1]
	ldr r0, _0223BFE4 ; =0x00002478
	add r1, #0x10
	ldr r0, [r4, r0]
	mov r6, #0
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	str r0, [r7, r1]
	mov r7, #0x1d
	add r5, r4, #0
	lsl r7, r7, #4
_0223BE76:
	ldr r0, [r5, r7]
	bl sub_020181C4
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #4
	blt _0223BE76
	ldr r0, [r4, #0x18]
	bl sub_020181C4
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0x28]
	bl sub_02002F54
	ldr r0, [r4, #0xc]
	bl sub_0200B190
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r0, [r4, #0x14]
	bl sub_0200B3F0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02015FB8
	bl sub_020141E4
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl ov12_0221FDF4
	ldr r0, [r4, #0x30]
	bl ov16_0224B9DC
	ldr r0, [r4, #0x44]
	mov r6, #0
	cmp r0, #0
	ble _0223BF00
	ldr r7, _0223BFE8 ; =0x000023FD
	add r5, r4, #0
_0223BEEC:
	ldrb r2, [r4, r7]
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov16_0225C104
	ldr r0, [r4, #0x44]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, r0
	blt _0223BEEC
_0223BF00:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_02007B6C
	ldr r0, _0223BFE8 ; =0x000023FD
	ldrb r0, [r4, r0]
	cmp r0, #2
	beq _0223BF18
	add r0, r4, #0
	bl ov16_0223B3E4
_0223BF18:
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_0201A928
	ldr r0, [r4, #4]
	bl sub_020181C4
	mov r0, #0x22
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200C560
	mov r0, #2
	bl sub_02002C60
	ldr r0, [r4, #0x1c]
	bl sub_0200DA58
	ldr r0, [r4, #0x20]
	bl sub_0200DA58
	bl sub_0201E530
	ldr r0, [r4, #0]
	bl ov16_0223CE20
	ldr r0, _0223BFEC ; =0x00002434
	ldr r0, [r4, r0]
	bl sub_0201D2DC
	add r0, r4, #0
	bl ov16_0223F450
	cmp r0, #0
	beq _0223BF8C
	ldr r0, _0223BFF0 ; =0x00000704
	mov r1, #0
	bl sub_020057A4
_0223BF8C:
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201DCF0
	add r0, r4, #0
	bl ov16_0223F710
	cmp r0, #0
	beq _0223BFA6
	mov r0, #0x7f
	bl sub_0200500C
_0223BFA6:
	ldr r0, _0223BFF4 ; =0x0000247C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223BFB2
	bl ov16_0226E174
_0223BFB2:
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, _0223BFF8 ; =0x0000000B
	bl sub_02006514
	ldr r0, _0223BFFC ; =0x0000000C
	bl sub_02006514
	bl sub_020389B8
	cmp r0, #0
	bne _0223BFD2
	ldr r0, _0223C000 ; =0x00000015
	bl sub_02006514
_0223BFD2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BFD4: .word 0x0000244C
_0223BFD8: .word 0x00002445
_0223BFDC: .word 0x00002420
_0223BFE0: .word 0x00002414
_0223BFE4: .word 0x00002478
_0223BFE8: .word 0x000023FD
_0223BFEC: .word 0x00002434
_0223BFF0: .word 0x00000704
_0223BFF4: .word 0x0000247C
_0223BFF8: .word 0x0000000B
_0223BFFC: .word 0x0000000C
_0223C000: .word 0x00000015
	thumb_func_end ov16_0223BCB4

	thumb_func_start ov16_0223C004
ov16_0223C004: ; 0x0223C004
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201FF00
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	ldr r6, _0223C1EC ; =0x0226E32C
	add r3, sp, #0x20
	mov r2, #5
_0223C022:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C022
	add r0, sp, #0x20
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r6, _0223C1F0 ; =0x0226E26C
	add r3, sp, #0x10
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r1, _0223C1F4 ; =0x000023FF
	mov r0, #1
	ldrb r2, [r5, r1]
	ldr r6, _0223C1F8 ; =0x0226E3F8
	add r3, sp, #0x48
	bic r2, r0
	mov r0, #1
	orr r0, r2
	strb r0, [r5, r1]
	mov r2, #0xa
_0223C090:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C090
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0x48
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0x64
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0x80
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r1, _0223C1FC ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov16_02268744
	add r0, r5, #0
	bl ov16_0223EDE0
	add r7, r0, #0
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #5
	mov r1, #1
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200E218
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r1, _0223C200 ; =0x00002404
	mov r0, #7
	ldr r1, [r5, r1]
	add r2, r4, #0
	add r1, r1, #3
	mov r3, #3
	bl sub_02006E3C
	add r0, r5, #0
	bl ov16_0223EC04
	add r6, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _0223C200 ; =0x00002404
	ldr r0, [r5, #0x28]
	ldr r3, [r5, r2]
	mov r1, #7
	lsl r2, r3, #1
	add r2, r3, r2
	add r2, #0xac
	add r2, r2, r6
	mov r3, #5
	bl sub_02003050
	add r0, r7, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0x26
	mov r3, #5
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	mov r1, #0xe
	mov r2, #7
	mov r3, #5
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #7
	mov r1, #2
	add r2, r4, #0
	mov r3, #3
	bl sub_02006E60
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _0223C204 ; =0xFFFF1FFF
	ldr r3, _0223C208 ; =0x04001000
	and r2, r1
	str r2, [r0, #0]
	ldr r2, [r3, #0]
	and r1, r2
	add r2, r0, #0
	str r1, [r3, #0]
	add r2, #0x48
	ldrh r3, [r2]
	mov r1, #0x3f
	add r0, #0x4a
	bic r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bic r2, r1
	strh r2, [r0]
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _0223C20C ; =ov16_0223CE68
	add r1, r5, #0
	bl sub_02017798
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C1EC: .word 0x0226E32C
_0223C1F0: .word 0x0226E26C
_0223C1F4: .word 0x000023FF
_0223C1F8: .word 0x0226E3F8
_0223C1FC: .word 0x04000008
_0223C200: .word 0x00002404
_0223C204: .word 0xFFFF1FFF
_0223C208: .word 0x04001000
_0223C20C: .word ov16_0223CE68
	thumb_func_end ov16_0223C004

	thumb_func_start ov16_0223C210
ov16_0223C210: ; 0x0223C210
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl ov16_0223E22C
	add r4, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #0
	add r3, r4, #0
	bl ov16_022686CC
	mov r0, #0x63
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r5, #0
	mov r2, #1
	add r3, r4, #0
	bl ov16_022686CC
	add r0, r5, #0
	bl ov16_0223DF10
	str r0, [sp]
	ldr r0, [r5, #0x44]
	mov r4, #0
	cmp r0, #0
	ble _0223C282
	add r6, r5, #0
_0223C24C:
	ldr r1, [sp]
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov16_0225B45C
	add r7, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov16_0223DFAC
	mov r1, #0x9b
	mov r2, #0
	bl sub_02074470
	add r2, r0, #0
	ldr r1, [r6, #0x34]
	add r0, r5, #0
	add r3, r7, #0
	bl ov16_0225C038
	ldr r0, [r5, #0x44]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r0
	blt _0223C24C
_0223C282:
	bl ov16_0223DECC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0223C210

	thumb_func_start ov16_0223C288
ov16_0223C288: ; 0x0223C288
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	bl ov16_022687A0
	pop {r4, pc}
	thumb_func_end ov16_0223C288

	thumb_func_start ov16_0223C2BC
ov16_0223C2BC: ; 0x0223C2BC
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0223C2BC

	thumb_func_start ov16_0223C2C0
ov16_0223C2C0: ; 0x0223C2C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r4, r0, #0
	ldr r0, [r1, #0]
	str r1, [sp, #4]
	str r0, [r4, #0x2c]
	mov r7, #0
	add r6, r4, #0
	add r5, r1, #0
_0223C2D2:
	mov r0, #5
	bl sub_02025E6C
	add r1, r0, #0
	add r0, r5, #0
	str r1, [r6, #0x48]
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025E80
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r7, r7, #1
	str r0, [r6, #0x78]
	add r6, r6, #4
	add r5, r5, #4
	cmp r7, #4
	blt _0223C2D2
	mov r1, #0x1b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldrh r1, [r0, r1]
	ldr r0, _0223C62C ; =0x00002446
	ldr r3, [sp, #4]
	strh r1, [r4, r0]
	mov r0, #0x1a
	ldr r1, _0223C630 ; =0x00002468
	mov r6, #0
	add r5, r4, #0
	lsl r0, r0, #4
_0223C310:
	ldr r2, [r3, r0]
	add r6, r6, #1
	str r2, [r5, r1]
	add r3, r3, #4
	add r5, r5, #4
	cmp r6, #4
	blt _0223C310
	bl sub_0201D2D0
	ldr r1, _0223C634 ; =0x00002434
	ldr r2, [sp, #4]
	str r0, [r4, r1]
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r3, [r2, r0]
	add r2, r1, #0
	add r2, #0x14
	str r3, [r4, r2]
	ldr r2, [sp, #4]
	ldr r3, [r2, r0]
	add r2, r1, #0
	add r2, #0x18
	str r3, [r4, r2]
	ldr r2, [sp, #4]
	sub r0, #0x10
	ldr r0, [r2, r0]
	sub r1, #0x28
	str r0, [r4, r1]
	mov r0, #5
	bl sub_0207D3C0
	str r0, [r4, #0x58]
	mov r1, #0x42
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [r4, #0x58]
	bl sub_0207D3EC
	mov r0, #5
	bl sub_02026324
	str r0, [r4, #0x60]
	mov r1, #0x11
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	ldr r1, [r4, #0x60]
	bl sub_02026338
	mov r1, #0x45
	lsl r1, r1, #2
	ldr r0, [sp, #4]
	add r2, r1, #0
	ldr r0, [r0, r1]
	add r3, r1, #0
	str r0, [r4, #0x64]
	ldr r0, [sp, #4]
	add r2, #0x1c
	ldr r2, [r0, r2]
	add r0, r1, #0
	add r0, #0xa0
	str r2, [r4, r0]
	add r2, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x38
	ldr r2, [r0, r2]
	add r0, r1, #0
	add r0, #0xa4
	str r2, [r4, r0]
	add r2, r1, #0
	ldr r0, [sp, #4]
	sub r2, #8
	ldr r0, [r0, r2]
	add r2, r1, #0
	str r0, [r4, #0x5c]
	ldr r0, [sp, #4]
	add r2, #0xa4
	ldr r2, [r0, r2]
	add r0, r1, #0
	add r0, #0xac
	str r2, [r4, r0]
	add r2, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x14
	ldr r2, [r0, r2]
	add r0, r4, #0
	add r0, #0x98
	str r2, [r0, #0]
	add r2, r1, #0
	ldr r0, [sp, #4]
	add r2, #0x50
	ldr r2, [r0, r2]
	ldr r0, _0223C638 ; =0x00002424
	add r3, #0x20
	str r2, [r4, r0]
	ldr r2, [sp, #4]
	ldr r3, [r2, r3]
	add r2, r4, #0
	add r2, #0x9c
	str r3, [r2, #0]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x7c
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x10
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x40
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x24
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x3c
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x20
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x44
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x1c
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x4c
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #0x14
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x80
	ldr r3, [r2, r3]
	add r2, r0, #0
	sub r2, #8
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x54
	ldr r3, [r2, r3]
	add r2, r0, #4
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x58
	ldr r3, [r2, r3]
	add r2, r0, #0
	add r2, #0xc
	str r3, [r4, r2]
	add r3, r1, #0
	ldr r2, [sp, #4]
	add r3, #0x60
	ldr r2, [r2, r3]
	add r0, #8
	str r2, [r4, r0]
	ldr r0, [sp, #4]
	add r1, #0x30
	ldr r0, [r0, r1]
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #4]
	sub r1, #0xd8
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0223C46E
	bl sub_02022974
_0223C46E:
	ldr r5, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r4, [sp, #0x34]
	add r6, r5, #0
	add r7, r4, #0
_0223C47A:
	ldr r0, [sp, #0x34]
	ldr r1, [r5, #0x18]
	add r0, #0xa0
	strh r1, [r0]
	add r3, r6, #0
	add r2, r7, #0
	mov r0, #6
	add r3, #0x28
	add r2, #0xac
	mov ip, r0
_0223C48E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, ip
	sub r0, r0, #1
	mov ip, r0
	bne _0223C48E
	ldr r0, [r3, #0]
	add r5, r5, #4
	str r0, [r2, #0]
	ldr r0, [sp, #0x34]
	add r6, #0x34
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	add r7, #0x34
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _0223C47A
	add r0, r4, #0
	bl ov16_0224B940
	str r0, [r4, #0x30]
	mov r6, #0
	add r5, r4, #0
	mov r7, #5
_0223C4C2:
	add r0, r7, #0
	bl sub_02079FF4
	str r0, [r5, #0x68]
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0223C4C2
	mov r0, #0
	ldr r6, [sp, #4]
	str r0, [sp, #0xc]
_0223C4D8:
	ldr r0, [r6, #4]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223C50A
_0223C4E4:
	ldr r0, [r6, #4]
	add r1, r5, #0
	bl sub_0207A0FC
	add r7, r0, #0
	bl sub_02075D6C
	str r0, [sp, #0x44]
	add r0, r7, #0
	mov r1, #0x6f
	add r2, sp, #0x44
	bl sub_02074B30
	ldr r0, [r6, #4]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223C4E4
_0223C50A:
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #4
	blt _0223C4D8
	ldr r0, [r4, #0x2c]
	mov r1, #4
	tst r1, r0
	bne _0223C520
	b _0223C8CC
_0223C520:
	add r0, r4, #0
	bl sub_0207A6DC
	add r0, r4, #0
	bl ov16_0223F6E4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl ov16_0223DD90
	ldr r1, [r4, #0x2c]
	mov r0, #0x80
	tst r0, r1
	beq _0223C606
	ldr r6, _0223C63C ; =0x0226E560
	mov r5, #0
	add r7, r4, #0
_0223C548:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov16_0225BFFC
	str r0, [r7, #0x34]
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _0223C548
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_0223C56A:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov16_02263730
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_0207A21C
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223C56A
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _0223C5FC
	add r7, r4, #0
_0223C596:
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223C5E0
_0223C5A2:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223C5D4
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C5D4
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C5E0
_0223C5D4:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223C5A2
_0223C5E0:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x10]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B540
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0x10]
	cmp r0, r1
	blt _0223C596
_0223C5FC:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0225A1B0
	b _0223C8C2
_0223C606:
	mov r0, #8
	tst r0, r1
	beq _0223C702
	mov r5, #0
	add r6, r4, #0
_0223C610:
	add r0, sp, #0x40
	strb r5, [r0]
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl ov16_0223F6F0
	lsl r1, r5, #0x10
	add r7, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov16_0223F6F0
	ldr r1, _0223C640 ; =0x0226E28C
	b _0223C644
	; .align 2, 0
_0223C62C: .word 0x00002446
_0223C630: .word 0x00002468
_0223C634: .word 0x00002434
_0223C638: .word 0x00002424
_0223C63C: .word 0x0226E560
_0223C640: .word 0x0226E28C
_0223C644:
	lsl r2, r7, #2
	add r1, r1, r2
	ldrb r1, [r0, r1]
	add r0, sp, #0x40
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov16_0225BFFC
	str r0, [r6, #0x34]
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #4
	blt _0223C610
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_0223C666:
	ldr r1, [r5, #0x34]
	add r0, r4, #0
	bl ov16_02263730
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_0207A21C
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223C666
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _0223C6F8
	add r7, r4, #0
_0223C692:
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223C6DC
_0223C69E:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223C6D0
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C6D0
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C6DC
_0223C6D0:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223C69E
_0223C6DC:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x14]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B540
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0223C692
_0223C6F8:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0225A1B0
	b _0223C8C2
_0223C702:
	mov r0, #2
	tst r0, r1
	bne _0223C70A
	b _0223C816
_0223C70A:
	ldr r0, [sp, #0x38]
	ldr r1, _0223C9DC ; =0x0226E264
	lsl r0, r0, #2
	mov r5, #0
	add r6, r1, r0
	add r7, r4, #0
_0223C716:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov16_0225BFFC
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov16_02263730
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _0223C716
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_0223C740:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_0207A21C
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223C740
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _0223C814
_0223C762:
	ldr r0, [sp, #0x18]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x30]
	lsl r0, r0, #2
	add r7, r4, r0
	ldr r0, [r7, #0x68]
	mov r6, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223C7FA
_0223C77A:
	ldr r0, [r7, #0x68]
	add r1, r6, #0
	bl sub_0207A0FC
	ldr r1, [sp, #0x18]
	add r5, r0, #0
	cmp r1, #1
	ble _0223C7C6
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x30]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B45C
	cmp r6, r0
	beq _0223C7EE
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223C7EE
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C7EE
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C7FA
	b _0223C7EE
_0223C7C6:
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223C7EE
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C7EE
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C7FA
_0223C7EE:
	ldr r0, [r7, #0x68]
	add r6, r6, #1
	bl sub_0207A0F8
	cmp r6, r0
	blt _0223C77A
_0223C7FA:
	str r6, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x18]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B540
	ldr r0, [sp, #0x18]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _0223C762
_0223C814:
	b _0223C8C2
_0223C816:
	ldr r0, [sp, #0x38]
	ldr r1, _0223C9E0 ; =0x0226E260
	lsl r0, r0, #1
	mov r5, #0
	add r6, r1, r0
	add r7, r4, #0
_0223C822:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov16_0225BFFC
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov16_02263730
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #2
	blt _0223C822
	mov r0, #0
	str r5, [r4, #0x44]
	str r0, [sp, #0x1c]
	add r7, r4, #0
_0223C84E:
	ldr r0, [sp, #4]
	ldr r1, [r7, #0x68]
	ldr r0, [r0, #4]
	bl sub_0207A21C
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223C8A2
_0223C864:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223C896
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C896
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C8A2
_0223C896:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223C864
_0223C8A2:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B540
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #4
	blt _0223C84E
_0223C8C2:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0225A1B0
	b _0223CC84
_0223C8CC:
	mov r1, #0x10
	tst r1, r0
	beq _0223C9D2
	ldr r6, _0223C9E4 ; =0x0226E560
	mov r5, #0
	add r7, r4, #0
_0223C8D8:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov16_0225BFFC
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov16_02263730
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _0223C8D8
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_0223C902:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_0207A21C
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223C902
	ldr r0, [r4, #0x44]
	mov r7, #0
	cmp r0, #0
	ble _0223C9C2
_0223C922:
	add r0, r4, #0
	add r1, r7, #0
	mov r5, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _0223C9A6
_0223C930:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov16_0223DFAC
	add r6, r0, #0
	cmp r7, #2
	bne _0223C970
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223C998
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C998
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223C998
	ldr r0, [sp, #0x3c]
	cmp r0, r5
	bne _0223C9A6
	b _0223C998
_0223C970:
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223C998
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C998
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223C9A6
_0223C998:
	add r0, r4, #0
	add r1, r7, #0
	add r5, r5, #1
	bl ov16_0223DF60
	cmp r5, r0
	blt _0223C930
_0223C9A6:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	mov r2, #2
	add r3, r7, #0
	bl ov16_0225B540
	cmp r7, #0
	bne _0223C9BA
	str r5, [sp, #0x3c]
_0223C9BA:
	ldr r0, [r4, #0x44]
	add r7, r7, #1
	cmp r7, r0
	blt _0223C922
_0223C9C2:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0225A1B0
	ldr r0, _0223C9E8 ; =0x000023FC
	mov r1, #1
	strb r1, [r4, r0]
	b _0223CC84
_0223C9D2:
	mov r1, #8
	tst r1, r0
	beq _0223CAB4
	ldr r6, _0223C9E4 ; =0x0226E560
	b _0223C9EC
	; .align 2, 0
_0223C9DC: .word 0x0226E264
_0223C9E0: .word 0x0226E260
_0223C9E4: .word 0x0226E560
_0223C9E8: .word 0x000023FC
_0223C9EC:
	mov r5, #0
	add r7, r4, #0
_0223C9F0:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov16_0225BFFC
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov16_02263730
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _0223C9F0
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_0223CA1A:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_0207A21C
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223CA1A
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _0223CAA4
	add r7, r4, #0
_0223CA3E:
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223CA88
_0223CA4A:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223CA7C
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223CA7C
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223CA88
_0223CA7C:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223CA4A
_0223CA88:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x20]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B540
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	add r7, r7, #4
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _0223CA3E
_0223CAA4:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0225A1B0
	ldr r0, _0223CD28 ; =0x000023FC
	mov r1, #1
	strb r1, [r4, r0]
	b _0223CC84
_0223CAB4:
	mov r1, #2
	tst r0, r1
	bne _0223CABC
	b _0223CBD0
_0223CABC:
	ldr r6, _0223CD2C ; =0x0226E560
	mov r5, #0
	add r7, r4, #0
_0223CAC2:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov16_0225BFFC
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov16_02263730
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #4
	blt _0223CAC2
	str r5, [r4, #0x44]
	mov r6, #0
	add r5, r4, #0
_0223CAEC:
	ldr r0, [sp, #4]
	ldr r1, [r5, #0x68]
	ldr r0, [r0, #4]
	bl sub_0207A21C
	ldr r0, [sp, #4]
	add r6, r6, #1
	add r0, r0, #4
	add r5, r5, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223CAEC
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x44]
	cmp r0, #0
	ble _0223CBC0
_0223CB0E:
	ldr r0, [sp, #0x24]
	mov r1, #1
	and r0, r1
	str r0, [sp, #0x2c]
	lsl r0, r0, #2
	add r7, r4, r0
	ldr r0, [r7, #0x68]
	mov r6, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223CBA6
_0223CB26:
	ldr r0, [r7, #0x68]
	add r1, r6, #0
	bl sub_0207A0FC
	ldr r1, [sp, #0x24]
	add r5, r0, #0
	cmp r1, #1
	ble _0223CB72
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x2c]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B45C
	cmp r6, r0
	beq _0223CB9A
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223CB9A
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223CB9A
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223CBA6
	b _0223CB9A
_0223CB72:
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223CB9A
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223CB9A
	add r0, r5, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223CBA6
_0223CB9A:
	ldr r0, [r7, #0x68]
	add r6, r6, #1
	bl sub_0207A0F8
	cmp r6, r0
	blt _0223CB26
_0223CBA6:
	str r6, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x24]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B540
	ldr r0, [sp, #0x24]
	ldr r1, [r4, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	blt _0223CB0E
_0223CBC0:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0225A1B0
	ldr r0, _0223CD28 ; =0x000023FC
	mov r1, #1
	strb r1, [r4, r0]
	b _0223CC84
_0223CBD0:
	ldr r6, _0223CD30 ; =0x0226E25C
	mov r5, #0
	add r7, r4, #0
_0223CBD6:
	add r0, sp, #0x40
	strb r5, [r0]
	ldrb r1, [r6]
	strb r1, [r0, #1]
	add r0, r4, #0
	add r1, sp, #0x40
	bl ov16_0225BFFC
	add r1, r0, #0
	add r0, r4, #0
	str r1, [r7, #0x34]
	bl ov16_02263730
	add r5, r5, #1
	add r6, r6, #1
	add r7, r7, #4
	cmp r5, #2
	blt _0223CBD6
	mov r0, #0
	str r5, [r4, #0x44]
	str r0, [sp, #0x28]
	add r7, r4, #0
_0223CC02:
	ldr r0, [sp, #4]
	ldr r1, [r7, #0x68]
	ldr r0, [r0, #4]
	bl sub_0207A21C
	ldr r0, [r7, #0x68]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223CC56
_0223CC18:
	ldr r0, [r7, #0x68]
	add r1, r5, #0
	bl sub_0207A0FC
	mov r1, #5
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	cmp r0, #0
	beq _0223CC4A
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223CC4A
	add r0, r6, #0
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223CC56
_0223CC4A:
	ldr r0, [r7, #0x68]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223CC18
_0223CC56:
	str r5, [sp]
	ldr r1, [r4, #0x30]
	ldr r3, [sp, #0x28]
	add r0, r4, #0
	mov r2, #2
	bl ov16_0225B540
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _0223CC02
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_0225A1B0
	ldr r0, _0223CD28 ; =0x000023FC
	mov r1, #1
	strb r1, [r4, r0]
_0223CC84:
	mov r0, #2
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #8
	tst r0, r1
	beq _0223CCA0
	ldr r0, [r4, #0x6c]
	mov r1, #0
	bl sub_0207A0FC
	add r2, r4, #0
	mov r1, #0x90
	add r2, #0xf4
	bl sub_02074470
_0223CCA0:
	ldr r1, [r4, #0x2c]
	mov r0, #1
	tst r0, r1
	beq _0223CD22
	add r0, r4, #0
	add r0, #0xe1
	ldrb r0, [r0]
	bl ov16_0223CD3C
	cmp r0, #1
	beq _0223CCC2
	ldr r0, _0223CD34 ; =0x00000149
	ldrb r0, [r4, r0]
	bl ov16_0223CD3C
	cmp r0, #1
	bne _0223CD22
_0223CCC2:
	ldr r0, [r4, #0x68]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223CCF2
	ldr r6, _0223CD38 ; =0x00002408
	mov r7, #3
_0223CCD2:
	ldr r0, [r4, #0x68]
	add r1, r5, #0
	bl sub_0207A0FC
	ldr r2, [r4, r6]
	add r1, r7, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_02075C74
	ldr r0, [r4, #0x68]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223CCD2
_0223CCF2:
	ldr r0, [r4, #0x70]
	mov r5, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _0223CD22
	ldr r6, _0223CD38 ; =0x00002408
	mov r7, #3
_0223CD02:
	ldr r0, [r4, #0x70]
	add r1, r5, #0
	bl sub_0207A0FC
	ldr r2, [r4, r6]
	add r1, r7, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_02075C74
	ldr r0, [r4, #0x70]
	add r5, r5, #1
	bl sub_0207A0F8
	cmp r5, r0
	blt _0223CD02
_0223CD22:
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CD28: .word 0x000023FC
_0223CD2C: .word 0x0226E560
_0223CD30: .word 0x0226E25C
_0223CD34: .word 0x00000149
_0223CD38: .word 0x00002408
	thumb_func_end ov16_0223C2C0

	thumb_func_start ov16_0223CD3C
ov16_0223CD3C: ; 0x0223CD3C
	sub r0, #0x3e
	cmp r0, #0x11
	bhi _0223CD76
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223CD4E: ; jump table
	.short _0223CD72 - _0223CD4E - 2 ; case 0
	.short _0223CD76 - _0223CD4E - 2 ; case 1
	.short _0223CD72 - _0223CD4E - 2 ; case 2
	.short _0223CD72 - _0223CD4E - 2 ; case 3
	.short _0223CD72 - _0223CD4E - 2 ; case 4
	.short _0223CD72 - _0223CD4E - 2 ; case 5
	.short _0223CD72 - _0223CD4E - 2 ; case 6
	.short _0223CD72 - _0223CD4E - 2 ; case 7
	.short _0223CD76 - _0223CD4E - 2 ; case 8
	.short _0223CD76 - _0223CD4E - 2 ; case 9
	.short _0223CD76 - _0223CD4E - 2 ; case 10
	.short _0223CD76 - _0223CD4E - 2 ; case 11
	.short _0223CD72 - _0223CD4E - 2 ; case 12
	.short _0223CD72 - _0223CD4E - 2 ; case 13
	.short _0223CD72 - _0223CD4E - 2 ; case 14
	.short _0223CD72 - _0223CD4E - 2 ; case 15
	.short _0223CD72 - _0223CD4E - 2 ; case 16
	.short _0223CD72 - _0223CD4E - 2 ; case 17
_0223CD72:
	mov r0, #1
	bx lr
_0223CD76:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0223CD3C

	thumb_func_start ov16_0223CD7C
ov16_0223CD7C: ; 0x0223CD7C
	push {r3, lr}
	sub sp, #8
	mov r2, #2
	mov r1, #0
	ldr r0, _0223CD98 ; =ov16_0223CD9C
	str r2, [sp]
	str r0, [sp, #4]
	mov r0, #5
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	nop
_0223CD98: .word ov16_0223CD9C
	thumb_func_end ov16_0223CD7C

	thumb_func_start ov16_0223CD9C
ov16_0223CD9C: ; 0x0223CD9C
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _0223CE08 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0223CE0C ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0223CE10 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_020BFC74
	mov r0, #0
	ldr r2, _0223CE14 ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl sub_020BFD58
	ldr r1, _0223CE18 ; =0xBFFF0000
	ldr r0, _0223CE1C ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0223CE08: .word 0x04000008
_0223CE0C: .word 0xFFFFCFFD
_0223CE10: .word 0x0000CFFB
_0223CE14: .word 0x00007FFF
_0223CE18: .word 0xBFFF0000
_0223CE1C: .word 0x04000580
	thumb_func_end ov16_0223CD9C

	thumb_func_start ov16_0223CE20
ov16_0223CE20: ; 0x0223CE20
	ldr r3, _0223CE24 ; =sub_020242C4
	bx r3
	; .align 2, 0
_0223CE24: .word sub_020242C4
	thumb_func_end ov16_0223CE20

	thumb_func_start ov16_0223CE28
ov16_0223CE28: ; 0x0223CE28
	push {r3, r4, r5, lr}
	ldr r3, _0223CE60 ; =0x02100DEC
	mov r0, #2
	mov r1, #0
	ldr r3, [r3, #0]
	lsl r0, r0, #0xe
	add r2, r1, #0
	blx r3
	ldr r3, _0223CE64 ; =0x02100DF4
	mov r1, #0
	add r4, r0, #0
	ldr r3, [r3, #0]
	mov r0, #0xc0
	add r2, r1, #0
	blx r3
	add r5, r0, #0
	cmp r4, #0
	bne _0223CE50
	bl sub_02022974
_0223CE50:
	cmp r5, #0
	bne _0223CE58
	bl sub_02022974
_0223CE58:
	bl sub_02014000
	pop {r3, r4, r5, pc}
	nop
_0223CE60: .word 0x02100DEC
_0223CE64: .word 0x02100DF4
	thumb_func_end ov16_0223CE28

	thumb_func_start ov16_0223CE68
ov16_0223CE68: ; 0x0223CE68
	push {r3, r4, r5, lr}
	sub sp, #0x50
	ldr r1, _0223CF00 ; =0x000023FF
	add r4, r0, #0
	ldrb r2, [r4, r1]
	lsl r0, r2, #0x1f
	lsr r0, r0, #0x1f
	beq _0223CE88
	mov r0, #1
	bic r2, r0
	strb r2, [r4, r1]
	ldr r0, _0223CF04 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r0, _0223CF08 ; =0x04001050
	strh r1, [r0]
_0223CE88:
	ldr r1, _0223CF00 ; =0x000023FF
	ldrb r2, [r4, r1]
	lsl r0, r2, #0x1e
	lsr r0, r0, #0x1f
	beq _0223CEAC
	mov r0, #2
	bic r2, r0
	strb r2, [r4, r1]
	ldr r5, _0223CF0C ; =0x0226E354
	add r3, sp, #0x28
	mov r2, #5
_0223CE9E:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223CE9E
	add r0, sp, #0x28
	bl sub_0201FE94
_0223CEAC:
	ldr r1, _0223CF00 ; =0x000023FF
	ldrb r2, [r4, r1]
	lsl r0, r2, #0x1d
	lsr r0, r0, #0x1f
	beq _0223CED0
	mov r0, #4
	bic r2, r0
	strb r2, [r4, r1]
	ldr r5, _0223CF10 ; =0x0226E37C
	add r3, sp, #0
	mov r2, #5
_0223CEC2:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223CEC2
	add r0, sp, #0
	bl sub_0201FE94
_0223CED0:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_02008A94
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, [r4, #0x28]
	bl sub_02003694
	ldr r0, [r4, #4]
	bl sub_0201C2B8
	ldr r3, _0223CF14 ; =0x027E0000
	ldr r1, _0223CF18 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	add sp, #0x50
	pop {r3, r4, r5, pc}
	nop
_0223CF00: .word 0x000023FF
_0223CF04: .word 0x04000050
_0223CF08: .word 0x04001050
_0223CF0C: .word 0x0226E354
_0223CF10: .word 0x0226E37C
_0223CF14: .word 0x027E0000
_0223CF18: .word 0x00003FF8
	thumb_func_end ov16_0223CE68

	thumb_func_start ov16_0223CF1C
ov16_0223CF1C: ; 0x0223CF1C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_02003694
	bl sub_0201DCAC
	ldr r0, [r4, #4]
	bl sub_0201C2B8
	ldr r3, _0223CF40 ; =0x027E0000
	ldr r1, _0223CF44 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0223CF40: .word 0x027E0000
_0223CF44: .word 0x00003FF8
	thumb_func_end ov16_0223CF1C

	thumb_func_start ov16_0223CF48
ov16_0223CF48: ; 0x0223CF48
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	mov r0, #5
	bl sub_02038A1C
	ldr r0, _0223CF88 ; =0x000023FD
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0223CF60
	cmp r0, #3
	bne _0223CF86
_0223CF60:
	cmp r0, #0
	bne _0223CF68
	bl ov11_0221F8F0
_0223CF68:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_02007768
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_0200C7EC
	bl sub_0200C808
	mov r0, #1
	mov r1, #0
	bl sub_020241BC
_0223CF86:
	pop {r4, pc}
	; .align 2, 0
_0223CF88: .word 0x000023FD
	thumb_func_end ov16_0223CF48

	thumb_func_start ov16_0223CF8C
ov16_0223CF8C: ; 0x0223CF8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov16_0223DF1C
	str r0, [sp]
	add r0, r5, #0
	mov r6, #0
	bl ov16_0223F450
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _0223CFB2
	b _0223D0BC
_0223CFB2:
	mov r0, #2
	tst r0, r4
	beq _0223CFD0
	mov r0, #1
	tst r0, r4
	beq _0223D0BC
	ldr r0, _0223D0C0 ; =0x00000704
	add r1, r6, #0
	bl sub_020057A4
	add r0, r5, #0
	mov r1, #2
	bl ov16_0223F460
	pop {r3, r4, r5, r6, r7, pc}
_0223CFD0:
	ldr r0, [sp]
	add r4, r6, #0
	cmp r0, #0
	ble _0223D03E
_0223CFD8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223DF14
	add r7, r0, #0
	bl ov16_02263AF0
	cmp r0, #0
	bne _0223CFF6
	add r0, r5, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	beq _0223D00E
_0223CFF6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223E208
	cmp r0, #0
	bne _0223D036
	add r0, r5, #0
	bl ov16_0223EBEC
	mov r1, #0x10
	tst r0, r1
	beq _0223D036
_0223D00E:
	add r0, r7, #0
	bl ov16_02263B08
	add r1, r0, #0
	beq _0223D036
	ldr r0, [r1, #0x28]
	ldr r1, [r1, #0x2c]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #1
	bne _0223D036
	add r0, r4, #0
	bl sub_020787CC
	orr r6, r0
_0223D036:
	ldr r0, [sp]
	add r4, r4, #1
	cmp r4, r0
	blt _0223CFD8
_0223D03E:
	cmp r6, #0
	beq _0223D064
	add r0, r5, #0
	bl ov16_0223F450
	cmp r0, #0
	bne _0223D064
	ldr r0, _0223D0C0 ; =0x00000704
	bl sub_02005748
	add r0, r5, #0
	mov r1, #1
	bl ov16_0223F460
	add r0, r5, #0
	mov r1, #4
	bl ov16_0223F48C
	b _0223D082
_0223D064:
	cmp r6, #0
	bne _0223D082
	add r0, r5, #0
	bl ov16_0223F450
	cmp r0, #0
	beq _0223D082
	ldr r0, _0223D0C0 ; =0x00000704
	mov r1, #0
	bl sub_020057A4
	add r0, r5, #0
	mov r1, #0
	bl ov16_0223F460
_0223D082:
	add r0, r5, #0
	bl ov16_0223F450
	cmp r0, #0
	beq _0223D0BC
	add r0, r5, #0
	bl ov16_0223F47C
	add r4, r0, #0
	ldr r0, _0223D0C0 ; =0x00000704
	bl sub_020057D4
	cmp r0, #0
	bne _0223D0BC
	sub r1, r4, #1
	bne _0223D0B2
	ldr r0, _0223D0C0 ; =0x00000704
	bl sub_02005748
	add r0, r5, #0
	mov r1, #4
	bl ov16_0223F48C
	pop {r3, r4, r5, r6, r7, pc}
_0223D0B2:
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov16_0223F48C
_0223D0BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D0C0: .word 0x00000704
	thumb_func_end ov16_0223CF8C

	thumb_func_start ov16_0223D0C4
ov16_0223D0C4: ; 0x0223D0C4
	push {r3, r4, r5, lr}
	ldr r3, _0223D0F0 ; =0x00002438
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, r3]
	mov r1, #1
	add r0, r0, #3
	str r0, [r4, r3]
	ldr r0, [r4, #4]
	ldr r3, [r4, r3]
	mov r2, #3
	bl sub_02019184
	ldr r0, _0223D0F0 ; =0x00002438
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223D0EC
	add r0, r5, #0
	bl sub_0200DA58
_0223D0EC:
	pop {r3, r4, r5, pc}
	nop
_0223D0F0: .word 0x00002438
	thumb_func_end ov16_0223D0C4

	thumb_func_start ov16_0223D0F4
ov16_0223D0F4: ; 0x0223D0F4
	push {r3, lr}
	bl sub_020389B8
	cmp r0, #0
	bne _0223D106
	ldr r0, _0223D108 ; =0x00000015
	mov r1, #2
	bl sub_02006590
_0223D106:
	pop {r3, pc}
	; .align 2, 0
_0223D108: .word 0x00000015
	thumb_func_end ov16_0223D0F4

	thumb_func_start ov16_0223D10C
ov16_0223D10C: ; 0x0223D10C
	push {r4, r5, r6, lr}
	sub sp, #0x68
	add r4, r1, #0
	ldr r1, _0223D330 ; =0x00001028
	mov r2, #5
	bl sub_0200681C
	add r5, r0, #0
	ldr r0, _0223D334 ; =0x00001020
	str r4, [r5, #0]
	mov r2, #0
	strb r2, [r5, r0]
	add r1, r0, #1
	strb r2, [r5, r1]
	add r0, r0, #2
	strh r2, [r5, r0]
	mov r0, #5
	bl sub_02002F38
	str r0, [r5, #0xc]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r5, #0xc]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #5
	bl sub_02002F70
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r2, #2
	add r3, r1, #0
	bl sub_020038B0
	mov r0, #5
	bl sub_02018340
	str r0, [r5, #4]
	mov r0, #5
	mov r1, #1
	bl sub_0201A778
	str r0, [r5, #8]
	add r0, r5, #0
	bl sub_0207A744
	bl sub_0201FF00
	ldr r6, _0223D338 ; =0x0226E304
	add r3, sp, #0x40
	mov r2, #5
_0223D17E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223D17E
	add r0, sp, #0x40
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #5
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #8
	bl sub_020C4AF0
	ldr r6, _0223D33C ; =0x0226E27C
	add r3, sp, #0x30
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r6, _0223D340 ; =0x0226E2C8
	add r3, sp, #0x14
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #1
	str r0, [r3, #0]
	ldr r0, [r5, #4]
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02019EBC
	mov r0, #0x13
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02027B50
	add r4, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r5, #4]
	add r2, r1, #0
	mov r3, #0xa
	bl sub_0200E218
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0xe
	mov r2, #7
	mov r3, #5
	bl sub_02003050
	add r0, r4, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xa0
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0x26
	mov r3, #5
	bl sub_02003050
	mov r1, #0
	mov r0, #1
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020038B0
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	mov r0, #0x1f
	str r0, [sp, #0x10]
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	mov r2, #1
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, [r5, #8]
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r0, [r5, #8]
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r2, #0x17
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #4
	mov r3, #5
	bl sub_0200B144
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #5
	bl sub_02023790
	add r6, r0, #0
	ldr r1, _0223D344 ; =0x0000039B
	add r0, r4, #0
	add r2, r6, #0
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #8]
	mov r1, #1
	add r2, r6, #0
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	ldr r0, _0223D348 ; =ov16_0223CF1C
	add r1, r5, #0
	bl sub_02017798
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r2, _0223D34C ; =0x0000FFFF
	mov r1, #5
	bl sub_02003178
	ldr r0, [r5, #8]
	mov r1, #1
	bl sub_0200E7FC
	ldr r1, _0223D350 ; =0x00001024
	str r0, [r5, r1]
	bl ov16_0223DECC
	add sp, #0x68
	pop {r4, r5, r6, pc}
	nop
_0223D330: .word 0x00001028
_0223D334: .word 0x00001020
_0223D338: .word 0x0226E304
_0223D33C: .word 0x0226E27C
_0223D340: .word 0x0226E2C8
_0223D344: .word 0x0000039B
_0223D348: .word ov16_0223CF1C
_0223D34C: .word 0x0000FFFF
_0223D350: .word 0x00001024
	thumb_func_end ov16_0223D10C

	thumb_func_start ov16_0223D354
ov16_0223D354: ; 0x0223D354
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_0200682C
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #5
	bl sub_02038A1C
	ldr r0, _0223D658 ; =0x00001021
	mov r7, #0
	ldrb r1, [r4, r0]
	cmp r1, #0x21
	bls _0223D372
	b _0223D798
_0223D372:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223D37E: ; jump table
	.short _0223D3C2 - _0223D37E - 2 ; case 0
	.short _0223D3D8 - _0223D37E - 2 ; case 1
	.short _0223D3EC - _0223D37E - 2 ; case 2
	.short _0223D3FC - _0223D37E - 2 ; case 3
	.short _0223D436 - _0223D37E - 2 ; case 4
	.short _0223D70E - _0223D37E - 2 ; case 5
	.short _0223D44E - _0223D37E - 2 ; case 6
	.short _0223D468 - _0223D37E - 2 ; case 7
	.short _0223D70E - _0223D37E - 2 ; case 8
	.short _0223D47C - _0223D37E - 2 ; case 9
	.short _0223D498 - _0223D37E - 2 ; case 10
	.short _0223D70E - _0223D37E - 2 ; case 11
	.short _0223D4AC - _0223D37E - 2 ; case 12
	.short _0223D4C6 - _0223D37E - 2 ; case 13
	.short _0223D70E - _0223D37E - 2 ; case 14
	.short _0223D4DA - _0223D37E - 2 ; case 15
	.short _0223D4F4 - _0223D37E - 2 ; case 16
	.short _0223D70E - _0223D37E - 2 ; case 17
	.short _0223D508 - _0223D37E - 2 ; case 18
	.short _0223D522 - _0223D37E - 2 ; case 19
	.short _0223D70E - _0223D37E - 2 ; case 20
	.short _0223D536 - _0223D37E - 2 ; case 21
	.short _0223D57A - _0223D37E - 2 ; case 22
	.short _0223D70E - _0223D37E - 2 ; case 23
	.short _0223D5B6 - _0223D37E - 2 ; case 24
	.short _0223D5EA - _0223D37E - 2 ; case 25
	.short _0223D70E - _0223D37E - 2 ; case 26
	.short _0223D624 - _0223D37E - 2 ; case 27
	.short _0223D664 - _0223D37E - 2 ; case 28
	.short _0223D70E - _0223D37E - 2 ; case 29
	.short _0223D6A0 - _0223D37E - 2 ; case 30
	.short _0223D6D4 - _0223D37E - 2 ; case 31
	.short _0223D70E - _0223D37E - 2 ; case 32
	.short _0223D77E - _0223D37E - 2 ; case 33
_0223D3C2:
	add r0, r7, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_02036378
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D3D8:
	ldr r0, [r4, #0xc]
	bl sub_0200384C
	cmp r0, #0
	bne _0223D486
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D3EC:
	mov r0, #0x32
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D3FC:
	mov r0, #0x32
	bl sub_02036540
	cmp r0, #0
	beq _0223D41E
	mov r0, #0x33
	bl sub_020364F0
	ldr r0, _0223D65C ; =0x00001022
	add r1, r7, #0
	strh r1, [r4, r0]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	sub r0, r0, #1
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D41E:
	ldr r0, _0223D65C ; =0x00001022
	ldrh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrh r1, [r4, r0]
	ldr r0, _0223D660 ; =0x00000708
	cmp r1, r0
	bls _0223D486
	mov r0, #1
	bl sub_02038AE0
	b _0223D798
_0223D436:
	mov r1, #5
	add r0, r4, #0
	lsl r1, r1, #6
	bl sub_0207A8F4
	cmp r0, #1
	bne _0223D486
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D44E:
	add r0, r4, #0
	bl sub_0207A960
	cmp r0, #1
	bne _0223D486
	mov r0, #0x34
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D468:
	add r0, r4, #0
	bl sub_0207A988
	cmp r0, #1
	bne _0223D486
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D47C:
	add r0, r4, #0
	bl sub_0207A9CC
	cmp r0, #1
	beq _0223D488
_0223D486:
	b _0223D798
_0223D488:
	mov r0, #0x35
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D498:
	add r0, r4, #0
	bl sub_0207A9F8
	cmp r0, #1
	bne _0223D592
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D4AC:
	add r0, r4, #0
	bl sub_0207AA38
	cmp r0, #1
	bne _0223D592
	mov r0, #0x36
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D4C6:
	add r0, r4, #0
	bl sub_0207AA5C
	cmp r0, #1
	bne _0223D592
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D4DA:
	add r0, r4, #0
	bl sub_0207AAA0
	cmp r0, #1
	bne _0223D592
	mov r0, #0x37
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D4F4:
	add r0, r4, #0
	bl sub_0207AAC8
	cmp r0, #1
	bne _0223D592
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D508:
	add r0, r4, #0
	bl sub_0207AAFC
	cmp r0, #1
	bne _0223D592
	mov r0, #0x38
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D522:
	add r0, r4, #0
	bl sub_0207AB58
	cmp r0, #1
	bne _0223D592
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D536:
	ldr r1, [r4, #0]
	ldr r2, [r1, #0]
	mov r1, #0x80
	tst r1, r2
	bne _0223D546
	mov r1, #0x21
	strb r1, [r4, r0]
	b _0223D798
_0223D546:
	bl sub_0203608C
	cmp r0, #0
	beq _0223D55E
	mov r0, #0x39
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D55E:
	add r0, r4, #0
	mov r1, #1
	bl sub_0207AB9C
	cmp r0, #1
	bne _0223D592
	mov r0, #0x39
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D57A:
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	beq _0223D59E
	mov r0, #0x39
	bl sub_02036540
	cmp r0, #1
	beq _0223D594
_0223D592:
	b _0223D798
_0223D594:
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D59E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x39
	bl sub_0207ABD0
	cmp r0, #1
	bne _0223D694
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D5B6:
	bl sub_0203608C
	cmp r0, #0
	beq _0223D5CE
	mov r0, #0x3a
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D5CE:
	add r0, r4, #0
	mov r1, #3
	bl sub_0207AB9C
	cmp r0, #1
	bne _0223D694
	mov r0, #0x3a
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D5EA:
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	beq _0223D60C
	mov r0, #0x3a
	bl sub_02036540
	cmp r0, #1
	bne _0223D694
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D60C:
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x3a
	bl sub_0207ABD0
	cmp r0, #1
	bne _0223D694
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D624:
	bl sub_0203608C
	cmp r0, #0
	beq _0223D63C
	mov r0, #0x3b
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D63C:
	add r0, r4, #0
	mov r1, #1
	bl sub_0207AC28
	cmp r0, #1
	bne _0223D694
	mov r0, #0x3b
	bl sub_020364F0
	ldr r0, _0223D658 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
	; .align 2, 0
_0223D658: .word 0x00001021
_0223D65C: .word 0x00001022
_0223D660: .word 0x00000708
_0223D664:
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	beq _0223D686
	mov r0, #0x3b
	bl sub_02036540
	cmp r0, #1
	bne _0223D694
	ldr r0, _0223D7A0 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D686:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x3b
	bl sub_0207AC54
	cmp r0, #1
	beq _0223D696
_0223D694:
	b _0223D798
_0223D696:
	ldr r0, _0223D7A0 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D6A0:
	bl sub_0203608C
	cmp r0, #0
	beq _0223D6B8
	mov r0, #0x3c
	bl sub_020364F0
	ldr r0, _0223D7A0 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D6B8:
	add r0, r4, #0
	mov r1, #3
	bl sub_0207AC28
	cmp r0, #1
	bne _0223D798
	mov r0, #0x3c
	bl sub_020364F0
	ldr r0, _0223D7A0 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D6D4:
	mov r1, #1
	sub r0, r0, #1
	strb r1, [r4, r0]
	bl sub_0203608C
	cmp r0, #0
	beq _0223D6F6
	mov r0, #0x3c
	bl sub_02036540
	cmp r0, #1
	bne _0223D798
	ldr r0, _0223D7A0 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D6F6:
	add r0, r4, #0
	mov r1, #3
	mov r2, #0x3c
	bl sub_0207AC54
	cmp r0, #1
	bne _0223D798
	ldr r0, _0223D7A0 ; =0x00001021
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223D798
_0223D70E:
	bl sub_02035E18
	ldr r1, _0223D7A4 ; =0x00001020
	ldrb r2, [r4, r1]
	cmp r2, r0
	bne _0223D764
	add r0, r1, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x14
	bne _0223D734
	add r6, r7, #0
	add r5, r4, #0
_0223D726:
	ldr r0, [r5, #0x10]
	bl sub_020181C4
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #4
	blt _0223D726
_0223D734:
	ldr r0, _0223D7A4 ; =0x00001020
	mov r3, #0
	strb r3, [r4, r0]
	add r1, r0, #2
	strh r3, [r4, r1]
	add r1, r0, #1
	ldrb r1, [r4, r1]
	add r2, r1, #1
	add r1, r0, #1
	strb r2, [r4, r1]
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x21
	bne _0223D798
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r2, _0223D7A8 ; =0x0000FFFF
	mov r1, #5
	bl sub_02003178
	b _0223D798
_0223D764:
	add r0, r1, #2
	ldrh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrh r1, [r4, r0]
	ldr r0, _0223D7AC ; =0x00000708
	cmp r1, r0
	bls _0223D798
	mov r0, #1
	bl sub_02038AE0
	b _0223D798
_0223D77E:
	ldr r0, [r4, #0xc]
	bl sub_0200384C
	cmp r0, #0
	bne _0223D798
	ldr r0, _0223D7B0 ; =0x00001024
	mov r7, #1
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	mov r0, #0
	bl sub_02036378
_0223D798:
	add r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223D7A0: .word 0x00001021
_0223D7A4: .word 0x00001020
_0223D7A8: .word 0x0000FFFF
_0223D7AC: .word 0x00000708
_0223D7B0: .word 0x00001024
	thumb_func_end ov16_0223D354

	thumb_func_start ov16_0223D7B4
ov16_0223D7B4: ; 0x0223D7B4
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0xc]
	bl sub_02002F54
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0201A928
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov16_0223D7B4

	thumb_func_start ov16_0223D800
ov16_0223D800: ; 0x0223D800
	push {r3, r4, r5, lr}
	ldr r1, _0223D938 ; =0x00002484
	add r5, r0, #0
	mov r2, #5
	bl sub_0200681C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	add r5, r0, #0
	ldr r2, _0223D938 ; =0x00002484
	mov r0, #0
	add r1, r4, #0
	bl sub_020C4BB8
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223C2C0
	ldr r0, [r4, #0x2c]
	mov r1, #4
	tst r1, r0
	beq _0223D840
	ldr r1, _0223D93C ; =0x0000240C
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223D840
	mov r1, #0x80
	tst r0, r1
	beq _0223D848
_0223D840:
	bl sub_02039794
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223D848:
	ldr r0, _0223D940 ; =0x0000000A
	mov r1, #2
	bl sub_02006590
	ldr r1, [r4, #0x2c]
	mov r0, #8
	tst r0, r1
	bne _0223D85C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223D85C:
	mov r0, #5
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #0x30
	bl sub_020C4BB8
	bl sub_0203608C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r5, #0
	bl sub_020362F4
	cmp r0, #3
	bhi _0223D8E0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D892: ; jump table
	.short _0223D89A - _0223D892 - 2 ; case 0
	.short _0223D8C0 - _0223D892 - 2 ; case 1
	.short _0223D8C0 - _0223D892 - 2 ; case 2
	.short _0223D89A - _0223D892 - 2 ; case 3
_0223D89A:
	lsl r0, r5, #2
	add r0, r4, r0
	ldr r1, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r1, [r0, #4]
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223E258
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r1, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r1, [r0, #0xc]
	b _0223D8E0
_0223D8C0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0223E258
	lsl r0, r0, #2
	add r0, r4, r0
	ldr r2, [r0, #0x68]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	str r2, [r1, #4]
	lsl r1, r5, #2
	add r1, r4, r1
	ldr r1, [r1, #0x68]
	ldr r0, [r4, r0]
	str r1, [r0, #0xc]
_0223D8E0:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #5
	str r2, [r1, #0x24]
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x28
	strb r1, [r0]
	add r0, r5, #0
	bl sub_020362F4
	cmp r0, #3
	bhi _0223D92A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D908: ; jump table
	.short _0223D910 - _0223D908 - 2 ; case 0
	.short _0223D91E - _0223D908 - 2 ; case 1
	.short _0223D91E - _0223D908 - 2 ; case 2
	.short _0223D910 - _0223D908 - 2 ; case 3
_0223D910:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	b _0223D92A
_0223D91E:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	add r0, #0x29
	strb r1, [r0]
_0223D92A:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov11_0221F800
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D938: .word 0x00002484
_0223D93C: .word 0x0000240C
_0223D940: .word 0x0000000A
	thumb_func_end ov16_0223D800

	thumb_func_start ov16_0223D944
ov16_0223D944: ; 0x0223D944
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0200682C
	add r6, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223D986
	mov r4, #0
	mov r7, #0x71
	add r5, r4, #0
	lsl r7, r7, #2
_0223D962:
	ldr r0, [r6, r7]
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223D970
	bl sub_020181C4
_0223D970:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223D962
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223D986:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0223D944

	thumb_func_start ov16_0223D98C
ov16_0223D98C: ; 0x0223D98C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r4, #0x2c]
	mov r1, #4
	tst r1, r0
	beq _0223D9B4
	ldr r1, _0223DAD0 ; =0x0000240C
	ldr r2, [r4, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223D9B4
	mov r1, #0x80
	tst r0, r1
	beq _0223D9BC
_0223D9B4:
	bl sub_02039794
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223D9BC:
	bl sub_0203608C
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	mov r0, #5
	mov r1, #0x30
	bl sub_02018144
	mov r1, #0x71
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #0x30
	bl sub_020C4BB8
	ldr r1, [r4, #0x2c]
	mov r0, #8
	tst r0, r1
	beq _0223DA3A
	mov r6, #0
	add r5, r4, #0
_0223D9E8:
	add r0, r6, #0
	bl sub_020362F4
	mov r2, #0x71
	lsl r2, r2, #2
	ldr r2, [r4, r2]
	lsl r0, r0, #2
	ldr r1, [r5, #0x68]
	add r0, r2, r0
	str r1, [r0, #4]
	add r0, r6, #0
	bl sub_020362F4
	add r7, r0, #0
	ldr r0, [r5, #0x48]
	mov r1, #5
	bl sub_02025F04
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	lsl r1, r7, #2
	add r1, r2, r1
	add r6, r6, #1
	add r5, r5, #4
	str r0, [r1, #0x14]
	cmp r6, #4
	blt _0223D9E8
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r2, #5
	str r2, [r1, #0x24]
	ldr r1, [r4, r0]
	mov r2, #1
	add r1, #0x28
	strb r2, [r1]
	ldr r0, [r4, r0]
	add r0, #0x29
	strb r2, [r0]
	b _0223DAC0
_0223DA3A:
	add r0, r5, #0
	lsl r7, r5, #2
	bl sub_020362F4
	mov r2, #0x71
	lsl r2, r2, #2
	add r1, r4, r7
	ldr r2, [r4, r2]
	lsl r0, r0, #2
	ldr r1, [r1, #0x68]
	add r0, r2, r0
	str r1, [r0, #4]
	mov r0, #1
	eor r0, r5
	lsl r6, r0, #2
	str r0, [sp]
	bl sub_020362F4
	add r1, r4, r6
	ldr r2, [r1, #0x68]
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r0, r0, #2
	add r0, r1, r0
	str r2, [r0, #4]
	add r0, r5, #0
	bl sub_020362F4
	add r5, r0, #0
	add r0, r4, r7
	ldr r0, [r0, #0x48]
	mov r1, #5
	bl sub_02025F04
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	lsl r1, r5, #2
	add r1, r2, r1
	str r0, [r1, #0x14]
	ldr r0, [sp]
	bl sub_020362F4
	add r5, r0, #0
	add r0, r4, r6
	ldr r0, [r0, #0x48]
	mov r1, #5
	bl sub_02025F04
	mov r1, #0x71
	lsl r1, r1, #2
	ldr r3, [r4, r1]
	lsl r2, r5, #2
	add r2, r3, r2
	str r0, [r2, #0x14]
	ldr r0, [r4, r1]
	mov r2, #5
	str r2, [r0, #0x24]
	ldr r0, [r4, r1]
	mov r2, #1
	add r0, #0x28
	strb r2, [r0]
	ldr r0, [r4, r1]
	mov r2, #0
	add r0, #0x29
	strb r2, [r0]
_0223DAC0:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov11_0221F800
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DAD0: .word 0x0000240C
	thumb_func_end ov16_0223D98C

	thumb_func_start ov16_0223DAD4
ov16_0223DAD4: ; 0x0223DAD4
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0200682C
	add r6, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223DB16
	mov r4, #0
	mov r7, #0x71
	add r5, r4, #0
	lsl r7, r7, #2
_0223DAF2:
	ldr r0, [r6, r7]
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223DB00
	bl sub_020181C4
_0223DB00:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223DAF2
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223DB16:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0223DAD4

	thumb_func_start ov16_0223DB1C
ov16_0223DB1C: ; 0x0223DB1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	bl sub_02006840
	add r7, r0, #0
	ldr r0, [r7, #0]
	mov r1, #4
	tst r1, r0
	beq _0223DB40
	mov r1, #0x63
	lsl r1, r1, #2
	ldr r2, [r7, r1]
	mov r1, #0x10
	tst r1, r2
	bne _0223DB40
	mov r1, #0x80
	tst r0, r1
	beq _0223DB46
_0223DB40:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0223DB46:
	bl sub_0203608C
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0223DD08 ; =0x0000000A
	mov r1, #2
	bl sub_02006590
	mov r0, #5
	mov r1, #0x30
	bl sub_02018144
	add r6, r0, #0
	mov r0, #0x66
	lsl r0, r0, #2
	str r6, [r7, r0]
	mov r0, #0
	add r1, r6, #0
	mov r2, #0x30
	bl sub_020C4BB8
	str r7, [r6, #0]
	ldr r0, [r7, #0x14]
	cmp r0, #5
	bhi _0223DBFA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223DB84: ; jump table
	.short _0223DBFA - _0223DB84 - 2 ; case 0
	.short _0223DB90 - _0223DB84 - 2 ; case 1
	.short _0223DBB4 - _0223DB84 - 2 ; case 2
	.short _0223DBD8 - _0223DB84 - 2 ; case 3
	.short _0223DBFA - _0223DB84 - 2 ; case 4
	.short _0223DBD8 - _0223DB84 - 2 ; case 5
_0223DB90:
	bl sub_020389B8
	cmp r0, #0
	bne _0223DBA6
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x15
	bl sub_0202CF28
	b _0223DBFA
_0223DBA6:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x1a
	bl sub_0202CF28
	b _0223DBFA
_0223DBB4:
	bl sub_020389B8
	cmp r0, #0
	bne _0223DBCA
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x16
	bl sub_0202CF28
	b _0223DBFA
_0223DBCA:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x1b
	bl sub_0202CF28
	b _0223DBFA
_0223DBD8:
	bl sub_020389B8
	cmp r0, #0
	bne _0223DBEE
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x17
	bl sub_0202CF28
	b _0223DBFA
_0223DBEE:
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	mov r1, #0x1c
	bl sub_0202CF28
_0223DBFA:
	ldr r1, [r7, #0]
	mov r0, #8
	tst r0, r1
	beq _0223DC64
	mov r4, #0
	add r5, r7, #0
_0223DC06:
	add r0, r4, #0
	bl sub_020362F4
	lsl r0, r0, #2
	ldr r1, [r5, #4]
	add r0, r6, r0
	str r1, [r0, #4]
	add r0, r4, #0
	bl sub_020362F4
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_02025F04
	ldr r1, [sp, #8]
	add r4, r4, #1
	lsl r1, r1, #2
	add r1, r6, r1
	add r5, r5, #4
	str r0, [r1, #0x14]
	cmp r4, #4
	blt _0223DC06
	mov r0, #5
	str r0, [r6, #0x24]
	add r0, r6, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #1
	add r0, #0x29
	strb r1, [r0]
	ldr r1, [r7, #0x14]
	cmp r1, #5
	beq _0223DC5A
	add r0, r6, #0
	add r0, #0x2a
	strb r1, [r0]
	b _0223DCF0
_0223DC5A:
	add r0, r6, #0
	mov r1, #3
	add r0, #0x2a
	strb r1, [r0]
	b _0223DCF0
_0223DC64:
	lsl r0, r4, #2
	str r0, [sp]
	add r0, r4, #0
	bl sub_020362F4
	ldr r1, [sp]
	lsl r0, r0, #2
	add r1, r7, r1
	ldr r1, [r1, #4]
	add r0, r6, r0
	str r1, [r0, #4]
	mov r0, #1
	eor r0, r4
	lsl r5, r0, #2
	str r0, [sp, #4]
	bl sub_020362F4
	add r1, r7, r5
	lsl r0, r0, #2
	ldr r1, [r1, #4]
	add r0, r6, r0
	str r1, [r0, #4]
	add r0, r4, #0
	bl sub_020362F4
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #5
	add r0, r7, r0
	add r0, #0xf8
	ldr r0, [r0, #0]
	bl sub_02025F04
	lsl r1, r4, #2
	add r1, r6, r1
	str r0, [r1, #0x14]
	ldr r0, [sp, #4]
	bl sub_020362F4
	add r4, r0, #0
	add r0, r7, r5
	add r0, #0xf8
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_02025F04
	lsl r1, r4, #2
	add r1, r6, r1
	str r0, [r1, #0x14]
	mov r0, #5
	str r0, [r6, #0x24]
	add r0, r6, #0
	mov r1, #2
	add r0, #0x28
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0
	add r0, #0x29
	strb r1, [r0]
	ldr r1, [r7, #0x14]
	cmp r1, #5
	beq _0223DCE8
	add r0, r6, #0
	add r0, #0x2a
	strb r1, [r0]
	b _0223DCF0
_0223DCE8:
	add r0, r6, #0
	mov r1, #3
	add r0, #0x2a
	strb r1, [r0]
_0223DCF0:
	ldr r0, _0223DD0C ; =0x000001B2
	ldrb r1, [r7, r0]
	add r0, r6, #0
	add r0, #0x2c
	strb r1, [r0]
	add r0, r6, #0
	bl ov11_0221F800
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223DD08: .word 0x0000000A
_0223DD0C: .word 0x000001B2
	thumb_func_end ov16_0223DB1C

	thumb_func_start ov16_0223DD10
ov16_0223DD10: ; 0x0223DD10
	push {r4, r5, r6, lr}
	bl sub_02006840
	mov r1, #0x66
	lsl r1, r1, #2
	ldr r6, [r0, r1]
	add r0, r6, #0
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223DD46
	mov r4, #0
	add r5, r6, #0
_0223DD2A:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _0223DD34
	bl sub_020181C4
_0223DD34:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223DD2A
	add r0, r6, #0
	bl sub_020181C4
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223DD46:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0223DD10

	thumb_func_start ov16_0223DD4C
ov16_0223DD4C: ; 0x0223DD4C
	push {r3, lr}
	ldr r2, [r0, #0x2c]
	ldr r1, _0223DD88 ; =0x00000404
	tst r1, r2
	bne _0223DD60
	ldr r1, _0223DD8C ; =0x0000240C
	ldr r1, [r0, r1]
	mov r0, #0x10
	tst r0, r1
	beq _0223DD74
_0223DD60:
	mov r0, #1
	bl sub_02002AE4
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002B20
	pop {r3, pc}
_0223DD74:
	mov r0, #3
	bl sub_02002AE4
	mov r0, #1
	bl sub_02002AC8
	mov r0, #1
	bl sub_02002B20
	pop {r3, pc}
	; .align 2, 0
_0223DD88: .word 0x00000404
_0223DD8C: .word 0x0000240C
	thumb_func_end ov16_0223DD4C

	thumb_func_start ov16_0223DD90
ov16_0223DD90: ; 0x0223DD90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	ldr r2, _0223DEC4 ; =0x0000240C
	str r0, [sp]
	ldr r3, [r0, r2]
	mov r0, #0x10
	tst r0, r3
	beq _0223DDAC
	ldr r0, [sp]
	mov r1, #1
	sub r2, #0x10
	strb r1, [r0, r2]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_0223DDAC:
	mov r0, #0x5f
	mov r3, #0
	add r4, sp, #0x30
	add r5, sp, #0x20
	lsl r0, r0, #2
_0223DDB6:
	stmia r4!, {r3}
	ldr r2, [r1, r0]
	add r3, r3, #1
	add r1, r1, #4
	stmia r5!, {r2}
	cmp r3, #4
	blt _0223DDB6
	bl sub_0203608C
	str r0, [sp, #0x10]
	bl sub_02035E18
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	sub r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _0223DE36
	add r0, sp, #0x30
	add r2, sp, #0x20
	str r0, [sp, #8]
	str r2, [sp, #0x18]
	mov ip, r0
_0223DDE8:
	ldr r0, [sp, #4]
	add r5, r0, #1
	ldr r0, [sp, #0xc]
	cmp r5, r0
	bge _0223DE22
	ldr r1, [sp, #0x18]
	lsl r0, r5, #2
	add r3, r1, r0
	mov r1, ip
	add r4, r1, r0
_0223DDFC:
	ldr r0, [r3, #0]
	ldr r7, [r2, #0]
	str r0, [sp, #0x1c]
	cmp r7, r0
	bge _0223DE16
	ldr r0, [sp, #8]
	ldr r1, [r4, #0]
	ldr r6, [r0, #0]
	str r1, [r0, #0]
	ldr r0, [sp, #0x1c]
	str r6, [r4, #0]
	str r0, [r2, #0]
	str r7, [r3, #0]
_0223DE16:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r3, r3, #4
	add r4, r4, #4
	cmp r5, r0
	blt _0223DDFC
_0223DE22:
	ldr r0, [sp, #8]
	add r2, r2, #4
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r1, r0, #1
	ldr r0, [sp, #0x14]
	str r1, [sp, #4]
	cmp r1, r0
	blt _0223DDE8
_0223DE36:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	bne _0223DE4A
	ldr r0, [sp]
	ldr r1, _0223DEC8 ; =0x000023FC
	mov r2, #1
	strb r2, [r0, r1]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
_0223DE4A:
	ldr r0, [sp]
	ldr r1, [r0, #0x2c]
	mov r0, #0x80
	tst r0, r1
	bne _0223DEBE
	mov r0, #8
	tst r0, r1
	beq _0223DEB0
	ldr r0, [sp, #0x10]
	bl sub_020362F4
	add r4, r0, #0
	ldr r0, [sp, #0x30]
	bl sub_020362F4
	cmp r0, #3
	bhi _0223DEBE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223DE78: ; jump table
	.short _0223DE80 - _0223DE78 - 2 ; case 0
	.short _0223DE98 - _0223DE78 - 2 ; case 1
	.short _0223DE80 - _0223DE78 - 2 ; case 2
	.short _0223DE98 - _0223DE78 - 2 ; case 3
_0223DE80:
	mov r0, #1
	tst r0, r4
	beq _0223DEBE
	ldr r1, _0223DEC4 ; =0x0000240C
	ldr r0, [sp]
	ldr r2, [r0, r1]
	mov r0, #0x20
	orr r2, r0
	ldr r0, [sp]
	add sp, #0x40
	str r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0223DE98:
	mov r0, #1
	tst r0, r4
	bne _0223DEBE
	ldr r1, _0223DEC4 ; =0x0000240C
	ldr r0, [sp]
	ldr r2, [r0, r1]
	mov r0, #0x20
	orr r2, r0
	ldr r0, [sp]
	add sp, #0x40
	str r2, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0223DEB0:
	ldr r1, _0223DEC4 ; =0x0000240C
	ldr r0, [sp]
	ldr r2, [r0, r1]
	mov r0, #0x20
	orr r2, r0
	ldr r0, [sp]
	str r2, [r0, r1]
_0223DEBE:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DEC4: .word 0x0000240C
_0223DEC8: .word 0x000023FC
	thumb_func_end ov16_0223DD90

	thumb_func_start ov16_0223DECC
ov16_0223DECC: ; 0x0223DECC
	push {r3, lr}
	bl sub_02039734
	bl sub_020389B8
	cmp r0, #0
	beq _0223DEE8
	bl ov4_021D7EAC
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
	pop {r3, pc}
_0223DEE8:
	bl sub_02033E1C
	cmp r0, #0
	beq _0223DEFC
	bl sub_020CE814
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_0223DEFC:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_0223DECC

	.rodata


	.global Unk_ov16_0226E25C
Unk_ov16_0226E25C: ; 0x0226E25C
	.incbin "incbin/overlay16_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov16_0226E260
Unk_ov16_0226E260: ; 0x0226E260
	.incbin "incbin/overlay16_rodata.bin", 0x4, 0x8 - 0x4

	.global Unk_ov16_0226E264
Unk_ov16_0226E264: ; 0x0226E264
	.incbin "incbin/overlay16_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov16_0226E26C
Unk_ov16_0226E26C: ; 0x0226E26C
	.incbin "incbin/overlay16_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov16_0226E27C
Unk_ov16_0226E27C: ; 0x0226E27C
	.incbin "incbin/overlay16_rodata.bin", 0x20, 0x30 - 0x20

	.global Unk_ov16_0226E28C
Unk_ov16_0226E28C: ; 0x0226E28C
	.incbin "incbin/overlay16_rodata.bin", 0x30, 0x40 - 0x30

	.global Unk_ov16_0226E29C
Unk_ov16_0226E29C: ; 0x0226E29C
	.incbin "incbin/overlay16_rodata.bin", 0x40, 0x54 - 0x40

	.global Unk_ov16_0226E2B0
Unk_ov16_0226E2B0: ; 0x0226E2B0
	.incbin "incbin/overlay16_rodata.bin", 0x54, 0x6C - 0x54

	.global Unk_ov16_0226E2C8
Unk_ov16_0226E2C8: ; 0x0226E2C8
	.incbin "incbin/overlay16_rodata.bin", 0x6C, 0x88 - 0x6C

	.global Unk_ov16_0226E2E4
Unk_ov16_0226E2E4: ; 0x0226E2E4
	.incbin "incbin/overlay16_rodata.bin", 0x88, 0xA8 - 0x88

	.global Unk_ov16_0226E304
Unk_ov16_0226E304: ; 0x0226E304
	.incbin "incbin/overlay16_rodata.bin", 0xA8, 0xD0 - 0xA8

	.global Unk_ov16_0226E32C
Unk_ov16_0226E32C: ; 0x0226E32C
	.incbin "incbin/overlay16_rodata.bin", 0xD0, 0xF8 - 0xD0

	.global Unk_ov16_0226E354
Unk_ov16_0226E354: ; 0x0226E354
	.incbin "incbin/overlay16_rodata.bin", 0xF8, 0x120 - 0xF8

	.global Unk_ov16_0226E37C
Unk_ov16_0226E37C: ; 0x0226E37C
	.incbin "incbin/overlay16_rodata.bin", 0x120, 0x148 - 0x120

	.global Unk_ov16_0226E3A4
Unk_ov16_0226E3A4: ; 0x0226E3A4
	.incbin "incbin/overlay16_rodata.bin", 0x148, 0x19C - 0x148

	.global Unk_ov16_0226E3F8
Unk_ov16_0226E3F8: ; 0x0226E3F8
	.incbin "incbin/overlay16_rodata.bin", 0x19C, 0x1F0 - 0x19C

	.global Unk_ov16_0226E44C
Unk_ov16_0226E44C: ; 0x0226E44C
	.incbin "incbin/overlay16_rodata.bin", 0x1F0, 0x304 - 0x1F0

	.global Unk_ov16_0226E560
Unk_ov16_0226E560: ; 0x0226E560
	.incbin "incbin/overlay16_rodata.bin", 0x304, 0x4

	.section .sinit, 4
	.word ov16_0223D0F4
