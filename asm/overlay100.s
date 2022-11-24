	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov100_021D0D80
ov100_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x6f
	lsl r2, r0, #0x12
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0xd4
	mov r2, #0x6f
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xd4
	add r4, r0, #0
	bl sub_020D5124
	add r0, r5, #0
	bl sub_02006840
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xc
	bl ov100_021D1034
	mov r0, #0xc
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _021D0EA4 ; =ov100_021D13B4
	add r1, r4, #0
	bl sub_02017798
	add r0, r4, #0
	mov r1, #0x1f
	add r0, #0x5c
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x5d
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x5e
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0xcd
	strb r1, [r0]
	mov r0, #1
	bl sub_02005454
	add r0, r4, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r5, r4, #0
	ldr r0, [r0, #4]
	add r5, #0x3c
	bl sub_02027B50
	add r6, r0, #0
	add r0, r5, #0
	bl sub_0201A7A0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r2, #1
	str r2, [sp, #0x10]
	ldr r0, [r4, #0x18]
	add r1, r5, #0
	mov r3, #2
	bl sub_0201A7E8
	add r0, r5, #0
	mov r1, #0xff
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201A954
	lsl r0, r6, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x6f
	str r0, [sp, #4]
	mov r2, #0x7d
	ldr r0, [r4, #0x18]
	mov r1, #1
	lsl r2, r2, #2
	mov r3, #0xf
	bl sub_0200DD0C
	add r0, r6, #0
	bl sub_0200DD08
	add r2, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xf0
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	mov r1, #0x26
	mov r3, #0x6f
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	ldr r0, [r4, #0x1c]
	mov r1, #0xe
	mov r2, #7
	mov r3, #0x6f
	bl sub_02003050
	mov r2, #0x7d
	add r0, r5, #0
	mov r1, #0
	lsl r2, r2, #2
	mov r3, #0xf
	bl sub_0200E060
	add r4, #0xc
	add r0, r4, #0
	bl ov100_021D4788
	mov r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D0EA4: .word ov100_021D13B4
	thumb_func_end ov100_021D0D80

	thumb_func_start ov100_021D0EA8
ov100_021D0EA8: ; 0x021D0EA8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #3
	bhi _021D0F2A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0EC4: ; jump table
	.short _021D0ECC - _021D0EC4 - 2 ; case 0
	.short _021D0EE2 - _021D0EC4 - 2 ; case 1
	.short _021D0EFC - _021D0EC4 - 2 ; case 2
	.short _021D0F26 - _021D0EC4 - 2 ; case 3
_021D0ECC:
	ldr r2, [r4, #4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D0F38 ; =0x021D5130
	ldr r1, [r1, r3]
	blx r1
	str r0, [r4, #8]
	mov r0, #1
	str r0, [r5, #0]
	b _021D0F2E
_021D0EE2:
	ldr r2, [r4, #4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D0F3C ; =0x021D5134
	ldr r0, [r4, #8]
	ldr r1, [r1, r3]
	blx r1
	cmp r0, #0
	bne _021D0F2E
	mov r0, #2
	str r0, [r5, #0]
	b _021D0F2E
_021D0EFC:
	ldr r2, [r4, #4]
	mov r1, #0xc
	add r3, r2, #0
	mul r3, r1
	ldr r1, _021D0F40 ; =0x021D5138
	ldr r0, [r4, #8]
	ldr r1, [r1, r3]
	blx r1
	cmp r0, #0
	bne _021D0F2E
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #3
	beq _021D0F20
	mov r0, #0
	str r0, [r5, #0]
	b _021D0F2E
_021D0F20:
	mov r0, #3
	str r0, [r5, #0]
	b _021D0F2E
_021D0F26:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0F2A:
	bl sub_02022974
_021D0F2E:
	ldr r0, [r4, #0x14]
	bl sub_0200C7EC
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0F38: .word 0x021D5130
_021D0F3C: .word 0x021D5134
_021D0F40: .word 0x021D5138
	thumb_func_end ov100_021D0EA8

	thumb_func_start ov100_021D0F44
ov100_021D0F44: ; 0x021D0F44
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r5, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	add r0, r5, #0
	add r0, #0x3c
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x3c
	bl sub_0201ACF4
	add r0, r5, #0
	add r0, #0x3c
	bl sub_0201A8FC
	add r5, #0xc
	add r0, r5, #0
	bl ov100_021D111C
	ldr r0, _021D0F9C ; =0x021BF6DC
	mov r1, #0
	strb r1, [r0, #5]
	bl sub_0201FFE8
	add r0, r4, #0
	bl sub_02006830
	mov r0, #0x6f
	bl sub_0201807C
	mov r0, #0
	bl sub_02005454
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0F9C: .word 0x021BF6DC
	thumb_func_end ov100_021D0F44

	thumb_func_start ov100_021D0FA0
ov100_021D0FA0: ; 0x021D0FA0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x6f
	bl sub_0200C6E4
	add r2, sp, #0x2c
	ldr r5, _021D1028 ; =0x021D5110
	str r0, [r4, #4]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _021D102C ; =0x021D50E4
	stmia r2!, {r0, r1}
	add r5, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r1, r3, #0
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	mov r3, #0x20
	bl sub_0200C73C
	cmp r0, #0
	bne _021D0FE8
	bl sub_02022974
_021D0FE8:
	ldr r3, _021D1030 ; =0x021D50F8
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #4]
	bl sub_0200C704
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	mov r2, #0x80
	bl sub_0200C7C0
	cmp r0, #0
	bne _021D1012
	bl sub_02022974
_021D1012:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	add r2, sp, #0
	bl sub_0200CB30
	cmp r0, #0
	bne _021D1024
	bl sub_02022974
_021D1024:
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D1028: .word 0x021D5110
_021D102C: .word 0x021D50E4
_021D1030: .word 0x021D50F8
	thumb_func_end ov100_021D0FA0

	thumb_func_start ov100_021D1034
ov100_021D1034: ; 0x021D1034
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D110C ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D1110 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0xac
	mov r1, #0x6f
	bl sub_02006C24
	str r0, [r4, #0]
	mov r0, #0x6f
	bl sub_02018340
	str r0, [r4, #0xc]
	mov r0, #0x6f
	bl sub_02002F38
	str r0, [r4, #0x10]
	mov r0, #4
	str r0, [sp]
	mov r1, #0
	str r1, [sp, #4]
	mov r0, #0x6f
	mov r2, #1
	add r3, r1, #0
	bl sub_02024220
	str r0, [r4, #0x14]
	mov r0, #0x6f
	bl sub_020203AC
	str r0, [r4, #0x18]
	mov r0, #0
	mov r1, #0x1a
	mov r2, #0xea
	mov r3, #0x6f
	bl sub_0200B144
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02003858
	mov r2, #2
	ldr r0, [r4, #0x10]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x6f
	bl sub_02002F70
	mov r1, #1
	ldr r0, [r4, #0x10]
	lsl r2, r1, #9
	mov r3, #0x6f
	bl sub_02002F70
	mov r1, #2
	ldr r0, [r4, #0x10]
	lsl r2, r1, #8
	mov r3, #0x6f
	bl sub_02002F70
	mov r2, #2
	ldr r0, [r4, #0x10]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x6f
	bl sub_02002F70
	ldr r0, [r4, #0xc]
	bl ov100_021D1208
	add r0, r4, #0
	bl ov100_021D0FA0
	ldr r2, _021D1114 ; =0x04000060
	ldr r0, _021D1118 ; =0xFFFFCFFF
	ldrh r1, [r2]
	add r4, #0x1c
	and r1, r0
	mov r0, #8
	orr r0, r1
	strh r0, [r2]
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0x20
	bl sub_020182CC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D110C: .word 0xFFFFE0FF
_021D1110: .word 0x04001000
_021D1114: .word 0x04000060
_021D1118: .word 0xFFFFCFFF
	thumb_func_end ov100_021D1034

	thumb_func_start ov100_021D111C
ov100_021D111C: ; 0x021D111C
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
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0xc]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0xc]
	bl sub_020181C4
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02002FA0
	ldr r0, [r4, #0x10]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl sub_02002FA0
	ldr r0, [r4, #0x10]
	bl sub_02002F54
	ldr r0, [r4, #0]
	bl sub_02006CA8
	ldr r0, [r4, #0x14]
	bl sub_020242C4
	ldr r0, [r4, #0x18]
	bl sub_020203B8
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	bl sub_0200D0B0
	ldr r0, [r4, #4]
	bl sub_0200C8D4
	ldr r0, [r4, #0x2c]
	bl sub_0200B190
	ldr r2, _021D1200 ; =0x04000060
	ldr r0, _021D1204 ; =0x0000CFF7
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	pop {r4, pc}
	nop
_021D1200: .word 0x04000060
_021D1204: .word 0x0000CFF7
	thumb_func_end ov100_021D111C

	thumb_func_start ov100_021D1208
ov100_021D1208: ; 0x021D1208
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	add r4, r0, #0
	bl sub_0201FF00
	ldr r5, _021D13A4 ; =0x021D50D4
	add r3, sp, #0x60
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D13A8 ; =0x021D5154
	add r3, sp, #0x38
	mov r2, #5
_021D122C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D122C
	add r0, sp, #0x38
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
	ldr r5, _021D13AC ; =0x021D51B4
	add r3, sp, #0x70
	mov r2, #0xe
_021D1278:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1278
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x6f
	bl sub_02019690
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6f
	bl sub_02019690
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6f
	bl sub_02019690
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6f
	bl sub_02019690
	mov r1, #0
	add r0, r4, #0
	add r2, sp, #0x70
	add r3, r1, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #0x8c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xa8
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xc4
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #1
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #2
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #3
	bl sub_02019EBC
	ldr r5, _021D13B0 ; =0x021D517C
	add r3, sp, #0
	mov r2, #7
_021D1306:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1306
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x1c
	mov r3, #0
	bl sub_020183C4
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6f
	bl sub_02019690
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6f
	bl sub_02019690
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #4
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #8
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #1
	bl sub_0201FF74
	mov r0, #4
	mov r1, #0
	bl sub_0201FF74
	mov r0, #8
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	nop
_021D13A4: .word 0x021D50D4
_021D13A8: .word 0x021D5154
_021D13AC: .word 0x021D51B4
_021D13B0: .word 0x021D517C
	thumb_func_end ov100_021D1208

	thumb_func_start ov100_021D13B4
ov100_021D13B4: ; 0x021D13B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200C800
	ldr r0, [r4, #0x1c]
	bl sub_02003694
	ldr r0, [r4, #0x18]
	bl sub_0201C2B8
	ldr r3, _021D13DC ; =0x027E0000
	ldr r1, _021D13E0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021D13DC: .word 0x027E0000
_021D13E0: .word 0x00003FF8
	thumb_func_end ov100_021D13B4

	thumb_func_start ov100_021D13E4
ov100_021D13E4: ; 0x021D13E4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r1, _021D1494 ; =0x000007D8
	add r5, r0, #0
	mov r0, #0x6f
	bl sub_02018144
	ldr r2, _021D1494 ; =0x000007D8
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	add r1, r5, #0
	mov r0, #0x7d
	add r1, #0xc
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r5, #0xd0
	ldr r1, [r5, #0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov100_021D1808
	add r0, r4, #0
	bl ov100_021D1A54
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0x6f
	bl ov100_021D4E3C
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _021D1498 ; =0x04001014
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsr r0, r0, #0xe
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r4, #0
	ldr r3, _021D149C ; =0x000002AA
	add r0, #0xc
	mov r2, #0xbf
	bl ov100_021D4E70
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	add r1, #0x44
	bl ov100_021D1758
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	mov r0, #0x19
	ldr r1, [r2, #0x48]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r2, #0x48]
	ldr r0, _021D14A0 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	mov r0, #8
	str r0, [sp]
	ldr r0, _021D14A4 ; =0x04000050
	mov r1, #4
	mov r2, #0x32
	mov r3, #7
	bl sub_020BF55C
	mov r0, #1
	bl ov100_021D4DC8
	mov r0, #0
	mov r1, #0xa
	bl sub_0200564C
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D1494: .word 0x000007D8
_021D1498: .word 0x04001014
_021D149C: .word 0x000002AA
_021D14A0: .word 0x04001050
_021D14A4: .word 0x04000050
	thumb_func_end ov100_021D13E4

	thumb_func_start ov100_021D14A8
ov100_021D14A8: ; 0x021D14A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _021D14F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D14C0: ; jump table
	.short _021D14CE - _021D14C0 - 2 ; case 0
	.short _021D14EA - _021D14C0 - 2 ; case 1
	.short _021D150E - _021D14C0 - 2 ; case 2
	.short _021D154C - _021D14C0 - 2 ; case 3
	.short _021D15B0 - _021D14C0 - 2 ; case 4
	.short _021D1614 - _021D14C0 - 2 ; case 5
	.short _021D163C - _021D14C0 - 2 ; case 6
_021D14CE:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D14EA:
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D14F4
_021D14F2:
	b _021D1686
_021D14F4:
	ldr r1, _021D16A0 ; =0x00000429
	mov r0, #0x12
	mov r2, #0
	bl sub_02004550
	mov r1, #0
	mov r0, #0x3f
	add r2, r1, #0
	bl sub_02004550
	mov r0, #2
	str r0, [r4, #0]
	b _021D1686
_021D150E:
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r1, [r4, #8]
	sub r0, #0x28
	mul r0, r1
	add r0, r2, r0
	mov r1, #1
	bl sub_02017348
	ldr r1, [r4, #8]
	mov r2, #0x62
	lsl r2, r2, #2
	add r3, r1, #0
	mul r3, r2
	mov r0, #1
	add r3, r4, r3
	lsl r1, r2, #1
	str r0, [r3, r1]
	ldr r1, [r4, #8]
	mul r2, r1
	mov r1, #0xc7
	add r2, r4, r2
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D1686
_021D154C:
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	lsl r1, r0, #1
	ldr r0, _021D16A4 ; =0x021D523E
	ldrh r0, [r0, r1]
	cmp r2, r0
	bne _021D1560
	ldr r0, _021D16A8 ; =0x000005C7
	bl sub_02005748
_021D1560:
	ldr r1, [r4, #8]
	ldr r0, _021D16AC ; =0x021D522C
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	ldr r3, [r4, #4]
	cmp r3, r0
	bne _021D1588
	lsl r2, r1, #2
	ldr r1, _021D16B0 ; =0x021D524C
	mov r0, #0x6f
	ldr r1, [r1, r2]
	str r0, [sp]
	mov r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r0, #0
	mov r3, #0x64
	str r0, [sp, #4]
	bl sub_020059D0
_021D1588:
	ldr r0, [r4, #4]
	add r2, r0, #1
	str r2, [r4, #4]
	ldr r0, [r4, #8]
	lsl r1, r0, #1
	ldr r0, _021D16B4 ; =0x021D5226
	ldrh r0, [r0, r1]
	cmp r2, r0
	blt _021D1686
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x53
	strb r1, [r0]
	str r1, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D1686
_021D15B0:
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	mov r1, #0x53
	ldrsb r2, [r3, r1]
	add r3, #0x53
	add r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0x10
	beq _021D15D2
	ldr r0, _021D16B8 ; =0x04000050
	mov r1, #0x31
	bl sub_020BF578
	b _021D1686
_021D15D2:
	ldr r1, [r4, #8]
	mov r0, #0x44
	mul r0, r1
	mov r2, #1
	add r0, r4, r0
	str r2, [r0, #0x54]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r1, [r4, #8]
	sub r0, #0x28
	mul r0, r1
	add r0, r2, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #3
	blt _021D1686
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x53
	strb r1, [r0]
	mov r0, #6
	str r0, [r4, #0]
	b _021D1686
_021D1614:
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	mov r1, #0x53
	ldrsb r2, [r3, r1]
	add r3, #0x53
	sub r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0
	ble _021D1636
	ldr r0, _021D16B8 ; =0x04000050
	mov r1, #0x31
	bl sub_020BF578
	b _021D1686
_021D1636:
	mov r0, #2
	str r0, [r4, #0]
	b _021D1686
_021D163C:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x78
	blt _021D1686
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	mov r1, #0x53
	ldrsb r2, [r3, r1]
	add r3, #0x53
	add r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0x10
	beq _021D1668
	ldr r0, _021D16BC ; =0x04001050
	mov r1, #0x33
	bl sub_020BF578
	b _021D1686
_021D1668:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021D16C0 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	mov r0, #0
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, pc}
_021D1686:
	add r0, r4, #0
	bl ov100_021D17B4
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, #8]
	bl ov100_021D4C94
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D16A0: .word 0x00000429
_021D16A4: .word 0x021D523E
_021D16A8: .word 0x000005C7
_021D16AC: .word 0x021D522C
_021D16B0: .word 0x021D524C
_021D16B4: .word 0x021D5226
_021D16B8: .word 0x04000050
_021D16BC: .word 0x04001050
_021D16C0: .word 0x00007FFF
	thumb_func_end ov100_021D14A8

	thumb_func_start ov100_021D16C4
ov100_021D16C4: ; 0x021D16C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D16D4
	cmp r1, #1
	beq _021D16E8
	b _021D1746
_021D16D4:
	add r0, #0xc
	bl ov100_021D4E58
	add r0, r4, #0
	bl ov100_021D1A24
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D174E
_021D16E8:
	mov r1, #0x7d
	lsl r1, r1, #4
	mov r0, #0x1b
	ldr r1, [r4, r1]
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	mov r1, #0x7d
	lsl r1, r1, #4
	mov r0, #0xce
	ldr r1, [r4, r1]
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	mov r1, #0x7d
	lsl r1, r1, #4
	mov r0, #0x13
	ldr r1, [r4, r1]
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	mov r1, #0x7d
	lsl r1, r1, #4
	ldr r0, _021D1754 ; =0x00000648
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #0
	bl ov100_021D4AA4
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D174E
_021D1746:
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_021D174E:
	mov r0, #1
	pop {r4, pc}
	nop
_021D1754: .word 0x00000648
	thumb_func_end ov100_021D16C4

	thumb_func_start ov100_021D1758
ov100_021D1758: ; 0x021D1758
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D17A8 ; =0x021D5224
	add r4, r0, #0
	ldrh r5, [r3, #0x20]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #0x22]
	strh r5, [r0, #2]
	ldrh r5, [r3, #0x24]
	ldrh r3, [r3, #0x26]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	mov r1, #0x32
	ldr r3, _021D17AC ; =0x00000A66
	lsl r1, r1, #0xe
	str r4, [sp, #8]
	bl sub_020206D0
	mov r0, #0
	add r1, r4, #0
	bl sub_02020854
	add r0, r4, #0
	bl sub_020203D4
	mov r1, #2
	ldr r0, _021D17B0 ; =0x0000019A
	lsl r1, r1, #0x16
	add r2, r4, #0
	bl sub_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D17A8: .word 0x021D5224
_021D17AC: .word 0x00000A66
_021D17B0: .word 0x0000019A
	thumb_func_end ov100_021D1758

	thumb_func_start ov100_021D17B4
ov100_021D17B4: ; 0x021D17B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov100_021D4844
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D1804 ; =0x00000648
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	pop {r4, pc}
	; .align 2, 0
_021D1804: .word 0x00000648
	thumb_func_end ov100_021D17B4

	thumb_func_start ov100_021D1808
ov100_021D1808: ; 0x021D1808
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r3, #5
	ldr r0, [r1, #4]
	ldr r7, [r1, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0x10]
	ldr r4, [r1, #0]
	ldr r6, [r1, #8]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x46
	add r2, r7, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x48
	add r2, r7, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x49
	add r2, r7, #0
	mov r3, #4
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	mov r2, #0x47
	mov r3, #0x6f
	bl sub_02003050
	ldr r0, _021D1A18 ; =0x021D5224
	add r1, sp, #0x20
	ldrh r2, [r0]
	add r0, sp, #0x20
	strh r2, [r0]
	mov r0, #2
	str r0, [sp]
	mov r2, #0
	ldr r0, [sp, #0x18]
	add r3, r2, #0
	bl sub_02002FBC
	str r4, [sp]
	mov r0, #0x32
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D1A1C ; =0x0000C350
	ldr r2, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r3, r6, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1A1C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	mov r3, #0x30
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1A1C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	mov r3, #0x2f
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D1A1C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	mov r3, #0x31
	bl sub_0200CC3C
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	ldr r0, _021D1A20 ; =0x00000648
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x3c
	bl ov100_021D4AC8
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x3b
	bl ov100_021D4AC8
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0x1b
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #4
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x39
	bl ov100_021D4B4C
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0x1b
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #4
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x3a
	bl ov100_021D4B4C
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x2d
	bl ov100_021D4AC8
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0xce
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #2
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x2b
	bl ov100_021D4B4C
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0xce
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #2
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x2c
	bl ov100_021D4B4C
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x11
	bl ov100_021D4AC8
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0x13
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #6
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0xf
	bl ov100_021D4B4C
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0x13
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #6
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x10
	bl ov100_021D4B4C
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1A18: .word 0x021D5224
_021D1A1C: .word 0x0000C350
_021D1A20: .word 0x00000648
	thumb_func_end ov100_021D1808

	thumb_func_start ov100_021D1A24
ov100_021D1A24: ; 0x021D1A24
	push {r4, r5, r6, lr}
	mov r6, #0x49
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021D1A2E:
	ldr r0, [r5, #0x58]
	bl sub_0200DA58
	ldr r0, [r5, r6]
	bl sub_0200DA58
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0x44
	cmp r4, #3
	blt _021D1A2E
	pop {r4, r5, r6, pc}
	thumb_func_end ov100_021D1A24

	thumb_func_start ov100_021D1A54
ov100_021D1A54: ; 0x021D1A54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r6, #0
	ldr r0, [r1, #4]
	add r7, r5, #0
	str r0, [sp, #0x14]
	ldr r0, [r1, #8]
	add r4, r5, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	strh r6, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r6, [r0, #0x1c]
	strh r6, [r0, #0x1e]
	mov r0, #2
	str r0, [sp, #0x40]
	str r0, [sp, #0x5c]
	sub r0, r0, #3
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	ldr r0, _021D1C30 ; =0x0000C350
	str r6, [sp, #0x38]
	str r6, [sp, #0x3c]
	str r6, [sp, #0x60]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r6, [sp]
	add r7, #0xe4
_021D1A98:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x30
	bl sub_0200CE6C
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0200D430
	add r0, r4, #0
	add r0, #0xe4
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_0200D4C4
	add r1, r4, #0
	add r1, #0xf0
	mov r0, #1
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xec
	add r1, r4, #0
	str r6, [r0, #0]
	add r1, #0xf8
	mov r0, #0x32
	strh r0, [r1]
	ldr r1, [sp]
	add r0, #0xce
	str r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #8
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	mov r0, #0x45
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021D1C34 ; =ov100_021D4438
	ldr r2, _021D1C38 ; =0x00000FFF
	add r1, r7, #0
	bl sub_0200D9E8
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	add r6, r6, #1
	add r0, #0x78
	add r4, #0x44
	add r7, #0x44
	str r0, [sp]
	cmp r6, #3
	blt _021D1A98
	ldr r1, _021D1C3C ; =0x021D5224
	add r3, sp, #0x24
	ldrh r2, [r1, #0x14]
	add r0, sp, #0x18
	mov r4, #0
	strh r2, [r0, #6]
	ldrh r2, [r1, #0x16]
	add r6, sp, #0x1c
	str r3, [sp, #0xc]
	strh r2, [r0, #8]
	ldrh r2, [r1, #0x18]
	add r6, #2
	add r7, sp, #0x18
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #0xe]
	str r4, [sp, #8]
	strh r2, [r0]
	ldrh r2, [r1, #0x10]
	strh r2, [r0, #2]
	ldrh r1, [r1, #0x12]
	ldr r2, _021D1C40 ; =0x021D5258
	strh r1, [r0, #4]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x18
	str r0, [sp, #4]
_021D1B84:
	cmp r4, #1
	bne _021D1B8E
	mov r0, #0
	str r0, [sp, #0x5c]
	b _021D1B92
_021D1B8E:
	mov r0, #2
	str r0, [sp, #0x5c]
_021D1B92:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x30
	bl sub_0200CE6C
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	bl sub_0200D330
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl sub_0200D6A4
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #0x18]
	ldr r1, [r1, #0]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0200D430
	mov r1, #0
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r5, #0x18]
	bl sub_0200D4C4
	mov r0, #0
	str r0, [r5, #0x24]
	str r4, [r5, #0x20]
	mov r0, #0x32
	strh r0, [r5, #0x2c]
	ldr r0, [sp, #8]
	str r0, [r5, #0x34]
	str r0, [r5, #0x38]
	mov r0, #0
	str r0, [r5, #0x3c]
	mov r0, #1
	str r0, [r5, #0x40]
	str r0, [r5, #0x44]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	str r1, [r5, #0x48]
	mov r0, #0
	str r0, [r5, #0x4c]
	mov r2, #1
	ldr r0, _021D1C34 ; =ov100_021D4438
	ldr r1, [sp, #4]
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	str r0, [r5, #0x58]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r5, #0x44
	add r0, #0x78
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r7, r7, #2
	add r0, #0x44
	add r6, r6, #2
	str r0, [sp, #4]
	cmp r4, #3
	blt _021D1B84
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1C30: .word 0x0000C350
_021D1C34: .word ov100_021D4438
_021D1C38: .word 0x00000FFF
_021D1C3C: .word 0x021D5224
_021D1C40: .word 0x021D5258
	thumb_func_end ov100_021D1A54

	thumb_func_start ov100_021D1C44
ov100_021D1C44: ; 0x021D1C44
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D1C8C ; =0x021D5290
	add r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r1, _021D1C90 ; =0x0013C805
	ldr r3, _021D1C94 ; =0x00000C01
	str r4, [sp, #8]
	bl sub_020206D0
	add r0, r4, #0
	bl sub_020203D4
	mov r0, #0xa
	mov r1, #0x3f
	lsl r0, r0, #0xc
	lsl r1, r1, #0x10
	add r2, r4, #0
	bl sub_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D1C8C: .word 0x021D5290
_021D1C90: .word 0x0013C805
_021D1C94: .word 0x00000C01
	thumb_func_end ov100_021D1C44

	thumb_func_start ov100_021D1C98
ov100_021D1C98: ; 0x021D1C98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, _021D2038 ; =0x00001EC8
	mov r3, #5
	ldr r1, [r5, r0]
	ldr r0, [r1, #0xc]
	ldr r4, [r1, #0]
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0x10]
	ldr r7, [r1, #4]
	ldr r6, [r1, #8]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x12
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #0x14
	mov r3, #5
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	mov r2, #0x13
	mov r3, #0x6f
	bl sub_02003050
	mov r1, #0
	str r1, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	mov r2, #0x13
	mov r3, #0x6f
	bl sub_02003050
	str r4, [sp]
	mov r0, #0x32
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D203C ; =0x0000C350
	add r2, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r3, r6, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D203C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x30
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D203C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x2f
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D203C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	add r2, r4, #0
	mov r3, #0x31
	bl sub_0200CC3C
	ldr r2, _021D2038 ; =0x00001EC8
	mov r0, #0x1b
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x2e
	bl ov100_021D4AC8
	ldr r0, _021D2040 ; =0x000018A8
	mov r7, #0x62
	mov r6, #0
	add r4, r5, r0
	lsl r7, r7, #2
_021D1D8A:
	ldr r2, _021D2038 ; =0x00001EC8
	add r0, r4, #0
	ldr r2, [r5, r2]
	mov r1, #0x41
	ldr r2, [r2, #0]
	bl ov100_021D4AC8
	ldr r1, _021D2044 ; =0x00001333
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #4
	blt _021D1D8A
	ldr r2, _021D2038 ; =0x00001EC8
	mov r0, #0x13
	ldr r2, [r5, r2]
	lsl r0, r0, #6
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x18
	bl ov100_021D4AC8
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0x13
	ldr r3, [r5, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x16
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0x13
	ldr r3, [r5, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x17
	bl ov100_021D4B4C
	ldr r2, _021D2038 ; =0x00001EC8
	ldr r0, _021D2048 ; =0x00000648
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x35
	bl ov100_021D4AC8
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2048 ; =0x00000648
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x33
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2048 ; =0x00000648
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x34
	bl ov100_021D4B4C
	ldr r2, _021D2038 ; =0x00001EC8
	mov r0, #0xce
	ldr r2, [r5, r2]
	lsl r0, r0, #2
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x37
	bl ov100_021D4AC8
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xce
	ldr r3, [r5, r0]
	lsl r1, r1, #2
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x36
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xce
	ldr r3, [r5, r0]
	lsl r1, r1, #2
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x38
	bl ov100_021D4B4C
	ldr r2, _021D2038 ; =0x00001EC8
	mov r0, #0x7d
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x42
	bl ov100_021D4AC8
	mov r0, #0x7d
	ldr r1, _021D204C ; =0xFFFCE000
	lsl r0, r0, #4
	add r0, r5, r0
	mov r2, #0
	add r3, r1, #0
	bl sub_02017350
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0x7d
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x43
	bl ov100_021D4B4C
	mov r1, #0x93
	lsl r1, r1, #4
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	lsl r2, r2, #0xb
	sub r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r1, #0x28
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0x44
	bl ov100_021D4AC8
	ldr r0, _021D2050 ; =0x00000958
	mov r1, #0x32
	ldr r3, _021D204C ; =0xFFFCE000
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02017350
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2050 ; =0x00000958
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x45
	bl ov100_021D4B4C
	ldr r1, _021D2054 ; =0x00000AB8
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	lsl r2, r2, #0xb
	sub r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r1, #0x28
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0x1a
	bl ov100_021D4AC8
	mov r0, #0xae
	lsl r0, r0, #4
	mov r1, #0
	ldr r2, _021D2058 ; =0xFFFA6000
	add r0, r5, r0
	add r3, r1, #0
	bl sub_02017350
	mov r0, #0xae
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xae
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x19
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xae
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x1b
	bl ov100_021D4B4C
	ldr r0, _021D205C ; =0x00000C48
	mov r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x1d
	bl ov100_021D4AC8
	ldr r0, _021D2060 ; =0x00000C68
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2060 ; =0x00000C68
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x1c
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	ldr r1, _021D2060 ; =0x00000C68
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x1e
	bl ov100_021D4B4C
	mov r0, #0xdd
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x20
	bl ov100_021D4AC8
	mov r0, #0xdf
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xdf
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x1f
	bl ov100_021D4B4C
	ldr r0, _021D2038 ; =0x00001EC8
	mov r1, #0xdf
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x21
	bl ov100_021D4B4C
	ldr r0, _021D2064 ; =0x00000F58
	mov r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2038 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x23
	bl ov100_021D4AC8
	ldr r0, _021D2068 ; =0x00000F78
	b _021D206C
	nop
_021D2038: .word 0x00001EC8
_021D203C: .word 0x0000C350
_021D2040: .word 0x000018A8
_021D2044: .word 0x00001333
_021D2048: .word 0x00000648
_021D204C: .word 0xFFFCE000
_021D2050: .word 0x00000958
_021D2054: .word 0x00000AB8
_021D2058: .word 0xFFFA6000
_021D205C: .word 0x00000C48
_021D2060: .word 0x00000C68
_021D2064: .word 0x00000F58
_021D2068: .word 0x00000F78
_021D206C:
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2228 ; =0x00000F78
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x22
	bl ov100_021D4B4C
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2228 ; =0x00000F78
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x24
	bl ov100_021D4B4C
	ldr r0, _021D222C ; =0x000010E0
	mov r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2224 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x26
	bl ov100_021D4AC8
	mov r0, #0x11
	lsl r0, r0, #8
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2224 ; =0x00001EC8
	mov r1, #0x11
	ldr r3, [r5, r0]
	lsl r1, r1, #8
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x25
	bl ov100_021D4B4C
	ldr r0, _021D2224 ; =0x00001EC8
	mov r1, #0x11
	ldr r3, [r5, r0]
	lsl r1, r1, #8
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x27
	bl ov100_021D4B4C
	ldr r0, _021D2230 ; =0x00001268
	mov r1, #1
	str r1, [r5, r0]
	ldr r2, _021D2224 ; =0x00001EC8
	add r0, #0x20
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x29
	bl ov100_021D4AC8
	ldr r0, _021D2234 ; =0x00001288
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2234 ; =0x00001288
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x28
	bl ov100_021D4B4C
	ldr r2, _021D2224 ; =0x00001EC8
	ldr r0, _021D2238 ; =0x00001410
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x2a
	bl ov100_021D4AC8
	ldr r0, _021D2238 ; =0x00001410
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D223C ; =0x00001ECC
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	bl sub_02025F30
	cmp r0, #1
	ldr r0, _021D2240 ; =0x00001598
	ldr r2, _021D2224 ; =0x00001EC8
	beq _021D2184
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x3d
	bl ov100_021D4AC8
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2240 ; =0x00001598
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x3e
	bl ov100_021D4B4C
	b _021D21A8
_021D2184:
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x3f
	bl ov100_021D4AC8
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2240 ; =0x00001598
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x40
	bl ov100_021D4B4C
_021D21A8:
	ldr r0, _021D2240 ; =0x00001598
	mov r1, #1
	mov r3, #0x23
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_02017350
	mov r0, #1
	ldr r1, _021D2244 ; =0x000016FC
	lsl r2, r0, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #2
	sub r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D2224 ; =0x00001EC8
	add r1, #0x24
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0xd
	bl ov100_021D4AC8
	ldr r0, _021D2248 ; =0x00001720
	mov r1, #1
	mov r3, #0xf
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_02017350
	ldr r0, _021D2224 ; =0x00001EC8
	ldr r1, _021D2248 ; =0x00001720
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0xe
	bl ov100_021D4B4C
	mov r0, #1
	ldr r1, _021D224C ; =0x00001884
	lsl r2, r0, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r5, r0]
	mov r0, #2
	sub r1, #0xc
	str r0, [r5, r1]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2224: .word 0x00001EC8
_021D2228: .word 0x00000F78
_021D222C: .word 0x000010E0
_021D2230: .word 0x00001268
_021D2234: .word 0x00001288
_021D2238: .word 0x00001410
_021D223C: .word 0x00001ECC
_021D2240: .word 0x00001598
_021D2244: .word 0x000016FC
_021D2248: .word 0x00001720
_021D224C: .word 0x00001884
	thumb_func_end ov100_021D1C98

	thumb_func_start ov100_021D2250
ov100_021D2250: ; 0x021D2250
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	add r5, r0, #0
	ldr r0, _021D2318 ; =0x00001EC8
	mov r4, #0
	ldr r1, [r5, r0]
	add r7, r5, #0
	ldr r0, [r1, #4]
	mov r6, #0x10
	str r0, [sp, #8]
	ldr r0, [r1, #8]
	str r4, [sp]
	str r0, [sp, #4]
	add r0, sp, #0xc
	strh r4, [r0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	strh r4, [r0, #6]
	mov r0, #2
	str r0, [sp, #0x1c]
	sub r0, r0, #3
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	ldr r0, _021D231C ; =0x0000C350
	str r4, [sp, #0x14]
	str r4, [sp, #0x18]
	str r4, [sp, #0x38]
	str r4, [sp, #0x3c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	add r7, #0x14
_021D2292:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	add r2, sp, #0xc
	bl sub_0200CE6C
	str r0, [r5, #0x14]
	bl sub_0200D330
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl sub_0200D6A4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	ldr r0, [r5, #0x14]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	bl sub_0200D430
	lsl r1, r6, #0x10
	ldr r0, [r5, #0x14]
	asr r1, r1, #0x10
	mov r2, #0x40
	bl sub_0200D4C4
	mov r0, #1
	str r0, [r5, #0x20]
	str r4, [r5, #0x1c]
	mov r0, #0x32
	strh r0, [r5, #0x28]
	ldr r0, [sp]
	str r0, [r5, #0x30]
	str r0, [r5, #0x34]
	str r4, [r5, #0x38]
	mov r0, #1
	str r0, [r5, #0x3c]
	str r0, [r5, #0x40]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	str r1, [r5, #0x44]
	mov r0, #0
	str r0, [r5, #0x48]
	mov r2, #1
	ldr r0, _021D2320 ; =ov100_021D4414
	add r1, r7, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	str r0, [r5, #0x54]
	ldr r0, [sp]
	add r4, r4, #1
	add r0, #0x78
	add r5, #0x44
	add r6, #0x40
	add r7, #0x44
	str r0, [sp]
	cmp r4, #3
	blt _021D2292
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2318: .word 0x00001EC8
_021D231C: .word 0x0000C350
_021D2320: .word ov100_021D4414
	thumb_func_end ov100_021D2250

	thumb_func_start ov100_021D2324
ov100_021D2324: ; 0x021D2324
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D232A:
	ldr r0, [r5, #0x54]
	bl sub_0200DA58
	ldr r0, [r5, #0x14]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0x44
	cmp r4, #3
	blt _021D232A
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D2324

	thumb_func_start ov100_021D2340
ov100_021D2340: ; 0x021D2340
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r1, _021D2404 ; =0x00001ED0
	add r5, r0, #0
	mov r0, #0x6f
	bl sub_02018144
	ldr r2, _021D2404 ; =0x00001ED0
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	add r1, r5, #0
	ldr r0, _021D2408 ; =0x00001EC8
	add r1, #0xc
	str r1, [r4, r0]
	add r1, r5, #0
	add r1, #0xd0
	ldr r1, [r1, #0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov100_021D1C98
	add r0, r4, #0
	bl ov100_021D2250
	add r0, r4, #0
	add r0, #8
	mov r1, #0x6f
	bl ov100_021D4E3C
	mov r0, #1
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _021D240C ; =0x04001014
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsr r0, r0, #0xe
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r4, #0
	ldr r3, _021D2410 ; =0x000002AA
	add r0, #8
	mov r2, #0xbf
	bl ov100_021D4E70
	mov r0, #8
	str r0, [sp]
	ldr r0, _021D2414 ; =0x04000050
	mov r1, #4
	mov r2, #0x32
	mov r3, #7
	bl sub_020BF55C
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D2418 ; =0x04001050
	mov r1, #3
	mov r2, #0x12
	mov r3, #7
	bl sub_020BF55C
	ldr r2, _021D241C ; =0x04000060
	ldr r0, _021D2420 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021D2424 ; =0x021D5298
	bl sub_020BFD2C
	ldr r0, _021D2408 ; =0x00001EC8
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	add r1, #0x44
	bl ov100_021D1C44
	ldr r0, _021D2408 ; =0x00001EC8
	mov r1, #0
	ldr r0, [r4, r0]
	str r1, [r0, #0x48]
	mov r0, #1
	bl ov100_021D4DC8
	add r0, r5, #0
	mov r1, #0x10
	bl ov100_021D4DD8
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D2404: .word 0x00001ED0
_021D2408: .word 0x00001EC8
_021D240C: .word 0x04001014
_021D2410: .word 0x000002AA
_021D2414: .word 0x04000050
_021D2418: .word 0x04001050
_021D241C: .word 0x04000060
_021D2420: .word 0xFFFFCFFF
_021D2424: .word 0x021D5298
	thumb_func_end ov100_021D2340

	thumb_func_start ov100_021D2428
ov100_021D2428: ; 0x021D2428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0x15
	bls _021D2436
	b _021D2BA4
_021D2436:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2442: ; jump table
	.short _021D246E - _021D2442 - 2 ; case 0
	.short _021D24B2 - _021D2442 - 2 ; case 1
	.short _021D24C2 - _021D2442 - 2 ; case 2
	.short _021D2504 - _021D2442 - 2 ; case 3
	.short _021D252A - _021D2442 - 2 ; case 4
	.short _021D254C - _021D2442 - 2 ; case 5
	.short _021D2590 - _021D2442 - 2 ; case 6
	.short _021D25CC - _021D2442 - 2 ; case 7
	.short _021D2604 - _021D2442 - 2 ; case 8
	.short _021D26A8 - _021D2442 - 2 ; case 9
	.short _021D270E - _021D2442 - 2 ; case 10
	.short _021D272A - _021D2442 - 2 ; case 11
	.short _021D2750 - _021D2442 - 2 ; case 12
	.short _021D2826 - _021D2442 - 2 ; case 13
	.short _021D2846 - _021D2442 - 2 ; case 14
	.short _021D2892 - _021D2442 - 2 ; case 15
	.short _021D2948 - _021D2442 - 2 ; case 16
	.short _021D29AC - _021D2442 - 2 ; case 17
	.short _021D29FA - _021D2442 - 2 ; case 18
	.short _021D2A48 - _021D2442 - 2 ; case 19
	.short _021D2AEA - _021D2442 - 2 ; case 20
	.short _021D2B06 - _021D2442 - 2 ; case 21
_021D246E:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	ldr r3, _021D27AC ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	ldr r2, _021D27B0 ; =0x00001EC8
	mov r1, #0
	ldr r0, [r4, r2]
	add r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D27B4 ; =0x04000050
	mov r1, #0x31
	bl sub_020BF578
	ldr r2, _021D27B0 ; =0x00001EC8
	ldr r0, _021D27B8 ; =0x04001050
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x33
	bl sub_020BF578
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D24B2:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D2512
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D24C2:
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r2, #0x14
	ldr r0, [r4, r1]
	mov r3, #0x3c
	str r2, [r0, #0x64]
	ldr r2, [r4, r1]
	mov r0, #0
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, [r4, r1]
	str r0, [r2, #0x78]
	ldr r2, [r4, r1]
	add r0, r2, #0
	add r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	add r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2504:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	add r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	bne _021D2514
_021D2512:
	b _021D2BB6
_021D2514:
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r2, #0x14
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D252A:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D2616
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D254C:
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r0, #0
	ldr r2, [r4, r1]
	mov r3, #0x3c
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	mov r2, #0x46
	ldr r0, [r4, r1]
	lsl r2, r2, #0xc
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	add r0, r2, #0
	add r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	add r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2590:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	add r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	beq _021D2616
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xa
	blt _021D2616
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r2, #0x15
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, _021D27BC ; =0x00001720
	ldr r1, _021D27C0 ; =0x021D54D0
	add r0, r4, r0
	bl ov100_021D44C0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D25CC:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D2616
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r2, #0x16
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	mov r0, #0
	mov r1, #0xa
	bl sub_0200564C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2604:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _021D2618
_021D2616:
	b _021D2BB6
_021D2618:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xf
	bne _021D2648
	mov r0, #0
	add r1, r4, #0
	mov r2, #0x1f
_021D2630:
	ldr r3, [r1, #0x20]
	add r0, r0, #1
	lsr r5, r3, #0x1f
	lsl r3, r3, #0x1f
	sub r3, r3, r5
	ror r3, r2
	add r3, r5, r3
	add r3, r3, #2
	str r3, [r1, #0x20]
	add r1, #0x44
	cmp r0, #3
	blt _021D2630
_021D2648:
	ldr r6, [r4, #4]
	cmp r6, #0x1e
	blt _021D271C
	ldr r2, _021D27B0 ; =0x00001EC8
	mov r3, #0x53
	ldr r0, [r4, r2]
	ldrsb r1, [r0, r3]
	sub r3, #0x59
	cmp r1, r3
	ble _021D2692
	lsr r5, r6, #0x1f
	lsl r3, r6, #0x1f
	sub r3, r3, r5
	mov r2, #0x1f
	ror r3, r2
	add r2, r5, r3
	beq _021D2670
	sub r1, r1, #1
	add r0, #0x53
	strb r1, [r0]
_021D2670:
	ldr r2, _021D27B0 ; =0x00001EC8
	ldr r0, _021D27B4 ; =0x04000050
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x31
	bl sub_020BF578
	ldr r2, _021D27B0 ; =0x00001EC8
	ldr r0, _021D27B8 ; =0x04001050
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x33
	bl sub_020BF578
	b _021D2BB6
_021D2692:
	add r1, r2, #4
	ldr r1, [r4, r1]
	mov r2, #0x17
	bl ov100_021D46C8
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D26A8:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D271C
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D27BC ; =0x00001720
	ldr r1, _021D27C4 ; =0x021D54E8
	add r0, r4, r0
	bl ov100_021D44C0
	ldr r1, _021D27B0 ; =0x00001EC8
	mov r0, #0
	ldr r2, [r4, r1]
	mov r3, #0x5a
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, _021D27C8 ; =0xFFFB0000
	ldr r0, [r4, r1]
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	add r0, r2, #0
	add r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	add r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D270E:
	ldr r0, _021D27B0 ; =0x00001EC8
	ldr r0, [r4, r0]
	add r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	bne _021D271E
_021D271C:
	b _021D2BB6
_021D271E:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D272A:
	ldr r0, _021D27CC ; =0x000013E8
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _021D27D0 ; =0x00001288
	add r0, r4, r0
	bl sub_02017348
	ldr r0, _021D27D4 ; =0x000004BE
	bl sub_0200549C
	mov r1, #0
	mov r0, #0x3f
	add r2, r1, #0
	bl sub_02004550
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2750:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	bne _021D2764
	ldr r0, _021D27BC ; =0x00001720
	ldr r1, _021D27D8 ; =0x021D54B8
	add r0, r4, r0
	bl ov100_021D44C0
_021D2764:
	ldr r0, [r4, #4]
	cmp r0, #0xf
	beq _021D2782
	cmp r0, #0x2d
	beq _021D2782
	cmp r0, #0x4b
	beq _021D2782
	cmp r0, #0x5f
	beq _021D2782
	cmp r0, #0x73
	beq _021D2782
	cmp r0, #0x82
	beq _021D2782
	cmp r0, #0x91
	bne _021D27EA
_021D2782:
	ldr r0, _021D27DC ; =0x000005C5
	bl sub_02005748
	ldr r5, [r4, #4]
	mov r1, #0x1e
	add r0, r5, #0
	bl sub_020E1F6C
	add r2, r0, #0
	lsl r3, r2, #5
	lsr r2, r5, #0x1f
	lsl r6, r5, #0x1b
	sub r6, r6, r2
	mov r5, #0x1b
	ror r6, r5
	add r5, r2, r6
	mov r2, #0xa
	mul r2, r5
	ldr r0, _021D27DC ; =0x000005C5
	ldr r1, _021D27E0 ; =0x0000FFFF
	b _021D27E4
	; .align 2, 0
_021D27AC: .word 0x00007FFF
_021D27B0: .word 0x00001EC8
_021D27B4: .word 0x04000050
_021D27B8: .word 0x04001050
_021D27BC: .word 0x00001720
_021D27C0: .word 0x021D54D0
_021D27C4: .word 0x021D54E8
_021D27C8: .word 0xFFFB0000
_021D27CC: .word 0x000013E8
_021D27D0: .word 0x00001288
_021D27D4: .word 0x000004BE
_021D27D8: .word 0x021D54B8
_021D27DC: .word 0x000005C5
_021D27E0: .word 0x0000FFFF
_021D27E4:
	add r2, r3, r2
	bl sub_02004F7C
_021D27EA:
	ldr r0, _021D2B2C ; =0x000013E8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D2850
	ldr r0, _021D2B30 ; =0x00001288
	mov r1, #0
	add r0, r4, r0
	bl sub_02017348
	ldr r0, _021D2B34 ; =0x00001410
	mov r1, #1
	add r0, r4, r0
	bl sub_02017348
	mov r0, #0xae
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x31
	mov r1, #1
	lsl r0, r0, #6
	str r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2826:
	ldr r1, _021D2B38 ; =0x00000B38
	ldr r0, _021D2B3C ; =0xFFFCE000
	ldr r2, [r4, r1]
	cmp r2, r0
	bge _021D283A
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r2, r0
	str r0, [r4, r1]
	b _021D2BB6
_021D283A:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2846:
	mov r3, #0x31
	lsl r3, r3, #6
	ldr r0, [r4, r3]
	cmp r0, #0
	beq _021D2852
_021D2850:
	b _021D2BB6
_021D2852:
	ldr r0, _021D2B38 ; =0x00000B38
	add r1, r3, #0
	ldr r2, [r4, r0]
	add r1, #0x80
	str r2, [r4, r1]
	ldr r2, _021D2B40 ; =0x00000DC8
	mov r1, #1
	str r1, [r4, r2]
	add r2, r2, #4
	str r1, [r4, r2]
	lsr r2, r3, #1
	str r1, [r4, r2]
	ldr r2, _021D2B44 ; =0x0000062C
	sub r0, #0x58
	str r1, [r4, r2]
	ldr r2, _021D2B48 ; =0x00000498
	add r0, r4, r0
	str r1, [r4, r2]
	add r2, #8
	str r1, [r4, r2]
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2B4C ; =0x00000C68
	mov r1, #1
	add r0, r4, r0
	bl sub_02017348
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2892:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #1
	bne _021D28A2
	ldr r0, _021D2B50 ; =0x000005C6
	bl sub_02005748
_021D28A2:
	ldr r0, [r4, #4]
	cmp r0, #0x14
	bne _021D28B2
	ldr r0, _021D2B54 ; =0x00001720
	ldr r1, _021D2B58 ; =0x021D54A0
	add r0, r4, r0
	bl ov100_021D44C0
_021D28B2:
	ldr r0, [r4, #4]
	cmp r0, #0x28
	bne _021D28CC
	mov r0, #0x6f
	str r0, [sp]
	mov r0, #0
	add r2, r0, #0
	ldr r1, _021D2B5C ; =0x000001E3
	sub r2, #0x50
	mov r3, #0x28
	str r0, [sp, #4]
	bl sub_020059D0
_021D28CC:
	ldr r0, [r4, #4]
	cmp r0, #0x41
	bne _021D28E6
	mov r0, #0x6f
	mov r1, #0x79
	str r0, [sp]
	mov r0, #0
	lsl r1, r1, #2
	mov r2, #0x50
	mov r3, #0x28
	str r0, [sp, #4]
	bl sub_020059D0
_021D28E6:
	ldr r0, [r4, #4]
	ldr r1, _021D2B60 ; =0x0000082C
	cmp r0, #0x28
	bge _021D28F6
	mov r0, #1
	ldr r2, [r4, r1]
	lsl r0, r0, #0xa
	b _021D28FC
_021D28F6:
	add r0, r1, #0
	ldr r2, [r4, r1]
	sub r0, #0x2c
_021D28FC:
	sub r0, r2, r0
	str r0, [r4, r1]
	ldr r0, [r4, #4]
	ldr r1, _021D2B64 ; =0x000009B4
	cmp r0, #0x41
	bge _021D290E
	ldr r2, [r4, r1]
	mov r0, #1
	b _021D2912
_021D290E:
	ldr r2, [r4, r1]
	mov r0, #2
_021D2912:
	lsl r0, r0, #0xa
	sub r0, r2, r0
	str r0, [r4, r1]
	mov r1, #0x33
	lsl r1, r1, #6
	ldr r2, [r4, r1]
	cmp r2, #0
	bge _021D292C
	mov r0, #2
	lsl r0, r0, #0xa
	add r0, r2, r0
	str r0, [r4, r1]
	b _021D2BB6
_021D292C:
	mov r0, #0
	str r0, [r4, r1]
	ldr r1, _021D2B68 ; =0x00001EC8
	str r0, [r4, #4]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x18
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2948:
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _021D295C
	b _021D2BB6
_021D295C:
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D2B6C ; =0x000007A8
	mov r3, #1
	str r3, [r4, r0]
	mov r1, #0
	add r2, r0, #4
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0xc
	str r3, [r4, r2]
	lsl r0, r0, #1
	str r3, [r4, r0]
	ldr r0, _021D2B4C ; =0x00000C68
	add r0, r4, r0
	bl sub_02017348
	mov r0, #0xdf
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x6f
	str r0, [sp]
	mov r2, #0
	ldr r1, _021D2B70 ; =0x000001E7
	mov r0, #2
	mov r3, #0x7f
	str r2, [sp, #4]
	bl sub_020059D0
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D29AC:
	mov r0, #0xf5
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D2A80
	ldr r1, _021D2B68 ; =0x00001EC8
	mov r2, #0x19
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, _021D2B74 ; =0x000010D8
	mov r1, #1
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021D2B6C ; =0x000007A8
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _021D2B78 ; =0x00000648
	add r0, r4, r0
	bl sub_02017348
	mov r0, #0xdf
	lsl r0, r0, #4
	add r0, r4, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D2B7C ; =0x00000F78
	mov r1, #1
	add r0, r4, r0
	bl sub_02017348
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D29FA:
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D2A80
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _021D2A1A
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
_021D2A1A:
	ldr r0, _021D2B80 ; =0x000004BF
	bl sub_0200549C
	ldr r0, _021D2B84 ; =0x00001260
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _021D2B7C ; =0x00000F78
	mov r1, #0
	add r0, r4, r0
	bl sub_02017348
	mov r0, #0x11
	lsl r0, r0, #8
	add r0, r4, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2A48:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0xee
	bne _021D2A64
	mov r0, #0x6f
	str r0, [sp]
	mov r2, #0
	ldr r1, _021D2B70 ; =0x000001E7
	mov r0, #2
	mov r3, #0x7f
	str r2, [sp, #4]
	bl sub_020059D0
_021D2A64:
	ldr r0, [r4, #4]
	cmp r0, #0xaa
	bne _021D2A78
	ldr r1, _021D2B68 ; =0x00001EC8
	mov r2, #0x1a
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
_021D2A78:
	ldr r0, _021D2B84 ; =0x00001260
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2A82
_021D2A80:
	b _021D2BB6
_021D2A82:
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	beq _021D2AA2
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_021D2AA2:
	ldr r2, _021D2B68 ; =0x00001EC8
	mov r1, #0xf
	ldr r0, [r4, r2]
	mvn r1, r1
	add r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D2B88 ; =0x04000050
	mov r1, #0x31
	bl sub_020BF578
	ldr r2, _021D2B68 ; =0x00001EC8
	ldr r0, _021D2B8C ; =0x04001050
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x33
	bl sub_020BF578
	bl sub_020041FC
	mov r1, #0
	bl sub_020055D0
	ldr r0, _021D2B68 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D2BB6
_021D2AEA:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D2B06:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D2BB6
	ldr r2, _021D2B68 ; =0x00001EC8
	mov r1, #0
	ldr r0, [r4, r2]
	add r0, #0x53
	strb r1, [r0]
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	ldr r0, _021D2B88 ; =0x04000050
	mov r1, #0x31
	bl sub_020BF578
	ldr r2, _021D2B68 ; =0x00001EC8
	ldr r0, _021D2B8C ; =0x04001050
	b _021D2B90
	; .align 2, 0
_021D2B2C: .word 0x000013E8
_021D2B30: .word 0x00001288
_021D2B34: .word 0x00001410
_021D2B38: .word 0x00000B38
_021D2B3C: .word 0xFFFCE000
_021D2B40: .word 0x00000DC8
_021D2B44: .word 0x0000062C
_021D2B48: .word 0x00000498
_021D2B4C: .word 0x00000C68
_021D2B50: .word 0x000005C6
_021D2B54: .word 0x00001720
_021D2B58: .word 0x021D54A0
_021D2B5C: .word 0x000001E3
_021D2B60: .word 0x0000082C
_021D2B64: .word 0x000009B4
_021D2B68: .word 0x00001EC8
_021D2B6C: .word 0x000007A8
_021D2B70: .word 0x000001E7
_021D2B74: .word 0x000010D8
_021D2B78: .word 0x00000648
_021D2B7C: .word 0x00000F78
_021D2B80: .word 0x000004BF
_021D2B84: .word 0x00001260
_021D2B88: .word 0x04000050
_021D2B8C: .word 0x04001050
_021D2B90:
	ldr r3, [r4, r2]
	mov r2, #0x53
	ldrsb r2, [r3, r2]
	mov r1, #0x33
	bl sub_020BF578
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2BB6
_021D2BA4:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	blt _021D2BB6
	mov r0, #0
	add sp, #0x18
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
_021D2BB6:
	ldr r0, _021D2C68 ; =0x00000824
	ldr r7, _021D2C6C ; =0x00001A84
	add r3, r4, r0
	ldr r0, _021D2C70 ; =0x000018FC
	ldr r6, _021D2C74 ; =0x00001C0C
	str r0, [sp, #0x14]
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D2C78 ; =0x000009AC
	add r2, r4, r7
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D2C7C ; =0x000015EC
	add r2, r4, r6
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	str r2, [sp, #0xc]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D2C80 ; =0x00001D94
	str r0, [r2, #0]
	ldr r0, _021D2C84 ; =0x00001774
	add r5, r4, r0
	add r0, r4, r3
	str r0, [sp, #0x10]
	mov ip, r0
	ldr r2, [sp, #0x10]
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r5, #0]
	add r0, r2, #0
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	mov r1, #2
	add r0, #8
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	str r2, [sp, #0x10]
	sub r2, r0, r1
	ldr r0, [sp, #0x14]
	add r0, #8
	str r0, [sp, #0x14]
	str r2, [r4, r0]
	add r0, r7, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r7, #8
	sub r0, r0, r1
	str r0, [r4, r7]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r6, #8
	sub r0, r0, r1
	str r0, [r4, r6]
	add r0, r3, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r3, #8
	sub r0, r0, r1
	str r0, [r4, r3]
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #0]
	lsr r0, r1, #1
	sub r2, r2, r0
	ldr r0, [sp, #0xc]
	str r2, [r0, #0]
	mov r0, ip
	ldr r2, [r0, #0]
	lsr r0, r1, #1
	sub r1, r2, r0
	mov r0, ip
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov100_021D2E0C
	ldr r0, _021D2C88 ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4BF0
	mov r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2C68: .word 0x00000824
_021D2C6C: .word 0x00001A84
_021D2C70: .word 0x000018FC
_021D2C74: .word 0x00001C0C
_021D2C78: .word 0x000009AC
_021D2C7C: .word 0x000015EC
_021D2C80: .word 0x00001D94
_021D2C84: .word 0x00001774
_021D2C88: .word 0x00001EC8
	thumb_func_end ov100_021D2428

	thumb_func_start ov100_021D2C8C
ov100_021D2C8C: ; 0x021D2C8C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _021D2C9C
	cmp r1, #1
	beq _021D2CB0
	b _021D2DD6
_021D2C9C:
	bl ov100_021D2324
	add r0, r5, #0
	add r0, #8
	bl ov100_021D4E58
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D2DDE
_021D2CB0:
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0x1b
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #0
	bl ov100_021D4AA4
	ldr r0, _021D2DE8 ; =0x000018A8
	mov r7, #0x62
	mov r6, #0
	add r4, r5, r0
	lsl r7, r7, #2
_021D2CCC:
	ldr r1, _021D2DE4 ; =0x00001EC8
	add r0, r4, #0
	ldr r1, [r5, r1]
	mov r2, #0
	add r1, #0x1c
	bl ov100_021D4AA4
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #4
	blt _021D2CCC
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0x13
	ldr r1, [r5, r1]
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DEC ; =0x00000648
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0xce
	ldr r1, [r5, r1]
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0x7d
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DF0 ; =0x00000958
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0xae
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DF4 ; =0x00000C68
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0xdf
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DF8 ; =0x00000F78
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	mov r0, #0x11
	ldr r1, [r5, r1]
	lsl r0, r0, #8
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2DFC ; =0x00001288
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2E00 ; =0x00001410
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #0
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2E04 ; =0x00001598
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D2DE4 ; =0x00001EC8
	ldr r0, _021D2E08 ; =0x00001720
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D2DDE
_021D2DD6:
	bl sub_020181C4
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2DDE:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2DE4: .word 0x00001EC8
_021D2DE8: .word 0x000018A8
_021D2DEC: .word 0x00000648
_021D2DF0: .word 0x00000958
_021D2DF4: .word 0x00000C68
_021D2DF8: .word 0x00000F78
_021D2DFC: .word 0x00001288
_021D2E00: .word 0x00001410
_021D2E04: .word 0x00001598
_021D2E08: .word 0x00001720
	thumb_func_end ov100_021D2C8C

	thumb_func_start ov100_021D2E0C
ov100_021D2E0C: ; 0x021D2E0C
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r0, _021D2EDC ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	ldr r0, _021D2EDC ; =0x00001EC8
	ldr r0, [r4, r0]
	bl ov100_021D4844
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE0 ; =0x00000648
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE4 ; =0x00001288
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EE8 ; =0x00001410
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0xae
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EEC ; =0x00000C68
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0xdf
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF0 ; =0x00000F78
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x11
	lsl r0, r0, #8
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x7d
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF4 ; =0x00000958
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EF8 ; =0x00001598
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2EFC ; =0x00001720
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F00 ; =0x000018A8
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F04 ; =0x00001A30
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D2F08 ; =0x00001BB8
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x75
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	pop {r4, pc}
	nop
_021D2EDC: .word 0x00001EC8
_021D2EE0: .word 0x00000648
_021D2EE4: .word 0x00001288
_021D2EE8: .word 0x00001410
_021D2EEC: .word 0x00000C68
_021D2EF0: .word 0x00000F78
_021D2EF4: .word 0x00000958
_021D2EF8: .word 0x00001598
_021D2EFC: .word 0x00001720
_021D2F00: .word 0x000018A8
_021D2F04: .word 0x00001A30
_021D2F08: .word 0x00001BB8
	thumb_func_end ov100_021D2E0C

	thumb_func_start ov100_021D2F0C
ov100_021D2F0C: ; 0x021D2F0C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6f
	add r4, r1, #0
	str r0, [sp, #0xc]
	mov r0, #0xc
	mov r1, #0xa
	add r2, r5, #0
	mov r3, #4
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	mov r0, #0xc
	mov r1, #0xb
	add r2, r5, #0
	mov r3, #4
	bl sub_02006E60
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0
	mov r1, #0xc
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x6f
	bl sub_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D2F0C

	thumb_func_start ov100_021D2F64
ov100_021D2F64: ; 0x021D2F64
	push {r4, lr}
	sub sp, #8
	ldr r2, _021D3064 ; =0x00001D28
	add r4, r0, #0
	ldr r2, [r4, r2]
	mov r0, #0x25
	lsl r0, r0, #6
	ldr r2, [r2, #0]
	add r0, r4, r0
	mov r1, #0x54
	bl ov100_021D4AC8
	ldr r0, _021D3064 ; =0x00001D28
	mov r1, #0x25
	ldr r3, [r4, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r4, r1
	mov r2, #0x52
	bl ov100_021D4B4C
	ldr r0, _021D3064 ; =0x00001D28
	mov r1, #0x25
	ldr r3, [r4, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r4, r1
	mov r2, #0x53
	bl ov100_021D4B4C
	mov r0, #0x25
	lsl r0, r0, #6
	ldr r1, _021D3068 ; =0xFFFD0000
	ldr r2, _021D306C ; =0xFFFFB000
	ldr r3, _021D3070 ; =0xFFFBA000
	add r0, r4, r0
	bl sub_02017350
	mov r1, #0xaa
	mov r0, #0
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r3, _021D3064 ; =0x00001D28
	mov r0, #0x25
	ldr r3, [r4, r3]
	lsl r0, r0, #6
	add r1, #0x28
	ldr r3, [r3, #0]
	add r0, r4, r0
	add r1, r4, r1
	mov r2, #0x54
	bl ov100_021D4B10
	ldr r0, _021D3064 ; =0x00001D28
	ldr r2, _021D3074 ; =0x00000AC8
	ldr r1, [r4, r0]
	add r2, r4, r2
	ldr r0, [r1, #0]
	add r1, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #0x25
	lsl r1, r1, #6
	mov r0, #0
	add r1, r4, r1
	mov r3, #0x52
	bl ov100_021D4BA0
	ldr r0, _021D3064 ; =0x00001D28
	ldr r2, _021D3074 ; =0x00000AC8
	ldr r1, [r4, r0]
	add r2, r4, r2
	ldr r0, [r1, #0]
	add r1, #0x1c
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, #0x25
	lsl r1, r1, #6
	mov r0, #1
	add r1, r4, r1
	mov r3, #0x53
	bl ov100_021D4BA0
	ldr r0, _021D3074 ; =0x00000AC8
	mov r1, #3
	ldr r2, _021D306C ; =0xFFFFB000
	ldr r3, _021D3070 ; =0xFFFBA000
	add r0, r4, r0
	lsl r1, r1, #0x10
	bl sub_02017350
	ldr r1, _021D3078 ; =0x00000C28
	mov r0, #0
	str r0, [r4, r1]
	mov r0, #0xa9
	ldr r2, _021D307C ; =0x0000019A
	lsl r0, r0, #4
	str r2, [r4, r0]
	sub r1, #0x10
	str r2, [r4, r1]
	ldr r1, [r4, r0]
	mov r0, #0x25
	lsl r0, r0, #6
	mov r2, #1
	add r0, r4, r0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	ldr r0, _021D3080 ; =0x00000C18
	mov r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3074 ; =0x00000AC8
	lsl r2, r2, #0xc
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201736C
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D3064: .word 0x00001D28
_021D3068: .word 0xFFFD0000
_021D306C: .word 0xFFFFB000
_021D3070: .word 0xFFFBA000
_021D3074: .word 0x00000AC8
_021D3078: .word 0x00000C28
_021D307C: .word 0x0000019A
_021D3080: .word 0x00000C18
	thumb_func_end ov100_021D2F64

	thumb_func_start ov100_021D3084
ov100_021D3084: ; 0x021D3084
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _021D33B8 ; =0x00001D28
	add r5, r0, #0
	ldr r2, [r5, r2]
	mov r1, #0x2e
	ldr r2, [r2, #0]
	add r0, #0x10
	bl ov100_021D4AC8
	ldr r2, _021D33B8 ; =0x00001D28
	mov r0, #0x32
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x18
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	mov r1, #0x32
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x16
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	mov r1, #0x32
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x17
	bl ov100_021D4B4C
	ldr r2, _021D33B8 ; =0x00001D28
	ldr r0, _021D33BC ; =0x000010E8
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x4f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33BC ; =0x000010E8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x4d
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33BC ; =0x000010E8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x4e
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33BC ; =0x000010E8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #2
	mov r2, #0x50
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33BC ; =0x000010E8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #3
	mov r2, #0x51
	bl ov100_021D4B4C
	ldr r0, _021D33BC ; =0x000010E8
	ldr r1, _021D33C0 ; =0xFFFD0000
	ldr r2, _021D33C4 ; =0xFFFF6000
	ldr r3, _021D33C8 ; =0xFFFBA000
	add r0, r5, r0
	bl sub_02017350
	ldr r1, _021D33CC ; =0x00001248
	mov r2, #0
	add r0, r1, #0
	str r2, [r5, r1]
	add r0, #0x10
	str r2, [r5, r0]
	ldr r2, _021D33B8 ; =0x00001D28
	add r1, #0x28
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0x4f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33D0 ; =0x00001270
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x4d
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33D0 ; =0x00001270
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #1
	mov r2, #0x4e
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33D0 ; =0x00001270
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #2
	mov r2, #0x50
	bl ov100_021D4B4C
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33D0 ; =0x00001270
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #3
	mov r2, #0x51
	bl ov100_021D4B4C
	ldr r0, _021D33D0 ; =0x00001270
	mov r1, #3
	ldr r2, _021D33C4 ; =0xFFFF6000
	ldr r3, _021D33C8 ; =0xFFFBA000
	add r0, r5, r0
	lsl r1, r1, #0x10
	bl sub_02017350
	mov r7, #0x62
	ldr r0, _021D33D4 ; =0x000013D0
	mov r6, #0
	str r6, [r5, r0]
	add r0, #0x10
	str r6, [r5, r0]
	ldr r0, _021D33D8 ; =0x00001708
	lsl r7, r7, #2
	add r4, r5, r0
_021D31F8:
	ldr r2, _021D33B8 ; =0x00001D28
	add r0, r4, #0
	ldr r2, [r5, r2]
	mov r1, #0x41
	ldr r2, [r2, #0]
	bl ov100_021D4AC8
	ldr r1, _021D33DC ; =0x00001333
	mov r2, #1
	add r0, r4, #0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #4
	blt _021D31F8
	ldr r2, _021D33B8 ; =0x00001D28
	mov r0, #0x63
	ldr r2, [r5, r2]
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x42
	bl ov100_021D4AC8
	mov r0, #0x63
	ldr r1, _021D33E0 ; =0xFFFCE000
	lsl r0, r0, #4
	add r0, r5, r0
	mov r2, #0
	add r3, r1, #0
	bl sub_02017350
	ldr r0, _021D33B8 ; =0x00001D28
	mov r1, #0x63
	ldr r3, [r5, r0]
	lsl r1, r1, #4
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x43
	bl ov100_021D4B4C
	mov r1, #0x79
	lsl r1, r1, #4
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x70
	sub r1, #0xc
	str r0, [r5, r1]
	mov r0, #0x63
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, _021D33D8 ; =0x00001708
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r2, _021D33B8 ; =0x00001D28
	ldr r0, _021D33E4 ; =0x000007B8
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x44
	bl ov100_021D4AC8
	ldr r0, _021D33E4 ; =0x000007B8
	mov r1, #0x32
	ldr r3, _021D33E0 ; =0xFFFCE000
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	bl sub_02017350
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33E4 ; =0x000007B8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x45
	bl ov100_021D4B4C
	ldr r1, _021D33E8 ; =0x00000918
	mov r2, #1
	str r2, [r5, r1]
	add r0, r1, #4
	str r2, [r5, r0]
	lsl r0, r2, #0xb
	sub r1, #0xc
	str r0, [r5, r1]
	ldr r0, _021D33E4 ; =0x000007B8
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D33EC ; =0x00001890
	mov r1, #0
	add r0, r5, r0
	bl sub_02017348
	ldr r0, _021D33F0 ; =0x00001D2C
	ldr r0, [r5, r0]
	ldr r0, [r0, #8]
	bl sub_02025F30
	cmp r0, #1
	ldr r0, _021D33F4 ; =0x000013F8
	ldr r2, _021D33B8 ; =0x00001D28
	beq _021D3316
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x3d
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33F4 ; =0x000013F8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x3e
	bl ov100_021D4B4C
	b _021D333A
_021D3316:
	ldr r2, [r5, r2]
	add r0, r5, r0
	ldr r2, [r2, #0]
	mov r1, #0x3f
	bl ov100_021D4AC8
	ldr r0, _021D33B8 ; =0x00001D28
	ldr r1, _021D33F4 ; =0x000013F8
	ldr r3, [r5, r0]
	add r1, r5, r1
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	mov r2, #0x40
	bl ov100_021D4B4C
_021D333A:
	ldr r0, _021D33F4 ; =0x000013F8
	mov r1, #1
	mov r3, #0x23
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_02017350
	mov r0, #1
	ldr r1, _021D33F8 ; =0x0000155C
	lsl r2, r0, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r5, r0]
	add r0, r1, #0
	mov r2, #2
	sub r0, #0xc
	str r2, [r5, r0]
	ldr r2, _021D33B8 ; =0x00001D28
	add r1, #0x24
	ldr r2, [r5, r2]
	add r0, r5, r1
	ldr r2, [r2, #0]
	mov r1, #0xd
	bl ov100_021D4AC8
	mov r0, #0x56
	lsl r0, r0, #6
	mov r1, #1
	mov r3, #0xf
	add r0, r5, r0
	lsl r1, r1, #0xc
	mov r2, #0
	lsl r3, r3, #0xe
	bl sub_02017350
	ldr r0, _021D33B8 ; =0x00001D28
	mov r1, #0x56
	ldr r3, [r5, r0]
	lsl r1, r1, #6
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0xe
	bl ov100_021D4B4C
	mov r0, #1
	ldr r1, _021D33FC ; =0x000016E4
	lsl r2, r0, #0xa
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #0x10
	str r2, [r5, r0]
	mov r0, #2
	sub r1, #0xc
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D33B8: .word 0x00001D28
_021D33BC: .word 0x000010E8
_021D33C0: .word 0xFFFD0000
_021D33C4: .word 0xFFFF6000
_021D33C8: .word 0xFFFBA000
_021D33CC: .word 0x00001248
_021D33D0: .word 0x00001270
_021D33D4: .word 0x000013D0
_021D33D8: .word 0x00001708
_021D33DC: .word 0x00001333
_021D33E0: .word 0xFFFCE000
_021D33E4: .word 0x000007B8
_021D33E8: .word 0x00000918
_021D33EC: .word 0x00001890
_021D33F0: .word 0x00001D2C
_021D33F4: .word 0x000013F8
_021D33F8: .word 0x0000155C
_021D33FC: .word 0x000016E4
	thumb_func_end ov100_021D3084

	thumb_func_start ov100_021D3400
ov100_021D3400: ; 0x021D3400
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, _021D34AC ; =0x00001D28
	add r5, r0, #0
	ldr r1, [r5, r1]
	add r0, #0x10
	add r1, #0x1c
	mov r2, #0
	bl ov100_021D4AA4
	ldr r0, _021D34B0 ; =0x00001708
	mov r7, #0x62
	mov r6, #0
	add r4, r5, r0
	lsl r7, r7, #2
_021D341C:
	ldr r1, _021D34AC ; =0x00001D28
	add r0, r4, #0
	ldr r1, [r5, r1]
	mov r2, #0
	add r1, #0x1c
	bl ov100_021D4AA4
	add r6, r6, #1
	add r4, r4, r7
	cmp r6, #4
	blt _021D341C
	ldr r1, _021D34AC ; =0x00001D28
	mov r0, #0x32
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	mov r0, #0x63
	ldr r1, [r5, r1]
	lsl r0, r0, #4
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	ldr r0, _021D34B4 ; =0x000007B8
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	mov r0, #0x25
	ldr r1, [r5, r1]
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	ldr r0, _021D34B8 ; =0x00000AC8
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	ldr r0, _021D34BC ; =0x000013F8
	ldr r1, [r5, r1]
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	ldr r1, _021D34AC ; =0x00001D28
	mov r0, #0x56
	ldr r1, [r5, r1]
	lsl r0, r0, #6
	add r0, r5, r0
	add r1, #0x1c
	mov r2, #1
	bl ov100_021D4AA4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D34AC: .word 0x00001D28
_021D34B0: .word 0x00001708
_021D34B4: .word 0x000007B8
_021D34B8: .word 0x00000AC8
_021D34BC: .word 0x000013F8
	thumb_func_end ov100_021D3400

	thumb_func_start ov100_021D34C0
ov100_021D34C0: ; 0x021D34C0
	push {r4, lr}
	ldr r1, _021D34F0 ; =0x00001D28
	add r4, r0, #0
	ldr r0, _021D34F4 ; =0x000010E8
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #4
	bl ov100_021D4AA4
	ldr r1, _021D34F0 ; =0x00001D28
	ldr r0, _021D34F8 ; =0x00001270
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #4
	bl ov100_021D4AA4
	ldr r0, _021D34FC ; =0x0000125C
	mov r1, #0
	str r1, [r4, r0]
	ldr r0, _021D3500 ; =0x000013E4
	str r1, [r4, r0]
	pop {r4, pc}
	; .align 2, 0
_021D34F0: .word 0x00001D28
_021D34F4: .word 0x000010E8
_021D34F8: .word 0x00001270
_021D34FC: .word 0x0000125C
_021D3500: .word 0x000013E4
	thumb_func_end ov100_021D34C0

	thumb_func_start ov100_021D3504
ov100_021D3504: ; 0x021D3504
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D354C ; =0x021D52A8
	add r4, r0, #0
	ldrh r5, [r3]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #2]
	strh r5, [r0, #2]
	ldrh r5, [r3, #4]
	ldrh r3, [r3, #6]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	ldr r1, _021D3550 ; =0x0013C805
	ldr r3, _021D3554 ; =0x00000C01
	str r4, [sp, #8]
	bl sub_020206D0
	add r0, r4, #0
	bl sub_020203D4
	mov r0, #0xa
	mov r1, #0x3f
	lsl r0, r0, #0xc
	lsl r1, r1, #0x10
	add r2, r4, #0
	bl sub_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D354C: .word 0x021D52A8
_021D3550: .word 0x0013C805
_021D3554: .word 0x00000C01
	thumb_func_end ov100_021D3504

	thumb_func_start ov100_021D3558
ov100_021D3558: ; 0x021D3558
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	ldr r0, _021D35F8 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	ldr r0, _021D35F8 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4844
	add r0, r4, #0
	add r0, #0x10
	bl ov100_021D49B4
	mov r0, #0x32
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x63
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D35FC ; =0x000007B8
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3600 ; =0x000010E8
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3604 ; =0x00001270
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x25
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3608 ; =0x00000AC8
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D360C ; =0x000013F8
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x56
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3610 ; =0x00001708
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3614 ; =0x00001890
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D3618 ; =0x00001A18
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D361C ; =0x00001BA0
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	pop {r4, pc}
	nop
_021D35F8: .word 0x00001D28
_021D35FC: .word 0x000007B8
_021D3600: .word 0x000010E8
_021D3604: .word 0x00001270
_021D3608: .word 0x00000AC8
_021D360C: .word 0x000013F8
_021D3610: .word 0x00001708
_021D3614: .word 0x00001890
_021D3618: .word 0x00001A18
_021D361C: .word 0x00001BA0
	thumb_func_end ov100_021D3558

	thumb_func_start ov100_021D3620
ov100_021D3620: ; 0x021D3620
	push {r3, r4, r5, lr}
	ldr r1, _021D36B0 ; =0x00001D60
	add r5, r0, #0
	mov r0, #0x6f
	bl sub_02018144
	ldr r2, _021D36B0 ; =0x00001D60
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	add r1, r5, #0
	ldr r0, _021D36B4 ; =0x00001D28
	add r1, #0xc
	str r1, [r4, r0]
	add r5, #0xd0
	ldr r1, [r5, #0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov100_021D3084
	ldr r0, _021D36B4 ; =0x00001D28
	ldr r1, [r4, r0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl ov100_021D2F0C
	mov r0, #8
	str r0, [sp]
	ldr r0, _021D36B8 ; =0x04000050
	mov r1, #4
	mov r2, #0x32
	mov r3, #7
	bl sub_020BF55C
	mov r0, #0xa
	str r0, [sp]
	ldr r0, _021D36BC ; =0x04001050
	mov r1, #3
	mov r2, #0x12
	mov r3, #7
	bl sub_020BF55C
	ldr r2, _021D36C0 ; =0x04000060
	ldr r0, _021D36C4 ; =0xFFFFCFFF
	ldrh r1, [r2]
	and r1, r0
	mov r0, #0x20
	orr r0, r1
	strh r0, [r2]
	ldr r0, _021D36C8 ; =0x021D52B0
	bl sub_020BFD2C
	ldr r0, _021D36B4 ; =0x00001D28
	mov r2, #0x22
	ldr r1, [r4, r0]
	lsl r2, r2, #0xc
	str r2, [r1, #0x4c]
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	add r1, #0x44
	bl ov100_021D3504
	mov r1, #0
	mov r0, #0x3f
	add r2, r1, #0
	bl sub_02004550
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D36B0: .word 0x00001D60
_021D36B4: .word 0x00001D28
_021D36B8: .word 0x04000050
_021D36BC: .word 0x04001050
_021D36C0: .word 0x04000060
_021D36C4: .word 0xFFFFCFFF
_021D36C8: .word 0x021D52B0
	thumb_func_end ov100_021D3620

	thumb_func_start ov100_021D36CC
ov100_021D36CC: ; 0x021D36CC
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021D36DC
	cmp r1, #1
	beq _021D377E
	b _021D379C
_021D36DC:
	ldr r0, [r4, #0x10]
	mov r1, #2
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	cmp r0, #0
	ldr r0, [r4, #0]
	beq _021D3728
	cmp r0, #4
	beq _021D36F2
	cmp r0, #6
	bne _021D36FC
_021D36F2:
	mov r1, #2
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x18]
	b _021D3760
_021D36FC:
	cmp r0, #5
	bne _021D3708
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xd
	str r1, [r0, #0x18]
	b _021D3760
_021D3708:
	cmp r0, #0xff
	bne _021D3716
	mov r1, #6
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x18]
	b _021D3760
_021D3716:
	cmp r0, #7
	bne _021D3760
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xc
	str r1, [r0, #0x18]
	ldr r0, [r4, #0x10]
	mov r1, #4
	str r1, [r0, #8]
	b _021D3760
_021D3728:
	cmp r0, #4
	beq _021D3730
	cmp r0, #6
	bne _021D3738
_021D3730:
	ldr r1, _021D37A4 ; =0xFFFFE000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3738:
	cmp r0, #5
	bne _021D3744
	ldr r1, _021D37A8 ; =0xFFFFC000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3744:
	cmp r0, #0xff
	bne _021D3750
	ldr r1, _021D37AC ; =0xFFFFA000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	b _021D3760
_021D3750:
	cmp r0, #7
	bne _021D3760
	ldr r1, _021D37A4 ; =0xFFFFE000
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x18]
	ldr r0, [r4, #0x10]
	mov r1, #4
	str r1, [r0, #8]
_021D3760:
	ldr r1, [r4, #8]
	mov r0, #1
	eor r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x10]
	mov r1, #0
	str r1, [r0, #0x1c]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x20]
	ldr r0, [r4, #0x10]
	bl ov100_021D4890
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D377E:
	ldr r0, [r4, #0x10]
	bl ov100_021D4920
	cmp r0, #0
	beq _021D37A0
	ldr r0, [r4, #0]
	cmp r0, #8
	ldr r0, [r4, #4]
	bne _021D3796
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_021D3796:
	sub r0, r0, #1
	str r0, [r4, #4]
	pop {r4, pc}
_021D379C:
	bl sub_0200DA58
_021D37A0:
	pop {r4, pc}
	nop
_021D37A4: .word 0xFFFFE000
_021D37A8: .word 0xFFFFC000
_021D37AC: .word 0xFFFFA000
	thumb_func_end ov100_021D36CC

	thumb_func_start ov100_021D37B0
ov100_021D37B0: ; 0x021D37B0
	push {r4, lr}
	ldr r2, _021D37EC ; =0x00001D28
	add r1, r0, #0
	ldr r3, [r1, r2]
	mov r0, #0
	str r0, [r3, #0x64]
	ldr r3, [r1, r2]
	str r0, [r3, #0x68]
	ldr r3, [r1, r2]
	str r0, [r3, #0x6c]
	ldr r4, [r1, r2]
	add r3, r4, #0
	add r3, #0x44
	str r3, [r4, #0x5c]
	ldr r4, [r1, r2]
	add r3, r4, #0
	add r3, #0x58
	add r4, #0xbc
	str r3, [r4, #0]
	ldr r3, [r1, r2]
	add r3, #0xac
	str r0, [r3, #0]
	ldr r1, [r1, r2]
	mov r2, #1
	ldr r0, _021D37F0 ; =ov100_021D36CC
	add r1, #0xac
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_021D37EC: .word 0x00001D28
_021D37F0: .word ov100_021D36CC
	thumb_func_end ov100_021D37B0

	thumb_func_start ov100_021D37F4
ov100_021D37F4: ; 0x021D37F4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	ldr r6, _021D3984 ; =0x021D52C0
	add r3, sp, #8
	add r2, r0, #0
	add r5, r1, #0
	ldmia r6!, {r0, r1}
	add r4, r3, #0
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	str r0, [r3, #0]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D381E
	cmp r0, #1
	beq _021D38C4
	b _021D3978
_021D381E:
	ldr r0, [r5, #4]
	mov r1, #0
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	bl sub_020E1108
	ldr r0, _021D3988 ; =0x45800000
	bls _021D3840
	ldr r1, [r4, r6]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D384E
_021D3840:
	ldr r1, [r4, r6]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D384E:
	bl sub_020E1740
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x10]
	add r3, r2, #0
	bl sub_0201736C
	ldr r0, [r5, #4]
	add r6, sp, #8
	lsl r4, r0, #2
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _021D3988 ; =0x45800000
	bls _021D3884
	ldr r1, [r6, r4]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D3892
_021D3884:
	ldr r1, [r6, r4]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D3892:
	bl sub_020E1740
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x14]
	add r3, r2, #0
	bl sub_0201736C
	ldr r0, [r5, #4]
	mov r1, #1
	add r0, r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #0x10]
	bl sub_02017348
	ldr r0, [r5, #0x14]
	mov r1, #1
	bl sub_02017348
	ldr r0, [r5, #0]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, pc}
_021D38C4:
	ldr r0, [r5, #4]
	add r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #7
	blo _021D38F0
	mov r0, #0x6f
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r1, [r5, #8]
	mov r2, #0xc
	lsl r1, r1, #0x10
	ldrsh r2, [r5, r2]
	lsr r1, r1, #0x10
	mov r3, #0x50
	bl sub_020059D0
	ldr r0, [r5, #0]
	add sp, #0x24
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, r6, pc}
_021D38F0:
	lsl r6, r0, #2
	ldr r0, [r4, r6]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _021D3988 ; =0x45800000
	bls _021D3910
	ldr r1, [r4, r6]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D391E
_021D3910:
	ldr r1, [r4, r6]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D391E:
	bl sub_020E1740
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x10]
	add r3, r2, #0
	bl sub_0201736C
	ldr r0, [r5, #4]
	add r6, sp, #8
	lsl r4, r0, #2
	ldr r0, [r6, r4]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _021D3988 ; =0x45800000
	bls _021D3954
	ldr r1, [r6, r4]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D3962
_021D3954:
	ldr r1, [r6, r4]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D3962:
	bl sub_020E1740
	mov r2, #1
	add r1, r0, #0
	lsl r2, r2, #0xc
	ldr r0, [r5, #0x14]
	add r3, r2, #0
	bl sub_0201736C
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_021D3978:
	add r0, r2, #0
	bl sub_0200DA58
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	nop
_021D3984: .word 0x021D52C0
_021D3988: .word 0x45800000
	thumb_func_end ov100_021D37F4

	thumb_func_start ov100_021D398C
ov100_021D398C: ; 0x021D398C
	push {r4, r5, r6, lr}
	ldr r3, _021D39D8 ; =0x00001D30
	add r6, r1, #0
	add r4, r0, r3
	mov r3, #0x18
	mul r6, r3
	mov r3, #0
	add r5, r4, r6
	str r3, [r4, r6]
	str r3, [r5, #4]
	str r2, [r5, #8]
	mov r2, #0x62
	mov r4, #0x63
	lsl r2, r2, #2
	lsl r4, r4, #4
	mul r2, r1
	add r4, r0, r4
	add r4, r4, r2
	str r4, [r5, #0x10]
	ldr r4, _021D39DC ; =0x00001708
	add r0, r0, r4
	add r0, r0, r2
	str r0, [r5, #0x14]
	cmp r1, #0
	bne _021D39C4
	sub r3, #0x50
	strh r3, [r5, #0xc]
	b _021D39C8
_021D39C4:
	mov r0, #0x50
	strh r0, [r5, #0xc]
_021D39C8:
	mov r2, #1
	ldr r0, _021D39E0 ; =ov100_021D37F4
	add r1, r5, #0
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	pop {r4, r5, r6, pc}
	nop
_021D39D8: .word 0x00001D30
_021D39DC: .word 0x00001708
_021D39E0: .word ov100_021D37F4
	thumb_func_end ov100_021D398C

	thumb_func_start ov100_021D39E4
ov100_021D39E4: ; 0x021D39E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0x11
	bls _021D39F2
	b _021D3EEC
_021D39F2:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D39FE: ; jump table
	.short _021D3A22 - _021D39FE - 2 ; case 0
	.short _021D3A30 - _021D39FE - 2 ; case 1
	.short _021D3A70 - _021D39FE - 2 ; case 2
	.short _021D3A98 - _021D39FE - 2 ; case 3
	.short _021D3AC6 - _021D39FE - 2 ; case 4
	.short _021D3B14 - _021D39FE - 2 ; case 5
	.short _021D3B3C - _021D39FE - 2 ; case 6
	.short _021D3C28 - _021D39FE - 2 ; case 7
	.short _021D3C58 - _021D39FE - 2 ; case 8
	.short _021D3C70 - _021D39FE - 2 ; case 9
	.short _021D3CCC - _021D39FE - 2 ; case 10
	.short _021D3D20 - _021D39FE - 2 ; case 11
	.short _021D3D8E - _021D39FE - 2 ; case 12
	.short _021D3DD2 - _021D39FE - 2 ; case 13
	.short _021D3E2A - _021D39FE - 2 ; case 14
	.short _021D3E5A - _021D39FE - 2 ; case 15
	.short _021D3ECA - _021D39FE - 2 ; case 16
	.short _021D3EE2 - _021D39FE - 2 ; case 17
_021D3A22:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D3B1E
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D3A30:
	ldr r1, _021D3D40 ; =0x00001D28
	mov r0, #0
	ldr r2, [r4, r1]
	mov r3, #0x3c
	str r0, [r2, #0x64]
	ldr r2, [r4, r1]
	str r0, [r2, #0x68]
	ldr r2, [r4, r1]
	str r0, [r2, #0x6c]
	ldr r2, [r4, r1]
	str r3, [r2, #0x60]
	ldr r3, [r4, r1]
	ldr r2, [r3, #0x18]
	str r2, [r3, #0x58]
	ldr r2, [r4, r1]
	str r0, [r2, #0x70]
	ldr r2, [r4, r1]
	str r0, [r2, #0x74]
	ldr r2, _021D3D44 ; =0xFFFD2000
	ldr r0, [r4, r1]
	str r2, [r0, #0x78]
	ldr r2, [r4, r1]
	add r0, r2, #0
	add r0, #0x44
	str r0, [r2, #0x5c]
	ldr r0, [r4, r1]
	add r0, #0x58
	bl ov100_021D4890
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D3A70:
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	add r0, #0x58
	bl ov100_021D4920
	cmp r0, #0
	beq _021D3B1E
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	ldr r1, _021D3D40 ; =0x00001D28
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0xe
	bl ov100_021D46C8
	b _021D3EEC
_021D3A98:
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D3B1E
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D3D40 ; =0x00001D28
	mov r2, #0x10
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D3AC6:
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D3B1E
	ldr r5, _021D3D48 ; =0x021D52DC
	add r3, sp, #0x18
	mov r2, #5
_021D3ADE:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D3ADE
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	add r0, sp, #0x18
	bl ov100_021D4EBC
	ldr r1, _021D3D40 ; =0x00001D28
	ldr r1, [r4, r1]
	str r0, [r1, #0x54]
	add r0, r4, #0
	bl ov100_021D37B0
	ldr r0, _021D3D40 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, _021D3D4C ; =0x00001248
	mov r1, #1
	str r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D3B14:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	bge _021D3B20
_021D3B1E:
	b _021D3EEC
_021D3B20:
	ldr r0, _021D3D40 ; =0x00001D28
	mov r1, #4
	ldr r0, [r4, r0]
	add r0, #0xac
	str r1, [r0, #0]
	ldr r0, _021D3D50 ; =0x000013D0
	mov r1, #1
	str r1, [r4, r0]
	add r0, #0x10
	str r1, [r4, r0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3B3C:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x50
	bne _021D3B50
	mov r1, #0x45
	ldr r0, _021D3D54 ; =0x000006D2
	mvn r1, r1
	bl sub_02005728
_021D3B50:
	ldr r0, [r4, #4]
	cmp r0, #0x87
	bne _021D3B5E
	ldr r0, _021D3D54 ; =0x000006D2
	mov r1, #0x46
	bl sub_02005728
_021D3B5E:
	ldr r2, [r4, #4]
	ldr r1, _021D3D58 ; =0x00000136
	cmp r2, r1
	beq _021D3B74
	add r0, r1, #0
	add r0, #0x41
	cmp r2, r0
	beq _021D3B74
	add r1, #0x7a
	cmp r2, r1
	bne _021D3B7A
_021D3B74:
	ldr r0, _021D3D5C ; =0x000006D4
	bl sub_02005748
_021D3B7A:
	mov r1, #0x47
	ldr r2, [r4, #4]
	lsl r1, r1, #2
	cmp r2, r1
	beq _021D3B92
	add r0, r1, #0
	add r0, #0x36
	cmp r2, r0
	beq _021D3B92
	add r1, #0x7a
	cmp r2, r1
	bne _021D3B98
_021D3B92:
	ldr r0, _021D3D60 ; =0x000006D5
	bl sub_02005748
_021D3B98:
	ldr r0, [r4, #4]
	cmp r0, #0xa5
	bne _021D3BA8
	mov r1, #0x45
	ldr r0, _021D3D64 ; =0x000006D3
	mvn r1, r1
	bl sub_02005728
_021D3BA8:
	ldr r0, [r4, #4]
	cmp r0, #0xdc
	bne _021D3BB6
	ldr r0, _021D3D64 ; =0x000006D3
	mov r1, #0x46
	bl sub_02005728
_021D3BB6:
	ldr r1, [r4, #4]
	ldr r0, _021D3D68 ; =0x000001D6
	cmp r1, r0
	bne _021D3BC8
	mov r1, #0x45
	ldr r0, _021D3D6C ; =0x000006D6
	mvn r1, r1
	bl sub_02005728
_021D3BC8:
	mov r0, #0x82
	ldr r1, [r4, #4]
	lsl r0, r0, #2
	cmp r1, r0
	bne _021D3BDA
	ldr r0, _021D3D6C ; =0x000006D6
	mov r1, #0x46
	bl sub_02005728
_021D3BDA:
	ldr r0, [r4, #4]
	cmp r0, #0x78
	bne _021D3BEA
	ldr r0, _021D3D40 ; =0x00001D28
	mov r1, #5
	ldr r0, [r4, r0]
	add r0, #0xac
	str r1, [r0, #0]
_021D3BEA:
	ldr r0, [r4, #4]
	cmp r0, #0xd2
	bne _021D3BFA
	ldr r0, _021D3D40 ; =0x00001D28
	mov r1, #0xff
	ldr r0, [r4, r0]
	add r0, #0xac
	str r1, [r0, #0]
_021D3BFA:
	ldr r0, _021D3D4C ; =0x00001248
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D3C62
	ldr r0, _021D3D40 ; =0x00001D28
	mov r1, #6
	ldr r0, [r4, r0]
	ldr r2, _021D3D70 ; =0x000001E3
	add r0, #0xac
	str r1, [r0, #0]
	add r0, r4, #0
	mov r1, #0
	bl ov100_021D398C
	mov r1, #0x45
	ldr r0, _021D3D74 ; =0x000006D7
	mvn r1, r1
	bl sub_02005728
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3C28:
	ldr r1, _021D3D50 ; =0x000013D0
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021D3C62
	ldr r1, _021D3D40 ; =0x00001D28
	mov r2, #7
	ldr r1, [r4, r1]
	add r1, #0xac
	str r2, [r1, #0]
	mov r2, #0x79
	mov r1, #1
	lsl r2, r2, #2
	bl ov100_021D398C
	ldr r0, _021D3D74 ; =0x000006D7
	mov r1, #0x46
	bl sub_02005728
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D3EEC
_021D3C58:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	bge _021D3C64
_021D3C62:
	b _021D3EEC
_021D3C64:
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3C70:
	ldr r3, _021D3D40 ; =0x00001D28
	mov r1, #8
	ldr r0, [r4, r3]
	add r0, #0xac
	str r1, [r0, #0]
	ldr r0, [r4, #8]
	ldr r1, [r4, r3]
	cmp r0, #0
	bne _021D3CA4
	mov r2, #0x53
	ldrsb r0, [r1, r2]
	cmp r0, #8
	bge _021D3C9E
	add r0, r0, #1
	add r1, #0x53
	strb r0, [r1]
	ldr r3, [r4, r3]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r3, r2]
	mov r1, #0x31
	bl sub_020BF578
	b _021D3EEC
_021D3C9E:
	mov r0, #1
	str r0, [r4, #8]
	b _021D3EEC
_021D3CA4:
	mov r2, #0x53
	ldrsb r0, [r1, r2]
	cmp r0, #0
	ble _021D3CC0
	sub r0, r0, #2
	add r1, #0x53
	strb r0, [r1]
	ldr r3, [r4, r3]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r3, r2]
	mov r1, #0x31
	bl sub_020BF578
	b _021D3EEC
_021D3CC0:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	b _021D3EEC
_021D3CCC:
	ldr r0, [r4, #8]
	ldr r2, _021D3D40 ; =0x00001D28
	cmp r0, #0
	bne _021D3CF8
	ldr r1, [r4, r2]
	mov r3, #0x53
	ldrsb r0, [r1, r3]
	cmp r0, #0xc
	bge _021D3CF2
	add r0, r0, #1
	add r1, #0x53
	strb r0, [r1]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r2, r3]
	mov r1, #0x31
	bl sub_020BF578
	b _021D3EEC
_021D3CF2:
	mov r0, #1
	str r0, [r4, #8]
	b _021D3EEC
_021D3CF8:
	ldr r5, [r4, r2]
	mov r3, #0x53
	ldrsb r0, [r5, r3]
	cmp r0, #0
	ble _021D3D16
	sub r0, r0, #2
	add r5, #0x53
	strb r0, [r5]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r2, r3]
	mov r1, #0x31
	bl sub_020BF578
	b _021D3EEC
_021D3D16:
	add r0, r1, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	b _021D3EEC
_021D3D20:
	ldr r2, _021D3D40 ; =0x00001D28
	mov r3, #0x53
	ldr r5, [r4, r2]
	ldrsb r1, [r5, r3]
	cmp r1, #0x10
	bge _021D3D7C
	add r0, r1, #2
	add r5, #0x53
	strb r0, [r5]
	ldr r2, [r4, r2]
	ldr r0, _021D3D78 ; =0x04000050
	ldrsb r2, [r2, r3]
	mov r1, #0x31
	bl sub_020BF578
	b _021D3EEC
	; .align 2, 0
_021D3D40: .word 0x00001D28
_021D3D44: .word 0xFFFD2000
_021D3D48: .word 0x021D52DC
_021D3D4C: .word 0x00001248
_021D3D50: .word 0x000013D0
_021D3D54: .word 0x000006D2
_021D3D58: .word 0x00000136
_021D3D5C: .word 0x000006D4
_021D3D60: .word 0x000006D5
_021D3D64: .word 0x000006D3
_021D3D68: .word 0x000001D6
_021D3D6C: .word 0x000006D6
_021D3D70: .word 0x000001E3
_021D3D74: .word 0x000006D7
_021D3D78: .word 0x04000050
_021D3D7C:
	bl ov100_021D34C0
	add r0, r4, #0
	bl ov100_021D2F64
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3D8E:
	ldr r2, _021D3F98 ; =0x00001D28
	mov r3, #0x53
	ldr r1, [r4, r2]
	ldrsb r0, [r1, r3]
	cmp r0, #0
	beq _021D3DAE
	sub r0, r0, #1
	add r1, #0x53
	strb r0, [r1]
	ldr r2, [r4, r2]
	ldr r0, _021D3F9C ; =0x04000050
	ldrsb r2, [r2, r3]
	mov r1, #0x31
	bl sub_020BF578
	b _021D3EEC
_021D3DAE:
	mov r1, #0xaa
	lsl r1, r1, #4
	mov r2, #1
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #0xc
	str r2, [r4, r1]
	ldr r1, _021D3FA0 ; =0x00000C28
	str r2, [r4, r1]
	add r0, r1, #4
	str r2, [r4, r0]
	add r1, #0xc
	str r2, [r4, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3DD2:
	mov r1, #0xa9
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	ldr r2, _021D3FA4 ; =0x00000CCD
	cmp r0, r2
	bge _021D3E14
	add r0, #0x52
	str r0, [r4, r1]
	add r0, r2, #0
	sub r0, #0xb5
	ldr r0, [r4, r0]
	sub r2, #0xb5
	add r0, #0x52
	str r0, [r4, r2]
	ldr r1, [r4, r1]
	mov r0, #0x25
	lsl r0, r0, #6
	mov r2, #1
	add r0, r4, r0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	ldr r0, _021D3FA8 ; =0x00000C18
	mov r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3FAC ; =0x00000AC8
	lsl r2, r2, #0xc
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201736C
	b _021D3EEC
_021D3E14:
	ldr r1, _021D3F98 ; =0x00001D28
	mov r2, #0x12
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3E2A:
	ldr r0, _021D3F98 ; =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D3EEC
	ldr r0, _021D3F98 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r1, _021D3F98 ; =0x00001D28
	mov r2, #0x13
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	bl ov100_021D46C8
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3E5A:
	ldr r0, _021D3F98 ; =0x00001D28
	ldr r0, [r4, r0]
	ldr r0, [r0, #0x40]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D3EEC
	mov r1, #0xa9
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	ldr r0, _021D3FB0 ; =0x0000019A
	cmp r2, r0
	ble _021D3EAA
	ldr r0, _021D3FA8 ; =0x00000C18
	sub r2, #0x52
	str r2, [r4, r1]
	ldr r2, [r4, r0]
	sub r2, #0x52
	str r2, [r4, r0]
	ldr r1, [r4, r1]
	mov r0, #0x25
	lsl r0, r0, #6
	mov r2, #1
	add r0, r4, r0
	lsl r2, r2, #0xc
	add r3, r1, #0
	bl sub_0201736C
	ldr r0, _021D3FA8 ; =0x00000C18
	mov r2, #1
	ldr r1, [r4, r0]
	ldr r0, _021D3FAC ; =0x00000AC8
	lsl r2, r2, #0xc
	add r0, r4, r0
	add r3, r1, #0
	bl sub_0201736C
	b _021D3EEC
_021D3EAA:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3ECA:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D3EEC
	ldr r0, _021D3F98 ; =0x00001D28
	ldr r0, [r4, r0]
	bl ov100_021D4788
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3EEC
_021D3EE2:
	mov r0, #0
	str r0, [r4, #0]
	add sp, #0x44
	str r0, [r4, #4]
	pop {r4, r5, r6, r7, pc}
_021D3EEC:
	ldr r0, _021D3FB4 ; =0x00000684
	ldr r7, _021D3FB8 ; =0x000018E4
	add r3, r4, r0
	ldr r0, _021D3FBC ; =0x0000175C
	ldr r6, _021D3FC0 ; =0x00001A6C
	str r0, [sp, #0x14]
	add r2, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D3FC4 ; =0x0000080C
	add r2, r4, r7
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, _021D3FC8 ; =0x0000144C
	add r2, r4, r6
	add r3, r4, r0
	ldmia r3!, {r0, r1}
	str r2, [sp, #0xc]
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D3FCC ; =0x00001BF4
	str r0, [r2, #0]
	ldr r0, _021D3FD0 ; =0x000015D4
	add r5, r4, r0
	add r0, r4, r3
	str r0, [sp, #0x10]
	mov ip, r0
	ldr r2, [sp, #0x10]
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r1, [r5, #0]
	add r0, r2, #0
	str r1, [r0, #0]
	ldr r0, [sp, #0x14]
	mov r1, #2
	add r0, #8
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	str r2, [sp, #0x10]
	sub r2, r0, r1
	ldr r0, [sp, #0x14]
	add r0, #8
	str r0, [sp, #0x14]
	str r2, [r4, r0]
	add r0, r7, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r7, #8
	sub r0, r0, r1
	str r0, [r4, r7]
	add r0, r6, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r6, #8
	sub r0, r0, r1
	str r0, [r4, r6]
	add r0, r3, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r3, #8
	sub r0, r0, r1
	str r0, [r4, r3]
	ldr r0, [sp, #0xc]
	ldr r2, [r0, #0]
	lsr r0, r1, #1
	sub r2, r2, r0
	ldr r0, [sp, #0xc]
	str r2, [r0, #0]
	mov r0, ip
	ldr r2, [r0, #0]
	lsr r0, r1, #1
	sub r1, r2, r0
	mov r0, ip
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov100_021D3558
	mov r0, #1
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021D3F98: .word 0x00001D28
_021D3F9C: .word 0x04000050
_021D3FA0: .word 0x00000C28
_021D3FA4: .word 0x00000CCD
_021D3FA8: .word 0x00000C18
_021D3FAC: .word 0x00000AC8
_021D3FB0: .word 0x0000019A
_021D3FB4: .word 0x00000684
_021D3FB8: .word 0x000018E4
_021D3FBC: .word 0x0000175C
_021D3FC0: .word 0x00001A6C
_021D3FC4: .word 0x0000080C
_021D3FC8: .word 0x0000144C
_021D3FCC: .word 0x00001BF4
_021D3FD0: .word 0x000015D4
	thumb_func_end ov100_021D39E4

	thumb_func_start ov100_021D3FD4
ov100_021D3FD4: ; 0x021D3FD4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _021D3FFA
	bl ov100_021D3400
	ldr r0, _021D4008 ; =0x00001D28
	mov r1, #1
	ldr r0, [r4, r0]
	mov r2, #0
	add r0, #0x54
	add r3, r1, #0
	bl ov100_021D4F0C
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D4002
_021D3FFA:
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_021D4002:
	mov r0, #1
	pop {r4, pc}
	nop
_021D4008: .word 0x00001D28
	thumb_func_end ov100_021D3FD4

	thumb_func_start ov100_021D400C
ov100_021D400C: ; 0x021D400C
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
	ldr r0, _021D4100 ; =0x45800000
	bls _021D4074
	add r1, r4, #0
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D4082
_021D4074:
	add r1, r4, #0
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D4082:
	bl sub_020E1740
	bl sub_020BCFF0
	bl sub_020E17B4
	ldr r1, _021D4100 ; =0x45800000
	bl sub_020E1304
	ldr r1, [sp, #0x30]
	add r4, r0, #0
	bl sub_020E11CC
	blo _021D40BA
	add r1, sp, #0x18
	mov r0, #0x1c
	ldrsh r0, [r1, r0]
	bl sub_020E17B4
	add r1, r4, #0
	bl sub_020E1108
	bhi _021D40BA
	mov r0, #0
	add r1, r4, #0
	bl sub_020E1228
	bne _021D40C0
_021D40BA:
	add sp, #0x18
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D40C0:
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
_021D4100: .word 0x45800000
	thumb_func_end ov100_021D400C

	thumb_func_start ov100_021D4104
ov100_021D4104: ; 0x021D4104
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r2, [sp, #0x10]
	add r5, r0, #0
	add r4, r3, #0
	mov r3, #3
	add r6, r1, #0
	ldr r0, [r5, #0]
	add r1, sp, #0x24
	add r2, sp, #0x20
	lsl r3, r3, #0x12
	bl sub_0200D67C
	ldr r0, [sp, #0x24]
	bl sub_020E17B4
	ldr r1, _021D41F8 ; =0x45800000
	bl sub_020E1304
	add r7, r0, #0
	ldr r0, [sp, #0x20]
	bl sub_020E17B4
	ldr r1, _021D41F8 ; =0x45800000
	bl sub_020E1304
	add r3, r0, #0
	add r0, sp, #0x1c
	str r0, [sp]
	add r0, sp, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r4, [sp, #8]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	add r0, r6, #0
	add r2, r7, #0
	bl ov100_021D400C
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _021D41F0
	ldr r0, [sp, #0x1c]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _021D41F8 ; =0x45800000
	bls _021D417A
	ldr r1, [sp, #0x1c]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D4188
_021D417A:
	ldr r1, [sp, #0x1c]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D4188:
	bl sub_020E1740
	add r4, r0, #0
	ldr r0, [sp, #0x18]
	mov r1, #0
	bl sub_020E1108
	ldr r0, _021D41F8 ; =0x45800000
	bls _021D41AC
	ldr r1, [sp, #0x18]
	bl sub_020E18B0
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D41BA
_021D41AC:
	ldr r1, [sp, #0x18]
	bl sub_020E18B0
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D41BA:
	bl sub_020E1740
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x20]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	str r1, [r5, #0x20]
	lsr r0, r0, #0x10
	bl sub_0201D250
	add r7, r0, #0
	ldr r0, [r5, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	add r2, r0, #0
	ldr r0, [r5, #0]
	add r1, r4, r7
	add r2, r6, r2
	bl sub_0200D5E8
_021D41F0:
	ldr r0, [sp, #0x14]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D41F8: .word 0x45800000
	thumb_func_end ov100_021D4104

	thumb_func_start ov100_021D41FC
ov100_021D41FC: ; 0x021D41FC
	push {r3, lr}
	mov r1, #0x20
	str r1, [sp]
	ldr r3, _021D4210 ; =0x40A00000
	mov r1, #0x80
	mov r2, #0x28
	bl ov100_021D4104
	pop {r3, pc}
	nop
_021D4210: .word 0x40A00000
	thumb_func_end ov100_021D41FC

	thumb_func_start ov100_021D4214
ov100_021D4214: ; 0x021D4214
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r5, #0x1c]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	str r1, [r5, #0x1c]
	lsr r0, r0, #0x10
	bl sub_0201D250
	lsl r6, r0, #6
	ldr r0, [r5, #0x1c]
	mov r7, #2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r7, r7, #0x12
	bl sub_0201D264
	mov r3, #0x18
	add r1, r0, #0
	mul r1, r3
	lsl r0, r3, #0xd
	add r4, r1, r0
	ldr r0, [r5, #0]
	add r1, r6, r7
	add r2, r4, #0
	lsl r3, r3, #0xf
	bl sub_0200D650
	asr r0, r4, #0xb
	lsr r0, r0, #0x14
	add r0, r4, r0
	asr r0, r0, #0xc
	strh r0, [r5, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4214

	thumb_func_start ov100_021D4264
ov100_021D4264: ; 0x021D4264
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	add r4, r1, #0
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	add r7, r2, #0
	str r3, [sp]
	str r0, [r5, #0x1c]
	bl sub_020E1F6C
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	str r1, [r5, #0x1c]
	bl sub_0201D250
	ldr r1, [sp]
	lsl r4, r4, #0xc
	add r6, r1, #0
	mul r6, r0
	ldr r0, [r5, #0x1c]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r1, [sp, #0x18]
	lsl r3, r7, #0xc
	add r2, r1, #0
	mul r2, r0
	add r2, r3, r2
	mov r3, #3
	ldr r0, [r5, #0]
	add r1, r4, r6
	lsl r3, r3, #0x12
	bl sub_0200D650
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4264

	thumb_func_start ov100_021D42B0
ov100_021D42B0: ; 0x021D42B0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #0x30]
	ldr r2, _021D430C ; =0x021D550E
	lsl r3, r1, #2
	mov r1, #0xa
	str r1, [sp]
	ldr r1, _021D4310 ; =0x021D550C
	ldrsh r2, [r2, r3]
	ldrsh r1, [r1, r3]
	ldr r3, _021D4314 ; =0x40400000
	bl ov100_021D4104
	cmp r0, #0
	bne _021D42EE
	ldr r0, [r4, #0x30]
	mov r1, #0xa
	add r0, r0, #1
	str r0, [r4, #0x30]
	bl sub_020E2178
	str r1, [r4, #0x30]
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E2178
	str r1, [r4, #0x30]
	mov r0, #3
	str r0, [r4, #0xc]
_021D42EE:
	mov r3, #3
	ldr r0, [r4, #0]
	add r1, sp, #8
	add r2, sp, #4
	lsl r3, r3, #0x12
	bl sub_0200D67C
	ldr r1, [sp, #4]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x14]
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_021D430C: .word 0x021D550E
_021D4310: .word 0x021D550C
_021D4314: .word 0x40400000
	thumb_func_end ov100_021D42B0

	thumb_func_start ov100_021D4318
ov100_021D4318: ; 0x021D4318
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	mov r1, #0x5a
	add r0, #8
	lsl r1, r1, #2
	str r0, [r4, #0x20]
	bl sub_020E1F6C
	str r1, [r4, #0x20]
	cmp r1, #0xc
	bge _021D4360
	ldr r0, [r4, #0x24]
	mov r1, #3
	add r0, r0, #1
	str r0, [r4, #0x24]
	bl sub_020E1F6C
	str r1, [r4, #0x24]
	bl sub_0201D2E8
	ldr r1, [r4, #0x24]
	bl sub_020E1F6C
	add r0, r1, #1
	str r0, [r4, #0x28]
	bl sub_0201D2E8
	ldr r1, [r4, #0x24]
	bl sub_020E1F6C
	add r0, r1, #1
	str r0, [r4, #0x2c]
	mov r0, #2
	str r0, [r4, #0xc]
_021D4360:
	mov r3, #3
	ldr r0, [r4, #0]
	add r1, sp, #4
	add r2, sp, #0
	lsl r3, r3, #0x12
	bl sub_0200D67C
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D250
	ldr r2, [r4, #0x28]
	ldr r3, [sp, #4]
	lsl r1, r2, #1
	add r1, r2, r1
	mul r0, r1
	add r0, r3, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0x20]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl sub_0201D264
	ldr r2, [r4, #0x2c]
	ldr r3, [sp]
	lsl r1, r2, #1
	add r1, r2, r1
	mul r0, r1
	add r2, r3, r0
	str r2, [sp]
	mov r3, #3
	ldr r0, [r4, #0]
	ldr r1, [sp, #4]
	lsl r3, r3, #0x12
	bl sub_0200D650
	ldr r1, [sp]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r0, r0, #0xc
	strh r0, [r4, #0x14]
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4318

	thumb_func_start ov100_021D43BC
ov100_021D43BC: ; 0x021D43BC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r0, #0x14
	ldrsh r0, [r4, r0]
	bl sub_020E17B4
	ldr r1, _021D4404 ; =0x42C80000
	bl sub_020E1304
	add r1, r0, #0
	ldr r0, _021D4408 ; =0x3F4CCCCD
	bl sub_020E1A9C
	ldr r1, _021D440C ; =0x3E4CCCCD
	add r5, r0, #0
	bl sub_020E1164
	bhi _021D43E2
	ldr r5, _021D440C ; =0x3E4CCCCD
_021D43E2:
	ldr r1, _021D4410 ; =0x3F19999A
	add r0, r5, #0
	bl sub_020E10AC
	blo _021D43EE
	ldr r5, _021D4410 ; =0x3F19999A
_021D43EE:
	ldr r0, [r4, #0]
	add r1, r5, #0
	add r2, r5, #0
	bl sub_0200D6E8
	mov r1, #0x14
	ldrsh r1, [r4, r1]
	ldr r0, [r4, #0]
	bl sub_0200D474
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4404: .word 0x42C80000
_021D4408: .word 0x3F4CCCCD
_021D440C: .word 0x3E4CCCCD
_021D4410: .word 0x3F19999A
	thumb_func_end ov100_021D43BC

	thumb_func_start ov100_021D4414
ov100_021D4414: ; 0x021D4414
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021D4434 ; =0x021D5334
	ldr r1, [r1, r2]
	blx r1
	add r0, r4, #0
	bl ov100_021D43BC
	ldr r0, [r4, #0]
	bl sub_0200D33C
	pop {r4, pc}
	nop
_021D4434: .word 0x021D5334
	thumb_func_end ov100_021D4414

	thumb_func_start ov100_021D4438
ov100_021D4438: ; 0x021D4438
	push {r4, lr}
	sub sp, #0x10
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _021D4456
	mov r0, #0xc
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x24
	mov r3, #0x20
	bl ov100_021D4264
	b _021D44AA
_021D4456:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D44AA
	ldr r1, [r4, #0x3c]
	cmp r1, #0
	beq _021D44AA
	add r1, sp, #4
	add r1, #2
	add r2, sp, #4
	bl sub_0200D550
	mov r0, #1
	str r0, [sp]
	add r3, sp, #4
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r3, _021D44B4 ; =0x40400000
	add r0, r4, #0
	bl ov100_021D4104
	ldr r0, [r4, #0]
	add r1, sp, #0xc
	add r2, sp, #8
	bl sub_0200D788
	ldr r0, [sp, #0xc]
	ldr r1, _021D44B8 ; =0x3DCCCCCD
	bl sub_020E1108
	bls _021D44A0
	ldr r0, [sp, #0xc]
	ldr r1, _021D44BC ; =0x3B03126F
	bl sub_020E1A9C
	str r0, [sp, #0xc]
_021D44A0:
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #0]
	add r2, r1, #0
	bl sub_0200D6E8
_021D44AA:
	ldr r0, [r4, #0]
	bl sub_0200D33C
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D44B4: .word 0x40400000
_021D44B8: .word 0x3DCCCCCD
_021D44BC: .word 0x3B03126F
	thumb_func_end ov100_021D4438

	thumb_func_start ov100_021D44C0
ov100_021D44C0: ; 0x021D44C0
	push {r4, r5}
	mov r2, #0x16
	mov r3, #1
	lsl r2, r2, #4
	str r3, [r0, r2]
	add r3, r2, #0
	add r3, #0x24
	str r1, [r0, r3]
	add r3, r2, #0
	mov r4, #0
	add r3, #0x20
	str r4, [r0, r3]
	add r3, r2, #0
	add r3, #0x20
	ldr r3, [r0, r3]
	mov r4, #0xc
	add r5, r3, #0
	mul r5, r4
	add r3, r1, r5
	ldr r5, [r3, #4]
	add r3, r2, #0
	add r3, #0x18
	str r5, [r0, r3]
	lsl r3, r4, #5
	ldr r3, [r0, r3]
	add r5, r3, #0
	mul r5, r4
	add r3, r1, r5
	ldr r5, [r3, #4]
	add r3, r2, #0
	add r3, #0x1c
	str r5, [r0, r3]
	lsl r3, r4, #5
	ldr r3, [r0, r3]
	sub r2, #8
	mul r4, r3
	ldr r1, [r1, r4]
	str r1, [r0, r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ov100_021D44C0

	thumb_func_start ov100_021D4510
ov100_021D4510: ; 0x021D4510
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r0, #0x88
	bl sub_02017248
	asr r1, r0, #0xc
	mov r5, #0x55
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	lsl r5, r5, #2
	add r2, r3, r2
	ldr r3, [r4, r5]
	ldr r7, _021D45A0 ; =0x021D5344
	add r3, r0, r3
	asr r0, r3, #0xc
	lsr r6, r0, #0x1f
	lsl r0, r0, #0x1e
	sub r0, r0, r6
	ror r0, r1
	add r1, r6, r0
	add r0, r5, #4
	ldr r0, [r4, r0]
	sub r6, r0, #1
	mov r0, #0x14
	mul r0, r6
	add r6, r5, #0
	add r6, #8
	ldr r6, [r4, r6]
	add r0, r7, r0
	lsl r6, r6, #2
	ldr r0, [r6, r0]
	cmp r0, #0xff
	beq _021D459E
	cmp r1, r2
	beq _021D4594
	add r1, r5, #0
	add r1, #8
	ldr r1, [r4, r1]
	add r5, #8
	add r1, r1, #1
	str r1, [r4, r5]
	lsl r1, r0, #2
	cmp r1, #0
	ble _021D4580
	lsl r0, r0, #0xe
	bl sub_020E17B4
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl sub_020E0B00
	b _021D458E
_021D4580:
	lsl r0, r0, #0xe
	bl sub_020E17B4
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl sub_020E1A9C
_021D458E:
	bl sub_020E1740
	add r3, r0, #0
_021D4594:
	add r4, #0x88
	add r0, r4, #0
	add r1, r3, #0
	bl sub_02017240
_021D459E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D45A0: .word 0x021D5344
	thumb_func_end ov100_021D4510

	thumb_func_start ov100_021D45A4
ov100_021D45A4: ; 0x021D45A4
	push {r3, r4, r5, r6}
	mov r2, #0x61
	lsl r2, r2, #2
	add r1, r2, #0
	sub r1, #0xc
	ldr r3, [r0, r1]
	ldr r4, [r0, r2]
	cmp r3, #0xff
	beq _021D45BE
	sub r1, r2, #4
	ldr r6, [r0, r1]
	cmp r6, #0xff
	bne _021D45C0
_021D45BE:
	b _021D46C2
_021D45C0:
	mov r1, #0xc
	add r5, r6, #0
	mul r5, r1
	ldr r6, [r4, r5]
	cmp r6, #0
	bne _021D45EA
	mov r1, #0
	sub r2, #0x24
	str r1, [r0, r2]
	mov r2, #0xff
	add r1, r2, #0
	add r1, #0x81
	str r2, [r0, r1]
	add r1, r2, #0
	add r1, #0x79
	str r2, [r0, r1]
	add r1, r2, #0
	add r1, #0x7d
	str r2, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
_021D45EA:
	add r6, r2, #0
	sub r6, #0x28
	ldr r6, [r0, r6]
	cmp r6, #4
	blt _021D4674
	add r3, r2, #0
	sub r3, #0xc
	ldr r3, [r0, r3]
	sub r5, r3, #1
	add r3, r2, #0
	sub r3, #0xc
	str r5, [r0, r3]
	add r5, r2, #0
	mov r3, #0
	sub r5, #0x28
	str r3, [r0, r5]
	add r5, r2, #0
	sub r5, #0xc
	ldr r5, [r0, r5]
	cmp r5, #0
	bne _021D46C2
	lsl r5, r1, #5
	ldr r5, [r0, r5]
	add r6, r5, #1
	lsl r5, r1, #5
	str r6, [r0, r5]
	ldr r5, [r0, r5]
	add r6, r5, #0
	mul r6, r1
	add r5, r2, #0
	ldr r6, [r4, r6]
	sub r5, #0x2c
	str r6, [r0, r5]
	lsl r5, r1, #5
	ldr r5, [r0, r5]
	add r6, r5, #0
	mul r6, r1
	add r5, r4, r6
	ldr r6, [r5, #4]
	add r5, r2, #0
	sub r5, #0xc
	str r6, [r0, r5]
	lsl r5, r1, #5
	ldr r5, [r0, r5]
	mul r1, r5
	add r1, r4, r1
	ldr r4, [r1, #4]
	add r1, r2, #0
	sub r1, #8
	str r4, [r0, r1]
	add r1, r2, #0
	sub r1, #0x2c
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _021D46C2
	sub r2, #0x24
	str r3, [r0, r2]
	mov r2, #0xff
	add r1, r2, #0
	add r1, #0x81
	str r2, [r0, r1]
	add r1, r2, #0
	add r1, #0x79
	str r2, [r0, r1]
	add r1, r2, #0
	add r1, #0x7d
	str r2, [r0, r1]
	pop {r3, r4, r5, r6}
	bx lr
_021D4674:
	cmp r6, #0
	bne _021D4680
	sub r2, #8
	ldr r1, [r0, r2]
	cmp r3, r1
	beq _021D46C2
_021D4680:
	mov r1, #0x56
	lsl r1, r1, #2
	ldr r1, [r0, r1]
	cmp r1, #9
	bhi _021D46C2
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D4696: ; jump table
	.short _021D46C2 - _021D4696 - 2 ; case 0
	.short _021D46AA - _021D4696 - 2 ; case 1
	.short _021D46AA - _021D4696 - 2 ; case 2
	.short _021D46B8 - _021D4696 - 2 ; case 3
	.short _021D46B8 - _021D4696 - 2 ; case 4
	.short _021D46C2 - _021D4696 - 2 ; case 5
	.short _021D46C2 - _021D4696 - 2 ; case 6
	.short _021D46C2 - _021D4696 - 2 ; case 7
	.short _021D46C2 - _021D4696 - 2 ; case 8
	.short _021D46AA - _021D4696 - 2 ; case 9
_021D46AA:
	add r1, r4, r5
	ldr r2, [r0, #0x5c]
	ldr r1, [r1, #8]
	sub r1, r2, r1
	str r1, [r0, #0x5c]
	pop {r3, r4, r5, r6}
	bx lr
_021D46B8:
	add r1, r4, r5
	ldr r2, [r0, #0x54]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x54]
_021D46C2:
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end ov100_021D45A4

	thumb_func_start ov100_021D46C8
ov100_021D46C8: ; 0x021D46C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021D4784 ; =0x000001FF
	mov r1, #0x6f
	add r7, r2, #0
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r5, #0x2c]
	add r1, r7, #0
	bl sub_0200B1EC
	str r0, [sp, #0xc]
	cmp r7, #0x16
	bne _021D4726
	ldr r0, [r4, #8]
	mov r1, #0x6f
	bl sub_02025F04
	add r7, r0, #0
	mov r0, #0x6f
	bl sub_0200B358
	mov r1, #1
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	mov r1, #0
	str r0, [sp, #0x10]
	add r2, r7, #0
	add r3, r1, #0
	bl sub_0200B48C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r1, r6, #0
	bl sub_0200C388
	add r0, r7, #0
	bl sub_020237BC
	ldr r0, [sp, #0x10]
	bl sub_0200B3F0
	b _021D472E
_021D4726:
	ldr r1, [sp, #0xc]
	add r0, r6, #0
	bl sub_02023810
_021D472E:
	ldr r0, [r4, #4]
	bl sub_02027AC0
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x30
	mov r1, #0xff
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	str r4, [sp, #4]
	add r0, #0x30
	mov r1, #1
	add r2, r6, #0
	str r3, [sp, #8]
	bl sub_0201D738
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x30
	bl sub_0201A954
	add r0, r5, #0
	mov r2, #0x7d
	add r0, #0x30
	mov r1, #0
	lsl r2, r2, #2
	mov r3, #0xf
	bl sub_0200E060
	ldr r0, [sp, #0xc]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_020237BC
	str r4, [r5, #0x40]
	add r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D4784: .word 0x000001FF
	thumb_func_end ov100_021D46C8

	thumb_func_start ov100_021D4788
ov100_021D4788: ; 0x021D4788
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x30
	mov r1, #1
	bl sub_0200E084
	add r4, #0x30
	add r0, r4, #0
	bl sub_0201ACF4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4788

	thumb_func_start ov100_021D47A0
ov100_021D47A0: ; 0x021D47A0
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _021D4828 ; =0x021D546C
	add r2, sp, #0xc
	ldmia r3!, {r0, r1}
	add r4, r2, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	ldr r3, _021D482C ; =0x021D5460
	str r0, [r2, #0]
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	add r1, r4, #0
	str r0, [r2, #0]
	add r0, r4, #0
	bl sub_020BD3E4
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r0, #0
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_020AF51C
	ldr r1, _021D4830 ; =0x00007FFF
	mov r0, #0
	bl sub_020AF558
	add r0, sp, #0
	add r1, r0, #0
	bl sub_020BD3E4
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	lsl r3, r3, #0x10
	mov r0, #1
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl sub_020AF51C
	ldr r1, _021D4834 ; =0x000066F7
	mov r0, #1
	bl sub_020AF558
	ldr r0, _021D4838 ; =0x00004210
	ldr r1, _021D483C ; =0x000039CE
	mov r2, #0
	bl sub_020AF56C
	ldr r0, _021D4840 ; =0x00005294
	ldr r1, _021D4838 ; =0x00004210
	mov r2, #0
	bl sub_020AF590
	add sp, #0x18
	pop {r4, pc}
	nop
_021D4828: .word 0x021D546C
_021D482C: .word 0x021D5460
_021D4830: .word 0x00007FFF
_021D4834: .word 0x000066F7
_021D4838: .word 0x00004210
_021D483C: .word 0x000039CE
_021D4840: .word 0x00005294
	thumb_func_end ov100_021D47A0

	thumb_func_start ov100_021D4844
ov100_021D4844: ; 0x021D4844
	push {r3, r4, r5, lr}
	sub sp, #0x28
	add r4, r0, #0
	ldr r1, [r4, #0x18]
	add r0, sp, #0
	bl sub_02020A94
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r0, #8]
	ldrh r1, [r0, #2]
	strh r1, [r0, #0xa]
	ldrh r1, [r0, #4]
	strh r1, [r0, #0xc]
	ldrh r1, [r0, #6]
	strh r1, [r0, #0xe]
	ldr r1, [r4, #0x18]
	add r0, sp, #0x10
	bl sub_02020ABC
	add r5, sp, #0x10
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r3, #0]
	ldr r1, [r4, #0x18]
	add r0, r2, #0
	bl sub_02020ADC
	ldr r1, [r4, #0x18]
	add r0, sp, #8
	bl sub_020209D4
	add sp, #0x28
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4844

	thumb_func_start ov100_021D4890
ov100_021D4890: ; 0x021D4890
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #8]
	str r0, [r4, #0x24]
	ldr r1, [r4, #0xc]
	mov r0, #0xb6
	mul r0, r1
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x10]
	mov r0, #0xb6
	mul r0, r1
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x2c]
	ldr r1, [r4, #0x14]
	mov r0, #0xb6
	mul r0, r1
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #8]
	bl sub_020E1F6C
	str r0, [r4, #0x44]
	ldr r1, [r4, #0]
	add r0, sp, #0
	bl sub_02020A94
	add r2, sp, #0
	ldr r0, [r4, #0xc]
	ldrh r5, [r2]
	add r3, r0, #0
	mov r1, #0xb6
	mul r3, r1
	add r0, r4, #0
	add r3, r5, r3
	add r0, #0x4c
	strh r3, [r0]
	ldr r0, [r4, #0x10]
	ldrh r5, [r2, #2]
	add r3, r0, #0
	mul r3, r1
	add r0, r4, #0
	add r3, r5, r3
	add r0, #0x4e
	strh r3, [r0]
	ldr r0, [r4, #0x14]
	ldrh r2, [r2, #4]
	mul r1, r0
	add r4, #0x50
	add r0, r2, r1
	strh r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4890

	thumb_func_start ov100_021D4920
ov100_021D4920: ; 0x021D4920
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r1, [r5, #0]
	add r0, sp, #0
	mov r4, #0
	bl sub_02020A94
	add r1, sp, #0
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021D494E
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D494E:
	sub r0, r0, #1
	str r0, [r5, #0x24]
	bne _021D4970
	add r0, r5, #0
	add r0, #0x4c
	ldrh r0, [r0]
	mov r4, #1
	strh r0, [r1, #8]
	add r0, r5, #0
	add r0, #0x4e
	ldrh r0, [r0]
	strh r0, [r1, #0xa]
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	b _021D49A6
_021D4970:
	ldrh r2, [r1, #8]
	ldr r0, [r5, #0x28]
	add r0, r2, r0
	strh r0, [r1, #8]
	ldrh r2, [r1, #0xa]
	ldr r0, [r5, #0x2c]
	add r0, r2, r0
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xc]
	ldr r0, [r5, #0x30]
	add r0, r2, r0
	strh r0, [r1, #0xc]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x3c]
	ldr r1, [r2, #0]
	add r0, r1, r0
	str r0, [r2, #0]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x40]
	ldr r1, [r2, #4]
	add r0, r1, r0
	str r0, [r2, #4]
	ldr r2, [r5, #4]
	ldr r0, [r5, #0x44]
	ldr r1, [r2, #8]
	add r0, r1, r0
	str r0, [r2, #8]
_021D49A6:
	ldr r1, [r5, #0]
	add r0, sp, #8
	bl sub_020209D4
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D4920

	thumb_func_start ov100_021D49B4
ov100_021D49B4: ; 0x021D49B4
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x5d
	add r5, r0, #0
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _021D4A82
	add r2, r1, #0
	sub r2, #0x14
	ldr r2, [r5, r2]
	cmp r2, #0
	beq _021D4A66
	add r2, r1, #0
	sub r2, #0x10
	ldr r2, [r5, r2]
	mov r7, #0
	cmp r2, #0
	beq _021D49FA
	add r2, r1, #0
	sub r2, #0x1c
	ldr r2, [r5, r2]
	cmp r2, #0
	bne _021D49EE
	sub r1, #0x20
	ldr r1, [r5, r1]
	add r0, #0x88
	bl sub_020171CC
	b _021D4A2E
_021D49EE:
	bl ov100_021D45A4
	add r0, r5, #0
	bl ov100_021D4510
	b _021D4A2E
_021D49FA:
	sub r0, r1, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D4A20
	add r4, r5, #0
	add r6, r7, #0
	add r4, #0x88
_021D4A08:
	mov r1, #0x55
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl sub_02017204
	add r6, r6, #1
	add r7, r0, #0
	add r4, #0x14
	cmp r6, #4
	blt _021D4A08
	b _021D4A2E
_021D4A20:
	sub r1, #0x20
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x88
	bl sub_02017204
	add r7, r0, #0
_021D4A2E:
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D4A44
	sub r1, #0x14
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x9c
	bl sub_020171CC
_021D4A44:
	mov r1, #0x5b
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D4A5A
	sub r1, #0x18
	add r0, r5, #0
	ldr r1, [r5, r1]
	add r0, #0x9c
	bl sub_02017204
_021D4A5A:
	cmp r7, #1
	bne _021D4A66
	mov r0, #0x16
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D4A66:
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl sub_020B275C
	add r0, r5, #0
	bl sub_02017294
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl sub_020B275C
_021D4A82:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D49B4

	thumb_func_start ov100_021D4A84
ov100_021D4A84: ; 0x021D4A84
	ldr r3, _021D4A8C ; =sub_02017110
	add r0, #0x78
	bx r3
	nop
_021D4A8C: .word sub_02017110
	thumb_func_end ov100_021D4A84

	thumb_func_start ov100_021D4A90
ov100_021D4A90: ; 0x021D4A90
	mov r3, #0x14
	add r1, #0x88
	mul r3, r0
	add r0, r1, r3
	ldr r3, _021D4AA0 ; =sub_020171A0
	add r1, r2, #0
	bx r3
	nop
_021D4AA0: .word sub_020171A0
	thumb_func_end ov100_021D4A90

	thumb_func_start ov100_021D4AA4
ov100_021D4AA4: ; 0x021D4AA4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	add r5, r2, #0
	bl ov100_021D4A84
	mov r4, #0
	cmp r5, #0
	ble _021D4AC6
_021D4AB6:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r7, #0
	bl ov100_021D4A90
	add r4, r4, #1
	cmp r4, r5
	blt _021D4AB6
_021D4AC6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4AA4

	thumb_func_start ov100_021D4AC8
ov100_021D4AC8: ; 0x021D4AC8
	push {r4, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r1, r2, #0
	add r2, r3, #0
	add r0, #0x78
	mov r3, #0x6f
	bl sub_020170D8
	add r1, r4, #0
	add r0, r4, #0
	add r1, #0x78
	bl sub_02017258
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x5d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov100_021D4AC8

	thumb_func_start ov100_021D4B10
ov100_021D4B10: ; 0x021D4B10
	push {r4, lr}
	add r2, r0, #0
	add r4, r1, #0
	add r2, #0x78
	add r0, r4, #0
	add r1, r2, #0
	bl sub_02017258
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r4, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0x5d
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov100_021D4B10

	thumb_func_start ov100_021D4B4C
ov100_021D4B4C: ; 0x021D4B4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	mov r0, #0x6f
	add r4, r5, #0
	mov r1, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r7, r2, #0
	mul r6, r1
	add r1, r5, #0
	add r2, r3, #0
	add r4, #0x88
	str r0, [sp, #4]
	add r0, r4, r6
	add r1, #0x78
	add r3, r7, #0
	bl sub_02017164
	add r0, r4, r6
	mov r1, #0
	bl sub_02017240
	add r0, r5, #0
	add r1, r4, r6
	bl sub_0201727C
	mov r1, #1
	mov r0, #0x55
	lsl r1, r1, #0xc
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0xff
	add r0, r1, #0
	add r0, #0x81
	str r1, [r5, r0]
	add r0, r1, #0
	add r0, #0x79
	str r1, [r5, r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov100_021D4B4C

	thumb_func_start ov100_021D4BA0
ov100_021D4BA0: ; 0x021D4BA0
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r2, #0
	add r4, r0, #0
	mov r0, #0x6f
	add r5, r6, #0
	mov r2, #0x14
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	mul r4, r2
	add r5, #0x88
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	add r0, r5, r4
	add r1, #0x78
	bl sub_02017164
	add r0, r5, r4
	mov r1, #0
	bl sub_02017240
	add r0, r6, #0
	add r1, r5, r4
	bl sub_0201727C
	mov r1, #1
	mov r0, #0x55
	lsl r1, r1, #0xc
	lsl r0, r0, #2
	str r1, [r6, r0]
	mov r1, #0xff
	add r0, r1, #0
	add r0, #0x81
	str r1, [r6, r0]
	add r0, r1, #0
	add r0, #0x79
	str r1, [r6, r0]
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4BA0

	thumb_func_start ov100_021D4BF0
ov100_021D4BF0: ; 0x021D4BF0
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D4C2A
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0x1f
	bhs _021D4C18
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0xc1
	strb r1, [r0]
	b _021D4C54
_021D4C18:
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0xc0
	strb r1, [r0]
	b _021D4C54
_021D4C2A:
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D4C44
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0xc1
	strb r1, [r0]
	b _021D4C54
_021D4C44:
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0xc0
	strb r1, [r0]
_021D4C54:
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	mov r1, #1
	mov r2, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021D4C90 ; =0x0000CCCC
	mov r3, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	bl sub_020039B0
	add r0, r4, #0
	add r0, #0xc1
	ldrb r0, [r0]
	mov r1, #1
	mov r2, #4
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, _021D4C90 ; =0x0000CCCC
	mov r3, #6
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	bl sub_020039B0
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D4C90: .word 0x0000CCCC
	thumb_func_end ov100_021D4BF0

	thumb_func_start ov100_021D4C94
ov100_021D4C94: ; 0x021D4C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	ldr r3, _021D4DBC ; =0x021D5448
	add r5, r0, #0
	ldrb r0, [r3]
	add r2, sp, #8
	add r4, r1, #0
	strb r0, [r2, #6]
	ldrb r0, [r3, #1]
	ldr r6, _021D4DC0 ; =0x021D5478
	add r7, sp, #0x20
	strb r0, [r2, #7]
	ldrb r0, [r3, #2]
	cmp r4, #3
	strb r0, [r2, #8]
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r7!, {r0, r1}
	ldrb r0, [r3, #3]
	strb r0, [r2]
	ldrb r0, [r3, #4]
	strb r0, [r2, #1]
	ldrb r0, [r3, #5]
	strb r0, [r2, #2]
	ldrb r0, [r3, #6]
	strb r0, [r2, #3]
	ldrb r0, [r3, #7]
	strb r0, [r2, #4]
	ldrb r0, [r3, #8]
	ldr r3, _021D4DC4 ; =0x021D5454
	strb r0, [r2, #5]
	ldmia r3!, {r0, r1}
	add r2, sp, #0x14
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	blo _021D4CE6
	mov r4, #2
_021D4CE6:
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	cmp r0, #2
	bne _021D4D1E
	add r0, r5, #0
	add r0, #0xc2
	ldrb r1, [r0]
	add r0, r4, #1
	lsl r0, r0, #1
	cmp r1, r0
	bge _021D4D0E
	add r0, r5, #0
	add r0, #0xc2
	ldrb r0, [r0]
	add r5, #0xc2
	add sp, #0x38
	add r0, r0, #1
	strb r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D0E:
	add r0, r5, #0
	mov r1, #0
	add r0, #0xc0
	strb r1, [r0]
	add r5, #0xc2
	add sp, #0x38
	strb r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_021D4D1E:
	cmp r0, #0
	bne _021D4D52
	add r0, r5, #0
	add r0, #0xc1
	ldrb r2, [r0]
	lsl r1, r4, #3
	add r0, sp, #0x24
	ldr r0, [r0, r1]
	cmp r2, r0
	bge _021D4D42
	add r0, r5, #0
	add r0, #0xc1
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc1
	strb r1, [r0]
	b _021D4D80
_021D4D42:
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc0
	strb r1, [r0]
	b _021D4D80
_021D4D52:
	add r0, r5, #0
	add r0, #0xc1
	ldrb r2, [r0]
	lsl r1, r4, #3
	add r0, sp, #0x20
	ldr r0, [r0, r1]
	cmp r2, r0
	ble _021D4D72
	add r0, r5, #0
	add r0, #0xc1
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0xc1
	strb r1, [r0]
	b _021D4D80
_021D4D72:
	add r0, r5, #0
	add r0, #0xc0
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0xc0
	strb r1, [r0]
_021D4D80:
	add r0, r5, #0
	add r1, sp, #0xc
	add r0, #0xc1
	add r1, #2
	ldrb r0, [r0]
	ldrb r1, [r1, r4]
	lsl r6, r4, #1
	bl sub_020E1F6C
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r3, sp, #8
	lsl r1, r4, #2
	add r0, sp, #0x14
	ldr r0, [r0, r1]
	add r2, sp, #8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	add r3, #1
	ldrb r2, [r2, r6]
	ldrb r3, [r3, r6]
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_020039B0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4DBC: .word 0x021D5448
_021D4DC0: .word 0x021D5478
_021D4DC4: .word 0x021D5454
	thumb_func_end ov100_021D4C94

	thumb_func_start ov100_021D4DC8
ov100_021D4DC8: ; 0x021D4DC8
	ldr r1, _021D4DD0 ; =0x021BF6DC
	ldr r3, _021D4DD4 ; =sub_0201FFE8
	strb r0, [r1, #5]
	bx r3
	; .align 2, 0
_021D4DD0: .word 0x021BF6DC
_021D4DD4: .word sub_0201FFE8
	thumb_func_end ov100_021D4DC8

	thumb_func_start ov100_021D4DD8
ov100_021D4DD8: ; 0x021D4DD8
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x5f
	strb r1, [r0]
	mov r2, #0x5f
	ldrsb r2, [r4, r2]
	ldr r0, _021D4DFC ; =0x04000050
	mov r1, #0x31
	bl sub_020BF578
	mov r2, #0x5f
	ldrsb r2, [r4, r2]
	ldr r0, _021D4E00 ; =0x04001050
	mov r1, #0x33
	bl sub_020BF578
	pop {r4, pc}
	nop
_021D4DFC: .word 0x04000050
_021D4E00: .word 0x04001050
	thumb_func_end ov100_021D4DD8

	thumb_func_start ov100_021D4E04
ov100_021D4E04: ; 0x021D4E04
	ldr r3, _021D4E10 ; =sub_0200DA04
	mov r2, #1
	add r1, r0, #0
	ldr r0, _021D4E14 ; =ov100_021D4E18
	lsl r2, r2, #0xa
	bx r3
	; .align 2, 0
_021D4E10: .word sub_0200DA04
_021D4E14: .word ov100_021D4E18
	thumb_func_end ov100_021D4E04

	thumb_func_start ov100_021D4E18
ov100_021D4E18: ; 0x021D4E18
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #8]
	cmp r0, #2
	blo _021D4E2C
	ldr r0, [r4, #0]
	bl sub_02013DA4
	mov r0, #0
	str r0, [r4, #8]
_021D4E2C:
	ldr r0, [r4, #0]
	bl sub_02013DDC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4E18

	thumb_func_start ov100_021D4E3C
ov100_021D4E3C: ; 0x021D4E3C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	bl sub_02013BE0
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #8]
	add r0, r4, #0
	bl ov100_021D4E04
	str r0, [r4, #4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov100_021D4E3C

	thumb_func_start ov100_021D4E58
ov100_021D4E58: ; 0x021D4E58
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0200DA58
	ldr r0, [r4, #0]
	bl sub_02013D38
	ldr r0, [r4, #0]
	bl sub_02013D74
	pop {r4, pc}
	thumb_func_end ov100_021D4E58

	thumb_func_start ov100_021D4E70
ov100_021D4E70: ; 0x021D4E70
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x34]
	add r5, sp, #0x10
	cmp r4, #0
	bne _021D4E9C
	ldr r4, [sp, #0x20]
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02013C10
	add sp, #0x14
	pop {r4, r5, pc}
_021D4E9C:
	ldr r4, [sp, #0x20]
	str r4, [sp]
	mov r4, #0x14
	ldrsh r4, [r5, r4]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	ldr r4, [sp, #0x30]
	str r4, [sp, #0x10]
	ldr r0, [r0, #0]
	bl sub_02013CA4
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov100_021D4E70

	thumb_func_start ov100_021D4EBC
ov100_021D4EBC: ; 0x021D4EBC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021D4F04 ; =ov100_021D4F9C
	ldr r3, [r5, #0x28]
	mov r1, #0x38
	mov r2, #5
	bl sub_0200679C
	add r6, r0, #0
	bl sub_0201CED0
	add r4, r0, #0
	add r2, r4, #4
	mov r3, #5
_021D4ED8:
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r3, r3, #1
	bne _021D4ED8
	ldr r0, [r5, #0]
	str r0, [r2, #0]
	str r6, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x30]
	bl sub_020BF00C
	str r0, [r4, #0]
	add r0, r4, #4
	bl ov100_021D503C
	ldr r0, _021D4F08 ; =ov100_021D4FDC
	add r1, r4, #0
	mov r2, #0
	bl sub_0200DA3C
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D4F04: .word ov100_021D4F9C
_021D4F08: .word ov100_021D4FDC
	thumb_func_end ov100_021D4EBC

	thumb_func_start ov100_021D4F0C
ov100_021D4F0C: ; 0x021D4F0C
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r2, r3, #0
	bl sub_020BDE40
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	bl sub_020BEA30
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	cmp r0, #0xa
	bgt _021D4F3C
	bge _021D4F60
	cmp r0, #6
	bgt _021D4F7C
	cmp r0, #2
	blt _021D4F7C
	beq _021D4F42
	cmp r0, #6
	beq _021D4F52
	b _021D4F7C
_021D4F3C:
	cmp r0, #0xe
	beq _021D4F6E
	b _021D4F7C
_021D4F42:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D4F82
_021D4F52:
	mov r2, #2
	ldr r1, _021D4F90 ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D4F82
_021D4F60:
	mov r2, #2
	ldr r1, _021D4F94 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D4F82
_021D4F6E:
	mov r2, #2
	ldr r1, _021D4F98 ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D4F82
_021D4F7C:
	mov r0, #0
	bl sub_020BEA30
_021D4F82:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x34]
	bl sub_020067D0
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_021D4F90: .word 0x06820000
_021D4F94: .word 0x06840000
_021D4F98: .word 0x06860000
	thumb_func_end ov100_021D4F0C

	thumb_func_start ov100_021D4F9C
ov100_021D4F9C: ; 0x021D4F9C
	push {r4, r5, r6, r7}
	ldr r0, [r1, #0x30]
	cmp r0, #0
	beq _021D4FD4
	ldr r6, [r1, #0x20]
	ldr r5, [r1, #0x10]
	ldr r4, [r1, #0x1c]
	ldr r3, [r1, #0x18]
	ldr r2, [r1, #0x14]
	ldr r0, [r1, #0x24]
	ldr r1, [r1, #0x28]
	lsl r5, r5, #0x14
	lsl r7, r1, #8
	lsl r1, r3, #0x18
	lsl r3, r2, #0x1d
	mov r2, #2
	lsl r2, r2, #0x1e
	orr r3, r2
	lsl r2, r4, #0x19
	orr r2, r3
	orr r1, r2
	lsl r6, r6, #0x10
	orr r1, r5
	orr r1, r6
	orr r1, r7
	orr r1, r0
	ldr r0, _021D4FD8 ; =0x04000064
	str r1, [r0, #0]
_021D4FD4:
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
_021D4FD8: .word 0x04000064
	thumb_func_end ov100_021D4F9C

	thumb_func_start ov100_021D4FDC
ov100_021D4FDC: ; 0x021D4FDC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0xa
	bgt _021D4FFA
	bge _021D5010
	cmp r0, #6
	bgt _021D5020
	cmp r0, #2
	blt _021D5020
	beq _021D5000
	cmp r0, #6
	beq _021D5008
	b _021D5020
_021D4FFA:
	cmp r0, #0xe
	beq _021D5018
	b _021D5020
_021D5000:
	mov r0, #1
	bl sub_020BEA30
	b _021D5026
_021D5008:
	mov r0, #2
	bl sub_020BEA30
	b _021D5026
_021D5010:
	mov r0, #4
	bl sub_020BEA30
	b _021D5026
_021D5018:
	mov r0, #8
	bl sub_020BEA30
	b _021D5026
_021D5020:
	mov r0, #0
	bl sub_020BEA30
_021D5026:
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	bl sub_020BDE40
	mov r0, #1
	str r0, [r4, #0x30]
	add r0, r5, #0
	bl sub_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov100_021D4FDC

	thumb_func_start ov100_021D503C
ov100_021D503C: ; 0x021D503C
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0xa
	bgt _021D5058
	bge _021D507C
	cmp r0, #6
	bgt _021D5096
	cmp r0, #2
	blt _021D5096
	beq _021D505E
	cmp r0, #6
	beq _021D506E
	b _021D5096
_021D5058:
	cmp r0, #0xe
	beq _021D508A
	b _021D5096
_021D505E:
	mov r1, #0x1a
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D5096
_021D506E:
	mov r2, #2
	ldr r1, _021D50C4 ; =0x06820000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D5096
_021D507C:
	mov r2, #2
	ldr r1, _021D50C8 ; =0x06840000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
	b _021D5096
_021D508A:
	mov r2, #2
	ldr r1, _021D50CC ; =0x06860000
	mov r0, #0
	lsl r2, r2, #0x10
	bl sub_020C4BB8
_021D5096:
	ldr r5, [r4, #0x10]
	ldr r1, [r4, #0x1c]
	ldr r3, [r4, #0x18]
	ldr r6, [r4, #0x14]
	ldr r0, [r4, #0xc]
	mov r4, #2
	lsl r2, r1, #0x10
	lsl r1, r0, #0x14
	lsl r5, r5, #0x1d
	lsl r4, r4, #0x1e
	orr r4, r5
	lsl r3, r3, #0x19
	lsl r0, r6, #0x18
	orr r3, r4
	orr r0, r3
	orr r0, r1
	add r1, r2, #0
	orr r1, r0
	mov r0, #0x10
	orr r1, r0
	ldr r0, _021D50D0 ; =0x04000064
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D50C4: .word 0x06820000
_021D50C8: .word 0x06840000
_021D50CC: .word 0x06860000
_021D50D0: .word 0x04000064
	thumb_func_end ov100_021D503C
	; 0x021D50D4

	.incbin "incbin/overlay100.bin"
