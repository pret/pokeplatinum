	.include "macros/function.inc"
	.include "include/ov20_021D0D80.inc"

	

	.text


	thumb_func_start ov20_021D0D80
ov20_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r5, r0, #0
	cmp r1, #0
	beq _021D0D92
	cmp r1, #1
	beq _021D0DCA
	b _021D0DF2
_021D0D92:
	mov r1, #0
	mov r0, #0x3e
	add r2, r1, #0
	bl sub_02004550
	mov r2, #2
	mov r0, #3
	mov r1, #0x22
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r2, #0xa
	mov r0, #3
	mov r1, #0x23
	lsl r2, r2, #0xe
	bl sub_02017FC8
	add r0, r5, #0
	bl ov20_021D0EC8
	ldr r0, [r0, #0x14]
	mov r1, #0
	bl ov20_021D21A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D0DF2
_021D0DCA:
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D0DF2
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021D0DE8
	ldr r0, [r4, #0x14]
	bl ov20_021D2DF4
	b _021D0DEA
_021D0DE8:
	mov r0, #0
_021D0DEA:
	add r4, #0x64
	strb r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0DF2:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D0D80

	thumb_func_start ov20_021D0DF8
ov20_021D0DF8: ; 0x021D0DF8
	push {r4, lr}
	bl sub_0200682C
	add r4, r0, #0
	ldr r0, _021D0E34 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	strh r1, [r4, #0x30]
	ldr r1, [r0, #0x44]
	strh r1, [r4, #0x32]
	ldr r0, [r0, #0x4c]
	strh r0, [r4, #0x34]
	ldr r0, [r4, #0x40]
	bl sub_0202404C
	ldr r2, [r4, #0x2c]
	cmp r2, #0
	beq _021D0E26
	add r0, r4, #0
	add r4, #0x28
	add r1, r4, #0
	blx r2
	mov r0, #0
	pop {r4, pc}
_021D0E26:
	add r1, r4, #0
	ldr r2, [r4, #0x20]
	add r0, r4, #0
	add r1, #0x1c
	blx r2
	pop {r4, pc}
	nop
_021D0E34: .word 0x021BF67C
	thumb_func_end ov20_021D0DF8

	thumb_func_start ov20_021D0E38
ov20_021D0E38: ; 0x021D0E38
	push {r4, lr}
	add r4, r2, #0
	cmp r1, #3
	bhi _021D0EA0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0E4C: ; jump table
	.short _021D0E54 - _021D0E4C - 2 ; case 0
	.short _021D0E74 - _021D0E4C - 2 ; case 1
	.short _021D0E96 - _021D0E4C - 2 ; case 2
	.short _021D0E74 - _021D0E4C - 2 ; case 3
_021D0E54:
	str r0, [r4, #0x38]
	cmp r0, #2
	beq _021D0E60
	cmp r0, #3
	beq _021D0E6A
	pop {r4, pc}
_021D0E60:
	ldr r0, [r4, #0x14]
	mov r1, #0x19
	bl ov20_021D21A0
	pop {r4, pc}
_021D0E6A:
	ldr r0, [r4, #0x14]
	mov r1, #0x1a
	bl ov20_021D21A0
	pop {r4, pc}
_021D0E74:
	cmp r0, #2
	beq _021D0E7E
	cmp r0, #3
	beq _021D0E88
	b _021D0E90
_021D0E7E:
	ldr r0, [r4, #0x14]
	mov r1, #0x1b
	bl ov20_021D21A0
	b _021D0E90
_021D0E88:
	ldr r0, [r4, #0x14]
	mov r1, #0x1c
	bl ov20_021D21A0
_021D0E90:
	mov r0, #4
	str r0, [r4, #0x38]
	pop {r4, pc}
_021D0E96:
	sub r1, r0, #2
	cmp r1, #1
	bhi _021D0EA4
	str r0, [r4, #0x38]
	pop {r4, pc}
_021D0EA0:
	mov r0, #4
	str r0, [r4, #0x38]
_021D0EA4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D0E38

	thumb_func_start ov20_021D0EA8
ov20_021D0EA8: ; 0x021D0EA8
	push {r4, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r1, r4, #0
	bl ov20_021D1014
	mov r0, #0x22
	bl sub_0201807C
	mov r0, #0x23
	bl sub_0201807C
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D0EA8

	thumb_func_start ov20_021D0EC8
ov20_021D0EC8: ; 0x021D0EC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0x68
	mov r2, #0x22
	bl sub_0200681C
	add r4, r0, #0
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0]
	bl sub_02097550
	str r0, [r4, #4]
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x10
	add r2, #8
	bl sub_0209756C
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021D0F04
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x60
	add r1, #8
	bl ov20_021D0F64
_021D0F04:
	ldr r1, [r4, #0]
	mov r0, #0x22
	bl sub_020998EC
	str r0, [r4, #0x18]
	ldr r1, [r4, #0x18]
	add r0, r4, #0
	bl ov20_021D2098
	str r0, [r4, #0x14]
	mov r0, #0x22
	str r0, [sp]
	ldr r0, _021D0F54 ; =0x021D5154
	ldr r2, _021D0F58 ; =ov20_021D0E38
	mov r1, #5
	add r3, r4, #0
	bl sub_02023FCC
	str r0, [r4, #0x40]
	mov r1, #0
	str r1, [r4, #0x44]
	add r0, r4, #0
	str r1, [r4, #0x48]
	add r0, #0x65
	strb r1, [r0]
	str r1, [r4, #0x2c]
	ldr r0, _021D0F5C ; =ov20_021D103C
	str r1, [r4, #0x28]
	str r0, [r4, #0x20]
	add r0, r4, #0
	str r1, [r4, #0x1c]
	add r0, #0x4e
	strh r1, [r0]
	ldr r1, _021D0F60 ; =ov20_021D1C5C
	add r0, r4, #0
	bl ov20_021D1C4C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D0F54: .word 0x021D5154
_021D0F58: .word ov20_021D0E38
_021D0F5C: .word ov20_021D103C
_021D0F60: .word ov20_021D1C5C
	thumb_func_end ov20_021D0EC8

	thumb_func_start ov20_021D0F64
ov20_021D0F64: ; 0x021D0F64
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02014C80
	strh r0, [r5]
	mov r0, #0
	ldrsh r0, [r5, r0]
	bl sub_02014CD4
	strb r0, [r5, #3]
	add r0, r4, #0
	bl sub_02014C84
	strb r0, [r5, #2]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D0F64

	thumb_func_start ov20_021D0F88
ov20_021D0F88: ; 0x021D0F88
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	ldrsb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, #2]
	ldrsb r1, [r5, r0]
	mov r0, #3
	ldrsb r0, [r5, r0]
	cmp r1, r0
	blt _021D0FBC
	mov r1, #0
	strb r1, [r5, #2]
	ldrsh r0, [r5, r1]
	add r0, r0, #1
	strh r0, [r5]
	ldrsh r0, [r5, r1]
	cmp r0, #5
	blt _021D0FB2
	strh r1, [r5]
_021D0FB2:
	mov r0, #0
	ldrsh r0, [r5, r0]
	bl sub_02014CD4
	strb r0, [r5, #3]
_021D0FBC:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsb r2, [r5, r2]
	add r0, r4, #0
	bl sub_02014CE0
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D0F88

	thumb_func_start ov20_021D0FCC
ov20_021D0FCC: ; 0x021D0FCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #2
	add r4, r1, #0
	ldrsb r1, [r5, r0]
	sub r1, r1, #1
	strb r1, [r5, #2]
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bge _021D1004
	mov r0, #0
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _021D0FF2
	mov r0, #4
	strh r0, [r5]
_021D0FF2:
	mov r0, #0
	ldrsh r0, [r5, r0]
	bl sub_02014CD4
	strb r0, [r5, #3]
	mov r0, #3
	ldrsb r0, [r5, r0]
	sub r0, r0, #1
	strb r0, [r5, #2]
_021D1004:
	mov r1, #0
	mov r2, #2
	ldrsh r1, [r5, r1]
	ldrsb r2, [r5, r2]
	add r0, r4, #0
	bl sub_02014CE0
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D0FCC

	thumb_func_start ov20_021D1014
ov20_021D1014: ; 0x021D1014
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x40]
	add r4, r1, #0
	bl sub_02024034
	ldr r0, [r5, #0x14]
	bl ov20_021D2128
	ldr r0, [r5, #0x18]
	bl sub_0209992C
	add r0, r4, #0
	bl sub_02006830
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D1014

	thumb_func_start ov20_021D1034
ov20_021D1034: ; 0x021D1034
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov20_021D1034

	thumb_func_start ov20_021D103C
ov20_021D103C: ; 0x021D103C
	push {r3, lr}
	ldr r2, [r0, #4]
	lsl r3, r2, #2
	ldr r2, _021D104C ; =0x021D5148
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_021D104C: .word 0x021D5148
	thumb_func_end ov20_021D103C

	thumb_func_start ov20_021D1050
ov20_021D1050: ; 0x021D1050
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D1066
	cmp r0, #1
	beq _021D10F0
	cmp r0, #2
	beq _021D1104
	b _021D1116
_021D1066:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	bne _021D1076
	add r0, r5, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D108C
_021D1076:
	cmp r1, #1
	bne _021D1084
	add r0, r5, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D108C
_021D1084:
	ldrh r0, [r5, #0x30]
	mov r1, #4
	tst r1, r0
	beq _021D1096
_021D108C:
	ldr r1, _021D111C ; =ov20_021D1F38
	add r0, r5, #0
	bl ov20_021D1C4C
	b _021D1116
_021D1096:
	mov r1, #0x88
	tst r1, r0
	beq _021D10B8
	ldr r0, _021D1120 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #4
	bl ov20_021D21A0
	mov r0, #1
	str r0, [r4, #0]
	b _021D1116
_021D10B8:
	mov r1, #2
	tst r1, r0
	beq _021D10CE
	ldr r0, _021D1120 ; =0x000005DC
	bl sub_02005748
	ldr r1, _021D1124 ; =ov20_021D1DBC
	add r0, r5, #0
	bl ov20_021D1C4C
	b _021D1116
_021D10CE:
	mov r1, #1
	tst r0, r1
	beq _021D1116
	ldr r0, _021D1120 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #6
	bl ov20_021D21A0
	mov r0, #2
	str r0, [r4, #0]
	b _021D1116
_021D10F0:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1116
	ldr r1, _021D1128 ; =ov20_021D1468
	add r0, r5, #0
	bl ov20_021D1034
	b _021D1116
_021D1104:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1116
	ldr r1, _021D112C ; =ov20_021D15A0
	add r0, r5, #0
	bl ov20_021D1034
_021D1116:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D111C: .word ov20_021D1F38
_021D1120: .word 0x000005DC
_021D1124: .word ov20_021D1DBC
_021D1128: .word ov20_021D1468
_021D112C: .word ov20_021D15A0
	thumb_func_end ov20_021D1050

	thumb_func_start ov20_021D1130
ov20_021D1130: ; 0x021D1130
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D1146
	cmp r0, #1
	beq _021D1220
	cmp r0, #2
	beq _021D1234
	b _021D1246
_021D1146:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	bne _021D1156
	add r0, r5, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D116C
_021D1156:
	cmp r1, #1
	bne _021D1164
	add r0, r5, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D116C
_021D1164:
	ldrh r0, [r5, #0x30]
	mov r1, #4
	tst r1, r0
	beq _021D1176
_021D116C:
	ldr r1, _021D124C ; =ov20_021D1F38
	add r0, r5, #0
	bl ov20_021D1C4C
	b _021D1246
_021D1176:
	mov r1, #0x88
	tst r1, r0
	beq _021D1198
	ldr r0, _021D1250 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #4
	bl ov20_021D21A0
	mov r0, #1
	str r0, [r4, #0]
	b _021D1246
_021D1198:
	mov r1, #0x20
	tst r1, r0
	beq _021D11C0
	add r0, r5, #0
	add r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	beq _021D1246
	ldr r0, _021D1250 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0
	add r0, #0x4e
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	bl ov20_021D21A0
	b _021D1246
_021D11C0:
	mov r1, #0x10
	tst r1, r0
	beq _021D11E8
	add r0, r5, #0
	add r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D1246
	ldr r0, _021D1250 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #1
	add r0, #0x4e
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0xc
	bl ov20_021D21A0
	b _021D1246
_021D11E8:
	mov r1, #2
	tst r1, r0
	beq _021D11FE
	ldr r0, _021D1250 ; =0x000005DC
	bl sub_02005748
	ldr r1, _021D1254 ; =ov20_021D1DBC
	add r0, r5, #0
	bl ov20_021D1C4C
	b _021D1246
_021D11FE:
	mov r1, #1
	tst r0, r1
	beq _021D1246
	ldr r0, _021D1250 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #6
	bl ov20_021D21A0
	mov r0, #2
	str r0, [r4, #0]
	b _021D1246
_021D1220:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1246
	ldr r1, _021D1258 ; =ov20_021D1468
	add r0, r5, #0
	bl ov20_021D1034
	b _021D1246
_021D1234:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1246
	ldr r1, _021D125C ; =ov20_021D15A0
	add r0, r5, #0
	bl ov20_021D1034
_021D1246:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D124C: .word ov20_021D1F38
_021D1250: .word 0x000005DC
_021D1254: .word ov20_021D1DBC
_021D1258: .word ov20_021D1468
_021D125C: .word ov20_021D15A0
	thumb_func_end ov20_021D1130

	thumb_func_start ov20_021D1260
ov20_021D1260: ; 0x021D1260
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #4
	bhi _021D12DC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1278: ; jump table
	.short _021D1282 - _021D1278 - 2 ; case 0
	.short _021D1292 - _021D1278 - 2 ; case 1
	.short _021D1416 - _021D1278 - 2 ; case 2
	.short _021D1428 - _021D1278 - 2 ; case 3
	.short _021D143C - _021D1278 - 2 ; case 4
_021D1282:
	ldr r0, [r4, #0x14]
	bl ov20_021D2DF4
	add r1, r4, #0
	add r1, #0x64
	strb r0, [r1]
	mov r0, #1
	str r0, [r5, #0]
_021D1292:
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _021D12A2
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D12B8
_021D12A2:
	cmp r1, #1
	bne _021D12B0
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D12B8
_021D12B0:
	ldrh r0, [r4, #0x30]
	mov r1, #4
	tst r1, r0
	beq _021D12C2
_021D12B8:
	ldr r1, _021D1454 ; =ov20_021D1F38
	add r0, r4, #0
	bl ov20_021D1C4C
	b _021D144E
_021D12C2:
	mov r1, #0x40
	tst r1, r0
	beq _021D12FC
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _021D12DC
	add r0, r4, #0
	add r0, #0x4e
	ldrh r0, [r0]
	cmp r0, #0
	bne _021D12DE
_021D12DC:
	b _021D144E
_021D12DE:
	ldr r0, _021D1458 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x4e
	ldrh r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x4e
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	bl ov20_021D21A0
	b _021D144E
_021D12FC:
	mov r1, #0x80
	tst r0, r1
	beq _021D134C
	ldr r0, _021D1458 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x64
	ldrb r2, [r0]
	cmp r2, #0
	beq _021D1336
	add r0, r4, #0
	add r0, #0x4e
	ldrh r1, [r0]
	sub r0, r2, #1
	cmp r1, r0
	bge _021D1336
	add r0, r4, #0
	add r0, #0x4e
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x4e
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xc
	bl ov20_021D21A0
	b _021D134C
_021D1336:
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl ov20_021D21A0
	mov r0, #3
	str r0, [r5, #0]
	b _021D144E
_021D134C:
	ldrh r1, [r4, #0x30]
	mov r0, #8
	tst r0, r1
	bne _021D1366
	mov r0, #1
	add r2, r1, #0
	and r2, r0
	beq _021D1382
	add r0, r4, #0
	add r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D1382
_021D1366:
	ldr r0, _021D1458 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl ov20_021D21A0
	mov r0, #3
	str r0, [r5, #0]
	b _021D144E
_021D1382:
	ldrh r0, [r4, #0x34]
	mov r3, #0x20
	tst r3, r0
	beq _021D13B2
	ldr r0, _021D1458 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4e
	strh r1, [r0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x60
	add r1, #8
	bl ov20_021D0FCC
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ov20_021D21A0
	mov r0, #2
	str r0, [r5, #0]
	b _021D144E
_021D13B2:
	mov r3, #0x10
	tst r0, r3
	beq _021D13E0
	ldr r0, _021D1458 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4e
	strh r1, [r0]
	add r0, r4, #0
	add r1, r4, #0
	add r0, #0x60
	add r1, #8
	bl ov20_021D0F88
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ov20_021D21A0
	mov r0, #2
	str r0, [r5, #0]
	b _021D144E
_021D13E0:
	mov r0, #2
	tst r0, r1
	beq _021D13F6
	ldr r0, _021D1458 ; =0x000005DC
	bl sub_02005748
	ldr r1, _021D145C ; =ov20_021D1DBC
	add r0, r4, #0
	bl ov20_021D1C4C
	b _021D144E
_021D13F6:
	cmp r2, #0
	beq _021D144E
	ldr r0, _021D1458 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #6
	bl ov20_021D21A0
	mov r0, #4
	str r0, [r5, #0]
	b _021D144E
_021D1416:
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl ov20_021D2210
	cmp r0, #0
	beq _021D144E
	mov r0, #0
	str r0, [r5, #0]
	b _021D144E
_021D1428:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D144E
	ldr r1, _021D1460 ; =ov20_021D1468
	add r0, r4, #0
	bl ov20_021D1034
	b _021D144E
_021D143C:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D144E
	ldr r1, _021D1464 ; =ov20_021D15A0
	add r0, r4, #0
	bl ov20_021D1034
_021D144E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D1454: .word ov20_021D1F38
_021D1458: .word 0x000005DC
_021D145C: .word ov20_021D1DBC
_021D1460: .word ov20_021D1468
_021D1464: .word ov20_021D15A0
	thumb_func_end ov20_021D1260

	thumb_func_start ov20_021D1468
ov20_021D1468: ; 0x021D1468
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #5
	bls _021D1476
	b _021D1588
_021D1476:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1482: ; jump table
	.short _021D148E - _021D1482 - 2 ; case 0
	.short _021D1558 - _021D1482 - 2 ; case 1
	.short _021D1564 - _021D1482 - 2 ; case 2
	.short _021D1570 - _021D1482 - 2 ; case 3
	.short _021D1570 - _021D1482 - 2 ; case 4
	.short _021D1576 - _021D1482 - 2 ; case 5
_021D148E:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1588
	ldr r1, [r4, #0x38]
	cmp r1, #0
	bne _021D14A8
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D14BE
_021D14A8:
	cmp r1, #1
	bne _021D14B6
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D14BE
_021D14B6:
	ldrh r0, [r4, #0x30]
	mov r1, #4
	tst r1, r0
	beq _021D14C8
_021D14BE:
	ldr r1, _021D158C ; =ov20_021D1F38
	add r0, r4, #0
	bl ov20_021D1C4C
	b _021D1588
_021D14C8:
	mov r1, #0x30
	tst r1, r0
	beq _021D14EE
	ldr r0, _021D1590 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	add r0, #0x4c
	ldrh r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xd
	bl ov20_021D21A0
	b _021D1588
_021D14EE:
	mov r1, #8
	tst r1, r0
	beq _021D150C
	ldr r0, _021D1590 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	add r0, #0x4c
	strh r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #0xd
	bl ov20_021D21A0
	b _021D1588
_021D150C:
	mov r1, #0x40
	tst r1, r0
	beq _021D1526
	ldr r0, _021D1590 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #5
	bl ov20_021D21A0
	mov r0, #5
	str r0, [r5, #0]
	b _021D1588
_021D1526:
	mov r1, #1
	tst r1, r0
	beq _021D1546
	ldr r0, _021D1590 ; =0x000005DC
	bl sub_02005748
	add r4, #0x4c
	ldrh r0, [r4]
	cmp r0, #0
	bne _021D1540
	mov r0, #1
	str r0, [r5, #0]
	b _021D1588
_021D1540:
	mov r0, #2
	str r0, [r5, #0]
	b _021D1588
_021D1546:
	mov r1, #2
	tst r0, r1
	beq _021D1588
	ldr r0, _021D1590 ; =0x000005DC
	bl sub_02005748
	mov r0, #2
	str r0, [r5, #0]
	b _021D1588
_021D1558:
	mov r1, #3
	str r1, [r5, #0]
	ldr r1, _021D1594 ; =ov20_021D1C90
	bl ov20_021D1C4C
	b _021D1588
_021D1564:
	mov r1, #4
	str r1, [r5, #0]
	ldr r1, _021D1598 ; =ov20_021D1DBC
	bl ov20_021D1C4C
	b _021D1588
_021D1570:
	mov r0, #0
	str r0, [r5, #0]
	b _021D1588
_021D1576:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1588
	ldr r1, _021D159C ; =ov20_021D103C
	add r0, r4, #0
	bl ov20_021D1034
_021D1588:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D158C: .word ov20_021D1F38
_021D1590: .word 0x000005DC
_021D1594: .word ov20_021D1C90
_021D1598: .word ov20_021D1DBC
_021D159C: .word ov20_021D103C
	thumb_func_end ov20_021D1468

	thumb_func_start ov20_021D15A0
ov20_021D15A0: ; 0x021D15A0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D15B8
	cmp r0, #1
	beq _021D16AC
	cmp r0, #2
	bne _021D15B6
	b _021D16C0
_021D15B6:
	b _021D16D0
_021D15B8:
	ldr r0, [r5, #0x14]
	mov r1, #0xf
	bl ov20_021D2210
	cmp r0, #0
	bne _021D15C6
	b _021D16D0
_021D15C6:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	bne _021D15D6
	add r0, r5, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D15EC
_021D15D6:
	cmp r1, #1
	bne _021D15E4
	add r0, r5, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #1
	bne _021D15EC
_021D15E4:
	ldrh r0, [r5, #0x30]
	mov r1, #4
	tst r1, r0
	beq _021D1618
_021D15EC:
	ldr r0, _021D16D4 ; =0x000005E4
	bl sub_02005748
	add r0, r5, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x65
	strb r1, [r0]
	add r0, r5, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0x18
	bl ov20_021D21A0
	mov r0, #2
	str r0, [r4, #0]
	b _021D16D0
_021D1618:
	mov r1, #2
	tst r1, r0
	beq _021D1636
	ldr r0, _021D16D8 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x14]
	mov r1, #7
	bl ov20_021D21A0
	ldr r0, _021D16DC ; =ov20_021D103C
	str r0, [r5, #0x24]
	mov r0, #1
	str r0, [r4, #0]
	b _021D16D0
_021D1636:
	mov r1, #1
	tst r0, r1
	beq _021D1692
	add r0, r5, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0xfe
	bne _021D165E
	ldr r0, _021D16D8 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x14]
	mov r1, #7
	bl ov20_021D21A0
	ldr r0, _021D16DC ; =ov20_021D103C
	str r0, [r5, #0x24]
	mov r0, #1
	str r0, [r4, #0]
	b _021D16D0
_021D165E:
	add r0, r5, #0
	bl ov20_021D16E8
	cmp r0, #0
	beq _021D168A
	ldr r0, _021D16D8 ; =0x000005DC
	bl sub_02005748
	add r0, r5, #0
	add r0, #0x54
	add r1, r5, #0
	bl ov20_021D1884
	ldr r0, _021D16E0 ; =ov20_021D18E4
	mov r1, #8
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x14]
	bl ov20_021D21A0
	mov r0, #1
	str r0, [r4, #0]
	b _021D16D0
_021D168A:
	ldr r0, _021D16E4 ; =0x000005F2
	bl sub_02005748
	b _021D16D0
_021D1692:
	add r0, r5, #0
	bl ov20_021D1720
	cmp r0, #0
	beq _021D16D0
	ldr r0, _021D16D8 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r5, #0x14]
	mov r1, #0xe
	bl ov20_021D21A0
	b _021D16D0
_021D16AC:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D16D0
	ldr r1, [r5, #0x24]
	add r0, r5, #0
	bl ov20_021D1034
	b _021D16D0
_021D16C0:
	ldr r0, [r5, #0x14]
	mov r1, #0x18
	bl ov20_021D2210
	cmp r0, #0
	beq _021D16D0
	mov r0, #0
	str r0, [r4, #0]
_021D16D0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D16D4: .word 0x000005E4
_021D16D8: .word 0x000005DC
_021D16DC: .word ov20_021D103C
_021D16E0: .word ov20_021D18E4
_021D16E4: .word 0x000005F2
	thumb_func_end ov20_021D15A0

	thumb_func_start ov20_021D16E8
ov20_021D16E8: ; 0x021D16E8
	push {r3, lr}
	add r1, r0, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r1, #0x18]
	bne _021D170A
	add r1, #0x50
	ldrh r1, [r1]
	bl sub_02099CA0
	cmp r0, #0
	beq _021D1706
	mov r0, #1
	pop {r3, pc}
_021D1706:
	mov r0, #0
	pop {r3, pc}
_021D170A:
	add r1, #0x50
	ldrh r1, [r1]
	bl sub_02099CDC
	cmp r0, #0
	beq _021D171A
	mov r0, #1
	pop {r3, pc}
_021D171A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov20_021D16E8

	thumb_func_start ov20_021D1720
ov20_021D1720: ; 0x021D1720
	push {r3, lr}
	add r1, r0, #0
	add r1, #0x65
	ldrb r1, [r1]
	lsl r2, r1, #2
	ldr r1, _021D1734 ; =0x021D5140
	ldr r1, [r1, r2]
	blx r1
	pop {r3, pc}
	nop
_021D1734: .word 0x021D5140
	thumb_func_end ov20_021D1720

	thumb_func_start ov20_021D1738
ov20_021D1738: ; 0x021D1738
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x50
	ldrh r2, [r0]
	add r1, r2, #0
	cmp r2, #0xfe
	bne _021D1748
	mov r1, #0xc
_021D1748:
	cmp r2, #0xfe
	beq _021D17A4
	add r0, r4, #0
	add r0, #0x52
	strh r2, [r0]
	ldrh r0, [r4, #0x34]
	mov r2, #0x40
	tst r2, r0
	beq _021D1768
	ldr r0, _021D17E0 ; =0x021D5168
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	add r4, #0x50
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021D1768:
	mov r2, #0x80
	tst r2, r0
	beq _021D177C
	ldr r0, _021D17E4 ; =0x021D5169
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	add r4, #0x50
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021D177C:
	mov r2, #0x20
	tst r2, r0
	beq _021D1790
	ldr r0, _021D17E8 ; =0x021D516A
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	add r4, #0x50
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021D1790:
	mov r2, #0x10
	tst r0, r2
	beq _021D17DC
	ldr r0, _021D17EC ; =0x021D516B
	lsl r1, r1, #2
	ldrb r0, [r0, r1]
	add r4, #0x50
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021D17A4:
	ldrh r1, [r4, #0x34]
	mov r0, #0x40
	tst r0, r1
	beq _021D17C2
	add r0, r4, #0
	add r0, #0x52
	ldrh r0, [r0]
	mov r1, #3
	bl _s32_div_f
	add r1, #9
	add r4, #0x50
	strh r1, [r4]
	mov r0, #1
	pop {r4, pc}
_021D17C2:
	mov r0, #0x80
	tst r0, r1
	beq _021D17DC
	add r0, r4, #0
	add r0, #0x52
	ldrh r0, [r0]
	mov r1, #3
	bl _s32_div_f
	add r4, #0x50
	strh r1, [r4]
	mov r0, #1
	pop {r4, pc}
_021D17DC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D17E0: .word 0x021D5168
_021D17E4: .word 0x021D5169
_021D17E8: .word 0x021D516A
_021D17EC: .word 0x021D516B
	thumb_func_end ov20_021D1738

	thumb_func_start ov20_021D17F0
ov20_021D17F0: ; 0x021D17F0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x50
	ldrh r0, [r0]
	cmp r0, #0xfe
	beq _021D184E
	ldrh r1, [r4, #0x34]
	mov r3, #0x40
	mov r2, #0xff
	tst r3, r1
	beq _021D180E
	bl ov20_021D5098
	add r2, r0, #0
	b _021D1836
_021D180E:
	mov r3, #0x80
	tst r3, r1
	beq _021D181C
	bl ov20_021D50B4
	add r2, r0, #0
	b _021D1836
_021D181C:
	mov r3, #0x10
	tst r3, r1
	beq _021D182A
	bl ov20_021D50EC
	add r2, r0, #0
	b _021D1836
_021D182A:
	mov r3, #0x20
	tst r1, r3
	beq _021D1836
	bl ov20_021D50D0
	add r2, r0, #0
_021D1836:
	cmp r2, #0xff
	beq _021D1880
	add r0, r4, #0
	add r0, #0x50
	ldrh r1, [r0]
	add r0, r4, #0
	add r0, #0x52
	strh r1, [r0]
	add r4, #0x50
	strh r2, [r4]
	mov r0, #1
	pop {r4, pc}
_021D184E:
	ldrh r1, [r4, #0x34]
	mov r0, #0x40
	tst r0, r1
	beq _021D1868
	add r0, r4, #0
	add r0, #0x52
	ldrh r0, [r0]
	bl ov20_021D5124
	add r4, #0x50
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021D1868:
	mov r0, #0x80
	tst r0, r1
	beq _021D1880
	add r0, r4, #0
	add r0, #0x52
	ldrh r0, [r0]
	bl ov20_021D5108
	add r4, #0x50
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_021D1880:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov20_021D17F0

	thumb_func_start ov20_021D1884
ov20_021D1884: ; 0x021D1884
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	add r0, r1, #0
	bl ov20_021D1FE4
	strh r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #8]
	ldrh r2, [r4, #4]
	cmp r2, #0xa
	bls _021D18B6
	add r1, r2, #0
	sub r1, #0xa
	lsr r0, r1, #0x1f
	add r0, r1, r0
	asr r1, r0, #1
	mov r0, #1
	and r0, r2
	add r0, r1, r0
	strh r0, [r4, #2]
	pop {r4, pc}
_021D18B6:
	strh r0, [r4, #2]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D1884

	thumb_func_start ov20_021D18BC
ov20_021D18BC: ; 0x021D18BC
	ldrb r1, [r0, #6]
	ldrb r0, [r0, #7]
	lsl r0, r0, #1
	add r0, r1, r0
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D18BC

	thumb_func_start ov20_021D18C8
ov20_021D18C8: ; 0x021D18C8
	push {r4, lr}
	add r4, r0, #0
	bl ov20_021D18BC
	ldrh r1, [r4]
	lsl r1, r1, #1
	add r0, r1, r0
	pop {r4, pc}
	thumb_func_end ov20_021D18C8

	thumb_func_start ov20_021D18D8
ov20_021D18D8: ; 0x021D18D8
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov20_021D18D8

	thumb_func_start ov20_021D18DC
ov20_021D18DC: ; 0x021D18DC
	ldrh r0, [r0]
	bx lr
	thumb_func_end ov20_021D18DC

	thumb_func_start ov20_021D18E0
ov20_021D18E0: ; 0x021D18E0
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end ov20_021D18E0

	thumb_func_start ov20_021D18E4
ov20_021D18E4: ; 0x021D18E4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #3
	bls _021D18F2
	b _021D1A54
_021D18F2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D18FE: ; jump table
	.short _021D1906 - _021D18FE - 2 ; case 0
	.short _021D1A12 - _021D18FE - 2 ; case 1
	.short _021D1A24 - _021D18FE - 2 ; case 2
	.short _021D1A3E - _021D18FE - 2 ; case 3
_021D1906:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	bne _021D1916
	add r1, r4, #0
	add r1, #0x65
	ldrb r1, [r1]
	cmp r1, #0
	bne _021D192C
_021D1916:
	cmp r0, #1
	bne _021D1924
	add r1, r4, #0
	add r1, #0x65
	ldrb r1, [r1]
	cmp r1, #1
	bne _021D192C
_021D1924:
	ldrh r2, [r4, #0x30]
	mov r1, #4
	tst r1, r2
	beq _021D195C
_021D192C:
	ldr r0, _021D1A58 ; =0x000005E4
	bl sub_02005748
	add r0, r4, #0
	mov r1, #0
	add r0, #0x50
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r4, #0
	add r0, #0x65
	strb r1, [r0]
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ov20_021D21A0
	ldr r0, _021D1A5C ; =ov20_021D15A0
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r5, #0]
	b _021D1A54
_021D195C:
	cmp r0, #2
	bne _021D196A
	add r0, r4, #0
	add r0, #0x54
	bl ov20_021D1B48
	b _021D1982
_021D196A:
	cmp r0, #3
	bne _021D1978
	add r0, r4, #0
	add r0, #0x54
	bl ov20_021D1B70
	b _021D1982
_021D1978:
	ldrh r1, [r4, #0x34]
	add r0, r4, #0
	add r0, #0x54
	bl ov20_021D1A68
_021D1982:
	cmp r0, #1
	beq _021D1990
	cmp r0, #2
	beq _021D19A2
	cmp r0, #3
	beq _021D19B8
	b _021D19CE
_021D1990:
	ldr r0, _021D1A60 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov20_021D21A0
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D19A2:
	ldr r0, _021D1A60 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	bl ov20_021D21A0
	mov r0, #1
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D19B8:
	ldr r0, _021D1A60 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	bl ov20_021D21A0
	mov r0, #2
	str r0, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D19CE:
	ldrh r1, [r4, #0x30]
	mov r0, #2
	tst r0, r1
	beq _021D19EE
	ldr r0, _021D1A60 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #9
	bl ov20_021D21A0
	ldr r0, _021D1A5C ; =ov20_021D15A0
	str r0, [r4, #0x24]
	mov r0, #3
	str r0, [r5, #0]
	b _021D1A54
_021D19EE:
	mov r0, #1
	tst r0, r1
	beq _021D1A54
	ldr r0, _021D1A60 ; =0x000005DC
	bl sub_02005748
	add r0, r4, #0
	bl ov20_021D1BB0
	ldr r0, _021D1A64 ; =ov20_021D103C
	mov r1, #0xa
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x14]
	bl ov20_021D21A0
	mov r0, #3
	str r0, [r5, #0]
	b _021D1A54
_021D1A12:
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	bl ov20_021D2210
	cmp r0, #0
	beq _021D1A54
	mov r0, #0
	str r0, [r5, #0]
	b _021D1A54
_021D1A24:
	ldr r0, [r4, #0x14]
	mov r1, #0x10
	bl ov20_021D2210
	cmp r0, #0
	beq _021D1A54
	ldr r0, [r4, #0x14]
	mov r1, #0xf
	bl ov20_021D21A0
	mov r0, #0
	str r0, [r5, #0]
	b _021D1A54
_021D1A3E:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1A54
	ldr r1, [r4, #0x24]
	add r0, r4, #0
	bl ov20_021D1034
	mov r0, #0
	str r0, [r5, #0]
_021D1A54:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1A58: .word 0x000005E4
_021D1A5C: .word ov20_021D15A0
_021D1A60: .word 0x000005DC
_021D1A64: .word ov20_021D103C
	thumb_func_end ov20_021D18E4

	thumb_func_start ov20_021D1A68
ov20_021D1A68: ; 0x021D1A68
	push {r3, r4, r5, lr}
	mov r2, #0x80
	add r4, r0, #0
	tst r2, r1
	beq _021D1AD2
	ldrb r1, [r4, #7]
	cmp r1, #4
	bhs _021D1AA6
	add r1, r1, #1
	strb r1, [r4, #7]
	bl ov20_021D18C8
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021D1A8A
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1A8A:
	cmp r0, r1
	bne _021D1A9C
	mov r1, #1
	tst r0, r1
	beq _021D1A9C
	mov r0, #0
	strb r0, [r4, #6]
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_021D1A9C:
	ldrb r0, [r4, #7]
	sub r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #4
	pop {r3, r4, r5, pc}
_021D1AA6:
	ldrh r2, [r4]
	ldrh r1, [r4, #2]
	cmp r2, r1
	bhs _021D1ACE
	mov r1, #1
	str r1, [r4, #8]
	ldrh r1, [r4]
	add r1, r1, #1
	strh r1, [r4]
	bl ov20_021D18C8
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021D1AC6
	mov r0, #2
	pop {r3, r4, r5, pc}
_021D1AC6:
	mov r0, #0
	strb r0, [r4, #6]
	mov r0, #3
	pop {r3, r4, r5, pc}
_021D1ACE:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021D1AD2:
	mov r5, #0x40
	add r2, r1, #0
	tst r2, r5
	beq _021D1B00
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _021D1AE8
	sub r0, r0, #1
	strb r0, [r4, #7]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1AE8:
	ldrh r0, [r4]
	cmp r0, #0
	beq _021D1AFC
	sub r5, #0x41
	str r5, [r4, #8]
	ldrh r0, [r4]
	sub r0, r0, #1
	strh r0, [r4]
	mov r0, #2
	pop {r3, r4, r5, pc}
_021D1AFC:
	mov r0, #4
	pop {r3, r4, r5, pc}
_021D1B00:
	mov r3, #0x30
	add r2, r1, #0
	tst r2, r3
	beq _021D1B2A
	ldrb r2, [r4, #6]
	mov r1, #1
	eor r1, r2
	strb r1, [r4, #6]
	bl ov20_021D18C8
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021D1B1E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1B1E:
	ldrb r1, [r4, #6]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #6]
	mov r0, #4
	pop {r3, r4, r5, pc}
_021D1B2A:
	lsl r2, r5, #3
	tst r2, r1
	beq _021D1B36
	bl ov20_021D1B48
	pop {r3, r4, r5, pc}
_021D1B36:
	add r3, #0xd0
	tst r1, r3
	beq _021D1B42
	bl ov20_021D1B70
	pop {r3, r4, r5, pc}
_021D1B42:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D1A68

	thumb_func_start ov20_021D1B48
ov20_021D1B48: ; 0x021D1B48
	ldrh r1, [r0]
	cmp r1, #0
	beq _021D1B6A
	cmp r1, #5
	blo _021D1B5E
	sub r1, r1, #5
	strh r1, [r0]
	mov r1, #4
	mvn r1, r1
	str r1, [r0, #8]
	b _021D1B66
_021D1B5E:
	neg r1, r1
	str r1, [r0, #8]
	mov r1, #0
	strh r1, [r0]
_021D1B66:
	mov r0, #2
	bx lr
_021D1B6A:
	mov r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D1B48

	thumb_func_start ov20_021D1B70
ov20_021D1B70: ; 0x021D1B70
	push {r4, lr}
	add r4, r0, #0
	ldrh r2, [r4, #2]
	ldrh r1, [r4]
	cmp r1, r2
	bhs _021D1BAC
	add r0, r1, #5
	cmp r0, r2
	bgt _021D1B8C
	mov r0, #5
	str r0, [r4, #8]
	ldrh r0, [r4]
	add r0, r0, #5
	b _021D1B92
_021D1B8C:
	sub r0, r2, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #2]
_021D1B92:
	strh r0, [r4]
	add r0, r4, #0
	bl ov20_021D18C8
	ldrh r1, [r4, #4]
	cmp r0, r1
	bhs _021D1BA4
	mov r0, #2
	pop {r4, pc}
_021D1BA4:
	mov r0, #0
	strb r0, [r4, #6]
	mov r0, #3
	pop {r4, pc}
_021D1BAC:
	mov r0, #4
	pop {r4, pc}
	thumb_func_end ov20_021D1B70

	thumb_func_start ov20_021D1BB0
ov20_021D1BB0: ; 0x021D1BB0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x54
	bl ov20_021D18C8
	add r2, r0, #0
	add r0, r4, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x18]
	bne _021D1BD4
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	bl sub_02099CC8
	b _021D1BDE
_021D1BD4:
	add r1, r4, #0
	add r1, #0x50
	ldrh r1, [r1]
	bl sub_02099D14
_021D1BDE:
	add r2, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D1BF0
	cmp r0, #1
	beq _021D1BF4
	cmp r0, #2
	beq _021D1C02
	b _021D1C10
_021D1BF0:
	strh r2, [r4, #0x10]
	b _021D1C10
_021D1BF4:
	add r0, r4, #0
	add r0, #0x4e
	ldrh r0, [r0]
	lsl r0, r0, #1
	add r0, r4, r0
	strh r2, [r0, #0x10]
	b _021D1C10
_021D1C02:
	add r1, r4, #0
	add r1, #0x4e
	ldrh r1, [r1]
	add r0, r4, #0
	add r0, #8
	bl sub_02014CF8
_021D1C10:
	add r0, r4, #0
	bl ov20_021D1E8C
	pop {r4, pc}
	thumb_func_end ov20_021D1BB0

	thumb_func_start ov20_021D1C18
ov20_021D1C18: ; 0x021D1C18
	push {r4, lr}
	add r4, r1, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D1C28
	cmp r1, #1
	beq _021D1C38
	b _021D1C46
_021D1C28:
	ldr r0, [r0, #0x14]
	mov r1, #1
	bl ov20_021D21A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D1C46
_021D1C38:
	ldr r0, [r0, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1C46
	mov r0, #1
	pop {r4, pc}
_021D1C46:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov20_021D1C18

	thumb_func_start ov20_021D1C4C
ov20_021D1C4C: ; 0x021D1C4C
	str r1, [r0, #0x2c]
	mov r1, #0
	str r1, [r0, #0x28]
	bx lr
	thumb_func_end ov20_021D1C4C

	thumb_func_start ov20_021D1C54
ov20_021D1C54: ; 0x021D1C54
	mov r1, #0
	str r1, [r0, #0x2c]
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D1C54

	thumb_func_start ov20_021D1C5C
ov20_021D1C5C: ; 0x021D1C5C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D1C6E
	cmp r0, #1
	beq _021D1C7E
	pop {r3, r4, r5, pc}
_021D1C6E:
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl ov20_021D21A0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D1C7E:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1C8E
	add r0, r5, #0
	bl ov20_021D1C54
_021D1C8E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D1C5C

	thumb_func_start ov20_021D1C90
ov20_021D1C90: ; 0x021D1C90
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r0, #0
	cmp r1, #3
	bls _021D1C9E
	b _021D1DAC
_021D1C9E:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D1CAA: ; jump table
	.short _021D1CB2 - _021D1CAA - 2 ; case 0
	.short _021D1D00 - _021D1CAA - 2 ; case 1
	.short _021D1D86 - _021D1CAA - 2 ; case 2
	.short _021D1D9C - _021D1CAA - 2 ; case 3
_021D1CB2:
	bl ov20_021D1E70
	cmp r0, #0
	bne _021D1CC4
	ldr r0, [r4, #0]
	bl sub_02097568
	cmp r0, #0
	beq _021D1CF6
_021D1CC4:
	add r0, r4, #0
	bl ov20_021D1E8C
	cmp r0, #0
	beq _021D1CE8
	add r0, r4, #0
	add r0, #0x66
	mov r1, #1
	mov r2, #0
	bl ov20_021D1ED4
	ldr r0, [r4, #0x14]
	mov r1, #0x12
	bl ov20_021D21A0
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1CE8:
	ldr r0, [r4, #0x14]
	mov r1, #0x14
	bl ov20_021D21A0
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1CF6:
	ldr r1, _021D1DB0 ; =ov20_021D1DBC
	add r0, r4, #0
	bl ov20_021D1C4C
	pop {r3, r4, r5, pc}
_021D1D00:
	ldr r0, [r4, #0x14]
	mov r1, #0x15
	bl ov20_021D2210
	cmp r0, #0
	beq _021D1DAC
	ldrh r1, [r4, #0x30]
	add r0, r4, #0
	add r0, #0x66
	bl ov20_021D1EDC
	add r0, r0, #3
	cmp r0, #4
	bhi _021D1DAC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1D28: ; jump table
	.short _021D1D32 - _021D1D28 - 2 ; case 0
	.short _021D1D42 - _021D1D28 - 2 ; case 1
	.short _021D1DAC - _021D1D28 - 2 ; case 2
	.short _021D1D56 - _021D1D28 - 2 ; case 3
	.short _021D1D42 - _021D1D28 - 2 ; case 4
_021D1D32:
	ldr r0, _021D1DB4 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #0x15
	bl ov20_021D21A0
	pop {r3, r4, r5, pc}
_021D1D42:
	ldr r0, _021D1DB4 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #0x16
	bl ov20_021D21A0
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1D56:
	ldr r0, _021D1DB4 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021D1D6A
	add r0, r4, #0
	add r0, #8
	bl sub_02014D10
_021D1D6A:
	add r1, r4, #0
	add r2, r4, #0
	ldr r0, [r4, #0]
	add r1, #0x10
	add r2, #8
	bl sub_020975E4
	ldr r1, _021D1DB8 ; =ov20_021D1C18
	add r0, r4, #0
	bl ov20_021D1034
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1D86:
	ldrh r1, [r4, #0x30]
	mov r0, #0xf3
	tst r0, r1
	beq _021D1DAC
	ldr r0, [r4, #0x14]
	mov r1, #0x11
	bl ov20_021D21A0
	mov r0, #3
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1D9C:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1DAC
	add r0, r4, #0
	bl ov20_021D1C54
_021D1DAC:
	pop {r3, r4, r5, pc}
	nop
_021D1DB0: .word ov20_021D1DBC
_021D1DB4: .word 0x000005DC
_021D1DB8: .word ov20_021D1C18
	thumb_func_end ov20_021D1C90

	thumb_func_start ov20_021D1DBC
ov20_021D1DBC: ; 0x021D1DBC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D1DD2
	cmp r0, #1
	beq _021D1DEC
	cmp r0, #2
	beq _021D1E56
	pop {r3, r4, r5, pc}
_021D1DD2:
	add r0, r4, #0
	mov r1, #1
	add r0, #0x66
	add r2, r1, #0
	bl ov20_021D1ED4
	ldr r0, [r4, #0x14]
	mov r1, #0x13
	bl ov20_021D21A0
	mov r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1DEC:
	ldr r0, [r4, #0x14]
	mov r1, #0x15
	bl ov20_021D2210
	cmp r0, #0
	beq _021D1E66
	ldrh r1, [r4, #0x30]
	add r0, r4, #0
	add r0, #0x66
	bl ov20_021D1EDC
	add r0, r0, #3
	cmp r0, #4
	bhi _021D1E66
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D1E14: ; jump table
	.short _021D1E1E - _021D1E14 - 2 ; case 0
	.short _021D1E2E - _021D1E14 - 2 ; case 1
	.short _021D1E66 - _021D1E14 - 2 ; case 2
	.short _021D1E42 - _021D1E14 - 2 ; case 3
	.short _021D1E2E - _021D1E14 - 2 ; case 4
_021D1E1E:
	ldr r0, _021D1E68 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #0x15
	bl ov20_021D21A0
	pop {r3, r4, r5, pc}
_021D1E2E:
	ldr r0, _021D1E68 ; =0x000005DC
	bl sub_02005748
	ldr r0, [r4, #0x14]
	mov r1, #0x16
	bl ov20_021D21A0
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1E42:
	ldr r0, _021D1E68 ; =0x000005DC
	bl sub_02005748
	ldr r1, _021D1E6C ; =ov20_021D1C18
	add r0, r4, #0
	bl ov20_021D1034
	mov r0, #2
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D1E56:
	ldr r0, [r4, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1E66
	add r0, r4, #0
	bl ov20_021D1C54
_021D1E66:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1E68: .word 0x000005DC
_021D1E6C: .word ov20_021D1C18
	thumb_func_end ov20_021D1DBC

	thumb_func_start ov20_021D1E70
ov20_021D1E70: ; 0x021D1E70
	push {r3, lr}
	add r2, r0, #0
	add r1, r2, #0
	ldr r0, [r2, #0]
	add r1, #0x10
	add r2, #8
	bl sub_020975A0
	cmp r0, #0
	bne _021D1E88
	mov r0, #1
	pop {r3, pc}
_021D1E88:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov20_021D1E70

	thumb_func_start ov20_021D1E8C
ov20_021D1E8C: ; 0x021D1E8C
	push {r3, lr}
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021D1E9E
	cmp r1, #1
	beq _021D1EAE
	cmp r1, #2
	beq _021D1EC4
	b _021D1ECC
_021D1E9E:
	ldrh r1, [r0, #0x10]
	ldr r0, _021D1ED0 ; =0x0000FFFF
	cmp r1, r0
	beq _021D1EAA
	mov r0, #1
	pop {r3, pc}
_021D1EAA:
	mov r0, #0
	pop {r3, pc}
_021D1EAE:
	ldrh r2, [r0, #0x10]
	ldr r1, _021D1ED0 ; =0x0000FFFF
	cmp r2, r1
	beq _021D1EC0
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	beq _021D1EC0
	mov r0, #1
	pop {r3, pc}
_021D1EC0:
	mov r0, #0
	pop {r3, pc}
_021D1EC4:
	add r0, #8
	bl sub_02014BD0
	pop {r3, pc}
_021D1ECC:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D1ED0: .word 0x0000FFFF
	thumb_func_end ov20_021D1E8C

	thumb_func_start ov20_021D1ED4
ov20_021D1ED4: ; 0x021D1ED4
	strb r2, [r0]
	strb r1, [r0, #1]
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D1ED4

	thumb_func_start ov20_021D1EDC
ov20_021D1EDC: ; 0x021D1EDC
	mov r2, #0x40
	add r3, r1, #0
	tst r3, r2
	beq _021D1EFA
	ldrb r1, [r0]
	cmp r1, #0
	bne _021D1EF0
	sub r2, #0x44
	add r0, r2, #0
	bx lr
_021D1EF0:
	sub r1, r1, #1
	sub r2, #0x43
	strb r1, [r0]
	add r0, r2, #0
	bx lr
_021D1EFA:
	mov r2, #0x80
	add r3, r1, #0
	tst r3, r2
	beq _021D1F1A
	ldrb r3, [r0]
	ldrb r1, [r0, #1]
	cmp r3, r1
	bne _021D1F10
	sub r2, #0x84
	add r0, r2, #0
	bx lr
_021D1F10:
	add r1, r3, #1
	sub r2, #0x83
	strb r1, [r0]
	add r0, r2, #0
	bx lr
_021D1F1A:
	mov r2, #1
	tst r2, r1
	beq _021D1F24
	ldrb r0, [r0]
	bx lr
_021D1F24:
	mov r0, #2
	tst r1, r0
	beq _021D1F2E
	sub r0, r0, #4
	bx lr
_021D1F2E:
	sub r0, r0, #3
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D1EDC

	thumb_func_start ov20_021D1F34
ov20_021D1F34: ; 0x021D1F34
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov20_021D1F34

	thumb_func_start ov20_021D1F38
ov20_021D1F38: ; 0x021D1F38
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D1F4A
	cmp r0, #1
	beq _021D1F6E
	pop {r3, r4, r5, pc}
_021D1F4A:
	ldr r0, _021D1F80 ; =0x000005E4
	bl sub_02005748
	add r0, r5, #0
	add r0, #0x65
	ldrb r1, [r0]
	mov r0, #1
	eor r1, r0
	add r0, r5, #0
	add r0, #0x65
	strb r1, [r0]
	ldr r0, [r5, #0x14]
	mov r1, #0x17
	bl ov20_021D21A0
	mov r0, #1
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_021D1F6E:
	ldr r0, [r5, #0x14]
	bl ov20_021D21F8
	cmp r0, #0
	beq _021D1F7E
	add r0, r5, #0
	bl ov20_021D1C54
_021D1F7E:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1F80: .word 0x000005E4
	thumb_func_end ov20_021D1F38

	thumb_func_start ov20_021D1F84
ov20_021D1F84: ; 0x021D1F84
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov20_021D1F84

	thumb_func_start ov20_021D1F88
ov20_021D1F88: ; 0x021D1F88
	ldr r3, _021D1F90 ; =sub_02097554
	ldr r0, [r0, #0]
	bx r3
	nop
_021D1F90: .word sub_02097554
	thumb_func_end ov20_021D1F88

	thumb_func_start ov20_021D1F94
ov20_021D1F94: ; 0x021D1F94
	add r0, #0x65
	ldrb r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D1F94

	thumb_func_start ov20_021D1F9C
ov20_021D1F9C: ; 0x021D1F9C
	ldr r3, _021D1FA4 ; =sub_02014C80
	add r0, #8
	bx r3
	nop
_021D1FA4: .word sub_02014C80
	thumb_func_end ov20_021D1F9C

	thumb_func_start ov20_021D1FA8
ov20_021D1FA8: ; 0x021D1FA8
	push {r3, lr}
	ldr r2, [r0, #4]
	cmp r2, #2
	bne _021D1FB8
	add r0, #8
	bl sub_02014C78
	pop {r3, pc}
_021D1FB8:
	lsl r1, r1, #1
	add r0, r0, r1
	ldrh r0, [r0, #0x10]
	pop {r3, pc}
	thumb_func_end ov20_021D1FA8

	thumb_func_start ov20_021D1FC0
ov20_021D1FC0: ; 0x021D1FC0
	ldr r3, _021D1FC8 ; =sub_02014BA0
	add r0, #8
	bx r3
	nop
_021D1FC8: .word sub_02014BA0
	thumb_func_end ov20_021D1FC0

	thumb_func_start ov20_021D1FCC
ov20_021D1FCC: ; 0x021D1FCC
	add r0, #0x4e
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D1FCC

	thumb_func_start ov20_021D1FD4
ov20_021D1FD4: ; 0x021D1FD4
	add r0, #0x4c
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D1FD4

	thumb_func_start ov20_021D1FDC
ov20_021D1FDC: ; 0x021D1FDC
	add r0, #0x50
	ldrh r0, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end ov20_021D1FDC

	thumb_func_start ov20_021D1FE4
ov20_021D1FE4: ; 0x021D1FE4
	push {r3, lr}
	add r1, r0, #0
	add r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	ldr r0, [r1, #0x18]
	bne _021D1FFC
	add r1, #0x50
	ldrh r1, [r1]
	bl sub_02099CA0
	pop {r3, pc}
_021D1FFC:
	add r1, #0x50
	ldrh r1, [r1]
	bl sub_02099CDC
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov20_021D1FE4

	thumb_func_start ov20_021D2008
ov20_021D2008: ; 0x021D2008
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x65
	ldrb r0, [r0]
	add r4, r1, #0
	add r3, r2, #0
	cmp r0, #0
	ldr r0, [r5, #0x18]
	bne _021D2026
	add r5, #0x50
	ldrh r1, [r5]
	add r2, r4, #0
	bl sub_02099CA8
	pop {r3, r4, r5, pc}
_021D2026:
	add r5, #0x50
	ldrh r1, [r5]
	add r2, r4, #0
	bl sub_02099CEC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov20_021D2008

	thumb_func_start ov20_021D2034
ov20_021D2034: ; 0x021D2034
	ldr r3, _021D203C ; =ov20_021D18BC
	add r0, #0x54
	bx r3
	nop
_021D203C: .word ov20_021D18BC
	thumb_func_end ov20_021D2034

	thumb_func_start ov20_021D2040
ov20_021D2040: ; 0x021D2040
	ldr r3, _021D2048 ; =ov20_021D18D8
	add r0, #0x54
	bx r3
	nop
_021D2048: .word ov20_021D18D8
	thumb_func_end ov20_021D2040

	thumb_func_start ov20_021D204C
ov20_021D204C: ; 0x021D204C
	push {r3, lr}
	add r0, #0x54
	bl ov20_021D18DC
	cmp r0, #0
	beq _021D205C
	mov r0, #1
	pop {r3, pc}
_021D205C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov20_021D204C

	thumb_func_start ov20_021D2060
ov20_021D2060: ; 0x021D2060
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x54
	bl ov20_021D18DC
	add r5, #0x54
	add r4, r0, #0
	add r0, r5, #0
	bl ov20_021D18E0
	cmp r4, r0
	bge _021D207C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D207C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov20_021D2060

	thumb_func_start ov20_021D2080
ov20_021D2080: ; 0x021D2080
	ldr r3, _021D2088 ; =sub_02097558
	ldr r0, [r0, #0]
	bx r3
	nop
_021D2088: .word sub_02097558
	thumb_func_end ov20_021D2080

	thumb_func_start ov20_021D208C
ov20_021D208C: ; 0x021D208C
	ldr r3, _021D2094 ; =ov20_021D1F34
	add r0, #0x66
	bx r3
	nop
_021D2094: .word ov20_021D1F34
	thumb_func_end ov20_021D208C

	.rodata


	.global Unk_ov20_021D5140
Unk_ov20_021D5140: ; 0x021D5140
	.incbin "incbin/overlay20_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov20_021D5148
Unk_ov20_021D5148: ; 0x021D5148
	.incbin "incbin/overlay20_rodata.bin", 0x8, 0x14 - 0x8

	.global Unk_ov20_021D5154
Unk_ov20_021D5154: ; 0x021D5154
	.incbin "incbin/overlay20_rodata.bin", 0x14, 0x28 - 0x14

	.global Unk_ov20_021D5168
Unk_ov20_021D5168: ; 0x021D5168
	.incbin "incbin/overlay20_rodata.bin", 0x28, 0x34

