	.include "macros/function.inc"
	.include "include/ov61_0222E0B8.inc"

	

	.text


	arm_func_start ov61_0222E0B8
ov61_0222E0B8: ; 0x0222E0B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr lr, _0222E10C ; =0x0222E65C
	mov ip, r5
_0222E0D0:
	cmp r5, #0
	moveq r4, ip
	beq _0222E0F0
	ldrb r4, [r0]
	add r3, r5, r1
	add r3, r4, r3
	and r3, r3, #0xff
	ldrb r4, [lr, r3]
_0222E0F0:
	ldrb r3, [r0, r5]
	add r5, r5, #1
	cmp r5, r1
	eor r3, r4, r3
	strb r3, [r2], #1
	blt _0222E0D0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222E10C: .word Unk_ov61_0222E65C
	arm_func_end ov61_0222E0B8

	arm_func_start ov61_0222E110
ov61_0222E110: ; 0x0222E110
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr lr, _0222E164 ; =0x0222E65C
	mov ip, r5
_0222E128:
	cmp r5, #0
	moveq r4, ip
	beq _0222E148
	ldrb r4, [r0]
	add r3, r5, r1
	add r3, r4, r3
	and r3, r3, #0xff
	ldrb r4, [lr, r3]
_0222E148:
	ldrb r3, [r2, r5]
	eor r3, r3, r4
	strb r3, [r2, r5]
	add r5, r5, #1
	cmp r5, r1
	blt _0222E128
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222E164: .word Unk_ov61_0222E65C
	arm_func_end ov61_0222E110

	arm_func_start ov61_0222E168
ov61_0222E168: ; 0x0222E168
	ldr r2, _0222E294 ; =0x00005209
	cmp r0, r2
	bgt _0222E1C0
	bge _0222E24C
	sub r1, r2, #0x3e8
	cmp r0, r1
	bgt _0222E1B0
	ldr r1, _0222E298 ; =0x00004E20
	cmp r0, r1
	blt _0222E1A4
	beq _0222E234
	add r1, r1, #1
	cmp r0, r1
	beq _0222E23C
	b _0222E284
_0222E1A4:
	cmp r0, #0
	beq _0222E22C
	b _0222E284
_0222E1B0:
	sub r1, r2, #1
	cmp r0, r1
	beq _0222E244
	b _0222E284
_0222E1C0:
	add r1, r2, #0x3e8
	cmp r0, r1
	bgt _0222E1E0
	bge _0222E25C
	ldr r1, _0222E29C ; =0x000055F0
	cmp r0, r1
	beq _0222E254
	b _0222E284
_0222E1E0:
	ldr r2, _0222E2A0 ; =0x000059D8
	cmp r0, r2
	bgt _0222E1F4
	beq _0222E264
	b _0222E284
_0222E1F4:
	add r1, r2, #3
	cmp r0, r1
	bgt _0222E284
	add r1, r2, #1
	cmp r0, r1
	blt _0222E284
	beq _0222E26C
	add r1, r2, #2
	cmp r0, r1
	beq _0222E274
	add r1, r2, #3
	cmp r0, r1
	beq _0222E27C
	b _0222E284
_0222E22C:
	mov r0, #0x400
	b _0222E28C
_0222E234:
	mov r0, #0xe0
	b _0222E28C
_0222E23C:
	mov r0, #0xc
	b _0222E28C
_0222E244:
	mov r0, #0x220
	b _0222E28C
_0222E24C:
	mov r0, #0xc
	b _0222E28C
_0222E254:
	mov r0, #0
	b _0222E28C
_0222E25C:
	mov r0, #0x24
	b _0222E28C
_0222E264:
	ldr r0, _0222E2A4 ; =0x00001D4C
	b _0222E28C
_0222E26C:
	mov r0, #0x1c
	b _0222E28C
_0222E274:
	mov r0, #0xc
	b _0222E28C
_0222E27C:
	mov r0, #8
	b _0222E28C
_0222E284:
	mvn r0, #0
	bx lr
_0222E28C:
	add r0, r0, #0x140
	bx lr
	; .align 2, 0
