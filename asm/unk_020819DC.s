	.include "macros/function.inc"
	.include "include/unk_020819DC.inc"

	

	.text


	thumb_func_start sub_020819DC
sub_020819DC: ; 0x020819DC
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r6, r0, #0
	bl sub_0201A8D4
	add r1, r5, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x10
	add r2, #8
	bl sub_0201A8D4
	add r1, r5, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x20
	add r2, #0x10
	bl sub_0201A8D4
	add r1, r5, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x30
	add r2, #0x18
	bl sub_0201A8D4
	add r5, #0x40
	add r4, #0x20
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_0201A8D4
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_020819DC

	thumb_func_start sub_02081A24
sub_02081A24: ; 0x02081A24
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r4, _02081B60 ; =0x020F1F08
	ldr r0, [r5, #0]
	add r1, r5, #4
	add r2, r4, #0
	bl sub_020819DC
	add r1, r5, #0
	ldr r0, [r5, #0]
	ldr r2, _02081B64 ; =0x020F1F58
	add r1, #0xa4
	bl sub_020819DC
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B68 ; =0x020F1FA8
	add r1, r5, r1
	bl sub_020819DC
	ldr r0, _02081B6C ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #2
	ldr r0, [r5, #0]
	bne _02081A8C
	add r1, r5, #0
	add r2, r4, #0
	add r1, #0x54
	add r2, #0xf0
	bl sub_020819DC
	mov r2, #0x46
	add r1, r5, #0
	lsl r2, r2, #2
	ldr r0, [r5, #0]
	add r1, #0xf4
	add r2, r4, r2
	bl sub_020819DC
	mov r2, #0x65
	lsl r2, r2, #2
	add r1, r5, r2
	sub r2, #0x54
	ldr r0, [r5, #0]
	add r2, r4, r2
	bl sub_020819DC
	b _02081AB6
_02081A8C:
	add r1, r5, #0
	add r2, r4, #0
	add r1, #0x54
	add r2, #0x28
	bl sub_020819DC
	add r1, r5, #0
	add r2, r4, #0
	ldr r0, [r5, #0]
	add r1, #0xf4
	add r2, #0x78
	bl sub_020819DC
	mov r1, #0x65
	lsl r1, r1, #2
	add r4, #0xc8
	ldr r0, [r5, #0]
	add r1, r5, r1
	add r2, r4, #0
	bl sub_020819DC
_02081AB6:
	ldr r0, _02081B6C ; =0x000005A4
	ldr r0, [r5, r0]
	add r0, #0x20
	ldrb r0, [r0]
	cmp r0, #2
	beq _02081AD0
	cmp r0, #0x11
	beq _02081AD0
	add r0, #0xea
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _02081AF8
_02081AD0:
	ldr r1, _02081B70 ; =0x020F1E98
	add r0, sp, #0
	ldrh r3, [r1, #0x38]
	add r2, sp, #0
	strh r3, [r0]
	ldrh r3, [r1, #0x3a]
	strh r3, [r0, #2]
	ldrh r3, [r1, #0x3c]
	ldrh r1, [r1, #0x3e]
	strh r3, [r0, #4]
	strh r1, [r0, #6]
	mov r1, #0x16
	strb r1, [r0, #2]
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	add r1, r5, r1
	bl sub_0201A8D4
	b _02081B06
_02081AF8:
	mov r1, #0x7d
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B74 ; =0x020F1ED0
	add r1, r5, r1
	bl sub_0201A8D4
_02081B06:
	mov r1, #0x79
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B78 ; =0x020F1ED8
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x81
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B7C ; =0x020F1EE0
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x85
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B80 ; =0x020F1EE8
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x89
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B84 ; =0x020F1EF0
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x8d
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B88 ; =0x020F1EF8
	add r1, r5, r1
	bl sub_0201A8D4
	mov r1, #0x91
	lsl r1, r1, #2
	ldr r0, [r5, #0]
	ldr r2, _02081B8C ; =0x020F1F00
	add r1, r5, r1
	bl sub_0201A8D4
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02081B60: .word 0x020F1F08
_02081B64: .word 0x020F1F58
_02081B68: .word 0x020F1FA8
_02081B6C: .word 0x000005A4
_02081B70: .word 0x020F1E98
_02081B74: .word 0x020F1ED0
_02081B78: .word 0x020F1ED8
_02081B7C: .word 0x020F1EE0
_02081B80: .word 0x020F1EE8
_02081B84: .word 0x020F1EF0
_02081B88: .word 0x020F1EF8
_02081B8C: .word 0x020F1F00
	thumb_func_end sub_02081A24

	thumb_func_start sub_02081B90
sub_02081B90: ; 0x02081B90
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #0
	add r4, r6, #4
_02081B98:
	lsl r0, r5, #4
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #0x25
	blo _02081B98
	mov r4, #0x95
	lsl r4, r4, #2
	add r0, r6, r4
	bl sub_0201A7CC
	cmp r0, #1
	bne _02081BBE
	add r0, r6, r4
	bl sub_0201A8FC
_02081BBE:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02081B90

	thumb_func_start sub_02081BC0
sub_02081BC0: ; 0x02081BC0
	push {r4, lr}
	ldr r2, _02081CA8 ; =0x0000069C
	add r4, r0, #0
	ldr r0, [r4, r2]
	add r2, #0x10
	ldr r2, [r4, r2]
	mov r1, #0x91
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x92
	ldr r0, [r4, r2]
	add r2, #0x14
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x93
	ldr r0, [r4, r2]
	add r2, #0x18
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0xa0
	ldr r0, [r4, r2]
	add r2, #0x1c
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0xa1
	ldr r0, [r4, r2]
	add r2, #0x20
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x94
	ldr r0, [r4, r2]
	add r2, #0x24
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x95
	ldr r0, [r4, r2]
	add r2, #0x28
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x96
	ldr r0, [r4, r2]
	add r2, #0x2c
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x97
	ldr r0, [r4, r2]
	add r2, #0x30
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x98
	ldr r0, [r4, r2]
	add r2, #0x34
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x99
	ldr r0, [r4, r2]
	add r2, #0x38
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x9a
	ldr r0, [r4, r2]
	add r2, #0x3c
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x9b
	ldr r0, [r4, r2]
	add r2, #0x40
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0x9a
	ldr r0, [r4, r2]
	add r2, #0x44
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0xa6
	ldr r0, [r4, r2]
	add r2, #0x48
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	ldr r2, _02081CA8 ; =0x0000069C
	mov r1, #0xc8
	ldr r0, [r4, r2]
	add r2, #0x4c
	ldr r2, [r4, r2]
	bl sub_0200B1B8
	pop {r4, pc}
	nop
_02081CA8: .word 0x0000069C
	thumb_func_end sub_02081BC0

	thumb_func_start sub_02081CAC
sub_02081CAC: ; 0x02081CAC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02081CF0 ; =0x0000069C
	add r4, r2, #0
	add r7, r1, #0
	add r1, r4, #0
	ldr r0, [r5, r0]
	add r1, #0x9c
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	add r2, r7, #0
	bl sub_0200B630
	mov r1, #0x6a
	add r4, #0x10
	lsl r1, r1, #4
	lsl r2, r4, #2
	ldr r0, [r5, r1]
	add r2, r5, r2
	add r1, #0xc
	ldr r1, [r2, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02081CF0: .word 0x0000069C
	thumb_func_end sub_02081CAC

	thumb_func_start sub_02081CF4
sub_02081CF4: ; 0x02081CF4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	add r7, r1, #0
	lsl r0, r2, #1
	mov r1, #0x17
	sub r1, r1, r0
	lsl r1, r1, #0x18
	str r2, [sp, #0x14]
	lsr r1, r1, #0x18
	str r1, [sp]
	mov r1, #0xc
	lsl r0, r0, #0x18
	str r1, [sp, #4]
	lsr r0, r0, #0x18
	mov r1, #9
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	lsl r1, r1, #6
	str r1, [sp, #0x10]
	add r1, #0x14
	ldr r0, [r5, #0]
	add r1, r5, r1
	mov r3, #0x13
	bl sub_0201A7E8
	ldr r0, [sp, #0x14]
	mov r1, #0xc
	bl sub_02013A04
	ldr r1, _02081DFC ; =0x000006FC
	mov r6, #0
	str r0, [r5, r1]
	ldr r0, [sp, #0x14]
	add r4, r6, #0
	cmp r0, #0
	ble _02081D88
_02081D40:
	ldrb r0, [r7, r4]
	cmp r0, #0x10
	blo _02081D64
	bl sub_02083370
	lsl r1, r6, #2
	add r2, r0, #0
	ldr r0, _02081DFC ; =0x000006FC
	add r3, r5, r1
	ldr r1, _02081E00 ; =0x000006EC
	ldr r0, [r5, r0]
	ldr r1, [r3, r1]
	bl sub_02013A6C
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	b _02081D7C
_02081D64:
	bl sub_02083370
	ldrb r1, [r7, r4]
	add r2, r0, #0
	ldr r0, _02081DFC ; =0x000006FC
	lsl r1, r1, #2
	add r3, r5, r1
	ldr r1, _02081E04 ; =0x000006AC
	ldr r0, [r5, r0]
	ldr r1, [r3, r1]
	bl sub_02013A6C
_02081D7C:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, [sp, #0x14]
	cmp r4, r0
	blt _02081D40
_02081D88:
	ldr r0, _02081DFC ; =0x000006FC
	mov r1, #0
	ldr r0, [r5, r0]
	str r0, [sp, #0x18]
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x1c]
	add r0, sp, #0x18
	strb r1, [r0, #8]
	mov r1, #1
	strb r1, [r0, #9]
	ldr r1, [sp, #0x14]
	strb r1, [r0, #0xa]
	ldrb r2, [r0, #0xb]
	mov r1, #0xf
	bic r2, r1
	strb r2, [r0, #0xb]
	ldrb r2, [r0, #0xb]
	mov r1, #0x30
	bic r2, r1
	strb r2, [r0, #0xb]
	ldr r1, [sp, #0x14]
	ldrb r2, [r0, #0xb]
	cmp r1, #4
	blo _02081DC8
	mov r1, #0xc0
	bic r2, r1
	mov r1, #0x40
	orr r1, r2
	strb r1, [r0, #0xb]
	b _02081DCE
_02081DC8:
	mov r1, #0xc0
	bic r2, r1
	strb r2, [r0, #0xb]
_02081DCE:
	mov r0, #0x95
	lsl r0, r0, #2
	mov r1, #1
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0xc
	str r0, [sp]
	mov r0, #2
	mov r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x18
	mov r1, #8
	add r3, r2, #0
	bl sub_02001B7C
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r5, r1]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02081DFC: .word 0x000006FC
_02081E00: .word 0x000006EC
_02081E04: .word 0x000006AC
	thumb_func_end sub_02081CF4

	thumb_func_start sub_02081E08
sub_02081E08: ; 0x02081E08
	push {r4, r5, r6, lr}
	ldr r1, _02081E98 ; =0x000005A4
	add r5, r0, #0
	ldr r0, [r5, r1]
	add r2, r0, #0
	add r2, #0x20
	ldrb r2, [r2]
	cmp r2, #0xf
	bne _02081E2A
	ldr r2, _02081E9C ; =0x000006A4
	add r1, #0xf8
	ldr r0, [r5, r1]
	ldr r2, [r5, r2]
	mov r1, #0x2a
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
_02081E2A:
	cmp r2, #0x15
	bne _02081E52
	ldr r1, _02081EA0 ; =0x00000B29
	ldrb r2, [r5, r1]
	mov r1, #0x2c
	mul r1, r2
	ldr r2, _02081EA4 ; =0x00000714
	add r1, r5, r1
	ldrb r1, [r1, r2]
	cmp r1, #1
	bne _02081E52
	add r0, r2, #0
	sub r0, #0x78
	sub r2, #0x70
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0xc6
	bl sub_0200B1B8
	pop {r4, r5, r6, pc}
_02081E52:
	ldr r1, _02081EA0 ; =0x00000B29
	ldr r0, [r0, #0]
	ldrb r1, [r5, r1]
	bl sub_0207A0FC
	add r6, r0, #0
	ldr r0, _02081EA8 ; =0x0000069C
	mov r1, #0x25
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r4, r0, #0
	add r0, r6, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r1, #0x6a
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, r1, #4
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	nop
_02081E98: .word 0x000005A4
_02081E9C: .word 0x000006A4
_02081EA0: .word 0x00000B29
_02081EA4: .word 0x00000714
_02081EA8: .word 0x0000069C
	thumb_func_end sub_02081E08

	thumb_func_start sub_02081EAC
sub_02081EAC: ; 0x02081EAC
	push {r3, r4, lr}
	sub sp, #4
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	ldr r0, _02081ED4 ; =0x00000698
	add r4, r1, #0
	ldr r0, [r2, r0]
	add r3, r2, #4
	lsl r2, r4, #2
	add r2, r4, r2
	add r2, r2, #2
	lsl r2, r2, #4
	add r2, r3, r2
	mov r1, #0
	mov r3, #0x1c
	bl sub_0200C578
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02081ED4: .word 0x00000698
	thumb_func_end sub_02081EAC

	thumb_func_start sub_02081ED8
sub_02081ED8: ; 0x02081ED8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, _02081F24 ; =0x0000069C
	ldr r1, _02081F28 ; =0x020F1EA0
	lsl r2, r4, #3
	ldrh r1, [r1, r2]
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	add r6, r0, #0
	add r0, r7, #0
	bl sub_02076B10
	add r2, r0, #0
	mov r0, #0x6a
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_0200B5CC
	mov r2, #0x6a
	mov r1, #0x2c
	lsl r2, r2, #4
	mul r1, r4
	ldr r0, [r5, r2]
	add r1, r5, r1
	add r2, #0x64
	ldr r1, [r1, r2]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02081F24: .word 0x0000069C
_02081F28: .word 0x020F1EA0
	thumb_func_end sub_02081ED8

	thumb_func_start sub_02081F2C
sub_02081F2C: ; 0x02081F2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	lsl r6, r0, #4
	add r7, r1, #0
	mov r0, #0x2c
	mul r7, r0
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02081FE8 ; =0x000F0E00
	ldr r2, _02081FEC ; =0x00000704
	str r0, [sp, #8]
	add r4, r5, #4
	str r1, [sp, #0xc]
	add r3, r5, r7
	ldr r2, [r3, r2]
	add r0, r4, r6
	add r3, r1, #0
	bl sub_0201D78C
	ldr r2, _02081FF0 ; =0x00000714
	add r0, r5, r7
	ldrb r0, [r0, r2]
	cmp r0, #1
	bne _02081F70
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_02081F70:
	sub r0, r2, #2
	add r0, r5, r0
	ldrh r0, [r0, r7]
	lsl r1, r0, #0x13
	lsr r1, r1, #0x1f
	bne _02081FDE
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1e
	bne _02081FB0
	add r0, r2, #0
	sub r0, #0x78
	sub r2, #0x6c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x1b
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	ldr r2, _02081FF4 ; =0x000006A8
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	mov r3, #0x40
	bl sub_0201D78C
	b _02081FDE
_02081FB0:
	cmp r0, #1
	bne _02081FDE
	add r0, r2, #0
	sub r0, #0x78
	sub r2, #0x6c
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	mov r1, #0x1c
	bl sub_0200B1B8
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02081FF8 ; =0x00050600
	ldr r2, _02081FF4 ; =0x000006A8
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	add r0, r4, r6
	mov r3, #0x40
	bl sub_0201D78C
_02081FDE:
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02081FE8: .word 0x000F0E00
_02081FEC: .word 0x00000704
_02081FF0: .word 0x00000714
_02081FF4: .word 0x000006A8
_02081FF8: .word 0x00050600
	thumb_func_end sub_02081F2C

	thumb_func_start sub_02081FFC
sub_02081FFC: ; 0x02081FFC
	push {r4, lr}
	sub sp, #0x10
	lsl r2, r1, #2
	add r2, r1, r2
	add r2, r2, #1
	add r3, r0, #4
	lsl r2, r2, #4
	add r4, r3, r2
	mov r2, #0x2c
	mul r2, r1
	ldr r3, _02082054 ; =0x00000712
	add r2, r0, r2
	ldrh r1, [r2, r3]
	lsl r1, r1, #0x14
	lsr r1, r1, #0x14
	cmp r1, #7
	beq _02082028
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
_02082028:
	mov r1, #0
	str r1, [sp]
	str r4, [sp, #4]
	mov r1, #5
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #0xc]
	add r1, r3, #0
	sub r3, r3, #4
	sub r1, #0x7a
	ldrh r2, [r2, r3]
	ldr r0, [r0, r1]
	mov r1, #1
	mov r3, #3
	bl sub_0200C648
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	nop
_02082054: .word 0x00000712
	thumb_func_end sub_02081FFC

	thumb_func_start sub_02082058
sub_02082058: ; 0x02082058
	push {r4, r5, lr}
	sub sp, #0xc
	add r2, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #2
	add r3, r2, #4
	lsl r0, r0, #4
	add r4, r3, r0
	mov r3, #0x2c
	mul r3, r1
	add r1, r2, r3
	str r4, [sp]
	mov r0, #4
	str r0, [sp, #4]
	mov r0, #2
	ldr r5, _02082094 ; =0x00000698
	str r0, [sp, #8]
	ldr r0, [r2, r5]
	add r5, #0x72
	ldrh r1, [r1, r5]
	mov r2, #3
	mov r3, #1
	bl sub_0200C5BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02082094: .word 0x00000698
	thumb_func_end sub_02082058

	thumb_func_start sub_02082098
sub_02082098: ; 0x02082098
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #4
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #2
	lsl r4, r0, #4
	mov r0, #0x18
	str r0, [sp]
	mov r0, #0x10
	mov r1, #0
	str r0, [sp, #4]
	add r0, r5, r4
	mov r2, #4
	add r3, r1, #0
	bl sub_0201AE78
	add r0, r5, r4
	bl sub_0201A9A4
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02082098

	thumb_func_start sub_020820C4
sub_020820C4: ; 0x020820C4
	push {r4, r5, lr}
	sub sp, #0xc
	add r2, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #2
	add r3, r2, #4
	lsl r0, r0, #4
	add r4, r3, r0
	mov r3, #0x2c
	mul r3, r1
	add r1, r2, r3
	str r4, [sp]
	mov r0, #0x24
	str r0, [sp, #4]
	mov r0, #2
	ldr r5, _02082100 ; =0x00000698
	str r0, [sp, #8]
	ldr r0, [r2, r5]
	add r5, #0x74
	ldrh r1, [r1, r5]
	mov r2, #3
	mov r3, #0
	bl sub_0200C5BC
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02082100: .word 0x00000698
	thumb_func_end sub_020820C4

	thumb_func_start sub_02082104
sub_02082104: ; 0x02082104
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	lsl r2, r1, #2
	add r2, r1, r2
	add r5, r0, #0
	add r2, r2, #3
	add r0, r5, #4
	lsl r2, r2, #4
	add r4, r0, r2
	mov r0, #0x2c
	add r6, r1, #0
	mul r6, r0
	ldr r0, _020821E8 ; =0x0000070C
	mov r2, #0x30
	add r7, r5, r0
	sub r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #8]
	ldrh r0, [r0, r6]
	ldrh r1, [r7, r6]
	bl sub_0208C104
	cmp r0, #4
	bhi _0208219A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02082140: ; jump table
	.short _0208214A - _02082140 - 2 ; case 0
	.short _02082184 - _02082140 - 2 ; case 1
	.short _0208216C - _02082140 - 2 ; case 2
	.short _02082154 - _02082140 - 2 ; case 3
	.short _02082154 - _02082140 - 2 ; case 4
_0208214A:
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02082154:
	ldrb r3, [r4, #9]
	ldr r1, _020821EC ; =0x000004B6
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
	b _0208219A
_0208216C:
	ldrb r3, [r4, #9]
	ldr r1, _020821F0 ; =0x000004D6
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
	b _0208219A
_02082184:
	ldrb r3, [r4, #9]
	ldr r1, _020821F4 ; =0x000004F6
	mov r0, #1
	lsl r3, r3, #4
	add r3, #9
	lsl r3, r3, #0x11
	add r1, r5, r1
	mov r2, #4
	lsr r3, r3, #0x10
	bl sub_0201972C
_0208219A:
	ldr r0, [sp, #8]
	ldrh r1, [r7, r6]
	ldrh r0, [r0, r6]
	mov r2, #0x30
	bl sub_0208C0BC
	add r5, r0, #0
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #2
	bl sub_0201AE78
	str r5, [sp]
	mov r0, #2
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #9
	mov r2, #0
	mov r3, #3
	bl sub_0201AE78
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	mov r3, #5
	bl sub_0201AE78
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020821E8: .word 0x0000070C
_020821EC: .word 0x000004B6
_020821F0: .word 0x000004D6
_020821F4: .word 0x000004F6
	thumb_func_end sub_02082104

	thumb_func_start sub_020821F8
sub_020821F8: ; 0x020821F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r1, #0
	add r5, r0, #0
	lsl r0, r6, #2
	add r4, r6, r0
	add r0, r5, #4
	str r0, [sp]
	lsl r0, r4, #4
	ldr r1, [sp]
	str r0, [sp, #4]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #1
	lsl r0, r0, #4
	add r7, r5, #4
	str r0, [sp, #8]
	add r0, r7, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r7, #0
	str r0, [sp, #0xc]
	add r0, r4, #2
	lsl r0, r0, #4
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x10]
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, r4, #3
	lsl r4, r0, #4
	ldr r0, [sp, #0x14]
	mov r1, #0
	add r0, r0, r4
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02081F2C
	mov r0, #0x2c
	mul r0, r6
	add r1, r5, r0
	ldr r0, _020822B8 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0208228A
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, [sp, #8]
	add r0, r7, r0
	bl sub_0201A9A4
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r1, r0
	bl sub_0201A9A4
	ldr r0, [sp, #0x14]
	add r0, r0, r4
	bl sub_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0208228A:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02081EAC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02081FFC
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02082058
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020820C4
	add r0, r5, #0
	add r1, r6, #0
	bl sub_02082104
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020822B8: .word 0x00000714
	thumb_func_end sub_020821F8

	thumb_func_start sub_020822BC
sub_020822BC: ; 0x020822BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r4, r1, r0
	add r1, r5, #4
	lsl r0, r4, #4
	add r0, r1, r0
	bl sub_0201ACCC
	add r0, r4, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201ACCC
	add r0, r4, #2
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201ACCC
	add r0, r4, #3
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201ACCC
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020822BC

	thumb_func_start sub_020822F4
sub_020822F4: ; 0x020822F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	lsl r0, r1, #2
	add r4, r1, r0
	add r1, r5, #4
	lsl r0, r4, #4
	add r0, r1, r0
	bl sub_0201AD10
	add r0, r4, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201AD10
	add r0, r4, #2
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201AD10
	add r0, r4, #3
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	bl sub_0201AD10
	pop {r3, r4, r5, pc}
	thumb_func_end sub_020822F4

	thumb_func_start sub_0208232C
sub_0208232C: ; 0x0208232C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r6, r4, r0
	add r1, r5, #4
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081F2C
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _020823BC ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02082376
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02082810
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02082376:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081FFC
	ldr r0, _020823C0 ; =0x000005A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	mov r0, #0
	ldr r3, _020823C0 ; =0x000005A4
	str r0, [sp]
	ldr r3, [r5, r3]
	mov r2, #3
	ldrh r3, [r3, #0x24]
	bl sub_02076B94
	cmp r0, #0
	bne _020823AE
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02082810
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_020823AE:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02082810
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020823BC: .word 0x00000714
_020823C0: .word 0x000005A4
	thumb_func_end sub_0208232C

	thumb_func_start sub_020823C4
sub_020823C4: ; 0x020823C4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r6, r4, r0
	add r1, r5, #4
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081F2C
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02082454 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _0208240A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02082880
	pop {r4, r5, r6, pc}
_0208240A:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081FFC
	ldr r0, _02082458 ; =0x000005A4
	add r1, r4, #0
	ldr r0, [r5, r0]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02086104
	cmp r0, #0xff
	bne _02082436
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl sub_02082880
	pop {r4, r5, r6, pc}
_02082436:
	cmp r0, #0xfd
	bne _02082446
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl sub_02082880
	pop {r4, r5, r6, pc}
_02082446:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #0
	bl sub_02082880
	pop {r4, r5, r6, pc}
	nop
_02082454: .word 0x00000714
_02082458: .word 0x000005A4
	thumb_func_end sub_020823C4

	thumb_func_start sub_0208245C
sub_0208245C: ; 0x0208245C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r6, r4, r0
	add r1, r5, #4
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081F2C
	mov r0, #0x2c
	add r6, r4, #0
	mul r6, r0
	ldr r0, _020824B8 ; =0x00000714
	add r1, r5, r6
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _020824A0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081FFC
_020824A0:
	ldr r2, _020824BC ; =0x00000712
	add r3, r5, r6
	ldrh r2, [r3, r2]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x1f
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	bl sub_02082900
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020824B8: .word 0x00000714
_020824BC: .word 0x00000712
	thumb_func_end sub_0208245C

	thumb_func_start sub_020824C0
sub_020824C0: ; 0x020824C0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #2
	add r6, r4, r0
	add r1, r5, #4
	lsl r0, r6, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #1
	add r1, r5, #4
	lsl r0, r0, #4
	add r0, r1, r0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081F2C
	mov r0, #0x2c
	mul r0, r4
	add r1, r5, r0
	ldr r0, _02082504 ; =0x00000714
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _02082502
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02081FFC
_02082502:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02082504: .word 0x00000714
	thumb_func_end sub_020824C0

	thumb_func_start sub_02082508
sub_02082508: ; 0x02082508
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _020825A0 ; =0x000005A4
	add r4, r1, #0
	ldr r1, [r5, r0]
	mov r2, #0
	add r0, r1, #0
	add r0, #0x32
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r3, r0, #0x1c
	beq _02082540
	add r0, r4, #1
_02082522:
	add r6, r1, r2
	add r6, #0x2c
	ldrb r6, [r6]
	cmp r0, r6
	bne _02082536
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02082964
	pop {r4, r5, r6, pc}
_02082536:
	add r2, r2, #1
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
	cmp r2, r3
	blo _02082522
_02082540:
	add r1, #0x20
	ldrb r0, [r1]
	cmp r0, #0x16
	bne _02082560
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080404
	cmp r0, #0
	bne _02082594
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02082964
	pop {r4, r5, r6, pc}
_02082560:
	cmp r0, #0x17
	bne _0208257C
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080488
	cmp r0, #0
	bne _02082594
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02082964
	pop {r4, r5, r6, pc}
_0208257C:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02080354
	cmp r0, #0
	bne _02082594
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #8
	bl sub_02082964
	pop {r4, r5, r6, pc}
_02082594:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #7
	bl sub_02082964
	pop {r4, r5, r6, pc}
	; .align 2, 0
_020825A0: .word 0x000005A4
	thumb_func_end sub_02082508

	thumb_func_start sub_020825A4
sub_020825A4: ; 0x020825A4
	push {r4, lr}
	add r4, r2, #0
	mov r2, #0
	bl sub_02002D7C
	sub r0, r4, r0
	lsr r0, r0, #1
	pop {r4, pc}
	thumb_func_end sub_020825A4

	thumb_func_start sub_020825B4
sub_020825B4: ; 0x020825B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0x79
	lsl r0, r0, #2
	add r4, r1, #0
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #1
	tst r0, r4
	beq _0208261E
	ldr r2, _0208266C ; =0x0000069C
	mov r1, #0
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r2, _02082670 ; =0x000001EB
	ldr r1, _02082674 ; =0x000006A8
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	mov r0, #0
	lsl r2, r2, #3
	bl sub_020825A4
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02082678 ; =0x000F0E00
	add r2, #0xe5
	str r0, [sp, #8]
	add r0, r5, r2
	ldr r2, _02082674 ; =0x000006A8
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	bl sub_0201D78C
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
_0208261E:
	mov r0, #2
	tst r0, r4
	beq _02082668
	ldr r2, _0208266C ; =0x0000069C
	mov r1, #1
	ldr r0, [r5, r2]
	add r2, #0xc
	ldr r2, [r5, r2]
	bl sub_0200B1B8
	ldr r2, _0208267C ; =0x000001FB
	ldr r1, _02082674 ; =0x000006A8
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	mov r0, #0
	lsl r2, r2, #3
	bl sub_020825A4
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r2, #0xff
	str r2, [sp, #4]
	ldr r0, _02082678 ; =0x000F0E00
	add r2, #0xf5
	str r0, [sp, #8]
	add r0, r5, r2
	ldr r2, _02082674 ; =0x000006A8
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	bl sub_0201D78C
	mov r0, #0x7d
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
_02082668:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0208266C: .word 0x0000069C
_02082670: .word 0x000001EB
_02082674: .word 0x000006A8
_02082678: .word 0x000F0E00
_0208267C: .word 0x000001FB
	thumb_func_end sub_020825B4

	thumb_func_start sub_02082680
sub_02082680: ; 0x02082680
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	cmp r3, #1
	bne _0208269A
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200E060
_0208269A:
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _020826B8
	ldr r2, _020826D8 ; =0x0000069C
	add r1, r6, #0
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_020826B8:
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r2, _020826DC ; =0x000006A4
	str r3, [sp, #8]
	ldr r2, [r5, r2]
	add r0, r4, #0
	mov r1, #1
	bl sub_0201D738
	add r0, r4, #0
	bl sub_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_020826D8: .word 0x0000069C
_020826DC: .word 0x000006A4
	thumb_func_end sub_02082680

	thumb_func_start sub_020826E0
sub_020826E0: ; 0x020826E0
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x81
	lsl r1, r1, #2
	add r3, r2, #0
	add r1, r0, r1
	add r2, r4, #0
	bl sub_02082680
	pop {r4, pc}
	thumb_func_end sub_020826E0

	thumb_func_start sub_020826F4
sub_020826F4: ; 0x020826F4
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x85
	lsl r1, r1, #2
	add r3, r2, #0
	add r1, r0, r1
	add r2, r4, #0
	bl sub_02082680
	pop {r4, pc}
	thumb_func_end sub_020826F4

	thumb_func_start sub_02082708
sub_02082708: ; 0x02082708
	push {r4, r5, r6, lr}
	mov r6, #0x89
	add r5, r0, #0
	add r4, r1, #0
	lsl r6, r6, #2
	cmp r2, #1
	bne _02082722
	add r0, r5, r6
	mov r1, #1
	mov r2, #0xa
	mov r3, #0xf
	bl sub_0200E060
_02082722:
	add r0, r5, r6
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _02082740
	ldr r2, _02082748 ; =0x0000069C
	add r1, r4, #0
	ldr r0, [r5, r2]
	add r2, #8
	ldr r2, [r5, r2]
	bl sub_0200B1B8
_02082740:
	add r0, r5, #0
	bl sub_0208274C
	pop {r4, r5, r6, pc}
	; .align 2, 0
_02082748: .word 0x0000069C
	thumb_func_end sub_02082708

	thumb_func_start sub_0208274C
sub_0208274C: ; 0x0208274C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	ldr r0, _0208278C ; =0x000005A4
	ldr r0, [r4, r0]
	ldr r0, [r0, #0xc]
	bl sub_02027AC0
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _02082790 ; =sub_0208279C
	ldr r2, _02082794 ; =0x000006A4
	str r0, [sp, #8]
	mov r0, #0x89
	lsl r0, r0, #2
	ldr r2, [r4, r2]
	add r0, r4, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02082798 ; =0x00000B28
	strb r0, [r4, r1]
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0208278C: .word 0x000005A4
_02082790: .word sub_0208279C
_02082794: .word 0x000006A4
_02082798: .word 0x00000B28
	thumb_func_end sub_0208274C

	thumb_func_start sub_0208279C
sub_0208279C: ; 0x0208279C
	push {r3, lr}
	cmp r1, #5
	bhi _020827DE
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020827AE: ; jump table
	.short _020827DE - _020827AE - 2 ; case 0
	.short _020827BA - _020827AE - 2 ; case 1
	.short _020827C0 - _020827AE - 2 ; case 2
	.short _020827C6 - _020827AE - 2 ; case 3
	.short _020827CE - _020827AE - 2 ; case 4
	.short _020827D6 - _020827AE - 2 ; case 5
_020827BA:
	bl sub_020057E0
	pop {r3, pc}
_020827C0:
	bl sub_020061E4
	pop {r3, pc}
_020827C6:
	ldr r0, _020827E4 ; =0x000005E6
	bl sub_02005748
	b _020827DE
_020827CE:
	ldr r0, _020827E8 ; =0x00000483
	bl sub_02006150
	b _020827DE
_020827D6:
	ldr r0, _020827E4 ; =0x000005E6
	bl sub_020057D4
	pop {r3, pc}
_020827DE:
	mov r0, #0
	pop {r3, pc}
	nop
_020827E4: .word 0x000005E6
_020827E8: .word 0x00000483
	thumb_func_end sub_0208279C

	thumb_func_start sub_020827EC
sub_020827EC: ; 0x020827EC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0xc
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r1, _0208280C ; =0x020F1E98
	mov r2, #1
	mov r3, #0xe
	bl sub_02002100
	mov r1, #7
	lsl r1, r1, #8
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_0208280C: .word 0x020F1E98
	thumb_func_end sub_020827EC

	thumb_func_start sub_02082810
sub_02082810: ; 0x02082810
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	add r4, r5, #4
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	add r7, r2, #0
	bl sub_0201ADA4
	cmp r7, #0
	beq _02082834
	cmp r7, #1
	beq _02082842
	b _0208284E
_02082834:
	ldr r0, _02082878 ; =0x0000069C
	mov r1, #0xb2
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	b _0208284E
_02082842:
	ldr r0, _02082878 ; =0x0000069C
	mov r1, #0xb3
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
_0208284E:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0208287C ; =0x000F0E00
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02082878: .word 0x0000069C
_0208287C: .word 0x000F0E00
	thumb_func_end sub_02082810

	thumb_func_start sub_02082880
sub_02082880: ; 0x02082880
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	add r4, r5, #4
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	add r6, r2, #0
	bl sub_0201ADA4
	cmp r6, #0
	beq _020828A8
	cmp r6, #1
	beq _020828B6
	cmp r6, #2
	beq _020828C4
	b _020828D0
_020828A8:
	ldr r0, _020828F8 ; =0x0000069C
	mov r1, #0xaf
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	b _020828D0
_020828B6:
	ldr r0, _020828F8 ; =0x0000069C
	mov r1, #0xb0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
	b _020828D0
_020828C4:
	ldr r0, _020828F8 ; =0x0000069C
	mov r1, #0xb1
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x10]
_020828D0:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020828FC ; =0x000F0E00
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	add r0, r4, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r4, r7
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_020828F8: .word 0x0000069C
_020828FC: .word 0x000F0E00
	thumb_func_end sub_02082880

	thumb_func_start sub_02082900
sub_02082900: ; 0x02082900
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	add r4, r5, #4
	lsl r6, r0, #4
	add r0, r4, r6
	mov r1, #0
	add r7, r2, #0
	bl sub_0201ADA4
	cmp r7, #0
	ldr r0, _0208295C ; =0x0000069C
	bne _0208292A
	ldr r0, [r5, r0]
	mov r1, #0xb5
	bl sub_0200B1EC
	b _02082932
_0208292A:
	ldr r0, [r5, r0]
	mov r1, #0xb4
	bl sub_0200B1EC
_02082932:
	mov r1, #0
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02082960 ; =0x000F0E00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r6
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r6
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0208295C: .word 0x0000069C
_02082960: .word 0x000F0E00
	thumb_func_end sub_02082900

	thumb_func_start sub_02082964
sub_02082964: ; 0x02082964
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	lsl r0, r1, #2
	add r0, r1, r0
	add r0, r0, #4
	add r4, r5, #4
	lsl r7, r0, #4
	add r0, r4, r7
	mov r1, #0
	add r6, r2, #0
	bl sub_0201ADA4
	cmp r6, #6
	ldr r0, _020829D4 ; =0x0000069C
	bhs _02082992
	add r6, #0xa9
	ldr r0, [r5, r0]
	add r1, r6, #0
	bl sub_0200B1EC
	add r5, r0, #0
	b _020829AC
_02082992:
	cmp r6, #7
	bne _020829A2
	ldr r0, [r5, r0]
	mov r1, #0xa7
	bl sub_0200B1EC
	add r5, r0, #0
	b _020829AC
_020829A2:
	ldr r0, [r5, r0]
	mov r1, #0xa8
	bl sub_0200B1EC
	add r5, r0, #0
_020829AC:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _020829D8 ; =0x000F0E00
	add r2, r5, #0
	str r0, [sp, #8]
	add r0, r4, r7
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
	add r0, r4, r7
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020829D4: .word 0x0000069C
_020829D8: .word 0x000F0E00
	thumb_func_end sub_02082964

	thumb_func_start sub_020829DC
sub_020829DC: ; 0x020829DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, _02082B44 ; =0x000005A4
	ldr r1, _02082B48 ; =0x00000B29
	ldr r0, [r5, r0]
	ldrb r1, [r5, r1]
	ldr r0, [r0, #0]
	bl sub_0207A0FC
	mov r1, #0xa4
	mov r2, #0
	add r4, r0, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1]
	add r0, r4, #0
	mov r1, #0xa5
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #2]
	add r0, r4, #0
	mov r1, #0xa6
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #4]
	add r0, r4, #0
	mov r1, #0xa8
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #6]
	add r0, r4, #0
	mov r1, #0xa9
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #8]
	add r0, r4, #0
	mov r1, #0xa7
	mov r2, #0
	bl sub_02074470
	add r1, sp, #0x20
	strh r0, [r1, #0xa]
	mov r3, #1
	mov r1, #9
	str r3, [sp]
	mov r0, #0xe
	str r0, [sp, #4]
	mov r0, #0xc
	str r0, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	lsl r1, r1, #6
	str r1, [sp, #0x10]
	add r1, #0x14
	ldr r0, [r5, #0]
	add r1, r5, r1
	bl sub_0201A7E8
	mov r0, #0x95
	lsl r0, r0, #2
	mov r1, #1
	add r0, r5, r0
	add r2, r1, #0
	mov r3, #0xe
	bl sub_0200DC48
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r4, #0
	str r4, [sp, #0x14]
	add r7, r5, #0
	add r6, sp, #0x20
_02082A88:
	ldr r0, _02082B4C ; =0x0000069C
	ldr r1, [sp, #0x14]
	ldr r0, [r5, r0]
	add r1, #0xb9
	bl sub_0200B1EC
	str r0, [sp, #0x18]
	mov r1, #0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r2, [sp, #0x18]
	add r0, r5, r0
	add r3, r1, #0
	bl sub_0201D738
	ldr r0, [sp, #0x18]
	bl sub_020237BC
	ldr r0, _02082B4C ; =0x0000069C
	mov r1, #0xbf
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _02082B50 ; =0x00000B2C
	mov r0, #0x6a
	lsl r0, r0, #4
	ldrh r3, [r6]
	ldrh r2, [r7, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	sub r2, r3, r2
	mov r3, #2
	bl sub_0200B60C
	mov r0, #0x6a
	ldr r1, _02082B54 ; =0x000006A4
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x1c]
	bl sub_0200C388
	ldr r0, [sp, #0x1c]
	bl sub_020237BC
	ldr r1, _02082B54 ; =0x000006A4
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x68
	sub r3, r1, r0
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, _02082B54 ; =0x000006A4
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #0
	bl sub_0201D738
	ldrh r1, [r6]
	ldr r0, _02082B50 ; =0x00000B2C
	add r4, #0x10
	strh r1, [r7, r0]
	ldr r0, [sp, #0x14]
	add r7, r7, #2
	add r0, r0, #1
	add r6, r6, #2
	str r0, [sp, #0x14]
	cmp r0, #6
	blo _02082A88
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02082B44: .word 0x000005A4
_02082B48: .word 0x00000B29
_02082B4C: .word 0x0000069C
_02082B50: .word 0x00000B2C
_02082B54: .word 0x000006A4
	thumb_func_end sub_020829DC

	thumb_func_start sub_02082B58
sub_02082B58: ; 0x02082B58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x70
	str r0, [sp, #4]
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	mov r2, #0x50
	mov r3, #0
	bl sub_0201AE78
	ldr r0, _02082C04 ; =0x0000069C
	mov r1, #0xc0
	ldr r0, [r5, r0]
	bl sub_0200B1EC
	str r0, [sp, #0xc]
	mov r0, #0
	str r0, [sp, #0x10]
	add r6, r5, #0
	add r4, r0, #0
_02082B8A:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r2, _02082C08 ; =0x00000B2C
	mov r0, #0x6a
	lsl r0, r0, #4
	ldrh r2, [r6, r2]
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #3
	bl sub_0200B60C
	mov r0, #0x6a
	ldr r1, _02082C0C ; =0x000006A4
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0xc]
	bl sub_0200C388
	ldr r1, _02082C0C ; =0x000006A4
	mov r0, #0
	ldr r1, [r5, r1]
	add r2, r0, #0
	bl sub_02002D7C
	add r7, r0, #0
	mov r3, #0x68
	str r4, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r2, _02082C0C ; =0x000006A4
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #0
	sub r3, r3, r7
	bl sub_0201D738
	ldr r0, [sp, #0x10]
	add r6, r6, #2
	add r0, r0, #1
	add r4, #0x10
	str r0, [sp, #0x10]
	cmp r0, #6
	blo _02082B8A
	ldr r0, [sp, #0xc]
	bl sub_020237BC
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r5, r0
	bl sub_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02082C04: .word 0x0000069C
_02082C08: .word 0x00000B2C
_02082C0C: .word 0x000006A4
	thumb_func_end sub_02082B58

	thumb_func_start sub_02082C10
sub_02082C10: ; 0x02082C10
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0200DC9C
	mov r0, #0x95
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	thumb_func_end sub_02082C10

	.rodata


	.global Unk_020F1E98
Unk_020F1E98: ; 0x020F1E98
	.incbin "incbin/arm9_rodata.bin", 0xD258, 0xD260 - 0xD258

	.global Unk_020F1EA0
Unk_020F1EA0: ; 0x020F1EA0
	.incbin "incbin/arm9_rodata.bin", 0xD260, 0xD290 - 0xD260

	.global Unk_020F1ED0
Unk_020F1ED0: ; 0x020F1ED0
	.incbin "incbin/arm9_rodata.bin", 0xD290, 0xD2C8 - 0xD290

	.global Unk_020F1F08
Unk_020F1F08: ; 0x020F1F08
	.incbin "incbin/arm9_rodata.bin", 0xD2C8, 0x168

