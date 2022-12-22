	.include "macros/function.inc"
	.include "include/ov5_021EB1A0.inc"

	

	.text


	thumb_func_start ov5_021EB1A0
ov5_021EB1A0: ; 0x021EB1A0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062920
	ldr r1, _021EB2E4 ; =0x00000107
	cmp r0, r1
	bgt _021EB24A
	bge _021EB29C
	cmp r0, #0x98
	bgt _021EB1DC
	bge _021EB2B0
	cmp r0, #0x15
	bgt _021EB1C2
	bge _021EB29C
	cmp r0, #0
	beq _021EB29C
	b _021EB2C6
_021EB1C2:
	cmp r0, #0x64
	bgt _021EB1D6
	cmp r0, #0x61
	blt _021EB2C6
	beq _021EB29C
	cmp r0, #0x62
	beq _021EB29C
	cmp r0, #0x64
	beq _021EB2C2
	b _021EB2C6
_021EB1D6:
	cmp r0, #0x97
	beq _021EB2B0
	b _021EB2C6
_021EB1DC:
	cmp r0, #0xb0
	bgt _021EB1E8
	bge _021EB29C
	cmp r0, #0x99
	beq _021EB2B0
	b _021EB2C6
_021EB1E8:
	cmp r0, #0xb1
	bgt _021EB1F0
	beq _021EB29C
	b _021EB2C6
_021EB1F0:
	add r1, r0, #0
	sub r1, #0xb2
	cmp r1, #0x22
	bhi _021EB2C6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EB204: ; jump table
	.short _021EB29C - _021EB204 - 2 ; case 0
	.short _021EB29C - _021EB204 - 2 ; case 1
	.short _021EB29C - _021EB204 - 2 ; case 2
	.short _021EB29C - _021EB204 - 2 ; case 3
	.short _021EB2C6 - _021EB204 - 2 ; case 4
	.short _021EB2C6 - _021EB204 - 2 ; case 5
	.short _021EB2C6 - _021EB204 - 2 ; case 6
	.short _021EB2C6 - _021EB204 - 2 ; case 7
	.short _021EB29C - _021EB204 - 2 ; case 8
	.short _021EB29C - _021EB204 - 2 ; case 9
	.short _021EB29C - _021EB204 - 2 ; case 10
	.short _021EB29C - _021EB204 - 2 ; case 11
	.short _021EB2C6 - _021EB204 - 2 ; case 12
	.short _021EB2C6 - _021EB204 - 2 ; case 13
	.short _021EB2C6 - _021EB204 - 2 ; case 14
	.short _021EB2C6 - _021EB204 - 2 ; case 15
	.short _021EB2C6 - _021EB204 - 2 ; case 16
	.short _021EB2A6 - _021EB204 - 2 ; case 17
	.short _021EB29C - _021EB204 - 2 ; case 18
	.short _021EB29C - _021EB204 - 2 ; case 19
	.short _021EB29C - _021EB204 - 2 ; case 20
	.short _021EB29C - _021EB204 - 2 ; case 21
	.short _021EB29C - _021EB204 - 2 ; case 22
	.short _021EB29C - _021EB204 - 2 ; case 23
	.short _021EB2C6 - _021EB204 - 2 ; case 24
	.short _021EB2C6 - _021EB204 - 2 ; case 25
	.short _021EB2C6 - _021EB204 - 2 ; case 26
	.short _021EB2C6 - _021EB204 - 2 ; case 27
	.short _021EB2C6 - _021EB204 - 2 ; case 28
	.short _021EB2C6 - _021EB204 - 2 ; case 29
	.short _021EB2C6 - _021EB204 - 2 ; case 30
	.short _021EB2C6 - _021EB204 - 2 ; case 31
	.short _021EB29C - _021EB204 - 2 ; case 32
	.short _021EB29C - _021EB204 - 2 ; case 33
	.short _021EB29C - _021EB204 - 2 ; case 34
_021EB24A:
	ldr r1, _021EB2E8 ; =0x0000010F
	cmp r0, r1
	bgt _021EB278
	bge _021EB29C
	sub r2, r1, #3
	cmp r0, r2
	bgt _021EB262
	bge _021EB29C
	sub r1, r1, #7
	cmp r0, r1
	beq _021EB2B8
	b _021EB2C6
_021EB262:
	sub r2, r1, #2
	cmp r0, r2
	bgt _021EB270
	sub r1, r1, #2
	cmp r0, r1
	beq _021EB29C
	b _021EB2C6
_021EB270:
	sub r1, r1, #1
	cmp r0, r1
	beq _021EB29C
	b _021EB2C6
_021EB278:
	add r2, r1, #2
	cmp r0, r2
	bgt _021EB288
	bge _021EB29C
	add r1, r1, #1
	cmp r0, r1
	beq _021EB29C
	b _021EB2C6
_021EB288:
	add r2, r1, #3
	cmp r0, r2
	bgt _021EB296
	add r1, r1, #3
	cmp r0, r1
	beq _021EB29C
	b _021EB2C6
_021EB296:
	add r1, r1, #4
	cmp r0, r1
	bne _021EB2C6
