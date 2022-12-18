	.include "macros/function.inc"
	.include "include/ov16_0226871C.inc"

	

	.text


	thumb_func_start ov16_0226871C
ov16_0226871C: ; 0x0226871C
	push {r4, lr}
	ldr r1, _0226873C ; =0x000006EC
	mov r0, #5
	bl sub_02018144
	ldr r2, _0226873C ; =0x000006EC
	mov r1, #0
	add r4, r0, #0
	bl sub_020C4CF4
	mov r1, #0
	ldr r0, _02268740 ; =0x0000068B
	mvn r1, r1
	strb r1, [r4, r0]
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
_0226873C: .word 0x000006EC
_02268740: .word 0x0000068B
	thumb_func_end ov16_0226871C

	thumb_func_start ov16_02268744
ov16_02268744: ; 0x02268744
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	ldr r6, _02268798 ; =0x02270540
	add r5, r0, #0
	add r7, r4, #0
_0226874E:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020183C4
	add r1, r4, #4
	lsl r1, r1, #0x18
	ldr r2, _0226879C ; =0x000002FF
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EE0
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl sub_02019184
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #4
	blo _0226874E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02268798: .word 0x02270540
_0226879C: .word 0x000002FF
	thumb_func_end ov16_02268744

	thumb_func_start ov16_022687A0
