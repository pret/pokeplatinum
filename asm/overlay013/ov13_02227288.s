	.include "macros/function.inc"
	.include "overlay013/ov13_02227288.inc"

	

	.text


	thumb_func_start ov13_02227288
ov13_02227288: ; 0x02227288
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	ldr r0, [r4, #4]
	ldr r2, _022272A4 ; =0x02229A60
	add r1, #0x1c
	bl sub_0201A8D4
	ldr r1, _022272A8 ; =0x0000114C
	add r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov13_022272AC
	pop {r4, pc}
	; .align 2, 0
_022272A4: .word 0x02229A60
_022272A8: .word 0x0000114C
	thumb_func_end ov13_02227288

	thumb_func_start ov13_022272AC
ov13_022272AC: ; 0x022272AC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	cmp r1, #0
	beq _022272BE
	cmp r1, #1
	beq _022272C8
	cmp r1, #2
	beq _022272D2
	b _022272DA
_022272BE:
	mov r1, #5
	add r0, #0x30
	ldr r6, _02227318 ; =0x02229A88
	strb r1, [r0]
	b _022272DA
_022272C8:
	mov r1, #0x1a
	add r0, #0x30
	ldr r6, _0222731C ; =0x02229AE0
	strb r1, [r0]
	b _022272DA
_022272D2:
	ldr r6, _02227320 ; =0x02229A68
	mov r1, #4
	add r0, #0x30
	strb r1, [r0]
_022272DA:
	add r1, r5, #0
	ldr r0, [r5, #0]
	add r1, #0x30
	ldrb r1, [r1]
	ldr r0, [r0, #0xc]
	bl sub_0201A778
	str r0, [r5, #0x2c]
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	mov r4, #0
	cmp r0, #0
	bls _02227316
_022272F6:
	ldr r2, [r5, #0x2c]
	lsl r1, r4, #4
	add r1, r2, r1
	lsl r2, r4, #3
	ldr r0, [r5, #4]
	add r2, r6, r2
	bl sub_0201A8D4
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r5, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blo _022272F6
_02227316:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02227318: .word 0x02229A88
_0222731C: .word 0x02229AE0
_02227320: .word 0x02229A68
	thumb_func_end ov13_022272AC

	thumb_func_start ov13_02227324
ov13_02227324: ; 0x02227324
	add r1, r0, #0
	ldr r0, [r1, #0x2c]
	add r1, #0x30
	ldr r3, _02227330 ; =sub_0201A928
	ldrb r1, [r1]
	bx r3
	; .align 2, 0
_02227330: .word sub_0201A928
	thumb_func_end ov13_02227324

	thumb_func_start ov13_02227334
ov13_02227334: ; 0x02227334
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x30
	ldrb r1, [r1]
	ldr r0, [r4, #0x2c]
	bl sub_0201A928
	add r4, #0x1c
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02227334

	thumb_func_start ov13_02227350
ov13_02227350: ; 0x02227350
	push {r3, lr}
	cmp r1, #0
	beq _02227360
	cmp r1, #1
	beq _02227366
	cmp r1, #2
	beq _0222736C
	pop {r3, pc}
_02227360:
	bl ov13_022273CC
	pop {r3, pc}
_02227366:
	bl ov13_02227888
	pop {r3, pc}
_0222736C:
	bl ov13_02227974
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov13_02227350

	thumb_func_start ov13_02227374
ov13_02227374: ; 0x02227374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, [r0, #0x2c]
	lsl r4, r1, #4
	ldr r0, [r0, #0x10]
	add r1, r2, #0
	add r6, r3, #0
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	mov r2, #0
	bl sub_02002D7C
	add r7, r0, #0
	add r0, r5, r4
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsr r3, r0, #1
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x10]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	add r1, r6, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r5, r4
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov13_02227374

	thumb_func_start ov13_022273CC
ov13_022273CC: ; 0x022273CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	add r7, r6, #0
_022273D8:
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	add r0, r0, r4
	bl sub_0201ADA4
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #5
	blo _022273D8
	mov r0, #8
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #2
	bl ov13_02227374
	mov r0, #0x18
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #1
	mov r3, #2
	bl ov13_02227374
	mov r0, #8
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r2, #2
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl ov13_02227374
	mov r0, #0x18
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #1
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #3
	mov r3, #2
	bl ov13_02227374
	mov r0, #8
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #2
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #7
	add r3, r1, #0
	bl ov13_02227374
	mov r0, #8
	str r0, [sp]
	ldr r0, _022274A4 ; =0x00030201
	mov r1, #3
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #6
	mov r3, #2
	bl ov13_02227374
	ldr r0, [r5, #0]
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0222749E
	ldr r0, [r5, #0x10]
	mov r1, #8
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022274A4 ; =0x00030201
	mov r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, #0x2c]
	mov r1, #2
	add r0, #0x40
	add r2, r4, #0
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [r5, #0x2c]
	add r0, #0x40
	bl sub_0201A9A4
_0222749E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022274A4: .word 0x00030201
	thumb_func_end ov13_022273CC

	thumb_func_start ov13_022274A8
ov13_022274A8: ; 0x022274A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r4, [r5, #0x2c]
	lsl r6, r3, #4
	add r7, r1, #0
	add r0, r4, r6
	mov r1, #0
	str r2, [sp, #0x10]
	bl sub_0201ADA4
	ldr r0, _02227544 ; =0x0000114D
	lsl r7, r7, #2
	ldrb r1, [r5, r0]
	mov r0, #0x90
	mul r0, r1
	add r0, r5, r0
	add r0, r0, r7
	ldrh r0, [r0, #0x3c]
	cmp r0, #0
	beq _0222753A
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x10]
	lsl r2, r1, #3
	ldr r1, _02227548 ; =0x02229AB0
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	ldr r2, _02227544 ; =0x0000114D
	str r0, [sp, #0x14]
	ldrb r3, [r5, r2]
	mov r2, #0x90
	ldr r0, [r5, #0x14]
	mul r2, r3
	add r2, r5, r2
	add r2, r2, r7
	ldrh r2, [r2, #0x3c]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200C388
	ldr r0, [sp, #0x30]
	ldr r1, [r5, #0x18]
	mov r2, #0
	bl sub_02002D7C
	add r7, r0, #0
	add r0, r4, r6
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsr r3, r0, #1
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r4, r6
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
_0222753A:
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02227544: .word 0x0000114D
_02227548: .word 0x02229AB0
	thumb_func_end ov13_022274A8

	thumb_func_start ov13_0222754C
ov13_0222754C: ; 0x0222754C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r4, [r5, #0x2c]
	lsl r7, r3, #4
	add r6, r1, #0
	add r0, r4, r7
	mov r1, #0
	str r2, [sp, #0x10]
	bl sub_0201ADA4
	ldr r0, _022275D8 ; =0x0000114D
	lsl r6, r6, #2
	ldrb r1, [r5, r0]
	mov r0, #0x90
	mul r0, r1
	add r0, r5, r0
	add r0, r0, r6
	ldrh r0, [r0, #0x3e]
	cmp r0, #0
	beq _022275CE
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x10]
	lsl r2, r1, #3
	ldr r1, _022275DC ; =0x02229AB4
	ldr r1, [r1, r2]
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x14]
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _022275D8 ; =0x0000114D
	ldr r0, [r5, #0x14]
	ldrb r3, [r5, r2]
	mov r2, #0x90
	mul r2, r3
	add r2, r5, r2
	add r2, r2, r6
	ldrh r2, [r2, #0x3e]
	mov r3, #3
	bl sub_0200B60C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200C388
	ldr r0, [sp, #0x34]
	mov r3, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x30]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r4, r7
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
_022275CE:
	add r0, r4, r7
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022275D8: .word 0x0000114D
_022275DC: .word 0x02229AB4
	thumb_func_end ov13_0222754C

	thumb_func_start ov13_022275E0
ov13_022275E0: ; 0x022275E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, _02227644 ; =0x0000114D
	add r5, r1, #0
	ldrb r0, [r6, r0]
	ldr r1, [r6, #0]
	add r0, r1, r0
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #6
	mul r0, r1
	str r0, [sp, #0xc]
	add r0, r6, #0
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _02227608
	mov r4, #0
	b _0222760A
_02227608:
	mov r4, #0xc
_0222760A:
	mov r0, #2
	str r0, [sp]
	ldr r0, _02227648 ; =0x00030201
	ldr r1, [sp, #0xc]
	lsl r7, r5, #1
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r5, #0
	add r3, r4, r7
	bl ov13_022274A8
	mov r0, #0
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _0222764C ; =0x00010200
	ldr r1, [sp, #0xc]
	add r3, r4, #1
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, r5, r1
	add r2, r5, #0
	add r3, r3, r7
	bl ov13_0222754C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227644: .word 0x0000114D
_02227648: .word 0x00030201
_0222764C: .word 0x00010200
	thumb_func_end ov13_022275E0

	thumb_func_start ov13_02227650
ov13_02227650: ; 0x02227650
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #0
	add r4, r0, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x13
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019CB8
	mov r5, #0
_02227672:
	add r0, r4, #0
	add r1, r5, #0
	bl ov13_022275E0
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #6
	blo _02227672
	add r0, r4, #0
	add r0, #0x31
	ldrb r1, [r0]
	mov r0, #1
	add r4, #0x31
	eor r0, r1
	strb r0, [r4]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov13_02227650

	thumb_func_start ov13_02227698
ov13_02227698: ; 0x02227698
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	mov r0, #0x19
	ldr r1, [r5, #0x2c]
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [r5, #0x10]
	mov r1, #0x1c
	ldr r4, [r5, #0x2c]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	mov r0, #0
	ldr r1, [sp, #0x10]
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201C294
	lsl r0, r0, #3
	sub r0, r0, r7
	lsr r6, r0, #1
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022277C0 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0x19
	lsl r0, r0, #4
	mov r1, #0
	add r0, r4, r0
	add r3, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, [r5, #0x10]
	mov r1, #0x1d
	bl sub_0200B1EC
	mov r1, #0
	str r0, [sp, #0x14]
	ldr r3, _022277C4 ; =0x0000114D
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _022277C4 ; =0x0000114D
	add r3, r3, #7
	ldrb r2, [r5, r2]
	ldr r0, [r5, #0x14]
	add r2, r5, r2
	ldrb r2, [r2, r3]
	mov r3, #2
	add r2, r2, #1
	bl sub_0200B60C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	ldr r2, [sp, #0x14]
	bl sub_0200C388
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022277C0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r2, [r5, #0x18]
	add r0, r4, r0
	add r3, r6, r7
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, [r5, #0x10]
	mov r1, #0x1e
	bl sub_0200B1EC
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r3, _022277C4 ; =0x0000114D
	ldr r2, [r5, #0]
	ldrb r3, [r5, r3]
	ldr r0, [r5, #0x14]
	add r2, r2, r3
	add r2, #0x2c
	ldrb r2, [r2]
	mov r3, #2
	add r2, r2, #1
	bl sub_0200B60C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0
	ldr r1, [r5, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022277C0 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x19
	lsl r0, r0, #4
	ldr r2, [r5, #0x18]
	add r0, r4, r0
	sub r3, r6, r3
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022277C0: .word 0x00010200
_022277C4: .word 0x0000114D
	thumb_func_end ov13_02227698

	thumb_func_start ov13_022277C8
ov13_022277C8: ; 0x022277C8
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #6
	ldr r1, [r4, #0x2c]
	lsl r0, r0, #6
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _02227880 ; =0x0000114D
	ldrb r0, [r4, r0]
	cmp r0, #3
	bhi _0222787C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022277F0: ; jump table
	.short _022277F8 - _022277F0 - 2 ; case 0
	.short _02227824 - _022277F0 - 2 ; case 1
	.short _02227850 - _022277F0 - 2 ; case 2
	.short _02227868 - _022277F0 - 2 ; case 3
_022277F8:
	mov r0, #4
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x16
	mov r3, #0
	bl ov13_02227374
	mov r0, #0x14
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x17
	mov r3, #0
	bl ov13_02227374
	add sp, #8
	pop {r4, pc}
_02227824:
	mov r0, #4
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0
	bl ov13_02227374
	mov r0, #0x14
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x19
	mov r3, #0
	bl ov13_02227374
	add sp, #8
	pop {r4, pc}
_02227850:
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1a
	mov r3, #0
	bl ov13_02227374
	add sp, #8
	pop {r4, pc}
_02227868:
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02227884 ; =0x00010200
	mov r1, #0x18
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1b
	mov r3, #0
	bl ov13_02227374
_0222787C:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02227880: .word 0x0000114D
_02227884: .word 0x00010200
	thumb_func_end ov13_022277C8

	thumb_func_start ov13_02227888
ov13_02227888: ; 0x02227888
	push {r4, lr}
	add r4, r0, #0
	bl ov13_02227650
	add r0, r4, #0
	bl ov13_022277C8
	add r0, r4, #0
	bl ov13_02227698
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov13_02227888

	thumb_func_start ov13_022278A0
ov13_022278A0: ; 0x022278A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r6, r1, #0
	mov r1, #9
	ldr r4, [r5, #0x2c]
	bl sub_0200B1EC
	ldr r2, _02227908 ; =0x0000114D
	add r7, r0, #0
	ldrb r3, [r5, r2]
	mov r2, #0x90
	ldr r0, [r5, #0x14]
	mul r2, r3
	add r2, r5, r2
	lsl r3, r6, #2
	add r2, r2, r3
	ldrh r2, [r2, #0x3c]
	mov r1, #0
	bl sub_0200B70C
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	add r2, r7, #0
	bl sub_0200C388
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222790C ; =0x00010200
	add r3, r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x18]
	add r0, r4, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02227908: .word 0x0000114D
_0222790C: .word 0x00010200
	thumb_func_end ov13_022278A0

	thumb_func_start ov13_02227910
ov13_02227910: ; 0x02227910
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	ldr r1, [r5, #0]
	ldr r4, [r5, #0x2c]
	ldr r1, [r1, #0xc]
	mov r0, #0x82
	add r4, #0x20
	bl sub_02023790
	ldr r1, _0222796C ; =0x0000114D
	add r7, r0, #0
	ldrb r2, [r5, r1]
	mov r1, #0x90
	mul r1, r2
	add r2, r5, r1
	lsl r1, r6, #2
	add r1, r2, r1
	ldr r2, [r5, #0]
	ldrh r1, [r1, #0x3c]
	ldr r2, [r2, #0xc]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0207CFC8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02227970 ; =0x00010200
	add r2, r7, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #4
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222796C: .word 0x0000114D
_02227970: .word 0x00010200
	thumb_func_end ov13_02227910

	thumb_func_start ov13_02227974
ov13_02227974: ; 0x02227974
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r6, #0
	add r5, r0, #0
	add r4, r6, #0
	add r7, r6, #0
_02227980:
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	add r0, r0, r4
	bl sub_0201ADA4
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #4
	blo _02227980
	ldr r0, _022279E8 ; =0x0000114D
	ldr r1, [r5, #0]
	ldrb r2, [r5, r0]
	add r0, r1, r2
	add r0, #0x27
	ldrb r4, [r0]
	add r0, r1, r2
	add r0, #0x2c
	ldrb r1, [r0]
	mov r0, #6
	add r6, r1, #0
	mul r6, r0
	add r0, r5, #0
	add r1, r4, r6
	bl ov13_022278A0
	mov r2, #0
	str r2, [sp]
	ldr r0, _022279EC ; =0x00010200
	str r2, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, r4, r6
	mov r3, #1
	bl ov13_0222754C
	add r0, r5, #0
	add r1, r4, r6
	bl ov13_02227910
	mov r0, #6
	str r0, [sp]
	ldr r0, _022279F0 ; =0x00030201
	mov r1, #3
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #2
	bl ov13_02227374
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022279E8: .word 0x0000114D
_022279EC: .word 0x00010200
_022279F0: .word 0x00030201
	thumb_func_end ov13_02227974

	thumb_func_start ov13_022279F4
ov13_022279F4: ; 0x022279F4
	push {r4, lr}
	ldr r2, _02227A18 ; =0x000003E2
	add r4, r0, #0
	add r0, #0x1c
	mov r1, #1
	mov r3, #0xe
	bl sub_0200E060
	add r0, r4, #0
	add r0, #0x1c
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	bl ov13_02227A1C
	pop {r4, pc}
	nop
_02227A18: .word 0x000003E2
	thumb_func_end ov13_022279F4

	thumb_func_start ov13_02227A1C
ov13_02227A1C: ; 0x02227A1C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	bl sub_02002AC8
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov16_0223EDF0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r0, r4, #0
	ldr r2, [r4, #0x18]
	add r0, #0x1c
	mov r1, #1
	bl sub_0201D738
	add r4, #0x32
	strb r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov13_02227A1C

	.rodata


	.global Unk_ov13_02229A60
Unk_ov13_02229A60: ; 0x02229A60
	.incbin "incbin/overlay13_rodata.bin", 0xD64, 0xD6C - 0xD64

	.global Unk_ov13_02229A68
Unk_ov13_02229A68: ; 0x02229A68
	.incbin "incbin/overlay13_rodata.bin", 0xD6C, 0xD8C - 0xD6C

	.global Unk_ov13_02229A88
Unk_ov13_02229A88: ; 0x02229A88
	.incbin "incbin/overlay13_rodata.bin", 0xD8C, 0xDB4 - 0xD8C

	.global Unk_ov13_02229AB0
Unk_ov13_02229AB0: ; 0x02229AB0
	.incbin "incbin/overlay13_rodata.bin", 0xDB4, 0xDE4 - 0xDB4

	.global Unk_ov13_02229AE0
Unk_ov13_02229AE0: ; 0x02229AE0
	.incbin "incbin/overlay13_rodata.bin", 0xDE4, 0xD0

