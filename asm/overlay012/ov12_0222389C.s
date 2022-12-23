	.include "macros/function.inc"
	.include "overlay012/ov12_0222389C.inc"

	

	.text


	thumb_func_start ov12_0222389C
ov12_0222389C: ; 0x0222389C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r2, #0
	mov r4, #1
	bl ov12_02235254
	add r5, r0, #0
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_02235254
	cmp r5, #5
	bhi _022238D8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022238C2: ; jump table
	.short _022238D8 - _022238C2 - 2 ; case 0
	.short _022238CE - _022238C2 - 2 ; case 1
	.short _022238D8 - _022238C2 - 2 ; case 2
	.short _022238D2 - _022238C2 - 2 ; case 3
	.short _022238D8 - _022238C2 - 2 ; case 4
	.short _022238D6 - _022238C2 - 2 ; case 5
_022238CE:
	sub r4, r4, #2
	b _022238D8
_022238D2:
	sub r4, r4, #2
	b _022238D8
_022238D6:
	sub r4, r4, #2
_022238D8:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_0222389C

	thumb_func_start ov12_022238DC
ov12_022238DC: ; 0x022238DC
	bx lr
	; .align 2, 0
	thumb_func_end ov12_022238DC

	thumb_func_start ov12_022238E0
ov12_022238E0: ; 0x022238E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220240
	add r0, r4, #0
	bl ov12_02220248
	add r0, r4, #0
	bl ov12_02220250
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov12_0223525C
	cmp r0, #3
	bne _02223916
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0x28
	bl ov12_02235508
	b _0222394E
_02223916:
	add r0, r4, #0
	mov r1, #1
	bl ov12_02235254
	str r0, [sp]
	bl ov12_02235310
	str r0, [sp, #4]
	add r0, r6, #0
	bl sub_02014790
	add r7, r0, #0
	add r0, r4, #0
	bl ov12_0221FDD4
	add r4, r0, #0
	ldr r0, [sp, #4]
	add r1, sp, #0x28
	add r2, r4, #0
	add r3, r7, #0
	bl ov12_02235448
	ldr r0, [sp]
	add r1, sp, #0x1c
	add r2, r4, #0
	add r3, r7, #0
	bl ov12_02235448
_0222394E:
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x28]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x2c]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x30]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	mov r0, #1
	add r1, sp, #0x10
	bl ov12_02235760
	add r0, r6, #0
	bl sub_02014784
	add r4, r0, #0
	add r0, sp, #8
	add r1, r4, #0
	bl sub_02020A94
	add r0, sp, #8
	add r1, r4, #0
	bl sub_020209D4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_022238E0

	thumb_func_start ov12_02223998
ov12_02223998: ; 0x02223998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220248
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02220250
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #0xc
	bl ov12_02235508
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add r0, r6, #0
	add r1, sp, #0
	bl ov12_02235760
	add r0, r7, #0
	add r1, sp, #0
	bl sub_02014744
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov12_02223998

	thumb_func_start ov12_022239F4
ov12_022239F4: ; 0x022239F4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02014764
	add r5, r0, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0
	bl ov12_02235508
	ldr r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x30]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_022239F4

	thumb_func_start ov12_02223A38
