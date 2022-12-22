	.include "macros/function.inc"
	.include "include/ov104_0222DCE0.inc"

	

	.text


	thumb_func_start ov104_0222DCE0
ov104_0222DCE0: ; 0x0222DCE0
	push {r4, lr}
	add r4, r0, #0
	add r3, r1, #0
	add r0, r2, #0
	add r1, r4, #0
	add r2, r3, #0
	bl sub_02006AC0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222DCE0

	thumb_func_start ov104_0222DCF4
ov104_0222DCF4: ; 0x0222DCF4
	add r3, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	ldr r3, _0222DD00 ; =sub_02006AA4
	bx r3
	nop
_0222DD00: .word sub_02006AA4
	thumb_func_end ov104_0222DCF4

	thumb_func_start ov104_0222DD04
ov104_0222DD04: ; 0x0222DD04
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp]
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0x15
	add r3, r6, #0
	bl sub_0200B144
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x30
	bl MI_CpuFill8
	lsl r0, r4, #0x10
	ldr r2, [sp]
	lsr r0, r0, #0x10
	add r1, r6, #0
	bl ov104_0222DCE0
	add r6, r0, #0
	ldr r0, _0222DD68 ; =0x0000FFFF
	str r4, [r5, #0]
	strh r0, [r5, #0x18]
	lsl r0, r4, #1
	add r0, r4, r0
	strh r0, [r5, #0x1a]
	ldrh r0, [r6]
	add r1, r4, #0
	strh r0, [r5, #4]
	add r0, r7, #0
	bl sub_0200B1EC
	add r5, #8
	add r4, r0, #0
	add r1, r5, #0
	mov r2, #8
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_0200B190
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DD68: .word 0x0000FFFF
	thumb_func_end ov104_0222DD04

	thumb_func_start ov104_0222DD6C
ov104_0222DD6C: ; 0x0222DD6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp]
	add r7, r2, #0
	mov r1, #0
	mov r2, #0x38
	add r4, r0, #0
	add r6, r3, #0
	ldr r5, [sp, #0x34]
	bl MI_CpuFill8
	ldr r1, [sp]
	ldr r2, [sp, #0x40]
	add r0, sp, #8
	bl ov104_0222DCF4
	ldrh r1, [r4]
	add r3, sp, #8
	ldr r0, _0222DF18 ; =0xFFFFF800
	add r2, r1, #0
	and r2, r0
	ldrh r1, [r3]
	lsr r0, r0, #0x15
	and r0, r1
	orr r0, r2
	strh r0, [r4]
	ldrh r1, [r4]
	ldr r0, _0222DF1C ; =0xFFFF07FF
	and r0, r1
	ldrh r1, [r3, #0xe]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x10
	orr r0, r1
	strh r0, [r4]
	ldr r0, [sp, #0x38]
	cmp r0, #0
	beq _0222DDCC
	cmp r5, #4
	blo _0222DDC2
	mov r0, #3
	and r0, r5
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0222DDC2:
	ldr r0, _0222DF20 ; =0x0223F290
	lsl r1, r5, #1
	ldrh r0, [r0, r1]
	strh r0, [r4, #2]
	b _0222DDD0
_0222DDCC:
	ldrh r0, [r3, #0xc]
	strh r0, [r4, #2]
_0222DDD0:
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	add r1, sp, #8
	add r2, r4, #0
	add r5, r0, #0
_0222DDDC:
	ldrh r3, [r1, #2]
	strh r3, [r2, #4]
	ldrh r3, [r1, #2]
	cmp r3, #0xda
	bne _0222DDE8
	str r5, [sp, #4]
_0222DDE8:
	add r0, r0, #1
	add r1, r1, #2
	add r2, r2, #2
	cmp r0, #4
	blt _0222DDDC
	str r7, [r4, #0xc]
	cmp r6, #0
	bne _0222DE26
_0222DDF8:
	bl sub_0201D2E8
	add r5, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #0x10
	add r6, r5, #0
	orr r6, r0
	add r0, r6, #0
	bl sub_02075BFC
	add r1, sp, #8
	ldrb r1, [r1, #0xb]
	cmp r1, r0
	bne _0222DDF8
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02075E38
	cmp r0, #1
	beq _0222DDF8
	str r6, [r4, #0x10]
	b _0222DE28
_0222DE26:
	str r6, [r4, #0x10]
_0222DE28:
	add r0, sp, #0x20
	ldrb r1, [r0, #0x10]
	ldr r2, [r4, #0x14]
	mov r0, #0x1f
	bic r2, r0
	mov r0, #0x1f
	and r0, r1
	orr r2, r0
	ldr r0, _0222DF24 ; =0xFFFFFC1F
	mov r7, #0
	and r2, r0
	lsl r0, r1, #0x1b
	lsr r1, r0, #0x16
	orr r2, r1
	ldr r1, _0222DF28 ; =0xFFFF83FF
	add r5, r7, #0
	and r2, r1
	lsr r1, r0, #0x11
	orr r2, r1
	ldr r1, _0222DF2C ; =0xFFF07FFF
	and r2, r1
	lsr r1, r0, #0xc
	orr r2, r1
	ldr r1, _0222DF30 ; =0xFE0FFFFF
	and r2, r1
	lsr r1, r0, #7
	orr r2, r1
	ldr r1, _0222DF34 ; =0xC1FFFFFF
	lsr r0, r0, #2
	and r1, r2
	orr r0, r1
	str r0, [r4, #0x14]
_0222DE68:
	add r0, r5, #0
	bl sub_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0222DE78
	add r7, r7, #1
_0222DE78:
	add r5, r5, #1
	cmp r5, #6
	blt _0222DE68
	ldr r0, _0222DF38 ; =0x000001FE
	add r1, r7, #0
	bl _s32_div_f
	cmp r0, #0xff
	ble _0222DE8C
	mov r0, #0xff
_0222DE8C:
	lsl r0, r0, #0x18
	mov r5, #0
	lsr r7, r0, #0x18
_0222DE92:
	add r0, r5, #0
	bl sub_020787CC
	add r1, sp, #8
	ldrb r1, [r1, #0xa]
	tst r0, r1
	beq _0222DEA4
	add r0, r4, r5
	strb r7, [r0, #0x18]
_0222DEA4:
	add r5, r5, #1
	cmp r5, #6
	blt _0222DE92
	mov r0, #0
	strb r0, [r4, #0x1e]
	ldr r0, _0222DF3C ; =0x020E4C44
	mov r1, #0x19
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	ldrh r0, [r4]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	cmp r0, #0
	beq _0222DEE8
	ldr r2, [r4, #0x10]
	mov r1, #1
	tst r1, r2
	beq _0222DED4
	add r1, r4, #0
	add r1, #0x20
	strb r0, [r1]
	b _0222DEFA
_0222DED4:
	ldrh r0, [r4]
	mov r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	add r1, r4, #0
	add r1, #0x20
	strb r0, [r1]
	b _0222DEFA
_0222DEE8:
	ldrh r0, [r4]
	mov r1, #0x18
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	bl sub_020759F0
	add r1, r4, #0
	add r1, #0x20
	strb r0, [r1]
_0222DEFA:
	add r1, r4, #0
	ldr r0, [sp, #4]
	add r1, #0x21
	strb r0, [r1]
	ldrh r0, [r4]
	add r4, #0x22
	ldr r1, [sp, #0x3c]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x15
	add r2, r4, #0
	bl sub_0200B274
	add r0, r6, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DF18: .word 0xFFFFF800
_0222DF1C: .word 0xFFFF07FF
_0222DF20: .word 0x0223F290
_0222DF24: .word 0xFFFFFC1F
_0222DF28: .word 0xFFFF83FF
_0222DF2C: .word 0xFFF07FFF
_0222DF30: .word 0xFE0FFFFF
_0222DF34: .word 0xC1FFFFFF
_0222DF38: .word 0x000001FE
_0222DF3C: .word 0x020E4C44
	thumb_func_end ov104_0222DD6C

	thumb_func_start ov104_0222DF40
ov104_0222DF40: ; 0x0222DF40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	add r4, r2, #0
	bl sub_02073C2C
	cmp r4, #0x78
	bne _0222DF58
	mov r4, #0x32
	b _0222DF5E
_0222DF58:
	cmp r4, #0x79
	bne _0222DF5E
	mov r4, #0x64
_0222DF5E:
	ldr r1, [r6, #0x14]
	ldr r0, _0222E108 ; =0x3FFFFFFF
	add r2, r4, #0
	and r0, r1
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp]
	ldr r0, [r6, #0x10]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrh r1, [r6]
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x15
	bl sub_02073D80
	add r0, r5, #0
	mov r1, #0xaf
	add r2, sp, #0x1c
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	ldrh r0, [r6]
	add r2, sp, #0x14
	add r2, #1
	lsl r0, r0, #0x10
	lsr r1, r0, #0x1b
	add r0, sp, #0x14
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x70
	bl sub_02074B30
	add r0, r5, #0
	mov r1, #6
	add r2, r6, #2
	bl sub_02074B30
	mov r4, #0
	str r6, [sp, #0x10]
	add r7, r4, #0
_0222DFBC:
	ldr r0, [sp, #0x10]
	add r2, sp, #0x14
	ldrh r1, [r0, #4]
	add r0, sp, #0x14
	add r2, #2
	strh r1, [r0, #2]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x36
	bl sub_02074B30
	ldrb r0, [r6, #0x1e]
	add r2, sp, #0x14
	add r2, #1
	add r1, r0, #0
	asr r1, r7
	mov r0, #3
	and r1, r0
	add r0, sp, #0x14
	strb r1, [r0, #1]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3e
	bl sub_02074B30
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x14
	strb r0, [r1]
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3a
	add r2, sp, #0x14
	bl sub_02074B30
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	add r0, r0, #2
	add r7, r7, #2
	str r0, [sp, #0x10]
	cmp r4, #4
	blt _0222DFBC
	ldr r0, [r6, #0xc]
	mov r1, #7
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r2, sp, #0x18
	bl sub_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x18]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0xd
	bl sub_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x19]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0xe
	bl sub_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1a]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0xf
	bl sub_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1b]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x10
	bl sub_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1c]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x11
	bl sub_02074B30
	add r2, sp, #0x14
	ldrb r1, [r6, #0x1d]
	add r0, sp, #0x14
	add r2, #1
	strb r1, [r0, #1]
	add r0, r5, #0
	mov r1, #0x12
	bl sub_02074B30
	add r2, r6, #0
	add r0, r5, #0
	mov r1, #0xa
	add r2, #0x20
	bl sub_02074B30
	add r2, r6, #0
	add r0, r5, #0
	mov r1, #9
	add r2, #0x21
	bl sub_02074B30
	ldr r0, [r6, #0x14]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	beq _0222E0E6
	mov r2, #0x67
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #4
	bl sub_0200B144
	ldrh r1, [r6]
	add r4, r0, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x15
	bl sub_0200B1EC
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0x77
	add r2, r7, #0
	bl sub_02074B30
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	b _0222E0F2
_0222E0E6:
	add r2, r6, #0
	add r0, r5, #0
	mov r1, #0x75
	add r2, #0x22
	bl sub_02074B30
_0222E0F2:
	add r6, #0x1f
	add r0, r5, #0
	mov r1, #0xc
	add r2, r6, #0
	bl sub_02074B30
	add r0, r5, #0
	bl sub_0207418C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E108: .word 0x3FFFFFFF
	thumb_func_end ov104_0222DF40

	thumb_func_start ov104_0222E10C
ov104_0222E10C: ; 0x0222E10C
	ldr r3, _0222E12C ; =0x0223F298
	mov r2, #0
_0222E110:
	ldrh r1, [r3]
	cmp r0, r1
	bne _0222E11E
	ldr r0, _0222E130 ; =0x0223F29A
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_0222E11E:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x3f
	blo _0222E110
	mov r0, #3
	bx lr
	nop
_0222E12C: .word 0x0223F298
_0222E130: .word 0x0223F29A
	thumb_func_end ov104_0222E10C

	thumb_func_start ov104_0222E134
ov104_0222E134: ; 0x0222E134
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	bl sub_02025E38
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #7
	mov r2, #0
	bl sub_02074470
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_02025E38
	mov r3, #0
	add r1, r0, #0
	str r3, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #4
	bl sub_02077EE4
	ldr r0, _0222E1B8 ; =0x00000232
	bl sub_0203A138
	add r3, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	add r1, r6, #0
	mov r2, #0
	bl sub_0209304C
	ldr r2, _0222E1BC ; =0x0000016B
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	mov r1, #0
	add r5, r0, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x91
	add r2, r6, #0
	bl sub_02074B30
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #8
	bl sub_02074B30
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	bl sub_0200B190
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0222E1B8: .word 0x00000232
_0222E1BC: .word 0x0000016B
	thumb_func_end ov104_0222E134

	thumb_func_start ov104_0222E1C0
ov104_0222E1C0: ; 0x0222E1C0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r1, r4, #0
	bl ov104_0222E134
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0207A048
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E1C0

	thumb_func_start ov104_0222E1D8
ov104_0222E1D8: ; 0x0222E1D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02021E24
	cmp r4, r0
	beq _0222E200
	add r0, r5, #0
	mov r1, #0
	bl sub_02021E50
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02021D6C
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02021E2C
_0222E200:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E1D8

	thumb_func_start ov104_0222E204
ov104_0222E204: ; 0x0222E204
	push {r4, r5, lr}
	sub sp, #0xc
	lsl r1, r1, #0xc
	add r4, r2, #0
	str r1, [sp]
	lsl r1, r4, #0xc
	str r1, [sp, #4]
	mov r1, #0
	add r5, r0, #0
	str r1, [sp, #8]
	cmp r3, #1
	bne _0222E232
	bl sub_02021E74
	cmp r0, #0
	bne _0222E22C
	sub r0, r4, #3
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	b _0222E232
_0222E22C:
	add r0, r4, #1
	lsl r0, r0, #0xc
	str r0, [sp, #4]
_0222E232:
	add r0, r5, #0
	add r1, sp, #0
	bl sub_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E204

	thumb_func_start ov104_0222E240
ov104_0222E240: ; 0x0222E240
	push {r3, lr}
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _0222E272
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E258: ; jump table
	.short _0222E272 - _0222E258 - 2 ; case 0
	.short _0222E26E - _0222E258 - 2 ; case 1
	.short _0222E26A - _0222E258 - 2 ; case 2
	.short _0222E266 - _0222E258 - 2 ; case 3
	.short _0222E262 - _0222E258 - 2 ; case 4
_0222E262:
	mov r0, #1
	pop {r3, pc}
_0222E266:
	mov r0, #2
	pop {r3, pc}
_0222E26A:
	mov r0, #3
	pop {r3, pc}
_0222E26E:
	mov r0, #4
	pop {r3, pc}
_0222E272:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E240

	thumb_func_start ov104_0222E278
ov104_0222E278: ; 0x0222E278
	push {r3, lr}
	bl ov104_0222DD04
	bl sub_020181C4
	pop {r3, pc}
	thumb_func_end ov104_0222E278

	thumb_func_start ov104_0222E284
ov104_0222E284: ; 0x0222E284
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r3, #2
	ldr r1, [r4, #0]
	add r0, r5, r0
	str r1, [r0, #0x18]
	mov r0, #0x34
	add r6, r3, #0
	mul r6, r0
	add r0, r5, r6
	ldrh r1, [r4, #4]
	add r0, #0x29
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x3c
	add r1, r4, #0
	add r0, r0, r6
	add r1, #8
	bl sub_020021B0
	add r0, r5, r6
	ldrh r1, [r4, #0x20]
	add r0, #0x4c
	strh r1, [r0]
	add r0, r5, r6
	ldrh r1, [r4, #0x22]
	add r0, #0x4e
	strh r1, [r0]
	add r0, r5, r6
	ldrh r1, [r4, #0x24]
	add r0, #0x50
	strh r1, [r0]
	add r0, r5, r6
	ldrh r1, [r4, #0x26]
	add r0, #0x52
	strh r1, [r0]
	add r0, r5, r6
	ldrh r1, [r4, #0x28]
	add r0, #0x54
	strh r1, [r0]
	add r0, r5, r6
	ldrh r1, [r4, #0x2a]
	add r0, #0x56
	strh r1, [r0]
	add r0, r5, r6
	ldrh r1, [r4, #0x2c]
	add r0, #0x58
	strh r1, [r0]
	add r0, r5, r6
	ldrh r1, [r4, #0x2e]
	add r0, #0x5a
	strh r1, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov104_0222E284

	thumb_func_start ov104_0222E2F0
ov104_0222E2F0: ; 0x0222E2F0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp, #0x14]
	add r5, r2, #0
	add r4, r3, #0
	bl sub_0201D2E8
	add r6, r0, #0
	bl sub_0201D2E8
	lsl r0, r0, #0x10
	add r2, r6, #0
	orr r2, r0
	lsl r0, r5, #0x18
	str r4, [sp]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl ov104_0222DD6C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E2F0

	thumb_func_start ov104_0222E330
ov104_0222E330: ; 0x0222E330
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	add r7, r1, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	str r2, [sp, #0x10]
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	str r3, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	mov r4, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _0222E3A4
	ldr r5, [sp, #0x30]
	add r6, r3, #0
_0222E358:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _0222E362
	mov r0, #0
	b _0222E364
_0222E362:
	ldrb r0, [r0, r4]
_0222E364:
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _0222E372
	mov r0, #0
	b _0222E374
_0222E372:
	ldr r0, [r6, #0]
_0222E374:
	str r0, [sp]
	ldr r0, [sp, #0x38]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #8]
	ldrh r1, [r7]
	ldr r0, [sp, #0xc]
	bl ov104_0222E2F0
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _0222E390
	str r0, [r5, #0]
_0222E390:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, #0x38
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	add r6, r6, #4
	add r7, r7, #2
	add r5, r5, #4
	cmp r4, r0
	blt _0222E358
_0222E3A4:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222E330

	thumb_func_start ov104_0222E3A8
ov104_0222E3A8: ; 0x0222E3A8
	cmp r0, #0x64
	bhs _0222E3B0
	mov r0, #3
	bx lr
_0222E3B0:
	cmp r0, #0x78
	bhs _0222E3B8
	mov r0, #6
	bx lr
_0222E3B8:
	cmp r0, #0x8c
	bhs _0222E3C0
	mov r0, #9
	bx lr
_0222E3C0:
	cmp r0, #0xa0
	bhs _0222E3C8
	mov r0, #0xc
	bx lr
_0222E3C8:
	cmp r0, #0xb4
	bhs _0222E3D0
	mov r0, #0xf
	bx lr
_0222E3D0:
	cmp r0, #0xc8
	bhs _0222E3D8
	mov r0, #0x12
	bx lr
_0222E3D8:
	cmp r0, #0xdc
	bhs _0222E3E0
	mov r0, #0x15
	bx lr
_0222E3E0:
	mov r0, #0x1f
	bx lr
	thumb_func_end ov104_0222E3A8

	thumb_func_start ov104_0222E3E4
ov104_0222E3E4: ; 0x0222E3E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	str r0, [sp]
	ldr r0, [sp, #0x90]
	add r7, r3, #0
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0x90]
	cmp r0, #6
	ble _0222E3FC
	bl GF_AssertFail
_0222E3FC:
	ldr r0, [sp, #0x90]
	mov r4, #0
	str r4, [sp, #0x14]
	cmp r0, #0
	beq _0222E4AA
	add r0, sp, #0x1c
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x94]
	str r0, [sp, #0xc]
_0222E40E:
	bl sub_0201D2E8
	ldr r1, [sp]
	ldrh r1, [r1, #2]
	bl _s32_div_f
	ldr r0, [sp]
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #4]
	mov r2, #0xb3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x18]
	bl ov104_0222DCF4
	mov r0, #0
	cmp r4, #0
	ble _0222E452
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldrh r2, [r2]
	ldrh r3, [r3, #0xc]
	add r1, sp, #0x1c
_0222E43E:
	ldrh r5, [r1]
	cmp r5, r2
	beq _0222E452
	ldrh r5, [r1, #0xc]
	cmp r5, r3
	beq _0222E452
	add r0, r0, #1
	add r1, #0x10
	cmp r0, r4
	blt _0222E43E
_0222E452:
	cmp r0, r4
	bne _0222E4A4
	ldr r0, [sp, #0x14]
	cmp r0, #0x32
	bge _0222E490
	mov r3, #0
	cmp r7, #0
	ble _0222E484
	ldr r2, [sp, #0x10]
	ldr r5, [sp, #0x10]
	ldrh r2, [r2]
	ldrh r6, [r5, #0xc]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
_0222E46E:
	ldrh r5, [r0]
	cmp r2, r5
	beq _0222E484
	ldrh r5, [r1]
	cmp r6, r5
	beq _0222E484
	add r3, r3, #1
	add r0, r0, #2
	add r1, r1, #2
	cmp r3, r7
	blt _0222E46E
_0222E484:
	cmp r3, r7
	beq _0222E490
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	b _0222E4A4
_0222E490:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	strh r1, [r0]
	ldr r0, [sp, #0x10]
	add r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #2
	str r0, [sp, #0xc]
_0222E4A4:
	ldr r0, [sp, #0x90]
	cmp r4, r0
	bne _0222E40E
_0222E4AA:
	ldr r0, [sp, #0x14]
	cmp r0, #0x32
	blt _0222E4B6
	add sp, #0x7c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0222E4B6:
	mov r0, #0
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222E3E4

	thumb_func_start ov104_0222E4BC
ov104_0222E4BC: ; 0x0222E4BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x8c]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp, #0x8c]
	add r0, sp, #0x44
	mov r2, #0xb
	mov r3, #0xb2
	add r5, r1, #0
	bl ov104_0222DD04
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	mov r4, #0
	cmp r0, #0
	ble _0222E4F2
_0222E4E0:
	add r0, r5, #0
	bl ov104_0222E3A8
	ldr r1, [sp, #0x8c]
	strb r0, [r1, r4]
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _0222E4E0
_0222E4F2:
	add r0, sp, #0x78
	ldrb r0, [r0, #0x1c]
	add r1, sp, #0x2c
	cmp r0, #0
	bne _0222E514
	ldr r0, [sp, #0x10]
	add r2, sp, #0x24
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	bl ov104_0222E3E4
	b _0222E5AA
_0222E514:
	ldr r0, [sp, #0x10]
	add r2, sp, #0x24
	lsr r0, r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	mov r3, #0
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	bl ov104_0222E3E4
	ldr r0, [sp, #0x1c]
	mov r7, #0
	cmp r0, #0
	ble _0222E560
	ldr r6, [sp, #0x18]
	add r4, sp, #0x2c
	add r5, sp, #0x24
_0222E53C:
	ldrh r1, [r6]
	add r0, sp, #0x34
	mov r2, #0xb3
	bl ov104_0222DCF4
	add r0, sp, #0x24
	ldrh r0, [r0, #0x10]
	add r7, r7, #1
	add r6, r6, #2
	strh r0, [r4]
	add r0, sp, #0x24
	ldrh r0, [r0, #0x1c]
	add r4, r4, #2
	strh r0, [r5]
	ldr r0, [sp, #0x1c]
	add r5, r5, #2
	cmp r7, r0
	blt _0222E53C
_0222E560:
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	ldr r1, [sp, #0x14]
	add r0, sp, #0x44
	mov r2, #0xb
	mov r3, #0xb2
	bl ov104_0222DD04
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x20]
	lsr r6, r1, #1
	ldr r1, [sp, #0x18]
	lsl r2, r6, #1
	add r1, r1, r2
	str r6, [sp]
	str r1, [sp, #4]
	mov r1, #0xb
	str r1, [sp, #8]
	add r1, sp, #0x2c
	add r2, sp, #0x24
	add r3, r6, #0
	bl ov104_0222E3E4
	mov r5, #0
	cmp r6, #0
	ble _0222E5AA
	ldr r0, [sp, #0x8c]
	add r4, r0, r6
_0222E59A:
	ldr r0, [sp, #0x14]
	bl ov104_0222E3A8
	strb r0, [r4]
	add r5, r5, #1
	add r4, r4, #1
	cmp r5, r6
	blt _0222E59A
_0222E5AA:
	ldr r0, [sp, #0x20]
	bl sub_020181C4
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x8c]
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xb3
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x88]
	mov r3, #0
	bl ov104_0222E330
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov104_0222E4BC

	thumb_func_start ov104_0222E5D0
ov104_0222E5D0: ; 0x0222E5D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	mov r1, #1
	eor r0, r1
	bl sub_02032EE8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200B498
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E5D0

	thumb_func_start ov104_0222E5F0
ov104_0222E5F0: ; 0x0222E5F0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02025F30
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02025FCC
	cmp r0, #0
	bgt _0222E608
	beq _0222E624
	b _0222E618
_0222E608:
	cmp r0, #0xc
	bgt _0222E618
	cmp r0, #7
	blt _0222E618
	beq _0222E618
	cmp r0, #8
	beq _0222E618
	cmp r0, #0xc
_0222E618:
	cmp r4, #0
	bne _0222E620
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222E620:
	mov r0, #0x61
	pop {r3, r4, r5, pc}
_0222E624:
	cmp r4, #0
	bne _0222E62C
	mov r0, #0xfc
	pop {r3, r4, r5, pc}
_0222E62C:
	mov r0, #0xfd
	pop {r3, r4, r5, pc}
	thumb_func_end ov104_0222E5F0

	thumb_func_start ov104_0222E630
ov104_0222E630: ; 0x0222E630
	push {r3, lr}
	bl sub_0202C878
	bl sub_02038F8C
	pop {r3, pc}
	thumb_func_end ov104_0222E630

	.rodata


	.global Unk_ov104_0223F290
Unk_ov104_0223F290: ; 0x0223F290
	.incbin "incbin/overlay104_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov104_0223F298
Unk_ov104_0223F298: ; 0x0223F298
	.incbin "incbin/overlay104_rodata.bin", 0x8, 0xFC

