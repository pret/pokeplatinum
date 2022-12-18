	.include "macros/function.inc"
	.include "include/ov16_0225CBB8.inc"

	

	.text


	thumb_func_start ov16_0225CBB8
ov16_0225CBB8: ; 0x0225CBB8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x18
	bl sub_02018144
	add r1, r0, #0
	str r4, [r1, #0]
	mov r2, #0
	strb r2, [r1, #0x14]
	strb r2, [r1, #0x15]
	ldr r0, _0225CBD8 ; =ov16_02263014
	strb r2, [r1, #0x16]
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_0225CBD8: .word ov16_02263014
	thumb_func_end ov16_0225CBB8

	thumb_func_start ov16_0225CBDC
ov16_0225CBDC: ; 0x0225CBDC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp, #0x24]
	add r6, r1, #0
	add r5, r2, #0
	bl ov16_0223E000
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	bl ov16_0223DF0C
	mov r0, #5
	mov r1, #0x30
	bl sub_02018144
	add r4, r0, #0
	mov r2, #0
	ldr r0, _0225CE00 ; =0x00000195
	strb r2, [r4, #0x12]
	ldrb r0, [r6, r0]
	mov r1, #1
	tst r0, r1
	beq _0225CC32
	mov r0, #2
	strb r0, [r4, #0x13]
	ldr r0, [sp, #0x24]
	bl ov16_0223E020
	str r0, [r4, #0xc]
	ldr r1, _0225CE00 ; =0x00000195
	ldr r0, [r0, #0]
	ldrb r2, [r6, r1]
	mov r1, #1
	and r2, r1
	add r3, r2, #0
	mov r1, #6
	mul r3, r1
	ldr r1, _0225CE04 ; =0x0223B0B8
	mov r2, #0x58
	ldrsh r1, [r1, r3]
	bl sub_0200D4C4
	b _0225CC58
_0225CC32:
	ldr r0, [sp, #0x24]
	add r1, r2, #0
	strb r2, [r4, #0x13]
	bl ov16_0223E020
	str r0, [r4, #0xc]
	ldr r1, _0225CE00 ; =0x00000195
	ldr r0, [r0, #0]
	ldrb r2, [r6, r1]
	mov r1, #1
	and r2, r1
	add r3, r2, #0
	mov r1, #6
	mul r3, r1
	ldr r1, _0225CE04 ; =0x0223B0B8
	mov r2, #0x88
	ldrsh r1, [r1, r3]
	bl sub_0200D4C4
_0225CC58:
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0225CC64
	mov r0, #1
	b _0225CC66
_0225CC64:
	mov r0, #0
_0225CC66:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldrb r2, [r5, #1]
	ldrh r1, [r5, #2]
	ldrb r3, [r4, #0x13]
	lsl r2, r2, #0x1e
	add r0, sp, #0x5c
	lsr r2, r2, #0x1e
	bl sub_02075FB4
	ldr r0, [r5, #4]
	str r0, [sp]
	ldrb r3, [r5, #1]
	ldrh r0, [r5, #2]
	ldrb r2, [r4, #0x13]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl sub_02076648
	str r0, [sp, #0x2c]
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, sp, #0x30
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #2
	bl sub_02078A80
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, sp, #0x30
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #1
	bl sub_02078AA4
	mov r0, #0x69
	lsl r0, r0, #2
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, sp, #0x30
	bl sub_02078AC8
	mov r3, #0x69
	lsl r3, r3, #2
	ldr r0, [r6, r3]
	sub r3, #0xf
	add r1, sp, #0x30
	ldrh r2, [r5, #2]
	ldrb r3, [r6, r3]
	add r1, #3
	bl sub_020789BC
	ldr r1, _0225CE00 ; =0x00000195
	mov r0, #6
	ldrb r2, [r6, r1]
	ldr r3, _0225CE04 ; =0x0223B0B8
	add r7, r2, #0
	mul r7, r0
	ldr r0, _0225CE08 ; =0x0223B0BA
	mov r2, #2
	ldrsh r0, [r0, r7]
	ldrsh r3, [r3, r7]
	str r0, [sp]
	ldr r0, _0225CE0C ; =0x0223B0BC
	ldrsh r0, [r0, r7]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	add r0, sp, #0x30
	ldrsb r2, [r0, r2]
	str r2, [sp, #0xc]
	mov r2, #1
	ldrsb r2, [r0, r2]
	str r2, [sp, #0x10]
	ldrb r0, [r0]
	add r2, sp, #0x5c
	str r0, [sp, #0x14]
	sub r0, r1, #1
	ldrb r0, [r6, r0]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x18]
	add r0, sp, #0x30
	add r0, #3
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	bl ov16_02263B30
	str r0, [r6, #0x20]
	ldr r0, [r6, #0x20]
	str r0, [r4, #8]
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	bne _0225CD46
	mov r3, #0
	str r3, [sp]
	mov r1, #8
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_020086FC
_0225CD46:
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	bne _0225CD86
	ldr r0, [sp, #0x24]
	bl ov16_0223EBEC
	mov r1, #0x40
	tst r0, r1
	beq _0225CD86
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	add r7, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0x2e
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0xc0
	bl sub_02007DEC
	add r2, r7, #0
	ldr r0, [r4, #8]
	mov r1, #1
	sub r2, #0x88
	bl sub_02007DEC
	strh r7, [r4, #0x14]
	b _0225CD92
_0225CD86:
	ldr r0, _0225CE00 ; =0x00000195
	ldrb r0, [r6, r0]
	lsl r1, r0, #2
	ldr r0, _0225CE10 ; =0x0223B0A0
	ldrsh r0, [r0, r1]
	strh r0, [r4, #0x14]
_0225CD92:
	ldr r0, [sp, #0x24]
	str r0, [r4, #0]
	str r6, [r4, #4]
	ldrb r0, [r5]
	strb r0, [r4, #0x10]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r0, #1
	strb r1, [r4, #0x11]
	ldrh r1, [r5, #2]
	strh r1, [r4, #0x16]
	ldrb r1, [r5, #1]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x1b
	add r1, r4, #0
	add r1, #0x2c
	strb r2, [r1]
	ldr r1, [r5, #8]
	str r1, [r4, #0x18]
	ldrb r0, [r6, r0]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #4]
	bl sub_02075BFC
	str r0, [r4, #0x24]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	str r0, [r4, #0x28]
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	bne _0225CDEC
	ldr r0, [sp, #0x24]
	bl ov16_0223EBEC
	mov r1, #0x40
	tst r0, r1
	beq _0225CDEC
	ldr r0, _0225CE14 ; =ov16_0225E894
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	b _0225CDF6
_0225CDEC:
	ldr r0, _0225CE18 ; =ov16_0225E4E8
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
_0225CDF6:
	mov r0, #1
	bl sub_02005454
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225CE00: .word 0x00000195
_0225CE04: .word 0x0223B0B8
_0225CE08: .word 0x0223B0BA
_0225CE0C: .word 0x0223B0BC
_0225CE10: .word 0x0223B0A0
_0225CE14: .word ov16_0225E894
_0225CE18: .word ov16_0225E4E8
	thumb_func_end ov16_0225CBDC

	thumb_func_start ov16_0225CE1C
ov16_0225CE1C: ; 0x0225CE1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl ov16_0223DF0C
	mov r0, #5
	mov r1, #0x9c
	bl sub_02018144
	add r4, r0, #0
	ldr r0, _0225CF68 ; =0x00000195
	ldrb r1, [r6, r0]
	mov r0, #1
	tst r0, r1
	beq _0225CE42
	mov r1, #2
	b _0225CE44
_0225CE42:
	mov r1, #0
_0225CE44:
	add r0, r4, #0
	add r0, #0x84
	strb r1, [r0]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0225CE56
	mov r0, #1
	b _0225CE58
_0225CE56:
	mov r0, #0
_0225CE58:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #1]
	add r3, r4, #0
	add r3, #0x84
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldrb r2, [r5, #1]
	add r0, r4, #0
	ldrh r1, [r5, #2]
	lsl r2, r2, #0x1e
	ldrb r3, [r3]
	add r0, #0x14
	lsr r2, r2, #0x1e
	bl sub_02075FB4
	ldr r0, [r5, #4]
	add r2, r4, #0
	str r0, [sp]
	ldrb r3, [r5, #1]
	add r2, #0x84
	ldrh r0, [r5, #2]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl sub_02076648
	add r1, r4, #0
	add r1, #0x85
	strb r0, [r1]
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #0x90
	bl sub_02078A80
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #0x91
	bl sub_02078AA4
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #0x93
	bl sub_02078AC8
	add r0, r6, #0
	bl ov16_02263B10
	str r7, [r4, #0]
	add r0, r4, #0
	str r6, [r4, #4]
	mov r1, #0
	add r0, #0x83
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x80
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r6, r0]
	add r1, r4, #0
	add r1, #0x81
	strb r2, [r1]
	add r1, r4, #0
	ldrh r2, [r5, #2]
	add r1, #0x86
	add r0, r0, #1
	strh r2, [r1]
	ldrb r1, [r5, #1]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x1b
	add r1, r4, #0
	add r1, #0x97
	strb r2, [r1]
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x82
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, [r5, #0xc]
	add r0, #0x8c
	strb r1, [r0]
	ldr r0, [r5, #4]
	bl sub_02075BFC
	add r1, r4, #0
	add r1, #0x8d
	strb r0, [r1]
	add r0, r4, #0
	ldr r1, [r5, #0x10]
	add r0, #0x8e
	strh r1, [r0]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1f
	add r0, r4, #0
	add r0, #0x92
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	strh r1, [r0]
	mov r0, #1
	bl sub_02005454
	ldr r0, _0225CF6C ; =ov16_0225EA80
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225CF68: .word 0x00000195
_0225CF6C: .word ov16_0225EA80
	thumb_func_end ov16_0225CE1C

	thumb_func_start ov16_0225CF70
ov16_0225CF70: ; 0x0225CF70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov16_0223DF0C
	mov r0, #5
	mov r1, #0x9c
	bl sub_02018144
	add r5, r0, #0
	add r1, r5, #0
	mov r0, #0
	add r1, #0x83
	strb r0, [r1]
	ldr r1, _0225D110 ; =0x00000195
	ldrb r2, [r6, r1]
	mov r1, #1
	tst r1, r2
	beq _0225CFA4
	add r0, r5, #0
	mov r1, #2
	add r0, #0x84
	strb r1, [r0]
	b _0225CFAA
_0225CFA4:
	add r1, r5, #0
	add r1, #0x84
	strb r0, [r1]
_0225CFAA:
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _0225CFB6
	mov r0, #1
	b _0225CFB8
_0225CFB6:
	mov r0, #0
_0225CFB8:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r4, #1]
	add r3, r5, #0
	add r3, #0x84
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	str r0, [sp, #8]
	ldrb r2, [r4, #1]
	add r0, r5, #0
	ldrh r1, [r4, #2]
	lsl r2, r2, #0x1e
	ldrb r3, [r3]
	add r0, #0x14
	lsr r2, r2, #0x1e
	bl sub_02075FB4
	ldr r0, [r4, #4]
	add r2, r5, #0
	str r0, [sp]
	ldrb r3, [r4, #1]
	add r2, #0x84
	ldrh r0, [r4, #2]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl sub_02076648
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r5, #0
	ldrh r2, [r4, #2]
	ldr r0, [r6, r0]
	add r1, #0x90
	bl sub_02078A80
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r5, #0
	ldrh r2, [r4, #2]
	ldr r0, [r6, r0]
	add r1, #0x91
	bl sub_02078AA4
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r5, #0
	ldrh r2, [r4, #2]
	ldr r0, [r6, r0]
	add r1, #0x93
	bl sub_02078AC8
	add r0, r6, #0
	bl ov16_02263B10
	str r7, [r5, #0]
	str r6, [r5, #4]
	add r0, r5, #0
	ldrb r1, [r4]
	add r0, #0x80
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r6, r0]
	add r1, r5, #0
	add r1, #0x81
	strb r2, [r1]
	add r1, r5, #0
	ldrh r2, [r4, #2]
	add r1, #0x86
	add r0, r0, #1
	strh r2, [r1]
	ldrb r1, [r4, #1]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x1b
	add r1, r5, #0
	add r1, #0x97
	strb r2, [r1]
	ldrb r1, [r6, r0]
	add r0, r5, #0
	add r0, #0x82
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #8]
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r5, #0
	ldr r1, [r4, #0xc]
	add r0, #0x8c
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl sub_02075BFC
	add r1, r5, #0
	add r1, #0x8d
	strb r0, [r1]
	add r0, r5, #0
	ldr r1, [r4, #0x10]
	add r0, #0x8e
	strh r1, [r0]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1f
	add r0, r5, #0
	add r0, #0x92
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #0x14]
	add r0, #0x94
	strh r1, [r0]
	add r1, r5, #0
	mov r0, #0
	add r1, #0x96
	strb r0, [r1]
	add r1, r5, #0
	ldr r2, [r4, #0x4c]
	add r1, #0x98
	str r2, [r1, #0]
	mov ip, r4
	add r7, r5, #0
	add r6, r4, #0
	add r1, r5, #0
_0225D0BC:
	mov r2, ip
	add r2, #0x50
	ldrh r3, [r2]
	add r2, r7, #0
	add r2, #0x40
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x58
	ldrb r3, [r2]
	add r2, r5, r0
	add r2, #0x48
	strb r3, [r2]
	add r2, r4, r0
	add r2, #0x5c
	ldrb r3, [r2]
	add r2, r5, r0
	add r2, #0x4c
	strb r3, [r2]
	add r2, r4, r0
	add r2, #0x60
	ldrb r3, [r2]
	add r2, r5, r0
	add r2, #0x50
	strb r3, [r2]
	ldr r2, [r6, #0x64]
	add r0, r0, #1
	str r2, [r1, #0x54]
	mov r2, ip
	add r2, r2, #2
	mov ip, r2
	add r7, r7, #2
	add r6, r6, #4
	add r1, r1, #4
	cmp r0, #4
	blt _0225D0BC
	ldr r0, _0225D114 ; =ov16_0225F0C0
	add r1, r5, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D110: .word 0x00000195
_0225D114: .word ov16_0225F0C0
	thumb_func_end ov16_0225CF70

	thumb_func_start ov16_0225D118
ov16_0225D118: ; 0x0225D118
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x74
	str r2, [sp]
	bl sub_02018144
	add r1, r0, #0
	str r5, [r1, #0]
	str r4, [r1, #4]
	ldr r0, [r4, #0x20]
	add r7, r1, #0
	str r0, [r1, #8]
	ldr r0, [sp]
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x68
	strb r2, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r2, r1, #0
	add r2, #0x69
	add r0, r0, #1
	strb r3, [r2]
	ldrb r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x6a
	strb r2, [r0]
	add r2, r1, #0
	mov r0, #0
	add r2, #0x6b
	strb r0, [r2]
	ldr r2, [sp]
	ldrb r3, [r2, #1]
	add r2, r1, #0
	add r2, #0x6c
	strb r3, [r2]
	ldr r2, [sp]
	ldrh r3, [r2, #2]
	add r2, r1, #0
	add r2, #0x6e
	strh r3, [r2]
	ldr r2, [sp]
	add r3, r1, #0
	ldr r2, [r2, #4]
	str r2, [r1, #0x70]
	ldr r2, [sp]
	mov ip, r2
_0225D17C:
	mov r4, ip
	ldrh r4, [r4, #8]
	strh r4, [r7, #0x28]
	ldr r4, [sp]
	add r7, r7, #2
	add r6, r4, r0
	add r4, r1, r0
	ldrb r5, [r6, #0x10]
	add r4, #0x30
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x14]
	add r4, #0x34
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x18]
	add r4, #0x38
	add r0, r0, #1
	strb r5, [r4]
	ldr r4, [r2, #0x1c]
	add r2, r2, #4
	str r4, [r3, #0x3c]
	mov r4, ip
	add r4, r4, #2
	add r3, r3, #4
	mov ip, r4
	cmp r0, #4
	blt _0225D17C
	ldr r0, _0225D1C0 ; =ov16_0225F764
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D1C0: .word ov16_0225F764
	thumb_func_end ov16_0225D118

	thumb_func_start ov16_0225D1C4
ov16_0225D1C4: ; 0x0225D1C4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	str r7, [r4, #0]
	ldr r0, [r5, #0x20]
	str r0, [r4, #4]
	ldrb r0, [r6]
	strb r0, [r4, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r4, #9]
	ldrb r0, [r5, r0]
	mov r1, #0
	add r3, r1, #0
	strb r0, [r4, #0xa]
	strb r1, [r4, #0xb]
	ldrb r0, [r6, #1]
	strb r0, [r4, #0xc]
	ldrh r0, [r6, #2]
	lsl r2, r0, #1
	ldr r0, _0225D220 ; =0x0226F1AE
	ldrh r0, [r0, r2]
	mov r2, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	bl sub_020086FC
	ldr r0, [r4, #4]
	mov r1, #0x2d
	mov r2, #1
	bl sub_02007DEC
	ldr r0, _0225D224 ; =ov16_0225FA00
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D220: .word 0x0226F1AE
_0225D224: .word ov16_0225FA00
	thumb_func_end ov16_0225D1C4

	thumb_func_start ov16_0225D228
ov16_0225D228: ; 0x0225D228
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x20
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r2, #0
	ldr r0, _0225D34C ; =0x00000195
	strb r2, [r4, #0xe]
	ldrb r0, [r5, r0]
	mov r1, #1
	tst r0, r1
	beq _0225D270
	mov r0, #2
	strb r0, [r4, #0xf]
	add r0, r6, #0
	bl ov16_0223E020
	str r0, [r4, #4]
	ldr r1, _0225D34C ; =0x00000195
	ldr r0, [r0, #0]
	ldrb r2, [r5, r1]
	mov r1, #1
	and r1, r2
	mov r2, #6
	mul r2, r1
	ldr r1, _0225D350 ; =0x0223B0B8
	ldrsh r1, [r1, r2]
	mov r2, #0x58
	bl sub_0200D4C4
	b _0225D294
_0225D270:
	add r0, r6, #0
	add r1, r2, #0
	strb r2, [r4, #0xf]
	bl ov16_0223E020
	str r0, [r4, #4]
	ldr r1, _0225D34C ; =0x00000195
	ldr r0, [r0, #0]
	ldrb r2, [r5, r1]
	mov r1, #1
	and r1, r2
	mov r2, #6
	mul r2, r1
	ldr r1, _0225D350 ; =0x0223B0B8
	ldrsh r1, [r1, r2]
	mov r2, #0x88
	bl sub_0200D4C4
_0225D294:
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _0225D2B6
	add r0, r6, #0
	bl ov16_0223DF0C
	mov r1, #0x10
	tst r0, r1
	beq _0225D2BE
	ldr r0, _0225D34C ; =0x00000195
	ldrb r1, [r5, r0]
	mov r0, #1
	tst r0, r1
	beq _0225D2BE
_0225D2B6:
	ldr r0, _0225D34C ; =0x00000195
	ldrb r0, [r5, r0]
	str r0, [sp, #8]
	b _0225D2C8
_0225D2BE:
	ldr r0, _0225D34C ; =0x00000195
	ldrb r1, [r5, r0]
	mov r0, #1
	and r0, r1
	str r0, [sp, #8]
_0225D2C8:
	mov r1, #0x65
	ldrh r2, [r7, #2]
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	lsl r2, r2, #0x18
	add r0, r6, #0
	lsr r2, r2, #0x18
	bl ov16_02264768
	strh r0, [r7, #2]
	ldr r1, [sp, #8]
	mov r0, #6
	mul r0, r1
	ldr r1, _0225D350 ; =0x0223B0B8
	ldr r3, _0225D34C ; =0x00000195
	ldrsh r1, [r1, r0]
	str r1, [sp]
	ldr r1, _0225D354 ; =0x0223B0BA
	ldrsh r0, [r1, r0]
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	ldrh r2, [r7, #2]
	ldrb r3, [r5, r3]
	add r0, r6, #0
	bl ov16_022643B8
	str r0, [r5, #0x18]
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	lsl r1, r0, #2
	ldr r0, _0225D358 ; =0x0223B0A0
	ldrsh r0, [r0, r1]
	strh r0, [r4, #0x10]
	str r6, [r4, #0]
	ldrb r0, [r7]
	strb r0, [r4, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r0, #1
	strb r1, [r4, #0xd]
	ldrb r0, [r5, r0]
	str r0, [r4, #0x14]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0225D32C
	cmp r0, #2
	bne _0225D33C
_0225D32C:
	add r0, r6, #0
	bl ov16_0223DF00
	mov r1, #3
	mov r2, #2
	mov r3, #0x84
	bl sub_02019184
_0225D33C:
	ldr r0, _0225D35C ; =ov16_0225FA70
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225D34C: .word 0x00000195
_0225D350: .word 0x0223B0B8
_0225D354: .word 0x0223B0BA
_0225D358: .word 0x0223B0A0
_0225D35C: .word ov16_0225FA70
	thumb_func_end ov16_0225D228

	thumb_func_start ov16_0225D360
ov16_0225D360: ; 0x0225D360
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x1c
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4, #0xa]
	str r6, [r4, #0]
	ldrb r1, [r7]
	strb r1, [r4, #8]
	ldrb r1, [r7, #1]
	str r1, [r4, #0x10]
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r2, [r5, r1]
	strb r2, [r4, #9]
	str r5, [r4, #4]
	add r2, r1, #1
	ldrb r3, [r5, r2]
	mov r2, #1
	tst r2, r3
	beq _0225D39A
	mov r1, #2
	strb r1, [r4, #0xb]
	b _0225D3BA
_0225D39A:
	ldrb r1, [r5, r1]
	add r0, r6, #0
	bl ov16_0223E120
	add r2, r0, #0
	mov r0, #0
	strb r0, [r4, #0xb]
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r2, #1]
	add r0, r6, #0
	bl ov16_02264768
	bl sub_020788D0
_0225D3BA:
	str r0, [r4, #0xc]
	ldr r0, _0225D3C8 ; =ov16_0225FD5C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D3C8: .word ov16_0225FD5C
	thumb_func_end ov16_0225D360

	thumb_func_start ov16_0225D3CC
ov16_0225D3CC: ; 0x0225D3CC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl sub_02018144
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #0xa]
	add r2, r4, #0
	str r5, [r1, #0]
	add r2, #0x94
	ldrb r2, [r2]
	strb r2, [r1, #8]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	add r2, r2, #1
	strb r3, [r1, #9]
	str r4, [r1, #4]
	ldrb r3, [r4, r2]
	mov r2, #1
	tst r2, r3
	beq _0225D402
	mov r0, #2
	b _0225D402
_0225D402:
	strb r0, [r1, #0xb]
	ldr r0, _0225D410 ; =ov16_02260284
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_0225D410: .word ov16_02260284
	thumb_func_end ov16_0225D3CC

	thumb_func_start ov16_0225D414
ov16_0225D414: ; 0x0225D414
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov16_0223E000
	mov r0, #5
	mov r1, #0x10
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	ldr r1, _0225D494 ; =0x00000195
	strb r0, [r4, #0xa]
	ldrb r2, [r5, r1]
	mov r1, #1
	tst r1, r2
	beq _0225D43E
	mov r0, #2
	b _0225D43E
_0225D43E:
	strb r0, [r4, #0xb]
	ldr r0, _0225D494 ; =0x00000195
	ldr r2, _0225D498 ; =0x0223B0DC
	ldrb r3, [r5, r0]
	mov r0, #1
	add r1, r3, #0
	and r1, r0
	mov r0, #6
	mul r0, r1
	ldrsh r2, [r2, r0]
	str r2, [sp]
	ldr r2, _0225D49C ; =0x0223B0DE
	ldrsh r0, [r2, r0]
	str r0, [sp, #4]
	ldrh r2, [r6, #2]
	add r0, r7, #0
	bl ov16_022643B8
	str r0, [r5, #0x18]
	str r0, [r4, #4]
	ldr r3, _0225D494 ; =0x00000195
	ldr r2, [r6, #4]
	ldrb r0, [r5, r3]
	lsl r2, r2, #1
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1d
	ldr r0, _0225D4A0 ; =0x0223B0A0
	add r0, r0, r1
	ldrsh r0, [r2, r0]
	add r1, r4, #0
	mov r2, #0
	strh r0, [r4, #0xc]
	str r7, [r4, #0]
	ldrb r0, [r6]
	strb r0, [r4, #8]
	sub r0, r3, #1
	ldrb r0, [r5, r0]
	strb r0, [r4, #9]
	ldr r0, _0225D4A4 ; =ov16_02260384
	bl sub_0200D9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225D494: .word 0x00000195
_0225D498: .word 0x0223B0DC
_0225D49C: .word 0x0223B0DE
_0225D4A0: .word 0x0223B0A0
_0225D4A4: .word ov16_02260384
	thumb_func_end ov16_0225D414

	thumb_func_start ov16_0225D4A8
ov16_0225D4A8: ; 0x0225D4A8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x28
	add r7, r0, #0
	add r5, r2, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_020C4BB8
	mov r0, #0x65
	str r7, [r4, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl ov16_0223DF0C
	add r1, r0, #0
	ldr r0, _0225D568 ; =0x00000195
	ldrb r0, [r6, r0]
	bl ov16_0226825C
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #2
	ldrsh r0, [r5, r0]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #4]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x48
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x1e
	add r0, r4, #0
	add r0, #0x49
	strb r1, [r0]
	mov r1, #0
	str r1, [r4, #0x30]
	ldr r0, [r5, #8]
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x3c]
	add r0, r4, #0
	ldrb r2, [r5, #6]
	add r0, #0x26
	strb r2, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1b
	lsr r2, r0, #0x1b
	add r0, r4, #0
	add r0, #0x4a
	strb r2, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x1f
	add r0, r4, #0
	add r0, #0x4b
	strb r2, [r0]
	add r0, r4, #0
	ldrb r2, [r5, #0x14]
	add r0, #0x4d
	strb r2, [r0]
	add r0, r4, #0
	ldr r2, [r5, #0x10]
	add r0, #0x27
	strb r2, [r0]
	add r0, r4, #0
	bl ov16_02267620
	mov r2, #0
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	mvn r2, r2
	bl ov16_02267084
	mov r2, #0xfa
	ldr r0, _0225D56C ; =ov16_0226040C
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D568: .word 0x00000195
_0225D56C: .word ov16_0226040C
	thumb_func_end ov16_0225D4A8

	thumb_func_start ov16_0225D570
ov16_0225D570: ; 0x0225D570
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r5, #0
	add r4, #0x28
	add r6, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_020C4BB8
	mov r0, #0x65
	str r6, [r4, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r5, #0x94
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #1
	bl ov16_022676A8
	mov r2, #0xfa
	ldr r0, _0225D5B4 ; =ov16_02260480
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225D5B4: .word ov16_02260480
	thumb_func_end ov16_0225D570

	thumb_func_start ov16_0225D5B8
ov16_0225D5B8: ; 0x0225D5B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x3c
	add r7, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x3c
	bl sub_020C4BB8
	mov r2, #0
	strb r2, [r4, #0xa]
	strb r2, [r4, #0xb]
	str r5, [r4, #0]
	ldrb r0, [r7]
	mov r1, #0x65
	lsl r1, r1, #2
	strb r0, [r4, #8]
	ldr r0, [sp]
	add r5, r7, #0
	ldrb r0, [r0, r1]
	add r1, r1, #1
	add r6, r4, #0
	strb r0, [r4, #9]
	ldr r0, [sp]
	ldrb r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x34
	strb r1, [r0]
	ldr r0, [sp]
	add r0, #0x28
	str r0, [r4, #4]
	add r0, r4, #0
	ldrb r1, [r7, #1]
	add r0, #0x23
	strb r1, [r0]
	mov r0, #0x24
	ldrsh r0, [r7, r0]
	strh r0, [r4, #0x36]
	ldrh r0, [r7, #0x26]
	strh r0, [r4, #0x38]
	add r0, r7, #0
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3a
	strb r1, [r0]
	add r0, r7, #0
	add r0, #0x29
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x3b
	strb r1, [r0]
_0225D62A:
	mov r3, #0
_0225D62C:
	add r0, r5, r3
	ldrb r1, [r0, #8]
	add r0, r6, r3
	add r3, r3, #1
	strb r1, [r0, #0x10]
	cmp r3, #6
	blt _0225D62C
	add r2, r2, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r2, #2
	blt _0225D62A
	mov r0, #0
	add r3, r0, #0
_0225D648:
	add r2, r7, r0
	ldrb r1, [r2, #8]
	cmp r1, #2
	bne _0225D656
	add r1, r4, r0
	strb r3, [r1, #0x1c]
	b _0225D65C
_0225D656:
	ldrb r2, [r2, #2]
	add r1, r4, r0
	strb r2, [r1, #0x1c]
_0225D65C:
	add r0, r0, #1
	cmp r0, #6
	blt _0225D648
	mov r3, #0
	add r5, r7, #0
	add r6, r4, #0
_0225D668:
	ldrh r0, [r5, #0x14]
	add r2, r7, r3
	add r5, r5, #2
	strh r0, [r6, #0x24]
	ldrb r1, [r2, #0x1c]
	add r0, r4, r3
	add r0, #0x2c
	strb r1, [r0]
	add r0, r4, r3
	add r2, #0x20
	ldrb r1, [r2]
	add r0, #0x30
	add r3, r3, #1
	add r6, r6, #2
	strb r1, [r0]
	cmp r3, #4
	blt _0225D668
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0225D5B8

	thumb_func_start ov16_0225D698
ov16_0225D698: ; 0x0225D698
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x24
	add r7, r2, #0
	bl sub_02018144
	add r3, r0, #0
	mov r1, #0x65
	mov r4, #0
	add r0, #0x20
	strb r4, [r0]
	ldr r0, [sp]
	str r5, [r3, #0]
	add r0, #0x94
	ldrb r0, [r0]
	lsl r1, r1, #2
	add r5, r7, #0
	strb r0, [r3, #0x1c]
	ldr r0, [sp]
	add r6, r3, #0
	ldrb r0, [r0, r1]
	add r1, r1, #1
	strb r0, [r3, #0x1d]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	strb r0, [r3, #0x1e]
	ldr r0, [sp]
	add r0, #0x28
	str r0, [r3, #4]
	ldrb r0, [r7, #1]
	strb r0, [r3, #0x1f]
_0225D6DA:
	ldrh r0, [r5, #4]
	add r2, r7, r4
	add r1, r3, r4
	strh r0, [r6, #0xc]
	ldrb r0, [r2, #0xc]
	add r4, r4, #1
	add r5, r5, #2
	strb r0, [r1, #0x14]
	ldrb r0, [r2, #0x10]
	add r6, r6, #2
	cmp r4, #4
	strb r0, [r1, #0x18]
	blt _0225D6DA
	ldrh r0, [r7, #2]
	add r1, r3, #0
	mov r2, #0
	strh r0, [r3, #0x22]
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0225D698

	thumb_func_start ov16_0225D708
ov16_0225D708: ; 0x0225D708
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r7, r1, #0
	mov r0, #5
	mov r1, #0x34
	add r5, r2, #0
	bl sub_02018144
	add r6, r0, #0
	mov r0, #0
	strb r0, [r6, #0xf]
	ldr r0, [sp]
	str r0, [r6, #0]
	add r0, r7, #0
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r6, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r7, r0]
	add r0, r0, #1
	strb r1, [r6, #0xd]
	ldrb r0, [r7, r0]
	strb r0, [r6, #0xe]
	ldrh r0, [r5, #2]
	strh r0, [r6, #0x30]
	add r0, r7, #0
	add r0, #0x28
	str r0, [r6, #4]
	add r0, r6, #0
	ldrb r1, [r5, #1]
	add r0, #0x32
	strb r1, [r0]
	ldr r0, [sp]
	add r1, sp, #4
	bl ov16_0223F87C
	ldr r0, [sp]
	bl ov16_0223DF1C
	add r4, r0, #0
	ldr r0, [sp]
	bl ov16_0223DF0C
	mov r0, #0
	cmp r4, #0
	ble _0225D784
	add r1, r6, #0
_0225D76A:
	ldrh r2, [r5, #4]
	add r0, r0, #1
	strh r2, [r1, #0x10]
	ldrh r2, [r5, #6]
	strh r2, [r1, #0x12]
	ldrh r2, [r5, #8]
	strh r2, [r1, #0x14]
	ldrh r2, [r5, #0xa]
	add r5, #8
	strh r2, [r1, #0x16]
	add r1, #8
	cmp r0, r4
	blt _0225D76A
_0225D784:
	ldr r0, [r7, #8]
	add r1, r6, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0225D708

	thumb_func_start ov16_0225D794
ov16_0225D794: ; 0x0225D794
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x34
	str r2, [sp, #4]
	bl sub_02018144
	add r4, r0, #0
	mov r0, #5
	mov r1, #0x34
	bl sub_02018144
	str r0, [r4, #8]
	mov r0, #5
	mov r1, #0x38
	bl sub_02018144
	ldr r1, [r4, #8]
	str r0, [r1, #4]
	mov r0, #5
	bl sub_02079FF4
	ldr r1, [r4, #8]
	mov r6, #0
	ldr r1, [r1, #4]
	ldr r3, [sp, #4]
	str r0, [r1, #0]
	strb r6, [r4, #0xe]
	str r5, [r4, #0]
	ldr r0, [sp, #4]
	mov r1, #0x65
	ldrb r0, [r0]
	lsl r1, r1, #2
	add r5, r4, #0
	strb r0, [r4, #0xc]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	add r1, r1, #1
	strb r0, [r4, #0xd]
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	strb r0, [r4, #0xf]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #1]
	strb r0, [r4, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x15]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #3]
	strb r0, [r4, #0x16]
_0225D7FE:
	ldr r0, [sp, #4]
	ldr r1, [r4, #8]
	add r7, r0, r6
	ldrb r0, [r7, #4]
	add r1, r1, r6
	mov r2, #0
	strb r0, [r1, #0xc]
_0225D80C:
	add r0, r3, r2
	ldrb r1, [r0, #8]
	add r0, r5, r2
	add r2, r2, #1
	strb r1, [r0, #0x18]
	cmp r2, #6
	blt _0225D80C
	add r7, #0x20
	ldrb r1, [r7]
	add r0, r4, r6
	add r0, #0x30
	add r6, r6, #1
	strb r1, [r0]
	add r3, r3, #6
	add r5, r5, #6
	cmp r6, #4
	blt _0225D7FE
	ldr r0, [sp]
	add r1, r4, #0
	ldr r0, [r0, #0xc]
	mov r2, #0
	bl sub_0200D9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0225D794

	thumb_func_start ov16_0225D840
ov16_0225D840: ; 0x0225D840
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r1, [sp]
	mov r0, #5
	mov r1, #0x34
	add r7, r2, #0
	bl sub_02018144
	add r2, r0, #0
	mov r3, #0
	strb r3, [r2, #0xa]
	str r4, [r2, #0]
	ldrb r0, [r7]
	add r5, r7, #0
	add r6, r2, #0
	strb r0, [r2, #8]
	ldrb r0, [r7, #1]
	strb r0, [r2, #9]
	ldrb r0, [r7, #2]
	strb r0, [r2, #0xb]
	ldr r0, [r7, #0x20]
	str r0, [r2, #0x10]
	ldrb r0, [r7, #3]
	strb r0, [r2, #0x16]
	add r0, r7, #0
	strh r3, [r2, #0x14]
	add r0, #0x24
	ldrb r0, [r0]
	strb r0, [r2, #0x18]
_0225D87A:
	add r0, r7, r3
	ldrb r1, [r0, #4]
	add r0, r2, r3
	mov r4, #0
	strb r1, [r0, #0xc]
_0225D884:
	add r0, r5, r4
	ldrb r1, [r0, #8]
	add r0, r6, r4
	add r4, r4, #1
	strb r1, [r0, #0x1c]
	cmp r4, #6
	blt _0225D884
	add r3, r3, #1
	add r5, r5, #6
	add r6, r6, #6
	cmp r3, #4
	blt _0225D87A
	ldr r0, [sp]
	add r1, r2, #0
	ldr r0, [r0, #0x10]
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0225D840

	thumb_func_start ov16_0225D8AC
ov16_0225D8AC: ; 0x0225D8AC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x1c
	add r4, r2, #0
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r6, [r1, #0]
	ldrb r0, [r4]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, #0xd]
	add r0, r5, #0
	add r0, #0x28
	str r0, [r1, #4]
	ldrh r0, [r4, #2]
	str r0, [r1, #0x10]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xf]
	ldr r0, [r4, #4]
	strh r0, [r1, #0x18]
	ldr r0, [r4, #8]
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x14]
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0225D8AC

	thumb_func_start ov16_0225D8F0
ov16_0225D8F0: ; 0x0225D8F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ov16_0223E060
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r6, [r4, #0]
	ldrb r0, [r5]
	mov r1, #0x65
	lsl r1, r1, #2
	strb r0, [r4, #4]
	ldrb r0, [r7, r1]
	strb r0, [r4, #5]
	ldrh r2, [r5, #2]
	lsl r0, r2, #1
	add r2, r2, r0
	add r0, sp, #4
	strh r2, [r0, #2]
	mov r2, #2
	strb r2, [r0, #1]
	ldrb r0, [r5, #1]
	ldrb r1, [r7, r1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [sp, #8]
	add r0, r6, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	add r2, sp, #4
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225D954 ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D954: .word ov16_02262F7C
	thumb_func_end ov16_0225D8F0

	thumb_func_start ov16_0225D958
ov16_0225D958: ; 0x0225D958
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	bl ov16_0223E05C
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	add r0, r6, #0
	str r5, [r4, #0]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225D9A4 ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D9A4: .word ov16_02262F7C
	thumb_func_end ov16_0225D958

	thumb_func_start ov16_0225D9A8
ov16_0225D9A8: ; 0x0225D9A8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x70
	add r4, r2, #0
	bl sub_02018144
	add r6, r0, #0
	mov r1, #0
	add r0, #0x6a
	strb r1, [r0]
	str r7, [r6, #0]
	add r0, r5, #0
	str r5, [r6, #4]
	add r0, #0x94
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x68
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	add r0, r6, #0
	add r0, #0x69
	strb r1, [r0]
	add r0, r7, #0
	bl ov16_0223E008
	add r3, r6, #0
	str r0, [r6, #0xc]
	add r7, r4, #0
	add r3, #0x10
	mov r2, #0xb
_0225D9EC:
	ldmia r7!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D9EC
	ldr r0, [r5, #0x20]
	str r0, [r6, #8]
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _0225DA0C
	ldr r0, [r4, #0x50]
	cmp r0, #0x19
	bne _0225DA0C
	mov r0, #0x1a
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
_0225DA0C:
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _0225DA20
	ldr r0, [r4, #0x50]
	cmp r0, #0x1a
	bne _0225DA20
	mov r0, #0x1a
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_0225DA20:
	ldrh r0, [r4, #2]
	add r1, r6, #0
	add r1, #0x6c
	str r0, [sp]
	add r0, r6, #0
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x50]
	add r0, #0x6b
	bl ov16_022645B8
	ldr r0, _0225DA40 ; =ov16_022626C0
	add r1, r6, #0
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225DA40: .word ov16_022626C0
	thumb_func_end ov16_0225D9A8

	thumb_func_start ov16_0225DA44
ov16_0225DA44: ; 0x0225DA44
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0xc
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #9]
	str r5, [r1, #0]
	ldr r0, [r4, #0x20]
	str r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #8]
	ldr r0, _0225DA70 ; =ov16_0226292C
	strb r2, [r1, #0xa]
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225DA70: .word ov16_0226292C
	thumb_func_end ov16_0225DA44

	thumb_func_start ov16_0225DA74
ov16_0225DA74: ; 0x0225DA74
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	add r5, r2, #0
	cmp r0, #0
	bne _0225DA86
	bl sub_02022974
_0225DA86:
	add r4, r6, #0
	add r4, #0x28
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_020C4CF4
	str r7, [r4, #0xc]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl ov16_0223DF0C
	add r1, r0, #0
	ldr r0, _0225DAF4 ; =0x00000195
	ldrb r0, [r6, r0]
	bl ov16_0226825C
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	mov r0, #2
	ldrsh r0, [r5, r0]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #4]
	str r0, [r4, #0x2c]
	ldr r0, [r5, #8]
	str r0, [r4, #0x30]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x48
	strb r1, [r0]
	ldr r1, [r5, #8]
	ldr r0, _0225DAF8 ; =0x00007FFF
	cmp r1, r0
	bne _0225DAE4
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
_0225DAE4:
	mov r2, #0xfa
	ldr r0, _0225DAFC ; =ov16_02262988
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225DAF4: .word 0x00000195
_0225DAF8: .word 0x00007FFF
_0225DAFC: .word ov16_02262988
	thumb_func_end ov16_0225DA74

	thumb_func_start ov16_0225DB00
ov16_0225DB00: ; 0x0225DB00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	ldr r0, [r6, #0x2c]
	add r5, r2, #0
	cmp r0, #0
	bne _0225DB12
	bl sub_02022974
_0225DB12:
	add r4, r6, #0
	add r4, #0x28
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl sub_020C4CF4
	str r7, [r4, #0xc]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r6, r0]
	add r1, r4, #0
	add r1, #0x24
	strb r2, [r1]
	ldr r1, [r5, #4]
	add r0, r0, #1
	str r1, [r4, #0x38]
	ldr r1, [r5, #0xc]
	str r1, [r4, #0x3c]
	ldr r2, [r5, #8]
	ldr r1, [r4, #0x38]
	sub r1, r2, r1
	str r1, [r4, #0x40]
	ldrb r0, [r6, r0]
	cmp r0, #0
	bne _0225DB5E
	mov r2, #0xfa
	ldr r0, _0225DB70 ; =ov16_022629DC
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_0225DB5E:
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x24
	add r4, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r4]
	bl ov16_02266ABC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225DB70: .word ov16_022629DC
	thumb_func_end ov16_0225DB00

	thumb_func_start ov16_0225DB74
ov16_0225DB74: ; 0x0225DB74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x74
	str r2, [sp]
	bl sub_02018144
	add r1, r0, #0
	ldr r0, _0225DC44 ; =0x00000195
	ldrb r2, [r4, r0]
	mov r0, #1
	tst r0, r2
	beq _0225DB94
	mov r2, #2
	b _0225DB96
_0225DB94:
	mov r2, #0
_0225DB96:
	add r0, r1, #0
	add r0, #0x67
	strb r2, [r0]
	add r2, r1, #0
	mov r0, #0
	add r2, #0x66
	strb r0, [r2]
	str r5, [r1, #0]
	ldr r2, [sp]
	str r4, [r1, #4]
	ldrb r3, [r2]
	add r2, r1, #0
	add r2, #0x64
	strb r3, [r2]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r4, r2]
	add r2, r1, #0
	add r2, #0x65
	strb r3, [r2]
	ldr r2, [r4, #0x20]
	add r7, r1, #0
	str r2, [r1, #8]
	ldr r2, [sp]
	ldrh r3, [r2, #2]
	add r2, r1, #0
	add r2, #0x68
	strh r3, [r2]
	ldr r2, [sp]
	ldrb r3, [r2, #1]
	add r2, r1, #0
	add r2, #0x6a
	strb r3, [r2]
	ldr r2, [sp]
	ldrb r3, [r2, #8]
	add r2, r1, #0
	add r2, #0x6b
	strb r3, [r2]
	ldr r2, [sp]
	ldr r2, [r2, #4]
	str r2, [r1, #0x6c]
	ldr r2, [sp]
	ldrb r3, [r2, #9]
	add r2, r1, #0
	add r2, #0x70
	strh r3, [r2]
	ldr r2, [sp]
	ldrb r3, [r2, #0xa]
	add r2, r1, #0
	add r2, #0x72
	strh r3, [r2]
	ldr r2, [sp]
	add r3, r1, #0
	mov ip, r2
_0225DC02:
	mov r4, ip
	ldrh r4, [r4, #0xc]
	strh r4, [r7, #0x24]
	ldr r4, [sp]
	add r7, r7, #2
	add r6, r4, r0
	add r4, r1, r0
	ldrb r5, [r6, #0x14]
	add r4, #0x2c
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x18]
	add r4, #0x30
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x1c]
	add r4, #0x34
	add r0, r0, #1
	strb r5, [r4]
	ldr r4, [r2, #0x20]
	add r2, r2, #4
	str r4, [r3, #0x38]
	mov r4, ip
	add r4, r4, #2
	add r3, r3, #4
	mov ip, r4
	cmp r0, #4
	blt _0225DC02
	ldr r0, _0225DC48 ; =ov16_02262A9C
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225DC44: .word 0x00000195
_0225DC48: .word ov16_02262A9C
	thumb_func_end ov16_0225DB74

	thumb_func_start ov16_0225DC4C
ov16_0225DC4C: ; 0x0225DC4C
	push {r3, r4, r5, lr}
	add r5, r2, #0
	ldr r2, _0225DC78 ; =0x00000195
	mov r4, #1
	ldrb r2, [r1, r2]
	tst r2, r4
	beq _0225DC5E
	mov r4, #0x75
	b _0225DC60
_0225DC5E:
	sub r4, #0x76
_0225DC60:
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldrb r2, [r5]
	bl ov16_02266ABC
	ldrh r0, [r5, #2]
	add r1, r4, #0
	bl sub_02005728
	pop {r3, r4, r5, pc}
	nop
_0225DC78: .word 0x00000195
	thumb_func_end ov16_0225DC4C

	thumb_func_start ov16_0225DC7C
ov16_0225DC7C: ; 0x0225DC7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #6]
	add r0, r4, #0
	str r5, [r1, #0]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #5]
	ldr r0, _0225DCAC ; =ov16_02262D28
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_0225DCAC: .word ov16_02262D28
	thumb_func_end ov16_0225DC7C

	thumb_func_start ov16_0225DCB0
ov16_0225DCB0: ; 0x0225DCB0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x68
	str r2, [sp]
	bl sub_02018144
	add r1, r0, #0
	str r5, [r1, #0]
	ldr r0, [sp]
	str r4, [r1, #4]
	ldrb r2, [r0]
	add r0, r1, #0
	add r0, #0x60
	strb r2, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r4, r0]
	add r0, r1, #0
	add r0, #0x61
	strb r2, [r0]
	add r2, r1, #0
	mov r0, #0
	add r2, #0x62
	strb r0, [r2]
	ldr r2, [sp]
	add r7, r1, #0
	ldrb r3, [r2, #1]
	add r2, r1, #0
	add r2, #0x63
	strb r3, [r2]
	ldr r2, [sp]
	add r3, r1, #0
	ldrb r2, [r2, #2]
	str r2, [r1, #0x64]
	ldr r2, [sp]
	mov ip, r2
_0225DCFC:
	mov r4, ip
	ldrh r4, [r4, #4]
	strh r4, [r7, #0x20]
	ldr r4, [sp]
	add r7, r7, #2
	add r6, r4, r0
	add r4, r1, r0
	ldrb r5, [r6, #0xc]
	add r4, #0x28
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x10]
	add r4, #0x2c
	strb r5, [r4]
	add r4, r1, r0
	ldrb r5, [r6, #0x14]
	add r4, #0x30
	add r0, r0, #1
	strb r5, [r4]
	ldr r4, [r2, #0x18]
	add r2, r2, #4
	str r4, [r3, #0x34]
	mov r4, ip
	add r4, r4, #2
	add r3, r3, #4
	mov ip, r4
	cmp r0, #4
	blt _0225DCFC
	ldr r0, _0225DD40 ; =ov16_02262DC4
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225DD40: .word ov16_02262DC4
	thumb_func_end ov16_0225DCB0

	thumb_func_start ov16_0225DD44
ov16_0225DD44: ; 0x0225DD44
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r2, #0
	cmp r0, #0
	bne _0225DD56
	bl sub_02022974
_0225DD56:
	ldrb r1, [r4, #1]
	add r0, r5, #0
	add r0, #0x72
	strb r1, [r0]
	add r0, r5, #0
	mov r2, #1
	ldr r1, [r5, #0x50]
	add r0, #0x28
	lsl r2, r2, #8
	bl ov16_02267084
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl ov16_02266ABC
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0225DD44

	thumb_func_start ov16_0225DD7C
ov16_0225DD7C: ; 0x0225DD7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	add r6, r0, #0
	add r7, r2, #0
	bl ov16_0223E0D8
	str r0, [sp, #4]
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r6, [r4, #0]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r4, #5]
	add r0, r6, #0
	bl ov16_0223EDF0
	str r0, [sp]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r2, [r5, r2]
	ldrb r3, [r7, #1]
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl ov16_0223F9FC
	strb r0, [r4, #6]
	ldr r0, _0225DDD4 ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225DDD4: .word ov16_02262F7C
	thumb_func_end ov16_0225DD7C

	thumb_func_start ov16_0225DDD8
ov16_0225DDD8: ; 0x0225DDD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl ov16_02263C1C
	add r0, r5, #0
	bl ov16_0223E05C
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225DE2C ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225DE2C: .word ov16_02262F7C
	thumb_func_end ov16_0225DDD8

	thumb_func_start ov16_0225DE30
ov16_0225DE30: ; 0x0225DE30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl ov16_02263CF0
	add r0, r5, #0
	bl ov16_0223E05C
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225DE84 ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225DE84: .word ov16_02262F7C
	thumb_func_end ov16_0225DE30

	thumb_func_start ov16_0225DE88
ov16_0225DE88: ; 0x0225DE88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl ov16_02263DD0
	add r0, r5, #0
	bl ov16_0223E05C
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	mov r0, #0x22
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225DED8 ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225DED8: .word ov16_02262F7C
	thumb_func_end ov16_0225DE88

	thumb_func_start ov16_0225DEDC
ov16_0225DEDC: ; 0x0225DEDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	add r3, sp, #4
	add r6, r1, #0
	add r7, r2, #0
	bl ov16_02263E7C
	add r0, r5, #0
	bl ov16_0223E05C
	str r0, [sp]
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	ldrb r0, [r7]
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r5, #0
	add r2, sp, #4
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225DF30 ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225DF30: .word ov16_02262F7C
	thumb_func_end ov16_0225DEDC

	thumb_func_start ov16_0225DF34
ov16_0225DF34: ; 0x0225DF34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0xc
	bl sub_02018144
	add r1, r0, #0
	add r0, r4, #0
	str r5, [r1, #0]
	add r0, #0x94
	ldrb r0, [r0]
	mov r2, #0
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r4, #0x28
	strb r0, [r1, #9]
	strb r2, [r1, #0xa]
	ldr r0, _0225DF68 ; =ov16_02262F30
	str r4, [r1, #4]
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	nop
_0225DF68: .word ov16_02262F30
	thumb_func_end ov16_0225DF34

	thumb_func_start ov16_0225DF6C
ov16_0225DF6C: ; 0x0225DF6C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _0225E000 ; =0x00000196
	add r4, r2, #0
	ldrb r2, [r5, r1]
	add r6, r0, #0
	cmp r2, #0
	bne _0225DFBE
	bl ov16_0223E05C
	str r0, [sp]
	mov r0, #5
	mov r1, #0xc
	bl sub_02018144
	add r7, r0, #0
	str r6, [r7, #0]
	ldrb r0, [r4]
	strb r0, [r7, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r7, #5]
	mov r0, #0
	strb r0, [r7, #7]
	add r0, r6, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r4, #4
	bl ov16_0223FB24
	strb r0, [r7, #6]
	ldr r0, _0225E004 ; =ov16_02262FC0
	add r1, r7, #0
	mov r2, #0
	bl sub_0200D9E8
	pop {r3, r4, r5, r6, r7, pc}
_0225DFBE:
	cmp r2, #1
	bne _0225DFDA
	sub r1, r1, #2
	ldrb r1, [r5, r1]
	bl ov16_022661B0
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl ov16_02266ABC
	pop {r3, r4, r5, r6, r7, pc}
_0225DFDA:
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	bne _0225DFF0
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	add r0, r6, #0
	bl ov16_022661B0
_0225DFF0:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl ov16_02266ABC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E000: .word 0x00000196
_0225E004: .word ov16_02262FC0
	thumb_func_end ov16_0225DF6C

	thumb_func_start ov16_0225E008
ov16_0225E008: ; 0x0225E008
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r6, #0
	add r4, #0x28
	add r7, r0, #0
	add r5, r2, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_020C4BB8
	mov r0, #0x65
	str r7, [r4, #0xc]
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x24
	strb r1, [r0]
	add r0, r7, #0
	bl ov16_0223DF0C
	add r1, r0, #0
	ldr r0, _0225E0B8 ; =0x00000195
	ldrb r0, [r6, r0]
	bl ov16_0226825C
	add r1, r4, #0
	add r1, #0x25
	strb r0, [r1]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x4c
	mov r2, #0
	strb r1, [r0]
	mov r0, #2
	ldrsh r0, [r5, r0]
	str r0, [r4, #0x28]
	ldrh r0, [r5, #4]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	ldrb r1, [r5, #1]
	add r0, #0x48
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x19
	lsr r1, r0, #0x1e
	add r0, r4, #0
	add r0, #0x49
	strb r1, [r0]
	str r2, [r4, #0x30]
	ldr r0, [r5, #8]
	sub r2, #0x21
	str r0, [r4, #0x38]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x3c]
	add r0, r4, #0
	ldrb r1, [r5, #6]
	add r0, #0x26
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	add r0, r4, #0
	add r0, #0x4a
	strb r1, [r0]
	ldrb r0, [r5, #7]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x1f
	add r0, r4, #0
	add r0, #0x4b
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #0x10]
	add r0, #0x27
	strb r1, [r0]
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	bl ov16_02267084
	add r1, r4, #0
	ldr r0, [r4, #0xc]
	add r1, #0x24
	add r4, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r4]
	bl ov16_02266ABC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E0B8: .word 0x00000195
	thumb_func_end ov16_0225E008

	thumb_func_start ov16_0225E0BC
ov16_0225E0BC: ; 0x0225E0BC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xa]
	str r5, [r1, #0]
	ldrb r0, [r4]
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r1, #9]
	ldrh r0, [r4, #2]
	strh r0, [r1, #0xc]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xe]
	ldr r0, _0225E0F0 ; =ov16_022633A4
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225E0F0: .word ov16_022633A4
	thumb_func_end ov16_0225E0BC

	thumb_func_start ov16_0225E0F4
ov16_0225E0F4: ; 0x0225E0F4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xa]
	str r6, [r1, #0]
	ldr r0, [r5, #0x20]
	str r0, [r1, #4]
	ldrb r0, [r4]
	strb r0, [r1, #8]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	strb r0, [r1, #9]
	ldrb r0, [r4, #1]
	strb r0, [r1, #0xb]
	strb r2, [r1, #0xc]
	ldrb r0, [r4, #2]
	strb r0, [r1, #0xd]
	ldr r0, _0225E130 ; =ov16_022634DC
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_0225E130: .word ov16_022634DC
	thumb_func_end ov16_0225E0F4

	thumb_func_start ov16_0225E134
ov16_0225E134: ; 0x0225E134
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl sub_02018144
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #7]
	str r6, [r1, #0]
	ldrb r2, [r4]
	strb r2, [r1, #4]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r5, r2]
	add r2, r2, #1
	strb r3, [r1, #5]
	ldrb r2, [r5, r2]
	strb r2, [r1, #6]
_0225E15E:
	add r2, r4, r0
	ldrb r3, [r2, #2]
	add r2, r1, r0
	add r0, r0, #1
	strb r3, [r2, #8]
	cmp r0, #6
	blt _0225E15E
	ldr r0, _0225E178 ; =ov16_0226354C
	mov r2, #0
	strb r2, [r1, #0xe]
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225E178: .word ov16_0226354C
	thumb_func_end ov16_0225E134

	thumb_func_start ov16_0225E17C
ov16_0225E17C: ; 0x0225E17C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #7]
	str r5, [r1, #0]
	ldrb r0, [r6]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r0, r0, #1
	strb r3, [r1, #5]
	ldrb r0, [r4, r0]
	strb r0, [r1, #6]
	ldr r0, _0225E1B0 ; =ov16_02263604
	strb r2, [r1, #0xe]
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0225E1B0: .word ov16_02263604
	thumb_func_end ov16_0225E17C

	thumb_func_start ov16_0225E1B4
ov16_0225E1B4: ; 0x0225E1B4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r4, r2, #0
	bl sub_02018144
	add r1, r0, #0
	mov r0, #0
	strb r0, [r1, #7]
	str r6, [r1, #0]
	ldrb r2, [r4]
	strb r2, [r1, #4]
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r3, [r5, r2]
	add r2, r2, #1
	strb r3, [r1, #5]
	ldrb r2, [r5, r2]
	strb r2, [r1, #6]
_0225E1DE:
	add r2, r4, r0
	ldrb r3, [r2, #2]
	add r2, r1, r0
	add r0, r0, #1
	strb r3, [r2, #8]
	cmp r0, #6
	blt _0225E1DE
	mov r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _0225E1FC ; =ov16_0226354C
	mov r2, #0
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_0225E1FC: .word ov16_0226354C
	thumb_func_end ov16_0225E1B4

	thumb_func_start ov16_0225E200
ov16_0225E200: ; 0x0225E200
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	add r6, r2, #0
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #7]
	str r5, [r1, #0]
	ldrb r0, [r6]
	strb r0, [r1, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r3, [r4, r0]
	add r0, r0, #1
	strb r3, [r1, #5]
	ldrb r0, [r4, r0]
	strb r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xe]
	ldr r0, _0225E238 ; =ov16_02263604
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_0225E238: .word ov16_02263604
	thumb_func_end ov16_0225E200

	thumb_func_start ov16_0225E23C
ov16_0225E23C: ; 0x0225E23C
	push {r4, r5, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r1, _0225E28C ; =0x00000196
	add r5, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _0225E27A
	bl ov16_0223E05C
	add r1, r0, #0
	ldr r2, _0225E290 ; =0x0000039B
	add r0, sp, #0
	strh r2, [r0, #2]
	mov r3, #0
	strb r3, [r0, #1]
	add r0, r5, #0
	add r2, sp, #0
	bl ov16_0223FB24
	add r0, r5, #0
	mov r1, #0
	bl ov16_0223DF04
	mov r1, #1
	bl sub_0200E7FC
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_0223F2A4
_0225E27A:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	add r0, r5, #0
	mov r2, #0x37
	bl ov16_02266ABC
	add sp, #0x24
	pop {r4, r5, pc}
	; .align 2, 0
_0225E28C: .word 0x00000196
_0225E290: .word 0x0000039B
	thumb_func_end ov16_0225E23C

	thumb_func_start ov16_0225E294
ov16_0225E294: ; 0x0225E294
	push {r4, r5, r6, lr}
	sub sp, #0x50
	mov r3, #0x65
	add r4, r1, #0
	lsl r3, r3, #2
	add r6, r2, #0
	ldrb r3, [r4, r3]
	add r1, r6, #0
	add r2, sp, #0
	add r5, r0, #0
	bl ov16_02264530
	add r0, sp, #0
	mov r1, #5
	bl ov12_022382BC
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldrb r2, [r6]
	add r0, r5, #0
	bl ov16_02266ABC
	add sp, #0x50
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0225E294

	thumb_func_start ov16_0225E2C8
ov16_0225E2C8: ; 0x0225E2C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r5, [r1, #0]
	add r0, r4, #0
	str r4, [r1, #4]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x20]
	str r0, [r1, #8]
	ldr r0, _0225E2FC ; =ov16_02263688
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225E2FC: .word ov16_02263688
	thumb_func_end ov16_0225E2C8

	thumb_func_start ov16_0225E300
ov16_0225E300: ; 0x0225E300
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #5
	mov r1, #0x10
	bl sub_02018144
	add r1, r0, #0
	mov r2, #0
	strb r2, [r1, #0xe]
	str r5, [r1, #0]
	add r0, r4, #0
	str r4, [r1, #4]
	add r0, #0x94
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	strb r0, [r1, #0xd]
	ldr r0, [r4, #0x20]
	str r0, [r1, #8]
	ldr r0, _0225E334 ; =ov16_022636D4
	bl sub_0200D9E8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0225E334: .word ov16_022636D4
	thumb_func_end ov16_0225E300

	thumb_func_start ov16_0225E338
ov16_0225E338: ; 0x0225E338
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl ov16_022641B4
	add r0, r5, #0
	bl ov16_0223E05C
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	mov r0, #0x3b
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225E388 ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E388: .word ov16_02262F7C
	thumb_func_end ov16_0225E338

	thumb_func_start ov16_0225E38C
ov16_0225E38C: ; 0x0225E38C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r3, sp, #0
	add r6, r1, #0
	bl ov16_02264270
	add r0, r5, #0
	bl ov16_0223E05C
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	mov r0, #0x3c
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225E3DC ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E3DC: .word ov16_02262F7C
	thumb_func_end ov16_0225E38C

	thumb_func_start ov16_0225E3E0
ov16_0225E3E0: ; 0x0225E3E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r2, sp, #0
	add r6, r1, #0
	bl ov16_02264360
	add r0, r5, #0
	bl ov16_0223E05C
	add r7, r0, #0
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r4, r0, #0
	str r5, [r4, #0]
	mov r0, #0x3d
	strb r0, [r4, #4]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	strb r0, [r4, #5]
	add r0, r5, #0
	bl ov16_0223EDF0
	add r3, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #0
	bl ov16_0223FB24
	strb r0, [r4, #6]
	ldr r0, _0225E430 ; =ov16_02262F7C
	add r1, r4, #0
	mov r2, #0
	bl sub_0200D9E8
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0225E430: .word ov16_02262F7C
	thumb_func_end ov16_0225E3E0

	thumb_func_start ov16_0225E434
ov16_0225E434: ; 0x0225E434
	push {r4, r5, r6, lr}
	sub sp, #0x50
	mov r3, #0x65
	add r4, r1, #0
	lsl r3, r3, #2
	add r6, r2, #0
	ldrb r3, [r4, r3]
	add r1, r6, #0
	add r2, sp, #0
	add r5, r0, #0
	bl ov16_02264530
	add r0, sp, #0
	mov r1, #5
	bl ov12_02238390
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	ldrb r2, [r6]
	add r0, r5, #0
	bl ov16_02266ABC
	add sp, #0x50
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0225E434

	thumb_func_start ov16_0225E468
ov16_0225E468: ; 0x0225E468
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	ldr r0, _0225E4B8 ; =0x00000195
	mov r1, #1
	ldrb r0, [r5, r0]
	add r4, r2, #0
	tst r0, r1
	beq _0225E47E
	mov r1, #0x75
	b _0225E480
_0225E47E:
	sub r1, #0x76
_0225E480:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225E490
	cmp r0, #1
	beq _0225E4A0
	cmp r0, #2
	beq _0225E498
	b _0225E4A6
_0225E490:
	ldr r0, _0225E4BC ; =0x000006FE
	bl sub_02005728
	b _0225E4A6
_0225E498:
	ldr r0, _0225E4C0 ; =0x000006FC
	bl sub_02005728
	b _0225E4A6
_0225E4A0:
	ldr r0, _0225E4C4 ; =0x000006FD
	bl sub_02005728
_0225E4A6:
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl ov16_02266ABC
	pop {r4, r5, r6, pc}
	nop
_0225E4B8: .word 0x00000195
_0225E4BC: .word 0x000006FE
_0225E4C0: .word 0x000006FC
_0225E4C4: .word 0x000006FD
	thumb_func_end ov16_0225E468

	thumb_func_start ov16_0225E4C8
ov16_0225E4C8: ; 0x0225E4C8
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	ldrh r0, [r4, #2]
	add r5, r1, #0
	bl sub_0200549C
	mov r1, #0x65
	lsl r1, r1, #2
	ldrb r1, [r5, r1]
	ldrb r2, [r4]
	add r0, r6, #0
	bl ov16_02266ABC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0225E4C8

	thumb_func_start ov16_0225E4E8
ov16_0225E4E8: ; 0x0225E4E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x74
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	cmp r1, #4
	bls _0225E500
	b _0225E872
_0225E500:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225E50C: ; jump table
	.short _0225E516 - _0225E50C - 2 ; case 0
	.short _0225E520 - _0225E50C - 2 ; case 1
	.short _0225E52E - _0225E50C - 2 ; case 2
	.short _0225E802 - _0225E50C - 2 ; case 3
	.short _0225E856 - _0225E50C - 2 ; case 4
_0225E516:
	mov r0, #0x1c
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0225E520:
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	bne _0225E5F4
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0225E52E:
	ldrb r0, [r4, #0x13]
	add r1, sp, #0x18
	cmp r0, #2
	ldr r0, [r4, #0xc]
	beq _0225E53A
	b _0225E6B4
_0225E53A:
	add r2, sp, #0x14
	ldr r0, [r0, #0]
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0225E54E
	cmp r0, #3
	bne _0225E570
_0225E54E:
	add r1, sp, #0x14
	mov r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0xc0
	ldr r0, [r4, #0xc]
	bge _0225E566
	ldr r0, [r0, #0]
	mov r1, #8
	mov r2, #0
	bl sub_0200D5DC
	b _0225E570
_0225E566:
	ldr r0, [r0, #0]
	mov r1, #0xc0
	mov r2, #0x58
	bl sub_0200D4C4
_0225E570:
	ldr r0, [r4, #0xc]
	add r2, sp, #0x14
	ldr r0, [r0, #0]
	add r1, sp, #0x18
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _0225E594
	add r3, sp, #0x14
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02007DEC
	b _0225E5E4
_0225E594:
	cmp r0, #3
	bne _0225E5BE
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	add r3, sp, #0x14
	mov r2, #4
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	strh r0, [r3, #4]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x18
	strh r0, [r3, #4]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	neg r2, r2
	bl sub_02008274
	b _0225E5E4
_0225E5BE:
	cmp r0, #5
	bne _0225E5E4
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	add r3, sp, #0x14
	mov r2, #4
	ldrsh r1, [r3, r2]
	sub r0, r1, r0
	strh r0, [r3, #4]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x10
	strh r0, [r3, #4]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl sub_02008274
_0225E5E4:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	cmp r0, r1
	bge _0225E5F6
_0225E5F4:
	b _0225E88E
_0225E5F6:
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02007B98
	ldr r0, [r4, #8]
	mov r1, #0x2c
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #0x2d
	mov r2, #0
	bl sub_02007DEC
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r0, #0
	ldrb r0, [r4, #0x13]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r4, #0x11]
	str r0, [sp, #8]
	mov r0, #0x69
	ldr r2, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r3, [r4, #0x16]
	ldr r2, [r4, #8]
	bl sub_020789F4
	mov r0, #0x69
	ldr r3, [r4, #0x1c]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x14
	lsl r3, r3, #0x10
	ldrh r2, [r4, #0x16]
	add r1, #1
	lsr r3, r3, #0x10
	bl sub_02078A4C
	ldrb r1, [r4, #0x11]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x75
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x14
	ldrb r1, [r1, #1]
	add r3, r4, #0
	add r3, #0x2c
	str r1, [sp, #0x10]
	ldrh r2, [r4, #0x16]
	ldrb r3, [r3]
	ldr r1, [r4, #0x18]
	bl sub_02077DB4
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0225E690
	cmp r0, #3
	bne _0225E69C
_0225E690:
	ldr r0, [r4, #0xc]
	mov r1, #0xc0
	ldr r0, [r0, #0]
	mov r2, #0x58
	bl sub_0200D4C4
_0225E69C:
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #8
	add r3, r2, #0
	bl sub_020086FC
	ldrb r0, [r4, #0x12]
	add sp, #0x74
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225E6B4:
	add r2, sp, #0x14
	ldr r0, [r0, #0]
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225E6C8
	cmp r0, #2
	bne _0225E6EA
_0225E6C8:
	add r0, sp, #0x14
	mov r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #0x40
	ldr r0, [r4, #0xc]
	ble _0225E6E0
	ldr r0, [r0, #0]
	sub r1, #0xc
	mov r2, #0
	bl sub_0200D5DC
	b _0225E6EA
_0225E6E0:
	ldr r0, [r0, #0]
	mov r1, #0x40
	mov r2, #0x88
	bl sub_0200D4C4
_0225E6EA:
	ldr r0, [r4, #0xc]
	add r2, sp, #0x14
	ldr r0, [r0, #0]
	add r1, sp, #0x18
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0225E70E
	add r3, sp, #0x14
	mov r2, #4
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_02007DEC
	b _0225E75E
_0225E70E:
	cmp r0, #2
	bne _0225E736
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	add r3, sp, #0x14
	mov r2, #4
	ldrsh r1, [r3, r2]
	sub r0, r1, r0
	strh r0, [r3, #4]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x18
	strh r0, [r3, #4]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl sub_02008274
	b _0225E75E
_0225E736:
	cmp r0, #4
	bne _0225E75E
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	add r3, sp, #0x14
	mov r2, #4
	ldrsh r1, [r3, r2]
	sub r0, r0, r1
	strh r0, [r3, #4]
	ldrsh r0, [r3, r2]
	mov r1, #0
	sub r0, #0x10
	strh r0, [r3, #4]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	neg r2, r2
	bl sub_02008274
_0225E75E:
	mov r0, #0x14
	ldrsh r5, [r4, r0]
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_020080C0
	cmp r0, r5
	ble _0225E770
	b _0225E88E
_0225E770:
	ldr r0, [r4, #8]
	mov r1, #0
	add r2, r5, #0
	bl sub_02007DEC
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r0, #0
	ldrb r0, [r4, #0x13]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r4, #0x11]
	str r0, [sp, #8]
	mov r0, #0x69
	ldr r2, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r3, [r4, #0x16]
	ldr r2, [r4, #8]
	bl sub_020789F4
	mov r0, #0x69
	ldr r3, [r4, #0x1c]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r3, r3, #0x10
	ldrh r2, [r4, #0x16]
	add r1, sp, #0x14
	lsr r3, r3, #0x10
	bl sub_02078A4C
	ldrb r1, [r4, #0x11]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x74
	mvn r1, r1
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x14
	ldrb r1, [r1]
	add r3, r4, #0
	add r3, #0x2c
	str r1, [sp, #0x10]
	ldrh r2, [r4, #0x16]
	ldrb r3, [r3]
	ldr r1, [r4, #0x18]
	bl sub_02077DB4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225E7EC
	cmp r0, #2
	bne _0225E7F8
_0225E7EC:
	ldr r0, [r4, #0xc]
	mov r1, #0x40
	ldr r0, [r0, #0]
	mov r2, #0x88
	bl sub_0200D4C4
_0225E7F8:
	ldrb r0, [r4, #0x12]
	add sp, #0x74
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225E802:
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	ldrb r1, [r4, #0x11]
	bl sub_020160F4
	cmp r0, #1
	bne _0225E88E
	ldr r0, [r4, #8]
	bl sub_02007C24
	cmp r0, #0
	bne _0225E88E
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0225E84E
	ldrb r1, [r4, #0x11]
	mov r0, #0xb
	add r2, sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x1c
	bl ov16_02264408
	mov r0, #4
	add sp, #0x74
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225E84E:
	mov r0, #0xff
	add sp, #0x74
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225E856:
	bl ov12_0222016C
	add r0, r5, #0
	bl ov12_02220188
	cmp r0, #0
	bne _0225E88E
	add r0, r5, #0
	bl ov12_02220198
	mov r0, #0xff
	add sp, #0x74
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225E872:
	mov r0, #0
	bl sub_02005454
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0225E88E:
	add sp, #0x74
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_0225E4E8

	thumb_func_start ov16_0225E894
ov16_0225E894: ; 0x0225E894
	push {r3, r4, r5, r6, lr}
	sub sp, #0x74
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	cmp r1, #4
	bls _0225E8AC
	b _0225EA60
_0225E8AC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225E8B8: ; jump table
	.short _0225E8C2 - _0225E8B8 - 2 ; case 0
	.short _0225E8CC - _0225E8B8 - 2 ; case 1
	.short _0225E8DA - _0225E8B8 - 2 ; case 2
	.short _0225E9F0 - _0225E8B8 - 2 ; case 3
	.short _0225EA44 - _0225E8B8 - 2 ; case 4
_0225E8C2:
	mov r0, #0x1c
	str r0, [r4, #0x20]
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0225E8CC:
	ldr r0, [r4, #0x20]
	sub r0, r0, #1
	str r0, [r4, #0x20]
	bne _0225E93C
	ldrb r0, [r4, #0x12]
	add r0, r0, #1
	strb r0, [r4, #0x12]
_0225E8DA:
	ldr r0, [r4, #0xc]
	add r2, sp, #0x14
	ldr r0, [r0, #0]
	add r1, sp, #0x18
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	beq _0225E8F2
	cmp r0, #3
	bne _0225E914
_0225E8F2:
	add r1, sp, #0x14
	mov r0, #4
	ldrsh r0, [r1, r0]
	cmp r0, #0xc0
	ldr r0, [r4, #0xc]
	bge _0225E90A
	ldr r0, [r0, #0]
	mov r1, #8
	mov r2, #0
	bl sub_0200D5DC
	b _0225E914
_0225E90A:
	ldr r0, [r0, #0]
	mov r1, #0xc0
	mov r2, #0x58
	bl sub_0200D4C4
_0225E914:
	ldr r0, [r4, #0xc]
	add r2, sp, #0x14
	ldr r0, [r0, #0]
	add r1, sp, #0x18
	add r2, #2
	bl sub_0200D550
	ldr r0, [r4, #8]
	mov r1, #1
	mov r2, #4
	bl sub_02008274
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	cmp r0, r1
	bge _0225E93E
_0225E93C:
	b _0225EA7C
_0225E93E:
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02007B98
	ldr r0, [r4, #8]
	mov r1, #0x2c
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #0x2d
	mov r2, #0
	bl sub_02007DEC
	mov r2, #0x14
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_02007DEC
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r0, #0
	ldrb r0, [r4, #0x13]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrb r0, [r4, #0x11]
	str r0, [sp, #8]
	mov r0, #0x69
	ldr r2, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r3, [r4, #0x16]
	ldr r2, [r4, #8]
	bl sub_020789F4
	mov r0, #0x69
	ldr r3, [r4, #0x1c]
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r3, r3, #0x10
	ldrh r2, [r4, #0x16]
	add r1, sp, #0x14
	lsr r3, r3, #0x10
	bl sub_02078A4C
	ldrb r1, [r4, #0x11]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x75
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x14
	ldrb r1, [r1]
	add r3, r4, #0
	add r3, #0x2c
	str r1, [sp, #0x10]
	ldrh r2, [r4, #0x16]
	ldrb r3, [r3]
	ldr r1, [r4, #0x18]
	bl sub_02077DB4
	ldr r0, [r4, #0xc]
	mov r1, #0xc0
	ldr r0, [r0, #0]
	mov r2, #0x58
	bl sub_0200D4C4
	mov r2, #0
	str r2, [sp]
	ldr r0, [r4, #8]
	mov r1, #8
	add r3, r2, #0
	bl sub_020086FC
	ldrb r0, [r4, #0x12]
	add sp, #0x74
	add r0, r0, #1
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225E9F0:
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	ldrb r1, [r4, #0x11]
	bl sub_020160F4
	cmp r0, #1
	bne _0225EA7C
	ldr r0, [r4, #8]
	bl sub_02007C24
	cmp r0, #0
	bne _0225EA7C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0225EA3C
	ldrb r1, [r4, #0x11]
	mov r0, #0xb
	add r2, sp, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x1c
	bl ov16_02264408
	mov r0, #4
	add sp, #0x74
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225EA3C:
	mov r0, #0xff
	add sp, #0x74
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225EA44:
	bl ov12_0222016C
	add r0, r5, #0
	bl ov12_02220188
	cmp r0, #0
	bne _0225EA7C
	add r0, r5, #0
	bl ov12_02220198
	mov r0, #0xff
	add sp, #0x74
	strb r0, [r4, #0x12]
	pop {r3, r4, r5, r6, pc}
_0225EA60:
	mov r0, #0
	bl sub_02005454
	ldrb r1, [r4, #0x11]
	ldrb r2, [r4, #0x10]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0225EA7C:
	add sp, #0x74
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov16_0225E894

	thumb_func_start ov16_0225EA80
ov16_0225EA80: ; 0x0225EA80
	push {r4, r5, lr}
	sub sp, #0xb4
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	cmp r0, #7
	bls _0225EA94
	b _0225F094
_0225EA94:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225EAA0: ; jump table
	.short _0225EAB0 - _0225EAA0 - 2 ; case 0
	.short _0225EB36 - _0225EAA0 - 2 ; case 1
	.short _0225EB7A - _0225EAA0 - 2 ; case 2
	.short _0225ECE0 - _0225EAA0 - 2 ; case 3
	.short _0225ECFC - _0225EAA0 - 2 ; case 4
	.short _0225EFD4 - _0225EAA0 - 2 ; case 5
	.short _0225EFE8 - _0225EAA0 - 2 ; case 6
	.short _0225F06E - _0225EAA0 - 2 ; case 7
_0225EAB0:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
	str r1, [r4, #0x10]
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	ldr r0, [r4, #0]
	beq _0225EAE8
	bl ov16_0223EBEC
	mov r1, #0x20
	tst r0, r1
	bne _0225EB26
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225EB26
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov12_02223764
	str r0, [r4, #0x10]
	b _0225EB26
_0225EAE8:
	bl ov16_0223EBEC
	mov r1, #0x20
	tst r0, r1
	bne _0225EB26
	ldr r0, [r4, #0]
	bl ov16_0223ED60
	cmp r0, #1
	bne _0225EB12
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #2
	bne _0225EB12
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov12_02223764
	str r0, [r4, #0x10]
	b _0225EB26
_0225EB12:
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225EB26
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov12_02223764
	str r0, [r4, #0x10]
_0225EB26:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xb4
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0225EB36:
	add r1, sp, #0x50
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp, #0x50]
	add r1, #0x81
	add r2, #0x8c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_0223DFAC
	str r0, [sp, #0x58]
	mov r0, #5
	add r1, sp, #0x50
	bl ov12_02236004
	str r0, [r4, #8]
	bl ov12_02236320
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xb4
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0225EB7A:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237890
	cmp r0, #0
	bne _0225EBC2
	ldr r0, [r4, #8]
	bl ov12_02236374
	cmp r0, #1
	bne _0225EBC2
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237810
	cmp r0, #1
	bne _0225EBC2
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	cmp r0, #4
	bne _0225EBCC
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x96
	ldrb r0, [r0]
	cmp r0, #0xc
	bhs _0225EBC4
_0225EBC2:
	b _0225F0B8
_0225EBC4:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x96
	strb r1, [r0]
_0225EBCC:
	ldr r0, [r4, #0]
	bl ov16_0223E000
	add r2, r4, #0
	add r3, r4, #0
	add r5, r0, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, sp, #0x28
	bl sub_020789BC
	add r0, r4, #0
	add r0, #0x82
	ldrb r3, [r0]
	mov r0, #6
	add r2, r4, #0
	add r1, r3, #0
	mul r1, r0
	ldr r0, _0225EEE8 ; =0x0223B0BA
	add r2, #0x14
	ldrsh r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0225EEEC ; =0x0223B0BC
	ldrsh r0, [r0, r1]
	add r1, r5, #0
	lsl r5, r3, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	ldr r3, _0225EEF0 ; =0x0223B0A0
	str r0, [sp, #8]
	mov r0, #0x90
	ldrsb r0, [r4, r0]
	ldrsh r3, [r3, r5]
	str r0, [sp, #0xc]
	mov r0, #0x91
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x93
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	add r0, sp, #0x28
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	bl ov16_02263B30
	ldr r1, [r4, #4]
	mov r2, #0
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #0x2c
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #1
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _0225EEF4 ; =0x0226F1AE
	ldrh r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl sub_020086FC
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	bl ov12_022363B4
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _0225EEF8 ; =0x00000706
	bne _0225ECBA
	mov r1, #0x75
	bl sub_02005728
	b _0225ECC2
_0225ECBA:
	mov r1, #0x74
	mvn r1, r1
	bl sub_02005728
_0225ECC2:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0225ECD0
	bl ov12_02223770
	mov r0, #0
	str r0, [r4, #0x10]
_0225ECD0:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0xb4
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_0225ECE0:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_022377F8
	cmp r0, #1
	beq _0225ECFC
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x83
	strb r1, [r0]
_0225ECFC:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl sub_020080C0
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0225ED18
	ldr r0, [r4, #8]
	bl ov12_022363C4
	cmp r0, #0
	beq _0225ED1A
_0225ED18:
	b _0225EE44
_0225ED1A:
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0225ED90
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_02007B98
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x24
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, #3
	bl sub_02078A4C
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x75
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x24
	ldrb r1, [r1, #3]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r2, #0x86
	add r3, #0x97
	add r1, #0x88
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0]
	bl sub_02077DB4
	b _0225EDEE
_0225ED90:
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_02007B98
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x24
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, #2
	bl sub_02078A4C
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x74
	mvn r1, r1
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x24
	ldrb r1, [r1, #2]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r2, #0x86
	add r3, #0x97
	add r1, #0x88
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0]
	bl sub_02077DB4
_0225EDEE:
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x86
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, #0x69
	ldr r2, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r3, [r3]
	ldr r2, [r2, #0x20]
	bl sub_020789F4
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r0, #1
	ldr r0, _0225EEF4 ; =0x0226F1AE
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl sub_020086FC
	mov r0, #5
	add r4, #0x83
	add sp, #0xb4
	strb r0, [r4]
	pop {r4, r5, pc}
_0225EE44:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl sub_020080C0
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	ldr r0, [r4, #4]
	bge _0225EE5A
	b _0225EFAE
_0225EE5A:
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0225EEFC
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_02007B98
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x24
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, #1
	bl sub_02078A4C
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x75
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x24
	ldrb r1, [r1, #1]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r2, #0x86
	add r3, #0x97
	add r1, #0x88
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0]
	bl sub_02077DB4
	b _0225EF58
	nop
_0225EEE8: .word 0x0223B0BA
_0225EEEC: .word 0x0223B0BC
_0225EEF0: .word 0x0223B0A0
_0225EEF4: .word 0x0226F1AE
_0225EEF8: .word 0x00000706
_0225EEFC:
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_02007B98
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, sp, #0x24
	bl sub_02078A4C
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x74
	mvn r1, r1
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x24
	ldrb r1, [r1]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r2, #0x86
	add r3, #0x97
	add r1, #0x88
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0]
	bl sub_02077DB4
_0225EF58:
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x86
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, #0x69
	ldr r2, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r3, [r3]
	ldr r2, [r2, #0x20]
	bl sub_020789F4
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #1
	lsl r1, r0, #1
	ldr r0, _0225F0BC ; =0x0226F1AE
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl sub_020086FC
	mov r0, #5
	add r4, #0x83
	add sp, #0xb4
	strb r0, [r4]
	pop {r4, r5, pc}
_0225EFAE:
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	mov r2, #0x20
	bl sub_02008274
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0x20
	bl sub_02008274
	ldr r0, [r4, #4]
	mov r1, #0x90
	ldrsb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl sub_020087C8
	add sp, #0xb4
	pop {r4, r5, pc}
_0225EFD4:
	ldr r0, [r4, #8]
	bl ov12_022363C4
	cmp r0, #0
	bne _0225F0B8
	mov r0, #6
	add r4, #0x83
	add sp, #0xb4
	strb r0, [r4]
	pop {r4, r5, pc}
_0225EFE8:
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	bl sub_020160F4
	cmp r0, #1
	bne _0225F0B8
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl sub_02007C24
	cmp r0, #0
	bne _0225F0B8
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_0223783C
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	bl ov12_02236428
	add r0, r4, #0
	add r0, #0x92
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225F064
	mov r0, #5
	bl ov12_0221FCDC
	str r0, [r4, #0x24]
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xb
	add r2, sp, #0x5c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0x24]
	add r3, sp, #0x5c
	bl ov16_02264408
	mov r0, #7
	add r4, #0x83
	add sp, #0xb4
	strb r0, [r4]
	pop {r4, r5, pc}
_0225F064:
	mov r0, #0xff
	add r4, #0x83
	add sp, #0xb4
	strb r0, [r4]
	pop {r4, r5, pc}
_0225F06E:
	ldr r0, [r4, #0x24]
	bl ov12_0222016C
	ldr r0, [r4, #0x24]
	bl ov12_02220188
	cmp r0, #0
	bne _0225F0B8
	ldr r0, [r4, #0x24]
	bl ov12_02220198
	ldr r0, [r4, #0x24]
	bl ov12_0221FDF4
	mov r0, #0xff
	add r4, #0x83
	add sp, #0xb4
	strb r0, [r4]
	pop {r4, r5, pc}
_0225F094:
	mov r0, #0
	bl sub_02005454
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x81
	add r2, #0x80
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0225F0B8:
	add sp, #0xb4
	pop {r4, r5, pc}
	; .align 2, 0
_0225F0BC: .word 0x0226F1AE
	thumb_func_end ov16_0225EA80

	thumb_func_start ov16_0225F0C0
ov16_0225F0C0: ; 0x0225F0C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1dc
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r1, r4, #0
	add r1, #0x83
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0xb
	bls _0225F0DC
	b _0225F73E
_0225F0DC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225F0E8: ; jump table
	.short _0225F100 - _0225F0E8 - 2 ; case 0
	.short _0225F21A - _0225F0E8 - 2 ; case 1
	.short _0225F266 - _0225F0E8 - 2 ; case 2
	.short _0225F2F4 - _0225F0E8 - 2 ; case 3
	.short _0225F30C - _0225F0E8 - 2 ; case 4
	.short _0225F5EA - _0225F0E8 - 2 ; case 5
	.short _0225F5FE - _0225F0E8 - 2 ; case 6
	.short _0225F672 - _0225F0E8 - 2 ; case 7
	.short _0225F696 - _0225F0E8 - 2 ; case 8
	.short _0225F672 - _0225F0E8 - 2 ; case 9
	.short _0225F6E2 - _0225F0E8 - 2 ; case 10
	.short _0225F672 - _0225F0E8 - 2 ; case 11
_0225F100:
	add r0, r4, #0
	add r0, #0x82
	ldrb r1, [r0]
	ldr r0, _0225F440 ; =0x0226F174
	ldrb r0, [r0, r1]
	str r0, [sp, #0x5c]
	mov r0, #5
	str r0, [sp, #0x60]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x68]
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	str r0, [sp, #0x6c]
	ldr r0, [r4, #0]
	bl ov16_0223E010
	str r0, [sp, #0x78]
	ldr r0, [r4, #0]
	bl ov16_0223E064
	str r0, [sp, #0x7c]
	mov r2, #1
	mov r1, #0
	add r0, r4, #0
	str r2, [sp, #0x70]
	str r1, [sp, #0x74]
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #1
	bne _0225F146
	str r2, [sp, #0x64]
	b _0225F148
_0225F146:
	str r1, [sp, #0x64]
_0225F148:
	add r0, sp, #0x5c
	bl ov12_02237728
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_0223E000
	add r2, r4, #0
	add r3, r4, #0
	add r5, r0, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, sp, #0x34
	bl sub_020789BC
	add r0, r4, #0
	add r0, #0x82
	ldrb r3, [r0]
	mov r0, #6
	add r2, r4, #0
	add r1, r3, #0
	mul r1, r0
	ldr r0, _0225F444 ; =0x0223B0BA
	add r2, #0x14
	ldrsh r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0225F448 ; =0x0223B0BC
	ldrsh r0, [r0, r1]
	add r1, r5, #0
	lsl r5, r3, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x85
	ldrb r0, [r0]
	ldr r3, _0225F44C ; =0x0223B0A0
	str r0, [sp, #8]
	mov r0, #0x90
	ldrsb r0, [r4, r0]
	ldrsh r3, [r3, r5]
	str r0, [sp, #0xc]
	mov r0, #0x91
	ldrsb r0, [r4, r0]
	str r0, [sp, #0x10]
	add r0, r4, #0
	add r0, #0x93
	ldrb r0, [r0]
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #0x18]
	add r0, sp, #0x34
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	bl ov16_02263B30
	ldr r1, [r4, #4]
	mov r2, #0
	str r0, [r1, #0x20]
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #0x2c
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #1
	bl sub_02007DEC
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov12_02223764
	str r0, [r4, #0x10]
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1dc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F21A:
	add r1, sp, #0x28
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	add r0, #0x82
	ldrb r0, [r0]
	add r1, r4, #0
	add r2, r4, #0
	str r0, [sp, #0x28]
	add r1, #0x81
	add r2, #0x8c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_0223DFAC
	str r0, [sp, #0x30]
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	add r1, sp, #0x28
	str r0, [sp, #0x2c]
	mov r0, #5
	bl ov12_02236004
	str r0, [r4, #8]
	bl ov12_02236320
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1dc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F266:
	ldr r0, [r4, #0xc]
	bl ov12_02237890
	cmp r0, #0
	beq _0225F27A
	add r0, r4, #0
	add r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0
	beq _0225F28E
_0225F27A:
	ldr r0, [r4, #8]
	bl ov12_02236374
	cmp r0, #1
	bne _0225F28E
	ldr r0, [r4, #0xc]
	bl ov12_02237810
	cmp r0, #1
	beq _0225F290
_0225F28E:
	b _0225F75C
_0225F290:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0225F29A
	bl ov12_02223770
_0225F29A:
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r3, #0
	lsl r1, r0, #1
	ldr r0, _0225F450 ; =0x0226F1AE
	ldrh r0, [r0, r1]
	mov r1, #0x10
	add r2, r1, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl sub_020086FC
	ldr r0, [r4, #4]
	mov r1, #6
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	ldr r0, [r4, #8]
	bl ov12_022363B4
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _0225F454 ; =0x00000706
	bne _0225F2DC
	mov r1, #0x75
	bl sub_02005728
	b _0225F2E4
_0225F2DC:
	mov r1, #0x74
	mvn r1, r1
	bl sub_02005728
_0225F2E4:
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1dc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F2F4:
	ldr r0, [r4, #0xc]
	bl ov12_022377F8
	cmp r0, #1
	beq _0225F30C
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x83
	strb r1, [r0]
_0225F30C:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl sub_020080C0
	mov r1, #1
	lsl r1, r1, #8
	cmp r0, r1
	bne _0225F328
	ldr r0, [r4, #8]
	bl ov12_022363C4
	cmp r0, #0
	beq _0225F32A
_0225F328:
	b _0225F470
_0225F32A:
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0225F3A0
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_02007B98
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x24
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, #3
	bl sub_02078A4C
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x75
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x24
	ldrb r1, [r1, #3]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r2, #0x86
	add r3, #0x97
	add r1, #0x88
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0]
	bl sub_02077DB4
	b _0225F3FE
_0225F3A0:
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_02007B98
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x24
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, #2
	bl sub_02078A4C
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x74
	mvn r1, r1
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x24
	ldrb r1, [r1, #2]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r2, #0x86
	add r3, #0x97
	add r1, #0x88
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0]
	bl sub_02077DB4
_0225F3FE:
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x86
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, #0x69
	ldr r2, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r3, [r3]
	ldr r2, [r2, #0x20]
	bl sub_020789F4
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	add r3, r2, #0
	lsl r1, r0, #1
	ldr r0, _0225F450 ; =0x0226F1AE
	b _0225F458
	nop
_0225F440: .word 0x0226F174
_0225F444: .word 0x0223B0BA
_0225F448: .word 0x0223B0BC
_0225F44C: .word 0x0223B0A0
_0225F450: .word 0x0226F1AE
_0225F454: .word 0x00000706
_0225F458:
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl sub_020086FC
	mov r0, #5
	add r4, #0x83
	add sp, #0x1dc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F470:
	ldr r0, [r4, #4]
	mov r1, #0xc
	ldr r0, [r0, #0x20]
	bl sub_020080C0
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	ldr r0, [r4, #4]
	bge _0225F486
	b _0225F5C4
_0225F486:
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	bl sub_02007DEC
	ldr r0, [r4, #4]
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r0, #0x20]
	add r2, #0xf3
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0225F512
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_02007B98
	ldr r0, [r4, #4]
	mov r1, #0x2d
	ldr r0, [r0, #0x20]
	mov r2, #0
	bl sub_02007DEC
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0x24
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, #1
	bl sub_02078A4C
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x75
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x24
	ldrb r1, [r1, #1]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r2, #0x86
	add r3, #0x97
	add r1, #0x88
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0]
	bl sub_02077DB4
	b _0225F56E
_0225F512:
	ldr r0, [r0, #0x20]
	mov r1, #1
	bl sub_02007B98
	add r2, r4, #0
	add r3, r4, #0
	mov r0, #0x69
	add r2, #0x86
	add r3, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r2, [r2]
	ldrb r3, [r3]
	add r1, sp, #0x24
	bl sub_02078A4C
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	mov r1, #0x74
	mvn r1, r1
	str r1, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	add r1, sp, #0x24
	ldrb r1, [r1]
	add r2, r4, #0
	add r3, r4, #0
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r2, #0x86
	add r3, #0x97
	add r1, #0x88
	ldrh r2, [r2]
	ldrb r3, [r3]
	ldr r1, [r1, #0]
	bl sub_02077DB4
_0225F56E:
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r0, #0
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	add r3, r4, #0
	add r3, #0x86
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x81
	ldrb r0, [r0]
	str r0, [sp, #8]
	mov r0, #0x69
	ldr r2, [r4, #4]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	ldrh r3, [r3]
	ldr r2, [r2, #0x20]
	bl sub_020789F4
	add r0, r4, #0
	add r0, #0x8e
	ldrh r0, [r0]
	mov r2, #0
	mov r3, #1
	lsl r1, r0, #1
	ldr r0, _0225F760 ; =0x0226F1AE
	ldrh r0, [r0, r1]
	mov r1, #0x10
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl sub_020086FC
	mov r0, #5
	add r4, #0x83
	add sp, #0x1dc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F5C4:
	ldr r0, [r0, #0x20]
	mov r1, #0xc
	mov r2, #0x20
	bl sub_02008274
	ldr r0, [r4, #4]
	mov r1, #0xd
	ldr r0, [r0, #0x20]
	mov r2, #0x20
	bl sub_02008274
	ldr r0, [r4, #4]
	mov r1, #0x90
	ldrsb r1, [r4, r1]
	ldr r0, [r0, #0x20]
	bl sub_020087C8
	add sp, #0x1dc
	pop {r3, r4, r5, r6, pc}
_0225F5EA:
	ldr r0, [r4, #8]
	bl ov12_022363C4
	cmp r0, #0
	bne _0225F61E
	mov r0, #6
	add r4, #0x83
	add sp, #0x1dc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F5FE:
	ldr r0, [r4, #0]
	bl ov16_0223EE28
	add r1, r4, #0
	add r1, #0x81
	ldrb r1, [r1]
	bl sub_020160F4
	cmp r0, #1
	bne _0225F61E
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	bl sub_02007C24
	cmp r0, #0
	beq _0225F620
_0225F61E:
	b _0225F75C
_0225F620:
	ldr r0, [r4, #0xc]
	bl ov12_0223783C
	ldr r0, [r4, #8]
	bl ov12_02236428
	add r0, r4, #0
	add r0, #0x92
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225F668
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xb
	add r2, sp, #0x184
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x184
	bl ov16_02264408
	mov r0, #7
	add r4, #0x83
	add sp, #0x1dc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F668:
	mov r0, #8
	add r4, #0x83
	add sp, #0x1dc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F672:
	bl ov12_0222016C
	add r0, r5, #0
	bl ov12_02220188
	cmp r0, #0
	bne _0225F75C
	add r0, r5, #0
	bl ov12_02220198
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1dc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F696:
	add r0, r4, #0
	add r0, #0x98
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0225F6D8
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x12c
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x12c
	bl ov16_02264408
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1dc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F6D8:
	mov r0, #0xff
	add r4, #0x83
	add sp, #0x1dc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F6E2:
	add r3, r4, #0
	add r3, #0x81
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x28
	add r2, sp, #0xdc
	bl ov16_02264530
	add r0, sp, #0xdc
	mov r1, #5
	bl ov12_02238390
	add r0, r4, #0
	add r0, #0x81
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x84
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x84
	bl ov16_02264408
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x83
	ldrb r0, [r0]
	add r4, #0x83
	add sp, #0x1dc
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_0225F73E:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x81
	add r2, #0x80
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0225F75C:
	add sp, #0x1dc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0225F760: .word 0x0226F1AE
	thumb_func_end ov16_0225F0C0

	thumb_func_start ov16_0225F764
ov16_0225F764: ; 0x0225F764
	push {r4, r5, r6, lr}
	sub sp, #0x178
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r1, r4, #0
	add r1, #0x6b
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #8
	bhi _0225F84E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225F78A: ; jump table
	.short _0225F79C - _0225F78A - 2 ; case 0
	.short _0225F840 - _0225F78A - 2 ; case 1
	.short _0225F7E4 - _0225F78A - 2 ; case 2
	.short _0225F840 - _0225F78A - 2 ; case 3
	.short _0225F866 - _0225F78A - 2 ; case 4
	.short _0225F958 - _0225F78A - 2 ; case 5
	.short _0225F972 - _0225F78A - 2 ; case 6
	.short _0225F9B2 - _0225F78A - 2 ; case 7
	.short _0225F9CC - _0225F78A - 2 ; case 8
_0225F79C:
	ldr r0, [r4, #0x70]
	cmp r0, #0
	beq _0225F7DA
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x120
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x120
	bl ov16_02264408
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x178
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225F7DA:
	mov r0, #4
	add r4, #0x6b
	add sp, #0x178
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225F7E4:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x10
	add r2, sp, #0xd0
	bl ov16_02264530
	add r0, sp, #0xd0
	mov r1, #5
	bl ov12_022382BC
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x78
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x78
	bl ov16_02264408
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x178
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225F840:
	bl ov12_0222016C
	add r0, r5, #0
	bl ov12_02220188
	cmp r0, #0
	beq _0225F850
_0225F84E:
	b _0225F9EA
_0225F850:
	add r0, r5, #0
	bl ov12_02220198
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x178
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225F866:
	add r0, r4, #0
	add r0, #0x6a
	ldrb r5, [r0]
	mov r0, #1
	tst r0, r5
	beq _0225F8AE
	ldr r0, _0225F9F0 ; =0x0226F174
	ldrb r0, [r0, r5]
	str r0, [sp, #0x50]
	mov r0, #5
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	add r0, r4, #0
	add r0, #0x69
	ldrb r0, [r0]
	str r0, [sp, #0x5c]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r0, [r0]
	str r0, [sp, #0x60]
	ldr r0, [r4, #0]
	bl ov16_0223E010
	str r0, [sp, #0x6c]
	ldr r0, [r4, #0]
	bl ov16_0223E064
	str r0, [sp, #0x70]
	mov r0, #1
	str r0, [sp, #0x64]
	mov r0, #0
	str r0, [sp, #0x68]
	add r0, sp, #0x50
	bl ov12_02237728
	b _0225F8FA
_0225F8AE:
	ldr r3, _0225F9F4 ; =0x0226F17C
	add r2, sp, #0x10
	add r6, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	lsl r0, r5, #2
	ldr r0, [r6, r0]
	str r0, [sp, #0x28]
	mov r0, #5
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, r4, #0
	add r0, #0x69
	ldrb r0, [r0]
	str r0, [sp, #0x34]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r0, [r0]
	str r0, [sp, #0x38]
	ldr r0, [r4, #0]
	bl ov16_0223E010
	str r0, [sp, #0x44]
	ldr r0, [r4, #0]
	bl ov16_0223E064
	str r0, [sp, #0x48]
	mov r0, #1
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x40]
	add r0, sp, #0x28
	bl ov12_02237728
_0225F8FA:
	str r0, [r4, #0xc]
	add r0, r4, #0
	mov r1, #5
	add r0, #0x6b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x6e
	ldrh r0, [r0]
	mov r2, #0x10
	lsl r1, r0, #1
	ldr r0, _0225F9F8 ; =0x0226F1AE
	ldrh r0, [r0, r1]
	mov r1, #0
	add r3, r1, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	bl sub_020086FC
	add r4, #0x6a
	ldrb r0, [r4]
	cmp r0, #5
	bhi _0225F9EA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F932: ; jump table
	.short _0225F93E - _0225F932 - 2 ; case 0
	.short _0225F94C - _0225F932 - 2 ; case 1
	.short _0225F93E - _0225F932 - 2 ; case 2
	.short _0225F94C - _0225F932 - 2 ; case 3
	.short _0225F93E - _0225F932 - 2 ; case 4
	.short _0225F94C - _0225F932 - 2 ; case 5
_0225F93E:
	mov r1, #0x74
	ldr r0, _0225F9FC ; =0x00000706
	mvn r1, r1
	bl sub_02005728
	add sp, #0x178
	pop {r4, r5, r6, pc}
_0225F94C:
	ldr r0, _0225F9FC ; =0x00000706
	mov r1, #0x75
	bl sub_02005728
	add sp, #0x178
	pop {r4, r5, r6, pc}
_0225F958:
	ldr r0, [r4, #8]
	bl sub_020087B4
	cmp r0, #0
	bne _0225F9EA
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	add r4, #0x6b
	add sp, #0x178
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225F972:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #8]
	sub r2, #0x2c
	bl sub_02008274
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #8]
	sub r2, #0x2d
	bl sub_02008274
	add r1, r4, #0
	add r1, #0x6c
	ldrb r1, [r1]
	ldr r0, [r4, #8]
	bl sub_020087C8
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl sub_020080C0
	cmp r0, #0
	bgt _0225F9EA
	ldr r0, [r4, #8]
	bl sub_02007DC8
	mov r0, #7
	add r4, #0x6b
	add sp, #0x178
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225F9B2:
	ldr r0, [r4, #0xc]
	bl ov12_022377F8
	cmp r0, #0
	bne _0225F9EA
	ldr r0, [r4, #0xc]
	bl ov12_0223783C
	mov r0, #8
	add r4, #0x6b
	add sp, #0x178
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_0225F9CC:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x69
	add r2, #0x68
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0225F9EA:
	add sp, #0x178
	pop {r4, r5, r6, pc}
	nop
_0225F9F0: .word 0x0226F174
_0225F9F4: .word 0x0226F17C
_0225F9F8: .word 0x0226F1AE
_0225F9FC: .word 0x00000706
	thumb_func_end ov16_0225F764

	thumb_func_start ov16_0225FA00
ov16_0225FA00: ; 0x0225FA00
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _0225FA12
	cmp r0, #1
	beq _0225FA58
	pop {r3, r4, r5, pc}
_0225FA12:
	mov r1, #0xc
	add r2, r1, #0
	ldr r0, [r4, #4]
	sub r2, #0x2c
	bl sub_02008274
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #4]
	sub r2, #0x2d
	bl sub_02008274
	ldrb r0, [r4, #0xc]
	cmp r0, #0
	beq _0225FA3E
	sub r0, r0, #1
	strb r0, [r4, #0xc]
	mov r1, #1
	ldr r0, [r4, #4]
	sub r2, r1, #2
	bl sub_02008274
_0225FA3E:
	ldr r0, [r4, #4]
	mov r1, #0xc
	bl sub_020080C0
	cmp r0, #0
	bgt _0225FA6E
	ldr r0, [r4, #4]
	bl sub_02007DC8
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, pc}
_0225FA58:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0225FA6E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0225FA00

	thumb_func_start ov16_0225FA70
ov16_0225FA70: ; 0x0225FA70
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0x21
	bge _0225FAAC
	ldrb r0, [r4, #0xe]
	cmp r0, #2
	blo _0225FAAC
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0225FA96
	cmp r0, #2
	bne _0225FAAC
_0225FA96:
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	mov r1, #3
	mov r2, #1
	mov r3, #4
	bl sub_02019184
	ldr r0, [r4, #0x1c]
	add r0, r0, #1
	str r0, [r4, #0x1c]
_0225FAAC:
	ldrb r0, [r4, #0xe]
	cmp r0, #4
	bls _0225FAB4
	b _0225FD58
_0225FAB4:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FAC0: ; jump table
	.short _0225FACA - _0225FAC0 - 2 ; case 0
	.short _0225FAEC - _0225FAC0 - 2 ; case 1
	.short _0225FAF8 - _0225FAC0 - 2 ; case 2
	.short _0225FD28 - _0225FAC0 - 2 ; case 3
	.short _0225FD42 - _0225FAC0 - 2 ; case 4
_0225FACA:
	ldr r0, [r4, #8]
	bl sub_0200D358
	cmp r0, #2
	bls _0225FAE4
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0200D3CC
	ldr r0, [r4, #8]
	mov r1, #2
	bl sub_0200D364
_0225FAE4:
	mov r0, #0x1c
	str r0, [r4, #0x18]
	mov r0, #1
	strb r0, [r4, #0xe]
_0225FAEC:
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bne _0225FBE2
	mov r0, #2
	strb r0, [r4, #0xe]
_0225FAF8:
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r1, sp, #0
	ldr r0, [r4, #8]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	ldr r0, [r4, #0x14]
	beq _0225FB1C
	b _0225FC36
_0225FB1C:
	cmp r0, #1
	beq _0225FB24
	cmp r0, #3
	bne _0225FB46
_0225FB24:
	add r1, sp, #0
	mov r0, #6
	ldrsh r0, [r1, r0]
	cmp r0, #0xc0
	ldr r0, [r4, #4]
	bge _0225FB3C
	ldr r0, [r0, #0]
	mov r1, #8
	mov r2, #0
	bl sub_0200D5DC
	b _0225FB46
_0225FB3C:
	ldr r0, [r0, #0]
	mov r1, #0xc0
	mov r2, #0x58
	bl sub_0200D4C4
_0225FB46:
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _0225FB6A
	cmp r0, #3
	bne _0225FB7C
	cmp r5, #3
	beq _0225FB6A
	cmp r5, #0x83
	beq _0225FB6A
	cmp r5, #7
	bne _0225FB7C
_0225FB6A:
	add r3, sp, #0
	mov r1, #6
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl sub_0200D4C4
	b _0225FBC8
_0225FB7C:
	cmp r0, #3
	bne _0225FBA6
	add r2, sp, #0
	mov r0, #2
	mov r1, #6
	ldrsh r3, [r2, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	strh r0, [r2, #6]
	ldrsh r0, [r2, r1]
	sub r0, #0x18
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r4, #8]
	mov r2, #0
	neg r1, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl sub_0200D5DC
	b _0225FBC8
_0225FBA6:
	cmp r0, #5
	bne _0225FBC8
	add r2, sp, #0
	mov r1, #6
	mov r0, #2
	ldrsh r3, [r2, r1]
	ldrsh r0, [r2, r0]
	sub r0, r3, r0
	strh r0, [r2, #6]
	ldrsh r0, [r2, r1]
	sub r0, #0x10
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r4, #8]
	mov r2, #0
	bl sub_0200D5DC
_0225FBC8:
	add r1, sp, #0
	ldr r0, [r4, #8]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	add r3, sp, #0
	mov r0, #2
	ldrsh r0, [r3, r0]
	cmp r0, r1
	bge _0225FBE4
_0225FBE2:
	b _0225FD58
_0225FBE4:
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl sub_0200D4C4
	ldr r0, [r4, #0x14]
	cmp r0, #1
	beq _0225FBF8
	cmp r0, #3
	bne _0225FC04
_0225FBF8:
	ldr r0, [r4, #4]
	mov r1, #0xc0
	ldr r0, [r0, #0]
	mov r2, #0x58
	bl sub_0200D4C4
_0225FC04:
	ldr r0, [r4, #8]
	bl sub_0200D358
	cmp r0, #1
	bls _0225FC2E
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0200D3CC
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_0200D364
	ldrh r1, [r4, #0x12]
	mov r0, #1
	add sp, #8
	bic r1, r0
	strh r1, [r4, #0x12]
	mov r0, #3
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, pc}
_0225FC2E:
	mov r0, #4
	add sp, #8
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, pc}
_0225FC36:
	cmp r0, #0
	beq _0225FC3E
	cmp r0, #2
	bne _0225FC60
_0225FC3E:
	add r0, sp, #0
	mov r1, #6
	ldrsh r0, [r0, r1]
	cmp r0, #0x40
	ldr r0, [r4, #4]
	ble _0225FC56
	ldr r0, [r0, #0]
	sub r1, #0xe
	mov r2, #0
	bl sub_0200D5DC
	b _0225FC60
_0225FC56:
	ldr r0, [r0, #0]
	mov r1, #0x40
	mov r2, #0x88
	bl sub_0200D4C4
_0225FC60:
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0225FC88
	cmp r0, #2
	bne _0225FC9A
	cmp r5, #3
	beq _0225FC88
	cmp r5, #0x83
	beq _0225FC88
	cmp r5, #0x13
	beq _0225FC88
	cmp r5, #7
	bne _0225FC9A
_0225FC88:
	add r3, sp, #0
	mov r1, #6
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl sub_0200D4C4
	b _0225FCE6
_0225FC9A:
	cmp r0, #2
	bne _0225FCBE
	add r2, sp, #0
	mov r1, #6
	mov r0, #2
	ldrsh r3, [r2, r1]
	ldrsh r0, [r2, r0]
	sub r0, r3, r0
	strh r0, [r2, #6]
	ldrsh r0, [r2, r1]
	sub r0, #0x18
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r4, #8]
	mov r2, #0
	bl sub_0200D5DC
	b _0225FCE6
_0225FCBE:
	cmp r0, #4
	bne _0225FCE6
	add r2, sp, #0
	mov r0, #2
	mov r1, #6
	ldrsh r3, [r2, r0]
	ldrsh r0, [r2, r1]
	sub r0, r3, r0
	strh r0, [r2, #6]
	ldrsh r0, [r2, r1]
	sub r0, #0x10
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r4, #8]
	mov r2, #0
	neg r1, r1
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	bl sub_0200D5DC
_0225FCE6:
	add r1, sp, #0
	ldr r0, [r4, #8]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	add r3, sp, #0
	mov r0, #2
	ldrsh r0, [r3, r0]
	cmp r0, r1
	bgt _0225FD58
	mov r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl sub_0200D4C4
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0225FD14
	cmp r0, #2
	bne _0225FD20
_0225FD14:
	ldr r0, [r4, #4]
	mov r1, #0x40
	ldr r0, [r0, #0]
	mov r2, #0x88
	bl sub_0200D4C4
_0225FD20:
	mov r0, #4
	add sp, #8
	strb r0, [r4, #0xe]
	pop {r4, r5, r6, pc}
_0225FD28:
	ldr r0, [r4, #8]
	bl sub_0200D3B8
	cmp r0, #1
	bne _0225FD3E
	ldr r1, [r4, #8]
	add r0, r4, #0
	bl ov16_02264650
	cmp r0, #0
	beq _0225FD58
_0225FD3E:
	mov r0, #4
	strb r0, [r4, #0xe]
_0225FD42:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0225FD58:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0225FA70

	thumb_func_start ov16_0225FD5C
ov16_0225FD5C: ; 0x0225FD5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x120
	ldr r3, _0225FFE4 ; =0x0226F22C
	add r4, r1, #0
	add r5, r0, #0
	add r2, sp, #0x30
	mov r1, #0x78
_0225FD6A:
	ldrh r0, [r3]
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	sub r1, r1, #1
	bne _0225FD6A
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	add r6, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #6
	bls _0225FD86
	b _02260266
_0225FD86:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FD92: ; jump table
	.short _0225FDA0 - _0225FD92 - 2 ; case 0
	.short _0225FE7A - _0225FD92 - 2 ; case 1
	.short _0225FF9E - _0225FD92 - 2 ; case 2
	.short _02260158 - _0225FD92 - 2 ; case 3
	.short _0226020A - _0225FD92 - 2 ; case 4
	.short _02260228 - _0225FD92 - 2 ; case 5
	.short _02260250 - _0225FD92 - 2 ; case 6
_0225FDA0:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0225FDAE
	mov r0, #1
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225FDAE:
	cmp r0, #4
	bhi _0225FDC8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225FDBE: ; jump table
	.short _0225FDC8 - _0225FDBE - 2 ; case 0
	.short _0225FDC8 - _0225FDBE - 2 ; case 1
	.short _0225FDD6 - _0225FDBE - 2 ; case 2
	.short _0225FDE4 - _0225FDBE - 2 ; case 3
	.short _0225FDF2 - _0225FDBE - 2 ; case 4
_0225FDC8:
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #3
	str r0, [r4, #0x18]
	mov r0, #5
	str r0, [sp, #0x18]
	b _0225FE00
_0225FDD6:
	mov r0, #0xc
	str r0, [sp, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, _0225FFE8 ; =0x00000111
	str r0, [sp, #0x18]
	b _0225FE00
_0225FDE4:
	mov r0, #0xd
	str r0, [sp, #8]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r0, _0225FFEC ; =0x00000112
	str r0, [sp, #0x18]
	b _0225FE00
_0225FDF2:
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #3
	str r0, [r4, #0x18]
	mov r0, #0x11
	lsl r0, r0, #4
	str r0, [sp, #0x18]
_0225FE00:
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #4
	str r0, [sp, #0x10]
	ldrb r0, [r4, #9]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov16_0223E010
	str r0, [sp, #0x24]
	ldr r0, [r4, #0]
	bl ov16_0223E064
	str r0, [sp, #0x28]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [r4, #0]
	str r0, [sp, #0x2c]
	add r0, sp, #8
	bl ov12_02237728
	ldr r1, [r4, #4]
	add r1, #0x88
	str r0, [r1, #0]
	ldr r0, [r4, #4]
	mov r1, #0x64
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237E34
	ldr r0, [r4, #4]
	mov r1, #2
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237E40
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237E30
	ldr r0, [r4, #4]
	mov r1, #0
	ldr r0, [r0, #0x18]
	bl sub_0200D3CC
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl sub_0200D390
	mov r0, #3
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225FE7A:
	ldrb r0, [r4, #0xb]
	cmp r0, #2
	ldr r0, [r4, #4]
	bne _0225FF7A
	ldr r0, [r0, #0x18]
	mov r1, #5
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	add r1, sp, #4
	mov r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0xa0
	blt _0225FF0C
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237890
	cmp r0, #0
	beq _0225FF0C
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237E0C
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_0223786C
	mov r0, #2
	tst r0, r6
	beq _0225FF1A
	mov r0, #8
	tst r0, r6
	bne _0225FF1A
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov12_02237E0C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov12_0223786C
	add r4, #0x88
	ldr r0, [r4, #0]
	mov r1, #0xc
	bl ov12_02237E4C
	add sp, #0x120
	pop {r3, r4, r5, r6, r7, pc}
_0225FF0C:
	add r1, sp, #4
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	cmp r1, r0
	bge _0225FF1C
_0225FF1A:
	b _02260266
_0225FF1C:
	ldr r0, [r4, #0]
	bl ov16_0223E018
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r4, #4]
	ldr r1, _0225FFF0 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225FFF4 ; =0x00004E2F
	add r1, r2, r1
	bl sub_0200D070
	ldr r2, [r4, #4]
	ldr r1, _0225FFF0 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225FFF8 ; =0x00004E2A
	add r1, r2, r1
	bl sub_0200D080
	ldr r2, [r4, #4]
	ldr r1, _0225FFF0 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225FFFC ; =0x00004E27
	add r1, r2, r1
	bl sub_0200D090
	ldr r2, [r4, #4]
	ldr r1, _0225FFF0 ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _0225FFFC ; =0x00004E27
	add r1, r2, r1
	bl sub_0200D0A0
	mov r0, #6
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225FF7A:
	ldr r0, [r0, #0x18]
	mov r1, #0
	bl sub_0200D3CC
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl sub_0200D364
	ldr r0, [r4, #4]
	mov r1, #1
	ldr r0, [r0, #0x18]
	bl sub_0200D390
	mov r0, #2
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225FF9E:
	ldr r0, [r4, #4]
	mov r1, #4
	ldr r0, [r0, #0x18]
	mvn r1, r1
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	ldr r1, [r4, #4]
	add r0, r1, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0225FFC8
	b _022600EC
_0225FFC8:
	ldr r0, [r1, #0x18]
	bl sub_0200D3E0
	ldr r1, [r4, #0xc]
	str r0, [sp]
	lsl r5, r0, #2
	mov r0, #0x18
	add r2, r1, #0
	mul r2, r0
	add r0, sp, #0x30
	add r0, r0, r2
	ldrsh r1, [r5, r0]
	ldr r0, _02260000 ; =0x00007FFF
	b _02260004
	; .align 2, 0
_0225FFE4: .word 0x0226F22C
_0225FFE8: .word 0x00000111
_0225FFEC: .word 0x00000112
_0225FFF0: .word 0x00000195
_0225FFF4: .word 0x00004E2F
_0225FFF8: .word 0x00004E2A
_0225FFFC: .word 0x00004E27
_02260000: .word 0x00007FFF
_02260004:
	cmp r1, r0
	beq _022600EC
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237E0C
	ldr r1, [r4, #0xc]
	mov r0, #0x18
	add r3, r1, #0
	mul r3, r0
	add r2, sp, #0x30
	add r2, r2, r3
	add r7, sp, #4
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r4, #4]
	add r1, r1, r2
	mov r2, #0
	ldrsh r7, [r7, r2]
	add r2, sp, #0x30
	add r2, #2
	add r2, r2, r3
	ldrsh r2, [r5, r2]
	add r0, #0x88
	lsl r1, r1, #0x10
	add r2, r7, r2
	lsl r2, r2, #0x10
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl ov12_02237E18
	ldr r0, [sp]
	cmp r0, #3
	bne _022600EC
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237890
	cmp r0, #0
	beq _022600EC
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_0223786C
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237E30
	mov r0, #2
	tst r0, r6
	beq _022600EC
	mov r0, #8
	tst r0, r6
	bne _022600EC
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	ldr r1, [r4, #0xc]
	add r6, r0, #0
	add r3, r1, #0
	mov r0, #0x18
	mul r3, r0
	add r2, sp, #0x30
	add r2, r2, r3
	add r0, r6, #0
	add r0, #0x88
	add r7, sp, #4
	mov r1, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r5, r2]
	ldr r0, [r0, #0]
	add r1, r1, r2
	mov r2, #0
	ldrsh r7, [r7, r2]
	add r2, sp, #0x30
	add r2, #2
	add r2, r2, r3
	ldrsh r2, [r5, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r7, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov12_02237E18
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #1
	bl ov12_02237E0C
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov12_0223786C
	add r6, #0x88
	ldr r0, [r6, #0]
	mov r1, #1
	bl ov12_02237E30
_022600EC:
	add r1, sp, #4
	mov r0, #2
	ldrsh r1, [r1, r0]
	sub r0, #0x2a
	cmp r1, r0
	ble _022600FA
	b _02260266
_022600FA:
	ldr r0, [r4, #0]
	bl ov16_0223E018
	add r5, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl sub_0200D0F4
	ldr r0, [r4, #4]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r4, #4]
	ldr r1, _0226026C ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _02260270 ; =0x00004E2F
	add r1, r2, r1
	bl sub_0200D070
	ldr r2, [r4, #4]
	ldr r1, _0226026C ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _02260274 ; =0x00004E2A
	add r1, r2, r1
	bl sub_0200D080
	ldr r2, [r4, #4]
	ldr r1, _0226026C ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _02260278 ; =0x00004E27
	add r1, r2, r1
	bl sub_0200D090
	ldr r2, [r4, #4]
	ldr r1, _0226026C ; =0x00000195
	add r0, r5, #0
	ldrb r2, [r2, r1]
	ldr r1, _02260278 ; =0x00004E27
	add r1, r2, r1
	bl sub_0200D0A0
	mov r0, #6
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02260158:
	ldr r0, [r4, #4]
	add r1, sp, #4
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x18]
	bl sub_0200D3E0
	add r7, r0, #0
	cmp r7, #4
	bne _02260180
	mov r0, #8
	str r0, [r4, #0x14]
	mov r0, #4
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02260180:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02260266
	ldr r2, [r4, #0xc]
	mov r1, #0x18
	add r5, r2, #0
	mul r5, r1
	add r1, sp, #0x30
	lsl r6, r7, #2
	add r1, r1, r5
	ldrsh r1, [r6, r1]
	ldr r2, _0226027C ; =0x00007FFF
	cmp r1, r2
	beq _02260266
	add r3, sp, #4
	mov r2, #2
	ldrsh r2, [r3, r2]
	add r1, r2, r1
	mov r2, #0
	ldrsh r3, [r3, r2]
	add r2, sp, #0x30
	add r2, #2
	add r2, r2, r5
	ldrsh r2, [r6, r2]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add r2, r3, r2
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	bl ov12_02237E18
	cmp r7, #3
	bne _02260266
	ldr r0, [r4, #4]
	ldr r5, [r4, #0x18]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237890
	cmp r5, r0
	beq _02260266
	ldr r0, [r4, #4]
	add r1, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_0223786C
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237E40
	ldr r0, [r4, #4]
	mov r1, #1
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_02237E30
	ldr r0, [r4, #0x18]
	cmp r0, #3
	beq _02260266
	ldr r0, _02260280 ; =0x0000070A
	bl sub_02005748
	add sp, #0x120
	pop {r3, r4, r5, r6, r7, pc}
_0226020A:
	ldr r0, [r4, #0x14]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	bne _02260266
	ldr r0, [r4, #0x18]
	cmp r0, #3
	bne _02260220
	mov r0, #6
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02260220:
	mov r0, #5
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02260228:
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_022377F8
	cmp r0, #1
	beq _02260266
	ldr r0, [r4, #4]
	add r0, #0x88
	ldr r0, [r0, #0]
	bl ov12_0223783C
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x88
	str r1, [r0, #0]
	mov r0, #6
	add sp, #0x120
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02260250:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02260266:
	add sp, #0x120
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226026C: .word 0x00000195
_02260270: .word 0x00004E2F
_02260274: .word 0x00004E2A
_02260278: .word 0x00004E27
_0226027C: .word 0x00007FFF
_02260280: .word 0x0000070A
	thumb_func_end ov16_0225FD5C

	thumb_func_start ov16_02260284
ov16_02260284: ; 0x02260284
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _0226029A
	cmp r0, #1
	beq _02260302
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0226029A:
	ldrb r0, [r5, #0xb]
	cmp r0, #2
	ldr r0, [r5, #4]
	bne _022602D2
	ldr r0, [r0, #0x18]
	mov r1, #5
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, [r5, #4]
	add r1, sp, #0
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	mov r0, #0x4a
	lsl r0, r0, #2
	cmp r1, r0
	blt _0226036E
	ldrb r0, [r5, #0xa]
	add sp, #4
	add r0, r0, #1
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, pc}
_022602D2:
	mov r1, #4
	ldr r0, [r0, #0x18]
	mvn r1, r1
	mov r2, #0
	bl sub_0200D5DC
	ldr r0, [r5, #4]
	add r1, sp, #0
	ldr r0, [r0, #0x18]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	add r1, sp, #0
	mov r0, #2
	ldrsh r1, [r1, r0]
	sub r0, #0x2a
	cmp r1, r0
	bgt _0226036E
	ldrb r0, [r5, #0xa]
	add sp, #4
	add r0, r0, #1
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, r6, pc}
_02260302:
	ldr r0, [r5, #0]
	bl ov16_0223E018
	add r4, r0, #0
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x18]
	bl sub_0200D0F4
	ldr r0, [r5, #4]
	mov r1, #0
	str r1, [r0, #0x18]
	ldr r2, [r5, #4]
	ldr r1, _02260374 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _02260378 ; =0x00004E2F
	add r1, r2, r1
	bl sub_0200D070
	ldr r2, [r5, #4]
	ldr r1, _02260374 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _0226037C ; =0x00004E2A
	add r1, r2, r1
	bl sub_0200D080
	ldr r2, [r5, #4]
	ldr r1, _02260374 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _02260380 ; =0x00004E27
	add r1, r2, r1
	bl sub_0200D090
	ldr r2, [r5, #4]
	ldr r1, _02260374 ; =0x00000195
	add r0, r4, #0
	ldrb r2, [r2, r1]
	ldr r1, _02260380 ; =0x00004E27
	add r1, r2, r1
	bl sub_0200D0A0
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5, #0]
	bl ov16_02266ABC
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0226036E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_02260374: .word 0x00000195
_02260378: .word 0x00004E2F
_0226037C: .word 0x00004E2A
_02260380: .word 0x00004E27
	thumb_func_end ov16_02260284

	thumb_func_start ov16_02260384
ov16_02260384: ; 0x02260384
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _02260396
	cmp r0, #1
	beq _022603F2
	pop {r3, r4, r5, pc}
_02260396:
	add r1, sp, #0
	ldr r0, [r4, #4]
	add r1, #2
	add r2, sp, #0
	bl sub_0200D550
	ldrb r0, [r4, #0xb]
	add r2, sp, #0
	cmp r0, #0
	bne _022603C6
	mov r1, #2
	ldrsh r0, [r2, r1]
	add r0, r0, #5
	strh r0, [r2, #2]
	mov r0, #0xc
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	cmp r0, r3
	blt _022603E0
	strh r3, [r2, #2]
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	b _022603E0
_022603C6:
	mov r1, #2
	ldrsh r0, [r2, r1]
	sub r0, r0, #5
	strh r0, [r2, #2]
	mov r0, #0xc
	ldrsh r3, [r4, r0]
	ldrsh r0, [r2, r1]
	cmp r0, r3
	bgt _022603E0
	strh r3, [r2, #2]
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
_022603E0:
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl sub_0200D4C4
	pop {r3, r4, r5, pc}
_022603F2:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02260384

	thumb_func_start ov16_0226040C
ov16_0226040C: ; 0x0226040C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	beq _0226041E
	cmp r1, #1
	beq _0226044E
	b _02260462
_0226041E:
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	cmp r0, #0
	beq _02260436
	add r0, r4, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r4, #0x4d
	sub r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02260436:
	add r0, r4, #0
	mov r1, #0
	bl ov16_022676A8
	add r0, r4, #0
	mov r1, #1
	bl ov16_02267620
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_0226044E:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0226047E
	add r0, r1, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02260462:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl ov16_02266ABC
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200DA58
_0226047E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0226040C

	thumb_func_start ov16_02260480
ov16_02260480: ; 0x02260480
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4]
	add r5, r0, #0
	cmp r1, #0
	bne _022604A0
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022604C4
	add r0, r1, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022604A0:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl ov16_02266ABC
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200DA58
	add r0, r4, #0
	mov r1, #0
	bl ov16_02267620
_022604C4:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02260480

	thumb_func_start ov16_022604C8
ov16_022604C8: ; 0x022604C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	add r6, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	add r5, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r1, r0, #0
	ldrb r0, [r4, #9]
	cmp r1, r0
	beq _0226050A
	ldr r0, [r4, #0]
	bl ov16_0223F35C
	str r0, [sp, #8]
	b _0226050E
_0226050A:
	mov r0, #0
	str r0, [sp, #8]
_0226050E:
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bls _02260516
	b _02260AB0
_02260516:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260522: ; jump table
	.short _02260534 - _02260522 - 2 ; case 0
	.short _02260570 - _02260522 - 2 ; case 1
	.short _0226065E - _02260522 - 2 ; case 2
	.short _02260674 - _02260522 - 2 ; case 3
	.short _02260686 - _02260522 - 2 ; case 4
	.short _02260880 - _02260522 - 2 ; case 5
	.short _022608F0 - _02260522 - 2 ; case 6
	.short _02260A24 - _02260522 - 2 ; case 7
	.short _02260A86 - _02260522 - 2 ; case 8
_02260534:
	mov r0, #0
	add r1, r4, #0
	add r2, sp, #0x40
_0226053A:
	ldrh r3, [r1, #0x24]
	add r1, r1, #2
	strh r3, [r2]
	add r3, r4, r0
	add r3, #0x2c
	ldrb r3, [r3]
	strh r3, [r2, #8]
	add r3, r4, r0
	add r3, #0x30
	ldrb r3, [r3]
	add r0, r0, #1
	strh r3, [r2, #0x10]
	add r2, r2, #2
	cmp r0, #4
	blt _0226053A
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	add r1, r4, #0
	add r1, #0x34
	ldrb r1, [r1]
	add r2, sp, #0x40
	bl ov16_0226AC98
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
_02260570:
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r5, #0
	tst r1, r0
	beq _022605F4
	ldr r0, [r4, #0]
	bl ov16_0223F228
	cmp r0, #0
	beq _02260594
	cmp r0, #1
	beq _022605C0
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02260594:
	mov r0, #2
	add r1, sp, #0x10
	strb r0, [r1, #0xd]
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	ldrb r2, [r4, #9]
	mov r3, #0
	lsl r0, r0, #8
	orr r0, r2
	str r0, [sp, #0x20]
	ldr r0, _022608C8 ; =0x00000399
	add r2, sp, #0x1c
	strh r0, [r1, #0xe]
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov16_0223FB24
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_022605C0:
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223E1B4
	ldr r1, _022608CC ; =0x000004CA
	add r1, r0, r1
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	add r1, r6, #0
	add r2, sp, #0x1c
	bl ov16_0223FB24
	add r1, r4, #0
	add r1, #0x35
	strb r0, [r1]
	mov r0, #2
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_022605F4:
	mov r1, #0x20
	add r2, r5, #0
	tst r2, r1
	beq _02260614
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E0D8
	str r0, [sp, #0x20]
	ldr r1, _022608D0 ; =0x0000039A
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	b _0226064A
_02260614:
	lsl r1, r1, #4
	tst r1, r5
	beq _02260632
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E0D8
	str r0, [sp, #0x20]
	ldr r1, _022608D4 ; =0x000004C6
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	b _0226064A
_02260632:
	add r2, r4, #0
	mov r1, #2
	add r3, sp, #0x10
	strb r1, [r3, #0xd]
	add r2, #0x23
	ldrb r2, [r2]
	ldrb r1, [r4, #9]
	sub r0, #0x67
	lsl r2, r2, #8
	orr r1, r2
	str r1, [sp, #0x20]
	strh r0, [r3, #0xe]
_0226064A:
	ldr r0, [r4, #0]
	add r1, r6, #0
	add r2, sp, #0x1c
	mov r3, #0
	bl ov16_0223FB24
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0226065E:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	bl sub_0201D724
	cmp r0, #0
	bne _02260690
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02260674:
	ldr r0, [r4, #4]
	bl ov16_0226757C
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0]
	bl ov16_02264798
	mov r0, #4
	strb r0, [r4, #0xa]
_02260686:
	add r0, r6, #0
	bl ov16_02269348
	cmp r0, #0
	bne _02260692
_02260690:
	b _02260AB0
_02260692:
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r5, r0, #0
	ldrb r1, [r4, #9]
	add r0, sp, #0x10
	add r2, r4, #0
	strb r1, [r0, #1]
	add r1, r4, #0
	add r1, #0x34
	ldrb r1, [r1]
	add r2, #0x3b
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	strb r1, [r0, #2]
	mov r1, #0x36
	ldrsh r1, [r4, r1]
	strh r1, [r0, #4]
	ldrh r1, [r4, #0x38]
	strh r1, [r0, #6]
	add r1, r4, #0
	add r1, #0x3a
	ldrb r1, [r1]
	strb r1, [r0, #3]
	ldrb r1, [r4, #9]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_0223EC58
	add r1, sp, #0x10
	strb r0, [r1, #8]
	ldr r1, _022608D8 ; =0x00000197
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _022607A2
	add r0, r6, #0
	mov r1, #1
	bl ov16_0226BCCC
	ldr r0, [r4, #0]
	bl ov16_0223EBEC
	mov r1, #1
	tst r0, r1
	beq _02260714
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #6
	bl ov16_02268C04
	b _02260798
_02260714:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _02260738
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0xa
	bl ov16_02268C04
	b _02260798
_02260738:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #0x20
	tst r0, r1
	beq _0226075A
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #8
	bl ov16_02268C04
	b _02260798
_0226075A:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r0, #4
	bne _02260784
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02260784
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #4
	bl ov16_02268C04
	b _02260798
_02260784:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #3
	bl ov16_02268C04
_02260798:
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223F288
	b _02260844
_022607A2:
	ldr r0, [r4, #0]
	bl ov16_0223EBEC
	mov r1, #1
	tst r0, r1
	beq _022607C4
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #5
	bl ov16_02268C04
	b _0226083C
_022607C4:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _022607E8
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #9
	bl ov16_02268C04
	b _0226083C
_022607E8:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #0x20
	tst r0, r1
	beq _0226080A
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #7
	bl ov16_02268C04
	b _0226083C
_0226080A:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r0, #4
	beq _02260828
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl ov16_02268C04
	b _0226083C
_02260828:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #2
	bl ov16_02268C04
_0226083C:
	ldr r1, _022608D8 ; =0x00000197
	ldr r0, [sp, #0xc]
	mov r2, #1
	strb r2, [r0, r1]
_02260844:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x1c
	bl ov16_0226914C
	add r1, r4, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x10
	add r2, #0x16
	bl ov16_02269168
	add r0, r6, #0
	bl ov16_022691BC
	add r0, r7, #0
	bl sub_02006CA8
	add r0, r5, #0
	bl sub_02006CA8
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02260878
	bl ov16_02268468
_02260878:
	mov r0, #5
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02260880:
	ldr r0, _022608DC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _022608B0
	ldr r0, [r4, #0]
	mov r5, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _022608B0
_02260896:
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov16_0223DF14
	add r0, #0x28
	bl ov16_0226737C
	ldr r0, [r4, #0]
	add r5, r5, #1
	bl ov16_0223DF1C
	cmp r5, r0
	blt _02260896
_022608B0:
	add r0, r6, #0
	bl ov16_0226925C
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0xc]
	cmp r0, r1
	beq _02260900
	mov r0, #0xa
	strb r0, [r4, #0xb]
	ldr r0, _022608E0 ; =0x000005DD
	b _022608E4
	; .align 2, 0
_022608C8: .word 0x00000399
_022608CC: .word 0x000004CA
_022608D0: .word 0x0000039A
_022608D4: .word 0x000004C6
_022608D8: .word 0x00000197
_022608DC: .word 0x021BF67C
_022608E0: .word 0x000005DD
_022608E4:
	bl sub_02005748
	mov r0, #6
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_022608F0:
	add r0, r6, #0
	bl ov16_02269348
	cmp r0, #1
	beq _02260902
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _02260902
_02260900:
	b _02260AB0
_02260902:
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bls _0226090A
	b _02260A12
_0226090A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260916: ; jump table
	.short _02260A12 - _02260916 - 2 ; case 0
	.short _02260920 - _02260916 - 2 ; case 1
	.short _02260934 - _02260916 - 2 ; case 2
	.short _02260980 - _02260916 - 2 ; case 3
	.short _022609CC - _02260916 - 2 ; case 4
_02260920:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _02260A16
	mov r0, #7
	strb r0, [r4, #0xa]
	b _02260A16
_02260934:
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r5, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl ov16_02268C04
	add r0, r6, #0
	mov r1, #0
	bl ov16_0226BCCC
	ldr r0, [sp, #8]
	bl ov16_0226846C
	ldr r0, [r4, #4]
	bl ov16_022675AC
	ldr r0, [sp, #0xc]
	bl ov16_022647D8
	add r0, r5, #0
	bl sub_02006CA8
	add r0, r7, #0
	bl sub_02006CA8
	b _02260A16
_02260980:
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r5, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl ov16_02268C04
	add r0, r6, #0
	mov r1, #0
	bl ov16_0226BCCC
	ldr r0, [sp, #8]
	bl ov16_0226846C
	ldr r0, [r4, #4]
	bl ov16_022675AC
	ldr r0, [sp, #0xc]
	bl ov16_022647D8
	add r0, r5, #0
	bl sub_02006CA8
	add r0, r7, #0
	bl sub_02006CA8
	b _02260A16
_022609CC:
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r5, r0, #0
	add r0, r6, #0
	bl ov16_0226D088
	cmp r0, #1
	bne _022609F4
	ldr r0, [sp, #8]
	bl ov16_0226846C
	mov r0, #0xff
	str r0, [r4, #0xc]
_022609F4:
	mov r3, #0
	str r3, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl ov16_02268C04
	add r0, r7, #0
	bl sub_02006CA8
	add r0, r5, #0
	bl sub_02006CA8
	b _02260A16
_02260A12:
	bl sub_02022974
_02260A16:
	add r0, r6, #0
	bl ov16_02269218
	mov r0, #8
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_02260A24:
	add r0, r6, #0
	bl ov16_02269348
	cmp r0, #1
	bne _02260AB0
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r5, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl ov16_02268C04
	add r0, r6, #0
	mov r1, #0
	bl ov16_0226BCCC
	ldr r0, [sp, #8]
	bl ov16_0226846C
	ldr r0, [r4, #4]
	bl ov16_022675AC
	ldr r0, [sp, #0xc]
	bl ov16_022647D8
	add r0, r6, #0
	bl ov16_02269218
	mov r0, #8
	strb r0, [r4, #0xa]
	add r0, r5, #0
	bl sub_02006CA8
	add r0, r7, #0
	bl sub_02006CA8
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_02260A86:
	add r0, r6, #0
	bl ov16_0226BCD0
	cmp r0, #1
	bne _02260AB0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	ldr r2, [r4, #0xc]
	bl ov16_022656D4
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
_02260AB0:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_022604C8

	thumb_func_start ov16_02260AB4
ov16_02260AB4: ; 0x02260AB4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov14_022243BC
	add r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_022656D4
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02260AB4

	thumb_func_start ov16_02260AE4
ov16_02260AE4: ; 0x02260AE4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02260AE4

	thumb_func_start ov16_02260B04
ov16_02260B04: ; 0x02260B04
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223ED6C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF10
	mov r2, #0
	ldrb r1, [r4, #9]
	add r3, r2, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	mov r1, #0x1a
	bl sub_020759F0
	ldr r2, _02260B7C ; =0x0226F194
	lsl r1, r5, #1
	ldrb r2, [r2, r1]
	mul r2, r0
	add r0, r2, #0
	ldr r2, _02260B80 ; =0x0226F195
	ldrb r1, [r2, r1]
	bl sub_020E1F6C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F4BC
	mov r1, #0xff
	bl sub_020E1F6C
	cmp r1, r5
	ldr r0, [r4, #0]
	bgt _02260B5C
	ldrb r1, [r4, #9]
	mov r2, #4
	bl ov16_022656D4
	b _02260B64
_02260B5C:
	ldrb r1, [r4, #9]
	mov r2, #5
	bl ov16_022656D4
_02260B64:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02260B7C: .word 0x0226F194
_02260B80: .word 0x0226F195
	thumb_func_end ov16_02260B04

	thumb_func_start ov16_02260B84
ov16_02260B84: ; 0x02260B84
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r2, #4
	bl ov16_022656D4
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02260B84

	thumb_func_start ov16_02260BAC
ov16_02260BAC: ; 0x02260BAC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #0
	bl ov16_0223F530
	cmp r0, #1
	bne _02260BC6
	ldr r0, [r4, #0]
	bl ov16_0226474C
_02260BC6:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _02260BD6
	cmp r0, #4
	bhi _02260BD6
	cmp r0, #2
	bne _02260BDC
_02260BD6:
	ldr r0, [r4, #0]
	bl ov16_02264730
_02260BDC:
	add r2, sp, #0
	ldrb r1, [r4, #9]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_022656D4
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02260BAC

	thumb_func_start ov16_02260C00
ov16_02260C00: ; 0x02260C00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	add r7, r0, #0
	ldrb r1, [r4, #0x1d]
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	str r0, [sp, #0x10]
	ldrb r1, [r4, #0x1d]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r1, r0, #0
	ldrb r0, [r4, #0x1d]
	cmp r1, r0
	beq _02260C3A
	ldr r0, [r4, #0]
	bl ov16_0223F35C
	add r5, r0, #0
	b _02260C3C
_02260C3A:
	mov r5, #0
_02260C3C:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #3
	bls _02260C48
	b _02260D7A
_02260C48:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260C54: ; jump table
	.short _02260C5C - _02260C54 - 2 ; case 0
	.short _02260D00 - _02260C54 - 2 ; case 1
	.short _02260D26 - _02260C54 - 2 ; case 2
	.short _02260D6C - _02260C54 - 2 ; case 3
_02260C5C:
	add r0, r7, #0
	bl ov16_02269348
	cmp r0, #0
	bne _02260C68
	b _02260DA2
_02260C68:
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	add r1, r0, #0
	mov r2, #2
	add r0, sp, #0x14
	strb r2, [r0, #0x15]
	ldrb r2, [r4, #0x1f]
	ldrb r3, [r4, #0x1d]
	lsl r2, r2, #8
	orr r2, r3
	str r2, [sp, #0x2c]
	ldr r2, _02260DA8 ; =0x00000399
	mov r3, #0
	strh r2, [r0, #0x16]
	ldr r0, [r4, #0]
	add r2, sp, #0x28
	bl ov16_0223FB24
	add r0, r7, #0
	bl ov16_02269218
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	str r0, [sp, #0xc]
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r5, sp, #0x14
	str r0, [sp, #8]
	mov r2, #0
	add r3, r4, #0
	add r6, r5, #0
_02260CB0:
	ldrh r0, [r3, #0xc]
	add r1, r4, r2
	add r2, r2, #1
	strh r0, [r5]
	ldrb r0, [r1, #0x14]
	add r3, r3, #2
	add r5, r5, #2
	strb r0, [r6, #8]
	ldrb r0, [r1, #0x18]
	strb r0, [r6, #0xc]
	add r6, r6, #1
	cmp r2, #4
	blt _02260CB0
	ldrb r1, [r4, #0x1e]
	add r0, sp, #0x14
	add r2, r7, #0
	strb r1, [r0, #0x10]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x14
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	mov r3, #0xb
	bl ov16_02268C04
	ldr r0, [sp, #0xc]
	bl sub_02006CA8
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #0x4c
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02260D00:
	add r0, r7, #0
	bl ov16_0226925C
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #8]
	cmp r0, r1
	beq _02260DA2
	ldr r0, _02260DAC ; =0x000005DD
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #0x4c
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02260D26:
	ldr r0, [r4, #8]
	cmp r0, #0xff
	beq _02260D52
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02260D52
	add r0, r7, #0
	mov r1, #0
	bl ov16_0226BCCC
	add r0, r5, #0
	bl ov16_0226846C
	ldr r0, [r4, #4]
	bl ov16_022675AC
	ldr r0, [sp, #0x10]
	bl ov16_022647D8
_02260D52:
	ldrb r1, [r4, #0x1d]
	ldr r0, [r4, #0]
	ldr r2, [r4, #8]
	bl ov16_02265790
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r4, #0x20
	add sp, #0x4c
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, r7, pc}
_02260D6C:
	add r0, r4, #0
	add r0, #0x20
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x20
	strb r1, [r0]
_02260D7A:
	add r0, r7, #0
	bl ov16_0226BCD0
	cmp r0, #1
	bne _02260DA2
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223F234
	ldrb r1, [r4, #0x1d]
	ldrb r2, [r4, #0x1c]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02260DA2:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02260DA8: .word 0x00000399
_02260DAC: .word 0x000005DD
	thumb_func_end ov16_02260C00

	thumb_func_start ov16_02260DB0
ov16_02260DB0: ; 0x02260DB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [r6, #0]
	bl ov16_0223DF0C
	add r4, r0, #0
	ldr r0, [r6, #0]
	bl ov16_0223DF10
	str r0, [sp, #0xc]
	ldr r0, _02260E74 ; =0x00000101
	tst r0, r4
	bne _02260DE6
	ldr r0, [r6, #0]
	bl ov16_0223EBEC
	mov r1, #1
	tst r0, r1
	bne _02260DE6
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6, #0]
	bl ov16_0223E208
	cmp r0, #0
	bne _02260DF6
_02260DE6:
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6, #0]
	bl ov14_0221FCF4
	cmp r0, #0xff
	beq _02260E6E
	add r4, r0, #1
	b _02260E4E
_02260DF6:
	mov r7, #0
	add r4, r7, #0
	add r5, sp, #0x10
_02260DFC:
	add r0, r4, #0
	bl sub_020787CC
	ldrh r1, [r6, #0x22]
	tst r0, r1
	bne _02260E0E
	add r0, r4, #1
	stmia r5!, {r0}
	add r7, r7, #1
_02260E0E:
	add r4, r4, #1
	cmp r4, #4
	blt _02260DFC
	ldr r0, [r6, #0]
	bl ov16_0223F4BC
	add r1, r7, #0
	bl sub_020E1F6C
	lsl r1, r1, #2
	add r0, sp, #0x10
	ldr r4, [r0, r1]
	mov r0, #1
	sub r3, r4, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	lsl r3, r3, #1
	add r3, r6, r3
	ldrb r2, [r6, #0x1d]
	ldrh r3, [r3, #0xc]
	ldr r0, [r6, #0]
	ldr r1, [sp, #0xc]
	bl ov16_02253954
	str r0, [sp]
	ldrb r3, [r6, #0x1d]
	ldr r0, [r6, #0]
	ldr r1, [sp, #0xc]
	mov r2, #0xb
	bl ov16_0225B540
_02260E4E:
	ldrb r1, [r6, #0x1d]
	ldr r0, [r6, #0]
	add r2, r4, #0
	bl ov16_02265790
	ldrb r1, [r6, #0x1d]
	ldrb r2, [r6, #0x1c]
	ldr r0, [r6, #0]
	bl ov16_02266ABC
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [sp, #8]
	bl sub_0200DA58
_02260E6E:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260E74: .word 0x00000101
	thumb_func_end ov16_02260DB0

	thumb_func_start ov16_02260E78
ov16_02260E78: ; 0x02260E78
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0x1d]
	add r5, r0, #0
	ldrb r2, [r4, #0x1c]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02260E78

	thumb_func_start ov16_02260E98
ov16_02260E98: ; 0x02260E98
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldrb r1, [r5, #0x1d]
	add r6, r0, #0
	ldr r0, [r5, #0]
	add r2, sp, #0
	bl ov16_0223F530
	cmp r0, #1
	bne _02260EB4
	ldr r0, [r5, #0]
	bl ov16_0226474C
_02260EB4:
	add r0, sp, #0
	ldrb r4, [r0]
	cmp r4, #0
	beq _02260EC0
	cmp r4, #4
	bls _02260EC8
_02260EC0:
	ldr r0, [r5, #0]
	bl ov16_02264730
	b _02260EEA
_02260EC8:
	ldr r0, [r5, #0]
	bl ov16_0223DF10
	ldrb r1, [r5, #0x1d]
	add r2, r4, #5
	mov r3, #0
	bl ov16_02252060
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _02260EE4
	ldr r0, _02260F10 ; =0x000001D3
	cmp r1, r0
	bls _02260EEA
_02260EE4:
	ldr r0, [r5, #0]
	bl ov16_02264730
_02260EEA:
	add r2, sp, #0
	ldrb r1, [r5, #0x1d]
	ldrb r2, [r2]
	ldr r0, [r5, #0]
	bl ov16_02265790
	ldrb r1, [r5, #0x1d]
	ldrb r2, [r5, #0x1c]
	ldr r0, [r5, #0]
	bl ov16_02266ABC
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02260F10: .word 0x000001D3
	thumb_func_end ov16_02260E98

	thumb_func_start ov16_02260F14
ov16_02260F14: ; 0x02260F14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	add r5, r0, #0
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r1, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r1, r0
	beq _02260F4E
	ldr r0, [r4, #0]
	bl ov16_0223F35C
	add r6, r0, #0
	b _02260F50
_02260F4E:
	mov r6, #0
_02260F50:
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bhi _02261046
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02260F62: ; jump table
	.short _02260F6A - _02260F62 - 2 ; case 0
	.short _02260FEE - _02260F62 - 2 ; case 1
	.short _0226100E - _02260F62 - 2 ; case 2
	.short _02261042 - _02260F62 - 2 ; case 3
_02260F6A:
	add r0, r5, #0
	bl ov16_02269348
	cmp r0, #0
	bne _02260F76
	b _022610A0
_02260F76:
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r2, sp, #0x10
	add r6, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, #2
_02260F92:
	ldrh r3, [r1, #0x10]
	add r0, r0, #1
	strh r3, [r2]
	ldrh r3, [r1, #0x12]
	strh r3, [r2, #2]
	ldrh r3, [r1, #0x14]
	strh r3, [r2, #4]
	ldrh r3, [r1, #0x16]
	add r1, #8
	strh r3, [r2, #6]
	add r2, #8
	cmp r0, #4
	blt _02260F92
	ldrb r1, [r4, #0xe]
	add r0, sp, #0x30
	add r0, #2
	strb r1, [r0]
	ldrh r0, [r4, #0x30]
	ldrb r1, [r4, #0xe]
	bl ov16_02269368
	add r1, sp, #0x30
	add r1, #2
	strb r0, [r1, #1]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	add r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0xc
	bl ov16_02268C04
	add r0, r7, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl sub_02006CA8
	ldrb r0, [r4, #0xf]
	add sp, #0x34
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_02260FEE:
	add r0, r5, #0
	bl ov16_0226925C
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #8]
	cmp r0, r1
	beq _022610A0
	ldr r0, _022610A4 ; =0x000005DD
	bl sub_02005748
	ldrb r0, [r4, #0xf]
	add sp, #0x34
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_0226100E:
	ldr r0, [r4, #8]
	cmp r0, #0xff
	beq _02261038
	ldr r0, [r4, #4]
	bl ov16_022675AC
	add r0, r7, #0
	bl ov16_022647D8
	add r0, r6, #0
	bl ov16_0226846C
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261038
	add r0, r5, #0
	mov r1, #0
	bl ov16_0226BCCC
_02261038:
	ldrb r0, [r4, #0xf]
	add sp, #0x34
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_02261042:
	add r0, r0, #1
	strb r0, [r4, #0xf]
_02261046:
	add r0, r5, #0
	bl ov16_0226BCD0
	cmp r0, #1
	bne _022610A0
	ldr r0, [r4, #0]
	ldr r5, [r4, #8]
	bl ov16_0223DF0C
	add r6, r0, #0
	cmp r5, #0xff
	beq _02261080
	ldr r0, [r4, #0]
	add r1, sp, #0xc
	bl ov16_0223F858
	mov r0, #2
	tst r0, r6
	ldr r0, [r4, #8]
	beq _02261078
	add r1, r0, #1
	add r0, sp, #0xc
	ldrb r0, [r0, r1]
	add r5, r0, #1
	b _02261080
_02261078:
	sub r1, r0, #1
	add r0, sp, #0xc
	ldrb r0, [r0, r1]
	add r5, r0, #1
_02261080:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	add r2, r5, #0
	bl ov16_022658CC
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	ldr r0, [sp, #8]
	bl sub_0200DA58
_022610A0:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022610A4: .word 0x000005DD
	thumb_func_end ov16_02260F14

	thumb_func_start ov16_022610A8
ov16_022610A8: ; 0x022610A8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223DF10
	add r1, r0, #0
	ldrb r3, [r5, #0xd]
	ldr r0, [r5, #0]
	mov r2, #0xb
	bl ov16_0225B45C
	add r4, r0, #1
	cmp r4, #5
	blt _022610CA
	bl sub_02022974
_022610CA:
	ldrb r1, [r5, #0xd]
	ldr r0, [r5, #0]
	add r2, r4, #0
	bl ov16_022658CC
	ldrb r1, [r5, #0xd]
	ldrb r2, [r5, #0xc]
	ldr r0, [r5, #0]
	bl ov16_02266ABC
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_022610A8

	thumb_func_start ov16_022610EC
ov16_022610EC: ; 0x022610EC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022610EC

	thumb_func_start ov16_0226110C
ov16_0226110C: ; 0x0226110C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r7, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #0
	bl ov16_0223F530
	cmp r0, #1
	bne _02261126
	ldr r0, [r4, #0]
	bl ov16_0226474C
_02261126:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261132
	cmp r0, #4
	bls _0226113A
_02261132:
	ldr r0, [r4, #0]
	bl ov16_02264730
	b _022611B8
_0226113A:
	sub r5, r0, #1
	ldrh r0, [r4, #0x30]
	cmp r0, #0x40
	bgt _02261170
	bge _022611B8
	cmp r0, #0x10
	bgt _0226116C
	bge _022611B8
	cmp r0, #8
	bhi _022611B8
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226115A: ; jump table
	.short _0226118E - _0226115A - 2 ; case 0
	.short _022611B8 - _0226115A - 2 ; case 1
	.short _022611B8 - _0226115A - 2 ; case 2
	.short _022611B8 - _0226115A - 2 ; case 3
	.short _022611B8 - _0226115A - 2 ; case 4
	.short _022611B8 - _0226115A - 2 ; case 5
	.short _022611B8 - _0226115A - 2 ; case 6
	.short _022611B8 - _0226115A - 2 ; case 7
	.short _022611B8 - _0226115A - 2 ; case 8
_0226116C:
	cmp r0, #0x20
	b _022611B8
_02261170:
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	bgt _0226117E
	bge _022611B8
	cmp r0, #0x80
	b _022611B8
_0226117E:
	lsl r1, r2, #1
	cmp r0, r1
	bgt _02261188
	beq _0226119C
	b _022611B8
_02261188:
	lsl r1, r2, #2
	cmp r0, r1
	b _022611B8
_0226118E:
	ldrb r0, [r4, #0xd]
	cmp r0, r5
	bne _022611B8
	ldr r0, [r4, #0]
	bl ov16_02264730
	b _022611B8
_0226119C:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223E208
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov16_0223E208
	cmp r6, r0
	beq _022611B8
	ldr r0, [r4, #0]
	bl ov16_02264730
_022611B8:
	add r2, sp, #0
	ldrb r1, [r4, #0xd]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_022658CC
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0226110C

	thumb_func_start ov16_022611DC
ov16_022611DC: ; 0x022611DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E064
	ldrb r1, [r4, #0xe]
	add r5, r0, #0
	cmp r1, #0x1e
	bls _022611F8
	bl _02261D22
_022611F8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02261204: ; jump table
	.short _02261242 - _02261204 - 2 ; case 0
	.short _02261298 - _02261204 - 2 ; case 1
	.short _02261324 - _02261204 - 2 ; case 2
	.short _02261338 - _02261204 - 2 ; case 3
	.short _02261396 - _02261204 - 2 ; case 4
	.short _022614DE - _02261204 - 2 ; case 5
	.short _0226151A - _02261204 - 2 ; case 6
	.short _0226156A - _02261204 - 2 ; case 7
	.short _0226170E - _02261204 - 2 ; case 8
	.short _0226178C - _02261204 - 2 ; case 9
	.short _022617C8 - _02261204 - 2 ; case 10
	.short _022617EA - _02261204 - 2 ; case 11
	.short _02261CD2 - _02261204 - 2 ; case 12
	.short _02261870 - _02261204 - 2 ; case 13
	.short _02261CD2 - _02261204 - 2 ; case 14
	.short _02261924 - _02261204 - 2 ; case 15
	.short _02261D00 - _02261204 - 2 ; case 16
	.short _0226182A - _02261204 - 2 ; case 17
	.short _02261CD2 - _02261204 - 2 ; case 18
	.short _022619D6 - _02261204 - 2 ; case 19
	.short _02261CD2 - _02261204 - 2 ; case 20
	.short _02261A1C - _02261204 - 2 ; case 21
	.short _02261AB6 - _02261204 - 2 ; case 22
	.short _02261AEC - _02261204 - 2 ; case 23
	.short _02261D00 - _02261204 - 2 ; case 24
	.short _0226182A - _02261204 - 2 ; case 25
	.short _02261CD2 - _02261204 - 2 ; case 26
	.short _022619D6 - _02261204 - 2 ; case 27
	.short _02261CD2 - _02261204 - 2 ; case 28
	.short _02261B5E - _02261204 - 2 ; case 29
	.short _02261D00 - _02261204 - 2 ; case 30
_02261242:
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	bl ov16_0226CD08
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	mov r1, #0
	mov r2, #3
	str r1, [sp]
	mov r0, #7
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #5
	add r3, r1, #0
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0xa
	add r3, r1, #0
	ldr r2, _022615C0 ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl sub_02003178
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261298:
	bl sub_0200384C
	cmp r0, #0
	bne _02261360
	ldr r0, [r4, #0]
	bl ov16_0223B384
	mov r0, #5
	mov r1, #0x34
	bl sub_02018144
	str r0, [r4, #4]
	mov r1, #0
	mov r2, #0x34
	bl sub_020D5124
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	str r1, [r0, #0]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223E16C
	ldr r1, [r4, #4]
	str r0, [r1, #4]
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0xc]
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x26
	strb r1, [r0]
	ldr r0, [r4, #0]
	bl ov16_0223E1AC
	ldr r1, [r4, #4]
	str r0, [r1, #8]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #4]
	str r1, [r0, #0x10]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x10]
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x14]
	add r0, #0x22
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x15]
	add r0, #0x23
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x16]
	add r0, #0x24
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [r4, #4]
	str r1, [r0, #0x18]
	ldr r0, [r4, #4]
	bl ov12_022264F4
	add sp, #0x1fc
	mov r0, #3
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261324:
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x10]
	add r0, #0x25
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl ov12_022264F4
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
_02261338:
	ldr r1, [r4, #4]
	add r0, r1, #0
	add r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261360
	mov r0, #0
	add r1, #0x26
	strb r0, [r1]
	ldr r0, [r4, #4]
	add r0, #0x25
	ldrb r0, [r0]
	strb r0, [r4, #0x10]
	ldr r1, [r4, #4]
	ldrh r0, [r1, #0x1c]
	cmp r0, #0
	beq _0226138C
	ldrb r0, [r1, #0x1e]
	cmp r0, #3
	bls _02261364
_02261360:
	bl _02261D22
_02261364:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261370: ; jump table
	.short _02261378 - _02261370 - 2 ; case 0
	.short _02261378 - _02261370 - 2 ; case 1
	.short _02261382 - _02261370 - 2 ; case 2
	.short _02261382 - _02261370 - 2 ; case 3
_02261378:
	add sp, #0x1fc
	mov r0, #4
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261382:
	add sp, #0x1fc
	mov r0, #6
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0226138C:
	add sp, #0x1fc
	mov r0, #6
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261396:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223DF20
	str r0, [sp, #0x14]
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _022613C2
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _022613C2
	ldrb r1, [r4, #0xd]
	mov r0, #1
	add r7, r1, #0
	and r7, r0
	b _022613C4
_022613C2:
	ldrb r7, [r4, #0xd]
_022613C4:
	ldr r0, [r4, #8]
	mov r1, #6
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl sub_0207A014
	ldr r0, [sp, #0x14]
	mov r6, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _02261412
	mov r0, #6
	mul r0, r7
	add r5, r4, r0
_022613E2:
	ldrb r2, [r5, #0x18]
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0223DFAC
	add r1, r0, #0
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl sub_0207A048
	ldr r1, [r4, #8]
	ldrb r0, [r5, #0x18]
	ldr r1, [r1, #4]
	add r5, r5, #1
	add r1, r1, r6
	add r1, #0x2c
	strb r0, [r1]
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	bl sub_0207A0F8
	cmp r6, r0
	blt _022613E2
_02261412:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0]
	ldr r0, [r0, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	mov r1, #5
	ldr r0, [r0, #4]
	str r1, [r0, #0xc]
	ldr r1, [r4, #8]
	mov r0, #0
	ldr r1, [r1, #4]
	strb r0, [r1, #0x11]
	ldr r1, [r4, #8]
	ldr r1, [r1, #4]
	add r1, #0x36
	strb r0, [r1]
	ldr r1, [r4, #8]
	ldr r1, [r1, #4]
	strh r0, [r1, #0x24]
	ldr r0, [r4, #8]
	mov r1, #2
	ldr r0, [r0, #4]
	add r0, #0x35
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldrh r1, [r0, #0x1c]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	strh r1, [r0, #0x22]
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x1e]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	add r0, #0x33
	strb r1, [r0]
	ldr r0, [r4, #4]
	ldr r1, [r0, #0x10]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x28]
	ldr r0, [r4, #8]
	ldrb r1, [r4, #0x10]
	ldr r0, [r0, #4]
	add r0, #0x32
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	ldr r2, [r4, #8]
	add r0, r2, r0
	ldrb r1, [r0, #0xc]
	ldr r0, [r2, #4]
	strb r1, [r0, #0x14]
	ldrb r1, [r4, #0xd]
	ldr r5, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r0, r5, r0
	ldrb r1, [r0, #0xc]
	ldr r0, [r5, #4]
	strb r1, [r0, #0x15]
	ldrb r0, [r4, #0xf]
	cmp r0, #4
	bne _022614A8
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x18]
	ldrb r0, [r4, #0xd]
	b _022614BE
_022614A8:
	ldrb r0, [r4, #0xd]
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x18]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223E258
_022614BE:
	add r0, r4, r0
	add r0, #0x30
	ldrb r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r1, [r0, #0x1c]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl ov12_0221FC20
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022614DE:
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	add r0, r1, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261572
	add r1, #0x32
	ldrb r0, [r1]
	mov r1, #0
	strb r0, [r4, #0x10]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	add r0, #0x36
	strb r1, [r0]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #6
	bne _02261510
	add sp, #0x1fc
	mov r0, #2
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261510:
	add sp, #0x1fc
	mov r0, #6
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0226151A:
	ldr r0, [r4, #0]
	bl ov16_0223B430
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	ldrb r1, [r4, #0x10]
	bl ov16_0226CD10
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	mov r1, #5
	str r0, [sp, #4]
	mov r2, #3
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r1, #0xa
	str r0, [sp, #4]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r2, _022615C0 ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl sub_02003178
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0226156A:
	bl sub_0200384C
	cmp r0, #0
	beq _02261574
_02261572:
	b _02261D22
_02261574:
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #0
	bl sub_02015738
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x1c]
	cmp r0, #0
	bne _0226158A
	b _022616F6
_0226158A:
	mov r0, #9
	strb r0, [r4, #0xe]
	ldr r0, [r4, #4]
	ldrb r1, [r0, #0x1e]
	cmp r1, #3
	bls _02261598
	b _022616FA
_02261598:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022615A4: ; jump table
	.short _0226163C - _022615A4 - 2 ; case 0
	.short _022615AC - _022615A4 - 2 ; case 1
	.short _022616F0 - _022615A4 - 2 ; case 2
	.short _0226169A - _022615A4 - 2 ; case 3
_022615AC:
	ldrh r1, [r0, #0x1c]
	ldr r0, _022615C4 ; =0x0000FFE4
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _022615C8
	mov r0, #8
	strb r0, [r4, #0xe]
	b _022616FA
	; .align 2, 0
_022615C0: .word 0x0000FFFF
_022615C4: .word 0x0000FFE4
_022615C8:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bhs _022615E6
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	cmp r0, #3
	beq _022615F0
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	cmp r0, #0x13
	beq _022615F0
_022615E6:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	bhs _02261636
_022615F0:
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x1c]
	cmp r0, #0x17
	ldr r0, [r4, #0]
	bne _02261618
	bl ov16_0223EDAC
	cmp r0, #1
	bne _02261608
	mov r0, #0x11
	strh r0, [r4, #0x12]
	b _022616FA
_02261608:
	mov r1, #0x74
	ldr r0, _02261928 ; =0x000005EC
	mvn r1, r1
	bl sub_02005728
	mov r0, #0x15
	strh r0, [r4, #0x12]
	b _022616FA
_02261618:
	bl ov16_0223EDAC
	cmp r0, #1
	bne _02261626
	mov r0, #0x19
	strh r0, [r4, #0x12]
	b _022616FA
_02261626:
	mov r1, #0x74
	ldr r0, _02261928 ; =0x000005EC
	mvn r1, r1
	bl sub_02005728
	mov r0, #0x1d
	strh r0, [r4, #0x12]
	b _022616FA
_02261636:
	mov r0, #8
	strb r0, [r4, #0xe]
	b _022616FA
_0226163C:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #2
	bhs _0226165A
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	cmp r0, #3
	beq _02261664
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	cmp r0, #0x13
	beq _02261664
_0226165A:
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	cmp r0, #1
	bhs _02261694
_02261664:
	ldr r0, [r4, #4]
	mov r1, #0x26
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _02261694
	ldr r0, [r4, #0]
	bl ov16_0223EDAC
	cmp r0, #1
	bne _02261684
	mov r0, #0x11
	strh r0, [r4, #0x12]
	b _022616FA
_02261684:
	mov r1, #0x74
	ldr r0, _02261928 ; =0x000005EC
	mvn r1, r1
	bl sub_02005728
	mov r0, #0x15
	strh r0, [r4, #0x12]
	b _022616FA
_02261694:
	mov r0, #8
	strb r0, [r4, #0xe]
	b _022616FA
_0226169A:
	ldrh r1, [r0, #0x1c]
	ldr r0, _0226192C ; =0x0000FFC1
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _022616AE
	mov r0, #8
	strb r0, [r4, #0xe]
	b _022616FA
_022616AE:
	cmp r1, #0x37
	ldr r0, [r4, #0]
	bne _022616D2
	bl ov16_0223EDAC
	cmp r0, #1
	bne _022616C2
	mov r0, #0xd
	strh r0, [r4, #0x12]
	b _022616FA
_022616C2:
	mov r1, #0x74
	ldr r0, _02261928 ; =0x000005EC
	mvn r1, r1
	bl sub_02005728
	mov r0, #0xf
	strh r0, [r4, #0x12]
	b _022616FA
_022616D2:
	bl ov16_0223EDAC
	cmp r0, #1
	bne _022616E0
	mov r0, #0xb
	strh r0, [r4, #0x12]
	b _022616FA
_022616E0:
	mov r1, #0x74
	ldr r0, _02261928 ; =0x000005EC
	mvn r1, r1
	bl sub_02005728
	mov r0, #0xf
	strh r0, [r4, #0x12]
	b _022616FA
_022616F0:
	mov r0, #8
	strb r0, [r4, #0xe]
	b _022616FA
_022616F6:
	mov r0, #8
	strb r0, [r4, #0xe]
_022616FA:
	ldrb r0, [r4, #0xe]
	cmp r0, #8
	beq _022617DE
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223B748
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
_0226170E:
	ldr r2, [r4, #4]
	ldrh r0, [r2, #0x1c]
	cmp r0, #0
	bne _0226171E
	mov r1, #0xff
	add r0, sp, #0x1c
	strh r1, [r0]
	b _0226173A
_0226171E:
	add r1, sp, #0x1c
	strh r0, [r1]
	ldrb r0, [r2, #0x1e]
	strb r0, [r1, #2]
	cmp r0, #1
	bhi _0226173A
	ldr r0, [r4, #8]
	ldr r2, [r0, #4]
	ldrb r0, [r2, #0x11]
	add r0, r2, r0
	add r0, #0x2c
	ldrb r0, [r0]
	add r0, r0, #1
	strb r0, [r1, #3]
_0226173A:
	add r3, sp, #0x1c
	ldrb r1, [r4, #0xd]
	mov r2, sp
	ldrh r5, [r3]
	ldr r0, [r4, #0]
	sub r2, r2, #4
	strh r5, [r2]
	ldrh r3, [r3, #2]
	strh r3, [r2, #2]
	ldr r2, [r2, #0]
	bl ov16_02265A70
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
_0226178C:
	ldr r1, _02261930 ; =0x000004B6
	add r0, sp, #0x8c
	strh r1, [r0, #2]
	mov r1, #5
	strb r1, [r0, #1]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x1c]
	str r0, [sp, #0x90]
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, sp, #0x8c
	bl ov16_0223FB24
	strb r0, [r4, #0x11]
	mov r0, #0x1e
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022617C8:
	ldrb r0, [r4, #0x11]
	bl sub_0201D724
	cmp r0, #0
	bne _022617DE
	ldrb r0, [r4, #0x17]
	sub r0, r0, #1
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _022617E0
_022617DE:
	b _02261D22
_022617E0:
	ldrh r0, [r4, #0x12]
	add sp, #0x1fc
	add sp, #0x14
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022617EA:
	ldrb r1, [r4, #0xd]
	mov r0, #9
	add r2, sp, #0x1b8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r3, sp, #0x1b8
	bl ov16_02264408
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_0226182A:
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, sp, #0x160
	ldrb r0, [r0, #0x11]
	mov r3, #1
	lsl r5, r0, #1
	mov r0, #9
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266B78
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov16_0223DF14
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r3, sp, #0x160
	bl ov16_02264408
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261870:
	ldr r0, [r4, #4]
	add r2, sp, #0x108
	ldrh r0, [r0, #0x1c]
	cmp r0, #0x37
	bne _022618AE
	ldrb r0, [r4, #0xd]
	mov r1, #0
	add r3, r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x36
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266B78
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r3, sp, #0x108
	bl ov16_02264408
	b _02261918
_022618AE:
	cmp r0, #0x38
	bne _022618E6
	ldrb r0, [r4, #0xd]
	mov r1, #0
	add r3, r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x74
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266B78
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r3, sp, #0x108
	bl ov16_02264408
	b _02261918
_022618E6:
	ldrb r1, [r4, #0xd]
	mov r0, #0xc
	mov r3, #1
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266B78
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r3, sp, #0x108
	bl ov16_02264408
_02261918:
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261924:
	ldr r2, _02261934 ; =0x000004B3
	b _02261938
	; .align 2, 0
_02261928: .word 0x000005EC
_0226192C: .word 0x0000FFC1
_02261930: .word 0x000004B6
_02261934: .word 0x000004B3
_02261938:
	add r0, sp, #0x68
	strh r2, [r0, #2]
	mov r1, #0xc
	strb r1, [r0, #1]
	ldrb r1, [r4, #0xd]
	ldr r3, [r4, #8]
	add r3, r3, r1
	ldrb r3, [r3, #0xc]
	lsl r3, r3, #8
	orr r1, r3
	str r1, [sp, #0x6c]
	ldr r1, [r4, #4]
	ldrh r1, [r1, #0x1c]
	sub r1, #0x37
	cmp r1, #7
	bhi _022619AA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02261964: ; jump table
	.short _02261998 - _02261964 - 2 ; case 0
	.short _022619A2 - _02261964 - 2 ; case 1
	.short _02261974 - _02261964 - 2 ; case 2
	.short _0226197A - _02261964 - 2 ; case 3
	.short _02261980 - _02261964 - 2 ; case 4
	.short _02261986 - _02261964 - 2 ; case 5
	.short _0226198C - _02261964 - 2 ; case 6
	.short _02261992 - _02261964 - 2 ; case 7
_02261974:
	mov r0, #1
	str r0, [sp, #0x70]
	b _022619AA
_0226197A:
	mov r0, #2
	str r0, [sp, #0x70]
	b _022619AA
_02261980:
	mov r0, #3
	str r0, [sp, #0x70]
	b _022619AA
_02261986:
	mov r0, #6
	str r0, [sp, #0x70]
	b _022619AA
_0226198C:
	mov r0, #4
	str r0, [sp, #0x70]
	b _022619AA
_02261992:
	mov r0, #5
	str r0, [sp, #0x70]
	b _022619AA
_02261998:
	add r1, r2, #1
	strh r1, [r0, #2]
	mov r1, #0
	strb r1, [r0, #1]
	b _022619AA
_022619A2:
	add r1, r2, #2
	strh r1, [r0, #2]
	mov r1, #2
	strb r1, [r0, #1]
_022619AA:
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, sp, #0x68
	bl ov16_0223FB24
	strb r0, [r4, #0x11]
	mov r0, #0x1e
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_022619D6:
	ldr r0, [r4, #8]
	mov r1, #0
	ldr r0, [r0, #4]
	add r2, sp, #0xb0
	ldrb r0, [r0, #0x11]
	mov r3, #1
	lsl r5, r0, #1
	mov r0, #0xe
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266B78
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl ov16_0223DF14
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r3, sp, #0xb0
	bl ov16_02264408
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261A1C:
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x11]
	lsl r6, r0, #1
	add r0, r1, r0
	add r0, #0x2c
	ldrb r7, [r0]
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov16_0223F35C
	mov r1, #0
	mov r2, #1
	add r5, r0, #0
	bl sub_020C4CF4
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov16_0223E1F8
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	add r1, r0, #0
	ldr r0, [sp, #0x18]
	bl ov16_0226825C
	add r1, r5, #0
	add r1, #0x25
	strb r0, [r1]
	ldr r0, [r4, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r6, r0, #0
	bl sub_02074470
	ldr r1, [r4, #8]
	mov r2, #0
	ldr r1, [r1, #4]
	ldrh r1, [r1, #0x20]
	sub r0, r0, r1
	str r0, [r5, #0x28]
	add r0, r6, #0
	mov r1, #0xa4
	bl sub_02074470
	str r0, [r5, #0x2c]
	ldr r0, [r4, #8]
	mov r1, #0xa0
	ldr r0, [r0, #4]
	mov r2, #0
	ldrh r0, [r0, #0x20]
	str r0, [r5, #0x30]
	add r0, r6, #0
	bl sub_02074470
	cmp r0, #0
	bne _02261AA2
	add r0, r5, #0
	mov r1, #0
	add r0, #0x4a
	strb r1, [r0]
_02261AA2:
	ldr r1, [r5, #0x30]
	add r0, r5, #0
	bl ov16_022674C4
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261AB6:
	ldr r1, [r4, #8]
	ldr r0, [r4, #0]
	ldr r1, [r1, #4]
	ldrb r1, [r1, #0x11]
	lsl r1, r1, #1
	bl ov16_0223F35C
	add r5, r0, #0
	bl ov16_022674F8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02261AD4
	b _02261D22
_02261AD4:
	mov r2, #1
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #8
	bl ov16_02267084
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261AEC:
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	add r5, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r0, #4]
	ldrb r0, [r1, #0x11]
	ldrh r1, [r1, #0x20]
	lsl r0, r0, #1
	cmp r1, #0
	add r1, sp, #0x1c
	beq _02261B24
	ldr r2, _02261D28 ; =0x000004BE
	strh r2, [r1, #0x2a]
	mov r2, #0x11
	add r1, sp, #0x44
	strb r2, [r1, #1]
	ldr r1, [r4, #8]
	add r1, r1, r0
	ldrb r1, [r1, #0xc]
	lsl r1, r1, #8
	orr r0, r1
	str r0, [sp, #0x48]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0x20]
	str r0, [sp, #0x4c]
	b _02261B3A
_02261B24:
	ldr r2, _02261D2C ; =0x000004E2
	strh r2, [r1, #0x2a]
	mov r2, #2
	add r1, sp, #0x44
	strb r2, [r1, #1]
	ldr r1, [r4, #8]
	add r1, r1, r0
	ldrb r1, [r1, #0xc]
	lsl r1, r1, #8
	orr r0, r1
	str r0, [sp, #0x48]
_02261B3A:
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, sp, #0x44
	bl ov16_0223FB24
	strb r0, [r4, #0x11]
	mov r0, #0x1e
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261B5E:
	ldr r0, [r4, #8]
	mov r5, #0
	ldr r0, [r0, #4]
	ldrb r0, [r0, #0x11]
	lsl r7, r0, #1
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0223F35C
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	add r1, r7, #0
	ldr r3, [r0, #4]
	ldr r0, [r4, #0]
	ldrb r2, [r3, #0x11]
	add r2, r3, r2
	add r2, #0x2c
	ldrb r2, [r2]
	bl ov16_0223DFAC
	mov r1, #0xa0
	add r2, r5, #0
	bl sub_02074470
	cmp r0, #0
	bne _02261B9A
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	add r0, #0x4a
	strb r1, [r0]
_02261B9A:
	ldr r0, [sp, #0x10]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0x28]
	lsl r2, r2, #8
	bl ov16_02267084
	mov r1, #2
	add r0, sp, #0x1c
	strb r1, [r0, #5]
	ldr r0, [r4, #8]
	mov r1, #0xf
	add r0, r0, r7
	ldrb r0, [r0, #0xc]
	mov r2, #5
	lsl r0, r0, #8
	orr r0, r7
	str r0, [sp, #0x24]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #0x1c]
	bl sub_0207CFF0
	cmp r0, #0
	beq _02261BCE
	mov r6, #0
	add r5, r5, #1
_02261BCE:
	ldr r0, [r4, #4]
	mov r1, #0x10
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _02261BE2
	mov r6, #1
	add r5, r5, #1
_02261BE2:
	ldr r0, [r4, #4]
	mov r1, #0x11
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _02261BF6
	mov r6, #2
	add r5, r5, #1
_02261BF6:
	ldr r0, [r4, #4]
	mov r1, #0x12
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _02261C0A
	mov r6, #3
	add r5, r5, #1
_02261C0A:
	ldr r0, [r4, #4]
	mov r1, #0x13
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _02261C1E
	mov r6, #4
	add r5, r5, #1
_02261C1E:
	ldr r0, [r4, #4]
	mov r1, #0x14
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _02261C32
	mov r6, #5
	add r5, r5, #1
_02261C32:
	ldr r0, [r4, #4]
	mov r1, #0x15
	ldrh r0, [r0, #0x1c]
	mov r2, #5
	bl sub_0207CFF0
	cmp r0, #0
	beq _02261C46
	mov r6, #6
	add r5, r5, #1
_02261C46:
	cmp r5, #1
	beq _02261C52
	ldr r1, _02261D30 ; =0x000004CD
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02261CA6
_02261C52:
	cmp r6, #6
	bhi _02261CA6
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261C62: ; jump table
	.short _02261C70 - _02261C62 - 2 ; case 0
	.short _02261C78 - _02261C62 - 2 ; case 1
	.short _02261C80 - _02261C62 - 2 ; case 2
	.short _02261C88 - _02261C62 - 2 ; case 3
	.short _02261C90 - _02261C62 - 2 ; case 4
	.short _02261C98 - _02261C62 - 2 ; case 5
	.short _02261CA0 - _02261C62 - 2 ; case 6
_02261C70:
	ldr r1, _02261D34 ; =0x000004BA
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02261CA6
_02261C78:
	ldr r1, _02261D38 ; =0x000004B7
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02261CA6
_02261C80:
	ldr r1, _02261D3C ; =0x000004B9
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02261CA6
_02261C88:
	ldr r1, _02261D40 ; =0x000004BB
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02261CA6
_02261C90:
	ldr r1, _02261D44 ; =0x000004B8
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02261CA6
_02261C98:
	ldr r1, _02261D48 ; =0x000004BC
	add r0, sp, #0x1c
	strh r1, [r0, #6]
	b _02261CA6
_02261CA0:
	ldr r1, _02261D4C ; =0x000004BD
	add r0, sp, #0x1c
	strh r1, [r0, #6]
_02261CA6:
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, sp, #0x20
	bl ov16_0223FB24
	strb r0, [r4, #0x11]
	mov r0, #0x1e
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261CD2:
	ldr r0, [r4, #0]
	bl ov16_0223E008
	bl ov12_0222016C
	ldr r0, [r4, #0]
	bl ov16_0223E008
	bl ov12_02220188
	cmp r0, #0
	bne _02261D22
	ldr r0, [r4, #0]
	bl ov16_0223E008
	bl ov12_02220198
	ldrb r0, [r4, #0xe]
	add sp, #0x1fc
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02261D00:
	ldrb r0, [r4, #0x11]
	bl sub_0201D724
	cmp r0, #0
	bne _02261D22
	ldrb r0, [r4, #0x17]
	sub r0, r0, #1
	strb r0, [r4, #0x17]
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	bne _02261D22
	ldr r0, [r4, #0]
	mov r1, #1
	bl ov16_0223B748
	mov r0, #8
	strb r0, [r4, #0xe]
_02261D22:
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261D28: .word 0x000004BE
_02261D2C: .word 0x000004E2
_02261D30: .word 0x000004CD
_02261D34: .word 0x000004BA
_02261D38: .word 0x000004B7
_02261D3C: .word 0x000004B9
_02261D40: .word 0x000004BB
_02261D44: .word 0x000004B8
_02261D48: .word 0x000004BC
_02261D4C: .word 0x000004BD
	thumb_func_end ov16_022611DC

	thumb_func_start ov16_02261D50
ov16_02261D50: ; 0x02261D50
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #1
	add r3, sp, #0
	strh r0, [r3]
	add r4, r1, #0
	mov r2, sp
	ldrb r1, [r4, #0xd]
	ldrh r6, [r3]
	ldr r0, [r4, #0]
	sub r2, r2, #4
	strh r6, [r2]
	ldrh r3, [r3, #2]
	strh r3, [r2, #2]
	ldr r2, [r2, #0]
	bl ov16_02265A70
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02261D50

	thumb_func_start ov16_02261DA8
ov16_02261DA8: ; 0x02261DA8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02261DA8

	thumb_func_start ov16_02261DE0
ov16_02261DE0: ; 0x02261DE0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #0
	bl ov16_0223F530
	cmp r0, #1
	bne _02261DFC
	ldr r0, [r4, #0]
	bl ov16_0226474C
_02261DFC:
	add r0, sp, #0
	ldrb r1, [r0]
	add r2, sp, #0
	strh r1, [r0, #2]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223F530
	cmp r0, #1
	bne _02261E16
	ldr r0, [r4, #0]
	bl ov16_0226474C
_02261E16:
	add r0, sp, #0
	ldrb r1, [r0]
	ldrh r2, [r0, #2]
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0, #2]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	add r2, sp, #0
	bl ov16_0223F530
	cmp r0, #1
	bne _02261E36
	ldr r0, [r4, #0]
	bl ov16_0226474C
_02261E36:
	add r3, sp, #0
	ldrb r1, [r3]
	mov r0, #0xf
	mov r2, sp
	and r0, r1
	strb r0, [r3, #4]
	mov r0, #0
	strb r0, [r3, #5]
	ldrb r1, [r4, #0xd]
	ldrh r6, [r3, #2]
	ldr r0, [r4, #0]
	sub r2, r2, #4
	strh r6, [r2]
	ldrh r3, [r3, #4]
	strh r3, [r2, #2]
	ldr r2, [r2, #0]
	bl ov16_02265A70
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02261DE0

	thumb_func_start ov16_02261E8C
ov16_02261E8C: ; 0x02261E8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E064
	ldrb r1, [r4, #0xa]
	add r5, r0, #0
	cmp r1, #3
	bhi _02261F28
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02261EAE: ; jump table
	.short _02261EB6 - _02261EAE - 2 ; case 0
	.short _02261F20 - _02261EAE - 2 ; case 1
	.short _02262196 - _02261EAE - 2 ; case 2
	.short _022621F2 - _02261EAE - 2 ; case 3
_02261EB6:
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223DF04
	add r6, r0, #0
	mov r1, #0xff
	bl sub_0201ADA4
	add r0, r6, #0
	bl sub_0201ACCC
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	bl ov16_0226CD08
	strb r0, [r4, #0x17]
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	mov r1, #0
	mov r2, #3
	str r1, [sp]
	mov r0, #7
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #5
	add r3, r1, #0
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl sub_02003178
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0xa
	add r3, r1, #0
	ldr r2, _0226221C ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl sub_02003178
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02261F20:
	bl sub_0200384C
	cmp r0, #0
	beq _02261F2A
_02261F28:
	b _02262252
_02261F2A:
	ldr r0, [r4, #0]
	bl ov16_0223B384
	mov r0, #5
	mov r1, #0x38
	bl sub_02018144
	str r0, [r4, #4]
	mov r0, #5
	bl sub_02079FF4
	ldr r1, [r4, #4]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #0xc
	and r0, r1
	cmp r0, #0xc
	beq _02261F5E
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	cmp r0, #0xcb
	beq _02261F5E
	b _02262072
_02261F5E:
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E1F8
	cmp r0, #2
	bne _02261F7A
	ldrb r0, [r4, #9]
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x18]
	bl ov16_0223E258
	str r0, [sp, #0x14]
	b _02261F88
_02261F7A:
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	str r0, [sp, #0x18]
	ldrb r0, [r4, #9]
	str r0, [sp, #0x14]
_02261F88:
	mov r0, #5
	bl sub_02073C74
	add r6, r0, #0
	mov r5, #0
_02261F92:
	ldr r0, [r4, #4]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_0207A048
	add r5, r5, #1
	cmp r5, #6
	blt _02261F92
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x18]
	mov r7, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _02261FFA
	ldr r0, [sp, #0x18]
	mov r1, #6
	mul r1, r0
	add r5, r4, r1
	add r6, r7, #0
_02261FC0:
	ldrb r2, [r5, #0x1c]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x18]
	bl ov16_0223DFAC
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_020775EC
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x1c]
	add r0, r0, r6
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x18]
	add r5, r5, #1
	add r6, r6, #2
	add r7, r7, #1
	bl ov16_0223DF60
	cmp r7, r0
	blt _02261FC0
_02261FFA:
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x14]
	mov r6, #0
	bl ov16_0223DF60
	cmp r0, #0
	ble _02262056
	ldr r0, [sp, #0x14]
	mov r1, #6
	mul r1, r0
	mov r0, #1
	add r5, r4, r1
	str r0, [sp, #0xc]
	add r7, r6, #0
_02262016:
	ldrb r2, [r5, #0x1c]
	ldr r0, [r4, #0]
	ldr r1, [sp, #0x14]
	bl ov16_0223DFAC
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_020775EC
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x1c]
	add r0, r0, r7
	add r0, #0x2d
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	add r5, r5, #1
	add r7, r7, #2
	add r6, r6, #1
	bl ov16_0223DF60
	cmp r6, r0
	blt _02262016
_02262056:
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E1F8
	cmp r0, #4
	bne _0226206A
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x11]
	b _022620F2
_0226206A:
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x11]
	b _022620F2
_02262072:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02262094
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	bne _02262094
	ldrb r1, [r4, #9]
	mov r0, #1
	add r7, r1, #0
	and r7, r0
	b _02262098
_02262094:
	ldrb r1, [r4, #9]
	add r7, r1, #0
_02262098:
	ldr r0, [r4, #0]
	bl ov16_0223E1F8
	cmp r0, #4
	bne _022620A6
	mov r1, #1
	b _022620A8
_022620A6:
	mov r1, #0
_022620A8:
	ldr r0, [r4, #4]
	strb r1, [r0, #0x11]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223DF20
	str r0, [sp, #0x10]
	mov r6, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _022620F2
	mov r0, #6
	mul r0, r7
	add r5, r4, r0
_022620C6:
	ldrb r2, [r5, #0x1c]
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov16_0223DFAC
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_0207A048
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x1c]
	add r0, r0, r6
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r6, r6, #1
	bl sub_0207A0F8
	cmp r6, r0
	blt _022620C6
_022620F2:
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0xc]
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x36
	strb r1, [r0]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0x16]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x12]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0xb]
	add r0, #0x35
	strb r1, [r0]
	ldrh r1, [r4, #0x14]
	ldr r0, [r4, #4]
	strh r1, [r0, #0x22]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	str r1, [r0, #0x28]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x17]
	add r0, #0x32
	strb r1, [r0]
	ldrb r0, [r4, #9]
	bl sub_020787CC
	ldrb r1, [r4, #0x18]
	tst r0, r1
	bne _02262142
	ldrb r0, [r4, #9]
	add r0, r4, r0
	ldrb r1, [r0, #0xc]
	b _02262144
_02262142:
	mov r1, #6
_02262144:
	ldr r0, [r4, #4]
	strb r1, [r0, #0x14]
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	beq _0226215C
	ldr r0, [r4, #4]
	mov r1, #6
	strb r1, [r0, #0x15]
	b _02262186
_0226215C:
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	bl sub_020787CC
	ldrb r1, [r4, #0x18]
	tst r0, r1
	bne _02262180
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r0, r4, r0
	ldrb r1, [r0, #0xc]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x15]
	b _02262186
_02262180:
	ldr r0, [r4, #4]
	mov r1, #6
	strb r1, [r0, #0x15]
_02262186:
	ldr r0, [r4, #4]
	bl ov12_0221FC20
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_02262196:
	ldr r0, [r4, #4]
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _02262252
	ldr r0, [r4, #0]
	bl ov16_0223B430
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	ldr r1, [r4, #4]
	add r1, #0x32
	ldrb r1, [r1]
	bl ov16_0226CD10
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	mov r1, #5
	str r0, [sp, #4]
	mov r2, #3
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r1, #0xa
	str r0, [sp, #4]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r2, _0226221C ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl sub_02003178
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_022621F2:
	bl sub_0200384C
	cmp r0, #0
	bne _02262252
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #0
	bl sub_02015738
	ldr r3, [r4, #4]
	ldr r0, [r4, #0]
	ldrb r2, [r3, #0x11]
	cmp r2, #6
	bne _02262220
	ldrb r1, [r4, #9]
	mov r2, #0xff
	bl ov16_02265B10
	b _0226222E
	nop
_0226221C: .word 0x0000FFFF
_02262220:
	add r2, r3, r2
	add r2, #0x2c
	ldrb r2, [r2]
	ldrb r1, [r4, #9]
	add r2, r2, #1
	bl ov16_02265B10
_0226222E:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	ldr r0, [r4, #4]
	ldr r0, [r0, #0]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02262252:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02261E8C

	thumb_func_start ov16_02262258
ov16_02262258: ; 0x02262258
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	bl ov16_0223DF0C
	mov r1, #0x10
	ldrb r6, [r5, #9]
	tst r1, r0
	bne _02262274
	mov r1, #8
	tst r0, r1
	beq _02262278
_02262274:
	str r6, [sp, #4]
	b _02262282
_02262278:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov16_0223E258
	str r0, [sp, #4]
_02262282:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov16_0225BE28
	add r4, r0, #0
	cmp r4, #6
	bne _022622E6
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov16_0225BA88
	add r4, r0, #0
	cmp r4, #6
	bne _022622E6
	ldrb r1, [r5, #9]
	ldr r0, [r5, #0]
	bl ov16_0223DF20
	str r0, [sp, #8]
	mov r4, #0
	bl sub_0207A0F8
	cmp r0, #0
	ble _022622E6
	ldr r0, [sp, #4]
	add r7, r5, r6
	add r6, r5, r0
_022622B8:
	ldrb r1, [r5, #9]
	ldr r0, [r5, #0]
	add r2, r4, #0
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _022622DA
	ldrb r0, [r7, #0xc]
	cmp r4, r0
	beq _022622DA
	ldrb r0, [r6, #0xc]
	cmp r4, r0
	bne _022622E6
_022622DA:
	ldr r0, [sp, #8]
	add r4, r4, #1
	bl sub_0207A0F8
	cmp r4, r0
	blt _022622B8
_022622E6:
	ldrb r1, [r5, #9]
	ldr r0, [r5, #0]
	add r2, r4, #1
	bl ov16_02265B10
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5, #0]
	bl ov16_02266ABC
	add r0, r5, #0
	bl sub_020181C4
	ldr r0, [sp]
	bl sub_0200DA58
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02262258

	thumb_func_start ov16_0226230C
ov16_0226230C: ; 0x0226230C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r5, r0, #0
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0226230C

	thumb_func_start ov16_0226232C
ov16_0226232C: ; 0x0226232C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r1, [r4, #9]
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #0
	bl ov16_0223F530
	cmp r0, #1
	bne _02262348
	ldr r0, [r4, #0]
	bl ov16_0226474C
_02262348:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _02262354
	cmp r0, #6
	bls _0226235C
_02262354:
	ldr r0, [r4, #0]
	bl ov16_02264730
	b _022623C4
_0226235C:
	ldrb r1, [r4, #9]
	sub r5, r0, #1
	ldr r0, [r4, #0]
	bl ov16_0223DF20
	ldrb r1, [r4, #9]
	add r1, r4, r1
	ldrb r1, [r1, #0xc]
	cmp r5, r1
	beq _02262376
	ldrb r1, [r4, #0x16]
	cmp r5, r1
	bne _0226237E
_02262376:
	ldr r0, [r4, #0]
	bl ov16_02264730
	b _022623C4
_0226237E:
	add r1, sp, #0
	ldrb r5, [r1]
	bl sub_0207A0F8
	cmp r5, r0
	ldr r0, [r4, #0]
	ble _02262392
	bl ov16_02264730
	b _022623C4
_02262392:
	ldrb r1, [r4, #9]
	sub r2, r5, #1
	bl ov16_0223DFAC
	mov r1, #0xa3
	mov r2, #0
	add r5, r0, #0
	bl sub_02074470
	cmp r0, #0
	bne _022623AE
	ldr r0, [r4, #0]
	bl ov16_02264730
_022623AE:
	add r0, r5, #0
	mov r1, #0xae
	mov r2, #0
	bl sub_02074470
	ldr r1, _022623EC ; =0x000001EE
	cmp r0, r1
	bne _022623C4
	ldr r0, [r4, #0]
	bl ov16_02264730
_022623C4:
	add r2, sp, #0
	ldrb r1, [r4, #9]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_02265B10
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022623EC: .word 0x000001EE
	thumb_func_end ov16_0226232C

	thumb_func_start ov16_022623F0
ov16_022623F0: ; 0x022623F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldr r0, [r4, #0]
	bl ov16_0223E02C
	add r5, r0, #0
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223DF14
	str r0, [sp, #0xc]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	bl ov16_0223E258
	add r1, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r1, r0
	beq _0226242A
	ldr r0, [r4, #0]
	bl ov16_0223F35C
	add r7, r0, #0
	b _0226242C
_0226242A:
	mov r7, #0
_0226242C:
	ldrb r0, [r4, #0xe]
	cmp r0, #4
	bhi _022624AC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226243E: ; jump table
	.short _02262448 - _0226243E - 2 ; case 0
	.short _02262498 - _0226243E - 2 ; case 1
	.short _02262572 - _0226243E - 2 ; case 2
	.short _02262590 - _0226243E - 2 ; case 3
	.short _022625F8 - _0226243E - 2 ; case 4
_02262448:
	add r0, r5, #0
	bl ov16_02269348
	cmp r0, #0
	beq _022624AC
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02262490
	ldr r0, [r4, #0]
	bl ov16_0223E05C
	add r5, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	add r0, sp, #0x10
	bne _02262472
	mov r1, #0x82
	strb r1, [r0, #5]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x18]
	b _02262476
_02262472:
	mov r1, #0
	strb r1, [r0, #5]
_02262476:
	ldr r1, [r4, #0x10]
	add r0, sp, #0x10
	strh r1, [r0, #6]
	ldr r0, [r4, #0]
	bl ov16_0223EDF0
	add r3, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, sp, #0x14
	bl ov16_0223FB24
	strh r0, [r4, #0x1a]
_02262490:
	mov r0, #1
	add sp, #0x38
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02262498:
	ldrh r0, [r4, #0x1a]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _022624AE
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022624AE
_022624AC:
	b _02262622
_022624AE:
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	add r7, r0, #0
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r6, r0, #0
	add r0, r5, #0
	bl ov16_02269218
	ldrh r1, [r4, #0x18]
	add r0, sp, #0x10
	strh r1, [r0]
	ldrb r0, [r4, #0xf]
	cmp r0, #5
	bhi _0226255A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022624E0: ; jump table
	.short _022624EC - _022624E0 - 2 ; case 0
	.short _02262502 - _022624E0 - 2 ; case 1
	.short _02262518 - _022624E0 - 2 ; case 2
	.short _0226252E - _022624E0 - 2 ; case 3
	.short _02262544 - _022624E0 - 2 ; case 4
	.short _022624EC - _022624E0 - 2 ; case 5
_022624EC:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0xd
	bl ov16_02268C04
	b _0226255E
_02262502:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0xe
	bl ov16_02268C04
	b _0226255E
_02262518:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0xf
	bl ov16_02268C04
	b _0226255E
_0226252E:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0x10
	bl ov16_02268C04
	b _0226255E
_02262544:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0x11
	bl ov16_02268C04
	b _0226255E
_0226255A:
	bl sub_02022974
_0226255E:
	mov r0, #2
	strb r0, [r4, #0xe]
	add r0, r7, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_02262572:
	add r0, r5, #0
	bl ov16_0226925C
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #8]
	cmp r0, r1
	beq _02262622
	ldr r0, _02262628 ; =0x000005DD
	bl sub_02005748
	mov r0, #3
	add sp, #0x38
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, r6, r7, pc}
_02262590:
	add r0, r5, #0
	bl ov16_02269348
	cmp r0, #1
	bne _02262622
	mov r0, #7
	mov r1, #5
	bl sub_02006C24
	str r0, [sp, #8]
	mov r0, #0x1b
	mov r1, #5
	bl sub_02006C24
	add r6, r0, #0
	ldr r0, [r4, #4]
	bl ov16_022675AC
	ldr r0, [sp, #0xc]
	bl ov16_022647D8
	add r0, r7, #0
	bl ov16_0226846C
	add r0, r5, #0
	bl ov16_02269218
	mov r3, #0
	str r3, [sp]
	ldr r0, [sp, #8]
	str r3, [sp, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl ov16_02268C04
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _022625E4
	add r0, r5, #0
	mov r1, #0
	bl ov16_0226BCCC
_022625E4:
	mov r0, #4
	strb r0, [r4, #0xe]
	ldr r0, [sp, #8]
	bl sub_02006CA8
	add r0, r6, #0
	bl sub_02006CA8
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_022625F8:
	add r0, r5, #0
	bl ov16_0226BCD0
	cmp r0, #1
	bne _02262622
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0]
	ldr r2, [r4, #8]
	bl ov16_022656D4
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02262622:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262628: .word 0x000005DD
	thumb_func_end ov16_022623F0

	thumb_func_start ov16_0226262C
ov16_0226262C: ; 0x0226262C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0226262C

	thumb_func_start ov16_0226264C
ov16_0226264C: ; 0x0226264C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_0226264C

	thumb_func_start ov16_0226266C
ov16_0226266C: ; 0x0226266C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r2, sp, #0
	bl ov16_0223F530
	cmp r0, #1
	bne _02262686
	ldr r0, [r4, #0]
	bl ov16_0226474C
_02262686:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	beq _02262696
	cmp r0, #0xff
	beq _0226269C
	cmp r0, #1
	beq _0226269C
_02262696:
	ldr r0, [r4, #0]
	bl ov16_02264730
_0226269C:
	add r2, sp, #0
	ldrb r1, [r4, #0xd]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_022656D4
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0226266C

	thumb_func_start ov16_022626C0
ov16_022626C0: ; 0x022626C0
	push {r3, r4, r5, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	cmp r0, #0xa
	bls _022626D6
	b _02262924
_022626D6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022626E2: ; jump table
	.short _022626F8 - _022626E2 - 2 ; case 0
	.short _02262902 - _022626E2 - 2 ; case 1
	.short _02262752 - _022626E2 - 2 ; case 2
	.short _02262902 - _022626E2 - 2 ; case 3
	.short _022627AE - _022626E2 - 2 ; case 4
	.short _02262902 - _022626E2 - 2 ; case 5
	.short _022627FC - _022626E2 - 2 ; case 6
	.short _02262902 - _022626E2 - 2 ; case 7
	.short _02262884 - _022626E2 - 2 ; case 8
	.short _02262902 - _022626E2 - 2 ; case 9
	.short _022628E0 - _022626E2 - 2 ; case 10
_022626F8:
	ldrh r0, [r4, #0x1e]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02262746
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _02262746
	ldr r0, [r4, #8]
	mov r1, #6
	bl sub_020080C0
	cmp r0, #0
	bne _02262746
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0x1b8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x1b8
	bl ov16_02264408
	add sp, #0x1fc
	mov r0, #1
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02262746:
	add sp, #0x1fc
	mov r0, #4
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02262752:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	ldr r0, [r4, #0]
	add r1, #0x10
	add r2, sp, #0x168
	bl ov16_02264530
	add r0, sp, #0x168
	mov r1, #5
	bl ov12_022382BC
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x110
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x110
	bl ov16_02264408
	mov r0, #0x1a
	add sp, #0x1fc
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022627AE:
	ldr r0, [r4, #0]
	mov r1, #2
	bl ov16_0223F460
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	beq _022627C6
	ldr r0, [r4, #0]
	bl ov16_0223F3EC
_022627C6:
	add r0, r4, #0
	add r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	beq _022627DC
	ldr r0, [r4, #0]
	bl ov16_0223E000
	mov r1, #1
	bl sub_02008B54
_022627DC:
	add r3, r4, #0
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, #0x10
	bl ov16_02264408
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add sp, #0x1fc
	add r4, #0x6a
	add r0, r0, #1
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022627FC:
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223F460
	add r0, r4, #0
	add r0, #0x6b
	ldrb r0, [r0]
	cmp r0, #0
	beq _02262814
	ldr r0, [r4, #0]
	bl ov16_0223F3BC
_02262814:
	add r0, r4, #0
	add r0, #0x6c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0226282A
	ldr r0, [r4, #0]
	bl ov16_0223E000
	mov r1, #1
	bl sub_02008B60
_0226282A:
	ldrh r0, [r4, #0x1e]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02262878
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _02262878
	ldr r0, [r4, #8]
	mov r1, #6
	bl sub_020080C0
	cmp r0, #0
	bne _02262878
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xb8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0xb8
	bl ov16_02264408
	add sp, #0x1fc
	mov r0, #7
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02262878:
	add sp, #0x1fc
	mov r0, #0xa
	add r4, #0x6a
	add sp, #0x14
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02262884:
	add r3, r4, #0
	add r3, #0x69
	ldrb r3, [r3]
	ldr r0, [r4, #0]
	add r1, #0x10
	add r2, sp, #0x68
	bl ov16_02264530
	add r0, sp, #0x68
	mov r1, #5
	bl ov12_02238390
	add r0, r4, #0
	add r0, #0x69
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	add r3, sp, #0x10
	bl ov16_02264408
	mov r0, #0x1a
	add sp, #0x1fc
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add sp, #0x14
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022628E0:
	add r2, r4, #0
	add r1, #0x69
	add r2, #0x68
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, pc}
_02262902:
	ldr r0, [r4, #0xc]
	bl ov12_0222016C
	ldr r0, [r4, #0xc]
	bl ov12_02220188
	cmp r0, #0
	bne _02262924
	ldr r0, [r4, #0xc]
	bl ov12_02220198
	add r0, r4, #0
	add r0, #0x6a
	ldrb r0, [r0]
	add r4, #0x6a
	add r0, r0, #1
	strb r0, [r4]
_02262924:
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022626C0

	thumb_func_start ov16_0226292C
ov16_0226292C: ; 0x0226292C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #6
	bhs _02262966
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	bne _02262960
	mov r0, #2
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #9]
	mov r1, #6
	add r0, r0, #1
	strb r0, [r4, #9]
	ldr r0, [r4, #4]
	bl sub_020080C0
	add r3, r0, #0
	mov r2, #1
	ldr r0, [r4, #4]
	mov r1, #6
	eor r2, r3
	bl sub_02007DEC
	pop {r3, r4, r5, pc}
_02262960:
	sub r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_02262966:
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	ldrb r1, [r4, #8]
	ldr r0, [r4, #0]
	mov r2, #0x17
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0226292C

	thumb_func_start ov16_02262988
ov16_02262988: ; 0x02262988
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0226299A
	cmp r0, #1
	beq _022629A8
	b _022629BE
_0226299A:
	ldr r1, [r4, #0x30]
	add r0, r4, #0
	bl ov16_022674C4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_022629A8:
	add r0, r4, #0
	bl ov16_022674F8
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _022629D8
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_022629BE:
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl ov16_02266ABC
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200DA58
_022629D8:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02262988

	thumb_func_start ov16_022629DC
ov16_022629DC: ; 0x022629DC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022629F2
	cmp r0, #1
	beq _02262A0E
	cmp r0, #2
	beq _02262A54
	b _02262A7A
_022629F2:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4e
	strb r1, [r0]
	ldr r0, _02262A98 ; =0x0000070B
	bl sub_02005748
	ldr r1, [r4, #0x40]
	add r0, r4, #0
	bl ov16_0226752C
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
_02262A0E:
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	bhs _02262A26
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
_02262A26:
	add r0, r4, #0
	bl ov16_02267560
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _02262A94
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	blo _02262A4C
	ldr r0, _02262A98 ; =0x0000070B
	mov r1, #0
	bl sub_020057A4
	mov r0, #0x64
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02262A4C:
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02262A54:
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	cmp r0, #8
	blo _02262A94
	ldr r0, _02262A98 ; =0x0000070B
	mov r1, #0
	bl sub_020057A4
	mov r0, #0x64
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02262A7A:
	add r2, r4, #0
	add r1, #0x24
	add r2, #0x4c
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0xc]
	bl ov16_02266ABC
	mov r0, #0
	str r0, [r4, #0x10]
	add r0, r5, #0
	bl sub_0200DA58
_02262A94:
	pop {r3, r4, r5, pc}
	nop
_02262A98: .word 0x0000070B
	thumb_func_end ov16_022629DC

	thumb_func_start ov16_02262A9C
ov16_02262A9C: ; 0x02262A9C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x114
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r1, r4, #0
	add r1, #0x66
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #0xa
	bls _02262AB8
	b _02262D20
_02262AB8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02262AC4: ; jump table
	.short _02262ADA - _02262AC4 - 2 ; case 0
	.short _02262B82 - _02262AC4 - 2 ; case 1
	.short _02262B26 - _02262AC4 - 2 ; case 2
	.short _02262B82 - _02262AC4 - 2 ; case 3
	.short _02262BA6 - _02262AC4 - 2 ; case 4
	.short _02262BF8 - _02262AC4 - 2 ; case 5
	.short _02262C12 - _02262AC4 - 2 ; case 6
	.short _02262C4E - _02262AC4 - 2 ; case 7
	.short _02262C7A - _02262AC4 - 2 ; case 8
	.short _02262CBA - _02262AC4 - 2 ; case 9
	.short _02262D02 - _02262AC4 - 2 ; case 10
_02262ADA:
	add r0, r4, #0
	add r0, #0x70
	ldrh r0, [r0]
	cmp r0, #0
	beq _02262B1C
	add r0, r4, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xbc
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0xbc
	bl ov16_02264408
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262B1C:
	mov r0, #4
	add r4, #0x66
	add sp, #0x114
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262B26:
	add r3, r4, #0
	add r3, #0x65
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0xc
	add r2, sp, #0x6c
	bl ov16_02264530
	add r0, sp, #0x6c
	mov r1, #5
	bl ov12_022382BC
	add r0, r4, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x14
	bl ov16_02264408
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #0
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262B82:
	bl ov12_0222016C
	add r0, r5, #0
	bl ov12_02220188
	cmp r0, #0
	bne _02262C00
	add r0, r5, #0
	bl ov12_02220198
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262BA6:
	add r0, r4, #0
	add r0, #0x67
	ldrb r0, [r0]
	cmp r0, #2
	bne _02262BB4
	mov r5, #0x75
	b _02262BB8
_02262BB4:
	mov r5, #0x74
	mvn r5, r5
_02262BB8:
	add r1, r4, #0
	add r1, #0x65
	ldrb r1, [r1]
	ldr r0, [r4, #0]
	bl ov16_0223EE30
	str r5, [sp]
	mov r1, #0x7f
	str r1, [sp, #4]
	add r1, r4, #0
	add r1, #0x72
	ldrh r1, [r1]
	add r3, r4, #0
	mov r2, #0
	str r1, [sp, #8]
	mov r1, #5
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	add r2, r4, #0
	add r2, #0x68
	add r3, #0x6b
	ldrh r2, [r2]
	ldrb r3, [r3]
	bl sub_02077DB4
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
_02262BF8:
	bl sub_0200598C
	cmp r0, #0
	beq _02262C02
_02262C00:
	b _02262D20
_02262C02:
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262C12:
	add r0, r4, #0
	add r0, #0x67
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, _02262D24 ; =0x00000703
	bne _02262C26
	mov r1, #0x75
	bl sub_02005728
	b _02262C2E
_02262C26:
	mov r1, #0x74
	mvn r1, r1
	bl sub_02005728
_02262C2E:
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl sub_020080C0
	cmp r0, #0
	ble _02262C44
	mov r0, #7
	add r4, #0x66
	add sp, #0x114
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262C44:
	mov r0, #8
	add r4, #0x66
	add sp, #0x114
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262C4E:
	ldr r0, [r4, #8]
	mov r1, #0x29
	bl sub_020080C0
	add r5, r0, #0
	sub r5, #8
	bpl _02262C5E
	mov r5, #0
_02262C5E:
	ldr r0, [r4, #8]
	mov r1, #0x29
	add r2, r5, #0
	bl sub_02007DEC
	cmp r5, #0
	bne _02262D20
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x66
	strb r1, [r0]
_02262C7A:
	ldr r0, [r4, #0x6c]
	add r1, r4, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r4, #0
	add r3, r4, #0
	add r0, #0x68
	add r1, #0x6a
	add r2, #0x67
	add r3, #0x6b
	ldrh r0, [r0]
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldrb r3, [r3]
	bl sub_02076648
	mov r3, #0x50
	sub r0, r3, r0
	str r0, [sp]
	mov r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl sub_020086D4
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262CBA:
	ldr r0, [r4, #8]
	mov r1, #1
	bl sub_020080C0
	add r2, r0, #0
	ldr r0, [r4, #8]
	mov r1, #1
	add r2, #8
	bl sub_02007DEC
	ldr r0, [r4, #8]
	mov r1, #0x12
	bl sub_020080C0
	add r5, r0, #0
	sub r5, #8
	bpl _02262CDE
	mov r5, #0
_02262CDE:
	ldr r0, [r4, #8]
	mov r1, #0x12
	add r2, r5, #0
	bl sub_02007DEC
	cmp r5, #0
	bne _02262D20
	ldr r0, [r4, #8]
	bl sub_02007DC8
	add r0, r4, #0
	add r0, #0x66
	ldrb r0, [r0]
	add r4, #0x66
	add sp, #0x114
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02262D02:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x65
	add r2, #0x64
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02262D20:
	add sp, #0x114
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02262D24: .word 0x00000703
	thumb_func_end ov16_02262A9C

	thumb_func_start ov16_02262D28
ov16_02262D28: ; 0x02262D28
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E064
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E000
	add r7, r0, #0
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _02262D52
	cmp r0, #1
	beq _02262D90
	cmp r0, #2
	beq _02262DA4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02262D52:
	ldr r0, [r5, #0]
	bl ov16_0223E220
	mov r1, #1
	bl sub_02015738
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r2, _02262DC0 ; =0x0000FFFF
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #1
	bl sub_02003178
	mov r1, #0
	add r0, r7, #0
	mov r2, #0x10
	add r3, r1, #0
	str r1, [sp]
	bl sub_0200872C
	mov r0, #0
	mov r1, #0x10
	bl sub_0200564C
	ldrb r0, [r5, #6]
	add r0, r0, #1
	strb r0, [r5, #6]
_02262D90:
	add r0, r4, #0
	bl sub_0200384C
	cmp r0, #0
	bne _02262DBA
	ldrb r0, [r5, #6]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #6]
	pop {r4, r5, r6, r7, pc}
_02262DA4:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5, #0]
	bl ov16_02266ABC
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02262DBA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02262DC0: .word 0x0000FFFF
	thumb_func_end ov16_02262D28

	thumb_func_start ov16_02262DC4
ov16_02262DC4: ; 0x02262DC4
	push {r4, r5, r6, lr}
	sub sp, #0x110
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E008
	add r1, r4, #0
	add r1, #0x62
	ldrb r1, [r1]
	add r5, r0, #0
	cmp r1, #4
	bls _02262DE0
	b _02262F0C
_02262DE0:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02262DEC: ; jump table
	.short _02262DF6 - _02262DEC - 2 ; case 0
	.short _02262E38 - _02262DEC - 2 ; case 1
	.short _02262EE8 - _02262DEC - 2 ; case 2
	.short _02262E8C - _02262DEC - 2 ; case 3
	.short _02262EE8 - _02262DEC - 2 ; case 4
_02262DF6:
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02262E2E
	add r2, r4, #0
	add r2, #0x63
	ldrb r2, [r2]
	mov r1, #6
	bl sub_02007DEC
	add r0, r4, #0
	add r0, #0x63
	ldrb r0, [r0]
	cmp r0, #1
	bne _02262E1E
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02262E1E:
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02262E2E:
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02262E38:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _02262E82
	mov r0, #0x1a
	ldr r1, [r4, #4]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02262E82
	add r0, r4, #0
	add r0, #0x61
	ldrb r1, [r0]
	mov r0, #0xf
	add r2, sp, #0xb8
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0xb8
	bl ov16_02264408
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02262E82:
	mov r0, #0xff
	add r4, #0x62
	add sp, #0x110
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02262E8C:
	add r3, r4, #0
	add r3, #0x61
	ldrb r3, [r3]
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #8
	add r2, sp, #0x68
	bl ov16_02264530
	add r0, sp, #0x68
	mov r1, #5
	bl ov12_02238390
	add r0, r4, #0
	add r0, #0x61
	ldrb r1, [r0]
	mov r0, #0x10
	add r2, sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r3, #1
	bl ov16_02266B78
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	add r2, r5, #0
	add r3, sp, #0x10
	bl ov16_02264408
	mov r0, #0x1a
	ldr r1, [r4, #4]
	mov r2, #1
	lsl r0, r0, #4
	str r2, [r1, r0]
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02262EE8:
	bl ov12_0222016C
	add r0, r5, #0
	bl ov12_02220188
	cmp r0, #0
	bne _02262F2A
	add r0, r5, #0
	bl ov12_02220198
	add r0, r4, #0
	add r0, #0x62
	ldrb r0, [r0]
	add r4, #0x62
	add sp, #0x110
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, r6, pc}
_02262F0C:
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x61
	add r2, #0x60
	ldrb r1, [r1]
	ldrb r2, [r2]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_02262F2A:
	add sp, #0x110
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_02262DC4

	thumb_func_start ov16_02262F30
ov16_02262F30: ; 0x02262F30
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xa]
	cmp r0, #0
	beq _02262F42
	cmp r0, #1
	beq _02262F58
	pop {r3, r4, r5, pc}
_02262F42:
	ldr r0, [r4, #4]
	add r1, #0xb
	bl ov16_0226834C
	ldr r0, _02262F78 ; =0x0000070C
	bl sub_02005748
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, pc}
_02262F58:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _02262F74
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02262F74:
	pop {r3, r4, r5, pc}
	nop
_02262F78: .word 0x0000070C
	thumb_func_end ov16_02262F30

	thumb_func_start ov16_02262F7C
ov16_02262F7C: ; 0x02262F7C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F29C
	cmp r0, #0
	beq _02262F9E
	ldr r0, [r4, #0]
	bl ov16_0223F29C
	bl sub_0200EBA0
	ldr r0, [r4, #0]
	mov r1, #0
	bl ov16_0223F2A4
_02262F9E:
	ldrb r0, [r4, #6]
	bl sub_0201D724
	cmp r0, #0
	bne _02262FBE
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #4]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02262FBE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02262F7C

	thumb_func_start ov16_02262FC0
ov16_02262FC0: ; 0x02262FC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _02262FD2
	cmp r0, #1
	beq _02262FE8
	pop {r3, r4, r5, pc}
_02262FD2:
	ldrb r0, [r4, #6]
	bl sub_0201D724
	cmp r0, #0
	bne _02263012
	ldrb r0, [r4, #7]
	add r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #0
	strb r0, [r4, #8]
	pop {r3, r4, r5, pc}
_02262FE8:
	ldrb r0, [r4, #8]
	add r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #8]
	cmp r0, #0x28
	bne _02263012
	ldrb r1, [r4, #5]
	ldr r0, [r4, #0]
	bl ov16_022661B0
	ldrb r1, [r4, #5]
	ldrb r2, [r4, #4]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_02263012:
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02262FC0

	thumb_func_start ov16_02263014
ov16_02263014: ; 0x02263014
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldr r0, [r4, #0]
	bl ov16_0223E064
	add r7, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E22C
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E240
	lsl r1, r0, #2
	ldr r0, _02263388 ; =0x0226F1D0
	ldr r0, [r0, r1]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0x15]
	add r0, r0, #1
	strb r0, [r4, #0x15]
	ldrb r0, [r4, #0x14]
	cmp r0, #5
	bls _0226304E
	b _02263384
_0226304E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226305A: ; jump table
	.short _02263066 - _0226305A - 2 ; case 0
	.short _022630A6 - _0226305A - 2 ; case 1
	.short _0226325C - _0226305A - 2 ; case 2
	.short _02263278 - _0226305A - 2 ; case 3
	.short _02263294 - _0226305A - 2 ; case 4
	.short _022632A6 - _0226305A - 2 ; case 5
_02263066:
	mov r0, #5
	mov r1, #0
	bl ov12_02237EFC
	str r0, [r4, #4]
	ldr r0, _0226338C ; =0x0226F31C
	add r1, sp, #0x10
	ldrb r5, [r0, r5]
	mov r0, #1
	str r0, [sp, #0x14]
	str r5, [sp, #0x10]
	ldr r0, [r4, #4]
	bl ov12_02237F38
	str r0, [r4, #8]
	add r0, r5, #1
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl ov12_02237F38
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl ov12_02238004
	ldr r0, _02263390 ; =0x0000084F
	bl sub_02005748
	mov r0, #1
	strb r0, [r4, #0x14]
_022630A6:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xa
	bne _022630E0
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _02263394 ; =0x0000F3FF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	bl sub_02003178
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _02263398 ; =0x00003FFF
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	add r0, r7, #0
	mov r1, #4
	bl sub_02003178
_022630E0:
	ldrb r0, [r4, #0x15]
	cmp r0, #0xa
	blo _0226312A
	ldrb r0, [r4, #0x16]
	cmp r0, #0x10
	bhs _0226312A
	add r0, r0, #1
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x16]
	cmp r0, #0x10
	bls _022630FA
	mov r0, #0x10
	strb r0, [r4, #0x16]
_022630FA:
	add r0, r7, #0
	mov r1, #1
	bl sub_0200316C
	add r6, r0, #0
	mov r0, #1
	mov r5, #0
	lsl r0, r0, #8
_0226310A:
	ldrb r2, [r4, #0x16]
	mov r1, #0x1f
	mul r1, r2
	lsl r1, r1, #0xc
	lsr r3, r1, #0x10
	lsl r1, r3, #5
	lsl r2, r3, #0xa
	orr r1, r3
	orr r2, r1
	lsl r1, r5, #1
	strh r2, [r6, r1]
	add r1, r5, #1
	lsl r1, r1, #0x10
	lsr r5, r1, #0x10
	cmp r5, r0
	blo _0226310A
_0226312A:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x14
	bne _02263136
	ldr r0, [r4, #0xc]
	bl ov12_02238004
_02263136:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x17
	bne _02263144
	mov r0, #0x85
	lsl r0, r0, #4
	bl sub_02005748
_02263144:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x1c
	bne _02263236
	add r0, r7, #0
	mov r1, #0
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F204
	add r1, r5, #0
	mov r2, #0xe0
	bl sub_020C4B18
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	cmp r0, #0x4a
	bne _02263186
	add r0, r7, #0
	mov r1, #2
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F210
	add r1, r5, #0
	mov r2, #0xa0
	bl sub_020C4B18
	b _022631E8
_02263186:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _022631AA
	add r0, r7, #0
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F210
	add r1, r5, #0
	mov r2, #0xe0
	bl sub_020C4B18
	b _022631E8
_022631AA:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	beq _022631D0
	add r0, r7, #0
	mov r1, #2
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F210
	add r1, r5, #0
	mov r2, #0xa0
	bl sub_020C4B18
	b _022631E8
_022631D0:
	add r0, r7, #0
	mov r1, #2
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F210
	add r1, r5, #0
	mov r2, #0x80
	bl sub_020C4B18
_022631E8:
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r3, #0
	lsl r0, r0, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _02263394 ; =0x0000F3FF
	add r0, r7, #0
	mov r1, #1
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r3, #0
	lsl r0, r0, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _02263398 ; =0x00003FFF
	add r0, r7, #0
	mov r1, #4
	bl sub_02003178
	mov r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0xc]
	mov r3, #0
	lsl r0, r0, #0x10
	str r3, [sp, #4]
	lsr r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _0226339C ; =0x0000FFFF
	add r0, r7, #0
	mov r1, #0xa
	bl sub_02003178
_02263236:
	ldrb r0, [r4, #0x15]
	cmp r0, #0x32
	blo _02263266
	mov r0, #0x10
	str r0, [sp]
	mov r3, #0
	str r3, [sp, #4]
	mov r2, #3
	str r3, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	lsl r2, r2, #0xa
	bl sub_02003178
	ldrb r0, [r4, #0x14]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_0226325C:
	ldr r0, [r4, #0xc]
	bl ov12_0223802C
	cmp r0, #0
	beq _02263268
_02263266:
	b _02263384
_02263268:
	ldr r0, [r4, #4]
	bl ov12_02237F74
	ldrb r0, [r4, #0x14]
	add sp, #0x18
	add r0, r0, #1
	strb r0, [r4, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_02263278:
	ldr r0, [r4, #0]
	bl ov16_0223E220
	mov r1, #0
	bl sub_02015738
	add r0, r4, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02263294:
	ldr r0, [r4, #4]
	bl ov12_02237F98
	ldr r0, [r4, #4]
	bl ov12_02237F74
	ldrb r0, [r4, #0x14]
	add r0, r0, #1
	strb r0, [r4, #0x14]
_022632A6:
	add r0, r7, #0
	mov r1, #0
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F204
	add r1, r5, #0
	mov r2, #0xe0
	bl sub_020C4B18
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	cmp r0, #0x4a
	bne _022632E2
	add r0, r7, #0
	mov r1, #2
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F210
	add r1, r5, #0
	mov r2, #0xa0
	bl sub_020C4B18
	b _02263344
_022632E2:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	beq _02263306
	add r0, r7, #0
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F210
	add r1, r5, #0
	mov r2, #0xe0
	bl sub_020C4B18
	b _02263344
_02263306:
	ldr r0, [r4, #0]
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	beq _0226332C
	add r0, r7, #0
	mov r1, #2
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F210
	add r1, r5, #0
	mov r2, #0xa0
	bl sub_020C4B18
	b _02263344
_0226332C:
	add r0, r7, #0
	mov r1, #2
	bl sub_02003164
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223F210
	add r1, r5, #0
	mov r2, #0x80
	bl sub_020C4B18
_02263344:
	mov r3, #0
	str r3, [sp]
	ldr r0, _022633A0 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _0226339C ; =0x0000FFFF
	add r0, r7, #0
	mov r1, #1
	bl sub_02003178
	mov r3, #0
	str r3, [sp]
	ldr r2, _0226339C ; =0x0000FFFF
	str r3, [sp, #4]
	str r2, [sp, #8]
	add r0, r7, #0
	mov r1, #4
	lsr r2, r2, #2
	bl sub_02003178
	mov r3, #0
	str r3, [sp]
	ldr r0, _022633A0 ; =0x00007FFF
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r2, _0226339C ; =0x0000FFFF
	add r0, r7, #0
	mov r1, #0xa
	bl sub_02003178
	mov r0, #3
	strb r0, [r4, #0x14]
_02263384:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263388: .word 0x0226F1D0
_0226338C: .word 0x0226F31C
_02263390: .word 0x0000084F
_02263394: .word 0x0000F3FF
_02263398: .word 0x00003FFF
_0226339C: .word 0x0000FFFF
_022633A0: .word 0x00007FFF
	thumb_func_end ov16_02263014

	thumb_func_start ov16_022633A4
ov16_022633A4: ; 0x022633A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E064
	ldrb r1, [r4, #0xa]
	add r6, r0, #0
	cmp r1, #3
	bls _022633BC
	b _022634D4
_022633BC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022633C8: ; jump table
	.short _022633D0 - _022633C8 - 2 ; case 0
	.short _022633F0 - _022633C8 - 2 ; case 1
	.short _02263460 - _022633C8 - 2 ; case 2
	.short _02263492 - _022633C8 - 2 ; case 3
_022633D0:
	mov r2, #0
	str r2, [sp]
	mov r1, #0x10
	str r1, [sp, #4]
	mov r1, #0xa
	str r2, [sp, #8]
	add r3, r1, #0
	ldr r2, _022634D8 ; =0x0000FFFF
	sub r3, #0x12
	bl sub_02003178
	ldrb r0, [r4, #0xa]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, pc}
_022633F0:
	bl sub_0200384C
	cmp r0, #0
	bne _022634D4
	ldr r0, [r4, #0]
	bl ov16_0223B384
	mov r0, #5
	mov r1, #0x38
	bl sub_02018144
	str r0, [r4, #4]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #0]
	bl ov16_0223DF20
	ldr r1, [r4, #4]
	mov r2, #3
	str r0, [r1, #0]
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0xc]
	ldrb r1, [r4, #0xe]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x11]
	ldrh r1, [r4, #0xc]
	ldr r0, [r4, #4]
	strh r1, [r0, #0x24]
	ldr r1, [r4, #4]
	mov r0, #0
	add r1, #0x36
	strb r0, [r1]
	ldr r1, [r4, #4]
	strb r0, [r1, #0x12]
	ldr r1, [r4, #4]
	add r1, #0x35
	strb r2, [r1]
	ldr r1, [r4, #4]
	strh r0, [r1, #0x22]
	ldrb r2, [r4, #9]
	ldr r1, [r4, #4]
	str r2, [r1, #0x28]
	ldr r1, [r4, #4]
	add r1, #0x32
	strb r0, [r1]
	ldr r0, [r4, #4]
	bl ov12_0221FC20
	ldrb r0, [r4, #0xa]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, pc}
_02263460:
	ldr r0, [r4, #4]
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _022634D4
	ldr r0, [r4, #0]
	bl ov16_0223B430
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r1, #0xa
	str r0, [sp, #4]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r2, _022634D8 ; =0x0000FFFF
	add r0, r6, #0
	sub r3, #0x12
	bl sub_02003178
	ldrb r0, [r4, #0xa]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, pc}
_02263492:
	bl sub_0200384C
	cmp r0, #0
	bne _022634D4
	ldr r0, [r4, #4]
	add r0, #0x34
	ldrb r2, [r0]
	ldr r0, [r4, #0]
	cmp r2, #4
	bne _022634B0
	ldrb r1, [r4, #9]
	mov r2, #0xff
	bl ov16_02265B10
	b _022634B8
_022634B0:
	ldrb r1, [r4, #9]
	add r2, r2, #1
	bl ov16_02265B10
_022634B8:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	ldr r0, [r4, #4]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_022634D4:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022634D8: .word 0x0000FFFF
	thumb_func_end ov16_022633A4

	thumb_func_start ov16_022634DC
ov16_022634DC: ; 0x022634DC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	beq _022634EE
	cmp r0, #1
	beq _02263532
	pop {r3, r4, r5, pc}
_022634EE:
	ldrb r1, [r5, #0xc]
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bne _0226352C
	mov r0, #0
	strb r0, [r5, #0xc]
	ldr r0, [r5, #4]
	mov r1, #0x28
	bl sub_020080C0
	add r4, r0, #0
	ldrb r0, [r5, #0xb]
	cmp r4, r0
	ble _0226350E
	sub r4, r4, #1
	b _02263514
_0226350E:
	cmp r4, r0
	bge _02263514
	add r4, r4, #1
_02263514:
	ldr r0, [r5, #4]
	mov r1, #0x28
	add r2, r4, #0
	bl sub_02007DEC
	ldrb r0, [r5, #0xb]
	cmp r4, r0
	bne _02263548
	ldrb r0, [r5, #0xa]
	add r0, r0, #1
	strb r0, [r5, #0xa]
	pop {r3, r4, r5, pc}
_0226352C:
	add r0, r1, #1
	strb r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
_02263532:
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5, #0]
	bl ov16_02266ABC
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_02263548:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022634DC

	thumb_func_start ov16_0226354C
ov16_0226354C: ; 0x0226354C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldrb r1, [r5, #5]
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E208
	cmp r0, #0
	bne _02263564
	mov r6, #0
	b _02263566
_02263564:
	mov r6, #1
_02263566:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _02263572
	cmp r0, #1
	beq _022635CE
	b _022635E8
_02263572:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _02263580
	mov r0, #0
	str r0, [sp, #8]
	mov r7, #1
	b _0226359A
_02263580:
	mov r0, #1
	str r0, [sp, #8]
	ldrb r0, [r5, #6]
	cmp r0, #3
	beq _02263590
	cmp r0, #5
	beq _02263594
	b _02263598
_02263590:
	mov r7, #0
	b _0226359A
_02263594:
	mov r7, #2
	b _0226359A
_02263598:
	ldr r7, [sp, #8]
_0226359A:
	ldr r0, [r5, #0]
	bl ov16_0223E010
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E018
	str r4, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	ldr r2, [sp, #8]
	add r0, #8
	add r1, r6, #0
	add r3, r7, #0
	bl ov16_0226D194
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov16_0223E040
	ldrb r0, [r5, #7]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r4, r5, r6, r7, pc}
_022635CE:
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov16_0223E034
	bl ov16_0226D1FC
	cmp r0, #1
	bne _022635FE
	ldrb r0, [r5, #7]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r4, r5, r6, r7, pc}
_022635E8:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5, #0]
	bl ov16_02266ABC
	add r0, r5, #0
	bl sub_020181C4
	add r0, r4, #0
	bl sub_0200DA58
_022635FE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0226354C

	thumb_func_start ov16_02263604
ov16_02263604: ; 0x02263604
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldrb r1, [r5, #5]
	add r7, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E208
	cmp r0, #0
	bne _0226361A
	mov r4, #0
	b _0226361C
_0226361A:
	mov r4, #1
_0226361C:
	ldr r0, [r5, #0]
	add r1, r4, #0
	bl ov16_0223E034
	ldrb r1, [r5, #7]
	add r6, r0, #0
	cmp r1, #0
	beq _02263632
	cmp r1, #1
	beq _0226364E
	b _0226366E
_02263632:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0226363C
	mov r1, #0
	b _0226363E
_0226363C:
	mov r1, #1
_0226363E:
	add r0, r6, #0
	add r2, r1, #0
	bl ov16_0226D220
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r3, r4, r5, r6, r7, pc}
_0226364E:
	bl ov16_0226D258
	cmp r0, #1
	bne _02263684
	add r0, r6, #0
	bl ov16_0226D27C
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r2, #0
	bl ov16_0223E040
	ldrb r0, [r5, #7]
	add r0, r0, #1
	strb r0, [r5, #7]
	pop {r3, r4, r5, r6, r7, pc}
_0226366E:
	ldrb r1, [r5, #5]
	ldrb r2, [r5, #4]
	ldr r0, [r5, #0]
	bl ov16_02266ABC
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
_02263684:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02263604

	thumb_func_start ov16_02263688
ov16_02263688: ; 0x02263688
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xe]
	cmp r0, #0
	bne _022636BA
	ldr r0, [r4, #4]
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022636A2
	bl sub_02022974
_022636A2:
	ldrb r2, [r4, #0xd]
	ldr r0, [r4, #0]
	mov r1, #5
	bl ov12_022234F8
	ldr r1, [r4, #4]
	add r1, #0x8c
	str r0, [r1, #0]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_022636BA:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_02263688

	thumb_func_start ov16_022636D4
ov16_022636D4: ; 0x022636D4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	add r0, #0x8c
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022636E8
	bl sub_02022974
_022636E8:
	ldr r0, [r4, #4]
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl ov12_022237D8
	cmp r0, #3
	bne _02263702
	ldrb r0, [r4, #0xe]
	cmp r0, #5
	bhs _02263702
	add r0, r0, #1
	strb r0, [r4, #0xe]
	pop {r3, r4, r5, pc}
_02263702:
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0xd]
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl ov12_022237A4
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x8c
	str r1, [r0, #0]
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4, #0]
	bl ov16_02266ABC
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov16_022636D4

	thumb_func_start ov16_02263730
ov16_02263730: ; 0x02263730
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl ov16_0223DF0C
	add r4, r0, #0
	add r0, r6, #0
	bl ov16_0223EBEC
	mov r1, #0x40
	tst r1, r4
	beq _022637B8
	mov r2, #0x65
	lsl r2, r2, #2
	ldrb r1, [r5, r2]
	cmp r1, #0
	beq _02263772
	ldr r0, _02263A74 ; =ov16_02260AB4
	mov r1, #1
	str r0, [r5, #0]
	ldr r0, _02263A78 ; =ov16_02260DB0
	str r0, [r5, #4]
	ldr r0, _02263A7C ; =ov16_022610A8
	str r0, [r5, #8]
	ldr r0, _02263A80 ; =ov16_02261D50
	str r0, [r5, #0xc]
	ldr r0, _02263A84 ; =ov16_02262258
	str r0, [r5, #0x10]
	ldr r0, _02263A88 ; =ov16_0226262C
	str r0, [r5, #0x14]
	add r0, r2, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02263772:
	mov r1, #0x10
	tst r0, r1
	beq _02263798
	ldr r0, _02263A8C ; =ov16_02260BAC
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02263A90 ; =ov16_02260E98
	str r0, [r5, #4]
	ldr r0, _02263A94 ; =ov16_0226110C
	str r0, [r5, #8]
	ldr r0, _02263A98 ; =ov16_02261DE0
	str r0, [r5, #0xc]
	ldr r0, _02263A9C ; =ov16_0226232C
	str r0, [r5, #0x10]
	ldr r0, _02263AA0 ; =ov16_0226266C
	str r0, [r5, #0x14]
	add r0, r2, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02263798:
	ldr r0, _02263AA4 ; =ov16_022604C8
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02263AA8 ; =ov16_02260C00
	str r0, [r5, #4]
	ldr r0, _02263AAC ; =ov16_02260F14
	str r0, [r5, #8]
	ldr r0, _02263AB0 ; =ov16_022611DC
	str r0, [r5, #0xc]
	ldr r0, _02263AB4 ; =ov16_02261E8C
	str r0, [r5, #0x10]
	ldr r0, _02263AB8 ; =ov16_022623F0
	str r0, [r5, #0x14]
	add r0, r2, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022637B8:
	mov r1, #0x88
	and r1, r4
	cmp r1, #0x88
	bne _02263892
	ldr r2, _02263ABC ; =0x00000195
	mov r1, #1
	ldrb r3, [r5, r2]
	tst r1, r3
	beq _02263814
	add r0, r6, #0
	bl ov16_0223ED60
	cmp r0, #0
	beq _022637F4
	ldr r0, _02263A74 ; =ov16_02260AB4
	mov r1, #1
	str r0, [r5, #0]
	ldr r0, _02263A78 ; =ov16_02260DB0
	str r0, [r5, #4]
	ldr r0, _02263A7C ; =ov16_022610A8
	str r0, [r5, #8]
	ldr r0, _02263A80 ; =ov16_02261D50
	str r0, [r5, #0xc]
	ldr r0, _02263A84 ; =ov16_02262258
	str r0, [r5, #0x10]
	ldr r0, _02263A88 ; =ov16_0226262C
	str r0, [r5, #0x14]
	ldr r0, _02263AC0 ; =0x00000196
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022637F4:
	ldr r0, _02263AC4 ; =ov16_02260AE4
	mov r1, #2
	str r0, [r5, #0]
	ldr r0, _02263AC8 ; =ov16_02260E78
	str r0, [r5, #4]
	ldr r0, _02263ACC ; =ov16_022610EC
	str r0, [r5, #8]
	ldr r0, _02263AD0 ; =ov16_02261DA8
	str r0, [r5, #0xc]
	ldr r0, _02263AD4 ; =ov16_0226230C
	str r0, [r5, #0x10]
	ldr r0, _02263AD8 ; =ov16_0226264C
	str r0, [r5, #0x14]
	ldr r0, _02263AC0 ; =0x00000196
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02263814:
	mov r1, #0x10
	tst r0, r1
	beq _0226383A
	ldr r0, _02263A8C ; =ov16_02260BAC
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02263A90 ; =ov16_02260E98
	str r0, [r5, #4]
	ldr r0, _02263A94 ; =ov16_0226110C
	str r0, [r5, #8]
	ldr r0, _02263A98 ; =ov16_02261DE0
	str r0, [r5, #0xc]
	ldr r0, _02263A9C ; =ov16_0226232C
	str r0, [r5, #0x10]
	ldr r0, _02263AA0 ; =ov16_0226266C
	str r0, [r5, #0x14]
	add r0, r2, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0226383A:
	add r0, r6, #0
	bl ov16_0223F6E4
	add r1, r0, #0
	add r0, r6, #0
	lsl r1, r1, #1
	bl ov16_0223E1F8
	ldr r1, _02263ABC ; =0x00000195
	ldrb r2, [r5, r1]
	cmp r2, r0
	beq _02263872
	ldr r0, _02263AC4 ; =ov16_02260AE4
	mov r2, #2
	str r0, [r5, #0]
	ldr r0, _02263AC8 ; =ov16_02260E78
	str r0, [r5, #4]
	ldr r0, _02263ACC ; =ov16_022610EC
	str r0, [r5, #8]
	ldr r0, _02263AD0 ; =ov16_02261DA8
	str r0, [r5, #0xc]
	ldr r0, _02263AD4 ; =ov16_0226230C
	str r0, [r5, #0x10]
	ldr r0, _02263AD8 ; =ov16_0226264C
	str r0, [r5, #0x14]
	add r0, r1, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_02263872:
	ldr r0, _02263AA4 ; =ov16_022604C8
	mov r2, #0
	str r0, [r5, #0]
	ldr r0, _02263AA8 ; =ov16_02260C00
	str r0, [r5, #4]
	ldr r0, _02263AAC ; =ov16_02260F14
	str r0, [r5, #8]
	ldr r0, _02263AB0 ; =ov16_022611DC
	str r0, [r5, #0xc]
	ldr r0, _02263AB4 ; =ov16_02261E8C
	str r0, [r5, #0x10]
	ldr r0, _02263AB8 ; =ov16_022623F0
	str r0, [r5, #0x14]
	add r0, r1, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_02263892:
	mov r1, #8
	tst r1, r4
	beq _02263914
	mov r1, #0x10
	tst r0, r1
	beq _022638BE
	ldr r0, _02263A8C ; =ov16_02260BAC
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02263A90 ; =ov16_02260E98
	str r0, [r5, #4]
	ldr r0, _02263A94 ; =ov16_0226110C
	str r0, [r5, #8]
	ldr r0, _02263A98 ; =ov16_02261DE0
	str r0, [r5, #0xc]
	ldr r0, _02263A9C ; =ov16_0226232C
	str r0, [r5, #0x10]
	ldr r0, _02263AA0 ; =ov16_0226266C
	str r0, [r5, #0x14]
	ldr r0, _02263AC0 ; =0x00000196
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022638BE:
	add r0, r6, #0
	bl ov16_0223F6E4
	add r1, r0, #0
	add r0, r6, #0
	bl ov16_0223E1F8
	ldr r1, _02263ABC ; =0x00000195
	ldrb r2, [r5, r1]
	cmp r2, r0
	beq _022638F4
	ldr r0, _02263AC4 ; =ov16_02260AE4
	mov r2, #2
	str r0, [r5, #0]
	ldr r0, _02263AC8 ; =ov16_02260E78
	str r0, [r5, #4]
	ldr r0, _02263ACC ; =ov16_022610EC
	str r0, [r5, #8]
	ldr r0, _02263AD0 ; =ov16_02261DA8
	str r0, [r5, #0xc]
	ldr r0, _02263AD4 ; =ov16_0226230C
	str r0, [r5, #0x10]
	ldr r0, _02263AD8 ; =ov16_0226264C
	str r0, [r5, #0x14]
	add r0, r1, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_022638F4:
	ldr r0, _02263AA4 ; =ov16_022604C8
	mov r2, #0
	str r0, [r5, #0]
	ldr r0, _02263AA8 ; =ov16_02260C00
	str r0, [r5, #4]
	ldr r0, _02263AAC ; =ov16_02260F14
	str r0, [r5, #8]
	ldr r0, _02263AB0 ; =ov16_022611DC
	str r0, [r5, #0xc]
	ldr r0, _02263AB4 ; =ov16_02261E8C
	str r0, [r5, #0x10]
	ldr r0, _02263AB8 ; =ov16_022623F0
	str r0, [r5, #0x14]
	add r0, r1, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_02263914:
	mov r1, #4
	add r2, r4, #0
	tst r2, r1
	beq _0226398C
	mov r1, #0x10
	tst r0, r1
	beq _02263942
	ldr r0, _02263A8C ; =ov16_02260BAC
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02263A90 ; =ov16_02260E98
	str r0, [r5, #4]
	ldr r0, _02263A94 ; =ov16_0226110C
	str r0, [r5, #8]
	ldr r0, _02263A98 ; =ov16_02261DE0
	str r0, [r5, #0xc]
	ldr r0, _02263A9C ; =ov16_0226232C
	str r0, [r5, #0x10]
	ldr r0, _02263AA0 ; =ov16_0226266C
	str r0, [r5, #0x14]
	ldr r0, _02263AC0 ; =0x00000196
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02263942:
	ldr r0, _02263ABC ; =0x00000195
	mov r1, #1
	ldrb r2, [r5, r0]
	tst r1, r2
	beq _0226396C
	ldr r1, _02263AC4 ; =ov16_02260AE4
	add r0, r0, #1
	str r1, [r5, #0]
	ldr r1, _02263AC8 ; =ov16_02260E78
	str r1, [r5, #4]
	ldr r1, _02263ACC ; =ov16_022610EC
	str r1, [r5, #8]
	ldr r1, _02263AD0 ; =ov16_02261DA8
	str r1, [r5, #0xc]
	ldr r1, _02263AD4 ; =ov16_0226230C
	str r1, [r5, #0x10]
	ldr r1, _02263AD8 ; =ov16_0226264C
	str r1, [r5, #0x14]
	mov r1, #2
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0226396C:
	ldr r1, _02263AA4 ; =ov16_022604C8
	add r0, r0, #1
	str r1, [r5, #0]
	ldr r1, _02263AA8 ; =ov16_02260C00
	str r1, [r5, #4]
	ldr r1, _02263AAC ; =ov16_02260F14
	str r1, [r5, #8]
	ldr r1, _02263AB0 ; =ov16_022611DC
	str r1, [r5, #0xc]
	ldr r1, _02263AB4 ; =ov16_02261E8C
	str r1, [r5, #0x10]
	ldr r1, _02263AB8 ; =ov16_022623F0
	str r1, [r5, #0x14]
	mov r1, #0
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0226398C:
	lsl r1, r1, #7
	tst r1, r4
	beq _022639C8
	ldr r0, _02263ABC ; =0x00000195
	mov r1, #1
	ldrb r2, [r5, r0]
	tst r2, r1
	beq _022639B2
	ldr r2, _02263ADC ; =ov16_02260B84
	add r0, r0, #1
	str r2, [r5, #0]
	mov r2, #0
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	str r2, [r5, #0x10]
	str r2, [r5, #0x14]
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022639B2:
	ldr r1, _02263AA4 ; =ov16_022604C8
	add r0, r0, #1
	str r1, [r5, #0]
	mov r1, #0
	str r1, [r5, #4]
	str r1, [r5, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022639C8:
	mov r1, #0x20
	tst r1, r4
	beq _02263A06
	ldr r0, _02263ABC ; =0x00000195
	mov r1, #1
	ldrb r2, [r5, r0]
	tst r2, r1
	beq _022639EE
	ldr r2, _02263AE0 ; =ov16_02260B04
	add r0, r0, #1
	str r2, [r5, #0]
	mov r2, #0
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	str r2, [r5, #0x10]
	str r2, [r5, #0x14]
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_022639EE:
	ldr r1, _02263AA4 ; =ov16_022604C8
	mov r2, #0
	str r1, [r5, #0]
	str r2, [r5, #4]
	str r2, [r5, #8]
	str r2, [r5, #0xc]
	ldr r1, _02263AB8 ; =ov16_022623F0
	str r2, [r5, #0x10]
	str r1, [r5, #0x14]
	add r0, r0, #1
	strb r2, [r5, r0]
	pop {r4, r5, r6, pc}
_02263A06:
	ldr r2, _02263ABC ; =0x00000195
	mov r1, #1
	ldrb r3, [r5, r2]
	tst r3, r1
	beq _02263A2E
	ldr r0, _02263A74 ; =ov16_02260AB4
	str r0, [r5, #0]
	ldr r0, _02263A78 ; =ov16_02260DB0
	str r0, [r5, #4]
	ldr r0, _02263A7C ; =ov16_022610A8
	str r0, [r5, #8]
	ldr r0, _02263A80 ; =ov16_02261D50
	str r0, [r5, #0xc]
	ldr r0, _02263A84 ; =ov16_02262258
	str r0, [r5, #0x10]
	ldr r0, _02263A88 ; =ov16_0226262C
	str r0, [r5, #0x14]
	add r0, r2, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02263A2E:
	mov r1, #0x10
	tst r0, r1
	beq _02263A54
	ldr r0, _02263A8C ; =ov16_02260BAC
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02263A90 ; =ov16_02260E98
	str r0, [r5, #4]
	ldr r0, _02263A94 ; =ov16_0226110C
	str r0, [r5, #8]
	ldr r0, _02263A98 ; =ov16_02261DE0
	str r0, [r5, #0xc]
	ldr r0, _02263A9C ; =ov16_0226232C
	str r0, [r5, #0x10]
	ldr r0, _02263AA0 ; =ov16_0226266C
	str r0, [r5, #0x14]
	add r0, r2, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
_02263A54:
	ldr r0, _02263AA4 ; =ov16_022604C8
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02263AA8 ; =ov16_02260C00
	str r0, [r5, #4]
	ldr r0, _02263AAC ; =ov16_02260F14
	str r0, [r5, #8]
	ldr r0, _02263AB0 ; =ov16_022611DC
	str r0, [r5, #0xc]
	ldr r0, _02263AB4 ; =ov16_02261E8C
	str r0, [r5, #0x10]
	ldr r0, _02263AB8 ; =ov16_022623F0
	str r0, [r5, #0x14]
	add r0, r2, #1
	strb r1, [r5, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02263A74: .word ov16_02260AB4
_02263A78: .word ov16_02260DB0
_02263A7C: .word ov16_022610A8
_02263A80: .word ov16_02261D50
_02263A84: .word ov16_02262258
_02263A88: .word ov16_0226262C
_02263A8C: .word ov16_02260BAC
_02263A90: .word ov16_02260E98
_02263A94: .word ov16_0226110C
_02263A98: .word ov16_02261DE0
_02263A9C: .word ov16_0226232C
_02263AA0: .word ov16_0226266C
_02263AA4: .word ov16_022604C8
_02263AA8: .word ov16_02260C00
_02263AAC: .word ov16_02260F14
_02263AB0: .word ov16_022611DC
_02263AB4: .word ov16_02261E8C
_02263AB8: .word ov16_022623F0
_02263ABC: .word 0x00000195
_02263AC0: .word 0x00000196
_02263AC4: .word ov16_02260AE4
_02263AC8: .word ov16_02260E78
_02263ACC: .word ov16_022610EC
_02263AD0: .word ov16_02261DA8
_02263AD4: .word ov16_0226230C
_02263AD8: .word ov16_0226264C
_02263ADC: .word ov16_02260B84
_02263AE0: .word ov16_02260B04
	thumb_func_end ov16_02263730

	thumb_func_start ov16_02263AE4
ov16_02263AE4: ; 0x02263AE4
	ldr r1, _02263AEC ; =0x00000195
	ldrb r0, [r0, r1]
	bx lr
	nop
_02263AEC: .word 0x00000195
	thumb_func_end ov16_02263AE4

	thumb_func_start ov16_02263AF0
ov16_02263AF0: ; 0x02263AF0
	ldr r1, _02263AF8 ; =0x00000196
	ldrb r0, [r0, r1]
	bx lr
	nop
_02263AF8: .word 0x00000196
	thumb_func_end ov16_02263AF0

	thumb_func_start ov16_02263AFC
ov16_02263AFC: ; 0x02263AFC
	ldr r1, [r0, #0x20]
	cmp r1, #0
	bne _02263B04
	ldr r1, [r0, #0x1c]
_02263B04:
	add r0, r1, #0
	bx lr
	thumb_func_end ov16_02263AFC

	thumb_func_start ov16_02263B08
ov16_02263B08: ; 0x02263B08
	add r0, #0x28
	bx lr
	thumb_func_end ov16_02263B08

	thumb_func_start ov16_02263B0C
ov16_02263B0C: ; 0x02263B0C
	add r0, #0x80
	bx lr
	thumb_func_end ov16_02263B0C

	thumb_func_start ov16_02263B10
ov16_02263B10: ; 0x02263B10
	ldr r3, _02263B1C ; =sub_020C4CF4
	add r0, #0x80
	mov r1, #0
	mov r2, #8
	bx r3
	nop
_02263B1C: .word sub_020C4CF4
	thumb_func_end ov16_02263B10

	thumb_func_start ov16_02263B20
ov16_02263B20: ; 0x02263B20
	push {r3, lr}
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _02263B2C
	bl sub_0200D3F4
_02263B2C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02263B20

	thumb_func_start ov16_02263B30
ov16_02263B30: ; 0x02263B30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, [sp, #0x50]
	add r7, r0, #0
	str r1, [sp, #0x14]
	add r5, r2, #0
	str r3, [sp, #0x18]
	bl ov16_0223E0C8
	add r1, r4, #0
	bl ov16_0223F2B8
	str r0, [sp, #0x20]
	add r0, r7, #0
	add r1, r4, #0
	bl ov16_0223E1F8
	add r6, r0, #0
	mov r0, #1
	and r0, r6
	str r0, [sp, #0x1c]
	beq _02263B60
	mov r1, #2
	b _02263B62
_02263B60:
	mov r1, #0
_02263B62:
	ldr r0, [r5, #0xc]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldrh r0, [r5, #6]
	mov r2, #5
	str r0, [sp, #0xc]
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	bl sub_02013750
	add r0, r7, #0
	bl ov16_0223E0C8
	ldrh r2, [r5]
	add r1, r4, #0
	bl ov16_0223F2CC
	add r0, r7, #0
	bl ov16_0223E0C8
	ldrh r2, [r5, #4]
	add r1, r4, #0
	bl ov16_0223F2E4
	add r0, r7, #0
	bl ov16_0223E0C8
	ldr r2, [sp, #0x40]
	add r1, r4, #0
	bl ov16_0223F2FC
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x40]
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	ldr r0, [sp, #0x54]
	ldr r4, [sp, #0x38]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	add r3, r4, r3
	bl sub_02007C7C
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _02263C16
	cmp r6, #1
	ble _02263BD4
	asr r6, r6, #1
_02263BD4:
	add r0, r4, #0
	mov r1, #0x2a
	add r2, r6, #0
	bl sub_02007DEC
	ldr r2, [sp, #0x4c]
	add r0, r4, #0
	mov r1, #0x2e
	bl sub_02007DEC
	ldr r2, [sp, #0x38]
	add r0, r4, #0
	mov r1, #0x14
	add r2, #0x24
	bl sub_02007DEC
	ldr r2, [sp, #0x48]
	add r0, r4, #0
	mov r1, #0x15
	bl sub_02007DEC
	ldr r3, [sp, #0x40]
	mov r2, #0x24
	add r0, r4, #0
	mov r1, #0x16
	sub r2, r2, r3
	bl sub_02007DEC
	ldr r2, [sp, #0x44]
	add r0, r4, #0
	mov r1, #0x29
	bl sub_02007DEC
_02263C16:
	add r0, r4, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_02263B30

	thumb_func_start ov16_02263C1C
ov16_02263C1C: ; 0x02263C1C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02263CD8 ; =0x00000195
	add r6, r2, #0
	ldrb r2, [r5, r1]
	mov r1, #1
	add r7, r0, #0
	add r4, r3, #0
	tst r1, r2
	beq _02263C76
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	beq _02263C56
	ldr r0, _02263CDC ; =0x000003DE
	strh r0, [r4, #2]
	mov r0, #0x1b
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	str r1, [r4, #4]
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02263C56:
	ldr r0, _02263CE0 ; =0x000003DD
	strh r0, [r4, #2]
	mov r0, #0x32
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	str r1, [r4, #4]
	ldrb r1, [r5, r0]
	str r1, [r4, #8]
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02263C76:
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02263CC0
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	bne _02263CC0
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _02263C9A
	mov r0, #0xf6
	lsl r0, r0, #2
	strh r0, [r4, #2]
	b _02263CC4
_02263C9A:
	cmp r0, #0x19
	bhs _02263CA4
	ldr r0, _02263CE4 ; =0x000003D9
	strh r0, [r4, #2]
	b _02263CC4
_02263CA4:
	cmp r0, #0x32
	bhs _02263CB0
	mov r0, #0xf7
	lsl r0, r0, #2
	strh r0, [r4, #2]
	b _02263CC4
_02263CB0:
	cmp r0, #0x4b
	bhs _02263CBA
	ldr r0, _02263CE8 ; =0x000003DA
	strh r0, [r4, #2]
	b _02263CC4
_02263CBA:
	ldr r0, _02263CEC ; =0x000003DB
	strh r0, [r4, #2]
	b _02263CC4
_02263CC0:
	ldr r0, _02263CE4 ; =0x000003D9
	strh r0, [r4, #2]
_02263CC4:
	mov r0, #2
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263CD8: .word 0x00000195
_02263CDC: .word 0x000003DE
_02263CE0: .word 0x000003DD
_02263CE4: .word 0x000003D9
_02263CE8: .word 0x000003DA
_02263CEC: .word 0x000003DB
	thumb_func_end ov16_02263C1C

	thumb_func_start ov16_02263CF0
ov16_02263CF0: ; 0x02263CF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _02263DB0 ; =0x00000195
	add r6, r2, #0
	ldrb r2, [r5, r1]
	mov r1, #1
	add r7, r0, #0
	add r4, r3, #0
	tst r1, r2
	beq _02263D4C
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	bne _02263D30
	mov r0, #0xf3
	lsl r0, r0, #2
	strh r0, [r4, #2]
	mov r0, #0x32
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	str r1, [r4, #4]
	ldrb r1, [r5, r0]
	str r1, [r4, #8]
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02263D30:
	ldr r0, _02263DB4 ; =0x000003CE
	strh r0, [r4, #2]
	mov r0, #0x1b
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	str r1, [r4, #4]
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02263D4C:
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	bne _02263D98
	add r0, r7, #0
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	bne _02263D98
	ldrh r1, [r6, #2]
	cmp r1, #0x64
	bhs _02263D6E
	ldr r0, _02263DB8 ; =0x000003D6
	strh r0, [r4, #2]
	b _02263D9C
_02263D6E:
	ldr r0, _02263DBC ; =0x00000145
	cmp r1, r0
	bhs _02263D7A
	ldr r0, _02263DC0 ; =0x000003D7
	strh r0, [r4, #2]
	b _02263D9C
_02263D7A:
	add r0, #0xe1
	cmp r1, r0
	bhs _02263D86
	ldr r0, _02263DC4 ; =0x000003D5
	strh r0, [r4, #2]
	b _02263D9C
_02263D86:
	ldr r0, _02263DC8 ; =0x00000307
	cmp r1, r0
	bhs _02263D92
	add r0, #0xcd
	strh r0, [r4, #2]
	b _02263D9C
_02263D92:
	add r0, #0xcc
	strh r0, [r4, #2]
	b _02263D9C
_02263D98:
	ldr r0, _02263DCC ; =0x000003D3
	strh r0, [r4, #2]
_02263D9C:
	mov r0, #2
	strb r0, [r4, #1]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r5, r0]
	ldrb r0, [r6, #1]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02263DB0: .word 0x00000195
_02263DB4: .word 0x000003CE
_02263DB8: .word 0x000003D6
_02263DBC: .word 0x00000145
_02263DC0: .word 0x000003D7
_02263DC4: .word 0x000003D5
_02263DC8: .word 0x00000307
_02263DCC: .word 0x000003D3
	thumb_func_end ov16_02263CF0

	thumb_func_start ov16_02263DD0
ov16_02263DD0: ; 0x02263DD0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r2, #0
	bl ov16_0223DF0C
	add r4, r0, #0
	mov r0, #2
	tst r0, r4
	beq _02263DF6
	add r0, r7, #0
	mov r1, #3
	bl ov16_0223E1C4
	add r6, r0, #0
	add r0, r7, #0
	mov r1, #5
	bl ov16_0223E1C4
	b _02263E00
_02263DF6:
	add r0, r7, #0
	mov r1, #1
	bl ov16_0223E1C4
	add r6, r0, #0
_02263E00:
	mov r1, #4
	tst r1, r4
	beq _02263E40
	mov r1, #0x80
	tst r1, r4
	beq _02263E20
	mov r1, #0x3e
	lsl r1, r1, #4
	strh r1, [r5, #2]
	mov r1, #0x3b
	strb r1, [r5, #1]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02263E20:
	mov r1, #8
	add r2, r4, #0
	tst r2, r1
	beq _02263E36
	ldr r1, _02263E70 ; =0x000003CB
	strh r1, [r5, #2]
	mov r1, #0x1a
	strb r1, [r5, #1]
	str r6, [r5, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02263E36:
	ldr r0, _02263E74 ; =0x000003CA
	strh r0, [r5, #2]
	strb r1, [r5, #1]
	str r6, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02263E40:
	mov r1, #0x10
	tst r1, r4
	bne _02263E4C
	mov r1, #8
	tst r1, r4
	beq _02263E60
_02263E4C:
	mov r1, #0x3e
	lsl r1, r1, #4
	strh r1, [r5, #2]
	mov r1, #0x3b
	strb r1, [r5, #1]
	str r6, [r5, #4]
	str r6, [r5, #8]
	str r0, [r5, #0xc]
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02263E60:
	ldr r0, _02263E78 ; =0x000003C9
	strh r0, [r5, #2]
	mov r0, #0x1e
	strb r0, [r5, #1]
	str r6, [r5, #4]
	str r6, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263E70: .word 0x000003CB
_02263E74: .word 0x000003CA
_02263E78: .word 0x000003C9
	thumb_func_end ov16_02263DD0

	thumb_func_start ov16_02263E7C
ov16_02263E7C: ; 0x02263E7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #4]
	str r0, [sp]
	add r6, r2, #0
	add r4, r3, #0
	bl ov16_0223DF0C
	str r0, [sp, #0x14]
	ldr r2, _02264190 ; =0x00000195
	ldr r0, [sp, #4]
	ldrb r1, [r0, r2]
	mov r0, #1
	tst r0, r1
	bne _02263E9C
	b _02263FE4
_02263E9C:
	ldr r0, [sp, #0x14]
	mov r1, #2
	and r0, r1
	str r0, [sp, #0x10]
	beq _02263EB8
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	ldr r0, [sp]
	add r1, r5, #0
	bl ov16_0223E258
	add r7, r0, #0
	b _02263EC0
_02263EB8:
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	add r7, r5, #0
_02263EC0:
	ldr r0, [sp, #0x14]
	mov r1, #4
	tst r0, r1
	beq _02263F66
	ldr r0, [sp, #0x14]
	mov r1, #0x80
	tst r0, r1
	beq _02263EF8
	ldr r0, _02264194 ; =0x000003DF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x3c
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	str r7, [r4, #0x14]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02263EF8:
	ldr r0, [sp, #0x14]
	mov r1, #8
	tst r0, r1
	beq _02263F26
	mov r0, #0x3d
	lsl r0, r0, #4
	strh r0, [r4, #2]
	mov r0, #0x38
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	add sp, #0x18
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	str r7, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02263F26:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02263F4E
	ldr r0, _02264198 ; =0x000003CF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x31
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02263F4E:
	ldr r0, _0226419C ; =0x000003CE
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x1b
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02263F66:
	ldr r0, [sp, #0x14]
	mov r1, #0x10
	tst r0, r1
	bne _02263F76
	ldr r0, [sp, #0x14]
	mov r1, #8
	tst r0, r1
	beq _02263F9E
_02263F76:
	ldr r0, _02264194 ; =0x000003DF
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x3c
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	str r7, [r4, #0x10]
	str r7, [r4, #0x14]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_02263F9E:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02263FC8
	ldr r0, _022641A0 ; =0x000003CD
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x39
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02263FC8:
	mov r0, #0xf3
	lsl r0, r0, #2
	strh r0, [r4, #2]
	mov r0, #0x32
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	add sp, #0x18
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_02263FE4:
	ldr r0, [sp, #0x14]
	mov r1, #4
	and r0, r1
	str r0, [sp, #0xc]
	beq _02264078
	ldr r0, [sp]
	bl ov16_0223F6E4
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, [sp, #0x14]
	mov r1, #8
	and r0, r1
	str r0, [sp, #8]
	beq _0226404E
	ldr r0, [sp]
	add r1, r2, #0
	bl ov16_0223F6F0
	cmp r0, #3
	bhi _022640BE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226401A: ; jump table
	.short _02264022 - _0226401A - 2 ; case 0
	.short _02264038 - _0226401A - 2 ; case 1
	.short _02264038 - _0226401A - 2 ; case 2
	.short _02264022 - _0226401A - 2 ; case 3
_02264022:
	ldr r0, [sp]
	mov r1, #4
	bl ov16_0223E1C4
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #2
	bl ov16_0223E1C4
	add r7, r0, #0
	b _022640BE
_02264038:
	ldr r0, [sp]
	mov r1, #2
	bl ov16_0223E1C4
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl ov16_0223E1C4
	add r7, r0, #0
	b _022640BE
_0226404E:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _0226406A
	ldr r0, [sp]
	bl ov16_0223E1C4
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl ov16_0223E1C4
	add r7, r0, #0
	b _022640BE
_0226406A:
	ldr r0, [sp]
	mov r1, #0
	bl ov16_0223E1C4
	add r5, r0, #0
	add r7, r5, #0
	b _022640BE
_02264078:
	ldr r0, [sp, #0x14]
	mov r1, #8
	and r0, r1
	str r0, [sp, #8]
	beq _0226409A
	ldr r1, [sp, #4]
	sub r2, r2, #1
	ldrb r1, [r1, r2]
	ldr r0, [sp]
	bl ov16_0223E258
	add r5, r0, #0
	mov r1, #0x65
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldrb r7, [r0, r1]
	b _022640BE
_0226409A:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _022640B6
	ldr r0, [sp]
	bl ov16_0223E1C4
	add r5, r0, #0
	ldr r0, [sp]
	mov r1, #4
	bl ov16_0223E1C4
	add r7, r0, #0
	b _022640BE
_022640B6:
	ldr r0, [sp, #4]
	sub r1, r2, #1
	ldrb r5, [r0, r1]
	add r7, r5, #0
_022640BE:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _02264128
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022640EC
	ldr r0, _022641A4 ; =0x000003D1
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x31
	strb r0, [r4, #1]
	str r5, [r4, #4]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #8]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_022640EC:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _02264114
	ldr r0, _022641A8 ; =0x000003D2
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #9
	strb r0, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02264114:
	ldr r0, _022641AC ; =0x000003D3
	add sp, #0x18
	strh r0, [r4, #2]
	strb r1, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02264128:
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _02264152
	ldr r0, _022641B0 ; =0x000003E1
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #0x39
	strb r0, [r4, #1]
	str r5, [r4, #4]
	str r5, [r4, #8]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #0xc]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_02264152:
	ldr r0, [sp, #0x14]
	mov r1, #2
	tst r0, r1
	beq _0226417A
	ldr r0, _022641A8 ; =0x000003D2
	add sp, #0x18
	strh r0, [r4, #2]
	mov r0, #9
	strb r0, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add r0, r6, r7
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r7
	str r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0226417A:
	ldr r0, _022641AC ; =0x000003D3
	strh r0, [r4, #2]
	strb r1, [r4, #1]
	add r0, r6, r5
	ldrb r0, [r0, #4]
	lsl r0, r0, #8
	orr r0, r5
	str r0, [r4, #4]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264190: .word 0x00000195
_02264194: .word 0x000003DF
_02264198: .word 0x000003CF
_0226419C: .word 0x000003CE
_022641A0: .word 0x000003CD
_022641A4: .word 0x000003D1
_022641A8: .word 0x000003D2
_022641AC: .word 0x000003D3
_022641B0: .word 0x000003E1
	thumb_func_end ov16_02263E7C

	thumb_func_start ov16_022641B4
ov16_022641B4: ; 0x022641B4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	add r5, r2, #0
	bl ov16_0223DF0C
	add r6, r0, #0
	ldr r0, [sp]
	bl ov16_0223F438
	add r7, r0, #0
	mov r0, #2
	tst r0, r6
	beq _022641E2
	ldr r0, [sp]
	mov r1, #3
	bl ov16_0223E1C4
	add r4, r0, #0
	ldr r0, [sp]
	mov r1, #5
	bl ov16_0223E1C4
	b _022641EC
_022641E2:
	ldr r0, [sp]
	mov r1, #1
	bl ov16_0223E1C4
	add r4, r0, #0
_022641EC:
	cmp r7, #1
	beq _022641FA
	cmp r7, #2
	beq _0226421A
	cmp r7, #3
	beq _0226423C
	pop {r3, r4, r5, r6, r7, pc}
_022641FA:
	mov r1, #8
	add r2, r6, #0
	tst r2, r1
	beq _02264210
	ldr r1, _0226425C ; =0x00000312
	strh r1, [r5, #2]
	mov r1, #0x1a
	strb r1, [r5, #1]
	str r4, [r5, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02264210:
	ldr r0, _02264260 ; =0x00000311
	strh r0, [r5, #2]
	strb r1, [r5, #1]
	str r4, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0226421A:
	mov r1, #8
	add r2, r6, #0
	tst r2, r1
	beq _02264232
	mov r1, #0xc5
	lsl r1, r1, #2
	strh r1, [r5, #2]
	mov r1, #0x1a
	strb r1, [r5, #1]
	str r4, [r5, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02264232:
	ldr r0, _02264264 ; =0x00000313
	strh r0, [r5, #2]
	strb r1, [r5, #1]
	str r4, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
_0226423C:
	mov r1, #8
	add r2, r6, #0
	tst r2, r1
	beq _02264252
	ldr r1, _02264268 ; =0x00000316
	strh r1, [r5, #2]
	mov r1, #0x1a
	strb r1, [r5, #1]
	str r4, [r5, #4]
	str r0, [r5, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02264252:
	ldr r0, _0226426C ; =0x00000315
	strh r0, [r5, #2]
	strb r1, [r5, #1]
	str r4, [r5, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226425C: .word 0x00000312
_02264260: .word 0x00000311
_02264264: .word 0x00000313
_02264268: .word 0x00000316
_0226426C: .word 0x00000315
	thumb_func_end ov16_022641B4

	thumb_func_start ov16_02264270
ov16_02264270: ; 0x02264270
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r0, #0
	str r2, [sp]
	add r7, r3, #0
	str r6, [sp, #4]
	add r4, r6, #0
	bl ov16_0223DF1C
	cmp r0, #0
	ble _022642B8
_02264288:
	add r0, r4, #0
	bl sub_020787CC
	ldr r1, [sp]
	ldrb r1, [r1, #1]
	tst r0, r1
	beq _022642AC
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0223E208
	cmp r0, #0
	beq _022642AA
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	b _022642AC
_022642AA:
	add r6, r6, #1
_022642AC:
	add r0, r5, #0
	add r4, r4, #1
	bl ov16_0223DF1C
	cmp r4, r0
	blt _02264288
_022642B8:
	cmp r6, #0
	beq _022642D6
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _022642D6
	ldr r0, _02264358 ; =0x0000030D
	mov r1, #0xc3
	strh r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	add r0, r5, #0
	bl ov16_0223F444
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022642D6:
	cmp r6, #0
	beq _022642EE
	ldr r0, _02264358 ; =0x0000030D
	mov r1, #0xc2
	strh r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	add r0, r5, #0
	bl ov16_0223F444
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_022642EE:
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #8
	tst r0, r1
	beq _0226431A
	mov r0, #0xc6
	lsl r0, r0, #2
	strh r0, [r7, #2]
	mov r0, #0x1a
	strb r0, [r7, #1]
	add r0, r5, #0
	mov r1, #3
	bl ov16_0223E1C4
	str r0, [r7, #4]
	add r0, r5, #0
	mov r1, #5
	bl ov16_0223E1C4
	str r0, [r7, #8]
	b _0226434A
_0226431A:
	add r0, r5, #0
	bl ov16_0223DF0C
	mov r1, #2
	tst r0, r1
	ldr r0, _0226435C ; =0x00000317
	beq _0226433A
	strh r0, [r7, #2]
	mov r0, #8
	strb r0, [r7, #1]
	add r0, r5, #0
	mov r1, #3
	bl ov16_0223E1C4
	str r0, [r7, #4]
	b _0226434A
_0226433A:
	strh r0, [r7, #2]
	mov r0, #8
	strb r0, [r7, #1]
	add r0, r5, #0
	mov r1, #1
	bl ov16_0223E1C4
	str r0, [r7, #4]
_0226434A:
	add r0, r5, #0
	mov r1, #0xc1
	bl ov16_0223F444
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02264358: .word 0x0000030D
_0226435C: .word 0x00000317
	thumb_func_end ov16_02264270

	thumb_func_start ov16_02264360
ov16_02264360: ; 0x02264360
	push {r4, r5, r6, lr}
	add r6, r1, #0
	mov r1, #0xef
	add r4, r2, #0
	lsl r1, r1, #2
	strh r1, [r4, #2]
	mov r1, #8
	add r5, r0, #0
	strb r1, [r4, #1]
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	beq _022643A6
	add r0, r5, #0
	bl ov16_0223F6E4
	add r1, r0, #0
	add r0, r5, #0
	bl ov16_0223F6F0
	cmp r0, #0
	beq _0226439A
	add r0, r5, #0
	mov r1, #4
	bl ov16_0223E1C4
	str r0, [r4, #4]
	b _022643AE
_0226439A:
	add r0, r5, #0
	mov r1, #2
	bl ov16_0223E1C4
	str r0, [r4, #4]
	b _022643AE
_022643A6:
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r0, [r6, r0]
	str r0, [r4, #4]
_022643AE:
	add r0, r5, #0
	mov r1, #0xc2
	bl ov16_0223F444
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02264360

	thumb_func_start ov16_022643B8
ov16_022643B8: ; 0x022643B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov16_0223E010
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl ov16_0223E018
	str r0, [sp, #0x14]
	add r0, r5, #0
	bl ov16_0223E064
	add r2, r0, #0
	mov r0, #1
	tst r0, r4
	beq _022643E4
	mov r1, #2
	b _022643E6
_022643E4:
	mov r1, #0
_022643E6:
	add r3, sp, #0x20
	mov r0, #0x14
	ldrsh r0, [r3, r0]
	mov r4, #0x10
	str r0, [sp]
	str r6, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	mov r0, #5
	str r0, [sp, #0x10]
	ldrsh r3, [r3, r4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl sub_02076994
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_022643B8

	thumb_func_start ov16_02264408
ov16_02264408: ; 0x02264408
	push {r4, r5, r6, r7, lr}
	sub sp, #0xac
	str r0, [sp]
	ldr r0, [r3, #0x4c]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _02264426
	mov r0, #8
	str r0, [sp, #0x84]
	add r0, r3, #0
	ldrh r0, [r0, #2]
	str r0, [sp, #0x18]
	b _02264430
_02264426:
	mov r0, #0x3f
	str r0, [sp, #0x84]
	add r0, r3, #0
	ldr r0, [r0, #0x50]
	str r0, [sp, #0x18]
_02264430:
	ldr r0, [sp]
	bl ov16_0223DF00
	str r0, [sp, #0x20]
	ldr r0, [sp]
	bl ov16_0223E064
	str r0, [sp, #0x24]
	ldr r0, [sp]
	bl ov16_0223E010
	add r5, sp, #0x1c
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	mov r4, #0
	str r0, [sp, #0x14]
	str r5, [sp, #0x10]
	add r6, r5, #0
	add r7, r0, #0
_02264456:
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223F2AC
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x14]
	ldrh r1, [r0, #0x18]
	ldr r0, [sp, #0x10]
	strh r1, [r0, #0x34]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x3c
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x24
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x40
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, r0, r4
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r6, #0
	add r0, #0x44
	strb r1, [r0]
	ldr r0, [r7, #0x2c]
	add r4, r4, #1
	str r0, [r5, #0x48]
	ldr r0, [r7, #0x3c]
	add r6, r6, #1
	str r0, [r5, #0x58]
	ldr r0, [sp, #0x14]
	add r5, r5, #4
	add r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r7, r7, #4
	add r0, r0, #2
	str r0, [sp, #0x10]
	cmp r4, #4
	blt _02264456
	ldr r0, [sp]
	add r1, sp, #0x38
	bl ov16_0223F87C
	ldr r0, [sp]
	add r1, sp, #0x3c
	bl ov16_0223F8AC
	ldr r0, [sp]
	bl ov16_0223DF0C
	mov r2, #0x65
	str r0, [sp, #0x4c]
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldr r0, [sp]
	bl ov16_0223EE30
	str r0, [sp, #0xa0]
	ldr r0, [sp]
	bl ov16_0223F1E8
	str r0, [sp, #0xa4]
	ldr r0, [sp]
	bl ov16_0223F1F0
	str r0, [sp, #0xa8]
	mov r0, #7
	str r0, [sp, #0x88]
	ldr r0, [sp]
	bl ov16_0223E240
	add r0, r0, #3
	str r0, [sp, #0x8c]
	ldr r0, [sp]
	bl ov16_0223EC04
	add r4, r0, #0
	ldr r0, [sp]
	bl ov16_0223E240
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, #0xac
	add r0, r4, r0
	str r0, [sp, #0x90]
	mov r0, #2
	str r0, [sp, #0x94]
	mov r0, #0
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x98]
	mov r0, #8
	str r0, [sp, #0x9c]
	lsl r2, r2, #0x10
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	lsr r2, r2, #0x10
	add r3, sp, #0x1c
	bl ov12_0221FE30
	add sp, #0xac
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_02264408

	thumb_func_start ov16_02264530
ov16_02264530: ; 0x02264530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r7, r1, #0
	str r3, [r6, #0]
	str r0, [sp]
	str r3, [r6, #4]
	mov r4, #0
	add r5, r6, #0
	str r7, [sp, #0xc]
	str r6, [sp, #8]
	str r7, [sp, #4]
_02264548:
	ldr r0, [sp]
	add r1, r4, #0
	bl ov16_0223F2AC
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	ldrh r1, [r0, #0x18]
	ldr r0, [sp, #8]
	strh r1, [r0, #0x28]
	add r0, r7, r4
	add r0, #0x20
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x30
	strb r1, [r0]
	add r0, r7, r4
	add r0, #0x24
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x34
	strb r1, [r0]
	add r0, r7, r4
	add r0, #0x28
	ldrb r1, [r0]
	add r0, r6, r4
	add r0, #0x38
	strb r1, [r0]
	ldr r0, [sp, #4]
	add r4, r4, #1
	ldr r0, [r0, #0x2c]
	str r0, [r5, #0x3c]
	ldr r0, [sp, #0xc]
	add r5, r5, #4
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #2
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r0, r0, #4
	str r0, [sp, #4]
	cmp r4, #4
	blt _02264548
	add r1, r6, #0
	ldr r0, [sp]
	add r1, #0x4c
	bl ov16_0223F87C
	add r6, #0x18
	ldr r0, [sp]
	add r1, r6, #0
	bl ov16_0223F8AC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_02264530

	thumb_func_start ov16_022645B8
ov16_022645B8: ; 0x022645B8
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r2, #0
	bne _022645F6
	add r0, sp, #0
	ldrh r6, [r0, #0x10]
	mov r1, #9
	add r0, r6, #0
	bl sub_020790C4
	mov r1, #0x40
	tst r0, r1
	bne _022645D8
	mov r0, #1
	b _022645DA
_022645D8:
	mov r0, #0
_022645DA:
	strb r0, [r4]
	add r0, r6, #0
	mov r1, #9
	bl sub_020790C4
	mov r1, #0x80
	tst r0, r1
	beq _022645F0
	mov r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_022645F0:
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_022645F6:
	sub r3, #0x12
	cmp r3, #0x15
	bhi _02264646
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264608: ; jump table
	.short _02264634 - _02264608 - 2 ; case 0
	.short _02264634 - _02264608 - 2 ; case 1
	.short _02264634 - _02264608 - 2 ; case 2
	.short _02264634 - _02264608 - 2 ; case 3
	.short _02264634 - _02264608 - 2 ; case 4
	.short _02264646 - _02264608 - 2 ; case 5
	.short _02264646 - _02264608 - 2 ; case 6
	.short _02264646 - _02264608 - 2 ; case 7
	.short _02264646 - _02264608 - 2 ; case 8
	.short _02264646 - _02264608 - 2 ; case 9
	.short _02264646 - _02264608 - 2 ; case 10
	.short _02264646 - _02264608 - 2 ; case 11
	.short _02264646 - _02264608 - 2 ; case 12
	.short _02264634 - _02264608 - 2 ; case 13
	.short _02264634 - _02264608 - 2 ; case 14
	.short _02264646 - _02264608 - 2 ; case 15
	.short _02264634 - _02264608 - 2 ; case 16
	.short _02264634 - _02264608 - 2 ; case 17
	.short _0226463E - _02264608 - 2 ; case 18
	.short _02264634 - _02264608 - 2 ; case 19
	.short _0226463E - _02264608 - 2 ; case 20
	.short _02264634 - _02264608 - 2 ; case 21
_02264634:
	mov r0, #1
	strb r0, [r4]
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_0226463E:
	mov r0, #1
	strb r0, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_02264646:
	mov r0, #0
	strb r0, [r4]
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov16_022645B8

	thumb_func_start ov16_02264650
ov16_02264650: ; 0x02264650
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #8]
	mov r4, #0
	bl sub_0200D81C
	cmp r0, #1
	beq _02264668
	ldr r1, _022646C0 ; =0x00000FFF
	cmp r0, r1
	beq _02264692
	b _02264696
_02264668:
	ldrh r1, [r5, #0x12]
	lsl r0, r1, #0x1f
	lsr r0, r0, #0x1f
	bne _022646BC
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strh r0, [r5, #0x12]
	mov r0, #5
	mov r1, #8
	bl sub_02018144
	add r1, r0, #0
	add r2, r4, #0
	str r2, [r1, #0]
	ldr r0, _022646C4 ; =ov16_022646C8
	str r2, [r1, #4]
	bl sub_0200D9E8
	b _022646BC
_02264692:
	mov r4, #1
	b _022646BC
_02264696:
	sub r1, #0xff
	add r2, r0, #0
	and r2, r1
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	bne _022646BC
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	beq _022646BC
	ldr r0, [r5, #8]
	add r1, r4, #0
	bl sub_0200D3CC
	ldr r0, [r5, #8]
	sub r1, r6, #1
	bl sub_0200D364
	mov r4, #1
_022646BC:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022646C0: .word 0x00000FFF
_022646C4: .word ov16_022646C8
	thumb_func_end ov16_02264650

	thumb_func_start ov16_022646C8
ov16_022646C8: ; 0x022646C8
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _022646DE
	cmp r0, #1
	beq _022646F6
	cmp r0, #2
	beq _02264718
	pop {r3, r4, r5, pc}
_022646DE:
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #0x10
	mov r2, #0
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_022646F6:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _0226472E
	mov r0, #1
	str r0, [sp]
	mov r0, #4
	mov r1, #0
	mov r2, #0x10
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02264718:
	mov r0, #1
	bl sub_0200AC1C
	cmp r0, #1
	bne _0226472E
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	bl sub_0200DA58
_0226472E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_022646C8

	thumb_func_start ov16_02264730
ov16_02264730: ; 0x02264730
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	bl ov16_0223F720
	add r0, r4, #0
	bl ov16_0223DF10
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_0225B444
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_02264730

	thumb_func_start ov16_0226474C
ov16_0226474C: ; 0x0226474C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #2
	bl ov16_0223F720
	add r0, r4, #0
	bl ov16_0223DF10
	add r1, r0, #0
	add r0, r4, #0
	bl ov16_0225B444
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0226474C

	thumb_func_start ov16_02264768
ov16_02264768: ; 0x02264768
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov16_0223DF0C
	mov r1, #4
	tst r0, r1
	beq _02264794
	add r0, r5, #0
	add r1, r6, #0
	bl ov16_0223E16C
	bl sub_02025FCC
	cmp r0, #0
	bne _02264794
	cmp r4, #1
	bhi _02264794
	add r4, #0x67
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_02264794:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_02264768

	.rodata


	.global Unk_ov16_0226F174
Unk_ov16_0226F174: ; 0x0226F174
	.incbin "incbin/overlay16_rodata.bin", 0xF18, 0xF20 - 0xF18

	.global Unk_ov16_0226F17C
Unk_ov16_0226F17C: ; 0x0226F17C
	.incbin "incbin/overlay16_rodata.bin", 0xF20, 0xF38 - 0xF20

	.global Unk_ov16_0226F194
Unk_ov16_0226F194: ; 0x0226F194
	.incbin "incbin/overlay16_rodata.bin", 0xF38, 0xF52 - 0xF38

	.global Unk_ov16_0226F1AE
Unk_ov16_0226F1AE: ; 0x0226F1AE
	.incbin "incbin/overlay16_rodata.bin", 0xF52, 0xF74 - 0xF52

	.global Unk_ov16_0226F1D0
Unk_ov16_0226F1D0: ; 0x0226F1D0
	.incbin "incbin/overlay16_rodata.bin", 0xF74, 0xFD0 - 0xF74

	.global Unk_ov16_0226F22C
Unk_ov16_0226F22C: ; 0x0226F22C
	.incbin "incbin/overlay16_rodata.bin", 0xFD0, 0x10C0 - 0xFD0

	.global Unk_ov16_0226F31C
Unk_ov16_0226F31C: ; 0x0226F31C
	.incbin "incbin/overlay16_rodata.bin", 0x10C0, 0x18

