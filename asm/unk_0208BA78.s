	.include "macros/function.inc"
	.include "include/unk_0208BA78.inc"

	

	.text


	thumb_func_start sub_0208BA78
sub_0208BA78: ; 0x0208BA78
	push {r3, lr}
	bl sub_02006840
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208BA78

	thumb_func_start sub_0208BA84
sub_0208BA84: ; 0x0208BA84
	str r1, [r0, #0]
	str r2, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0208BA84

	thumb_func_start sub_0208BA8C
sub_0208BA8C: ; 0x0208BA8C
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0202B628
	add r6, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0202C244
	add r1, r0, #0
	add r0, r6, #0
	mov r2, #4
	bl sub_0202B758
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0208BA8C

	thumb_func_start sub_0208BAAC
sub_0208BAAC: ; 0x0208BAAC
	push {r4, r5, r6, lr}
	mov r2, #1
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #3
	mov r1, #0x77
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #0x77
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x2c
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r6, #0
	bl sub_02006840
	str r0, [r4, #0x28]
	ldr r0, [r0, #0xc]
	ldr r1, _0208BB5C ; =0x00004170
	str r0, [r4, #0xc]
	mov r0, #0x77
	bl sub_02018144
	ldr r2, _0208BB5C ; =0x00004170
	str r0, [r4, #0x14]
	mov r1, #0
	bl MI_CpuFill8
	add r2, r4, #0
	ldr r1, [r4, #0x14]
	ldr r0, _0208BB60 ; =0x00000868
	add r2, #0x18
	str r2, [r1, r0]
	ldr r2, [r4, #0xc]
	ldr r1, [r4, #0x14]
	sub r0, #0x38
	str r2, [r1, r0]
	ldr r0, [r4, #0x14]
	str r5, [r0, #0]
	ldr r6, [r4, #0x14]
	ldr r1, [r6, #0]
	add r0, r6, #0
	bl sub_0208C034
	ldr r1, _0208BB64 ; =0x000006D8
	ldr r1, [r6, r1]
	lsl r1, r1, #2
	add r2, r6, r1
	ldr r1, _0208BB68 ; =0x0000081C
	cmp r5, #6
	str r0, [r2, r1]
	bhi _0208BB58
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0208BB2C: ; jump table
	.short _0208BB4E - _0208BB2C - 2 ; case 0
	.short _0208BB4E - _0208BB2C - 2 ; case 1
	.short _0208BB3A - _0208BB2C - 2 ; case 2
	.short _0208BB3E - _0208BB2C - 2 ; case 3
	.short _0208BB42 - _0208BB2C - 2 ; case 4
	.short _0208BB46 - _0208BB2C - 2 ; case 5
	.short _0208BB4A - _0208BB2C - 2 ; case 6
_0208BB3A:
	mov r2, #0x12
	b _0208BB50
_0208BB3E:
	mov r2, #0x13
	b _0208BB50
_0208BB42:
	mov r2, #0x13
	b _0208BB50
_0208BB46:
	mov r2, #0x14
	b _0208BB50
_0208BB4A:
	mov r2, #0x15
	b _0208BB50
_0208BB4E:
	pop {r4, r5, r6, pc}
_0208BB50:
	ldr r0, [r4, #0xc]
	mov r1, #0x77
	bl sub_0208BA8C
_0208BB58:
	pop {r4, r5, r6, pc}
	nop
_0208BB5C: .word 0x00004170
_0208BB60: .word 0x00000868
_0208BB64: .word 0x000006D8
_0208BB68: .word 0x0000081C
	thumb_func_end sub_0208BAAC

	thumb_func_start sub_0208BB6C
sub_0208BB6C: ; 0x0208BB6C
	push {r3, lr}
	mov r1, #0
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB6C

	thumb_func_start sub_0208BB78
sub_0208BB78: ; 0x0208BB78
	push {r3, lr}
	mov r1, #1
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB78

	thumb_func_start sub_0208BB84
sub_0208BB84: ; 0x0208BB84
	push {r3, lr}
	mov r1, #2
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB84

	thumb_func_start sub_0208BB90
sub_0208BB90: ; 0x0208BB90
	push {r3, lr}
	mov r1, #3
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB90

	thumb_func_start sub_0208BB9C
sub_0208BB9C: ; 0x0208BB9C
	push {r3, lr}
	mov r1, #4
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BB9C

	thumb_func_start sub_0208BBA8
sub_0208BBA8: ; 0x0208BBA8
	push {r3, lr}
	mov r1, #5
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BBA8

	thumb_func_start sub_0208BBB4
sub_0208BBB4: ; 0x0208BBB4
	push {r3, lr}
	mov r1, #6
	bl sub_0208BAAC
	mov r0, #1
	pop {r3, pc}
	thumb_func_end sub_0208BBB4

	thumb_func_start sub_0208BBC0
sub_0208BBC0: ; 0x0208BBC0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _0208BBD6
	cmp r1, #1
	beq _0208BBF4
	b _0208BC04
_0208BBD6:
	mov r1, #0x77
	bl sub_0208BC3C
	cmp r0, #0
	beq _0208BC04
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0208BBF0
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r4, #0]
	b _0208BC04
_0208BBF0:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0208BBF4:
	mov r1, #0x77
	bl sub_0208BC8C
	cmp r0, #0
	beq _0208BC04
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r4, #0]
_0208BC04:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208BBC0

	thumb_func_start sub_0208BC08
sub_0208BC08: ; 0x0208BC08
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0202F250
	cmp r0, #1
	bne _0208BC1E
	bl sub_0202F22C
_0208BC1E:
	ldr r0, [r4, #0x14]
	bl sub_020181C4
	add r0, r5, #0
	bl sub_02006830
	mov r0, #1
	mov r1, #0x7f
	bl sub_0200544C
	mov r0, #0x77
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0208BC08

	thumb_func_start sub_0208BC3C
sub_0208BC3C: ; 0x0208BC3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	add r2, r1, #0
	cmp r0, #0
	bne _0208BC6C
	ldr r0, [r4, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0208BC5A
	ldr r0, _0208BC84 ; =0x020F3050
	add r1, r4, #0
	bl sub_020067E8
	b _0208BC62
_0208BC5A:
	ldr r0, _0208BC88 ; =0x020F3060
	add r1, r4, #0
	bl sub_020067E8
_0208BC62:
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _0208BC80
_0208BC6C:
	ldr r0, [r4, #8]
	bl sub_02006844
	cmp r0, #0
	beq _0208BC80
	ldr r0, [r4, #8]
	bl sub_02006814
	mov r0, #1
	pop {r4, pc}
_0208BC80:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_0208BC84: .word 0x020F3050
_0208BC88: .word 0x020F3060
	thumb_func_end sub_0208BC3C

	thumb_func_start sub_0208BC8C
sub_0208BC8C: ; 0x0208BC8C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	cmp r0, #0
	beq _0208BCA4
	cmp r0, #1
	beq _0208BCBE
	cmp r0, #2
	beq _0208BD60
	b _0208BDA6
_0208BCA4:
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0208BCB6
	ldr r0, _0208BE40 ; =0x0000003D
	bl sub_02006514
	bl sub_020995C4
_0208BCB6:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0208BE3A
_0208BCBE:
	add r0, r4, #0
	mov r1, #0
	bl sub_02051D8C
	str r0, [r5, #0x10]
	bl sub_0202F250
	cmp r0, #0
	bne _0208BCE6
	ldr r1, [r5, #0x14]
	ldr r0, _0208BE44 ; =0x0000086C
	add r2, sp, #4
	ldr r0, [r1, r0]
	add r1, r4, #0
	str r0, [sp]
	ldr r0, [r5, #0xc]
	ldr r3, [r5, #0x10]
	bl sub_0202F298
	b _0208BCF2
_0208BCE6:
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0xc]
	bl sub_0202FAFC
	mov r0, #1
	str r0, [sp, #4]
_0208BCF2:
	add r0, r4, #0
	bl sub_0207D99C
	mov r1, #0x43
	ldr r2, [r5, #0x10]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r5, #0xc]
	bl sub_0202CD88
	mov r1, #0x51
	ldr r2, [r5, #0x10]
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r6, _0208BE48 ; =0x0000003E
	mov r1, #2
	add r0, r6, #0
	bl sub_02006590
	cmp r0, #1
	bne _0208BD2E
	bl sub_0202F264
	ldr r1, [r5, #0x10]
	add r2, r4, #0
	bl ov62_02248408
	add r0, r6, #0
	bl sub_02006514
_0208BD2E:
	ldr r1, [r5, #0x14]
	ldr r0, _0208BE4C ; =0x00000874
	mov r2, #1
	str r2, [r1, r0]
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _0208BD58
	mov r0, #0x43
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020520A4
	mov r0, #0
	str r0, [r5, #0]
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0208BD58:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0208BE3A
_0208BD60:
	mov r0, #1
	mov r1, #0x7f
	bl sub_0200544C
	mov r0, #1
	bl sub_02005464
	ldr r0, [r5, #0x10]
	add r0, #0x5d
	ldrb r0, [r0]
	bl sub_0208BE80
	cmp r0, #1
	bne _0208BD88
	ldr r1, _0208BE50 ; =0x000004B2
	mov r0, #5
	mov r2, #1
	bl sub_02004550
	b _0208BD92
_0208BD88:
	ldr r1, _0208BE54 ; =0x0000045F
	mov r0, #5
	mov r2, #1
	bl sub_02004550
_0208BD92:
	ldr r0, _0208BE58 ; =0x020EA358
	ldr r1, [r5, #0x10]
	add r2, r4, #0
	bl sub_020067E8
	str r0, [r5, #8]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0208BE3A
_0208BDA6:
	ldr r0, [r5, #8]
	bl sub_02006844
	cmp r0, #0
	beq _0208BE3A
	mov r0, #0x71
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r2, [r1, r0]
	ldr r1, [r5, #0x14]
	ldr r0, _0208BE4C ; =0x00000874
	str r2, [r1, r0]
	ldr r2, [r5, #0x14]
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _0208BDD4
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0208BDD4
	add r0, r0, #4
	ldr r0, [r2, r0]
	mov r1, #1
	strb r1, [r0]
_0208BDD4:
	mov r0, #0x43
	ldr r1, [r5, #0x10]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bl sub_020181C4
	ldr r0, [r5, #0x10]
	bl sub_020520A4
	ldr r0, [r5, #8]
	bl sub_02006814
	mov r0, #0
	bl sub_02005464
	mov r0, #0
	bl sub_02004234
	ldr r0, [r5, #0x28]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_02055428
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	ldr r1, [r0, #0x1c]
	ldr r1, [r1, #0]
	bl sub_020554A4
	bl sub_02004224
	mov r0, #4
	add r1, r4, #0
	mov r2, #1
	bl sub_02004550
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _0208BE34
	bl sub_020995B4
	ldr r0, _0208BE40 ; =0x0000003D
	mov r1, #2
	bl sub_02006590
_0208BE34:
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0208BE3A:
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_0208BE40: .word 0x0000003D
_0208BE44: .word 0x0000086C
_0208BE48: .word 0x0000003E
_0208BE4C: .word 0x00000874
_0208BE50: .word 0x000004B2
_0208BE54: .word 0x0000045F
_0208BE58: .word 0x020EA358
	thumb_func_end sub_0208BC8C

	thumb_func_start sub_0208BE5C
sub_0208BE5C: ; 0x0208BE5C
	lsl r1, r0, #2
	ldr r0, _0208BE64 ; =0x02100CF0
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_0208BE64: .word 0x02100CF0
	thumb_func_end sub_0208BE5C

	thumb_func_start sub_0208BE68
sub_0208BE68: ; 0x0208BE68
	push {r3, lr}
	mov r1, #0x83
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	bl sub_020507E4
	mov r1, #2
	mov r2, #0x35
	bl sub_0206AF3C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0208BE68

	thumb_func_start sub_0208BE80
sub_0208BE80: ; 0x0208BE80
	push {r3, r4, r5}
	sub sp, #0x14
	ldr r5, _0208BEB8 ; =0x020F303C
	add r3, r0, #0
	ldmia r5!, {r0, r1}
	add r4, sp, #0
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r4, #0]
_0208BE9A:
	ldr r0, [r2, #0]
	cmp r3, r0
	bne _0208BEA8
	add sp, #0x14
	mov r0, #1
	pop {r3, r4, r5}
	bx lr
_0208BEA8:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #5
	blo _0208BE9A
	mov r0, #0
	add sp, #0x14
	pop {r3, r4, r5}
	bx lr
	; .align 2, 0
_0208BEB8: .word 0x020F303C
	thumb_func_end sub_0208BE80

	.rodata


	.global Unk_020F2FCC
Unk_020F2FCC: ; 0x020F2FCC
	.incbin "incbin/arm9_rodata.bin", 0xE38C, 0xE39C - 0xE38C

	.global Unk_020F2FDC
Unk_020F2FDC: ; 0x020F2FDC
	.incbin "incbin/arm9_rodata.bin", 0xE39C, 0xE3AC - 0xE39C

	.global Unk_020F2FEC
Unk_020F2FEC: ; 0x020F2FEC
	.incbin "incbin/arm9_rodata.bin", 0xE3AC, 0xE3BC - 0xE3AC

	.global Unk_020F2FFC
Unk_020F2FFC: ; 0x020F2FFC
	.incbin "incbin/arm9_rodata.bin", 0xE3BC, 0xE3CC - 0xE3BC

	.global Unk_020F300C
Unk_020F300C: ; 0x020F300C
	.incbin "incbin/arm9_rodata.bin", 0xE3CC, 0xE3DC - 0xE3CC

	.global Unk_020F301C
Unk_020F301C: ; 0x020F301C
	.incbin "incbin/arm9_rodata.bin", 0xE3DC, 0xE3EC - 0xE3DC

	.global Unk_020F302C
Unk_020F302C: ; 0x020F302C
	.incbin "incbin/arm9_rodata.bin", 0xE3EC, 0xE3FC - 0xE3EC

	.global Unk_020F303C
Unk_020F303C: ; 0x020F303C
	.incbin "incbin/arm9_rodata.bin", 0xE3FC, 0x14



	.data


	.global Unk_02100CF0
Unk_02100CF0: ; 0x02100CF0
	.incbin "incbin/arm9_data.bin", 0x2010, 0x1C

