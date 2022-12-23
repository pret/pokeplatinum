	.include "macros/function.inc"
	.include "overlay094/ov94_0223DC04.inc"

	

	.text


	thumb_func_start ov94_0223DC04
ov94_0223DC04: ; 0x0223DC04
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223DFDC
	ldr r0, [r4, #4]
	bl ov94_0223DD1C
	add r0, r4, #0
	bl ov94_0223DE04
	add r0, r4, #0
	bl ov94_0223DED8
	add r0, r4, #0
	bl ov94_0223DE7C
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	add r5, r1, #0
	mul r5, r0
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, r0, r5
	bl sub_02076B10
	str r0, [sp]
	mov r0, #0xd
	lsl r0, r0, #6
	add r0, r4, r0
	ldr r2, _0223DCD4 ; =0x00000B94
	add r0, r0, r5
	str r0, [sp, #4]
	add r1, r2, #4
	ldr r0, [r4, r2]
	sub r2, r2, #4
	ldr r3, _0223DCD8 ; =0x00000F6C
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r3, r4, r3
	bl ov94_0223D910
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	mov r2, #0x36
	add r3, r1, #0
	add r0, r0, #4
	mov r5, #0x95
	lsl r2, r2, #4
	lsl r5, r5, #2
	ldr r1, _0223DCDC ; =0x0000100C
	mul r3, r0
	add r0, r4, r1
	str r0, [sp]
	ldr r0, _0223DCD4 ; =0x00000B94
	sub r1, #0x50
	add r2, r4, r2
	ldr r0, [r4, r0]
	add r5, r4, r5
	add r2, r2, r3
	add r1, r4, r1
	add r3, r5, r3
	bl ov94_0223DA78
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r4, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r0, r0, #4
	mul r0, r1
	add r0, r2, r0
	bl ov94_0223DB2C
	ldr r0, _0223DCD4 ; =0x00000B94
	ldr r1, _0223DCE0 ; =0x00000FDC
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_0223E358
	add r0, r4, #0
	bl ov94_0223E240
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	mov r3, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #2
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223DCD4: .word 0x00000B94
_0223DCD8: .word 0x00000F6C
_0223DCDC: .word 0x0000100C
_0223DCE0: .word 0x00000FDC
	thumb_func_end ov94_0223DC04

	thumb_func_start ov94_0223DCE4
ov94_0223DCE4: ; 0x0223DCE4
	push {r3, lr}
	ldr r1, [r0, #0x2c]
	lsl r2, r1, #2
	ldr r1, _0223DCF4 ; =0x0224682C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_0223DCF4: .word 0x0224682C
	thumb_func_end ov94_0223DCE4

	thumb_func_start ov94_0223DCF8
ov94_0223DCF8: ; 0x0223DCF8
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223DEC8
	add r0, r4, #0
	bl ov94_0223E074
	add r0, r4, #0
	bl ov94_0223DFA4
	ldr r0, [r4, #4]
	bl ov94_0223DDE0
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov94_0223DCF8

	thumb_func_start ov94_0223DD1C
ov94_0223DD1C: ; 0x0223DD1C
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _0223DDD0 ; =0x02245CA8
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _0223DDD4 ; =0x02245C8C
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _0223DDD8 ; =0x02245C70
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #4
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _0223DDDC ; =0x02245C54
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x3e
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x3e
	bl sub_02019690
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_0223DDD0: .word 0x02245CA8
_0223DDD4: .word 0x02245C8C
_0223DDD8: .word 0x02245C70
_0223DDDC: .word 0x02245C54
	thumb_func_end ov94_0223DD1C

	thumb_func_start ov94_0223DDE0
ov94_0223DDE0: ; 0x0223DDE0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_0223DDE0

	thumb_func_start ov94_0223DE04
ov94_0223DE04: ; 0x0223DE04
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x1a
	add r5, r0, #0
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	ldr r4, [r5, #4]
	bl sub_02002E98
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0x11
	add r2, r4, #0
	bl sub_02006E3C
	mov r0, #0x60
	str r0, [sp]
	mov r0, #0x3e
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x68
	mov r1, #7
	add r3, r2, #0
	bl sub_02006E84
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov94_0223DE04

	thumb_func_start ov94_0223DE7C
ov94_0223DE7C: ; 0x0223DE7C
	push {r4, lr}
	sub sp, #0x30
	ldr r2, _0223DEC4 ; =0x00000D54
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov94_0223C300
	mov r0, #0xd
	lsl r0, r0, #0x10
	str r0, [sp, #8]
	mov r0, #0x3a
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0xed
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0xed
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl sub_02021D6C
	bl sub_02039734
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
_0223DEC4: .word 0x00000D54
	thumb_func_end ov94_0223DE7C

	thumb_func_start ov94_0223DEC8
ov94_0223DEC8: ; 0x0223DEC8
	mov r1, #0xed
	lsl r1, r1, #4
	ldr r3, _0223DED4 ; =sub_02021BD4
	ldr r0, [r0, r1]
	bx r3
	nop
_0223DED4: .word sub_02021BD4
	thumb_func_end ov94_0223DEC8

	thumb_func_start ov94_0223DED8
ov94_0223DED8: ; 0x0223DED8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223DF94 ; =0x00000EFC
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	bl sub_0201A7E8
	ldr r1, _0223DF94 ; =0x00000EFC
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0xf
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, _0223DF98 ; =0x00000F3C
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #4]
	add r1, r1, r2
	mov r2, #0
	mov r3, #0x15
	bl sub_0201A7E8
	ldr r1, _0223DF9C ; =0x00000F6C
	ldr r0, [sp, #0x14]
	ldr r4, _0223DFA0 ; =0x02245CC4
	mov r6, #0x86
	mov r7, #0
	add r5, r0, r1
_0223DF40:
	ldr r0, [r4, #4]
	add r1, r5, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #8]
	mov r2, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r4, #0]
	ldr r0, [r0, #4]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r1, [r4, #8]
	ldr r0, [r4, #0xc]
	add r7, r7, #1
	mul r0, r1
	add r6, r6, r0
	add r4, #0x10
	add r5, #0x10
	cmp r7, #0xc
	blo _0223DF40
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DF94: .word 0x00000EFC
_0223DF98: .word 0x00000F3C
_0223DF9C: .word 0x00000F6C
_0223DFA0: .word 0x02245CC4
	thumb_func_end ov94_0223DED8

	thumb_func_start ov94_0223DFA4
ov94_0223DFA4: ; 0x0223DFA4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0223DFD0 ; =0x00000EFC
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223DFD4 ; =0x00000F3C
	add r0, r5, r0
	bl sub_0201A8FC
	ldr r0, _0223DFD8 ; =0x00000F6C
	mov r4, #0
	add r5, r5, r0
_0223DFBE:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xc
	blo _0223DFBE
	pop {r3, r4, r5, pc}
	nop
_0223DFD0: .word 0x00000EFC
_0223DFD4: .word 0x00000F3C
_0223DFD8: .word 0x00000F6C
	thumb_func_end ov94_0223DFA4

	thumb_func_start ov94_0223DFDC
ov94_0223DFDC: ; 0x0223DFDC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	add r2, r5, r0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r0, r0, #4
	mul r0, r1
	add r4, r2, r0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r5, r1]
	sub r1, #0x20
	ldr r0, [r5, r1]
	bl sub_0200C41C
	ldr r0, _0223E064 ; =0x0000011E
	ldrb r2, [r4, r0]
	cmp r2, #0
	beq _0223E01C
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #8
	bl sub_0200BDD0
_0223E01C:
	ldr r2, _0223E068 ; =0x0000011F
	ldrb r3, [r4, r2]
	cmp r3, #0
	beq _0223E034
	mov r0, #0xb9
	sub r2, r2, #1
	lsl r0, r0, #4
	ldrb r2, [r4, r2]
	ldr r0, [r5, r0]
	mov r1, #9
	bl sub_0200BE08
_0223E034:
	mov r1, #0xb9
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x4f
	mov r3, #0x3e
	bl sub_0200B29C
	ldr r1, _0223E06C ; =0x00000BB8
	mov r2, #0x50
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x28
	sub r1, #0x24
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	mov r3, #0x3e
	bl sub_0200B29C
	ldr r1, _0223E070 ; =0x00000BBC
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	nop
_0223E064: .word 0x0000011E
_0223E068: .word 0x0000011F
_0223E06C: .word 0x00000BB8
_0223E070: .word 0x00000BBC
	thumb_func_end ov94_0223DFDC

	thumb_func_start ov94_0223E074
ov94_0223E074: ; 0x0223E074
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E094 ; =0x00000BB8
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223E098 ; =0x00000BBC
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_0223E094: .word 0x00000BB8
_0223E098: .word 0x00000BBC
	thumb_func_end ov94_0223E074

	thumb_func_start ov94_0223E09C
ov94_0223E09C: ; 0x0223E09C
	mov r1, #1
	str r1, [r0, #0x2c]
	mov r0, #3
	bx lr
	thumb_func_end ov94_0223E09C

	thumb_func_start ov94_0223E0A4
ov94_0223E0A4: ; 0x0223E0A4
	push {r3, r4, r5, lr}
	ldr r1, _0223E174 ; =0x021BF67C
	mov r2, #1
	ldr r1, [r1, #0x48]
	add r4, r0, #0
	add r3, r1, #0
	tst r3, r2
	beq _0223E0D2
	ldr r1, _0223E178 ; =0x00000F0F
	mov r3, #0
	str r1, [sp]
	mov r1, #0x10
	bl ov94_0223E300
	add r0, r4, #0
	mov r1, #3
	mov r2, #4
	bl ov94_0223C3F4
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
	b _0223E170
_0223E0D2:
	mov r3, #2
	add r5, r1, #0
	tst r5, r3
	beq _0223E0EC
	mov r1, #4
	mov r2, #0
	str r3, [r4, #0x2c]
	bl ov94_0223C4C0
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
	b _0223E170
_0223E0EC:
	mov r0, #0x10
	tst r0, r1
	beq _0223E108
	ldr r0, _0223E180 ; =0x00000112
	ldrh r1, [r4, r0]
	cmp r1, #0
	bne _0223E170
	strh r2, [r4, r0]
	mov r0, #6
	str r0, [r4, #0x2c]
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
	b _0223E170
_0223E108:
	mov r2, #0x20
	add r0, r1, #0
	tst r0, r2
	beq _0223E12C
	add r0, r2, #0
	add r0, #0xf2
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0223E170
	mov r0, #0
	add r2, #0xf2
	strh r0, [r4, r2]
	mov r0, #6
	str r0, [r4, #0x2c]
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
	b _0223E170
_0223E12C:
	add r2, #0xfc
	ldr r0, [r4, r2]
	bl ov94_02244214
	add r5, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r5, r0
	beq _0223E170
	cmp r5, #0
	blt _0223E170
	add r0, r5, #1
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0223E184 ; =0x00000ED4
	ldr r0, [r1, r0]
	lsl r1, r5, #2
	add r1, #0x10
	bl sub_02021D6C
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #0x12
	lsl r0, r0, #4
	str r5, [r4, r0]
	ldr r0, _0223E17C ; =0x000005DC
	bl sub_02005748
_0223E170:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0223E174: .word 0x021BF67C
_0223E178: .word 0x00000F0F
_0223E17C: .word 0x000005DC
_0223E180: .word 0x00000112
_0223E184: .word 0x00000ED4
	thumb_func_end ov94_0223E0A4

	thumb_func_start ov94_0223E188
ov94_0223E188: ; 0x0223E188
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #6
	mov r1, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223E188

	thumb_func_start ov94_0223E1B0
ov94_0223E1B0: ; 0x0223E1B0
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0x1f
	ldr r0, [r4, #4]
	mov r1, #0xf
	lsl r2, r2, #4
	bl ov94_0223C3C0
	ldr r1, _0223E1CC ; =0x00001070
	str r0, [r4, r1]
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223E1CC: .word 0x00001070
	thumb_func_end ov94_0223E1B0

	thumb_func_start ov94_0223E1D0
ov94_0223E1D0: ; 0x0223E1D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E234 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223E22E
	sub r1, r1, #1
	cmp r0, r1
	bne _0223E20E
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov94_0223C4C0
	ldr r0, _0223E238 ; =0x00000B94
	ldr r1, _0223E23C ; =0x00000FDC
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_0223E358
	add r0, r4, #0
	bl ov94_0223E240
	b _0223E22E
_0223E20E:
	mov r0, #2
	str r0, [r4, #0x2c]
	add r0, r4, #0
	mov r1, #5
	mov r2, #6
	bl ov94_0223C4C0
	ldr r0, _0223E238 ; =0x00000B94
	ldr r1, _0223E23C ; =0x00000FDC
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov94_0223E358
	add r0, r4, #0
	bl ov94_0223E240
_0223E22E:
	mov r0, #3
	pop {r4, pc}
	nop
_0223E234: .word 0x00001070
_0223E238: .word 0x00000B94
_0223E23C: .word 0x00000FDC
	thumb_func_end ov94_0223E1D0

	thumb_func_start ov94_0223E240
ov94_0223E240: ; 0x0223E240
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0223E2C0 ; =0x00000112
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0223E290
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x68
	mov r1, #0x1b
	bl sub_02006E60
	ldr r2, _0223E2C4 ; =0x00000B94
	mov r5, #0x12
	ldr r0, _0223E2C8 ; =0x00000FFC
	mov r3, #0xd1
	lsl r5, r5, #4
	ldr r1, [r4, r2]
	add r2, r2, #4
	lsl r3, r3, #2
	ldr r6, [r4, r5]
	add r0, r4, r0
	ldr r2, [r4, r2]
	add r3, r4, r3
	add r4, r5, #4
	mul r4, r6
	add r3, r3, r4
	bl ov94_0223E3B0
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0223E290:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x68
	mov r1, #0x1c
	bl sub_02006E60
	ldr r2, _0223E2CC ; =0x00000BB8
	ldr r0, _0223E2C8 ; =0x00000FFC
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r2, [r4, r2]
	add r0, r4, r0
	bl ov94_0223E424
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0223E2C0: .word 0x00000112
_0223E2C4: .word 0x00000B94
_0223E2C8: .word 0x00000FFC
_0223E2CC: .word 0x00000BB8
	thumb_func_end ov94_0223E240

	thumb_func_start ov94_0223E2D0
ov94_0223E2D0: ; 0x0223E2D0
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223E240
	mov r0, #1
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_0223E2D0

	thumb_func_start ov94_0223E2E0
ov94_0223E2E0: ; 0x0223E2E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223E2FC ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223E2F8
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223E2F8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223E2FC: .word 0x00000BE4
	thumb_func_end ov94_0223E2E0

	thumb_func_start ov94_0223E300
ov94_0223E300: ; 0x0223E300
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0223E34C ; =0x00000B94
	add r5, r0, #0
	ldr r0, [r5, r2]
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r0, _0223E350 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223E350 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223E350 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223E354 ; =0x00000BE4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223E34C: .word 0x00000B94
_0223E350: .word 0x00000EFC
_0223E354: .word 0x00000BE4
	thumb_func_end ov94_0223E300

	thumb_func_start ov94_0223E358
ov94_0223E358: ; 0x0223E358
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	mov r1, #0x4a
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x4e
	bl sub_0200B1EC
	add r6, r0, #0
	mov r2, #0
	ldr r0, _0223E3AC ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r4, #0
	mov r3, #2
	bl ov94_02245900
	mov r0, #1
	str r0, [sp]
	ldr r0, _0223E3AC ; =0x000F0200
	add r5, #0x10
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	mov r3, #2
	bl ov94_02245900
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223E3AC: .word 0x000F0200
	thumb_func_end ov94_0223E358

	thumb_func_start ov94_0223E3B0
ov94_0223E3B0: ; 0x0223E3B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r1, #0
	mov r1, #0
	add r5, r0, #0
	add r7, r2, #0
	add r4, r3, #0
	bl sub_0201ADA4
	mov r0, #3
	str r0, [sp]
	ldr r0, _0223E420 ; =0x000F0200
	mov r3, #0
	str r0, [sp, #4]
	ldrsh r2, [r4, r3]
	add r0, r5, #0
	add r1, r7, #0
	bl ov94_02242158
	mov r0, #3
	str r0, [sp]
	mov r0, #0x46
	str r0, [sp, #4]
	ldr r0, _0223E420 ; =0x000F0200
	mov r2, #2
	str r0, [sp, #8]
	ldrsb r2, [r4, r2]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl ov94_02242204
	mov r0, #3
	mov r1, #4
	ldrsb r0, [r4, r0]
	ldrsb r1, [r4, r1]
	mov r2, #0
	bl ov94_02242970
	add r2, r0, #0
	mov r0, #0x13
	str r0, [sp]
	ldr r0, _0223E420 ; =0x000F0200
	mov r3, #0
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #8
	add r5, #0x10
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r1, r6, #0
	bl ov94_0224226C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223E420: .word 0x000F0200
	thumb_func_end ov94_0223E3B0

	thumb_func_start ov94_0223E424
ov94_0223E424: ; 0x0223E424
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	mov r1, #0
	add r6, r0, #0
	add r4, r2, #0
	bl sub_0201ADA4
	cmp r5, #0
	beq _0223E44A
	mov r2, #0
	ldr r0, _0223E468 ; =0x000F0200
	str r2, [sp]
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #3
	bl ov94_02245900
_0223E44A:
	cmp r4, #0
	beq _0223E462
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223E468 ; =0x000F0200
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, r6, #0
	mov r2, #8
	mov r3, #0x13
	bl ov94_02245900
_0223E462:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223E468: .word 0x000F0200
	thumb_func_end ov94_0223E424

	.rodata


	.global Unk_ov94_02245C54
Unk_ov94_02245C54: ; 0x02245C54
	.incbin "incbin/overlay94_rodata.bin", 0x25C, 0x278 - 0x25C

	.global Unk_ov94_02245C70
Unk_ov94_02245C70: ; 0x02245C70
	.incbin "incbin/overlay94_rodata.bin", 0x278, 0x294 - 0x278

	.global Unk_ov94_02245C8C
Unk_ov94_02245C8C: ; 0x02245C8C
	.incbin "incbin/overlay94_rodata.bin", 0x294, 0x2B0 - 0x294

	.global Unk_ov94_02245CA8
Unk_ov94_02245CA8: ; 0x02245CA8
	.incbin "incbin/overlay94_rodata.bin", 0x2B0, 0x2CC - 0x2B0

	.global Unk_ov94_02245CC4
Unk_ov94_02245CC4: ; 0x02245CC4
	.incbin "incbin/overlay94_rodata.bin", 0x2CC, 0xC0


	.data


	.global Unk_ov94_0224682C
Unk_ov94_0224682C: ; 0x0224682C
	.incbin "incbin/overlay94_data.bin", 0x42C, 0x1C

