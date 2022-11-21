	.include "macros/function.inc"


	.text

	thumb_func_start ov86_0223B140
ov86_0223B140: ; 0x0223B140
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl FUN_02017798
	mov r0, #3
	mov r1, #0x3f
	lsl r2, r0, #0x10
	bl FUN_02017FC8
	ldr r1, _0223B298 ; =0x00001BF4
	add r0, r5, #0
	mov r2, #0x3f
	bl FUN_0200681C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02006840
	str r0, [r4, #0xc]
	ldr r2, _0223B29C ; =0x0000015F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x3f
	bl FUN_0200B144
	ldr r1, _0223B2A0 ; =0x00001BEC
	str r0, [r4, r1]
	mov r0, #0x7d
	lsl r0, r0, #2
	mov r1, #0x3f
	bl FUN_02023790
	ldr r1, _0223B2A4 ; =0x00001BE4
	str r0, [r4, r1]
	mov r0, #0x7d
	lsl r0, r0, #2
	mov r1, #0x3f
	bl FUN_02023790
	ldr r1, _0223B2A8 ; =0x00001BE8
	str r0, [r4, r1]
	mov r0, #0x3f
	bl FUN_0200B358
	ldr r1, _0223B2AC ; =0x00001BE0
	str r0, [r4, r1]
	mov r0, #0x93
	mov r1, #0x3f
	bl FUN_02006C24
	ldr r1, _0223B2B0 ; =0x00001BF0
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	bl FUN_0207A0F8
	add r6, r0, #0
	mov r5, #0
	cmp r6, #0
	ble _0223B1EE
	mov r7, #0x99
	lsl r7, r7, #2
_0223B1C4:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	ldr r0, [r0, #4]
	bl FUN_0207A0FC
	mov r1, #0x4c
	mov r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223B1E8
	ldr r0, [r4, #4]
	lsl r0, r0, #2
	add r0, r4, r0
	str r5, [r0, r7]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_0223B1E8:
	add r5, r5, #1
	cmp r5, r6
	blt _0223B1C4
_0223B1EE:
	add r0, r4, #0
	bl ov86_0223B74C
	add r0, r4, #0
	bl ov86_0223B900
	add r0, r4, #0
	bl ov86_0223BA44
	ldr r0, _0223B2B4 ; =0x00001BCC
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov86_0223C9B0
	ldr r1, _0223B2B8 ; =0x00001BC8
	mov r2, #5
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _0223B2BC ; =0xFFFFF493
	lsl r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 ; =0x00001BC8
	mov r2, #0xf
	ldr r0, [r4, r0]
	ldr r1, _0223B2C0 ; =0xFFFFF923
	lsl r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 ; =0x00001BC8
	mov r2, #0xa
	ldr r0, [r4, r0]
	ldr r1, _0223B2C4 ; =0xFFFFFDB6
	lsl r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 ; =0x00001BC8
	mov r2, #0x23
	ldr r0, [r4, r0]
	ldr r1, _0223B2C8 ; =0x0000024A
	lsl r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 ; =0x00001BC8
	mov r2, #0x1e
	ldr r0, [r4, r0]
	ldr r1, _0223B2CC ; =0x000006DD
	lsl r2, r2, #0xe
	bl ov86_0223CAA0
	ldr r0, _0223B2B8 ; =0x00001BC8
	mov r2, #0xa
	ldr r0, [r4, r0]
	ldr r1, _0223B2D0 ; =0x00000B6D
	lsl r2, r2, #0x10
	bl ov86_0223CAA0
	add r0, r4, #0
	bl ov86_0223CD94
	ldr r1, _0223B2B4 ; =0x00001BCC
	ldr r2, _0223B2D4 ; =0x04000304
	str r0, [r4, r1]
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, _0223B2D8 ; =ov86_0223B6CC
	add r1, r4, #0
	mov r2, #6
	bl ov86_0223B744
	ldr r1, _0223B2DC ; =0x00001BC4
	mov r2, #1
	str r0, [r4, r1]
	ldr r1, _0223B2E0 ; =0x00000493
	mov r0, #8
	bl FUN_02004550
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B298: .word 0x00001BF4
_0223B29C: .word 0x0000015F
_0223B2A0: .word 0x00001BEC
_0223B2A4: .word 0x00001BE4
_0223B2A8: .word 0x00001BE8
_0223B2AC: .word 0x00001BE0
_0223B2B0: .word 0x00001BF0
_0223B2B4: .word 0x00001BCC
_0223B2B8: .word 0x00001BC8
_0223B2BC: .word 0xFFFFF493
_0223B2C0: .word 0xFFFFF923
_0223B2C4: .word 0xFFFFFDB6
_0223B2C8: .word 0x0000024A
_0223B2CC: .word 0x000006DD
_0223B2D0: .word 0x00000B6D
_0223B2D4: .word 0x04000304
_0223B2D8: .word ov86_0223B6CC
_0223B2DC: .word 0x00001BC4
_0223B2E0: .word 0x00000493
	thumb_func_end ov86_0223B140

	thumb_func_start ov86_0223B2E4
ov86_0223B2E4: ; 0x0223B2E4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r6, r0, #0
	cmp r1, #0
	beq _0223B2F6
	cmp r1, #1
	beq _0223B362
	b _0223B36E
_0223B2F6:
	bl FUN_0200682C
	add r4, r0, #0
	ldr r0, _0223B374 ; =0x00001BC4
	ldr r0, [r4, r0]
	bl FUN_0200DA58
	ldr r0, _0223B378 ; =0x00001BCC
	ldr r0, [r4, r0]
	bl ov86_0223CF44
	ldr r0, _0223B37C ; =0x00001BC8
	ldr r0, [r4, r0]
	bl ov86_0223CD34
	add r0, r4, #0
	bl ov86_0223BD68
	add r0, r4, #0
	bl ov86_0223BA34
	add r0, r4, #0
	bl ov86_0223B8C4
	ldr r0, _0223B380 ; =0x00001BE0
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	ldr r0, _0223B384 ; =0x00001BE4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223B388 ; =0x00001BE8
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _0223B38C ; =0x00001BEC
	ldr r0, [r4, r0]
	bl FUN_0200B190
	ldr r0, _0223B390 ; =0x00001BF0
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	add r0, r6, #0
	bl FUN_02006830
	mov r0, #0x3f
	bl FUN_0201807C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0223B36E
_0223B362:
	bl ov86_0223CD80
	cmp r0, #0
	beq _0223B36E
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223B36E:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0223B374: .word 0x00001BC4
_0223B378: .word 0x00001BCC
_0223B37C: .word 0x00001BC8
_0223B380: .word 0x00001BE0
_0223B384: .word 0x00001BE4
_0223B388: .word 0x00001BE8
_0223B38C: .word 0x00001BEC
_0223B390: .word 0x00001BF0
	thumb_func_end ov86_0223B2E4

	thumb_func_start ov86_0223B394
ov86_0223B394: ; 0x0223B394
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #5
	bhs _0223B3C0
	lsl r2, r1, #2
	ldr r1, _0223B3C4 ; =0x0223D3B8
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0223B3BC
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_0223B3BC:
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223B3C0:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B3C4: .word 0x0223D3B8
	thumb_func_end ov86_0223B394

	thumb_func_start ov86_0223B3C8
ov86_0223B3C8: ; 0x0223B3C8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223B3DA
	cmp r0, #1
	beq _0223B3F8
	b _0223B406
_0223B3DA:
	mov r0, #0x10
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3f
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl FUN_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B406
_0223B3F8:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B406
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223B406:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov86_0223B3C8

	thumb_func_start ov86_0223B40C
ov86_0223B40C: ; 0x0223B40C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223B41E
	cmp r0, #1
	beq _0223B446
	b _0223B45C
_0223B41E:
	mov r0, #2
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3f
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl FUN_0200F174
	mov r0, #0
	mov r1, #0x1e
	bl FUN_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B45C
_0223B446:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223B45C
	bl FUN_02005684
	cmp r0, #0
	bne _0223B45C
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223B45C:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov86_0223B40C

	thumb_func_start ov86_0223B464
ov86_0223B464: ; 0x0223B464
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0223B476
	sub r0, r1, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
_0223B476:
	ldr r1, [r4, #0]
	cmp r1, #6
	bhi _0223B56C
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223B488: ; jump table
	.short _0223B496 - _0223B488 - 2 ; case 0
	.short _0223B4A0 - _0223B488 - 2 ; case 1
	.short _0223B4C0 - _0223B488 - 2 ; case 2
	.short _0223B4D6 - _0223B488 - 2 ; case 3
	.short _0223B4F6 - _0223B488 - 2 ; case 4
	.short _0223B518 - _0223B488 - 2 ; case 5
	.short _0223B532 - _0223B488 - 2 ; case 6
_0223B496:
	ldr r0, _0223B570 ; =0x0223D560
	mov r2, #0
	str r2, [r0, #0]
	add r0, r1, #1
	str r0, [r4, #0]
_0223B4A0:
	ldr r1, _0223B570 ; =0x0223D560
	add r0, r4, #0
	ldr r1, [r1, #0]
	mov r2, #0
	bl ov86_0223BDE0
	ldr r1, _0223B570 ; =0x0223D560
	add r0, r4, #0
	ldr r1, [r1, #0]
	mov r2, #1
	bl ov86_0223C104
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B56C
_0223B4C0:
	mov r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B56C
	mov r0, #0x14
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B56C
_0223B4D6:
	ldr r1, _0223B570 ; =0x0223D560
	mov r2, #1
	ldr r1, [r1, #0]
	mov r3, #0
	bl ov86_0223C2CC
	ldr r1, _0223B570 ; =0x0223D560
	add r0, r4, #0
	ldr r1, [r1, #0]
	mov r2, #1
	bl ov86_0223C3E4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B56C
_0223B4F6:
	mov r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B56C
	add r0, r4, #0
	mov r1, #1
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B56C
	mov r0, #0x1e
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B56C
_0223B518:
	mov r1, #0
	bl ov86_0223C664
	ldr r1, _0223B570 ; =0x0223D560
	add r0, r4, #0
	ldr r1, [r1, #0]
	mov r2, #1
	bl ov86_0223C158
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B56C
_0223B532:
	mov r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B56C
	ldr r0, _0223B570 ; =0x0223D560
	ldr r0, [r0, #0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl FUN_02021CAC
	ldr r0, _0223B570 ; =0x0223D560
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, #4]
	cmp r1, r0
	bge _0223B568
	mov r0, #0x1e
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r4, #0]
	b _0223B56C
_0223B568:
	mov r0, #1
	pop {r4, pc}
_0223B56C:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0223B570: .word 0x0223D560
	thumb_func_end ov86_0223B464

	thumb_func_start ov86_0223B574
ov86_0223B574: ; 0x0223B574
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0223B58A
	sub r0, r1, #1
	str r0, [r4, #8]
	add sp, #0x10
	mov r0, #0
	pop {r4, pc}
_0223B58A:
	ldr r1, [r4, #0]
	cmp r1, #8
	bhi _0223B674
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B59C: ; jump table
	.short _0223B5AE - _0223B59C - 2 ; case 0
	.short _0223B5CE - _0223B59C - 2 ; case 1
	.short _0223B5E4 - _0223B59C - 2 ; case 2
	.short _0223B606 - _0223B59C - 2 ; case 3
	.short _0223B614 - _0223B59C - 2 ; case 4
	.short _0223B630 - _0223B59C - 2 ; case 5
	.short _0223B63E - _0223B59C - 2 ; case 6
	.short _0223B654 - _0223B59C - 2 ; case 7
	.short _0223B664 - _0223B59C - 2 ; case 8
_0223B5AE:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x3f
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x10]
	mov r0, #0x69
	mov r3, #3
	bl FUN_02006E60
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B674
_0223B5CE:
	mov r1, #0
	bl ov86_0223BEA0
	add r0, r4, #0
	mov r1, #1
	bl ov86_0223C1B8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B674
_0223B5E4:
	mov r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B674
	add r0, r4, #0
	mov r1, #1
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B674
	mov r0, #0x14
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B674
_0223B606:
	mov r1, #0
	bl ov86_0223C20C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B674
_0223B614:
	mov r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B674
	add r0, r4, #0
	bl ov86_0223C72C
	mov r0, #0x14
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B674
_0223B630:
	mov r1, #0
	bl ov86_0223C840
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B674
_0223B63E:
	mov r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B674
	mov r0, #0x14
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B674
_0223B654:
	ldr r0, _0223B67C ; =0x00001BCC
	ldr r0, [r4, r0]
	bl ov86_0223CF5C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B674
_0223B664:
	ldr r0, _0223B680 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0223B674
	add sp, #0x10
	mov r0, #1
	pop {r4, pc}
_0223B674:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_0223B67C: .word 0x00001BCC
_0223B680: .word 0x021BF67C
	thumb_func_end ov86_0223B574

	thumb_func_start ov86_0223B684
ov86_0223B684: ; 0x0223B684
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223B694
	cmp r1, #1
	beq _0223B6A2
	b _0223B6B0
_0223B694:
	mov r1, #0
	bl ov86_0223C26C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0223B6B0
_0223B6A2:
	mov r1, #0
	bl ov86_0223B6B4
	cmp r0, #0
	beq _0223B6B0
	mov r0, #1
	pop {r4, pc}
_0223B6B0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov86_0223B684

	thumb_func_start ov86_0223B6B4
ov86_0223B6B4: ; 0x0223B6B4
	lsl r1, r1, #2
	add r1, r0, r1
	ldr r0, _0223B6C8 ; =0x00001BD0
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0223B6C4
	mov r0, #1
	bx lr
_0223B6C4:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223B6C8: .word 0x00001BD0
	thumb_func_end ov86_0223B6B4

	thumb_func_start ov86_0223B6CC
ov86_0223B6CC: ; 0x0223B6CC
	push {r4, lr}
	sub sp, #8
	ldr r0, _0223B734 ; =0x04000600
	add r4, r1, #0
	ldr r1, [r0, #0]
	mov r0, #2
	lsl r0, r0, #0x1a
	tst r0, r1
	bne _0223B72E
	bl FUN_020BFAB8
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl FUN_020B275C
	ldr r0, _0223B738 ; =0x00001BC8
	ldr r0, [r4, r0]
	bl ov86_0223CD00
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #4
	str r2, [sp, #4]
	bl FUN_020B275C
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl FUN_020B275C
	ldr r0, _0223B73C ; =0x00001BCC
	ldr r0, [r4, r0]
	bl ov86_0223D220
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl FUN_020B275C
	ldr r0, _0223B740 ; =0x04000540
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, #0x24]
	bl FUN_020219F8
	bl FUN_0200A858
_0223B72E:
	add sp, #8
	pop {r4, pc}
	nop
_0223B734: .word 0x04000600
_0223B738: .word 0x00001BC8
_0223B73C: .word 0x00001BCC
_0223B740: .word 0x04000540
	thumb_func_end ov86_0223B6CC

	thumb_func_start ov86_0223B744
ov86_0223B744: ; 0x0223B744
	ldr r3, _0223B748 ; =FUN_0200DA04
	bx r3
	; .align 2, 0
_0223B748: .word FUN_0200DA04
	thumb_func_end ov86_0223B744

	thumb_func_start ov86_0223B74C
ov86_0223B74C: ; 0x0223B74C
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x3f
	bl FUN_02018340
	str r0, [r5, #0x10]
	ldr r0, _0223B8A0 ; =0x0223D4B0
	bl FUN_0201FE94
	ldr r2, _0223B8A4 ; =0x04000304
	ldr r0, _0223B8A8 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, _0223B8AC ; =0x0223D3A8
	bl FUN_02018368
	ldr r0, [r5, #0x10]
	ldr r2, _0223B8B0 ; =0x0223D434
	mov r1, #1
	mov r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0x10]
	ldr r2, _0223B8B4 ; =0x0223D3FC
	mov r1, #2
	mov r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0x10]
	ldr r2, _0223B8B8 ; =0x0223D418
	mov r1, #3
	mov r3, #0
	bl FUN_020183C4
	mov r2, #0
	str r2, [sp]
	mov r1, #1
	ldr r0, [r5, #0x10]
	add r3, r1, #0
	bl FUN_020196C0
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5, #0x10]
	mov r1, #1
	add r3, r2, #0
	bl FUN_02019CB8
	mov r3, #0
	add r1, r5, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	mov r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5, #0x10]
	add r1, #0x14
	bl FUN_0201A7E8
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl FUN_0201ADA4
	add r0, r5, #0
	add r0, #0x14
	bl FUN_0201ACCC
	add r0, r5, #0
	add r0, #0x14
	bl FUN_0201A9F4
	mov r0, #0x69
	mov r1, #0x3f
	bl FUN_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x3f
	str r1, [sp, #0xc]
	mov r1, #3
	ldr r2, [r5, #0x10]
	add r3, r1, #0
	add r4, r0, #0
	bl FUN_020070E8
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3f
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r3, #3
	bl FUN_0200710C
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x3f
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl FUN_02007130
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3f
	str r0, [sp, #0xc]
	mov r1, #2
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	add r3, r1, #0
	bl FUN_0200710C
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl FUN_02019448
	ldr r0, _0223B8BC ; =0x04000040
	mov r1, #0
	strh r1, [r0]
	add r5, r0, #0
	strh r1, [r0, #4]
	add r5, #8
	ldrh r3, [r5]
	mov r2, #0x3f
	mov r1, #0x1b
	bic r3, r2
	orr r1, r3
	mov r3, #0x20
	orr r1, r3
	strh r1, [r5]
	add r0, #0xa
	ldrh r5, [r0]
	mov r1, #0x1f
	bic r5, r2
	orr r1, r5
	orr r1, r3
	strh r1, [r0]
	lsl r2, r3, #0x15
	ldr r1, [r2, #0]
	ldr r0, _0223B8C0 ; =0xFFFF1FFF
	and r1, r0
	lsl r0, r3, #8
	orr r0, r1
	str r0, [r2, #0]
	add r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_0223B8A0: .word 0x0223D4B0
_0223B8A4: .word 0x04000304
_0223B8A8: .word 0xFFFF7FFF
_0223B8AC: .word 0x0223D3A8
_0223B8B0: .word 0x0223D434
_0223B8B4: .word 0x0223D3FC
_0223B8B8: .word 0x0223D418
_0223B8BC: .word 0x04000040
_0223B8C0: .word 0xFFFF1FFF
	thumb_func_end ov86_0223B74C

	thumb_func_start ov86_0223B8C4
ov86_0223B8C4: ; 0x0223B8C4
	push {r4, lr}
	mov r2, #1
	lsl r2, r2, #0x1a
	add r4, r0, #0
	ldr r1, [r2, #0]
	ldr r0, _0223B8FC ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	add r0, r4, #0
	add r0, #0x14
	bl FUN_0201A8FC
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	pop {r4, pc}
	; .align 2, 0
_0223B8FC: .word 0xFFFF1FFF
	thumb_func_end ov86_0223B8C4

	thumb_func_start ov86_0223B900
ov86_0223B900: ; 0x0223B900
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl FUN_020B28CC
	bl FUN_020BFB4C
	ldr r0, _0223B990 ; =0x04000060
	ldr r2, _0223B994 ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0223B998 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl FUN_020BFD58
	ldr r1, _0223B99C ; =0x04000540
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, _0223B9A0 ; =0xBFFF0000
	str r0, [r1, #0x40]
	mov r0, #1
	add r1, r0, #0
	bl FUN_020A5A94
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl FUN_020A5D88
	mov r0, #1
	add r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0223B9A4 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #2
	orr r1, r2
	strh r1, [r0]
	mov r1, #0
	add r0, #0x48
	mov r2, #0x18
	add r3, r1, #0
	str r1, [sp]
	bl FUN_020BF55C
	add r0, r4, #0
	bl ov86_0223B9A8
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0223B990: .word 0x04000060
_0223B994: .word 0xFFFFCFFD
_0223B998: .word 0x0000CFFB
_0223B99C: .word 0x04000540
_0223B9A0: .word 0xBFFF0000
_0223B9A4: .word 0x04000008
	thumb_func_end ov86_0223B900

	thumb_func_start ov86_0223B9A8
ov86_0223B9A8: ; 0x0223B9A8
	push {r4, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x3f
	bl FUN_020203AC
	ldr r2, _0223BA2C ; =0x00001BAC
	ldr r3, _0223BA30 ; =0x00000FA4
	str r0, [r4, r2]
	mov r0, #0
	add r1, r2, #4
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #8
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0xc
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x10
	strh r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x12
	strh r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x14
	strh r0, [r4, r1]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, r2]
	mov r1, #5
	str r0, [sp, #8]
	add r0, r2, #4
	add r2, #0x10
	add r0, r4, r0
	lsl r1, r1, #0xc
	add r2, r4, r2
	bl FUN_020206D0
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, _0223BA2C ; =0x00001BAC
	add r0, sp, #0xc
	ldr r1, [r4, r1]
	bl FUN_02020680
	ldr r0, _0223BA2C ; =0x00001BAC
	ldr r0, [r4, r0]
	bl FUN_020203D4
	ldr r2, _0223BA2C ; =0x00001BAC
	mov r0, #1
	mov r1, #0x7d
	ldr r2, [r4, r2]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl FUN_020206BC
	add sp, #0x18
	pop {r4, pc}
	nop
_0223BA2C: .word 0x00001BAC
_0223BA30: .word 0x00000FA4
	thumb_func_end ov86_0223B9A8

	thumb_func_start ov86_0223BA34
ov86_0223BA34: ; 0x0223BA34
	ldr r1, _0223BA3C ; =0x00001BAC
	ldr r3, _0223BA40 ; =FUN_020203B8
	ldr r0, [r0, r1]
	bx r3
	; .align 2, 0
_0223BA3C: .word 0x00001BAC
_0223BA40: .word FUN_020203B8
	thumb_func_end ov86_0223BA34

	thumb_func_start ov86_0223BA44
ov86_0223BA44: ; 0x0223BA44
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x1b
	mov r1, #0x3f
	bl FUN_02006C24
	add r4, r0, #0
	bl FUN_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x3f
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl FUN_0200A784
	add r1, r5, #0
	mov r0, #0x40
	add r1, #0x28
	mov r2, #0x3f
	bl FUN_020095C4
	str r0, [r5, #0x24]
	mov r0, #0x3f
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x4d
	mov r2, #0
	add r3, sp, #0x18
	bl FUN_02007204
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x3f
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x4e
	mov r2, #0
	add r3, sp, #0x14
	bl FUN_02007220
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r3, r4, #0
	bl ov86_0223BAC8
	add r0, r4, #0
	bl FUN_02006CA8
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201FF0C
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov86_0223BA44

	thumb_func_start ov86_0223BAC8
ov86_0223BAC8: ; 0x0223BAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xec
	add r4, r3, #0
	mov r3, #0
	add r6, r0, #0
	str r1, [sp, #0xc4]
	str r2, [sp, #0xc8]
	str r3, [sp, #0xbc]
	str r3, [sp, #0xcc]
	str r3, [sp, #0xd0]
	str r3, [sp, #0xd4]
	mov r1, #3
	add r0, sp, #0xd8
	strb r1, [r0]
	add r0, sp, #0x5c
	str r0, [sp, #0xb8]
	add r0, sp, #0x48
	str r0, [sp, #0xc0]
	ldr r0, [r6, #0x24]
	mov r1, #0x4c
	str r0, [sp, #0x98]
	add r0, sp, #0xb8
	str r0, [sp, #0x9c]
	mov r0, #1
	str r0, [sp, #0xb0]
	mov r0, #0x3f
	str r3, [sp, #0xa0]
	str r3, [sp, #0xa4]
	str r3, [sp, #0xa8]
	str r0, [sp, #0xb4]
	str r0, [sp]
	add r2, r3, #0
	add r0, r4, #0
	add r3, sp, #0x44
	bl FUN_020071B4
	str r0, [sp, #0x2c]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, sp, #0x40
	mov r3, #0x3f
	bl FUN_020071EC
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x24]
	ldr r0, [r6, #4]
	cmp r0, #0
	bgt _0223BB2C
	b _0223BCAA
_0223BB2C:
	ldr r0, [sp, #0x24]
	add r5, r6, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	mov r0, #0x32
	lsl r0, r0, #6
	str r0, [sp, #0x18]
	mov r0, #0x5d
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [sp, #0x14]
	mov r0, #0xab
	lsl r0, r0, #2
	add r4, r6, r0
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x30]
_0223BB52:
	add r0, sp, #0x5c
	bl FUN_020A818C
	add r0, sp, #0x48
	bl FUN_020A81D0
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x20]
	mov r2, #1
	add r3, sp, #0x5c
	bl FUN_020A8224
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x1c]
	mov r2, #1
	add r3, sp, #0x48
	bl FUN_020A8850
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0xac]
	add r0, sp, #0x98
	bl FUN_02021B90
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0
	bl FUN_02021CAC
	ldr r0, [r6, #0xc]
	mov r1, #0x99
	lsl r1, r1, #2
	ldr r0, [r0, #4]
	ldr r1, [r5, r1]
	bl FUN_0207A0FC
	add r7, r0, #0
	add r0, sp, #0xdc
	add r1, r7, #0
	mov r2, #2
	bl FUN_02075EF4
	add r0, r7, #0
	mov r1, #5
	mov r2, #0
	bl FUN_02074470
	mov r1, #0x9f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl FUN_02074470
	mov r1, #0xa5
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl FUN_02074470
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0xdc
	str r0, [sp, #0x10]
	add r0, sp, #0xdc
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	ldr r3, _0223BD5C ; =0x0223D450
	mov r2, #0x3f
	bl FUN_02013720
	ldr r1, [sp, #0x30]
	add r0, r4, #0
	bl FUN_020C2C54
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	bl FUN_020C02BC
	mov r1, #0
	add r0, r7, #0
	add r2, r1, #0
	bl FUN_02074470
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #0xc]
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0xdc
	str r0, [sp, #0x10]
	add r0, sp, #0xdc
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	ldr r3, _0223BD60 ; =0x0223D460
	mov r2, #0x3f
	bl FUN_02013720
	ldr r1, [sp, #0x38]
	add r0, r4, #0
	bl FUN_020C2C54
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x3c]
	add r0, r4, #0
	bl FUN_020C02BC
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3f
	str r0, [sp, #4]
	add r0, sp, #0xdc
	add r1, sp, #0xdc
	ldrh r0, [r0]
	ldrh r1, [r1, #4]
	ldr r3, [sp, #0x1c]
	mov r2, #1
	bl FUN_02006E84
	mov r2, #0x9f
	lsl r2, r2, #2
	ldr r0, _0223BD64 ; =0x00001BF0
	ldr r2, [r5, r2]
	ldr r0, [r6, r0]
	lsl r2, r2, #0x10
	ldr r1, [sp, #0x14]
	lsr r2, r2, #0x10
	mov r3, #1
	bl FUN_020789BC
	mov r0, #0x19
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x1c]
	mov r0, #0x19
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r1, [r6, #4]
	add r0, #0x28
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	add r5, r5, #4
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	bge _0223BCAA
	b _0223BB52
_0223BCAA:
	add r0, sp, #0x5c
	bl FUN_020A818C
	add r0, sp, #0x48
	bl FUN_020A81D0
	mov r1, #0x96
	ldr r0, [sp, #0x44]
	lsl r1, r1, #8
	mov r2, #1
	add r3, sp, #0x5c
	bl FUN_020A8224
	ldr r0, [sp, #0x40]
	mov r1, #0xc0
	mov r2, #1
	add r3, sp, #0x48
	bl FUN_020A8850
	ldr r0, [r6, #0xc]
	ldr r0, [r0, #0]
	bl FUN_02025F30
	cmp r0, #1
	bne _0223BCE0
	mov r0, #1
	b _0223BCE2
_0223BCE0:
	mov r0, #0
_0223BCE2:
	mov r1, #2
	add r2, sp, #0x80
	bl FUN_02076AAC
	mov r0, #0xab
	lsl r0, r0, #2
	add r0, r6, r0
	str r0, [sp]
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x94]
	ldr r3, _0223BD5C ; =0x0223D450
	mov r2, #0x3f
	bl FUN_020135F0
	mov r0, #0xab
	lsl r0, r0, #2
	mov r1, #0x32
	add r0, r6, r0
	lsl r1, r1, #6
	bl FUN_020C2C54
	mov r0, #0xab
	lsl r0, r0, #2
	mov r1, #0x96
	mov r2, #0x32
	add r0, r6, r0
	lsl r1, r1, #8
	lsl r2, r2, #6
	bl FUN_020C02BC
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3f
	str r0, [sp, #4]
	ldr r0, [sp, #0x80]
	ldr r1, [sp, #0x88]
	mov r2, #1
	mov r3, #0xc0
	bl FUN_02006E84
	mov r0, #0
	str r0, [sp, #0xac]
	add r0, sp, #0x98
	bl FUN_02021B90
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	mov r1, #0
	bl FUN_02021CAC
	ldr r0, [sp, #0x28]
	bl FUN_020181C4
	ldr r0, [sp, #0x2c]
	bl FUN_020181C4
	add sp, #0xec
	pop {r4, r5, r6, r7, pc}
	nop
_0223BD5C: .word 0x0223D450
_0223BD60: .word 0x0223D460
_0223BD64: .word 0x00001BF0
	thumb_func_end ov86_0223BAC8

	thumb_func_start ov86_0223BD68
ov86_0223BD68: ; 0x0223BD68
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	mov r4, #0
	cmp r0, #0
	ble _0223BD8A
	mov r7, #0x15
	add r5, r6, #0
	lsl r7, r7, #4
_0223BD7A:
	ldr r0, [r5, r7]
	bl FUN_02021BD4
	ldr r0, [r6, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223BD7A
_0223BD8A:
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_020181C4
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, [r6, #0x24]
	bl FUN_02021964
	bl FUN_0200A878
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov86_0223BD68

	thumb_func_start ov86_0223BDAC
ov86_0223BDAC: ; 0x0223BDAC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r1, #4]
	mov r2, #0
	str r2, [r0, #0]
	ldr r0, [r1, #0]
	bl FUN_020181C4
	add r0, r4, #0
	bl FUN_0200DA58
	pop {r4, pc}
	thumb_func_end ov86_0223BDAC

	thumb_func_start ov86_0223BDC4
ov86_0223BDC4: ; 0x0223BDC4
	str r1, [r0, #0]
	str r2, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov86_0223BDC4

	thumb_func_start ov86_0223BDCC
ov86_0223BDCC: ; 0x0223BDCC
	ldr r3, _0223BDD8 ; =FUN_0200DA3C
	add r1, r0, #0
	ldr r0, _0223BDDC ; =ov86_0223BDAC
	mov r2, #0
	bx r3
	nop
_0223BDD8: .word FUN_0200DA3C
_0223BDDC: .word ov86_0223BDAC
	thumb_func_end ov86_0223BDCC

	thumb_func_start ov86_0223BDE0
ov86_0223BDE0: ; 0x0223BDE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x3f
	mov r1, #0x2c
	str r2, [sp]
	bl FUN_02018144
	ldr r1, _0223BE5C ; =0x00001BD0
	add r5, r0, #0
	add r4, r6, r1
	ldr r1, [sp]
	lsl r1, r1, #2
	str r1, [sp, #4]
	ldr r2, [sp, #4]
	add r1, r5, #0
	add r2, r4, r2
	bl ov86_0223BDC4
	lsl r0, r7, #2
	add r1, r6, r0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _0223BE60 ; =0x0223D38C
	str r0, [r5, #8]
	lsl r0, r7, #0x1f
	lsr r2, r0, #0x1c
	ldr r0, _0223BE64 ; =0x0223D388
	ldr r6, [r0, r2]
	add r0, r5, #0
	ldr r2, [r3, r2]
	add r0, #0x18
	add r1, r6, #0
	mov r3, #0x1c
	bl ov86_0223D264
	mov r0, #6
	add r1, r5, #0
	str r6, [r5, #0xc]
	lsl r0, r0, #0x10
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	ldr r0, [r5, #8]
	add r1, #0xc
	bl FUN_02021C50
	ldr r0, [r5, #8]
	mov r1, #1
	bl FUN_02021CAC
	ldr r0, _0223BE68 ; =ov86_0223BE6C
	add r1, r5, #0
	mov r2, #0
	bl ov86_0223B744
	ldr r1, [sp, #4]
	str r0, [r4, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BE5C: .word 0x00001BD0
_0223BE60: .word 0x0223D38C
_0223BE64: .word 0x0223D388
_0223BE68: .word ov86_0223BE6C
	thumb_func_end ov86_0223BDE0

	thumb_func_start ov86_0223BE6C
ov86_0223BE6C: ; 0x0223BE6C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x18
	bl ov86_0223D284
	str r0, [r4, #0xc]
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xc
	bl FUN_02021C50
	add r0, r4, #0
	add r0, #0x18
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223BE9E
	add r0, r4, #0
	bl ov86_0223BDCC
	add r0, r5, #0
	bl FUN_0200DA58
_0223BE9E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_0223BE6C

	thumb_func_start ov86_0223BEA0
ov86_0223BEA0: ; 0x0223BEA0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x3f
	mov r1, #0x2c
	bl FUN_02018144
	ldr r1, _0223BF08 ; =0x00001BD0
	add r5, r0, #0
	add r4, r6, r1
	lsl r7, r7, #2
	add r1, r5, #0
	add r2, r4, r7
	bl ov86_0223BDC4
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0x3a
	str r0, [r5, #8]
	add r0, r5, #0
	mov r2, #0x1a
	add r0, #0x18
	lsl r1, r1, #0xe
	lsl r2, r2, #0xe
	mov r3, #0x1c
	bl ov86_0223D264
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [r5, #0xc]
	mov r0, #0x3a
	lsl r0, r0, #0xe
	str r0, [r5, #0x10]
	mov r0, #0
	str r0, [r5, #0x14]
	add r1, r5, #0
	ldr r0, [r5, #8]
	add r1, #0xc
	bl FUN_02021C50
	ldr r0, [r5, #8]
	mov r1, #1
	bl FUN_02021CAC
	ldr r0, _0223BF0C ; =ov86_0223BF10
	add r1, r5, #0
	mov r2, #0
	bl ov86_0223B744
	str r0, [r4, r7]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BF08: .word 0x00001BD0
_0223BF0C: .word ov86_0223BF10
	thumb_func_end ov86_0223BEA0

	thumb_func_start ov86_0223BF10
ov86_0223BF10: ; 0x0223BF10
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x18
	bl ov86_0223D284
	str r0, [r4, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #8]
	add r1, #0xc
	bl FUN_02021C50
	add r0, r4, #0
	add r0, #0x18
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223BF42
	add r0, r4, #0
	bl ov86_0223BDCC
	add r0, r5, #0
	bl FUN_0200DA58
_0223BF42:
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_0223BF10

	thumb_func_start ov86_0223BF44
ov86_0223BF44: ; 0x0223BF44
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #8
	bl ov86_0223D284
	asr r0, r0, #0xc
	add r2, r0, #0
	add r2, #0x60
	cmp r0, #0
	bge _0223BF5E
	mov r0, #0
_0223BF5E:
	cmp r2, #0
	bge _0223BF64
	mov r2, #0
_0223BF64:
	cmp r0, #0xff
	ble _0223BF6C
	mov r2, #0
	add r0, r2, #0
_0223BF6C:
	cmp r2, #0xff
	ble _0223BF72
	mov r2, #0xff
_0223BF72:
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r1, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r1
	ldr r1, _0223BFA4 ; =0x04000040
	strh r0, [r1]
	ldr r0, _0223BFA8 ; =0x000020A0
	strh r0, [r1, #4]
	add r0, r4, #0
	add r0, #8
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223BFA0
	add r0, r4, #0
	bl ov86_0223BDCC
	add r0, r5, #0
	bl FUN_0200DA58
_0223BFA0:
	pop {r3, r4, r5, pc}
	nop
_0223BFA4: .word 0x04000040
_0223BFA8: .word 0x000020A0
	thumb_func_end ov86_0223BF44

	thumb_func_start ov86_0223BFAC
ov86_0223BFAC: ; 0x0223BFAC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #8
	bl ov86_0223D284
	asr r2, r0, #0xc
	ldr r0, [r4, #0x24]
	add r3, r2, r0
	cmp r2, #0
	bge _0223BFC6
	mov r2, #0
_0223BFC6:
	cmp r3, #0
	bge _0223BFCC
	mov r3, #0
_0223BFCC:
	cmp r2, #0xbf
	ble _0223BFD4
	mov r3, #0
	add r2, r3, #0
_0223BFD4:
	cmp r3, #0xbf
	ble _0223BFDA
	mov r3, #0xbf
_0223BFDA:
	ldr r0, [r4, #0x1c]
	ldr r6, [r4, #0x20]
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	lsl r6, r6, #0x18
	lsl r2, r2, #8
	and r1, r0
	lsr r6, r6, #0x18
	orr r6, r1
	ldr r1, _0223C018 ; =0x04000040
	and r2, r0
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	strh r6, [r1]
	orr r0, r2
	strh r0, [r1, #4]
	add r0, r4, #0
	add r0, #8
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C014
	add r0, r4, #0
	bl ov86_0223BDCC
	add r0, r5, #0
	bl FUN_0200DA58
_0223C014:
	pop {r4, r5, r6, pc}
	nop
_0223C018: .word 0x04000040
	thumb_func_end ov86_0223BFAC

	thumb_func_start ov86_0223C01C
ov86_0223C01C: ; 0x0223C01C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #8
	bl ov86_0223D284
	asr r4, r0, #0xc
	add r0, r5, #0
	add r0, #0x1c
	bl ov86_0223D284
	asr r2, r0, #0xc
	cmp r4, #0
	bge _0223C03C
	mov r4, #0
_0223C03C:
	cmp r2, #0
	bge _0223C042
	mov r2, #0
_0223C042:
	cmp r4, #0xff
	ble _0223C04A
	mov r2, #0
	add r4, r2, #0
_0223C04A:
	cmp r2, #0xff
	ble _0223C050
	mov r2, #0xff
_0223C050:
	ldr r0, [r5, #0x30]
	mov r3, #0xff
	lsl r2, r2, #0x18
	ldr r1, [r5, #0x34]
	lsl r4, r4, #8
	lsl r3, r3, #8
	and r4, r3
	lsr r2, r2, #0x18
	lsl r0, r0, #8
	orr r4, r2
	ldr r2, _0223C08C ; =0x04000040
	and r3, r0
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	strh r4, [r2]
	orr r0, r3
	strh r0, [r2, #4]
	add r0, r5, #0
	add r0, #8
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C08A
	add r0, r5, #0
	bl ov86_0223BDCC
	add r0, r6, #0
	bl FUN_0200DA58
_0223C08A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C08C: .word 0x04000040
	thumb_func_end ov86_0223C01C

	thumb_func_start ov86_0223C090
ov86_0223C090: ; 0x0223C090
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #8
	bl ov86_0223D284
	asr r4, r0, #0xc
	add r0, r5, #0
	add r0, #0x1c
	bl ov86_0223D284
	asr r2, r0, #0xc
	cmp r4, #0
	bge _0223C0B0
	mov r4, #0
_0223C0B0:
	cmp r2, #0
	bge _0223C0B6
	mov r2, #0
_0223C0B6:
	cmp r4, #0xbf
	ble _0223C0BE
	mov r2, #0
	add r4, r2, #0
_0223C0BE:
	cmp r2, #0xbf
	ble _0223C0C4
	mov r2, #0xbf
_0223C0C4:
	ldr r0, [r5, #0x30]
	ldr r3, [r5, #0x34]
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	lsl r3, r3, #0x18
	and r1, r0
	lsr r3, r3, #0x18
	orr r3, r1
	ldr r1, _0223C100 ; =0x04000040
	strh r3, [r1]
	lsl r3, r4, #8
	and r3, r0
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	orr r0, r3
	strh r0, [r1, #4]
	add r0, r5, #0
	add r0, #8
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C0FE
	add r0, r5, #0
	bl ov86_0223BDCC
	add r0, r6, #0
	bl FUN_0200DA58
_0223C0FE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C100: .word 0x04000040
	thumb_func_end ov86_0223C090

	thumb_func_start ov86_0223C104
ov86_0223C104: ; 0x0223C104
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	mov r0, #0x3f
	mov r1, #0x1c
	add r6, r2, #0
	bl FUN_02018144
	ldr r1, _0223C148 ; =0x00001BD0
	add r5, r0, #0
	add r4, r4, r1
	lsl r6, r6, #2
	add r1, r5, #0
	add r2, r4, r6
	bl ov86_0223BDC4
	lsl r0, r7, #0x1f
	lsr r2, r0, #0x1c
	ldr r1, _0223C14C ; =0x0223D398
	add r0, r5, #0
	ldr r3, _0223C150 ; =0x0223D39C
	ldr r1, [r1, r2]
	ldr r2, [r3, r2]
	add r0, #8
	mov r3, #0x1c
	bl ov86_0223D264
	ldr r0, _0223C154 ; =ov86_0223BF44
	add r1, r5, #0
	mov r2, #1
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C148: .word 0x00001BD0
_0223C14C: .word 0x0223D398
_0223C150: .word 0x0223D39C
_0223C154: .word ov86_0223BF44
	thumb_func_end ov86_0223C104

	thumb_func_start ov86_0223C158
ov86_0223C158: ; 0x0223C158
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r7, r1, #0
	mov r0, #0x3f
	mov r1, #0x28
	add r6, r2, #0
	bl FUN_02018144
	ldr r1, _0223C1A8 ; =0x00001BD0
	add r5, r0, #0
	add r4, r4, r1
	lsl r6, r6, #2
	add r1, r5, #0
	add r2, r4, r6
	bl ov86_0223BDC4
	add r0, r5, #0
	mov r1, #2
	ldr r2, _0223C1AC ; =0xFFF60000
	add r0, #8
	lsl r1, r1, #0x10
	mov r3, #0x1c
	bl ov86_0223D264
	lsl r0, r7, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, _0223C1B0 ; =0x0223D374
	mov r2, #1
	ldr r0, [r0, r1]
	add r1, r5, #0
	str r0, [r5, #0x1c]
	add r0, #0x60
	str r0, [r5, #0x20]
	mov r0, #0x80
	str r0, [r5, #0x24]
	ldr r0, _0223C1B4 ; =ov86_0223BFAC
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C1A8: .word 0x00001BD0
_0223C1AC: .word 0xFFF60000
_0223C1B0: .word 0x0223D374
_0223C1B4: .word ov86_0223BFAC
	thumb_func_end ov86_0223C158

	thumb_func_start ov86_0223C1B8
ov86_0223C1B8: ; 0x0223C1B8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	mov r0, #0x3f
	mov r1, #0x28
	bl FUN_02018144
	ldr r1, _0223C200 ; =0x00001BD0
	add r5, r0, #0
	add r4, r4, r1
	lsl r6, r6, #2
	add r1, r5, #0
	add r2, r4, r6
	bl ov86_0223BDC4
	add r0, r5, #0
	mov r2, #6
	ldr r1, _0223C204 ; =0xFFF70000
	add r0, #8
	lsl r2, r2, #0xe
	mov r3, #0x1c
	bl ov86_0223D264
	mov r0, #0x58
	str r0, [r5, #0x1c]
	mov r0, #0xa8
	str r0, [r5, #0x20]
	mov r0, #0x90
	str r0, [r5, #0x24]
	ldr r0, _0223C208 ; =ov86_0223BFAC
	add r1, r5, #0
	mov r2, #1
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C200: .word 0x00001BD0
_0223C204: .word 0xFFF70000
_0223C208: .word ov86_0223BFAC
	thumb_func_end ov86_0223C1B8

	thumb_func_start ov86_0223C20C
ov86_0223C20C: ; 0x0223C20C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	mov r0, #0x3f
	mov r1, #0x38
	bl FUN_02018144
	ldr r1, _0223C264 ; =0x00001BD0
	add r5, r0, #0
	add r4, r4, r1
	lsl r6, r6, #2
	add r1, r5, #0
	add r2, r4, r6
	bl ov86_0223BDC4
	add r0, r5, #0
	mov r1, #0x16
	add r0, #8
	lsl r1, r1, #0xe
	mov r2, #0
	mov r3, #0xc
	bl ov86_0223D264
	add r0, r5, #0
	mov r1, #0x2a
	mov r2, #0xff
	add r0, #0x1c
	lsl r1, r1, #0xe
	lsl r2, r2, #0xc
	mov r3, #0xc
	bl ov86_0223D264
	mov r0, #0x18
	str r0, [r5, #0x30]
	add r0, #0x90
	str r0, [r5, #0x34]
	ldr r0, _0223C268 ; =ov86_0223C01C
	add r1, r5, #0
	mov r2, #1
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r4, r5, r6, pc}
	nop
_0223C264: .word 0x00001BD0
_0223C268: .word ov86_0223C01C
	thumb_func_end ov86_0223C20C

	thumb_func_start ov86_0223C26C
ov86_0223C26C: ; 0x0223C26C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r1, #0
	mov r0, #0x3f
	mov r1, #0x38
	bl FUN_02018144
	ldr r1, _0223C2C4 ; =0x00001BD0
	add r5, r0, #0
	add r4, r4, r1
	lsl r6, r6, #2
	add r1, r5, #0
	add r2, r4, r6
	bl ov86_0223BDC4
	mov r1, #6
	add r0, r5, #0
	lsl r1, r1, #0xe
	add r0, #8
	lsl r2, r1, #2
	mov r3, #0x18
	bl ov86_0223D264
	add r0, r5, #0
	mov r1, #0x2a
	mov r2, #6
	add r0, #0x1c
	lsl r1, r1, #0xe
	lsl r2, r2, #0x10
	mov r3, #0x18
	bl ov86_0223D264
	mov r0, #0
	str r0, [r5, #0x30]
	mov r0, #0xff
	str r0, [r5, #0x34]
	ldr r0, _0223C2C8 ; =ov86_0223C090
	add r1, r5, #0
	mov r2, #1
	bl ov86_0223B744
	str r0, [r4, r6]
	pop {r4, r5, r6, pc}
	nop
_0223C2C4: .word 0x00001BD0
_0223C2C8: .word ov86_0223C090
	thumb_func_end ov86_0223C26C

	thumb_func_start ov86_0223C2CC
ov86_0223C2CC: ; 0x0223C2CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x3f
	mov r1, #0x78
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_02018144
	ldr r1, _0223C390 ; =0x00001BD0
	add r4, r0, #0
	add r7, r5, r1
	ldr r1, [sp, #4]
	lsl r1, r1, #2
	str r1, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r1, r4, #0
	add r2, r7, r2
	bl ov86_0223BDC4
	lsl r0, r6, #2
	str r0, [sp, #8]
	add r1, r5, r0
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r1, r0]
	add r0, #0x24
	str r1, [r4, #8]
	add r1, r5, r0
	mov r0, #0x28
	mul r0, r6
	add r1, r1, r0
	add r0, r4, #0
	add r0, #0x10
	str r1, [r4, #0xc]
	bl FUN_020088E0
	ldr r0, [sp]
	str r0, [r4, #0x6c]
	ldr r0, [sp, #8]
	add r2, r5, r0
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r1, [r2, r0]
	add r0, #0x18
	str r1, [r4, #0x70]
	ldr r0, [r2, r0]
	str r0, [r4, #0x74]
	ldr r0, [r4, #8]
	bl FUN_02021F98
	add r3, r4, #0
	add r5, r0, #0
	add r3, #0x24
	mov r2, #4
_0223C33C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C33C
	ldr r0, [r5, #0]
	add r5, r4, #0
	str r0, [r3, #0]
	add r3, r4, #0
	add r5, #0x24
	add r3, #0x48
	mov r2, #4
_0223C352:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223C352
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	add r0, #0x48
	bl FUN_020A818C
	mov r3, #0x19
	add r0, r4, #0
	lsl r3, r3, #8
	add r2, r6, #0
	mul r2, r3
	lsr r3, r3, #1
	add r0, #0x48
	mov r1, #1
	add r2, r2, r3
	bl FUN_020A81A8
	ldr r0, _0223C394 ; =ov86_0223C398
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200D9E8
	ldr r1, [sp, #0xc]
	str r0, [r7, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C390: .word 0x00001BD0
_0223C394: .word ov86_0223C398
	thumb_func_end ov86_0223C2CC

	thumb_func_start ov86_0223C398
ov86_0223C398: ; 0x0223C398
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	beq _0223C3B8
	ldr r0, [r4, #0x70]
	ldr r1, [r4, #0x74]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x18
	lsr r0, r0, #0x10
	lsr r1, r1, #0x18
	bl FUN_02005844
	mov r0, #0
	str r0, [r4, #0x6c]
_0223C3B8:
	add r0, r4, #0
	add r0, #0x10
	bl FUN_02008900
	add r2, r0, #0
	bmi _0223C3D4
	mov r1, #0x24
	ldr r0, [r4, #8]
	add r4, #0x24
	mul r1, r2
	add r1, r4, r1
	bl FUN_02021F7C
	pop {r3, r4, r5, pc}
_0223C3D4:
	add r0, r4, #0
	bl ov86_0223BDCC
	add r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov86_0223C398

	thumb_func_start ov86_0223C3E4
ov86_0223C3E4: ; 0x0223C3E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x3f
	mov r1, #0x38
	str r2, [sp]
	bl FUN_02018144
	ldr r1, _0223C470 ; =0x00001BD0
	add r4, r0, #0
	add r6, r5, r1
	ldr r1, [sp]
	lsl r1, r1, #2
	str r1, [sp, #4]
	ldr r2, [sp, #4]
	add r1, r4, #0
	add r2, r6, r2
	bl ov86_0223BDC4
	str r5, [r4, #8]
	ldr r0, [r5, #0x10]
	ldr r1, _0223C474 ; =0x00001BE0
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r0, #0x14
	str r0, [r4, #0x10]
	ldr r0, [r5, r1]
	str r0, [r4, #0x14]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [r4, #0x18]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [r5, r1]
	str r0, [r4, #0x20]
	mov r0, #1
	tst r0, r7
	beq _0223C43C
	mov r0, #0
	b _0223C43E
_0223C43C:
	mov r0, #0x78
_0223C43E:
	lsl r1, r7, #2
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0xc]
	add r2, r5, r1
	mov r1, #0x99
	lsl r1, r1, #2
	ldr r0, [r0, #4]
	ldr r1, [r2, r1]
	bl FUN_0207A0FC
	str r0, [r4, #0x24]
	ldr r0, [r5, #0xc]
	mov r2, #0
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [r4, #0x28]
	str r2, [r4, #0x30]
	ldr r0, _0223C478 ; =ov86_0223C58C
	str r2, [r4, #0x34]
	bl FUN_0200D9E8
	ldr r1, [sp, #4]
	str r0, [r6, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C470: .word 0x00001BD0
_0223C474: .word 0x00001BE0
_0223C478: .word ov86_0223C58C
	thumb_func_end ov86_0223C3E4

	thumb_func_start ov86_0223C47C
ov86_0223C47C: ; 0x0223C47C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	bl FUN_02023C5C
	mov r6, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _0223C4D2
_0223C492:
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	add r2, r6, #0
	bl FUN_02023C9C
	mov r0, #0
	ldr r1, [r5, #0x18]
	add r2, r0, #0
	bl FUN_02002D7C
	mov r1, #0x88
	sub r0, r1, r0
	lsr r7, r0, #1
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223C4D8 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [r5, #0x2c]
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	add r3, r3, r7
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r4, #0x10
	cmp r6, r0
	blt _0223C492
_0223C4D2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223C4D8: .word 0x00010200
	thumb_func_end ov86_0223C47C

	thumb_func_start ov86_0223C4DC
ov86_0223C4DC: ; 0x0223C4DC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl FUN_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl FUN_0200B538
	ldr r0, [r4, #0x24]
	bl FUN_02075B38
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r3, #3
	bl FUN_0200B60C
	ldr r0, [r4, #0x24]
	bl FUN_02075D6C
	cmp r0, #0
	beq _0223C51C
	cmp r0, #1
	beq _0223C528
	cmp r0, #2
	b _0223C534
_0223C51C:
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x18]
	mov r1, #1
	bl FUN_0200B1B8
	b _0223C53E
_0223C528:
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x18]
	mov r1, #2
	bl FUN_0200B1B8
	b _0223C53E
_0223C534:
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x18]
	mov r1, #3
	bl FUN_0200B1B8
_0223C53E:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	bl FUN_0200C388
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov86_0223C4DC

	thumb_func_start ov86_0223C54C
ov86_0223C54C: ; 0x0223C54C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x24]
	ldr r2, [r5, #0x28]
	bl ov86_0223D2A8
	add r4, r0, #0
	beq _0223C562
	cmp r4, #1
	bne _0223C576
_0223C562:
	ldr r0, [r5, #0x24]
	mov r1, #0x99
	mov r2, #0
	bl FUN_02074470
	add r2, r0, #0
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl FUN_0200B8C8
_0223C576:
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x18]
	add r1, r4, #5
	bl FUN_0200B1B8
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x1c]
	ldr r2, [r5, #0x18]
	bl FUN_0200C388
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_0223C54C

	thumb_func_start ov86_0223C58C
ov86_0223C58C: ; 0x0223C58C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0223C59E
	sub r0, r0, #1
	str r0, [r4, #0x30]
	pop {r3, r4, r5, pc}
_0223C59E:
	ldr r0, [r4, #0x34]
	cmp r0, #3
	bhi _0223C662
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223C5B0: ; jump table
	.short _0223C5B8 - _0223C5B0 - 2 ; case 0
	.short _0223C5DC - _0223C5B0 - 2 ; case 1
	.short _0223C60E - _0223C5B0 - 2 ; case 2
	.short _0223C656 - _0223C5B0 - 2 ; case 3
_0223C5B8:
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x1c]
	mov r1, #0
	bl FUN_0200B1B8
	add r0, r4, #0
	mov r1, #0x10
	bl ov86_0223C47C
	ldr r0, [r4, #0x10]
	bl FUN_0201ACCC
	mov r0, #0x14
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_0223C5DC:
	ldr r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	mov r1, #0x77
	bl FUN_02074470
	add r0, r4, #0
	mov r1, #0x30
	bl ov86_0223C47C
	add r0, r4, #0
	bl ov86_0223C4DC
	add r0, r4, #0
	mov r1, #0x40
	bl ov86_0223C47C
	ldr r0, [r4, #0x10]
	bl FUN_0201ACCC
	mov r0, #0x14
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_0223C60E:
	ldr r0, [r4, #0x24]
	bl FUN_02076B10
	add r2, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl FUN_0200B5EC
	ldr r0, [r4, #0x20]
	ldr r2, [r4, #0x18]
	mov r1, #4
	bl FUN_0200B1B8
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0x18]
	bl FUN_0200C388
	add r0, r4, #0
	mov r1, #0x60
	bl ov86_0223C47C
	add r0, r4, #0
	bl ov86_0223C54C
	add r0, r4, #0
	mov r1, #0x70
	bl ov86_0223C47C
	ldr r0, [r4, #0x10]
	bl FUN_0201ACCC
	ldr r0, [r4, #0x34]
	add r0, r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_0223C656:
	add r0, r4, #0
	bl ov86_0223BDCC
	add r0, r5, #0
	bl FUN_0200DA58
_0223C662:
	pop {r3, r4, r5, pc}
	thumb_func_end ov86_0223C58C

	thumb_func_start ov86_0223C664
ov86_0223C664: ; 0x0223C664
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0x3f
	mov r1, #0x30
	bl FUN_02018144
	ldr r1, _0223C6AC ; =0x00001BD0
	add r4, r0, #0
	add r6, r5, r1
	lsl r7, r7, #2
	add r1, r4, #0
	add r2, r6, r7
	bl ov86_0223BDC4
	ldr r0, [r5, #0x10]
	add r5, #0x14
	str r0, [r4, #0xc]
	add r0, r4, #0
	str r5, [r4, #0x10]
	mov r2, #1
	str r2, [r4, #0x2c]
	mov r1, #0
	add r0, #0x14
	lsl r2, r2, #0x14
	mov r3, #0x1c
	str r1, [r4, #0x28]
	bl ov86_0223D264
	ldr r0, _0223C6B0 ; =ov86_0223C6B4
	add r1, r4, #0
	mov r2, #0
	bl ov86_0223B744
	str r0, [r6, r7]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223C6AC: .word 0x00001BD0
_0223C6B0: .word ov86_0223C6B4
	thumb_func_end ov86_0223C664

	thumb_func_start ov86_0223C6B4
ov86_0223C6B4: ; 0x0223C6B4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0223C6CA
	cmp r0, #1
	beq _0223C6F6
	cmp r0, #2
	beq _0223C70C
	pop {r3, r4, r5, pc}
_0223C6CA:
	add r0, r4, #0
	add r0, #0x14
	bl ov86_0223D284
	ldr r1, [r4, #0x2c]
	asr r3, r0, #0xc
	lsl r1, r1, #0x18
	ldr r0, [r4, #0xc]
	lsr r1, r1, #0x18
	mov r2, #3
	bl FUN_02019184
	add r0, r4, #0
	add r0, #0x14
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C728
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0223C6F6:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x10]
	bl FUN_0201ACCC
	ldr r0, [r4, #0x28]
	add r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0223C70C:
	ldr r1, [r4, #0x2c]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl FUN_02019184
	add r0, r4, #0
	bl ov86_0223BDCC
	add r0, r5, #0
	bl FUN_0200DA58
_0223C728:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov86_0223C6B4

	thumb_func_start ov86_0223C72C
ov86_0223C72C: ; 0x0223C72C
	push {r4, lr}
	sub sp, #0x10
	ldr r2, _0223C830 ; =0x00001BEC
	add r4, r0, #0
	ldr r0, [r4, r2]
	sub r2, #8
	ldr r2, [r4, r2]
	mov r1, #0xc
	bl FUN_0200B1B8
	ldr r1, _0223C834 ; =0x00001BE4
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl FUN_02002D7C
	mov r1, #1
	lsl r1, r1, #8
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223C838 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, _0223C834 ; =0x00001BE4
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, #0x14
	bl FUN_0201D78C
	ldr r0, _0223C83C ; =0x00001BE0
	ldr r2, [r4, #0xc]
	ldr r0, [r4, r0]
	ldr r2, [r2, #0]
	mov r1, #0
	bl FUN_0200B498
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0]
	bl FUN_02025F24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	ldr r0, _0223C83C ; =0x00001BE0
	str r1, [sp, #4]
	ldr r0, [r4, r0]
	mov r3, #5
	bl FUN_0200B60C
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	bl FUN_0202CC58
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0223C83C ; =0x00001BE0
	mov r1, #2
	ldr r0, [r4, r0]
	mov r3, #3
	bl FUN_0200B60C
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	bl FUN_0202CC5C
	mov r3, #2
	add r2, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _0223C83C ; =0x00001BE0
	mov r1, #3
	ldr r0, [r4, r0]
	bl FUN_0200B60C
	ldr r2, _0223C830 ; =0x00001BEC
	mov r1, #0xd
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r2, [r4, r2]
	bl FUN_0200B1B8
	ldr r2, _0223C83C ; =0x00001BE0
	add r1, r2, #4
	ldr r0, [r4, r2]
	add r2, #8
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl FUN_0200C388
	ldr r1, _0223C834 ; =0x00001BE4
	mov r0, #0
	ldr r1, [r4, r1]
	add r2, r0, #0
	bl FUN_02002D7C
	mov r1, #1
	lsl r1, r1, #8
	sub r0, r1, r0
	lsr r3, r0, #1
	mov r0, #0xac
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223C838 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	ldr r2, _0223C834 ; =0x00001BE4
	str r1, [sp, #0xc]
	ldr r2, [r4, r2]
	add r0, #0x14
	bl FUN_0201D78C
	add r4, #0x14
	add r0, r4, #0
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r4, pc}
	nop
_0223C830: .word 0x00001BEC
_0223C834: .word 0x00001BE4
_0223C838: .word 0x00010200
_0223C83C: .word 0x00001BE0
	thumb_func_end ov86_0223C72C

	thumb_func_start ov86_0223C840
ov86_0223C840: ; 0x0223C840
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x3f
	mov r1, #0xdc
	bl FUN_02018144
	ldr r1, _0223C904 ; =0x00001BD0
	add r4, r0, #0
	add r1, r5, r1
	str r1, [sp, #0xc]
	lsl r1, r6, #2
	str r1, [sp, #0x10]
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	add r2, r3, r2
	bl ov86_0223BDC4
	mov r0, #0x15
	lsl r0, r0, #4
	str r5, [r4, #0xc]
	add r0, r5, r0
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [sp, #8]
	str r0, [r4, #0x18]
	ldr r0, [r5, #4]
	str r0, [r4, #0x14]
	cmp r0, #0
	ble _0223C8C6
	ldr r0, _0223C908 ; =0x0223D4D8
	ldr r5, [sp, #8]
	str r0, [sp, #4]
	add r7, r4, #0
	add r6, r0, #0
_0223C88C:
	ldr r3, [sp, #4]
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	add r2, #0x94
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r6, #0
	str r0, [r2, #0]
	ldr r0, [r4, #8]
	ldr r0, [r0, r5]
	bl FUN_02021C50
	ldr r0, [r4, #8]
	mov r1, #1
	ldr r0, [r0, r5]
	bl FUN_02021CAC
	ldr r0, [sp, #4]
	ldr r1, [r4, #0x14]
	add r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r7, #0xc
	add r0, r0, #1
	add r6, #0xc
	add r5, r5, #4
	str r0, [sp, #8]
	cmp r0, r1
	blt _0223C88C
_0223C8C6:
	mov r0, #0
	add r7, r4, #0
	ldr r6, _0223C90C ; =0x0223D3CC
	ldr r5, _0223C908 ; =0x0223D4D8
	str r0, [sp]
	add r7, #0x1c
_0223C8D2:
	ldr r1, [r5, #0]
	ldr r2, [r6, #0]
	add r0, r7, #0
	mov r3, #8
	bl ov86_0223D264
	ldr r0, [sp]
	add r6, r6, #4
	add r0, r0, #1
	add r5, #0xc
	add r7, #0x14
	str r0, [sp]
	cmp r0, #6
	blt _0223C8D2
	ldr r0, _0223C910 ; =ov86_0223C914
	add r1, r4, #0
	mov r2, #0
	bl FUN_0200D9E8
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r0, [r2, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223C904: .word 0x00001BD0
_0223C908: .word 0x0223D4D8
_0223C90C: .word 0x0223D3CC
_0223C910: .word ov86_0223C914
	thumb_func_end ov86_0223C840

	thumb_func_start ov86_0223C914
ov86_0223C914: ; 0x0223C914
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0x10]
	mov r4, #0
	str r0, [sp]
	cmp r1, #0
	ble _0223C968
	add r0, r5, #0
	str r0, [sp, #8]
	add r0, #0x1c
	add r7, r5, #0
	str r0, [sp, #8]
	str r5, [sp, #4]
	add r7, #0x94
	add r6, r4, #0
_0223C934:
	ldr r0, [sp, #8]
	bl ov86_0223D284
	ldr r1, [sp, #4]
	add r1, #0x94
	str r0, [r1, #0]
	ldr r0, [r5, #0x14]
	cmp r4, r0
	bge _0223C950
	ldr r0, [r5, #8]
	add r1, r7, #0
	ldr r0, [r0, r6]
	bl FUN_02021C50
_0223C950:
	ldr r0, [sp, #8]
	ldr r1, [r5, #0x10]
	add r0, #0x14
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, #0xc
	str r0, [sp, #4]
	add r7, #0xc
	add r6, r6, #4
	cmp r4, r1
	blt _0223C934
_0223C968:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _0223C976
	sub r0, r0, #1
	add sp, #0xc
	str r0, [r5, #0x18]
	pop {r4, r5, r6, r7, pc}
_0223C976:
	cmp r1, #6
	bge _0223C988
	mov r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x10]
	add sp, #0xc
	add r0, r0, #1
	str r0, [r5, #0x10]
	pop {r4, r5, r6, r7, pc}
_0223C988:
	ldr r0, [r5, #0x14]
	add r2, r5, #0
	sub r1, r0, #1
	mov r0, #0x14
	add r2, #0x1c
	mul r0, r1
	add r0, r2, r0
	bl ov86_0223D2A4
	cmp r0, #0
	beq _0223C9AA
	add r0, r5, #0
	bl ov86_0223BDCC
	ldr r0, [sp]
	bl FUN_0200DA58
_0223C9AA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov86_0223C914

	thumb_func_start ov86_0223C9B0
ov86_0223C9B0: ; 0x0223C9B0
	push {r3, r4, r5, lr}
	ldr r1, _0223C9F4 ; =0x00000844
	add r5, r0, #0
	mov r0, #0x3f
	bl FUN_02018144
	add r4, r0, #0
	beq _0223C9F0
	ldr r0, _0223C9F8 ; =0x0223D540
	mov r1, #1
	str r1, [r0, #0]
	ldr r0, _0223C9FC ; =0x0223D560
	mov r1, #2
	str r1, [r0, #4]
	ldr r0, _0223CA00 ; =0x0000083C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _0223CA04 ; =ov86_0223CA64
	add r1, r4, #0
	mov r2, #5
	bl ov86_0223B744
	ldr r1, _0223CA08 ; =0x00000838
	mov r2, #3
	str r0, [r4, r1]
	add r1, #8
	str r5, [r4, r1]
	ldr r0, _0223CA0C ; =ov86_0223CA10
	add r1, r4, #0
	bl ov86_0223B744
	pop {r3, r4, r5, pc}
_0223C9F0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C9F4: .word 0x00000844
_0223C9F8: .word 0x0223D540
_0223C9FC: .word 0x0223D560
_0223CA00: .word 0x0000083C
_0223CA04: .word ov86_0223CA64
_0223CA08: .word 0x00000838
_0223CA0C: .word ov86_0223CA10
	thumb_func_end ov86_0223C9B0

	thumb_func_start ov86_0223CA10
ov86_0223CA10: ; 0x0223CA10
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _0223CA54 ; =0x0223D540
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0223CA44
	add r1, r4, #0
	mov r2, #2
	add r0, r4, #0
	add r1, #0x14
	lsl r2, r2, #0xa
	bl FUN_020C11A8
	ldr r1, _0223CA58 ; =0x00007FFF
	ldr r2, _0223CA5C ; =0x00004210
	add r0, r4, #0
	mov r3, #0
	bl FUN_020BF7DC
	mov r2, #0
	ldr r1, _0223CA5C ; =0x00004210
	add r0, r4, #0
	add r3, r2, #0
	bl FUN_020BF820
	pop {r4, pc}
_0223CA44:
	ldr r1, _0223CA60 ; =0x0223D560
	ldr r2, [r1, #4]
	sub r2, r2, #1
	str r2, [r1, #4]
	bl FUN_0200DA58
	pop {r4, pc}
	nop
_0223CA54: .word 0x0223D540
_0223CA58: .word 0x00007FFF
_0223CA5C: .word 0x00004210
_0223CA60: .word 0x0223D560
	thumb_func_end ov86_0223CA10

	thumb_func_start ov86_0223CA64
ov86_0223CA64: ; 0x0223CA64
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _0223CA94 ; =0x0223D540
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0223CA86
	add r0, r4, #0
	bl FUN_020C11C8
	ldr r1, _0223CA98 ; =0x00000814
	str r0, [r4, r1]
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x14
	bl FUN_020C2C54
	pop {r4, pc}
_0223CA86:
	ldr r1, _0223CA9C ; =0x0223D560
	ldr r2, [r1, #4]
	sub r2, r2, #1
	str r2, [r1, #4]
	bl FUN_0200DA58
	pop {r4, pc}
	; .align 2, 0
_0223CA94: .word 0x0223D540
_0223CA98: .word 0x00000814
_0223CA9C: .word 0x0223D560
	thumb_func_end ov86_0223CA64

	thumb_func_start ov86_0223CAA0
ov86_0223CAA0: ; 0x0223CAA0
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	bl FUN_0201CED0
	ldr r1, _0223CADC ; =0x0000083C
	add r4, r0, #0
	ldr r3, [r4, r1]
	cmp r3, #8
	bge _0223CAD8
	add r1, r5, #0
	add r2, r6, #0
	bl ov86_0223CAE4
	ldr r2, _0223CADC ; =0x0000083C
	ldr r1, [r4, r2]
	lsl r1, r1, #2
	add r3, r4, r1
	add r1, r2, #0
	sub r1, #0x24
	str r0, [r3, r1]
	ldr r0, _0223CAE0 ; =0x0223D560
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	ldr r0, [r4, r2]
	add r0, r0, #1
	str r0, [r4, r2]
_0223CAD8:
	pop {r4, r5, r6, pc}
	nop
_0223CADC: .word 0x0000083C
_0223CAE0: .word 0x0223D560
	thumb_func_end ov86_0223CAA0

	thumb_func_start ov86_0223CAE4
ov86_0223CAE4: ; 0x0223CAE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r1, _0223CB5C ; =0x00000838
	mov r0, #0x3f
	add r7, r2, #0
	add r4, r3, #0
	bl FUN_02018144
	add r1, r0, #0
	beq _0223CB58
	ldr r0, _0223CB60 ; =0x00000818
	ldr r2, _0223CB64 ; =0x0223D470
	str r6, [r1, #0]
	lsl r3, r4, #2
	ldr r3, [r2, r3]
	add r2, r0, #0
	strh r5, [r1, r0]
	sub r2, #8
	str r3, [r1, r2]
	add r2, r0, #0
	mov r3, #0
	sub r2, #0x14
	str r3, [r1, r2]
	add r2, r0, #0
	sub r2, #0x10
	str r7, [r1, r2]
	ldr r2, _0223CB68 ; =0x0223D37C
	lsl r6, r4, #1
	ldrsh r6, [r2, r6]
	add r2, r0, #0
	sub r2, #0xc
	str r6, [r1, r2]
	sub r2, r0, #4
	str r4, [r1, r2]
	add r4, r5, #0
	sub r4, #0x50
	add r2, r0, #2
	strh r4, [r1, r2]
	ldr r2, _0223CB6C ; =0xFFFFF000
	add r4, r0, #4
	strh r2, [r1, r4]
	add r4, r0, #6
	strh r3, [r1, r4]
	add r4, r0, #0
	add r5, #0x50
	add r4, #8
	strh r5, [r1, r4]
	add r4, r0, #0
	add r4, #0xa
	strh r2, [r1, r4]
	add r0, #0xc
	strh r3, [r1, r0]
	ldr r0, _0223CB70 ; =ov86_0223CB74
	mov r2, #4
	bl ov86_0223B744
	pop {r3, r4, r5, r6, r7, pc}
_0223CB58:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CB5C: .word 0x00000838
_0223CB60: .word 0x00000818
_0223CB64: .word 0x0223D470
_0223CB68: .word 0x0223D37C
_0223CB6C: .word 0xFFFFF000
_0223CB70: .word ov86_0223CB74
	thumb_func_end ov86_0223CAE4

	thumb_func_start ov86_0223CB74
ov86_0223CB74: ; 0x0223CB74
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, _0223CCE4 ; =0x0223D540
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0223CB84
	b _0223CCD2
_0223CB84:
	ldr r0, _0223CCE8 ; =0x00000808
	add r1, r0, #4
	ldr r2, [r5, r0]
	ldr r1, [r5, r1]
	add r1, r2, r1
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r0]
	cmp r1, #0
	ble _0223CBB2
	mov r1, #0xaa
	lsl r1, r1, #0xc
	cmp r2, r1
	blt _0223CBC8
	add r1, r0, #4
	ldr r2, [r5, r1]
	mov r1, #0
	mvn r1, r1
	mul r1, r2
	add r0, r0, #4
	str r1, [r5, r0]
	b _0223CBC8
_0223CBB2:
	mov r1, #0xa
	lsl r1, r1, #0xc
	cmp r2, r1
	bgt _0223CBC8
	add r1, r0, #4
	ldr r2, [r5, r1]
	mov r1, #0
	mvn r1, r1
	mul r1, r2
	add r0, r0, #4
	str r1, [r5, r0]
_0223CBC8:
	ldr r0, _0223CCE8 ; =0x00000808
	ldr r0, [r5, r0]
	asr r6, r0, #0xc
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl FUN_0201D1D4
	mov r2, #0xa
	asr r1, r0, #0x1f
	lsl r2, r2, #0xa
	mov r3, #0
	bl FUN_020E1F1C
	ldr r3, _0223CCEC ; =0x00000818
	mov r4, #0
	ldrsh r2, [r5, r3]
	sub r3, #0x18
	add r3, r0, r3
	adc r1, r4
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	add r4, r2, r1
	bl FUN_0201D15C
	mov r2, #0xa
	asr r1, r0, #0x1f
	lsl r2, r2, #0xa
	mov r3, #0
	bl FUN_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r6, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r6, #0xc
	orr r1, r0
	lsl r0, r2, #1
	mov r7, #9
	sub r6, r1, r0
	lsl r7, r7, #6
	add r0, r2, #0
	sub r1, r4, r7
	add r0, #0x26
	strh r1, [r5, r0]
	lsl r0, r6, #0x10
	add r1, r2, #0
	asr r0, r0, #0x10
	add r1, #0x28
	strh r0, [r5, r1]
	add r1, r2, #0
	add r1, #0x2a
	strh r3, [r5, r1]
	add r1, r2, #0
	add r4, r4, r7
	add r1, #0x2c
	strh r4, [r5, r1]
	add r1, r2, #0
	add r1, #0x2e
	strh r0, [r5, r1]
	add r0, r2, #0
	add r0, #0x30
	add r2, #0x14
	strh r3, [r5, r0]
	ldr r0, [r5, r2]
	add r1, r3, #0
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r2, r3, #0
	ldr r0, [r5, #0]
	mov r3, #2
	bl FUN_020BF790
	ldr r0, [r5, #0]
	mov r1, #1
	bl FUN_020BF8F0
	mov r1, #0x81
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl FUN_020BF6C0
	ldr r3, _0223CCF0 ; =0x0000081A
	ldr r0, [r5, #0]
	add r2, r3, #2
	ldrsh r1, [r5, r3]
	add r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	bl FUN_020BF73C
	mov r3, #0x82
	lsl r3, r3, #4
	add r2, r3, #2
	ldrsh r1, [r5, r3]
	add r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r0, [r5, #0]
	bl FUN_020BF73C
	ldr r3, _0223CCF4 ; =0x0000082C
	ldr r0, [r5, #0]
	add r2, r3, #2
	ldrsh r1, [r5, r3]
	add r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	bl FUN_020BF73C
	ldr r3, _0223CCF8 ; =0x00000826
	ldr r0, [r5, #0]
	add r2, r3, #2
	ldrsh r1, [r5, r3]
	add r3, r3, #4
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	bl FUN_020BF73C
	ldr r0, [r5, #0]
	bl FUN_020BF91C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0223CCD2:
	ldr r1, _0223CCFC ; =0x0223D560
	ldr r2, [r1, #4]
	sub r2, r2, #1
	str r2, [r1, #4]
	bl FUN_0200DA58
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223CCE4: .word 0x0223D540
_0223CCE8: .word 0x00000808
_0223CCEC: .word 0x00000818
_0223CCF0: .word 0x0000081A
_0223CCF4: .word 0x0000082C
_0223CCF8: .word 0x00000826
_0223CCFC: .word 0x0223D560
	thumb_func_end ov86_0223CB74

	thumb_func_start ov86_0223CD00
ov86_0223CD00: ; 0x0223CD00
	push {r3, lr}
	cmp r0, #0
	beq _0223CD26
	bl FUN_0201CED0
	add r3, r0, #0
	ldr r0, _0223CD28 ; =0x04000444
	mov r1, #0
	str r1, [r0, #0]
	ldr r2, _0223CD2C ; =0x00000814
	add r1, r3, #0
	ldr r2, [r3, r2]
	mov r0, #3
	add r1, #0x14
	bl FUN_01FF85B8
	ldr r0, _0223CD30 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
_0223CD26:
	pop {r3, pc}
	; .align 2, 0
_0223CD28: .word 0x04000444
_0223CD2C: .word 0x00000814
_0223CD30: .word 0x04000448
	thumb_func_end ov86_0223CD00

	thumb_func_start ov86_0223CD34
ov86_0223CD34: ; 0x0223CD34
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0223CD74 ; =0x0223D540
	mov r2, #0
	str r2, [r1, #0]
	cmp r0, #0
	beq _0223CD70
	bl FUN_0201CED0
	add r6, r0, #0
	ldr r0, _0223CD78 ; =0x0000083C
	mov r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	ble _0223CD6A
	ldr r7, _0223CD78 ; =0x0000083C
	add r5, r6, #0
_0223CD54:
	ldr r0, _0223CD7C ; =0x00000818
	ldr r0, [r5, r0]
	bl FUN_0201CED0
	bl FUN_020181C4
	ldr r0, [r6, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _0223CD54
_0223CD6A:
	add r0, r6, #0
	bl FUN_020181C4
_0223CD70:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CD74: .word 0x0223D540
_0223CD78: .word 0x0000083C
_0223CD7C: .word 0x00000818
	thumb_func_end ov86_0223CD34

	thumb_func_start ov86_0223CD80
ov86_0223CD80: ; 0x0223CD80
	ldr r0, _0223CD90 ; =0x0223D560
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0223CD8C
	mov r0, #1
	bx lr
_0223CD8C:
	mov r0, #0
	bx lr
	; .align 2, 0
_0223CD90: .word 0x0223D560
	thumb_func_end ov86_0223CD80

	thumb_func_start ov86_0223CD94
ov86_0223CD94: ; 0x0223CD94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	ldr r1, _0223CF28 ; =0x00008D64
	mov r0, #0x3f
	bl FUN_02018144
	str r0, [sp, #0x28]
	bl FUN_0201D2E8
	str r0, [sp, #0x20]
	ldr r0, _0223CF2C ; =0x00003594
	bl FUN_0201D2DC
	mov r0, #0
	ldr r4, [sp, #0x28]
	str r0, [sp, #0x24]
	str r0, [sp, #0x1c]
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x34
	str r0, [sp, #0x18]
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0x28
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0x2e
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
_0223CDD2:
	ldr r0, [sp, #0x1c]
	lsl r1, r0, #2
	ldr r0, _0223CF30 ; =0x0223D490
	ldr r0, [r0, r1]
	str r0, [r4, #8]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blo _0223CDEA
	mov r0, #0
	str r0, [sp, #0x1c]
_0223CDEA:
	bl FUN_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x13
	sub r1, r1, r2
	mov r0, #0x13
	ror r1, r0
	mov r0, #1
	add r1, r2, r1
	lsl r0, r0, #0xc
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #8]
	bl FUN_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x13
	sub r1, r1, r2
	mov r0, #0x13
	ror r1, r0
	mov r0, #1
	add r1, r2, r1
	lsl r0, r0, #0xc
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #4]
	bl FUN_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl FUN_020E1F6C
	mov r0, #0x52
	lsl r0, r0, #2
	sub r0, r1, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	ldr r5, _0223CF34 ; =0x0223D3E4
	str r0, [sp]
	mov r7, #0
	add r6, r4, #0
_0223CE40:
	mov r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #8]
	add r0, r0, r1
	strh r0, [r6, #0x10]
	mov r0, #2
	ldrsh r1, [r5, r0]
	ldr r0, [sp, #4]
	add r0, r0, r1
	strh r0, [r6, #0x12]
	mov r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, [sp]
	add r0, r0, r1
	strh r0, [r6, #0x14]
	mov r0, #0
	strh r0, [r4, #0x28]
	strh r0, [r4, #0x2a]
	strh r0, [r4, #0x2c]
	bl FUN_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x17
	sub r2, r2, r1
	mov r0, #0x17
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #8
	add r0, r1, r0
	strh r0, [r4, #0x2e]
	bl FUN_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x17
	sub r2, r2, r1
	mov r0, #0x17
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #8
	add r0, r1, r0
	strh r0, [r4, #0x30]
	bl FUN_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x17
	sub r2, r2, r1
	mov r0, #0x17
	ror r2, r0
	mov r0, #2
	add r1, r1, r2
	lsl r0, r0, #8
	add r0, r1, r0
	strh r0, [r4, #0x32]
	ldr r0, [sp, #0x18]
	bl FUN_020BC474
	add r7, r7, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r7, #4
	blt _0223CE40
	bl FUN_0201D2E8
	mov r1, #7
	and r0, r1
	sub r5, r0, #1
	cmp r0, #0
	beq _0223CEDE
_0223CECC:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl FUN_020BD1E4
	add r0, r5, #0
	sub r5, r5, #1
	cmp r0, #0
	bne _0223CECC
_0223CEDE:
	ldr r0, [sp, #0x18]
	add r4, #0x70
	add r0, #0x70
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, #0x70
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x70
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x70
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #0x30
	bge _0223CF04
	b _0223CDD2
_0223CF04:
	ldr r0, [sp, #0x20]
	bl FUN_0201D2DC
	ldr r0, [sp, #0x28]
	mov r2, #0
	str r2, [r0, #0]
	ldr r1, _0223CF38 ; =0x00008D20
	str r2, [r0, #4]
	str r2, [r0, r1]
	ldr r0, _0223CF3C ; =0x04000440
	mov r2, #2
	str r2, [r0, #0]
	ldr r0, _0223CF40 ; =ov86_0223CF6C
	ldr r1, [sp, #0x28]
	bl FUN_0200D9E8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CF28: .word 0x00008D64
_0223CF2C: .word 0x00003594
_0223CF30: .word 0x0223D490
_0223CF34: .word 0x0223D3E4
_0223CF38: .word 0x00008D20
_0223CF3C: .word 0x04000440
_0223CF40: .word ov86_0223CF6C
	thumb_func_end ov86_0223CD94

	thumb_func_start ov86_0223CF44
ov86_0223CF44: ; 0x0223CF44
	push {r4, lr}
	add r4, r0, #0
	beq _0223CF58
	bl FUN_0201CED0
	bl FUN_020181C4
	add r0, r4, #0
	bl FUN_0200DA58
_0223CF58:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov86_0223CF44

	thumb_func_start ov86_0223CF5C
ov86_0223CF5C: ; 0x0223CF5C
	push {r3, lr}
	cmp r0, #0
	beq _0223CF6A
	bl FUN_0201CED0
	mov r1, #1
	str r1, [r0, #0]
_0223CF6A:
	pop {r3, pc}
	thumb_func_end ov86_0223CF5C

	thumb_func_start ov86_0223CF6C
ov86_0223CF6C: ; 0x0223CF6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	add r7, r1, #0
	ldr r0, [r7, #0]
	cmp r0, #0
	bne _0223CF7A
	b _0223D1F0
_0223CF7A:
	ldr r1, _0223D1F4 ; =0x00001508
	mov r2, #0x1e
	add r0, r7, r1
	add r1, #0x14
	add r1, r7, r1
	lsl r2, r2, #0xa
	bl FUN_020C11A8
	mov r0, #0x3f
	str r0, [sp]
	mov r0, #0x1f
	str r0, [sp, #4]
	ldr r0, _0223D1F4 ; =0x00001508
	mov r1, #3
	mov r2, #0
	add r0, r7, r0
	add r3, r1, #0
	str r2, [sp, #8]
	bl FUN_020BF790
	ldr r0, _0223D1F4 ; =0x00001508
	mov r2, #0
	ldr r1, _0223D1F8 ; =0x00005294
	add r0, r7, r0
	add r3, r2, #0
	bl FUN_020BF7DC
	mov r0, #0
	str r0, [sp, #0x1c]
	add r0, r7, #0
	str r0, [sp, #0x18]
	add r0, #0x28
	str r0, [sp, #0x18]
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x2e
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r5, r7, #0
	str r5, [sp, #0xc]
	add r5, #0x34
	add r4, r7, #0
	str r0, [sp, #0x10]
	str r5, [sp, #0xc]
_0223CFD2:
	mov r0, #0x24
	ldrsh r0, [r4, r0]
	sub r0, #0x55
	strh r0, [r4, #0x24]
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _0223D1FC ; =0xFFFFF000
	cmp r1, r0
	bgt _0223CFEC
	mov r0, #2
	lsl r0, r0, #0xc
	add r0, r1, r0
	strh r0, [r4, #0x24]
_0223CFEC:
	mov r0, #0x24
	ldrsh r1, [r4, r0]
	ldr r0, _0223D200 ; =0x0000019A
	ldr r2, [sp, #0x18]
	sub r0, r1, r0
	strh r0, [r4, #0x12]
	mov r0, #0x12
	ldrsh r0, [r4, r0]
	ldr r1, [sp, #0x14]
	strh r0, [r4, #0x18]
	mov r0, #0x24
	ldrsh r0, [r4, r0]
	strh r0, [r4, #0x1e]
	ldr r0, [sp, #0x10]
	bl FUN_020BD1E4
	ldr r0, [sp, #0xc]
	bl FUN_020BC474
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	mov r2, #0x10
	mov r3, #0x12
	str r0, [sp]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	bl FUN_020BC4D4
	ldr r0, _0223D1F4 ; =0x00001508
	ldr r2, _0223D204 ; =0x00002D6B
	add r0, r7, r0
	mov r1, #0
	bl FUN_020BF8C0
	ldr r2, [r4, #8]
	ldr r0, _0223D1F4 ; =0x00001508
	lsl r2, r2, #0x10
	add r0, r7, r0
	mov r1, #1
	lsr r2, r2, #0x10
	bl FUN_020BF8C0
	mov r1, #0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, _0223D208 ; =0x00000FFF
	strh r1, [r0, #2]
	ldr r1, _0223D20C ; =0xFFFFF001
	strh r1, [r0, #4]
	add r0, sp, #0x20
	add r1, r0, #0
	bl FUN_020BD4FC
	add r3, sp, #0x20
	add r1, sp, #0x20
	mov r0, #4
	ldrsh r0, [r1, r0]
	mov r1, #0
	add r2, r1, #0
	str r0, [sp]
	ldr r0, _0223D1F4 ; =0x00001508
	ldrsh r2, [r3, r2]
	add r6, r3, #0
	mov r3, #2
	ldrsh r3, [r6, r3]
	add r0, r7, r0
	bl FUN_020BF864
	mov r1, #0
	add r0, r6, #0
	strh r1, [r0]
	ldr r1, _0223D20C ; =0xFFFFF001
	strh r1, [r0, #2]
	lsr r1, r1, #0x14
	strh r1, [r0, #4]
	add r0, sp, #0x20
	add r1, r0, #0
	bl FUN_020BD4FC
	add r1, r6, #0
	mov r0, #4
	ldrsh r0, [r1, r0]
	add r3, r6, #0
	mov r2, #0
	str r0, [sp]
	ldrsh r2, [r3, r2]
	mov r3, #2
	ldr r0, _0223D1F4 ; =0x00001508
	ldrsh r3, [r6, r3]
	add r0, r7, r0
	mov r1, #1
	bl FUN_020BF864
	ldrh r0, [r4, #0x28]
	ldr r3, _0223D210 ; =0x020F983C
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0223D210 ; =0x020F983C
	add r2, r0, r1
	ldrsh r1, [r3, r1]
	mov r3, #2
	ldrsh r2, [r2, r3]
	add r0, sp, #0x28
	bl FUN_020BC5AC
	ldr r2, [sp, #0xc]
	add r0, sp, #0x28
	add r1, r5, #0
	bl FUN_020BC618
	ldrh r0, [r4, #0x2a]
	ldr r3, _0223D210 ; =0x020F983C
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0223D210 ; =0x020F983C
	add r2, r0, r1
	ldrsh r1, [r3, r1]
	mov r3, #2
	ldrsh r2, [r2, r3]
	add r0, sp, #0x28
	bl FUN_020BC5D0
	ldr r2, [sp, #0xc]
	add r0, sp, #0x28
	add r1, r5, #0
	bl FUN_020BC618
	ldrh r0, [r4, #0x2c]
	ldr r3, _0223D210 ; =0x020F983C
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0223D210 ; =0x020F983C
	add r2, r0, r1
	ldrsh r1, [r3, r1]
	mov r3, #2
	ldrsh r2, [r2, r3]
	add r0, sp, #0x28
	bl FUN_020BC5F4
	ldr r2, [sp, #0xc]
	add r0, sp, #0x28
	add r1, r5, #0
	bl FUN_020BC618
	ldr r2, [r4, #8]
	ldr r0, _0223D1F4 ; =0x00001508
	lsl r2, r2, #0x10
	ldr r1, _0223D214 ; =0x00007FFF
	add r0, r7, r0
	lsr r2, r2, #0x10
	mov r3, #0
	bl FUN_020BF820
	ldr r0, _0223D1F4 ; =0x00001508
	add r0, r7, r0
	bl FUN_020BF650
	ldr r0, _0223D1F4 ; =0x00001508
	add r1, r5, #0
	add r0, r7, r0
	bl FUN_020BF69C
	ldr r0, _0223D1F4 ; =0x00001508
	mov r1, #1
	add r0, r7, r0
	bl FUN_020BF8F0
	ldr r0, _0223D1F4 ; =0x00001508
	mov r1, #0
	ldr r3, _0223D20C ; =0xFFFFF001
	add r0, r7, r0
	add r2, r1, #0
	bl FUN_020BF6EC
	mov r1, #0x9b
	ldr r0, _0223D1F4 ; =0x00001508
	mvn r1, r1
	add r2, r1, #0
	add r0, r7, r0
	sub r2, #0x31
	mov r3, #0
	bl FUN_020BF73C
	ldr r0, _0223D1F4 ; =0x00001508
	mov r2, #0xcc
	add r0, r7, r0
	mov r1, #0x9c
	mvn r2, r2
	mov r3, #0
	bl FUN_020BF73C
	ldr r0, _0223D1F4 ; =0x00001508
	mov r1, #0x9c
	add r0, r7, r0
	mov r2, #0xcd
	mov r3, #0
	bl FUN_020BF73C
	ldr r0, _0223D1F4 ; =0x00001508
	mov r1, #0x9b
	add r0, r7, r0
	mvn r1, r1
	mov r2, #0xcd
	mov r3, #0
	bl FUN_020BF73C
	ldr r0, _0223D1F4 ; =0x00001508
	add r0, r7, r0
	bl FUN_020BF91C
	ldr r0, _0223D1F4 ; =0x00001508
	mov r1, #1
	add r0, r7, r0
	bl FUN_020BF670
	ldr r0, [sp, #0x18]
	add r4, #0x70
	add r0, #0x70
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r5, #0x70
	add r0, #0x70
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x70
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0x70
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0x30
	bge _0223D1C6
	b _0223CFD2
_0223D1C6:
	ldr r0, _0223D1F4 ; =0x00001508
	add r0, r7, r0
	bl FUN_020C11C8
	ldr r1, _0223D218 ; =0x00008D1C
	str r0, [r7, r1]
	ldr r0, _0223D21C ; =0x0000151C
	ldr r1, [r7, r1]
	add r0, r7, r0
	bl FUN_020C2C54
	ldr r0, _0223D218 ; =0x00008D1C
	ldr r1, [r7, r0]
	mov r0, #0x1e
	lsl r0, r0, #0xa
	cmp r1, r0
	blo _0223D1EC
	bl FUN_02022974
_0223D1EC:
	mov r0, #1
	str r0, [r7, #4]
_0223D1F0:
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D1F4: .word 0x00001508
_0223D1F8: .word 0x00005294
_0223D1FC: .word 0xFFFFF000
_0223D200: .word 0x0000019A
_0223D204: .word 0x00002D6B
_0223D208: .word 0x00000FFF
_0223D20C: .word 0xFFFFF001
_0223D210: .word 0x020F983C
_0223D214: .word 0x00007FFF
_0223D218: .word 0x00008D1C
_0223D21C: .word 0x0000151C
	thumb_func_end ov86_0223CF6C

	thumb_func_start ov86_0223D220
ov86_0223D220: ; 0x0223D220
	push {r4, lr}
	cmp r0, #0
	beq _0223D250
	bl FUN_0201CED0
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0223D250
	ldr r0, _0223D254 ; =0x04000444
	mov r1, #0
	str r1, [r0, #0]
	ldr r2, _0223D258 ; =0x00008D1C
	ldr r1, _0223D25C ; =0x0000151C
	ldr r2, [r4, r2]
	mov r0, #3
	add r1, r4, r1
	bl FUN_01FF85B8
	ldr r0, _0223D260 ; =0x04000448
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r4, #4]
_0223D250:
	pop {r4, pc}
	nop
_0223D254: .word 0x04000444
_0223D258: .word 0x00008D1C
_0223D25C: .word 0x0000151C
_0223D260: .word 0x04000448
	thumb_func_end ov86_0223D220

	thumb_func_start ov86_0223D264
ov86_0223D264: ; 0x0223D264
	push {r3, r4, r5, lr}
	add r4, r0, #0
	str r1, [r4, #0]
	add r5, r3, #0
	sub r0, r2, r1
	add r1, r5, #0
	str r2, [r4, #8]
	bl FUN_020E1F6C
	str r0, [r4, #4]
	sub r0, r5, #1
	str r0, [r4, #0xc]
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov86_0223D264

	thumb_func_start ov86_0223D284
ov86_0223D284: ; 0x0223D284
	ldr r1, [r0, #0xc]
	cmp r1, #0
	beq _0223D29A
	sub r1, r1, #1
	str r1, [r0, #0xc]
	ldr r2, [r0, #0]
	ldr r1, [r0, #4]
	add r1, r2, r1
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
_0223D29A:
	mov r1, #1
	str r1, [r0, #0x10]
	ldr r0, [r0, #8]
	bx lr
	; .align 2, 0
	thumb_func_end ov86_0223D284

	thumb_func_start ov86_0223D2A4
ov86_0223D2A4: ; 0x0223D2A4
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov86_0223D2A4

	thumb_func_start ov86_0223D2A8
ov86_0223D2A8: ; 0x0223D2A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl FUN_02073C88
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x7a
	mov r2, #0
	bl FUN_02074470
	sub r1, r0, #1
	cmp r1, #2
	bhi _0223D2CC
	mov r5, #4
	b _0223D35E
_0223D2CC:
	sub r1, r0, #4
	cmp r1, #1
	bhi _0223D2D6
	mov r5, #3
	b _0223D35E
_0223D2D6:
	cmp r0, #0xf
	bne _0223D2DE
	mov r5, #5
	b _0223D35E
_0223D2DE:
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0223D2F0
	mov r5, #6
	b _0223D35E
_0223D2F0:
	add r0, r6, #0
	bl FUN_02025F20
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl FUN_02074470
	cmp r7, r0
	beq _0223D30A
	mov r5, #2
	b _0223D35E
_0223D30A:
	ldr r1, _0223D36C ; =0x00001BE4
	add r0, r6, #0
	ldr r1, [r5, r1]
	bl FUN_02025EF4
	ldr r2, _0223D370 ; =0x00001BE8
	add r0, r4, #0
	ldr r2, [r5, r2]
	mov r1, #0x91
	bl FUN_02074470
	ldr r1, _0223D36C ; =0x00001BE4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	bl FUN_02023BE0
	cmp r0, #0
	beq _0223D334
	mov r5, #2
	b _0223D35E
_0223D334:
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl FUN_02074470
	mov r1, #0x7d
	lsl r1, r1, #4
	cmp r0, r1
	blo _0223D34A
	mov r5, #6
	b _0223D35E
_0223D34A:
	add r0, r4, #0
	mov r1, #0x93
	mov r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223D35C
	mov r5, #0
	b _0223D35E
_0223D35C:
	mov r5, #1
_0223D35E:
	ldr r1, [sp]
	add r0, r4, #0
	bl FUN_02073CD4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D36C: .word 0x00001BE4
_0223D370: .word 0x00001BE8
	thumb_func_end ov86_0223D2A8
	; 0x0223D374
