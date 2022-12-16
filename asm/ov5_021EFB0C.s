	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov5_021EFB0C
ov5_021EFB0C: ; 0x021EFB0C
	push {r4, lr}
	mov r0, #4
	mov r1, #0xfc
	bl sub_02018144
	mov r4, #0
	add r2, r4, #0
_021EFB1A:
	lsl r1, r4, #3
	add r3, r0, r1
	strb r2, [r0, r1]
	add r1, r4, #1
	lsl r1, r1, #0x18
	lsr r4, r1, #0x18
	str r2, [r3, #4]
	cmp r4, #0x15
	blo _021EFB1A
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021EFB0C

	thumb_func_start ov5_021EFB30
ov5_021EFB30: ; 0x021EFB30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov5_021EFB30

	thumb_func_start ov5_021EFB40
ov5_021EFB40: ; 0x021EFB40
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, _021EFB90 ; =0x000007D8
	str r0, [r1, #0]
	ldr r0, [r5, #0x3c]
	bl sub_0205EABC
	add r4, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EAC8
	add r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl sub_0205EA78
	cmp r0, #0
	bne _021EFB8A
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0xc
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r6, #0
	sub r3, r2, #1
	bl sub_020550F4
	add r0, r5, #0
	mov r1, #0x1a
	add r2, sp, #0xc
	mov r3, #0
	bl sub_02055178
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
_021EFB8A:
	mov r0, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EFB90: .word 0x000007D8
	thumb_func_end ov5_021EFB40

	thumb_func_start ov5_021EFB94
ov5_021EFB94: ; 0x021EFB94
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl ov5_021EFF10
	add r5, r0, #0
	cmp r5, #0x15
	bne _021EFBAA
	bl sub_02022974
_021EFBAA:
	ldr r0, [r4, #0xc]
	bl sub_0202D834
	bl sub_0202D840
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202D84C
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov5_021EFF34
	cmp r0, #0
	beq _021EFBCC
	mov r0, #3
	pop {r3, r4, r5, pc}
_021EFBCC:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021EFBD6
	mov r0, #2
	pop {r3, r4, r5, pc}
_021EFBD6:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov5_021EFB94

	thumb_func_start ov5_021EFBDC
ov5_021EFBDC: ; 0x021EFBDC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x1c]
	ldr r0, [r0, #0]
	bl ov5_021EFF10
	add r5, r0, #0
	cmp r5, #0x15
	bne _021EFBF2
	bl sub_02022974
_021EFBF2:
	ldr r0, [r6, #0xc]
	bl sub_0202D834
	bl sub_0202D840
	str r0, [sp]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0202D84C
	add r4, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #4
	str r0, [r4, #0]
	ldr r0, [r6, #0xc]
	bl sub_02025E38
	bl sub_02025F20
	add r1, r5, #0
	bl ov5_021EFF4C
	add r7, r0, #0
	ldr r0, [sp]
	bl sub_0202D844
	cmp r5, r0
	bne _021EFC56
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #0x64
	blo _021EFC42
	bl sub_02022974
_021EFC42:
	cmp r6, #0x5a
	bhs _021EFC56
	add r0, r4, #4
	bl ov5_021EFD58
	ldrb r0, [r4, #6]
	bl ov5_021EFDC0
	strb r0, [r4, #7]
	pop {r3, r4, r5, r6, r7, pc}
_021EFC56:
	add r0, r7, #0
	add r1, r4, #6
	bl ov5_021EFCF8
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq _021EFC74
	add r0, r4, #4
	bl ov5_021EFD58
	ldrb r0, [r4, #6]
	bl ov5_021EFDAC
	strb r0, [r4, #5]
	b _021EFC7C
_021EFC74:
	mov r0, #0
	strb r0, [r4, #5]
	strb r0, [r4, #4]
	str r0, [r4, #0]
_021EFC7C:
	ldrb r0, [r4, #6]
	bl ov5_021EFDC0
	strb r0, [r4, #7]
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_0202D848
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EFBDC

	thumb_func_start ov5_021EFC90
ov5_021EFC90: ; 0x021EFC90
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl ov5_021EFF10
	add r4, r0, #0
	cmp r4, #0x15
	bne _021EFCA8
	bl sub_02022974
_021EFCA8:
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	lsl r4, r4, #3
	add r0, r0, r4
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021EFCF4
	ldr r0, [r5, #0x28]
	bl ov5_021E9354
	ldr r1, [r5, #0x28]
	add r2, sp, #0
	bl ov5_021E9340
	ldr r0, [sp]
	mov r1, #0x1a
	bl ov5_021E18CC
	add r6, r0, #0
	bl ov5_021E18BC
	add r1, r0, #0
	cmp r6, #0
	beq _021EFCEA
	add r3, r5, #0
	add r3, #0xa8
	ldr r3, [r3, #0]
	ldr r0, [r5, #0x50]
	ldrb r3, [r3, r4]
	mov r2, #0x1a
	bl ov5_021D3D18
_021EFCEA:
	add r5, #0xa8
	ldr r0, [r5, #0]
	mov r1, #0
	add r0, r0, r4
	str r1, [r0, #4]
_021EFCF4:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov5_021EFC90

	thumb_func_start ov5_021EFCF8
ov5_021EFCF8: ; 0x021EFCF8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x64
	blo _021EFD16
	bl sub_02022974
_021EFD16:
	cmp r6, #0
	beq _021EFD3E
	cmp r4, #1
	bge _021EFD24
	mov r0, #3
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021EFD24:
	cmp r4, #0xa
	bge _021EFD2E
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021EFD2E:
	cmp r4, #0x1e
	bge _021EFD38
	mov r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021EFD38:
	mov r0, #2
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021EFD3E:
	cmp r4, #0xa
	bge _021EFD48
	mov r0, #0
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021EFD48:
	cmp r4, #0x1e
	bge _021EFD52
	mov r0, #2
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_021EFD52:
	mov r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ov5_021EFCF8

	thumb_func_start ov5_021EFD58
ov5_021EFD58: ; 0x021EFD58
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _021EFD74
	bl sub_02022974
_021EFD74:
	cmp r5, #5
	bge _021EFD7E
	mov r0, #5
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_021EFD7E:
	cmp r5, #0xa
	bge _021EFD88
	mov r0, #4
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_021EFD88:
	cmp r5, #0x14
	bge _021EFD92
	mov r0, #3
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_021EFD92:
	cmp r5, #0x28
	bge _021EFD9C
	mov r0, #2
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_021EFD9C:
	cmp r5, #0x3c
	bge _021EFDA6
	mov r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_021EFDA6:
	mov r0, #0
	strb r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EFD58

	thumb_func_start ov5_021EFDAC
ov5_021EFDAC: ; 0x021EFDAC
	cmp r0, #3
	bne _021EFDB4
	mov r0, #2
	bx lr
_021EFDB4:
	cmp r0, #2
	bne _021EFDBC
	mov r0, #1
	bx lr
_021EFDBC:
	mov r0, #0
	bx lr
	thumb_func_end ov5_021EFDAC

	thumb_func_start ov5_021EFDC0
ov5_021EFDC0: ; 0x021EFDC0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #0x29
	lsl r1, r1, #4
	bl sub_020E1F6C
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x64
	blo _021EFDDC
	bl sub_02022974
_021EFDDC:
	cmp r4, #3
	bne _021EFDFC
	cmp r5, #5
	bge _021EFDE8
	mov r0, #2
	pop {r3, r4, r5, pc}
_021EFDE8:
	cmp r5, #6
	bge _021EFDF0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EFDF0:
	cmp r5, #7
	bge _021EFDF8
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EFDF8:
	mov r0, #3
	pop {r3, r4, r5, pc}
_021EFDFC:
	cmp r4, #2
	bne _021EFE1C
	cmp r5, #0x4b
	bge _021EFE08
	mov r0, #2
	pop {r3, r4, r5, pc}
_021EFE08:
	cmp r5, #0x5f
	bge _021EFE10
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EFE10:
	cmp r5, #0x60
	bge _021EFE18
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EFE18:
	mov r0, #3
	pop {r3, r4, r5, pc}
_021EFE1C:
	cmp r4, #1
	bne _021EFE3C
	cmp r5, #0x13
	bge _021EFE28
	mov r0, #2
	pop {r3, r4, r5, pc}
_021EFE28:
	cmp r5, #0x4f
	bge _021EFE30
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EFE30:
	cmp r5, #0x63
	bge _021EFE38
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EFE38:
	mov r0, #3
	pop {r3, r4, r5, pc}
_021EFE3C:
	cmp r5, #1
	bge _021EFE44
	mov r0, #2
	pop {r3, r4, r5, pc}
_021EFE44:
	cmp r5, #0x13
	bge _021EFE4C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021EFE4C:
	cmp r5, #0x63
	bge _021EFE54
	mov r0, #0
	pop {r3, r4, r5, pc}
_021EFE54:
	mov r0, #3
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021EFDC0

	thumb_func_start ov5_021EFE58
ov5_021EFE58: ; 0x021EFE58
	mov r2, #1
	cmp r0, #3
	bne _021EFE64
	mov r0, #2
	strb r0, [r1]
	b _021EFE78
_021EFE64:
	cmp r0, #2
	bne _021EFE6C
	strb r2, [r1]
	b _021EFE78
_021EFE6C:
	cmp r0, #1
	bne _021EFE76
	mov r0, #0
	strb r0, [r1]
	b _021EFE78
_021EFE76:
	mov r2, #0
_021EFE78:
	add r0, r2, #0
	bx lr
	thumb_func_end ov5_021EFE58

	thumb_func_start ov5_021EFE7C
ov5_021EFE7C: ; 0x021EFE7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r7, r1, #0
	add r1, r2, #0
	bl sub_02039E68
	bl ov5_021EFF10
	add r4, r0, #0
	cmp r4, #0x15
	beq _021EFF0C
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D840
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202D84C
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl ov5_021EFF34
	cmp r0, #0
	beq _021EFF0C
	ldrb r0, [r6, #7]
	add r1, sp, #4
	bl ov5_021EFE58
	add r6, r0, #0
	beq _021EFF0C
	add r0, r7, #0
	mov r1, #0x1a
	bl ov5_021E18CC
	cmp r0, #0
	beq _021EFF0C
	bl ov5_021E18BC
	add r3, r5, #0
	add r7, r0, #0
	add r3, #0xa8
	ldr r3, [r3, #0]
	lsl r4, r4, #3
	ldrb r3, [r3, r4]
	ldr r0, [r5, #0x50]
	add r1, r7, #0
	mov r2, #0x1a
	bl ov5_021D3D18
	add r1, sp, #4
	add r2, r5, #0
	add r2, #0xa8
	ldrb r0, [r1]
	ldr r2, [r2, #0]
	add r3, r7, #0
	strb r0, [r2, r4]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r2, #1
	add r0, r0, r4
	str r6, [r0, #4]
	ldr r0, [r5, #0x50]
	str r0, [sp]
	ldrb r1, [r1]
	mov r0, #0x1a
	bl ov5_021D3B24
_021EFF0C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov5_021EFE7C

	thumb_func_start ov5_021EFF10
ov5_021EFF10: ; 0x021EFF10
	ldr r2, _021EFF30 ; =0x021FF5B4
	mov r3, #0
_021EFF14:
	lsl r1, r3, #2
	ldr r1, [r2, r1]
	cmp r0, r1
	bne _021EFF20
	add r0, r3, #0
	bx lr
_021EFF20:
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #0x15
	blo _021EFF14
	add r0, r3, #0
	bx lr
	nop
_021EFF30: .word 0x021FF5B4
	thumb_func_end ov5_021EFF10

	thumb_func_start ov5_021EFF34
ov5_021EFF34: ; 0x021EFF34
	cmp r0, #0
	ble _021EFF42
	ldr r1, _021EFF48 ; =0x00000438
	cmp r0, r1
	bgt _021EFF42
	mov r0, #1
	bx lr
_021EFF42:
	mov r0, #0
	bx lr
	nop
_021EFF48: .word 0x00000438
	thumb_func_end ov5_021EFF34

	thumb_func_start ov5_021EFF4C
ov5_021EFF4C: ; 0x021EFF4C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	lsr r2, r0, #0x18
	add r1, sp, #0
	strb r2, [r1]
	lsr r2, r0, #0x10
	strb r2, [r1, #1]
	lsr r2, r0, #8
	strb r2, [r1, #2]
	strb r0, [r1, #3]
	ldrb r0, [r1]
	mov r1, #0x15
	bl sub_020E1F6C
	add r0, sp, #0
	strb r1, [r0]
	ldrb r0, [r0, #1]
	mov r1, #0x15
	bl sub_020E1F6C
	add r0, sp, #0
	strb r1, [r0, #1]
	ldrb r0, [r0, #2]
	mov r1, #0x15
	bl sub_020E1F6C
	add r0, sp, #0
	strb r1, [r0, #2]
	ldrb r0, [r0, #3]
	mov r1, #0x15
	bl sub_020E1F6C
	add r0, sp, #0
	strb r1, [r0, #3]
	mov r0, #0
	mov r3, #1
	add r1, sp, #0
	add r2, r0, #0
_021EFF98:
	add r5, r2, #0
	cmp r3, #0
	bls _021EFFBC
_021EFF9E:
	ldrb r7, [r1, r5]
	ldrb r6, [r1, r3]
	cmp r7, r6
	bne _021EFFB2
	add r6, r6, #1
	strb r6, [r1, r3]
	ldrb r6, [r1, r3]
	cmp r6, #0x15
	blo _021EFFB2
	strb r0, [r1, r3]
_021EFFB2:
	add r5, r5, #1
	lsl r5, r5, #0x18
	lsr r5, r5, #0x18
	cmp r5, r3
	blo _021EFF9E
_021EFFBC:
	add r3, r3, #1
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	cmp r3, #4
	blo _021EFF98
	mov r2, #0
	add r1, sp, #0
_021EFFCA:
	ldrb r0, [r1, r2]
	cmp r4, r0
	bne _021EFFD4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021EFFD4:
	add r0, r2, #1
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r2, #4
	blo _021EFFCA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov5_021EFF4C

	thumb_func_start ov5_021EFFE4
ov5_021EFFE4: ; 0x021EFFE4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #0]
	bl ov5_021EFF10
	add r5, r0, #0
	cmp r5, #0x15
	bne _021EFFFA
	bl sub_02022974
_021EFFFA:
	ldr r0, [r4, #0xc]
	bl sub_0202D834
	bl sub_0202D840
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202D84C
	add r4, r0, #0
	ldrb r1, [r4, #5]
	mov r0, #0x6a
	lsl r2, r1, #2
	ldr r1, _021F002C ; =0x021FF5A8
	ldr r1, [r1, r2]
	mov r2, #4
	bl sub_02006ADC
	ldrb r1, [r4, #4]
	lsl r1, r1, #2
	ldr r4, [r0, r1]
	bl sub_020181C4
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021F002C: .word 0x021FF5A8
	thumb_func_end ov5_021EFFE4

	thumb_func_start ov5_021F0030
ov5_021F0030: ; 0x021F0030
	push {r3, lr}
	add r3, r1, #0
	bmi _021F003E
	add r1, r2, #0
	add r2, r3, #0
	bl ov5_021EFE7C
_021F003E:
	pop {r3, pc}
	thumb_func_end ov5_021F0030

	thumb_func_start ov5_021F0040
ov5_021F0040: ; 0x021F0040
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl ov5_021EFF10
	add r4, r0, #0
	cmp r4, #0x15
	bne _021F0056
	bl sub_02022974
_021F0056:
	add r0, r5, #0
	add r0, #0xa8
	ldr r1, [r0, #0]
	lsl r0, r4, #3
	mov r2, #0
	add r0, r1, r0
	str r2, [r0, #4]
	ldr r0, [r5, #0xc]
	bl sub_0202D834
	bl sub_0202D840
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202D84C
	mov r1, #0
	str r1, [r0, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov5_021F0040

	.rodata


	.global Unk_ov5_021FF5A8
Unk_ov5_021FF5A8: ; 0x021FF5A8
	.incbin "incbin/overlay5_rodata.bin", 0x6C94, 0x6CA0 - 0x6C94

	.global Unk_ov5_021FF5B4
Unk_ov5_021FF5B4: ; 0x021FF5B4
	.incbin "incbin/overlay5_rodata.bin", 0x6CA0, 0x54

