	.include "macros/function.inc"
	.include "include/ov84_0223F040.inc"

	

	.text


	thumb_func_start ov84_0223F040
ov84_0223F040: ; 0x0223F040
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x11
	str r0, [sp, #4]
	mov r0, #0x12
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r4, #4
	mov r2, #2
	mov r3, #0xe
	bl sub_0201A7E8
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1BC ; =0x00000133
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r2, #0
	ldr r0, [r4, #0]
	add r1, #0x14
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0223F1C0 ; =0x000001F3
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x24
	mov r2, #2
	mov r3, #0
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1C4 ; =0x0000025F
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x34
	mov r2, #0
	mov r3, #6
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0xd
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1C4 ; =0x0000025F
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x44
	mov r2, #0
	mov r3, #6
	bl sub_0201A7E8
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0223F1C8 ; =0x00000297
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r2, #0
	ldr r0, [r4, #0]
	add r1, #0x54
	add r3, r2, #0
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1CC ; =0x000002AF
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x64
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D0 ; =0x00000337
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x74
	mov r2, #0
	mov r3, #0x13
	bl sub_0201A7E8
	mov r3, #1
	add r1, r4, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D4 ; =0x00000367
	add r1, #0x84
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	mov r2, #0
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D8 ; =0x00000387
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x94
	mov r2, #0
	mov r3, #0x18
	bl sub_0201A7E8
	mov r0, #0xc
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D8 ; =0x00000387
	mov r2, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r4, #0xa4
	add r1, r4, #0
	mov r3, #1
	bl sub_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F1BC: .word 0x00000133
_0223F1C0: .word 0x000001F3
_0223F1C4: .word 0x0000025F
_0223F1C8: .word 0x00000297
_0223F1CC: .word 0x000002AF
_0223F1D0: .word 0x00000337
_0223F1D4: .word 0x00000367
_0223F1D8: .word 0x00000387
	thumb_func_end ov84_0223F040

	thumb_func_start ov84_0223F1DC
ov84_0223F1DC: ; 0x0223F1DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0223F1E2:
	lsl r0, r4, #4
	add r0, r5, r0
	bl sub_0201A8FC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xb
	blo _0223F1E2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov84_0223F1DC

	thumb_func_start ov84_0223F1F8
ov84_0223F1F8: ; 0x0223F1F8
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0223F230 ; =0x0000018B
	add r5, r0, #0
	mov r0, #1
	mov r1, #0x1a
	mov r3, #6
	bl sub_0200B144
	ldr r7, _0223F234 ; =0x00000404
	add r6, r0, #0
	mov r4, #0
_0223F20E:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0200B1EC
	lsl r1, r4, #2
	add r1, r5, r1
	str r0, [r1, r7]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _0223F20E
	add r0, r6, #0
	bl sub_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F230: .word 0x0000018B
_0223F234: .word 0x00000404
	thumb_func_end ov84_0223F1F8

	thumb_func_start ov84_0223F238
ov84_0223F238: ; 0x0223F238
	push {r4, r5, r6, lr}
	ldr r6, _0223F258 ; =0x00000404
	add r5, r0, #0
	mov r4, #0
_0223F240:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_020237BC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #8
	blo _0223F240
	pop {r4, r5, r6, pc}
	nop
_0223F258: .word 0x00000404
	thumb_func_end ov84_0223F238

	thumb_func_start ov84_0223F25C
ov84_0223F25C: ; 0x0223F25C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r4, #0
	mov r6, #0xd
	mov r7, #1
_0223F268:
	str r6, [sp]
	ldr r2, _0223F2B8 ; =0x000001FF
	str r7, [sp, #4]
	add r2, r4, r2
	lsl r2, r2, #0x10
	lsl r3, r4, #0x18
	str r7, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	mov r0, #0xe
	str r0, [sp]
	mov r0, #1
	ldr r2, _0223F2BC ; =0x00000223
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #3
	add r2, r4, r2
	str r0, [sp, #0xc]
	lsl r2, r2, #0x10
	lsl r3, r4, #0x18
	ldr r0, [r5, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_02019CB8
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _0223F268
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F2B8: .word 0x000001FF
_0223F2BC: .word 0x00000223
	thumb_func_end ov84_0223F25C

	thumb_func_start ov84_0223F2C0
ov84_0223F2C0: ; 0x0223F2C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	add r4, r2, #0
	add r2, r0, #0
	add r6, r1, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F2F8 ; =0x00010200
	lsr r3, r3, #1
	add r5, #0x24
	str r0, [sp, #8]
	mov r1, #0
	add r0, r5, #0
	add r2, r6, #0
	sub r3, r4, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F2F8: .word 0x00010200
	thumb_func_end ov84_0223F2C0

	thumb_func_start ov84_0223F2FC
ov84_0223F2FC: ; 0x0223F2FC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x24
	mov r1, #0
	bl sub_0201ADA4
	add r2, r4, #0
	add r2, #0xc4
	ldr r6, [r2, #0]
	ldr r1, _0223F38C ; =0x00000429
	add r2, r6, #0
	add r2, #0x64
	ldrb r3, [r2]
	mov r2, #0xc
	add r0, r4, r1
	add r5, r3, #0
	mul r5, r2
	add r3, r6, r5
	ldrb r3, [r3, #0xc]
	lsl r3, r3, #2
	add r5, r4, r3
	add r3, r1, #0
	sub r3, #0x25
	ldr r7, [r5, r3]
	ldrb r3, [r0]
	sub r1, #0x25
	add r5, r3, #0
	mul r5, r2
	add r3, r6, r5
	ldrb r3, [r3, #0xc]
	lsl r3, r3, #2
	add r3, r4, r3
	ldr r1, [r3, r1]
	ldrb r3, [r0, #1]
	ldrb r0, [r0, #3]
	cmp r3, #0
	bne _0223F35E
	mul r2, r0
	add r2, #0x92
	lsl r0, r2, #0x10
	lsr r5, r0, #0x10
	add r2, r5, #0
	sub r2, #0x60
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl ov84_0223F2C0
	b _0223F376
_0223F35E:
	mul r2, r0
	mov r0, #0x92
	sub r0, r0, r2
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r2, r5, #0
	add r2, #0x60
	lsl r2, r2, #0x10
	add r0, r4, #0
	lsr r2, r2, #0x10
	bl ov84_0223F2C0
_0223F376:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov84_0223F2C0
	add r4, #0x24
	add r0, r4, #0
	bl sub_0201ACCC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F38C: .word 0x00000429
	thumb_func_end ov84_0223F2FC

	thumb_func_start ov84_0223F390
ov84_0223F390: ; 0x0223F390
	push {r3, r4, r5, lr}
	add r0, #0xd4
	ldr r0, [r0, #0]
	add r5, r1, #0
	mov r1, #0x15
	mov r2, #6
	bl sub_02006CB8
	add r1, r5, #0
	add r4, r0, #0
	bl sub_020A7164
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F390

	thumb_func_start ov84_0223F3AC
ov84_0223F3AC: ; 0x0223F3AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, sp, #0x18
	add r5, r0, #0
	add r6, r2, #0
	bl ov84_0223F390
	add r7, r0, #0
	cmp r6, #1
	bne _0223F3D8
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	mov r0, #0xc
	mul r0, r4
	add r0, r1, r0
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x18
	b _0223F3E8
_0223F3D8:
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	mov r0, #0xc
	mul r0, r4
	add r0, r1, r0
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #0x1d
_0223F3E8:
	lsr r2, r0, #0x18
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x10
	ldr r1, _0223F434 ; =0x00000427
	str r0, [sp, #4]
	ldrb r0, [r5, r1]
	add r1, r1, #1
	ldrb r1, [r5, r1]
	add r3, r1, #0
	mul r3, r4
	add r0, r0, r3
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	add r0, #0x54
	mov r3, #0
	bl sub_0201ADDC
	add r5, #0x54
	add r0, r5, #0
	bl sub_0201A9A4
	mov r0, #6
	add r1, r7, #0
	bl sub_02018238
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F434: .word 0x00000427
	thumb_func_end ov84_0223F3AC

	thumb_func_start ov84_0223F438
ov84_0223F438: ; 0x0223F438
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	add r1, sp, #0x1c
	bl ov84_0223F390
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r0, #0x54
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, _0223F4E0 ; =0x00000424
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _0223F4CC
	mov r7, #1
	add r6, r5, #0
	lsl r7, r7, #8
	add r6, #0x54
_0223F462:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r1, r0, #0
	add r1, #0x64
	ldrb r1, [r1]
	cmp r4, r1
	bne _0223F482
	mov r1, #0xc
	mul r1, r4
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #5
	add r0, #0x10
	lsl r0, r0, #0x18
	b _0223F48C
_0223F482:
	mov r1, #0xc
	mul r1, r4
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	lsl r0, r0, #0x1d
_0223F48C:
	lsr r2, r0, #0x18
	str r7, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0223F4E4 ; =0x00000427
	ldrb r3, [r5, r0]
	add r0, r0, #1
	ldrb r0, [r5, r0]
	add r1, r0, #0
	mul r1, r4
	add r0, r3, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	add r0, r6, #0
	ldr r1, [r1, #0x14]
	mov r3, #0
	bl sub_0201ADDC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, _0223F4E0 ; =0x00000424
	ldrb r0, [r5, r0]
	cmp r4, r0
	blo _0223F462
_0223F4CC:
	add r5, #0x54
	add r0, r5, #0
	bl sub_0201A9A4
	ldr r1, [sp, #0x18]
	mov r0, #6
	bl sub_02018238
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223F4E0: .word 0x00000424
_0223F4E4: .word 0x00000427
	thumb_func_end ov84_0223F438

	thumb_func_start ov84_0223F4E8
ov84_0223F4E8: ; 0x0223F4E8
	push {r3, r4, r5, lr}
	lsl r1, r1, #0x10
	add r4, r2, #0
	lsr r1, r1, #0x10
	mov r2, #0
	add r5, r0, #0
	bl ov84_0223BE5C
	add r2, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200B70C
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F4E8

	thumb_func_start ov84_0223F508
ov84_0223F508: ; 0x0223F508
	push {r3, r4, r5, lr}
	lsl r1, r1, #0x10
	add r4, r2, #0
	lsr r1, r1, #0x10
	mov r2, #0
	add r5, r0, #0
	bl ov84_0223BE5C
	add r2, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_0200B77C
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F508

	thumb_func_start ov84_0223F528
ov84_0223F528: ; 0x0223F528
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _0223F57C ; =0x0000FFFF
	add r6, r1, #0
	cmp r6, r0
	beq _0223F54A
	mov r0, #0x82
	mov r1, #6
	bl sub_02023790
	add r1, r6, #0
	mov r2, #6
	add r4, r0, #0
	bl sub_0207CFC8
	b _0223F558
_0223F54A:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x5e
	bl sub_0200B1EC
	add r4, r0, #0
_0223F558:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F580 ; =0x000F0E00
	add r5, #0x14
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x28
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223F57C: .word 0x0000FFFF
_0223F580: .word 0x000F0E00
	thumb_func_end ov84_0223F528

	thumb_func_start ov84_0223F584
ov84_0223F584: ; 0x0223F584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r5, #0
	add r0, r1, #0
	add r4, #0x14
	bl sub_0207D268
	str r0, [sp, #0x10]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x62
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x56
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x59
	bl sub_0200B1EC
	add r6, r0, #0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r3, #0x60
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x57
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x60
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x58
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0x60
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_020790DC
	add r7, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x5a
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	mov r3, #2
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r2, #0xfe
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0x30
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	mov r1, #2
	bl sub_020790C4
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r7, #1
	bhi _0223F6FA
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl sub_0200B1EC
	b _0223F706
_0223F6FA:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x5b
	bl sub_0200B1EC
_0223F706:
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r2, #0xfe
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0xa0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	mov r1, #4
	bl sub_020790C4
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	bne _0223F770
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x18
	bl sub_0200B1EC
	b _0223F77C
_0223F770:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x5b
	bl sub_0200B1EC
_0223F77C:
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r2, r7, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 ; =0x000F0E00
	mov r2, #0xfe
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0xa0
	bl sub_0201D78C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223F7D0: .word 0x000F0E00
	thumb_func_end ov84_0223F584

	thumb_func_start ov84_0223F7D4
ov84_0223F7D4: ; 0x0223F7D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x26
	bl sub_0200B1EC
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl sub_0200B1EC
	mov r1, #1
	lsl r1, r1, #0xa
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223F7D4

	thumb_func_start ov84_0223F800
ov84_0223F800: ; 0x0223F800
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xff
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov84_0223F800

	thumb_func_start ov84_0223F81C
ov84_0223F81C: ; 0x0223F81C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, r2, #0
	add r1, r0, #0
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	add r6, r3, #0
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	str r4, [sp]
	bne _0223F858
	mov r2, #0xff
	str r2, [sp, #4]
	str r6, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #4
	mov r3, #0x73
	bl sub_0201D78C
	b _0223F86E
_0223F858:
	mov r2, #0xff
	str r2, [sp, #4]
	str r6, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r5, #4
	mov r3, #0x6d
	bl sub_0201D78C
_0223F86E:
	mov r0, #0xa
	mov r1, #6
	bl sub_02023790
	mov r1, #0
	add r7, r0, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r2, #1
	lsl r0, r0, #2
	lsl r2, r2, #0xa
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	add r1, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r7, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r4, #0x86
	str r6, [sp, #8]
	mov r1, #0
	add r0, r5, #4
	add r2, r7, #0
	sub r3, r4, r3
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov84_0223F81C

	thumb_func_start ov84_0223F8D0
ov84_0223F8D0: ; 0x0223F8D0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	mov r0, #0x69
	ldrh r2, [r6]
	lsl r0, r0, #2
	cmp r2, r0
	bhs _0223F91A
	add r1, r0, #0
	sub r1, #0x5d
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	mov r1, #2
	str r1, [sp]
	add r3, r5, #4
	str r3, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	add r3, r4, #5
	str r3, [sp, #0xc]
	sub r0, #0x94
	ldr r0, [r5, r0]
	add r3, r1, #0
	bl sub_0200C648
	lsl r2, r4, #0x10
	ldrh r1, [r6, #2]
	ldr r3, _0223F948 ; =0x00010200
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl ov84_0223F81C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0223F91A:
	sub r1, r0, #1
	sub r1, r2, r1
	add r2, r5, #4
	str r2, [sp]
	mov r2, #0x10
	str r2, [sp, #4]
	add r2, r4, #5
	str r2, [sp, #8]
	sub r0, #0x94
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	lsr r1, r1, #0x10
	mov r2, #2
	mov r3, #1
	bl sub_0200C5BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov84_0223F9B0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F948: .word 0x00010200
	thumb_func_end ov84_0223F8D0

	thumb_func_start ov84_0223F94C
ov84_0223F94C: ; 0x0223F94C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	add r6, r2, #0
	bl sub_0207D344
	mov r1, #2
	add r2, r0, #0
	str r1, [sp]
	add r0, r5, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r6, #5
	str r0, [sp, #0xc]
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r2, r2, #1
	add r3, r1, #0
	bl sub_0200C648
	lsl r2, r6, #0x10
	ldrh r1, [r4, #2]
	ldr r3, _0223F990 ; =0x00010200
	add r0, r5, #0
	lsr r2, r2, #0x10
	bl ov84_0223F81C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F990: .word 0x00010200
	thumb_func_end ov84_0223F94C

	thumb_func_start ov84_0223F994
ov84_0223F994: ; 0x0223F994
	push {r3, r4, r5, lr}
	add r0, #0xd4
	ldr r0, [r0, #0]
	add r5, r1, #0
	mov r1, #0x26
	mov r2, #6
	bl sub_02006CB8
	add r1, r5, #0
	add r4, r0, #0
	bl sub_020A7164
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F994

	thumb_func_start ov84_0223F9B0
ov84_0223F9B0: ; 0x0223F9B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, sp, #0x18
	add r5, r0, #0
	bl ov84_0223F994
	add r6, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x10
	lsl r1, r4, #0x10
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #4
	ldr r1, [r1, #0x14]
	mov r2, #0x28
	bl sub_0201ADDC
	mov r0, #6
	add r1, r6, #0
	bl sub_02018238
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov84_0223F9B0

	thumb_func_start ov84_0223F9F0
ov84_0223F9F0: ; 0x0223F9F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r4, r1, #0
	ldr r0, [r5, r0]
	mov r1, #0x29
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x88
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	lsl r3, r4, #0x10
	str r0, [sp, #4]
	add r0, r5, #4
	add r2, r1, #0
	lsr r3, r3, #0x10
	bl sub_0201AE78
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223FA40 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #4
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223FA40: .word 0x00010200
	thumb_func_end ov84_0223F9F0

	thumb_func_start ov84_0223FA44
ov84_0223FA44: ; 0x0223FA44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r1, #0
	add r1, sp, #0x18
	add r5, r0, #0
	bl ov84_0223F994
	add r6, r0, #0
	mov r0, #0x40
	str r0, [sp]
	mov r0, #0x10
	mov r2, #0
	str r0, [sp, #4]
	mov r1, #0x60
	str r1, [sp, #8]
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x28
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #4
	ldr r1, [r1, #0x14]
	add r3, r2, #0
	bl sub_0201ADDC
	mov r0, #6
	add r1, r6, #0
	bl sub_02018238
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov84_0223FA44

	thumb_func_start ov84_0223FA88
ov84_0223FA88: ; 0x0223FA88
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200B1EC
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x10
	ldr r0, [r4, r1]
	mov r1, #6
	bl sub_0200B1EC
	mov r1, #0x4a
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x14
	ldr r0, [r4, r1]
	mov r1, #0x10
	bl sub_0200B1EC
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x18
	ldr r0, [r4, r1]
	mov r1, #0x5f
	bl sub_0200B1EC
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x60
	bl sub_0200B1EC
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x20
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_0200B1EC
	mov r1, #0x4e
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x24
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_0200B1EC
	mov r1, #0x4f
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x28
	ldr r0, [r4, r1]
	mov r1, #0x12
	bl sub_0200B1EC
	mov r1, #5
	lsl r1, r1, #6
	str r0, [r4, r1]
	sub r1, #0x2c
	ldr r0, [r4, r1]
	mov r1, #3
	bl sub_0200B1EC
	mov r1, #0x51
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x30
	ldr r0, [r4, r1]
	mov r1, #4
	bl sub_0200B1EC
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x34
	ldr r0, [r4, r1]
	mov r1, #5
	bl sub_0200B1EC
	mov r1, #0x53
	lsl r1, r1, #2
	str r0, [r4, r1]
	sub r1, #0x38
	ldr r0, [r4, r1]
	mov r1, #8
	bl sub_0200B1EC
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov84_0223FA88

	thumb_func_start ov84_0223FB50
ov84_0223FB50: ; 0x0223FB50
	push {r4, r5, r6, lr}
	mov r6, #0x49
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_0223FB5A:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	bl sub_020237BC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0xc
	blo _0223FB5A
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_0223FB50

	thumb_func_start ov84_0223FB70
ov84_0223FB70: ; 0x0223FB70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r6, r1, #0
	add r1, r0, #0
	add r1, #0x64
	add r7, r2, #0
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r0, r0, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _0223FBC0
	lsl r0, r7, #1
	mov r3, #0x17
	sub r1, r3, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #8
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223FD78 ; =0x00000337
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #0xb4
	mov r2, #0
	bl sub_0201A7E8
	mov r0, #4
	str r0, [sp, #0x14]
	b _0223FBF0
_0223FBC0:
	lsl r0, r7, #1
	mov r1, #0x17
	sub r1, r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #7
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223FD78 ; =0x00000337
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #0xb4
	mov r2, #0
	mov r3, #0x18
	bl sub_0201A7E8
	mov r0, #3
	str r0, [sp, #0x14]
_0223FBF0:
	add r0, r7, #0
	mov r1, #6
	bl sub_02013A04
	mov r1, #0x55
	lsl r1, r1, #2
	mov r4, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _0223FC2C
_0223FC04:
	ldrb r0, [r6, r4]
	bl ov84_0223D84C
	ldrb r1, [r6, r4]
	add r2, r0, #0
	mov r0, #0x55
	lsl r1, r1, #2
	add r3, r5, r1
	mov r1, #0x49
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r3, r1]
	bl sub_02013A6C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, r7
	blt _0223FC04
_0223FC2C:
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r0, #0xb4
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	strb r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #9]
	strb r7, [r0, #0xa]
	ldrb r2, [r0, #0xb]
	mov r1, #0xf
	bic r2, r1
	strb r2, [r0, #0xb]
	ldrb r2, [r0, #0xb]
	mov r1, #0x30
	bic r2, r1
	strb r2, [r0, #0xb]
	cmp r7, #4
	ldrb r2, [r0, #0xb]
	blo _0223FC68
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0xb]
	b _0223FC6E
_0223FC68:
	mov r1, #0xc0
	bic r2, r1
	strb r2, [r0, #0xb]
_0223FC6E:
	mov r0, #6
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x1c
	mov r1, #8
	add r3, r2, #0
	bl sub_02001AF4
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	mov r3, #0xc
	add r0, r2, #0
	add r0, #0x64
	ldrb r0, [r0]
	add r1, r0, #0
	mul r1, r3
	add r0, r2, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _0223FCD8
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x66
	ldrh r1, [r1]
	bl ov84_0223F584
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A9A4
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x66
	ldrh r1, [r1]
	mov r2, #1
	bl ov84_02240D5C
	b _0223FD5E
_0223FCD8:
	ldr r0, [sp, #0x14]
	add r4, r5, #4
	lsl r6, r0, #4
	ldr r2, _0223FD7C ; =0x000003D9
	add r0, r4, r6
	mov r1, #1
	bl sub_0200E060
	add r0, r4, r6
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x2a
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r0, #0x38
	mov r1, #6
	bl sub_02023790
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r1, [r0, #0]
	add r0, r1, #4
	add r1, #0x64
	ldrb r2, [r1]
	mov r1, #0xc
	mul r1, r2
	add r1, r0, r1
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, r1, #1
	mov r2, #0
	bl ov84_0223F4E8
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, r6
	mov r1, #1
	add r2, r7, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
_0223FD5E:
	add r0, r5, #0
	ldr r2, _0223FD80 ; =0x000003F7
	add r0, #0xb4
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
	add r5, #0xb4
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223FD78: .word 0x00000337
_0223FD7C: .word 0x000003D9
_0223FD80: .word 0x000003F7
	thumb_func_end ov84_0223FB70

	thumb_func_start ov84_0223FD84
ov84_0223FD84: ; 0x0223FD84
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xc4
	ldr r2, [r0, #0]
	add r0, r2, #0
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r0, r2, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _0223FDA2
	mov r1, #4
	b _0223FDA4
_0223FDA2:
	mov r1, #3
_0223FDA4:
	cmp r0, #3
	beq _0223FDBA
	lsl r6, r1, #4
	add r4, r5, #4
	add r0, r4, r6
	mov r1, #1
	bl sub_0200E084
	add r0, r4, r6
	bl sub_0201AD10
_0223FDBA:
	add r0, r5, #0
	add r0, #0xb4
	mov r1, #1
	bl sub_0200DC9C
	add r0, r5, #0
	add r0, #0xb4
	bl sub_0201AD10
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02013A3C
	add r0, r5, #0
	add r0, #0xb4
	bl sub_0201A8FC
	add r0, r5, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	add r1, r5, #0
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r5, #0
	add r1, #0x66
	ldrh r1, [r1]
	bl ov84_0223F528
	add r0, r5, #0
	add r0, #0x14
	bl sub_0201A9A4
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov84_02240D5C
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_0223FD84

	thumb_func_start ov84_0223FE18
ov84_0223FE18: ; 0x0223FE18
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r0, #0x14
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x2d
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x82
	mov r1, #6
	bl sub_02023790
	ldr r1, _0223FE8C ; =0x0000047B
	add r4, r0, #0
	ldrb r1, [r5, r1]
	add r0, r5, #0
	mov r2, #0
	sub r1, r1, #1
	bl ov84_0223F4E8
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223FE90 ; =0x000F0E00
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	mov r3, #0x28
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r5, #0x14
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223FE8C: .word 0x0000047B
_0223FE90: .word 0x000F0E00
	thumb_func_end ov84_0223FE18

	thumb_func_start ov84_0223FE94
ov84_0223FE94: ; 0x0223FE94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r2, _0223FF3C ; =0x000003F7
	add r5, r0, #0
	add r0, #0x94
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
	add r0, r5, #0
	bl ov84_0223FF44
	add r0, r5, #0
	ldr r2, _0223FF40 ; =0x000003D9
	add r0, #0x34
	mov r1, #1
	mov r3, #0xc
	bl sub_0200E060
	add r0, r5, #0
	add r0, #0x34
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x34
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x38
	mov r1, #6
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r2, r0
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, r1, #1
	mov r2, #0
	bl ov84_0223F4E8
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x34
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r5, #0x34
	add r0, r5, #0
	bl sub_0201A9A4
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223FF3C: .word 0x000003F7
_0223FF40: .word 0x000003D9
	thumb_func_end ov84_0223FE94

	thumb_func_start ov84_0223FF44
ov84_0223FF44: ; 0x0223FF44
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x94
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x54
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _0223FFBC ; =0x00000488
	mov r0, #0x46
	lsl r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r3, #0x10
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223FFBC: .word 0x00000488
	thumb_func_end ov84_0223FF44

	thumb_func_start ov84_0223FFC0
ov84_0223FFC0: ; 0x0223FFC0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x34
	mov r1, #1
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x94
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x34
	bl sub_0201AD10
	add r0, r4, #0
	add r0, #0x94
	bl sub_0201AD10
	add r4, #0x14
	add r0, r4, #0
	bl sub_0201A9A4
	pop {r4, pc}
	thumb_func_end ov84_0223FFC0

	thumb_func_start ov84_0223FFF0
ov84_0223FFF0: ; 0x0223FFF0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r2, _02240094 ; =0x000003D9
	add r5, r0, #0
	add r0, #0x64
	mov r1, #1
	mov r3, #0xc
	bl sub_0200E060
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x36
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r2, r0, #4
	add r0, #0x64
	ldrb r1, [r0]
	mov r0, #0xc
	mul r0, r1
	add r1, r2, r0
	ldr r0, _02240098 ; =0x00000488
	ldrsh r0, [r5, r0]
	cmp r0, #1
	bne _02240046
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, r1, #1
	mov r2, #0
	bl ov84_0223F4E8
	b _02240056
_02240046:
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	add r0, r5, #0
	add r1, r2, r1
	sub r1, r1, #1
	mov r2, #0
	bl ov84_0223F508
_02240056:
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r0, #0x46
	ldr r2, _02240098 ; =0x00000488
	str r1, [sp, #4]
	lsl r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0224009C ; =0x00000426
	strb r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02240094: .word 0x000003D9
_02240098: .word 0x00000488
_0224009C: .word 0x00000426
	thumb_func_end ov84_0223FFF0

	thumb_func_start ov84_022400A0
ov84_022400A0: ; 0x022400A0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _022400DC ; =ov84_022400E0
	mov r2, #0xfe
	str r0, [sp, #8]
	lsl r2, r2, #2
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x64
	mov r1, #1
	bl sub_0201D738
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022400DC: .word ov84_022400E0
	thumb_func_end ov84_022400A0

	thumb_func_start ov84_022400E0
ov84_022400E0: ; 0x022400E0
	push {r3, lr}
	cmp r1, #4
	bhi _02240118
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022400F2: ; jump table
	.short _02240118 - _022400F2 - 2 ; case 0
	.short _022400FC - _022400F2 - 2 ; case 1
	.short _02240102 - _022400F2 - 2 ; case 2
	.short _02240108 - _022400F2 - 2 ; case 3
	.short _02240110 - _022400F2 - 2 ; case 4
_022400FC:
	bl sub_020057E0
	pop {r3, pc}
_02240102:
	bl sub_020061E4
	pop {r3, pc}
_02240108:
	ldr r0, _0224011C ; =0x0000060D
	bl sub_02005748
	b _02240118
_02240110:
	ldr r0, _0224011C ; =0x0000060D
	bl sub_020057D4
	pop {r3, pc}
_02240118:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0224011C: .word 0x0000060D
	thumb_func_end ov84_022400E0

	thumb_func_start ov84_02240120
ov84_02240120: ; 0x02240120
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #6
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _02240140 ; =0x02241150
	ldr r2, _02240144 ; =0x000003F7
	mov r3, #0xe
	bl sub_02002100
	mov r1, #0x56
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02240140: .word 0x02241150
_02240144: .word 0x000003F7
	thumb_func_end ov84_02240120

	thumb_func_start ov84_02240148
ov84_02240148: ; 0x02240148
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x74
	cmp r1, #0
	bne _02240162
	ldr r2, _0224023C ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
_02240162:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x50
	bl sub_0200B1EC
	mov r3, #2
	add r6, r0, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _02240240 ; =0x00000488
	mov r0, #0x46
	lsl r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x51
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, _02240244 ; =0x0000048C
	mov r0, #0x46
	ldr r3, [r5, r2]
	sub r2, r2, #4
	ldrsh r2, [r5, r2]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mul r2, r3
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	mov r1, #0xfe
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r5, #0x60
	add r0, r4, #0
	sub r3, r5, r3
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224023C: .word 0x000003F7
_02240240: .word 0x00000488
_02240244: .word 0x0000048C
	thumb_func_end ov84_02240148

	thumb_func_start ov84_02240248
ov84_02240248: ; 0x02240248
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0x84
	cmp r1, #0
	bne _02240294
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _02240324 ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x4e
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	b _022402A6
_02240294:
	mov r0, #0x50
	str r0, [sp]
	mov r3, #0x10
	add r0, r4, #0
	mov r1, #0xf
	mov r2, #0
	str r3, [sp, #4]
	bl sub_0201AE78
_022402A6:
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x4f
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_02025F74
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	mov r1, #0xfe
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r5, #0x50
	add r0, r4, #0
	sub r3, r5, r3
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02240324: .word 0x000003F7
	thumb_func_end ov84_02240248

	thumb_func_start ov84_02240328
ov84_02240328: ; 0x02240328
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r5, #0
	add r4, #0xa4
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r2, _022403F0 ; =0x000003F7
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x6c
	bl sub_0200B1EC
	mov r1, #0
	add r6, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x6d
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl sub_0202AB28
	bl sub_0202AC98
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x46
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x46
	mov r1, #0xfe
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	mov r1, #0xfe
	lsl r1, r1, #2
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r3, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	mov r2, #0xfe
	str r1, [sp, #8]
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	mov r5, #0x58
	add r0, r4, #0
	sub r3, r5, r3
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022403F0: .word 0x000003F7
	thumb_func_end ov84_02240328

	.rodata


	.global Unk_ov84_02241150
Unk_ov84_02241150: ; 0x02241150
	.incbin "incbin/overlay84_rodata.bin", 0x2BC, 0x8