ov16_022687A0: ; 0x022687A0
	push {r4, r5, r6, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
_022687A8:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_02019120
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019044
	add r4, r4, #1
	cmp r4, #4
	blo _022687A8
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_022687A0

	thumb_func_start ov16_022687C8
ov16_022687C8: ; 0x022687C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r2, [sp, #0xc]
	add r4, r3, #0
	bl ov16_0226871C
	add r6, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x38]
	str r0, [r6, #0]
	ldr r0, _022689F0 ; =0x0000068D
	cmp r1, #0
	strb r4, [r6, r0]
	str r1, [r6, #4]
	beq _022687EC
	ldrb r1, [r1]
	add r0, #0x53
	strb r1, [r6, r0]
_022687EC:
	ldr r0, [sp, #0xc]
	bl ov16_0223E064
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	bl ov16_0223E240
	str r0, [sp, #0x14]
	cmp r0, #0x17
	blo _02268808
	mov r0, #0
	str r0, [sp, #0x14]
	bl sub_02022974
_02268808:
	mov r0, #0xd
	mov r1, #5
	bl sub_02012744
	ldr r2, _022689F4 ; =0x000004CC
	add r1, r6, #0
	str r0, [r6, r2]
	ldr r0, _022689F8 ; =ov16_0226BCE4
	add r2, #0x52
	bl sub_0200D9E8
	ldr r1, _022689FC ; =0x00000698
	mov r4, #0
	str r0, [r6, r1]
	ldr r7, _02268A00 ; =0x02270264
	b _0226887E
_02268828:
	mov r1, #2
	mov r0, #5
	lsl r1, r1, #0xa
	bl sub_02018144
	lsl r1, r4, #2
	add r1, r6, r1
	str r0, [r1, #0x40]
	ldr r0, [sp, #0xc]
	bl ov16_0223DF0C
	mov r1, #0x80
	tst r0, r1
	beq _02268850
	lsl r0, r4, #1
	ldrh r0, [r7, r0]
	cmp r0, #0x31
	bne _02268850
	mov r1, #0xaa
	b _02268854
_02268850:
	lsl r0, r4, #1
	ldrh r1, [r7, r0]
_02268854:
	mov r0, #5
	str r0, [sp]
	mov r0, #7
	mov r2, #1
	add r3, sp, #0x20
	bl sub_02006F6C
	add r5, r0, #0
	lsl r0, r4, #2
	add r0, r6, r0
	ldr r1, [r0, #0x40]
	ldr r0, [sp, #0x20]
	mov r2, #2
	add r0, #0xc
	lsl r2, r2, #0xa
	bl sub_020C4B68
	add r0, r5, #0
	bl sub_020181C4
	add r4, r4, #1
_0226887E:
	cmp r4, #7
	blt _02268828
	ldr r0, [sp, #0xc]
	bl ov16_0223DF0C
	mov r4, #0x80
	tst r0, r4
	beq _02268892
	add r4, #0xd4
	b _02268894
_02268892:
	mov r4, #0xf2
_02268894:
	mov r1, #2
	mov r0, #5
	lsl r1, r1, #8
	bl sub_02018144
	str r0, [r6, #0x5c]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #7
	add r2, r4, #0
	mov r3, #5
	bl sub_02003050
	ldr r0, [sp, #0x14]
	ldr r2, _02268A04 ; =0x022704E4
	lsl r3, r0, #2
	ldrh r1, [r2, r3]
	ldr r0, _02268A08 ; =0x0000FFFF
	cmp r1, r0
	beq _022688DC
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldrh r2, [r2, r3]
	ldr r0, [sp, #0x18]
	mov r1, #7
	mov r3, #5
	bl sub_02003050
_022688DC:
	ldr r0, [sp, #0x18]
	mov r1, #1
	bl sub_02003164
	mov r2, #2
	ldr r1, [r6, #0x5c]
	lsl r2, r2, #8
	bl sub_020C4B18
	add r5, r6, #0
	mov r7, #0x46
	mov r4, #0
	add r5, #0x6c
	lsl r7, r7, #2
	b _0226890A
_022688FA:
	add r0, r4, #0
	mul r0, r7
	add r0, r5, r0
	mov r1, #0xff
	mov r2, #0x18
	bl sub_020C4CF4
	add r4, r4, #1
_0226890A:
	cmp r4, #4
	blt _022688FA
	mov r0, #0
	str r0, [sp, #0x10]
	mov r7, #6
	b _02268946
_02268916:
	mov r0, #0x46
	ldr r1, [sp, #0x10]
	lsl r0, r0, #2
	mul r0, r1
	mov r5, #0
	add r4, r6, r0
	b _0226893C
_02268924:
	add r0, r7, #0
	bl sub_0208C098
	add r1, r0, #0
	mov r0, #5
	bl sub_02018144
	lsl r1, r5, #2
	add r1, r4, r1
	add r1, #0x84
	str r0, [r1, #0]
	add r5, r5, #1
_0226893C:
	cmp r5, #4
	blt _02268924
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
_02268946:
	ldr r0, [sp, #0x10]
	cmp r0, #4
	blt _02268916
	mov r0, #5
	mov r1, #0x40
	bl sub_02018144
	str r0, [r6, #0x60]
	mov r0, #5
	mov r1, #0x40
	bl sub_02018144
	str r0, [r6, #0x64]
	ldr r1, [r6, #0x60]
	ldr r0, [r6, #0x5c]
	mov r2, #0x20
	bl sub_020C4B18
	ldr r1, [r6, #0x60]
	ldr r0, [r6, #0x5c]
	add r1, #0x20
	add r0, #0xe0
	mov r2, #0x20
	bl sub_020C4B18
	ldr r0, [sp, #0xc]
	bl ov16_0223DF0C
	mov r2, #0x80
	tst r0, r2
	beq _0226898A
	add r1, r2, #0
	add r1, #0xd5
	b _0226899E
_0226898A:
	ldr r0, [sp, #0x14]
	lsl r1, r0, #2
	ldr r0, _02268A04 ; =0x022704E4
	add r0, r0, r1
	ldrh r1, [r0, #2]
	ldr r0, _02268A08 ; =0x0000FFFF
	cmp r1, r0
	bne _0226899E
	add r1, r2, #0
	add r1, #0x8b
_0226899E:
	mov r0, #7
	add r2, sp, #0x1c
	mov r3, #5
	bl sub_02006F88
	add r4, r0, #0
	ldr r0, [sp, #0xc]
	bl ov16_0223DF0C
	mov r1, #0x80
	tst r0, r1
	ldr r1, [r6, #0x64]
	beq _022689C4
	ldr r0, [sp, #0x1c]
	mov r2, #0x40
	ldr r0, [r0, #0xc]
	bl sub_020C4B18
	b _022689CE
_022689C4:
	ldr r0, [sp, #0x1c]
	mov r2, #0x20
	ldr r0, [r0, #0xc]
	bl sub_020C4B18
_022689CE:
	add r0, r4, #0
	bl sub_020181C4
	bl sub_02002B4C
	bl sub_02002B6C
	ldr r0, _02268A0C ; =ov16_0226BD74
	ldr r2, _02268A10 ; =0x0000D6D8
	add r1, r6, #0
	bl sub_0200D9E8
	str r0, [r6, #0x68]
	add r0, r6, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_022689F0: .word 0x0000068D
_022689F4: .word 0x000004CC
_022689F8: .word ov16_0226BCE4
_022689FC: .word 0x00000698
_02268A00: .word 0x02270264
_02268A04: .word 0x022704E4
_02268A08: .word 0x0000FFFF
_02268A0C: .word ov16_0226BD74
_02268A10: .word 0x0000D6D8
	thumb_func_end ov16_022687C8

	thumb_func_start ov16_02268A14
ov16_02268A14: ; 0x02268A14
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r1, [r6, #4]
	cmp r1, #0
	beq _02268A26
	mov r0, #0x6e
	lsl r0, r0, #4
	ldrb r0, [r6, r0]
	strb r0, [r1]
_02268A26:
	add r0, r6, #0
	bl ov16_0226B1E8
	add r0, r6, #0
	bl ov16_02268F00
	add r0, r6, #0
	bl ov16_02268B8C
	ldr r0, _02268A80 ; =0x000004CC
	ldr r0, [r6, r0]
	bl sub_020127BC
	ldr r0, _02268A84 ; =0x00000698
	ldr r0, [r6, r0]
	bl sub_0200DA58
	mov r4, #0
	add r5, r6, #0
_02268A4C:
	ldr r0, [r5, #0x40]
	bl sub_020181C4
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _02268A4C
	ldr r0, [r6, #0x5c]
	bl sub_020181C4
	add r0, r6, #0
	bl ov16_0226ABE8
	ldr r0, [r6, #0x60]
	bl sub_020181C4
	ldr r0, [r6, #0x64]
	bl sub_020181C4
	ldr r0, [r6, #0x68]
	bl sub_0200DA58
	add r0, r6, #0
	bl sub_020181C4
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02268A80: .word 0x000004CC
_02268A84: .word 0x00000698
	thumb_func_end ov16_02268A14

	thumb_func_start ov16_02268A88
ov16_02268A88: ; 0x02268A88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	ldr r0, [r7, #0]
	bl ov16_0223E010
	add r6, r0, #0
	ldr r0, [r7, #0]
	bl ov16_0223E018
	add r4, r0, #0
	ldr r0, [r7, #0]
	bl ov16_0223DF00
	add r5, r0, #0
	ldr r0, [r7, #0]
	bl ov16_0223E064
	str r0, [sp, #0x14]
	ldr r0, [r7, #0]
	bl ov16_0223DF0C
	mov r1, #0x80
	tst r0, r1
	beq _02268ABE
	mov r1, #0xa9
	b _02268AC0
_02268ABE:
	mov r1, #0x1c
_02268AC0:
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #7
	add r2, r5, #0
	mov r3, #4
	bl sub_02006E3C
	ldr r2, _02268B70 ; =0x00004E31
	add r0, r6, #0
	add r1, r4, #0
	add r3, r2, #0
	bl sub_0207C9EC
	ldr r0, [r7, #0]
	bl ov16_0223E064
	mov r1, #2
	str r1, [sp]
	ldr r1, _02268B74 ; =0x00004E34
	add r2, r6, #0
	str r1, [sp, #4]
	mov r1, #3
	add r3, r4, #0
	bl sub_0207C9B0
	mov r5, #0
_02268B02:
	ldr r0, _02268B78 ; =0x00004E39
	add r1, r4, #0
	add r0, r5, r0
	str r0, [sp]
	add r0, r6, #0
	mov r2, #2
	mov r3, #0
	bl sub_0207C948
	add r5, r5, #1
	cmp r5, #4
	blt _02268B02
	ldr r0, [r7, #0]
	bl ov16_0223DF0C
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _02268B6A
	ldr r1, _02268B7C ; =0x00004FBC
	ldr r0, _02268B80 ; =0x00004E44
	str r1, [sp]
	str r0, [sp, #4]
	sub r0, r1, #6
	str r0, [sp, #8]
	sub r1, #0x11
	str r1, [sp, #0xc]
	ldr r3, [sp, #0x14]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #5
	bl ov16_0226DE44
	ldr r0, _02268B80 ; =0x00004E44
	ldr r3, _02268B84 ; =0x00004FB6
	str r0, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xa
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r0, r6, #0
	add r1, r4, #0
	mov r2, #5
	add r3, r3, #6
	bl ov16_0226DEEC
	ldr r1, _02268B88 ; =0x000006E4
	str r0, [r7, r1]
_02268B6A:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02268B70: .word 0x00004E31
_02268B74: .word 0x00004E34
_02268B78: .word 0x00004E39
_02268B7C: .word 0x00004FBC
_02268B80: .word 0x00004E44
_02268B84: .word 0x00004FB6
_02268B88: .word 0x000006E4
	thumb_func_end ov16_02268A88

	thumb_func_start ov16_02268B8C
ov16_02268B8C: ; 0x02268B8C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, [r7, #0]
	bl ov16_0223E010
	ldr r0, [r7, #0]
	bl ov16_0223E018
	ldr r6, _02268BEC ; =0x00004E39
	add r5, r0, #0
	mov r4, #0
_02268BA2:
	add r0, r5, #0
	add r1, r4, r6
	bl sub_0207CA34
	add r4, r4, #1
	cmp r4, #4
	blt _02268BA2
	ldr r1, _02268BF0 ; =0x00004E34
	add r0, r5, #0
	bl sub_0207CA3C
	ldr r1, _02268BF4 ; =0x00004E31
	add r0, r5, #0
	add r2, r1, #0
	bl sub_0207CA44
	ldr r0, [r7, #0]
	bl ov16_0223DF0C
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _02268BEA
	ldr r0, _02268BF8 ; =0x000006E4
	ldr r0, [r7, r0]
	bl ov16_0226DF68
	ldr r3, _02268BFC ; =0x00004FAB
	ldr r2, _02268C00 ; =0x00004E44
	add r1, r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, #0x11
	add r3, #0xb
	bl ov16_0226DEC4
_02268BEA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02268BEC: .word 0x00004E39
_02268BF0: .word 0x00004E34
_02268BF4: .word 0x00004E31
_02268BF8: .word 0x000006E4
_02268BFC: .word 0x00004FAB
_02268C00: .word 0x00004E44
	thumb_func_end ov16_02268B8C

	thumb_func_start ov16_02268C04
ov16_02268C04: ; 0x02268C04
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x18]
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	add r7, r2, #0
	str r3, [sp, #0x1c]
	cmp r0, #0
	beq _02268C22
	add r1, r7, #0
	add r1, #0x1c
	mov r2, #0x22
	bl sub_020C4DB0
_02268C22:
	ldr r0, _02268D24 ; =0x0000068E
	mov r1, #0
	strb r1, [r7, r0]
	ldr r0, [r7, #0]
	bl ov16_0223DF00
	str r0, [sp, #0x28]
	ldr r0, [r7, #0]
	bl ov16_0223E010
	str r0, [sp, #0x24]
	ldr r0, [r7, #0]
	bl ov16_0223E018
	str r0, [sp, #0x20]
	ldr r0, _02268D28 ; =0x0000068B
	ldrsb r2, [r7, r0]
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	bne _02268C54
	mov r0, #1
	str r0, [sp, #0x48]
	mov r5, #0
	b _02268C5C
_02268C54:
	mov r0, #0x30
	ldr r1, _02268D2C ; =0x02270670
	mul r0, r2
	add r5, r1, r0
_02268C5C:
	ldr r0, [sp, #0x1c]
	mov r1, #0x30
	ldr r2, _02268D2C ; =0x02270670
	mul r1, r0
	add r0, r2, r1
	str r0, [sp, #0x2c]
	ldr r0, [r7, #0]
	bl ov16_0223E064
	mov r1, #2
	lsl r1, r1, #8
	str r1, [sp]
	ldr r1, [r7, #0x5c]
	mov r2, #1
	mov r3, #0
	bl sub_02002FBC
	ldr r6, [sp, #0x2c]
	mov r4, #0
_02268C82:
	ldrh r2, [r6, #4]
	ldr r0, _02268D30 ; =0x0000FFFF
	cmp r2, r0
	beq _02268CB8
	ldr r0, [sp, #0x48]
	cmp r0, #1
	beq _02268C96
	ldrh r0, [r5, #4]
	cmp r2, r0
	beq _02268CB8
_02268C96:
	lsl r2, r2, #2
	add r1, r4, #4
	add r2, r7, r2
	lsl r1, r1, #0x18
	mov r3, #2
	ldr r0, [sp, #0x28]
	ldr r2, [r2, #0x40]
	lsr r1, r1, #0x18
	lsl r3, r3, #0xa
	bl sub_02019574
	add r1, r4, #4
	lsl r1, r1, #0x18
	ldr r0, [sp, #0x28]
	lsr r1, r1, #0x18
	bl sub_0201C3C0
_02268CB8:
	add r4, r4, #1
	add r6, r6, #2
	add r5, r5, #2
	cmp r4, #4
	blt _02268C82
	ldr r0, [r7, #0]
	bl ov16_0223E064
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	str r1, [sp]
	mov r1, #0x48
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r1, #7
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	ldr r1, _02268D34 ; =0x00004E37
	ldr r3, [sp, #0x20]
	str r1, [sp, #0x14]
	mov r1, #3
	bl sub_0200CDC4
	ldr r1, _02268D28 ; =0x0000068B
	ldr r0, [sp, #0x1c]
	mov r2, #0xf
	strb r0, [r7, r1]
	mov r0, #0xc
	str r0, [sp]
	ldr r0, _02268D38 ; =0x04001050
	mov r1, #2
	mov r3, #8
	bl sub_020BF55C
	add r0, r7, #0
	bl ov16_0226B1E8
	ldr r0, [sp, #0x2c]
	ldr r3, [r0, #0x28]
	cmp r3, #0
	beq _02268D16
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x48]
	add r0, r7, #0
	blx r3
_02268D16:
	ldr r0, _02268D3C ; =ov16_0226BC50
	add r1, r7, #0
	mov r2, #0xa
	bl sub_0200DA3C
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02268D24: .word 0x0000068E
_02268D28: .word 0x0000068B
_02268D2C: .word 0x02270670
_02268D30: .word 0x0000FFFF
_02268D34: .word 0x00004E37
_02268D38: .word 0x04001050
_02268D3C: .word ov16_0226BC50
	thumb_func_end ov16_02268C04

	thumb_func_start ov16_02268D40
ov16_02268D40: ; 0x02268D40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp, #0x14]
	add r4, r0, #0
	ldr r1, _02268ECC ; =0x000005D8
	ldr r0, [sp, #0x14]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02268D5C
	ldr r0, [sp, #0x14]
	add r1, #0x18
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02268D60
_02268D5C:
	bl sub_02022974
_02268D60:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	bl ov16_0223E010
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	bl ov16_0223E018
	add r7, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02268ED0 ; =0x00004E37
	add r1, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	mov r3, #0xd0
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02268ED4 ; =0x00004E2F
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	mov r3, #0xcf
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02268ED4 ; =0x00004E2F
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	mov r3, #0xd1
	bl sub_0200CE54
	mov r0, #1
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _02268ED8 ; =0x00004E38
	add r1, r7, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	mov r3, #0xcd
	bl sub_0200CC3C
	mov r0, #1
	str r0, [sp]
	ldr r0, _02268EDC ; =0x00004E30
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	mov r3, #0xcc
	bl sub_0200CE24
	mov r0, #1
	str r0, [sp]
	ldr r0, _02268EDC ; =0x00004E30
	add r1, r7, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r2, r4, #0
	mov r3, #0xce
	bl sub_0200CE54
	mov r0, #0
	ldr r4, [sp, #0x14]
	str r0, [sp, #0x1c]
	mov r6, #0xc
	mov r5, #0xf6
_02268DFE:
	ldr r0, [sp, #0x18]
	ldr r2, _02268EE0 ; =0x02270414
	add r1, r7, #0
	bl sub_0200CE6C
	ldr r1, _02268ECC ; =0x000005D8
	mov r3, #0x11
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	lsl r1, r6, #0x10
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	mov r2, #0xd
	lsl r3, r3, #0x10
	bl sub_0200D4D0
	ldr r0, _02268ECC ; =0x000005D8
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D6A4
	ldr r0, [sp, #0x18]
	ldr r2, _02268EE4 ; =0x02270448
	add r1, r7, #0
	bl sub_0200CE6C
	mov r1, #0x5f
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r1, #0
	ldr r0, [r4, r0]
	lsl r1, r5, #0x10
	mov r3, #0x11
	ldr r0, [r0, #0]
	asr r1, r1, #0x10
	mov r2, #9
	lsl r3, r3, #0x10
	bl sub_0200D4D0
	ldr r0, [sp, #0x1c]
	add r4, r4, #4
	add r0, r0, #1
	add r6, #0x13
	sub r5, #0xc
	str r0, [sp, #0x1c]
	cmp r0, #6
	blt _02268DFE
	ldr r0, [sp, #0x14]
	bl ov16_02269218
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02268E70
	bl sub_02022974
_02268E70:
	ldr r0, _02268EE8 ; =ov16_02268FCC
	ldr r1, [sp, #0x14]
	ldr r2, _02268EEC ; =0x00000514
	bl sub_0200D9E8
	ldr r1, [sp, #0x14]
	str r0, [r1, #8]
	add r0, r1, #0
	ldr r0, [r0, #0]
	bl ov16_0223E064
	ldr r1, _02268EF0 ; =0x00004FBB
	add r2, r0, #0
	ldr r0, _02268EF4 ; =0x00004E43
	str r1, [sp]
	str r0, [sp, #4]
	sub r0, r1, #6
	str r0, [sp, #8]
	sub r1, #0x11
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	mov r3, #5
	bl ov16_0226DB7C
	ldr r0, _02268EF4 ; =0x00004E43
	ldr r3, _02268EF8 ; =0x00004FB5
	str r0, [sp]
	add r0, r3, #0
	str r3, [sp, #4]
	sub r0, #0xb
	str r0, [sp, #8]
	mov r2, #5
	str r2, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	add r3, r3, #6
	bl ov16_0226DC24
	ldr r2, _02268EFC ; =0x000006D8
	ldr r1, [sp, #0x14]
	str r0, [r1, r2]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02268ECC: .word 0x000005D8
_02268ED0: .word 0x00004E37
_02268ED4: .word 0x00004E2F
_02268ED8: .word 0x00004E38
_02268EDC: .word 0x00004E30
_02268EE0: .word 0x02270414
_02268EE4: .word 0x02270448
_02268EE8: .word ov16_02268FCC
_02268EEC: .word 0x00000514
_02268EF0: .word 0x00004FBB
_02268EF4: .word 0x00004E43
_02268EF8: .word 0x00004FB5
_02268EFC: .word 0x000006D8
	thumb_func_end ov16_02268D40

	thumb_func_start ov16_02268F00
ov16_02268F00: ; 0x02268F00
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02268FAC ; =0x000005D8
	ldr r1, [r6, r0]
	cmp r1, #0
	beq _02268F14
	add r0, #0x18
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _02268F18
_02268F14:
	bl sub_02022974
_02268F18:
	ldr r0, [r6, #0]
	bl ov16_0223E010
	ldr r0, [r6, #0]
	bl ov16_0223E018
	ldr r1, _02268FB0 ; =0x00004E37
	add r7, r0, #0
	bl sub_0200D070
	ldr r1, _02268FB4 ; =0x00004E2F
	add r0, r7, #0
	bl sub_0200D090
	ldr r1, _02268FB4 ; =0x00004E2F
	add r0, r7, #0
	bl sub_0200D0A0
	ldr r1, _02268FB8 ; =0x00004E38
	add r0, r7, #0
	bl sub_0200D070
	ldr r1, _02268FBC ; =0x00004E30
	add r0, r7, #0
	bl sub_0200D090
	ldr r1, _02268FBC ; =0x00004E30
	add r0, r7, #0
	bl sub_0200D0A0
	ldr r1, _02268FB0 ; =0x00004E37
	add r0, r7, #0
	bl sub_0200D080
	mov r4, #0
	add r5, r6, #0
_02268F60:
	ldr r0, _02268FAC ; =0x000005D8
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	ldr r0, _02268FAC ; =0x000005D8
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0x18
	ldr r0, [r5, r0]
	bl sub_0200D0F4
	mov r0, #0x5f
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02268F60
	ldr r0, [r6, #8]
	bl sub_0200DA58
	ldr r3, _02268FC0 ; =0x00004FAA
	mov r0, #0
	str r0, [r6, #8]
	add r1, r3, #0
	str r3, [sp]
	ldr r2, _02268FC4 ; =0x00004E43
	add r0, r7, #0
	add r1, #0x11
	add r3, #0xb
	bl ov16_0226DBFC
	ldr r0, _02268FC8 ; =0x000006D8
	ldr r0, [r6, r0]
	bl ov16_0226DCA8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02268FAC: .word 0x000005D8
_02268FB0: .word 0x00004E37
_02268FB4: .word 0x00004E2F
_02268FB8: .word 0x00004E38
_02268FBC: .word 0x00004E30
_02268FC0: .word 0x00004FAA
_02268FC4: .word 0x00004E43
_02268FC8: .word 0x000006D8
	thumb_func_end ov16_02268F00

	thumb_func_start ov16_02268FCC
ov16_02268FCC: ; 0x02268FCC
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _02269140 ; =0x00000648
	add r5, r1, #0
	mov r7, #0
	add r4, r5, r0
	mov r6, #0xc
_02268FD8:
	ldrb r0, [r4, #3]
	cmp r0, #4
	bhi _02268FF4
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02268FEA: ; jump table
	.short _02268FF4 - _02268FEA - 2 ; case 0
	.short _02269034 - _02268FEA - 2 ; case 1
	.short _02269046 - _02268FEA - 2 ; case 2
	.short _022690DE - _02268FEA - 2 ; case 3
	.short _02269046 - _02268FEA - 2 ; case 4
_02268FF4:
	ldr r0, _02269144 ; =0x000005D8
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0200D400
	cmp r0, #0
	beq _02269008
	ldrb r0, [r4, #2]
	cmp r0, #0x57
	bhs _0226900A
_02269008:
	b _0226912E
_0226900A:
	mov r0, #0
	strb r0, [r4, #4]
	mov r0, #0xa
	strb r0, [r4, #5]
	bl sub_0201D2E8
	lsr r1, r0, #0x1f
	lsl r3, r0, #0x1d
	ldrb r2, [r4, #5]
	sub r3, r3, r1
	mov r0, #0x1d
	ror r3, r0
	add r0, r1, r3
	add r0, r2, r0
	strb r0, [r4, #5]
	mov r0, #2
	strb r0, [r4, #7]
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	b _0226912E
_02269034:
	ldrb r1, [r4, #5]
	cmp r1, #0
	beq _02269040
	sub r0, r1, #1
	strb r0, [r4, #5]
	b _0226912E
_02269040:
	add r0, r0, #1
	strb r0, [r4, #3]
	b _0226912E
_02269046:
	ldr r0, _02269144 ; =0x000005D8
	mov r1, #2
	ldr r0, [r5, r0]
	lsl r1, r1, #0xa
	bl sub_0200D7C0
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	add r0, r1, r0
	strh r0, [r4]
	mov r1, #0
	ldrsh r1, [r4, r1]
	ldr r0, _02269144 ; =0x000005D8
	mov r3, #0x11
	asr r2, r1, #7
	lsr r2, r2, #0x18
	add r2, r1, r2
	asr r1, r2, #8
	add r1, r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0xd
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	ldrb r1, [r4, #6]
	ldrb r0, [r4, #7]
	cmp r1, r0
	blo _0226912E
	mov r0, #0
	strb r0, [r4, #6]
	ldrb r0, [r4, #3]
	cmp r0, #2
	bne _0226909C
	add r0, r0, #1
	strb r0, [r4, #3]
	b _0226912E
_0226909C:
	ldr r0, _02269144 ; =0x000005D8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D79C
	ldr r0, _02269144 ; =0x000005D8
	lsl r1, r6, #0x10
	mov r3, #0x11
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0xd
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r0, #0
	strh r0, [r4]
	ldrb r0, [r4, #8]
	cmp r0, #1
	bhs _022690D6
	add r0, r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #7]
	cmp r0, #1
	bls _022690D0
	sub r0, r0, #1
	strb r0, [r4, #7]
_022690D0:
	mov r0, #2
	strb r0, [r4, #3]
	b _0226912E
_022690D6:
	mov r0, #0
	strb r0, [r4, #8]
	strb r0, [r4, #3]
	b _0226912E
_022690DE:
	ldr r0, _02269144 ; =0x000005D8
	ldr r1, _02269148 ; =0xFFFFF800
	ldr r0, [r5, r0]
	bl sub_0200D7C0
	mov r0, #0
	ldrsh r1, [r4, r0]
	mov r0, #6
	lsl r0, r0, #6
	sub r0, r1, r0
	strh r0, [r4]
	mov r1, #0
	ldrsh r1, [r4, r1]
	ldr r0, _02269144 ; =0x000005D8
	mov r3, #0x11
	asr r2, r1, #7
	lsr r2, r2, #0x18
	add r2, r1, r2
	asr r1, r2, #8
	add r1, r1, r6
	lsl r1, r1, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	mov r2, #0xd
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldrb r0, [r4, #6]
	add r0, r0, #1
	strb r0, [r4, #6]
	ldrb r1, [r4, #7]
	ldrb r0, [r4, #6]
	lsl r1, r1, #1
	cmp r0, r1
	blt _0226912E
	mov r0, #0
	strb r0, [r4, #6]
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
_0226912E:
	add r7, r7, #1
	add r4, #0xa
	add r5, r5, #4
	add r6, #0x13
	cmp r7, #6
	bge _0226913C
	b _02268FD8
_0226913C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269140: .word 0x00000648
_02269144: .word 0x000005D8
_02269148: .word 0xFFFFF800
	thumb_func_end ov16_02268FCC

	thumb_func_start ov16_0226914C
ov16_0226914C: ; 0x0226914C
	push {r3, r4}
	ldr r2, _02269164 ; =0x0000064A
	mov r4, #0
_02269152:
	ldrb r3, [r1, r4]
	add r4, r4, #1
	strb r3, [r0, r2]
	add r0, #0xa
	cmp r4, #6
	blt _02269152
	pop {r3, r4}
	bx lr
	nop
_02269164: .word 0x0000064A
	thumb_func_end ov16_0226914C

	thumb_func_start ov16_02269168
ov16_02269168: ; 0x02269168
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	mov r4, #0
_02269172:
	ldrb r0, [r6, r4]
	bl ov16_0226A934
	add r1, r0, #0
	ldr r0, _022691B8 ; =0x000005D8
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_02021D6C
	ldr r0, _022691B8 ; =0x000005D8
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	ldrb r0, [r7, r4]
	bl ov16_0226A934
	add r1, r0, #0
	mov r0, #0x5f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_02021D6C
	mov r0, #0x5f
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0200D324
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02269172
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022691B8: .word 0x000005D8
	thumb_func_end ov16_02269168

	thumb_func_start ov16_022691BC
ov16_022691BC: ; 0x022691BC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02269214 ; =0x000005D8
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _022691D0
	add r0, #0x18
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _022691D4
_022691D0:
	bl sub_02022974
_022691D4:
	ldr r7, _02269214 ; =0x000005D8
	mov r6, #0
	add r4, r5, #0
_022691DA:
	ldr r0, [r4, r7]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_0200D3EC
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blt _022691DA
	ldr r0, [r5, #0]
	bl ov16_0223DF0C
	mov r1, #1
	tst r0, r1
	beq _02269212
	mov r6, #0x5f
	mov r4, #0
	add r7, r1, #0
	lsl r6, r6, #4
_02269200:
	ldr r0, [r5, r6]
	add r1, r7, #0
	ldr r0, [r0, #0]
	bl sub_0200D3EC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02269200
_02269212:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269214: .word 0x000005D8
	thumb_func_end ov16_022691BC

	thumb_func_start ov16_02269218
ov16_02269218: ; 0x02269218
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02269258 ; =0x000005D8
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _0226922C
	add r0, #0x18
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02269230
_0226922C:
	bl sub_02022974
_02269230:
	ldr r7, _02269258 ; =0x000005D8
	mov r4, #0
	add r6, r7, #0
	add r6, #0x18
_02269238:
	ldr r0, [r5, r7]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0200D3EC
	ldr r0, [r5, r6]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_0200D3EC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #6
	blt _02269238
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269258: .word 0x000005D8
	thumb_func_end ov16_02269218

	thumb_func_start ov16_0226925C
ov16_0226925C: ; 0x0226925C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02269338 ; =0x0000068B
	mov r6, #0
	ldrsb r1, [r5, r0]
	sub r0, r6, #1
	cmp r1, r0
	bne _02269270
	bl sub_02022974
_02269270:
	ldr r0, _02269338 ; =0x0000068B
	ldr r3, _0226933C ; =0x02270670
	ldrsb r2, [r5, r0]
	mov r1, #0x30
	mul r1, r2
	add r4, r3, r1
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0226928A
	add r0, r0, #3
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _02269290
_0226928A:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_02269290:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0226929A
	bl sub_02022974
_0226929A:
	ldr r0, [r5, #0]
	bl ov16_0223DF0C
	mov r1, #1
	lsl r1, r1, #0xa
	tst r0, r1
	beq _022692B2
	add r0, r5, #0
	bl ov16_0226CD18
	add r7, r0, #0
	b _022692CC
_022692B2:
	ldr r0, [r4, #0x14]
	bl sub_02022664
	add r7, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r7, r0
	bne _022692CC
	add r0, r5, #0
	bl ov16_0226BE48
	add r7, r0, #0
	add r6, r6, #1
_022692CC:
	mov r0, #0
	mvn r0, r0
	str r0, [sp]
	cmp r7, r0
	bne _022692DA
	mov r2, #0xff
	b _022692E6
_022692DA:
	ldr r1, [r4, #0x18]
	lsl r0, r7, #2
	ldr r0, [r1, r0]
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	ldrb r2, [r0, r7]
_022692E6:
	ldr r3, [r4, #0x2c]
	cmp r3, #0
	beq _02269332
	ldr r1, [sp]
	add r0, r5, #0
	blx r3
	mov r1, #0
	mvn r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _02269332
	ldr r2, [r4, #0x24]
	cmp r2, #0
	beq _02269308
	add r0, r5, #0
	add r1, r7, #0
	blx r2
_02269308:
	ldr r0, _02269340 ; =0x000006DC
	mov r1, #0
	add r0, r5, r0
	mov r2, #4
	bl sub_020C4CF4
	ldr r0, _02269344 ; =0x000006D8
	ldr r0, [r5, r0]
	bl ov16_0226DDE8
	cmp r6, #0
	ble _0226932A
	mov r0, #0x6e
	mov r1, #1
	lsl r0, r0, #4
	strb r1, [r5, r0]
	b _02269332
_0226932A:
	mov r0, #0x6e
	mov r1, #0
	lsl r0, r0, #4
	strb r1, [r5, r0]
_02269332:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269338: .word 0x0000068B
_0226933C: .word 0x02270670
_02269340: .word 0x000006DC
_02269344: .word 0x000006D8
	thumb_func_end ov16_0226925C

	thumb_func_start ov16_02269348
ov16_02269348: ; 0x02269348
	push {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _02269362
	ldr r1, [r0, #0x10]
	cmp r1, #0
	bne _02269362
	bl ov16_0226BCD0
	cmp r0, #1
	bne _02269362
	mov r0, #1
	pop {r3, pc}
_02269362:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov16_02269348

	thumb_func_start ov16_02269368
ov16_02269368: ; 0x02269368
	push {r3, lr}
	cmp r0, #0x40
	bgt _0226939E
	bge _022693F4
	cmp r0, #0x10
	bgt _02269398
	bge _022693CC
	cmp r0, #8
	bhi _02269404
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02269386: ; jump table
	.short _022693C0 - _02269386 - 2 ; case 0
	.short _022693CC - _02269386 - 2 ; case 1
	.short _022693CC - _02269386 - 2 ; case 2
	.short _02269404 - _02269386 - 2 ; case 3
	.short _022693D8 - _02269386 - 2 ; case 4
	.short _02269404 - _02269386 - 2 ; case 5
	.short _02269404 - _02269386 - 2 ; case 6
	.short _02269404 - _02269386 - 2 ; case 7
	.short _022693DC - _02269386 - 2 ; case 8
_02269398:
	cmp r0, #0x20
	beq _022693FC
	b _02269404
_0226939E:
	mov r2, #1
	lsl r2, r2, #8
	cmp r0, r2
	bgt _022693AE
	bge _022693E8
	cmp r0, #0x80
	beq _022693D8
	b _02269404
_022693AE:
	lsl r1, r2, #1
	cmp r0, r1
	bgt _022693B8
	beq _022693F8
	b _02269404
_022693B8:
	lsl r1, r2, #2
	cmp r0, r1
	beq _02269400
	b _02269404
_022693C0:
	cmp r1, #4
	bne _022693C8
	mov r0, #9
	pop {r3, pc}
_022693C8:
	mov r0, #8
	pop {r3, pc}
_022693CC:
	cmp r1, #4
	bne _022693D4
	mov r0, #6
	pop {r3, pc}
_022693D4:
	mov r0, #4
	pop {r3, pc}
_022693D8:
	mov r0, #1
	pop {r3, pc}
_022693DC:
	cmp r1, #4
	bne _022693E4
	mov r0, #7
	pop {r3, pc}
_022693E4:
	mov r0, #2
	pop {r3, pc}
_022693E8:
	cmp r1, #4
	bne _022693F0
	mov r0, #4
	pop {r3, pc}
_022693F0:
	mov r0, #6
	pop {r3, pc}
_022693F4:
	mov r0, #3
	pop {r3, pc}
_022693F8:
	mov r0, #0xa
	pop {r3, pc}
_022693FC:
	mov r0, #5
	pop {r3, pc}
_02269400:
	mov r0, #0xb
	pop {r3, pc}
_02269404:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov16_02269368

	thumb_func_start ov16_0226940C
ov16_0226940C: ; 0x0226940C
	push {r4, r5}
	ldr r1, _0226946C ; =0x04001000
	ldr r2, _02269470 ; =0xFFFF1FFF
	ldr r3, [r1, #0]
	add r5, r1, #0
	and r3, r2
	lsr r2, r1, #0xd
	orr r2, r3
	str r2, [r1, #0]
	add r5, #0x4a
	ldrh r4, [r5]
	mov r3, #0x3f
	mov r2, #0x1f
	bic r4, r3
	orr r2, r4
	mov r4, #0x20
	orr r2, r4
	strh r2, [r5]
	add r1, #0x48
	ldrh r5, [r1]
	mov r2, #0x1b
	bic r5, r3
	orr r2, r5
	orr r2, r4
	strh r2, [r1]
	ldr r1, _02269474 ; =0x000006CC
	ldr r1, [r0, r1]
	asr r0, r1, #7
	lsr r0, r0, #0x18
	add r0, r1, r0
	asr r1, r0, #8
	mov r0, #0xff
	sub r0, r0, r1
	bpl _02269452
	mov r0, #0
_02269452:
	lsl r1, r0, #8
	mov r0, #0xff
	lsl r0, r0, #8
	and r1, r0
	mov r0, #0xff
	orr r0, r1
	ldr r1, _02269478 ; =0x04001040
	strh r0, [r1]
	mov r0, #0xc0
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
	nop
_0226946C: .word 0x04001000
_02269470: .word 0xFFFF1FFF
_02269474: .word 0x000006CC
_02269478: .word 0x04001040
	thumb_func_end ov16_0226940C

	thumb_func_start ov16_0226947C
ov16_0226947C: ; 0x0226947C
	push {r4, lr}
	lsl r4, r2, #8
	ldr r2, _022694A0 ; =0x000006CC
	add r3, r0, #0
	ldr r0, [r3, r2]
	cmp r0, r4
	beq _0226949E
	add r0, r2, #4
	str r1, [r3, r0]
	add r2, #8
	str r4, [r3, r2]
	mov r2, #0x4b
	ldr r0, _022694A4 ; =ov16_022694A8
	add r1, r3, #0
	lsl r2, r2, #4
	bl sub_0200D9E8
_0226949E:
	pop {r4, pc}
	; .align 2, 0
_022694A0: .word 0x000006CC
_022694A4: .word ov16_022694A8
	thumb_func_end ov16_0226947C

	thumb_func_start ov16_022694A8
ov16_022694A8: ; 0x022694A8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r4, #0
	bl ov16_0223DF00
	add r7, r0, #0
	ldr r0, _0226953C ; =0x000006CC
	add r1, r0, #4
	ldr r2, [r5, r0]
	ldr r1, [r5, r1]
	add r1, r2, r1
	str r1, [r5, r0]
	add r1, r0, #4
	ldr r1, [r5, r1]
	cmp r1, #0
	bgt _022694D8
	add r2, r0, #0
	add r2, #8
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	cmp r0, r2
	ble _022694E8
_022694D8:
	cmp r1, #0
	ble _022694EE
	ldr r0, _02269540 ; =0x000006D4
	ldr r2, [r5, r0]
	sub r0, #8
	ldr r0, [r5, r0]
	cmp r0, r2
	blt _022694EE
_022694E8:
	ldr r0, _0226953C ; =0x000006CC
	mov r4, #1
	str r2, [r5, r0]
_022694EE:
	ldr r3, _0226953C ; =0x000006CC
	add r0, r7, #0
	ldr r3, [r5, r3]
	mov r1, #6
	asr r6, r3, #7
	lsr r6, r6, #0x18
	add r6, r3, r6
	mov r2, #0
	asr r3, r6, #8
	bl sub_02019184
	add r0, r5, #0
	bl ov16_0226940C
	cmp r4, #1
	bne _02269538
	ldr r2, _02269544 ; =0x000002FF
	add r0, r7, #0
	mov r1, #7
	bl sub_02019EE0
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019060
	ldr r2, _02269548 ; =0x04001000
	ldr r0, _0226954C ; =0xFFFF1FFF
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [sp]
	bl sub_0200DA58
_02269538:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226953C: .word 0x000006CC
_02269540: .word 0x000006D4
_02269544: .word 0x000002FF
_02269548: .word 0x04001000
_0226954C: .word 0xFFFF1FFF
	thumb_func_end ov16_022694A8

	thumb_func_start ov16_02269550
ov16_02269550: ; 0x02269550
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	ldr r0, _02269624 ; =0x0000068E
	mov r1, #1
	strb r1, [r5, r0]
	ldr r1, _02269628 ; =0x0400104A
	mov r4, #0x3f
	ldrh r2, [r1]
	mov r0, #0xf
	mov r7, #0xc
	bic r2, r4
	orr r0, r2
	mov r2, #0x20
	orr r0, r2
	strh r0, [r1]
	sub r0, r1, #2
	ldrh r3, [r0]
	bic r3, r4
	orr r3, r7
	orr r3, r2
	strh r3, [r0]
	ldrh r4, [r0]
	ldr r3, _0226962C ; =0xFFFFC0FF
	lsl r2, r2, #8
	and r4, r3
	lsl r3, r7, #8
	orr r3, r4
	orr r2, r3
	strh r2, [r0]
	add r2, r1, #0
	mov r0, #0xff
	sub r2, #0xa
	strh r0, [r2]
	mov r3, #0x90
	sub r2, r1, #6
	strh r3, [r2]
	add r2, r1, #0
	sub r2, #8
	strh r0, [r2]
	sub r0, r1, #4
	ldr r2, _02269630 ; =0x000090C0
	sub r1, #0x4a
	strh r2, [r0]
	ldr r2, [r1, #0]
	ldr r0, _02269634 ; =0xFFFF1FFF
	and r2, r0
	lsl r0, r7, #0xb
	orr r0, r2
	str r0, [r1, #0]
	mov r0, #5
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0x14
	bl sub_020C4CF4
	str r5, [r4, #0]
	ldr r0, _02269638 ; =0xFFFF9C64
	strb r6, [r4, #0x12]
	strh r0, [r4, #8]
	mov r0, #0xfa
	lsl r0, r0, #4
	strh r0, [r4, #0xa]
	mov r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, _0226963C ; =0x0000639C
	sub r0, r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	strh r0, [r4, #0xc]
	mov r0, #0xa
	ldrsh r1, [r4, r0]
	mov r0, #0xfa
	lsl r0, r0, #4
	sub r0, r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	strh r0, [r4, #0xe]
	ldr r0, _02269640 ; =0x0000070E
	bl sub_02005748
	ldr r0, _02269644 ; =ov16_0226B988
	ldr r2, _02269648 ; =0x000004BA
	add r1, r4, #0
	bl sub_0200D9E8
	ldr r0, _0226964C ; =ov16_0226BB94
	add r1, r4, #0
	bl sub_020177BC
	cmp r0, #1
	beq _02269616
	bl sub_02022974
_02269616:
	ldr r0, _02269650 ; =ov16_0226BA88
	add r1, r4, #0
	mov r2, #0xa
	bl sub_0200DA04
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269624: .word 0x0000068E
_02269628: .word 0x0400104A
_0226962C: .word 0xFFFFC0FF
_02269630: .word 0x000090C0
_02269634: .word 0xFFFF1FFF
_02269638: .word 0xFFFF9C64
_0226963C: .word 0x0000639C
_02269640: .word 0x0000070E
_02269644: .word ov16_0226B988
_02269648: .word 0x000004BA
_0226964C: .word ov16_0226BB94
_02269650: .word ov16_0226BA88
	thumb_func_end ov16_02269550

	thumb_func_start ov16_02269654
ov16_02269654: ; 0x02269654
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r4, [r5, #0x1c]
	bl ov16_02269668
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02269550
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02269654

	thumb_func_start ov16_02269668
ov16_02269668: ; 0x02269668
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r6, r5, #0
	add r6, #0x1c
	ldrb r7, [r5, #0x1c]
	ldrb r1, [r6, #8]
	ldr r0, _02269864 ; =0x000006E1
	strb r1, [r5, r0]
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	add r4, r0, #0
	ldr r0, _02269868 ; =0x0000068A
	strb r7, [r5, r0]
	ldr r0, [r5, #0]
	bl ov16_0223DF0C
	mov r1, #0x20
	tst r0, r1
	beq _022696B4
	ldr r1, _0226986C ; =0x000003A3
	add r0, r4, #0
	bl sub_0200B1EC
	mov r1, #0xe9
	str r0, [sp, #0x24]
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r1, _02269870 ; =0x000003A5
	add r0, r4, #0
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	b _02269704
_022696B4:
	ldr r0, [r5, #0]
	bl ov16_0223DF0C
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _022696E4
	ldr r1, _02269874 ; =0x000004C7
	add r0, r4, #0
	bl sub_0200B1EC
	mov r1, #0xe9
	str r0, [sp, #0x24]
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r1, _02269870 ; =0x000003A5
	add r0, r4, #0
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	b _02269704
_022696E4:
	mov r1, #0xe7
	add r0, r4, #0
	lsl r1, r1, #2
	bl sub_0200B1EC
	str r0, [sp, #0x24]
	ldr r1, _02269878 ; =0x0000039D
	add r0, r4, #0
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	ldr r1, _0226987C ; =0x0000039E
	add r0, r4, #0
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
_02269704:
	ldr r0, _02269864 ; =0x000006E1
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0226971C
	mov r1, #0x3a
	add r0, r4, #0
	lsl r1, r1, #4
	bl sub_0200B1EC
	add r4, r0, #0
	mov r1, #1
	b _02269728
_0226971C:
	ldr r1, _02269880 ; =0x0000039F
	add r0, r4, #0
	bl sub_0200B1EC
	add r4, r0, #0
	mov r1, #0
_02269728:
	ldr r0, _02269884 ; =0x0000068F
	mov r3, #2
	strb r1, [r5, r0]
	ldr r0, _02269888 ; =0x00010203
	mov r1, #0x4d
	str r0, [sp]
	ldr r0, _0226988C ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x54
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	lsl r1, r1, #4
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r5, #0
	add r1, r5, r1
	bl ov16_0226A98C
	ldr r0, _02269890 ; =0x00040506
	ldr r1, _02269894 ; =0x000004E4
	str r0, [sp]
	mov r3, #2
	ldr r0, _0226988C ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x28
	str r0, [sp, #0xc]
	mov r0, #0xaa
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	add r1, r5, r1
	bl ov16_0226A98C
	ldr r0, _02269898 ; =0x00070809
	ldr r1, _0226989C ; =0x000004F8
	str r0, [sp]
	mov r3, #2
	ldr r0, _0226988C ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0xd8
	str r0, [sp, #0xc]
	mov r0, #0xaa
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	add r0, r5, #0
	add r1, r5, r1
	bl ov16_0226A98C
	ldr r0, _022698A0 ; =0x000A0B0C
	ldr r1, _022698A4 ; =0x0000050C
	str r0, [sp]
	mov r3, #2
	ldr r0, _0226988C ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0xb2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl ov16_0226A98C
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	add r0, r4, #0
	bl sub_020237BC
	ldr r0, [r5, #0]
	bl ov16_0223DF0C
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	bne _02269860
	ldrb r1, [r6, #1]
	ldrb r2, [r6, #2]
	ldr r0, [r5, #0]
	bl ov16_0223DFAC
	add r4, r0, #0
	add r0, r5, #0
	bl ov16_0226A698
	ldrh r0, [r6, #6]
	mov r3, #4
	add r1, r4, #0
	str r0, [sp]
	ldrb r0, [r6, #3]
	add r2, r7, #0
	str r0, [sp, #4]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	bl ov16_0226A7A4
	add r4, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, sp, #0x2c
	add r2, sp, #0x28
	bl sub_020129A4
	cmp r7, #4
	bne _02269840
	mov r0, #0x4e
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x2c]
	add r0, #0x10
	add r0, r1, r0
	str r0, [sp, #0x2c]
	b _02269846
_02269840:
	ldr r0, [sp, #0x2c]
	sub r0, #0x10
	str r0, [sp, #0x2c]
_02269846:
	mov r3, #0x11
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	lsl r3, r3, #4
	sub r2, r2, r3
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	add r0, r4, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0xc
	bl sub_0200D500
_02269860:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02269864: .word 0x000006E1
_02269868: .word 0x0000068A
_0226986C: .word 0x000003A3
_02269870: .word 0x000003A5
_02269874: .word 0x000004C7
_02269878: .word 0x0000039D
_0226987C: .word 0x0000039E
_02269880: .word 0x0000039F
_02269884: .word 0x0000068F
_02269888: .word 0x00010203
_0226988C: .word 0x00004E37
_02269890: .word 0x00040506
_02269894: .word 0x000004E4
_02269898: .word 0x00070809
_0226989C: .word 0x000004F8
_022698A0: .word 0x000A0B0C
_022698A4: .word 0x0000050C
	thumb_func_end ov16_02269668

	thumb_func_start ov16_022698A8
ov16_022698A8: ; 0x022698A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r4, [r5, #0x1c]
	bl ov16_022698BC
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02269550
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_022698A8

	thumb_func_start ov16_022698BC
ov16_022698BC: ; 0x022698BC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ov16_02269668
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	mov r1, #0x10
	str r1, [sp]
	mov r1, #0x20
	str r1, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	mov r1, #0x11
	str r1, [sp, #0xc]
	ldr r2, _02269914 ; =0x000002FF
	add r4, r0, #0
	mov r1, #4
	mov r3, #0
	bl sub_02019CB8
	add r0, r4, #0
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, _02269918 ; =0x000004E4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _0226991C ; =0x000004F8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _02269920 ; =0x0000050C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02269914: .word 0x000002FF
_02269918: .word 0x000004E4
_0226991C: .word 0x000004F8
_02269920: .word 0x0000050C
	thumb_func_end ov16_022698BC

	thumb_func_start ov16_02269924
ov16_02269924: ; 0x02269924
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r4, [r5, #0x1c]
	bl ov16_02269938
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_02269550
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_02269924

	thumb_func_start ov16_02269938
ov16_02269938: ; 0x02269938
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	bl ov16_02269668
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	mov r1, #0x10
	str r1, [sp]
	mov r1, #0xa
	str r1, [sp, #4]
	mov r1, #8
	str r1, [sp, #8]
	mov r1, #0x11
	str r1, [sp, #0xc]
	ldr r2, _022699A0 ; =0x000002FF
	mov r1, #4
	mov r3, #0
	add r4, r0, #0
	bl sub_02019CB8
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #8
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r2, _022699A0 ; =0x000002FF
	add r0, r4, #0
	mov r1, #4
	mov r3, #0x16
	bl sub_02019CB8
	add r0, r4, #0
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, _022699A4 ; =0x000004E4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _022699A8 ; =0x000004F8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022699A0: .word 0x000002FF
_022699A4: .word 0x000004E4
_022699A8: .word 0x000004F8
	thumb_func_end ov16_02269938

	thumb_func_start ov16_022699AC
ov16_022699AC: ; 0x022699AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	add r6, r5, #0
	add r6, #0x1c
	bne _022699BC
	bl sub_02022974
_022699BC:
	ldrb r1, [r6, #0x10]
	ldr r0, _02269C3C ; =0x0000068A
	strb r1, [r5, r0]
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	str r0, [sp, #0x1c]
	ldrb r1, [r6, #0x10]
	add r0, r5, #0
	bl ov16_0226ABD4
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl ov16_0226AF0C
	ldr r0, _02269C40 ; =0x00070809
	mov r1, #0x4d
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02269C44 ; =0x00004E37
	lsl r1, r1, #4
	str r0, [sp, #8]
	mov r0, #0x40
	str r0, [sp, #0xc]
	mov r0, #0x2e
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	add r1, r5, r1
	add r0, #0x28
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	mov r3, #2
	bl ov16_0226A98C
	ldr r0, _02269C40 ; =0x00070809
	ldr r1, _02269C48 ; =0x000004E4
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02269C44 ; =0x00004E37
	add r1, r5, r1
	str r0, [sp, #8]
	mov r0, #0xc0
	str r0, [sp, #0xc]
	mov r0, #0x2e
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r0, #0x3c
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r3, #2
	bl ov16_0226A98C
	ldr r0, _02269C40 ; =0x00070809
	ldr r1, _02269C4C ; =0x000004F8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02269C44 ; =0x00004E37
	add r1, r5, r1
	str r0, [sp, #8]
	mov r0, #0x40
	str r0, [sp, #0xc]
	mov r0, #0x6e
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r0, #0x50
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r3, #2
	bl ov16_0226A98C
	ldr r0, _02269C40 ; =0x00070809
	ldr r1, _02269C50 ; =0x0000050C
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	ldr r0, _02269C44 ; =0x00004E37
	add r1, r5, r1
	str r0, [sp, #8]
	mov r0, #0xc0
	str r0, [sp, #0xc]
	mov r0, #0x6e
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r0, #0x64
	str r0, [sp, #0x18]
	add r0, r5, #0
	mov r3, #2
	bl ov16_0226A98C
	ldr r0, [sp, #0x20]
	mov r4, #0
	str r0, [sp, #0x28]
	add r0, #0x78
	str r0, [sp, #0x28]
	mov r0, #0x4d
	lsl r0, r0, #4
	add r7, r5, r0
	ldr r0, [sp, #0x20]
	add r0, #0xc8
	str r0, [sp, #0x20]
	b _02269B2E
_02269AA4:
	add r1, r6, r4
	ldrb r0, [r1, #8]
	ldrb r1, [r1, #0xc]
	bl ov16_0226B924
	str r0, [sp, #0x24]
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02269C44 ; =0x00004E37
	ldr r1, _02269C54 ; =0x022702D4
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	add r2, r4, #0
	add r2, #9
	str r1, [sp, #0xc]
	ldr r1, _02269C54 ; =0x022702D4
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x28]
	add r0, r0, r1
	mov r1, #0x14
	mul r1, r2
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, r1
	add r3, r2, #0
	bl ov16_0226A98C
	ldr r0, [sp, #0x24]
	ldr r1, _02269C58 ; =0x02270284
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _02269C44 ; =0x00004E37
	add r2, r4, #5
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	str r1, [sp, #0xc]
	ldr r1, _02269C58 ; =0x02270284
	add r0, r1, r0
	ldrh r0, [r0, #2]
	add r1, r4, #0
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	mov r0, #0x14
	mul r1, r0
	ldr r0, [sp, #0x20]
	add r0, r0, r1
	mov r1, #0x14
	mul r1, r2
	mov r2, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r7, r1
	add r3, r2, #0
	bl ov16_0226A98C
	add r4, r4, #1
_02269B2E:
	cmp r4, #4
	blt _02269AA4
	ldr r0, [sp, #0x1c]
	ldr r1, _02269C5C ; =0x000003A1
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, _02269C60 ; =0x000A0B0C
	mov r1, #0x52
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02269C44 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0xb2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl ov16_0226A98C
	add r0, r4, #0
	bl sub_020237BC
	mov r4, #0
	mov r7, #3
	b _02269B98
_02269B72:
	lsl r0, r4, #1
	ldrh r0, [r6, r0]
	cmp r0, #0
	beq _02269B8C
	add r1, r7, #0
	bl sub_020790C4
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov16_0226B06C
	b _02269B96
_02269B8C:
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0226B088
	b _02269B9C
_02269B96:
	add r4, r4, #1
_02269B98:
	cmp r4, #4
	blt _02269B72
_02269B9C:
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	ldrh r0, [r6]
	cmp r0, #0
	bne _02269BC8
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020129D0
	ldr r0, _02269C64 ; =0x00000534
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _02269C68 ; =0x00000584
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
_02269BC8:
	ldrh r0, [r6, #2]
	cmp r0, #0
	bne _02269BEC
	ldr r0, _02269C48 ; =0x000004E4
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _02269C6C ; =0x00000548
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _02269C70 ; =0x00000598
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
_02269BEC:
	ldrh r0, [r6, #4]
	cmp r0, #0
	bne _02269C10
	ldr r0, _02269C4C ; =0x000004F8
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _02269C74 ; =0x0000055C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	ldr r0, _02269C78 ; =0x000005AC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
_02269C10:
	ldrh r0, [r6, #6]
	cmp r0, #0
	bne _02269C38
	ldr r0, _02269C50 ; =0x0000050C
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_020129D0
	mov r0, #0x57
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020129D0
	mov r0, #0x17
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_020129D0
_02269C38:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02269C3C: .word 0x0000068A
_02269C40: .word 0x00070809
_02269C44: .word 0x00004E37
_02269C48: .word 0x000004E4
_02269C4C: .word 0x000004F8
_02269C50: .word 0x0000050C
_02269C54: .word 0x022702D4
_02269C58: .word 0x02270284
_02269C5C: .word 0x000003A1
_02269C60: .word 0x000A0B0C
_02269C64: .word 0x00000534
_02269C68: .word 0x00000584
_02269C6C: .word 0x00000548
_02269C70: .word 0x00000598
_02269C74: .word 0x0000055C
_02269C78: .word 0x000005AC
	thumb_func_end ov16_022699AC

	thumb_func_start ov16_02269C7C
ov16_02269C7C: ; 0x02269C7C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	mov r1, #0xeb
	lsl r1, r1, #2
	add r6, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r1, _02269D00 ; =0x000003AD
	add r0, r6, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, _02269D04 ; =0x00010203
	mov r1, #0x4d
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02269D08 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl ov16_0226A98C
	ldr r0, _02269D0C ; =0x000A0B0C
	ldr r1, _02269D10 ; =0x000004E4
	str r0, [sp]
	mov r3, #2
	ldr r0, _02269D08 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl ov16_0226A98C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_02269D00: .word 0x000003AD
_02269D04: .word 0x00010203
_02269D08: .word 0x00004E37
_02269D0C: .word 0x000A0B0C
_02269D10: .word 0x000004E4
	thumb_func_end ov16_02269C7C

	thumb_func_start ov16_02269D14
ov16_02269D14: ; 0x02269D14
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	ldr r1, _02269D98 ; =0x0000049D
	add r6, r0, #0
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r1, _02269D9C ; =0x0000049E
	add r0, r6, #0
	bl sub_0200B1EC
	add r6, r0, #0
	ldr r0, _02269DA0 ; =0x00010203
	mov r1, #0x4d
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02269DA4 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl ov16_0226A98C
	ldr r0, _02269DA8 ; =0x000A0B0C
	ldr r1, _02269DAC ; =0x000004E4
	str r0, [sp]
	mov r3, #2
	ldr r0, _02269DA4 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl ov16_0226A98C
	add r0, r4, #0
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02269D98: .word 0x0000049D
_02269D9C: .word 0x0000049E
_02269DA0: .word 0x00010203
_02269DA4: .word 0x00004E37
_02269DA8: .word 0x000A0B0C
_02269DAC: .word 0x000004E4
	thumb_func_end ov16_02269D14

	thumb_func_start ov16_02269DB0
ov16_02269DB0: ; 0x02269DB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0D0
	add r4, r0, #0
	ldr r1, _02269E7C ; =0x000004A2
	add r0, r6, #0
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	ldr r1, _02269E80 ; =0x000004A3
	add r0, r6, #0
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	mov r0, #0x64
	mov r1, #5
	bl sub_02023790
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #5
	bl sub_02023790
	add r7, r0, #0
	ldrh r2, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B630
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200C388
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0200C388
	ldr r0, _02269E84 ; =0x00010203
	mov r1, #0x4d
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02269E88 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl ov16_0226A98C
	ldr r0, _02269E8C ; =0x000A0B0C
	ldr r1, _02269E90 ; =0x000004E4
	str r0, [sp]
	mov r3, #2
	ldr r0, _02269E88 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r7, #0
	bl ov16_0226A98C
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02269E7C: .word 0x000004A2
_02269E80: .word 0x000004A3
_02269E84: .word 0x00010203
_02269E88: .word 0x00004E37
_02269E8C: .word 0x000A0B0C
_02269E90: .word 0x000004E4
	thumb_func_end ov16_02269DB0

	thumb_func_start ov16_02269E94
ov16_02269E94: ; 0x02269E94
	push {r4, r5, r6, lr}
	sub sp, #0x20
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _02269F58 ; =0x04001050
	mov r1, #2
	mov r2, #0xf
	mov r3, #0x1f
	bl sub_020BF55C
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	ldr r1, _02269F5C ; =0x000004EC
	bl sub_0200B1EC
	add r4, r0, #0
	mov r0, #5
	str r0, [sp]
	mov r0, #7
	mov r1, #0x2e
	mov r2, #1
	add r3, sp, #0x1c
	bl sub_02006F6C
	add r6, r0, #0
	ldr r0, [sp, #0x1c]
	mov r2, #2
	ldr r1, [r5, #0x58]
	add r0, #0xc
	lsl r2, r2, #0xa
	bl sub_020C4B68
	add r0, r6, #0
	bl sub_020181C4
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	mov r1, #4
	ldr r2, [r5, #0x58]
	add r6, r0, #0
	lsl r3, r1, #9
	bl sub_02019574
	add r0, r6, #0
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	mov r2, #2
	add r6, r0, #0
	ldr r1, [r5, #0x50]
	mov r0, #0
	lsl r2, r2, #0xa
	bl sub_020C4B4C
	mov r3, #2
	ldr r2, [r5, #0x50]
	add r0, r6, #0
	mov r1, #5
	lsl r3, r3, #0xa
	bl sub_02019574
	add r0, r6, #0
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, _02269F60 ; =0x00010203
	mov r1, #0x4d
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _02269F64 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0xb2
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r4, #0
	bl ov16_0226A98C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_02269F58: .word 0x04001050
_02269F5C: .word 0x000004EC
_02269F60: .word 0x00010203
_02269F64: .word 0x00004E37
	thumb_func_end ov16_02269E94

	thumb_func_start ov16_02269F68
ov16_02269F68: ; 0x02269F68
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0D0
	add r4, r0, #0
	ldr r1, _0226A034 ; =0x000004C1
	add r0, r6, #0
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	ldr r1, _0226A038 ; =0x000004C2
	add r0, r6, #0
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	mov r0, #0x64
	mov r1, #5
	bl sub_02023790
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #5
	bl sub_02023790
	add r7, r0, #0
	ldrh r2, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B630
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200C388
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0200C388
	ldr r0, _0226A03C ; =0x00010203
	mov r1, #0x4d
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _0226A040 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl ov16_0226A98C
	ldr r0, _0226A044 ; =0x000A0B0C
	ldr r1, _0226A048 ; =0x000004E4
	str r0, [sp]
	mov r3, #2
	ldr r0, _0226A040 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r7, #0
	bl ov16_0226A98C
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0226A034: .word 0x000004C1
_0226A038: .word 0x000004C2
_0226A03C: .word 0x00010203
_0226A040: .word 0x00004E37
_0226A044: .word 0x000A0B0C
_0226A048: .word 0x000004E4
	thumb_func_end ov16_02269F68

	thumb_func_start ov16_0226A04C
ov16_0226A04C: ; 0x0226A04C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E0D0
	add r4, r0, #0
	ldr r1, _0226A118 ; =0x000004BF
	add r0, r6, #0
	bl sub_0200B1EC
	mov r1, #0x13
	str r0, [sp, #0x1c]
	add r0, r6, #0
	lsl r1, r1, #6
	bl sub_0200B1EC
	str r0, [sp, #0x20]
	mov r0, #0x64
	mov r1, #5
	bl sub_02023790
	add r6, r0, #0
	mov r0, #0x64
	mov r1, #5
	bl sub_02023790
	add r7, r0, #0
	ldrh r2, [r5, #0x1c]
	add r0, r4, #0
	mov r1, #0
	bl sub_0200B630
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	add r1, r6, #0
	bl sub_0200C388
	ldr r2, [sp, #0x20]
	add r0, r4, #0
	add r1, r7, #0
	bl sub_0200C388
	ldr r0, _0226A11C ; =0x00010203
	mov r1, #0x4d
	str r0, [sp]
	mov r3, #2
	lsl r1, r1, #4
	ldr r0, _0226A120 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x44
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r6, #0
	bl ov16_0226A98C
	ldr r0, _0226A124 ; =0x000A0B0C
	ldr r1, _0226A128 ; =0x000004E4
	str r0, [sp]
	mov r3, #2
	ldr r0, _0226A120 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x80
	str r0, [sp, #0xc]
	mov r0, #0x8c
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	add r2, r7, #0
	bl ov16_0226A98C
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r0, [sp, #0x20]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	add r0, r7, #0
	bl sub_020237BC
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A118: .word 0x000004BF
_0226A11C: .word 0x00010203
_0226A120: .word 0x00004E37
_0226A124: .word 0x000A0B0C
_0226A128: .word 0x000004E4
	thumb_func_end ov16_0226A04C

	thumb_func_start ov16_0226A12C
ov16_0226A12C: ; 0x0226A12C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	add r7, r5, #0
	add r7, #0x1c
	add r0, r7, #0
	add r0, #0x21
	ldrb r1, [r0]
	ldr r0, _0226A2F0 ; =0x0000068C
	strb r1, [r5, r0]
	add r1, r7, #0
	add r1, #0x20
	ldrb r1, [r1]
	sub r0, r0, #2
	strb r1, [r5, r0]
	ldr r0, [r5, #0]
	bl ov16_0223E05C
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0]
	bl ov16_0223E0D0
	str r0, [sp, #0x1c]
	add r0, r5, #0
	add r1, sp, #0x40
	mov r2, #0
	bl ov16_0226B20C
	add r0, r5, #0
	bl ov16_0226A698
	add r0, r5, #0
	bl ov16_0226AAF8
	add r1, sp, #0x38
	ldr r0, [r5, #0]
	add r1, #2
	bl ov16_0223F87C
	ldr r0, [r5, #0]
	add r1, sp, #0x34
	bl ov16_0223F858
	mov r0, #0x18
	mov r1, #5
	bl sub_02023790
	str r0, [sp, #0x28]
	mov r0, #0x4d
	lsl r0, r0, #4
	add r0, r5, r0
	mov r4, #0
	str r0, [sp, #0x30]
	b _0226A2A4
_0226A198:
	add r1, r4, #2
	add r0, sp, #0x34
	ldrb r6, [r0, r1]
	lsl r0, r6, #3
	add r0, r7, r0
	ldrb r1, [r0, #1]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0226A292
	add r0, sp, #0x40
	ldrb r0, [r0, r4]
	cmp r0, #1
	bne _0226A292
	lsl r0, r1, #0x1e
	lsr r0, r0, #0x1e
	bne _0226A1C6
	ldr r0, [sp, #0x2c]
	ldr r1, _0226A2F4 ; =0x000003C2
	bl sub_0200B1EC
	str r0, [sp, #0x24]
	b _0226A1E2
_0226A1C6:
	cmp r0, #1
	bne _0226A1D6
	ldr r0, [sp, #0x2c]
	ldr r1, _0226A2F8 ; =0x000003C3
	bl sub_0200B1EC
	str r0, [sp, #0x24]
	b _0226A1E2
_0226A1D6:
	mov r1, #0xf1
	ldr r0, [sp, #0x2c]
	lsl r1, r1, #2
	bl sub_0200B1EC
	str r0, [sp, #0x24]
_0226A1E2:
	lsl r2, r6, #3
	ldrb r2, [r7, r2]
	ldr r0, [r5, #0]
	add r1, r6, #0
	bl ov16_0223DFAC
	str r0, [sp, #0x20]
	bl sub_02076B10
	add r2, r0, #0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl sub_0200B5CC
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x24]
	bl sub_0200C388
	mov r0, #1
	tst r0, r4
	beq _0226A212
	ldr r0, _0226A2FC ; =0x00010203
	b _0226A214
_0226A212:
	ldr r0, _0226A300 ; =0x00040506
_0226A214:
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	ldr r0, _0226A304 ; =0x00004E37
	ldr r1, _0226A308 ; =0x02270328
	str r0, [sp, #8]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	add r2, r4, #0
	mov r3, #2
	str r1, [sp, #0xc]
	ldr r1, _0226A308 ; =0x02270328
	add r0, r1, r0
	ldrh r0, [r0, #2]
	mov r1, #0x14
	mul r2, r1
	ldr r1, [sp, #0x30]
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	add r1, r1, r2
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x28]
	add r0, r5, #0
	bl ov16_0226A98C
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	cmp r4, #1
	beq _0226A25A
	cmp r4, #3
	beq _0226A276
	b _0226A2A2
_0226A25A:
	lsl r0, r6, #3
	add r6, r7, r0
	ldrh r0, [r6, #6]
	mov r3, #4
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldrb r0, [r6, #2]
	mov r2, #3
	str r0, [sp, #4]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	bl ov16_0226A7A4
	b _0226A2A2
_0226A276:
	lsl r0, r6, #3
	add r6, r7, r0
	ldrh r0, [r6, #6]
	mov r3, #4
	ldr r1, [sp, #0x20]
	str r0, [sp]
	ldrb r0, [r6, #2]
	mov r2, #5
	str r0, [sp, #4]
	ldrsh r3, [r6, r3]
	add r0, r5, #0
	bl ov16_0226A7A4
	b _0226A2A2
_0226A292:
	add r0, sp, #0x40
	ldrb r0, [r0, r4]
	cmp r0, #0
	bne _0226A2A2
	add r0, r5, #0
	add r1, r4, #0
	bl ov16_0226B0DC
_0226A2A2:
	add r4, r4, #1
_0226A2A4:
	cmp r4, #4
	bge _0226A2AA
	b _0226A198
_0226A2AA:
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	ldr r1, _0226A30C ; =0x000003A2
	bl sub_0200B1EC
	add r4, r0, #0
	ldr r0, _0226A310 ; =0x000A0B0C
	mov r3, #2
	str r0, [sp]
	ldr r0, _0226A304 ; =0x00004E37
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0226A314 ; =0x02270308
	add r2, r4, #0
	ldrh r1, [r0, #0x30]
	str r1, [sp, #0xc]
	ldrh r0, [r0, #0x32]
	mov r1, #0x52
	lsl r1, r1, #4
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r5, r1
	bl ov16_0226A98C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A2F0: .word 0x0000068C
_0226A2F4: .word 0x000003C2
_0226A2F8: .word 0x000003C3
_0226A2FC: .word 0x00010203
_0226A300: .word 0x00040506
_0226A304: .word 0x00004E37
_0226A308: .word 0x02270328
_0226A30C: .word 0x000003A2
_0226A310: .word 0x000A0B0C
_0226A314: .word 0x02270308
	thumb_func_end ov16_0226A12C

	thumb_func_start ov16_0226A318
ov16_0226A318: ; 0x0226A318
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0xff
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #1
	cmp r0, #5
	bhi _0226A340
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226A334: ; jump table
	.short _0226A340 - _0226A334 - 2 ; case 0
	.short _0226A340 - _0226A334 - 2 ; case 1
	.short _0226A344 - _0226A334 - 2 ; case 2
	.short _0226A368 - _0226A334 - 2 ; case 3
	.short _0226A36E - _0226A334 - 2 ; case 4
	.short _0226A374 - _0226A334 - 2 ; case 5
_0226A340:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226A344:
	ldr r0, _0226A3E0 ; =0x0000068A
	mov r7, #0
	ldrb r0, [r4, r0]
	add r6, r7, #0
	cmp r0, #0
	beq _0226A35A
	cmp r0, #2
	beq _0226A35E
	cmp r0, #4
	beq _0226A35E
	b _0226A378
_0226A35A:
	str r0, [sp]
	b _0226A378
_0226A35E:
	ldr r0, _0226A3E0 ; =0x0000068A
	ldrb r0, [r4, r0]
	sub r0, r0, #2
	str r0, [sp]
	b _0226A378
_0226A368:
	mov r7, #1
	add r6, r7, #0
	b _0226A378
_0226A36E:
	mov r7, #2
	mov r6, #1
	b _0226A378
_0226A374:
	mov r7, #3
	mov r6, #1
_0226A378:
	add r0, r4, #0
	add r1, r2, #0
	bl ov16_0226B318
	ldr r0, _0226A3E4 ; =ov16_0226B390
	add r1, r4, #0
	bl ov16_0226B2BC
	ldr r0, _0226A3E8 ; =0x022703A4
	sub r2, r5, #1
	mov r1, #6
	mul r1, r2
	add r0, r0, r1
	mov r1, #0x6a
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _0226A3EC ; =0x022702F4
	lsl r2, r2, #2
	add r3, r0, r2
	add r0, r1, #4
	str r3, [r4, r0]
	add r0, r1, #0
	mov r3, #1
	add r0, #0xc
	strb r3, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r5, [r4, r0]
	add r0, r1, #0
	add r0, #0xd
	strb r7, [r4, r0]
	add r0, r1, #0
	ldr r7, [sp]
	add r0, #0xe
	strb r7, [r4, r0]
	add r0, r1, #0
	add r0, #0xf
	strb r6, [r4, r0]
	ldr r0, _0226A3F0 ; =0x02270294
	add r6, r0, r2
	ldrh r2, [r0, r2]
	add r0, r1, #0
	add r0, #0x12
	strh r2, [r4, r0]
	add r0, r1, #0
	ldrh r2, [r6, #2]
	add r0, #0x14
	add r1, #0x10
	strh r2, [r4, r0]
	strb r3, [r4, r1]
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A3E0: .word 0x0000068A
_0226A3E4: .word ov16_0226B390
_0226A3E8: .word 0x022703A4
_0226A3EC: .word 0x022702F4
_0226A3F0: .word 0x02270294
	thumb_func_end ov16_0226A318

	thumb_func_start ov16_0226A3F4
ov16_0226A3F4: ; 0x0226A3F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	add r1, r2, #0
	cmp r4, r0
	bne _0226A408
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226A408:
	add r2, r5, #0
	add r2, #0x1c
	cmp r4, #1
	blt _0226A41E
	cmp r4, #4
	bgt _0226A41E
	sub r3, r4, #1
	lsl r3, r3, #1
	ldrh r2, [r2, r3]
	cmp r2, #0
	beq _0226A48C
_0226A41E:
	sub r0, r4, #1
	cmp r4, #4
	bgt _0226A440
	add r2, r4, #1
	bmi _0226A444
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0226A434: ; jump table
	.short _0226A444 - _0226A434 - 2 ; case 0
	.short _0226A444 - _0226A434 - 2 ; case 1
	.short _0226A44A - _0226A434 - 2 ; case 2
	.short _0226A44A - _0226A434 - 2 ; case 3
	.short _0226A44A - _0226A434 - 2 ; case 4
	.short _0226A44A - _0226A434 - 2 ; case 5
_0226A440:
	cmp r4, #0xff
	beq _0226A45A
_0226A444:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0226A44A:
	mov r2, #6
	mul r2, r0
	ldr r3, _0226A490 ; =0x022703F4
	lsl r0, r0, #2
	add r7, r3, r2
	ldr r2, _0226A494 ; =0x02270378
	add r6, r2, r0
	b _0226A45E
_0226A45A:
	ldr r7, _0226A498 ; =0x0227040C
	ldr r6, _0226A49C ; =0x02270388
_0226A45E:
	add r0, r5, #0
	bl ov16_0226B318
	ldr r0, _0226A4A0 ; =ov16_0226B4E0
	add r1, r5, #0
	bl ov16_0226B2BC
	mov r1, #0x6a
	lsl r1, r1, #4
	str r7, [r5, r1]
	add r0, r1, #4
	str r6, [r5, r0]
	add r0, r1, #0
	mov r2, #3
	add r0, #0xc
	strb r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	str r4, [r5, r0]
	mov r0, #1
	add r1, #0x10
	strb r0, [r5, r1]
	add r0, r4, #0
_0226A48C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226A490: .word 0x022703F4
_0226A494: .word 0x02270378
_0226A498: .word 0x0227040C
_0226A49C: .word 0x02270388
_0226A4A0: .word ov16_0226B4E0
	thumb_func_end ov16_0226A3F4

	thumb_func_start ov16_0226A4A4
ov16_0226A4A4: ; 0x0226A4A4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	beq _0226A4BA
	cmp r4, #1
	beq _0226A4BE
	cmp r4, #0xff
	beq _0226A4C2
_0226A4BA:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_0226A4BE:
	mov r6, #0
	b _0226A4C4
_0226A4C2:
	mov r6, #1
_0226A4C4:
	add r0, r5, #0
	add r1, r2, #0
	bl ov16_0226B318
	ldr r0, _0226A510 ; =ov16_0226B390
	add r1, r5, #0
	bl ov16_0226B2BC
	cmp r4, #1
	bne _0226A4E4
	mov r0, #0x6a
	ldr r1, _0226A514 ; =0x02270246
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r1, _0226A518 ; =0x02270220
	b _0226A4EE
_0226A4E4:
	mov r0, #0x6a
	ldr r1, _0226A51C ; =0x02270240
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r1, _0226A520 ; =0x0227021C
_0226A4EE:
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _0226A524 ; =0x000006AC
	mov r1, #6
	strb r1, [r5, r0]
	sub r1, r0, #4
	str r4, [r5, r1]
	add r1, r0, #1
	strb r6, [r5, r1]
	add r1, r0, #3
	mov r2, #3
	strb r2, [r5, r1]
	mov r1, #1
	add r0, r0, #4
	strb r1, [r5, r0]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0226A510: .word ov16_0226B390
_0226A514: .word 0x02270246
_0226A518: .word 0x02270220
_0226A51C: .word 0x02270240
_0226A520: .word 0x0227021C
_0226A524: .word 0x000006AC
	thumb_func_end ov16_0226A4A4

	thumb_func_start ov16_0226A528
ov16_0226A528: ; 0x0226A528
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	add r1, sp, #0
	mov r2, #1
	add r4, r0, #0
	bl ov16_0226B20C
	cmp r5, #4
	bgt _0226A558
	add r0, r5, #1
	bmi _0226A55C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226A54C: ; jump table
	.short _0226A55C - _0226A54C - 2 ; case 0
	.short _0226A55C - _0226A54C - 2 ; case 1
	.short _0226A562 - _0226A54C - 2 ; case 2
	.short _0226A572 - _0226A54C - 2 ; case 3
	.short _0226A582 - _0226A54C - 2 ; case 4
	.short _0226A592 - _0226A54C - 2 ; case 5
_0226A558:
	cmp r5, #0xff
	beq _0226A5A2
_0226A55C:
	add sp, #4
	add r0, r5, #0
	pop {r3, r4, r5, r6, pc}
_0226A562:
	add r0, sp, #0
	ldrb r0, [r0]
	cmp r0, #0
	bne _0226A5E8
	mov r0, #0
	add sp, #4
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_0226A572:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0226A5E8
	mov r0, #0
	add sp, #4
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_0226A582:
	add r0, sp, #0
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _0226A5E8
	mov r0, #0
	add sp, #4
	mvn r0, r0
	pop {r3, r4, r5, r6, pc}
_0226A592:
	.byte 0x00, 0xA8, 0xC0, 0x78, 0x00, 0x28, 0x26, 0xD1, 0x00, 0x20, 0x01, 0xB0, 0xC0, 0x43
	.byte 0x78, 0xBD
_0226A5A2:
	add r0, r4, #0
	mov r1, #4
	bl ov16_0226B318
	ldr r0, _0226A61C ; =ov16_0226B390
	add r1, r4, #0
	bl ov16_0226B2BC
	mov r1, #0x6a
	ldr r0, _0226A620 ; =0x022703EC
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r2, _0226A624 ; =0x0227034C
	add r0, r1, #4
	str r2, [r4, r0]
	add r0, r1, #0
	mov r2, #4
	add r0, #0xc
	strb r2, [r4, r0]
	add r0, r1, #0
	add r0, #8
	str r5, [r4, r0]
	add r0, r1, #0
	add r0, #0xd
	strb r2, [r4, r0]
	add r0, r1, #0
	mov r2, #3
	add r0, #0xf
	strb r2, [r4, r0]
	mov r0, #1
	add r1, #0x10
	strb r0, [r4, r1]
	add sp, #4
	add r0, r5, #0
	pop {r3, r4, r5, r6, pc}
_0226A5E8:
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldr r2, _0226A628 ; =0x000002FF
	add r6, r0, #0
	mov r1, #5
	bl sub_02019EE0
	add r0, r6, #0
	mov r1, #5
	bl sub_0201C3C0
	add r0, r4, #0
	add r1, r5, #0
	bl ov16_0226B314
	ldr r0, _0226A62C ; =ov16_0226B780
	add r1, r4, #0
	bl ov16_0226B2BC
	ldr r0, _0226A630 ; =0x000006BC
	str r5, [r4, r0]
	add r0, r5, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0226A61C: .word ov16_0226B390
_0226A620: .word 0x022703EC
_0226A624: .word 0x0227034C
_0226A628: .word 0x000002FF
_0226A62C: .word ov16_0226B780
_0226A630: .word 0x000006BC
	thumb_func_end ov16_0226A528

	thumb_func_start ov16_0226A634
ov16_0226A634: ; 0x0226A634
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r1, #0
	mvn r1, r1
	add r5, r0, #0
	cmp r4, r1
	beq _0226A646
	cmp r4, #1
	beq _0226A64A
_0226A646:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_0226A64A:
	add r1, r2, #0
	bl ov16_0226B318
	ldr r0, _0226A68C ; =ov16_0226B390
	add r1, r5, #0
	bl ov16_0226B2BC
	mov r1, #0x6a
	ldr r0, _0226A690 ; =0x022701F4
	lsl r1, r1, #4
	str r0, [r5, r1]
	ldr r2, _0226A694 ; =0x022701D0
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #6
	add r0, #0xc
	strb r2, [r5, r0]
	add r0, r1, #0
	add r0, #8
	str r4, [r5, r0]
	add r0, r1, #0
	mov r3, #0
	add r0, #0xd
	strb r3, [r5, r0]
	add r0, r1, #0
	mov r2, #3
	add r0, #0xf
	strb r2, [r5, r0]
	add r1, #0x10
	strb r3, [r5, r1]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226A68C: .word ov16_0226B390
_0226A690: .word 0x022701F4
_0226A694: .word 0x022701D0
	thumb_func_end ov16_0226A634

	thumb_func_start ov16_0226A698
ov16_0226A698: ; 0x0226A698
	push {r4, r5, r6, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E010
	add r4, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E018
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E064
	add r5, r0, #0
	bl sub_02079FD0
	mov r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0226A710 ; =0x00004E36
	add r2, r4, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r3, r6, #0
	bl sub_0200CD7C
	bl sub_02079FD8
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226A714 ; =0x00004E35
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0226A714 ; =0x00004E35
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x13
	bl sub_0200CE3C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0226A710: .word 0x00004E36
_0226A714: .word 0x00004E35
	thumb_func_end ov16_0226A698

	thumb_func_start ov16_0226A718
ov16_0226A718: ; 0x0226A718
	push {r4, lr}
	ldr r0, [r0, #0]
	bl ov16_0223E018
	ldr r1, _0226A754 ; =0x00004E44
	add r4, r0, #0
	bl sub_0200D070
	ldr r1, _0226A758 ; =0x00004E45
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0226A75C ; =0x00004E46
	add r0, r4, #0
	bl sub_0200D070
	ldr r1, _0226A760 ; =0x00004E35
	add r0, r4, #0
	bl sub_0200D090
	ldr r1, _0226A760 ; =0x00004E35
	add r0, r4, #0
	bl sub_0200D0A0
	ldr r1, _0226A764 ; =0x00004E36
	add r0, r4, #0
	bl sub_0200D080
	pop {r4, pc}
	nop
_0226A754: .word 0x00004E44
_0226A758: .word 0x00004E45
_0226A75C: .word 0x00004E46
_0226A760: .word 0x00004E35
_0226A764: .word 0x00004E36
	thumb_func_end ov16_0226A718

	thumb_func_start ov16_0226A768
ov16_0226A768: ; 0x0226A768
	push {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	add r5, r0, #0
	add r6, r4, #0
	add r7, r4, #0
_0226A772:
	ldr r0, _0226A79C ; =0x00000628
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0226A782
	bl sub_0200D0F4
	ldr r0, _0226A79C ; =0x00000628
	str r6, [r5, r0]
_0226A782:
	ldr r0, _0226A7A0 ; =0x00000638
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0226A792
	bl sub_0200DA58
	ldr r0, _0226A7A0 ; =0x00000638
	str r7, [r5, r0]
_0226A792:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0226A772
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226A79C: .word 0x00000628
_0226A7A0: .word 0x00000638
	thumb_func_end ov16_0226A768

	thumb_func_start ov16_0226A7A4
ov16_0226A7A4: ; 0x0226A7A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r6, r2, #0
	add r4, r0, #0
	str r1, [sp, #0xc]
	str r3, [sp, #0x10]
	cmp r6, #2
	blt _0226A7B8
	sub r5, r6, #2
	b _0226A7BA
_0226A7B8:
	add r5, r6, #0
_0226A7BA:
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0226A904 ; =0x00000628
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226A7CA
	bl sub_02022974
_0226A7CA:
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0226A908 ; =0x00000638
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226A7DA
	bl sub_02022974
_0226A7DA:
	cmp r6, #5
	bhi _0226A802
	add r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226A7EA: ; jump table
	.short _0226A7F6 - _0226A7EA - 2 ; case 0
	.short _0226A802 - _0226A7EA - 2 ; case 1
	.short _0226A7F6 - _0226A7EA - 2 ; case 2
	.short _0226A7FA - _0226A7EA - 2 ; case 3
	.short _0226A7F6 - _0226A7EA - 2 ; case 4
	.short _0226A7FE - _0226A7EA - 2 ; case 5
_0226A7F6:
	ldr r6, _0226A90C ; =0x00004E44
	b _0226A80C
_0226A7FA:
	ldr r6, _0226A910 ; =0x00004E45
	b _0226A80C
_0226A7FE:
	ldr r6, _0226A914 ; =0x00004E46
	b _0226A80C
_0226A802:
	bl sub_02022974
	add sp, #0x50
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226A80C:
	ldr r0, [r4, #0]
	bl ov16_0223E010
	str r0, [sp, #0x18]
	ldr r0, [r4, #0]
	bl ov16_0223E018
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl sub_02079D80
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	mov r2, #0x13
	str r6, [sp, #8]
	bl sub_0200CBDC
	ldr r3, _0226A918 ; =0x022704B0
	add r2, sp, #0x1c
	mov r7, #6
_0226A83E:
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r7, r7, #1
	bne _0226A83E
	ldr r0, [r3, #0]
	lsl r3, r5, #2
	str r0, [r2, #0]
	ldr r2, _0226A91C ; =0x02270304
	str r6, [sp, #0x30]
	ldrh r1, [r2, r3]
	add r0, sp, #0x1c
	strh r1, [r0]
	add r1, r2, r3
	ldrh r1, [r1, #2]
	add r2, sp, #0x1c
	strh r1, [r0, #2]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	bl sub_0200CE6C
	add r3, sp, #0x1c
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	mov r3, #0x11
	lsl r3, r3, #0x10
	add r6, r0, #0
	bl sub_0200D500
	ldr r0, [sp, #0xc]
	bl sub_02079FC4
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl sub_02021F24
	ldr r0, [sp, #0x10]
	mov r7, #0
	cmp r0, #0
	beq _0226A8DC
	ldr r0, [sp, #0x6c]
	cmp r0, #2
	beq _0226A8DC
	cmp r0, #3
	beq _0226A8DC
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x68]
	lsl r0, r0, #0x10
	lsl r1, r1, #0x10
	lsr r0, r0, #0x10
	lsr r1, r1, #0x10
	mov r2, #0x30
	bl sub_0208C104
	cmp r0, #4
	bhi _0226A8D4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226A8BC: ; jump table
	.short _0226A8D4 - _0226A8BC - 2 ; case 0
	.short _0226A8D2 - _0226A8BC - 2 ; case 1
	.short _0226A8CE - _0226A8BC - 2 ; case 2
	.short _0226A8CA - _0226A8BC - 2 ; case 3
	.short _0226A8C6 - _0226A8BC - 2 ; case 4
_0226A8C6:
	mov r7, #1
	b _0226A8D4
_0226A8CA:
	mov r7, #2
	b _0226A8D4
_0226A8CE:
	mov r7, #3
	b _0226A8D4
_0226A8D2:
	mov r7, #4
_0226A8D4:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_0200D364
_0226A8DC:
	add r0, r6, #0
	bl sub_0200D330
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0226A904 ; =0x00000628
	ldr r2, _0226A920 ; =0x00000514
	str r6, [r1, r0]
	ldr r0, _0226A924 ; =ov16_0226A928
	add r1, r6, #0
	bl sub_0200D9E8
	lsl r1, r5, #2
	add r2, r4, r1
	ldr r1, _0226A908 ; =0x00000638
	str r0, [r2, r1]
	add r0, r6, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226A904: .word 0x00000628
_0226A908: .word 0x00000638
_0226A90C: .word 0x00004E44
_0226A910: .word 0x00004E45
_0226A914: .word 0x00004E46
_0226A918: .word 0x022704B0
_0226A91C: .word 0x02270304
_0226A920: .word 0x00000514
_0226A924: .word ov16_0226A928
	thumb_func_end ov16_0226A7A4

	thumb_func_start ov16_0226A928
ov16_0226A928: ; 0x0226A928
	ldr r3, _0226A930 ; =sub_0200D330
	add r0, r1, #0
	bx r3
	nop
_0226A930: .word sub_0200D330
	thumb_func_end ov16_0226A928

	thumb_func_start ov16_0226A934
ov16_0226A934: ; 0x0226A934
	cmp r0, #3
	bhi _0226A94C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226A944: ; jump table
	.short _0226A94C - _0226A944 - 2 ; case 0
	.short _0226A950 - _0226A944 - 2 ; case 1
	.short _0226A954 - _0226A944 - 2 ; case 2
	.short _0226A958 - _0226A944 - 2 ; case 3
_0226A94C:
	mov r0, #0
	bx lr
_0226A950:
	mov r0, #1
	bx lr
_0226A954:
	mov r0, #3
	bx lr
_0226A958:
	mov r0, #2
	bx lr
	thumb_func_end ov16_0226A934

	thumb_func_start ov16_0226A95C
ov16_0226A95C: ; 0x0226A95C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r2, #0
	add r0, r1, #0
	add r1, r4, #0
	mov r2, #0
	add r7, r3, #0
	bl sub_02002D7C
	add r4, r0, #0
	asr r1, r4, #2
	lsr r1, r1, #0x1d
	add r1, r4, r1
	asr r5, r1, #3
	mov r1, #8
	bl sub_020BD140
	cmp r0, #0
	beq _0226A984
	add r5, r5, #1
_0226A984:
	str r4, [r6, #0]
	str r5, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov16_0226A95C

	thumb_func_start ov16_0226A98C
ov16_0226A98C: ; 0x0226A98C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	add r5, r1, #0
	add r7, r0, #0
	ldr r0, [r5, #0]
	str r2, [sp, #0x18]
	str r3, [sp, #0x1c]
	ldr r6, [sp, #0x9c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _0226A9A6
	bl sub_02022974
_0226A9A6:
	ldr r0, [r7, #0]
	bl ov16_0223E018
	str r0, [sp, #0x20]
	ldr r0, [r7, #0]
	bl ov16_0223DF00
	str r0, [sp, #0x24]
	cmp r4, #0
	bne _0226A9C8
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl ov16_0226A95C
	b _0226A9D0
_0226A9C8:
	ldrh r0, [r4, #0x12]
	str r0, [sp, #0x2c]
	ldrh r0, [r4, #0x10]
	str r0, [sp, #0x28]
_0226A9D0:
	cmp r4, #0
	bne _0226AA0E
	add r0, sp, #0x3c
	bl sub_0201A7A0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x24]
	lsl r2, r2, #0x18
	add r1, sp, #0x3c
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x90]
	ldr r1, [sp, #0x1c]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r2, [sp, #0x18]
	add r0, sp, #0x3c
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	b _0226AA1A
_0226AA0E:
	add r3, r4, #0
	add r2, sp, #0x3c
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
_0226AA1A:
	add r0, sp, #0x3c
	mov r1, #2
	mov r2, #5
	bl sub_02012898
	mov r1, #1
	mov r2, #2
	add r3, sp, #0x30
	bl sub_0201ED94
	ldr r0, [sp, #0xa4]
	cmp r0, #1
	bne _0226AA3E
	ldr r1, [sp, #0x2c]
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r0, r0, #1
	sub r6, r6, r0
_0226AA3E:
	ldr r0, _0226AABC ; =0x000004CC
	ldr r0, [r7, r0]
	str r0, [sp, #0x4c]
	add r0, sp, #0x3c
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x20]
	bl sub_0200D9B0
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x98]
	bl sub_0200D04C
	str r0, [sp, #0x58]
	mov r0, #0
	ldr r1, [sp, #0x34]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x6c]
	mov r0, #0x64
	str r1, [sp, #0x60]
	mov r1, #0x42
	str r0, [sp, #0x70]
	mov r0, #2
	str r0, [sp, #0x74]
	mov r0, #5
	str r0, [sp, #0x78]
	ldr r2, [sp, #0xa0]
	lsl r1, r1, #2
	add r1, r2, r1
	add r0, sp, #0x4c
	str r6, [sp, #0x64]
	str r1, [sp, #0x68]
	bl sub_020127E8
	ldr r1, [sp, #0x94]
	add r7, r0, #0
	bl sub_02012AC0
	mov r2, #0x42
	ldr r3, [sp, #0xa0]
	lsl r2, r2, #2
	add r0, r7, #0
	add r1, r6, #0
	add r2, r3, r2
	bl sub_020128C4
	cmp r4, #0
	bne _0226AAA4
	add r0, sp, #0x3c
	bl sub_0201A8FC
_0226AAA4:
	str r7, [r5, #0]
	add r3, sp, #0x30
	ldmia r3!, {r0, r1}
	add r2, r5, #4
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x2c]
	strh r0, [r5, #0x10]
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_0226AABC: .word 0x000004CC
	thumb_func_end ov16_0226A98C

	thumb_func_start ov16_0226AAC0
ov16_0226AAC0: ; 0x0226AAC0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _0226AAF4 ; =0x000004D4
	mov r6, #0
	add r4, r5, r0
	add r7, r6, #0
_0226AACC:
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0226AAE6
	bl sub_02012870
	add r0, r4, #0
	bl sub_0201EE28
	mov r0, #0x4d
	lsl r0, r0, #4
	str r7, [r5, r0]
_0226AAE6:
	add r6, r6, #1
	add r5, #0x14
	add r4, #0x14
	cmp r6, #0xd
	blt _0226AACC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226AAF4: .word 0x000004D4
	thumb_func_end ov16_0226AAC0

	thumb_func_start ov16_0226AAF8
ov16_0226AAF8: ; 0x0226AAF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, r0, #0
	ldr r0, [r7, #0]
	bl ov16_0223DF00
	mov r1, #5
	bl sub_02019FE4
	add r4, r0, #0
	add r0, r7, #0
	add r1, sp, #4
	mov r2, #0
	bl ov16_0226B20C
	add r0, sp, #0
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _0226AB72
	add r0, r7, #0
	mov r1, #1
	add r2, sp, #0
	mov r3, #0
	bl ov16_0226B264
	add r0, sp, #0
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0226AB56
	mov r5, #0xc
	mov r0, #0xa9
	lsl r6, r5, #5
	lsl r0, r0, #2
	mov r2, #0xf
_0226AB3C:
	lsl r1, r6, #1
	add r1, r4, r1
	add r3, r2, #0
	add r1, #0x1e
_0226AB44:
	add r3, r3, #1
	strh r0, [r1]
	add r1, r1, #2
	cmp r3, #0x10
	ble _0226AB44
	add r5, r5, #1
	add r6, #0x20
	cmp r5, #0x10
	ble _0226AB3C
_0226AB56:
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #1
	bne _0226AB72
	mov r0, #0xa1
	lsl r0, r0, #2
	add r1, r4, r0
	mov r2, #2
	add r0, #0x20
_0226AB68:
	add r2, r2, #1
	strh r0, [r1]
	add r1, r1, #2
	cmp r2, #0xc
	ble _0226AB68
_0226AB72:
	add r0, sp, #0
	ldrb r0, [r0, #5]
	cmp r0, #1
	bne _0226ABCC
	add r0, r7, #0
	mov r1, #2
	add r2, sp, #0
	mov r3, #0
	bl ov16_0226B264
	add r0, sp, #0
	ldrb r0, [r0, #2]
	cmp r0, #1
	bne _0226ABA0
	ldr r0, _0226ABD0 ; =0x000002A6
	mov r2, #0x13
	add r1, r4, r0
	sub r0, r0, #2
_0226AB96:
	add r2, r2, #1
	strh r0, [r1]
	add r1, r1, #2
	cmp r2, #0x1d
	ble _0226AB96
_0226ABA0:
	add r0, sp, #0
	ldrb r0, [r0, #3]
	cmp r0, #1
	bne _0226ABCC
	mov r0, #0xa9
	mov r5, #3
	mov r3, #0x60
	lsl r0, r0, #2
	mov r2, #0xf
_0226ABB2:
	lsl r1, r3, #1
	add r1, r4, r1
	add r6, r2, #0
	add r1, #0x1e
_0226ABBA:
	add r6, r6, #1
	strh r0, [r1]
	add r1, r1, #2
	cmp r6, #0x10
	ble _0226ABBA
	add r5, r5, #1
	add r3, #0x20
	cmp r5, #7
	ble _0226ABB2
_0226ABCC:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226ABD0: .word 0x000002A6
	thumb_func_end ov16_0226AAF8

	thumb_func_start ov16_0226ABD4
ov16_0226ABD4: ; 0x0226ABD4
	cmp r1, #2
	blt _0226ABDA
	sub r1, r1, #2
_0226ABDA:
	mov r2, #0x46
	lsl r2, r2, #2
	add r0, #0x6c
	mul r2, r1
	add r0, r0, r2
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0226ABD4

	thumb_func_start ov16_0226ABE8
ov16_0226ABE8: ; 0x0226ABE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #0x4d
	str r0, [sp, #0x10]
	add r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [sp]
	lsl r1, r1, #2
	str r0, [sp, #0xc]
	add r0, #0xe4
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #8]
_0226AC0C:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp]
	ldr r7, [sp, #0x10]
	ldr r6, [sp, #0xc]
	ldr r5, [sp, #8]
	str r0, [sp, #4]
	add r4, r0, #0
_0226AC1C:
	ldr r0, [sp, #4]
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0226AC36
	add r0, r7, #0
	bl sub_0201A8FC
_0226AC36:
	add r0, r4, #0
	add r0, #0xf0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0226AC46
	add r0, r6, #0
	bl sub_0201A8FC
_0226AC46:
	mov r0, #5
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0226AC56
	add r0, r5, #0
	bl sub_0201A8FC
_0226AC56:
	ldr r0, [sp, #4]
	add r4, #0x14
	add r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	add r7, #0x14
	add r0, r0, #1
	add r6, #0x14
	add r5, #0x14
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0226AC1C
	mov r0, #0x46
	ldr r1, [sp]
	lsl r0, r0, #2
	add r1, r1, r0
	str r1, [sp]
	ldr r1, [sp, #0x10]
	add r1, r1, r0
	str r1, [sp, #0x10]
	ldr r1, [sp, #0xc]
	add r1, r1, r0
	str r1, [sp, #0xc]
	ldr r1, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0226AC0C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov16_0226ABE8

	thumb_func_start ov16_0226AC98
ov16_0226AC98: ; 0x0226AC98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	add r7, r0, #0
	ldr r0, [r7, #0]
	add r5, r1, #0
	str r2, [sp, #8]
	bl ov16_0223E05C
	add r4, r0, #0
	add r0, r7, #0
	add r1, r5, #0
	bl ov16_0226ABD4
	str r0, [sp, #0x38]
	mov r0, #6
	bl sub_0208C098
	str r0, [sp, #0xc]
	ldr r1, _0226AE94 ; =0x000003AA
	add r0, r4, #0
	bl sub_0200B1EC
	str r0, [sp, #0x28]
	ldr r0, [r7, #0]
	bl ov16_0223E0D0
	str r0, [sp, #0x24]
	mov r0, #0x10
	mov r1, #5
	bl sub_02023790
	str r0, [sp, #0x30]
	ldr r1, _0226AE98 ; =0x000003A9
	add r0, r4, #0
	bl sub_0200B1EC
	ldr r4, [sp, #0x38]
	str r0, [sp, #0x2c]
	mov r0, #0
	str r0, [sp, #0x34]
	add r0, r4, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	add r0, #0x28
	str r0, [sp, #0x18]
	add r0, r4, #0
	str r0, [sp, #0x14]
	add r0, #0x78
	str r0, [sp, #0x14]
	add r0, r4, #0
	str r0, [sp, #0x10]
	add r0, #0xc8
	ldr r5, [sp, #8]
	add r6, r4, #0
	str r0, [sp, #0x10]
_0226AD06:
	ldrh r0, [r5]
	ldrh r1, [r4]
	cmp r0, r1
	beq _0226AD4C
	cmp r0, #0
	beq _0226AD4C
	mov r1, #3
	bl sub_020790C4
	str r0, [sp, #0x3c]
	bl sub_0207C944
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	bl sub_0207C908
	add r1, r0, #0
	mov r0, #5
	str r0, [sp]
	ldr r0, [sp, #0x40]
	mov r2, #1
	add r3, sp, #0x4c
	bl sub_02006F50
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x4c]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0x18]
	ldr r2, [sp, #0xc]
	bl sub_020C4B68
	ldr r0, [sp, #0x44]
	bl sub_020181C4
_0226AD4C:
	ldr r0, [r6, #0x34]
	cmp r0, #0
	beq _0226AD5E
	ldrh r1, [r5]
	ldrh r0, [r4]
	cmp r1, r0
	beq _0226AD7E
	cmp r1, #0
	beq _0226AD7E
_0226AD5E:
	ldrh r0, [r5]
	mov r1, #5
	bl sub_0200B2EC
	str r0, [sp, #0x48]
	ldr r0, _0226AE9C ; =0x00070809
	ldr r1, [sp, #0x48]
	str r0, [sp]
	ldr r3, [sp, #0x18]
	add r0, r7, #0
	mov r2, #2
	bl ov16_0226AEA0
	ldr r0, [sp, #0x48]
	bl sub_020237BC
_0226AD7E:
	add r0, r6, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0226ADAE
	add r0, r6, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0226ADAE
	ldrh r1, [r5]
	cmp r1, #0
	bne _0226ADAE
	ldrh r0, [r4]
	cmp r1, r0
	bne _0226ADAE
	ldrh r1, [r5, #8]
	ldrh r0, [r4, #8]
	cmp r1, r0
	bne _0226ADAE
	ldrh r1, [r5, #0x10]
	ldrh r0, [r4, #0x10]
	cmp r1, r0
	beq _0226AE3E
_0226ADAE:
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r2, [r5, #8]
	ldr r0, [sp, #0x24]
	mov r1, #0
	mov r3, #2
	bl sub_0200B60C
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldrh r2, [r5, #0x10]
	ldr r0, [sp, #0x24]
	mov r1, #1
	mov r3, #2
	bl sub_0200B60C
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x30]
	ldr r2, [sp, #0x2c]
	bl sub_0200C388
	ldrh r0, [r5, #8]
	ldrh r1, [r5, #0x10]
	bl ov16_0226B924
	str r0, [sp, #0x20]
	add r0, r6, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0226AE04
	ldrh r1, [r5]
	ldrh r0, [r4]
	cmp r1, r0
	bne _0226AE04
	ldrh r1, [r5, #8]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0226AE14
_0226AE04:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	mov r2, #0
	bl ov16_0226AEA0
_0226AE14:
	add r0, r6, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0226AE2E
	ldrh r1, [r5]
	ldrh r0, [r4]
	cmp r1, r0
	bne _0226AE2E
	ldrh r1, [r5, #8]
	ldrh r0, [r4, #8]
	cmp r1, r0
	beq _0226AE3E
_0226AE2E:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x28]
	str r0, [sp]
	ldr r3, [sp, #0x10]
	add r0, r7, #0
	mov r2, #0
	bl ov16_0226AEA0
_0226AE3E:
	ldr r0, [sp, #0x1c]
	add r4, r4, #2
	add r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r5, r5, #2
	add r0, #0x14
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r6, #0x14
	add r0, #0x14
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x14
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #4
	bge _0226AE68
	b _0226AD06
_0226AE68:
	ldr r0, [sp, #0x28]
	bl sub_020237BC
	ldr r0, [sp, #0x2c]
	bl sub_020237BC
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	mov r0, #0xc
_0226AE7C:
	ldr r1, [sp, #8]
	ldrh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #8]
	ldr r1, [sp, #0x38]
	strh r2, [r1]
	add r1, r1, #2
	str r1, [sp, #0x38]
	sub r0, r0, #1
	bne _0226AE7C
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226AE94: .word 0x000003AA
_0226AE98: .word 0x000003A9
_0226AE9C: .word 0x00070809
	thumb_func_end ov16_0226AC98

	thumb_func_start ov16_0226AEA0
ov16_0226AEA0: ; 0x0226AEA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r7, r2, #0
	add r6, r1, #0
	add r5, r0, #0
	add r4, r3, #0
	add r0, r6, #0
	add r1, r7, #0
	add r2, sp, #0x1c
	add r3, sp, #0x18
	bl ov16_0226A95C
	ldr r0, [sp, #0x1c]
	strh r0, [r4, #0x12]
	ldr r0, [sp, #0x18]
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0226AECC
	add r0, r4, #0
	bl sub_0201A8FC
_0226AECC:
	add r0, r4, #0
	bl sub_0201A7A0
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	ldr r2, [sp, #0x18]
	add r1, r4, #0
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	mov r3, #2
	bl sub_0201A870
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	add r1, r7, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	add r0, r4, #0
	add r2, r6, #0
	str r3, [sp, #0x14]
	bl sub_0201D7E0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0226AEA0

	thumb_func_start ov16_0226AF0C
ov16_0226AF0C: ; 0x0226AF0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r5, r0, #0
	str r0, [sp, #4]
	add r0, #0x1c
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	bl ov16_0223E010
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	bl ov16_0223E018
	ldr r1, _0226AFE0 ; =0x0000068A
	str r0, [sp, #8]
	ldrb r1, [r5, r1]
	add r0, r5, #0
	bl ov16_0226ABD4
	ldr r4, _0226AFE4 ; =0x0227047C
	str r0, [sp]
	add r3, sp, #0x10
	mov r2, #6
_0226AF3A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0226AF3A
	ldr r0, [r4, #0]
	mov r4, #0
	str r0, [r3, #0]
	add r6, sp, #0x10
	b _0226AFD8
_0226AF4C:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0226AFE8 ; =0x00000608
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226AF5C
	bl sub_02022974
_0226AF5C:
	ldr r0, [sp, #4]
	lsl r1, r4, #1
	ldrh r0, [r0, r1]
	cmp r0, #0
	beq _0226AFD6
	mov r1, #3
	bl sub_020790C4
	add r2, r0, #0
	ldr r0, _0226AFEC ; =0x00004E39
	ldr r1, _0226AFF0 ; =0x022702B4
	add r0, r4, r0
	str r0, [sp, #0x24]
	lsl r0, r4, #2
	ldrh r1, [r1, r0]
	add r3, sp, #0x10
	strh r1, [r6]
	ldr r1, _0226AFF0 ; =0x022702B4
	add r0, r1, r0
	ldrh r0, [r0, #2]
	ldr r1, [sp, #8]
	strh r0, [r6, #2]
	ldr r0, [sp, #0xc]
	bl sub_0207CA58
	lsl r1, r4, #2
	add r2, r5, r1
	ldr r1, _0226AFE8 ; =0x00000608
	mov r3, #0x11
	str r0, [r2, r1]
	add r0, r1, #0
	ldr r0, [r2, r0]
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	lsl r3, r3, #0x10
	bl sub_0200D500
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0226AFE8 ; =0x00000608
	ldr r0, [r1, r0]
	ldr r0, [r0, #0]
	bl sub_02021F98
	add r7, r0, #0
	mov r0, #6
	bl sub_0208C098
	add r2, r0, #0
	ldr r0, [sp]
	lsl r3, r4, #2
	add r0, r0, r3
	mov r3, #0x66
	ldr r1, [r7, #8]
	lsl r3, r3, #0x14
	ldr r0, [r0, #0x18]
	add r1, r3, r1
	bl sub_020C4B18
_0226AFD6:
	add r4, r4, #1
_0226AFD8:
	cmp r4, #4
	blt _0226AF4C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226AFE0: .word 0x0000068A
_0226AFE4: .word 0x0227047C
_0226AFE8: .word 0x00000608
_0226AFEC: .word 0x00004E39
_0226AFF0: .word 0x022702B4
	thumb_func_end ov16_0226AF0C

	thumb_func_start ov16_0226AFF4
ov16_0226AFF4: ; 0x0226AFF4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E010
	ldr r0, [r5, #0]
	bl ov16_0223E018
	mov r4, #0
	ldr r7, _0226B024 ; =0x00000608
	add r6, r4, #0
_0226B00A:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0226B018
	bl sub_0207CA88
	ldr r0, _0226B024 ; =0x00000608
	str r6, [r5, r0]
_0226B018:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0226B00A
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226B024: .word 0x00000608
	thumb_func_end ov16_0226AFF4

	thumb_func_start ov16_0226B028
ov16_0226B028: ; 0x0226B028
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E010
	ldr r0, [r5, #0]
	bl ov16_0223E018
	mov r4, #0
	add r6, r0, #0
	add r7, r4, #0
_0226B03E:
	ldr r0, _0226B064 ; =0x00000618
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0226B058
	bl sub_0207CB00
	ldr r1, _0226B068 ; =0x00004E3D
	add r0, r6, #0
	add r1, r4, r1
	bl sub_0207CAF8
	ldr r0, _0226B064 ; =0x00000618
	str r7, [r5, r0]
_0226B058:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0226B03E
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226B064: .word 0x00000618
_0226B068: .word 0x00004E3D
	thumb_func_end ov16_0226B028

	thumb_func_start ov16_0226B06C
ov16_0226B06C: ; 0x0226B06C
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0]
	add r5, r1, #0
	add r4, r2, #0
	bl ov16_0223E064
	add r4, #8
	add r1, r5, #0
	mov r2, #5
	mov r3, #1
	str r4, [sp]
	bl ov11_0221F81C
	pop {r3, r4, r5, pc}
	thumb_func_end ov16_0226B06C

	thumb_func_start ov16_0226B088
ov16_0226B088: ; 0x0226B088
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl ov16_0223E064
	add r6, r0, #0
	mov r7, #0
	b _0226B0CE
_0226B09A:
	ldr r1, _0226B0D4 ; =0x0227022C
	lsl r2, r4, #1
	add r1, r1, r2
	ldr r2, _0226B0D8 ; =0x02270274
	lsl r3, r4, #2
	add r2, r2, r3
	add r0, r5, #0
	mov r3, #3
	str r7, [sp]
	bl ov16_0226B31C
	mov r0, #0x20
	str r0, [sp]
	add r3, r4, #0
	mov r1, #7
	add r3, #8
	lsl r3, r3, #0x14
	ldr r2, [r5, #0x5c]
	lsl r1, r1, #6
	add r1, r2, r1
	add r0, r6, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02002FBC
	add r4, r4, #1
_0226B0CE:
	cmp r4, #4
	blt _0226B09A
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226B0D4: .word 0x0227022C
_0226B0D8: .word 0x02270274
	thumb_func_end ov16_0226B088

	thumb_func_start ov16_0226B0DC
ov16_0226B0DC: ; 0x0226B0DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r1, #0
	ldr r1, _0226B188 ; =0x022701C8
	add r5, r0, #0
	ldrb r2, [r1, #0xc]
	add r0, sp, #0x10
	strb r2, [r0]
	ldrb r2, [r1, #0xd]
	strb r2, [r0, #1]
	ldrb r2, [r1, #0xe]
	ldrb r1, [r1, #0xf]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldr r0, [r5, #0]
	bl ov16_0223DF00
	add r6, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223E064
	add r7, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r2, _0226B18C ; =0x022701FC
	lsl r1, r4, #1
	add r1, r2, r1
	ldr r3, _0226B190 ; =0x022702C4
	lsl r2, r4, #2
	add r2, r3, r2
	add r0, r5, #0
	mov r3, #4
	bl ov16_0226B31C
	mov r0, #0x20
	str r0, [sp]
	add r3, sp, #0x10
	ldrb r3, [r3, r4]
	mov r1, #7
	ldr r2, [r5, #0x5c]
	lsl r1, r1, #6
	lsl r3, r3, #0x14
	add r1, r2, r1
	add r0, r7, #0
	mov r2, #1
	lsr r3, r3, #0x10
	bl sub_02002FBC
	add r0, r6, #0
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, _0226B190 ; =0x022702C4
	lsl r1, r4, #2
	ldrb r2, [r0, r1]
	add r3, r0, r1
	str r2, [sp]
	ldrb r4, [r3, #3]
	ldrb r2, [r3, #2]
	sub r2, r4, r2
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	str r2, [sp, #4]
	ldrb r0, [r0, r1]
	ldrb r2, [r3, #1]
	mov r1, #5
	sub r0, r2, r0
	add r0, r0, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldrb r3, [r3, #2]
	ldr r2, _0226B194 ; =0x000002FF
	add r0, r6, #0
	bl sub_02019CB8
	add r0, r6, #0
	mov r1, #5
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0226B188: .word 0x022701C8
_0226B18C: .word 0x022701FC
_0226B190: .word 0x022702C4
_0226B194: .word 0x000002FF
	thumb_func_end ov16_0226B0DC

	thumb_func_start ov16_0226B198
ov16_0226B198: ; 0x0226B198
	push {r4, r5, r6, lr}
	mov r5, #0
	mov r6, #1
	add r4, r5, #0
_0226B1A0:
	add r0, r5, #4
	cmp r0, #6
	beq _0226B1B2
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r4, #0
	bl sub_02019120
	b _0226B1BC
_0226B1B2:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	bl sub_02019120
_0226B1BC:
	add r5, r5, #1
	cmp r5, #4
	blt _0226B1A0
	pop {r4, r5, r6, pc}
	thumb_func_end ov16_0226B198

	thumb_func_start ov16_0226B1C4
ov16_0226B1C4: ; 0x0226B1C4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #1
	bne _0226B1D2
	bl ov16_0226B1E8
_0226B1D2:
	cmp r4, #1
	bne _0226B1E0
	ldr r0, _0226B1E4 ; =ov16_0226BCBC
	add r1, r5, #0
	mov r2, #0xa
	bl sub_0200DA3C
_0226B1E0:
	pop {r3, r4, r5, pc}
	nop
_0226B1E4: .word ov16_0226BCBC
	thumb_func_end ov16_0226B1C4

	thumb_func_start ov16_0226B1E8
ov16_0226B1E8: ; 0x0226B1E8
	push {r4, lr}
	add r4, r0, #0
	bl ov16_0226AFF4
	add r0, r4, #0
	bl ov16_0226B028
	add r0, r4, #0
	bl ov16_0226AAC0
	add r0, r4, #0
	bl ov16_0226A718
	add r0, r4, #0
	bl ov16_0226A768
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov16_0226B1E8

	thumb_func_start ov16_0226B20C
ov16_0226B20C: ; 0x0226B20C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	add r6, r5, #0
	add r1, sp, #0
	add r7, r2, #0
	add r6, #0x1c
	bl ov16_0223F858
	mov r0, #0
	b _0226B254
_0226B226:
	add r2, r0, #2
	add r1, sp, #0
	ldrb r1, [r1, r2]
	cmp r7, #1
	bne _0226B242
	lsl r1, r1, #3
	add r1, r6, r1
	ldrb r1, [r1, #1]
	lsl r1, r1, #0x1d
	lsr r1, r1, #0x1f
	bne _0226B242
	mov r1, #0
	strb r1, [r4, r0]
	b _0226B252
_0226B242:
	ldr r1, _0226B25C ; =0x0000068C
	lsl r2, r0, #2
	ldrb r1, [r5, r1]
	lsl r3, r1, #4
	ldr r1, _0226B260 ; =0x022705B0
	add r1, r1, r3
	ldr r1, [r2, r1]
	strb r1, [r4, r0]
_0226B252:
	add r0, r0, #1
_0226B254:
	cmp r0, #4
	blt _0226B226
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226B25C: .word 0x0000068C
_0226B260: .word 0x022705B0
	thumb_func_end ov16_0226B20C

	thumb_func_start ov16_0226B264
ov16_0226B264: ; 0x0226B264
	push {r4, lr}
	ldr r4, _0226B2B8 ; =0x0000068C
	ldrb r4, [r0, r4]
	cmp r4, #0xb
	bhi _0226B2AC
	add r4, r4, r4
	add r4, pc
	ldrh r4, [r4, #6]
	lsl r4, r4, #0x10
	asr r4, r4, #0x10
	add pc, r4
_0226B27A: ; jump table
	.short _0226B292 - _0226B27A - 2 ; case 0
	.short _0226B2AC - _0226B27A - 2 ; case 1
	.short _0226B2AC - _0226B27A - 2 ; case 2
	.short _0226B2AC - _0226B27A - 2 ; case 3
	.short _0226B2AC - _0226B27A - 2 ; case 4
	.short _0226B2AC - _0226B27A - 2 ; case 5
	.short _0226B2AC - _0226B27A - 2 ; case 6
	.short _0226B2AC - _0226B27A - 2 ; case 7
	.short _0226B292 - _0226B27A - 2 ; case 8
	.short _0226B292 - _0226B27A - 2 ; case 9
	.short _0226B292 - _0226B27A - 2 ; case 10
	.short _0226B292 - _0226B27A - 2 ; case 11
_0226B292:
	mov r4, #0
	add r0, r4, #0
	mov r3, #1
	sub r1, r1, #1
_0226B29A:
	cmp r4, r1
	bne _0226B2A2
	strb r3, [r2, r4]
	b _0226B2A4
_0226B2A2:
	strb r0, [r2, r4]
_0226B2A4:
	add r4, r4, #1
	cmp r4, #4
	blt _0226B29A
	pop {r4, pc}
_0226B2AC:
	add r1, r2, #0
	add r2, r3, #0
	bl ov16_0226B20C
	pop {r4, pc}
	nop
_0226B2B8: .word 0x0000068C
	thumb_func_end ov16_0226B264

	thumb_func_start ov16_0226B2BC
ov16_0226B2BC: ; 0x0226B2BC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0226B2CC
	bl sub_02022974
_0226B2CC:
	ldr r0, _0226B2E8 ; =0x0000069C
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x24
	bl sub_020C4CF4
	ldr r2, _0226B2EC ; =0x00000514
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0200D9E8
	str r0, [r4, #0xc]
	pop {r3, r4, r5, pc}
	nop
_0226B2E8: .word 0x0000069C
_0226B2EC: .word 0x00000514
	thumb_func_end ov16_0226B2BC

	thumb_func_start ov16_0226B2F0
ov16_0226B2F0: ; 0x0226B2F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0226B30C
	bl sub_0200DA58
	ldr r0, _0226B310 ; =0x0000069C
	mov r1, #0
	add r0, r4, r0
	mov r2, #0x24
	str r1, [r4, #0xc]
	bl sub_020C4CF4
_0226B30C:
	pop {r4, pc}
	nop
_0226B310: .word 0x0000069C
	thumb_func_end ov16_0226B2F0

	thumb_func_start ov16_0226B314
ov16_0226B314: ; 0x0226B314
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0226B314

	thumb_func_start ov16_0226B318
ov16_0226B318: ; 0x0226B318
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0226B318

	thumb_func_start ov16_0226B31C
ov16_0226B31C: ; 0x0226B31C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	add r4, r2, #0
	add r7, r3, #0
	bl ov16_0223DF00
	mov r1, #4
	str r0, [sp, #4]
	bl sub_02019FE4
	mov ip, r0
	lsl r0, r7, #2
	add r0, r5, r0
	ldr r0, [r0, #0x40]
	ldrb r7, [r4]
	str r0, [sp]
	ldr r0, [sp, #0x20]
	lsl r0, r0, #1
	ldrsh r1, [r6, r0]
	ldrb r0, [r4, #1]
	cmp r7, r0
	bgt _0226B384
	lsl r6, r7, #5
_0226B350:
	lsl r2, r6, #1
	mov r0, ip
	add r5, r0, r2
	ldr r0, [sp]
	ldrb r3, [r4, #3]
	add r2, r0, r2
	ldrb r0, [r4, #2]
	cmp r0, r3
	bgt _0226B37A
	lsl r3, r0, #1
	add r2, r2, r3
	add r3, r5, r3
_0226B368:
	ldrh r5, [r2]
	add r0, r0, #1
	add r2, r2, #2
	add r5, r1, r5
	strh r5, [r3]
	ldrb r5, [r4, #3]
	add r3, r3, #2
	cmp r0, r5
	ble _0226B368
_0226B37A:
	ldrb r0, [r4, #1]
	add r7, r7, #1
	add r6, #0x20
	cmp r7, r0
	ble _0226B350
_0226B384:
	ldr r0, [sp, #4]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov16_0226B31C

	thumb_func_start ov16_0226B390
ov16_0226B390: ; 0x0226B390
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldr r3, _0226B4D4 ; =0x0000069C
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0226B3AE
	cmp r0, #1
	beq _0226B420
	cmp r0, #2
	beq _0226B43C
	b _0226B4AE
_0226B3AE:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #4
	add r2, r3, #0
	add r3, #0x10
	add r2, #8
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov16_0226B31C
	ldr r0, _0226B4D8 ; =0x000006AD
	add r2, sp, #4
	ldrb r1, [r4, r0]
	mov r0, #0x14
	mul r0, r1
	add r1, r4, r0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_020129A4
	ldr r0, _0226B4D8 ; =0x000006AD
	ldr r2, [sp, #4]
	ldrb r1, [r4, r0]
	mov r0, #0x14
	sub r2, r2, #2
	mul r0, r1
	add r1, r4, r0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	bl sub_020128C4
	ldr r0, _0226B4DC ; =0x000006AE
	ldrb r1, [r4, r0]
	cmp r1, #0xff
	beq _0226B414
	lsl r1, r1, #2
	add r1, r4, r1
	sub r0, #0x86
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226B414
	mov r1, #0
	sub r2, r1, #2
	bl sub_0200D5DC
_0226B414:
	ldr r0, _0226B4D4 ; =0x0000069C
	add sp, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, pc}
_0226B420:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226B4D0
	mov r1, #0
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r3]
	add r0, r0, #1
	strh r0, [r4, r3]
_0226B43C:
	mov r0, #1
	mov r3, #0x6a
	str r0, [sp]
	lsl r3, r3, #4
	add r2, r3, #4
	ldr r1, [r4, r3]
	add r3, #0xc
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov16_0226B31C
	ldr r0, _0226B4D8 ; =0x000006AD
	add r2, sp, #4
	ldrb r1, [r4, r0]
	mov r0, #0x14
	mul r0, r1
	add r1, r4, r0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	add r1, sp, #8
	bl sub_020129A4
	ldr r0, _0226B4D8 ; =0x000006AD
	ldr r2, [sp, #4]
	ldrb r1, [r4, r0]
	mov r0, #0x14
	add r2, r2, #1
	mul r0, r1
	add r1, r4, r0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	bl sub_020128C4
	ldr r0, _0226B4DC ; =0x000006AE
	ldrb r1, [r4, r0]
	cmp r1, #0xff
	beq _0226B4A2
	lsl r1, r1, #2
	add r1, r4, r1
	sub r0, #0x86
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226B4A2
	mov r1, #0
	mov r2, #1
	bl sub_0200D5DC
_0226B4A2:
	ldr r0, _0226B4D4 ; =0x0000069C
	add sp, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, pc}
_0226B4AE:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226B4D0
	add r3, #0x14
	ldrb r1, [r4, r3]
	add r0, r4, #0
	mov r2, #0
	bl ov16_0226B1C4
	add r0, r4, #0
	bl ov16_0226B2F0
_0226B4D0:
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_0226B4D4: .word 0x0000069C
_0226B4D8: .word 0x000006AD
_0226B4DC: .word 0x000006AE
	thumb_func_end ov16_0226B390

	thumb_func_start ov16_0226B4E0
ov16_0226B4E0: ; 0x0226B4E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldr r0, _0226B770 ; =0x000006A8
	add r1, r4, #0
	ldr r0, [r4, r0]
	add r1, #0x1c
	cmp r0, #4
	bgt _0226B512
	cmp r0, #0
	blt _0226B54E
	add r2, r0, r0
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0226B508: ; jump table
	.short _0226B54E - _0226B508 - 2 ; case 0
	.short _0226B516 - _0226B508 - 2 ; case 1
	.short _0226B524 - _0226B508 - 2 ; case 2
	.short _0226B532 - _0226B508 - 2 ; case 3
	.short _0226B540 - _0226B508 - 2 ; case 4
_0226B512:
	cmp r0, #0xff
	b _0226B54E
_0226B516:
	mov r0, #5
	str r0, [sp, #8]
	ldrh r0, [r1]
	mov r5, #0
	mov r6, #9
	str r0, [sp, #4]
	b _0226B556
_0226B524:
	mov r0, #6
	str r0, [sp, #8]
	ldrh r0, [r1, #2]
	mov r5, #1
	mov r6, #0xa
	str r0, [sp, #4]
	b _0226B556
_0226B532:
	mov r0, #7
	str r0, [sp, #8]
	ldrh r0, [r1, #4]
	mov r5, #2
	mov r6, #0xb
	str r0, [sp, #4]
	b _0226B556
_0226B540:
	mov r0, #8
	str r0, [sp, #8]
	ldrh r0, [r1, #6]
	mov r5, #3
	mov r6, #0xc
	str r0, [sp, #4]
	b _0226B556
_0226B54E:
	mov r5, #0
	add r6, r5, #0
	str r5, [sp, #8]
	str r5, [sp, #4]
_0226B556:
	ldr r3, _0226B774 ; =0x0000069C
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _0226B56A
	cmp r0, #1
	beq _0226B64C
	cmp r0, #2
	bne _0226B568
	b _0226B66A
_0226B568:
	b _0226B74C
_0226B56A:
	mov r0, #2
	str r0, [sp]
	add r1, r3, #4
	add r2, r3, #0
	add r3, #0x10
	add r2, #8
	ldrb r3, [r4, r3]
	ldr r1, [r4, r1]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov16_0226B31C
	ldr r0, _0226B770 ; =0x000006A8
	add r1, sp, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0xff
	beq _0226B624
	mov r0, #0x4d
	lsl r0, r0, #4
	add r7, r4, r0
	mov r0, #0x14
	mul r0, r5
	str r0, [sp, #0xc]
	ldr r0, [r7, r0]
	add r2, sp, #0x1c
	bl sub_020129A4
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x20]
	sub r2, r2, #2
	bl sub_020128C4
	mov r0, #0x4d
	lsl r0, r0, #4
	add r7, r4, r0
	mov r0, #0x14
	mul r0, r6
	str r0, [sp, #0x10]
	ldr r0, [r7, r0]
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl sub_020129A4
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x1c]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x20]
	sub r2, r2, #2
	bl sub_020128C4
	mov r0, #0x4d
	lsl r0, r0, #4
	add r6, r4, r0
	ldr r0, [sp, #8]
	mov r1, #0x14
	add r7, r0, #0
	mul r7, r1
	ldr r0, [r6, r7]
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl sub_020129A4
	ldr r2, [sp, #0x1c]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x20]
	sub r2, r2, #2
	bl sub_020128C4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0226B640
	lsl r5, r5, #2
	ldr r0, _0226B778 ; =0x00000608
	add r1, r4, r5
	ldr r0, [r1, r0]
	mov r1, #0
	ldr r0, [r0, #0]
	sub r2, r1, #2
	bl sub_0200D5AC
	ldr r0, _0226B77C ; =0x00000618
	add r1, r4, r5
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226B640
	mov r1, #0
	ldr r0, [r0, #0]
	sub r2, r1, #2
	bl sub_0200D5AC
	b _0226B640
_0226B624:
	mov r0, #0x52
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r2, sp, #0x1c
	bl sub_020129A4
	mov r0, #0x52
	lsl r0, r0, #4
	ldr r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x20]
	sub r2, r2, #2
	bl sub_020128C4
_0226B640:
	ldr r0, _0226B774 ; =0x0000069C
	add sp, #0x24
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_0226B64C:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0226B65E
	b _0226B76C
_0226B65E:
	mov r1, #0
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r3]
	add r0, r0, #1
	strh r0, [r4, r3]
_0226B66A:
	mov r0, #1
	mov r3, #0x6a
	str r0, [sp]
	lsl r3, r3, #4
	add r2, r3, #4
	ldr r1, [r4, r3]
	add r3, #0xc
	ldrb r3, [r4, r3]
	ldr r2, [r4, r2]
	add r0, r4, #0
	bl ov16_0226B31C
	ldr r0, _0226B770 ; =0x000006A8
	add r1, sp, #0x20
	ldr r0, [r4, r0]
	cmp r0, #0xff
	beq _0226B724
	mov r0, #0x4d
	lsl r0, r0, #4
	add r7, r4, r0
	mov r0, #0x14
	mul r0, r5
	str r0, [sp, #0x14]
	ldr r0, [r7, r0]
	add r2, sp, #0x1c
	bl sub_020129A4
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	bl sub_020128C4
	mov r0, #0x4d
	lsl r0, r0, #4
	add r7, r4, r0
	mov r0, #0x14
	mul r0, r6
	str r0, [sp, #0x18]
	ldr r0, [r7, r0]
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl sub_020129A4
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r0, [r7, r0]
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	bl sub_020128C4
	mov r0, #0x4d
	lsl r0, r0, #4
	add r6, r4, r0
	ldr r0, [sp, #8]
	mov r1, #0x14
	add r7, r0, #0
	mul r7, r1
	ldr r0, [r6, r7]
	add r1, sp, #0x20
	add r2, sp, #0x1c
	bl sub_020129A4
	ldr r2, [sp, #0x1c]
	ldr r0, [r6, r7]
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	bl sub_020128C4
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _0226B740
	lsl r5, r5, #2
	ldr r0, _0226B778 ; =0x00000608
	add r1, r4, r5
	ldr r0, [r1, r0]
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, #1
	bl sub_0200D5AC
	ldr r0, _0226B77C ; =0x00000618
	add r1, r4, r5
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226B740
	ldr r0, [r0, #0]
	mov r1, #0
	mov r2, #1
	bl sub_0200D5AC
	b _0226B740
_0226B724:
	mov r0, #0x52
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r2, sp, #0x1c
	bl sub_020129A4
	mov r0, #0x52
	lsl r0, r0, #4
	ldr r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x20]
	add r2, r2, #1
	bl sub_020128C4
_0226B740:
	ldr r0, _0226B774 ; =0x0000069C
	add sp, #0x24
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_0226B74C:
	add r0, r3, #2
	ldrsh r0, [r4, r0]
	add r1, r0, #1
	add r0, r3, #2
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226B76C
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_0226B1C4
	add r0, r4, #0
	bl ov16_0226B2F0
_0226B76C:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_0226B770: .word 0x000006A8
_0226B774: .word 0x0000069C
_0226B778: .word 0x00000608
_0226B77C: .word 0x00000618
	thumb_func_end ov16_0226B4E0

	thumb_func_start ov16_0226B780
ov16_0226B780: ; 0x0226B780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0]
	bl ov16_0223DF00
	ldr r1, _0226B910 ; =0x0000069C
	ldrsh r0, [r4, r1]
	cmp r0, #3
	bls _0226B796
	b _0226B8FA
_0226B796:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226B7A2: ; jump table
	.short _0226B7AA - _0226B7A2 - 2 ; case 0
	.short _0226B834 - _0226B7A2 - 2 ; case 1
	.short _0226B850 - _0226B7A2 - 2 ; case 2
	.short _0226B8DA - _0226B7A2 - 2 ; case 3
_0226B7AA:
	add r1, #0x20
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r2, sp, #4
	mov r3, #1
	bl ov16_0226B264
	mov r5, #0
	mov r7, #2
	add r6, sp, #4
	b _0226B824
_0226B7C0:
	ldrb r0, [r6, r5]
	cmp r0, #1
	bne _0226B822
	mov r1, #6
	add r2, r5, #0
	mul r2, r1
	ldr r1, _0226B914 ; =0x022703D4
	lsl r3, r5, #2
	add r1, r1, r2
	ldr r2, _0226B918 ; =0x0227033C
	add r0, r4, #0
	add r2, r2, r3
	mov r3, #4
	str r7, [sp]
	bl ov16_0226B31C
	mov r0, #0x14
	mul r0, r5
	add r1, r4, r0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226B80E
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_020129A4
	mov r0, #0x14
	mul r0, r5
	add r1, r4, r0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r2, [sp, #8]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	sub r2, r2, #2
	bl sub_020128C4
_0226B80E:
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0226B91C ; =0x00000628
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226B822
	mov r1, #0
	sub r2, r1, #2
	bl sub_0200D5DC
_0226B822:
	add r5, r5, #1
_0226B824:
	cmp r5, #4
	blt _0226B7C0
	ldr r0, _0226B910 ; =0x0000069C
	add sp, #0x10
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0226B834:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226B90A
	mov r2, #0
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r1]
	add r0, r0, #1
	strh r0, [r4, r1]
_0226B850:
	ldr r1, _0226B920 ; =0x000006BC
	add r0, r4, #0
	ldr r1, [r4, r1]
	add r2, sp, #4
	mov r3, #1
	bl ov16_0226B264
	mov r5, #0
	mov r7, #1
	add r6, sp, #4
	b _0226B8CA
_0226B866:
	ldrb r0, [r6, r5]
	cmp r0, #1
	bne _0226B8C8
	mov r1, #6
	add r2, r5, #0
	mul r2, r1
	ldr r1, _0226B914 ; =0x022703D4
	lsl r3, r5, #2
	add r1, r1, r2
	ldr r2, _0226B918 ; =0x0227033C
	add r0, r4, #0
	add r2, r2, r3
	mov r3, #4
	str r7, [sp]
	bl ov16_0226B31C
	mov r0, #0x14
	mul r0, r5
	add r1, r4, r0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226B8B4
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_020129A4
	mov r0, #0x14
	mul r0, r5
	add r1, r4, r0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r2, [sp, #8]
	ldr r0, [r1, r0]
	ldr r1, [sp, #0xc]
	add r2, r2, #1
	bl sub_020128C4
_0226B8B4:
	lsl r0, r5, #2
	add r1, r4, r0
	ldr r0, _0226B91C ; =0x00000628
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226B8C8
	mov r1, #0
	mov r2, #1
	bl sub_0200D5DC
_0226B8C8:
	add r5, r5, #1
_0226B8CA:
	cmp r5, #4
	blt _0226B866
	ldr r0, _0226B910 ; =0x0000069C
	add sp, #0x10
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0226B8DA:
	add r0, r1, #2
	ldrsh r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226B90A
	mov r2, #0
	add r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r1]
	add sp, #0x10
	add r0, r0, #1
	strh r0, [r4, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0226B8FA:
	mov r1, #1
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_0226B1C4
	add r0, r4, #0
	bl ov16_0226B2F0
_0226B90A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226B910: .word 0x0000069C
_0226B914: .word 0x022703D4
_0226B918: .word 0x0227033C
_0226B91C: .word 0x00000628
_0226B920: .word 0x000006BC
	thumb_func_end ov16_0226B780

	thumb_func_start ov16_0226B924
ov16_0226B924: ; 0x0226B924
	cmp r0, #0
	bne _0226B92C
	ldr r0, _0226B97C ; =0x00070800
	bx lr
_0226B92C:
	cmp r1, r0
	bne _0226B934
	ldr r0, _0226B980 ; =0x00010200
	bx lr
_0226B934:
	cmp r1, #2
	bgt _0226B940
	cmp r0, #1
	bne _0226B978
	ldr r0, _0226B984 ; =0x00050600
	bx lr
_0226B940:
	cmp r1, #7
	bgt _0226B958
	cmp r0, #1
	beq _0226B94E
	cmp r0, #2
	beq _0226B952
	b _0226B978
_0226B94E:
	ldr r0, _0226B984 ; =0x00050600
	bx lr
_0226B952:
	mov r0, #0xc1
	lsl r0, r0, #0xa
	bx lr
_0226B958:
	asr r2, r1, #1
	lsr r2, r2, #0x1e
	add r2, r1, r2
	asr r2, r2, #2
	cmp r0, r2
	bgt _0226B968
	ldr r0, _0226B984 ; =0x00050600
	bx lr
_0226B968:
	lsr r2, r1, #0x1f
	add r2, r1, r2
	asr r1, r2, #1
	cmp r0, r1
	bgt _0226B978
	mov r0, #0xc1
	lsl r0, r0, #0xa
	bx lr
_0226B978:
	ldr r0, _0226B980 ; =0x00010200
	bx lr
	; .align 2, 0
_0226B97C: .word 0x00070800
_0226B980: .word 0x00010200
_0226B984: .word 0x00050600
	thumb_func_end ov16_0226B924

	thumb_func_start ov16_0226B988
ov16_0226B988: ; 0x0226B988
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223DF00
	add r4, r0, #0
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	beq _0226B9A4
	cmp r0, #1
	beq _0226B9FA
	b _0226BA26
_0226B9A4:
	mov r2, #8
	ldrsh r1, [r5, r2]
	ldr r0, _0226BA78 ; =0x000018E7
	add r1, r1, r0
	strh r1, [r5, #8]
	mov r1, #0xa
	ldrsh r3, [r5, r1]
	mov r1, #0xfa
	lsl r1, r1, #2
	sub r1, r3, r1
	strh r1, [r5, #0xa]
	ldrsh r1, [r5, r2]
	lsl r0, r0, #2
	sub r0, r0, r1
	mov r1, #0x64
	bl sub_020E1F6C
	strh r0, [r5, #0xc]
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	neg r0, r0
	bl sub_020E1F6C
	strh r0, [r5, #0xe]
	mov r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _0226B9E6
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0226BA76
_0226B9E6:
	mov r1, #0
	strh r1, [r5, #8]
	mov r0, #0x90
	strh r0, [r5, #0xa]
	strh r1, [r5, #0xc]
	strh r1, [r5, #0xe]
	ldrb r0, [r5, #0x13]
	add r0, r0, #1
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_0226B9FA:
	ldr r1, [r5, #0]
	ldr r0, _0226BA7C ; =0x0000068E
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r5, #4]
	bl sub_0200DA58
	bl sub_020177A4
	ldr r2, _0226BA80 ; =0x04001000
	ldr r0, _0226BA84 ; =0xFFFF1FFF
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r5, #0]
	mov r1, #1
	bl ov16_0226BCCC
	ldrb r0, [r5, #0x13]
	add r0, r0, #1
	strb r0, [r5, #0x13]
	pop {r4, r5, r6, pc}
_0226BA26:
	ldr r0, [r5, #0]
	bl ov16_0226BCD0
	cmp r0, #0
	beq _0226BA76
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
	ldr r0, [r5, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl ov16_0223F288
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	bl sub_0200DA58
_0226BA76:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0226BA78: .word 0x000018E7
_0226BA7C: .word 0x0000068E
_0226BA80: .word 0x04001000
_0226BA84: .word 0xFFFF1FFF
	thumb_func_end ov16_0226B988

	thumb_func_start ov16_0226BA88
ov16_0226BA88: ; 0x0226BA88
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl ov16_0223DF00
	add r6, r0, #0
	ldrb r0, [r5, #0x12]
	cmp r0, #4
	bne _0226BAD6
	mov r0, #0xc
	ldrsh r1, [r5, r0]
	mov r0, #0xff
	sub r3, r0, r1
	cmp r3, #0
	ble _0226BAAA
	mov r3, #0
_0226BAAA:
	add r0, r6, #0
	mov r1, #4
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r4, [r5, r3]
	mov r3, #0xff
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	sub r3, r3, r4
	bl sub_02019184
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	neg r0, r0
	bl sub_020E1F6C
	add r4, r0, #0
	b _0226BB06
_0226BAD6:
	mov r0, #0xc
	ldrsh r3, [r5, r0]
	cmp r3, #0
	bge _0226BAE0
	mov r3, #0
_0226BAE0:
	add r0, r6, #0
	mov r1, #4
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r5, r3]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02019184
	mov r0, #8
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	bl sub_020E1F6C
	add r4, r0, #0
	add r4, #0xff
_0226BB06:
	add r0, r6, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r6, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	mov r1, #0x64
	bl sub_020E1F6C
	add r0, #0x90
	cmp r4, #0
	bge _0226BB32
	mov r4, #0
	b _0226BB38
_0226BB32:
	cmp r4, #0xff
	ble _0226BB38
	mov r4, #0xff
_0226BB38:
	cmp r0, #0xc0
	ble _0226BB40
	mov r0, #0xc0
	b _0226BB46
_0226BB40:
	cmp r0, #0
	bge _0226BB46
	mov r0, #0
_0226BB46:
	ldrb r1, [r5, #0x12]
	cmp r1, #4
	bne _0226BB5A
	lsl r1, r4, #0x18
	ldr r2, _0226BB8C ; =0x04001040
	lsr r1, r1, #0x18
	strh r1, [r2]
	mov r1, #0x90
	strh r1, [r2, #4]
	b _0226BB70
_0226BB5A:
	cmp r4, #0
	bne _0226BB60
	mov r4, #1
_0226BB60:
	mov r1, #0xff
	lsl r2, r4, #8
	lsl r1, r1, #8
	and r1, r2
	ldr r2, _0226BB8C ; =0x04001040
	strh r1, [r2]
	mov r1, #0x90
	strh r1, [r2, #4]
_0226BB70:
	ldr r2, _0226BB90 ; =0x04001042
	mov r1, #0xff
	lsl r0, r0, #0x18
	strh r1, [r2]
	lsr r1, r0, #0x18
	mov r0, #9
	lsl r0, r0, #0xc
	orr r0, r1
	strh r0, [r2, #4]
	mov r0, #0xe
	ldrsh r0, [r5, r0]
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_0226BB8C: .word 0x04001040
_0226BB90: .word 0x04001042
	thumb_func_end ov16_0226BA88

	thumb_func_start ov16_0226BB94
ov16_0226BB94: ; 0x0226BB94
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, _0226BC4C ; =0x04000006
	ldrh r0, [r0]
	cmp r0, #0x90
	bne _0226BBDE
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov16_0223DF00
	mov r2, #0
	mov r1, #4
	add r3, r2, #0
	add r5, r0, #0
	bl sub_02019184
	mov r3, #0x10
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	bl sub_02019184
	mov r2, #0
	add r0, r5, #0
	mov r1, #5
	add r3, r2, #0
	bl sub_02019184
	mov r3, #0x10
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	bl sub_02019184
	pop {r4, r5, r6, pc}
_0226BBDE:
	cmp r0, #0xc0
	ble _0226BC48
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl ov16_0223DF00
	ldrb r1, [r4, #0x12]
	add r5, r0, #0
	cmp r1, #4
	bne _0226BC16
	mov r3, #0xc
	ldrsh r6, [r4, r3]
	mov r3, #0xff
	mov r1, #4
	mov r2, #0
	sub r3, r3, r6
	bl sub_02019184
	mov r3, #0xc
	ldrsh r4, [r4, r3]
	mov r3, #0xff
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	sub r3, r3, r4
	bl sub_02019184
	b _0226BC30
_0226BC16:
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	mov r1, #4
	mov r2, #0
	bl sub_02019184
	mov r3, #0xc
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl sub_02019184
_0226BC30:
	add r0, r5, #0
	mov r1, #4
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #5
	mov r2, #3
	mov r3, #0
	bl sub_02019184
_0226BC48:
	pop {r4, r5, r6, pc}
	nop
_0226BC4C: .word 0x04000006
	thumb_func_end ov16_0226BB94

	thumb_func_start ov16_0226BC50
ov16_0226BC50: ; 0x0226BC50
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, _0226BCB0 ; =0x0000068B
	ldr r2, _0226BCB4 ; =0x02270670
	ldrsb r1, [r1, r0]
	mov r0, #0x30
	ldr r7, _0226BCB8 ; =0x0000FFFF
	mul r0, r1
	add r6, r2, r0
	mov r4, #0
	add r5, r6, #0
_0226BC66:
	ldrh r0, [r5, #4]
	cmp r0, r7
	bne _0226BC7A
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0
	bl sub_02019120
	b _0226BC86
_0226BC7A:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #1
	bl sub_02019120
_0226BC86:
	add r4, r4, #1
	add r5, r5, #2
	cmp r4, #4
	blt _0226BC66
	mov r4, #0
_0226BC90:
	ldrh r1, [r6, #0xc]
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsl r1, r1, #0x18
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	bl sub_02019060
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #4
	blt _0226BC90
	ldr r0, [sp]
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226BCB0: .word 0x0000068B
_0226BCB4: .word 0x02270670
_0226BCB8: .word 0x0000FFFF
	thumb_func_end ov16_0226BC50

	thumb_func_start ov16_0226BCBC
ov16_0226BCBC: ; 0x0226BCBC
	push {r4, lr}
	add r4, r0, #0
	bl ov16_0226B198
	add r0, r4, #0
	bl sub_0200DA58
	pop {r4, pc}
	thumb_func_end ov16_0226BCBC

	thumb_func_start ov16_0226BCCC
ov16_0226BCCC: ; 0x0226BCCC
	bx lr
	; .align 2, 0
	thumb_func_end ov16_0226BCCC

	thumb_func_start ov16_0226BCD0
ov16_0226BCD0: ; 0x0226BCD0
	ldr r1, _0226BCE0 ; =0x00000684
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0226BCDC
	mov r0, #1
	bx lr
_0226BCDC:
	mov r0, #0
	bx lr
	; .align 2, 0
_0226BCE0: .word 0x00000684
	thumb_func_end ov16_0226BCD0

	thumb_func_start ov16_0226BCE4
ov16_0226BCE4: ; 0x0226BCE4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r0, [r5, #0]
	bl ov16_0223E064
	add r4, r0, #0
	bl sub_0200384C
	cmp r0, #0
	bne _0226BD64
	ldr r0, _0226BD68 ; =0x00000696
	mov r1, #1
	ldrsh r0, [r5, r0]
	add r2, r1, #0
	add r3, r1, #0
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _0226BD6C ; =0x00007E37
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_020039B0
	ldr r1, _0226BD70 ; =0x00000694
	ldrb r0, [r5, r1]
	cmp r0, #0
	bne _0226BD2A
	add r0, r1, #2
	ldrsh r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #8
	add r2, r2, r0
	b _0226BD34
_0226BD2A:
	add r0, r1, #2
	ldrsh r2, [r5, r0]
	mov r0, #2
	lsl r0, r0, #8
	sub r2, r2, r0
_0226BD34:
	add r0, r1, #2
	strh r2, [r5, r0]
	ldr r0, _0226BD68 ; =0x00000696
	mov r1, #0x11
	ldrsh r2, [r5, r0]
	lsl r1, r1, #8
	cmp r2, r1
	blt _0226BD54
	mov r1, #0xf
	lsl r1, r1, #8
	strh r1, [r5, r0]
	mov r1, #1
	sub r0, r0, #2
	add sp, #8
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_0226BD54:
	cmp r2, #0
	bgt _0226BD64
	mov r1, #1
	lsl r1, r1, #8
	strh r1, [r5, r0]
	mov r1, #0
	sub r0, r0, #2
	strb r1, [r5, r0]
_0226BD64:
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226BD68: .word 0x00000696
_0226BD6C: .word 0x00007E37
_0226BD70: .word 0x00000694
	thumb_func_end ov16_0226BCE4

	thumb_func_start ov16_0226BD74
ov16_0226BD74: ; 0x0226BD74
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	bl sub_02002B3C
	add r6, r0, #0
	bl sub_02002B5C
	add r7, r0, #0
	bl sub_02002B4C
	bl sub_02002B6C
	ldr r0, [r5, #0]
	bl ov16_0223E064
	add r4, r0, #0
	bl sub_0200384C
	cmp r0, #0
	bne _0226BE40
	add r0, r4, #0
	mov r1, #1
	bl sub_0200316C
	add r4, r0, #0
	ldr r0, _0226BE44 ; =0x021BF6BC
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	beq _0226BDFC
	cmp r6, #1
	beq _0226BDB6
	cmp r7, #1
	bne _0226BDFC
_0226BDB6:
	ldr r1, [r5, #0x60]
	add r0, r4, #0
	add r0, #0x10
	add r1, #0x10
	mov r2, #0x10
	bl sub_020D5190
	cmp r0, #0
	bne _0226BE40
	ldr r0, [r5, #0]
	bl ov16_0223DF0C
	mov r1, #0x80
	tst r0, r1
	ldr r0, [r5, #0x64]
	beq _0226BDEE
	add r1, r4, #0
	mov r2, #0x20
	bl sub_020C4B18
	ldr r0, [r5, #0x64]
	add r4, #0xe0
	add r0, #0x20
	add r1, r4, #0
	mov r2, #0x20
	bl sub_020C4B18
	pop {r3, r4, r5, r6, r7, pc}
_0226BDEE:
	add r4, #0x10
	add r0, #0x10
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020C4B18
	pop {r3, r4, r5, r6, r7, pc}
_0226BDFC:
	ldr r1, [r5, #0x64]
	add r0, r4, #0
	add r0, #0x10
	add r1, #0x10
	mov r2, #0x10
	bl sub_020D5190
	cmp r0, #0
	bne _0226BE40
	ldr r0, [r5, #0]
	bl ov16_0223DF0C
	mov r1, #0x80
	tst r0, r1
	ldr r0, [r5, #0x60]
	beq _0226BE34
	add r1, r4, #0
	mov r2, #0x20
	bl sub_020C4B18
	ldr r0, [r5, #0x60]
	add r4, #0xe0
	add r0, #0x20
	add r1, r4, #0
	mov r2, #0x20
	bl sub_020C4B18
	pop {r3, r4, r5, r6, r7, pc}
_0226BE34:
	add r4, #0x10
	add r0, #0x10
	add r1, r4, #0
	mov r2, #0x10
	bl sub_020C4B18
_0226BE40:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226BE44: .word 0x021BF6BC
	thumb_func_end ov16_0226BD74

	thumb_func_start ov16_0226BE48
ov16_0226BE48: ; 0x0226BE48
	push {r4, r5, r6, lr}
	ldr r6, _0226BEAC ; =0x000006DC
	add r5, r0, #0
	add r2, r6, #0
	sub r2, #0x51
	ldrsb r2, [r5, r2]
	ldr r1, _0226BEB0 ; =0x02270670
	mov r3, #0x30
	add r4, r2, #0
	mul r4, r3
	add r4, r1, r4
	ldr r2, [r4, #0x20]
	cmp r2, #0
	bne _0226BE6A
	sub r3, #0x31
	add r0, r3, #0
	pop {r4, r5, r6, pc}
_0226BE6A:
	ldrb r1, [r5, r6]
	cmp r1, #0
	bne _0226BEA4
	add r0, r6, #4
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0226BE82
	ldr r1, _0226BEB4 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	ldr r1, _0226BEB8 ; =0x00000CF3
	tst r1, r2
	beq _0226BE9E
_0226BE82:
	cmp r0, #0
	bne _0226BE8C
	ldr r0, _0226BEBC ; =0x000005DC
	bl sub_02005748
_0226BE8C:
	mov r1, #1
	mov r0, #0x6e
	strb r1, [r5, r6]
	mov r2, #0
	lsl r0, r0, #4
	strb r2, [r5, r0]
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	blx r2
_0226BE9E:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0226BEA4:
	mov r1, #0
	blx r2
	pop {r4, r5, r6, pc}
	nop
_0226BEAC: .word 0x000006DC
_0226BEB0: .word 0x02270670
_0226BEB4: .word 0x021BF67C
_0226BEB8: .word 0x00000CF3
_0226BEBC: .word 0x000005DC
	thumb_func_end ov16_0226BE48

	thumb_func_start ov16_0226BEC0
ov16_0226BEC0: ; 0x0226BEC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #8]
	ldr r1, _0226C080 ; =0x000006DC
	add r6, r0, #0
	add r2, r1, #0
	sub r2, #0x51
	ldrsb r3, [r6, r2]
	add r4, r6, r1
	mov r2, #0x30
	sub r1, #0x52
	ldr r0, _0226C084 ; =0x02270670
	mul r2, r3
	add r7, r0, r2
	ldrb r1, [r6, r1]
	ldr r0, [r6, #0]
	bl ov16_0223E1C4
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov16_0223DF14
	bl ov16_02263B0C
	ldr r1, [sp, #8]
	cmp r1, #1
	bne _0226BF44
	mov r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _0226C088 ; =0x022701EC
	strb r1, [r4, #2]
	mov r1, #1
	ldrsb r0, [r0, r1]
	strb r0, [r4, #1]
	ldrsb r1, [r4, r1]
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r7, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	ldr r0, _0226C08C ; =0x000006D8
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0226BF44:
	ldr r0, _0226C090 ; =0x0000068B
	ldrsb r0, [r6, r0]
	cmp r0, #5
	beq _0226BF50
	cmp r0, #6
	bne _0226BF60
_0226BF50:
	mov r1, #1
	ldr r3, _0226C088 ; =0x022701EC
	add r0, r4, #0
	add r2, r1, #0
	bl ov16_0226CB10
	add r5, r0, #0
	b _0226BFCA
_0226BF60:
	mov r0, #1
	ldrsb r1, [r4, r0]
	lsl r0, r1, #1
	add r2, r1, r0
	mov r0, #2
	ldr r1, _0226C088 ; =0x022701EC
	ldrsb r0, [r4, r0]
	add r1, r1, r2
	ldrb r0, [r0, r1]
	str r0, [sp, #0xc]
	cmp r0, #3
	bne _0226BF82
	ldr r0, _0226C094 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	tst r0, r1
	bne _0226BFCA
_0226BF82:
	ldr r3, _0226C088 ; =0x022701EC
	add r0, r4, #0
	mov r1, #3
	mov r2, #2
	bl ov16_0226CB10
	add r5, r0, #0
	bne _0226BFCA
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _0226BFCA
	ldr r0, _0226C094 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _0226BFB4
	mov r0, #0
	strb r0, [r4, #2]
	mov r0, #1
	strb r0, [r4, #1]
	ldr r0, _0226C098 ; =0x000005DC
	bl sub_02005748
	mov r5, #0x20
	b _0226BFCA
_0226BFB4:
	mov r0, #0x10
	tst r0, r1
	beq _0226BFCA
	mov r0, #2
	strb r0, [r4, #2]
	mov r0, #1
	strb r0, [r4, #1]
	ldr r0, _0226C098 ; =0x000005DC
	bl sub_02005748
	mov r5, #0x10
_0226BFCA:
	cmp r5, #0x20
	bhi _0226BFE6
	bhs _0226BFF2
	cmp r5, #2
	bhi _0226BFE0
	cmp r5, #1
	blo _0226C076
	beq _0226C030
	cmp r5, #2
	beq _0226C046
	b _0226C076
_0226BFE0:
	cmp r5, #0x10
	beq _0226BFF2
	b _0226C076
_0226BFE6:
	cmp r5, #0x40
	bhi _0226BFEE
	beq _0226BFF2
	b _0226C076
_0226BFEE:
	cmp r5, #0x80
	bne _0226C076
_0226BFF2:
	mov r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _0226C088 ; =0x022701EC
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r7, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r7, #0x14]
	ldr r0, _0226C08C ; =0x000006D8
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	b _0226C076
_0226C030:
	mov r0, #1
	ldrsb r1, [r4, r0]
	ldr r2, _0226C088 ; =0x022701EC
	add sp, #0x10
	lsl r0, r1, #1
	add r3, r1, r0
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0226C046:
	ldr r0, _0226C09C ; =0x0000068F
	ldrb r0, [r6, r0]
	cmp r0, #1
	bne _0226C076
	mov r0, #0
	add r2, r0, #0
	mov r3, #1
	ldr r1, [r7, #0x18]
	ldr r5, [r7, #0x14]
	b _0226C064
_0226C05A:
	lsl r4, r0, #2
	ldr r4, [r1, r4]
	cmp r4, #4
	beq _0226C07A
	add r0, r0, #1
_0226C064:
	lsl r4, r0, #2
	ldrb r4, [r5, r4]
	cmp r0, r4
	bge _0226C070
	add r4, r3, #0
	b _0226C072
_0226C070:
	add r4, r2, #0
_0226C072:
	cmp r4, #0xff
	bne _0226C05A
_0226C076:
	mov r0, #0
	mvn r0, r0
_0226C07A:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226C080: .word 0x000006DC
_0226C084: .word 0x02270670
_0226C088: .word 0x022701EC
_0226C08C: .word 0x000006D8
_0226C090: .word 0x0000068B
_0226C094: .word 0x021BF67C
_0226C098: .word 0x000005DC
_0226C09C: .word 0x0000068F
	thumb_func_end ov16_0226BEC0

	thumb_func_start ov16_0226C0A0
ov16_0226C0A0: ; 0x0226C0A0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _0226C0F4 ; =0x0000068A
	ldr r0, [r5, #0]
	ldrb r1, [r5, r1]
	bl ov16_0223E1C4
	add r1, r0, #0
	cmp r4, #3
	bne _0226C0BE
	ldr r0, _0226C0F8 ; =0x000006E1
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0226C0F2
_0226C0BE:
	ldr r0, [r5, #0]
	bl ov16_0223DF14
	bl ov16_02263B0C
	mov r5, #0
	ldr r1, _0226C0FC ; =0x022701EC
	add r2, r5, #0
	b _0226C0EE
_0226C0D0:
	lsl r6, r5, #1
	add r6, r5, r6
	add r3, r2, #0
	add r7, r1, r6
	b _0226C0E8
_0226C0DA:
	ldrb r6, [r3, r7]
	cmp r4, r6
	bne _0226C0E6
	strb r3, [r0]
	strb r5, [r0, #1]
	pop {r3, r4, r5, r6, r7, pc}
_0226C0E6:
	add r3, r3, #1
_0226C0E8:
	cmp r3, #3
	blt _0226C0DA
	add r5, r5, #1
_0226C0EE:
	cmp r5, #2
	blt _0226C0D0
_0226C0F2:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C0F4: .word 0x0000068A
_0226C0F8: .word 0x000006E1
_0226C0FC: .word 0x022701EC
	thumb_func_end ov16_0226C0A0

	thumb_func_start ov16_0226C100
ov16_0226C100: ; 0x0226C100
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _0226C1E8 ; =0x000006DC
	ldr r2, _0226C1EC ; =0x02270670
	add r3, r0, #0
	sub r3, #0x51
	ldrsb r5, [r6, r3]
	mov r3, #0x30
	add r4, r6, r0
	mul r3, r5
	add r5, r2, r3
	cmp r1, #1
	bne _0226C162
	mov r1, #0
	strb r1, [r4, #2]
	strb r1, [r4, #1]
	mov r1, #1
	ldrsb r2, [r4, r1]
	mov r3, #2
	ldr r1, _0226C1F0 ; =0x022701CC
	ldrsb r3, [r4, r3]
	add r1, r1, r2
	sub r0, r0, #4
	ldrb r2, [r3, r1]
	ldr r1, [r5, #0x14]
	lsl r3, r2, #2
	add r1, r1, r3
	ldrb r1, [r1, #1]
	sub r1, #8
	str r1, [sp]
	mov r1, #0x11
	lsl r1, r1, #0x10
	str r1, [sp, #4]
	ldr r4, [r5, #0x14]
	ldr r0, [r6, r0]
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0226C162:
	ldr r3, _0226C1F0 ; =0x022701CC
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov16_0226CB10
	cmp r0, #0x20
	bhi _0226C188
	bhs _0226C194
	cmp r0, #2
	bhi _0226C182
	cmp r0, #1
	blo _0226C1E0
	beq _0226C1CE
	cmp r0, #2
	b _0226C1E0
_0226C182:
	cmp r0, #0x10
	beq _0226C194
	b _0226C1E0
_0226C188:
	cmp r0, #0x40
	bhi _0226C190
	beq _0226C194
	b _0226C1E0
_0226C190:
	cmp r0, #0x80
	bne _0226C1E0
_0226C194:
	mov r0, #1
	ldrsb r3, [r4, r0]
	mov r0, #2
	ldr r2, _0226C1F0 ; =0x022701CC
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r5, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	ldr r0, _0226C1F4 ; =0x000006D8
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	b _0226C1E0
_0226C1CE:
	mov r0, #1
	ldrsb r3, [r4, r0]
	mov r0, #2
	ldr r2, _0226C1F0 ; =0x022701CC
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	add sp, #8
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0226C1E0:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0226C1E8: .word 0x000006DC
_0226C1EC: .word 0x02270670
_0226C1F0: .word 0x022701CC
_0226C1F4: .word 0x000006D8
	thumb_func_end ov16_0226C100

	thumb_func_start ov16_0226C1F8
ov16_0226C1F8: ; 0x0226C1F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r7, r1, #0
	add r5, r0, #0
	ldr r1, _0226C364 ; =0x0000068A
	ldr r0, [r5, #0]
	ldrb r1, [r5, r1]
	bl ov16_0223E1C4
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223DF14
	bl ov16_02263B0C
	ldr r1, _0226C368 ; =0x000006DC
	add r3, r0, #0
	add r4, r5, r1
	sub r1, #0x51
	ldrsb r2, [r5, r1]
	mov r1, #0x30
	ldr r0, _0226C36C ; =0x02270670
	mul r1, r2
	add r2, r5, #0
	add r6, r0, r1
	add r2, #0x1c
	cmp r7, #1
	bne _0226C2A6
	mov r0, #2
	ldrsb r0, [r3, r0]
	strb r0, [r4, #2]
	mov r0, #3
	ldrsb r0, [r3, r0]
	strb r0, [r4, #1]
	mov r0, #1
	ldrsb r0, [r4, r0]
	lsl r1, r0, #1
	mov r0, #2
	ldrsb r7, [r4, r0]
	ldr r0, _0226C370 ; =0x022701E4
	add r0, r0, r1
	ldrb r0, [r7, r0]
	cmp r0, #0
	beq _0226C274
	sub r1, r0, #1
	lsl r1, r1, #1
	ldrh r1, [r2, r1]
	cmp r1, #0
	bne _0226C274
	mov r0, #0
	strb r0, [r3, #2]
	strb r0, [r3, #3]
	strb r0, [r4, #2]
	strb r0, [r4, #1]
	mov r0, #1
	ldrsb r0, [r4, r0]
	lsl r2, r0, #1
	mov r0, #2
	ldrsb r1, [r4, r0]
	ldr r0, _0226C370 ; =0x022701E4
	add r0, r0, r2
	ldrb r0, [r1, r0]
_0226C274:
	ldr r1, [r6, #0x14]
	lsl r3, r0, #2
	add r0, r1, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r6, #0x14]
	ldr r0, _0226C374 ; =0x000006D8
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r5, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	mov r0, #0
	add sp, #0x10
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0226C2A6:
	ldr r0, _0226C370 ; =0x022701E4
	add r1, sp, #8
	mov r2, #6
	bl sub_020C4DB0
	add r0, r4, #0
	mov r1, #2
	mov r2, #3
	add r3, sp, #8
	bl ov16_0226CB10
	cmp r0, #0x20
	bhi _0226C2D8
	bhs _0226C2E4
	cmp r0, #2
	bhi _0226C2D2
	cmp r0, #1
	blo _0226C35C
	beq _0226C320
	cmp r0, #2
	beq _0226C334
	b _0226C35C
_0226C2D2:
	cmp r0, #0x10
	beq _0226C2E4
	b _0226C35C
_0226C2D8:
	cmp r0, #0x40
	bhi _0226C2E0
	beq _0226C2E4
	b _0226C35C
_0226C2E0:
	cmp r0, #0x80
	bne _0226C35C
_0226C2E4:
	mov r0, #1
	ldrsb r0, [r4, r0]
	ldr r2, _0226C370 ; =0x022701E4
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r6, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r6, #0x14]
	ldr r0, _0226C374 ; =0x000006D8
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r5, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	b _0226C35C
_0226C320:
	mov r0, #1
	ldrsb r0, [r4, r0]
	ldr r2, _0226C370 ; =0x022701E4
	add sp, #0x10
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0226C334:
	mov r0, #0
	add r2, r0, #0
	mov r3, #1
	ldr r1, [r6, #0x18]
	ldr r5, [r6, #0x14]
	b _0226C34A
_0226C340:
	lsl r4, r0, #2
	ldr r4, [r1, r4]
	cmp r4, #0xff
	beq _0226C360
	add r0, r0, #1
_0226C34A:
	lsl r4, r0, #2
	ldrb r4, [r5, r4]
	cmp r0, r4
	bge _0226C356
	add r4, r3, #0
	b _0226C358
_0226C356:
	add r4, r2, #0
_0226C358:
	cmp r4, #0xff
	bne _0226C340
_0226C35C:
	mov r0, #0
	mvn r0, r0
_0226C360:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C364: .word 0x0000068A
_0226C368: .word 0x000006DC
_0226C36C: .word 0x02270670
_0226C370: .word 0x022701E4
_0226C374: .word 0x000006D8
	thumb_func_end ov16_0226C1F8

	thumb_func_start ov16_0226C378
ov16_0226C378: ; 0x0226C378
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	beq _0226C3BE
	ldr r1, _0226C3C0 ; =0x0000068A
	ldr r0, [r5, #0]
	ldrb r1, [r5, r1]
	bl ov16_0223E1C4
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223DF14
	bl ov16_02263B0C
	mov r3, #0
	ldr r7, _0226C3C4 ; =0x022701E4
	add r1, r3, #0
	b _0226C3BA
_0226C39E:
	lsl r5, r3, #1
	add r2, r1, #0
	add r6, r7, r5
	b _0226C3B4
_0226C3A6:
	ldrb r5, [r2, r6]
	cmp r4, r5
	bne _0226C3B2
	strb r2, [r0, #2]
	strb r3, [r0, #3]
	pop {r3, r4, r5, r6, r7, pc}
_0226C3B2:
	add r2, r2, #1
_0226C3B4:
	cmp r2, #2
	blt _0226C3A6
	add r3, r3, #1
_0226C3BA:
	cmp r3, #3
	blt _0226C39E
_0226C3BE:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C3C0: .word 0x0000068A
_0226C3C4: .word 0x022701E4
	thumb_func_end ov16_0226C378

	thumb_func_start ov16_0226C3C8
ov16_0226C3C8: ; 0x0226C3C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	str r1, [sp, #0x18]
	add r6, r0, #0
	ldr r1, _0226C6A8 ; =0x0000068A
	mov r0, #0
	str r0, [sp, #0x44]
	ldrb r1, [r6, r1]
	ldr r0, [r6, #0]
	bl ov16_0223E1C4
	add r1, r0, #0
	ldr r0, [r6, #0]
	bl ov16_0223DF14
	bl ov16_02263B0C
	ldr r1, _0226C6AC ; =0x000006DC
	str r0, [sp, #0x1c]
	add r7, r6, r1
	sub r1, #0x51
	ldrsb r2, [r6, r1]
	mov r1, #0x30
	ldr r0, _0226C6B0 ; =0x02270670
	mul r1, r2
	add r0, r0, r1
	str r0, [sp, #0x48]
	ldr r0, _0226C6B4 ; =0x022701DC
	add r1, sp, #0x50
	mov r2, #6
	bl sub_020C4DB0
	add r1, sp, #0x58
	add r0, r6, #0
	add r1, #2
	mov r2, #1
	bl ov16_0226B20C
	add r1, sp, #0x54
	add r0, r6, #0
	add r1, #2
	mov r2, #0
	bl ov16_0226B20C
	add r0, sp, #0x54
	mov r2, #0
	mov r4, #0xff
	add r0, #2
	b _0226C446
_0226C42A:
	lsl r5, r2, #1
	add r1, sp, #0x50
	mov r3, #0
	add r1, r1, r5
	b _0226C440
_0226C434:
	ldrb r5, [r3, r1]
	ldrb r5, [r0, r5]
	cmp r5, #0
	bne _0226C43E
	strb r4, [r3, r1]
_0226C43E:
	add r3, r3, #1
_0226C440:
	cmp r3, #2
	blt _0226C434
	add r2, r2, #1
_0226C446:
	cmp r2, #2
	blt _0226C42A
	ldr r0, _0226C6B8 ; =0x0000068C
	ldrb r0, [r6, r0]
	cmp r0, #0xb
	bhi _0226C476
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226C45E: ; jump table
	.short _0226C476 - _0226C45E - 2 ; case 0
	.short _0226C480 - _0226C45E - 2 ; case 1
	.short _0226C480 - _0226C45E - 2 ; case 2
	.short _0226C480 - _0226C45E - 2 ; case 3
	.short _0226C476 - _0226C45E - 2 ; case 4
	.short _0226C480 - _0226C45E - 2 ; case 5
	.short _0226C476 - _0226C45E - 2 ; case 6
	.short _0226C480 - _0226C45E - 2 ; case 7
	.short _0226C476 - _0226C45E - 2 ; case 8
	.short _0226C476 - _0226C45E - 2 ; case 9
	.short _0226C476 - _0226C45E - 2 ; case 10
	.short _0226C476 - _0226C45E - 2 ; case 11
_0226C476:
	mov r0, #2
	mov ip, r0
	mov r0, #3
	str r0, [sp, #0x4c]
	b _0226C65A
_0226C480:
	mov r0, #1
	str r0, [sp, #0x44]
	mov ip, r0
	mov r0, #2
	str r0, [sp, #0x4c]
	add r0, sp, #0x50
	ldrb r1, [r0, #9]
	cmp r1, #1
	bne _0226C4BA
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _0226C4BA
	ldr r0, [sp, #0x48]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0xe]
	ldrb r2, [r1, #0xd]
	str r0, [sp, #0x34]
	add r0, #8
	str r0, [sp, #0x34]
	ldrb r0, [r1, #7]
	sub r2, #8
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	ldrb r0, [r1, #0xc]
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
	b _0226C526
_0226C4BA:
	add r0, sp, #0x50
	ldrb r1, [r0, #9]
	cmp r1, #1
	bne _0226C4EA
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0226C4EA
	ldr r0, [sp, #0x48]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #0xe]
	ldrb r2, [r1, #0xd]
	str r0, [sp, #0x34]
	add r0, #8
	str r0, [sp, #0x34]
	ldrb r0, [r1, #0xf]
	sub r2, #8
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	ldrb r0, [r1, #0xc]
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
	b _0226C526
_0226C4EA:
	add r0, sp, #0x50
	ldrb r1, [r0, #9]
	cmp r1, #0
	bne _0226C51A
	ldrb r0, [r0, #7]
	cmp r0, #1
	bne _0226C51A
	ldr r0, [sp, #0x48]
	ldr r1, [r0, #0x14]
	ldrb r0, [r1, #6]
	ldrb r2, [r1, #5]
	str r0, [sp, #0x34]
	add r0, #8
	str r0, [sp, #0x34]
	ldrb r0, [r1, #7]
	sub r2, #8
	str r0, [sp, #0x30]
	sub r0, #8
	str r0, [sp, #0x30]
	ldrb r0, [r1, #4]
	str r0, [sp, #0x38]
	add r0, #8
	str r0, [sp, #0x38]
	b _0226C526
_0226C51A:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	str r0, [sp, #0x38]
	add r2, r0, #0
_0226C526:
	add r0, sp, #0x50
	ldrb r1, [r0, #6]
	cmp r1, #1
	bne _0226C54E
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0226C54E
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x14]
	ldrb r3, [r0, #2]
	ldrb r4, [r0, #0xb]
	ldrb r5, [r0]
	ldrb r0, [r0, #1]
	add r3, #8
	sub r4, #8
	str r0, [sp, #0x2c]
	sub r0, #8
	add r5, #8
	str r0, [sp, #0x2c]
	b _0226C5A8
_0226C54E:
	add r0, sp, #0x50
	ldrb r1, [r0, #6]
	cmp r1, #1
	bne _0226C576
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _0226C576
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x14]
	ldrb r3, [r0, #2]
	ldrb r4, [r0, #3]
	ldrb r5, [r0]
	ldrb r0, [r0, #1]
	add r3, #8
	sub r4, #8
	str r0, [sp, #0x2c]
	sub r0, #8
	add r5, #8
	str r0, [sp, #0x2c]
	b _0226C5A8
_0226C576:
	add r0, sp, #0x50
	ldrb r1, [r0, #6]
	cmp r1, #0
	bne _0226C59E
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _0226C59E
	ldr r0, [sp, #0x48]
	ldr r0, [r0, #0x14]
	ldrb r3, [r0, #0xa]
	ldrb r4, [r0, #0xb]
	ldrb r5, [r0, #8]
	ldrb r0, [r0, #9]
	add r3, #8
	sub r4, #8
	str r0, [sp, #0x2c]
	sub r0, #8
	add r5, #8
	str r0, [sp, #0x2c]
	b _0226C5A8
_0226C59E:
	mov r3, #0
	mvn r3, r3
	add r4, r3, #0
	add r5, r3, #0
	str r3, [sp, #0x2c]
_0226C5A8:
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #0x40]
	str r0, [sp, #0x3c]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x34]
	cmp r0, r3
	beq _0226C5DE
	add r1, r0, #0
	ldr r0, [sp, #0x40]
	cmp r1, r0
	beq _0226C5C6
	cmp r3, r0
	beq _0226C5DE
_0226C5C6:
	mov r1, #0
	ldr r0, [sp, #0x34]
	mvn r1, r1
	cmp r0, r1
	bne _0226C5D8
	cmp r3, r1
	beq _0226C5D8
	str r3, [sp, #0x34]
	b _0226C5DE
_0226C5D8:
	mov r0, #2
	str r3, [sp, #0x40]
	str r0, [sp, #0x20]
_0226C5DE:
	ldr r0, [sp, #0x30]
	cmp r0, r4
	beq _0226C608
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0226C5F0
	cmp r4, r1
	beq _0226C608
_0226C5F0:
	mov r1, #0
	ldr r0, [sp, #0x30]
	mvn r1, r1
	cmp r0, r1
	bne _0226C602
	cmp r4, r1
	beq _0226C602
	str r4, [sp, #0x30]
	b _0226C608
_0226C602:
	mov r0, #3
	str r4, [sp, #0x40]
	str r0, [sp, #0x20]
_0226C608:
	mov r1, #0
	ldr r0, [sp, #0x38]
	mvn r1, r1
	cmp r0, r1
	beq _0226C616
	cmp r5, r1
	beq _0226C62A
_0226C616:
	mov r1, #0
	ldr r0, [sp, #0x38]
	mvn r1, r1
	cmp r0, r1
	bne _0226C628
	cmp r5, r1
	beq _0226C628
	str r5, [sp, #0x38]
	b _0226C62A
_0226C628:
	str r2, [sp, #0x3c]
_0226C62A:
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	beq _0226C63C
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	bne _0226C63C
	str r2, [sp, #0x2c]
	b _0226C65A
_0226C63C:
	mov r1, #0
	mvn r1, r1
	cmp r2, r1
	bne _0226C64A
	ldr r0, [sp, #0x2c]
	cmp r0, r1
	bne _0226C65A
_0226C64A:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x20]
	cmp r0, #2
	bne _0226C658
	str r2, [sp, #0x24]
	b _0226C65A
_0226C658:
	str r2, [sp, #0x28]
_0226C65A:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	beq _0226C662
	b _0226C7CE
_0226C662:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0226C712
	ldr r0, [sp, #0x1c]
	mov r1, #6
	ldrsb r1, [r0, r1]
	ldr r0, _0226C6B8 ; =0x0000068C
	ldrb r0, [r6, r0]
	cmp r1, r0
	bne _0226C688
	ldr r0, [sp, #0x1c]
	mov r1, #4
	ldrsb r0, [r0, r1]
	mov r1, #5
	strb r0, [r7, #2]
	ldr r0, [sp, #0x1c]
	ldrsb r0, [r0, r1]
	strb r0, [r7, #1]
	b _0226C6D2
_0226C688:
	add r0, sp, #0x50
	ldrb r1, [r0, #0xd]
	cmp r1, #1
	bne _0226C698
	mov r0, #0
	strb r0, [r7, #2]
	strb r0, [r7, #1]
	b _0226C6D2
_0226C698:
	ldrb r1, [r0, #0xb]
	cmp r1, #1
	bne _0226C6BC
	mov r0, #1
	strb r0, [r7, #2]
	mov r0, #0
	strb r0, [r7, #1]
	b _0226C6D2
	; .align 2, 0
_0226C6A8: .word 0x0000068A
_0226C6AC: .word 0x000006DC
_0226C6B0: .word 0x02270670
_0226C6B4: .word 0x022701DC
_0226C6B8: .word 0x0000068C
_0226C6BC:
	ldrb r0, [r0, #0xa]
	cmp r0, #1
	bne _0226C6CC
	mov r0, #0
	strb r0, [r7, #2]
	mov r0, #1
	strb r0, [r7, #1]
	b _0226C6D2
_0226C6CC:
	mov r0, #1
	strb r0, [r7, #2]
	strb r0, [r7, #1]
_0226C6D2:
	mov r0, #1
	ldrsb r0, [r7, r0]
	ldr r2, _0226C9B0 ; =0x022701DC
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r7, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x48]
	lsl r3, r1, #2
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x48]
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r1, #0x14]
	ldr r0, _0226C9B4 ; =0x000006D8
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	b _0226C7C6
_0226C712:
	mov r2, #0
	strb r2, [r7, #2]
	ldr r0, [sp, #0x24]
	sub r1, r2, #1
	strb r2, [r7, #1]
	cmp r0, r1
	bne _0226C726
	ldr r0, [sp, #0x28]
	cmp r0, r1
	beq _0226C730
_0226C726:
	mov r1, #0
	ldr r0, [sp, #0x40]
	mvn r1, r1
	cmp r0, r1
	bne _0226C74A
_0226C730:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r2, [sp, #0x30]
	ldr r0, [r6, r0]
	ldr r3, [sp, #0x38]
	bl ov16_0226DD9C
	b _0226C7A8
_0226C74A:
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _0226C780
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _0226C780
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r0, [r6, r0]
	bl ov16_0226DCCC
	b _0226C7A8
_0226C780:
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x10]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r0, [r6, r0]
	bl ov16_0226DCCC
_0226C7A8:
	mov r1, #0
	ldr r0, [sp, #0x40]
	mvn r1, r1
	cmp r0, r1
	beq _0226C7C6
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r1, [sp, #0x40]
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x20]
	bl ov16_0226DDC0
_0226C7C6:
	mov r0, #0
	add sp, #0x60
	mvn r0, r0
	pop {r3, r4, r5, r6, r7, pc}
_0226C7CE:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0226C7E2
	ldr r2, [sp, #0x4c]
	add r0, r7, #0
	mov r1, ip
	add r3, sp, #0x50
	bl ov16_0226CB10
	b _0226C7EE
_0226C7E2:
	ldr r2, [sp, #0x4c]
	add r0, r7, #0
	mov r1, ip
	mov r3, #0
	bl ov16_0226CB10
_0226C7EE:
	cmp r0, #0x20
	bhi _0226C80E
	bhs _0226C81C
	cmp r0, #2
	bhi _0226C808
	cmp r0, #1
	blo _0226C806
	bne _0226C800
	b _0226C956
_0226C800:
	cmp r0, #2
	bne _0226C806
	b _0226C9A2
_0226C806:
	b _0226C9A8
_0226C808:
	cmp r0, #0x10
	beq _0226C81C
	b _0226C9A8
_0226C80E:
	cmp r0, #0x40
	bhi _0226C816
	beq _0226C81C
	b _0226C9A8
_0226C816:
	cmp r0, #0x80
	beq _0226C81C
	b _0226C9A8
_0226C81C:
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0226C862
	mov r0, #1
	ldrsb r0, [r7, r0]
	ldr r2, _0226C9B0 ; =0x022701DC
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r7, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x48]
	lsl r3, r1, #2
	ldr r0, [r0, #0x14]
	ldr r1, [sp, #0x48]
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r1, #0x14]
	ldr r0, _0226C9B4 ; =0x000006D8
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	b _0226C9A8
_0226C862:
	mov r2, #1
	ldrsb r0, [r7, r2]
	cmp r0, #0
	bne _0226C924
	ldr r0, [sp, #0x28]
	sub r1, r2, #2
	cmp r0, r1
	bne _0226C878
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _0226C882
_0226C878:
	mov r1, #0
	ldr r0, [sp, #0x40]
	mvn r1, r1
	cmp r0, r1
	bne _0226C89C
_0226C882:
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r2, [sp, #0x30]
	ldr r0, [r6, r0]
	ldr r3, [sp, #0x38]
	bl ov16_0226DD9C
	b _0226C8FA
_0226C89C:
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _0226C8D2
	ldr r0, [sp, #0x28]
	cmp r0, r1
	bne _0226C8D2
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x10]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r0, [r6, r0]
	bl ov16_0226DCCC
	b _0226C8FA
_0226C8D2:
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x10]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r0, [r6, r0]
	bl ov16_0226DCCC
_0226C8FA:
	mov r1, #0
	ldr r0, [sp, #0x40]
	mvn r1, r1
	cmp r0, r1
	beq _0226C91A
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r1, [sp, #0x40]
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x3c]
	ldr r3, [sp, #0x20]
	bl ov16_0226DDC0
	b _0226C9A8
_0226C91A:
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r0, [r6, r0]
	bl ov16_0226DE04
	b _0226C9A8
_0226C924:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x48]
	ldr r0, [r0, #0x14]
	ldrb r0, [r0, #0x11]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r3, [r1, #0x14]
	ldr r0, _0226C9B4 ; =0x000006D8
	ldrb r1, [r3, #0x12]
	ldrb r2, [r3, #0x13]
	ldrb r3, [r3, #0x10]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	ldr r0, _0226C9B4 ; =0x000006D8
	ldr r0, [r6, r0]
	bl ov16_0226DE04
	b _0226C9A8
_0226C956:
	ldr r0, [sp, #0x44]
	cmp r0, #1
	bne _0226C980
	mov r0, #1
	ldrsb r0, [r7, r0]
	cmp r0, #0
	ble _0226C96A
	add sp, #0x60
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0226C96A:
	add r2, sp, #0x58
	mov r0, #0
	add r2, #2
	b _0226C97A
_0226C972:
	ldrb r1, [r2, r0]
	cmp r1, #1
	beq _0226C9AC
	add r0, r0, #1
_0226C97A:
	cmp r0, #4
	blt _0226C972
	b _0226C9A8
_0226C980:
	mov r0, #1
	ldrsb r0, [r7, r0]
	ldr r2, _0226C9B0 ; =0x022701DC
	lsl r3, r0, #1
	mov r0, #2
	ldrsb r1, [r7, r0]
	add r0, r2, r3
	ldrb r0, [r1, r0]
	cmp r0, #4
	beq _0226C9AC
	add r1, sp, #0x58
	add r1, #2
	ldrb r1, [r1, r0]
	cmp r1, #1
	bne _0226C9A8
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
_0226C9A2:
	add sp, #0x60
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0226C9A8:
	mov r0, #0
	mvn r0, r0
_0226C9AC:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226C9B0: .word 0x022701DC
_0226C9B4: .word 0x000006D8
	thumb_func_end ov16_0226C3C8

	thumb_func_start ov16_0226C9B8
ov16_0226C9B8: ; 0x0226C9B8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #4
	beq _0226CA06
	ldr r1, _0226CA08 ; =0x0000068A
	ldr r0, [r5, #0]
	ldrb r1, [r5, r1]
	bl ov16_0223E1C4
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl ov16_0223DF14
	bl ov16_02263B0C
	ldr r1, _0226CA0C ; =0x0000068C
	mov r3, #0
	ldrb r1, [r5, r1]
	ldr r7, _0226CA10 ; =0x022701DC
	strb r1, [r0, #6]
	add r1, r3, #0
	b _0226CA02
_0226C9E6:
	lsl r5, r3, #1
	add r2, r1, #0
	add r6, r7, r5
	b _0226C9FC
_0226C9EE:
	ldrb r5, [r2, r6]
	cmp r4, r5
	bne _0226C9FA
	strb r2, [r0, #4]
	strb r3, [r0, #5]
	pop {r3, r4, r5, r6, r7, pc}
_0226C9FA:
	add r2, r2, #1
_0226C9FC:
	cmp r2, #2
	blt _0226C9EE
	add r3, r3, #1
_0226CA02:
	cmp r3, #3
	blt _0226C9E6
_0226CA06:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226CA08: .word 0x0000068A
_0226CA0C: .word 0x0000068C
_0226CA10: .word 0x022701DC
	thumb_func_end ov16_0226C9B8

	thumb_func_start ov16_0226CA14
ov16_0226CA14: ; 0x0226CA14
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r0, _0226CB00 ; =0x000006DC
	ldr r2, _0226CB04 ; =0x02270670
	add r3, r0, #0
	sub r3, #0x51
	ldrsb r5, [r6, r3]
	mov r3, #0x30
	add r4, r6, r0
	mul r3, r5
	add r5, r2, r3
	cmp r1, #1
	bne _0226CA70
	mov r1, #1
	ldrsb r2, [r4, r1]
	mov r3, #2
	ldr r1, _0226CB08 ; =0x022701C8
	ldrsb r3, [r4, r3]
	add r1, r1, r2
	sub r0, r0, #4
	ldrb r2, [r3, r1]
	ldr r1, [r5, #0x14]
	lsl r3, r2, #2
	add r1, r1, r3
	ldrb r1, [r1, #1]
	sub r1, #8
	str r1, [sp]
	mov r1, #0x11
	lsl r1, r1, #0x10
	str r1, [sp, #4]
	ldr r4, [r5, #0x14]
	ldr r0, [r6, r0]
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_0226CA70:
	ldr r3, _0226CB08 ; =0x022701C8
	add r0, r4, #0
	mov r1, #1
	mov r2, #2
	bl ov16_0226CB10
	cmp r0, #0x20
	bhi _0226CA98
	bhs _0226CAA4
	cmp r0, #2
	bhi _0226CA92
	cmp r0, #1
	blo _0226CAF6
	beq _0226CADE
	cmp r0, #2
	beq _0226CAF0
	b _0226CAF6
_0226CA92:
	cmp r0, #0x10
	beq _0226CAA4
	b _0226CAF6
_0226CA98:
	cmp r0, #0x40
	bhi _0226CAA0
	beq _0226CAA4
	b _0226CAF6
_0226CAA0:
	cmp r0, #0x80
	bne _0226CAF6
_0226CAA4:
	mov r0, #1
	ldrsb r3, [r4, r0]
	mov r0, #2
	ldr r2, _0226CB08 ; =0x022701C8
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	ldrb r1, [r1, r0]
	ldr r0, [r5, #0x14]
	lsl r3, r1, #2
	add r0, r0, r3
	ldrb r0, [r0, #1]
	sub r0, #8
	str r0, [sp]
	mov r0, #0x11
	lsl r0, r0, #0x10
	str r0, [sp, #4]
	ldr r4, [r5, #0x14]
	ldr r0, _0226CB0C ; =0x000006D8
	add r2, r4, r3
	ldrb r1, [r2, #2]
	ldrb r2, [r2, #3]
	ldrb r3, [r4, r3]
	ldr r0, [r6, r0]
	add r1, #8
	sub r2, #8
	add r3, #8
	bl ov16_0226DD9C
	b _0226CAF6
_0226CADE:
	mov r0, #1
	ldrsb r3, [r4, r0]
	mov r0, #2
	ldr r2, _0226CB08 ; =0x022701C8
	ldrsb r1, [r4, r0]
	add r0, r2, r3
	add sp, #8
	ldrb r0, [r1, r0]
	pop {r4, r5, r6, pc}
_0226CAF0:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0226CAF6:
	mov r0, #0
	mvn r0, r0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0226CB00: .word 0x000006DC
_0226CB04: .word 0x02270670
_0226CB08: .word 0x022701C8
_0226CB0C: .word 0x000006D8
	thumb_func_end ov16_0226CA14

	thumb_func_start ov16_0226CB10
ov16_0226CB10: ; 0x0226CB10
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	mov r1, #2
	ldrsb r1, [r0, r1]
	add r6, r2, #0
	add r2, r3, #0
	cmp r1, r4
	blt _0226CB24
	sub r1, r4, #1
	strb r1, [r0, #2]
_0226CB24:
	mov r1, #1
	ldrsb r1, [r0, r1]
	cmp r1, r6
	blt _0226CB30
	sub r1, r6, #1
	strb r1, [r0, #1]
_0226CB30:
	mov r7, #2
	ldrsb r1, [r0, r7]
	mov r5, #1
	mov r3, #0x40
	str r1, [sp]
	ldrsb r1, [r0, r5]
	mov ip, r1
	ldr r1, _0226CD00 ; =0x021BF67C
	ldr r1, [r1, #0x48]
	tst r3, r1
	beq _0226CB96
	mov r1, ip
	sub r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, #0
	bge _0226CB56
	mov r1, #0
	strb r1, [r0, #1]
_0226CB56:
	cmp r2, #0
	beq _0226CB92
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0226CB92
	add r1, r0, #1
	mov r7, #0
	mov r6, #1
_0226CB72:
	ldrsb r3, [r1, r7]
	sub r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _0226CB84
	mov r1, ip
	strb r1, [r0, #1]
	b _0226CB92
_0226CB84:
	mov r5, #2
	ldrsb r5, [r0, r5]
	mul r3, r4
	add r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _0226CB72
_0226CB92:
	mov r5, #0x40
	b _0226CCAA
_0226CB96:
	mov r3, #0x80
	tst r3, r1
	beq _0226CBEC
	mov r1, ip
	add r1, r1, #1
	strb r1, [r0, #1]
	ldrsb r1, [r0, r5]
	cmp r1, r6
	blt _0226CBAC
	sub r1, r6, #1
	strb r1, [r0, #1]
_0226CBAC:
	cmp r2, #0
	beq _0226CBE8
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0226CBE8
	add r1, r0, #1
	mov r7, #1
_0226CBC6:
	mov r3, #0
	ldrsb r3, [r1, r3]
	add r3, r3, #1
	strb r3, [r1]
	ldrsb r3, [r0, r7]
	cmp r3, r6
	blt _0226CBDA
	mov r1, ip
	strb r1, [r0, #1]
	b _0226CBE8
_0226CBDA:
	mov r5, #2
	ldrsb r5, [r0, r5]
	mul r3, r4
	add r5, r2, r5
	ldrb r3, [r3, r5]
	cmp r3, #0xff
	beq _0226CBC6
_0226CBE8:
	mov r5, #0x80
	b _0226CCAA
_0226CBEC:
	mov r3, #0x20
	tst r3, r1
	beq _0226CC42
	ldr r1, [sp]
	sub r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, #0
	bge _0226CC02
	mov r1, #0
	strb r1, [r0, #2]
_0226CC02:
	cmp r2, #0
	beq _0226CC3E
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0226CC3E
	add r5, r0, #2
	mov r7, #0
	mov r6, #2
_0226CC1E:
	ldrsb r1, [r5, r7]
	sub r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, #0
	bge _0226CC30
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _0226CC3E
_0226CC30:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r3, r2, r3
	mul r1, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _0226CC1E
_0226CC3E:
	mov r5, #0x20
	b _0226CCAA
_0226CC42:
	mov r3, #0x10
	tst r3, r1
	beq _0226CC98
	ldr r1, [sp]
	add r1, r1, #1
	strb r1, [r0, #2]
	ldrsb r1, [r0, r7]
	cmp r1, r4
	blt _0226CC58
	sub r1, r4, #1
	strb r1, [r0, #2]
_0226CC58:
	cmp r2, #0
	beq _0226CC94
	mov r3, #1
	mov r1, #2
	ldrsb r3, [r0, r3]
	ldrsb r1, [r0, r1]
	mul r3, r4
	add r1, r1, r3
	ldrb r1, [r2, r1]
	cmp r1, #0xff
	bne _0226CC94
	add r5, r0, #2
	mov r7, #0
	mov r6, #2
_0226CC74:
	ldrsb r1, [r5, r7]
	add r1, r1, #1
	strb r1, [r5]
	ldrsb r3, [r0, r6]
	cmp r3, r4
	blt _0226CC86
	ldr r1, [sp]
	strb r1, [r0, #2]
	b _0226CC94
_0226CC86:
	mov r1, #1
	ldrsb r1, [r0, r1]
	add r3, r2, r3
	mul r1, r4
	ldrb r1, [r1, r3]
	cmp r1, #0xff
	beq _0226CC74
_0226CC94:
	mov r5, #0x10
	b _0226CCAA
_0226CC98:
	add r3, r1, #0
	tst r3, r5
	bne _0226CCAA
	tst r1, r7
	beq _0226CCA6
	add r5, r7, #0
	b _0226CCAA
_0226CCA6:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226CCAA:
	cmp r2, #0
	beq _0226CCD4
	mov r1, ip
	add r3, r4, #0
	mul r3, r1
	ldr r1, [sp]
	add r1, r1, r3
	mov r3, #2
	ldrsb r6, [r0, r3]
	mov r3, #1
	ldrsb r3, [r0, r3]
	ldrb r1, [r2, r1]
	mul r3, r4
	add r3, r6, r3
	ldrb r2, [r2, r3]
	cmp r1, r2
	bne _0226CCD4
	ldr r1, [sp]
	strb r1, [r0, #2]
	mov r1, ip
	strb r1, [r0, #1]
_0226CCD4:
	mov r1, #2
	ldrsb r2, [r0, r1]
	ldr r1, [sp]
	cmp r2, r1
	bne _0226CCE8
	mov r1, #1
	ldrsb r1, [r0, r1]
	mov r0, ip
	cmp r1, r0
	beq _0226CCF0
_0226CCE8:
	ldr r0, _0226CD04 ; =0x000005DC
	bl sub_02005748
	b _0226CCFA
_0226CCF0:
	mov r0, #0xf0
	tst r0, r5
	beq _0226CCFA
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226CCFA:
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226CD00: .word 0x021BF67C
_0226CD04: .word 0x000005DC
	thumb_func_end ov16_0226CB10

	thumb_func_start ov16_0226CD08
ov16_0226CD08: ; 0x0226CD08
	mov r1, #0x6e
	lsl r1, r1, #4
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov16_0226CD08

	thumb_func_start ov16_0226CD10
ov16_0226CD10: ; 0x0226CD10
	mov r2, #0x6e
	lsl r2, r2, #4
	strb r1, [r0, r2]
	bx lr
	thumb_func_end ov16_0226CD10

	thumb_func_start ov16_0226CD18
ov16_0226CD18: ; 0x0226CD18
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov16_0223E010
	ldr r0, [r4, #0]
	bl ov16_0223E018
	ldr r0, [r4, #0]
	bl ov16_0223E064
	ldr r0, [r4, #0]
	bl ov16_0223F228
	cmp r0, #0
	bne _0226CD54
	ldr r0, _0226CD78 ; =0x000006E8
	ldrb r0, [r4, r0]
	cmp r0, #2
	blo _0226CD44
	bl sub_02022974
_0226CD44:
	ldr r1, _0226CD78 ; =0x000006E8
	add r0, r4, #0
	ldrb r1, [r4, r1]
	lsl r2, r1, #2
	ldr r1, _0226CD7C ; =0x0227020C
	ldr r1, [r1, r2]
	blx r1
	b _0226CD5A
_0226CD54:
	add r0, r4, #0
	bl ov16_0226CE34
_0226CD5A:
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0226CD76
	ldr r1, _0226CD80 ; =0x000006E9
	mov r3, #0
	strb r3, [r4, r1]
	add r2, r1, #1
	strb r3, [r4, r2]
	sub r2, r1, #1
	ldrb r2, [r4, r2]
	sub r1, r1, #1
	add r2, r2, #1
	strb r2, [r4, r1]
_0226CD76:
	pop {r4, pc}
	; .align 2, 0
_0226CD78: .word 0x000006E8
_0226CD7C: .word 0x0227020C
_0226CD80: .word 0x000006E9
	thumb_func_end ov16_0226CD18

	thumb_func_start ov16_0226CD84
ov16_0226CD84: ; 0x0226CD84
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0226CDD4 ; =0x000006E9
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0226CDB4
	sub r0, r0, #5
	mov r3, #0x11
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x3c
	lsl r3, r3, #0x10
	bl ov16_0226DF80
	ldr r0, _0226CDD8 ; =0x000006E4
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl ov16_0226DFD0
	ldr r0, _0226CDD4 ; =0x000006E9
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0226CDCC
_0226CDB4:
	sub r0, r0, #5
	ldr r0, [r4, r0]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _0226CDCC
	ldr r0, _0226CDD4 ; =0x000006E9
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #0
	pop {r4, pc}
_0226CDCC:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0226CDD4: .word 0x000006E9
_0226CDD8: .word 0x000006E4
	thumb_func_end ov16_0226CD84

	thumb_func_start ov16_0226CDDC
ov16_0226CDDC: ; 0x0226CDDC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0226CE2C ; =0x000006E9
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0226CE0C
	sub r0, r0, #5
	mov r3, #0x11
	ldr r0, [r4, r0]
	mov r1, #0x40
	mov r2, #0x16
	lsl r3, r3, #0x10
	bl ov16_0226DF80
	ldr r0, _0226CE30 ; =0x000006E4
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl ov16_0226DFD0
	ldr r0, _0226CE2C ; =0x000006E9
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0226CE24
_0226CE0C:
	sub r0, r0, #5
	ldr r0, [r4, r0]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _0226CE24
	ldr r0, _0226CE2C ; =0x000006E9
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0226CE24:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0226CE2C: .word 0x000006E9
_0226CE30: .word 0x000006E4
	thumb_func_end ov16_0226CDDC

	thumb_func_start ov16_0226CE34
ov16_0226CE34: ; 0x0226CE34
	push {r4, lr}
	ldr r1, _0226CEA8 ; =0x000006E9
	add r4, r0, #0
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0226CE46
	cmp r0, #1
	beq _0226CE64
	b _0226CE88
_0226CE46:
	add r0, r1, #1
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x3c
	bls _0226CEA0
	mov r2, #0
	add r0, r1, #1
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
	b _0226CEA0
_0226CE64:
	sub r0, r1, #5
	mov r3, #0x11
	ldr r0, [r4, r0]
	mov r1, #0x28
	mov r2, #0x92
	lsl r3, r3, #0x10
	bl ov16_0226DF80
	ldr r0, _0226CEAC ; =0x000006E4
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl ov16_0226DFD0
	ldr r0, _0226CEA8 ; =0x000006E9
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	b _0226CEA0
_0226CE88:
	sub r0, r1, #5
	ldr r0, [r4, r0]
	bl ov16_0226DFD4
	cmp r0, #1
	bne _0226CEA0
	ldr r0, _0226CEA8 ; =0x000006E9
	ldrb r1, [r4, r0]
	add r1, r1, #1
	strb r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0226CEA0:
	mov r0, #0
	mvn r0, r0
	pop {r4, pc}
	nop
_0226CEA8: .word 0x000006E9
_0226CEAC: .word 0x000006E4
	thumb_func_end ov16_0226CE34

	thumb_func_start ov16_0226CEB0
ov16_0226CEB0: ; 0x0226CEB0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	str r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	add r4, r1, #0
	bl ov16_0223DF00
	add r5, r0, #0
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	bl ov16_0223E064
	add r6, r0, #0
	ldr r1, _0226D074 ; =0x0000068B
	ldr r0, [sp, #0x1c]
	ldrsb r0, [r0, r1]
	cmp r0, #0x12
	beq _0226CED8
	bl sub_02022974
_0226CED8:
	mov r0, #0
	str r0, [sp]
	mov r1, #5
	add r0, r5, #0
	mov r2, #0x20
	mov r3, #1
	str r1, [sp, #4]
	bl sub_0200DAA4
	add r0, r6, #0
	mov r1, #1
	mov r2, #0x10
	mov r3, #0x20
	bl sub_02003070
	mov r0, #6
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x20
	str r3, [sp, #0xc]
	bl sub_02019CB8
	mov r0, #6
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x21
	mov r3, #2
	bl sub_02019CB8
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x22
	mov r3, #0x1e
	bl sub_02019CB8
	mov r0, #7
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x23
	str r3, [sp, #0xc]
	bl sub_02019CB8
	mov r0, #7
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x25
	mov r3, #0x1e
	bl sub_02019CB8
	mov r0, #0xb
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x26
	str r3, [sp, #0xc]
	bl sub_02019CB8
	mov r0, #0xb
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x27
	mov r3, #2
	bl sub_02019CB8
	mov r0, #0xb
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x28
	mov r3, #0x1e
	bl sub_02019CB8
	mov r0, #7
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	add r0, r5, #0
	mov r1, #5
	mov r2, #0x24
	mov r3, #2
	bl sub_02019CB8
	add r0, r5, #0
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0]
	bl ov16_0223E05C
	ldr r2, _0226D078 ; =0x02270208
	str r0, [sp, #0x20]
	ldrh r3, [r2, #0x2c]
	add r1, sp, #0x2c
	add r0, sp, #0x2c
	strh r3, [r1]
	ldrh r3, [r2, #0x2e]
	ldr r6, [sp, #0x1c]
	mov r7, #0
	strh r3, [r1, #2]
	ldrh r3, [r2, #0x30]
	mov r5, #0x40
	strh r3, [r1, #4]
	ldrh r3, [r2, #0x32]
	strh r3, [r1, #6]
	ldrh r3, [r2, #0x34]
	ldrh r2, [r2, #0x36]
	strh r3, [r1, #8]
	strh r2, [r1, #0xa]
	lsl r1, r4, #2
	add r4, r0, r1
	mov r1, #0x4d
	lsl r1, r1, #4
	add r0, r6, #0
	add r0, r0, r1
	str r0, [sp, #0x28]
_0226D018:
	ldr r0, _0226D07C ; =0x000004E4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0226D028
	bl sub_02022974
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
_0226D028:
	ldrh r1, [r4]
	ldr r0, [sp, #0x20]
	bl sub_0200B1EC
	str r0, [sp, #0x24]
	ldr r0, _0226D080 ; =0x00010200
	add r1, r7, #1
	str r0, [sp]
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, _0226D084 ; =0x00004E37
	mov r2, #0x14
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mul r2, r1
	ldr r1, [sp, #0x28]
	str r5, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	add r1, r1, r2
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	mov r3, #0
	bl ov16_0226A98C
	ldr r0, [sp, #0x24]
	bl sub_020237BC
	add r7, r7, #1
	add r6, #0x14
	add r4, r4, #2
	add r5, #0x10
	cmp r7, #2
	blt _0226D018
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0226D074: .word 0x0000068B
_0226D078: .word 0x02270208
_0226D07C: .word 0x000004E4
_0226D080: .word 0x00010200
_0226D084: .word 0x00004E37
	thumb_func_end ov16_0226CEB0

	thumb_func_start ov16_0226D088
ov16_0226D088: ; 0x0226D088
	ldr r1, _0226D090 ; =0x000006E1
	ldrb r0, [r0, r1]
	bx lr
	nop
_0226D090: .word 0x000006E1
	thumb_func_end ov16_0226D088

	.rodata


	.global Unk_ov16_022701C4
Unk_ov16_022701C4: ; 0x022701C4
	.incbin "incbin/overlay16_rodata.bin", 0x1F68, 0x1F6C - 0x1F68

	.global Unk_ov16_022701C8
Unk_ov16_022701C8: ; 0x022701C8
	.incbin "incbin/overlay16_rodata.bin", 0x1F6C, 0x1F70 - 0x1F6C

	.global Unk_ov16_022701CC
Unk_ov16_022701CC: ; 0x022701CC
	.incbin "incbin/overlay16_rodata.bin", 0x1F70, 0x1F74 - 0x1F70

	.global Unk_ov16_022701D0
Unk_ov16_022701D0: ; 0x022701D0
	.incbin "incbin/overlay16_rodata.bin", 0x1F74, 0x1F78 - 0x1F74

	.global Unk_ov16_022701D4
Unk_ov16_022701D4: ; 0x022701D4
	.incbin "incbin/overlay16_rodata.bin", 0x1F78, 0x1F7C - 0x1F78

	.global Unk_ov16_022701D8
Unk_ov16_022701D8: ; 0x022701D8
	.incbin "incbin/overlay16_rodata.bin", 0x1F7C, 0x1F80 - 0x1F7C

	.global Unk_ov16_022701DC
Unk_ov16_022701DC: ; 0x022701DC
	.incbin "incbin/overlay16_rodata.bin", 0x1F80, 0x1F88 - 0x1F80

	.global Unk_ov16_022701E4
Unk_ov16_022701E4: ; 0x022701E4
	.incbin "incbin/overlay16_rodata.bin", 0x1F88, 0x1F90 - 0x1F88

	.global Unk_ov16_022701EC
Unk_ov16_022701EC: ; 0x022701EC
	.incbin "incbin/overlay16_rodata.bin", 0x1F90, 0x1F98 - 0x1F90

	.global Unk_ov16_022701F4
Unk_ov16_022701F4: ; 0x022701F4
	.incbin "incbin/overlay16_rodata.bin", 0x1F98, 0x1FA0 - 0x1F98

	.global Unk_ov16_022701FC
Unk_ov16_022701FC: ; 0x022701FC
	.incbin "incbin/overlay16_rodata.bin", 0x1FA0, 0x1FA8 - 0x1FA0

	.global Unk_ov16_02270204
Unk_ov16_02270204: ; 0x02270204
	.incbin "incbin/overlay16_rodata.bin", 0x1FA8, 0x1FB0 - 0x1FA8

	.global Unk_ov16_0227020C
Unk_ov16_0227020C: ; 0x0227020C
	.incbin "incbin/overlay16_rodata.bin", 0x1FB0, 0x1FB8 - 0x1FB0

	.global Unk_ov16_02270214
Unk_ov16_02270214: ; 0x02270214
	.incbin "incbin/overlay16_rodata.bin", 0x1FB8, 0x1FC0 - 0x1FB8

	.global Unk_ov16_0227021C
Unk_ov16_0227021C: ; 0x0227021C
	.incbin "incbin/overlay16_rodata.bin", 0x1FC0, 0x1FC8 - 0x1FC0

	.global Unk_ov16_02270224
Unk_ov16_02270224: ; 0x02270224
	.incbin "incbin/overlay16_rodata.bin", 0x1FC8, 0x1FD0 - 0x1FC8

	.global Unk_ov16_0227022C
Unk_ov16_0227022C: ; 0x0227022C
	.incbin "incbin/overlay16_rodata.bin", 0x1FD0, 0x1FD8 - 0x1FD0

	.global Unk_ov16_02270234
Unk_ov16_02270234: ; 0x02270234
	.incbin "incbin/overlay16_rodata.bin", 0x1FD8, 0x1FE4 - 0x1FD8

	.global Unk_ov16_02270240
Unk_ov16_02270240: ; 0x02270240
	.incbin "incbin/overlay16_rodata.bin", 0x1FE4, 0x1FF0 - 0x1FE4

	.global Unk_ov16_0227024C
Unk_ov16_0227024C: ; 0x0227024C
	.incbin "incbin/overlay16_rodata.bin", 0x1FF0, 0x1FFC - 0x1FF0

	.global Unk_ov16_02270258
Unk_ov16_02270258: ; 0x02270258
	.incbin "incbin/overlay16_rodata.bin", 0x1FFC, 0x2008 - 0x1FFC

	.global Unk_ov16_02270264
Unk_ov16_02270264: ; 0x02270264
	.incbin "incbin/overlay16_rodata.bin", 0x2008, 0x2018 - 0x2008

	.global Unk_ov16_02270274
Unk_ov16_02270274: ; 0x02270274
	.incbin "incbin/overlay16_rodata.bin", 0x2018, 0x2028 - 0x2018

	.global Unk_ov16_02270284
Unk_ov16_02270284: ; 0x02270284
	.incbin "incbin/overlay16_rodata.bin", 0x2028, 0x2038 - 0x2028

	.global Unk_ov16_02270294
Unk_ov16_02270294: ; 0x02270294
	.incbin "incbin/overlay16_rodata.bin", 0x2038, 0x2048 - 0x2038

	.global Unk_ov16_022702A4
Unk_ov16_022702A4: ; 0x022702A4
	.incbin "incbin/overlay16_rodata.bin", 0x2048, 0x2058 - 0x2048

	.global Unk_ov16_022702B4
Unk_ov16_022702B4: ; 0x022702B4
	.incbin "incbin/overlay16_rodata.bin", 0x2058, 0x2068 - 0x2058

	.global Unk_ov16_022702C4
Unk_ov16_022702C4: ; 0x022702C4
	.incbin "incbin/overlay16_rodata.bin", 0x2068, 0x2078 - 0x2068

	.global Unk_ov16_022702D4
Unk_ov16_022702D4: ; 0x022702D4
	.incbin "incbin/overlay16_rodata.bin", 0x2078, 0x2088 - 0x2078

	.global Unk_ov16_022702E4
Unk_ov16_022702E4: ; 0x022702E4
	.incbin "incbin/overlay16_rodata.bin", 0x2088, 0x2098 - 0x2088

	.global Unk_ov16_022702F4
Unk_ov16_022702F4: ; 0x022702F4
	.incbin "incbin/overlay16_rodata.bin", 0x2098, 0x20A8 - 0x2098

	.global Unk_ov16_02270304
Unk_ov16_02270304: ; 0x02270304
	.incbin "incbin/overlay16_rodata.bin", 0x20A8, 0x20B8 - 0x20A8

	.global Unk_ov16_02270314
Unk_ov16_02270314: ; 0x02270314
	.incbin "incbin/overlay16_rodata.bin", 0x20B8, 0x20CC - 0x20B8

	.global Unk_ov16_02270328
Unk_ov16_02270328: ; 0x02270328
	.incbin "incbin/overlay16_rodata.bin", 0x20CC, 0x20E0 - 0x20CC

	.global Unk_ov16_0227033C
Unk_ov16_0227033C: ; 0x0227033C
	.incbin "incbin/overlay16_rodata.bin", 0x20E0, 0x20F4 - 0x20E0

	.global Unk_ov16_02270350
Unk_ov16_02270350: ; 0x02270350
	.incbin "incbin/overlay16_rodata.bin", 0x20F4, 0x2108 - 0x20F4

	.global Unk_ov16_02270364
Unk_ov16_02270364: ; 0x02270364
	.incbin "incbin/overlay16_rodata.bin", 0x2108, 0x211C - 0x2108

	.global Unk_ov16_02270378
Unk_ov16_02270378: ; 0x02270378
	.incbin "incbin/overlay16_rodata.bin", 0x211C, 0x2130 - 0x211C

	.global Unk_ov16_0227038C
Unk_ov16_0227038C: ; 0x0227038C
	.incbin "incbin/overlay16_rodata.bin", 0x2130, 0x2148 - 0x2130

	.global Unk_ov16_022703A4
Unk_ov16_022703A4: ; 0x022703A4
	.incbin "incbin/overlay16_rodata.bin", 0x2148, 0x2160 - 0x2148

	.global Unk_ov16_022703BC
Unk_ov16_022703BC: ; 0x022703BC
	.incbin "incbin/overlay16_rodata.bin", 0x2160, 0x2178 - 0x2160

	.global Unk_ov16_022703D4
Unk_ov16_022703D4: ; 0x022703D4
	.incbin "incbin/overlay16_rodata.bin", 0x2178, 0x2198 - 0x2178

	.global Unk_ov16_022703F4
Unk_ov16_022703F4: ; 0x022703F4
	.incbin "incbin/overlay16_rodata.bin", 0x2198, 0x21B8 - 0x2198

	.global Unk_ov16_02270414
Unk_ov16_02270414: ; 0x02270414
	.incbin "incbin/overlay16_rodata.bin", 0x21B8, 0x21EC - 0x21B8

	.global Unk_ov16_02270448
Unk_ov16_02270448: ; 0x02270448
	.incbin "incbin/overlay16_rodata.bin", 0x21EC, 0x2220 - 0x21EC

	.global Unk_ov16_0227047C
Unk_ov16_0227047C: ; 0x0227047C
	.incbin "incbin/overlay16_rodata.bin", 0x2220, 0x2254 - 0x2220

	.global Unk_ov16_022704B0
Unk_ov16_022704B0: ; 0x022704B0
	.incbin "incbin/overlay16_rodata.bin", 0x2254, 0x2288 - 0x2254

	.global Unk_ov16_022704E4
Unk_ov16_022704E4: ; 0x022704E4
	.incbin "incbin/overlay16_rodata.bin", 0x2288, 0x22E4 - 0x2288

	.global Unk_ov16_02270540
Unk_ov16_02270540: ; 0x02270540
	.incbin "incbin/overlay16_rodata.bin", 0x22E4, 0x2354 - 0x22E4

	.global Unk_ov16_022705B0
Unk_ov16_022705B0: ; 0x022705B0
	.incbin "incbin/overlay16_rodata.bin", 0x2354, 0x2414 - 0x2354

	.global Unk_ov16_02270670
Unk_ov16_02270670: ; 0x02270670
	.incbin "incbin/overlay16_rodata.bin", 0x2414, 0x27A4 - 0x2414

	.global Unk_ov16_02270A00
Unk_ov16_02270A00: ; 0x02270A00
	.incbin "incbin/overlay16_rodata.bin", 0x27A4, 0x27A8 - 0x27A4

	.global Unk_ov16_02270A04
Unk_ov16_02270A04: ; 0x02270A04
	.incbin "incbin/overlay16_rodata.bin", 0x27A8, 0x27AC - 0x27A8

	.global Unk_ov16_02270A08
Unk_ov16_02270A08: ; 0x02270A08
	.incbin "incbin/overlay16_rodata.bin", 0x27AC, 0x27B0 - 0x27AC

	.global Unk_ov16_02270A0C
Unk_ov16_02270A0C: ; 0x02270A0C
	.incbin "incbin/overlay16_rodata.bin", 0x27B0, 0x27B8 - 0x27B0

	.global Unk_ov16_02270A14
Unk_ov16_02270A14: ; 0x02270A14
	.incbin "incbin/overlay16_rodata.bin", 0x27B8, 0x5

