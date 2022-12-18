	.include "macros/function.inc"
	.include "include/ov12_02235254.inc"

	

	.text


	thumb_func_start ov12_02235254
ov12_02235254: ; 0x02235254
	ldr r3, _02235258 ; =ov12_022232B8
	bx r3
	; .align 2, 0
_02235258: .word ov12_022232B8
	thumb_func_end ov12_02235254

	thumb_func_start ov12_0223525C
ov12_0223525C: ; 0x0223525C
	push {r4, lr}
	bl ov12_022232B8
	cmp r0, #5
	bhi _02235284
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235272: ; jump table
	.short _0223527E - _02235272 - 2 ; case 0
	.short _02235282 - _02235272 - 2 ; case 1
	.short _0223527E - _02235272 - 2 ; case 2
	.short _02235282 - _02235272 - 2 ; case 3
	.short _0223527E - _02235272 - 2 ; case 4
	.short _02235282 - _02235272 - 2 ; case 5
_0223527E:
	mov r4, #3
	b _02235284
_02235282:
	mov r4, #4
_02235284:
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov12_0223525C

	thumb_func_start ov12_02235288
ov12_02235288: ; 0x02235288
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_02235290:
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_022232B8
	cmp r0, r5
	bne _022352A0
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_022352A0:
	add r4, r4, #1
	cmp r4, #4
	blt _02235290
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02235288

	thumb_func_start ov12_022352AC
ov12_022352AC: ; 0x022352AC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov12_022232B8
	add r5, r0, #0
	cmp r5, #1
	bls _0223530C
	mov r4, #0
_022352BC:
	add r0, r6, #0
	add r1, r4, #0
	bl ov12_022232B8
	cmp r5, #5
	bhi _02235300
	add r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022352D4: ; jump table
	.short _02235300 - _022352D4 - 2 ; case 0
	.short _02235300 - _022352D4 - 2 ; case 1
	.short _022352E0 - _022352D4 - 2 ; case 2
	.short _022352F0 - _022352D4 - 2 ; case 3
	.short _022352E8 - _022352D4 - 2 ; case 4
	.short _022352F8 - _022352D4 - 2 ; case 5
_022352E0:
	cmp r0, #4
	bne _02235300
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_022352E8:
	cmp r0, #2
	bne _02235300
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_022352F0:
	cmp r0, #5
	bne _02235300
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_022352F8:
	cmp r0, #3
	bne _02235300
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_02235300:
	add r4, r4, #1
	cmp r4, #4
	blt _022352BC
	bl sub_02022974
	add r0, r5, #0
_0223530C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022352AC

	thumb_func_start ov12_02235310
ov12_02235310: ; 0x02235310
	push {r3, lr}
	cmp r0, #5
	bhi _02235346
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235322: ; jump table
	.short _0223532E - _02235322 - 2 ; case 0
	.short _02235332 - _02235322 - 2 ; case 1
	.short _02235336 - _02235322 - 2 ; case 2
	.short _0223533A - _02235322 - 2 ; case 3
	.short _0223533E - _02235322 - 2 ; case 4
	.short _02235342 - _02235322 - 2 ; case 5
_0223532E:
	mov r0, #1
	pop {r3, pc}
_02235332:
	mov r0, #0
	pop {r3, pc}
_02235336:
	mov r0, #3
	pop {r3, pc}
_0223533A:
	mov r0, #2
	pop {r3, pc}
_0223533E:
	mov r0, #5
	pop {r3, pc}
_02235342:
	mov r0, #4
	pop {r3, pc}
_02235346:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov12_02235310

	thumb_func_start ov12_02235350
ov12_02235350: ; 0x02235350
	push {r3, r4, r5, r6}
	sub sp, #0x30
	ldr r6, _022353A4 ; =0x0223A230
	add r5, sp, #0x18
	mov r4, #0xc
_0223535A:
	ldrh r3, [r6]
	add r6, r6, #2
	strh r3, [r5]
	add r5, r5, #2
	sub r4, r4, #1
	bne _0223535A
	ldr r6, _022353A8 ; =0x0223A248
	add r5, sp, #0
	mov r4, #0xc
_0223536C:
	ldrh r3, [r6]
	add r6, r6, #2
	strh r3, [r5]
	add r5, r5, #2
	sub r4, r4, #1
	bne _0223536C
	cmp r1, #0
	beq _02235390
	lsl r3, r0, #2
	add r0, sp, #0
	add r1, r0, r3
	ldrh r0, [r0, r3]
	add sp, #0x30
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	pop {r3, r4, r5, r6}
	bx lr
