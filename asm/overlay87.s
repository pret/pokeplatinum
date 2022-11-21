
	thumb_func_start ov87_021D0D80
ov87_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	movs r2, #1
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x3c
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	movs r2, #7
	movs r0, #3
	movs r1, #0x3d
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #0xdc
	movs r2, #0x3c
	bl FUN_0200681C
	adds r4, r0, #0
	beq _021D0DF8
	adds r0, r5, #0
	bl FUN_02006840
	adds r1, r4, #0
	adds r1, #0xcc
	str r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xd4
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_0202E148
	adds r1, r4, #0
	adds r1, #0xd0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xcc
	ldr r1, [r1]
	adds r0, r4, #0
	bl ov87_021D0FC4
	adds r0, r4, #0
	adds r1, r4, #0
	bl ov87_021D106C
	adds r1, r4, #0
	adds r1, #0xc8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0
	bl ov87_021D11D0
	adds r4, #0xd8
	str r0, [r4]
_021D0DF8:
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov87_021D0D80

	thumb_func_start ov87_021D0DFC
ov87_021D0DFC: @ 0x021D0DFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl ov87_021D1140
	adds r0, r4, #0
	bl ov87_021D1000
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x3d
	bl FUN_0201807C
	movs r0, #0x3c
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov87_021D0DFC

	thumb_func_start ov87_021D0E2C
ov87_021D0E2C: @ 0x021D0E2C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _021D0E58
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl ov87_021D11F8
	cmp r0, #0
	bne _021D0E50
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D0E50:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xd8
	str r1, [r0]
_021D0E58:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D0E64
	cmp r0, #1
	beq _021D0F2A
	b _021D0F2E
