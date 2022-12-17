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

	.rodata


	.global Unk_ov97_0223D674
Unk_ov97_0223D674: ; 0x0223D674
	.incbin "incbin/overlay97_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov97_0223D684
Unk_ov97_0223D684: ; 0x0223D684
	.incbin "incbin/overlay97_rodata.bin", 0x10, 0x20 - 0x10

	.global Unk_ov97_0223D694
Unk_ov97_0223D694: ; 0x0223D694
	.incbin "incbin/overlay97_rodata.bin", 0x20, 0x28


	.data


	.global Unk_ov97_0223DF40
Unk_ov97_0223DF40: ; 0x0223DF40
	.incbin "incbin/overlay97_data.bin", 0x0, 0x14 - 0x0

	.global Unk_ov97_0223DF54
Unk_ov97_0223DF54: ; 0x0223DF54
	.incbin "incbin/overlay97_data.bin", 0x14, 0x30 - 0x14

	.global Unk_ov97_0223DF70
Unk_ov97_0223DF70: ; 0x0223DF70
	.incbin "incbin/overlay97_data.bin", 0x30, 0x70 - 0x30

	.global Unk_ov97_0223DFB0
Unk_ov97_0223DFB0: ; 0x0223DFB0
	.incbin "incbin/overlay97_data.bin", 0x70, 0xD4 - 0x70

	.global Unk_ov97_0223E014
Unk_ov97_0223E014: ; 0x0223E014
	.incbin "incbin/overlay97_data.bin", 0xD4, 0x154 - 0xD4

	.global Unk_ov97_0223E094
Unk_ov97_0223E094: ; 0x0223E094
	.incbin "incbin/overlay97_data.bin", 0x154, 0xD

