	.include "macros/function.inc"
	.include "overlay061/ov61_0222B008.inc"

	

	.text


	thumb_func_start ov61_0222B008
ov61_0222B008: ; 0x0222B008
	push {r4, r5, r6, lr}
	ldr r2, _0222B0E4 ; =0x00000414
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl MI_CpuFill8
	mov r0, #0x51
	add r3, r4, #0
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, [r4, #8]
	add r0, #0xc
	str r1, [r5, #0]
	add r3, #0xc
	add r2, r5, r0
	mov r6, #5
_0222B02C:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r6, r6, #1
	bne _0222B02C
	ldr r0, [r3, #0]
	mov r1, #0x53
	str r0, [r2, #0]
	ldr r0, [r4, #0x3c]
	lsl r1, r1, #2
	str r0, [r5, #8]
	ldr r0, [r4, #0x38]
	ldr r2, _0222B0E8 ; =0x000059DC
	str r0, [r5, #4]
	mov r0, #0
	mvn r0, r0
	str r0, [r5, r1]
	mov r1, #0xfa
	lsl r1, r1, #2
	str r2, [r5, r1]
	add r1, r1, #4
	str r2, [r5, r1]
	blx ov61_0222DE8C
	add r1, r0, #0
	ldr r0, [r4, #4]
	bl sub_02018144
	mov r1, #0xed
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0
	mvn r0, r0
	blx ov61_0222DE8C
	add r2, r0, #0
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl MI_CpuFill8
	ldr r2, _0222B0EC ; =0x000002B7
	ldr r3, [r4, #4]
	mov r0, #0
	mov r1, #0x1a
	bl sub_0200B144
	mov r1, #0xfd
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	bl sub_0200B358
	mov r1, #0xfe
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #1
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	bl sub_02023790
	mov r1, #0xff
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	bl ov61_0222BBF0
	mov r1, #0x63
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	str r0, [r5, #0xc]
	mov r0, #0xc
	strb r0, [r5, #0x10]
	mov r0, #2
	strb r0, [r5, #0x11]
	add r0, r5, #0
	add r0, #0xc
	blx ov61_0222DCDC
	cmp r0, #1
	beq _0222B0D4
	bl GF_AssertFail
_0222B0D4:
	mov r1, #0xf1
	mov r0, #1
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	str r0, [r5, r1]
	pop {r4, r5, r6, pc}
	nop
_0222B0E4: .word 0x00000414
_0222B0E8: .word 0x000059DC
_0222B0EC: .word 0x000002B7
	thumb_func_end ov61_0222B008

	thumb_func_start ov61_0222B0F0
ov61_0222B0F0: ; 0x0222B0F0
	push {r4, lr}
	add r4, r0, #0
	blx ov61_0222DCFC
	mov r0, #0xf1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x38
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xfe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B3F0
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0200B190
	mov r0, #0xed
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	bl ov61_0222BC40
	mov r0, #0x63
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov61_0222B0F0

	thumb_func_start ov61_0222B138
ov61_0222B138: ; 0x0222B138
	push {r4, lr}
	add r4, r0, #0
	blx ov61_0222DCFC
	mov r0, #0xf1
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov61_0222B138

	thumb_func_start ov61_0222B14C
ov61_0222B14C: ; 0x0222B14C
	push {r4, lr}
	add r4, r0, #0
	bl DWC_ClearError
	bl ov4_021D7DB0
	bl sub_0203848C
	mov r0, #0xf2
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov61_0222B14C

	thumb_func_start ov61_0222B168
ov61_0222B168: ; 0x0222B168
	push {r4, lr}
	mov r1, #0x3e
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	neg r0, r0
	bl ov4_021D1F3C
	mov r2, #0x3e
	lsl r2, r2, #4
	ldr r2, [r4, r2]
	add r1, r0, #0
	add r0, r4, #0
	neg r2, r2
	bl ov61_0222BB60
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov61_0222B168

	thumb_func_start ov61_0222B190
ov61_0222B190: ; 0x0222B190
	push {r3, lr}
	ldr r1, _0222B1B0 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #1
	tst r1, r2
	bne _0222B1A2
	mov r1, #2
	tst r1, r2
	beq _0222B1AC
_0222B1A2:
	mov r1, #0
	bl ov61_0222BB54
	mov r0, #1
	pop {r3, pc}
_0222B1AC:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_0222B1B0: .word 0x021BF67C
	thumb_func_end ov61_0222B190

	thumb_func_start ov61_0222B1B4
ov61_0222B1B4: ; 0x0222B1B4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B1C8
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222B1C8:
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r0, [r5, #0]
	add r1, r4, #0
	add r2, r5, r2
	bl ov61_0222AFA4
	mov r2, #0x21
	lsl r2, r2, #4
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r5, r2
	bl ov61_0222AE60
	ldr r0, _0222B1F4 ; =0x00000411
	mov r1, #0x3c
	strb r1, [r5, r0]
	ldr r1, _0222B1F8 ; =0x00004E20
	sub r0, #0x29
	str r1, [r5, r0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222B1F4: .word 0x00000411
_0222B1F8: .word 0x00004E20
	thumb_func_end ov61_0222B1B4

	thumb_func_start ov61_0222B1FC
ov61_0222B1FC: ; 0x0222B1FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B20E
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222B20E:
	mov r0, #0xeb
	lsl r0, r0, #2
	strh r4, [r5, r0]
	ldr r1, _0222B220 ; =0x00004E21
	add r0, #0x3c
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222B220: .word 0x00004E21
	thumb_func_end ov61_0222B1FC

	thumb_func_start ov61_0222B224
ov61_0222B224: ; 0x0222B224
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B23A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B23A:
	mov r0, #0xeb
	lsl r0, r0, #2
	strb r4, [r5, r0]
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r1, [sp, #0x18]
	add r0, r0, #1
	strb r1, [r5, r0]
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r5, r2
	bl ov61_0222AFA4
	mov r3, #0x51
	lsl r3, r3, #2
	ldr r0, [r5, r3]
	add r3, #0xcc
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x18]
	add r1, r7, #0
	add r3, r5, r3
	bl ov61_0222AE88
	mov r1, #0x21
	lsl r1, r1, #4
	ldr r0, [r5, #0]
	add r1, r5, r1
	add r2, r4, #0
	bl ov61_0222AF88
	ldr r0, _0222B288 ; =0x00000411
	mov r1, #0x3c
	strb r1, [r5, r0]
	ldr r1, _0222B28C ; =0x00005208
	sub r0, #0x29
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B288: .word 0x00000411
_0222B28C: .word 0x00005208
	thumb_func_end ov61_0222B224

	thumb_func_start ov61_0222B290
ov61_0222B290: ; 0x0222B290
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B2A2
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222B2A2:
	mov r0, #0xeb
	lsl r0, r0, #2
	strb r4, [r5, r0]
	ldr r1, _0222B2B4 ; =0x00005209
	add r0, #0x3c
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222B2B4: .word 0x00005209
	thumb_func_end ov61_0222B290

	thumb_func_start ov61_0222B2B8
ov61_0222B2B8: ; 0x0222B2B8
	push {r4, lr}
	add r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B2C8
	mov r0, #0
	pop {r4, pc}
_0222B2C8:
	mov r0, #0xfa
	ldr r1, _0222B2D4 ; =0x000055F0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0222B2D4: .word 0x000055F0
	thumb_func_end ov61_0222B2B8

	thumb_func_start ov61_0222B2D8
ov61_0222B2D8: ; 0x0222B2D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B2EC
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B2EC:
	ldr r0, [r5, #0]
	bl sub_02025E5C
	mov r1, #0x66
	lsl r1, r1, #2
	add r1, r5, r1
	mov r2, #4
	bl MI_CpuCopy8
	mov r2, #0x19
	lsl r2, r2, #4
	ldr r0, [r5, #0]
	add r1, r6, #0
	add r2, r5, r2
	bl ov61_0222AFCC
	mov r0, #0x67
	lsl r0, r0, #2
	mov r6, #0
	add r7, r5, #0
	add r1, r0, #4
_0222B316:
	ldr r3, [r4, #0]
	ldr r2, [r4, #4]
	add r6, r6, #1
	str r3, [r7, r0]
	str r2, [r7, r1]
	add r4, #8
	add r7, #8
	cmp r6, #3
	blt _0222B316
	mov r0, #0xfa
	ldr r1, _0222B334 ; =0x000055F1
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B334: .word 0x000055F1
	thumb_func_end ov61_0222B2D8

	thumb_func_start ov61_0222B338
ov61_0222B338: ; 0x0222B338
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B34A
	mov r0, #0
	pop {r3, r4, r5, pc}
_0222B34A:
	bl sub_0202F1D4
	sub r1, r0, #4
	ldr r0, _0222B388 ; =0x00001D4C
	cmp r1, r0
	beq _0222B35A
	bl GF_AssertFail
_0222B35A:
	bl sub_0202F27C
	mov r1, #0x19
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, #0]
	bl ov62_02248624
	bl sub_0202FDE8
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0x80
	bl MI_CpuCopy8
	ldr r0, _0222B38C ; =0x00000411
	mov r1, #0x3c
	strb r1, [r5, r0]
	ldr r1, _0222B390 ; =0x000059D8
	sub r0, #0x29
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0222B388: .word 0x00001D4C
_0222B38C: .word 0x00000411
_0222B390: .word 0x000059D8
	thumb_func_end ov61_0222B338

	thumb_func_start ov61_0222B394
ov61_0222B394: ; 0x0222B394
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B3AA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222B3AA:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r1, #0x19
	lsl r1, r1, #4
	strh r4, [r5, r1]
	add r0, r1, #2
	strb r6, [r5, r0]
	add r0, r1, #3
	strb r7, [r5, r0]
	add r0, sp, #8
	ldrb r2, [r0, #0x10]
	add r0, r1, #4
	strb r2, [r5, r0]
	add r0, r1, #0
	sub r0, #0x50
	add r1, #8
	str r0, [r5, r1]
	mov r0, #0x3f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r1, _0222B3E8 ; =0x000059D9
	sub r0, #8
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222B3E8: .word 0x000059D9
	thumb_func_end ov61_0222B394

	thumb_func_start ov61_0222B3EC
ov61_0222B3EC: ; 0x0222B3EC
	push {r4, lr}
	add r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B3FC
	mov r0, #0
	pop {r4, pc}
_0222B3FC:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #0x19
	ldr r1, _0222B444 ; =0x0000FFFF
	lsl r0, r0, #4
	strh r1, [r4, r0]
	mov r1, #0xfe
	add r0, r1, #0
	add r0, #0x94
	strb r1, [r4, r0]
	mov r1, #0xff
	add r0, r1, #0
	add r0, #0x94
	strb r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x95
	strb r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x41
	add r1, #0x99
	str r0, [r4, r1]
	mov r0, #0x3f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0222B448 ; =0x000059D9
	sub r0, #8
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	nop
_0222B444: .word 0x0000FFFF
_0222B448: .word 0x000059D9
	thumb_func_end ov61_0222B3EC

	thumb_func_start ov61_0222B44C
ov61_0222B44C: ; 0x0222B44C
	push {r4, lr}
	add r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B45C
	mov r0, #0
	pop {r4, pc}
_0222B45C:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #0x19
	ldr r1, _0222B4A0 ; =0x0000FFFF
	lsl r0, r0, #4
	strh r1, [r4, r0]
	mov r1, #0xff
	add r0, r1, #0
	add r0, #0x93
	strb r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x94
	strb r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x95
	strb r1, [r4, r0]
	add r0, r1, #0
	add r0, #0x41
	add r1, #0x99
	str r0, [r4, r1]
	mov r0, #0x3f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0222B4A4 ; =0x000059D9
	sub r0, #8
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_0222B4A0: .word 0x0000FFFF
_0222B4A4: .word 0x000059D9
	thumb_func_end ov61_0222B44C

	thumb_func_start ov61_0222B4A8
ov61_0222B4A8: ; 0x0222B4A8
	push {r4, lr}
	add r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B4B8
	mov r0, #0
	pop {r4, pc}
_0222B4B8:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r1, #5
	lsl r1, r1, #6
	add r0, r1, #0
	add r0, #0x50
	str r1, [r4, r0]
	mov r1, #0x3f
	mov r0, #1
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _0222B4E0 ; =0x000059D9
	sub r1, #8
	str r2, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_0222B4E0: .word 0x000059D9
	thumb_func_end ov61_0222B4A8

	thumb_func_start ov61_0222B4E4
ov61_0222B4E4: ; 0x0222B4E4
	push {r4, lr}
	add r4, r0, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B4F4
	mov r0, #0
	pop {r4, pc}
_0222B4F4:
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	mov r2, #4
	bl MI_CpuFill8
	mov r1, #5
	lsl r1, r1, #6
	add r0, r1, #0
	add r0, #0x50
	str r1, [r4, r0]
	mov r0, #0x3f
	mov r1, #2
	lsl r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _0222B520 ; =0x000059D9
	sub r0, #8
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
	nop
_0222B520: .word 0x000059D9
	thumb_func_end ov61_0222B4E4

	thumb_func_start ov61_0222B524
ov61_0222B524: ; 0x0222B524
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B538
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222B538:
	mov r1, #0xeb
	lsl r1, r1, #2
	str r4, [r5, r1]
	add r0, r1, #4
	str r6, [r5, r0]
	ldr r0, _0222B54C ; =0x000059DA
	add r1, #0x3c
	str r0, [r5, r1]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222B54C: .word 0x000059DA
	thumb_func_end ov61_0222B524

	thumb_func_start ov61_0222B550
ov61_0222B550: ; 0x0222B550
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl ov61_0222BBBC
	cmp r0, #0
	bne _0222B564
	mov r0, #0
	pop {r4, r5, r6, pc}
_0222B564:
	mov r1, #0xeb
	lsl r1, r1, #2
	str r4, [r5, r1]
	add r0, r1, #4
	str r6, [r5, r0]
	ldr r0, _0222B578 ; =0x000059DB
	add r1, #0x3c
	str r0, [r5, r1]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222B578: .word 0x000059DB
	thumb_func_end ov61_0222B550

	thumb_func_start ov61_0222B57C
ov61_0222B57C: ; 0x0222B57C
	push {r4, lr}
	mov r1, #0xf1
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0222B63A
	add r0, r1, #0
	add r0, #0x24
	ldr r2, [r4, r0]
	ldr r0, _0222B6CC ; =0x000059DC
	cmp r2, r0
	beq _0222B5E8
	add r0, r1, #0
	add r0, #0x4d
	ldrb r0, [r4, r0]
	cmp r0, #0
	beq _0222B5AE
	add r0, r1, #0
	add r0, #0x4d
	ldrb r0, [r4, r0]
	add r1, #0x4d
	sub r0, r0, #1
	strb r0, [r4, r1]
	b _0222B5E8
_0222B5AE:
	blx ov61_0222DD08
	cmp r0, #9
	bhi _0222B5E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222B5C2: ; jump table
	.short _0222B5E8 - _0222B5C2 - 2 ; case 0
	.short _0222B5D6 - _0222B5C2 - 2 ; case 1
	.short _0222B5E8 - _0222B5C2 - 2 ; case 2
	.short _0222B5E8 - _0222B5C2 - 2 ; case 3
	.short _0222B5E8 - _0222B5C2 - 2 ; case 4
	.short _0222B5E8 - _0222B5C2 - 2 ; case 5
	.short _0222B5E8 - _0222B5C2 - 2 ; case 6
	.short _0222B5D6 - _0222B5C2 - 2 ; case 7
	.short _0222B5D6 - _0222B5C2 - 2 ; case 8
	.short _0222B5D6 - _0222B5C2 - 2 ; case 9
_0222B5D6:
	add r0, r4, #0
	bl ov61_0222B6D8
	cmp r0, #1
	bne _0222B5E8
	mov r0, #0xfa
	ldr r1, _0222B6CC ; =0x000059DC
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222B5E8:
	add r0, r4, #0
	bl ov61_0222B860
	ldr r1, _0222B6D0 ; =0x0000040C
	ldr r2, [r4, r1]
	cmp r2, #0
	beq _0222B63A
	sub r1, #0xc
	add r0, r4, #0
	add r1, r4, r1
	blx r2
	cmp r0, #1
	bne _0222B63A
	ldr r0, _0222B6D0 ; =0x0000040C
	mov r1, #0
	str r1, [r4, r0]
	sub r0, #0xc
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _0222B624
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r1, #0x2c
	add r1, r4, r1
	blx r2
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #0xa
	str r1, [r4, r0]
_0222B624:
	mov r0, #1
	lsl r0, r0, #0xa
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x10
	bl MI_CpuFill8
	mov r0, #0xfb
	ldr r1, _0222B6CC ; =0x000059DC
	lsl r0, r0, #2
	str r1, [r4, r0]
_0222B63A:
	mov r3, #0xef
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	lsl r1, r0, #2
	ldr r0, _0222B6D4 ; =0x0222E480
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _0222B6C6
	add r1, r3, #0
	add r3, r3, #4
	ldr r3, [r4, r3]
	add r1, #0x10
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	add r0, r4, #0
	add r1, r4, r1
	blx r2
	cmp r0, #0
	beq _0222B6C6
	cmp r0, #1
	beq _0222B66A
	cmp r0, #2
	beq _0222B6B0
	b _0222B6C6
_0222B66A:
	mov r0, #0xf3
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, #0xc
	add r0, r4, r0
	mov r1, #0
	bl MI_CpuFill8
	mov r1, #0xef
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	lsl r2, r0, #2
	ldr r0, _0222B6D4 ; =0x0222E480
	ldr r2, [r0, r2]
	add r0, r1, #4
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	bne _0222B6C6
	mov r2, #0
	add r0, r1, #4
	str r2, [r4, r0]
	str r2, [r4, r1]
	b _0222B6C6
_0222B6B0:
	mov r0, #0xf3
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, #0xf
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
_0222B6C6:
	mov r0, #1
	pop {r4, pc}
	nop
_0222B6CC: .word 0x000059DC
_0222B6D0: .word 0x0000040C
_0222B6D4: .word 0x0222E480
	thumb_func_end ov61_0222B57C

	thumb_func_start ov61_0222B6D8
ov61_0222B6D8: ; 0x0222B6D8
	push {r3, r4, r5, lr}
	mov r3, #0xfa
	add r5, r0, #0
	lsl r3, r3, #2
	ldr r1, [r5, r3]
	ldr r2, _0222B850 ; =0x000055F0
	mov r4, #0
	cmp r1, r2
	bgt _0222B710
	bge _0222B78A
	ldr r0, _0222B854 ; =0x00005208
	cmp r1, r0
	bgt _0222B708
	bge _0222B760
	ldr r2, _0222B858 ; =0x00004E21
	cmp r1, r2
	bgt _0222B706
	sub r0, r2, #1
	cmp r1, r0
	blt _0222B706
	beq _0222B73C
	cmp r1, r2
	beq _0222B74E
_0222B706:
	b _0222B838
_0222B708:
	add r0, r0, #1
	cmp r1, r0
	beq _0222B778
	b _0222B838
_0222B710:
	ldr r0, _0222B85C ; =0x000059D8
	cmp r1, r0
	bgt _0222B720
	bge _0222B7A8
	add r0, r2, #1
	cmp r1, r0
	beq _0222B796
	b _0222B838
_0222B720:
	add r2, r0, #3
	cmp r1, r2
	bgt _0222B73A
	add r2, r0, #1
	cmp r1, r2
	blt _0222B73A
	beq _0222B7BA
	add r2, r0, #2
	cmp r1, r2
	beq _0222B804
	add r0, r0, #3
	cmp r1, r0
	beq _0222B820
_0222B73A:
	b _0222B838
_0222B73C:
	mov r0, #0x19
	sub r3, #0x34
	lsl r0, r0, #4
	ldr r1, [r5, r3]
	add r0, r5, r0
	blx ov61_0222DD30
	add r4, r0, #0
	b _0222B83C
_0222B74E:
	add r0, r3, #0
	sub r0, #0x3c
	sub r3, #0x34
	ldrh r0, [r5, r0]
	ldr r1, [r5, r3]
	blx ov61_0222DD8C
	add r4, r0, #0
	b _0222B83C
_0222B760:
	add r0, r3, #0
	sub r0, #0x3c
	mov r1, #0x19
	sub r3, #0x34
	lsl r1, r1, #4
	ldrb r0, [r5, r0]
	ldr r2, [r5, r3]
	add r1, r5, r1
	blx ov61_0222DDCC
	add r4, r0, #0
	b _0222B83C
_0222B778:
	add r0, r3, #0
	sub r0, #0x3c
	sub r3, #0x34
	ldrb r0, [r5, r0]
	ldr r1, [r5, r3]
	blx ov61_0222DE34
	add r4, r0, #0
	b _0222B83C
_0222B78A:
	sub r3, #0x34
	ldr r0, [r5, r3]
	blx ov61_0222DE98
	add r4, r0, #0
	b _0222B83C
_0222B796:
	mov r0, #0x19
	sub r3, #0x34
	lsl r0, r0, #4
	ldr r1, [r5, r3]
	add r0, r5, r0
	blx ov61_0222DEB8
	add r4, r0, #0
	b _0222B83C
_0222B7A8:
	mov r0, #0x19
	lsl r0, r0, #4
	sub r3, #0x34
	ldr r0, [r5, r0]
	ldr r1, [r5, r3]
	blx ov61_0222DF08
	add r4, r0, #0
	b _0222B83C
_0222B7BA:
	add r0, r3, #0
	add r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0222B7CE
	cmp r0, #1
	beq _0222B7E0
	cmp r0, #2
	beq _0222B7F2
	b _0222B83C
_0222B7CE:
	mov r0, #0x19
	sub r3, #0x34
	lsl r0, r0, #4
	ldr r1, [r5, r3]
	add r0, r5, r0
	blx ov61_0222DF60
	add r4, r0, #0
	b _0222B83C
_0222B7E0:
	mov r0, #0x19
	sub r3, #0x34
	lsl r0, r0, #4
	ldr r1, [r5, r3]
	add r0, r5, r0
	blx ov61_0222DFA8
	add r4, r0, #0
	b _0222B83C
_0222B7F2:
	mov r0, #0x19
	sub r3, #0x34
	lsl r0, r0, #4
	ldr r1, [r5, r3]
	add r0, r5, r0
	blx ov61_0222E000
	add r4, r0, #0
	b _0222B83C
_0222B804:
	add r0, r3, #0
	add r1, r3, #0
	sub r0, #0x3c
	sub r1, #0x38
	sub r3, #0x34
	mov r2, #5
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r5, r3]
	lsl r2, r2, #6
	blx ov61_0222E058
	add r4, r0, #0
	b _0222B83C
_0222B820:
	add r0, r3, #0
	add r1, r3, #0
	sub r0, #0x3c
	sub r1, #0x38
	sub r3, #0x34
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [r5, r3]
	blx ov61_0222E08C
	add r4, r0, #0
	b _0222B83C
_0222B838:
	bl GF_AssertFail
_0222B83C:
	cmp r4, #1
	bne _0222B84A
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
_0222B84A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0222B850: .word 0x000055F0
_0222B854: .word 0x00005208
_0222B858: .word 0x00004E21
_0222B85C: .word 0x000059D8
	thumb_func_end ov61_0222B6D8

	thumb_func_start ov61_0222B860
ov61_0222B860: ; 0x0222B860
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, _0222B910 ; =0x000059DC
	cmp r1, r0
	bne _0222B874
	mov r0, #1
	pop {r4, pc}
_0222B874:
	blx ov61_0222DD08
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r1, #4
	ldr r2, [r4, r1]
	ldr r0, [r4, r0]
	cmp r2, r0
	beq _0222B90A
	cmp r2, #9
	bhi _0222B900
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222B898: ; jump table
	.short _0222B900 - _0222B898 - 2 ; case 0
	.short _0222B900 - _0222B898 - 2 ; case 1
	.short _0222B900 - _0222B898 - 2 ; case 2
	.short _0222B900 - _0222B898 - 2 ; case 3
	.short _0222B900 - _0222B898 - 2 ; case 4
	.short _0222B900 - _0222B898 - 2 ; case 5
	.short _0222B900 - _0222B898 - 2 ; case 6
	.short _0222B8AC - _0222B898 - 2 ; case 7
	.short _0222B8D0 - _0222B898 - 2 ; case 8
	.short _0222B8DE - _0222B898 - 2 ; case 9
_0222B8AC:
	add r0, r1, #0
	mov r3, #1
	add r0, #0x38
	str r3, [r4, r0]
	add r0, r1, #0
	mov r2, #0
	add r0, #0x3c
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #7
	add r0, #0x40
	str r2, [r4, r0]
	add r1, #0x34
	str r3, [r4, r1]
	ldr r1, _0222B914 ; =ov61_0222B95C
	ldr r0, _0222B918 ; =0x0000040C
	str r1, [r4, r0]
	b _0222B900
_0222B8D0:
	ldr r1, _0222B91C ; =ov61_0222B920
	ldr r0, _0222B918 ; =0x0000040C
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov61_0222B960
	b _0222B900
_0222B8DE:
	add r0, r1, #0
	mov r2, #0
	add r0, #0x38
	str r2, [r4, r0]
	add r1, #0x3c
	str r2, [r4, r1]
	blx ov61_0222DD24
	mov r1, #0x62
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #1
	sub r1, #0xc
	str r0, [r4, r1]
	ldr r1, _0222B914 ; =ov61_0222B95C
	ldr r0, _0222B918 ; =0x0000040C
	str r1, [r4, r0]
_0222B900:
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_0222B90A:
	mov r0, #1
	pop {r4, pc}
	nop
_0222B910: .word 0x000059DC
_0222B914: .word ov61_0222B95C
_0222B918: .word 0x0000040C
_0222B91C: .word ov61_0222B920
	thumb_func_end ov61_0222B860

	thumb_func_start ov61_0222B920
ov61_0222B920: ; 0x0222B920
	mov r0, #1
	bx lr
	thumb_func_end ov61_0222B920

	thumb_func_start ov61_0222B924
ov61_0222B924: ; 0x0222B924
	mov r0, #1
	bx lr
	thumb_func_end ov61_0222B924

	thumb_func_start ov61_0222B928
ov61_0222B928: ; 0x0222B928
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	blx ov61_0222DE80
	add r2, r0, #0
	add r0, r4, #6
	str r0, [sp]
	ldr r1, [r2, #4]
	ldr r0, [r5, #0]
	ldr r2, [r2, #8]
	add r3, r4, #4
	bl ov62_02248658
	sub r0, r0, #2
	cmp r0, #1
	bhi _0222B94E
	mov r0, #1
	pop {r3, r4, r5, pc}
_0222B94E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov61_0222B928

	thumb_func_start ov61_0222B954
ov61_0222B954: ; 0x0222B954
	mov r0, #1
	bx lr
	thumb_func_end ov61_0222B954

	thumb_func_start ov61_0222B958
ov61_0222B958: ; 0x0222B958
	mov r0, #1
	bx lr
	thumb_func_end ov61_0222B958

	thumb_func_start ov61_0222B95C
ov61_0222B95C: ; 0x0222B95C
	mov r0, #1
	bx lr
	thumb_func_end ov61_0222B95C

	thumb_func_start ov61_0222B960
ov61_0222B960: ; 0x0222B960
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r6, #1
	blx ov61_0222DE80
	add r4, r0, #0
	blx ov61_0222DE74
	mov r0, #0xfb
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	ldrh r0, [r4]
	cmp r1, r0
	beq _0222B980
	bl GF_AssertFail
_0222B980:
	mov r0, #1
	mov r1, #0
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	ldrh r1, [r4]
	ldr r0, _0222BB18 ; =0x00005209
	cmp r1, r0
	bgt _0222B9B2
	bge _0222BA38
	ldr r2, _0222BB1C ; =0x00004E21
	cmp r1, r2
	bgt _0222B9AA
	sub r0, r2, #1
	cmp r1, r0
	blt _0222B9A6
	beq _0222B9E8
	cmp r1, r2
	beq _0222BA04
	b _0222BAEA
_0222B9A6:
	cmp r1, #0
	b _0222BAEA
_0222B9AA:
	sub r0, r0, #1
	cmp r1, r0
	beq _0222BA1C
	b _0222BAEA
_0222B9B2:
	ldr r0, _0222BB20 ; =0x000055F1
	cmp r1, r0
	bgt _0222B9C2
	bge _0222BA68
	sub r0, r0, #1
	cmp r1, r0
	beq _0222BA50
	b _0222BAEA
_0222B9C2:
	ldr r0, _0222BB24 ; =0x000059D8
	cmp r1, r0
	bgt _0222B9CC
	beq _0222BA80
	b _0222BAEA
_0222B9CC:
	add r2, r0, #3
	cmp r1, r2
	bgt _0222B9E6
	add r2, r0, #1
	cmp r1, r2
	blt _0222B9E6
	beq _0222BAA4
	add r2, r0, #2
	cmp r1, r2
	beq _0222BABC
	add r0, r0, #3
	cmp r1, r0
	beq _0222BAD4
_0222B9E6:
	b _0222BAEA
_0222B9E8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BC4C
	add r6, r0, #0
	ldr r0, _0222BB28 ; =0x00000154
	ldr r1, [r5, r0]
	ldr r0, _0222BB2C ; =0x00000400
	str r1, [r5, r0]
	bne _0222BAEA
	ldr r1, _0222BB30 ; =ov61_0222B954
	add r0, #0xc
	str r1, [r5, r0]
	b _0222BAEA
_0222BA04:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BC70
	add r6, r0, #0
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BA1C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BCD0
	add r6, r0, #0
	ldr r0, _0222BB34 ; =0x0000015C
	ldr r1, [r5, r0]
	ldr r0, _0222BB2C ; =0x00000400
	str r1, [r5, r0]
	bne _0222BAEA
	ldr r1, _0222BB38 ; =ov61_0222B958
	add r0, #0xc
	str r1, [r5, r0]
	b _0222BAEA
_0222BA38:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BCF8
	add r6, r0, #0
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BA50:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BD64
	add r6, r0, #0
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BA68:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BD88
	add r6, r0, #0
	mov r0, #0x5a
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BA80:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BDC8
	add r6, r0, #0
	ldr r0, _0222BB3C ; =0x0000016C
	ldr r1, [r5, r0]
	ldr r0, _0222BB2C ; =0x00000400
	str r1, [r5, r0]
	bne _0222BA9C
	ldr r1, _0222BB40 ; =ov61_0222B924
	add r0, #0xc
	str r1, [r5, r0]
	b _0222BAEA
_0222BA9C:
	ldr r1, _0222BB44 ; =ov61_0222B928
	add r0, #0xc
	str r1, [r5, r0]
	b _0222BAEA
_0222BAA4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BE00
	add r6, r0, #0
	mov r0, #0x17
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BABC:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BEB8
	add r6, r0, #0
	mov r0, #0x5d
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, r0]
	b _0222BAEA
_0222BAD4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222BF24
	add r6, r0, #0
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	mov r0, #1
	lsl r0, r0, #0xa
	str r1, [r5, r0]
_0222BAEA:
	cmp r6, #0
	bne _0222BB0A
	mov r0, #6
	mov r1, #2
	lsl r0, r0, #6
	str r1, [r5, r0]
	ldrh r2, [r4]
	add r1, r0, #4
	str r2, [r5, r1]
	add r1, r0, #0
	ldrh r2, [r4, #2]
	add r1, #8
	sub r0, r0, #4
	str r2, [r5, r1]
	mov r1, #1
	b _0222BB10
_0222BB0A:
	mov r0, #0x5f
	mov r1, #0
	lsl r0, r0, #2
_0222BB10:
	str r1, [r5, r0]
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0222BB18: .word 0x00005209
_0222BB1C: .word 0x00004E21
_0222BB20: .word 0x000055F1
_0222BB24: .word 0x000059D8
_0222BB28: .word 0x00000154
_0222BB2C: .word 0x00000400
_0222BB30: .word ov61_0222B954
_0222BB34: .word 0x0000015C
_0222BB38: .word ov61_0222B958
_0222BB3C: .word 0x0000016C
_0222BB40: .word ov61_0222B924
_0222BB44: .word ov61_0222B928
	thumb_func_end ov61_0222B960

	thumb_func_start ov61_0222BB48
ov61_0222BB48: ; 0x0222BB48
	mov r2, #0x5f
	lsl r2, r2, #2
	add r0, r0, r2
	str r0, [r1, #0]
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov61_0222BB48

	thumb_func_start ov61_0222BB54
ov61_0222BB54: ; 0x0222BB54
	push {r3, lr}
	add r2, r0, #0
	ldr r0, [r2, #8]
	ldr r2, [r2, #4]
	blx r2
	pop {r3, pc}
	thumb_func_end ov61_0222BB54

	thumb_func_start ov61_0222BB60
ov61_0222BB60: ; 0x0222BB60
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	add r5, r1, #0
	mvn r0, r0
	cmp r5, r0
	bne _0222BB72
	mov r5, #0xb
_0222BB72:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xfe
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	mov r0, #0xfd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl sub_0200B1EC
	mov r1, #0xfe
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, r5, #0
	bl sub_0200C388
	add r0, r5, #0
	bl sub_020237BC
	mov r1, #0xff
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	add r0, r4, #0
	bl ov61_0222BB54
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov61_0222BB60

	thumb_func_start ov61_0222BBBC
ov61_0222BBBC: ; 0x0222BBBC
	push {r4, lr}
	add r4, r0, #0
	bl ov61_0222BBE8
	cmp r0, #0
	bne _0222BBE0
	mov r0, #0xfa
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	ldr r1, _0222BBE4 ; =0x000059DC
	cmp r2, r1
	bne _0222BBE0
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r1
	bne _0222BBE0
	mov r0, #1
	pop {r4, pc}
_0222BBE0:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0222BBE4: .word 0x000059DC
	thumb_func_end ov61_0222BBBC

	thumb_func_start ov61_0222BBE8
ov61_0222BBE8: ; 0x0222BBE8
	mov r1, #0xef
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov61_0222BBE8

	thumb_func_start ov61_0222BBF0
ov61_0222BBF0: ; 0x0222BBF0
	push {r4, r5, r6, lr}
	mov r1, #2
	lsl r1, r1, #0xc
	bl sub_02018144
	add r5, r0, #0
	mov r6, #2
	lsl r6, r6, #0xc
	mov r0, #0
	add r1, r5, #0
	add r2, r5, r6
	mov r3, #1
	bl OS_InitAlloc
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	bl OS_SetArenaLo
	add r2, r5, r6
	add r4, #0x1f
	mov r0, #0x1f
	bic r4, r0
	add r2, #0x1f
	bic r2, r0
	mov r0, #0
	add r1, r4, #0
	bl OS_CreateHeap
	add r1, r0, #0
	ldr r0, _0222BC3C ; =0x0222E760
	str r1, [r0, #0]
	mov r0, #0
	bl OS_SetCurrentHeap
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0222BC3C: .word 0x0222E760
	thumb_func_end ov61_0222BBF0

	thumb_func_start ov61_0222BC40
ov61_0222BC40: ; 0x0222BC40
	ldr r3, _0222BC48 ; =OS_ClearAlloc
	mov r0, #0
	bx r3
	nop
_0222BC48: .word OS_ClearAlloc
	thumb_func_end ov61_0222BC40

	.rodata


	.global Unk_ov61_0222E47C
Unk_ov61_0222E47C: ; 0x0222E47C
	.incbin "incbin/overlay61_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_ov61_0222E480
Unk_ov61_0222E480: ; 0x0222E480
	.incbin "incbin/overlay61_rodata.bin", 0x4, 0x10 - 0x4

	.global Unk_ov61_0222E48C
Unk_ov61_0222E48C: ; 0x0222E48C
	.incbin "incbin/overlay61_rodata.bin", 0x10, 0x14


	.bss


	.global Unk_ov61_0222E760
Unk_ov61_0222E760: ; 0x0222E760
	.space 0x4