_021EB29C:
	add r0, r4, #0
	bl sub_02062AF0
	ldr r0, [r0, #4]
	pop {r4, pc}
_021EB2A6:
	add r0, r4, #0
	bl sub_02062AF0
	ldr r0, [r0, #4]
	pop {r4, pc}
_021EB2B0:
	add r0, r4, #0
	bl ov5_021ECB80
	pop {r4, pc}
_021EB2B8:
	add r0, r4, #0
	bl sub_02062AF0
	ldr r0, [r0, #4]
	pop {r4, pc}
_021EB2C2:
	mov r0, #0
	pop {r4, pc}
_021EB2C6:
	add r0, r4, #0
	bl ov5_021ECD04
	ldr r0, [r0, #4]
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _021EB2E0
	add r0, r4, #0
	bl sub_02062AF0
	ldr r0, [r0, #4]
	pop {r4, pc}
_021EB2E0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021EB2E4: .word 0x00000107
_021EB2E8: .word 0x0000010F
	thumb_func_end ov5_021EB1A0

	thumb_func_start ov5_021EB2EC
ov5_021EB2EC: ; 0x021EB2EC
	push {r3, r4, r5, lr}
	mov r1, #0x10
	add r5, r0, #0
	bl sub_02062ACC
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4, #2]
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECF04
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EB312
	add r0, r5, #0
	bl sub_02062B68
_021EB312:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EB2EC

	thumb_func_start ov5_021EB314
ov5_021EB314: ; 0x021EB314
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #4
	bl ov5_021ECFA4
	pop {r4, pc}
	thumb_func_end ov5_021EB314

	thumb_func_start ov5_021EB328
ov5_021EB328: ; 0x021EB328
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EB340
	add r1, r4, #0
	add r1, #8
	bl ov5_021ED01C
_021EB340:
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECFA4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EB328

	thumb_func_start ov5_021EB354
ov5_021EB354: ; 0x021EB354
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EB396
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021EB376
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECF04
_021EB376:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EB396
	add r1, r4, #0
	add r1, #8
	bl ov5_021ED03C
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov5_021EDEB4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_021EB396:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EB354

	thumb_func_start ov5_021EB398
ov5_021EB398: ; 0x021EB398
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02062AF0
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl sub_02062AF0
	str r0, [sp]
	add r0, r4, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EB402
	cmp r7, #0
	beq _021EB402
	add r0, r4, #0
	bl sub_0206298C
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02062A14
	add r5, r0, #0
	cmp r5, #9
	blt _021EB3D2
	bl GF_AssertFail
_021EB3D2:
	lsl r6, r5, #2
	ldr r5, _021EB408 ; =0x021FF3D4
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0, #2]
	add r0, r4, #0
	bl sub_02062A14
	ldr r1, [sp]
	strb r0, [r1, #3]
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EDEB4
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EC6C0
_021EB402:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB408: .word 0x021FF3D4
	thumb_func_end ov5_021EB398

	thumb_func_start ov5_021EB40C
ov5_021EB40C: ; 0x021EB40C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EB436
	ldr r5, [r5, #4]
	cmp r5, #0
	beq _021EB436
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021EDEB4
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021EC6C0
_021EB436:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EB40C

	thumb_func_start ov5_021EB438
ov5_021EB438: ; 0x021EB438
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EB476
	ldr r5, [r5, #4]
	cmp r5, #0
	beq _021EB476
	add r0, r4, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EB466
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EB466:
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021EDEB4
	add r0, r4, #0
	add r1, r5, #0
	bl ov5_021EC6C0
_021EB476:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EB438

	thumb_func_start ov5_021EB478
ov5_021EB478: ; 0x021EB478
	push {r4, lr}
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EB49C
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
	b _021EB4A2
_021EB49C:
	add r0, r4, #0
	bl ov5_021EC668
_021EB4A2:
	add r0, r4, #0
	mov r1, #0
	bl sub_02021368
	pop {r4, pc}
	thumb_func_end ov5_021EB478

	thumb_func_start ov5_021EB4AC
ov5_021EB4AC: ; 0x021EB4AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EB4D0
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EB4D0:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EB4E4
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xa
	bl sub_02021368
_021EB4E4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EB4AC

	thumb_func_start ov5_021EB4E8
ov5_021EB4E8: ; 0x021EB4E8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EB50C
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EB50C:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EB520
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EB520:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EB4E8

	thumb_func_start ov5_021EB524
ov5_021EB524: ; 0x021EB524
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EB548
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EB548:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EB55C
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EB55C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EB524

	thumb_func_start ov5_021EB560
ov5_021EB560: ; 0x021EB560
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EB584
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EB584:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EB598
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_02021368
_021EB598:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EB560

	thumb_func_start ov5_021EB59C
ov5_021EB59C: ; 0x021EB59C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #2
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021EB5C8
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	mov r0, #0
	strh r0, [r4]
_021EB5C8:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #6
	beq _021EB5D4
	mov r0, #0
	strh r0, [r4]
_021EB5D4:
	add r0, r6, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EB618
	ldr r6, _021EB61C ; =0x021FF35C
	add r3, sp, #0
	ldmia r6!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02021368
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _021EB618
	strh r0, [r4]
_021EB618:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EB61C: .word 0x021FF35C
	thumb_func_end ov5_021EB59C

	thumb_func_start ov5_021EB620
ov5_021EB620: ; 0x021EB620
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #2
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021EB64C
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	mov r0, #0
	strh r0, [r4]
_021EB64C:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _021EB658
	mov r0, #0
	strh r0, [r4]
_021EB658:
	add r0, r6, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EB694
	ldr r6, _021EB698 ; =0x021FF32C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02021368
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _021EB694
	strh r0, [r4]
_021EB694:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021EB698: .word 0x021FF32C
	thumb_func_end ov5_021EB620

	thumb_func_start ov5_021EB69C
ov5_021EB69C: ; 0x021EB69C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #2
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021EB6C8
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	mov r0, #0
	strh r0, [r4]
_021EB6C8:
	mov r0, #3
	ldrsb r0, [r4, r0]
	cmp r0, #8
	beq _021EB6D4
	mov r0, #0
	strh r0, [r4]
_021EB6D4:
	add r0, r6, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EB718
	ldr r6, _021EB71C ; =0x021FF3B4
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0
	ldrsh r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02021368
	mov r0, #0
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4]
	ldrsh r1, [r4, r0]
	lsl r2, r1, #2
	add r1, sp, #0
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _021EB718
	strh r0, [r4]
_021EB718:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021EB71C: .word 0x021FF3B4
	thumb_func_end ov5_021EB69C

	thumb_func_start ov5_021EB720
ov5_021EB720: ; 0x021EB720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02062AF0
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl sub_02062AF0
	str r0, [sp]
	add r0, r4, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EB78A
	cmp r7, #0
	beq _021EB78A
	add r0, r4, #0
	bl sub_0206298C
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02062A14
	add r5, r0, #0
	cmp r5, #0xa
	blt _021EB75A
	bl GF_AssertFail
_021EB75A:
	lsl r6, r5, #2
	ldr r5, _021EB790 ; =0x021FF420
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0, #2]
	add r0, r4, #0
	bl sub_02062A14
	ldr r1, [sp]
	strb r0, [r1, #3]
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EDEB4
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EC6C0
_021EB78A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EB790: .word 0x021FF420
	thumb_func_end ov5_021EB720

	thumb_func_start ov5_021EB794
ov5_021EB794: ; 0x021EB794
	push {r4, lr}
	mov r0, #2
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021EB7A8
	mov r0, #3
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021EB7C0
_021EB7A8:
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
	b _021EB7C6
_021EB7C0:
	add r0, r4, #0
	bl ov5_021EC668
_021EB7C6:
	add r0, r4, #0
	mov r1, #0
	bl sub_02021368
	pop {r4, pc}
	thumb_func_end ov5_021EB794

	thumb_func_start ov5_021EB7D0
ov5_021EB7D0: ; 0x021EB7D0
	push {r4, lr}
	mov r0, #3
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r0, #9
	beq _021EB7EC
	add r0, r4, #0
	mov r1, #4
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EB7EC:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
	pop {r4, pc}
	thumb_func_end ov5_021EB7D0

	thumb_func_start ov5_021EB7F8
ov5_021EB7F8: ; 0x021EB7F8
	push {r3, r4, r5, lr}
	mov r1, #0x10
	add r5, r0, #0
	bl sub_02062ACC
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	strb r0, [r4, #2]
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECF04
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EB830
	add r0, r5, #0
	bl sub_02062B68
_021EB830:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EB7F8

	thumb_func_start ov5_021EB834
ov5_021EB834: ; 0x021EB834
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #4
	bl ov5_021ECFA4
	pop {r4, pc}
	thumb_func_end ov5_021EB834

	thumb_func_start ov5_021EB848
ov5_021EB848: ; 0x021EB848
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EB860
	add r1, r4, #0
	add r1, #8
	bl ov5_021ED01C
_021EB860:
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECFA4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EB848

	thumb_func_start ov5_021EB874
ov5_021EB874: ; 0x021EB874
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EB8B6
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021EB896
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECF04
_021EB896:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EB8B6
	add r1, r4, #0
	add r1, #8
	bl ov5_021ED03C
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov5_021EDEB4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_021EB8B6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EB874

	thumb_func_start ov5_021EB8B8
ov5_021EB8B8: ; 0x021EB8B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r6, [r0, #4]
	add r0, r5, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EB942
	cmp r6, #0
	beq _021EB942
	add r0, r5, #0
	bl sub_0206298C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02062A14
	mov r1, #2
	ldrsb r0, [r4, r1]
	cmp r0, #0
	beq _021EB8FC
	sub r0, r0, #1
	strb r0, [r4, #2]
	add r0, r6, #0
	mov r1, #0
	bl sub_02021368
	b _021EB928
_021EB8FC:
	add r0, r6, #0
	lsl r1, r1, #0xb
	bl sub_02021368
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	cmp r0, #0x20
	blt _021EB928
	mov r0, #0
	strb r0, [r4, #1]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r2, r0, #0x1c
	sub r2, r2, r1
	mov r0, #0x1c
	ror r2, r0
	add r0, r1, r2
	strb r0, [r4, #2]
_021EB928:
	strb r7, [r4]
	add r0, r5, #0
	bl sub_02062A14
	strb r0, [r4, #3]
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021EC6C0
_021EB942:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EB8B8

	thumb_func_start ov5_021EB944
ov5_021EB944: ; 0x021EB944
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl sub_02062AF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EBA08
	cmp r4, #0
	beq _021EBA08
	add r0, r5, #0
	bl sub_0206298C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02062A14
	cmp r0, #0
	bne _021EB9BC
	cmp r7, #1
	bls _021EB982
	mov r0, #1
	str r0, [sp, #4]
	b _021EB986
_021EB982:
	mov r0, #0
	str r0, [sp, #4]
_021EB986:
	add r0, r4, #0
	bl sub_02021358
	ldr r1, [sp, #4]
	cmp r1, r0
	bne _021EB99A
	mov r0, #3
	ldrsb r0, [r6, r0]
	cmp r0, #0
	bne _021EB9B2
_021EB99A:
	ldr r1, [sp, #4]
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
	add r0, r4, #0
	mov r1, #0
	bl sub_02021368
_021EB9B2:
	add r0, r4, #0
	mov r1, #0
	bl sub_02021368
	b _021EB9EE
_021EB9BC:
	cmp r7, #1
	bls _021EB9C6
	mov r0, #1
	str r0, [sp]
	b _021EB9CA
_021EB9C6:
	mov r0, #0
	str r0, [sp]
_021EB9CA:
	add r0, r4, #0
	bl sub_02021358
	ldr r1, [sp]
	cmp r1, r0
	beq _021EB9E4
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EB9E4:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EB9EE:
	strb r7, [r6, #2]
	add r0, r5, #0
	bl sub_02062A14
	strb r0, [r6, #3]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EC6C0
_021EBA08:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EB944

	thumb_func_start ov5_021EBA0C
ov5_021EBA0C: ; 0x021EBA0C
	push {r3, r4, r5, lr}
	mov r1, #0x10
	add r5, r0, #0
	bl sub_02062ACC
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4]
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECF04
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EBA32
	add r0, r5, #0
	bl sub_02062B68
_021EBA32:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EBA0C

	thumb_func_start ov5_021EBA34
ov5_021EBA34: ; 0x021EBA34
	push {r3, r4, lr}
	sub sp, #0xc
	add r2, sp, #0
	mov r1, #0
	str r1, [r2, #0]
	str r1, [r2, #4]
	add r4, r0, #0
	str r1, [r2, #8]
	bl sub_02062AF0
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #4
	bl ov5_021ECFA4
	add r0, r4, #0
	add r1, sp, #0
	bl sub_02063088
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EBA34

	thumb_func_start ov5_021EBA60
ov5_021EBA60: ; 0x021EBA60
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EBA78
	add r1, r4, #0
	add r1, #8
	bl ov5_021ED01C
_021EBA78:
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECFA4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EBA60

	thumb_func_start ov5_021EBA8C
ov5_021EBA8C: ; 0x021EBA8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EBACE
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021EBAAE
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECF04
_021EBAAE:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EBACE
	add r1, r4, #0
	add r1, #8
	bl ov5_021ED03C
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov5_021EDEB4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_021EBACE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EBA8C

	thumb_func_start ov5_021EBAD0
ov5_021EBAD0: ; 0x021EBAD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02062AF0
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl sub_02062AF0
	str r0, [sp]
	add r0, r4, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EBB3A
	cmp r7, #0
	beq _021EBB3A
	add r0, r4, #0
	bl sub_0206298C
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02062A14
	add r5, r0, #0
	cmp r5, #0xa
	blt _021EBB0A
	bl GF_AssertFail
_021EBB0A:
	lsl r6, r5, #2
	ldr r5, _021EBB40 ; =0x021FF3F8
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_02062A14
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EDEB4
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EC6C0
_021EBB3A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EBB40: .word 0x021FF3F8
	thumb_func_end ov5_021EBAD0

	thumb_func_start ov5_021EBB44
ov5_021EBB44: ; 0x021EBB44
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021EBB72
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, pc}
_021EBB72:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021EBB88
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r3, r4, r5, pc}
_021EBB88:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EBBAA
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EC69C
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, pc}
_021EBBAA:
	add r0, r5, #0
	bl ov5_021EC668
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EBB44

	thumb_func_start ov5_021EBBB4
ov5_021EBBB4: ; 0x021EBBB4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021EBBDC
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	b _021EBC12
_021EBBDC:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021EBBF2
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r4, r5, r6, pc}
_021EBBF2:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EBC12
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EC69C
	ldrb r1, [r4, #3]
	mov r0, #1
	bic r1, r0
	strb r1, [r4, #3]
_021EBC12:
	add r0, r6, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EBC26
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_02021368
_021EBC26:
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EBBB4

	thumb_func_start ov5_021EBC28
ov5_021EBC28: ; 0x021EBC28
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EBC4E
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
	b _021EBC64
_021EBC4E:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021EBC64
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021EC69C
_021EBC64:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EBC78
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EBC78:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EBC28

	thumb_func_start ov5_021EBC7C
ov5_021EBC7C: ; 0x021EBC7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EBCA2
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
	b _021EBCB8
_021EBCA2:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021EBCB8
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021EC69C
_021EBCB8:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EBCCC
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EBCCC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EBC7C

	thumb_func_start ov5_021EBCD0
ov5_021EBCD0: ; 0x021EBCD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EBCF6
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
	b _021EBD0C
_021EBCF6:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	bne _021EBD0C
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl ov5_021EC69C
_021EBD0C:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EBD20
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xe
	bl sub_02021368
_021EBD20:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EBCD0

	thumb_func_start ov5_021EBD24
ov5_021EBD24: ; 0x021EBD24
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021EBD52
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	mov r0, #0
	strb r0, [r4, #1]
	b _021EBD68
_021EBD52:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021EBD68
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EC69C
_021EBD68:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #6
	beq _021EBD74
	mov r0, #0
	strb r0, [r4, #1]
_021EBD74:
	add r0, r6, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EBDBA
	ldr r6, _021EBDC0 ; =0x021FF378
	add r3, sp, #0
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
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02021368
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021EBDBA
	mov r0, #0
	strb r0, [r4, #1]
_021EBDBA:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021EBDC0: .word 0x021FF378
	thumb_func_end ov5_021EBD24

	thumb_func_start ov5_021EBDC4
ov5_021EBDC4: ; 0x021EBDC4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021EBDF2
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	mov r0, #0
	strb r0, [r4, #1]
	b _021EBE08
_021EBDF2:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021EBE08
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EC69C
_021EBE08:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #7
	beq _021EBE14
	mov r0, #0
	strb r0, [r4, #1]
_021EBE14:
	add r0, r6, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EBE52
	ldr r6, _021EBE58 ; =0x021FF33C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #1
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02021368
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021EBE52
	mov r0, #0
	strb r0, [r4, #1]
_021EBE52:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021EBE58: .word 0x021FF33C
	thumb_func_end ov5_021EBDC4

	thumb_func_start ov5_021EBE5C
ov5_021EBE5C: ; 0x021EBE5C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r6, r0, #0
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	beq _021EBE8A
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	mov r0, #0
	strb r0, [r4, #1]
	b _021EBEA0
_021EBE8A:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #9
	bne _021EBEA0
	add r0, r3, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r5, #0
	bl ov5_021EC69C
_021EBEA0:
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #8
	beq _021EBEAC
	mov r0, #0
	strb r0, [r4, #1]
_021EBEAC:
	add r0, r6, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EBEF2
	ldr r6, _021EBEF8 ; =0x021FF394
	add r3, sp, #0
	add r2, r3, #0
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #1
	ldrsb r1, [r4, r1]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	bl sub_02021368
	mov r0, #1
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #1]
	ldrsb r0, [r4, r0]
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _021EBEF2
	mov r0, #0
	strb r0, [r4, #1]
_021EBEF2:
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_021EBEF8: .word 0x021FF394
	thumb_func_end ov5_021EBE5C

	thumb_func_start ov5_021EBEFC
ov5_021EBEFC: ; 0x021EBEFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	beq _021EBF22
	add r0, r3, #0
	bl ov5_021EDF24
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
	b _021EBF3A
_021EBF22:
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #9
	beq _021EBF3A
	add r0, r3, #0
	bl ov5_021EDF24
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #4
	bl ov5_021EC674
_021EBF3A:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EBF4E
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EBF4E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EBEFC

	thumb_func_start ov5_021EBF50
ov5_021EBF50: ; 0x021EBF50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	bl sub_02062AF0
	ldr r0, [r0, #4]
	str r0, [sp]
	add r0, r7, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r7, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EBFD2
	ldr r0, [sp]
	cmp r0, #0
	beq _021EBFD2
	add r0, r7, #0
	bl sub_0206298C
	str r0, [sp, #8]
	add r0, r7, #0
	bl sub_02062A14
	str r0, [sp, #4]
	cmp r0, #0xb
	blt _021EBF8E
	bl GF_AssertFail
_021EBF8E:
	mov r1, #2
	ldrsb r2, [r4, r1]
	cmp r2, #0
	bne _021EBFA8
	ldr r0, [sp, #4]
	cmp r0, r2
	beq _021EBFA8
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	bne _021EBFA8
	sub r0, r1, #3
	strb r0, [r4]
_021EBFA8:
	ldr r5, [sp, #4]
	ldr r1, [sp]
	lsl r6, r5, #2
	ldr r5, _021EBFD8 ; =0x021FF448
	ldr r3, [sp, #8]
	ldr r5, [r5, r6]
	add r0, r7, #0
	add r2, r4, #0
	blx r5
	ldr r0, [sp, #8]
	ldr r1, [sp]
	strb r0, [r4]
	ldr r0, [sp, #4]
	strb r0, [r4, #2]
	add r0, r7, #0
	bl ov5_021EDEB4
	ldr r1, [sp]
	add r0, r7, #0
	bl ov5_021EC6C0
_021EBFD2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021EBFD8: .word 0x021FF448
	thumb_func_end ov5_021EBF50

	thumb_func_start ov5_021EBFDC
ov5_021EBFDC: ; 0x021EBFDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r3, #0
	add r4, r2, #0
	add r2, sp, #0
	ldr r3, _021EC064 ; =0x021FF30C
	add r5, r1, #0
	add r7, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r6, #2
	ldr r1, [r7, r0]
	mov r0, #0
	ldrsb r0, [r4, r0]
	cmp r6, r0
	beq _021EC01A
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021EC01A:
	mov r2, #2
	ldrsb r0, [r4, r2]
	cmp r0, #0
	beq _021EC032
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021EC032:
	ldrb r0, [r4, #3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EC056
	add r0, r5, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	ldrb r1, [r4, #3]
	mov r0, #1
	add sp, #0x10
	bic r1, r0
	strb r1, [r4, #3]
	pop {r3, r4, r5, r6, r7, pc}
_021EC056:
	add r0, r5, #0
	lsl r1, r2, #0xb
	bl sub_02021368
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EC064: .word 0x021FF30C
	thumb_func_end ov5_021EBFDC

	thumb_func_start ov5_021EC068
ov5_021EC068: ; 0x021EC068
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov5_021EDF30
	add r4, r0, #0
	mov r0, #0
	ldrsb r1, [r6, r0]
	ldr r0, [sp]
	cmp r0, r1
	bne _021EC08C
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _021EC09E
_021EC08C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	b _021EC0CE
_021EC09E:
	cmp r0, #9
	beq _021EC0B4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	b _021EC0CE
_021EC0B4:
	add r0, r5, #0
	bl sub_02021358
	cmp r4, r0
	beq _021EC0CE
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
_021EC0CE:
	add r0, r7, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EC0E2
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xa
	bl sub_02021368
_021EC0E2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EC068

	thumb_func_start ov5_021EC0E4
ov5_021EC0E4: ; 0x021EC0E4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r0, r3, #0
	add r5, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov5_021EDF30
	add r4, r0, #0
	mov r0, #0
	ldrsb r1, [r6, r0]
	ldr r0, [sp]
	cmp r0, r1
	beq _021EC112
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	b _021EC146
_021EC112:
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r0, #0xa
	beq _021EC12C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
	b _021EC146
_021EC12C:
	add r0, r5, #0
	bl sub_02021358
	cmp r4, r0
	beq _021EC146
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	mov r1, #0
	bl sub_020213A4
_021EC146:
	add r0, r7, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EC15A
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EC15A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EC0E4

	thumb_func_start ov5_021EC15C
ov5_021EC15C: ; 0x021EC15C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02062AF0
	ldr r7, [r0, #4]
	add r0, r4, #0
	bl sub_02062AF0
	str r0, [sp]
	cmp r7, #0
	beq _021EC1D0
	add r0, r4, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC1D0
	add r0, r4, #0
	bl sub_0206298C
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_02062A14
	add r5, r0, #0
	cmp r5, #4
	blt _021EC196
	bl GF_AssertFail
_021EC196:
	lsl r6, r5, #2
	ldr r5, _021EC1D4 ; =0x021FF31C
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EC374
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_02062A14
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EDEB4
	add r0, r4, #0
	add r1, r7, #0
	bl ov5_021EC6C0
_021EC1D0:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EC1D4: .word 0x021FF31C
	thumb_func_end ov5_021EC15C

	thumb_func_start ov5_021EC1D8
ov5_021EC1D8: ; 0x021EC1D8
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021EC1EC
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _021EC202
_021EC1EC:
	ldr r1, _021EC224 ; =0x021FF34C
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02021344
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_020213A4
_021EC202:
	add r0, r4, #0
	bl sub_020213D4
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r0, r1
	bpl _021EC212
	mov r1, #0
_021EC212:
	add r0, r4, #0
	bl sub_020213A4
	add r0, r4, #0
	mov r1, #0
	bl sub_02021368
	pop {r4, pc}
	nop
_021EC224: .word 0x021FF34C
	thumb_func_end ov5_021EC1D8

	thumb_func_start ov5_021EC228
ov5_021EC228: ; 0x021EC228
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021EC23C
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #1
	beq _021EC250
_021EC23C:
	ldr r1, _021EC25C ; =0x021FF34C
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EC250:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
	pop {r4, pc}
	; .align 2, 0
_021EC25C: .word 0x021FF34C
	thumb_func_end ov5_021EC228

	thumb_func_start ov5_021EC260
ov5_021EC260: ; 0x021EC260
	push {r3, r4, r5, lr}
	add r4, r2, #0
	mov r0, #0
	ldrsb r0, [r4, r0]
	add r5, r1, #0
	cmp r3, r0
	bne _021EC276
	mov r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #2
	beq _021EC294
_021EC276:
	ldr r1, _021EC320 ; =0x021FF34C
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	bl sub_02021344
	mov r1, #0xf
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020213A4
	ldrb r1, [r4, #3]
	mov r0, #0xfe
	bic r1, r0
	strb r1, [r4, #3]
_021EC294:
	add r0, r5, #0
	bl sub_020213D4
	add r1, r0, #0
	ldrb r0, [r4, #3]
	lsl r2, r0, #0x18
	lsr r2, r2, #0x19
	beq _021EC2AE
	cmp r2, #1
	beq _021EC2D0
	cmp r2, #2
	beq _021EC2F6
	b _021EC310
_021EC2AE:
	mov r3, #1
	lsl r3, r3, #0xc
	sub r1, r1, r3
	mov r3, #0xa
	lsl r3, r3, #0xc
	cmp r1, r3
	bgt _021EC310
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xfe
	lsl r2, r2, #0x19
	bic r0, r3
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r4, #3]
	b _021EC310
_021EC2D0:
	mov r3, #1
	lsl r3, r3, #0xc
	add r1, r1, r3
	mov r3, #0xf
	lsl r3, r3, #0xc
	cmp r1, r3
	blt _021EC310
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xfe
	lsl r2, r2, #0x19
	bic r0, r3
	lsr r2, r2, #0x18
	orr r0, r2
	strb r0, [r4, #3]
	mov r0, #0
	strb r0, [r4, #1]
	b _021EC310
_021EC2F6:
	mov r0, #1
	ldrsb r2, [r4, r0]
	add r2, r2, #1
	strb r2, [r4, #1]
	ldrsb r0, [r4, r0]
	cmp r0, #0x1e
	blt _021EC310
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r2, [r4, #3]
	mov r0, #0xfe
	bic r2, r0
	strb r2, [r4, #3]
_021EC310:
	add r0, r5, #0
	bl sub_020213A4
	add r0, r5, #0
	mov r1, #0
	bl sub_02021368
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021EC320: .word 0x021FF34C
	thumb_func_end ov5_021EC260

	thumb_func_start ov5_021EC324
ov5_021EC324: ; 0x021EC324
	push {r4, lr}
	mov r0, #0
	ldrsb r0, [r2, r0]
	add r4, r1, #0
	cmp r3, r0
	bne _021EC338
	mov r0, #2
	ldrsb r0, [r2, r0]
	cmp r0, #3
	beq _021EC34E
_021EC338:
	ldr r1, _021EC370 ; =0x021FF34C
	lsl r2, r3, #2
	ldr r1, [r1, r2]
	add r0, r4, #0
	bl sub_02021344
	mov r1, #0xf
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_020213A4
_021EC34E:
	add r0, r4, #0
	bl sub_020213D4
	mov r1, #1
	lsl r1, r1, #0xc
	sub r1, r0, r1
	bpl _021EC35E
	mov r1, #0
_021EC35E:
	add r0, r4, #0
	bl sub_020213A4
	add r0, r4, #0
	mov r1, #0
	bl sub_02021368
	pop {r4, pc}
	nop
_021EC370: .word 0x021FF34C
	thumb_func_end ov5_021EC324

	thumb_func_start ov5_021EC374
ov5_021EC374: ; 0x021EC374
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r2, #0
	add r2, sp, #0
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	add r0, r1, #0
	bl sub_02021394
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r0, r1, #0xc
	cmp r4, #3
	bhi _021EC3DA
	add r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021EC3A4: ; jump table
	.short _021EC3DA - _021EC3A4 - 2 ; case 0
	.short _021EC3AC - _021EC3A4 - 2 ; case 1
	.short _021EC3B8 - _021EC3A4 - 2 ; case 2
	.short _021EC3CA - _021EC3A4 - 2 ; case 3
_021EC3AC:
	cmp r0, #0x18
	blt _021EC3DA
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _021EC3DA
_021EC3B8:
	cmp r0, #0x28
	bge _021EC3C4
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp]
	b _021EC3DA
_021EC3C4:
	ldr r0, _021EC3E8 ; =0xFFFFB000
	str r0, [sp]
	b _021EC3DA
_021EC3CA:
	cmp r0, #0x38
	bge _021EC3D4
	ldr r0, _021EC3EC ; =0xFFFFF000
	str r0, [sp]
	b _021EC3DA
_021EC3D4:
	mov r0, #5
	lsl r0, r0, #0xc
	str r0, [sp]
_021EC3DA:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02063088
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021EC3E8: .word 0xFFFFB000
_021EC3EC: .word 0xFFFFF000
	thumb_func_end ov5_021EC374

	thumb_func_start ov5_021EC3F0
ov5_021EC3F0: ; 0x021EC3F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl sub_02062AF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC450
	cmp r4, #0
	beq _021EC450
	add r0, r5, #0
	bl sub_0206298C
	add r7, r0, #0
	strb r7, [r6]
	add r0, r5, #0
	bl sub_02062A14
	strb r0, [r6, #2]
	add r0, r7, #0
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
	add r0, r4, #0
	mov r1, #0
	bl sub_02021368
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EC6C0
_021EC450:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC3F0

	thumb_func_start ov5_021EC454
ov5_021EC454: ; 0x021EC454
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl sub_02062AF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC4B8
	cmp r4, #0
	beq _021EC4B8
	add r0, r5, #0
	bl sub_0206298C
	strb r0, [r6]
	add r0, r5, #0
	bl sub_02062A14
	strb r0, [r6, #2]
	add r0, r4, #0
	bl sub_02021358
	cmp r0, #0
	beq _021EC49E
	add r0, r4, #0
	mov r1, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EC49E:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EC6C0
_021EC4B8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC454

	thumb_func_start ov5_021EC4BC
ov5_021EC4BC: ; 0x021EC4BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl sub_02062AF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC552
	cmp r4, #0
	beq _021EC552
	add r0, r5, #0
	bl sub_0206298C
	add r7, r0, #0
	add r0, r5, #0
	bl sub_02062A14
	cmp r0, #0
	bne _021EC514
	add r0, r4, #0
	bl sub_02021358
	cmp r0, #1
	beq _021EC508
	add r0, r4, #0
	mov r1, #1
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EC508:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
	b _021EC538
_021EC514:
	add r0, r4, #0
	bl sub_02021358
	cmp r0, #0
	beq _021EC52E
	add r0, r4, #0
	mov r1, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EC52E:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EC538:
	strb r7, [r6]
	add r0, r5, #0
	bl sub_02062A14
	strb r0, [r6, #2]
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EC6C0
_021EC552:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EC4BC

	thumb_func_start ov5_021EC554
ov5_021EC554: ; 0x021EC554
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl sub_02062AF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC5BC
	cmp r4, #0
	beq _021EC5BC
	add r0, r5, #0
	bl sub_0206298C
	mov r1, #0
	ldrsb r1, [r6, r1]
	add r7, r0, #0
	cmp r7, r1
	beq _021EC598
	bl ov5_021EDF18
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02021344
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EC598:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EC6C0
	add r0, r5, #0
	strb r7, [r6]
	bl sub_02062A14
	strb r0, [r6, #2]
_021EC5BC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC554

	thumb_func_start ov5_021EC5C0
ov5_021EC5C0: ; 0x021EC5C0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_02062AF0
	ldr r4, [r0, #4]
	add r0, r5, #0
	bl sub_02062AF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC636
	cmp r4, #0
	beq _021EC636
	add r0, r5, #0
	bl sub_0206298C
	str r0, [sp]
	add r0, r5, #0
	bl sub_02062A14
	add r7, r0, #0
	mov r0, #2
	ldrsb r0, [r6, r0]
	cmp r7, r0
	beq _021EC616
	cmp r7, #0
	bne _021EC606
	add r0, r4, #0
	mov r1, #0
	bl sub_02021344
	b _021EC60E
_021EC606:
	add r0, r4, #0
	mov r1, #1
	bl sub_02021344
_021EC60E:
	add r0, r4, #0
	mov r1, #0
	bl sub_020213A4
_021EC616:
	mov r1, #1
	add r0, r4, #0
	lsl r1, r1, #0xc
	bl sub_02021368
	ldr r0, [sp]
	add r1, r4, #0
	strb r0, [r6]
	add r0, r5, #0
	strb r7, [r6, #2]
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021EC6C0
_021EC636:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EC5C0

	thumb_func_start ov5_021EC638
ov5_021EC638: ; 0x021EC638
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	bl sub_020213D4
	asr r1, r0, #0xb
	lsr r1, r1, #0x14
	add r1, r0, r1
	asr r4, r1, #0xc
	add r0, r4, #0
	add r1, r6, #0
	bl _s32_div_f
	sub r1, r4, r1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020213A4
	add r0, r5, #0
	mov r1, #0
	bl sub_02021368
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC638

	thumb_func_start ov5_021EC668
ov5_021EC668: ; 0x021EC668
	ldr r3, _021EC670 ; =ov5_021EC638
	mov r1, #8
	bx r3
	nop
_021EC670: .word ov5_021EC638
	thumb_func_end ov5_021EC668

	thumb_func_start ov5_021EC674
ov5_021EC674: ; 0x021EC674
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r1, r2, #0
	bl ov5_021EC638
	add r0, r5, #0
	bl sub_020213D4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020213A4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC674

	thumb_func_start ov5_021EC69C
ov5_021EC69C: ; 0x021EC69C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov5_021EC668
	add r0, r5, #0
	bl sub_020213D4
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021344
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020213A4
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EC69C

	thumb_func_start ov5_021EC6C0
ov5_021EC6C0: ; 0x021EC6C0
	push {r4, r5, r6, lr}
	mov r4, #1
	add r6, r1, #0
	lsl r1, r4, #9
	add r5, r0, #0
	bl sub_020628D8
	cmp r0, #1
	bne _021EC6D4
	mov r4, #0
_021EC6D4:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628D8
	cmp r0, #1
	bne _021EC6F2
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020628D8
	cmp r0, #0
	bne _021EC6F2
	mov r4, #0
_021EC6F2:
	lsl r1, r4, #0x18
	add r0, r6, #0
	lsr r1, r1, #0x18
	bl sub_02021320
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC6C0

	thumb_func_start ov5_021EC700
ov5_021EC700: ; 0x021EC700
	push {r4, lr}
	ldr r3, _021EC72C ; =0x021FB51C
	add r2, r1, #0
	ldr r4, [r3, #0]
	ldr r1, _021EC730 ; =0x0000FFFF
	cmp r4, r1
	beq _021EC726
_021EC70E:
	cmp r4, r0
	bne _021EC71E
	add r3, r3, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	pop {r4, pc}
_021EC71E:
	add r3, #0x10
	ldr r4, [r3, #0]
	cmp r4, r1
	bne _021EC70E
_021EC726:
	bl GF_AssertFail
	pop {r4, pc}
	; .align 2, 0
_021EC72C: .word 0x021FB51C
_021EC730: .word 0x0000FFFF
	thumb_func_end ov5_021EC700

	thumb_func_start ov5_021EC734
ov5_021EC734: ; 0x021EC734
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r1, #4
	bl sub_02062ACC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062924
	add r1, sp, #0
	bl ov5_021EC700
	add r0, r5, #0
	add r1, sp, #0
	bl ov5_021F121C
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov5_021EC734

	thumb_func_start ov5_021EC75C
ov5_021EC75C: ; 0x021EC75C
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021EC75C

	thumb_func_start ov5_021EC760
ov5_021EC760: ; 0x021EC760
	push {r4, lr}
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021EC776
	bl ov5_021DF74C
	mov r0, #0
	str r0, [r4, #0]
_021EC776:
	pop {r4, pc}
	thumb_func_end ov5_021EC760

	thumb_func_start ov5_021EC778
ov5_021EC778: ; 0x021EC778
	push {r4, lr}
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021EC78E
	bl ov5_021DF74C
	mov r0, #0
	str r0, [r4, #0]
_021EC78E:
	pop {r4, pc}
	thumb_func_end ov5_021EC778

	thumb_func_start ov5_021EC790
ov5_021EC790: ; 0x021EC790
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02062924
	add r1, sp, #0
	bl ov5_021EC700
	add r0, r5, #0
	add r1, sp, #0
	bl ov5_021F121C
	str r0, [r4, #0]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC790

	thumb_func_start ov5_021EC7B8
ov5_021EC7B8: ; 0x021EC7B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #4
	bl sub_02062ACC
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021F2438
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC7B8

	thumb_func_start ov5_021EC7D0
ov5_021EC7D0: ; 0x021EC7D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021EC7E4
	bl GF_AssertFail
_021EC7E4:
	add r0, r5, #0
	bl ov5_021F2438
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC7D0

	thumb_func_start ov5_021EC7F0
ov5_021EC7F0: ; 0x021EC7F0
	push {r4, lr}
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov5_021F247C
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov5_021EC7F0

	thumb_func_start ov5_021EC804
ov5_021EC804: ; 0x021EC804
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_020213F4
	mov r2, #0x1f
	mov r1, #1
	lsl r2, r2, #0x10
	add r4, r0, #0
	bl NNSi_G3dModifyPolygonAttrMask
	ldr r1, [r5, #0x10]
	add r0, r4, #0
	bl NNS_G3dMdlSetMdlAlphaAll
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC804

	thumb_func_start ov5_021EC824
ov5_021EC824: ; 0x021EC824
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r5, r0, #0
	bl sub_02062ACC
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	strb r0, [r4, #2]
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECF04
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EC852
	ldr r1, _021EC854 ; =ov5_021EC804
	add r2, r4, #0
	bl sub_02021444
	add r0, r5, #0
	bl sub_02062B68
_021EC852:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021EC854: .word ov5_021EC804
	thumb_func_end ov5_021EC824

	thumb_func_start ov5_021EC858
ov5_021EC858: ; 0x021EC858
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r1, r0, #0
	add r0, r4, #0
	add r1, r1, #4
	bl ov5_021ECFA4
	pop {r4, pc}
	thumb_func_end ov5_021EC858

	thumb_func_start ov5_021EC86C
ov5_021EC86C: ; 0x021EC86C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EC884
	add r1, r4, #0
	add r1, #8
	bl ov5_021ED01C
_021EC884:
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECFA4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EC86C

	thumb_func_start ov5_021EC898
ov5_021EC898: ; 0x021EC898
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC8E4
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021EC8BA
	add r0, r5, #0
	add r1, r4, #4
	bl ov5_021ECF04
_021EC8BA:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021EC8E4
	add r1, r4, #0
	add r1, #8
	bl ov5_021ED03C
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl ov5_021EDEB4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
	ldr r0, [r4, #4]
	ldr r1, _021EC8E8 ; =ov5_021EC804
	add r2, r4, #0
	bl sub_02021444
_021EC8E4:
	pop {r3, r4, r5, pc}
	nop
_021EC8E8: .word ov5_021EC804
	thumb_func_end ov5_021EC898

	thumb_func_start ov5_021EC8EC
ov5_021EC8EC: ; 0x021EC8EC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC934
	ldr r6, [r4, #4]
	cmp r6, #0
	beq _021EC934
	ldr r0, [r4, #0x10]
	cmp r0, #0x1f
	bhs _021EC910
	add r0, r0, #1
	str r0, [r4, #0x10]
_021EC910:
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021EC924
	mov r1, #1
	add r0, r6, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021EC924:
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r6, #0
	bl ov5_021EC6C0
_021EC934:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC8EC

	thumb_func_start ov5_021EC938
ov5_021EC938: ; 0x021EC938
	push {r3, r4, r5, lr}
	mov r1, #0x14
	add r4, r0, #0
	bl sub_02062ACC
	add r5, r0, #0
	add r1, r5, #0
	add r0, r4, #0
	add r1, #8
	bl ov5_021ECF04
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021EC95A
	add r0, r4, #0
	bl sub_02062B68
_021EC95A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EC938

	thumb_func_start ov5_021EC95C
ov5_021EC95C: ; 0x021EC95C
	push {r4, lr}
	add r4, r0, #0
	bl sub_02062AF0
	add r1, r0, #0
	add r0, r4, #0
	add r1, #8
	bl ov5_021ECFA4
	pop {r4, pc}
	thumb_func_end ov5_021EC95C

	thumb_func_start ov5_021EC970
ov5_021EC970: ; 0x021EC970
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EC988
	add r1, r4, #0
	add r1, #0xc
	bl ov5_021ED01C
_021EC988:
	add r4, #8
	add r0, r5, #0
	add r1, r4, #0
	bl ov5_021ECFA4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628BC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC970

	thumb_func_start ov5_021EC9A0
ov5_021EC9A0: ; 0x021EC9A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021EC9E4
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021EC9C4
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl ov5_021ECF04
_021EC9C4:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EC9E4
	add r1, r4, #0
	add r1, #0xc
	bl ov5_021ED03C
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov5_021EDEB4
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl sub_020628C4
_021EC9E4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EC9A0

	thumb_func_start ov5_021EC9E8
ov5_021EC9E8: ; 0x021EC9E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	bl sub_02062AF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov5_021EDD94
	cmp r0, #1
	beq _021ECA68
	ldr r7, [r4, #8]
	cmp r7, #0
	beq _021ECA68
	add r0, r5, #0
	bl ov5_021ECD38
	cmp r0, #0
	bne _021ECA18
	mov r1, #1
	add r0, r7, #0
	lsl r1, r1, #0xc
	bl sub_02021368
_021ECA18:
	ldr r6, _021ECA6C ; =0x021FF474
	add r3, sp, #0
	mov r2, #8
_021ECA1E:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021ECA1E
	add r0, r5, #0
	add r1, sp, #0x40
	bl sub_02063078
	ldr r1, [sp, #0x44]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _021ECA58
	ldr r0, [r4, #0]
	asr r0, r0, #1
	lsl r1, r0, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	str r0, [sp, #0x44]
	ldr r0, [r4, #0]
	add r1, r0, #1
	mov r0, #0x1f
	and r0, r1
	str r0, [r4, #0]
	ldr r0, [sp, #0x44]
	add r1, sp, #0x40
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02063088
_021ECA58:
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021EDEB4
	add r0, r5, #0
	add r1, r7, #0
	bl ov5_021EC6C0
_021ECA68:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021ECA6C: .word 0x021FF474
	thumb_func_end ov5_021EC9E8

	.rodata


	.global Unk_ov5_021FF30C
Unk_ov5_021FF30C: ; 0x021FF30C
	.incbin "incbin/overlay5_rodata.bin", 0x69F8, 0x6A08 - 0x69F8

	.global Unk_ov5_021FF31C
Unk_ov5_021FF31C: ; 0x021FF31C
	.incbin "incbin/overlay5_rodata.bin", 0x6A08, 0x6A18 - 0x6A08

	.global Unk_ov5_021FF32C
Unk_ov5_021FF32C: ; 0x021FF32C
	.incbin "incbin/overlay5_rodata.bin", 0x6A18, 0x6A28 - 0x6A18

	.global Unk_ov5_021FF33C
Unk_ov5_021FF33C: ; 0x021FF33C
	.incbin "incbin/overlay5_rodata.bin", 0x6A28, 0x6A38 - 0x6A28

	.global Unk_ov5_021FF34C
Unk_ov5_021FF34C: ; 0x021FF34C
	.incbin "incbin/overlay5_rodata.bin", 0x6A38, 0x6A48 - 0x6A38

	.global Unk_ov5_021FF35C
Unk_ov5_021FF35C: ; 0x021FF35C
	.incbin "incbin/overlay5_rodata.bin", 0x6A48, 0x6A64 - 0x6A48

	.global Unk_ov5_021FF378
Unk_ov5_021FF378: ; 0x021FF378
	.incbin "incbin/overlay5_rodata.bin", 0x6A64, 0x6A80 - 0x6A64

	.global Unk_ov5_021FF394
Unk_ov5_021FF394: ; 0x021FF394
	.incbin "incbin/overlay5_rodata.bin", 0x6A80, 0x6AA0 - 0x6A80

	.global Unk_ov5_021FF3B4
Unk_ov5_021FF3B4: ; 0x021FF3B4
	.incbin "incbin/overlay5_rodata.bin", 0x6AA0, 0x6AC0 - 0x6AA0

	.global Unk_ov5_021FF3D4
Unk_ov5_021FF3D4: ; 0x021FF3D4
	.incbin "incbin/overlay5_rodata.bin", 0x6AC0, 0x6AE4 - 0x6AC0

	.global Unk_ov5_021FF3F8
Unk_ov5_021FF3F8: ; 0x021FF3F8
	.incbin "incbin/overlay5_rodata.bin", 0x6AE4, 0x6B0C - 0x6AE4

	.global Unk_ov5_021FF420
Unk_ov5_021FF420: ; 0x021FF420
	.incbin "incbin/overlay5_rodata.bin", 0x6B0C, 0x6B34 - 0x6B0C

	.global Unk_ov5_021FF448
Unk_ov5_021FF448: ; 0x021FF448
	.incbin "incbin/overlay5_rodata.bin", 0x6B34, 0x6B60 - 0x6B34

	.global Unk_ov5_021FF474
Unk_ov5_021FF474: ; 0x021FF474
	.incbin "incbin/overlay5_rodata.bin", 0x6B60, 0x40