_0222E294: .word 0x00005209
_0222E298: .word 0x00004E20
_0222E29C: .word 0x000055F0
_0222E2A0: .word 0x000059D8
_0222E2A4: .word 0x00001D4C
	arm_func_end ov61_0222E168

	arm_func_start ov61_0222E2A8
ov61_0222E2A8: ; 0x0222E2A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	ldr r6, _0222E458 ; =0x0222E580
	add lr, sp, #0
	mov ip, r0
	mov r5, lr
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r4, _0222E45C ; =0x00005209
	ldmia r6, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	cmp ip, r4
	bgt _0222E340
	bge _0222E408
	ldr r1, _0222E460 ; =0x00004E20
	cmp ip, r1
	bgt _0222E31C
	bge _0222E3F0
	cmp ip, #0
	bgt _0222E440
	mvn r6, #0
	cmp ip, r6
	blt _0222E440
	beq _0222E3AC
	cmp ip, #0
	beq _0222E3E8
	b _0222E440
_0222E31C:
	add r0, r1, #1
	cmp ip, r0
	bgt _0222E330
	beq _0222E3F8
	b _0222E440
_0222E330:
	add r0, r1, #0x3e8
	cmp ip, r0
	beq _0222E400
	b _0222E440
_0222E340:
	add r0, r4, #0x3e8
	cmp ip, r0
	bgt _0222E360
	bge _0222E418
	ldr r0, _0222E464 ; =0x000055F0
	cmp ip, r0
	beq _0222E410
	b _0222E440
_0222E360:
	ldr r1, _0222E468 ; =0x000059D8
	cmp ip, r1
	bgt _0222E374
	beq _0222E420
	b _0222E440
_0222E374:
	add r0, r1, #3
	cmp ip, r0
	bgt _0222E440
	add r0, r1, #1
	cmp ip, r0
	blt _0222E440
	beq _0222E428
	add r0, r1, #2
	cmp ip, r0
	beq _0222E430
	add r0, r1, #3
	cmp ip, r0
	beq _0222E438
	b _0222E440
_0222E3AC:
	mov r7, #0
	mov r4, r6
_0222E3B4:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, r4
	beq _0222E3D4
	bl ov61_0222E2A8
	cmp r0, r6
	movgt r6, r0
	add r7, r7, #1
	b _0222E3B4
_0222E3D4:
	mvn r0, #0
	cmp r6, r0
	bne _0222E44C
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E3E8:
	mov r6, #0x400
	b _0222E44C
_0222E3F0:
	mov r6, #8
	b _0222E44C
_0222E3F8:
	ldr r6, _0222E46C ; =0x0000093C
	b _0222E44C
_0222E400:
	mov r6, #8
	b _0222E44C
_0222E408:
	ldr r6, _0222E470 ; =0x00002B74
	b _0222E44C
_0222E410:
	mov r6, #4
	b _0222E44C
_0222E418:
	mov r6, #0x630
	b _0222E44C
_0222E420:
	mov r6, #8
	b _0222E44C
_0222E428:
	ldr r6, _0222E474 ; =0x00001C24
	b _0222E44C
_0222E430:
	sub r6, r1, #0x3c80
	b _0222E44C
_0222E438:
	mov r6, #0
	b _0222E44C
_0222E440:
	add sp, sp, #0x30
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E44C:
	add r0, r6, #8
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E458: .word Unk_ov61_0222E580
_0222E45C: .word 0x00005209
_0222E460: .word 0x00004E20
_0222E464: .word 0x000055F0
_0222E468: .word 0x000059D8
_0222E46C: .word 0x0000093C
_0222E470: .word 0x00002B74
_0222E474: .word 0x00001C24
	arm_func_end ov61_0222E2A8

	.rodata


	.global Unk_ov61_0222E550
Unk_ov61_0222E550: ; 0x0222E550
	.word 0x5, 0x3, 0x2
	.word 0x4, 0x1, 0x6, 0x9
	.word 0x2, 0x7, 0x8, 0x6
	.word 0x3

	.global Unk_ov61_0222E580
Unk_ov61_0222E580: ; 0x0222E580
	.word 0x0, 0x4E20, 0x4E21
	.word 0x5208, 0x5209, 0x55F0, 0x55F1
	.word 0x59D8, 0x59D9, 0x59DA, 0x59DB
	.word 0xFFFFFFFF


	.global Unk_ov61_0222E5B0
