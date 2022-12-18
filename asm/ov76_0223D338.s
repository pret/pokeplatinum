	.include "macros/function.inc"
	.include "include/ov76_0223D338.inc"

	

	.text


	thumb_func_start ov76_0223D338
ov76_0223D338: ; 0x0223D338
	add r1, r0, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _0223D34C ; =sub_0202CA10
	lsl r0, r0, #3
	add r0, r1, r0
	ldr r0, [r0, #8]
	add r1, #0x68
	bx r3
	; .align 2, 0
_0223D34C: .word sub_0202CA10
	thumb_func_end ov76_0223D338

	thumb_func_start ov76_0223D350
ov76_0223D350: ; 0x0223D350
	mov r1, #0xf1
	add r2, r0, #0
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	ldr r3, _0223D364 ; =sub_0202CA10
	lsl r1, r1, #3
	add r1, r2, r1
	add r0, #0x68
	ldr r1, [r1, #8]
	bx r3
	; .align 2, 0
_0223D364: .word sub_0202CA10
	thumb_func_end ov76_0223D350

	thumb_func_start ov76_0223D368
ov76_0223D368: ; 0x0223D368
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0223D36E:
	ldr r0, [r5, #0x64]
	add r1, r4, #0
	bl sub_0202CA90
	add r1, r5, r4
	add r1, #0x80
	add r4, r4, #1
	strb r0, [r1]
	cmp r4, #0x51
	blt _0223D36E
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223D368

	thumb_func_start ov76_0223D384
ov76_0223D384: ; 0x0223D384
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0223D38A:
	add r2, r5, r4
	add r2, #0x80
	ldrb r2, [r2]
	ldr r0, [r5, #0x64]
	add r1, r4, #0
	bl sub_0202CADC
	add r4, r4, #1
	cmp r4, #0x51
	blt _0223D38A
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223D384

	thumb_func_start ov76_0223D3A0
ov76_0223D3A0: ; 0x0223D3A0
	push {r3, lr}
	mov r0, #7
	str r0, [sp]
	ldr r0, _0223D3C4 ; =0x04000050
	mov r1, #0
	mov r2, #6
	mov r3, #0xb
	bl sub_020BF55C
	mov r0, #8
	str r0, [sp]
	ldr r0, _0223D3C8 ; =0x04001050
	mov r1, #0
	mov r2, #0xe
	mov r3, #7
	bl sub_020BF55C
	pop {r3, pc}
	; .align 2, 0
_0223D3C4: .word 0x04000050
_0223D3C8: .word 0x04001050
	thumb_func_end ov76_0223D3A0

	thumb_func_start ov76_0223D3CC
ov76_0223D3CC: ; 0x0223D3CC
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0xf1
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	lsl r0, r0, #3
	add r0, r5, r0
	ldr r0, [r0, #4]
	cmp r0, #0xff
	beq _0223D3F2
	ldr r2, [r5, #0]
	lsl r0, r0, #2
	add r0, r2, r0
	add r1, #0x64
	ldr r0, [r0, #4]
	ldr r1, [r5, r1]
	bl sub_020775EC
	pop {r3, r4, r5, r6, r7, pc}
_0223D3F2:
	ldr r1, [r5, #0]
	mov r6, #0
	ldr r0, [r1, #0]
	cmp r0, #0
	ble _0223D428
	add r4, r6, #0
_0223D3FE:
	add r0, r1, r4
	ldr r7, [r0, #4]
	mov r1, #0x4c
	add r0, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	bne _0223D41C
	ldr r1, _0223D42C ; =0x00000428
	add r0, r7, #0
	ldr r1, [r5, r1]
	bl sub_020775EC
	pop {r3, r4, r5, r6, r7, pc}
_0223D41C:
	ldr r1, [r5, #0]
	add r6, r6, #1
	ldr r0, [r1, #0]
	add r4, r4, #4
	cmp r6, r0
	blt _0223D3FE
_0223D428:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D42C: .word 0x00000428
	thumb_func_end ov76_0223D3CC

	thumb_func_start ov76_0223D430
ov76_0223D430: ; 0x0223D430
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	add r6, r0, #0
	add r5, r7, #0
	add r4, r7, #0
_0223D43A:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202CA64
	bl sub_0202CA7C
	cmp r0, #0
	beq _0223D44C
	add r5, r5, #1
_0223D44C:
	add r4, r4, #1
	cmp r4, #8
	blt _0223D43A
	cmp r5, #0
	beq _0223D458
	mov r7, #1
_0223D458:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223D430

	thumb_func_start ov76_0223D45C
ov76_0223D45C: ; 0x0223D45C
	mov r2, #0xc
	mul r2, r1
	add r1, r0, r2
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	add r0, r0, #4
	ldr r0, [r1, r0]
	cmp r2, #0xff
	bne _0223D478
	cmp r0, #0
	bne _0223D478
	mov r0, #0
	bx lr
_0223D478:
	cmp r2, #0xff
	bne _0223D484
	cmp r0, #1
	bne _0223D484
	mov r0, #1
	bx lr
_0223D484:
	cmp r2, #0xff
	beq _0223D490
	cmp r0, #1
	bne _0223D490
	mov r0, #2
	bx lr
_0223D490:
	mov r0, #3
	bx lr
	thumb_func_end ov76_0223D45C

	thumb_func_start ov76_0223D494
ov76_0223D494: ; 0x0223D494
	push {r3, r4}
	cmp r2, #0xff
	bne _0223D4A6
	mov r2, #0xf6
	lsl r2, r2, #2
	ldr r4, [r0, r2]
	sub r2, r2, #4
	str r4, [r0, r2]
	b _0223D4AC
_0223D4A6:
	mov r4, #0xf5
	lsl r4, r4, #2
	str r2, [r0, r4]
_0223D4AC:
	mov r2, #0xf3
	lsl r2, r2, #2
	str r1, [r0, r2]
	add r1, r2, #0
	add r1, #0xc
	str r3, [r0, r1]
	mov r1, #0
	add r2, #0x10
	str r1, [r0, r2]
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov76_0223D494

	thumb_func_start ov76_0223D4C4
ov76_0223D4C4: ; 0x0223D4C4
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xfc
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0xfc
	bl sub_0201ACF4
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02001BC4
	mov r0, #0x67
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02013A3C
	add r4, #0xfc
	add r0, r4, #0
	bl sub_0201A8FC
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov76_0223D4C4

	thumb_func_start ov76_0223D4FC
ov76_0223D4FC: ; 0x0223D4FC
	push {r3, lr}
	mov r1, #1
	mov r2, #0
	mov r3, #3
	bl ov76_0223D494
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov76_0223D4FC

	thumb_func_start ov76_0223D50C
ov76_0223D50C: ; 0x0223D50C
	push {r4, lr}
	add r4, r0, #0
	bl ov76_0223B400
	add r0, r4, #0
	bl ov76_0223B808
	add r0, r4, #0
	bl ov76_0223C7E0
	mov r2, #0
	add r0, r4, #0
	mov r1, #2
	add r3, r2, #0
	bl ov76_0223D494
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov76_0223D50C

	thumb_func_start ov76_0223D530
ov76_0223D530: ; 0x0223D530
	push {r3, lr}
	mov r1, #3
	mov r2, #0
	add r3, r1, #0
	bl ov76_0223D494
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov76_0223D530

	thumb_func_start ov76_0223D540
ov76_0223D540: ; 0x0223D540
	push {r3, lr}
	mov r1, #4
	mov r2, #0
	mov r3, #3
	bl ov76_0223D494
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov76_0223D540

	thumb_func_start ov76_0223D550
ov76_0223D550: ; 0x0223D550
	push {r3, r4, r5, lr}
	mov r1, #0xf3
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _0223D570 ; =0x0223EE04
	ldr r1, [r1, r2]
	blx r1
	add r4, #0xe0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0200C7EC
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223D570: .word 0x0223EE04
	thumb_func_end ov76_0223D550

	thumb_func_start ov76_0223D574
ov76_0223D574: ; 0x0223D574
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223D5FC ; =0x021BF67C
	mov r1, #0x10
	ldr r0, [r0, #0x4c]
	tst r1, r0
	beq _0223D592
	ldr r0, [r4, #0]
	mov r1, #0xc
	add r0, r0, #1
	str r0, [r4, #0]
	bl sub_020E1F6C
	str r1, [r4, #0]
	b _0223D5F8
_0223D592:
	mov r1, #0x20
	tst r1, r0
	beq _0223D5AA
	ldr r0, [r4, #0]
	cmp r0, #0
	ble _0223D5A4
	sub r0, r0, #1
	str r0, [r4, #0]
	b _0223D5F8
_0223D5A4:
	mov r0, #0xb
	str r0, [r4, #0]
	b _0223D5F8
_0223D5AA:
	mov r1, #0x40
	tst r1, r0
	beq _0223D5CE
	ldr r1, [r4, #0]
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	beq _0223D5CA
	sub r0, r1, #4
	mov r1, #0xc
	str r0, [r4, #0]
	bl sub_020E1F6C
	str r1, [r4, #0]
	b _0223D5F8
_0223D5CA:
	mov r0, #0
	pop {r4, pc}
_0223D5CE:
	mov r1, #0x80
	tst r0, r1
	beq _0223D5F4
	ldr r1, [r4, #0]
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	cmp r0, #2
	beq _0223D5F0
	add r0, r1, #4
	mov r1, #0xc
	str r0, [r4, #0]
	bl sub_020E1F6C
	str r1, [r4, #0]
	b _0223D5F8
_0223D5F0:
	mov r0, #0
	pop {r4, pc}
_0223D5F4:
	mov r0, #0
	pop {r4, pc}
_0223D5F8:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0223D5FC: .word 0x021BF67C
	thumb_func_end ov76_0223D574

	thumb_func_start ov76_0223D600
ov76_0223D600: ; 0x0223D600
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r4, #0
	str r2, [sp]
	cmp r1, #0
	bne _0223D610
	mov r4, #1
_0223D610:
	mov r0, #0xf1
	lsl r0, r0, #2
	lsl r6, r1, #2
	add r7, r5, r0
	add r1, sp, #4
	ldr r0, [r7, r6]
	add r1, #2
	add r2, sp, #4
	bl ov76_0223C0EC
	mov r0, #0xbd
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl sub_0200D4C4
	ldr r0, [sp]
	cmp r0, #1
	bne _0223D66E
	mov r0, #0xf1
	lsl r0, r0, #2
	add r1, r5, r0
	ldr r0, [r7, r6]
	lsl r4, r4, #2
	str r0, [r1, r4]
	ldr r0, [r1, r4]
	add r1, sp, #4
	add r1, #2
	add r2, sp, #4
	bl ov76_0223C0EC
	mov r0, #0xbd
	add r1, r5, r4
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl sub_0200D4C4
_0223D66E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov76_0223D600

	thumb_func_start ov76_0223D674
ov76_0223D674: ; 0x0223D674
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #6
	bls _0223D686
	b _0223D92A
_0223D686:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223D692: ; jump table
	.short _0223D6A0 - _0223D692 - 2 ; case 0
	.short _0223D79A - _0223D692 - 2 ; case 1
	.short _0223D7AA - _0223D692 - 2 ; case 2
	.short _0223D7BE - _0223D692 - 2 ; case 3
	.short _0223D880 - _0223D692 - 2 ; case 4
	.short _0223D8DE - _0223D692 - 2 ; case 5
	.short _0223D8EE - _0223D692 - 2 ; case 6
_0223D6A0:
	mov r0, #0x5b
	mov r1, #0x35
	bl sub_02006C24
	add r5, r0, #0
	add r0, r4, #0
	bl ov76_0223C110
	add r0, r4, #0
	bl ov76_0223C188
	add r0, r4, #0
	bl ov76_0223C288
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223CE84
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223CF24
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223CF88
	add r0, r4, #0
	bl ov76_0223C354
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223C61C
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	add r1, r4, #0
	str r3, [sp, #8]
	mov r0, #0x28
	str r0, [sp, #0xc]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, #0xec
	mov r2, #1
	bl ov76_0223CA98
	add r0, r4, #0
	bl ov76_0223B208
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223B69C
	add r0, r4, #0
	bl ov76_0223B1E0
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223CFEC
	add r0, r4, #0
	bl ov76_0223D16C
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223C438
	add r0, r4, #0
	bl ov76_0223C4AC
	add r0, r4, #0
	bl ov76_0223D338
	add r0, r4, #0
	bl ov76_0223D368
	ldr r1, _0223D93C ; =0x00000418
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov76_0223BA90
	add r0, r4, #0
	bl ov76_0223BB04
	add r0, r4, #0
	bl ov76_0223BBAC
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223D2F4
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223C568
	add r0, r4, #0
	bl ov76_0223B940
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223B96C
	add r0, r4, #0
	add r0, #0xec
	mov r1, #7
	bl ov76_0223CA30
	bl ov76_0223CE2C
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223DCB8
	add r0, r5, #0
	bl sub_02006CA8
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223D92A
_0223D79A:
	bl ov76_0223CE44
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223D92A
_0223D7AA:
	bl sub_0200F2AC
	cmp r0, #1
	beq _0223D7B4
	b _0223D92A
_0223D7B4:
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0223D7BE:
	bl sub_02022798
	cmp r0, #1
	bne _0223D7CE
	add r0, r4, #0
	bl ov76_0223D4FC
	b _0223D92A
_0223D7CE:
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	add r0, r4, r0
	bl ov76_0223D574
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r5, [r4, r1]
	cmp r0, #1
	str r6, [r4, r1]
	bne _0223D82A
	add r0, r4, #0
	bl ov76_0223B400
	add r0, r4, #0
	bl ov76_0223B808
	add r0, r4, #0
	bl ov76_0223C7E0
	mov r0, #0xf1
	lsl r0, r0, #2
	str r5, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov76_0223D600
	add r0, r4, #0
	bl ov76_0223B678
	add r0, r4, #0
	bl ov76_0223B208
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223B69C
	add r0, r4, #0
	bl ov76_0223B1E0
	ldr r0, _0223D940 ; =0x000005DC
	bl sub_02005748
	b _0223D92A
_0223D82A:
	ldr r0, _0223D944 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #1
	tst r0, r2
	beq _0223D86C
	add r0, r1, #0
	add r0, #0x10
	ldr r0, [r4, r0]
	add r1, #0x10
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xec
	mov r1, #8
	bl ov76_0223CA30
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, #0xfc
	mov r2, #1
	add r3, r4, #0
	bl ov76_0223BF74
	ldr r0, _0223D940 ; =0x000005DC
	bl sub_02005748
	b _0223D92A
_0223D86C:
	mov r0, #2
	tst r0, r2
	beq _0223D92A
	mov r0, #5
	add r1, #0x10
	str r0, [r4, r1]
	ldr r0, _0223D948 ; =0x000005DD
	bl sub_02005748
	b _0223D92A
_0223D880:
	mov r0, #0x1a
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02001BE0
	add r1, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r1, r0
	beq _0223D89C
	add r0, r0, #1
	cmp r1, r0
	beq _0223D92A
	b _0223D8B6
_0223D89C:
	add r0, r4, #0
	bl ov76_0223D4C4
	add r0, r4, #0
	add r0, #0xec
	mov r1, #7
	bl ov76_0223CA30
	mov r0, #0xf5
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223D92A
_0223D8B6:
	cmp r1, #0
	beq _0223D92A
	add r0, r4, #0
	blx r1
	cmp r0, #1
	beq _0223D8CA
	add r0, r4, #0
	bl ov76_0223D4C4
	b _0223D92A
_0223D8CA:
	add r0, r4, #0
	add r0, #0xec
	mov r1, #7
	bl ov76_0223CA30
	mov r0, #0xf5
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223D92A
_0223D8DE:
	bl ov76_0223CE64
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223D92A
_0223D8EE:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223D92A
	add r0, r4, #0
	add r0, #0xec
	bl sub_0201A8FC
	add r0, r4, #0
	bl ov76_0223C8BC
	add r0, r4, #0
	bl ov76_0223C32C
	add r0, r4, #0
	bl ov76_0223D31C
	add r0, r4, #0
	bl ov76_0223C588
	add r0, r4, #0
	bl ov76_0223BC70
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02097F30
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_0223D92A:
	add r0, r4, #0
	bl ov76_0223C304
	add r0, r4, #0
	bl ov76_0223C88C
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223D93C: .word 0x00000418
_0223D940: .word 0x000005DC
_0223D944: .word 0x021BF67C
_0223D948: .word 0x000005DD
	thumb_func_end ov76_0223D674

	thumb_func_start ov76_0223D94C
ov76_0223D94C: ; 0x0223D94C
	push {r3, lr}
	cmp r1, #3
	bhi _0223D97E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223D95E: ; jump table
	.short _0223D966 - _0223D95E - 2 ; case 0
	.short _0223D976 - _0223D95E - 2 ; case 1
	.short _0223D96E - _0223D95E - 2 ; case 2
	.short _0223D976 - _0223D95E - 2 ; case 3
_0223D966:
	mov r1, #1
	bl sub_0200D3CC
	pop {r3, pc}
_0223D96E:
	mov r1, #2
	bl sub_0200D3CC
	pop {r3, pc}
_0223D976:
	mov r1, #0
	bl sub_0200D3CC
	pop {r3, pc}
_0223D97E:
	bl sub_02022974
	pop {r3, pc}
	thumb_func_end ov76_0223D94C

	thumb_func_start ov76_0223D984
ov76_0223D984: ; 0x0223D984
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r5, #0
	beq _0223D9A8
	add r1, sp, #4
	add r2, sp, #0
	bl sub_020129A4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	add r1, r1, r4
	add r2, r2, r6
	bl sub_020128C4
_0223D9A8:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov76_0223D984

	thumb_func_start ov76_0223D9AC
ov76_0223D9AC: ; 0x0223D9AC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #3
	beq _0223D9BE
	cmp r0, #6
	beq _0223D9D8
	b _0223D9F8
_0223D9BE:
	mov r1, #0
	ldr r0, [r4, #8]
	sub r2, r1, #1
	bl ov76_0223D984
	ldr r0, [r4, #4]
	mov r1, #2
	bl sub_0200D3CC
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_0223D9D8:
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #2
	bl ov76_0223D984
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_0200D3CC
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
_0223D9F8:
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov76_0223D9AC

	thumb_func_start ov76_0223DA00
ov76_0223DA00: ; 0x0223DA00
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x35
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	mov r0, #1
	str r0, [r4, #0]
	mov r1, #0
	str r6, [r4, #4]
	add r0, r5, #0
	sub r2, r1, #1
	str r5, [r4, #8]
	bl ov76_0223D984
	mov r2, #0xfa
	ldr r0, _0223DA30 ; =ov76_0223D9AC
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223DA30: .word ov76_0223D9AC
	thumb_func_end ov76_0223DA00

	thumb_func_start ov76_0223DA34
ov76_0223DA34: ; 0x0223DA34
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	add r6, r1, #0
	cmp r0, #0
	bne _0223DA48
	b _0223DC84
_0223DA48:
	cmp r5, #0x14
	bls _0223DA4E
	b _0223DC80
_0223DA4E:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223DA5A: ; jump table
	.short _0223DBC2 - _0223DA5A - 2 ; case 0
	.short _0223DBC2 - _0223DA5A - 2 ; case 1
	.short _0223DBC2 - _0223DA5A - 2 ; case 2
	.short _0223DBC2 - _0223DA5A - 2 ; case 3
	.short _0223DBC2 - _0223DA5A - 2 ; case 4
	.short _0223DBC2 - _0223DA5A - 2 ; case 5
	.short _0223DBC2 - _0223DA5A - 2 ; case 6
	.short _0223DBC2 - _0223DA5A - 2 ; case 7
	.short _0223DA84 - _0223DA5A - 2 ; case 8
	.short _0223DACE - _0223DA5A - 2 ; case 9
	.short _0223DB1C - _0223DA5A - 2 ; case 10
	.short _0223DB4A - _0223DA5A - 2 ; case 11
	.short _0223DB88 - _0223DA5A - 2 ; case 12
	.short _0223DC50 - _0223DA5A - 2 ; case 13
	.short _0223DC50 - _0223DA5A - 2 ; case 14
	.short _0223DC50 - _0223DA5A - 2 ; case 15
	.short _0223DC50 - _0223DA5A - 2 ; case 16
	.short _0223DC50 - _0223DA5A - 2 ; case 17
	.short _0223DC50 - _0223DA5A - 2 ; case 18
	.short _0223DC50 - _0223DA5A - 2 ; case 19
	.short _0223DC50 - _0223DA5A - 2 ; case 20
_0223DA84:
	cmp r6, #0
	bne _0223DAC2
	ldr r1, _0223DC88 ; =0x00000418
	ldr r0, [r4, r1]
	cmp r0, #0
	ble _0223DA92
	b _0223DA96
_0223DA92:
	add r0, r1, #4
	ldr r0, [r4, r0]
_0223DA96:
	sub r0, r0, #1
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov76_0223BC70
	ldr r1, _0223DC88 ; =0x00000418
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov76_0223BA90
	add r0, r4, #0
	bl ov76_0223BB04
	add r0, r4, #0
	bl ov76_0223BBAC
	add r0, r4, #0
	bl ov76_0223CC8C
	ldr r0, _0223DC8C ; =0x000006C5
	bl sub_02005748
_0223DAC2:
	ldr r0, _0223DC90 ; =0x00000404
	add r1, r6, #0
	ldr r0, [r4, r0]
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DACE:
	cmp r6, #0
	bne _0223DB10
	ldr r1, _0223DC88 ; =0x00000418
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_020E1F6C
	ldr r0, _0223DC88 ; =0x00000418
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov76_0223BC70
	ldr r1, _0223DC88 ; =0x00000418
	add r0, r4, #0
	ldr r1, [r4, r1]
	bl ov76_0223BA90
	add r0, r4, #0
	bl ov76_0223BB04
	add r0, r4, #0
	bl ov76_0223BBAC
	add r0, r4, #0
	bl ov76_0223CC8C
	ldr r0, _0223DC8C ; =0x000006C5
	bl sub_02005748
_0223DB10:
	ldr r0, _0223DC94 ; =0x00000408
	add r1, r6, #0
	ldr r0, [r4, r0]
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DB1C:
	cmp r6, #0
	bne _0223DB3E
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #5
	beq _0223DB34
	mov r1, #5
	str r1, [r4, r0]
	ldr r0, _0223DC98 ; =0x000005DD
	bl sub_02005748
_0223DB34:
	ldr r0, _0223DC9C ; =0x0000040C
	mov r1, #0
	ldr r0, [r4, r0]
	bl ov76_0223DA00
_0223DB3E:
	ldr r0, _0223DC9C ; =0x0000040C
	add r1, r6, #0
	ldr r0, [r4, r0]
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DB4A:
	cmp r6, #0
	bne _0223DB7A
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #6
	beq _0223DB6A
	mov r1, #6
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223DCB8
	ldr r0, _0223DCA0 ; =0x000005E2
	bl sub_02005748
_0223DB6A:
	mov r0, #0x41
	mov r1, #0x8e
	lsl r0, r0, #4
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl ov76_0223DA00
_0223DB7A:
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r6, #0
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DB88:
	cmp r6, #0
	bne _0223DBB6
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #7
	beq _0223DBA8
	mov r1, #7
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223DCB8
	ldr r0, _0223DC98 ; =0x000005DD
	bl sub_02005748
_0223DBA8:
	ldr r0, _0223DCA4 ; =0x00000414
	mov r1, #0x8f
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl ov76_0223DA00
_0223DBB6:
	ldr r0, _0223DCA4 ; =0x00000414
	add r1, r6, #0
	ldr r0, [r4, r0]
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DBC2:
	cmp r6, #0
	bne _0223DC84
	add r0, r4, #0
	bl ov76_0223B2F8
	cmp r0, #0
	bne _0223DBE2
	ldr r0, _0223DCA8 ; =0x000005F2
	bl sub_02005748
	add r4, #0xec
	add r0, r4, #0
	mov r1, #0xf
	bl ov76_0223CA30
	pop {r4, r5, r6, pc}
_0223DBE2:
	mov r0, #0x42
	lsl r0, r0, #4
	add r6, r4, r0
	ldrb r1, [r6, r5]
	cmp r1, #0
	beq _0223DC38
	ldr r0, [r4, #0x64]
	sub r1, r1, #1
	bl sub_0202CA90
	cmp r0, #0
	beq _0223DC38
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov76_0223B278
	add r1, r4, #0
	add r1, #0xd4
	str r0, [r1, #0]
	ldrb r0, [r6, r5]
	bl sub_02098164
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xec
	bl ov76_0223CDC4
	ldr r0, [r4, #0]
	mov r2, #0
	ldrb r1, [r6, r5]
	ldr r0, [r0, #0x20]
	mvn r2, r2
	bl sub_0202CAE0
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223CD20
	ldr r0, _0223DCAC ; =0x000005EB
	bl sub_02005748
	pop {r4, r5, r6, pc}
_0223DC38:
	ldrb r0, [r6, r5]
	cmp r0, #0
	beq _0223DC84
	ldr r0, _0223DCA8 ; =0x000005F2
	bl sub_02005748
	add r4, #0xec
	add r0, r4, #0
	mov r1, #0x10
	bl ov76_0223CA30
	pop {r4, r5, r6, pc}
_0223DC50:
	cmp r6, #0
	bne _0223DC84
	sub r5, #0xd
	lsl r2, r5, #0x18
	add r0, r4, #0
	lsr r2, r2, #0x18
	bl ov76_0223B5C4
	lsl r0, r5, #4
	add r1, r4, r0
	mov r0, #0xca
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	bl sub_02098164
	add r4, #0xec
	add r1, r0, #0
	add r0, r4, #0
	bl ov76_0223CDC4
	ldr r0, _0223DCAC ; =0x000005EB
	bl sub_02005748
	pop {r4, r5, r6, pc}
_0223DC80:
	bl sub_02022974
_0223DC84:
	pop {r4, r5, r6, pc}
	nop
_0223DC88: .word 0x00000418
_0223DC8C: .word 0x000006C5
_0223DC90: .word 0x00000404
_0223DC94: .word 0x00000408
_0223DC98: .word 0x000005DD
_0223DC9C: .word 0x0000040C
_0223DCA0: .word 0x000005E2
_0223DCA4: .word 0x00000414
_0223DCA8: .word 0x000005F2
_0223DCAC: .word 0x000005EB
	thumb_func_end ov76_0223DA34

	thumb_func_start ov76_0223DCB0
ov76_0223DCB0: ; 0x0223DCB0
	mov r1, #0x96
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov76_0223DCB0

	thumb_func_start ov76_0223DCB8
ov76_0223DCB8: ; 0x0223DCB8
	add r0, #0xd8
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov76_0223DCB8

	thumb_func_start ov76_0223DCC0
ov76_0223DCC0: ; 0x0223DCC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	add r1, sp, #0x10
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	mov r7, #0x1d
	lsl r7, r7, #4
	strb r0, [r1, #3]
	ldr r1, _0223DD7C ; =0x0223EE44
	ldr r2, [sp, #4]
	add r3, r7, #1
	add r4, r7, #2
	add r5, r7, #3
_0223DCE0:
	ldrb r6, [r1]
	add r0, r0, #1
	strb r6, [r2, r7]
	ldrb r6, [r1, #1]
	strb r6, [r2, r3]
	ldrb r6, [r1, #2]
	strb r6, [r2, r4]
	ldrb r6, [r1, #3]
	add r1, r1, #4
	strb r6, [r2, r5]
	add r2, r2, #4
	cmp r0, #0xd
	blt _0223DCE0
	cmp r0, #0x15
	bge _0223DD5A
	mov r3, #0x1d
	ldr r2, [sp, #4]
	lsl r3, r3, #4
	add r2, r2, r3
	lsl r4, r0, #2
	ldr r1, [sp, #4]
	ldr r3, [sp, #4]
	add r1, r1, r4
	add r2, r2, r4
	lsl r4, r0, #4
	add r5, sp, #0xc
	add r3, r3, r4
	ldrb r4, [r5, #4]
	strb r4, [r5]
	ldrb r4, [r5, #5]
	strb r4, [r5, #1]
	ldrb r4, [r5, #6]
	strb r4, [r5, #2]
	ldrb r4, [r5, #7]
	strb r4, [r5, #3]
	ldrb r4, [r5, #2]
	ldrb r6, [r5]
	ldrb r7, [r5, #1]
	str r4, [sp, #8]
	ldrb r4, [r5, #3]
	mov ip, r4
_0223DD32:
	mov r4, #0x1d
	lsl r4, r4, #4
	strb r6, [r1, r4]
	add r4, r4, #1
	strb r7, [r1, r4]
	ldr r5, _0223DD80 ; =0x000001D2
	ldr r4, [sp, #8]
	add r0, r0, #1
	strb r4, [r1, r5]
	add r5, r5, #1
	mov r4, ip
	strb r4, [r1, r5]
	mov r4, #0x26
	lsl r4, r4, #4
	str r2, [r3, r4]
	add r1, r1, #4
	add r2, r2, #4
	add r3, #0x10
	cmp r0, #0x15
	blt _0223DD32
_0223DD5A:
	mov r0, #0x35
	str r0, [sp]
	mov r1, #0x1d
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	add r0, r0, r1
	ldr r2, _0223DD84 ; =ov76_0223DA34
	ldr r3, [sp, #4]
	mov r1, #0x15
	bl sub_02023FCC
	mov r2, #0x73
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223DD7C: .word 0x0223EE44
_0223DD80: .word 0x000001D2
_0223DD84: .word ov76_0223DA34
	thumb_func_end ov76_0223DCC0

	thumb_func_start ov76_0223DD88
ov76_0223DD88: ; 0x0223DD88
	push {r4, r5, r6, lr}
	sub sp, #0x48
	ldr r1, _0223DDF4 ; =0x00000428
	add r5, r0, #0
	ldr r1, [r5, r1]
	add r0, sp, #0x38
	mov r2, #2
	bl sub_02075EF4
	ldr r0, _0223DDF4 ; =0x00000428
	mov r1, #5
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	ldr r0, _0223DDF4 ; =0x00000428
	mov r1, #2
	ldr r0, [r5, r0]
	bl sub_020765AC
	add r6, r0, #0
	mov r0, #0x6b
	lsl r0, r0, #2
	str r6, [r5, r0]
	ldr r0, _0223DDF8 ; =0x0000042C
	lsl r2, r4, #0x10
	ldr r0, [r5, r0]
	add r1, sp, #0x10
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_020789BC
	ldr r0, _0223DDFC ; =0xFFFFFD80
	add r6, #0x30
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	mov r0, #0x69
	str r1, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x38
	mov r2, #0xc0
	add r3, r6, #0
	bl sub_02007C34
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x48
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223DDF4: .word 0x00000428
_0223DDF8: .word 0x0000042C
_0223DDFC: .word 0xFFFFFD80
	thumb_func_end ov76_0223DD88

	thumb_func_start ov76_0223DE00
ov76_0223DE00: ; 0x0223DE00
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0223DE4C ; =0x00000428
	mov r1, #5
	ldr r0, [r5, r0]
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	ldr r0, _0223DE4C ; =0x00000428
	ldr r0, [r5, r0]
	bl sub_02075BCC
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02007B98
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r2, #0x97
	str r0, [sp, #8]
	ldr r0, _0223DE50 ; =0x0000042C
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0xb4
	lsl r3, r4, #0x10
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	lsr r3, r3, #0x10
	bl sub_020789F4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223DE4C: .word 0x00000428
_0223DE50: .word 0x0000042C
	thumb_func_end ov76_0223DE00

	thumb_func_start ov76_0223DE54
ov76_0223DE54: ; 0x0223DE54
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	mov r2, #0
	bl sub_02007DEC
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	mov r2, #0
	bl sub_02007DEC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov76_0223DE54

	thumb_func_start ov76_0223DE78
ov76_0223DE78: ; 0x0223DE78
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl sub_020080C0
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0223DE94
	mov r0, #0
	pop {r4, pc}
_0223DE94:
	add r1, #0xa8
	ldr r0, [r4, r1]
	mov r1, #0xc
	bl sub_020080C0
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	blt _0223DEC6
	add r0, r2, #0
	add r0, #0xa8
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl sub_02007DEC
	mov r0, #0x6a
	lsl r0, r0, #2
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, r0]
	add r2, #0xf3
	bl sub_02007DEC
	mov r0, #0
	pop {r4, pc}
_0223DEC6:
	add r2, #0xa8
	ldr r0, [r4, r2]
	mov r1, #0xc
	mov r2, #0x20
	bl sub_02008274
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	mov r2, #0x20
	bl sub_02008274
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_020087C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov76_0223DE78

	thumb_func_start ov76_0223DEF4
ov76_0223DEF4: ; 0x0223DEF4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl sub_020080C0
	cmp r0, #0
	bne _0223DF0C
	mov r0, #0
	pop {r4, pc}
_0223DF0C:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	bl sub_020080C0
	cmp r0, #0
	bgt _0223DF3C
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xc
	mov r2, #0
	bl sub_02007DEC
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xd
	mov r2, #0
	bl sub_02007DEC
	mov r0, #0
	pop {r4, pc}
_0223DF3C:
	mov r0, #0x6a
	lsl r0, r0, #2
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2c
	bl sub_02008274
	mov r0, #0x6a
	lsl r0, r0, #2
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, r0]
	sub r2, #0x2d
	bl sub_02008274
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl sub_020087C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov76_0223DEF4

	thumb_func_start ov76_0223DF70
ov76_0223DF70: ; 0x0223DF70
	add r2, r1, #0
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0223DF80 ; =sub_02007DEC
	mov r1, #6
	bx r3
	nop
_0223DF80: .word sub_02007DEC
	thumb_func_end ov76_0223DF70

	thumb_func_start ov76_0223DF84
ov76_0223DF84: ; 0x0223DF84
	mov r1, #0x6a
	lsl r1, r1, #2
	ldr r3, _0223DF90 ; =sub_02007DC8
	ldr r0, [r0, r1]
	bx r3
	nop
_0223DF90: .word sub_02007DC8
	thumb_func_end ov76_0223DF84

	thumb_func_start ov76_0223DF94
ov76_0223DF94: ; 0x0223DF94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	mov r1, #0xf5
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0xa
	bhi _0223E014
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223DFB0: ; jump table
	.short _0223DFC6 - _0223DFB0 - 2 ; case 0
	.short _0223E00C - _0223DFB0 - 2 ; case 1
	.short _0223E082 - _0223DFB0 - 2 ; case 2
	.short _0223E0BA - _0223DFB0 - 2 ; case 3
	.short _0223E7C0 - _0223DFB0 - 2 ; case 4
	.short _0223E0DA - _0223DFB0 - 2 ; case 5
	.short _0223E42E - _0223DFB0 - 2 ; case 6
	.short _0223E49A - _0223DFB0 - 2 ; case 7
	.short _0223E6BC - _0223DFB0 - 2 ; case 8
	.short _0223E6F0 - _0223DFB0 - 2 ; case 9
	.short _0223E77C - _0223DFB0 - 2 ; case 10
_0223DFC6:
	mov r1, #0
	bl ov76_0223DCB8
	add r0, r4, #0
	ldr r1, _0223E304 ; =0x0000FFFF
	add r0, #0xec
	bl ov76_0223CA30
	add r0, r4, #0
	bl ov76_0223CB58
	add r0, r4, #0
	bl ov76_0223CC8C
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	bl ov76_0223BD30
	add r0, r4, #0
	bl ov76_0223D338
	add r0, r4, #0
	bl ov76_0223D368
	mov r0, #0x26
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E00C:
	bl ov76_0223DCB0
	cmp r0, #1
	bne _0223E016
_0223E014:
	b _0223E7C0
_0223E016:
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #3
	bl sub_02003178
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E304 ; =0x0000FFFF
	mov r1, #4
	bl sub_02003178
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF74
	mov r0, #7
	mov r1, #1
	bl sub_02019060
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223D2F4
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223C568
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223B96C
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E082:
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0223E180
	mov r0, #3
	mov r1, #1
	bl sub_02019060
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #2
	bl sub_02003178
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E0BA:
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0223E180
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223DCB8
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E0DA:
	add r2, r1, #0
	add r2, #8
	ldr r2, [r4, r2]
	cmp r2, #7
	bls _0223E0E6
	b _0223E3F4
_0223E0E6:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0223E0F2: ; jump table
	.short _0223E102 - _0223E0F2 - 2 ; case 0
	.short _0223E174 - _0223E0F2 - 2 ; case 1
	.short _0223E1CA - _0223E0F2 - 2 ; case 2
	.short _0223E22E - _0223E0F2 - 2 ; case 3
	.short _0223E27A - _0223E0F2 - 2 ; case 4
	.short _0223E2BE - _0223E0F2 - 2 ; case 5
	.short _0223E314 - _0223E0F2 - 2 ; case 6
	.short _0223E388 - _0223E0F2 - 2 ; case 7
_0223E102:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r3, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E308 ; =0x0000080B
	mov r1, #2
	bl sub_02003178
	mov r3, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E304 ; =0x0000FFFF
	mov r1, #8
	bl sub_02003178
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223DCB8
	mov r0, #0x3e
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov76_0223D3CC
	add r0, r4, #0
	bl ov76_0223DD88
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223DF70
	add r0, r4, #0
	add r0, #0xec
	mov r1, #0xd
	bl ov76_0223CA30
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E174:
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	beq _0223E182
_0223E180:
	b _0223E7C0
_0223E182:
	mov r0, #0x35
	str r0, [sp, #0x80]
	mov r1, #1
	mov r2, #0
	mov r0, #0xff
	str r0, [sp, #0x88]
	add r0, r4, #0
	str r1, [sp, #0x7c]
	str r1, [sp, #0x94]
	str r2, [sp, #0x84]
	str r2, [sp, #0x90]
	add r0, #0xdc
	ldr r0, [r0, #0]
	mov r1, #0x9b
	str r0, [sp, #0x98]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [sp, #0x9c]
	ldr r0, _0223E30C ; =0x00000428
	ldr r0, [r4, r0]
	bl sub_02074470
	str r0, [sp, #0x8c]
	add r0, sp, #0x7c
	bl ov12_02237728
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E1CA:
	add r2, sp, #0x58
	mov r0, #0
	str r0, [r2, #0]
	str r0, [r2, #4]
	str r0, [r2, #8]
	mov r0, #1
	str r0, [sp, #0x58]
	add r0, r1, #0
	add r0, #0x54
	ldr r0, [r4, r0]
	sub r1, #0x10
	str r0, [sp, #0x60]
	ldr r0, [r4, r1]
	add r1, r4, #0
	add r0, r0, #1
	str r0, [sp, #0x18]
	add r0, sp, #0x64
	bl ov76_0223B848
	ldr r0, _0223E30C ; =0x00000428
	mov r1, #0xa2
	ldr r0, [r4, r0]
	add r2, sp, #0x18
	bl sub_02074B30
	ldr r0, _0223E30C ; =0x00000428
	mov r1, #0xab
	ldr r0, [r4, r0]
	add r2, sp, #0x64
	bl sub_02074B30
	mov r0, #0x35
	add r1, sp, #0x58
	bl ov12_02236004
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl ov12_02236320
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r4, r0]
	b _0223E7C0
_0223E22E:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_02236374
	cmp r0, #1
	bne _0223E2EA
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_02237810
	cmp r0, #1
	bne _0223E2EA
	add r0, r4, #0
	bl ov76_0223DE78
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_022363B4
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223DF70
	add r0, r4, #0
	bl ov76_0223DE54
	ldr r0, _0223E310 ; =0x000006C6
	bl sub_02005748
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E27A:
	bl ov76_0223DE78
	add r5, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_022377F8
	cmp r0, #0
	bne _0223E2EA
	cmp r5, #0
	bne _0223E2EA
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_0223783C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov76_0223DE00
	mov r0, #0x3e
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E2BE:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_022363C4
	cmp r0, #0
	bne _0223E2EA
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020160F4
	cmp r0, #1
	bne _0223E2EA
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007C24
	cmp r0, #0
	beq _0223E2EC
_0223E2EA:
	b _0223E7C0
_0223E2EC:
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_02236428
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
	nop
_0223E304: .word 0x0000FFFF
_0223E308: .word 0x0000080B
_0223E30C: .word 0x00000428
_0223E310: .word 0x000006C6
_0223E314:
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #0
	add r0, #0xc
	str r2, [r4, r0]
	add r0, r1, #0
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	blt _0223E402
	add r0, r1, #0
	mov r2, #0
	add r0, #0xc
	str r2, [r4, r0]
	mov r0, #0x35
	mov r3, #1
	str r0, [sp, #0x34]
	mov r0, #5
	str r0, [sp, #0x38]
	mov r0, #0xff
	str r0, [sp, #0x3c]
	add r0, r4, #0
	str r3, [sp, #0x30]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, #0xdc
	ldr r0, [r0, #0]
	add r1, #0x54
	str r0, [sp, #0x4c]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	str r0, [sp, #0x50]
	ldr r0, [r4, r1]
	mov r1, #0x9b
	bl sub_02074470
	str r0, [sp, #0x40]
	add r0, sp, #0x30
	bl ov12_02237728
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	bl ov76_0223D3A0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E388:
	bl ov76_0223DEF4
	add r5, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_022377F8
	cmp r0, #0
	bne _0223E402
	cmp r5, #0
	bne _0223E402
	mov r0, #0xa
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E6E8 ; =0x0000080B
	mov r1, #2
	bl sub_02003178
	mov r0, #0xa
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E6EC ; =0x0000FFFF
	mov r1, #8
	bl sub_02003178
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223DF70
	add r0, r4, #0
	bl ov76_0223DF84
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov12_0223783C
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E3F4:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	beq _0223E404
_0223E402:
	b _0223E7C0
_0223E404:
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223DCB8
	mov r0, #0xf7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #4
	sub r0, #8
	str r1, [r4, r0]
	add r0, r4, #0
	ldr r1, _0223E6EC ; =0x0000FFFF
	add r0, #0xec
	bl ov76_0223CA30
	b _0223E7C0
_0223E42E:
	add r0, #0xec
	mov r1, #0xc
	bl ov76_0223CA30
	add r0, r4, #0
	bl ov76_0223B78C
	cmp r0, #1
	bne _0223E448
	mov r0, #0x26
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
_0223E448:
	add r0, r4, #0
	bl ov76_0223B808
	add r0, r4, #0
	bl ov76_0223C7E0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x28]
	bl sub_0202CD88
	mov r1, #6
	bl sub_0202CFEC
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	mov r0, #0xc
	mul r0, r1
	add r2, r4, r0
	mov r0, #0x99
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0xff
	beq _0223E490
	ldr r2, [r4, #0]
	lsl r0, r0, #2
	add r0, r2, r0
	ldr r5, [r0, #4]
	ldr r0, [r2, #0x20]
	bl sub_0202CA28
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0xab
	bl sub_02074B30
_0223E490:
	mov r0, #0xf5
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223E7C0
_0223E49A:
	add r1, #8
	ldr r1, [r4, r1]
	cmp r1, #5
	bhi _0223E524
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E4AE: ; jump table
	.short _0223E4BA - _0223E4AE - 2 ; case 0
	.short _0223E518 - _0223E4AE - 2 ; case 1
	.short _0223E59C - _0223E4AE - 2 ; case 2
	.short _0223E5AE - _0223E4AE - 2 ; case 3
	.short _0223E616 - _0223E4AE - 2 ; case 4
	.short _0223E652 - _0223E4AE - 2 ; case 5
_0223E4BA:
	bl ov76_0223B78C
	cmp r0, #0
	bne _0223E4CC
	mov r0, #0xf5
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223E7C0
_0223E4CC:
	mov r3, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E6E8 ; =0x0000080B
	mov r1, #2
	bl sub_02003178
	mov r3, #0
	str r3, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E6EC ; =0x0000FFFF
	mov r1, #8
	bl sub_02003178
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223DCB8
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E518:
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	beq _0223E526
_0223E524:
	b _0223E7C0
_0223E526:
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02003858
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r2, #4
	add r0, r4, #0
	str r2, [sp, #8]
	mov r1, #0x28
	str r1, [sp, #0xc]
	add r0, #0xe4
	add r1, #0xe4
	ldr r0, [r0, #0]
	add r1, r4, r1
	mov r3, #2
	bl ov76_0223CA98
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #0x19
	str r0, [sp, #0x1c]
	mov r0, #4
	str r0, [sp, #0x20]
	mov r0, #0xd4
	str r0, [sp, #0x24]
	mov r0, #5
	str r0, [sp, #0x28]
	add r0, sp, #0x10
	strb r1, [r0, #0x1c]
	mov r1, #6
	strb r1, [r0, #0x1d]
	mov r0, #0x35
	bl sub_02015920
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, sp, #0x1c
	bl sub_02015958
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xe
	bl ov76_0223CA30
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E59C:
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0223E5AE:
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #0
	beq _0223E65E
	cmp r0, #1
	beq _0223E5C4
	cmp r0, #2
	bne _0223E65E
_0223E5C4:
	mov r1, #0x3e
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003858
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02015938
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x43
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E616:
	mov r0, #0xa
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E6E8 ; =0x0000080B
	mov r1, #2
	bl sub_02003178
	mov r0, #0xa
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E6EC ; =0x0000FFFF
	mov r1, #8
	bl sub_02003178
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E652:
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	beq _0223E660
_0223E65E:
	b _0223E7C0
_0223E660:
	mov r0, #0x3e
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223E6AA
	cmp r1, #1
	beq _0223E674
	cmp r1, #2
	beq _0223E6A4
	b _0223E6AA
_0223E674:
	add r0, r4, #0
	bl ov76_0223D350
	add r0, r4, #0
	bl ov76_0223D384
	add r0, r4, #0
	bl ov76_0223CC8C
	add r0, r4, #0
	bl ov76_0223B678
	add r0, r4, #0
	bl ov76_0223B208
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223B69C
	mov r0, #0xf5
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223E6AA
_0223E6A4:
	mov r1, #4
	sub r0, #0xc
	str r1, [r4, r0]
_0223E6AA:
	add r0, r4, #0
	mov r1, #1
	bl ov76_0223DCB8
	mov r0, #0xf7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0223E7C0
_0223E6BC:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #2
	bl sub_02003178
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
	; .align 2, 0
_0223E6E8: .word 0x0000080B
_0223E6EC: .word 0x0000FFFF
_0223E6F0:
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0223E7C0
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	add r0, r4, #0
	str r3, [sp, #8]
	add r0, #0xe8
	ldr r0, [r0, #0]
	ldr r2, _0223E89C ; =0x0000FFFF
	mov r1, #4
	bl sub_02003178
	mov r0, #3
	add r1, r0, #0
	bl sub_02019060
	mov r0, #7
	mov r1, #3
	bl sub_02019060
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223D2F4
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223C568
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223B96C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	mov r2, #4
	bl ov76_0223BD30
	add r0, r4, #0
	mov r1, #0
	bl ov76_0223DCB8
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E77C:
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_0200384C
	cmp r0, #0
	bne _0223E7C0
	add r0, r4, #0
	bl ov76_0223DCB0
	cmp r0, #1
	beq _0223E7C0
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	mov r1, #0
	add r0, r4, #0
	mov r2, #0xff
	add r3, r1, #0
	bl ov76_0223D494
	add r0, r4, #0
	add r0, #0xec
	mov r1, #7
	bl ov76_0223CA30
	add r0, r4, #0
	bl ov76_0223CDA4
	add sp, #0xa4
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223E7C0:
	add r0, r4, #0
	add r0, #0xd4
	ldr r5, [r0, #0]
	cmp r5, #0xff
	bne _0223E7D6
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0202404C
	b _0223E87E
_0223E7D6:
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl sub_020227A4
	cmp r0, #0
	beq _0223E824
	lsl r6, r5, #4
	mov r0, #0xca
	add r1, r4, r6
	lsl r0, r0, #2
	ldrb r0, [r1, r0]
	bl sub_02098164
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0xec
	bl ov76_0223CDC4
	mov r0, #0xcb
	ldr r2, [sp, #0x10]
	add r1, r4, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x14]
	lsl r2, r2, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D4C4
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223B758
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223B7D4
	b _0223E87E
_0223E824:
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223B6C4
	lsl r6, r5, #4
	mov r2, #0x33
	add r1, r4, r6
	lsl r2, r2, #4
	add r7, r0, #0
	ldr r0, [r1, r2]
	sub r2, r2, #4
	ldr r1, [r1, r2]
	mov r2, #0
	bl ov76_0223B184
	cmp r7, #0
	bne _0223E866
	mov r1, #0xca
	ldr r0, [r4, #0]
	add r2, r4, r6
	lsl r1, r1, #2
	ldrb r1, [r2, r1]
	ldr r0, [r0, #0x20]
	mov r2, #1
	bl sub_0202CB20
	add r0, r4, #0
	bl ov76_0223CC8C
	add r0, r4, #0
	add r1, r5, #0
	bl ov76_0223B704
_0223E866:
	ldr r0, _0223E8A0 ; =0x000005EA
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0xff
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, _0223E89C ; =0x0000FFFF
	add r0, #0xec
	bl ov76_0223CDC4
_0223E87E:
	add r0, r4, #0
	bl ov76_0223D318
	add r0, r4, #0
	bl ov76_0223C544
	add r0, r4, #0
	bl ov76_0223C304
	add r0, r4, #0
	bl ov76_0223C88C
	mov r0, #1
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223E89C: .word 0x0000FFFF
_0223E8A0: .word 0x000005EA
	thumb_func_end ov76_0223DF94

	thumb_func_start ov76_0223E8A4
ov76_0223E8A4: ; 0x0223E8A4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223E8BC
	cmp r1, #1
	beq _0223E8C0
	cmp r1, #2
	beq _0223E8D0
	b _0223E90A
_0223E8BC:
	add r1, r1, #1
	str r1, [r4, r0]
_0223E8C0:
	bl ov76_0223CE64
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E90A
_0223E8D0:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0223E90A
	add r0, r4, #0
	add r0, #0xec
	bl sub_0201A8FC
	add r0, r4, #0
	bl ov76_0223C8BC
	add r0, r4, #0
	bl ov76_0223C32C
	add r0, r4, #0
	bl ov76_0223D31C
	add r0, r4, #0
	bl ov76_0223C588
	add r0, r4, #0
	bl ov76_0223BC70
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02097F30
	mov r0, #0
	pop {r4, pc}
_0223E90A:
	add r0, r4, #0
	bl ov76_0223C304
	add r0, r4, #0
	bl ov76_0223C88C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov76_0223E8A4

	thumb_func_start ov76_0223E91C
ov76_0223E91C: ; 0x0223E91C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	add r4, r5, #4
	lsl r6, r1, #3
	str r0, [sp]
	ldr r0, [r4, r6]
	cmp r0, #0xff
	beq _0223E940
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #4]
	mov r1, #0xa2
	add r2, sp, #0
	bl sub_02074B30
_0223E940:
	mov r0, #0xff
	str r0, [r4, r6]
	add r0, r5, #0
	bl ov76_0223C7E0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov76_0223E91C

	thumb_func_start ov76_0223E950
ov76_0223E950: ; 0x0223E950
	push {r4, lr}
	mov r2, #0xf5
	add r4, r0, #0
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	cmp r1, #0
	beq _0223E968
	cmp r1, #1
	beq _0223E986
	cmp r1, #2
	beq _0223E996
	b _0223E9AA
_0223E968:
	sub r2, #0x10
	ldr r1, [r4, r2]
	bl ov76_0223E91C
	add r0, r4, #0
	add r0, #0xec
	mov r1, #9
	bl ov76_0223CA30
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	b _0223E9AA
_0223E986:
	ldr r0, _0223E9BC ; =0x021BF67C
	ldr r3, [r0, #0x48]
	ldr r0, _0223E9C0 ; =0x00000CF3
	tst r0, r3
	beq _0223E9AA
	add r0, r1, #1
	str r0, [r4, r2]
	b _0223E9AA
_0223E996:
	mov r1, #0
	mov r2, #0xff
	add r3, r1, #0
	bl ov76_0223D494
	add r0, r4, #0
	add r0, #0xec
	mov r1, #7
	bl ov76_0223CA30
_0223E9AA:
	add r0, r4, #0
	bl ov76_0223C304
	add r0, r4, #0
	bl ov76_0223C88C
	mov r0, #1
	pop {r4, pc}
	nop
_0223E9BC: .word 0x021BF67C
_0223E9C0: .word 0x00000CF3
	thumb_func_end ov76_0223E950

	thumb_func_start ov76_0223E9C4
ov76_0223E9C4: ; 0x0223E9C4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #3
	bls _0223E9D4
	b _0223EAFC
_0223E9D4:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223E9E0: ; jump table
	.short _0223E9E8 - _0223E9E0 - 2 ; case 0
	.short _0223EA2A - _0223E9E0 - 2 ; case 1
	.short _0223EAB4 - _0223E9E0 - 2 ; case 2
	.short _0223EAC4 - _0223E9E0 - 2 ; case 3
_0223E9E8:
	sub r0, #0xe0
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl sub_0200D474
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x14
	bl sub_0200D474
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D364
	add r0, r4, #0
	add r0, #0xec
	mov r1, #0xa
	bl ov76_0223CA30
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_0200D3F4
	mov r0, #0xf5
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_0223EA2A:
	mov r0, #0xf2
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov76_0223D574
	cmp r0, #1
	bne _0223EA4A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov76_0223D600
	ldr r0, _0223EB0C ; =0x000005DC
	bl sub_02005748
	b _0223EAFC
_0223EA4A:
	ldr r0, _0223EB10 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0223EA88
	mov r2, #0xf1
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov76_0223C80C
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov76_0223D600
	add r0, r4, #0
	add r0, #0xec
	mov r1, #0xb
	bl ov76_0223CA30
	mov r0, #0xf5
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0223EB0C ; =0x000005DC
	bl sub_02005748
	b _0223EAFC
_0223EA88:
	mov r0, #2
	tst r0, r1
	beq _0223EAFC
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov76_0223D600
	mov r0, #0xf5
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0223EB14 ; =0x000005DD
	bl sub_02005748
	b _0223EAFC
_0223EAB4:
	ldr r1, _0223EB10 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	ldr r1, _0223EB18 ; =0x00000CF3
	tst r1, r2
	beq _0223EAFC
	mov r1, #3
	str r1, [r4, r0]
	b _0223EAFC
_0223EAC4:
	sub r0, #0xe0
	ldr r0, [r4, r0]
	mov r1, #0x14
	bl sub_0200D474
	mov r0, #0xbe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x19
	bl sub_0200D474
	mov r1, #0
	add r0, r4, #0
	mov r2, #0xff
	add r3, r1, #0
	bl ov76_0223D494
	mov r0, #0xbd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_0200D364
	add r0, r4, #0
	add r0, #0xec
	mov r1, #7
	bl ov76_0223CA30
_0223EAFC:
	add r0, r4, #0
	bl ov76_0223C304
	add r0, r4, #0
	bl ov76_0223C88C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0223EB0C: .word 0x000005DC
_0223EB10: .word 0x021BF67C
_0223EB14: .word 0x000005DD
_0223EB18: .word 0x00000CF3
	thumb_func_end ov76_0223E9C4

	thumb_func_start ov76_0223EB1C
ov76_0223EB1C: ; 0x0223EB1C
	mov r0, #0
	bx lr
	thumb_func_end ov76_0223EB1C

	thumb_func_start ov76_0223EB20
ov76_0223EB20: ; 0x0223EB20
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _0223EB4C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _0223EB50 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	pop {r3, pc}
	; .align 2, 0
_0223EB4C: .word 0xFFFFE0FF
_0223EB50: .word 0x04001000
	thumb_func_end ov76_0223EB20

	thumb_func_start ov76_0223EB54
ov76_0223EB54: ; 0x0223EB54
	push {r3, lr}
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	pop {r3, pc}
	thumb_func_end ov76_0223EB54

	thumb_func_start ov76_0223EB64
ov76_0223EB64: ; 0x0223EB64
	push {r4, r5, lr}
	sub sp, #0xfc
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _0223EC9C ; =0x0223EE1C
	add r3, sp, #0x10
	mov r2, #5
_0223EB74:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223EB74
	add r0, sp, #0x10
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r5, _0223ECA0 ; =0x0223EDF4
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223ECA4 ; =0x0223EE78
	add r3, sp, #0xa8
	mov r2, #0xa
_0223EBD4:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223EBD4
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	add r2, sp, #0xa8
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xc4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xe0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r1, _0223ECA8 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r5, _0223ECAC ; =0x0223EECC
	add r3, sp, #0x38
	mov r2, #0xe
_0223EC36:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223EC36
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0x38
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #6
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #7
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	add sp, #0xfc
	pop {r4, r5, pc}
	nop
_0223EC9C: .word 0x0223EE1C
_0223ECA0: .word 0x0223EDF4
_0223ECA4: .word 0x0223EE78
_0223ECA8: .word 0x04000008
_0223ECAC: .word 0x0223EECC
	thumb_func_end ov76_0223EB64

	thumb_func_start ov76_0223ECB0
ov76_0223ECB0: ; 0x0223ECB0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02008A94
	bl sub_0201DCAC
	bl sub_0200C800
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_02003694
	add r4, #0xe4
	ldr r0, [r4, #0]
	bl sub_0201C2B8
	ldr r3, _0223ECE8 ; =0x027E0000
	ldr r1, _0223ECEC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0223ECE8: .word 0x027E0000
_0223ECEC: .word 0x00003FF8
	thumb_func_end ov76_0223ECB0

	.rodata


	.global Unk_ov76_0223EDF4
Unk_ov76_0223EDF4: ; 0x0223EDF4
	.incbin "incbin/overlay76_rodata.bin", 0x104, 0x114 - 0x104

	.global Unk_ov76_0223EE04
Unk_ov76_0223EE04: ; 0x0223EE04
	.incbin "incbin/overlay76_rodata.bin", 0x114, 0x12C - 0x114

	.global Unk_ov76_0223EE1C
Unk_ov76_0223EE1C: ; 0x0223EE1C
	.incbin "incbin/overlay76_rodata.bin", 0x12C, 0x154 - 0x12C

	.global Unk_ov76_0223EE44
Unk_ov76_0223EE44: ; 0x0223EE44
	.incbin "incbin/overlay76_rodata.bin", 0x154, 0x188 - 0x154

	.global Unk_ov76_0223EE78
Unk_ov76_0223EE78: ; 0x0223EE78
	.incbin "incbin/overlay76_rodata.bin", 0x188, 0x1DC - 0x188

	.global Unk_ov76_0223EECC
Unk_ov76_0223EECC: ; 0x0223EECC
	.incbin "incbin/overlay76_rodata.bin", 0x1DC, 0x24C - 0x1DC

	.global Unk_ov76_0223EF3C
Unk_ov76_0223EF3C: ; 0x0223EF3C
	.incbin "incbin/overlay76_rodata.bin", 0x24C, 0x28

