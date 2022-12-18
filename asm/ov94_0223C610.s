	.include "macros/function.inc"
	.include "include/ov94_0223C610.inc"

	

	.text


	thumb_func_start ov94_0223C610
ov94_0223C610: ; 0x0223C610
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_0223CB0C
	ldr r0, [r4, #4]
	bl ov94_0223C720
	add r0, r4, #0
	bl ov94_0223C888
	add r0, r4, #0
	bl ov94_0223C9C0
	add r0, r4, #0
	bl ov94_0223C950
	add r0, r4, #0
	bl ov94_02245934
	add r0, r4, #0
	bl ov94_0223CF3C
	ldr r1, _0223C6CC ; =0x00000449
	mov r0, #0x17
	mov r2, #1
	bl sub_02004550
	ldrh r0, [r4, #0x34]
	cmp r0, #0
	bne _0223C684
	add r0, r4, #0
	bl ov94_0223C85C
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #1
	strh r0, [r4, #0x34]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov94_02243FA8
	b _0223C6BE
_0223C684:
	ldr r0, _0223C6D0 ; =0x000010B0
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0223C6A4
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	b _0223C6BA
_0223C6A4:
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
_0223C6BA:
	mov r0, #5
	str r0, [r4, #0x2c]
_0223C6BE:
	ldr r0, _0223C6D0 ; =0x000010B0
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0223C6CC: .word 0x00000449
_0223C6D0: .word 0x000010B0
	thumb_func_end ov94_0223C610

	thumb_func_start ov94_0223C6D4
ov94_0223C6D4: ; 0x0223C6D4
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _0223C6F0 ; =0x022467C4
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_0223C6F0: .word 0x022467C4
	thumb_func_end ov94_0223C6D4

	thumb_func_start ov94_0223C6F4
ov94_0223C6F4: ; 0x0223C6F4
	push {r4, lr}
	add r4, r0, #0
	bl sub_02039794
	add r0, r4, #0
	bl ov94_0223C9B0
	add r0, r4, #0
	bl ov94_0223CB34
	add r0, r4, #0
	bl ov94_0223CAC8
	ldr r0, [r4, #4]
	bl ov94_0223C830
	add r0, r4, #0
	bl ov94_0223C4C8
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_0223C6F4

	thumb_func_start ov94_0223C720
ov94_0223C720: ; 0x0223C720
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0223C818 ; =0x02245A54
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _0223C81C ; =0x02245AB4
	add r3, sp, #0x70
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
	ldr r5, _0223C820 ; =0x02245A98
	add r3, sp, #0x54
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
	ldr r5, _0223C824 ; =0x02245AD0
	add r3, sp, #0x38
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
	ldr r5, _0223C828 ; =0x02245AEC
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
	ldr r5, _0223C82C ; =0x02245A7C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, r4, #0
	mov r1, #5
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
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_0223C818: .word 0x02245A54
_0223C81C: .word 0x02245AB4
_0223C820: .word 0x02245A98
_0223C824: .word 0x02245AD0
_0223C828: .word 0x02245AEC
_0223C82C: .word 0x02245A7C
	thumb_func_end ov94_0223C720

	thumb_func_start ov94_0223C830
ov94_0223C830: ; 0x0223C830
	push {r4, lr}
	add r4, r0, #0
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	mov r1, #0
	bl sub_02019044
	pop {r4, pc}
	thumb_func_end ov94_0223C830

	thumb_func_start ov94_0223C85C
ov94_0223C85C: ; 0x0223C85C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_0223C85C

	thumb_func_start ov94_0223C888
ov94_0223C888: ; 0x0223C888
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r5, [r6, #4]
	mov r0, #0x68
	mov r1, #0x3e
	bl sub_02006C24
	mov r1, #0x60
	str r1, [sp]
	mov r1, #0x3e
	mov r2, #0
	str r1, [sp, #4]
	mov r1, #4
	add r3, r2, #0
	add r4, r0, #0
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [r6, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	mov r0, #3
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0xe
	add r2, r5, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1e
	add r2, r5, #0
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x1d
	add r2, r5, #0
	mov r3, #2
	bl sub_0200710C
	add r0, r6, #0
	bl ov94_0223D068
	add r0, r4, #0
	bl sub_02006CA8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_0223C888

	thumb_func_start ov94_0223C950
ov94_0223C950: ; 0x0223C950
	push {r4, lr}
	sub sp, #0x30
	ldr r2, _0223C9A4 ; =0x00000D54
	add r4, r0, #0
	add r0, sp, #0
	add r1, r4, #0
	add r2, r4, r2
	mov r3, #1
	bl ov94_0223C300
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r1, [r4, r0]
	lsl r2, r1, #2
	ldr r1, _0223C9A8 ; =0x02245A48
	ldrh r1, [r1, r2]
	lsl r1, r1, #0xc
	str r1, [sp, #8]
	ldrh r0, [r4, r0]
	lsl r1, r0, #2
	ldr r0, _0223C9AC ; =0x02245A4A
	ldrh r0, [r0, r1]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	add r0, sp, #0
	bl sub_02021AA0
	mov r1, #0x37
	lsl r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021D6C
	add sp, #0x30
	pop {r4, pc}
	; .align 2, 0
_0223C9A4: .word 0x00000D54
_0223C9A8: .word 0x02245A48
_0223C9AC: .word 0x02245A4A
	thumb_func_end ov94_0223C950

	thumb_func_start ov94_0223C9B0
ov94_0223C9B0: ; 0x0223C9B0
	mov r1, #0x37
	lsl r1, r1, #6
	ldr r3, _0223C9BC ; =sub_02021BD4
	ldr r0, [r0, r1]
	bx r3
	nop
_0223C9BC: .word sub_02021BD4
	thumb_func_end ov94_0223C9B0

	thumb_func_start ov94_0223C9C0
ov94_0223C9C0: ; 0x0223C9C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	mov r3, #1
	add r7, r0, #0
	str r3, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _0223CAB0 ; =0x00000F1C
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0223CAB0 ; =0x00000F1C
	mov r1, #0
	add r0, r7, r0
	bl sub_0201ADA4
	mov r0, #2
	str r0, [sp]
	mov r3, #0
	ldr r0, _0223CAB4 ; =0x000F0400
	str r3, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0223CAB0 ; =0x00000F1C
	ldr r2, _0223CAB8 ; =0x00000BB4
	str r3, [sp, #0xc]
	ldr r2, [r7, r2]
	add r0, r7, r0
	mov r1, #1
	bl sub_0201D78C
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, _0223CABC ; =0x00000F3C
	mov r6, #0x61
	mov r4, #6
	add r5, r7, r0
_0223CA18:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0xf
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	lsl r0, r6, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r5, #0
	mov r2, #1
	mov r3, #9
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r0, [sp, #0x14]
	add r6, #0x1e
	add r0, r0, #1
	add r4, r4, #5
	add r5, #0x10
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _0223CA18
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r3, #2
	ldr r1, _0223CAC0 ; =0x00000EFC
	str r3, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x60
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _0223CAC0 ; =0x00000EFC
	mov r1, #0xf
	add r0, r7, r0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x96
	ldr r1, _0223CAC4 ; =0x0000103C
	str r0, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r7, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _0223CAC4 ; =0x0000103C
	mov r1, #0xf
	add r0, r7, r0
	bl sub_0201ADA4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CAB0: .word 0x00000F1C
_0223CAB4: .word 0x000F0400
_0223CAB8: .word 0x00000BB4
_0223CABC: .word 0x00000F3C
_0223CAC0: .word 0x00000EFC
_0223CAC4: .word 0x0000103C
	thumb_func_end ov94_0223C9C0

	thumb_func_start ov94_0223CAC8
ov94_0223CAC8: ; 0x0223CAC8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, _0223CAFC ; =0x0000103C
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _0223CB00 ; =0x00000EFC
	add r0, r6, r0
	bl sub_0201A8FC
	ldr r0, _0223CB04 ; =0x00000F3C
	mov r4, #0
	add r5, r6, r0
_0223CAE2:
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #3
	blt _0223CAE2
	ldr r0, _0223CB08 ; =0x00000F1C
	add r0, r6, r0
	bl sub_0201A8FC
	pop {r4, r5, r6, pc}
	nop
_0223CAFC: .word 0x0000103C
_0223CB00: .word 0x00000EFC
_0223CB04: .word 0x00000F3C
_0223CB08: .word 0x00000F1C
	thumb_func_end ov94_0223CAC8

	thumb_func_start ov94_0223CB0C
ov94_0223CB0C: ; 0x0223CB0C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x1c
	ldr r0, [r4, r1]
	mov r1, #0x27
	bl sub_0200B1EC
	ldr r1, _0223CB30 ; =0x00000BB4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0223CB30: .word 0x00000BB4
	thumb_func_end ov94_0223CB0C

	thumb_func_start ov94_0223CB34
ov94_0223CB34: ; 0x0223CB34
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	ldr r0, _0223CB4C ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	; .align 2, 0
_0223CB4C: .word 0x00000BB4
	thumb_func_end ov94_0223CB34

	thumb_func_start ov94_0223CB50
ov94_0223CB50: ; 0x0223CB50
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CB8C ; =0x00001090
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0223CB86
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xb
	bl ov94_0223C4C0
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #9
	str r0, [r4, #0x2c]
_0223CB86:
	mov r0, #3
	pop {r4, pc}
	nop
_0223CB8C: .word 0x00001090
	thumb_func_end ov94_0223CB50

	thumb_func_start ov94_0223CB90
ov94_0223CB90: ; 0x0223CB90
	push {r3, lr}
	mov r1, #0xa
	mov r2, #2
	bl ov94_0223C3F4
	mov r0, #3
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov94_0223CB90

	thumb_func_start ov94_0223CBA0
ov94_0223CBA0: ; 0x0223CBA0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
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
	mov r0, #3
	str r0, [r4, #0x2c]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223CBA0

	thumb_func_start ov94_0223CBC4
ov94_0223CBC4: ; 0x0223CBC4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223CBD4
	mov r0, #5
	str r0, [r4, #0x2c]
_0223CBD4:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_0223CBC4

	thumb_func_start ov94_0223CBD8
ov94_0223CBD8: ; 0x0223CBD8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200F2AC
	cmp r0, #0
	beq _0223CBE8
	mov r0, #5
	str r0, [r4, #0x2c]
_0223CBE8:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_0223CBD8

	thumb_func_start ov94_0223CBEC
ov94_0223CBEC: ; 0x0223CBEC
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CC24 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #4
	mov r2, #1
	mov r3, #0
	bl ov94_0223CF80
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #6
	bl ov94_0223C3F4
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	add r0, r4, #0
	bl ov94_0223C584
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CC24: .word 0x00000F0F
	thumb_func_end ov94_0223CBEC

	thumb_func_start ov94_0223CC28
ov94_0223CC28: ; 0x0223CC28
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _0223CDBC ; =0x021BF67C
	mov r2, #2
	ldr r1, [r1, #0x48]
	add r4, r0, #0
	tst r2, r1
	beq _0223CC64
	bl ov94_0223C4D4
	add r2, r0, #0
	ldr r0, _0223CDC0 ; =0x00000F0F
	mov r1, #7
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl ov94_0223CFD8
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xc
	bl ov94_0223C3F4
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	b _0223CDB4
_0223CC64:
	mov r2, #1
	tst r2, r1
	beq _0223CD36
	mov r1, #0x11
	lsl r1, r1, #4
	ldrh r1, [r4, r1]
	cmp r1, #0
	beq _0223CC7E
	cmp r1, #1
	beq _0223CCF0
	cmp r1, #2
	beq _0223CD04
	b _0223CDB4
_0223CC7E:
	ldrh r1, [r4, #0x36]
	cmp r1, #0
	bne _0223CC98
	mov r1, #5
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	b _0223CDB4
_0223CC98:
	ldrh r1, [r4, #0x3a]
	cmp r1, #0
	bne _0223CCBA
	mov r1, #7
	mov r2, #0xb
	bl ov94_0223C4C0
	mov r0, #2
	str r0, [r4, #0x1c]
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223CDC8 ; =0x00000708
	strh r0, [r4, #0x3a]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	b _0223CDB4
_0223CCBA:
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, _0223CDC0 ; =0x00000F0F
	mov r1, #0x22
	str r0, [sp]
	add r0, r4, #0
	mov r2, #1
	mov r3, #0
	bl ov94_0223CF80
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #5
	bl ov94_0223C3F4
	ldr r0, _0223CDCC ; =0x000005F3
	bl sub_02005748
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r4, r0]
	b _0223CDB4
_0223CCF0:
	mov r1, #4
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #9
	str r0, [r4, #0x2c]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	b _0223CDB4
_0223CD04:
	bl ov94_0223C4D4
	add r2, r0, #0
	ldr r0, _0223CDC0 ; =0x00000F0F
	mov r1, #7
	str r0, [sp]
	add r0, r4, #0
	mov r3, #0
	bl ov94_0223CFD8
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0xc
	bl ov94_0223C3F4
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	b _0223CDB4
_0223CD36:
	mov r2, #0x40
	add r0, r1, #0
	tst r0, r2
	beq _0223CD76
	add r0, r2, #0
	add r0, #0xd0
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _0223CDB4
	add r0, r2, #0
	add r0, #0xd0
	ldrh r0, [r4, r0]
	add r2, #0xd0
	sub r0, r0, #1
	strh r0, [r4, r2]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r1, _0223CDD0 ; =0x02245A48
	ldr r2, _0223CDD4 ; =0x02245A4A
	lsl r3, r0, #2
	mov r0, #0x37
	lsl r0, r0, #6
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldr r0, [r4, r0]
	bl ov94_0223C3FC
	b _0223CDB4
_0223CD76:
	mov r2, #0x80
	add r0, r1, #0
	tst r0, r2
	beq _0223CDB4
	add r0, r2, #0
	add r0, #0x90
	ldrh r0, [r4, r0]
	cmp r0, #2
	bhs _0223CDB4
	add r0, r2, #0
	add r0, #0x90
	ldrh r0, [r4, r0]
	add r2, #0x90
	add r0, r0, #1
	strh r0, [r4, r2]
	ldr r0, _0223CDC4 ; =0x000005DC
	bl sub_02005748
	mov r0, #0x11
	lsl r0, r0, #4
	ldrh r0, [r4, r0]
	ldr r1, _0223CDD0 ; =0x02245A48
	ldr r2, _0223CDD4 ; =0x02245A4A
	lsl r3, r0, #2
	mov r0, #0x37
	lsl r0, r0, #6
	ldrh r1, [r1, r3]
	ldrh r2, [r2, r3]
	ldr r0, [r4, r0]
	bl ov94_0223C3FC
_0223CDB4:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223CDBC: .word 0x021BF67C
_0223CDC0: .word 0x00000F0F
_0223CDC4: .word 0x000005DC
_0223CDC8: .word 0x00000708
_0223CDCC: .word 0x000005F3
_0223CDD0: .word 0x02245A48
_0223CDD4: .word 0x02245A4A
	thumb_func_end ov94_0223CC28

	thumb_func_start ov94_0223CDD8
ov94_0223CDD8: ; 0x0223CDD8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x1c]
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #0
	bl ov94_022440B8
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _0223CDFC ; =0x00001090
	mov r1, #0
	strh r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_0223CDFC: .word 0x00001090
	thumb_func_end ov94_0223CDD8

	thumb_func_start ov94_0223CE00
ov94_0223CE00: ; 0x0223CE00
	ldr r1, _0223CE10 ; =0x00001090
	ldrh r1, [r0, r1]
	cmp r1, #0
	beq _0223CE0C
	mov r1, #9
	str r1, [r0, #0x2c]
_0223CE0C:
	mov r0, #3
	bx lr
	; .align 2, 0
_0223CE10: .word 0x00001090
	thumb_func_end ov94_0223CE00

	thumb_func_start ov94_0223CE14
ov94_0223CE14: ; 0x0223CE14
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0223CE3A
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	b _0223CE52
_0223CE3A:
	mov r0, #6
	str r0, [sp]
	mov r1, #0
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x3e
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0200F174
_0223CE52:
	mov r0, #0
	str r0, [r4, #0x2c]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov94_0223CE14

	thumb_func_start ov94_0223CE5C
ov94_0223CE5C: ; 0x0223CE5C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0xd
	add r2, r1, #0
	ldr r0, [r4, #4]
	add r2, #0xf5
	bl ov94_0223C3C0
	ldr r1, _0223CE78 ; =0x00001070
	str r0, [r4, r1]
	mov r0, #0xd
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223CE78: .word 0x00001070
	thumb_func_end ov94_0223CE5C

	thumb_func_start ov94_0223CE7C
ov94_0223CE7C: ; 0x0223CE7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CEE0 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0223CEDA
	sub r1, r1, #1
	cmp r0, r1
	ldr r0, _0223CEE4 ; =0x0000103C
	bne _0223CEBC
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _0223CEE4 ; =0x0000103C
	add r0, r4, r0
	bl sub_0201ACF4
	mov r0, #0x37
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #5
	str r0, [r4, #0x2c]
	b _0223CEDA
_0223CEBC:
	add r0, r4, r0
	mov r1, #1
	bl sub_0200E084
	ldr r0, _0223CEE4 ; =0x0000103C
	add r0, r4, r0
	bl sub_0201ACF4
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #7
	str r0, [r4, #0x2c]
_0223CEDA:
	mov r0, #3
	pop {r4, pc}
	nop
_0223CEE0: .word 0x00001070
_0223CEE4: .word 0x0000103C
	thumb_func_end ov94_0223CE7C

	thumb_func_start ov94_0223CEE8
ov94_0223CEE8: ; 0x0223CEE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CF04 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223CF00
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223CF00:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223CF04: .word 0x00000BE4
	thumb_func_end ov94_0223CEE8

	thumb_func_start ov94_0223CF08
ov94_0223CF08: ; 0x0223CF08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0223CF38 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _0223CF34
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0x2d
	ble _0223CF34
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_0223CF34:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0223CF38: .word 0x00000BE4
	thumb_func_end ov94_0223CF08

	thumb_func_start ov94_0223CF3C
ov94_0223CF3C: ; 0x0223CF3C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldrh r1, [r7, #0x36]
	mov r0, #0xc
	ldr r2, _0223CF70 ; =0x02245A64
	mul r0, r1
	add r4, r2, r0
	ldr r0, _0223CF74 ; =0x00000F3C
	mov r6, #0
	add r5, r7, r0
_0223CF50:
	ldr r1, _0223CF78 ; =0x00000B94
	ldr r2, [r4, #0]
	ldr r1, [r7, r1]
	ldr r3, _0223CF7C ; =0x00000F0F
	add r0, r5, #0
	bl ov94_0223D030
	add r0, r5, #0
	bl sub_0201A954
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #3
	blt _0223CF50
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0223CF70: .word 0x02245A64
_0223CF74: .word 0x00000F3C
_0223CF78: .word 0x00000B94
_0223CF7C: .word 0x00000F0F
	thumb_func_end ov94_0223CF3C

	thumb_func_start ov94_0223CF80
ov94_0223CF80: ; 0x0223CF80
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0223CFCC ; =0x00000B94
	add r5, r0, #0
	ldr r0, [r5, r2]
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r0, _0223CFD0 ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223CFD0 ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223CFD0 ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223CFD4 ; =0x00000BE4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223CFCC: .word 0x00000B94
_0223CFD0: .word 0x00000EFC
_0223CFD4: .word 0x00000BE4
	thumb_func_end ov94_0223CF80

	thumb_func_start ov94_0223CFD8
ov94_0223CFD8: ; 0x0223CFD8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r2, #0
	ldr r2, _0223D024 ; =0x00000B94
	add r5, r0, #0
	ldr r0, [r5, r2]
	add r2, #0x1c
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r0, _0223D028 ; =0x0000103C
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0223D028 ; =0x0000103C
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0223D028 ; =0x0000103C
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _0223D02C ; =0x00000BE4
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0223D024: .word 0x00000B94
_0223D028: .word 0x0000103C
_0223D02C: .word 0x00000BE4
	thumb_func_end ov94_0223CFD8

	thumb_func_start ov94_0223D030
ov94_0223D030: ; 0x0223D030
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r4, r3, #0
	add r1, r2, #0
	bl sub_0200B1EC
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	add r0, r5, #0
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov94_0223D030

	thumb_func_start ov94_0223D068
ov94_0223D068: ; 0x0223D068
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [r0, #4]
	mov r0, #2
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	mov r0, #0x68
	mov r1, #5
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	mov r0, #0x2a
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0xf
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
	mov r0, #0x3e
	str r0, [sp, #0xc]
	mov r0, #0x68
	mov r1, #0x1f
	add r2, r4, #0
	mov r3, #5
	bl sub_02006E60
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov94_0223D068

	.rodata


	.global Unk_ov94_02245A48
Unk_ov94_02245A48: ; 0x02245A48
	.incbin "incbin/overlay94_rodata.bin", 0x50, 0x5C - 0x50

	.global Unk_ov94_02245A54
Unk_ov94_02245A54: ; 0x02245A54
	.incbin "incbin/overlay94_rodata.bin", 0x5C, 0x6C - 0x5C

	.global Unk_ov94_02245A64
Unk_ov94_02245A64: ; 0x02245A64
	.incbin "incbin/overlay94_rodata.bin", 0x6C, 0x84 - 0x6C

	.global Unk_ov94_02245A7C
Unk_ov94_02245A7C: ; 0x02245A7C
	.incbin "incbin/overlay94_rodata.bin", 0x84, 0xA0 - 0x84

	.global Unk_ov94_02245A98
Unk_ov94_02245A98: ; 0x02245A98
	.incbin "incbin/overlay94_rodata.bin", 0xA0, 0xBC - 0xA0

	.global Unk_ov94_02245AB4
Unk_ov94_02245AB4: ; 0x02245AB4
	.incbin "incbin/overlay94_rodata.bin", 0xBC, 0xD8 - 0xBC

	.global Unk_ov94_02245AD0
Unk_ov94_02245AD0: ; 0x02245AD0
	.incbin "incbin/overlay94_rodata.bin", 0xD8, 0xF4 - 0xD8

	.global Unk_ov94_02245AEC
Unk_ov94_02245AEC: ; 0x02245AEC
	.incbin "incbin/overlay94_rodata.bin", 0xF4, 0x1C


	.data


	.global Unk_ov94_022467C4
Unk_ov94_022467C4: ; 0x022467C4
	.incbin "incbin/overlay94_data.bin", 0x3C4, 0x38

