	.include "macros/function.inc"
	.include "overlay075/ov75_021D0D80.inc"

	.extern OS_IRQTable

	.text


	thumb_func_start ov75_021D0D80
ov75_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	mov r2, #2
	mov r0, #3
	mov r1, #0x29
	lsl r2, r2, #0x10
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0xbc
	mov r2, #0x29
	bl sub_0200681C
	mov r1, #0
	mov r2, #0xbc
	add r4, r0, #0
	bl memset
	mov r0, #0x29
	str r0, [r4, #0]
	add r0, r5, #0
	bl sub_02006840
	str r0, [r4, #0x1c]
	ldrh r0, [r0]
	ldr r1, _021D0DF4 ; =0x0000FFFF
	strb r0, [r4, #0xc]
	ldrb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x11]
	ldr r0, [r4, #0x1c]
	ldrb r0, [r0, #3]
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0x11]
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	ldr r0, [r4, #0x1c]
	strh r1, [r0]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #4]
	bl sub_02027AC0
	strb r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	ldr r0, [r0, #4]
	bl sub_02027B50
	strh r0, [r4, #0xa]
	mov r0, #1
	bl sub_02002AC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D0DF4: .word 0x0000FFFF
	thumb_func_end ov75_021D0D80

	thumb_func_start ov75_021D0DF8
ov75_021D0DF8: ; 0x021D0DF8
	push {r3, lr}
	bl sub_0200682C
	bl ov75_021D1184
	cmp r0, #0
	beq _021D0E0A
	mov r0, #1
	pop {r3, pc}
_021D0E0A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov75_021D0DF8

	thumb_func_start ov75_021D0E10
ov75_021D0E10: ; 0x021D0E10
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl sub_0200682C
	add r5, r0, #0
	mov r0, #0
	bl sub_02002AC8
	ldr r5, [r5, #0]
	add r0, r4, #0
	bl sub_02006830
	add r0, r5, #0
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov75_021D0E10

	thumb_func_start ov75_021D0E34
ov75_021D0E34: ; 0x021D0E34
	push {r4, r5, r6, lr}
	mov r4, #0
	add r6, r0, #0
	add r5, r4, #0
_021D0E3C:
	ldr r0, [r6, #0x1c]
	add r0, #0x1a
	add r0, r0, r5
	bl sub_02014BBC
	cmp r0, #0
	beq _021D0E4E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D0E4E:
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _021D0E3C
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov75_021D0E34

	thumb_func_start ov75_021D0E5C
ov75_021D0E5C: ; 0x021D0E5C
	push {r3, lr}
	ldr r0, _021D0E78 ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	beq _021D0E72
	ldr r0, _021D0E7C ; =0x000005E3
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D0E72:
	mov r0, #0
	pop {r3, pc}
	nop
_021D0E78: .word 0x021BF67C
_021D0E7C: .word 0x000005E3
	thumb_func_end ov75_021D0E5C

	thumb_func_start ov75_021D0E80
ov75_021D0E80: ; 0x021D0E80
	push {r3, r4, r5, lr}
	ldr r1, _021D0F90 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	mov r1, #1
	add r5, r2, #0
	mov r3, #0
	tst r5, r1
	beq _021D0EF8
	ldrb r1, [r4, #0x11]
	cmp r1, #3
	bne _021D0EDE
	ldrb r1, [r4, #0x12]
	cmp r1, #0
	bne _021D0EC2
	bl ov75_021D0E34
	cmp r0, #0
	beq _021D0EB4
	ldr r0, _021D0F94 ; =0x000005DD
	bl sub_02005748
	mov r0, #2
	strb r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D0EB4:
	ldr r0, [r4, #0x1c]
	mov r1, #3
	strh r1, [r0]
	ldr r0, _021D0F98 ; =0x000005E3
	bl sub_02005748
	b _021D0ED0
_021D0EC2:
	ldr r0, _021D0F94 ; =0x000005DD
	bl sub_02005748
	mov r0, #3
	strb r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D0ED0:
	ldr r0, [r4, #0x1c]
	mov r1, #0
	strb r1, [r0, #3]
	ldr r1, [r4, #0x1c]
	ldrb r0, [r1, #3]
	strb r0, [r1, #2]
	b _021D0EF4
_021D0EDE:
	ldr r0, [r4, #0x1c]
	strb r1, [r0, #2]
	ldr r1, [r4, #0x1c]
	ldrb r0, [r1, #2]
	strh r0, [r1]
	ldrb r1, [r4, #0x12]
	ldr r0, [r4, #0x1c]
	strb r1, [r0, #3]
	ldr r0, _021D0F94 ; =0x000005DD
	bl sub_02005748
_021D0EF4:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0EF8:
	mov r0, #2
	tst r0, r2
	beq _021D0F0C
	ldr r0, _021D0F94 ; =0x000005DD
	bl sub_02005748
	mov r0, #3
	strb r0, [r4, #0xc]
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D0F0C:
	mov r0, #8
	tst r0, r2
	beq _021D0F1C
	mov r0, #3
	strb r0, [r4, #0x11]
	strb r3, [r4, #0x12]
	add r3, r1, #0
	b _021D0F6E
_021D0F1C:
	mov r0, #0x80
	tst r0, r2
	beq _021D0F38
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	mov r0, #0x1e
	ror r2, r0
	add r0, r3, r2
	strb r0, [r4, #0x11]
	add r3, r1, #0
	b _021D0F6E
_021D0F38:
	mov r0, #0x40
	tst r0, r2
	beq _021D0F54
	ldrb r0, [r4, #0x11]
	add r0, r0, #3
	lsr r3, r0, #0x1f
	lsl r2, r0, #0x1e
	sub r2, r2, r3
	mov r0, #0x1e
	ror r2, r0
	add r0, r3, r2
	strb r0, [r4, #0x11]
	add r3, r1, #0
	b _021D0F6E
_021D0F54:
	mov r0, #0x30
	tst r0, r2
	beq _021D0F6A
	ldrb r0, [r4, #0x11]
	cmp r0, #3
	bne _021D0F6E
	ldrb r0, [r4, #0x12]
	add r3, r1, #0
	eor r0, r1
	strb r0, [r4, #0x12]
	b _021D0F6E
_021D0F6A:
	add r0, r3, #0
	pop {r3, r4, r5, pc}
_021D0F6E:
	cmp r3, #0
	bne _021D0F76
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D0F76:
	ldr r0, _021D0F9C ; =0x000005DC
	bl sub_02005748
	ldrb r1, [r4, #0x11]
	cmp r1, #3
	bne _021D0F8A
	ldrb r0, [r4, #0x12]
	add r0, r1, r0
	strb r0, [r4, #0x16]
	b _021D0F8C
_021D0F8A:
	strb r1, [r4, #0x16]
_021D0F8C:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D0F90: .word 0x021BF67C
_021D0F94: .word 0x000005DD
_021D0F98: .word 0x000005E3
_021D0F9C: .word 0x000005DC
	thumb_func_end ov75_021D0E80

	thumb_func_start ov75_021D0FA0
ov75_021D0FA0: ; 0x021D0FA0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _021D0FB2
	cmp r0, #1
	beq _021D0FFE
	b _021D102C
_021D0FB2:
	add r0, r5, #0
	add r0, #0x94
	mov r1, #1
	mov r2, #0xa
	mov r3, #6
	bl sub_0200E060
	add r0, r5, #0
	add r0, #0x94
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r1, [r5, #0]
	mov r0, #0x4c
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #2
	add r2, r4, #0
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	ldr r0, _021D1038 ; =0x0001020F
	str r3, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	add r0, #0x94
	mov r1, #1
	add r2, r4, #0
	str r3, [sp, #0xc]
	bl sub_0201D78C
	add r0, r4, #0
	bl sub_020237BC
	b _021D102C
_021D0FFE:
	ldr r0, _021D103C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #3
	tst r0, r1
	bne _021D100E
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D100E:
	add r0, r5, #0
	add r0, #0x94
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x94
	bl sub_0201ACF4
	mov r0, #0
	strh r0, [r5, #8]
	ldrb r1, [r5, #0xd]
	add sp, #0x10
	strb r1, [r5, #0xc]
	pop {r3, r4, r5, pc}
_021D102C:
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1038: .word 0x0001020F
_021D103C: .word 0x021BF67C
	thumb_func_end ov75_021D0FA0

	thumb_func_start ov75_021D1040
ov75_021D1040: ; 0x021D1040
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _021D1060 ; =0x021D1CFC
	str r0, [sp]
	ldr r0, [r4, #0x18]
	mov r2, #1
	mov r3, #5
	bl sub_02002100
	add r4, #0xa4
	str r0, [r4, #0]
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D1060: .word Unk_ov75_021D1CFC
	thumb_func_end ov75_021D1040

	thumb_func_start ov75_021D1064
ov75_021D1064: ; 0x021D1064
	push {r3, lr}
	add r1, r0, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_02002114
	cmp r0, #0
	beq _021D1080
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _021D1084
	b _021D1088
_021D1080:
	mov r0, #1
	pop {r3, pc}
_021D1084:
	mov r0, #0
	pop {r3, pc}
_021D1088:
	add r0, r1, #1
	pop {r3, pc}
	thumb_func_end ov75_021D1064

	thumb_func_start ov75_021D108C
ov75_021D108C: ; 0x021D108C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrh r1, [r5, #8]
	cmp r1, #0
	beq _021D10A2
	cmp r1, #1
	beq _021D1114
	cmp r1, #2
	beq _021D112C
	b _021D116A
_021D10A2:
	mov r1, #1
	add r0, #0x94
	mov r2, #0xa
	mov r3, #6
	strb r1, [r5, #0x13]
	bl sub_0200E060
	add r0, r5, #0
	add r0, #0x94
	mov r1, #0xff
	bl sub_0201ADA4
	ldr r1, [r5, #0]
	mov r0, #0x4c
	bl sub_02023790
	add r4, r0, #0
	ldr r0, [r5, #0x20]
	mov r1, #3
	add r2, r4, #0
	bl sub_0200B1B8
	mov r3, #0
	str r3, [sp]
	ldrb r0, [r5, #0x10]
	mov r1, #1
	add r2, r4, #0
	str r0, [sp, #4]
	ldr r0, _021D1178 ; =0x0001020F
	str r0, [sp, #8]
	add r0, r5, #0
	str r3, [sp, #0xc]
	add r0, #0x94
	bl sub_0201D78C
	strb r0, [r5, #0xf]
	add r0, r4, #0
	bl sub_020237BC
	mov r1, #0
	ldr r0, _021D117C ; =0x00007FFF
	str r1, [sp]
	str r0, [sp, #4]
	ldrb r2, [r5, #0x17]
	ldr r0, [r5, #0x30]
	mov r3, #1
	add r2, #0x22
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_020039B0
	ldrb r0, [r5, #0x16]
	strb r0, [r5, #0x17]
	mov r0, #0
	strb r0, [r5, #0x15]
	strb r0, [r5, #0x14]
	b _021D116A
_021D1114:
	ldrb r0, [r5, #0xf]
	bl sub_0201D724
	cmp r0, #0
	beq _021D1124
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D1124:
	add r0, r5, #0
	bl ov75_021D1040
	b _021D116A
_021D112C:
	bl ov75_021D1064
	add r4, r0, #0
	bpl _021D113A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D113A:
	add r0, r5, #0
	add r0, #0x94
	mov r1, #1
	bl sub_0200E084
	add r0, r5, #0
	add r0, #0x94
	bl sub_0201ACF4
	mov r0, #0
	strh r0, [r5, #8]
	cmp r4, #0
	beq _021D1160
	ldr r1, _021D1180 ; =0x0000FFFF
	ldr r0, [r5, #0x1c]
	add sp, #0x10
	strh r1, [r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1160:
	ldrb r1, [r5, #0xd]
	add sp, #0x10
	strb r1, [r5, #0xc]
	strb r0, [r5, #0x13]
	pop {r3, r4, r5, pc}
_021D116A:
	ldrh r0, [r5, #8]
	add r0, r0, #1
	strh r0, [r5, #8]
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021D1178: .word 0x0001020F
_021D117C: .word 0x00007FFF
_021D1180: .word 0x0000FFFF
	thumb_func_end ov75_021D108C

	thumb_func_start ov75_021D1184
ov75_021D1184: ; 0x021D1184
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #5
	bls _021D1192
	b _021D12F6
_021D1192:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D119E: ; jump table
	.short _021D11AA - _021D119E - 2 ; case 0
	.short _021D11F0 - _021D119E - 2 ; case 1
	.short _021D123A - _021D119E - 2 ; case 2
	.short _021D1256 - _021D119E - 2 ; case 3
	.short _021D1290 - _021D119E - 2 ; case 4
	.short _021D12E2 - _021D119E - 2 ; case 5
_021D11AA:
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_020177A4
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D1304 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D1308 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	bl sub_0200F32C
	mov r0, #1
	bl sub_0200F32C
	b _021D12F6
_021D11F0:
	bl ov75_021D13E8
	cmp r0, #0
	bne _021D11FE
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D11FE:
	ldr r0, _021D130C ; =ov75_021D131C
	add r1, r4, #0
	bl sub_02017798
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0
	bl sub_0200F338
	mov r1, #4
	ldr r0, _021D1310 ; =0x04000050
	mov r2, #8
	mov r3, #0x1c
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #5
	ldr r0, [r4, #0x30]
	ldr r2, _021D1314 ; =0x0000FFFF
	sub r3, r1, #6
	bl sub_02003178
	b _021D12F6
_021D123A:
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D1246
	bl sub_0200C7EC
_021D1246:
	ldr r0, [r4, #0x30]
	bl sub_0200384C
	cmp r0, #0
	beq _021D12F6
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D1256:
	add r0, #0xac
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D1262
	bl sub_0200C7EC
_021D1262:
	ldrb r1, [r4, #0xc]
	add r0, r4, #0
	lsl r2, r1, #2
	ldr r1, _021D1318 ; =0x021D1D14
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	bne _021D1278
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D1278:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #5
	ldr r0, [r4, #0x30]
	ldr r2, _021D1314 ; =0x0000FFFF
	sub r3, r1, #6
	bl sub_02003178
	b _021D12F6
_021D1290:
	ldr r0, [r4, #0x30]
	bl sub_0200384C
	cmp r0, #0
	beq _021D12AC
	add r4, #0xac
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _021D12A6
	bl sub_0200C7EC
_021D12A6:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D12AC:
	mov r0, #0
	add r1, r0, #0
	bl sub_0200F344
	mov r0, #1
	mov r1, #0
	bl sub_0200F344
	mov r0, #0
	add r1, r0, #0
	bl sub_02017798
	bl sub_0201FF00
	bl sub_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D1304 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D1308 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	b _021D12F6
_021D12E2:
	bl ov75_021D1434
	cmp r0, #0
	beq _021D12F0
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021D12F0:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D12F6:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D1304: .word 0xFFFFE0FF
_021D1308: .word 0x04001000
_021D130C: .word ov75_021D131C
_021D1310: .word 0x04000050
_021D1314: .word 0x0000FFFF
_021D1318: .word Unk_ov75_021D1D14
	thumb_func_end ov75_021D1184

	thumb_func_start ov75_021D131C
ov75_021D131C: ; 0x021D131C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D132A
	bl sub_02003694
_021D132A:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D1338
	bl sub_0200C800
_021D1338:
	bl NNS_GfdDoVramTransfer
	ldr r0, [r4, #0x18]
	bl sub_0201C2B8
	ldr r3, _021D1350 ; =0x027E0000
	ldr r1, _021D1354 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	; .align 2, 0
_021D1350: .word OS_IRQTable
_021D1354: .word 0x00003FF8
	thumb_func_end ov75_021D131C

	thumb_func_start ov75_021D1358
ov75_021D1358: ; 0x021D1358
	push {r4, lr}
	sub sp, #8
	add r4, r1, #0
	ldr r2, [r4, #0x30]
	cmp r2, #0
	bne _021D136C
	bl sub_0200DA58
	add sp, #8
	pop {r4, pc}
_021D136C:
	ldrb r0, [r4, #0x13]
	cmp r0, #0
	bne _021D13E0
	ldrb r3, [r4, #0x17]
	ldrb r0, [r4, #0x16]
	cmp r3, r0
	beq _021D139A
	mov r1, #0
	ldr r0, _021D13E4 ; =0x00007FFF
	str r1, [sp]
	str r0, [sp, #4]
	add r3, #0x22
	add r0, r2, #0
	lsl r2, r3, #0x10
	lsr r2, r2, #0x10
	mov r3, #1
	bl sub_020039B0
	ldrb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	mov r0, #0
	strb r0, [r4, #0x15]
	strb r0, [r4, #0x14]
_021D139A:
	ldrb r0, [r4, #0x14]
	mov r1, #0
	mov r3, #1
	str r0, [sp]
	ldr r0, _021D13E4 ; =0x00007FFF
	str r0, [sp, #4]
	ldrb r2, [r4, #0x16]
	ldr r0, [r4, #0x30]
	add r2, #0x22
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_020039B0
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x14]
	cmp r0, #0
	beq _021D13D0
	sub r0, r1, #1
	strb r0, [r4, #0x14]
	cmp r1, #1
	bne _021D13E0
	ldrb r1, [r4, #0x15]
	mov r0, #1
	add sp, #8
	eor r0, r1
	strb r0, [r4, #0x15]
	pop {r4, pc}
_021D13D0:
	add r0, r1, #1
	strb r0, [r4, #0x14]
	cmp r1, #0xc
	bne _021D13E0
	ldrb r1, [r4, #0x15]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #0x15]
_021D13E0:
	add sp, #8
	pop {r4, pc}
	; .align 2, 0
_021D13E4: .word 0x00007FFF
	thumb_func_end ov75_021D1358

	thumb_func_start ov75_021D13E8
ov75_021D13E8: ; 0x021D13E8
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #8]
	cmp r1, #3
	bhi _021D142A
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D13FE: ; jump table
	.short _021D1406 - _021D13FE - 2 ; case 0
	.short _021D140C - _021D13FE - 2 ; case 1
	.short _021D1412 - _021D13FE - 2 ; case 2
	.short _021D141E - _021D13FE - 2 ; case 3
_021D1406:
	bl ov75_021D1480
	b _021D142A
_021D140C:
	bl ov75_021D1598
	b _021D142A
_021D1412:
	bl ov75_021D18A8
	add r0, r4, #0
	bl ov75_021D19C8
	b _021D142A
_021D141E:
	bl ov75_021D1ADC
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021D142A:
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov75_021D13E8

	thumb_func_start ov75_021D1434
ov75_021D1434: ; 0x021D1434
	push {r4, lr}
	add r4, r0, #0
	bl ov75_021D1CB8
	add r0, r4, #0
	add r0, #0x24
	beq _021D1448
	ldr r0, [r4, #0x20]
	bl sub_0200B190
_021D1448:
	add r0, r4, #0
	bl ov75_021D19A8
	add r0, r4, #0
	bl ov75_021D1868
	add r0, r4, #0
	bl ov75_021D1564
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov75_021D1434

	thumb_func_start ov75_021D1460
ov75_021D1460: ; 0x021D1460
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D147C ; =0x021D1D70
	add r3, sp, #0
	mov r2, #5
_021D146A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D146A
	add r0, sp, #0
	bl sub_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D147C: .word Unk_ov75_021D1D70
	thumb_func_end ov75_021D1460

	thumb_func_start ov75_021D1480
ov75_021D1480: ; 0x021D1480
	push {r4, r5, lr}
	sub sp, #0x9c
	add r4, r0, #0
	bl ov75_021D1460
	ldr r0, [r4, #0]
	bl sub_02018340
	add r3, sp, #0
	ldr r5, _021D155C ; =0x021D1D04
	str r0, [r4, #0x18]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl sub_02018368
	ldr r5, _021D1560 ; =0x021D1D98
	add r3, sp, #0x10
	mov r2, #0x11
_021D14AC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D14AC
	ldr r0, [r5, #0]
	mov r1, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x18]
	add r2, sp, #0x10
	add r3, r1, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #1
	add r2, sp, #0x2c
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #2
	add r2, sp, #0x48
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #3
	add r2, sp, #0x64
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #4
	add r2, sp, #0x80
	mov r3, #0
	bl sub_020183C4
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019EBC
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02019EBC
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_02019EBC
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl sub_02019EBC
	ldr r0, [r4, #0x18]
	mov r1, #4
	bl sub_02019EBC
	mov r0, #0
	ldr r3, [r4, #0]
	mov r1, #0x20
	add r2, r0, #0
	bl sub_02019690
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [r4, #0]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [r4, #0]
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	ldr r3, [r4, #0]
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	bl sub_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	; .align 2, 0
_021D155C: .word Unk_ov75_021D1D04
_021D1560: .word Unk_ov75_021D1D98
	thumb_func_end ov75_021D1480

	thumb_func_start ov75_021D1564
ov75_021D1564: ; 0x021D1564
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x18]
	mov r1, #4
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #3
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #2
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #1
	bl sub_02019044
	ldr r0, [r4, #0x18]
	mov r1, #0
	bl sub_02019044
	ldr r0, [r4, #0x18]
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov75_021D1564

	thumb_func_start ov75_021D1598
ov75_021D1598: ; 0x021D1598
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	add r5, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, [r5, #0]
	ldrb r7, [r0, #0xf]
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, #0x18
	str r0, [sp, #0x20]
	mov r0, #0x4f
	bl sub_02006C24
	mov r1, #0
	str r1, [sp]
	add r4, r0, #0
	ldr r0, [r5, #0]
	mov r2, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	mov r3, #5
	bl sub_0200DAA4
	ldrh r0, [r5, #0xa]
	mov r1, #0
	mov r2, #0xa
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0]
	mov r3, #6
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	bl sub_0200DD0C
	add r0, r7, #0
	str r0, [sp, #0x1c]
	add r0, #0xc
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	bl sub_02006D84
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02018184
	add r6, r0, #0
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	add r2, r6, #0
	bl sub_02006D28
	add r0, r6, #0
	add r1, sp, #0x28
	bl NNS_G2dGetUnpackedCharacterData
	ldr r3, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x18]
	ldr r3, [r3, #0x10]
	mov r1, #1
	bl sub_0201958C
	ldr r3, [sp, #0x28]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x18]
	ldr r3, [r3, #0x10]
	mov r1, #4
	bl sub_0201958C
	add r0, r6, #0
	bl sub_020181C4
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02006D84
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02018184
	add r6, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl sub_02006D28
	add r0, r6, #0
	add r1, sp, #0x24
	bl NNS_G2dGetUnpackedPaletteData
	ldr r2, [sp, #0x24]
	mov r0, #4
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	mov r3, #0
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	bl sub_0201972C
	ldr r0, [r5, #0]
	bl sub_02002F38
	str r0, [r5, #0x30]
	ldr r3, [r5, #0]
	mov r1, #0
	mov r2, #0xe0
	bl sub_02002F70
	ldr r0, [r5, #0x30]
	ldr r3, [r5, #0]
	mov r1, #2
	mov r2, #0x60
	bl sub_02002F70
	mov r0, #0x60
	str r0, [sp]
	ldr r1, [sp, #0x24]
	mov r2, #0
	ldr r0, [r5, #0x30]
	ldr r1, [r1, #0xc]
	add r3, r2, #0
	bl sub_02002FBC
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _021D16B4
	mov r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x24]
	ldr r0, [r5, #0x30]
	ldr r1, [r1, #0xc]
	mov r2, #0
	add r1, #0x60
	mov r3, #0x10
	bl sub_02002FBC
_021D16B4:
	mov r0, #2
	str r0, [sp]
	mov r0, #0x60
	str r0, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	ldr r0, [r5, #0x30]
	ldr r3, [r5, #0]
	mov r1, #0x13
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x30
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	ldr r3, [r5, #0]
	mov r1, #0xe
	mov r2, #6
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x40
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	ldr r3, [r5, #0]
	mov r1, #0xe
	mov r2, #7
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x50
	str r0, [sp, #8]
	ldr r0, [r5, #0x30]
	ldr r3, [r5, #0]
	mov r1, #0x26
	mov r2, #0x18
	bl sub_02003050
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x60
	str r0, [sp, #8]
	ldrh r2, [r5, #0xa]
	ldr r0, [r5, #0x30]
	ldr r3, [r5, #0]
	mov r1, #0x26
	add r2, #0x19
	bl sub_02003050
	mov r0, #0x10
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r5, #0x30]
	add r2, r1, #0
	mov r3, #0x70
	bl sub_020039B0
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldr r0, [r5, #0x30]
	mov r1, #2
	mov r3, #0x30
	bl sub_020039B0
	ldr r0, [r5, #0x30]
	mov r1, #1
	bl sub_02003858
	ldr r0, [r5, #0x30]
	bl sub_02003694
	add r0, r6, #0
	bl sub_020181C4
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	bl sub_02006D84
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02018144
	str r0, [r5, #0x34]
	ldr r1, [sp, #0x20]
	ldr r2, [r5, #0x34]
	add r0, r4, #0
	bl sub_02006D28
	add r1, r5, #0
	ldr r0, [r5, #0x34]
	add r1, #0x3c
	bl NNS_G2dGetUnpackedScreenData
	add r0, r4, #0
	mov r1, #0x24
	bl sub_02006D84
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl sub_02018144
	str r0, [r5, #0x38]
	ldr r2, [r5, #0x38]
	add r0, r4, #0
	mov r1, #0x24
	bl sub_02006D28
	add r1, r5, #0
	ldr r0, [r5, #0x38]
	add r1, #0x40
	bl NNS_G2dGetUnpackedScreenData
	add r0, r4, #0
	bl sub_02006CA8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	ldr r2, _021D1860 ; =0x00002001
	mov r1, #4
	bl sub_02019CB8
	mov r2, #0
	ldr r0, [r5, #0x3c]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x18]
	bl sub_020198E8
	ldr r0, [r5, #0x18]
	mov r1, #3
	bl sub_0201C3C0
	ldr r0, [r5, #0x18]
	mov r1, #4
	bl sub_0201C3C0
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _021D185A
	ldr r0, [r5, #0x40]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	mov r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x18]
	bl sub_020198E8
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl sub_0201C3C0
	mov r2, #0
	strb r2, [r5, #0x14]
	ldr r0, _021D1864 ; =ov75_021D1358
	add r1, r5, #0
	strb r2, [r5, #0x15]
	bl sub_0200D9E8
_021D185A:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1860: .word 0x00002001
_021D1864: .word ov75_021D1358
	thumb_func_end ov75_021D1598

	thumb_func_start ov75_021D1868
ov75_021D1868: ; 0x021D1868
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl sub_020181C4
	ldr r0, [r4, #0x34]
	bl sub_020181C4
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl sub_02002FA0
	ldr r0, [r4, #0x30]
	mov r1, #0
	bl sub_02002FA0
	ldr r0, [r4, #0x30]
	bl sub_02002F54
	mov r1, #0
	str r1, [r4, #0x30]
	ldr r0, _021D18A4 ; =0x04000050
	add r2, r1, #0
	mov r3, #0x1f
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D18A4: .word 0x04000050
	thumb_func_end ov75_021D1868

	thumb_func_start ov75_021D18A8
ov75_021D18A8: ; 0x021D18A8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	mov r3, #3
	add r5, r0, #0
	str r3, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #1
	add r1, r5, #0
	ldr r0, _021D1990 ; =0x00000397
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	add r1, #0x44
	bl sub_0201A7E8
	mov r0, #8
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #1
	add r1, r5, #0
	ldr r0, _021D1994 ; =0x0000032F
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	add r1, #0x54
	mov r3, #3
	bl sub_0201A7E8
	mov r0, #0xd
	str r0, [sp]
	mov r0, #0x1a
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r2, #1
	add r1, r5, #0
	ldr r0, _021D1998 ; =0x000002C7
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	add r1, #0x64
	mov r3, #3
	bl sub_0201A7E8
	mov r0, #0x14
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r2, #1
	add r1, r5, #0
	ldr r0, _021D199C ; =0x000002B7
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	add r1, #0x74
	mov r3, #0x15
	bl sub_0201A7E8
	mov r0, #0x14
	str r0, [sp]
	mov r0, #8
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r2, #1
	add r1, r5, #0
	ldr r0, _021D19A0 ; =0x000002A7
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	add r1, #0x84
	mov r3, #3
	bl sub_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021D19A4 ; =0x00000297
	add r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x18]
	add r1, #0x94
	mov r2, #0
	mov r3, #2
	bl sub_0201A7E8
	mov r4, #0
	add r5, #0x44
	add r6, r4, #0
_021D1972:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_0201ADA4
	cmp r4, #5
	bge _021D1984
	add r0, r5, #0
	bl sub_0201A954
_021D1984:
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _021D1972
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D1990: .word 0x00000397
_021D1994: .word 0x0000032F
_021D1998: .word 0x000002C7
_021D199C: .word 0x000002B7
_021D19A0: .word 0x000002A7
_021D19A4: .word 0x00000297
	thumb_func_end ov75_021D18A8

	thumb_func_start ov75_021D19A8
ov75_021D19A8: ; 0x021D19A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
	add r5, #0x44
_021D19B0:
	add r0, r5, #0
	bl sub_0201ACF4
	add r0, r5, #0
	bl sub_0201A8FC
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #6
	blt _021D19B0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov75_021D19A8

	thumb_func_start ov75_021D19C8
ov75_021D19C8: ; 0x021D19C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r0, #0
	mov r7, #0
	add r6, r4, #0
	add r5, r7, #0
	add r6, #0x44
_021D19D6:
	ldr r0, [r4, #0x1c]
	add r0, #0x1a
	add r0, r0, r5
	bl sub_02014BBC
	cmp r0, #0
	beq _021D1A18
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0]
	add r0, #0x1a
	add r0, r0, r5
	bl sub_02014B34
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021D1AD4 ; =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r6, #0
	mov r1, #1
	mov r3, #0
	bl sub_0201D78C
	ldr r0, [sp, #0x10]
	bl sub_020237BC
	add r0, r6, #0
	bl sub_0201A954
_021D1A18:
	add r7, r7, #1
	add r5, #8
	add r6, #0x10
	cmp r7, #3
	blt _021D19D6
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _021D1AAC
	ldr r2, _021D1AD8 ; =0x00000199
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	bl sub_0200B144
	str r0, [r4, #0x20]
	ldr r1, [r4, #0]
	mov r0, #0x10
	bl sub_02023790
	add r5, r0, #0
	add r0, r4, #0
	str r0, [sp, #0x18]
	add r0, #0x44
	mov r6, #0
	str r0, [sp, #0x18]
_021D1A4A:
	add r0, r5, #0
	bl sub_020237E8
	ldr r0, [r4, #0x20]
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0200B1B8
	mov r0, #1
	add r1, r5, #0
	mov r2, #0
	bl sub_02002D7C
	mov r1, #0x40
	sub r7, r1, r0
	add r0, r6, #3
	lsl r0, r0, #4
	str r0, [sp, #0x14]
	mov r0, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, _021D1AD4 ; =0x00010200
	lsr r3, r7, #0x1f
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r3, r7, r3
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	add r0, r0, r1
	mov r1, #1
	asr r3, r3, #1
	bl sub_0201D78C
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r0, r0, r1
	bl sub_0201A954
	add r6, r6, #1
	cmp r6, #2
	blt _021D1A4A
	add r0, r5, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021D1AAC:
	mov r0, #2
	str r0, [sp]
	mov r3, #0
	ldr r0, _021D1AD4 ; =0x00010200
	str r3, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r4, #0x1c]
	add r0, r4, #0
	ldr r2, [r2, #0x10]
	add r0, #0x74
	mov r1, #1
	bl sub_0201D78C
	add r4, #0x74
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1AD4: .word 0x00010200
_021D1AD8: .word 0x00000199
	thumb_func_end ov75_021D19C8

	thumb_func_start ov75_021D1ADC
ov75_021D1ADC: ; 0x021D1ADC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	add r5, r0, #0
	bl sub_020397E4
	ldrb r0, [r5, #0xc]
	cmp r0, #1
	bne _021D1AEE
	b _021D1CA4
_021D1AEE:
	ldr r1, [r5, #0]
	mov r0, #0x20
	bl sub_0201DBEC
	ldr r0, [r5, #0]
	bl sub_0200C6E4
	add r1, r5, #0
	add r1, #0xa8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	bl sub_0200C704
	add r1, r5, #0
	add r1, #0xac
	add r2, sp, #0x40
	ldr r4, _021D1CA8 ; =0x021D1D50
	str r0, [r1, #0]
	ldmia r4!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r4!, {r0, r1}
	ldr r6, _021D1CAC ; =0x021D1D24
	stmia r2!, {r0, r1}
	add r4, sp, #0x2c
	ldmia r6!, {r0, r1}
	add r2, r4, #0
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldr r0, [r6, #0]
	ldr r6, _021D1CB0 ; =0x021D1D38
	str r0, [r4, #0]
	add r4, sp, #0x14
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r4!, {r0, r1}
	add r0, r5, #0
	add r0, #0xa8
	add r1, r3, #0
	ldr r0, [r0, #0]
	mov r3, #0x20
	bl sub_0200C73C
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #3
	bl sub_0200C7C0
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0x14
	bl sub_0200CB30
	ldr r0, [r5, #0]
	bl sub_0200A93C
	bl sub_02079FD0
	mov r1, #0
	add r3, r0, #0
	str r1, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x13
	bl sub_0200CC9C
	bl sub_02079FD4
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x13
	bl sub_0200CE0C
	bl sub_02079FE0
	add r3, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x13
	bl sub_0200CE3C
	mov r6, #0
	add r4, r6, #0
	str r6, [sp, #0x10]
	add r7, r5, #0
_021D1BEC:
	ldr r0, [r5, #0x1c]
	add r3, r0, r4
	ldrh r1, [r3, #0x14]
	ldr r0, _021D1CB4 ; =0x0000FFFF
	cmp r1, r0
	beq _021D1CA4
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldrh r3, [r3, #0x14]
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xa8
	add r1, #0xac
	lsl r3, r3, #0x14
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r2, #0x13
	lsr r3, r3, #0x14
	bl sub_0200D828
	add r0, sp, #0x60
	mov r1, #0
	mov r2, #0x34
	bl MI_CpuFill8
	ldr r0, [sp, #0x10]
	mov r1, #0x80
	sub r1, r1, r0
	add r0, sp, #0x60
	strh r1, [r0]
	mov r1, #0xa0
	strh r1, [r0, #2]
	mov r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	mov r0, #2
	str r0, [sp, #0x8c]
	ldr r0, [r5, #0x1c]
	add r2, sp, #0x60
	add r0, r0, r4
	ldrh r0, [r0, #0x14]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1c
	str r0, [sp, #0x6c]
	add r0, r1, #0
	str r0, [sp, #0x90]
	mov r0, #1
	str r0, [sp, #0x70]
	add r0, r1, #0
	str r0, [sp, #0x78]
	str r0, [sp, #0x7c]
	str r0, [sp, #0x80]
	sub r0, r1, #1
	str r0, [sp, #0x84]
	sub r0, r1, #1
	str r0, [sp, #0x88]
	add r0, r5, #0
	add r1, r5, #0
	str r6, [sp, #0x74]
	add r0, #0xa8
	add r1, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200CE6C
	add r1, r7, #0
	add r1, #0xb0
	str r0, [r1, #0]
	ldr r0, [r5, #0x1c]
	add r0, r0, r4
	ldrh r0, [r0, #0x14]
	lsl r0, r0, #0x14
	lsr r0, r0, #0x14
	cmp r0, #7
	bne _021D1C94
	add r0, r7, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
_021D1C94:
	ldr r0, [sp, #0x10]
	add r6, r6, #1
	add r0, #0x28
	add r4, r4, #2
	add r7, r7, #4
	str r0, [sp, #0x10]
	cmp r6, #3
	blt _021D1BEC
_021D1CA4:
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1CA8: .word Unk_ov75_021D1D50
_021D1CAC: .word Unk_ov75_021D1D24
_021D1CB0: .word Unk_ov75_021D1D38
_021D1CB4: .word 0x0000FFFF
	thumb_func_end ov75_021D1ADC

	thumb_func_start ov75_021D1CB8
ov75_021D1CB8: ; 0x021D1CB8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldrb r0, [r6, #0xc]
	cmp r0, #0
	bne _021D1CF8
	mov r4, #0
	add r5, r6, #0
_021D1CC6:
	add r0, r5, #0
	add r0, #0xb0
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D1CD4
	bl sub_0200D0F4
_021D1CD4:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D1CC6
	add r0, r6, #0
	add r1, r6, #0
	add r0, #0xa8
	add r1, #0xac
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	bl sub_0200D0B0
	add r6, #0xa8
	ldr r0, [r6, #0]
	bl sub_0200C8D4
	bl sub_0201DC3C
_021D1CF8:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov75_021D1CB8

	.rodata


	.global Unk_ov75_021D1CFC
Unk_ov75_021D1CFC: ; 0x021D1CFC
	.incbin "incbin/overlay75_rodata.bin", 0x0, 0x8 - 0x0

	.global Unk_ov75_021D1D04
Unk_ov75_021D1D04: ; 0x021D1D04
	.incbin "incbin/overlay75_rodata.bin", 0x8, 0x18 - 0x8

	.global Unk_ov75_021D1D14
Unk_ov75_021D1D14: ; 0x021D1D14
	.incbin "incbin/overlay75_rodata.bin", 0x18, 0x28 - 0x18

	.global Unk_ov75_021D1D24
Unk_ov75_021D1D24: ; 0x021D1D24
	.incbin "incbin/overlay75_rodata.bin", 0x28, 0x3C - 0x28

	.global Unk_ov75_021D1D38
Unk_ov75_021D1D38: ; 0x021D1D38
	.incbin "incbin/overlay75_rodata.bin", 0x3C, 0x54 - 0x3C

	.global Unk_ov75_021D1D50
Unk_ov75_021D1D50: ; 0x021D1D50
	.incbin "incbin/overlay75_rodata.bin", 0x54, 0x74 - 0x54

	.global Unk_ov75_021D1D70
Unk_ov75_021D1D70: ; 0x021D1D70
	.incbin "incbin/overlay75_rodata.bin", 0x74, 0x9C - 0x74

	.global Unk_ov75_021D1D98
Unk_ov75_021D1D98: ; 0x021D1D98
	.incbin "incbin/overlay75_rodata.bin", 0x9C, 0x8C

