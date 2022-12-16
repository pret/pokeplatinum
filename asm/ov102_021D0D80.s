	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov102_021D0D80
ov102_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	mov r2, #2
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x54
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0x44
	mov r2, #0x54
	bl sub_0200681C
	mov r1, #0
	mov r2, #0x44
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0x54
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_02006840
	ldr r1, [r0, #0]
	str r1, [r4, #8]
	ldr r0, [r0, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	bl sub_02025E38
	str r0, [r4, #0xc]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	mov r0, #0
	add r1, r0, #0
	bl sub_020177BC
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D0E20 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D0E24 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	add r0, r4, #0
	bl ov102_021D0F8C
	add r0, r4, #0
	bl ov102_021D1174
	ldr r0, _021D0E28 ; =ov102_021D0F80
	add r1, r4, #0
	bl sub_02017798
	bl sub_0201FFD0
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D0E20: .word 0xFFFFE0FF
_021D0E24: .word 0x04001000
_021D0E28: .word ov102_021D0F80
	thumb_func_end ov102_021D0D80

	thumb_func_start ov102_021D0E2C
ov102_021D0E2C: ; 0x021D0E2C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	ldr r1, [r5, #0]
	add r4, r0, #0
	mov r6, #0
	cmp r1, #5
	bhi _021D0F40
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E4C: ; jump table
	.short _021D0E58 - _021D0E4C - 2 ; case 0
	.short _021D0EB4 - _021D0E4C - 2 ; case 1
	.short _021D0EC6 - _021D0E4C - 2 ; case 2
	.short _021D0ED8 - _021D0E4C - 2 ; case 3
	.short _021D0EFC - _021D0E4C - 2 ; case 4
	.short _021D0F36 - _021D0E4C - 2 ; case 5
_021D0E58:
	bl ov102_021D1224
	add r0, r4, #0
	bl ov102_021D1274
	add r0, r4, #0
	bl ov102_021D1420
	add r0, r6, #0
	mov r1, #1
	bl sub_02019120
	mov r0, #1
	add r1, r0, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	mov r0, #4
	mov r1, #1
	bl sub_02019120
	mov r0, #5
	mov r1, #1
	bl sub_02019120
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	add r0, r6, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #1
	str r0, [r5, #0]
	b _021D0F40
_021D0EB4:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0F40
	add r0, r6, #0
	str r0, [r4, #0x40]
	mov r0, #2
	str r0, [r5, #0]
	b _021D0F40
_021D0EC6:
	ldr r0, [r4, #0x40]
	cmp r0, #0x3c
	bge _021D0ED2
	add r0, r0, #1
	str r0, [r4, #0x40]
	b _021D0F40
_021D0ED2:
	mov r0, #3
	str r0, [r5, #0]
	b _021D0F40
_021D0ED8:
	mov r2, #0x3c
	ldrsh r3, [r4, r2]
	add r1, r2, #0
	sub r1, #0xfc
	cmp r3, r1
	ble _021D0EEE
	sub r1, r3, #4
	strh r1, [r4, #0x3c]
	bl ov102_021D1230
	b _021D0F40
_021D0EEE:
	sub r2, #0xfc
	strh r2, [r4, #0x3c]
	bl ov102_021D1230
	mov r0, #4
	str r0, [r5, #0]
	b _021D0F40
_021D0EFC:
	ldr r0, _021D0F48 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #1
	and r0, r1
	cmp r0, #1
	beq _021D0F18
	mov r0, #2
	and r0, r1
	cmp r0, #2
	beq _021D0F18
	ldr r0, _021D0F4C ; =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _021D0F40
_021D0F18:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
	mov r0, #5
	str r0, [r5, #0]
	b _021D0F40
_021D0F36:
	bl sub_0200F2AC
	cmp r0, #1
	bne _021D0F40
	mov r6, #1
_021D0F40:
	add r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D0F48: .word 0x021BF67C
_021D0F4C: .word 0x021BF6BC
	thumb_func_end ov102_021D0E2C

	thumb_func_start ov102_021D0F50
ov102_021D0F50: ; 0x021D0F50
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r6, r0, #0
	ldr r4, [r6, #0]
	bl ov102_021D1204
	add r0, r6, #0
	bl ov102_021D10F8
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r5, #0
	bl sub_02006830
	add r0, r4, #0
	bl sub_0201807C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov102_021D0F50

	thumb_func_start ov102_021D0F80
ov102_021D0F80: ; 0x021D0F80
	ldr r3, _021D0F88 ; =sub_0201C2B8
	ldr r0, [r0, #0x10]
	bx r3
	nop
_021D0F88: .word sub_0201C2B8
	thumb_func_end ov102_021D0F80

	thumb_func_start ov102_021D0F8C
ov102_021D0F8C: ; 0x021D0F8C
	push {r4, r5, lr}
	sub sp, #0x54
	ldr r5, _021D10EC ; =0x021D155C
	add r4, r0, #0
	add r3, sp, #0x2c
	mov r2, #5
_021D0F98:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D0F98
	add r0, sp, #0x2c
	bl sub_0201FE94
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0x1c
	ldr r5, _021D10F0 ; =0x021D1530
	str r0, [r4, #0x10]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D10F4 ; =0x021D1540
	add r3, sp, #0
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
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r3, #4
	strb r3, [r0, #0x13]
	lsl r3, r3, #0xa
	str r3, [sp, #8]
	mov r3, #2
	strb r3, [r0, #0x10]
	ldr r0, [r4, #0x10]
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02019EBC
	mov r2, #2
	add r0, sp, #0
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x13]
	lsl r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r1, #1
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02019EBC
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r2, #1
	strb r2, [r0, #0x13]
	lsl r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r1, #3
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl sub_02019EBC
	mov r1, #4
	mov r3, #0
	add r0, sp, #0
	strb r3, [r0, #0x12]
	strb r1, [r0, #0x13]
	lsl r2, r1, #0xa
	str r2, [sp, #8]
	mov r2, #2
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	add r2, sp, #0
	bl sub_020183C4
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl sub_02019EBC
	mov r2, #2
	add r0, sp, #0
	strb r2, [r0, #0x12]
	strb r2, [r0, #0x13]
	lsl r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r1, #5
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl sub_02019EBC
	mov r1, #4
	add r0, sp, #0
	strb r1, [r0, #0x12]
	mov r2, #1
	strb r2, [r0, #0x13]
	lsl r1, r2, #0xb
	str r1, [sp, #8]
	strb r2, [r0, #0x10]
	ldr r0, [r4, #0x10]
	mov r1, #7
	add r2, sp, #0
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl sub_02019EBC
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	add sp, #0x54
	pop {r4, r5, pc}
	; .align 2, 0
_021D10EC: .word 0x021D155C
_021D10F0: .word 0x021D1530
_021D10F4: .word 0x021D1540
	thumb_func_end ov102_021D0F8C

	thumb_func_start ov102_021D10F8
ov102_021D10F8: ; 0x021D10F8
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02019120
	mov r0, #1
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #4
	mov r1, #0
	bl sub_02019120
	mov r0, #5
	mov r1, #0
	bl sub_02019120
	mov r0, #6
	mov r1, #0
	bl sub_02019120
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x10]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x10]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0x10]
	mov r1, #7
	bl sub_02019044
	ldr r0, [r4, #0x10]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov102_021D10F8

	thumb_func_start ov102_021D1174
ov102_021D1174: ; 0x021D1174
	push {r4, lr}
	sub sp, #0x10
	ldr r1, _021D1200 ; =0x021D1528
	add r4, r0, #0
	ldrh r2, [r1]
	add r0, sp, #8
	strh r2, [r0]
	ldrh r2, [r1, #2]
	strh r2, [r0, #2]
	ldrh r2, [r1, #4]
	ldrh r1, [r1, #6]
	strh r2, [r0, #4]
	strh r1, [r0, #6]
	bl sub_0201D710
	mov r0, #1
	ldr r3, [r4, #0]
	mov r1, #0x1a
	add r2, r0, #0
	bl sub_0200B144
	str r0, [r4, #0x34]
	ldr r0, [r4, #0]
	bl sub_0200B358
	str r0, [r4, #0x38]
	mov r1, #0
	add r0, sp, #8
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x14
	add r2, sp, #8
	bl sub_0201A8D4
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0xc0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	mov r1, #4
	add r0, sp, #8
	strb r1, [r0]
	add r1, r4, #0
	ldr r0, [r4, #0x10]
	add r1, #0x24
	add r2, sp, #8
	bl sub_0201A8D4
	mov r1, #0
	mov r0, #1
	lsl r0, r0, #8
	str r0, [sp]
	mov r0, #0xc0
	add r4, #0x24
	str r0, [sp, #4]
	add r0, r4, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201AE78
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
_021D1200: .word 0x021D1528
	thumb_func_end ov102_021D1174

	thumb_func_start ov102_021D1204
ov102_021D1204: ; 0x021D1204
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x24
	bl sub_0201A8FC
	add r0, r4, #0
	add r0, #0x14
	bl sub_0201A8FC
	ldr r0, [r4, #0x38]
	bl sub_0200B3F0
	ldr r0, [r4, #0x34]
	bl sub_0200B190
	pop {r4, pc}
	thumb_func_end ov102_021D1204

	thumb_func_start ov102_021D1224
ov102_021D1224: ; 0x021D1224
	ldr r3, _021D122C ; =ov102_021D1230
	mov r1, #0
	strh r1, [r0, #0x3c]
	bx r3
	; .align 2, 0
_021D122C: .word ov102_021D1230
	thumb_func_end ov102_021D1224

	thumb_func_start ov102_021D1230
ov102_021D1230: ; 0x021D1230
	push {r4, lr}
	add r4, r0, #0
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #1
	mov r2, #3
	bl sub_02019184
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #5
	mov r2, #3
	add r3, #0xc0
	bl sub_02019184
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #0
	mov r2, #3
	bl sub_02019184
	mov r3, #0x3c
	ldrsh r3, [r4, r3]
	ldr r0, [r4, #0x10]
	mov r1, #4
	mov r2, #3
	add r3, #0xc0
	bl sub_02019184
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov102_021D1230

	thumb_func_start ov102_021D1274
ov102_021D1274: ; 0x021D1274
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D1294
	mov r0, #2
	str r0, [sp, #0x18]
	mov r0, #6
	str r0, [sp, #0x14]
	mov r0, #8
	mov r7, #0xa
	str r0, [sp, #0x10]
	mov r6, #0
	mov r4, #4
	b _021D12A6
_021D1294:
	mov r0, #3
	str r0, [sp, #0x18]
	mov r0, #7
	str r0, [sp, #0x14]
	mov r0, #9
	mov r7, #0xb
	str r0, [sp, #0x10]
	mov r6, #1
	mov r4, #5
_021D12A6:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r1, r7, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #3
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #3
	bl sub_02006E3C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r2, #0
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	mov r0, #0x84
	add r3, r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r1, r7, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #7
	bl sub_02006E60
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x18]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #7
	bl sub_02006E3C
	mov r0, #0x20
	str r0, [sp]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	mov r0, #0x84
	mov r2, #4
	mov r3, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #1
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0x10]
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, [r5, #0x10]
	mov r1, #1
	bl sub_02019448
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #1
	bl sub_02006E3C
	mov r3, #0x20
	str r3, [sp]
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #0x84
	mov r2, #0
	bl sub_02006E84
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r1, [sp, #0x10]
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #5
	bl sub_02006E60
	mov r0, #0x20
	str r0, [sp]
	mov r0, #0x18
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r2, #0
	ldr r0, [r5, #0x10]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019E2C
	ldr r0, [r5, #0x10]
	mov r1, #5
	bl sub_02019448
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	add r1, r6, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	mov r0, #0x84
	mov r3, #5
	bl sub_02006E3C
	mov r3, #0x20
	str r3, [sp]
	ldr r0, [r5, #0]
	add r1, r4, #0
	str r0, [sp, #4]
	mov r0, #0x84
	mov r2, #4
	bl sub_02006E84
	mov r0, #0
	ldr r3, [r5, #0]
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	ldr r3, [r5, #0]
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r2, [r5, #0]
	mov r0, #0
	mov r1, #0x40
	bl sub_02002E7C
	ldr r2, [r5, #0]
	mov r0, #4
	mov r1, #0x40
	bl sub_02002E7C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov102_021D1274

	thumb_func_start ov102_021D1420
ov102_021D1420: ; 0x021D1420
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #2
	ldr r1, [r5, #0]
	lsl r0, r0, #8
	bl sub_02023790
	add r4, r0, #0
	mov r0, #2
	ldr r1, [r5, #0]
	lsl r0, r0, #8
	bl sub_02023790
	add r6, r0, #0
	ldr r0, [r5, #0x34]
	mov r1, #0
	add r2, r6, #0
	bl sub_0200B1B8
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0xc]
	mov r1, #0
	bl sub_0200B498
	ldr r0, [r5, #0x38]
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0200C388
	mov r0, #0x20
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1524 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	add r2, r4, #0
	mov r3, #0x30
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #0x20
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1524 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x24
	add r2, r4, #0
	mov r3, #0x30
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020237BC
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021D14A0
	mov r1, #1
	b _021D14A2
_021D14A0:
	mov r1, #2
_021D14A2:
	ldr r0, [r5, #0x34]
	add r2, r4, #0
	bl sub_0200B1B8
	mov r3, #0x40
	str r3, [sp]
	mov r1, #0
	ldr r0, _021D1524 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	add r2, r4, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r3, #0x40
	str r3, [sp]
	mov r1, #0
	ldr r0, _021D1524 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r0, #0x24
	add r2, r4, #0
	bl sub_0201D78C
	ldr r0, [r5, #0x34]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200B1B8
	mov r0, #0x90
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1524 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x14
	add r2, r4, #0
	mov r3, #0x8a
	str r1, [sp, #0xc]
	bl sub_0201D78C
	mov r0, #0x90
	str r0, [sp]
	mov r1, #0
	ldr r0, _021D1524 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r5, #0x24
	add r0, r5, #0
	add r2, r4, #0
	mov r3, #0x8a
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D1524: .word 0x00010200
	thumb_func_end ov102_021D1420

	.rodata


	.global Unk_ov102_021D1528
Unk_ov102_021D1528: ; 0x021D1528
	.incbin "incbin/overlay102_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov102_021D1530
Unk_ov102_021D1530: ; 0x021D1530
	.incbin "incbin/overlay102_rodata.bin", 0x8, 0x18 - 0x8

	.global Unk_ov102_021D1540
Unk_ov102_021D1540: ; 0x021D1540
	.incbin "incbin/overlay102_rodata.bin", 0x18, 0x34 - 0x18

	.global Unk_ov102_021D155C
Unk_ov102_021D155C: ; 0x021D155C
	.incbin "incbin/overlay102_rodata.bin", 0x34, 0x28

