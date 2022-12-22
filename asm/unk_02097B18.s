	.include "macros/function.inc"
	.include "include/unk_02097B18.inc"

	

	.text


	thumb_func_start sub_02097B18
sub_02097B18: ; 0x02097B18
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x35
	lsl r2, r2, #0x12
	bl sub_02017FC8
	mov r0, #0x35
	bl ov76_0223EB20
	bl ov76_0223D3A0
	mov r1, #0x43
	add r0, r5, #0
	lsl r1, r1, #4
	mov r2, #0x35
	bl sub_0200681C
	mov r2, #0x43
	mov r1, #0
	lsl r2, r2, #4
	add r4, r0, #0
	bl memset
	bl ov76_0223BE6C
	mov r1, #0x23
	lsl r1, r1, #4
	str r0, [r4, r1]
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	mov r0, #0x93
	mov r1, #0x35
	bl sub_02006C24
	ldr r1, _02097D20 ; =0x0000042C
	str r0, [r4, r1]
	mov r0, #0x35
	bl sub_02073C74
	ldr r1, _02097D24 ; =0x00000428
	mov r2, #0xff
	str r0, [r4, r1]
	add r0, r4, #0
	add r0, #0xd4
	str r2, [r0, #0]
	mov r5, #0
	sub r1, #0x10
	str r5, [r4, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202CBA8
	lsr r2, r0, #0x1f
	lsl r1, r0, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	beq _02097B98
	mov r5, #1
_02097B98:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202CBA8
	asr r1, r0, #2
	lsr r1, r1, #0x1d
	add r1, r0, r1
	asr r0, r1, #3
	add r1, r5, r0
	ldr r0, _02097D28 ; =0x0000041C
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	cmp r1, #0xa
	ble _02097BB8
	mov r1, #0xa
	str r1, [r4, r0]
_02097BB8:
	ldr r0, [r4, #0]
	bl sub_02097F18
	mov r1, #0xf1
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	bl sub_02097F18
	mov r1, #0xf2
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_0202CA88
	str r0, [r4, #0x64]
	mov r6, #0
	add r5, r4, #0
	mov r7, #0xff
_02097BE0:
	ldr r0, [r4, #0]
	add r1, r6, #0
	ldr r0, [r0, #0x20]
	bl sub_0202CA28
	str r7, [r5, #4]
	str r0, [r5, #8]
	add r6, r6, #1
	add r5, #8
	cmp r6, #0xc
	blt _02097BE0
	mov r5, #0
	add r6, r5, #0
	mov r7, #0xa2
_02097BFC:
	ldr r0, [r4, #0]
	add r0, r0, r6
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02097C1A
	add r1, r7, #0
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _02097C1A
	lsl r0, r0, #3
	add r0, r4, r0
	sub r0, r0, #4
	str r5, [r0, #0]
_02097C1A:
	add r5, r5, #1
	add r6, r6, #4
	cmp r5, #6
	blt _02097BFC
	mov r0, #0x35
	bl sub_02018340
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1, #0]
	mov r0, #0x40
	mov r1, #0x35
	bl sub_0201DBEC
	mov r0, #0x35
	bl sub_02002F38
	add r1, r4, #0
	add r1, #0xe8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003858
	add r0, r4, #0
	add r0, #0xe8
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x35
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	mov r3, #0x35
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xe8
	mov r1, #2
	ldr r0, [r0, #0]
	lsl r2, r1, #8
	mov r3, #0x35
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xe8
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x35
	bl sub_02002F70
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl ov76_0223EB64
	bl ov76_0223BF10
	mov r0, #0x35
	bl sub_0200762C
	mov r1, #0x69
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x35
	mov r1, #1
	mov r2, #0
	bl sub_02015F84
	mov r1, #0x97
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	add r5, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xe4
	add r1, #0xe8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r5, #0
	bl ov76_0223C8EC
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0xe4
	add r1, #0xe8
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, r5, #0
	bl ov76_0223C974
	add r0, r4, #0
	add r0, #0xd4
	bl ov76_0223C398
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r4, #0
	bl ov76_0223DCC0
	ldr r0, _02097D2C ; =0x0223ECB1
	add r1, r4, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov76_0223B8A8
	mov r1, #0
	mov r0, #0x3b
	add r2, r1, #0
	bl sub_02004550
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02097D20: .word 0x0000042C
_02097D24: .word 0x00000428
_02097D28: .word 0x0000041C
_02097D2C: .word 0x0223ECB1
	thumb_func_end sub_02097B18

	thumb_func_start sub_02097D30
sub_02097D30: ; 0x02097D30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #0
	beq _02097D4A
	cmp r1, #1
	beq _02097D58
	cmp r1, #2
	beq _02097D76
	b _02097D82
_02097D4A:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02097D82
	mov r0, #1
	str r0, [r5, #0]
	b _02097D82
_02097D58:
	bl ov76_0223D550
	cmp r0, #0
	bne _02097D66
	mov r0, #2
	str r0, [r5, #0]
	b _02097D82
_02097D66:
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007768
	bl ov76_0223BF50
	b _02097D82
_02097D76:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02097D82
	mov r0, #1
	pop {r3, r4, r5, pc}
_02097D82:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02097D30

	thumb_func_start sub_02097D88
sub_02097D88: ; 0x02097D88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
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
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #4
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #5
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_020181C4
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0, #0]
	bl sub_02002F54
	mov r1, #0xf1
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	ldr r0, [r4, #0]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl sub_02097F20
	ldr r0, _02097EF0 ; =0x00000428
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl ov76_0223B678
	mov r0, #0x73
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02024034
	mov r0, #0x69
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02007B6C
	mov r0, #0x97
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_02015FB8
	add r0, r4, #0
	bl ov76_0223B8C4
	add r0, r4, #0
	add r0, #0xd4
	bl ov76_0223C424
	bl sub_0201DC3C
	mov r0, #0x23
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020242C4
	mov r0, #0x35
	bl ov76_0223EB54
	ldr r0, _02097EF4 ; =0x0000042C
	ldr r0, [r4, r0]
	bl sub_02006CA8
	add r0, r5, #0
	bl sub_02006830
	bl sub_0201E530
	mov r0, #0x35
	bl sub_0201807C
	ldr r0, _02097EF8 ; =0x0000000B
	bl sub_02006514
	ldr r0, _02097EFC ; =0x0000000C
	bl sub_02006514
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02097EF0: .word 0x00000428
_02097EF4: .word 0x0000042C
_02097EF8: .word 0x0000000B
_02097EFC: .word 0x0000000C
	thumb_func_end sub_02097D88

	thumb_func_start sub_02097F00
sub_02097F00: ; 0x02097F00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, r1
	bge _02097F10
	bl sub_02022974
	mov r1, #0
_02097F10:
	lsl r0, r1, #2
	add r0, r4, r0
	ldr r0, [r0, #4]
	pop {r4, pc}
	thumb_func_end sub_02097F00

	thumb_func_start sub_02097F18
sub_02097F18: ; 0x02097F18
	add r0, #0x2c
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097F18

	thumb_func_start sub_02097F20
sub_02097F20: ; 0x02097F20
	add r0, #0x2c
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097F20

	thumb_func_start sub_02097F28
sub_02097F28: ; 0x02097F28
	add r0, #0x2d
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097F28

	thumb_func_start sub_02097F30
sub_02097F30: ; 0x02097F30
	add r0, #0x2d
	strb r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097F30

	thumb_func_start sub_02097F38
sub_02097F38: ; 0x02097F38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	bl sub_02050A64
	add r6, r0, #0
	add r0, r5, #0
	ldr r7, [r6, #8]
	bl sub_02050A60
	str r0, [sp, #4]
	ldr r0, [r6, #0x14]
	cmp r0, #6
	bls _02097F56
	b _020980CC
_02097F56:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02097F62: ; jump table
	.short _02097F70 - _02097F62 - 2 ; case 0
	.short _02097FCC - _02097F62 - 2 ; case 1
	.short _02097FDC - _02097F62 - 2 ; case 2
	.short _02097FFA - _02097F62 - 2 ; case 3
	.short _0209803A - _02097F62 - 2 ; case 4
	.short _020980A8 - _02097F62 - 2 ; case 5
	.short _020980B4 - _02097F62 - 2 ; case 6
_02097F70:
	add r0, r5, #0
	bl sub_02055820
	ldr r0, [r6, #0x10]
	bl sub_0202CA1C
	str r0, [r7, #0x20]
	add r0, r7, #0
	mov r1, #0
	bl sub_02097F20
	ldr r0, [r6, #0x10]
	bl sub_0207A268
	str r0, [r7, #0x1c]
	bl sub_0207A0F8
	mov r4, #0
	str r0, [sp]
	str r0, [r7, #0]
	cmp r0, #0
	ble _02097FB2
	add r5, r7, #0
_02097F9E:
	ldr r0, [r7, #0x1c]
	add r1, r4, #0
	bl sub_0207A0FC
	str r0, [r5, #4]
	ldr r0, [sp]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _02097F9E
_02097FB2:
	cmp r4, #6
	bge _02097FC6
	lsl r0, r4, #2
	add r1, r7, r0
	mov r0, #0
_02097FBC:
	add r4, r4, #1
	str r0, [r1, #4]
	add r1, r1, #4
	cmp r4, #6
	blt _02097FBC
_02097FC6:
	mov r0, #1
	str r0, [r6, #0x14]
	b _020980CC
_02097FCC:
	ldr r1, _020980D4 ; =0x020F64C0
	add r0, r5, #0
	add r2, r7, #0
	bl sub_02050A38
	mov r0, #2
	str r0, [r6, #0x14]
	b _020980CC
_02097FDC:
	ldr r0, [r6, #8]
	bl sub_02097F28
	cmp r0, #0
	beq _02097FEE
	cmp r0, #1
	beq _02097FF4
	bl sub_02022974
_02097FEE:
	mov r0, #5
	str r0, [r6, #0x14]
	b _020980CC
_02097FF4:
	mov r0, #3
	str r0, [r6, #0x14]
	b _020980CC
_02097FFA:
	ldr r4, [r6, #0xc]
	ldr r0, [r7, #0x1c]
	str r0, [r4, #0]
	ldr r0, [r6, #0x10]
	bl sub_0207D990
	str r0, [r4, #4]
	ldr r0, [r6, #0x10]
	bl sub_02028430
	str r0, [r4, #8]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x22
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x21
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0xf
	add r0, #0x20
	strb r1, [r0]
	ldr r0, [r7, #0x24]
	ldr r1, _020980D8 ; =0x020F1E88
	str r0, [r4, #0xc]
	add r0, r5, #0
	add r2, r4, #0
	bl sub_02050A38
	mov r0, #4
	str r0, [r6, #0x14]
	b _020980CC
_0209803A:
	ldr r0, [r6, #8]
	ldr r4, [r6, #0xc]
	bl sub_02097F18
	add r0, r0, #1
	str r0, [sp, #8]
	add r4, #0x22
	ldrb r1, [r4]
	cmp r1, #7
	beq _020980A2
	ldr r0, [r6, #8]
	bl sub_02097F00
	mov r1, #0xa2
	add r2, sp, #8
	add r5, r0, #0
	bl sub_02074B30
	ldr r1, [sp, #8]
	ldr r0, [r7, #0x20]
	sub r1, r1, #1
	bl sub_0202CA28
	add r2, r0, #0
	add r0, r5, #0
	mov r1, #0xab
	bl sub_02074B30
	ldr r1, [sp, #8]
	ldr r0, [r7, #0x20]
	sub r1, r1, #1
	bl sub_0202CA28
	mov r1, #0
	bl sub_0202CA64
	bl sub_0202CA7C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02098164
	add r4, r0, #0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0xc]
	bl sub_0202440C
	lsl r2, r4, #0x18
	add r1, r5, #0
	lsr r2, r2, #0x18
	bl sub_0206D9B4
_020980A2:
	mov r0, #1
	str r0, [r6, #0x14]
	b _020980CC
_020980A8:
	add r0, r5, #0
	bl sub_02055868
	mov r0, #6
	str r0, [r6, #0x14]
	b _020980CC
_020980B4:
	ldr r0, [r6, #0xc]
	bl sub_020181C4
	ldr r0, [r6, #8]
	bl sub_020181C4
	add r0, r6, #0
	bl sub_020181C4
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_020980CC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_020980D4: .word 0x020F64C0
_020980D8: .word 0x020F1E88
	thumb_func_end sub_02097F38

	thumb_func_start sub_020980DC
sub_020980DC: ; 0x020980DC
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0xb
	mov r1, #0x18
	bl sub_02018184
	add r4, r0, #0
	add r2, r4, #0
	mov r1, #0x18
	mov r0, #0
_020980F2:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _020980F2
	mov r0, #0xb
	mov r1, #0x30
	str r5, [r4, #0x10]
	bl sub_02018144
	mov r1, #0
	mov r2, #0x30
	str r0, [r4, #8]
	bl memset
	add r0, r5, #0
	bl sub_02025E44
	ldr r1, [r4, #8]
	str r0, [r1, #0x24]
	ldr r0, [r4, #8]
	mov r1, #0x40
	str r5, [r0, #0x28]
	mov r0, #0xb
	bl sub_02018144
	mov r1, #0
	mov r2, #0x40
	str r0, [r4, #0xc]
	bl memset
	ldr r1, _0209813C ; =sub_02097F38
	add r0, r6, #0
	add r2, r4, #0
	bl sub_02050944
	pop {r4, r5, r6, pc}
	nop
_0209813C: .word sub_02097F38
	thumb_func_end sub_020980DC

	thumb_func_start sub_02098140
sub_02098140: ; 0x02098140
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0209815C ; =0x0000032A
	cmp r4, r0
	blo _0209814E
	bl sub_02022974
_0209814E:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02098160 ; =0x020F64D0
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_0209815C: .word 0x0000032A
_02098160: .word 0x020F64D0
	thumb_func_end sub_02098140

	thumb_func_start sub_02098164
sub_02098164: ; 0x02098164
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02098180 ; =0x0000032A
	cmp r4, r0
	blo _02098172
	bl sub_02022974
_02098172:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02098184 ; =0x020F64D2
	ldrb r0, [r0, r1]
	pop {r4, pc}
	nop
_02098180: .word 0x0000032A
_02098184: .word 0x020F64D2
	thumb_func_end sub_02098164

	thumb_func_start sub_02098188
sub_02098188: ; 0x02098188
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020981A4 ; =0x0000032A
	cmp r4, r0
	blo _02098196
	bl sub_02022974
_02098196:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020981A8 ; =0x020F64D4
	ldrb r0, [r0, r1]
	pop {r4, pc}
	nop
_020981A4: .word 0x0000032A
_020981A8: .word 0x020F64D4
	thumb_func_end sub_02098188

	thumb_func_start sub_020981AC
sub_020981AC: ; 0x020981AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020981C8 ; =0x0000032A
	cmp r4, r0
	blo _020981BA
	bl sub_02022974
_020981BA:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020981CC ; =0x020F64D5
	ldrb r0, [r0, r1]
	pop {r4, pc}
	nop
_020981C8: .word 0x0000032A
_020981CC: .word 0x020F64D5
	thumb_func_end sub_020981AC

	thumb_func_start sub_020981D0
sub_020981D0: ; 0x020981D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020981EC ; =0x0000032A
	cmp r4, r0
	blo _020981DE
	bl sub_02022974
_020981DE:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _020981F0 ; =0x020F64D6
	ldrh r0, [r0, r1]
	pop {r4, pc}
	nop
_020981EC: .word 0x0000032A
_020981F0: .word 0x020F64D6
	thumb_func_end sub_020981D0

	thumb_func_start sub_020981F4
sub_020981F4: ; 0x020981F4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02098210 ; =0x0000032A
	cmp r4, r0
	blo _02098202
	bl sub_02022974
_02098202:
	mov r0, #0xa
	add r1, r4, #0
	mul r1, r0
	ldr r0, _02098214 ; =0x020F64D8
	ldrb r0, [r0, r1]
	pop {r4, pc}
	nop
_02098210: .word 0x0000032A
_02098214: .word 0x020F64D8
	thumb_func_end sub_020981F4

	.rodata


	.global Unk_020F64C0
Unk_020F64C0: ; 0x020F64C0
	.incbin "incbin/arm9_rodata.bin", 0x11880, 0x11890 - 0x11880

	.global Unk_020F64D0
Unk_020F64D0: ; 0x020F64D0
	.incbin "incbin/arm9_rodata.bin", 0x11890, 0x32A