_02235390:
	lsl r3, r0, #2
	add r0, sp, #0x18
	add r1, r0, r3
	ldrh r0, [r0, r3]
	strh r0, [r2]
	ldrh r0, [r1, #2]
	strh r0, [r2, #2]
	add sp, #0x30
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
_022353A4: .word 0x0223A230
_022353A8: .word 0x0223A248
	thumb_func_end ov12_02235350

	thumb_func_start ov12_022353AC
ov12_022353AC: ; 0x022353AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov12_02235254
	add r6, r0, #0
	add r0, r5, #0
	bl ov12_0221FDD4
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl ov12_02235350
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022353AC

	thumb_func_start ov12_022353CC
ov12_022353CC: ; 0x022353CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x114
	add r7, r2, #0
	mov r2, #0x12
	str r3, [sp]
	ldr r6, _02235440 ; =0x0223A260
	add r5, r0, #0
	add r4, r1, #0
	add r3, sp, #4
	lsl r2, r2, #4
_022353E8:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022353E8
	cmp r7, #1
	bne _0223540A
	cmp r5, #0
	beq _022353FE
	cmp r5, #1
	beq _02235402
	b _02235406
_022353FE:
	mov r5, #6
	b _0223540A
_02235402:
	mov r5, #7
	b _0223540A
_02235406:
	bl sub_02022974
_0223540A:
	mov r0, #0x12
	lsl r0, r0, #4
	add r1, sp, #4
	mul r0, r5
	add r0, r1, r0
	ldr r1, _02235444 ; =0x00000908
	add r1, sp
	ldr r1, [r1, #0x10]
	lsl r2, r1, #1
	ldr r1, [sp]
	add r2, r1, r2
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	add r1, r0, r3
	ldr r2, [r1, #8]
	ldr r1, [r1, #4]
	ldr r0, [r0, r3]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r4, #8]
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x114
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02235440: .word 0x0223A260
_02235444: .word 0x00000908
	thumb_func_end ov12_022353CC

	thumb_func_start ov12_02235448
ov12_02235448: ; 0x02235448
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235448

	thumb_func_start ov12_02235458
ov12_02235458: ; 0x02235458
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #1
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235458

	thumb_func_start ov12_02235468
ov12_02235468: ; 0x02235468
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #2
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235468

	thumb_func_start ov12_02235478
ov12_02235478: ; 0x02235478
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #3
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235478

	thumb_func_start ov12_02235488
ov12_02235488: ; 0x02235488
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #4
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235488

	thumb_func_start ov12_02235498
ov12_02235498: ; 0x02235498
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #5
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_02235498

	thumb_func_start ov12_022354A8
ov12_022354A8: ; 0x022354A8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #6
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354A8

	thumb_func_start ov12_022354B8
ov12_022354B8: ; 0x022354B8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #7
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354B8

	thumb_func_start ov12_022354C8
ov12_022354C8: ; 0x022354C8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #8
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354C8

	thumb_func_start ov12_022354D8
ov12_022354D8: ; 0x022354D8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #9
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354D8

	thumb_func_start ov12_022354E8
ov12_022354E8: ; 0x022354E8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0xa
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354E8

	thumb_func_start ov12_022354F8
ov12_022354F8: ; 0x022354F8
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0xb
	str r4, [sp]
	bl ov12_022353CC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov12_022354F8

	thumb_func_start ov12_02235508
ov12_02235508: ; 0x02235508
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235448
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235508

	thumb_func_start ov12_02235538
ov12_02235538: ; 0x02235538
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235458
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235538

	thumb_func_start ov12_02235568
ov12_02235568: ; 0x02235568
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235468
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235568

	thumb_func_start ov12_02235598
ov12_02235598: ; 0x02235598
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235478
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235598

	thumb_func_start ov12_022355C8
ov12_022355C8: ; 0x022355C8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235488
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022355C8

	thumb_func_start ov12_022355F8
ov12_022355F8: ; 0x022355F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_02235498
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022355F8

	thumb_func_start ov12_02235628
ov12_02235628: ; 0x02235628
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235628

	thumb_func_start ov12_02235658
ov12_02235658: ; 0x02235658
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235658

	thumb_func_start ov12_02235688
ov12_02235688: ; 0x02235688
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354C8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235688

	thumb_func_start ov12_022356B8
ov12_022356B8: ; 0x022356B8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354D8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022356B8

	thumb_func_start ov12_022356E8
ov12_022356E8: ; 0x022356E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354E8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_022356E8

	thumb_func_start ov12_02235718
ov12_02235718: ; 0x02235718
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r3, r7, #0
	bl ov12_022354F8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02235718

	thumb_func_start ov12_02235748
ov12_02235748: ; 0x02235748
	mov r2, #0
	ldr r1, _02235754 ; =0x000068D0
	str r2, [r0, #0]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	; .align 2, 0
_02235754: .word 0x000068D0
	thumb_func_end ov12_02235748

	thumb_func_start ov12_02235758
ov12_02235758: ; 0x02235758
	push {r3, lr}
	bl ov12_02235448
	pop {r3, pc}
	thumb_func_end ov12_02235758

	thumb_func_start ov12_02235760
ov12_02235760: ; 0x02235760
	push {r3, lr}
	add r3, r1, #0
	cmp r0, #0
	bne _02235770
	add r0, r3, #0
	bl sub_02014770
	pop {r3, pc}
_02235770:
	ldr r2, _0223577C ; =0x0223A224
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	pop {r3, pc}
	; .align 2, 0
_0223577C: .word 0x0223A224
	thumb_func_end ov12_02235760

	thumb_func_start ov12_02235780
ov12_02235780: ; 0x02235780
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0
	mvn r1, r1
	add r4, r2, #0
	cmp r5, r1
	bne _02235790
	mov r5, #0x1a
_02235790:
	mov r1, #0
	mvn r1, r1
	cmp r4, r1
	bne _0223579A
	mov r4, #5
_0223579A:
	mov r1, #2
	bl ov12_022233EC
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	orr r2, r1
	ldr r0, _022357B8 ; =0x04000050
	mov r1, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020BF55C
	pop {r3, r4, r5, pc}
	nop
_022357B8: .word 0x04000050
	thumb_func_end ov12_02235780

	thumb_func_start ov12_022357BC
ov12_022357BC: ; 0x022357BC
	push {r3, r4, r5, lr}
	mov r0, #0
	add r4, r2, #0
	mvn r0, r0
	add r5, r1, #0
	cmp r4, r0
	bne _022357CC
	mov r4, #0x1a
_022357CC:
	mov r0, #0
	mvn r0, r0
	cmp r3, r0
	bne _022357D6
	mov r3, #5
_022357D6:
	ldr r0, _022357E8 ; =0x04000050
	str r3, [sp]
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
	bl sub_020BF55C
	pop {r3, r4, r5, pc}
	nop
_022357E8: .word 0x04000050
	thumb_func_end ov12_022357BC

	thumb_func_start ov12_022357EC
ov12_022357EC: ; 0x022357EC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r5, r1, #0
	mvn r0, r0
	add r4, r2, #0
	cmp r5, r0
	bne _022357FE
	mov r5, #0x1a
_022357FE:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02235808
	mov r4, #5
_02235808:
	add r0, r6, #0
	mov r1, #2
	bl ov12_022233EC
	mov r1, #1
	add r2, r1, #0
	lsl r2, r0
	mov r0, #0x11
	add r7, r2, #0
	orr r7, r0
	add r0, r6, #0
	bl ov12_022233EC
	mov r1, #1
	lsl r1, r0
	ldr r0, _02235834 ; =0x04000050
	add r2, r7, #0
	add r3, r5, #0
	str r4, [sp]
	bl sub_020BF55C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02235834: .word 0x04000050
	thumb_func_end ov12_022357EC

	thumb_func_start ov12_02235838
ov12_02235838: ; 0x02235838
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	bne _0223588C
	mov r1, #1
	bl ov12_022233EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_022233EC
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_022233EC
	add r2, r0, #0
	mov r0, #1
	add r3, r0, #0
	add r1, r0, #0
	lsl r3, r7
	lsl r0, r2
	lsl r1, r6
	orr r0, r3
	orr r1, r0
	mov r0, #0x11
	add r2, r1, #0
	orr r2, r0
	ldr r0, _0223590C ; =0x04000048
	ldrh r1, [r0]
	mov r0, #0x3f
	bic r1, r0
	orr r1, r2
	cmp r4, #0
	beq _02235886
	mov r0, #0x20
	orr r1, r0
_02235886:
	ldr r0, _0223590C ; =0x04000048
	strh r1, [r0]
	b _022358D6
_0223588C:
	mov r1, #1
	bl ov12_022233EC
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	bl ov12_022233EC
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl ov12_022233EC
	add r2, r0, #0
	mov r0, #1
	add r3, r0, #0
	add r1, r0, #0
	lsl r0, r2
	lsl r3, r7
	lsl r1, r6
	orr r0, r3
	orr r1, r0
	ldr r2, _0223590C ; =0x04000048
	add r3, r1, #0
	mov r0, #0x11
	orr r3, r0
	ldrh r1, [r2]
	ldr r0, _02235910 ; =0xFFFFC0FF
	and r1, r0
	lsl r0, r3, #8
	orr r1, r0
	cmp r4, #0
	beq _022358D2
	lsr r0, r2, #0xd
	orr r1, r0
_022358D2:
	ldr r0, _0223590C ; =0x04000048
	strh r1, [r0]
_022358D6:
	add r0, r5, #0
	mov r1, #0
	bl ov12_022233EC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov12_022233EC
	mov r1, #1
	add r2, r1, #0
	lsl r1, r0
	lsl r2, r4
	orr r1, r2
	add r3, r1, #0
	ldr r1, _02235914 ; =0x0400004A
	mov r0, #0x11
	orr r3, r0
	ldrh r2, [r1]
	mov r0, #0x3f
	bic r2, r0
	orr r2, r3
	mov r0, #0x20
	orr r0, r2
	strh r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223590C: .word 0x04000048
_02235910: .word 0xFFFFC0FF
_02235914: .word 0x0400004A
	thumb_func_end ov12_02235838

	thumb_func_start ov12_02235918
ov12_02235918: ; 0x02235918
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	cmp r5, #0
	bne _0223592A
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
_0223592A:
	bl sub_02008B38
	cmp r0, #0
	bne _0223593A
	mov r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
_0223593A:
	add r0, r5, #0
	mov r1, #0
	bl sub_020080C0
	strh r0, [r4]
	add r0, r5, #0
	mov r1, #1
	bl sub_020080C0
	strh r0, [r4, #2]
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02235918

	thumb_func_start ov12_02235950
ov12_02235950: ; 0x02235950
	ldr r3, _02235958 ; =sub_0200D550
	add r2, r1, #2
	bx r3
	nop
_02235958: .word sub_0200D550
	thumb_func_end ov12_02235950

	thumb_func_start ov12_0223595C
ov12_0223595C: ; 0x0223595C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	add r5, r0, #0
	strb r1, [r4, #3]
	str r5, [r4, #4]
	bl ov12_02220308
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov12_022202EC
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov12_02220300
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl ov12_02220278
	str r0, [r4, #0x14]
	add r0, r5, #0
	bl ov12_0222332C
	str r0, [r4, #0x18]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_0223595C

	thumb_func_start ov12_02235998
ov12_02235998: ; 0x02235998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r4, r3, #0
	mov r1, #0
	str r1, [r4, #0]
	mov r1, #0x40
	and r1, r7
	add r6, r0, #0
	add r5, r2, #0
	cmp r1, #0x40
	beq _022359B2
	b _02235AD4
_022359B2:
	bl ov12_02220240
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _022359F4
	str r7, [r1, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_022359F4:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022352AC
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02235A3C
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235A3C:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232B8
	bl ov12_02235310
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02235288
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02235A8E
	str r7, [r1, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235A8E:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022352AC
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232FC
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #8]
	ldr r0, [r4, #0]
	add r2, r0, #0
	mul r2, r1
	add r2, r5, r2
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _02235BB6
	str r7, [r2, #0x10]
	ldr r0, [r4, #0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02235AD4:
	mov r1, #0x20
	and r1, r7
	cmp r1, #0x20
	bne _02235BD4
	bl ov12_02220240
	add r7, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022352AC
	str r0, [sp, #8]
	cmp r0, r7
	beq _02235B2E
	ldr r1, [sp, #8]
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02235B2E
	ldr r1, [sp, #8]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235B2E:
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_022232B8
	bl ov12_02235310
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_02235288
	str r0, [sp]
	cmp r0, r7
	beq _02235B86
	ldr r1, [sp]
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02235B86
	ldr r1, [sp]
	str r1, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235B86:
	ldr r1, [sp]
	add r0, r6, #0
	bl ov12_022352AC
	str r0, [sp, #0xc]
	cmp r0, r7
	beq _02235BB6
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov12_022232FC
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #8]
	ldr r0, [r4, #0]
	add r2, r0, #0
	mul r2, r1
	add r2, r5, r2
	ldr r0, [r2, #8]
	cmp r0, #0
	bne _02235BB8
_02235BB6:
	b _02235D6E
_02235BB8:
	ldr r0, [sp, #0xc]
	str r0, [r2, #0x10]
	ldr r0, [r4, #0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_02235BD4:
	mov r1, #2
	and r1, r7
	cmp r1, #2
	bne _02235C2E
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02235C2E
	add r0, r6, #0
	bl ov12_02220240
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235C2E:
	add r0, r6, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02235CA4
	mov r0, #4
	and r0, r7
	cmp r0, #4
	bne _02235CA4
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02235CA4
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235CA4:
	mov r0, #8
	and r0, r7
	cmp r0, #8
	bne _02235D00
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #8]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02235D00
	add r0, r6, #0
	bl ov12_02220248
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0x10]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235D00:
	add r0, r6, #0
	bl ov12_02223364
	cmp r0, #1
	bne _02235D6E
	mov r0, #0x10
	and r0, r7
	cmp r0, #0x10
	bne _02235D6E
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022232FC
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #8]
	ldr r0, [r4, #0]
	mul r1, r0
	add r0, r5, r1
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02235D6E
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_022352AC
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #0x10]
	ldr r0, [r4, #0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #8]
	add r1, r1, #4
	bl ov12_02235918
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235D6E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02235998

	thumb_func_start ov12_02235D74
ov12_02235D74: ; 0x02235D74
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r3, #0
	mov r1, #0
	str r1, [r4, #0]
	mov r1, #2
	and r1, r6
	add r7, r0, #0
	add r5, r2, #0
	cmp r1, #2
	bne _02235DB4
	ldr r1, [r4, #0]
	bl ov12_022202C0
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0xc]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #0xc]
	add r1, r1, #4
	bl ov12_02235950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235DB4:
	mov r0, #4
	and r0, r6
	cmp r0, #4
	bne _02235DE8
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov12_022202C0
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0xc]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #0xc]
	add r1, r1, #4
	bl ov12_02235950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235DE8:
	mov r0, #8
	and r0, r6
	cmp r0, #8
	bne _02235E1C
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov12_022202C0
	add r2, r0, #0
	ldr r0, [r4, #0]
	mov r3, #0x14
	add r1, r0, #0
	mul r1, r3
	add r0, r5, r1
	str r2, [r0, #0xc]
	ldr r0, [r4, #0]
	add r1, r0, #0
	mul r1, r3
	add r1, r5, r1
	ldr r0, [r1, #0xc]
	add r1, r1, #4
	bl ov12_02235950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235E1C:
	mov r0, #0x10
	and r0, r6
	cmp r0, #0x10
	bne _02235E4C
	ldr r1, [r4, #0]
	add r0, r7, #0
	bl ov12_022202C0
	ldr r2, [r4, #0]
	mov r1, #0x14
	add r3, r2, #0
	mul r3, r1
	add r2, r5, r3
	str r0, [r2, #0xc]
	ldr r0, [r4, #0]
	mul r1, r0
	add r1, r5, r1
	ldr r0, [r1, #0xc]
	add r1, r1, #4
	bl ov12_02235950
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_02235E4C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02235D74

	thumb_func_start ov12_02235E50
ov12_02235E50: ; 0x02235E50
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r4, #0
	bne _02235E5E
	bl sub_02022974
_02235E5E:
	add r0, r4, #0
	bl ov12_0221FDE4
	add r1, r5, #0
	bl sub_02018144
	add r4, r0, #0
	bne _02235E72
	bl sub_02022974
_02235E72:
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov12_02235E50

	thumb_func_start ov12_02235E80
ov12_02235E80: ; 0x02235E80
	push {r4, lr}
	add r4, r0, #0
	bne _02235E8A
	bl sub_02022974
_02235E8A:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov12_02235E80

	.rodata


	.global Unk_ov12_0223A218
Unk_ov12_0223A218: ; 0x0223A218
	.incbin "incbin/overlay12_rodata.bin", 0x1C84, 0x1C90 - 0x1C84

	.global Unk_ov12_0223A224
Unk_ov12_0223A224: ; 0x0223A224
	.incbin "incbin/overlay12_rodata.bin", 0x1C90, 0x1C9C - 0x1C90

	.global Unk_ov12_0223A230
Unk_ov12_0223A230: ; 0x0223A230
	.incbin "incbin/overlay12_rodata.bin", 0x1C9C, 0x1CB4 - 0x1C9C

	.global Unk_ov12_0223A248
Unk_ov12_0223A248: ; 0x0223A248
	.incbin "incbin/overlay12_rodata.bin", 0x1CB4, 0x1CCC - 0x1CB4

	.global Unk_ov12_0223A260
Unk_ov12_0223A260: ; 0x0223A260
	.incbin "incbin/overlay12_rodata.bin", 0x1CCC, 0x900

