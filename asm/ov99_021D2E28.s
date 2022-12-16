	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov99_021D2E28
ov99_021D2E28: ; 0x021D2E28
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r6, r4, #0
	add r5, r0, #0
	add r6, #8
	cmp r1, #0
	beq _021D2E44
	cmp r1, #1
	beq _021D2E64
	cmp r1, #2
	beq _021D2E88
	b _021D2E98
_021D2E44:
	add r1, r6, #0
	bl ov99_021D2ED8
	mov r1, #0
	mov r0, #3
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x18
	sub r2, #0x10
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E98
_021D2E64:
	ldr r0, _021D2ECC ; =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D2ED0 ; =0x00001770
	cmp r1, r0
	blo _021D2E98
	mov r0, #3
	str r0, [sp]
	mov r0, #0x18
	add r1, r0, #0
	sub r1, #0x28
	mov r2, #0
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2E98
_021D2E88:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2E98
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D2E98:
	ldr r1, _021D2ED4 ; =0x000010E0
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov99_021D44CC
	add r0, r5, #0
	add r1, r6, #0
	bl ov99_021D2FA8
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ov99_021D425C
	add r0, r5, #0
	add r1, r6, #0
	bl ov99_021D32D8
	add r0, r5, #0
	add r1, r6, #0
	bl ov99_021D330C
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D2ECC: .word 0x000010FC
_021D2ED0: .word 0x00001770
_021D2ED4: .word 0x000010E0
	thumb_func_end ov99_021D2E28

	thumb_func_start ov99_021D2ED8
ov99_021D2ED8: ; 0x021D2ED8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r4, _021D2F9C ; =0x021D4BDC
	add r5, r1, #0
	mov r7, #2
	add r6, #8
