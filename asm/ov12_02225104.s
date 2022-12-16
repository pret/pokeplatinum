	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov12_02225104
ov12_02225104: ; 0x02225104
	ldr r3, _0222510C ; =ov12_0222325C
	ldr r0, [r0, #0]
	mov r2, #5
	bx r3
	; .align 2, 0
_0222510C: .word ov12_0222325C
	thumb_func_end ov12_02225104

	thumb_func_start ov12_02225110
ov12_02225110: ; 0x02225110
	mov r0, #1
	bx lr
	thumb_func_end ov12_02225110

	thumb_func_start ov12_02225114
ov12_02225114: ; 0x02225114
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	add r0, r4, #0
	add r1, sp, #8
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #0xc]
	cmp r0, #1
	bne _02225140
	mov r0, #1
	strb r0, [r4, #8]
_02225140:
	ldr r0, [sp, #8]
	cmp r0, #3
	bgt _0222515E
	cmp r0, #0
	blt _022251CA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225156: ; jump table
	.short _02225162 - _02225156 - 2 ; case 0
	.short _0222518E - _02225156 - 2 ; case 1
	.short _022251CA - _02225156 - 2 ; case 2
	.short _022251CA - _02225156 - 2 ; case 3
_0222515E:
	cmp r0, #0xff
	b _022251CA
_02225162:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014874
	add r2, sp, #0
	mov r0, #0
	mov r1, #8
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2]
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #2]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #4]
	b _022251CA
_0222518E:
	ldr r0, [sp, #0x10]
	add r2, sp, #0
	strh r0, [r2]
	ldr r0, [sp, #0x14]
	mov r1, #8
	strh r0, [r2, #2]
	ldr r0, [sp, #0x18]
	strh r0, [r2, #4]
	mov r0, #0
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2]
	mov r0, #2
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	mul r0, r3
	strh r0, [r2, #2]
	mov r0, #4
	ldrsh r3, [r2, r0]
	ldrsb r0, [r4, r1]
	add r1, sp, #0
	mul r0, r3
	strh r0, [r2, #4]
	add r0, r5, #0
	bl sub_02014874
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, pc}
_022251CA:
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x2c]
	sub r0, r2, r0
	strh r0, [r1]
	mov r0, #2
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x30]
	sub r0, r2, r0
	strh r0, [r1, #2]
	mov r0, #4
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x34]
	sub r0, r2, r0
	strh r0, [r1, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014874
	mov r0, #1
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov12_02225114

	thumb_func_start ov12_022251F8
ov12_022251F8: ; 0x022251F8
	mov r0, #1
	bx lr
	thumb_func_end ov12_022251F8

	thumb_func_start ov12_022251FC
ov12_022251FC: ; 0x022251FC
	mov r0, #1
	bx lr
	thumb_func_end ov12_022251FC

	thumb_func_start ov12_02225200
ov12_02225200: ; 0x02225200
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r1, sp, #0xc
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _0222522C
	mov r0, #1
	strb r0, [r4, #8]
_0222522C:
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bgt _0222524A
	cmp r0, #0
	blt _022252AA
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225242: ; jump table
	.short _0222524E - _02225242 - 2 ; case 0
	.short _02225272 - _02225242 - 2 ; case 1
	.short _02225294 - _02225242 - 2 ; case 2
	.short _022252A0 - _02225242 - 2 ; case 3
_0222524A:
	cmp r0, #0xff
	b _022252AA
_0222524E:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020148A8
	mov r0, #8
	ldrsb r1, [r4, r0]
	ldr r2, [sp]
	mul r1, r2
	str r1, [sp]
	ldrsb r1, [r4, r0]
	ldr r2, [sp, #4]
	mul r1, r2
	str r1, [sp, #4]
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #8]
	mul r0, r1
	str r0, [sp, #8]
	b _022252AA
_02225272:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #8
	ldrsb r6, [r4, r3]
	mul r6, r2
	str r6, [sp]
	ldrsb r2, [r4, r3]
	mul r2, r1
	str r2, [sp, #4]
	ldrsb r1, [r4, r3]
	mul r1, r0
	str r1, [sp, #8]
	b _022252AA
_02225294:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl ov12_02235508
	b _022252AA
_022252A0:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0
	bl ov12_02235508
_022252AA:
	ldr r1, [sp]
	ldr r0, [r4, #0x2c]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x30]
	sub r0, r1, r0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014890
	mov r0, #1
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_02225200

	thumb_func_start ov12_022252C8
ov12_022252C8: ; 0x022252C8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r1, sp, #4
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _022252F0
	mov r0, #1
	strb r0, [r4, #8]
_022252F0:
	ldr r0, [sp, #4]
	cmp r0, #3
	bgt _0222530E
	cmp r0, #0
	blt _0222533C
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225306: ; jump table
	.short _02225312 - _02225306 - 2 ; case 0
	.short _0222532A - _02225306 - 2 ; case 1
	.short _0222533C - _02225306 - 2 ; case 2
	.short _0222533C - _02225306 - 2 ; case 3
_0222530E:
	cmp r0, #0xff
	b _0222533C
_02225312:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020148F4
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
	b _0222533C
_0222532A:
	ldr r0, [sp, #0xc]
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
_0222533C:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020148DC
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022252C8

	thumb_func_start ov12_0222534C
ov12_0222534C: ; 0x0222534C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r1, sp, #4
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _02225374
	mov r0, #1
	strb r0, [r4, #8]
_02225374:
	ldr r0, [sp, #4]
	cmp r0, #3
	bgt _02225392
	cmp r0, #0
	blt _022253BC
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222538A: ; jump table
	.short _02225396 - _0222538A - 2 ; case 0
	.short _022253AC - _0222538A - 2 ; case 1
	.short _022253BC - _0222538A - 2 ; case 2
	.short _022253BC - _0222538A - 2 ; case 3
_02225392:
	cmp r0, #0xff
	b _022253BC
_02225396:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014924
	add r1, sp, #0
	mov r0, #8
	ldrh r2, [r1]
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
	b _022253BC
_022253AC:
	ldr r0, [sp, #0xc]
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #8
	ldrh r2, [r1]
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
_022253BC:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014910
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0222534C

	thumb_func_start ov12_022253CC
ov12_022253CC: ; 0x022253CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r1, sp, #4
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _022253F4
	mov r0, #1
	strb r0, [r4, #8]
_022253F4:
	ldr r1, [sp, #4]
	cmp r1, #3
	bgt _02225412
	cmp r1, #0
	blt _02225426
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222540A: ; jump table
	.short _02225416 - _0222540A - 2 ; case 0
	.short _02225420 - _0222540A - 2 ; case 1
	.short _02225426 - _0222540A - 2 ; case 2
	.short _02225426 - _0222540A - 2 ; case 3
_02225412:
	cmp r1, #0xff
	b _02225426
_02225416:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014954
	b _02225426
_02225420:
	ldr r1, [sp, #0xc]
	add r0, sp, #0
	strh r1, [r0]
_02225426:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02014940
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_022253CC

	thumb_func_start ov12_02225434
ov12_02225434: ; 0x02225434
	mov r0, #1
	bx lr
	thumb_func_end ov12_02225434

	thumb_func_start ov12_02225438
ov12_02225438: ; 0x02225438
	mov r0, #1
	bx lr
	thumb_func_end ov12_02225438

	thumb_func_start ov12_0222543C
ov12_0222543C: ; 0x0222543C
	mov r0, #1
	bx lr
	thumb_func_end ov12_0222543C

	thumb_func_start ov12_02225440
ov12_02225440: ; 0x02225440
	mov r0, #1
	bx lr
	thumb_func_end ov12_02225440

	thumb_func_start ov12_02225444
ov12_02225444: ; 0x02225444
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	add r4, r1, #0
	add r1, sp, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r1, sp, #0xc
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _02225470
	mov r0, #1
	strb r0, [r4, #8]
_02225470:
	ldr r0, [sp, #0xc]
	cmp r0, #4
	bgt _02225490
	cmp r0, #0
	blt _0222552A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02225486: ; jump table
	.short _02225494 - _02225486 - 2 ; case 0
	.short _022254B8 - _02225486 - 2 ; case 1
	.short _02225514 - _02225486 - 2 ; case 2
	.short _02225520 - _02225486 - 2 ; case 3
	.short _022254DA - _02225486 - 2 ; case 4
_02225490:
	cmp r0, #0xff
	b _0222552A
_02225494:
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02014988
	mov r0, #8
	ldrsb r1, [r4, r0]
	ldr r2, [sp]
	mul r1, r2
	str r1, [sp]
	ldrsb r1, [r4, r0]
	ldr r2, [sp, #4]
	mul r1, r2
	str r1, [sp, #4]
	ldrsb r0, [r4, r0]
	ldr r1, [sp, #8]
	mul r0, r1
	str r0, [sp, #8]
	b _0222552A
_022254B8:
	ldr r2, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #8
	ldrsb r5, [r4, r3]
	mul r5, r2
	str r5, [sp]
	ldrsb r2, [r4, r3]
	mul r2, r1
	str r2, [sp, #4]
	ldrsb r1, [r4, r3]
	mul r1, r0
	str r1, [sp, #8]
	b _0222552A
_022254DA:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0
	bl ov12_02235508
	ldr r1, [sp]
	ldr r5, [sp, #0x14]
	add r0, r1, #0
	ldr r6, [sp, #0x18]
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, [sp, #4]
	str r0, [sp]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	str r0, [sp, #8]
	b _0222552A
_02225514:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x24]
	add r2, sp, #0
	bl ov12_02235508
	b _0222552A
_02225520:
	ldr r0, [r4, #0]
	ldr r1, [r4, #0x28]
	add r2, sp, #0
	bl ov12_02235508
_0222552A:
	ldr r1, [sp]
	ldr r0, [r4, #0x2c]
	sub r0, r1, r0
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, [r4, #0x30]
	sub r0, r1, r0
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [r4, #0x34]
	sub r0, r1, r0
	str r0, [sp, #8]
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02014970
	mov r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02225444

	thumb_func_start ov12_02225550
ov12_02225550: ; 0x02225550
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0
	strh r1, [r0]
	add r0, r4, #0
	add r1, sp, #4
	bl ov12_02225104
	add r0, r4, #0
	bl ov12_02224FC4
	strb r0, [r4, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _02225578
	mov r0, #1
	strb r0, [r4, #8]
_02225578:
	ldr r0, [sp, #4]
	cmp r0, #3
	bgt _02225596
	cmp r0, #0
	blt _022255C4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222558E: ; jump table
	.short _0222559A - _0222558E - 2 ; case 0
	.short _022255B2 - _0222558E - 2 ; case 1
	.short _022255C4 - _0222558E - 2 ; case 2
	.short _022255C4 - _0222558E - 2 ; case 3
_02225596:
	cmp r0, #0xff
	b _022255C4
_0222559A:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020149D4
	add r1, sp, #0
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
	b _022255C4
_022255B2:
	ldr r0, [sp, #0xc]
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #0
	ldrsh r2, [r1, r0]
	mov r0, #8
	ldrsb r0, [r4, r0]
	mul r0, r2
	strh r0, [r1]
_022255C4:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_020149BC
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02225550

	thumb_func_start ov12_022255D4
ov12_022255D4: ; 0x022255D4
	push {r3, lr}
	add r3, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	ldr r2, _022255E8 ; =0x02239D6C
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_022255E8: .word 0x02239D6C
	thumb_func_end ov12_022255D4

	thumb_func_start ov12_022255EC
ov12_022255EC: ; 0x022255EC
	push {r3, r4, r5}
	sub sp, #0x3c
	ldr r4, _02225610 ; =0x02239DA4
	add r5, r0, #0
	add r3, sp, #0
	mov r2, #7
_022255F8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022255F8
	ldr r0, [r4, #0]
	lsl r1, r5, #2
	str r0, [r3, #0]
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x3c
	pop {r3, r4, r5}
	bx lr
	; .align 2, 0
_02225610: .word 0x02239DA4
	thumb_func_end ov12_022255EC

	thumb_func_start ov12_02225614
ov12_02225614: ; 0x02225614
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _0222563C ; =0x0000FEFE
	add r5, r4, #0
_0222561C:
	add r0, r4, #0
	bl ov12_022255EC
	add r4, r4, #1
	cmp r0, r6
	beq _0222562E
	add r5, r5, #1
	cmp r5, #0xff
	blt _0222561C
_0222562E:
	cmp r5, #0xff
	blt _02225636
	mov r0, #0
	pop {r4, r5, r6, pc}
_02225636:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0222563C: .word 0x0000FEFE
	thumb_func_end ov12_02225614

	.rodata


	.global Unk_ov12_02239D6C
Unk_ov12_02239D6C: ; 0x02239D6C
	.incbin "incbin/overlay12_rodata.bin", 0x17D8, 0x1810 - 0x17D8

	.global Unk_ov12_02239DA4
Unk_ov12_02239DA4: ; 0x02239DA4
	.incbin "incbin/overlay12_rodata.bin", 0x1810, 0x3C

