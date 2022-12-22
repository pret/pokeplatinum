	.include "macros/function.inc"
	.include "include/ov94_0223D0C4.inc"

	

	.text


	thumb_func_start ov94_0223D0C4
ov94_0223D0C4: ; 0x0223D0C4
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223D53C
	ldr r0, [r4, #4]
	bl ov94_0223D1D4
	add r0, r4, #0
	bl ov94_0223D2E8
	add r0, r4, #0
	bl ov94_0223D438
	add r0, r4, #0
	bl ov94_0223D3DC
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02076B10
	str r0, [sp]
	mov r0, #0x87
	lsl r0, r0, #2
	ldr r2, _0223D188 ; =0x00000B94
	add r0, r4, r0
	str r0, [sp, #4]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _0223D18C ; =0x00000F6C
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov94_0223D910
	ldr r1, _0223D190 ; =0x0000100C
	mov r2, #0x8f
	add r0, r4, r1
	str r0, [sp]
	ldr r0, _0223D188 ; =0x00000B94
	mov r3, #0x13
	sub r1, #0x50
	lsl r2, r2, #2
	lsl r3, r3, #4
	ldr r0, [r4, r0]
	add r1, r4, r1
	add r2, r4, r2
	add r3, r4, r3
	bl ov94_0223DA78
	ldr r1, _0223D194 ; =0x00000223
	mov r2, #0
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	bl ov94_02242970
	mov r1, #0x22
	lsl r1, r1, #4
	ldrsh r2, [r4, r1]
	ldr r3, _0223D198 ; =0x00000FDC
	add r1, r1, #2
	str r2, [sp]
	ldrsb r1, [r4, r1]
	ldr r2, _0223D188 ; =0x00000B94
	add r3, r4, r3
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov94_02242368
	mov r0, #0x13
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov94_0223DB2C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223D188: .word 0x00000B94
_0223D18C: .word 0x00000F6C
_0223D190: .word 0x0000100C
_0223D194: .word 0x00000223
_0223D198: .word 0x00000FDC
	thumb_func_end ov94_0223D0C4

	thumb_func_start ov94_0223D19C
ov94_0223D19C: ; 0x0223D19C
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223D1AC ; =0x02246808
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0223D1AC: .word 0x02246808
	thumb_func_end ov94_0223D19C

	thumb_func_start ov94_0223D1B0
ov94_0223D1B0: ; 0x0223D1B0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223D428
	add r0, r4, #0
	bl ov94_0223D57C
	add r0, r4, #0
	bl ov94_0223D504
	ldr r0, [r4, #4]
	bl ov94_0223D2BC
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_0223D1B0

	thumb_func_start ov94_0223D1D4
ov94_0223D1D4: ; 0x0223D1D4
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _0223D2A8 ; =0x02245B78
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x70
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _0223D2AC ; =0x02245B5C
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _0223D2B0 ; =0x02245B40
	add r3, sp, #0x38
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
	ldr r5, _0223D2B4 ; =0x02245B24
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _0223D2B8 ; =0x02245B08
	add r3, sp, #0
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
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_0223D2A8: .word 0x02245B78
_0223D2AC: .word 0x02245B5C
_0223D2B0: .word 0x02245B40
_0223D2B4: .word 0x02245B24
_0223D2B8: .word 0x02245B08
	thumb_func_end ov94_0223D1D4

	thumb_func_start ov94_0223D2BC
ov94_0223D2BC: ; 0x0223D2BC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_0223D2BC

	thumb_func_start ov94_0223D2E8
ov94_0223D2E8: ; 0x0223D2E8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #4]
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3e
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #7
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x11
	add r2, r5, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x19
	add r2, r5, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #0x2a
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xf
	add r2, r5, #0
	mov r3, #5
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1f
	add r2, r5, #0
	mov r3, #5
	bl sub_0200710C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov94_0223D2E8

	thumb_func_start ov94_0223D3DC
ov94_0223D3DC: ; 0x0223D3DC
	push {r4, lr}
	sub sp, #0x30
	ldr r2, _0223D424 ; =0x00000D54
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov94_0223C300
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x3a
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0xed
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xed
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl sub_02021D6C
	bl sub_02039734
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
_0223D424: .word 0x00000D54
	thumb_func_end ov94_0223D3DC

	thumb_func_start ov94_0223D428
ov94_0223D428: ; 0x0223D428
	mov r1, #0xed
	lsl r1, r1, #4
	ldr r3, _0223D434 ; =sub_02021BD4
	ldr r0, [r0, r1]
	bx r3
	nop
_0223D434: .word sub_02021BD4
	thumb_func_end ov94_0223D428

	thumb_func_start ov94_0223D438
ov94_0223D438: ; 0x0223D438
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223D4F4 ; =0x00000EFC
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl sub_0201A7E8
	ldr r1, _0223D4F4 ; =0x00000EFC
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223D4F8 ; =0x00000F3C
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r1, _0223D4FC ; =0x00000F6C
	ldr r0, [sp, #0x14]
	ldr r4, _0223D500 ; =0x02245B94
	mov r6, #0x86
	mov r7, #0
	add r5, r0, r1
_0223D4A0:
	ldr r0, [r4, #4]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r4, #0]
	ldr r0, [r0, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	add r7, r7, #1
	mul r0, r1
	add r6, r6, r0
	add r4, #0x10
	add r5, #0x10
	cmp r7, #0xc
	blt _0223D4A0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D4F4: .word 0x00000EFC
_0223D4F8: .word 0x00000F3C
_0223D4FC: .word 0x00000F6C
_0223D500: .word 0x02245B94
	thumb_func_end ov94_0223D438

	thumb_func_start ov94_0223D504
ov94_0223D504: ; 0x0223D504
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223D530 ; =0x00000EFC
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223D534 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223D538 ; =0x00000F6C
	mov r4, #0
	add r5, r5, r0
_0223D51E:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xc
	blt _0223D51E
	pop {r3, r4, r5, pc}
	nop
_0223D530: .word 0x00000EFC
_0223D534: .word 0x00000F3C
_0223D538: .word 0x00000F6C
	thumb_func_end ov94_0223D504

	thumb_func_start ov94_0223D53C
ov94_0223D53C: ; 0x0223D53C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, #0x1c
	ldr r0, [r5, r1]
	mov r1, #0x27
	bl sub_0200B1EC
	ldr r1, _0223D578 ; =0x00000BB4
	mov r4, #0
	str r0, [r5, r1]
	mov r7, #0x14
	add r6, r1, #4
_0223D562:
	add r0, r7, #0
	mov r1, #0x3e
	bl sub_02023790
	str r0, [r5, r6]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa
	blt _0223D562
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D578: .word 0x00000BB4
	thumb_func_end ov94_0223D53C

	thumb_func_start ov94_0223D57C
ov94_0223D57C: ; 0x0223D57C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, _0223D5A8 ; =0x00000BB8
	mov r4, #0
	add r5, r7, #0
_0223D586:
	ldr r0, [r5, r6]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0xa
	blt _0223D586
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	bl sub_020237BC
	ldr r0, _0223D5AC ; =0x00000BB4
	ldr r0, [r7, r0]
	bl sub_020237BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223D5A8: .word 0x00000BB8
_0223D5AC: .word 0x00000BB4
	thumb_func_end ov94_0223D57C

	thumb_func_start ov94_0223D5B0
ov94_0223D5B0: ; 0x0223D5B0
	mov r1, #1
	str r1, [r0, #0x2c]
	mov r0, #3
	bx lr
	thumb_func_end ov94_0223D5B0

	thumb_func_start ov94_0223D5B8
ov94_0223D5B8: ; 0x0223D5B8
	push {r4, lr}
	sub sp, #8
	ldr r1, _0223D60C ; =0x021BF67C
	mov r2, #1
	ldr r3, [r1, #0x48]
	add r4, r0, #0
	add r1, r3, #0
	tst r1, r2
	beq _0223D5F0
	ldr r1, _0223D610 ; =0x00000F0F
	mov r3, #0
	str r1, [sp]
	mov r1, #0x13
	lsl r1, r1, #4
	add r1, r4, r1
	str r1, [sp, #4]
	mov r1, #5
	bl ov94_0223D88C
	add r0, r4, #0
	mov r1, #3
	mov r2, #7
	bl ov94_0223C3F4
	ldr r0, _0223D614 ; =0x000005DC
	bl sub_02005748
	b _0223D606
_0223D5F0:
	mov r1, #2
	tst r3, r1
	beq _0223D606
	str r1, [r4, #0x2c]
	add r1, r2, #0
	mov r2, #0
	bl ov94_0223C4C0
	ldr r0, _0223D614 ; =0x000005DC
	bl sub_02005748
_0223D606:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0223D60C: .word 0x021BF67C
_0223D610: .word 0x00000F0F
_0223D614: .word 0x000005DC
	thumb_func_end ov94_0223D5B8

	thumb_func_start ov94_0223D618
ov94_0223D618: ; 0x0223D618
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223D618

	thumb_func_start ov94_0223D640
ov94_0223D640: ; 0x0223D640
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _0223D65C ; =0x0000015A
	mov r1, #0xf
	bl ov94_0223C3C0
	ldr r1, _0223D660 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #6
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	nop
_0223D65C: .word 0x0000015A
_0223D660: .word 0x00001070
	thumb_func_end ov94_0223D640

	thumb_func_start ov94_0223D664
ov94_0223D664: ; 0x0223D664
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D6AC ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223D6A8
	sub r1, r1, #1
	cmp r0, r1
	bne _0223D68E
	ldr r0, _0223D6B0 ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	str r1, [r4, #0x2c]
	bl sub_0200E084
	b _0223D6A2
_0223D68E:
	mov r0, #2
	str r0, [r4, #0x2c]
	ldr r0, _0223D6B4 ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #7
	mov r2, #8
	bl ov94_0223C4C0
_0223D6A2:
	add r0, r4, #0
	bl ov94_0223DBBC
_0223D6A8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D6AC: .word 0x00001070
_0223D6B0: .word 0x00000EFC
_0223D6B4: .word 0x000010B0
	thumb_func_end ov94_0223D664

	thumb_func_start ov94_0223D6B8
ov94_0223D6B8: ; 0x0223D6B8
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	add r2, sp, #8
	strb r0, [r2, #8]
	mov r0, #1
	strb r0, [r2, #9]
	mov r0, #2
	strb r0, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0x30
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0xc0
	bic r3, r1
	mov r1, #0x3e
	strb r3, [r2, #0xb]
	bl sub_02013A04
	ldr r1, _0223D744 ; =0x0000106C
	mov r2, #0x36
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldr r1, _0223D748 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl sub_02013A4C
	ldr r0, _0223D744 ; =0x0000106C
	ldr r1, _0223D748 ; =0x00000B94
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	mov r2, #0x37
	mov r3, #2
	bl sub_02013A4C
	ldr r0, _0223D744 ; =0x0000106C
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0x1f
	str r0, [sp, #8]
	ldr r0, _0223D74C ; =0x00000F3C
	mov r3, #0xb
	add r0, r4, r0
	str r0, [sp, #0xc]
	bl sub_0200DC48
	mov r0, #0x3e
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #8
	mov r1, #9
	add r3, r2, #0
	bl sub_02001B7C
	ldr r1, _0223D750 ; =0x00001074
	str r0, [r4, r1]
	mov r0, #8
	str r0, [r4, #0x2c]
	mov r0, #3
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_0223D744: .word 0x0000106C
_0223D748: .word 0x00000B94
_0223D74C: .word 0x00000F3C
_0223D750: .word 0x00001074
	thumb_func_end ov94_0223D6B8

	thumb_func_start ov94_0223D754
ov94_0223D754: ; 0x0223D754
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, _0223D828 ; =0x00001074
	ldr r0, [r5, r0]
	bl sub_02001BE0
	cmp r0, #1
	beq _0223D774
	cmp r0, #2
	beq _0223D7F2
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0223D7F2
	b _0223D822
_0223D774:
	ldr r0, _0223D828 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0223D82C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223D830 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r0, #0x13
	lsl r0, r0, #4
	add r4, r5, r0
	add r0, r4, #0
	bl ov94_02241498
	cmp r0, #0
	beq _0223D7CE
	ldr r0, [r5, #0]
	ldr r0, [r0, #8]
	bl sub_0207A0F8
	cmp r0, #6
	bne _0223D7CE
	ldr r0, _0223D834 ; =0x00000F0F
	mov r1, #0x24
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	str r4, [sp, #4]
	bl ov94_0223D88C
	add r0, r5, #0
	mov r1, #3
	mov r2, #1
	bl ov94_0223C3F4
	add sp, #8
	mov r0, #3
	pop {r3, r4, r5, pc}
_0223D7CE:
	ldr r0, _0223D834 ; =0x00000F0F
	mov r1, #6
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0
	str r4, [sp, #4]
	bl ov94_0223D88C
	add r0, r5, #0
	mov r1, #3
	mov r2, #5
	bl ov94_0223C3F4
	add r0, r5, #0
	bl ov94_0223DBBC
	b _0223D822
_0223D7F2:
	ldr r0, _0223D828 ; =0x00001074
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_02001BC4
	ldr r0, _0223D82C ; =0x0000106C
	ldr r0, [r5, r0]
	bl sub_02013A3C
	ldr r0, _0223D830 ; =0x00000F3C
	mov r1, #0
	add r0, r5, r0
	bl sub_0200DC9C
	mov r0, #2
	str r0, [r5, #0x2c]
	add r0, r5, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	add r0, r5, #0
	bl ov94_0223DBBC
_0223D822:
	mov r0, #3
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D828: .word 0x00001074
_0223D82C: .word 0x0000106C
_0223D830: .word 0x00000F3C
_0223D834: .word 0x00000F0F
	thumb_func_end ov94_0223D754

	thumb_func_start ov94_0223D838
ov94_0223D838: ; 0x0223D838
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D854 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D850
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223D850:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D854: .word 0x00000BE4
	thumb_func_end ov94_0223D838

	thumb_func_start ov94_0223D858
ov94_0223D858: ; 0x0223D858
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D888 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223D884
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x2d
	ble _0223D884
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223D884:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223D888: .word 0x00000BE4
	thumb_func_end ov94_0223D858

	thumb_func_start ov94_0223D88C
ov94_0223D88C: ; 0x0223D88C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [sp, #0x24]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B538
	ldr r0, _0223D904 ; =0x00000B94
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	mov r1, #0xb9
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	ldr r0, _0223D908 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223D908 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223D908 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223D90C ; =0x00000BE4
	str r0, [r5, r1]
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223D904: .word 0x00000B94
_0223D908: .word 0x00000EFC
_0223D90C: .word 0x00000BE4
	thumb_func_end ov94_0223D88C

	thumb_func_start ov94_0223D910
ov94_0223D910: ; 0x0223D910
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	str r1, [sp, #8]
	mov r0, #0x16
	mov r1, #0x3e
	add r7, r2, #0
	add r6, r3, #0
	ldr r4, [sp, #0x4c]
	bl sub_02023790
	str r0, [sp, #0x1c]
	mov r0, #0x12
	mov r1, #0x3e
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x1c]
	mov r1, #0x77
	bl sub_02074570
	mov r2, #0
	ldrsh r0, [r4, r2]
	mov r1, #6
	str r0, [sp, #0x10]
	mov r0, #2
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x14]
	mov r0, #3
	ldrsb r4, [r4, r0]
	ldr r0, [sp, #0x48]
	bl sub_02074570
	str r0, [sp, #0x30]
	add r0, r5, #0
	mov r1, #0x46
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r2, _0223DA6C ; =0x02245FD8
	lsl r0, r0, #2
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r2, r1]
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r1, #3
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	add r3, r1, #0
	bl sub_0200B60C
	add r0, r7, #0
	add r1, r5, #0
	mov r2, #0x66
	mov r3, #0x3e
	bl sub_0200B29C
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	bl sub_0200B1EC
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x2c]
	lsl r1, r1, #0x10
	ldr r0, [sp, #0x18]
	lsr r1, r1, #0x10
	mov r2, #0x3e
	bl sub_0207CFA0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_0223D9B4:
	add r0, r5, #0
	add r1, r7, #0
	bl sub_0201ADA4
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #5
	blt _0223D9B4
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	ldr r0, [sp, #0x14]
	cmp r0, #3
	beq _0223D9F2
	mov r3, #0
	ldr r1, _0223DA74 ; =0x022467FC
	ldr r0, [sp, #0xc]
	str r3, [sp]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x28]
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #0x46
	bl ov94_02245900
_0223D9F2:
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x2c]
	add r0, #0x10
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x24]
	add r0, #0x20
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	ldr r1, [sp, #0x20]
	add r0, #0x30
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DA70 ; =0x000F0200
	str r2, [sp]
	add r6, #0x40
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	add r0, r6, #0
	add r3, r2, #0
	bl ov94_02245900
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223DA6C: .word 0x02245FD8
_0223DA70: .word 0x000F0200
_0223DA74: .word 0x022467FC
	thumb_func_end ov94_0223D910

	thumb_func_start ov94_0223DA78
ov94_0223DA78: ; 0x0223DA78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #0x10
	mov r1, #0x3e
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0x10
	mov r1, #0x3e
	bl sub_02023790
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #0x30
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl sub_02023D28
	add r0, r7, #0
	mov r1, #0xac
	bl sub_0200B1EC
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0x91
	add r2, r6, #0
	bl sub_02074470
	mov r2, #0
	ldr r0, _0223DB28 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r0, r5, #0
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DB28 ; =0x000F0200
	str r2, [sp]
	add r5, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DB28 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	add r3, r2, #0
	bl ov94_02245900
	mov r2, #0
	ldr r0, _0223DB28 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, r6, #0
	add r0, #0x10
	add r3, r2, #0
	bl ov94_02245900
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223DB28: .word 0x000F0200
	thumb_func_end ov94_0223DA78

	thumb_func_start ov94_0223DB2C
ov94_0223DB2C: ; 0x0223DB2C
	push {r4, r5, r6, lr}
	sub sp, #0x30
	mov r1, #0x32
	add r5, r0, #0
	mov r0, #0x3e
	lsl r1, r1, #6
	bl sub_02018144
	add r4, r0, #0
	add r0, sp, #0x20
	add r1, r5, #0
	mov r2, #2
	bl sub_02075EF4
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl sub_02074470
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	mov r3, #0
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	str r6, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r1, #2
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	add r1, sp, #0x20
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	mov r2, #0x3e
	bl sub_020136A4
	mov r1, #0x32
	add r0, r4, #0
	lsl r1, r1, #6
	bl DC_FlushRange
	mov r1, #0x4a
	mov r2, #0x32
	add r0, r4, #0
	lsl r1, r1, #8
	lsl r2, r2, #6
	bl GX_LoadOBJ
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x3e
	mov r3, #0x1a
	str r0, [sp, #4]
	add r1, sp, #0x20
	ldrh r0, [r1]
	ldrh r1, [r1, #4]
	mov r2, #1
	lsl r3, r3, #4
	bl sub_02006E84
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x30
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_0223DB2C

	thumb_func_start ov94_0223DBBC
ov94_0223DBBC: ; 0x0223DBBC
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _0223DBF8 ; =0x00000223
	add r4, r0, #0
	ldrsb r0, [r4, r1]
	add r1, r1, #1
	ldrsb r1, [r4, r1]
	mov r2, #0
	bl ov94_02242970
	mov r1, #0x22
	lsl r1, r1, #4
	ldrsh r2, [r4, r1]
	add r1, r1, #2
	ldr r3, _0223DBFC ; =0x00000FDC
	str r2, [sp]
	ldrsb r1, [r4, r1]
	ldr r2, _0223DC00 ; =0x00000B94
	add r3, r4, r3
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	bl ov94_02242368
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0223DBF8: .word 0x00000223
_0223DBFC: .word 0x00000FDC
_0223DC00: .word 0x00000B94
	thumb_func_end ov94_0223DBBC

	.rodata


	.global Unk_ov94_02245B08
Unk_ov94_02245B08: ; 0x02245B08
	.incbin "incbin/overlay94_rodata.bin", 0x110, 0x12C - 0x110

	.global Unk_ov94_02245B24
Unk_ov94_02245B24: ; 0x02245B24
	.incbin "incbin/overlay94_rodata.bin", 0x12C, 0x148 - 0x12C

	.global Unk_ov94_02245B40
Unk_ov94_02245B40: ; 0x02245B40
	.incbin "incbin/overlay94_rodata.bin", 0x148, 0x164 - 0x148

	.global Unk_ov94_02245B5C
Unk_ov94_02245B5C: ; 0x02245B5C
	.incbin "incbin/overlay94_rodata.bin", 0x164, 0x180 - 0x164

	.global Unk_ov94_02245B78
Unk_ov94_02245B78: ; 0x02245B78
	.incbin "incbin/overlay94_rodata.bin", 0x180, 0x19C - 0x180

	.global Unk_ov94_02245B94
Unk_ov94_02245B94: ; 0x02245B94
	.incbin "incbin/overlay94_rodata.bin", 0x19C, 0xC0


	.data


	.global Unk_ov94_022467FC
Unk_ov94_022467FC: ; 0x022467FC
	.incbin "incbin/overlay94_data.bin", 0x3FC, 0x408 - 0x3FC

	.global Unk_ov94_02246808
Unk_ov94_02246808: ; 0x02246808
	.incbin "incbin/overlay94_data.bin", 0x408, 0x24

