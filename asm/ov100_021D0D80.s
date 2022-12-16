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

	.rodata


	.global Unk_ov100_021D50D4
Unk_ov100_021D50D4: ; 0x021D50D4
	.incbin "incbin/overlay100_rodata.bin", 0x0, 0x10 - 0x0

	.global Unk_ov100_021D50E4
Unk_ov100_021D50E4: ; 0x021D50E4
	.incbin "incbin/overlay100_rodata.bin", 0x10, 0x24 - 0x10

	.global Unk_ov100_021D50F8
Unk_ov100_021D50F8: ; 0x021D50F8
	.incbin "incbin/overlay100_rodata.bin", 0x24, 0x3C - 0x24

	.global Unk_ov100_021D5110
Unk_ov100_021D5110: ; 0x021D5110
	.incbin "incbin/overlay100_rodata.bin", 0x3C, 0x5C - 0x3C

	.global Unk_ov100_021D5130
Unk_ov100_021D5130: ; 0x021D5130
	.incbin "incbin/overlay100_rodata.bin", 0x5C, 0x80 - 0x5C

	.global Unk_ov100_021D5154
Unk_ov100_021D5154: ; 0x021D5154
	.incbin "incbin/overlay100_rodata.bin", 0x80, 0xA8 - 0x80

	.global Unk_ov100_021D517C
Unk_ov100_021D517C: ; 0x021D517C
	.incbin "incbin/overlay100_rodata.bin", 0xA8, 0xE0 - 0xA8

	.global Unk_ov100_021D51B4
Unk_ov100_021D51B4: ; 0x021D51B4
	.incbin "incbin/overlay100_rodata.bin", 0xE0, 0x70

