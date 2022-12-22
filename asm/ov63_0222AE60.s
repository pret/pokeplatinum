	.include "macros/function.inc"
	.include "include/ov63_0222AE60.inc"

	

	.text


	thumb_func_start ov63_0222AE60
ov63_0222AE60: ; 0x0222AE60
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r3, #0
	add r4, r0, #0
	ldr r1, _0222AF04 ; =0x0000229C
	add r0, r6, #0
	str r2, [sp]
	bl sub_02018144
	ldr r2, _0222AF04 ; =0x0000229C
	add r7, r0, #0
	mov r1, #0
	bl memset
	str r4, [r7, #0]
	mov r0, #0x92
	add r1, r6, #0
	str r5, [r7, #4]
	bl sub_02006C24
	ldr r1, _0222AF08 ; =0x00002294
	str r0, [r7, r1]
	mov r0, #0x99
	add r1, r6, #0
	bl sub_02006C24
	ldr r1, _0222AF0C ; =0x00002298
	mov r4, #0
	str r0, [r7, r1]
	add r5, r7, #0
_0222AE9C:
	mov r0, #0x98
	add r1, r4, #0
	add r2, r6, #0
	bl sub_02009714
	mov r1, #0x8a
	lsl r1, r1, #6
	str r0, [r5, r1]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0222AE9C
	mov r5, #0
	add r4, r7, #0
_0222AEB8:
	mov r0, #0x17
	add r1, r5, #2
	add r2, r6, #0
	bl sub_02009714
	ldr r1, _0222AF10 ; =0x00002288
	add r5, r5, #1
	str r0, [r4, r1]
	add r4, r4, #4
	cmp r5, #2
	blt _0222AEB8
	mov r4, #0
_0222AED0:
	add r0, r7, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov63_0222B374
	add r4, r4, #1
	cmp r4, #3
	blt _0222AED0
	ldr r0, [sp]
	ldr r2, [sp]
	mov r1, #0x18
	str r0, [r7, #0xc]
	add r0, r6, #0
	mul r1, r2
	bl sub_02018144
	str r0, [r7, #8]
	ldr r3, [r7, #0xc]
	mov r2, #0x18
	mov r1, #0
	mul r2, r3
	bl memset
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222AF04: .word 0x0000229C
_0222AF08: .word 0x00002294
_0222AF0C: .word 0x00002298
_0222AF10: .word 0x00002288
	thumb_func_end ov63_0222AE60

	thumb_func_start ov63_0222AF14
ov63_0222AF14: ; 0x0222AF14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	bls _0222AF40
	add r4, r6, #0
_0222AF22:
	ldr r0, [r5, #8]
	add r0, r0, r4
	bl ov63_0222BC70
	cmp r0, #0
	bne _0222AF36
	ldr r0, [r5, #8]
	add r0, r0, r4
	bl ov63_0222B210
_0222AF36:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x18
	cmp r6, r0
	blo _0222AF22
_0222AF40:
	mov r4, #0
_0222AF42:
	add r0, r5, #0
	add r1, r4, #0
	bl ov63_0222B404
	add r4, r4, #1
	cmp r4, #3
	blt _0222AF42
	add r0, r5, #0
	bl ov63_0222AFF8
	ldr r0, _0222AF8C ; =0x00002294
	ldr r0, [r5, r0]
	bl sub_02006CA8
	ldr r0, _0222AF90 ; =0x00002298
	ldr r0, [r5, r0]
	bl sub_02006CA8
	mov r7, #0x8a
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #6
_0222AF6E:
	ldr r0, [r4, r7]
	bl sub_02009754
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0222AF6E
	ldr r0, [r5, #8]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222AF8C: .word 0x00002294
_0222AF90: .word 0x00002298
	thumb_func_end ov63_0222AF14

	thumb_func_start ov63_0222AF94
ov63_0222AF94: ; 0x0222AF94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r7, r3, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r6, r2, #0
	bl ov63_0222B47C
	cmp r0, #0
	bne _0222AFB0
	bl GF_AssertFail
_0222AFB0:
	add r0, r4, #0
	bl ov63_0222B450
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	add r2, r6, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r3, r7, #0
	bl ov63_0222B4CC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov63_0222AF94

	thumb_func_start ov63_0222AFD0
ov63_0222AFD0: ; 0x0222AFD0
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov63_0222B450
	add r1, r0, #0
	add r0, r4, #0
	bl ov63_0222B738
	pop {r4, pc}
	thumb_func_end ov63_0222AFD0

	thumb_func_start ov63_0222AFE4
ov63_0222AFE4: ; 0x0222AFE4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl ov63_0222B450
	add r1, r0, #0
	add r0, r4, #0
	bl ov63_0222B7D4
	pop {r4, pc}
	thumb_func_end ov63_0222AFE4

	thumb_func_start ov63_0222AFF8
ov63_0222AFF8: ; 0x0222AFF8
	push {r3, r4, r5, lr}
	ldr r1, _0222B028 ; =0x00002290
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0222B008
	bl ov63_0222B078
_0222B008:
	mov r5, #0
_0222B00A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B01E
	add r0, r4, #0
	add r1, r5, #0
	bl ov63_0222B738
_0222B01E:
	add r5, r5, #1
	cmp r5, #0x97
	blt _0222B00A
	pop {r3, r4, r5, pc}
	nop
_0222B028: .word 0x00002290
	thumb_func_end ov63_0222AFF8

	thumb_func_start ov63_0222B02C
ov63_0222B02C: ; 0x0222B02C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r0, #0
	add r6, r3, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r0, r2, #0
	bne _0222B040
	bl GF_AssertFail
_0222B040:
	ldr r1, [sp, #8]
	add r0, r7, #0
	add r2, r6, #0
	bl ov63_0222B97C
	add r0, r7, #0
	add r1, r6, #0
	bl ov63_0222BA20
	ldr r5, _0222B074 ; =0x0222D910
	mov r4, #0
_0222B056:
	str r6, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r1, [r5]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	add r0, r7, #0
	bl ov63_0222B4CC
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0222B056
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B074: .word 0x0222D910
	thumb_func_end ov63_0222B02C

	thumb_func_start ov63_0222B078
ov63_0222B078: ; 0x0222B078
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov63_0222B9EC
	add r0, r6, #0
	bl ov63_0222BAB0
	ldr r5, _0222B09C ; =0x0222D910
	mov r4, #0
_0222B08A:
	ldrb r1, [r5]
	add r0, r6, #0
	bl ov63_0222B738
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #0x10
	blt _0222B08A
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222B09C: .word 0x0222D910
	thumb_func_end ov63_0222B078

	thumb_func_start ov63_0222B0A0
ov63_0222B0A0: ; 0x0222B0A0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r2, r3, #0
	add r5, r0, #0
	bl ov63_0222B7E8
	ldr r0, _0222B0B4 ; =0x0000227C
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_0222B0B4: .word 0x0000227C
	thumb_func_end ov63_0222B0A0

	thumb_func_start ov63_0222B0B8
ov63_0222B0B8: ; 0x0222B0B8
	ldr r3, _0222B0BC ; =ov63_0222B914
	bx r3
	; .align 2, 0
_0222B0BC: .word ov63_0222B914
	thumb_func_end ov63_0222B0B8

	thumb_func_start ov63_0222B0C0
ov63_0222B0C0: ; 0x0222B0C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	str r3, [sp]
	bl ov63_0222BB00
	add r4, r0, #0
	add r0, r7, #0
	bl ov63_0222B450
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r5, #0
	bl ov63_0222B7D4
	cmp r0, #1
	beq _0222B0EA
	bl GF_AssertFail
_0222B0EA:
	mov r0, #0
	add r2, sp, #0xc
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r5, #0]
	mov r2, #0x38
	str r1, [sp, #0xc]
	ldr r1, [sp, #4]
	add r7, r1, #0
	add r1, r5, #0
	mul r7, r2
	add r1, #0x24
	add r1, r1, r7
	str r1, [sp, #0x10]
	ldrsh r0, [r6, r0]
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #2
	ldrsh r1, [r6, r0]
	lsl r1, r1, #0xc
	str r1, [sp, #0x18]
	lsl r1, r0, #0xb
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	mov r1, #4
	ldrsh r1, [r6, r1]
	str r1, [sp, #0x30]
	ldr r1, [sp]
	str r1, [sp, #0x38]
	add r1, r5, #0
	str r1, [sp, #8]
	add r1, #0x1c
	str r1, [sp, #8]
	ldr r1, [r1, r7]
	cmp r1, #3
	beq _0222B142
	cmp r1, #1
	bne _0222B148
_0222B142:
	mov r0, #1
	str r0, [sp, #0x34]
	b _0222B14A
_0222B148:
	str r0, [sp, #0x34]
_0222B14A:
	add r0, sp, #0xc
	bl sub_02021AA0
	str r0, [r4, #4]
	mov r1, #6
	ldrsh r1, [r6, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02021E80
	add r0, r5, r7
	ldr r0, [r0, #0x20]
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _0222B170
	mov r1, #6
	bl sub_02021D6C
	b _0222B176
_0222B170:
	mov r1, #1
	bl sub_02021D6C
_0222B176:
	mov r0, #9
	str r0, [r4, #0xc]
	mov r0, #0
	strh r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0x10]
	add r0, r5, #0
	add r0, #0x10
	add r0, r0, r7
	str r0, [r4, #0]
	ldr r0, _0222B208 ; =0x00002248
	add r0, r5, r0
	bl ov63_0222B96C
	cmp r0, #0
	beq _0222B1FC
	mov r0, #0
	add r2, sp, #0xc
	add r1, r0, #0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r5, #0]
	str r1, [sp, #0xc]
	ldr r1, _0222B20C ; =0x00002258
	add r2, r5, r1
	str r2, [sp, #0x10]
	ldrsh r0, [r6, r0]
	add r1, #0x24
	lsl r0, r0, #0xc
	str r0, [sp, #0x14]
	mov r0, #2
	ldrsh r2, [r6, r0]
	lsl r2, r2, #0xc
	str r2, [sp, #0x18]
	lsl r2, r0, #0xb
	str r2, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	ldr r1, [r5, r1]
	str r1, [sp, #0x30]
	ldr r1, [sp]
	str r1, [sp, #0x38]
	ldr r1, [sp, #8]
	ldr r1, [r1, r7]
	cmp r1, #3
	beq _0222B1DE
	cmp r1, #1
	bne _0222B1E4
_0222B1DE:
	mov r0, #1
	str r0, [sp, #0x34]
	b _0222B1E6
_0222B1E4:
	str r0, [sp, #0x34]
_0222B1E6:
	add r0, sp, #0xc
	bl sub_02021AA0
	str r0, [r4, #8]
	mov r1, #6
	ldrsh r1, [r6, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02021E80
	b _0222B200
_0222B1FC:
	mov r0, #0
	str r0, [r4, #8]
_0222B200:
	add r0, r4, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0222B208: .word 0x00002248
_0222B20C: .word 0x00002258
	thumb_func_end ov63_0222B0C0

	thumb_func_start ov63_0222B210
ov63_0222B210: ; 0x0222B210
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222B21E
	bl sub_02021BD4
_0222B21E:
	ldr r0, [r4, #4]
	bl sub_02021BD4
	mov r1, #0x18
	mov r0, #0
_0222B228:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0222B228
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov63_0222B210

	thumb_func_start ov63_0222B234
ov63_0222B234: ; 0x0222B234
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov63_0222B234

	thumb_func_start ov63_0222B238
ov63_0222B238: ; 0x0222B238
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	lsl r0, r1, #0xc
	str r0, [sp]
	lsl r0, r2, #0xc
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl sub_02021C50
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0222B274
	mov r0, #2
	ldr r1, [sp]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp]
	mov r0, #0xe
	ldr r1, [sp, #4]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl sub_02021C50
_0222B274:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov63_0222B238

	thumb_func_start ov63_0222B278
ov63_0222B278: ; 0x0222B278
	ldr r3, _0222B280 ; =sub_02021F58
	ldr r0, [r0, #4]
	bx r3
	nop
_0222B280: .word sub_02021F58
	thumb_func_end ov63_0222B278

	thumb_func_start ov63_0222B284
ov63_0222B284: ; 0x0222B284
	push {r3, lr}
	ldr r0, [r0, #4]
	bl sub_02021F74
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov63_0222B284

	thumb_func_start ov63_0222B294
ov63_0222B294: ; 0x0222B294
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl sub_02021CAC
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0222B2AC
	add r1, r4, #0
	bl sub_02021CAC
_0222B2AC:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov63_0222B294

	thumb_func_start ov63_0222B2B0
ov63_0222B2B0: ; 0x0222B2B0
	ldr r3, _0222B2B8 ; =sub_02021D34
	ldr r0, [r0, #4]
	bx r3
	nop
_0222B2B8: .word sub_02021D34
	thumb_func_end ov63_0222B2B0

	thumb_func_start ov63_0222B2BC
ov63_0222B2BC: ; 0x0222B2BC
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222B2BC

	thumb_func_start ov63_0222B2C4
ov63_0222B2C4: ; 0x0222B2C4
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov63_0222B2C4

	thumb_func_start ov63_0222B2C8
ov63_0222B2C8: ; 0x0222B2C8
	ldr r3, _0222B2D0 ; =sub_02021E50
	ldr r0, [r0, #4]
	bx r3
	nop
_0222B2D0: .word sub_02021E50
	thumb_func_end ov63_0222B2C8

	thumb_func_start ov63_0222B2D4
ov63_0222B2D4: ; 0x0222B2D4
	ldr r3, _0222B2DC ; =sub_02021E74
	ldr r0, [r0, #4]
	bx r3
	nop
_0222B2DC: .word sub_02021E74
	thumb_func_end ov63_0222B2D4

	thumb_func_start ov63_0222B2E0
ov63_0222B2E0: ; 0x0222B2E0
	push {lr}
	sub sp, #0xc
	ldr r3, [r0, #8]
	cmp r3, #0
	beq _0222B302
	add r1, #8
	lsl r1, r1, #0xc
	add r2, #0xe
	str r1, [sp]
	lsl r1, r2, #0xc
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	add r1, sp, #0
	bl sub_02021C50
_0222B302:
	add sp, #0xc
	pop {pc}
	; .align 2, 0
	thumb_func_end ov63_0222B2E0

	thumb_func_start ov63_0222B308
ov63_0222B308: ; 0x0222B308
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xa
	blt _0222B318
	bl GF_AssertFail
_0222B318:
	cmp r6, #4
	blt _0222B320
	bl GF_AssertFail
_0222B320:
	str r4, [r5, #0xc]
	mov r0, #0
	strh r0, [r5, #0x14]
	ldr r0, _0222B338 ; =0x0222D920
	lsl r1, r4, #2
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _0222B336
	add r0, r5, #0
	add r1, r6, #0
	blx r2
_0222B336:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222B338: .word 0x0222D920
	thumb_func_end ov63_0222B308

	thumb_func_start ov63_0222B33C
ov63_0222B33C: ; 0x0222B33C
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	ldr r1, _0222B370 ; =0x0222D904
	mov r0, #0
	ldrb r2, [r1, r2]
	cmp r2, #0xff
	bne _0222B350
	mov r0, #1
	b _0222B35C
_0222B350:
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	add r1, r1, #1
	cmp r2, r1
	blt _0222B35C
	mov r0, #1
_0222B35C:
	cmp r0, #1
	bne _0222B36E
	add r0, r4, #0
	bl ov63_0222BB38
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x14]
_0222B36E:
	pop {r4, pc}
	; .align 2, 0
_0222B370: .word 0x0222D904
	thumb_func_end ov63_0222B33C

	thumb_func_start ov63_0222B374
ov63_0222B374: ; 0x0222B374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	add r0, r1, #0
	lsl r5, r0, #4
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r1, r0, r5
	ldr r0, _0222B3F4 ; =0x00002118
	str r2, [sp, #0x14]
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0222B392
	bl GF_AssertFail
_0222B392:
	ldr r0, _0222B3F8 ; =0x0222D970
	ldr r6, _0222B3FC ; =0x0222D900
	add r4, r0, r5
	ldr r0, [sp, #0xc]
	mov r7, #0
	add r5, r0, r5
	ldr r0, [sp, #0x10]
	lsl r1, r0, #1
	mov r0, #1
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0x18]
_0222B3AA:
	lsr r2, r7, #0x1f
	lsl r1, r7, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	ldrb r2, [r6]
	ldr r1, [sp, #0x18]
	add r0, r0, #2
	add r1, r2, r1
	str r1, [sp]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	str r1, [sp, #8]
	lsl r1, r0, #2
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r1, r0, r1
	mov r0, #0x8a
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	ldr r1, _0222B400 ; =0x00002294
	mov r3, #0
	ldr r1, [r2, r1]
	ldr r2, [r4, #0]
	bl sub_02009BC4
	ldr r1, _0222B3F4 ; =0x00002118
	add r7, r7, #1
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r7, #4
	blt _0222B3AA
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B3F4: .word 0x00002118
_0222B3F8: .word 0x0222D970
_0222B3FC: .word 0x0222D900
_0222B400: .word 0x00002294
	thumb_func_end ov63_0222B374

	thumb_func_start ov63_0222B404
ov63_0222B404: ; 0x0222B404
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	lsl r5, r1, #4
	ldr r0, _0222B44C ; =0x00002118
	add r1, r6, r5
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222B418
	bl GF_AssertFail
_0222B418:
	mov r4, #0
	add r5, r6, r5
	add r7, r4, #0
_0222B41E:
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r6, r0
	mov r0, #0x8a
	lsl r0, r0, #6
	ldr r0, [r1, r0]
	ldr r1, _0222B44C ; =0x00002118
	ldr r1, [r5, r1]
	bl sub_02009D68
	ldr r0, _0222B44C ; =0x00002118
	add r4, r4, #1
	str r7, [r5, r0]
	add r5, r5, #4
	cmp r4, #4
	blt _0222B41E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B44C: .word 0x00002118
	thumb_func_end ov63_0222B404

	thumb_func_start ov63_0222B450
ov63_0222B450: ; 0x0222B450
	push {r3, lr}
	ldr r3, _0222B474 ; =0x0222D9A0
	mov r2, #0
_0222B456:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0222B464
	ldr r0, _0222B478 ; =0x0222D9A2
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	pop {r3, pc}
_0222B464:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x97
	blt _0222B456
	bl GF_AssertFail
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0222B474: .word 0x0222D9A0
_0222B478: .word 0x0222D9A2
	thumb_func_end ov63_0222B450

	thumb_func_start ov63_0222B47C
ov63_0222B47C: ; 0x0222B47C
	cmp r1, #0
	bne _0222B496
	cmp r0, #0
	beq _0222B48E
	cmp r0, #0x61
	beq _0222B48E
	sub r0, #0xfc
	cmp r0, #1
	bhi _0222B492
_0222B48E:
	mov r0, #1
	bx lr
_0222B492:
	mov r0, #0
	bx lr
_0222B496:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222B47C

	thumb_func_start ov63_0222B49C
ov63_0222B49C: ; 0x0222B49C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #2
	beq _0222B4B0
	cmp r4, #3
	beq _0222B4B0
	bl GF_AssertFail
_0222B4B0:
	sub r1, r4, #2
	cmp r6, #0
	bne _0222B4B8
	add r1, r1, #2
_0222B4B8:
	ldr r0, _0222B4C8 ; =0x0222D900
	ldrb r2, [r0, r1]
	mov r0, #1
	lsl r1, r5, #1
	lsl r0, r0, #8
	add r0, r1, r0
	add r0, r2, r0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222B4C8: .word 0x0222D900
	thumb_func_end ov63_0222B49C

	thumb_func_start ov63_0222B4CC
ov63_0222B4CC: ; 0x0222B4CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x38
	mul r0, r4
	add r0, r5, r0
	ldr r0, [r0, #0x14]
	add r6, r2, #0
	add r7, r3, #0
	cmp r0, #0
	beq _0222B4E6
	bl GF_AssertFail
_0222B4E6:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	bne _0222B4FE
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov63_0222B510
	pop {r3, r4, r5, r6, r7, pc}
_0222B4FE:
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov63_0222B664
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov63_0222B4CC

	thumb_func_start ov63_0222B510
ov63_0222B510: ; 0x0222B510
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	ldr r0, [sp, #0x58]
	add r6, r5, #0
	str r0, [sp, #0x40]
	mov r0, #2
	lsl r0, r0, #8
	add r0, r1, r0
	str r0, [sp, #0x38]
	lsl r0, r1, #1
	str r0, [sp, #0x3c]
	add r4, r1, #0
	mov r0, #0x38
	mul r4, r0
	ldr r0, [sp, #0x38]
	mov r1, #0x8a
	str r0, [sp]
	add r0, r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r2, [sp, #0x2c]
	ldr r2, [sp, #0x3c]
	str r3, [sp, #0x30]
	lsl r1, r1, #6
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, #0x14
	ldr r1, [r5, r1]
	add r6, #0x14
	add r2, #0xe
	mov r3, #0
	bl sub_02009A4C
	str r0, [r6, r4]
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x3c]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r7, r5, #0
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	add r2, #0xd
	ldr r1, _0222B660 ; =0x00002284
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, #0x10
	ldr r1, [r5, r1]
	add r7, #0x18
	mov r3, #0
	str r2, [sp, #0x3c]
	bl sub_02009B04
	str r0, [r7, r4]
	ldr r0, [r6, r4]
	bl sub_02009E1C
	mov r1, #6
	ldr r2, [r0, #0x10]
	lsl r1, r1, #0xa
	cmp r2, r1
	beq _0222B596
	mov r1, #1
	str r1, [sp, #0x34]
	b _0222B59A
_0222B596:
	mov r1, #0
	str r1, [sp, #0x34]
_0222B59A:
	ldr r1, [sp, #0x30]
	cmp r1, #2
	bne _0222B5A8
	mov r1, #2
	lsl r1, r1, #0xa
	str r1, [r0, #0x10]
	b _0222B5C0
_0222B5A8:
	cmp r1, #1
	bne _0222B5C0
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _0222B5BA
	mov r1, #5
	lsl r1, r1, #0xa
	str r1, [r0, #0x10]
	b _0222B5C0
_0222B5BA:
	mov r1, #6
	lsl r1, r1, #0xa
	str r1, [r0, #0x10]
_0222B5C0:
	ldr r0, [r6, r4]
	bl sub_0200A450
	cmp r0, #0
	bne _0222B5CE
	bl GF_AssertFail
_0222B5CE:
	ldr r0, [r7, r4]
	bl sub_0200A640
	cmp r0, #0
	bne _0222B5DC
	bl GF_AssertFail
_0222B5DC:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0222B5EC
	ldr r1, [r7, r4]
	add r0, r5, #0
	mov r2, #1
	bl ov63_0222BC80
_0222B5EC:
	ldr r0, [r6, r4]
	bl sub_02009D4C
	ldr r0, [r7, r4]
	bl sub_02009D4C
	ldr r0, [sp, #0x2c]
	add r1, r5, r4
	str r0, [r1, #0x1c]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x34]
	str r0, [r1, #0x20]
	mov r0, #0
	str r0, [r1, #0x10]
	ldr r0, [sp, #0x30]
	mov r1, #2
	bl ov63_0222B49C
	add r6, r0, #0
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x34]
	mov r1, #3
	bl ov63_0222B49C
	str r0, [sp]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r2, #0x8a
	str r0, [sp, #0x10]
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	add r3, r6, #0
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	add r5, #0x24
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x38]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r4
	add r2, r1, #0
	bl sub_020093B4
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_0222B660: .word 0x00002284
	thumb_func_end ov63_0222B510

	thumb_func_start ov63_0222B664
ov63_0222B664: ; 0x0222B664
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r7, r1, #0
	add r5, r0, #0
	sub r0, r7, #2
	str r0, [sp, #0x38]
	mov r0, #2
	lsl r0, r0, #8
	add r0, r7, r0
	str r0, [sp, #0x34]
	mov r0, #0x38
	add r4, r7, #0
	mul r4, r0
	ldr r0, [sp, #0x34]
	mov r1, #0x8a
	str r0, [sp]
	add r0, r2, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x50]
	add r6, r5, #0
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	lsl r1, r1, #6
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	add r1, #0x18
	ldr r1, [r5, r1]
	add r6, #0x14
	sub r2, r7, #1
	mov r3, #0
	bl sub_02009A4C
	str r0, [r6, r4]
	ldr r0, [sp, #0x30]
	cmp r0, #2
	bne _0222B6BA
	ldr r0, [r6, r4]
	bl sub_02009E1C
	mov r1, #2
	lsl r1, r1, #0xa
	str r1, [r0, #0x10]
	b _0222B6CA
_0222B6BA:
	cmp r0, #1
	bne _0222B6CA
	ldr r0, [r6, r4]
	bl sub_02009E1C
	mov r1, #5
	lsl r1, r1, #0xa
	str r1, [r0, #0x10]
_0222B6CA:
	ldr r0, [r6, r4]
	bl sub_0200A450
	cmp r0, #0
	bne _0222B6D8
	bl GF_AssertFail
_0222B6D8:
	ldr r0, [r6, r4]
	bl sub_02009D4C
	mov r0, #0
	add r2, r5, r4
	ldr r1, [sp, #0x2c]
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	ldr r1, [sp, #0x30]
	mov r6, #1
	str r1, [r2, #0x20]
	str r6, [r2, #0x10]
	mov r2, #6
	ldr r1, [sp, #0x38]
	lsl r2, r2, #6
	add r3, r1, r2
	mov r2, #0x8a
	str r3, [sp]
	sub r1, r6, #2
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r5, r2]
	add r5, #0x24
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x34]
	ldr r2, _0222B734 ; =0x00000402
	add r0, r5, r4
	bl sub_020093B4
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B734: .word 0x00000402
	thumb_func_end ov63_0222B664

	thumb_func_start ov63_0222B738
ov63_0222B738: ; 0x0222B738
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	mov r0, #0x38
	add r4, r6, #0
	mul r4, r0
	add r0, r5, r4
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _0222B750
	bl GF_AssertFail
_0222B750:
	add r0, r5, r4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	bne _0222B762
	add r0, r5, #0
	add r1, r6, #0
	bl ov63_0222B76C
	pop {r4, r5, r6, pc}
_0222B762:
	add r0, r5, #0
	add r1, r6, #0
	bl ov63_0222B7AC
	pop {r4, r5, r6, pc}
	thumb_func_end ov63_0222B738

	thumb_func_start ov63_0222B76C
ov63_0222B76C: ; 0x0222B76C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r5, #0
	mov r0, #0x38
	add r4, r1, #0
	mul r4, r0
	add r6, #0x14
	ldr r0, [r6, r4]
	bl sub_0200A4E4
	add r7, r5, #0
	add r7, #0x18
	ldr r0, [r7, r4]
	bl sub_0200A6DC
	mov r0, #0x8a
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r6, r4]
	bl sub_02009D68
	ldr r0, _0222B7A8 ; =0x00002284
	ldr r1, [r7, r4]
	ldr r0, [r5, r0]
	bl sub_02009D68
	mov r0, #0
	str r0, [r6, r4]
	str r0, [r7, r4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B7A8: .word 0x00002284
	thumb_func_end ov63_0222B76C

	thumb_func_start ov63_0222B7AC
ov63_0222B7AC: ; 0x0222B7AC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r6, #0
	mov r0, #0x38
	add r4, r1, #0
	add r5, #0x14
	mul r4, r0
	ldr r0, [r5, r4]
	bl sub_0200A4E4
	mov r0, #0x8a
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	ldr r1, [r5, r4]
	bl sub_02009D68
	mov r0, #0
	str r0, [r5, r4]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222B7AC

	thumb_func_start ov63_0222B7D4
ov63_0222B7D4: ; 0x0222B7D4
	mov r2, #0x38
	mul r2, r1
	add r0, r0, r2
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0222B7E4
	mov r0, #1
	bx lr
_0222B7E4:
	mov r0, #0
	bx lr
	thumb_func_end ov63_0222B7D4

	thumb_func_start ov63_0222B7E8
ov63_0222B7E8: ; 0x0222B7E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r6, r0, #0
	ldr r0, _0222B904 ; =0x00002248
	str r1, [sp, #0x2c]
	ldr r0, [r6, r0]
	add r7, r2, #0
	cmp r0, #0
	beq _0222B7FE
	bl GF_AssertFail
_0222B7FE:
	mov r4, #0
	add r0, r6, #0
	add r1, r4, #0
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B814
	add r0, r4, #0
	str r0, [sp, #0x30]
	mov r4, #1
	b _0222B84C
_0222B814:
	add r0, r6, #0
	mov r1, #1
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B826
	mov r4, #1
	str r4, [sp, #0x30]
	b _0222B84C
_0222B826:
	add r0, r6, #0
	mov r1, #0x95
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B83A
	mov r0, #0x95
	str r0, [sp, #0x30]
	mov r4, #1
	b _0222B84C
_0222B83A:
	add r0, r6, #0
	mov r1, #0x96
	bl ov63_0222B7D4
	cmp r0, #1
	bne _0222B84C
	mov r0, #0x96
	str r0, [sp, #0x30]
	mov r4, #1
_0222B84C:
	cmp r4, #1
	beq _0222B854
	bl GF_AssertFail
_0222B854:
	mov r4, #0
	add r5, r6, #0
_0222B858:
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp]
	add r0, r4, #2
	str r0, [sp, #4]
	ldr r0, _0222B908 ; =0x00002288
	str r7, [sp, #8]
	ldr r1, _0222B90C ; =0x00002294
	ldr r0, [r5, r0]
	ldr r1, [r6, r1]
	add r2, r4, #0
	mov r3, #0
	bl sub_02009BC4
	ldr r1, _0222B910 ; =0x00002250
	add r4, r4, #1
	str r0, [r5, r1]
	add r5, r5, #4
	cmp r4, #2
	blt _0222B858
	mov r0, #0x12
	lsl r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, #0x30
	str r0, [sp, #4]
	str r7, [sp, #8]
	ldr r0, [r6, r1]
	add r1, #0x14
	ldr r1, [r6, r1]
	mov r2, #2
	mov r3, #0
	bl sub_02009A4C
	ldr r1, _0222B904 ; =0x00002248
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	bl sub_0200A450
	cmp r0, #0
	bne _0222B8AE
	bl GF_AssertFail
_0222B8AE:
	ldr r0, _0222B904 ; =0x00002248
	ldr r0, [r6, r0]
	bl sub_02009D4C
	mov r1, #0x12
	lsl r1, r1, #4
	mov r0, #0
	mov r3, #0x8a
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r3, r3, #6
	ldr r2, [r6, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r6, r2]
	sub r3, #0x28
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r6, r3
	add r3, r1, #0
	ldr r2, [sp, #0x30]
	add r3, #0xe0
	add r2, r2, r3
	add r3, r1, #0
	bl sub_020093B4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0222B904: .word 0x00002248
_0222B908: .word 0x00002288
_0222B90C: .word 0x00002294
_0222B910: .word 0x00002250
	thumb_func_end ov63_0222B7E8

	thumb_func_start ov63_0222B914
ov63_0222B914: ; 0x0222B914
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222B960 ; =0x00002248
	add r0, r5, r0
	bl ov63_0222B96C
	cmp r0, #1
	bne _0222B95C
	ldr r0, _0222B960 ; =0x00002248
	ldr r0, [r5, r0]
	bl sub_0200A4E4
	mov r1, #0x8a
	lsl r1, r1, #6
	ldr r0, [r5, r1]
	sub r1, #0x38
	ldr r1, [r5, r1]
	bl sub_02009D68
	ldr r0, _0222B960 ; =0x00002248
	mov r4, #0
	add r7, r0, #0
	str r4, [r5, r0]
	add r6, r4, #0
	add r7, #8
_0222B946:
	ldr r0, _0222B964 ; =0x00002288
	ldr r1, _0222B968 ; =0x00002250
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl sub_02009D68
	str r6, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #2
	blt _0222B946
_0222B95C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B960: .word 0x00002248
_0222B964: .word 0x00002288
_0222B968: .word 0x00002250
	thumb_func_end ov63_0222B914

	thumb_func_start ov63_0222B96C
ov63_0222B96C: ; 0x0222B96C
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222B976
	mov r0, #1
	bx lr
_0222B976:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222B96C

	thumb_func_start ov63_0222B97C
ov63_0222B97C: ; 0x0222B97C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0222B9E0 ; =0x00002290
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _0222B992
	bl GF_AssertFail
_0222B992:
	ldr r0, _0222B9E4 ; =0x00000402
	mov r2, #0
	str r0, [sp]
	str r4, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	ldr r1, _0222B9E8 ; =0x00002284
	str r6, [sp, #0xc]
	ldr r0, [r5, r1]
	add r1, #0x14
	ldr r1, [r5, r1]
	add r3, r2, #0
	bl sub_02009B04
	ldr r1, _0222B9E0 ; =0x00002290
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl sub_0200A640
	cmp r0, #0
	bne _0222B9C0
	bl GF_AssertFail
_0222B9C0:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _0222B9D2
	ldr r1, _0222B9E0 ; =0x00002290
	add r0, r5, #0
	ldr r1, [r5, r1]
	mov r2, #8
	bl ov63_0222BC80
_0222B9D2:
	ldr r0, _0222B9E0 ; =0x00002290
	ldr r0, [r5, r0]
	bl sub_02009D4C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0222B9E0: .word 0x00002290
_0222B9E4: .word 0x00000402
_0222B9E8: .word 0x00002284
	thumb_func_end ov63_0222B97C

	thumb_func_start ov63_0222B9EC
ov63_0222B9EC: ; 0x0222B9EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222BA18 ; =0x00002290
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222B9FC
	bl GF_AssertFail
_0222B9FC:
	ldr r0, _0222BA18 ; =0x00002290
	ldr r0, [r4, r0]
	bl sub_0200A6DC
	ldr r1, _0222BA1C ; =0x00002284
	ldr r0, [r4, r1]
	add r1, #0xc
	ldr r1, [r4, r1]
	bl sub_02009D68
	ldr r0, _0222BA18 ; =0x00002290
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0222BA18: .word 0x00002290
_0222BA1C: .word 0x00002284
	thumb_func_end ov63_0222B9EC

	thumb_func_start ov63_0222BA20
ov63_0222BA20: ; 0x0222BA20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, _0222BA9C ; =0x00002148
	str r1, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222BA34
	bl GF_AssertFail
_0222BA34:
	mov r0, #0x11
	mov r4, #0
	str r0, [sp, #0x10]
	add r6, r5, #0
	mov r7, #0x12
_0222BA3E:
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _0222BAA0 ; =0x00002298
	str r0, [sp, #8]
	ldr r0, _0222BAA4 ; =0x00002288
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	mov r3, #0
	bl sub_02009BC4
	ldr r1, _0222BA9C ; =0x00002148
	add r2, r7, #0
	str r0, [r6, r1]
	mov r0, #6
	lsl r0, r0, #6
	add r0, r4, r0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, _0222BAA0 ; =0x00002298
	str r0, [sp, #8]
	ldr r0, _0222BAA8 ; =0x0000228C
	ldr r1, [r5, r1]
	ldr r0, [r5, r0]
	mov r3, #0
	bl sub_02009BC4
	ldr r1, _0222BAAC ; =0x0000214C
	add r4, r4, #1
	str r0, [r6, r1]
	ldr r0, [sp, #0x10]
	add r6, #0x10
	add r0, r0, #2
	add r7, r7, #2
	str r0, [sp, #0x10]
	cmp r4, #0x10
	blt _0222BA3E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0222BA9C: .word 0x00002148
_0222BAA0: .word 0x00002298
_0222BAA4: .word 0x00002288
_0222BAA8: .word 0x0000228C
_0222BAAC: .word 0x0000214C
	thumb_func_end ov63_0222BA20

	thumb_func_start ov63_0222BAB0
ov63_0222BAB0: ; 0x0222BAB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0222BAF0 ; =0x00002148
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0222BAC0
	bl GF_AssertFail
_0222BAC0:
	mov r6, #0
	add r4, r5, #0
	add r7, r6, #0
_0222BAC6:
	ldr r0, _0222BAF4 ; =0x00002288
	ldr r1, _0222BAF0 ; =0x00002148
	ldr r0, [r5, r0]
	ldr r1, [r4, r1]
	bl sub_02009D68
	ldr r0, _0222BAF8 ; =0x0000228C
	ldr r1, _0222BAFC ; =0x0000214C
	ldr r0, [r5, r0]
	ldr r1, [r4, r1]
	bl sub_02009D68
	ldr r0, _0222BAF0 ; =0x00002148
	add r6, r6, #1
	str r7, [r4, r0]
	add r0, r0, #4
	str r7, [r4, r0]
	add r4, #0x10
	cmp r6, #0x10
	blt _0222BAC6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222BAF0: .word 0x00002148
_0222BAF4: .word 0x00002288
_0222BAF8: .word 0x0000228C
_0222BAFC: .word 0x0000214C
	thumb_func_end ov63_0222BAB0

	thumb_func_start ov63_0222BB00
ov63_0222BB00: ; 0x0222BB00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	mov r6, #0
	cmp r0, #0
	bls _0222BB2E
	add r4, r6, #0
_0222BB0E:
	ldr r0, [r5, #8]
	add r0, r0, r4
	bl ov63_0222BC70
	cmp r0, #1
	bne _0222BB24
	mov r0, #0x18
	ldr r1, [r5, #8]
	mul r0, r6
	add r0, r1, r0
	pop {r4, r5, r6, pc}
_0222BB24:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	add r4, #0x18
	cmp r6, r0
	blo _0222BB0E
_0222BB2E:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov63_0222BB00

	thumb_func_start ov63_0222BB38
ov63_0222BB38: ; 0x0222BB38
	push {r3, lr}
	ldr r1, [r0, #0xc]
	lsl r2, r1, #2
	ldr r1, _0222BB4C ; =0x0222D948
	ldr r1, [r1, r2]
	cmp r1, #0
	beq _0222BB48
	blx r1
_0222BB48:
	pop {r3, pc}
	nop
_0222BB4C: .word 0x0222D948
	thumb_func_end ov63_0222BB38

	thumb_func_start ov63_0222BB50
ov63_0222BB50: ; 0x0222BB50
	ldr r3, _0222BB58 ; =sub_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	bx r3
	; .align 2, 0
_0222BB58: .word sub_02021DCC
	thumb_func_end ov63_0222BB50

	thumb_func_start ov63_0222BB5C
ov63_0222BB5C: ; 0x0222BB5C
	ldr r3, _0222BB68 ; =sub_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	mov r1, #4
	bx r3
	nop
_0222BB68: .word sub_02021DCC
	thumb_func_end ov63_0222BB5C

	thumb_func_start ov63_0222BB6C
ov63_0222BB6C: ; 0x0222BB6C
	ldr r3, _0222BB78 ; =sub_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	add r1, r1, #5
	bx r3
	nop
_0222BB78: .word sub_02021DCC
	thumb_func_end ov63_0222BB6C

	thumb_func_start ov63_0222BB7C
ov63_0222BB7C: ; 0x0222BB7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	add r1, r1, #5
	bl sub_02021DCC
	str r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
	thumb_func_end ov63_0222BB7C

	thumb_func_start ov63_0222BB90
ov63_0222BB90: ; 0x0222BB90
	ldr r3, _0222BB9C ; =sub_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	add r1, #9
	bx r3
	nop
_0222BB9C: .word sub_02021DCC
	thumb_func_end ov63_0222BB90

	thumb_func_start ov63_0222BBA0
ov63_0222BBA0: ; 0x0222BBA0
	ldr r3, _0222BBAC ; =sub_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	add r1, r1, #5
	bx r3
	nop
_0222BBAC: .word sub_02021DCC
	thumb_func_end ov63_0222BBA0

	thumb_func_start ov63_0222BBB0
ov63_0222BBB0: ; 0x0222BBB0
	ldr r3, _0222BBBC ; =sub_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	add r1, r1, #5
	bx r3
	nop
_0222BBBC: .word sub_02021DCC
	thumb_func_end ov63_0222BBB0

	thumb_func_start ov63_0222BBC0
ov63_0222BBC0: ; 0x0222BBC0
	ldr r3, _0222BBCC ; =sub_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	add r1, r1, #5
	bx r3
	nop
_0222BBCC: .word sub_02021DCC
	thumb_func_end ov63_0222BBC0

	thumb_func_start ov63_0222BBD0
ov63_0222BBD0: ; 0x0222BBD0
	ldr r3, _0222BBDC ; =sub_02021DCC
	str r1, [r0, #0x10]
	ldr r0, [r0, #4]
	add r1, r1, #5
	bx r3
	nop
_0222BBDC: .word sub_02021DCC
	thumb_func_end ov63_0222BBD0

	thumb_func_start ov63_0222BBE0
ov63_0222BBE0: ; 0x0222BBE0
	ldr r3, _0222BBEC ; =sub_02021E2C
	mov r1, #2
	ldr r0, [r0, #4]
	lsl r1, r1, #0xc
	bx r3
	nop
_0222BBEC: .word sub_02021E2C
	thumb_func_end ov63_0222BBE0

	thumb_func_start ov63_0222BBF0
ov63_0222BBF0: ; 0x0222BBF0
	ldr r3, _0222BBFC ; =sub_02021E2C
	mov r1, #2
	ldr r0, [r0, #4]
	lsl r1, r1, #0xc
	bx r3
	nop
_0222BBFC: .word sub_02021E2C
	thumb_func_end ov63_0222BBF0

	thumb_func_start ov63_0222BC00
ov63_0222BC00: ; 0x0222BC00
	push {r3, lr}
	add r1, r0, #0
	mov r0, #0x14
	ldrsh r0, [r1, r0]
	cmp r0, #0
	ldr r0, [r1, #4]
	bne _0222BC16
	mov r1, #1
	bl sub_02021E50
	pop {r3, pc}
_0222BC16:
	ldr r1, [r1, #0x10]
	add r1, r1, #5
	bl sub_02021D6C
	pop {r3, pc}
	thumb_func_end ov63_0222BC00

	thumb_func_start ov63_0222BC20
ov63_0222BC20: ; 0x0222BC20
	ldr r3, _0222BC2C ; =sub_02021E2C
	mov r1, #2
	ldr r0, [r0, #4]
	lsl r1, r1, #0xc
	bx r3
	nop
_0222BC2C: .word sub_02021E2C
	thumb_func_end ov63_0222BC20

	thumb_func_start ov63_0222BC30
ov63_0222BC30: ; 0x0222BC30
	ldr r3, _0222BC3C ; =sub_02021E2C
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r1, r1, #0xc
	bx r3
	nop
_0222BC3C: .word sub_02021E2C
	thumb_func_end ov63_0222BC30

	thumb_func_start ov63_0222BC40
ov63_0222BC40: ; 0x0222BC40
	ldr r3, _0222BC4C ; =sub_02021E2C
	mov r1, #1
	ldr r0, [r0, #4]
	lsl r1, r1, #0xc
	bx r3
	nop
_0222BC4C: .word sub_02021E2C
	thumb_func_end ov63_0222BC40

	thumb_func_start ov63_0222BC50
ov63_0222BC50: ; 0x0222BC50
	ldr r3, _0222BC5C ; =sub_02021E2C
	mov r1, #2
	ldr r0, [r0, #4]
	lsl r1, r1, #0xe
	bx r3
	nop
_0222BC5C: .word sub_02021E2C
	thumb_func_end ov63_0222BC50

	thumb_func_start ov63_0222BC60
ov63_0222BC60: ; 0x0222BC60
	ldr r3, _0222BC6C ; =sub_02021E2C
	mov r1, #6
	ldr r0, [r0, #4]
	lsl r1, r1, #0xc
	bx r3
	nop
_0222BC6C: .word sub_02021E2C
	thumb_func_end ov63_0222BC60

	thumb_func_start ov63_0222BC70
ov63_0222BC70: ; 0x0222BC70
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0222BC7A
	mov r0, #1
	bx lr
_0222BC7A:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov63_0222BC70

	thumb_func_start ov63_0222BC80
ov63_0222BC80: ; 0x0222BC80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl sub_02009E34
	str r0, [sp, #4]
	add r0, r6, #0
	mov r1, #1
	bl sub_0200A760
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_0200A760
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	beq _0222BCC4
	lsl r0, r4, #0x15
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	lsl r3, r7, #0x14
	ldr r0, [r5, #4]
	ldr r1, [r1, #0xc]
	mov r2, #2
	lsr r3, r3, #0x10
	bl sub_02002FBC
_0222BCC4:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _0222BCE2
	lsl r0, r4, #0x15
	lsr r0, r0, #0x10
	str r0, [sp]
	ldr r1, [sp, #4]
	lsl r3, r6, #0x14
	ldr r0, [r5, #4]
	ldr r1, [r1, #0xc]
	mov r2, #3
	lsr r3, r3, #0x10
	bl sub_02002FBC
_0222BCE2:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov63_0222BC80

	.rodata


	.global Unk_ov63_0222D900
Unk_ov63_0222D900: ; 0x0222D900
	.incbin "incbin/overlay63_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov63_0222D904
Unk_ov63_0222D904: ; 0x0222D904
	.incbin "incbin/overlay63_rodata.bin", 0x4, 0x10 - 0x4

	.global Unk_ov63_0222D910
Unk_ov63_0222D910: ; 0x0222D910
	.incbin "incbin/overlay63_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov63_0222D920
Unk_ov63_0222D920: ; 0x0222D920
	.incbin "incbin/overlay63_rodata.bin", 0x20, 0x48 - 0x20

	.global Unk_ov63_0222D948
Unk_ov63_0222D948: ; 0x0222D948
	.incbin "incbin/overlay63_rodata.bin", 0x48, 0x70 - 0x48

	.global Unk_ov63_0222D970
Unk_ov63_0222D970: ; 0x0222D970
	.incbin "incbin/overlay63_rodata.bin", 0x70, 0xA0 - 0x70

	.global Unk_ov63_0222D9A0
Unk_ov63_0222D9A0: ; 0x0222D9A0
	.incbin "incbin/overlay63_rodata.bin", 0xA0, 0x25C

