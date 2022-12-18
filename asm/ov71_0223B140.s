	.include "macros/function.inc"
	.include "include/ov71_0223B140.inc"

	

	.text


	thumb_func_start ov71_0223B140
ov71_0223B140: ; 0x0223B140
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223B35C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0223B360 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x19
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r0, #0x33
	mov r1, #0x19
	bl sub_02006C24
	str r0, [sp, #0xc]
	ldr r1, _0223B364 ; =0x00003320
	add r0, r5, #0
	mov r2, #0x19
	bl sub_0200681C
	ldr r2, _0223B364 ; =0x00003320
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	add r1, r4, #0
	add r1, #0xb4
	str r0, [r1, #0]
	mov r0, #0x19
	bl sub_02018340
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov71_0223B620
	bl ov71_0223B688
	ldr r0, [r4, #0]
	bl ov71_0223B858
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov71_0223B968
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r1, #0
	mov r0, #0x38
	add r2, r1, #0
	bl sub_02004550
	ldr r0, _0223B368 ; =0x000032F0
	add r0, r4, r0
	bl ov71_0223D324
	ldr r0, _0223B36C ; =0x00000695
	bl sub_02005748
	ldr r0, _0223B370 ; =0x000030E4
	ldr r1, [sp, #0xc]
	add r0, r4, r0
	bl ov71_0223CF0C
	mov r0, #0
	add r1, r0, #0
	add r2, sp, #0x10
	add r5, r0, #0
	mov r6, #1
_0223B206:
	add r3, r4, #0
	add r3, #0xb4
	ldr r3, [r3, #0]
	add r3, r3, r1
	ldr r3, [r3, #0x48]
	lsl r3, r3, #0x1f
	asr r3, r3, #0x1f
	beq _0223B21A
	strb r6, [r2]
	b _0223B21C
_0223B21A:
	strb r5, [r2]
_0223B21C:
	add r0, r0, #1
	add r1, r1, #4
	add r2, r2, #1
	cmp r0, #8
	blt _0223B206
	ldr r0, _0223B370 ; =0x000030E4
	add r1, sp, #0x10
	add r0, r4, r0
	bl ov71_0223D070
	ldr r0, [r4, #0]
	add r1, r4, #4
	bl ov71_0223C69C
	mov r5, #0
	mov r6, #1
_0223B23C:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #2]
	asr r0, r5
	tst r0, r6
	beq _0223B252
	add r0, r4, #0
	add r1, r5, #0
	bl ov71_0223C128
_0223B252:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0223B23C
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_02019448
	add r1, r4, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	add r0, r4, #4
	bl ov71_0223C6F0
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _0223B28C
	ldr r2, _0223B374 ; =0x0000330C
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x54
	mov r1, #1
	bl ov71_0223CECC
_0223B28C:
	mov r1, #0xc3
	mov r5, #0
	lsl r1, r1, #6
	str r5, [r4, r1]
	ldr r0, _0223B378 ; =0x00003318
	sub r2, r5, #1
	strb r5, [r4, r0]
	add r1, #0x14
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0x2c
	str r5, [r4, r1]
	add r0, r0, #5
	ldr r7, _0223B370 ; =0x000030E4
	strb r5, [r4, r0]
_0223B2AA:
	ldr r0, _0223B37C ; =0x00003310
	add r2, r4, r5
	mov r1, #0
	strb r1, [r2, r0]
	add r0, r4, #0
	add r0, #0xb4
	ldr r1, [r0, #0]
	lsl r0, r5, #2
	add r1, #0x48
	ldr r0, [r1, r0]
	lsl r1, r0, #0x1f
	asr r1, r1, #0x1f
	beq _0223B316
	asr r0, r0, #1
	bl ov71_0223C40C
	add r6, r0, #0
	cmp r6, #4
	bhi _0223B2EE
	bne _0223B2DE
	add r0, r4, r7
	add r1, r5, #0
	mov r2, #0
	bl ov71_0223D298
	b _0223B2EE
_0223B2DE:
	mov r2, #3
	sub r2, r2, r6
	lsl r2, r2, #0x18
	add r0, r4, r7
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl ov71_0223D298
_0223B2EE:
	cmp r6, #3
	bne _0223B302
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0223B380 ; =0x00003260
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	b _0223B316
_0223B302:
	cmp r6, #4
	bne _0223B316
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0xca
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
_0223B316:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #8
	blo _0223B2AA
	bl ov71_0223C288
	ldr r0, _0223B384 ; =ov71_0223C18C
	mov r1, #0
	bl sub_02017798
	bl sub_020397E4
	mov r0, #1
	mov r1, #0x2a
	bl sub_0200544C
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x19
	mov r1, #3
	str r0, [sp, #8]
	mov r0, #2
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223B35C: .word 0xFFFFE0FF
_0223B360: .word 0x04001000
_0223B364: .word 0x00003320
_0223B368: .word 0x000032F0
_0223B36C: .word 0x00000695
_0223B370: .word 0x000030E4
_0223B374: .word 0x0000330C
_0223B378: .word 0x00003318
_0223B37C: .word 0x00003310
_0223B380: .word 0x00003260
_0223B384: .word ov71_0223C18C
	thumb_func_end ov71_0223B140

	thumb_func_start ov71_0223B388
ov71_0223B388: ; 0x0223B388
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #4
	bhi _0223B3B8
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223B3A6: ; jump table
	.short _0223B3B0 - _0223B3A6 - 2 ; case 0
	.short _0223B3C0 - _0223B3A6 - 2 ; case 1
	.short _0223B4DE - _0223B3A6 - 2 ; case 2
	.short _0223B4EC - _0223B3A6 - 2 ; case 3
	.short _0223B4FA - _0223B3A6 - 2 ; case 4
_0223B3B0:
	bl sub_0200F2AC
	cmp r0, #0
	bne _0223B3BA
_0223B3B8:
	b _0223B580
_0223B3BA:
	mov r0, #1
	str r0, [r5, #0]
	b _0223B580
_0223B3C0:
	bl ov71_0223BEF8
	add r6, r0, #0
	cmp r6, #1
	bne _0223B43E
	ldr r0, _0223B594 ; =0x000030D4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B412
	ldr r2, _0223B598 ; =0x000032EC
	mov r1, #1
	add r0, r2, #0
	str r1, [r4, r2]
	add r0, #0x31
	sub r2, #0x4c
	strb r1, [r4, r0]
	ldr r0, [r4, r2]
	bl sub_02021CAC
	ldr r0, _0223B59C ; =0x000032A0
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CC8
	ldr r0, _0223B59C ; =0x000032A0
	mov r1, #0xa
	ldr r0, [r4, r0]
	bl sub_02021D6C
	ldr r0, _0223B5A0 ; =0x0000331A
	mov r2, #0
	strb r2, [r4, r0]
	add r1, r0, #2
	strb r2, [r4, r1]
	add r0, r0, #1
	strb r2, [r4, r0]
	ldr r0, _0223B5A4 ; =0x000030D8
	str r2, [r4, r0]
	mov r0, #4
	str r0, [r5, #0]
	b _0223B4CA
_0223B412:
	sub r0, r0, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	add r0, r4, #0
	add r0, #0xb4
	ldr r1, [r0, #0]
	lsl r0, r5, #2
	add r1, #0x48
	ldr r0, [r1, r0]
	lsl r1, r0, #0x1f
	asr r1, r1, #0x1f
	beq _0223B4CA
	asr r0, r0, #1
	bl ov71_0223C40C
	add r2, r0, #0
	ldr r0, _0223B5A8 ; =0x000032F0
	add r1, r5, #0
	add r0, r4, r0
	bl ov71_0223D338
	b _0223B4CA
_0223B43E:
	cmp r6, #2
	ldr r1, _0223B598 ; =0x000032EC
	bne _0223B464
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0223B45C
	ldr r0, _0223B594 ; =0x000030D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223B45C
	mov r0, #0
	str r0, [r4, r1]
	mov r0, #2
	add r1, #0x31
	strb r0, [r4, r1]
_0223B45C:
	add r0, r4, #0
	bl ov71_0223BFBC
	b _0223B4CA
_0223B464:
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0223B47E
	add r0, r1, #0
	add r0, #0x31
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0223B47E
	mov r0, #0
	str r0, [r4, r1]
	mov r0, #2
	add r1, #0x31
	strb r0, [r4, r1]
_0223B47E:
	add r0, r4, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0223B496
	mov r0, #0x33
	lsl r0, r0, #8
	add r0, r4, r0
	bl ov71_0223C44C
_0223B496:
	cmp r6, #3
	bne _0223B4A6
	ldr r0, _0223B5A0 ; =0x0000331A
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #3
	str r0, [r5, #0]
	b _0223B4CA
_0223B4A6:
	cmp r6, #4
	bne _0223B4CA
	ldr r0, _0223B5AC ; =0x000005DC
	bl sub_02005748
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r1, #0x19
	str r1, [sp, #8]
	mov r1, #4
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #2
	str r0, [r5, #0]
_0223B4CA:
	add r1, r4, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	add r0, r4, #0
	ldrb r1, [r1, #4]
	lsl r1, r1, #0x1e
	lsr r1, r1, #0x1f
	bl ov71_0223C5A4
	b _0223B580
_0223B4DE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223B580
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0223B4EC:
	bl ov71_0223BC20
	cmp r0, #0
	beq _0223B580
	mov r0, #1
	str r0, [r5, #0]
	b _0223B580
_0223B4FA:
	ldr r1, _0223B5B0 ; =0x0000331D
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0223B55E
	bl ov71_0223BEF8
	cmp r0, #1
	bne _0223B52C
	ldr r0, _0223B594 ; =0x000030D4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B55E
	ldr r1, _0223B598 ; =0x000032EC
	mov r2, #1
	add r0, r1, #0
	str r2, [r4, r1]
	add r0, #0x31
	strb r2, [r4, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x30
	strb r2, [r4, r0]
	add r1, #0x2f
	strb r2, [r4, r1]
	b _0223B55E
_0223B52C:
	cmp r0, #2
	bne _0223B54C
	ldr r1, _0223B598 ; =0x000032EC
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0223B55E
	ldr r0, _0223B594 ; =0x000030D4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223B55E
	mov r0, #0
	str r0, [r4, r1]
	mov r0, #2
	add r1, #0x31
	strb r0, [r4, r1]
	b _0223B55E
_0223B54C:
	ldr r0, _0223B598 ; =0x000032EC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223B55E
	mov r1, #0
	str r1, [r4, r0]
	mov r1, #2
	add r0, #0x31
	strb r1, [r4, r0]
_0223B55E:
	ldr r0, _0223B5A4 ; =0x000030D8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223B570
	add r0, r4, #0
	bl ov71_0223BDF8
	ldr r1, _0223B5A4 ; =0x000030D8
	str r0, [r4, r1]
_0223B570:
	ldr r0, _0223B5A4 ; =0x000030D8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223B580
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	str r0, [r5, #0]
_0223B580:
	add r0, r4, #0
	bl ov71_0223C2F4
	ldr r0, _0223B5B4 ; =0x000030E4
	ldr r0, [r4, r0]
	bl sub_020219F8
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223B594: .word 0x000030D4
_0223B598: .word 0x000032EC
_0223B59C: .word 0x000032A0
_0223B5A0: .word 0x0000331A
_0223B5A4: .word 0x000030D8
_0223B5A8: .word 0x000032F0
_0223B5AC: .word 0x000005DC
_0223B5B0: .word 0x0000331D
_0223B5B4: .word 0x000030E4
	thumb_func_end ov71_0223B388

	thumb_func_start ov71_0223B5B8
ov71_0223B5B8: ; 0x0223B5B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl ov71_0223C288
	add r0, r4, #0
	bl ov71_0223B668
	ldr r0, _0223B614 ; =0x000030E4
	add r0, r4, r0
	bl ov71_0223D238
	ldr r0, _0223B618 ; =0x000030B8
	ldr r0, [r4, r0]
	bl sub_020181C4
	ldr r0, _0223B61C ; =0x000032F8
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #4
	bl ov71_0223C6D4
	ldr r0, [r4, #0]
	bl ov71_0223BBDC
	bl sub_0201E530
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x19
	bl sub_0201807C
	mov r0, #1
	mov r1, #0x7f
	bl sub_0200544C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223B614: .word 0x000030E4
_0223B618: .word 0x000030B8
_0223B61C: .word 0x000032F8
	thumb_func_end ov71_0223B5B8

	thumb_func_start ov71_0223B620
ov71_0223B620: ; 0x0223B620
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #4
	mov r1, #0x19
	bl sub_02023790
	ldr r1, _0223B660 ; =0x00003308
	str r0, [r5, r1]
	mov r0, #5
	mov r1, #0x19
	bl sub_02023790
	ldr r1, _0223B664 ; =0x0000330C
	mov r2, #0x9a
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x19
	bl sub_0200B144
	ldr r2, _0223B664 ; =0x0000330C
	add r4, r0, #0
	ldr r2, [r5, r2]
	mov r1, #0xb
	bl sub_0200B1B8
	add r0, r4, #0
	bl sub_0200B190
	pop {r3, r4, r5, pc}
	nop
_0223B660: .word 0x00003308
_0223B664: .word 0x0000330C
	thumb_func_end ov71_0223B620

	thumb_func_start ov71_0223B668
ov71_0223B668: ; 0x0223B668
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223B680 ; =0x00003308
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223B684 ; =0x0000330C
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	nop
_0223B680: .word 0x00003308
_0223B684: .word 0x0000330C
	thumb_func_end ov71_0223B668

	thumb_func_start ov71_0223B688
ov71_0223B688: ; 0x0223B688
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223B6A4 ; =0x0223D57C
	add r3, sp, #0
	mov r2, #5
_0223B692:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223B692
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223B6A4: .word 0x0223D57C
	thumb_func_end ov71_0223B688

	thumb_func_start ov71_0223B6A8
ov71_0223B6A8: ; 0x0223B6A8
	push {r3, r4, r5, lr}
	cmp r1, #0
	beq _0223B72A
	cmp r0, #5
	bhi _0223B738
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B6BE: ; jump table
	.short _0223B6CA - _0223B6BE - 2 ; case 0
	.short _0223B6DA - _0223B6BE - 2 ; case 1
	.short _0223B6EA - _0223B6BE - 2 ; case 2
	.short _0223B6FA - _0223B6BE - 2 ; case 3
	.short _0223B70A - _0223B6BE - 2 ; case 4
	.short _0223B71A - _0223B6BE - 2 ; case 5
_0223B6CA:
	add r0, r2, #0
	mov r1, #0
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B738
_0223B6DA:
	add r0, r2, #0
	mov r1, #1
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B738
_0223B6EA:
	add r0, r2, #0
	mov r1, #2
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B738
_0223B6FA:
	add r0, r2, #0
	mov r1, #3
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B738
_0223B70A:
	add r0, r2, #0
	mov r1, #4
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B738
_0223B71A:
	add r0, r2, #0
	mov r1, #5
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B738
_0223B72A:
	add r0, r2, #0
	mov r1, #6
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
_0223B738:
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0xc]
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0x20
	ldr r5, [r0, #0xc]
	mov r2, #0x60
	add r0, r5, #0
	add r0, #0x20
	bl sub_020C0108
	mov r1, #0x1e
	lsl r1, r1, #4
	add r0, r5, r1
	mov r2, #0x20
	bl sub_020C0108
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov71_0223B6A8

	thumb_func_start ov71_0223B768
ov71_0223B768: ; 0x0223B768
	push {r3, r4, lr}
	sub sp, #4
	cmp r0, #0xc
	bhi _0223B7E6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223B77C: ; jump table
	.short _0223B7E6 - _0223B77C - 2 ; case 0
	.short _0223B7E6 - _0223B77C - 2 ; case 1
	.short _0223B7E6 - _0223B77C - 2 ; case 2
	.short _0223B7E6 - _0223B77C - 2 ; case 3
	.short _0223B7E6 - _0223B77C - 2 ; case 4
	.short _0223B7E6 - _0223B77C - 2 ; case 5
	.short _0223B7E6 - _0223B77C - 2 ; case 6
	.short _0223B7C6 - _0223B77C - 2 ; case 7
	.short _0223B7D6 - _0223B77C - 2 ; case 8
	.short _0223B7E6 - _0223B77C - 2 ; case 9
	.short _0223B796 - _0223B77C - 2 ; case 10
	.short _0223B7A6 - _0223B77C - 2 ; case 11
	.short _0223B7B6 - _0223B77C - 2 ; case 12
_0223B796:
	add r0, r1, #0
	mov r1, #7
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B7F4
_0223B7A6:
	add r0, r1, #0
	mov r1, #8
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B7F4
_0223B7B6:
	add r0, r1, #0
	mov r1, #0xa
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B7F4
_0223B7C6:
	add r0, r1, #0
	mov r1, #0xb
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B7F4
_0223B7D6:
	add r0, r1, #0
	mov r1, #0xc
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
	b _0223B7F4
_0223B7E6:
	add r0, r1, #0
	mov r1, #9
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r4, r0, #0
_0223B7F4:
	ldr r0, [sp]
	mov r1, #0x20
	ldr r0, [r0, #0xc]
	bl sub_020C2C54
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl sub_020C00B4
	ldr r0, [sp]
	mov r1, #0
	ldr r0, [r0, #0xc]
	mov r2, #0x20
	bl sub_020C0108
	add r0, r4, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov71_0223B768

	thumb_func_start ov71_0223B820
ov71_0223B820: ; 0x0223B820
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x30
	add r2, sp, #0
	mov r3, #0x19
	bl sub_020071EC
	add r6, r0, #0
	ldr r0, [sp]
	lsl r4, r4, #5
	ldr r5, [r0, #0xc]
	mov r1, #0x20
	add r0, r5, r4
	bl sub_020C2C54
	add r0, r5, r4
	mov r1, #0x80
	mov r2, #0x20
	bl sub_020C0108
	add r0, r6, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov71_0223B820

	thumb_func_start ov71_0223B858
ov71_0223B858: ; 0x0223B858
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r2, _0223B948 ; =0x04000304
	add r4, r0, #0
	ldrh r1, [r2]
	ldr r0, _0223B94C ; =0xFFFF7FFF
	ldr r5, _0223B950 ; =0x0223D4E0
	and r0, r1
	strh r0, [r2]
	add r3, sp, #0x8c
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223B954 ; =0x0223D4F0
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #7
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #2
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	ldr r5, _0223B958 ; =0x0223D50C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	ldr r5, _0223B95C ; =0x0223D544
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #1
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	ldr r5, _0223B960 ; =0x0223D560
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _0223B964 ; =0x0223D528
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #1
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	add sp, #0x9c
	pop {r4, r5, pc}
	; .align 2, 0
_0223B948: .word 0x04000304
_0223B94C: .word 0xFFFF7FFF
_0223B950: .word 0x0223D4E0
_0223B954: .word 0x0223D4F0
_0223B958: .word 0x0223D50C
_0223B95C: .word 0x0223D544
_0223B960: .word 0x0223D560
_0223B964: .word 0x0223D528
	thumb_func_end ov71_0223B858

	thumb_func_start ov71_0223B968
ov71_0223B968: ; 0x0223B968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0x14
	mov r3, #0x19
	bl sub_020071EC
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	mov r1, #2
	ldr r0, [r0, #0xc]
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [sp, #0x14]
	mov r2, #2
	ldr r0, [r0, #0xc]
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020C0108
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	add r0, #0xb4
	ldr r1, [r0, #0]
	add r2, r4, #0
	ldrb r0, [r1, #3]
	ldrb r1, [r1, #4]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1f
	bl ov71_0223B6A8
	add r0, r4, #0
	mov r1, #0xd
	add r2, sp, #0x10
	mov r3, #0x19
	bl sub_020071EC
	add r6, r0, #0
	ldr r0, [sp, #0x10]
	mov r1, #2
	ldr r0, [r0, #0xc]
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [sp, #0x10]
	mov r2, #2
	ldr r0, [r0, #0xc]
	mov r1, #0
	lsl r2, r2, #8
	bl sub_020C00B4
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r1, r4, #0
	ldrb r0, [r0]
	bl ov71_0223B768
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	ldrb r1, [r0, #5]
	cmp r1, #0xff
	bne _0223BA9A
	ldrb r0, [r0]
	cmp r0, #0xa
	beq _0223BA04
	cmp r0, #0xb
	bne _0223BA0C
_0223BA04:
	mov r1, #0x20
	mov r7, #0x2a
	mov r6, #0x1a
	b _0223BA14
_0223BA0C:
	mov r7, #0x28
	add r6, r7, #0
	mov r1, #0x1f
	sub r6, #0x29
_0223BA14:
	mov r2, #0
	add r0, r4, #0
	mov r3, #0x19
	str r2, [sp]
	bl sub_0200723C
	ldr r1, _0223BBCC ; =0x000030B8
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0223BA2E
	bl sub_02022974
_0223BA2E:
	ldr r1, _0223BBCC ; =0x000030B8
	ldr r0, [r5, r1]
	add r1, r1, #4
	add r1, r5, r1
	bl sub_020A7164
	cmp r0, #0
	bne _0223BA42
	bl sub_02022974
_0223BA42:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0223BA5E
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x19
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #4
	mov r3, #0x80
	bl sub_02007130
_0223BA5E:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	ldr r3, _0223BBD0 ; =0x000032FC
	ldrb r0, [r0, #4]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0223BA84
	mov r0, #0x19
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0
	add r3, r5, r3
	bl sub_020071D0
	ldr r1, _0223BBD4 ; =0x000032F8
	str r0, [r5, r1]
	b _0223BAF2
_0223BA84:
	mov r0, #0x19
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #1
	mov r2, #0
	add r3, r5, r3
	bl sub_020071D0
	ldr r1, _0223BBD4 ; =0x000032F8
	str r0, [r5, r1]
	b _0223BAF2
_0223BA9A:
	lsl r3, r1, #2
	ldr r1, _0223BBD8 ; =0x0223D604
	mov r2, #0
	ldr r1, [r1, r3]
	add r0, r4, #0
	mov r3, #0x19
	str r2, [sp]
	bl sub_0200723C
	ldr r1, _0223BBCC ; =0x000030B8
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0223BABA
	bl sub_02022974
_0223BABA:
	ldr r1, _0223BBCC ; =0x000030B8
	ldr r0, [r5, r1]
	add r1, r1, #4
	add r1, r5, r1
	bl sub_020A7164
	cmp r0, #0
	bne _0223BACE
	bl sub_02022974
_0223BACE:
	ldr r3, _0223BBD0 ; =0x000032FC
	mov r0, #0x19
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #0
	add r3, r5, r3
	bl sub_020071D0
	ldr r1, _0223BBD4 ; =0x000032F8
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r1, r4, #0
	ldrb r0, [r0, #5]
	bl ov71_0223B820
_0223BAF2:
	add r0, r5, #0
	bl ov71_0223C390
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x1b
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x23
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x1c
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x25
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x1d
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x26
	mov r3, #2
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x1e
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #0x27
	mov r3, #3
	bl sub_0200710C
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	add r5, #0xb8
	add r0, #0x68
	add r1, r5, #0
	bl ov71_0223C4DC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BBCC: .word 0x000030B8
_0223BBD0: .word 0x000032FC
_0223BBD4: .word 0x000032F8
_0223BBD8: .word 0x0223D604
	thumb_func_end ov71_0223B968

	thumb_func_start ov71_0223BBDC
ov71_0223BBDC: ; 0x0223BBDC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1f
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x13
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov71_0223BBDC

	thumb_func_start ov71_0223BC20
ov71_0223BC20: ; 0x0223BC20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r2, _0223BDDC ; =0x0000331A
	add r4, r0, #0
	ldrb r0, [r4, r2]
	mov r5, #0
	cmp r0, #3
	bls _0223BC32
	b _0223BD92
_0223BC32:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223BC3E: ; jump table
	.short _0223BC46 - _0223BC3E - 2 ; case 0
	.short _0223BC74 - _0223BC3E - 2 ; case 1
	.short _0223BCB0 - _0223BC3E - 2 ; case 2
	.short _0223BD4C - _0223BC3E - 2 ; case 3
_0223BC46:
	mov r0, #8
	sub r2, #0x36
	str r0, [r4, r2]
	ldr r1, _0223BDE0 ; =0x000030C8
	lsl r2, r0, #9
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r1]
	add r0, #0x80
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r2, [r4, r0]
	add r2, #0x80
	str r2, [r4, r0]
	ldr r0, _0223BDE4 ; =0x00000696
	bl sub_02005748
	ldr r0, _0223BDDC ; =0x0000331A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223BD92
_0223BC74:
	add r0, r2, #0
	sub r0, #0x36
	ldr r3, [r4, r0]
	ldr r1, _0223BDE0 ; =0x000030C8
	mov r0, #0xc
	mov r7, #2
	sub r0, r0, r3
	add r3, r7, #0
	ldr r6, [r4, r1]
	lsl r3, r0
	sub r0, r6, r3
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bgt _0223BC9C
	mov r0, #0x24
	str r0, [r4, r1]
	ldrb r0, [r4, r2]
	add r0, r0, #1
	strb r0, [r4, r2]
_0223BC9C:
	ldr r0, _0223BDE8 ; =0x000032E4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #1
	bgt _0223BD92
	mov r1, #1
	str r1, [r4, r0]
	b _0223BD92
_0223BCB0:
	mov r0, #0xc3
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _0223BD06
	mov r1, #1
	str r1, [r4, r0]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	mov r0, #0x33
	mov r1, #0x24
	mov r3, #6
	bl sub_02006E60
	add r0, r4, #4
	add r1, r5, #0
	mov r2, #6
	bl ov71_0223CD44
	add r0, r4, #0
	bl ov71_0223C3E8
	ldr r0, [r4, #0]
	mov r1, #7
	bl sub_02019EBC
	add r1, r4, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	add r0, r4, #4
	bl ov71_0223CA28
	add r2, r4, #0
	ldr r0, [r4, #0]
	mov r1, #7
	add r2, #0xb8
	bl ov71_0223C530
	b _0223BD42
_0223BD06:
	str r5, [r4, r0]
	str r5, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	mov r0, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	mov r0, #0x33
	mov r1, #0x23
	mov r3, #6
	bl sub_02006E60
	add r0, r4, #4
	mov r1, #7
	mov r2, #0xa
	bl ov71_0223CD44
	ldr r0, [r4, #0]
	mov r1, #7
	bl sub_02019EBC
	add r0, r4, #0
	bl ov71_0223C390
	add r1, r4, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	add r0, r4, #4
	bl ov71_0223C6F0
_0223BD42:
	ldr r0, _0223BDDC ; =0x0000331A
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0223BD92
_0223BD4C:
	add r0, r2, #0
	sub r0, #0x36
	ldr r0, [r4, r0]
	add r1, r0, #1
	add r0, r2, #0
	sub r0, #0x36
	str r1, [r4, r0]
	add r0, r2, #0
	sub r0, #0x36
	ldr r0, [r4, r0]
	cmp r0, #8
	ble _0223BD6A
	mov r0, #8
	sub r2, #0x36
	str r0, [r4, r2]
_0223BD6A:
	ldr r2, _0223BDE8 ; =0x000032E4
	ldr r3, _0223BDE0 ; =0x000030C8
	ldr r6, [r4, r2]
	mov r2, #0xc
	mov r0, #2
	sub r2, r2, r6
	add r6, r0, #0
	ldr r1, [r4, r3]
	lsl r6, r2
	add r1, r1, r6
	str r1, [r4, r3]
	ldr r2, [r4, r3]
	lsl r1, r0, #0xb
	cmp r2, r1
	blt _0223BD92
	str r1, [r4, r3]
	str r1, [r4, r3]
	add r0, r3, #4
	str r1, [r4, r0]
	mov r5, #1
_0223BD92:
	ldr r0, _0223BDE0 ; =0x000030C8
	ldr r0, [r4, r0]
	bl sub_020BCFE0
	add r6, r0, #0
	ldr r0, _0223BDEC ; =0x000030CC
	ldr r0, [r4, r0]
	bl sub_020BCFE0
	mov r1, #0
	str r6, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	bl sub_020C3E14
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223BDF0 ; =0x04001020
	add r1, sp, #0x10
	mov r2, #0x80
	mov r3, #0x60
	bl sub_020BF4AC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223BDF4 ; =0x04001030
	add r1, sp, #0x10
	mov r2, #0x80
	mov r3, #0x60
	bl sub_020BF4AC
	add r0, r5, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223BDDC: .word 0x0000331A
_0223BDE0: .word 0x000030C8
_0223BDE4: .word 0x00000696
_0223BDE8: .word 0x000032E4
_0223BDEC: .word 0x000030CC
_0223BDF0: .word 0x04001020
_0223BDF4: .word 0x04001030
	thumb_func_end ov71_0223BC20

	thumb_func_start ov71_0223BDF8
ov71_0223BDF8: ; 0x0223BDF8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, _0223BEE4 ; =0x0000331A
	ldrb r1, [r4, r0]
	cmp r1, #3
	bhi _0223BEAE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223BE12: ; jump table
	.short _0223BE1A - _0223BE12 - 2 ; case 0
	.short _0223BE42 - _0223BE12 - 2 ; case 1
	.short _0223BE70 - _0223BE12 - 2 ; case 2
	.short _0223BEA8 - _0223BE12 - 2 ; case 3
_0223BE1A:
	mov r2, #0
	sub r1, r0, #1
	strb r2, [r4, r1]
	sub r1, r0, #2
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0223BE34
	mov r2, #1
	ldr r1, _0223BEE8 ; =0x000030D0
	lsl r2, r2, #0xc
	str r2, [r4, r1]
	mov r1, #1
	b _0223BE36
_0223BE34:
	mov r1, #2
_0223BE36:
	strb r1, [r4, r0]
	ldr r0, _0223BEEC ; =0x00003318
	ldrb r0, [r4, r0]
	bl ov71_0223C594
	b _0223BEAE
_0223BE42:
	sub r1, r0, #1
	ldrb r2, [r4, r1]
	add r1, r2, #0
	add r3, r1, #1
	sub r1, r0, #1
	strb r3, [r4, r1]
	ldr r3, _0223BEE8 ; =0x000030D0
	lsl r5, r2, #2
	ldr r2, _0223BEF0 ; =0x0223D5CC
	ldr r1, [r4, r3]
	ldr r2, [r2, r5]
	sub r1, r1, r2
	str r1, [r4, r3]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0xe
	bne _0223BEAE
	mov r2, #1
	sub r1, r0, #2
	strb r2, [r4, r1]
	mov r1, #3
	strb r1, [r4, r0]
	b _0223BEAE
_0223BE70:
	sub r1, r0, #1
	ldrb r2, [r4, r1]
	ldr r5, _0223BEE8 ; =0x000030D0
	add r1, r2, #0
	add r3, r1, #1
	sub r1, r0, #1
	strb r3, [r4, r1]
	mov r3, #0xd
	sub r2, r3, r2
	lsl r3, r2, #2
	ldr r2, _0223BEF0 ; =0x0223D5CC
	ldr r1, [r4, r5]
	ldr r2, [r2, r3]
	add r1, r1, r2
	str r1, [r4, r5]
	sub r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0xe
	bne _0223BEAE
	mov r2, #0
	sub r1, r0, #2
	strb r2, [r4, r1]
	mov r1, #1
	lsl r1, r1, #0xc
	str r1, [r4, r5]
	mov r1, #3
	strb r1, [r4, r0]
	b _0223BEAE
_0223BEA8:
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223BEAE:
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_020BCFE0
	add r5, r0, #0
	ldr r0, _0223BEE8 ; =0x000030D0
	ldr r0, [r4, r0]
	bl sub_020BCFE0
	mov r1, #0
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl sub_020C3E14
	mov r3, #0
	str r3, [sp]
	ldr r0, _0223BEF4 ; =0x04000030
	add r1, sp, #8
	mov r2, #0x80
	str r3, [sp, #4]
	bl sub_020BF4AC
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223BEE4: .word 0x0000331A
_0223BEE8: .word 0x000030D0
_0223BEEC: .word 0x00003318
_0223BEF0: .word 0x0223D5CC
_0223BEF4: .word 0x04000030
	thumb_func_end ov71_0223BDF8

	thumb_func_start ov71_0223BEF8
ov71_0223BEF8: ; 0x0223BEF8
	push {r4, r5, r6, lr}
	mov r6, #0
	add r5, r0, #0
	ldr r0, _0223BFA8 ; =0x000030D4
	sub r1, r6, #1
	str r1, [r5, r0]
	ldr r1, _0223BFAC ; =0x021BF6BC
	add r4, r6, #0
	ldrh r1, [r1, #0x20]
	cmp r1, #0
	beq _0223BF14
	mov r1, #1
	sub r0, #0x10
	str r1, [r5, r0]
_0223BF14:
	add r1, r5, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	ldr r2, _0223BFB0 ; =0x0223D4D0
	ldrb r1, [r1, #4]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	lsl r3, r1, #3
	ldr r1, _0223BFB4 ; =0x00003318
	add r2, r2, r3
	ldrb r1, [r5, r1]
	lsl r1, r1, #2
	ldr r1, [r1, r2]
	bl ov71_0223C60C
	ldr r1, _0223BFA8 ; =0x000030D4
	str r0, [r5, r1]
	mov r0, #0
	ldr r2, [r5, r1]
	mvn r0, r0
	cmp r2, r0
	beq _0223BF48
	mov r6, #1
	add r4, r6, #0
	b _0223BF88
_0223BF48:
	ldr r0, _0223BFAC ; =0x021BF6BC
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	beq _0223BF82
	add r1, r5, #0
	add r1, #0xb4
	ldr r1, [r1, #0]
	ldr r2, _0223BFB0 ; =0x0223D4D0
	ldrb r1, [r1, #4]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1f
	lsl r3, r1, #3
	ldr r1, _0223BFB4 ; =0x00003318
	add r2, r2, r3
	ldrb r1, [r5, r1]
	lsl r1, r1, #2
	ldr r1, [r1, r2]
	bl ov71_0223C654
	ldr r1, _0223BFA8 ; =0x000030D4
	str r0, [r5, r1]
	sub r1, #0x10
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _0223BF88
	mov r6, #1
	mov r4, #2
	b _0223BF88
_0223BF82:
	mov r0, #0
	sub r1, #0x10
	str r0, [r5, r1]
_0223BF88:
	cmp r6, #0
	bne _0223BFA2
	ldr r0, _0223BFB8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223BF9A
	mov r4, #3
	b _0223BFA2
_0223BF9A:
	mov r0, #2
	tst r0, r1
	beq _0223BFA2
	mov r4, #4
_0223BFA2:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0223BFA8: .word 0x000030D4
_0223BFAC: .word 0x021BF6BC
_0223BFB0: .word 0x0223D4D0
_0223BFB4: .word 0x00003318
_0223BFB8: .word 0x021BF67C
	thumb_func_end ov71_0223BEF8

	thumb_func_start ov71_0223BFBC
ov71_0223BFBC: ; 0x0223BFBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0223C0BC ; =0x021BF6BC
	ldr r6, _0223C0C0 ; =0x0000FFFF
	ldrh r3, [r0, #0x1c]
	mov r4, #0
	cmp r3, r6
	beq _0223C0AC
	ldrh r0, [r0, #0x1e]
	cmp r0, r6
	beq _0223C0AC
	ldr r1, _0223C0C4 ; =0x000030DC
	ldr r2, [r5, r1]
	cmp r2, r6
	beq _0223C0AC
	add r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, r6
	beq _0223C0AC
	sub r1, #8
	ldr r1, [r5, r1]
	sub r0, r4, #1
	cmp r1, r0
	beq _0223C0AC
	cmp r1, #0
	beq _0223C0AC
	add r0, r5, #0
	add r0, #0xb4
	sub r1, r1, #1
	ldr r0, [r0, #0]
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r0, [r0, #0x48]
	lsl r0, r0, #0x1f
	asr r0, r0, #0x1f
	beq _0223C0AC
	cmp r2, r3
	ble _0223C00E
	sub r2, r2, r3
	sub r1, r4, #1
	b _0223C012
_0223C00E:
	sub r2, r3, r2
	mov r1, #1
_0223C012:
	ldr r0, _0223C0C8 ; =0x00003302
	cmp r2, #3
	strb r1, [r5, r0]
	blt _0223C058
	cmp r2, #0x28
	bgt _0223C058
	ldr r0, _0223C0BC ; =0x021BF6BC
	ldrh r1, [r0, #0x1e]
	ldr r0, _0223C0CC ; =0x000030E0
	ldr r0, [r5, r0]
	cmp r0, r1
	ble _0223C032
	sub r2, r0, r1
	mov r1, #0
	mvn r1, r1
	b _0223C036
_0223C032:
	sub r2, r1, r0
	mov r1, #1
_0223C036:
	ldr r0, _0223C0D0 ; =0x00003303
	cmp r2, #0x28
	strb r1, [r5, r0]
	bgt _0223C04C
	mov r0, #0x33
	lsl r0, r0, #8
	add r0, r5, r0
	mov r4, #1
	bl ov71_0223C45C
	b _0223C098
_0223C04C:
	mov r0, #0x33
	lsl r0, r0, #8
	add r0, r5, r0
	bl ov71_0223C444
	b _0223C098
_0223C058:
	cmp r2, #0x28
	bgt _0223C098
	ldr r0, _0223C0BC ; =0x021BF6BC
	ldrh r1, [r0, #0x1e]
	ldr r0, _0223C0CC ; =0x000030E0
	ldr r0, [r5, r0]
	cmp r0, r1
	ble _0223C070
	sub r2, r0, r1
	mov r1, #0
	mvn r1, r1
	b _0223C074
_0223C070:
	sub r2, r1, r0
	mov r1, #1
_0223C074:
	ldr r0, _0223C0D0 ; =0x00003303
	cmp r2, #3
	strb r1, [r5, r0]
	blt _0223C08E
	cmp r2, #0x28
	bgt _0223C08E
	mov r0, #0x33
	lsl r0, r0, #8
	add r0, r5, r0
	mov r4, #1
	bl ov71_0223C45C
	b _0223C098
_0223C08E:
	mov r0, #0x33
	lsl r0, r0, #8
	add r0, r5, r0
	bl ov71_0223C444
_0223C098:
	cmp r4, #0
	beq _0223C0AC
	ldr r1, _0223C0D4 ; =0x000030D4
	add r0, r5, #0
	ldr r1, [r5, r1]
	sub r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov71_0223C1AC
_0223C0AC:
	ldr r1, _0223C0BC ; =0x021BF6BC
	ldr r0, _0223C0C4 ; =0x000030DC
	ldrh r2, [r1, #0x1c]
	str r2, [r5, r0]
	ldrh r1, [r1, #0x1e]
	add r0, r0, #4
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223C0BC: .word 0x021BF6BC
_0223C0C0: .word 0x0000FFFF
_0223C0C4: .word 0x000030DC
_0223C0C8: .word 0x00003302
_0223C0CC: .word 0x000030E0
_0223C0D0: .word 0x00003303
_0223C0D4: .word 0x000030D4
	thumb_func_end ov71_0223BFBC

	thumb_func_start ov71_0223C0D8
ov71_0223C0D8: ; 0x0223C0D8
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02019FE4
	add r7, r0, #0
	lsl r0, r4, #2
	add r0, #0x80
	lsl r0, r0, #0x10
	mov r2, #0
	lsr r3, r0, #0x10
_0223C0F2:
	lsl r0, r2, #5
	add r4, r3, r0
	add r0, r2, #0
	add r0, #0x13
	lsl r0, r0, #6
	mov r1, #0
	add r5, r7, r0
_0223C100:
	lsl r6, r1, #1
	add r0, r1, r4
	add r6, r5, r6
	strh r0, [r6, #0x1c]
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	cmp r1, #4
	blo _0223C100
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _0223C0F2
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0]
	bl sub_02019448
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov71_0223C0D8

	thumb_func_start ov71_0223C128
ov71_0223C128: ; 0x0223C128
	push {r3, r4, r5, r6, r7, lr}
	lsr r5, r1, #0x1f
	lsl r4, r1, #0x1e
	sub r4, r4, r5
	mov r2, #0x1e
	ror r4, r2
	add r2, r5, r4
	lsl r2, r2, #0x18
	lsr r4, r2, #0x18
	lsl r1, r1, #0x16
	mov r2, #7
	add r5, r4, #0
	lsr r1, r1, #0x18
	mul r5, r2
	mov r6, #3
	add r4, r6, r5
	lsl r4, r4, #0x18
	mov r3, #4
	mul r2, r1
	add r1, r3, r2
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	ldr r0, [r0, #0]
	add r1, r6, #0
	lsr r4, r4, #0x18
	bl sub_02019FE4
	mov r2, #0
	add r3, r0, r4
	add r0, r2, #0
_0223C164:
	add r6, r2, r5
	lsl r4, r2, #4
	lsl r6, r6, #5
	add r1, r0, #0
	add r4, #0xba
	add r6, r3, r6
_0223C170:
	add r7, r1, r4
	strb r7, [r6, r1]
	add r1, r1, #1
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, #5
	blo _0223C170
	add r1, r2, #1
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	cmp r2, #5
	blo _0223C164
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov71_0223C128

	thumb_func_start ov71_0223C18C
ov71_0223C18C: ; 0x0223C18C
	push {r3, lr}
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r3, _0223C1A4 ; =0x027E0000
	ldr r1, _0223C1A8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	; .align 2, 0
_0223C1A4: .word 0x027E0000
_0223C1A8: .word 0x00003FF8
	thumb_func_end ov71_0223C18C

	thumb_func_start ov71_0223C1AC
ov71_0223C1AC: ; 0x0223C1AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0xb4
	add r4, r1, #0
	ldr r0, [r0, #0]
	lsl r6, r4, #2
	add r0, r0, r6
	ldr r0, [r0, #0x48]
	asr r0, r0, #1
	add r1, r0, #1
	str r1, [sp]
	cmp r1, #0xc8
	bge _0223C278
	bl ov71_0223C40C
	add r7, r0, #0
	ldr r0, _0223C27C ; =0x00003310
	ldr r2, _0223C280 ; =0x0223D4B0
	add r1, r5, r0
	ldrb r0, [r1, r4]
	ldrb r2, [r2, r7]
	add r0, r0, #1
	strb r0, [r1, r4]
	ldrb r0, [r1, r4]
	cmp r0, r2
	blo _0223C278
	mov r0, #0
	strb r0, [r1, r4]
	add r0, r5, #0
	add r0, #0xb4
	ldr r2, [r0, #0]
	mov r1, #1
	add r2, #0x48
	ldr r0, [r2, r6]
	and r1, r0
	asr r0, r0, #1
	add r0, r0, #1
	lsl r0, r0, #1
	orr r0, r1
	str r0, [r2, r6]
	ldr r0, [sp]
	bl ov71_0223C40C
	add r6, r0, #0
	cmp r7, r6
	bls _0223C20C
	bl sub_02022974
_0223C20C:
	cmp r7, r6
	bhs _0223C278
	cmp r6, #4
	bhi _0223C236
	cmp r6, #4
	ldr r0, _0223C284 ; =0x000030E4
	bne _0223C226
	add r0, r5, r0
	add r1, r4, #0
	mov r2, #0
	bl ov71_0223D298
	b _0223C236
_0223C226:
	mov r2, #3
	sub r2, r2, r6
	lsl r2, r2, #0x18
	add r0, r5, r0
	add r1, r4, #0
	lsr r2, r2, #0x18
	bl ov71_0223D298
_0223C236:
	cmp r6, #3
	bne _0223C24E
	add r4, #8
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xc9
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_0223C24E:
	cmp r6, #4
	bne _0223C278
	add r0, r4, #0
	add r0, #8
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0xc9
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	add r4, #0x10
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0xc9
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
_0223C278:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C27C: .word 0x00003310
_0223C280: .word 0x0223D4B0
_0223C284: .word 0x000030E4
	thumb_func_end ov71_0223C1AC

	thumb_func_start ov71_0223C288
ov71_0223C288: ; 0x0223C288
	push {r4, lr}
	sub sp, #0x18
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_020BCFE0
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	bl sub_020BCFE0
	mov r1, #0
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl sub_020C3E14
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C2E8 ; =0x04001020
	add r1, sp, #8
	mov r2, #0x80
	mov r3, #0x60
	bl sub_020BF4AC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _0223C2EC ; =0x04001030
	add r1, sp, #8
	mov r2, #0x80
	mov r3, #0x60
	bl sub_020BF4AC
	bl sub_020C3E14
	mov r3, #0
	str r3, [sp]
	ldr r0, _0223C2F0 ; =0x04000030
	add r1, sp, #8
	mov r2, #0x80
	str r3, [sp, #4]
	bl sub_020BF4AC
	add sp, #0x18
	pop {r4, pc}
	; .align 2, 0
_0223C2E8: .word 0x04001020
_0223C2EC: .word 0x04001030
_0223C2F0: .word 0x04000030
	thumb_func_end ov71_0223C288

	thumb_func_start ov71_0223C2F4
ov71_0223C2F4: ; 0x0223C2F4
	push {r4, lr}
	ldr r1, _0223C32C ; =0x0000331D
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _0223C314
	ldr r1, _0223C330 ; =0x0223D4B8
	ldr r1, [r1, #0x10]
	bl ov71_0223C334
	cmp r0, #0
	beq _0223C32A
	ldr r0, _0223C32C ; =0x0000331D
	mov r1, #0
	strb r1, [r4, r0]
	pop {r4, pc}
_0223C314:
	cmp r1, #2
	bne _0223C32A
	ldr r1, _0223C330 ; =0x0223D4B8
	ldr r1, [r1, #0x14]
	bl ov71_0223C334
	cmp r0, #0
	beq _0223C32A
	ldr r0, _0223C32C ; =0x0000331D
	mov r1, #0
	strb r1, [r4, r0]
_0223C32A:
	pop {r4, pc}
	; .align 2, 0
_0223C32C: .word 0x0000331D
_0223C330: .word 0x0223D4B8
	thumb_func_end ov71_0223C2F4

	thumb_func_start ov71_0223C334
ov71_0223C334: ; 0x0223C334
	push {r4, lr}
	ldr r2, _0223C388 ; =0x0000331C
	add r4, r0, #0
	ldrb r0, [r4, r2]
	lsl r0, r0, #1
	ldrb r3, [r1, r0]
	cmp r3, #0
	bne _0223C350
	mov r1, #0
	sub r0, r2, #1
	strb r1, [r4, r0]
	strb r1, [r4, r2]
	mov r0, #1
	pop {r4, pc}
_0223C350:
	sub r0, r2, #1
	ldrb r0, [r4, r0]
	cmp r0, r3
	blo _0223C364
	mov r3, #0
	sub r0, r2, #1
	strb r3, [r4, r0]
	ldrb r0, [r4, r2]
	add r0, r0, #1
	strb r0, [r4, r2]
_0223C364:
	ldr r0, _0223C388 ; =0x0000331C
	ldrb r2, [r4, r0]
	sub r0, r0, #1
	ldrb r0, [r4, r0]
	lsl r2, r2, #1
	add r2, r2, #1
	ldrb r1, [r1, r2]
	cmp r0, #0
	bne _0223C37C
	add r0, r4, #0
	bl ov71_0223C0D8
_0223C37C:
	ldr r0, _0223C38C ; =0x0000331B
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0223C388: .word 0x0000331C
_0223C38C: .word 0x0000331B
	thumb_func_end ov71_0223C334

	thumb_func_start ov71_0223C390
ov71_0223C390: ; 0x0223C390
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223C3E0 ; =0x000032FC
	mov r1, #7
	ldr r0, [r5, r0]
	ldr r4, [r0, #8]
	ldr r0, _0223C3E4 ; =0x000030BC
	ldr r3, [r5, r0]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0]
	ldr r3, [r3, #0x10]
	bl sub_0201958C
	ldr r0, [r5, #0]
	mov r1, #7
	bl sub_02019FE4
	cmp r0, #0
	beq _0223C3CA
	ldr r2, _0223C3E0 ; =0x000032FC
	ldr r0, [r5, #0]
	ldr r2, [r5, r2]
	mov r1, #7
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019574
_0223C3CA:
	mov r0, #0
	str r0, [sp]
	ldr r2, _0223C3E0 ; =0x000032FC
	ldr r0, [r5, #0]
	ldr r2, [r5, r2]
	mov r1, #7
	add r2, #0xc
	add r3, r4, #0
	bl sub_02019460
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C3E0: .word 0x000032FC
_0223C3E4: .word 0x000030BC
	thumb_func_end ov71_0223C390

	thumb_func_start ov71_0223C3E8
ov71_0223C3E8: ; 0x0223C3E8
	push {r3, lr}
	sub sp, #0x10
	mov r1, #6
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #9
	str r1, [sp, #8]
	mov r1, #0x10
	str r1, [sp, #0xc]
	ldr r0, [r0, #0]
	mov r1, #7
	mov r2, #0
	mov r3, #0x14
	bl sub_02019CB8
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov71_0223C3E8

	thumb_func_start ov71_0223C40C
ov71_0223C40C: ; 0x0223C40C
	push {r3, lr}
	cmp r0, #0
	blt _0223C41A
	cmp r0, #0x64
	bge _0223C41A
	mov r0, #0
	pop {r3, pc}
_0223C41A:
	cmp r0, #0x8c
	bge _0223C422
	mov r0, #1
	pop {r3, pc}
_0223C422:
	cmp r0, #0xaa
	bge _0223C42A
	mov r0, #2
	pop {r3, pc}
_0223C42A:
	cmp r0, #0xbe
	bge _0223C432
	mov r0, #3
	pop {r3, pc}
_0223C432:
	cmp r0, #0xc8
	bge _0223C43A
	mov r0, #4
	pop {r3, pc}
_0223C43A:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov71_0223C40C

	thumb_func_start ov71_0223C444
ov71_0223C444: ; 0x0223C444
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov71_0223C444

	thumb_func_start ov71_0223C44C
ov71_0223C44C: ; 0x0223C44C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov71_0223C44C

	thumb_func_start ov71_0223C45C
ov71_0223C45C: ; 0x0223C45C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0223C4D4 ; =0x0223D4B8
	ldr r1, [r0, #0]
	ldr r0, [r0, #4]
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0223C482
	mov r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0223C482
	ldr r0, _0223C4D8 ; =0x00000692
	bl sub_02005748
_0223C482:
	mov r0, #0
	ldrsb r1, [r4, r0]
	mov r0, #2
	ldrsb r0, [r4, r0]
	mul r0, r1
	bmi _0223C49A
	mov r0, #1
	ldrsb r1, [r4, r0]
	mov r0, #3
	ldrsb r0, [r4, r0]
	mul r0, r1
	bpl _0223C4BC
_0223C49A:
	ldrb r0, [r4, #4]
	add r0, r0, #1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #4]
	ldrb r0, [r4, #4]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005748
_0223C4BC:
	mov r0, #2
	ldrsb r0, [r4, r0]
	strb r0, [r4]
	mov r0, #3
	ldrsb r0, [r4, r0]
	strb r0, [r4, #1]
	mov r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	add sp, #8
	pop {r4, pc}
	nop
_0223C4D4: .word 0x0223D4B8
_0223C4D8: .word 0x00000692
	thumb_func_end ov71_0223C45C

	thumb_func_start ov71_0223C4DC
ov71_0223C4DC: ; 0x0223C4DC
	push {r4, r5, r6, r7}
	mov r2, #3
	mov r4, #0
	lsl r2, r2, #0xc
_0223C4E4:
	asr r3, r4, #2
	lsr r3, r3, #0x1d
	add r3, r4, r3
	asr r3, r3, #3
	lsr r6, r3, #0x1f
	lsl r5, r3, #0x1d
	sub r5, r5, r6
	mov r3, #0x1d
	ror r5, r3
	add r3, r6, r5
	asr r5, r4, #5
	lsr r5, r5, #0x1a
	lsl r3, r3, #0x18
	add r5, r4, r5
	lsr r3, r3, #0x18
	asr r5, r5, #6
	lsl r5, r5, #3
	add r3, r0, r3
	ldrb r3, [r5, r3]
	lsr r7, r4, #0x1f
	lsl r6, r4, #0x1d
	sub r6, r6, r7
	mov r5, #0x1d
	ror r6, r5
	add r5, r7, r6
	lsl r5, r5, #0x18
	add r6, r3, #0
	lsr r5, r5, #0x18
	asr r6, r5
	mov r3, #1
	and r3, r6
	strb r3, [r1, r4]
	add r4, r4, #1
	cmp r4, r2
	blt _0223C4E4
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov71_0223C4DC

	thumb_func_start ov71_0223C530
ov71_0223C530: ; 0x0223C530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	mov r1, #1
	str r1, [sp]
	lsl r1, r7, #0x18
	mov r3, #3
	str r0, [sp, #4]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xc
	bl sub_0201958C
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl sub_02019FE4
	mov r4, #0
	add r1, r0, #0
	add r3, r4, #0
	add r0, r4, #0
_0223C55A:
	add r5, r3, #0
	add r5, #0xe
	lsl r5, r5, #6
	add r2, r0, #0
	add r5, r1, r5
_0223C564:
	lsl r6, r2, #1
	add r4, r4, #1
	add r2, r2, #1
	lsl r4, r4, #0x10
	lsl r2, r2, #0x18
	lsr r4, r4, #0x10
	add r6, r5, r6
	lsr r2, r2, #0x18
	strh r4, [r6, #8]
	cmp r2, #0x18
	blo _0223C564
	add r2, r3, #1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x18
	cmp r3, #8
	blo _0223C55A
	lsl r1, r7, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl sub_02019448
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov71_0223C530

	thumb_func_start ov71_0223C594
ov71_0223C594: ; 0x0223C594
	ldr r3, _0223C59C ; =sub_02005748
	ldr r0, _0223C5A0 ; =0x00000699
	bx r3
	nop
_0223C59C: .word sub_02005748
_0223C5A0: .word 0x00000699
	thumb_func_end ov71_0223C594

	thumb_func_start ov71_0223C5A4
ov71_0223C5A4: ; 0x0223C5A4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _0223C600
	mov r0, #0xc3
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C5F0
	ldr r2, _0223C604 ; =0x0000331E
	ldrb r0, [r4, r2]
	cmp r0, #0xf
	bne _0223C5DE
	add r1, r4, #0
	add r1, #0xb4
	sub r2, #0x16
	ldr r1, [r1, #0]
	ldr r2, [r4, r2]
	add r0, r4, #4
	bl ov71_0223CDE8
	ldr r2, _0223C608 ; =0x0000330C
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x54
	mov r1, #1
	bl ov71_0223CECC
	b _0223C5F0
_0223C5DE:
	cmp r0, #0
	bne _0223C5F0
	sub r2, #0x12
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x54
	mov r1, #0
	bl ov71_0223CECC
_0223C5F0:
	ldr r0, _0223C604 ; =0x0000331E
	mov r1, #0x1e
	ldrb r0, [r4, r0]
	add r0, r0, #1
	bl sub_020E1F6C
	ldr r0, _0223C604 ; =0x0000331E
	strb r1, [r4, r0]
_0223C600:
	pop {r4, pc}
	nop
_0223C604: .word 0x0000331E
_0223C608: .word 0x0000330C
	thumb_func_end ov71_0223C5A4

	thumb_func_start ov71_0223C60C
ov71_0223C60C: ; 0x0223C60C
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	bl sub_02022664
	mov r1, #0
	add r4, r0, #0
	mvn r1, r1
	cmp r4, r1
	beq _0223C64A
	cmp r4, #0
	beq _0223C64C
	mov r1, #0x40
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223C650 ; =0x021BF6BC
	add r0, r5, #0
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #2
	bl sub_0201C784
	cmp r0, #0
	bne _0223C64A
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0223C64A:
	add r0, r4, #0
_0223C64C:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C650: .word 0x021BF6BC
	thumb_func_end ov71_0223C60C

	thumb_func_start ov71_0223C654
ov71_0223C654: ; 0x0223C654
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	bl sub_02022644
	mov r1, #0
	add r4, r0, #0
	mvn r1, r1
	cmp r4, r1
	beq _0223C692
	cmp r4, #0
	beq _0223C694
	mov r1, #0x40
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223C698 ; =0x021BF6BC
	add r0, r5, #0
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #2
	bl sub_0201C784
	cmp r0, #0
	bne _0223C692
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0223C692:
	add r0, r4, #0
_0223C694:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223C698: .word 0x021BF6BC
	thumb_func_end ov71_0223C654

	.rodata


	.global Unk_ov71_0223D4A8
Unk_ov71_0223D4A8: ; 0x0223D4A8
	.incbin "incbin/overlay71_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov71_0223D4AC
Unk_ov71_0223D4AC: ; 0x0223D4AC
	.incbin "incbin/overlay71_rodata.bin", 0x4, 0x8 - 0x4

	.global Unk_ov71_0223D4B0
Unk_ov71_0223D4B0: ; 0x0223D4B0
	.incbin "incbin/overlay71_rodata.bin", 0x8, 0x10 - 0x8

	.global Unk_ov71_0223D4B8
Unk_ov71_0223D4B8: ; 0x0223D4B8
	.incbin "incbin/overlay71_rodata.bin", 0x10, 0x18 - 0x10

	.global Unk_ov71_0223D4C0
Unk_ov71_0223D4C0: ; 0x0223D4C0
	.incbin "incbin/overlay71_rodata.bin", 0x18, 0x20 - 0x18

	.global Unk_ov71_0223D4C8
Unk_ov71_0223D4C8: ; 0x0223D4C8
	.incbin "incbin/overlay71_rodata.bin", 0x20, 0x28 - 0x20

	.global Unk_ov71_0223D4D0
Unk_ov71_0223D4D0: ; 0x0223D4D0
	.incbin "incbin/overlay71_rodata.bin", 0x28, 0x38 - 0x28

	.global Unk_ov71_0223D4E0
Unk_ov71_0223D4E0: ; 0x0223D4E0
	.incbin "incbin/overlay71_rodata.bin", 0x38, 0x48 - 0x38

	.global Unk_ov71_0223D4F0
Unk_ov71_0223D4F0: ; 0x0223D4F0
	.incbin "incbin/overlay71_rodata.bin", 0x48, 0x64 - 0x48

	.global Unk_ov71_0223D50C
Unk_ov71_0223D50C: ; 0x0223D50C
	.incbin "incbin/overlay71_rodata.bin", 0x64, 0x80 - 0x64

	.global Unk_ov71_0223D528
Unk_ov71_0223D528: ; 0x0223D528
	.incbin "incbin/overlay71_rodata.bin", 0x80, 0x9C - 0x80

	.global Unk_ov71_0223D544
Unk_ov71_0223D544: ; 0x0223D544
	.incbin "incbin/overlay71_rodata.bin", 0x9C, 0xB8 - 0x9C

	.global Unk_ov71_0223D560
Unk_ov71_0223D560: ; 0x0223D560
	.incbin "incbin/overlay71_rodata.bin", 0xB8, 0xD4 - 0xB8

	.global Unk_ov71_0223D57C
Unk_ov71_0223D57C: ; 0x0223D57C
	.incbin "incbin/overlay71_rodata.bin", 0xD4, 0xFC - 0xD4

	.global Unk_ov71_0223D5A4
Unk_ov71_0223D5A4: ; 0x0223D5A4
	.incbin "incbin/overlay71_rodata.bin", 0xFC, 0x124 - 0xFC

	.global Unk_ov71_0223D5CC
Unk_ov71_0223D5CC: ; 0x0223D5CC
	.incbin "incbin/overlay71_rodata.bin", 0x124, 0x15C - 0x124

	.global Unk_ov71_0223D604
Unk_ov71_0223D604: ; 0x0223D604
	.incbin "incbin/overlay71_rodata.bin", 0x15C, 0x40

