	.include "macros/function.inc"
	.include "overlay094/ov94_02244950.inc"

	

	.text


	thumb_func_start ov94_02244950
ov94_02244950: ; 0x02244950
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl ov94_02244F2C
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
	ldr r0, [r4, #4]
	bl ov94_02244A7C
	add r0, r4, #0
	bl ov94_02244B8C
	add r0, r4, #0
	bl ov94_02244E48
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
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x20]
	bl sub_02038438
	add r0, r4, #0
	bl ov94_02245934
	bl ov4_021D7A8C
	cmp r0, #0
	bne _022449EA
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x40]
	cmp r0, #0
	beq _022449E4
	ldr r0, _022449F4 ; =0x00000F0F
	ldr r1, _022449F8 ; =0x00000B9C
	str r0, [sp]
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #2
	bl ov94_0223C3F4
	add r0, r4, #0
	bl ov94_0223C5D8
	b _022449EE
_022449E4:
	mov r0, #0
	str r0, [r4, #0x2c]
	b _022449EE
_022449EA:
	mov r0, #0x11
	str r0, [r4, #0x2c]
_022449EE:
	mov r0, #2
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_022449F4: .word 0x00000F0F
_022449F8: .word 0x00000B9C
	thumb_func_end ov94_02244950

	thumb_func_start ov94_022449FC
ov94_022449FC: ; 0x022449FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov94_0223C4B4
	bl sub_020397B0
	ldr r4, [r5, #0x2c]
	ldr r1, _02244A28 ; =0x02246A40
	lsl r2, r4, #2
	ldr r1, [r1, r2]
	add r0, r5, #0
	blx r1
	ldr r1, [r5, #0x2c]
	cmp r4, r1
	beq _02244A26
	mov r1, #0x52
	mov r2, #0
	lsl r1, r1, #6
	strh r2, [r5, r1]
	add r1, r1, #2
	strh r2, [r5, r1]
_02244A26:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02244A28: .word 0x02246A40
	thumb_func_end ov94_022449FC

	thumb_func_start ov94_02244A2C
ov94_02244A2C: ; 0x02244A2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244A74 ; =0x00001154
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244A46
	bl sub_0200DA58
	ldr r0, _02244A74 ; =0x00001154
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
_02244A46:
	add r0, r4, #0
	bl ov94_02244F64
	add r0, r4, #0
	bl ov94_02244F00
	ldr r0, [r4, #4]
	bl ov94_02244B68
	ldr r0, _02244A78 ; =0x00001158
	mov r1, #0
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov94_0223C4C8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02244A6E
	mov r0, #5
	pop {r4, pc}
_02244A6E:
	mov r0, #1
	pop {r4, pc}
	nop
_02244A74: .word 0x00001154
_02244A78: .word 0x00001158
	thumb_func_end ov94_02244A2C

	thumb_func_start ov94_02244A7C
ov94_02244A7C: ; 0x02244A7C
	push {r3, r4, r5, lr}
	sub sp, #0x70
	ldr r5, _02244B58 ; =0x022463B4
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x54
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
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	add r0, r4, #0
	mov r1, #0
	bl sub_02019EBC
	ldr r5, _02244B5C ; =0x02246398
	add r3, sp, #0x38
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
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r5, _02244B60 ; =0x022463D0
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
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	add r0, r4, #0
	mov r1, #4
	bl sub_02019EBC
	ldr r5, _02244B64 ; =0x0224637C
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #5
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
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
	mov r1, #0
	bl sub_0201FF74
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_02244B58: .word 0x022463B4
_02244B5C: .word 0x02246398
_02244B60: .word 0x022463D0
_02244B64: .word 0x0224637C
	thumb_func_end ov94_02244A7C

	thumb_func_start ov94_02244B68
ov94_02244B68: ; 0x02244B68
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
	thumb_func_end ov94_02244B68

	thumb_func_start ov94_02244B8C
ov94_02244B8C: ; 0x02244B8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x10]
	ldr r4, [r0, #4]
	mov r0, #0x5c
	mov r1, #0x3e
	bl sub_02006C24
	mov r2, #0
	str r2, [sp]
	mov r1, #0x3e
	str r1, [sp, #4]
	mov r1, #3
	add r3, r2, #0
	str r0, [sp, #0x2c]
	bl sub_02007130
	mov r3, #0
	str r3, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	mov r1, #3
	mov r2, #4
	bl sub_02007130
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x3e
	bl sub_02002E98
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x3e
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x3e
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
	mov r0, #0x3e
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
	mov r0, #0x3e
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
	mov r0, #0x3e
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
	mov r2, #0xcb
	ldr r1, _02244DA0 ; =0x00001154
	ldr r0, [sp, #0x10]
	lsl r2, r2, #2
	add r0, r0, r1
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x2c]
	mov r1, #4
	add r2, sp, #0x38
	mov r3, #0x3e
	bl sub_020071EC
	add r4, r0, #0
	ldr r0, [sp, #0x38]
	ldr r2, _02244DA4 ; =0x0000115C
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl MIi_CpuCopy16
	ldr r0, [sp, #0x38]
	ldr r2, _02244DA8 ; =0x000011DC
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	add r1, r1, r2
	mov r2, #0x80
	bl MIi_CpuCopy16
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, _02244DA8 ; =0x000011DC
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	sub r1, #0x80
	add r0, r0, r1
	str r0, [sp, #0x14]
_02244CDC:
	mov r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	lsl r1, r0, #5
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	str r0, [sp, #0x30]
_02244CEE:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _02244CF8
	bl GF_AssertFail
_02244CF8:
	ldr r0, [sp, #0x30]
	mov r7, #1
	add r4, r0, #2
	ldr r0, [sp, #0x18]
	add r6, r0, #2
	ldr r0, [sp, #0x14]
	add r5, r0, #2
	ldr r0, [sp, #0x20]
	asr r0, r0, #8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x34]
_02244D10:
	ldr r0, _02244DA4 ; =0x0000115C
	ldr r3, [sp, #0x34]
	ldrh r0, [r4, r0]
	add r1, r6, #0
	mov r2, #1
	str r0, [sp]
	add r0, r5, #0
	bl sub_0200393C
	add r7, r7, #1
	add r4, r4, #2
	add r6, r6, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _02244D10
	ldr r0, [sp, #0x18]
	add r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _02244D5A
	mov r0, #3
	ldr r1, [sp, #0x20]
	lsl r0, r0, #8
	add r1, r1, r0
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _02244CEE
	str r0, [sp, #0x20]
	mov r0, #1
	str r0, [sp, #0x1c]
	b _02244CEE
_02244D5A:
	ldr r0, [sp, #0x14]
	add r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _02244CDC
	ldr r1, _02244DA8 ; =0x000011DC
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	mov r1, #0x2a
	lsl r1, r1, #4
	bl DC_FlushRange
	ldr r1, _02244DAC ; =0x00001158
	ldr r0, [sp, #0x10]
	mov r2, #1
	str r2, [r0, r1]
	sub r2, r1, #4
	ldr r1, [sp, #0x10]
	ldr r0, _02244DB0 ; =ov94_02244DB4
	add r1, r1, r2
	mov r2, #0x14
	bl sub_0200DA04
	ldr r2, _02244DA0 ; =0x00001154
	ldr r1, [sp, #0x10]
	str r0, [r1, r2]
	ldr r0, [sp, #0x2c]
	bl sub_02006CA8
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_02244DA0: .word 0x00001154
_02244DA4: .word 0x0000115C
_02244DA8: .word 0x000011DC
_02244DAC: .word 0x00001158
_02244DB0: .word ov94_02244DB4
	thumb_func_end ov94_02244B8C

	thumb_func_start ov94_02244DB4
ov94_02244DB4: ; 0x02244DB4
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02244E3C
	ldr r0, _02244E40 ; =0x0000032B
	mov r1, #1
	ldrb r2, [r4, r0]
	eor r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _02244E3C
	sub r0, r0, #3
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GX_LoadBGPltt
	mov r0, #0xca
	lsl r0, r0, #2
	ldrsh r0, [r4, r0]
	add r1, r4, #0
	add r1, #0x88
	lsl r0, r0, #5
	add r0, r1, r0
	mov r1, #0
	mov r2, #0x20
	bl GXS_LoadBGPltt
	ldr r0, _02244E44 ; =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _02244E20
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	add r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _02244E3C
	mov r2, #0x13
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_02244E20:
	sub r1, r0, #2
	ldrsh r1, [r4, r1]
	sub r2, r1, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _02244E3C
	mov r2, #1
	sub r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eor r1, r2
	strb r1, [r4, r0]
_02244E3C:
	pop {r4, pc}
	nop
_02244E40: .word 0x0000032B
_02244E44: .word 0x0000032A
	thumb_func_end ov94_02244DB4

	thumb_func_start ov94_02244E48
ov94_02244E48: ; 0x02244E48
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
	ldr r1, _02244EEC ; =0x00000F2C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	bl sub_0201A7E8
	ldr r0, _02244EEC ; =0x00000F2C
	mov r1, #0
	add r0, r4, r0
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
	ldr r1, _02244EF0 ; =0x00000F1C
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #4
	bl sub_0201A7E8
	ldr r0, _02244EF0 ; =0x00000F1C
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	mov r3, #1
	ldr r0, _02244EF4 ; =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	ldr r1, _02244EF8 ; =0x00000BB4
	ldr r0, _02244EF0 ; =0x00000F1C
	ldr r1, [r4, r1]
	add r0, r4, r0
	mov r2, #0
	bl ov94_022458CC
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	ldr r1, _02244EFC ; =0x00000EFC
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	ldr r0, _02244EFC ; =0x00000EFC
	mov r1, #0
	add r0, r4, r0
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_02244EEC: .word 0x00000F2C
_02244EF0: .word 0x00000F1C
_02244EF4: .word 0x000F0E00
_02244EF8: .word 0x00000BB4
_02244EFC: .word 0x00000EFC
	thumb_func_end ov94_02244E48

	thumb_func_start ov94_02244F00
ov94_02244F00: ; 0x02244F00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244F20 ; =0x00000EFC
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02244F24 ; =0x00000F1C
	add r0, r4, r0
	bl sub_0201A8FC
	ldr r0, _02244F28 ; =0x00000F2C
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	nop
_02244F20: .word 0x00000EFC
_02244F24: .word 0x00000F1C
_02244F28: .word 0x00000F2C
	thumb_func_end ov94_02244F00

	thumb_func_start ov94_02244F2C
ov94_02244F2C: ; 0x02244F2C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xb4
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbb
	lsl r1, r1, #4
	str r0, [r4, r1]
	mov r0, #1
	lsl r0, r0, #8
	mov r1, #0x3e
	bl sub_02023790
	mov r1, #0xbe
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r1, #0x4c
	ldr r0, [r4, r1]
	mov r1, #0x1f
	bl sub_0200B1EC
	ldr r1, _02244F60 ; =0x00000BB4
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_02244F60: .word 0x00000BB4
	thumb_func_end ov94_02244F2C

	thumb_func_start ov94_02244F64
ov94_02244F64: ; 0x02244F64
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02244F88 ; =0x00000BB4
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbe
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	mov r0, #0xbb
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020237BC
	pop {r4, pc}
	nop
_02244F88: .word 0x00000BB4
	thumb_func_end ov94_02244F64

	thumb_func_start ov94_02244F8C
ov94_02244F8C: ; 0x02244F8C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02244FBC ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x11
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #1
	bl ov94_0223C3F4
	ldr r0, _02244FC0 ; =0x000010AE
	mov r1, #1
	strh r1, [r4, r0]
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02244FBC: .word 0x00000F0F
_02244FC0: .word 0x000010AE
	thumb_func_end ov94_02244F8C

	thumb_func_start ov94_02244FC4
ov94_02244FC4: ; 0x02244FC4
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _02245020 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02245018
	sub r1, r1, #1
	cmp r0, r1
	bne _02244FF6
	bl sub_0203848C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _02245018
_02244FF6:
	ldr r0, _02245024 ; =0x00000F0F
	ldr r1, _02245028 ; =0x00000B9C
	str r0, [sp]
	mov r2, #1
	ldr r1, [r4, r1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #2
	bl ov94_0223C3F4
	add r0, r4, #0
	bl ov94_0223C5D8
_02245018:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02245020: .word 0x00001070
_02245024: .word 0x00000F0F
_02245028: .word 0x00000B9C
	thumb_func_end ov94_02244FC4

	thumb_func_start ov94_0224502C
ov94_0224502C: ; 0x0224502C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02245054 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	ldr r1, _02245058 ; =0x00000B94
	mov r2, #7
	ldr r1, [r4, r1]
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xd
	mov r2, #0x10
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_02245054: .word 0x00000F0F
_02245058: .word 0x00000B94
	thumb_func_end ov94_0224502C

	thumb_func_start ov94_0224505C
ov94_0224505C: ; 0x0224505C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022450BC ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _022450B8
	sub r1, r1, #1
	cmp r0, r1
	bne _0224509A
	bl ov4_021D7A8C
	cmp r0, #0
	bne _02245086
	mov r0, #0
	str r0, [r4, #0x2c]
	b _022450B8
_02245086:
	add r0, r4, #0
	mov r1, #7
	mov r2, #0xb
	bl ov94_0223C4C0
	mov r0, #1
	str r0, [r4, #0x1c]
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _022450B8
_0224509A:
	bl ov4_021D7A8C
	cmp r0, #0
	beq _022450A6
	bl ov4_021D7DB0
_022450A6:
	bl sub_0203848C
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
_022450B8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022450BC: .word 0x00001070
	thumb_func_end ov94_0224505C

	thumb_func_start ov94_022450C0
ov94_022450C0: ; 0x022450C0
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022450E8 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x1a
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x12
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022450E8: .word 0x00000F0F
	thumb_func_end ov94_022450C0

	thumb_func_start ov94_022450EC
ov94_022450EC: ; 0x022450EC
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203848C
	bl ov4_021D7DB0
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0x13
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_022450EC

	thumb_func_start ov94_0224510C
ov94_0224510C: ; 0x0224510C
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02245134 ; =0x00000F0F
	add r4, r0, #0
	str r1, [sp]
	mov r1, #0xba
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #0x1b
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0x14
	mov r2, #0xb
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_02245134: .word 0x00000F0F
	thumb_func_end ov94_0224510C

	thumb_func_start ov94_02245138
ov94_02245138: ; 0x02245138
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x54
	mov r1, #2
	mov r2, #1
	mov r3, #0x14
	bl ov4_021D78C8
	mov r0, #2
	bl ov4_021D792C
	bl ov4_021D797C
	mov r0, #3
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ov94_02245138

	thumb_func_start ov94_02245158
ov94_02245158: ; 0x02245158
	push {r4, lr}
	sub sp, #0x48
	add r4, r0, #0
	bl ov4_021D7AE4
	bl ov4_021D7A8C
	cmp r0, #0
	beq _022451D6
	bl ov4_021D7BFC
	cmp r0, #8
	bhi _022451B6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224517E: ; jump table
	.short _022451B6 - _0224517E - 2 ; case 0
	.short _022451B6 - _0224517E - 2 ; case 1
	.short _022451B6 - _0224517E - 2 ; case 2
	.short _022451B6 - _0224517E - 2 ; case 3
	.short _022451CC - _0224517E - 2 ; case 4
	.short _022451B6 - _0224517E - 2 ; case 5
	.short _022451B6 - _0224517E - 2 ; case 6
	.short _02245190 - _0224517E - 2 ; case 7
	.short _022451B6 - _0224517E - 2 ; case 8
_02245190:
	add r0, sp, #8
	add r1, sp, #4
	bl DWC_GetLastErrorEx
	str r0, [r4, #0x40]
	ldr r0, [sp, #8]
	str r0, [r4, #0x44]
	ldr r0, [sp, #4]
	str r0, [r4, #0x48]
	bl DWC_ClearError
	bl ov4_021D7DB0
	add r0, r4, #0
	bl ov94_0223C5F4
	mov r0, #0x17
	str r0, [r4, #0x2c]
	b _022451D6
_022451B6:
	add r0, sp, #0
	bl ov4_021D75D4
	add r0, r4, #0
	bl ov94_0223C5F4
	mov r0, #0x15
	str r0, [r4, #0x2c]
	sub r0, #0x17
	str r0, [r4, #0x3c]
	b _022451D6
_022451CC:
	add r0, sp, #0xc
	bl ov4_021D7EB8
	mov r0, #4
	str r0, [r4, #0x2c]
_022451D6:
	mov r0, #3
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov94_02245158

	thumb_func_start ov94_022451DC
ov94_022451DC: ; 0x022451DC
	push {r4, lr}
	add r4, r0, #0
	bl ov4_021D81DC
	mov r0, #5
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov94_022451DC

	thumb_func_start ov94_022451EC
ov94_022451EC: ; 0x022451EC
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl ov4_021D82A0
	cmp r0, #5
	bhi _0224528C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02245206: ; jump table
	.short _02245218 - _02245206 - 2 ; case 0
	.short _0224528C - _02245206 - 2 ; case 1
	.short _0224528C - _02245206 - 2 ; case 2
	.short _02245212 - _02245206 - 2 ; case 3
	.short _02245218 - _02245206 - 2 ; case 4
	.short _02245218 - _02245206 - 2 ; case 5
_02245212:
	mov r0, #6
	str r0, [r4, #0x2c]
	b _0224528C
_02245218:
	add r0, r4, #0
	bl ov94_0223C5F4
	add r0, sp, #4
	add r1, sp, #0
	bl DWC_GetLastErrorEx
	str r0, [r4, #0x40]
	ldr r0, [sp, #4]
	str r0, [r4, #0x44]
	bl DWC_ClearError
	bl ov4_021D7DB0
	mov r0, #0x17
	str r0, [r4, #0x2c]
	ldr r1, [sp]
	cmp r1, #7
	bhi _0224527A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0224524A: ; jump table
	.short _0224527A - _0224524A - 2 ; case 0
	.short _0224525A - _0224524A - 2 ; case 1
	.short _0224525A - _0224524A - 2 ; case 2
	.short _0224526C - _0224524A - 2 ; case 3
	.short _0224525E - _0224524A - 2 ; case 4
	.short _02245276 - _0224524A - 2 ; case 5
	.short _02245268 - _0224524A - 2 ; case 6
	.short _02245276 - _0224524A - 2 ; case 7
_0224525A:
	str r0, [r4, #0x2c]
	b _0224527A
_0224525E:
	bl ov4_021E55B0
	mov r0, #0x17
	str r0, [r4, #0x2c]
	b _0224527A
_02245268:
	str r0, [r4, #0x2c]
	b _0224527A
_0224526C:
	bl ov4_021D8E8C
	mov r0, #0x17
	str r0, [r4, #0x2c]
	b _0224527A
_02245276:
	bl sub_02038A0C
_0224527A:
	ldr r1, [sp, #4]
	ldr r0, _02245294 ; =0xFFFFB1E0
	cmp r1, r0
	bge _0224528C
	ldr r0, _02245298 ; =0xFFFF8AD1
	cmp r1, r0
	blt _0224528C
	mov r0, #0x17
	str r0, [r4, #0x2c]
_0224528C:
	mov r0, #3
	add sp, #8
	pop {r4, pc}
	nop
_02245294: .word 0xFFFFB1E0
_02245298: .word 0xFFFF8AD1
	thumb_func_end ov94_022451EC

	thumb_func_start ov94_0224529C
ov94_0224529C: ; 0x0224529C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x14]
	bl sub_0202AD28
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_02025D74
	cmp r0, #0
	bne _022452C0
	ldr r1, [r5, #0]
	ldr r0, [r1, #4]
	ldr r1, [r1, #0x38]
	bl sub_02025D78
_022452C0:
	ldr r0, [r5, #0]
	ldr r0, [r0, #4]
	bl sub_02025D74
	add r6, r0, #0
	add r0, r4, #0
	bl DWC_CreateFriendKey
	add r3, r0, #0
	add r2, r1, #0
	add r0, r6, #0
	add r1, r3, #0
	bl ov94_0223B140
	mov r0, #7
	str r0, [r5, #0x2c]
	mov r0, #3
	pop {r4, r5, r6, pc}
	thumb_func_end ov94_0224529C

	thumb_func_start ov94_022452E4
ov94_022452E4: ; 0x022452E4
	push {r4, lr}
	add r4, r0, #0
	bl ov94_0223BB40
	mov r0, #8
	str r0, [r4, #0x2c]
	ldr r0, _022452FC ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022452FC: .word 0x00001484
	thumb_func_end ov94_022452E4

	thumb_func_start ov94_02245300
ov94_02245300: ; 0x02245300
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	beq _0224539A
	bl ov94_0223B7D8
	add r5, r0, #0
	ldr r0, _022453B4 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x11
	bhi _0224538E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224532C: ; jump table
	.short _02245372 - _0224532C - 2 ; case 0
	.short _02245380 - _0224532C - 2 ; case 1
	.short _0224538E - _0224532C - 2 ; case 2
	.short _02245372 - _0224532C - 2 ; case 3
	.short _0224538E - _0224532C - 2 ; case 4
	.short _0224538E - _0224532C - 2 ; case 5
	.short _0224538E - _0224532C - 2 ; case 6
	.short _0224538E - _0224532C - 2 ; case 7
	.short _0224538E - _0224532C - 2 ; case 8
	.short _0224538E - _0224532C - 2 ; case 9
	.short _0224538E - _0224532C - 2 ; case 10
	.short _0224538E - _0224532C - 2 ; case 11
	.short _0224538E - _0224532C - 2 ; case 12
	.short _02245380 - _0224532C - 2 ; case 13
	.short _02245364 - _0224532C - 2 ; case 14
	.short _02245350 - _0224532C - 2 ; case 15
	.short _02245356 - _0224532C - 2 ; case 16
	.short _02245364 - _0224532C - 2 ; case 17
_02245350:
	mov r0, #9
	str r0, [r4, #0x2c]
	b _022453B0
_02245356:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _022453B0
_02245364:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _022453B0
_02245372:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _022453B0
_02245380:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _022453B0
_0224538E:
	add r0, r4, #0
	bl ov94_0223C5F4
	bl sub_02038A0C
	b _022453B0
_0224539A:
	ldr r0, _022453B4 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _022453B0
	bl sub_02038A0C
_022453B0:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022453B4: .word 0x00001484
	thumb_func_end ov94_02245300

	thumb_func_start ov94_022453B8
ov94_022453B8: ; 0x022453B8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _022453E4 ; =0x000010E4
	ldr r0, [r0, #0x20]
	add r1, r4, r1
	bl sub_02030E78
	ldr r1, _022453E4 ; =0x000010E4
	add r0, r4, r1
	add r1, #0x64
	add r1, r4, r1
	bl ov94_0223BB84
	mov r0, #0xa
	str r0, [r4, #0x2c]
	ldr r0, _022453E8 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #3
	pop {r4, pc}
	nop
_022453E4: .word 0x000010E4
_022453E8: .word 0x00001484
	thumb_func_end ov94_022453B8

	thumb_func_start ov94_022453EC
ov94_022453EC: ; 0x022453EC
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl ov94_0223B7B8
	cmp r0, #0
	bne _022453FA
	b _0224550A
_022453FA:
	bl ov94_0223B7D8
	add r5, r0, #0
	ldr r0, _02245524 ; =0x00001484
	mov r1, #0
	str r1, [r4, r0]
	add r0, r5, #0
	add r0, #0xf
	cmp r0, #0x11
	bhi _022454FE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224541A: ; jump table
	.short _022454E2 - _0224541A - 2 ; case 0
	.short _022454F0 - _0224541A - 2 ; case 1
	.short _022454FE - _0224541A - 2 ; case 2
	.short _022454E2 - _0224541A - 2 ; case 3
	.short _022454FE - _0224541A - 2 ; case 4
	.short _022454FE - _0224541A - 2 ; case 5
	.short _022454FE - _0224541A - 2 ; case 6
	.short _022454FE - _0224541A - 2 ; case 7
	.short _022454FE - _0224541A - 2 ; case 8
	.short _022454FE - _0224541A - 2 ; case 9
	.short _022454FE - _0224541A - 2 ; case 10
	.short _022454FE - _0224541A - 2 ; case 11
	.short _022454FE - _0224541A - 2 ; case 12
	.short _022454F0 - _0224541A - 2 ; case 13
	.short _022454D4 - _0224541A - 2 ; case 14
	.short _0224543E - _0224541A - 2 ; case 15
	.short _022454C6 - _0224541A - 2 ; case 16
	.short _022454D4 - _0224541A - 2 ; case 17
_0224543E:
	add r0, r4, #0
	bl ov94_0223C5F4
	ldr r0, _02245528 ; =0x00001148
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02245456
	cmp r1, #1
	beq _022454A6
	cmp r1, #2
	beq _022454B0
	b _022454BA
_02245456:
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #3
	bhi _022454A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224546A: ; jump table
	.short _02245472 - _0224546A - 2 ; case 0
	.short _0224548C - _0224546A - 2 ; case 1
	.short _02245496 - _0224546A - 2 ; case 2
	.short _02245482 - _0224546A - 2 ; case 3
_02245472:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
	b _02245520
_02245482:
	ldr r0, _0224552C ; =0xFFFFEC75
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_0224548C:
	ldr r0, _02245530 ; =0xFFFFEC78
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_02245496:
	ldr r0, _02245534 ; =0xFFFFEC77
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454A0:
	bl sub_02038A0C
	b _02245520
_022454A6:
	ldr r0, _02245538 ; =0xFFFFEC74
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454B0:
	ldr r0, _0224553C ; =0xFFFFEC73
	str r0, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454BA:
	add r0, r4, #0
	bl ov94_0223C5F4
	bl sub_02038A0C
	b _02245520
_022454C6:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454D4:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454E2:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454F0:
	add r0, r4, #0
	bl ov94_0223C5F4
	str r5, [r4, #0x3c]
	mov r0, #0x15
	str r0, [r4, #0x2c]
	b _02245520
_022454FE:
	add r0, r4, #0
	bl ov94_0223C5F4
	bl sub_02038A0C
	b _02245520
_0224550A:
	ldr r0, _02245524 ; =0x00001484
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _02245520
	bl sub_02038A0C
_02245520:
	mov r0, #3
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02245524: .word 0x00001484
_02245528: .word 0x00001148
_0224552C: .word 0xFFFFEC75
_02245530: .word 0xFFFFEC78
_02245534: .word 0xFFFFEC77
_02245538: .word 0xFFFFEC74
_0224553C: .word 0xFFFFEC73
	thumb_func_end ov94_022453EC

	thumb_func_start ov94_02245540
ov94_02245540: ; 0x02245540
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x48]
	neg r0, r0
	bl ov4_021D1F3C
	ldr r2, [r4, #0x44]
	add r1, r0, #0
	add r0, r4, #0
	neg r2, r2
	bl ov94_022459B4
	mov r0, #0x18
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02245540

	thumb_func_start ov94_02245564
ov94_02245564: ; 0x02245564
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224558C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _02245578
	mov r0, #2
	tst r0, r1
	beq _02245586
_02245578:
	ldr r0, _02245590 ; =0x00000F2C
	mov r1, #0
	add r0, r4, r0
	bl sub_0200DC9C
	mov r0, #0
	str r0, [r4, #0x2c]
_02245586:
	mov r0, #3
	pop {r4, pc}
	nop
_0224558C: .word 0x021BF67C
_02245590: .word 0x00000F2C
	thumb_func_end ov94_02245564

	thumb_func_start ov94_02245594
ov94_02245594: ; 0x02245594
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	bl sub_02039794
	add r0, r4, #0
	bl ov94_0223C5F4
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
	mov r0, #0
	str r0, [r4, #0x2c]
	ldr r0, _022455CC ; =0x000010B0
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #4
	add sp, #0xc
	pop {r3, r4, pc}
	; .align 2, 0
_022455CC: .word 0x000010B0
	thumb_func_end ov94_02245594

	thumb_func_start ov94_022455D0
ov94_022455D0: ; 0x022455D0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02245604 ; =0x00001070
	mov r1, #0x3e
	ldr r0, [r4, r0]
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _02245600
	sub r1, r1, #1
	cmp r0, r1
	bne _022455F2
	mov r0, #0
	str r0, [r4, #0x2c]
	b _02245600
_022455F2:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
_02245600:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_02245604: .word 0x00001070
	thumb_func_end ov94_022455D0

	thumb_func_start ov94_02245608
ov94_02245608: ; 0x02245608
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r2, #0xd
	ldr r0, [r4, #0x3c]
	mvn r2, r2
	cmp r0, r2
	bgt _02245646
	bge _02245682
	ldr r1, _022456BC ; =0xFFFFEC78
	cmp r0, r1
	bgt _0224563E
	ldr r1, _022456C0 ; =0x0000138D
	add r1, r0, r1
	bmi _02245686
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02245632: ; jump table
	.short _0224569A - _02245632 - 2 ; case 0
	.short _02245696 - _02245632 - 2 ; case 1
	.short _0224568A - _02245632 - 2 ; case 2
	.short _02245686 - _02245632 - 2 ; case 3
	.short _02245692 - _02245632 - 2 ; case 4
	.short _0224568E - _02245632 - 2 ; case 5
_0224563E:
	mov r1, #0xe
	mvn r1, r1
	cmp r0, r1
	b _02245686
_02245646:
	add r1, r2, #0
	add r1, #9
	cmp r0, r1
	bgt _0224565C
	add r1, r2, #0
	add r1, #9
	cmp r0, r1
	bge _02245686
	add r1, r2, #2
	cmp r0, r1
	b _02245686
_0224565C:
	add r0, r0, #3
	cmp r0, #5
	bhi _02245686
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0224566E: ; jump table
	.short _02245686 - _0224566E - 2 ; case 0
	.short _02245682 - _0224566E - 2 ; case 1
	.short _0224567E - _0224566E - 2 ; case 2
	.short _02245686 - _0224566E - 2 ; case 3
	.short _0224567A - _0224566E - 2 ; case 4
	.short _0224567E - _0224566E - 2 ; case 5
_0224567A:
	mov r2, #0x90
	b _0224569C
_0224567E:
	mov r2, #0x91
	b _0224569C
_02245682:
	mov r2, #0x96
	b _0224569C
_02245686:
	mov r2, #0x95
	b _0224569C
_0224568A:
	mov r2, #0xb1
	b _0224569C
_0224568E:
	mov r2, #0xae
	b _0224569C
_02245692:
	mov r2, #0xae
	b _0224569C
_02245696:
	mov r2, #0xaf
	b _0224569C
_0224569A:
	mov r2, #0xb0
_0224569C:
	ldr r0, _022456C4 ; =0x00000F0F
	ldr r1, _022456C8 ; =0x00000B94
	str r0, [sp]
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r3, #1
	bl ov94_02245824
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0x16
	bl ov94_0223C3F4
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_022456BC: .word 0xFFFFEC78
_022456C0: .word 0x0000138D
_022456C4: .word 0x00000F0F
_022456C8: .word 0x00000B94
	thumb_func_end ov94_02245608

	thumb_func_start ov94_022456CC
ov94_022456CC: ; 0x022456CC
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0x52
	add r4, r0, #0
	lsl r1, r1, #6
	ldrsh r1, [r4, r1]
	cmp r1, #3
	bhi _02245768
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022456E8: ; jump table
	.short _022456F0 - _022456E8 - 2 ; case 0
	.short _0224570C - _022456E8 - 2 ; case 1
	.short _02245730 - _022456E8 - 2 ; case 2
	.short _0224574C - _022456E8 - 2 ; case 3
_022456F0:
	ldr r1, _0224578C ; =0x00000F0F
	mov r2, #0xb2
	str r1, [sp]
	ldr r1, _02245790 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	mov r0, #0x52
	lsl r0, r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02245784
_0224570C:
	ldr r0, _02245794 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02245784
	bl sub_0203848C
	bl ov4_021D7DB0
	mov r0, #0x52
	lsl r0, r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02245784
_02245730:
	ldr r1, _0224578C ; =0x00000F0F
	mov r2, #0xb3
	str r1, [sp]
	ldr r1, _02245790 ; =0x00000B94
	mov r3, #1
	ldr r1, [r4, r1]
	bl ov94_02245824
	mov r0, #0x52
	lsl r0, r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02245784
_0224574C:
	ldr r0, _02245794 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02245784
	mov r0, #0x52
	lsl r0, r0, #6
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	b _02245784
_02245768:
	ldr r0, _02245798 ; =0x00001482
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0x1e
	ble _02245784
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov94_0223C4C0
	mov r0, #0xb
	str r0, [r4, #0x2c]
_02245784:
	mov r0, #3
	add sp, #4
	pop {r3, r4, pc}
	nop
_0224578C: .word 0x00000F0F
_02245790: .word 0x00000B94
_02245794: .word 0x00000BE4
_02245798: .word 0x00001482
	thumb_func_end ov94_022456CC

	thumb_func_start ov94_0224579C
ov94_0224579C: ; 0x0224579C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022457B8 ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022457B4
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_022457B4:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022457B8: .word 0x00000BE4
	thumb_func_end ov94_0224579C

	thumb_func_start ov94_022457BC
ov94_022457BC: ; 0x022457BC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022457EC ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _022457E8
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	ble _022457DE
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_022457DE:
	mov r0, #0x42
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_022457E8:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_022457EC: .word 0x00000BE4
	thumb_func_end ov94_022457BC

	thumb_func_start ov94_022457F0
ov94_022457F0: ; 0x022457F0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0224581C ; =0x00000BE4
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _02245818
	mov r2, #0x8d
	ldr r0, [r4, #4]
	mov r1, #0xd
	lsl r2, r2, #2
	bl ov94_0223C3C0
	ldr r1, _02245820 ; =0x00001070
	str r0, [r4, r1]
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x2c]
_02245818:
	mov r0, #3
	pop {r4, pc}
	; .align 2, 0
_0224581C: .word 0x00000BE4
_02245820: .word 0x00001070
	thumb_func_end ov94_022457F0

	thumb_func_start ov94_02245824
ov94_02245824: ; 0x02245824
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	add r4, r3, #0
	bl sub_0200B1EC
	mov r1, #0xb9
	add r6, r0, #0
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x20
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl sub_0200C388
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, _0224588C ; =0x00000EFC
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _0224588C ; =0x00000EFC
	mov r1, #0
	add r0, r5, r0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	mov r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	mov r2, #0xbb
	ldr r0, _0224588C ; =0x00000EFC
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _02245890 ; =0x00000BE4
	str r0, [r5, r1]
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #6
	str r1, [r5, r0]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0224588C: .word 0x00000EFC
_02245890: .word 0x00000BE4
	thumb_func_end ov94_02245824

	thumb_func_start ov94_02245894
ov94_02245894: ; 0x02245894
	push {r4, lr}
	add r4, r0, #0
	cmp r3, #1
	beq _022458A2
	cmp r3, #2
	beq _022458B8
	b _022458C6
_022458A2:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r1, r1, r0
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r2, r0, #1
	b _022458C6
_022458B8:
	ldr r0, [sp, #0xc]
	mov r2, #0
	bl sub_02002D7C
	ldrb r1, [r4, #7]
	lsl r1, r1, #3
	sub r2, r1, r0
_022458C6:
	add r0, r2, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov94_02245894

	thumb_func_start ov94_022458CC
ov94_022458CC: ; 0x022458CC
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
	bl ov94_02245894
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
	thumb_func_end ov94_022458CC

	thumb_func_start ov94_02245900
ov94_02245900: ; 0x02245900
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r4, r3, #0
	ldr r3, [sp, #0x24]
	add r5, r0, #0
	str r3, [sp]
	mov r3, #0
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	add r6, r1, #0
	bl ov94_02245894
	add r3, r0, #0
	str r4, [sp]
	mov r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r2, r6, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov94_02245900

	thumb_func_start ov94_02245934
ov94_02245934: ; 0x02245934
	ldr r3, _02245938 ; =sub_02039734
	bx r3
	; .align 2, 0
_02245938: .word sub_02039734
	thumb_func_end ov94_02245934

	thumb_func_start ov94_0224593C
ov94_0224593C: ; 0x0224593C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #1
	add r6, r1, #0
	lsl r0, r0, #8
	mov r1, #0x3e
	bl sub_02023790
	add r4, r0, #0
	mov r0, #0xba
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0200B1B8
	mov r1, #0xb9
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r1, #0x50
	ldr r1, [r5, r1]
	add r2, r4, #0
	bl sub_0200C388
	ldr r0, _022459AC ; =0x00000F2C
	mov r1, #0xf
	add r0, r5, r0
	bl sub_0201ADA4
	ldr r0, _022459AC ; =0x00000F2C
	mov r1, #1
	add r0, r5, r0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DC48
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	mov r2, #0xbe
	ldr r0, _022459AC ; =0x00000F2C
	str r3, [sp, #8]
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	ldr r1, _022459B0 ; =0x00000BE4
	str r0, [r5, r1]
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_022459AC: .word 0x00000F2C
_022459B0: .word 0x00000BE4
	thumb_func_end ov94_0224593C

	thumb_func_start ov94_022459B4
ov94_022459B4: ; 0x022459B4
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	add r4, r1, #0
	mvn r0, r0
	cmp r4, r0
	bne _022459C6
	mov r4, #0xb
_022459C6:
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xb9
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r0, _022459F4 ; =0x00000EFC
	mov r1, #1
	add r0, r5, r0
	bl sub_0200E084
	add r0, r5, #0
	add r1, r4, #0
	bl ov94_0224593C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_022459F4: .word 0x00000EFC
	thumb_func_end ov94_022459B4

	.rodata


	.global Unk_ov94_0224637C
Unk_ov94_0224637C: ; 0x0224637C
	.incbin "incbin/overlay94_rodata.bin", 0x984, 0x9A0 - 0x984

	.global Unk_ov94_02246398
Unk_ov94_02246398: ; 0x02246398
	.incbin "incbin/overlay94_rodata.bin", 0x9A0, 0x9BC - 0x9A0

	.global Unk_ov94_022463B4
Unk_ov94_022463B4: ; 0x022463B4
	.incbin "incbin/overlay94_rodata.bin", 0x9BC, 0x9D8 - 0x9BC

	.global Unk_ov94_022463D0
Unk_ov94_022463D0: ; 0x022463D0
	.incbin "incbin/overlay94_rodata.bin", 0x9D8, 0x1C


	.data


	.global Unk_ov94_02246A40
Unk_ov94_02246A40: ; 0x02246A40
	.incbin "incbin/overlay94_data.bin", 0x640, 0x64

