	.include "macros/function.inc"


	.text

	thumb_func_start ov45_022561C0
ov45_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =FUN_02254238
	ldr r0, _022561CC ; =ov45_022561D4
	ldr r1, _022561D0 ; =ov45_02256354
	bx r3
	; .align 2, 0
_022561C8: .word FUN_02254238
_022561CC: .word ov45_022561D4
_022561D0: .word ov45_02256354
	thumb_func_end ov45_022561C0

	thumb_func_start ov45_022561D4
ov45_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x34
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl ov45_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov45_02256318
	add r1, r4, #0
	mov r2, #1
	bl sub_0200D9E8
	cmp r0, #0
	beq _0225620C
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620C:
	add r0, r4, #0
	bl sub_020181C4
_02256212:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256218: .word ov45_02256318
	thumb_func_end ov45_022561D4

	thumb_func_start ov45_0225621C
ov45_0225621C: ; 0x0225621C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r6, r2, #0
	bl FUN_02254540
	str r0, [r5, #0x10]
	bl sub_020568D8
	strb r0, [r5, #3]
	ldr r0, [r5, #0x10]
	add r1, sp, #8
	add r2, sp, #4
	bl sub_020568E0
	ldr r0, [sp, #8]
	strb r0, [r5, #6]
	ldr r0, [sp, #4]
	strb r0, [r5, #7]
	add r0, r5, #3
	bl ov45_022562C0
	add r0, r5, #0
	add r0, #8
	add r1, r5, #3
	add r2, r6, #0
	bl ov45_022566EC
	cmp r0, #0
	beq _022562B0
	mov r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #8
	str r0, [sp]
	ldr r0, _022562B8 ; =0x02256CAC
	ldr r2, _022562BC ; =ov45_02256310
	mov r1, #6
	add r3, r5, #0
	bl FUN_02255ACC
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	mov r1, #2
	mov r2, #4
	bl FUN_02255C5C
	ldr r0, [r5, #0x14]
	mov r1, #3
	mov r2, #4
	bl FUN_02255C5C
	mov r1, #4
	ldr r0, [r5, #0x14]
	add r2, r1, #0
	bl FUN_02255C5C
	ldr r0, [r5, #0x14]
	mov r1, #5
	mov r2, #4
	bl FUN_02255C5C
	mov r0, #0
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	add sp, #0xc
	str r4, [r5, #0xc]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_022562B0:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_022562B8: .word 0x02256CAC
_022562BC: .word ov45_02256310
	thumb_func_end ov45_0225621C

	thumb_func_start ov45_022562C0
ov45_022562C0: ; 0x022562C0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, sp, #0
	bl sub_02013880
	ldr r0, [sp]
	cmp r0, #0x18
	blo _022562DA
	mov r1, #0x18
	bl sub_020E2178
	str r1, [sp]
_022562DA:
	ldr r0, [sp, #4]
	cmp r0, #0x3c
	blo _022562EA
	ldr r0, [sp]
	mov r1, #0x3c
	bl sub_020E2178
	str r1, [sp]
_022562EA:
	ldr r0, [sp]
	strb r0, [r4, #1]
	ldr r0, [sp, #4]
	strb r0, [r4, #2]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov45_022562C0

	thumb_func_start ov45_022562F8
ov45_022562F8: ; 0x022562F8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_02255B34
	ldr r0, [r4, #8]
	bl ov45_02256728
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov45_022562F8

	thumb_func_start ov45_02256310
ov45_02256310: ; 0x02256310
	str r0, [r3, #0x18]
	str r1, [r3, #0x1c]
	bx lr
	; .align 2, 0
	thumb_func_end ov45_02256310

	thumb_func_start ov45_02256318
ov45_02256318: ; 0x02256318
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #5
	bhs _0225634E
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl FUN_02254518
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02256350 ; =0x02256C98
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225634E
	add r0, r4, #0
	bl ov45_022562F8
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0xc]
	bl FUN_02254260
_0225634E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256350: .word 0x02256C98
	thumb_func_end ov45_02256318

	thumb_func_start ov45_02256354
ov45_02256354: ; 0x02256354
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov45_02256354

	thumb_func_start ov45_0225635C
ov45_0225635C: ; 0x0225635C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _02256364
	b _02256366
_02256364:
	mov r1, #4
_02256366:
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov45_0225635C

	thumb_func_start ov45_02256370
ov45_02256370: ; 0x02256370
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256380
	cmp r0, #1
	beq _02256390
	b _022563BA
_02256380:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov45_02256918
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563BA
_02256390:
	ldr r0, [r4, #8]
	mov r1, #0
	bl ov45_0225693C
	cmp r0, #0
	beq _022563BA
	ldr r0, [r4, #0xc]
	bl FUN_0225424C
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _022563B2
	add r0, r4, #0
	mov r1, #2
	bl ov45_0225635C
	b _022563BA
_022563B2:
	add r0, r4, #0
	mov r1, #1
	bl ov45_0225635C
_022563BA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov45_02256370

	thumb_func_start ov45_022563C0
ov45_022563C0: ; 0x022563C0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022563D4
	mov r1, #4
	bl ov45_0225635C
	mov r0, #0
	pop {r4, pc}
_022563D4:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563E0
	cmp r0, #1
	beq _022564B2
	b _022564C6
_022563E0:
	ldr r1, [r4, #0x1c]
	cmp r1, #1
	bne _0225641A
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0225641A
	mov r0, #1
	strb r0, [r4, #3]
	add r0, r4, #3
	bl ov45_022562C0
	mov r2, #6
	mov r3, #7
	ldrsb r2, [r4, r2]
	ldrsb r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_020568F4
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov45_02256918
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022564C6
_0225641A:
	cmp r1, #1
	bne _02256430
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _02256430
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, _022564CC ; =0x0000066E
	bl FUN_02254424
	b _022564C6
_02256430:
	cmp r1, #1
	beq _02256438
	cmp r1, #7
	bne _022564C6
_02256438:
	ldr r0, [r4, #0x18]
	cmp r0, #5
	bhi _022564A4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225644A: ; jump table
	.short _022564A4 - _0225644A - 2 ; case 0
	.short _022564A4 - _0225644A - 2 ; case 1
	.short _02256456 - _0225644A - 2 ; case 2
	.short _0225646A - _0225644A - 2 ; case 3
	.short _0225647E - _0225644A - 2 ; case 4
	.short _02256492 - _0225644A - 2 ; case 5
_02256456:
	mov r0, #6
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #6]
	ldrsb r0, [r4, r0]
	cmp r0, #0x17
	ble _022564A4
	mov r0, #0
	strb r0, [r4, #6]
	b _022564A4
_0225646A:
	mov r0, #6
	ldrsb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, #6]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _022564A4
	mov r0, #0x17
	strb r0, [r4, #6]
	b _022564A4
_0225647E:
	mov r0, #7
	ldrsb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, #7]
	ldrsb r0, [r4, r0]
	cmp r0, #0x3b
	ble _022564A4
	mov r0, #0
	strb r0, [r4, #7]
	b _022564A4
_02256492:
	mov r0, #7
	ldrsb r1, [r4, r0]
	sub r1, r1, #1
	strb r1, [r4, #7]
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bge _022564A4
	mov r0, #0x3b
	strb r0, [r4, #7]
_022564A4:
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov45_02256918
	b _022564C6
_022564B2:
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov45_0225693C
	cmp r0, #0
	beq _022564C6
	add r0, r4, #0
	mov r1, #2
	bl ov45_0225635C
_022564C6:
	mov r0, #0
	pop {r4, pc}
	nop
_022564CC: .word 0x0000066E
	thumb_func_end ov45_022563C0

	thumb_func_start ov45_022564D0
ov45_022564D0: ; 0x022564D0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022564E8
	mov r1, #4
	bl ov45_0225635C
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_022564E8:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022564F4
	cmp r0, #1
	beq _02256582
	b _02256592
_022564F4:
	add r0, r4, #3
	bl ov45_022566CC
	cmp r0, #0
	beq _0225650C
	add r0, r4, #0
	mov r1, #3
	bl ov45_0225635C
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_0225650C:
	ldr r1, [r4, #0x1c]
	cmp r1, #1
	bne _02256532
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _02256532
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov45_02256918
	mov r0, #0
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #1
	bl ov45_0225635C
	b _02256592
_02256532:
	cmp r1, #1
	bne _02256544
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02256544
	ldr r0, _02256598 ; =0x0000066E
	bl FUN_02254424
	b _02256592
_02256544:
	add r0, r4, #0
	bl ov45_02256664
	cmp r0, #0
	bne _02256554
	add r0, r4, #0
	bl ov45_02256668
_02256554:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov45_02256680
	cmp r0, #0
	beq _02256592
	mov r0, #5
	ldrsb r0, [r4, r0]
	ldr r1, [sp]
	cmp r1, r0
	beq _02256592
	strb r1, [r4, #5]
	ldr r0, [sp, #4]
	mov r1, #4
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov45_02256918
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256592
_02256582:
	ldr r0, [r4, #8]
	mov r1, #4
	bl ov45_0225693C
	cmp r0, #0
	beq _02256592
	mov r0, #0
	strb r0, [r4, #1]
_02256592:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02256598: .word 0x0000066E
	thumb_func_end ov45_022564D0

	thumb_func_start ov45_0225659C
ov45_0225659C: ; 0x0225659C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _022565B4
	mov r1, #4
	bl ov45_0225635C
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_022565B4:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022565C0
	cmp r0, #1
	beq _022565D0
	b _0225665C
_022565C0:
	ldr r0, [r4, #8]
	mov r1, #5
	bl ov45_02256918
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _0225665C
_022565D0:
	add r0, r4, #3
	bl ov45_022566CC
	cmp r0, #0
	bne _022565F6
	ldr r0, [r4, #8]
	bl ov45_02256C90
	ldr r0, [r4, #8]
	mov r1, #2
	bl ov45_02256918
	add r0, r4, #0
	mov r1, #2
	bl ov45_0225635C
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_022565F6:
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _02256626
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _02256626
	mov r0, #0
	strb r0, [r4, #3]
	ldr r0, [r4, #8]
	bl ov45_02256C90
	ldr r0, [r4, #8]
	mov r1, #3
	bl ov45_02256918
	mov r0, #0
	str r0, [r4, #0x1c]
	add r0, r4, #0
	mov r1, #1
	bl ov45_0225635C
	add sp, #8
	mov r0, #0
	pop {r4, pc}
_02256626:
	add r0, r4, #0
	bl ov45_02256664
	cmp r0, #0
	bne _02256636
	add r0, r4, #0
	bl ov45_02256668
_02256636:
	add r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov45_02256680
	cmp r0, #0
	beq _0225665C
	mov r0, #5
	ldrsb r0, [r4, r0]
	ldr r1, [sp]
	cmp r1, r0
	beq _0225665C
	strb r1, [r4, #5]
	ldr r0, [sp, #4]
	mov r1, #4
	strb r0, [r4, #4]
	ldr r0, [r4, #8]
	bl ov45_02256918
_0225665C:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov45_0225659C

	thumb_func_start ov45_02256664
ov45_02256664: ; 0x02256664
	ldr r0, [r0, #0x2c]
	bx lr
	thumb_func_end ov45_02256664

	thumb_func_start ov45_02256668
ov45_02256668: ; 0x02256668
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _0225667E
	add r0, r4, #0
	add r0, #0x20
	bl sub_02013880
	mov r0, #1
	str r0, [r4, #0x30]
_0225667E:
	pop {r4, pc}
	thumb_func_end ov45_02256668

	thumb_func_start ov45_02256680
ov45_02256680: ; 0x02256680
	ldr r3, [r0, #0x30]
	cmp r3, #0
	beq _02256692
	ldr r3, [r0, #0x20]
	str r3, [r1, #0]
	ldr r0, [r0, #0x24]
	str r0, [r2, #0]
	mov r0, #1
	bx lr
_02256692:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov45_02256680

	thumb_func_start ov45_02256698
ov45_02256698: ; 0x02256698
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022566A8
	cmp r0, #1
	beq _022566B8
	b _022566C6
_022566A8:
	ldr r0, [r4, #8]
	mov r1, #1
	bl ov45_02256918
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022566C6
_022566B8:
	ldr r0, [r4, #8]
	bl ov45_02256948
	cmp r0, #0
	beq _022566C6
	mov r0, #1
	pop {r4, pc}
_022566C6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov45_02256698

	thumb_func_start ov45_022566CC
ov45_022566CC: ; 0x022566CC
	mov r1, #1
	mov r2, #3
	ldrsb r3, [r0, r1]
	ldrsb r2, [r0, r2]
	cmp r3, r2
	bne _022566E4
	mov r2, #2
	ldrsb r3, [r0, r2]
	mov r2, #4
	ldrsb r0, [r0, r2]
	cmp r3, r0
	beq _022566E6
_022566E4:
	mov r1, #0
_022566E6:
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov45_022566CC

	thumb_func_start ov45_022566EC
ov45_022566EC: ; 0x022566EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #8
	mov r1, #0x9c
	bl sub_02018144
	add r4, r0, #0
	beq _02256722
	add r0, #8
	mov r1, #8
	bl FUN_02255090
	str r5, [r4, #0]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x30]
	add r0, r4, #0
	add r1, r5, #0
	bl ov45_0225673C
	str r4, [r6, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
_02256722:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov45_022566EC

	thumb_func_start ov45_02256728
ov45_02256728: ; 0x02256728
	push {r4, lr}
	add r4, r0, #0
	beq _02256738
	bl ov45_02256864
	add r0, r4, #0
	bl sub_020181C4
_02256738:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov45_02256728

	thumb_func_start ov45_0225673C
ov45_0225673C: ; 0x0225673C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #0
	str r3, [sp]
	mov r2, #1
	add r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #2
	bl sub_02006EC0
	mov r0, #0
	str r0, [sp]
	mov r2, #1
	mov r3, #0xa
	str r2, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0xc
	mov r1, #0x4f
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x68
	mov r1, #0xc
	mov r2, #0x4d
	mov r3, #0x4e
	bl FUN_02255958
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x7c
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl FUN_02255958
	add r0, r5, #0
	str r0, [sp, #0x14]
	add r0, #0x68
	str r0, [sp, #0x14]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0x7c
	ldr r7, _02256860 ; =0x02256D34
	mov r4, #0
	add r6, r5, #0
	str r0, [sp, #0x10]
_022567AA:
	cmp r4, #9
	blt _022567C0
	cmp r4, #0xc
	bgt _022567C0
	ldr r0, [r5, #0x30]
	ldr r2, [sp, #0x10]
	add r1, r7, #0
	bl FUN_02255810
	str r0, [r6, #0x34]
	b _022567D2
_022567C0:
	ldr r0, [r5, #0x30]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl FUN_02255810
	mov r1, #0x50
	str r0, [r6, #0x34]
	bl FUN_02255940
_022567D2:
	add r4, r4, #1
	add r7, #0x10
	add r6, r6, #4
	cmp r4, #0xd
	blt _022567AA
	ldr r0, [sp, #0xc]
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r5, #0x34]
	beq _02256832
	mov r1, #3
	bl FUN_022558C4
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl FUN_022558C4
	ldr r0, [r5, #0x44]
	mov r1, #5
	bl FUN_022558C4
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl FUN_02255914
	ldr r0, [r5, #0x4c]
	mov r1, #1
	bl FUN_02255914
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl FUN_02255914
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl FUN_02255914
	ldr r1, [sp, #0xc]
	mov r2, #1
	ldrsb r1, [r1, r2]
	ldr r2, [sp, #0xc]
	mov r3, #2
	ldrsb r2, [r2, r3]
	add r0, r5, #0
	bl ov45_02256894
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02256832:
	mov r1, #2
	bl FUN_022558C4
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl FUN_022558C4
	ldr r0, [r5, #0x44]
	mov r1, #4
	bl FUN_022558C4
	ldr r1, [sp, #0xc]
	mov r2, #3
	ldrsb r1, [r1, r2]
	ldr r2, [sp, #0xc]
	mov r3, #4
	ldrsb r2, [r2, r3]
	add r0, r5, #0
	bl ov45_02256894
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256860: .word 0x02256D34
	thumb_func_end ov45_0225673C

	thumb_func_start ov45_02256864
ov45_02256864: ; 0x02256864
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_0225686C:
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _02256878
	ldr r0, [r6, #0x30]
	bl FUN_022558B0
_02256878:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xd
	blt _0225686C
	add r0, r6, #0
	add r0, #0x68
	bl FUN_022559B0
	add r6, #0x7c
	add r0, r6, #0
	bl FUN_022559B0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov45_02256864

	thumb_func_start ov45_02256894
ov45_02256894: ; 0x02256894
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0225690C ; =0x04000280
	mov r3, #0
	strh r3, [r0]
	str r1, [r0, #0x10]
	add r1, r0, #0
	add r4, r2, #0
	mov r2, #0xa
	add r1, #0x18
	str r2, [r1, #0]
	str r3, [r1, #4]
	lsr r1, r0, #0xb
_022568AE:
	ldrh r2, [r0]
	tst r2, r1
	bne _022568AE
	ldr r1, _02256910 ; =0x040002A0
	ldr r0, [r5, #0x58]
	ldr r1, [r1, #0]
	bl FUN_022558C4
	ldr r2, _0225690C ; =0x04000280
	lsr r0, r2, #0xb
_022568C2:
	ldrh r1, [r2]
	tst r1, r0
	bne _022568C2
	ldr r1, _02256914 ; =0x040002A8
	ldr r0, [r5, #0x5c]
	ldr r1, [r1, #0]
	bl FUN_022558C4
	ldr r0, _0225690C ; =0x04000280
	mov r3, #0
	strh r3, [r0]
	add r1, r0, #0
	str r4, [r0, #0x10]
	mov r2, #0xa
	add r1, #0x18
	str r2, [r1, #0]
	str r3, [r1, #4]
	lsr r1, r0, #0xb
_022568E6:
	ldrh r2, [r0]
	tst r2, r1
	bne _022568E6
	ldr r1, _02256910 ; =0x040002A0
	ldr r0, [r5, #0x60]
	ldr r1, [r1, #0]
	bl FUN_022558C4
	ldr r2, _0225690C ; =0x04000280
	lsr r0, r2, #0xb
_022568FA:
	ldrh r1, [r2]
	tst r1, r0
	bne _022568FA
	ldr r1, _02256914 ; =0x040002A8
	ldr r0, [r5, #0x64]
	ldr r1, [r1, #0]
	bl FUN_022558C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225690C: .word 0x04000280
_02256910: .word 0x040002A0
_02256914: .word 0x040002A8
	thumb_func_end ov45_02256894

	thumb_func_start ov45_02256918
ov45_02256918: ; 0x02256918
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _02256938 ; =0x02256CE0
	ldr r3, [r2, #0]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256938: .word 0x02256CE0
	thumb_func_end ov45_02256918

	thumb_func_start ov45_0225693C
ov45_0225693C: ; 0x0225693C
	ldr r3, _02256944 ; =FUN_02255130
	add r0, #8
	bx r3
	nop
_02256944: .word FUN_02255130
	thumb_func_end ov45_0225693C

	thumb_func_start ov45_02256948
ov45_02256948: ; 0x02256948
	ldr r3, _02256950 ; =FUN_02255154
	add r0, #8
	bx r3
	nop
_02256950: .word FUN_02255154
	thumb_func_end ov45_02256948

	thumb_func_start ov45_02256954
ov45_02256954: ; 0x02256954
	push {r4, lr}
	add r4, r0, #0
	bl FUN_0225523C
	add r0, #8
	add r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov45_02256954

	thumb_func_start ov45_02256968
ov45_02256968: ; 0x02256968
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r1, #0
	add r0, r4, #0
	bl FUN_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022569EC ; =0x02256CC4
	mov r1, #6
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x4c
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	mov r0, #0xc
	mov r1, #0x4b
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	ldr r1, _022569F0 ; =0x04001000
	ldr r0, _022569F4 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #4
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r4, #0
	bl ov45_02256954
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_022569EC: .word 0x02256CC4
_022569F0: .word 0x04001000
_022569F4: .word 0xFFFFE0FF
	thumb_func_end ov45_02256968

	thumb_func_start ov45_022569F8
ov45_022569F8: ; 0x022569F8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256A14
	cmp r0, #1
	beq _02256A22
	pop {r3, r4, r5, pc}
_02256A14:
	add r0, r4, #0
	bl ov45_02256C90
	add r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256A22:
	add r0, r4, #0
	mov r1, #5
	bl ov45_0225693C
	cmp r0, #0
	beq _02256A3C
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r5, #0
	bl ov45_02256954
_02256A3C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov45_022569F8

	thumb_func_start ov45_02256A40
ov45_02256A40: ; 0x02256A40
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl FUN_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl FUN_02255240
	add r4, r0, #0
	ldr r0, _02256AB8 ; =0x00000663
	bl FUN_02254424
	ldr r0, [r5, #0x34]
	mov r1, #3
	bl FUN_022558C4
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl FUN_022558C4
	ldr r0, [r5, #0x44]
	mov r1, #5
	bl FUN_022558C4
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl FUN_022558C4
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl FUN_022558C4
	ldr r0, [r5, #0x48]
	mov r1, #1
	bl FUN_02255914
	ldr r0, [r5, #0x4c]
	mov r1, #1
	bl FUN_02255914
	ldr r0, [r5, #0x50]
	mov r1, #1
	bl FUN_02255914
	ldr r0, [r5, #0x54]
	mov r1, #1
	bl FUN_02255914
	mov r1, #1
	mov r2, #2
	ldrsb r1, [r4, r1]
	ldrsb r2, [r4, r2]
	add r0, r5, #0
	bl ov45_02256894
	add r0, r6, #0
	bl ov45_02256954
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256AB8: .word 0x00000663
	thumb_func_end ov45_02256A40

	thumb_func_start ov45_02256ABC
ov45_02256ABC: ; 0x02256ABC
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl FUN_0225523C
	add r5, r0, #0
	add r0, r6, #0
	bl FUN_02255240
	add r4, r0, #0
	ldr r0, _02256B34 ; =0x00000663
	bl FUN_02254424
	ldr r0, [r5, #0x34]
	mov r1, #2
	bl FUN_022558C4
	ldr r0, [r5, #0x40]
	mov r1, #5
	bl FUN_022558C4
	ldr r0, [r5, #0x44]
	mov r1, #4
	bl FUN_022558C4
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl FUN_022558C4
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl FUN_022558C4
	ldr r0, [r5, #0x48]
	mov r1, #0
	bl FUN_02255914
	ldr r0, [r5, #0x4c]
	mov r1, #0
	bl FUN_02255914
	ldr r0, [r5, #0x50]
	mov r1, #0
	bl FUN_02255914
	ldr r0, [r5, #0x54]
	mov r1, #0
	bl FUN_02255914
	mov r1, #3
	mov r2, #4
	ldrsb r1, [r4, r1]
	ldrsb r2, [r4, r2]
	add r0, r5, #0
	bl ov45_02256894
	add r0, r6, #0
	bl ov45_02256954
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256B34: .word 0x00000663
	thumb_func_end ov45_02256ABC

	thumb_func_start ov45_02256B38
ov45_02256B38: ; 0x02256B38
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r2, r0, #0
	ldrb r0, [r2]
	cmp r0, #0
	beq _02256B62
	mov r1, #1
	mov r3, #2
	ldrsb r1, [r2, r1]
	ldrsb r2, [r2, r3]
	add r0, r4, #0
	bl ov45_02256894
	b _02256B70
_02256B62:
	mov r1, #3
	mov r3, #4
	ldrsb r1, [r2, r1]
	ldrsb r2, [r2, r3]
	add r0, r4, #0
	bl ov45_02256894
_02256B70:
	add r0, r5, #0
	bl ov45_02256954
	pop {r3, r4, r5, pc}
	thumb_func_end ov45_02256B38

	thumb_func_start ov45_02256B78
ov45_02256B78: ; 0x02256B78
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl FUN_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl FUN_02255240
	add r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256B9A
	cmp r0, #1
	beq _02256BE4
	pop {r3, r4, r5, pc}
_02256B9A:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0, #0]
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl FUN_022558C4
	ldr r0, [r4, #0x44]
	mov r1, #4
	bl FUN_022558C4
	ldr r0, [r4, #0x38]
	mov r1, #1
	bl FUN_022558C4
	ldr r0, [r4, #0x3c]
	mov r1, #1
	bl FUN_022558C4
	ldr r0, _02256C88 ; =0x00000663
	bl FUN_02254424
	ldr r0, _02256C8C ; =0x00000126
	mov r1, #0
	bl FUN_02254444
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r4, #0x98
	add r0, r5, #0
	str r1, [r4, #0]
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_02256BE4:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02256C16
	ldr r0, [r4, #0x58]
	mov r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x5c]
	mov r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x64]
	mov r1, #0
	bl FUN_02255914
	add r0, r5, #0
	bl ov45_02256954
	pop {r3, r4, r5, pc}
_02256C16:
	bl sub_0200598C
	cmp r0, #0
	bne _02256C26
	ldr r0, _02256C8C ; =0x00000126
	mov r1, #0
	bl FUN_02254444
_02256C26:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0xf
	blo _02256C84
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x98
	ldr r1, [r0, #0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x98
	str r1, [r0, #0]
	add r1, r4, #0
	add r1, #0x98
	ldr r0, [r4, #0x58]
	ldr r1, [r1, #0]
	bl FUN_02255914
	add r1, r4, #0
	add r1, #0x98
	ldr r0, [r4, #0x5c]
	ldr r1, [r1, #0]
	bl FUN_02255914
	add r1, r4, #0
	add r1, #0x98
	ldr r0, [r4, #0x60]
	ldr r1, [r1, #0]
	bl FUN_02255914
	ldr r0, [r4, #0x64]
	add r4, #0x98
	ldr r1, [r4, #0]
	bl FUN_02255914
_02256C84:
	pop {r3, r4, r5, pc}
	nop
_02256C88: .word 0x00000663
_02256C8C: .word 0x00000126
	thumb_func_end ov45_02256B78

	thumb_func_start ov45_02256C90
ov45_02256C90: ; 0x02256C90
	mov r1, #1
	add r0, #0x90
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov45_02256C90
	; 0x02256C98

	.incbin "data/overlay45.bin"