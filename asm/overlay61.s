	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov61_0222AE60
ov61_0222AE60: ; 0x0222AE60
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_0202A75C
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x5c
	bl sub_0202486C
	add r4, #0x5c
	strh r0, [r4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov61_0222AE60

	thumb_func_start ov61_0222AE80
ov61_0222AE80: ; 0x0222AE80
	ldr r3, _0222AE84 ; =sub_0202A824
	bx r3
	; .align 2, 0
_0222AE84: .word sub_0202A824
	thumb_func_end ov61_0222AE80

	thumb_func_start ov61_0222AE88
ov61_0222AE88: ; 0x0222AE88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	mov r2, #0x67
	add r5, r1, #0
	add r7, r3, #0
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	ldr r1, [sp, #0x28]
	mov r0, #0x3c
	bl sub_02023790
	add r4, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_02079AF4
	add r0, r4, #0
	add r1, r7, #0
	mov r2, #0x14
	bl sub_02023DF0
	add r0, r4, #0
	bl sub_020237BC
	mov r4, #0
	str r7, [sp, #0xc]
	str r7, [sp, #8]
_0222AECA:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #5
	bl sub_02079C08
	ldr r1, [sp, #0xc]
	add r2, r4, #0
	strh r0, [r1, #0x28]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_02079C08
	ldr r1, [sp, #8]
	add r2, r4, #0
	str r0, [r1, #0x64]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #7
	bl sub_02079C08
	ldr r1, [sp, #8]
	add r2, r4, #0
	add r1, #0xdc
	str r0, [r1, #0]
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0xae
	bl sub_02079C08
	ldr r1, _0222AF80 ; =0x000001EE
	cmp r0, r1
	bne _0222AF30
	add r0, r1, #0
	sub r0, #0x9a
	ldr r1, [r7, r0]
	mov r0, #1
	lsl r0, r4
	orr r1, r0
	mov r0, #0x55
	lsl r0, r0, #2
	str r1, [r7, r0]
_0222AF30:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	mov r3, #0x70
	bl sub_02079C08
	mov r1, #0x56
	add r2, r7, r4
	lsl r1, r1, #2
	strb r0, [r2, r1]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	cmp r4, #0x1e
	blt _0222AECA
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02079AA8
	ldr r2, _0222AF84 ; =0x00000176
	mov r1, #0
	strb r0, [r7, r2]
	add r0, r2, #1
	strb r1, [r7, r0]
	ldr r0, [sp, #4]
	add r1, r7, #0
	add r2, #0x22
	bl sub_0202486C
	mov r1, #0x66
	lsl r1, r1, #2
	strh r0, [r7, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222AF80: .word 0x000001EE
_0222AF84: .word 0x00000176
	thumb_func_end ov61_0222AE88

	thumb_func_start ov61_0222AF88
ov61_0222AF88: ; 0x0222AF88
	push {r4, lr}
	ldr r3, _0222AFA0 ; =0x00000177
	add r4, r1, #0
	strb r2, [r4, r3]
	add r3, #0x21
	add r2, r3, #0
	bl sub_0202486C
	mov r1, #0x66
	lsl r1, r1, #2
	strh r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_0222AFA0: .word 0x00000177
	thumb_func_end ov61_0222AF88

	thumb_func_start ov61_0222AFA4
ov61_0222AFA4: ; 0x0222AFA4
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x80
	bl sub_020C4CF4
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0x80
	bl sub_020C4DB0
	pop {r3, r4, r5, pc}
	thumb_func_end ov61_0222AFA4

	thumb_func_start ov61_0222AFC0
ov61_0222AFC0: ; 0x0222AFC0
	ldr r3, _0222AFC8 ; =sub_020C4DB0
	mov r2, #0x80
	bx r3
	nop
_0222AFC8: .word sub_020C4DB0
	thumb_func_end ov61_0222AFC0

	thumb_func_start ov61_0222AFCC
ov61_0222AFCC: ; 0x0222AFCC
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r1, #0
	add r0, r4, #0
	mov r1, #0
	mov r2, #8
	bl sub_020C4CF4
	ldrb r0, [r5, #0x19]
	mov r1, #1
	strb r0, [r4]
	ldrb r0, [r5, #0x1a]
	strb r0, [r4, #1]
	ldrb r0, [r5, #0x15]
	strb r0, [r4, #2]
	ldrb r0, [r5, #0x16]
	strb r0, [r4, #3]
	ldrh r0, [r5, #0x1c]
	strh r0, [r4, #4]
	ldrb r0, [r4, #6]
	bic r0, r1
	ldrb r1, [r5, #0x1b]
	lsl r1, r1, #0x1f
	lsr r2, r1, #0x1f
	mov r1, #1
	and r1, r2
	orr r0, r1
	strb r0, [r4, #6]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov61_0222AFCC

	thumb_func_start ov61_0222B008
ov61_0222B008: ; 0x0222B008
	push {r4, r5, r6, lr}
	ldr r2, _0222B0E4 ; =0x00000414
	add r4, r1, #0
	mov r1, #0
	add r5, r0, #0
	bl sub_020C4CF4
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
	bl sub_020C4CF4
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
	bl sub_02022974
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
	bl ov4_021D76E8
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
	bl sub_020C4DB0
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
	bl sub_02022974
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
	bl sub_020C4DB0
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
	bl sub_020C4CF4
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
	bl sub_020C4CF4
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
	bl sub_020C4CF4
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
	bl sub_020C4CF4
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
	bl sub_020C4CF4
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
	bl sub_020C4CF4
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
	bl sub_020C4CF4
	mov r0, #0xf
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	mov r2, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	add r0, #0xc
	add r0, r4, r0
	mov r1, #0
	bl sub_020C4CF4
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
	bl sub_020C4CF4
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
	bl sub_02022974
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
	bl sub_02022974
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
	bl sub_020C33B4
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	bl sub_020C304C
	add r2, r5, r6
	add r4, #0x1f
	mov r0, #0x1f
	bic r4, r0
	add r2, #0x1f
	bic r2, r0
	mov r0, #0
	add r1, r4, #0
	bl sub_020C3470
	add r1, r0, #0
	ldr r0, _0222BC3C ; =0x0222E760
	str r1, [r0, #0]
	mov r0, #0
	bl sub_020C3384
	add r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_0222BC3C: .word 0x0222E760
	thumb_func_end ov61_0222BBF0

	thumb_func_start ov61_0222BC40
ov61_0222BC40: ; 0x0222BC40
	ldr r3, _0222BC48 ; =sub_020C345C
	mov r0, #0
	bx r3
	nop
_0222BC48: .word sub_020C345C
	thumb_func_end ov61_0222BC40

	thumb_func_start ov61_0222BC4C
ov61_0222BC4C: ; 0x0222BC4C
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #5
	bhi _0222BC6E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BC60: ; jump table
	.short _0222BC6C - _0222BC60 - 2 ; case 0
	.short _0222BC6E - _0222BC60 - 2 ; case 1
	.short _0222BC6E - _0222BC60 - 2 ; case 2
	.short _0222BC6E - _0222BC60 - 2 ; case 3
	.short _0222BC6E - _0222BC60 - 2 ; case 4
	.short _0222BC6E - _0222BC60 - 2 ; case 5
_0222BC6C:
	mov r0, #1
_0222BC6E:
	bx lr
	thumb_func_end ov61_0222BC4C

	thumb_func_start ov61_0222BC70
ov61_0222BC70: ; 0x0222BC70
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BC8E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BC84: ; jump table
	.short _0222BC8C - _0222BC84 - 2 ; case 0
	.short _0222BC8E - _0222BC84 - 2 ; case 1
	.short _0222BC8E - _0222BC84 - 2 ; case 2
	.short _0222BC8E - _0222BC84 - 2 ; case 3
_0222BC8C:
	mov r0, #1
_0222BC8E:
	bx lr
	thumb_func_end ov61_0222BC70

	thumb_func_start ov61_0222BC90
ov61_0222BC90: ; 0x0222BC90
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	blx ov61_0222DE80
	add r1, r0, #4
	ldr r0, [r0, #4]
	cmp r0, r4
	ble _0222BCA4
	add r0, r4, #0
_0222BCA4:
	add r3, r1, #4
	mov r2, #0
	cmp r0, #0
	ble _0222BCBC
	add r6, r5, #0
_0222BCAE:
	add r1, r3, #0
	add r1, #0xc
	add r2, r2, #1
	stmia r6!, {r1}
	add r3, #0xec
	cmp r2, r0
	blt _0222BCAE
_0222BCBC:
	cmp r2, r4
	bge _0222BCCE
	lsl r1, r2, #2
	add r3, r5, r1
	mov r1, #0
_0222BCC6:
	add r2, r2, #1
	stmia r3!, {r1}
	cmp r2, r4
	blt _0222BCC6
_0222BCCE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov61_0222BC90

	thumb_func_start ov61_0222BCD0
ov61_0222BCD0: ; 0x0222BCD0
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #6
	bhi _0222BCF4
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BCE4: ; jump table
	.short _0222BCF2 - _0222BCE4 - 2 ; case 0
	.short _0222BCF4 - _0222BCE4 - 2 ; case 1
	.short _0222BCF4 - _0222BCE4 - 2 ; case 2
	.short _0222BCF4 - _0222BCE4 - 2 ; case 3
	.short _0222BCF4 - _0222BCE4 - 2 ; case 4
	.short _0222BCF4 - _0222BCE4 - 2 ; case 5
	.short _0222BCF4 - _0222BCE4 - 2 ; case 6
_0222BCF2:
	mov r0, #1
_0222BCF4:
	bx lr
	; .align 2, 0
	thumb_func_end ov61_0222BCD0

	thumb_func_start ov61_0222BCF8
ov61_0222BCF8: ; 0x0222BCF8
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BD16
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BD0C: ; jump table
	.short _0222BD14 - _0222BD0C - 2 ; case 0
	.short _0222BD16 - _0222BD0C - 2 ; case 1
	.short _0222BD16 - _0222BD0C - 2 ; case 2
	.short _0222BD16 - _0222BD0C - 2 ; case 3
_0222BD14:
	mov r0, #1
_0222BD16:
	bx lr
	thumb_func_end ov61_0222BCF8

	thumb_func_start ov61_0222BD18
ov61_0222BD18: ; 0x0222BD18
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r5, r2, #0
	blx ov61_0222DE80
	ldr r4, [r0, #4]
	add r7, r0, #4
	cmp r4, r5
	ble _0222BD30
	add r4, r5, #0
	bl sub_02022974
_0222BD30:
	add r3, r7, #4
	mov r2, #0
	cmp r4, #0
	ble _0222BD4C
	mov r0, #0x8b
	add r7, r6, #0
	lsl r0, r0, #2
_0222BD3E:
	add r1, r3, #0
	add r1, #0x10
	add r2, r2, #1
	stmia r7!, {r1}
	add r3, r3, r0
	cmp r2, r4
	blt _0222BD3E
_0222BD4C:
	cmp r2, r5
	bge _0222BD5E
	lsl r0, r2, #2
	add r1, r6, r0
	mov r0, #0
_0222BD56:
	add r2, r2, #1
	stmia r1!, {r0}
	cmp r2, r5
	blt _0222BD56
_0222BD5E:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov61_0222BD18

	thumb_func_start ov61_0222BD64
ov61_0222BD64: ; 0x0222BD64
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #0
	beq _0222BD74
	cmp r1, #1
	beq _0222BD76
	cmp r1, #2
	bx lr
_0222BD74:
	mov r0, #1
_0222BD76:
	bx lr
	thumb_func_end ov61_0222BD64

	thumb_func_start ov61_0222BD78
ov61_0222BD78: ; 0x0222BD78
	push {r4, lr}
	add r4, r1, #0
	blx ov61_0222DE80
	add r0, r0, #4
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov61_0222BD78

	thumb_func_start ov61_0222BD88
ov61_0222BD88: ; 0x0222BD88
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #5
	bhi _0222BDAA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BD9C: ; jump table
	.short _0222BDA8 - _0222BD9C - 2 ; case 0
	.short _0222BDAA - _0222BD9C - 2 ; case 1
	.short _0222BDAA - _0222BD9C - 2 ; case 2
	.short _0222BDAA - _0222BD9C - 2 ; case 3
	.short _0222BDAA - _0222BD9C - 2 ; case 4
	.short _0222BDAA - _0222BD9C - 2 ; case 5
_0222BDA8:
	mov r0, #1
_0222BDAA:
	bx lr
	thumb_func_end ov61_0222BD88

	thumb_func_start ov61_0222BDAC
ov61_0222BDAC: ; 0x0222BDAC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	blx ov61_0222DE80
	add r1, r0, #4
	ldr r0, _0222BDC4 ; =0x00000558
	str r1, [r5, #0]
	add r0, r1, r0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	nop
_0222BDC4: .word 0x00000558
	thumb_func_end ov61_0222BDAC

	thumb_func_start ov61_0222BDC8
ov61_0222BDC8: ; 0x0222BDC8
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #7
	bhi _0222BDEE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BDDC: ; jump table
	.short _0222BDEC - _0222BDDC - 2 ; case 0
	.short _0222BDEE - _0222BDDC - 2 ; case 1
	.short _0222BDEE - _0222BDDC - 2 ; case 2
	.short _0222BDEE - _0222BDDC - 2 ; case 3
	.short _0222BDEE - _0222BDDC - 2 ; case 4
	.short _0222BDEE - _0222BDDC - 2 ; case 5
	.short _0222BDEE - _0222BDDC - 2 ; case 6
	.short _0222BDEE - _0222BDDC - 2 ; case 7
_0222BDEC:
	mov r0, #1
_0222BDEE:
	bx lr
	thumb_func_end ov61_0222BDC8

	thumb_func_start ov61_0222BDF0
ov61_0222BDF0: ; 0x0222BDF0
	push {r3, lr}
	blx ov61_0222DE80
	ldr r2, [r0, #4]
	ldr r1, [r0, #8]
	add r0, r2, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov61_0222BDF0

	thumb_func_start ov61_0222BE00
ov61_0222BE00: ; 0x0222BE00
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BE1E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BE14: ; jump table
	.short _0222BE1C - _0222BE14 - 2 ; case 0
	.short _0222BE1E - _0222BE14 - 2 ; case 1
	.short _0222BE1E - _0222BE14 - 2 ; case 2
	.short _0222BE1E - _0222BE14 - 2 ; case 3
_0222BE1C:
	mov r0, #1
_0222BE1E:
	bx lr
	thumb_func_end ov61_0222BE00

	thumb_func_start ov61_0222BE20
ov61_0222BE20: ; 0x0222BE20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp, #8]
	str r0, [sp]
	str r1, [sp, #4]
	blx ov61_0222DE80
	ldr r1, [r0, #4]
	add r4, r0, #4
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	ble _0222BE40
	str r0, [sp, #0xc]
	bl sub_02022974
_0222BE40:
	ldr r0, [sp, #0xc]
	add r5, r4, #4
	mov r6, #0
	cmp r0, #0
	ble _0222BE9A
	ldr r4, [sp, #4]
_0222BE4C:
	add r2, r5, #0
	add r2, #0xc
	add r3, r2, #0
	str r2, [r4, #0]
	add r3, #0xd8
	ldr r3, [r3, #0]
	ldr r0, [r5, #8]
	mov ip, r3
	add r3, r2, #0
	add r3, #0xdc
	ldr r3, [r3, #0]
	add r7, r0, #0
	eor r7, r3
	ldr r1, [r5, #4]
	mov r3, ip
	eor r3, r1
	orr r3, r7
	beq _0222BE8E
	add r3, r2, #0
	add r3, #0xd8
	str r1, [r3, #0]
	add r2, #0xdc
	str r0, [r2, #0]
	ldr r0, [sp]
	ldr r1, [r4, #0]
	ldr r0, [r0, #0]
	add r1, #0x80
	mov r2, #0x58
	bl sub_0202486C
	ldr r1, [r4, #0]
	add r1, #0xe0
	strh r0, [r1]
_0222BE8E:
	ldr r0, [sp, #0xc]
	add r6, r6, #1
	add r5, #0xf0
	add r4, r4, #4
	cmp r6, r0
	blt _0222BE4C
_0222BE9A:
	ldr r0, [sp, #8]
	cmp r6, r0
	bge _0222BEB2
	ldr r0, [sp, #4]
	lsl r1, r6, #2
	add r2, r0, r1
	mov r1, #0
_0222BEA8:
	ldr r0, [sp, #8]
	add r6, r6, #1
	stmia r2!, {r1}
	cmp r6, r0
	blt _0222BEA8
_0222BEB2:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov61_0222BE20

	thumb_func_start ov61_0222BEB8
ov61_0222BEB8: ; 0x0222BEB8
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BED6
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BECC: ; jump table
	.short _0222BED4 - _0222BECC - 2 ; case 0
	.short _0222BED6 - _0222BECC - 2 ; case 1
	.short _0222BED6 - _0222BECC - 2 ; case 2
	.short _0222BED6 - _0222BECC - 2 ; case 3
_0222BED4:
	mov r0, #1
_0222BED6:
	bx lr
	thumb_func_end ov61_0222BEB8

	thumb_func_start ov61_0222BED8
ov61_0222BED8: ; 0x0222BED8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	blx ov61_0222DE80
	add r4, r0, #0
	add r0, r4, #4
	add r0, #0xc
	str r0, [r5, #0]
	add r0, r4, #4
	add r0, #0xe4
	ldr r1, [r0, #0]
	add r0, r4, #4
	add r0, #0xe8
	ldr r3, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0]
	eor r1, r3
	eor r0, r2
	orr r0, r1
	beq _0222BF20
	add r0, r4, #4
	add r0, #0xe4
	str r3, [r0, #0]
	add r0, r4, #4
	add r0, #0xe8
	str r2, [r0, #0]
	ldr r1, [r5, #0]
	ldr r0, [r6, #0]
	add r1, #0x80
	mov r2, #0x58
	bl sub_0202486C
	ldr r1, [r5, #0]
	add r1, #0xe0
	strh r0, [r1]
_0222BF20:
	ldr r0, [r4, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov61_0222BED8

	thumb_func_start ov61_0222BF24
ov61_0222BF24: ; 0x0222BF24
	ldrh r1, [r1, #2]
	mov r0, #0
	cmp r1, #3
	bhi _0222BF42
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222BF38: ; jump table
	.short _0222BF40 - _0222BF38 - 2 ; case 0
	.short _0222BF42 - _0222BF38 - 2 ; case 1
	.short _0222BF42 - _0222BF38 - 2 ; case 2
	.short _0222BF42 - _0222BF38 - 2 ; case 3
_0222BF40:
	mov r0, #1
_0222BF42:
	bx lr
	thumb_func_end ov61_0222BF24

	thumb_func_start ov61_0222BF44
ov61_0222BF44: ; 0x0222BF44
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1, #0]
	ldr r2, _0222C0D8 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1, #0]
	ldr r0, _0222C0DC ; =0x04001000
	ldr r3, [r0, #0]
	and r2, r3
	str r2, [r0, #0]
	ldr r3, [r1, #0]
	ldr r2, _0222C0E0 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1, #0]
	ldr r3, [r0, #0]
	add r1, #0x50
	and r2, r3
	str r2, [r0, #0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r2, #5
	mov r0, #3
	mov r1, #0x75
	lsl r2, r2, #0x10
	bl sub_02017FC8
	mov r1, #0x3d
	add r0, r4, #0
	lsl r1, r1, #4
	mov r2, #0x75
	bl sub_0200681C
	mov r2, #0x3d
	mov r1, #0
	lsl r2, r2, #4
	add r5, r0, #0
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02006840
	str r0, [r5, #0]
	mov r0, #0x75
	bl sub_02018340
	str r0, [r5, #4]
	mov r0, #0x40
	mov r1, #0x75
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r5, #4]
	bl ov61_0222C224
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	mov r0, #0xb
	mov r1, #0x40
	mov r2, #0x75
	bl sub_0200B368
	str r0, [r5, #0x20]
	ldr r2, _0222C0E4 ; =0x0000029F
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x75
	bl sub_0200B144
	str r0, [r5, #0x24]
	ldr r2, _0222C0E8 ; =0x000002A2
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x75
	bl sub_0200B144
	str r0, [r5, #0x28]
	ldr r2, _0222C0EC ; =0x000002B7
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x75
	bl sub_0200B144
	str r0, [r5, #0x2c]
	mov r0, #0xb4
	mov r1, #0x75
	bl sub_02023790
	str r0, [r5, #0x34]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x75
	bl sub_02023790
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x24]
	mov r1, #0x1f
	bl sub_0200B1EC
	str r0, [r5, #0x38]
	add r0, r5, #0
	bl ov61_0222C3B0
	add r0, r5, #0
	bl ov61_0222C664
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x75
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	ldr r0, _0222C0F0 ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	ldr r0, _0222C0F4 ; =ov61_0222C1FC
	add r1, r5, #0
	bl sub_02017798
	ldr r1, [r5, #0]
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _0222C0BA
	bl sub_02039734
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #8
	bl ov61_0222C920
	b _0222C0CC
_0222C0BA:
	ldr r0, [r1, #0]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0222C0C8
	mov r0, #1
	str r0, [r5, #8]
	b _0222C0CC
_0222C0C8:
	mov r0, #0
	str r0, [r5, #8]
_0222C0CC:
	ldr r0, [r5, #0]
	mov r1, #0
	str r1, [r0, #0x7c]
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0222C0D8: .word 0xFFFFE0FF
_0222C0DC: .word 0x04001000
_0222C0E0: .word 0xFFFF1FFF
_0222C0E4: .word 0x0000029F
_0222C0E8: .word 0x000002A2
_0222C0EC: .word 0x000002B7
_0222C0F0: .word 0x021BF6DC
_0222C0F4: .word ov61_0222C1FC
	thumb_func_end ov61_0222BF44

	thumb_func_start ov61_0222C0F8
ov61_0222C0F8: ; 0x0222C0F8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _0222C112
	cmp r1, #1
	beq _0222C120
	cmp r1, #2
	beq _0222C14C
	b _0222C158
_0222C112:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0222C158
	mov r0, #1
	str r0, [r5, #0]
	b _0222C158
_0222C120:
	ldr r6, [r4, #8]
	ldr r1, _0222C15C ; =0x0222E600
	lsl r2, r6, #2
	ldr r1, [r1, r2]
	blx r1
	ldr r1, [r4, #8]
	cmp r6, r1
	beq _0222C142
	add r1, r4, #0
	mov r2, #0
	add r1, #0x90
	str r2, [r1, #0]
	add r1, r4, #0
	add r1, #0x98
	str r2, [r1, #0]
	add r4, #0x94
	str r2, [r4, #0]
_0222C142:
	cmp r0, #1
	bne _0222C158
	mov r0, #2
	str r0, [r5, #0]
	b _0222C158
_0222C14C:
	bl sub_0200F2AC
	cmp r0, #1
	bne _0222C158
	mov r0, #1
	pop {r4, r5, r6, pc}
_0222C158:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0222C15C: .word 0x0222E600
	thumb_func_end ov61_0222C0F8

	thumb_func_start ov61_0222C160
ov61_0222C160: ; 0x0222C160
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222C184
	bl sub_0200DA58
	add r0, r4, #0
	mov r1, #0
	add r0, #0xa4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xa8
	str r1, [r0, #0]
_0222C184:
	ldr r0, [r4, #0x2c]
	bl sub_0200B190
	ldr r0, [r4, #0x28]
	bl sub_0200B190
	ldr r0, [r4, #0x24]
	bl sub_0200B190
	ldr r0, [r4, #0x20]
	bl sub_0200B3F0
	ldr r0, [r4, #0x38]
	bl sub_020237BC
	ldr r0, [r4, #0x3c]
	bl sub_020237BC
	ldr r0, [r4, #0x34]
	bl sub_020237BC
	add r0, r4, #0
	bl ov61_0222C70C
	ldr r0, [r4, #4]
	bl sub_020181C4
	ldr r0, [r4, #4]
	bl ov61_0222C38C
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201DC3C
	bl sub_0201E530
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	bl sub_02039794
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x75
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov61_0222C160

	thumb_func_start ov61_0222C1FC
ov61_0222C1FC: ; 0x0222C1FC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200A858
	ldr r0, [r4, #4]
	bl sub_0201C2B8
	ldr r3, _0222C21C ; =0x027E0000
	ldr r1, _0222C220 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_0222C21C: .word 0x027E0000
_0222C220: .word 0x00003FF8
	thumb_func_end ov61_0222C1FC

	thumb_func_start ov61_0222C224
ov61_0222C224: ; 0x0222C224
	push {r3, r4, r5, lr}
	sub sp, #0xa8
	add r4, r0, #0
	bl sub_0201FF00
	bl sub_0201FF68
	ldr r5, _0222C37C ; =0x0222E4B8
	add r3, sp, #0x80
	mov r2, #5
_0222C238:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222C238
	add r0, sp, #0x80
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl sub_020C4B4C
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl sub_020C4B4C
	ldr r5, _0222C380 ; =0x0222E4A8
	add r3, sp, #0x70
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0222C384 ; =0x0222E4E0
	add r3, sp, #0x38
	mov r2, #7
_0222C298:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222C298
	mov r1, #0
	add r0, r4, #0
	add r2, sp, #0x38
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019184
	mov r1, #0
	add r0, r4, #0
	mov r2, #3
	add r3, r1, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r5, _0222C388 ; =0x0222E518
	add r3, sp, #0
	mov r2, #7
_0222C2FE:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0222C2FE
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #4
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x1c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	mov r2, #0
	add r0, r4, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019184
	add r0, r4, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x75
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x75
	bl sub_02019690
	add sp, #0xa8
	pop {r3, r4, r5, pc}
	nop
_0222C37C: .word 0x0222E4B8
_0222C380: .word 0x0222E4A8
_0222C384: .word 0x0222E4E0
_0222C388: .word 0x0222E518
	thumb_func_end ov61_0222C224

	thumb_func_start ov61_0222C38C
ov61_0222C38C: ; 0x0222C38C
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
	thumb_func_end ov61_0222C38C

	thumb_func_start ov61_0222C3B0
ov61_0222C3B0: ; 0x0222C3B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	ldr r4, [r0, #4]
	mov r0, #0x5c
	mov r1, #0x75
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x75
	str r1, [sp, #4]
	mov r1, #3
	add r3, r2, #0
	str r0, [sp, #0x2c]
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	mov r0, #0x75
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r1, #3
	mov r2, #4
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x75
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x75
	bl sub_02002E98
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02025E44
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x75
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x75
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x75
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #2
	add r2, r4, #0
	mov r3, #1
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x75
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #5
	add r2, r4, #0
	mov r3, #1
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x75
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #0xa
	add r2, r4, #0
	mov r3, #5
	bl sub_020070E8
	mov r1, #0
	mov r0, #6
	str r1, [sp]
	lsl r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x75
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	mov r1, #0xb
	add r2, r4, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	add r1, r0, #0
	bl sub_0201975C
	mov r0, #4
	mov r1, #0
	bl sub_0201975C
	ldr r0, [sp, #0x10]
	mov r2, #0xcb
	add r0, #0xa4
	mov r1, #0
	lsl r2, r2, #2
	bl sub_020C4CF4
	ldr r0, [sp, #0x2c]
	mov r1, #4
	add r2, sp, #0x38
	mov r3, #0x75
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, #0xac
	mov r2, #0x80
	bl sub_020C4B18
	ldr r0, [sp, #0x38]
	mov r2, #0x4b
	ldr r1, [sp, #0x10]
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r0, [r0, #0xc]
	mov r2, #0x80
	bl sub_020C4B18
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	mov r1, #0x4b
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	add r0, #0xac
	str r0, [sp, #0x14]
_0222C506:
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r1, r0, #5
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x30]
_0222C518:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _0222C522
	bl sub_02022974
_0222C522:
	ldr r0, [sp, #0x30]
	mov r7, #1
	add r6, r0, #2
	ldr r0, [sp, #0x18]
	add r4, r0, #2
	ldr r0, [sp, #0x14]
	add r5, r0, #2
	ldr r0, [sp, #0x20]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_0222C53A:
	add r0, r6, #0
	add r0, #0xac
	ldrh r0, [r0]
	ldr r3, [sp, #0x34]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	mov r2, #1
	bl sub_0200393C
	add r7, r7, #1
	add r6, r6, #2
	add r4, r4, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _0222C53A
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _0222C586
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0222C518
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _0222C518
_0222C586:
	ldr r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0222C506
	mov r1, #0x4b
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	bl sub_020C2C54
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r0, #0xa8
	str r1, [r0, #0]
	ldr r1, [sp, #0x10]
	ldr r0, _0222C5CC ; =ov61_0222C5D0
	add r1, #0xa4
	mov r2, #0x14
	bl sub_0200DA04
	ldr r1, [sp, #0x10]
	add r1, #0xa4
	str r0, [r1, #0]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x10]
	bl sub_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0222C5CC: .word ov61_0222C5D0
	thumb_func_end ov61_0222C3B0

	thumb_func_start ov61_0222C5D0
ov61_0222C5D0: ; 0x0222C5D0
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0222C658
	ldr r0, _0222C65C ; =0x0000032B
	mov r1, #1
	ldrb r2, [r4, r0]
	eor r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _0222C658
	sub r0, r0, #3
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C00B4
	mov r0, #0xca
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl sub_020C0108
	ldr r0, _0222C660 ; =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _0222C63C
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _0222C658
	mov r2, #0x13
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_0222C63C:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _0222C658
	mov r2, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eor r1, r2
	strb r1, [r4, r0]
_0222C658:
	pop {r4, pc}
	nop
_0222C65C: .word 0x0000032B
_0222C660: .word 0x0000032A
	thumb_func_end ov61_0222C5D0

	thumb_func_start ov61_0222C664
ov61_0222C664: ; 0x0222C664
	push {r3, r4, lr}
	sub sp, #0x14
	mov r3, #4
	add r4, r0, #0
	str r3, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0x10
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x94
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x64
	mov r2, #0
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x81
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x54
	mov r2, #0
	mov r3, #4
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x54
	mov r1, #0
	bl sub_0201ADA4
	mov r3, #1
	ldr r0, _0222C708 ; =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	add r0, r4, #0
	ldr r1, [r4, #0x38]
	add r0, #0x54
	mov r2, #0
	bl ov61_0222C760
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #4]
	add r1, #0x44
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	add r4, #0x44
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0222C708: .word 0x000F0E00
	thumb_func_end ov61_0222C664

	thumb_func_start ov61_0222C70C
ov61_0222C70C: ; 0x0222C70C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x44
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x54
	bl sub_0201A8FC
	add r4, #0x64
	add r0, r4, #0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end ov61_0222C70C

	thumb_func_start ov61_0222C728
ov61_0222C728: ; 0x0222C728
	push {r4, lr}
	add r4, r0, #0
	cmp r3, #1
	beq _0222C736
	cmp r3, #2
	beq _0222C74C
	b _0222C75A
_0222C736:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	b _0222C75A
_0222C74C:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r2, r1, r0
_0222C75A:
	add r0, r2, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov61_0222C728

	thumb_func_start ov61_0222C760
ov61_0222C760: ; 0x0222C760
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov61_0222C728
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov61_0222C760

	thumb_func_start ov61_0222C794
ov61_0222C794: ; 0x0222C794
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r6, r1, #0
	lsl r0, r0, #8
	mov r1, #0x75
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x3c]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r5, #0
	add r0, #0x64
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x64
	mov r1, #1
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x3c]
	add r0, #0x64
	mov r1, #1
	bl sub_0201D738
	mov r0, #0xff
	str r0, [r5, #0x40]
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov61_0222C794

	thumb_func_start ov61_0222C7F8
ov61_0222C7F8: ; 0x0222C7F8
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222C80A
	mov r4, #0xb
_0222C80A:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	add r0, r5, #0
	add r0, #0x44
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r1, r4, #0
	bl ov61_0222C794
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov61_0222C7F8

	thumb_func_start ov61_0222C834
ov61_0222C834: ; 0x0222C834
	push {r3, lr}
	cmp r0, #0xff
	beq _0222C846
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0222C84A
_0222C846:
	mov r0, #0
	pop {r3, pc}
_0222C84A:
	mov r0, #1
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov61_0222C834

	thumb_func_start ov61_0222C850
ov61_0222C850: ; 0x0222C850
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0222C86A
	add r0, r4, #0
	add r0, #0x44
	mov r1, #1
	bl sub_0200E7FC
	add r4, #0x88
	str r0, [r4, #0]
_0222C86A:
	pop {r4, pc}
	thumb_func_end ov61_0222C850

	thumb_func_start ov61_0222C86C
ov61_0222C86C: ; 0x0222C86C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222C882
	bl sub_0200EBA0
	mov r0, #0
	add r4, #0x88
	str r0, [r4, #0]
_0222C882:
	pop {r4, pc}
	thumb_func_end ov61_0222C86C

	thumb_func_start ov61_0222C884
ov61_0222C884: ; 0x0222C884
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _0222C8B4 ; =0x0222E4A0
	add r4, sp, #4
	ldrh r6, [r5]
	add r3, sp, #4
	strh r6, [r4]
	ldrh r6, [r5, #2]
	strh r6, [r4, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	strh r6, [r4, #4]
	strh r5, [r4, #6]
	strb r1, [r4, #2]
	strh r2, [r4, #6]
	mov r1, #0x75
	str r1, [sp]
	add r1, r3, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0222C8B4: .word 0x0222E4A0
	thumb_func_end ov61_0222C884

	thumb_func_start ov61_0222C8B8
ov61_0222C8B8: ; 0x0222C8B8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x34]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x44
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r5, #0
	add r0, #0x44
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	ldr r2, [r5, #0x34]
	add r0, #0x44
	mov r1, #1
	bl sub_0201D738
	str r0, [r5, #0x40]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x8c
	str r1, [r0, #0]
	cmp r4, #0xff
	beq _0222C918
	cmp r4, #0
	bne _0222C91C
_0222C918:
	mov r0, #0xff
	str r0, [r5, #0x40]
_0222C91C:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov61_0222C8B8

	thumb_func_start ov61_0222C920
ov61_0222C920: ; 0x0222C920
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov61_0222C920

	thumb_func_start ov61_0222C928
ov61_0222C928: ; 0x0222C928
	push {r3, lr}
	bl ov4_021D1F3C
	cmp r0, #0xb
	bhi _0222C95A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C93E: ; jump table
	.short _0222C95A - _0222C93E - 2 ; case 0
	.short _0222C956 - _0222C93E - 2 ; case 1
	.short _0222C95A - _0222C93E - 2 ; case 2
	.short _0222C95A - _0222C93E - 2 ; case 3
	.short _0222C956 - _0222C93E - 2 ; case 4
	.short _0222C956 - _0222C93E - 2 ; case 5
	.short _0222C956 - _0222C93E - 2 ; case 6
	.short _0222C956 - _0222C93E - 2 ; case 7
	.short _0222C956 - _0222C93E - 2 ; case 8
	.short _0222C956 - _0222C93E - 2 ; case 9
	.short _0222C956 - _0222C93E - 2 ; case 10
	.short _0222C956 - _0222C93E - 2 ; case 11
_0222C956:
	mov r0, #1
	pop {r3, pc}
_0222C95A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov61_0222C928

	thumb_func_start ov61_0222C960
ov61_0222C960: ; 0x0222C960
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #1
	bne _0222C976
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0222C976:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #4
	bhi _0222CA14
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222C98C: ; jump table
	.short _0222C996 - _0222C98C - 2 ; case 0
	.short _0222C9A4 - _0222C98C - 2 ; case 1
	.short _0222C9C2 - _0222C98C - 2 ; case 2
	.short _0222C9E2 - _0222C98C - 2 ; case 3
	.short _0222CA10 - _0222C98C - 2 ; case 4
_0222C996:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CA14
_0222C9A4:
	ldr r0, _0222CA1C ; =0x00000F0F
	mov r2, #0x11
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	mov r3, #1
	bl ov61_0222C8B8
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CA14
_0222C9C2:
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov61_0222C884
	add r1, r4, #0
	add r1, #0x84
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CA14
_0222C9E2:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r1, #0x75
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0222CA14
	sub r1, r1, #1
	cmp r0, r1
	bne _0222CA02
	mov r0, #8
	str r0, [r4, #8]
	b _0222CA14
_0222CA02:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CA14
_0222CA10:
	mov r0, #1
	str r0, [r4, #8]
_0222CA14:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0222CA1C: .word 0x00000F0F
	thumb_func_end ov61_0222C960

	thumb_func_start ov61_0222CA20
ov61_0222CA20: ; 0x0222CA20
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0222CA38
	cmp r0, #1
	beq _0222CA6A
	cmp r0, #2
	beq _0222CA82
	b _0222CA9E
_0222CA38:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02038438
	bl sub_02039734
	ldr r0, _0222CAA4 ; =0x00000F0F
	mov r2, #1
	str r0, [sp]
	ldr r1, [r4, #0x28]
	add r0, r4, #0
	add r3, r2, #0
	bl ov61_0222C8B8
	add r0, r4, #0
	bl ov61_0222C850
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CA9E
_0222CA6A:
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #0
	bne _0222CA9E
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CA9E
_0222CA82:
	ldr r0, [r4, #0]
	mov r1, #2
	add r0, #0x14
	mov r2, #1
	mov r3, #0x14
	bl ov4_021D78C8
	mov r0, #2
	bl ov4_021D792C
	bl ov4_021D797C
	mov r0, #2
	str r0, [r4, #8]
_0222CA9E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0222CAA4: .word 0x00000F0F
	thumb_func_end ov61_0222CA20

	thumb_func_start ov61_0222CAA8
ov61_0222CAA8: ; 0x0222CAA8
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl ov4_021D7AE4
	bl ov4_021D7A8C
	cmp r0, #0
	beq _0222CB26
	bl ov4_021D7BFC
	cmp r0, #8
	bhi _0222CB06
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CACE: ; jump table
	.short _0222CB06 - _0222CACE - 2 ; case 0
	.short _0222CB06 - _0222CACE - 2 ; case 1
	.short _0222CB06 - _0222CACE - 2 ; case 2
	.short _0222CB06 - _0222CACE - 2 ; case 3
	.short _0222CB1C - _0222CACE - 2 ; case 4
	.short _0222CB06 - _0222CACE - 2 ; case 5
	.short _0222CB06 - _0222CACE - 2 ; case 6
	.short _0222CAE0 - _0222CACE - 2 ; case 7
	.short _0222CB06 - _0222CACE - 2 ; case 8
_0222CAE0:
	add r0, sp, #8
	add r1, sp, #4
	bl ov4_021D75F4
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	str r0, [r4, #0x18]
	ldr r0, [sp, #4]
	str r0, [r4, #0x1c]
	bl ov4_021D76E8
	bl ov4_021D7DB0
	add r0, r4, #0
	bl ov61_0222C86C
	mov r0, #6
	str r0, [r4, #8]
	b _0222CB26
_0222CB06:
	add r0, sp, #0
	bl ov4_021D75D4
	add r0, r4, #0
	bl ov61_0222C86C
	mov r0, #0xa
	str r0, [r4, #8]
	sub r0, #0xc
	str r0, [r4, #0x10]
	b _0222CB26
_0222CB1C:
	add r0, sp, #0xc
	bl ov4_021D7EB8
	mov r0, #3
	str r0, [r4, #8]
_0222CB26:
	mov r0, #0
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov61_0222CAA8

	thumb_func_start ov61_0222CB2C
ov61_0222CB2C: ; 0x0222CB2C
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D81DC
	mov r0, #4
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov61_0222CB2C

	thumb_func_start ov61_0222CB3C
ov61_0222CB3C: ; 0x0222CB3C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov4_021D82A0
	cmp r0, #5
	bhi _0222CBE0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CB56: ; jump table
	.short _0222CB68 - _0222CB56 - 2 ; case 0
	.short _0222CBE0 - _0222CB56 - 2 ; case 1
	.short _0222CBE0 - _0222CB56 - 2 ; case 2
	.short _0222CB62 - _0222CB56 - 2 ; case 3
	.short _0222CB68 - _0222CB56 - 2 ; case 4
	.short _0222CB68 - _0222CB56 - 2 ; case 5
_0222CB62:
	mov r0, #5
	str r0, [r4, #8]
	b _0222CBE0
_0222CB68:
	add r0, r4, #0
	bl ov61_0222C86C
	add r0, sp, #4
	add r1, sp, #0
	bl ov4_021D75F4
	str r0, [r4, #0x14]
	ldr r0, [sp, #4]
	str r0, [r4, #0x18]
	ldr r0, [sp]
	str r0, [r4, #0x1c]
	bl ov4_021D76E8
	bl ov4_021D7DB0
	mov r0, #6
	str r0, [r4, #8]
	ldr r1, [sp]
	cmp r1, #7
	bhi _0222CBCE
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222CB9E: ; jump table
	.short _0222CBCE - _0222CB9E - 2 ; case 0
	.short _0222CBAE - _0222CB9E - 2 ; case 1
	.short _0222CBAE - _0222CB9E - 2 ; case 2
	.short _0222CBC0 - _0222CB9E - 2 ; case 3
	.short _0222CBB2 - _0222CB9E - 2 ; case 4
	.short _0222CBCA - _0222CB9E - 2 ; case 5
	.short _0222CBBC - _0222CB9E - 2 ; case 6
	.short _0222CBCA - _0222CB9E - 2 ; case 7
_0222CBAE:
	str r0, [r4, #8]
	b _0222CBCE
_0222CBB2:
	bl ov4_021E55B0
	mov r0, #6
	str r0, [r4, #8]
	b _0222CBCE
_0222CBBC:
	str r0, [r4, #8]
	b _0222CBCE
_0222CBC0:
	bl ov4_021D8E8C
	mov r0, #6
	str r0, [r4, #8]
	b _0222CBCE
_0222CBCA:
	bl sub_02038A0C
_0222CBCE:
	ldr r1, [sp, #4]
	ldr r0, _0222CBE8 ; =0xFFFFB1E0
	cmp r1, r0
	bge _0222CBE0
	ldr r0, _0222CBEC ; =0xFFFF8AD1
	cmp r1, r0
	blt _0222CBE0
	mov r0, #6
	str r0, [r4, #8]
_0222CBE0:
	mov r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0222CBE8: .word 0xFFFFB1E0
_0222CBEC: .word 0xFFFF8AD1
	thumb_func_end ov61_0222CB3C

	thumb_func_start ov61_0222CBF0
ov61_0222CBF0: ; 0x0222CBF0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_0202B370
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bl sub_02025CCC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202AD28
	add r0, r4, #0
	bl sub_02025D74
	cmp r0, #0
	bne _0222CC2A
	add r0, r6, #0
	bl sub_02039058
	add r1, r0, #0
	add r0, r4, #0
	bl sub_02025D78
_0222CC2A:
	add r0, r4, #0
	bl sub_02025D74
	mov r0, #9
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	mov r1, #1
	str r1, [r0, #0x7c]
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov61_0222CBF0

	thumb_func_start ov61_0222CC40
ov61_0222CC40: ; 0x0222CC40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	neg r0, r0
	bl ov4_021D1F3C
	ldr r2, [r4, #0x18]
	add r1, r0, #0
	add r0, r4, #0
	neg r2, r2
	bl ov61_0222C7F8
	mov r0, #7
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov61_0222CC40

	thumb_func_start ov61_0222CC64
ov61_0222CC64: ; 0x0222CC64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0222CCA8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _0222CC78
	mov r0, #2
	tst r0, r1
	beq _0222CCA2
_0222CC78:
	add r0, r4, #0
	add r0, #0x64
	mov r1, #0
	bl sub_0200DC9C
	add r0, r4, #0
	mov r1, #0
	add r0, #0x90
	str r1, [r0, #0]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	neg r0, r0
	bl ov61_0222C928
	cmp r0, #1
	bne _0222CC9E
	mov r0, #0
	str r0, [r4, #8]
	b _0222CCA2
_0222CC9E:
	mov r0, #8
	str r0, [r4, #8]
_0222CCA2:
	mov r0, #0
	pop {r4, pc}
	nop
_0222CCA8: .word 0x021BF67C
	thumb_func_end ov61_0222CC64

	thumb_func_start ov61_0222CCAC
ov61_0222CCAC: ; 0x0222CCAC
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #9
	beq _0222CCBC
	bl sub_0203848C
_0222CCBC:
	bl sub_02039794
	add r0, r4, #0
	bl ov61_0222C86C
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x75
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov61_0222CCAC

	thumb_func_start ov61_0222CCE8
ov61_0222CCE8: ; 0x0222CCE8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	mov r2, #0
	add r0, #0xf
	cmp r0, #0x11
	bhi _0222CD36
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CD04: ; jump table
	.short _0222CD34 - _0222CD04 - 2 ; case 0
	.short _0222CD30 - _0222CD04 - 2 ; case 1
	.short _0222CD36 - _0222CD04 - 2 ; case 2
	.short _0222CD34 - _0222CD04 - 2 ; case 3
	.short _0222CD36 - _0222CD04 - 2 ; case 4
	.short _0222CD36 - _0222CD04 - 2 ; case 5
	.short _0222CD36 - _0222CD04 - 2 ; case 6
	.short _0222CD36 - _0222CD04 - 2 ; case 7
	.short _0222CD36 - _0222CD04 - 2 ; case 8
	.short _0222CD36 - _0222CD04 - 2 ; case 9
	.short _0222CD34 - _0222CD04 - 2 ; case 10
	.short _0222CD36 - _0222CD04 - 2 ; case 11
	.short _0222CD34 - _0222CD04 - 2 ; case 12
	.short _0222CD30 - _0222CD04 - 2 ; case 13
	.short _0222CD2C - _0222CD04 - 2 ; case 14
	.short _0222CD36 - _0222CD04 - 2 ; case 15
	.short _0222CD28 - _0222CD04 - 2 ; case 16
	.short _0222CD2C - _0222CD04 - 2 ; case 17
_0222CD28:
	mov r2, #0x90
	b _0222CD36
_0222CD2C:
	mov r2, #0x91
	b _0222CD36
_0222CD30:
	mov r2, #0x96
	b _0222CD36
_0222CD34:
	mov r2, #0x95
_0222CD36:
	ldr r0, _0222CD54 ; =0x00000F0F
	mov r3, #1
	str r0, [sp]
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl ov61_0222C8B8
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0xb
	bl ov61_0222C920
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0222CD54: .word 0x00000F0F
	thumb_func_end ov61_0222CCE8

	thumb_func_start ov61_0222CD58
ov61_0222CD58: ; 0x0222CD58
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x90
	ldr r1, [r1, #0]
	cmp r1, #3
	bhi _0222CDEC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0222CD74: ; jump table
	.short _0222CD7C - _0222CD74 - 2 ; case 0
	.short _0222CD98 - _0222CD74 - 2 ; case 1
	.short _0222CDB8 - _0222CD74 - 2 ; case 2
	.short _0222CDD4 - _0222CD74 - 2 ; case 3
_0222CD7C:
	ldr r1, _0222CE10 ; =0x00000F0F
	mov r2, #0xb2
	str r1, [sp]
	ldr r1, [r4, #0x24]
	mov r3, #1
	bl ov61_0222C8B8
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CE08
_0222CD98:
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #0
	bne _0222CE08
	bl sub_0203848C
	bl ov4_021D7DB0
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CE08
_0222CDB8:
	ldr r1, _0222CE10 ; =0x00000F0F
	mov r2, #0xb3
	str r1, [sp]
	ldr r1, [r4, #0x24]
	mov r3, #1
	bl ov61_0222C8B8
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CE08
_0222CDD4:
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #0
	bne _0222CE08
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CE08
_0222CDEC:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0x1e
	ble _0222CE08
	mov r0, #8
	str r0, [r4, #8]
_0222CE08:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0222CE10: .word 0x00000F0F
	thumb_func_end ov61_0222CD58

	thumb_func_start ov61_0222CE14
ov61_0222CE14: ; 0x0222CE14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #0
	bne _0222CE26
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0222CE26:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov61_0222CE14

	thumb_func_start ov61_0222CE2C
ov61_0222CE2C: ; 0x0222CE2C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl ov61_0222C834
	cmp r0, #1
	bne _0222CE42
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_0222CE42:
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	cmp r0, #3
	bhi _0222CED2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0222CE58: ; jump table
	.short _0222CE60 - _0222CE58 - 2 ; case 0
	.short _0222CE7E - _0222CE58 - 2 ; case 1
	.short _0222CE94 - _0222CE58 - 2 ; case 2
	.short _0222CEB6 - _0222CE58 - 2 ; case 3
_0222CE60:
	ldr r0, _0222CED8 ; =0x00000F0F
	mov r2, #0x1a
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	mov r3, #1
	bl ov61_0222C8B8
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CED2
_0222CE7E:
	bl ov4_021D7DB0
	bl sub_0203848C
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CED2
_0222CE94:
	bl sub_02039794
	ldr r0, _0222CED8 ; =0x00000F0F
	mov r2, #0x1b
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	mov r3, #1
	bl ov61_0222C8B8
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r4, #0x90
	add r0, r0, #1
	str r0, [r4, #0]
	b _0222CED2
_0222CEB6:
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x94
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	cmp r0, #0x1e
	ble _0222CED2
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0222CED2:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0222CED8: .word 0x00000F0F
	thumb_func_end ov61_0222CE2C