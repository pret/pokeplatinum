	.include "macros/function.inc"
	.include "overlay083/ov83_0223C958.inc"

	

	.text


	thumb_func_start ov83_0223C958
ov83_0223C958: ; 0x0223C958
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x7a
	bl sub_02006C24
	add r4, r0, #0
	add r0, r5, #0
	bl ov83_0223CE9C
	add r0, r5, #0
	ldr r1, [r5, #0]
	add r0, #0x20
	bl ov83_0223CC30
	add r0, r5, #0
	bl ov83_0223CD64
	add r0, r5, #0
	bl ov83_0223CCF8
	add r0, r5, #0
	bl ov83_0223CD28
	add r0, r5, #0
	add r1, r4, #0
	bl ov83_0223CDD0
	ldr r0, _0223CA7C ; =0x0000054C
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0]
	add r0, r5, r0
	add r3, r4, #0
	bl ov83_0223DEE0
	ldr r0, _0223CA80 ; =0x0000063C
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0]
	add r0, r5, r0
	add r3, r4, #0
	bl ov83_0223E720
	mov r1, #0xaf
	ldr r0, _0223CA84 ; =0x000005A4
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, #0]
	add r0, r5, r0
	add r3, r4, #0
	bl ov83_0223E368
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x16
	mov r2, #0x5a
	lsl r0, r0, #6
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223E28C
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _0223CA88 ; =0x00000598
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223E28C
	mov r0, #5
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _0223CA8C ; =0x0000058C
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223E28C
	ldr r0, _0223CA90 ; =0x0000061C
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223E5DC
	ldr r0, _0223CA94 ; =0x00000674
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223ED6C
	ldr r0, _0223CA98 ; =0x00000A88
	add r1, r5, #0
	ldr r2, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r3, r4, #0
	bl ov83_0223F2C4
	ldr r0, _0223CA9C ; =0x00000B08
	mov r2, #0x5a
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r3, [r5, #0]
	add r0, r5, r0
	add r1, #0x2c
	add r2, r5, r2
	bl ov83_0223F4CC
	add r0, r5, #0
	bl ov83_0223CF2C
	add r0, r4, #0
	bl sub_02006CA8
	ldr r0, _0223CAA0 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223CA7C: .word 0x0000054C
_0223CA80: .word 0x0000063C
_0223CA84: .word 0x000005A4
_0223CA88: .word 0x00000598
_0223CA8C: .word 0x0000058C
_0223CA90: .word 0x0000061C
_0223CA94: .word 0x00000674
_0223CA98: .word 0x00000A88
_0223CA9C: .word 0x00000B08
_0223CAA0: .word 0x021BF6DC
	thumb_func_end ov83_0223C958

	thumb_func_start ov83_0223CAA4
ov83_0223CAA4: ; 0x0223CAA4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CB34 ; =0x0000063C
	add r0, r4, r0
	bl ov83_0223E760
	ldr r0, _0223CB38 ; =0x0000054C
	add r0, r4, r0
	bl ov83_0223DF10
	ldr r0, _0223CB3C ; =0x000005A4
	add r0, r4, r0
	bl ov83_0223E438
	add r0, r4, #0
	bl ov83_0223CE7C
	mov r0, #0x16
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov83_0223E2C8
	ldr r0, _0223CB40 ; =0x0000058C
	add r0, r4, r0
	bl ov83_0223E2C8
	ldr r0, _0223CB44 ; =0x00000598
	add r0, r4, r0
	bl ov83_0223E2C8
	ldr r0, _0223CB48 ; =0x0000061C
	add r0, r4, r0
	bl ov83_0223E63C
	ldr r0, _0223CB4C ; =0x00000674
	add r0, r4, r0
	bl ov83_0223ED78
	ldr r0, _0223CB50 ; =0x00000A88
	add r0, r4, r0
	bl ov83_0223F348
	ldr r0, _0223CB54 ; =0x00000B08
	add r0, r4, r0
	bl ov83_0223F510
	add r0, r4, #0
	add r0, #0x20
	bl ov83_0223CCCC
	add r0, r4, #0
	bl ov83_0223CD1C
	add r0, r4, #0
	bl ov83_0223CDC0
	add r0, r4, #0
	bl ov83_0223CD54
	add r0, r4, #0
	bl ov83_0223CF20
	add r0, r4, #0
	bl ov83_0223D068
	ldr r0, _0223CB58 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	pop {r4, pc}
	nop
_0223CB34: .word 0x0000063C
_0223CB38: .word 0x0000054C
_0223CB3C: .word 0x000005A4
_0223CB40: .word 0x0000058C
_0223CB44: .word 0x00000598
_0223CB48: .word 0x0000061C
_0223CB4C: .word 0x00000674
_0223CB50: .word 0x00000A88
_0223CB54: .word 0x00000B08
_0223CB58: .word 0x021BF6DC
	thumb_func_end ov83_0223CAA4

	thumb_func_start ov83_0223CB5C
ov83_0223CB5C: ; 0x0223CB5C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _0223CB88 ; =0x0000149C
	str r0, [sp]
	mov r0, #0xd7
	mov r3, #0x5a
	lsl r0, r0, #2
	add r2, r4, #0
	lsl r3, r3, #2
	add r0, r4, r0
	add r1, r4, r1
	add r2, #0x2c
	add r3, r4, r3
	bl ov83_0223DB4C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CB88: .word 0x0000149C
	thumb_func_end ov83_0223CB5C

	thumb_func_start ov83_0223CB8C
ov83_0223CB8C: ; 0x0223CB8C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	add r1, r4, #0
	add r0, r4, r0
	add r1, #0x2c
	bl ov83_0223DC1C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	pop {r4, pc}
	thumb_func_end ov83_0223CB8C

	thumb_func_start ov83_0223CBA4
ov83_0223CBA4: ; 0x0223CBA4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl sub_020241B4
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	bl NNS_G3dGeFlushBuffer
	bl NNS_G2dSetupSoftwareSpriteCamera
	mov r0, #0xaf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223CBCE
	bl sub_020150EC
_0223CBCE:
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	mov r0, #0xae
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223CBF6
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0223CBF6
	bl sub_020219F8
_0223CBF6:
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov83_0223CBA4

	thumb_func_start ov83_0223CBFC
ov83_0223CBFC: ; 0x0223CBFC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200A858
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0223CC0E
	bl sub_0201C2B8
_0223CC0E:
	pop {r4, pc}
	thumb_func_end ov83_0223CBFC

	thumb_func_start ov83_0223CC10
ov83_0223CC10: ; 0x0223CC10
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223CC2C ; =0x022402F0
	add r3, sp, #0
	mov r2, #5
_0223CC1A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223CC1A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_0223CC2C: .word 0x022402F0
	thumb_func_end ov83_0223CC10

	thumb_func_start ov83_0223CC30
ov83_0223CC30: ; 0x0223CC30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	str r1, [sp]
	add r6, r0, #0
	bl ov83_0223CC10
	ldr r0, [sp]
	bl sub_02018340
	add r3, sp, #8
	ldr r4, _0223CCC0 ; =0x022402E0
	str r0, [r6, #0]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #0
	mov r1, #2
	bl sub_02019060
	ldr r4, _0223CCC4 ; =0x02240318
	add r3, sp, #0x18
	mov r2, #0xe
_0223CC6E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223CC6E
	ldr r1, _0223CCC8 ; =0x022402BC
	add r0, sp, #4
	ldrb r2, [r1]
	mov r7, #0
	add r5, sp, #4
	strb r2, [r0]
	ldrb r2, [r1, #1]
	add r4, sp, #0x18
	strb r2, [r0, #1]
	ldrb r2, [r1, #2]
	ldrb r1, [r1, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
_0223CC90:
	ldrb r1, [r5]
	ldr r0, [r6, #0]
	add r2, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldrb r1, [r5]
	ldr r0, [r6, #0]
	bl sub_02019EBC
	ldrb r0, [r5]
	ldr r3, [sp]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #1
	cmp r7, #4
	blt _0223CC90
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CCC0: .word 0x022402E0
_0223CCC4: .word 0x02240318
_0223CCC8: .word 0x022402BC
	thumb_func_end ov83_0223CC30

	thumb_func_start ov83_0223CCCC
ov83_0223CCCC: ; 0x0223CCCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov83_0223CCCC

	thumb_func_start ov83_0223CCF8
ov83_0223CCF8: ; 0x0223CCF8
	push {r3, lr}
	add r3, r0, #0
	ldr r3, [r3, #0]
	add r0, #0x2c
	mov r1, #0x48
	mov r2, #0x10
	bl ov83_0223D754
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov83_0223CCF8

	thumb_func_start ov83_0223CD1C
ov83_0223CD1C: ; 0x0223CD1C
	ldr r3, _0223CD24 ; =ov83_0223D784
	add r0, #0x2c
	bx r3
	nop
_0223CD24: .word ov83_0223D784
	thumb_func_end ov83_0223CD1C

	thumb_func_start ov83_0223CD28
ov83_0223CD28: ; 0x0223CD28
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _0223CD50 ; =0x022402C0
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [sp, #0xc]
	add r0, r2, #0
	bl sub_02015064
	mov r1, #0xaf
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223CD50: .word 0x022402C0
	thumb_func_end ov83_0223CD28

	thumb_func_start ov83_0223CD54
ov83_0223CD54: ; 0x0223CD54
	mov r1, #0xaf
	lsl r1, r1, #2
	ldr r3, _0223CD60 ; =sub_020150A8
	ldr r0, [r0, r1]
	bx r3
	nop
_0223CD60: .word sub_020150A8
	thumb_func_end ov83_0223CD54

	thumb_func_start ov83_0223CD64
ov83_0223CD64: ; 0x0223CD64
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r0, #0
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	ldr r2, [r4, #0]
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	ldr r5, _0223CDB8 ; =0x022402D0
	add r3, sp, #0x14
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	ldr r1, _0223CDBC ; =0x00200010
	str r0, [sp, #0x20]
	add r0, r2, #0
	mov r2, #0x10
	bl sub_0201E88C
	ldr r1, [r4, #0]
	mov r0, #0x20
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0223CDB8: .word 0x022402D0
_0223CDBC: .word 0x00200010
	thumb_func_end ov83_0223CD64

	thumb_func_start ov83_0223CDC0
ov83_0223CDC0: ; 0x0223CDC0
	push {r3, lr}
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	pop {r3, pc}
	thumb_func_end ov83_0223CDC0

	thumb_func_start ov83_0223CDD0
ov83_0223CDD0: ; 0x0223CDD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x18]
	ldr r0, _0223CE78 ; =0x02240388
	str r1, [sp, #0x1c]
	str r0, [sp, #0x24]
	mov r0, #0xc
	str r0, [sp, #0x2c]
	mov r1, #0x5a
	ldr r0, [sp, #0x18]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	mov r4, #0
	str r0, [sp, #0x28]
	add r0, #0x2c
	mov r7, #0xd
	mov r5, #0xe
	str r0, [sp, #0x28]
_0223CDF8:
	cmp r4, #0
	ble _0223CE2E
	ldr r0, [sp, #0x24]
	ldrb r0, [r0]
	cmp r0, #8
	bne _0223CE2E
	str r5, [sp]
	ldr r0, [sp, #0x2c]
	str r7, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x7d
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	mov r3, #0x5b
	ldr r0, [r0, #0]
	ldr r6, [sp, #0x18]
	str r0, [sp, #0x10]
	lsl r3, r3, #2
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	ldr r3, [r6, r3]
	bl ov83_0223D894
	b _0223CE56
_0223CE2E:
	mov r0, #2
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #0x7d
	lsl r0, r0, #4
	add r0, r4, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x24]
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x20]
	str r0, [sp, #0x14]
	ldrb r3, [r3]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x1c]
	bl ov83_0223D7A8
_0223CE56:
	ldr r0, [sp, #0x24]
	add r4, r4, #1
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	add r7, r7, #3
	add r0, r0, #3
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	add r5, r5, #3
	add r0, #0x38
	str r0, [sp, #0x20]
	cmp r4, #6
	blt _0223CDF8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CE78: .word 0x02240388
	thumb_func_end ov83_0223CDD0

	thumb_func_start ov83_0223CE7C
ov83_0223CE7C: ; 0x0223CE7C
	push {r4, r5, r6, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	add r6, r0, #0
	mov r4, #0
	add r5, r0, r1
	add r6, #0x2c
_0223CE8A:
	add r0, r6, #0
	add r1, r5, #0
	bl ov83_0223D95C
	add r4, r4, #1
	add r5, #0x38
	cmp r4, #6
	blt _0223CE8A
	pop {r4, r5, r6, pc}
	thumb_func_end ov83_0223CE7C

	thumb_func_start ov83_0223CE9C
ov83_0223CE9C: ; 0x0223CE9C
	push {r3, r4, lr}
	sub sp, #4
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	ldr r0, _0223CF08 ; =0x04000060
	ldr r2, _0223CF0C ; =0xFFFFCFFD
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	ldr r3, _0223CF10 ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r4, [r0]
	sub r3, #0x1c
	lsr r2, r2, #0x11
	and r4, r1
	mov r1, #8
	orr r1, r4
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r3
	strh r1, [r0]
	mov r1, #0
	ldr r0, _0223CF14 ; =0x000043FF
	mov r3, #0x3f
	str r1, [sp]
	bl G3X_SetClearColor
	ldr r2, _0223CF18 ; =0x04000540
	mov r0, #2
	ldr r1, _0223CF1C ; =0xBFFF0000
	str r0, [r2, #0]
	str r1, [r2, #0x40]
	mov r1, #1
	bl NNS_GfdInitFrmTexVramManager
	mov r0, #2
	lsl r0, r0, #0xe
	mov r1, #1
	bl NNS_GfdInitFrmPlttVramManager
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CF08: .word 0x04000060
_0223CF0C: .word 0xFFFFCFFD
_0223CF10: .word 0x0000CFFB
_0223CF14: .word 0x000043FF
_0223CF18: .word 0x04000540
_0223CF1C: .word 0xBFFF0000
	thumb_func_end ov83_0223CE9C

	thumb_func_start ov83_0223CF20
ov83_0223CF20: ; 0x0223CF20
	push {r3, lr}
	bl NNS_GfdResetFrmTexVramState
	bl NNS_GfdResetFrmPlttVramState
	pop {r3, pc}
	thumb_func_end ov83_0223CF20

	thumb_func_start ov83_0223CF2C
ov83_0223CF2C: ; 0x0223CF2C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r2, #0x1d
	ldr r3, [r5, #0]
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #4
	bl sub_0200B144
	ldr r1, _0223D030 ; =0x0000157C
	str r0, [r5, r1]
	ldr r2, [r5, #0]
	mov r0, #4
	mov r1, #0x40
	bl sub_0200B368
	mov r1, #0x56
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r1, [r5, #0]
	mov r0, #0x40
	bl sub_02023790
	ldr r1, _0223D034 ; =0x00001584
	str r0, [r5, r1]
	sub r1, #8
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_0200B1EC
	ldr r1, _0223D038 ; =0x00001588
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_0200B1EC
	ldr r1, _0223D03C ; =0x0000158C
	str r0, [r5, r1]
	sub r1, #0x10
	ldr r0, [r5, r1]
	mov r1, #2
	bl sub_0200B1EC
	ldr r1, _0223D040 ; =0x00001590
	str r0, [r5, r1]
	sub r1, #0x14
	ldr r0, [r5, r1]
	mov r1, #0x14
	bl sub_0200B1EC
	ldr r1, _0223D044 ; =0x00001594
	str r0, [r5, r1]
	sub r1, #0x18
	ldr r0, [r5, r1]
	mov r1, #0x15
	bl sub_0200B1EC
	ldr r1, _0223D048 ; =0x00001598
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	mov r1, #0x16
	bl sub_0200B1EC
	ldr r1, _0223D04C ; =0x0000159C
	str r0, [r5, r1]
	sub r1, #0x20
	ldr r0, [r5, r1]
	mov r1, #0x17
	bl sub_0200B1EC
	ldr r1, _0223D050 ; =0x000015A0
	str r0, [r5, r1]
	sub r1, #0x24
	ldr r0, [r5, r1]
	mov r1, #0x18
	bl sub_0200B1EC
	ldr r1, _0223D054 ; =0x000015A4
	str r0, [r5, r1]
	sub r1, #0x28
	ldr r0, [r5, r1]
	mov r1, #0x19
	bl sub_0200B1EC
	ldr r1, _0223D058 ; =0x000015A8
	str r0, [r5, r1]
	sub r1, #0x2c
	ldr r0, [r5, r1]
	mov r1, #8
	bl sub_0200B1EC
	ldr r1, _0223D05C ; =0x000015AC
	str r0, [r5, r1]
	sub r1, #0x30
	ldr r0, [r5, r1]
	mov r1, #9
	bl sub_0200B1EC
	ldr r1, _0223D060 ; =0x000015B0
	mov r4, #0
	str r0, [r5, r1]
	add r6, r5, #0
	add r7, r1, #4
_0223CFFE:
	ldr r0, _0223D030 ; =0x0000157C
	add r1, r4, #3
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [r6, r7]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #5
	blt _0223CFFE
	ldr r7, _0223D064 ; =0x000015C8
	mov r4, #0
	add r6, r5, #0
_0223D018:
	ldr r0, _0223D030 ; =0x0000157C
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0xa
	bl sub_0200B1EC
	str r0, [r6, r7]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, #0xa
	blt _0223D018
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D030: .word 0x0000157C
_0223D034: .word 0x00001584
_0223D038: .word 0x00001588
_0223D03C: .word 0x0000158C
_0223D040: .word 0x00001590
_0223D044: .word 0x00001594
_0223D048: .word 0x00001598
_0223D04C: .word 0x0000159C
_0223D050: .word 0x000015A0
_0223D054: .word 0x000015A4
_0223D058: .word 0x000015A8
_0223D05C: .word 0x000015AC
_0223D060: .word 0x000015B0
_0223D064: .word 0x000015C8
	thumb_func_end ov83_0223CF2C

	thumb_func_start ov83_0223D068
ov83_0223D068: ; 0x0223D068
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _0223D108 ; =0x000015B0
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D10C ; =0x000015AC
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D110 ; =0x0000159C
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D114 ; =0x00001598
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D118 ; =0x00001594
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D11C ; =0x00001590
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D120 ; =0x0000158C
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D124 ; =0x00001588
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D128 ; =0x000015A0
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D12C ; =0x000015A4
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r0, _0223D130 ; =0x000015A8
	ldr r0, [r6, r0]
	bl sub_020237BC
	ldr r7, _0223D134 ; =0x000015B4
	mov r4, #0
	add r5, r6, #0
_0223D0CA:
	ldr r0, [r5, r7]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _0223D0CA
	ldr r7, _0223D138 ; =0x000015C8
	mov r5, #0
	add r4, r6, #0
_0223D0DE:
	ldr r0, [r4, r7]
	bl sub_020237BC
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #0xa
	blt _0223D0DE
	ldr r0, _0223D13C ; =0x00001584
	ldr r0, [r6, r0]
	bl sub_020237BC
	mov r0, #0x56
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	bl sub_0200B3F0
	ldr r0, _0223D140 ; =0x0000157C
	ldr r0, [r6, r0]
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D108: .word 0x000015B0
_0223D10C: .word 0x000015AC
_0223D110: .word 0x0000159C
_0223D114: .word 0x00001598
_0223D118: .word 0x00001594
_0223D11C: .word 0x00001590
_0223D120: .word 0x0000158C
_0223D124: .word 0x00001588
_0223D128: .word 0x000015A0
_0223D12C: .word 0x000015A4
_0223D130: .word 0x000015A8
_0223D134: .word 0x000015B4
_0223D138: .word 0x000015C8
_0223D13C: .word 0x00001584
_0223D140: .word 0x0000157C
	thumb_func_end ov83_0223D068

	.rodata


	.global Unk_ov83_022402BC
Unk_ov83_022402BC: ; 0x022402BC
	.incbin "incbin/overlay83_rodata.bin", 0xB4, 0xB8 - 0xB4

	.global Unk_ov83_022402C0
Unk_ov83_022402C0: ; 0x022402C0
	.incbin "incbin/overlay83_rodata.bin", 0xB8, 0xC8 - 0xB8

	.global Unk_ov83_022402D0
Unk_ov83_022402D0: ; 0x022402D0
	.incbin "incbin/overlay83_rodata.bin", 0xC8, 0xD8 - 0xC8

	.global Unk_ov83_022402E0
Unk_ov83_022402E0: ; 0x022402E0
	.incbin "incbin/overlay83_rodata.bin", 0xD8, 0xE8 - 0xD8

	.global Unk_ov83_022402F0
Unk_ov83_022402F0: ; 0x022402F0
	.incbin "incbin/overlay83_rodata.bin", 0xE8, 0x110 - 0xE8

	.global Unk_ov83_02240318
Unk_ov83_02240318: ; 0x02240318
	.incbin "incbin/overlay83_rodata.bin", 0x110, 0x180 - 0x110

	.global Unk_ov83_02240388
Unk_ov83_02240388: ; 0x02240388
	.incbin "incbin/overlay83_rodata.bin", 0x180, 0x6

