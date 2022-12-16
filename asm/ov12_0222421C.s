	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov12_0222421C
ov12_0222421C: ; 0x0222421C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x14]
	add r5, r0, #0
	cmp r2, #0
	beq _0222422C
	bl ov12_022242E0
_0222422C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0222423A
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02224614
_0222423A:
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02224248
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02224E74
_02224248:
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02224EA8
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0222425E
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02224EB8
_0222425E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_0222421C

	thumb_func_start ov12_02224260
ov12_02224260: ; 0x02224260
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #0]
	add r6, r2, #0
	add r0, r4, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_0223525C
	cmp r0, #3
	beq _02224288
	mov r5, #1
	b _0222428A
_02224288:
	mov r5, #0
_0222428A:
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235448
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02224260

	thumb_func_start ov12_022242A0
ov12_022242A0: ; 0x022242A0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #0]
	add r6, r2, #0
	add r0, r4, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r4, #0
	bl ov12_0223525C
	cmp r0, #3
	beq _022242C8
	mov r5, #1
	b _022242CA
_022242C8:
	mov r5, #0
_022242CA:
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235448
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022242A0

	thumb_func_start ov12_022242E0
ov12_022242E0: ; 0x022242E0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xbc
	add r4, r1, #0
	ldr r2, [r4, #0x14]
	add r5, r0, #0
	cmp r2, #0x64
	bgt _02224348
	blt _022242F2
	b _022244BC
_022242F2:
	cmp r2, #0x22
	bhi _0222434E
	add r3, r2, r2
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02224302: ; jump table
	.short _022245C6 - _02224302 - 2 ; case 0
	.short _02224350 - _02224302 - 2 ; case 1
	.short _0222435C - _02224302 - 2 ; case 2
	.short _02224458 - _02224302 - 2 ; case 3
	.short _02224494 - _02224302 - 2 ; case 4
	.short _022244A8 - _02224302 - 2 ; case 5
	.short _02224368 - _02224302 - 2 ; case 6
	.short _02224374 - _02224302 - 2 ; case 7
	.short _02224440 - _02224302 - 2 ; case 8
	.short _0222444C - _02224302 - 2 ; case 9
	.short _02224380 - _02224302 - 2 ; case 10
	.short _0222438C - _02224302 - 2 ; case 11
	.short _022244E8 - _02224302 - 2 ; case 12
	.short _022244F8 - _02224302 - 2 ; case 13
	.short _02224398 - _02224302 - 2 ; case 14
	.short _022243A4 - _02224302 - 2 ; case 15
	.short _022243B0 - _02224302 - 2 ; case 16
	.short _022243BC - _02224302 - 2 ; case 17
	.short _022243C8 - _02224302 - 2 ; case 18
	.short _022243D4 - _02224302 - 2 ; case 19
	.short _022243E0 - _02224302 - 2 ; case 20
	.short _022243EC - _02224302 - 2 ; case 21
	.short _022243F8 - _02224302 - 2 ; case 22
	.short _02224404 - _02224302 - 2 ; case 23
	.short _02224410 - _02224302 - 2 ; case 24
	.short _0222441C - _02224302 - 2 ; case 25
	.short _02224428 - _02224302 - 2 ; case 26
	.short _02224434 - _02224302 - 2 ; case 27
	.short _02224508 - _02224302 - 2 ; case 28
	.short _022245C6 - _02224302 - 2 ; case 29
	.short _02224558 - _02224302 - 2 ; case 30
	.short _0222452E - _02224302 - 2 ; case 31
	.short _02224590 - _02224302 - 2 ; case 32
	.short _02224514 - _02224302 - 2 ; case 33
	.short _02224522 - _02224302 - 2 ; case 34
_02224348:
	cmp r2, #0x65
	bne _0222434E
	b _022244D2
_0222434E:
	b _022245C6
_02224350:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235508
	b _022245C6
_0222435C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235508
	b _022245C6
_02224368:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235538
	b _022245C6
_02224374:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235538
	b _022245C6
_02224380:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235568
	b _022245C6
_0222438C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235568
	b _022245C6
_02224398:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235598
	b _022245C6
_022243A4:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235598
	b _022245C6
_022243B0:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_022355C8
	b _022245C6
_022243BC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_022355C8
	b _022245C6
_022243C8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_022355F8
	b _022245C6
_022243D4:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_022355F8
	b _022245C6
_022243E0:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235628
	b _022245C6
_022243EC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235628
	b _022245C6
_022243F8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235658
	b _022245C6
_02224404:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235658
	b _022245C6
_02224410:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235688
	b _022245C6
_0222441C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235688
	b _022245C6
_02224428:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_022356B8
	b _022245C6
_02224434:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_022356B8
	b _022245C6
_02224440:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235718
	b _022245C6
_0222444C:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235718
	b _022245C6
_02224458:
	ldr r0, [r4, #0]
	add r1, sp, #0xa0
	mov r2, #4
	bl ov12_0222325C
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0xb0]
	ldr r0, [sp, #0xa8]
	str r0, [sp, #0xb4]
	ldr r0, [sp, #0xac]
	str r0, [sp, #0xb8]
	ldr r0, [sp, #0xa0]
	cmp r0, #1
	bne _02224480
	mov r0, #1
	strb r0, [r4, #8]
_02224480:
	mov r0, #8
	ldrsb r1, [r4, r0]
	ldr r2, [sp, #0xb0]
	mul r1, r2
	str r1, [sp, #0xb0]
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #0xb4]
	mul r0, r1
	str r0, [sp, #0xb4]
	b _022245C6
_02224494:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235508
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov12_02225094
	b _022245C6
_022244A8:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235508
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov12_02225094
	b _022245C6
_022244BC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235508
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	add r2, sp, #0xb0
	bl ov12_02225008
	b _022245C6
_022244D2:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0xb0
	bl ov12_02235508
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	add r2, sp, #0xb0
	bl ov12_02225008
	b _022245C6
_022244E8:
	add r2, sp, #0xb0
	bl ov12_022242A0
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov12_02225094
	b _022245C6
_022244F8:
	add r2, sp, #0xb0
	bl ov12_02224260
	add r0, r4, #0
	add r1, sp, #0xb0
	bl ov12_02225094
	b _022245C6
_02224508:
	ldr r0, _022245FC ; =0x00002CE0
	str r0, [sp, #0xb0]
	mov r0, #0
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb8]
	b _022245C6
_02224514:
	ldr r0, _02224600 ; =0xFFFFEC78
	str r0, [sp, #0xb0]
	ldr r0, _02224604 ; =0xFFFFE890
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _022245C6
_02224522:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0xb0
	bl ov12_02235508
	b _022245C6
_0222452E:
	ldr r6, _02224608 ; =0x02238EAC
	add r3, sp, #0x70
	mov r2, #6
_02224534:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02224534
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	bl ov12_02235254
	lsl r1, r0, #3
	add r0, sp, #0x70
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #0x74
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _022245C6
_02224558:
	ldr r6, _0222460C ; =0x02238F44
	add r3, sp, #0x38
	mov r2, #7
_0222455E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222455E
	ldr r0, [r4, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224574
	mov r0, #6
	b _0222457C
_02224574:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	bl ov12_02235254
_0222457C:
	lsl r1, r0, #3
	add r0, sp, #0x38
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #0x3c
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
	b _022245C6
_02224590:
	ldr r6, _02224610 ; =0x02238F0C
	add r3, sp, #0
	mov r2, #7
_02224596:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02224596
	ldr r0, [r4, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022245AC
	mov r0, #6
	b _022245B4
_022245AC:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	bl ov12_02235254
_022245B4:
	lsl r1, r0, #3
	add r0, sp, #0
	ldr r0, [r0, r1]
	str r0, [sp, #0xb0]
	add r0, sp, #4
	ldr r0, [r0, r1]
	str r0, [sp, #0xb4]
	mov r0, #0
	str r0, [sp, #0xb8]
_022245C6:
	add r2, sp, #0xb0
	ldmia r2!, {r0, r1}
	add r4, #0x2c
	stmia r4!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r4, #0]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xb8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xbc
	pop {r3, r4, r5, r6, pc}
	nop
_022245FC: .word 0x00002CE0
_02224600: .word 0xFFFFEC78
_02224604: .word 0xFFFFE890
_02224608: .word 0x02238EAC
_0222460C: .word 0x02238F44
_02224610: .word 0x02238F0C
	thumb_func_end ov12_022242E0

	thumb_func_start ov12_02224614
ov12_02224614: ; 0x02224614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x148
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r1, #0]
	ldr r1, [r1, #0x24]
	bl ov12_02235254
	str r0, [sp, #0x18]
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x28]
	bl ov12_02235254
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x18]
	cmp r0, #0x1a
	bls _0222463E
	b _02224E38
_0222463E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222464A: ; jump table
	.short _02224680 - _0222464A - 2 ; case 0
	.short _0222468C - _0222464A - 2 ; case 1
	.short _0222468C - _0222464A - 2 ; case 2
	.short _02224DA2 - _0222464A - 2 ; case 3
	.short _022246F4 - _0222464A - 2 ; case 4
	.short _022247AE - _0222464A - 2 ; case 5
	.short _02224AE0 - _0222464A - 2 ; case 6
	.short _02224AE0 - _0222464A - 2 ; case 7
	.short _02224868 - _0222464A - 2 ; case 8
	.short _02224868 - _0222464A - 2 ; case 9
	.short _022248D0 - _0222464A - 2 ; case 10
	.short _022248D0 - _0222464A - 2 ; case 11
	.short _0222491E - _0222464A - 2 ; case 12
	.short _0222491E - _0222464A - 2 ; case 13
	.short _02224966 - _0222464A - 2 ; case 14
	.short _02224966 - _0222464A - 2 ; case 15
	.short _022249AE - _0222464A - 2 ; case 16
	.short _022249AE - _0222464A - 2 ; case 17
	.short _02224A50 - _0222464A - 2 ; case 18
	.short _02224A50 - _0222464A - 2 ; case 19
	.short _02224A98 - _0222464A - 2 ; case 20
	.short _02224A98 - _0222464A - 2 ; case 21
	.short _02224DB6 - _0222464A - 2 ; case 22
	.short _02224E38 - _0222464A - 2 ; case 23
	.short _02224E0A - _0222464A - 2 ; case 24
	.short _02224DC6 - _0222464A - 2 ; case 25
	.short _02224DD8 - _0222464A - 2 ; case 26
_02224680:
	mov r1, #0
	add r0, sp, #0x20
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	b _02224E38
_0222468C:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022246C6
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	add r0, sp, #0x20
	bne _022246B4
	ldr r1, _022249E8 ; =0xFFFFF2F8
	strh r1, [r0]
	mov r1, #0x73
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022246B4:
	mov r1, #0x92
	lsl r1, r1, #4
	strh r1, [r0]
	ldr r1, _022249EC ; =0xFFFFFA60
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022246C6:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_022246F4:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224730
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r2, [r1, r2]
	neg r3, r2
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_02224730:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x28]
	bl ov12_0223525C
	cmp r4, r0
	bne _0222477C
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_0222477C:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	cmp r0, #3
	add r0, sp, #0x20
	bne _022247A0
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	ldr r1, _022249FC ; =0x000005FC
	strh r1, [r0, #4]
	b _02224E38
_022247A0:
	ldr r1, _02224A00 ; =0xFFFFEF7C
	strh r1, [r0]
	ldr r1, _02224A04 ; =0xFFFFF558
	strh r1, [r0, #2]
	ldr r1, _022249FC ; =0x000005FC
	strh r1, [r0, #4]
	b _02224E38
_022247AE:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022247EA
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r2, [r1, r2]
	neg r3, r2
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_022247EA:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x28]
	bl ov12_0223525C
	cmp r4, r0
	bne _02224836
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _022249F0 ; =0x022396AC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _022249F4 ; =0x022396B0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _022249F8 ; =0x022396B4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_02224836:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	cmp r0, #3
	add r0, sp, #0x20
	bne _0222485A
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	ldr r1, _022249FC ; =0x000005FC
	strh r1, [r0, #4]
	b _02224E38
_0222485A:
	ldr r1, _02224A00 ; =0xFFFFEF7C
	strh r1, [r0]
	ldr r1, _02224A04 ; =0xFFFFF558
	strh r1, [r0, #2]
	ldr r1, _022249FC ; =0x000005FC
	strh r1, [r0, #4]
	b _02224E38
_02224868:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022248A2
	ldr r0, [sp, #4]
	ldr r0, [r0, #0x10]
	cmp r0, #2
	add r0, sp, #0x20
	bne _02224890
	ldr r1, _02224A08 ; =0xFFFFF6E0
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_02224890:
	mov r1, #0x92
	lsl r1, r1, #4
	strh r1, [r0]
	ldr r1, _022249EC ; =0xFFFFFA60
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022248A2:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A0C ; =0x02238FEC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A10 ; =0x02238FF0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224A14 ; =0x02238FF4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_022248D0:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022248F0
	ldr r1, _02224A08 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022248F0:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A18 ; =0x0223919C
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A10 ; =0x02238FF0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224A14 ; =0x02238FF4
	add r0, r3, r0
	ldr r1, [r1, r0]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	strh r0, [r2, #4]
	b _02224E38
_0222491E:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _0222493E
	ldr r1, _02224A1C ; =0xFFFFF488
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_0222493E:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A20 ; =0x022394FC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A24 ; =0x02239500
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224A28 ; =0x02239504
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_02224966:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224986
	ldr r1, _02224A08 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_02224986:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A2C ; =0x0223985C
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A30 ; =0x02239860
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224A34 ; =0x02239864
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_022249AE:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _022249CE
	ldr r1, _02224A08 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_022249CE:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224A38 ; =0x0223934C
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224A3C ; =0x02239350
	b _02224A40
	; .align 2, 0
_022249E8: .word 0xFFFFF2F8
_022249EC: .word 0xFFFFFA60
_022249F0: .word 0x022396AC
_022249F4: .word 0x022396B0
_022249F8: .word 0x022396B4
_022249FC: .word 0x000005FC
_02224A00: .word 0xFFFFEF7C
_02224A04: .word 0xFFFFF558
_02224A08: .word 0xFFFFF6E0
_02224A0C: .word 0x02238FEC
_02224A10: .word 0x02238FF0
_02224A14: .word 0x02238FF4
_02224A18: .word 0x0223919C
_02224A1C: .word 0xFFFFF488
_02224A20: .word 0x022394FC
_02224A24: .word 0x02239500
_02224A28: .word 0x02239504
_02224A2C: .word 0x0223985C
_02224A30: .word 0x02239860
_02224A34: .word 0x02239864
_02224A38: .word 0x0223934C
_02224A3C: .word 0x02239350
_02224A40:
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224D60 ; =0x02239354
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_02224A50:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224A70
	ldr r1, _02224D64 ; =0xFFFFF6E0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_02224A70:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224D68 ; =0x02239A0C
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224D6C ; =0x02239A10
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224D70 ; =0x02239A14
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_02224A98:
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224AB8
	ldr r1, _02224D74 ; =0xFFFFEF10
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x5a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x2e
	lsl r1, r1, #4
	strh r1, [r0, #4]
	b _02224E38
_02224AB8:
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	mul r1, r0
	ldr r2, [sp, #0x18]
	mov r0, #0x48
	mul r0, r2
	ldr r2, _02224D78 ; =0x02239BBC
	add r2, r2, r0
	ldr r3, [r1, r2]
	add r2, sp, #0x20
	strh r3, [r2]
	ldr r3, _02224D7C ; =0x02239BC0
	add r3, r3, r0
	ldr r3, [r1, r3]
	strh r3, [r2, #2]
	ldr r3, _02224D80 ; =0x02239BC4
	add r0, r3, r0
	ldr r0, [r1, r0]
	strh r0, [r2, #4]
	b _02224E38
_02224AE0:
	ldr r4, _02224D84 ; =0x02238F7C
	add r3, sp, #0xd8
	mov r2, #0xe
_02224AE6:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02224AE6
	ldr r3, _02224D88 ; =0x02238E9C
	add r2, sp, #0x58
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r1, sp, #0xc8
	mov r0, #0
	str r1, [sp, #0xc]
	add r1, sp, #0xb8
	mov ip, r0
	str r1, [sp, #0x1c]
	add r0, sp, #0xd8
	add r7, sp, #0xa8
	add r6, sp, #0x98
	add r5, sp, #0x88
	add r1, sp, #0x78
	add r2, sp, #0x68
_02224B12:
	ldr r4, [r0, #0]
	ldr r3, [sp, #0xc]
	str r4, [r3, #0]
	ldr r4, [r0, #0x10]
	ldr r3, [sp, #0x1c]
	str r4, [r3, #0]
	ldr r3, [r0, #0x20]
	stmia r7!, {r3}
	ldr r3, [r0, #0x30]
	stmia r6!, {r3}
	ldr r3, [r0, #0x40]
	stmia r5!, {r3}
	ldr r3, [r0, #0x50]
	stmia r1!, {r3}
	ldr r3, [r0, #0x60]
	add r0, r0, #4
	stmia r2!, {r3}
	ldr r3, [sp, #0xc]
	add r3, r3, #4
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	add r3, r3, #4
	str r3, [sp, #0x1c]
	mov r3, ip
	add r3, r3, #1
	mov ip, r3
	cmp r3, #4
	blt _02224B12
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov12_0221FDD4
	cmp r0, #1
	bne _02224B8E
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x58
	str r0, [sp, #0x10]
	add r7, sp, #0xc8
	add r6, sp, #0xb8
	add r0, sp, #0xa8
	add r1, sp, #0x98
	add r2, sp, #0x88
	add r3, sp, #0x78
	add r4, sp, #0x68
_02224B6C:
	ldr r5, [sp, #0x10]
	ldr r5, [r5, #0]
	stmia r7!, {r5}
	stmia r6!, {r5}
	stmia r0!, {r5}
	stmia r1!, {r5}
	stmia r2!, {r5}
	stmia r3!, {r5}
	stmia r4!, {r5}
	ldr r5, [sp, #0x10]
	add r5, r5, #4
	str r5, [sp, #0x10]
	ldr r5, [sp, #8]
	add r5, r5, #1
	str r5, [sp, #8]
	cmp r5, #4
	blt _02224B6C
_02224B8E:
	ldr r0, [sp, #0x18]
	cmp r0, #5
	bhi _02224BAC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224BA0: ; jump table
	.short _02224BAC - _02224BA0 - 2 ; case 0
	.short _02224BBC - _02224BA0 - 2 ; case 1
	.short _02224BE8 - _02224BA0 - 2 ; case 2
	.short _02224C20 - _02224BA0 - 2 ; case 3
	.short _02224CAE - _02224BA0 - 2 ; case 4
	.short _02224CE6 - _02224BA0 - 2 ; case 5
_02224BAC:
	ldr r1, [sp, #0xc8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	strh r1, [r0, #4]
	b _02224E38
_02224BBC:
	ldr r0, [sp, #0xd4]
	cmp r0, #1
	bne _02224BD2
	ldr r1, [sp, #0xc8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	strh r1, [r0, #4]
	b _02224E38
_02224BD2:
	ldr r0, [sp, #0xc8]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xcc]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xd0]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224BE8:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _02224BFE
	ldr r1, [sp, #0xb8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	strh r1, [r0, #4]
	b _02224E38
_02224BFE:
	cmp r0, #5
	add r0, sp, #0x20
	bne _02224C12
	ldr r1, [sp, #0x98]
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	strh r1, [r0, #4]
	b _02224E38
_02224C12:
	ldr r1, [sp, #0xa8]
	strh r1, [r0]
	ldr r1, [sp, #0xac]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xb0]
	strh r1, [r0, #4]
	b _02224E38
_02224C20:
	ldr r0, [sp, #0x14]
	cmp r0, #2
	bne _02224C52
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02224C3C
	ldr r1, [sp, #0xb8]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	strh r1, [r0, #4]
	b _02224E38
_02224C3C:
	ldr r0, [sp, #0xb8]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0xbc]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xc0]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224C52:
	cmp r0, #5
	bne _02224C82
	ldr r0, [sp, #0xb4]
	cmp r0, #1
	bne _02224C72
	ldr r0, [sp, #0x88]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224C72:
	ldr r1, [sp, #0x88]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _02224E38
_02224C82:
	ldr r0, [sp, #0x84]
	cmp r0, #1
	bne _02224C98
	ldr r1, [sp, #0x78]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	strh r1, [r0, #4]
	b _02224E38
_02224C98:
	ldr r0, [sp, #0x78]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224CAE:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _02224CC4
	ldr r1, [sp, #0x78]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x7c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x80]
	strh r1, [r0, #4]
	b _02224E38
_02224CC4:
	cmp r0, #5
	add r0, sp, #0x20
	bne _02224CD8
	ldr r1, [sp, #0x68]
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	strh r1, [r0, #4]
	b _02224E38
_02224CD8:
	ldr r1, [sp, #0x88]
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _02224E38
_02224CE6:
	ldr r0, [sp, #0x14]
	cmp r0, #3
	bne _02224D18
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02224D02
	ldr r1, [sp, #0x88]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	strh r1, [r0, #4]
	b _02224E38
_02224D02:
	ldr r0, [sp, #0x88]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x8c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x90]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224D18:
	cmp r0, #2
	bne _02224D48
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02224D32
	ldr r1, [sp, #0x98]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	strh r1, [r0, #4]
	b _02224E38
_02224D32:
	ldr r0, [sp, #0x98]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x9c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0xa0]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224D48:
	ldr r0, [sp, #0xc4]
	cmp r0, #1
	bne _02224D8C
	ldr r1, [sp, #0x68]
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	strh r1, [r0, #4]
	b _02224E38
	nop
_02224D60: .word 0x02239354
_02224D64: .word 0xFFFFF6E0
_02224D68: .word 0x02239A0C
_02224D6C: .word 0x02239A10
_02224D70: .word 0x02239A14
_02224D74: .word 0xFFFFEF10
_02224D78: .word 0x02239BBC
_02224D7C: .word 0x02239BC0
_02224D80: .word 0x02239BC4
_02224D84: .word 0x02238F7C
_02224D88: .word 0x02238E9C
_02224D8C:
	ldr r0, [sp, #0x68]
	neg r1, r0
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, [sp, #0x6c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x70]
	neg r1, r1
	strh r1, [r0, #4]
	b _02224E38
_02224DA2:
	ldr r1, _02224E58 ; =0xFFFFFCE0
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x4b
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0x7d
	lsl r1, r1, #2
	strh r1, [r0, #4]
	b _02224E38
_02224DB6:
	ldr r1, _02224E5C ; =0xFFFFF2AE
	add r0, sp, #0x20
	strh r1, [r0]
	ldr r1, _02224E60 ; =0xFFFFF5AC
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _02224E38
_02224DC6:
	ldr r1, _02224E64 ; =0xFFFFF290
	add r0, sp, #0x20
	strh r1, [r0]
	mov r1, #0x7a
	lsl r1, r1, #4
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _02224E38
_02224DD8:
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_0223525C
	cmp r0, #3
	add r0, sp, #0x20
	bne _02224DFC
	mov r1, #0x3b
	lsl r1, r1, #6
	strh r1, [r0]
	mov r1, #0x21
	lsl r1, r1, #6
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _02224E38
_02224DFC:
	ldr r1, _02224E68 ; =0xFFFFE890
	strh r1, [r0]
	ldr r1, _02224E6C ; =0xFFFFF768
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	b _02224E38
_02224E0A:
	ldr r4, _02224E70 ; =0x02238EDC
	add r3, sp, #0x28
	mov r2, #6
_02224E10:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02224E10
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0x24]
	bl ov12_02235254
	lsl r2, r0, #3
	add r0, sp, #0x28
	ldr r1, [r0, r2]
	add r0, sp, #0x20
	strh r1, [r0]
	add r1, sp, #0x2c
	ldr r1, [r1, r2]
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
_02224E38:
	add r1, sp, #0x20
	ldr r0, [sp]
	ldrh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	ldr r0, [sp]
	ldrh r2, [r1, #2]
	add r0, #0x52
	strh r2, [r0]
	ldr r0, [sp]
	ldrh r1, [r1, #4]
	add r0, #0x54
	str r0, [sp]
	strh r1, [r0]
	add sp, #0x148
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02224E58: .word 0xFFFFFCE0
_02224E5C: .word 0xFFFFF2AE
_02224E60: .word 0xFFFFF5AC
_02224E64: .word 0xFFFFF290
_02224E68: .word 0xFFFFE890
_02224E6C: .word 0xFFFFF768
_02224E70: .word 0x02238EDC
	thumb_func_end ov12_02224614

	thumb_func_start ov12_02224E74
ov12_02224E74: ; 0x02224E74
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	bl ov12_02225614
	add r6, r0, #0
	mov r4, #0
	cmp r6, #0
	ble _02224EA4
_02224E86:
	add r0, r4, #0
	bl ov12_022255EC
	ldr r1, [r5, #0x1c]
	and r1, r0
	cmp r0, r1
	bne _02224E9E
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov12_022255D4
_02224E9E:
	add r4, r4, #1
	cmp r4, r6
	blt _02224E86
_02224EA4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02224E74

	thumb_func_start ov12_02224EA8
ov12_02224EA8: ; 0x02224EA8
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _02224EB4 ; =ov12_0222584C
	ldr r0, [r2, #0x20]
	bx r3
	; .align 2, 0
_02224EB4: .word ov12_0222584C
	thumb_func_end ov12_02224EA8

	thumb_func_start ov12_02224EB8
ov12_02224EB8: ; 0x02224EB8
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x24]
	bl ov12_02235254
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x28]
	bl ov12_02235254
	ldr r1, [r6, #0xc]
	cmp r1, #3
	bhi _02224F00
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02224EE0: ; jump table
	.short _02224F00 - _02224EE0 - 2 ; case 0
	.short _02224EE8 - _02224EE0 - 2 ; case 1
	.short _02224EF6 - _02224EE0 - 2 ; case 2
	.short _02224F00 - _02224EE0 - 2 ; case 3
_02224EE8:
	cmp r0, #0
	bne _02224EF2
	mov r4, #1
	lsl r4, r4, #8
	b _02224F00
_02224EF2:
	ldr r4, _02224F0C ; =0xFFFFEC00
	b _02224F00
_02224EF6:
	cmp r0, #0
	bne _02224EFE
	mov r4, #0
	b _02224F00
_02224EFE:
	ldr r4, _02224F10 ; =0xFFFFEB00
_02224F00:
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r4, r0
	str r0, [r5, #0x30]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02224F0C: .word 0xFFFFEC00
_02224F10: .word 0xFFFFEB00
	thumb_func_end ov12_02224EB8

	thumb_func_start ov12_02224F14
ov12_02224F14: ; 0x02224F14
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02014764
	add r5, r0, #0
	bl ov12_0221FDE4
	mov r1, #0x38
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	add r0, r5, #0
	bl ov12_02220250
	str r0, [r4, #4]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0xc
	mov r2, #6
	bl ov12_0222325C
	ldr r0, [r4, #0x10]
	cmp r0, #4
	bhi _02224F5C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224F52: ; jump table
	.short _02224F5C - _02224F52 - 2 ; case 0
	.short _02224F6E - _02224F52 - 2 ; case 1
	.short _02224F80 - _02224F52 - 2 ; case 2
	.short _02224F92 - _02224F52 - 2 ; case 3
	.short _02224FA4 - _02224F52 - 2 ; case 4
_02224F5C:
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x28]
	b _02224FB4
_02224F6E:
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x28]
	b _02224FB4
_02224F80:
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x28]
	b _02224FB4
_02224F92:
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x28]
	b _02224FB4
_02224FA4:
	ldr r0, [r4, #0]
	bl ov12_02220240
	str r0, [r4, #0x24]
	ldr r0, [r4, #0]
	bl ov12_02220248
	str r0, [r4, #0x28]
_02224FB4:
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_0222421C
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02224F14

	thumb_func_start ov12_02224FC4
ov12_02224FC4: ; 0x02224FC4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x24]
	mov r4, #1
	bl ov12_02235254
	add r5, r0, #0
	ldr r0, [r6, #0]
	ldr r1, [r6, #0x28]
	bl ov12_02235254
	cmp r5, #5
	bhi _02225002
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02224FEC: ; jump table
	.short _02225002 - _02224FEC - 2 ; case 0
	.short _02224FF8 - _02224FEC - 2 ; case 1
	.short _02225002 - _02224FEC - 2 ; case 2
	.short _02224FFC - _02224FEC - 2 ; case 3
	.short _02225002 - _02224FEC - 2 ; case 4
	.short _02225000 - _02224FEC - 2 ; case 5
_02224FF8:
	sub r4, r4, #2
	b _02225002
_02224FFC:
	sub r4, r4, #2
	b _02225002
_02225000:
	sub r4, r4, #2
_02225002:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02224FC4

	thumb_func_start ov12_02225008
ov12_02225008: ; 0x02225008
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r0, sp, #0x20
	mov r4, #0
	str r4, [r0, #0]
	str r4, [r0, #4]
	add r6, r1, #0
	add r7, r2, #0
	str r4, [r0, #8]
_0222501C:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov12_02235254
	cmp r4, r0
	ldr r0, [r5, #0]
	bne _02225034
	add r1, sp, #0x10
	mov r2, #4
	bl ov12_0222325C
	b _0222503C
_02225034:
	add r1, sp, #0
	mov r2, #4
	bl ov12_0222325C
_0222503C:
	add r4, r4, #1
	cmp r4, #6
	blt _0222501C
	add r0, r5, #0
	bl ov12_02224FC4
	strb r0, [r5, #8]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02225060
	mov r0, #1
	strb r0, [r5, #8]
_02225060:
	mov r1, #8
	ldrsb r0, [r5, r1]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mul r0, r2
	str r0, [sp, #0x20]
	ldrsb r2, [r5, r1]
	mul r2, r3
	str r2, [sp, #0x24]
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #0x28]
	mul r1, r2
	str r1, [sp, #0x28]
	ldr r1, [r7, #0]
	add r0, r1, r0
	str r0, [r7, #0]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x24]
	add r0, r1, r0
	str r0, [r7, #4]
	ldr r1, [r7, #8]
	ldr r0, [sp, #0x28]
	add r0, r1, r0
	str r0, [r7, #8]
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225008

	thumb_func_start ov12_02225094
ov12_02225094: ; 0x02225094
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	ldr r0, [r5, #0]
	add r1, sp, #0xc
	mov r2, #4
	bl ov12_0222325C
	add r0, r5, #0
	bl ov12_02224FC4
	strb r0, [r5, #8]
	ldr r0, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _022250CE
	mov r0, #1
	strb r0, [r5, #8]
_022250CE:
	mov r1, #8
	ldrsb r0, [r5, r1]
	ldr r2, [sp]
	ldr r3, [sp, #4]
	mul r0, r2
	str r0, [sp]
	ldrsb r2, [r5, r1]
	mul r2, r3
	str r2, [sp, #4]
	ldrsb r1, [r5, r1]
	ldr r2, [sp, #8]
	mul r1, r2
	str r1, [sp, #8]
	ldr r1, [r4, #0]
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r0, [sp, #4]
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r4, #8]
	add sp, #0x1c
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225094

	.rodata


	.global Unk_ov12_02238E9C
Unk_ov12_02238E9C: ; 0x02238E9C
	.incbin "incbin/overlay12_rodata.bin", 0x908, 0x918 - 0x908

	.global Unk_ov12_02238EAC
Unk_ov12_02238EAC: ; 0x02238EAC
	.incbin "incbin/overlay12_rodata.bin", 0x918, 0x948 - 0x918

	.global Unk_ov12_02238EDC
Unk_ov12_02238EDC: ; 0x02238EDC
	.incbin "incbin/overlay12_rodata.bin", 0x948, 0x978 - 0x948

	.global Unk_ov12_02238F0C
Unk_ov12_02238F0C: ; 0x02238F0C
	.incbin "incbin/overlay12_rodata.bin", 0x978, 0x9B0 - 0x978

	.global Unk_ov12_02238F44
Unk_ov12_02238F44: ; 0x02238F44
	.incbin "incbin/overlay12_rodata.bin", 0x9B0, 0x9E8 - 0x9B0

	.global Unk_ov12_02238F7C
Unk_ov12_02238F7C: ; 0x02238F7C
	.incbin "incbin/overlay12_rodata.bin", 0x9E8, 0xA58 - 0x9E8

	.global Unk_ov12_02238FEC
Unk_ov12_02238FEC: ; 0x02238FEC
	.incbin "incbin/overlay12_rodata.bin", 0xA58, 0xC08 - 0xA58

	.global Unk_ov12_0223919C
Unk_ov12_0223919C: ; 0x0223919C
	.incbin "incbin/overlay12_rodata.bin", 0xC08, 0xDB8 - 0xC08

	.global Unk_ov12_0223934C
Unk_ov12_0223934C: ; 0x0223934C
	.incbin "incbin/overlay12_rodata.bin", 0xDB8, 0xF68 - 0xDB8

	.global Unk_ov12_022394FC
Unk_ov12_022394FC: ; 0x022394FC
	.incbin "incbin/overlay12_rodata.bin", 0xF68, 0x1118 - 0xF68

	.global Unk_ov12_022396AC
Unk_ov12_022396AC: ; 0x022396AC
	.incbin "incbin/overlay12_rodata.bin", 0x1118, 0x12C8 - 0x1118

	.global Unk_ov12_0223985C
Unk_ov12_0223985C: ; 0x0223985C
	.incbin "incbin/overlay12_rodata.bin", 0x12C8, 0x1478 - 0x12C8

	.global Unk_ov12_02239A0C
Unk_ov12_02239A0C: ; 0x02239A0C
	.incbin "incbin/overlay12_rodata.bin", 0x1478, 0x1628 - 0x1478

	.global Unk_ov12_02239BBC
Unk_ov12_02239BBC: ; 0x02239BBC
	.incbin "incbin/overlay12_rodata.bin", 0x1628, 0x1B0

