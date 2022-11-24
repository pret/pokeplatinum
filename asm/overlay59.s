	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start ov59_021D0D80
ov59_021D0D80: ; 0x021D0D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r7, r0, #0
	cmp r1, #0
	beq _021D0D96
	cmp r1, #1
	bne _021D0D94
	b _021D0ED0
_021D0D94:
	b _021D0EDE
_021D0D96:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0EE4 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0EE8 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r2, #0x41
	mov r0, #3
	mov r1, #0x33
	lsl r2, r2, #0xc
	bl sub_02017FC8
	mov r0, #0x56
	mov r1, #0x33
	bl sub_02006C24
	add r6, r0, #0
	ldr r1, _021D0EEC ; =0x00004AB4
	add r0, r7, #0
	mov r2, #0x33
	bl sub_0200681C
	ldr r2, _021D0EEC ; =0x00004AB4
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x33
	bl sub_02018340
	str r0, [r4, #0]
	add r0, r7, #0
	bl sub_02006840
	str r0, [r4, #8]
	ldr r1, [r0, #0]
	ldr r0, _021D0EF0 ; =0x00004A38
	str r1, [r4, r0]
	mov r0, #0x33
	bl sub_0200B358
	str r0, [r4, #0x24]
	ldr r2, _021D0EF4 ; =0x00000215
	mov r0, #0
	mov r1, #0x1a
	mov r3, #0x33
	bl sub_0200B144
	str r0, [r4, #0x28]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	bl ov59_021D1128
	ldr r0, [r4, #0]
	bl ov59_021D1148
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x33
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x11
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	add r0, r4, #0
	add r1, r6, #0
	bl ov59_021D1388
	ldr r0, _021D0EF8 ; =ov59_021D1100
	add r1, r4, #0
	bl sub_02017798
	add r0, r4, #0
	add r1, r6, #0
	bl ov59_021D1250
	bl ov59_021D1474
	add r0, r4, #0
	add r1, r6, #0
	bl ov59_021D14A4
	add r0, r4, #0
	bl ov59_021D1598
	add r0, r4, #0
	add r1, r7, #0
	bl ov59_021D16A0
	mov r1, #0
	mov r0, #0x34
	add r2, r1, #0
	bl sub_02004550
	add r0, r4, #0
	bl sub_020961E8
	bl sub_02037878
	mov r0, #3
	bl sub_02037B58
	bl sub_0203608C
	cmp r0, #0
	bne _021D0EA4
	mov r0, #2
	bl sub_0205BEA8
_021D0EA4:
	bl sub_02039734
	ldr r0, _021D0EF0 ; =0x00004A38
	mov r1, #0xed
	lsl r1, r1, #2
	ldr r0, [r4, r0]
	add r1, r4, r1
	bl ov59_021D30E0
	ldr r0, _021D0EFC ; =ov59_021D109C
	add r1, r4, #0
	mov r2, #5
	bl sub_0200DA04
	str r0, [r4, #0x20]
	add r0, r6, #0
	bl sub_02006CA8
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D0EDE
_021D0ED0:
	bl sub_0200682C
	mov r0, #0
	str r0, [r5, #0]
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D0EDE:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D0EE4: .word 0xFFFFE0FF
_021D0EE8: .word 0x04001000
_021D0EEC: .word 0x00004AB4
_021D0EF0: .word 0x00004A38
_021D0EF4: .word 0x00000215
_021D0EF8: .word ov59_021D1100
_021D0EFC: .word ov59_021D109C
	thumb_func_end ov59_021D0D80

	thumb_func_start ov59_021D0F00
ov59_021D0F00: ; 0x021D0F00
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D0F26
	ldr r0, _021D0FE4 ; =0x00004A50
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D0F26
	bl sub_020318EC
	ldr r1, _021D0FE4 ; =0x00004A50
	ldr r2, [r4, r1]
	and r0, r2
	str r0, [r4, r1]
_021D0F26:
	ldr r1, [r5, #0]
	cmp r1, #3
	bhi _021D0FDA
	add r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D0F38: ; jump table
	.short _021D0F40 - _021D0F38 - 2 ; case 0
	.short _021D0F68 - _021D0F38 - 2 ; case 1
	.short _021D0FB6 - _021D0F38 - 2 ; case 2
	.short _021D0FCE - _021D0F38 - 2 ; case 3
_021D0F40:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0FDA
	mov r0, #1
	str r0, [r5, #0]
	bl sub_0203608C
	cmp r0, #0
	beq _021D0FDA
	bl ov59_021D2528
	cmp r0, #2
	ble _021D0FDA
	mov r1, #0
	mov r0, #0x72
	add r2, r1, #0
	bl sub_020359DC
	b _021D0FDA
_021D0F68:
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021D0FE8 ; =0x021D3480
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021D0F7E
	add r0, r4, #0
	blx r2
	str r0, [r5, #0]
_021D0F7E:
	ldr r0, _021D0FEC ; =0x00004A40
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _021D0F96
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r2, _021D0FF0 ; =0x00010300
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov59_021D2418
_021D0F96:
	add r0, r4, #0
	bl ov59_021D26E8
	bl sub_0203608C
	cmp r0, #0
	bne _021D0FDA
	add r0, r4, #0
	mov r1, #1
	bl ov59_021D292C
	ldr r1, [r5, #0]
	cmp r1, #1
	bne _021D0FDA
	str r0, [r5, #0]
	b _021D0FDA
_021D0FB6:
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r2, r0, #2
	ldr r0, _021D0FE8 ; =0x021D3480
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021D0FDA
	add r0, r4, #0
	blx r2
	str r0, [r5, #0]
	b _021D0FDA
_021D0FCE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D0FDA
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0FDA:
	ldr r0, [r4, #0x50]
	bl sub_020219F8
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0FE4: .word 0x00004A50
_021D0FE8: .word 0x021D3480
_021D0FEC: .word 0x00004A40
_021D0FF0: .word 0x00010300
	thumb_func_end ov59_021D0F00

	thumb_func_start ov59_021D0FF4
ov59_021D0FF4: ; 0x021D0FF4
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl sub_0200682C
	add r6, r0, #0
	ldr r0, [r6, #0x20]
	bl sub_0200DA58
	mov r0, #0x6b
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_0200A4E4
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A6DC
	mov r7, #0x5f
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_021D1020:
	ldr r0, [r5, r7]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D1020
	ldr r0, [r6, #0x50]
	bl sub_02021964
	bl sub_0200A878
	bl sub_0201E958
	bl sub_0201F8B4
	add r0, r6, #0
	bl ov59_021D17C8
	ldr r0, [r6, #0]
	bl ov59_021D1354
	mov r0, #2
	bl sub_02037B58
	bl sub_02036AC4
	ldr r0, [r6, #8]
	ldr r0, [r0, #4]
	bl sub_0205C2C8
	ldr r0, [r6, #0x28]
	bl sub_0200B190
	ldr r0, [r6, #0x24]
	bl sub_0200B3F0
	add r0, r6, #0
	bl ov59_021D131C
	ldr r0, [sp]
	bl sub_02006830
	ldr r2, _021D1098 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	mov r0, #0
	bl sub_0205BEA8
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0x33
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1098: .word 0x04000304
	thumb_func_end ov59_021D0FF4

	thumb_func_start ov59_021D109C
ov59_021D109C: ; 0x021D109C
	push {r4, lr}
	add r4, r1, #0
	ldr r0, [r4, #0xc]
	add r1, #0xc
	cmp r0, #0
	beq _021D10F6
	ldr r0, [r1, #4]
	ldr r3, [r1, #8]
	lsl r2, r0, #1
	ldr r0, _021D10F8 ; =0x021D329A
	ldrb r0, [r0, r2]
	cmp r3, r0
	ble _021D10E6
	mov r0, #0
	str r0, [r1, #8]
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	lsl r3, r2, #1
	ldr r2, _021D10FC ; =0x021D329B
	ldrb r2, [r2, r3]
	cmp r2, #0xff
	bne _021D10CC
	str r0, [r1, #4]
_021D10CC:
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	lsl r2, r1, #1
	ldr r1, _021D10FC ; =0x021D329B
	ldrb r1, [r1, r2]
	mov r2, #0x20
	lsl r1, r1, #5
	add r0, r0, r1
	mov r1, #0
	bl sub_020C0160
	b _021D10EC
_021D10E6:
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_021D10EC:
	mov r0, #0xe9
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov59_021D23B0
_021D10F6:
	pop {r4, pc}
	; .align 2, 0
_021D10F8: .word 0x021D329A
_021D10FC: .word 0x021D329B
	thumb_func_end ov59_021D109C

	thumb_func_start ov59_021D1100
ov59_021D1100: ; 0x021D1100
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201DCAC
	bl sub_0200A858
	add r0, r4, #0
	bl sub_0201C2B8
	ldr r3, _021D1120 ; =0x027E0000
	ldr r1, _021D1124 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_021D1120: .word 0x027E0000
_021D1124: .word 0x00003FF8
	thumb_func_end ov59_021D1100

	thumb_func_start ov59_021D1128
ov59_021D1128: ; 0x021D1128
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1144 ; =0x021D3368
	add r3, sp, #0
	mov r2, #5
_021D1132:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1132
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1144: .word 0x021D3368
	thumb_func_end ov59_021D1128

	thumb_func_start ov59_021D1148
ov59_021D1148: ; 0x021D1148
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _021D1238 ; =0x021D32A4
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D123C ; =0x021D3330
	add r3, sp, #0x70
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
	ldr r5, _021D1240 ; =0x021D334C
	add r3, sp, #0x54
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
	add r0, r4, #0
	mov r1, #5
	bl sub_02019EBC
	ldr r5, _021D1244 ; =0x021D32DC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	add r0, r4, #0
	mov r3, #0
	bl sub_020183C4
	ldr r5, _021D1248 ; =0x021D32F8
	add r3, sp, #0x1c
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
	ldr r5, _021D124C ; =0x021D3314
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
	mov r1, #1
	mov r3, #0
	bl sub_020183C4
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x33
	bl sub_02019690
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x33
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021D1238: .word 0x021D32A4
_021D123C: .word 0x021D3330
_021D1240: .word 0x021D334C
_021D1244: .word 0x021D32DC
_021D1248: .word 0x021D32F8
_021D124C: .word 0x021D3314
	thumb_func_end ov59_021D1148

	thumb_func_start ov59_021D1250
ov59_021D1250: ; 0x021D1250
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r7, #0
	add r6, r0, #0
	add r4, r0, #0
	add r5, r0, #0
_021D1260:
	mov r0, #8
	mov r1, #0x33
	bl sub_02023790
	str r0, [r6, #0x2c]
	mov r0, #0xd9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021D1310 ; =0x00004A64
	add r7, r7, #1
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021D1314 ; =0x00004A6C
	add r4, #8
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	mov r0, #0xe3
	lsl r0, r0, #2
	str r1, [r6, r0]
	add r6, r6, #4
	add r5, #0x10
	cmp r7, #5
	blt _021D1260
	mov r0, #0xb4
	mov r1, #0x33
	bl sub_02023790
	ldr r1, [sp]
	str r0, [r1, #0x44]
	mov r0, #0x28
	mov r1, #0x33
	bl sub_02023790
	ldr r1, [sp]
	mov r2, #0
	str r0, [r1, #0x48]
	mov r1, #0xd1
	ldr r0, [sp]
	lsl r1, r1, #2
	str r2, [r0, r1]
	ldr r2, [sp]
	ldr r0, [r0, #0x28]
	ldr r2, [r2, #0x48]
	mov r1, #0x11
	bl sub_0200B1B8
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl ov59_021D27FC
	mov r0, #0x33
	bl sub_0205CA4C
	mov r2, #0xea
	ldr r1, [sp]
	lsl r2, r2, #2
	str r0, [r1, r2]
	ldr r2, [sp]
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	ldr r0, [sp, #4]
	mov r1, #1
	add r2, #0x1c
	mov r3, #0x33
	bl sub_020071EC
	ldr r1, [sp]
	mov r2, #0x32
	str r0, [r1, #0x18]
	ldr r1, _021D1318 ; =0x00004A44
	ldr r0, [sp]
	mov r3, #0
	str r3, [r0, r1]
	lsl r2, r2, #4
	str r3, [r0, r2]
	mov r2, #2
	add r1, r1, #4
	str r2, [r0, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1310: .word 0x00004A64
_021D1314: .word 0x00004A6C
_021D1318: .word 0x00004A44
	thumb_func_end ov59_021D1250

	thumb_func_start ov59_021D131C
ov59_021D131C: ; 0x021D131C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	bl ov59_021D28A4
	ldr r0, [r6, #0x18]
	bl sub_020181C4
	mov r0, #0xea
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_020181C4
	mov r4, #0
	add r5, r6, #0
_021D1338:
	ldr r0, [r5, #0x2c]
	bl sub_020237BC
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #5
	blt _021D1338
	ldr r0, [r6, #0x48]
	bl sub_020237BC
	ldr r0, [r6, #0x44]
	bl sub_020237BC
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_021D131C

	thumb_func_start ov59_021D1354
ov59_021D1354: ; 0x021D1354
	push {r4, lr}
	add r4, r0, #0
	mov r1, #6
	bl sub_02019044
	add r0, r4, #0
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
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D1354

	thumb_func_start ov59_021D1388
ov59_021D1388: ; 0x021D1388
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #2
	ldr r4, [r5, #0]
	lsl r0, r0, #8
	add r6, r1, #0
	mov r1, #0
	str r0, [sp]
	mov r0, #0x33
	str r0, [sp, #4]
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02007130
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x33
	str r0, [sp, #4]
	mov r0, #0xc
	add r1, r0, #0
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r1, #0x1a
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x33
	bl sub_02002E98
	mov r1, #0x1a
	mov r0, #4
	lsl r1, r1, #4
	mov r2, #0x33
	bl sub_02002E98
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x33
	str r0, [sp, #0xc]
	mov r0, #0xc
	mov r1, #0xa
	add r2, r4, #0
	mov r3, #6
	bl sub_02006E3C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x33
	str r0, [sp, #0xc]
	mov r0, #0xc
	mov r1, #0xb
	add r2, r4, #0
	mov r3, #6
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x33
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #2
	add r2, r4, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	mov r0, #6
	lsl r0, r0, #8
	str r0, [sp, #4]
	mov r3, #1
	str r3, [sp, #8]
	mov r0, #0x33
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #3
	add r2, r4, #0
	bl sub_0200710C
	ldr r0, [r5, #8]
	ldr r0, [r0, #8]
	bl sub_02027B50
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	mov r0, #0x33
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200DD0C
	mov r1, #0
	str r1, [sp]
	mov r0, #0x33
	str r0, [sp, #4]
	add r0, r4, #0
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_021D1388

	thumb_func_start ov59_021D1474
ov59_021D1474: ; 0x021D1474
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D14A0 ; =0x021D32B4
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_0201E86C
	mov r0, #0x14
	mov r1, #0x33
	bl sub_0201F834
	bl sub_0201E994
	bl sub_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D14A0: .word 0x021D32B4
	thumb_func_end ov59_021D1474

	thumb_func_start ov59_021D14A4
ov59_021D14A4: ; 0x021D14A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r0, #0
	str r1, [sp, #0x14]
	bl sub_020A7944
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x20
	str r3, [sp, #0xc]
	mov r2, #0x33
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl sub_0200A784
	add r1, r6, #0
	mov r0, #0x1e
	add r1, #0x54
	mov r2, #0x33
	bl sub_020095C4
	str r0, [r6, #0x50]
	add r0, r6, #0
	mov r2, #1
	add r0, #0x54
	mov r1, #0
	lsl r2, r2, #0x14
	bl sub_0200964C
	mov r7, #0x5f
	mov r4, #0
	add r5, r6, #0
	lsl r7, r7, #2
_021D14EC:
	mov r0, #3
	add r1, r4, #0
	mov r2, #0x33
	bl sub_02009714
	str r0, [r5, r7]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _021D14EC
	mov r0, #2
	str r0, [sp]
	mov r3, #1
	str r3, [sp, #4]
	mov r0, #0x33
	str r0, [sp, #8]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x14]
	mov r2, #0xc
	bl sub_02009A4C
	mov r1, #0x6b
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	str r2, [sp, #4]
	mov r0, #0xf
	str r0, [sp, #8]
	mov r0, #0x33
	sub r1, #0x2c
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r3, #0
	bl sub_02009B04
	mov r1, #0x1b
	lsl r1, r1, #4
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x33
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0xd
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x6d
	lsl r1, r1, #2
	str r0, [r6, r1]
	mov r0, #2
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x33
	sub r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	mov r2, #0xe
	mov r3, #1
	bl sub_02009BC4
	mov r1, #0x6e
	lsl r1, r1, #2
	str r0, [r6, r1]
	sub r1, #0xc
	ldr r0, [r6, r1]
	bl sub_0200A328
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r0, [r6, r0]
	bl sub_0200A5C8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D14A4

	thumb_func_start ov59_021D1598
ov59_021D1598: ; 0x021D1598
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	mov r1, #2
	add r5, r0, #0
	str r1, [sp]
	sub r0, r1, #3
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r3, #0x5f
	str r0, [sp, #0xc]
	mov r2, #1
	lsl r3, r3, #2
	str r2, [sp, #0x10]
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	add r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	add r2, r3, #0
	add r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	add r2, r3, #0
	add r2, #0xc
	ldr r2, [r5, r2]
	add r3, #0x88
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r5, r3
	add r2, r1, #0
	add r3, r1, #0
	bl sub_020093B4
	ldr r0, [r5, #0x50]
	mov r1, #0
	str r0, [sp, #0x2c]
	mov r0, #0x81
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x30]
	mov r0, #1
	lsl r0, r0, #0xc
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	mov r0, #1
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	mov r0, #0x33
	str r0, [sp, #0x58]
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r0, #0x15
	lsl r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0x8a
	lsl r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r7, #0x8b
	ldr r4, _021D169C ; =0x021D32C4
	mov r6, #0
	lsl r7, r7, #2
_021D1638:
	ldrh r0, [r4, #4]
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #6]
	lsl r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl sub_02021AA0
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #0
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #0x8b
	lsl r0, r0, #2
	sub r1, r6, #1
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x1b
	bl sub_02021D6C
	ldr r0, [r5, r7]
	mov r1, #0
	bl sub_02021CAC
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #5
	blt _021D1638
	mov r0, #6
	lsl r0, r0, #0xe
	str r0, [sp, #0x34]
	mov r0, #0x1a
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D169C: .word 0x021D32C4
	thumb_func_end ov59_021D1598

	thumb_func_start ov59_021D16A0
ov59_021D16A0: ; 0x021D16A0
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x14
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021D177C ; =0x000001C3
	mov r1, #0xbe
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r4, #0]
	add r1, r4, r1
	mov r2, #5
	mov r3, #0x1a
	bl sub_0201A7E8
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x28
	mov r1, #0xba
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r4, #0]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xba
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #1
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0x94
	mov r1, #0xc2
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r4, #0]
	add r1, r4, r1
	mov r2, #0
	mov r3, #3
	bl sub_0201A7E8
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r1, [r4, #0x48]
	add r0, r4, r0
	mov r2, #0
	bl ov59_021D1784
	mov r0, #6
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0xb
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0xc8
	mov r1, #0xa6
	str r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r4, #0]
	add r1, r4, r1
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #0xa6
	lsl r0, r0, #2
	add r0, r4, r0
	mov r1, #0
	bl sub_0201ADA4
	mov r0, #0xa6
	lsl r0, r0, #2
	ldr r2, _021D1780 ; =0x00010300
	add r0, r4, r0
	mov r1, #0
	add r3, r4, #0
	bl ov59_021D2418
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_021D177C: .word 0x000001C3
_021D1780: .word 0x00010300
	thumb_func_end ov59_021D16A0

	thumb_func_start ov59_021D1784
ov59_021D1784: ; 0x021D1784
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r2, #0
	mov r0, #1
	mov r2, #0
	add r7, r1, #0
	bl sub_02002D7C
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #1
	str r1, [sp]
	mov r0, #0x41
	mov r3, #0xd0
	str r4, [sp, #4]
	sub r4, r3, r6
	lsl r0, r0, #0xa
	lsr r3, r4, #0x1f
	str r0, [sp, #8]
	mov r0, #0
	add r3, r4, r3
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r2, r7, #0
	asr r3, r3, #1
	bl sub_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D1784

	thumb_func_start ov59_021D17C8
ov59_021D17C8: ; 0x021D17C8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xa6
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0xc2
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0xbe
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	mov r0, #0xba
	lsl r0, r0, #2
	add r0, r4, r0
	bl sub_0201A8FC
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D17C8

	thumb_func_start ov59_021D17F8
ov59_021D17F8: ; 0x021D17F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0
	mov r1, #1
	bl sub_020388F4
	bl sub_0203608C
	cmp r0, #0
	bne _021D1822
	bl sub_02035E18
	cmp r0, #2
	blt _021D182C
	add r0, r5, #0
	mov r1, #2
	mov r2, #0
	bl ov59_021D2628
	b _021D182C
_021D1822:
	add r0, r5, #0
	mov r1, #8
	mov r2, #0
	bl ov59_021D2628
_021D182C:
	add r0, r5, #0
	mov r1, #3
	bl ov59_021D19B0
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D17F8

	thumb_func_start ov59_021D1838
ov59_021D1838: ; 0x021D1838
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov59_021D1864
	bl sub_0203608C
	cmp r0, #0
	bne _021D185A
	bl ov59_021D23FC
	cmp r0, #1
	beq _021D1860
	add r0, r5, #0
	bl ov59_021D2524
	b _021D1860
_021D185A:
	add r0, r5, #0
	bl ov59_021D2524
_021D1860:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D1838

	thumb_func_start ov59_021D1864
ov59_021D1864: ; 0x021D1864
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, _021D1980 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	beq _021D18CA
	bl sub_0203608C
	cmp r0, #0
	bne _021D197A
	bl ov59_021D2528
	ldr r1, _021D1984 ; =0x00004A48
	ldr r2, [r4, r1]
	cmp r2, r0
	bne _021D18C0
	add r1, #8
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D18C0
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	add r0, r4, #0
	mov r1, #3
	mov r2, #0
	bl ov59_021D2628
	add r0, r4, #0
	mov r1, #0x16
	bl ov59_021D19B0
	add r1, sp, #0
	mov r0, #0x75
	add r1, #2
	mov r2, #1
	bl sub_020359DC
	add r0, r4, #0
	mov r1, #0
	bl ov59_021D28D8
	add sp, #4
	pop {r3, r4, pc}
_021D18C0:
	ldr r0, _021D1988 ; =0x000005F2
	bl sub_02005748
	add sp, #4
	pop {r3, r4, pc}
_021D18CA:
	mov r0, #2
	tst r0, r1
	beq _021D194E
	bl sub_0203608C
	cmp r0, #0
	beq _021D1900
	ldr r0, _021D198C ; =0x00004A3C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D18F6
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov59_021D2628
	add r0, r4, #0
	mov r1, #4
	bl ov59_021D19B0
	add sp, #4
	pop {r3, r4, pc}
_021D18F6:
	ldr r0, _021D1988 ; =0x000005F2
	bl sub_02005748
	add sp, #4
	pop {r3, r4, pc}
_021D1900:
	bl sub_02035E18
	ldr r1, _021D1984 ; =0x00004A48
	ldr r2, [r4, r1]
	cmp r2, r0
	bne _021D1944
	add r1, #8
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D1944
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #1]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0
	bl ov59_021D2628
	add r0, r4, #0
	mov r1, #4
	bl ov59_021D19B0
	add r1, sp, #0
	mov r0, #0x75
	add r1, #1
	mov r2, #1
	bl sub_020359DC
	add r0, r4, #0
	mov r1, #0
	bl ov59_021D28D8
	add sp, #4
	pop {r3, r4, pc}
_021D1944:
	ldr r0, _021D1988 ; =0x000005F2
	bl sub_02005748
	add sp, #4
	pop {r3, r4, pc}
_021D194E:
	ldr r0, _021D1990 ; =0x00004A4C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D197A
	bl sub_0203608C
	cmp r0, #0
	bne _021D197A
	bl sub_02035E18
	ldr r1, _021D1984 ; =0x00004A48
	ldr r1, [r4, r1]
	cmp r1, r0
	bne _021D197A
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0]
	mov r0, #0x75
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
_021D197A:
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D1980: .word 0x021BF67C
_021D1984: .word 0x00004A48
_021D1988: .word 0x000005F2
_021D198C: .word 0x00004A3C
_021D1990: .word 0x00004A4C
	thumb_func_end ov59_021D1864

	thumb_func_start ov59_021D1994
ov59_021D1994: ; 0x021D1994
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D1994

	thumb_func_start ov59_021D1998
ov59_021D1998: ; 0x021D1998
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #2
	bl ov59_021D19B0
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D1998

	thumb_func_start ov59_021D19B0
ov59_021D19B0: ; 0x021D19B0
	mov r2, #0xd1
	mov r3, #0x1e
	lsl r2, r2, #2
	str r3, [r0, r2]
	add r2, r2, #4
	str r1, [r0, r2]
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D19B0

	thumb_func_start ov59_021D19C0
ov59_021D19C0: ; 0x021D19C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	add r4, r1, #0
	bl ov59_021D26B8
	cmp r0, #0
	beq _021D19DA
	mov r0, #0xd2
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, r0, #4
	str r1, [r5, r0]
_021D19DA:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D19C0

	thumb_func_start ov59_021D19E4
ov59_021D19E4: ; 0x021D19E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D1A00
	mov r0, #0
	str r0, [sp]
	mov r0, #0x75
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
_021D1A00:
	mov r0, #0xd1
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D19E4

	thumb_func_start ov59_021D1A14
ov59_021D1A14: ; 0x021D1A14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x33
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, _021D1A40 ; =0x021D3288
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x32
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #5
	add r1, #0x24
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1A40: .word 0x021D3288
	thumb_func_end ov59_021D1A14

	thumb_func_start ov59_021D1A44
ov59_021D1A44: ; 0x021D1A44
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	bl sub_0203608C
	cmp r0, #0
	beq _021D1A78
	ldr r0, _021D1B60 ; =0x00004A3C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D1A9C
	ldr r0, _021D1B64 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021D1A6C
	ldr r0, _021D1B68 ; =0x000005F2
	bl sub_02005748
_021D1A6C:
	add r0, r5, #0
	bl ov59_021D1994
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021D1A78:
	ldr r0, _021D1B6C ; =0x00004A50
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D1A9C
	ldr r0, _021D1B64 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021D1A90
	ldr r0, _021D1B68 ; =0x000005F2
	bl sub_02005748
_021D1A90:
	add r0, r5, #0
	bl ov59_021D1994
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021D1A9C:
	bl ov59_021D2528
	add r4, r0, #0
	bl sub_02035E18
	cmp r4, r0
	beq _021D1AB6
	add r0, r5, #0
	bl ov59_021D1994
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021D1AB6:
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x33
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D1B52
	sub r1, r1, #1
	cmp r0, r1
	bne _021D1AF8
	bl sub_0203608C
	cmp r0, #0
	bne _021D1AEE
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x75
	add r1, sp, #4
	mov r2, #1
	bl sub_020359DC
	add r0, r5, #0
	mov r1, #1
	bl ov59_021D28D8
_021D1AEE:
	add r0, r5, #0
	mov r1, #0
	bl ov59_021D19B0
	b _021D1B4A
_021D1AF8:
	bl sub_0203608C
	cmp r0, #0
	bne _021D1B14
	add r0, r5, #0
	mov r1, #0xb
	bl ov59_021D19B0
	add r0, r5, #0
	mov r1, #0xe
	mov r2, #0
	bl ov59_021D2628
	b _021D1B4A
_021D1B14:
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	mov r1, #0
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203608C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, _021D1B70 ; =0x00004A54
	mov r1, #1
	strb r1, [r5, r0]
	mov r1, #0
	add r0, #0xa
	strh r1, [r5, r0]
	mov r0, #0xd1
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x70
	add r1, sp, #0
	mov r2, #4
	bl sub_020359DC
_021D1B4A:
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D1B52:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021D1B60: .word 0x00004A3C
_021D1B64: .word 0x021BF67C
_021D1B68: .word 0x000005F2
_021D1B6C: .word 0x00004A50
_021D1B70: .word 0x00004A54
	thumb_func_end ov59_021D1A44

	thumb_func_start ov59_021D1B74
ov59_021D1B74: ; 0x021D1B74
	push {r4, lr}
	add r4, r1, #0
	ldr r1, _021D1B88 ; =0x00004A5E
	mov r2, #0
	strh r2, [r0, r1]
	bl ov59_021D1994
	add r0, r4, #0
	pop {r4, pc}
	nop
_021D1B88: .word 0x00004A5E
	thumb_func_end ov59_021D1B74

	thumb_func_start ov59_021D1B8C
ov59_021D1B8C: ; 0x021D1B8C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02035E18
	ldr r1, _021D1C0C ; =0x00004A5C
	ldrh r1, [r5, r1]
	cmp r1, r0
	bne _021D1BAA
	bl ov59_021D2528
	ldr r1, _021D1C0C ; =0x00004A5C
	ldrh r2, [r5, r1]
	cmp r2, r0
	beq _021D1BC2
_021D1BAA:
	ldr r0, _021D1C10 ; =0x00004A5E
	mov r1, #0
	strh r1, [r5, r0]
	mov r0, #0xd1
	mov r1, #8
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021D1BC2:
	add r0, r1, #2
	ldrsh r0, [r5, r0]
	add r2, r0, #1
	add r0, r1, #2
	strh r2, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x1e
	ble _021D1C02
	add r0, sp, #0
	mov r1, #0
	mov r2, #4
	bl sub_020C4CF4
	mov r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	bl sub_0203608C
	add r1, sp, #0
	strb r0, [r1]
	mov r0, #0x70
	add r1, sp, #0
	mov r2, #4
	bl sub_020359DC
	ldr r0, _021D1C10 ; =0x00004A5E
	mov r1, #0
	strh r1, [r5, r0]
	mov r0, #0xd1
	mov r1, #9
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D1C02:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1C0C: .word 0x00004A5C
_021D1C10: .word 0x00004A5E
	thumb_func_end ov59_021D1B8C

	thumb_func_start ov59_021D1C14
ov59_021D1C14: ; 0x021D1C14
	push {r3, r4, r5, lr}
	ldr r2, _021D1C30 ; =0x00004A54
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #0
	strb r1, [r5, r2]
	bl ov59_021D19B0
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1C30: .word 0x00004A54
	thumb_func_end ov59_021D1C14

	thumb_func_start ov59_021D1C34
ov59_021D1C34: ; 0x021D1C34
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x33
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, _021D1C60 ; =0x021D3288
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x32
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0x17
	add r1, #0x24
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1C60: .word 0x021D3288
	thumb_func_end ov59_021D1C34

	thumb_func_start ov59_021D1C64
ov59_021D1C64: ; 0x021D1C64
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov59_021D2528
	ldr r1, _021D1D04 ; =0x00004A48
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021D1C7E
	add r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D1C98
_021D1C7E:
	ldr r0, _021D1D08 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021D1C8E
	ldr r0, _021D1D0C ; =0x000005F2
	bl sub_02005748
_021D1C8E:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021D1C98:
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x33
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D1CF8
	sub r1, r1, #1
	cmp r0, r1
	bne _021D1CD2
	mov r0, #0
	str r0, [sp]
	mov r0, #0x75
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
	add r0, r5, #0
	mov r1, #1
	bl ov59_021D28D8
	add r0, r5, #0
	mov r1, #0
	bl ov59_021D19B0
	b _021D1CF0
_021D1CD2:
	bl sub_0203608C
	cmp r0, #0
	bne _021D1CEC
	mov r0, #0xd1
	mov r1, #0x18
	lsl r0, r0, #2
	str r1, [r5, r0]
	bl ov59_021D2528
	ldr r1, _021D1D10 ; =0x00004A56
	strb r0, [r5, r1]
	b _021D1CF0
_021D1CEC:
	bl sub_02022974
_021D1CF0:
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D1CF8:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1D04: .word 0x00004A48
_021D1D08: .word 0x021BF67C
_021D1D0C: .word 0x000005F2
_021D1D10: .word 0x00004A56
	thumb_func_end ov59_021D1C64

	thumb_func_start ov59_021D1D14
ov59_021D1D14: ; 0x021D1D14
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D1D3C ; =0x00004A57
	add r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021D1D36
	mov r1, #0
	mov r0, #0x73
	add r2, r1, #0
	bl sub_020359DC
	cmp r0, #1
	bne _021D1D36
	ldr r0, _021D1D3C ; =0x00004A57
	mov r1, #1
	strb r1, [r5, r0]
_021D1D36:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1D3C: .word 0x00004A57
	thumb_func_end ov59_021D1D14

	thumb_func_start ov59_021D1D40
ov59_021D1D40: ; 0x021D1D40
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	ldr r2, [r4, #0x48]
	mov r1, #0x12
	bl sub_0200B1B8
	mov r0, #0xc2
	lsl r0, r0, #2
	ldr r1, [r4, #0x48]
	add r0, r4, r0
	mov r2, #0
	bl ov59_021D1784
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x25
	bl sub_02021D6C
	mov r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D1D40

	thumb_func_start ov59_021D1D70
ov59_021D1D70: ; 0x021D1D70
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D1D82
	bl sub_02035E18
_021D1D82:
	bl sub_02035E18
	ldr r1, _021D1D9C ; =0x00004A34
	ldr r1, [r5, r1]
	cmp r1, r0
	bne _021D1D96
	mov r0, #0xd1
	mov r1, #0x1a
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D1D96:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1D9C: .word 0x00004A34
	thumb_func_end ov59_021D1D70

	thumb_func_start ov59_021D1DA0
ov59_021D1DA0: ; 0x021D1DA0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D1DC0 ; =0x00004A38
	add r4, r1, #0
	ldr r1, _021D1DC4 ; =0x00000F74
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ov59_021D313C
	mov r0, #0xd1
	mov r1, #0x1b
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1DC0: .word 0x00004A38
_021D1DC4: .word 0x00000F74
	thumb_func_end ov59_021D1DA0

	thumb_func_start ov59_021D1DC8
ov59_021D1DC8: ; 0x021D1DC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021D1E08 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #8]
	mov r0, #0x33
	bl sub_0202C1B4
	add r1, r0, #0
	ldr r0, [r5, #8]
	mov r2, #4
	ldr r0, [r0, #0x10]
	bl sub_0202B758
	ldr r0, [r5, #8]
	mov r1, #0x14
	ldr r0, [r0, #0xc]
	bl sub_0202CFEC
	mov r0, #0x3a
	lsl r0, r0, #4
	add r0, r5, r0
	bl sub_02038ED4
	mov r0, #0xd1
	mov r1, #0x1c
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1E08: .word 0x021BF6DC
	thumb_func_end ov59_021D1DC8

	thumb_func_start ov59_021D1E0C
ov59_021D1E0C: ; 0x021D1E0C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D1E1E
	bl sub_02035E18
_021D1E1E:
	ldr r0, [r5, #8]
	mov r2, #0x3a
	lsl r2, r2, #4
	ldr r0, [r0, #0]
	mov r1, #2
	add r2, r5, r2
	bl sub_02038EDC
	cmp r0, #0
	beq _021D1E6A
	ldr r0, _021D1E70 ; =0x00000658
	mov r1, #8
	bl sub_020057A4
	add r0, r5, #0
	mov r1, #0xd
	mov r2, #0
	bl ov59_021D2628
	add r0, r5, #0
	mov r1, #0x1d
	bl ov59_021D19B0
	mov r0, #0x8a
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl sub_02021D6C
	mov r1, #0
	mov r0, #0x35
	str r1, [r5, #0xc]
	lsl r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021D1E74 ; =0x021BF6DC
	strb r1, [r0, #8]
	ldr r0, _021D1E78 ; =0x00004A40
	strb r1, [r5, r0]
_021D1E6A:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D1E70: .word 0x00000658
_021D1E74: .word 0x021BF6DC
_021D1E78: .word 0x00004A40
	thumb_func_end ov59_021D1E0C

	thumb_func_start ov59_021D1E7C
ov59_021D1E7C: ; 0x021D1E7C
	push {r3, r4}
	mov r2, #0x35
	lsl r2, r2, #4
	ldr r4, [r0, r2]
	add r3, r4, #1
	str r3, [r0, r2]
	cmp r4, #0x3c
	ble _021D1E92
	mov r3, #0xf
	sub r2, #0xc
	str r3, [r0, r2]
_021D1E92:
	add r0, r1, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov59_021D1E7C

	thumb_func_start ov59_021D1E98
ov59_021D1E98: ; 0x021D1E98
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	mov r1, #5
	mov r2, #0
	bl ov59_021D2628
	add r0, r5, #0
	mov r1, #0xa
	bl ov59_021D19B0
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D1E98

	thumb_func_start ov59_021D1EB8
ov59_021D1EB8: ; 0x021D1EB8
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0x35
	lsl r0, r0, #4
	add r4, r1, #0
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0x3c
	ble _021D1EE8
	mov r1, #0x10
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x33
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r4, #3
_021D1EE8:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov59_021D1EB8

	thumb_func_start ov59_021D1EF4
ov59_021D1EF4: ; 0x021D1EF4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x33
	add r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, _021D1F20 ; =0x021D3288
	mov r2, #0x1f
	mov r3, #0xb
	bl sub_02002100
	mov r1, #0x32
	lsl r1, r1, #4
	str r0, [r5, r1]
	mov r0, #0xc
	add r1, #0x24
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1F20: .word 0x021D3288
	thumb_func_end ov59_021D1EF4

	thumb_func_start ov59_021D1F24
ov59_021D1F24: ; 0x021D1F24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov59_021D2528
	ldr r1, _021D1FC4 ; =0x00004A48
	ldr r2, [r5, r1]
	cmp r2, r0
	bne _021D1F3E
	add r1, #8
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _021D1F58
_021D1F3E:
	ldr r0, _021D1FC8 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0xc3
	tst r0, r1
	beq _021D1F4E
	ldr r0, _021D1FCC ; =0x000005F2
	bl sub_02005748
_021D1F4E:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_021D1F58:
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #0x33
	bl sub_02002114
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D1FBA
	sub r1, r1, #1
	cmp r0, r1
	bne _021D1F90
	mov r1, #0
	mov r0, #0xd1
	str r1, [sp]
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x75
	add r1, sp, #0
	mov r2, #1
	bl sub_020359DC
	add r0, r5, #0
	mov r1, #1
	bl ov59_021D28D8
	b _021D1FB2
_021D1F90:
	mov r0, #0xd1
	mov r1, #0xd
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	mov r0, #0x71
	add r2, r1, #0
	bl sub_020359DC
	mov r0, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B498
_021D1FB2:
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D1FBA:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1FC4: .word 0x00004A48
_021D1FC8: .word 0x021BF67C
_021D1FCC: .word 0x000005F2
	thumb_func_end ov59_021D1F24

	thumb_func_start ov59_021D1FD0
ov59_021D1FD0: ; 0x021D1FD0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D1FEA
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ov59_021D2628
	b _021D2004
_021D1FEA:
	mov r0, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #0x10
	mov r2, #0
	bl ov59_021D2628
_021D2004:
	add r0, r5, #0
	mov r1, #0xe
	bl ov59_021D19B0
	mov r0, #0x35
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D1FD0

	thumb_func_start ov59_021D2020
ov59_021D2020: ; 0x021D2020
	push {r4, lr}
	add r4, r1, #0
	mov r1, #0x35
	lsl r1, r1, #4
	ldr r2, [r0, r1]
	add r2, r2, #1
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	cmp r2, #0x2d
	ble _021D203A
	mov r2, #0xf
	sub r1, #0xc
	str r2, [r0, r1]
_021D203A:
	bl ov59_021D1994
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2020

	thumb_func_start ov59_021D2044
ov59_021D2044: ; 0x021D2044
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0xc9
	add r4, r1, #0
	bl sub_020364F0
	mov r0, #0xd1
	mov r1, #0x10
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2044

	thumb_func_start ov59_021D2064
ov59_021D2064: ; 0x021D2064
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0xc9
	add r5, r1, #0
	bl sub_02036540
	cmp r0, #0
	beq _021D2096
	mov r0, #0
	add r1, r0, #0
	bl sub_020388F4
	mov r1, #0x10
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x33
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r5, #3
_021D2096:
	add r0, r4, #0
	bl ov59_021D1994
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2064

	thumb_func_start ov59_021D20A4
ov59_021D20A4: ; 0x021D20A4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	add r4, r1, #0
	bl ov59_021D26B8
	cmp r0, #0
	beq _021D20BE
	add r0, r5, #0
	mov r1, #9
	mov r2, #0
	bl ov59_021D2628
_021D20BE:
	mov r0, #0xd1
	mov r1, #0x12
	lsl r0, r0, #2
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D20A4

	thumb_func_start ov59_021D20D0
ov59_021D20D0: ; 0x021D20D0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	add r4, r1, #0
	bl ov59_021D26B8
	cmp r0, #0
	beq _021D20E8
	mov r0, #0xd1
	mov r1, #0xa
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D20E8:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D20D0

	thumb_func_start ov59_021D20F4
ov59_021D20F4: ; 0x021D20F4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x4c]
	add r4, r1, #0
	cmp r0, #0xff
	beq _021D2112
	bl ov59_021D26B8
	cmp r0, #0
	bne _021D2112
	ldr r0, [r5, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_021D2112:
	add r0, r5, #0
	mov r1, #0xf
	mov r2, #1
	bl ov59_021D2628
	mov r0, #0xd1
	mov r1, #0x14
	lsl r0, r0, #2
	str r1, [r5, r0]
	bl sub_0203608C
	cmp r0, #0
	bne _021D2134
	add r0, r5, #0
	mov r1, #0
	bl ov59_021D28D8
_021D2134:
	bl sub_02035E18
	ldr r1, _021D2150 ; =0x00004A58
	str r0, [r5, r1]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r1, #8
	str r0, [r5, r1]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D2150: .word 0x00004A58
	thumb_func_end ov59_021D20F4

	thumb_func_start ov59_021D2154
ov59_021D2154: ; 0x021D2154
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D218C ; =0x00004A58
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D2172
	bl sub_02035E18
	ldr r1, _021D218C ; =0x00004A58
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D2172
	mov r0, #0
	str r0, [r5, r1]
_021D2172:
	mov r0, #0xd1
	mov r1, #0x15
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r1, #0
	add r0, #0xc
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D218C: .word 0x00004A58
	thumb_func_end ov59_021D2154

	thumb_func_start ov59_021D2190
ov59_021D2190: ; 0x021D2190
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021D21FC ; =0x00004A58
	add r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D21AE
	bl sub_02035E18
	ldr r1, _021D21FC ; =0x00004A58
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D21AE
	mov r0, #0
	str r0, [r5, r1]
_021D21AE:
	ldr r0, _021D2200 ; =0x00004A60
	ldr r1, [r5, r0]
	sub r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0
	bge _021D21C2
	mov r1, #0
	sub r0, #8
	str r1, [r5, r0]
_021D21C2:
	mov r1, #0x35
	lsl r1, r1, #4
	ldr r0, [r5, r1]
	add r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0x3c
	ble _021D21F0
	ldr r0, _021D21FC ; =0x00004A58
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021D21F0
	mov r0, #0
	sub r1, #0xc
	str r0, [r5, r1]
	bl sub_0203608C
	cmp r0, #0
	bne _021D21F0
	add r0, r5, #0
	mov r1, #1
	bl ov59_021D28D8
_021D21F0:
	add r0, r5, #0
	bl ov59_021D1994
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D21FC: .word 0x00004A58
_021D2200: .word 0x00004A60
	thumb_func_end ov59_021D2190

	thumb_func_start ov59_021D2204
ov59_021D2204: ; 0x021D2204
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #0xd
	bgt _021D2226
	bge _021D223A
	cmp r4, #8
	bgt _021D22DE
	cmp r4, #2
	blt _021D22DE
	beq _021D2234
	cmp r4, #7
	beq _021D22D8
	cmp r4, #8
	beq _021D22D8
	pop {r4, r5, r6, pc}
_021D2226:
	cmp r4, #0x13
	bgt _021D222E
	beq _021D228C
	pop {r4, r5, r6, pc}
_021D222E:
	cmp r4, #0x19
	beq _021D2254
	pop {r4, r5, r6, pc}
_021D2234:
	bl ov59_021D26D8
	b _021D22D8
_021D223A:
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D22D8
	mov r1, #0x33
	bl sub_02002154
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021D22D8
_021D2254:
	ldr r0, [r5, #0x4c]
	bl ov59_021D26B8
	cmp r0, #0
	bne _021D2268
	ldr r0, [r5, #0x4c]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D730
_021D2268:
	add r0, r5, #0
	mov r1, #0xc
	mov r2, #0
	bl ov59_021D2628
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D22D8
	mov r1, #0x33
	bl sub_02002154
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021D22D8
_021D228C:
	ldr r0, _021D22E0 ; =0x00004A54
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _021D22DE
	add r0, r6, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B498
	bl sub_0203608C
	cmp r6, r0
	beq _021D22DE
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D22C4
	mov r1, #0x33
	bl sub_02002154
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021D22C4:
	bl sub_0203608C
	cmp r0, #0
	bne _021D22D8
	ldr r1, _021D22E4 ; =0x00004A50
	ldr r0, _021D22E8 ; =0x0000FFFF
	ldr r2, [r5, r1]
	eor r0, r6
	and r0, r2
	str r0, [r5, r1]
_021D22D8:
	mov r0, #0xd1
	lsl r0, r0, #2
	str r4, [r5, r0]
_021D22DE:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D22E0: .word 0x00004A54
_021D22E4: .word 0x00004A50
_021D22E8: .word 0x0000FFFF
	thumb_func_end ov59_021D2204

	thumb_func_start ov59_021D22EC
ov59_021D22EC: ; 0x021D22EC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0xd1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r4, r1, #0
	add r6, r2, #0
	cmp r0, #3
	bne _021D238C
	cmp r4, #1
	beq _021D230A
	cmp r4, #0x13
	beq _021D234E
	b _021D2384
_021D230A:
	add r0, r6, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B498
	add r0, r5, #0
	mov r1, #1
	bl ov59_021D28D8
	mov r0, #0xd1
	lsl r0, r0, #2
	str r4, [r5, r0]
	bl sub_02035E18
	ldr r1, _021D23A4 ; =0x00004A48
	str r0, [r5, r1]
	mov r0, #0
	add r1, #8
	str r0, [r5, r1]
	bl sub_0203608C
	cmp r0, #0
	bne _021D239E
	mov r2, #1
	mov r0, #0x75
	add r1, sp, #0
	str r2, [sp]
	bl sub_020359DC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021D234E:
	add r0, r6, #0
	bl sub_02032EE8
	add r2, r0, #0
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl sub_0200B498
	bl sub_0203608C
	cmp r6, r0
	beq _021D239E
	bl sub_0203608C
	cmp r0, #0
	bne _021D237A
	ldr r1, _021D23A8 ; =0x00004A50
	ldr r0, _021D23AC ; =0x0000FFFF
	ldr r2, [r5, r1]
	eor r0, r6
	and r0, r2
	str r0, [r5, r1]
_021D237A:
	mov r0, #0xd1
	lsl r0, r0, #2
	add sp, #4
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_021D2384:
	bl sub_02022974
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021D238C:
	cmp r4, #1
	bne _021D239E
	ldr r0, _021D23A8 ; =0x00004A50
	mov r1, #0
	str r1, [r5, r0]
	bl sub_02035E18
	ldr r1, _021D23A4 ; =0x00004A48
	str r0, [r5, r1]
_021D239E:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D23A4: .word 0x00004A48
_021D23A8: .word 0x00004A50
_021D23AC: .word 0x0000FFFF
	thumb_func_end ov59_021D22EC

	thumb_func_start ov59_021D23B0
ov59_021D23B0: ; 0x021D23B0
	push {r3, lr}
	ldrh r1, [r0]
	add r1, #0xa
	strh r1, [r0]
	ldrh r2, [r0]
	mov r1, #0x5a
	lsl r1, r1, #2
	cmp r2, r1
	bls _021D23C6
	mov r1, #0
	strh r1, [r0]
_021D23C6:
	ldrh r0, [r0]
	bl sub_0201D250
	mov r1, #0xa
	add r2, r0, #0
	mul r2, r1
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	add r0, #0xf
	lsl r2, r0, #5
	mov r0, #0x1d
	orr r2, r0
	add r0, sp, #0
	strh r2, [r0]
	add r0, sp, #0
	mov r2, #2
	bl sub_020C0160
	add r0, sp, #0
	mov r1, #0x2a
	mov r2, #2
	bl sub_020C0160
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov59_021D23B0

	thumb_func_start ov59_021D23FC
ov59_021D23FC: ; 0x021D23FC
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_021D2402:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D240E
	add r5, r5, #1
_021D240E:
	add r4, r4, #1
	cmp r4, #5
	blt _021D2402
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D23FC

	thumb_func_start ov59_021D2418
ov59_021D2418: ; 0x021D2418
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r3, [sp, #0x14]
	add r6, r0, #0
	str r2, [sp, #0x10]
	bl sub_0203608C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl ov59_021D254C
	cmp r0, #0
	bne _021D2438
	add sp, #0x28
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2438:
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	ldr r7, [sp, #0x14]
	mov r0, #0
	str r0, [sp, #0x20]
	add r4, r7, #0
	mov r5, #1
_021D244A:
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021D2504
	bl sub_02025F24
	str r0, [sp, #0x24]
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [r4, #0x2c]
	bl sub_02025EF4
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x24]
	ldr r0, [r0, #0x24]
	mov r1, #0
	mov r3, #5
	bl sub_0200B60C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0x24]
	ldr r1, [r1, #0x28]
	mov r2, #1
	mov r3, #0x33
	bl sub_0200B29C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	str r5, [sp]
	bne _021D24CC
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2520 ; =0x00020300
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x2c]
	add r0, r6, #0
	mov r3, #5
	bl sub_0201D78C
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D2520 ; =0x00020300
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x46
	bl sub_0201D78C
	b _021D24FE
_021D24CC:
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x2c]
	add r0, r6, #0
	mov r3, #5
	bl sub_0201D78C
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #0
	mov r3, #0x46
	bl sub_0201D78C
_021D24FE:
	ldr r0, [sp, #0x18]
	bl sub_020237BC
_021D2504:
	ldr r0, [sp, #0x20]
	add r7, #8
	add r0, r0, #1
	add r4, r4, #4
	add r5, #0x12
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _021D244A
	add r0, r6, #0
	bl sub_0201A954
	mov r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2520: .word 0x00020300
	thumb_func_end ov59_021D2418

	thumb_func_start ov59_021D2524
ov59_021D2524: ; 0x021D2524
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2524

	thumb_func_start ov59_021D2528
ov59_021D2528: ; 0x021D2528
	push {r3, r4, r5, lr}
	mov r5, #0
	add r4, r5, #0
_021D252E:
	add r0, r4, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D253A
	add r5, r5, #1
_021D253A:
	add r4, r4, #1
	cmp r4, #5
	blt _021D252E
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D2528

	thumb_func_start ov59_021D2544
ov59_021D2544: ; 0x021D2544
	ldr r3, _021D2548 ; =ov59_021D2528
	bx r3
	; .align 2, 0
_021D2548: .word ov59_021D2528
	thumb_func_end ov59_021D2544

	thumb_func_start ov59_021D254C
ov59_021D254C: ; 0x021D254C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r4, #0
	str r4, [sp]
	add r6, r7, #0
	add r5, r7, #0
_021D2558:
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
	add r0, r4, #0
	bl sub_02032EE8
	mov r1, #0xd9
	lsl r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _021D261C ; =0x00004A64
	ldr r2, _021D2620 ; =0x00004A6C
	ldr r1, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	str r1, [r5, r2]
	add r1, r2, #4
	str r0, [r5, r1]
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D2596
	bl sub_02025F20
	ldr r1, _021D261C ; =0x00004A64
	str r0, [r5, r1]
	mov r1, #1
	ldr r0, _021D2624 ; =0x00004A68
	b _021D25A0
_021D2596:
	add r0, r2, #0
	mov r1, #0
	sub r0, #8
	str r1, [r5, r0]
	sub r0, r2, #4
_021D25A0:
	add r4, r4, #1
	str r1, [r5, r0]
	add r6, #8
	add r5, #0x10
	cmp r4, #5
	blt _021D2558
	mov r4, #0
	add r2, r7, #0
	add r3, r7, #0
_021D25B2:
	mov r0, #0xd9
	mov r1, #0xda
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldr r0, [r7, r0]
	ldr r1, [r7, r1]
	cmp r1, r0
	beq _021D25DC
	mov r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021D25D4
	mov r0, #0xe3
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r2, r0]
	b _021D260C
_021D25D4:
	mov r0, #0xe3
	lsl r0, r0, #2
	str r1, [r2, r0]
	b _021D260C
_021D25DC:
	ldr r0, _021D261C ; =0x00004A64
	ldr r5, _021D2620 ; =0x00004A6C
	ldr r1, [r3, r0]
	ldr r6, [r3, r5]
	add r0, r0, #4
	add r5, r5, #4
	ldr r0, [r3, r0]
	ldr r5, [r3, r5]
	eor r1, r6
	eor r5, r0
	orr r1, r5
	beq _021D260C
	mov r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021D2606
	mov r0, #0xe3
	mov r1, #3
	lsl r0, r0, #2
	str r1, [r2, r0]
	b _021D260C
_021D2606:
	mov r0, #0xe3
	lsl r0, r0, #2
	str r1, [r2, r0]
_021D260C:
	add r4, r4, #1
	add r7, #8
	add r2, r2, #4
	add r3, #0x10
	cmp r4, #5
	blt _021D25B2
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D261C: .word 0x00004A64
_021D2620: .word 0x00004A6C
_021D2624: .word 0x00004A68
	thumb_func_end ov59_021D254C

	thumb_func_start ov59_021D2628
ov59_021D2628: ; 0x021D2628
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r7, r1, #0
	mov r0, #0xb4
	mov r1, #0x33
	add r6, r2, #0
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #0x28]
	add r1, r7, #0
	add r2, r4, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x44]
	add r2, r4, #0
	bl sub_0200C388
	add r0, r4, #0
	bl sub_020237BC
	mov r0, #0xba
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0xba
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	mov r2, #1
	mov r3, #0xa
	bl sub_0200E060
	cmp r6, #0
	bne _021D2698
	add r0, r5, #0
	bl ov59_021D28D4
	mov r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r2, [r5, #0x44]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	add sp, #0xc
	str r0, [r5, #0x4c]
	pop {r4, r5, r6, r7, pc}
_021D2698:
	mov r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	mov r0, #0xba
	lsl r0, r0, #2
	ldr r2, [r5, #0x44]
	add r0, r5, r0
	mov r1, #1
	bl sub_0201D738
	mov r0, #0xff
	str r0, [r5, #0x4c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2628

	thumb_func_start ov59_021D26B8
ov59_021D26B8: ; 0x021D26B8
	push {r3, lr}
	cmp r0, #0xff
	bne _021D26C2
	mov r0, #1
	pop {r3, pc}
_021D26C2:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_0201D724
	cmp r0, #0
	bne _021D26D2
	mov r0, #1
	pop {r3, pc}
_021D26D2:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov59_021D26B8

	thumb_func_start ov59_021D26D8
ov59_021D26D8: ; 0x021D26D8
	mov r1, #0xba
	lsl r1, r1, #2
	add r0, r0, r1
	ldr r3, _021D26E4 ; =sub_0200E084
	mov r1, #0
	bx r3
	; .align 2, 0
_021D26E4: .word sub_0200E084
	thumb_func_end ov59_021D26D8

	thumb_func_start ov59_021D26E8
ov59_021D26E8: ; 0x021D26E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0xcb
	lsl r0, r0, #2
	add r0, r5, r0
	str r0, [sp, #0x14]
	mov r0, #0xcf
	lsl r0, r0, #2
	mov r4, #0
	add r0, r5, r0
	str r4, [sp, #8]
	add r6, r5, #0
	mov r7, #0x1c
	str r0, [sp, #0x18]
_021D270A:
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #3
	bhi _021D27D6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2720: ; jump table
	.short _021D27D6 - _021D2720 - 2 ; case 0
	.short _021D2728 - _021D2720 - 2 ; case 1
	.short _021D27D6 - _021D2720 - 2 ; case 2
	.short _021D279E - _021D2720 - 2 ; case 3
_021D2728:
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D2736
	bl sub_02022974
_021D2736:
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02025F30
	str r0, [sp, #0xc]
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02025F8C
	str r0, [sp, #0x10]
	bl sub_0203608C
	cmp r4, r0
	bne _021D2768
	mov r0, #0x8b
	ldr r1, [sp, #0xc]
	lsl r0, r0, #2
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x26
	bl sub_02021D6C
	b _021D2784
_021D2768:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	add r2, r4, #0
	bl ov59_021D2860
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	bl sub_02021D6C
_021D2784:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0xe3
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #1
	str r0, [sp, #8]
	b _021D27D6
_021D279E:
	bl sub_0203608C
	cmp r4, r0
	bne _021D27C2
	mov r0, #0xd9
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl sub_02025F30
	add r1, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	lsl r1, r1, #1
	ldr r0, [r5, r0]
	add r1, #0x27
	bl sub_02021D6C
	b _021D27CE
_021D27C2:
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r7, #0
	bl sub_02021D6C
_021D27CE:
	mov r0, #0xe3
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
_021D27D6:
	ldr r0, [sp, #4]
	add r4, r4, #1
	add r0, r0, #2
	add r5, r5, #4
	add r6, #8
	add r7, r7, #2
	str r0, [sp, #4]
	cmp r4, #5
	blt _021D270A
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021D27F4
	ldr r0, _021D27F8 ; =0x0000064F
	bl sub_02005748
_021D27F4:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D27F8: .word 0x0000064F
	thumb_func_end ov59_021D26E8

	thumb_func_start ov59_021D27FC
ov59_021D27FC: ; 0x021D27FC
	push {r3, r4, r5, lr}
	mov r2, #0xcf
	add r5, r0, #0
	lsl r2, r2, #2
	add r4, r1, #0
	mov r0, #0x68
	mov r1, #8
	add r2, r5, r2
	mov r3, #0x33
	bl sub_02006F88
	mov r2, #0xcd
	lsl r2, r2, #2
	str r0, [r5, r2]
	add r2, #0xc
	add r0, r4, #0
	mov r1, #7
	add r2, r5, r2
	mov r3, #0x33
	bl sub_020071EC
	mov r3, #0xce
	lsl r3, r3, #2
	str r0, [r5, r3]
	mov r0, #0x33
	sub r3, #0xc
	str r0, [sp]
	mov r0, #0x68
	mov r1, #0x20
	mov r2, #1
	add r3, r5, r3
	bl sub_02006F50
	mov r1, #0xc9
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r3, #0x33
	str r3, [sp]
	lsl r3, r3, #4
	add r0, r4, #0
	mov r1, #9
	mov r2, #1
	add r3, r5, r3
	bl sub_020071B4
	mov r1, #0xca
	lsl r1, r1, #2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D27FC

	thumb_func_start ov59_021D2860
ov59_021D2860: ; 0x021D2860
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r6, r1, #0
	ldr r0, [sp, #0x18]
	add r1, r3, #0
	add r5, r2, #0
	bl sub_0205CA0C
	add r4, r0, #0
	ldr r0, [r6, #4]
	mov r2, #6
	ldr r6, [r0, #0xc]
	ldr r0, [r7, #4]
	lsl r2, r2, #8
	ldr r1, [r0, #0x14]
	add r0, r4, #0
	mul r0, r2
	add r0, r1, r0
	ldr r1, _021D28A0 ; =0x021D3290
	lsl r3, r5, #1
	ldrh r1, [r1, r3]
	bl sub_020C02BC
	lsl r0, r4, #5
	add r1, r5, #7
	add r0, r6, r0
	lsl r1, r1, #5
	mov r2, #0x20
	bl sub_020C0160
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D28A0: .word 0x021D3290
	thumb_func_end ov59_021D2860

	thumb_func_start ov59_021D28A4
ov59_021D28A4: ; 0x021D28A4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0xcd
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xc9
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0xca
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D28A4

	thumb_func_start ov59_021D28D4
ov59_021D28D4: ; 0x021D28D4
	mov r0, #1
	bx lr
	thumb_func_end ov59_021D28D4

	thumb_func_start ov59_021D28D8
ov59_021D28D8: ; 0x021D28D8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_0203608C
	cmp r0, #0
	bne _021D2924
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _021D28F6
	mov r0, #1
	bl sub_02037B58
	b _021D2906
_021D28F6:
	bl sub_02035E18
	add r0, r4, r0
	cmp r0, #5
	ble _021D2902
	mov r0, #5
_021D2902:
	bl sub_02037B58
_021D2906:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	ldr r0, _021D2928 ; =0x00004A55
	bne _021D2916
	mov r1, #2
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D2916:
	cmp r4, #0
	bne _021D2920
	mov r1, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D2920:
	mov r1, #0
	strb r1, [r5, r0]
_021D2924:
	pop {r3, r4, r5, pc}
	nop
_021D2928: .word 0x00004A55
	thumb_func_end ov59_021D28D8

	thumb_func_start ov59_021D292C
ov59_021D292C: ; 0x021D292C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	add r6, r1, #0
	bl ov59_021D2528
	add r5, r0, #0
	ldr r0, _021D2A20 ; =0x00004A48
	ldr r1, [r4, r0]
	cmp r5, r1
	ble _021D2956
	mov r2, #1
	add r0, sp, #0
	strb r2, [r0]
	mov r0, #0x75
	add r1, sp, #0
	bl sub_020359DC
	mov r1, #1
	ldr r0, _021D2A24 ; =0x00004A4C
	b _021D295A
_021D2956:
	mov r1, #0
	add r0, r0, #4
_021D295A:
	str r1, [r4, r0]
	ldr r0, _021D2A28 ; =0x00004A44
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021D296A
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D296A:
	cmp r5, #5
	bhi _021D2A10
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D297A: ; jump table
	.short _021D2A10 - _021D297A - 2 ; case 0
	.short _021D2986 - _021D297A - 2 ; case 1
	.short _021D29CA - _021D297A - 2 ; case 2
	.short _021D29CA - _021D297A - 2 ; case 3
	.short _021D29CA - _021D297A - 2 ; case 4
	.short _021D2A02 - _021D297A - 2 ; case 5
_021D2986:
	bl sub_02035E18
	cmp r0, #1
	bgt _021D2996
	bl sub_020318EC
	cmp r0, #1
	bls _021D299C
_021D2996:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D299C:
	mov r0, #0xd1
	mov r1, #0x11
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, r4, #0
	sub r1, #0x12
	bl ov59_021D28D8
	mov r0, #0x32
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D29C4
	mov r1, #0x33
	bl sub_02002154
	mov r0, #0x32
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r4, r0]
_021D29C4:
	add sp, #4
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_021D29CA:
	mov r0, #2
	bl sub_0205BEA8
	ldr r0, _021D2A28 ; =0x00004A44
	ldr r1, [r4, r0]
	cmp r5, r1
	bge _021D2A10
	add r0, #0x11
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _021D29E6
	cmp r0, #1
	beq _021D29F0
	b _021D29F8
_021D29E6:
	add r0, r4, #0
	add r1, r6, #0
	bl ov59_021D28D8
	b _021D29F8
_021D29F0:
	add r0, r4, #0
	mov r1, #0
	bl ov59_021D28D8
_021D29F8:
	bl sub_02035E18
	ldr r1, _021D2A20 ; =0x00004A48
	str r0, [r4, r1]
	b _021D2A10
_021D2A02:
	mov r0, #9
	bl sub_0205BEA8
	add r0, r4, #0
	add r1, r6, #0
	bl ov59_021D28D8
_021D2A10:
	bl ov59_021D2528
	ldr r1, _021D2A28 ; =0x00004A44
	str r0, [r4, r1]
	mov r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D2A20: .word 0x00004A48
_021D2A24: .word 0x00004A4C
_021D2A28: .word 0x00004A44
	thumb_func_end ov59_021D292C

	thumb_func_start ov59_021D2A2C
ov59_021D2A2C: ; 0x021D2A2C
	mov r0, #0x2c
	bx lr
	thumb_func_end ov59_021D2A2C

	thumb_func_start ov59_021D2A30
ov59_021D2A30: ; 0x021D2A30
	add r0, #0x2c
	bx lr
	thumb_func_end ov59_021D2A30

	thumb_func_start ov59_021D2A34
ov59_021D2A34: ; 0x021D2A34
	push {r4, r5, r6, r7}
	add r7, r0, #0
	add r6, r7, #0
	mov ip, r1
	mov r5, #5
	add r6, #0xdc
_021D2A40:
	add r4, r6, #0
	sub r4, #0x2c
	add r3, r6, #0
	mov r2, #5
_021D2A48:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2A48
	ldr r0, [r4, #0]
	sub r5, r5, #1
	sub r6, #0x2c
	str r0, [r3, #0]
	cmp r5, #2
	bgt _021D2A40
	add r7, #0x58
	mov r3, #5
_021D2A60:
	mov r2, ip
	ldmia r2!, {r0, r1}
	mov ip, r2
	stmia r7!, {r0, r1}
	sub r3, r3, #1
	bne _021D2A60
	mov r0, ip
	ldr r0, [r0, #0]
	str r0, [r7, #0]
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2A34

	thumb_func_start ov59_021D2A78
ov59_021D2A78: ; 0x021D2A78
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r4, r0, #0
	cmp r5, #2
	blt _021D2A86
	cmp r5, #5
	ble _021D2A8A
_021D2A86:
	bl sub_02022974
_021D2A8A:
	add r2, r5, #1
	cmp r2, #5
	bgt _021D2AB2
	mov r0, #0x2c
	mul r0, r2
	add r3, r4, r0
_021D2A96:
	add r6, r3, #0
	add r7, r3, #0
	sub r6, #0x2c
	mov r5, #5
_021D2A9E:
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	sub r5, r5, #1
	bne _021D2A9E
	ldr r0, [r7, #0]
	add r2, r2, #1
	add r3, #0x2c
	str r0, [r6, #0]
	cmp r2, #5
	ble _021D2A96
_021D2AB2:
	ldr r0, _021D2AC0 ; =0x0000FFFF
	add r1, r4, #0
	add r4, #0xdc
	add r1, #0xdc
	strh r0, [r4]
	strh r0, [r1, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2AC0: .word 0x0000FFFF
	thumb_func_end ov59_021D2A78

	thumb_func_start ov59_021D2AC4
ov59_021D2AC4: ; 0x021D2AC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	add r5, r2, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	cmp r0, #0
	ble _021D2B3E
	mov r7, #0x2c
_021D2ADC:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r6, [r0, #0]
	ldr r0, [sp, #4]
	cmp r1, r0
	beq _021D2B2C
	cmp r6, #0
	beq _021D2B2C
	add r0, r6, #0
	bl sub_0202B510
	cmp r0, #1
	beq _021D2B2C
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0202B530
	cmp r0, #0
	bne _021D2B2C
	mov r4, #0
_021D2B04:
	add r1, r4, #2
	add r2, r1, #0
	mul r2, r7
	add r0, r6, #0
	add r1, r5, r2
	bl sub_0202B530
	cmp r0, #0
	beq _021D2B1E
	add r0, r5, #0
	add r1, r4, #2
	bl ov59_021D2A78
_021D2B1E:
	add r4, r4, #1
	cmp r4, #4
	blt _021D2B04
	add r0, r5, #0
	add r1, r6, #0
	bl ov59_021D2A34
_021D2B2C:
	ldr r0, [sp, #8]
	add r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D2ADC
_021D2B3E:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2AC4

	thumb_func_start ov59_021D2B44
ov59_021D2B44: ; 0x021D2B44
	mov r0, #0x12
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2B44

	thumb_func_start ov59_021D2B4C
ov59_021D2B4C: ; 0x021D2B4C
	mov r0, #0x12
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2B4C

	thumb_func_start ov59_021D2B54
ov59_021D2B54: ; 0x021D2B54
	mov r0, #0x12
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D2B54

	thumb_func_start ov59_021D2B5C
ov59_021D2B5C: ; 0x021D2B5C
	push {r4, r5}
	ldr r4, _021D2B8C ; =0x021D33E4
	lsl r5, r0, #2
	ldr r0, [r4, r5]
	mov r2, #0
	ldrb r3, [r0]
	cmp r3, #0xff
	beq _021D2B84
	add r4, r0, #0
_021D2B6E:
	ldrb r3, [r0]
	cmp r1, r3
	bne _021D2B7A
	mov r0, #1
	pop {r4, r5}
	bx lr
_021D2B7A:
	add r2, r2, #1
	ldrb r3, [r4, r2]
	add r0, r0, #1
	cmp r3, #0xff
	bne _021D2B6E
_021D2B84:
	mov r0, #0
	pop {r4, r5}
	bx lr
	nop
_021D2B8C: .word 0x021D33E4
	thumb_func_end ov59_021D2B5C

	thumb_func_start ov59_021D2B90
ov59_021D2B90: ; 0x021D2B90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	ldr r1, [sp, #0x20]
	add r7, r2, #0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r3, [sp]
	str r1, [sp, #0x24]
	bl sub_02025E38
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	cmp r0, #0
	ble _021D2C22
_021D2BB2:
	mov r0, #0
	add r1, r5, #0
	mov r2, #0x48
	bl sub_020C4BB8
	add r0, r4, #0
	bl sub_02025F20
	str r0, [r5, #0]
	add r0, r4, #0
	bl sub_02025F30
	strb r0, [r5, #4]
	mov r0, #0xc
	strb r0, [r5, #5]
	mov r0, #2
	strb r0, [r5, #6]
	add r0, r4, #0
	bl sub_02025EF0
	add r1, r0, #0
	add r0, r5, #0
	add r0, #8
	mov r2, #8
	bl sub_020021D0
	add r3, r5, #0
	add r6, r7, #0
	add r3, #0x18
	mov r2, #6
_021D2BEE:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2BEE
	mov r0, #0
	strb r0, [r5, #0x19]
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _021D2C10
	ldrb r1, [r5, #0x18]
	ldr r0, [sp, #0x24]
	bl ov59_021D2B5C
	cmp r0, #0
	bne _021D2C10
	mov r0, #0
	strb r0, [r5, #0x18]
_021D2C10:
	ldr r0, [sp, #4]
	add r7, #0x30
	add r0, r0, #1
	str r0, [sp, #4]
	add r1, r0, #0
	ldr r0, [sp]
	add r5, #0x48
	cmp r1, r0
	blt _021D2BB2
_021D2C22:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2B90

	thumb_func_start ov59_021D2C28
ov59_021D2C28: ; 0x021D2C28
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B44
	cmp r4, r0
	beq _021D2C50
	bl sub_02022974
_021D2C50:
	mov r0, #1
	mov r2, #0x63
	str r0, [sp]
	mov r0, #3
	lsl r2, r2, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, r2
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2C28

	thumb_func_start ov59_021D2C70
ov59_021D2C70: ; 0x021D2C70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B4C
	cmp r4, r0
	beq _021D2C98
	bl sub_02022974
_021D2C98:
	mov r0, #1
	add r6, #0xc
	str r0, [sp]
	mov r3, #4
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2C70

	thumb_func_start ov59_021D2CB4
ov59_021D2CB4: ; 0x021D2CB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B54
	cmp r4, r0
	beq _021D2CDC
	bl sub_02022974
_021D2CDC:
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	add r6, #0xcc
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_021D2CB4

	thumb_func_start ov59_021D2CF8
ov59_021D2CF8: ; 0x021D2CF8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B44
	cmp r4, r0
	beq _021D2D20
	bl sub_02022974
_021D2D20:
	mov r0, #0
	mov r2, #0x63
	str r0, [sp]
	lsl r2, r2, #2
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, r2
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_021D2CF8

	thumb_func_start ov59_021D2D3C
ov59_021D2D3C: ; 0x021D2D3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B4C
	cmp r4, r0
	beq _021D2D64
	bl sub_02022974
_021D2D64:
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	add r6, #0xc
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_021D2D3C

	thumb_func_start ov59_021D2D80
ov59_021D2D80: ; 0x021D2D80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r2, #0
	add r5, r0, #0
	add r0, r1, #0
	add r1, r4, #0
	bl sub_02018184
	add r7, r0, #0
	add r0, r5, #0
	bl sub_0202440C
	add r6, r0, #0
	add r0, r5, #0
	bl ov59_021D2B54
	cmp r4, r0
	beq _021D2DA8
	bl sub_02022974
_021D2DA8:
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	add r6, #0xcc
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	mov r3, #4
	bl ov59_021D2B90
	add r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov59_021D2D80

	thumb_func_start ov59_021D2DC4
ov59_021D2DC4: ; 0x021D2DC4
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r4, r1, #0
	ldrb r1, [r6, #0x18]
	add r5, r0, #0
	cmp r1, #0
	bne _021D2DD6
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2DD6:
	add r0, r3, #0
	bl ov59_021D2B5C
	cmp r0, #0
	bne _021D2DE6
	mov r0, #0
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021D2DE6:
	mov r1, #0
	cmp r4, #0
	ble _021D2E10
	add r2, r5, #0
_021D2DEE:
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _021D2E08
	mov r0, #0x48
	mul r0, r1
	add r3, r5, r0
	mov r2, #9
_021D2DFC:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2DFC
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D2E08:
	add r1, r1, #1
	add r2, #0x48
	cmp r1, r4
	blt _021D2DEE
_021D2E10:
	mov r2, #0
	cmp r4, #0
	ble _021D2E3A
	add r1, r5, #0
_021D2E18:
	ldrb r0, [r1, #0x19]
	cmp r0, #3
	blo _021D2E32
	mov r0, #0x48
	mul r0, r2
	add r3, r5, r0
	mov r2, #9
_021D2E26:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D2E26
	mov r0, #1
	pop {r4, r5, r6, pc}
_021D2E32:
	add r2, r2, #1
	add r1, #0x48
	cmp r2, r4
	blt _021D2E18
_021D2E3A:
	mov r0, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2DC4

	thumb_func_start ov59_021D2E40
ov59_021D2E40: ; 0x021D2E40
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02032EE8
	cmp r0, #0
	bne _021D2E52
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2E52:
	bl sub_02025FCC
	cmp r0, #0
	beq _021D2E5C
	add r4, r5, #0
_021D2E5C:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov59_021D2E40

	thumb_func_start ov59_021D2E60
ov59_021D2E60: ; 0x021D2E60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	add r7, r2, #0
	str r0, [sp, #0x48]
	add r0, sp, #0x1c
	mov r1, #0
	mov r2, #0x10
	str r3, [sp, #8]
	ldr r5, [sp, #0x40]
	bl sub_020C4CF4
	mov r4, #0
	add r6, r4, #0
	cmp r7, #0
	ble _021D2F04
	str r5, [sp, #0x14]
_021D2E8A:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D2EF8
	mov r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x10]
	b _021D2EF2
_021D2E9A:
	add r0, r4, #1
	add r1, r7, #0
	bl sub_020E1F6C
	add r4, r1, #0
_021D2EA4:
	lsl r0, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D2E9A
	cmp r4, r6
	beq _021D2E9A
	add r0, sp, #0x1c
	ldrb r0, [r0, r4]
	cmp r0, #4
	beq _021D2E9A
	add r1, r0, #1
	add r0, sp, #0x1c
	strb r1, [r0, r4]
	ldr r0, [sp, #8]
	cmp r4, r0
	beq _021D2EE6
	ldr r2, [sp, #0x44]
	add r0, r4, #0
	add r1, r5, #0
	bl ov59_021D2E40
	add r3, r0, #0
	beq _021D2EE6
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r3, [r3, r2]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #4]
	add r2, r3, r2
	ldr r3, [sp, #0x48]
	bl ov59_021D2DC4
_021D2EE6:
	ldr r0, [sp, #0x10]
	add r0, #0x48
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
_021D2EF2:
	ldr r0, [sp, #0x18]
	cmp r0, #4
	blt _021D2EA4
_021D2EF8:
	ldr r0, [sp, #0x14]
	add r6, r6, #1
	add r0, r0, #4
	str r0, [sp, #0x14]
	cmp r6, r7
	blt _021D2E8A
_021D2F04:
	mov r0, #0x1b
	bl sub_02025C84
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2E60

	thumb_func_start ov59_021D2F10
ov59_021D2F10: ; 0x021D2F10
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	mov r1, #1
	str r1, [sp, #8]
	mov r1, #0x93
	lsl r1, r1, #2
	add r0, r0, r1
	mov r1, #0x10
	add r2, r5, #0
	add r3, r4, #0
	bl ov59_021D2E60
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2F10

	thumb_func_start ov59_021D2F38
ov59_021D2F38: ; 0x021D2F38
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	mov r1, #2
	str r1, [sp, #8]
	ldr r1, _021D2F5C ; =0x000006CC
	add r2, r5, #0
	add r0, r0, r1
	mov r1, #8
	add r3, r4, #0
	bl ov59_021D2E60
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D2F5C: .word 0x000006CC
	thumb_func_end ov59_021D2F38

	thumb_func_start ov59_021D2F60
ov59_021D2F60: ; 0x021D2F60
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	ldr r1, [sp, #0x18]
	str r3, [sp]
	str r1, [sp, #4]
	add r4, r2, #0
	mov r1, #0
	str r1, [sp, #8]
	ldr r1, _021D2F84 ; =0x0000090C
	add r2, r5, #0
	add r0, r0, r1
	mov r1, #8
	add r3, r4, #0
	bl ov59_021D2E60
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D2F84: .word 0x0000090C
	thumb_func_end ov59_021D2F60

	thumb_func_start ov59_021D2F88
ov59_021D2F88: ; 0x021D2F88
	push {r3, lr}
	bl sub_0202B4A0
	bl ov59_021D2A2C
	pop {r3, pc}
	thumb_func_end ov59_021D2F88

	thumb_func_start ov59_021D2F94
ov59_021D2F94: ; 0x021D2F94
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0202B4A0
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	add r0, r6, #0
	bl ov59_021D2A30
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020C4C14
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov59_021D2F94

	thumb_func_start ov59_021D2FBC
ov59_021D2FBC: ; 0x021D2FBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202B4A0
	add r2, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov59_021D2AC4
	pop {r4, pc}
	thumb_func_end ov59_021D2FBC

	thumb_func_start ov59_021D2FD4
ov59_021D2FD4: ; 0x021D2FD4
	push {r3, lr}
	bl sub_0202A750
	bl sub_02029C60
	pop {r3, pc}
	thumb_func_end ov59_021D2FD4

	thumb_func_start ov59_021D2FE0
ov59_021D2FE0: ; 0x021D2FE0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0202A750
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #0
	bl sub_02029CA8
	add r1, r4, #0
	add r2, r5, #0
	bl sub_020C4C14
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov59_021D2FE0

	thumb_func_start ov59_021D300C
ov59_021D300C: ; 0x021D300C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202A750
	add r2, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0x18
	ldr r3, [r4, #0x10]
	lsr r0, r0, #0x18
	bl sub_0202A6A8
	pop {r4, pc}
	thumb_func_end ov59_021D300C

	thumb_func_start ov59_021D3028
ov59_021D3028: ; 0x021D3028
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202440C
	ldr r1, [r4, #0x14]
	str r1, [sp]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov59_021D2F10
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D3028

	thumb_func_start ov59_021D3048
ov59_021D3048: ; 0x021D3048
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202440C
	ldr r1, [r4, #0x14]
	str r1, [sp]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov59_021D2F38
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D3048

	thumb_func_start ov59_021D3068
ov59_021D3068: ; 0x021D3068
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202440C
	ldr r1, [r4, #0x14]
	str r1, [sp]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	bl ov59_021D2F60
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
	thumb_func_end ov59_021D3068

	thumb_func_start ov59_021D3088
ov59_021D3088: ; 0x021D3088
	ldr r3, _021D308C ; =sub_0202E9FC
	bx r3
	; .align 2, 0
_021D308C: .word sub_0202E9FC
	thumb_func_end ov59_021D3088

	thumb_func_start ov59_021D3090
ov59_021D3090: ; 0x021D3090
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl sub_0202E8C0
	ldr r0, [r4, #0]
	str r0, [sp]
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	lsl r2, r2, #0x18
	ldr r1, [r4, #0xc]
	ldr r3, [r4, #0x10]
	lsr r2, r2, #0x18
	bl sub_0202ED0C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov59_021D3090

	thumb_func_start ov59_021D30B4
ov59_021D30B4: ; 0x021D30B4
	push {r4, r5, r6, lr}
	add r5, r2, #0
	add r6, r0, #0
	add r0, r1, #0
	add r1, r5, #0
	bl sub_02018184
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
	bl sub_020C4CF4
	add r0, r6, #0
	mov r1, #0
	add r2, r4, #0
	bl sub_02073700
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov59_021D30B4

	thumb_func_start ov59_021D30DC
ov59_021D30DC: ; 0x021D30DC
	bx lr
	; .align 2, 0
	thumb_func_end ov59_021D30DC

	thumb_func_start ov59_021D30E0
ov59_021D30E0: ; 0x021D30E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	ldr r6, _021D3134 ; =0x00000BB8
	ldr r5, _021D3138 ; =0x021D33FC
	str r1, [sp, #4]
	str r0, [sp, #8]
_021D30F0:
	ldr r0, [sp]
	ldr r1, [r5, #0]
	blx r1
	add r4, r0, #0
	ldr r0, [sp]
	ldr r3, [r5, #4]
	mov r1, #0x33
	add r2, r4, #0
	blx r3
	add r7, r0, #0
	cmp r6, r4
	bhi _021D310C
	bl sub_02022974
_021D310C:
	ldr r1, [sp, #4]
	add r0, r7, #0
	add r2, r4, #0
	bl sub_020C4C14
	add r0, r7, #0
	bl sub_020181C4
	ldr r0, [sp, #4]
	sub r6, r6, r4
	add r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r5, #0xc
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xa
	blt _021D30F0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3134: .word 0x00000BB8
_021D3138: .word 0x021D33FC
	thumb_func_end ov59_021D30E0

	thumb_func_start ov59_021D313C
ov59_021D313C: ; 0x021D313C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x68
	str r0, [sp]
	ldr r0, _021D3280 ; =0x00000BB8
	str r1, [sp, #4]
	str r0, [sp, #0x14]
	mov r0, #0x33
	str r0, [sp, #0x50]
	ldr r0, [sp]
	mov r7, #0
	str r0, [sp, #0x54]
	bl sub_0203608C
	add r5, r7, #0
	str r0, [sp, #0x5c]
	mov r0, #5
	str r0, [sp, #0x58]
	add r0, sp, #0x3c
	str r0, [sp, #0x60]
	add r0, sp, #0x28
	ldr r4, _021D3284 ; =0x021D33FC
	str r0, [sp, #0x64]
	str r5, [sp, #0x1c]
	str r5, [sp, #0x20]
	str r5, [sp, #0x24]
_021D316E:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	blx r1
	ldr r1, [sp, #0x1c]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x1c]
	cmp r5, #2
	blt _021D316E
	ldr r4, _021D3284 ; =0x021D33FC
	mov r5, #0
_021D3186:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	blx r1
	ldr r1, [sp, #0x20]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x20]
	cmp r5, #3
	blt _021D3186
	ldr r4, _021D3284 ; =0x021D33FC
	mov r5, #0
_021D319E:
	ldr r0, [sp]
	ldr r1, [r4, #0]
	blx r1
	ldr r1, [sp, #0x24]
	add r5, r5, #1
	add r0, r1, r0
	add r4, #0xc
	str r0, [sp, #0x24]
	cmp r5, #4
	blt _021D319E
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _021D3284 ; =0x021D33FC
	str r0, [sp, #0x10]
	add r0, sp, #0x1c
	str r0, [sp, #0xc]
_021D31BE:
	ldr r1, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, [sp, #0x14]
	str r0, [sp, #0x18]
	cmp r1, r0
	bhi _021D31D2
	bl sub_02022974
_021D31D2:
	mov r6, #0
	ldr r4, [sp, #4]
	add r5, r6, #0
_021D31D8:
	add r0, r6, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D31EA
	ldr r0, [sp, #0x60]
	add r1, r4, r7
	str r1, [r0, r5]
	b _021D31F0
_021D31EA:
	ldr r1, [sp, #0x60]
	mov r0, #0
	str r0, [r1, r5]
_021D31F0:
	mov r0, #0x2f
	lsl r0, r0, #6
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, #4
	cmp r6, #5
	blt _021D31D8
	ldr r0, [sp, #8]
	cmp r0, #7
	beq _021D320C
	cmp r0, #8
	beq _021D320C
	cmp r0, #9
	bne _021D323E
_021D320C:
	mov r6, #0
	ldr r4, [sp, #4]
	add r5, r6, #0
_021D3212:
	add r0, r6, #0
	bl sub_02032EE8
	cmp r0, #0
	beq _021D322A
	ldr r0, [sp, #0xc]
	sub r0, #0x1c
	ldr r0, [r0, #0]
	add r1, r4, r0
	ldr r0, [sp, #0x64]
	str r1, [r0, r5]
	b _021D3230
_021D322A:
	ldr r1, [sp, #0x64]
	mov r0, #0
	str r0, [r1, r5]
_021D3230:
	mov r0, #0x2f
	lsl r0, r0, #6
	add r6, r6, #1
	add r4, r4, r0
	add r5, r5, #4
	cmp r6, #5
	blt _021D3212
_021D323E:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021D324A
	add r0, sp, #0x50
	blx r1
_021D324A:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r7, r7, r0
	sub r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xa
	blo _021D31BE
	ldr r0, [sp]
	bl sub_0202440C
	add r4, r0, #0
	bl sub_0202E2EC
	add r0, r4, #0
	bl sub_0202E35C
	add sp, #0x68
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3280: .word 0x00000BB8
_021D3284: .word 0x021D33FC
	thumb_func_end ov59_021D313C
	; 0x021D3288

	.incbin "incbin/overlay59.bin"
