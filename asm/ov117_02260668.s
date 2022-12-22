	.include "macros/function.inc"
	.include "include/ov117_02260668.inc"

	.text

	thumb_func_start ov117_02260668
ov117_02260668: ; 0x02260668
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_0201FF00
	bl sub_0201FF68
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r1, [r0, #0]
	ldr r2, _02260954 ; =0xFFFFE0FF
	and r1, r2
	str r1, [r0, #0]
	ldr r1, _02260958 ; =0x04001000
	ldr r3, [r1, #0]
	and r2, r3
	str r2, [r1, #0]
	ldr r3, [r0, #0]
	ldr r2, _0226095C ; =0xFFFF1FFF
	and r3, r2
	str r3, [r0, #0]
	ldr r3, [r1, #0]
	add r0, #0x50
	and r2, r3
	str r2, [r1, #0]
	mov r3, #0x10
	mov r1, #1
	mov r2, #0x3f
	str r3, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #3
	str r0, [sp]
	ldr r0, _02260960 ; =0x04001050
	mov r1, #8
	mov r2, #0x1f
	mov r3, #0xd
	bl G2x_SetBlendAlpha_
	ldr r1, _02260964 ; =0x00003850
	add r0, r4, #0
	mov r2, #0x6e
	bl sub_0200681C
	ldr r2, _02260964 ; =0x00003850
	add r5, r0, #0
	mov r1, #0
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0xa8
	mov r1, #0x6e
	mov r2, #0x20
	bl sub_020182CC
	mov r0, #0x6e
	bl ov117_02260E14
	add r1, r5, #0
	add r1, #0x98
	str r0, [r1, #0]
	add r0, r4, #0
	bl sub_02006840
	str r0, [r5, #0]
	add r0, r5, #0
	bl ov117_022665FC
	mov r0, #0x6e
	bl sub_02002F38
	add r1, r5, #0
	add r1, #0x8c
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02003858
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #0
	lsl r2, r2, #8
	mov r3, #0x6e
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0x8c
	mov r1, #1
	ldr r0, [r0, #0]
	lsl r2, r1, #9
	mov r3, #0x6e
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #7
	ldr r0, [r0, #0]
	mov r1, #2
	lsl r2, r2, #6
	mov r3, #0x6e
	bl sub_02002F70
	add r0, r5, #0
	add r0, #0x8c
	mov r2, #2
	ldr r0, [r0, #0]
	mov r1, #3
	lsl r2, r2, #8
	mov r3, #0x6e
	bl sub_02002F70
	mov r0, #0x6e
	bl sub_02018340
	str r0, [r5, #0x2c]
	mov r0, #0x40
	mov r1, #0x6e
	bl sub_0201DBEC
	mov r0, #4
	mov r1, #8
	bl sub_02017DD4
	ldr r0, [r5, #0x2c]
	bl ov117_022610D8
	bl sub_0201E3D8
	mov r0, #4
	bl sub_0201E450
	add r0, r5, #0
	bl ov117_02260EC0
	mov r0, #0x6e
	bl sub_0200C6E4
	ldr r1, _02260968 ; =0x022669A8
	ldr r2, _0226096C ; =0x0226697C
	mov r3, #0x20
	str r0, [r5, #0x24]
	bl sub_0200C73C
	ldr r1, _02260970 ; =0x00100010
	mov r0, #1
	bl sub_0200966C
	mov r0, #1
	bl sub_02009704
	ldr r0, [r5, #0x24]
	bl sub_0200C704
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r2, #0xe0
	bl sub_0200C7C0
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, _02260974 ; =0x02266990
	bl sub_0200CB30
	ldr r0, [r5, #0x24]
	bl sub_0200C738
	mov r2, #0x16
	mov r1, #0
	lsl r2, r2, #0x10
	bl sub_0200964C
	add r0, r5, #0
	bl ov117_02261574
	mov r0, #0
	mov r1, #0x1a
	mov r2, #9
	mov r3, #0x6e
	bl sub_0200B144
	add r1, r5, #0
	add r1, #0x80
	str r0, [r1, #0]
	mov r0, #0x6e
	bl sub_0200B358
	add r1, r5, #0
	add r1, #0x84
	str r0, [r1, #0]
	mov r0, #5
	lsl r0, r0, #6
	mov r1, #0x6e
	bl sub_02023790
	add r1, r5, #0
	add r1, #0x88
	str r0, [r1, #0]
	mov r0, #0x13
	mov r1, #0x6e
	bl sub_02012744
	add r1, r5, #0
	add r1, #0x90
	str r0, [r1, #0]
	ldr r1, _02260978 ; =0x00001468
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02265210
	mov r0, #0xad
	mov r1, #0x6e
	bl sub_02006C24
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02261A2C
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02261AC8
	add r0, r5, #0
	bl ov117_02261280
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_0226168C
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02261940
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02261C2C
	add r0, r4, #0
	bl sub_02006CA8
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0xe0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0xe
	mov r2, #6
	mov r3, #0x6e
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0xe
	mov r2, #6
	mov r3, #0x6e
	bl sub_02003050
	add r0, r5, #0
	bl ov117_022613EC
	add r0, r5, #0
	mov r1, #0
	bl ov117_022614AC
	add r0, r5, #0
	bl ov117_02261368
	bl sub_02039734
	add r0, r5, #0
	bl ov117_022626B0
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1, #0]
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6e
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x1b
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _0226097C ; =ov117_02260F7C
	ldr r2, _02260980 ; =0x0000EA60
	add r1, r5, #0
	bl sub_0200D9E8
	add r1, r5, #0
	add r1, #0x94
	str r0, [r1, #0]
	ldr r0, _02260984 ; =0x021BF6DC
	mov r1, #1
	strb r1, [r0, #5]
	bl sub_0201FFE8
	bl sub_0201FFD0
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	mov r0, #1
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002B20
	ldr r0, [r5, #0x28]
	bl sub_0200D9B0
	mov r1, #0x6e
	bl ov114_0225CAD4
	str r0, [r5, #0x1c]
	bl ov114_0225CB74
	add r2, r0, #0
	add r0, r5, #0
	add r0, #0x8c
	lsl r2, r2, #0x14
	ldr r0, [r0, #0]
	mov r1, #2
	lsr r2, r2, #0x10
	mov r3, #0x60
	bl sub_02003070
	ldr r0, _02260988 ; =ov117_02260DA0
	add r1, r5, #0
	bl sub_02017798
	ldr r0, [r5, #0]
	add r0, #0x3c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0226094C
	mov r0, #0x6e
	bl ov4_021D1E74
_0226094C:
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02260954: .word 0xFFFFE0FF
_02260958: .word 0x04001000
_0226095C: .word 0xFFFF1FFF
_02260960: .word 0x04001050
_02260964: .word 0x00003850
_02260968: .word 0x022669A8
_0226096C: .word 0x0226697C
_02260970: .word 0x00100010
_02260974: .word 0x02266990
_02260978: .word 0x00001468
_0226097C: .word ov117_02260F7C
_02260980: .word 0x0000EA60
_02260984: .word 0x021BF6DC
_02260988: .word ov117_02260DA0
	thumb_func_end ov117_02260668

	thumb_func_start ov117_0226098C
ov117_0226098C: ; 0x0226098C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r1, [r4, #0]
	add r2, r1, #0
	add r2, #0x3d
	ldrb r2, [r2]
	cmp r2, #1
	bne _022609F6
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	cmp r0, #0
	beq _022609B2
	cmp r0, #1
	b _022609E0
_022609B2:
	bl sub_0200F2AC
	cmp r0, #1
	bne _022609BE
	bl sub_0200F2C0
_022609BE:
	mov r0, #0
	bl sub_0200F370
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02260BE0 ; =0xFFFF1FFF
	and r0, r1
	str r0, [r2, #0]
	ldr r1, [r4, #0]
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, #0x3e
	add r0, r0, #1
	strb r0, [r1]
	b _022609F0
_022609E0:
	add r0, r1, #0
	bl ov114_0225CA98
	cmp r0, #1
	bne _022609F0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_022609F0:
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, pc}
_022609F6:
	ldr r2, [r5, #0]
	cmp r2, #6
	bhi _02260A60
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_02260A08: ; jump table
	.short _02260A16 - _02260A08 - 2 ; case 0
	.short _02260A26 - _02260A08 - 2 ; case 1
	.short _02260A34 - _02260A08 - 2 ; case 2
	.short _02260A46 - _02260A08 - 2 ; case 3
	.short _02260A56 - _02260A08 - 2 ; case 4
	.short _02260A6E - _02260A08 - 2 ; case 5
	.short _02260BBA - _02260A08 - 2 ; case 6
_02260A16:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A26:
	mov r0, #0xd3
	bl sub_020364F0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A34:
	mov r0, #0xd3
	bl sub_02036540
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A46:
	bl ov117_022666A4
	cmp r0, #1
	bne _02260A60
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A56:
	add r1, #0x30
	ldrb r1, [r1]
	ldr r2, [r4, #8]
	cmp r2, r1
	bhs _02260A62
_02260A60:
	b _02260BC8
_02260A62:
	bl ov117_0226200C
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _02260BC8
_02260A6E:
	mov r1, #0xbf
	lsl r1, r1, #6
	ldr r1, [r4, r1]
	cmp r1, #1
	bne _02260A9A
	bl ov117_02266150
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x6e
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0x1a
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_02260A9A:
	add r0, r4, #0
	bl ov117_02262664
	ldr r0, [r4, #0x20]
	cmp r0, #7
	bhi _02260B78
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260AB2: ; jump table
	.short _02260B78 - _02260AB2 - 2 ; case 0
	.short _02260AC2 - _02260AB2 - 2 ; case 1
	.short _02260B0E - _02260AB2 - 2 ; case 2
	.short _02260B28 - _02260AB2 - 2 ; case 3
	.short _02260B34 - _02260AB2 - 2 ; case 4
	.short _02260B78 - _02260AB2 - 2 ; case 5
	.short _02260B5E - _02260AB2 - 2 ; case 6
	.short _02260B6A - _02260AB2 - 2 ; case 7
_02260AC2:
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0, #0]
	ldr r1, _02260BE0 ; =0xFFFF1FFF
	add r3, r0, #0
	and r2, r1
	lsr r1, r0, #0xc
	orr r1, r2
	str r1, [r0, #0]
	add r1, r0, #0
	ldr r2, _02260BE4 ; =0x0000044C
	add r1, #0x42
	strh r2, [r1]
	add r1, r0, #0
	ldr r2, _02260BE8 ; =0x0000A8B8
	add r1, #0x46
	strh r2, [r1]
	add r3, #0x48
	ldrh r2, [r3]
	ldr r1, _02260BEC ; =0xFFFFC0FF
	and r2, r1
	lsr r1, r0, #0xe
	orr r1, r2
	strh r1, [r3]
	add r0, #0x4a
	ldrh r2, [r0]
	mov r1, #0x3f
	bic r2, r1
	mov r1, #0x1f
	orr r2, r1
	mov r1, #0x20
	orr r1, r2
	strh r1, [r0]
	add r0, r4, #0
	bl ov117_02266210
	mov r0, #2
	str r0, [r4, #0x20]
_02260B0E:
	ldr r1, _02260BF0 ; =0x0000174C
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02266274
	cmp r0, #1
	bne _02260B78
	ldr r0, _02260BF4 ; =0x00001768
	mov r1, #1
	str r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x20]
	b _02260B78
_02260B28:
	ldr r0, [r4, #0x1c]
	bl ov114_0225CB8C
	mov r0, #4
	str r0, [r4, #0x20]
	b _02260B78
_02260B34:
	ldr r0, [r4, #0x1c]
	bl ov114_0225CBE0
	cmp r0, #1
	bne _02260B78
	ldr r0, _02260BF8 ; =0x00002FB8
	mov r1, #1
	str r1, [r4, r0]
	ldr r0, _02260BFC ; =0x00001559
	mov r1, #0
	strb r1, [r4, r0]
	mov r0, #5
	str r0, [r4, #0x20]
	add r0, r4, #0
	bl ov117_022613B8
	add r0, r4, #0
	mov r1, #1
	bl ov117_022614AC
	b _02260B78
_02260B5E:
	ldr r0, [r4, #0x1c]
	bl ov114_0225CBB0
	mov r0, #7
	str r0, [r4, #0x20]
	b _02260B78
_02260B6A:
	ldr r0, [r4, #0x1c]
	bl ov114_0225CBE0
	cmp r0, #1
	bne _02260B78
	mov r0, #8
	str r0, [r4, #0x20]
_02260B78:
	add r0, r4, #0
	bl ov117_022623B0
	add r0, r4, #0
	bl ov117_02262270
	ldr r0, _02260C00 ; =0x00002FBC
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _02260BC8
	add r0, r4, #0
	bl ov117_02262200
	cmp r0, #1
	bne _02260B9C
	ldr r0, _02260C04 ; =0x00002FC4
	mov r1, #0xd
	str r1, [r4, r0]
_02260B9C:
	ldr r1, _02260BF8 ; =0x00002FB8
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02260BC8
	sub r0, r1, #4
	ldr r2, [r4, r0]
	ldr r0, _02260C08 ; =0x00000516
	cmp r2, r0
	bhi _02260BC8
	sub r0, r1, #4
	ldr r0, [r4, r0]
	add r2, r0, #1
	sub r0, r1, #4
	str r2, [r4, r0]
	b _02260BC8
_02260BBA:
	bl sub_0200F2AC
	cmp r0, #1
	bne _02260BC8
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02260BC8:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov117_022626AC
	ldr r0, _02260C0C ; =0x0000384C
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_02260BE0: .word 0xFFFF1FFF
_02260BE4: .word 0x0000044C
_02260BE8: .word 0x0000A8B8
_02260BEC: .word 0xFFFFC0FF
_02260BF0: .word 0x0000174C
_02260BF4: .word 0x00001768
_02260BF8: .word 0x00002FB8
_02260BFC: .word 0x00001559
_02260C00: .word 0x00002FBC
_02260C04: .word 0x00002FC4
_02260C08: .word 0x00000516
_02260C0C: .word 0x0000384C
	thumb_func_end ov117_0226098C

	thumb_func_start ov117_02260C10
ov117_02260C10: ; 0x02260C10
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _02260D94 ; =0x00002FD0
	ldr r1, [r4, r0]
	ldr r0, [r4, #0]
	str r1, [r0, #0x24]
	ldr r0, [r4, #0x1c]
	bl ov114_0225CB38
	add r0, r4, #0
	bl ov117_022641E4
	add r0, r4, #0
	bl ov117_02264508
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	add r0, r4, #0
	bl ov117_022615E0
	add r0, r4, #0
	bl ov117_022618E8
	add r0, r4, #0
	bl ov117_022619F8
	add r0, r4, #0
	bl ov117_02261AC4
	add r0, r4, #0
	bl ov117_02261C28
	add r0, r4, #0
	bl ov117_02261DD0
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov117_02262760
	add r5, r4, #0
	mov r6, #0
	add r5, #0x30
_02260C72:
	add r0, r5, #0
	bl sub_0201A8FC
	add r6, r6, #1
	add r5, #0x10
	cmp r6, #5
	blt _02260C72
	mov r0, #1
	mov r1, #0
	bl sub_0201FF0C
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	ldr r0, [r4, #0x2c]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #5
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #6
	bl sub_02019044
	ldr r0, [r4, #0x2c]
	mov r1, #7
	bl sub_02019044
	add r0, r4, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	bl sub_020127BC
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x28]
	bl sub_0200D0B0
	ldr r0, [r4, #0x24]
	bl sub_0200C8D4
	bl sub_0201DC3C
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_02002FA0
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_02002F54
	add r0, r4, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_020237BC
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_0200B3F0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	bl sub_0200B190
	ldr r0, [r4, #0x2c]
	bl sub_020181C4
	add r0, r4, #0
	bl ov117_02260F64
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0, #0]
	bl sub_0200DA58
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _02260D98 ; =0xFFFF1FFF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _02260D9C ; =0x04001000
	add r4, #0x98
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [r4, #0]
	bl ov117_02260EB8
	bl sub_0201E530
	add r0, r7, #0
	bl sub_02006830
	mov r0, #0
	bl sub_02002AC8
	mov r0, #0
	bl sub_02002AE4
	mov r0, #0
	bl sub_02002B20
	bl sub_02039794
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260D94: .word 0x00002FD0
_02260D98: .word 0xFFFF1FFF
_02260D9C: .word 0x04001000
	thumb_func_end ov117_02260C10

	thumb_func_start ov117_02260DA0
ov117_02260DA0: ; 0x02260DA0
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	bl ov117_02262950
	bl sub_0201DCAC
	bl sub_0200C800
	add r0, r4, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	bl sub_02003694
	ldr r0, _02260E04 ; =0x00001454
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _02260DD8
	mov r0, #7
	mov r1, #1
	bl sub_02019120
	ldr r0, _02260E04 ; =0x00001454
	mov r1, #0
	strb r1, [r4, r0]
	b _02260DEE
_02260DD8:
	add r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _02260DEE
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	ldr r0, _02260E08 ; =0x00001455
	mov r1, #0
	strb r1, [r4, r0]
_02260DEE:
	ldr r0, [r4, #0x2c]
	bl sub_0201C2B8
	ldr r3, _02260E0C ; =0x027E0000
	ldr r1, _02260E10 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02260E04: .word 0x00001454
_02260E08: .word 0x00001455
_02260E0C: .word 0x027E0000
_02260E10: .word 0x00003FF8
	thumb_func_end ov117_02260DA0

	thumb_func_start ov117_02260E14
ov117_02260E14: ; 0x02260E14
	push {r3, lr}
	sub sp, #8
	mov r1, #2
	str r1, [sp]
	ldr r1, _02260E30 ; =ov117_02260E34
	mov r2, #1
	str r1, [sp, #4]
	mov r1, #0
	add r3, r1, #0
	bl sub_02024220
	add sp, #8
	pop {r3, pc}
	nop
_02260E30: .word ov117_02260E34
	thumb_func_end ov117_02260E14

	thumb_func_start ov117_02260E34
ov117_02260E34: ; 0x02260E34
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	ldr r0, _02260EA0 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r2, [r0]
	ldr r1, _02260EA4 ; =0xFFFFCFFD
	and r2, r1
	strh r2, [r0]
	add r2, r1, #2
	ldrh r3, [r0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _02260EA8 ; =0x0000CFFB
	and r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	and r1, r2
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, _02260EAC ; =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r1, _02260EB0 ; =0xBFFF0000
	ldr r0, _02260EB4 ; =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_02260EA0: .word 0x04000008
_02260EA4: .word 0xFFFFCFFD
_02260EA8: .word 0x0000CFFB
_02260EAC: .word 0x00007FFF
_02260EB0: .word 0xBFFF0000
_02260EB4: .word 0x04000580
	thumb_func_end ov117_02260E34

	thumb_func_start ov117_02260EB8
ov117_02260EB8: ; 0x02260EB8
	ldr r3, _02260EBC ; =sub_020242C4
	bx r3
	; .align 2, 0
_02260EBC: .word sub_020242C4
	thumb_func_end ov117_02260EB8

	thumb_func_start ov117_02260EC0
ov117_02260EC0: ; 0x02260EC0
	push {r4, lr}
	sub sp, #0x18
	ldr r3, _02260F58 ; =0x02266938
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0xc
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	mov r0, #0x6e
	bl sub_020203AC
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	mov r1, #0x7b
	str r0, [sp, #8]
	ldr r2, _02260F5C ; =0x02266918
	ldr r3, _02260F60 ; =0x00000FA4
	add r0, sp, #0xc
	lsl r1, r1, #0xc
	bl sub_020206D0
	add r2, r4, #0
	add r2, #0x9c
	mov r0, #1
	mov r1, #0xe1
	ldr r2, [r2, #0]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_020203D4
	mov r0, #0x6e
	bl sub_020203AC
	add r1, r4, #0
	add r1, #0xa0
	str r0, [r1, #0]
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	mov r1, #5
	str r0, [sp, #8]
	ldr r2, _02260F5C ; =0x02266918
	ldr r3, _02260F60 ; =0x00000FA4
	add r0, sp, #0xc
	lsl r1, r1, #0x10
	bl sub_020206D0
	add r4, #0xa0
	mov r0, #1
	mov r1, #0xe1
	ldr r2, [r4, #0]
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	add sp, #0x18
	pop {r4, pc}
	nop
_02260F58: .word 0x02266938
_02260F5C: .word 0x02266918
_02260F60: .word 0x00000FA4
	thumb_func_end ov117_02260EC0

	thumb_func_start ov117_02260F64
ov117_02260F64: ; 0x02260F64
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_020203B8
	add r4, #0xa0
	ldr r0, [r4, #0]
	bl sub_020203B8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02260F64

	thumb_func_start ov117_02260F7C
ov117_02260F7C: ; 0x02260F7C
	push {r4, lr}
	sub sp, #0x40
	mov r0, #1
	lsl r0, r0, #0xc
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x30]
	add r0, sp, #4
	add r4, r1, #0
	bl MTX_Identity33_
	ldr r1, _022610B0 ; =0x000015A8
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02265F34
	ldr r1, _022610B4 ; =0x00001468
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02265254
	ldr r1, _022610B8 ; =0x00001560
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02265C1C
	add r0, r4, #0
	bl ov117_02263EF8
	ldr r2, _022610BC ; =0x00001428
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	add r2, r4, r2
	bl ov117_02263D80
	add r0, r4, #0
	bl ov117_02264560
	add r0, r4, #0
	bl ov117_02261F3C
	add r0, r4, #0
	bl ov117_02264930
	bl sub_020241B4
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl sub_020203D4
	add r1, r4, #0
	add r1, #0x9c
	ldr r1, [r1, #0]
	mov r0, #1
	bl sub_02020854
	bl sub_020203EC
	mov r0, #0
	ldr r2, _022610C0 ; =0xFFFFF000
	add r1, r0, #0
	add r3, r0, #0
	bl NNS_G3dGlbLightVector
	ldr r1, _022610C4 ; =0x0000739C
	mov r0, #0
	bl NNS_G3dGlbLightColor
	ldr r0, _022610C8 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorDiffAmb
	ldr r0, _022610C8 ; =0x00007FFF
	mov r2, #0
	add r1, r0, #0
	bl NNS_G3dGlbMaterialColorSpecEmi
	add r0, sp, #0x28
	bl NNS_G3dGlbSetBaseTrans
	ldr r1, _022610CC ; =0x021C5B48
	add r0, sp, #4
	bl MI_Copy36B
	ldr r1, _022610D0 ; =0x021C5B0C
	mov r0, #0xa4
	ldr r2, [r1, #0x7c]
	bic r2, r0
	add r0, sp, #0x34
	str r2, [r1, #0x7c]
	bl NNS_G3dGlbSetBaseScale
	bl NNS_G3dGlbFlushP
	add r1, r4, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov117_02262798
	mov r1, #0
	mov r0, #0x11
	add r2, r1, #0
	bl NNS_G3dGeBufferOP_N
	ldr r0, _022610D4 ; =0x000013B0
	add r0, r4, r0
	bl sub_02017294
	add r0, r4, #0
	add r0, #0xe8
	bl sub_02017294
	add r0, r4, #0
	bl ov117_02261FA4
	mov r2, #1
	mov r0, #0x12
	add r1, sp, #0
	str r2, [sp]
	bl NNS_G3dGeBufferOP_N
	bl sub_020241B4
	bl sub_0201469C
	cmp r0, #0
	ble _0226108C
	bl sub_020241B4
_0226108C:
	bl sub_020146C0
	ldr r0, [r4, #0x28]
	bl sub_0200C7EC
	bl sub_0200C808
	mov r0, #0
	add r1, r0, #0
	bl sub_020241BC
	ldr r1, [r4, #0x2c]
	mov r0, #0x6e
	bl sub_02038A1C
	add sp, #0x40
	pop {r4, pc}
	nop
_022610B0: .word 0x000015A8
_022610B4: .word 0x00001468
_022610B8: .word 0x00001560
_022610BC: .word 0x00001428
_022610C0: .word 0xFFFFF000
_022610C4: .word 0x0000739C
_022610C8: .word 0x00007FFF
_022610CC: .word 0x021C5B48
_022610D0: .word 0x021C5B0C
_022610D4: .word 0x000013B0
	thumb_func_end ov117_02260F7C

	thumb_func_start ov117_022610D8
ov117_022610D8: ; 0x022610D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r5, r0, #0
	bl sub_0201FF00
	ldr r4, _0226126C ; =0x022669C8
	add r3, sp, #0x10
	mov r2, #5
_022610E8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022610E8
	add r0, sp, #0x10
	bl sub_0201FE94
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r4, _02261270 ; =0x02266944
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r4, _02261274 ; =0x02266A40
	add r3, sp, #0x38
	mov r2, #0xa
_02261148:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02261148
	ldr r0, [r4, #0]
	mov r1, #1
	str r0, [r3, #0]
	add r0, r5, #0
	add r2, sp, #0x38
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #1
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #2
	add r2, sp, #0x54
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #2
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	add r0, r5, #0
	mov r1, #3
	add r2, sp, #0x70
	mov r3, #0
	bl sub_020183C4
	add r0, r5, #0
	mov r1, #3
	bl sub_02019EBC
	mov r2, #0
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl sub_02019184
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r1, _02261278 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	mov r0, #1
	add r1, r0, #0
	bl sub_0201FF0C
	mov r4, #0
	ldr r6, _0226127C ; =0x02266A94
	add r7, r4, #0
_022611F4:
	cmp r4, #3
	bge _0226120A
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl sub_020183C4
	b _0226121A
_0226120A:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #1
	bl sub_020183C4
_0226121A:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x6e
	bl sub_02019690
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_02019EBC
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
	blo _022611F4
	mov r0, #7
	mov r1, #0
	bl sub_02019120
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0226126C: .word 0x022669C8
_02261270: .word 0x02266944
_02261274: .word 0x02266A40
_02261278: .word 0x04000008
_0226127C: .word 0x02266A94
	thumb_func_end ov117_022610D8

	thumb_func_start ov117_02261280
ov117_02261280: ; 0x02261280
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	mov r0, #3
	lsl r0, r0, #8
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x2c]
	add r1, #0x30
	mov r2, #1
	mov r3, #0xb
	bl sub_0201A7E8
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xc5
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x2c]
	add r1, #0x40
	mov r2, #4
	mov r3, #0x12
	bl sub_0201A7E8
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xca
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x2c]
	add r1, #0x50
	mov r2, #4
	mov r3, #0x15
	bl sub_0201A7E8
	mov r0, #0xe
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0xcf
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r4, #0x2c]
	add r1, #0x60
	mov r2, #4
	mov r3, #1
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x40
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x50
	mov r1, #0xf
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x60
	mov r1, #0xf
	bl sub_0201ADA4
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r2, #4
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	ldr r0, _02261364 ; =0x00000359
	add r1, #0x70
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x2c]
	mov r3, #2
	bl sub_0201A7E8
	add r4, #0x70
	add r0, r4, #0
	mov r1, #0xf
	bl sub_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02261364: .word 0x00000359
	thumb_func_end ov117_02261280

	thumb_func_start ov117_02261368
ov117_02261368: ; 0x02261368
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r2, #0x35
	add r5, r0, #0
	add r0, #0x70
	mov r1, #1
	lsl r2, r2, #4
	mov r3, #6
	bl sub_0200DC48
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #3
	bl sub_0200B1EC
	mov r1, #0
	add r4, r0, #0
	str r1, [sp]
	ldr r0, _022613B4 ; =0x0001020F
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x70
	add r2, r4, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	add r5, #0x70
	add r0, r5, #0
	bl sub_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022613B4: .word 0x0001020F
	thumb_func_end ov117_02261368

	thumb_func_start ov117_022613B8
ov117_022613B8: ; 0x022613B8
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _022613E8 ; =0x000003FF
	mov r1, #4
	mov r3, #1
	bl sub_02019CB8
	ldr r0, [r4, #0x2c]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	nop
_022613E8: .word 0x000003FF
	thumb_func_end ov117_022613B8

	thumb_func_start ov117_022613EC
ov117_022613EC: ; 0x022613EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	bl sub_0203608C
	str r0, [sp, #0x10]
	add r0, r5, #0
	str r0, [sp, #0x18]
	add r0, #0x30
	mov r4, #0
	str r0, [sp, #0x18]
	b _02261490
_02261404:
	ldr r0, [r5, #0]
	ldr r2, [sp, #0x10]
	add r1, r0, r4
	add r1, #0x2c
	ldrb r1, [r1]
	cmp r2, r1
	beq _0226148E
	bl ov114_0225C7CC
	mov r1, #0x6e
	bl sub_02025F04
	ldr r1, [r5, #0]
	add r6, r0, #0
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	add r0, r5, #0
	bl ov117_022622C4
	str r0, [sp, #0x14]
	ldr r0, [r5, #0]
	add r1, r0, r4
	add r1, #0x2c
	ldrb r1, [r1]
	bl ov114_0225C7A4
	cmp r0, #1
	bne _02261442
	ldr r7, _022614A0 ; =0x0007080F
	b _02261444
_02261442:
	ldr r7, _022614A4 ; =0x0001020F
_02261444:
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	lsr r1, r0, #0x1f
	add r1, r0, r1
	asr r2, r1, #1
	mov r1, #0x28
	sub r3, r1, r2
	mov r1, #1
	tst r0, r1
	beq _02261460
	sub r3, r3, #1
_02261460:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0]
	add r2, r6, #0
	add r0, #0x30
	ldrb r0, [r0]
	lsl r1, r0, #2
	ldr r0, _022614A8 ; =0x02266968
	add r1, r0, r1
	ldr r0, [sp, #0x14]
	ldrb r0, [r0, r1]
	lsl r1, r0, #4
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	mov r1, #0
	bl sub_0201D78C
	add r0, r6, #0
	bl sub_020181C4
_0226148E:
	add r4, r4, #1
_02261490:
	ldr r0, [r5, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blt _02261404
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022614A0: .word 0x0007080F
_022614A4: .word 0x0001020F
_022614A8: .word 0x02266968
	thumb_func_end ov117_022613EC

	thumb_func_start ov117_022614AC
ov117_022614AC: ; 0x022614AC
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	cmp r1, #1
	bne _02261504
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	mov r3, #0
	bl sub_02019CB8
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r3, #0x11
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	bl sub_02019CB8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	mov r3, #0x14
	bl sub_02019CB8
	b _02261562
_02261504:
	ldr r0, [r4, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _02261514
	cmp r0, #3
	beq _0226154A
	b _02261562
_02261514:
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	mov r3, #0
	bl sub_02019CB8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	mov r3, #0x14
	bl sub_02019CB8
	b _02261562
_0226154A:
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	mov r3, #0x11
	str r3, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	ldr r2, _02261570 ; =0x000003FF
	bl sub_02019CB8
_02261562:
	ldr r0, [r4, #0x2c]
	mov r1, #4
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	nop
_02261570: .word 0x000003FF
	thumb_func_end ov117_022614AC

	thumb_func_start ov117_02261574
ov117_02261574: ; 0x02261574
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_02014000
	mov r1, #0x12
	mov r0, #0x6e
	lsl r1, r1, #0xa
	bl sub_02018144
	add r2, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0x6e
	str r0, [sp, #4]
	mov r3, #0x12
	ldr r0, _022615D8 ; =ov117_02261644
	ldr r1, _022615DC ; =ov117_02261668
	lsl r3, r3, #0xa
	bl sub_02014014
	add r1, r4, #0
	add r1, #0xa4
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02014784
	add r2, r0, #0
	mov r0, #1
	mov r1, #0xe1
	lsl r0, r0, #0xc
	lsl r1, r1, #0xe
	bl sub_020206BC
	mov r0, #0xbe
	mov r1, #0
	mov r2, #0x6e
	bl sub_020144C4
	add r4, #0xa4
	add r1, r0, #0
	ldr r0, [r4, #0]
	mov r2, #0xa
	mov r3, #1
	bl sub_020144CC
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_022615D8: .word ov117_02261644
_022615DC: .word ov117_02261668
	thumb_func_end ov117_02261574

	thumb_func_start ov117_022615E0
ov117_022615E0: ; 0x022615E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	bl sub_02014730
	add r4, #0xa4
	add r5, r0, #0
	ldr r0, [r4, #0]
	bl sub_0201411C
	add r0, r5, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_022615E0

	thumb_func_start ov117_02261600
ov117_02261600: ; 0x02261600
	push {r3, lr}
	add r3, r0, #0
	cmp r1, #0
	beq _02261612
	cmp r1, #1
	beq _02261620
	cmp r1, #2
	beq _0226162E
	b _0226163C
_02261612:
	add r0, #0xa4
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_020146F4
	pop {r3, pc}
_02261620:
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #0
	bl sub_020146F4
	pop {r3, pc}
_0226162E:
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r1, #2
	mov r2, #0
	bl sub_020146F4
	pop {r3, pc}
_0226163C:
	bl GF_AssertFail
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov117_02261600

	thumb_func_start ov117_02261644
ov117_02261644: ; 0x02261644
	push {r4, lr}
	ldr r3, _02261664 ; =0x02100DEC
	mov r2, #0
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bne _02261656
	bl GF_AssertFail
_02261656:
	add r0, r4, #0
	bl sub_020145B4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_02261664: .word 0x02100DEC
	thumb_func_end ov117_02261644

	thumb_func_start ov117_02261668
ov117_02261668: ; 0x02261668
	push {r4, lr}
	ldr r3, _02261688 ; =0x02100DF4
	mov r2, #1
	ldr r3, [r3, #0]
	blx r3
	add r4, r0, #0
	bne _0226167A
	bl GF_AssertFail
_0226167A:
	add r0, r4, #0
	bl sub_020145F4
	lsl r0, r4, #0x10
	lsr r0, r0, #0xd
	pop {r4, pc}
	nop
_02261688: .word 0x02100DF4
	thumb_func_end ov117_02261668

	thumb_func_start ov117_0226168C
ov117_0226168C: ; 0x0226168C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r5, r0, #0
	str r1, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618C4 ; =0x00002713
	str r1, [sp, #0x2c]
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	mov r1, #2
	bl sub_0200CDC4
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x1e
	sub r0, r1, r0
	lsr r0, r0, #1
	add r4, r0, #6
	add r2, r5, #0
	ldr r3, _022618C8 ; =0x0000169C
	str r6, [sp]
	mov r0, #0
	ldr r1, _022618CC ; =0x000E0F00
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r1, _022618C4 ; =0x00002713
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r1, r4, #0
	add r1, #0x24
	str r1, [sp, #0x14]
	mov r1, #0xa8
	str r1, [sp, #0x18]
	str r0, [sp, #0x1c]
	mov r0, #1
	str r0, [sp, #0x20]
	mov r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #2
	str r0, [sp, #0x28]
	add r2, #0x90
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2, #0]
	add r3, r5, r3
	bl ov117_02265DB8
	add r0, r6, #0
	bl sub_020237BC
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200B1EC
	str r0, [sp, #0x30]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_0200B1EC
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x34]
	ldr r0, _022618D0 ; =0x000015AC
	add r7, r5, r0
	add r0, #0x14
	add r6, r5, r0
_02261740:
	ldr r0, [sp, #0x30]
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022618CC ; =0x000E0F00
	add r2, #0x90
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022618C4 ; =0x00002713
	add r3, r7, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, #0xa8
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #3
	str r0, [sp, #0x20]
	mov r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0xa
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2, #0]
	bl ov117_02265DB8
	ldr r0, [sp, #0x38]
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _022618CC ; =0x000E0F00
	add r2, #0x90
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _022618C4 ; =0x00002713
	add r3, r6, #0
	str r0, [sp, #0x10]
	str r4, [sp, #0x14]
	mov r0, #0xa8
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #3
	str r0, [sp, #0x20]
	mov r0, #0xc
	str r0, [sp, #0x24]
	mov r0, #0xa
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x2c]
	ldr r1, [r5, #0x28]
	ldr r2, [r2, #0]
	bl ov117_02265DB8
	ldr r0, [sp, #0x34]
	add r4, r4, #6
	add r0, r0, #1
	add r7, #0x28
	add r6, #0x28
	str r0, [sp, #0x34]
	cmp r0, #6
	blt _02261740
	ldr r0, [sp, #0x30]
	bl sub_020237BC
	ldr r0, [sp, #0x38]
	bl sub_020237BC
	ldr r0, _022618D4 ; =0x000015A8
	add r0, r5, r0
	bl ov117_02265EC8
	add r0, r5, #0
	bl ov117_02266150
	ldr r0, [sp, #0x2c]
	mov r1, #2
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618D8 ; =0x00002714
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022618DC ; =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x18
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022618DC ; =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x1a
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022618DC ; =0x00002712
	ldr r2, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x19
	bl sub_0200CE54
	add r0, r5, #0
	bl ov117_02266130
	ldr r1, _022618D4 ; =0x000015A8
	str r0, [r5, r1]
	mov r0, #0xab
	str r0, [sp]
	mov r0, #0x14
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022618DC ; =0x00002712
	mov r1, #2
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CD7C
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, _022618E0 ; =0x00002711
	mov r2, #0xab
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x15
	bl sub_0200CBDC
	mov r0, #0
	str r0, [sp]
	ldr r0, _022618E0 ; =0x00002711
	mov r2, #0xab
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x16
	bl sub_0200CE0C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022618E0 ; =0x00002711
	mov r2, #0xab
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x17
	bl sub_0200CE3C
	add r0, r5, #0
	bl ov117_02266244
	ldr r1, _022618E4 ; =0x0000174C
	str r0, [r5, r1]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_022618C4: .word 0x00002713
_022618C8: .word 0x0000169C
_022618CC: .word 0x000E0F00
_022618D0: .word 0x000015AC
_022618D4: .word 0x000015A8
_022618D8: .word 0x00002714
_022618DC: .word 0x00002712
_022618E0: .word 0x00002711
_022618E4: .word 0x0000174C
	thumb_func_end ov117_0226168C

	thumb_func_start ov117_022618E8
ov117_022618E8: ; 0x022618E8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r0, _02261930 ; =0x000015AC
	mov r6, #0
	add r4, r7, r0
	add r0, #0x14
	add r5, r7, r0
_022618F6:
	add r0, r4, #0
	bl ov117_02265EB0
	add r0, r5, #0
	bl ov117_02265EB0
	add r6, r6, #1
	add r4, #0x28
	add r5, #0x28
	cmp r6, #6
	blt _022618F6
	ldr r0, _02261934 ; =0x0000169C
	add r0, r7, r0
	bl ov117_02265EB0
	add r0, r7, #0
	bl ov117_02266210
	ldr r1, _02261938 ; =0x000015A8
	add r0, r7, #0
	ldr r1, [r7, r1]
	bl ov117_02266238
	ldr r1, _0226193C ; =0x0000174C
	add r0, r7, #0
	ldr r1, [r7, r1]
	bl ov117_02266268
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261930: .word 0x000015AC
_02261934: .word 0x0000169C
_02261938: .word 0x000015A8
_0226193C: .word 0x0000174C
	thumb_func_end ov117_022618E8

	thumb_func_start ov117_02261940
ov117_02261940: ; 0x02261940
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	str r4, [sp]
	mov r0, #0x17
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #9
	str r0, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022619E4 ; =0x00002716
	mov r1, #3
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _022619E8 ; =0x00002714
	add r2, r4, #0
	str r0, [sp, #8]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x14
	bl sub_0200CC3C
	mov r0, #0
	str r0, [sp]
	ldr r0, _022619E8 ; =0x00002714
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x16
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _022619E8 ; =0x00002714
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	mov r3, #0x15
	bl sub_0200CE54
	add r0, r5, #0
	bl ov117_022648E0
	ldr r1, _022619EC ; =0x00001458
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02264FB0
	ldr r1, _022619F0 ; =0x00001468
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02265064
	ldr r1, _022619F4 ; =0x00001560
	add r0, r5, #0
	add r1, r5, r1
	bl ov117_02265ABC
	add r0, r5, #0
	bl ov117_02264BF8
	add r0, r5, #0
	bl ov117_02264D1C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022619E4: .word 0x00002716
_022619E8: .word 0x00002714
_022619EC: .word 0x00001458
_022619F0: .word 0x00001468
_022619F4: .word 0x00001560
	thumb_func_end ov117_02261940

	thumb_func_start ov117_022619F8
ov117_022619F8: ; 0x022619F8
	push {r4, lr}
	add r4, r0, #0
	bl ov117_02264914
	ldr r1, _02261A20 ; =0x00001458
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_0226504C
	ldr r1, _02261A24 ; =0x00001468
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_022651E0
	ldr r1, _02261A28 ; =0x00001560
	add r0, r4, #0
	add r1, r4, r1
	bl ov117_02265B3C
	pop {r4, pc}
	; .align 2, 0
_02261A20: .word 0x00001458
_02261A24: .word 0x00001468
_02261A28: .word 0x00001560
	thumb_func_end ov117_022619F8

	thumb_func_start ov117_02261A2C
ov117_02261A2C: ; 0x02261A2C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0xad
	mov r2, #4
	mov r3, #0x6e
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #2
	mov r3, #3
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	mov r1, #3
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	add r3, r1, #0
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r3, #2
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #1
	mov r3, #2
	bl sub_0200710C
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	add r5, #0x8c
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	mov r2, #2
	add r3, r1, #0
	bl sub_020038B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov117_02261A2C

	thumb_func_start ov117_02261AC4
ov117_02261AC4: ; 0x02261AC4
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02261AC4

	thumb_func_start ov117_02261AC8
ov117_02261AC8: ; 0x02261AC8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0xa0
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x8c
	add r4, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0xad
	mov r2, #5
	mov r3, #0x6e
	bl sub_02003050
	mov r0, #1
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #6
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #0xad
	mov r2, #6
	mov r3, #0x6e
	bl sub_02002FEC
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0xd
	mov r3, #6
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0xe
	mov r3, #6
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x12
	mov r3, #5
	bl sub_020070E8
	ldr r0, [r5, #0]
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #2
	beq _02261B64
	cmp r0, #3
	beq _02261B7E
	b _02261B98
_02261B64:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0xf
	mov r3, #5
	bl sub_0200710C
	b _02261BB0
_02261B7E:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x10
	mov r3, #5
	bl sub_0200710C
	b _02261BB0
_02261B98:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x11
	mov r3, #5
	bl sub_0200710C
_02261BB0:
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x12
	mov r3, #4
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6e
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x2c]
	add r0, r4, #0
	mov r1, #0x13
	mov r3, #4
	bl sub_0200710C
	add r0, r5, #0
	bl ov117_02264AF0
	add r0, r5, #0
	bl ov117_02264AB0
	mov r0, #0
	str r0, [sp]
	mov r0, #0x6e
	str r0, [sp, #4]
	mov r2, #0x35
	ldr r0, [r5, #0x2c]
	mov r1, #4
	lsl r2, r2, #4
	mov r3, #6
	bl sub_0200DAA4
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	mov r1, #1
	mov r2, #0x60
	mov r3, #0x20
	bl sub_02003070
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	add r5, #0x8c
	ldr r0, [r5, #0]
	mov r2, #2
	bl sub_020038B0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov117_02261AC8

	thumb_func_start ov117_02261C28
ov117_02261C28: ; 0x02261C28
	bx lr
	; .align 2, 0
	thumb_func_end ov117_02261C28

	thumb_func_start ov117_02261C2C
ov117_02261C2C: ; 0x02261C2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #8]
	str r0, [sp, #0x10]
	add r0, #0xd8
	str r1, [sp, #0xc]
	str r0, [sp, #0x10]
	mov r7, #0
	bl sub_0203608C
	add r1, r0, #0
	ldr r0, [sp, #8]
	bl ov117_0226235C
	add r4, r0, #0
	mov r1, #0x14
	mul r4, r1
	ldr r2, _02261DB4 ; =0x022669F0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	mov r3, #0x6e
	bl sub_020170D8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, #0x10
	bl sub_02017258
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	ldr r2, _02261DB8 ; =0xFFFE7000
	add r0, #0x10
	add r3, r1, #0
	bl sub_02017350
	ldr r0, [sp, #0x10]
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	ldr r0, [sp, #0x10]
	mov r1, #1
	add r0, #0x10
	bl sub_02017348
	ldr r2, _02261DBC ; =0x022669F4
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	add r0, #0x88
	mov r3, #0x6e
	bl sub_020170D8
	ldr r2, _02261DC0 ; =0x022669F8
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	add r0, #0x98
	mov r3, #0x6e
	bl sub_020170D8
	ldr r2, _02261DC4 ; =0x022669FC
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	add r0, #0xa8
	mov r3, #0x6e
	bl sub_020170D8
	ldr r2, _02261DC8 ; =0x02266A00
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	ldr r2, [r2, r4]
	add r0, #0xb8
	mov r3, #0x6e
	bl sub_020170D8
	add r0, r7, #0
	str r0, [sp, #0x1c]
	mov r1, #0x51
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	add r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	str r0, [sp, #0x24]
	add r0, #0xa8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	add r0, #0x88
	str r0, [sp, #0x20]
_02261CEC:
	mov r0, #0
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x14]
	ldr r6, [sp, #0x10]
	str r0, [sp, #0x18]
_02261CF6:
	cmp r7, #0
	bne _02261D18
	mov r0, #0x6e
	str r0, [sp]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x18]
	str r0, [sp, #4]
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r4, #0
	add r3, #0x23
	bl sub_02017164
	mov r0, #0x51
	lsl r0, r0, #2
	ldr r7, [r6, r0]
	b _02261D24
_02261D18:
	ldr r3, [sp, #0x24]
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl sub_02017190
_02261D24:
	add r0, r5, #0
	mov r1, #0
	bl sub_02017240
	ldr r0, [sp, #0x18]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x90
	add r6, #0x90
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _02261CF6
	mov r0, #9
	ldr r1, [sp, #0x14]
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #0x14]
	mov r0, #9
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #8
	blt _02261CEC
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	mov r2, #0x1e
	add r0, r1, r0
	ldr r1, [sp, #0xc]
	mov r3, #0x6e
	bl sub_020170D8
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	add r2, r1, #0
	add r0, r1, r0
	ldr r1, _02261DCC ; =0x000013A0
	add r0, #0x10
	add r1, r2, r1
	bl sub_02017258
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	ldr r2, _02261DB8 ; =0xFFFE7000
	add r0, r1, r0
	mov r1, #0
	add r0, #0x10
	add r3, r1, #0
	bl sub_02017350
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	add r0, r1, r0
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, #0x10
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	ldr r1, [sp, #8]
	ldr r0, _02261DCC ; =0x000013A0
	add r0, r1, r0
	add r0, #0x10
	mov r1, #1
	bl sub_02017348
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261DB4: .word 0x022669F0
_02261DB8: .word 0xFFFE7000
_02261DBC: .word 0x022669F4
_02261DC0: .word 0x022669F8
_02261DC4: .word 0x022669FC
_02261DC8: .word 0x02266A00
_02261DCC: .word 0x000013A0
	thumb_func_end ov117_02261C2C

	thumb_func_start ov117_02261DD0
ov117_02261DD0: ; 0x02261DD0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r6, #0xd8
	str r0, [sp]
	add r0, r6, #0
	bl sub_02017110
	add r5, r6, #0
	mov r4, #0
	add r5, #0x88
_02261DE6:
	add r0, r5, #0
	bl sub_02017110
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #4
	blt _02261DE6
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x51
	lsl r0, r0, #2
	add r7, r6, r0
	ldr r6, [sp]
	add r6, #0xa8
_02261E02:
	mov r4, #0
	add r5, r7, #0
_02261E06:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020171A0
	add r4, r4, #1
	add r5, #0x90
	cmp r4, #4
	blt _02261E06
	mov r0, #9
	lsl r0, r0, #6
	add r7, r7, r0
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blt _02261E02
	ldr r1, _02261E34 ; =0x000013A0
	ldr r0, [sp]
	add r0, r0, r1
	bl sub_02017110
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261E34: .word 0x000013A0
	thumb_func_end ov117_02261DD0

	thumb_func_start ov117_02261E38
ov117_02261E38: ; 0x02261E38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0x4b
	lsl r0, r0, #4
	add r5, #0xd8
	cmp r1, r0
	ble _02261E4C
	mov r2, #3
	b _02261E5E
_02261E4C:
	cmp r1, #2
	ble _02261E54
	mov r2, #2
	b _02261E5E
_02261E54:
	cmp r1, #1
	ble _02261E5C
	mov r2, #1
	b _02261E5E
_02261E5C:
	mov r2, #0
_02261E5E:
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x88
	mov r1, #0x90
	str r0, [sp, #4]
	lsl r0, r2, #4
	mul r1, r2
	mov r3, #9
	mov ip, r0
	mov r0, #0
	add r1, r5, r1
	lsl r3, r3, #6
_02261E76:
	add r4, r1, #0
	add r4, #0xc8
	ldr r4, [r4, #0]
	cmp r4, #0
	bne _02261EF2
	add r4, r2, #0
	mov r1, #0x90
	mul r4, r1
	lsl r1, r0, #3
	add r0, r0, r1
	lsl r7, r0, #6
	add r0, r5, #0
	add r0, #0xcc
	add r6, r0, r7
	ldr r1, [sp, #4]
	mov r2, ip
	add r0, r6, r4
	add r1, r1, r2
	bl sub_02017258
	mov r1, #0
	ldr r2, _02261F00 ; =0xFFFE7000
	add r0, r6, r4
	add r3, r1, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r6, r4
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r6, r4
	mov r1, #1
	bl sub_02017348
	mov r0, #0x51
	lsl r0, r0, #2
	add r0, r5, r0
	add r0, r0, r7
	str r0, [sp]
	add r0, r0, r4
	mov r1, #0
	bl sub_02017240
	ldr r1, [sp]
	add r0, r6, r4
	add r1, r1, r4
	bl sub_0201727C
	add r0, r5, r7
	add r0, r0, r4
	mov r1, #1
	add r0, #0xc8
	str r1, [r0, #0]
	ldr r0, _02261F04 ; =0x00000579
	bl sub_02005748
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02261EF2:
	add r0, r0, #1
	add r1, r1, r3
	cmp r0, #8
	blt _02261E76
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02261F00: .word 0xFFFE7000
_02261F04: .word 0x00000579
	thumb_func_end ov117_02261E38

	thumb_func_start ov117_02261F08
ov117_02261F08: ; 0x02261F08
	push {r4, r5, r6, lr}
	add r4, r0, #0
	lsl r0, r1, #3
	add r0, r1, r0
	add r4, #0xd8
	lsl r6, r0, #6
	add r0, r4, #0
	add r0, #0xcc
	mov r3, #0x90
	add r5, r2, #0
	mul r5, r3
	add r3, #0xb4
	add r1, r4, r3
	add r0, r0, r6
	add r1, r1, r6
	add r0, r0, r5
	add r1, r1, r5
	bl sub_02017288
	add r0, r4, r6
	add r0, r0, r5
	mov r1, #0
	add r0, #0xc8
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov117_02261F08

	thumb_func_start ov117_02261F3C
ov117_02261F3C: ; 0x02261F3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	mov r1, #0x51
	str r0, [sp]
	str r0, [sp, #8]
	add r0, #0xd8
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r0, r1
	mov r7, #0
	str r0, [sp, #4]
_02261F52:
	ldr r4, [sp, #8]
	ldr r5, [sp, #4]
	mov r6, #0
_02261F58:
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02261F7A
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02017204
	cmp r0, #1
	bne _02261F7A
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r6, #0
	bl ov117_02261F08
_02261F7A:
	add r6, r6, #1
	add r4, #0x90
	add r5, #0x90
	cmp r6, #4
	blt _02261F58
	mov r0, #9
	ldr r1, [sp, #8]
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp, #8]
	mov r0, #9
	ldr r1, [sp, #4]
	lsl r0, r0, #6
	add r0, r1, r0
	add r7, r7, #1
	str r0, [sp, #4]
	cmp r7, #8
	blt _02261F52
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov117_02261F3C

	thumb_func_start ov117_02261FA4
ov117_02261FA4: ; 0x02261FA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r0, #0xd8
	str r0, [sp]
	ldr r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r7, #0xcc
_02261FB6:
	ldr r4, [sp]
	mov r6, #0
	add r5, r7, #0
_02261FBC:
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02261FCC
	add r0, r5, #0
	bl sub_02017294
_02261FCC:
	add r6, r6, #1
	add r4, #0x90
	add r5, #0x90
	cmp r6, #4
	blt _02261FBC
	mov r0, #9
	ldr r1, [sp]
	lsl r0, r0, #6
	add r0, r1, r0
	str r0, [sp]
	mov r0, #9
	lsl r0, r0, #6
	add r7, r7, r0
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	blt _02261FB6
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov117_02261FA4

	thumb_func_start ov117_02261FF4
ov117_02261FF4: ; 0x02261FF4
	push {r4, lr}
	add r4, r0, #0
	bl sub_0203608C
	ldr r1, [r4, #4]
	cmp r1, r0
	bne _02262006
	mov r0, #1
	pop {r4, pc}
_02262006:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02261FF4

	thumb_func_start ov117_0226200C
ov117_0226200C: ; 0x0226200C
	push {r4, r5, r6, r7}
	ldr r5, [r0, #0]
	ldr r3, [r0, #0xc]
	add r4, r5, #0
	add r4, #0x30
	ldrb r6, [r4]
	add r1, r5, #0
	add r1, #0x2c
	mov r2, #1
	ldrb r1, [r1]
	cmp r6, #1
	ble _0226203C
	add r4, r0, #4
_02262026:
	ldr r7, [r4, #0xc]
	cmp r3, r7
	bhs _02262034
	add r1, r5, r2
	add r1, #0x2c
	ldrb r1, [r1]
	add r3, r7, #0
_02262034:
	add r2, r2, #1
	add r4, r4, #4
	cmp r2, r6
	blt _02262026
_0226203C:
	str r1, [r0, #4]
	add r0, r1, #0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov117_0226200C

	thumb_func_start ov117_02262044
ov117_02262044: ; 0x02262044
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	str r1, [sp]
	add r5, r2, #0
	bl ov117_022620E0
	cmp r0, #1
	beq _02262096
	ldr r0, _02262098 ; =0x00002F04
	mov r1, #0x3c
	add r6, r4, r0
	ldr r0, [sp]
	lsl r7, r0, #2
	ldr r0, [r6, r7]
	bl _s32_div_f
	add r0, r1, #0
	ldr r1, _0226209C ; =0x00001C1C
	mov r3, #0x4b
	ldr r2, [sp]
	lsl r3, r3, #4
	add r1, r4, r1
	mul r3, r2
	add r2, r1, r3
	mov r1, #0x14
	mul r1, r0
	ldr r0, [r6, r7]
	add r4, r2, r1
	add r0, r0, #1
	str r0, [r6, r7]
	ldr r0, [r2, r1]
	cmp r0, #0
	beq _0226208A
	bl GF_AssertFail
_0226208A:
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r5, #0]
	str r0, [r4, #0]
_02262096:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262098: .word 0x00002F04
_0226209C: .word 0x00001C1C
	thumb_func_end ov117_02262044

	thumb_func_start ov117_022620A0
ov117_022620A0: ; 0x022620A0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r7, r1, #0
	ldr r0, _022620D8 ; =0x00002F14
	lsl r4, r7, #2
	add r5, r6, r0
	ldr r0, [r5, r4]
	mov r1, #0x3c
	bl _s32_div_f
	ldr r0, _022620DC ; =0x00001C1C
	add r2, r6, r0
	mov r0, #0x4b
	lsl r0, r0, #4
	mul r0, r7
	add r0, r2, r0
	mov r2, #0x14
	mul r2, r1
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _022620D4
	ldr r1, [r5, r4]
	add r0, r0, r2
	add r1, r1, #1
	str r1, [r5, r4]
	pop {r3, r4, r5, r6, r7, pc}
_022620D4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022620D8: .word 0x00002F14
_022620DC: .word 0x00001C1C
	thumb_func_end ov117_022620A0

	thumb_func_start ov117_022620E0
ov117_022620E0: ; 0x022620E0
	push {r3, r4, r5, lr}
	add r4, r2, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #7
	bhi _02262128
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022620F8: ; jump table
	.short _02262128 - _022620F8 - 2 ; case 0
	.short _02262128 - _022620F8 - 2 ; case 1
	.short _02262108 - _022620F8 - 2 ; case 2
	.short _02262108 - _022620F8 - 2 ; case 3
	.short _02262108 - _022620F8 - 2 ; case 4
	.short _02262108 - _022620F8 - 2 ; case 5
	.short _02262108 - _022620F8 - 2 ; case 6
	.short _02262108 - _022620F8 - 2 ; case 7
_02262108:
	ldr r0, _0226212C ; =0x00002EF0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02262114
	bl GF_AssertFail
_02262114:
	ldr r0, _0226212C ; =0x00002EF0
	add r2, r5, r0
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262128:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0226212C: .word 0x00002EF0
	thumb_func_end ov117_022620E0

	thumb_func_start ov117_02262130
ov117_02262130: ; 0x02262130
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov117_0226217C
	cmp r0, #1
	beq _02262170
	ldr r0, _02262174 ; =0x00002F24
	mov r1, #0x3c
	ldr r0, [r5, r0]
	bl _s32_div_f
	ldr r0, _02262178 ; =0x0000176C
	add r2, r5, r0
	mov r0, #0x14
	mul r0, r1
	ldr r1, _02262174 ; =0x00002F24
	add r6, r2, r0
	ldr r3, [r5, r1]
	add r3, r3, #1
	str r3, [r5, r1]
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _02262164
	bl GF_AssertFail
_02262164:
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r4, #0]
	str r0, [r6, #0]
_02262170:
	pop {r4, r5, r6, pc}
	nop
_02262174: .word 0x00002F24
_02262178: .word 0x0000176C
	thumb_func_end ov117_02262130

	thumb_func_start ov117_0226217C
ov117_0226217C: ; 0x0226217C
	push {r4, lr}
	add r2, r1, #0
	ldr r1, [r2, #0]
	cmp r1, #7
	bhi _022621CC
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_02262192: ; jump table
	.short _022621CC - _02262192 - 2 ; case 0
	.short _022621CC - _02262192 - 2 ; case 1
	.short _022621A2 - _02262192 - 2 ; case 2
	.short _022621A2 - _02262192 - 2 ; case 3
	.short _022621A2 - _02262192 - 2 ; case 4
	.short _022621A2 - _02262192 - 2 ; case 5
	.short _022621A2 - _02262192 - 2 ; case 6
	.short _022621A2 - _02262192 - 2 ; case 7
_022621A2:
	ldr r3, _022621D0 ; =0x00002EDC
	ldr r4, [r0, r3]
	cmp r4, #0
	bne _022621BC
	add r3, r0, r3
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	mov r0, #1
	pop {r4, pc}
_022621BC:
	cmp r1, r4
	bne _022621C4
	mov r0, #1
	pop {r4, pc}
_022621C4:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
_022621CC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_022621D0: .word 0x00002EDC
	thumb_func_end ov117_0226217C

	thumb_func_start ov117_022621D4
ov117_022621D4: ; 0x022621D4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _022621F8 ; =0x00002F28
	mov r1, #0x3c
	ldr r0, [r4, r0]
	bl _s32_div_f
	ldr r0, _022621FC ; =0x0000176C
	add r2, r1, #0
	add r3, r4, r0
	mov r0, #0x14
	mul r2, r0
	ldr r1, [r3, r2]
	add r0, r3, r2
	cmp r1, #0
	bne _022621F6
	mov r0, #0
_022621F6:
	pop {r4, pc}
	; .align 2, 0
_022621F8: .word 0x00002F28
_022621FC: .word 0x0000176C
	thumb_func_end ov117_022621D4

	thumb_func_start ov117_02262200
ov117_02262200: ; 0x02262200
	push {r3, r4, r5, lr}
	ldr r2, _02262264 ; =0x00002FC4
	add r5, r0, #0
	ldr r1, [r5, r2]
	cmp r1, #0
	ble _02262214
	sub r0, r1, #1
	str r0, [r5, r2]
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262214:
	add r1, r2, #0
	sub r1, #0xe8
	ldr r1, [r5, r1]
	cmp r1, #0
	beq _02262238
	sub r2, #0xe8
	add r1, r5, r2
	bl ov117_02266624
	cmp r0, #1
	bne _02262234
	ldr r0, _02262268 ; =0x00002EDC
	mov r1, #0
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262234:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262238:
	bl ov117_022621D4
	add r4, r0, #0
	bne _02262244
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262244:
	add r0, r5, #0
	add r1, r4, #0
	bl ov117_02266624
	cmp r0, #1
	bne _02262260
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, _0226226C ; =0x00002F28
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262260:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_02262264: .word 0x00002FC4
_02262268: .word 0x00002EDC
_0226226C: .word 0x00002F28
	thumb_func_end ov117_02262200

	thumb_func_start ov117_02262270
ov117_02262270: ; 0x02262270
	push {r3, r4, r5, lr}
	ldr r1, _022622B4 ; =0x00002EF0
	add r5, r0, #0
	add r1, r5, r1
	bl ov117_022666C0
	cmp r0, #1
	beq _022622B2
	ldr r0, [r5, #0]
	mov r4, #0
	add r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	ble _022622B2
_0226228C:
	ldr r1, [r5, #0]
	add r0, r5, #0
	add r1, r1, r4
	add r1, #0x2c
	ldrb r1, [r1]
	bl ov117_022620A0
	add r1, r0, #0
	beq _022622A6
	add r0, r5, #0
	bl ov117_022666C0
	b _0226228C
_022622A6:
	ldr r0, [r5, #0]
	add r4, r4, #1
	add r0, #0x30
	ldrb r0, [r0]
	cmp r4, r0
	blt _0226228C
_022622B2:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022622B4: .word 0x00002EF0
	thumb_func_end ov117_02262270

	thumb_func_start ov117_022622B8
ov117_022622B8: ; 0x022622B8
	ldr r1, _022622C0 ; =0x00002FC8
	ldr r0, [r0, r1]
	bx lr
	nop
_022622C0: .word 0x00002FC8
	thumb_func_end ov117_022622B8

	thumb_func_start ov117_022622C4
ov117_022622C4: ; 0x022622C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r7, r1, #0
	bl sub_0203608C
	mov r6, #0xff
	add r4, r6, #0
	mov r1, #0
	b _022622F6
_022622D8:
	ldr r2, [r5, #0]
	add r2, r2, r1
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r0, r2
	bne _022622E6
	add r4, r1, #0
_022622E6:
	ldr r2, [r5, #0]
	add r2, r2, r1
	add r2, #0x2c
	ldrb r2, [r2]
	cmp r7, r2
	bne _022622F4
	add r6, r1, #0
_022622F4:
	add r1, r1, #1
_022622F6:
	ldr r2, [r5, #0]
	add r2, #0x30
	ldrb r2, [r2]
	cmp r1, r2
	blt _022622D8
	mov r0, #0
	cmp r6, #0xff
	beq _0226230C
	cmp r4, #0xff
	beq _0226230C
	mov r0, #1
_0226230C:
	cmp r0, #0
	bne _02262314
	bl GF_AssertFail
_02262314:
	mov r1, #0
	ldr r0, _02262358 ; =0x02266954
	b _02262340
_0226231A:
	ldr r2, [r5, #0]
	add r2, #0x30
	ldrb r2, [r2]
	lsl r2, r2, #2
	add r2, r0, r2
	ldrb r2, [r1, r2]
	cmp r4, r2
	bne _0226232C
	str r1, [sp]
_0226232C:
	ldr r2, [r5, #0]
	add r2, #0x30
	ldrb r2, [r2]
	lsl r2, r2, #2
	add r2, r0, r2
	ldrb r2, [r1, r2]
	cmp r6, r2
	bne _0226233E
	str r1, [sp, #4]
_0226233E:
	add r1, r1, #1
_02262340:
	ldr r2, [r5, #0]
	add r2, #0x30
	ldrb r2, [r2]
	cmp r1, r2
	blt _0226231A
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	bpl _02262354
	add r0, r0, r2
_02262354:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02262358: .word 0x02266954
	thumb_func_end ov117_022622C4

	thumb_func_start ov117_0226235C
ov117_0226235C: ; 0x0226235C
	push {r4, lr}
	ldr r3, [r0, #0]
	mov r2, #0
	add r0, r3, #0
	add r0, #0x30
	ldrb r4, [r0]
	cmp r4, #0
	ble _02262382
_0226236C:
	add r0, r3, #0
	add r0, #0x2c
	ldrb r0, [r0]
	cmp r1, r0
	bne _0226237A
	add r0, r2, #0
	pop {r4, pc}
_0226237A:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, r4
	blt _0226236C
_02262382:
	bl GF_AssertFail
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_0226235C

	thumb_func_start ov117_0226238C
ov117_0226238C: ; 0x0226238C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _022623AC ; =0x00002FD4
	add r4, r1, #0
	ldr r0, [r5, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _022623A0
	bl GF_AssertFail
_022623A0:
	ldr r0, _022623AC ; =0x00002FD4
	str r4, [r5, r0]
	add r0, r0, #4
	str r6, [r5, r0]
	pop {r4, r5, r6, pc}
	nop
_022623AC: .word 0x00002FD4
	thumb_func_end ov117_0226238C

	thumb_func_start ov117_022623B0
ov117_022623B0: ; 0x022623B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02262438 ; =0x00002FD4
	mov r1, #0
	ldr r2, [r4, r0]
	cmp r2, #6
	bhi _02262408
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022623CA: ; jump table
	.short _02262408 - _022623CA - 2 ; case 0
	.short _022623D8 - _022623CA - 2 ; case 1
	.short _022623DC - _022623CA - 2 ; case 2
	.short _022623E0 - _022623CA - 2 ; case 3
	.short _022623E4 - _022623CA - 2 ; case 4
	.short _022623F0 - _022623CA - 2 ; case 5
	.short _022623FC - _022623CA - 2 ; case 6
_022623D8:
	mov r1, #1
	b _0226240C
_022623DC:
	mov r1, #1
	b _0226240C
_022623E0:
	mov r1, #1
	b _0226240C
_022623E4:
	sub r0, #8
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0226240C
	mov r1, #1
	b _0226240C
_022623F0:
	ldr r0, _0226243C ; =0x0000339C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0226240C
	mov r1, #1
	b _0226240C
_022623FC:
	ldr r0, _02262440 ; =0x00001768
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0226240C
	mov r1, #1
	b _0226240C
_02262408:
	mov r0, #0
	pop {r4, pc}
_0226240C:
	cmp r1, #1
	bne _02262434
	ldr r0, _02262444 ; =0x00002FD8
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_020364F0
	add r0, r4, #0
	bl ov117_02261FF4
	cmp r0, #1
	bne _0226242A
	mov r1, #7
	b _0226242C
_0226242A:
	mov r1, #0
_0226242C:
	ldr r0, _02262438 ; =0x00002FD4
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_02262434:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02262438: .word 0x00002FD4
_0226243C: .word 0x0000339C
_02262440: .word 0x00001768
_02262444: .word 0x00002FD8
	thumb_func_end ov117_022623B0

	thumb_func_start ov117_02262448
ov117_02262448: ; 0x02262448
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02262480 ; =0x00002FD4
	ldr r2, [r4, r0]
	cmp r2, #7
	beq _02262458
	mov r0, #0
	pop {r4, pc}
_02262458:
	add r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r1
	beq _02262464
	mov r0, #0
	pop {r4, pc}
_02262464:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl sub_02036540
	cmp r0, #1
	bne _0226247A
	ldr r0, _02262480 ; =0x00002FD4
	mov r1, #0
	str r1, [r4, r0]
	mov r0, #1
	pop {r4, pc}
_0226247A:
	mov r0, #0
	pop {r4, pc}
	nop
_02262480: .word 0x00002FD4
	thumb_func_end ov117_02262448

	thumb_func_start ov117_02262484
ov117_02262484: ; 0x02262484
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #5
	bhi _02262516
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226249A: ; jump table
	.short _022624A6 - _0226249A - 2 ; case 0
	.short _022624B6 - _0226249A - 2 ; case 1
	.short _022624CE - _0226249A - 2 ; case 2
	.short _022624DC - _0226249A - 2 ; case 3
	.short _022624F4 - _0226249A - 2 ; case 4
	.short _02262502 - _0226249A - 2 ; case 5
_022624A6:
	ldrb r2, [r4, #0x18]
	mov r1, #1
	bl ov117_0226687C
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624B6:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624CE:
	ldrb r1, [r4, #0x18]
	bl ov117_022668B8
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624DC:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_022624F4:
	ldrb r1, [r4, #0x18]
	bl ov117_022667F4
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _02262516
_02262502:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _02262516
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #1
	pop {r4, pc}
_02262516:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_02262484

	thumb_func_start ov117_0226251C
ov117_0226251C: ; 0x0226251C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r1, _022625E8 ; =0x00002FB4
	ldr r0, _022625EC ; =0x00000516
	ldr r2, [r5, r1]
	cmp r2, r0
	bls _0226254C
	add r0, r1, #0
	add r0, #0x20
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0226254C
	add r0, r1, #0
	sub r0, #0xd8
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0226254C
	sub r1, #0xc4
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0226254C
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226254C:
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhi _022625E4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226255E: ; jump table
	.short _02262566 - _0226255E - 2 ; case 0
	.short _02262584 - _0226255E - 2 ; case 1
	.short _0226259E - _0226255E - 2 ; case 2
	.short _022625CE - _0226255E - 2 ; case 3
_02262566:
	ldr r0, _022625F0 ; =0x00002FC8
	ldr r0, [r5, r0]
	bl ov117_02263CF4
	ldr r1, _022625F0 ; =0x00002FC8
	add r2, r0, #0
	ldrb r3, [r4, #0x18]
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov117_02266784
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_02262584:
	ldrb r1, [r4, #0x18]
	add r0, r5, #0
	bl ov117_02262448
	cmp r0, #1
	bne _022625E4
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_0226259E:
	ldr r0, _022625F4 ; =0x00001434
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _022625E4
	sub r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, r1
	blt _022625E4
	ldr r0, _022625F0 ; =0x00002FC8
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	add r0, r5, #0
	bl ov117_022622B8
	add r1, r0, #0
	ldrb r2, [r4, #0x18]
	add r0, r5, #0
	bl ov117_02266730
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _022625E4
_022625CE:
	ldrb r1, [r4, #0x18]
	add r0, r5, #0
	bl ov117_02262448
	cmp r0, #1
	bne _022625E4
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	mov r0, #0
	str r0, [r4, #0xc]
_022625E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022625E8: .word 0x00002FB4
_022625EC: .word 0x00000516
_022625F0: .word 0x00002FC8
_022625F4: .word 0x00001434
	thumb_func_end ov117_0226251C

	thumb_func_start ov117_022625F8
ov117_022625F8: ; 0x022625F8
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0xc]
	cmp r1, #3
	bhi _0226265E
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0226260E: ; jump table
	.short _02262616 - _0226260E - 2 ; case 0
	.short _02262624 - _0226260E - 2 ; case 1
	.short _0226263C - _0226260E - 2 ; case 2
	.short _02262648 - _0226260E - 2 ; case 3
_02262616:
	ldrb r1, [r4, #0x18]
	bl ov117_02266834
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0226265E
_02262624:
	ldrb r1, [r4, #0x18]
	bl ov117_02262448
	cmp r0, #1
	bne _0226265E
	ldrb r0, [r4, #0x18]
	add r0, r0, #1
	strb r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	b _0226265E
_0226263C:
	ldr r0, [r0, #0x20]
	cmp r0, #8
	bne _0226265E
	add r0, r1, #1
	str r0, [r4, #0xc]
	b _0226265E
_02262648:
	ldr r1, [r4, #0x14]
	add r1, r1, #1
	str r1, [r4, #0x14]
	cmp r1, #0x5a
	blt _0226265E
	bl ov117_02266648
	cmp r0, #1
	bne _0226265E
	mov r0, #1
	pop {r4, pc}
_0226265E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov117_022625F8

	thumb_func_start ov117_02262664
ov117_02262664: ; 0x02262664
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov117_02261FF4
	cmp r0, #0
	bne _02262674
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262674:
	add r0, r5, #0
	add r0, #0xb8
	ldr r2, [r0, #0]
	add r4, r5, #0
	add r4, #0xb8
	cmp r2, #3
	blo _02262686
	mov r0, #1
	pop {r3, r4, r5, pc}
_02262686:
	lsl r3, r2, #2
	ldr r2, _022626A8 ; =0x02266920
	add r0, r5, #0
	ldr r2, [r2, r3]
	add r1, r4, #0
	blx r2
	cmp r0, #1
	bne _022626A4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x14]
	str r0, [r4, #0x10]
_022626A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_022626A8: .word 0x02266920
	thumb_func_end ov117_02262664

	thumb_func_start ov117_022626AC
ov117_022626AC: ; 0x022626AC
	bx lr
	; .align 2, 0
	thumb_func_end ov117_022626AC

	.rodata

	.global Unk_ov117_02266918
Unk_ov117_02266918: ; 0x02266918
	.incbin "incbin/overlay117_rodata.bin", 0x20, 0x28 - 0x20

	.global Unk_ov117_02266920
Unk_ov117_02266920: ; 0x02266920
	.incbin "incbin/overlay117_rodata.bin", 0x28,  0x34 - 0x28

	.global Unk_ov117_0226692C
Unk_ov117_0226692C: ; 0x226692C
	.incbin "incbin/overlay117_rodata.bin", 0x34,  0x40 - 0x34

	.global Unk_ov117_02266938
Unk_ov117_02266938: ; 0x226692C
	.incbin "incbin/overlay117_rodata.bin", 0x40,  0x4C - 0x40

	.global Unk_ov117_02266944
Unk_ov117_02266944: ; 0x2266944
	.incbin "incbin/overlay117_rodata.bin", 0x4C,  0x5C - 0x4C

	.global Unk_ov117_02266954
Unk_ov117_02266954: ; 0x02266954
	.incbin "incbin/overlay117_rodata.bin", 0x5C, 0x70 - 0x5C
	
	.global Unk_ov117_02266968
Unk_ov117_02266968: ; 0x02266968
	.incbin "incbin/overlay117_rodata.bin", 0x70, 0x84 - 0x70

	.global Unk_ov117_0226697C
Unk_ov117_0226697C: ; 0x0226697C
	.incbin "incbin/overlay117_rodata.bin", 0x84, 0x98 - 0x84

	.global Unk_ov117_02266990
Unk_ov117_02266990: ; 0x02266990
	.incbin "incbin/overlay117_rodata.bin", 0x98, 0xB0 - 0x98

	.global Unk_ov117_022669A8
Unk_ov117_022669A8: ; 0x022669A8
	.incbin "incbin/overlay117_rodata.bin", 0xB0, 0xD0 - 0xB0

	.global Unk_ov117_022669C8
Unk_ov117_022669C8: ; 0x022669C8
	.incbin "incbin/overlay117_rodata.bin", 0xD0, 0xF8 - 0xD0

	.global Unk_ov117_022669F0
Unk_ov117_022669F0: ; 0x022669F0
	.incbin "incbin/overlay117_rodata.bin", 0xF8, 0x148 - 0xF8

	.global Unk_ov117_02266A40
Unk_ov117_02266A40: ; 0x02266A40
	.incbin "incbin/overlay117_rodata.bin", 0x148, 0x19C - 0x148

	.global Unk_ov117_02266A94
Unk_ov117_02266A94: ; 0x02266A94
	.incbin "incbin/overlay117_rodata.bin", 0x19C, 0x20C - 0x19C
