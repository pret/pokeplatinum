	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov97_0222AE60
ov97_0222AE60: ; 0x0222AE60
	mov r0, #0
	bx lr
	thumb_func_end ov97_0222AE60

	thumb_func_start ov97_0222AE64
ov97_0222AE64: ; 0x0222AE64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	add r5, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222AEDC
	mov r1, #0x55
	mov r0, #0
	add r3, r5, #0
	lsl r1, r1, #2
_0222AE80:
	ldr r2, [r3, r1]
	cmp r2, #1
	bne _0222AED2
	lsl r1, r0, #2
	add r3, r5, r1
	mov r1, #0x55
	add r6, r0, #0
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r3, r1]
	mov r3, #0x1c
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r1, r1, #4
	ldr r7, _0222AF10 ; =0x0223DF54
	mul r6, r3
	add r4, r7, r6
	ldr r3, [r4, #0x10]
	add r0, sp, #8
	add r1, r5, r1
	bl ov97_02237808
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, sp, #8
	mov r3, #0x13
	bl ov97_02237858
	ldr r0, [r4, #0x14]
	add r1, sp, #8
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r2, [r7, r6]
	ldr r3, [r4, #4]
	bl ov97_0223795C
	add sp, #0x5c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0222AED2:
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, #1
	blt _0222AE80
	b _0222AF08
_0222AEDC:
	ldr r0, _0222AF14 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222AF02
	ldr r0, _0222AF18 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x56
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A8FC
_0222AF02:
	add sp, #0x5c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0222AF08:
	mov r0, #0
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0222AF10: .word 0x0223DF54
_0222AF14: .word 0x021BF67C
_0222AF18: .word 0x000005DC
	thumb_func_end ov97_0222AE64

	thumb_func_start ov97_0222AF1C
ov97_0222AF1C: ; 0x0222AF1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0
	bl ov97_02235D2C
	mov r4, #0
	str r4, [r5, #0x24]
	cmp r0, #0
	bne _0222AF86
	bl ov97_02235DB0
	cmp r0, #4
	bhi _0222AF5E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AF42: ; jump table
	.short _0222AF4C - _0222AF42 - 2 ; case 0
	.short _0222AF50 - _0222AF42 - 2 ; case 1
	.short _0222AF54 - _0222AF42 - 2 ; case 2
	.short _0222AF58 - _0222AF42 - 2 ; case 3
	.short _0222AF5C - _0222AF42 - 2 ; case 4
_0222AF4C:
	mov r4, #2
	b _0222AF5E
_0222AF50:
	mov r4, #1
	b _0222AF5E
_0222AF54:
	mov r4, #5
	b _0222AF5E
_0222AF58:
	mov r4, #4
	b _0222AF5E
_0222AF5C:
	mov r4, #3
_0222AF5E:
	add r0, r4, #0
	bl sub_02017B70
	ldr r0, [r5, #8]
	bl sub_02027474
	cmp r0, #0
	beq _0222AF86
	bl ov97_02235DBC
	ldr r1, _0222AF88 ; =0x020E4C44
	ldrb r1, [r1]
	cmp r1, r0
	bne _0222AF86
	bl ov97_02235DB0
	add r0, r0, #1
	str r0, [r5, #0x24]
	bl ov97_02238440
_0222AF86:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222AF88: .word 0x020E4C44
	thumb_func_end ov97_0222AF1C

	thumb_func_start ov97_0222AF8C
ov97_0222AF8C: ; 0x0222AF8C
	push {r4, lr}
	mov r1, #0x49
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r0, #0xa
	cmp r0, #4
	bhi _0222B07A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222AFA8: ; jump table
	.short _0222AFB2 - _0222AFA8 - 2 ; case 0
	.short _0222AFB8 - _0222AFA8 - 2 ; case 1
	.short _0222B07A - _0222AFA8 - 2 ; case 2
	.short _0222AFEA - _0222AFA8 - 2 ; case 3
	.short _0222B06E - _0222AFA8 - 2 ; case 4
_0222AFB2:
	mov r0, #0xb
	str r0, [r4, r1]
	pop {r4, pc}
_0222AFB8:
	ldr r0, [r4, #4]
	bl sub_02037D48
	mov r1, #0x78
	add r0, r1, #0
	add r0, #0xb0
	str r1, [r4, r0]
	mov r0, #0xd
	add r1, #0xac
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x14]
	bl sub_0202DEC4
	cmp r0, #1
	bne _0222B07A
	ldr r1, [r4, #0x40]
	mov r0, #1
	orr r1, r0
	str r1, [r4, #0x40]
	ldr r1, [r4, #0x44]
	orr r0, r1
	str r0, [r4, #0x44]
	pop {r4, pc}
_0222AFEA:
	add r1, #0xc
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0222B07A
	bl sub_02037DA0
	ldr r1, [r4, #0x40]
	bic r0, r1
	beq _0222B050
	mov r2, #0x4b
	lsl r2, r2, #2
	ldr r3, [r4, r2]
	cmp r3, #0xf
	bne _0222B050
	add r2, r2, #4
	ldr r2, [r4, r2]
	cmp r2, #0
	bne _0222B050
	cmp r1, r0
	beq _0222B050
	mov r2, #1
	add r1, r0, #0
	str r2, [r4, #0x48]
	tst r1, r2
	beq _0222B020
	str r2, [r4, #0x34]
	add r0, r2, #0
_0222B020:
	mov r1, #2
	add r2, r0, #0
	tst r2, r1
	beq _0222B02E
	mov r0, #1
	str r0, [r4, #0x2c]
	add r0, r1, #0
_0222B02E:
	mov r1, #4
	add r2, r0, #0
	tst r2, r1
	beq _0222B03C
	mov r0, #1
	str r0, [r4, #0x30]
	add r0, r1, #0
_0222B03C:
	mov r1, #3
	tst r1, r0
	beq _0222B04A
	mov r1, #0x15
	mov r2, #1
	lsl r1, r1, #4
	str r2, [r4, r1]
_0222B04A:
	ldr r1, [r4, #0x40]
	orr r0, r1
	str r0, [r4, #0x40]
_0222B050:
	mov r0, #0x4a
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222B07A
	bl sub_02037D84
	mov r0, #0x49
	mov r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0222B06E:
	bl sub_02037D84
	mov r0, #0x49
	mov r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222B07A:
	pop {r4, pc}
	thumb_func_end ov97_0222AF8C

	thumb_func_start ov97_0222B07C
ov97_0222B07C: ; 0x0222B07C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	mov r1, #0x4b
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	sub r0, #0xf
	cmp r0, #4
	bls _0222B090
	b _0222B230
_0222B090:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222B09C: ; jump table
	.short _0222B0A6 - _0222B09C - 2 ; case 0
	.short _0222B0CE - _0222B09C - 2 ; case 1
	.short _0222B0FA - _0222B09C - 2 ; case 2
	.short _0222B1CE - _0222B09C - 2 ; case 3
	.short _0222B210 - _0222B09C - 2 ; case 4
_0222B0A6:
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222B0B4
	add sp, #0x60
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B0B4:
	add r0, r1, #4
	ldr r0, [r4, r0]
	sub r2, r0, #1
	add r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222B0C8
	mov r0, #0x10
	str r0, [r4, r1]
_0222B0C8:
	add sp, #0x60
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B0CE:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x51
	str r0, [sp, #4]
	mov r1, #1
	ldr r0, [r4, #0]
	add r2, r1, #0
	mov r3, #2
	bl sub_0200DAA4
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_02019EBC
	ldr r1, _0222B238 ; =0x00006B5A
	ldr r0, _0222B23C ; =0x05000042
	strh r1, [r0]
	mov r0, #0x4b
	mov r1, #0x11
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0222B230
_0222B0FA:
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	add r1, #0x10
	str r0, [sp, #4]
	add r0, sp, #0xc
	add r1, r4, r1
	mov r2, #0
	mov r3, #0xe
	bl ov97_02237808
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x40]
	mvn r0, r0
	and r0, r1
	mov r1, #1
	add r2, r0, #0
	tst r2, r1
	beq _0222B12E
	ldr r2, [r4, #0x38]
	tst r1, r2
	beq _0222B12A
	ldr r5, _0222B240 ; =0x0223DFB0
	b _0222B14E
_0222B12A:
	ldr r5, _0222B244 ; =0x0223DFC4
	b _0222B14E
_0222B12E:
	mov r1, #2
	add r2, r0, #0
	tst r2, r1
	beq _0222B144
	ldr r2, [r4, #0x38]
	tst r1, r2
	beq _0222B140
	ldr r5, _0222B248 ; =0x0223DFD8
	b _0222B14E
_0222B140:
	ldr r5, _0222B24C ; =0x0223DFEC
	b _0222B14E
_0222B144:
	mov r1, #0x80
	tst r1, r0
	beq _0222B14E
	ldr r5, _0222B250 ; =0x0223E000
	mov r0, #0
_0222B14E:
	ldr r1, [r4, #0x44]
	mov r3, #0x13
	orr r0, r1
	str r0, [r4, #0x44]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	add r0, sp, #0xc
	bl ov97_02237858
	mov r0, #1
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x10]
	add r1, sp, #0xc
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, [r5, #0]
	ldr r3, [r5, #4]
	bl ov97_0223795C
	ldr r0, [sp, #0x1c]
	bl sub_0201C29C
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_0201C2A0
	add r7, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_0201C294
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	add r2, r6, #0
	add r3, r7, #0
	bl sub_02019E2C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x4d
	mov r1, #0x1e
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0x12
	sub r0, #8
	str r1, [r4, r0]
	b _0222B230
_0222B1CE:
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222B1E6
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r1, #8
	sub r0, r0, #1
	str r0, [r4, r1]
	b _0222B230
_0222B1E6:
	ldr r0, _0222B254 ; =0x021BF67C
	ldr r2, [r0, #0x48]
	mov r0, #3
	tst r0, r2
	beq _0222B230
	add r1, #0x10
	add r0, r4, r1
	bl sub_0201A8FC
	mov r0, #0x4b
	mov r1, #0x13
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _0222B254 ; =0x021BF67C
	add r0, #0xc
	ldr r1, [r1, #0x48]
	str r1, [r4, r0]
	ldr r0, _0222B258 ; =0x000005DC
	bl sub_02005748
	b _0222B230
_0222B210:
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x4b
	mov r1, #0xf
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222B230:
	mov r0, #1
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B238: .word 0x00006B5A
_0222B23C: .word 0x05000042
_0222B240: .word 0x0223DFB0
_0222B244: .word 0x0223DFC4
_0222B248: .word 0x0223DFD8
_0222B24C: .word 0x0223DFEC
_0222B250: .word 0x0223E000
_0222B254: .word 0x021BF67C
_0222B258: .word 0x000005DC
	thumb_func_end ov97_0222B07C

	thumb_func_start ov97_0222B25C
ov97_0222B25C: ; 0x0222B25C
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r1
	beq _0222B2E4
	sub r1, r1, r0
	asr r0, r1, #1
	lsr r0, r0, #0x1e
	add r0, r1, r0
	asr r0, r0, #2
	asr r2, r0, #0x1f
	add r1, r0, #0
	eor r1, r2
	sub r2, r1, r2
	mov r1, #3
	lsl r1, r1, #0xe
	cmp r2, r1
	ble _0222B292
	cmp r0, #0
	ble _0222B290
	add r0, r1, #0
	b _0222B292
_0222B290:
	ldr r0, _0222B2E8 ; =0xFFFF4000
_0222B292:
	mov r1, #0x47
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r0, [r4, r0]
	ldr r2, [r4, r1]
	sub r2, r0, r2
	asr r3, r2, #0x1f
	eor r2, r3
	sub r3, r2, r3
	add r2, r1, #0
	add r2, #0xe4
	cmp r3, r2
	bge _0222B2B4
	str r0, [r4, r1]
_0222B2B4:
	mov r3, #0x47
	lsl r3, r3, #2
	ldr r5, [r4, r3]
	ldr r0, [r4, #0]
	asr r3, r5, #0xb
	lsr r3, r3, #0x14
	add r3, r5, r3
	mov r1, #0
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_0201C63C
	mov r3, #0x47
	lsl r3, r3, #2
	ldr r0, [r4, #0]
	ldr r4, [r4, r3]
	mov r1, #2
	asr r3, r4, #0xb
	lsr r3, r3, #0x14
	add r3, r4, r3
	mov r2, #3
	asr r3, r3, #0xc
	bl sub_0201C63C
_0222B2E4:
	pop {r3, r4, r5, pc}
	nop
_0222B2E8: .word 0xFFFF4000
	thumb_func_end ov97_0222B25C

	thumb_func_start ov97_0222B2EC
ov97_0222B2EC: ; 0x0222B2EC
	push {r3, r4, r5, lr}
	sub sp, #0x40
	ldr r5, _0222B3E8 ; =0x0223D694
	add r4, r0, #0
	add r3, sp, #0x18
	mov r2, #5
_0222B2F8:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222B2F8
	ldr r3, _0222B3EC ; =0x0223D684
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x18
	bl sub_0201FE94
	add r0, sp, #8
	bl sub_02018368
	mov r1, #0
	str r1, [sp]
	mov r3, #0xf
	ldr r0, [r4, #0]
	mov r2, #2
	lsl r3, r3, #0xc
	bl ov97_022376FC
	ldr r1, _0222B3F0 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	mov r3, #0x51
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	mov r0, #2
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r1, #1
	mov r3, #0x36
	ldr r0, [r4, #0]
	add r2, r1, #0
	lsl r3, r3, #0xa
	bl ov97_022376FC
	ldr r1, _0222B3F4 ; =0x0400000A
	mov r0, #3
	ldrh r2, [r1]
	mov r3, #0x51
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	mov r0, #0
	str r0, [sp]
	mov r1, #2
	mov r3, #0xe
	ldr r0, [r4, #0]
	add r2, r1, #0
	lsl r3, r3, #0xc
	bl ov97_022376FC
	ldr r1, _0222B3F8 ; =0x0400000C
	mov r0, #3
	ldrh r2, [r1]
	mov r3, #0x51
	bic r2, r0
	strh r2, [r1]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	bl sub_0201D710
	mov r0, #0
	mov r1, #0x20
	mov r2, #0x51
	bl sub_02002E7C
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x51
	bl sub_02002E7C
	mov r2, #5
	mov r1, #0
	lsl r2, r2, #0x18
	ldr r0, _0222B3FC ; =0x00006B5A
	strh r1, [r2]
	strh r0, [r2, #0x3e]
	str r1, [sp]
	mov r0, #0x51
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r2, #1
	mov r3, #2
	bl sub_0200DAA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x51
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0xa
	mov r3, #3
	bl sub_0200DAA4
	ldr r1, _0222B3FC ; =0x00006B5A
	ldr r0, _0222B400 ; =0x05000042
	strh r1, [r0]
	add sp, #0x40
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222B3E8: .word 0x0223D694
_0222B3EC: .word 0x0223D684
_0222B3F0: .word 0x04000008
_0222B3F4: .word 0x0400000A
_0222B3F8: .word 0x0400000C
_0222B3FC: .word 0x00006B5A
_0222B400: .word 0x05000042
	thumb_func_end ov97_0222B2EC

	thumb_func_start ov97_0222B404
ov97_0222B404: ; 0x0222B404
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #0x29
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x2b
	mov r2, #0x28
	mov r3, #0x2a
	bl ov97_02237B0C
	mov r0, #0
	mov r1, #0x5a
	str r0, [sp]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #8
	bl ov97_02237D14
	mov r1, #0x5a
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #1
	mov r1, #0x5b
	str r0, [sp]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0
	mov r2, #0x80
	mov r3, #0xb8
	bl ov97_02237D14
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CAC
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov97_0222B404

	thumb_func_start ov97_0222B46C
ov97_0222B46C: ; 0x0222B46C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x51
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x2d
	mov r2, #0
	mov r3, #0x80
	bl sub_02006E84
	mov r0, #0xe
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x51
	str r0, [sp, #0xc]
	ldr r2, [r4, #0]
	mov r0, #0x74
	mov r1, #0x2c
	mov r3, #2
	bl sub_02006E3C
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222B46C

	thumb_func_start ov97_0222B4AC
ov97_0222B4AC: ; 0x0222B4AC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	mov r1, #2
	add r6, r2, #0
	add r7, r3, #0
	bl sub_02019FE4
	ldr r1, _0222B4F8 ; =0x00004380
	cmp r7, #2
	bne _0222B4C6
	add r1, r1, #2
_0222B4C6:
	lsl r2, r6, #5
	add r3, r4, r2
	lsl r2, r3, #1
	add r3, r3, #1
	strh r1, [r0, r2]
	add r2, r1, #1
	lsl r3, r3, #1
	strh r2, [r0, r3]
	add r3, r1, #0
	add r2, r6, #1
	lsl r2, r2, #5
	add r4, r4, r2
	add r3, #8
	lsl r2, r4, #1
	strh r3, [r0, r2]
	add r2, r4, #1
	add r1, #9
	lsl r2, r2, #1
	strh r1, [r0, r2]
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_02019448
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B4F8: .word 0x00004380
	thumb_func_end ov97_0222B4AC

	thumb_func_start ov97_0222B4FC
ov97_0222B4FC: ; 0x0222B4FC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #2
	bl sub_02019FE4
	lsl r1, r6, #5
	add r3, r4, r1
	ldr r1, _0222B538 ; =0x00004384
	lsl r2, r3, #1
	strh r1, [r0, r2]
	add r2, r3, #1
	lsl r2, r2, #1
	strh r1, [r0, r2]
	add r2, r6, #1
	lsl r2, r2, #5
	add r3, r4, r2
	lsl r2, r3, #1
	strh r1, [r0, r2]
	add r2, r3, #1
	lsl r2, r2, #1
	strh r1, [r0, r2]
	ldr r0, [r5, #0]
	mov r1, #2
	bl sub_02019448
	pop {r4, r5, r6, pc}
	nop
_0222B538: .word 0x00004384
	thumb_func_end ov97_0222B4FC

	thumb_func_start ov97_0222B53C
ov97_0222B53C: ; 0x0222B53C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	add r0, r2, #0
	add r7, r3, #0
	ldr r2, [sp, #0x28]
	mov r3, #0x51
	bl sub_0200B29C
	add r5, r0, #0
	mov r0, #0
	mov r1, #2
	bl sub_02002DF8
	add r2, r0, #0
	mov r0, #0
	add r1, r5, #0
	bl sub_02002D7C
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0201C294
	lsl r0, r0, #3
	add r4, #0x20
	sub r3, r0, r4
	ldr r0, [sp, #0x2c]
	mov r1, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	add r0, r6, #0
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222B53C

	thumb_func_start ov97_0222B590
ov97_0222B590: ; 0x0222B590
	push {r3, lr}
	sub sp, #8
	add r2, r1, #0
	cmp r2, #0x64
	blt _0222B5A0
	mov r3, #3
	mov r1, #0
	b _0222B5AE
_0222B5A0:
	cmp r2, #0xa
	blt _0222B5AA
	mov r3, #3
	mov r1, #1
	b _0222B5AE
_0222B5AA:
	mov r3, #2
	mov r1, #1
_0222B5AE:
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #0
	bl sub_0200B60C
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_0222B590

	thumb_func_start ov97_0222B5C0
ov97_0222B5C0: ; 0x0222B5C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r2, [sp, #0x18]
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	add r4, r3, #0
	ldr r2, _0222B750 ; =0x00000226
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x51
	bl sub_0200B144
	str r0, [sp, #0x24]
	mov r0, #0x51
	bl sub_0200B358
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0xc]
	bl sub_02025F30
	cmp r0, #1
	bne _0222B5F4
	ldr r0, _0222B754 ; =0x0003040F
	str r0, [sp, #0x1c]
	b _0222B5F8
_0222B5F4:
	ldr r0, _0222B758 ; =0x0007080F
	str r0, [sp, #0x1c]
_0222B5F8:
	ldr r0, [sp, #0x14]
	ldr r1, _0222B75C ; =0x0223E01C
	lsl r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	mov r2, #3
	ldr r0, [r0, #0]
	add r3, r4, #0
	bl ov97_0223795C
	ldr r4, _0222B760 ; =0x0223DF44
	mov r6, #1
	mov r5, #0x10
_0222B618:
	cmp r6, #4
	bne _0222B624
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _0222B654
_0222B624:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x24]
	ldr r2, [r4, #0]
	mov r3, #0x51
	bl sub_0200B29C
	add r7, r0, #0
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r2, r7, #0
	ldr r0, [r0, #0x10]
	mov r3, #0x20
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
_0222B654:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #5
	blo _0222B618
	ldr r2, [sp, #0x10]
	ldr r0, [sp, #0x28]
	ldr r2, [r2, #0xc]
	mov r1, #0
	bl sub_0200B498
	mov r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	bl ov97_0222B53C
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	bl sub_0202CC58
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	bl ov97_0222B590
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	bl sub_0202CC5C
	add r2, r0, #0
	mov r3, #2
	ldr r0, [sp, #0x28]
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	bl sub_0200B60C
	mov r0, #0x11
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	bl ov97_0222B53C
	mov r1, #0
	str r1, [sp]
	mov r3, #1
	ldr r2, [sp, #0x10]
	str r3, [sp, #4]
	ldr r0, [sp, #0x28]
	ldr r2, [r2, #0x50]
	bl sub_0200B60C
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	bl ov97_0222B53C
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x4c]
	cmp r0, #0
	beq _0222B712
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #8]
	bl sub_02026E48
	add r1, r0, #0
	ldr r0, [sp, #0x28]
	bl ov97_0222B590
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x24]
	ldr r0, [r0, #0x10]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	bl ov97_0222B53C
_0222B712:
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x18]
	ldr r0, [sp, #0x18]
	ldr r2, [r2, #0x38]
	ldr r3, [r3, #0x3c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [r0, #0x10]
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200DC48
	ldr r1, _0222B764 ; =0x0223E014
	ldr r0, [sp, #0x20]
	ldr r2, [r1, r0]
	ldr r0, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r0, #0xdc
	str r2, [r0, #0]
	ldr r0, [sp, #0x28]
	bl sub_0200B3F0
	ldr r0, [sp, #0x24]
	bl sub_0200B190
	mov r0, #1
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B750: .word 0x00000226
_0222B754: .word 0x0003040F
_0222B758: .word 0x0007080F
_0222B75C: .word 0x0223E01C
_0222B760: .word 0x0223DF44
_0222B764: .word 0x0223E014
	thumb_func_end ov97_0222B5C0

	thumb_func_start ov97_0222B768
ov97_0222B768: ; 0x0222B768
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r5, r1, #0
	add r1, r2, #0
	ldr r2, [r4, #0x24]
	add r6, r3, #0
	cmp r2, #0
	bne _0222B780
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0222B780:
	sub r2, r2, #1
	cmp r2, #4
	bhi _0222B7AE
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0222B792: ; jump table
	.short _0222B79C - _0222B792 - 2 ; case 0
	.short _0222B7A0 - _0222B792 - 2 ; case 1
	.short _0222B7A4 - _0222B792 - 2 ; case 2
	.short _0222B7A8 - _0222B792 - 2 ; case 3
	.short _0222B7AC - _0222B792 - 2 ; case 4
_0222B79C:
	mov r0, #4
	b _0222B7AE
_0222B7A0:
	mov r0, #5
	b _0222B7AE
_0222B7A4:
	mov r0, #6
	b _0222B7AE
_0222B7A8:
	mov r0, #7
	b _0222B7AE
_0222B7AC:
	mov r0, #8
_0222B7AE:
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #3
	add r3, r6, #0
	bl ov97_0223795C
	add r0, r4, #0
	mov r1, #0x1a
	add r2, r6, #0
	bl ov97_0222B4FC
	ldr r0, _0222B7D8 ; =0x0223E014
	lsl r1, r5, #4
	ldr r1, [r0, r1]
	lsl r0, r5, #2
	add r0, r4, r0
	add r0, #0xdc
	str r1, [r0, #0]
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222B7D8: .word 0x0223E014
	thumb_func_end ov97_0222B768

	thumb_func_start ov97_0222B7DC
ov97_0222B7DC: ; 0x0222B7DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r4, r1, #0
	add r7, r3, #0
	str r2, [sp, #4]
	cmp r0, #0
	bne _0222B824
	ldr r0, [r5, #0x14]
	bl sub_0202DEC4
	cmp r0, #1
	bne _0222B7FC
	mov r0, #1
	str r0, [r5, #0x34]
_0222B7FC:
	ldr r0, [r5, #4]
	bl sub_02025CCC
	bl sub_02025D64
	cmp r0, #1
	bne _0222B80E
	mov r0, #1
	str r0, [r5, #0x34]
_0222B80E:
	mov r0, #0x51
	bl ov97_02237520
	bl ov97_02237624
	cmp r0, #0
	beq _0222B824
	mov r0, #1
	str r0, [r5, #0x34]
	bl ov97_02238400
_0222B824:
	ldr r0, [r5, #0x34]
	cmp r0, #1
	bne _0222B834
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bne _0222B834
	mov r0, #0
	str r0, [r5, #0x34]
_0222B834:
	ldr r0, [r5, #0x34]
	cmp r0, #1
	bne _0222B878
	ldr r0, _0222B880 ; =0x0223E01C
	lsl r6, r4, #4
	ldr r0, [r0, r6]
	ldr r1, [sp, #4]
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #3
	add r3, r7, #0
	bl ov97_0223795C
	add r0, r5, #0
	mov r1, #0x1a
	add r2, r7, #0
	bl ov97_0222B4FC
	ldr r0, _0222B884 ; =0x0223E014
	ldr r1, [r0, r6]
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xdc
	str r1, [r0, #0]
	ldr r1, [r5, #0x38]
	mov r0, #1
	orr r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x14]
	bl sub_0202DED4
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B878:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B880: .word 0x0223E01C
_0222B884: .word 0x0223E014
	thumb_func_end ov97_0222B7DC

	thumb_func_start ov97_0222B888
ov97_0222B888: ; 0x0222B888
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r1, #0
	add r7, r3, #0
	cmp r0, #1
	bne _0222B8D8
	ldr r0, [r5, #0x4c]
	cmp r0, #1
	bne _0222B8D8
	ldr r0, _0222B8DC ; =0x0223E01C
	lsl r6, r4, #4
	ldr r0, [r0, r6]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #3
	bl ov97_0223795C
	add r0, r5, #0
	mov r1, #0x1a
	add r2, r7, #0
	mov r3, #1
	bl ov97_0222B4AC
	lsl r3, r4, #2
	add r1, r5, r3
	mov r0, #1
	add r1, #0xfc
	str r0, [r1, #0]
	ldr r1, _0222B8E0 ; =0x0223E014
	ldr r2, [r1, r6]
	add r1, r5, r3
	add r1, #0xdc
	str r2, [r1, #0]
	ldr r2, [r5, #0x38]
	mov r1, #2
	orr r1, r2
	str r1, [r5, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
_0222B8D8:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B8DC: .word 0x0223E01C
_0222B8E0: .word 0x0223E014
	thumb_func_end ov97_0222B888

	thumb_func_start ov97_0222B8E4
ov97_0222B8E4: ; 0x0222B8E4
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	add r5, r1, #0
	add r7, r3, #0
	cmp r0, #1
	bne _0222B926
	ldr r0, _0222B92C ; =0x0223E01C
	lsl r6, r5, #4
	ldr r0, [r0, r6]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #3
	bl ov97_0223795C
	lsl r5, r5, #2
	add r0, r4, r5
	mov r3, #1
	add r0, #0xfc
	str r3, [r0, #0]
	add r0, r4, #0
	mov r1, #0x1a
	add r2, r7, #0
	bl ov97_0222B4AC
	ldr r0, _0222B930 ; =0x0223E014
	ldr r1, [r0, r6]
	add r0, r4, r5
	add r0, #0xdc
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222B926:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222B92C: .word 0x0223E01C
_0222B930: .word 0x0223E014
	thumb_func_end ov97_0222B8E4

	thumb_func_start ov97_0222B934
ov97_0222B934: ; 0x0222B934
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, _0222B970 ; =0x0223E01C
	lsl r6, r4, #4
	ldr r0, [r0, r6]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #3
	add r7, r3, #0
	bl ov97_0223795C
	lsl r4, r4, #2
	add r0, r5, r4
	mov r3, #2
	add r0, #0xfc
	str r3, [r0, #0]
	add r0, r5, #0
	mov r1, #0x1a
	add r2, r7, #0
	bl ov97_0222B4AC
	ldr r0, _0222B974 ; =0x0223E014
	ldr r1, [r0, r6]
	add r0, r5, r4
	add r0, #0xdc
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B970: .word 0x0223E01C
_0222B974: .word 0x0223E014
	thumb_func_end ov97_0222B934

	thumb_func_start ov97_0222B978
ov97_0222B978: ; 0x0222B978
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, _0222B9B4 ; =0x0223E01C
	lsl r6, r4, #4
	ldr r0, [r0, r6]
	add r1, r2, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #3
	add r7, r3, #0
	bl ov97_0223795C
	lsl r4, r4, #2
	add r0, r5, r4
	mov r1, #0
	add r0, #0xfc
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0x1a
	add r2, r7, #0
	bl ov97_0222B4FC
	ldr r0, _0222B9B8 ; =0x0223E014
	ldr r1, [r0, r6]
	add r0, r5, r4
	add r0, #0xdc
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B9B4: .word 0x0223E01C
_0222B9B8: .word 0x0223E014
	thumb_func_end ov97_0222B978

	thumb_func_start ov97_0222B9BC
ov97_0222B9BC: ; 0x0222B9BC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	add r7, r0, #0
	mov r0, #0
	str r0, [sp, #0xc]
	mov r0, #0x13
	str r0, [r7, #0x20]
	ldr r0, [sp, #0xc]
	ldr r4, _0222BAD0 ; =0x0223E014
	str r0, [sp, #0x10]
	add r0, r7, #0
	str r0, [sp, #8]
	add r0, #0x5c
	str r0, [sp, #8]
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x20
	mov r5, #1
	str r7, [sp, #0x18]
	str r0, [sp, #0x14]
_0222B9E4:
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, _0222BAD4 ; =0x00000226
	add r0, sp, #0x1c
	mov r2, #1
	bl ov97_02237808
	ldr r2, [r4, #4]
	ldr r3, [r7, #0x20]
	add r0, sp, #0x1c
	mov r1, #0x1a
	bl ov97_02237858
	ldr r0, [r4, #0xc]
	mov ip, r0
	cmp r0, #0
	beq _0222BA84
	ldr r0, [sp, #0x18]
	add r0, #0xdc
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222BA68
	ldr r0, [sp, #0x2c]
	mov r1, #3
	bl sub_0201C2AC
	lsl r1, r5, #0x18
	ldr r0, [sp, #0x2c]
	lsr r1, r1, #0x18
	bl sub_0201C2B0
	ldr r2, [sp, #0x54]
	ldr r3, [sp, #0x58]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x2c]
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200DC48
	ldr r0, [sp, #0x18]
	add r0, #0xfc
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _0222BA52
	add r0, r7, #0
	mov r1, #0x1a
	add r2, r5, #0
	bl ov97_0222B4AC
	b _0222BA5C
_0222BA52:
	add r0, r7, #0
	mov r1, #0x1a
	add r2, r5, #0
	bl ov97_0222B4FC
_0222BA5C:
	ldr r0, [r4, #4]
	add r0, r0, #2
	add r5, r5, r0
	mov r0, #1
	str r0, [sp, #0xc]
	b _0222BAA2
_0222BA68:
	ldr r1, [sp, #0x10]
	add r0, r7, #0
	add r2, sp, #0x1c
	add r3, r5, #0
	mov r6, ip
	blx r6
	cmp r0, #1
	bne _0222BAA2
	ldr r0, [r4, #4]
	add r0, r0, #2
	add r5, r5, r0
	mov r0, #1
	str r0, [sp, #0xc]
	b _0222BAA2
_0222BA84:
	ldr r0, [r4, #8]
	add r1, sp, #0x1c
	str r0, [sp]
	ldr r0, [r7, #0]
	mov r2, #3
	add r3, r5, #0
	bl ov97_0223795C
	ldr r0, [sp, #0x18]
	ldr r1, [r4, #0]
	add r0, #0xdc
	str r1, [r0, #0]
	ldr r0, [r4, #4]
	add r0, r0, #2
	add r5, r5, r0
_0222BAA2:
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r2, [r0, #0]
	mov r0, #0x1a
	mul r0, r1
	add r1, r2, r0
	ldr r0, [sp, #0x14]
	add r4, #0x10
	str r1, [r0, #0]
	ldr r0, [sp, #8]
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #8
	blo _0222B9E4
	ldr r0, [sp, #0xc]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222BAD0: .word 0x0223E014
_0222BAD4: .word 0x00000226
	thumb_func_end ov97_0222B9BC

	thumb_func_start ov97_0222BAD8
ov97_0222BAD8: ; 0x0222BAD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r0, #0
	add r4, r7, #0
	str r1, [sp, #0xc]
	mov r6, #0
	add r4, #0x5c
_0222BAE6:
	add r0, r4, #0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222BB74
	ldr r0, [sp, #0xc]
	cmp r6, r0
	bne _0222BB36
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #3
	bl sub_0200DC48
	add r0, r4, #0
	bl sub_0201C29C
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl sub_0201C2A0
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl sub_0201C294
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [r7, #0]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	mov r1, #0
	bl sub_02019E2C
	b _0222BB74
_0222BB36:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #2
	bl sub_0200DC48
	add r0, r4, #0
	bl sub_0201C29C
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl sub_0201C2A0
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl sub_0201C294
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0201C298
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r7, #0]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	mov r1, #0
	bl sub_02019E2C
_0222BB74:
	add r6, r6, #1
	add r4, #0x10
	cmp r6, #8
	blo _0222BAE6
	ldr r0, [r7, #0]
	mov r1, #0
	bl sub_02019448
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222BAD8

	thumb_func_start ov97_0222BB88
ov97_0222BB88: ; 0x0222BB88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r2, r1, #0
	ldr r1, [r5, #0x54]
	mov r7, #7
	add r6, r7, #0
	add r4, r1, #0
	mov r0, #0
	sub r6, #8
_0222BB9A:
	add r4, r4, r2
	cmp r4, r6
	bne _0222BBA2
	add r4, r0, #0
_0222BBA2:
	cmp r4, #8
	bne _0222BBA8
	add r4, r7, #0
_0222BBA8:
	cmp r4, r1
	beq _0222BBBE
	lsl r3, r4, #2
	add r3, r5, r3
	add r3, #0xdc
	ldr r3, [r3, #0]
	cmp r3, #0
	beq _0222BB9A
	ldr r0, _0222BBC4 ; =0x000005DC
	bl sub_02005748
_0222BBBE:
	str r4, [r5, #0x54]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222BBC4: .word 0x000005DC
	thumb_func_end ov97_0222BB88

	thumb_func_start ov97_0222BBC8
ov97_0222BBC8: ; 0x0222BBC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x54]
	add r1, r5, #0
	add r1, #0x5c
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201C2A0
	sub r0, r0, #1
	lsl r4, r0, #3
	ldr r0, [r5, #0x54]
	add r1, r5, #0
	add r1, #0x5c
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201C298
	add r0, r0, #2
	lsl r3, r0, #3
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r2, [r5, r0]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r1, #0xc
	cmp r2, r4
	ble _0222BC06
	lsl r1, r4, #0xc
	str r1, [r5, r0]
_0222BC06:
	add r2, #0xc0
	cmp r2, r4
	bgt _0222BC18
	add r0, r4, r3
	sub r0, #0xc0
	lsl r1, r0, #0xc
	mov r0, #0x12
	lsl r0, r0, #4
	str r1, [r5, r0]
_0222BC18:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_0222BBC8

	thumb_func_start ov97_0222BC1C
ov97_0222BC1C: ; 0x0222BC1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0x12
	ldr r0, [sp]
	lsl r1, r1, #4
	ldr r1, [r0, r1]
	ldr r5, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r7, r0, #0xc
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, #0xc0
	ldr r6, [sp, #4]
	add r5, #0x5c
	str r0, [sp, #0xc]
_0222BC46:
	add r0, r5, #0
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222BC72
	add r0, r5, #0
	bl sub_0201C2A0
	sub r0, r0, #1
	lsl r4, r0, #3
	add r0, r5, #0
	bl sub_0201C298
	cmp r7, r4
	ble _0222BC68
	mov r0, #1
	str r0, [sp, #8]
_0222BC68:
	ldr r0, [sp, #0xc]
	cmp r0, r4
	bgt _0222BC72
	mov r0, #1
	str r0, [sp, #4]
_0222BC72:
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #8
	blo _0222BC46
	mov r1, #0x5a
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #8]
	bl sub_02021CAC
	mov r1, #0x5b
	ldr r0, [sp]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #4]
	bl sub_02021CAC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_0222BC1C

	thumb_func_start ov97_0222BC9C
ov97_0222BC9C: ; 0x0222BC9C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0200682C
	mov r1, #0x5a
	add r7, r0, #0
	lsl r1, r1, #2
	ldr r0, [r7, r1]
	cmp r0, #0
	bne _0222BCB6
	add r1, r1, #4
	ldr r1, [r7, r1]
	cmp r1, #0
	beq _0222BCC8
_0222BCB6:
	bl sub_02021BD4
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	bl sub_02021BD4
	bl ov97_02237DA0
_0222BCC8:
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x5c
_0222BCD0:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _0222BCE2
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
_0222BCE2:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #8
	blo _0222BCD0
	ldr r0, [r7, #0]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r7, #0]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r7, #0]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r7, #0]
	bl sub_020181C4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222BC9C

	thumb_func_start ov97_0222BD14
ov97_0222BD14: ; 0x0222BD14
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	lsl r3, r2, #1
	ldr r2, _0222BD40 ; =0x0223DF70
	ldrh r2, [r2, r3]
	cmp r2, #0
	bne _0222BD28
	mov r2, #0
	str r2, [r0, r1]
_0222BD28:
	mov r1, #0x17
	lsl r1, r1, #4
	ldr r3, [r0, r1]
	add r2, r3, #1
	str r2, [r0, r1]
	ldr r0, _0222BD40 ; =0x0223DF70
	lsl r1, r3, #1
	ldrh r1, [r0, r1]
	ldr r0, _0222BD44 ; =0x0500006C
	strh r1, [r0]
	bx lr
	nop
_0222BD40: .word 0x0223DF70
_0222BD44: .word 0x0500006C
	thumb_func_end ov97_0222BD14

	thumb_func_start ov97_0222BD48
ov97_0222BD48: ; 0x0222BD48
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200A858
	add r0, r4, #0
	bl sub_0201C2B8
	ldr r3, _0222BD68 ; =0x027E0000
	ldr r1, _0222BD6C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_0222BD68: .word 0x027E0000
_0222BD6C: .word 0x00003FF8
	thumb_func_end ov97_0222BD48

	thumb_func_start ov97_0222BD70
ov97_0222BD70: ; 0x0222BD70
	push {r3, r4, r5, lr}
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x51
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r1, #0x5d
	add r0, r5, #0
	lsl r1, r1, #2
	mov r2, #0x51
	bl sub_0200681C
	mov r2, #0x5d
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x51
	bl sub_02018340
	str r0, [r4, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl sub_0202442C
	str r0, [r4, #0x14]
	mov r0, #0x47
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #4]
	bl sub_02025E38
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl sub_02027560
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	bl sub_02025E5C
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_02027520
	str r0, [r4, #0x4c]
	ldr r0, [r4, #0xc]
	bl sub_02025F58
	str r0, [r4, #0x50]
	mov r0, #0x4b
	mov r1, #0xf
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #0x51
	bl ov97_02237694
	ldr r0, [r4, #4]
	bl sub_020247C0
	cmp r0, #0
	bne _0222BE14
	mov r0, #0x53
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222BE14:
	mov r0, #0
	bl sub_020053CC
	mov r0, #0
	bl sub_02004234
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0222BD70

	thumb_func_start ov97_0222BE24
ov97_0222BE24: ; 0x0222BE24
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	add r0, r0, #1
	str r0, [r4, #0x18]
	bl sub_020D0A04
	add r0, r4, #0
	bl ov97_0222B07C
	cmp r0, #1
	bne _0222BE54
	add r0, r4, #0
	bl ov97_0222AF8C
	add r0, r4, #0
	bl ov97_0222B25C
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222BE54:
	add r0, r4, #0
	bl ov97_0222BD14
	ldr r0, [r5, #0]
	cmp r0, #9
	bhi _0222BEBC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222BE6C: ; jump table
	.short _0222BE80 - _0222BE6C - 2 ; case 0
	.short _0222BE8C - _0222BE6C - 2 ; case 1
	.short _0222BEB2 - _0222BE6C - 2 ; case 2
	.short _0222BECC - _0222BE6C - 2 ; case 3
	.short _0222BEFA - _0222BE6C - 2 ; case 4
	.short _0222BF3A - _0222BE6C - 2 ; case 5
	.short _0222C030 - _0222BE6C - 2 ; case 6
	.short _0222C058 - _0222BE6C - 2 ; case 7
	.short _0222C062 - _0222BE6C - 2 ; case 8
	.short _0222C06A - _0222BE6C - 2 ; case 9
_0222BE80:
	add r0, r4, #0
	bl ov97_0222B2EC
	mov r0, #1
	str r0, [r5, #0]
	b _0222C06E
_0222BE8C:
	add r0, r4, #0
	bl ov97_0222AE60
	cmp r0, #0
	bne _0222BE9C
	mov r0, #3
	str r0, [r5, #0]
	b _0222C06E
_0222BE9C:
	mov r0, #1
	mov r1, #2
	add r2, r5, #0
	mov r3, #8
	bl ov97_02237790
	mov r0, #5
	ldr r1, _0222C084 ; =0x00007D8C
	lsl r0, r0, #0x18
	strh r1, [r0]
	b _0222C06E
_0222BEB2:
	add r0, r4, #0
	bl ov97_0222AE64
	cmp r0, #0
	beq _0222BEBE
_0222BEBC:
	b _0222C06E
_0222BEBE:
	mov r0, #0
	mov r1, #3
	add r2, r5, #0
	mov r3, #8
	bl ov97_02237790
	b _0222C06E
_0222BECC:
	mov r0, #0x49
	mov r1, #0xc
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x28
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222BEEE
	mov r0, #2
	str r0, [r4, #0x58]
	mov r0, #0
	mov r1, #7
	add r2, r5, #0
	mov r3, #8
	bl ov97_02237790
	b _0222C06E
_0222BEEE:
	add r0, r4, #0
	bl ov97_0222AF1C
	mov r0, #4
	str r0, [r5, #0]
	b _0222C06E
_0222BEFA:
	add r0, r4, #0
	bl ov97_0222B404
	add r0, r4, #0
	bl ov97_0222B46C
	ldr r0, _0222C088 ; =ov97_0222BD48
	ldr r1, [r4, #0]
	bl sub_02017798
	add r0, r4, #0
	bl ov97_0222B9BC
	ldr r1, [r4, #0x54]
	add r0, r4, #0
	bl ov97_0222BAD8
	mov r0, #1
	mov r1, #5
	add r2, r5, #0
	mov r3, #8
	bl ov97_02237790
	mov r0, #5
	ldr r1, _0222C084 ; =0x00007D8C
	lsl r0, r0, #0x18
	strh r1, [r0]
	mov r0, #0x49
	mov r1, #0xa
	lsl r0, r0, #2
	str r1, [r4, r0]
	b _0222C06E
_0222BF3A:
	ldr r0, _0222C08C ; =0x021BF67C
	mov r1, #3
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _0222BFCE
	mov r1, #1
	tst r0, r1
	ldr r0, _0222C090 ; =0x000005DC
	beq _0222BF7E
	bl sub_02005748
	ldr r0, [r4, #0x54]
	lsl r0, r0, #2
	add r0, r4, r0
	add r0, #0xdc
	ldr r0, [r0, #0]
	str r0, [r4, #0x58]
	cmp r0, #5
	bne _0222BF8C
	bl sub_020D09B8
	cmp r0, #1
	bne _0222BF8C
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0xc
	beq _0222BF76
	bl sub_02037D84
_0222BF76:
	mov r0, #0x51
	bl sub_0209A8E0
	b _0222BF8C
_0222BF7E:
	bl sub_02005748
	mov r0, #0
	str r0, [r4, #0x58]
	mov r0, #1
	bl ov97_02237784
_0222BF8C:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	bne _0222BFA6
	ldr r1, [r4, #0x40]
	mov r0, #0x80
	orr r1, r0
	str r1, [r4, #0x40]
	mov r1, #1
	add r0, #0xb0
	str r1, [r4, r0]
	mov r0, #6
	str r0, [r5, #0]
	b _0222BFBE
_0222BFA6:
	sub r0, r0, #6
	cmp r0, #1
	bhi _0222BFB2
	mov r0, #1
	bl ov97_02237784
_0222BFB2:
	mov r0, #0
	mov r1, #7
	add r2, r5, #0
	mov r3, #8
	bl ov97_02237790
_0222BFBE:
	mov r0, #0x49
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0xd
	bne _0222C06E
	mov r1, #0xe
	str r1, [r4, r0]
	b _0222C06E
_0222BFCE:
	ldr r1, [r4, #0x48]
	cmp r1, #1
	bne _0222BFE0
	add r0, r4, #0
	bl ov97_0222B9BC
	mov r0, #0
	str r0, [r4, #0x48]
	b _0222C06E
_0222BFE0:
	mov r1, #0x40
	tst r0, r1
	beq _0222BFEE
	add r0, r4, #0
	sub r1, #0x41
	bl ov97_0222BB88
_0222BFEE:
	ldr r0, _0222C08C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x80
	tst r0, r1
	beq _0222C000
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222BB88
_0222C000:
	ldr r1, [r4, #0x54]
	add r0, r4, #0
	bl ov97_0222BAD8
	add r0, r4, #0
	bl ov97_0222BBC8
	add r0, r4, #0
	bl ov97_0222BC1C
	ldr r0, [r5, #0]
	cmp r0, #5
	bne _0222C06E
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0222C06E
	mov r1, #0
	str r1, [r4, r0]
	mov r1, #1
	sub r0, #0x20
	str r1, [r4, r0]
	b _0222C06E
_0222C030:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0xf
	bne _0222C06E
	add r0, #0xc
	ldr r1, [r4, r0]
	mov r0, #2
	tst r0, r1
	beq _0222C04A
	mov r0, #5
	str r0, [r5, #0]
	b _0222C06E
_0222C04A:
	mov r0, #0
	mov r1, #7
	add r2, r5, #0
	mov r3, #8
	bl ov97_02237790
	b _0222C06E
_0222C058:
	add r0, r6, #0
	bl ov97_0222BC9C
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222C062:
	add r0, r5, #0
	bl ov97_022377F0
	b _0222C06E
_0222C06A:
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222C06E:
	add r0, r4, #0
	bl ov97_0222AF8C
	add r0, r4, #0
	bl ov97_0222B25C
	bl ov97_02237CA0
	mov r0, #0
	pop {r4, r5, r6, pc}
	nop
_0222C084: .word 0x00007D8C
_0222C088: .word ov97_0222BD48
_0222C08C: .word 0x021BF67C
_0222C090: .word 0x000005DC
	thumb_func_end ov97_0222BE24

	thumb_func_start ov97_0222C094
ov97_0222C094: ; 0x0222C094
	push {r3, lr}
	ldr r0, [r0, #0x58]
	cmp r0, #8
	bhi _0222C11A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C0A8: ; jump table
	.short _0222C112 - _0222C0A8 - 2 ; case 0
	.short _0222C0BA - _0222C0A8 - 2 ; case 1
	.short _0222C0C4 - _0222C0A8 - 2 ; case 2
	.short _0222C0CE - _0222C0A8 - 2 ; case 3
	.short _0222C0E2 - _0222C0A8 - 2 ; case 4
	.short _0222C0D8 - _0222C0A8 - 2 ; case 5
	.short _0222C0EC - _0222C0A8 - 2 ; case 6
	.short _0222C0F4 - _0222C0A8 - 2 ; case 7
	.short _0222C104 - _0222C0A8 - 2 ; case 8
_0222C0BA:
	ldr r0, _0222C11C ; =0x00000039
	ldr r1, _0222C120 ; =0x021D0F70
	bl sub_02000EC4
	pop {r3, pc}
_0222C0C4:
	ldr r0, _0222C11C ; =0x00000039
	ldr r1, _0222C124 ; =0x021D0F90
	bl sub_02000EC4
	pop {r3, pc}
_0222C0CE:
	ldr r0, _0222C128 ; =0x00000061
	ldr r1, _0222C12C ; =0x0223D71C
	bl sub_02000EC4
	pop {r3, pc}
_0222C0D8:
	ldr r0, _0222C128 ; =0x00000061
	ldr r1, _0222C130 ; =0x0223D864
	bl sub_02000EC4
	pop {r3, pc}
_0222C0E2:
	ldr r0, _0222C128 ; =0x00000061
	ldr r1, _0222C134 ; =0x0223D6BC
	bl sub_02000EC4
	pop {r3, pc}
_0222C0EC:
	ldr r0, _0222C138 ; =0x0223E094
	bl sub_020243E0
	pop {r3, pc}
_0222C0F4:
	bl sub_0200569C
	mov r0, #0
	ldr r1, _0222C13C ; =0x020F6DF0
	mvn r0, r0
	bl sub_02000EC4
	pop {r3, pc}
_0222C104:
	bl sub_0200569C
	ldr r0, _0222C140 ; =0x00000062
	ldr r1, _0222C144 ; =0x02249BAC
	bl sub_02000EC4
	pop {r3, pc}
_0222C112:
	ldr r0, _0222C148 ; =0x0000004D
	ldr r1, _0222C14C ; =0x021D742C
	bl sub_02000EC4
_0222C11A:
	pop {r3, pc}
	; .align 2, 0
_0222C11C: .word 0x00000039
_0222C120: .word 0x021D0F70
_0222C124: .word 0x021D0F90
_0222C128: .word 0x00000061
_0222C12C: .word 0x0223D71C
_0222C130: .word 0x0223D864
_0222C134: .word 0x0223D6BC
_0222C138: .word 0x0223E094
_0222C13C: .word 0x020F6DF0
_0222C140: .word 0x00000062
_0222C144: .word 0x02249BAC
_0222C148: .word 0x0000004D
_0222C14C: .word 0x021D742C
	thumb_func_end ov97_0222C094

	thumb_func_start ov97_0222C150
ov97_0222C150: ; 0x0222C150
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	bl ov97_0222C094
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0x51
	bl sub_0201807C
	mov r0, #0
	bl ov97_02238400
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222C150

	thumb_func_start ov97_0222C174
ov97_0222C174: ; 0x0222C174
	push {r3, r4}
	ldr r4, _0222C19C ; =0x0223E0B0
	ldr r1, _0222C1A0 ; =0x00000123
	mov r3, #0
_0222C17C:
	ldrh r2, [r4, #2]
	cmp r0, r2
	bne _0222C18C
	ldr r0, _0222C19C ; =0x0223E0B0
	lsl r1, r3, #2
	ldrh r0, [r0, r1]
	pop {r3, r4}
	bx lr
_0222C18C:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, r1
	blo _0222C17C
	mov r0, #0x3f
	pop {r3, r4}
	bx lr
	nop
_0222C19C: .word 0x0223E0B0
_0222C1A0: .word 0x00000123
	thumb_func_end ov97_0222C174

	thumb_func_start ov97_0222C1A4
ov97_0222C1A4: ; 0x0222C1A4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _0222C20C ; =0x00002710
	add r0, r4, #0
	bl sub_020E1F6C
	add r0, #0x30
	strh r0, [r5]
	ldr r1, _0222C20C ; =0x00002710
	add r0, r4, #0
	bl sub_020E1F6C
	add r4, r1, #0
	mov r1, #0xfa
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r0, #0x30
	mov r1, #0xfa
	strh r0, [r5, #2]
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_020E1F6C
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, #0x30
	strh r0, [r5, #4]
	add r0, r4, #0
	mov r1, #0x64
	bl sub_020E1F6C
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	add r0, #0x30
	strh r0, [r5, #6]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	add r4, r1, #0
	add r4, #0x30
	strh r4, [r5, #8]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222C20C: .word 0x00002710
	thumb_func_end ov97_0222C1A4

	thumb_func_start ov97_0222C210
ov97_0222C210: ; 0x0222C210
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0x10]
	bl sub_02025EF0
	ldr r5, _0222C248 ; =0x0223F180
	add r4, r0, #0
	mov r6, #0
_0222C220:
	ldrh r0, [r4]
	bl ov97_0222C174
	strh r0, [r5]
	add r6, r6, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r6, #8
	blt _0222C220
	ldr r0, [r7, #0x10]
	bl sub_02025F24
	add r1, r0, #0
	ldr r0, _0222C24C ; =0x0223F190
	bl ov97_0222C1A4
	ldr r0, _0222C250 ; =0x0223F180
	mov r1, #0
	strh r1, [r0, #0x1a]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C248: .word 0x0223F180
_0222C24C: .word 0x0223F190
_0222C250: .word 0x0223F180
	thumb_func_end ov97_0222C210

	thumb_func_start ov97_0222C254
ov97_0222C254: ; 0x0222C254
	push {r3, r4, r5, lr}
	sub sp, #0x48
	ldr r5, _0222C380 ; =0x0223D6DC
	add r4, r0, #0
	add r3, sp, #0x20
	mov r2, #5
_0222C260:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222C260
	ldr r3, _0222C384 ; =0x0223D6CC
	add r2, sp, #0x10
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, sp, #0x20
	bl sub_0201FE94
	add r0, sp, #0x10
	bl sub_02018368
	mov r1, #0
	str r1, [sp]
	mov r3, #0xf
	ldr r0, [r4, #4]
	mov r2, #1
	lsl r3, r3, #0xc
	bl ov97_022376FC
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r1, #1
	mov r3, #0x3e
	ldr r0, [r4, #4]
	add r2, r1, #0
	lsl r3, r3, #0xa
	bl ov97_022376FC
	mov r0, #0
	str r0, [sp]
	mov r3, #0x1e
	ldr r0, [r4, #4]
	mov r1, #4
	mov r2, #1
	lsl r3, r3, #0xa
	bl ov97_022376FC
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r3, #7
	ldr r0, [r4, #4]
	mov r1, #5
	mov r2, #1
	lsl r3, r3, #0xc
	bl ov97_022376FC
	bl sub_0201D710
	mov r0, #0
	ldr r2, [r4, #0]
	add r1, r0, #0
	bl sub_02002E7C
	mov r1, #0
	str r1, [sp]
	ldr r0, [r4, #0]
	mov r2, #1
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r3, r2, #0
	bl sub_0200DAA4
	ldr r0, [r4, #0x14]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	mov r2, #0xa
	mov r3, #2
	bl sub_0200DD0C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0x74
	add r3, r0, #0
	add r2, r1, #0
	add r3, #0x8c
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	mov r1, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0]
	add r3, r1, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x74
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x74
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019448
	add r0, r4, #0
	bl ov97_0222C388
	add sp, #0x48
	pop {r3, r4, r5, pc}
	nop
_0222C380: .word 0x0223D6DC
_0222C384: .word 0x0223D6CC
	thumb_func_end ov97_0222C254

	thumb_func_start ov97_0222C388
ov97_0222C388: ; 0x0222C388
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r2, #4
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0
	add r3, #0xfc
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, [r4, #0]
	mov r3, #4
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x74
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, [r4, #0]
	mov r1, #2
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	mov r0, #0x74
	mov r3, #4
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r4, #4]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222C388

	thumb_func_start ov97_0222C404
ov97_0222C404: ; 0x0222C404
	push {r3, r4, lr}
	sub sp, #0x5c
	add r4, r0, #0
	add r0, #0x18
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222C44E
	mov r0, #1
	str r0, [sp]
	add r1, r4, #0
	str r0, [sp, #4]
	add r0, sp, #8
	add r1, #0x18
	mov r2, #0
	mov r3, #0xe
	bl ov97_02237808
	mov r3, #0x51
	lsl r3, r3, #2
	ldr r3, [r4, r3]
	add r0, sp, #8
	mov r1, #0x16
	mov r2, #0x10
	bl ov97_02237858
	mov r0, #2
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, sp, #8
	mov r2, #5
	mov r3, #4
	bl ov97_0223795C
	add sp, #0x5c
	mov r0, #1
	pop {r3, r4, pc}
_0222C44E:
	ldr r0, _0222C478 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _0222C470
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl sub_0200DC9C
	add r4, #0x18
	add r0, r4, #0
	bl sub_0201A8FC
	add sp, #0x5c
	mov r0, #0
	pop {r3, r4, pc}
_0222C470:
	mov r0, #1
	add sp, #0x5c
	pop {r3, r4, pc}
	nop
_0222C478: .word 0x021BF67C
	thumb_func_end ov97_0222C404

	thumb_func_start ov97_0222C47C
ov97_0222C47C: ; 0x0222C47C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0xa
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	ldr r3, _0222C570 ; =0x000001A5
	add r0, #0x48
	add r1, #0x28
	mov r2, #0
	bl ov97_02237808
	mov r3, #0x51
	lsl r3, r3, #2
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0x48
	mov r1, #0x1b
	mov r2, #4
	bl ov97_02237858
	add r0, r4, #0
	mov r1, #1
	add r0, #0x48
	add r2, r1, #0
	bl ov97_02237860
	mov r0, #0x46
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	add r0, r4, #0
	add r0, #0x48
	bl ov97_02237A18
	mov r3, #0x51
	lsl r3, r3, #2
	ldr r1, [r4, r3]
	mov r2, #0
	add r0, r1, r0
	str r0, [r4, r3]
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x9c
	add r1, #0x18
	add r3, #0x61
	bl ov97_02237808
	mov r3, #0x51
	lsl r3, r3, #2
	add r0, r4, #0
	ldr r3, [r4, r3]
	add r0, #0x9c
	mov r1, #0x1e
	mov r2, #4
	bl ov97_02237858
	add r0, r4, #0
	add r0, #0x9c
	mov r1, #0
	mov r2, #1
	bl ov97_02237860
	mov r0, #0xb
	str r0, [sp]
	add r1, r4, #0
	mov r2, #1
	ldr r0, [r4, #4]
	add r1, #0x9c
	add r3, r2, #0
	bl ov97_0223795C
	add r0, r4, #0
	add r0, #0x9c
	bl ov97_02237A18
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0xa
	mov r2, #7
	mov r3, #9
	bl ov97_02237B0C
	mov r0, #1
	str r0, [sp]
	ldr r1, _0222C574 ; =0x00003170
	mov r0, #0
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x4c
	bl ov97_02237D14
	ldr r1, _0222C574 ; =0x00003170
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov97_0222C578
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_0222C570: .word 0x000001A5
_0222C574: .word 0x00003170
	thumb_func_end ov97_0222C47C

	thumb_func_start ov97_0222C578
ov97_0222C578: ; 0x0222C578
	push {r3, r4, r5, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	ldr r3, _0222C684 ; =0x000001A5
	add r0, #0xf0
	add r1, #0x38
	mov r2, #0
	bl ov97_02237808
	mov r3, #0x51
	lsl r3, r3, #2
	add r0, r5, #0
	ldr r3, [r5, r3]
	add r0, #0xf0
	mov r1, #0x1a
	mov r2, #4
	bl ov97_02237858
	add r0, r5, #0
	add r0, #0xf0
	mov r1, #0
	mov r2, #1
	bl ov97_02237860
	mov r0, #0x41
	lsl r0, r0, #2
	str r4, [r5, r0]
	ldr r2, [r5, #0x10]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #0x10]
	bl sub_02025F24
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	add r0, r4, #0
	mov r3, #5
	str r1, [sp, #4]
	bl sub_0200B60C
	mov r0, #0x42
	str r0, [sp]
	add r1, r5, #0
	ldr r0, [r5, #4]
	add r1, #0xf0
	mov r2, #3
	mov r3, #0xd
	bl ov97_0223795C
	add r1, r5, #0
	mov r0, #0
	add r1, #0xf8
	str r0, [r1, #0]
	mov r1, #1
	bl sub_02002DF8
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0xf0
	mov r1, #0
	bl ov97_02237868
	mov r2, #0x44
	str r2, [sp]
	add r1, r5, #0
	sub r2, #0x45
	ldr r0, [r5, #4]
	add r1, #0xf0
	add r3, r2, #0
	bl ov97_0223795C
	add r0, sp, #0x10
	bl sub_020C3FA0
	add r0, sp, #0x10
	bl ov97_022335A8
	add r1, sp, #0x1c
	add r2, sp, #0x18
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl ov97_022335EC
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	mov r0, #2
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	mov r3, #4
	bl sub_0200B60C
	add r0, r5, #0
	mov r1, #1
	add r0, #0xfc
	str r1, [r0, #0]
	mov r2, #0x45
	str r2, [sp]
	ldr r0, [r5, #4]
	add r5, #0xf0
	sub r2, #0x46
	add r1, r5, #0
	add r3, r2, #0
	bl ov97_0223795C
	add r0, r4, #0
	bl sub_0200B3F0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_0222C684: .word 0x000001A5
	thumb_func_end ov97_0222C578

	thumb_func_start ov97_0222C688
ov97_0222C688: ; 0x0222C688
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02237DA0
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A7CC
	cmp r0, #1
	bne _0222C6D0
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201A8FC
_0222C6D0:
	ldr r0, [r4, #4]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #4]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #4]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov97_0222C688

	thumb_func_start ov97_0222C6F8
ov97_0222C6F8: ; 0x0222C6F8
	push {r3, r4, r5, lr}
	mov r3, #2
	ldr r2, _0222C780 ; =0x000034DC
	mov r1, #0x55
	lsl r3, r3, #0x10
	add r5, r0, #0
	bl ov97_022376C4
	add r4, r0, #0
	mov r0, #0x55
	str r0, [r4, #0]
	bl sub_02018340
	str r0, [r4, #4]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #8]
	bl sub_02025E38
	str r0, [r4, #0x10]
	ldr r0, [r4, #8]
	bl sub_02027560
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	bl sub_02025E44
	str r0, [r4, #0x14]
	ldr r0, [r4, #0]
	bl ov97_02237694
	ldr r0, [r4, #8]
	bl sub_0202442C
	ldr r1, _0222C784 ; =0x00003174
	mov r2, #0x53
	str r0, [r4, r1]
	mov r0, #9
	lsl r2, r2, #2
	str r0, [r4, r2]
	add r0, r2, #0
	mov r1, #0x28
	sub r0, #8
	str r1, [r4, r0]
	add r1, r2, #0
	mov r0, #0
	add r1, #8
	str r0, [r4, r1]
	add r1, r2, #0
	add r1, #0x10
	str r0, [r4, r1]
	add r2, #0xc
	str r0, [r4, r2]
	mov r2, #3
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	ldr r1, _0222C788 ; =0x00000496
	mov r0, #9
	mov r2, #1
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222C780: .word 0x000034DC
_0222C784: .word 0x00003174
_0222C788: .word 0x00000496
	thumb_func_end ov97_0222C6F8

	thumb_func_start ov97_0222C78C
ov97_0222C78C: ; 0x0222C78C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r6, r0, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0xd
	bhi _0222C7F2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222C7AC: ; jump table
	.short _0222C7C8 - _0222C7AC - 2 ; case 0
	.short _0222C7EA - _0222C7AC - 2 ; case 1
	.short _0222C808 - _0222C7AC - 2 ; case 2
	.short _0222C85A - _0222C7AC - 2 ; case 3
	.short _0222C886 - _0222C7AC - 2 ; case 4
	.short _0222C8C2 - _0222C7AC - 2 ; case 5
	.short _0222C8FC - _0222C7AC - 2 ; case 6
	.short _0222C92C - _0222C7AC - 2 ; case 7
	.short _0222C92C - _0222C7AC - 2 ; case 8
	.short _0222C92C - _0222C7AC - 2 ; case 9
	.short _0222C92C - _0222C7AC - 2 ; case 10
	.short _0222C912 - _0222C7AC - 2 ; case 11
	.short _0222C91A - _0222C7AC - 2 ; case 12
	.short _0222C926 - _0222C7AC - 2 ; case 13
_0222C7C8:
	bl ov97_0222C254
	ldr r0, [r4, #0xc]
	bl sub_02027520
	cmp r0, #0
	bne _0222C7E4
	mov r0, #1
	add r1, r0, #0
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C7E4:
	mov r0, #2
	str r0, [r5, #0]
	b _0222C92C
_0222C7EA:
	bl ov97_0222C404
	cmp r0, #0
	beq _0222C7F4
_0222C7F2:
	b _0222C92C
_0222C7F4:
	mov r0, #1
	bl ov97_02237784
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C808:
	bl ov97_0222C47C
	ldr r0, _0222C938 ; =0x00003174
	ldr r0, [r4, r0]
	bl sub_0202DCE0
	cmp r0, #0
	bne _0222C844
	add r0, r4, #0
	mov r1, #1
	add r0, #0x98
	str r1, [r0, #0]
	mov r0, #0x15
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r1, _0222C93C ; =0x0000317C
	add r2, r5, #0
	str r0, [r4, r1]
	mov r0, #1
	mov r1, #3
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C844:
	mov r0, #0x53
	mov r1, #7
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	mov r1, #4
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C85A:
	ldr r0, _0222C93C ; =0x0000317C
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0222C92C
	ldr r0, _0222C940 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r1, r0
	beq _0222C92C
	bl ov97_02237784
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C886:
	bl ov97_0222CB10
	mov r1, #0x15
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #5
	bne _0222C8AA
	mov r0, #1
	bl ov97_02237784
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C8AA:
	cmp r0, #4
	bne _0222C92C
	mov r0, #1
	bl ov97_02237784
	mov r0, #0
	mov r1, #0xc
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C8C2:
	bl ov97_0222C388
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r1, #0xc6
	lsl r1, r1, #6
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0x55
	bl ov97_02231FFC
	mov r0, #1
	mov r1, #6
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	ldr r1, _0222C944 ; =0x000032D2
	mov r0, #4
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
	b _0222C92C
_0222C8FC:
	ldr r0, _0222C940 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _0222C92C
	mov r0, #0
	mov r1, #0xb
	add r2, r5, #0
	mov r3, #0xd
	bl ov97_02237790
	b _0222C92C
_0222C912:
	mov r0, #0
	bl sub_020C3EE4
	b _0222C92C
_0222C91A:
	add r0, r6, #0
	bl ov97_0222C688
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0222C926:
	add r0, r5, #0
	bl ov97_022377F0
_0222C92C:
	bl ov97_02237CA0
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0222C938: .word 0x00003174
_0222C93C: .word 0x0000317C
_0222C940: .word 0x021BF67C
_0222C944: .word 0x000032D2
	thumb_func_end ov97_0222C78C

	thumb_func_start ov97_0222C948
ov97_0222C948: ; 0x0222C948
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x5b
	bl sub_0201807C
	ldr r0, _0222C96C ; =0x0000004D
	ldr r1, _0222C970 ; =0x021D742C
	bl sub_02000EC4
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0x55
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	nop
_0222C96C: .word 0x0000004D
_0222C970: .word 0x021D742C
	thumb_func_end ov97_0222C948

	thumb_func_start ov97_0222C974
ov97_0222C974: ; 0x0222C974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	mov r0, #0xc6
	lsl r0, r0, #6
	add r5, r6, r0
	mov r2, #0xd6
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	ldr r2, _0222CAA0 ; =0x000001A5
	ldr r3, [r6, #0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	add r7, r0, #0
	ldr r0, [r6, #0]
	bl sub_0200B358
	mov r1, #0xc6
	mov r2, #7
	lsl r1, r1, #6
	strh r2, [r6, r1]
	ldr r3, [r6, #0]
	add r1, r7, #0
	mov r2, #0x4c
	str r0, [sp]
	bl sub_0200B29C
	mov r1, #0x41
	lsl r1, r1, #2
	add r4, r0, #0
	add r1, r5, r1
	mov r2, #0x24
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0xc
	bl ov97_02237E4C
	str r0, [sp, #4]
	mov r0, #0xa
	bl ov97_02237E4C
	add r4, r0, #0
	mov r0, #0xb
	bl ov97_02237E4C
	add r1, r4, #0
	orr r1, r0
	ldr r0, [sp, #4]
	mov r2, #1
	orr r1, r0
	mov r0, #0x53
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r1, r0, #4
	strh r2, [r5, r1]
	add r1, r0, #6
	ldrb r2, [r5, r1]
	mov r1, #1
	bic r2, r1
	add r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	mov r1, #2
	bic r2, r1
	add r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	mov r1, #4
	orr r2, r1
	add r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	mov r1, #8
	orr r2, r1
	add r1, r0, #6
	strb r2, [r5, r1]
	ldrb r2, [r5, r1]
	mov r1, #0x20
	add r0, r0, #6
	bic r2, r1
	strb r2, [r5, r0]
	ldr r0, [sp]
	ldr r3, [r6, #0]
	add r1, r7, #0
	mov r2, #0x4b
	bl sub_0200B29C
	add r4, r0, #0
	mov r1, #0x55
	lsl r1, r1, #2
	add r1, r5, r1
	mov r2, #0xfa
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0xd2
	lsl r0, r0, #2
	mov r1, #0
	ldr r3, _0222CAA4 ; =0x000001EA
	strb r1, [r5, r0]
	add r2, r0, #2
	strh r3, [r5, r2]
	add r2, r0, #4
	strh r1, [r5, r2]
	add r2, r0, #6
	strh r1, [r5, r2]
	add r0, #8
	strb r1, [r5, r0]
	add r0, sp, #8
	bl sub_020138A4
	add r0, sp, #8
	bl sub_020CC16C
	mov r1, #0xd5
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	bl sub_0200B3F0
	add r0, r7, #0
	bl sub_0200B190
	ldr r0, _0222CAA8 ; =0x00003174
	add r1, r5, #0
	ldr r0, [r6, r0]
	mov r2, #3
	bl sub_0202DB2C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r6, #4]
	add r1, r5, #0
	bl ov97_02238194
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222CAA0: .word 0x000001A5
_0222CAA4: .word 0x000001EA
_0222CAA8: .word 0x00003174
	thumb_func_end ov97_0222C974

	thumb_func_start ov97_0222CAAC
ov97_0222CAAC: ; 0x0222CAAC
	mov r2, #0x16
	lsl r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov97_0222CAAC

	thumb_func_start ov97_0222CAB4
ov97_0222CAB4: ; 0x0222CAB4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x16
	lsl r1, r1, #4
	add r4, r3, #0
	ldr r3, [r0, r1]
	sub r3, r3, #1
	str r3, [r0, r1]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0222CAD6
	bl ov97_022333BC
	mov r0, #0x17
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222CAD6:
	cmp r2, #0
	beq _0222CAEE
	bl ov97_02233388
	cmp r0, #0
	bne _0222CAEE
	bl ov97_022333BC
	mov r0, #0x16
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222CAEE:
	cmp r4, #0
	beq _0222CB06
	ldr r0, _0222CB0C ; =0x021BF67C
	ldr r0, [r0, #0x48]
	tst r0, r4
	beq _0222CB06
	bl ov97_022333BC
	mov r0, #0x1a
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222CB06:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222CB0C: .word 0x021BF67C
	thumb_func_end ov97_0222CAB4

	thumb_func_start ov97_0222CB10
ov97_0222CB10: ; 0x0222CB10
	push {r3, r4, r5, lr}
	mov r5, #0x57
	lsl r5, r5, #2
	add r4, r0, #0
	sub r0, r5, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CB36
	bl ov97_02233230
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
	bl ov97_022330DC
	mov r0, #1
	bl ov97_0223346C
_0222CB36:
	ldr r0, [r4, r5]
	cmp r0, #0x1e
	bls _0222CB3E
	b _0222D036
_0222CB3E:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CB4A: ; jump table
	.short _0222CB88 - _0222CB4A - 2 ; case 0
	.short _0222CB9E - _0222CB4A - 2 ; case 1
	.short _0222CBC4 - _0222CB4A - 2 ; case 2
	.short _0222CBE6 - _0222CB4A - 2 ; case 3
	.short _0222CC10 - _0222CB4A - 2 ; case 4
	.short _0222D036 - _0222CB4A - 2 ; case 5
	.short _0222D036 - _0222CB4A - 2 ; case 6
	.short _0222CC42 - _0222CB4A - 2 ; case 7
	.short _0222CCB8 - _0222CB4A - 2 ; case 8
	.short _0222CCD6 - _0222CB4A - 2 ; case 9
	.short _0222CD20 - _0222CB4A - 2 ; case 10
	.short _0222CD5C - _0222CB4A - 2 ; case 11
	.short _0222CD76 - _0222CB4A - 2 ; case 12
	.short _0222CDAA - _0222CB4A - 2 ; case 13
	.short _0222CDEC - _0222CB4A - 2 ; case 14
	.short _0222CE0C - _0222CB4A - 2 ; case 15
	.short _0222CE24 - _0222CB4A - 2 ; case 16
	.short _0222CE3E - _0222CB4A - 2 ; case 17
	.short _0222CE94 - _0222CB4A - 2 ; case 18
	.short _0222CF1C - _0222CB4A - 2 ; case 19
	.short _0222CF64 - _0222CB4A - 2 ; case 20
	.short _0222D036 - _0222CB4A - 2 ; case 21
	.short _0222CF98 - _0222CB4A - 2 ; case 22
	.short _0222CF9C - _0222CB4A - 2 ; case 23
	.short _0222D036 - _0222CB4A - 2 ; case 24
	.short _0222D036 - _0222CB4A - 2 ; case 25
	.short _0222D004 - _0222CB4A - 2 ; case 26
	.short _0222D036 - _0222CB4A - 2 ; case 27
	.short _0222CFD0 - _0222CB4A - 2 ; case 28
	.short _0222CC5E - _0222CB4A - 2 ; case 29
	.short _0222CC9C - _0222CB4A - 2 ; case 30
_0222CB88:
	add r0, r4, #0
	bl ov97_0222C210
	bl sub_02033478
	mov r0, #0x52
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	str r1, [r4, r5]
	b _0222D036
_0222CB9E:
	bl sub_020334A4
	cmp r0, #0
	beq _0222CC56
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r0, _0222CEE0 ; =0x0223E0A4
	add r1, r4, r1
	bl ov97_02232E38
	mov r0, #0x56
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	bl sub_02039734
	mov r0, #2
	str r0, [r4, r5]
	b _0222D036
_0222CBC4:
	bl ov97_02233120
	mov r1, #0x19
	add r0, r4, #0
	lsl r1, r1, #6
	bl ov97_0222CAAC
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0xa
	bl sub_0200E7FC
	ldr r1, _0222CEE4 ; =0x000034D8
	str r0, [r4, r1]
	mov r0, #3
	str r0, [r4, r5]
	b _0222D036
_0222CBE6:
	bl ov97_02233248
	cmp r0, #0
	beq _0222CC02
	sub r1, r0, #1
	mov r0, #0x59
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r1, _0222CEE8 ; =0x00000708
	add r0, r4, #0
	bl ov97_0222CAAC
	mov r0, #4
	str r0, [r4, r5]
_0222CC02:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CC10:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov97_0223316C
	cmp r0, #0
	beq _0222CC34
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl ov97_022331A8
	mov r0, #7
	str r0, [r4, r5]
	mov r0, #0x16
	ldr r1, _0222CEE8 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
_0222CC34:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CC42:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #0
	mov r3, #2
	bl ov97_0222CAB4
	bl ov97_02233388
	cmp r0, #0
	bne _0222CC58
_0222CC56:
	b _0222D036
_0222CC58:
	mov r0, #0x1d
	str r0, [r4, r5]
	b _0222D036
_0222CC5E:
	mov r0, #0x1e
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEEC ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222CEE4 ; =0x000034D8
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	ldr r0, _0222CEE4 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _0222CEF0 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x16
	ldr r1, _0222CEE8 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x1e
	str r0, [r4, r5]
	b _0222D036
_0222CC9C:
	ldr r0, _0222CEF4 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0222CCAA
	mov r0, #8
	str r0, [r4, r5]
_0222CCAA:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CCB8:
	bl ov97_02233268
	mov r0, #9
	str r0, [r4, r5]
	mov r0, #0x16
	ldr r1, _0222CEE8 ; =0x00000708
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CCD6:
	bl ov97_022332F4
	cmp r0, #0
	beq _0222CD12
	bl ov97_0223329C
	mov r0, #0xa
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x22
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEF0 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0222CEE4 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222CD12:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CD20:
	bl ov97_022332F4
	cmp r0, #0
	beq _0222CD4E
	mov r0, #0x47
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222CEEC ; =0x00003170
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	add r0, r4, #0
	bl ov97_0222C578
	mov r0, #0xb
	str r0, [r4, r5]
_0222CD4E:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CD5C:
	ldr r0, _0222CEF8 ; =0x0223E53C
	mov r1, #0x2a
	mov r2, #1
	bl ov97_022332C8
	mov r0, #0xc
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CD76:
	bl ov97_02233320
	cmp r0, #0
	beq _0222CD9C
	mov r0, #0xd
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #0x3c
	lsl r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x47
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
_0222CD9C:
	add r0, r4, #0
	add r1, r4, r5
	mov r2, #1
	mov r3, #2
	bl ov97_0222CAB4
	b _0222D036
_0222CDAA:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CE1C
	mov r0, #0x48
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0xa
	bl sub_0200E7FC
	ldr r1, _0222CEE4 ; =0x000034D8
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov97_0222C974
	ldr r0, [r4, #8]
	bl ov97_0223846C
	mov r0, #0xe
	str r0, [r4, r5]
	b _0222D036
_0222CDEC:
	bl ov97_0223847C
	cmp r0, #1
	bne _0222CE1C
	mov r0, #0xf
	str r0, [r4, r5]
	bl sub_020C3920
	mov r1, #0x36
	bl sub_020E1F6C
	mov r0, #0x16
	add r1, r1, #6
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE0C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CE1E
_0222CE1C:
	b _0222D036
_0222CE1E:
	mov r0, #0x10
	str r0, [r4, r5]
	b _0222D036
_0222CE24:
	ldr r0, _0222CEF8 ; =0x0223E53C
	mov r1, #0x2a
	mov r2, #2
	bl ov97_022332C8
	mov r0, #0x11
	str r0, [r4, r5]
	mov r1, #0x4b
	mov r0, #0x16
	lsl r1, r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE3E:
	bl ov97_0223334C
	cmp r0, #0
	beq _0222CE5A
	bl ov97_022384F4
	mov r0, #0x12
	str r0, [r4, r5]
	mov r1, #0x32
	mov r0, #0x16
	lsl r1, r1, #4
	lsl r0, r0, #4
	str r1, [r4, r0]
	b _0222D036
_0222CE5A:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CE7A
	bl ov97_022333BC
	mov r0, #0x17
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
_0222CE7A:
	bl ov97_02233388
	cmp r0, #0
	bne _0222CF2C
	bl ov97_022333BC
	mov r0, #0x16
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
	b _0222D036
_0222CE94:
	bl ov97_02238528
	cmp r0, #3
	bne _0222CEAE
	bl ov97_022333BC
	mov r0, #0x16
	mov r1, #0x78
	str r0, [r4, r5]
	add r0, r1, #0
	add r0, #0xe8
	str r1, [r4, r0]
	b _0222CEFC
_0222CEAE:
	bl ov97_02238528
	cmp r0, #2
	beq _0222CEBC
	bl ov97_0223847C
	b _0222CEFC
_0222CEBC:
	bl ov97_02233320
	cmp r0, #0
	bne _0222CECC
	bl ov97_02233388
	cmp r0, #0
	bne _0222CEFC
_0222CECC:
	mov r0, #0x13
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl ov97_022333BC
	b _0222D036
	nop
_0222CEE0: .word 0x0223E0A4
_0222CEE4: .word 0x000034D8
_0222CEE8: .word 0x00000708
_0222CEEC: .word 0x00003170
_0222CEF0: .word 0x000005DC
_0222CEF4: .word 0x021BF67C
_0222CEF8: .word 0x0223E53C
_0222CEFC:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CF1C
	bl ov97_022333BC
	mov r0, #0x17
	str r0, [r4, r5]
	mov r0, #0x16
	mov r1, #0xa
	lsl r0, r0, #4
	str r1, [r4, r0]
_0222CF1C:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CF2E
_0222CF2C:
	b _0222D036
_0222CF2E:
	mov r0, #0x14
	str r0, [r4, r5]
	mov r0, #0x49
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222D03C ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222D040 ; =0x000034D8
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	ldr r0, _0222D044 ; =0x000005DC
	bl sub_02005748
	ldr r0, _0222D040 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	b _0222D036
_0222CF64:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CF86
	bl sub_020334CC
	bl sub_02039794
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222CF86:
	ldr r0, _0222D048 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0222D036
	mov r0, #0x1b
	str r0, [r4, r5]
	mov r0, #4
	pop {r3, r4, r5, pc}
_0222CF98:
	mov r0, #0x17
	str r0, [r4, r5]
_0222CF9C:
	mov r0, #0x4a
	str r0, [sp]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x48
	mov r2, #2
	mov r3, #0x13
	bl ov97_0223795C
	ldr r0, _0222D03C ; =0x00003170
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222D040 ; =0x000034D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222CFC4
	bl sub_0200EBA0
_0222CFC4:
	ldr r0, _0222D040 ; =0x000034D8
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x1c
	str r0, [r4, r5]
	b _0222D036
_0222CFD0:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222CFF2
	bl sub_020334CC
	bl sub_02039794
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222CFF2:
	ldr r0, _0222D048 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _0222D036
	mov r0, #0
	bl sub_020C3EE4
	b _0222D036
_0222D004:
	bl ov97_022333FC
	cmp r0, #0
	beq _0222D036
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D036
	bl sub_020334CC
	bl sub_02039794
	mov r0, #0x52
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0222D040 ; =0x000034D8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222D032
	bl sub_0200EBA0
_0222D032:
	mov r0, #5
	pop {r3, r4, r5, pc}
_0222D036:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_0222D03C: .word 0x00003170
_0222D040: .word 0x000034D8
_0222D044: .word 0x000005DC
_0222D048: .word 0x021BF67C
	thumb_func_end ov97_0222CB10

	thumb_func_start ov97_0222D04C
ov97_0222D04C: ; 0x0222D04C
	push {r4, lr}
	ldr r1, _0222D09C ; =0x0223F1A4
	add r4, r0, #0
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _0222D098
	bl ov97_0222D2F8
	mov r1, #0xf5
	mov r0, #0xf
	lsl r1, r1, #2
	bl sub_02018144
	ldr r1, _0222D09C ; =0x0223F1A4
	mov r2, #0xf5
	str r0, [r1, #0]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	ldr r0, _0222D09C ; =0x0223F1A4
	mov r1, #0x32
	ldr r0, [r0, #0]
	mov r2, #0xa
	strh r1, [r0, #0x24]
	ldr r0, _0222D0A0 ; =ov97_0222D19C
	mov r1, #0
	bl sub_0200D9E8
	ldr r1, _0222D09C ; =0x0223F1A4
	ldr r2, [r1, #0]
	str r0, [r2, #0x1c]
	ldr r0, [r1, #0]
	str r4, [r0, #0]
	ldr r0, [r1, #0]
	add r0, r0, #4
	bl sub_020361BC
_0222D098:
	pop {r4, pc}
	nop
_0222D09C: .word 0x0223F1A4
_0222D0A0: .word ov97_0222D19C
	thumb_func_end ov97_0222D04C

	thumb_func_start ov97_0222D0A4
ov97_0222D0A4: ; 0x0222D0A4
	ldr r2, _0222D0B0 ; =0x0223F1A4
	ldr r3, [r2, #0]
	str r0, [r3, #0x20]
	ldr r0, [r2, #0]
	strh r1, [r0, #0x24]
	bx lr
	; .align 2, 0
_0222D0B0: .word 0x0223F1A4
	thumb_func_end ov97_0222D0A4

	thumb_func_start ov97_0222D0B4
ov97_0222D0B4: ; 0x0222D0B4
	push {r4, lr}
	bl sub_0203608C
	bl sub_02035D78
	cmp r0, #0
	beq _0222D0E2
	mov r4, #0
	ldr r1, _0222D0E4 ; =0x0223F1A4
	ldr r0, _0222D0E8 ; =0x000003C1
	add r3, r4, #0
_0222D0CA:
	ldr r2, [r1, #0]
	add r2, r2, r4
	add r4, r4, #1
	strb r3, [r2, r0]
	cmp r4, #0x10
	blt _0222D0CA
	bl sub_02032AC0
	ldr r0, _0222D0EC ; =ov97_0222D0F0
	mov r1, #0
	bl ov97_0222D0A4
_0222D0E2:
	pop {r4, pc}
	; .align 2, 0
_0222D0E4: .word 0x0223F1A4
_0222D0E8: .word 0x000003C1
_0222D0EC: .word ov97_0222D0F0
	thumb_func_end ov97_0222D0B4

	thumb_func_start ov97_0222D0F0
ov97_0222D0F0: ; 0x0222D0F0
	push {r4, r5, r6, lr}
	mov r4, #0
	ldr r6, _0222D124 ; =0x0223F1A4
	add r5, r4, #0
_0222D0F8:
	ldr r0, [r6, #0]
	add r0, r0, r5
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _0222D11A
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #1
	bne _0222D11A
	add r0, r4, #0
	bl sub_02032EE8
	ldr r1, [r6, #0]
	add r1, r1, r5
	str r0, [r1, #0x28]
_0222D11A:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _0222D0F8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222D124: .word 0x0223F1A4
	thumb_func_end ov97_0222D0F0

	thumb_func_start ov97_0222D128
ov97_0222D128: ; 0x0222D128
	push {r3, lr}
	bl sub_020334A4
	cmp r0, #0
	beq _0222D13A
	ldr r0, _0222D13C ; =ov97_0222D140
	mov r1, #0
	bl ov97_0222D0A4
_0222D13A:
	pop {r3, pc}
	; .align 2, 0
_0222D13C: .word ov97_0222D140
	thumb_func_end ov97_0222D128

	thumb_func_start ov97_0222D140
ov97_0222D140: ; 0x0222D140
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0222D140

	thumb_func_start ov97_0222D144
ov97_0222D144: ; 0x0222D144
	push {r3, lr}
	ldr r0, _0222D15C ; =0x0223F1A4
	ldr r0, [r0, #0]
	add r0, #0x27
	ldrb r0, [r0]
	bl sub_02036948
	ldr r0, _0222D160 ; =ov97_0222D164
	mov r1, #0
	bl ov97_0222D0A4
	pop {r3, pc}
	; .align 2, 0
_0222D15C: .word 0x0223F1A4
_0222D160: .word ov97_0222D164
	thumb_func_end ov97_0222D144

	thumb_func_start ov97_0222D164
ov97_0222D164: ; 0x0222D164
	push {r3, lr}
	bl sub_0203699C
	cmp r0, #0
	beq _0222D18C
	ldr r0, _0222D190 ; =0x0223F1A4
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xf
	lsl r0, r0, #6
	strb r2, [r1, r0]
	bl sub_02032AC0
	mov r0, #0xab
	bl sub_020364F0
	ldr r0, _0222D194 ; =ov97_0222D198
	mov r1, #0
	bl ov97_0222D0A4
_0222D18C:
	pop {r3, pc}
	nop
_0222D190: .word 0x0223F1A4
_0222D194: .word ov97_0222D198
	thumb_func_end ov97_0222D164

	thumb_func_start ov97_0222D198
ov97_0222D198: ; 0x0222D198
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0222D198

	thumb_func_start ov97_0222D19C
ov97_0222D19C: ; 0x0222D19C
	push {r3, lr}
	ldr r1, _0222D1C0 ; =0x0223F1A4
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _0222D1AC
	bl sub_0200DA58
	pop {r3, pc}
_0222D1AC:
	ldr r1, [r2, #0x20]
	cmp r1, #0
	beq _0222D1BC
	add r2, #0x26
	ldrb r0, [r2]
	cmp r0, #0
	bne _0222D1BC
	blx r1
_0222D1BC:
	pop {r3, pc}
	nop
_0222D1C0: .word 0x0223F1A4
	thumb_func_end ov97_0222D19C

	thumb_func_start ov97_0222D1C4
ov97_0222D1C4: ; 0x0222D1C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_02035E38
	cmp r0, #0
	bne _0222D1EA
	add r0, r4, #0
	add r1, r6, #0
	bl sub_02036BE8
	add r0, r5, #0
	bl ov97_0222D04C
	ldr r0, _0222D1EC ; =ov97_0222D0B4
	mov r1, #0
	bl ov97_0222D0A4
_0222D1EA:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222D1EC: .word ov97_0222D0B4
	thumb_func_end ov97_0222D1C4

	thumb_func_start ov97_0222D1F0
ov97_0222D1F0: ; 0x0222D1F0
	add r3, r0, #0
	add r2, r1, #0
	add r1, r3, #0
	ldr r3, _0222D1FC ; =sub_02035A3C
	mov r0, #0x16
	bx r3
	; .align 2, 0
_0222D1FC: .word sub_02035A3C
	thumb_func_end ov97_0222D1F0

	thumb_func_start ov97_0222D200
ov97_0222D200: ; 0x0222D200
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035E38
	cmp r0, #0
	bne _0222D22C
	bl ov97_022301A4
	bl sub_02006840
	ldr r0, [r0, #8]
	add r1, r4, #0
	bl sub_02036C1C
	add r0, r5, #0
	bl ov97_0222D04C
	ldr r0, _0222D230 ; =ov97_0222D128
	mov r1, #0
	bl ov97_0222D0A4
_0222D22C:
	pop {r3, r4, r5, pc}
	nop
_0222D230: .word ov97_0222D128
	thumb_func_end ov97_0222D200

	thumb_func_start ov97_0222D234
ov97_0222D234: ; 0x0222D234
	ldr r1, _0222D244 ; =0x0223F1A4
	ldr r3, _0222D248 ; =ov97_0222D0A4
	ldr r1, [r1, #0]
	add r1, #0x27
	strb r0, [r1]
	ldr r0, _0222D24C ; =ov97_0222D144
	mov r1, #0
	bx r3
	; .align 2, 0
_0222D244: .word 0x0223F1A4
_0222D248: .word ov97_0222D0A4
_0222D24C: .word ov97_0222D144
	thumb_func_end ov97_0222D234

	thumb_func_start ov97_0222D250
ov97_0222D250: ; 0x0222D250
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_0222D256:
	add r0, r4, #0
	bl sub_02034168
	add r1, r0, #0
	beq _0222D276
	add r0, #0x4c
	ldrh r0, [r0]
	cmp r0, #0
	beq _0222D276
	add r5, #0x8c
	add r0, r5, #0
	mov r2, #0x50
	bl sub_020D50B8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0222D276:
	add r4, r4, #1
	cmp r4, #0x10
	blt _0222D256
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_0222D250

	thumb_func_start ov97_0222D284
ov97_0222D284: ; 0x0222D284
	ldr r1, _0222D29C ; =0x0223F1A4
	ldr r2, [r1, #0]
	add r1, r2, #0
	add r1, #0x27
	ldrb r1, [r1]
	cmp r1, r0
	bne _0222D29A
	mov r0, #0xf
	mov r1, #1
	lsl r0, r0, #6
	strb r1, [r2, r0]
_0222D29A:
	bx lr
	; .align 2, 0
_0222D29C: .word 0x0223F1A4
	thumb_func_end ov97_0222D284

	thumb_func_start ov97_0222D2A0
ov97_0222D2A0: ; 0x0222D2A0
	ldr r0, _0222D2AC ; =0x0223F1A4
	ldr r1, [r0, #0]
	mov r0, #0xf
	lsl r0, r0, #6
	ldrb r0, [r1, r0]
	bx lr
	; .align 2, 0
_0222D2AC: .word 0x0223F1A4
	thumb_func_end ov97_0222D2A0

	thumb_func_start ov97_0222D2B0
ov97_0222D2B0: ; 0x0222D2B0
	mov r0, #0xd6
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0222D2B0

	thumb_func_start ov97_0222D2B8
ov97_0222D2B8: ; 0x0222D2B8
	ldr r0, _0222D2C0 ; =0x0223F1A4
	ldr r0, [r0, #0]
	add r0, #0x68
	bx lr
	; .align 2, 0
_0222D2C0: .word 0x0223F1A4
	thumb_func_end ov97_0222D2B8

	thumb_func_start ov97_0222D2C4
ov97_0222D2C4: ; 0x0222D2C4
	ldr r1, _0222D2D4 ; =0x0223F1A4
	mov r2, #1
	ldr r1, [r1, #0]
	add r1, r1, r0
	ldr r0, _0222D2D8 ; =0x000003C1
	strb r2, [r1, r0]
	bx lr
	nop
_0222D2D4: .word 0x0223F1A4
_0222D2D8: .word 0x000003C1
	thumb_func_end ov97_0222D2C4

	thumb_func_start ov97_0222D2DC
ov97_0222D2DC: ; 0x0222D2DC
	push {r3, lr}
	ldr r1, _0222D2F4 ; =0x0223F1A4
	mov r0, #0xf
	ldr r1, [r1, #0]
	bl sub_02018238
	ldr r0, _0222D2F4 ; =0x0223F1A4
	mov r1, #0
	str r1, [r0, #0]
	bl sub_02036978
	pop {r3, pc}
	; .align 2, 0
_0222D2F4: .word 0x0223F1A4
	thumb_func_end ov97_0222D2DC

	thumb_func_start ov97_0222D2F8
ov97_0222D2F8: ; 0x0222D2F8
	ldr r3, _0222D304 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0222D308 ; =0x0223D704
	mov r1, #2
	bx r3
	nop
_0222D304: .word sub_02032798
_0222D308: .word 0x0223D704
	thumb_func_end ov97_0222D2F8

	thumb_func_start ov97_0222D30C
ov97_0222D30C: ; 0x0222D30C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #1
	ldr r0, _0222D340 ; =0x000029F0
	bne _0222D32C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222D33C
	add r0, r4, #0
	add r0, #0x18
	mov r1, #1
	bl sub_0200E7FC
	ldr r1, _0222D340 ; =0x000029F0
	str r0, [r4, r1]
	pop {r4, pc}
_0222D32C:
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222D336
	bl sub_0200EBA0
_0222D336:
	ldr r0, _0222D340 ; =0x000029F0
	mov r1, #0
	str r1, [r4, r0]
_0222D33C:
	pop {r4, pc}
	nop
_0222D340: .word 0x000029F0
	thumb_func_end ov97_0222D30C

	thumb_func_start ov97_0222D344
ov97_0222D344: ; 0x0222D344
	ldr r3, _0222D348 ; =ov97_0222D30C
	bx r3
	; .align 2, 0
_0222D348: .word ov97_0222D30C
	thumb_func_end ov97_0222D344

	thumb_func_start ov97_0222D34C
ov97_0222D34C: ; 0x0222D34C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0200682C
	add r7, r0, #0
	bl ov97_02237DA0
	ldr r0, [r7, #0x7c]
	cmp r0, #0
	beq _0222D362
	bl sub_02013A3C
_0222D362:
	ldr r0, [r7, #0x78]
	cmp r0, #0
	beq _0222D370
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
_0222D370:
	add r0, r7, #0
	add r0, #0x18
	bl sub_0201ACF4
	add r0, r7, #0
	add r0, #0x18
	bl sub_0201A8FC
	add r0, r7, #0
	add r0, #0x58
	bl sub_0201A7CC
	cmp r0, #0
	beq _0222D39C
	add r0, r7, #0
	add r0, #0x58
	bl sub_0201ACF4
	add r0, r7, #0
	add r0, #0x58
	bl sub_0201A8FC
_0222D39C:
	add r5, r7, #0
	mov r6, #0
	add r4, r7, #0
	add r5, #0x28
_0222D3A4:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0222D3B6
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
_0222D3B6:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #3
	blt _0222D3A4
	ldr r0, [r7, #0]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r7, #0]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r7, #0]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r7, #0]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r7, #0]
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0222D34C

	thumb_func_start ov97_0222D3E8
ov97_0222D3E8: ; 0x0222D3E8
	push {r3, lr}
	sub sp, #8
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #8
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0xa
	mov r2, #7
	mov r3, #9
	bl ov97_02237B0C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov97_0222D3E8

	thumb_func_start ov97_0222D40C
ov97_0222D40C: ; 0x0222D40C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r1, r0
	beq _0222D432
	str r1, [sp]
	ldr r1, _0222D440 ; =0x000005C4
	mov r0, #0
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x64
	bl ov97_02237D14
	ldr r1, _0222D440 ; =0x000005C4
	add sp, #4
	str r0, [r4, r1]
	pop {r3, r4, pc}
_0222D432:
	ldr r0, _0222D440 ; =0x000005C4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0222D440: .word 0x000005C4
	thumb_func_end ov97_0222D40C

	thumb_func_start ov97_0222D444
ov97_0222D444: ; 0x0222D444
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0222D45A
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200DC9C
_0222D45A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0222D444

	thumb_func_start ov97_0222D45C
ov97_0222D45C: ; 0x0222D45C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0222D472
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200E084
_0222D472:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0222D45C

	thumb_func_start ov97_0222D474
ov97_0222D474: ; 0x0222D474
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222D4CC ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _0222D492
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #3
	bl ov97_0222DE78
_0222D492:
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	ldr r0, _0222D4CC ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	beq _0222D4C2
	add r0, r4, #0
	mov r1, #0xf
	bl ov97_0222D200
	ldr r1, _0222D4D0 ; =0x00001C20
	ldr r0, _0222D4D4 ; =0x00000434
	str r1, [r4, r0]
	bl sub_02039734
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	mov r0, #7
	pop {r3, r4, r5, pc}
_0222D4C2:
	mov r0, #0x13
	add r4, #0x84
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_0222D4CC: .word 0x000015D4
_0222D4D0: .word 0x00001C20
_0222D4D4: .word 0x00000434
	thumb_func_end ov97_0222D474

	thumb_func_start ov97_0222D4D8
ov97_0222D4D8: ; 0x0222D4D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0x80
	ldr r1, [r0, #0]
	cmp r1, #1
	bne _0222D4EE
	mov r0, #0x31
	pop {r3, r4, r5, pc}
_0222D4EE:
	sub r0, r1, #2
	cmp r0, #2
	bhi _0222D4F8
	mov r0, #0x31
	pop {r3, r4, r5, pc}
_0222D4F8:
	cmp r1, #5
	bne _0222D500
	mov r0, #0x31
	pop {r3, r4, r5, pc}
_0222D500:
	ldr r0, _0222D554 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D510
	ldr r0, _0222D558 ; =0x00000438
	ldr r0, [r4, r0]
	bl ov97_0222D234
_0222D510:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #6
	bl ov97_0222DE78
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	ldr r0, _0222D554 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D53E
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
_0222D53E:
	ldr r0, _0222D554 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D550
	mov r0, #0xab
	bl sub_020364F0
	mov r0, #9
	pop {r3, r4, r5, pc}
_0222D550:
	mov r0, #0x15
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222D554: .word 0x000015D4
_0222D558: .word 0x00000438
	thumb_func_end ov97_0222D4D8

	thumb_func_start ov97_0222D55C
ov97_0222D55C: ; 0x0222D55C
	push {r3, r4, r5, r6, r7, lr}
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222D5C0 ; =0x000015D4
	add r5, r4, #0
	add r6, r4, #0
	ldr r0, [r4, r0]
	add r5, #0xdc
	add r6, #0x8c
	cmp r0, #1
	beq _0222D57A
	cmp r0, #3
	beq _0222D5A0
	b _0222D5BA
_0222D57A:
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	bl ov97_0222D2B8
	mov r2, #0xd6
	add r1, r0, #0
	add r0, r5, #0
	lsl r2, r2, #2
	bl sub_020D50B8
	add r0, r4, #0
	add r4, #0xdc
	add r0, #0x8c
	add r1, r4, #0
	mov r2, #0x56
	bl ov97_02238324
	b _0222D5BA
_0222D5A0:
	ldr r7, _0222D5C4 ; =0x000005D4
	mov r2, #0xd6
	add r1, r4, r7
	add r0, r5, #0
	add r1, #0x50
	lsl r2, r2, #2
	bl sub_020D50B8
	add r0, r6, #0
	add r1, r4, r7
	mov r2, #0x50
	bl sub_020D50B8
_0222D5BA:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222D5C0: .word 0x000015D4
_0222D5C4: .word 0x000005D4
	thumb_func_end ov97_0222D55C

	thumb_func_start ov97_0222D5C8
ov97_0222D5C8: ; 0x0222D5C8
	push {r3, lr}
	ldrh r1, [r0]
	cmp r1, #3
	bgt _0222D5E0
	cmp r1, #1
	blt _0222D610
	beq _0222D5F2
	cmp r1, #2
	beq _0222D5F2
	cmp r1, #3
	beq _0222D5E8
	b _0222D610
_0222D5E0:
	cmp r1, #0xd
	bne _0222D610
	mov r0, #1
	pop {r3, pc}
_0222D5E8:
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _0222D610
	mov r0, #1
	pop {r3, pc}
_0222D5F2:
	add r0, #8
	mov r1, #0x98
	mov r2, #0
	bl sub_02074470
	cmp r0, #3
	blt _0222D604
	cmp r0, #0xe
	ble _0222D60C
_0222D604:
	cmp r0, #0x40
	blt _0222D610
	cmp r0, #0x47
	bgt _0222D610
_0222D60C:
	mov r0, #1
	pop {r3, pc}
_0222D610:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_0222D5C8

	thumb_func_start ov97_0222D614
ov97_0222D614: ; 0x0222D614
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222D64C ; =0x000029EC
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _0222D626
	mov r1, #0
	sub r0, r0, #4
	str r1, [r4, r0]
_0222D626:
	bl ov97_0223847C
	sub r0, r0, #2
	cmp r0, #1
	bhi _0222D648
	add r0, r4, #0
	add r0, #0xdc
	bl ov97_0222D5C8
	cmp r0, #1
	beq _0222D642
	ldr r0, _0222D650 ; =0x0000061B
	bl sub_02005748
_0222D642:
	ldr r0, _0222D654 ; =0x000029E8
	mov r1, #0
	str r1, [r4, r0]
_0222D648:
	pop {r4, pc}
	nop
_0222D64C: .word 0x000029EC
_0222D650: .word 0x0000061B
_0222D654: .word 0x000029E8
	thumb_func_end ov97_0222D614

	thumb_func_start ov97_0222D658
ov97_0222D658: ; 0x0222D658
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r5, r0, #0
	str r0, [sp]
	add r4, #0x8c
	add r0, r6, #0
	add r5, #0xdc
	bl sub_02006840
	ldr r7, [r0, #8]
	add r0, r4, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _0222D684
	mov r6, #0
	b _0222D6B0
_0222D684:
	mov r1, #0x35
	add r2, r4, #0
	mov r0, #0
	lsl r1, r1, #4
	strb r0, [r5, r1]
	add r2, #0x4e
	ldrb r2, [r2]
	mov r6, #1
	lsl r2, r2, #0x1b
	lsr r2, r2, #0x1f
	bne _0222D69E
	sub r1, #8
	strb r0, [r5, r1]
_0222D69E:
	add r0, sp, #8
	bl sub_020138A4
	add r0, sp, #8
	bl sub_020CC16C
	mov r1, #0xd5
	lsl r1, r1, #2
	str r0, [r5, r1]
_0222D6B0:
	add r0, r7, #0
	bl sub_0202442C
	add r4, #0x4c
	ldrh r1, [r4]
	str r0, [sp, #4]
	bl sub_0202DE5C
	cmp r6, #0
	bne _0222D6D0
	ldr r0, [sp, #4]
	add r1, r5, #0
	mov r2, #3
	bl sub_0202DB2C
	b _0222D6D8
_0222D6D0:
	ldr r0, [sp, #4]
	add r1, r5, #0
	bl sub_0202DBAC
_0222D6D8:
	add r0, r7, #0
	bl ov97_0223846C
	ldr r1, _0222D6F0 ; =0x000029EC
	ldr r0, [sp]
	mov r2, #0
	str r2, [r0, r1]
	ldr r2, _0222D6F4 ; =ov97_0222D614
	sub r1, r1, #4
	str r2, [r0, r1]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D6F0: .word 0x000029EC
_0222D6F4: .word ov97_0222D614
	thumb_func_end ov97_0222D658

	thumb_func_start ov97_0222D6F8
ov97_0222D6F8: ; 0x0222D6F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r4, r1, #0
	bl sub_0200682C
	cmp r4, #0
	bne _0222D70C
	mov r5, #4
	b _0222D710
_0222D70C:
	mov r5, #0
	mvn r5, r5
_0222D710:
	ldr r1, [r0, #0x48]
	add r4, r0, #0
	add r4, #0x48
	cmp r1, #0
	bne _0222D73A
	mov r1, #0xa
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r2, #0
	mov r1, #0x6b
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	ldr r0, [r0, #0]
	add r1, r4, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D73A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	ldr r1, _0222D758 ; =0x0223E5A8
	add r0, r6, #0
	mov r2, #2
	add r3, r4, #0
	str r5, [sp]
	bl ov97_0222DD1C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222D758: .word 0x0223E5A8
	thumb_func_end ov97_0222D6F8

	thumb_func_start ov97_0222D75C
ov97_0222D75C: ; 0x0222D75C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	ldr r0, _0222D794 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D788
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
_0222D788:
	bl sub_02039794
	add r0, r5, #0
	bl ov97_0222DA84
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222D794: .word 0x000015D4
	thumb_func_end ov97_0222D75C

	thumb_func_start ov97_0222D798
ov97_0222D798: ; 0x0222D798
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_0200682C
	add r5, r0, #0
	bl ov97_02237624
	cmp r0, #0
	beq _0222D7B0
	mov r1, #2
	b _0222D7B2
_0222D7B0:
	mov r1, #1
_0222D7B2:
	ldr r0, _0222D80C ; =0x000015D4
	str r1, [r5, r0]
	add r0, r5, #0
	add r0, #0x38
	mov r1, #0
	bl ov97_0222D444
	add r4, r5, #0
	ldr r0, [r5, #0x48]
	add r4, #0x48
	cmp r0, #0
	bne _0222D7EA
	mov r0, #0xa
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x6b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D7EA:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r2, #2
	ldr r1, _0222D810 ; =0x0223E598
	add r0, r6, #0
	add r3, r4, #0
	str r2, [sp]
	bl ov97_0222DD1C
	mov r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0222D80C: .word 0x000015D4
_0222D810: .word 0x0223E598
	thumb_func_end ov97_0222D798

	thumb_func_start ov97_0222D814
ov97_0222D814: ; 0x0222D814
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222D87C ; =0x000015D4
	mov r1, #4
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl ov97_0222D444
	add r5, r4, #0
	ldr r0, [r4, #0x48]
	add r5, #0x48
	cmp r0, #0
	bne _0222D85A
	mov r0, #0xa
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x6b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D85A:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #0x4e
	str r0, [sp]
	ldr r1, _0222D880 ; =0x0223E568
	add r0, r6, #0
	mov r2, #2
	add r3, r5, #0
	bl ov97_0222DD1C
	mov r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222D87C: .word 0x000015D4
_0222D880: .word 0x0223E568
	thumb_func_end ov97_0222D814

	thumb_func_start ov97_0222D884
ov97_0222D884: ; 0x0222D884
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222D8EC ; =0x000015D4
	mov r1, #3
	str r1, [r4, r0]
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl ov97_0222D444
	add r5, r4, #0
	ldr r0, [r4, #0x48]
	add r5, #0x48
	cmp r0, #0
	bne _0222D8CA
	mov r0, #0xa
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x6b
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, r5, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D8CA:
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #0x4d
	str r0, [sp]
	ldr r1, _0222D8F0 ; =0x0223E578
	add r0, r6, #0
	mov r2, #2
	add r3, r5, #0
	bl ov97_0222DD1C
	mov r0, #5
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222D8EC: .word 0x000015D4
_0222D8F0: .word 0x0223E578
	thumb_func_end ov97_0222D884

	thumb_func_start ov97_0222D8F4
ov97_0222D8F4: ; 0x0222D8F4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r1, [r0, #0x48]
	add r4, #0x48
	cmp r1, #0
	bne _0222D928
	mov r1, #0xa
	str r1, [sp]
	mov r1, #6
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r2, #0
	mov r1, #0x6b
	str r2, [sp, #0xc]
	lsl r1, r1, #2
	str r1, [sp, #0x10]
	ldr r0, [r0, #0]
	add r1, r4, #0
	mov r3, #0x17
	bl sub_0201A7E8
_0222D928:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #4
	str r0, [sp]
	ldr r1, _0222D948 ; =0x0223E588
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov97_0222DD1C
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_0222D948: .word 0x0223E588
	thumb_func_end ov97_0222D8F4

	thumb_func_start ov97_0222D94C
ov97_0222D94C: ; 0x0222D94C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	bl sub_02039794
	ldr r0, _0222D980 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0222D978
	bl ov97_0222D2DC
_0222D978:
	add r0, r5, #0
	bl ov97_0222DA84
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222D980: .word 0x000015D4
	thumb_func_end ov97_0222D94C

	thumb_func_start ov97_0222D984
ov97_0222D984: ; 0x0222D984
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #3
	bl ov97_0222DE78
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	ldr r0, _0222D9B8 ; =0x0223F1A8
	mov r1, #0x25
	str r1, [r0, #0]
	mov r0, #0x20
	pop {r3, r4, r5, pc}
	nop
_0222D9B8: .word 0x0223F1A8
	thumb_func_end ov97_0222D984

	thumb_func_start ov97_0222D9BC
ov97_0222D9BC: ; 0x0222D9BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	sub r0, r0, #2
	cmp r0, #2
	bhi _0222D9D4
	mov r0, #0x31
	pop {r3, r4, r5, pc}
_0222D9D4:
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r4, #0x18
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #7
	bl ov97_0222DE78
	mov r0, #0x21
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_0222D9BC

	thumb_func_start ov97_0222D9F0
ov97_0222D9F0: ; 0x0222D9F0
	push {r3, lr}
	ldr r0, _0222DA14 ; =0x0223F1A8
	ldr r0, [r0, #0]
	cmp r0, #0x28
	beq _0222DA02
	cmp r0, #0x29
	beq _0222DA02
	cmp r0, #0x30
	bne _0222DA10
_0222DA02:
	bl ov97_022389C8
	cmp r0, #0
	beq _0222DA10
	ldr r0, _0222DA14 ; =0x0223F1A8
	mov r1, #0x2b
	str r1, [r0, #0]
_0222DA10:
	mov r0, #0x24
	pop {r3, pc}
	; .align 2, 0
_0222DA14: .word 0x0223F1A8
	thumb_func_end ov97_0222D9F0

	thumb_func_start ov97_0222DA18
ov97_0222DA18: ; 0x0222DA18
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #3
	bl ov97_0222DE78
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	mov r1, #1
	ldr r0, _0222DA5C ; =0x000015E0
	lsl r1, r1, #0xc
	str r1, [r4, r0]
	ldr r0, _0222DA60 ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x1b
	pop {r3, r4, r5, pc}
	nop
_0222DA5C: .word 0x000015E0
_0222DA60: .word 0x0000267C
	thumb_func_end ov97_0222DA18

	thumb_func_start ov97_0222DA64
ov97_0222DA64: ; 0x0222DA64
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r0, #0x38
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov97_0222DDD0
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222DA64

	thumb_func_start ov97_0222DA84
ov97_0222DA84: ; 0x0222DA84
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_0200682C
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl sub_0202442C
	ldr r0, _0222DB00 ; =0x000005C8
	ldr r1, [r5, r0]
	cmp r1, #0x1e
	bne _0222DAAA
	mov r1, #1
	add r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov97_02230224
_0222DAAA:
	add r0, r5, #0
	add r0, #0x28
	mov r1, #0
	bl ov97_0222D444
	add r4, r5, #0
	ldr r0, [r5, #0x38]
	add r4, #0x38
	cmp r0, #0
	bne _0222DADE
	mov r0, #9
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x49
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0]
	add r1, r4, #0
	mov r3, #0xf
	bl sub_0201A7E8
_0222DADE:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	mov r0, #1
	str r0, [sp]
	ldr r1, _0222DB04 ; =0x0223E5F0
	add r0, r6, #0
	mov r2, #4
	add r3, r4, #0
	bl ov97_0222DD1C
	mov r0, #4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222DB00: .word 0x000005C8
_0222DB04: .word 0x0223E5F0
	thumb_func_end ov97_0222DA84

	thumb_func_start ov97_0222DB08
ov97_0222DB08: ; 0x0222DB08
	push {r4, lr}
	bl sub_0200682C
	ldr r1, _0222DB38 ; =0x000005C8
	add r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #0x1e
	bne _0222DB22
	mov r2, #1
	add r1, r1, #4
	str r2, [r4, r1]
	bl ov97_02230224
_0222DB22:
	ldr r2, _0222DB3C ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x36
	mov r3, #2
	bl ov97_02237790
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0222DB38: .word 0x000005C8
_0222DB3C: .word 0x000015D8
	thumb_func_end ov97_0222DB08

	thumb_func_start ov97_0222DB40
ov97_0222DB40: ; 0x0222DB40
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _0222DB70 ; =0x000005C8
	ldr r1, [r4, r0]
	cmp r1, #0x1e
	bne _0222DB56
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
_0222DB56:
	mov r0, #1
	bl ov97_02237784
	ldr r2, _0222DB74 ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x35
	mov r3, #2
	bl ov97_02237790
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	; .align 2, 0
_0222DB70: .word 0x000005C8
_0222DB74: .word 0x000015D8
	thumb_func_end ov97_0222DB40

	thumb_func_start ov97_0222DB78
ov97_0222DB78: ; 0x0222DB78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r3, #0
	ldr r3, _0222DBC0 ; =0x0223D73C
	add r7, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	lsr r1, r6, #0xb
	str r0, [r2, #0]
	add r0, sp, #0
	strb r1, [r0, #0x12]
	lsr r1, r5, #0xe
	strb r1, [r0, #0x13]
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r2, ip
	mov r3, #0
	bl sub_020183C4
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DBC0: .word 0x0223D73C
	thumb_func_end ov97_0222DB78

	thumb_func_start ov97_0222DBC4
ov97_0222DBC4: ; 0x0222DBC4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _0222DC1C ; =0x0223D72C
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	mov r1, #0
	mov r2, #0xf
	add r0, r4, #0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl ov97_0222DB78
	mov r1, #1
	mov r2, #0x3e
	add r0, r4, #0
	lsl r2, r2, #0xa
	lsl r3, r1, #0xf
	bl ov97_0222DB78
	mov r2, #0xe
	add r0, r4, #0
	mov r1, #4
	lsl r2, r2, #0xa
	mov r3, #0
	bl ov97_0222DB78
	mov r2, #0x1e
	mov r3, #1
	add r0, r4, #0
	mov r1, #5
	lsl r2, r2, #0xa
	lsl r3, r3, #0xe
	bl ov97_0222DB78
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222DC1C: .word 0x0223D72C
	thumb_func_end ov97_0222DBC4

	thumb_func_start ov97_0222DC20
ov97_0222DC20: ; 0x0222DC20
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	mov r2, #4
	str r0, [sp]
	mov r0, #0x56
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0
	add r3, #0xfc
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x56
	str r0, [sp, #0xc]
	mov r0, #0x74
	add r2, r4, #0
	mov r3, #5
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x56
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r1, #2
	add r2, r4, #0
	mov r3, #5
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r4, #0
	mov r1, #5
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222DC20

	thumb_func_start ov97_0222DC9C
ov97_0222DC9C: ; 0x0222DC9C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x56
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0
	add r3, r0, #0
	add r2, r1, #0
	add r3, #0x8c
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r0, #0x56
	str r0, [sp, #0xc]
	mov r0, #0x74
	add r2, r4, #0
	add r3, r1, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x56
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r1, #2
	add r2, r4, #0
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #8
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r4, #0
	mov r1, #1
	bl sub_02019448
	add r0, r4, #0
	bl ov97_0222DC20
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222DC9C

	thumb_func_start ov97_0222DD1C
ov97_0222DD1C: ; 0x0222DD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp]
	add r5, r1, #0
	add r7, r2, #0
	str r3, [sp, #4]
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _0222DD38
	bl sub_02013A3C
_0222DD38:
	add r0, r7, #0
	mov r1, #0x56
	bl sub_02013A04
	str r0, [r4, #0x7c]
	ldr r2, _0222DDC8 ; =0x000001A5
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x56
	bl sub_0200B144
	mov r6, #0
	str r0, [r4, #0x10]
	cmp r7, #0
	ble _0222DD6A
_0222DD56:
	ldr r0, [r4, #0x7c]
	ldr r1, [r4, #0x10]
	ldr r2, [r5, #0]
	ldr r3, [r5, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r5, #8
	cmp r6, r7
	blt _0222DD56
_0222DD6A:
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r3, _0222DDCC ; =0x0223E5D0
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x7c]
	str r0, [sp, #8]
	add r0, sp, #8
	strh r7, [r0, #0x12]
	ldrh r1, [r0, #0x12]
	strh r1, [r0, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x78]
	cmp r0, #0
	beq _0222DDA2
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
_0222DDA2:
	mov r1, #0
	add r0, sp, #8
	add r2, r1, #0
	mov r3, #0x56
	bl sub_0200112C
	str r0, [r4, #0x78]
	mov r0, #0
	ldr r2, [sp, #0x40]
	mvn r0, r0
	cmp r2, r0
	beq _0222DDC4
	add r4, #0x18
	ldr r0, [sp]
	add r1, r4, #0
	bl ov97_0222DE78
_0222DDC4:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DDC8: .word 0x000001A5
_0222DDCC: .word 0x0223E5D0
	thumb_func_end ov97_0222DD1C

	thumb_func_start ov97_0222DDD0
ov97_0222DDD0: ; 0x0222DDD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x14]
	add r7, r1, #0
	str r2, [sp, #0x1c]
	bl sub_0200682C
	str r0, [sp, #0x18]
	ldr r0, [r0, #4]
	mov r5, #0
	bl sub_0202442C
	ldr r1, _0222DE74 ; =0x0223E568
	ldr r4, [sp, #0x18]
	ldr r2, [r1, #0x50]
	ldr r1, [r1, #0x54]
	add r4, #0x28
	add r5, r5, #1
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	bl sub_0202DD88
	cmp r0, #0
	beq _0222DE14
	lsl r6, r5, #3
	add r0, sp, #0x20
	add r1, r0, r6
	ldr r0, _0222DE74 ; =0x0223E568
	add r5, r5, #1
	ldr r3, [r0, #0x58]
	ldr r2, [r0, #0x5c]
	add r0, sp, #0x20
	str r3, [r0, r6]
	str r2, [r1, #4]
_0222DE14:
	lsl r6, r5, #3
	add r0, sp, #0x20
	add r1, r0, r6
	ldr r0, _0222DE74 ; =0x0223E568
	ldr r3, [r0, #0x60]
	ldr r2, [r0, #0x64]
	add r0, sp, #0x20
	str r3, [r0, r6]
	str r2, [r1, #4]
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0222DE52
	mov r0, #7
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	add r0, r5, #1
	lsl r0, r0, #0x19
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r2, #0
	lsl r0, r7, #0x10
	str r2, [sp, #0xc]
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	ldr r0, [r0, #0]
	mov r3, #8
	bl sub_0201A7E8
_0222DE52:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r5, #1
	add r3, r4, #0
	bl ov97_0222DD1C
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DE74: .word 0x0223E568
	thumb_func_end ov97_0222DDD0

	thumb_func_start ov97_0222DE78
ov97_0222DE78: ; 0x0222DE78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r2, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r2, _0222DF08 ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x56
	bl sub_0200B144
	str r0, [r4, #0x10]
	mov r0, #0x56
	bl sub_0200B358
	str r0, [r4, #0xc]
	mov r0, #1
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0201ADA4
	ldr r6, [r4, #0x14]
	cmp r6, #0
	bne _0222DEC0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	add r2, r7, #0
	mov r3, #0x56
	bl sub_0200B29C
	add r6, r0, #0
_0222DEC0:
	mov r3, #0
	str r3, [sp]
	ldr r0, [r4, #0x68]
	mov r1, #1
	str r0, [sp, #4]
	ldr r0, _0222DF0C ; =0x0001020F
	add r2, r6, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	add r0, r5, #0
	bl sub_0201D78C
	str r0, [r4, #0x6c]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0222DEE6
	add r0, r6, #0
	bl sub_020237BC
_0222DEE6:
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #2
	bl sub_0200E060
	ldr r0, [r4, #0x10]
	bl sub_0200B190
	ldr r0, [r4, #0xc]
	bl sub_0200B3F0
	mov r0, #0xff
	str r0, [r4, #0x68]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222DF08: .word 0x000001A5
_0222DF0C: .word 0x0001020F
	thumb_func_end ov97_0222DE78

	thumb_func_start ov97_0222DF10
ov97_0222DF10: ; 0x0222DF10
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0200682C
	mov r0, #0x25
	mov r1, #0x56
	bl sub_02023790
	add r1, r6, #0
	mov r2, #0x24
	add r4, r0, #0
	bl sub_02023D8C
	mov r0, #0
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222DF6C ; =0x0001020F
	add r2, r4, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DC48
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222DF6C: .word 0x0001020F
	thumb_func_end ov97_0222DF10

	thumb_func_start ov97_0222DF70
ov97_0222DF70: ; 0x0222DF70
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0200682C
	ldr r0, [r0, #0x78]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0222DF94
	add r0, r0, #1
	cmp r4, r0
	beq _0222DFCA
	b _0222DFAE
_0222DF94:
	ldr r0, _0222DFCC ; =0x000005DC
	bl sub_02005748
	cmp r6, #0
	beq _0222DFCA
	add r0, r7, #0
	blx r6
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222DFCA
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_0222DFAE:
	ldr r0, _0222DFCC ; =0x000005DC
	bl sub_02005748
	cmp r4, #0
	beq _0222DFCA
	ldr r0, _0222DFD0 ; =0x0223F1A8
	str r4, [r0, #0x10]
	add r0, r7, #0
	blx r4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222DFCA
	str r0, [r5, #0]
_0222DFCA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222DFCC: .word 0x000005DC
_0222DFD0: .word 0x0223F1A8
	thumb_func_end ov97_0222DF70

	thumb_func_start ov97_0222DFD4
ov97_0222DFD4: ; 0x0222DFD4
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201D710
	mov r0, #0
	add r1, r0, #0
	mov r2, #0x56
	bl sub_02002E7C
	mov r0, #0
	mov r1, #0x20
	mov r2, #0x56
	bl sub_02002E7C
	ldr r0, [r4, #8]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x56
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #1
	mov r3, #2
	bl sub_0200DD0C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x56
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	mov r1, #0
	mov r2, #0x1f
	mov r3, #3
	bl sub_0200DAA4
	mov r0, #5
	ldr r1, _0222E07C ; =0x00007D8C
	lsl r0, r0, #0x18
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x18
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222E058
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	add r1, r4, #0
	str r2, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x18
	mov r3, #2
	bl sub_0201A7E8
_0222E058:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x18
	mov r2, #0
	bl ov97_0222DE78
	add r0, r5, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov97_0222DDD0
	ldr r0, [r4, #0]
	bl ov97_0222DC9C
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0222E07C: .word 0x00007D8C
	thumb_func_end ov97_0222DFD4

	thumb_func_start ov97_0222E080
ov97_0222E080: ; 0x0222E080
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r1, _0222E12C ; =0x000015E0
	add r0, r6, #0
	add r1, r4, r1
	bl ov97_02238EAC
	cmp r0, #4
	bhi _0222E128
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E0A6: ; jump table
	.short _0222E128 - _0222E0A6 - 2 ; case 0
	.short _0222E0B0 - _0222E0A6 - 2 ; case 1
	.short _0222E0DC - _0222E0A6 - 2 ; case 2
	.short _0222E0DC - _0222E0A6 - 2 ; case 3
	.short _0222E0F0 - _0222E0A6 - 2 ; case 4
_0222E0B0:
	ldr r1, _0222E130 ; =0x00001658
	add r0, r4, #0
	mov r2, #0xea
	add r0, #0x8c
	add r1, r4, r1
	lsl r2, r2, #2
	bl sub_020D50B8
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r0, r4, #0
	mov r1, #0x1b
	add r0, #0x84
	str r1, [r0, #0]
	mov r0, #0x13
	str r0, [r5, #0]
	ldr r0, _0222E134 ; =0x000015DC
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0222E0DC:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	ldr r0, _0222E134 ; =0x000015DC
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #0x11
	str r0, [r5, #0]
	pop {r4, r5, r6, pc}
_0222E0F0:
	mov r0, #0x9a
	lsl r0, r0, #6
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x9a
	lsl r0, r0, #6
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02019EBC
	ldr r0, _0222E138 ; =0x000005DC
	bl sub_02005748
	add r0, r6, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov97_0222DDD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #3
	str r0, [r5, #0]
_0222E128:
	pop {r4, r5, r6, pc}
	nop
_0222E12C: .word 0x000015E0
_0222E130: .word 0x00001658
_0222E134: .word 0x000015DC
_0222E138: .word 0x000005DC
	thumb_func_end ov97_0222E080

	thumb_func_start ov97_0222E13C
ov97_0222E13C: ; 0x0222E13C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x5c
	add r5, r0, #0
	ldr r0, _0222E1CC ; =0x0000266C
	ldr r4, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222E150
	mov r4, #0xb
_0222E150:
	add r0, r5, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_02019EBC
	mov r0, #0x56
	bl sub_0200B358
	mov r1, #2
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r2, _0222E1D0 ; =0x00002670
	mov r1, #0
	ldr r2, [r5, r2]
	mov r3, #5
	add r6, r0, #0
	bl sub_0200B60C
	mov r0, #0x1f
	mov r1, #0x9a
	str r0, [sp]
	mov r0, #3
	lsl r1, r1, #6
	str r0, [sp, #4]
	ldr r3, _0222E1D4 ; =0x000002B7
	add r0, sp, #8
	add r1, r5, r1
	mov r2, #1
	bl ov97_02237808
	add r0, sp, #8
	mov r1, #0x18
	mov r2, #0x10
	mov r3, #0x64
	bl ov97_02237858
	add r0, sp, #8
	mov r1, #0
	mov r2, #1
	bl ov97_02237860
	str r6, [sp, #0x1c]
	str r4, [sp]
	mov r2, #4
	ldr r0, [r5, #0]
	add r1, sp, #8
	add r3, r2, #0
	bl ov97_0223795C
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x5c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222E1CC: .word 0x0000266C
_0222E1D0: .word 0x00002670
_0222E1D4: .word 0x000002B7
	thumb_func_end ov97_0222E13C

	thumb_func_start ov97_0222E1D8
ov97_0222E1D8: ; 0x0222E1D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r1, r0, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #3
	bne _0222E1EE
	mov r4, #0x15
	b _0222E218
_0222E1EE:
	cmp r0, #4
	bne _0222E1F6
	mov r4, #0x19
	b _0222E218
_0222E1F6:
	cmp r0, #2
	bne _0222E1FE
	mov r4, #0x16
	b _0222E218
_0222E1FE:
	cmp r0, #1
	bne _0222E206
	mov r4, #0x1b
	b _0222E218
_0222E206:
	cmp r0, #5
	bne _0222E218
	add r0, r5, #0
	add r1, #0x18
	mov r2, #9
	mov r3, #0x34
	bl ov97_0222E228
	pop {r3, r4, r5, pc}
_0222E218:
	add r0, r5, #0
	add r1, #0x18
	add r2, r4, #0
	mov r3, #0x33
	bl ov97_0222E228
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_0222E1D8

	thumb_func_start ov97_0222E228
ov97_0222E228: ; 0x0222E228
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	add r6, r1, #0
	add r5, r2, #0
	add r7, r3, #0
	bl sub_0200682C
	add r4, r0, #0
	cmp r6, #0
	beq _0222E282
	cmp r5, #0
	beq _0222E282
	ldr r2, _0222E2A8 ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x56
	bl sub_0200B144
	str r0, [sp, #4]
	mov r0, #0x56
	bl sub_0200B358
	ldr r1, [sp, #4]
	add r2, r5, #0
	mov r3, #0x56
	str r0, [sp, #8]
	bl sub_0200B29C
	str r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #0x68]
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r5, #0
	bl ov97_0222DE78
	ldr r0, [sp, #8]
	str r7, [r4, #0x74]
	bl sub_0200B3F0
	ldr r0, [sp, #4]
	bl sub_0200B190
	b _0222E2A2
_0222E282:
	ldr r0, [r4, #0x6c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0222E2A2
	ldr r0, [r4, #0x14]
	bl sub_020237BC
	mov r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x68]
	add sp, #0xc
	ldr r0, [r4, #0x74]
	pop {r4, r5, r6, r7, pc}
_0222E2A2:
	mov r0, #0x32
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E2A8: .word 0x000001A5
	thumb_func_end ov97_0222E228

	thumb_func_start ov97_0222E2AC
ov97_0222E2AC: ; 0x0222E2AC
	push {r3, lr}
	ldr r1, _0222E2D8 ; =0x000015D4
	ldr r0, [r0, r1]
	cmp r0, #4
	bhi _0222E2D4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222E2C2: ; jump table
	.short _0222E2D4 - _0222E2C2 - 2 ; case 0
	.short _0222E2CC - _0222E2C2 - 2 ; case 1
	.short _0222E2D4 - _0222E2C2 - 2 ; case 2
	.short _0222E2D4 - _0222E2C2 - 2 ; case 3
	.short _0222E2D4 - _0222E2C2 - 2 ; case 4
_0222E2CC:
	bl ov97_0222D2DC
	bl sub_02039794
_0222E2D4:
	pop {r3, pc}
	nop
_0222E2D8: .word 0x000015D4
	thumb_func_end ov97_0222E2AC

	thumb_func_start ov97_0222E2DC
ov97_0222E2DC: ; 0x0222E2DC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov97_022301B0
	mov r0, #3
	mov r1, #0x56
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r1, _0222E384 ; =0x000029F8
	add r0, r5, #0
	mov r2, #0x56
	bl sub_0200681C
	ldr r2, _0222E384 ; =0x000029F8
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x56
	bl sub_02018340
	str r0, [r4, #0]
	bl sub_0201FF00
	bl sub_0201FF68
	bl ov97_02232054
	ldr r0, [r4, #0]
	bl ov97_0222DBC4
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	ldr r1, _0222E388 ; =0x00000496
	mov r0, #0xa
	mov r2, #1
	bl sub_02004550
	mov r0, #0x56
	bl ov97_02237520
	bl ov97_02237624
	cmp r0, #0
	beq _0222E358
	ldr r0, _0222E38C ; =0x000015D4
	mov r1, #2
	str r1, [r4, r0]
	ldr r0, _0222E390 ; =0x020E4C40
	ldrb r0, [r0]
	bl sub_02017B70
	mov r0, #1
	bl ov97_02238400
_0222E358:
	ldr r0, _0222E394 ; =0x000005C8
	mov r1, #0x1d
	str r1, [r4, r0]
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl sub_02025E44
	str r0, [r4, #8]
	mov r0, #0xff
	mov r2, #3
	str r0, [r4, #0x68]
	mov r0, #0
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222E384: .word 0x000029F8
_0222E388: .word 0x00000496
_0222E38C: .word 0x000015D4
_0222E390: .word 0x020E4C40
_0222E394: .word 0x000005C8
	thumb_func_end ov97_0222E2DC

	thumb_func_start ov97_0222E398
ov97_0222E398: ; 0x0222E398
	push {r4, r5, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, _0222E530 ; =0x00004E21
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r1, #0x56
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xd6
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x27
	bl sub_0200985C
	str r0, [r4, #0x58]
	ldr r0, _0222E530 ; =0x00004E21
	mov r1, #0x56
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	add r1, #0xda
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x24
	mov r3, #0
	bl sub_020098B8
	str r0, [r4, #0x5c]
	ldr r0, _0222E530 ; =0x00004E21
	mov r1, #0x56
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xde
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x26
	mov r3, #1
	bl sub_02009918
	str r0, [r4, #0x60]
	ldr r0, _0222E530 ; =0x00004E21
	mov r1, #0x56
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xe2
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x25
	mov r3, #1
	bl sub_02009918
	str r0, [r4, #0x64]
	ldr r0, _0222E534 ; =0x00004E22
	mov r1, #0x56
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xd6
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x27
	mov r3, #1
	bl sub_0200985C
	str r0, [r4, #0x70]
	ldr r0, _0222E534 ; =0x00004E22
	mov r1, #0x56
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	add r1, #0xda
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x24
	mov r3, #0
	bl sub_020098B8
	str r0, [r4, #0x74]
	ldr r0, _0222E534 ; =0x00004E22
	mov r1, #0x56
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xde
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x26
	mov r3, #1
	bl sub_02009918
	str r0, [r4, #0x78]
	ldr r0, _0222E534 ; =0x00004E22
	mov r1, #0x56
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xe2
	ldr r0, [r0, r1]
	mov r1, #0x74
	mov r2, #0x25
	mov r3, #1
	bl sub_02009918
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x58]
	bl sub_0200A328
	ldr r0, [r4, #0x70]
	bl sub_0200A328
	ldr r0, [r4, #0x5c]
	bl sub_0200A640
	ldr r0, [r4, #0x74]
	bl sub_0200A640
	mov r0, #0
	mov r5, #0x4b
	ldr r2, [r4, #0xc]
	ldr r1, _0222E530 ; =0x00004E21
	mvn r0, r0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r5, r5, #2
	ldr r3, [r2, r5]
	str r3, [sp, #0x14]
	add r3, r5, #4
	ldr r3, [r2, r3]
	str r3, [sp, #0x18]
	add r3, r5, #0
	add r3, #8
	ldr r3, [r2, r3]
	add r5, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r2, r5]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r0, #0x10
	add r2, r1, #0
	bl sub_020093B4
	ldr r2, [r4, #0xc]
	ldr r1, _0222E534 ; =0x00004E22
	mov r0, #0
	mov r5, #0x4b
	add r4, #0x10
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r5, r5, #2
	ldr r3, [r2, r5]
	add r4, #0x24
	str r3, [sp, #0x14]
	add r3, r5, #4
	ldr r3, [r2, r3]
	str r3, [sp, #0x18]
	add r3, r5, #0
	add r3, #8
	ldr r3, [r2, r3]
	add r5, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r2, r5]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r2, r1, #0
	bl sub_020093B4
	add sp, #0x2c
	pop {r4, r5, pc}
	; .align 2, 0
_0222E530: .word 0x00004E21
_0222E534: .word 0x00004E22
	thumb_func_end ov97_0222E398

	thumb_func_start ov97_0222E538
ov97_0222E538: ; 0x0222E538
	push {r4, lr}
	sub sp, #0x30
	cmp r1, #1
	beq _0222E544
	mov r3, #1
	b _0222E546
_0222E544:
	mov r3, #0
_0222E546:
	ldr r2, [r0, #0xc]
	add r0, #0x10
	ldr r2, [r2, #0]
	str r2, [sp]
	mov r2, #0x24
	mul r2, r3
	add r0, r0, r2
	mov r3, #1
	lsl r3, r3, #0xc
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, sp, #0
	strh r2, [r0, #0x20]
	lsl r0, r3, #7
	str r0, [sp, #8]
	mov r0, #0xa
	lsl r2, r3, #5
	str r0, [sp, #0x24]
	mov r0, #0x56
	str r2, [sp, #0xc]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r1, #2
	bne _0222E584
	lsl r0, r3, #8
	add r0, r2, r0
	str r0, [sp, #0xc]
_0222E584:
	add r0, sp, #0
	bl sub_02021AA0
	add r4, r0, #0
	beq _0222E5AC
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	mov r1, #0
	bl sub_02021E80
	add r0, r4, #0
	mov r1, #0
	bl sub_02021D6C
	add r0, r4, #0
	mov r1, #1
	bl sub_02021CAC
_0222E5AC:
	add r0, r4, #0
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222E538

	thumb_func_start ov97_0222E5B4
ov97_0222E5B4: ; 0x0222E5B4
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ov97_0222E538
	ldr r1, _0222E608 ; =0x00003014
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_02021DCC
	ldr r0, _0222E608 ; =0x00003014
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021E50
	ldr r0, _0222E608 ; =0x00003014
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222E608 ; =0x00003014
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021F58
	ldr r0, _0222E608 ; =0x00003014
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02021CF8
	ldr r0, _0222E608 ; =0x00003014
	ldr r0, [r4, r0]
	bl sub_02021D28
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [r0, #0]
	mov r1, #6
	lsl r1, r1, #0x10
	str r1, [r0, #4]
	pop {r4, pc}
	; .align 2, 0
_0222E608: .word 0x00003014
	thumb_func_end ov97_0222E5B4

	thumb_func_start ov97_0222E60C
ov97_0222E60C: ; 0x0222E60C
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	bl ov97_0222E538
	ldr r1, _0222E660 ; =0x00003060
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #4
	bl sub_02021DCC
	ldr r0, _0222E660 ; =0x00003060
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021E50
	ldr r0, _0222E660 ; =0x00003060
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	ldr r0, _0222E660 ; =0x00003060
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021F58
	ldr r0, _0222E660 ; =0x00003060
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02021CF8
	ldr r0, _0222E660 ; =0x00003060
	ldr r0, [r4, r0]
	bl sub_02021D28
	mov r1, #2
	lsl r1, r1, #0x12
	str r1, [r0, #0]
	lsl r1, r1, #1
	str r1, [r0, #4]
	pop {r4, pc}
	nop
_0222E660: .word 0x00003060
	thumb_func_end ov97_0222E60C

	thumb_func_start ov97_0222E664
ov97_0222E664: ; 0x0222E664
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222E678 ; =0x00003014
	ldr r0, [r4, r0]
	bl sub_02021BD4
	ldr r0, _0222E678 ; =0x00003014
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0222E678: .word 0x00003014
	thumb_func_end ov97_0222E664

	thumb_func_start ov97_0222E67C
ov97_0222E67C: ; 0x0222E67C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222E690 ; =0x00003060
	ldr r0, [r4, r0]
	bl sub_02021BD4
	ldr r0, _0222E690 ; =0x00003060
	mov r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_0222E690: .word 0x00003060
	thumb_func_end ov97_0222E67C

	thumb_func_start ov97_0222E694
ov97_0222E694: ; 0x0222E694
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #2
	ldr r7, _0222E6EC ; =0x00001854
	str r0, [sp]
	mov r4, #0
	add r5, r0, #0
	lsl r6, r6, #0xc
_0222E6A2:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222E6B2
	add r1, r6, #0
	bl sub_02021E2C
_0222E6B2:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0222E6BE
	add r1, r6, #0
	bl sub_02021E2C
_0222E6BE:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E6A2
	ldr r1, _0222E6F0 ; =0x00003014
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0222E6D8
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_02021E2C
_0222E6D8:
	ldr r1, _0222E6F4 ; =0x00003060
	ldr r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0222E6EA
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_02021E2C
_0222E6EA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E6EC: .word 0x00001854
_0222E6F0: .word 0x00003014
_0222E6F4: .word 0x00003060
	thumb_func_end ov97_0222E694

	thumb_func_start ov97_0222E6F8
ov97_0222E6F8: ; 0x0222E6F8
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	mov r7, #1
_0222E702:
	add r0, r6, #0
	add r1, r7, #0
	bl ov97_0222E538
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021DCC
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021E50
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E702
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_0222E6F8

	thumb_func_start ov97_0222E734
ov97_0222E734: ; 0x0222E734
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	add r7, r4, #0
_0222E73E:
	cmp r4, #0x14
	bge _0222E76A
	add r0, r6, #0
	mov r1, #1
	bl ov97_0222E538
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021DCC
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021E50
	b _0222E770
_0222E76A:
	add r0, r5, #0
	add r0, #0x94
	str r7, [r0, #0]
_0222E770:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E73E
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_0222E734

	thumb_func_start ov97_0222E77C
ov97_0222E77C: ; 0x0222E77C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _0222E7B0 ; =0x00001854
	mov r4, #0
	add r5, r6, #0
_0222E786:
	add r0, r6, #0
	mov r1, #2
	bl ov97_0222E538
	ldr r1, _0222E7B0 ; =0x00001854
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #5
	bl sub_02021DCC
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021E50
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E786
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E7B0: .word 0x00001854
	thumb_func_end ov97_0222E77C

	thumb_func_start ov97_0222E7B4
ov97_0222E7B4: ; 0x0222E7B4
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_0222E7BC:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222E7DA
	bl sub_02021BD4
	add r0, r5, #0
	add r0, #0x94
	str r6, [r0, #0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200DA58
_0222E7DA:
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E7BC
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_0222E7B4

	thumb_func_start ov97_0222E7E4
ov97_0222E7E4: ; 0x0222E7E4
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r7, _0222E80C ; =0x00001890
	add r5, r0, #0
	add r6, r4, #0
_0222E7EE:
	ldr r0, _0222E810 ; =0x00001854
	ldr r0, [r5, r0]
	bl sub_02021BD4
	ldr r0, _0222E810 ; =0x00001854
	str r6, [r5, r0]
	ldr r0, [r5, r7]
	bl sub_0200DA58
	add r4, r4, #1
	add r5, #0x4c
	cmp r4, #0x50
	blt _0222E7EE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0222E80C: .word 0x00001890
_0222E810: .word 0x00001854
	thumb_func_end ov97_0222E7E4

	thumb_func_start ov97_0222E814
ov97_0222E814: ; 0x0222E814
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xb8
	add r5, r0, #0
	str r0, [sp]
	add r0, #0x88
	ldr r3, _0222EA58 ; =0x0223D758
	mov r4, #0
	add r7, sp, #0x64
	str r0, [sp]
	add r2, sp, #0x10
	mov r6, #0xa
_0222E82A:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0222E82A
	ldr r0, [r3, #0]
	str r0, [r2, #0]
_0222E836:
	mov r2, #2
	add r0, r5, #0
	mov r1, #6
	lsl r2, r2, #0x12
	add r0, #0x98
	str r2, [r0, #0]
	add r0, r5, #0
	lsl r1, r1, #0x10
	add r0, #0x9c
	str r1, [r0, #0]
	add r0, r5, #0
	lsr r1, r2, #5
	add r0, #0xa4
	str r1, [r0, #0]
	mov r1, #5
	add r0, r5, #0
	lsl r1, r1, #0xc
	add r0, #0xa8
	str r1, [r0, #0]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r5, #0
	add r1, r2, r1
	add r0, #0xb4
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0xbc
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0xa
	bl sub_020E1F6C
	add r0, r0, #4
	cmp r0, #0
	ble _0222E89C
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222E8AA
_0222E89C:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222E8AA:
	bl sub_020E1740
	add r1, r5, #0
	add r1, #0xa4
	str r0, [r1, #0]
	cmp r4, #0x32
	ble _0222E8D2
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	mov r0, #0x41
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E8D2:
	cmp r4, #0x28
	ble _0222E8EE
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r0, r4, #0
	add r0, #0xfa
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E8EE:
	cmp r4, #0x1e
	ble _0222E90A
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r0, r4, #0
	add r0, #0xf0
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E90A:
	cmp r4, #0x19
	ble _0222E926
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r0, r4, #0
	add r0, #0xe6
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E926:
	cmp r4, #0x14
	ble _0222E942
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r0, r4, #0
	add r0, #0xdc
	add r1, r0, r1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222E95C
_0222E942:
	add r6, sp, #0x10
	add r3, sp, #0x64
	mov r2, #0xa
_0222E948:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222E948
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	add r0, r5, #0
	ldr r1, [r7, #0]
	add r0, #0xb8
	str r1, [r0, #0]
_0222E95C:
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r1, r0, #1
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	bl sub_020E01B8
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _0222EA5C ; =0x66666666
	ldr r1, _0222EA60 ; =0x3FE66666
	bl sub_020E0234
	bl sub_020E0088
	add r1, r5, #0
	add r1, #0xb8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xb8
	str r1, [r0, #0]
	add r0, r5, #0
	mov r1, #0xf
	add r0, #0xc0
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xcc
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	bl sub_0201D2E8
	mov r1, #0xe0
	bl sub_020E1F6C
	add r1, #0x10
	cmp r1, #0
	ble _0222E9F6
	bl sub_0201D2E8
	mov r1, #0xe0
	bl sub_020E1F6C
	add r1, #0x10
	lsl r0, r1, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222EA10
_0222E9F6:
	bl sub_0201D2E8
	mov r1, #0xe0
	bl sub_020E1F6C
	add r1, #0x10
	lsl r0, r1, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222EA10:
	bl sub_020E1740
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #4
	bl sub_02021C50
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0222EA64 ; =ov97_0222EEB8
	ldr r1, [sp]
	mov r2, #6
	bl sub_0200D9E8
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	ldr r0, [sp]
	add r4, r4, #1
	add r0, #0x4c
	add r5, #0x4c
	add r7, r7, #4
	str r0, [sp]
	cmp r4, #0x50
	bge _0222EA54
	b _0222E836
_0222EA54:
	add sp, #0xb8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222EA58: .word 0x0223D758
_0222EA5C: .word 0x66666666
_0222EA60: .word 0x3FE66666
_0222EA64: .word ov97_0222EEB8
	thumb_func_end ov97_0222E814

	thumb_func_start ov97_0222EA68
ov97_0222EA68: ; 0x0222EA68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r5, #0
	mov r4, #0
	add r7, #0x88
_0222EA74:
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0222EA80
	b _0222EBBC
_0222EA80:
	add r1, r5, #0
	mov r0, #2
	add r1, #0x98
	lsl r0, r0, #0x12
	str r0, [r1, #0]
	add r1, r5, #0
	mov r0, #6
	add r1, #0x9c
	lsl r0, r0, #0x10
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xa4
	lsr r0, r0, #3
	str r0, [r1, #0]
	add r1, r5, #0
	mov r0, #1
	add r1, #0xa8
	lsl r0, r0, #0xc
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xb4
	mov r0, #0xff
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0xbc
	mov r0, #0
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1, #0]
	cmp r4, #0x1e
	ble _0222EADA
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	add r0, r5, #0
	add r1, #0xf
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222EB1C
_0222EADA:
	cmp r4, #0x14
	ble _0222EAF2
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	add r0, r5, #0
	add r1, #0xa
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222EB1C
_0222EAF2:
	cmp r4, #0xa
	ble _0222EB0A
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r0, r5, #0
	add r1, #0xa
	add r0, #0xb8
	str r1, [r0, #0]
	b _0222EB1C
_0222EB0A:
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	add r0, r5, #0
	add r1, r1, #5
	add r0, #0xb8
	str r1, [r0, #0]
_0222EB1C:
	add r1, r5, #0
	add r1, #0xb8
	mov r0, #0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc8
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xc0
	ldr r1, [r0, #0]
	add r0, r5, #0
	add r0, #0xcc
	str r1, [r0, #0]
	bl sub_0201D2E8
	mov r1, #0x5a
	lsl r1, r1, #2
	bl sub_020E1F6C
	str r1, [sp]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1b
	sub r1, r1, r2
	mov r0, #0x1b
	ror r1, r0
	ldr r0, [sp]
	add r6, r2, r1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	add r6, #0x40
	bl sub_0201D250
	add r1, r5, #0
	add r1, #0x98
	ldr r1, [r1, #0]
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r1, r5, #0
	add r1, #0x9c
	ldr r1, [r1, #0]
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, sp, #4
	bl sub_02021C50
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021DCC
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, _0222EBCC ; =ov97_0222EEB8
	add r1, r7, #0
	mov r2, #6
	bl sub_0200D9E8
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
_0222EBBC:
	add r4, r4, #1
	add r5, #0x4c
	add r7, #0x4c
	cmp r4, #0x50
	bge _0222EBC8
	b _0222EA74
_0222EBC8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222EBCC: .word ov97_0222EEB8
	thumb_func_end ov97_0222EA68

	thumb_func_start ov97_0222EBD0
ov97_0222EBD0: ; 0x0222EBD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, _0222ED98 ; =0x00001848
	mov r4, #0
	add r6, r5, r0
_0222EBDC:
	mov r1, #2
	ldr r0, _0222ED9C ; =0x00001858
	lsl r1, r1, #0x12
	str r1, [r5, r0]
	mov r1, #6
	lsl r1, r1, #0x12
	add r0, r0, #4
	str r1, [r5, r0]
	mov r1, #1
	ldr r0, _0222EDA0 ; =0x00001864
	lsl r1, r1, #0xe
	str r1, [r5, r0]
	mov r1, #5
	lsl r1, r1, #0xc
	add r0, r0, #4
	str r1, [r5, r0]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1f
	sub r1, r1, r2
	mov r0, #0x1f
	ror r1, r0
	add r0, r2, r1
	add r1, r0, #4
	ldr r0, _0222EDA4 ; =0x00001874
	str r1, [r5, r0]
	mov r1, #0
	add r0, #8
	str r1, [r5, r0]
	ldr r0, _0222EDA8 ; =0x0000184C
	str r1, [r5, r0]
	bl sub_0201D2E8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	add r1, r0, #2
	ldr r0, _0222EDAC ; =0x00001884
	str r1, [r5, r0]
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_020E1F6C
	add r0, r0, #4
	cmp r0, #0
	ble _0222EC4E
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222EC5C
_0222EC4E:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222EC5C:
	bl sub_020E1740
	ldr r1, _0222EDA0 ; =0x00001864
	cmp r4, #0x3c
	str r0, [r5, r1]
	ble _0222EC82
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x46
	str r1, [r5, r0]
	b _0222ED30
_0222EC82:
	cmp r4, #0x32
	ble _0222ECA0
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x3c
	str r1, [r5, r0]
	b _0222ED30
_0222ECA0:
	cmp r4, #0x28
	ble _0222ECBE
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x32
	str r1, [r5, r0]
	b _0222ED30
_0222ECBE:
	cmp r4, #0x1e
	ble _0222ECDC
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x28
	str r1, [r5, r0]
	b _0222ED30
_0222ECDC:
	cmp r4, #0x14
	ble _0222ECFA
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x1e
	str r1, [r5, r0]
	b _0222ED30
_0222ECFA:
	cmp r4, #0xa
	ble _0222ED18
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0x14
	str r1, [r5, r0]
	b _0222ED30
_0222ED18:
	mov r0, #0x62
	mov r1, #5
	lsl r0, r0, #6
	str r1, [r5, r0]
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	ldr r0, _0222EDB0 ; =0x00001878
	add r1, #0xa
	str r1, [r5, r0]
_0222ED30:
	mov r0, #0x62
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	add r0, #8
	str r1, [r5, r0]
	mov r0, #0x62
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	add r0, #0xc
	str r1, [r5, r0]
	ldr r0, _0222EDB4 ; =0x00001854
	ldr r0, [r5, r0]
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	add r7, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r7, #0
	str r0, [r2, #0]
	mov r0, #2
	lsl r0, r0, #0x12
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #0x12
	str r0, [sp, #4]
	ldr r0, _0222EDB4 ; =0x00001854
	ldr r0, [r5, r0]
	bl sub_02021C50
	ldr r0, _0222EDB4 ; =0x00001854
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_02021CAC
	ldr r0, _0222EDB8 ; =ov97_0222EEB8
	add r1, r6, #0
	mov r2, #6
	bl sub_0200D9E8
	ldr r1, _0222EDBC ; =0x00001890
	add r4, r4, #1
	str r0, [r5, r1]
	add r5, #0x4c
	add r6, #0x4c
	cmp r4, #0x50
	bge _0222ED94
	b _0222EBDC
_0222ED94:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222ED98: .word 0x00001848
_0222ED9C: .word 0x00001858
_0222EDA0: .word 0x00001864
_0222EDA4: .word 0x00001874
_0222EDA8: .word 0x0000184C
_0222EDAC: .word 0x00001884
_0222EDB0: .word 0x00001878
_0222EDB4: .word 0x00001854
_0222EDB8: .word ov97_0222EEB8
_0222EDBC: .word 0x00001890
	thumb_func_end ov97_0222EBD0

	thumb_func_start ov97_0222EDC0
ov97_0222EDC0: ; 0x0222EDC0
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r1, #0
	mov r1, #0
	add r4, r2, #0
	add r6, r3, #0
	str r1, [sp]
	str r1, [sp, #4]
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1A9C
	str r0, [sp, #8]
	add r0, r5, #0
	bl sub_020E17B4
	add r1, r6, #0
	bl sub_020E1A9C
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	add r1, r0, #0
	bl sub_020E18B0
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r0, #0
	bl sub_020E18B0
	add r1, r0, #0
	add r0, r4, #0
	bl sub_020E0B00
	mov r1, #0
	add r4, r0, #0
	bl sub_020E1108
	ldr r0, _0222EEB4 ; =0x45800000
	bls _0222EE28
	add r1, r4, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222EE36
_0222EE28:
	add r1, r4, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222EE36:
	bl sub_020E1740
	bl sub_020BCFF0
	bl sub_020E17B4
	ldr r1, _0222EEB4 ; =0x45800000
	bl sub_020E1304
	ldr r1, [sp, #0x30]
	add r4, r0, #0
	bl sub_020E11CC
	blo _0222EE6E
	add r1, sp, #0x18
	mov r0, #0x1c
	ldrsh r0, [r1, r0]
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1108
	bhi _0222EE6E
	mov r0, #0
	add r1, r4, #0
	bl sub_020E1228
	bne _0222EE74
_0222EE6E:
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222EE74:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x30]
	bl sub_020E18B0
	add r1, r4, #0
	bl sub_020E1304
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x30]
	bl sub_020E18B0
	add r1, r4, #0
	bl sub_020E1304
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp]
	bl sub_020E0B00
	ldr r1, [sp, #0x28]
	str r0, [r1, #0]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #4]
	bl sub_020E0B00
	ldr r1, [sp, #0x2c]
	str r0, [r1, #0]
	mov r0, #1
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0222EEB4: .word 0x45800000
	thumb_func_end ov97_0222EDC0

	thumb_func_start ov97_0222EEB8
ov97_0222EEB8: ; 0x0222EEB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ldr r0, [r5, #0xc]
	beq _0222EED6
	mov r1, #0
	bl sub_02021E50
	ldr r0, [r5, #0x30]
	add sp, #0x24
	sub r0, r0, #1
	str r0, [r5, #0x30]
	pop {r4, r5, r6, r7, pc}
_0222EED6:
	mov r1, #1
	bl sub_02021CAC
	ldr r0, [r5, #0xc]
	bl sub_02021D28
	add r3, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0x18
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x18]
	bl sub_020E17B4
	ldr r1, _0222F200 ; =0x45800000
	bl sub_020E1304
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_020E17B4
	ldr r1, _0222F200 ; =0x45800000
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_020E17B4
	ldr r1, _0222F200 ; =0x45800000
	bl sub_020E1304
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	bl sub_020E17B4
	ldr r1, _0222F200 ; =0x45800000
	bl sub_020E1304
	bl sub_020E1740
	add r1, sp, #0x14
	str r1, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	lsl r1, r1, #4
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r6, #0
	add r3, r7, #0
	bl ov97_0222EDC0
	cmp r0, #0
	beq _0222EFCA
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _0222EFCA
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _0222F200 ; =0x45800000
	bls _0222EF70
	ldr r1, [sp, #0x14]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222EF7E
_0222EF70:
	ldr r1, [sp, #0x14]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222EF7E:
	bl sub_020E1740
	ldr r1, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _0222F200 ; =0x45800000
	bls _0222EFA6
	ldr r1, [sp, #0x10]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222EFB4
_0222EFA6:
	ldr r1, [sp, #0x10]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222EFB4:
	bl sub_020E1740
	ldr r1, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl sub_02021C50
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0222EFCA:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _0222EFD8
	cmp r0, #1
	beq _0222F04E
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_0222EFD8:
	ldr r1, [r5, #0x10]
	ldr r0, [sp, #0x18]
	sub r0, r1, r0
	cmp r0, #0
	ble _0222EFF4
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222F002
_0222EFF4:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222F002:
	add r4, r0, #0
	ldr r1, [r5, #0x14]
	ldr r0, [sp, #0x1c]
	sub r0, r1, r0
	cmp r0, #0
	ble _0222F020
	lsl r0, r0, #0xc
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222F02E
_0222F020:
	lsl r0, r0, #0xc
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222F02E:
	bl sub_020E1740
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020E1740
	add r1, r0, #0
	add r0, r6, #0
	bl sub_020BDA20
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x24]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5, #0x24]
	pop {r4, r5, r6, r7, pc}
_0222F04E:
	ldr r0, [r5, #4]
	cmp r0, #0x14
	bge _0222F05A
	add r0, r0, #1
	str r0, [r5, #4]
	b _0222F05E
_0222F05A:
	mov r0, #1
	str r0, [r5, #8]
_0222F05E:
	ldr r0, [r5, #0x28]
	add r0, #8
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _0222F0B4
	ldr r0, [r5, #0x34]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x34]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	str r1, [r5, #0x34]
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x38]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F0B4:
	cmp r0, #1
	bne _0222F102
	ldr r0, [r5, #0x34]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x34]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	str r1, [r5, #0x34]
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x38]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F102:
	cmp r0, #2
	bne _0222F160
	ldr r0, [r5, #0x34]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x34]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	str r1, [r5, #0x34]
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x38]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F160:
	cmp r0, #3
	bne _0222F1BE
	ldr r0, [r5, #0x34]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x34]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	str r1, [r5, #0x34]
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x38]
	mul r0, r1
	asr r0, r0, #0xc
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F1BE:
	cmp r0, #4
	bne _0222F204
	ldr r1, [r5, #0x38]
	cmp r1, #0x60
	bge _0222F1CE
	ldr r0, [r5, #0x3c]
	add r0, r1, r0
	str r0, [r5, #0x38]
_0222F1CE:
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x10]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r2, [r5, #0x14]
	mul r0, r1
	add r0, r2, r0
	str r0, [sp, #0x1c]
	b _0222F32C
	; .align 2, 0
_0222F200: .word 0x45800000
_0222F204:
	cmp r0, #5
	bne _0222F256
	ldr r1, [r5, #0x38]
	cmp r1, #0x60
	bge _0222F214
	ldr r0, [r5, #0x3c]
	add r0, r1, r0
	str r0, [r5, #0x38]
_0222F214:
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x38]
	str r0, [r5, #0x44]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x10]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [r5, #0x44]
	ldr r3, [r5, #0x14]
	add r2, r1, #0
	mul r2, r0
	mov r0, #0
	mvn r0, r0
	mul r0, r2
	add r0, r3, r0
	str r0, [sp, #0x1c]
	b _0222F32C
_0222F256:
	mov r0, #0xa
	str r0, [r5, #4]
	mov r0, #2
	ldr r1, [r5, #0x1c]
	lsl r0, r0, #0xa
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r0, [sp, #0x18]
	bl sub_020E17B4
	ldr r1, _0222F344 ; =0x45800000
	bl sub_020E1304
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl sub_020E17B4
	ldr r1, _0222F344 ; =0x45800000
	bl sub_020E1304
	add r6, r0, #0
	ldr r0, [r5, #0x1c]
	bl sub_020E17B4
	ldr r1, _0222F344 ; =0x45800000
	bl sub_020E1304
	add r1, sp, #0x14
	str r1, [sp]
	add r1, sp, #0x10
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	lsl r0, r0, #4
	lsl r1, r1, #4
	asr r0, r0, #0x10
	asr r1, r1, #0x10
	add r2, r4, #0
	add r3, r6, #0
	bl ov97_0222EDC0
	cmp r0, #0
	beq _0222F328
	ldr r0, [sp, #0x14]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _0222F344 ; =0x45800000
	bls _0222F2D0
	ldr r1, [sp, #0x14]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222F2DE
_0222F2D0:
	ldr r1, [sp, #0x14]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222F2DE:
	bl sub_020E1740
	ldr r1, [sp, #0x18]
	add r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _0222F344 ; =0x45800000
	bls _0222F306
	ldr r1, [sp, #0x10]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _0222F314
_0222F306:
	ldr r1, [sp, #0x10]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_0222F314:
	bl sub_020E1740
	ldr r1, [sp, #0x1c]
	add r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl sub_02021C50
	b _0222F32C
_0222F328:
	mov r0, #1
	str r0, [r5, #8]
_0222F32C:
	mov r1, #0x5a
	ldr r0, [r5, #0x28]
	lsl r1, r1, #2
	bl sub_020E1F6C
	str r1, [r5, #0x28]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x18
	bl sub_02021C50
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F344: .word 0x45800000
	thumb_func_end ov97_0222EEB8

	thumb_func_start ov97_0222F348
ov97_0222F348: ; 0x0222F348
	add r3, r0, #0
	mov r2, #8
	ldrsb r2, [r3, r2]
	ldr r3, _0222F358 ; =sub_020BF578
	ldr r0, _0222F35C ; =0x04000050
	mov r1, #0x22
	bx r3
	nop
_0222F358: .word sub_020BF578
_0222F35C: .word 0x04000050
	thumb_func_end ov97_0222F348

	thumb_func_start ov97_0222F360
ov97_0222F360: ; 0x0222F360
	add r3, r0, #0
	mov r2, #8
	ldrsb r2, [r3, r2]
	ldr r3, _0222F370 ; =sub_020BF578
	ldr r0, _0222F374 ; =0x04001050
	mov r1, #0x22
	bx r3
	nop
_0222F370: .word sub_020BF578
_0222F374: .word 0x04001050
	thumb_func_end ov97_0222F360

	thumb_func_start ov97_0222F378
ov97_0222F378: ; 0x0222F378
	push {r4, lr}
	add r4, r0, #0
	bl ov97_0222F348
	add r0, r4, #0
	bl ov97_0222F360
	pop {r4, pc}
	thumb_func_end ov97_0222F378

	thumb_func_start ov97_0222F388
ov97_0222F388: ; 0x0222F388
	push {r3, lr}
	mov r0, #1
	mov r1, #0
	bl sub_0201975C
	mov r0, #5
	mov r1, #0
	bl sub_0201975C
	pop {r3, pc}
	thumb_func_end ov97_0222F388

	thumb_func_start ov97_0222F39C
ov97_0222F39C: ; 0x0222F39C
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	beq _0222F3AE
	cmp r1, #1
	beq _0222F3DA
	cmp r1, #2
	beq _0222F3F4
	b _0222F408
_0222F3AE:
	mov r1, #8
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0222F3C8
	sub r1, r1, r2
	cmp r1, #0
	ble _0222F3C2
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F408
_0222F3C2:
	mov r1, #0
	strb r1, [r0, #8]
	b _0222F408
_0222F3C8:
	bge _0222F408
	add r1, r1, r2
	bpl _0222F3D4
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F408
_0222F3D4:
	mov r1, #0
	strb r1, [r0, #8]
	b _0222F408
_0222F3DA:
	mov r3, #8
	ldrsb r1, [r0, r3]
	sub r2, r1, r2
	add r1, r3, #0
	sub r1, #0x18
	cmp r2, r1
	ble _0222F3EE
	strb r2, [r0, #8]
	mov r4, #0
	b _0222F408
_0222F3EE:
	sub r3, #0x18
	strb r3, [r0, #8]
	b _0222F408
_0222F3F4:
	mov r1, #8
	ldrsb r1, [r0, r1]
	add r1, r1, r2
	cmp r1, #0x10
	bge _0222F404
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F408
_0222F404:
	mov r1, #0x10
	strb r1, [r0, #8]
_0222F408:
	bl ov97_0222F378
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov97_0222F39C

	thumb_func_start ov97_0222F410
ov97_0222F410: ; 0x0222F410
	push {r4, lr}
	mov r4, #1
	cmp r1, #0
	beq _0222F422
	cmp r1, #1
	beq _0222F44E
	cmp r1, #2
	beq _0222F468
	b _0222F47C
_0222F422:
	mov r1, #8
	ldrsb r1, [r0, r1]
	cmp r1, #0
	ble _0222F43C
	sub r1, r1, r2
	cmp r1, #0
	ble _0222F436
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F47C
_0222F436:
	mov r1, #0
	strb r1, [r0, #8]
	b _0222F47C
_0222F43C:
	bge _0222F47C
	add r1, r1, r2
	bpl _0222F448
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F47C
_0222F448:
	mov r1, #0
	strb r1, [r0, #8]
	b _0222F47C
_0222F44E:
	mov r3, #8
	ldrsb r1, [r0, r3]
	sub r2, r1, r2
	add r1, r3, #0
	sub r1, #0x18
	cmp r2, r1
	ble _0222F462
	strb r2, [r0, #8]
	mov r4, #0
	b _0222F47C
_0222F462:
	sub r3, #0x18
	strb r3, [r0, #8]
	b _0222F47C
_0222F468:
	mov r1, #8
	ldrsb r1, [r0, r1]
	add r1, r1, r2
	cmp r1, #0x10
	bge _0222F478
	strb r1, [r0, #8]
	mov r4, #0
	b _0222F47C
_0222F478:
	mov r1, #0x10
	strb r1, [r0, #8]
_0222F47C:
	bl ov97_0222F348
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov97_0222F410

	thumb_func_start ov97_0222F484
ov97_0222F484: ; 0x0222F484
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	strb r1, [r4, #8]
	bl ov97_0222F378
	add r0, r4, #0
	bl ov97_0222E398
	add r0, r4, #0
	bl ov97_0222E6F8
	add r0, r4, #0
	bl ov97_0222E814
	add r0, r4, #0
	bl ov97_0222E5B4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0222F484

	thumb_func_start ov97_0222F4BC
ov97_0222F4BC: ; 0x0222F4BC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #9
	bls _0222F4C8
	b _0222F72C
_0222F4C8:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222F4D4: ; jump table
	.short _0222F4E8 - _0222F4D4 - 2 ; case 0
	.short _0222F4F4 - _0222F4D4 - 2 ; case 1
	.short _0222F50A - _0222F4D4 - 2 ; case 2
	.short _0222F56E - _0222F4D4 - 2 ; case 3
	.short _0222F596 - _0222F4D4 - 2 ; case 4
	.short _0222F5EC - _0222F4D4 - 2 ; case 5
	.short _0222F60A - _0222F4D4 - 2 ; case 6
	.short _0222F692 - _0222F4D4 - 2 ; case 7
	.short _0222F704 - _0222F4D4 - 2 ; case 8
	.short _0222F718 - _0222F4D4 - 2 ; case 9
_0222F4E8:
	add r0, r4, #0
	bl ov97_0222F484
	mov r0, #1
	str r0, [r4, #0]
	b _0222F740
_0222F4F4:
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov97_0222F39C
	cmp r0, #0
	bne _0222F504
	b _0222F740
_0222F504:
	mov r0, #2
	str r0, [r4, #0]
	b _0222F740
_0222F50A:
	mov r5, #0
	mov r6, #1
	add r0, r5, #0
	add r1, r4, #0
	add r3, r5, #0
_0222F514:
	add r2, r1, #0
	add r2, #0x90
	ldr r2, [r2, #0]
	cmp r2, #0
	beq _0222F522
	add r5, r5, #1
	b _0222F524
_0222F522:
	add r6, r3, #0
_0222F524:
	add r0, r0, #1
	add r1, #0x4c
	cmp r0, #0x50
	blt _0222F514
	cmp r5, #0x32
	ble _0222F53C
	ldr r0, _0222F748 ; =0x00003014
	mov r1, #4
	ldr r0, [r4, r0]
	bl sub_02021DCC
	b _0222F55A
_0222F53C:
	cmp r5, #0x1e
	ble _0222F54C
	ldr r0, _0222F748 ; =0x00003014
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_02021DCC
	b _0222F55A
_0222F54C:
	cmp r5, #7
	ble _0222F55A
	ldr r0, _0222F748 ; =0x00003014
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
_0222F55A:
	cmp r6, #0
	bne _0222F562
	cmp r5, #0x4f
	bne _0222F618
_0222F562:
	mov r0, #3
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov97_0222E7B4
	b _0222F740
_0222F56E:
	ldr r0, _0222F74C ; =0x000030A0
	ldr r0, [r4, r0]
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _0222F618
	add r0, r4, #0
	bl ov97_0222E734
	add r0, r4, #0
	bl ov97_0222EA68
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	bl ov97_0222F388
	mov r0, #4
	str r0, [r4, #0]
	b _0222F740
_0222F596:
	mov r5, #0
	mov r6, #1
	add r1, r5, #0
	add r2, r4, #0
	add r0, r5, #0
_0222F5A0:
	add r3, r2, #0
	add r3, #0x94
	ldr r3, [r3, #0]
	cmp r3, #0
	beq _0222F5BA
	add r3, r2, #0
	add r3, #0x90
	ldr r3, [r3, #0]
	cmp r3, #0
	beq _0222F5B8
	add r5, r5, #1
	b _0222F5BA
_0222F5B8:
	add r6, r0, #0
_0222F5BA:
	add r1, r1, #1
	add r2, #0x4c
	cmp r1, #0x50
	blt _0222F5A0
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	bl ov97_0222F410
	cmp r6, #0
	bne _0222F5D4
	cmp r5, #0x13
	bne _0222F618
_0222F5D4:
	ldr r0, _0222F750 ; =0x0000061B
	bl sub_02005748
	mov r0, #5
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov97_0222E7B4
	add r0, r4, #0
	bl ov97_0222E60C
	b _0222F740
_0222F5EC:
	mov r1, #2
	add r0, r4, #0
	add r2, r1, #0
	bl ov97_0222F410
	cmp r0, #0
	beq _0222F618
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov97_0222F410
	mov r0, #6
	str r0, [r4, #0]
	b _0222F740
_0222F60A:
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov97_0222F410
	cmp r0, #0
	bne _0222F61A
_0222F618:
	b _0222F740
_0222F61A:
	ldr r0, _0222F748 ; =0x00003014
	ldr r0, [r4, r0]
	bl sub_02021D28
	add r5, r0, #0
	ldr r0, _0222F754 ; =0x00003060
	ldr r0, [r4, r0]
	bl sub_02021D28
	mov r1, #0xe
	ldr r2, [r5, #4]
	lsl r1, r1, #0x10
	cmp r2, r1
	bge _0222F63E
	mov r1, #2
	lsl r1, r1, #0xe
	add r1, r2, r1
	str r1, [r5, #4]
_0222F63E:
	mov r1, #3
	ldr r2, [r5, #4]
	lsl r1, r1, #0x12
	sub r2, r2, r1
	cmp r2, #0
	ble _0222F740
	ldr r2, [r0, #4]
	lsl r1, r1, #1
	cmp r2, r1
	bge _0222F672
	mov r1, #2
	lsl r1, r1, #0xe
	add r1, r2, r1
	str r1, [r0, #4]
	ldr r0, _0222F754 ; =0x00003060
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _0222F740
	ldr r0, _0222F754 ; =0x00003060
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	b _0222F740
_0222F672:
	mov r0, #7
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov97_0222E664
	add r0, r4, #0
	bl ov97_0222E77C
	add r0, r4, #0
	bl ov97_0222EBD0
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	b _0222F740
_0222F692:
	mov r5, #0
	ldr r0, _0222F758 ; =0x00001850
	mov r6, #1
	add r2, r5, #0
	add r3, r4, #0
	add r7, r5, #0
_0222F69E:
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _0222F6A8
	add r5, r5, #1
	b _0222F6AA
_0222F6A8:
	add r6, r7, #0
_0222F6AA:
	add r2, r2, #1
	add r3, #0x4c
	cmp r2, #0x50
	blt _0222F69E
	cmp r5, #7
	ble _0222F6C0
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov97_0222F39C
_0222F6C0:
	cmp r5, #0x32
	ble _0222F6D0
	ldr r0, _0222F754 ; =0x00003060
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_02021CAC
	b _0222F6EE
_0222F6D0:
	cmp r5, #0x1e
	ble _0222F6E0
	ldr r0, _0222F754 ; =0x00003060
	mov r1, #2
	ldr r0, [r4, r0]
	bl sub_02021DCC
	b _0222F6EE
_0222F6E0:
	cmp r5, #7
	ble _0222F6EE
	ldr r0, _0222F754 ; =0x00003060
	mov r1, #3
	ldr r0, [r4, r0]
	bl sub_02021DCC
_0222F6EE:
	cmp r6, #0
	beq _0222F740
	mov r0, #8
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov97_0222E7E4
	add r0, r4, #0
	bl ov97_0222E67C
	b _0222F740
_0222F704:
	add r0, r4, #0
	mov r1, #2
	mov r2, #1
	bl ov97_0222F39C
	cmp r0, #0
	beq _0222F740
	mov r0, #9
	str r0, [r4, #0]
	b _0222F740
_0222F718:
	add r0, r4, #0
	mov r1, #0
	mov r2, #2
	bl ov97_0222F39C
	cmp r0, #0
	beq _0222F740
	mov r0, #0xff
	str r0, [r4, #0]
	b _0222F740
_0222F72C:
	ldr r1, _0222F74C ; =0x000030A0
	mov r2, #0
	ldr r1, [r4, r1]
	str r2, [r1, #0]
	bl sub_0200DA58
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
_0222F740:
	add r0, r4, #0
	bl ov97_0222E694
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222F748: .word 0x00003014
_0222F74C: .word 0x000030A0
_0222F750: .word 0x0000061B
_0222F754: .word 0x00003060
_0222F758: .word 0x00001850
	thumb_func_end ov97_0222F4BC

	thumb_func_start ov97_0222F75C
ov97_0222F75C: ; 0x0222F75C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_020D0A04
	ldr r0, _0222FAB0 ; =0x000005C8
	ldr r0, [r4, r0]
	cmp r0, #0x1d
	beq _0222F77C
	add r0, r4, #0
	bl ov97_02230224
_0222F77C:
	ldr r3, [r5, #0]
	cmp r3, #0x39
	bls _0222F786
	bl _02230164
_0222F786:
	add r0, r3, r3
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222F792: ; jump table
	.short _0222F806 - _0222F792 - 2 ; case 0
	.short _0222F818 - _0222F792 - 2 ; case 1
	.short _0222F836 - _0222F792 - 2 ; case 2
	.short _0222F840 - _0222F792 - 2 ; case 3
	.short _0222F84E - _0222F792 - 2 ; case 4
	.short _0222F85C - _0222F792 - 2 ; case 5
	.short _02230164 - _0222F792 - 2 ; case 6
	.short _0222FAA4 - _0222F792 - 2 ; case 7
	.short _0222FB8C - _0222F792 - 2 ; case 8
	.short _0222FB98 - _0222F792 - 2 ; case 9
	.short _0222FC58 - _0222F792 - 2 ; case 10
	.short _0222FCA6 - _0222F792 - 2 ; case 11
	.short _0222FCC8 - _0222F792 - 2 ; case 12
	.short _0222FD58 - _0222F792 - 2 ; case 13
	.short _0222FDAE - _0222F792 - 2 ; case 14
	.short _0222FDDA - _0222F792 - 2 ; case 15
	.short _0222FE1A - _0222F792 - 2 ; case 16
	.short _0222FE3C - _0222F792 - 2 ; case 17
	.short _0222FE74 - _0222F792 - 2 ; case 18
	.short _0222FEB8 - _0222F792 - 2 ; case 19
	.short _0222FF5A - _0222F792 - 2 ; case 20
	.short _0222FF66 - _0222F792 - 2 ; case 21
	.short _0222FF6C - _0222F792 - 2 ; case 22
	.short _0222FFA2 - _0222F792 - 2 ; case 23
	.short _0222FFBC - _0222F792 - 2 ; case 24
	.short _02230034 - _0222F792 - 2 ; case 25
	.short _02230164 - _0222F792 - 2 ; case 26
	.short _0222F86A - _0222F792 - 2 ; case 27
	.short _02230164 - _0222F792 - 2 ; case 28
	.short _02230164 - _0222F792 - 2 ; case 29
	.short _02230164 - _0222F792 - 2 ; case 30
	.short _0222F928 - _0222F792 - 2 ; case 31
	.short _0222F876 - _0222F792 - 2 ; case 32
	.short _0222F93C - _0222F792 - 2 ; case 33
	.short _0222F9DE - _0222F792 - 2 ; case 34
	.short _0222F9BC - _0222F792 - 2 ; case 35
	.short _0222FA80 - _0222F792 - 2 ; case 36
	.short _02230164 - _0222F792 - 2 ; case 37
	.short _02230164 - _0222F792 - 2 ; case 38
	.short _02230164 - _0222F792 - 2 ; case 39
	.short _02230164 - _0222F792 - 2 ; case 40
	.short _02230164 - _0222F792 - 2 ; case 41
	.short _02230164 - _0222F792 - 2 ; case 42
	.short _02230164 - _0222F792 - 2 ; case 43
	.short _02230164 - _0222F792 - 2 ; case 44
	.short _02230164 - _0222F792 - 2 ; case 45
	.short _02230164 - _0222F792 - 2 ; case 46
	.short _02230164 - _0222F792 - 2 ; case 47
	.short _02230164 - _0222F792 - 2 ; case 48
	.short _02230050 - _0222F792 - 2 ; case 49
	.short _02230074 - _0222F792 - 2 ; case 50
	.short _02230082 - _0222F792 - 2 ; case 51
	.short _0223009E - _0222F792 - 2 ; case 52
	.short _022300B4 - _0222F792 - 2 ; case 53
	.short _022300C8 - _0222F792 - 2 ; case 54
	.short _022300DA - _0222F792 - 2 ; case 55
	.short _0223011C - _0222F792 - 2 ; case 56
	.short _0223015E - _0222F792 - 2 ; case 57
_0222F806:
	mov r0, #0x56
	bl ov97_02237694
	ldr r0, _0222FAB4 ; =0x000015D8
	str r5, [r4, r0]
	mov r0, #1
	str r0, [r5, #0]
	bl _02230164
_0222F818:
	add r0, r6, #0
	add r1, r4, #0
	bl ov97_0222DFD4
	add r0, r4, #0
	bl ov97_0222D3E8
	mov r0, #1
	mov r1, #3
	add r2, r5, #0
	mov r3, #2
	bl ov97_02237790
	bl _02230164
_0222F836:
	add r0, r5, #0
	bl ov97_022377F0
	bl _02230164
_0222F840:
	ldr r2, _0222FAB8 ; =ov97_0222DB40
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F84E:
	ldr r2, _0222FABC ; =ov97_0222DA64
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F85C:
	ldr r2, _0222FAC0 ; =ov97_0222D75C
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	bl _02230164
_0222F86A:
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222E080
	bl _02230164
_0222F876:
	add r0, r4, #0
	bl ov97_022302F4
	ldr r0, _0222FAC4 ; =0x0223F1A8
	ldr r0, [r0, #0]
	cmp r0, #0x2d
	bne _0222F90E
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r0, r6, #0
	bl ov97_0222D55C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x8c
	bl ov97_02232148
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0222F8BA
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x31
	str r0, [r5, #0]
	b _0222F90E
_0222F8BA:
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222F8E8
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x71
	add r1, r4, #0
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x58
	mov r3, #3
	bl sub_0201A7E8
_0222F8E8:
	bl ov97_02238D54
	add r1, r4, #0
	add r2, r0, #0
	add r0, r6, #0
	add r1, #0x58
	bl ov97_0222DF10
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #4
	bl ov97_0222DE78
	add r0, r6, #0
	bl ov97_0222D8F4
	mov r0, #0x1f
	str r0, [r5, #0]
_0222F90E:
	ldr r0, _0222FAC4 ; =0x0223F1A8
	ldr r0, [r0, #0]
	sub r0, #0x2e
	cmp r0, #1
	bls _0222F91C
	bl _02230164
_0222F91C:
	bl ov97_022302D4
	mov r0, #0x11
	str r0, [r5, #0]
	bl _02230164
_0222F928:
	ldr r2, _0222FAC8 ; =ov97_0222D9F0
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	add r0, r4, #0
	bl ov97_022302F4
	bl _02230164
_0222F93C:
	add r0, r6, #0
	bl ov97_0222D55C
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D40C
	add r0, r7, #0
	bl ov97_0222D5C8
	cmp r0, #1
	bne _0222F9A8
	add r0, r6, #0
	bl ov97_0222D658
	ldr r0, _0222FACC ; =0x000029F4
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	sub r1, r1, #2
	bl ov97_0222D40C
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	ldr r1, _0222FAD0 ; =0x000030A4
	mov r0, #0x56
	bl sub_02018144
	ldr r2, _0222FAD0 ; =0x000030A4
	mov r1, #0
	add r6, r0, #0
	bl sub_020D5124
	ldr r0, _0222FACC ; =0x000029F4
	add r1, r4, r0
	ldr r0, _0222FAD4 ; =0x000030A0
	str r1, [r6, r0]
	bl ov97_02237AEC
	str r0, [r6, #0xc]
	ldr r0, _0222FAD8 ; =ov97_0222F4BC
	add r1, r6, #0
	mov r2, #5
	bl sub_0200D9E8
	b _0222F9B6
_0222F9A8:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov97_02238194
	add r0, r6, #0
	bl ov97_0222D658
_0222F9B6:
	mov r0, #0x22
	str r0, [r5, #0]
	b _02230164
_0222F9BC:
	ldr r0, _0222FACC ; =0x000029F4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FA4A
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #8
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	b _02230164
_0222F9DE:
	bl ov97_02238528
	add r7, r0, #0
	cmp r7, #4
	bne _0222F9EC
	bl ov97_022384F4
_0222F9EC:
	cmp r7, #2
	bne _0222FA46
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	add r0, #0x18
	mov r1, #0
	bl ov97_0222D45C
	ldr r0, [r4, #0]
	mov r1, #0
	bl sub_02019EBC
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	add r6, r4, #0
	add r6, #0xdc
	add r0, r6, #0
	bl ov97_0222D5C8
	cmp r0, #1
	bne _0222FA3A
	ldr r0, [r4, #0]
	add r1, r6, #0
	bl ov97_02238194
	ldr r0, _0222FACC ; =0x000029F4
	mov r1, #2
	str r1, [r4, r0]
	b _0222FA40
_0222FA3A:
	ldr r0, _0222FADC ; =0x00000624
	bl sub_02005748
_0222FA40:
	mov r0, #0x23
	str r0, [r5, #0]
	b _02230164
_0222FA46:
	cmp r7, #3
	beq _0222FA4C
_0222FA4A:
	b _02230164
_0222FA4C:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	mov r2, #0x1a
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FA80:
	add r0, r4, #0
	bl ov97_022302F4
	ldr r0, _0222FAC4 ; =0x0223F1A8
	ldr r1, [r0, #0]
	add r0, r1, #0
	sub r0, #0x2d
	cmp r0, #2
	bhi _0222FB74
	cmp r1, #0x2f
	bne _0222FA9A
	bl ov97_022302D4
_0222FA9A:
	add r0, r6, #0
	bl ov97_0222D94C
	str r0, [r5, #0]
	b _02230164
_0222FAA4:
	add r0, r4, #0
	bl ov97_0222D250
	ldr r1, _0222FAE0 ; =0x00000438
	b _0222FAE4
	nop
_0222FAB0: .word 0x000005C8
_0222FAB4: .word 0x000015D8
_0222FAB8: .word ov97_0222DB40
_0222FABC: .word ov97_0222DA64
_0222FAC0: .word ov97_0222D75C
_0222FAC4: .word 0x0223F1A8
_0222FAC8: .word ov97_0222D9F0
_0222FACC: .word 0x000029F4
_0222FAD0: .word 0x000030A4
_0222FAD4: .word 0x000030A0
_0222FAD8: .word ov97_0222F4BC
_0222FADC: .word 0x00000624
_0222FAE0: .word 0x00000438
_0222FAE4:
	str r0, [r4, r1]
	mov r0, #0
	ldr r1, [r4, r1]
	mvn r0, r0
	cmp r1, r0
	beq _0222FB5C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x8c
	bl ov97_02232148
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222FB36
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x71
	add r1, r4, #0
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x58
	mov r3, #3
	bl sub_0201A7E8
_0222FB36:
	add r1, r4, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x58
	add r2, #0x8c
	bl ov97_0222DF10
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #4
	bl ov97_0222DE78
	add r0, r6, #0
	mov r1, #0
	bl ov97_0222D6F8
	mov r0, #8
	str r0, [r5, #0]
_0222FB5C:
	ldr r0, _0222FE84 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	bne _0222FB76
	ldr r0, _0222FE88 ; =0x00000434
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222FB76
_0222FB74:
	b _02230164
_0222FB76:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl sub_02039794
	mov r0, #0x11
	str r0, [r5, #0]
	b _02230164
_0222FB8C:
	ldr r2, _0222FE8C ; =ov97_0222D94C
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	b _02230164
_0222FB98:
	bl sub_0203608C
	add r7, r0, #0
	beq _0222FBF0
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	beq _0222FBF0
	mov r0, #0xab
	bl sub_02036540
	cmp r0, #1
	bne _0222FC20
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #1
	add r1, r0, #0
	bl sub_020388F4
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #7
	bl ov97_0222DE78
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	mov r1, #0x96
	ldr r0, _0222FE88 ; =0x00000434
	lsl r1, r1, #2
	str r1, [r4, r0]
	mov r0, #0xa
	str r0, [r5, #0]
	b _0222FC20
_0222FBF0:
	cmp r7, #0
	beq _0222FC20
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0222FC20
	bl ov97_0222D2DC
	bl sub_02039794
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x10
	str r0, [r5, #0]
	b _02230164
_0222FC20:
	ldr r0, _0222FE84 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	bne _0222FC38
	ldr r0, _0222FE88 ; =0x00000434
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FD28
_0222FC38:
	bl ov97_0222D2DC
	bl sub_02039794
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x11
	str r0, [r5, #0]
	b _02230164
_0222FC58:
	bl ov97_0222D2A0
	cmp r0, #0
	beq _0222FC64
	mov r0, #0xb
	str r0, [r5, #0]
_0222FC64:
	bl sub_0203608C
	ldr r1, _0222FE84 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	bne _0222FC90
	ldr r1, _0222FE88 ; =0x00000434
	ldr r2, [r4, r1]
	sub r2, r2, #1
	str r2, [r4, r1]
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0222FC90
	cmp r0, #0
	beq _0222FD28
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0222FD28
_0222FC90:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl sub_02039794
	mov r0, #0x11
	str r0, [r5, #0]
	b _02230164
_0222FCA6:
	add r0, r6, #0
	bl ov97_0222D55C
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov97_02238194
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	add r0, r6, #0
	bl ov97_0222D658
	mov r0, #0xc
	str r0, [r5, #0]
	b _02230164
_0222FCC8:
	bl sub_0203608C
	cmp r0, #0
	beq _0222FD06
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02035D78
	cmp r0, #0
	bne _0222FD06
	bl ov97_0222D2DC
	ldr r0, _0222FE90 ; =0x000029EC
	mov r1, #1
	str r1, [r4, r0]
	bl ov97_0223850C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	bl sub_02039794
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	mov r0, #0xe
	str r0, [r5, #0]
	b _02230164
_0222FD06:
	bl ov97_02238528
	cmp r0, #4
	bne _0222FD20
	mov r0, #0x93
	bl sub_020364F0
	mov r0, #0xd
	str r0, [r5, #0]
	ldr r0, _0222FE94 ; =0x0000043C
	mov r1, #0x78
	str r1, [r4, r0]
	b _02230164
_0222FD20:
	bl ov97_02238528
	cmp r0, #3
	beq _0222FD2A
_0222FD28:
	b _02230164
_0222FD2A:
	bl ov97_0223850C
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #0x1a
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FD58:
	mov r0, #0x93
	bl sub_02036540
	cmp r0, #1
	bne _0222FD72
	bl ov97_022384F4
	ldr r0, _0222FE94 ; =0x0000043C
	mov r1, #0xa
	str r1, [r4, r0]
	mov r0, #0xf
	str r0, [r5, #0]
	b _02230164
_0222FD72:
	ldr r0, _0222FE94 ; =0x0000043C
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FE7C
	bl ov97_0223850C
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #0x1a
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FDAE:
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	mov r2, #0x1c
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FDDA:
	ldr r0, _0222FE94 ; =0x0000043C
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222FE7C
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	bl ov97_0222D2DC
	bl sub_02039794
	ldr r0, _0222FE98 ; =0x00000624
	bl sub_02005748
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #8
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_0222FE1A:
	ldr r0, _0222FE9C ; =0x000005DC
	bl sub_02005748
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #0x18
	bl ov97_0222DE78
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	mov r0, #0x12
	str r0, [r5, #0]
	b _02230164
_0222FE3C:
	ldr r0, _0222FEA0 ; =0x000015DC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222FE4A
	sub r1, r1, #1
	str r1, [r4, r0]
	b _02230164
_0222FE4A:
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	ldr r0, _0222FE9C ; =0x000005DC
	bl sub_02005748
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #0x17
	bl ov97_0222DE78
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	mov r0, #0x12
	str r0, [r5, #0]
	b _02230164
_0222FE74:
	ldr r0, _0222FE84 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	bne _0222FE7E
_0222FE7C:
	b _02230164
_0222FE7E:
	ldr r0, _0222FE9C ; =0x000005DC
	b _0222FEA4
	nop
_0222FE84: .word 0x021BF67C
_0222FE88: .word 0x00000434
_0222FE8C: .word ov97_0222D94C
_0222FE90: .word 0x000029EC
_0222FE94: .word 0x0000043C
_0222FE98: .word 0x00000624
_0222FE9C: .word 0x000005DC
_0222FEA0: .word 0x000015DC
_0222FEA4:
	bl sub_02005748
	add r0, r6, #0
	mov r1, #0xc4
	mov r2, #0
	bl ov97_0222DDD0
	mov r0, #3
	str r0, [r5, #0]
	b _02230164
_0222FEB8:
	ldr r0, _02230180 ; =0x000015DC
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0222FEC6
	sub r1, r1, #1
	str r1, [r4, r0]
	b _02230164
_0222FEC6:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0x1b
	beq _0222FEDC
	add r0, r4, #0
	mov r1, #0xea
	add r0, #0x8c
	lsl r1, r1, #2
	bl ov97_0223764C
_0222FEDC:
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x8c
	bl ov97_02232148
	add r1, r4, #0
	add r1, #0x80
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0222FF04
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r0, #0x31
	str r0, [r5, #0]
	b _02230164
_0222FF04:
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201A7CC
	cmp r0, #0
	bne _0222FF32
	mov r0, #2
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #0
	mov r0, #0x71
	add r1, r4, #0
	str r2, [sp, #0xc]
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	add r1, #0x58
	mov r3, #3
	bl sub_0201A7E8
_0222FF32:
	add r1, r4, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x58
	add r2, #0x8c
	bl ov97_0222DF10
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #4
	bl ov97_0222DE78
	add r0, r6, #0
	mov r1, #0
	bl ov97_0222D6F8
	mov r0, #0x14
	str r0, [r5, #0]
	b _02230164
_0222FF5A:
	ldr r2, _02230184 ; =ov97_0222D94C
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_0222DF70
	b _02230164
_0222FF66:
	mov r0, #0x16
	str r0, [r5, #0]
	b _02230164
_0222FF6C:
	add r0, r6, #0
	bl ov97_0222D55C
	add r1, r0, #0
	ldr r0, [r4, #0]
	bl ov97_02238194
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #7
	bl ov97_0222DE78
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D40C
	add r0, r4, #0
	mov r1, #1
	bl ov97_0222D30C
	ldr r0, _02230188 ; =0x0000043C
	mov r1, #0x3c
	str r1, [r4, r0]
	mov r0, #0x17
	str r0, [r5, #0]
	b _02230164
_0222FFA2:
	ldr r0, _02230188 ; =0x0000043C
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02230042
	add r0, r6, #0
	bl ov97_0222D658
	mov r0, #0x18
	str r0, [r5, #0]
	b _02230164
_0222FFBC:
	bl ov97_02238528
	cmp r0, #4
	bne _0222FFC8
	bl ov97_022384F4
_0222FFC8:
	bl ov97_02238528
	cmp r0, #2
	bne _02230000
	ldr r0, _02230188 ; =0x0000043C
	mov r1, #1
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0
	bl ov97_0222D30C
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	ldr r0, _0223018C ; =0x00000624
	bl sub_02005748
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r2, #8
	mov r3, #0x19
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_02230000:
	bl ov97_02238528
	cmp r0, #3
	bne _02230042
	mov r1, #0
	add r0, r4, #0
	mvn r1, r1
	bl ov97_0222D40C
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	mov r2, #0x1a
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x18
	mov r3, #0x37
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_02230034:
	ldr r0, _02230188 ; =0x0000043C
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02230044
_02230042:
	b _02230164
_02230044:
	mov r1, #1
	lsl r1, r1, #0x10
	str r1, [r4, r0]
	mov r0, #0x37
	str r0, [r5, #0]
	b _02230164
_02230050:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #5
	beq _02230060
	add r0, r4, #0
	bl ov97_0222E2AC
_02230060:
	add r0, r6, #0
	bl ov97_0222E1D8
	str r0, [r5, #0]
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl ov97_0222D444
	b _02230164
_02230074:
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl ov97_0222E228
	str r0, [r5, #0]
	b _02230164
_02230082:
	ldr r0, _02230190 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02230164
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl ov97_0222D444
	add r0, r6, #0
	bl ov97_0222DA64
	str r0, [r5, #0]
	b _02230164
_0223009E:
	add r0, r6, #0
	mov r1, #1
	bl ov97_0222D6F8
	mov r0, #8
	str r0, [r5, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x80
	str r1, [r0, #0]
	b _02230164
_022300B4:
	add r0, r6, #0
	bl ov97_0222D34C
	mov r0, #0x11
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022300C8:
	add r0, r6, #0
	bl ov97_0222D34C
	mov r1, #0x11
	mov r0, #1
	lsl r1, r1, #6
	add sp, #0x14
	str r0, [r4, r1]
	pop {r4, r5, r6, r7, pc}
_022300DA:
	ldr r0, _02230190 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02230164
	ldr r0, _02230194 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0xda
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _02230106
	ldr r2, _02230198 ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x38
	mov r3, #2
	bl ov97_02237790
	b _02230164
_02230106:
	mov r0, #1
	bl ov97_02237784
	ldr r2, _02230198 ; =0x000015D8
	mov r0, #0
	ldr r2, [r4, r2]
	mov r1, #0x39
	mov r3, #2
	bl ov97_02237790
	b _02230164
_0223011C:
	ldr r0, [r4, #0]
	bl ov97_0222DC20
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	add r1, r4, #0
	ldr r0, [r4, #0]
	add r1, #0xdc
	mov r2, #0x56
	bl ov97_02231FFC
	ldr r2, _02230198 ; =0x000015D8
	mov r0, #1
	ldr r2, [r4, r2]
	mov r1, #0x37
	mov r3, #2
	bl ov97_02237790
	add r0, r4, #0
	add r0, #0xda
	ldrb r1, [r0]
	mov r0, #4
	bic r1, r0
	add r0, r4, #0
	add r0, #0xda
	strb r1, [r0]
	b _02230164
_0223015E:
	mov r0, #0
	bl sub_020C3EE4
_02230164:
	ldr r0, _0223019C ; =0x000029E8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02230170
	add r0, r4, #0
	blx r1
_02230170:
	ldr r0, _022301A0 ; =0x000029F4
	ldr r0, [r4, r0]
	bl ov97_02237CAC
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02230180: .word 0x000015DC
_02230184: .word ov97_0222D94C
_02230188: .word 0x0000043C
_0223018C: .word 0x00000624
_02230190: .word 0x021BF67C
_02230194: .word 0x000005DC
_02230198: .word 0x000015D8
_0223019C: .word 0x000029E8
_022301A0: .word 0x000029F4
	thumb_func_end ov97_0222F75C

	thumb_func_start ov97_022301A4
ov97_022301A4: ; 0x022301A4
	ldr r0, _022301AC ; =0x0223F1A8
	ldr r0, [r0, #8]
	bx lr
	nop
_022301AC: .word 0x0223F1A8
	thumb_func_end ov97_022301A4

	thumb_func_start ov97_022301B0
ov97_022301B0: ; 0x022301B0
	ldr r1, _022301B8 ; =0x0223F1A8
	str r0, [r1, #8]
	bx lr
	nop
_022301B8: .word 0x0223F1A8
	thumb_func_end ov97_022301B0

	thumb_func_start ov97_022301BC
ov97_022301BC: ; 0x022301BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022301DA
	ldr r0, _02230210 ; =0x0000004D
	ldr r1, _02230214 ; =0x021D742C
	bl sub_02000EC4
	b _022301E6
_022301DA:
	cmp r0, #1
	bne _022301E6
	ldr r0, _02230218 ; =0x00000061
	ldr r1, _0223021C ; =0x0223D7AC
	bl sub_02000EC4
_022301E6:
	mov r0, #0x5b
	bl sub_0201807C
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x56
	bl sub_0201807C
	ldr r0, _02230220 ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _02230206
	mov r0, #0
	bl sub_02017B70
_02230206:
	mov r0, #0
	bl ov97_02238400
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230210: .word 0x0000004D
_02230214: .word 0x021D742C
_02230218: .word 0x00000061
_0223021C: .word 0x0223D7AC
_02230220: .word 0x000015D4
	thumb_func_end ov97_022301BC

	thumb_func_start ov97_02230224
ov97_02230224: ; 0x02230224
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02230278 ; =0x000005C8
	ldr r0, [r4, r0]
	cmp r0, #0x1c
	beq _0223023A
	cmp r0, #0x1d
	beq _02230276
	cmp r0, #0x1e
	beq _0223024E
	pop {r4, pc}
_0223023A:
	ldr r0, [r4, #4]
	bl sub_02037D48
	ldr r0, _0223027C ; =0x000005CC
	mov r1, #0x78
	str r1, [r4, r0]
	mov r1, #0x1e
	sub r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
_0223024E:
	bl sub_02037DA0
	mov r1, #1
	tst r0, r1
	beq _0223025E
	mov r0, #0x5d
	lsl r0, r0, #4
	str r1, [r4, r0]
_0223025E:
	ldr r0, _0223027C ; =0x000005CC
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02230276
	bl sub_02037D84
	ldr r0, _02230278 ; =0x000005C8
	mov r1, #0x1d
	str r1, [r4, r0]
_02230276:
	pop {r4, pc}
	; .align 2, 0
_02230278: .word 0x000005C8
_0223027C: .word 0x000005CC
	thumb_func_end ov97_02230224

	thumb_func_start ov97_02230280
ov97_02230280: ; 0x02230280
	cmp r0, #4
	bhi _022302CC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230290: ; jump table
	.short _0223029A - _02230290 - 2 ; case 0
	.short _022302A2 - _02230290 - 2 ; case 1
	.short _022302AA - _02230290 - 2 ; case 2
	.short _022302B2 - _02230290 - 2 ; case 3
	.short _022302C6 - _02230290 - 2 ; case 4
_0223029A:
	ldr r0, _022302D0 ; =0x0223F1A8
	mov r1, #0x28
	str r1, [r0, #0]
	bx lr
_022302A2:
	ldr r0, _022302D0 ; =0x0223F1A8
	mov r1, #0x29
	str r1, [r0, #0]
	bx lr
_022302AA:
	ldr r0, _022302D0 ; =0x0223F1A8
	mov r1, #0x2a
	str r1, [r0, #0]
	bx lr
_022302B2:
	ldr r0, _022302D0 ; =0x0223F1A8
	ldr r1, [r0, #0]
	cmp r1, #0x2a
	bne _022302C0
	mov r1, #0x2c
	str r1, [r0, #0]
	bx lr
_022302C0:
	mov r1, #0x2f
	str r1, [r0, #0]
	bx lr
_022302C6:
	ldr r0, _022302D0 ; =0x0223F1A8
	mov r1, #0x30
	str r1, [r0, #0]
_022302CC:
	bx lr
	nop
_022302D0: .word 0x0223F1A8
	thumb_func_end ov97_02230280

	thumb_func_start ov97_022302D4
ov97_022302D4: ; 0x022302D4
	push {r3, lr}
	bl sub_020334CC
	ldr r0, _022302F0 ; =0x0223F1A8
	ldr r0, [r0, #4]
	bl sub_020181C4
	bl sub_02039794
	ldr r0, _022302F0 ; =0x0223F1A8
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, pc}
	nop
_022302F0: .word 0x0223F1A8
	thumb_func_end ov97_022302D4

	thumb_func_start ov97_022302F4
ov97_022302F4: ; 0x022302F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02230400 ; =0x0223F1A8
	ldr r0, [r0, #0]
	cmp r0, #0x2c
	bne _0223031A
	bl ov97_022302D4
	bl ov97_02238CA0
	cmp r0, #0
	beq _02230314
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x2d
	str r1, [r0, #0]
	b _0223031A
_02230314:
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x2e
	str r1, [r0, #0]
_0223031A:
	ldr r0, _02230400 ; =0x0223F1A8
	ldr r0, [r0, #0]
	cmp r0, #0x25
	beq _02230336
	cmp r0, #0x26
	beq _02230336
	cmp r0, #0x27
	beq _02230336
	cmp r0, #0x28
	beq _02230336
	cmp r0, #0x29
	beq _02230336
	cmp r0, #0x2b
	bne _02230342
_02230336:
	bl sub_020CE814
	mov r1, #3
	sub r0, r1, r0
	bl sub_020397B0
_02230342:
	ldr r1, _02230400 ; =0x0223F1A8
	ldr r0, [r1, #0]
	sub r0, #0x25
	cmp r0, #0xb
	bhi _022303BC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230358: ; jump table
	.short _02230370 - _02230358 - 2 ; case 0
	.short _0223037C - _02230358 - 2 ; case 1
	.short _022303BC - _02230358 - 2 ; case 2
	.short _022303BC - _02230358 - 2 ; case 3
	.short _022303B2 - _02230358 - 2 ; case 4
	.short _022303BC - _02230358 - 2 ; case 5
	.short _022303BC - _02230358 - 2 ; case 6
	.short _022303BC - _02230358 - 2 ; case 7
	.short _022303BC - _02230358 - 2 ; case 8
	.short _022303BC - _02230358 - 2 ; case 9
	.short _022303BA - _02230358 - 2 ; case 10
	.short _022303BC - _02230358 - 2 ; case 11
_02230370:
	bl sub_02033478
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x26
	str r1, [r0, #0]
	b _022303BC
_0223037C:
	bl sub_020334A4
	cmp r0, #1
	bne _022303BC
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0
	str r1, [r0, #0xc]
	bl ov97_02238D4C
	add r1, r0, #0
	mov r0, #0x56
	bl sub_02018144
	add r2, r0, #0
	ldr r0, _02230400 ; =0x0223F1A8
	ldr r1, _02230404 ; =ov97_02230280
	str r2, [r0, #4]
	ldr r0, _02230408 ; =0x000005D4
	add r0, r4, r0
	bl ov97_02238A4C
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x27
	str r1, [r0, #0]
	bl sub_02039734
	b _022303BC
_022303B2:
	ldr r0, [r1, #0xc]
	add r0, r0, #1
	str r0, [r1, #0xc]
	b _022303BC
_022303BA:
	pop {r4, pc}
_022303BC:
	ldr r0, _0223040C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022303FC
	ldr r0, _02230400 ; =0x0223F1A8
	ldr r0, [r0, #0]
	sub r0, #0x28
	cmp r0, #8
	bhi _022303FC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022303DC: ; jump table
	.short _022303EE - _022303DC - 2 ; case 0
	.short _022303EE - _022303DC - 2 ; case 1
	.short _022303FC - _022303DC - 2 ; case 2
	.short _022303FC - _022303DC - 2 ; case 3
	.short _022303FC - _022303DC - 2 ; case 4
	.short _022303FC - _022303DC - 2 ; case 5
	.short _022303FC - _022303DC - 2 ; case 6
	.short _022303FC - _022303DC - 2 ; case 7
	.short _022303EE - _022303DC - 2 ; case 8
_022303EE:
	bl ov97_022389C8
	cmp r0, #0
	beq _022303FC
	ldr r0, _02230400 ; =0x0223F1A8
	mov r1, #0x2b
	str r1, [r0, #0]
_022303FC:
	pop {r4, pc}
	nop
_02230400: .word 0x0223F1A8
_02230404: .word ov97_02230280
_02230408: .word 0x000005D4
_0223040C: .word 0x021BF67C
	thumb_func_end ov97_022302F4

	thumb_func_start ov97_02230410
ov97_02230410: ; 0x02230410
	push {r3, lr}
	sub sp, #8
	bl ov97_02230438
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0xf
	mov r2, #0xc
	mov r3, #0xe
	bl ov97_02237B0C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov97_02230410

	thumb_func_start ov97_02230438
ov97_02230438: ; 0x02230438
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223049C ; =0x00002DC4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230448
	bl sub_02021BD4
_02230448:
	ldr r0, _022304A0 ; =0x00002DC8
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230454
	bl sub_02021BD4
_02230454:
	ldr r0, _022304A0 ; =0x00002DC8
	mov r1, #0
	str r1, [r4, r0]
	ldr r2, [r4, r0]
	sub r1, r0, #4
	str r2, [r4, r1]
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223046C
	bl sub_02021BD4
_0223046C:
	ldr r0, _022304A4 ; =0x00002DD0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230478
	bl sub_02021BD4
_02230478:
	ldr r0, _022304A8 ; =0x00002DD4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02230484
	bl sub_02021BD4
_02230484:
	ldr r1, _022304A8 ; =0x00002DD4
	mov r0, #0
	str r0, [r4, r1]
	ldr r2, [r4, r1]
	sub r0, r1, #4
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	sub r1, #8
	str r0, [r4, r1]
	bl ov97_02237DA0
	pop {r4, pc}
	; .align 2, 0
_0223049C: .word 0x00002DC4
_022304A0: .word 0x00002DC8
_022304A4: .word 0x00002DD0
_022304A8: .word 0x00002DD4
	thumb_func_end ov97_02230438

	thumb_func_start ov97_022304AC
ov97_022304AC: ; 0x022304AC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022304F4 ; =0x00003D4C
	add r4, r0, #0
	mov r0, #0
	str r0, [r4, r1]
	mov r1, #1
	str r1, [sp]
	ldr r1, _022304F8 ; =0x00002DC4
	mov r2, #0x48
	ldr r1, [r4, r1]
	mov r3, #0xa8
	bl ov97_02237D14
	ldr r1, _022304F8 ; =0x00002DC4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_02021E80
	mov r0, #0
	ldr r1, _022304FC ; =0x00002DC8
	str r0, [sp]
	ldr r1, [r4, r1]
	mov r2, #0xb8
	mov r3, #0xa8
	bl ov97_02237D14
	ldr r1, _022304FC ; =0x00002DC8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_02021E80
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022304F4: .word 0x00003D4C
_022304F8: .word 0x00002DC4
_022304FC: .word 0x00002DC8
	thumb_func_end ov97_022304AC

	thumb_func_start ov97_02230500
ov97_02230500: ; 0x02230500
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _02230516
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200DC9C
_02230516:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02230500

	thumb_func_start ov97_02230518
ov97_02230518: ; 0x02230518
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0201A7CC
	cmp r0, #1
	bne _0223052E
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200E084
_0223052E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02230518

	thumb_func_start ov97_02230530
ov97_02230530: ; 0x02230530
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, _022305D8 ; =0x00002BCC
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r7, r2, #0
	str r3, [sp]
	cmp r0, #0
	beq _02230548
	bl sub_02013A3C
_02230548:
	ldr r0, _022305DC ; =0x00002BC8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02230558
	mov r1, #0
	add r2, r1, #0
	bl sub_02001384
_02230558:
	add r0, r7, #0
	mov r1, #0x57
	bl sub_02013A04
	ldr r1, _022305D8 ; =0x00002BCC
	ldr r2, _022305E0 ; =0x000001A5
	str r0, [r5, r1]
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	ldr r1, _022305E4 ; =0x00002A04
	mov r6, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _02230592
_0223057A:
	ldr r0, _022305D8 ; =0x00002BCC
	ldr r1, _022305E4 ; =0x00002A04
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	bl sub_02013A4C
	add r6, r6, #1
	add r4, #8
	cmp r6, r7
	blt _0223057A
_02230592:
	ldr r0, _022305E4 ; =0x00002A04
	ldr r0, [r5, r0]
	bl sub_0200B190
	ldr r4, _022305E8 ; =0x0223E660
	add r3, sp, #4
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _022305D8 ; =0x00002BCC
	mov r1, #0
	ldr r0, [r5, r0]
	mov r3, #0x57
	str r0, [sp, #4]
	add r0, sp, #4
	strh r7, [r0, #0x10]
	ldr r0, [sp]
	str r0, [sp, #0x10]
	add r0, r2, #0
	ldr r2, [sp, #0x38]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0200112C
	ldr r1, _022305DC ; =0x00002BC8
	str r0, [r5, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022305D8: .word 0x00002BCC
_022305DC: .word 0x00002BC8
_022305E0: .word 0x000001A5
_022305E4: .word 0x00002A04
_022305E8: .word 0x0223E660
	thumb_func_end ov97_02230530

	thumb_func_start ov97_022305EC
ov97_022305EC: ; 0x022305EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r2, _0223065C ; =0x000001A5
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	add r4, r0, #0
	mov r0, #0x57
	bl sub_0200B358
	add r6, r0, #0
	mov r0, #1
	mov r1, #6
	bl sub_02002DF8
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0201ADA4
	add r0, r6, #0
	add r1, r4, #0
	add r2, r7, #0
	mov r3, #0x57
	bl sub_0200B29C
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02230660 ; =0x00010200
	mov r1, #1
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r7, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A954
	add r0, r7, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B190
	add r0, r6, #0
	bl sub_0200B3F0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223065C: .word 0x000001A5
_02230660: .word 0x00010200
	thumb_func_end ov97_022305EC

	thumb_func_start ov97_02230664
ov97_02230664: ; 0x02230664
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x57
	mov r3, #0x1e
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0xb
	mov r2, #0
	lsl r3, r3, #4
	bl sub_02006E84
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x57
	mov r3, #6
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x10
	mov r2, #0
	lsl r3, r3, #6
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x57
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r1, #0x11
	add r2, r4, #0
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x57
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r1, #0x12
	add r2, r4, #0
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xc
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r4, #0
	mov r1, #1
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02230664

	thumb_func_start ov97_022306F4
ov97_022306F4: ; 0x022306F4
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230720 ; =0x00002BD0
	mov r1, #0x2e
	add r0, r4, r0
	bl ov97_022305EC
	ldr r3, _02230724 ; =0x00002BE0
	add r0, r4, #0
	add r1, r4, r3
	add r3, #0x10
	ldr r3, [r4, r3]
	mov r2, #0xa
	bl ov97_02230E04
	mov r0, #0xd
	pop {r4, pc}
	nop
_02230720: .word 0x00002BD0
_02230724: .word 0x00002BE0
	thumb_func_end ov97_022306F4

	thumb_func_start ov97_02230728
ov97_02230728: ; 0x02230728
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02230868
	ldr r1, _0223076C ; =0x00002BA0
	ldr r0, [r4, r1]
	add r1, #0x20
	ldr r1, [r4, r1]
	bl sub_0202DDA8
	cmp r0, #1
	ldr r0, _02230770 ; =0x00002BD0
	bne _02230750
	add r0, r4, r0
	mov r1, #0x3e
	bl ov97_022305EC
	b _02230758
_02230750:
	add r0, r4, r0
	mov r1, #0x3d
	bl ov97_022305EC
_02230758:
	ldr r3, _02230774 ; =0x00002BE0
	add r0, r4, #0
	add r1, r4, r3
	add r3, #0x10
	ldr r3, [r4, r3]
	mov r2, #9
	bl ov97_02230E04
	mov r0, #0xc
	pop {r4, pc}
	; .align 2, 0
_0223076C: .word 0x00002BA0
_02230770: .word 0x00002BD0
_02230774: .word 0x00002BE0
	thumb_func_end ov97_02230728

	thumb_func_start ov97_02230778
ov97_02230778: ; 0x02230778
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230820 ; =0x00002BD0
	mov r1, #0x3f
	add r0, r4, r0
	bl ov97_022305EC
	ldr r0, _02230820 ; =0x00002BD0
	mov r1, #0x13
	add r0, r4, r0
	bl sub_0200E7FC
	ldr r1, _02230824 ; =0x00003D50
	str r0, [r4, r1]
	ldr r1, _02230828 ; =0x00002BA0
	ldr r0, [r4, r1]
	add r1, #0x20
	ldr r1, [r4, r1]
	bl sub_0202DDA8
	cmp r0, #1
	ldr r1, _02230828 ; =0x00002BA0
	bne _022307BA
	ldr r0, [r4, r1]
	add r1, #0x20
	ldr r1, [r4, r1]
	bl sub_0202DC7C
	b _022307C4
_022307BA:
	ldr r0, [r4, r1]
	add r1, #0x20
	ldr r1, [r4, r1]
	bl sub_0202DCB8
_022307C4:
	ldr r0, _0223082C ; =0x00002BA4
	ldr r0, [r4, r0]
	bl sub_020246E0
	ldr r0, _02230824 ; =0x00003D50
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	ldr r0, _02230828 ; =0x00002BA0
	ldr r0, [r4, r0]
	bl sub_0202DD88
	cmp r0, #0
	bne _022307E4
	mov r0, #0x1a
	pop {r4, pc}
_022307E4:
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #1
	bl ov97_02230F20
	mov r1, #0xaf
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r1, #0x10
	add r0, r4, r1
	mov r1, #0x24
	bl ov97_022305EC
	ldr r3, _02230830 ; =0x00002BE0
	add r0, r4, #0
	add r1, r4, r3
	add r3, #0x10
	ldr r3, [r4, r3]
	mov r2, #8
	bl ov97_02230E04
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	mov r0, #5
	pop {r4, pc}
	; .align 2, 0
_02230820: .word 0x00002BD0
_02230824: .word 0x00003D50
_02230828: .word 0x00002BA0
_0223082C: .word 0x00002BA4
_02230830: .word 0x00002BE0
	thumb_func_end ov97_02230778

	thumb_func_start ov97_02230834
ov97_02230834: ; 0x02230834
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	bl ov97_02230868
	ldr r0, _02230860 ; =0x00002BD0
	mov r1, #0x24
	add r0, r4, r0
	bl ov97_022305EC
	ldr r3, _02230864 ; =0x00002BE0
	add r0, r4, #0
	add r1, r4, r3
	add r3, #0x10
	ldr r3, [r4, r3]
	mov r2, #8
	bl ov97_02230E04
	mov r0, #5
	pop {r4, pc}
	nop
_02230860: .word 0x00002BD0
_02230864: .word 0x00002BE0
	thumb_func_end ov97_02230834

	thumb_func_start ov97_02230868
ov97_02230868: ; 0x02230868
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022308A4 ; =0x00002BCC
	ldr r0, [r4, r0]
	bl sub_02013A3C
	mov r1, #0
	ldr r0, _022308A4 ; =0x00002BCC
	add r2, r1, #0
	str r1, [r4, r0]
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02001384
	ldr r0, _022308A8 ; =0x00002BC8
	mov r1, #0
	str r1, [r4, r0]
	add r0, #0x18
	add r0, r4, r0
	bl ov97_02230500
	ldr r0, _022308AC ; =0x00002BE0
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _022308AC ; =0x00002BE0
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
_022308A4: .word 0x00002BCC
_022308A8: .word 0x00002BC8
_022308AC: .word 0x00002BE0
	thumb_func_end ov97_02230868

	thumb_func_start ov97_022308B0
ov97_022308B0: ; 0x022308B0
	mov r0, #1
	bx lr
	thumb_func_end ov97_022308B0

	thumb_func_start ov97_022308B4
ov97_022308B4: ; 0x022308B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	ldr r1, [r5, #0]
	mov r0, #0x25
	add r4, r2, #0
	bl sub_02023790
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	sub r1, #0xc
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, r1]
	mov r1, #0x41
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #0x24
	add r6, r0, #0
	bl sub_02023D8C
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022308B4

	thumb_func_start ov97_02230904
ov97_02230904: ; 0x02230904
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	add r6, r1, #0
	ldr r1, [r4, r0]
	add r5, r2, #0
	lsl r2, r1, #2
	add r3, r4, r2
	add r2, r0, #0
	sub r2, #0xc
	ldr r3, [r3, r2]
	ldr r2, _02230978 ; =0x00000152
	ldrb r2, [r3, r2]
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x1f
	bne _0223092C
	mov r2, #0x27
	b _02230942
_0223092C:
	sub r0, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223093C
	bl sub_0202DDA8
	cmp r0, #1
	bne _02230940
_0223093C:
	mov r2, #0x25
	b _02230942
_02230940:
	mov r2, #0x26
_02230942:
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	ldr r3, [r4, #0]
	bl sub_0200B29C
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02230978: .word 0x00000152
	thumb_func_end ov97_02230904

	thumb_func_start ov97_0223097C
ov97_0223097C: ; 0x0223097C
	push {r4, lr}
	sub sp, #0x18
	mov r1, #0xaf
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	sub r1, #0xc
	lsl r2, r2, #2
	add r2, r4, r2
	ldr r2, [r2, r1]
	mov r1, #0xd5
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	add r0, sp, #8
	bl sub_020CC27C
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #8
	mov r2, #0x7d
	ldr r3, [sp, #8]
	lsl r2, r2, #4
	add r2, r3, r2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r3, #4
	bl sub_0200B60C
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0xc]
	mov r1, #1
	bl sub_0200C2E0
	mov r1, #2
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x10]
	add r3, r1, #0
	bl sub_0200B60C
	mov r0, #1
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov97_0223097C

	thumb_func_start ov97_022309E4
ov97_022309E4: ; 0x022309E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0xfb
	mov r1, #0x57
	add r4, r2, #0
	bl sub_02023790
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r2, [r5, r1]
	sub r1, #0xc
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, r1]
	mov r1, #0x55
	lsl r1, r1, #2
	add r1, r2, r1
	mov r2, #0xfa
	add r6, r0, #0
	bl sub_02023D8C
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022309E4

	thumb_func_start ov97_02230A34
ov97_02230A34: ; 0x02230A34
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r3, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	add r6, r1, #0
	ldr r1, [r3, r0]
	sub r0, #0xc
	lsl r1, r1, #2
	add r1, r3, r1
	ldr r1, [r1, r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	add r5, r2, #0
	ldrb r2, [r1, r0]
	cmp r2, #0xff
	bne _02230A8C
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r3, r1]
	add r1, r1, #4
	ldr r1, [r3, r1]
	mov r2, #0x33
	mov r3, #0x57
	bl sub_0200B29C
	add r4, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	add r0, r6, #0
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	mov r0, #0
	pop {r4, r5, r6, pc}
_02230A8C:
	cmp r2, #0
	beq _02230AAA
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r3, r0]
	mov r3, #3
	bl sub_0200B60C
	add sp, #0x10
	mov r0, #1
	pop {r4, r5, r6, pc}
_02230AAA:
	mov r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02230A34

	thumb_func_start ov97_02230AB0
ov97_02230AB0: ; 0x02230AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0
	add r7, r1, #0
	add r1, r0, #1
	ldr r0, _02230B84 ; =0x0223E610
	ldr r2, _02230B84 ; =0x0223E610
	ldr r0, [r0, #0x30]
	ldr r2, [r2, #0x34]
	str r0, [sp, #0x14]
	mov r0, #0xaf
	lsl r0, r0, #6
	str r2, [sp, #0x18]
	ldr r2, [r5, r0]
	sub r0, #0xc
	lsl r2, r2, #2
	add r2, r5, r2
	ldr r2, [r2, r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	ldrb r0, [r2, r0]
	add r4, r1, #0
	add r6, sp, #0x14
	cmp r0, #0
	beq _02230AF6
	ldr r0, _02230B84 ; =0x0223E610
	ldr r2, _02230B84 ; =0x0223E610
	ldr r0, [r0, #0x38]
	add r4, r1, #1
	lsl r1, r1, #3
	ldr r2, [r2, #0x3c]
	add r3, r6, r1
	str r0, [r6, r1]
	str r2, [r3, #4]
_02230AF6:
	ldr r0, _02230B84 ; =0x0223E610
	ldr r2, _02230B84 ; =0x0223E610
	ldr r0, [r0, #0x40]
	lsl r1, r4, #3
	add r6, sp, #0x14
	str r0, [r6, r1]
	ldr r2, [r2, #0x44]
	add r3, r6, r1
	add r0, r4, #1
	lsl r1, r0, #3
	str r2, [r3, #4]
	ldr r0, _02230B84 ; =0x0223E610
	ldr r2, _02230B84 ; =0x0223E610
	ldr r0, [r0, #0x48]
	ldr r2, [r2, #0x4c]
	str r0, [r6, r1]
	add r3, r6, r1
	ldr r0, _02230B88 ; =0x00002B9C
	str r2, [r3, #4]
	ldr r6, [r5, r0]
	add r0, r7, #0
	bl sub_0201ACF4
	add r0, r7, #0
	bl sub_0201A8FC
	add r1, r4, #2
	mov r0, #4
	sub r0, r0, r1
	ldr r1, [r6, #8]
	lsl r0, r0, #1
	add r1, r1, r0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp]
	ldr r1, [r6, #0xc]
	mov r2, #2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [r6, #0x10]
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, _02230B8C ; =0x00002B98
	add r1, r7, #0
	ldr r0, [r5, r0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230B90 ; =0x000029FC
	ldr r3, [r6, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, sp, #0x14
	add r2, r4, #2
	add r3, r7, #0
	bl ov97_02230530
	mov r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02230B84: .word 0x0223E610
_02230B88: .word 0x00002B9C
_02230B8C: .word 0x00002B98
_02230B90: .word 0x000029FC
	thumb_func_end ov97_02230AB0

	thumb_func_start ov97_02230B94
ov97_02230B94: ; 0x02230B94
	push {r3, lr}
	add r3, r1, #0
	mov r1, #1
	str r1, [sp]
	ldr r1, _02230BA8 ; =0x0223E610
	mov r2, #2
	bl ov97_02230530
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02230BA8: .word 0x0223E610
	thumb_func_end ov97_02230B94

	thumb_func_start ov97_02230BAC
ov97_02230BAC: ; 0x02230BAC
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0
	str r1, [sp]
	ldr r1, _02230BC0 ; =0x0223E630
	mov r2, #2
	bl ov97_02230530
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02230BC0: .word 0x0223E630
	thumb_func_end ov97_02230BAC

	thumb_func_start ov97_02230BC4
ov97_02230BC4: ; 0x02230BC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02230BE8 ; =0x00002BD0
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #2
	bl ov97_022305EC
	mov r0, #0
	str r0, [sp]
	ldr r1, _02230BEC ; =0x0223E620
	add r0, r5, #0
	mov r2, #2
	add r3, r4, #0
	bl ov97_02230530
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02230BE8: .word 0x00002BD0
_02230BEC: .word 0x0223E620
	thumb_func_end ov97_02230BC4

	thumb_func_start ov97_02230BF0
ov97_02230BF0: ; 0x02230BF0
	push {r3, lr}
	sub sp, #8
	mov r3, #1
	str r3, [sp]
	mov r1, #0x2a
	str r3, [sp, #4]
	lsl r1, r1, #8
	ldr r0, [r0, r1]
	mov r1, #0
	add r2, r1, #0
	bl sub_0200B60C
	mov r0, #1
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02230BF0

	thumb_func_start ov97_02230C10
ov97_02230C10: ; 0x02230C10
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x57
	str r0, [sp, #8]
	add r6, r2, #0
	mov r0, #0
	add r4, r3, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	cmp r4, #0
	beq _02230C38
	mov r0, #0x1b
	str r0, [r4, #0]
_02230C38:
	mov r0, #0xb1
	lsl r0, r0, #6
	str r6, [r5, r0]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02230C10

	thumb_func_start ov97_02230C44
ov97_02230C44: ; 0x02230C44
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	str r2, [sp, #0x14]
	ldr r2, _02230DE8 ; =0x000001A5
	ldr r3, [r5, #0]
	mov r0, #1
	mov r1, #0x1a
	ldr r4, _02230DEC ; =0x0223E680
	bl sub_0200B144
	ldr r1, _02230DF0 ; =0x00002A04
	str r0, [r5, r1]
	ldr r0, [r5, #0]
	bl sub_0200B358
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
	ldr r1, _02230DF4 ; =0x00002BC4
	ldr r0, [sp, #0x14]
	str r0, [r5, r1]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	bl ov97_02230F98
	mov r0, #0
	str r0, [sp, #0x30]
	ldr r0, _02230DF8 ; =0x00002A08
	add r7, r4, #0
	str r5, [sp, #0x1c]
	add r6, r5, r0
_02230C84:
	ldr r1, [r7, #0]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	beq _02230CA6
	cmp r1, #2
	beq _02230CA6
	ldr r1, [sp, #0x1c]
	ldr r0, _02230DF8 ; =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02230CA6
	add r0, r6, #0
	bl sub_0201ACF4
	add r0, r6, #0
	bl sub_0201A8FC
_02230CA6:
	ldr r0, [sp, #0x1c]
	add r7, #0x30
	add r0, #0x10
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x30]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, #0x13
	blo _02230C84
	mov r0, #0x31
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, _02230DF8 ; =0x00002A08
	str r5, [sp, #0x24]
	str r5, [sp, #0x20]
	add r6, r5, r0
_02230CCA:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	bne _02230DAA
	ldr r1, [sp, #0x24]
	ldr r0, _02230DF8 ; =0x00002A08
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02230D1A
	ldr r2, [sp, #0x2c]
	ldr r1, [sp, #0x20]
	ldr r0, _02230DFC ; =0x00002B48
	str r2, [r1, r0]
	ldr r0, [r4, #8]
	add r1, r6, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	add r0, r2, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230E00 ; =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	mov r2, #0
	lsr r3, r3, #0x18
	bl sub_0201A7E8
_02230D1A:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02002DF8
	add r1, r0, #0
	add r0, r6, #0
	bl sub_0201ADA4
	ldr r0, [r4, #0x18]
	ldr r3, [r4, #0x24]
	str r0, [sp, #0x28]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	add r1, r6, #0
	blx r3
	cmp r0, #1
	bne _02230D96
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02230D96
	mov r0, #0x2a
	ldr r1, _02230DF0 ; =0x00002A04
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r5, #0]
	bl sub_0200B29C
	add r7, r0, #0
	mov r0, #0
	ldr r3, [r4, #0x28]
	mvn r0, r0
	cmp r3, r0
	bne _02230D76
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x14]
	add r1, r7, #0
	mov r2, #0
	lsl r3, r3, #3
	bl sub_02002EEC
	add r3, r0, #0
_02230D76:
	ldr r0, [r4, #0x2c]
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
_02230D96:
	add r0, r6, #0
	bl sub_0201A954
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp, #0x2c]
	add r0, r0, r2
	str r0, [sp, #0x2c]
_02230DAA:
	ldr r0, [sp, #0x24]
	add r4, #0x30
	add r0, #0x10
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r6, #0x10
	add r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #0x13
	blo _02230CCA
	ldr r0, _02230DF0 ; =0x00002A04
	ldr r0, [r5, r0]
	bl sub_0200B190
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0200B3F0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02230DE2
	add r0, r5, #0
	bl ov97_022310FC
_02230DE2:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02230DE8: .word 0x000001A5
_02230DEC: .word 0x0223E680
_02230DF0: .word 0x00002A04
_02230DF4: .word 0x00002BC4
_02230DF8: .word 0x00002A08
_02230DFC: .word 0x00002B48
_02230E00: .word 0x000029FC
	thumb_func_end ov97_02230C44

	thumb_func_start ov97_02230E04
ov97_02230E04: ; 0x02230E04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r7, r3, #0
	mov r3, #0x30
	ldr r0, _02230F04 ; =0x0223E680
	mul r3, r2
	add r6, r1, #0
	add r4, r0, r3
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _02230E4E
	ldr r0, [r4, #8]
	mov r2, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	lsl r0, r7, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, _02230F08 ; =0x000029FC
	ldr r3, [r4, #4]
	ldr r0, [r5, r0]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
_02230E4E:
	ldr r1, [r4, #0x1c]
	add r0, r6, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201ADA4
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02230E7C
	ldr r2, _02230F0C ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	ldr r1, _02230F10 ; =0x00002A04
	str r0, [r5, r1]
	mov r0, #0x57
	bl sub_0200B358
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
_02230E7C:
	ldr r0, _02230F14 ; =0x00002B98
	ldr r2, _02230F18 ; =0x00010200
	str r7, [r5, r0]
	add r0, r0, #4
	str r4, [r5, r0]
	ldr r3, [r4, #0x24]
	add r0, r5, #0
	add r1, r6, #0
	blx r3
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _02230ED6
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r3, #0x57
	bl sub_0200B29C
	str r0, [sp, #0x14]
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r1, [r4, #0x14]
	add r0, r6, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x14]
	bl sub_020237BC
	ldr r0, _02230F10 ; =0x00002A04
	ldr r0, [r5, r0]
	bl sub_0200B190
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0200B3F0
_02230ED6:
	ldr r0, _02230F1C ; =0x00002BD0
	add r0, r5, r0
	cmp r6, r0
	bne _02230EEC
	add r0, r6, #0
	mov r1, #0
	mov r2, #0x13
	mov r3, #0xa
	bl sub_0200E060
	b _02230EF8
_02230EEC:
	add r0, r6, #0
	mov r1, #0
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200DC48
_02230EF8:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x10]
	mul r0, r1
	add r0, r7, r0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02230F04: .word 0x0223E680
_02230F08: .word 0x000029FC
_02230F0C: .word 0x000001A5
_02230F10: .word 0x00002A04
_02230F14: .word 0x00002B98
_02230F18: .word 0x00010200
_02230F1C: .word 0x00002BD0
	thumb_func_end ov97_02230E04

	thumb_func_start ov97_02230F20
ov97_02230F20: ; 0x02230F20
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r4, #0
_02230F2A:
	add r4, r4, r6
	cmp r4, #3
	bne _02230F32
	mov r4, #0
_02230F32:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _02230F3C
	mov r4, #2
_02230F3C:
	cmp r7, r4
	beq _02230F4E
	ldr r0, _02230F54 ; =0x00002BA0
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl sub_0202DD5C
	cmp r0, #0
	beq _02230F2A
_02230F4E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230F54: .word 0x00002BA0
	thumb_func_end ov97_02230F20

	thumb_func_start ov97_02230F58
ov97_02230F58: ; 0x02230F58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	mov r2, #1
	add r5, r0, #0
	str r2, [sp]
	add r6, r3, #0
	ldr r3, [r5, #0]
	mov r0, #0x74
	bl sub_02006FE8
	add r1, sp, #4
	add r7, r0, #0
	bl sub_020A7248
	ldr r0, _02230F94 ; =0x000029FC
	ldr r2, [sp, #4]
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r2, #0xc
	add r3, r6, #0
	bl sub_02019574
	add r0, r7, #0
	bl sub_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230F94: .word 0x000029FC
	thumb_func_end ov97_02230F58

	thumb_func_start ov97_02230F98
ov97_02230F98: ; 0x02230F98
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #0
	add r4, r1, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #3
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _02231084 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x74
	mov r1, #6
	bl sub_02006E3C
	cmp r4, #0
	beq _02230FDE
	cmp r4, #1
	beq _02230FFE
	b _0223101C
_02230FDE:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _02231084 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x74
	mov r1, #4
	bl sub_02006E60
	b _0223101C
_02230FFE:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _02231084 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x74
	mov r1, #5
	bl sub_02006E60
_0223101C:
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [sp, #4]
	mov r0, #0x74
	add r3, r0, #0
	add r2, r1, #0
	add r3, #0xec
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	ldr r0, [r5, #0]
	ldr r2, _02231084 ; =0x000029FC
	str r0, [sp, #0xc]
	ldr r2, [r5, r2]
	mov r0, #0x74
	mov r3, #3
	bl sub_02006E3C
	mov r2, #3
	add r0, r5, #0
	mov r1, #2
	lsl r3, r2, #9
	bl ov97_02230F58
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	ldr r0, _02231084 ; =0x000029FC
	mov r2, #0
	ldr r0, [r5, r0]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, _02231084 ; =0x000029FC
	mov r1, #3
	ldr r0, [r5, r0]
	bl sub_02019448
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02231084: .word 0x000029FC
	thumb_func_end ov97_02230F98

	thumb_func_start ov97_02231088
ov97_02231088: ; 0x02231088
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_0200682C
	ldr r1, _022310F0 ; =0x00002BC8
	ldr r0, [r0, r1]
	bl sub_02001288
	add r4, r0, #0
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _022310AE
	add r0, r0, #1
	cmp r4, r0
	beq _022310EC
	b _022310C8
_022310AE:
	ldr r0, _022310F4 ; =0x000005DC
	bl sub_02005748
	cmp r6, #0
	beq _022310EC
	add r0, r7, #0
	blx r6
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022310EC
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022310C8:
	ldr r0, _022310F4 ; =0x000005DC
	bl sub_02005748
	cmp r4, #0
	beq _022310EC
	cmp r4, #0x1e
	bhs _022310DA
	str r4, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022310DA:
	ldr r0, _022310F8 ; =0x0223F1BC
	str r4, [r0, #0]
	add r0, r7, #0
	blx r4
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022310EC
	str r0, [r5, #0]
_022310EC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022310F0: .word 0x00002BC8
_022310F4: .word 0x000005DC
_022310F8: .word 0x0223F1BC
	thumb_func_end ov97_02231088

	thumb_func_start ov97_022310FC
ov97_022310FC: ; 0x022310FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r1, _02231218 ; =0x00002DCC
	add r6, r0, #0
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _0223115C
	add r0, r1, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0223115C
	add r1, #8
	ldr r0, [r6, r1]
	cmp r0, #0
	bne _0223115C
	bl ov97_02237A60
	cmp r0, #1
	bne _02231128
	add r0, r6, #0
	bl ov97_02230438
_02231128:
	bl ov97_02237A20
	bl ov97_02237A74
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x1a
	mov r2, #0x17
	mov r3, #0x19
	bl ov97_02237B0C
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, [r6, #0]
	mov r2, #1
	str r0, [sp, #4]
	mov r0, #0x13
	mov r3, #0x60
	bl sub_02006E84
_0223115C:
	mov r0, #0xb2
	mov r4, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0xc]
	add r5, r6, #0
	mov r7, #0x64
_02231168:
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	lsl r0, r0, #2
	add r1, r6, r0
	ldr r0, _0223121C ; =0x00002BB4
	ldr r0, [r1, r0]
	add r1, r0, r4
	ldr r0, _02231220 ; =0x0000034A
	ldrh r0, [r1, r0]
	str r0, [sp, #8]
	cmp r0, #0
	bne _02231192
	ldr r0, _02231218 ; =0x00002DCC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022311FC
	mov r1, #0
	bl sub_02021CAC
	b _022311FC
_02231192:
	ldr r0, [sp, #0xc]
	ldr r1, _02231218 ; =0x00002DCC
	add r0, #0xa
	str r0, [sp]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x10]
	mov r0, #0
	mov r3, #0x10
	bl ov97_02237D14
	ldr r1, _02231218 ; =0x00002DCC
	str r0, [r5, r1]
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r1, #0
	bl sub_02079D8C
	add r1, r0, #0
	ldr r0, [r6, #0]
	mov r2, #0
	str r0, [sp]
	mov r0, #0x13
	add r3, sp, #0x18
	bl sub_02006F50
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r0, [sp, #0x18]
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r1, r7, #5
	lsl r2, r2, #8
	bl sub_020C02BC
	mov r1, #0
	ldr r0, [sp, #8]
	add r2, r1, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, _02231218 ; =0x00002DCC
	add r1, r1, #3
	ldr r0, [r5, r0]
	bl sub_02021E90
	ldr r0, [sp, #0x14]
	bl sub_020181C4
_022311FC:
	ldr r0, [sp, #0xc]
	add r4, r4, #2
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r5, r5, #4
	add r0, #0x19
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r7, #0x10
	cmp r0, #3
	blt _02231168
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02231218: .word 0x00002DCC
_0223121C: .word 0x00002BB4
_02231220: .word 0x0000034A
	thumb_func_end ov97_022310FC

	thumb_func_start ov97_02231224
ov97_02231224: ; 0x02231224
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	mov r1, #0x57
	lsl r2, r0, #0x10
	bl sub_02017FC8
	ldr r1, _02231288 ; =0x00003D54
	add r0, r4, #0
	mov r2, #0x57
	bl sub_0200681C
	ldr r2, _02231288 ; =0x00003D54
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x57
	bl sub_02018340
	ldr r1, _0223128C ; =0x000029FC
	str r0, [r4, r1]
	mov r0, #0x57
	str r0, [r4, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0xaf
	mov r1, #2
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r1, #1
	add r0, #0x7c
	str r1, [r4, r0]
	mov r0, #0x57
	bl ov97_02237694
	mov r2, #3
	mov r0, #0
	mov r1, #0x5b
	lsl r2, r2, #8
	bl sub_02017FC8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_02231288: .word 0x00003D54
_0223128C: .word 0x000029FC
	thumb_func_end ov97_02231224

	thumb_func_start ov97_02231290
ov97_02231290: ; 0x02231290
	push {r4, lr}
	add r4, r1, #0
	bl sub_02013BA8
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02013B68
	ldr r1, _022312B0 ; =0x04000010
	mov r2, #8
	mov r3, #1
	bl sub_02013BB8
	pop {r4, pc}
	nop
_022312B0: .word 0x04000010
	thumb_func_end ov97_02231290

	thumb_func_start ov97_022312B4
ov97_022312B4: ; 0x022312B4
	push {r3, r4, r5, lr}
	ldr r4, _02231308 ; =0x00003130
	ldr r5, _0223130C ; =0x00000C14
	add r4, r0, r4
	add r0, r5, #0
	str r1, [r4, r5]
	sub r0, #0xc
	str r2, [r4, r0]
	add r0, r5, #0
	sub r0, #8
	sub r5, #0x14
	str r3, [r4, r0]
	ldr r0, [r4, r5]
	cmp r0, #0
	bne _022312E6
	mov r2, #6
	lsl r2, r2, #8
	mov r0, #0x57
	add r1, r4, #0
	add r2, r4, r2
	bl sub_02013B10
	mov r1, #3
	lsl r1, r1, #0xa
	str r0, [r4, r1]
_022312E6:
	ldr r0, _02231310 ; =0x00000C04
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _022312FE
	mov r2, #1
	ldr r0, _02231314 ; =ov97_02231290
	add r1, r4, #0
	lsl r2, r2, #0xa
	bl sub_0200DA04
	ldr r1, _02231310 ; =0x00000C04
	str r0, [r4, r1]
_022312FE:
	mov r0, #0xc1
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02231308: .word 0x00003130
_0223130C: .word 0x00000C14
_02231310: .word 0x00000C04
_02231314: .word ov97_02231290
	thumb_func_end ov97_022312B4

	thumb_func_start ov97_02231318
ov97_02231318: ; 0x02231318
	push {r4, lr}
	ldr r1, _0223134C ; =0x00003130
	add r4, r0, r1
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223132C
	bl sub_02013B40
_0223132C:
	ldr r0, _02231350 ; =0x00000C04
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231338
	bl sub_0200DA58
_02231338:
	mov r0, #3
	mov r1, #0
	lsl r0, r0, #0xa
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	bl sub_02013BA8
	pop {r4, pc}
	nop
_0223134C: .word 0x00003130
_02231350: .word 0x00000C04
	thumb_func_end ov97_02231318

	thumb_func_start ov97_02231354
ov97_02231354: ; 0x02231354
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _0223145C ; =0x00003130
	mov r5, #0x15
	add r4, r0, r1
	mov r0, #0xc1
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	lsl r5, r5, #0xe
	cmp r1, #0
	bne _0223136C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223136C:
	add r1, r0, #4
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _022313BA
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	add r2, r2, r1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	add r1, r2, #0
	add r2, r2, r1
	sub r1, r0, #4
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r1, #0xc
	mov r1, #0xfa
	lsl r1, r1, #2
	cmp r2, r1
	ble _022313F4
	mov r2, #0
	add r1, r0, #0
	str r2, [r4, r0]
	sub r1, #8
	str r2, [r4, r1]
	sub r0, r0, #4
	mov r5, #0xa8
	str r2, [r4, r0]
	b _022313F4
_022313BA:
	add r1, r0, #0
	sub r1, #8
	ldr r2, [r4, r1]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r2, r2, r1
	add r1, r0, #0
	sub r1, #8
	str r2, [r4, r1]
	sub r1, r0, #4
	ldr r2, [r4, r1]
	lsr r1, r2, #0x1f
	add r1, r2, r1
	asr r2, r1, #1
	sub r1, r0, #4
	str r2, [r4, r1]
	mov r2, #1
	ldr r1, [r4, r1]
	lsl r2, r2, #0xa
	cmp r1, r2
	bge _022313F4
	mov r1, #0
	lsl r3, r2, #2
	add r2, r0, #0
	str r1, [r4, r0]
	sub r2, #8
	str r3, [r4, r2]
	sub r0, r0, #4
	str r1, [r4, r0]
_022313F4:
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02013B54
	add r2, r0, #0
	mov r0, #0x54
	add r3, r0, #0
	add r3, #0xfc
_02231406:
	asr r1, r5, #0xb
	lsr r1, r1, #0x14
	add r1, r5, r1
	asr r1, r1, #0xc
	bpl _02231412
	mov r1, #0
_02231412:
	cmp r1, #0xa8
	ble _02231418
	mov r1, #0xa8
_02231418:
	lsl r6, r3, #1
	add r7, r2, r6
	sub r6, r1, r0
	strh r6, [r7, #6]
	ldrh r6, [r7, #6]
	sub r1, r0, r1
	add r3, r3, #4
	strh r6, [r7, #2]
	mov r6, #0xa8
	sub r6, r6, r0
	lsl r6, r6, #3
	add r6, r2, r6
	strh r1, [r6, #6]
	ldrh r1, [r6, #6]
	add r0, r0, #1
	strh r1, [r6, #2]
	ldr r1, _02231460 ; =0x00000C08
	ldr r1, [r4, r1]
	add r5, r5, r1
	cmp r0, #0xa8
	blt _02231406
	mov r1, #6
	add r0, r2, #0
	lsl r1, r1, #8
	bl sub_020C2C54
	mov r0, #3
	lsl r0, r0, #0xa
	ldr r0, [r4, r0]
	bl sub_02013B94
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223145C: .word 0x00003130
_02231460: .word 0x00000C08
	thumb_func_end ov97_02231354

	thumb_func_start ov97_02231464
ov97_02231464: ; 0x02231464
	push {r4, lr}
	add r4, r0, #0
	bl ov97_0223847C
	sub r0, r0, #2
	cmp r0, #1
	bhi _0223147E
	ldr r0, _02231480 ; =0x0000061B
	bl sub_02005748
	ldr r0, _02231484 ; =0x00003D48
	mov r1, #0
	str r1, [r4, r0]
_0223147E:
	pop {r4, pc}
	; .align 2, 0
_02231480: .word 0x0000061B
_02231484: .word 0x00003D48
	thumb_func_end ov97_02231464

	thumb_func_start ov97_02231488
ov97_02231488: ; 0x02231488
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #3
	blt _0223149A
	bl sub_02022974
_0223149A:
	mov r0, #0x1f
	bl sub_02025C48
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	sub r0, #0xc
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r2, [r1, r0]
	mov r0, #0x35
	lsl r0, r0, #4
	ldrb r1, [r2, r0]
	cmp r1, #0xff
	beq _022314BC
	add r1, r1, #1
	strb r1, [r2, r0]
_022314BC:
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	sub r0, #0xc
	lsl r1, r1, #2
	add r1, r4, r1
	ldr r2, [r1, r0]
	mov r0, #0xd2
	lsl r0, r0, #2
	ldrb r1, [r2, r0]
	cmp r1, #0xff
	beq _022314D8
	sub r1, r1, #1
	strb r1, [r2, r0]
_022314D8:
	mov r0, #0x1f
	bl sub_02025C84
	ldr r0, _022314F0 ; =0x00002BA4
	ldr r0, [r4, r0]
	bl ov97_0223846C
	ldr r1, _022314F4 ; =ov97_02231464
	ldr r0, _022314F8 ; =0x00003D48
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_022314F0: .word 0x00002BA4
_022314F4: .word ov97_02231464
_022314F8: .word 0x00003D48
	thumb_func_end ov97_02231488

	thumb_func_start ov97_022314FC
ov97_022314FC: ; 0x022314FC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	ldr r2, _022315FC ; =0x021BF67C
	add r6, r1, #0
	ldr r3, [r2, #0x48]
	ldr r1, _02231600 ; =0x00003D4C
	add r5, r0, #0
	mov r2, #0x10
	ldr r0, [r5, r1]
	tst r2, r3
	beq _0223151A
	cmp r0, #1
	beq _0223151A
	mov r2, #1
	str r2, [r5, r1]
_0223151A:
	ldr r1, _022315FC ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #0x20
	tst r1, r2
	beq _02231530
	ldr r1, _02231600 ; =0x00003D4C
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _02231530
	mov r2, #0
	str r2, [r5, r1]
_02231530:
	ldr r1, _02231600 ; =0x00003D4C
	ldr r1, [r5, r1]
	cmp r0, r1
	beq _02231560
	cmp r1, #0
	bne _02231540
	mov r1, #1
	b _02231542
_02231540:
	mov r1, #0
_02231542:
	ldr r0, _02231604 ; =0x00002DC4
	ldr r0, [r5, r0]
	bl sub_02021D6C
	ldr r0, _02231600 ; =0x00003D4C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02231556
	mov r1, #1
	b _02231558
_02231556:
	mov r1, #0
_02231558:
	ldr r0, _02231608 ; =0x00002DC8
	ldr r0, [r5, r0]
	bl sub_02021D6C
_02231560:
	ldr r0, _022315FC ; =0x021BF67C
	mov r4, #0
	ldr r1, [r0, #0x48]
	mov r0, #2
	add r2, r1, #0
	tst r2, r0
	beq _02231572
	add r4, r0, #0
	b _022315A2
_02231572:
	mov r0, #1
	and r1, r0
	beq _02231588
	cmp r6, #0
	beq _02231588
	ldr r2, _02231600 ; =0x00003D4C
	ldr r2, [r5, r2]
	cmp r2, #0
	bne _02231588
	add r4, r0, #0
	b _022315A2
_02231588:
	cmp r1, #0
	beq _02231598
	ldr r0, _02231600 ; =0x00003D4C
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02231598
	mov r4, #2
	b _022315A2
_02231598:
	cmp r1, #0
	beq _022315A2
	cmp r6, #0
	bne _022315A2
	mov r4, #3
_022315A2:
	cmp r4, #1
	bne _022315DA
	ldr r0, _0223160C ; =0x000005DC
	bl sub_02005748
	mov r0, #0xab
	bl sub_020364F0
	mov r3, #0xa
	ldr r1, _02231610 ; =0x00002C34
	mov r0, #1
	str r0, [r5, r1]
	mov r0, #0x15
	sub r1, #0x64
	str r0, [r7, #0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x11
	lsl r3, r3, #6
	bl ov97_02230E04
	ldr r0, _02231614 ; =0x00002BD0
	mov r1, #0x13
	add r0, r5, r0
	bl sub_0200E7FC
	ldr r1, _02231618 ; =0x00003D50
	str r0, [r5, r1]
_022315DA:
	cmp r4, #2
	bne _022315EE
	ldr r0, _0223160C ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x13
	bl ov97_02231F1C
_022315EE:
	cmp r4, #3
	bne _022315F8
	ldr r0, _0223160C ; =0x000005DC
	bl sub_02005748
_022315F8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022315FC: .word 0x021BF67C
_02231600: .word 0x00003D4C
_02231604: .word 0x00002DC4
_02231608: .word 0x00002DC8
_0223160C: .word 0x000005DC
_02231610: .word 0x00002C34
_02231614: .word 0x00002BD0
_02231618: .word 0x00003D50
	thumb_func_end ov97_022314FC

	thumb_func_start ov97_0223161C
ov97_0223161C: ; 0x0223161C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0x1d
	bls _02231632
	b _02231B88
_02231632:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0223163E: ; jump table
	.short _0223167A - _0223163E - 2 ; case 0
	.short _022316E8 - _0223163E - 2 ; case 1
	.short _022316FA - _0223163E - 2 ; case 2
	.short _02231770 - _0223163E - 2 ; case 3
	.short _022317F0 - _0223163E - 2 ; case 4
	.short _02231818 - _0223163E - 2 ; case 5
	.short _02231838 - _0223163E - 2 ; case 6
	.short _0223186E - _0223163E - 2 ; case 7
	.short _02231892 - _0223163E - 2 ; case 8
	.short _022318B8 - _0223163E - 2 ; case 9
	.short _022318E4 - _0223163E - 2 ; case 10
	.short _0223191E - _0223163E - 2 ; case 11
	.short _02231942 - _0223163E - 2 ; case 12
	.short _0223194E - _0223163E - 2 ; case 13
	.short _0223195A - _0223163E - 2 ; case 14
	.short _0223196A - _0223163E - 2 ; case 15
	.short _02231976 - _0223163E - 2 ; case 16
	.short _022319B8 - _0223163E - 2 ; case 17
	.short _02231A10 - _0223163E - 2 ; case 18
	.short _02231A6E - _0223163E - 2 ; case 19
	.short _02231A7A - _0223163E - 2 ; case 20
	.short _02231AC8 - _0223163E - 2 ; case 21
	.short _02231AB6 - _0223163E - 2 ; case 22
	.short _02231AFC - _0223163E - 2 ; case 23
	.short _02231B10 - _0223163E - 2 ; case 24
	.short _02231B4A - _0223163E - 2 ; case 25
	.short _02231B5A - _0223163E - 2 ; case 26
	.short _02231B66 - _0223163E - 2 ; case 27
	.short _02231B78 - _0223163E - 2 ; case 28
	.short _02231B88 - _0223163E - 2 ; case 29
_0223167A:
	add r0, r6, #0
	bl sub_02006840
	ldr r1, [r0, #8]
	ldr r0, _022319D0 ; =0x00002BA4
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	bl sub_0202442C
	ldr r1, _022319D4 ; =0x00002BA0
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r0, [r4, r0]
	bl sub_02025E44
	ldr r1, _022319D8 ; =0x00002BA8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl sub_02027B50
	ldr r1, _022319DC ; =0x00002BAC
	str r0, [r4, r1]
	sub r1, #0xc
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_0202DB00
	ldr r1, _022319E0 ; =0x00002BB4
	str r0, [r4, r1]
	sub r1, #0x14
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_0202DB00
	ldr r1, _022319E4 ; =0x00002BB8
	str r0, [r4, r1]
	sub r1, #0x18
	ldr r0, [r4, r1]
	mov r1, #2
	bl sub_0202DB00
	ldr r1, _022319E8 ; =0x00002BBC
	mov r2, #1
	str r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov97_02230F20
	mov r1, #0xaf
	lsl r1, r1, #6
	str r0, [r4, r1]
	mov r0, #1
	str r0, [r5, #0]
	b _02231B88
_022316E8:
	bl ov97_02232054
	ldr r0, _022319EC ; =0x000029FC
	ldr r0, [r4, r0]
	bl ov97_02232074
	mov r0, #2
	str r0, [r5, #0]
	b _02231B88
_022316FA:
	bl sub_0201D710
	add r0, r4, #0
	mov r1, #0
	bl ov97_02230F98
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x57
	bl sub_02002E7C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC ; =0x000029FC
	mov r2, #1
	ldr r0, [r4, r0]
	mov r3, #0xd
	bl sub_0200DAA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC ; =0x000029FC
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200DAA4
	ldr r0, _022319DC ; =0x00002BAC
	mov r1, #0
	ldr r0, [r4, r0]
	mov r2, #0x13
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x57
	str r0, [sp, #4]
	ldr r0, _022319EC ; =0x000029FC
	mov r3, #0xa
	ldr r0, [r4, r0]
	bl sub_0200DD0C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231770:
	mov r1, #0xaf
	lsl r1, r1, #6
	ldr r6, [r4, r1]
	ldr r1, _022319F0 ; =0x021BF67C
	mov r2, #0x40
	ldr r1, [r1, #0x48]
	add r3, r1, #0
	tst r3, r2
	beq _0223178E
	add r1, r6, #0
	sub r2, #0x41
	bl ov97_02230F20
	add r6, r0, #0
	b _022317CA
_0223178E:
	mov r2, #0x80
	tst r2, r1
	beq _022317A0
	add r1, r6, #0
	mov r2, #1
	bl ov97_02230F20
	add r6, r0, #0
	b _022317CA
_022317A0:
	mov r0, #2
	tst r0, r1
	beq _022317BA
	ldr r0, _022319F4 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x1c
	add r3, r5, #0
	bl ov97_02230C10
	b _022317CA
_022317BA:
	mov r0, #1
	tst r0, r1
	beq _022317CA
	ldr r0, _022319F4 ; =0x000005DC
	bl sub_02005748
	mov r0, #4
	str r0, [r5, #0]
_022317CA:
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, r6
	bne _022317D6
	b _02231B88
_022317D6:
	mov r0, #6
	lsl r0, r0, #8
	bl sub_02005748
	mov r0, #0xaf
	lsl r0, r0, #6
	str r6, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	b _02231B88
_022317F0:
	ldr r1, _022319F8 ; =0x00002BD0
	mov r3, #0xa
	add r1, r4, r1
	mov r2, #7
	lsl r3, r3, #6
	bl ov97_02230E04
	ldr r3, _022319FC ; =0x00002BF0
	mov r2, #8
	add r1, r3, #0
	str r0, [r4, r3]
	sub r1, #0x10
	ldr r3, [r4, r3]
	add r0, r4, #0
	add r1, r4, r1
	bl ov97_02230E04
	mov r0, #5
	str r0, [r5, #0]
	b _02231B88
_02231818:
	add r0, r6, #0
	add r1, r5, #0
	mov r2, #0
	bl ov97_02231088
	ldr r0, _022319F0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022318EC
	ldr r0, _022319F4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0xb
	str r0, [r5, #0]
	b _02231B88
_02231838:
	mov r0, #6
	lsl r0, r0, #8
	bl sub_02005748
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, _022319F8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230518
	ldr r0, _02231A00 ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230500
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	mov r3, #0x66
	bl ov97_022312B4
	mov r0, #7
	str r0, [r5, #0]
	b _02231B88
_0223186E:
	bl ov97_02231354
	cmp r0, #0
	beq _022318EC
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov97_02230C44
	ldr r2, _02231A04 ; =0x00708000
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #1
	bl ov97_022312B4
	mov r0, #8
	str r0, [r5, #0]
	b _02231B88
_02231892:
	bl ov97_02231354
	ldr r0, _022319F0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r1, r0
	beq _022318EC
	lsl r0, r0, #9
	bl sub_02005748
	mov r1, #1
	add r0, r4, #0
	lsl r2, r1, #0xc
	mov r3, #0x66
	bl ov97_022312B4
	mov r0, #9
	str r0, [r5, #0]
	b _02231B88
_022318B8:
	bl ov97_02231354
	cmp r0, #0
	beq _022318EC
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	ldr r2, _02231A04 ; =0x00708000
	add r0, r4, #0
	mov r1, #0
	lsr r3, r2, #1
	bl ov97_022312B4
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0xa
	str r0, [r5, #0]
	b _02231B88
_022318E4:
	bl ov97_02231354
	cmp r0, #0
	bne _022318EE
_022318EC:
	b _02231B88
_022318EE:
	ldr r0, _022319F8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x13
	mov r3, #0xa
	bl sub_0200E060
	ldr r0, _02231A00 ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	mov r2, #0xa
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	bl ov97_02231318
	mov r0, #5
	str r0, [r5, #0]
	b _02231B88
_0223191E:
	bl ov97_02230868
	ldr r0, _022319F8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230518
	ldr r0, _022319F8 ; =0x00002BD0
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _022319F8 ; =0x00002BD0
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #3
	str r0, [r5, #0]
	b _02231B88
_02231942:
	ldr r2, _02231A08 ; =ov97_02230834
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_02231088
	b _02231B88
_0223194E:
	ldr r2, _02231A08 ; =ov97_02230834
	add r0, r6, #0
	add r1, r5, #0
	bl ov97_02231088
	b _02231B88
_0223195A:
	ldr r1, _02231A00 ; =0x00002BE0
	ldr r2, _02231A0C ; =0x00010200
	add r1, r4, r1
	bl ov97_02230BC4
	mov r0, #0xd
	str r0, [r5, #0]
	b _02231B88
_0223196A:
	mov r1, #0
	mov r2, #0x10
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231976:
	bl ov97_02230868
	ldr r0, _022319F8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230518
	ldr r0, _022319F8 ; =0x00002BD0
	add r0, r4, r0
	bl sub_0201ACF4
	ldr r0, _022319F8 ; =0x00002BD0
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, r4, #0
	mov r1, #0
	mov r2, #3
	bl ov97_02230C44
	ldr r0, _022319EC ; =0x000029FC
	ldr r0, [r4, r0]
	bl ov97_02230664
	add r0, r4, #0
	bl ov97_02230410
	add r0, r4, #0
	bl ov97_022304AC
	mov r0, #0x11
	str r0, [r5, #0]
	b _02231B88
_022319B8:
	bl ov97_02231BD8
	bl sub_02039734
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
	nop
_022319D0: .word 0x00002BA4
_022319D4: .word 0x00002BA0
_022319D8: .word 0x00002BA8
_022319DC: .word 0x00002BAC
_022319E0: .word 0x00002BB4
_022319E4: .word 0x00002BB8
_022319E8: .word 0x00002BBC
_022319EC: .word 0x000029FC
_022319F0: .word 0x021BF67C
_022319F4: .word 0x000005DC
_022319F8: .word 0x00002BD0
_022319FC: .word 0x00002BF0
_02231A00: .word 0x00002BE0
_02231A04: .word 0x00708000
_02231A08: .word ov97_02230834
_02231A0C: .word 0x00010200
_02231A10:
	mov r6, #0
	add r0, r6, #0
	bl sub_02035D78
	cmp r0, #0
	beq _02231A62
	add r0, r4, #0
	add r0, #0x90
	bl sub_02034150
	ldr r1, _02231BAC ; =0x00002B08
	add r0, r4, #0
	add r1, r4, r1
	bl ov97_02231CA0
	add r6, r0, #0
	bne _02231A52
	ldr r0, _02231BB0 ; =0x00002C30
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231A52
	ldr r0, _02231BAC ; =0x00002B08
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	ldr r0, _02231BAC ; =0x00002B08
	add r0, r4, r0
	bl sub_0201A954
	ldr r0, _02231BB0 ; =0x00002C30
	mov r1, #0
	str r1, [r4, r0]
_02231A52:
	ldr r1, _02231BB4 ; =0x00002AF8
	add r0, r4, #0
	add r1, r4, r1
	add r2, r6, #0
	bl ov97_02231E78
	ldr r0, _02231BB0 ; =0x00002C30
	str r6, [r4, r0]
_02231A62:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov97_022314FC
	b _02231B88
_02231A6E:
	mov r1, #0
	mov r2, #0x14
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231A7A:
	bl ov97_02230438
	ldr r0, _02231BB8 ; =0x00002BD0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230518
	ldr r0, _02231BBC ; =0x00002BE0
	mov r1, #0
	add r0, r4, r0
	bl ov97_02230500
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02230C44
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x57
	bl sub_02002E7C
	add r0, r4, #0
	mov r1, #1
	mov r2, #4
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231AB6:
	bl sub_02036780
	cmp r0, #0
	bne _02231B88
	mov r0, #0xb1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	b _02231B88
_02231AC8:
	ldr r0, _02231BC0 ; =0x00002C34
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02231B88
	ldr r1, _02231BC4 ; =0x00002DD8
	add r0, r4, #0
	ldr r2, [r4, #0]
	add r0, #0x90
	add r1, r4, r1
	bl ov97_0223829C
	ldr r0, _02231BC4 ; =0x00002DD8
	mov r1, #0xd6
	add r0, r4, r0
	lsl r1, r1, #2
	bl ov97_0222D1F0
	add r0, r4, #0
	bl ov97_02231488
	mov r0, #0x17
	str r0, [r5, #0]
	b _02231B88
_02231AFC:
	bl ov97_02238528
	cmp r0, #4
	bne _02231B88
	mov r0, #0x93
	bl sub_020364F0
	mov r0, #0x18
	str r0, [r5, #0]
	b _02231B88
_02231B10:
	bl ov97_02231C84
	cmp r0, #0
	beq _02231B22
	mov r0, #0x93
	bl sub_02036540
	cmp r0, #1
	bne _02231B88
_02231B22:
	bl ov97_022384F4
	ldr r1, _02231BB8 ; =0x00002BD0
	mov r3, #0xa
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0x12
	lsl r3, r3, #6
	bl ov97_02230E04
	ldr r0, _02231BC8 ; =0x00003D50
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x19
	bl ov97_02231F1C
	b _02231B88
_02231B4A:
	ldr r0, _02231BCC ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _02231B88
	mov r0, #0x13
	str r0, [r5, #0]
	b _02231B88
_02231B5A:
	mov r1, #0
	mov r2, #0x1c
	add r3, r5, #0
	bl ov97_02230C10
	b _02231B88
_02231B66:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02231B88
	mov r0, #0xb1
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	b _02231B88
_02231B78:
	bl ov97_02230438
	add r0, r4, #0
	bl ov97_02231318
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_02231B88:
	ldr r0, _02231BD0 ; =0x00002C44
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231B94
	bl sub_020219F8
_02231B94:
	bl ov97_02237CA0
	ldr r0, _02231BD4 ; =0x00003D48
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02231BA4
	add r0, r4, #0
	blx r1
_02231BA4:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02231BAC: .word 0x00002B08
_02231BB0: .word 0x00002C30
_02231BB4: .word 0x00002AF8
_02231BB8: .word 0x00002BD0
_02231BBC: .word 0x00002BE0
_02231BC0: .word 0x00002C34
_02231BC4: .word 0x00002DD8
_02231BC8: .word 0x00003D50
_02231BCC: .word 0x021BF67C
_02231BD0: .word 0x00002C44
_02231BD4: .word 0x00003D48
	thumb_func_end ov97_0223161C

	thumb_func_start ov97_02231BD8
ov97_02231BD8: ; 0x02231BD8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xaf
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	mov r2, #0xd6
	lsl r1, r1, #2
	add r1, r5, r1
	sub r0, #0xc
	ldr r4, [r1, r0]
	add r0, r5, #0
	add r0, #0xe0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020D50B8
	mov r1, #0x41
	add r0, r5, #0
	lsl r1, r1, #2
	add r0, #0x90
	add r1, r4, r1
	mov r2, #0x50
	bl sub_020D50B8
	ldr r0, _02231C40 ; =0x00000428
	mov r1, #0
	strb r1, [r5, r0]
	add r0, r5, #0
	add r0, #0xde
	ldrb r1, [r0]
	mov r0, #0x10
	mov r2, #0xf
	bic r1, r0
	add r0, r5, #0
	add r0, #0xde
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0xde
	ldrb r1, [r0]
	mov r0, #0x20
	orr r1, r0
	add r0, r5, #0
	add r0, #0xde
	strb r1, [r0]
	ldr r1, _02231C44 ; =0x00002BA4
	add r0, r5, #4
	ldr r1, [r5, r1]
	bl ov97_0222D1C4
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02231C40: .word 0x00000428
_02231C44: .word 0x00002BA4
	thumb_func_end ov97_02231BD8

	thumb_func_start ov97_02231C48
ov97_02231C48: ; 0x02231C48
	push {r3, r4}
	ldr r3, [r0, #0]
	ldr r1, [r0, #4]
	add r2, r0, #0
	mov r4, #0
	cmp r1, r3
	bge _02231C5C
	add r3, r1, #0
	mov r4, #1
	add r2, r0, #4
_02231C5C:
	ldr r1, [r0, #8]
	cmp r1, r3
	bge _02231C6A
	add r2, r0, #0
	add r3, r1, #0
	mov r4, #2
	add r2, #8
_02231C6A:
	ldr r1, [r0, #0xc]
	cmp r1, r3
	bge _02231C76
	add r2, r0, #0
	mov r4, #3
	add r2, #0xc
_02231C76:
	ldr r0, _02231C80 ; =0x3FFF0001
	str r0, [r2, #0]
	add r0, r4, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02231C80: .word 0x3FFF0001
	thumb_func_end ov97_02231C48

	thumb_func_start ov97_02231C84
ov97_02231C84: ; 0x02231C84
	push {r3, r4, r5, lr}
	mov r5, #0
	mov r4, #1
_02231C8A:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _02231C96
	add r5, r5, #1
_02231C96:
	add r4, r4, #1
	cmp r4, #5
	blt _02231C8A
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02231C84

	thumb_func_start ov97_02231CA0
ov97_02231CA0: ; 0x02231CA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	mov r6, #0
	mov r0, #1
	str r1, [sp, #0x10]
	add r7, r6, #0
	str r0, [sp, #0x24]
	add r4, r5, #4
_02231CB2:
	ldr r0, [sp, #0x24]
	bl sub_02032EE8
	cmp r0, #0
	bne _02231CD4
	ldr r0, _02231E5C ; =0x00002C08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231CC6
	add r7, r7, #1
_02231CC6:
	ldr r0, _02231E5C ; =0x00002C08
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _02231E60 ; =0x3FFF0001
	add r0, #0x14
	str r1, [r4, r0]
	b _02231CFC
_02231CD4:
	ldr r1, _02231E5C ; =0x00002C08
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _02231CFA
	ldr r1, _02231E5C ; =0x00002C08
	add r7, r7, #1
	str r0, [r4, r1]
	add r0, r1, #0
	add r1, #0x34
	ldr r1, [r5, r1]
	add r0, #0x34
	add r2, r1, #1
	ldr r0, [r5, r0]
	ldr r1, _02231E64 ; =0x00002C3C
	add r6, r6, #1
	str r2, [r5, r1]
	sub r1, #0x20
	str r0, [r4, r1]
	b _02231CFC
_02231CFA:
	add r6, r6, #1
_02231CFC:
	ldr r0, [sp, #0x24]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _02231CB2
	cmp r7, #0
	bne _02231D12
	add sp, #0x48
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02231D12:
	ldr r1, _02231E68 ; =0x00002C20
	ldr r0, [r5, r1]
	str r0, [sp, #0x38]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x3c]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [sp, #0x40]
	ldr r0, [r5, r1]
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x28]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x2c]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x30]
	add r0, sp, #0x38
	bl ov97_02231C48
	str r0, [sp, #0x34]
	mov r0, #0x57
	bl sub_0200B358
	add r4, r0, #0
	ldr r2, _02231E6C ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	str r0, [sp, #0x1c]
	mov r5, #0
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl sub_0201ADA4
	add r0, r5, #0
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _02231E40
	add r0, sp, #0x28
	str r0, [sp, #0x18]
_02231D78:
	ldr r0, [sp, #0x18]
	ldr r0, [r0, #0]
	bl sub_02032EE8
	add r7, r0, #0
	beq _02231E30
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl sub_0200B498
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #0x35
	mov r3, #0x57
	bl sub_0200B29C
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl sub_02025F30
	cmp r0, #0
	str r5, [sp]
	bne _02231DC2
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231E70 ; =0x00050600
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	add r3, r1, #0
	bl sub_0201D78C
	b _02231DDC
_02231DC2:
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r1, #0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	add r3, r1, #0
	bl sub_0201D78C
_02231DDC:
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add r0, r7, #0
	bl sub_02025F20
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #5
	bl sub_0200B60C
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #0x36
	mov r3, #0x57
	bl sub_0200B29C
	add r7, r0, #0
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231E74 ; =0x000E0F00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r7, #0
	mov r3, #0x50
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
	add r5, #0x18
_02231E30:
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blt _02231D78
_02231E40:
	cmp r6, #0
	beq _02231E4A
	ldr r0, [sp, #0x10]
	bl sub_0201A954
_02231E4A:
	ldr r0, [sp, #0x1c]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r6, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02231E5C: .word 0x00002C08
_02231E60: .word 0x3FFF0001
_02231E64: .word 0x00002C3C
_02231E68: .word 0x00002C20
_02231E6C: .word 0x000001A5
_02231E70: .word 0x00050600
_02231E74: .word 0x000E0F00
	thumb_func_end ov97_02231CA0

	thumb_func_start ov97_02231E78
ov97_02231E78: ; 0x02231E78
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, _02231F0C ; =0x00002BF4
	add r4, r1, #0
	str r2, [r5, r0]
	ldr r2, _02231F10 ; =0x000001A5
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x57
	bl sub_0200B144
	ldr r1, _02231F14 ; =0x00002A04
	str r0, [r5, r1]
	mov r0, #0x57
	bl sub_0200B358
	mov r1, #0x2a
	lsl r1, r1, #8
	str r0, [r5, r1]
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r3, #1
	str r3, [sp]
	mov r0, #0x2a
	ldr r2, _02231F0C ; =0x00002BF4
	str r3, [sp, #4]
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0
	bl sub_0200B60C
	mov r1, #0x2a
	lsl r1, r1, #8
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0x38
	mov r3, #0x57
	bl sub_0200B29C
	add r6, r0, #0
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231F18 ; =0x00010200
	mov r1, #1
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r6, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_0201A954
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _02231F14 ; =0x00002A04
	ldr r0, [r5, r0]
	bl sub_0200B190
	mov r0, #0x2a
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl sub_0200B3F0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02231F0C: .word 0x00002BF4
_02231F10: .word 0x000001A5
_02231F14: .word 0x00002A04
_02231F18: .word 0x00010200
	thumb_func_end ov97_02231E78

	thumb_func_start ov97_02231F1C
ov97_02231F1C: ; 0x02231F1C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov97_0222D2DC
	bl sub_02039794
	mov r0, #0xb1
	lsl r0, r0, #6
	str r6, [r5, r0]
	mov r0, #0x16
	str r0, [r4, #0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02231F1C

	thumb_func_start ov97_02231F38
ov97_02231F38: ; 0x02231F38
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r7, r0, #0
	ldr r0, _02231FE4 ; =0x00002A08
	mov r6, #0
	add r4, r7, #0
	add r5, r7, r0
_02231F4A:
	ldr r0, _02231FE4 ; =0x00002A08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02231F5E
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
_02231F5E:
	add r6, r6, #1
	add r4, #0x10
	add r5, #0x10
	cmp r6, #0x13
	blo _02231F4A
	ldr r0, _02231FE8 ; =0x00002BD0
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02231F7E
	add r0, r7, r0
	bl sub_0201ACF4
	ldr r0, _02231FE8 ; =0x00002BD0
	add r0, r7, r0
	bl sub_0201A8FC
_02231F7E:
	ldr r0, _02231FEC ; =0x00002BE0
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02231F94
	add r0, r7, r0
	bl sub_0201ACF4
	ldr r0, _02231FEC ; =0x00002BE0
	add r0, r7, r0
	bl sub_0201A8FC
_02231F94:
	ldr r0, _02231FF0 ; =0x000029FC
	mov r1, #0
	ldr r0, [r7, r0]
	bl sub_02019044
	ldr r0, _02231FF0 ; =0x000029FC
	mov r1, #1
	ldr r0, [r7, r0]
	bl sub_02019044
	ldr r0, _02231FF0 ; =0x000029FC
	mov r1, #2
	ldr r0, [r7, r0]
	bl sub_02019044
	ldr r0, _02231FF0 ; =0x000029FC
	mov r1, #3
	ldr r0, [r7, r0]
	bl sub_02019044
	ldr r0, _02231FF0 ; =0x000029FC
	ldr r0, [r7, r0]
	bl sub_020181C4
	ldr r0, _02231FF4 ; =0x00000061
	ldr r1, _02231FF8 ; =0x0223D71C
	bl sub_02000EC4
	mov r0, #0x5b
	bl sub_0201807C
	ldr r0, [sp]
	bl sub_02006830
	mov r0, #0x57
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231FE4: .word 0x00002A08
_02231FE8: .word 0x00002BD0
_02231FEC: .word 0x00002BE0
_02231FF0: .word 0x000029FC
_02231FF4: .word 0x00000061
_02231FF8: .word 0x0223D71C
	thumb_func_end ov97_02231F38

	thumb_func_start ov97_02231FFC
ov97_02231FFC: ; 0x02231FFC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ov97_02232074
	ldr r1, _02232048 ; =0x00003D54
	add r0, r5, #0
	bl sub_02018184
	ldr r2, _02232048 ; =0x00003D54
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	ldr r0, _0223204C ; =0x000029FC
	mov r1, #0x1e
	str r6, [r4, r0]
	mov r0, #0
	lsl r1, r1, #4
	add r2, r5, #0
	str r5, [r4, #0]
	bl sub_02002E7C
	ldr r0, _02232050 ; =0x00002BB4
	mov r2, #0
	str r7, [r4, r0]
	add r0, #0xc
	str r2, [r4, r0]
	add r0, r4, #0
	mov r1, #1
	bl ov97_02230C44
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232048: .word 0x00003D54
_0223204C: .word 0x000029FC
_02232050: .word 0x00002BB4
	thumb_func_end ov97_02231FFC

	thumb_func_start ov97_02232054
ov97_02232054: ; 0x02232054
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02232070 ; =0x0223D83C
	add r3, sp, #0
	mov r2, #5
_0223205E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223205E
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_02232070: .word 0x0223D83C
	thumb_func_end ov97_02232054

	thumb_func_start ov97_02232074
ov97_02232074: ; 0x02232074
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02232134 ; =0x0223D7BC
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02232138 ; =0x0223D7E8
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
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
	ldr r5, _0223213C ; =0x0223D820
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
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02232140 ; =0x0223D804
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02232144 ; =0x0223D7CC
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02232134: .word 0x0223D7BC
_02232138: .word 0x0223D7E8
_0223213C: .word 0x0223D820
_02232140: .word 0x0223D804
_02232144: .word 0x0223D7CC
	thumb_func_end ov97_02232074

	thumb_func_start ov97_02232148
ov97_02232148: ; 0x02232148
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	bl sub_0202442C
	mov r1, #0
	ldr r4, [r5, #0x48]
	mvn r1, r1
	add r6, r0, #0
	cmp r4, r1
	bne _0223217C
	add r2, r5, #0
	add r2, #0x4c
	ldrh r2, [r2]
	lsr r1, r1, #0x10
	cmp r2, r1
	bne _0223217C
	bl sub_0202DABC
	add r0, r7, #0
	mov r1, #0
	bl sub_02024760
	mov r0, #0
	bl sub_020C3EE4
_0223217C:
	add r0, r5, #0
	add r0, #0x4c
	ldrh r1, [r0]
	cmp r1, #0x64
	blo _02232190
	cmp r1, #0x98
	bhi _02232190
	mov r0, #0x46
	lsl r0, r0, #6
	orr r4, r0
_02232190:
	cmp r4, #0
	bne _02232198
	mov r4, #0
	mvn r4, r4
_02232198:
	mov r0, #1
	lsl r0, r0, #0xc
	tst r0, r4
	bne _022321A4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022321A4:
	add r0, r5, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022321C0
	add r0, r6, #0
	bl sub_0202DE2C
	cmp r0, #1
	bne _022321C0
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_022321C0:
	add r0, r5, #0
	add r0, #0x4e
	ldrb r0, [r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022321DC
	add r0, r6, #0
	bl sub_0202DD08
	cmp r0, #0
	bne _022321DC
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_022321DC:
	add r0, r6, #0
	bl sub_0202DCE0
	cmp r0, #0
	bne _022321EA
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_022321EA:
	add r5, #0x4e
	ldrb r0, [r5]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _022321FA
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022321FA:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_02232148

	thumb_func_start ov97_02232200
ov97_02232200: ; 0x02232200
	push {r3, lr}
	mov r0, #4
	bl ov97_02233424
	bl ov97_02233AD8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232200

	thumb_func_start ov97_02232210
ov97_02232210: ; 0x02232210
	push {r3, lr}
	bl ov97_022335A8
	str r0, [sp]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232210

	thumb_func_start ov97_0223221C
ov97_0223221C: ; 0x0223221C
	push {r3, lr}
	bl ov97_022335C8
	add r1, sp, #0
	strh r0, [r1]
	mov r0, #0
	ldrsh r0, [r1, r0]
	pop {r3, pc}
	thumb_func_end ov97_0223221C

	thumb_func_start ov97_0223222C
ov97_0223222C: ; 0x0223222C
	push {r4, lr}
	bl ov97_02233430
	cmp r0, #0xc
	bne _0223224E
	bl ov97_02233410
	add r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _0223224A
	bl ov97_02233AD8
	mov r0, #1
	str r0, [r4, #0x1c]
_0223224A:
	mov r0, #1
	pop {r4, pc}
_0223224E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0223222C

	thumb_func_start ov97_02232254
ov97_02232254: ; 0x02232254
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233510
	mov r3, #0
	add r1, r3, #0
_02232260:
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02232270
	ldrh r2, [r0, #6]
	cmp r4, r2
	bne _02232270
	strb r1, [r0, #8]
	strb r1, [r0, #0xa]
_02232270:
	add r3, r3, #1
	add r0, #0xc
	cmp r3, #8
	blt _02232260
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02232254

	thumb_func_start ov97_0223227C
ov97_0223227C: ; 0x0223227C
	push {r3, lr}
	bl ov97_02233510
	add r1, r0, #0
	add r1, #0x62
	ldrh r3, [r1]
	mov r2, #1
	add r1, r3, #0
	tst r1, r2
	beq _022322A2
	add r1, r0, #0
	add r1, #0x62
	ldrh r3, [r1]
	mov r1, #1
	add r0, #0x62
	bic r3, r1
	strh r3, [r0]
	add r0, r2, #0
	pop {r3, pc}
_022322A2:
	mov r1, #0x40
	add r2, r3, #0
	tst r2, r1
	beq _022322BC
	add r1, r0, #0
	add r1, #0x62
	ldrh r2, [r1]
	mov r1, #0x40
	add r0, #0x62
	bic r2, r1
	strh r2, [r0]
	mov r0, #7
	pop {r3, pc}
_022322BC:
	lsl r1, r1, #6
	tst r1, r3
	beq _022322D4
	add r1, r0, #0
	add r1, #0x62
	ldrh r2, [r1]
	ldr r1, _022322D8 ; =0xFFFFEFFF
	add r0, #0x62
	and r1, r2
	strh r1, [r0]
	mov r0, #0xd
	pop {r3, pc}
_022322D4:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022322D8: .word 0xFFFFEFFF
	thumb_func_end ov97_0223227C

	thumb_func_start ov97_022322DC
ov97_022322DC: ; 0x022322DC
	push {r4, lr}
	bl ov97_02233510
	add r4, r0, #0
	mov r1, #1
	add r0, #0x60
	strb r1, [r0]
	bl sub_020CE7F4
	add r1, r4, #0
	add r1, #0x62
	strh r0, [r1]
	add r0, r4, #0
	add r0, #0x62
	ldrh r1, [r0]
	cmp r1, #0
	beq _02232306
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _0223230A
_02232306:
	mov r0, #0
	pop {r4, pc}
_0223230A:
	add r0, r4, #0
	mov r1, #0x66
	add r0, #0x61
	strb r1, [r0]
	mov r0, #0
	add r4, #0x64
	strb r0, [r4]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov97_022322DC

	thumb_func_start ov97_0223231C
ov97_0223231C: ; 0x0223231C
	push {r4, lr}
	bl ov97_02233408
	add r4, r0, #0
	bl sub_020CE8A4
	strh r0, [r4, #0x18]
	bl sub_020CEB20
	strh r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_0223231C

	thumb_func_start ov97_02232334
ov97_02232334: ; 0x02232334
	push {r4, lr}
	bl ov97_02233478
	add r4, r0, #0
	bl ov97_022334B4
	str r0, [r4, #0]
	bl ov97_02233408
	ldrh r0, [r0, #0x32]
	strh r0, [r4, #4]
	bl sub_020CE934
	strh r0, [r4, #6]
	mov r0, #0xff
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	pop {r4, pc}
	thumb_func_end ov97_02232334

	thumb_func_start ov97_02232360
ov97_02232360: ; 0x02232360
	push {r3, r4, r5, r6, r7, lr}
	bl ov97_02233478
	add r7, r0, #0
	bl sub_020CE7F4
	add r3, r0, #0
	beq _022323AC
	ldrh r2, [r7, #4]
	mov r1, #0
	mov r0, #1
	mov ip, r2
	mov r4, #0x1c
_0223237A:
	lsr r6, r2, #0x1f
	lsl r5, r2, #0x1c
	sub r5, r5, r6
	ror r5, r4
	add r5, r6, r5
	add r6, r0, #0
	lsl r6, r5
	add r5, r3, #0
	tst r5, r6
	beq _022323A4
	mov r0, ip
	add r0, r0, r1
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1c
	sub r1, r1, r2
	mov r0, #0x1c
	ror r1, r0
	add r0, r2, r1
	add r0, r0, #1
	strh r0, [r7, #4]
	pop {r3, r4, r5, r6, r7, pc}
_022323A4:
	add r1, r1, #1
	add r2, r2, #1
	cmp r1, #0x10
	blt _0223237A
_022323AC:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_02232360

	thumb_func_start ov97_022323B0
ov97_022323B0: ; 0x022323B0
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #8
	bne _022323C8
	bl ov97_022337FC
	bl ov97_02232200
_022323C8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022323B0

	thumb_func_start ov97_022323CC
ov97_022323CC: ; 0x022323CC
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _022323E0
	bl ov97_022337FC
_022323E0:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022323CC

	thumb_func_start ov97_022323E4
ov97_022323E4: ; 0x022323E4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0223241A
	mov r0, #2
	bl ov97_02233424
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232406
	bl ov97_02233870
	mov r0, #2
	bl ov97_02233424
	pop {r3, pc}
_02232406:
	bl ov97_02233A9C
	cmp r0, #0
	bne _02232422
	bl ov97_02233870
	mov r0, #2
	bl ov97_02233424
	pop {r3, pc}
_0223241A:
	bl ov97_022337FC
	bl ov97_02233870
_02232422:
	pop {r3, pc}
	thumb_func_end ov97_022323E4

	thumb_func_start ov97_02232424
ov97_02232424: ; 0x02232424
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _0223244E
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232446
	bl sub_020CDD28
	mov r0, #0xc
	bl ov97_02233424
	mov r0, #1
	bl ov97_022334F0
	pop {r3, pc}
_02232446:
	mov r0, #1
	bl ov97_02233424
	pop {r3, pc}
_0223244E:
	bl ov97_022337FC
	mov r0, #4
	bl ov97_02233424
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232424

	thumb_func_start ov97_0223245C
ov97_0223245C: ; 0x0223245C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _022324BA
	bl ov97_02233510
	add r4, r0, #0
	add r0, #0x61
	ldrh r1, [r5, #0xa]
	ldrb r0, [r0]
	cmp r0, r1
	ble _02232484
	add r0, r4, #0
	add r0, #0x61
	strb r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #8]
	add r0, #0x64
	strb r1, [r0]
_02232484:
	bl ov97_0223227C
	cmp r0, #0
	beq _0223249A
	bl ov97_02233890
	cmp r0, #0
	bne _022324C2
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_0223249A:
	add r4, #0x61
	ldrb r0, [r4]
	cmp r0, #0x66
	bhs _022324B4
	bl ov97_0223231C
	bl ov97_022338BC
	cmp r0, #0
	bne _022324C2
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_022324B4:
	bl ov97_02232200
	pop {r3, r4, r5, pc}
_022324BA:
	bl ov97_022337FC
	bl ov97_02232200
_022324C2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_0223245C

	thumb_func_start ov97_022324C4
ov97_022324C4: ; 0x022324C4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _022324E2
	bl ov97_0223222C
	cmp r0, #0
	bne _022324EA
	bl ov97_022338F8
	cmp r0, #0
	bne _022324EA
	bl ov97_02232200
	pop {r3, pc}
_022324E2:
	bl ov97_022337FC
	bl ov97_02232200
_022324EA:
	pop {r3, pc}
	thumb_func_end ov97_022324C4

	thumb_func_start ov97_022324EC
ov97_022324EC: ; 0x022324EC
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #8]
	bl ov97_02233800
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _02232500
	b _02232612
_02232500:
	bl ov97_02233510
	add r4, r0, #0
	mov r0, #8
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	beq _02232516
	b _0223261A
_02232516:
	add r0, r4, #0
	add r0, #0x60
	ldrb r0, [r0]
	cmp r0, #1
	bne _02232528
	add r0, r4, #0
	mov r1, #2
	add r0, #0x60
	strb r1, [r0]
_02232528:
	ldrh r0, [r5, #8]
	cmp r0, #7
	bgt _02232540
	bge _02232562
	cmp r0, #2
	bgt _0223261A
	cmp r0, #0
	blt _0223261A
	beq _02232548
	add sp, #0xc
	cmp r0, #2
	pop {r4, r5, pc}
_02232540:
	cmp r0, #9
	beq _02232608
	add sp, #0xc
	pop {r4, r5, pc}
_02232548:
	bl ov97_02233A24
	cmp r0, #0
	bne _02232558
	bl ov97_02232200
	add sp, #0xc
	pop {r4, r5, pc}
_02232558:
	mov r0, #0
	bl ov97_022334C0
	add sp, #0xc
	pop {r4, r5, pc}
_02232562:
	bl ov97_02233510
	bl ov97_0223380C
	add r4, #0x60
	ldrb r0, [r4]
	cmp r0, #2
	bne _0223261A
	add r4, r5, #0
	add r4, #0x14
	bl ov97_02233560
	ldr r1, [r5, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _0223261A
	bl ov97_02233570
	ldr r1, [r4, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _0223261A
	bl ov97_02233580
	ldr r1, [r4, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _0223261A
	bl ov97_02233510
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0xa
	bl ov97_02232210
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0xa
	bl ov97_0223221C
	add r1, sp, #0
	strh r0, [r1]
	ldrh r0, [r1]
	ldr r2, [sp, #8]
	add r3, r4, #0
	strh r0, [r1, #2]
	mov r0, #0
_022325C6:
	ldr r1, [r3, #0]
	cmp r1, r2
	bne _022325DE
	mov r1, #0xc
	mul r1, r0
	ldrh r0, [r5, #0x10]
	add r1, r4, r1
	add sp, #0xc
	strh r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xa]
	pop {r4, r5, pc}
_022325DE:
	cmp r1, #0
	bne _022325FC
	mov r1, #0xc
	mul r1, r0
	str r2, [r4, r1]
	add r0, sp, #0
	ldrh r0, [r0, #2]
	add r1, r4, r1
	add sp, #0xc
	strh r0, [r1, #4]
	ldrh r0, [r5, #0x10]
	strh r0, [r1, #6]
	mov r0, #1
	strb r0, [r1, #0xa]
	pop {r4, r5, pc}
_022325FC:
	add r0, r0, #1
	add r3, #0xc
	cmp r0, #8
	blt _022325C6
	add sp, #0xc
	pop {r4, r5, pc}
_02232608:
	ldrh r0, [r5, #0x10]
	bl ov97_02232254
	add sp, #0xc
	pop {r4, r5, pc}
_02232612:
	bl ov97_022337FC
	bl ov97_02232200
_0223261A:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov97_022324EC

	thumb_func_start ov97_02232620
ov97_02232620: ; 0x02232620
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	str r0, [sp]
	bl ov97_02233508
	add r7, r0, #0
	add r0, r4, #4
	bl ov97_02232210
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r4, #4
	bl ov97_0223221C
	add r2, sp, #4
	strh r0, [r2]
	ldrh r0, [r2]
	ldr r6, [sp, #0xc]
	add r1, r7, #0
	strh r0, [r2, #2]
	ldrh r3, [r2, #2]
	mov r0, #0
_0223264E:
	ldr r2, [r1, #0]
	add r5, r1, #0
	add r5, #0x34
	cmp r2, r6
	bne _02232664
	ldrh r5, [r5]
	cmp r5, r3
	bne _02232664
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02232664:
	cmp r2, #0
	bne _022326B0
	mov r1, #0x38
	mul r1, r0
	ldr r0, [sp, #0xc]
	add r5, r4, #0
	str r0, [r7, r1]
	add r0, r7, r1
	add r5, #0x58
	add r3, r0, #4
	mov r2, #0xc
_0223267A:
	ldrh r0, [r5]
	add r5, r5, #2
	strh r0, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0223267A
	add r3, r7, r1
	add r4, #0x70
	add r3, #0x1c
	mov r2, #0xc
_0223268E:
	ldrh r0, [r4]
	add r4, r4, #2
	strh r0, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0223268E
	add r0, sp, #4
	ldrh r0, [r0, #2]
	add r1, r7, r1
	strh r0, [r1, #0x34]
	ldr r0, [sp]
	add r1, #0x36
	ldrh r0, [r0, #0x12]
	add sp, #0x10
	strb r0, [r1]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022326B0:
	add r0, r0, #1
	add r1, #0x38
	cmp r0, #8
	blt _0223264E
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_02232620

	thumb_func_start ov97_022326C0
ov97_022326C0: ; 0x022326C0
	push {r3, lr}
	bl ov97_02232360
	bl ov97_02233914
	cmp r0, #0
	bne _022326D2
	bl ov97_02232200
_022326D2:
	pop {r3, pc}
	thumb_func_end ov97_022326C0

	thumb_func_start ov97_022326D4
ov97_022326D4: ; 0x022326D4
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov97_022334B4
	add r4, r0, #0
	bl ov97_02233508
	add r5, r0, #0
	bl ov97_0223222C
	cmp r0, #0
	beq _022326F0
	mov r0, #1
	pop {r4, r5, r6, pc}
_022326F0:
	mov r1, #0
	add r2, r1, #0
	add r3, r5, #0
_022326F6:
	ldr r0, [r3, #0]
	cmp r0, #0
	beq _02232700
	mov r1, #1
	b _02232708
_02232700:
	add r2, r2, #1
	add r3, #0x38
	cmp r2, #8
	blt _022326F6
_02232708:
	cmp r1, #0
	beq _02232726
	mov r0, #7
	lsl r0, r0, #6
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02232726
	bl ov97_022339D0
	cmp r0, #0
	bne _02232722
	bl ov97_02232200
_02232722:
	mov r0, #1
	pop {r4, r5, r6, pc}
_02232726:
	add r0, r4, #0
	mov r1, #0xc0
	bl sub_020C2C1C
	bl ov97_02233508
	bl ov97_02233808
	ldrh r0, [r6, #0x36]
	cmp r0, #8
	blo _022327B0
	bl ov97_02233554
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _022327B0
	add r5, r4, #0
	add r5, #0x50
	bl ov97_02233560
	ldr r1, [r4, #0x50]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _022327B0
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _022327B0
	bl ov97_02233580
	ldr r1, [r5, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _022327B0
	add r0, r6, #0
	add r1, r4, #0
	bl ov97_02232620
	cmp r0, #0
	beq _022327A0
	bl ov97_02233508
	ldr r1, _022327B4 ; =0x000001C2
	ldrb r2, [r0, r1]
	add r2, r2, #1
	strb r2, [r0, r1]
	ldrb r0, [r0, r1]
	cmp r0, #0x1c
	bls _022327B0
	bl ov97_022339D0
	cmp r0, #0
	bne _022327B0
	bl ov97_02232200
	mov r0, #1
	pop {r4, r5, r6, pc}
_022327A0:
	bl ov97_022339D0
	cmp r0, #0
	bne _022327AC
	bl ov97_02232200
_022327AC:
	mov r0, #1
	pop {r4, r5, r6, pc}
_022327B0:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_022327B4: .word 0x000001C2
	thumb_func_end ov97_022326D4

	thumb_func_start ov97_022327B8
ov97_022327B8: ; 0x022327B8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0223281E
	bl ov97_022334B4
	bl ov97_02233804
	mov r0, #6
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232826
	bl ov97_02233448
	cmp r0, #1
	bne _022327F8
	bl ov97_02233508
	ldr r2, _02232828 ; =0x000001C3
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x10
	orr r1, r3
	strb r1, [r0, r2]
_022327F8:
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _0223280C
	cmp r0, #5
	bne _02232812
	add r0, r4, #0
	bl ov97_022326D4
	cmp r0, #0
	bne _02232826
_0223280C:
	bl ov97_022326C0
	pop {r4, pc}
_02232812:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_0223281E:
	bl ov97_022337FC
	bl ov97_02232200
_02232826:
	pop {r4, pc}
	; .align 2, 0
_02232828: .word 0x000001C3
	thumb_func_end ov97_022327B8

	thumb_func_start ov97_0223282C
ov97_0223282C: ; 0x0223282C
	push {r4, r5, r6, lr}
	sub sp, #8
	bl ov97_022334B4
	add r4, r0, #0
	bl ov97_02233508
	add r6, r0, #0
	bl ov97_02233408
	bl ov97_0223222C
	cmp r0, #0
	beq _0223284E
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0223284E:
	add r0, r4, #0
	mov r1, #0xc0
	bl sub_020C2C1C
	bl ov97_02233508
	bl ov97_02233808
	ldrh r0, [r4, #0x3c]
	cmp r0, #8
	blo _022328C8
	bl ov97_02233554
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bne _022328C8
	add r5, r4, #0
	add r5, #0x50
	bl ov97_02233560
	ldr r1, [r4, #0x50]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _022328C8
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _022328C8
	bl ov97_02233580
	ldr r1, [r5, #4]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _022328C8
	add r0, r4, #4
	bl ov97_02232210
	ldr r1, _022328D0 ; =0x000001C3
	str r0, [sp]
	ldrb r1, [r6, r1]
	str r0, [sp, #4]
	lsl r1, r1, #0x1c
	lsr r2, r1, #0x1c
	mov r1, #0x38
	mul r1, r2
	ldr r1, [r6, r1]
	cmp r1, r0
	bne _022328C8
	bl ov97_022339D0
	cmp r0, #0
	bne _022328C2
	bl ov97_02232200
_022328C2:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_022328C8:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022328D0: .word 0x000001C3
	thumb_func_end ov97_0223282C

	thumb_func_start ov97_022328D4
ov97_022328D4: ; 0x022328D4
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232934
	bl ov97_02233508
	ldr r2, _02232940 ; =0x000001C3
	mov r1, #0xf0
	ldrb r3, [r0, r2]
	bic r3, r1
	mov r1, #0x20
	orr r1, r3
	strb r1, [r0, r2]
	mov r0, #6
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _0223293C
	ldrh r0, [r4, #8]
	cmp r0, #4
	beq _02232916
	cmp r0, #5
	bne _02232928
	bl ov97_0223282C
	cmp r0, #0
	bne _0223293C
_02232916:
	bl ov97_02232360
	bl ov97_02233938
	cmp r0, #0
	bne _0223293C
	bl ov97_02232200
	pop {r4, pc}
_02232928:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_02232934:
	bl ov97_022337FC
	bl ov97_02232200
_0223293C:
	pop {r4, pc}
	nop
_02232940: .word 0x000001C3
	thumb_func_end ov97_022328D4

	thumb_func_start ov97_02232944
ov97_02232944: ; 0x02232944
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232988
	mov r0, #7
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232990
	bl ov97_02233448
	cmp r0, #1
	bne _02232990
	bl ov97_02233508
	ldr r1, _02232994 ; =0x000001C3
	ldrb r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1c
	cmp r0, #2
	bne _02232990
	bl ov97_022339EC
	cmp r0, #0
	bne _02232980
	bl ov97_02232200
	pop {r3, pc}
_02232980:
	mov r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232988:
	bl ov97_022337FC
	bl ov97_02232200
_02232990:
	pop {r3, pc}
	nop
_02232994: .word 0x000001C3
	thumb_func_end ov97_02232944

	thumb_func_start ov97_02232998
ov97_02232998: ; 0x02232998
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232A1E
	mov r0, #9
	bl ov97_02233424
	bl ov97_0223222C
	cmp r0, #0
	bne _02232A26
	ldrh r0, [r4, #8]
	cmp r0, #9
	bhi _02232A12
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022329C8: ; jump table
	.short _02232A12 - _022329C8 - 2 ; case 0
	.short _02232A12 - _022329C8 - 2 ; case 1
	.short _02232A12 - _022329C8 - 2 ; case 2
	.short _02232A12 - _022329C8 - 2 ; case 3
	.short _02232A12 - _022329C8 - 2 ; case 4
	.short _02232A12 - _022329C8 - 2 ; case 5
	.short _02232A26 - _022329C8 - 2 ; case 6
	.short _022329DC - _022329C8 - 2 ; case 7
	.short _02232A26 - _022329C8 - 2 ; case 8
	.short _022329FC - _022329C8 - 2 ; case 9
_022329DC:
	ldrh r0, [r4, #0xa]
	bl ov97_022334C0
	mov r0, #1
	bl ov97_022334D8
	mov r0, #0
	bl ov97_022334E4
	bl ov97_02233A24
	cmp r0, #0
	bne _02232A26
	bl ov97_02232200
	pop {r4, pc}
_022329FC:
	bl ov97_022334CC
	cmp r0, #0
	beq _02232A0A
	mov r0, #1
	bl ov97_022334E4
_02232A0A:
	mov r0, #0
	bl ov97_022334D8
	pop {r4, pc}
_02232A12:
	ldrh r0, [r4, #2]
	bl ov97_022337FC
	bl ov97_02232200
	pop {r4, pc}
_02232A1E:
	bl ov97_022337FC
	bl ov97_02232200
_02232A26:
	pop {r4, pc}
	thumb_func_end ov97_02232998

	thumb_func_start ov97_02232A28
ov97_02232A28: ; 0x02232A28
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02232A62
	cmp r0, #2
	bne _02232A7A
	bl ov97_022322DC
	cmp r0, #0
	beq _02232A5C
	bl ov97_0223227C
	bl ov97_02233890
	cmp r0, #0
	beq _02232A5C
	bl ov97_02233510
	mov r1, #1
	add r0, #0x60
	strb r1, [r0]
	mov r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232A5C:
	bl ov97_02232200
	pop {r3, pc}
_02232A62:
	bl ov97_02232334
	bl ov97_02233914
	cmp r0, #0
	bne _02232A74
	bl ov97_02232200
	pop {r3, pc}
_02232A74:
	mov r0, #3
	bl ov97_02233424
_02232A7A:
	pop {r3, pc}
	thumb_func_end ov97_02232A28

	thumb_func_start ov97_02232A7C
ov97_02232A7C: ; 0x02232A7C
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232AB6
	ldrh r0, [r4]
	cmp r0, #0xe
	bne _02232A9A
	bl ov97_0223222C
	cmp r0, #0
	bne _02232AC6
_02232A9A:
	bl ov97_02233448
	cmp r0, #1
	beq _02232AAE
	cmp r0, #2
	bne _02232AC6
	mov r0, #0xa
	bl ov97_02233424
	pop {r4, pc}
_02232AAE:
	mov r0, #0xb
	bl ov97_02233424
	pop {r4, pc}
_02232AB6:
	cmp r0, #9
	beq _02232AC6
	cmp r0, #0xd
	beq _02232AC6
	cmp r0, #0xf
	beq _02232AC6
	bl ov97_02232200
_02232AC6:
	pop {r4, pc}
	thumb_func_end ov97_02232A7C

	thumb_func_start ov97_02232AC8
ov97_02232AC8: ; 0x02232AC8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov97_02233538
	add r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02232B3E
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl sub_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl sub_020C4DB0
	bl ov97_02233560
	ldr r1, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02232B3E
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02232B3E
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #0x1c]
	cmp r1, r0
	bne _02232B3E
	ldr r0, [r4, #0xc]
	bl ov97_02233810
	ldr r0, [r4, #0xc]
	bl ov97_022337D8
	cmp r0, #0
	beq _02232B3A
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x18
	cmp r0, #1
	beq _02232B3A
	mov r0, #2
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, pc}
_02232B3A:
	mov r0, #0
	strb r0, [r4, #0x19]
_02232B3E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_02232AC8

	thumb_func_start ov97_02232B40
ov97_02232B40: ; 0x02232B40
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov97_02233538
	add r4, r0, #0
	bl ov97_02233448
	cmp r0, #2
	bne _02232BC8
	ldrb r0, [r4, #0x19]
	cmp r0, #2
	beq _02232BC8
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl sub_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl sub_020C4DB0
	bl ov97_02233560
	ldr r1, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02232BC8
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02232BC8
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xfd
	bne _02232BC8
	bl ov97_02233510
	ldrh r5, [r6, #0x12]
	mov r2, #0
	add r3, r0, #0
_02232BA2:
	ldrh r1, [r3, #6]
	cmp r5, r1
	bne _02232BC0
	mov r1, #0xc
	mul r1, r2
	add r1, r0, r1
	mov r2, #1
	strb r2, [r1, #8]
	mov r0, #3
	strb r0, [r1, #9]
	mov r0, #0xb4
	strb r0, [r4, #0x1a]
	mov r0, #0
	strb r0, [r4, #0x19]
	pop {r4, r5, r6, pc}
_02232BC0:
	add r2, r2, #1
	add r3, #0xc
	cmp r2, #8
	blt _02232BA2
_02232BC8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02232B40

	thumb_func_start ov97_02232BCC
ov97_02232BCC: ; 0x02232BCC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov97_02233538
	add r4, r0, #0
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _02232BE4
	add r0, r6, #0
	bl ov97_02232B40
	pop {r4, r5, r6, pc}
_02232BE4:
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	beq _02232BF0
	ldrb r0, [r4, #0x19]
	cmp r0, #3
	bne _02232C8C
_02232BF0:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	bne _02232C8C
	ldrh r1, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r5, [r4, #0xc]
	bl sub_020C2C54
	ldrh r2, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r1, [r4, #0xc]
	bl sub_020C4DB0
	bl ov97_02233560
	ldr r1, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	cmp r1, r0
	bne _02232C8C
	bl ov97_02233570
	ldr r1, [r5, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	cmp r1, r0
	bhi _02232C8C
	ldr r0, [r4, #0xc]
	bl ov97_022337A4
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldrb r0, [r4, #0x1c]
	cmp r1, r0
	bne _02232C8C
	ldr r0, [r4, #0xc]
	bl ov97_02233810
	mov r0, #0
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl ov97_022337D8
	cmp r0, #0
	beq _02232C7E
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #0xfd
	bne _02232C5E
	add r0, r6, #0
	bl ov97_02232B40
	b _02232C70
_02232C5E:
	ldr r2, [r5, #0xc]
	ldr r1, [r4, #0xc]
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	add r0, r1, r0
	ldr r1, [r4, #4]
	lsr r2, r2, #8
	bl sub_020C4DB0
_02232C70:
	ldr r1, [r5, #8]
	ldr r0, _02232C90 ; =0xFFFF00FF
	and r0, r1
	str r0, [r5, #8]
	mov r0, #4
	strb r0, [r4, #0x1b]
	pop {r4, r5, r6, pc}
_02232C7E:
	ldr r1, [r5, #8]
	ldr r0, _02232C90 ; =0xFFFF00FF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r5, #8]
_02232C8C:
	pop {r4, r5, r6, pc}
	nop
_02232C90: .word 0xFFFF00FF
	thumb_func_end ov97_02232BCC

	thumb_func_start ov97_02232C94
ov97_02232C94: ; 0x02232C94
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov97_02233800
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02232D16
	ldrh r0, [r4, #4]
	cmp r0, #7
	beq _02232CDE
	cmp r0, #9
	beq _02232CEC
	cmp r0, #0x15
	bne _02232D16
	bl ov97_02233418
	cmp r0, #0xa
	beq _02232CBE
	cmp r0, #0xb
	bne _02232D16
_02232CBE:
	bl ov97_02233538
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _02232CCE
	cmp r0, #2
	beq _02232CD6
	pop {r4, pc}
_02232CCE:
	add r0, r4, #0
	bl ov97_02232AC8
	pop {r4, pc}
_02232CD6:
	add r0, r4, #0
	bl ov97_02232BCC
	pop {r4, pc}
_02232CDE:
	mov r0, #1
	bl ov97_022334D8
	mov r0, #0
	bl ov97_022334E4
	pop {r4, pc}
_02232CEC:
	bl ov97_022334CC
	cmp r0, #0
	beq _02232CFA
	mov r0, #1
	bl ov97_022334E4
_02232CFA:
	bl ov97_02233418
	cmp r0, #0xa
	beq _02232D08
	cmp r0, #0xb
	beq _02232D10
	pop {r4, pc}
_02232D08:
	ldrh r0, [r4, #0x12]
	bl ov97_02232254
	pop {r4, pc}
_02232D10:
	mov r0, #0
	bl ov97_022334D8
_02232D16:
	pop {r4, pc}
	thumb_func_end ov97_02232C94

	thumb_func_start ov97_02232D18
ov97_02232D18: ; 0x02232D18
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D2E
	bl ov97_0223222C
	cmp r0, #0
	bne _02232D38
	bl ov97_02232A28
	pop {r3, pc}
_02232D2E:
	bl ov97_022337FC
	mov r0, #4
	bl ov97_02233424
_02232D38:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232D18

	thumb_func_start ov97_02232D3C
ov97_02232D3C: ; 0x02232D3C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D54
	bl ov97_02233870
	cmp r0, #0
	beq _02232D5C
	mov r0, #2
	bl ov97_02233424
	pop {r3, pc}
_02232D54:
	bl ov97_022337FC
	bl ov97_02232200
_02232D5C:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232D3C

	thumb_func_start ov97_02232D60
ov97_02232D60: ; 0x02232D60
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232D96
	mov r0, #0
	bl ov97_022334C0
	bl ov97_02233430
	cmp r0, #0xc
	bne _02232D86
	bl ov97_02233AF8
	cmp r0, #0
	beq _02232DA0
	mov r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232D86:
	bl ov97_02233AB8
	cmp r0, #0
	beq _02232DA0
	mov r0, #3
	bl ov97_02233424
	pop {r3, pc}
_02232D96:
	bl ov97_022337FC
	mov r0, #4
	bl ov97_02233424
_02232DA0:
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232D60

	thumb_func_start ov97_02232DA4
ov97_02232DA4: ; 0x02232DA4
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02232DBA
	mov r0, #0xc
	bl ov97_02233424
	mov r0, #1
	bl ov97_022334F0
	pop {r3, pc}
_02232DBA:
	bl ov97_022337FC
	mov r0, #4
	bl ov97_02233424
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02232DA4

	thumb_func_start ov97_02232DC8
ov97_02232DC8: ; 0x02232DC8
	push {r3, lr}
	ldr r0, _02232DE4 ; =ov97_022323B0
	bl sub_020CE478
	cmp r0, #0
	beq _02232DDE
	mov r0, #4
	bl ov97_02233424
	mov r0, #0
	pop {r3, pc}
_02232DDE:
	mov r0, #1
	pop {r3, pc}
	nop
_02232DE4: .word ov97_022323B0
	thumb_func_end ov97_02232DC8

	thumb_func_start ov97_02232DE8
ov97_02232DE8: ; 0x02232DE8
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0
	beq _02232DFA
	cmp r0, #1
	beq _02232DFA
	cmp r0, #2
	bne _02232DFE
_02232DFA:
	bl ov97_02233854
_02232DFE:
	pop {r3, pc}
	thumb_func_end ov97_02232DE8

	thumb_func_start ov97_02232E00
ov97_02232E00: ; 0x02232E00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov97_02233408
	ldrh r0, [r0, #0x34]
	cmp r4, r0
	bhi _02232E24
	add r0, r5, #0
	add r1, r4, #0
	bl sub_020C2C54
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov97_02233814
_02232E24:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02232E00

	thumb_func_start ov97_02232E28
ov97_02232E28: ; 0x02232E28
	mov r0, #0x17
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02232E28

	thumb_func_start ov97_02232E30
ov97_02232E30: ; 0x02232E30
	mov r0, #0x17
	lsl r0, r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02232E30

	thumb_func_start ov97_02232E38
ov97_02232E38: ; 0x02232E38
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	bl ov97_02233408
	bl ov97_02233410
	add r4, r0, #0
	mov r0, #0x1f
	add r1, r7, #0
	and r1, r0
	beq _02232E56
	mov r0, #0x20
	sub r0, r0, r1
	add r7, r7, r0
_02232E56:
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	mov r0, #4
	strb r0, [r4, #3]
	ldr r0, _02232F5C ; =0x00400131
	str r0, [r4, #4]
	mov r0, #0xf
	strh r1, [r4, #0xc]
	lsl r0, r0, #8
	str r7, [r4, #0x34]
	add r7, r7, r0
	str r7, [r4, #0x38]
	bl ov97_02232E28
	str r0, [r4, #0x2c]
	add r7, r7, r0
	str r7, [r4, #0x3c]
	bl ov97_02232E30
	add r7, r7, r0
	str r0, [r4, #0x30]
	add r0, r7, #0
	str r7, [r4, #0x28]
	add r0, #0xc0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x34]
	mov r1, #2
	add r7, #0xe0
	bl sub_020CDB18
	bl ov97_02232DC8
	str r0, [r4, #0x10]
	mov r2, #0
	str r2, [r4, #0x14]
	str r2, [r4, #0x18]
	str r2, [r4, #0x1c]
	str r2, [r4, #0x20]
	ldr r0, [r4, #0x40]
	mov r6, #0xff
	bic r0, r6
	add r3, r0, #0
	mov r1, #0xf
	orr r3, r1
	ldr r0, _02232F60 ; =0xFFFFF0FF
	add r1, #0xf1
	and r0, r3
	orr r1, r0
	ldr r0, _02232F64 ; =0xFFFF0FFF
	and r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	orr r0, r1
	str r0, [r4, #0x40]
	ldr r3, [r5, #0]
	ldr r1, [r4, #0x44]
	lsl r3, r3, #0x18
	lsr r3, r3, #0x18
	lsl r3, r3, #0x18
	add r0, r4, #0
	bic r1, r6
	lsr r3, r3, #0x18
	orr r3, r1
	ldr r1, _02232F60 ; =0xFFFFF0FF
	str r3, [r4, #0x44]
	and r1, r3
	ldr r3, [r5, #0]
	add r0, #0x44
	lsl r3, r3, #0x14
	lsr r3, r3, #0x1c
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x14
	orr r3, r1
	ldr r1, _02232F64 ; =0xFFFF0FFF
	str r3, [r4, #0x44]
	and r1, r3
	ldr r3, [r5, #0]
	lsl r3, r3, #0x10
	lsr r3, r3, #0x1c
	lsl r3, r3, #0x1c
	lsr r3, r3, #0x10
	orr r1, r3
	str r1, [r4, #0x44]
	ldr r1, [r0, #0]
	ldr r3, [r5, #0]
	lsl r1, r1, #0x10
	lsr r3, r3, #0x10
	lsr r1, r1, #0x10
	lsl r3, r3, #0x10
	orr r1, r3
	str r1, [r0, #0]
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	add r3, r4, #0
	b _02232F30
_02232F18:
	ldrh r6, [r0]
	add r5, r3, #0
	add r5, #0x48
	strh r6, [r5]
	add r5, r3, #0
	ldrh r6, [r1]
	add r5, #0x60
	add r3, r3, #2
	strh r6, [r5]
	add r2, r2, #1
	add r0, r0, #2
	add r1, r1, #2
_02232F30:
	cmp r0, #0
	beq _02232F38
	cmp r2, #0xc
	blo _02232F18
_02232F38:
	ldr r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	str r1, [r4, #0x78]
	str r0, [r4, #0x7c]
	bl ov97_02233548
	bl ov97_02233538
	str r7, [r0, #8]
	ldr r0, [r4, #0x2c]
	add r7, r7, r0
	bl ov97_02233538
	str r7, [r0, #0xc]
	bl sub_020CEB20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232F5C: .word 0x00400131
_02232F60: .word 0xFFFFF0FF
_02232F64: .word 0xFFFF0FFF
	thumb_func_end ov97_02232E38

	thumb_func_start ov97_02232F68
ov97_02232F68: ; 0x02232F68
	push {r3, r4, r5, lr}
	bl ov97_02233538
	add r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02232F86
	ldrb r0, [r4, #0x1a]
	sub r0, r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _02232FBC
	mov r0, #0
	strb r0, [r4, #0x19]
_02232F86:
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _02232FBC
	bl ov97_02233614
	mov r1, #0x40
	sub r5, r1, r0
	ldrb r0, [r4, #0x1c]
	add r2, r5, #0
	mov r3, #3
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl ov97_02233674
	bl ov97_02233614
	add r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, _02232FC0 ; =0x0000FFFF
	add r1, r5, r1
	bl ov97_02232E00
	mov r0, #1
	strb r0, [r4, #0x19]
	mov r0, #0x3c
	strb r0, [r4, #0x1a]
_02232FBC:
	pop {r3, r4, r5, pc}
	nop
_02232FC0: .word 0x0000FFFF
	thumb_func_end ov97_02232F68

	thumb_func_start ov97_02232FC4
ov97_02232FC4: ; 0x02232FC4
	push {r3, r4, r5, r6, r7, lr}
	bl ov97_02233538
	add r4, r0, #0
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _0223307A
	ldrb r0, [r4, #0x1c]
	cmp r0, #0xfd
	bne _0223303C
	bl ov97_02233510
	add r5, r0, #0
	mov r1, #0
	add r2, r5, #0
_02232FE2:
	ldrb r0, [r2, #9]
	cmp r0, #0
	beq _02233022
	add r6, r1, #0
	mov r0, #0xc
	mul r6, r0
	add r0, r5, r6
	ldrh r0, [r0, #6]
	mov r1, #1
	mov r2, #0
	lsl r1, r0
	lsl r0, r1, #0x10
	lsr r7, r0, #0x10
	mov r0, #0xfd
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	add r3, r2, #0
	bl ov97_02233674
	bl ov97_02233614
	add r1, r0, #0
	ldr r0, [r4, #8]
	add r2, r7, #0
	bl ov97_02232E00
	add r5, #9
	ldrb r0, [r5, r6]
	sub r0, r0, #1
	strb r0, [r5, r6]
	pop {r3, r4, r5, r6, r7, pc}
_02233022:
	add r1, r1, #1
	add r2, #0xc
	cmp r1, #8
	blt _02232FE2
	ldrb r0, [r4, #0x1a]
	sub r0, r0, #1
	strb r0, [r4, #0x1a]
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	bne _0223307A
	mov r0, #2
	strb r0, [r4, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_0223303C:
	bl ov97_02233614
	bl ov97_02232E28
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	lsl r0, r0, #0x10
	lsr r3, r0, #0x18
	bne _0223305E
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	bne _0223305A
	mov r0, #2
	strb r0, [r4, #0x19]
	pop {r3, r4, r5, r6, r7, pc}
_0223305A:
	sub r0, r0, #1
	strb r0, [r4, #0x1b]
_0223305E:
	ldrb r0, [r4, #0x1c]
	mov r2, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #4]
	bl ov97_02233674
	bl ov97_02233614
	add r1, r0, #0
	ldr r0, [r4, #8]
	ldr r2, _0223307C ; =0x0000FFFF
	bl ov97_02232E00
_0223307A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223307C: .word 0x0000FFFF
	thumb_func_end ov97_02232FC4

	thumb_func_start ov97_02233080
ov97_02233080: ; 0x02233080
	push {r3, lr}
	bl ov97_02233538
	ldrb r0, [r0, #0x18]
	cmp r0, #1
	beq _02233092
	cmp r0, #2
	beq _02233098
	pop {r3, pc}
_02233092:
	bl ov97_02232F68
	pop {r3, pc}
_02233098:
	bl ov97_02232FC4
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233080

	thumb_func_start ov97_022330A0
ov97_022330A0: ; 0x022330A0
	push {r4, lr}
	bl ov97_02233508
	add r4, r0, #0
	bl ov97_02233418
	cmp r0, #6
	beq _022330B6
	cmp r0, #0xb
	beq _022330C6
	pop {r4, pc}
_022330B6:
	mov r0, #7
	lsl r0, r0, #6
	ldrh r1, [r4, r0]
	cmp r1, #0
	beq _022330CA
	sub r1, r1, #1
	strh r1, [r4, r0]
	pop {r4, pc}
_022330C6:
	bl ov97_02233080
_022330CA:
	pop {r4, pc}
	thumb_func_end ov97_022330A0

	thumb_func_start ov97_022330CC
ov97_022330CC: ; 0x022330CC
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0xa
	bne _022330DA
	bl ov97_02233080
_022330DA:
	pop {r3, pc}
	thumb_func_end ov97_022330CC

	thumb_func_start ov97_022330DC
ov97_022330DC: ; 0x022330DC
	push {r3, lr}
	bl ov97_02233418
	cmp r0, #0xc
	beq _0223311E
	bl ov97_02233430
	cmp r0, #0xc
	bne _022330FC
	bl ov97_02233418
	cmp r0, #7
	bne _0223311E
	bl ov97_02233AD8
	pop {r3, pc}
_022330FC:
	bl ov97_02233448
	cmp r0, #1
	beq _0223310A
	cmp r0, #2
	beq _02233110
	b _02233116
_0223310A:
	bl ov97_022330A0
	pop {r3, pc}
_02233110:
	bl ov97_022330CC
	pop {r3, pc}
_02233116:
	bl ov97_02233410
	bl ov97_02233418
_0223311E:
	pop {r3, pc}
	thumb_func_end ov97_022330DC

	thumb_func_start ov97_02233120
ov97_02233120: ; 0x02233120
	push {r3, lr}
	bl ov97_02233518
	mov r0, #1
	bl ov97_02233454
	bl ov97_02232DE8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233120

	thumb_func_start ov97_02233134
ov97_02233134: ; 0x02233134
	push {r4, lr}
	bl ov97_02233448
	mov r4, #0
	cmp r0, #1
	bne _02233162
	bl ov97_02233508
	ldr r1, _02233168 ; =0x000001C3
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _02233162
	add r2, r4, #0
_02233152:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _0223315A
	add r4, r4, #1
_0223315A:
	add r2, r2, #1
	add r0, #0x38
	cmp r2, #8
	blo _02233152
_02233162:
	add r0, r4, #0
	pop {r4, pc}
	nop
_02233168: .word 0x000001C3
	thumb_func_end ov97_02233134

	thumb_func_start ov97_0223316C
ov97_0223316C: ; 0x0223316C
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _0223319E
	bl ov97_02233418
	cmp r0, #7
	bne _0223319E
	bl ov97_02233508
	ldr r1, _022331A4 ; =0x000001C3
	ldrb r1, [r0, r1]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _0223319E
	mov r1, #0x38
	mul r1, r4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0223319E
	mov r0, #1
	pop {r4, pc}
_0223319E:
	mov r0, #0
	pop {r4, pc}
	nop
_022331A4: .word 0x000001C3
	thumb_func_end ov97_0223316C

	thumb_func_start ov97_022331A8
ov97_022331A8: ; 0x022331A8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _022331F2
	bl ov97_02233418
	cmp r0, #7
	bne _022331F2
	bl ov97_02233508
	ldr r2, _022331F4 ; =0x000001C3
	ldrb r3, [r0, r2]
	lsl r1, r3, #0x18
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _022331F2
	mov r1, #0x38
	add r5, r4, #0
	mul r5, r1
	ldr r5, [r0, r5]
	cmp r5, #0
	beq _022331F2
	mov r5, #0xf
	lsl r4, r4, #0x18
	bic r3, r5
	lsr r5, r4, #0x18
	mov r4, #0xf
	and r4, r5
	orr r3, r4
	strb r3, [r0, r2]
	mov r2, #0x78
	lsl r1, r1, #3
	strh r2, [r0, r1]
	bl ov97_02233938
_022331F2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022331F4: .word 0x000001C3
	thumb_func_end ov97_022331A8

	thumb_func_start ov97_022331F8
ov97_022331F8: ; 0x022331F8
	push {r4, lr}
	bl ov97_02233448
	mov r4, #0
	cmp r0, #2
	bne _0223322A
	bl ov97_02233510
	add r1, r0, #0
	add r1, #0x60
	ldrb r1, [r1]
	cmp r1, #2
	bne _0223322A
	add r2, r4, #0
_02233214:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02233222
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	beq _02233222
	add r4, r4, #1
_02233222:
	add r2, r2, #1
	add r0, #0xc
	cmp r2, #8
	blo _02233214
_0223322A:
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022331F8

	thumb_func_start ov97_02233230
ov97_02233230: ; 0x02233230
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02233240
	mov r0, #0
	pop {r3, pc}
_02233240:
	bl sub_020CE814
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233230

	thumb_func_start ov97_02233248
ov97_02233248: ; 0x02233248
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02233258
	cmp r0, #2
	beq _0223325E
	b _02233264
_02233258:
	bl ov97_02233134
	pop {r3, pc}
_0223325E:
	bl ov97_022331F8
	pop {r3, pc}
_02233264:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02233248

	thumb_func_start ov97_02233268
ov97_02233268: ; 0x02233268
	push {r3, r4, r5, lr}
	bl ov97_02233538
	add r5, r0, #0
	bl ov97_02233590
	add r4, r0, #0
	bl ov97_02233448
	cmp r0, #1
	bne _0223329A
	mov r0, #1
	strb r0, [r5, #0x18]
	mov r1, #0
	strb r1, [r5, #0x19]
	add r4, #8
	str r4, [r5, #0]
	str r4, [r5, #4]
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	mov r0, #0x78
	strb r0, [r5, #0x1a]
	strb r1, [r5, #0x1b]
	mov r0, #0xfd
	strb r0, [r5, #0x1c]
_0223329A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02233268

	thumb_func_start ov97_0223329C
ov97_0223329C: ; 0x0223329C
	push {r4, lr}
	bl ov97_02233538
	add r4, r0, #0
	bl ov97_02233590
	mov r1, #1
	strb r1, [r4, #0x18]
	mov r1, #0
	strb r1, [r4, #0x19]
	add r0, #8
	str r0, [r4, #0]
	str r0, [r4, #4]
	mov r0, #0x30
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	mov r0, #0x78
	strb r0, [r4, #0x1a]
	strb r1, [r4, #0x1b]
	mov r0, #0xfe
	strb r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov97_0223329C

	thumb_func_start ov97_022332C8
ov97_022332C8: ; 0x022332C8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov97_02233538
	cmp r4, #0xf0
	bgt _022332F2
	mov r1, #2
	strb r1, [r0, #0x18]
	mov r1, #3
	strb r1, [r0, #0x19]
	str r5, [r0, #0]
	str r5, [r0, #4]
	str r6, [r0, #0x10]
	mov r2, #0
	str r2, [r0, #0x14]
	mov r1, #0x78
	strb r1, [r0, #0x1a]
	strb r2, [r0, #0x1b]
	strb r4, [r0, #0x1c]
_022332F2:
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_022332C8

	thumb_func_start ov97_022332F4
ov97_022332F4: ; 0x022332F4
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _02233302
	cmp r0, #2
	bne _0223331C
_02233302:
	bl ov97_02233418
	cmp r0, #0xa
	beq _0223330E
	cmp r0, #0xb
	bne _0223331C
_0223330E:
	bl ov97_02233538
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	bne _0223331C
	mov r0, #1
	pop {r3, pc}
_0223331C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_022332F4

	thumb_func_start ov97_02233320
ov97_02233320: ; 0x02233320
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _0223332E
	cmp r0, #2
	bne _02233348
_0223332E:
	bl ov97_02233418
	cmp r0, #0xa
	beq _0223333A
	cmp r0, #0xb
	bne _02233348
_0223333A:
	bl ov97_02233538
	ldrb r0, [r0, #0x19]
	cmp r0, #2
	bne _02233348
	mov r0, #1
	pop {r3, pc}
_02233348:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02233320

	thumb_func_start ov97_0223334C
ov97_0223334C: ; 0x0223334C
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #1
	beq _0223335A
	cmp r0, #2
	bne _02233384
_0223335A:
	bl ov97_02233418
	cmp r0, #0xa
	beq _02233366
	cmp r0, #0xb
	bne _02233384
_02233366:
	bl ov97_02233538
	ldrb r1, [r0, #0x19]
	cmp r1, #0
	bne _02233384
	ldr r1, [r0, #0xc]
	ldr r1, [r1, #8]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x18
	bne _02233384
	ldrb r0, [r0, #0x1b]
	cmp r0, #4
	bhs _02233384
	mov r0, #1
	pop {r3, pc}
_02233384:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_0223334C

	thumb_func_start ov97_02233388
ov97_02233388: ; 0x02233388
	push {r3, lr}
	bl ov97_02233448
	cmp r0, #2
	bne _022333B4
	bl ov97_02233510
	mov r2, #0
_02233398:
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _022333A8
	ldrb r1, [r0, #0xa]
	cmp r1, #0
	beq _022333A8
	mov r0, #1
	pop {r3, pc}
_022333A8:
	add r2, r2, #1
	add r0, #0xc
	cmp r2, #8
	blt _02233398
	mov r0, #0
	pop {r3, pc}
_022333B4:
	bl ov97_022334CC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233388

	thumb_func_start ov97_022333BC
ov97_022333BC: ; 0x022333BC
	push {r4, lr}
	mov r0, #0xc
	bl ov97_0223343C
	bl ov97_02233418
	cmp r0, #0
	beq _022333D6
	cmp r0, #1
	beq _022333D6
	cmp r0, #9
	beq _022333E2
	pop {r4, pc}
_022333D6:
	bl sub_020CDD28
	mov r0, #1
	bl ov97_022334F0
	pop {r4, pc}
_022333E2:
	bl ov97_022334CC
	cmp r0, #0
	bne _022333F8
	bl ov97_02233410
	add r4, r0, #0
	bl ov97_02233AD8
	mov r0, #1
	str r0, [r4, #0x1c]
_022333F8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022333BC

	thumb_func_start ov97_022333FC
ov97_022333FC: ; 0x022333FC
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x20]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022333FC

	thumb_func_start ov97_02233408
ov97_02233408: ; 0x02233408
	ldr r0, _0223340C ; =0x0223EA20
	bx lr
	; .align 2, 0
_0223340C: .word 0x0223EA20
	thumb_func_end ov97_02233408

	thumb_func_start ov97_02233410
ov97_02233410: ; 0x02233410
	ldr r0, _02233414 ; =0x0223F1C0
	bx lr
	; .align 2, 0
_02233414: .word 0x0223F1C0
	thumb_func_end ov97_02233410

	thumb_func_start ov97_02233418
ov97_02233418: ; 0x02233418
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233418

	thumb_func_start ov97_02233424
ov97_02233424: ; 0x02233424
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end ov97_02233424

	thumb_func_start ov97_02233430
ov97_02233430: ; 0x02233430
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #1]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233430

	thumb_func_start ov97_0223343C
ov97_0223343C: ; 0x0223343C
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	strb r4, [r0, #1]
	pop {r4, pc}
	thumb_func_end ov97_0223343C

	thumb_func_start ov97_02233448
ov97_02233448: ; 0x02233448
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #2]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233448

	thumb_func_start ov97_02233454
ov97_02233454: ; 0x02233454
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	strb r4, [r0, #2]
	pop {r4, pc}
	thumb_func_end ov97_02233454

	thumb_func_start ov97_02233460
ov97_02233460: ; 0x02233460
	push {r3, lr}
	bl ov97_02233410
	ldrb r0, [r0, #3]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233460

	thumb_func_start ov97_0223346C
ov97_0223346C: ; 0x0223346C
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233408
	strh r4, [r0, #0x32]
	pop {r4, pc}
	thumb_func_end ov97_0223346C

	thumb_func_start ov97_02233478
ov97_02233478: ; 0x02233478
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x24]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233478

	thumb_func_start ov97_02233484
ov97_02233484: ; 0x02233484
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x2c]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233484

	thumb_func_start ov97_02233490
ov97_02233490: ; 0x02233490
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x30]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233490

	thumb_func_start ov97_0223349C
ov97_0223349C: ; 0x0223349C
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x38]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_0223349C

	thumb_func_start ov97_022334A8
ov97_022334A8: ; 0x022334A8
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x3c]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022334A8

	thumb_func_start ov97_022334B4
ov97_022334B4: ; 0x022334B4
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x28]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022334B4

	thumb_func_start ov97_022334C0
ov97_022334C0: ; 0x022334C0
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	strh r4, [r0, #0xc]
	pop {r4, pc}
	thumb_func_end ov97_022334C0

	thumb_func_start ov97_022334CC
ov97_022334CC: ; 0x022334CC
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022334CC

	thumb_func_start ov97_022334D8
ov97_022334D8: ; 0x022334D8
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x14]
	pop {r4, pc}
	thumb_func_end ov97_022334D8

	thumb_func_start ov97_022334E4
ov97_022334E4: ; 0x022334E4
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x18]
	pop {r4, pc}
	thumb_func_end ov97_022334E4

	thumb_func_start ov97_022334F0
ov97_022334F0: ; 0x022334F0
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233410
	str r4, [r0, #0x20]
	pop {r4, pc}
	thumb_func_end ov97_022334F0

	thumb_func_start ov97_022334FC
ov97_022334FC: ; 0x022334FC
	push {r3, lr}
	bl ov97_02233410
	add r0, #0x90
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_022334FC

	thumb_func_start ov97_02233508
ov97_02233508: ; 0x02233508
	ldr r3, _0223350C ; =ov97_022334FC
	bx r3
	; .align 2, 0
_0223350C: .word ov97_022334FC
	thumb_func_end ov97_02233508

	thumb_func_start ov97_02233510
ov97_02233510: ; 0x02233510
	ldr r3, _02233514 ; =ov97_022334FC
	bx r3
	; .align 2, 0
_02233514: .word ov97_022334FC
	thumb_func_end ov97_02233510

	thumb_func_start ov97_02233518
ov97_02233518: ; 0x02233518
	push {r4, lr}
	bl ov97_02233508
	mov r2, #0x71
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0x46
	lsl r1, r1, #2
	add r0, r1, #0
	add r0, #0xa8
	strh r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02233518

	thumb_func_start ov97_02233538
ov97_02233538: ; 0x02233538
	push {r3, lr}
	bl ov97_02233410
	mov r1, #0x95
	lsl r1, r1, #2
	add r0, r0, r1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233538

	thumb_func_start ov97_02233548
ov97_02233548: ; 0x02233548
	push {r3, lr}
	bl ov97_02233538
	mov r1, #0
	strb r1, [r0, #0x18]
	pop {r3, pc}
	thumb_func_end ov97_02233548

	thumb_func_start ov97_02233554
ov97_02233554: ; 0x02233554
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #4]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233554

	thumb_func_start ov97_02233560
ov97_02233560: ; 0x02233560
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233560

	thumb_func_start ov97_02233570
ov97_02233570: ; 0x02233570
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x1c
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233570

	thumb_func_start ov97_02233580
ov97_02233580: ; 0x02233580
	push {r3, lr}
	bl ov97_02233410
	ldr r0, [r0, #0x44]
	lsr r0, r0, #0x10
	pop {r3, pc}
	thumb_func_end ov97_02233580

	thumb_func_start ov97_0223358C
ov97_0223358C: ; 0x0223358C
	mov r0, #0x38
	bx lr
	thumb_func_end ov97_0223358C

	thumb_func_start ov97_02233590
ov97_02233590: ; 0x02233590
	push {r3, lr}
	bl ov97_02233410
	add r0, #0x40
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02233590

	thumb_func_start ov97_0223359C
ov97_0223359C: ; 0x0223359C
	push {r3, lr}
	bl ov97_02233410
	add r0, #0x78
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_0223359C

	thumb_func_start ov97_022335A8
ov97_022335A8: ; 0x022335A8
	push {r3}
	sub sp, #4
	mov r2, #0
	str r2, [sp]
	add r3, sp, #0
_022335B2:
	add r1, r0, r2
	ldrb r1, [r1, #2]
	add r2, r2, #1
	strb r1, [r3]
	add r3, r3, #1
	cmp r2, #4
	blo _022335B2
	ldr r0, [sp]
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end ov97_022335A8

	thumb_func_start ov97_022335C8
ov97_022335C8: ; 0x022335C8
	push {r3}
	sub sp, #4
	mov r2, #0
	add r1, sp, #0
	strh r2, [r1]
	add r3, sp, #0
_022335D4:
	ldrb r1, [r0, r2]
	add r2, r2, #1
	strb r1, [r3]
	add r3, r3, #1
	cmp r2, #2
	blo _022335D4
	add r1, sp, #0
	mov r0, #0
	ldrsh r0, [r1, r0]
	add sp, #4
	pop {r3}
	bx lr
	thumb_func_end ov97_022335C8

	thumb_func_start ov97_022335EC
ov97_022335EC: ; 0x022335EC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r1, _02233610 ; =0x00002710
	add r6, r0, #0
	add r4, r2, #0
	bl sub_020E2178
	str r1, [r5, #0]
	ldr r1, _02233610 ; =0x00002710
	add r0, r6, #0
	bl sub_020E2178
	ldr r1, _02233610 ; =0x00002710
	bl sub_020E2178
	str r1, [r4, #0]
	pop {r4, r5, r6, pc}
	nop
_02233610: .word 0x00002710
	thumb_func_end ov97_022335EC

	thumb_func_start ov97_02233614
ov97_02233614: ; 0x02233614
	mov r0, #0x10
	bx lr
	thumb_func_end ov97_02233614

	thumb_func_start ov97_02233618
ov97_02233618: ; 0x02233618
	push {r4, lr}
	ldr r0, _0223362C ; =0x04000006
	ldrh r4, [r0]
	bl sub_020C3880
	add r1, r0, r4
	mov r0, #1
	bic r1, r0
	add r0, r1, #1
	pop {r4, pc}
	; .align 2, 0
_0223362C: .word 0x04000006
	thumb_func_end ov97_02233618

	thumb_func_start ov97_02233630
ov97_02233630: ; 0x02233630
	push {r4, r5, r6, r7}
	add r3, r0, #0
	mov r0, #0
	lsr r1, r1, #2
	beq _02233666
	ldr r4, _0223366C ; =0x00269EC3
_0223363C:
	ldr r5, _02233670 ; =0x5D588B65
	ldr r6, _02233670 ; =0x5D588B65
	mul r5, r3
	ldr r3, _0223366C ; =0x00269EC3
	add r0, r0, #1
	add r3, r5, r3
	lsr r5, r3, #0x10
	mul r6, r3
	add r3, r6, r4
	lsl r5, r5, #0x10
	lsr r7, r3, #0x10
	lsr r5, r5, #0x10
	lsl r7, r7, #0x10
	ldr r6, [r2, #0]
	lsl r5, r5, #0x10
	lsr r7, r7, #0x10
	orr r5, r7
	eor r5, r6
	stmia r2!, {r5}
	cmp r0, r1
	blo _0223363C
_02233666:
	add r0, r3, #0
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_0223366C: .word 0x00269EC3
_02233670: .word 0x5D588B65
	thumb_func_end ov97_02233630

	thumb_func_start ov97_02233674
ov97_02233674: ; 0x02233674
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r7, r1, #0
	add r6, r2, #0
	str r3, [sp]
	bl ov97_02233590
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r1, #0xff
	bic r0, r1
	ldr r1, [r4, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	orr r1, r0
	ldr r0, _02233798 ; =0xFFFFF0FF
	str r1, [r5, #0]
	and r0, r1
	ldr r1, [r4, #0]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x14
	orr r1, r0
	ldr r0, _0223379C ; =0xFFFF0FFF
	str r1, [r5, #0]
	and r0, r1
	ldr r1, [r4, #0]
	lsl r1, r1, #0x10
	lsr r1, r1, #0x1c
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #0]
	bl ov97_02233618
	ldr r1, [r5, #0]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	lsl r0, r0, #0x10
	orr r0, r1
	str r0, [r5, #0]
	ldr r2, [r4, #4]
	ldr r1, [r5, #4]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r0, #0xff
	lsl r2, r2, #0x18
	bic r1, r0
	lsr r2, r2, #0x18
	orr r2, r1
	ldr r1, _02233798 ; =0xFFFFF0FF
	str r2, [r5, #4]
	and r1, r2
	ldr r2, [r4, #4]
	lsl r2, r2, #0x14
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x14
	orr r2, r1
	ldr r1, _0223379C ; =0xFFFF0FFF
	str r2, [r5, #4]
	and r1, r2
	ldr r2, [r4, #4]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1c
	lsl r2, r2, #0x1c
	lsr r2, r2, #0x10
	orr r1, r2
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	bic r1, r0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	orr r1, r0
	ldr r0, _022337A0 ; =0xFFFF00FF
	and r0, r1
	ldr r1, [sp]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #8]
	mov r0, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02000160
	ldr r1, [r5, #8]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	orr r0, r1
	str r0, [r5, #8]
	bl ov97_02233614
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x18
	ldr r1, [r5, #0xc]
	mov r2, #0xff
	bic r1, r2
	lsr r0, r0, #0x18
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r6, #8
	orr r0, r1
	str r0, [r5, #0xc]
	cmp r6, #0
	beq _02233772
	ldr r1, [r5, #0xc]
	add r0, r7, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r5, r1
	add r2, r6, #0
	bl sub_020C4DB0
_02233772:
	add r0, r5, #0
	bl ov97_02233810
	ldr r0, [r4, #0]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	cmp r0, #1
	bne _02233796
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r6, r1
	lsr r0, r0, #0x10
	sub r1, r1, #4
	add r2, r5, #4
	bl ov97_02233630
_02233796:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233798: .word 0xFFFFF0FF
_0223379C: .word 0xFFFF0FFF
_022337A0: .word 0xFFFF00FF
	thumb_func_end ov97_02233674

	thumb_func_start ov97_022337A4
ov97_022337A4: ; 0x022337A4
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02233590
	ldr r0, [r4, #0]
	lsl r1, r0, #0x10
	lsr r1, r1, #0x1c
	cmp r1, #1
	bne _022337D4
	lsr r0, r0, #0x10
	mov r1, #0xc
	add r2, r4, #4
	bl ov97_02233630
	ldr r1, [r4, #0xc]
	add r4, #0x10
	lsl r2, r1, #0x18
	lsr r2, r2, #0x18
	lsr r1, r1, #8
	add r1, r2, r1
	sub r1, #0x10
	add r2, r4, #0
	bl ov97_02233630
_022337D4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_022337A4

	thumb_func_start ov97_022337D8
ov97_022337D8: ; 0x022337D8
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0xc]
	mov r0, #0
	lsl r1, r2, #0x18
	lsr r1, r1, #0x18
	add r1, r4, r1
	lsr r2, r2, #8
	bl sub_02000160
	ldr r1, [r4, #8]
	lsr r1, r1, #0x10
	cmp r1, r0
	bne _022337F8
	mov r0, #1
	pop {r4, pc}
_022337F8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov97_022337D8

	thumb_func_start ov97_022337FC
ov97_022337FC: ; 0x022337FC
	bx lr
	; .align 2, 0
	thumb_func_end ov97_022337FC

	thumb_func_start ov97_02233800
ov97_02233800: ; 0x02233800
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02233800

	thumb_func_start ov97_02233804
ov97_02233804: ; 0x02233804
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02233804

	thumb_func_start ov97_02233808
ov97_02233808: ; 0x02233808
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02233808

	thumb_func_start ov97_0223380C
ov97_0223380C: ; 0x0223380C
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0223380C

	thumb_func_start ov97_02233810
ov97_02233810: ; 0x02233810
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02233810

	thumb_func_start ov97_02233814
ov97_02233814: ; 0x02233814
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ov97_02233460
	lsl r0, r0, #0x10
	lsl r3, r5, #0x10
	lsr r0, r0, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _02233850 ; =ov97_022323CC
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl sub_020CF64C
	cmp r0, #2
	beq _0223384A
	bl ov97_022337FC
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0223384A:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02233850: .word ov97_022323CC
	thumb_func_end ov97_02233814

	thumb_func_start ov97_02233854
ov97_02233854: ; 0x02233854
	push {r3, lr}
	ldr r0, _0223386C ; =ov97_022323E4
	bl sub_020CEB94
	cmp r0, #2
	beq _02233868
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_02233868:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0223386C: .word ov97_022323E4
	thumb_func_end ov97_02233854

	thumb_func_start ov97_02233870
ov97_02233870: ; 0x02233870
	push {r3, lr}
	ldr r0, _0223388C ; =ov97_02232424
	bl sub_020CEC08
	cmp r0, #2
	beq _02233888
	bl ov97_022337FC
	bl sub_020C42A8
	mov r0, #0
	pop {r3, pc}
_02233888:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_0223388C: .word ov97_02232424
	thumb_func_end ov97_02233870

	thumb_func_start ov97_02233890
ov97_02233890: ; 0x02233890
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x1e
	str r0, [sp]
	lsl r3, r3, #0x10
	ldr r0, _022338B8 ; =ov97_0223245C
	mov r1, #3
	mov r2, #0x11
	lsr r3, r3, #0x10
	bl sub_020D07C4
	cmp r0, #2
	beq _022338B2
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_022338B2:
	mov r0, #1
	pop {r3, pc}
	nop
_022338B8: .word ov97_0223245C
	thumb_func_end ov97_02233890

	thumb_func_start ov97_022338BC
ov97_022338BC: ; 0x022338BC
	push {r3, r4, r5, lr}
	bl ov97_02233408
	add r5, r0, #0
	bl ov97_02233590
	add r4, r0, #0
	bl ov97_02233510
	add r0, #0x64
	ldrb r0, [r0]
	strh r0, [r5, #0x32]
	str r4, [r5, #0]
	bl ov97_0223358C
	strh r0, [r5, #4]
	ldr r0, _022338F4 ; =ov97_022324C4
	add r1, r5, #0
	bl sub_020CEDC8
	cmp r0, #2
	beq _022338F0
	bl ov97_022337FC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022338F0:
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022338F4: .word ov97_022324C4
	thumb_func_end ov97_022338BC

	thumb_func_start ov97_022338F8
ov97_022338F8: ; 0x022338F8
	push {r3, lr}
	ldr r0, _02233910 ; =ov97_022324EC
	bl sub_020CEF50
	cmp r0, #2
	beq _0223390C
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_0223390C:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233910: .word ov97_022324EC
	thumb_func_end ov97_022338F8

	thumb_func_start ov97_02233914
ov97_02233914: ; 0x02233914
	push {r3, lr}
	bl ov97_02233478
	add r1, r0, #0
	ldr r0, _02233934 ; =ov97_022327B8
	bl sub_020CEFA0
	cmp r0, #2
	beq _0223392E
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_0223392E:
	mov r0, #1
	pop {r3, pc}
	nop
_02233934: .word ov97_022327B8
	thumb_func_end ov97_02233914

	thumb_func_start ov97_02233938
ov97_02233938: ; 0x02233938
	push {r3, r4, r5, lr}
	bl ov97_02233478
	add r4, r0, #0
	bl ov97_02233508
	ldr r2, _022339C8 ; =0x000001C3
	mov r3, #0x38
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	add r1, #0x34
	ldrb r1, [r1]
	strb r1, [r4, #8]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	add r1, #0x35
	ldrb r1, [r1]
	strb r1, [r4, #9]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	ldrb r1, [r0, r5]
	strb r1, [r4, #0xa]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #1]
	strb r1, [r4, #0xb]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r5, r1, #0
	mul r5, r3
	add r1, r0, r5
	ldrb r1, [r1, #2]
	strb r1, [r4, #0xc]
	ldrb r1, [r0, r2]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	add r2, r1, #0
	mul r2, r3
	add r0, r0, r2
	ldrb r0, [r0, #3]
	strb r0, [r4, #0xd]
	bl ov97_02233478
	add r1, r0, #0
	ldr r0, _022339CC ; =ov97_022328D4
	bl sub_020CEFA0
	cmp r0, #2
	beq _022339C2
	bl ov97_022337FC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022339C2:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022339C8: .word 0x000001C3
_022339CC: .word ov97_022328D4
	thumb_func_end ov97_02233938

	thumb_func_start ov97_022339D0
ov97_022339D0: ; 0x022339D0
	push {r3, lr}
	ldr r0, _022339E8 ; =ov97_02232944
	bl sub_020CF1DC
	cmp r0, #2
	beq _022339E4
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_022339E4:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_022339E8: .word ov97_02232944
	thumb_func_end ov97_022339D0

	thumb_func_start ov97_022339EC
ov97_022339EC: ; 0x022339EC
	push {r3, r4, lr}
	sub sp, #4
	bl ov97_0223359C
	add r4, r0, #0
	bl ov97_022334B4
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02233A20 ; =ov97_02232998
	add r2, r4, #0
	mov r3, #1
	bl sub_020CF21C
	cmp r0, #2
	beq _02233A18
	bl ov97_022337FC
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02233A18:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_02233A20: .word ov97_02232998
	thumb_func_end ov97_022339EC

	thumb_func_start ov97_02233A24
ov97_02233A24: ; 0x02233A24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _02233A94 ; =ov97_02232C94
	mov r0, #4
	mov r2, #0
	bl sub_020CE4BC
	cmp r0, #0
	beq _02233A40
	bl ov97_022337FC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233A40:
	bl ov97_02233408
	ldrh r0, [r0, #0x16]
	cmp r0, #0
	bne _02233A4E
	mov r5, #1
	b _02233A50
_02233A4E:
	mov r5, #0
_02233A50:
	bl ov97_022334A8
	add r6, r0, #0
	bl ov97_02233490
	add r4, r0, #0
	bl ov97_0223349C
	add r7, r0, #0
	bl ov97_02233484
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	lsl r2, r4, #0x10
	ldr r0, _02233A98 ; =ov97_02232A7C
	add r1, r6, #0
	lsr r2, r2, #0x10
	add r3, r7, #0
	bl sub_020CF5E4
	cmp r0, #2
	beq _02233A8E
	bl ov97_022337FC
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02233A8E:
	mov r0, #1
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02233A94: .word ov97_02232C94
_02233A98: .word ov97_02232A7C
	thumb_func_end ov97_02233A24

	thumb_func_start ov97_02233A9C
ov97_02233A9C: ; 0x02233A9C
	push {r3, lr}
	ldr r0, _02233AB4 ; =ov97_02232D18
	bl sub_020CEC48
	cmp r0, #2
	beq _02233AB0
	bl ov97_022337FC
	mov r0, #0
	pop {r3, pc}
_02233AB0:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233AB4: .word ov97_02232D18
	thumb_func_end ov97_02233A9C

	thumb_func_start ov97_02233AB8
ov97_02233AB8: ; 0x02233AB8
	push {r3, lr}
	ldr r0, _02233AD4 ; =ov97_02232D3C
	bl sub_020CEC88
	cmp r0, #2
	beq _02233AD0
	bl ov97_022337FC
	bl sub_020C42A8
	mov r0, #0
	pop {r3, pc}
_02233AD0:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233AD4: .word ov97_02232D3C
	thumb_func_end ov97_02233AB8

	thumb_func_start ov97_02233AD8
ov97_02233AD8: ; 0x02233AD8
	push {r3, lr}
	ldr r0, _02233AF4 ; =ov97_02232D60
	bl sub_020CED50
	cmp r0, #2
	beq _02233AF0
	bl ov97_022337FC
	bl sub_020C42A8
	mov r0, #0
	pop {r3, pc}
_02233AF0:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233AF4: .word ov97_02232D60
	thumb_func_end ov97_02233AD8

	thumb_func_start ov97_02233AF8
ov97_02233AF8: ; 0x02233AF8
	push {r3, lr}
	ldr r0, _02233B14 ; =ov97_02232DA4
	bl sub_020CED88
	cmp r0, #2
	beq _02233B10
	bl ov97_022337FC
	bl sub_020C42A8
	mov r0, #0
	pop {r3, pc}
_02233B10:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02233B14: .word ov97_02232DA4
	thumb_func_end ov97_02233AF8

	thumb_func_start ov97_02233B18
ov97_02233B18: ; 0x02233B18
	cmp r0, #0
	bgt _02233B20
	mov r0, #1
	bx lr
_02233B20:
	cmp r0, #0xfb
	bgt _02233B28
	mov r0, #0
	bx lr
_02233B28:
	ldr r1, _02233B40 ; =0x00000115
	cmp r0, r1
	bge _02233B32
	mov r0, #1
	bx lr
_02233B32:
	add r1, #0x86
	cmp r0, r1
	ble _02233B3C
	mov r0, #1
	bx lr
_02233B3C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02233B40: .word 0x00000115
	thumb_func_end ov97_02233B18

	thumb_func_start ov97_02233B44
ov97_02233B44: ; 0x02233B44
	push {r4, lr}
	add r4, r0, #0
	bl ov97_02235DB0
	cmp r0, #4
	bhi _02233B84
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02233B5C: ; jump table
	.short _02233B66 - _02233B5C - 2 ; case 0
	.short _02233B6C - _02233B5C - 2 ; case 1
	.short _02233B72 - _02233B5C - 2 ; case 2
	.short _02233B78 - _02233B5C - 2 ; case 3
	.short _02233B7E - _02233B5C - 2 ; case 4
_02233B66:
	mov r0, #2
	str r0, [r4, #0]
	pop {r4, pc}
_02233B6C:
	mov r0, #1
	str r0, [r4, #0]
	pop {r4, pc}
_02233B72:
	mov r0, #5
	str r0, [r4, #0]
	pop {r4, pc}
_02233B78:
	mov r0, #4
	str r0, [r4, #0]
	pop {r4, pc}
_02233B7E:
	mov r0, #3
	str r0, [r4, #0]
	pop {r4, pc}
_02233B84:
	mov r0, #0
	mvn r0, r0
	str r0, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov97_02233B44

	thumb_func_start ov97_02233B8C
ov97_02233B8C: ; 0x02233B8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r1, _02233CE0 ; =0x0000E890
	add r5, r0, #0
	add r4, r5, r1
	ldr r1, [r4, #0]
	cmp r1, #9
	bls _02233B9E
	b _02233CD8
_02233B9E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02233BAA: ; jump table
	.short _02233BBE - _02233BAA - 2 ; case 0
	.short _02233BDE - _02233BAA - 2 ; case 1
	.short _02233BF6 - _02233BAA - 2 ; case 2
	.short _02233C06 - _02233BAA - 2 ; case 3
	.short _02233C16 - _02233BAA - 2 ; case 4
	.short _02233C32 - _02233BAA - 2 ; case 5
	.short _02233C46 - _02233BAA - 2 ; case 6
	.short _02233C62 - _02233BAA - 2 ; case 7
	.short _02233C8E - _02233BAA - 2 ; case 8
	.short _02233CB4 - _02233BAA - 2 ; case 9
_02233BBE:
	bl ov97_02233D10
	ldr r0, [r5, #0x10]
	bl sub_02024440
	add r5, r0, #0
	bl ov97_0223635C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_0202EFB8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233BDE:
	bl sub_020C3880
	mov r2, #0x78
	mov r3, #0
	bl sub_020E1EE0
	add r0, r0, #1
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233BF6:
	ldr r0, [r4, #4]
	sub r0, r0, #1
	str r0, [r4, #4]
	bne _02233CD8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C06:
	ldr r0, [r5, #0x10]
	mov r1, #2
	bl sub_02024814
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C16:
	ldr r0, [r5, #0x10]
	bl sub_02024828
	cmp r0, #3
	bne _02233C26
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233C26:
	cmp r0, #1
	bne _02233CD8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C32:
	mov r0, #0
	add r1, r0, #0
	add r2, sp, #0
	mov r3, #0x10
	bl sub_020D1A6C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C46:
	bl ov97_02236280
	cmp r0, #0
	bne _02233C5A
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233C5A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C62:
	bl ov97_02236308
	cmp r0, #9
	beq _02233CD8
	bl ov97_02236308
	cmp r0, #0xb
	bne _02233C7A
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233C7A:
	bl ov97_022362C8
	cmp r0, #8
	bne _02233CD8
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233C8E:
	ldr r0, [r5, #0x10]
	bl sub_02024828
	cmp r0, #3
	bne _02233C9E
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233C9E:
	cmp r0, #2
	bne _02233C8E
	bl ov97_022362C8
	mov r0, #1
	bl sub_02017B7C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _02233CD8
_02233CB4:
	bl ov97_022362C8
	cmp r0, #8
	bne _02233CC8
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x10
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_02233CC8:
	cmp r0, #0
	bne _02233CD8
	mov r0, #1
	bl sub_02017B8C
	add sp, #0x10
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_02233CD8:
	mov r0, #0xa
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02233CE0: .word 0x0000E890
	thumb_func_end ov97_02233B8C

	thumb_func_start ov97_02233CE4
ov97_02233CE4: ; 0x02233CE4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_02024440
	add r4, r0, #0
	bl ov97_0223635C
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0202EFB8
	mov r0, #4
	bl sub_02017DE0
	ldr r0, [r5, #0x10]
	bl sub_020246E0
	mov r0, #4
	bl sub_02017DF0
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02233CE4

	thumb_func_start ov97_02233D10
ov97_02233D10: ; 0x02233D10
	push {r4, r5, r6, r7, lr}
	sub sp, #0xf4
	add r7, r0, #0
	ldr r0, [r7, #0x10]
	bl sub_02024440
	str r0, [sp]
	add r0, sp, #8
	bl sub_02076B10
	add r6, r0, #0
	mov r4, #0
	add r5, r7, #0
_02233D2A:
	ldr r0, _02233DA8 ; =0x0000E880
	mov r1, #0x3d
	lsl r1, r1, #4
	ldr r0, [r7, r0]
	ldr r2, [r5, r1]
	mov r1, #0x96
	lsl r1, r1, #4
	add r0, r0, #4
	mul r1, r2
	add r0, r0, r1
	mov r1, #0xf3
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	mov r1, #0x50
	mul r1, r2
	add r0, r0, r1
	add r1, r6, #0
	bl ov97_02236E90
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0202EFA4
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #6
	blt _02233D2A
	mov r5, #0
	add r0, sp, #4
	strh r5, [r0]
	add r4, r7, #0
	sub r6, r5, #1
_02233D6C:
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	add r0, r0, #4
	ldr r1, [r4, r0]
	cmp r2, r6
	beq _02233D9A
	cmp r1, #0xe
	beq _02233D9A
	ldr r0, _02233DA8 ; =0x0000E880
	mov r3, #0x96
	ldr r0, [r7, r0]
	lsl r3, r3, #4
	mul r3, r1
	add r0, r0, #4
	mov r1, #0x50
	mul r1, r2
	add r0, r0, r3
	add r0, r0, r1
	mov r1, #0xb
	add r2, sp, #4
	bl ov97_02236CA4
_02233D9A:
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _02233D6C
	add sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	nop
_02233DA8: .word 0x0000E880
	thumb_func_end ov97_02233D10

	thumb_func_start ov97_02233DAC
ov97_02233DAC: ; 0x02233DAC
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	tst r2, r0
	beq _02233DCA
	mov r2, #0
	bl sub_02002D7C
	ldr r1, [r4, #0x10]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	pop {r4, pc}
_02233DCA:
	ldr r0, [r4, #0x18]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02233DAC

	thumb_func_start ov97_02233DD0
ov97_02233DD0: ; 0x02233DD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	ldr r7, [r5, #0x44]
	add r6, r0, #0
	add r4, r2, #0
	cmp r7, #0
	bne _02233DE2
	mov r7, #0xff
_02233DE2:
	ldr r1, [r5, #0]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _02233E20
	ldr r0, [r5, #0xc]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x10]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #8]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r6, #0x20]
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_0201A7E8
_02233E20:
	mov r0, #2
	tst r0, r4
	bne _02233E32
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_0201ADA4
_02233E32:
	mov r0, #0
	ldr r1, [r5, #0x34]
	mvn r0, r0
	cmp r1, r0
	beq _02233EC2
	ldr r2, _02233F64 ; =0x000001C6
	mov r0, #1
	mov r1, #0x1a
	mov r3, #0x4e
	bl sub_0200B144
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x40]
	str r0, [sp, #0x14]
	cmp r0, #0
	bne _02233E5A
	mov r0, #0x4e
	bl sub_0200B358
	str r0, [sp, #0x14]
_02233E5A:
	ldr r0, _02233F68 ; =0x00012608
	ldr r0, [r6, r0]
	bl sub_020237E8
	ldr r0, _02233F68 ; =0x00012608
	ldr r1, [r5, #0x34]
	ldr r0, [r6, r0]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r1, _02233F68 ; =0x00012608
	ldr r0, [sp, #0x14]
	ldr r1, [r6, r1]
	ldr r2, [sp, #0x20]
	bl sub_0200C388
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	add r2, r4, #0
	bl ov97_02233DAC
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x28]
	bl sub_0201D78C
	str r0, [r5, #0x48]
	ldr r0, [r5, #0x40]
	cmp r0, #0
	bne _02233EB6
	ldr r0, [sp, #0x14]
	bl sub_0200B3F0
_02233EB6:
	ldr r0, [sp, #0x18]
	bl sub_0200B190
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x34]
_02233EC2:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _02233EFE
	ldr r0, _02233F6C ; =0x0001260C
	mov r2, #0x40
	ldr r6, [r6, r0]
	add r0, r6, #0
	bl sub_02023D8C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov97_02233DAC
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	add r2, r6, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x28]
	bl sub_0201D78C
	str r0, [r5, #0x48]
	mov r0, #0
	str r0, [r5, #0x38]
_02233EFE:
	ldr r1, [r5, #0x3c]
	cmp r1, #0
	beq _02233F2C
	add r0, r5, #0
	add r2, r4, #0
	bl ov97_02233DAC
	add r3, r0, #0
	ldr r0, [r5, #0x1c]
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #0x2c]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x3c]
	bl sub_0201D78C
	str r0, [r5, #0x48]
	mov r0, #0
	str r0, [r5, #0x3c]
_02233F2C:
	mov r0, #4
	tst r0, r4
	bne _02233F38
	ldr r0, [r5, #0]
	bl sub_0201A954
_02233F38:
	mov r0, #8
	tst r0, r4
	beq _02233F60
	mov r0, #0x10
	tst r0, r4
	ldr r0, [r5, #0]
	beq _02233F54
	ldr r2, _02233F70 ; =0x000003D2
	mov r1, #0
	mov r3, #0xd
	bl sub_0200E060
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_02233F54:
	mov r2, #0x3f
	mov r1, #0
	lsl r2, r2, #4
	mov r3, #0xe
	bl sub_0200DC48
_02233F60:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02233F64: .word 0x000001C6
_02233F68: .word 0x00012608
_02233F6C: .word 0x0001260C
_02233F70: .word 0x000003D2
	thumb_func_end ov97_02233DD0

	thumb_func_start ov97_02233F74
ov97_02233F74: ; 0x02233F74
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02233FA0 ; =0x0223D874
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x4e
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02233FA0: .word 0x0223D874
	thumb_func_end ov97_02233F74

	thumb_func_start ov97_02233FA4
ov97_02233FA4: ; 0x02233FA4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x4e
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r6, #0
	mov r0, #0x50
	add r1, #0x2c
	mov r2, #0x4e
	bl sub_020095C4
	str r0, [r6, #0x28]
	add r0, r6, #0
	mov r2, #1
	add r0, #0x2c
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r7, #0x55
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02233FEA:
	mov r0, #3
	add r1, r4, #0
	mov r2, #0x4e
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02233FEA
	mov r0, #0
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	mov r0, #0x55
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0x74
	mov r2, #0x1a
	bl sub_0200985C
	mov r1, #0x5b
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r3, #0
	str r3, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0x4e
	sub r1, #0x14
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	mov r1, #0x74
	mov r2, #0x17
	bl sub_020098B8
	mov r1, #0x17
	lsl r1, r1, #4
	str r0, [r6, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x4e
	sub r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	mov r1, #0x74
	mov r2, #0x19
	mov r3, #1
	bl sub_02009918
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x4e
	sub r1, #0x14
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	mov r1, #0x74
	mov r2, #0x18
	mov r3, #1
	bl sub_02009918
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	bl sub_0200A328
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A5C8
	bl sub_02079FD0
	add r1, r0, #0
	mov r0, #0
	mov r2, #1
	str r0, [sp]
	mov r0, #0x4e
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #0x13
	add r3, #0xff
	bl sub_02006E84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov97_02233FA4

	thumb_func_start ov97_022340B0
ov97_022340B0: ; 0x022340B0
	push {lr}
	sub sp, #0x2c
	mov r1, #0
	str r1, [sp]
	sub r2, r1, #1
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	mov r3, #0x55
	str r1, [sp, #0x10]
	lsl r3, r3, #2
	ldr r2, [r0, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r0, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r0, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r0, r2]
	add r3, #0x30
	str r2, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, r0, r3
	add r2, r1, #0
	add r3, r1, #0
	str r1, [sp, #0x28]
	bl sub_020093B4
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add sp, #0x2c
	pop {pc}
	thumb_func_end ov97_022340B0

	thumb_func_start ov97_022340FC
ov97_022340FC: ; 0x022340FC
	ldr r2, [r1, #0x28]
	str r2, [r0, #0]
	mov r2, #0x61
	lsl r2, r2, #2
	add r1, r1, r2
	str r1, [r0, #4]
	mov r2, #0
	mov r1, #1
	str r2, [r0, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	strh r2, [r0, #0x20]
	mov r1, #0x14
	str r1, [r0, #0x24]
	str r3, [r0, #0x28]
	mov r1, #0x4e
	str r1, [r0, #0x2c]
	bx lr
	thumb_func_end ov97_022340FC

	thumb_func_start ov97_02234124
ov97_02234124: ; 0x02234124
	ldr r3, _02234140 ; =0x0000E880
	ldr r0, [r0, r3]
	add r3, r0, #4
	mov r0, #0x96
	lsl r0, r0, #4
	mul r0, r1
	add r1, r3, r0
	mov r0, #0x50
	mul r0, r2
	add r0, r1, r0
	ldr r3, _02234144 ; =ov97_02236924
	mov r1, #0xb
	mov r2, #0
	bx r3
	; .align 2, 0
_02234140: .word 0x0000E880
_02234144: .word ov97_02236924
	thumb_func_end ov97_02234124

	thumb_func_start ov97_02234148
ov97_02234148: ; 0x02234148
	ldr r3, _02234164 ; =0x0000E880
	ldr r0, [r0, r3]
	add r3, r0, #4
	mov r0, #0x96
	lsl r0, r0, #4
	mul r0, r1
	add r1, r3, r0
	mov r0, #0x50
	mul r0, r2
	add r0, r1, r0
	ldr r3, _02234168 ; =ov97_02236924
	mov r1, #0x2d
	mov r2, #0
	bx r3
	; .align 2, 0
_02234164: .word 0x0000E880
_02234168: .word ov97_02236924
	thumb_func_end ov97_02234148

	thumb_func_start ov97_0223416C
ov97_0223416C: ; 0x0223416C
	ldr r3, _02234188 ; =0x0000E880
	ldr r0, [r0, r3]
	add r3, r0, #4
	mov r0, #0x96
	lsl r0, r0, #4
	mul r0, r1
	add r1, r3, r0
	mov r0, #0x50
	mul r0, r2
	add r0, r1, r0
	mov r1, #0
	ldr r3, _0223418C ; =ov97_02236924
	add r2, r1, #0
	bx r3
	; .align 2, 0
_02234188: .word 0x0000E880
_0223418C: .word ov97_02236924
	thumb_func_end ov97_0223416C

	thumb_func_start ov97_02234190
ov97_02234190: ; 0x02234190
	push {r4, r5}
	ldr r5, [sp, #8]
	lsr r4, r5, #0x1f
	add r4, r5, r4
	asr r4, r4, #1
	sub r5, r2, r4
	strb r5, [r0]
	lsr r5, r3, #0x1f
	add r5, r3, r5
	asr r5, r5, #1
	sub r3, r1, r5
	strb r3, [r0, #2]
	add r2, r2, r4
	strb r2, [r0, #1]
	add r1, r1, r5
	strb r1, [r0, #3]
	pop {r4, r5}
	bx lr
	thumb_func_end ov97_02234190

	thumb_func_start ov97_022341B4
ov97_022341B4: ; 0x022341B4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	mov r1, #1
	add r5, r0, #0
	add r0, r3, #0
	lsl r1, r1, #0xc
	add r7, r2, #0
	bl sub_02018184
	add r4, r0, #0
	beq _022341E8
	add r1, r5, #0
	add r2, r6, #0
	bl sub_02006AA4
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020A7164
	cmp r0, #0
	bne _022341E8
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022341E8:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_022341B4

	thumb_func_start ov97_022341EC
ov97_022341EC: ; 0x022341EC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, r3, #0
	add r1, r6, #0
	bl sub_02006D28
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020A7164
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_022341EC

	thumb_func_start ov97_02234208
ov97_02234208: ; 0x02234208
	push {r4, lr}
	add r3, r1, #0
	mov r4, #0
	cmp r0, #0xc9
	beq _0223421A
	ldr r1, _02234274 ; =0x00000182
	cmp r0, r1
	beq _02234244
	b _0223426E
_0223421A:
	mov r4, #3
	lsl r0, r4, #8
	add r2, r3, #0
	and r0, r3
	lsr r1, r0, #6
	lsl r0, r4, #0x18
	and r2, r4
	and r0, r3
	lsl r4, r4, #0x10
	and r3, r4
	lsr r0, r0, #0x12
	lsr r3, r3, #0xc
	orr r0, r3
	orr r0, r1
	orr r0, r2
	mov r1, #0x1c
	bl sub_020E2178
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	b _0223426E
_02234244:
	cmp r2, #5
	bhi _02234260
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234254: ; jump table
	.short _02234260 - _02234254 - 2 ; case 0
	.short _02234260 - _02234254 - 2 ; case 1
	.short _02234260 - _02234254 - 2 ; case 2
	.short _0223426C - _02234254 - 2 ; case 3
	.short _02234264 - _02234254 - 2 ; case 4
	.short _02234268 - _02234254 - 2 ; case 5
_02234260:
	mov r4, #0
	b _0223426E
_02234264:
	mov r4, #1
	b _0223426E
_02234268:
	mov r4, #2
	b _0223426E
_0223426C:
	mov r4, #3
_0223426E:
	add r0, r4, #0
	pop {r4, pc}
	nop
_02234274: .word 0x00000182
	thumb_func_end ov97_02234208

	thumb_func_start ov97_02234278
ov97_02234278: ; 0x02234278
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r7, r3, #0
	add r5, r1, #0
	bl ov97_02236DD0
	add r1, r6, #0
	add r2, r7, #0
	add r4, r0, #0
	bl ov97_02234208
	add r7, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	add r2, r7, #0
	bl sub_02079D8C
	add r1, r0, #0
	mov r0, #0x13
	add r2, sp, #0
	mov r3, #0x4e
	bl ov97_022341B4
	add r6, r0, #0
	ldr r0, [sp]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl sub_020C2C54
	ldr r1, [sp, #0x18]
	ldr r0, [sp]
	lsl r1, r1, #4
	add r1, #0x64
	mov r2, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #5
	lsl r2, r2, #8
	bl sub_020C02BC
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_02079EDC
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	add r1, #8
	bl sub_02021E90
	add r0, r6, #0
	bl sub_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234278

	thumb_func_start ov97_022342E4
ov97_022342E4: ; 0x022342E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r1, #0
	ldr r1, _02234360 ; =0x0223F434
	str r2, [sp]
	ldr r2, [r1, #0]
	mov r1, #0x83
	add r5, r3, #0
	lsl r1, r1, #2
	mul r1, r5
	add r4, r2, r1
	ldr r1, [sp, #0x20]
	add r6, r0, #0
	cmp r1, #0
	beq _02234358
	bl ov97_02233B18
	cmp r0, #0
	bne _02234314
	add r0, r6, #0
	bl ov97_02236DD0
	add r6, r0, #0
	b _02234316
_02234314:
	mov r6, #0
_02234316:
	ldr r2, [sp]
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02079D8C
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	add r1, sp, #4
	bl ov97_022341EC
	ldr r0, [sp, #4]
	add r1, r4, #0
	mov r2, #2
	ldr r0, [r0, #0x14]
	add r1, #0xc
	lsl r2, r2, #8
	bl sub_020C4C14
	lsl r0, r5, #4
	add r0, #0x64
	lsl r0, r0, #5
	str r0, [r4, #0]
	ldr r0, [sp, #0x20]
	ldr r1, [sp]
	str r0, [r4, #8]
	add r0, r6, #0
	add r2, r7, #0
	bl sub_02079EDC
	add r0, #8
	add sp, #8
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
_02234358:
	mov r0, #0
	str r0, [r4, #8]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234360: .word 0x0223F434
	thumb_func_end ov97_022342E4

	thumb_func_start ov97_02234364
ov97_02234364: ; 0x02234364
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022343A4 ; =0x0223F434
	mov r6, #2
	lsl r6, r6, #8
	add r7, r6, #0
	ldr r5, [r0, #0]
	mov r4, #0
	add r7, #0xc
_02234374:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02234398
	add r0, r5, #0
	add r0, #0xc
	add r1, r6, #0
	bl sub_020C2C54
	add r0, r5, #0
	ldr r1, [r5, #0]
	add r0, #0xc
	add r2, r6, #0
	bl sub_020C02BC
	ldr r0, [r5, #8]
	ldr r1, [r5, #4]
	bl sub_02021E90
_02234398:
	add r4, r4, #1
	add r5, r5, r7
	cmp r4, #0x1e
	blt _02234374
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022343A4: .word 0x0223F434
	thumb_func_end ov97_02234364

	thumb_func_start ov97_022343A8
ov97_022343A8: ; 0x022343A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r6, r0, #0
	mov r0, #0x13
	mov r1, #0x4e
	bl sub_02006C24
	mov r1, #1
	str r0, [sp, #0x10]
	mov r0, #0x4e
	lsl r1, r1, #0xc
	bl sub_02018184
	mov r7, #0
	str r0, [sp, #0x14]
	str r7, [sp, #0xc]
	add r5, r6, #0
_022343CA:
	ldr r0, _022344F4 ; =0x0000E880
	ldr r1, _022344F8 ; =0x0000E884
	ldr r0, [r6, r0]
	ldr r2, [r6, r1]
	mov r1, #0x96
	lsl r1, r1, #4
	mul r1, r2
	add r0, r0, #4
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r0, r1, r0
	mov r1, #5
	bl ov97_02236924
	cmp r0, #0
	beq _0223448E
	ldr r1, _022344F8 ; =0x0000E884
	add r0, r6, #0
	ldr r1, [r6, r1]
	add r2, r7, #0
	bl ov97_02234124
	ldr r1, _022344F8 ; =0x0000E884
	str r0, [sp, #0x1c]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r2, r7, #0
	bl ov97_02234148
	ldr r1, _022344F8 ; =0x0000E884
	str r0, [sp, #0x18]
	ldr r1, [r6, r1]
	add r0, r6, #0
	add r2, r7, #0
	bl ov97_0223416C
	add r4, r0, #0
	ldr r0, [sp, #0x1c]
	bl ov97_02236DD0
	ldr r2, _022344FC ; =0x021BF6DC
	add r1, r4, #0
	ldrb r2, [r2, #6]
	bl ov97_02234208
	add r4, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r3, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	bl ov97_022342E4
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	ldr r0, _022344F4 ; =0x0000E880
	ldr r1, _022344F8 ; =0x0000E884
	ldr r0, [r6, r0]
	ldr r2, [r6, r1]
	mov r1, #0x96
	lsl r1, r1, #4
	mul r1, r2
	add r0, r0, #4
	add r1, r0, r1
	ldr r0, [sp, #0xc]
	mov r2, #0
	add r0, r1, r0
	mov r1, #0xc
	bl ov97_02236924
	cmp r0, #0
	beq _02234480
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	b _022344BE
_02234480:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	b _022344BE
_0223448E:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r3, r7, #0
	bl ov97_022342E4
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_022344BE:
	ldr r0, [sp, #0xc]
	add r7, r7, #1
	add r0, #0x50
	add r5, #0xc
	str r0, [sp, #0xc]
	cmp r7, #0x1e
	bge _022344CE
	b _022343CA
_022344CE:
	ldr r0, [sp, #0x14]
	bl sub_020181C4
	ldr r0, [sp, #0x10]
	bl sub_02006CA8
	ldr r1, _02234500 ; =ov97_02234364
	ldr r0, _02234504 ; =0x00012604
	str r1, [r6, r0]
	ldr r1, _022344F8 ; =0x0000E884
	add r0, r6, #0
	ldr r1, [r6, r1]
	bl ov97_02234A2C
	add r0, r6, #0
	bl ov97_022349E0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022344F4: .word 0x0000E880
_022344F8: .word 0x0000E884
_022344FC: .word 0x021BF6DC
_02234500: .word ov97_02234364
_02234504: .word 0x00012604
	thumb_func_end ov97_022343A8

	thumb_func_start ov97_02234508
ov97_02234508: ; 0x02234508
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	mov r2, #0x61
	add r5, r0, #0
	lsl r2, r2, #2
	add r0, sp, #0x14
	add r1, r5, #0
	add r2, r5, r2
	mov r3, #1
	bl ov97_022340FC
	mov r0, #0x28
	str r0, [sp, #8]
	mov r0, #0x31
	mov r4, #0
	lsl r0, r0, #4
	str r4, [sp, #0xc]
	add r7, r5, r0
_0223452C:
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	mov r6, #0x1c
	lsl r0, r0, #0xc
	str r0, [sp, #4]
_02234538:
	mov r0, #0x1c
	str r0, [sp]
	ldr r2, [sp, #8]
	add r0, r7, #0
	add r1, r6, #0
	mov r3, #0x1c
	bl ov97_02234190
	lsl r0, r6, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	str r0, [sp, #0x20]
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02234566
	add r0, sp, #0x14
	bl sub_02021AA0
	mov r1, #0x6a
	lsl r1, r1, #2
	str r0, [r5, r1]
_02234566:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x6a
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0xa
	bl sub_02021D6C
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x6a
	lsl r0, r0, #2
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x64
	bl sub_02021F58
	mov r0, #6
	ldr r1, [sp, #0x1c]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp, #0x1c]
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [sp, #0x20]
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022345D0
	add r0, sp, #0x14
	bl sub_02021AA0
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r5, r1]
_022345D0:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x28
	bl sub_02021D6C
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021E80
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #0
	bl sub_02021F58
	add r4, r4, #1
	add r7, r7, #4
	add r5, #0xc
	cmp r4, #0x1e
	beq _02234634
	ldr r0, [sp, #0x10]
	add r6, #0x28
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	blt _02234538
	ldr r0, [sp, #8]
	add r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	bge _02234634
	b _0223452C
_02234634:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234508

	thumb_func_start ov97_02234638
ov97_02234638: ; 0x02234638
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r2, #0
	mov r2, #0x61
	add r6, r0, #0
	lsl r2, r2, #2
	add r5, r1, #0
	add r7, r3, #0
	add r0, sp, #0
	add r1, r6, #0
	add r2, r6, r2
	mov r3, #1
	bl ov97_022340FC
	lsl r0, r5, #0xc
	str r0, [sp, #8]
	lsl r0, r4, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl sub_02021AA0
	add r4, r0, #0
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02021D6C
	add r0, r4, #0
	mov r1, #1
	bl sub_02021E80
	ldr r1, [sp, #0x48]
	add r0, r4, #0
	bl sub_02021CAC
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02234638

	thumb_func_start ov97_0223468C
ov97_0223468C: ; 0x0223468C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0xe2
	lsl r0, r0, #2
	add r0, r6, r0
	mov r1, #0xe4
	mov r2, #0xb0
	mov r3, #0x32
	bl ov97_02234190
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0xe4
	mov r2, #0xb0
	mov r3, #6
	bl ov97_02234638
	mov r1, #0xe6
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #8
	add r0, r6, r1
	mov r1, #0xb0
	mov r3, #0x20
	add r2, r1, #0
	str r3, [sp]
	bl ov97_02234190
	mov r0, #1
	mov r1, #0xb0
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	mov r3, #3
	bl ov97_02234638
	mov r1, #0xea
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0x1c
	mov r3, #0x20
	add r0, r6, r1
	mov r1, #0x18
	mov r2, #0xb0
	str r3, [sp]
	bl ov97_02234190
	mov r0, #1
	str r0, [sp]
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0xb0
	mov r3, #0
	bl ov97_02234638
	mov r1, #0xee
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r7, #0
	mov r0, #0xff
	sub r1, #0x24
	strb r0, [r6, r1]
	add r4, r7, #0
	add r5, r6, #0
_02234712:
	mov r0, #0
	str r0, [sp]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #0x40
	mov r3, #9
	bl ov97_02234638
	mov r1, #0xf2
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r1, #0
	mov r0, #0xf3
	mvn r1, r1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0xe
	add r0, r0, #4
	str r1, [r5, r0]
	add r7, r7, #1
	add r4, #0x24
	add r5, #0xc
	cmp r7, #6
	blt _02234712
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_0223468C

	thumb_func_start ov97_0223474C
ov97_0223474C: ; 0x0223474C
	push {r3, lr}
	ldr r3, _02234780 ; =0x0000E880
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r2, r2, r0
	mov r0, #0x50
	mul r0, r1
	add r0, r2, r0
	mov r1, #0x41
	mov r2, #0
	bl ov97_02236924
	mov r1, #0x67
	lsl r1, r1, #2
	cmp r0, r1
	bne _0223477A
	mov r0, #1
	pop {r3, pc}
_0223477A:
	mov r0, #0
	pop {r3, pc}
	nop
_02234780: .word 0x0000E880
	thumb_func_end ov97_0223474C

	thumb_func_start ov97_02234784
ov97_02234784: ; 0x02234784
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _022347D0 ; =0x0000E880
	mov r5, #0
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r4, r2, r0
	mov r0, #0x50
	add r6, r1, #0
	mul r6, r0
	add r7, r5, #0
_022347A2:
	add r1, r5, #0
	add r0, r4, r6
	add r1, #0xd
	add r2, r7, #0
	bl ov97_02236924
	ldr r3, _022347D4 ; =0x0223EA98
	add r2, r0, #0
	mov r1, #0
_022347B4:
	ldr r0, [r3, #0]
	cmp r2, r0
	bne _022347BE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022347BE:
	add r1, r1, #1
	add r3, r3, #4
	cmp r1, #8
	blo _022347B4
	add r5, r5, #1
	cmp r5, #4
	blt _022347A2
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022347D0: .word 0x0000E880
_022347D4: .word 0x0223EA98
	thumb_func_end ov97_02234784

	thumb_func_start ov97_022347D8
ov97_022347D8: ; 0x022347D8
	push {r3, lr}
	ldr r3, _0223481C ; =0x0000E880
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r2, r2, r0
	mov r0, #0x50
	mul r0, r1
	add r0, r2, r0
	mov r1, #0xc
	mov r2, #0
	bl ov97_02236924
	ldr r1, _02234820 ; =0x0223EAA8
	ldrh r1, [r1, #0x30]
	cmp r1, #0
	beq _02234816
	ldr r2, _02234824 ; =0x0223EAD8
_02234804:
	ldrh r1, [r2]
	cmp r0, r1
	bne _0223480E
	mov r0, #1
	pop {r3, pc}
_0223480E:
	add r2, r2, #2
	ldrh r1, [r2]
	cmp r1, #0
	bne _02234804
_02234816:
	mov r0, #0
	pop {r3, pc}
	nop
_0223481C: .word 0x0000E880
_02234820: .word 0x0223EAA8
_02234824: .word 0x0223EAD8
	thumb_func_end ov97_022347D8

	thumb_func_start ov97_02234828
ov97_02234828: ; 0x02234828
	push {r3, lr}
	ldr r3, _02234850 ; =0x0000E880
	ldr r2, [r0, r3]
	add r3, r3, #4
	ldr r3, [r0, r3]
	mov r0, #0x96
	lsl r0, r0, #4
	add r2, r2, #4
	mul r0, r3
	add r2, r2, r0
	mov r0, #0x50
	mul r0, r1
	add r0, r2, r0
	mov r1, #0xb
	mov r2, #0
	bl ov97_02236924
	bl ov97_02233B18
	pop {r3, pc}
	; .align 2, 0
_02234850: .word 0x0000E880
	thumb_func_end ov97_02234828

	thumb_func_start ov97_02234854
ov97_02234854: ; 0x02234854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #2
	add r0, r4, r0
	str r0, [sp]
	add r6, r1, #0
	mov r0, #0xc
	mul r0, r6
	ldr r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02234880
	bl sub_02021D34
	cmp r0, #0
	bne _02234880
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_02234880:
	mov r5, #0
	mov r7, #0x3d
	mvn r5, r5
	mov r2, #0
	add r3, r4, #0
	lsl r7, r7, #4
	b _022348A8
_0223488E:
	ldr r0, _022349DC ; =0x0000E884
	ldr r1, [r4, r0]
	ldr r0, [r3, r7]
	cmp r1, r0
	bne _022348A4
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r3, r0]
	cmp r6, r0
	bne _022348A4
	add r5, r2, #0
_022348A4:
	add r3, #0xc
	add r2, r2, #1
_022348A8:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _022348B4
	cmp r2, #6
	blt _0223488E
_022348B4:
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_0223474C
	cmp r0, #1
	bne _022348C6
	add sp, #0x14
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_022348C6:
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_02234784
	cmp r0, #1
	bne _022348D8
	add sp, #0x14
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_022348D8:
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_022347D8
	cmp r0, #1
	bne _022348EA
	add sp, #0x14
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_022348EA:
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_02234828
	cmp r0, #1
	bne _022348FC
	add sp, #0x14
	mov r0, #7
	pop {r4, r5, r6, r7, pc}
_022348FC:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	bne _022349A4
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _02234914
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02234914:
	mov r5, #0
	mov r0, #0xf3
	add r3, r4, #0
	lsl r0, r0, #2
	sub r1, r5, #1
_0223491E:
	ldr r2, [r3, r0]
	cmp r2, r1
	bne _0223499A
	ldr r1, [sp]
	ldr r0, [sp, #4]
	ldr r0, [r1, r0]
	bl sub_02021D28
	add r1, r0, #0
	mov r0, #0xc
	add r7, r5, #0
	mul r7, r0
	mov r0, #0xf2
	lsl r0, r0, #2
	add r5, r4, r0
	ldr r0, [r5, r7]
	bl sub_02021C50
	ldr r0, [r5, r7]
	bl sub_02021D28
	add r3, r0, #0
	add r2, sp, #8
	ldmia r3!, {r0, r1}
	mov ip, r2
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	mov r1, #2
	str r0, [r2, #0]
	ldr r0, [sp, #8]
	lsl r1, r1, #0xe
	sub r0, r0, r1
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsr r1, r1, #1
	sub r0, r0, r1
	str r0, [sp, #0xc]
	ldr r0, [r5, r7]
	mov r1, ip
	bl sub_02021C50
	ldr r0, [r5, r7]
	mov r1, #1
	bl sub_02021CAC
	mov r1, #0xf3
	add r3, r4, r7
	lsl r1, r1, #2
	ldr r0, _022349DC ; =0x0000E884
	str r6, [r3, r1]
	ldr r2, [r4, r0]
	add r0, r1, #4
	str r2, [r3, r0]
	add r0, r1, #0
	add r0, #0x44
	ldr r0, [r4, r0]
	add r1, #0x44
	add r0, r0, #1
	str r0, [r4, r1]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0223499A:
	add r5, r5, #1
	add r3, #0xc
	cmp r5, #6
	blt _0223491E
	b _022349D6
_022349A4:
	mov r0, #0xc
	add r6, r5, #0
	mul r6, r0
	mov r0, #0xf2
	add r1, r4, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r2, #0
	mov r1, #0xf3
	mvn r2, r2
	add r0, r4, r6
	lsl r1, r1, #2
	str r2, [r0, r1]
	add r0, r1, #0
	add r0, #0x44
	ldr r0, [r4, r0]
	add r1, #0x44
	sub r0, r0, #1
	str r0, [r4, r1]
	add sp, #0x14
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_022349D6:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022349DC: .word 0x0000E884
	thumb_func_end ov97_02234854

	thumb_func_start ov97_022349E0
ov97_022349E0: ; 0x022349E0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
	sub r7, r4, #1
_022349EA:
	mov r0, #0xf3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, r7
	beq _02234A10
	ldr r0, _02234A28 ; =0x0000E884
	ldr r1, [r6, r0]
	mov r0, #0x3d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	bne _02234A10
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	b _02234A1C
_02234A10:
	mov r0, #0xf2
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021CAC
_02234A1C:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #6
	blt _022349EA
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234A28: .word 0x0000E884
	thumb_func_end ov97_022349E0

	thumb_func_start ov97_02234A2C
ov97_02234A2C: ; 0x02234A2C
	push {r3, r4, r5, lr}
	sub sp, #0x60
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	add r3, sp, #0x14
	add r1, r0, #0
	mov r2, #4
_02234A3C:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02234A3C
	stmia r3!, {r0, r1}
	str r0, [r3, #0]
	ldr r0, _02234AA4 ; =0x00000478
	add r0, r5, r0
	str r0, [sp, #0x14]
	mov r0, #6
	str r0, [sp, #0x1c]
	mov r0, #0x15
	str r0, [sp, #0x20]
	mov r0, #0xd
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	sub r0, r0, #3
	str r0, [sp, #0x48]
	mov r0, #0
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	mov r0, #1
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldr r0, _02234AA8 ; =0x00010200
	str r0, [sp, #0x40]
	mov r0, #0xa0
	str r0, [sp, #0x34]
	bl ov97_02235DBC
	add r3, r0, #0
	ldr r0, _02234AAC ; =0x0000E880
	mov r2, #9
	ldr r1, [r5, r0]
	ldr r0, _02234AB0 ; =0x00008344
	add r1, r1, r0
	lsl r0, r4, #3
	add r0, r4, r0
	add r0, r1, r0
	add r1, sp, #0
	bl ov97_0223936C
	add r0, sp, #0
	str r0, [sp, #0x4c]
	add r0, r5, #0
	add r1, sp, #0x14
	mov r2, #1
	bl ov97_02233DD0
	add sp, #0x60
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02234AA4: .word 0x00000478
_02234AA8: .word 0x00010200
_02234AAC: .word 0x0000E880
_02234AB0: .word 0x00008344
	thumb_func_end ov97_02234A2C

	thumb_func_start ov97_02234AB4
ov97_02234AB4: ; 0x02234AB4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	mov r1, #2
	bl sub_02019FE4
	add r4, r0, #0
	cmp r6, #0
	beq _02234AD8
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl ov97_02236924
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	b _02234ADA
_02234AD8:
	mov r1, #0
_02234ADA:
	mov r2, #0
	mov r0, #1
_02234ADE:
	add r3, r1, #0
	tst r3, r0
	beq _02234AEA
	add r6, r2, #0
	add r6, #0x80
	b _02234AEE
_02234AEA:
	add r6, r2, #0
	add r6, #0x60
_02234AEE:
	add r3, r4, #0
	add r3, #0xd6
	lsl r1, r1, #0x17
	add r2, r2, #1
	strh r6, [r3]
	lsr r1, r1, #0x18
	add r4, r4, #2
	cmp r2, #4
	blt _02234ADE
	ldr r0, [r5, #0x20]
	mov r1, #2
	bl sub_02019448
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02234AB4

	thumb_func_start ov97_02234B0C
ov97_02234B0C: ; 0x02234B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	add r3, sp, #0x2c
	add r1, r0, #0
	mov r2, #4
_02234B1C:
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02234B1C
	stmia r3!, {r0, r1}
	str r0, [r3, #0]
	mov r1, #0x20
	str r1, [sp, #0x3c]
	mov r1, #1
	ldr r0, _02234CBC ; =0x00000488
	str r1, [sp, #0x50]
	str r1, [sp, #0x54]
	mov r1, #0xbc
	str r1, [sp, #0x4c]
	ldr r1, _02234CC0 ; =0x000F0200
	add r0, r5, r0
	str r1, [sp, #0x58]
	mov r1, #0x2c
	str r0, [sp, #0x2c]
	mov r0, #0
	str r1, [sp, #0x60]
	mov r1, #0x90
	mov r2, #4
	str r1, [sp, #0x44]
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x64]
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	str r2, [sp, #0x40]
	bl ov97_02233DD0
	mov r0, #0x2b
	str r0, [sp, #0x60]
	mov r0, #0x50
	str r0, [sp, #0x44]
	mov r0, #8
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #6
	bl ov97_02233DD0
	add r0, r5, #0
	add r1, r4, #0
	bl ov97_02234AB4
	cmp r4, #0
	bne _02234B8A
	ldr r0, [sp, #0x2c]
	bl sub_0201A954
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
_02234B8A:
	add r2, sp, #0x1c
	add r0, r4, #0
	mov r1, #2
	add r2, #2
	bl ov97_02236924
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov97_02236924
	add r3, r0, #0
	add r0, sp, #0x1c
	add r0, #2
	add r1, sp, #8
	mov r2, #0xb
	bl ov97_0223936C
	add r0, sp, #8
	str r0, [sp, #0x64]
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x60]
	mov r0, #8
	str r0, [sp, #0x44]
	mov r0, #0
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #6
	bl ov97_02233DD0
	mov r0, #0x40
	mov r1, #0x4e
	bl sub_02023790
	mov r2, #0x67
	add r6, r0, #0
	mov r0, #1
	mov r1, #0x1a
	lsl r2, r2, #2
	mov r3, #0x4e
	bl sub_0200B144
	add r7, r0, #0
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0
	bl ov97_02236924
	bl ov97_02236DD0
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r6, #0
	bl sub_0200B1B8
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x60]
	mov r0, #0x10
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #6
	str r6, [sp, #0x68]
	bl ov97_02233DD0
	add r0, r7, #0
	bl sub_0200B190
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl ov97_02236924
	cmp r0, #0
	beq _02234C6E
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207CF10
	add r7, r0, #0
	mov r0, #0x40
	mov r1, #0x4e
	bl sub_02023790
	lsl r1, r7, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x4e
	add r6, r0, #0
	bl sub_0207CFA0
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x60]
	mov r0, #0x98
	str r0, [sp, #0x44]
	mov r0, #0x10
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #6
	str r6, [sp, #0x68]
	bl ov97_02233DD0
	add r0, r6, #0
	bl sub_020237BC
_02234C6E:
	add r0, r4, #0
	bl ov97_02236E00
	add r6, r0, #0
	mov r0, #0xa
	mov r1, #0x4e
	bl sub_02023790
	mov r3, #1
	add r1, r6, #0
	mov r2, #3
	add r4, r0, #0
	str r3, [sp]
	bl sub_020238A0
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x60]
	mov r0, #0x64
	str r0, [sp, #0x44]
	mov r0, #8
	str r0, [sp, #0x48]
	add r0, r5, #0
	add r1, sp, #0x2c
	mov r2, #2
	str r4, [sp, #0x68]
	bl ov97_02233DD0
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [sp, #4]
	mov r1, #0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_02005844
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02234CBC: .word 0x00000488
_02234CC0: .word 0x000F0200
	thumb_func_end ov97_02234B0C

	thumb_func_start ov97_02234CC4
ov97_02234CC4: ; 0x02234CC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x4e
	str r0, [sp, #8]
	add r6, r2, #0
	mov r0, #0
	add r4, r3, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	cmp r4, #0
	beq _02234CEC
	mov r0, #0x17
	str r0, [r4, #0]
_02234CEC:
	str r6, [r5, #0x24]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02234CC4

	thumb_func_start ov97_02234CF4
ov97_02234CF4: ; 0x02234CF4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	add r4, r3, #0
	str r0, [sp, #4]
	mov r0, #0x4e
	add r6, r2, #0
	str r0, [sp, #8]
	ldr r3, _02234D24 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	cmp r4, #0
	beq _02234D1C
	mov r0, #0x17
	str r0, [r4, #0]
_02234D1C:
	str r6, [r5, #0x24]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02234D24: .word 0x00007FFF
	thumb_func_end ov97_02234CF4

	thumb_func_start ov97_02234D28
ov97_02234D28: ; 0x02234D28
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02234DE8 ; =0x0223D884
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _02234DEC ; =0x0223D894
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
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
	ldr r5, _02234DF0 ; =0x0223D8B0
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
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	ldr r5, _02234DF4 ; =0x0223D8CC
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #2
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	ldr r5, _02234DF8 ; =0x0223D8E8
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #3
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02234DE8: .word 0x0223D884
_02234DEC: .word 0x0223D894
_02234DF0: .word 0x0223D8B0
_02234DF4: .word 0x0223D8CC
_02234DF8: .word 0x0223D8E8
	thumb_func_end ov97_02234D28

	thumb_func_start ov97_02234DFC
ov97_02234DFC: ; 0x02234DFC
	push {r3, r4, r5, lr}
	sub sp, #0x38
	ldr r5, _02234E74 ; =0x0223D904
	add r4, r0, #0
	add r3, sp, #0x10
	mov r2, #5
_02234E08:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02234E08
	add r0, sp, #0x10
	bl sub_0201FE94
	ldr r0, [r4, #0x20]
	bl ov97_02234D28
	ldr r0, _02234E78 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201D710
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x4e
	bl sub_02002E7C
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x4e
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x13
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	mov r0, #0x74
	mov r1, #0x16
	mov r3, #2
	bl sub_02006E3C
	mov r0, #2
	mov r1, #0x4e
	bl sub_02002BB8
	add sp, #0x38
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02234E74: .word 0x0223D904
_02234E78: .word 0x021BF6DC
	thumb_func_end ov97_02234DFC

	thumb_func_start ov97_02234E7C
ov97_02234E7C: ; 0x02234E7C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	mov r0, #0x74
	mov r1, #0x14
	mov r3, #2
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r2, #0
	ldr r1, [r4, #0]
	ldr r0, _02234EC8 ; =0x0223EA60
	add r3, r2, #0
	ldrb r0, [r0, r1]
	mov r1, #2
	str r0, [sp, #8]
	ldr r0, [r4, #0x20]
	bl sub_02019E2C
	ldr r0, [r4, #0x20]
	mov r1, #2
	bl sub_02019448
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02234EC8: .word 0x0223EA60
	thumb_func_end ov97_02234E7C

	thumb_func_start ov97_02234ECC
ov97_02234ECC: ; 0x02234ECC
	push {r4, lr}
	sub sp, #8
	mov r1, #7
	add r4, r0, #0
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x4e
	bl sub_02002E7C
	mov r1, #0
	mov r2, #0x3f
	str r1, [sp]
	mov r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	lsl r2, r2, #4
	mov r3, #0xe
	bl sub_0200DAA4
	ldr r0, [r4, #0x1c]
	ldr r2, _02234F74 ; =0x000003D2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	mov r1, #0
	mov r3, #0xd
	bl sub_0200DD0C
	ldr r0, _02234F78 ; =0x0000042C
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x4c
	bl sub_020D5124
	ldr r0, _02234F7C ; =0x00000498
	mov r3, #0x1b
	add r1, r0, #0
	add r2, r4, r0
	sub r1, #0x6c
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #2
	sub r1, #0x64
	str r2, [r4, r1]
	add r1, r0, #0
	mov r2, #1
	sub r1, #0x60
	str r2, [r4, r1]
	add r1, r0, #0
	sub r1, #0x5c
	str r3, [r4, r1]
	add r1, r0, #0
	mov r3, #4
	sub r1, #0x58
	str r3, [r4, r1]
	add r3, r0, #0
	mov r1, #0
	sub r3, #0x48
	str r1, [r4, r3]
	add r3, r0, #0
	sub r3, #0x44
	str r2, [r4, r3]
	add r3, r0, #0
	sub r3, #0x4c
	str r2, [r4, r3]
	add r2, r0, #0
	ldr r3, _02234F80 ; =0x0001020F
	sub r2, #0x40
	str r3, [r4, r2]
	add r2, r0, #0
	ldr r3, _02234F84 ; =0x000F020F
	sub r2, #0x3c
	str r3, [r4, r2]
	add r2, r0, #0
	sub r2, #0x34
	str r1, [r4, r2]
	sub r0, #0x30
	str r1, [r4, r0]
	add sp, #8
	pop {r4, pc}
	nop
_02234F74: .word 0x000003D2
_02234F78: .word 0x0000042C
_02234F7C: .word 0x00000498
_02234F80: .word 0x0001020F
_02234F84: .word 0x000F020F
	thumb_func_end ov97_02234ECC

	thumb_func_start ov97_02234F88
ov97_02234F88: ; 0x02234F88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r6, r0, #0
	mov r7, #0x6b
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02234F96:
	mov r0, #0x6a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_02021CAC
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #0x1e
	blt _02234F96
	mov r7, #0xf2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_02234FBA:
	ldr r0, [r4, r7]
	mov r1, #0
	bl sub_02021CAC
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _02234FBA
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r2, #0x61
	lsl r2, r2, #2
	add r0, sp, #0x1c
	add r1, r6, #0
	add r2, r6, r2
	mov r3, #1
	bl ov97_022340FC
	mov r0, #0x1c
	mov r7, #0
	str r0, [sp, #0x10]
	add r4, r6, #0
	add r5, r6, #0
_02235008:
	ldr r0, [sp, #0x10]
	lsl r0, r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0x8e
	lsl r0, r0, #0xc
	str r0, [sp, #0x28]
	add r0, sp, #0x1c
	bl sub_02021AA0
	ldr r1, _02235148 ; =0x00000414
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r0, _02235148 ; =0x00000414
	add r1, r7, #0
	ldr r0, [r4, r0]
	add r1, #0xa
	bl sub_02021D6C
	ldr r0, _02235148 ; =0x00000414
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021E80
	ldr r0, _02235148 ; =0x00000414
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_02021CAC
	mov r1, #0x3d
	mov r2, #0xf3
	lsl r1, r1, #4
	lsl r2, r2, #2
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r6, #0
	bl ov97_02234124
	mov r1, #0x3d
	mov r2, #0xf3
	lsl r1, r1, #4
	lsl r2, r2, #2
	str r0, [sp, #0x14]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r6, #0
	bl ov97_02234148
	mov r1, #0x3d
	mov r2, #0xf3
	lsl r1, r1, #4
	lsl r2, r2, #2
	str r0, [sp, #0x18]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	add r0, r6, #0
	bl ov97_0223416C
	add r2, r0, #0
	ldr r0, _02235148 ; =0x00000414
	str r7, [sp]
	ldr r0, [r4, r0]
	ldr r3, _0223514C ; =0x021BF6DC
	str r0, [sp, #4]
	ldrb r3, [r3, #6]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	bl ov97_02234278
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	add r0, #0x28
	str r0, [sp, #0x10]
	add r4, r4, #4
	add r5, #0xc
	cmp r7, #6
	blt _02235008
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4e
	str r0, [sp, #0xc]
	ldr r2, [r6, #0x20]
	mov r0, #0x74
	mov r1, #0x15
	mov r3, #2
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r2, #0
	ldr r1, [r6, #0]
	ldr r0, _02235150 ; =0x0223EA60
	add r3, r2, #0
	ldrb r0, [r0, r1]
	mov r1, #2
	str r0, [sp, #8]
	ldr r0, [r6, #0x20]
	bl sub_02019E2C
	ldr r0, [r6, #0x20]
	mov r1, #2
	bl sub_02019448
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r1, #7
	mov r0, #0
	lsl r1, r1, #6
	mov r2, #0x4e
	bl sub_02002E7C
	mov r1, #0
	mov r2, #0x3f
	str r1, [sp]
	mov r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	lsl r2, r2, #4
	mov r3, #0xe
	bl sub_0200DAA4
	ldr r0, [r6, #0x1c]
	ldr r2, _02235154 ; =0x000003D2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x4e
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	mov r1, #0
	mov r3, #0xd
	bl sub_0200DD0C
	add r0, r6, #0
	bl ov97_02234ECC
	mov r1, #0x46
	mov r0, #0xa
	lsl r1, r1, #4
	str r0, [r6, r1]
	sub r1, #0x34
	add r0, r6, #0
	add r1, r6, r1
	mov r2, #0x18
	bl ov97_02233DD0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02235148: .word 0x00000414
_0223514C: .word 0x021BF6DC
_02235150: .word 0x0223EA60
_02235154: .word 0x000003D2
	thumb_func_end ov97_02234F88

	thumb_func_start ov97_02235158
ov97_02235158: ; 0x02235158
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02235174
	mov r1, #0
	bl sub_0200E084
	add r0, r4, #0
	bl sub_0201ACF4
	add r0, r4, #0
	bl sub_0201A8FC
_02235174:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov97_02235158

	thumb_func_start ov97_02235178
ov97_02235178: ; 0x02235178
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r7, _022351E8 ; =0x00000414
	mov r4, #0
	add r5, r6, #0
_02235182:
	ldr r0, [r5, r7]
	bl sub_02021BD4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02235182
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _022351EC ; =0x00000498
	add r0, r6, r0
	bl ov97_02235158
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xf3
	mov r5, #0
	lsl r0, r0, #2
	add r4, r6, #0
	sub r3, r5, #1
	mov r2, #0xe
	add r1, r0, #4
_022351D2:
	str r3, [r4, r0]
	str r2, [r4, r1]
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _022351D2
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022351E8: .word 0x00000414
_022351EC: .word 0x00000498
	thumb_func_end ov97_02235178

	thumb_func_start ov97_022351F0
ov97_022351F0: ; 0x022351F0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r7, #0x6a
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_02235204:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223520E
	bl sub_02021BD4
_0223520E:
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223521C
	bl sub_02021BD4
_0223521C:
	add r4, r4, #1
	add r5, #0xc
	cmp r4, #0x1e
	blt _02235204
	mov r7, #0xf2
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_0223522C:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02235236
	bl sub_02021BD4
_02235236:
	add r5, r5, #1
	add r4, #0xc
	cmp r5, #6
	blt _0223522C
	mov r0, #0xe6
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223524C
	bl sub_02021BD4
_0223524C:
	mov r0, #0xee
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223525A
	bl sub_02021BD4
_0223525A:
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02235268
	bl sub_02021BD4
_02235268:
	ldr r0, _022352FC ; =0x00000478
	add r0, r6, r0
	bl ov97_02235158
	ldr r0, _02235300 ; =0x00000488
	add r0, r6, r0
	bl ov97_02235158
	ldr r0, _02235304 ; =0x00000498
	add r0, r6, r0
	bl ov97_02235158
	mov r0, #2
	bl sub_02002C60
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r7, #0x55
	mov r5, #0
	add r4, r6, #0
	lsl r7, r7, #2
_022352A2:
	ldr r0, [r4, r7]
	bl sub_02009754
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #6
	blt _022352A2
	ldr r0, [r6, #0x28]
	bl sub_02021964
	mov r0, #0
	str r0, [r6, #0x28]
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	ldr r0, _02235308 ; =0x0000E88C
	ldr r0, [r6, r0]
	bl sub_02015938
	ldr r0, _0223530C ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	ldr r0, [r6, #0x20]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r6, #0x20]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r6, #0x20]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r6, #0x20]
	mov r1, #3
	bl sub_02019044
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022352FC: .word 0x00000478
_02235300: .word 0x00000488
_02235304: .word 0x00000498
_02235308: .word 0x0000E88C
_0223530C: .word 0x021BF6DC
	thumb_func_end ov97_022351F0

	thumb_func_start ov97_02235310
ov97_02235310: ; 0x02235310
	push {lr}
	sub sp, #0x14
	ldr r1, [r0, #0x20]
	mov r2, #0x19
	str r1, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp, #8]
	mov r1, #8
	str r1, [sp, #0xc]
	add r1, sp, #0
	strb r2, [r1, #0x10]
	mov r2, #7
	strb r2, [r1, #0x11]
	ldr r1, _02235340 ; =0x0000E88C
	ldr r0, [r0, r1]
	add r1, sp, #0
	bl sub_02015958
	add sp, #0x14
	pop {pc}
	nop
_02235340: .word 0x0000E88C
	thumb_func_end ov97_02235310

	thumb_func_start ov97_02235344
ov97_02235344: ; 0x02235344
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	bl ov97_02236378
	add r4, r0, #0
	bl ov97_02235DBC
	add r3, r0, #0
	add r0, r4, #0
	add r1, sp, #8
	mov r2, #8
	bl ov97_0223936C
	mov r0, #0x4e
	bl sub_0200B358
	add r4, r0, #0
	mov r0, #8
	mov r1, #0x4e
	bl sub_02023790
	add r1, sp, #8
	add r6, r0, #0
	bl sub_02023D28
	mov r1, #1
	str r1, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	mov r3, #0
	bl sub_0200B48C
	add r0, r5, #0
	bl ov97_02234ECC
	ldr r0, [r5, #0]
	mov r2, #0x18
	lsl r1, r0, #2
	ldr r0, _022353C8 ; =0x0223EA80
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0xc
	sub r1, #0x34
	str r4, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	bl ov97_02233DD0
	add r0, r6, #0
	bl sub_020237BC
	add r0, r4, #0
	bl sub_0200B3F0
	add r0, r5, #0
	bl ov97_02235310
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_022353C8: .word 0x0223EA80
	thumb_func_end ov97_02235344

	thumb_func_start ov97_022353CC
ov97_022353CC: ; 0x022353CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022353FC ; =0x00012604
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022353E0
	blx r0
	ldr r0, _022353FC ; =0x00012604
	mov r1, #0
	str r1, [r4, r0]
_022353E0:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [r4, #0x20]
	bl sub_0201C2B8
	ldr r3, _02235400 ; =0x027E0000
	ldr r1, _02235404 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_022353FC: .word 0x00012604
_02235400: .word 0x027E0000
_02235404: .word 0x00003FF8
	thumb_func_end ov97_022353CC

	thumb_func_start ov97_02235408
ov97_02235408: ; 0x02235408
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x10]
	bl sub_02024440
	str r0, [sp, #8]
	bl sub_0202F0E0
	cmp r0, #0
	bne _0223545C
	ldr r0, [sp, #8]
	bl sub_0202F088
	cmp r0, #0
	bne _0223542E
	add sp, #0xc
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0223542E:
	ldr r0, [sp, #8]
	bl sub_0202F0BC
	cmp r0, #0
	bne _0223543E
	add sp, #0xc
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0223543E:
	bl ov97_0223635C
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl sub_0202F050
	cmp r0, #0
	bne _02235450
	ldr r0, _022354B8 ; =0x0002A300
_02235450:
	ldr r1, _022354BC ; =0x00015180
	cmp r0, r1
	bge _0223545C
	add sp, #0xc
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_0223545C:
	mov r6, #0
	str r6, [sp, #4]
	add r7, r6, #0
_02235462:
	mov r4, #0
	add r5, r4, #0
_02235466:
	ldr r1, [sp]
	ldr r0, _022354C0 ; =0x0000E880
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #5
	add r0, r0, #4
	add r0, r0, r7
	add r0, r0, r5
	bl ov97_02236924
	cmp r0, #0
	beq _02235480
	add r6, r6, #1
_02235480:
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #0x1e
	blt _02235466
	mov r0, #0x96
	lsl r0, r0, #4
	add r7, r7, r0
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xe
	blt _02235462
	cmp r6, #6
	bge _022354A2
	add sp, #0xc
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_022354A2:
	ldr r0, [sp, #8]
	bl sub_0202F028
	cmp r0, #0
	beq _022354B2
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_022354B2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022354B8: .word 0x0002A300
_022354BC: .word 0x00015180
_022354C0: .word 0x0000E880
	thumb_func_end ov97_02235408

	thumb_func_start ov97_022354C4
ov97_022354C4: ; 0x022354C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02235500
	bl ov97_02234ECC
	mov r0, #1
	bl sub_02002B20
	ldr r0, _02235520 ; =0x0223EAB8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r1, #0x34
	mov r2, #1
	add r0, #0x10
	str r2, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x18
	bl ov97_02233DD0
	mov r0, #0
	str r0, [r5, #4]
	b _0223551A
_02235500:
	ldr r0, _02235524 ; =0x00000474
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223551A
	mov r0, #0
	bl sub_02002B20
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223551A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02235520: .word 0x0223EAB8
_02235524: .word 0x00000474
	thumb_func_end ov97_022354C4

	thumb_func_start ov97_02235528
ov97_02235528: ; 0x02235528
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _02235564
	bl ov97_02234ECC
	mov r0, #1
	bl sub_02002B20
	ldr r0, _02235588 ; =0x0223EAB8
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	sub r1, #0x34
	mov r2, #1
	add r0, #0x10
	str r2, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x18
	bl ov97_02233DD0
	mov r0, #0
	str r0, [r5, #4]
	b _02235584
_02235564:
	ldr r0, _0223558C ; =0x00000474
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02235584
	add r0, r5, #0
	bl ov97_02235310
	mov r0, #0
	bl sub_02002B20
	mov r0, #1
	pop {r3, r4, r5, pc}
_02235584:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02235588: .word 0x0223EAB8
_0223558C: .word 0x00000474
	thumb_func_end ov97_02235528

	thumb_func_start ov97_02235590
ov97_02235590: ; 0x02235590
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	ldr r2, [r5, #8]
	mvn r1, r1
	cmp r2, r1
	beq _022355D2
	bl ov97_02234ECC
	mov r0, #1
	bl sub_02002B20
	mov r1, #0x46
	ldr r0, [r5, #8]
	lsl r1, r1, #4
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x10
	sub r1, #0x34
	str r4, [r5, r0]
	add r0, r5, #0
	add r1, r5, r1
	mov r2, #0x18
	bl ov97_02233DD0
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #8]
	ldr r0, _02235614 ; =0x000005DC
	bl sub_02005748
	b _02235610
_022355D2:
	cmp r4, #0
	beq _022355F0
	ldr r0, _02235618 ; =0x00000474
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02235610
	mov r0, #0
	bl sub_02002B20
	mov r0, #1
	pop {r3, r4, r5, pc}
_022355F0:
	ldr r0, _0223561C ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _02235600
	ldr r0, _02235620 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235610
_02235600:
	mov r0, #0
	bl sub_02002B20
	ldr r0, _02235614 ; =0x000005DC
	bl sub_02005748
	mov r0, #1
	pop {r3, r4, r5, pc}
_02235610:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02235614: .word 0x000005DC
_02235618: .word 0x00000474
_0223561C: .word 0x021BF6BC
_02235620: .word 0x021BF67C
	thumb_func_end ov97_02235590

	thumb_func_start ov97_02235624
ov97_02235624: ; 0x02235624
	push {r3, r4, r5, lr}
	mov r2, #0xe
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x4e
	lsl r2, r2, #0xe
	bl sub_02017FC8
	ldr r1, _022356CC ; =0x00012610
	add r0, r5, #0
	mov r2, #0x4e
	bl sub_0200681C
	ldr r2, _022356CC ; =0x00012610
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x4e
	bl sub_02018340
	str r0, [r4, #0x20]
	mov r0, #0x4e
	bl sub_02015920
	ldr r1, _022356D0 ; =0x0000E88C
	str r0, [r4, r1]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	add r0, r5, #0
	bl sub_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #0x10]
	bl sub_02025E38
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x10]
	bl sub_02025E44
	str r0, [r4, #0x18]
	bl sub_02027B50
	str r0, [r4, #0x1c]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x4e
	bl sub_02023790
	ldr r1, _022356D4 ; =0x00012608
	str r0, [r4, r1]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x4e
	bl sub_02023790
	ldr r1, _022356D8 ; =0x0001260C
	mov r2, #1
	str r0, [r4, r1]
	ldr r1, _022356DC ; =0x00000496
	mov r0, #9
	bl sub_02004550
	bl sub_020C3808
	cmp r0, #0
	bne _022356BA
	bl sub_020C3790
_022356BA:
	bl ov97_02238440
	ldr r0, _022356E0 ; =0x0000E89C
	add r1, r4, r0
	ldr r0, _022356E4 ; =0x0223F434
	str r1, [r0, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_022356CC: .word 0x00012610
_022356D0: .word 0x0000E88C
_022356D4: .word 0x00012608
_022356D8: .word 0x0001260C
_022356DC: .word 0x00000496
_022356E0: .word 0x0000E89C
_022356E4: .word 0x0223F434
	thumb_func_end ov97_02235624

	thumb_func_start ov97_022356E8
ov97_022356E8: ; 0x022356E8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_020D0A04
	bl sub_020D09B8
	cmp r0, #1
	beq _02235706
	ldr r0, _02235A0C ; =0x02101D24
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223571C
_02235706:
	ldr r0, _02235A10 ; =0x0000E890
	ldr r0, [r4, r0]
	sub r0, r0, #3
	cmp r0, #1
	bhi _02235716
	ldr r0, [r4, #0x10]
	bl sub_02024850
_02235716:
	mov r0, #0x4e
	bl sub_0209A8E0
_0223571C:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r5, #0]
	cmp r0, #0x18
	bhi _02235818
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235734: ; jump table
	.short _02235766 - _02235734 - 2 ; case 0
	.short _022357AE - _02235734 - 2 ; case 1
	.short _022357F4 - _02235734 - 2 ; case 2
	.short _02235808 - _02235734 - 2 ; case 3
	.short _02235842 - _02235734 - 2 ; case 4
	.short _0223585A - _02235734 - 2 ; case 5
	.short _022358B0 - _02235734 - 2 ; case 6
	.short _022358C2 - _02235734 - 2 ; case 7
	.short _022358E0 - _02235734 - 2 ; case 8
	.short _022358F2 - _02235734 - 2 ; case 9
	.short _02235950 - _02235734 - 2 ; case 10
	.short _02235968 - _02235734 - 2 ; case 11
	.short _0223597C - _02235734 - 2 ; case 12
	.short _022359BC - _02235734 - 2 ; case 13
	.short _02235AEA - _02235734 - 2 ; case 14
	.short _02235B04 - _02235734 - 2 ; case 15
	.short _02235B20 - _02235734 - 2 ; case 16
	.short _02235B3A - _02235734 - 2 ; case 17
	.short _02235B70 - _02235734 - 2 ; case 18
	.short _02235B96 - _02235734 - 2 ; case 19
	.short _02235C00 - _02235734 - 2 ; case 20
	.short _02235C0C - _02235734 - 2 ; case 21
	.short _02235C4E - _02235734 - 2 ; case 22
	.short _02235C72 - _02235734 - 2 ; case 23
	.short _02235C80 - _02235734 - 2 ; case 24
_02235766:
	bl ov97_02235DA4
	mov r0, #0x4b
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov97_02235D2C
	ldr r1, _02235A14 ; =0x000004A8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _022357A2
	bl ov97_022360D8
	ldr r1, _02235A18 ; =0x000004AC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _0223579E
	bl ov97_02236340
	ldr r1, _02235A1C ; =0x0000E880
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	ldrb r2, [r0]
	add r0, r1, #4
	str r2, [r4, r0]
	b _022357A2
_0223579E:
	mov r0, #1
	str r0, [r4, #4]
_022357A2:
	add r0, r4, #0
	bl ov97_02233B44
	mov r0, #1
	str r0, [r5, #0]
	b _02235C8A
_022357AE:
	add r0, r4, #0
	bl ov97_02234DFC
	bl ov97_02233F74
	add r0, r4, #0
	bl ov97_02233FA4
	add r0, r4, #0
	bl ov97_022340B0
	add r0, r4, #0
	bl ov97_0223468C
	ldr r0, _02235A20 ; =ov97_022353CC
	add r1, r4, #0
	bl sub_02017798
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _022357EE
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xb
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022357EE:
	mov r0, #2
	str r0, [r5, #0]
	b _02235C8A
_022357F4:
	add r0, r4, #0
	bl ov97_02235344
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235808:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _0223581A
	cmp r0, #2
	beq _0223582C
_02235818:
	b _02235C8A
_0223581A:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r0, #0x22
	str r0, [r4, #8]
	mov r0, #4
	str r0, [r5, #0]
	b _02235C8A
_0223582C:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_02235842:
	add r0, r4, #0
	mov r1, #1
	bl ov97_02235590
	cmp r0, #0
	beq _0223586A
	add r0, r4, #0
	bl ov97_02235310
	mov r0, #5
	str r0, [r5, #0]
	b _02235C8A
_0223585A:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _0223586C
	cmp r0, #2
	beq _0223589A
_0223586A:
	b _02235C8A
_0223586C:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	bl ov97_02235408
	str r0, [r4, #4]
	cmp r0, #0
	beq _02235892
	sub r0, r0, #3
	cmp r0, #1
	bhi _0223588C
	mov r0, #8
	str r0, [r5, #0]
	b _02235C8A
_0223588C:
	mov r0, #0xb
	str r0, [r5, #0]
	b _02235C8A
_02235892:
	mov r0, #6
	str r0, [r4, #8]
	str r0, [r5, #0]
	b _02235C8A
_0223589A:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_022358B0:
	add r0, r4, #0
	mov r1, #1
	bl ov97_02235590
	cmp r0, #0
	beq _02235902
	mov r0, #7
	str r0, [r5, #0]
	b _02235C8A
_022358C2:
	ldr r0, _02235A28 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _022358D2
	ldr r0, _02235A2C ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235902
_022358D2:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xc
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022358E0:
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov97_02235528
	cmp r0, #0
	beq _02235902
	mov r0, #9
	str r0, [r5, #0]
	b _02235C8A
_022358F2:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _02235904
	cmp r0, #2
	beq _0223593A
_02235902:
	b _02235C8A
_02235904:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r1, #0x47
	lsl r1, r1, #4
	mov r2, #0
	add r0, r1, #0
	str r2, [r4, r1]
	sub r1, #0x44
	mov r3, #0x28
	sub r0, #0x10
	str r3, [r4, r0]
	add r0, r4, #0
	add r1, r4, r1
	bl ov97_02233DD0
	ldr r1, _02235A30 ; =0x00000498
	add r0, r4, r1
	sub r1, #0xc6
	bl sub_0200E7FC
	ldr r1, _02235A34 ; =0x0000E898
	str r0, [r4, r1]
	mov r0, #0xa
	str r0, [r5, #0]
	b _02235C8A
_0223593A:
	ldr r0, _02235A24 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	b _02235C8A
_02235950:
	add r0, r4, #0
	bl ov97_02233CE4
	ldr r0, _02235A34 ; =0x0000E898
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	mov r0, #7
	str r0, [r4, #4]
	mov r0, #0xb
	str r0, [r5, #0]
	b _02235C8A
_02235968:
	ldr r1, [r4, #4]
	add r0, r4, #0
	bl ov97_022354C4
	cmp r0, #0
	bne _02235976
	b _02235C8A
_02235976:
	mov r0, #0x16
	str r0, [r5, #0]
	b _02235C8A
_0223597C:
	ldr r0, _02235A30 ; =0x00000498
	add r0, r4, r0
	bl ov97_02235158
	add r0, r4, #0
	bl ov97_02234E7C
	add r0, r4, #0
	bl ov97_02234508
	add r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235A20 ; =ov97_022353CC
	add r1, r4, #0
	bl sub_02017798
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #0
	bl ov97_02234B0C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xd
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_022359BC:
	mov r0, #0x31
	lsl r0, r0, #4
	add r0, r4, r0
	bl sub_02022664
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _02235A96
	cmp r6, #0x1e
	bge _02235A8C
	add r0, r4, #0
	add r1, r6, #0
	bl ov97_02234854
	cmp r0, #1
	bne _02235A46
	ldr r2, _02235A1C ; =0x0000E880
	add r0, r4, #0
	ldr r1, [r4, r2]
	add r2, r2, #4
	ldr r3, [r4, r2]
	mov r2, #0x96
	lsl r2, r2, #4
	add r1, r1, #4
	mul r2, r3
	add r2, r1, r2
	mov r1, #0x50
	mul r1, r6
	add r1, r2, r1
	bl ov97_02234B0C
	mov r0, #0x41
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _02235A96
	ldr r0, _02235A38 ; =0x0000E888
	b _02235A3C
	; .align 2, 0
_02235A0C: .word 0x02101D24
_02235A10: .word 0x0000E890
_02235A14: .word 0x000004A8
_02235A18: .word 0x000004AC
_02235A1C: .word 0x0000E880
_02235A20: .word ov97_022353CC
_02235A24: .word 0x0000E88C
_02235A28: .word 0x021BF6BC
_02235A2C: .word 0x021BF67C
_02235A30: .word 0x00000498
_02235A34: .word 0x0000E898
_02235A38: .word 0x0000E888
_02235A3C:
	mov r1, #0x2d
	str r1, [r4, r0]
	mov r0, #0xf
	str r0, [r5, #0]
	b _02235C8A
_02235A46:
	cmp r0, #2
	bne _02235A54
	add r0, r4, #0
	mov r1, #0
	bl ov97_02234B0C
	b _02235C8A
_02235A54:
	cmp r0, #4
	bne _02235A62
	mov r0, #8
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r5, #0]
	b _02235C8A
_02235A62:
	cmp r0, #5
	bne _02235A70
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r5, #0]
	b _02235C8A
_02235A70:
	cmp r0, #6
	bne _02235A7E
	mov r0, #0x26
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r5, #0]
	b _02235C8A
_02235A7E:
	cmp r0, #7
	bne _02235A96
	mov r0, #0x26
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r5, #0]
	b _02235C8A
_02235A8C:
	beq _02235AD6
	cmp r6, #0x1f
	beq _02235A98
	cmp r6, #0x20
	beq _02235AB6
_02235A96:
	b _02235C8A
_02235A98:
	ldr r0, _02235C98 ; =0x0000E884
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02235AA4
	mov r1, #0xd
	b _02235AA6
_02235AA4:
	sub r1, r1, #1
_02235AA6:
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	b _02235C8A
_02235AB6:
	ldr r0, _02235C98 ; =0x0000E884
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0xe
	bne _02235AC8
	mov r1, #0
	str r1, [r4, r0]
_02235AC8:
	add r0, r4, #0
	bl ov97_022343A8
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	b _02235C8A
_02235AD6:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	b _02235C8A
_02235AEA:
	add r0, r4, #0
	mov r1, #0
	bl ov97_02235590
	cmp r0, #0
	beq _02235B4A
	ldr r0, _02235CA0 ; =0x00000498
	add r0, r4, r0
	bl ov97_02235158
	mov r0, #0xd
	str r0, [r5, #0]
	b _02235C8A
_02235B04:
	ldr r0, _02235CA4 ; =0x0000E888
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235B4A
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x10
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235B20:
	add r0, r4, #0
	bl ov97_02234F88
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x11
	add r3, r5, #0
	bl ov97_02234CC4
	add r0, r4, #0
	bl ov97_02235310
	b _02235C8A
_02235B3A:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _02235B4C
	cmp r0, #2
	beq _02235B5A
_02235B4A:
	b _02235C8A
_02235B4C:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	mov r0, #0x12
	str r0, [r5, #0]
	b _02235C8A
_02235B5A:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235B70:
	mov r1, #0x46
	mov r0, #0xb
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x34
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	bl ov97_02233DD0
	add r0, r4, #0
	bl ov97_02235310
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	mov r0, #0x13
	str r0, [r5, #0]
	b _02235C8A
_02235B96:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_020159FC
	cmp r0, #1
	beq _02235BA8
	cmp r0, #2
	beq _02235BEA
	b _02235C8A
_02235BA8:
	ldr r0, [r4, #0]
	mov r2, #0
	lsl r1, r0, #2
	ldr r0, _02235CAC ; =0x0223EA68
	ldr r0, [r0, r1]
	mov r1, #0x46
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x34
	add r0, r4, #0
	add r1, r4, r1
	bl ov97_02233DD0
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	ldr r0, _02235CB0 ; =0x0000E890
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _02235CA0 ; =0x00000498
	add r0, r4, r1
	sub r1, #0xc6
	bl sub_0200E7FC
	ldr r1, _02235CB4 ; =0x0000E898
	str r0, [r4, r1]
	mov r0, #0x15
	str r0, [r5, #0]
	mov r0, #4
	bl sub_02017DE0
	b _02235C8A
_02235BEA:
	ldr r0, _02235CA8 ; =0x0000E88C
	ldr r0, [r4, r0]
	bl sub_02015A54
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x14
	add r3, r5, #0
	bl ov97_02234CC4
	b _02235C8A
_02235C00:
	add r0, r4, #0
	bl ov97_02235178
	mov r0, #0xc
	str r0, [r5, #0]
	b _02235C8A
_02235C0C:
	add r0, r4, #0
	bl ov97_02233B8C
	add r6, r0, #0
	cmp r6, #0xa
	beq _02235C8A
	ldr r0, _02235CB4 ; =0x0000E898
	ldr r0, [r4, r0]
	bl sub_0200EBA0
	ldr r0, _02235CB8 ; =0x0000061B
	bl sub_02005748
	cmp r6, #0xb
	bne _02235C2E
	mov r1, #0x1d
	b _02235C30
_02235C2E:
	mov r1, #0x24
_02235C30:
	mov r0, #0x46
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _02235CBC ; =0x0000042C
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	bl ov97_02233DD0
	mov r0, #0x16
	str r0, [r5, #0]
	mov r0, #4
	bl sub_02017DF0
	b _02235C8A
_02235C4E:
	ldr r0, _02235CC0 ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	bne _02235C5E
	ldr r0, _02235CC4 ; =0x021BF67C
	ldr r0, [r0, #0x48]
	cmp r0, #0
	beq _02235C8A
_02235C5E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x18
	add r3, r5, #0
	bl ov97_02234CF4
	ldr r0, _02235C9C ; =0x000005DC
	bl sub_02005748
	b _02235C8A
_02235C72:
	bl sub_0200F2AC
	cmp r0, #0
	beq _02235C8A
	ldr r0, [r4, #0x24]
	str r0, [r5, #0]
	b _02235C8A
_02235C80:
	add r0, r4, #0
	bl ov97_022351F0
	mov r0, #1
	pop {r4, r5, r6, pc}
_02235C8A:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _02235C94
	bl sub_020219F8
_02235C94:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02235C98: .word 0x0000E884
_02235C9C: .word 0x000005DC
_02235CA0: .word 0x00000498
_02235CA4: .word 0x0000E888
_02235CA8: .word 0x0000E88C
_02235CAC: .word 0x0223EA68
_02235CB0: .word 0x0000E890
_02235CB4: .word 0x0000E898
_02235CB8: .word 0x0000061B
_02235CBC: .word 0x0000042C
_02235CC0: .word 0x021BF6BC
_02235CC4: .word 0x021BF67C
	thumb_func_end ov97_022356E8

	thumb_func_start ov97_02235CC8
ov97_02235CC8: ; 0x02235CC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _02235D08 ; =0x00012608
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _02235D0C ; =0x0001260C
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, [r4, #0x20]
	bl sub_020181C4
	ldr r0, _02235D10 ; =0x0000004D
	ldr r1, _02235D14 ; =0x021D742C
	bl sub_02000EC4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x4e
	bl sub_0201807C
	mov r0, #0
	bl ov97_02238400
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_02235D08: .word 0x00012608
_02235D0C: .word 0x0001260C
_02235D10: .word 0x0000004D
_02235D14: .word 0x021D742C
	thumb_func_end ov97_02235CC8

	thumb_func_start ov97_02235D18
ov97_02235D18: ; 0x02235D18
	push {r3, lr}
	mov r0, #1
	bl sub_020D130C
	cmp r0, #0
	bne _02235D28
	mov r0, #1
	pop {r3, pc}
_02235D28:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov97_02235D18

	thumb_func_start ov97_02235D2C
ov97_02235D2C: ; 0x02235D2C
	push {r3, lr}
	ldr r1, _02235D88 ; =0x0223F438
	str r0, [r1, #8]
	ldr r0, _02235D8C ; =0x0223EBFC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02235D3E
	mov r0, #0xc
	pop {r3, pc}
_02235D3E:
	ldr r0, _02235D90 ; =0x0223D92C
	mov r1, #0x1e
	bl ov97_02235DC8
	cmp r0, #0
	bne _02235D86
	ldr r0, _02235D8C ; =0x0223EBFC
	ldr r0, [r0, #0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02235D6E
	mov r0, #0x89
	ldr r1, _02235D94 ; =0x0223F4B8
	lsl r0, r0, #4
	str r0, [r1, #0x20]
	mov r0, #0xeb
	lsl r0, r0, #6
	str r0, [r1, #0x24]
	ldr r2, _02235D98 ; =0x00001220
	ldr r0, _02235D88 ; =0x0223F438
	str r2, [r0, #0x68]
	mov r0, #9
	str r0, [r1, #0x30]
	b _02235D78
_02235D6E:
	ldr r0, _02235D9C ; =0x08000100
	ldr r1, _02235DA0 ; =0x0223F450
	mov r2, #0xfc
	bl sub_020D0CDC
_02235D78:
	bl ov97_02235D18
	cmp r0, #0
	bne _02235D84
	mov r0, #3
	pop {r3, pc}
_02235D84:
	mov r0, #0
_02235D86:
	pop {r3, pc}
	; .align 2, 0
_02235D88: .word 0x0223F438
_02235D8C: .word 0x0223EBFC
_02235D90: .word 0x0223D92C
_02235D94: .word 0x0223F4B8
_02235D98: .word 0x00001220
_02235D9C: .word 0x08000100
_02235DA0: .word 0x0223F450
	thumb_func_end ov97_02235D2C

	thumb_func_start ov97_02235DA4
ov97_02235DA4: ; 0x02235DA4
	ldr r0, _02235DAC ; =0x0223EBFC
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_02235DAC: .word 0x0223EBFC
	thumb_func_end ov97_02235DA4

	thumb_func_start ov97_02235DB0
ov97_02235DB0: ; 0x02235DB0
	ldr r0, _02235DB8 ; =0x0223EBFC
	ldr r0, [r0, #0]
	ldrb r0, [r0, #5]
	bx lr
	; .align 2, 0
_02235DB8: .word 0x0223EBFC
	thumb_func_end ov97_02235DB0

	thumb_func_start ov97_02235DBC
ov97_02235DBC: ; 0x02235DBC
	ldr r0, _02235DC4 ; =0x0223EBFC
	ldr r0, [r0, #0]
	ldrh r0, [r0, #6]
	bx lr
	; .align 2, 0
_02235DC4: .word 0x0223EBFC
	thumb_func_end ov97_02235DBC

	thumb_func_start ov97_02235DC8
ov97_02235DC8: ; 0x02235DC8
	push {r3, r4, r5, lr}
	sub sp, #0xc0
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _02235E74 ; =0x0223EBFC
	mov r1, #0
	str r1, [r0, #0]
	bl sub_020D08C0
	cmp r0, #0
	bne _02235DE4
	add sp, #0xc0
	mov r0, #1
	pop {r3, r4, r5, pc}
_02235DE4:
	bl sub_020D0928
	mov r2, #0
	cmp r4, #0
	ble _02235E08
	add r3, r5, #0
_02235DF0:
	ldr r1, [r3, #0]
	cmp r0, r1
	bne _02235E00
	lsl r0, r2, #3
	add r1, r5, r0
	ldr r0, _02235E74 ; =0x0223EBFC
	str r1, [r0, #0]
	b _02235E08
_02235E00:
	add r2, r2, #1
	add r3, #8
	cmp r2, r4
	blt _02235DF0
_02235E08:
	ldr r0, _02235E74 ; =0x0223EBFC
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02235E16
	add sp, #0xc0
	mov r0, #2
	pop {r3, r4, r5, pc}
_02235E16:
	mov r0, #1
	bl sub_020D0F48
	add r4, sp, #0
	mov r0, #2
	lsl r0, r0, #0x1a
	add r1, r4, #0
	mov r2, #0xc0
	bl sub_020D0CDC
	ldr r3, _02235E78 ; =0x0223EC04
	mov r2, #0
_02235E2E:
	add r0, r4, r2
	ldrb r1, [r3]
	ldrb r0, [r0, #4]
	cmp r1, r0
	beq _02235E3E
	add sp, #0xc0
	mov r0, #4
	pop {r3, r4, r5, pc}
_02235E3E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #0x9c
	blo _02235E2E
	mov r2, #0
	mov r1, #0xa0
_02235E4A:
	ldrb r0, [r4, r1]
	add r1, r1, #1
	add r0, r2, r0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	cmp r1, #0xbc
	ble _02235E4A
	add r2, #0x19
	neg r0, r2
	lsl r0, r0, #0x18
	add r4, #0xbd
	lsr r1, r0, #0x18
	ldrb r0, [r4]
	cmp r0, r1
	beq _02235E6E
	add sp, #0xc0
	mov r0, #4
	pop {r3, r4, r5, pc}
_02235E6E:
	mov r0, #0
	add sp, #0xc0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02235E74: .word 0x0223EBFC
_02235E78: .word 0x0223EC04
	thumb_func_end ov97_02235DC8

	thumb_func_start ov97_02235E7C
ov97_02235E7C: ; 0x02235E7C
	push {r3, r4}
	mov r2, #0
	lsr r4, r1, #2
	add r3, r2, #0
	cmp r4, #0
	ble _02235E98
_02235E88:
	ldr r1, [r0, #0]
	add r0, r0, #4
	add r2, r2, r1
	add r1, r3, #1
	lsl r1, r1, #0x10
	lsr r3, r1, #0x10
	cmp r3, r4
	blt _02235E88
_02235E98:
	lsr r0, r2, #0x10
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	lsl r0, r2, #0x10
	lsr r0, r0, #0x10
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_02235E7C

	thumb_func_start ov97_02235EAC
ov97_02235EAC: ; 0x02235EAC
	push {r3, lr}
	lsl r0, r0, #0x10
	mov r3, #1
	add r2, r1, #0
	lsr r0, r0, #0x10
	mov r1, #0
	lsl r3, r3, #0xc
	bl sub_020D1A6C
	pop {r3, pc}
	thumb_func_end ov97_02235EAC

	thumb_func_start ov97_02235EC0
ov97_02235EC0: ; 0x02235EC0
	cmp r0, #0
	bne _02235ECE
	ldr r0, _02235EF4 ; =0x0223F4B8
	ldr r0, [r0, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02235ECE:
	cmp r0, #4
	bne _02235EE2
	ldr r0, _02235EF4 ; =0x0223F4B8
	ldr r1, [r0, #0x24]
	mov r0, #0xba
	lsl r0, r0, #6
	sub r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
_02235EE2:
	cmp r0, #0xd
	bne _02235EEC
	mov r0, #0x7d
	lsl r0, r0, #4
	bx lr
_02235EEC:
	mov r0, #0x3e
	lsl r0, r0, #6
	bx lr
	nop
_02235EF4: .word 0x0223F4B8
	thumb_func_end ov97_02235EC0

	thumb_func_start ov97_02235EF8
ov97_02235EF8: ; 0x02235EF8
	cmp r0, #0
	bne _02235F08
	ldr r0, _02235F48 ; =0x0223F438
	ldr r1, [r0, #8]
	mov r0, #1
	lsl r0, r0, #0xc
	add r0, r1, r0
	bx lr
_02235F08:
	cmp r0, #1
	blt _02235F26
	cmp r0, #4
	bgt _02235F26
	ldr r1, _02235F48 ; =0x0223F438
	ldr r2, [r1, #8]
	mov r1, #2
	lsl r1, r1, #0xc
	add r2, r2, r1
	sub r1, r0, #1
	mov r0, #0x3e
	lsl r0, r0, #6
	mul r0, r1
	add r0, r2, r0
	bx lr
_02235F26:
	cmp r0, #5
	blt _02235F44
	cmp r0, #0xe
	bge _02235F44
	ldr r1, _02235F48 ; =0x0223F438
	ldr r2, [r1, #8]
	mov r1, #6
	lsl r1, r1, #0xc
	add r2, r2, r1
	sub r1, r0, #5
	mov r0, #0x3e
	lsl r0, r0, #6
	mul r0, r1
	add r0, r2, r0
	bx lr
_02235F44:
	mov r0, #0
	bx lr
	; .align 2, 0
_02235F48: .word 0x0223F438
	thumb_func_end ov97_02235EF8

	thumb_func_start ov97_02235F4C
ov97_02235F4C: ; 0x02235F4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	mov r6, #0
	add r5, r1, #0
	str r6, [sp, #4]
	add r1, r2, #0
	str r6, [r1, #0]
	ldr r1, _02235FE0 ; =0x0223F438
	add r7, r0, #0
	str r6, [r1, #4]
	mov r1, #0xe
	str r2, [sp]
	add r4, r6, #0
	mul r7, r1
_02235F68:
	add r0, r4, #0
	mov r1, #0xe
	bl sub_020E1F6C
	add r0, r1, r7
	add r1, r5, #0
	bl ov97_02235EAC
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_020C2C54
	ldr r0, _02235FE4 ; =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _02235FE8 ; =0x08012025
	cmp r1, r0
	bne _02235FBA
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _02235FEC ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EC0
	add r1, r0, #0
	add r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _02235FF0 ; =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02235FBA
	ldr r0, _02235FF4 ; =0x00000FFC
	ldr r1, [r5, r0]
	ldr r0, [sp]
	str r1, [r0, #0]
	ldr r0, _02235FEC ; =0x00000FF4
	ldrh r1, [r5, r0]
	mov r0, #1
	lsl r0, r1
	orr r6, r0
_02235FBA:
	add r4, r4, #1
	cmp r4, #0xe
	blt _02235F68
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02235FD8
	ldr r0, _02235FF8 ; =0x00003FFF
	cmp r6, r0
	bne _02235FD2
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02235FD2:
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_02235FD8:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235FE0: .word 0x0223F438
_02235FE4: .word 0x00000FF8
_02235FE8: .word 0x08012025
_02235FEC: .word 0x00000FF4
_02235FF0: .word 0x00000FF6
_02235FF4: .word 0x00000FFC
_02235FF8: .word 0x00003FFF
	thumb_func_end ov97_02235F4C

	thumb_func_start ov97_02235FFC
ov97_02235FFC: ; 0x02235FFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	mov r0, #0
	add r1, r7, #0
	add r2, sp, #4
	bl ov97_02235F4C
	add r6, r0, #0
	mov r0, #1
	add r1, r7, #0
	add r2, sp, #0
	bl ov97_02235F4C
	cmp r6, #1
	bne _02236074
	cmp r0, #1
	bne _02236074
	mov r1, #0
	ldr r0, [sp, #4]
	mvn r1, r1
	cmp r0, r1
	bne _02236034
	ldr r3, [sp]
	cmp r3, #0
	beq _02236042
_02236034:
	cmp r0, #0
	bne _0223605A
	mov r1, #0
	ldr r3, [sp]
	mvn r1, r1
	cmp r3, r1
	bne _0223605A
_02236042:
	add r2, r0, #1
	add r1, r3, #1
	cmp r2, r1
	bhs _02236052
	str r3, [r4, #0]
	mov r0, #1
	str r0, [r5, #0]
	b _0223606E
_02236052:
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #0]
	b _0223606E
_0223605A:
	ldr r1, [sp]
	cmp r0, r1
	bhs _02236068
	str r1, [r4, #0]
	mov r0, #1
	str r0, [r5, #0]
	b _0223606E
_02236068:
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r5, #0]
_0223606E:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02236074:
	cmp r6, #1
	bne _02236098
	cmp r0, #1
	beq _02236098
	ldr r1, [sp, #4]
	cmp r0, #0xff
	str r1, [r4, #0]
	bne _0223608E
	mov r0, #0
	str r0, [r5, #0]
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_0223608E:
	mov r0, #0
	str r0, [r5, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02236098:
	cmp r0, #1
	bne _022360BA
	cmp r6, #1
	beq _022360BA
	ldr r0, [sp]
	cmp r6, #0xff
	str r0, [r4, #0]
	bne _022360B2
	mov r0, #1
	str r0, [r5, #0]
	add sp, #8
	mov r0, #0xff
	pop {r3, r4, r5, r6, r7, pc}
_022360B2:
	mov r0, #1
	add sp, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022360BA:
	cmp r6, #0
	bne _022360CC
	cmp r0, #0
	bne _022360CC
	mov r0, #0
	str r0, [r4, #0]
	add sp, #8
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, r7, pc}
_022360CC:
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r5, #0]
	mov r0, #2
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02235FFC

	thumb_func_start ov97_022360D8
ov97_022360D8: ; 0x022360D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0223618C ; =0x0223F438
	ldr r1, _02236190 ; =0x0223F438
	ldr r0, [r0, #8]
	ldr r2, _02236194 ; =0x0223F448
	bl ov97_02235FFC
	cmp r0, #1
	beq _02236102
	cmp r0, #0
	beq _022360FA
	cmp r0, #2
	beq _022360FE
	cmp r0, #0xff
	bne _02236102
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_022360FA:
	mov r0, #7
	pop {r3, r4, r5, r6, r7, pc}
_022360FE:
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_02236102:
	ldr r7, _0223618C ; =0x0223F438
	ldr r0, [r7, #0]
	cmp r0, #1
	bhi _02236186
	mov r6, #0
	ldr r5, [r7, #8]
	add r4, r6, #0
_02236110:
	ldr r1, [r7, #0]
	mov r0, #0xe
	mul r0, r1
	add r0, r4, r0
	add r1, r5, #0
	bl ov97_02235EAC
	ldr r0, _02236198 ; =0x00000FF8
	ldr r1, [r5, r0]
	ldr r0, _0223619C ; =0x08012025
	cmp r1, r0
	bne _02236172
	ldr r0, _022361A0 ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EC0
	add r1, r0, #0
	add r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _022361A4 ; =0x00000FF6
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _02236172
	ldr r0, _022361A8 ; =0x00000FFC
	mov r1, #1
	ldr r0, [r5, r0]
	str r0, [r7, #0x10]
	ldr r0, _022361A0 ; =0x00000FF4
	ldrh r0, [r5, r0]
	lsl r1, r0
	orr r6, r1
	bl ov97_02235EC0
	str r0, [sp]
	ldr r0, _022361A0 ; =0x00000FF4
	ldrh r0, [r5, r0]
	bl ov97_02235EF8
	add r1, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_020C4B68
	ldr r0, _022361A0 ; =0x00000FF4
	ldrh r0, [r5, r0]
	cmp r0, #0
	bne _02236172
	str r4, [r7, #0xc]
_02236172:
	add r4, r4, #1
	cmp r4, #0xe
	blt _02236110
	ldr r0, _022361AC ; =0x00003FFF
	cmp r6, r0
	bne _02236182
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02236182:
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_02236186:
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223618C: .word 0x0223F438
_02236190: .word 0x0223F438
_02236194: .word 0x0223F448
_02236198: .word 0x00000FF8
_0223619C: .word 0x08012025
_022361A0: .word 0x00000FF4
_022361A4: .word 0x00000FF6
_022361A8: .word 0x00000FFC
_022361AC: .word 0x00003FFF
	thumb_func_end ov97_022360D8

	thumb_func_start ov97_022361B0
ov97_022361B0: ; 0x022361B0
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0223622C ; =0x0223F438
	mov r2, #1
	ldr r5, [r0, #8]
	str r2, [r0, #0x14]
	mov r0, #0
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_020C4B4C
	add r0, r6, #0
	bl ov97_02235EC0
	add r4, r0, #0
	add r0, r6, #0
	bl ov97_02235EF8
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020C4B68
	ldr r0, _0223622C ; =0x0223F438
	ldr r1, [r0, #0x10]
	ldr r0, _02236230 ; =0x00000FFC
	str r1, [r5, r0]
	add r1, r0, #0
	sub r1, #8
	strh r6, [r5, r1]
	ldr r1, _02236234 ; =0x08012025
	sub r0, r0, #4
	str r1, [r5, r0]
	add r0, r6, #0
	bl ov97_02235EC0
	add r1, r0, #0
	add r0, r5, #0
	bl ov97_02235E7C
	ldr r1, _02236238 ; =0x00000FF6
	strh r0, [r5, r1]
	ldr r0, _0223622C ; =0x0223F438
	mov r1, #0xe
	ldr r0, [r0, #0xc]
	add r0, r6, r0
	add r0, r0, #1
	bl sub_020E1F6C
	ldr r0, _0223623C ; =0x0223EBFC
	ldr r3, _02236240 ; =ov97_02236244
	ldr r2, [r0, #4]
	mov r0, #0xe
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r5, #0
	mov r2, #4
	bl sub_020D1AD0
	pop {r4, r5, r6, pc}
	nop
_0223622C: .word 0x0223F438
_02236230: .word 0x00000FFC
_02236234: .word 0x08012025
_02236238: .word 0x00000FF6
_0223623C: .word 0x0223EBFC
_02236240: .word ov97_02236244
	thumb_func_end ov97_022361B0

	thumb_func_start ov97_02236244
ov97_02236244: ; 0x02236244
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _02236270
	ldr r1, _0223627C ; =0x0223F438
	ldr r0, [r1, #4]
	add r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0xe
	blt _0223625E
	mov r0, #0
	str r0, [r1, #4]
	str r0, [r1, #0x14]
	bx lr
_0223625E:
	cmp r0, #0xd
	bne _0223626A
	mov r0, #2
	str r0, [r1, #0x14]
	mov r0, #0
	bx lr
_0223626A:
	mov r0, #3
	str r0, [r1, #0x14]
	b _02236276
_02236270:
	ldr r0, _0223627C ; =0x0223F438
	mov r1, #4
	str r1, [r0, #0x14]
_02236276:
	mov r0, #0
	bx lr
	nop
_0223627C: .word 0x0223F438
	thumb_func_end ov97_02236244

	thumb_func_start ov97_02236280
ov97_02236280: ; 0x02236280
	push {r3, lr}
	ldr r1, _022362C0 ; =0x0223F438
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _022362A6
	ldr r1, [r1, #0]
	cmp r1, #1
	bne _02236296
	mov r2, #0
	ldr r1, _022362C4 ; =0x0223EBFC
	b _0223629A
_02236296:
	ldr r1, _022362C4 ; =0x0223EBFC
	mov r2, #1
_0223629A:
	str r2, [r1, #4]
	ldr r1, _022362C0 ; =0x0223F438
	ldr r2, [r1, #0x10]
	add r2, r2, #1
	str r2, [r1, #0x10]
	b _022362AA
_022362A6:
	mov r0, #0
	pop {r3, pc}
_022362AA:
	ldr r1, _022362C4 ; =0x0223EBFC
	ldr r1, [r1, #4]
	cmp r1, #0
	bge _022362B6
	mov r0, #0
	pop {r3, pc}
_022362B6:
	bl ov97_022361B0
	mov r0, #1
	pop {r3, pc}
	nop
_022362C0: .word 0x0223F438
_022362C4: .word 0x0223EBFC
	thumb_func_end ov97_02236280

	thumb_func_start ov97_022362C8
ov97_022362C8: ; 0x022362C8
	push {r3, lr}
	ldr r1, _02236304 ; =0x0223F438
	ldr r0, [r1, #0x14]
	cmp r0, #4
	bhi _02236300
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022362DE: ; jump table
	.short _02236300 - _022362DE - 2 ; case 0
	.short _022362F8 - _022362DE - 2 ; case 1
	.short _022362E8 - _022362DE - 2 ; case 2
	.short _022362F2 - _022362DE - 2 ; case 3
	.short _022362FC - _022362DE - 2 ; case 4
_022362E8:
	ldr r0, [r1, #4]
	bl ov97_022361B0
	mov r0, #0
	pop {r3, pc}
_022362F2:
	ldr r0, [r1, #4]
	bl ov97_022361B0
_022362F8:
	mov r0, #0xa
	pop {r3, pc}
_022362FC:
	mov r0, #8
	pop {r3, pc}
_02236300:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02236304: .word 0x0223F438
	thumb_func_end ov97_022362C8

	thumb_func_start ov97_02236308
ov97_02236308: ; 0x02236308
	ldr r0, _0223633C ; =0x0223F438
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _02236336
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223631C: ; jump table
	.short _02236336 - _0223631C - 2 ; case 0
	.short _0223632E - _0223631C - 2 ; case 1
	.short _02236326 - _0223631C - 2 ; case 2
	.short _0223632A - _0223631C - 2 ; case 3
	.short _02236332 - _0223631C - 2 ; case 4
_02236326:
	mov r0, #0xb
	bx lr
_0223632A:
	mov r0, #0xa
	bx lr
_0223632E:
	mov r0, #9
	bx lr
_02236332:
	mov r0, #8
	bx lr
_02236336:
	mov r0, #0
	bx lr
	nop
_0223633C: .word 0x0223F438
	thumb_func_end ov97_02236308

	thumb_func_start ov97_02236340
ov97_02236340: ; 0x02236340
	ldr r0, _0223634C ; =0x0223F438
	ldr r1, [r0, #8]
	mov r0, #6
	lsl r0, r0, #0xc
	add r0, r1, r0
	bx lr
	; .align 2, 0
_0223634C: .word 0x0223F438
	thumb_func_end ov97_02236340

	thumb_func_start ov97_02236350
ov97_02236350: ; 0x02236350
	ldr r3, _02236358 ; =ov97_02235EF8
	mov r0, #0
	bx r3
	nop
_02236358: .word ov97_02235EF8
	thumb_func_end ov97_02236350

	thumb_func_start ov97_0223635C
ov97_0223635C: ; 0x0223635C
	push {r3, lr}
	bl ov97_02236350
	ldrb r2, [r0, #0xb]
	ldrb r1, [r0, #0xa]
	lsl r3, r2, #8
	ldrb r2, [r0, #0xd]
	ldrb r0, [r0, #0xc]
	lsl r2, r2, #0x18
	lsl r0, r0, #0x10
	orr r0, r2
	orr r0, r3
	orr r0, r1
	pop {r3, pc}
	thumb_func_end ov97_0223635C

	thumb_func_start ov97_02236378
ov97_02236378: ; 0x02236378
	ldr r3, _0223637C ; =ov97_02236350
	bx r3
	; .align 2, 0
_0223637C: .word ov97_02236350
	thumb_func_end ov97_02236378

	thumb_func_start ov97_02236380
ov97_02236380: ; 0x02236380
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x18
	add r5, r2, #0
	mov r6, #0
	bl sub_020E2178
	cmp r1, #0x17
	bhi _022363D6
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022363A0: ; jump table
	.short _022363D0 - _022363A0 - 2 ; case 0
	.short _02236402 - _022363A0 - 2 ; case 1
	.short _02236432 - _022363A0 - 2 ; case 2
	.short _02236462 - _022363A0 - 2 ; case 3
	.short _02236492 - _022363A0 - 2 ; case 4
	.short _022364C2 - _022363A0 - 2 ; case 5
	.short _022364F2 - _022363A0 - 2 ; case 6
	.short _02236524 - _022363A0 - 2 ; case 7
	.short _02236554 - _022363A0 - 2 ; case 8
	.short _02236584 - _022363A0 - 2 ; case 9
	.short _022365B4 - _022363A0 - 2 ; case 10
	.short _022365E4 - _022363A0 - 2 ; case 11
	.short _02236614 - _022363A0 - 2 ; case 12
	.short _02236646 - _022363A0 - 2 ; case 13
	.short _02236676 - _022363A0 - 2 ; case 14
	.short _022366A6 - _022363A0 - 2 ; case 15
	.short _022366D6 - _022363A0 - 2 ; case 16
	.short _02236706 - _022363A0 - 2 ; case 17
	.short _02236736 - _022363A0 - 2 ; case 18
	.short _02236768 - _022363A0 - 2 ; case 19
	.short _02236798 - _022363A0 - 2 ; case 20
	.short _022367C8 - _022363A0 - 2 ; case 21
	.short _022367F8 - _022363A0 - 2 ; case 22
	.short _02236828 - _022363A0 - 2 ; case 23
_022363D0:
	add r4, #0x20
	cmp r5, #3
	bls _022363D8
_022363D6:
	b _02236856
_022363D8:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022363E4: ; jump table
	.short _022363EC - _022363E4 - 2 ; case 0
	.short _022363F0 - _022363E4 - 2 ; case 1
	.short _022363F6 - _022363E4 - 2 ; case 2
	.short _022363FC - _022363E4 - 2 ; case 3
_022363EC:
	add r6, r4, #0
	b _02236856
_022363F0:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022363F6:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022363FC:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236402:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236414: ; jump table
	.short _0223641C - _02236414 - 2 ; case 0
	.short _02236420 - _02236414 - 2 ; case 1
	.short _02236426 - _02236414 - 2 ; case 2
	.short _0223642C - _02236414 - 2 ; case 3
_0223641C:
	add r6, r4, #0
	b _02236856
_02236420:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236426:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223642C:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236432:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236444: ; jump table
	.short _0223644C - _02236444 - 2 ; case 0
	.short _02236450 - _02236444 - 2 ; case 1
	.short _02236456 - _02236444 - 2 ; case 2
	.short _0223645C - _02236444 - 2 ; case 3
_0223644C:
	add r6, r4, #0
	b _02236856
_02236450:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236456:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_0223645C:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236462:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236474: ; jump table
	.short _0223647C - _02236474 - 2 ; case 0
	.short _02236480 - _02236474 - 2 ; case 1
	.short _02236486 - _02236474 - 2 ; case 2
	.short _0223648C - _02236474 - 2 ; case 3
_0223647C:
	add r6, r4, #0
	b _02236856
_02236480:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236486:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_0223648C:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236492:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022364A4: ; jump table
	.short _022364AC - _022364A4 - 2 ; case 0
	.short _022364B0 - _022364A4 - 2 ; case 1
	.short _022364B6 - _022364A4 - 2 ; case 2
	.short _022364BC - _022364A4 - 2 ; case 3
_022364AC:
	add r6, r4, #0
	b _02236856
_022364B0:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022364B6:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022364BC:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022364C2:
	add r4, #0x20
	cmp r5, #3
	bhi _022364F8
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022364D4: ; jump table
	.short _022364DC - _022364D4 - 2 ; case 0
	.short _022364E0 - _022364D4 - 2 ; case 1
	.short _022364E6 - _022364D4 - 2 ; case 2
	.short _022364EC - _022364D4 - 2 ; case 3
_022364DC:
	add r6, r4, #0
	b _02236856
_022364E0:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022364E6:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022364EC:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022364F2:
	add r4, #0x20
	cmp r5, #3
	bls _022364FA
_022364F8:
	b _02236856
_022364FA:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236506: ; jump table
	.short _0223650E - _02236506 - 2 ; case 0
	.short _02236514 - _02236506 - 2 ; case 1
	.short _02236518 - _02236506 - 2 ; case 2
	.short _0223651E - _02236506 - 2 ; case 3
_0223650E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236514:
	add r6, r4, #0
	b _02236856
_02236518:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223651E:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236524:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236536: ; jump table
	.short _0223653E - _02236536 - 2 ; case 0
	.short _02236544 - _02236536 - 2 ; case 1
	.short _02236548 - _02236536 - 2 ; case 2
	.short _0223654E - _02236536 - 2 ; case 3
_0223653E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236544:
	add r6, r4, #0
	b _02236856
_02236548:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223654E:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236554:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236566: ; jump table
	.short _0223656E - _02236566 - 2 ; case 0
	.short _02236574 - _02236566 - 2 ; case 1
	.short _02236578 - _02236566 - 2 ; case 2
	.short _0223657E - _02236566 - 2 ; case 3
_0223656E:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236574:
	add r6, r4, #0
	b _02236856
_02236578:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_0223657E:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236584:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236596: ; jump table
	.short _0223659E - _02236596 - 2 ; case 0
	.short _022365A4 - _02236596 - 2 ; case 1
	.short _022365A8 - _02236596 - 2 ; case 2
	.short _022365AE - _02236596 - 2 ; case 3
_0223659E:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022365A4:
	add r6, r4, #0
	b _02236856
_022365A8:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022365AE:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022365B4:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022365C6: ; jump table
	.short _022365CE - _022365C6 - 2 ; case 0
	.short _022365D4 - _022365C6 - 2 ; case 1
	.short _022365D8 - _022365C6 - 2 ; case 2
	.short _022365DE - _022365C6 - 2 ; case 3
_022365CE:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022365D4:
	add r6, r4, #0
	b _02236856
_022365D8:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022365DE:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022365E4:
	add r4, #0x20
	cmp r5, #3
	bhi _0223661A
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022365F6: ; jump table
	.short _022365FE - _022365F6 - 2 ; case 0
	.short _02236604 - _022365F6 - 2 ; case 1
	.short _02236608 - _022365F6 - 2 ; case 2
	.short _0223660E - _022365F6 - 2 ; case 3
_022365FE:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236604:
	add r6, r4, #0
	b _02236856
_02236608:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223660E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236614:
	add r4, #0x20
	cmp r5, #3
	bls _0223661C
_0223661A:
	b _02236856
_0223661C:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236628: ; jump table
	.short _02236630 - _02236628 - 2 ; case 0
	.short _02236636 - _02236628 - 2 ; case 1
	.short _0223663C - _02236628 - 2 ; case 2
	.short _02236640 - _02236628 - 2 ; case 3
_02236630:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236636:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223663C:
	add r6, r4, #0
	b _02236856
_02236640:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236646:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236658: ; jump table
	.short _02236660 - _02236658 - 2 ; case 0
	.short _02236666 - _02236658 - 2 ; case 1
	.short _0223666C - _02236658 - 2 ; case 2
	.short _02236670 - _02236658 - 2 ; case 3
_02236660:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236666:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223666C:
	add r6, r4, #0
	b _02236856
_02236670:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236676:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236688: ; jump table
	.short _02236690 - _02236688 - 2 ; case 0
	.short _02236696 - _02236688 - 2 ; case 1
	.short _0223669C - _02236688 - 2 ; case 2
	.short _022366A0 - _02236688 - 2 ; case 3
_02236690:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236696:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_0223669C:
	add r6, r4, #0
	b _02236856
_022366A0:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022366A6:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022366B8: ; jump table
	.short _022366C0 - _022366B8 - 2 ; case 0
	.short _022366C6 - _022366B8 - 2 ; case 1
	.short _022366CC - _022366B8 - 2 ; case 2
	.short _022366D0 - _022366B8 - 2 ; case 3
_022366C0:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022366C6:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022366CC:
	add r6, r4, #0
	b _02236856
_022366D0:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022366D6:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022366E8: ; jump table
	.short _022366F0 - _022366E8 - 2 ; case 0
	.short _022366F6 - _022366E8 - 2 ; case 1
	.short _022366FC - _022366E8 - 2 ; case 2
	.short _02236700 - _022366E8 - 2 ; case 3
_022366F0:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022366F6:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022366FC:
	add r6, r4, #0
	b _02236856
_02236700:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236706:
	add r4, #0x20
	cmp r5, #3
	bhi _0223673C
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236718: ; jump table
	.short _02236720 - _02236718 - 2 ; case 0
	.short _02236726 - _02236718 - 2 ; case 1
	.short _0223672C - _02236718 - 2 ; case 2
	.short _02236730 - _02236718 - 2 ; case 3
_02236720:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236726:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223672C:
	add r6, r4, #0
	b _02236856
_02236730:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236736:
	add r4, #0x20
	cmp r5, #3
	bls _0223673E
_0223673C:
	b _02236856
_0223673E:
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223674A: ; jump table
	.short _02236752 - _0223674A - 2 ; case 0
	.short _02236758 - _0223674A - 2 ; case 1
	.short _0223675E - _0223674A - 2 ; case 2
	.short _02236764 - _0223674A - 2 ; case 3
_02236752:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236758:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223675E:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236764:
	add r6, r4, #0
	b _02236856
_02236768:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223677A: ; jump table
	.short _02236782 - _0223677A - 2 ; case 0
	.short _02236788 - _0223677A - 2 ; case 1
	.short _0223678E - _0223677A - 2 ; case 2
	.short _02236794 - _0223677A - 2 ; case 3
_02236782:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236788:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223678E:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236794:
	add r6, r4, #0
	b _02236856
_02236798:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022367AA: ; jump table
	.short _022367B2 - _022367AA - 2 ; case 0
	.short _022367B8 - _022367AA - 2 ; case 1
	.short _022367BE - _022367AA - 2 ; case 2
	.short _022367C4 - _022367AA - 2 ; case 3
_022367B2:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022367B8:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022367BE:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022367C4:
	add r6, r4, #0
	b _02236856
_022367C8:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022367DA: ; jump table
	.short _022367E2 - _022367DA - 2 ; case 0
	.short _022367E8 - _022367DA - 2 ; case 1
	.short _022367EE - _022367DA - 2 ; case 2
	.short _022367F4 - _022367DA - 2 ; case 3
_022367E2:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_022367E8:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_022367EE:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_022367F4:
	add r6, r4, #0
	b _02236856
_022367F8:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223680A: ; jump table
	.short _02236812 - _0223680A - 2 ; case 0
	.short _02236818 - _0223680A - 2 ; case 1
	.short _0223681E - _0223680A - 2 ; case 2
	.short _02236824 - _0223680A - 2 ; case 3
_02236812:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_02236818:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_0223681E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236824:
	add r6, r4, #0
	b _02236856
_02236828:
	add r4, #0x20
	cmp r5, #3
	bhi _02236856
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223683A: ; jump table
	.short _02236842 - _0223683A - 2 ; case 0
	.short _02236848 - _0223683A - 2 ; case 1
	.short _0223684E - _0223683A - 2 ; case 2
	.short _02236854 - _0223683A - 2 ; case 3
_02236842:
	add r6, r4, #0
	add r6, #0x24
	b _02236856
_02236848:
	add r6, r4, #0
	add r6, #0x18
	b _02236856
_0223684E:
	add r6, r4, #0
	add r6, #0xc
	b _02236856
_02236854:
	add r6, r4, #0
_02236856:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_02236380

	thumb_func_start ov97_0223685C
ov97_0223685C: ; 0x0223685C
	push {r3, r4}
	add r4, r0, #0
	mov r3, #0
	add r4, #0x20
_02236864:
	ldr r2, [r4, #0]
	ldr r1, [r0, #4]
	add r3, r3, #1
	eor r2, r1
	str r2, [r4, #0]
	ldr r1, [r0, #0]
	eor r1, r2
	stmia r4!, {r1}
	cmp r3, #0xc
	blo _02236864
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_0223685C

	thumb_func_start ov97_0223687C
ov97_0223687C: ; 0x0223687C
	push {r3, r4}
	add r4, r0, #0
	mov r3, #0
	add r4, #0x20
_02236884:
	ldr r2, [r4, #0]
	ldr r1, [r0, #0]
	add r3, r3, #1
	eor r2, r1
	str r2, [r4, #0]
	ldr r1, [r0, #4]
	eor r1, r2
	stmia r4!, {r1}
	cmp r3, #0xc
	blo _02236884
	pop {r3, r4}
	bx lr
	thumb_func_end ov97_0223687C

	thumb_func_start ov97_0223689C
ov97_0223689C: ; 0x0223689C
	push {r3, r4, r5, r6, r7, lr}
	add r1, r0, #0
	mov r4, #0
	ldr r1, [r1, #0]
	str r0, [sp]
	add r2, r4, #0
	bl ov97_02236380
	add r5, r0, #0
	ldr r0, [sp]
	mov r2, #1
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl ov97_02236380
	add r6, r0, #0
	ldr r0, [sp]
	mov r2, #2
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl ov97_02236380
	add r7, r0, #0
	ldr r0, [sp]
	mov r2, #3
	add r1, r0, #0
	ldr r1, [r1, #0]
	bl ov97_02236380
	add r1, r4, #0
_022368D8:
	ldrh r2, [r5]
	add r1, r1, #1
	add r5, r5, #2
	add r2, r4, r2
	lsl r2, r2, #0x10
	lsr r4, r2, #0x10
	cmp r1, #6
	blt _022368D8
	mov r2, #0
_022368EA:
	ldrh r1, [r6]
	add r2, r2, #1
	add r6, r6, #2
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r2, #6
	blt _022368EA
	mov r2, #0
_022368FC:
	ldrh r1, [r7]
	add r2, r2, #1
	add r7, r7, #2
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r2, #6
	blt _022368FC
	mov r2, #0
_0223690E:
	ldrh r1, [r0]
	add r2, r2, #1
	add r0, r0, #2
	add r1, r4, r1
	lsl r1, r1, #0x10
	lsr r4, r1, #0x10
	cmp r2, #6
	blt _0223690E
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_0223689C

	thumb_func_start ov97_02236924
ov97_02236924: ; 0x02236924
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	mov r4, #0
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	add r5, r4, #0
	str r4, [sp, #0xc]
	str r4, [sp, #8]
	str r4, [sp, #4]
	cmp r1, #0xa
	ble _0223699A
	ldr r1, [r6, #0]
	add r2, r4, #0
	bl ov97_02236380
	str r0, [sp, #0xc]
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #1
	bl ov97_02236380
	str r0, [sp, #8]
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #2
	bl ov97_02236380
	str r0, [sp, #4]
	ldr r1, [r6, #0]
	add r0, r6, #0
	mov r2, #3
	bl ov97_02236380
	add r5, r0, #0
	add r0, r6, #0
	bl ov97_0223685C
	add r0, r6, #0
	bl ov97_0223689C
	ldrh r1, [r6, #0x1c]
	cmp r0, r1
	beq _0223699A
	ldrb r0, [r6, #0x13]
	mov r1, #1
	bic r0, r1
	mov r1, #1
	orr r0, r1
	strb r0, [r6, #0x13]
	ldrb r1, [r6, #0x13]
	mov r0, #4
	orr r0, r1
	strb r0, [r6, #0x13]
	mov r0, #1
	ldr r1, [r5, #4]
	lsl r0, r0, #0x1e
	orr r0, r1
	str r0, [r5, #4]
_0223699A:
	ldr r0, [sp]
	cmp r0, #0x50
	bls _022369A2
	b _02236C90
_022369A2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022369AE: ; jump table
	.short _02236A50 - _022369AE - 2 ; case 0
	.short _02236A54 - _022369AE - 2 ; case 1
	.short _02236A58 - _022369AE - 2 ; case 2
	.short _02236A78 - _022369AE - 2 ; case 3
	.short _02236A7C - _022369AE - 2 ; case 4
	.short _02236A84 - _022369AE - 2 ; case 5
	.short _02236A8C - _022369AE - 2 ; case 6
	.short _02236A94 - _022369AE - 2 ; case 7
	.short _02236AA8 - _022369AE - 2 ; case 8
	.short _02236AAC - _022369AE - 2 ; case 9
	.short _02236AB0 - _022369AE - 2 ; case 10
	.short _02236AB4 - _022369AE - 2 ; case 11
	.short _02236AC8 - _022369AE - 2 ; case 12
	.short _02236AE0 - _022369AE - 2 ; case 13
	.short _02236AE0 - _022369AE - 2 ; case 14
	.short _02236AE0 - _022369AE - 2 ; case 15
	.short _02236AE0 - _022369AE - 2 ; case 16
	.short _02236AEC - _022369AE - 2 ; case 17
	.short _02236AEC - _022369AE - 2 ; case 18
	.short _02236AEC - _022369AE - 2 ; case 19
	.short _02236AEC - _022369AE - 2 ; case 20
	.short _02236AD4 - _022369AE - 2 ; case 21
	.short _02236B1C - _022369AE - 2 ; case 22
	.short _02236B22 - _022369AE - 2 ; case 23
	.short _02236B28 - _022369AE - 2 ; case 24
	.short _02236ACE - _022369AE - 2 ; case 25
	.short _02236AF8 - _022369AE - 2 ; case 26
	.short _02236AFE - _022369AE - 2 ; case 27
	.short _02236B04 - _022369AE - 2 ; case 28
	.short _02236B0A - _022369AE - 2 ; case 29
	.short _02236B10 - _022369AE - 2 ; case 30
	.short _02236B16 - _022369AE - 2 ; case 31
	.short _02236ADA - _022369AE - 2 ; case 32
	.short _02236B2E - _022369AE - 2 ; case 33
	.short _02236B40 - _022369AE - 2 ; case 34
	.short _02236B48 - _022369AE - 2 ; case 35
	.short _02236B50 - _022369AE - 2 ; case 36
	.short _02236B58 - _022369AE - 2 ; case 37
	.short _02236B60 - _022369AE - 2 ; case 38
	.short _02236B6E - _022369AE - 2 ; case 39
	.short _02236B76 - _022369AE - 2 ; case 40
	.short _02236B7E - _022369AE - 2 ; case 41
	.short _02236B86 - _022369AE - 2 ; case 42
	.short _02236B8E - _022369AE - 2 ; case 43
	.short _02236B96 - _022369AE - 2 ; case 44
	.short _02236B9E - _022369AE - 2 ; case 45
	.short _02236BA6 - _022369AE - 2 ; case 46
	.short _02236B34 - _022369AE - 2 ; case 47
	.short _02236B3A - _022369AE - 2 ; case 48
	.short _02236B68 - _022369AE - 2 ; case 49
	.short _02236BAC - _022369AE - 2 ; case 50
	.short _02236BB4 - _022369AE - 2 ; case 51
	.short _02236BBC - _022369AE - 2 ; case 52
	.short _02236BC4 - _022369AE - 2 ; case 53
	.short _02236BCC - _022369AE - 2 ; case 54
	.short _02236C90 - _022369AE - 2 ; case 55
	.short _02236C90 - _022369AE - 2 ; case 56
	.short _02236C90 - _022369AE - 2 ; case 57
	.short _02236C90 - _022369AE - 2 ; case 58
	.short _02236C90 - _022369AE - 2 ; case 59
	.short _02236C90 - _022369AE - 2 ; case 60
	.short _02236C90 - _022369AE - 2 ; case 61
	.short _02236C90 - _022369AE - 2 ; case 62
	.short _02236C90 - _022369AE - 2 ; case 63
	.short _02236C90 - _022369AE - 2 ; case 64
	.short _02236C42 - _022369AE - 2 ; case 65
	.short _02236C60 - _022369AE - 2 ; case 66
	.short _02236BD4 - _022369AE - 2 ; case 67
	.short _02236BDC - _022369AE - 2 ; case 68
	.short _02236BE4 - _022369AE - 2 ; case 69
	.short _02236BEC - _022369AE - 2 ; case 70
	.short _02236BF4 - _022369AE - 2 ; case 71
	.short _02236BFC - _022369AE - 2 ; case 72
	.short _02236C04 - _022369AE - 2 ; case 73
	.short _02236C0C - _022369AE - 2 ; case 74
	.short _02236C14 - _022369AE - 2 ; case 75
	.short _02236C1C - _022369AE - 2 ; case 76
	.short _02236C24 - _022369AE - 2 ; case 77
	.short _02236C2C - _022369AE - 2 ; case 78
	.short _02236C34 - _022369AE - 2 ; case 79
	.short _02236C3C - _022369AE - 2 ; case 80
_02236A50:
	ldr r4, [r6, #0]
	b _02236C90
_02236A54:
	ldr r4, [r6, #4]
	b _02236C90
_02236A58:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02236A64
	mov r4, #0
	b _02236A72
_02236A64:
	mov r4, #0
_02236A66:
	add r0, r6, r4
	ldrb r0, [r0, #8]
	strb r0, [r7, r4]
	add r4, r4, #1
	cmp r4, #0xa
	blo _02236A66
_02236A72:
	mov r0, #0xff
	strb r0, [r7, r4]
	b _02236C90
_02236A78:
	ldrb r4, [r6, #0x12]
	b _02236C90
_02236A7C:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1f
	lsr r4, r0, #0x1f
	b _02236C90
_02236A84:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1e
	lsr r4, r0, #0x1f
	b _02236C90
_02236A8C:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1f
	b _02236C90
_02236A94:
	mov r4, #0
_02236A96:
	add r0, r6, r4
	ldrb r0, [r0, #0x14]
	strb r0, [r7, r4]
	add r4, r4, #1
	cmp r4, #7
	blo _02236A96
	mov r0, #0xff
	strb r0, [r7, r4]
	b _02236C90
_02236AA8:
	ldrb r4, [r6, #0x1b]
	b _02236C90
_02236AAC:
	ldrh r4, [r6, #0x1c]
	b _02236C90
_02236AB0:
	ldrh r4, [r6, #0x1e]
	b _02236C90
_02236AB4:
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02236AC2
	mov r4, #0x67
	lsl r4, r4, #2
	b _02236C90
_02236AC2:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0]
	b _02236C90
_02236AC8:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0, #2]
	b _02236C90
_02236ACE:
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #4]
	b _02236C90
_02236AD4:
	ldr r0, [sp, #0xc]
	ldrb r4, [r0, #8]
	b _02236C90
_02236ADA:
	ldr r0, [sp, #0xc]
	ldrb r4, [r0, #9]
	b _02236C90
_02236AE0:
	ldr r0, [sp]
	sub r0, #0xd
	lsl r1, r0, #1
	ldr r0, [sp, #8]
	ldrh r4, [r0, r1]
	b _02236C90
_02236AEC:
	ldr r1, [sp]
	ldr r0, [sp, #8]
	sub r1, #0x11
	add r0, r0, r1
	ldrb r4, [r0, #8]
	b _02236C90
_02236AF8:
	ldr r0, [sp, #4]
	ldrb r4, [r0]
	b _02236C90
_02236AFE:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #1]
	b _02236C90
_02236B04:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #2]
	b _02236C90
_02236B0A:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #3]
	b _02236C90
_02236B10:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #4]
	b _02236C90
_02236B16:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #5]
	b _02236C90
_02236B1C:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #6]
	b _02236C90
_02236B22:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #7]
	b _02236C90
_02236B28:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #8]
	b _02236C90
_02236B2E:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #9]
	b _02236C90
_02236B34:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #0xa]
	b _02236C90
_02236B3A:
	ldr r0, [sp, #4]
	ldrb r4, [r0, #0xb]
	b _02236C90
_02236B40:
	ldr r0, [r5, #0]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	b _02236C90
_02236B48:
	ldr r0, [r5, #0]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x18
	b _02236C90
_02236B50:
	ldr r0, [r5, #0]
	lsl r0, r0, #9
	lsr r4, r0, #0x19
	b _02236C90
_02236B58:
	ldr r0, [r5, #0]
	lsl r0, r0, #5
	lsr r4, r0, #0x1c
	b _02236C90
_02236B60:
	ldr r0, [r5, #0]
	lsl r0, r0, #1
	lsr r4, r0, #0x1c
	b _02236C90
_02236B68:
	ldr r0, [r5, #0]
	lsr r4, r0, #0x1f
	b _02236C90
_02236B6E:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x1b
	lsr r4, r0, #0x1b
	b _02236C90
_02236B76:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x16
	lsr r4, r0, #0x1b
	b _02236C90
_02236B7E:
	ldr r0, [r5, #4]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x1b
	b _02236C90
_02236B86:
	ldr r0, [r5, #4]
	lsl r0, r0, #0xc
	lsr r4, r0, #0x1b
	b _02236C90
_02236B8E:
	ldr r0, [r5, #4]
	lsl r0, r0, #7
	lsr r4, r0, #0x1b
	b _02236C90
_02236B96:
	ldr r0, [r5, #4]
	lsl r0, r0, #2
	lsr r4, r0, #0x1b
	b _02236C90
_02236B9E:
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	lsr r4, r0, #0x1f
	b _02236C90
_02236BA6:
	ldr r0, [r5, #4]
	lsr r4, r0, #0x1f
	b _02236C90
_02236BAC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x1d
	lsr r4, r0, #0x1d
	b _02236C90
_02236BB4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x1a
	lsr r4, r0, #0x1d
	b _02236C90
_02236BBC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x17
	lsr r4, r0, #0x1d
	b _02236C90
_02236BC4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x14
	lsr r4, r0, #0x1d
	b _02236C90
_02236BCC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x11
	lsr r4, r0, #0x1d
	b _02236C90
_02236BD4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0x10
	lsr r4, r0, #0x1f
	b _02236C90
_02236BDC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xf
	lsr r4, r0, #0x1f
	b _02236C90
_02236BE4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xe
	lsr r4, r0, #0x1f
	b _02236C90
_02236BEC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xd
	lsr r4, r0, #0x1f
	b _02236C90
_02236BF4:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xc
	lsr r4, r0, #0x1f
	b _02236C90
_02236BFC:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xb
	lsr r4, r0, #0x1f
	b _02236C90
_02236C04:
	ldr r0, [r5, #8]
	lsl r0, r0, #0xa
	lsr r4, r0, #0x1f
	b _02236C90
_02236C0C:
	ldr r0, [r5, #8]
	lsl r0, r0, #9
	lsr r4, r0, #0x1f
	b _02236C90
_02236C14:
	ldr r0, [r5, #8]
	lsl r0, r0, #8
	lsr r4, r0, #0x1f
	b _02236C90
_02236C1C:
	ldr r0, [r5, #8]
	lsl r0, r0, #7
	lsr r4, r0, #0x1f
	b _02236C90
_02236C24:
	ldr r0, [r5, #8]
	lsl r0, r0, #6
	lsr r4, r0, #0x1f
	b _02236C90
_02236C2C:
	ldr r0, [r5, #8]
	lsl r0, r0, #5
	lsr r4, r0, #0x1f
	b _02236C90
_02236C34:
	ldr r0, [r5, #8]
	lsl r0, r0, #1
	lsr r4, r0, #0x1c
	b _02236C90
_02236C3C:
	ldr r0, [r5, #8]
	lsr r4, r0, #0x1f
	b _02236C90
_02236C42:
	ldr r0, [sp, #0xc]
	ldrh r4, [r0]
	cmp r4, #0
	beq _02236C90
	ldr r0, [r5, #4]
	lsl r0, r0, #1
	lsr r0, r0, #0x1f
	bne _02236C5A
	ldrb r0, [r6, #0x13]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _02236C90
_02236C5A:
	mov r4, #0x67
	lsl r4, r4, #2
	b _02236C90
_02236C60:
	ldr r4, [r5, #4]
	lsl r0, r4, #2
	lsr r0, r0, #0x1b
	lsl r5, r0, #0x19
	lsl r0, r4, #7
	lsr r0, r0, #0x1b
	lsl r3, r0, #0x14
	lsl r0, r4, #0xc
	lsr r0, r0, #0x1b
	lsl r2, r0, #0xf
	lsl r0, r4, #0x11
	lsr r0, r0, #0x1b
	lsl r1, r0, #0xa
	lsl r0, r4, #0x1b
	lsl r4, r4, #0x16
	lsr r4, r4, #0x1b
	lsr r0, r0, #0x1b
	lsl r4, r4, #5
	orr r0, r4
	orr r0, r1
	orr r0, r2
	orr r0, r3
	add r4, r5, #0
	orr r4, r0
_02236C90:
	ldr r0, [sp]
	cmp r0, #0xa
	ble _02236C9C
	add r0, r6, #0
	bl ov97_0223687C
_02236C9C:
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov97_02236924

	thumb_func_start ov97_02236CA4
ov97_02236CA4: ; 0x02236CA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	mov r7, #0
	cmp r6, #0xa
	ble _02236D18
	ldr r1, [r4, #0]
	add r2, r7, #0
	bl ov97_02236380
	add r7, r0, #0
	ldr r1, [r4, #0]
	add r0, r4, #0
	mov r2, #1
	bl ov97_02236380
	ldr r1, [r4, #0]
	add r0, r4, #0
	mov r2, #2
	bl ov97_02236380
	ldr r1, [r4, #0]
	add r0, r4, #0
	mov r2, #3
	bl ov97_02236380
	str r0, [sp]
	add r0, r4, #0
	bl ov97_0223685C
	add r0, r4, #0
	bl ov97_0223689C
	ldrh r1, [r4, #0x1c]
	cmp r0, r1
	beq _02236D18
	ldrb r1, [r4, #0x13]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x13]
	ldrb r1, [r4, #0x13]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0x13]
	ldr r0, [sp]
	ldr r1, [r0, #4]
	mov r0, #1
	lsl r0, r0, #0x1e
	orr r1, r0
	ldr r0, [sp]
	str r1, [r0, #4]
	add r0, r4, #0
	bl ov97_0223687C
	pop {r3, r4, r5, r6, r7, pc}
_02236D18:
	cmp r6, #0xb
	bhi _02236DBC
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02236D28: ; jump table
	.short _02236DBC - _02236D28 - 2 ; case 0
	.short _02236DBC - _02236D28 - 2 ; case 1
	.short _02236D40 - _02236D28 - 2 ; case 2
	.short _02236D50 - _02236D28 - 2 ; case 3
	.short _02236D56 - _02236D28 - 2 ; case 4
	.short _02236D68 - _02236D28 - 2 ; case 5
	.short _02236D7A - _02236D28 - 2 ; case 6
	.short _02236D8C - _02236D28 - 2 ; case 7
	.short _02236DBC - _02236D28 - 2 ; case 8
	.short _02236DBC - _02236D28 - 2 ; case 9
	.short _02236DBC - _02236D28 - 2 ; case 10
	.short _02236D9C - _02236D28 - 2 ; case 11
_02236D40:
	mov r2, #0
_02236D42:
	ldrb r1, [r5, r2]
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #8]
	cmp r2, #0xa
	blt _02236D42
	b _02236DBC
_02236D50:
	ldrb r0, [r5]
	strb r0, [r4, #0x12]
	b _02236DBC
_02236D56:
	ldrb r0, [r4, #0x13]
	ldrb r2, [r5]
	mov r1, #1
	bic r0, r1
	mov r1, #1
	and r1, r2
	orr r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D68:
	ldrb r0, [r4, #0x13]
	mov r1, #2
	bic r0, r1
	ldrb r1, [r5]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1e
	orr r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D7A:
	ldrb r0, [r4, #0x13]
	mov r1, #4
	bic r0, r1
	ldrb r1, [r5]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x1d
	orr r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236D8C:
	mov r2, #0
_02236D8E:
	ldrb r1, [r5, r2]
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x14]
	cmp r2, #7
	blt _02236D8E
	b _02236DBC
_02236D9C:
	ldrb r0, [r5, #1]
	ldrb r1, [r5]
	lsl r0, r0, #8
	add r0, r1, r0
	strh r0, [r7]
	ldrh r0, [r7]
	ldrb r1, [r4, #0x13]
	cmp r0, #0
	beq _02236DB6
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #0x13]
	b _02236DBC
_02236DB6:
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x13]
_02236DBC:
	cmp r6, #0xa
	ble _02236DCE
	add r0, r4, #0
	bl ov97_0223689C
	strh r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov97_0223687C
_02236DCE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov97_02236CA4

	thumb_func_start ov97_02236DD0
ov97_02236DD0: ; 0x02236DD0
	ldr r1, _02236DF4 ; =0x00000115
	cmp r0, r1
	blt _02236DF0
	ldr r3, _02236DF8 ; =0x0223ED5C
	mov r2, #0
_02236DDA:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02236DE8
	ldr r0, _02236DFC ; =0x0223ED5E
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_02236DE8:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x90
	blo _02236DDA
_02236DF0:
	bx lr
	nop
_02236DF4: .word 0x00000115
_02236DF8: .word 0x0223ED5C
_02236DFC: .word 0x0223ED5E
	thumb_func_end ov97_02236DD0

	thumb_func_start ov97_02236E00
ov97_02236E00: ; 0x02236E00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0xb
	mov r2, #0
	bl ov97_02236924
	bl ov97_02236DD0
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #0x19
	mov r2, #0
	bl ov97_02236924
	add r1, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	bl sub_02075B78
	pop {r3, r4, r5, pc}
	thumb_func_end ov97_02236E00

	thumb_func_start ov97_02236E28
ov97_02236E28: ; 0x02236E28
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	mov r1, #0x2e
	mov r2, #0
	bl ov97_02236924
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0x19
	bl sub_020759F0
	cmp r0, #0
	beq _02236E82
	ldr r2, _02236E8C ; =0x0223ECA0
	mov r4, #0
_02236E56:
	ldrh r1, [r2]
	cmp r5, r1
	bne _02236E66
	add r0, r5, #0
	mov r1, #0x18
	bl sub_020759F0
	b _02236E6E
_02236E66:
	add r4, r4, #1
	add r2, r2, #2
	cmp r4, #0x5e
	blo _02236E56
_02236E6E:
	cmp r4, #0x5e
	bne _02236E8A
	mov r1, #1
	tst r1, r6
	bne _02236E8A
	add r0, r5, #0
	mov r1, #0x18
	bl sub_020759F0
	pop {r4, r5, r6, pc}
_02236E82:
	add r0, r5, #0
	mov r1, #0x18
	bl sub_020759F0
_02236E8A:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02236E8C: .word 0x0223ECA0
	thumb_func_end ov97_02236E28

	thumb_func_start ov97_02236E90
ov97_02236E90: ; 0x02236E90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	bl sub_02073C54
	add r0, r4, #0
	bl sub_02073D20
	mov r1, #0
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	bl ov97_02236DD0
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	cmp r0, #0
	beq _02236EF2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0207CF10
	str r0, [sp, #8]
_02236EF2:
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x19
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #8
	bl sub_02074C60
	mov r0, #0x46
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	add r1, r4, #0
	bl ov97_02236E28
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xb
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	add r2, sp, #4
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1a
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1b
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xe
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1c
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1d
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x10
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1e
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x11
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x1f
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x12
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x16
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x13
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x14
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x15
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x21
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x16
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2f
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x17
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x30
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x18
	add r2, sp, #8
	bl sub_02074C60
	mov r5, #0
	add r7, r5, #0
_02237082:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xd
	mov r2, #0
	bl ov97_02236924
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x36
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0
	bl ov97_02236924
	mov r1, #3
	lsl r1, r7
	str r0, [sp, #8]
	and r0, r1
	lsr r0, r7
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x3e
	add r2, sp, #8
	bl sub_02074C60
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x42
	mov r2, #0
	bl sub_02074570
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x3a
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	add r7, r7, #2
	cmp r5, #4
	blt _02237082
	add r0, r6, #0
	mov r1, #0x27
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x46
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x28
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x47
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x29
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x48
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2a
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x49
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2b
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x2d
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4c
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x32
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _022371A6
	mov r5, #0
	cmp r7, #0
	ble _022371A6
_02237190:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x4e
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _02237190
_022371A6:
	add r0, r6, #0
	mov r1, #0x33
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _022371D2
	mov r5, #0
	cmp r7, #0
	ble _022371D2
_022371BC:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x52
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _022371BC
_022371D2:
	add r0, r6, #0
	mov r1, #0x34
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _022371FE
	mov r5, #0
	cmp r7, #0
	ble _022371FE
_022371E8:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x56
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _022371E8
_022371FE:
	add r0, r6, #0
	mov r1, #0x35
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _0223722A
	mov r5, #0
	cmp r7, #0
	ble _0223722A
_02237214:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x5a
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _02237214
_0223722A:
	add r0, r6, #0
	mov r1, #0x36
	mov r2, #0
	bl ov97_02236924
	add r7, r0, #0
	cmp r7, #4
	bgt _02237256
	mov r5, #0
	cmp r7, #0
	ble _02237256
_02237240:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x5e
	add r2, sp, #8
	bl sub_02074C60
	add r5, r5, #1
	cmp r5, r7
	blt _02237240
_02237256:
	add r0, r6, #0
	mov r1, #0x43
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x62
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x44
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x63
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x45
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x64
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x46
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x65
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x47
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x66
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x48
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x67
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x49
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x68
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4a
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x69
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4b
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6a
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6b
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4d
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6c
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x4e
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6d
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x50
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6e
	add r2, sp, #8
	bl sub_02074C60
	add r0, r4, #0
	bl sub_02075D74
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6f
	add r2, sp, #8
	bl sub_02074C60
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	cmp r0, #0xc9
	bne _022373D2
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl ov97_02236924
	add r3, r0, #0
	mov r7, #3
	lsl r0, r7, #8
	and r0, r3
	lsr r1, r0, #6
	lsl r0, r7, #0x18
	and r0, r3
	lsr r5, r0, #0x12
	lsl r0, r7, #0x10
	and r0, r3
	lsr r0, r0, #0xc
	add r2, r3, #0
	orr r0, r5
	orr r0, r1
	and r2, r7
	str r3, [sp, #8]
	orr r0, r2
	mov r1, #0x1c
	bl sub_020E2178
	str r1, [sp, #8]
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #8
	bl sub_02074C60
_022373D2:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074570
	ldr r1, _02237514 ; =0x00000182
	cmp r0, r1
	bne _02237422
	ldr r0, _02237518 ; =0x021BF6DC
	ldrb r0, [r0, #6]
	cmp r0, #5
	bhi _02237402
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022373F6: ; jump table
	.short _02237402 - _022373F6 - 2 ; case 0
	.short _02237402 - _022373F6 - 2 ; case 1
	.short _02237402 - _022373F6 - 2 ; case 2
	.short _02237414 - _022373F6 - 2 ; case 3
	.short _02237408 - _022373F6 - 2 ; case 4
	.short _0223740E - _022373F6 - 2 ; case 5
_02237402:
	mov r0, #0
	str r0, [sp, #8]
	b _02237418
_02237408:
	mov r0, #1
	str r0, [sp, #8]
	b _02237418
_0223740E:
	mov r0, #2
	str r0, [sp, #8]
	b _02237418
_02237414:
	mov r0, #3
	str r0, [sp, #8]
_02237418:
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #8
	bl sub_02074C60
_02237422:
	add r0, r6, #0
	mov r1, #2
	add r2, sp, #0x24
	bl ov97_02236924
	ldr r3, [sp, #4]
	add r0, sp, #0x24
	add r1, sp, #0xc
	mov r2, #0xc
	bl ov97_0223936C
	add r0, r4, #0
	mov r1, #0x76
	add r2, sp, #0xc
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	bl ov97_02236924
	ldr r1, _0223751C ; =0x020E4C44
	ldrb r1, [r1]
	cmp r1, r0
	beq _02237462
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4d
	add r2, sp, #8
	bl sub_02074C60
_02237462:
	add r0, r6, #0
	mov r1, #0x25
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x7a
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #7
	add r2, sp, #0x24
	bl ov97_02236924
	ldr r3, [sp, #4]
	add r0, sp, #0x24
	add r1, sp, #0xc
	mov r2, #8
	bl ov97_0223936C
	add r0, r4, #0
	mov r1, #0x90
	add r2, sp, #0xc
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x23
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x99
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x22
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9a
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x26
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9b
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x24
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9c
	add r2, sp, #8
	bl sub_02074C60
	add r0, r6, #0
	mov r1, #0x31
	mov r2, #0
	bl ov97_02236924
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9d
	add r2, sp, #8
	bl sub_02074C60
	ldr r1, [sp]
	add r0, r4, #0
	bl sub_02073D48
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237514: .word 0x00000182
_02237518: .word 0x021BF6DC
_0223751C: .word 0x020E4C44
	thumb_func_end ov97_02236E90

	thumb_func_start ov97_02237520
ov97_02237520: ; 0x02237520
	ldr r1, _02237528 ; =0x0223F54C
	str r0, [r1, #0]
	bx lr
	nop
_02237528: .word 0x0223F54C
	thumb_func_end ov97_02237520

	thumb_func_start ov97_0223752C
ov97_0223752C: ; 0x0223752C
	add r1, r0, #0
	ldr r0, _02237538 ; =0x0223F54C
	ldr r3, _0223753C ; =sub_02018144
	ldr r0, [r0, #0]
	bx r3
	nop
_02237538: .word 0x0223F54C
_0223753C: .word sub_02018144
	thumb_func_end ov97_0223752C

	thumb_func_start ov97_02237540
ov97_02237540: ; 0x02237540
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x1fc
	sub sp, #0x130
	bl sub_020D0928
	lsr r1, r0, #0x18
	lsl r1, r1, #0x18
	lsr r2, r1, #0x18
	lsr r1, r0, #0x10
	lsl r3, r0, #0x18
	lsr r0, r0, #8
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #8
	lsr r1, r1, #0x10
	orr r0, r3
	orr r0, r1
	add r6, r2, #0
	orr r6, r0
	ldr r0, _022375D4 ; =0x0223EF9C
	mov r4, #0
	ldr r0, [r0, #0]
	cmp r0, #0
	bls _022375CA
	ldr r5, _022375D8 ; =0x0223EF9C
	add r7, sp, #0x80
_02237576:
	ldr r0, [r5, #0]
	cmp r6, r0
	bne _022375C0
	mov r0, #1
	bl sub_020D0F48
	mov r0, #0x81
	ldr r2, _022375DC ; =0x000004A8
	lsl r0, r0, #0x14
	add r1, r7, #0
	bl sub_020D0C5C
	ldr r0, _022375E0 ; =0x08020000
	add r1, sp, #0
	mov r2, #0x80
	bl sub_020D0C5C
	mov r0, #0
	bl sub_020D0F48
	ldr r0, _022375E4 ; =ov97_0223752C
	ldr r1, _022375E8 ; =sub_020181C4
	bl ov97_0223D5C8
	ldr r1, _022375DC ; =0x000004A8
	ldr r3, _022375EC ; =0x0223DA1C
	add r0, r7, #0
	add r2, sp, #0
	bl ov97_02239498
	cmp r0, #0
	beq _022375C0
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x130
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022375C0:
	add r5, r5, #4
	ldr r0, [r5, #0]
	add r4, r4, #1
	cmp r4, r0
	blo _02237576
_022375CA:
	mov r0, #0
	add sp, #0x1fc
	add sp, #0x1fc
	add sp, #0x130
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022375D4: .word 0x0223EF9C
_022375D8: .word 0x0223EF9C
_022375DC: .word 0x000004A8
_022375E0: .word 0x08020000
_022375E4: .word ov97_0223752C
_022375E8: .word sub_020181C4
_022375EC: .word 0x0223DA1C
	thumb_func_end ov97_02237540

	thumb_func_start ov97_022375F0
ov97_022375F0: ; 0x022375F0
	push {r3, lr}
	bl sub_020D0FB4
	bl sub_020D08C0
	cmp r0, #0
	bne _02237602
	mov r0, #0
	pop {r3, pc}
_02237602:
	bl sub_020D0970
	ldr r1, _02237620 ; =0x00003130
	cmp r0, r1
	beq _02237610
	mov r0, #0
	pop {r3, pc}
_02237610:
	bl ov97_02237540
	cmp r0, #0
	beq _0223761C
	mov r0, #1
	pop {r3, pc}
_0223761C:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_02237620: .word 0x00003130
	thumb_func_end ov97_022375F0

	thumb_func_start ov97_02237624
ov97_02237624: ; 0x02237624
	push {r3, lr}
	bl ov97_022375F0
	cmp r0, #0
	bne _02237632
	mov r0, #0
	pop {r3, pc}
_02237632:
	mov r0, #1
	bl sub_020D0F48
	mov r0, #0x81
	lsl r0, r0, #0x14
	add r1, sp, #0
	bl sub_020D0E40
	mov r0, #0
	bl sub_020D0F48
	ldr r0, [sp]
	pop {r3, pc}
	thumb_func_end ov97_02237624

	thumb_func_start ov97_0223764C
ov97_0223764C: ; 0x0223764C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov97_022375F0
	cmp r0, #0
	bne _0223765E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223765E:
	cmp r4, #0
	bne _02237668
	bl ov97_02237624
	add r4, r0, #0
_02237668:
	mov r0, #1
	bl sub_020D0F48
	ldr r0, _02237690 ; =0x08100100
	add r1, r5, #0
	add r2, r4, #0
	bl sub_020D0CB4
	add r4, r0, #0
	mov r0, #0
	bl sub_020D0F48
	bl sub_020D0A04
	cmp r0, #0
	bne _0223768C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0223768C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237690: .word 0x08100100
	thumb_func_end ov97_0223764C

	thumb_func_start ov97_02237694
ov97_02237694: ; 0x02237694
	push {r3, r4, r5, r6}
	add r4, r0, #0
	mov r0, #0
	ldr r6, _022376BC ; =0x0223F550
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov r5, #0x75
_022376A4:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	sub r5, r5, #1
	bne _022376A4
	stmia r6!, {r0, r1}
	ldr r0, _022376C0 ; =0x0223F550
	mov r1, #1
	str r1, [r0, #4]
	str r4, [r0, #8]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_022376BC: .word 0x0223F550
_022376C0: .word 0x0223F550
	thumb_func_end ov97_02237694

	thumb_func_start ov97_022376C4
ov97_022376C4: ; 0x022376C4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r2, #0
	add r6, r1, #0
	mov r0, #3
	add r2, r3, #0
	bl sub_02017FC8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200681C
	mov r1, #0
	add r2, r4, #0
	add r5, r0, #0
	bl sub_020D5124
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov97_022376C4

	thumb_func_start ov97_022376FC
ov97_022376FC: ; 0x022376FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r5, _02237780 ; =0x0223DAAC
	add r6, r3, #0
	add r7, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	cmp r2, #4
	str r0, [r3, #0]
	add r0, sp, #0
	strb r2, [r0, #0x10]
	bhi _02237756
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223772E: ; jump table
	.short _02237756 - _0223772E - 2 ; case 0
	.short _02237738 - _0223772E - 2 ; case 1
	.short _02237740 - _0223772E - 2 ; case 2
	.short _02237748 - _0223772E - 2 ; case 3
	.short _02237750 - _0223772E - 2 ; case 4
_02237738:
	mov r0, #2
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	b _02237756
_02237740:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _02237756
_02237748:
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	b _02237756
_02237750:
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #8]
_02237756:
	lsr r1, r6, #0xb
	add r0, sp, #0
	strb r1, [r0, #0x12]
	ldr r1, [sp, #0x30]
	add r2, sp, #0
	lsr r1, r1, #0xe
	strb r1, [r0, #0x13]
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	mov r3, #0
	bl sub_020183C4
	lsl r1, r4, #0x18
	add r0, r7, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02237780: .word 0x0223DAAC
	thumb_func_end ov97_022376FC

	thumb_func_start ov97_02237784
ov97_02237784: ; 0x02237784
	ldr r1, _0223778C ; =0x0223F550
	str r0, [r1, #0x10]
	bx lr
	nop
_0223778C: .word 0x0223F550
	thumb_func_end ov97_02237784

	thumb_func_start ov97_02237790
ov97_02237790: ; 0x02237790
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #0xc]
	ldr r0, _022377E4 ; =0x0223F550
	add r5, r1, #0
	ldr r0, [r0, #0x10]
	add r4, r2, #0
	add r6, r3, #0
	ldr r7, _022377E8 ; =0x0223F550
	cmp r0, #0
	bne _022377C0
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	b _022377D8
_022377C0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r7, #8]
	ldr r1, [sp, #0xc]
	str r0, [sp, #8]
	ldr r3, _022377EC ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
_022377D8:
	cmp r4, #0
	beq _022377DE
	str r6, [r4, #0]
_022377DE:
	str r5, [r7, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022377E4: .word 0x0223F550
_022377E8: .word 0x0223F550
_022377EC: .word 0x00007FFF
	thumb_func_end ov97_02237790

	thumb_func_start ov97_022377F0
ov97_022377F0: ; 0x022377F0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, _02237804 ; =0x0223F550
	bl sub_0200F2AC
	cmp r0, #0
	beq _02237802
	ldr r0, [r5, #0xc]
	str r0, [r4, #0]
_02237802:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237804: .word 0x0223F550
	thumb_func_end ov97_022377F0

	thumb_func_start ov97_02237808
ov97_02237808: ; 0x02237808
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r2, #0
	mov r1, #0
	mov r2, #0x54
	add r5, r0, #0
	add r7, r3, #0
	bl sub_020D5124
	mov r0, #1
	str r0, [r5, #4]
	str r0, [r5, #8]
	sub r0, r0, #2
	str r0, [r5, #0x4c]
	str r4, [r5, #0x10]
	str r6, [r5, #0x30]
	ldr r0, [sp, #0x18]
	str r7, [r5, #0x34]
	str r0, [r5, #0x38]
	ldr r0, [sp, #0x1c]
	mov r2, #0
	str r0, [r5, #0x3c]
	str r2, [r5, #0x2c]
	ldr r0, _02237854 ; =0x0001020F
	str r2, [r5, #0x40]
	str r0, [r5, #0x44]
	add r0, r5, #0
	mov r1, #0xf
	add r0, #0x48
	strb r1, [r0]
	str r2, [r5, #0]
	str r2, [r5, #0x24]
	str r2, [r5, #0x20]
	str r2, [r5, #0x14]
	mov r0, #0xff
	str r0, [r5, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237854: .word 0x0001020F
	thumb_func_end ov97_02237808

	thumb_func_start ov97_02237858
ov97_02237858: ; 0x02237858
	str r1, [r0, #0x18]
	str r2, [r0, #0x1c]
	str r3, [r0, #0x28]
	bx lr
	thumb_func_end ov97_02237858

	thumb_func_start ov97_02237860
ov97_02237860: ; 0x02237860
	str r1, [r0, #0]
	str r2, [r0, #0x40]
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02237860

	thumb_func_start ov97_02237868
ov97_02237868: ; 0x02237868
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02237868

	thumb_func_start ov97_02237870
ov97_02237870: ; 0x02237870
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	ldr r4, _02237958 ; =0x0223F550
	cmp r1, r0
	beq _0223794E
	ldr r0, [r5, #0x4c]
	cmp r0, r1
	beq _0223794E
	str r1, [r5, #0x4c]
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _0223789A
	add r1, r5, #0
	add r1, #0x48
	ldrb r1, [r1]
	ldr r0, [r5, #0x10]
	bl sub_0201ADA4
_0223789A:
	mov r0, #0
	ldr r1, [r5, #0x4c]
	mvn r0, r0
	cmp r1, r0
	beq _0223794E
	ldr r2, [r5, #0x34]
	ldr r3, [r4, #8]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	ldr r6, [r5, #0x14]
	str r0, [sp, #0x10]
	cmp r6, #0
	bne _022378C0
	ldr r0, [r4, #8]
	bl sub_0200B358
	add r6, r0, #0
_022378C0:
	ldr r1, [sp, #0x10]
	ldr r2, [r5, #0x4c]
	ldr r3, [r4, #8]
	add r0, r6, #0
	bl sub_0200B29C
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _022378F4
	ldr r0, [r5, #0x24]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x40]
	ldr r3, [r5, #0x20]
	bl sub_0201D78C
	add r7, r0, #0
	b _02237936
_022378F4:
	ldr r0, [r5, #0x40]
	mov r1, #2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02002DF8
	add r2, r0, #0
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl sub_02002D7C
	add r7, r0, #0
	ldr r0, [r5, #0x10]
	bl sub_0201C294
	lsl r0, r0, #3
	sub r3, r0, r7
	ldr r0, [r5, #0x24]
	add r2, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0x50]
	str r0, [sp, #4]
	ldr r0, [r5, #0x44]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x40]
	bl sub_0201D78C
	add r7, r0, #0
	mov r0, #0
	str r0, [r5, #0xc]
_02237936:
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02237948
	add r0, r6, #0
	bl sub_0200B3F0
_02237948:
	ldr r0, [sp, #0x10]
	bl sub_0200B190
_0223794E:
	mov r0, #0xff
	str r0, [r5, #0x50]
	add r0, r7, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02237958: .word 0x0223F550
	thumb_func_end ov97_02237870

	thumb_func_start ov97_0223795C
ov97_0223795C: ; 0x0223795C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, [r4, #0x10]
	add r6, r2, #0
	ldr r2, [r1, #0]
	add r5, r3, #0
	cmp r2, #0
	bne _022379AE
	lsl r2, r5, #0x18
	lsr r2, r2, #0x18
	str r2, [sp]
	ldr r2, [r4, #0x18]
	lsl r3, r6, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	ldr r2, [r4, #0x1c]
	lsr r3, r3, #0x18
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #8]
	ldr r2, [r4, #0x30]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #0xc]
	ldr r2, [r4, #0x28]
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	str r2, [sp, #0x10]
	ldr r2, [r4, #0x2c]
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_0201A7E8
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov97_02237870
	add r5, r0, #0
	b _022379DC
_022379AE:
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _022379C0
	add r0, r1, #0
	lsl r1, r6, #0x18
	lsr r1, r1, #0x18
	bl sub_0201C2AC
_022379C0:
	mov r0, #0
	mvn r0, r0
	cmp r5, r0
	beq _022379D2
	lsl r1, r5, #0x18
	ldr r0, [r4, #0x10]
	lsr r1, r1, #0x18
	bl sub_0201C2B0
_022379D2:
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	bl ov97_02237870
	add r5, r0, #0
_022379DC:
	ldr r0, [r4, #4]
	cmp r0, #1
	bne _02237A10
	ldr r0, [r4, #0]
	cmp r0, #0
	ldr r0, [r4, #0x10]
	bne _022379FE
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200DC48
	b _02237A10
_022379FE:
	ldr r2, [r4, #0x38]
	ldr r3, [r4, #0x3c]
	lsl r2, r2, #0x10
	lsl r3, r3, #0x18
	mov r1, #0
	lsr r2, r2, #0x10
	lsr r3, r3, #0x18
	bl sub_0200E060
_02237A10:
	add r0, r5, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov97_0223795C

	thumb_func_start ov97_02237A18
ov97_02237A18: ; 0x02237A18
	ldr r1, [r0, #0x18]
	ldr r0, [r0, #0x1c]
	mul r0, r1
	bx lr
	thumb_func_end ov97_02237A18

	thumb_func_start ov97_02237A20
ov97_02237A20: ; 0x02237A20
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02237A58 ; =0x0223DA9C
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, _02237A5C ; =0x0223F550
	mov r1, #0x10
	ldr r0, [r0, #8]
	str r0, [sp, #0xc]
	add r0, r2, #0
	add r2, r1, #0
	bl sub_0201E88C
	ldr r1, _02237A5C ; =0x0223F550
	mov r0, #0x1e
	ldr r1, [r1, #8]
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_02237A58: .word 0x0223DA9C
_02237A5C: .word 0x0223F550
	thumb_func_end ov97_02237A20

	thumb_func_start ov97_02237A60
ov97_02237A60: ; 0x02237A60
	ldr r0, _02237A70 ; =0x0223F550
	ldr r0, [r0, #0x34]
	cmp r0, #0
	beq _02237A6C
	mov r0, #1
	bx lr
_02237A6C:
	mov r0, #0
	bx lr
	; .align 2, 0
_02237A70: .word 0x0223F550
	thumb_func_end ov97_02237A60

	thumb_func_start ov97_02237A74
ov97_02237A74: ; 0x02237A74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r6, _02237ADC ; =0x0223F550
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	ldr r2, _02237AE0 ; =0x0223F550
	str r3, [sp, #0xc]
	ldr r2, [r2, #8]
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	ldr r2, _02237AE0 ; =0x0223F550
	ldr r1, _02237AE4 ; =0x0223F588
	ldr r2, [r2, #8]
	mov r0, #0x80
	bl sub_020095C4
	ldr r1, _02237AE0 ; =0x0223F550
	mov r2, #1
	str r0, [r1, #0x34]
	ldr r0, _02237AE4 ; =0x0223F588
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r1, #3
	mov r7, #0x16
	ldr r0, _02237AE8 ; =0x0223F750
	lsl r1, r1, #0x12
	str r1, [r0, #0x10]
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #4
_02237AC4:
	ldr r2, [r6, #8]
	mov r0, #0x20
	add r1, r4, #0
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02237AC4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02237ADC: .word 0x0223F550
_02237AE0: .word 0x0223F550
_02237AE4: .word 0x0223F588
_02237AE8: .word 0x0223F750
	thumb_func_end ov97_02237A74

	thumb_func_start ov97_02237AEC
ov97_02237AEC: ; 0x02237AEC
	push {r4, lr}
	ldr r0, _02237B04 ; =0x0223F550
	ldr r4, _02237B08 ; =0x0223F550
	ldr r0, [r0, #0x34]
	cmp r0, #0
	bne _02237AFC
	bl sub_02022974
_02237AFC:
	add r4, #0x34
	add r0, r4, #0
	pop {r4, pc}
	nop
_02237B04: .word 0x0223F550
_02237B08: .word 0x0223F550
	thumb_func_end ov97_02237AEC

	thumb_func_start ov97_02237B0C
ov97_02237B0C: ; 0x02237B0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r4, [sp, #0x54]
	add r6, r0, #0
	mov ip, r1
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	ldr r5, _02237C78 ; =0x0223F550
	cmp r4, #0
	bne _02237B24
	mov r7, #1
	b _02237B26
_02237B24:
	mov r7, #2
_02237B26:
	mov r0, #1
	str r0, [sp, #0x34]
	cmp r6, #0x10
	bne _02237B32
	mov r0, #0
	str r0, [sp, #0x34]
_02237B32:
	mov r1, #0
	mvn r1, r1
	mov r0, ip
	cmp r0, r1
	beq _02237B60
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x34]
	str r0, [sp, #8]
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r2, ip
	bl sub_0200985C
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r2, r1]
_02237B60:
	mov r1, #0
	ldr r0, [sp, #0x2c]
	mvn r1, r1
	cmp r0, r1
	beq _02237B92
	str r4, [sp]
	str r7, [sp, #4]
	mov r0, #3
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x2c]
	str r0, [sp, #0xc]
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	mov r3, #0
	bl sub_020098B8
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r2, r1]
_02237B92:
	mov r1, #0
	ldr r0, [sp, #0x30]
	mvn r1, r1
	cmp r0, r1
	beq _02237BC2
	str r4, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r2, [sp, #0x30]
	str r0, [sp, #8]
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x34]
	add r1, r6, #0
	bl sub_02009918
	mov r1, #0x18
	add r2, r4, #0
	mul r2, r1
	add r2, r5, r2
	lsl r1, r1, #4
	str r0, [r2, r1]
_02237BC2:
	mov r0, #0
	ldr r2, [sp, #0x50]
	mvn r0, r0
	cmp r2, r0
	beq _02237BF0
	str r4, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	ldr r3, [sp, #0x34]
	str r0, [sp, #8]
	mov r0, #0x5b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_02009918
	mov r1, #0x18
	mul r1, r4
	add r2, r5, r1
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r2, r1]
_02237BF0:
	mov r0, #0x18
	add r6, r4, #0
	mul r6, r0
	mov r0, #0x5e
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A328
	mov r0, #0x5f
	add r1, r5, r6
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_0200A640
	mov r0, #0
	mov r2, #0x16
	str r4, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r2, r2, #4
	ldr r1, [r5, r2]
	add r3, r4, #0
	str r1, [sp, #0x14]
	add r1, r2, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x18]
	add r1, r2, #0
	add r1, #8
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	add r1, r2, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	add r2, #0x48
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #0x24
	add r1, r5, r2
	mul r0, r4
	add r0, r1, r0
	add r1, r4, #0
	add r2, r4, #0
	bl sub_020093B4
	cmp r4, #0
	bne _02237C62
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	b _02237C6A
_02237C62:
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
_02237C6A:
	ldr r0, _02237C7C ; =ov97_02237E58
	mov r1, #0
	bl sub_02017798
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237C78: .word 0x0223F550
_02237C7C: .word ov97_02237E58
	thumb_func_end ov97_02237B0C

	thumb_func_start ov97_02237C80
ov97_02237C80: ; 0x02237C80
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	add r1, r2, #0
	ldr r0, _02237C98 ; =0x0223F588
	add r2, r4, #0
	bl sub_0200964C
	ldr r0, _02237C9C ; =0x0223F750
	str r4, [r0, #0x10]
	pop {r4, pc}
	nop
_02237C98: .word 0x0223F588
_02237C9C: .word 0x0223F750
	thumb_func_end ov97_02237C80

	thumb_func_start ov97_02237CA0
ov97_02237CA0: ; 0x02237CA0
	ldr r3, _02237CA8 ; =ov97_02237CAC
	mov r0, #0
	bx r3
	nop
_02237CA8: .word ov97_02237CAC
	thumb_func_end ov97_02237CA0

	thumb_func_start ov97_02237CAC
ov97_02237CAC: ; 0x02237CAC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _02237D0C ; =0x0223F750
	ldr r4, _02237D10 ; =0x0223F550
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02237D00
	mov r0, #0x83
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02237CFC
	sub r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_02021D34
	cmp r0, #0
	bne _02237CE0
	cmp r5, #0
	bne _02237CE0
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
_02237CE0:
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021D28
	mov r1, #6
	ldr r2, [r0, #4]
	lsl r1, r1, #0x12
	cmp r2, r1
	bge _02237D00
	lsr r1, r1, #7
	add r1, r2, r1
	str r1, [r0, #4]
	b _02237D00
_02237CFC:
	sub r1, r1, #1
	str r1, [r4, r0]
_02237D00:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _02237D0A
	bl sub_020219F8
_02237D0A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237D0C: .word 0x0223F750
_02237D10: .word 0x0223F550
	thumb_func_end ov97_02237CAC

	thumb_func_start ov97_02237D14
ov97_02237D14: ; 0x02237D14
	push {r3, r4, r5, lr}
	sub sp, #0x30
	add r4, r1, #0
	ldr r1, _02237D9C ; =0x0223F550
	bne _02237D76
	ldr r4, [r1, #0x34]
	lsl r2, r2, #0xc
	str r4, [sp]
	mov r4, #0x6a
	lsl r4, r4, #2
	add r5, r1, r4
	mov r4, #0x24
	mul r4, r0
	add r4, r5, r4
	str r4, [sp, #4]
	mov r4, #1
	lsl r4, r4, #0xc
	mov r5, #0
	str r5, [sp, #0x10]
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x1c]
	add r4, sp, #0
	strh r5, [r4, #0x20]
	str r2, [sp, #8]
	lsl r2, r3, #0xc
	str r2, [sp, #0xc]
	mov r2, #0xa
	str r2, [sp, #0x24]
	cmp r0, #0
	bne _02237D56
	mov r2, #1
	b _02237D58
_02237D56:
	mov r2, #2
_02237D58:
	ldr r0, [r1, #8]
	str r2, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r2, #2
	bne _02237D6E
	mov r0, #0x21
	lsl r0, r0, #4
	ldr r2, [sp, #0xc]
	ldr r0, [r1, r0]
	add r0, r2, r0
	str r0, [sp, #0xc]
_02237D6E:
	add r0, sp, #0
	bl sub_02021AA0
	add r4, r0, #0
_02237D76:
	add r0, r4, #0
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	mov r1, #0
	bl sub_02021E80
	ldr r1, [sp, #0x40]
	add r0, r4, #0
	bl sub_02021D6C
	add r0, r4, #0
	mov r1, #1
	bl sub_02021CAC
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02237D9C: .word 0x0223F550
	thumb_func_end ov97_02237D14

	thumb_func_start ov97_02237DA0
ov97_02237DA0: ; 0x02237DA0
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02237E40 ; =0x0223F750
	ldr r4, _02237E44 ; =0x0223F550
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02237DBE
	mov r0, #0x82
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02021BD4
	mov r0, #0x82
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02237DBE:
	mov r1, #0x51
	ldr r0, _02237E48 ; =0x0223F584
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DCE
	bl sub_0200A4E4
_02237DCE:
	mov r1, #0x57
	ldr r0, _02237E48 ; =0x0223F584
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DDE
	bl sub_0200A4E4
_02237DDE:
	mov r1, #0x52
	ldr r0, _02237E48 ; =0x0223F584
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DEE
	bl sub_0200A6DC
_02237DEE:
	mov r1, #0x16
	ldr r0, _02237E48 ; =0x0223F584
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02237DFE
	bl sub_0200A6DC
_02237DFE:
	mov r4, #0
	mov r7, #0x4b
	ldr r5, _02237E48 ; =0x0223F584
	add r6, r4, #0
	lsl r7, r7, #2
_02237E08:
	mov r0, #0x4b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02009754
	str r6, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02237E08
	ldr r0, _02237E48 ; =0x0223F584
	ldr r0, [r0, #0]
	bl sub_02021964
	ldr r0, _02237E48 ; =0x0223F584
	mov r1, #0
	str r1, [r0, #0]
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237E40: .word 0x0223F750
_02237E44: .word 0x0223F550
_02237E48: .word 0x0223F584
	thumb_func_end ov97_02237DA0

	thumb_func_start ov97_02237E4C
ov97_02237E4C: ; 0x02237E4C
	mov r1, #1
	sub r0, #0xa
	lsl r1, r0
	add r0, r1, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02237E4C

	thumb_func_start ov97_02237E58
ov97_02237E58: ; 0x02237E58
	push {r4, lr}
	ldr r0, _02237E94 ; =0x022403D0
	ldr r4, _02237E98 ; =0x0223F550
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _02237E72
	ldr r1, _02237E9C ; =0x00000EA4
	add r0, r4, #0
	ldr r1, [r4, r1]
	blx r1
	ldr r0, _02237E9C ; =0x00000EA4
	mov r1, #0
	str r1, [r4, r0]
_02237E72:
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _02237E84
	bl sub_0201C2B8
_02237E84:
	ldr r3, _02237EA0 ; =0x027E0000
	ldr r1, _02237EA4 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02237E94: .word 0x022403D0
_02237E98: .word 0x0223F550
_02237E9C: .word 0x00000EA4
_02237EA0: .word 0x027E0000
_02237EA4: .word 0x00003FF8
	thumb_func_end ov97_02237E58

	thumb_func_start ov97_02237EA8
ov97_02237EA8: ; 0x02237EA8
	push {r3, r4}
	sub sp, #0x20
	ldr r4, _02237EF4 ; =0x0223DAC8
	add r3, sp, #0
	mov r2, #0x1e
_02237EB2:
	ldrb r1, [r4]
	add r4, r4, #1
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _02237EB2
	add r1, sp, #0
	ldrb r2, [r1]
	mov r3, #0
	sub r1, r3, #1
	cmp r2, r1
	beq _02237EEC
	add r4, sp, #0
	sub r1, r3, #1
_02237ECE:
	ldrb r2, [r4]
	cmp r0, r2
	bne _02237EE2
	add r0, sp, #0
	lsl r1, r3, #1
	add r0, #1
	add sp, #0x20
	ldrb r0, [r0, r1]
	pop {r3, r4}
	bx lr
_02237EE2:
	add r4, r4, #2
	ldrb r2, [r4]
	add r3, r3, #1
	cmp r2, r1
	bne _02237ECE
_02237EEC:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4}
	bx lr
	; .align 2, 0
_02237EF4: .word 0x0223DAC8
	thumb_func_end ov97_02237EA8

	thumb_func_start ov97_02237EF8
ov97_02237EF8: ; 0x02237EF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r1, #0
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r5, r2, #0
	add r7, r3, #0
	ldr r4, [sp, #0x44]
	bl sub_02075D6C
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl sub_02075E0C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	lsl r0, r7, #0x18
	ldr r2, [sp, #0x24]
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0
	lsl r1, r5, #0x10
	lsl r2, r2, #0x18
	str r0, [sp, #8]
	add r0, r4, #0
	lsr r1, r1, #0x10
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_02075FB4
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl sub_02074470
	mov r3, #0
	str r3, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x40]
	ldr r2, _02237FB0 ; =0x0223F550
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r0, #2
	str r0, [sp, #0x18]
	str r5, [sp, #0x1c]
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, [r2, #8]
	bl sub_020136A4
	mov r1, #0x32
	ldr r0, [sp, #0x40]
	lsl r1, r1, #6
	bl sub_020C2C54
	ldr r0, [sp, #0x20]
	bl sub_02021F98
	mov r1, #2
	bl sub_020A81B0
	mov r2, #0x32
	add r1, r0, #0
	lsl r2, r2, #6
	ldr r0, [sp, #0x40]
	add r1, r1, r2
	bl sub_020C0314
	ldr r0, [sp, #0x20]
	bl sub_02021F9C
	mov r1, #2
	bl sub_020A81FC
	add r3, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _02237FB0 ; =0x0223F550
	mov r2, #5
	ldr r0, [r0, #8]
	add r3, #0x60
	str r0, [sp, #4]
	ldrh r0, [r4]
	ldrh r1, [r4, #4]
	bl sub_02006E84
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02237FB0: .word 0x0223F550
	thumb_func_end ov97_02237EF8

	thumb_func_start ov97_02237FB4
ov97_02237FB4: ; 0x02237FB4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x21
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x23
	mov r2, #0x20
	mov r3, #0x22
	bl ov97_02237B0C
	mov r1, #1
	mov r0, #0
	lsl r1, r1, #0x14
	bl ov97_02237C80
	mov r3, #0
	mov r1, #0x82
	str r3, [sp]
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #1
	mov r2, #0x80
	bl ov97_02237D14
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov97_02237FB4

	thumb_func_start ov97_02237FF4
ov97_02237FF4: ; 0x02237FF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0xc
	str r0, [sp]
	mov r0, #1
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp, #4]
	mov r0, #0x36
	mov r1, #0xa
	mov r2, #0
	mov r3, #0xb
	bl ov97_02237B0C
	mov r1, #1
	mov r0, #0
	lsl r1, r1, #0x14
	bl ov97_02237C80
	mov r0, #1
	mov r1, #0x82
	str r0, [sp]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r2, #0x80
	mov r3, #0
	bl ov97_02237D14
	mov r2, #0x82
	lsl r2, r2, #2
	add r6, #8
	str r0, [r5, r2]
	cmp r4, #7
	bgt _0223804C
	cmp r4, #1
	blt _022380BE
	beq _02238050
	cmp r4, #2
	beq _02238086
	cmp r4, #7
	beq _022380A4
	add sp, #8
	pop {r4, r5, r6, pc}
_0223804C:
	cmp r4, #0xd
	bne _022380BE
_02238050:
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl sub_02074470
	mov r1, #0x85
	lsl r1, r1, #2
	add r3, r0, #0
	add r0, r5, r1
	str r0, [sp]
	ldr r0, _022380C4 ; =0x00000E94
	sub r1, #0xc
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	add r1, r6, #0
	add r2, r4, #0
	bl ov97_02237EF8
	add sp, #8
	pop {r4, r5, r6, pc}
_02238086:
	add r0, r2, #0
	add r0, #0xc
	add r0, r5, r0
	str r0, [sp]
	ldr r0, _022380C4 ; =0x00000E94
	add r1, r6, #0
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	sub r2, #0x1a
	mov r3, #0
	bl ov97_02237EF8
	add sp, #8
	pop {r4, r5, r6, pc}
_022380A4:
	add r0, r2, #0
	add r0, #0xc
	add r0, r5, r0
	str r0, [sp]
	ldr r0, _022380C4 ; =0x00000E94
	add r1, r6, #0
	add r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [r5, r2]
	sub r2, #0x1a
	mov r3, #1
	bl ov97_02237EF8
_022380BE:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022380C4: .word 0x00000E94
	thumb_func_end ov97_02237FF4

	thumb_func_start ov97_022380C8
ov97_022380C8: ; 0x022380C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	cmp r1, #0xc
	bhi _0223810C
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022380DE: ; jump table
	.short _0223810C - _022380DE - 2 ; case 0
	.short _0223810C - _022380DE - 2 ; case 1
	.short _0223810C - _022380DE - 2 ; case 2
	.short _022380F8 - _022380DE - 2 ; case 3
	.short _0223810C - _022380DE - 2 ; case 4
	.short _0223810C - _022380DE - 2 ; case 5
	.short _0223810C - _022380DE - 2 ; case 6
	.short _0223810C - _022380DE - 2 ; case 7
	.short _022380FC - _022380DE - 2 ; case 8
	.short _02238100 - _022380DE - 2 ; case 9
	.short _02238106 - _022380DE - 2 ; case 10
	.short _0223810C - _022380DE - 2 ; case 11
	.short _0223810A - _022380DE - 2 ; case 12
_022380F8:
	ldr r4, [r2, #4]
	b _0223810C
_022380FC:
	ldr r4, _02238168 ; =0x000001C6
	b _0223810C
_02238100:
	mov r4, #0x71
	lsl r4, r4, #2
	b _0223810C
_02238106:
	ldr r4, _0223816C ; =0x000001C7
	b _0223810C
_0223810A:
	ldr r4, _02238170 ; =0x000001D3
_0223810C:
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #1
	bl sub_0207CE78
	add r7, r0, #0
	lsl r0, r4, #0x10
	lsr r0, r0, #0x10
	mov r1, #2
	bl sub_0207CE78
	add r4, r0, #0
	bl sub_0207CF40
	add r6, r0, #0
	bl sub_0207CF44
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x10
	add r1, r7, #0
	add r2, r4, #0
	add r3, r6, #0
	bl ov97_02237B0C
	mov r1, #1
	mov r0, #0
	lsl r1, r1, #0x14
	bl ov97_02237C80
	mov r3, #0
	mov r1, #0x82
	str r3, [sp]
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	mov r0, #1
	mov r2, #0x80
	bl ov97_02237D14
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02238168: .word 0x000001C6
_0223816C: .word 0x000001C7
_02238170: .word 0x000001D3
	thumb_func_end ov97_022380C8

	thumb_func_start ov97_02238174
ov97_02238174: ; 0x02238174
	push {r3, lr}
	sub sp, #8
	mov r1, #0xc0
	str r1, [sp]
	ldr r0, [r0, #8]
	mov r2, #4
	add r3, r2, #0
	str r0, [sp, #4]
	mov r0, #0x74
	mov r1, #0x1d
	add r3, #0xfc
	bl sub_02006E84
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02238174

	thumb_func_start ov97_02238194
ov97_02238194: ; 0x02238194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	ldrh r4, [r6]
	add r5, r0, #0
	add r0, r4, #0
	bl ov97_02237EA8
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	ldr r0, _0223828C ; =0x0223F550
	mov r1, #0x1e
	ldr r0, [r0, #8]
	add r2, r5, #0
	str r0, [sp, #0xc]
	mov r0, #0x74
	mov r3, #5
	bl sub_02006E3C
	mov r2, #1
	ldr r3, _0223828C ; =0x0223F550
	str r2, [sp]
	ldr r3, [r3, #8]
	mov r0, #0x74
	mov r1, #0x1f
	bl sub_02006FE8
	add r1, sp, #0x14
	str r0, [sp, #0x10]
	bl sub_020A7248
	ldr r2, [sp, #0x14]
	mov r3, #6
	add r0, r5, #0
	mov r1, #5
	add r2, #0xc
	lsl r3, r3, #8
	bl sub_02019574
	ldr r0, [sp, #0x10]
	bl sub_020181C4
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	mov r2, #0
	add r7, #8
	str r0, [sp, #4]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019E2C
	add r0, r5, #0
	mov r1, #5
	bl sub_0201C3C0
	ldr r1, _02238290 ; =ov97_02238174
	ldr r0, _02238294 ; =0x022403D0
	cmp r4, #0xd
	str r1, [r0, #0x24]
	ldr r0, _0223828C ; =0x0223F550
	str r5, [r0, #0]
	bhi _0223827A
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02238232: ; jump table
	.short _0223827A - _02238232 - 2 ; case 0
	.short _02238264 - _02238232 - 2 ; case 1
	.short _02238264 - _02238232 - 2 ; case 2
	.short _02238270 - _02238232 - 2 ; case 3
	.short _0223824E - _02238232 - 2 ; case 4
	.short _0223824E - _02238232 - 2 ; case 5
	.short _0223824E - _02238232 - 2 ; case 6
	.short _0223825A - _02238232 - 2 ; case 7
	.short _02238270 - _02238232 - 2 ; case 8
	.short _02238270 - _02238232 - 2 ; case 9
	.short _02238270 - _02238232 - 2 ; case 10
	.short _0223824E - _02238232 - 2 ; case 11
	.short _02238270 - _02238232 - 2 ; case 12
	.short _02238264 - _02238232 - 2 ; case 13
_0223824E:
	ldr r0, _02238298 ; =0x0223F550
	add r1, r4, #0
	add r2, r6, #0
	bl ov97_02237FB4
	b _0223827A
_0223825A:
	mov r1, #0x83
	ldr r0, _02238298 ; =0x0223F550
	mov r2, #0x78
	lsl r1, r1, #2
	str r2, [r0, r1]
_02238264:
	ldr r0, _02238298 ; =0x0223F550
	add r1, r4, #0
	add r2, r6, #0
	bl ov97_02237FF4
	b _0223827A
_02238270:
	ldr r0, _02238298 ; =0x0223F550
	add r1, r4, #0
	add r2, r6, #0
	bl ov97_022380C8
_0223827A:
	mov r1, #0x82
	ldr r0, _02238298 ; =0x0223F550
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	mov r1, #0
	bl sub_02021CAC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223828C: .word 0x0223F550
_02238290: .word ov97_02238174
_02238294: .word 0x022403D0
_02238298: .word 0x0223F550
	thumb_func_end ov97_02238194

	thumb_func_start ov97_0223829C
ov97_0223829C: ; 0x0223829C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r0, r2, #0
	lsl r1, r1, #8
	str r2, [sp]
	bl sub_02018144
	ldr r1, _0223831C ; =0x0000A001
	add r4, r0, #0
	bl sub_020D316C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x50
	bl sub_020D32D4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	add r0, sp, #4
	bl sub_020C3FA0
	add r0, sp, #4
	ldrh r1, [r0, #2]
	mov r2, #0
	add r3, sp, #4
	strh r1, [r0, #6]
	ldr r1, _02238320 ; =0x0000D679
	strh r6, [r0, #2]
_022382DE:
	ldrh r0, [r3]
	add r2, r2, #1
	eor r0, r1
	strh r0, [r3]
	ldrh r1, [r3]
	add r3, r3, #2
	cmp r2, #4
	blt _022382DE
	mov r1, #0x41
	ldr r0, [sp]
	lsl r1, r1, #2
	bl sub_02018144
	add r1, sp, #4
	mov r2, #8
	add r4, r0, #0
	bl sub_020A49A4
	add r5, #0x50
	mov r2, #0xd6
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #2
	add r3, r7, #0
	bl ov97_02239420
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223831C: .word 0x0000A001
_02238320: .word 0x0000D679
	thumb_func_end ov97_0223829C

	thumb_func_start ov97_02238324
ov97_02238324: ; 0x02238324
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r1, #0
	mov r1, #2
	add r5, r0, #0
	add r0, r2, #0
	lsl r1, r1, #8
	str r2, [sp]
	bl sub_02018144
	ldr r1, _022383BC ; =0x0000A001
	add r4, r0, #0
	bl sub_020D316C
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #0x50
	bl sub_020D32D4
	add r6, r0, #0
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	bl sub_02033F3C
	ldrb r2, [r0, #4]
	add r1, sp, #4
	mov r3, #0
	strb r2, [r1]
	ldrb r2, [r0, #5]
	strb r2, [r1, #1]
	ldrb r2, [r0, #6]
	strb r2, [r1, #2]
	ldrb r2, [r0, #7]
	strb r2, [r1, #3]
	ldrb r2, [r0, #8]
	strb r2, [r1, #4]
	ldrb r0, [r0, #9]
	strb r0, [r1, #5]
	add r0, sp, #4
	ldrh r2, [r0, #2]
	strh r2, [r0, #6]
	ldr r2, _022383C0 ; =0x0000D679
	strh r6, [r0, #2]
_0223837E:
	ldrh r0, [r1]
	add r3, r3, #1
	eor r0, r2
	strh r0, [r1]
	ldrh r2, [r1]
	add r1, r1, #2
	cmp r3, #4
	blt _0223837E
	mov r1, #0x41
	ldr r0, [sp]
	lsl r1, r1, #2
	bl sub_02018144
	add r1, sp, #4
	mov r2, #8
	add r4, r0, #0
	bl sub_020A49A4
	add r5, #0x50
	mov r2, #0xd6
	add r0, r4, #0
	add r1, r5, #0
	lsl r2, r2, #2
	add r3, r7, #0
	bl ov97_02239420
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_022383BC: .word 0x0000A001
_022383C0: .word 0x0000D679
	thumb_func_end ov97_02238324

	thumb_func_start ov97_022383C4
ov97_022383C4: ; 0x022383C4
	push {r3, lr}
	cmp r2, #0
	beq _022383CE
	cmp r2, #1
	pop {r3, pc}
_022383CE:
	ldr r0, _022383D8 ; =0x000005DC
	bl sub_02005748
	pop {r3, pc}
	nop
_022383D8: .word 0x000005DC
	thumb_func_end ov97_022383C4

	thumb_func_start ov97_022383DC
ov97_022383DC: ; 0x022383DC
	push {r3, lr}
	ldr r0, _022383FC ; =0x027FFFA8
	ldrh r1, [r0]
	mov r0, #2
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	bne _022383F8
	bl sub_020D08C0
	cmp r0, #0
	bne _022383F8
	bl sub_020D12E4
_022383F8:
	pop {r3, pc}
	nop
_022383FC: .word 0x027FFFA8
	thumb_func_end ov97_022383DC

	thumb_func_start ov97_02238400
ov97_02238400: ; 0x02238400
	push {r3, lr}
	cmp r0, #1
	bne _02238428
	ldr r1, _02238434 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #0
	strh r0, [r1]
	lsr r0, r1, #0xd
	ldr r1, _02238438 ; =ov97_022383DC
	bl sub_020C144C
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020C161C
	ldr r1, _02238434 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
_02238428:
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020C164C
	pop {r3, pc}
	nop
_02238434: .word 0x04000208
_02238438: .word ov97_022383DC
	thumb_func_end ov97_02238400

	thumb_func_start ov97_0223843C
ov97_0223843C: ; 0x0223843C
	bx lr
	; .align 2, 0
	thumb_func_end ov97_0223843C

	thumb_func_start ov97_02238440
ov97_02238440: ; 0x02238440
	push {r3, lr}
	ldr r1, _02238464 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #0
	strh r0, [r1]
	lsr r0, r1, #0xd
	ldr r1, _02238468 ; =ov97_0223843C
	bl sub_020C144C
	mov r0, #2
	lsl r0, r0, #0xc
	bl sub_020C161C
	ldr r1, _02238464 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
	; .align 2, 0
_02238464: .word 0x04000208
_02238468: .word ov97_0223843C
	thumb_func_end ov97_02238440

	thumb_func_start ov97_0223846C
ov97_0223846C: ; 0x0223846C
	ldr r1, _02238478 ; =0x0223F550
	str r0, [r1, #0x18]
	mov r0, #0
	str r0, [r1, #0x14]
	bx lr
	nop
_02238478: .word 0x0223F550
	thumb_func_end ov97_0223846C

	thumb_func_start ov97_0223847C
ov97_0223847C: ; 0x0223847C
	push {r3, r4, r5, lr}
	ldr r0, _022384EC ; =0x0223F550
	ldr r4, _022384F0 ; =0x0223F550
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bhi _022384E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02238494: ; jump table
	.short _0223849E - _02238494 - 2 ; case 0
	.short _022384B4 - _02238494 - 2 ; case 1
	.short _022384E8 - _02238494 - 2 ; case 2
	.short _022384E8 - _02238494 - 2 ; case 3
	.short _022384E8 - _02238494 - 2 ; case 4
_0223849E:
	mov r0, #4
	bl sub_02017DE0
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_02024814
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
	b _022384E8
_022384B4:
	ldr r0, [r4, #0x18]
	bl sub_02024828
	add r5, r0, #0
	cmp r5, #3
	bne _022384C6
	mov r0, #3
	str r0, [r4, #0x14]
	b _022384D8
_022384C6:
	cmp r5, #2
	bne _022384D0
	mov r0, #2
	str r0, [r4, #0x14]
	b _022384D8
_022384D0:
	cmp r5, #1
	bne _022384D8
	mov r0, #4
	str r0, [r4, #0x14]
_022384D8:
	sub r0, r5, #2
	cmp r0, #1
	bhi _022384E4
	mov r0, #4
	bl sub_02017DF0
_022384E4:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
_022384E8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022384EC: .word 0x0223F550
_022384F0: .word 0x0223F550
	thumb_func_end ov97_0223847C

	thumb_func_start ov97_022384F4
ov97_022384F4: ; 0x022384F4
	ldr r0, _02238504 ; =0x0223F550
	ldr r1, _02238508 ; =0x0223F550
	ldr r0, [r0, #0x14]
	cmp r0, #4
	bne _02238502
	mov r0, #1
	str r0, [r1, #0x14]
_02238502:
	bx lr
	; .align 2, 0
_02238504: .word 0x0223F550
_02238508: .word 0x0223F550
	thumb_func_end ov97_022384F4

	thumb_func_start ov97_0223850C
ov97_0223850C: ; 0x0223850C
	push {r3, lr}
	ldr r0, _02238524 ; =0x0223F550
	ldr r0, [r0, #0x18]
	bl sub_02024850
	ldr r0, _02238524 ; =0x0223F550
	mov r1, #3
	str r1, [r0, #0x14]
	mov r0, #4
	bl sub_02017DF0
	pop {r3, pc}
	; .align 2, 0
_02238524: .word 0x0223F550
	thumb_func_end ov97_0223850C

	thumb_func_start ov97_02238528
ov97_02238528: ; 0x02238528
	ldr r0, _02238530 ; =0x0223F550
	ldr r0, [r0, #0x14]
	bx lr
	nop
_02238530: .word 0x0223F550
	thumb_func_end ov97_02238528

	thumb_func_start ov97_02238534
ov97_02238534: ; 0x02238534
	push {r4, lr}
	ldr r1, _02238570 ; =0x022403F8
	add r4, r0, #0
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _02238550
	ldr r3, [r1, #0]
	ldr r1, _02238574 ; =0x00001150
	ldr r0, _02238578 ; =0x0223F10C
	ldr r1, [r3, r1]
	lsl r3, r1, #2
	ldr r1, _0223857C ; =0x0223F0E4
	ldr r1, [r1, r3]
	blx r2
_02238550:
	ldr r3, _02238570 ; =0x022403F8
	ldr r1, _02238574 ; =0x00001150
	ldr r0, [r3, #0]
	str r4, [r0, r1]
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _0223856C
	ldr r3, [r3, #0]
	ldr r0, _02238580 ; =0x0223F114
	ldr r1, [r3, r1]
	lsl r3, r1, #2
	ldr r1, _0223857C ; =0x0223F0E4
	ldr r1, [r1, r3]
	blx r2
_0223856C:
	pop {r4, pc}
	nop
_02238570: .word 0x022403F8
_02238574: .word 0x00001150
_02238578: .word 0x0223F10C
_0223857C: .word 0x0223F0E4
_02238580: .word 0x0223F114
	thumb_func_end ov97_02238534

	thumb_func_start ov97_02238584
ov97_02238584: ; 0x02238584
	ldr r1, _02238598 ; =0x022403F8
	ldr r3, [r1, #0]
	ldr r1, _0223859C ; =0x00001150
	ldr r2, [r3, r1]
	sub r2, #9
	cmp r2, #1
	bls _02238596
	add r1, r1, #4
	str r0, [r3, r1]
_02238596:
	bx lr
	; .align 2, 0
_02238598: .word 0x022403F8
_0223859C: .word 0x00001150
	thumb_func_end ov97_02238584

	thumb_func_start ov97_022385A0
ov97_022385A0: ; 0x022385A0
	push {r4, lr}
	ldr r0, _0223860C ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238610 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #4
	bne _022385B2
	bl sub_020C42A8
_022385B2:
	mov r0, #2
	bl ov97_02238534
	ldr r3, _0223860C ; =0x022403F8
	ldr r0, _02238614 ; =0x0000FFFF
	ldr r2, [r3, #0]
	ldr r1, _02238618 ; =0x00000FCC
	strh r0, [r2, r1]
	sub r2, r1, #2
	ldr r4, [r3, #0]
	sub r1, r1, #4
	strh r0, [r4, r2]
	ldr r2, [r3, #0]
	strh r0, [r2, r1]
	bl ov97_02238624
	cmp r0, #0
	bne _022385F0
	mov r0, #9
	bl ov97_02238534
	ldr r0, _0223860C ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _0223861C ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022385EC
	mov r0, #4
	blx r1
_022385EC:
	mov r0, #0
	pop {r4, pc}
_022385F0:
	ldr r1, _0223860C ; =0x022403F8
	ldr r0, _02238620 ; =0x00001158
	ldr r2, [r1, #0]
	mov r3, #2
	strh r3, [r2, r0]
	ldr r1, [r1, #0]
	add r0, #0x24
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238608
	mov r0, #0
	blx r1
_02238608:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0223860C: .word 0x022403F8
_02238610: .word 0x00001150
_02238614: .word 0x0000FFFF
_02238618: .word 0x00000FCC
_0223861C: .word 0x0000117C
_02238620: .word 0x00001158
	thumb_func_end ov97_022385A0

	thumb_func_start ov97_02238624
ov97_02238624: ; 0x02238624
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _022386FC ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238700 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _02238638
	bl sub_020C42A8
	mov r0, #0
_02238638:
	bl sub_020CE7F4
	add r4, r0, #0
	mov r0, #2
	lsl r0, r0, #0xe
	cmp r4, r0
	bne _02238650
	mov r0, #3
	bl ov97_02238584
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02238650:
	cmp r4, #0
	bne _0223865E
	mov r0, #0x16
	bl ov97_02238584
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0223865E:
	ldr r0, _022386FC ; =0x022403F8
	ldr r2, [r0, #0]
	ldr r0, _02238704 ; =0x00001176
	ldrh r1, [r2, r0]
	cmp r1, #0x10
	blo _022386A0
	sub r1, #0x10
	mov r5, #0
	mov r7, #0xd
	mov r6, #1
	b _02238686
_02238674:
	add r0, r1, #1
	add r1, r7, #0
	bl sub_020E1F6C
	add r0, r6, #0
	lsl r0, r1
	tst r0, r4
	bne _0223868A
	add r5, r5, #1
_02238686:
	cmp r5, #0xd
	blt _02238674
_0223868A:
	ldr r2, _022386FC ; =0x022403F8
	add r4, r1, #0
	ldr r3, [r2, #0]
	ldr r0, _02238704 ; =0x00001176
	add r4, #0x10
	strh r4, [r3, r0]
	add r3, r1, #1
	ldr r1, [r2, #0]
	ldr r0, _02238708 ; =0x00000FC4
	strh r3, [r1, r0]
	b _022386A4
_022386A0:
	ldr r0, _02238708 ; =0x00000FC4
	strh r1, [r2, r0]
_022386A4:
	ldr r2, _022386FC ; =0x022403F8
	ldr r0, _0223870C ; =0x00000FC6
	ldr r1, [r2, #0]
	mov r3, #0xdc
	strh r3, [r1, r0]
	add r1, r0, #0
	ldr r3, [r2, #0]
	sub r1, #0xc6
	add r1, r3, r1
	sub r0, r0, #6
	str r1, [r3, r0]
	ldr r1, [r2, #0]
	ldr r0, _02238710 ; =0x00001158
	ldrh r0, [r1, r0]
	cmp r0, #3
	bne _022386DA
	mov r5, #0
	ldr r0, _02238714 ; =0x00001170
	ldr r1, _02238718 ; =0x00000FC8
	b _022386D6
_022386CC:
	ldr r3, [r2, #0]
	add r4, r3, r5
	ldrb r3, [r4, r0]
	add r5, r5, #1
	strb r3, [r4, r1]
_022386D6:
	cmp r5, #6
	blt _022386CC
_022386DA:
	ldr r1, _022386FC ; =0x022403F8
	ldr r0, _0223871C ; =ov97_02238720
	ldr r2, [r1, #0]
	mov r1, #0x3f
	lsl r1, r1, #6
	add r1, r2, r1
	bl sub_020CEFA0
	cmp r0, #2
	beq _022386F6
	bl ov97_02238584
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022386F6:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022386FC: .word 0x022403F8
_02238700: .word 0x00001150
_02238704: .word 0x00001176
_02238708: .word 0x00000FC4
_0223870C: .word 0x00000FC6
_02238710: .word 0x00001158
_02238714: .word 0x00001170
_02238718: .word 0x00000FC8
_0223871C: .word ov97_02238720
	thumb_func_end ov97_02238624

	thumb_func_start ov97_02238720
ov97_02238720: ; 0x02238720
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02238746
	bl ov97_02238584
	mov r0, #9
	bl ov97_02238534
	ldr r0, _02238834 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238838 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	mov r0, #4
	blx r1
	pop {r3, r4, r5, pc}
_02238746:
	ldr r0, _02238834 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _0223883C ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #2
	beq _02238772
	bl ov97_02238858
	cmp r0, #0
	bne _02238832
	mov r0, #9
	bl ov97_02238534
	ldr r0, _02238834 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238838 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	mov r0, #4
	blx r1
	pop {r3, r4, r5, pc}
_02238772:
	ldrh r0, [r4, #8]
	cmp r0, #3
	beq _02238832
	cmp r0, #4
	beq _02238814
	cmp r0, #5
	bne _02238814
	mov r0, #0xf
	lsl r0, r0, #8
	add r0, r1, r0
	mov r1, #0xc0
	bl sub_020C2C1C
	ldrh r0, [r4, #0x36]
	cmp r0, #8
	blo _0223879A
	ldr r1, [r4, #0x3c]
	ldr r0, _02238840 ; =0x00400318
	cmp r1, r0
	beq _022387AC
_0223879A:
	ldr r0, _02238834 ; =0x022403F8
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _02238814
	ldr r0, _02238844 ; =0x0223F118
	ldr r1, [r4, #0x3c]
	ldr r2, _02238840 ; =0x00400318
	blx r3
	b _02238814
_022387AC:
	ldr r1, _02238834 ; =0x022403F8
	ldrh r3, [r4, #0x12]
	ldr r2, [r1, #0]
	ldr r0, _02238848 ; =0x0000116C
	str r3, [r2, r0]
	ldr r1, [r1, #0]
	sub r0, #0x14
	ldrh r0, [r1, r0]
	cmp r0, #2
	bne _022387F8
	add r0, r4, #0
	add r0, #0x48
	bl ov97_02238AB4
	ldr r2, _02238834 ; =0x022403F8
	ldr r1, _0223884C ; =0x00001170
	mov r0, #0
_022387CE:
	add r3, r4, r0
	ldrb r5, [r3, #0xa]
	ldr r3, [r2, #0]
	add r3, r3, r0
	add r0, r0, #1
	strb r5, [r3, r1]
	cmp r0, #6
	blt _022387CE
	ldr r1, _02238834 ; =0x022403F8
	ldr r0, _02238850 ; =0x00001176
	ldr r3, [r1, #0]
	ldrh r2, [r3, r0]
	sub r2, #0xf
	strh r2, [r3, r0]
	ldr r1, [r1, #0]
	add r0, r0, #6
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022387F8
	mov r0, #1
	blx r1
_022387F8:
	add r4, #0x48
	add r0, r4, #0
	bl ov97_02238B34
	cmp r0, #0
	beq _02238814
	ldr r0, _02238834 ; =0x022403F8
	mov r2, #4
	ldr r1, [r0, #0]
	ldr r0, _02238854 ; =0x00001158
	strh r2, [r1, r0]
	bl ov97_022389C8
	pop {r3, r4, r5, pc}
_02238814:
	bl ov97_02238624
	cmp r0, #0
	bne _02238832
	mov r0, #9
	bl ov97_02238534
	ldr r0, _02238834 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238838 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238832
	mov r0, #4
	blx r1
_02238832:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238834: .word 0x022403F8
_02238838: .word 0x0000117C
_0223883C: .word 0x00001150
_02238840: .word 0x00400318
_02238844: .word 0x0223F118
_02238848: .word 0x0000116C
_0223884C: .word 0x00001170
_02238850: .word 0x00001176
_02238854: .word 0x00001158
	thumb_func_end ov97_02238720

	thumb_func_start ov97_02238858
ov97_02238858: ; 0x02238858
	push {r3, lr}
	ldr r0, _02238870 ; =ov97_02238874
	bl sub_020CF1DC
	cmp r0, #2
	beq _0223886C
	bl ov97_02238584
	mov r0, #0
	pop {r3, pc}
_0223886C:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_02238870: .word ov97_02238874
	thumb_func_end ov97_02238858

	thumb_func_start ov97_02238874
ov97_02238874: ; 0x02238874
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02238882
	bl ov97_02238584
	pop {r3, pc}
_02238882:
	mov r0, #1
	bl ov97_02238534
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov97_02238874

	thumb_func_start ov97_0223888C
ov97_0223888C: ; 0x0223888C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0223889C
	mov r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_0223889C:
	mov r0, #0
	bl ov97_02238534
	ldr r0, _022388B4 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _022388B8 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022388B2
	mov r0, #3
	blx r1
_022388B2:
	pop {r3, pc}
	; .align 2, 0
_022388B4: .word 0x022403F8
_022388B8: .word 0x0000117C
	thumb_func_end ov97_0223888C

	thumb_func_start ov97_022388BC
ov97_022388BC: ; 0x022388BC
	push {r3, lr}
	ldr r0, _022388D8 ; =0x022403F8
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r0, _022388DC ; =0x00001154
	str r2, [r1, r0]
	bl ov97_02238908
	cmp r0, #0
	beq _022388D4
	mov r0, #1
	pop {r3, pc}
_022388D4:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_022388D8: .word 0x022403F8
_022388DC: .word 0x00001154
	thumb_func_end ov97_022388BC

	thumb_func_start ov97_022388E0
ov97_022388E0: ; 0x022388E0
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #8
	bne _022388FE
	mov r0, #9
	bl ov97_02238534
	ldr r0, _02238900 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238904 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022388FE
	mov r0, #4
	blx r1
_022388FE:
	pop {r3, pc}
	; .align 2, 0
_02238900: .word 0x022403F8
_02238904: .word 0x0000117C
	thumb_func_end ov97_022388E0

	thumb_func_start ov97_02238908
ov97_02238908: ; 0x02238908
	push {r3, lr}
	mov r0, #3
	bl ov97_02238534
	ldr r0, _02238934 ; =0x022403F8
	ldr r1, _02238938 ; =ov97_0223893C
	ldr r0, [r0, #0]
	mov r2, #2
	bl sub_020CECC8
	cmp r0, #2
	beq _0223892E
	bl ov97_02238584
	mov r0, #0xa
	bl ov97_02238534
	mov r0, #0
	pop {r3, pc}
_0223892E:
	mov r0, #1
	pop {r3, pc}
	nop
_02238934: .word 0x022403F8
_02238938: .word ov97_0223893C
	thumb_func_end ov97_02238908

	thumb_func_start ov97_0223893C
ov97_0223893C: ; 0x0223893C
	push {r3, lr}
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _02238950
	bl ov97_02238584
	mov r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_02238950:
	ldr r0, _02238974 ; =ov97_022388E0
	bl sub_020CE478
	cmp r0, #0
	beq _02238966
	bl ov97_02238584
	mov r0, #0xa
	bl ov97_02238534
	pop {r3, pc}
_02238966:
	mov r0, #1
	bl ov97_02238534
	bl ov97_022385A0
	pop {r3, pc}
	nop
_02238974: .word ov97_022388E0
	thumb_func_end ov97_0223893C

	thumb_func_start ov97_02238978
ov97_02238978: ; 0x02238978
	push {r3, lr}
	ldr r0, _022389B8 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _022389BC ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _0223898A
	bl sub_020C42A8
_0223898A:
	mov r0, #3
	bl ov97_02238534
	ldr r0, _022389C0 ; =ov97_0223888C
	bl sub_020CED88
	cmp r0, #2
	beq _022389B4
	mov r0, #9
	bl ov97_02238534
	ldr r0, _022389B8 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _022389C4 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022389B0
	mov r0, #4
	blx r1
_022389B0:
	mov r0, #0
	pop {r3, pc}
_022389B4:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
_022389B8: .word 0x022403F8
_022389BC: .word 0x00001150
_022389C0: .word ov97_0223888C
_022389C4: .word 0x0000117C
	thumb_func_end ov97_02238978

	thumb_func_start ov97_022389C8
ov97_022389C8: ; 0x022389C8
	push {r3, lr}
	ldr r0, _022389E4 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _022389E8 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _022389DC
	bl ov97_02238978
	pop {r3, pc}
_022389DC:
	bl ov97_022389EC
	pop {r3, pc}
	nop
_022389E4: .word 0x022403F8
_022389E8: .word 0x00001150
	thumb_func_end ov97_022389C8

	thumb_func_start ov97_022389EC
ov97_022389EC: ; 0x022389EC
	push {r3, lr}
	mov r0, #3
	bl ov97_02238534
	ldr r0, _02238A0C ; =ov97_02238A10
	bl sub_020CED50
	cmp r0, #2
	beq _02238A06
	bl ov97_02238584
	mov r0, #0
	pop {r3, pc}
_02238A06:
	mov r0, #1
	pop {r3, pc}
	nop
_02238A0C: .word ov97_02238A10
	thumb_func_end ov97_022389EC

	thumb_func_start ov97_02238A10
ov97_02238A10: ; 0x02238A10
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _02238A38
	mov r0, #9
	bl ov97_02238534
	ldrh r0, [r4, #2]
	bl ov97_02238584
	ldr r0, _02238A44 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238A48 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238A42
	mov r0, #4
	blx r1
	pop {r4, pc}
_02238A38:
	mov r0, #1
	bl ov97_02238534
	bl ov97_02238978
_02238A42:
	pop {r4, pc}
	; .align 2, 0
_02238A44: .word 0x022403F8
_02238A48: .word 0x0000117C
	thumb_func_end ov97_02238A10

	thumb_func_start ov97_02238A4C
ov97_02238A4C: ; 0x02238A4C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r2, #0x1f
	mov r0, #0x1f
	bic r2, r0
	ldr r4, _02238AA8 ; =0x022403F8
	ldr r3, _02238AAC ; =0x00001150
	str r2, [r4, #0]
	mov r0, #0
	str r0, [r2, r3]
	add r2, r3, #0
	ldr r5, [r4, #0]
	mov r6, #1
	add r2, #8
	strh r6, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	add r2, #0x28
	str r7, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	add r2, #0xc
	strh r0, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	add r2, #0xe
	strh r0, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	add r2, #0x2c
	str r1, [r5, r2]
	add r2, r3, #0
	ldr r5, [r4, #0]
	mov r1, #0x10
	add r2, #0x26
	strh r1, [r5, r2]
	ldr r5, [r4, #0]
	ldr r2, _02238AB0 ; =0x00001048
	sub r1, #0x11
	str r0, [r5, r2]
	ldr r0, [r4, #0]
	add r3, #0x1c
	str r1, [r0, r3]
	bl ov97_022388BC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02238AA8: .word 0x022403F8
_02238AAC: .word 0x00001150
_02238AB0: .word 0x00001048
	thumb_func_end ov97_02238A4C

	thumb_func_start ov97_02238AB4
ov97_02238AB4: ; 0x02238AB4
	push {r4, r5, r6, lr}
	ldr r3, _02238B24 ; =0x022403F8
	ldr r1, _02238B28 ; =0x00001048
	ldr r2, [r3, #0]
	mov r4, #0
	str r4, [r2, r1]
	ldr r1, [r3, #0]
	ldr r2, _02238B2C ; =0x00001158
	mov r4, #3
	strh r4, [r1, r2]
	ldrh r5, [r0]
	ldr r4, [r3, #0]
	add r1, r2, #2
	strh r5, [r4, r1]
	ldr r4, [r0, #4]
	add r0, r2, #0
	ldr r1, [r3, #0]
	add r0, #8
	str r4, [r1, r0]
	ldr r4, [r3, #0]
	add r2, #8
	ldr r0, [r4, r2]
	mov r1, #0x68
	sub r0, r0, #1
	bl sub_020E2178
	ldr r2, _02238B30 ; =0x0000115C
	add r0, r0, #1
	strh r0, [r4, r2]
	ldr r4, _02238B24 ; =0x022403F8
	mov r0, #0
	ldr r3, [r4, #0]
	add r1, r2, #2
	strh r0, [r3, r1]
	add r1, r2, #0
	ldr r3, [r4, #0]
	add r1, #8
	str r0, [r3, r1]
	ldr r1, [r4, #0]
	ldrh r2, [r1, r2]
	cmp r2, #0
	ble _02238B20
	mov r2, #0x46
	lsl r2, r2, #6
	add r3, r2, #0
	add r6, r0, #0
	sub r3, #0x24
_02238B12:
	add r1, r1, r0
	strb r6, [r1, r2]
	ldr r1, [r4, #0]
	add r0, r0, #1
	ldrh r5, [r1, r3]
	cmp r0, r5
	blt _02238B12
_02238B20:
	pop {r4, r5, r6, pc}
	nop
_02238B24: .word 0x022403F8
_02238B28: .word 0x00001048
_02238B2C: .word 0x00001158
_02238B30: .word 0x0000115C
	thumb_func_end ov97_02238AB4

	thumb_func_start ov97_02238B34
ov97_02238B34: ; 0x02238B34
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _02238C50 ; =0x022403F8
	ldrh r1, [r4]
	ldr r3, [r0, #0]
	ldr r0, _02238C54 ; =0x0000115A
	ldrh r2, [r3, r0]
	cmp r2, r1
	bne _02238B50
	add r0, r0, #6
	ldr r1, [r3, r0]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _02238B7C
_02238B50:
	ldr r0, _02238C50 ; =0x022403F8
	ldr r3, [r0, #0]
	ldr r0, _02238C58 ; =0x00001164
	ldr r2, [r3, r0]
	add r1, r2, #1
	str r1, [r3, r0]
	cmp r2, #0x10
	blo _02238B78
	add r0, r4, #0
	bl ov97_02238AB4
	ldr r0, _02238C50 ; =0x022403F8
	ldr r1, [r0, #0]
	ldr r0, _02238C5C ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02238B7C
	mov r0, #5
	blx r1
	b _02238B7C
_02238B78:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02238B7C:
	ldrh r3, [r4, #2]
	ldr r0, _02238C60 ; =0x0000FFFF
	cmp r3, r0
	bne _02238BA4
	ldr r1, _02238C50 ; =0x022403F8
	add r4, #8
	ldr r2, [r1, #0]
	mov r1, #0xfe
	lsl r1, r1, #4
	add r1, r2, r1
	add r0, r4, #0
	mov r2, #0x68
	bl sub_020C4B68
	ldr r0, _02238C50 ; =0x022403F8
	mov r2, #1
	ldr r1, [r0, #0]
	ldr r0, _02238C64 ; =0x00001048
	str r2, [r1, r0]
	b _02238C4C
_02238BA4:
	ldr r1, _02238C50 ; =0x022403F8
	ldr r0, _02238C68 ; =0x00001168
	ldr r2, [r1, #0]
	str r3, [r2, r0]
	ldr r3, [r1, #0]
	add r1, r0, #0
	sub r1, #0xc
	ldrh r2, [r4, #2]
	ldrh r1, [r3, r1]
	cmp r2, r1
	blo _02238BCC
	add r0, #0x14
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _02238BC6
	mov r0, #4
	blx r1
_02238BC6:
	mov r0, #9
	bl ov97_02238534
_02238BCC:
	ldr r0, _02238C50 ; =0x022403F8
	mov r2, #0x46
	ldr r1, [r0, #0]
	lsl r2, r2, #6
	ldrh r3, [r4, #2]
	add r5, r1, r2
	ldrb r1, [r5, r3]
	cmp r1, #0
	bne _02238C4C
	mov r1, #1
	strb r1, [r5, r3]
	ldr r5, [r0, #0]
	add r0, r2, #0
	sub r0, #0x24
	ldrh r0, [r5, r0]
	ldrh r1, [r4, #2]
	sub r0, r0, #1
	cmp r1, r0
	bne _02238C10
	add r3, r1, #0
	add r1, r2, #0
	sub r1, #8
	sub r2, #0x20
	mov r0, #0x68
	ldr r1, [r5, r1]
	mul r3, r0
	ldr r2, [r5, r2]
	add r4, #8
	add r0, r4, #0
	add r1, r1, r3
	sub r2, r2, r3
	bl sub_020C4B68
	b _02238C24
_02238C10:
	add r4, #8
	sub r2, #8
	add r0, r4, #0
	ldr r4, [r5, r2]
	mov r2, #0x68
	add r3, r1, #0
	mul r3, r2
	add r1, r4, r3
	bl sub_020C4B68
_02238C24:
	ldr r1, _02238C50 ; =0x022403F8
	ldr r0, _02238C6C ; =0x0000115E
	ldr r3, [r1, #0]
	ldrh r2, [r3, r0]
	add r2, r2, #1
	strh r2, [r3, r0]
	ldr r3, [r1, #0]
	sub r1, r0, #2
	ldrh r2, [r3, r0]
	ldrh r1, [r3, r1]
	cmp r2, r1
	bne _02238C4C
	add r0, #0x1e
	ldr r1, [r3, r0]
	cmp r1, #0
	beq _02238C48
	mov r0, #2
	blx r1
_02238C48:
	mov r0, #1
	pop {r3, r4, r5, pc}
_02238C4C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238C50: .word 0x022403F8
_02238C54: .word 0x0000115A
_02238C58: .word 0x00001164
_02238C5C: .word 0x0000117C
_02238C60: .word 0x0000FFFF
_02238C64: .word 0x00001048
_02238C68: .word 0x00001168
_02238C6C: .word 0x0000115E
	thumb_func_end ov97_02238B34

	thumb_func_start ov97_02238C70
ov97_02238C70: ; 0x02238C70
	push {r3, r4}
	mov r2, #0
	add r3, r2, #0
	lsr r1, r1, #1
	beq _02238C98
_02238C7A:
	lsl r4, r3, #1
	ldrh r4, [r0, r4]
	add r3, r3, #1
	lsl r3, r3, #0x10
	add r2, r2, r4
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	lsl r4, r2, #1
	asr r2, r2, #0xf
	orr r2, r4
	lsl r2, r2, #0x10
	lsr r3, r3, #0x10
	lsr r2, r2, #0x10
	cmp r3, r1
	blo _02238C7A
_02238C98:
	add r0, r2, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov97_02238C70

	thumb_func_start ov97_02238CA0
ov97_02238CA0: ; 0x02238CA0
	push {r4, lr}
	sub sp, #8
	ldr r0, _02238D34 ; =0x022403F8
	add r1, sp, #0
	ldr r4, [r0, #0]
	ldr r0, _02238D38 ; =0x00001170
	add r3, r4, r0
	ldrh r2, [r3]
	sub r0, #0x16
	strh r2, [r1]
	ldrh r2, [r3, #2]
	strh r2, [r1, #6]
	ldrh r2, [r3, #4]
	add r3, sp, #0
	strh r2, [r1, #4]
	ldrh r0, [r4, r0]
	ldr r2, _02238D3C ; =0x00003FA2
	strh r0, [r1, #2]
	mov r1, #0
_02238CC6:
	ldrh r0, [r3]
	add r1, r1, #1
	eor r0, r2
	strh r0, [r3]
	ldrh r2, [r3]
	add r3, r3, #2
	cmp r1, #4
	blt _02238CC6
	ldr r0, _02238D34 ; =0x022403F8
	mov r2, #8
	ldr r1, [r0, #0]
	ldr r0, _02238D40 ; =0x0000104C
	add r0, r1, r0
	add r1, sp, #0
	bl sub_020A49A4
	ldr r0, _02238D34 ; =0x022403F8
	ldr r2, _02238D44 ; =0x00001178
	ldr r3, [r0, #0]
	ldr r0, _02238D40 ; =0x0000104C
	ldr r1, [r3, r2]
	sub r2, #0x18
	ldr r2, [r3, r2]
	add r0, r3, r0
	add r3, r1, #0
	bl ov97_02239420
	ldr r1, _02238D34 ; =0x022403F8
	ldr r2, _02238D40 ; =0x0000104C
	ldr r1, [r1, #0]
	mov r0, #0
	add r1, r1, r2
	lsr r2, r2, #4
	bl sub_020C4B4C
	ldr r0, _02238D34 ; =0x022403F8
	ldr r1, _02238D44 ; =0x00001178
	ldr r2, [r0, #0]
	ldr r0, [r2, r1]
	sub r1, #0x18
	ldr r1, [r2, r1]
	bl ov97_02238C70
	ldr r1, _02238D34 ; =0x022403F8
	ldr r2, [r1, #0]
	ldr r1, _02238D48 ; =0x0000115A
	ldrh r1, [r2, r1]
	cmp r1, r0
	bne _02238D2E
	add sp, #8
	mov r0, #1
	pop {r4, pc}
_02238D2E:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02238D34: .word 0x022403F8
_02238D38: .word 0x00001170
_02238D3C: .word 0x00003FA2
_02238D40: .word 0x0000104C
_02238D44: .word 0x00001178
_02238D48: .word 0x0000115A
	thumb_func_end ov97_02238CA0

	thumb_func_start ov97_02238D4C
ov97_02238D4C: ; 0x02238D4C
	ldr r0, _02238D50 ; =0x000016A0
	bx lr
	; .align 2, 0
_02238D50: .word 0x000016A0
	thumb_func_end ov97_02238D4C

	thumb_func_start ov97_02238D54
ov97_02238D54: ; 0x02238D54
	ldr r0, _02238D6C ; =0x022403F8
	ldr r2, [r0, #0]
	ldr r0, _02238D70 ; =0x00001048
	ldr r1, [r2, r0]
	cmp r1, #0
	beq _02238D66
	sub r0, #0x68
	add r0, r2, r0
	bx lr
_02238D66:
	mov r0, #0
	bx lr
	nop
_02238D6C: .word 0x022403F8
_02238D70: .word 0x00001048
	thumb_func_end ov97_02238D54

	thumb_func_start ov97_02238D74
ov97_02238D74: ; 0x02238D74
	push {r3, lr}
	add r1, #0x24
	mov r0, #0x1f
	bic r1, r0
	add r1, #0x20
	mov r0, #0x56
	bl sub_02018144
	add r2, r0, #0
	add r2, #0x20
	mov r1, #0x1f
	bic r2, r1
	sub r1, r2, #4
	str r0, [r1, #0]
	add r0, r2, #0
	pop {r3, pc}
	thumb_func_end ov97_02238D74

	thumb_func_start ov97_02238D94
ov97_02238D94: ; 0x02238D94
	push {r3, lr}
	cmp r1, #0
	beq _02238DA2
	sub r0, r1, #4
	ldr r0, [r0, #0]
	bl sub_020181C4
_02238DA2:
	pop {r3, pc}
	thumb_func_end ov97_02238D94

	thumb_func_start ov97_02238DA4
ov97_02238DA4: ; 0x02238DA4
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, sp, #0
	add r1, sp, #4
	bl ov4_021D75F4
	ldr r0, [sp]
	ldr r1, [sp, #4]
	neg r0, r0
	bl ov4_021D1F3C
	ldr r2, _02238DEC ; =0x0000266C
	str r0, [r4, r2]
	ldr r0, [sp]
	neg r1, r0
	add r0, r2, #4
	str r1, [r4, r0]
	add r0, r2, #0
	ldr r1, [sp, #4]
	add r0, #8
	str r1, [r4, r0]
	sub r0, r2, #4
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _02238DF0 ; =0x02240400
	add r2, #0x10
	str r1, [r0, #0x10]
	mov r1, #0
	add r0, r4, #0
	str r1, [r4, r2]
	bl ov97_0222D344
	ldr r0, _02238DF4 ; =0x0000100F
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_02238DEC: .word 0x0000266C
_02238DF0: .word 0x02240400
_02238DF4: .word 0x0000100F
	thumb_func_end ov97_02238DA4

	thumb_func_start ov97_02238DF8
ov97_02238DF8: ; 0x02238DF8
	push {lr}
	sub sp, #0x3c
	bl ov4_021D7BFC
	cmp r0, #4
	beq _02238E0C
	cmp r0, #7
	beq _02238E18
	cmp r0, #8
	b _02238E18
_02238E0C:
	add r0, sp, #0
	bl ov4_021D7EB8
	add sp, #0x3c
	mov r0, #1
	pop {pc}
_02238E18:
	mov r0, #0
	add sp, #0x3c
	pop {pc}
	; .align 2, 0
	thumb_func_end ov97_02238DF8

	thumb_func_start ov97_02238E20
ov97_02238E20: ; 0x02238E20
	push {r3, r4}
	ldr r3, _02238E38 ; =0x02240400
	mov r4, #0
	str r4, [r3, #0]
	str r4, [r3, #0xc]
	ldr r3, _02238E3C ; =0x00001650
	str r2, [r0, r3]
	ldr r0, _02238E40 ; =0x00001012
	str r0, [r1, #0]
	pop {r3, r4}
	bx lr
	nop
_02238E38: .word 0x02240400
_02238E3C: .word 0x00001650
_02238E40: .word 0x00001012
	thumb_func_end ov97_02238E20

	thumb_func_start ov97_02238E44
ov97_02238E44: ; 0x02238E44
	push {r3, r4, r5, lr}
	add r4, r2, #0
	ldr r2, _02238E68 ; =0x02240400
	mov r5, #0
	str r5, [r2, #4]
	str r1, [r2, #8]
	ldr r1, _02238E6C ; =0x00001650
	str r3, [r0, r1]
	ldr r0, _02238E70 ; =0x00001013
	str r0, [r4, #0]
	ldr r0, _02238E74 ; =ov97_02238E88
	bl ov4_021D87E0
	cmp r0, #0
	bne _02238E66
	ldr r0, [sp, #0x10]
	str r0, [r4, #0]
_02238E66:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02238E68: .word 0x02240400
_02238E6C: .word 0x00001650
_02238E70: .word 0x00001013
_02238E74: .word ov97_02238E88
	thumb_func_end ov97_02238E44

	thumb_func_start ov97_02238E78
ov97_02238E78: ; 0x02238E78
	ldr r0, _02238E84 ; =0x02240400
	mov r2, #1
	str r2, [r0, #0]
	str r1, [r0, #0xc]
	bx lr
	nop
_02238E84: .word 0x02240400
	thumb_func_end ov97_02238E78

	thumb_func_start ov97_02238E88
ov97_02238E88: ; 0x02238E88
	ldr r0, _02238E90 ; =0x02240400
	mov r1, #1
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_02238E90: .word 0x02240400
	thumb_func_end ov97_02238E88

	thumb_func_start ov97_02238E94
ov97_02238E94: ; 0x02238E94
	push {r3, lr}
	bl sub_02039794
	bl sub_02038514
	bl sub_020995C4
	bl sub_02099560
	bl sub_020334CC
	pop {r3, pc}
	thumb_func_end ov97_02238E94

	thumb_func_start ov97_02238EAC
ov97_02238EAC: ; 0x02238EAC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _022391AC ; =0x0000267C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238ECC
	blx r0
	cmp r0, #1
	bne _02238ECC
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
_02238ECC:
	mov r3, #1
	ldr r0, [r5, #0]
	lsl r3, r3, #0xc
	sub r0, r0, r3
	cmp r0, #0x13
	bls _02238EDA
	b _022392C4
_02238EDA:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02238EE6: ; jump table
	.short _02238F0E - _02238EE6 - 2 ; case 0
	.short _02238F20 - _02238EE6 - 2 ; case 1
	.short _02238F3C - _02238EE6 - 2 ; case 2
	.short _02238F64 - _02238EE6 - 2 ; case 3
	.short _02238FAE - _02238EE6 - 2 ; case 4
	.short _02238FC6 - _02238EE6 - 2 ; case 5
	.short _0223900C - _02238EE6 - 2 ; case 6
	.short _02239030 - _02238EE6 - 2 ; case 7
	.short _02239066 - _02238EE6 - 2 ; case 8
	.short _02239088 - _02238EE6 - 2 ; case 9
	.short _022390C4 - _02238EE6 - 2 ; case 10
	.short _022390EA - _02238EE6 - 2 ; case 11
	.short _02239160 - _02238EE6 - 2 ; case 12
	.short _0223917E - _02238EE6 - 2 ; case 13
	.short _022392C4 - _02238EE6 - 2 ; case 14
	.short _02239196 - _02238EE6 - 2 ; case 15
	.short _0223924E - _02238EE6 - 2 ; case 16
	.short _02239244 - _02238EE6 - 2 ; case 17
	.short _0223926A - _02238EE6 - 2 ; case 18
	.short _022392A0 - _02238EE6 - 2 ; case 19
_02238F0E:
	bl sub_02033478
	bl sub_02099550
	bl sub_020995B4
	ldr r0, _022391B0 ; =0x00001001
	str r0, [r5, #0]
	b _022392C4
_02238F20:
	bl sub_020334A4
	cmp r0, #0
	beq _02239004
	ldr r0, _022391B4 ; =ov97_02238D74
	ldr r1, _022391B8 ; =ov97_02238D94
	bl ov4_021D776C
	ldr r0, [r4, #4]
	bl sub_020384C0
	ldr r0, _022391BC ; =0x00001002
	str r0, [r5, #0]
	b _022392C4
_02238F3C:
	ldr r0, _022391C0 ; =0x000015E8
	mov r1, #2
	add r0, r4, r0
	mov r2, #1
	mov r3, #0x14
	bl ov4_021D78C8
	mov r0, #2
	bl ov4_021D792C
	bl ov4_021D797C
	bl sub_02039734
	ldr r0, _022391C4 ; =0x00001003
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _022391C8 ; =0x00002678
	str r1, [r4, r0]
	b _022392C4
_02238F64:
	bl ov4_021D7AE4
	bl ov4_021D7A8C
	cmp r0, #0
	beq _02238F9C
	add r0, r4, #0
	bl ov97_02238DF8
	cmp r0, #1
	bne _02238F94
	ldr r0, _022391C8 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02238F8E
	ldr r0, _022391CC ; =0x02240400
	mov r1, #3
	str r1, [r0, #8]
	ldr r0, _022391D0 ; =0x0000100D
	str r0, [r5, #0]
	b _02238F9C
_02238F8E:
	ldr r0, _022391D4 ; =0x00001004
	str r0, [r5, #0]
	b _02238F9C
_02238F94:
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
_02238F9C:
	ldr r0, _022391D8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _02239004
	ldr r0, _022391C8 ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
	b _022392C4
_02238FAE:
	bl ov4_021D81DC
	cmp r0, #0
	bne _02238FC0
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_02238FC0:
	ldr r0, _022391DC ; =0x00001005
	str r0, [r5, #0]
	b _022392C4
_02238FC6:
	bl ov4_021D82A0
	cmp r0, #3
	bne _02238FDA
	ldr r0, _022391E0 ; =0x00001006
	ldr r1, _022391E4 ; =0x021D8018
	str r0, [r5, #0]
	ldr r0, _022391AC ; =0x0000267C
	str r1, [r4, r0]
	b _02238FFA
_02238FDA:
	cmp r0, #4
	bne _02238FEC
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	bl ov4_021D7DB0
	b _02238FFA
_02238FEC:
	cmp r0, #5
	bne _02238FFA
	ldr r0, _022391CC ; =0x02240400
	mov r1, #3
	str r1, [r0, #8]
	ldr r0, _022391D0 ; =0x0000100D
	str r0, [r5, #0]
_02238FFA:
	ldr r0, _022391D8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	bne _02239006
_02239004:
	b _022392C4
_02239006:
	bl ov4_021D8398
	b _022392C4
_0223900C:
	ldr r0, _022391E8 ; =ov97_02238E78
	ldr r1, _022391EC ; =0x0223F138
	ldr r2, _022391F0 ; =0x0223F140
	bl ov4_021D86C8
	cmp r0, #0
	bne _02239024
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_02239024:
	ldr r2, _022391F4 ; =0x00001007
	add r0, r4, #0
	add r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_02239030:
	ldr r0, _022391C8 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02239048
	add r3, #0xc
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239048:
	ldr r0, _022391F8 ; =0x0223F154
	add r1, r0, #0
	add r2, r0, #0
	bl ov4_021D882C
	cmp r0, #0
	bne _02239060
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_02239060:
	ldr r0, _022391FC ; =0x00001008
	str r0, [r5, #0]
	b _022392C4
_02239066:
	ldr r0, _02239200 ; =0x00001654
	add r0, r4, r0
	bl ov4_021D8860
	cmp r0, #0
	bne _0223907C
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_0223907C:
	ldr r2, _02239204 ; =0x00001009
	add r0, r4, #0
	add r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_02239088:
	ldr r0, _02239200 ; =0x00001654
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _022390A0
	add r3, #0xd
	add r0, r4, #0
	mov r1, #2
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_022390A0:
	ldr r0, _02239208 ; =0x02240414
	mov r1, #0
	mov r2, #0xa
	bl ov4_021D8884
	cmp r0, #0
	bne _022390B8
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_022390B8:
	ldr r2, _0223920C ; =0x0000100A
	add r0, r4, #0
	add r1, r5, #0
	bl ov97_02238E20
	b _022392C4
_022390C4:
	ldr r1, _02239210 ; =0x00001658
	ldr r0, _02239208 ; =0x02240414
	add r1, r4, r1
	add r2, r3, #0
	bl ov4_021D88CC
	cmp r0, #0
	bne _022390DE
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_022390DE:
	ldr r0, _02239214 ; =0x0000100B
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, _02239218 ; =0x00002664
	str r1, [r4, r0]
	b _022392C4
_022390EA:
	ldr r0, _022391CC ; =0x02240400
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02239138
	ldr r0, _022391D8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _0223910C
	add r3, #0xc
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_0223910C:
	ldr r1, _0223921C ; =0x0000265C
	add r0, r4, r1
	add r1, r1, #4
	add r1, r4, r1
	bl ov4_021D891C
	cmp r0, #1
	bne _0223919E
	ldr r1, _0223921C ; =0x0000265C
	mov r0, #0x64
	ldr r2, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mul r0, r2
	bl sub_020E2178
	ldr r1, _02239218 ; =0x00002664
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _0223919E
	str r0, [r4, r1]
	b _022392C4
_02239138:
	ldr r0, _022391C8 ; =0x00002678
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02239150
	add r3, #0xd
	add r0, r4, #0
	mov r1, #1
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239150:
	add r3, #0xd
	add r0, r4, #0
	mov r1, #3
	add r2, r5, #0
	str r3, [sp]
	bl ov97_02238E44
	b _022392C4
_02239160:
	bl ov4_021D8900
	cmp r0, #0
	bne _0223916E
	ldr r0, _022391D0 ; =0x0000100D
	str r0, [r5, #0]
	b _022392C4
_0223916E:
	ldr r0, _022391AC ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl ov97_02238E94
	ldr r0, _022391CC ; =0x02240400
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_0223917E:
	bl ov4_021D7E10
	cmp r0, #1
	bne _0223919E
	ldr r0, _022391AC ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl ov97_02238E94
	ldr r0, _022391CC ; =0x02240400
	ldr r0, [r0, #8]
	pop {r3, r4, r5, pc}
_02239196:
	ldr r0, _022391CC ; =0x02240400
	ldr r0, [r0, #0x10]
	cmp r0, #1
	beq _022391A0
_0223919E:
	b _022392C4
_022391A0:
	add r0, r4, #0
	bl ov97_0222E13C
	ldr r0, _02239220 ; =0x00002674
	b _02239224
	nop
_022391AC: .word 0x0000267C
_022391B0: .word 0x00001001
_022391B4: .word ov97_02238D74
_022391B8: .word ov97_02238D94
_022391BC: .word 0x00001002
_022391C0: .word 0x000015E8
_022391C4: .word 0x00001003
_022391C8: .word 0x00002678
_022391CC: .word 0x02240400
_022391D0: .word 0x0000100D
_022391D4: .word 0x00001004
_022391D8: .word 0x021BF67C
_022391DC: .word 0x00001005
_022391E0: .word 0x00001006
_022391E4: .word 0x021D8018
_022391E8: .word ov97_02238E78
_022391EC: .word 0x0223F138
_022391F0: .word 0x0223F140
_022391F4: .word 0x00001007
_022391F8: .word 0x0223F154
_022391FC: .word 0x00001008
_02239200: .word 0x00001654
_02239204: .word 0x00001009
_02239208: .word 0x02240414
_0223920C: .word 0x0000100A
_02239210: .word 0x00001658
_02239214: .word 0x0000100B
_02239218: .word 0x00002664
_0223921C: .word 0x0000265C
_02239220: .word 0x00002674
_02239224:
	ldr r0, [r4, r0]
	sub r0, r0, #5
	cmp r0, #1
	bhi _0223923E
	ldr r3, _022392C8 ; =0x00001010
	add r0, r4, #0
	str r3, [sp]
	mov r1, #3
	add r2, r5, #0
	add r3, r3, #1
	bl ov97_02238E44
	b _022392C4
_0223923E:
	ldr r0, _022392CC ; =0x00001011
	str r0, [r5, #0]
	b _022392C4
_02239244:
	bl ov4_021D7DB0
	ldr r0, _022392C8 ; =0x00001010
	str r0, [r5, #0]
	b _022392C4
_0223924E:
	ldr r0, _022392D0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _022392C4
	ldr r0, _022392D4 ; =0x0000267C
	mov r1, #0
	str r1, [r4, r0]
	bl ov4_021D76E8
	bl ov97_02238E94
	mov r0, #4
	pop {r3, r4, r5, pc}
_0223926A:
	ldr r0, _022392D8 ; =0x02240400
	ldr r1, [r0, #0]
	cmp r1, #1
	bne _0223928E
	mov r1, #0
	str r1, [r0, #0]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02239286
	add r0, r4, #0
	bl ov97_02238DA4
	str r0, [r5, #0]
	b _022392C4
_02239286:
	ldr r0, _022392DC ; =0x00001650
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	b _022392C4
_0223928E:
	ldr r0, _022392D0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022392C4
	ldr r0, _022392E0 ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
	b _022392C4
_022392A0:
	ldr r0, _022392D8 ; =0x02240400
	ldr r1, [r0, #4]
	cmp r1, #1
	bne _022392B4
	mov r1, #0
	str r1, [r0, #4]
	ldr r0, _022392DC ; =0x00001650
	ldr r0, [r4, r0]
	str r0, [r5, #0]
	b _022392C4
_022392B4:
	ldr r0, _022392D0 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _022392C4
	ldr r0, _022392E0 ; =0x00002678
	mov r1, #1
	str r1, [r4, r0]
_022392C4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022392C8: .word 0x00001010
_022392CC: .word 0x00001011
_022392D0: .word 0x021BF67C
_022392D4: .word 0x0000267C
_022392D8: .word 0x02240400
_022392DC: .word 0x00001650
_022392E0: .word 0x00002678
	thumb_func_end ov97_02238EAC

	thumb_func_start ov97_022392E4
ov97_022392E4: ; 0x022392E4
	cmp r0, #1
	bne _022392EC
	mov r0, #1
	b _022392EE
_022392EC:
	ldr r0, _022392F4 ; =0x000001DE
_022392EE:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bx lr
	; .align 2, 0
_022392F4: .word 0x000001DE
	thumb_func_end ov97_022392E4

	thumb_func_start ov97_022392F8
ov97_022392F8: ; 0x022392F8
	cmp r0, #7
	bhi _02239318
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02239308: ; jump table
	.short _02239318 - _02239308 - 2 ; case 0
	.short _02239318 - _02239308 - 2 ; case 1
	.short _0223931C - _02239308 - 2 ; case 2
	.short _02239322 - _02239308 - 2 ; case 3
	.short _0223931C - _02239308 - 2 ; case 4
	.short _02239326 - _02239308 - 2 ; case 5
	.short _02239318 - _02239308 - 2 ; case 6
	.short _0223931C - _02239308 - 2 ; case 7
_02239318:
	mov r0, #0xea
	bx lr
_0223931C:
	mov r0, #0x6d
	lsl r0, r0, #2
	bx lr
_02239322:
	ldr r0, _0223932C ; =0x000001B7
	bx lr
_02239326:
	ldr r0, _02239330 ; =0x000001B6
	bx lr
	nop
_0223932C: .word 0x000001B7
_02239330: .word 0x000001B6
	thumb_func_end ov97_022392F8

	thumb_func_start ov97_02239334
ov97_02239334: ; 0x02239334
	cmp r0, #7
	bhi _02239354
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02239344: ; jump table
	.short _02239354 - _02239344 - 2 ; case 0
	.short _02239354 - _02239344 - 2 ; case 1
	.short _02239358 - _02239344 - 2 ; case 2
	.short _0223935C - _02239344 - 2 ; case 3
	.short _02239358 - _02239344 - 2 ; case 4
	.short _02239362 - _02239344 - 2 ; case 5
	.short _02239354 - _02239344 - 2 ; case 6
	.short _02239358 - _02239344 - 2 ; case 7
_02239354:
	mov r0, #0xeb
	bx lr
_02239358:
	ldr r0, _02239368 ; =0x000001B5
	bx lr
_0223935C:
	mov r0, #0x6e
	lsl r0, r0, #2
	bx lr
_02239362:
	mov r0, #0x6d
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
_02239368: .word 0x000001B5
	thumb_func_end ov97_02239334

	thumb_func_start ov97_0223936C
ov97_0223936C: ; 0x0223936C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r3, #0
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	cmp r5, #1
	beq _02239380
	mov r2, #1
	b _02239382
_02239380:
	mov r2, #0
_02239382:
	ldr r0, [sp, #8]
	mov r6, #0
	sub r0, r0, #1
	str r0, [sp, #0xc]
	beq _0223940A
	ldr r1, _02239418 ; =0x0223DAE8
	lsl r0, r2, #1
	ldr r4, [sp, #4]
	add r7, r1, r0
_02239394:
	ldr r0, [sp]
	ldrb r0, [r0, r6]
	cmp r0, #0xff
	beq _0223940A
	cmp r0, #0xf7
	blo _022393CE
	ldr r0, [sp, #8]
	sub r3, r0, #1
	cmp r3, #0xa
	blo _022393AA
	mov r3, #0xa
_022393AA:
	mov r1, #0
	cmp r3, #0
	ble _022393C0
	mov r0, #0x6b
	ldr r2, [sp, #4]
	lsl r0, r0, #2
_022393B6:
	add r1, r1, #1
	strh r0, [r2]
	add r2, r2, #2
	cmp r1, r3
	blt _022393B6
_022393C0:
	ldr r0, [sp, #4]
	ldr r2, _0223941C ; =0x0000FFFF
	lsl r1, r1, #1
	strh r2, [r0, r1]
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022393CE:
	lsl r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #1
	beq _022393E0
	cmp r0, #0xea
	beq _022393EA
	cmp r0, #0xeb
	beq _022393F4
	b _022393FE
_022393E0:
	add r0, r5, #0
	bl ov97_022392E4
	strh r0, [r4]
	b _02239400
_022393EA:
	add r0, r5, #0
	bl ov97_022392F8
	strh r0, [r4]
	b _02239400
_022393F4:
	add r0, r5, #0
	bl ov97_02239334
	strh r0, [r4]
	b _02239400
_022393FE:
	strh r0, [r4]
_02239400:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r4, r4, #2
	cmp r6, r0
	blo _02239394
_0223940A:
	ldr r2, _0223941C ; =0x0000FFFF
	ldr r0, [sp, #4]
	lsl r1, r6, #1
	strh r2, [r0, r1]
	mov r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02239418: .word 0x0223DAE8
_0223941C: .word 0x0000FFFF
	thumb_func_end ov97_0223936C

	arm_func_start ov97_02239420
ov97_02239420: ; 0x02239420
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	ldrb r7, [r0]
	ldrb r6, [r0, #1]
	add r0, r0, #4
	mov lr, #0x1000000
	add r7, lr, r7, lsl #24
	lsl r6, r6, #0x18
	ldrb sb, [r0, r7, lsr #24]
	sub r2, r2, #1
	bmi _02239480
_02239448:
	add r6, r6, sb, lsl #24
	sub r2, r2, #1
	ldrb r8, [r0, r6, lsr #24]
	ldrb r5, [r1], #1
	strb r8, [r0, r7, lsr #24]
	strb sb, [r0, r6, lsr #24]
	add r4, sb, r8
	and r4, r4, #0xff
	add r7, r7, lr
	ldrb r4, [r0, r4]
	ldrb sb, [r0, r7, lsr #24]
	eor r5, r5, r4
	strb r5, [r3], #1
	bge _02239448
_02239480:
	sub r7, r7, lr
	lsr r7, r7, #0x18
	lsr r6, r6, #0x18
	strb r7, [r0, #-4]
	strb r6, [r0, #-3]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov97_02239420

	arm_func_start ov97_02239498
ov97_02239498: ; 0x02239498
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov ip, r0
	mov r4, r1
	mov r5, r2
	mov r2, r4
	add r0, sp, #0
	mov r1, ip
	mov r4, r3
	bl sub_020D3068
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl ov97_022394DC
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end ov97_02239498

	arm_func_start ov97_022394DC
ov97_022394DC: ; 0x022394DC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x120
	mov r3, #0
	str r3, [sp, #0x10]
	str r3, [sp, #0x18]
	str r2, [sp]
	mov r3, #0x80
	mov r4, r0
	mov r2, r1
	ldr ip, _022395D8 ; =0x00010001
	str r3, [sp, #4]
	add r0, sp, #0x1c
	mov r1, #0x100
	str ip, [sp, #8]
	bl ov97_02239918
	mov r1, r0
	add r0, sp, #0x1c
	add r2, sp, #0xc
	add r3, sp, #0x10
	bl ov97_02239780
	cmp r0, #0
	addeq sp, sp, #0x120
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	add r1, sp, #0x14
	add r0, sp, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	mov r2, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	mov r3, r2
	bl ov97_022395DC
	cmp r0, #0
	addeq sp, sp, #0x120
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r0, [sp, #0x18]
	cmp r0, #0x14
	addne sp, sp, #0x120
	movne r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	ldr r2, [sp, #0x14]
	mov r3, #0
_02239598:
	ldrb r1, [r2]
	ldrb r0, [r4]
	cmp r1, r0
	addne sp, sp, #0x120
	movne r0, #0
	ldmneia sp!, {r4, lr}
	bxne lr
	add r3, r3, #1
	cmp r3, #0x14
	add r4, r4, #1
	add r2, r2, #1
	blt _02239598
	mov r0, #1
	add sp, sp, #0x120
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_022395D8: .word 0x00010001
	arm_func_end ov97_022394DC

	arm_func_start ov97_022395DC
ov97_022395DC: ; 0x022395DC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r4, r3
	add r0, sp, #0x10
	add r1, sp, #0x14
	mov r2, #0x30
	mov r3, #0
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r0, sp, #0x10
	add r1, sp, #0x14
	mov r2, #0x30
	mov r3, #0
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #6
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r5, #0
	ldrne r0, [sp, #0x10]
	strne r0, [r5]
	cmp r4, #0
	ldrne r0, [sp]
	strne r0, [r4]
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r2
	str r0, [sp, #0x10]
	cmp r1, r2
	addlo sp, sp, #4
	movlo r0, #0
	ldmia sp!,lo {r4, r5, lr}
	addlo sp, sp, #0x10
	bxlo lr
	sub ip, r1, r2
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #5
	str ip, [sp, #0x14]
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r2, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r0, r2
	str r0, [sp, #0x10]
	cmp r1, r2
	addlo sp, sp, #4
	movlo r0, #0
	ldmia sp!,lo {r4, r5, lr}
	addlo sp, sp, #0x10
	bxlo lr
	sub ip, r1, r2
	add r0, sp, #0x10
	add r1, sp, #0x14
	add r3, sp, #0
	mov r2, #4
	str ip, [sp, #0x14]
	bl ov97_02239844
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x20]
	cmp r1, #0
	ldrne r0, [sp, #0x10]
	strne r0, [r1]
	ldr r1, [sp, #0x24]
	cmp r1, #0
	ldrne r0, [sp]
	strne r0, [r1]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov97_022395DC

	arm_func_start ov97_02239780
ov97_02239780: ; 0x02239780
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0xa
	addlo sp, sp, #4
	movlo r0, #0
	ldmlo sp!, {lr}
	bxlo lr
	ldrb ip, [r0]
	add lr, r0, r1
	cmp ip, #1
	addne sp, sp, #4
	movne r0, #0
	ldmne sp!, {lr}
	bxne lr
	add ip, r0, #1
	mov r1, #0
_022397C0:
	ldrb r0, [ip], #1
	cmp r0, #0xff
	addne sp, sp, #4
	movne r0, #0
	ldmne sp!, {lr}
	bxne lr
	add r1, r1, #1
	cmp r1, #8
	blt _022397C0
	cmp ip, lr
	beq _02239804
_022397EC:
	ldrb r0, [ip]
	cmp r0, #0xff
	bne _02239804
	add ip, ip, #1
	cmp ip, lr
	bne _022397EC
_02239804:
	cmp ip, lr
	addeq sp, sp, #4
	moveq r0, #0
	ldmeq sp!, {lr}
	bxeq lr
	ldrb r0, [ip]
	cmp r0, #0
	movne r0, #0
	addeq r0, ip, #1
	subeq r1, lr, r0
	streq r1, [r3]
	streq r0, [r2]
	moveq r0, #1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end ov97_02239780

	arm_func_start ov97_02239844
ov97_02239844: ; 0x02239844
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, [r0, #0]
	mov r6, #0
	ldrb r4, [r5]
	add r5, r5, #1
	mov ip, r6
	cmp r4, r2
	ldr r2, [r1, #0]
	movne r0, r6
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	cmp r2, #1
	movlo r0, r6
	ldmia sp!,lo {r4, r5, r6, lr}
	bxlo lr
	ldrb lr, [r5]
	sub r4, r2, #1
	and r2, lr, #0x80
	beq _022398E0
	and r2, lr, #0x7f
	and lr, r2, #0xff
	add r2, lr, #1
	cmp r4, r2
	movlo r0, r6
	ldmia sp!,lo {r4, r5, r6, lr}
	bxlo lr
	cmp r3, #0
	sub r6, r4, lr
	beq _022398D8
	ldrb r2, [r5, #1]
	add r5, r5, #1
	and r4, r2, #0x7f
_022398C4:
	sub r2, lr, #1
	add ip, r4, ip, lsl #7
	and lr, r2, #0xff
	bne _022398C4
	b _022398FC
_022398D8:
	add r5, r5, lr
	b _022398FC
_022398E0:
	add r5, r5, #1
	cmp r4, #1
	mov ip, lr
	movlo r0, r6
	ldmia sp!,lo {r4, r5, r6, lr}
	bxlo lr
	sub r6, r4, #1
_022398FC:
	str r5, [r0, #0]
	str r6, [r1, #0]
	cmp r3, #0
	strne ip, [r3]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_02239844

	arm_func_start ov97_02239918
ov97_02239918: ; 0x02239918
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x58
	mov r6, r0
	mov r5, r1
	mov r8, r2
	mov r7, r3
	beq _02239948
	cmp r8, #0
	beq _02239948
	ldr r0, [sp, #0x70]
	cmp r0, #0
	bne _02239958
_02239948:
	add sp, sp, #0x58
	mvn r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_02239958:
	bl ov97_0223D358
	mov r4, r0
	add r0, sp, #4
	bl ov97_0223D3D8
	add r0, sp, #0x18
	bl ov97_0223D3D8
	add r0, sp, #0x2c
	bl ov97_0223D3D8
	add r0, sp, #0x40
	bl ov97_0223D3D8
	cmp r4, #0
	mvneq r5, #1
	beq _02239A34
	add r2, sp, #4
	mov r0, r8
	mov r1, r7
	bl ov97_0223D014
	cmp r0, #0
	mvneq r5, #1
	beq _02239A34
	ldr r1, [sp, #0x78]
	add r0, sp, #0x2c
	bl ov97_0223D128
	cmp r0, #0
	mvneq r5, #1
	beq _02239A34
	ldr r0, [sp, #0x70]
	ldr r1, [sp, #0x74]
	add r2, sp, #0x40
	bl ov97_0223D014
	cmp r0, #0
	mvneq r5, #1
	beq _02239A34
	add r0, sp, #0x18
	add r1, sp, #4
	add r2, sp, #0x2c
	add r3, sp, #0x40
	str r4, [sp]
	bl ov97_0223B564
	cmp r0, #0
	mvneq r5, #1
	beq _02239A34
	add r0, sp, #0x18
	bl ov97_0223D534
	add r1, r0, #7
	asr r0, r1, #2
	add r0, r1, r0, lsr #29
	asr r0, r0, #3
	cmp r0, r5
	mvngt r5, #0
	bgt _02239A34
	add r0, sp, #0x18
	mov r1, r6
	bl ov97_0223CF98
	mov r5, r0
_02239A34:
	add r0, sp, #4
	bl ov97_0223D4B8
	add r0, sp, #0x18
	bl ov97_0223D4B8
	add r0, sp, #0x2c
	bl ov97_0223D4B8
	add r0, sp, #0x40
	bl ov97_0223D4B8
	cmp r4, #0
	beq _02239A64
	mov r0, r4
	bl ov97_0223D2E8
_02239A64:
	mov r0, r5
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end ov97_02239918

	arm_func_start ov97_02239A74
ov97_02239A74: ; 0x02239A74
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x7c
	mov r4, #0
	mov r5, r3
	mov r3, r4
	str r3, [sp, #0x34]
	ldr r3, [r5, #0]
	str r0, [sp, #4]
	mov r0, r4
	ldr r3, [r3, #0]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	and r0, r3, #1
	ldr r0, [sp, #0xa0]
	str r4, [sp, #8]
	str r0, [sp, #0xa0]
	mov r7, r1
	mov r6, r2
	addeq sp, sp, #0x7c
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r1, [r7, #4]
	ldr r0, [r0, #0]
	cmp r1, #0
	str r0, [sp, #0xc]
	beq _02239AF8
	cmp r1, #1
	bne _02239B14
	ldr r0, [r7, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02239B14
_02239AF8:
	ldr r0, [sp, #4]
	mov r1, #0
	bl ov97_0223D128
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02239B14:
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02239B38
	cmp r1, #1
	bne _02239B54
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02239B54
_02239B38:
	ldr r0, [sp, #4]
	mov r1, #1
	bl ov97_0223D128
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02239B54:
	cmp r1, #1
	bne _02239B88
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02239B88
	ldr r0, [sp, #4]
	mov r1, r7
	bl ov97_0223D1D0
	add sp, sp, #0x7c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_02239B88:
	ldr r0, [sp, #0xa4]
	str r0, [sp, #0x18]
	cmp r0, #0
	bne _02239BBC
	bl ov97_0223AC0C
	str r0, [sp, #0x18]
	cmp r0, #0
	beq _0223A218
	ldr r2, [sp, #0xa0]
	mov r1, r5
	bl ov97_0223AC40
	cmp r0, #0
	beq _0223A218
_02239BBC:
	ldr r3, [sp, #0xa0]
	add r1, sp, #0x34
	mov r4, r3
	ldr r4, [r4, #0x10c]
	mov r0, r6
	mov r2, #0
	str r4, [sp, #0x1c]
	bl ov97_0223AFD4
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0, #0]
	ldr r0, [sp, #0x34]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	str r0, [sp, #0x10]
	add r0, r1, #0x3f
	bl sub_020E1F6C
	ldr r1, [sp, #0x34]
	mov r4, r0
	add r0, r1, #4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	ldr r3, [r7, #4]
	ldr sl, [r0, #0x24]
	cmp r3, sl
	bne _02239C54
	ldr r1, [r7, #0]
	sub r2, sl, #1
	ldr r0, [r5, #0]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, r2, lsl #2]
	cmp r1, r0
	strlo r7, [sp, #0x14]
	blo _02239D0C
_02239C54:
	cmp r3, sl
	bge _02239CC8
	ldr r0, [sp, #0xa0]
	ldr r3, [r0, #0]
	add r1, r0, #4
	add r2, r3, #1
	str r2, [r0, #0]
	mov r0, #0x14
	mla r0, r3, r0, r1
	ldr r2, [r7, #4]
	mov r1, r0
	str r2, [r1, #4]
	mov r1, sl
	str r0, [sp, #0x14]
	bl ov97_0223D438
	ldr r0, [r7, #4]
	mov r2, #0
	cmp r0, #0
	ble _02239D0C
_02239CA0:
	ldr r1, [r7, #0]
	ldr r0, [sp, #0x14]
	ldr r1, [r1, r2, lsl #2]
	ldr r0, [r0, #0]
	str r1, [r0, r2, lsl #2]
	ldr r0, [r7, #4]
	add r2, r2, #1
	cmp r2, r0
	blt _02239CA0
	b _02239D0C
_02239CC8:
	ldr r0, [sp, #0xa0]
	mov r2, r5
	ldr r3, [r0, #0]
	mov r1, r7
	add r5, r3, #1
	str r5, [r0, #0]
	add r5, r0, #4
	mov r0, #0x14
	mla r0, r3, r0, r5
	ldr r3, [sp, #0xa0]
	str r0, [sp, #0x14]
	bl ov97_0223B5C0
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0x14]
	mov r1, sl
	bl ov97_0223D438
_02239D0C:
	ldr r0, [sp, #0xa0]
	ldr r3, [r0, #0]
	ldr r0, [r6, #4]
	add r1, r3, #1
	mul r2, r0
	ldr r0, [sp, #0xa0]
	lsl r4, r2, #1
	str r1, [r0, #0]
	ldr r1, [r0, #0]
	add r4, r4, #7
	add r2, r1, #1
	str r2, [r0, #0]
	ldr r2, [sp, #0x10]
	ldr r0, [r0, #0]
	mul r5, r2
	asr r2, r4, #1
	add r2, r4, r2, lsr #30
	add r5, r5, r2, asr #2
	ldr r2, [sp, #0xa0]
	mov r6, #0x14
	add r2, r2, #4
	mla r8, r1, r6, r2
	mla r4, r3, r6, r2
	ldr r1, [sp, #0xa0]
	add r3, r0, #1
	mla r7, r0, r6, r2
	str r3, [r1, #0]
	mov r0, r1
	ldr r0, [r0, #0]
	mla r6, r0, r6, r2
	add r1, r0, #1
	ldr r0, [sp, #0xa0]
	str r1, [r0, #0]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	cmp sl, r0
	ldrle r0, [sp, #4]
	ble _02239DB0
	ldr r0, [sp, #4]
	mov r1, sl
	bl ov97_0223D268
_02239DB0:
	cmp r0, #0
	beq _0223A218
	ldr r0, [r8, #8]
	lsl r1, sl, #2
	cmp r1, r0
	movle r0, r8
	ble _02239DD4
	mov r0, r8
	bl ov97_0223D268
_02239DD4:
	cmp r0, #0
	beq _0223A218
	ldr r1, [r7, #8]
	lsl r0, sl, #1
	str r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r7
	ble _02239E00
	ldr r1, [sp, #0x24]
	mov r0, r7
	bl ov97_0223D268
_02239E00:
	cmp r0, #0
	beq _0223A218
	ldr r0, [r4, #8]
	cmp r5, r0
	movle r0, r4
	ble _02239E24
	mov r1, r5
	mov r0, r4
	bl ov97_0223D268
_02239E24:
	cmp r0, #0
	beq _0223A218
	ldr r1, [r6, #8]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	movle r0, r6
	ble _02239E4C
	ldr r1, [sp, #0x24]
	mov r0, r6
	bl ov97_0223D268
_02239E4C:
	cmp r0, #0
	beq _0223A218
	ldr r0, [sp, #0x18]
	ldr fp, [r8]
	ldr r8, [r7]
	ldr r6, [r6, #0]
	ldr r1, [r4, #0]
	ldr r7, [r0, #0x48]
	ldr r5, [r0, #0x20]
	ldr r3, [sp, #0x18]
	str r1, [sp, #0x38]
	str sl, [sp]
	ldr r1, [sp, #0x14]
	ldr r3, [r3, #0xc]
	ldr r1, [r1, #0]
	mov r0, r6
	mov r2, sl
	bl ov97_0223BB94
	str r7, [sp]
	ldr r0, [sp, #0x38]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
	ldr r0, [sp, #0x10]
	cmp r0, #1
	ble _02239F54
	ldr r1, [sp, #0x38]
	mov r0, r6
	mov r2, sl
	mov r3, fp
	bl ov97_0223B31C
	mov r0, fp
	mov r1, r6
	mov r2, r5
	mov r3, sl
	str r7, [sp]
	bl ov97_0223B1DC
	ldr r0, [sp, #0x10]
	mov r4, #1
	cmp r0, #1
	ble _02239F54
	lsl r0, sl, #2
	str r0, [sp, #0x28]
	add sb, sp, #0x38
_02239F00:
	sub r3, r4, #1
	ldr r2, [sb, r3, lsl #2]
	ldr r1, [sp, #0x28]
	mov r0, r6
	add r1, r2, r1
	str r1, [sb, r4, lsl #2]
	str sl, [sp]
	ldr r1, [sb, r3, lsl #2]
	mov r2, sl
	mov r3, fp
	bl ov97_0223BB94
	str r7, [sp]
	ldr r0, [sb, r4, lsl #2]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
	ldr r0, [sp, #0x10]
	add r4, r4, #1
	cmp r4, r0
	blt _02239F00
_02239F54:
	ldr r3, [sp, #0x34]
	add r0, r3, #1
	str r0, [sp, #0x34]
	add r2, r0, #1
	ldrb r1, [r3]
	str r2, [sp, #0x34]
	ldrb sb, [r3, #1]
	cmp sb, #0xff
	bne _02239FD4
	cmp r1, #0
	bne _02239FD4
	add r0, r2, #1
	str r0, [sp, #0x34]
	ldrb r1, [r2]
	b _02239FA4
_02239F90:
	add sb, sb, #0x100
	ldr r1, [sp, #0x34]
	add r1, r1, #2
	str r1, [sp, #0x34]
	ldrb r1, [r0, #1]
_02239FA4:
	ldr r0, [sp, #0x34]
	ldrb r2, [r0]
	cmp r2, #0xff
	bne _02239FBC
	cmp r1, #0
	beq _02239F90
_02239FBC:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r0, [r0]
	add r0, r0, #1
	add sb, sb, r0
_02239FD4:
	asr r2, r1, #1
	add r0, sp, #0x38
	ldr r0, [r0, r2, lsl #2]
	mov r1, r8
	lsl r2, sl, #2
	bl sub_020C4DB0
	cmp sb, #0
	beq _0223A1AC
	mov r0, #0xff
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x30]
_0223A004:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223A038
	mov r3, r0
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	ldr r3, [r3, #0]
	blx r3
	cmp r0, #0
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	bne _0223A218
_0223A038:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	and r0, r0, #0x4000
	bne _0223A218
	cmp sb, #0
	ldr r4, [sp, #0x30]
	ble _0223A08C
_0223A054:
	mov r0, r6
	mov r1, r8
	mov r2, sl
	mov r3, fp
	bl ov97_0223B31C
	str r7, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
	add r4, r4, #1
	cmp r4, sb
	blt _0223A054
_0223A08C:
	ldr r2, [sp, #0x34]
	add r0, r2, #1
	str r0, [sp, #0x34]
	add r1, r0, #1
	ldrb r0, [r2]
	str r1, [sp, #0x34]
	ldrb sb, [r2, #1]
	cmp sb, #0xff
	bne _0223A10C
	cmp r0, #0
	bne _0223A10C
	add r0, r1, #1
	str r0, [sp, #0x34]
	ldrb r0, [r1]
	b _0223A0DC
_0223A0C8:
	add sb, sb, #0x100
	ldr r0, [sp, #0x34]
	add r0, r0, #2
	str r0, [sp, #0x34]
	ldrb r0, [r1, #1]
_0223A0DC:
	ldr r1, [sp, #0x34]
	ldrb r2, [r1]
	cmp r2, #0xff
	bne _0223A0F4
	cmp r0, #0
	beq _0223A0C8
_0223A0F4:
	ldr r2, [sp, #0x34]
	add r2, r2, #1
	str r2, [sp, #0x34]
	ldrb r1, [r1]
	add r1, r1, #1
	add sb, sb, r1
_0223A10C:
	cmp r0, #0
	bne _0223A11C
	cmp sb, #0
	beq _0223A1AC
_0223A11C:
	cmp sb, #0
	bne _0223A12C
	cmp r0, #1
	beq _0223A168
_0223A12C:
	asr r1, r0, #1
	str sl, [sp]
	add r0, sp, #0x38
	ldr r3, [r0, r1, lsl #2]
	mov r0, r6
	mov r1, r8
	mov r2, sl
	bl ov97_0223BB94
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, sl
	str r7, [sp]
	bl ov97_0223B1DC
	b _0223A1A4
_0223A168:
	ldr r0, [sp, #0x14]
	str sl, [sp]
	ldr r3, [r0, #0]
	mov r0, r6
	mov r1, r8
	mov r2, sl
	bl ov97_0223BB94
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0, #0]
	mov r1, r6
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
	b _0223A1F0
_0223A1A4:
	cmp sb, #0
	bne _0223A004
_0223A1AC:
	ldr r0, [sp, #0x24]
	mov r2, sl
	cmp sl, r0
	bge _0223A1D4
	mov r1, #0
_0223A1C0:
	ldr r0, [sp, #0x24]
	str r1, [r8, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r0
	blt _0223A1C0
_0223A1D4:
	ldr r0, [sp, #4]
	str r7, [sp]
	ldr r0, [r0, #0]
	mov r1, r8
	mov r2, r5
	mov r3, sl
	bl ov97_0223B1DC
_0223A1F0:
	ldr r0, [sp, #0xa0]
	ldr r0, [r0, #0x108]
	and r0, r0, #0x4000
	bne _0223A218
	ldr r0, [sp, #4]
	mov r1, r0
	str sl, [r1, #4]
	bl ov97_0223D3EC
	mov r0, #1
	str r0, [sp, #8]
_0223A218:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223A240
	ldr r3, [r0, #0]
	mov r1, #0xff
	mvn r2, #0
	blx r3
	cmp r0, #0
	movne r0, #0
	strne r0, [sp, #8]
_0223A240:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bne _0223A25C
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0223A25C
	bl ov97_0223AB90
_0223A25C:
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0xa0]
	ldr r0, [sp, #8]
	str r2, [r1, #0]
	add sp, sp, #0x7c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_02239A74

	arm_func_start ov97_0223A278
ov97_0223A278: ; 0x0223A278
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18c
	mov sl, r0
	mov r0, #0
	str r0, [sp, #8]
	mov r5, r1
	ldr r1, [sp, #8]
	mov r0, r2
	str r2, [sp, #4]
	mov r4, r3
	str r1, [sp, #0xc]
	ldr sb, [sp, #0x1b0]
	bl ov97_0223D534
	ldr r1, [r5, #4]
	mov r8, r0
	cmp r1, #0
	beq _0223A2D4
	cmp r1, #1
	bne _0223A2F0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223A2F0
_0223A2D4:
	mov r0, sl
	mov r1, #0
	bl ov97_0223D128
	add sp, sp, #0x18c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223A2F0:
	ldr r0, [sp, #4]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0223A318
	cmp r1, #1
	bne _0223A334
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223A334
_0223A318:
	mov r0, sl
	mov r1, #1
	bl ov97_0223D128
	add sp, sp, #0x18c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223A334:
	cmp r1, #1
	bne _0223A36C
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0223A36C
	mov r0, sl
	mov r1, r5
	bl ov97_0223D1D0
	add sp, sp, #0x18c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223A36C:
	add r0, sp, #0x18
	bl ov97_0223AB68
	add r0, sp, #0x18
	mov r1, r4
	mov r2, sb
	bl ov97_0223AAF0
	cmp r0, #0
	ble _0223A5B8
	add r0, sp, #0x4c
	bl ov97_0223D3D8
	ldr r2, [sb]
	add r1, sb, #4
	mov r0, #0x14
	mla r6, r2, r0, r1
	add r1, r2, #1
	str r1, [sb]
	mov r2, r4
	mov r4, #1
	add r0, sp, #0x4c
	mov r1, r5
	mov r3, sb
	str r4, [sp, #0xc]
	bl ov97_0223B5C0
	cmp r0, #0
	beq _0223A5B8
	add r1, sp, #0x4c
	add r3, sp, #0x18
	mov r0, r6
	mov r2, r1
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
	cmp r8, #0x11
	movle fp, r4
	ble _0223A414
	cmp r8, #0x100
	movge fp, #5
	bge _0223A414
	cmp r8, #0x80
	movge fp, #4
	movlt fp, #3
_0223A414:
	sub r0, fp, #1
	mov r4, #1
	lsl r7, r4, r0
	cmp r7, #1
	ble _0223A470
	add r5, sp, #0x60
_0223A42C:
	mov r0, r5
	bl ov97_0223D3D8
	sub r3, r4, #1
	mov r2, #0x14
	add r1, sp, #0x4c
	mla r1, r3, r2, r1
	mov r0, r5
	mov r2, r6
	add r3, sp, #0x18
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
	add r4, r4, #1
	cmp r4, r7
	add r5, r5, #0x14
	blt _0223A42C
_0223A470:
	mov r5, #1
	mov r0, sl
	mov r1, r5
	str r4, [sp, #0xc]
	sub r8, r8, #1
	bl ov97_0223D128
	cmp r0, #0
	beq _0223A5B8
	mov r0, r5
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
_0223A4A0:
	ldr r0, [sp, #4]
	mov r1, r8
	bl ov97_0223CE38
	cmp r0, #0
	bne _0223A4EC
	cmp r5, #0
	bne _0223A4DC
	mov r0, sl
	mov r1, sl
	mov r2, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
_0223A4DC:
	cmp r8, #0
	beq _0223A5B0
	sub r8, r8, #1
	b _0223A4A0
_0223A4EC:
	ldr r6, [sp, #0x10]
	ldr r7, [sp, #0x14]
	cmp fp, #1
	mov r4, r6
	ble _0223A530
_0223A500:
	sub r1, r8, r4
	bmi _0223A530
	ldr r0, [sp, #4]
	bl ov97_0223CE38
	cmp r0, #0
	subne r0, r4, r7
	lslne r0, r6, r0
	movne r7, r4
	add r4, r4, #1
	orrne r6, r0, #1
	cmp r4, fp
	blt _0223A500
_0223A530:
	cmp r5, #0
	add r5, r7, #1
	bne _0223A574
	cmp r5, #0
	ldr r4, [sp, #0x14]
	ble _0223A574
_0223A548:
	mov r0, sl
	mov r1, sl
	mov r2, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
	add r4, r4, #1
	cmp r4, r5
	blt _0223A548
_0223A574:
	asr r3, r6, #1
	mov r1, #0x14
	add r0, sp, #0x4c
	mla r2, r3, r1, r0
	mov r0, sl
	mov r1, sl
	add r3, sp, #0x18
	str sb, [sp]
	bl ov97_0223AA44
	cmp r0, #0
	beq _0223A5B8
	add r0, r7, #1
	ldr r5, [sp, #0x14]
	sub r8, r8, r0
	bpl _0223A4A0
_0223A5B0:
	mov r0, #1
	str r0, [sp, #8]
_0223A5B8:
	ldr r0, [sp, #0xc]
	ldr r1, [sb]
	cmp r0, #0
	sub r0, r1, #1
	str r0, [sb]
	mov r4, #0
	ble _0223A5F4
	add r5, sp, #0x4c
_0223A5D8:
	mov r0, r5
	bl ov97_0223D510
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	add r5, r5, #0x14
	blt _0223A5D8
_0223A5F4:
	add r0, sp, #0x18
	bl ov97_0223AB34
	ldr r0, [sp, #8]
	add sp, sp, #0x18c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223A278

	arm_func_start ov97_0223A60C
ov97_0223A60C: ; 0x0223A60C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov r8, r2
	mov sl, r0
	mov sb, r1
	mov fp, #0
	mov r5, #2
	addeq sp, sp, #4
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	mov r0, r8
	bl ov97_0223D568
	cmp r0, #0x20
	beq _0223A660
	mov r1, #1
	cmp sl, r1, lsl r0
	addhi sp, sp, #4
	movhi r0, fp
	ldmia sp!,hi {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxhi lr
_0223A660:
	cmp sl, r8
	neg r2, r0x20
	subhs sl, sl, r8
	cmp r2, #0
	lslne r1, sl, r2
	rsbne r0, r2, #0x20
	orrne sl, r1, sb, lsr r0
	lslne r8, r8, r2
	ldr r4, _0223A748 ; =0x0000FFFF
	lslne sb, sb, r2
	and r7, r4, r8, lsr #16
	and r6, r8, r4
_0223A690:
	lsr r0, sl, #0x10
	cmp r0, r7
	moveq r0, r4
	beq _0223A6AC
	mov r0, sl
	mov r1, r7
	bl sub_020E2178
_0223A6AC:
	mul ip, r0
	mul r3, r0
	and r2, r4, sb, lsr #16
_0223A6B8:
	mov lr, #0x10000
	sub r1, sl, ip
	neg lr, lr
	and lr, r1, lr
	bne _0223A6E4
	add r1, r2, r1, lsl #16
	cmp r3, r1
	subhi ip, ip, r7
	subhi r3, r3, r6
	subhi r0, r0, #1
	bhi _0223A6B8
_0223A6E4:
	mul r2, r0
	and r1, r2, r4
	mul r3, r0
	lsl r1, r1, #0x10
	cmp sb, r1
	add r2, r3, r2, lsr #16
	addlo r2, r2, #1
	cmp sl, r2
	addlo sl, sl, r8
	sub sb, sb, r1
	sublo r0, r0, #1
	sub r1, sl, r2
	sub r5, r5, #1
	beq _0223A738
	and r2, r0, r4
	lsl r1, r1, #0x10
	and r0, sb, r4
	orr sl, r1, sb, lsr #16
	lsl fp, r2, #0x10
	lsl sb, r0, #0x10
	b _0223A690
_0223A738:
	orr r0, fp, r0
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_0223A748: .word 0x0000FFFF
	arm_func_end ov97_0223A60C

	arm_func_start ov97_0223A74C
ov97_0223A74C: ; 0x0223A74C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r8, r0
	add r0, sp, #4
	mov r7, r1
	mov r6, r2
	mov r5, r3
	mvn r4, #0
	bl ov97_0223D3D8
	add r0, sp, #4
	mov r1, #0
	bl ov97_0223D128
	add r0, sp, #4
	mov r1, r6
	bl ov97_0223CEA8
	cmp r0, #0
	beq _0223A7B0
	add r2, sp, #4
	mov r0, r8
	mov r3, r7
	mov r1, #0
	str r5, [sp]
	bl ov97_0223B5F4
	cmp r0, #0
	movne r4, r6
_0223A7B0:
	add r0, sp, #4
	bl ov97_0223D4B8
	mov r0, r4
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end ov97_0223A74C

	arm_func_start ov97_0223A7C8
ov97_0223A7C8: ; 0x0223A7C8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r6, [sp, #0x30]
	mov sb, r1
	ldr fp, [r6]
	mov sl, r0
	add r0, fp, #1
	str r0, [r6, #0]
	ldr r7, [r6, #0]
	add r4, r6, #4
	mov r0, #0x14
	mla r5, fp, r0, r4
	add ip, r7, #1
	mov r1, #0
	str r5, [sp, #4]
	mla r5, r7, r0, r4
	str ip, [r6]
	str r1, [sp]
	ldreq r1, [r6]
	mov r8, r2
	mlaeq sl, r1, r0, r4
	addeq r0, r1, #1
	streq r0, [r6]
	mov r7, r3
	cmp sb, #0
	bne _0223A848
	ldr r2, [r6, #0]
	add r1, r6, #4
	mov r0, #0x14
	mla sb, r2, r0, r1
	add r0, r2, #1
	str r0, [r6, #0]
_0223A848:
	mov r0, r8
	mov r1, r7
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223A888
	mov r0, sl
	mov r1, #0
	bl ov97_0223D128
	mov r0, sb
	mov r1, r8
	bl ov97_0223D1D0
	add sp, sp, #0xc
	str fp, [r6]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223A888:
	mov r0, r8
	bl ov97_0223D534
	ldr r1, [r7, #0x28]
	mov r2, r0
	lsl r0, r1, #1
	cmp r0, r2
	movgt r2, r0
	suble r0, r2, r0
	movgt r4, #0
	addle r0, r0, r0, lsr #31
	asrle r4, r0, #1
	ldr r1, [r7, #0x2c]
	add r0, r2, r2, lsr #31
	asr r0, r0, #1
	cmp r2, r1
	str r0, [sp, #8]
	beq _0223A8E0
	mov r1, r7
	mov r3, r6
	add r0, r7, #0x14
	bl ov97_0223A74C
	str r0, [r7, #0x2c]
_0223A8E0:
	ldr r2, [sp, #8]
	ldr r0, [sp, #4]
	mov r1, r8
	sub r2, r2, r4
	bl ov97_0223C4E0
	cmp r0, #0
	beq _0223AA30
	ldr r1, [sp, #4]
	mov r0, r5
	mov r3, r6
	add r2, r7, #0x14
	bl ov97_0223BCB8
	cmp r0, #0
	beq _0223AA30
	ldr r2, [sp, #8]
	mov r0, sl
	mov r1, r5
	add r2, r2, r4
	bl ov97_0223C4E0
	cmp r0, #0
	beq _0223AA30
	mov r4, #0
	mov r0, r5
	mov r1, r7
	mov r2, sl
	mov r3, r6
	str r4, [sl, #0xc]
	bl ov97_0223BCB8
	cmp r0, #0
	beq _0223AA30
	mov r0, sb
	mov r1, r8
	mov r2, r5
	bl ov97_0223BEFC
	cmp r0, #0
	beq _0223AA30
	mov r5, r4
	mov r0, sb
	mov r1, r7
	str r5, [sb, #0xc]
	bl ov97_0223CF44
	cmp r0, #0
	blt _0223A9DC
	mov r4, #1
_0223A990:
	cmp r5, #2
	add r5, r5, #1
	bgt _0223AA30
	mov r0, sb
	mov r1, sb
	mov r2, r7
	bl ov97_0223BEFC
	cmp r0, #0
	beq _0223AA30
	mov r0, sl
	mov r1, r4
	bl ov97_0223C3B8
	cmp r0, #0
	beq _0223AA30
	mov r0, sb
	mov r1, r7
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223A990
_0223A9DC:
	ldr r0, [sb, #4]
	mov r1, #1
	cmp r0, #0
	beq _0223AA08
	cmp r0, #1
	bne _0223AA04
	ldr r0, [sb]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223AA08
_0223AA04:
	mov r1, #0
_0223AA08:
	cmp r1, #0
	movne r0, #0
	ldreq r0, [r8, #0xc]
	str r0, [sb, #0xc]
	mov r0, #1
	ldr r2, [r8, #0xc]
	ldr r1, [r7, #0xc]
	str r0, [sp]
	eor r0, r2, r1
	str r0, [sl, #0xc]
_0223AA30:
	ldr r0, [sp]
	str fp, [r6]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223A7C8

	arm_func_start ov97_0223AA44
ov97_0223AA44: ; 0x0223AA44
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x20]
	mov ip, #0x14
	ldr r5, [r4, #0]
	add lr, r4, #4
	mla r6, r5, ip, lr
	add ip, r5, #1
	mov r8, r0
	mov r7, r3
	str ip, [r4]
	cmp r2, #0
	mov r5, #0
	beq _0223AAB4
	cmp r1, r2
	bne _0223AA9C
	mov r0, r6
	mov r2, r4
	bl ov97_0223B408
	cmp r0, #0
	bne _0223AAB8
	b _0223AAD4
_0223AA9C:
	mov r0, r6
	mov r3, r4
	bl ov97_0223BCB8
	cmp r0, #0
	bne _0223AAB8
	b _0223AAD4
_0223AAB4:
	mov r6, r1
_0223AAB8:
	mov r1, r8
	mov r2, r6
	mov r3, r7
	mov r0, #0
	str r4, [sp]
	bl ov97_0223A7C8
	mov r5, #1
_0223AAD4:
	ldr r1, [r4, #0]
	mov r0, r5
	sub r1, r1, #1
	str r1, [r4, #0]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end ov97_0223AA44

	arm_func_start ov97_0223AAF0
ov97_0223AAF0: ; 0x0223AAF0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl ov97_0223D1D0
	add r0, r5, #0x14
	mov r1, #0
	bl ov97_0223D128
	mov r0, r4
	bl ov97_0223D534
	str r0, [r5, #0x28]
	mov r0, #0
	str r0, [r5, #0x2c]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223AAF0

	arm_func_start ov97_0223AB34
ov97_0223AB34: ; 0x0223AB34
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov97_0223D4B8
	add r0, r4, #0x14
	bl ov97_0223D4B8
	ldr r0, [r4, #0x30]
	and r0, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, r4
	bl ov97_0223D5E4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223AB34

	arm_func_start ov97_0223AB68
ov97_0223AB68: ; 0x0223AB68
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov97_0223D3D8
	add r0, r4, #0x14
	bl ov97_0223D3D8
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223AB68

	arm_func_start ov97_0223AB90
ov97_0223AB90: ; 0x0223AB90
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0xc
	bl ov97_0223D4B8
	add r0, r4, #0x20
	bl ov97_0223D4B8
	add r0, r4, #0x34
	bl ov97_0223D4B8
	ldr r0, [r4, #0x4c]
	and r0, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, r4
	bl ov97_0223D5E4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223AB90

	arm_func_start ov97_0223ABD0
ov97_0223ABD0: ; 0x0223ABD0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #0]
	add r0, r4, #0xc
	str r1, [r4, #8]
	bl ov97_0223D3D8
	add r0, r4, #0x20
	bl ov97_0223D3D8
	add r0, r4, #0x34
	bl ov97_0223D3D8
	mov r0, #0
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223ABD0

	arm_func_start ov97_0223AC0C
ov97_0223AC0C: ; 0x0223AC0C
	stmfd sp!, {r4, lr}
	mov r0, #0x50
	bl ov97_0223D62C
	mov r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	bl ov97_0223ABD0
	mov r1, #1
	mov r0, r4
	str r1, [r4, #0x4c]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223AC0C

	arm_func_start ov97_0223AC40
ov97_0223AC40: ; 0x0223AC40
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	mov r6, r1
	ldr r3, [r6, #4]
	mov r7, r0
	cmp r3, #0
	mov r5, r2
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, r7, #0x20
	add r4, r7, #0xc
	bl ov97_0223D1D0
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, sp, #0
	bl ov97_0223D3D8
	mov r1, #1
	mov r0, r6
	str r1, [r7, #0]
	bl ov97_0223D534
	add r1, r0, #0x1f
	asr r0, r1, #4
	add r0, r1, r0, lsr #27
	asr r2, r0, #5
	mov r0, r4
	mov r1, #0
	str r2, [r7, #8]
	bl ov97_0223D128
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, r4
	mov r1, #0x20
	bl ov97_0223CEA8
	cmp r0, #0
	beq _0223ADE4
	ldr r0, [r6, #0]
	ldr r4, [r0, #0]
	mov r0, r4
	bl ov97_0223B148
	mov r1, r0
	add r0, sp, #0
	bl ov97_0223D128
	cmp r0, #0
	beq _0223ADE4
	add r0, sp, #0
	mov r2, #0x20
	mov r1, r0
	bl ov97_0223C5FC
	cmp r0, #0
	beq _0223ADE4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0223AD5C
	cmp r0, #1
	bne _0223AD4C
	ldr r0, [sp]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0223AD5C
_0223AD4C:
	add r0, sp, #0
	mov r1, #1
	bl ov97_0223C258
	b _0223AD70
_0223AD5C:
	add r0, sp, #0
	mvn r1, #0
	bl ov97_0223D128
	cmp r0, #0
	beq _0223ADE4
_0223AD70:
	ldr r2, [sp, #4]
	cmp r2, #1
	ldrge r0, [sp]
	ldrge r1, [r0]
	movlt r1, #0
	cmp r2, #2
	ldrge r0, [sp]
	mov r2, r4
	ldrge r0, [r0, #4]
	movlt r0, #0
	bl ov97_0223A60C
	str r0, [r7, #0x48]
	add r0, r7, #0xc
	mov r1, #0
	bl ov97_0223D128
	ldr r1, [r7, #8]
	add r0, r7, #0xc
	lsl r1, r1, #6
	bl ov97_0223CEA8
	cmp r0, #0
	beq _0223ADE4
	add r0, r7, #0xc
	mov r1, r0
	mov r3, r5
	add r2, r7, #0x20
	bl ov97_0223B5C0
	ldr r1, [r7, #8]
	add r0, r7, #0xc
	bl ov97_0223D438
_0223ADE4:
	add r0, sp, #0
	bl ov97_0223D4B8
	mov r0, #1
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end ov97_0223AC40

	arm_func_start ov97_0223ADFC
ov97_0223ADFC: ; 0x0223ADFC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r4, r2
	mov r7, r1
	cmp r4, #6
	mov r5, r0
	movgt r4, #6
	mov r1, #1
	lsl r2, r1, r4
	ldr r0, [r7, #4]
	sub r2, r2, #1
	add r0, r4, r0, lsl #5
	ldr r3, _0223AFD0 ; =0x0223F158
	str r2, [sp]
	ldr r2, [r3, r4, lsl #2]
	mov r1, r4
	sub r0, r0, #1
	str r2, [sp, #4]
	mov r6, #0
	bl sub_020E1F6C
	mov ip, #0
	lsl r0, r0, #1
	add r0, r0, #2
	mov r8, r6
	add r1, r5, r0
	strb r8, [r5, r0]
	strb r8, [r1, #-1]
	ldr r0, [r7, #0]
	ldr r2, [r7, #4]
	ldr r7, [r0, #0]
	add lr, r0, #4
	cmp r2, #1
	sub sb, r1, #2
	ldrgt r8, [lr], #4
	mov sl, r7
	mov r0, ip
	str ip, [sp, #8]
	mov r1, #0xff
	mov fp, ip
_0223AE98:
	ldr r3, [sp]
	and r3, sl, r3
	ldr sl, [sp, #4]
	ldrb sl, [sl, r3]
	cmp sl, #0
	beq _0223AEF8
	add ip, ip, sl
	add r6, r6, sl
	cmp r6, #0x20
	blo _0223AEE0
	cmp r2, #1
	ble _0223AEF8
	sub r2, r2, #1
	mov r7, r8
	cmp r2, #1
	movle r8, fp
	ldrgt r8, [lr], #4
	sub r6, r6, #0x20
_0223AEE0:
	cmp r6, #0
	moveq sl, r7
	lsrne sl, r7, r6
	rsbne r3, r6, #0x20
	orrne sl, sl, r8, lsl r3
	b _0223AE98
_0223AEF8:
	cmp r3, #0
	beq _0223AF7C
	strb ip, [sb]
	strb r3, [sb, #-1]
	cmp ip, #0x100
	sub sb, sb, #2
	blo _0223AF34
	cmp ip, #0x100
	blo _0223AF34
_0223AF1C:
	strb r1, [sb]
	sub ip, ip, #0x100
	strb r0, [sb, #-1]
	sub sb, sb, #2
	cmp ip, #0x100
	bhs _0223AF1C
_0223AF34:
	mov ip, r4
	add r6, r6, r4
	cmp r6, #0x20
	blo _0223AF64
	cmp r2, #1
	ble _0223AF7C
	sub r2, r2, #1
	mov r7, r8
	cmp r2, #1
	ldrle r8, [sp, #8]
	sub r6, r6, #0x20
	ldrgt r8, [lr], #4
_0223AF64:
	cmp r6, #0
	moveq sl, r7
	lsrne sl, r7, r6
	rsbne r3, r6, #0x20
	orrne sl, sl, r8, lsl r3
	b _0223AE98
_0223AF7C:
	add sb, sb, #1
	mov r0, #2
	b _0223AFA0
_0223AF88:
	strb r2, [r5]
	ldrb r1, [sb, #1]
	add sb, sb, #2
	add r0, r0, #2
	strb r1, [r5, #1]
	add r5, r5, #2
_0223AFA0:
	ldrb r2, [sb]
	cmp r2, #0
	bne _0223AF88
	ldrb r1, [sb, #1]
	cmp r1, #0
	bne _0223AF88
	mov r1, #0
	strb r1, [r5]
	strb r1, [r5, #1]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_0223AFD0: .word 0x0223F158
	arm_func_end ov97_0223ADFC

	arm_func_start ov97_0223AFD4
ov97_0223AFD4: ; 0x0223AFD4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r5, [r3, #0], #4
	mov r2, #0x14
	mla r4, r5, r2, r3
	mov sb, r0
	ldr r0, [sb, #4]
	mov r8, r1
	cmp r0, #0
	mov r5, #0
	lsl r1, r0, #5
	addeq sp, sp, #4
	moveq r0, r5
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	cmp r0, #1
	bne _0223B074
	cmp r0, #1
	bne _0223B038
	ldr r2, [sb]
	ldr r1, _0223B138 ; =0x00010001
	ldr r2, [r2, #0]
	cmp r2, r1
	ldreq r5, _0223B13C ; =0x0223DEC4
	beq _0223B064
_0223B038:
	ldr r1, [sb]
	ldr r1, [r1, #0]
	cmp r1, #0x11
	bne _0223B054
	cmp r0, #1
	ldreq r5, _0223B140 ; =0x0223DEDC
	beq _0223B064
_0223B054:
	cmp r1, #3
	bne _0223B064
	cmp r0, #1
	ldreq r5, _0223B144 ; =0x0223DED0
_0223B064:
	mov r7, #1
	mov r6, r7
	mov r1, #0x20
	b _0223B0A4
_0223B074:
	cmp r1, #0x100
	movge r7, #5
	movge r6, #0x10
	movge r1, #7
	bge _0223B0A4
	cmp r1, #0x80
	movge r6, #8
	movge r1, r6
	movge r7, #4
	movlt r7, #3
	movlt r6, #4
	movlt r1, #0xb
_0223B0A4:
	mul r1, r0
	lsl r0, r1, #1
	add r1, r0, #7
	asr r0, r1, #1
	add r0, r1, r0, lsr #30
	cmp r5, #0
	asr r1, r0, #2
	bne _0223B120
	ldr r0, [r4, #8]
	cmp r1, r0
	movle r0, r4
	ble _0223B0DC
	mov r0, r4
	bl ov97_0223D268
_0223B0DC:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	ldr r5, [r4, #0]
	mov r1, sb
	mov r2, r7
	add r0, r5, #4
	bl ov97_0223ADFC
	add r1, r0, #2
	asr r0, r1, #8
	strb r0, [r5]
	strb r1, [r5, #1]
	strb r7, [r5, #2]
	strb r6, [r5, #3]
	b _0223B124
_0223B120:
	mov r1, #8
_0223B124:
	str r5, [r8]
	add r0, r1, #2
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	; .align 2, 0
_0223B138: .word 0x00010001
_0223B13C: .word 0x0223DEC4
_0223B140: .word 0x0223DEDC
_0223B144: .word 0x0223DED0
	arm_func_end ov97_0223AFD4

	arm_func_start ov97_0223B148
ov97_0223B148: ; 0x0223B148
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	mov r1, sl
	neg r0, sl
	bl sub_020E2178
	mov r8, r1
	mov r7, sl
	mov r5, #0
	mov r6, #1
	mvn r4, #0
	beq _0223B1B0
_0223B174:
	mov r0, r7
	mov r1, r8
	bl sub_020E2178
	mov sb, r1
	mov r0, r7
	mov r1, r8
	bl sub_020E2178
	mla r1, r0, r6, r5
	mov r5, r6
	mov r7, r8
	mov r6, r1
	mov r8, sb
	cmp sb, #0
	neg r4, r4
	bne _0223B174
_0223B1B0:
	cmp r4, #0
	sublt r5, sl, r5
	cmp r7, #1
	movne r1, #0
	bne _0223B1D0
	mov r0, r5
	mov r1, sl
	bl sub_020E2178
_0223B1D0:
	mov r0, r1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end ov97_0223B148

	arm_func_start ov97_0223B1DC
ov97_0223B1DC: ; 0x0223B1DC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov r7, r3
	mov sb, r1
	mov r6, #0
	mov sl, r0
	mov r8, r2
	mov r4, r6
	cmp r7, #0
	add r5, sb, r7, lsl #2
	ldr fp, [sp, #0x30]
	ble _0223B26C
	mov r0, #1
	str r6, [sp, #4]
	str r0, [sp]
_0223B218:
	ldr r1, [sb]
	mov r0, sb
	mul r3, r1
	mov r1, r8
	mov r2, r7
	bl ov97_0223CC58
	add r1, r0, r6
	ldr r0, [r5, #0]
	cmp r1, r6
	ldrlo r6, [sp]
	add r0, r0, r1
	str r0, [r5, #0]
	ldr r0, [r5, #0]
	ldrhs r6, [sp, #4]
	cmp r0, r1
	add r4, r4, #1
	addlo r6, r6, #1
	cmp r4, r7
	add sb, sb, #4
	add r5, r5, #4
	blt _0223B218
_0223B26C:
	cmp r6, #0
	sub r2, r7, #1
	bne _0223B2C0
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	bne _0223B2AC
	cmp r2, #0
	ble _0223B2AC
_0223B290:
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	bne _0223B2AC
	sub r2, r2, #1
	cmp r2, #0
	bgt _0223B290
_0223B2AC:
	ldr r1, [sb, r2, lsl #2]
	ldr r0, [r8, r2, lsl #2]
	cmp r1, r0
	movhs r6, #1
	movlo r6, #0
_0223B2C0:
	cmp r6, #0
	beq _0223B2E8
	mov r0, sl
	mov r1, sb
	mov r2, r8
	mov r3, r7
	bl ov97_0223C700
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223B2E8:
	cmp r7, #0
	addle sp, sp, #0xc
	mov r1, #0
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
_0223B2FC:
	ldr r0, [sb, r1, lsl #2]
	str r0, [sl, r1, lsl #2]
	add r1, r1, #1
	cmp r1, r7
	blt _0223B2FC
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223B1DC

	arm_func_start ov97_0223B31C
ov97_0223B31C: ; 0x0223B31C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov fp, r2
	lsl r6, fp, #1
	mov sl, r0
	mov r7, fp
	mov sb, r1
	sub r7, r7, #1
	sub r2, r6, #1
	mov r0, #0
	str r0, [sl, r2, lsl #2]
	ldr r0, [sl, r2, lsl #2]
	str r3, [sp]
	mov r5, sb
	str r0, [sl]
	cmp r7, #0
	add r4, sl, #4
	ble _0223B384
	add r5, r5, #4
	ldr r3, [sb]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl ov97_0223CAB8
	str r0, [r4, r7, lsl #2]
	add r4, r4, #8
_0223B384:
	sub r8, fp, #2
	cmp r8, #0
	ble _0223B3C4
_0223B390:
	mov r0, r5
	sub r7, r7, #1
	add r5, r5, #4
	ldr r3, [r0, #0]
	mov r0, r4
	mov r1, r5
	mov r2, r7
	bl ov97_0223CC58
	sub r8, r8, #1
	str r0, [r4, r7, lsl #2]
	cmp r8, #0
	add r4, r4, #8
	bgt _0223B390
_0223B3C4:
	mov r0, sl
	mov r1, sl
	mov r2, sl
	mov r3, r6
	bl ov97_0223C814
	ldr r0, [sp]
	mov r1, sb
	mov r2, fp
	bl ov97_0223C964
	ldr r2, [sp]
	mov r0, sl
	mov r1, sl
	mov r3, r6
	bl ov97_0223C814
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223B31C

	arm_func_start ov97_0223B408
ov97_0223B408: ; 0x0223B408
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x64
	ldr r5, [r2, #0]
	mov sb, r0
	mov r8, r1
	cmp r8, sb
	add r3, r2, #4
	mov r2, #0x14
	movne r7, sb
	addeq r0, r5, #1
	mla r4, r5, r2, r3
	mlaeq r7, r0, r2, r3
	ldr r5, [r8, #4]
	cmp r5, #0
	movle r0, #0
	strle r0, [sb, #4]
	addle sp, sp, #0x64
	movle r0, #1
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r0, [r7, #8]
	lsl r6, r5, #1
	cmp r6, r0
	movle r0, r7
	ble _0223B478
	mov r0, r7
	mov r1, r6
	bl ov97_0223D268
_0223B478:
	cmp r0, #0
	addeq sp, sp, #0x64
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	str r6, [r7, #4]
	mov r0, #0
	str r0, [r7, #0xc]
	cmp r5, #4
	bne _0223B4B8
	ldr r0, [r7, #0]
	ldr r1, [r8]
	add r3, sp, #0
	mov r2, #4
	bl ov97_0223B31C
	b _0223B51C
_0223B4B8:
	cmp r5, #8
	bne _0223B4D8
	ldr r0, [r7, #0]
	ldr r1, [r8]
	add r3, sp, #0x20
	mov r2, #8
	bl ov97_0223B31C
	b _0223B51C
_0223B4D8:
	ldr r0, [r4, #8]
	cmp r6, r0
	movle r0, r4
	ble _0223B4F4
	mov r0, r4
	mov r1, r6
	bl ov97_0223D268
_0223B4F4:
	cmp r0, #0
	addeq sp, sp, #0x64
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	ldr r0, [r7, #0]
	ldr r1, [r8]
	ldr r3, [r4, #0]
	mov r2, r5
	bl ov97_0223B31C
_0223B51C:
	cmp r6, #0
	ble _0223B540
	ldr r1, [r7, #0]
	sub r0, r6, #1
	ldr r0, [r1, r0, lsl #2]
	cmp r0, #0
	ldreq r0, [r7, #4]
	subeq r0, r0, #1
	streq r0, [r7, #4]
_0223B540:
	cmp r7, sb
	beq _0223B554
	mov r0, sb
	mov r1, r7
	bl ov97_0223D1D0
_0223B554:
	mov r0, #1
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end ov97_0223B408

	arm_func_start ov97_0223B564
ov97_0223B564: ; 0x0223B564
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [r3, #4]
	cmp ip, #0
	ble _0223B5A8
	ldr ip, [r3]
	ldr ip, [ip]
	and ip, ip, #1
	beq _0223B5A8
	ldr lr, [sp, #0x10]
	mov ip, #0
	str lr, [sp]
	str ip, [sp, #4]
	bl ov97_02239A74
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
_0223B5A8:
	ldr ip, [sp, #0x10]
	str ip, [sp]
	bl ov97_0223A278
	add sp, sp, #0xc
	ldmia sp!, {lr}
	bx lr
	arm_func_end ov97_0223B564

	arm_func_start ov97_0223B5C0
ov97_0223B5C0: ; 0x0223B5C0
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov lr, r1
	mov ip, r2
	str r3, [sp]
	mov r1, r0
	mov r2, lr
	mov r3, ip
	mov r0, #0
	bl ov97_0223B5F4
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end ov97_0223B5C0

	arm_func_start ov97_0223B5F4
ov97_0223B5F4: ; 0x0223B5F4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	mov r6, r3
	ldr r3, [r6, #4]
	mov r8, r0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r3, #0
	ldr r4, [sp, #0x70]
	beq _0223B634
	cmp r3, #1
	bne _0223B644
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0223B644
_0223B634:
	add sp, sp, #0x4c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223B644:
	ldr r0, [sp, #4]
	mov r1, r6
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223B6A4
	ldr r0, [sp]
	cmp r0, #0
	beq _0223B680
	ldr r1, [sp, #4]
	bl ov97_0223D1D0
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
_0223B680:
	cmp r8, #0
	beq _0223B694
	mov r0, r8
	mov r1, #0
	bl ov97_0223D128
_0223B694:
	add sp, sp, #0x4c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223B6A4:
	ldr r3, [r4, #0]
	add r0, r4, #4
	mov r2, #0x14
	mla r1, r3, r2, r0
	mov r3, #0
	str r3, [r1, #0xc]
	ldr r5, [r4, #0]
	str r1, [sp, #0x14]
	add r4, r5, #1
	mla r1, r4, r2, r0
	add r3, r5, #2
	str r1, [sp, #0x18]
	mla r1, r3, r2, r0
	cmp r8, #0
	str r1, [sp, #0x1c]
	addeq r1, r5, #3
	mlaeq r8, r1, r2, r0
	mov r0, r6
	bl ov97_0223D534
	lsr r1, r0, #0x1f
	rsb r0, r1, r0, lsl #27
	add r0, r1, r0, ror #27
	neg r0, r0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #8]
	mov r1, r6
	bl ov97_0223C5FC
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r2, [sp, #8]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r4, #0
	add r2, r2, #0x20
	str r4, [r3, #0xc]
	bl ov97_0223C5FC
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r0, [sp, #0x18]
	mov r1, r4
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x28]
	ldr r4, [r0, #4]
	add r0, sp, #0x38
	sub r1, r4, r1
	str r1, [sp, #0x10]
	bl ov97_0223D3D8
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #0]
	ldr r0, [sp, #0x28]
	sub r1, r0, #1
	ldr r0, [sp, #0x10]
	add r0, r2, r0, lsl #2
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x28]
	cmp r0, #1
	add r0, r2, #1
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x1c]
	moveq r5, #0
	ldr r2, [r0, #0]
	ldr r0, [r2, r1, lsl #2]
	str r0, [sp, #0x24]
	ldrne r0, [sp, #0x28]
	subne r0, r0, #2
	ldrne r5, [r2, r0, lsl #2]
	ldr r0, [sp, #0x18]
	ldr r2, [r8, #8]
	ldr r1, [r0, #0]
	sub r0, r4, #1
	add r7, r1, r0, lsl #2
	ldr r0, [sp, #0x10]
	add r1, r0, #1
	cmp r1, r2
	movle r0, r8
	ble _0223B81C
	mov r0, r8
	bl ov97_0223D268
_0223B81C:
	cmp r0, #0
	beq _0223BB80
	ldr r0, [sp, #4]
	ldr r1, [r6, #0xc]
	ldr r3, [r0, #0xc]
	ldr r0, [sp, #0x10]
	sub r2, r0, #1
	eor r0, r3, r1
	str r0, [r8, #0xc]
	ldr r0, [sp, #0x10]
	str r0, [r8, #4]
	ldr r0, [sp, #0x28]
	ldr r3, [r8]
	add r1, r0, #1
	add r0, r3, r2, lsl #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #8]
	cmp r1, r0
	ldrle r0, [sp, #0x14]
	ble _0223B878
	ldr r0, [sp, #0x14]
	bl ov97_0223D268
_0223B878:
	cmp r0, #0
	beq _0223BB80
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x38
	bl ov97_0223CF44
	cmp r0, #0
	blt _0223B8CC
	add r0, sp, #0x38
	ldr r2, [sp, #0x1c]
	mov r1, r0
	bl ov97_0223BEFC
	cmp r0, #0
	beq _0223BB80
	ldr r0, [sp, #0x20]
	mov r2, #1
	str r2, [r0, #0]
	ldr r0, [r8, #4]
	ldr r1, [r8]
	sub r0, r0, #1
	str r2, [r1, r0, lsl #2]
	b _0223B8D8
_0223B8CC:
	ldr r0, [r8, #4]
	sub r0, r0, #1
	str r0, [r8, #4]
_0223B8D8:
	ldr r0, [sp, #0x10]
	sub r1, r0, #1
	ldr r0, [sp, #0x20]
	cmp r1, #0
	sub r0, r0, #4
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0xc]
	ble _0223BB28
	ldr r8, _0223BB90 ; =0x0000FFFF
	cmp r1, #0
	and r0, r5, r8
	str r0, [sp, #0x2c]
	and r0, r8, r5, lsr #16
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x24]
	and r4, r0, r8
	ble _0223BB28
	and sb, r8, r0, lsr #16
	mvn r0, #0
	str r0, [sp, #0x34]
_0223B92C:
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	sub r1, r1, #4
	add r0, r0, #1
	str r0, [sp, #0x3c]
	str r1, [sp, #0x38]
	ldr fp, [r7]
	ldr r0, [sp, #0x24]
	ldr r5, [r7, #-4]
	cmp fp, r0
	ldreq r6, [sp, #0x34]
	beq _0223B970
	ldr r2, [sp, #0x24]
	mov r0, fp
	mov r1, r5
	bl ov97_0223A60C
	mov r6, r0
_0223B970:
	ldr r0, [sp, #0x2c]
	and r2, r6, r8
	mul ip, r0
	ldr r0, [sp, #0x30]
	and lr, r8, r6, lsr #16
	ldr r1, [sp, #0x30]
	mul r0, r2
	mul r3, r1
	ldr r1, [sp, #0x2c]
	mul sl, sb
	mla r1, lr, r1, r0
	cmp r1, r0
	addlo r3, r3, #0x10000
	and r0, r8, r1, lsr #16
	add r3, r3, r0
	and r0, r1, r8
	add ip, ip, r0, lsl #16
	cmp ip, r0, lsl #16
	mul r0, r2
	mul r1, r4
	mla r2, lr, r4, r0
	addlo r3, r3, #1
	cmp r2, r0
	addlo sl, sl, #0x10000
	and r0, r8, r2, lsr #16
	add sl, sl, r0
	and r0, r2, r8
	add r1, r1, r0, lsl #16
	cmp r1, r0, lsl #16
	addlo sl, sl, #1
	sub r1, r5, r1
	cmp r1, r5
	addhi sl, sl, #1
	sub r0, fp, sl
	bne _0223BA20
	cmp r3, r1
	blo _0223BA20
	cmp r3, r1
	bne _0223BA18
	ldr r0, [r7, #-8]
	cmp ip, r0
	bls _0223BA20
_0223BA18:
	sub r6, r6, #1
	b _0223B970
_0223BA20:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, [sp, #0x28]
	mov r3, r6
	bl ov97_0223CAB8
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x28]
	ldr r3, [r1, #0]
	ldr r1, [sp, #0x28]
	str r0, [r3, r2, lsl #2]
	add r1, r1, #1
	cmp r1, #0
	ble _0223BA80
	ldr r0, [sp, #0x14]
	ldr r2, [r0, #0]
_0223BA64:
	sub r0, r1, #1
	ldr r0, [r2, r0, lsl #2]
	cmp r0, #0
	bne _0223BA80
	sub r1, r1, #1
	cmp r1, #0
	bgt _0223BA64
_0223BA80:
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x14]
	str r1, [r0, #4]
	add r0, sp, #0x38
	mov r1, r0
	ldr r5, [sp, #0x3c]
	bl ov97_0223BDB8
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x3c]
	add r0, r1, r0
	sub r1, r0, r5
	ldr r0, [sp, #0x18]
	str r1, [r0, #4]
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0223BAF8
	add r0, sp, #0x38
	ldr r2, [sp, #0x1c]
	mov r1, r0
	sub r6, r6, #1
	ldr r5, [sp, #0x3c]
	bl ov97_0223C17C
	ldr r0, [sp, #0x18]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x3c]
	sub r0, r0, r5
	add r1, r1, r0
	ldr r0, [sp, #0x18]
	str r1, [r0, #4]
_0223BAF8:
	ldr r0, [sp, #0x20]
	sub r7, r7, #4
	str r6, [r0, #0], #-4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	sub r1, r0, #1
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0223B92C
_0223BB28:
	ldr r0, [sp, #0x18]
	bl ov97_0223D3EC
	ldr r0, [sp]
	cmp r0, #0
	beq _0223BB70
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r1, [sp, #0x18]
	add r2, r2, #0x20
	ldr r4, [r3, #0xc]
	bl ov97_0223C4E0
	cmp r0, #0
	addeq sp, sp, #0x4c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	ldr r0, [sp]
	str r4, [r0, #0xc]
_0223BB70:
	add sp, sp, #0x4c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223BB80:
	mov r0, #0
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	; .align 2, 0
_0223BB90: .word 0x0000FFFF
	arm_func_end ov97_0223B5F4

	arm_func_start ov97_0223BB94
ov97_0223BB94: ; 0x0223BB94
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	ldr r5, [sp, #0x20]
	mov r7, r2
	mov sb, r0
	mov r8, r1
	mov r6, r3
	cmp r7, r5
	bge _0223BBD0
	mov r1, r7
	mov r0, r8
	mov r7, r5
	mov r8, r6
	mov r5, r1
	mov r6, r0
_0223BBD0:
	ldr r3, [r6, #0]
	mov r0, sb
	mov r1, r8
	mov r2, r7
	add r4, sb, r7, lsl #2
	bl ov97_0223CAB8
	str r0, [sb, r7, lsl #2]
_0223BBEC:
	sub r0, r5, #1
	cmp r0, #0
	addle sp, sp, #4
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #4]
	mov r1, r8
	mov r2, r7
	add r0, sb, #4
	bl ov97_0223CC58
	sub r1, r5, #2
	cmp r1, #0
	addle sp, sp, #4
	str r0, [r4, #4]
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #8]
	mov r1, r8
	mov r2, r7
	add r0, sb, #8
	bl ov97_0223CC58
	sub r1, r5, #3
	cmp r1, #0
	addle sp, sp, #4
	str r0, [r4, #8]
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #0xc]
	mov r1, r8
	mov r2, r7
	add r0, sb, #0xc
	bl ov97_0223CC58
	sub r5, r5, #4
	cmp r5, #0
	addle sp, sp, #4
	str r0, [r4, #0xc]
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r3, [r6, #0x10]
	mov r1, r8
	mov r2, r7
	add r0, sb, #0x10
	bl ov97_0223CC58
	str r0, [r4, #0x10]
	add r4, r4, #0x10
	add sb, sb, #0x10
	add r6, r6, #0x10
	b _0223BBEC
	arm_func_end ov97_0223BB94

	arm_func_start ov97_0223BCAC
ov97_0223BCAC: ; 0x0223BCAC
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end ov97_0223BCAC

	arm_func_start ov97_0223BCB8
ov97_0223BCB8: ; 0x0223BCB8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #4
	mov sb, r1
	ldr r6, [sb, #4]
	mov r8, r2
	mov sl, r0
	cmp r6, #0
	ldr r5, [r8, #4]
	beq _0223BCE4
	cmp r5, #0
	bne _0223BD00
_0223BCE4:
	mov r0, sl
	mov r1, #0
	bl ov97_0223D128
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
_0223BD00:
	ldr r1, [sb, #0xc]
	ldr r0, [r8, #0xc]
	cmp sl, sb
	add r7, r6, r5
	eor fp, r1, r0
	beq _0223BD20
	cmp sl, r8
	bne _0223BD38
_0223BD20:
	ldr r0, [r3, #0]
	add r2, r3, #4
	add r1, r0, #1
	mov r0, #0x14
	mla r4, r1, r0, r2
	b _0223BD3C
_0223BD38:
	mov r4, sl
_0223BD3C:
	ldr r0, [r4, #8]
	cmp r7, r0
	movle r0, r4
	ble _0223BD58
	mov r0, r4
	mov r1, r7
	bl ov97_0223D268
_0223BD58:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxeq lr
	str r7, [r4, #4]
	str r5, [sp]
	ldr r0, [r4, #0]
	ldr r1, [sb]
	ldr r3, [r8]
	mov r2, r6
	bl ov97_0223BB94
	mov r0, r4
	str fp, [sl, #0xc]
	bl ov97_0223D3EC
	cmp sl, r4
	beq _0223BDA8
	mov r0, sl
	mov r1, r4
	bl ov97_0223D1D0
_0223BDA8:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223BCB8

	arm_func_start ov97_0223BDB8
ov97_0223BDB8: ; 0x0223BDB8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r6, r1
	ldr r1, [r6, #0xc]
	mov r3, #0
	mov r7, r0
	mov r5, r2
	mov r4, r3
	cmp r1, #0
	beq _0223BE00
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r0, r6
	moveq r3, #1
	movne r6, r5
	movne r5, r0
	moveq r4, r3
	b _0223BE0C
_0223BE00:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r3, #1
_0223BE0C:
	cmp r3, #0
	beq _0223BE40
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov97_0223C060
	cmp r0, #0
	moveq r0, #0
	add sp, sp, #4
	strne r4, [r7, #0xc]
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
_0223BE40:
	ldr r0, [r5, #4]
	ldr r1, [r6, #4]
	cmp r1, r0
	movle r1, r0
	ldr r0, [r7, #8]
	cmp r1, r0
	movle r0, r7
	ble _0223BE68
	mov r0, r7
	bl ov97_0223D268
_0223BE68:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, r6
	mov r1, r5
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223BEC0
	mov r0, r7
	mov r1, r5
	mov r2, r6
	bl ov97_0223BEFC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, #1
	str r0, [r7, #0xc]
	b _0223BEEC
_0223BEC0:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	bl ov97_0223BEFC
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	mov r0, #0
	str r0, [r7, #0xc]
_0223BEEC:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end ov97_0223BDB8

	arm_func_start ov97_0223BEFC
ov97_0223BEFC: ; 0x0223BEFC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r1
	mov r7, r2
	ldr r5, [r7, #4]
	ldr r6, [r8, #4]
	mov r4, r0
	cmp r6, r5
	movlt r0, #0
	ldmia sp!,lt {r4, r5, r6, r7, r8, sb, sl, lr}
	bxlt lr
	ldr r1, [r4, #8]
	cmp r6, r1
	ble _0223BF38
	mov r1, r6
	bl ov97_0223D268
_0223BF38:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	mov r3, #0
	mov r0, r3
	cmp r5, #0
	ldr r2, [r8]
	ldr sb, [r7]
	ldr r1, [r4, #0]
	ble _0223BFB8
	mov ip, r3
	mov r7, r3
	mov lr, #1
_0223BF70:
	cmp r3, #0
	ldr sl, [r2], #4
	ldr r8, [sb], #4
	beq _0223BF98
	cmp sl, r8
	movls r3, lr
	sub r8, sl, r8
	movhi r3, ip
	sub sl, r8, #1
	b _0223BFA8
_0223BF98:
	cmp sl, r8
	movlo r3, lr
	movhs r3, r7
	sub sl, sl, r8
_0223BFA8:
	add r0, r0, #1
	cmp r0, r5
	str sl, [r1], #4
	blt _0223BF70
_0223BFB8:
	cmp r3, #0
	beq _0223BFE8
	cmp r0, r6
	bge _0223BFE8
_0223BFC8:
	ldr r5, [r2, #0], #4
	add r0, r0, #1
	sub r3, r5, #1
	cmp r5, r3
	str r3, [r1, #0], #4
	bhi _0223BFE8
	cmp r0, r6
	blt _0223BFC8
_0223BFE8:
	cmp r1, r2
	beq _0223C048
_0223BFF0:
	cmp r0, r6
	bge _0223C048
	ldr r5, [r2, #0]
	add r3, r0, #1
	str r5, [r1, #0]
	cmp r3, r6
	bge _0223C048
	ldr r5, [r2, #4]
	add r3, r0, #2
	str r5, [r1, #4]
	cmp r3, r6
	bge _0223C048
	ldr r5, [r2, #8]
	add r3, r0, #3
	str r5, [r1, #8]
	cmp r3, r6
	ldrlt r3, [r2, #0xc]
	add r0, r0, #4
	strlt r3, [r1, #0xc]
	addlt r2, r2, #0x10
	addlt r1, r1, #0x10
	blt _0223BFF0
_0223C048:
	mov r0, r4
	str r6, [r4, #4]
	bl ov97_0223D3EC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end ov97_0223BEFC

	arm_func_start ov97_0223C060
ov97_0223C060: ; 0x0223C060
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r8, r2
	ldr r2, [r4, #4]
	ldr r1, [r8, #4]
	mov sb, r0
	cmp r2, r1
	movlt r0, r4
	movlt r4, r8
	movlt r8, r0
	ldr r6, [r4, #4]
	ldr r0, [sb, #8]
	add r1, r6, #1
	cmp r1, r0
	ldr r7, [r8, #4]
	movle r0, sb
	ble _0223C0B0
	mov r0, sb
	bl ov97_0223D268
_0223C0B0:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bxeq lr
	str r6, [sb, #4]
	ldr r5, [r4, #0]
	ldr r4, [sb]
	ldr r2, [r8]
	mov r0, r4
	mov r1, r5
	mov r3, r7
	bl ov97_0223C814
	cmp r0, #0
	add r4, r4, r7, lsl #2
	add r5, r5, r7, lsl #2
	beq _0223C148
	cmp r7, r6
	bge _0223C128
_0223C0FC:
	ldr r2, [r5, #0], #4
	mov r3, r4
	add r1, r2, #1
	str r1, [r4, #0], #4
	ldr r1, [r3, #0]
	add r7, r7, #1
	cmp r1, r2
	movhs r0, #0
	bhs _0223C128
	cmp r7, r6
	blt _0223C0FC
_0223C128:
	cmp r7, r6
	blt _0223C148
	cmp r0, #0
	movne r0, #1
	strne r0, [r4], #4
	ldrne r0, [sb, #4]
	addne r0, r0, #1
	strne r0, [sb, #4]
_0223C148:
	cmp r4, r5
	beq _0223C16C
	cmp r7, r6
	bge _0223C16C
_0223C158:
	ldr r0, [r5, #0], #4
	add r7, r7, #1
	cmp r7, r6
	str r0, [r4, #0], #4
	blt _0223C158
_0223C16C:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	arm_func_end ov97_0223C060

	arm_func_start ov97_0223C17C
ov97_0223C17C: ; 0x0223C17C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	ldr r2, [r5, #0xc]
	ldr r1, [r4, #0xc]
	mov r6, r0
	eor r0, r2, r1
	beq _0223C220
	cmp r2, #0
	movne r0, r5
	movne r5, r4
	movne r4, r0
	mov r0, r5
	mov r1, r4
	bl ov97_0223CF44
	cmp r0, #0
	bge _0223C1EC
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl ov97_0223BEFC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mov r0, #1
	str r0, [r6, #0xc]
	b _0223C214
_0223C1EC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov97_0223BEFC
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mov r0, #0
	str r0, [r6, #0xc]
_0223C214:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
_0223C220:
	cmp r2, #0
	movne r0, #1
	strne r0, [r6, #0xc]
	moveq r0, #0
	streq r0, [r6, #0xc]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov97_0223C060
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_0223C17C

	arm_func_start ov97_0223C258
ov97_0223C258: ; 0x0223C258
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _0223C2A4
	mov r2, #0
	str r2, [r5, #0xc]
	bl ov97_0223C3B8
	mov r1, #1
	add sp, sp, #4
	str r1, [r5, #0xc]
	ldmia sp!, {r4, r5, lr}
	bx lr
_0223C2A4:
	ldr r1, [r5, #4]
	cmp r1, #1
	bgt _0223C348
	cmp r1, #0
	bne _0223C300
	ldr r1, [r5, #8]
	cmp r1, #1
	bge _0223C2CC
	mov r1, #1
	bl ov97_0223D268
_0223C2CC:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r5, #0]
	mov r0, #1
	str r4, [r1, #0]
	str r0, [r5, #0xc]
	add sp, sp, #4
	str r0, [r5, #4]
	ldmia sp!, {r4, r5, lr}
	bx lr
_0223C300:
	ldr r2, [r5, #0]
	ldr r1, [r2, #0]
	cmp r1, r4
	moveq r0, #0
	streq r0, [r5, #4]
	beq _0223C338
	cmp r1, r4
	subhi r0, r1, r4
	strhi r0, [r2]
	movls r0, #1
	strls r0, [r5, #0xc]
	ldrls r0, [r5]
	subls r1, r4, r1
	strls r1, [r0]
_0223C338:
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, lr}
	bx lr
_0223C348:
	mov r0, #0
	mov r1, #1
_0223C350:
	ldr ip, [r5]
	lsl r3, r0, #2
	ldr r2, [ip, r0, lsl #2]
	cmp r2, r4
	ldrhs r1, [ip, r3]
	subhs r1, r1, r4
	strhs r1, [ip, r3]
	bhs _0223C388
	ldr r2, [ip, r3]
	add r0, r0, #1
	sub r2, r2, r4
	mov r4, r1
	str r2, [ip, r3]
	b _0223C350
_0223C388:
	ldr r1, [r5, #0]
	ldr r1, [r1, r3]
	cmp r1, #0
	bne _0223C3A8
	ldr r1, [r5, #4]
	sub r1, r1, #1
	cmp r0, r1
	streq r1, [r5, #4]
_0223C3A8:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223C258

	arm_func_start ov97_0223C3B8
ov97_0223C3B8: ; 0x0223C3B8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r1
	mov r5, r0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _0223C460
	ldr r2, [r5, #4]
	cmp r2, #1
	ble _0223C410
	mov r2, #0
	str r2, [r5, #0xc]
	bl ov97_0223C258
	mov r1, #1
	add sp, sp, #4
	str r1, [r5, #0xc]
	ldmia sp!, {r4, r5, lr}
	bx lr
_0223C410:
	ldr r2, [r5, #0]
	ldr r1, [r2, #0]
	cmp r1, r4
	subhi r0, r1, r4
	strhi r0, [r2]
	bhi _0223C450
	cmp r1, r4
	movhs r0, #0
	strhs r0, [r5, #0xc]
	strhs r0, [r5, #4]
	bhs _0223C450
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5, #0]
	sub r1, r4, r1
	str r1, [r0, #0]
_0223C450:
	add sp, sp, #4
	mov r0, #1
	ldmia sp!, {r4, r5, lr}
	bx lr
_0223C460:
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	add r1, r1, #1
	cmp r1, r2
	ble _0223C478
	bl ov97_0223D268
_0223C478:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r5, #0]
	ldr r0, [r5, #4]
	mov r3, #0
	str r3, [r1, r0, lsl #2]
	mov r0, #1
_0223C4A0:
	ldr r2, [r5, #0]
	ldr r1, [r2, r3, lsl #2]
	add r1, r4, r1
	cmp r4, r1
	str r1, [r2, r3, lsl #2]
	movhi r4, r0
	addhi r3, r3, #1
	bhi _0223C4A0
	ldr r0, [r5, #4]
	cmp r3, r0
	addge r0, r0, #1
	strge r0, [r5, #4]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223C3B8

	arm_func_start ov97_0223C4E0
ov97_0223C4E0: ; 0x0223C4E0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	asr r1, r2, #4
	lsr r3, r2, #0x1f
	add r1, r2, r1, lsr #27
	rsb r2, r3, r2, lsl #27
	add r4, r3, r2, ror #27
	ldr r2, [r7, #4]
	asr r6, r1, #5
	mov r8, r0
	cmp r6, r2
	neg r5, r4x20
	ble _0223C528
	mov r1, #0
	bl ov97_0223D128
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
_0223C528:
	cmp r8, r7
	beq _0223C560
	sub r1, r2, r6
	ldr r2, [r8, #8]
	add r1, r1, #2
	cmp r1, r2
	ble _0223C548
	bl ov97_0223D268
_0223C548:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r0, [r7, #0xc]
	str r0, [r8, #0xc]
_0223C560:
	ldr r0, [r7, #0]
	ldr r1, [r7, #4]
	add r2, r0, r6, lsl #2
	ldr r0, [r8]
	sub r7, r1, r6
	mov r6, r2
	str r7, [r8, #4]
	cmp r4, #0
	bne _0223C5A8
	add r2, r7, #1
	cmp r2, #0
	ble _0223C5E8
_0223C590:
	ldr r1, [r6, #0], #4
	sub r2, r2, #1
	cmp r2, #0
	str r1, [r0, #0], #4
	bgt _0223C590
	b _0223C5E8
_0223C5A8:
	cmp r7, #1
	add r6, r2, #4
	ldr r3, [r2, #0]
	mov r2, #1
	ble _0223C5D8
_0223C5BC:
	lsr r1, r3, r4
	ldr r3, [r6, #0], #4
	add r2, r2, #1
	orr r1, r1, r3, lsl r5
	cmp r2, r7
	str r1, [r0, #0], #4
	blt _0223C5BC
_0223C5D8:
	lsr r1, r3, r4
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
_0223C5E8:
	mov r0, r8
	bl ov97_0223D3EC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	arm_func_end ov97_0223C4E0

	arm_func_start ov97_0223C5FC
ov97_0223C5FC: ; 0x0223C5FC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r4, r1
	mov r7, r2
	asr r1, r7, #4
	mov r5, r0
	add r2, r7, r1, lsr #27
	ldr r1, [r4, #4]
	ldr r3, [r5, #8]
	add r1, r1, r2, asr #5
	add r1, r1, #1
	cmp r1, r3
	asr r6, r2, #5
	ble _0223C634
	bl ov97_0223D268
_0223C634:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bxeq lr
	ldr r0, [r4, #0xc]
	lsr r1, r7, #0x1f
	str r0, [r5, #0xc]
	ldr r3, [r4, #4]
	rsb r0, r1, r7, lsl #27
	add ip, r1, r0, ror #27
	ldr r2, [r4, #0]
	ldr r0, [r5, #0]
	add r1, r3, r6
	mov r3, #0
	str r3, [r0, r1, lsl #2]
	neg r3, ipx20
	bne _0223C69C
	ldr r1, [r4, #4]
	sub r7, r1, #1
	bmi _0223C6D0
_0223C684:
	ldr r3, [r2, r7, lsl #2]
	add r1, r6, r7
	str r3, [r0, r1, lsl #2]
	sub r7, r7, #1
	bpl _0223C684
	b _0223C6D0
_0223C69C:
	ldr r1, [r4, #4]
	sub r1, r1, #1
	bmi _0223C6D0
_0223C6A8:
	add sb, r6, r1
	add r8, sb, #1
	ldr sl, [r2, r1, lsl #2]
	ldr lr, [r0, r8, lsl #2]
	lsl r7, sl, ip
	orr lr, lr, sl, lsr r3
	str lr, [r0, r8, lsl #2]
	str r7, [r0, sb, lsl #2]
	sub r1, r1, #1
	bpl _0223C6A8
_0223C6D0:
	lsl r2, r6, #2
	mov r1, #0
	bl sub_020C4CF4
	ldr r1, [r4, #4]
	mov r0, r5
	add r1, r1, r6
	add r1, r1, #1
	str r1, [r5, #4]
	bl ov97_0223D3EC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end ov97_0223C5FC

	arm_func_start ov97_0223C700
ov97_0223C700: ; 0x0223C700
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	cmp r3, #0
	movle r0, #0
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, sl, lr}
	bxle lr
	mov r6, #0
	mov r4, r6
	mov lr, r6
	mov ip, r6
	mov r7, r6
	mov r5, #1
_0223C72C:
	ldr sl, [r1]
	ldr sb, [r2]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0]
	cmp sl, sb
	beq _0223C754
	cmp sl, sb
	movlo r6, r5
	movhs r6, r4
_0223C754:
	sub r8, r3, #1
	cmp r8, #0
	ble _0223C808
	ldr sl, [r1, #4]
	ldr sb, [r2, #4]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #4]
	cmp sl, sb
	beq _0223C788
	cmp sl, sb
	movlo r6, r5
	movhs r6, lr
_0223C788:
	sub r8, r3, #2
	cmp r8, #0
	ble _0223C808
	ldr sl, [r1, #8]
	ldr sb, [r2, #8]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #8]
	cmp sl, sb
	beq _0223C7BC
	cmp sl, sb
	movlo r6, r5
	movhs r6, ip
_0223C7BC:
	sub r8, r3, #3
	cmp r8, #0
	ble _0223C808
	ldr sl, [r1, #0xc]
	ldr sb, [r2, #0xc]
	sub r8, sl, sb
	sub r8, r8, r6
	str r8, [r0, #0xc]
	cmp sl, sb
	beq _0223C7F0
	cmp sl, sb
	movlo r6, r5
	movhs r6, r7
_0223C7F0:
	sub r3, r3, #4
	cmp r3, #0
	addgt r1, r1, #0x10
	addgt r2, r2, #0x10
	addgt r0, r0, #0x10
	bgt _0223C72C
_0223C808:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bx lr
	arm_func_end ov97_0223C700

	arm_func_start ov97_0223C814
ov97_0223C814: ; 0x0223C814
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	cmp r3, #0
	addle sp, sp, #0xc
	movle r0, #0
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bxle lr
	mov ip, #0
	mov r7, ip
	mov r6, ip
	mov r5, ip
	mov r4, ip
	mov lr, ip
	mov fp, ip
	str ip, [sp]
	str ip, [sp, #4]
	mov r8, #1
_0223C858:
	ldr sb, [r1]
	add sl, sb, ip
	ldr sb, [r2]
	cmp sl, ip
	movlo ip, r8
	add sb, sl, sb
	movhs ip, r7
	cmp sb, sl
	movlo sl, r8
	movhs sl, r6
	str sb, [r0]
	sub sb, r3, #1
	add ip, ip, sl
	cmp sb, #0
	ble _0223C954
	ldr sb, [r1, #4]
	ldr sl, [r2, #4]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	movhs ip, r5
	cmp sl, sb
	movlo sb, r8
	movhs sb, r4
	add ip, ip, sb
	sub sb, r3, #2
	str sl, [r0, #4]
	cmp sb, #0
	ble _0223C954
	ldr sb, [r1, #8]
	ldr sl, [r2, #8]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	movhs ip, lr
	cmp sl, sb
	movlo sb, r8
	movhs sb, fp
	add ip, ip, sb
	sub sb, r3, #3
	str sl, [r0, #8]
	cmp sb, #0
	ble _0223C954
	ldr sb, [r1, #0xc]
	ldr sl, [r2, #0xc]
	add sb, sb, ip
	cmp sb, ip
	movlo ip, r8
	add sl, sb, sl
	ldrhs ip, [sp]
	cmp sl, sb
	movlo sb, r8
	ldrhs sb, [sp, #4]
	sub r3, r3, #4
	cmp r3, #0
	str sl, [r0, #0xc]
	add ip, ip, sb
	addgt r1, r1, #0x10
	addgt r2, r2, #0x10
	addgt r0, r0, #0x10
	bgt _0223C858
_0223C954:
	mov r0, ip
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	bx lr
	arm_func_end ov97_0223C814

	arm_func_start ov97_0223C964
ov97_0223C964: ; 0x0223C964
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r2, #0
	ldmia sp!,le {r4, r5, r6, r7, r8, lr}
	bxle lr
	mov r3, #0x8000
	ldr lr, _0223CAB4 ; =0x0000FFFF
	neg ip, r3
_0223C980:
	ldr r5, [r1, #0]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4
	mul r5, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	neg r3, r3
	mul r5, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0]
	str r3, [r0, #4]
	sub r3, r2, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r4, [r1, #4]
	and r7, lr, r4, lsr #16
	and r3, r4, lr
	mul r6, r3
	mul r4, r3
	and r3, r6, lr
	add r8, r4, r3, lsl #17
	mul r5, r7
	and r4, r6, ip
	cmp r8, r3, lsl #17
	add r3, r5, r4, lsr #15
	addlo r3, r3, #1
	str r8, [r0, #8]
	str r3, [r0, #0xc]
	sub r3, r2, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r5, [r1, #8]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4
	mul r5, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	neg r3, r3
	mul r5, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0, #0x10]
	str r3, [r0, #0x14]
	sub r3, r2, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, lr}
	bxeq lr
	ldr r5, [r1, #0xc]
	mov r3, #0x8000
	and r4, r5, lr
	and r7, lr, r5, lsr #16
	mul r6, r4
	mul r5, r4
	and r4, r6, lr
	add r8, r5, r4, lsl #17
	neg r3, r3
	mul r5, r7
	and r3, r6, r3
	add r3, r5, r3, lsr #15
	cmp r8, r4, lsl #17
	addlo r3, r3, #1
	str r8, [r0, #0x18]
	sub r2, r2, #4
	str r3, [r0, #0x1c]
	addne r1, r1, #0x10
	addne r0, r0, #0x20
	bne _0223C980
	ldmia sp!, {r4, r5, r6, r7, r8, lr}
	bx lr
	; .align 2, 0
_0223CAB4: .word 0x0000FFFF
	arm_func_end ov97_0223C964

	arm_func_start ov97_0223CAB8
ov97_0223CAB8: ; 0x0223CAB8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov r4, #0
	addle sp, sp, #4
	movle r0, r4
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r5, _0223CC54 ; =0x0000FFFF
	and lr, r3, r5
	and ip, r5, r3, lsr #16
_0223CAE4:
	ldr r3, [r1, #0]
	and r7, r5, r3, lsr #16
	mul r6, lr
	and r3, r3, r5
	mla sb, ip, r3, r6
	mul r8, r3
	mul r3, r7
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	add r6, r8, r4
	addlo r3, r3, #1
	cmp r6, r4
	addlo r3, r3, #1
	str r6, [r0, #0]
	mov r4, r3
	sub r6, r2, #1
	beq _0223CC44
	ldr r4, [r1, #4]
	and r7, r5, r4, lsr #16
	mul r6, lr
	and r4, r4, r5
	mla sb, ip, r4, r6
	mul r8, r4
	mul r4, r7
	cmp sb, r6
	and r6, sb, r5
	addlo r4, r4, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r4, r4, r7
	add r6, r8, r3
	addlo r4, r4, #1
	cmp r6, r3
	addlo r4, r4, #1
	str r6, [r0, #4]
	sub r3, r2, #2
	beq _0223CC44
	ldr r3, [r1, #8]
	and r7, r5, r3, lsr #16
	mul r6, lr
	and r3, r3, r5
	mla sb, ip, r3, r6
	mul r8, r3
	mul r3, r7
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	add r6, r8, r4
	addlo r3, r3, #1
	cmp r6, r4
	addlo r3, r3, #1
	str r6, [r0, #8]
	mov r4, r3
	sub r6, r2, #3
	beq _0223CC44
	ldr r4, [r1, #0xc]
	and r7, r5, r4, lsr #16
	mul r6, lr
	and r4, r4, r5
	mla sb, ip, r4, r6
	mul r8, r4
	mul r4, r7
	cmp sb, r6
	and r6, sb, r5
	addlo r4, r4, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r4, r4, r7
	add r6, r8, r3
	addlo r4, r4, #1
	cmp r6, r3
	addlo r4, r4, #1
	sub r2, r2, #4
	str r6, [r0, #0xc]
	addne r1, r1, #0x10
	addne r0, r0, #0x10
	bne _0223CAE4
_0223CC44:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	; .align 2, 0
_0223CC54: .word 0x0000FFFF
	arm_func_end ov97_0223CAB8

	arm_func_start ov97_0223CC58
ov97_0223CC58: ; 0x0223CC58
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #4
	cmp r2, #0
	mov ip, #0
	addle sp, sp, #4
	movle r0, ip
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, lr}
	bxle lr
	ldr r5, _0223CE34 ; =0x0000FFFF
	and r4, r3, r5
	and lr, r5, r3, lsr #16
_0223CC84:
	ldr r3, [r1, #0]
	and r7, r5, r3, lsr #16
	mul r6, r4
	and r3, r3, r5
	mla sb, lr, r3, r6
	mul r8, r3
	mul r3, r7
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	ldr r6, [r0, #0]
	addlo r3, r3, #1
	add r7, r8, ip
	cmp r7, ip
	add r7, r7, r6
	addlo r3, r3, #1
	cmp r7, r6
	addlo r3, r3, #1
	mov ip, r3
	str r7, [r0, #0]
	sub r6, r2, #1
	beq _0223CE24
	ldr ip, [r1, #4]
	and r7, r5, ip, lsr #16
	mul r6, r4
	and ip, ip, r5
	mla sb, lr, ip, r6
	mul r8, ip
	mul ip, r7
	cmp sb, r6
	and r6, sb, r5
	addlo ip, ip, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add ip, ip, r7
	add r6, r8, r3
	addlo ip, ip, #1
	cmp r6, r3
	ldr r3, [r0, #4]
	addlo ip, ip, #1
	add r6, r6, r3
	cmp r6, r3
	addlo ip, ip, #1
	str r6, [r0, #4]
	sub r3, r2, #2
	beq _0223CE24
	ldr r3, [r1, #8]
	and r7, r5, r3, lsr #16
	mul r6, r4
	and r3, r3, r5
	mla sb, lr, r3, r6
	mul r8, r3
	mul r3, r7
	cmp sb, r6
	and r6, sb, r5
	addlo r3, r3, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add r3, r3, r7
	ldr r6, [r0, #8]
	addlo r3, r3, #1
	add r7, r8, ip
	cmp r7, ip
	add r7, r7, r6
	addlo r3, r3, #1
	cmp r7, r6
	addlo r3, r3, #1
	mov ip, r3
	str r7, [r0, #8]
	sub r6, r2, #3
	beq _0223CE24
	ldr ip, [r1, #0xc]
	and r7, r5, ip, lsr #16
	mul r6, r4
	and ip, ip, r5
	mla sb, lr, ip, r6
	mul r8, ip
	mul ip, r7
	cmp sb, r6
	and r6, sb, r5
	addlo ip, ip, #0x10000
	and r7, r5, sb, lsr #16
	add r8, r8, r6, lsl #16
	cmp r8, r6, lsl #16
	add ip, ip, r7
	add r6, r8, r3
	addlo ip, ip, #1
	cmp r6, r3
	ldr r3, [r0, #0xc]
	addlo ip, ip, #1
	add r6, r6, r3
	cmp r6, r3
	addlo ip, ip, #1
	sub r2, r2, #4
	str r6, [r0, #0xc]
	addne r1, r1, #0x10
	addne r0, r0, #0x10
	bne _0223CC84
_0223CE24:
	mov r0, ip
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	bx lr
	; .align 2, 0
_0223CE34: .word 0x0000FFFF
	arm_func_end ov97_0223CC58

	arm_func_start ov97_0223CE38
ov97_0223CE38: ; 0x0223CE38
	stmdb sp!, {lr}
	sub sp, sp, #4
	cmp r1, #0
	addlt sp, sp, #4
	movlt r0, #0
	ldmlt sp!, {lr}
	bxlt lr
	asr r2, r1, #4
	add r2, r1, r2, lsr #27
	lsr r3, r1, #0x1f
	ldr ip, [r0, #4]
	asr lr, r2, #5
	cmp ip, lr
	rsb r1, r3, r1, lsl #27
	addle sp, sp, #4
	add r2, r3, r1, ror #27
	movle r0, #0
	ldmle sp!, {lr}
	bxle lr
	ldr r1, [r0, #0]
	mov r0, #1
	lsl r2, r0, r2
	ldr r1, [r1, lr, lsl #2]
	and r1, r2, r1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end ov97_0223CE38

	arm_func_start ov97_0223CEA8
ov97_0223CEA8: ; 0x0223CEA8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	asr r2, r1, #4
	add r2, r1, r2, lsr #27
	lsr r3, r1, #0x1f
	rsb r1, r3, r1, lsl #27
	ldr r4, [r6, #4]
	asr r5, r2, #5
	cmp r4, r5
	add r4, r3, r1, ror #27
	bgt _0223CF28
	ldr r2, [r6, #8]
	add r1, r5, #1
	cmp r1, r2
	ble _0223CEE8
	bl ov97_0223D268
_0223CEE8:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	ldr r3, [r6, #4]
	add r2, r5, #1
	cmp r3, r2
	bge _0223CF20
	mov r1, #0
_0223CF0C:
	ldr r0, [r6, #0]
	str r1, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r3, r2
	blt _0223CF0C
_0223CF20:
	add r0, r5, #1
	str r0, [r6, #4]
_0223CF28:
	ldr r2, [r6, #0]
	mov r0, #1
	ldr r1, [r2, r5, lsl #2]
	orr r1, r1, r0, lsl r4
	str r1, [r2, r5, lsl #2]
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_0223CEA8

	arm_func_start ov97_0223CF44
ov97_0223CF44: ; 0x0223CF44
	ldr r3, [r0, #4]
	ldr r2, [r1, #4]
	sub r2, r3, r2
	movne r0, r2
	bxne lr
	sub r2, r3, #1
	ldr ip, [r0]
	ldr r3, [r1, #0]
	bmi _0223CF90
_0223CF68:
	ldr r1, [ip, r2, lsl #2]
	ldr r0, [r3, r2, lsl #2]
	cmp r1, r0
	beq _0223CF88
	cmp r1, r0
	movhi r0, #1
	mvnls r0, #0
	bx lr
_0223CF88:
	sub r2, r2, #1
	bpl _0223CF68
_0223CF90:
	mov r0, #0
	bx lr
	arm_func_end ov97_0223CF44

	arm_func_start ov97_0223CF98
ov97_0223CF98: ; 0x0223CF98
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	bl ov97_0223D534
	add r1, r0, #7
	asr r0, r1, #2
	add r0, r1, r0, lsr #29
	asr r0, r0, #3
	cmp r0, #0
	addle sp, sp, #4
	sub ip, r0, #1
	ldmia sp!,le {r4, r5, lr}
	bxle lr
_0223CFD0:
	lsr r3, ip, #0x1f
	asr r1, ip, #1
	rsb r2, r3, ip, lsl #30
	add r1, ip, r1, lsr #30
	add r2, r3, r2, ror #30
	ldr r3, [r5, #0]
	asr r1, r1, #2
	ldr r3, [r3, r1, lsl #2]
	lsl r1, r2, #3
	lsr r1, r3, r1
	cmp ip, #0
	strb r1, [r4], #1
	sub ip, ip, #1
	bgt _0223CFD0
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223CF98

	arm_func_start ov97_0223D014
ov97_0223D014: ; 0x0223D014
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #4
	mov r5, r2
	mov r7, r0
	mov r6, r1
	bne _0223D034
	bl ov97_0223D38C
	mov r5, r0
_0223D034:
	cmp r5, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	cmp r6, #0
	mov r4, #0
	addeq sp, sp, #4
	moveq r0, r5
	streq r4, [r5, #4]
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	add r0, r6, #2
	lsl r2, r0, #3
	add r1, r2, #0x1f
	asr r0, r1, #4
	add r0, r1, r0, lsr #27
	ldr r1, [r5, #8]
	asr r0, r0, #5
	cmp r0, r1
	movle r0, r5
	ble _0223D0A4
	asr r0, r2, #4
	add r0, r2, r0, lsr #27
	asr r1, r0, #5
	mov r0, r5
	add r1, r1, #1
	bl ov97_0223D268
_0223D0A4:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, lr}
	bxeq lr
	sub r0, r6, #1
	lsr r1, r0, #2
	add ip, r1, #1
	cmp r6, #0
	str ip, [r5, #4]
	and r3, r0, #3
	sub r6, r6, #1
	beq _0223D110
	mov r1, #0
	mov r0, #3
_0223D0E0:
	ldrb r2, [r7], #1
	cmp r3, #0
	sub r3, r3, #1
	orr r4, r2, r4, lsl #8
	ldreq r2, [r5]
	subeq ip, ip, #1
	streq r4, [r2, ip, lsl #2]
	moveq r4, r1
	moveq r3, r0
	cmp r6, #0
	sub r6, r6, #1
	bne _0223D0E0
_0223D110:
	mov r0, r5
	bl ov97_0223D3EC
	mov r0, r5
	add sp, sp, #4
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end ov97_0223D014

	arm_func_start ov97_0223D128
ov97_0223D128: ; 0x0223D128
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r2, [r4, #8]
	mov r5, r1
	cmp r2, #1
	bge _0223D14C
	mov r1, #2
	bl ov97_0223D268
_0223D14C:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	str r5, [r0, #0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #4]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223D128

	arm_func_start ov97_0223D198
ov97_0223D198: ; 0x0223D198
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223D1BC
	ldr r2, [r4, #8]
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
_0223D1BC:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0xc]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223D198

	arm_func_start ov97_0223D1D0
ov97_0223D1D0: ; 0x0223D1D0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	cmp r5, r4
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r1, [r4, #4]
	ldr r2, [r5, #8]
	cmp r1, r2
	ble _0223D204
	bl ov97_0223D268
_0223D204:
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r4, #4]
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	lsl r2, r2, #2
	bl sub_020C4DB0
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _0223D250
	ldr r1, [r5, #0]
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
_0223D250:
	ldr r1, [r4, #0xc]
	mov r0, r5
	str r1, [r5, #0xc]
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223D1D0

	arm_func_start ov97_0223D268
ov97_0223D268: ; 0x0223D268
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	mov r4, r1
	cmp r4, r0
	ble _0223D2DC
	ldr r0, [r5, #0x10]
	and r0, r0, #2
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	bxne lr
	add r0, r4, #1
	lsl r0, r0, #2
	bl ov97_0223D62C
	mov r6, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _0223D2D4
	ldr r2, [r5, #4]
	mov r1, r6
	lsl r2, r2, #2
	bl sub_020C4DB0
	ldr r0, [r5, #0]
	bl ov97_0223D5E4
_0223D2D4:
	str r6, [r5, #0]
	str r4, [r5, #8]
_0223D2DC:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_0223D268

	arm_func_start ov97_0223D2E8
ov97_0223D2E8: ; 0x0223D2E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	add r4, r6, #4
	mov r5, #0
_0223D2F8:
	mov r0, r4
	bl ov97_0223D510
	add r5, r5, #1
	cmp r5, #0xc
	add r4, r4, #0x14
	blt _0223D2F8
	ldr r0, [r6, #0x108]
	and r0, r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	bxeq lr
	mov r0, r6
	bl ov97_0223D5E4
	ldmia sp!, {r4, r5, r6, lr}
	bx lr
	arm_func_end ov97_0223D2E8

	arm_func_start ov97_0223D330
ov97_0223D330: ; 0x0223D330
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x110
	mov r4, r0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #0x108]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223D330

	arm_func_start ov97_0223D358
ov97_0223D358: ; 0x0223D358
	stmfd sp!, {r4, lr}
	mov r0, #0x110
	bl ov97_0223D62C
	mov r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	bl ov97_0223D330
	mov r1, #1
	mov r0, r4
	str r1, [r4, #0x108]
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223D358

	arm_func_start ov97_0223D38C
ov97_0223D38C: ; 0x0223D38C
	stmdb sp!, {lr}
	sub sp, sp, #4
	mov r0, #0x14
	bl ov97_0223D62C
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeq sp!, {lr}
	bxeq lr
	mov r1, #1
	str r1, [r0, #0x10]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0, #0]
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	arm_func_end ov97_0223D38C

	arm_func_start ov97_0223D3D8
ov97_0223D3D8: ; 0x0223D3D8
	ldr ip, _0223D3E8 ; =sub_020C4CF4
	mov r1, #0
	mov r2, #0x14
	bx ip
	; .align 2, 0
_0223D3E8: .word sub_020C4CF4
	arm_func_end ov97_0223D3D8

	arm_func_start ov97_0223D3EC
ov97_0223D3EC: ; 0x0223D3EC
	ldr r3, [r0, #4]
	cmp r3, #0
	bxle lr
	ldr r2, [r0, #0]
	sub r1, r3, #1
	cmp r3, #0
	add r3, r2, r1, lsl #2
	bxle lr
	add r2, r0, #4
_0223D410:
	ldr r1, [r3, #0], #-4
	cmp r1, #0
	bxne lr
	ldr r1, [r2, #0]
	sub r1, r1, #1
	str r1, [r2, #0]
	ldr r1, [r0, #4]
	cmp r1, #0
	bgt _0223D410
	bx lr
	arm_func_end ov97_0223D3EC

	arm_func_start ov97_0223D438
ov97_0223D438: ; 0x0223D438
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	mov r5, r0
	ldr r2, [r5, #4]
	mov r4, r1
	cmp r2, r4
	addge sp, sp, #4
	ldmia sp!,ge {r4, r5, lr}
	bxge lr
	ldr r2, [r5, #8]
	cmp r4, r2
	ble _0223D46C
	bl ov97_0223D268
_0223D46C:
	ldr r0, [r5, #0]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r4, r5, lr}
	bxeq lr
	ldr r2, [r5, #4]
	cmp r2, r4
	addge sp, sp, #4
	ldmia sp!,ge {r4, r5, lr}
	bxge lr
	mov r1, #0
_0223D498:
	ldr r0, [r5, #0]
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, r4
	blt _0223D498
	add sp, sp, #4
	ldmia sp!, {r4, r5, lr}
	bx lr
	arm_func_end ov97_0223D438

	arm_func_start ov97_0223D4B8
ov97_0223D4B8: ; 0x0223D4B8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223D4E4
	ldr r1, [r4, #0x10]
	and r1, r1, #2
	bne _0223D4E4
	bl ov97_0223D5E4
_0223D4E4:
	ldr r0, [r4, #0x10]
	orr r0, r0, #0x8000
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x10]
	and r0, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	mov r0, r4
	bl ov97_0223D5E4
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223D4B8

	arm_func_start ov97_0223D510
ov97_0223D510: ; 0x0223D510
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	bl ov97_0223D198
	mov r0, r4
	bl ov97_0223D4B8
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223D510

	arm_func_start ov97_0223D534
ov97_0223D534: ; 0x0223D534
	stmfd sp!, {r4, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	bxeq lr
	ldr r0, [r0, #0]
	sub r4, r1, #1
	ldr r0, [r0, r4, lsl #2]
	bl ov97_0223D568
	add r0, r0, r4, lsl #5
	ldmia sp!, {r4, lr}
	bx lr
	arm_func_end ov97_0223D534

	arm_func_start ov97_0223D568
ov97_0223D568: ; 0x0223D568
	mov r1, #0x10000
	neg r1, r1
	and r1, r0, r1
	beq _0223D588
	and r1, r0, #0xff000000
	movne r2, #0x18
	moveq r2, #0x10
	b _0223D594
_0223D588:
	and r1, r0, #0xff00
	movne r2, #8
	moveq r2, #0
_0223D594:
	lsr r1, r0, r2
	and r0, r1, #0xf0
	ldreq r0, _0223D5C4 ; =0x0223DEE8
	ldrsbeq r0, [r0, r1]
	addeq r0, r0, r2
	bxeq lr
	ldr r0, _0223D5C4 ; =0x0223DEE8
	lsr r1, r1, #4
	ldrsb r0, [r0, r1]
	add r0, r0, r2
	add r0, r0, #4
	bx lr
	; .align 2, 0
_0223D5C4: .word 0x0223DEE8
	arm_func_end ov97_0223D568

	arm_func_start ov97_0223D5C8
ov97_0223D5C8: ; 0x0223D5C8
	ldr r3, _0223D5DC ; =0x02240AF4
	ldr r2, _0223D5E0 ; =0x02240AF8
	str r0, [r3, #0]
	str r1, [r2, #0]
	bx lr
	; .align 2, 0
_0223D5DC: .word 0x02240AF4
_0223D5E0: .word 0x02240AF8
	arm_func_end ov97_0223D5C8

	arm_func_start ov97_0223D5E4
ov97_0223D5E4: ; 0x0223D5E4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0223D628 ; =0x02240AF8
	mov r2, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0223D610
	blx r1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_0223D610:
	mov r0, #0
	mvn r1, #0
	bl sub_020C331C
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	; .align 2, 0
_0223D628: .word 0x02240AF8
	arm_func_end ov97_0223D5E4

	arm_func_start ov97_0223D62C
ov97_0223D62C: ; 0x0223D62C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0223D670 ; =0x02240AF4
	mov r2, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0223D658
	blx r1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_0223D658:
	mov r0, #0
	mvn r1, #0
	bl sub_020C3214
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	; .align 2, 0
_0223D670: .word 0x02240AF4
	arm_func_end ov97_0223D62C
	; 0x0223D674

	.incbin "data/overlay97.bin"
