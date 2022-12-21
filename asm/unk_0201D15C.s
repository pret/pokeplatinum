	.include "macros/function.inc"
	.include "include/unk_0201D15C.inc"

	

	.text


	thumb_func_start sub_0201D15C
sub_0201D15C: ; 0x0201D15C
	push {r4, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201D16A
	mov r0, #0
	pop {r4, pc}
_0201D16A:
	bl sub_0201D278
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0201D1CC ; =0x020F983C
	ldrsh r4, [r0, r1]
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D1D0 ; =0x45800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _0201D1AA
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D1D0 ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _0201D1D0 ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0201D1C6
_0201D1AA:
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D1D0 ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _0201D1D0 ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0201D1C6:
	bl sub_020E1740
	pop {r4, pc}
	; .align 2, 0
_0201D1CC: .word 0x020F983C
_0201D1D0: .word 0x45800000
	thumb_func_end sub_0201D15C

	thumb_func_start sub_0201D1D4
sub_0201D1D4: ; 0x0201D1D4
	push {r4, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201D1E2
	mov r0, #0
	pop {r4, pc}
_0201D1E2:
	bl sub_0201D278
	asr r0, r0, #4
	lsl r0, r0, #1
	add r0, r0, #1
	lsl r1, r0, #1
	ldr r0, _0201D248 ; =0x020F983C
	ldrsh r4, [r0, r1]
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D24C ; =0x45800000
	bl sub_020E1304
	mov r1, #0
	bl sub_020E1108
	bls _0201D226
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D24C ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _0201D24C ; =0x45800000
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0201D242
_0201D226:
	add r0, r4, #0
	bl sub_020E17B4
	ldr r1, _0201D24C ; =0x45800000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _0201D24C ; =0x45800000
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0201D242:
	bl sub_020E1740
	pop {r4, pc}
	; .align 2, 0
_0201D248: .word 0x020F983C
_0201D24C: .word 0x45800000
	thumb_func_end sub_0201D1D4

	thumb_func_start sub_0201D250
sub_0201D250: ; 0x0201D250
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D15C
	pop {r3, pc}
	thumb_func_end sub_0201D250

	thumb_func_start sub_0201D264
sub_0201D264: ; 0x0201D264
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D1D4
	pop {r3, pc}
	thumb_func_end sub_0201D264

	thumb_func_start sub_0201D278
sub_0201D278: ; 0x0201D278
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r0, r1
	blo _0201D286
	mov r0, #0
	pop {r3, pc}
_0201D286:
	lsl r0, r0, #0xc
	ldr r2, _0201D29C ; =0x0B60B60B
	asr r1, r0, #0x1f
	mov r3, #0xb6
	bl sub_020E1F1C
	ldr r0, _0201D2A0 ; =0x00000800
	adc r1, r0
	lsl r0, r1, #4
	lsr r0, r0, #0x10
	pop {r3, pc}
	; .align 2, 0
_0201D29C: .word 0x0B60B60B
_0201D2A0: .word 0x00000800
	thumb_func_end sub_0201D278

	thumb_func_start sub_0201D2A4
sub_0201D2A4: ; 0x0201D2A4
	push {r3, lr}
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D278
	pop {r3, pc}
	thumb_func_end sub_0201D2A4

	thumb_func_start sub_0201D2B8
sub_0201D2B8: ; 0x0201D2B8
	ldr r3, _0201D2C0 ; =sub_0201D250
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bx r3
	; .align 2, 0
_0201D2C0: .word sub_0201D250
	thumb_func_end sub_0201D2B8

	thumb_func_start sub_0201D2C4
sub_0201D2C4: ; 0x0201D2C4
	ldr r3, _0201D2CC ; =sub_0201D264
	lsl r0, r0, #4
	lsr r0, r0, #0x10
	bx r3
	; .align 2, 0
_0201D2CC: .word sub_0201D264
	thumb_func_end sub_0201D2C4

	thumb_func_start sub_0201D2D0
sub_0201D2D0: ; 0x0201D2D0
	ldr r0, _0201D2D8 ; =0x021BFB10
	ldr r0, [r0, #4]
	bx lr
	nop
_0201D2D8: .word 0x021BFB10
	thumb_func_end sub_0201D2D0

	thumb_func_start sub_0201D2DC
sub_0201D2DC: ; 0x0201D2DC
	ldr r1, _0201D2E4 ; =0x021BFB10
	str r0, [r1, #4]
	bx lr
	nop
_0201D2E4: .word 0x021BFB10
	thumb_func_end sub_0201D2DC

	thumb_func_start sub_0201D2E8
sub_0201D2E8: ; 0x0201D2E8
	ldr r1, _0201D300 ; =0x021BFB10
	ldr r0, _0201D304 ; =0x41C64E6D
	ldr r2, [r1, #4]
	add r3, r2, #0
	mul r3, r0
	ldr r0, _0201D308 ; =0x00006073
	add r0, r3, r0
	str r0, [r1, #4]
	lsr r0, r0, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	; .align 2, 0
_0201D300: .word 0x021BFB10
_0201D304: .word 0x41C64E6D
_0201D308: .word 0x00006073
	thumb_func_end sub_0201D2E8

	thumb_func_start sub_0201D30C
sub_0201D30C: ; 0x0201D30C
	ldr r1, _0201D314 ; =0x6C078965
	mul r1, r0
	add r0, r1, #1
	bx lr
	; .align 2, 0
_0201D314: .word 0x6C078965
	thumb_func_end sub_0201D30C

	thumb_func_start sub_0201D318
sub_0201D318: ; 0x0201D318
	push {r4, r5}
	ldr r1, _0201D34C ; =0x021BFB10
	mov r4, #0x27
	str r0, [r1, #8]
	ldr r1, _0201D350 ; =0x02100834
	mov r0, #1
	str r0, [r1, #0]
	ldr r1, _0201D354 ; =0x021BFB1C
	ldr r3, _0201D358 ; =0x6C078965
	lsl r4, r4, #4
_0201D32C:
	sub r2, r1, #4
	ldr r5, [r2, #0]
	lsr r2, r5, #0x1e
	eor r2, r5
	add r5, r2, #0
	mul r5, r3
	add r2, r0, r5
	add r0, r0, #1
	stmia r1!, {r2}
	cmp r0, r4
	blt _0201D32C
	ldr r1, _0201D350 ; =0x02100834
	str r0, [r1, #0]
	pop {r4, r5}
	bx lr
	nop
_0201D34C: .word 0x021BFB10
_0201D350: .word 0x02100834
_0201D354: .word 0x021BFB1C
_0201D358: .word 0x6C078965
	thumb_func_end sub_0201D318

	thumb_func_start sub_0201D35C
sub_0201D35C: ; 0x0201D35C
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0201D440 ; =0x02100834
	ldr r1, [r0, #0]
	mov r0, #0x27
	lsl r0, r0, #4
	cmp r1, r0
	blt _0201D414
	add r0, r0, #1
	cmp r1, r0
	bne _0201D376
	ldr r0, _0201D444 ; =0x00001571
	bl sub_0201D318
_0201D376:
	ldr r4, _0201D448 ; =0x021BFB18
	ldr r1, _0201D44C ; =0x02100838
	ldr r5, _0201D450 ; =0x7FFFFFFF
	ldr r6, _0201D454 ; =0x00000634
	mov r0, #0
_0201D380:
	mov r2, #2
	ldr r3, [r4, #0]
	lsl r2, r2, #0x1e
	and r3, r2
	ldr r2, [r4, #4]
	add r0, r0, #1
	and r2, r5
	orr r3, r2
	lsr r7, r3, #1
	lsl r3, r3, #0x1f
	ldr r2, [r4, r6]
	lsr r3, r3, #0x1d
	ldr r3, [r1, r3]
	eor r2, r7
	eor r2, r3
	stmia r4!, {r2}
	cmp r0, #0xe3
	blt _0201D380
	ldr r1, _0201D458 ; =0x0000026F
	cmp r0, r1
	bge _0201D3E0
	ldr r2, _0201D448 ; =0x021BFB18
	lsl r1, r0, #2
	add r1, r2, r1
	mov r2, #0xe3
	ldr r4, _0201D44C ; =0x02100838
	ldr r3, _0201D458 ; =0x0000026F
	lsl r2, r2, #2
_0201D3B8:
	mov r5, #2
	ldr r6, [r1, #0]
	lsl r5, r5, #0x1e
	and r5, r6
	ldr r7, [r1, #4]
	ldr r6, _0201D450 ; =0x7FFFFFFF
	add r0, r0, #1
	and r6, r7
	orr r6, r5
	lsr r5, r6, #1
	sub r7, r1, r2
	lsl r6, r6, #0x1f
	ldr r7, [r7, #0]
	lsr r6, r6, #0x1d
	ldr r6, [r4, r6]
	eor r5, r7
	eor r5, r6
	stmia r1!, {r5}
	cmp r0, r3
	blt _0201D3B8
_0201D3E0:
	ldr r2, _0201D45C ; =0x021C0490
	mov r0, #2
	ldr r1, [r2, #0x44]
	lsl r0, r0, #0x1e
	add r3, r1, #0
	ldr r1, _0201D460 ; =0x021BFB10
	and r3, r0
	ldr r1, [r1, #8]
	sub r0, r0, #1
	and r0, r1
	add r4, r3, #0
	orr r4, r0
	ldr r0, _0201D464 ; =0x021C0110
	ldr r1, [r0, #0x38]
	lsr r0, r4, #1
	add r3, r1, #0
	eor r3, r0
	lsl r0, r4, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, _0201D44C ; =0x02100838
	ldr r0, [r0, r1]
	mov r1, #0
	eor r0, r3
	str r0, [r2, #0x44]
	ldr r0, _0201D440 ; =0x02100834
	str r1, [r0, #0]
_0201D414:
	ldr r0, _0201D440 ; =0x02100834
	ldr r2, [r0, #0]
	add r1, r2, #1
	str r1, [r0, #0]
	ldr r0, _0201D448 ; =0x021BFB18
	lsl r1, r2, #2
	ldr r1, [r0, r1]
	lsr r0, r1, #0xb
	add r2, r1, #0
	eor r2, r0
	ldr r0, _0201D468 ; =0x9D2C5680
	lsl r1, r2, #7
	and r0, r1
	eor r2, r0
	ldr r0, _0201D46C ; =0xEFC60000
	lsl r1, r2, #0xf
	and r0, r1
	add r1, r2, #0
	eor r1, r0
	lsr r0, r1, #0x12
	eor r0, r1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201D440: .word 0x02100834
_0201D444: .word 0x00001571
_0201D448: .word 0x021BFB18
_0201D44C: .word 0x02100838
_0201D450: .word 0x7FFFFFFF
_0201D454: .word 0x00000634
_0201D458: .word 0x0000026F
_0201D45C: .word 0x021C0490
_0201D460: .word 0x021BFB10
_0201D464: .word 0x021C0110
_0201D468: .word 0x9D2C5680
_0201D46C: .word 0xEFC60000
	thumb_func_end sub_0201D35C

	thumb_func_start sub_0201D470
sub_0201D470: ; 0x0201D470
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, sp, #0
	ldrb r0, [r0, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	cmp r0, #1
	bne _0201D48A
	ldr r0, _0201D4C4 ; =0x0000FFFF
	mul r0, r1
	lsl r0, r0, #8
	lsr r1, r0, #0x10
	b _0201D49E
_0201D48A:
	cmp r0, #2
	bne _0201D49E
	ldr r0, _0201D4C4 ; =0x0000FFFF
	mul r0, r1
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E2178
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
_0201D49E:
	asr r0, r1, #4
	lsl r3, r0, #1
	lsl r1, r3, #1
	ldr r2, _0201D4C8 ; =0x020F983C
	add r3, r3, #1
	lsl r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, r5, #0
	bl sub_020BB464
	add r0, r5, #0
	add r1, r5, #0
	add r2, r4, #0
	add r3, r6, #0
	bl sub_020BB470
	pop {r4, r5, r6, pc}
	nop
_0201D4C4: .word 0x0000FFFF
_0201D4C8: .word 0x020F983C
	thumb_func_end sub_0201D470

	thumb_func_start sub_0201D4CC
sub_0201D4CC: ; 0x0201D4CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	lsl r5, r0, #0xc
	lsl r4, r1, #0xc
	mov r1, #0
	lsl r0, r2, #0xc
	lsl r6, r3, #0xc
	str r1, [sp, #0x34]
	str r0, [sp]
	str r0, [sp, #0x20]
	str r1, [sp, #0x28]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	asr r1, r5, #0x1f
	add r0, r5, #0
	asr r3, r6, #0x1f
	add r2, r6, #0
	str r5, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r6, [sp, #0x24]
	bl sub_020E1F1C
	str r0, [sp, #4]
	add r2, r4, #0
	ldr r0, [sp, #0x20]
	add r7, r1, #0
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	ldr r3, [sp, #4]
	lsl r2, r2, #0xa
	add r3, r3, r2
	ldr r2, _0201D57C ; =0x00000000
	str r4, [sp, #0x2c]
	adc r7, r2
	lsl r2, r7, #0x14
	lsr r3, r3, #0xc
	orr r3, r2
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _0201D57C ; =0x00000000
	str r5, [sp, #0x30]
	adc r1, r2
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	sub r2, r3, r0
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r2, [sp, #0x10]
	add r0, r1, r0
	add r7, r2, r0
	mov r0, #0
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	add r1, sp, #0x14
	bl sub_020BD3E4
	mov r1, #0
	ldr r0, [sp]
	str r1, [sp, #0x34]
	str r0, [sp, #0x20]
	str r1, [sp, #0x28]
	add r0, sp, #0x20
	add r1, sp, #0x2c
	add r2, sp, #8
	str r5, [sp, #0x2c]
	str r4, [sp, #0x30]
	str r6, [sp, #0x24]
	bl sub_020BD1B0
	add r0, sp, #0x14
	add r1, sp, #8
	bl sub_020BD218
	asr r0, r0, #0xc
	bpl _0201D56E
	neg r0, r0
_0201D56E:
	cmp r7, #0
	bgt _0201D578
	mov r1, #0
	mvn r1, r1
	mul r0, r1
_0201D578:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0201D57C: .word 0x00000000
	thumb_func_end sub_0201D4CC

	thumb_func_start sub_0201D580
sub_0201D580: ; 0x0201D580
	push {r3, r4, r5, lr}
	lsl r0, r0, #0xd
	add r4, r1, #0
	ldr r2, _0201D5B0 ; =0x0000323D
	asr r1, r0, #0x1f
	mov r3, #0
	bl sub_020E1F1C
	add r5, r0, #0
	ldr r0, _0201D5B4 ; =0x0000FFFF
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	mul r0, r4
	add r2, r5, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r2, r2, #0xc
	orr r2, r1
	asr r1, r2, #0xc
	bl sub_020E1F6C
	pop {r3, r4, r5, pc}
	nop
_0201D5B0: .word 0x0000323D
_0201D5B4: .word 0x0000FFFF
	thumb_func_end sub_0201D580

	thumb_func_start sub_0201D5B8
sub_0201D5B8: ; 0x0201D5B8
	push {r3, r4}
	mov r3, #0
	add r4, r3, #0
	cmp r1, #0
	bls _0201D5CE
_0201D5C2:
	ldrb r2, [r0]
	add r4, r4, #1
	add r0, r0, #1
	add r3, r3, r2
	cmp r4, r1
	blo _0201D5C2
_0201D5CE:
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	thumb_func_end sub_0201D5B8

	thumb_func_start sub_0201D5D4
sub_0201D5D4: ; 0x0201D5D4
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r4, #0
	lsr r6, r1, #1
	beq _0201D5F6
	add r7, sp, #0x20
_0201D5E2:
	add r0, r7, #0
	bl sub_0201D608
	ldrh r1, [r5]
	add r4, r4, #1
	eor r0, r1
	strh r0, [r5]
	add r5, r5, #2
	cmp r4, r6
	blo _0201D5E2
_0201D5F6:
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end sub_0201D5D4

	thumb_func_start sub_0201D600
sub_0201D600: ; 0x0201D600
	ldr r3, _0201D604 ; =sub_0201D5D4
	bx r3
	; .align 2, 0
_0201D604: .word sub_0201D5D4
	thumb_func_end sub_0201D600

	thumb_func_start sub_0201D608
sub_0201D608: ; 0x0201D608
	ldr r2, [r0, #0]
	ldr r1, _0201D620 ; =0x41C64E6D
	add r3, r2, #0
	mul r3, r1
	ldr r1, _0201D624 ; =0x00006073
	add r1, r3, r1
	str r1, [r0, #0]
	lsr r0, r1, #0x10
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	nop
_0201D620: .word 0x41C64E6D
_0201D624: .word 0x00006073
	thumb_func_end sub_0201D608

	thumb_func_start sub_0201D628
sub_0201D628: ; 0x0201D628
	add r3, r0, #0
	add r2, r1, #0
	ldr r0, _0201D638 ; =0x021BFB10
	add r1, r3, #0
	ldr r3, _0201D63C ; =sub_020D32FC
	ldr r0, [r0, #0]
	bx r3
	nop
_0201D638: .word 0x021BFB10
_0201D63C: .word sub_020D32FC
	thumb_func_end sub_0201D628

	thumb_func_start sub_0201D640
sub_0201D640: ; 0x0201D640
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0201D668 ; =0x021BFB10
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0201D650
	bl sub_02022974
_0201D650:
	mov r1, #2
	add r0, r4, #0
	lsl r1, r1, #8
	bl sub_02018144
	ldr r1, _0201D668 ; =0x021BFB10
	str r0, [r1, #0]
	ldr r1, _0201D66C ; =0x00001021
	bl sub_020D3120
	pop {r4, pc}
	nop
_0201D668: .word 0x021BFB10
_0201D66C: .word 0x00001021
	thumb_func_end sub_0201D640

	.data


	.global Unk_02100834
Unk_02100834: ; 0x02100834
	.incbin "incbin/arm9_data.bin", 0x1B54, 0x1B58 - 0x1B54

	.global Unk_02100838
Unk_02100838: ; 0x02100838
	.incbin "incbin/arm9_data.bin", 0x1B58, 0x8



	.bss


	.global Unk_021BFB10
Unk_021BFB10: ; 0x021BFB10
	.space 0x4

	.global Unk_021BFB14
Unk_021BFB14: ; 0x021BFB14
	.space 0x4

	.global Unk_021BFB18
Unk_021BFB18: ; 0x021BFB18
	.space 0x9C0