Unk_ov61_0222E5B0: ; 0x0222E5B0
	.word 0x5, 0x3, 0x2
	.word 0x4, 0x1, 0x6, 0x9
	.word 0x2, 0x7, 0x8, 0x6
	.word 0x3


	.data


	.global Unk_ov61_0222E65C
Unk_ov61_0222E65C: ; 0x0222E65C
	.byte 0x93, 0x18, 0x33, 0x28
	.byte 0x0B, 0x07, 0x03, 0x82, 0x02, 0x43, 0x8A, 0x86, 0xDB, 0x38, 0x34, 0x19, 0xD6, 0xF9, 0x59, 0xB2
	.byte 0xAD, 0x6A, 0x7D, 0xBC, 0xEE, 0xE0, 0x3A, 0x3F, 0xCA, 0x4C, 0x25, 0x68, 0xF4, 0xA9, 0x5B, 0xF7
	.byte 0x22, 0x60, 0x5A, 0x6F, 0xFA, 0x1B, 0x79, 0xE9, 0x17, 0xB1, 0x00, 0x9C, 0xAA, 0x5E, 0x9D, 0xFF
	.byte 0xEA, 0xA0, 0x0D, 0x4B, 0x75, 0xF6, 0x61, 0x85, 0x5D, 0xBB, 0xDC, 0xFB, 0x64, 0x2E, 0x7A, 0xAB
	.byte 0xF1, 0xE8, 0x44, 0x0C, 0xB8, 0x8F, 0xA8, 0x0A, 0x8E, 0xBD, 0xE1, 0x3B, 0xFC, 0x3C, 0x9F, 0x1A
	.byte 0x56, 0xC5, 0xE2, 0xF5, 0x47, 0xD9, 0xD7, 0x8C, 0xCD, 0x97, 0xF0, 0x7B, 0x8B, 0xC3, 0x4F, 0x45
	.byte 0x04, 0x90, 0x81, 0x1E, 0x6B, 0xC9, 0xD3, 0x73, 0xC6, 0xE7, 0x24, 0xBA, 0x32, 0xF3, 0xC0, 0xEC
	.byte 0x57, 0xCC, 0xC4, 0xB6, 0xC1, 0xAE, 0xAF, 0x88, 0xF2, 0x84, 0xCE, 0x4A, 0x0F, 0x94, 0x41, 0xB4
	.byte 0x74, 0x2A, 0xD1, 0x70, 0x1C, 0xD4, 0xB0, 0xC2, 0x09, 0x08, 0x16, 0x9B, 0xB5, 0x8D, 0x2B, 0xD2
	.byte 0x89, 0xB7, 0x99, 0xA1, 0x30, 0x65, 0x54, 0x40, 0x96, 0x71, 0xFE, 0xBF, 0x31, 0x06, 0xE5, 0x14
	.byte 0xE6, 0xDA, 0x48, 0x26, 0xAC, 0x87, 0x9A, 0xD8, 0xA6, 0xEB, 0x92, 0xCF, 0xFD, 0x77, 0x1D, 0x21
	.byte 0x9E, 0x36, 0x35, 0x53, 0x3E, 0xD0, 0xD5, 0x62, 0x58, 0x5F, 0x63, 0x7C, 0x7E, 0x52, 0x29, 0x12
	.byte 0x2C, 0x78, 0x05, 0x91, 0x55, 0xE3, 0xA2, 0xB9, 0xF8, 0x50, 0x95, 0x13, 0x80, 0x7F, 0x11, 0x27
	.byte 0xCB, 0x37, 0x4E, 0x51, 0x15, 0xEF, 0xA7, 0x72, 0x4D, 0x83, 0x49, 0xA4, 0x69, 0xDE, 0x20, 0xA3
	.byte 0x67, 0xDF, 0x10, 0x42, 0x39, 0x6C, 0x2D, 0xC7, 0x23, 0xE4, 0xDD, 0xED, 0xBE, 0x66, 0xB3, 0x2F
	.byte 0x01, 0x6E, 0x6D, 0xC8, 0x1F, 0x98, 0xA5, 0x46, 0x76, 0x5C, 0x3D, 0x0E

