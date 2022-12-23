	.include "macros/function.inc"
	.include "overlay079/ov79_021D183C.inc"

	

	.text


	thumb_func_start ov79_021D183C
ov79_021D183C: ; 0x021D183C
	ldrb r2, [r0, #4]
	mov r1, #0x20
	bic r2, r1
	strb r2, [r0, #4]
	mov r1, #0xff
	strb r1, [r0, #6]
	ldrb r1, [r0, #6]
	strb r1, [r0, #7]
	bx lr
	; .align 2, 0
	thumb_func_end ov79_021D183C

	thumb_func_start ov79_021D1850
ov79_021D1850: ; 0x021D1850
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	cmp r3, #0
	beq _021D186E
	mov r0, #0x42
	lsl r0, r0, #2
	mov r1, #1
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200E060
_021D186E:
	mov r0, #0xd8
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	add r0, #0xe8
	mov r2, #0
	add r0, r5, r0
	mov r1, #0xff
	add r3, r2, #0
	bl sub_0201AE78
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r3, #0
	str r3, [sp]
	ldr r0, _021D18B0 ; =0x0001020F
	str r4, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x42
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	strb r0, [r5, #0x1f]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D18B0: .word 0x0001020F
	thumb_func_end ov79_021D1850

	thumb_func_start ov79_021D18B4
ov79_021D18B4: ; 0x021D18B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r5, r1, #0
	mov r0, #0xff
	strb r0, [r5, #0x1e]
	ldrb r0, [r5, #0x1e]
	strb r0, [r5, #0x1d]
	ldrb r2, [r5, #0x1b]
	cmp r2, #5
	bne _021D18D2
	mov r7, #0x1f
	b _021D18E8
_021D18D2:
	mov r7, #1
	ldr r1, [sp, #4]
	cmp r2, #0
	ble _021D18E8
_021D18DA:
	lsl r0, r7, #0x19
	lsr r7, r0, #0x18
	add r0, r1, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	cmp r1, r2
	blt _021D18DA
_021D18E8:
	ldr r0, [sp]
	mov r6, #0
	ldrb r0, [r0]
	cmp r0, #0
	ble _021D195E
	ldr r0, [sp]
	str r0, [sp, #8]
	add r0, #0x1c
	str r0, [sp, #8]
_021D18FA:
	ldr r0, [sp, #8]
	lsl r1, r6, #3
	add r4, r0, r1
	add r0, r4, #0
	bl ov79_021D183C
	ldrb r0, [r4, #4]
	lsl r1, r0, #0x18
	lsr r1, r1, #0x1f
	beq _021D1950
	lsl r1, r0, #0x19
	lsr r1, r1, #0x1f
	bne _021D1950
	mov r1, #0x1f
	and r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	tst r1, r7
	beq _021D1950
	mov r1, #0x20
	orr r0, r1
	strb r0, [r4, #4]
	ldrb r0, [r5, #0x1d]
	cmp r0, #0xff
	ldrb r0, [r4, #5]
	bne _021D1932
	strb r0, [r5, #0x1d]
	b _021D193E
_021D1932:
	ldrb r1, [r5, #0x1e]
	lsl r2, r1, #3
	ldr r1, [sp]
	add r1, r1, r2
	add r1, #0x23
	strb r0, [r1]
_021D193E:
	ldrb r0, [r5, #0x1e]
	strb r0, [r4, #6]
	ldrb r0, [r4, #5]
	strb r0, [r5, #0x1e]
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
_021D1950:
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldr r0, [sp]
	ldrb r0, [r0]
	cmp r6, r0
	blt _021D18FA
_021D195E:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov79_021D18B4

	thumb_func_start ov79_021D196C
ov79_021D196C: ; 0x021D196C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r1, r5, #0
	bl ov79_021D18B4
	strb r0, [r5, #0x1c]
	ldrb r0, [r5, #0x1c]
	ldr r1, [r5, #0]
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1, #0]
	ldrb r4, [r5, #0x1e]
	cmp r4, #0xff
	beq _021D19E6
	mov r7, #0
_021D1992:
	ldr r1, [r5, #0x20]
	lsl r0, r4, #3
	add r1, #0x1c
	add r6, r1, r0
	ldrb r4, [r6, #6]
	ldrb r1, [r6, #2]
	ldr r0, [r5, #0x28]
	bl sub_02015918
	add r2, r0, #0
	str r7, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #0x30]
	add r1, r7, #0
	add r3, r7, #0
	bl sub_0200B48C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldrb r2, [r6, #1]
	ldr r0, [r5, #0x30]
	mov r1, #1
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r5, #0x30]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x3c]
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0xcc
	ldrb r2, [r6, #5]
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x34]
	bl sub_02013A6C
	cmp r4, #0xff
	bne _021D1992
_021D19E6:
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x38]
	mov r2, #0xff
	bl sub_02013A6C
	add r1, r5, #0
	ldr r0, _021D1AB4 ; =0x021D3BB0
	add r1, #0x84
	mov r2, #0x20
	bl MI_CpuCopy8
	ldr r0, [r5, #0x20]
	ldrh r1, [r0, #6]
	add r0, r5, #0
	add r0, #0x82
	strh r1, [r0]
	ldr r0, [r5, #0x20]
	ldrh r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x80
	strh r1, [r0]
	ldr r0, [r5, #0x20]
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _021D1A64
	add r0, r5, #0
	add r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D1A48
	add r0, r5, #0
	add r0, #0x82
	ldrh r1, [r0]
	cmp r1, #0
	beq _021D1A5E
	ldrb r0, [r5, #0x1c]
	sub r0, r0, #1
	cmp r1, r0
	blt _021D1A5E
	add r0, r5, #0
	add r0, #0x82
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x82
	strh r1, [r0]
	b _021D1A5E
_021D1A48:
	add r1, r0, #6
	ldrb r0, [r5, #0x1c]
	cmp r1, r0
	blt _021D1A5E
	add r0, r5, #0
	add r0, #0x80
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x80
	strh r1, [r0]
_021D1A5E:
	ldr r0, [r5, #0x20]
	mov r1, #0
	strb r1, [r0, #2]
_021D1A64:
	add r1, r5, #0
	add r0, r5, #0
	add r1, #0xe8
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xcc
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xa0
	str r5, [r0, #0]
	add r0, r5, #0
	add r2, r5, #0
	ldrb r1, [r5, #0x1c]
	add r0, #0x94
	add r2, #0x82
	strh r1, [r0]
	mov r0, #0
	strh r0, [r5, #0x16]
	add r1, r5, #0
	add r1, #0x80
	ldr r3, [r5, #0]
	add r0, r5, #0
	lsl r3, r3, #0x18
	ldrh r1, [r1]
	ldrh r2, [r2]
	add r0, #0x84
	lsr r3, r3, #0x18
	bl sub_0200112C
	add r1, r5, #0
	add r1, #0xc4
	str r0, [r1, #0]
	mov r0, #1
	strh r0, [r5, #0x16]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1AB4: .word 0x021D3BB0
	thumb_func_end ov79_021D196C

	thumb_func_start ov79_021D1AB8
ov79_021D1AB8: ; 0x021D1AB8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xb0
	str r0, [sp]
	mov r0, #0x60
	add r4, r1, #0
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0xe8
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	cmp r4, #0
	beq _021D1AE2
	add r0, r5, #0
	add r0, #0xe8
	bl sub_0201ACF4
_021D1AE2:
	add r0, r5, #0
	add r0, #0xc4
	add r1, r5, #0
	add r2, r5, #0
	ldr r0, [r0, #0]
	add r1, #0x80
	add r2, #0x82
	bl sub_02001384
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_02013A3C
	add r0, r5, #0
	add r0, #0x80
	ldrh r1, [r0]
	ldr r0, [r5, #0x20]
	strh r1, [r0, #4]
	add r0, r5, #0
	add r0, #0x82
	ldrh r1, [r0]
	ldr r0, [r5, #0x20]
	strh r1, [r0, #6]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xc4
	str r1, [r0, #0]
	add r5, #0xcc
	str r1, [r5, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov79_021D1AB8

	thumb_func_start ov79_021D1B24
ov79_021D1B24: ; 0x021D1B24
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r5, r1, #0
	cmp r2, #4
	bls _021D1B30
	b _021D1C36
_021D1B30:
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1B3C: ; jump table
	.short _021D1B46 - _021D1B3C - 2 ; case 0
	.short _021D1B76 - _021D1B3C - 2 ; case 1
	.short _021D1BA6 - _021D1B3C - 2 ; case 2
	.short _021D1BD4 - _021D1B3C - 2 ; case 3
	.short _021D1C02 - _021D1B3C - 2 ; case 4
_021D1B46:
	mov r0, #0x1e
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r7, r5, #2
	lsl r1, r5, #1
	ldr r0, [r6, r7]
	add r1, r5, r1
	bl sub_02021D6C
	ldr r0, [r6, r7]
	mov r1, #0
	bl sub_02021CC8
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl sub_0201C04C
	b _021D1C36
_021D1B76:
	mov r0, #0x1e
	lsl r0, r0, #4
	add r6, r4, r0
	lsl r7, r5, #2
	ldr r0, [r6, r7]
	bl sub_02021DE0
	ldr r0, [r6, r7]
	mov r1, #1
	bl sub_02021CC8
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #4
	add r3, r1, #0
	bl sub_0201C04C
	mov r0, #1
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1BA6:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r1, r5, #1
	add r1, r5, r1
	add r1, r1, #1
	bl sub_02021D6C
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #1
	mov r2, #2
	mov r3, #0
	bl sub_0201C04C
	mov r0, #0
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1BD4:
	lsl r0, r5, #2
	add r1, r4, r0
	mov r0, #0x1e
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	lsl r1, r5, #1
	add r1, r5, r1
	add r1, r1, #2
	bl sub_02021D6C
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #2
	add r3, r1, #0
	bl sub_0201C04C
	mov r0, #1
	strh r0, [r4, #0x14]
	b _021D1C36
_021D1C02:
	mov r0, #0x1e
	lsl r0, r0, #4
	lsl r1, r5, #1
	add r1, r5, r1
	add r6, r4, r0
	lsl r7, r5, #2
	ldr r0, [r6, r7]
	add r1, r1, #1
	bl sub_02021D6C
	ldr r0, [r6, r7]
	mov r1, #1
	bl sub_02021CC8
	add r1, r4, #0
	add r0, r5, #7
	add r1, #0xe8
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	mov r2, #2
	add r3, r1, #0
	bl sub_0201C04C
	mov r0, #0
	strh r0, [r4, #0x14]
_021D1C36:
	add r0, r5, #7
	add r4, #0xe8
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_0201A954
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov79_021D1B24

	thumb_func_start ov79_021D1C44
ov79_021D1C44: ; 0x021D1C44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _021D1D14 ; =0x000005E4
	add r5, r1, #0
	bl sub_02005748
	ldrh r1, [r4, #0x14]
	ldr r0, _021D1D18 ; =0x0000FFFF
	cmp r1, r0
	beq _021D1C76
	ldrb r1, [r4, #0x1b]
	cmp r5, r1
	bne _021D1C6E
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #3
	bl ov79_021D1B24
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D1C6E:
	add r0, r4, #0
	mov r2, #0
	bl ov79_021D1B24
_021D1C76:
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #1
	bl ov79_021D1B24
	add r0, r4, #0
	mov r1, #0
	strb r5, [r4, #0x1b]
	bl ov79_021D1AB8
	add r0, r4, #0
	mov r2, #0
	add r0, #0x82
	strh r2, [r0]
	add r0, r4, #0
	add r0, #0x82
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x80
	strh r1, [r0]
	ldr r0, [r4, #0x20]
	strh r2, [r0, #6]
	ldr r1, [r4, #0x20]
	ldrh r0, [r1, #6]
	strh r0, [r1, #4]
	add r0, r4, #0
	bl ov79_021D196C
	mov r1, #0xa0
	str r1, [sp]
	mov r0, #0x18
	add r1, #0xa8
	str r0, [sp, #4]
	add r0, r4, r1
	mov r1, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	ldrb r1, [r4, #0x1b]
	cmp r1, #5
	bne _021D1CD8
	mov r0, #0x52
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A954
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D1CD8:
	lsl r1, r1, #2
	add r1, r4, r1
	mov r0, #0
	ldr r1, [r1, #0x68]
	add r2, r0, #0
	bl sub_02002D7C
	mov r2, #0xa0
	sub r3, r2, r0
	mov r0, #3
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1D1C ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r2, #0xa8
	str r1, [sp, #0xc]
	add r0, r4, r2
	ldrb r2, [r4, #0x1b]
	lsl r2, r2, #2
	add r2, r4, r2
	lsr r4, r3, #0x1f
	add r4, r3, r4
	ldr r2, [r2, #0x68]
	asr r3, r4, #1
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1D14: .word 0x000005E4
_021D1D18: .word 0x0000FFFF
_021D1D1C: .word 0x00010200
	thumb_func_end ov79_021D1C44

	thumb_func_start ov79_021D1D20
ov79_021D1D20: ; 0x021D1D20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	ldr r6, _021D1D84 ; =0x00000001
	bne _021D1D4A
	mov r4, #0
	mov r6, #0x73
	add r7, r4, #0
	lsl r6, r6, #2
_021D1D32:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021D1D32
	pop {r3, r4, r5, r6, r7, pc}
_021D1D4A:
	mov r4, #0
_021D1D4C:
	ldrb r0, [r7, #4]
	tst r0, r6
	beq _021D1D64
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #1
	bl sub_02021CAC
	b _021D1D74
_021D1D64:
	lsl r0, r4, #2
	add r1, r5, r0
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
_021D1D74:
	lsl r0, r6, #0x19
	lsr r6, r0, #0x18
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #5
	blo _021D1D4C
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1D84: .word 0x00000001
	thumb_func_end ov79_021D1D20

	thumb_func_start ov79_021D1D88
ov79_021D1D88: ; 0x021D1D88
	ldr r3, _021D1D90 ; =sub_02001504
	mov r1, #0x13
	bx r3
	nop
_021D1D90: .word sub_02001504
	thumb_func_end ov79_021D1D88

	thumb_func_start ov79_021D1D94
ov79_021D1D94: ; 0x021D1D94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x13
	add r7, r0, #0
	add r6, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r6, #0
	bne _021D1DB0
	ldr r0, _021D1ED0 ; =0x000005DC
	bl sub_02005748
_021D1DB0:
	add r1, sp, #0x10
	add r0, r7, #0
	add r1, #2
	add r2, sp, #0x10
	bl sub_020014DC
	add r2, sp, #0x10
	ldrh r2, [r2]
	mov r0, #7
	lsl r0, r0, #6
	lsl r2, r2, #4
	add r2, #0x28
	lsl r2, r2, #0x10
	ldr r0, [r4, r0]
	mov r1, #0x69
	asr r2, r2, #0x10
	bl sub_0200D494
	add r0, sp, #0x10
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _021D1DEA
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _021D1DF6
_021D1DEA:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_021D1DF6:
	add r0, sp, #0x10
	ldrh r1, [r0, #2]
	ldrb r0, [r4, #0x1c]
	sub r0, r0, #6
	cmp r1, r0
	bge _021D1E10
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	b _021D1E1C
_021D1E10:
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_021D1E1C:
	mov r0, #0x50
	str r0, [sp]
	mov r1, #0
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xf8
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	cmp r5, #0xff
	bne _021D1E58
	add r0, r4, #0
	mov r1, #0
	bl ov79_021D1D20
	add r0, r4, #0
	add r0, #0xf8
	bl sub_0201A954
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	ldr r0, [r0, #4]
	bl sub_0200D3F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D1E58:
	ldr r1, [r4, #0x20]
	lsl r5, r5, #3
	add r1, #0x1c
	add r0, r4, #0
	add r1, r1, r5
	bl ov79_021D1D20
	ldr r0, [r4, #0x34]
	bl sub_020237E8
	ldr r0, [r4, #0x20]
	add r0, r0, r5
	ldrb r2, [r0, #0x1f]
	cmp r2, #0x63
	bls _021D1E78
	mov r2, #0x63
_021D1E78:
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x40]
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	ldr r0, _021D1ED4 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r4, #0x34]
	add r0, #0xf8
	mov r3, #8
	bl sub_0201D78C
	ldr r2, [r4, #0x20]
	mov r1, #0x7e
	lsl r1, r1, #2
	add r2, r2, r5
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldrb r2, [r2, #0x1e]
	ldr r1, [r4, r1]
	bl sub_0209933C
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	ldr r0, [r0, #4]
	bl sub_0200D3F4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1ED0: .word 0x000005DC
_021D1ED4: .word 0x00010200
	thumb_func_end ov79_021D1D94

	thumb_func_start ov79_021D1ED8
ov79_021D1ED8: ; 0x021D1ED8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #3
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	mov r4, #0
_021D1EEC:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x2c]
	add r2, r4, #1
	add r3, r4, #0
	bl sub_02013A4C
	add r0, r4, #1
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	cmp r4, #3
	blo _021D1EEC
	add r1, r5, #0
	ldr r0, _021D1F5C ; =0x021D3B90
	add r1, #0xa4
	mov r2, #0x20
	bl MI_CpuCopy8
	mov r0, #0x46
	lsl r0, r0, #2
	add r1, r5, #0
	add r0, r5, r0
	add r1, #0xb0
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xd0
	ldr r2, [r1, #0]
	add r1, r5, #0
	add r1, #0xa4
	str r2, [r1, #0]
	add r1, r5, #0
	add r1, #0xc0
	str r5, [r1, #0]
	add r1, r5, #0
	mov r2, #3
	add r1, #0xb4
	strh r2, [r1]
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xf
	bl sub_0200DC48
	ldr r3, [r5, #0]
	add r0, r5, #0
	mov r1, #0
	lsl r3, r3, #0x18
	add r0, #0xa4
	add r2, r1, #0
	lsr r3, r3, #0x18
	bl sub_0200112C
	add r5, #0xc8
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	nop
_021D1F5C: .word 0x021D3B90
	thumb_func_end ov79_021D1ED8

	thumb_func_start ov79_021D1F60
ov79_021D1F60: ; 0x021D1F60
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x46
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0xc8
	add r2, sp, #0
	ldr r0, [r0, #0]
	add r1, sp, #0
	add r2, #2
	bl sub_02001384
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02013A3C
	add r0, r4, #0
	mov r1, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r4, #0xd0
	str r1, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D1F60

	thumb_func_start ov79_021D1FA8
ov79_021D1FA8: ; 0x021D1FA8
	push {r3, lr}
	cmp r2, #0
	bne _021D1FB4
	ldr r0, _021D1FB8 ; =0x000005DC
	bl sub_02005748
_021D1FB4:
	pop {r3, pc}
	nop
_021D1FB8: .word 0x000005DC
	thumb_func_end ov79_021D1FA8

	thumb_func_start ov79_021D1FBC
ov79_021D1FBC: ; 0x021D1FBC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_020237E8
	ldrb r1, [r4, #0x1a]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x28]
	lsl r1, r1, #3
	add r1, r2, r1
	ldrb r1, [r1, #0x1e]
	bl sub_02015918
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200B48C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x44]
	bl sub_0200C388
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r4, #0x7c
	ldrb r2, [r4]
	mov r3, #1
	bl ov79_021D1850
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D1FBC

	thumb_func_start ov79_021D2008
ov79_021D2008: ; 0x021D2008
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl sub_020237E8
	ldrb r1, [r4, #0x1a]
	ldr r2, [r4, #0x20]
	ldr r0, [r4, #0x28]
	lsl r1, r1, #3
	add r1, r2, r1
	ldrb r1, [r1, #0x1e]
	bl sub_02015918
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r3, #2
	str r3, [sp, #4]
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_0200B48C
	ldr r0, [r4, #0x30]
	ldr r1, [r4, #0x34]
	ldr r2, [r4, #0x48]
	bl sub_0200C388
	add r0, r4, #0
	ldr r1, [r4, #0x34]
	add r4, #0x7c
	ldrb r2, [r4]
	mov r3, #0
	bl ov79_021D1850
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov79_021D2008

	thumb_func_start ov79_021D2054
ov79_021D2054: ; 0x021D2054
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _021D2074 ; =0x021D3B88
	str r0, [sp]
	ldr r0, [r4, #0x24]
	mov r2, #0x1f
	mov r3, #0xf
	bl sub_02002100
	add r4, #0xd4
	str r0, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D2074: .word 0x021D3B88
	thumb_func_end ov79_021D2054

	thumb_func_start ov79_021D2078
ov79_021D2078: ; 0x021D2078
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	ldr r0, _021D20E8 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x4e
	lsl r0, r0, #2
	ldr r2, [r5, #0x4c]
	add r0, r5, r0
	mov r3, #4
	bl sub_0201D78C
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #0xe8
	ldr r4, _021D20EC ; =0x021D3B80
	mov r6, #0
	str r0, [sp, #0x10]
_021D20A4:
	ldr r1, [r5, #0x50]
	mov r0, #2
	mov r2, #0
	bl sub_02002D7C
	mov r1, #0x40
	sub r3, r1, r0
	ldrb r0, [r4]
	lsr r7, r3, #0x1f
	add r7, r3, r7
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021D20F0 ; =0x00020301
	asr r3, r7, #1
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #7
	lsl r1, r0, #4
	ldr r0, [sp, #0x10]
	ldr r2, [r5, #0x50]
	add r0, r0, r1
	mov r1, #2
	bl sub_0201D78C
	add r6, r6, #1
	add r5, r5, #4
	add r4, r4, #1
	cmp r6, #6
	blt _021D20A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D20E8: .word 0x00010200
_021D20EC: .word 0x021D3B80
_021D20F0: .word 0x00020301
	thumb_func_end ov79_021D2078

	.rodata


	.global Unk_ov79_021D3B80
Unk_ov79_021D3B80: ; 0x021D3B80
	.incbin "incbin/overlay79_rodata.bin", 0x270, 0x278 - 0x270

	.global Unk_ov79_021D3B88
Unk_ov79_021D3B88: ; 0x021D3B88
	.incbin "incbin/overlay79_rodata.bin", 0x278, 0x280 - 0x278

	.global Unk_ov79_021D3B90
Unk_ov79_021D3B90: ; 0x021D3B90
	.incbin "incbin/overlay79_rodata.bin", 0x280, 0x2A0 - 0x280

	.global Unk_ov79_021D3BB0
Unk_ov79_021D3BB0: ; 0x021D3BB0
	.incbin "incbin/overlay79_rodata.bin", 0x2A0, 0x20

