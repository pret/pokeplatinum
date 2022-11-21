	.include "macros/function.inc"


	.text

	thumb_func_start ov74_021D0D80
ov74_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FUN_02006840
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x26
	lsl r2, r2, #0x10
	bl FUN_02017FC8
	mov r1, #0xaf
	add r0, r4, #0
	lsl r1, r1, #2
	mov r2, #0x26
	bl FUN_0200681C
	mov r2, #0xaf
	mov r1, #0
	lsl r2, r2, #2
	add r4, r0, #0
	bl FUN_020D5124
	add r0, r5, #0
	bl FUN_02027AA4
	ldrh r1, [r4, #0x18]
	mov r2, #0xf
	lsl r0, r0, #0x10
	bic r1, r2
	lsr r2, r0, #0x10
	mov r0, #0xf
	and r0, r2
	orr r0, r1
	strh r0, [r4, #0x18]
	add r0, r5, #0
	bl FUN_02027AF8
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	ldrh r1, [r4, #0x18]
	mov r2, #0x40
	lsr r0, r0, #0x19
	bic r1, r2
	orr r0, r1
	strh r0, [r4, #0x18]
	add r0, r5, #0
	bl FUN_02027B14
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1f
	ldrh r1, [r4, #0x18]
	mov r2, #0x80
	lsr r0, r0, #0x18
	bic r1, r2
	orr r0, r1
	strh r0, [r4, #0x18]
	add r0, r5, #0
	bl FUN_02027ADC
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1e
	ldrh r1, [r4, #0x18]
	mov r2, #0x30
	lsr r0, r0, #0x1a
	bic r1, r2
	orr r0, r1
	strh r0, [r4, #0x18]
	add r0, r5, #0
	bl FUN_02027B30
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1e
	ldrh r2, [r4, #0x18]
	ldr r1, _021D0E50 ; =0xFFFFFCFF
	lsr r0, r0, #0x16
	and r1, r2
	orr r0, r1
	strh r0, [r4, #0x18]
	add r0, r5, #0
	bl FUN_02027B50
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	lsl r0, r0, #0x1b
	ldrh r2, [r4, #0x18]
	ldr r1, _021D0E54 ; =0xFFFF83FF
	lsr r0, r0, #0x11
	and r1, r2
	orr r0, r1
	strh r0, [r4, #0x18]
	mov r0, #0x26
	str r0, [r4, #0]
	mov r0, #0
	str r5, [r4, #0x1c]
	bl FUN_02002AC8
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D0E50: .word 0xFFFFFCFF
_021D0E54: .word 0xFFFF83FF
	thumb_func_end ov74_021D0D80

	thumb_func_start ov74_021D0E58
ov74_021D0E58: ; 0x021D0E58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FUN_0200682C
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _021D0EDE
	ldrh r0, [r4, #0x18]
	mov r1, #0xf
	mov r2, #0xf
	bic r0, r1
	add r1, r4, #0
	add r1, #0x5e
	ldrh r1, [r1]
	and r1, r2
	orr r0, r1
	strh r0, [r4, #0x18]
	ldrh r0, [r4, #0x18]
	mov r1, #0x40
	add r2, #0xf7
	bic r0, r1
	ldrh r1, [r4, r2]
	lsl r1, r1, #0x1f
	lsr r1, r1, #0x19
	orr r0, r1
	strh r0, [r4, #0x18]
	ldrh r1, [r4, #0x18]
	mov r0, #0x80
	bic r1, r0
	ldr r0, _021D0F54 ; =0x0000015A
	ldrh r2, [r4, r0]
	lsl r2, r2, #0x1f
	lsr r2, r2, #0x18
	orr r1, r2
	strh r1, [r4, #0x18]
	ldrh r1, [r4, #0x18]
	mov r2, #0x30
	bic r1, r2
	add r2, r4, #0
	add r2, #0xb2
	ldrh r2, [r2]
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x1a
	orr r1, r2
	strh r1, [r4, #0x18]
	ldrh r2, [r4, #0x18]
	ldr r1, _021D0F58 ; =0xFFFFFCFF
	and r1, r2
	add r2, r0, #0
	add r2, #0x54
	ldrh r2, [r4, r2]
	add r0, #0xa8
	lsl r2, r2, #0x1e
	lsr r2, r2, #0x16
	orr r1, r2
	strh r1, [r4, #0x18]
	ldrh r0, [r4, r0]
	ldrh r2, [r4, #0x18]
	ldr r1, _021D0F5C ; =0xFFFF83FF
	lsl r0, r0, #0x1b
	and r1, r2
	lsr r0, r0, #0x11
	orr r0, r1
	strh r0, [r4, #0x18]
_021D0EDE:
	ldrh r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	bl FUN_02027AAC
	ldrh r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x1f
	bl FUN_02027B00
	ldrh r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	bl FUN_02027B1C
	ldrh r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x1a
	lsr r1, r1, #0x1e
	bl FUN_02027AE4
	ldrh r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1e
	bl FUN_02027B38
	ldrh r1, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	bl FUN_02027B58
	ldrh r0, [r4, #0x18]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1e
	bl FUN_02004FB8
	ldrh r1, [r4, #0x18]
	mov r0, #0
	lsl r1, r1, #0x16
	lsr r1, r1, #0x1e
	bl FUN_02027A68
	mov r0, #1
	bl FUN_02002AC8
	add r0, r5, #0
	bl FUN_02006830
	ldr r0, [r4, #0]
	bl FUN_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_021D0F54: .word 0x0000015A
_021D0F58: .word 0xFFFFFCFF
_021D0F5C: .word 0xFFFF83FF
	thumb_func_end ov74_021D0E58

	thumb_func_start ov74_021D0F60
ov74_021D0F60: ; 0x021D0F60
	push {r3, r4, lr}
	sub sp, #0xc
	bl FUN_0200682C
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #8
	bhi _021D0FBC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D0F7C: ; jump table
	.short _021D0F8E - _021D0F7C - 2 ; case 0
	.short _021D0FB4 - _021D0F7C - 2 ; case 1
	.short _021D0FC4 - _021D0F7C - 2 ; case 2
	.short _021D1014 - _021D0F7C - 2 ; case 3
	.short _021D1026 - _021D0F7C - 2 ; case 4
	.short _021D1044 - _021D0F7C - 2 ; case 5
	.short _021D1082 - _021D0F7C - 2 ; case 6
	.short _021D10BC - _021D0F7C - 2 ; case 7
	.short _021D10CA - _021D0F7C - 2 ; case 8
_021D0F8E:
	bl ov74_021D1178
	cmp r0, #0
	bne _021D0F9C
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D0F9C:
	mov r0, #6
	mov r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	mov r3, #0
	bl FUN_0200F174
	b _021D10DE
_021D0FB4:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D0FBE
_021D0FBC:
	b _021D10DE
_021D0FBE:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D0FC4:
	ldr r0, _021D10EC ; =0x021BF67C
	mov r1, #1
	ldr r0, [r0, #0x48]
	tst r1, r0
	beq _021D0FD8
	ldr r1, [r4, #0x10]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1d
	cmp r1, #6
	beq _021D0FDE
_021D0FD8:
	mov r1, #2
	tst r0, r1
	beq _021D1008
_021D0FDE:
	add r0, r4, #0
	bl ov74_021D1B44
	cmp r0, #1
	bne _021D0FEC
	mov r0, #3
	b _021D1000
_021D0FEC:
	ldr r0, _021D10F0 ; =0x000005DC
	bl FUN_02005748
	ldr r1, [r4, #0x10]
	mov r0, #3
	bic r1, r0
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0x10]
	mov r0, #6
_021D1000:
	add sp, #0xc
	str r0, [r4, #4]
	mov r0, #0
	pop {r3, r4, pc}
_021D1008:
	add r0, r4, #0
	bl ov74_021D1A24
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D1014:
	mov r0, #1
	bl FUN_02002AC8
	add r0, r4, #0
	mov r1, #0x31
	mov r2, #0
	bl ov74_021D1968
	b _021D10DE
_021D1026:
	bl ov74_021D1A08
	cmp r0, #0
	beq _021D103E
	mov r0, #0
	bl FUN_02002AC8
	add r0, r4, #0
	bl ov74_021D1BA8
	mov r0, #5
	str r0, [r4, #4]
_021D103E:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D1044:
	bl ov74_021D1BD0
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D107C
	cmp r0, #0
	bne _021D106C
	ldr r0, _021D10F0 ; =0x000005DC
	mov r1, #0
	bl FUN_020057A4
	ldr r0, _021D10F4 ; =0x0000061B
	bl FUN_02005748
	ldr r1, [r4, #0x10]
	mov r0, #3
	bic r1, r0
	mov r0, #1
	b _021D1074
_021D106C:
	ldr r1, [r4, #0x10]
	mov r0, #3
	bic r1, r0
	mov r0, #2
_021D1074:
	orr r0, r1
	str r0, [r4, #0x10]
	mov r0, #6
	str r0, [r4, #4]
_021D107C:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D1082:
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _021D10A2
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201D730
_021D10A2:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	mov r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r2, r1, #0
	str r0, [sp, #8]
	mov r0, #3
	add r3, r1, #0
	bl FUN_0200F174
	b _021D10DE
_021D10BC:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _021D10DE
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D10CA:
	bl ov74_021D122C
	cmp r0, #0
	beq _021D10D8
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_021D10D8:
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_021D10DE:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D10EC: .word 0x021BF67C
_021D10F0: .word 0x000005DC
_021D10F4: .word 0x0000061B
	thumb_func_end ov74_021D0F60

	thumb_func_start ov74_021D10F8
ov74_021D10F8: ; 0x021D10F8
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1114 ; =0x021D1C5C
	add r3, sp, #0
	mov r2, #5
_021D1102:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D1102
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	; .align 2, 0
_021D1114: .word 0x021D1C5C
	thumb_func_end ov74_021D10F8

	thumb_func_start ov74_021D1118
ov74_021D1118: ; 0x021D1118
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	lsl r0, r0, #0xa
	lsr r0, r0, #0x1f
	beq _021D1148
	ldr r2, _021D1168 ; =0x00000202
	mov r1, #1
	ldrh r0, [r4, r2]
	add r2, #0x39
	mov r3, #0xf
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	bl FUN_0200DD0C
	ldr r1, [r4, #0x10]
	ldr r0, _021D116C ; =0xFFDFFFFF
	and r0, r1
	str r0, [r4, #0x10]
_021D1148:
	bl FUN_0200C800
	bl FUN_020A635C
	ldr r0, [r4, #0x14]
	bl FUN_0201C2B8
	ldr r3, _021D1170 ; =0x027E0000
	ldr r1, _021D1174 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	add sp, #8
	pop {r4, pc}
	nop
_021D1168: .word 0x00000202
_021D116C: .word 0xFFDFFFFF
_021D1170: .word 0x027E0000
_021D1174: .word 0x00003FF8
	thumb_func_end ov74_021D1118

	thumb_func_start ov74_021D1178
ov74_021D1178: ; 0x021D1178
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _021D118C
	cmp r1, #1
	beq _021D11CC
	cmp r1, #2
	beq _021D11E6
	b _021D1214
_021D118C:
	mov r0, #0
	add r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D1220 ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D1224 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	bl ov74_021D10F8
	mov r0, #0
	bl FUN_0200F32C
	mov r0, #1
	bl FUN_0200F32C
	add r0, r4, #0
	bl ov74_021D12D4
	b _021D1214
_021D11CC:
	bl ov74_021D1390
	ldr r3, [r4, #0]
	mov r0, #1
	mov r1, #0x1a
	mov r2, #0xdc
	bl FUN_0200B144
	str r0, [r4, #0x20]
	add r0, r4, #0
	bl ov74_021D1720
	b _021D1214
_021D11E6:
	bl ov74_021D14F4
	add r0, r4, #0
	bl ov74_021D1668
	ldr r1, [r4, #0]
	mov r0, #0x20
	bl FUN_0201DBEC
	mov r0, #0x10
	mov r1, #1
	bl FUN_0201FF0C
	bl FUN_020397E4
	ldr r0, _021D1228 ; =ov74_021D1118
	add r1, r4, #0
	bl FUN_02017798
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021D1214:
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	nop
_021D1220: .word 0xFFFFE0FF
_021D1224: .word 0x04001000
_021D1228: .word ov74_021D1118
	thumb_func_end ov74_021D1178

	thumb_func_start ov74_021D122C
ov74_021D122C: ; 0x021D122C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021D123C
	cmp r0, #1
	beq _021D128A
	b _021D12BC
_021D123C:
	bl FUN_0201DC3C
	ldr r0, [sp]
	bl ov74_021D1624
	ldr r6, [sp]
	mov r7, #0
_021D124A:
	add r0, r6, #0
	add r0, #0x5c
	ldrh r0, [r0]
	mov r4, #0
	cmp r0, #0
	ble _021D126C
	add r5, r6, #0
_021D1258:
	ldr r0, [r5, #0x60]
	bl FUN_020237BC
	add r0, r6, #0
	add r0, #0x5c
	ldrh r0, [r0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021D1258
_021D126C:
	add r7, r7, #1
	add r6, #0x54
	cmp r7, #7
	blt _021D124A
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	bl FUN_0200B190
	ldr r0, [sp]
	bl ov74_021D14E8
	ldr r0, [sp]
	bl ov74_021D135C
	b _021D12BC
_021D128A:
	mov r0, #0
	add r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2, #0]
	ldr r0, _021D12CC ; =0xFFFFE0FF
	and r1, r0
	str r1, [r2, #0]
	ldr r2, _021D12D0 ; =0x04001000
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #8]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D12BC:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [r0, #8]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D12CC: .word 0xFFFFE0FF
_021D12D0: .word 0x04001000
	thumb_func_end ov74_021D122C

	thumb_func_start ov74_021D12D4
ov74_021D12D4: ; 0x021D12D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	add r6, r0, #0
	ldr r0, [r6, #0]
	bl FUN_02018340
	add r3, sp, #0
	ldr r4, _021D1350 ; =0x021D1C1C
	str r0, [r6, #0x14]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl FUN_02018368
	ldr r4, _021D1354 ; =0x021D1C84
	add r3, sp, #0x10
	mov r2, #0x11
_021D12FC:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D12FC
	ldr r0, [r4, #0]
	ldr r5, _021D1358 ; =0x021D1C2C
	str r0, [r3, #0]
	mov r7, #0
	add r4, sp, #0x10
_021D130E:
	ldr r1, [r5, #0]
	ldr r0, [r6, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r2, r4, #0
	mov r3, #0
	bl FUN_020183C4
	ldr r1, [r5, #0]
	ldr r0, [r6, #0x14]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FUN_02019EBC
	add r7, r7, #1
	add r4, #0x1c
	add r5, r5, #4
	cmp r7, #5
	blt _021D130E
	mov r0, #0
	ldr r3, [r6, #0]
	mov r1, #0x20
	add r2, r0, #0
	bl FUN_02019690
	ldr r3, [r6, #0]
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	bl FUN_02019690
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1350: .word 0x021D1C1C
_021D1354: .word 0x021D1C84
_021D1358: .word 0x021D1C2C
	thumb_func_end ov74_021D12D4

	thumb_func_start ov74_021D135C
ov74_021D135C: ; 0x021D135C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x14]
	mov r1, #4
	bl FUN_02019044
	ldr r0, [r4, #0x14]
	mov r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0x14]
	mov r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0x14]
	mov r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x14]
	mov r1, #0
	bl FUN_02019044
	ldr r0, [r4, #0x14]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov74_021D135C

	thumb_func_start ov74_021D1390
ov74_021D1390: ; 0x021D1390
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	add r5, r0, #0
	ldr r1, [r5, #0]
	mov r0, #0x49
	bl FUN_02006C24
	mov r1, #1
	add r4, r0, #0
	bl FUN_02006D84
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl FUN_02018184
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	add r2, r6, #0
	bl FUN_02006D28
	add r0, r6, #0
	add r1, sp, #0x20
	bl FUN_020A7118
	ldr r3, [sp, #0x20]
	mov r1, #0
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x14]
	ldr r3, [r3, #0x10]
	bl FUN_0201958C
	ldr r3, [sp, #0x20]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r5, #0x14]
	ldr r3, [r3, #0x10]
	mov r1, #4
	bl FUN_0201958C
	add r0, r6, #0
	bl FUN_020181C4
	add r0, r4, #0
	mov r1, #0
	bl FUN_02006D84
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl FUN_02018184
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #0
	add r2, r6, #0
	bl FUN_02006D28
	add r0, r6, #0
	add r1, sp, #0x1c
	bl FUN_020A71B0
	ldr r1, [sp, #0x1c]
	mov r0, #0
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	add r3, r0, #0
	bl FUN_0201972C
	ldr r1, [sp, #0x1c]
	mov r0, #4
	ldr r1, [r1, #0xc]
	mov r2, #0x20
	mov r3, #0
	bl FUN_0201972C
	add r0, r6, #0
	bl FUN_020181C4
	add r0, r4, #0
	mov r1, #2
	bl FUN_02006D84
	add r1, r0, #0
	ldr r0, [r5, #0]
	bl FUN_02018144
	str r0, [r5, #0x24]
	ldr r2, [r5, #0x24]
	add r0, r4, #0
	mov r1, #2
	bl FUN_02006D28
	add r1, r5, #0
	ldr r0, [r5, #0x24]
	add r1, #0x28
	bl FUN_020A7248
	add r0, r4, #0
	bl FUN_02006CA8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	mov r1, #2
	mov r2, #1
	bl FUN_02019CB8
	mov r3, #0
	str r3, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	mov r1, #4
	mov r2, #1
	bl FUN_02019CB8
	ldr r0, [r5, #0x28]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	ldrh r2, [r0]
	add r3, r1, #0
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	add r2, r1, #0
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x14]
	bl FUN_02019964
	mov r2, #3
	add r3, r2, #0
	ldr r0, [r5, #0x14]
	mov r1, #0
	sub r3, #0x1b
	bl FUN_02019184
	ldr r0, [r5, #0x14]
	mov r1, #2
	bl FUN_0201C3C0
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl FUN_0201C3C0
	ldr r0, [r5, #0x14]
	mov r1, #4
	bl FUN_0201C3C0
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov74_021D1390

	thumb_func_start ov74_021D14E8
ov74_021D14E8: ; 0x021D14E8
	ldr r3, _021D14F0 ; =FUN_020181C4
	ldr r0, [r0, #0x24]
	bx r3
	nop
_021D14F0: .word FUN_020181C4
	thumb_func_end ov74_021D14E8

	thumb_func_start ov74_021D14F4
ov74_021D14F4: ; 0x021D14F4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	mov r0, #0xc
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x10]
	add r1, r4, #0
	mov r2, #1
	ldr r0, [r4, #0x14]
	add r1, #0x2c
	add r3, r2, #0
	bl FUN_0201A7E8
	mov r0, #3
	str r0, [sp]
	mov r0, #0x1e
	str r0, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	mov r0, #0xd
	str r0, [sp, #0xc]
	mov r0, #0x22
	str r0, [sp, #0x10]
	add r1, r4, #0
	mov r2, #1
	ldr r0, [r4, #0x14]
	add r1, #0x3c
	add r3, r2, #0
	bl FUN_0201A7E8
	mov r0, #0x13
	str r0, [sp]
	mov r0, #0x1b
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, _021D1618 ; =0x000001C6
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x14]
	add r1, #0x4c
	mov r2, #1
	mov r3, #2
	bl FUN_0201A7E8
	mov r0, #0
	str r0, [sp]
	ldr r0, [r4, #0]
	ldr r2, _021D161C ; =0x00000232
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	mov r1, #1
	mov r3, #0xe
	bl FUN_0200DAA4
	ldrh r0, [r4, #0x18]
	ldr r2, _021D1620 ; =0x0000023B
	mov r1, #1
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0]
	mov r3, #0xf
	str r0, [sp, #4]
	ldr r0, [r4, #0x14]
	bl FUN_0200DD0C
	mov r1, #0x1a
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #4
	bl FUN_02002E7C
	mov r1, #0x1a
	ldr r2, [r4, #0]
	mov r0, #4
	lsl r1, r1, #4
	bl FUN_02002E7C
	mov r1, #6
	ldr r2, [r4, #0]
	mov r0, #0
	lsl r1, r1, #6
	bl FUN_02002E98
	mov r1, #6
	ldr r2, [r4, #0]
	mov r0, #4
	lsl r1, r1, #6
	bl FUN_02002E98
	add r0, r4, #0
	add r0, #0x2c
	mov r1, #0
	bl FUN_0201ADA4
	add r0, r4, #0
	add r0, #0x3c
	mov r1, #0xff
	bl FUN_0201ADA4
	add r0, r4, #0
	add r0, #0x4c
	mov r1, #0xff
	bl FUN_0201ADA4
	add r0, r4, #0
	add r0, #0x4c
	bl FUN_0201AA3C
	add r0, r4, #0
	add r0, #0x3c
	bl FUN_0201AA3C
	add r0, r4, #0
	add r0, #0x2c
	bl FUN_0201AA3C
	add r0, r4, #0
	ldr r2, _021D161C ; =0x00000232
	add r0, #0x3c
	mov r1, #1
	mov r3, #0xe
	bl FUN_0200DC48
	add r4, #0x4c
	ldr r2, _021D1620 ; =0x0000023B
	add r0, r4, #0
	mov r1, #1
	mov r3, #0xf
	bl FUN_0200E060
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_021D1618: .word 0x000001C6
_021D161C: .word 0x00000232
_021D1620: .word 0x0000023B
	thumb_func_end ov74_021D14F4

	thumb_func_start ov74_021D1624
ov74_021D1624: ; 0x021D1624
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x3c
	mov r1, #0
	bl FUN_0200DC9C
	add r0, r5, #0
	add r0, #0x4c
	mov r1, #0
	bl FUN_0200E084
	mov r6, #0
	add r5, #0x2c
	add r7, r6, #0
_021D1640:
	lsl r4, r6, #4
	add r0, r5, r4
	bl FUN_0201ACF4
	add r0, r5, r4
	add r1, r7, #0
	bl FUN_0201ADA4
	add r0, r5, r4
	bl FUN_0201AA3C
	add r0, r5, r4
	bl FUN_0201A8FC
	add r0, r6, #1
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	cmp r6, #3
	blo _021D1640
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov74_021D1624

	thumb_func_start ov74_021D1668
ov74_021D1668: ; 0x021D1668
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	mov r0, #1
	ldr r1, [r6, #0]
	lsl r0, r0, #8
	bl FUN_02023790
	add r5, r0, #0
	ldr r0, [r6, #0x20]
	mov r1, #0
	add r2, r5, #0
	bl FUN_0200B1B8
	mov r3, #2
	str r3, [sp]
	mov r1, #0
	ldr r0, _021D1714 ; =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r0, #0x2c
	add r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add r7, r6, #0
	mov r4, #0
	add r7, #0x3c
_021D16A2:
	add r0, r5, #0
	bl FUN_020237E8
	ldr r1, _021D1718 ; =0x021D1BF4
	ldr r0, [r6, #0x20]
	ldrb r1, [r1, r4]
	add r2, r5, #0
	bl FUN_0200B1B8
	lsl r0, r4, #4
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D171C ; =0x0001020F
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	add r0, r7, #0
	add r2, r5, #0
	mov r3, #4
	bl FUN_0201D78C
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #7
	blo _021D16A2
	mov r4, #0
_021D16DC:
	add r0, r6, #0
	add r1, r4, #0
	bl ov74_021D17CC
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #7
	blo _021D16DC
	add r0, r6, #0
	mov r1, #0
	mov r2, #1
	bl ov74_021D1BE4
	add r0, r6, #0
	add r0, #0x2c
	bl FUN_0201A954
	add r6, #0x3c
	add r0, r6, #0
	bl FUN_0201A954
	add r0, r5, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1714: .word 0x00010200
_021D1718: .word 0x021D1BF4
_021D171C: .word 0x0001020F
	thumb_func_end ov74_021D1668

	thumb_func_start ov74_021D1720
ov74_021D1720: ; 0x021D1720
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
_021D172A:
	ldr r0, [sp, #4]
	ldr r2, [sp, #4]
	lsl r7, r0, #2
	ldr r0, _021D17C0 ; =0x021D1C40
	mov r1, #0x54
	mul r1, r2
	add r1, r5, r1
	str r1, [sp]
	ldr r0, [r0, r7]
	add r1, #0x5c
	mov r4, #0
	strh r0, [r1]
	cmp r0, #0
	ble _021D176A
	ldr r1, _021D17C4 ; =0x021D1BFC
	ldr r0, [sp, #4]
	ldrb r6, [r1, r0]
_021D174C:
	ldr r0, [r5, #0x20]
	add r1, r6, r4
	bl FUN_0200B1EC
	ldr r1, [sp]
	lsl r2, r4, #2
	add r1, r1, r2
	str r0, [r1, #0x60]
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	ldr r0, _021D17C0 ; =0x021D1C40
	ldr r0, [r0, r7]
	cmp r4, r0
	blt _021D174C
_021D176A:
	ldr r0, [sp, #4]
	add r0, r0, #1
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #4]
	cmp r0, #7
	blo _021D172A
	ldrh r0, [r5, #0x18]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	add r0, r5, #0
	add r0, #0x5e
	strh r1, [r0]
	ldrh r0, [r5, #0x18]
	ldr r1, _021D17C8 ; =0x00000106
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	strh r0, [r5, r1]
	ldrh r0, [r5, #0x18]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x1f
	add r0, r1, #0
	add r0, #0x54
	strh r2, [r5, r0]
	ldrh r0, [r5, #0x18]
	lsl r0, r0, #0x1a
	lsr r2, r0, #0x1e
	add r0, r5, #0
	add r0, #0xb2
	strh r2, [r0]
	ldrh r0, [r5, #0x18]
	lsl r0, r0, #0x16
	lsr r2, r0, #0x1e
	add r0, r1, #0
	add r0, #0xa8
	strh r2, [r5, r0]
	ldrh r0, [r5, #0x18]
	add r1, #0xfc
	lsl r0, r0, #0x11
	lsr r0, r0, #0x1b
	strh r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D17C0: .word 0x021D1C40
_021D17C4: .word 0x021D1BFC
_021D17C8: .word 0x00000106
	thumb_func_end ov74_021D1720

	thumb_func_start ov74_021D17CC
ov74_021D17CC: ; 0x021D17CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r7, r1, #0
	str r0, [sp, #0x10]
	lsl r0, r7, #4
	str r0, [sp, #0x14]
	mov r0, #6
	lsl r0, r0, #6
	str r0, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	ldr r2, _021D195C ; =0x021D1C04
	ldr r3, [sp, #0x14]
	ldrsb r2, [r2, r7]
	ldr r0, [sp, #0x10]
	lsl r3, r3, #0x10
	add r2, #0x64
	lsl r2, r2, #0x10
	add r0, #0x3c
	mov r1, #0xff
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl FUN_0201AE78
	cmp r7, #5
	bne _021D184A
	mov r0, #0x54
	add r2, r7, #0
	mul r2, r0
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1960 ; =0x0003040F
	add r3, r3, r2
	str r0, [sp, #8]
	mov r1, #0
	add r2, r3, #0
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	add r2, #0x5e
	ldrh r2, [r2]
	add r0, #0x3c
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r2, [r2, #0x60]
	mov r3, #0x94
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	add r0, #0x3c
	bl FUN_0201A954
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	mov r0, #2
	lsl r0, r0, #0x14
	orr r1, r0
	ldr r0, [sp, #0x10]
	add sp, #0x24
	str r1, [r0, #0x10]
	pop {r4, r5, r6, r7, pc}
_021D184A:
	cmp r7, #1
	bne _021D1862
	mov r0, #0x54
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	add r0, r0, r1
	add r0, #0x5e
	ldrh r0, [r0]
	bl FUN_02004FB8
	b _021D18A0
_021D1862:
	cmp r7, #4
	bne _021D187C
	mov r1, #0x54
	add r2, r7, #0
	mul r2, r1
	ldr r1, [sp, #0x10]
	mov r0, #0
	add r1, r1, r2
	add r1, #0x5e
	ldrh r1, [r1]
	bl FUN_02027A68
	b _021D18A0
_021D187C:
	cmp r7, #0
	bne _021D18A0
	mov r1, #0x54
	add r2, r7, #0
	mul r2, r1
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	add r1, r1, r2
	add r1, #0x5e
	ldrh r1, [r1]
	ldr r0, [r0, #0x1c]
	bl FUN_02027AAC
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	mov r2, #0
	bl ov74_021D1BE4
_021D18A0:
	mov r0, #0x54
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp, #0x10]
	mov r4, #0
	add r5, r0, r1
	add r0, r5, #0
	str r4, [sp, #0x1c]
	add r0, #0x5c
	ldrh r0, [r0]
	cmp r0, #0
	bls _021D194E
	bls _021D194E
	ldr r0, _021D195C ; =0x021D1C04
	add r0, r0, r7
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x20]
	add r0, #0x3c
	str r0, [sp, #0x20]
_021D18C8:
	add r0, r5, #0
	add r0, #0x5e
	ldrh r0, [r0]
	cmp r4, r0
	bne _021D18D6
	ldr r0, _021D1960 ; =0x0003040F
	b _021D18D8
_021D18D6:
	ldr r0, _021D1964 ; =0x0001020F
_021D18D8:
	cmp r7, #4
	bne _021D1914
	lsl r1, r4, #2
	add r6, r5, r1
	ldr r1, [sp, #0x14]
	str r1, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r2, [r6, #0x60]
	mov r1, #0
	add r3, #0x64
	bl FUN_0201D78C
	mov r0, #0
	ldr r1, [r6, #0x60]
	add r2, r0, #0
	bl FUN_02002D7C
	ldr r1, [sp, #0x1c]
	add r0, #0xc
	add r0, r1, r0
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	str r0, [sp, #0x1c]
	b _021D193E
_021D1914:
	ldr r1, [sp, #0x14]
	lsl r2, r4, #2
	str r1, [sp]
	mov r1, #0xff
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	mov r1, #0
	str r0, [sp, #0xc]
	add r2, r5, r2
	ldr r6, [sp, #0x18]
	add r3, r1, #0
	ldrsb r3, [r6, r3]
	mov r6, #0x30
	mul r6, r4
	add r6, #0x64
	ldr r0, [sp, #0x20]
	ldr r2, [r2, #0x60]
	add r3, r3, r6
	bl FUN_0201D78C
_021D193E:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0x5c
	ldrh r0, [r0]
	cmp r4, r0
	blo _021D18C8
_021D194E:
	ldr r0, [sp, #0x10]
	add r0, #0x3c
	str r0, [sp, #0x10]
	bl FUN_0201A954
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D195C: .word 0x021D1C04
_021D1960: .word 0x0003040F
_021D1964: .word 0x0001020F
	thumb_func_end ov74_021D17CC

	thumb_func_start ov74_021D1968
ov74_021D1968: ; 0x021D1968
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r4, r2, #0
	bl ov74_021D1A08
	cmp r0, #0
	bne _021D1988
	mov r0, #0xab
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201D730
_021D1988:
	ldr r0, [r5, #0x1c]
	bl FUN_02027AC0
	add r7, r0, #0
	add r0, r5, #0
	add r0, #0x4c
	mov r1, #0xf
	bl FUN_0201ADA4
	mov r0, #1
	ldr r1, [r5, #0]
	lsl r0, r0, #8
	bl FUN_02023790
	add r6, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x10]
	add r2, r6, #0
	bl FUN_0200B1B8
	cmp r4, #0
	bne _021D19D6
	mov r1, #0
	str r1, [sp]
	ldr r0, _021D1A04 ; =0x0001020F
	str r7, [sp, #4]
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r0, #0x4c
	mov r1, #1
	add r2, r6, #0
	mov r3, #4
	bl FUN_0201D78C
	mov r1, #0xab
	lsl r1, r1, #2
	str r0, [r5, r1]
	b _021D19FA
_021D19D6:
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1A04 ; =0x0001020F
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	str r1, [sp, #0xc]
	add r0, #0x4c
	mov r1, #1
	mov r3, #4
	bl FUN_0201D78C
	add r5, #0x4c
	add r0, r5, #0
	bl FUN_0201A9A4
_021D19FA:
	add r0, r6, #0
	bl FUN_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1A04: .word 0x0001020F
	thumb_func_end ov74_021D1968

	thumb_func_start ov74_021D1A08
ov74_021D1A08: ; 0x021D1A08
	push {r3, lr}
	mov r1, #0xab
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D1A20
	mov r0, #1
	pop {r3, pc}
_021D1A20:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov74_021D1A08

	thumb_func_start ov74_021D1A24
ov74_021D1A24: ; 0x021D1A24
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x10]
	add r1, r5, #0
	lsl r0, r0, #0x1b
	lsr r2, r0, #0x1d
	mov r0, #0x54
	add r1, #0x5c
	mul r0, r2
	add r4, r1, r0
	cmp r2, #6
	beq _021D1A94
	ldr r0, _021D1B3C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021D1A6A
	ldrh r0, [r4, #2]
	ldrh r1, [r4]
	add r0, r0, #1
	bl FUN_020E1F6C
	strh r1, [r4, #2]
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov74_021D17CC
	ldr r0, _021D1B40 ; =0x000005DC
	bl FUN_02005748
	b _021D1A94
_021D1A6A:
	mov r0, #0x20
	tst r0, r1
	beq _021D1A94
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r0, r0, r1
	sub r0, r0, #1
	bl FUN_020E1F6C
	strh r1, [r4, #2]
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov74_021D17CC
	ldr r0, _021D1B40 ; =0x000005DC
	bl FUN_02005748
_021D1A94:
	ldr r0, _021D1B3C ; =0x021BF67C
	ldr r1, [r0, #0x48]
	mov r0, #0x40
	tst r0, r1
	beq _021D1AEA
	ldr r0, [r5, #0x10]
	mov r1, #7
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1d
	add r0, r0, #6
	bl FUN_020E2178
	ldr r2, [r5, #0x10]
	mov r0, #0x1c
	bic r2, r0
	lsl r0, r1, #0x1d
	add r3, r2, #0
	lsr r0, r0, #0x1b
	orr r3, r0
	str r3, [r5, #0x10]
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1d
	lsl r3, r3, #4
	add r3, #0x18
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #3
	neg r3, r3
	bl FUN_0201C63C
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	bl ov74_021D1BE4
	ldr r0, _021D1B40 ; =0x000005DC
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D1AEA:
	mov r0, #0x80
	tst r0, r1
	beq _021D1B3A
	ldr r0, [r5, #0x10]
	mov r1, #7
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1d
	add r0, r0, #1
	bl FUN_020E2178
	ldr r2, [r5, #0x10]
	mov r0, #0x1c
	bic r2, r0
	lsl r0, r1, #0x1d
	add r3, r2, #0
	lsr r0, r0, #0x1b
	orr r3, r0
	str r3, [r5, #0x10]
	lsl r3, r3, #0x1b
	lsr r3, r3, #0x1d
	lsl r3, r3, #4
	add r3, #0x18
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #3
	neg r3, r3
	bl FUN_0201C63C
	ldr r1, [r5, #0x10]
	add r0, r5, #0
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1d
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	mov r2, #1
	bl ov74_021D1BE4
	ldr r0, _021D1B40 ; =0x000005DC
	bl FUN_02005748
_021D1B3A:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1B3C: .word 0x021BF67C
_021D1B40: .word 0x000005DC
	thumb_func_end ov74_021D1A24

	thumb_func_start ov74_021D1B44
ov74_021D1B44: ; 0x021D1B44
	push {r3, r4}
	ldrh r1, [r0, #0x18]
	lsl r2, r1, #0x1c
	lsr r3, r2, #0x1c
	add r2, r0, #0
	add r2, #0x5e
	ldrh r2, [r2]
	cmp r3, r2
	bne _021D1B98
	ldr r3, _021D1BA4 ; =0x00000106
	lsl r2, r1, #0x19
	lsr r4, r2, #0x1f
	ldrh r2, [r0, r3]
	cmp r4, r2
	bne _021D1B98
	lsl r2, r1, #0x18
	lsr r4, r2, #0x1f
	add r2, r3, #0
	add r2, #0x54
	ldrh r2, [r0, r2]
	cmp r4, r2
	bne _021D1B98
	lsl r2, r1, #0x1a
	lsr r4, r2, #0x1e
	add r2, r0, #0
	add r2, #0xb2
	ldrh r2, [r2]
	cmp r4, r2
	bne _021D1B98
	lsl r2, r1, #0x16
	lsr r4, r2, #0x1e
	add r2, r3, #0
	add r2, #0xa8
	ldrh r2, [r0, r2]
	cmp r4, r2
	bne _021D1B98
	add r3, #0xfc
	ldrh r0, [r0, r3]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x1b
	cmp r1, r0
	beq _021D1B9E
_021D1B98:
	mov r0, #1
	pop {r3, r4}
	bx lr
_021D1B9E:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021D1BA4: .word 0x00000106
	thumb_func_end ov74_021D1B44

	thumb_func_start ov74_021D1BA8
ov74_021D1BA8: ; 0x021D1BA8
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	ldr r0, [r4, #0]
	ldr r1, _021D1BC8 ; =0x021D1C14
	str r0, [sp]
	ldr r0, [r4, #0x14]
	ldr r2, _021D1BCC ; =0x00000232
	mov r3, #0xe
	bl FUN_02002100
	mov r1, #0xaa
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D1BC8: .word 0x021D1C14
_021D1BCC: .word 0x00000232
	thumb_func_end ov74_021D1BA8

	thumb_func_start ov74_021D1BD0
ov74_021D1BD0: ; 0x021D1BD0
	add r1, r0, #0
	mov r0, #0xaa
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _021D1BE0 ; =FUN_02002114
	ldr r1, [r1, #0]
	bx r3
	nop
_021D1BE0: .word FUN_02002114
	thumb_func_end ov74_021D1BD0

	thumb_func_start ov74_021D1BE4
ov74_021D1BE4: ; 0x021D1BE4
	ldr r3, _021D1BEC ; =0x021D1C0C
	ldrb r1, [r3, r1]
	ldr r3, _021D1BF0 ; =ov74_021D1968
	bx r3
	; .align 2, 0
_021D1BEC: .word 0x021D1C0C
_021D1BF0: .word ov74_021D1968
	thumb_func_end ov74_021D1BE4
	; 0x021D1BF4
