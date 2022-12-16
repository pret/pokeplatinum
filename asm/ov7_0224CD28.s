	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov7_0224CD28
ov7_0224CD28: ; 0x0224CD28
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #1
	add r5, r0, #0
	ldr r2, _0224CD84 ; =0x0000FFFF
	mov r0, #0
	lsl r1, r1, #8
_0224CD36:
	lsl r3, r0, #1
	ldrh r3, [r4, r3]
	cmp r3, r2
	beq _0224CD48
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, r1
	blo _0224CD36
_0224CD48:
	mov r1, #0x23
	lsl r1, r1, #4
	strb r0, [r5, r1]
	ldrb r1, [r5, r1]
	mov r0, #0xb
	lsl r1, r1, #1
	bl sub_02018144
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r1, r1, #4
	ldrb r1, [r5, r1]
	mov r0, #0
	cmp r1, #0
	ble _0224CD82
	mov r1, #0x8b
	lsl r1, r1, #2
	add r2, r1, #4
_0224CD6E:
	lsl r7, r0, #1
	ldrh r6, [r4, r7]
	ldr r3, [r5, r1]
	add r0, r0, #1
	strh r6, [r3, r7]
	lsl r0, r0, #0x10
	ldrb r3, [r5, r2]
	lsr r0, r0, #0x10
	cmp r0, r3
	blt _0224CD6E
_0224CD82:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224CD84: .word 0x0000FFFF
	thumb_func_end ov7_0224CD28

	thumb_func_start ov7_0224CD88
ov7_0224CD88: ; 0x0224CD88
	push {r4, lr}
	mov r1, #0x95
	mov r0, #0xb
	lsl r1, r1, #2
	bl sub_02018144
	mov r2, #0x95
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov7_0224CD88

	thumb_func_start ov7_0224CDA4