_021D2EE4:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #4]
	sub r1, r1, r0
	add r0, r5, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0x44]
	add r0, #0x98
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0x10]
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0xc]
	add r0, #0xb0
	str r1, [r0, #0]
	ldr r0, [r4, #0x10]
	bl sub_0201D2B8
	ldr r2, [r4, #4]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _021D2FA0 ; =0x00000000
	adc r1, r2
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	add r0, r5, #0
	orr r2, r1
	add r0, #0xbc
	str r2, [r0, #0]
	ldr r0, [r4, #0x10]
	bl sub_0201D2C4
	ldr r2, [r4, #8]
	asr r1, r0, #0x1f
	asr r3, r2, #0x1f
	bl sub_020E1F1C
	mov r2, #2
	lsl r2, r2, #0xa
	add r0, r0, r2
	ldr r2, _021D2FA0 ; =0x00000000
	adc r1, r2
	lsr r2, r0, #0xc
	lsl r1, r1, #0x14
	add r0, r5, #0
	add r3, r5, #0
	orr r2, r1
	add r0, #0xc0
	str r2, [r0, #0]
	add r0, r5, #0
	add r2, r5, #0
	ldr r1, [r4, #0]
	add r0, #0xc8
	strh r1, [r0]
	add r1, r5, #0
	add r1, #0x94
	add r2, #0xbc
	add r3, #0xc0
	ldr r0, _021D2FA4 ; =0x000010E0
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	ldr r3, [r3, #0]
	add r1, r1, r2
	add r2, r5, #0
	add r2, #0x98
	ldr r2, [r2, #0]
	ldr r0, [r6, r0]
	add r2, r2, r3
	mov r3, #0x11
	lsl r3, r3, #0x10
	bl sub_0200D650
	ldr r0, _021D2FA4 ; =0x000010E0
	mov r1, #2
	ldr r0, [r6, r0]
	bl sub_0200D6A4
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x54
	add r5, #0x3c
	cmp r7, #3
	ble _021D2EE4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2F9C: .word 0x021D4BDC
_021D2FA0: .word 0x00000000
_021D2FA4: .word 0x000010E0
	thumb_func_end ov99_021D2ED8

	thumb_func_start ov99_021D2FA8
ov99_021D2FA8: ; 0x021D2FA8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	str r1, [sp]
	mov r6, #0
	mov r4, #2
	add r5, #8
_021D2FB6:
	ldr r2, _021D2FD0 ; =0x000010E0
	ldr r1, [sp]
	ldr r2, [r5, r2]
	add r0, r7, #0
	add r3, r6, #0
	bl ov99_021D2FD4
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #1
	cmp r4, #3
	ble _021D2FB6
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2FD0: .word 0x000010E0
	thumb_func_end ov99_021D2FA8

	thumb_func_start ov99_021D2FD4
ov99_021D2FD4: ; 0x021D2FD4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r0, #0x3c
	add r1, #0x94
	mul r0, r3
	add r4, r1, r0
	mov r0, #0x54
	ldr r1, _021D32CC ; =0x021D4BDC
	mul r0, r3
	add r5, r1, r0
	mov r0, #0x34
	ldrsh r0, [r4, r0]
	str r2, [sp]
	cmp r0, #0
	ble _021D2FF8
	sub r0, r0, #1
	strh r0, [r4, #0x34]
	pop {r3, r4, r5, r6, r7, pc}
_021D2FF8:
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #5
	bls _021D3004
	b _021D326C
_021D3004:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D3010: ; jump table
	.short _021D301C - _021D3010 - 2 ; case 0
	.short _021D302A - _021D3010 - 2 ; case 1
	.short _021D30AA - _021D3010 - 2 ; case 2
	.short _021D30D6 - _021D3010 - 2 ; case 3
	.short _021D3196 - _021D3010 - 2 ; case 4
	.short _021D3206 - _021D3010 - 2 ; case 5
_021D301C:
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
_021D302A:
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	ble _021D3042
	ldr r1, [r4, #0x1c]
	ldr r0, [r5, #0x1c]
	sub r1, r1, r0
	str r1, [r4, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	bge _021D3042
	str r0, [r4, #0x1c]
_021D3042:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	add r1, r1, r0
	str r1, [r4, #0x10]
	ldr r0, [r5, #0x18]
	cmp r1, r0
	blt _021D3060
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
_021D3060:
	ldr r6, [r5, #4]
	ldr r0, [r4, #0x10]
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x28]
	ldr r6, [r5, #8]
	ldr r0, [r4, #0x10]
	bl sub_0201D2C4
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x2c]
	b _021D326C
_021D30AA:
	ldr r1, [r4, #0]
	ldr r0, [r4, #0x28]
	add r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x30]
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
_021D30D6:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #0x20]
	add r0, r4, #0
	add r1, r2, r1
	str r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	ldr r1, [r4, #0x24]
	add r0, #0x14
	add r1, r2, r1
	str r1, [r4, #0x18]
	mov r1, #0x5a
	ldr r2, [r4, #0x14]
	lsl r1, r1, #0xe
	cmp r2, r1
	blt _021D30FA
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
_021D30FA:
	mov r0, #0x5a
	ldr r1, [r4, #0x18]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _021D3108
	sub r0, r1, r0
	str r0, [r4, #0x18]
_021D3108:
	ldr r6, [r5, #0x24]
	ldr r0, [r4, #0x14]
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x28]
	ldr r6, [r5, #0x28]
	ldr r0, [r4, #0x18]
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	ldr r0, _021D32D0 ; =0x000010FC
	str r1, [r4, #0x2c]
	ldr r1, [r7, r0]
	ldr r0, _021D32D4 ; =0x00001752
	cmp r1, r0
	bhs _021D315C
	b _021D326C
_021D315C:
	ldr r0, [r5, #0x2c]
	mov r1, #0x14
	bl sub_020E1F6C
	ldr r1, [r4, #0x20]
	sub r0, r1, r0
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x30]
	mov r1, #0x14
	bl sub_020E1F6C
	ldr r1, [r4, #0x24]
	sub r0, r1, r0
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x2c]
	mov r1, #0x14
	bl sub_020E1F6C
	ldr r1, [r4, #0x20]
	cmp r1, r0
	bgt _021D326C
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
	b _021D326C
_021D3196:
	ldr r1, [r4, #0]
	ldr r0, [r4, #0x28]
	add r1, r1, r0
	ldr r0, [r5, #0x34]
	sub r0, r1, r0
	str r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x2c]
	add r0, r1, r0
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r5, #0x3c]
	str r1, [r4, #0x1c]
	ldr r6, [r5, #0x34]
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r3, #2
	mov r2, #0
	lsl r3, r3, #0xa
	add r3, r0, r3
	adc r1, r2
	lsl r0, r1, #0x14
	lsr r1, r3, #0xc
	orr r1, r0
	str r1, [r4, #0x28]
	ldr r6, [r5, #0x38]
	add r0, r2, #0
	bl sub_0201D2C4
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	add r0, r4, #0
	str r1, [r4, #0x2c]
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
_021D3206:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r6, [r5, #0x34]
	bl sub_0201D2C4
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x28]
	ldr r6, [r5, #0x38]
	ldr r0, [r4, #0x10]
	bl sub_0201D2B8
	asr r1, r0, #0x1f
	asr r3, r6, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #0x2c]
	mov r0, #0x2d
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xe
	cmp r1, r0
	blt _021D326C
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
_021D326C:
	mov r0, #0x38
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021D327E
	ldr r0, [sp]
	ldr r1, [r5, #0x4c]
	bl sub_0200D7C0
	b _021D3288
_021D327E:
	ldr r1, [r5, #0x4c]
	ldr r0, [sp]
	neg r1, r1
	bl sub_0200D7C0
_021D3288:
	mov r0, #0x36
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x36]
	ldrsh r1, [r4, r0]
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r1, r0
	blt _021D32AE
	mov r0, #0
	strh r0, [r4, #0x36]
	mov r0, #0x38
	ldrsb r1, [r4, r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x38
	strb r1, [r0]
_021D32AE:
	ldr r1, [r4, #4]
	ldr r0, [r5, #0x48]
	sub r3, r1, r0
	str r3, [r4, #4]
	ldr r2, [r4, #0]
	ldr r1, [r4, #0x28]
	ldr r0, [sp]
	add r1, r2, r1
	ldr r2, [r4, #0x2c]
	add r2, r3, r2
	mov r3, #0x11
	lsl r3, r3, #0x10
	bl sub_0200D650
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D32CC: .word 0x021D4BDC
_021D32D0: .word 0x000010FC
_021D32D4: .word 0x00001752
	thumb_func_end ov99_021D2FD4

	thumb_func_start ov99_021D32D8
ov99_021D32D8: ; 0x021D32D8
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r3, [r4, #4]
	add r5, r0, #0
	add r3, #0x60
	asr r6, r3, #0xb
	str r3, [r4, #4]
	lsr r6, r6, #0x14
	add r6, r3, r6
	ldr r0, [r5, #8]
	mov r1, #2
	mov r2, #3
	asr r3, r6, #0xc
	bl sub_02019184
	ldr r4, [r4, #4]
	ldr r0, [r5, #8]
	asr r3, r4, #0xb
	lsr r3, r3, #0x14
	add r3, r4, r3
	mov r1, #7
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_02019184
	pop {r4, r5, r6, pc}
	thumb_func_end ov99_021D32D8

	thumb_func_start ov99_021D330C
ov99_021D330C: ; 0x021D330C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r1, #0x88
	ldr r7, [r1, #0]
	add r1, r5, #0
	add r1, #0x8c
	ldr r2, [r1, #0]
	mov r1, #2
	lsl r1, r1, #8
	add r3, r2, r1
	add r2, r5, #0
	add r2, #0x8c
	str r3, [r2, #0]
	add r2, r5, #0
	add r2, #0x8c
	ldr r2, [r2, #0]
	lsl r1, r1, #3
	cmp r2, r1
	blt _021D33AC
	mov r1, #0x10
	str r1, [sp, #8]
	add r1, r5, #0
	mov r2, #0
	add r1, #0x8c
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _021D337C
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	add r2, r1, #1
	add r1, r5, #0
	add r1, #0x88
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	cmp r1, #4
	blt _021D33B0
	add r1, r5, #0
	mov r2, #2
	add r1, #0x88
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0x90
	ldr r2, [r1, #0]
	mov r1, #1
	eor r2, r1
	add r1, r5, #0
	add r1, #0x90
	str r2, [r1, #0]
	b _021D33B0
_021D337C:
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	sub r2, r1, #1
	add r1, r5, #0
	add r1, #0x88
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	cmp r1, #0
	bge _021D33B0
	add r1, r5, #0
	mov r2, #1
	add r1, #0x88
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	eor r2, r1
	add r1, r5, #0
	add r1, #0x90
	str r2, [r1, #0]
	b _021D33B0
_021D33AC:
	asr r1, r2, #8
	str r1, [sp, #8]
_021D33B0:
	add r1, r5, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _021D33C4
	add r4, r7, #1
	cmp r4, #4
	blt _021D33CA
	sub r4, r7, #1
	b _021D33CA
_021D33C4:
	sub r4, r7, #1
	bpl _021D33CA
	mov r4, #1
_021D33CA:
	ldr r0, [r0, #0xc]
	mov r1, #1
	bl sub_0200316C
	str r0, [sp, #4]
	lsl r0, r4, #5
	add r4, r5, r0
	add r5, #8
	lsl r0, r7, #5
	add r5, r5, r0
	ldr r0, [sp, #8]
	mov r6, #0
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_021D33E6:
	add r1, r6, #0
	ldrh r0, [r4, #8]
	add r1, #0x20
	lsl r2, r1, #1
	ldr r1, [sp, #4]
	str r0, [sp]
	add r1, r1, r2
	add r0, r5, #0
	mov r2, #1
	add r3, r7, #0
	bl sub_0200393C
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r6, #0x10
	blt _021D33E6
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov99_021D330C

	.rodata


	.global Unk_ov99_021D4BDC
Unk_ov99_021D4BDC: ; 0x021D4BDC
	.incbin "incbin/overlay99_rodata.bin", 0x510, 0xA8