ov12_02223A38: ; 0x02223A38
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02014764
	add r5, r0, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r5, #0
	add r2, sp, #0
	bl ov12_02235508
	ldr r0, [r4, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r4, #0x30]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov12_02223A38

	thumb_func_start ov12_02223A7C
ov12_02223A7C: ; 0x02223A7C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r0, r4, #0
	add r1, r6, #0
	add r2, sp, #0
	bl ov12_02235508
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_02223A7C

	thumb_func_start ov12_02223AC8
ov12_02223AC8: ; 0x02223AC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r6, r0, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_02220240
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	beq _02223AF4
	mov r4, #1
	b _02223AF6
_02223AF4:
	mov r4, #0
_02223AF6:
	add r0, r6, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	add r3, r7, #0
	bl ov12_02235448
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02223AC8

	thumb_func_start ov12_02223B30
ov12_02223B30: ; 0x02223B30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02014764
	add r6, r0, #0
	bl ov12_02220250
	bl sub_02014790
	add r7, r0, #0
	add r0, r6, #0
	bl ov12_02220248
	add r1, r0, #0
	add r0, r6, #0
	bl ov12_0223525C
	cmp r0, #3
	beq _02223B5C
	mov r4, #1
	b _02223B5E
_02223B5C:
	mov r4, #0
_02223B5E:
	add r0, r6, #0
	bl ov12_0221FDD4
	add r2, r0, #0
	add r0, r4, #0
	add r1, sp, #0
	add r3, r7, #0
	bl ov12_02235448
	ldr r0, [r5, #0x20]
	ldr r1, [sp]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	add r0, r1, r0
	str r0, [r5, #0x30]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02223B30

	thumb_func_start ov12_02223B98
ov12_02223B98: ; 0x02223B98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r5, r0, #0
	add r1, sp, #0
	mov r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r0, [r1, #8]
	strh r0, [r1, #0xa]
	ldr r3, _02223C38 ; =0x02238E0C
	add r2, sp, #0x54
	mov r1, #0x24
_02223BB4:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02223BB4
	ldr r3, _02223C3C ; =0x02238E54
	add r2, sp, #0xc
	mov r1, #0x24
_02223BC6:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _02223BC6
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r7, r0, #0
	add r0, r4, #0
	add r1, r6, #0
	bl ov12_02235254
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl ov12_02235254
	lsl r2, r0, #1
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	add r0, sp, #0x54
	add r0, r0, r1
	ldrsh r4, [r2, r0]
	mov r3, #0xac
	add r0, r4, #0
	ldr r4, [r5, #0x20]
	mul r0, r3
	ldr r4, [r4, #0]
	ldr r4, [r4, #4]
	add r0, r0, r4
	str r0, [r5, #0x28]
	add r0, sp, #0xc
	add r0, r0, r1
	ldrsh r0, [r2, r0]
	add r1, r0, #0
	ldr r0, [r5, #0x20]
	mul r1, r3
	ldr r0, [r0, #0]
	ldr r0, [r0, #8]
	add r0, r1, r0
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x20]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0xc]
	str r0, [r5, #0x30]
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_02223C38: .word 0x02238E0C
_02223C3C: .word 0x02238E54
	thumb_func_end ov12_02223B98

	thumb_func_start ov12_02223C40
ov12_02223C40: ; 0x02223C40
	push {r3, r4}
	add r3, r2, #0
	add r3, #8
	cmp r0, #7
	bhi _02223CD0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02223C56: ; jump table
	.short _02223CD0 - _02223C56 - 2 ; case 0
	.short _02223C66 - _02223C56 - 2 ; case 1
	.short _02223C70 - _02223C56 - 2 ; case 2
	.short _02223C7A - _02223C56 - 2 ; case 3
	.short _02223C84 - _02223C56 - 2 ; case 4
	.short _02223C96 - _02223C56 - 2 ; case 5
	.short _02223CA8 - _02223C56 - 2 ; case 6
	.short _02223CBA - _02223C56 - 2 ; case 7
_02223C66:
	ldr r0, [r2, #0]
	mul r1, r0
	str r1, [r2, #0]
	pop {r3, r4}
	bx lr
_02223C70:
	ldr r0, [r2, #4]
	mul r1, r0
	str r1, [r2, #4]
	pop {r3, r4}
	bx lr
_02223C7A:
	ldr r0, [r3, #0]
	mul r1, r0
	str r1, [r3, #0]
	pop {r3, r4}
	bx lr
_02223C84:
	ldr r0, [r2, #0]
	add r3, r0, #0
	mul r3, r1
	str r3, [r2, #0]
	ldr r0, [r2, #4]
	mul r1, r0
	str r1, [r2, #4]
	pop {r3, r4}
	bx lr
_02223C96:
	ldr r0, [r2, #0]
	add r4, r0, #0
	mul r4, r1
	str r4, [r2, #0]
	ldr r0, [r3, #0]
	mul r1, r0
	str r1, [r3, #0]
	pop {r3, r4}
	bx lr
_02223CA8:
	ldr r0, [r2, #4]
	add r4, r0, #0
	mul r4, r1
	str r4, [r2, #4]
	ldr r0, [r3, #0]
	mul r1, r0
	str r1, [r3, #0]
	pop {r3, r4}
	bx lr
_02223CBA:
	ldr r0, [r2, #0]
	add r4, r0, #0
	mul r4, r1
	str r4, [r2, #0]
	ldr r0, [r2, #4]
	add r4, r0, #0
	mul r4, r1
	str r4, [r2, #4]
	ldr r0, [r3, #0]
	mul r1, r0
	str r1, [r3, #0]
_02223CD0:
	pop {r3, r4}
	bx lr
	thumb_func_end ov12_02223C40

	thumb_func_start ov12_02223CD4
ov12_02223CD4: ; 0x02223CD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r5, r1, #0
	add r1, r3, #0
	add r7, sp, #0x10
	mov r2, #0
	str r2, [r7, #0]
	ldr r3, [sp, #0x30]
	str r2, [r7, #4]
	ldr r4, [sp, #0x38]
	str r2, [r7, #8]
	cmp r3, #5
	bhi _02223D7E
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02223CFC: ; jump table
	.short _02223D7E - _02223CFC - 2 ; case 0
	.short _02223D08 - _02223CFC - 2 ; case 1
	.short _02223D2E - _02223CFC - 2 ; case 2
	.short _02223D42 - _02223CFC - 2 ; case 3
	.short _02223D4A - _02223CFC - 2 ; case 4
	.short _02223D54 - _02223CFC - 2 ; case 5
_02223D08:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_02014988
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x14]
	str r2, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x14]
	mul r0, r1
	str r0, [sp, #0x18]
	b _02223D7E
_02223D2E:
	str r2, [sp, #0x10]
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r1, [r1, r0]
	mov r0, #0x32
	lsl r0, r0, #6
	mul r0, r1
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	b _02223D7E
_02223D42:
	add r2, r7, #0
	bl ov12_02235508
	b _02223D7E
_02223D4A:
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_02235508
	b _02223D7E
_02223D54:
	add r1, sp, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	mov r2, #4
	bl ov12_0222325C
	ldr r0, [sp]
	add r2, sp, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
	ldrsb r1, [r2, r1]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	bl ov12_02223C40
_02223D7E:
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_02014970
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02223CD4

	thumb_func_start ov12_02223DA4
ov12_02223DA4: ; 0x02223DA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r6, r2, #0
	add r5, r1, #0
	add r1, r3, #0
	add r7, sp, #0x10
	mov r2, #0
	str r2, [r7, #0]
	ldr r3, [sp, #0x30]
	str r2, [r7, #4]
	ldr r4, [sp, #0x38]
	str r2, [r7, #8]
	cmp r3, #5
	bhi _02223E4E
	add r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02223DCC: ; jump table
	.short _02223E4E - _02223DCC - 2 ; case 0
	.short _02223DD8 - _02223DCC - 2 ; case 1
	.short _02223DFE - _02223DCC - 2 ; case 2
	.short _02223E12 - _02223DCC - 2 ; case 3
	.short _02223E1A - _02223DCC - 2 ; case 4
	.short _02223E24 - _02223DCC - 2 ; case 5
_02223DD8:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_020148A8
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x14]
	str r2, [sp, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x14]
	mul r0, r1
	str r0, [sp, #0x18]
	b _02223E4E
_02223DFE:
	str r2, [sp, #0x10]
	add r1, sp, #0x20
	mov r0, #0x14
	ldrsb r1, [r1, r0]
	mov r0, #0x32
	lsl r0, r0, #6
	mul r0, r1
	str r0, [sp, #0x14]
	str r2, [sp, #0x18]
	b _02223E4E
_02223E12:
	add r2, r7, #0
	bl ov12_02235508
	b _02223E4E
_02223E1A:
	add r1, r6, #0
	add r2, r7, #0
	bl ov12_02235508
	b _02223E4E
_02223E24:
	add r1, sp, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	mov r2, #4
	bl ov12_0222325C
	ldr r0, [sp]
	add r2, sp, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	mov r1, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x18]
	ldrsb r1, [r2, r1]
	ldr r0, [sp, #0xc]
	add r2, r7, #0
	bl ov12_02223C40
_02223E4E:
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0]
	sub r0, r1, r0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #4]
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r4, #8]
	sub r0, r1, r0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, sp, #0x10
	bl sub_02014890
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02223DA4

	thumb_func_start ov12_02223E74
ov12_02223E74: ; 0x02223E74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	add r6, r0, #0
	add r7, r2, #0
	add r4, r1, #0
	str r3, [sp, #0xc]
	bl ov12_02220250
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_02235254
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl ov12_02235254
	add r5, r0, #0
	add r0, r6, #0
	add r1, sp, #0x7c
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x70
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x58
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x64
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x40
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x34
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, sp, #0x4c
	mov r2, #3
	bl ov12_0222325C
	ldr r0, [sp, #0x10]
	cmp r0, #5
	bhi _02223EFC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02223EF0: ; jump table
	.short _02223EFC - _02223EF0 - 2 ; case 0
	.short _02223F0C - _02223EF0 - 2 ; case 1
	.short _02223F22 - _02223EF0 - 2 ; case 2
	.short _02223F56 - _02223EF0 - 2 ; case 3
	.short _02223FA0 - _02223EF0 - 2 ; case 4
	.short _02223FD4 - _02223EF0 - 2 ; case 5
_02223EFC:
	ldr r1, [sp, #0x7c]
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x80]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x84]
	strh r1, [r0, #4]
	b _0222401C
_02223F0C:
	ldr r0, [sp, #0x7c]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x80]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x84]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223F22:
	cmp r5, #3
	add r0, sp, #0x14
	bne _02223F36
	ldr r1, [sp, #0x70]
	strh r1, [r0]
	ldr r1, [sp, #0x74]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x78]
	strh r1, [r0, #4]
	b _0222401C
_02223F36:
	cmp r5, #5
	bne _02223F48
	ldr r1, [sp, #0x58]
	strh r1, [r0]
	ldr r1, [sp, #0x5c]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x60]
	strh r1, [r0, #4]
	b _0222401C
_02223F48:
	ldr r1, [sp, #0x64]
	strh r1, [r0]
	ldr r1, [sp, #0x68]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x6c]
	strh r1, [r0, #4]
	b _0222401C
_02223F56:
	cmp r5, #2
	bne _02223F70
	ldr r0, [sp, #0x70]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x74]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x78]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223F70:
	cmp r5, #5
	bne _02223F8A
	ldr r0, [sp, #0x64]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x68]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x6c]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223F8A:
	ldr r0, [sp, #0x40]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x44]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x48]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223FA0:
	cmp r5, #3
	add r0, sp, #0x14
	bne _02223FB4
	ldr r1, [sp, #0x40]
	strh r1, [r0]
	ldr r1, [sp, #0x44]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x48]
	strh r1, [r0, #4]
	b _0222401C
_02223FB4:
	cmp r5, #5
	bne _02223FC6
	ldr r1, [sp, #0x34]
	strh r1, [r0]
	ldr r1, [sp, #0x38]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x3c]
	strh r1, [r0, #4]
	b _0222401C
_02223FC6:
	ldr r1, [sp, #0x4c]
	strh r1, [r0]
	ldr r1, [sp, #0x50]
	strh r1, [r0, #2]
	ldr r1, [sp, #0x54]
	strh r1, [r0, #4]
	b _0222401C
_02223FD4:
	cmp r5, #3
	bne _02223FEE
	ldr r0, [sp, #0x4c]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x50]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x54]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02223FEE:
	cmp r5, #2
	bne _02224008
	ldr r0, [sp, #0x58]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x5c]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x60]
	neg r1, r1
	strh r1, [r0, #4]
	b _0222401C
_02224008:
	ldr r0, [sp, #0x34]
	neg r1, r0
	add r0, sp, #0x14
	strh r1, [r0]
	ldr r1, [sp, #0x38]
	neg r1, r1
	strh r1, [r0, #2]
	ldr r1, [sp, #0x3c]
	neg r1, r1
	strh r1, [r0, #4]
_0222401C:
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	bl ov12_0222389C
	add r5, r0, #0
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r6, #0
	mov r2, #3
	bl ov12_0222325C
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x1c
	bl ov12_02235508
	ldr r0, [sp, #0x28]
	cmp r0, #0
	bne _02224088
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02224088
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _02224088
	add r3, sp, #0x1c
	ldmia r3!, {r0, r1}
	add r2, sp, #0x88
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r0, r0, r1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x24]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #0x30]
	b _022240DC
_02224088:
	ldr r2, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r2, [sp, #0x88]
	str r1, [sp, #0x8c]
	str r0, [sp, #0x90]
	cmp r2, #0
	bne _022240A2
	mov r0, #0x32
	lsl r0, r0, #6
	cmp r1, r0
	bne _022240A2
	mov r5, #1
_022240A2:
	ldr r1, [sp, #0x88]
	add r0, r1, #0
	ldr r1, [sp, #0x8c]
	mul r0, r5
	add r2, r1, #0
	mul r2, r5
	ldr r1, [sp, #0x24]
	str r2, [sp, #0x8c]
	add r2, r1, #0
	mul r2, r5
	str r0, [sp, #0x88]
	str r2, [sp, #0x90]
	ldr r1, [r4, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r0, r0, r1
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x8c]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r0, r0, r1
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x20]
	ldr r0, [sp, #0x90]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r0, r0, r1
	str r0, [r4, #0x30]
_022240DC:
	ldr r0, [sp, #0xa8]
	cmp r0, #0
	beq _0222411A
	cmp r0, #1
	beq _022240EC
	cmp r0, #2
	beq _02224104
	b _0222411A
_022240EC:
	ldr r0, [sp, #0xac]
	ldr r3, [sp, #0xc]
	str r0, [sp]
	str r5, [sp, #4]
	add r0, sp, #0x88
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_02223CD4
	b _0222411A
_02224104:
	ldr r0, [sp, #0xac]
	ldr r3, [sp, #0xc]
	str r0, [sp]
	str r5, [sp, #4]
	add r0, sp, #0x88
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov12_02223DA4
_0222411A:
	add r1, sp, #0x14
	ldrh r2, [r1]
	add r0, r4, #0
	add r0, #0x50
	strh r2, [r0]
	add r0, r4, #0
	ldrh r2, [r1, #2]
	add r0, #0x52
	add r4, #0x54
	strh r2, [r0]
	ldrh r0, [r1, #4]
	strh r0, [r4]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov12_02223E74

	thumb_func_start ov12_02224138
ov12_02224138: ; 0x02224138
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02014764
	add r6, r0, #0
	bl ov12_02220240
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov12_02220248
	add r3, r0, #0
	str r5, [sp]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	str r4, [sp, #4]
	bl ov12_02223E74
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov12_02224138

	thumb_func_start ov12_02224168
ov12_02224168: ; 0x02224168
	ldr r3, _02224170 ; =ov12_02224138
	mov r1, #0
	add r2, r1, #0
	bx r3
	; .align 2, 0
_02224170: .word ov12_02224138
	thumb_func_end ov12_02224168

	thumb_func_start ov12_02224174
ov12_02224174: ; 0x02224174
	ldr r3, _0222417C ; =ov12_02224138
	mov r1, #1
	add r2, r1, #0
	bx r3
	; .align 2, 0
_0222417C: .word ov12_02224138
	thumb_func_end ov12_02224174

	thumb_func_start ov12_02224180
ov12_02224180: ; 0x02224180
	ldr r3, _02224188 ; =ov12_02224138
	mov r1, #1
	mov r2, #2
	bx r3
	; .align 2, 0
_02224188: .word ov12_02224138
	thumb_func_end ov12_02224180

	thumb_func_start ov12_0222418C
ov12_0222418C: ; 0x0222418C
	ldr r3, _02224194 ; =ov12_02224138
	mov r1, #1
	mov r2, #3
	bx r3
	; .align 2, 0
_02224194: .word ov12_02224138
	thumb_func_end ov12_0222418C

	thumb_func_start ov12_02224198
ov12_02224198: ; 0x02224198
	ldr r3, _022241A0 ; =ov12_02224138
	mov r1, #1
	mov r2, #4
	bx r3
	; .align 2, 0
_022241A0: .word ov12_02224138
	thumb_func_end ov12_02224198

	thumb_func_start ov12_022241A4
ov12_022241A4: ; 0x022241A4
	ldr r3, _022241AC ; =ov12_02224138
	mov r1, #1
	mov r2, #5
	bx r3
	; .align 2, 0
_022241AC: .word ov12_02224138
	thumb_func_end ov12_022241A4

	thumb_func_start ov12_022241B0
ov12_022241B0: ; 0x022241B0
	ldr r3, _022241B8 ; =ov12_02224138
	mov r1, #2
	mov r2, #1
	bx r3
	; .align 2, 0
_022241B8: .word ov12_02224138
	thumb_func_end ov12_022241B0

	thumb_func_start ov12_022241BC
ov12_022241BC: ; 0x022241BC
	ldr r3, _022241C4 ; =ov12_02224138
	mov r1, #2
	add r2, r1, #0
	bx r3
	; .align 2, 0
_022241C4: .word ov12_02224138
	thumb_func_end ov12_022241BC

	thumb_func_start ov12_022241C8
ov12_022241C8: ; 0x022241C8
	ldr r3, _022241D0 ; =ov12_02224138
	mov r1, #2
	mov r2, #3
	bx r3
	; .align 2, 0
_022241D0: .word ov12_02224138
	thumb_func_end ov12_022241C8

	thumb_func_start ov12_022241D4
ov12_022241D4: ; 0x022241D4
	ldr r3, _022241DC ; =ov12_02224138
	mov r1, #2
	mov r2, #4
	bx r3
	; .align 2, 0
_022241DC: .word ov12_02224138
	thumb_func_end ov12_022241D4

	thumb_func_start ov12_022241E0
ov12_022241E0: ; 0x022241E0
	ldr r3, _022241E8 ; =ov12_02224138
	mov r1, #2
	mov r2, #5
	bx r3
	; .align 2, 0
_022241E8: .word ov12_02224138
	thumb_func_end ov12_022241E0

	thumb_func_start ov12_022241EC
ov12_022241EC: ; 0x022241EC
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	bl sub_02014764
	add r4, r0, #0
	bl ov12_02220240
	add r6, r0, #0
	add r0, r4, #0
	bl ov12_02220248
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r5, #0
	add r3, r6, #0
	bl ov12_02223E74
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov12_022241EC

	.rodata


	.global Unk_ov12_02238E0C
Unk_ov12_02238E0C: ; 0x02238E0C
	.incbin "incbin/overlay12_rodata.bin", 0x878, 0x8C0 - 0x878

	.global Unk_ov12_02238E54
Unk_ov12_02238E54: ; 0x02238E54
	.incbin "incbin/overlay12_rodata.bin", 0x8C0, 0x48