ov7_0224CDA4: ; 0x0224CDA4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	add r6, r3, #0
	bl ov7_0224CD88
	add r4, r0, #0
	ldr r0, [r5, #8]
	mov r1, #0xb
	str r0, [r4, #0]
	mov r0, #0x60
	bl sub_02023790
	mov r1, #0x8d
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	mov r1, #0x83
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_02025E44
	mov r1, #0x85
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x87
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r5, #0xc]
	bl sub_020507E4
	mov r1, #0x89
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r2, [sp, #0x18]
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r5, #0
	bl ov7_0224CE90
	ldr r1, _0224CE88 ; =0x00000242
	mov r3, #0xb
	strb r0, [r4, r1]
	add r0, r5, #0
	add r0, #0x9c
	ldr r2, [r0, #0]
	add r0, r1, #0
	sub r0, #0x2a
	str r2, [r4, r0]
	add r0, r1, #3
	strb r6, [r4, r0]
	ldr r0, [r5, #0xc]
	sub r1, #0x22
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #2
	mov r2, #0
	bl sub_0200C440
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0xb
	ldrb r0, [r4, r1]
	cmp r0, #0
	bne _0224CE44
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
	b _0224CE72
_0224CE44:
	cmp r0, #3
	bne _0224CE56
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
	b _0224CE72
_0224CE56:
	cmp r0, #1
	ldr r0, [r5, #0xc]
	bne _0224CE68
	bl sub_020298B0
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
	b _0224CE72
_0224CE68:
	bl sub_0202CA1C
	mov r1, #0x21
	lsl r1, r1, #4
	str r0, [r4, r1]
_0224CE72:
	ldr r1, [sp]
	add r0, r4, #0
	bl ov7_0224CD28
	ldr r1, _0224CE8C ; =ov7_0224CEAC
	add r0, r7, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224CE88: .word 0x00000242
_0224CE8C: .word ov7_0224CEAC
	thumb_func_end ov7_0224CDA4

	thumb_func_start ov7_0224CE90
ov7_0224CE90: ; 0x0224CE90
	push {r3, lr}
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	cmp r0, #0
	beq _0224CEA4
	cmp r0, #1
	beq _0224CEA4
	cmp r0, #3
	bne _0224CEA8
_0224CEA4:
	mov r0, #0xa
	pop {r3, pc}
_0224CEA8:
	mov r0, #8
	pop {r3, pc}
	thumb_func_end ov7_0224CE90

	thumb_func_start ov7_0224CEAC
ov7_0224CEAC: ; 0x0224CEAC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	ldr r1, _0224D004 ; =0x00000233
	add r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0x14
	bls _0224CEC8
	b _0224CFD0
_0224CEC8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224CED4: ; jump table
	.short _0224CEFE - _0224CED4 - 2 ; case 0
	.short _0224CF0A - _0224CED4 - 2 ; case 1
	.short _0224CF14 - _0224CED4 - 2 ; case 2
	.short _0224CF24 - _0224CED4 - 2 ; case 3
	.short _0224CF2E - _0224CED4 - 2 ; case 4
	.short _0224CF38 - _0224CED4 - 2 ; case 5
	.short _0224CF42 - _0224CED4 - 2 ; case 6
	.short _0224CF4C - _0224CED4 - 2 ; case 7
	.short _0224CF56 - _0224CED4 - 2 ; case 8
	.short _0224CF60 - _0224CED4 - 2 ; case 9
	.short _0224CF6A - _0224CED4 - 2 ; case 10
	.short _0224CF74 - _0224CED4 - 2 ; case 11
	.short _0224CF7E - _0224CED4 - 2 ; case 12
	.short _0224CF8C - _0224CED4 - 2 ; case 13
	.short _0224CF96 - _0224CED4 - 2 ; case 14
	.short _0224CFA0 - _0224CED4 - 2 ; case 15
	.short _0224CFD0 - _0224CED4 - 2 ; case 16
	.short _0224CFD0 - _0224CED4 - 2 ; case 17
	.short _0224CFA8 - _0224CED4 - 2 ; case 18
	.short _0224CFB6 - _0224CED4 - 2 ; case 19
	.short _0224CFC6 - _0224CED4 - 2 ; case 20
_0224CEFE:
	bl ov7_0224D008
	ldr r0, _0224D004 ; =0x00000233
	mov r1, #1
	strb r1, [r4, r0]
	b _0224CFD0
_0224CF0A:
	bl ov7_0224D1EC
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF14:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224D388
	ldr r0, _0224D004 ; =0x00000233
	mov r1, #3
	strb r1, [r4, r0]
	b _0224CFD0
_0224CF24:
	bl ov7_0224D620
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF2E:
	bl ov7_0224DC84
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF38:
	bl ov7_0224DE94
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF42:
	bl ov7_0224DFB0
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF4C:
	bl ov7_0224E3A0
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF56:
	bl ov7_0224E3D8
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF60:
	bl ov7_0224E5B0
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF6A:
	bl ov7_0224E6B8
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF74:
	bl ov7_0224E7C8
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF7E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224E950
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF8C:
	bl ov7_0224EA2C
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CF96:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224EC20
	b _0224CFD0
_0224CFA0:
	add r0, r6, #0
	bl ov7_0224EC38
	b _0224CFD0
_0224CFA8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224EC9C
	ldr r1, _0224D004 ; =0x00000233
	strb r0, [r4, r1]
	b _0224CFD0
_0224CFB6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224EA54
	ldr r0, _0224D004 ; =0x00000233
	mov r1, #0x14
	strb r1, [r4, r0]
	b _0224CFD0
_0224CFC6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov7_0224D250
	pop {r4, r5, r6, pc}
_0224CFD0:
	ldr r0, _0224D004 ; =0x00000233
	ldrb r1, [r4, r0]
	cmp r1, #4
	blo _0224CFFE
	cmp r1, #0xb
	bhi _0224CFFE
	sub r0, #0x3b
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	mov r0, #0x7f
	lsl r0, r0, #2
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	add r4, #0x94
	ldr r0, [r4, #0]
	bl sub_020219F8
_0224CFFE:
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224D004: .word 0x00000233
	thumb_func_end ov7_0224CEAC

	thumb_func_start ov7_0224D008
ov7_0224D008: ; 0x0224D008
	push {r4, lr}
	add r4, r0, #0
	bl ov7_0224D018
	add r0, r4, #0
	bl ov7_0224D040
	pop {r4, pc}
	thumb_func_end ov7_0224D008

	thumb_func_start ov7_0224D018
ov7_0224D018: ; 0x0224D018
	push {r4, lr}
	ldr r2, _0224D03C ; =0x0000021F
	add r4, r0, #0
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	add r1, r4, #0
	add r1, #0x88
	str r0, [r1, #0]
	mov r0, #0xb
	bl sub_0200B358
	add r4, #0x8c
	str r0, [r4, #0]
	pop {r4, pc}
	nop
_0224D03C: .word 0x0000021F
	thumb_func_end ov7_0224D018

	thumb_func_start ov7_0224D040
ov7_0224D040: ; 0x0224D040
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _0224D1E0 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0224D0BC
	mov r4, #3
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0xf
	mov r3, #2
	bl sub_02013A4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x10
	mov r3, #0xe
	bl sub_02013A4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	mov r2, #0x11
	add r3, r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sub r3, #0x13
	bl sub_02013A4C
	mov r3, #1
	str r3, [sp]
	mov r1, #0xd
	str r1, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0224D1E4 ; =0x000001E9
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #8
	add r2, r4, #0
	bl sub_0201A7E8
	b _0224D174
_0224D0BC:
	cmp r0, #3
	bne _0224D11C
	mov r4, #2
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x1d
	add r3, r4, #0
	bl sub_02013A4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	mov r2, #0x1e
	add r3, r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sub r3, #0x20
	bl sub_02013A4C
	mov r1, #0xd
	str r1, [sp]
	mov r0, #7
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0224D1E4 ; =0x000001E9
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #8
	mov r2, #3
	mov r3, #0x17
	bl sub_0201A7E8
	b _0224D174
_0224D11C:
	mov r4, #2
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02013A04
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0xf
	add r3, r4, #0
	bl sub_02013A4C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0x84
	add r1, #0x88
	mov r2, #0x11
	add r3, r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	sub r3, #0x13
	bl sub_02013A4C
	mov r3, #1
	str r3, [sp]
	mov r1, #0xd
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, _0224D1E4 ; =0x000001E9
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, #8
	mov r2, #3
	bl sub_0201A7E8
_0224D174:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	add r2, sp, #0x14
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #0x18]
	mov r0, #0
	strb r0, [r2, #8]
	mov r1, #1
	strb r1, [r2, #9]
	strb r4, [r2, #0xa]
	ldrb r3, [r2, #0xb]
	mov r1, #0xf
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0x30
	bic r3, r1
	strb r3, [r2, #0xb]
	ldrb r3, [r2, #0xb]
	mov r1, #0xc0
	bic r3, r1
	strb r3, [r2, #0xb]
	str r0, [sp]
	mov r3, #0xb
	str r3, [sp, #4]
	ldr r0, [r5, #0]
	ldr r2, _0224D1E8 ; =0x000003D9
	mov r1, #3
	bl sub_0200DAA4
	add r0, r5, #0
	ldr r2, _0224D1E8 ; =0x000003D9
	add r0, #8
	mov r1, #1
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0xb
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x14
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	add r5, #0x80
	str r0, [r5, #0]
	add sp, #0x20
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224D1E0: .word 0x00000245
_0224D1E4: .word 0x000001E9
_0224D1E8: .word 0x000003D9
	thumb_func_end ov7_0224D040

	thumb_func_start ov7_0224D1EC
ov7_0224D1EC: ; 0x0224D1EC
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_02001BE0
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0224D208
	add r1, r1, #1
	cmp r0, r1
	beq _0224D218
	b _0224D212
_0224D208:
	add r0, r4, #0
	bl ov7_0224D21C
	mov r0, #0x13
	pop {r4, pc}
_0224D212:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
_0224D218:
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov7_0224D1EC

	thumb_func_start ov7_0224D21C
ov7_0224D21C: ; 0x0224D21C
	push {r4, lr}
	add r4, r0, #0
	add r0, #8
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #8
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02001BC4
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_02013A3C
	add r4, #8
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov7_0224D21C

	thumb_func_start ov7_0224D250
ov7_0224D250: ; 0x0224D250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #9
	add r4, r1, #0
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224D268
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224D268:
	ldr r0, _0224D37C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _0224D274
	b _0224D378
_0224D274:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_0200B190
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_0200B3F0
	mov r0, #0x8d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0224D380 ; =0x00000245
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224D35A
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	bl sub_0203A138
	cmp r0, #0x65
	beq _0224D35A
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0]
	cmp r0, #0x51
	beq _0224D35A
	ldr r1, _0224D384 ; =0x000001BE
	cmp r0, r1
	beq _0224D35A
	add r0, r1, #0
	add r0, #0x85
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _0224D2EE
	add r1, #0x86
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0224D2EE
	mov r0, #0xb
	bl sub_0202BD38
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
	b _0224D35A
_0224D2EE:
	cmp r2, #1
	bls _0224D308
	mov r0, #0xb
	bl sub_0202BD14
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
	b _0224D35A
_0224D308:
	mov r0, #0x91
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	cmp r0, #1
	bls _0224D328
	mov r0, #0xb
	bl sub_0202BD2C
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
	b _0224D35A
_0224D328:
	cmp r2, #0
	beq _0224D342
	mov r0, #0xb
	bl sub_0202BD08
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
	b _0224D35A
_0224D342:
	cmp r0, #0
	beq _0224D35A
	mov r0, #0xb
	bl sub_0202BD20
	add r1, r0, #0
	mov r0, #0x86
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r2, #1
	bl sub_0202B758
_0224D35A:
	mov r0, #0x25
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_0200C560
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
_0224D378:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224D37C: .word 0x021BF67C
_0224D380: .word 0x00000245
_0224D384: .word 0x000001BE
	thumb_func_end ov7_0224D250

	thumb_func_start ov7_0224D388
ov7_0224D388: ; 0x0224D388
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	mov r2, #0
	str r0, [sp, #8]
	add r4, r1, #0
	str r2, [sp, #0xc]
	ldr r0, [r4, #0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	add r0, r4, #0
	bl ov7_0224D21C
	add r0, r4, #0
	bl ov7_0224D3E8
	mov r0, #0xb
	bl sub_020203AC
	add r1, r4, #0
	add r1, #0x90
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0x90
	ldr r0, [r5, #0x24]
	ldr r1, [r1, #0]
	bl sub_020203C0
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020203D4
	ldr r0, _0224D3E4 ; =0x00000241
	mov r1, #0
	strb r1, [r4, r0]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224D3E4: .word 0x00000241
	thumb_func_end ov7_0224D388

	thumb_func_start ov7_0224D3E8
ov7_0224D3E8: ; 0x0224D3E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r5, #0
	ldr r7, _0224D43C ; =0x0224F328
	mov r6, #0
	add r4, #8
_0224D3F4:
	ldr r0, _0224D440 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224D410
	cmp r0, #3
	beq _0224D410
	cmp r6, #1
	bne _0224D410
	ldr r0, [r5, #0]
	ldr r2, _0224D444 ; =0x0224F2BC
	add r1, r4, #0
	bl sub_0201A8D4
	b _0224D42E
_0224D410:
	cmp r0, #3
	bne _0224D424
	cmp r6, #2
	bne _0224D424
	ldr r0, [r5, #0]
	ldr r2, _0224D448 ; =0x0224F2C4
	add r1, r4, #0
	bl sub_0201A8D4
	b _0224D42E
_0224D424:
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0201A8D4
_0224D42E:
	add r6, r6, #1
	add r4, #0x10
	add r7, #8
	cmp r6, #6
	blo _0224D3F4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D43C: .word 0x0224F328
_0224D440: .word 0x00000245
_0224D444: .word 0x0224F2BC
_0224D448: .word 0x0224F2C4
	thumb_func_end ov7_0224D3E8

	thumb_func_start ov7_0224D44C
ov7_0224D44C: ; 0x0224D44C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x28
	mov r1, #1
	bl sub_0200DC9C
	mov r4, #0
	add r5, #8
_0224D45C:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blo _0224D45C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov7_0224D44C

	thumb_func_start ov7_0224D474
ov7_0224D474: ; 0x0224D474
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x3e
	mov r1, #0xb
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r2, #0xb
	str r2, [sp, #0xc]
	ldr r2, [r5, #0]
	mov r3, #1
	add r4, r0, #0
	bl sub_020070E8
	ldr r0, _0224D544 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224D4A4
	cmp r0, #3
	bne _0224D4BE
_0224D4A4:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #2
	mov r3, #1
	bl sub_0200710C
	b _0224D4D6
_0224D4BE:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xb
	str r0, [sp, #0xc]
	ldr r2, [r5, #0]
	add r0, r4, #0
	mov r1, #3
	mov r3, #1
	bl sub_0200710C
_0224D4D6:
	ldr r0, _0224D544 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224D4F2
	mov r0, #0x20
	mov r2, #0
	str r0, [sp]
	mov r1, #0xb
	add r0, r4, #0
	add r3, r2, #0
	str r1, [sp, #4]
	bl sub_02007130
	b _0224D506
_0224D4F2:
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xb
	mov r2, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02007130
_0224D506:
	mov r0, #0
	str r0, [sp]
	mov r3, #0xb
	str r3, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #3
	mov r2, #0x1f
	bl sub_0200DAA4
	mov r0, #0x85
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r1, #3
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224D544: .word 0x00000245
	thumb_func_end ov7_0224D474

	thumb_func_start ov7_0224D548
ov7_0224D548: ; 0x0224D548
	push {r4, lr}
	add r4, r0, #0
	bl sub_02020014
	mov r1, #0x8f
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_0201A008
	mov r1, #0x8e
	lsl r1, r1, #2
	strb r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0201A008
	ldr r1, _0224D5CC ; =0x00000239
	strb r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #2
	bl sub_0201A008
	ldr r1, _0224D5D0 ; =0x0000023A
	strb r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #3
	bl sub_0201A008
	ldr r1, _0224D5D4 ; =0x0000023B
	strb r0, [r4, r1]
	mov r0, #0
	mov r1, #3
	bl sub_02019060
	mov r0, #1
	mov r1, #2
	bl sub_02019060
	mov r0, #2
	mov r1, #1
	bl sub_02019060
	mov r0, #3
	mov r1, #0
	bl sub_02019060
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #1
	bl sub_0201FF0C
	pop {r4, pc}
	nop
_0224D5CC: .word 0x00000239
_0224D5D0: .word 0x0000023A
_0224D5D4: .word 0x0000023B
	thumb_func_end ov7_0224D548

	thumb_func_start ov7_0224D5D8
ov7_0224D5D8: ; 0x0224D5D8
	push {r4, lr}
	mov r1, #0x8e
	add r4, r0, #0
	lsl r1, r1, #2
	ldrb r1, [r4, r1]
	mov r0, #0
	bl sub_02019060
	ldr r1, _0224D614 ; =0x00000239
	mov r0, #1
	ldrb r1, [r4, r1]
	bl sub_02019060
	ldr r1, _0224D618 ; =0x0000023A
	mov r0, #2
	ldrb r1, [r4, r1]
	bl sub_02019060
	ldr r1, _0224D61C ; =0x0000023B
	mov r0, #3
	ldrb r1, [r4, r1]
	bl sub_02019060
	mov r0, #0x8f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0201FF48
	pop {r4, pc}
	nop
_0224D614: .word 0x00000239
_0224D618: .word 0x0000023A
_0224D61C: .word 0x0000023B
	thumb_func_end ov7_0224D5D8

	thumb_func_start ov7_0224D620
ov7_0224D620: ; 0x0224D620
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r1, _0224D690 ; =0x00000241
	add r4, r0, #0
	add r0, r1, #1
	ldrb r2, [r4, r1]
	ldrb r0, [r4, r0]
	cmp r2, r0
	beq _0224D65A
	ldr r5, _0224D694 ; =0x0224F2D4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [r3, #0]
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, r2, #0
	bl sub_02020990
	ldr r0, _0224D690 ; =0x00000241
	add sp, #0xc
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #3
	pop {r4, r5, pc}
_0224D65A:
	mov r0, #0
	strb r0, [r4, r1]
	mov r1, #6
	mov r2, #2
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	add r0, r4, #0
	bl ov7_0224EAD0
	add r0, r4, #0
	bl ov7_0224D474
	add r0, r4, #0
	bl ov7_0224D548
	add r0, r4, #0
	bl ov7_0224D6BC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224DAF8
	mov r0, #4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224D690: .word 0x00000241
_0224D694: .word 0x0224F2D4
	thumb_func_end ov7_0224D620

	thumb_func_start ov7_0224D698
ov7_0224D698: ; 0x0224D698
	push {r3, lr}
	ldr r2, _0224D6B8 ; =0x00000245
	ldrb r0, [r0, r2]
	cmp r0, #1
	bne _0224D6A6
	add r0, r1, #0
	pop {r3, pc}
_0224D6A6:
	cmp r0, #2
	bne _0224D6B4
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r1, r0, #0
_0224D6B4:
	add r0, r1, #0
	pop {r3, pc}
	; .align 2, 0
_0224D6B8: .word 0x00000245
	thumb_func_end ov7_0224D698

	thumb_func_start ov7_0224D6BC
ov7_0224D6BC: ; 0x0224D6BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r2, _0224D850 ; =0x00000245
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldrb r0, [r5, r2]
	cmp r0, #0
	beq _0224D6D2
	cmp r0, #3
	bne _0224D6F2
_0224D6D2:
	mov r2, #0x62
	mov r0, #0
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0xc]
	ldr r2, _0224D854 ; =0x00000287
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #4]
	b _0224D714
_0224D6F2:
	cmp r0, #1
	bne _0224D706
	ldr r0, [sp]
	mov r1, #0x1a
	add r2, #0x2d
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0xc]
	b _0224D714
_0224D706:
	ldr r0, [sp]
	mov r1, #0x1a
	mov r2, #0xc
	mov r3, #0xb
	bl sub_0200B144
	str r0, [sp, #0xc]
_0224D714:
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	mov r1, #0xb
	add r0, r0, #1
	bl sub_02013A04
	str r0, [r5, #0x7c]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _0224D7B4
	ldr r4, [sp, #8]
_0224D734:
	mov r1, #0x8b
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r5, #0
	ldrh r1, [r1, r4]
	bl ov7_0224D698
	add r6, r0, #0
	mov r0, #0x69
	lsl r0, r0, #2
	cmp r6, r0
	bhi _0224D780
	sub r0, #0x5c
	cmp r6, r0
	blo _0224D780
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	bl sub_0207D268
	add r1, r0, #0
	ldr r0, [sp, #4]
	bl sub_0200B1EC
	add r7, r0, #0
	mov r2, #0x8b
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldr r0, [r5, #0x7c]
	ldrh r2, [r2, r4]
	add r1, r7, #0
	bl sub_02013A6C
	add r0, r7, #0
	bl sub_020237BC
	mov r0, #1
	str r0, [sp]
	b _0224D7A0
_0224D780:
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl sub_0200B1EC
	mov r2, #0x8b
	add r7, r0, #0
	lsl r2, r2, #2
	ldr r2, [r5, r2]
	ldr r0, [r5, #0x7c]
	ldrh r2, [r2, r4]
	add r1, r7, #0
	bl sub_02013A6C
	add r0, r7, #0
	bl sub_020237BC
_0224D7A0:
	ldr r0, [sp, #8]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r1, [r5, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _0224D734
_0224D7B4:
	ldr r0, [sp]
	cmp r0, #0
	ldr r0, [r5, #0x7c]
	beq _0224D7CE
	add r1, r5, #0
	add r1, #0x88
	mov r2, #0x1a
	add r3, r2, #0
	ldr r1, [r1, #0]
	sub r3, #0x1c
	bl sub_02013A4C
	b _0224D7DE
_0224D7CE:
	add r1, r5, #0
	add r1, #0x88
	mov r2, #8
	add r3, r2, #0
	ldr r1, [r1, #0]
	sub r3, #0xa
	bl sub_02013A4C
_0224D7DE:
	ldr r0, [sp, #0xc]
	bl sub_0200B190
	ldr r0, _0224D850 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224D7F0
	cmp r0, #3
	bne _0224D7F6
_0224D7F0:
	ldr r0, [sp, #4]
	bl sub_0200B190
_0224D7F6:
	ldr r3, _0224D858 ; =0x0224F308
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x69
	lsl r0, r0, #2
	cmp r6, r0
	bhi _0224D820
	sub r0, #0x5c
	cmp r6, r0
	blo _0224D820
	mov r1, #0x23
	add r0, sp, #0x10
	strb r1, [r0, #0x15]
	b _0224D826
_0224D820:
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #0x15]
_0224D826:
	ldr r0, [r5, #0x7c]
	mov r3, #0xb
	str r0, [sp, #0x10]
	add r0, r5, #0
	add r0, #8
	str r0, [sp, #0x1c]
	mov r0, #0x23
	lsl r0, r0, #4
	ldrb r0, [r5, r0]
	add r1, r0, #1
	add r0, sp, #0x10
	strh r1, [r0, #0x10]
	mov r1, #0
	add r0, sp, #0x10
	add r2, r1, #0
	str r5, [sp, #0x2c]
	bl sub_0200112C
	str r0, [r5, #0x78]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0224D850: .word 0x00000245
_0224D854: .word 0x00000287
_0224D858: .word 0x0224F308
	thumb_func_end ov7_0224D6BC

	thumb_func_start ov7_0224D85C
ov7_0224D85C: ; 0x0224D85C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0x13
	str r0, [sp, #0x10]
	add r6, r2, #0
	bl sub_02001504
	add r4, r0, #0
	cmp r6, #1
	beq _0224D878
	ldr r0, _0224D9AC ; =0x00000638
	bl sub_02005748
_0224D878:
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #1
	mvn r1, r1
	cmp r5, r1
	beq _0224D938
	ldr r2, _0224D9B0 ; =0x00000245
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _0224D8A8
	mov r0, #0x82
	mov r1, #0xb
	bl sub_02023790
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	mov r2, #0xb
	add r6, r0, #0
	bl sub_0207CFC8
	b _0224D90C
_0224D8A8:
	cmp r0, #3
	bne _0224D8C2
	mov r0, #0x82
	mov r1, #0xb
	bl sub_02023790
	lsl r1, r5, #0x10
	lsr r1, r1, #0x10
	mov r2, #0xb
	add r6, r0, #0
	bl sub_0207CFC8
	b _0224D90C
_0224D8C2:
	cmp r0, #1
	bne _0224D8E6
	mov r0, #0
	mov r1, #0x1a
	add r2, #0x2d
	mov r3, #0xb
	bl sub_0200B144
	add r1, r5, #0
	add r7, r0, #0
	add r1, #0x8a
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0200B190
	b _0224D90C
_0224D8E6:
	mov r0, #0
	mov r1, #0x1a
	sub r2, #0x27
	mov r3, #0xb
	bl sub_0200B144
	add r7, r0, #0
	lsl r0, r5, #0x18
	lsr r0, r0, #0x18
	bl sub_020981F4
	add r1, r0, #0
	add r0, r7, #0
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	bl sub_0200B190
_0224D90C:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224D9B4 ; =0x000F0E00
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x18
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov7_0224EB7C
	b _0224D940
_0224D938:
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov7_0224EB7C
_0224D940:
	add r1, sp, #0x14
	ldr r0, [sp, #0x10]
	add r1, #2
	add r2, sp, #0x14
	bl sub_020014DC
	add r0, sp, #0x14
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0224D962
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	b _0224D96E
_0224D962:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_0224D96E:
	ldr r0, [sp, #0x10]
	mov r1, #2
	bl sub_02001504
	cmp r0, #7
	bls _0224D992
	add r1, sp, #0x14
	ldrh r1, [r1, #2]
	add r1, r1, #7
	cmp r0, r1
	bls _0224D992
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	b _0224D99E
_0224D992:
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
_0224D99E:
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224D9AC: .word 0x00000638
_0224D9B0: .word 0x00000245
_0224D9B4: .word 0x000F0E00
	thumb_func_end ov7_0224D85C

	thumb_func_start ov7_0224D9B8
ov7_0224D9B8: ; 0x0224D9B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	mov r1, #0x13
	add r7, r2, #0
	bl sub_02001504
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	beq _0224DAA0
	lsl r0, r5, #0x10
	lsr r2, r0, #0x10
	mov r0, #0x69
	lsl r0, r0, #2
	cmp r2, r0
	bhi _0224DA0A
	add r1, r0, #0
	sub r1, #0x5c
	cmp r2, r1
	blo _0224DA0A
	add r1, r0, #0
	sub r1, #0x5d
	sub r1, r2, r1
	lsl r1, r1, #0x10
	lsr r2, r1, #0x10
	mov r1, #2
	add r3, r4, #0
	str r1, [sp]
	add r3, #8
	str r3, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	add r3, r7, #4
	str r3, [sp, #0xc]
	add r0, #0xac
	ldr r0, [r4, r0]
	add r3, r1, #0
	bl sub_0200C648
_0224DA0A:
	lsl r1, r5, #0x10
	add r0, r4, #0
	lsr r1, r1, #0x10
	bl ov7_0224E890
	str r0, [sp, #0x14]
	mov r0, #0xc
	mov r1, #0xb
	bl sub_02023790
	str r0, [sp, #0x18]
	ldr r0, _0224DAF0 ; =0x00000245
	ldrb r0, [r4, r0]
	cmp r0, #3
	bne _0224DA38
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x20
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	b _0224DA46
_0224DA38:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #9
	bl sub_0200B1EC
	str r0, [sp, #0x10]
_0224DA46:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x14]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	bl sub_0200C388
	mov r0, #0
	ldr r1, [sp, #0x18]
	add r2, r0, #0
	bl sub_02002D7C
	mov ip, r0
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224DAF4 ; =0x00010200
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	mov r6, ip
	mov r3, #0x98
	add r0, #8
	sub r3, r3, r6
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	ldr r0, [sp, #0x18]
	bl sub_020237BC
_0224DAA0:
	mov r0, #1
	mvn r0, r0
	cmp r5, r0
	bne _0224DAEC
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #8
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #0x98
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #8
	mov r1, #0xf
	mov r2, #0
	add r3, r7, #0
	bl sub_0201AE78
	mov r1, #0
	str r7, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224DAF4 ; =0x00010200
	add r4, #8
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
_0224DAEC:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224DAF0: .word 0x00000245
_0224DAF4: .word 0x00010200
	thumb_func_end ov7_0224D9B8

	thumb_func_start ov7_0224DAF8
ov7_0224DAF8: ; 0x0224DAF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0224DC80 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224DBA2
	cmp r1, #0
	bne _0224DB24
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x28
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	b _0224DB3A
_0224DB24:
	mov r0, #0x48
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0
	add r0, #0x28
	mov r1, #0xf
	add r3, r2, #0
	bl sub_0201AE78
_0224DB3A:
	mov r0, #0x10
	mov r1, #0xb
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x26
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	bl ov7_0224E8F4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0
	add r7, r0, #0
	mov r3, #0x40
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x28
	add r2, r4, #0
	sub r3, r3, r7
	str r1, [sp, #8]
	bl sub_0201D738
	b _0224DC66
_0224DBA2:
	cmp r1, #0
	bne _0224DBEA
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x28
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x12
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x28
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r4, #0
	bl sub_020237BC
	b _0224DBFE
_0224DBEA:
	mov r0, #0x48
	str r0, [sp]
	add r0, r5, #0
	mov r3, #0x10
	add r0, #0x28
	mov r1, #0xf
	mov r2, #0
	str r3, [sp, #4]
	bl sub_0201AE78
_0224DBFE:
	mov r0, #0x10
	mov r1, #0xb
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x13
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r5, #0
	bl ov7_0224E8F4
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0x48
	mov r1, #0
	add r0, #0x28
	add r2, r4, #0
	sub r3, r3, r7
	str r1, [sp, #8]
	bl sub_0201D738
_0224DC66:
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r5, #0x28
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224DC80: .word 0x00000245
	thumb_func_end ov7_0224DAF8

	thumb_func_start ov7_0224DC84
ov7_0224DC84: ; 0x0224DC84
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r2, sp, #0
	ldr r0, [r5, #0x78]
	mov r1, #0
	add r2, #2
	bl sub_020014DC
	ldr r0, [r5, #0x78]
	bl sub_02001288
	add r4, r0, #0
	ldr r0, [r5, #0x78]
	mov r1, #0
	add r2, sp, #0
	bl sub_020014DC
	add r0, sp, #0
	ldrh r2, [r0]
	ldrh r0, [r0, #2]
	cmp r0, r2
	beq _0224DCC4
	mov r0, #2
	lsl r2, r2, #4
	lsl r0, r0, #8
	add r2, #0x18
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	mov r1, #0xac
	asr r2, r2, #0x10
	bl sub_0200D494
_0224DCC4:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0224DCD6
	add r0, r0, #1
	cmp r4, r0
	bne _0224DCD4
	b _0224DE7C
_0224DCD4:
	b _0224DD04
_0224DCD6:
	mov r1, #0
	ldr r0, [r5, #0x78]
	add r2, r1, #0
	bl sub_02001384
	ldr r0, [r5, #0x7c]
	bl sub_02013A3C
	add r0, r5, #0
	bl ov7_0224D44C
	add r0, r5, #0
	bl ov7_0224D5D8
	ldr r0, [r5, #0]
	mov r1, #1
	bl sub_02019EBC
	ldr r0, _0224DE80 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_0224DD04:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02021D34
	mov r1, #0x82
	lsl r1, r1, #2
	strh r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl sub_02021D34
	ldr r1, _0224DE84 ; =0x0000020A
	strh r0, [r5, r1]
	sub r1, #0x12
	ldr r0, [r5, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r5, #0
	mov r1, #1
	bl ov7_0224EC10
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x18
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	ldr r1, _0224DE88 ; =0x00000246
	mov r2, #1
	strh r4, [r5, r1]
	add r0, r1, #2
	strh r2, [r5, r0]
	ldrh r1, [r5, r1]
	add r0, r5, #0
	bl ov7_0224E890
	mov r1, #0x93
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov7_0224E8F4
	mov r2, #0x93
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	cmp r0, r1
	bhs _0224DDE0
	sub r0, r2, #7
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224DD9C
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x25
	bl sub_0200B1EC
	b _0224DDA8
_0224DD9C:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200B1EC
_0224DDA8:
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0224DDE0:
	sub r2, r2, #7
	ldrb r2, [r5, r2]
	cmp r2, #1
	bne _0224DDF6
	ldr r0, _0224DE80 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	bl ov7_0224E098
	pop {r3, r4, r5, pc}
_0224DDF6:
	bl sub_020E2178
	ldr r1, _0224DE8C ; =0x0000024A
	strh r0, [r5, r1]
	ldrh r0, [r5, r1]
	cmp r0, #0x63
	bls _0224DE08
	mov r0, #0x63
	strh r0, [r5, r1]
_0224DE08:
	ldr r1, _0224DE88 ; =0x00000246
	add r0, r5, #0
	ldrh r1, [r5, r1]
	mov r2, #0
	bl ov7_0224E834
	ldr r0, _0224DE90 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224DE2A
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x21
	bl sub_0200B1EC
	b _0224DE36
_0224DE2A:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_0200B1EC
_0224DE36:
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	add r0, r5, #0
	mov r1, #1
	bl ov7_0224EB38
	ldr r0, _0224DE80 ; =0x000005DC
	bl sub_02005748
	mov r0, #5
	pop {r3, r4, r5, pc}
_0224DE7C:
	mov r0, #4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224DE80: .word 0x000005DC
_0224DE84: .word 0x0000020A
_0224DE88: .word 0x00000246
_0224DE8C: .word 0x0000024A
_0224DE90: .word 0x00000245
	thumb_func_end ov7_0224DC84

	thumb_func_start ov7_0224DE94
ov7_0224DE94: ; 0x0224DE94
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224DEAA
	mov r0, #5
	pop {r4, pc}
_0224DEAA:
	add r0, r4, #0
	bl ov7_0224DED4
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224E28C
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #6
	pop {r4, pc}
	thumb_func_end ov7_0224DE94

	thumb_func_start ov7_0224DED4
ov7_0224DED4: ; 0x0224DED4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _0224DFAC ; =0x00000245
	add r5, r0, #0
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _0224DEF6
	add r0, r1, #0
	add r1, r1, #1
	sub r0, #0x35
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	mov r2, #0xb
	bl sub_0207D730
	add r4, r0, #0
	b _0224DF28
_0224DEF6:
	cmp r0, #3
	bne _0224DF0E
	add r0, r1, #0
	add r1, r1, #1
	sub r0, #0x35
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	mov r2, #0xb
	bl sub_0207D730
	add r4, r0, #0
	b _0224DF28
_0224DF0E:
	cmp r0, #2
	bne _0224DF26
	add r0, r1, #0
	add r1, r1, #1
	sub r0, #0x35
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	bl sub_0202CBC8
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	b _0224DF28
_0224DF26:
	mov r4, #0
_0224DF28:
	add r0, r5, #0
	add r0, #0x48
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x48
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r0, #0x18
	mov r1, #0xb
	bl sub_02023790
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x14
	bl sub_0200B1EC
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	add r2, r4, #0
	mov r3, #3
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r6, #0
	add r2, r7, #0
	bl sub_0200C388
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x48
	add r2, r6, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r5, #0x48
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224DFAC: .word 0x00000245
	thumb_func_end ov7_0224DED4

	thumb_func_start ov7_0224DFB0
ov7_0224DFB0: ; 0x0224DFB0
	push {r4, lr}
	mov r1, #0x92
	add r4, r0, #0
	lsl r1, r1, #2
	add r0, r4, r1
	add r1, r1, #2
	ldrh r1, [r4, r1]
	bl sub_0208C15C
	cmp r0, #0
	beq _0224DFD8
	ldr r0, _0224E08C ; =0x00000638
	bl sub_02005748
	add r0, r4, #0
	mov r1, #1
	bl ov7_0224E28C
	mov r0, #6
	pop {r4, pc}
_0224DFD8:
	ldr r0, _0224E090 ; =0x021BF67C
	mov r1, #1
	ldr r2, [r0, #0x48]
	add r0, r2, #0
	tst r0, r1
	beq _0224E028
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add r0, r4, #0
	add r0, #0x48
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x38
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	ldr r0, _0224E094 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov7_0224E098
	pop {r4, pc}
_0224E028:
	mov r0, #2
	tst r0, r2
	beq _0224E088
	add r0, r4, #0
	add r0, #0x48
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x38
	mov r1, #1
	bl sub_0200DC9C
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EB38
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0xe
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EC10
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A9A4
	ldr r0, _0224E094 ; =0x000005DC
	bl sub_02005748
	mov r0, #4
	pop {r4, pc}
_0224E088:
	mov r0, #6
	pop {r4, pc}
	; .align 2, 0
_0224E08C: .word 0x00000638
_0224E090: .word 0x021BF67C
_0224E094: .word 0x000005DC
	thumb_func_end ov7_0224DFB0

	thumb_func_start ov7_0224E098
ov7_0224E098: ; 0x0224E098
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r2, _0224E284 ; =0x00000245
	add r4, r0, #0
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _0224E0BC
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0xb
	bl sub_0207D55C
	b _0224E100
_0224E0BC:
	cmp r0, #3
	bne _0224E0D6
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0xb
	bl sub_0207D55C
	b _0224E100
_0224E0D6:
	cmp r0, #1
	bne _0224E0EE
	sub r2, #0x35
	ldr r0, [r4, r2]
	bl sub_020289A0
	cmp r0, #0xc8
	bne _0224E0EA
	mov r0, #0
	b _0224E100
_0224E0EA:
	mov r0, #1
	b _0224E100
_0224E0EE:
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r0]
	bl sub_0202CB70
_0224E100:
	cmp r0, #0
	bne _0224E192
	mov r0, #0x92
	mov r1, #0
	lsl r0, r0, #2
	strh r1, [r4, r0]
	sub r0, r0, #3
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0224E124
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E15A
_0224E124:
	cmp r0, #3
	bne _0224E138
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E15A
_0224E138:
	cmp r0, #1
	bne _0224E14C
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xc
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E15A
_0224E14C:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xe
	bl sub_0200B1EC
	add r5, r0, #0
_0224E15A:
	add r0, r4, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x20
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r4, r1]
	add sp, #8
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0224E192:
	ldr r1, _0224E288 ; =0x00000246
	add r0, r4, #0
	ldrh r1, [r4, r1]
	mov r2, #0
	bl ov7_0224E834
	mov r0, #0
	str r0, [sp]
	mov r1, #1
	mov r2, #0x92
	add r0, r4, #0
	str r1, [sp, #4]
	lsl r2, r2, #2
	add r0, #0x8c
	ldrsh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r3, #2
	bl sub_0200B60C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	mov r2, #0x93
	str r0, [sp, #4]
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	sub r2, r2, #4
	add r0, r4, #0
	ldrsh r2, [r4, r2]
	add r0, #0x8c
	ldr r0, [r0, #0]
	mul r2, r3
	mov r1, #2
	mov r3, #6
	bl sub_0200B60C
	ldr r1, _0224E288 ; =0x00000246
	add r2, r1, #0
	ldrh r0, [r4, r1]
	sub r2, #0xa2
	cmp r0, r2
	bhi _0224E226
	sub r1, #0xfe
	cmp r0, r1
	blo _0224E226
	bl sub_0207D268
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200B630
	ldr r0, _0224E284 ; =0x00000245
	ldrb r0, [r4, r0]
	cmp r0, #3
	bne _0224E216
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x24
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E24C
_0224E216:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x1b
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E24C
_0224E226:
	ldr r0, _0224E284 ; =0x00000245
	ldrb r0, [r4, r0]
	cmp r0, #3
	bne _0224E23E
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x23
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E24C
_0224E23E:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_0200B1EC
	add r5, r0, #0
_0224E24C:
	add r0, r4, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x20
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r4, r1]
	mov r0, #7
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E284: .word 0x00000245
_0224E288: .word 0x00000246
	thumb_func_end ov7_0224E098

	thumb_func_start ov7_0224E28C
ov7_0224E28C: ; 0x0224E28C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r0, #0x38
	mov r1, #0xf
	bl sub_0201ADA4
	cmp r4, #0
	bne _0224E2AE
	add r0, r5, #0
	add r0, #0x38
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
_0224E2AE:
	mov r0, #0x18
	mov r1, #0xb
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x15
	bl sub_0200B1EC
	mov r3, #2
	add r6, r0, #0
	mov r2, #0x92
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r5, #0
	lsl r2, r2, #2
	add r0, #0x8c
	ldrsh r2, [r5, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r1, #0
	add r0, r5, #0
	add r0, #0x38
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0224E39C ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224E322
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x22
	bl sub_0200B1EC
	b _0224E32E
_0224E322:
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x16
	bl sub_0200B1EC
_0224E32E:
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r2, #0x93
	str r0, [sp, #4]
	lsl r2, r2, #2
	ldr r3, [r5, r2]
	sub r2, r2, #4
	add r0, r5, #0
	ldrsh r2, [r5, r2]
	add r0, #0x8c
	ldr r0, [r0, #0]
	mul r2, r3
	mov r1, #0
	mov r3, #6
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r4, #0
	add r2, r7, #0
	bl sub_0200C388
	mov r0, #0
	add r1, r4, #0
	add r2, r0, #0
	bl sub_02002D7C
	add r6, r0, #0
	mov r0, #8
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	add r0, r5, #0
	mov r3, #0x60
	mov r1, #0
	add r0, #0x38
	add r2, r4, #0
	sub r3, r3, r6
	str r1, [sp, #8]
	bl sub_0201D738
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	add r5, #0x38
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0224E39C: .word 0x00000245
	thumb_func_end ov7_0224E28C

	thumb_func_start ov7_0224E3A0
ov7_0224E3A0: ; 0x0224E3A0
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224E3BA
	add sp, #4
	mov r0, #7
	pop {r3, r4, pc}
_0224E3BA:
	mov r3, #0xb
	str r3, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0224E3D4 ; =0x0224F2CC
	mov r2, #0x1f
	bl sub_02002100
	add r4, #0x80
	str r0, [r4, #0]
	mov r0, #8
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224E3D4: .word 0x0224F2CC
	thumb_func_end ov7_0224E3A0

	thumb_func_start ov7_0224E3D8
ov7_0224E3D8: ; 0x0224E3D8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_02002114
	cmp r0, #0
	beq _0224E3F6
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	bne _0224E3F4
	b _0224E55E
_0224E3F4:
	b _0224E5A0
_0224E3F6:
	ldr r2, _0224E5A4 ; =0x00000245
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _0224E454
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200B1EC
	mov r2, #0x92
	lsl r2, r2, #2
	add r5, r0, #0
	ldrsh r0, [r4, r2]
	cmp r0, #1
	bne _0224E428
	add r0, r4, #0
	sub r2, r2, #2
	add r0, #0x8c
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B70C
	b _0224E438
_0224E428:
	add r0, r4, #0
	sub r2, r2, #2
	add r0, #0x8c
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B77C
_0224E438:
	ldr r0, _0224E5A8 ; =0x00000246
	mov r1, #5
	ldrh r0, [r4, r0]
	mov r2, #0xb
	bl sub_0207CFF0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B7B4
	b _0224E518
_0224E454:
	cmp r0, #3
	bne _0224E4AC
	add r0, r2, #3
	ldrsh r0, [r4, r0]
	cmp r0, #1
	bne _0224E472
	add r0, r4, #0
	add r2, r2, #1
	add r0, #0x8c
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B70C
	b _0224E482
_0224E472:
	add r0, r4, #0
	add r2, r2, #1
	add r0, #0x8c
	ldrh r2, [r4, r2]
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B77C
_0224E482:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_0200B1EC
	add r5, r0, #0
	ldr r0, _0224E5A8 ; =0x00000246
	mov r1, #5
	ldrh r0, [r4, r0]
	mov r2, #0xb
	bl sub_0207CFF0
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B7B4
	b _0224E518
_0224E4AC:
	cmp r0, #1
	bne _0224E4CC
	add r1, r2, #1
	ldrh r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0
	bl ov7_0224E834
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xb
	bl sub_0200B1EC
	add r5, r0, #0
	b _0224E518
_0224E4CC:
	add r0, r2, #3
	ldrsh r0, [r4, r0]
	cmp r0, #1
	bne _0224E4F0
	add r0, r2, #1
	ldrh r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200BE64
	b _0224E50A
_0224E4F0:
	add r0, r2, #1
	ldrh r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200BE98
_0224E50A:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xd
	bl sub_0200B1EC
	add r5, r0, #0
_0224E518:
	add r0, r4, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x20
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r4, r1]
	ldr r0, _0224E5AC ; =0x00000644
	bl sub_02005748
	mov r0, #9
	pop {r3, r4, r5, pc}
_0224E55E:
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EB38
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0xe
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EC10
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A9A4
	mov r0, #4
	pop {r3, r4, r5, pc}
_0224E5A0:
	mov r0, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E5A4: .word 0x00000245
_0224E5A8: .word 0x00000246
_0224E5AC: .word 0x00000644
	thumb_func_end ov7_0224E3D8

	thumb_func_start ov7_0224E5B0
ov7_0224E5B0: ; 0x0224E5B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224E5C6
	mov r0, #9
	pop {r4, pc}
_0224E5C6:
	ldr r2, _0224E6B4 ; =0x00000245
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _0224E5FC
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0xb
	bl sub_0207D570
	mov r2, #0x22
	lsl r2, r2, #4
	add r1, r2, #0
	ldr r0, [r4, r2]
	add r2, #0x28
	ldrsh r2, [r4, r2]
	add r1, #0x26
	ldrh r1, [r4, r1]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0206D504
	b _0224E63C
_0224E5FC:
	cmp r0, #3
	bne _0224E616
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r2]
	ldr r0, [r4, r0]
	mov r3, #0xb
	bl sub_0207D570
	b _0224E63C
_0224E616:
	cmp r0, #1
	bne _0224E62A
	add r0, r2, #0
	add r1, r2, #1
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl sub_0202895C
	b _0224E63C
_0224E62A:
	add r0, r2, #0
	add r1, r2, #1
	add r2, r2, #3
	sub r0, #0x35
	ldrh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r0]
	bl sub_0202CAE0
_0224E63C:
	mov r1, #0x93
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	sub r1, r1, #4
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	mul r1, r2
	bl ov7_0224E920
	ldr r2, _0224E6B4 ; =0x00000245
	ldrb r0, [r4, r2]
	cmp r0, #3
	bne _0224E66E
	add r0, r2, #0
	add r3, r2, #7
	add r2, r2, #3
	sub r0, #0x29
	ldrsh r2, [r4, r2]
	ldr r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #0x45
	mul r2, r3
	bl sub_0202CF70
	b _0224E684
_0224E66E:
	add r0, r2, #0
	add r3, r2, #7
	add r2, r2, #3
	sub r0, #0x29
	ldrsh r2, [r4, r2]
	ldr r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #0x23
	mul r2, r3
	bl sub_0202CF70
_0224E684:
	add r0, r4, #0
	mov r1, #1
	bl ov7_0224DAF8
	mov r1, #0x92
	lsl r1, r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #1
	ble _0224E69E
	mov r2, #2
	sub r0, r1, #5
	strb r2, [r4, r0]
	b _0224E6B0
_0224E69E:
	sub r0, r1, #5
	ldrb r0, [r4, r0]
	cmp r0, #0xff
	beq _0224E6B0
	sub r0, r1, #5
	ldrb r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #5
	strb r2, [r4, r0]
_0224E6B0:
	mov r0, #0xa
	pop {r4, pc}
	; .align 2, 0
_0224E6B4: .word 0x00000245
	thumb_func_end ov7_0224E5B0

	thumb_func_start ov7_0224E6B8
ov7_0224E6B8: ; 0x0224E6B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224E6CE
	mov r0, #0xa
	pop {r3, r4, r5, pc}
_0224E6CE:
	ldr r0, _0224E7BC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224E7B6
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _0224E6EA
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl sub_0206B3B4
_0224E6EA:
	ldr r0, _0224E7C0 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0224E6F6
	cmp r0, #3
	bne _0224E774
_0224E6F6:
	ldr r1, _0224E7C4 ; =0x00000246
	ldrh r0, [r5, r1]
	cmp r0, #4
	bne _0224E774
	add r0, r1, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0xa
	blt _0224E774
	sub r1, #0x36
	ldr r0, [r5, r1]
	mov r1, #0xc
	mov r2, #1
	mov r3, #0xb
	bl sub_0207D570
	cmp r0, #1
	bne _0224E774
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0xa
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0xf
	bl sub_0201ADA4
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x58
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	sub r1, #0x20
	ldr r0, [r5, r1]
	bl sub_0202CD88
	mov r1, #0x32
	bl sub_0202CF28
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_0224E774:
	add r0, r5, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	add r0, r5, #0
	mov r1, #0
	bl ov7_0224EB38
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #0x10
	ldrh r1, [r5, r1]
	bl sub_02021CAC
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	add r1, #0xe
	ldrh r1, [r5, r1]
	bl sub_02021CAC
	add r0, r5, #0
	mov r1, #0
	bl ov7_0224EC10
	add r5, #0x18
	add r0, r5, #0
	bl sub_0201A9A4
	mov r0, #4
	pop {r3, r4, r5, pc}
_0224E7B6:
	mov r0, #0xa
	pop {r3, r4, r5, pc}
	nop
_0224E7BC: .word 0x021BF67C
_0224E7C0: .word 0x00000245
_0224E7C4: .word 0x00000246
	thumb_func_end ov7_0224E6B8

	thumb_func_start ov7_0224E7C8
ov7_0224E7C8: ; 0x0224E7C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224E7DE
	mov r0, #0xb
	pop {r4, pc}
_0224E7DE:
	ldr r0, _0224E830 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0224E82A
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EB38
	mov r1, #0x7e
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0x10
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	mov r1, #0x7f
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, #0xe
	ldrh r1, [r4, r1]
	bl sub_02021CAC
	add r0, r4, #0
	mov r1, #0
	bl ov7_0224EC10
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A9A4
	mov r0, #4
	pop {r4, pc}
_0224E82A:
	mov r0, #0xb
	pop {r4, pc}
	nop
_0224E830: .word 0x021BF67C
	thumb_func_end ov7_0224E7C8

	thumb_func_start ov7_0224E834
ov7_0224E834: ; 0x0224E834
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0224E88C ; =0x00000245
	add r3, r1, #0
	ldrb r0, [r4, r0]
	add r5, r2, #0
	cmp r0, #0
	bne _0224E852
	add r4, #0x8c
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_0200B70C
	pop {r3, r4, r5, pc}
_0224E852:
	cmp r0, #3
	bne _0224E864
	add r4, #0x8c
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_0200B70C
	pop {r3, r4, r5, pc}
_0224E864:
	cmp r0, #1
	bne _0224E876
	add r4, #0x8c
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r3, #0
	bl sub_0200BC80
	pop {r3, r4, r5, pc}
_0224E876:
	lsl r0, r3, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r4, #0x8c
	add r2, r0, #0
	ldr r0, [r4, #0]
	add r1, r5, #0
	bl sub_0200BE64
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0224E88C: .word 0x00000245
	thumb_func_end ov7_0224E834

	thumb_func_start ov7_0224E890
ov7_0224E890: ; 0x0224E890
	push {r3, lr}
	ldr r2, _0224E8C8 ; =0x00000245
	ldrb r2, [r0, r2]
	cmp r2, #0
	bne _0224E8A6
	add r0, r1, #0
	mov r1, #0
	mov r2, #0xb
	bl sub_0207CFF0
	pop {r3, pc}
_0224E8A6:
	cmp r2, #3
	bne _0224E8B0
	bl ov7_0224E8CC
	pop {r3, pc}
_0224E8B0:
	cmp r2, #1
	bne _0224E8BC
	add r0, r1, #0
	bl sub_0205745C
	pop {r3, pc}
_0224E8BC:
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_020981D0
	pop {r3, pc}
	nop
_0224E8C8: .word 0x00000245
	thumb_func_end ov7_0224E890

	thumb_func_start ov7_0224E8CC
ov7_0224E8CC: ; 0x0224E8CC
	ldr r3, _0224E8EC ; =0x0224F3F8
	mov r2, #0
_0224E8D0:
	ldrh r0, [r3]
	cmp r1, r0
	bne _0224E8DE
	ldr r0, _0224E8F0 ; =0x0224F3FA
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_0224E8DE:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x29
	blo _0224E8D0
	mov r0, #0
	bx lr
	nop
_0224E8EC: .word 0x0224F3F8
_0224E8F0: .word 0x0224F3FA
	thumb_func_end ov7_0224E8CC

	thumb_func_start ov7_0224E8F4
ov7_0224E8F4: ; 0x0224E8F4
	push {r3, lr}
	ldr r1, _0224E91C ; =0x00000245
	ldrb r2, [r0, r1]
	cmp r2, #3
	bne _0224E910
	sub r1, #0x25
	ldr r0, [r0, r1]
	bl sub_0202D750
	mov r1, #0
	add r2, r1, #0
	bl sub_0202D230
	pop {r3, pc}
_0224E910:
	sub r1, #0x39
	ldr r0, [r0, r1]
	bl sub_02025F74
	pop {r3, pc}
	nop
_0224E91C: .word 0x00000245
	thumb_func_end ov7_0224E8F4

	thumb_func_start ov7_0224E920
ov7_0224E920: ; 0x0224E920
	push {r4, lr}
	ldr r2, _0224E94C ; =0x00000245
	add r4, r1, #0
	ldrb r3, [r0, r2]
	cmp r3, #3
	bne _0224E940
	sub r2, #0x25
	ldr r0, [r0, r2]
	bl sub_0202D750
	lsl r1, r4, #0x10
	lsr r1, r1, #0x10
	mov r2, #6
	bl sub_0202D230
	pop {r4, pc}
_0224E940:
	sub r2, #0x39
	ldr r0, [r0, r2]
	bl sub_02025FB8
	pop {r4, pc}
	nop
_0224E94C: .word 0x00000245
	thumb_func_end ov7_0224E920

	thumb_func_start ov7_0224E950
ov7_0224E950: ; 0x0224E950
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, _0224EA20 ; =0x00000241
	add r5, r1, #0
	add r1, r0, #1
	ldrb r2, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r2, r1
	beq _0224E98C
	ldr r4, _0224EA24 ; =0x0224F2E0
	add r3, sp, #0
	ldmia r4!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r5, #0
	str r0, [r3, #0]
	add r1, #0x90
	ldr r1, [r1, #0]
	add r0, r2, #0
	bl sub_02020990
	ldr r0, _0224EA20 ; =0x00000241
	add sp, #0xc
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r0, #0xc
	pop {r4, r5, pc}
_0224E98C:
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x24]
	bl sub_020203C0
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020203B8
	ldr r0, [r4, #0x24]
	bl sub_020203D4
	add r0, r5, #0
	bl ov7_0224EB14
	ldr r0, _0224EA28 ; =0x00000245
	ldrb r0, [r5, r0]
	cmp r0, #3
	bne _0224E9C0
	add sp, #0xc
	mov r0, #0x13
	pop {r4, r5, pc}
_0224E9C0:
	add r1, r5, #0
	ldr r0, [r4, #8]
	add r1, #0x18
	mov r2, #3
	bl sub_0205D8F4
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x18
	bl sub_0205D944
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x18
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	mov r0, #0xd
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0224EA20: .word 0x00000241
_0224EA24: .word 0x0224F2E0
_0224EA28: .word 0x00000245
	thumb_func_end ov7_0224E950

	thumb_func_start ov7_0224EA2C
ov7_0224EA2C: ; 0x0224EA2C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #9
	lsl r0, r0, #6
	ldrb r0, [r4, r0]
	bl sub_0205DA04
	cmp r0, #0
	bne _0224EA42
	mov r0, #0xd
	pop {r4, pc}
_0224EA42:
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r4, #0
	bl ov7_0224D040
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov7_0224EA2C

	thumb_func_start ov7_0224EA54
ov7_0224EA54: ; 0x0224EA54
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0224EACC ; =0x00000245
	add r4, r1, #0
	ldrb r0, [r4, r0]
	cmp r0, #3
	bne _0224EA70
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #0x1f
	bl sub_0200B1EC
	b _0224EA7C
_0224EA70:
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B1EC
_0224EA7C:
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r4, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r1, r4, #0
	ldr r0, [r5, #8]
	add r1, #0x18
	mov r2, #3
	bl sub_0205D8F4
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r0, #0x18
	bl sub_0205D944
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r4, r2]
	sub r2, #0x20
	add r0, r4, #0
	ldr r2, [r4, r2]
	add r0, #0x18
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224EACC: .word 0x00000245
	thumb_func_end ov7_0224EA54

	thumb_func_start ov7_0224EAD0
ov7_0224EAD0: ; 0x0224EAD0
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0224EB0C ; =0x0224F2EC
	add r5, r0, #0
	add r0, #0x94
	mov r2, #4
	mov r3, #0xb
	bl ov5_021D2F14
	add r7, r5, #0
	ldr r4, _0224EB10 ; =0x0224F358
	mov r6, #0
	add r7, #0x94
_0224EAE8:
	add r0, r7, #0
	add r1, r4, #0
	bl ov5_021D3104
	mov r1, #0x7e
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r6, r6, #1
	add r4, #0x28
	add r5, r5, #4
	cmp r6, #4
	blo _0224EAE8
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224EB0C: .word 0x0224F2EC
_0224EB10: .word 0x0224F358
	thumb_func_end ov7_0224EAD0

	thumb_func_start ov7_0224EB14
ov7_0224EB14: ; 0x0224EB14
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r6, #0x7e
	mov r4, #0
	add r5, r7, #0
	lsl r6, r6, #2
_0224EB20:
	ldr r0, [r5, r6]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blo _0224EB20
	add r7, #0x94
	add r0, r7, #0
	bl ov5_021D30A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov7_0224EB14

	thumb_func_start ov7_0224EB38
ov7_0224EB38: ; 0x0224EB38
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _0224EB5E
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xb1
	mov r2, #8
	bl sub_0200D494
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xb1
	mov r2, #0x84
	bl sub_0200D494
	pop {r4, pc}
_0224EB5E:
	mov r0, #0x7e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa2
	mov r2, #0x6c
	bl sub_0200D494
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa2
	mov r2, #0x84
	bl sub_0200D494
	pop {r4, pc}
	thumb_func_end ov7_0224EB38

	thumb_func_start ov7_0224EB7C
ov7_0224EB7C: ; 0x0224EB7C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, _0224EC0C ; =0x00000245
	add r6, r1, #0
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0224EB9E
	cmp r1, #3
	beq _0224EB9E
	sub r0, #0x41
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	add sp, #8
	pop {r4, r5, r6, pc}
_0224EB9E:
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_02009DC8
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #1
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	mov r2, #0x10
	bl sub_02009968
	add r0, r5, #0
	bl sub_0200A4C0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02009DC8
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl sub_0207CE78
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xb
	str r0, [sp, #4]
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	mov r2, #0x10
	bl sub_020099D4
	add r0, r5, #0
	bl sub_0200A6B8
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0224EC0C: .word 0x00000245
	thumb_func_end ov7_0224EB7C

	thumb_func_start ov7_0224EC10
ov7_0224EC10: ; 0x0224EC10
	mov r2, #2
	lsl r2, r2, #8
	ldr r3, _0224EC1C ; =sub_0200D414
	ldr r0, [r0, r2]
	bx r3
	nop
_0224EC1C: .word sub_0200D414
	thumb_func_end ov7_0224EC10

	thumb_func_start ov7_0224EC20
ov7_0224EC20: ; 0x0224EC20
	push {r4, lr}
	mov r0, #0
	add r4, r1, #0
	bl ov5_021D1744
	ldr r0, _0224EC34 ; =0x00000233
	mov r1, #0xf
	strb r1, [r4, r0]
	pop {r4, pc}
	nop
_0224EC34: .word 0x00000233
	thumb_func_end ov7_0224EC20

	thumb_func_start ov7_0224EC38
ov7_0224EC38: ; 0x0224EC38
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0224EC8E
	add r0, r6, #0
	bl sub_02050A60
	add r5, r0, #0
	add r0, r6, #0
	bl sub_02050A64
	add r4, r0, #0
	bl ov7_0224D21C
	ldr r0, [r5, #0xc]
	bl sub_0207D990
	ldr r1, _0224EC90 ; =0x0224F49C
	mov r2, #0xb
	bl sub_0207D824
	add r3, r5, #0
	str r0, [r4, #4]
	add r3, #0x98
	ldr r1, [r5, #0xc]
	ldr r3, [r3, #0]
	mov r2, #2
	bl sub_0207CB2C
	ldr r1, [r4, #4]
	add r0, r5, #0
	bl sub_0203D1E4
	ldr r1, _0224EC94 ; =0x0209AC15
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050924
	ldr r0, _0224EC98 ; =0x00000233
	mov r1, #0x10
	strb r1, [r4, r0]
_0224EC8E:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0224EC90: .word 0x0224F49C
_0224EC94: .word 0x0209AC15
_0224EC98: .word 0x00000233
	thumb_func_end ov7_0224EC38

	thumb_func_start ov7_0224EC9C
ov7_0224EC9C: ; 0x0224EC9C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl sub_0200F2AC
	cmp r0, #0
	bne _0224ECAE
	mov r0, #0x12
	pop {r3, r4, r5, pc}
_0224ECAE:
	add r1, r5, #0
	ldr r0, [r4, #8]
	add r1, #0x18
	mov r2, #3
	bl sub_0205D8F4
	mov r1, #0x85
	lsl r1, r1, #2
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x18
	bl sub_0205D944
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x8d
	add r0, #0x8c
	lsl r1, r1, #2
	ldr r0, [r0, #0]
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r2, #0x8d
	lsl r2, r2, #2
	ldr r1, [r5, r2]
	sub r2, #0x20
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #0x18
	mov r3, #1
	bl sub_0205D994
	mov r1, #9
	lsl r1, r1, #6
	strb r0, [r5, r1]
	mov r0, #0xd
	pop {r3, r4, r5, pc}
	thumb_func_end ov7_0224EC9C

	.rodata


	.global Unk_ov7_0224F2BC
Unk_ov7_0224F2BC: ; 0x0224F2BC
	.incbin "incbin/overlay7_rodata.bin", 0x5B0, 0x5B8 - 0x5B0

	.global Unk_ov7_0224F2C4
Unk_ov7_0224F2C4: ; 0x0224F2C4
	.incbin "incbin/overlay7_rodata.bin", 0x5B8, 0x5C0 - 0x5B8

	.global Unk_ov7_0224F2CC
Unk_ov7_0224F2CC: ; 0x0224F2CC
	.incbin "incbin/overlay7_rodata.bin", 0x5C0, 0x5C8 - 0x5C0

	.global Unk_ov7_0224F2D4
Unk_ov7_0224F2D4: ; 0x0224F2D4
	.incbin "incbin/overlay7_rodata.bin", 0x5C8, 0x5D4 - 0x5C8

	.global Unk_ov7_0224F2E0
Unk_ov7_0224F2E0: ; 0x0224F2E0
	.incbin "incbin/overlay7_rodata.bin", 0x5D4, 0x5E0 - 0x5D4

	.global Unk_ov7_0224F2EC
Unk_ov7_0224F2EC: ; 0x0224F2EC
	.incbin "incbin/overlay7_rodata.bin", 0x5E0, 0x5FC - 0x5E0

	.global Unk_ov7_0224F308
Unk_ov7_0224F308: ; 0x0224F308
	.incbin "incbin/overlay7_rodata.bin", 0x5FC, 0x61C - 0x5FC

	.global Unk_ov7_0224F328
Unk_ov7_0224F328: ; 0x0224F328
	.incbin "incbin/overlay7_rodata.bin", 0x61C, 0x64C - 0x61C

	.global Unk_ov7_0224F358
Unk_ov7_0224F358: ; 0x0224F358
	.incbin "incbin/overlay7_rodata.bin", 0x64C, 0x6EC - 0x64C

	.global Unk_ov7_0224F3F8
Unk_ov7_0224F3F8: ; 0x0224F3F8
	.incbin "incbin/overlay7_rodata.bin", 0x6EC, 0x790 - 0x6EC

	.global Unk_ov7_0224F49C
Unk_ov7_0224F49C: ; 0x0224F49C
	.incbin "incbin/overlay7_rodata.bin", 0x790, 0x9


	.data


	.global Unk_ov7_0224F510
Unk_ov7_0224F510: ; 0x0224F510
	.incbin "incbin/overlay7_data.bin", 0x50, 0x64 - 0x50

	.global Unk_ov7_0224F524
Unk_ov7_0224F524: ; 0x0224F524
	.incbin "incbin/overlay7_data.bin", 0x64, 0x7C - 0x64

	.global Unk_ov7_0224F53C
Unk_ov7_0224F53C: ; 0x0224F53C
	.incbin "incbin/overlay7_data.bin", 0x7C, 0x94 - 0x7C

	.global Unk_ov7_0224F554
Unk_ov7_0224F554: ; 0x0224F554
	.incbin "incbin/overlay7_data.bin", 0x94, 0xAC - 0x94

	.global Unk_ov7_0224F56C
Unk_ov7_0224F56C: ; 0x0224F56C
	.incbin "incbin/overlay7_data.bin", 0xAC, 0x16

