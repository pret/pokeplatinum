	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov27_022561C0
ov27_022561C0: ; 0x022561C0
	ldr r3, _022561C8 ; =ov25_02254238
	ldr r0, _022561CC ; =ov27_022561D4
	ldr r1, _022561D0 ; =ov27_02256358
	bx r3
	; .align 2, 0
_022561C8: .word ov25_02254238
_022561CC: .word ov27_022561D4
_022561D0: .word ov27_02256358
	thumb_func_end ov27_022561C0

	thumb_func_start ov27_022561D4
ov27_022561D4: ; 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x68
	add r7, r2, #0
	str r3, [sp]
	bl sub_02018144
	add r4, r0, #0
	beq _02256212
	ldr r2, [sp]
	add r1, r7, #0
	bl ov27_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 ; =ov27_022562FC
	add r1, r4, #0
	mov r2, #1
	str r6, [r4, #0x64]
	bl sub_0200D9E8
	cmp r0, #0
	beq _02256212
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
_02256218: .word ov27_022562FC
	thumb_func_end ov27_022561D4

	thumb_func_start ov27_0225621C
ov27_0225621C: ; 0x0225621C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r1, r5, #0
	str r2, [r5, #8]
	add r0, r2, #0
	add r1, #0x38
	mov r2, #0x24
	bl sub_02099D7C
	cmp r0, #0
	beq _02256270
	add r0, r5, #0
	add r0, #0x4c
	ldmia r0!, {r2, r3}
	add r0, r5, #0
	add r0, #0xc
	stmia r0!, {r2, r3}
	add r0, r5, #0
	add r0, #0x54
	ldmia r0!, {r2, r3}
	add r0, r5, #0
	add r0, #0x14
	stmia r0!, {r2, r3}
	ldr r0, [r5, #0x3c]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x40]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x44]
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x48]
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x1c]
	cmp r0, #0
	beq _0225626A
	mov r0, #2
	str r0, [r5, #0x34]
	b _0225627A
_0225626A:
	mov r0, #0
	str r0, [r5, #0x34]
	b _0225627A
_02256270:
	add r0, r5, #0
	bl ov27_02256664
	mov r0, #0
	str r0, [r5, #0x34]
_0225627A:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x60
	add r1, #0x1c
	add r2, r4, #0
	bl ov27_0225680C
	cmp r0, #0
	beq _022562A6
	mov r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	ldrb r0, [r5]
	strb r0, [r5, #3]
	add r0, r5, #0
	strb r1, [r5, #2]
	bl ov27_02256608
	cmp r0, #0
	beq _022562A6
	mov r0, #1
	pop {r3, r4, r5, pc}
_022562A6:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov27_0225621C

	thumb_func_start ov27_022562AC
ov27_022562AC: ; 0x022562AC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc
	ldmia r0!, {r2, r3}
	add r0, r4, #0
	add r0, #0x4c
	stmia r0!, {r2, r3}
	add r0, r4, #0
	add r0, #0x14
	ldmia r0!, {r2, r3}
	add r0, r4, #0
	add r0, #0x54
	stmia r0!, {r2, r3}
	ldr r0, [r4, #0x30]
	add r1, r4, #0
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x2c]
	add r1, #0x38
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x28]
	mov r2, #0x24
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x24]
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x1c]
	str r0, [r4, #0x38]
	ldr r0, [r4, #8]
	bl sub_02099D54
	add r0, r4, #0
	bl ov27_02256654
	ldr r0, [r4, #0x60]
	bl ov27_02256890
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_022562AC

	thumb_func_start ov27_022562FC
ov27_022562FC: ; 0x022562FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #6
	bhs _02256352
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0225631E
	cmp r1, #5
	beq _0225631E
	add r0, r4, #0
	mov r1, #5
	bl ov27_02256360
	mov r0, #0
	strb r0, [r4, #2]
_0225631E:
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x5c]
	bl ov25_02254518
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x1c
	bl ov27_022566D8
	ldrb r1, [r4]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _02256354 ; =0x02256F9C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _02256352
	add r0, r4, #0
	bl ov27_022562AC
	add r0, r5, #0
	bl sub_0200DA58
	ldr r0, [r4, #0x64]
	bl ov25_02254260
_02256352:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256354: .word 0x02256F9C
	thumb_func_end ov27_022562FC

	thumb_func_start ov27_02256358
ov27_02256358: ; 0x02256358
	mov r1, #1
	strb r1, [r0, #2]
	bx lr
	; .align 2, 0
	thumb_func_end ov27_02256358

	thumb_func_start ov27_02256360
ov27_02256360: ; 0x02256360
	ldrb r2, [r0]
	strb r2, [r0, #3]
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _0225636E
	strb r1, [r0]
	b _02256376
_0225636E:
	mov r1, #5
	strb r1, [r0]
	mov r1, #0
	strb r1, [r0, #2]
_02256376:
	mov r1, #0
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov27_02256360

	thumb_func_start ov27_0225637C
ov27_0225637C: ; 0x0225637C
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225638C
	cmp r0, #1
	beq _0225639C
	b _022563C6
_0225638C:
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl ov27_022569C8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022563C6
_0225639C:
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl ov27_022569EC
	cmp r0, #0
	beq _022563C6
	ldr r0, [r4, #0x64]
	bl ov25_0225424C
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022563BE
	add r0, r4, #0
	mov r1, #2
	bl ov27_02256360
	b _022563C6
_022563BE:
	add r0, r4, #0
	mov r1, #1
	bl ov27_02256360
_022563C6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_0225637C

	thumb_func_start ov27_022563CC
ov27_022563CC: ; 0x022563CC
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563DC
	cmp r0, #1
	beq _022563F4
	b _02256448
_022563DC:
	ldrb r0, [r4, #4]
	cmp r0, #1
	bne _02256448
	mov r1, #1
	str r1, [r4, #0x34]
	ldr r0, [r4, #0x60]
	bl ov27_022569C8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256448
_022563F4:
	ldrb r0, [r4, #4]
	cmp r0, #2
	beq _02256404
	cmp r0, #3
	beq _02256418
	cmp r0, #5
	beq _02256434
	b _02256448
_02256404:
	mov r0, #0
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	ldrb r0, [r4, #1]
	sub r0, r0, #1
	strb r0, [r4, #1]
	b _02256448
_02256418:
	mov r0, #2
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	bl ov27_02256680
	add r0, r4, #0
	mov r1, #2
	bl ov27_02256360
	b _02256448
_02256434:
	mov r0, #3
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	mov r1, #3
	bl ov27_02256360
_02256448:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov27_022563CC

	thumb_func_start ov27_0225644C
ov27_0225644C: ; 0x0225644C
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _0225645C
	cmp r1, #1
	beq _0225647A
	b _022564CA
_0225645C:
	ldrb r1, [r4, #4]
	cmp r1, #1
	bne _022564CA
	mov r1, #1
	str r1, [r4, #0x34]
	bl ov27_022566C4
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022564CA
_0225647A:
	ldrb r0, [r4, #4]
	cmp r0, #2
	beq _0225648A
	cmp r0, #3
	beq _022564A0
	cmp r0, #5
	beq _022564B6
	b _022564CA
_0225648A:
	mov r0, #0
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	mov r1, #1
	bl ov27_02256360
	b _022564CA
_022564A0:
	mov r0, #0
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	mov r1, #1
	bl ov27_02256360
	b _022564CA
_022564B6:
	mov r0, #3
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	mov r1, #3
	bl ov27_02256360
_022564CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_0225644C

	thumb_func_start ov27_022564D0
ov27_022564D0: ; 0x022564D0
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #4]
	cmp r1, #2
	beq _02256504
	cmp r1, #3
	beq _022564E4
	cmp r1, #6
	beq _0225651A
	b _0225652E
_022564E4:
	ldrb r1, [r4, #3]
	cmp r1, #1
	bne _02256504
	bl ov27_02256680
	mov r0, #2
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	mov r1, #2
	bl ov27_02256360
	b _0225652E
_02256504:
	mov r0, #0
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	mov r1, #1
	bl ov27_02256360
	b _0225652E
_0225651A:
	mov r0, #4
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	mov r1, #4
	bl ov27_02256360
_0225652E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_022564D0

	thumb_func_start ov27_02256534
ov27_02256534: ; 0x02256534
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #3
	bhi _022565CA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225654A: ; jump table
	.short _02256552 - _0225654A - 2 ; case 0
	.short _0225655C - _0225654A - 2 ; case 1
	.short _02256580 - _0225654A - 2 ; case 2
	.short _022565AA - _0225654A - 2 ; case 3
_02256552:
	mov r0, #0
	strh r0, [r4, #6]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
_0225655C:
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	cmp r0, #0x5a
	blo _022565CA
	mov r0, #5
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	mov r0, #0
	strh r0, [r4, #6]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022565CA
_02256580:
	ldrh r0, [r4, #6]
	add r0, r0, #1
	strh r0, [r4, #6]
	ldrh r0, [r4, #6]
	cmp r0, #0x3c
	blo _022565CA
	mov r0, #6
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	bl ov27_02256664
	mov r0, #0
	strh r0, [r4, #6]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _022565CA
_022565AA:
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569EC
	cmp r0, #0
	beq _022565CA
	mov r0, #0
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #1
	bl ov27_022569C8
	add r0, r4, #0
	mov r1, #1
	bl ov27_02256360
_022565CA:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_02256534

	thumb_func_start ov27_022565D0
ov27_022565D0: ; 0x022565D0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022565E0
	cmp r0, #1
	beq _022565F4
	b _02256602
_022565E0:
	mov r0, #7
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x60]
	mov r1, #3
	bl ov27_022569C8
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	b _02256602
_022565F4:
	ldr r0, [r4, #0x60]
	bl ov27_022569F8
	cmp r0, #0
	beq _02256602
	mov r0, #1
	pop {r4, pc}
_02256602:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_022565D0

	thumb_func_start ov27_02256608
ov27_02256608: ; 0x02256608
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #8
	str r0, [sp]
	ldr r0, _0225664C ; =0x02256F98
	ldr r2, _02256650 ; =ov27_02256660
	mov r1, #1
	add r3, r4, #0
	bl ov25_02255ACC
	str r0, [r4, #0x5c]
	cmp r0, #0
	beq _02256644
	mov r1, #0
	add r2, r1, #0
	mov r3, #0xf
	bl ov25_02255C48
	ldr r0, [r4, #0x5c]
	mov r1, #0
	mov r2, #1
	mov r3, #0x4b
	bl ov25_02255C48
	mov r0, #0
	strb r0, [r4, #4]
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_02256644:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0225664C: .word 0x02256F98
_02256650: .word ov27_02256660
	thumb_func_end ov27_02256608

	thumb_func_start ov27_02256654
ov27_02256654: ; 0x02256654
	ldr r3, _0225665C ; =ov25_02255B34
	ldr r0, [r0, #0x5c]
	bx r3
	nop
_0225665C: .word ov25_02255B34
	thumb_func_end ov27_02256654

	thumb_func_start ov27_02256660
ov27_02256660: ; 0x02256660
	strb r1, [r3, #4]
	bx lr
	thumb_func_end ov27_02256660

	thumb_func_start ov27_02256664
ov27_02256664: ; 0x02256664
	mov r2, #0
	str r2, [r0, #0x1c]
	mov r1, #1
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	str r2, [r0, #0x28]
	str r2, [r0, #0x2c]
	str r2, [r0, #0x30]
	str r2, [r0, #0xc]
	str r2, [r0, #0x10]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	bx lr
	; .align 2, 0
	thumb_func_end ov27_02256664

	thumb_func_start ov27_02256680
ov27_02256680: ; 0x02256680
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r3, [r4, #0xc]
	mov r0, #0
	ldr r2, [r4, #0x10]
	mov r1, #0
	eor r1, r2
	eor r0, r3
	orr r0, r1
	beq _022566B2
	bl sub_0202293C
	add r5, r4, #0
	add r5, #0xc
	ldr r7, [r4, #0x14]
	ldr r2, [r4, #0xc]
	ldr r6, [r4, #0x18]
	sub r0, r0, r7
	sbc r1, r6
	ldr r3, [r5, #4]
	add r0, r2, r0
	adc r3, r1
	str r0, [r4, #0xc]
	str r3, [r5, #4]
	b _022566BA
_022566B2:
	bl sub_0202293C
	str r0, [r4, #0xc]
	str r1, [r4, #0x10]
_022566BA:
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0
	str r0, [r4, #0x20]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov27_02256680

	thumb_func_start ov27_022566C4
ov27_022566C4: ; 0x022566C4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0202293C
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0x1c]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_022566C4

	thumb_func_start ov27_022566D8
ov27_022566D8: ; 0x022566D8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _022566E6
	b _022567FC
_022566E6:
	bl sub_0202293C
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #0x10]
	sub r0, r0, r3
	sbc r1, r2
	bl sub_02022944
	ldr r2, _02256800 ; =0x04000280
	mov r3, #1
	strh r3, [r2]
	add r3, r2, #0
	add r3, #0x10
	str r0, [r3, #0]
	str r1, [r3, #4]
	mov r3, #0xfa
	add r0, r2, #0
	lsl r3, r3, #2
	add r0, #0x18
	mov r1, #0
	str r3, [r0, #0]
	str r1, [r0, #4]
	lsr r0, r2, #0xb
_02256714:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256714
	ldr r0, _02256804 ; =0x040002A0
	add r3, r0, #0
	ldr r6, [r0, #0]
	ldr r5, [r0, #4]
	sub r3, #0x20
	lsr r0, r0, #0xb
_02256726:
	ldrh r1, [r3]
	tst r1, r0
	bne _02256726
	ldr r2, _02256808 ; =0x040002A8
	mov r0, #1
	ldr r1, [r2, #0]
	ldr r7, [r2, #4]
	strh r0, [r3]
	add r0, r2, #0
	sub r0, #0x18
	str r1, [r0, #0]
	str r7, [r0, #4]
	mov r1, #0xa
	sub r2, #0x10
	str r1, [r2, #0]
	mov r0, #0
	ldr r1, _02256800 ; =0x04000280
	str r0, [r2, #4]
	lsr r0, r1, #0xb
_0225674C:
	ldrh r2, [r1]
	tst r2, r0
	bne _0225674C
	ldr r0, _02256804 ; =0x040002A0
	ldr r2, [r0, #0]
	str r2, [r4, #8]
	mov r2, #1
	strh r2, [r1]
	add r1, r0, #0
	sub r1, #0x10
	str r6, [r1, #0]
	str r5, [r1, #4]
	mov r2, #0x3c
	sub r0, #8
	str r2, [r0, #0]
	mov r1, #0
	ldr r2, _02256800 ; =0x04000280
	str r1, [r0, #4]
	lsr r0, r2, #0xb
_02256772:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256772
	ldr r0, _02256804 ; =0x040002A0
	add r1, r0, #0
	ldr r3, [r0, #0]
	ldr r2, [r0, #4]
	sub r1, #0x20
	lsr r0, r0, #0xb
_02256784:
	ldrh r5, [r1]
	tst r5, r0
	bne _02256784
	ldr r0, _02256808 ; =0x040002A8
	ldr r5, [r0, #0]
	str r5, [r4, #0xc]
	mov r5, #1
	strh r5, [r1]
	add r1, r0, #0
	sub r1, #0x18
	str r3, [r1, #0]
	str r2, [r1, #4]
	mov r2, #0x3c
	sub r0, #0x10
	str r2, [r0, #0]
	mov r1, #0
	ldr r2, _02256800 ; =0x04000280
	str r1, [r0, #4]
	lsr r0, r2, #0xb
_022567AA:
	ldrh r1, [r2]
	tst r1, r0
	bne _022567AA
	ldr r0, _02256804 ; =0x040002A0
	add r2, r0, #0
	ldr r5, [r0, #0]
	ldr r3, [r0, #4]
	sub r2, #0x20
	lsr r0, r0, #0xb
_022567BC:
	ldrh r1, [r2]
	tst r1, r0
	bne _022567BC
	ldr r1, _02256808 ; =0x040002A8
	mov r6, #0x18
	ldr r0, [r1, #0]
	str r0, [r4, #0x10]
	mov r0, #0
	sub r6, r5, r6
	mov ip, r3
	mov r6, ip
	sbc r6, r0
	blo _022567FA
	mov r0, #1
	strh r0, [r2]
	add r0, r1, #0
	sub r0, #0x18
	str r5, [r0, #0]
	str r3, [r0, #4]
	mov r2, #0x18
	sub r1, #0x10
	str r2, [r1, #0]
	mov r0, #0
	ldr r2, _02256800 ; =0x04000280
	str r0, [r1, #4]
	lsr r0, r2, #0xb
_022567F0:
	ldrh r1, [r2]
	tst r1, r0
	bne _022567F0
	ldr r0, _02256808 ; =0x040002A8
	ldr r5, [r0, #0]
_022567FA:
	str r5, [r4, #0x14]
_022567FC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256800: .word 0x04000280
_02256804: .word 0x040002A0
_02256808: .word 0x040002A8
	thumb_func_end ov27_022566D8

	thumb_func_start ov27_0225680C
ov27_0225680C: ; 0x0225680C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #8
	mov r1, #0x88
	bl sub_02018144
	add r4, r0, #0
	beq _02256888
	str r6, [r4, #0]
	bl ov25_02254664
	str r0, [r4, #0x5c]
	mov r0, #8
	bl sub_02018340
	str r0, [r4, #4]
	cmp r0, #0
	bne _0225683A
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0225683A:
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x34
	mov r1, #0xc
	mov r2, #0x12
	mov r3, #0x13
	bl ov25_02255958
	cmp r0, #0
	beq _02256888
	mov r0, #8
	str r0, [sp]
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0xc
	mov r2, #3
	mov r3, #4
	bl ov25_02255958
	cmp r0, #0
	beq _02256880
	add r0, r4, #0
	add r0, #8
	mov r1, #8
	bl ov25_02255090
	add r0, r4, #0
	mov r1, #0
	add r0, #0x84
	str r1, [r0, #0]
	add sp, #4
	str r4, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_02256880:
	add r4, #0x34
	add r0, r4, #0
	bl ov25_022559B0
_02256888:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov27_0225680C

	thumb_func_start ov27_02256890
ov27_02256890: ; 0x02256890
	push {r4, lr}
	add r4, r0, #0
	beq _022568A6
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022568A0
	bl sub_020181C4
_022568A0:
	add r0, r4, #0
	bl sub_020181C4
_022568A6:
	pop {r4, pc}
	thumb_func_end ov27_02256890

	thumb_func_start ov27_022568A8
ov27_022568A8: ; 0x022568A8
	ldr r3, _022568B0 ; =ov27_022568B4
	add r0, r1, #0
	bx r3
	nop
_022568B0: .word ov27_022568B4
	thumb_func_end ov27_022568A8

	thumb_func_start ov27_022568B4
ov27_022568B4: ; 0x022568B4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r2, _022569BC ; =0x04000280
	ldr r0, [r0, #0x14]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_022568D0:
	ldrh r1, [r2]
	tst r1, r0
	bne _022568D0
	ldr r0, _022569C0 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_022568E0:
	ldrh r2, [r3]
	tst r2, r0
	bne _022568E0
	ldr r0, _022569C4 ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x60]
	bl ov25_022558C4
	ldr r0, [r4, #0x64]
	add r1, r5, #0
	bl ov25_022558C4
	ldr r0, [r4, #0]
	ldr r2, _022569BC ; =0x04000280
	ldr r0, [r0, #0x10]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02256910:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256910
	ldr r0, _022569C0 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_02256920:
	ldrh r2, [r3]
	tst r2, r0
	bne _02256920
	ldr r0, _022569C4 ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x68]
	bl ov25_022558C4
	ldr r0, [r4, #0x6c]
	add r1, r5, #0
	bl ov25_022558C4
	ldr r0, [r4, #0]
	ldr r2, _022569BC ; =0x04000280
	ldr r0, [r0, #0xc]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02256950:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256950
	ldr r0, _022569C0 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_02256960:
	ldrh r2, [r3]
	tst r2, r0
	bne _02256960
	ldr r0, _022569C4 ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x70]
	bl ov25_022558C4
	ldr r0, [r4, #0x74]
	add r1, r5, #0
	bl ov25_022558C4
	ldr r0, [r4, #0]
	ldr r2, _022569BC ; =0x04000280
	ldr r0, [r0, #8]
	mov r3, #0
	strh r3, [r2]
	str r0, [r2, #0x10]
	add r0, r2, #0
	mov r1, #0xa
	add r0, #0x18
	str r1, [r0, #0]
	str r3, [r0, #4]
	lsr r0, r2, #0xb
_02256990:
	ldrh r1, [r2]
	tst r1, r0
	bne _02256990
	ldr r0, _022569C0 ; =0x040002A0
	add r3, r0, #0
	ldr r1, [r0, #0]
	sub r3, #0x20
	lsr r0, r0, #0xb
_022569A0:
	ldrh r2, [r3]
	tst r2, r0
	bne _022569A0
	ldr r0, _022569C4 ; =0x040002A8
	ldr r5, [r0, #0]
	ldr r0, [r4, #0x78]
	bl ov25_022558C4
	ldr r0, [r4, #0x7c]
	add r1, r5, #0
	bl ov25_022558C4
	pop {r3, r4, r5, pc}
	nop
_022569BC: .word 0x04000280
_022569C0: .word 0x040002A0
_022569C4: .word 0x040002A8
	thumb_func_end ov27_022568B4

	thumb_func_start ov27_022569C8
ov27_022569C8: ; 0x022569C8
	push {lr}
	sub sp, #0xc
	add r2, r0, #0
	add r0, #8
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r0, _022569E8 ; =0x02256FF0
	ldr r3, [r2, #0]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022569E8: .word 0x02256FF0
	thumb_func_end ov27_022569C8

	thumb_func_start ov27_022569EC
ov27_022569EC: ; 0x022569EC
	ldr r3, _022569F4 ; =ov25_02255130
	add r0, #8
	bx r3
	nop
_022569F4: .word ov25_02255130
	thumb_func_end ov27_022569EC

	thumb_func_start ov27_022569F8
ov27_022569F8: ; 0x022569F8
	ldr r3, _02256A00 ; =ov25_02255154
	add r0, #8
	bx r3
	nop
_02256A00: .word ov25_02255154
	thumb_func_end ov27_022569F8

	thumb_func_start ov27_02256A04
ov27_02256A04: ; 0x02256A04
	push {r4, lr}
	add r4, r0, #0
	bl ov25_0225523C
	add r0, #8
	add r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov27_02256A04

	thumb_func_start ov27_02256A18
ov27_02256A18: ; 0x02256A18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r0, r7, #0
	bl ov25_0225523C
	add r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256ADC ; =0x02256FD4
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
	mov r1, #0x15
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
	mov r1, #0x14
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	add r1, r0, #0
	bl ov25_022546B8
	ldr r0, [r5, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r7, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r7, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r4, #0
	bl ov27_02256AEC
	add r0, r4, #0
	add r1, r6, #0
	bl ov27_02256B24
	ldr r0, _02256AE0 ; =ov27_022568A8
	add r1, r5, #0
	mov r2, #3
	bl sub_0200D9E8
	add r5, #0x84
	str r0, [r5, #0]
	add r0, r4, #0
	bl ov27_022568B4
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _02256AB6
	add r0, r4, #0
	mov r1, #1
	bl ov27_022569C8
_02256AB6:
	ldr r1, _02256AE4 ; =0x04001000
	ldr r0, _02256AE8 ; =0xFFFFE0FF
	ldr r3, [r1, #0]
	ldr r2, [r1, #0]
	str r3, [sp, #0x10]
	and r0, r2
	lsl r2, r3, #0x13
	lsr r3, r2, #0x1b
	mov r2, #0x14
	orr r2, r3
	lsl r2, r2, #8
	orr r0, r2
	str r0, [r1, #0]
	add r0, r7, #0
	bl ov27_02256A04
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256ADC: .word 0x02256FD4
_02256AE0: .word ov27_022568A8
_02256AE4: .word 0x04001000
_02256AE8: .word 0xFFFFE0FF
	thumb_func_end ov27_02256A18

	thumb_func_start ov27_02256AEC
ov27_02256AEC: ; 0x02256AEC
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [sp]
	mov r2, #1
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
	mov r1, #0x16
	lsl r3, r3, #8
	bl sub_02006EC0
	mov r0, #1
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov27_02256AEC

	thumb_func_start ov27_02256B24
ov27_02256B24: ; 0x02256B24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	str r0, [sp, #4]
	add r0, #0x48
	ldr r4, _02256B7C ; =0x02257020
	str r1, [sp]
	mov r6, #0
	add r5, r7, #0
	str r0, [sp, #4]
_02256B38:
	ldr r0, [r7, #0x5c]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl ov25_02255810
	str r0, [r5, #0x60]
	add r6, r6, #1
	add r4, #0x10
	add r5, r5, #4
	cmp r6, #7
	bls _02256B38
	ldr r2, _02256B7C ; =0x02257020
	lsl r1, r6, #4
	add r1, r2, r1
	add r2, r7, #0
	ldr r0, [r7, #0x5c]
	add r2, #0x34
	bl ov25_02255810
	add r1, r7, #0
	add r1, #0x80
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02256B76
	add r7, #0x80
	ldr r0, [r7, #0]
	mov r1, #1
	bl ov25_02255914
_02256B76:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256B7C: .word 0x02257020
	thumb_func_end ov27_02256B24

	thumb_func_start ov27_02256B80
ov27_02256B80: ; 0x02256B80
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	bl ov25_02255240
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r0, r5, #0
	lsl r2, r1, #2
	ldr r1, _02256BAC ; =0x02256FB8
	ldr r1, [r1, r2]
	bl sub_0201CECC
	ldr r2, [r4, #0x18]
	add r0, r5, #0
	lsl r3, r2, #2
	ldr r2, _02256BAC ; =0x02256FB8
	add r1, r6, #0
	ldr r2, [r2, r3]
	blx r2
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02256BAC: .word 0x02256FB8
	thumb_func_end ov27_02256B80

	thumb_func_start ov27_02256BB0
ov27_02256BB0: ; 0x02256BB0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255240
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov25_02255914
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov27_02256A04
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov27_02256BB0

	thumb_func_start ov27_02256BE8
ov27_02256BE8: ; 0x02256BE8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov25_02255914
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl ov25_022558C4
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	ldr r0, _02256C28 ; =0x00000669
	bl ov25_02254424
	add r0, r5, #0
	bl ov27_02256A04
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02256C28: .word 0x00000669
	thumb_func_end ov27_02256BE8

	thumb_func_start ov27_02256C2C
ov27_02256C2C: ; 0x02256C2C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_02255240
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	ldr r0, [r6, #0x18]
	cmp r0, #2
	beq _02256C4E
	add r0, r5, #0
	bl ov27_02256A04
	pop {r4, r5, r6, pc}
_02256C4E:
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256C5C
	cmp r0, #1
	pop {r4, r5, r6, pc}
_02256C5C:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xc
	bl ov25_022558C4
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov25_0225524C
	pop {r4, r5, r6, pc}
	thumb_func_end ov27_02256C2C

	thumb_func_start ov27_02256C80
ov27_02256C80: ; 0x02256C80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255244
	add r5, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #3
	beq _02256CAA
	add r0, r6, #0
	bl ov27_02256A04
	pop {r3, r4, r5, r6, r7, pc}
_02256CAA:
	add r0, r6, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256CBA
	cmp r0, #1
	beq _02256CD8
	pop {r3, r4, r5, r6, r7, pc}
_02256CBA:
	mov r0, #6
	strh r0, [r5]
	mov r0, #2
	strb r0, [r5, #3]
	mov r0, #0
	strb r0, [r5, #2]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xd
	bl ov25_022558C4
	add r0, r6, #0
	bl ov25_0225524C
_02256CD8:
	add r0, r5, #0
	mov r1, #6
	bl ov27_02256E90
	cmp r0, #0
	beq _02256CFA
	ldr r0, _02256CFC ; =0x00000669
	bl ov25_02254424
	ldrb r1, [r5, #3]
	ldr r0, [r4, #4]
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
_02256CFA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256CFC: .word 0x00000669
	thumb_func_end ov27_02256C80

	thumb_func_start ov27_02256D00
ov27_02256D00: ; 0x02256D00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255244
	add r5, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #4
	beq _02256D2A
	add r0, r6, #0
	bl ov27_02256A04
	pop {r3, r4, r5, r6, r7, pc}
_02256D2A:
	add r0, r6, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256D3A
	cmp r0, #1
	beq _02256D58
	pop {r3, r4, r5, r6, r7, pc}
_02256D3A:
	mov r0, #3
	strh r0, [r5]
	mov r0, #2
	strb r0, [r5, #3]
	mov r0, #0
	strb r0, [r5, #2]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xe
	bl ov25_022558C4
	add r0, r6, #0
	bl ov25_0225524C
_02256D58:
	add r0, r5, #0
	mov r1, #3
	bl ov27_02256E90
	cmp r0, #0
	beq _02256D7A
	ldr r0, _02256D7C ; =0x00000669
	bl ov25_02254424
	ldrb r1, [r5, #3]
	ldr r0, [r4, #4]
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
_02256D7A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256D7C: .word 0x00000669
	thumb_func_end ov27_02256D00

	thumb_func_start ov27_02256D80
ov27_02256D80: ; 0x02256D80
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r0, r6, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r6, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r6, #0
	bl ov25_02255244
	add r5, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #5
	beq _02256DAA
	add r0, r6, #0
	bl ov27_02256A04
	pop {r3, r4, r5, r6, r7, pc}
_02256DAA:
	add r0, r6, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256DBA
	cmp r0, #1
	beq _02256DE8
	pop {r3, r4, r5, r6, r7, pc}
_02256DBA:
	mov r0, #0
	strh r0, [r5]
	strb r0, [r5, #2]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xf
	bl ov25_022558C4
	ldr r0, [r4, #4]
	mov r1, #5
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
	ldr r0, _02256E18 ; =0x00000666
	bl ov25_02254424
	add r0, r6, #0
	bl ov25_0225524C
_02256DE8:
	ldrh r0, [r5]
	add r0, r0, #1
	strh r0, [r5]
	ldrh r0, [r5]
	cmp r0, #2
	bls _02256E16
	mov r0, #0
	strh r0, [r5]
	ldrb r1, [r5, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r5, #2]
	ldrb r0, [r5, #2]
	add r0, r0, #5
	strb r0, [r5, #3]
	ldrb r1, [r5, #3]
	ldr r0, [r4, #4]
	bl ov27_02256EC4
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019448
_02256E16:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02256E18: .word 0x00000666
	thumb_func_end ov27_02256D80

	thumb_func_start ov27_02256E1C
ov27_02256E1C: ; 0x02256E1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_02255240
	add r7, r0, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r6, r0, #0
	add r0, r5, #0
	bl ov25_02255244
	add r4, r0, #0
	ldr r0, [r7, #0x18]
	cmp r0, #6
	beq _02256E46
	add r0, r5, #0
	bl ov27_02256A04
	pop {r3, r4, r5, r6, r7, pc}
_02256E46:
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256E56
	cmp r0, #1
	beq _02256E7C
	pop {r3, r4, r5, r6, r7, pc}
_02256E56:
	add r0, r6, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0x10
	bl ov25_022558C4
	ldr r0, [r6, #4]
	mov r1, #6
	bl ov27_02256EC4
	ldr r0, [r6, #4]
	mov r1, #6
	bl sub_02019448
	add r0, r5, #0
	bl ov25_0225524C
	mov r0, #0
	strh r0, [r4]
_02256E7C:
	ldrh r0, [r4]
	add r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0x50
	bls _02256E8E
	add r0, r5, #0
	bl ov27_02256A04
_02256E8E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov27_02256E1C

	thumb_func_start ov27_02256E90
ov27_02256E90: ; 0x02256E90
	ldrh r2, [r0]
	add r2, r2, #1
	strh r2, [r0]
	ldrh r2, [r0]
	cmp r2, r1
	bls _02256EBA
	mov r2, #0
	strh r2, [r0]
	ldrb r1, [r0, #2]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrb r1, [r0, #2]
	cmp r1, #3
	blo _02256EAE
	strb r2, [r0, #2]
_02256EAE:
	ldrb r2, [r0, #2]
	ldr r1, _02256EC0 ; =0x02256FB4
	ldrb r1, [r1, r2]
	strb r1, [r0, #3]
	mov r0, #1
	bx lr
_02256EBA:
	mov r0, #0
	bx lr
	nop
_02256EC0: .word 0x02256FB4
	thumb_func_end ov27_02256E90

	thumb_func_start ov27_02256EC4
ov27_02256EC4: ; 0x02256EC4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #6
	bl sub_02019FE4
	ldr r1, _02256F20 ; =0x00000252
	mov r7, #1
	add r1, r0, r1
	lsl r0, r4, #2
	add r0, r4, r0
	add r0, r0, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov ip, r0
	lsl r7, r7, #0xa
	mov r6, #9
_02256EE8:
	ldr r3, [sp]
	mov r2, #0
	add r4, r1, #0
_02256EEE:
	sub r5, r6, r2
	add r0, r3, #0
	strh r3, [r4]
	orr r0, r7
	lsl r5, r5, #1
	add r2, r2, #1
	strh r0, [r1, r5]
	add r3, r3, #1
	add r4, r4, #2
	cmp r2, #5
	blo _02256EEE
	ldr r0, [sp]
	add r1, #0x40
	add r0, #0x25
	str r0, [sp]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	mov r0, ip
	add r0, r0, #1
	mov ip, r0
	cmp r0, #0xb
	blo _02256EE8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256F20: .word 0x00000252
	thumb_func_end ov27_02256EC4

	thumb_func_start ov27_02256F24
ov27_02256F24: ; 0x02256F24
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	bl ov25_0225523C
	add r4, r0, #0
	add r0, r5, #0
	bl ov25_02255248
	cmp r0, #0
	beq _02256F40
	cmp r0, #1
	beq _02256F4C
	pop {r3, r4, r5, pc}
_02256F40:
	add r0, r4, #0
	bl ov27_02256F7C
	add r0, r5, #0
	bl ov25_0225524C
_02256F4C:
	add r0, r4, #0
	add r0, #0x34
	bl ov25_022559B0
	add r0, r4, #0
	add r0, #0x48
	bl ov25_022559B0
	ldr r0, [r4, #4]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_0200DA58
	mov r0, #0
	add r4, #0x84
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov27_02256A04
	pop {r3, r4, r5, pc}
	thumb_func_end ov27_02256F24

	thumb_func_start ov27_02256F7C
ov27_02256F7C: ; 0x02256F7C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_02256F84:
	ldr r0, [r6, #0x5c]
	ldr r1, [r5, #0x60]
	bl ov25_022558B0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #9
	blo _02256F84
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov27_02256F7C
	; 0x02256F98


	.rodata
	.incbin "incbin/overlay27_rodata.bin"

	.section .sinit, 4
	.word ov27_022561C0+1

	.bss
	.space 0x0