_021D0E64:
	ldr r0, _021D0F34 @ =0x021BF67C
	movs r1, #2
	ldr r0, [r0, #0x48]
	adds r2, r0, #0
	tst r2, r1
	beq _021D0E80
	adds r0, r4, #0
	movs r1, #1
	bl ov87_021D0F38
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D0F2E
_021D0E80:
	movs r2, #1
	adds r3, r0, #0
	tst r3, r2
	beq _021D0E98
	ldr r0, [r4, #0x1c]
	movs r1, #4
	eors r0, r2
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov87_021D0F38
	b _021D0F2E
_021D0E98:
	movs r2, #0x20
	tst r2, r0
	beq _021D0EB2
	adds r0, r4, #0
	bl ov87_021D0F4C
	cmp r0, #0
	beq _021D0F2E
	adds r0, r4, #0
	movs r1, #3
	bl ov87_021D0F38
	b _021D0F2E
_021D0EB2:
	movs r2, #0x10
	tst r2, r0
	beq _021D0ECC
	adds r0, r4, #0
	bl ov87_021D0F88
	cmp r0, #0
	beq _021D0F2E
	adds r0, r4, #0
	movs r1, #3
	bl ov87_021D0F38
	b _021D0F2E
_021D0ECC:
	movs r2, #0x40
	tst r2, r0
	beq _021D0EFC
	ldr r0, [r4, #0x18]
	subs r0, r0, #1
	str r0, [r4, #0x18]
	bpl _021D0EF4
	adds r0, r4, #0
	bl ov87_021D0F4C
	cmp r0, #0
	beq _021D0F2E
	ldr r0, [r4, #0x14]
	movs r1, #3
	subs r0, r0, #1
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl ov87_021D0F38
	b _021D0F2E
_021D0EF4:
	adds r0, r4, #0
	bl ov87_021D0F38
	b _021D0F2E
_021D0EFC:
	movs r2, #0x80
	tst r0, r2
	beq _021D0F2E
	ldr r0, [r4, #0x18]
	adds r2, r0, #1
	str r2, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r2, r0
	blt _021D0F22
	adds r0, r4, #0
	bl ov87_021D0F88
	cmp r0, #0
	beq _021D0F2E
	adds r0, r4, #0
	movs r1, #3
	bl ov87_021D0F38
	b _021D0F2E
_021D0F22:
	adds r0, r4, #0
	bl ov87_021D0F38
	b _021D0F2E
_021D0F2A:
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0F2E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D0F34: .4byte 0x021BF67C
	thumb_func_end ov87_021D0E2C

	thumb_func_start ov87_021D0F38
ov87_021D0F38: @ 0x021D0F38
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl ov87_021D11D0
	adds r4, #0xd8
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov87_021D0F38

	thumb_func_start ov87_021D0F4C
ov87_021D0F4C: @ 0x021D0F4C
	push {r3, lr}
	adds r1, r0, #0
	adds r1, #0xd4
	ldr r1, [r1]
	adds r2, r1, #1
	adds r1, r0, #0
	adds r1, #0xd4
	str r2, [r1]
	adds r1, r0, #0
	adds r1, #0xd4
	ldr r2, [r1]
	adds r1, r0, #0
	adds r1, #0xd0
	ldr r1, [r1]
	cmp r2, r1
	blt _021D0F74
	adds r1, r0, #0
	movs r2, #0
	adds r1, #0xd4
	str r2, [r1]
_021D0F74:
	adds r1, r0, #0
	adds r2, r0, #0
	adds r1, #0xcc
	adds r2, #0xd4
	ldr r1, [r1]
	ldr r2, [r2]
	bl ov87_021D101C
	movs r0, #1
	pop {r3, pc}
	thumb_func_end ov87_021D0F4C

	thumb_func_start ov87_021D0F88
ov87_021D0F88: @ 0x021D0F88
	push {r3, lr}
	adds r1, r0, #0
	adds r1, #0xd4
	ldr r1, [r1]
	subs r2, r1, #1
	adds r1, r0, #0
	adds r1, #0xd4
	str r2, [r1]
	adds r1, r0, #0
	adds r1, #0xd4
	ldr r1, [r1]
	cmp r1, #0
	bge _021D0FB0
	adds r1, r0, #0
	adds r1, #0xd0
	ldr r1, [r1]
	subs r2, r1, #1
	adds r1, r0, #0
	adds r1, #0xd4
	str r2, [r1]
_021D0FB0:
	adds r1, r0, #0
	adds r2, r0, #0
	adds r1, #0xcc
	adds r2, #0xd4
	ldr r1, [r1]
	ldr r2, [r2]
	bl ov87_021D101C
	movs r0, #1
	pop {r3, pc}
	thumb_func_end ov87_021D0F88

	thumb_func_start ov87_021D0FC4
ov87_021D0FC4: @ 0x021D0FC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	movs r4, #0
	adds r5, r0, #0
	movs r6, #0xc
	movs r7, #0x3c
_021D0FD4:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02023790
	str r0, [r5, #0x20]
	movs r0, #8
	movs r1, #0x3c
	bl FUN_02023790
	str r0, [r5, #0x24]
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, #6
	blt _021D0FD4
	ldr r0, [sp]
	movs r2, #0
	ldr r1, [sp, #4]
	str r2, [r0, #0x1c]
	bl ov87_021D101C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov87_021D0FC4

	thumb_func_start ov87_021D1000
ov87_021D1000: @ 0x021D1000
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D1006:
	ldr r0, [r5, #0x20]
	bl FUN_020237BC
	ldr r0, [r5, #0x24]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, #6
	blt _021D1006
	pop {r3, r4, r5, pc}
	thumb_func_end ov87_021D1000

	thumb_func_start ov87_021D101C
ov87_021D101C: @ 0x021D101C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r0, #0
	str r2, [sp]
	adds r0, r7, #0
	adds r1, r2, #0
	bl FUN_0202E174
	str r0, [r6]
	ldr r1, [sp]
	adds r0, r7, #0
	bl FUN_0202E1A8
	str r0, [r6, #0x14]
	ldr r1, [sp]
	adds r0, r7, #0
	adds r2, r6, #4
	bl FUN_0202E274
	ldr r0, [r6, #0x14]
	movs r4, #0
	cmp r0, #0
	ble _021D1064
	adds r5, r6, #0
	adds r5, #0x20
_021D104E:
	ldr r1, [sp]
	adds r0, r7, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl FUN_0202E1F4
	ldr r0, [r6, #0x14]
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, r0
	blt _021D104E
_021D1064:
	movs r0, #0
	str r0, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov87_021D101C

	thumb_func_start ov87_021D106C
ov87_021D106C: @ 0x021D106C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r1, _021D1134 @ =0x00000E1C
	movs r0, #0x3d
	bl FUN_02018144
	adds r4, r0, #0
	beq _021D112E
	str r5, [r4]
	str r6, [r4, #4]
	movs r0, #0x3d
	bl FUN_02018340
	str r0, [r4, #0x10]
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x3d
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r4, #0
	movs r0, #0x40
	adds r1, #0x38
	movs r2, #0x3d
	bl FUN_020095C4
	movs r2, #0x16
	str r0, [r4, #0x34]
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #4
	movs r3, #0x3d
	bl FUN_0200B144
	movs r2, #6
	lsls r2, r2, #6
	str r0, [r4, r2]
	movs r0, #1
	movs r1, #0x1a
	adds r2, #0x1c
	movs r3, #0x3d
	bl FUN_0200B144
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _021D1138 @ =0x00000287
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x3d
	bl FUN_0200B144
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x3d
	bl FUN_0200B358
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x8c
	adds r0, r1, #0
	movs r1, #0x3d
	bl FUN_02023790
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r4, r1]
	subs r1, #0x90
	adds r0, r1, #0
	movs r1, #0x3d
	bl FUN_02023790
	movs r1, #0x65
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x3d
	bl FUN_02073C74
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _021D113C @ =ov87_021D11AC
	adds r1, r4, #0
	bl FUN_02017798
_021D112E:
	adds r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D1134: .4byte 0x00000E1C
_021D1138: .4byte 0x00000287
_021D113C: .4byte ov87_021D11AC
	thumb_func_end ov87_021D106C

	thumb_func_start ov87_021D1140
ov87_021D1140: @ 0x021D1140
	push {r4, lr}
	adds r4, r0, #0
	beq _021D11AA
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x61
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #6
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_0200B190
	ldr r0, [r4, #0x34]
	bl FUN_02021964
	bl FUN_0200A878
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
_021D11AA:
	pop {r4, pc}
	thumb_func_end ov87_021D1140

	thumb_func_start ov87_021D11AC
ov87_021D11AC: @ 0x021D11AC
	push {r3, lr}
	ldr r0, [r0, #0x34]
	bl FUN_020219F8
	bl FUN_0200A858
	ldr r3, _021D11C8 @ =0x027E0000
	ldr r1, _021D11CC @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021D11C8: .4byte 0x027E0000
_021D11CC: .4byte 0x00003FF8
	thumb_func_end ov87_021D11AC

	thumb_func_start ov87_021D11D0
ov87_021D11D0: @ 0x021D11D0
	push {r3, lr}
	adds r2, r1, #0
	str r2, [r0, #0xc]
	movs r1, #0
	lsls r3, r2, #2
	str r1, [r0, #8]
	ldr r2, _021D11F4 @ =0x021D1BA0
	adds r1, r0, #0
	ldr r2, [r2, r3]
	adds r1, #8
	blx r2
	cmp r0, #0
	bne _021D11EE
	movs r0, #1
	pop {r3, pc}
_021D11EE:
	movs r0, #0
	pop {r3, pc}
	nop
_021D11F4: .4byte 0x021D1BA0
	thumb_func_end ov87_021D11D0

	thumb_func_start ov87_021D11F8
ov87_021D11F8: @ 0x021D11F8
	push {r3, lr}
	ldr r2, [r0, #0xc]
	adds r1, r0, #0
	lsls r3, r2, #2
	ldr r2, _021D120C @ =0x021D1BA0
	adds r1, #8
	ldr r2, [r2, r3]
	blx r2
	pop {r3, pc}
	nop
_021D120C: .4byte 0x021D1BA0
	thumb_func_end ov87_021D11F8

	thumb_func_start ov87_021D1210
ov87_021D1210: @ 0x021D1210
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #0
	beq _021D1224
	cmp r1, #1
	beq _021D124C
	b _021D125A
_021D1224:
	bl ov87_021D139C
	adds r0, r5, #0
	bl ov87_021D1818
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x3d
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D125A
_021D124C:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D125A
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D125A:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov87_021D1210

	thumb_func_start ov87_021D1260
ov87_021D1260: @ 0x021D1260
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D1274
	cmp r0, #1
	beq _021D129A
	b _021D12B4
_021D1274:
	ldr r0, _021D12BC @ =0x0000060E
	bl FUN_02005748
	movs r1, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x3d
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D12B4
_021D129A:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D12B4
	adds r0, r5, #0
	bl ov87_021D186C
	adds r0, r5, #0
	bl ov87_021D14B8
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_021D12B4:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D12BC: .4byte 0x0000060E
	thumb_func_end ov87_021D1260

	thumb_func_start ov87_021D12C0
ov87_021D12C0: @ 0x021D12C0
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, [r0, #4]
	str r0, [sp]
	ldr r0, [r7, #0x14]
	movs r4, #0
	cmp r0, #0
	ble _021D1328
	ldr r5, [sp]
	adds r6, r7, #0
_021D12D2:
	ldr r0, [r7, #0x18]
	cmp r4, r0
	bne _021D1304
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021FE0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021F58
	movs r0, #1
	bl FUN_020063D4
	adds r1, r6, #0
	adds r1, #0x33
	ldrh r0, [r6, #0x30]
	ldrb r1, [r1]
	bl FUN_02005844
	b _021D131C
_021D1304:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021FE0
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #1
	bl FUN_02021F58
_021D131C:
	ldr r0, [r7, #0x14]
	adds r4, r4, #1
	adds r5, r5, #4
	adds r6, #0x1c
	cmp r4, r0
	blt _021D12D2
_021D1328:
	ldr r0, [sp]
	bl ov87_021D1640
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov87_021D12C0

	thumb_func_start ov87_021D1334
ov87_021D1334: @ 0x021D1334
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	cmp r1, #3
	bhi _021D137E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D134A: @ jump table
	.2byte _021D1352 - _021D134A - 2 @ case 0
	.2byte _021D135E - _021D134A - 2 @ case 1
	.2byte _021D136A - _021D134A - 2 @ case 2
	.2byte _021D1376 - _021D134A - 2 @ case 3
_021D1352:
	bl ov87_021D1568
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D137E
_021D135E:
	bl ov87_021D1AB8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D137E
_021D136A:
	bl ov87_021D1970
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D137E
_021D1376:
	bl ov87_021D1558
	movs r0, #1
	pop {r4, pc}
_021D137E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov87_021D1334

	thumb_func_start ov87_021D1384
ov87_021D1384: @ 0x021D1384
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D1398 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov87_021D1640
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_021D1398: .4byte 0x000005DC
	thumb_func_end ov87_021D1384

	thumb_func_start ov87_021D139C
ov87_021D139C: @ 0x021D139C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _021D14A0 @ =0x021D1B30
	bl FUN_0201FE94
	ldr r2, _021D14A4 @ =0x04000304
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _021D14A8 @ =0x021D1AE8
	bl FUN_02018368
	ldr r0, [r5, #0x10]
	ldr r2, _021D14AC @ =0x021D1B14
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0x10]
	ldr r2, _021D14B0 @ =0x021D1AF8
	movs r1, #2
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #0x3d
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x65
	movs r3, #2
	bl FUN_02006E3C
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x3d
	str r0, [sp, #0xc]
	ldr r2, [r5, #0x10]
	movs r0, #0x65
	movs r3, #2
	bl FUN_02006E60
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x3d
	movs r2, #0
	str r0, [sp, #4]
	movs r0, #0x65
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02006E84
	movs r2, #0
	str r2, [sp]
	movs r1, #1
	ldr r0, [r5, #0x10]
	adds r3, r1, #0
	bl FUN_020196C0
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, [r5, #0x10]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019CB8
	adds r0, r5, #0
	movs r1, #1
	bl ov87_021D14D4
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov87_021D1558
	movs r0, #0
	str r0, [sp]
	movs r0, #0x3d
	str r0, [sp, #4]
	lsls r2, r4, #0x10
	ldr r0, [r5, #0x10]
	movs r1, #1
	lsrs r2, r2, #0x10
	movs r3, #2
	bl FUN_0200DAA4
	adds r0, r5, #0
	lsls r2, r4, #0x10
	adds r0, #0x14
	movs r1, #0
	lsrs r2, r2, #0x10
	movs r3, #2
	bl FUN_0200DC48
	adds r0, r5, #0
	lsls r2, r4, #0x10
	adds r0, #0x24
	movs r1, #0
	lsrs r2, r2, #0x10
	movs r3, #2
	bl FUN_0200DC48
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_02019448
	movs r3, #8
	ldr r0, _021D14B4 @ =0x04000050
	movs r1, #0
	movs r2, #6
	str r3, [sp]
	blx FUN_020BF55C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D14A0: .4byte 0x021D1B30
_021D14A4: .4byte 0x04000304
_021D14A8: .4byte 0x021D1AE8
_021D14AC: .4byte 0x021D1B14
_021D14B0: .4byte 0x021D1AF8
_021D14B4: .4byte 0x04000050
	thumb_func_end ov87_021D139C

	thumb_func_start ov87_021D14B8
ov87_021D14B8: @ 0x021D14B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0x10]
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	bl ov87_021D1540
	pop {r4, pc}
	thumb_func_end ov87_021D14B8

	thumb_func_start ov87_021D14D4
ov87_021D14D4: @ 0x021D14D4
	push {r4, r5, lr}
	sub sp, #0x14
	movs r2, #1
	adds r5, r0, #0
	str r2, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #2
	adds r4, r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [r5, #0x10]
	adds r1, #0x14
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0x3c
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r1, r5, #0
	movs r2, #1
	ldr r0, [r5, #0x10]
	adds r1, #0x24
	adds r3, r2, #0
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x14
	bl FUN_0201A9F4
	adds r5, #0x24
	adds r0, r5, #0
	bl FUN_0201A9F4
	adds r4, #0xb4
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov87_021D14D4

	thumb_func_start ov87_021D1540
ov87_021D1540: @ 0x021D1540
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r5, #0x14
_021D1548:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #2
	blt _021D1548
	pop {r3, r4, r5, pc}
	thumb_func_end ov87_021D1540

	thumb_func_start ov87_021D1558
ov87_021D1558: @ 0x021D1558
	push {r4, lr}
	adds r4, r0, #0
	bl ov87_021D1590
	adds r0, r4, #0
	bl ov87_021D1640
	pop {r4, pc}
	thumb_func_end ov87_021D1558

	thumb_func_start ov87_021D1568
ov87_021D1568: @ 0x021D1568
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x14
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201ACCC
	adds r4, #0x24
	adds r0, r4, #0
	bl FUN_0201ACCC
	pop {r4, pc}
	thumb_func_end ov87_021D1568

	thumb_func_start ov87_021D1590
ov87_021D1590: @ 0x021D1590
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r4, [r5, #4]
	movs r1, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x63
	lsls r0, r0, #2
	adds r6, r5, #0
	ldr r0, [r5, r0]
	ldr r2, [r4]
	movs r3, #4
	adds r6, #0x14
	bl FUN_0200B60C
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x63
	lsls r0, r0, #2
	movs r2, #0x7d
	ldr r3, [r4, #4]
	lsls r2, r2, #4
	adds r2, r3, r2
	ldr r0, [r5, r0]
	movs r3, #4
	bl FUN_0200B60C
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #8]
	movs r1, #2
	bl FUN_0200C2E0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r4, #0xc]
	movs r1, #3
	movs r3, #2
	bl FUN_0200B60C
	movs r2, #6
	lsls r2, r2, #6
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #0
	bl FUN_0200B1B8
	movs r2, #0x63
	lsls r2, r2, #2
	adds r1, r2, #0
	ldr r0, [r5, r2]
	adds r1, #8
	adds r2, r2, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	adds r0, r6, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r1, [sp, #8]
	adds r2, #0x95
	ldr r2, [r5, r2]
	adds r0, r6, #0
	adds r3, r1, #0
	bl FUN_0201D738
	adds r0, r6, #0
	bl FUN_0201ACCC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov87_021D1590

	thumb_func_start ov87_021D1640
ov87_021D1640: @ 0x021D1640
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r4, [r5, #4]
	movs r0, #0x1c
	ldr r1, [r4, #0x18]
	adds r2, r4, #0
	muls r0, r1, r0
	adds r2, #0x20
	adds r7, r2, r0
	adds r0, r5, #0
	str r0, [sp, #0xc]
	adds r0, #0x24
	movs r1, #0xf
	str r0, [sp, #0xc]
	bl FUN_0201ADA4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _021D1670
	cmp r0, #1
	bne _021D166E
	b _021D17C4
_021D166E:
	b _021D180E
_021D1670:
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [r7]
	adds r3, r1, #0
	bl FUN_0201D738
	movs r2, #6
	lsls r2, r2, #6
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #5
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r1, [sp, #8]
	adds r2, #0x91
	ldr r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r3, #0x48
	bl FUN_0201D738
	movs r2, #0x61
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r2, #0xc
	ldrh r1, [r7, #0x10]
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r1, [sp, #8]
	adds r2, #0x91
	ldr r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r3, #0x5e
	bl FUN_0201D738
	ldrh r0, [r7, #0x10]
	ldr r1, [r7, #8]
	bl FUN_02075DAC
	cmp r0, #0
	beq _021D16E2
	cmp r0, #1
	beq _021D16F4
	b _021D1706
_021D16E2:
	movs r2, #6
	lsls r2, r2, #6
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #3
	bl FUN_0200B1B8
	b _021D1710
_021D16F4:
	movs r2, #6
	lsls r2, r2, #6
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #4
	bl FUN_0200B1B8
	b _021D1710
_021D1706:
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_020237E8
_021D1710:
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r1, [sp, #8]
	adds r2, #0x91
	ldr r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r3, #0xae
	bl FUN_0201D738
	movs r2, #6
	lsls r2, r2, #6
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #1
	bl FUN_0200B1B8
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x63
	lsls r0, r0, #2
	ldrb r2, [r7, #0x12]
	ldr r0, [r5, r0]
	movs r1, #0
	movs r3, #4
	bl FUN_0200B60C
	movs r2, #0x63
	lsls r2, r2, #2
	adds r1, r2, #0
	ldr r0, [r5, r2]
	adds r1, #8
	adds r2, r2, #4
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r1, [sp, #8]
	adds r2, #0x95
	ldr r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r3, #0xc2
	bl FUN_0201D738
	movs r2, #6
	lsls r2, r2, #6
	ldr r0, [r5, r2]
	adds r2, #0x10
	ldr r2, [r5, r2]
	movs r1, #2
	bl FUN_0200B1B8
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	adds r2, #0x91
	ldr r0, [sp, #0xc]
	ldr r2, [r5, r2]
	adds r3, r1, #0
	bl FUN_0201D738
	movs r1, #0x19
	lsls r1, r1, #4
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [r7, #4]
	bl FUN_0201D738
	b _021D180E
_021D17C4:
	movs r4, #0
_021D17C6:
	ldrh r1, [r7, #0x14]
	cmp r1, #0
	beq _021D180E
	movs r0, #0x62
	movs r2, #0x19
	lsls r0, r0, #2
	lsls r2, r2, #4
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	bl FUN_0200B1B8
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0
	movs r2, #0x19
	str r0, [sp, #8]
	lsls r2, r2, #4
	movs r3, #1
	adds r6, r4, #0
	ands r6, r3
	movs r3, #0x60
	ldr r0, [sp, #0xc]
	ldr r2, [r5, r2]
	movs r1, #0
	muls r3, r6, r3
	bl FUN_0201D738
	adds r4, r4, #1
	adds r7, r7, #2
	cmp r4, #4
	blt _021D17C6
_021D180E:
	ldr r0, [sp, #0xc]
	bl FUN_0201ACCC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov87_021D1640

	thumb_func_start ov87_021D1818
ov87_021D1818: @ 0x021D1818
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0x3d
	str r0, [sp]
	movs r0, #0x1b
	movs r1, #0x4d
	movs r2, #0
	add r3, sp, #8
	bl FUN_02006FA0
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x3d
	str r0, [sp]
	movs r0, #0x1b
	movs r1, #0x4e
	movs r2, #0
	add r3, sp, #4
	bl FUN_02006FBC
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r1, #0x20
	movs r2, #0x32
	movs r0, #0
	adds r1, r4, r1
	lsls r2, r2, #6
	blx FUN_020C4BB8
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	adds r0, r4, #0
	bl ov87_021D18A0
	adds r0, r4, #0
	bl ov87_021D1970
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov87_021D1818

	thumb_func_start ov87_021D186C
ov87_021D186C: @ 0x021D186C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0x16
	movs r4, #0
	adds r5, r7, #0
	lsls r6, r6, #4
_021D1878:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021D1882
	bl FUN_02021BD4
_021D1882:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _021D1878
	movs r0, #0x5e
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_020181C4
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov87_021D186C

	thumb_func_start ov87_021D18A0
ov87_021D18A0: @ 0x021D18A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	movs r3, #0
	adds r5, r0, #0
	str r1, [sp, #0x7c]
	str r2, [sp, #0x80]
	str r3, [sp, #0x74]
	str r3, [sp, #0x84]
	str r3, [sp, #0x88]
	str r3, [sp, #0x8c]
	add r0, sp, #0x90
	strb r3, [r0]
	add r0, sp, #0x2c
	str r0, [sp, #0x70]
	add r0, sp, #0x18
	str r0, [sp, #0x78]
	ldr r0, [r5, #0x34]
	movs r1, #0x4c
	str r0, [sp, #0x50]
	add r0, sp, #0x70
	str r0, [sp, #0x54]
	movs r0, #1
	str r0, [sp, #0x68]
	movs r0, #0x3d
	str r3, [sp, #0x60]
	str r0, [sp, #0x6c]
	str r0, [sp]
	adds r2, r3, #0
	movs r0, #0x1b
	add r3, sp, #0x14
	bl FUN_02006F50
	str r0, [sp, #0xc]
	movs r0, #0x1b
	movs r1, #0x4b
	add r2, sp, #0x10
	movs r3, #0x3d
	bl FUN_02006F88
	movs r4, #0
	ldr r6, _021D196C @ =0x021D1B58
	str r0, [sp, #8]
	str r4, [sp, #4]
	adds r7, r4, #0
_021D18F8:
	add r0, sp, #0x2c
	blx FUN_020A818C
	add r0, sp, #0x18
	blx FUN_020A81D0
	ldr r0, [sp, #0x14]
	adds r1, r4, #0
	movs r2, #1
	add r3, sp, #0x2c
	blx FUN_020A8224
	ldr r0, [sp, #0x10]
	adds r1, r7, #0
	movs r2, #1
	add r3, sp, #0x18
	blx FUN_020A8850
	ldr r0, [r6]
	lsls r0, r0, #0xc
	str r0, [sp, #0x58]
	ldr r0, [r6, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x5c]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #0x64]
	add r0, sp, #0x50
	bl FUN_02021B90
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x32
	lsls r0, r0, #6
	adds r4, r4, r0
	ldr r0, [sp, #4]
	adds r7, #0x20
	adds r0, r0, #1
	adds r6, #8
	adds r5, r5, #4
	str r0, [sp, #4]
	cmp r0, #6
	blt _021D18F8
	ldr r0, [sp, #8]
	bl FUN_020181C4
	ldr r0, [sp, #0xc]
	bl FUN_020181C4
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	nop
_021D196C: .4byte 0x021D1B58
	thumb_func_end ov87_021D18A0

	thumb_func_start ov87_021D1970
ov87_021D1970: @ 0x021D1970
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r7, r0, #0
	ldr r0, [r7, #4]
	movs r4, #0
	str r0, [sp, #0x20]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bgt _021D1984
	b _021D1A92
_021D1984:
	ldr r5, [sp, #0x20]
	str r4, [sp, #0x18]
	adds r0, r5, #0
	str r0, [sp, #0x1c]
	adds r0, #0x33
	str r0, [sp, #0x1c]
	movs r0, #0x67
	lsls r0, r0, #2
	adds r0, r7, r0
	str r4, [sp, #0x14]
	adds r6, r7, #0
	str r0, [sp, #0x24]
_021D199C:
	movs r0, #1
	str r0, [sp]
	ldr r0, [r5, #0x28]
	adds r2, r5, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [r5, #0x2c]
	adds r2, #0x32
	str r0, [sp, #0xc]
	movs r0, #0x66
	lsls r0, r0, #2
	ldrh r1, [r5, #0x30]
	ldrb r2, [r2]
	ldr r0, [r7, r0]
	movs r3, #0x20
	bl FUN_02073D80
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ldr r2, [sp, #0x1c]
	movs r1, #0x70
	bl FUN_02074B30
	movs r1, #0x66
	lsls r1, r1, #2
	ldr r1, [r7, r1]
	add r0, sp, #0x28
	movs r2, #2
	bl FUN_02075EF4
	ldr r0, [sp, #0x24]
	add r1, sp, #0x28
	str r0, [sp]
	ldr r0, [r5, #0x28]
	ldr r3, _021D1AB4 @ =0x021D1AD8
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldrh r0, [r5, #0x30]
	movs r2, #0x3d
	str r0, [sp, #0x10]
	add r0, sp, #0x28
	ldrh r0, [r0]
	ldrh r1, [r1, #2]
	bl FUN_02013720
	movs r1, #0x32
	ldr r0, [sp, #0x24]
	lsls r1, r1, #6
	blx FUN_020C2C54
	movs r2, #0x32
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	lsls r2, r2, #6
	blx FUN_020C02BC
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x3d
	str r0, [sp, #4]
	add r0, sp, #0x28
	add r1, sp, #0x28
	ldrh r0, [r0]
	ldrh r1, [r1, #4]
	ldr r3, [sp, #0x14]
	movs r2, #1
	bl FUN_02006E84
	ldr r0, [sp, #0x20]
	ldr r0, [r0, #0x18]
	cmp r4, r0
	bne _021D1A56
	movs r0, #1
	bl FUN_020063D4
	adds r1, r5, #0
	adds r1, #0x33
	ldrh r0, [r5, #0x30]
	ldrb r1, [r1]
	bl FUN_02005844
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r1, #0
	bl FUN_02021FE0
	b _021D1A62
_021D1A56:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r1, #1
	bl FUN_02021FE0
_021D1A62:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	adds r0, #0x1c
	str r0, [sp, #0x1c]
	movs r0, #0x32
	lsls r0, r0, #6
	adds r0, r1, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r4, r4, #1
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	adds r5, #0x1c
	ldr r0, [r0, #0x14]
	adds r6, r6, #4
	cmp r4, r0
	blt _021D199C
_021D1A92:
	cmp r4, #6
	bge _021D1AB0
	lsls r0, r4, #2
	movs r6, #0x16
	adds r5, r7, r0
	movs r7, #0
	lsls r6, r6, #4
_021D1AA0:
	ldr r0, [r5, r6]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _021D1AA0
_021D1AB0:
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1AB4: .4byte 0x021D1AD8
	thumb_func_end ov87_021D1970

	thumb_func_start ov87_021D1AB8
ov87_021D1AB8: @ 0x021D1AB8
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	movs r6, #0x16
	adds r5, r0, #0
	adds r7, r4, #0
	lsls r6, r6, #4
_021D1AC4:
	ldr r0, [r5, r6]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _021D1AC4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov87_021D1AB8
	@ 0x021D1AD8
