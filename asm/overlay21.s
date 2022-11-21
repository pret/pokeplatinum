
	thumb_func_start ov21_021D0D80
ov21_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, lr}
	sub sp, #0x20
	movs r1, #0
	adds r5, r0, #0
	movs r0, #0x36
	adds r2, r1, #0
	bl FUN_02004550
	movs r2, #1
	movs r0, #3
	movs r1, #0x25
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0x25
	bl FUN_0200681C
	adds r4, r0, #0
	bne _021D0DAE
	bl FUN_02022974
_021D0DAE:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	movs r0, #8
	movs r1, #0x25
	bl FUN_0201DBEC
	adds r0, r5, #0
	bl FUN_02006840
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r1, _021D0E34 @ =0x000001E7
	movs r2, #0
	bl FUN_0202756C
	bl FUN_02098988
	ldr r0, _021D0E38 @ =ov21_021D0F04
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	cmp r0, #1
	beq _021D0DF4
	bl FUN_02022974
_021D0DF4:
	movs r0, #0x25
	bl ov21_021D12B0
	ldr r0, [r5]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5, #8]
	str r0, [sp, #8]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	movs r0, #0x25
	bl ov21_021D0F60
	str r0, [r4]
	movs r0, #1
	movs r1, #0x2a
	bl FUN_0200544C
	movs r0, #1
	add sp, #0x20
	pop {r3, r4, r5, pc}
	nop
_021D0E34: .4byte 0x000001E7
_021D0E38: .4byte ov21_021D0F04
	thumb_func_end ov21_021D0D80

	thumb_func_start ov21_021D0E3C
ov21_021D0E3C: @ 0x021D0E3C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	bl FUN_0200682C
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhi _021D0EBC
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D0E58: @ jump table
	.2byte _021D0E60 - _021D0E58 - 2 @ case 0
	.2byte _021D0E78 - _021D0E58 - 2 @ case 1
	.2byte _021D0E8E - _021D0E58 - 2 @ case 2
	.2byte _021D0E9A - _021D0E58 - 2 @ case 3
_021D0E60:
	bl ov21_021D0F18
	movs r0, #0xf
	mvns r0, r0
	movs r1, #0x3f
	movs r2, #3
	bl FUN_0200AB4C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0EBC
_021D0E78:
	ldr r0, [r5]
	bl ov21_021D10B8
	cmp r0, #1
	bne _021D0EBC
	movs r0, #0
	str r0, [r5]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0EBC
_021D0E8E:
	bl ov21_021D0F38
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0EBC
_021D0E9A:
	bl ov21_021D0F58
	cmp r0, #0
	beq _021D0EBC
	movs r0, #0
	bl FUN_0200F32C
	movs r0, #1
	bl FUN_0200F32C
	ldr r0, _021D0EC0 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _021D0EC4 @ =0x04001050
	strh r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0EBC:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D0EC0: .4byte 0x04000050
_021D0EC4: .4byte 0x04001050
	thumb_func_end ov21_021D0E3C

	thumb_func_start ov21_021D0EC8
ov21_021D0EC8: @ 0x021D0EC8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_0201E530
	cmp r0, #1
	beq _021D0EE4
	bl FUN_02022974
_021D0EE4:
	bl ov21_021D12C4
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl FUN_02006830
	movs r0, #0x25
	bl FUN_0201807C
	movs r0, #1
	movs r1, #0x7f
	bl FUN_0200544C
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021D0EC8

	thumb_func_start ov21_021D0F04
ov21_021D0F04: @ 0x021D0F04
	push {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _021D0F10
	bl ov21_021D12D8
_021D0F10:
	bl FUN_0201DCAC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021D0F04

	thumb_func_start ov21_021D0F18
ov21_021D0F18: @ 0x021D0F18
	push {lr}
	sub sp, #0xc
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x25
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov21_021D0F18

	thumb_func_start ov21_021D0F38
ov21_021D0F38: @ 0x021D0F38
	push {lr}
	sub sp, #0xc
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x25
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {pc}
	thumb_func_end ov21_021D0F38

	thumb_func_start ov21_021D0F58
ov21_021D0F58: @ 0x021D0F58
	ldr r3, _021D0F5C @ =FUN_0200F2AC
	bx r3
	.align 2, 0
_021D0F5C: .4byte FUN_0200F2AC
	thumb_func_end ov21_021D0F58

	thumb_func_start ov21_021D0F60
ov21_021D0F60: @ 0x021D0F60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r1, #0
	ldr r1, _021D1084 @ =0x00001D10
	adds r7, r0, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D0F76
	bl FUN_02022974
_021D0F76:
	ldr r2, _021D1084 @ =0x00001D10
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020D5124
	str r7, [r4, #4]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #8]
	adds r0, r7, #0
	bl ov21_021D423C
	ldr r1, _021D1088 @ =0x00001A0C
	str r0, [r4, r1]
	adds r0, r7, #0
	bl ov21_021D423C
	ldr r1, _021D108C @ =0x00001A10
	str r0, [r4, r1]
	adds r0, r7, #0
	bl ov21_021D423C
	ldr r1, _021D1090 @ =0x00001A14
	str r0, [r4, r1]
	adds r0, r7, #0
	bl ov21_021D423C
	ldr r1, _021D1094 @ =0x00001A18
	str r0, [r4, r1]
	adds r0, r7, #0
	bl ov21_021D3FE0
	movs r1, #0x1d
	lsls r1, r1, #8
	str r0, [r4, r1]
	adds r0, r7, #0
	bl ov21_021D3FE0
	ldr r1, _021D1098 @ =0x00001D04
	str r0, [r4, r1]
	adds r0, r7, #0
	bl ov21_021D3FE0
	ldr r1, _021D109C @ =0x00001D08
	str r0, [r4, r1]
	adds r0, r7, #0
	bl ov21_021D3FE0
	ldr r1, _021D10A0 @ =0x00001D0C
	str r0, [r4, r1]
	ldr r0, [r5]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	ldr r0, [r5, #8]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x1c]
	bl FUN_0209ACE4
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x1c]
	bl FUN_0209ACEC
	str r0, [sp, #0x28]
	adds r0, r4, #0
	adds r0, #0xc
	add r1, sp, #8
	adds r2, r7, #0
	bl ov21_021D3208
	ldr r0, _021D10A4 @ =0x0000177C
	adds r1, r7, #0
	adds r0, r4, r0
	bl ov21_021D1FA4
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, _021D10A8 @ =0x00001A30
	ldr r5, _021D10AC @ =0x021E9B74
	adds r6, r4, r0
_021D1024:
	ldr r3, [r5]
	cmp r3, #0
	beq _021D1032
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	blx r3
_021D1032:
	ldr r0, [sp, #4]
	adds r5, r5, #4
	adds r0, r0, #1
	adds r6, #0x28
	str r0, [sp, #4]
	cmp r0, #0xa
	blt _021D1024
	movs r0, #0
	str r0, [sp]
	movs r0, #0x6f
	lsls r0, r0, #6
	ldr r5, _021D10B0 @ =0x021E9B34
	adds r6, r4, r0
_021D104C:
	ldr r3, [r5]
	cmp r3, #0
	beq _021D105A
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	blx r3
_021D105A:
	ldr r0, [sp]
	adds r5, r5, #4
	adds r0, r0, #1
	adds r6, #0x28
	str r0, [sp]
	cmp r0, #8
	blt _021D104C
	ldr r1, _021D10B4 @ =0x00001A1C
	adds r0, r7, #0
	adds r1, r4, r1
	adds r2, r4, #0
	movs r3, #1
	bl ov21_021D47F0
	adds r0, r4, #0
	bl ov21_021D1EEC
	adds r0, r4, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1084: .4byte 0x00001D10
_021D1088: .4byte 0x00001A0C
_021D108C: .4byte 0x00001A10
_021D1090: .4byte 0x00001A14
_021D1094: .4byte 0x00001A18
_021D1098: .4byte 0x00001D04
_021D109C: .4byte 0x00001D08
_021D10A0: .4byte 0x00001D0C
_021D10A4: .4byte 0x0000177C
_021D10A8: .4byte 0x00001A30
_021D10AC: .4byte 0x021E9B74
_021D10B0: .4byte 0x021E9B34
_021D10B4: .4byte 0x00001A1C
	thumb_func_end ov21_021D0F60

	thumb_func_start ov21_021D10B8
ov21_021D10B8: @ 0x021D10B8
	push {r4, lr}
	adds r4, r0, #0
	bne _021D10C2
	bl FUN_02022974
_021D10C2:
	adds r0, r4, #0
	adds r0, #0xc
	bl ov21_021D3960
	ldr r0, _021D128C @ =0x00001A14
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1126
	ldr r0, _021D1290 @ =0x00001A0C
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1126
	ldr r0, _021D1294 @ =0x00001A18
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1126
	ldr r0, _021D1298 @ =0x00001A10
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1126
	ldr r0, _021D129C @ =0x00001D08
	movs r1, #0
	ldr r0, [r4, r0]
	bl ov21_021D4194
	ldr r0, _021D12A0 @ =0x00001D0C
	movs r1, #0
	ldr r0, [r4, r0]
	bl ov21_021D4194
	movs r0, #0x1d
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov21_021D4194
	ldr r0, _021D12A4 @ =0x00001D04
	movs r1, #0
	ldr r0, [r4, r0]
	bl ov21_021D4194
	b _021D1150
_021D1126:
	ldr r0, _021D129C @ =0x00001D08
	movs r1, #1
	ldr r0, [r4, r0]
	bl ov21_021D4194
	ldr r0, _021D12A0 @ =0x00001D0C
	movs r1, #1
	ldr r0, [r4, r0]
	bl ov21_021D4194
	movs r0, #0x1d
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov21_021D4194
	ldr r0, _021D12A4 @ =0x00001D04
	movs r1, #1
	ldr r0, [r4, r0]
	bl ov21_021D4194
_021D1150:
	ldr r0, _021D129C @ =0x00001D08
	ldr r0, [r4, r0]
	bl ov21_021D4078
	ldr r0, _021D12A0 @ =0x00001D0C
	ldr r0, [r4, r0]
	bl ov21_021D4078
	movs r0, #0x1d
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	bl ov21_021D4078
	ldr r0, _021D12A4 @ =0x00001D04
	ldr r0, [r4, r0]
	bl ov21_021D4078
	ldr r0, _021D129C @ =0x00001D08
	ldr r0, [r4, r0]
	bl ov21_021D4100
	ldr r0, _021D12A0 @ =0x00001D0C
	ldr r0, [r4, r0]
	bl ov21_021D4100
	movs r0, #0x1d
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	bl ov21_021D4100
	ldr r0, _021D12A4 @ =0x00001D04
	ldr r0, [r4, r0]
	bl ov21_021D4100
	ldr r0, _021D1290 @ =0x00001A0C
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11C4
	ldr r0, _021D1294 @ =0x00001A18
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11C4
	ldr r0, _021D1298 @ =0x00001A10
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11C4
	ldr r1, _021D128C @ =0x00001A14
	ldr r0, [r4, r1]
	subs r1, #0x10
	ldr r1, [r4, r1]
	bl ov21_021D4284
_021D11C4:
	ldr r0, _021D128C @ =0x00001A14
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11F4
	ldr r0, _021D1294 @ =0x00001A18
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11F4
	ldr r0, _021D1298 @ =0x00001A10
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D11F4
	ldr r1, _021D1290 @ =0x00001A0C
	ldr r0, [r4, r1]
	subs r1, #0x10
	ldr r1, [r4, r1]
	bl ov21_021D4284
_021D11F4:
	ldr r0, _021D128C @ =0x00001A14
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1224
	ldr r0, _021D1290 @ =0x00001A0C
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1224
	ldr r0, _021D1298 @ =0x00001A10
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1224
	ldr r1, _021D1294 @ =0x00001A18
	ldr r0, [r4, r1]
	subs r1, #0x10
	ldr r1, [r4, r1]
	bl ov21_021D4284
_021D1224:
	ldr r0, _021D128C @ =0x00001A14
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1254
	ldr r0, _021D1290 @ =0x00001A0C
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1254
	ldr r0, _021D1294 @ =0x00001A18
	ldr r0, [r4, r0]
	bl ov21_021D42D4
	cmp r0, #0
	bne _021D1254
	ldr r1, _021D1298 @ =0x00001A10
	ldr r0, [r4, r1]
	subs r1, #0x10
	ldr r1, [r4, r1]
	bl ov21_021D4284
_021D1254:
	bl FUN_020241B4
	ldr r0, _021D12A8 @ =0x0000177C
	adds r0, r4, r0
	bl ov21_021D2124
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	ldr r1, _021D12AC @ =0x00001A04
	movs r0, #0
	str r0, [r4, r1]
	adds r2, r1, #4
	str r0, [r4, r2]
	adds r2, r1, #0
	subs r2, #8
	str r0, [r4, r2]
	subs r1, r1, #4
	str r0, [r4, r1]
	ldr r1, [r4]
	cmp r1, #1
	bne _021D128A
	adds r0, r4, #0
	bl ov21_021D1D08
	movs r0, #1
_021D128A:
	pop {r4, pc}
	.align 2, 0
_021D128C: .4byte 0x00001A14
_021D1290: .4byte 0x00001A0C
_021D1294: .4byte 0x00001A18
_021D1298: .4byte 0x00001A10
_021D129C: .4byte 0x00001D08
_021D12A0: .4byte 0x00001D0C
_021D12A4: .4byte 0x00001D04
_021D12A8: .4byte 0x0000177C
_021D12AC: .4byte 0x00001A04
	thumb_func_end ov21_021D10B8

	thumb_func_start ov21_021D12B0
ov21_021D12B0: @ 0x021D12B0
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021D1E74
	adds r0, r4, #0
	bl ov21_021D1E94
	bl ov21_021D1F10
	pop {r4, pc}
	thumb_func_end ov21_021D12B0

	thumb_func_start ov21_021D12C4
ov21_021D12C4: @ 0x021D12C4
	push {r3, lr}
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl ov21_021D1F84
	pop {r3, pc}
	thumb_func_end ov21_021D12C4

	thumb_func_start ov21_021D12D8
ov21_021D12D8: @ 0x021D12D8
	push {r3, lr}
	ldr r1, _021D12E8 @ =0x0000177C
	adds r0, r0, r1
	bl ov21_021D214C
	bl FUN_0200A858
	pop {r3, pc}
	.align 2, 0
_021D12E8: .4byte 0x0000177C
	thumb_func_end ov21_021D12D8

	thumb_func_start ov21_021D12EC
ov21_021D12EC: @ 0x021D12EC
	push {r4, lr}
	adds r4, r0, #0
	bne _021D12F6
	bl FUN_02022974
_021D12F6:
	movs r0, #0x1d
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D12EC

	thumb_func_start ov21_021D1300
ov21_021D1300: @ 0x021D1300
	push {r4, lr}
	adds r4, r0, #0
	bne _021D130A
	bl FUN_02022974
_021D130A:
	ldr r0, _021D1310 @ =0x00001D04
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D1310: .4byte 0x00001D04
	thumb_func_end ov21_021D1300

	thumb_func_start ov21_021D1314
ov21_021D1314: @ 0x021D1314
	push {r4, lr}
	adds r4, r0, #0
	bne _021D131E
	bl FUN_02022974
_021D131E:
	ldr r0, _021D1324 @ =0x00001D08
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D1324: .4byte 0x00001D08
	thumb_func_end ov21_021D1314

	thumb_func_start ov21_021D1328
ov21_021D1328: @ 0x021D1328
	push {r4, lr}
	adds r4, r0, #0
	bne _021D1332
	bl FUN_02022974
_021D1332:
	ldr r0, _021D1338 @ =0x00001D0C
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D1338: .4byte 0x00001D0C
	thumb_func_end ov21_021D1328

	thumb_func_start ov21_021D133C
ov21_021D133C: @ 0x021D133C
	push {r4, lr}
	adds r4, r0, #0
	bne _021D1346
	bl FUN_02022974
_021D1346:
	ldr r0, _021D134C @ =0x00001A0C
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D134C: .4byte 0x00001A0C
	thumb_func_end ov21_021D133C

	thumb_func_start ov21_021D1350
ov21_021D1350: @ 0x021D1350
	push {r4, lr}
	adds r4, r0, #0
	bne _021D135A
	bl FUN_02022974
_021D135A:
	ldr r0, _021D1360 @ =0x00001A10
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D1360: .4byte 0x00001A10
	thumb_func_end ov21_021D1350

	thumb_func_start ov21_021D1364
ov21_021D1364: @ 0x021D1364
	push {r4, lr}
	adds r4, r0, #0
	bne _021D136E
	bl FUN_02022974
_021D136E:
	ldr r0, _021D1374 @ =0x00001A14
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D1374: .4byte 0x00001A14
	thumb_func_end ov21_021D1364

	thumb_func_start ov21_021D1378
ov21_021D1378: @ 0x021D1378
	push {r4, lr}
	adds r4, r0, #0
	bne _021D1382
	bl FUN_02022974
_021D1382:
	ldr r0, _021D1388 @ =0x00001A18
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D1388: .4byte 0x00001A18
	thumb_func_end ov21_021D1378

	thumb_func_start ov21_021D138C
ov21_021D138C: @ 0x021D138C
	push {r4, lr}
	adds r4, r0, #0
	bne _021D1396
	bl FUN_02022974
_021D1396:
	ldr r0, _021D139C @ =0x000019FC
	adds r0, r4, r0
	pop {r4, pc}
	.align 2, 0
_021D139C: .4byte 0x000019FC
	thumb_func_end ov21_021D138C

	thumb_func_start ov21_021D13A0
ov21_021D13A0: @ 0x021D13A0
	push {r4, lr}
	adds r4, r0, #0
	bne _021D13AA
	bl FUN_02022974
_021D13AA:
	movs r0, #0x1a
	lsls r0, r0, #8
	adds r0, r4, r0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D13A0

	thumb_func_start ov21_021D13B4
ov21_021D13B4: @ 0x021D13B4
	push {r4, lr}
	adds r4, r0, #0
	bne _021D13BE
	bl FUN_02022974
_021D13BE:
	ldr r0, _021D13C4 @ =0x00001A04
	adds r0, r4, r0
	pop {r4, pc}
	.align 2, 0
_021D13C4: .4byte 0x00001A04
	thumb_func_end ov21_021D13B4

	thumb_func_start ov21_021D13C8
ov21_021D13C8: @ 0x021D13C8
	push {r4, lr}
	adds r4, r0, #0
	bne _021D13D2
	bl FUN_02022974
_021D13D2:
	ldr r0, _021D13D8 @ =0x00001A08
	adds r0, r4, r0
	pop {r4, pc}
	.align 2, 0
_021D13D8: .4byte 0x00001A08
	thumb_func_end ov21_021D13C8

	thumb_func_start ov21_021D13DC
ov21_021D13DC: @ 0x021D13DC
	push {r4, lr}
	adds r4, r0, #0
	bne _021D13E6
	bl FUN_02022974
_021D13E6:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D13DC

	thumb_func_start ov21_021D13EC
ov21_021D13EC: @ 0x021D13EC
	push {r4, lr}
	adds r4, r0, #0
	bne _021D13F6
	bl FUN_02022974
_021D13F6:
	adds r4, #0xc
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov21_021D13EC

	thumb_func_start ov21_021D13FC
ov21_021D13FC: @ 0x021D13FC
	push {r4, lr}
	adds r4, r0, #0
	bne _021D1406
	bl FUN_02022974
_021D1406:
	ldr r0, _021D140C @ =0x0000177C
	adds r0, r4, r0
	pop {r4, pc}
	.align 2, 0
_021D140C: .4byte 0x0000177C
	thumb_func_end ov21_021D13FC

	thumb_func_start ov21_021D1410
ov21_021D1410: @ 0x021D1410
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #0xa
	blt _021D141E
	bl FUN_02022974
_021D141E:
	ldr r0, _021D142C @ =0x00001A30
	adds r1, r5, r0
	movs r0, #0x28
	muls r0, r4, r0
	adds r0, r1, r0
	pop {r3, r4, r5, pc}
	nop
_021D142C: .4byte 0x00001A30
	thumb_func_end ov21_021D1410

	thumb_func_start ov21_021D1430
ov21_021D1430: @ 0x021D1430
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #8
	blt _021D143E
	bl FUN_02022974
_021D143E:
	movs r0, #0x6f
	lsls r0, r0, #6
	adds r1, r5, r0
	movs r0, #0x28
	muls r0, r4, r0
	adds r0, r1, r0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D1430

	thumb_func_start ov21_021D144C
ov21_021D144C: @ 0x021D144C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #4
	bhi _021D1492
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D1460: @ jump table
	.2byte _021D146A - _021D1460 - 2 @ case 0
	.2byte _021D147A - _021D1460 - 2 @ case 1
	.2byte _021D1472 - _021D1460 - 2 @ case 2
	.2byte _021D1482 - _021D1460 - 2 @ case 3
	.2byte _021D1482 - _021D1460 - 2 @ case 4
_021D146A:
	movs r1, #1
	bl FUN_02021E50
	pop {r4, pc}
_021D1472:
	movs r1, #2
	bl FUN_02021E50
	pop {r4, pc}
_021D147A:
	movs r1, #3
	bl FUN_02021E50
	pop {r4, pc}
_021D1482:
	bl FUN_02021E74
	cmp r0, #0
	beq _021D1492
	ldr r1, _021D1494 @ =0xFFFFE000
	adds r0, r4, #0
	bl FUN_02021E2C
_021D1492:
	pop {r4, pc}
	.align 2, 0
_021D1494: .4byte 0xFFFFE000
	thumb_func_end ov21_021D144C

	thumb_func_start ov21_021D1498
ov21_021D1498: @ 0x021D1498
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r2, #0
	bl FUN_02021E74
	cmp r0, #3
	bhi _021D1520
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D14B4: @ jump table
	.2byte _021D14BC - _021D14B4 - 2 @ case 0
	.2byte _021D14D6 - _021D14B4 - 2 @ case 1
	.2byte _021D14F0 - _021D14B4 - 2 @ case 2
	.2byte _021D150A - _021D14B4 - 2 @ case 3
_021D14BC:
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020129A4
	str r5, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	adds r2, r5, #0
	bl FUN_020128C4
	add sp, #8
	pop {r3, r4, r5, pc}
_021D14D6:
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020129A4
	subs r2, r5, #2
	str r2, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	bl FUN_020128C4
	add sp, #8
	pop {r3, r4, r5, pc}
_021D14F0:
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020129A4
	subs r2, r5, #4
	str r2, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	bl FUN_020128C4
	add sp, #8
	pop {r3, r4, r5, pc}
_021D150A:
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020129A4
	subs r2, r5, #2
	str r2, [sp]
	ldr r0, [r4]
	ldr r1, [sp, #4]
	bl FUN_020128C4
_021D1520:
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D1498

	thumb_func_start ov21_021D1524
ov21_021D1524: @ 0x021D1524
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	bl ov21_021D1498
	adds r0, r5, #0
	bl FUN_02021E74
	cmp r0, #2
	ldr r0, [r4]
	bge _021D1544
	adds r1, r6, #0
	bl FUN_02012AC0
	pop {r4, r5, r6, pc}
_021D1544:
	ldr r1, [sp, #0x10]
	bl FUN_02012AC0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D1524

	thumb_func_start ov21_021D154C
ov21_021D154C: @ 0x021D154C
	strb r1, [r0]
	strb r2, [r0, #1]
	ldr r1, [sp]
	strb r3, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov21_021D154C

	thumb_func_start ov21_021D1558
ov21_021D1558: @ 0x021D1558
	str r1, [r0]
	str r2, [r0, #8]
	ldr r2, [sp]
	ldr r1, [sp, #4]
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	subs r1, r1, r2
	str r1, [r0, #0x14]
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	str r2, [r0, #0x10]
	subs r1, r1, r2
	str r1, [r0, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [r0, #0x20]
	movs r1, #0
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov21_021D1558

	thumb_func_start ov21_021D157C
ov21_021D157C: @ 0x021D157C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	bgt _021D1648
	movs r2, #0
	str r2, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0x10
	str r0, [sp, #0xc]
	ldr r1, [r5, #8]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019CB8
	ldr r1, [r5, #0x14]
	ldr r6, [r5, #0x1c]
	adds r0, r1, #0
	ldr r4, [r5, #0x20]
	muls r0, r6, r0
	adds r1, r4, #0
	blx FUN_020E1F6C
	ldr r1, [r5, #0x18]
	adds r7, r0, #0
	adds r0, r1, #0
	muls r0, r6, r0
	adds r1, r4, #0
	blx FUN_020E1F6C
	ldr r1, [r5, #0xc]
	ldr r2, [r5, #0x10]
	adds r1, r7, r1
	adds r4, r0, r2
	cmp r1, #0
	ble _021D1600
	movs r0, #0x20
	lsls r2, r1, #0x18
	str r0, [sp]
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	ldr r2, [r5, #4]
	subs r1, r0, r1
	adds r2, #0xc
	str r2, [sp, #8]
	movs r2, #0
	lsls r1, r1, #0x18
	str r2, [sp, #0xc]
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r1, [r5, #8]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_020198E8
_021D1600:
	movs r0, #0x20
	subs r3, r0, r4
	cmp r3, #0
	ble _021D1630
	lsls r1, r4, #0x18
	str r0, [sp]
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [r5, #4]
	movs r2, #0
	adds r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r1, [r5, #8]
	lsls r3, r3, #0x18
	lsls r1, r1, #0x18
	ldr r0, [r5]
	lsrs r1, r1, #0x18
	lsrs r3, r3, #0x18
	bl FUN_020198E8
_021D1630:
	ldr r1, [r5, #8]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
	ldr r0, [r5, #0x1c]
	add sp, #0x1c
	adds r0, r0, #1
	str r0, [r5, #0x1c]
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_021D1648:
	movs r0, #1
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D157C

	thumb_func_start ov21_021D1650
ov21_021D1650: @ 0x021D1650
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r6, r0, #0
	adds r4, r3, #0
	str r2, [sp, #0x10]
	cmp r5, #0
	ble _021D167A
	movs r0, #4
	adds r1, r4, #0
	bl FUN_02023790
	movs r1, #1
	str r1, [sp]
	adds r1, r5, #0
	movs r2, #3
	movs r3, #2
	adds r7, r0, #0
	bl FUN_020238A0
	b _021D1684
_021D167A:
	movs r0, #0x64
	adds r1, r4, #0
	bl ov21_021D1CE0
	adds r7, r0, #0
_021D1684:
	ldr r0, [sp, #0x10]
	movs r1, #2
	adds r2, r4, #0
	bl ov21_021D561C
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D16D4 @ =0x00030201
	adds r2, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #2
	movs r3, #0x16
	bl FUN_0201D78C
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D16D4 @ =0x00030201
	adds r2, r4, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #2
	movs r3, #0x31
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl ov21_021D5600
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D16D4: .4byte 0x00030201
	thumb_func_end ov21_021D1650

	thumb_func_start ov21_021D16D8
ov21_021D16D8: @ 0x021D16D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov21_021D36D8
	cmp r0, #0
	bne _021D16FA
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021D172C
	pop {r4, r5, r6, pc}
_021D16FA:
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021D170C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D16D8

	thumb_func_start ov21_021D170C
ov21_021D170C: @ 0x021D170C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	movs r1, #0xf
	movs r2, #2
	bl ov21_021D4D6C
	adds r1, r6, #0
	adds r2, r6, #0
	adds r3, r5, #0
	adds r4, r0, #0
	bl ov21_021D1650
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D170C

	thumb_func_start ov21_021D172C
ov21_021D172C: @ 0x021D172C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r2, #0
	adds r6, r0, #0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	adds r7, r1, #0
	bl FUN_020775A4
	ldr r1, _021D1774 @ =0x00000179
	adds r4, r0, #0
	cmp r5, r1
	beq _021D1758
	adds r0, r1, #1
	cmp r5, r0
	beq _021D1758
	adds r0, r1, #2
	cmp r5, r0
	beq _021D1758
	cmp r4, #0
	bgt _021D1758
	bl FUN_02022974
_021D1758:
	adds r0, r6, #0
	movs r1, #0xf
	movs r2, #2
	bl ov21_021D4D6C
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r7, #0
	adds r6, r0, #0
	bl ov21_021D1650
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1774: .4byte 0x00000179
	thumb_func_end ov21_021D172C

	thumb_func_start ov21_021D1778
ov21_021D1778: @ 0x021D1778
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r7, r1, #0
	adds r5, r0, #0
	adds r4, r3, #0
	adds r0, r7, #0
	str r2, [sp, #4]
	bl ov21_021D36D8
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov21_021D37DC
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov21_021D22A8
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov21_021D22C4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	add r1, sp, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x14]
	adds r0, r6, #0
	bl FUN_02021C50
	adds r0, r6, #0
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, [r4, #4]
	cmp r0, #2
	bne _021D17E4
	movs r0, #0x36
	ldr r1, [sp, #0x58]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	add r1, sp, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	bl FUN_02021C50
	ldr r0, [sp, #0xc]
	movs r1, #1
	bl FUN_02021CAC
	b _021D17EC
_021D17E4:
	ldr r0, [sp, #0xc]
	movs r1, #0
	bl FUN_02021CAC
_021D17EC:
	adds r0, r5, #0
	movs r1, #1
	bl ov21_021D2344
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	str r1, [sp, #0x1c]
	movs r1, #0
	bl FUN_0200A72C
	str r0, [sp, #0x24]
	movs r0, #0x3f
	mvns r0, r0
	str r0, [sp, #0x2c]
	adds r0, #0x38
	str r0, [sp, #0x30]
	movs r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r6, [sp, #0x28]
	str r0, [sp, #0x40]
	ldr r2, [sp, #4]
	ldr r3, [r4]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov21_021D16D8
	adds r6, r0, #0
	ldr r0, [sp, #8]
	str r6, [sp, #0x20]
	str r0, [sp]
	ldr r3, [r4]
	adds r0, r5, #0
	add r1, sp, #0x1c
	movs r2, #0
	bl ov21_021D22E0
	adds r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D1778

	thumb_func_start ov21_021D1848
ov21_021D1848: @ 0x021D1848
	movs r3, #0x6d
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r3, _021D1854 @ =ov21_021D1858
	bx r3
	nop
_021D1854: .4byte ov21_021D1858
	thumb_func_end ov21_021D1848

	thumb_func_start ov21_021D1858
ov21_021D1858: @ 0x021D1858
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	lsls r0, r1, #0xc
	str r0, [sp]
	lsls r0, r2, #0xc
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0
	bl FUN_02021C50
	movs r0, #0x36
	ldr r1, [sp]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r0, [r4, #8]
	ldr r0, [r0]
	cmp r0, #0
	beq _021D188C
	bl FUN_02012938
_021D188C:
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov21_021D1858

	thumb_func_start ov21_021D1890
ov21_021D1890: @ 0x021D1890
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r2, #0
	ldr r2, _021D19D4 @ =0x000001A6
	adds r7, r3, #0
	ldr r4, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	cmp r5, r2
	bgt _021D18D8
	bge _021D1944
	adds r6, r2, #0
	subs r6, #0x24
	cmp r5, r6
	bgt _021D18B8
	subs r2, #0x24
	cmp r5, r2
	bge _021D196C
	cmp r5, #0xc9
	beq _021D1908
	b _021D19BC
_021D18B8:
	adds r6, r2, #0
	subs r6, #9
	cmp r5, r6
	bgt _021D19BC
	adds r6, r2, #0
	subs r6, #0xa
	cmp r5, r6
	blt _021D19BC
	adds r6, r2, #0
	subs r6, #0xa
	cmp r5, r6
	beq _021D191C
	subs r2, #9
	cmp r5, r2
	beq _021D1930
	b _021D19BC
_021D18D8:
	adds r6, r2, #0
	adds r6, #0x39
	cmp r5, r6
	bgt _021D18F0
	adds r6, r2, #0
	adds r6, #0x39
	cmp r5, r6
	bge _021D19A8
	adds r2, r2, #1
	cmp r5, r2
	beq _021D1958
	b _021D19BC
_021D18F0:
	adds r6, r2, #0
	adds r6, #0x41
	cmp r5, r6
	bgt _021D1900
	adds r2, #0x41
	cmp r5, r2
	beq _021D1994
	b _021D19BC
_021D1900:
	adds r2, #0x46
	cmp r5, r2
	beq _021D1980
	b _021D19BC
_021D1908:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1A34
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D191C:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1B08
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1930:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1B4C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1944:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1A78
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1958:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1AC0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D196C:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1B94
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1980:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1BD8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1994:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1C30
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D19A8:
	str r3, [sp]
	movs r2, #0
	str r2, [sp, #4]
	str r2, [sp, #8]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D1C88
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D19BC:
	str r4, [sp]
	str r3, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	adds r2, r5, #0
	adds r3, r7, #0
	bl ov21_021D19D8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D19D4: .4byte 0x000001A6
	thumb_func_end ov21_021D1890

	thumb_func_start ov21_021D19D8
ov21_021D19D8: @ 0x021D19D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r0, _021D1A30 @ =0x00000147
	adds r5, r2, #0
	adds r6, r1, #0
	movs r4, #0
	str r3, [sp, #0x18]
	cmp r5, r0
	bne _021D19F4
	adds r0, r6, #0
	bl ov21_021D33F8
	adds r4, r0, #0
_021D19F4:
	ldr r2, [sp, #0x38]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021D334C
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _021D1A28
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x18]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x3c]
	adds r1, r5, #0
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r2, r6, #0
	bl ov21_021D2188
_021D1A28:
	adds r0, r6, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D1A30: .4byte 0x00000147
	thumb_func_end ov21_021D19D8

	thumb_func_start ov21_021D1A34
ov21_021D1A34: @ 0x021D1A34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r0, r1, #0
	ldr r1, [sp, #0x34]
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D335C
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D1A72
	movs r1, #0
	lsls r0, r4, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	movs r1, #0xc9
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl ov21_021D2188
_021D1A72:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D1A34

	thumb_func_start ov21_021D1A78
ov21_021D1A78: @ 0x021D1A78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r0, r1, #0
	ldr r1, [sp, #0x34]
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D3374
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D1AB4
	movs r2, #0
	lsls r0, r4, #0x18
	str r2, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1ABC @ =0x000001A6
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r3, r7, #0
	bl ov21_021D2188
_021D1AB4:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1ABC: .4byte 0x000001A6
	thumb_func_end ov21_021D1A78

	thumb_func_start ov21_021D1AC0
ov21_021D1AC0: @ 0x021D1AC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r0, r1, #0
	ldr r1, [sp, #0x34]
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D338C
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D1AFC
	movs r2, #0
	lsls r0, r4, #0x18
	str r2, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1B04 @ =0x000001A7
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r3, r7, #0
	bl ov21_021D2188
_021D1AFC:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1B04: .4byte 0x000001A7
	thumb_func_end ov21_021D1AC0

	thumb_func_start ov21_021D1B08
ov21_021D1B08: @ 0x021D1B08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r0, r1, #0
	ldr r1, [sp, #0x34]
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D33A4
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D1B46
	movs r2, #0
	lsls r0, r4, #0x18
	str r2, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r1, #0x67
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	lsls r1, r1, #2
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r3, r7, #0
	bl ov21_021D2188
_021D1B46:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D1B08

	thumb_func_start ov21_021D1B4C
ov21_021D1B4C: @ 0x021D1B4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r0, r1, #0
	ldr r1, [sp, #0x34]
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D33BC
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D1B8A
	movs r1, #0
	lsls r0, r4, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1B90 @ =0x0000019D
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl ov21_021D2188
_021D1B8A:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1B90: .4byte 0x0000019D
	thumb_func_end ov21_021D1B4C

	thumb_func_start ov21_021D1B94
ov21_021D1B94: @ 0x021D1B94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	adds r0, r1, #0
	ldr r1, [sp, #0x34]
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D3404
	adds r4, r0, #0
	cmp r4, #0xf
	beq _021D1BCE
	movs r1, #0
	lsls r0, r4, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1BD4 @ =0x00000182
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl ov21_021D2188
_021D1BCE:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D1BD4: .4byte 0x00000182
	thumb_func_end ov21_021D1B94

	thumb_func_start ov21_021D1BD8
ov21_021D1BD8: @ 0x021D1BD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	movs r1, #0x7b
	adds r6, r0, #0
	adds r0, r4, #0
	lsls r1, r1, #2
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D341C
	ldr r2, [sp, #0x34]
	cmp r0, r2
	ble _021D1C26
	movs r1, #0x7b
	adds r0, r4, #0
	lsls r1, r1, #2
	bl ov21_021D3410
	adds r4, r0, #0
	movs r1, #0
	lsls r0, r4, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x7b
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	lsls r1, r1, #2
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl ov21_021D2188
	b _021D1C2A
_021D1C26:
	movs r4, #0
	mvns r4, r4
_021D1C2A:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D1BD8

	thumb_func_start ov21_021D1C30
ov21_021D1C30: @ 0x021D1C30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r1, _021D1C84 @ =0x000001E7
	adds r0, r4, #0
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D341C
	ldr r2, [sp, #0x34]
	cmp r0, r2
	ble _021D1C78
	ldr r1, _021D1C84 @ =0x000001E7
	adds r0, r4, #0
	bl ov21_021D3410
	adds r4, r0, #0
	movs r1, #0
	lsls r0, r4, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1C84 @ =0x000001E7
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl ov21_021D2188
	b _021D1C7C
_021D1C78:
	movs r4, #0
	mvns r4, r4
_021D1C7C:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1C84: .4byte 0x000001E7
	thumb_func_end ov21_021D1C30

	thumb_func_start ov21_021D1C88
ov21_021D1C88: @ 0x021D1C88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r1, _021D1CDC @ =0x000001DF
	adds r0, r4, #0
	adds r7, r2, #0
	adds r5, r3, #0
	bl ov21_021D341C
	ldr r2, [sp, #0x34]
	cmp r0, r2
	ble _021D1CD0
	ldr r1, _021D1CDC @ =0x000001DF
	adds r0, r4, #0
	bl ov21_021D3410
	adds r4, r0, #0
	movs r1, #0
	lsls r0, r4, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x30]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, _021D1CDC @ =0x000001DF
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r2, #1
	adds r3, r7, #0
	bl ov21_021D2188
	b _021D1CD4
_021D1CD0:
	movs r4, #0
	mvns r4, r4
_021D1CD4:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1CDC: .4byte 0x000001DF
	thumb_func_end ov21_021D1C88

	thumb_func_start ov21_021D1CE0
ov21_021D1CE0: @ 0x021D1CE0
	push {r3, r4, r5, lr}
	ldr r2, _021D1D04 @ =0x000002B9
	adds r4, r0, #0
	adds r3, r1, #0
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	adds r5, r0, #0
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0200B190
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D1D04: .4byte 0x000002B9
	thumb_func_end ov21_021D1CE0

	thumb_func_start ov21_021D1D08
ov21_021D1D08: @ 0x021D1D08
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _021D1E44 @ =0x00001A1C
	adds r0, r6, r0
	bl ov21_021D4660
	ldr r0, _021D1E48 @ =0x00001A0C
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D20
	bl FUN_02022974
_021D1D20:
	ldr r0, _021D1E48 @ =0x00001A0C
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, _021D1E4C @ =0x00001A10
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D34
	bl FUN_02022974
_021D1D34:
	ldr r0, _021D1E4C @ =0x00001A10
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, _021D1E50 @ =0x00001A14
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D48
	bl FUN_02022974
_021D1D48:
	ldr r0, _021D1E50 @ =0x00001A14
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, _021D1E54 @ =0x00001A18
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D5C
	bl FUN_02022974
_021D1D5C:
	ldr r0, _021D1E54 @ =0x00001A18
	ldr r0, [r6, r0]
	bl FUN_020181C4
	movs r0, #0x1d
	lsls r0, r0, #8
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D72
	bl FUN_02022974
_021D1D72:
	movs r0, #0x1d
	lsls r0, r0, #8
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, _021D1E58 @ =0x00001D04
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D88
	bl FUN_02022974
_021D1D88:
	ldr r0, _021D1E58 @ =0x00001D04
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, _021D1E5C @ =0x00001D08
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1D9C
	bl FUN_02022974
_021D1D9C:
	ldr r0, _021D1E5C @ =0x00001D08
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, _021D1E60 @ =0x00001D0C
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D1DB0
	bl FUN_02022974
_021D1DB0:
	ldr r0, _021D1E60 @ =0x00001D0C
	ldr r0, [r6, r0]
	bl FUN_020181C4
	ldr r0, _021D1E64 @ =0x00001A30
	ldr r4, _021D1E68 @ =0x021E9B9C
	movs r7, #0
	adds r5, r6, r0
_021D1DC0:
	ldr r1, [r4]
	cmp r1, #0
	beq _021D1DCA
	adds r0, r5, #0
	blx r1
_021D1DCA:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, #0x28
	cmp r7, #0xa
	blt _021D1DC0
	movs r0, #0x6f
	lsls r0, r0, #6
	ldr r4, _021D1E6C @ =0x021E9B54
	movs r7, #0
	adds r5, r6, r0
_021D1DDE:
	ldr r1, [r4]
	cmp r1, #0
	beq _021D1DE8
	adds r0, r5, #0
	blx r1
_021D1DE8:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, #0x28
	cmp r7, #8
	blt _021D1DDE
	adds r0, r6, #0
	adds r0, #0xc
	bl ov21_021D3440
	adds r1, r0, #0
	ldr r0, [r6, #8]
	bl FUN_0209ACE8
	adds r0, r6, #0
	adds r0, #0xc
	movs r1, #1
	bl ov21_021D36A4
	cmp r0, #1
	bne _021D1E22
	adds r0, r6, #0
	adds r0, #0xc
	bl ov21_021D3458
	adds r1, r0, #0
	ldr r0, [r6, #8]
	bl FUN_0209ACF0
	b _021D1E2A
_021D1E22:
	ldr r0, [r6, #8]
	movs r1, #2
	bl FUN_0209ACF0
_021D1E2A:
	adds r0, r6, #0
	adds r0, #0xc
	bl ov21_021D3320
	ldr r0, _021D1E70 @ =0x0000177C
	adds r0, r6, r0
	bl ov21_021D2098
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1E44: .4byte 0x00001A1C
_021D1E48: .4byte 0x00001A0C
_021D1E4C: .4byte 0x00001A10
_021D1E50: .4byte 0x00001A14
_021D1E54: .4byte 0x00001A18
_021D1E58: .4byte 0x00001D04
_021D1E5C: .4byte 0x00001D08
_021D1E60: .4byte 0x00001D0C
_021D1E64: .4byte 0x00001A30
_021D1E68: .4byte 0x021E9B9C
_021D1E6C: .4byte 0x021E9B54
_021D1E70: .4byte 0x0000177C
	thumb_func_end ov21_021D1D08

	thumb_func_start ov21_021D1E74
ov21_021D1E74: @ 0x021D1E74
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1E90 @ =0x021E9BC4
	add r3, sp, #0
	movs r2, #5
_021D1E7E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1E7E
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D1E90: .4byte 0x021E9BC4
	thumb_func_end ov21_021D1E74

	thumb_func_start ov21_021D1E94
ov21_021D1E94: @ 0x021D1E94
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r0, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	adds r2, r0, #0
	str r4, [sp, #0x10]
	bl FUN_0200A784
	ldr r5, _021D1EE4 @ =0x021E9B24
	add r3, sp, #0x14
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	ldr r1, _021D1EE8 @ =0x00200010
	movs r2, #0x10
	str r4, [sp, #0x20]
	bl FUN_0201E88C
	movs r0, #0x20
	adds r1, r4, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_021D1EE4: .4byte 0x021E9B24
_021D1EE8: .4byte 0x00200010
	thumb_func_end ov21_021D1E94

	thumb_func_start ov21_021D1EEC
ov21_021D1EEC: @ 0x021D1EEC
	push {r4, lr}
	ldr r1, _021D1F08 @ =0x00001A0C
	adds r4, r0, #0
	ldr r0, [r4, r1]
	adds r1, #0x10
	adds r1, r4, r1
	movs r2, #1
	bl ov21_021D426C
	ldr r0, _021D1F0C @ =0x000019FC
	movs r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_021D1F08: .4byte 0x00001A0C
_021D1F0C: .4byte 0x000019FC
	thumb_func_end ov21_021D1EEC

	thumb_func_start ov21_021D1F10
ov21_021D1F10: @ 0x021D1F10
	push {r3, lr}
	blx FUN_020B28CC
	blx FUN_020BFB4C
	ldr r0, _021D1F70 @ =0x04000060
	ldr r2, _021D1F74 @ =0xFFFFCFFD
	ldrh r1, [r0]
	ands r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	adds r1, r2, #2
	ands r3, r1
	movs r1, #0x10
	orrs r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _021D1F78 @ =0x0000CFFB
	ands r1, r3
	strh r1, [r0]
	adds r1, r2, #2
	ldrh r3, [r0]
	lsrs r2, r2, #0x11
	ands r3, r1
	movs r1, #8
	orrs r1, r3
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _021D1F7C @ =0x04000540
	movs r0, #2
	str r0, [r1]
	ldr r0, _021D1F80 @ =0xBFFF0000
	str r0, [r1, #0x40]
	movs r0, #1
	adds r1, r0, #0
	blx FUN_020A5A94
	movs r0, #1
	lsls r0, r0, #0xe
	movs r1, #1
	blx FUN_020A5D88
	pop {r3, pc}
	.align 2, 0
_021D1F70: .4byte 0x04000060
_021D1F74: .4byte 0xFFFFCFFD
_021D1F78: .4byte 0x0000CFFB
_021D1F7C: .4byte 0x04000540
_021D1F80: .4byte 0xBFFF0000
	thumb_func_end ov21_021D1F10

	thumb_func_start ov21_021D1F84
ov21_021D1F84: @ 0x021D1F84
	push {r3, lr}
	blx FUN_020A5B1C
	blx FUN_020A5F50
	pop {r3, pc}
	thumb_func_end ov21_021D1F84

	thumb_func_start ov21_021D1F90
ov21_021D1F90: @ 0x021D1F90
	movs r0, #0x46
	bx lr
	thumb_func_end ov21_021D1F90

	thumb_func_start ov21_021D1F94
ov21_021D1F94: @ 0x021D1F94
	adds r0, r0, #3
	bx lr
	thumb_func_end ov21_021D1F94

	thumb_func_start ov21_021D1F98
ov21_021D1F98: @ 0x021D1F98
	movs r0, #0
	bx lr
	thumb_func_end ov21_021D1F98

	thumb_func_start ov21_021D1F9C
ov21_021D1F9C: @ 0x021D1F9C
	movs r0, #2
	bx lr
	thumb_func_end ov21_021D1F9C

	thumb_func_start ov21_021D1FA0
ov21_021D1FA0: @ 0x021D1FA0
	movs r0, #1
	bx lr
	thumb_func_end ov21_021D1FA0

	thumb_func_start ov21_021D1FA4
ov21_021D1FA4: @ 0x021D1FA4
	push {r3, r4, r5, lr}
	sub sp, #0x20
	adds r5, r0, #0
	movs r0, #0x45
	adds r4, r1, #0
	bl FUN_02006C24
	movs r1, #0x9f
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_02018340
	str r0, [r5]
	movs r1, #1
	movs r0, #0
	str r0, [sp, #0x14]
	str r1, [sp, #0x10]
	str r1, [sp, #0x18]
	str r1, [sp, #0x1c]
	add r0, sp, #0x10
	bl FUN_02018368
	ldr r0, [r5]
	adds r1, r4, #0
	bl ov21_021D2830
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D29D0
	adds r1, r5, #0
	movs r0, #0x80
	adds r1, #0x14
	adds r2, r4, #0
	bl FUN_020095C4
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x20
	movs r1, #0
	adds r2, r4, #0
	bl FUN_02009714
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0x20
	movs r1, #1
	adds r2, r4, #0
	bl FUN_02009714
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x20
	movs r1, #2
	adds r2, r4, #0
	bl FUN_02009714
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x20
	movs r1, #3
	adds r2, r4, #0
	bl FUN_02009714
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp]
	ldr r0, [r5]
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	add r0, sp, #0
	str r4, [sp, #0xc]
	bl ov21_021D4C0C
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #2
	adds r1, r4, #0
	bl FUN_02002BB8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D2A0C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D2AE8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D2C8C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D2E70
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D2F5C
	add sp, #0x20
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D1FA4

	thumb_func_start ov21_021D2098
ov21_021D2098: @ 0x021D2098
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021D2D4C
	adds r0, r4, #0
	bl ov21_021D2C10
	adds r0, r4, #0
	bl ov21_021D300C
	adds r0, r4, #0
	bl ov21_021D2F14
	adds r0, r4, #0
	bl ov21_021D2A00
	ldr r0, [r4]
	bl ov21_021D299C
	ldr r0, [r4]
	bl FUN_020181C4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021964
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_02009754
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02009754
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02009754
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02009754
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov21_021D4C6C
	movs r0, #2
	bl FUN_02002C60
	adds r0, r4, #0
	bl ov21_021D2AB4
	movs r0, #0x9f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	movs r2, #0xa
	adds r0, r4, #0
	movs r1, #0
	lsls r2, r2, #6
	blx FUN_020D5124
	pop {r4, pc}
	thumb_func_end ov21_021D2098

	thumb_func_start ov21_021D2124
ov21_021D2124: @ 0x021D2124
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020219F8
	blx FUN_020A73C0
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02007768
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020150EC
	pop {r4, pc}
	thumb_func_end ov21_021D2124

	thumb_func_start ov21_021D214C
ov21_021D214C: @ 0x021D214C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0201C2B8
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02008A94
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D214C

	thumb_func_start ov21_021D2164
ov21_021D2164: @ 0x021D2164
	push {r3, lr}
	movs r3, #0
	bl ov21_021D222C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021D2164

	thumb_func_start ov21_021D2170
ov21_021D2170: @ 0x021D2170
	ldr r3, _021D2178 @ =ov21_021D2274
	movs r1, #0
	bx r3
	nop
_021D2178: .4byte ov21_021D2274
	thumb_func_end ov21_021D2170

	thumb_func_start ov21_021D217C
ov21_021D217C: @ 0x021D217C
	ldr r3, _021D2184 @ =ov21_021D2280
	movs r2, #0
	bx r3
	nop
_021D2184: .4byte ov21_021D2280
	thumb_func_end ov21_021D217C

	thumb_func_start ov21_021D2188
ov21_021D2188: @ 0x021D2188
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [sp, #0x10]
	adds r7, r0, r1
	ldr r0, [sp, #0x54]
	adds r4, r2, #0
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [r7, r0]
	adds r6, r3, #0
	cmp r0, #0
	beq _021D21AA
	bl FUN_02007DC8
_021D21AA:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _021D21BE
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl FUN_02075DAC
	adds r4, r0, #0
_021D21BE:
	ldr r0, [sp, #0x40]
	lsls r1, r5, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	add r0, sp, #0x30
	ldrb r0, [r0, #0x14]
	lsls r2, r4, #0x18
	lsls r3, r6, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	lsrs r1, r1, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02075FB4
	cmp r6, #0
	bne _021D2202
	ldr r0, [sp, #0x48]
	lsls r1, r4, #0x18
	str r0, [sp]
	add r3, sp, #0x30
	lsls r0, r5, #0x10
	lsls r2, r6, #0x18
	ldrb r3, [r3, #0x14]
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	bl FUN_02076648
	adds r3, r0, #0
	b _021D2204
_021D2202:
	movs r3, #0
_021D2204:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r1, #0x55
	ldr r4, [sp, #0x50]
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r2, [sp, #0x4c]
	add r1, sp, #0x18
	adds r3, r4, r3
	bl FUN_02007C34
	ldr r1, [sp, #0x14]
	str r0, [r7, r1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D2188

	thumb_func_start ov21_021D222C
ov21_021D222C: @ 0x021D222C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0x56
	lsls r1, r1, #2
	adds r5, r0, r1
	lsls r4, r3, #2
	adds r7, r2, #0
	ldr r0, [r5, r4]
	movs r1, #0
	adds r2, r6, #0
	bl FUN_02007DEC
	ldr r0, [r5, r4]
	movs r1, #1
	adds r2, r7, #0
	bl FUN_02007DEC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D222C

	thumb_func_start ov21_021D2250
ov21_021D2250: @ 0x021D2250
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0x56
	lsls r1, r1, #2
	adds r5, r0, r1
	lsls r4, r3, #2
	ldr r0, [r5, r4]
	movs r1, #0
	adds r7, r2, #0
	bl FUN_020080C0
	str r0, [r6]
	ldr r0, [r5, r4]
	movs r1, #1
	bl FUN_020080C0
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D2250

	thumb_func_start ov21_021D2274
ov21_021D2274: @ 0x021D2274
	lsls r1, r1, #2
	adds r1, r0, r1
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	thumb_func_end ov21_021D2274

	thumb_func_start ov21_021D2280
ov21_021D2280: @ 0x021D2280
	push {r3, lr}
	lsls r2, r2, #2
	adds r2, r0, r2
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _021D22A6
	cmp r1, #1
	bne _021D229E
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	pop {r3, pc}
_021D229E:
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
_021D22A6:
	pop {r3, pc}
	thumb_func_end ov21_021D2280

	thumb_func_start ov21_021D22A8
ov21_021D22A8: @ 0x021D22A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D22BA
	bl FUN_02022974
_021D22BA:
	movs r0, #0x6d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D22A8

	thumb_func_start ov21_021D22C4
ov21_021D22C4: @ 0x021D22C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D22D6
	bl FUN_02022974
_021D22D6:
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D22C4

	thumb_func_start ov21_021D22E0
ov21_021D22E0: @ 0x021D22E0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	movs r4, #0x6d
	lsls r4, r4, #2
	adds r0, r0, r4
	bl ov21_021D22F8
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D22E0

	thumb_func_start ov21_021D22F8
ov21_021D22F8: @ 0x021D22F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x28]
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r3, r0
	bne _021D231A
	ldr r1, [sp, #0x10]
	ldr r0, [r5, #0x2c]
	cmp r1, r0
	bne _021D231A
	ldr r0, [r5, #8]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_020129D0
	pop {r4, r5, r6, pc}
_021D231A:
	ldr r0, [sp, #0x10]
	str r3, [r5, #0x28]
	str r0, [r5, #0x2c]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021D232A
	bl ov21_021D4D1C
_021D232A:
	cmp r4, #0
	beq _021D233A
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov21_021D4CB8
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
_021D233A:
	adds r0, r6, #0
	bl ov21_021D4CA0
	str r0, [r5, #8]
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D22F8

	thumb_func_start ov21_021D2344
ov21_021D2344: @ 0x021D2344
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #3
	ble _021D2352
	bl FUN_02022974
_021D2352:
	lsls r0, r5, #2
	adds r1, r4, r0
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D2344

	thumb_func_start ov21_021D2360
ov21_021D2360: @ 0x021D2360
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_02021FE0
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02021FE0
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2360

	thumb_func_start ov21_021D238C
ov21_021D238C: @ 0x021D238C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6d
	adds r4, r1, #0
	lsls r0, r0, #2
	lsls r1, r4, #0x18
	ldr r0, [r5, r0]
	lsrs r1, r1, #0x18
	bl FUN_02021E80
	movs r0, #0x6e
	lsls r0, r0, #2
	lsls r1, r4, #0x18
	ldr r0, [r5, r0]
	lsrs r1, r1, #0x18
	bl FUN_02021E80
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	lsls r1, r4, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x18
	bl FUN_02012A00
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D238C

	thumb_func_start ov21_021D23C0
ov21_021D23C0: @ 0x021D23C0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	cmp r0, #0
	beq _021D23D4
	bl FUN_02021CAC
_021D23D4:
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D23E4
	adds r1, r4, #0
	bl FUN_02021CAC
_021D23E4:
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r0, [r0]
	cmp r0, #0
	beq _021D23F6
	adds r1, r4, #0
	bl FUN_020129D0
_021D23F6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D23C0

	thumb_func_start ov21_021D23F8
ov21_021D23F8: @ 0x021D23F8
	push {r4, r5}
	ldr r4, [sp, #0x18]
	ldr r5, [sp, #0x14]
	str r4, [r0]
	ldr r4, [sp, #0x10]
	str r4, [r0, #4]
	movs r4, #0x20
	orrs r4, r5
	str r4, [r0, #8]
	str r2, [r0, #0xc]
	subs r2, r3, r2
	str r2, [r0, #0x10]
	ldr r3, [sp, #8]
	ldr r2, [sp, #0xc]
	str r3, [r0, #0x14]
	subs r2, r2, r3
	str r2, [r0, #0x18]
	str r1, [r0, #0x1c]
	movs r1, #0
	str r1, [r0, #0x20]
	pop {r4, r5}
	bx lr
	thumb_func_end ov21_021D23F8

	thumb_func_start ov21_021D2424
ov21_021D2424: @ 0x021D2424
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov21_021D24EC
	cmp r0, #0
	bne _021D2472
	adds r0, r5, #0
	bl ov21_021D2484
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov21_021D24B8
	ldr r1, [r5]
	cmp r1, #0
	bne _021D245A
	movs r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021D247C @ =0x04000050
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	adds r3, r4, #0
	blx FUN_020BF5A0
	b _021D246C
_021D245A:
	movs r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, _021D2480 @ =0x04001050
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	adds r3, r4, #0
	blx FUN_020BF5A0
_021D246C:
	ldr r0, [r5, #0x20]
	adds r0, r0, #1
	str r0, [r5, #0x20]
_021D2472:
	adds r0, r5, #0
	bl ov21_021D24EC
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D247C: .4byte 0x04000050
_021D2480: .4byte 0x04001050
	thumb_func_end ov21_021D2424

	thumb_func_start ov21_021D2484
ov21_021D2484: @ 0x021D2484
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r2, [r4, #0x20]
	lsls r0, r0, #0xc
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	asrs r1, r0, #0xc
	ldr r0, [r4, #0x14]
	adds r0, r1, r0
	pop {r4, pc}
	thumb_func_end ov21_021D2484

	thumb_func_start ov21_021D24B8
ov21_021D24B8: @ 0x021D24B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	ldr r2, [r4, #0x20]
	lsls r0, r0, #0xc
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	ldr r1, [r4, #0x1c]
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	asrs r1, r0, #0xc
	ldr r0, [r4, #0xc]
	adds r0, r1, r0
	pop {r4, pc}
	thumb_func_end ov21_021D24B8

	thumb_func_start ov21_021D24EC
ov21_021D24EC: @ 0x021D24EC
	ldr r1, [r0, #0x20]
	ldr r0, [r0, #0x1c]
	cmp r1, r0
	ble _021D24F8
	movs r0, #1
	bx lr
_021D24F8:
	movs r0, #0
	bx lr
	thumb_func_end ov21_021D24EC

	thumb_func_start ov21_021D24FC
ov21_021D24FC: @ 0x021D24FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	bl ov21_021D24B8
	rsbs r4, r0, #0
	adds r0, r5, #0
	bl ov21_021D2170
	movs r3, #0
	adds r1, r4, #0
	adds r2, r4, #0
	str r3, [sp]
	bl FUN_020086FC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D24FC

	thumb_func_start ov21_021D251C
ov21_021D251C: @ 0x021D251C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r2, #0
	adds r0, r1, #0
	bl ov21_021D24B8
	rsbs r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D2274
	movs r3, #0
	adds r1, r6, #0
	adds r2, r6, #0
	str r3, [sp]
	bl FUN_020086FC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021D251C

	thumb_func_start ov21_021D2544
ov21_021D2544: @ 0x021D2544
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r5, r0, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021D4F94
	adds r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov21_021D4FBC
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	adds r0, r4, #0
	bl ov21_021D2574
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D2544

	thumb_func_start ov21_021D2574
ov21_021D2574: @ 0x021D2574
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov21_021D3124
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D2574

	thumb_func_start ov21_021D2584
ov21_021D2584: @ 0x021D2584
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_021D258C:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D258C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D2584

	thumb_func_start ov21_021D25A0
ov21_021D25A0: @ 0x021D25A0
	ldr r3, _021D25A8 @ =FUN_02021D34
	ldr r0, [r0]
	bx r3
	nop
_021D25A8: .4byte FUN_02021D34
	thumb_func_end ov21_021D25A0

	thumb_func_start ov21_021D25AC
ov21_021D25AC: @ 0x021D25AC
	str r1, [r0, #0x30]
	cmp r1, #0
	bne _021D25B6
	movs r1, #0
	str r1, [r0, #0x34]
_021D25B6:
	bx lr
	thumb_func_end ov21_021D25AC

	thumb_func_start ov21_021D25B8
ov21_021D25B8: @ 0x021D25B8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r5, r0, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021D4F94
	adds r0, r5, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov21_021D4FBC
	ldr r0, [sp, #4]
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	adds r0, r4, #0
	bl ov21_021D25E8
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D25B8

	thumb_func_start ov21_021D25E8
ov21_021D25E8: @ 0x021D25E8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r3, #0
	movs r3, #0x81
	adds r4, r1, #0
	adds r5, r0, #0
	lsls r3, r3, #2
	adds r6, r2, #0
	str r4, [r5, r3]
	adds r0, r3, #4
	str r6, [r5, r0]
	adds r0, r3, #0
	adds r0, #8
	str r7, [r5, r0]
	adds r0, r3, #0
	ldr r1, [sp, #0x18]
	adds r0, #0xc
	str r1, [r5, r0]
	adds r0, r3, #0
	adds r0, #0xc
	ldr r0, [r5, r0]
	adds r2, r3, #4
	str r0, [sp]
	adds r0, r3, #0
	ldr r1, [r5, r3]
	adds r3, #8
	subs r0, #0x20
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	adds r0, r5, r0
	bl ov21_021D30D8
	movs r0, #0x26
	lsls r0, r0, #4
	str r4, [r5, r0]
	adds r1, r0, #4
	str r6, [r5, r1]
	adds r1, r0, #0
	adds r1, #8
	str r7, [r5, r1]
	adds r1, r0, #0
	ldr r2, [sp, #0x18]
	adds r1, #0xc
	str r2, [r5, r1]
	movs r1, #0
	adds r0, #0x10
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D25E8

	thumb_func_start ov21_021D2648
ov21_021D2648: @ 0x021D2648
	str r1, [r0]
	str r3, [r0, #4]
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	subs r1, r2, r1
	str r1, [r0, #0x10]
	ldr r1, [sp]
	subs r1, r1, r3
	str r1, [r0, #0x14]
	ldr r1, [sp, #4]
	str r1, [r0, #0x1c]
	movs r1, #0
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end ov21_021D2648

	thumb_func_start ov21_021D2664
ov21_021D2664: @ 0x021D2664
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r2, [r5, #0x18]
	lsls r0, r0, #0xc
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	ldr r1, [r5, #0x1c]
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x18]
	lsls r0, r0, #0xc
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	ldr r1, [r5, #0x1c]
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	ldr r1, [r5, #8]
	asrs r2, r4, #0xc
	adds r1, r2, r1
	str r1, [r5]
	asrs r1, r0, #0xc
	ldr r0, [r5, #0xc]
	adds r0, r1, r0
	str r0, [r5, #4]
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	adds r0, r0, #1
	cmp r0, r1
	bgt _021D26DA
	str r0, [r5, #0x18]
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D26DA:
	str r1, [r5, #0x18]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2664

	thumb_func_start ov21_021D26E0
ov21_021D26E0: @ 0x021D26E0
	movs r1, #0x9f
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov21_021D26E0

	thumb_func_start ov21_021D26E8
ov21_021D26E8: @ 0x021D26E8
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	movs r2, #0x9f
	lsls r2, r2, #2
	adds r6, r3, #0
	ldr r0, [r0, r2]
	adds r2, r6, #0
	bl FUN_02006CB8
	adds r4, r0, #0
	beq _021D2720
	cmp r5, #0
	beq _021D2720
	ldr r1, [r4]
	adds r0, r6, #0
	lsrs r1, r1, #8
	bl FUN_02018144
	adds r5, r0, #0
	beq _021D271E
	adds r0, r4, #0
	adds r1, r5, #0
	blx FUN_020C4F48
	adds r0, r4, #0
	bl FUN_020181C4
_021D271E:
	adds r4, r5, #0
_021D2720:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D26E8

	thumb_func_start ov21_021D2724
ov21_021D2724: @ 0x021D2724
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r2, #0
	adds r5, r3, #0
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	ldr r4, [sp, #0x24]
	bl ov21_021D26E8
	adds r7, r0, #0
	beq _021D2766
	add r1, sp, #4
	blx FUN_020A7164
	cmp r0, #0
	beq _021D2760
	cmp r4, #0
	bne _021D274C
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x10]
_021D274C:
	ldr r0, [sp, #0x20]
	lsls r1, r5, #0x18
	str r0, [sp]
	ldr r2, [sp, #4]
	adds r0, r6, #0
	ldr r2, [r2, #0x14]
	lsrs r1, r1, #0x18
	adds r3, r4, #0
	bl FUN_0201958C
_021D2760:
	adds r0, r7, #0
	bl FUN_020181C4
_021D2766:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D2724

	thumb_func_start ov21_021D276C
ov21_021D276C: @ 0x021D276C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r3, #0
	adds r5, r2, #0
	ldr r3, [sp, #0x1c]
	movs r2, #0
	ldr r4, [sp, #0x18]
	bl ov21_021D26E8
	adds r7, r0, #0
	beq _021D27B2
	add r1, sp, #0
	blx FUN_020A71B0
	cmp r0, #0
	beq _021D27AC
	cmp r4, #0
	bne _021D2792
	ldr r0, [sp]
	ldr r4, [r0, #8]
_021D2792:
	ldr r0, [sp]
	adds r1, r4, #0
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	adds r2, r4, #0
	ldr r3, _021D27B4 @ =0x021E9CA4
	lsls r4, r5, #2
	ldr r0, [r0, #0xc]
	ldr r3, [r3, r4]
	adds r1, r6, #0
	blx r3
_021D27AC:
	adds r0, r7, #0
	bl FUN_020181C4
_021D27B2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D27B4: .4byte 0x021E9CA4
	thumb_func_end ov21_021D276C

	thumb_func_start ov21_021D27B8
ov21_021D27B8: @ 0x021D27B8
	push {r3, r4, r5, lr}
	adds r5, r3, #0
	ldr r3, [sp, #0x10]
	bl ov21_021D26E8
	adds r4, r0, #0
	beq _021D27DA
	adds r1, r5, #0
	blx FUN_020A7248
	cmp r0, #0
	bne _021D27DA
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D27DA:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D27B8

	thumb_func_start ov21_021D27E0
ov21_021D27E0: @ 0x021D27E0
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	movs r2, #0
	bl ov21_021D26E8
	adds r4, r0, #0
	beq _021D2802
	adds r1, r5, #0
	blx FUN_020A71B0
	cmp r0, #0
	bne _021D2802
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D2802:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D27E0

	thumb_func_start ov21_021D2808
ov21_021D2808: @ 0x021D2808
	push {r3, r4, r5, lr}
	adds r5, r3, #0
	ldr r3, [sp, #0x10]
	bl ov21_021D26E8
	adds r4, r0, #0
	beq _021D282A
	adds r1, r5, #0
	blx FUN_020A7164
	cmp r0, #0
	bne _021D282A
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D282A:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D2808

	thumb_func_start ov21_021D2830
ov21_021D2830: @ 0x021D2830
	push {r4, r5, r6, lr}
	sub sp, #0xa8
	ldr r6, _021D2984 @ =0x021E9C6C
	add r3, sp, #0x8c
	adds r5, r0, #0
	adds r4, r1, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #1
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r6, _021D2988 @ =0x021E9C50
	add r3, sp, #0x70
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #2
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r0, #0
	movs r1, #2
	bl FUN_02019060
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r6, _021D298C @ =0x021E9C34
	add r3, sp, #0x54
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #3
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r6, _021D2990 @ =0x021E9C18
	add r3, sp, #0x38
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #5
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #5
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #5
	bl FUN_02019EBC
	ldr r6, _021D2994 @ =0x021E9BFC
	add r3, sp, #0x1c
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #6
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #6
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #6
	bl FUN_02019EBC
	ldr r6, _021D2998 @ =0x021E9C88
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #7
	str r0, [r3]
	adds r0, r5, #0
	movs r3, #1
	bl FUN_020183C4
	movs r0, #7
	movs r1, #0x40
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #7
	bl FUN_02019EBC
	add sp, #0xa8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D2984: .4byte 0x021E9C6C
_021D2988: .4byte 0x021E9C50
_021D298C: .4byte 0x021E9C34
_021D2990: .4byte 0x021E9C18
_021D2994: .4byte 0x021E9BFC
_021D2998: .4byte 0x021E9C88
	thumb_func_end ov21_021D2830

	thumb_func_start ov21_021D299C
ov21_021D299C: @ 0x021D299C
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019044
	pop {r4, pc}
	thumb_func_end ov21_021D299C

	thumb_func_start ov21_021D29D0
ov21_021D29D0: @ 0x021D29D0
	push {r3, r4, lr}
	sub sp, #0x14
	movs r3, #0
	adds r4, r0, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r0, [r4]
	adds r1, r4, #4
	movs r2, #1
	bl FUN_0201A7E8
	adds r0, r4, #4
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #4
	bl FUN_0201A954
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov21_021D29D0

	thumb_func_start ov21_021D2A00
ov21_021D2A00: @ 0x021D2A00
	ldr r3, _021D2A08 @ =FUN_0201A8FC
	adds r0, r0, #4
	bx r3
	nop
_021D2A08: .4byte FUN_0201A8FC
	thumb_func_end ov21_021D2A00

	thumb_func_start ov21_021D2A0C
ov21_021D2A0C: @ 0x021D2A0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r1, #0
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_0200762C
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r3, _021D2AA0 @ =0x02100DEC
	movs r0, #2
	movs r1, #0
	ldr r3, [r3]
	lsls r0, r0, #0xe
	adds r2, r1, #0
	blx r3
	ldr r3, _021D2AA4 @ =0x02100DF4
	adds r4, r0, #0
	ldr r3, [r3]
	movs r0, #0x80
	movs r1, #0
	movs r2, #1
	blx r3
	ldr r2, _021D2AA8 @ =0x7FFF0000
	adds r6, r0, #0
	movs r0, #0x55
	lsls r0, r0, #2
	ands r2, r4
	lsls r1, r4, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0xd
	lsls r2, r2, #4
	bl FUN_02008A78
	ldr r2, _021D2AAC @ =0xFFFF0000
	movs r0, #0x55
	lsls r0, r0, #2
	ands r2, r6
	lsls r1, r6, #0x10
	lsrs r2, r2, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0xd
	lsls r2, r2, #3
	bl FUN_02008A84
	movs r2, #0
	movs r0, #0x56
	adds r3, r5, #0
	adds r1, r2, #0
	lsls r0, r0, #2
_021D2A74:
	adds r2, r2, #1
	str r1, [r3, r0]
	adds r3, r3, #4
	cmp r2, #4
	blt _021D2A74
	ldr r4, _021D2AB0 @ =0x021E9BEC
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	str r7, [sp, #0xc]
	bl FUN_02015064
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2AA0: .4byte 0x02100DEC
_021D2AA4: .4byte 0x02100DF4
_021D2AA8: .4byte 0x7FFF0000
_021D2AAC: .4byte 0xFFFF0000
_021D2AB0: .4byte 0x021E9BEC
	thumb_func_end ov21_021D2A0C

	thumb_func_start ov21_021D2AB4
ov21_021D2AB4: @ 0x021D2AB4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0x56
	movs r4, #0
	adds r5, r7, #0
	lsls r6, r6, #2
_021D2AC0:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _021D2ACA
	bl FUN_02007DC8
_021D2ACA:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D2AC0
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_02007B6C
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_020150A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D2AB4

	thumb_func_start ov21_021D2AE8
ov21_021D2AE8: @ 0x021D2AE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	movs r1, #0x6d
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r4, r5, r1
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021D2B84 @ =0x00000BB8
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r6, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	adds r1, r7, #0
	movs r2, #0x4e
	bl FUN_02009A4C
	str r0, [r4, #0xc]
	bl FUN_0200A3DC
	ldr r0, [r4, #0xc]
	bl FUN_02009D4C
	ldr r0, _021D2B84 @ =0x00000BB8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r6, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #3
	movs r3, #0
	bl FUN_02009B04
	str r0, [r4, #0x10]
	bl FUN_0200A640
	ldr r0, [r4, #0x10]
	bl FUN_02009D4C
	ldr r0, _021D2B84 @ =0x00000BB8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r6, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0x4c
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r4, #0x14]
	ldr r0, _021D2B84 @ =0x00000BB8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r6, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0x4d
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r4, #0x18]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2B84: .4byte 0x00000BB8
	thumb_func_end ov21_021D2AE8

	thumb_func_start ov21_021D2B88
ov21_021D2B88: @ 0x021D2B88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _021D2C0C @ =0x00000BB8
	adds r7, r3, #0
	adds r6, r2, #0
	adds r4, r1, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4]
	adds r1, r7, #0
	movs r2, #0x4e
	bl FUN_02009A4C
	str r0, [r5, #0xc]
	bl FUN_0200A3DC
	ldr r0, [r5, #0xc]
	bl FUN_02009D4C
	ldr r0, _021D2C0C @ =0x00000BB8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	movs r2, #3
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x10]
	bl FUN_0200A640
	ldr r0, [r5, #0x10]
	bl FUN_02009D4C
	ldr r0, _021D2C0C @ =0x00000BB8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	movs r2, #0x4c
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x14]
	ldr r0, _021D2C0C @ =0x00000BB8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	movs r2, #0x4d
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x18]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2C0C: .4byte 0x00000BB8
	thumb_func_end ov21_021D2B88

	thumb_func_start ov21_021D2C10
ov21_021D2C10: @ 0x021D2C10
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6d
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4, #0xc]
	bl FUN_0200A4E4
	ldr r0, [r4, #0x10]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r4, #0xc]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x10]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x14]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x18]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2C10

	thumb_func_start ov21_021D2C58
ov21_021D2C58: @ 0x021D2C58
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r4, r1, #0
	bl FUN_0200A4E4
	ldr r0, [r5, #0x10]
	bl FUN_0200A6DC
	ldr r0, [r4]
	ldr r1, [r5, #0xc]
	bl FUN_02009D68
	ldr r0, [r4, #4]
	ldr r1, [r5, #0x10]
	bl FUN_02009D68
	ldr r0, [r4, #8]
	ldr r1, [r5, #0x14]
	bl FUN_02009D68
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0x18]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2C58

	thumb_func_start ov21_021D2C8C
ov21_021D2C8C: @ 0x021D2C8C
	push {r3, r4, r5, lr}
	sub sp, #0x70
	adds r4, r1, #0
	ldr r1, _021D2D48 @ =0x00000BB8
	adds r5, r0, #0
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r3, #5
	str r0, [sp, #0x10]
	lsls r3, r3, #6
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r5, r2]
	adds r3, #0xc
	str r2, [sp, #0x1c]
	ldr r2, [r5, r3]
	adds r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	adds r2, r1, #0
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #1
	str r0, [sp, #0x44]
	add r0, sp, #0x2c
	str r1, [sp, #0x40]
	str r4, [sp, #0x48]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	bl FUN_02021B90
	movs r1, #0x6d
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x6d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021F58
	movs r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl FUN_02021CAC
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021D6C
	movs r1, #0x6f
	lsls r1, r1, #2
	movs r2, #0
	adds r0, r1, #0
	str r2, [r5, r1]
	adds r0, #0x20
	str r2, [r5, r0]
	adds r1, #0x24
	str r2, [r5, r1]
	add sp, #0x70
	pop {r3, r4, r5, pc}
	nop
_021D2D48: .4byte 0x00000BB8
	thumb_func_end ov21_021D2C8C

	thumb_func_start ov21_021D2D4C
ov21_021D2D4C: @ 0x021D2D4C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021BD4
	movs r0, #0x6d
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02021BD4
	movs r0, #0x6e
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2D86
	bl ov21_021D4D1C
	movs r0, #0x6f
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_021D2D86:
	pop {r4, pc}
	thumb_func_end ov21_021D2D4C

	thumb_func_start ov21_021D2D88
ov21_021D2D88: @ 0x021D2D88
	push {r4, r5, r6, lr}
	sub sp, #0x70
	adds r4, r1, #0
	ldr r1, _021D2E18 @ =0x00000BB8
	adds r5, r0, #0
	movs r0, #0
	adds r6, r3, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	ldr r3, [sp, #0x80]
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [r2]
	str r3, [sp, #0x14]
	ldr r3, [r2, #4]
	str r3, [sp, #0x18]
	ldr r3, [r2, #8]
	str r3, [sp, #0x1c]
	ldr r2, [r2, #0xc]
	adds r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	adds r2, r1, #0
	bl FUN_020093B4
	movs r1, #0
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #1
	str r0, [sp, #0x44]
	str r4, [sp, #0x2c]
	str r1, [sp, #0x40]
	str r6, [sp, #0x48]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02021F58
	movs r0, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5, #4]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02021D6C
	movs r0, #0
	str r0, [r5, #8]
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	add sp, #0x70
	pop {r4, r5, r6, pc}
	nop
_021D2E18: .4byte 0x00000BB8
	thumb_func_end ov21_021D2D88

	thumb_func_start ov21_021D2E1C
ov21_021D2E1C: @ 0x021D2E1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D2E42
	bl ov21_021D4D1C
	movs r0, #0
	str r0, [r4, #8]
_021D2E42:
	pop {r4, pc}
	thumb_func_end ov21_021D2E1C

	thumb_func_start ov21_021D2E44
ov21_021D2E44: @ 0x021D2E44
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	cmp r0, #0
	beq _021D2E54
	bl FUN_02021CAC
_021D2E54:
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021D2E60
	adds r1, r4, #0
	bl FUN_02021CAC
_021D2E60:
	ldr r0, [r5, #8]
	ldr r0, [r0]
	cmp r0, #0
	beq _021D2E6E
	adds r1, r4, #0
	bl FUN_020129D0
_021D2E6E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2E44

	thumb_func_start ov21_021D2E70
ov21_021D2E70: @ 0x021D2E70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	movs r1, #0x79
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r4, r5, r1
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021D2F10 @ =0x00002EE0
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r6, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	movs r2, #0x77
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r4, #0x10]
	bl FUN_0200A3DC
	ldr r0, [r4, #0x10]
	bl FUN_02009D4C
	ldr r0, _021D2F10 @ =0x00002EE0
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x51
	str r6, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0x15
	movs r3, #0
	bl FUN_02009B04
	str r0, [r4, #0x14]
	bl FUN_0200A640
	ldr r0, [r4, #0x14]
	bl FUN_02009D4C
	ldr r0, _021D2F10 @ =0x00002EE0
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r6, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0x78
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r4, #0x18]
	ldr r0, _021D2F10 @ =0x00002EE0
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r6, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0x76
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r4, #0x1c]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2F10: .4byte 0x00002EE0
	thumb_func_end ov21_021D2E70

	thumb_func_start ov21_021D2F14
ov21_021D2F14: @ 0x021D2F14
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x79
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r4, #0x10]
	bl FUN_0200A4E4
	ldr r0, [r4, #0x14]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x10]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x14]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x18]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x1c]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D2F14

	thumb_func_start ov21_021D2F5C
ov21_021D2F5C: @ 0x021D2F5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	adds r5, r1, #0
	ldr r1, _021D3008 @ =0x00002EE0
	adds r6, r0, #0
	movs r0, #0
	movs r2, #0x79
	lsls r2, r2, #2
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	subs r2, #0xa4
	ldr r2, [r6, r2]
	adds r3, r1, #0
	str r2, [sp, #0x14]
	movs r2, #0x79
	lsls r2, r2, #2
	subs r2, #0xa0
	ldr r2, [r6, r2]
	str r2, [sp, #0x18]
	movs r2, #0x79
	lsls r2, r2, #2
	subs r2, #0x9c
	ldr r2, [r6, r2]
	str r2, [sp, #0x1c]
	movs r2, #0x79
	lsls r2, r2, #2
	subs r2, #0x98
	ldr r2, [r6, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	adds r2, r1, #0
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r4, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #2
	str r0, [sp, #0x44]
	movs r0, #0x49
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	movs r0, #0x19
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r0, #0x79
	lsls r0, r0, #2
	str r5, [sp, #0x48]
	str r4, [sp, #0x40]
	adds r5, r6, r0
	add r7, sp, #0x2c
_021D2FD6:
	adds r0, r7, #0
	bl FUN_02021B90
	adds r1, r4, #0
	stm r5!, {r0}
	bl FUN_02021D6C
	adds r4, r4, #1
	cmp r4, #4
	blt _021D2FD6
	movs r0, #0x79
	lsls r0, r0, #2
	adds r0, r6, r0
	movs r1, #0
	bl ov21_021D2584
	adds r0, r6, #0
	bl ov21_021D3034
	adds r0, r6, #0
	bl ov21_021D31D0
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3008: .4byte 0x00002EE0
	thumb_func_end ov21_021D2F5C

	thumb_func_start ov21_021D300C
ov21_021D300C: @ 0x021D300C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov21_021D31F0
	adds r0, r5, #0
	bl ov21_021D3054
	movs r0, #0x79
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r5, r0
_021D3022:
	ldr r0, [r5]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D3022
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D300C

	thumb_func_start ov21_021D3034
ov21_021D3034: @ 0x021D3034
	push {r4, lr}
	movs r1, #0x79
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, _021D3050 @ =ov21_021D3064
	adds r1, r4, r1
	movs r2, #1
	bl FUN_0200D9E8
	movs r1, #0x9d
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021D3050: .4byte ov21_021D3064
	thumb_func_end ov21_021D3034

	thumb_func_start ov21_021D3054
ov21_021D3054: @ 0x021D3054
	movs r1, #0x9d
	lsls r1, r1, #2
	ldr r3, _021D3060 @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D3060: .4byte FUN_0200DA58
	thumb_func_end ov21_021D3054

	thumb_func_start ov21_021D3064
ov21_021D3064: @ 0x021D3064
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D3080
	ldr r0, [r4, #0x2c]
	str r0, [sp]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0x28]
	adds r0, r4, #0
	bl ov21_021D30D8
	pop {r3, r4, r5, pc}
_021D3080:
	ldr r0, [r4, #0x34]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1a
	subs r1, r1, r2
	movs r0, #0x1a
	rors r1, r0
	adds r0, r2, r1
	str r0, [r4, #0x34]
	cmp r0, #0x20
	blt _021D309C
	adds r1, r0, #1
	movs r0, #0x40
	subs r0, r0, r1
_021D309C:
	lsls r2, r0, #0xc
	asrs r1, r2, #0x1f
	lsrs r0, r2, #0x12
	lsls r3, r1, #0xe
	movs r1, #2
	orrs r3, r0
	lsls r2, r2, #0xe
	movs r0, #0
	lsls r1, r1, #0xa
	adds r5, r2, r1
	adcs r3, r0
	lsls r2, r3, #0x14
	lsrs r0, r5, #0xc
	orrs r0, r2
	lsls r1, r1, #6
	blx FUN_020BCFD0
	asrs r3, r0, #0xc
	ldr r0, [r4, #0x2c]
	adds r0, r0, r3
	str r0, [sp]
	adds r0, r4, #0
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	ldr r4, [r4, #0x28]
	adds r3, r4, r3
	bl ov21_021D30D8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D3064

	thumb_func_start ov21_021D30D8
ov21_021D30D8: @ 0x021D30D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r6, [sp, #0x40]
	adds r5, r0, #0
	str r1, [sp, #0xc]
	adds r7, r2, #0
	str r3, [sp, #0x10]
	movs r4, #0
_021D30E8:
	ldr r0, [sp, #0x10]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	str r6, [sp, #8]
	adds r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov21_021D4FFC
	ldr r0, [sp, #0x18]
	lsls r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [r5]
	add r1, sp, #0x1c
	bl FUN_02021C50
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D30E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D30D8

	thumb_func_start ov21_021D3124
ov21_021D3124: @ 0x021D3124
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	movs r1, #0x87
	lsls r1, r1, #2
	adds r4, r0, r1
	ldr r1, [r4, #0x44]
	adds r5, r2, #0
	adds r7, r3, #0
	cmp r1, r6
	bne _021D314E
	ldr r1, [r4, #0x48]
	cmp r1, r5
	bne _021D314E
	ldr r1, [r4, #0x4c]
	cmp r1, r7
	bne _021D314E
	ldr r2, [r4, #0x50]
	ldr r1, [sp, #0x20]
	cmp r2, r1
	beq _021D318E
_021D314E:
	movs r1, #0x79
	lsls r1, r1, #2
	adds r3, r0, r1
	str r3, [r4]
	str r5, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r1, [r3, #0x20]
	ldr r3, [r3, #0x24]
	adds r0, r4, #4
	adds r2, r6, #0
	bl ov21_021D2648
	ldr r3, [r4]
	ldr r0, [sp, #0x20]
	adds r2, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	adds r0, r4, #0
	ldr r1, [r3, #0x28]
	ldr r3, [r3, #0x2c]
	adds r0, #0x24
	bl ov21_021D2648
	str r6, [r4, #0x44]
	str r5, [r4, #0x48]
	ldr r0, [sp, #0x20]
	str r7, [r4, #0x4c]
	str r0, [r4, #0x50]
	movs r0, #1
	str r0, [r4, #0x54]
_021D318E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D3124

	thumb_func_start ov21_021D3194
ov21_021D3194: @ 0x021D3194
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _021D31CE
	adds r0, r5, #4
	bl ov21_021D2664
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0x24
	bl ov21_021D2664
	ldr r1, [r5, #4]
	ldr r0, [r5]
	cmp r4, #1
	str r1, [r0, #0x20]
	ldr r1, [r5, #8]
	ldr r0, [r5]
	str r1, [r0, #0x24]
	ldr r1, [r5, #0x24]
	ldr r0, [r5]
	str r1, [r0, #0x28]
	ldr r1, [r5, #0x28]
	ldr r0, [r5]
	str r1, [r0, #0x2c]
	bne _021D31CE
	movs r0, #0
	str r0, [r5, #0x54]
_021D31CE:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D3194

	thumb_func_start ov21_021D31D0
ov21_021D31D0: @ 0x021D31D0
	push {r4, lr}
	movs r1, #0x87
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r0, _021D31EC @ =ov21_021D3194
	adds r1, r4, r1
	movs r2, #0
	bl FUN_0200D9E8
	movs r1, #0x9e
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_021D31EC: .4byte ov21_021D3194
	thumb_func_end ov21_021D31D0

	thumb_func_start ov21_021D31F0
ov21_021D31F0: @ 0x021D31F0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x9e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200DA58
	movs r0, #0x9e
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov21_021D31F0

	thumb_func_start ov21_021D3208
ov21_021D3208: @ 0x021D3208
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r2, #0
	adds r4, r1, #0
	ldr r2, _021D32FC @ =0x00001770
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020D5124
	ldr r0, [r4]
	str r0, [r5]
	ldr r1, [r4, #8]
	ldr r0, _021D3300 @ =0x00001744
	str r1, [r5, r0]
	ldr r0, [r5]
	bl FUN_02027474
	cmp r0, #0
	beq _021D3232
	movs r1, #1
	b _021D3234
_021D3232:
	movs r1, #0
_021D3234:
	ldr r0, _021D3304 @ =0x00001734
	str r1, [r5, r0]
	ldr r0, [r4, #0x20]
	cmp r0, #2
	bne _021D324C
	ldr r0, _021D3304 @ =0x00001734
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D324A
	movs r0, #1
	b _021D324C
_021D324A:
	movs r0, #0
_021D324C:
	cmp r0, #1
	ldr r0, _021D3308 @ =0x00001730
	bne _021D325A
	movs r1, #1
	str r1, [r5, r0]
	movs r1, #0
	b _021D325E
_021D325A:
	movs r1, #0
	str r1, [r5, r0]
_021D325E:
	str r1, [sp]
	ldr r0, _021D3308 @ =0x00001730
	str r1, [sp, #4]
	ldr r0, [r5, r0]
	adds r2, r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r6, [sp, #0xc]
	bl ov21_021D3684
	cmp r0, #0
	bne _021D327C
	bl FUN_02022974
_021D327C:
	ldr r1, [r4, #0x1c]
	adds r0, r5, #0
	bl ov21_021D3794
	ldr r1, [r4, #0x1c]
	adds r0, r5, #0
	bl ov21_021D3434
	ldr r1, [r4, #0x20]
	adds r0, r5, #0
	bl ov21_021D344C
	ldr r0, [r4, #4]
	bl FUN_02025FCC
	ldr r1, _021D330C @ =0x0000174C
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	bl FUN_02025F30
	ldr r1, _021D3310 @ =0x00001750
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl FUN_02025F04
	ldr r1, _021D3314 @ =0x00001754
	str r0, [r5, r1]
	adds r0, r6, #0
	bl FUN_02098700
	ldr r1, _021D3318 @ =0x00001748
	str r0, [r5, r1]
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r5, r0]
	cmp r0, #0
	ldr r0, [r5, r1]
	bne _021D32D4
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0209872C
	b _021D32DC
_021D32D4:
	movs r1, #1
	adds r2, r6, #0
	bl FUN_0209872C
_021D32DC:
	ldr r0, [r4, #0xc]
	ldr r1, _021D331C @ =0x00001760
	str r0, [r5, r1]
	ldr r2, [r4, #0x10]
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	ldr r2, [r4, #0x14]
	adds r0, #8
	str r2, [r5, r0]
	ldr r0, [r4, #0x18]
	adds r1, #0xc
	str r0, [r5, r1]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D32FC: .4byte 0x00001770
_021D3300: .4byte 0x00001744
_021D3304: .4byte 0x00001734
_021D3308: .4byte 0x00001730
_021D330C: .4byte 0x0000174C
_021D3310: .4byte 0x00001750
_021D3314: .4byte 0x00001754
_021D3318: .4byte 0x00001748
_021D331C: .4byte 0x00001760
	thumb_func_end ov21_021D3208

	thumb_func_start ov21_021D3320
ov21_021D3320: @ 0x021D3320
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D3344 @ =0x00001754
	ldr r0, [r4, r0]
	bl FUN_020237BC
	ldr r0, _021D3348 @ =0x00001748
	ldr r0, [r4, r0]
	bl FUN_020987BC
	ldr r0, _021D3348 @ =0x00001748
	ldr r0, [r4, r0]
	bl FUN_02098718
	ldr r0, _021D3348 @ =0x00001748
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D3344: .4byte 0x00001754
_021D3348: .4byte 0x00001748
	thumb_func_end ov21_021D3320

	thumb_func_start ov21_021D334C
ov21_021D334C: @ 0x021D334C
	ldr r3, _021D3358 @ =FUN_02027058
	lsls r1, r1, #0x10
	ldr r0, [r0]
	lsrs r1, r1, #0x10
	bx r3
	nop
_021D3358: .4byte FUN_02027058
	thumb_func_end ov21_021D334C

	thumb_func_start ov21_021D335C
ov21_021D335C: @ 0x021D335C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #0x1c
	blt _021D336A
	bl FUN_02022974
_021D336A:
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_020270AC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D335C

	thumb_func_start ov21_021D3374
ov21_021D3374: @ 0x021D3374
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #2
	blt _021D3382
	bl FUN_02022974
_021D3382:
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_020270F8
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D3374

	thumb_func_start ov21_021D338C
ov21_021D338C: @ 0x021D338C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #2
	blt _021D339A
	bl FUN_02022974
_021D339A:
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_02027154
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D338C

	thumb_func_start ov21_021D33A4
ov21_021D33A4: @ 0x021D33A4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #3
	blt _021D33B2
	bl FUN_02022974
_021D33B2:
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_020271B0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D33A4

	thumb_func_start ov21_021D33BC
ov21_021D33BC: @ 0x021D33BC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #3
	blt _021D33CA
	bl FUN_02022974
_021D33CA:
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_02027208
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D33BC

	thumb_func_start ov21_021D33D4
ov21_021D33D4: @ 0x021D33D4
	ldr r3, _021D33DC @ =FUN_0202756C
	ldr r0, [r0]
	movs r2, #0
	bx r3
	.align 2, 0
_021D33DC: .4byte FUN_0202756C
	thumb_func_end ov21_021D33D4

	thumb_func_start ov21_021D33E0
ov21_021D33E0: @ 0x021D33E0
	push {r3, lr}
	movs r2, #1
	bl ov21_021D334C
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021D33F4
	movs r0, #1
	pop {r3, pc}
_021D33F4:
	movs r0, #2
	pop {r3, pc}
	thumb_func_end ov21_021D33E0

	thumb_func_start ov21_021D33F8
ov21_021D33F8: @ 0x021D33F8
	ldr r3, _021D3400 @ =FUN_0202702C
	ldr r0, [r0]
	movs r1, #0
	bx r3
	.align 2, 0
_021D3400: .4byte FUN_0202702C
	thumb_func_end ov21_021D33F8

	thumb_func_start ov21_021D3404
ov21_021D3404: @ 0x021D3404
	ldr r3, _021D340C @ =FUN_02027264
	ldr r0, [r0]
	bx r3
	nop
_021D340C: .4byte FUN_02027264
	thumb_func_end ov21_021D3404

	thumb_func_start ov21_021D3410
ov21_021D3410: @ 0x021D3410
	ldr r3, _021D3418 @ =FUN_0202756C
	ldr r0, [r0]
	bx r3
	nop
_021D3418: .4byte FUN_0202756C
	thumb_func_end ov21_021D3410

	thumb_func_start ov21_021D341C
ov21_021D341C: @ 0x021D341C
	ldr r3, _021D3424 @ =FUN_020276C8
	ldr r0, [r0]
	bx r3
	nop
_021D3424: .4byte FUN_020276C8
	thumb_func_end ov21_021D341C

	thumb_func_start ov21_021D3428
ov21_021D3428: @ 0x021D3428
	ldr r3, _021D3430 @ =FUN_02027474
	ldr r0, [r0]
	bx r3
	nop
_021D3430: .4byte FUN_02027474
	thumb_func_end ov21_021D3428

	thumb_func_start ov21_021D3434
ov21_021D3434: @ 0x021D3434
	ldr r2, _021D343C @ =0x0000175C
	strh r1, [r0, r2]
	bx lr
	nop
_021D343C: .4byte 0x0000175C
	thumb_func_end ov21_021D3434

	thumb_func_start ov21_021D3440
ov21_021D3440: @ 0x021D3440
	ldr r1, _021D3448 @ =0x0000175C
	ldrh r0, [r0, r1]
	bx lr
	nop
_021D3448: .4byte 0x0000175C
	thumb_func_end ov21_021D3440

	thumb_func_start ov21_021D344C
ov21_021D344C: @ 0x021D344C
	ldr r2, _021D3454 @ =0x0000175E
	strh r1, [r0, r2]
	bx lr
	nop
_021D3454: .4byte 0x0000175E
	thumb_func_end ov21_021D344C

	thumb_func_start ov21_021D3458
ov21_021D3458: @ 0x021D3458
	ldr r1, _021D3460 @ =0x0000175E
	ldrh r0, [r0, r1]
	bx lr
	nop
_021D3460: .4byte 0x0000175E
	thumb_func_end ov21_021D3458

	thumb_func_start ov21_021D3464
ov21_021D3464: @ 0x021D3464
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r7, [sp, #0x4c]
	str r1, [sp, #0xc]
	adds r5, r0, #0
	ldr r1, _021D367C @ =0x000003DA
	adds r0, r7, #0
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	bl FUN_02018184
	adds r6, r0, #0
	bne _021D3482
	bl FUN_02022974
_021D3482:
	ldr r2, _021D367C @ =0x000003DA
	adds r0, r6, #0
	movs r1, #0
	blx FUN_020D5124
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r1, _021D367C @ =0x000003DA
	adds r0, r7, #0
	bl FUN_02018184
	adds r4, r0, #0
	bne _021D34A0
	bl FUN_02022974
_021D34A0:
	ldr r2, _021D367C @ =0x000003DA
	adds r0, r4, #0
	movs r1, #0
	blx FUN_020D5124
	movs r1, #0
	ldr r0, [sp, #0x48]
	str r1, [sp, #0x20]
	cmp r0, #0
	add r2, sp, #0x1c
	bne _021D34D2
	adds r0, r7, #0
	movs r1, #1
	bl ov21_021D3B64
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	ldr r2, [r5]
	adds r0, r6, #0
	add r1, sp, #0x24
	bl ov21_021D39A4
	b _021D34EA
_021D34D2:
	adds r0, r7, #0
	bl ov21_021D3B64
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	str r0, [sp]
	ldr r2, [r5]
	adds r0, r6, #0
	add r1, sp, #0x24
	bl ov21_021D39A4
_021D34EA:
	ldr r0, [sp, #0x24]
	adds r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	adds r3, r6, #0
	bl ov21_021D3B98
	ldr r2, [sp, #0x20]
	adds r0, r6, #0
	adds r1, r4, #0
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r2, [sp, #0x20]
	adds r0, r4, #0
	str r2, [sp, #0x24]
	movs r1, #0
	lsls r2, r2, #1
	blx FUN_020D5124
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r3, r6, #0
	bl ov21_021D3C48
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _021D353E
	movs r7, #0
	b _021D3656
_021D353E:
	adds r0, r6, #0
	adds r1, r4, #0
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r2, [sp, #0x20]
	adds r0, r4, #0
	str r2, [sp, #0x24]
	movs r1, #0
	lsls r2, r2, #1
	blx FUN_020D5124
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	adds r3, r6, #0
	bl ov21_021D3D2C
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _021D357A
	movs r7, #0
	b _021D3656
_021D357A:
	adds r0, r6, #0
	adds r1, r4, #0
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r2, [sp, #0x20]
	adds r0, r4, #0
	str r2, [sp, #0x24]
	movs r1, #0
	lsls r2, r2, #1
	blx FUN_020D5124
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	adds r3, r6, #0
	bl ov21_021D3D2C
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _021D35B6
	movs r7, #0
	b _021D3656
_021D35B6:
	adds r0, r6, #0
	adds r1, r4, #0
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r2, [sp, #0x20]
	adds r0, r4, #0
	str r2, [sp, #0x24]
	movs r1, #0
	lsls r2, r2, #1
	blx FUN_020D5124
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r1, r4, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	add r2, sp, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	adds r3, r6, #0
	bl ov21_021D3E80
	ldr r2, [sp, #0x20]
	cmp r2, #0
	bne _021D35F2
	movs r7, #0
	b _021D3656
_021D35F2:
	adds r0, r6, #0
	adds r1, r4, #0
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r2, [sp, #0x20]
	adds r0, r4, #0
	str r2, [sp, #0x24]
	movs r1, #0
	lsls r2, r2, #1
	blx FUN_020D5124
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r1, [r5]
	ldr r3, [sp, #0x24]
	adds r0, r5, #4
	adds r2, r6, #0
	bl ov21_021D3A60
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021D3638
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021D3638
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021D3638
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _021D3638
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _021D363C
_021D3638:
	movs r0, #1
	str r0, [sp, #0x50]
_021D363C:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	bne _021D364E
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	adds r0, r5, #4
	bl ov21_021D3AB8
	b _021D3654
_021D364E:
	adds r0, r5, #4
	bl ov21_021D3B28
_021D3654:
	movs r7, #1
_021D3656:
	ldr r2, _021D3680 @ =0x00001738
	adds r0, r5, #4
	adds r1, r5, r2
	adds r2, r2, #4
	adds r2, r5, r2
	bl ov21_021D3FA8
	adds r0, r6, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [sp, #0x18]
	bl FUN_020181C4
	adds r0, r7, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D367C: .4byte 0x000003DA
_021D3680: .4byte 0x00001738
	thumb_func_end ov21_021D3464

	thumb_func_start ov21_021D3684
ov21_021D3684: @ 0x021D3684
	push {r3, r4, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x24]
	str r4, [sp, #4]
	ldr r4, [sp, #0x28]
	str r4, [sp, #8]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0xc]
	movs r4, #0
	str r4, [sp, #0x10]
	bl ov21_021D3464
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov21_021D3684

	thumb_func_start ov21_021D36A4
ov21_021D36A4: @ 0x021D36A4
	cmp r1, #0
	bne _021D36AC
	movs r0, #1
	bx lr
_021D36AC:
	ldr r1, _021D36BC @ =0x00001734
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _021D36B8
	movs r0, #1
	bx lr
_021D36B8:
	movs r0, #0
	bx lr
	.align 2, 0
_021D36BC: .4byte 0x00001734
	thumb_func_end ov21_021D36A4

	thumb_func_start ov21_021D36C0
ov21_021D36C0: @ 0x021D36C0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D36A4
	cmp r0, #0
	beq _021D36D2
	ldr r1, _021D36D4 @ =0x00001730
	str r4, [r5, r1]
_021D36D2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D36D4: .4byte 0x00001730
	thumb_func_end ov21_021D36C0

	thumb_func_start ov21_021D36D8
ov21_021D36D8: @ 0x021D36D8
	ldr r1, _021D36E0 @ =0x00001730
	ldr r0, [r0, r1]
	bx lr
	nop
_021D36E0: .4byte 0x00001730
	thumb_func_end ov21_021D36D8

	thumb_func_start ov21_021D36E4
ov21_021D36E4: @ 0x021D36E4
	cmp r1, #0
	blt _021D36F6
	movs r2, #0xf7
	lsls r2, r2, #4
	ldr r0, [r0, r2]
	cmp r1, r0
	bge _021D36F6
	movs r0, #1
	bx lr
_021D36F6:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D36E4

	thumb_func_start ov21_021D36FC
ov21_021D36FC: @ 0x021D36FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D36E4
	cmp r0, #0
	beq _021D3712
	ldr r0, _021D3718 @ =0x00000F6C
	str r4, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D3712:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D3718: .4byte 0x00000F6C
	thumb_func_end ov21_021D36FC

	thumb_func_start ov21_021D371C
ov21_021D371C: @ 0x021D371C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, _021D3758 @ =0x00000F6C
	adds r5, r0, #0
	ldr r1, [r5, r1]
	adds r1, r1, r4
	bl ov21_021D36E4
	cmp r0, #0
	beq _021D373C
	ldr r0, _021D3758 @ =0x00000F6C
	ldr r1, [r5, r0]
	adds r1, r1, r4
	str r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D373C:
	cmp r4, #0
	blt _021D374C
	movs r0, #0xf7
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	subs r0, r0, #4
	subs r1, r1, #1
	b _021D3750
_021D374C:
	ldr r0, _021D3758 @ =0x00000F6C
	movs r1, #0
_021D3750:
	str r1, [r5, r0]
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D3758: .4byte 0x00000F6C
	thumb_func_end ov21_021D371C

	thumb_func_start ov21_021D375C
ov21_021D375C: @ 0x021D375C
	ldr r1, _021D3764 @ =0x00000F6C
	ldr r0, [r0, r1]
	bx lr
	nop
_021D3764: .4byte 0x00000F6C
	thumb_func_end ov21_021D375C

	thumb_func_start ov21_021D3768
ov21_021D3768: @ 0x021D3768
	movs r1, #0xf7
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov21_021D3768

	thumb_func_start ov21_021D3770
ov21_021D3770: @ 0x021D3770
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D3768
	movs r2, #0
	cmp r0, #0
	ble _021D378E
_021D3780:
	ldr r1, [r5, #4]
	cmp r1, r4
	beq _021D378E
	adds r2, r2, #1
	adds r5, #8
	cmp r2, r0
	blt _021D3780
_021D378E:
	adds r0, r2, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D3770

	thumb_func_start ov21_021D3794
ov21_021D3794: @ 0x021D3794
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov21_021D3768
	adds r4, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021D3770
	adds r1, r0, #0
	cmp r4, r1
	bls _021D37B6
	adds r0, r5, #0
	bl ov21_021D36FC
	pop {r4, r5, r6, pc}
_021D37B6:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D3794

	thumb_func_start ov21_021D37BC
ov21_021D37BC: @ 0x021D37BC
	ldr r1, _021D37C8 @ =0x00000F6C
	ldr r1, [r0, r1]
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
_021D37C8: .4byte 0x00000F6C
	thumb_func_end ov21_021D37BC

	thumb_func_start ov21_021D37CC
ov21_021D37CC: @ 0x021D37CC
	ldr r1, _021D37D8 @ =0x00000F6C
	ldr r1, [r0, r1]
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r0, [r0, #8]
	bx lr
	.align 2, 0
_021D37D8: .4byte 0x00000F6C
	thumb_func_end ov21_021D37CC

	thumb_func_start ov21_021D37DC
ov21_021D37DC: @ 0x021D37DC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D36E4
	cmp r0, #0
	beq _021D37F2
	adds r1, r5, #4
	lsls r0, r4, #3
	adds r0, r1, r0
	pop {r3, r4, r5, pc}
_021D37F2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D37DC

	thumb_func_start ov21_021D37F8
ov21_021D37F8: @ 0x021D37F8
	ldr r2, _021D380C @ =0x0000172C
	ldr r0, [r0, r2]
	cmp r0, r1
	ble _021D3808
	cmp r1, #0
	blt _021D3808
	movs r0, #1
	bx lr
_021D3808:
	movs r0, #0
	bx lr
	.align 2, 0
_021D380C: .4byte 0x0000172C
	thumb_func_end ov21_021D37F8

	thumb_func_start ov21_021D3810
ov21_021D3810: @ 0x021D3810
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D37F8
	cmp r0, #0
	beq _021D3836
	ldr r1, _021D383C @ =0x00001728
	adds r0, r5, #0
	str r4, [r5, r1]
	ldr r1, [r5, r1]
	lsls r1, r1, #2
	adds r2, r5, r1
	ldr r1, _021D3840 @ =0x00000F74
	ldr r1, [r2, r1]
	bl ov21_021D36FC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D3836:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D383C: .4byte 0x00001728
_021D3840: .4byte 0x00000F74
	thumb_func_end ov21_021D3810

	thumb_func_start ov21_021D3844
ov21_021D3844: @ 0x021D3844
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D387C
	cmp r0, #0
	beq _021D386E
	ldr r1, _021D3874 @ =0x00001728
	ldr r0, [r5, r1]
	adds r0, r0, r4
	str r0, [r5, r1]
	ldr r1, [r5, r1]
	adds r0, r5, #0
	lsls r1, r1, #2
	adds r2, r5, r1
	ldr r1, _021D3878 @ =0x00000F74
	ldr r1, [r2, r1]
	bl ov21_021D36FC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D386E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D3874: .4byte 0x00001728
_021D3878: .4byte 0x00000F74
	thumb_func_end ov21_021D3844

	thumb_func_start ov21_021D387C
ov21_021D387C: @ 0x021D387C
	push {r3, lr}
	ldr r2, _021D3894 @ =0x00001728
	ldr r2, [r0, r2]
	adds r1, r2, r1
	bl ov21_021D37F8
	cmp r0, #0
	beq _021D3890
	movs r0, #1
	pop {r3, pc}
_021D3890:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_021D3894: .4byte 0x00001728
	thumb_func_end ov21_021D387C

	thumb_func_start ov21_021D3898
ov21_021D3898: @ 0x021D3898
	ldr r1, _021D38A0 @ =0x00001728
	ldr r0, [r0, r1]
	bx lr
	nop
_021D38A0: .4byte 0x00001728
	thumb_func_end ov21_021D3898

	thumb_func_start ov21_021D38A4
ov21_021D38A4: @ 0x021D38A4
	ldr r1, _021D38AC @ =0x0000172C
	ldr r0, [r0, r1]
	bx lr
	nop
_021D38AC: .4byte 0x0000172C
	thumb_func_end ov21_021D38A4

	thumb_func_start ov21_021D38B0
ov21_021D38B0: @ 0x021D38B0
	lsls r1, r1, #2
	adds r1, r0, r1
	ldr r0, _021D38BC @ =0x00000F74
	ldr r0, [r1, r0]
	bx lr
	nop
_021D38BC: .4byte 0x00000F74
	thumb_func_end ov21_021D38B0

	thumb_func_start ov21_021D38C0
ov21_021D38C0: @ 0x021D38C0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _021D38F8 @ =0x0000172C
	movs r6, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _021D38F6
	ldr r7, _021D38F8 @ =0x0000172C
_021D38D0:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021D38B0
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov21_021D375C
	cmp r4, r0
	bne _021D38EE
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021D3810
	pop {r3, r4, r5, r6, r7, pc}
_021D38EE:
	ldr r0, [r5, r7]
	adds r6, r6, #1
	cmp r6, r0
	blt _021D38D0
_021D38F6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D38F8: .4byte 0x0000172C
	thumb_func_end ov21_021D38C0

	thumb_func_start ov21_021D38FC
ov21_021D38FC: @ 0x021D38FC
	ldr r1, _021D3904 @ =0x00001738
	ldr r0, [r0, r1]
	bx lr
	nop
_021D3904: .4byte 0x00001738
	thumb_func_end ov21_021D38FC

	thumb_func_start ov21_021D3908
ov21_021D3908: @ 0x021D3908
	ldr r1, _021D3910 @ =0x0000173C
	ldr r0, [r0, r1]
	bx lr
	nop
_021D3910: .4byte 0x0000173C
	thumb_func_end ov21_021D3908

	thumb_func_start ov21_021D3914
ov21_021D3914: @ 0x021D3914
	ldr r1, _021D391C @ =0x00001754
	ldr r0, [r0, r1]
	bx lr
	nop
_021D391C: .4byte 0x00001754
	thumb_func_end ov21_021D3914

	thumb_func_start ov21_021D3920
ov21_021D3920: @ 0x021D3920
	ldr r1, _021D3928 @ =0x00001750
	ldr r0, [r0, r1]
	bx lr
	nop
_021D3928: .4byte 0x00001750
	thumb_func_end ov21_021D3920

	thumb_func_start ov21_021D392C
ov21_021D392C: @ 0x021D392C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov21_021D37BC
	adds r4, r0, #0
	ldr r0, [r5]
	bl FUN_02027514
	cmp r0, #0
	bne _021D3946
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D3946:
	lsls r1, r4, #0x10
	ldr r0, [r5]
	lsrs r1, r1, #0x10
	adds r2, r6, #0
	bl FUN_020274D0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D392C

	thumb_func_start ov21_021D3954
ov21_021D3954: @ 0x021D3954
	ldr r3, _021D395C @ =FUN_02027494
	ldr r0, [r0]
	bx r3
	nop
_021D395C: .4byte FUN_02027494
	thumb_func_end ov21_021D3954

	thumb_func_start ov21_021D3960
ov21_021D3960: @ 0x021D3960
	ldr r1, _021D398C @ =0x021BF6BC
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	beq _021D3970
	ldr r1, _021D3990 @ =0x00001758
	movs r2, #0
	str r2, [r0, r1]
	bx lr
_021D3970:
	ldr r1, _021D3994 @ =0x021BF67C
	ldr r1, [r1, #0x48]
	cmp r1, #0
	beq _021D398A
	ldr r1, _021D3990 @ =0x00001758
	ldr r2, [r0, r1]
	cmp r2, #0
	bne _021D3986
	movs r2, #1
	str r2, [r0, r1]
	bx lr
_021D3986:
	movs r2, #2
	str r2, [r0, r1]
_021D398A:
	bx lr
	.align 2, 0
_021D398C: .4byte 0x021BF6BC
_021D3990: .4byte 0x00001758
_021D3994: .4byte 0x021BF67C
	thumb_func_end ov21_021D3960

	thumb_func_start ov21_021D3998
ov21_021D3998: @ 0x021D3998
	ldr r1, _021D39A0 @ =0x00001758
	ldr r0, [r0, r1]
	bx lr
	nop
_021D39A0: .4byte 0x00001758
	thumb_func_end ov21_021D3998

	thumb_func_start ov21_021D39A4
ov21_021D39A4: @ 0x021D39A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [sp, #0x20]
	adds r5, r1, #0
	movs r6, #0
	adds r4, r3, #0
	str r0, [sp]
	str r2, [sp, #4]
	str r6, [r5]
	cmp r7, #0
	ble _021D39DE
_021D39BA:
	ldrh r1, [r4]
	ldr r0, [sp, #4]
	bl FUN_02026FE8
	cmp r0, #0
	beq _021D39D6
	ldr r1, [r5]
	ldrh r0, [r4]
	lsls r2, r1, #1
	ldr r1, [sp]
	strh r0, [r1, r2]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
_021D39D6:
	adds r6, r6, #1
	adds r4, r4, #2
	cmp r6, r7
	blt _021D39BA
_021D39DE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D39A4

	thumb_func_start ov21_021D39E4
ov21_021D39E4: @ 0x021D39E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r1, [sp, #4]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x30]
	movs r1, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	adds r6, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #4]
	str r3, [sp, #8]
	str r1, [r0]
	adds r0, r3, #0
	ldr r7, [sp, #0x2c]
	str r1, [sp, #0xc]
	cmp r0, #0
	ble _021D3A5C
_021D3A0C:
	movs r4, #0
	cmp r7, #0
	ble _021D3A34
	ldr r5, [sp, #0x28]
_021D3A14:
	ldrh r1, [r6]
	ldrh r0, [r5]
	cmp r1, r0
	bne _021D3A2C
	ldr r0, [sp, #0x30]
	cmp r0, #1
	beq _021D3A34
	ldr r0, [sp, #0x34]
	bl FUN_02026F9C
	cmp r0, #0
	bne _021D3A34
_021D3A2C:
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, r7
	blt _021D3A14
_021D3A34:
	cmp r4, r7
	bge _021D3A4E
	ldr r0, [sp, #4]
	ldrh r2, [r6]
	ldr r0, [r0]
	lsls r1, r0, #1
	ldr r0, [sp]
	strh r2, [r0, r1]
	ldr r0, [sp, #4]
	ldr r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0]
_021D3A4E:
	ldr r0, [sp, #0xc]
	adds r6, r6, #2
	adds r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _021D3A0C
_021D3A5C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D39E4

	thumb_func_start ov21_021D3A60
ov21_021D3A60: @ 0x021D3A60
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _021D3AB4 @ =0x00000F6C
	movs r6, #0
	adds r7, r3, #0
	adds r4, r2, #0
	str r1, [sp]
	str r6, [r5, r0]
	cmp r7, #0
	ble _021D3AB2
_021D3A74:
	ldrh r1, [r4]
	ldr r0, [sp]
	bl FUN_02026F9C
	cmp r0, #0
	ldr r0, _021D3AB4 @ =0x00000F6C
	beq _021D3A8C
	ldr r0, [r5, r0]
	lsls r0, r0, #3
	adds r1, r5, r0
	movs r0, #2
	b _021D3A94
_021D3A8C:
	ldr r0, [r5, r0]
	lsls r0, r0, #3
	adds r1, r5, r0
	movs r0, #1
_021D3A94:
	str r0, [r1, #4]
	ldr r1, _021D3AB4 @ =0x00000F6C
	ldrh r0, [r4]
	ldr r1, [r5, r1]
	adds r6, r6, #1
	lsls r1, r1, #3
	str r0, [r5, r1]
	ldr r0, _021D3AB4 @ =0x00000F6C
	adds r4, r4, #2
	ldr r0, [r5, r0]
	adds r1, r0, #1
	ldr r0, _021D3AB4 @ =0x00000F6C
	str r1, [r5, r0]
	cmp r6, r7
	blt _021D3A74
_021D3AB2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3AB4: .4byte 0x00000F6C
	thumb_func_end ov21_021D3A60

	thumb_func_start ov21_021D3AB8
ov21_021D3AB8: @ 0x021D3AB8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r4, #0
	ldr r1, _021D3B1C @ =0x00001728
	mov ip, r2
	str r4, [r0, r1]
	adds r1, r2, #0
	mov lr, r4
	cmp r1, #0
	ble _021D3B1A
	ldr r7, _021D3B1C @ =0x00001728
	adds r5, r0, #0
_021D3AD0:
	ldr r1, _021D3B20 @ =0x00000F6C
	ldr r1, [r0, r1]
	cmp r4, r1
	bge _021D3B0C
	ldrh r1, [r6]
	ldr r2, [r5]
	cmp r2, r1
	ldr r1, _021D3B1C @ =0x00001728
	bne _021D3AFA
	ldr r1, [r0, r1]
	adds r5, #8
	lsls r1, r1, #2
	adds r2, r0, r1
	movs r1, #0xf7
	lsls r1, r1, #4
	str r4, [r2, r1]
	ldr r1, [r0, r7]
	adds r4, r4, #1
	adds r1, r1, #1
	str r1, [r0, r7]
	b _021D3B0C
_021D3AFA:
	ldr r1, [r0, r1]
	ldr r2, _021D3B24 @ =0x000001EE
	lsls r1, r1, #2
	adds r3, r0, r1
	lsls r1, r2, #3
	str r2, [r3, r1]
	ldr r1, [r0, r7]
	adds r1, r1, #1
	str r1, [r0, r7]
_021D3B0C:
	mov r1, lr
	adds r1, r1, #1
	mov r2, ip
	adds r6, r6, #2
	mov lr, r1
	cmp r1, r2
	blt _021D3AD0
_021D3B1A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D3B1C: .4byte 0x00001728
_021D3B20: .4byte 0x00000F6C
_021D3B24: .4byte 0x000001EE
	thumb_func_end ov21_021D3AB8

	thumb_func_start ov21_021D3B28
ov21_021D3B28: @ 0x021D3B28
	push {r3, r4, r5, r6}
	ldr r2, _021D3B5C @ =0x00001728
	movs r1, #0
	str r1, [r0, r2]
	ldr r2, _021D3B60 @ =0x00000F6C
	ldr r2, [r0, r2]
	cmp r2, #0
	ble _021D3B58
	ldr r5, _021D3B5C @ =0x00001728
	movs r3, #0xf7
	lsls r3, r3, #4
	adds r2, r5, #0
	subs r4, r3, #4
_021D3B42:
	ldr r6, [r0, r2]
	lsls r6, r6, #2
	adds r6, r0, r6
	str r1, [r6, r3]
	ldr r6, [r0, r5]
	adds r1, r1, #1
	adds r6, r6, #1
	str r6, [r0, r5]
	ldr r6, [r0, r4]
	cmp r1, r6
	blt _021D3B42
_021D3B58:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_021D3B5C: .4byte 0x00001728
_021D3B60: .4byte 0x00000F6C
	thumb_func_end ov21_021D3B28

	thumb_func_start ov21_021D3B64
ov21_021D3B64: @ 0x021D3B64
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r0, #0
	adds r4, r2, #0
	cmp r5, #0x2f
	blt _021D3B76
	bl FUN_02022974
_021D3B76:
	bl FUN_020989B8
	movs r2, #0
	str r2, [sp]
	add r1, sp, #8
	adds r5, #0xb
	str r1, [sp, #4]
	adds r1, r5, #0
	adds r3, r6, #0
	bl FUN_02007068
	ldr r1, [sp, #8]
	lsrs r1, r1, #1
	str r1, [r4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D3B64

	thumb_func_start ov21_021D3B98
ov21_021D3B98: @ 0x021D3B98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	str r1, [sp, #0x10]
	adds r7, r2, #0
	movs r4, #0
	str r3, [sp, #0x14]
	ldr r0, [sp, #0x34]
	cmp r5, #5
	bhi _021D3C06
	adds r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3BB8: @ jump table
	.2byte _021D3BC4 - _021D3BB8 - 2 @ case 0
	.2byte _021D3BC8 - _021D3BB8 - 2 @ case 1
	.2byte _021D3BD6 - _021D3BB8 - 2 @ case 2
	.2byte _021D3BE2 - _021D3BB8 - 2 @ case 3
	.2byte _021D3BEE - _021D3BB8 - 2 @ case 4
	.2byte _021D3BFA - _021D3BB8 - 2 @ case 5
_021D3BC4:
	adds r6, r4, #0
	b _021D3C0A
_021D3BC8:
	movs r1, #2
	add r2, sp, #0x18
	bl ov21_021D3B64
	adds r6, r0, #0
	movs r4, #1
	b _021D3C0A
_021D3BD6:
	movs r1, #3
	add r2, sp, #0x18
	bl ov21_021D3B64
	adds r6, r0, #0
	b _021D3C0A
_021D3BE2:
	movs r1, #4
	add r2, sp, #0x18
	bl ov21_021D3B64
	adds r6, r0, #0
	b _021D3C0A
_021D3BEE:
	movs r1, #5
	add r2, sp, #0x18
	bl ov21_021D3B64
	adds r6, r0, #0
	b _021D3C0A
_021D3BFA:
	movs r1, #6
	add r2, sp, #0x18
	bl ov21_021D3B64
	adds r6, r0, #0
	b _021D3C0A
_021D3C06:
	bl FUN_02022974
_021D3C0A:
	cmp r6, #0
	beq _021D3C32
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x30]
	adds r2, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x18]
	bl ov21_021D39E4
	adds r0, r6, #0
	bl FUN_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_021D3C32:
	ldr r2, [sp, #0x30]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r0, [sp, #0x30]
	str r0, [r7]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D3B98

	thumb_func_start ov21_021D3C48
ov21_021D3C48: @ 0x021D3C48
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x34]
	cmp r5, #9
	bhi _021D3CEA
	adds r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3C66: @ jump table
	.2byte _021D3C7A - _021D3C66 - 2 @ case 0
	.2byte _021D3C7E - _021D3C66 - 2 @ case 1
	.2byte _021D3C8A - _021D3C66 - 2 @ case 2
	.2byte _021D3C96 - _021D3C66 - 2 @ case 3
	.2byte _021D3CA2 - _021D3C66 - 2 @ case 4
	.2byte _021D3CAE - _021D3C66 - 2 @ case 5
	.2byte _021D3CBA - _021D3C66 - 2 @ case 6
	.2byte _021D3CC6 - _021D3C66 - 2 @ case 7
	.2byte _021D3CD2 - _021D3C66 - 2 @ case 8
	.2byte _021D3CDE - _021D3C66 - 2 @ case 9
_021D3C7A:
	movs r4, #0
	b _021D3CEE
_021D3C7E:
	movs r1, #7
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3C8A:
	movs r1, #8
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3C96:
	movs r1, #9
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3CA2:
	movs r1, #0xa
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3CAE:
	movs r1, #0xb
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3CBA:
	movs r1, #0xc
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3CC6:
	movs r1, #0xd
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3CD2:
	movs r1, #0xe
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3CDE:
	movs r1, #0xf
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3CEE
_021D3CEA:
	bl FUN_02022974
_021D3CEE:
	cmp r4, #0
	beq _021D3D16
	str r4, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021D39E4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D3D16:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	adds r0, r7, #0
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r0, [sp, #0x30]
	str r0, [r6]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D3C48

	thumb_func_start ov21_021D3D2C
ov21_021D3D2C: @ 0x021D3D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x34]
	cmp r5, #0x11
	bhi _021D3E3E
	adds r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3D4A: @ jump table
	.2byte _021D3D6E - _021D3D4A - 2 @ case 0
	.2byte _021D3D72 - _021D3D4A - 2 @ case 1
	.2byte _021D3D7E - _021D3D4A - 2 @ case 2
	.2byte _021D3D8A - _021D3D4A - 2 @ case 3
	.2byte _021D3D96 - _021D3D4A - 2 @ case 4
	.2byte _021D3DA2 - _021D3D4A - 2 @ case 5
	.2byte _021D3DAE - _021D3D4A - 2 @ case 6
	.2byte _021D3DBA - _021D3D4A - 2 @ case 7
	.2byte _021D3DC6 - _021D3D4A - 2 @ case 8
	.2byte _021D3DD2 - _021D3D4A - 2 @ case 9
	.2byte _021D3DDE - _021D3D4A - 2 @ case 10
	.2byte _021D3DEA - _021D3D4A - 2 @ case 11
	.2byte _021D3DF6 - _021D3D4A - 2 @ case 12
	.2byte _021D3E02 - _021D3D4A - 2 @ case 13
	.2byte _021D3E0E - _021D3D4A - 2 @ case 14
	.2byte _021D3E1A - _021D3D4A - 2 @ case 15
	.2byte _021D3E26 - _021D3D4A - 2 @ case 16
	.2byte _021D3E32 - _021D3D4A - 2 @ case 17
_021D3D6E:
	movs r4, #0
	b _021D3E42
_021D3D72:
	movs r1, #0x10
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3D7E:
	movs r1, #0x11
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3D8A:
	movs r1, #0x12
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3D96:
	movs r1, #0x13
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3DA2:
	movs r1, #0x14
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3DAE:
	movs r1, #0x15
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3DBA:
	movs r1, #0x16
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3DC6:
	movs r1, #0x17
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3DD2:
	movs r1, #0x18
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3DDE:
	movs r1, #0x19
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3DEA:
	movs r1, #0x1a
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3DF6:
	movs r1, #0x1b
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3E02:
	movs r1, #0x1c
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3E0E:
	movs r1, #0x1d
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3E1A:
	movs r1, #0x1e
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3E26:
	movs r1, #0x1f
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3E32:
	movs r1, #0x20
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3E42
_021D3E3E:
	bl FUN_02022974
_021D3E42:
	cmp r4, #0
	beq _021D3E6A
	str r4, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021D39E4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D3E6A:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	adds r0, r7, #0
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r0, [sp, #0x30]
	str r0, [r6]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D3D2C

	thumb_func_start ov21_021D3E80
ov21_021D3E80: @ 0x021D3E80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	str r3, [sp, #0x10]
	ldr r0, [sp, #0x34]
	cmp r5, #0xe
	bhi _021D3F68
	adds r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3E9E: @ jump table
	.2byte _021D3EBC - _021D3E9E - 2 @ case 0
	.2byte _021D3EC0 - _021D3E9E - 2 @ case 1
	.2byte _021D3ECC - _021D3E9E - 2 @ case 2
	.2byte _021D3ED8 - _021D3E9E - 2 @ case 3
	.2byte _021D3EE4 - _021D3E9E - 2 @ case 4
	.2byte _021D3EF0 - _021D3E9E - 2 @ case 5
	.2byte _021D3EFC - _021D3E9E - 2 @ case 6
	.2byte _021D3F08 - _021D3E9E - 2 @ case 7
	.2byte _021D3F14 - _021D3E9E - 2 @ case 8
	.2byte _021D3F20 - _021D3E9E - 2 @ case 9
	.2byte _021D3F2C - _021D3E9E - 2 @ case 10
	.2byte _021D3F38 - _021D3E9E - 2 @ case 11
	.2byte _021D3F44 - _021D3E9E - 2 @ case 12
	.2byte _021D3F50 - _021D3E9E - 2 @ case 13
	.2byte _021D3F5C - _021D3E9E - 2 @ case 14
_021D3EBC:
	movs r4, #0
	b _021D3F6C
_021D3EC0:
	movs r1, #0x21
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3ECC:
	movs r1, #0x22
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3ED8:
	movs r1, #0x23
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3EE4:
	movs r1, #0x24
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3EF0:
	movs r1, #0x25
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3EFC:
	movs r1, #0x26
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F08:
	movs r1, #0x27
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F14:
	movs r1, #0x28
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F20:
	movs r1, #0x29
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F2C:
	movs r1, #0x2a
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F38:
	movs r1, #0x2b
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F44:
	movs r1, #0x2c
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F50:
	movs r1, #0x2d
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F5C:
	movs r1, #0x2e
	add r2, sp, #0x14
	bl ov21_021D3B64
	adds r4, r0, #0
	b _021D3F6C
_021D3F68:
	bl FUN_02022974
_021D3F6C:
	cmp r4, #0
	beq _021D3F94
	str r4, [sp]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x30]
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021D39E4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D3F94:
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x10]
	adds r0, r7, #0
	lsls r2, r2, #1
	blx FUN_020D50B8
	ldr r0, [sp, #0x30]
	str r0, [r6]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D3E80

	thumb_func_start ov21_021D3FA8
ov21_021D3FA8: @ 0x021D3FA8
	push {r3, r4, r5, r6}
	movs r3, #0
	str r3, [r1]
	ldr r4, _021D3FDC @ =0x00000F6C
	str r3, [r2]
	ldr r4, [r0, r4]
	cmp r4, #0
	ble _021D3FD8
	ldr r5, _021D3FDC @ =0x00000F6C
	adds r4, r0, #0
_021D3FBC:
	ldr r6, [r4, #4]
	cmp r6, #2
	bne _021D3FC8
	ldr r6, [r2]
	adds r6, r6, #1
	str r6, [r2]
_021D3FC8:
	ldr r6, [r1]
	adds r3, r3, #1
	adds r6, r6, #1
	str r6, [r1]
	ldr r6, [r0, r5]
	adds r4, #8
	cmp r3, r6
	blt _021D3FBC
_021D3FD8:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
_021D3FDC: .4byte 0x00000F6C
	thumb_func_end ov21_021D3FA8

	thumb_func_start ov21_021D3FE0
ov21_021D3FE0: @ 0x021D3FE0
	push {r3, r4, r5, lr}
	movs r1, #0x48
	adds r5, r0, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D3FF2
	bl FUN_02022974
_021D3FF2:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x48
	blx FUN_020D5124
	movs r0, #5
	str r0, [r4, #8]
	str r5, [r4, #0x44]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D3FE0

	thumb_func_start ov21_021D4008
ov21_021D4008: @ 0x021D4008
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	bne _021D4016
	bl FUN_02022974
_021D4016:
	cmp r4, #0
	bne _021D401E
	bl FUN_02022974
_021D401E:
	adds r0, r5, #0
	bl ov21_021D41A8
	cmp r0, #0
	bne _021D402C
	bl FUN_02022974
_021D402C:
	ldr r0, [r4]
	str r0, [r5]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xc
	bl ov21_021D41D8
	ldr r0, [r5, #0x44]
	str r0, [r5, #0x10]
	adds r0, r5, #0
	adds r0, #0x2c
	bl ov21_021D41E4
	ldr r0, [r5, #0x44]
	str r0, [r5, #0x30]
	ldr r0, [r4, #8]
	ldr r0, [r0]
	str r0, [r5, #0x20]
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	str r0, [r5, #0x24]
	ldr r0, [r4, #8]
	ldr r0, [r0, #8]
	str r0, [r5, #0x28]
	ldr r0, [r4, #0xc]
	ldr r0, [r0]
	str r0, [r5, #0x38]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #4]
	str r0, [r5, #0x3c]
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #8]
	str r0, [r5, #0x40]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D4008

	thumb_func_start ov21_021D4078
ov21_021D4078: @ 0x021D4078
	push {r4, lr}
	adds r4, r0, #0
	bne _021D4082
	bl FUN_02022974
_021D4082:
	ldr r0, [r4, #8]
	cmp r0, #5
	bhi _021D40F6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D4094: @ jump table
	.2byte _021D40A0 - _021D4094 - 2 @ case 0
	.2byte _021D40FA - _021D4094 - 2 @ case 1
	.2byte _021D40BC - _021D4094 - 2 @ case 2
	.2byte _021D40FA - _021D4094 - 2 @ case 3
	.2byte _021D40DA - _021D4094 - 2 @ case 4
	.2byte _021D40F2 - _021D4094 - 2 @ case 5
_021D40A0:
	adds r1, r4, #0
	ldr r0, [r4, #0x20]
	ldr r2, [r4]
	adds r1, #0xc
	bl ov21_021D41EC
	cmp r0, #1
	bne _021D40FA
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	b _021D40FA
_021D40BC:
	adds r1, r4, #0
	ldr r0, [r4, #0x24]
	ldr r2, [r4]
	adds r1, #0xc
	bl ov21_021D41EC
	cmp r0, #1
	bne _021D40FA
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x2c]
	b _021D40FA
_021D40DA:
	adds r1, r4, #0
	ldr r0, [r4, #0x28]
	ldr r2, [r4]
	adds r1, #0xc
	bl ov21_021D41EC
	cmp r0, #1
	bne _021D40FA
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _021D40FA
_021D40F2:
	movs r0, #1
	pop {r4, pc}
_021D40F6:
	bl FUN_02022974
_021D40FA:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D4078

	thumb_func_start ov21_021D4100
ov21_021D4100: @ 0x021D4100
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bne _021D410C
	bl FUN_02022974
_021D410C:
	ldr r0, [r4, #8]
	cmp r0, #5
	bhi _021D418A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D411E: @ jump table
	.2byte _021D418E - _021D411E - 2 @ case 0
	.2byte _021D412A - _021D411E - 2 @ case 1
	.2byte _021D414E - _021D411E - 2 @ case 2
	.2byte _021D4164 - _021D411E - 2 @ case 3
	.2byte _021D418E - _021D411E - 2 @ case 4
	.2byte _021D4184 - _021D411E - 2 @ case 5
_021D412A:
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [sp]
	adds r2, r4, #0
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #4]
	ldr r3, [r4]
	adds r2, #0x2c
	bl ov21_021D420C
	cmp r0, #1
	bne _021D418E
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x2c]
	b _021D418E
_021D414E:
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [sp]
	adds r2, r4, #0
	ldr r0, [r4, #0x3c]
	ldr r1, [r4, #4]
	ldr r3, [r4]
	adds r2, #0x2c
	bl ov21_021D420C
	b _021D418E
_021D4164:
	adds r0, r4, #0
	adds r0, #0xc
	str r0, [sp]
	adds r2, r4, #0
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #4]
	ldr r3, [r4]
	adds r2, #0x2c
	bl ov21_021D420C
	cmp r0, #1
	bne _021D418E
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _021D418E
_021D4184:
	add sp, #4
	movs r0, #1
	pop {r3, r4, pc}
_021D418A:
	bl FUN_02022974
_021D418E:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D4100

	thumb_func_start ov21_021D4194
ov21_021D4194: @ 0x021D4194
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov21_021D4194

	thumb_func_start ov21_021D4198
ov21_021D4198: @ 0x021D4198
	push {r4, lr}
	adds r4, r0, #0
	bne _021D41A2
	bl FUN_02022974
_021D41A2:
	movs r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov21_021D4198

	thumb_func_start ov21_021D41A8
ov21_021D41A8: @ 0x021D41A8
	push {r4, lr}
	adds r4, r0, #0
	bne _021D41B2
	bl FUN_02022974
_021D41B2:
	ldr r0, [r4, #8]
	cmp r0, #5
	bne _021D41BC
	movs r0, #1
	pop {r4, pc}
_021D41BC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021D41A8

	thumb_func_start ov21_021D41C0
ov21_021D41C0: @ 0x021D41C0
	push {r4, lr}
	adds r4, r0, #0
	bne _021D41CA
	bl FUN_02022974
_021D41CA:
	ldr r0, [r4, #8]
	cmp r0, #2
	bne _021D41D4
	movs r0, #1
	pop {r4, pc}
_021D41D4:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021D41C0

	thumb_func_start ov21_021D41D8
ov21_021D41D8: @ 0x021D41D8
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D41D8

	thumb_func_start ov21_021D41E4
ov21_021D41E4: @ 0x021D41E4
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov21_021D41E4

	thumb_func_start ov21_021D41EC
ov21_021D41EC: @ 0x021D41EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r5, #0
	bne _021D41FC
	bl FUN_02022974
_021D41FC:
	cmp r4, #0
	bne _021D4204
	bl FUN_02022974
_021D4204:
	adds r0, r4, #0
	adds r1, r6, #0
	blx r5
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D41EC

	thumb_func_start ov21_021D420C
ov21_021D420C: @ 0x021D420C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	cmp r5, #0
	bne _021D421E
	bl FUN_02022974
_021D421E:
	cmp r4, #0
	bne _021D4226
	bl FUN_02022974
_021D4226:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021D4230
	bl FUN_02022974
_021D4230:
	ldr r3, [sp, #0x18]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	blx r5
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D420C

	thumb_func_start ov21_021D423C
ov21_021D423C: @ 0x021D423C
	push {r4, lr}
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D424C
	bl FUN_02022974
_021D424C:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D423C

	thumb_func_start ov21_021D426C
ov21_021D426C: @ 0x021D426C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r5, #0
	bne _021D427C
	bl FUN_02022974
_021D427C:
	str r4, [r5]
	str r6, [r5, #4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D426C

	thumb_func_start ov21_021D4284
ov21_021D4284: @ 0x021D4284
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0
	bne _021D4292
	bl FUN_02022974
_021D4292:
	adds r0, r4, #0
	bl ov21_021D42EC
	cmp r0, #0
	bne _021D42AE
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D42FC
	adds r1, r0, #0
	beq _021D42AE
	adds r0, r4, #0
	bl ov21_021D4334
_021D42AE:
	adds r0, r4, #0
	bl ov21_021D42EC
	cmp r0, #1
	bne _021D42CE
	ldr r1, [r4, #8]
	adds r0, r1, #0
	ldr r1, [r1, #4]
	adds r0, #8
	blx r1
	cmp r0, #1
	bne _021D42CE
	adds r0, r4, #0
	movs r1, #0
	bl ov21_021D4334
_021D42CE:
	ldr r0, [r4, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D4284

	thumb_func_start ov21_021D42D4
ov21_021D42D4: @ 0x021D42D4
	push {r4, lr}
	adds r4, r0, #0
	bne _021D42DE
	bl FUN_02022974
_021D42DE:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021D42E8
	movs r0, #1
	pop {r4, pc}
_021D42E8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021D42D4

	thumb_func_start ov21_021D42EC
ov21_021D42EC: @ 0x021D42EC
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021D42F6
	movs r0, #1
	bx lr
_021D42F6:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D42EC

	thumb_func_start ov21_021D42FC
ov21_021D42FC: @ 0x021D42FC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r7, r1, #0
	movs r6, #0
	cmp r0, #0
	ble _021D4330
	adds r4, r6, #0
_021D430C:
	ldr r0, [r5]
	cmp r0, #0
	bne _021D4316
	bl FUN_02022974
_021D4316:
	ldr r0, [r5]
	ldr r1, [r0, r4]
	tst r1, r7
	beq _021D4326
	movs r1, #0x14
	muls r1, r6, r1
	adds r0, r0, r1
	pop {r3, r4, r5, r6, r7, pc}
_021D4326:
	ldr r0, [r5, #4]
	adds r6, r6, #1
	adds r4, #0x14
	cmp r6, r0
	blt _021D430C
_021D4330:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D42FC

	thumb_func_start ov21_021D4334
ov21_021D4334: @ 0x021D4334
	str r1, [r0, #8]
	cmp r1, #0
	beq _021D433E
	movs r0, #0
	str r0, [r1, #8]
_021D433E:
	bx lr
	thumb_func_end ov21_021D4334

	thumb_func_start ov21_021D4340
ov21_021D4340: @ 0x021D4340
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r2, [r4, #8]
	cmp r0, #3
	bhi _021D43A0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D4358: @ jump table
	.2byte _021D4360 - _021D4358 - 2 @ case 0
	.2byte _021D436E - _021D4358 - 2 @ case 1
	.2byte _021D4380 - _021D4358 - 2 @ case 2
	.2byte _021D4392 - _021D4358 - 2 @ case 3
_021D4360:
	ldr r0, [r2, #4]
	bl ov21_021D4198
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D43A4
_021D436E:
	ldr r0, [r2, #4]
	bl ov21_021D41A8
	cmp r0, #1
	bne _021D43A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D43A4
_021D4380:
	ldr r0, [r2]
	ldr r1, [r2, #8]
	ldr r2, [r2, #4]
	bl ov21_021D4628
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D43A4
_021D4392:
	ldr r0, [r2, #4]
	bl ov21_021D41C0
	cmp r0, #1
	bne _021D43A4
	movs r0, #1
	pop {r4, pc}
_021D43A0:
	bl FUN_02022974
_021D43A4:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021D4340

	thumb_func_start ov21_021D43A8
ov21_021D43A8: @ 0x021D43A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r4, [r5, #8]
	cmp r0, #0
	beq _021D43C0
	cmp r0, #1
	beq _021D43E0
	cmp r0, #2
	beq _021D441E
	b _021D4428
_021D43C0:
	ldr r0, [r4]
	bl ov21_021D4198
	ldr r0, [r4, #4]
	bl ov21_021D4198
	ldr r0, [r4, #8]
	bl ov21_021D4198
	ldr r0, [r4, #0xc]
	bl ov21_021D4198
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D442C
_021D43E0:
	ldr r0, [r4]
	bl ov21_021D41A8
	str r0, [sp]
	ldr r0, [r4, #4]
	bl ov21_021D41A8
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov21_021D41A8
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl ov21_021D41A8
	str r0, [sp, #0xc]
	movs r1, #0
	add r2, sp, #0
_021D4404:
	ldr r0, [r2]
	cmp r0, #0
	beq _021D4412
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #4
	blt _021D4404
_021D4412:
	cmp r1, #4
	blt _021D442C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D442C
_021D441E:
	ldr r1, [r4, #0x10]
	movs r0, #1
	str r0, [r1]
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D4428:
	bl FUN_02022974
_021D442C:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D43A8

	thumb_func_start ov21_021D4434
ov21_021D4434: @ 0x021D4434
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r4, [r5, #8]
	cmp r0, #3
	bls _021D4444
	b _021D454C
_021D4444:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D4450: @ jump table
	.2byte _021D4458 - _021D4450 - 2 @ case 0
	.2byte _021D4478 - _021D4450 - 2 @ case 1
	.2byte _021D44B6 - _021D4450 - 2 @ case 2
	.2byte _021D44E6 - _021D4450 - 2 @ case 3
_021D4458:
	ldr r0, [r4]
	bl ov21_021D4198
	ldr r0, [r4, #4]
	bl ov21_021D4198
	ldr r0, [r4, #8]
	bl ov21_021D4198
	ldr r0, [r4, #0xc]
	bl ov21_021D4198
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D4550
_021D4478:
	ldr r0, [r4]
	bl ov21_021D41A8
	str r0, [sp]
	ldr r0, [r4, #4]
	bl ov21_021D41A8
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov21_021D41A8
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	bl ov21_021D41A8
	str r0, [sp, #0xc]
	movs r1, #0
	add r2, sp, #0
_021D449C:
	ldr r0, [r2]
	cmp r0, #0
	beq _021D44AA
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #4
	blt _021D449C
_021D44AA:
	cmp r1, #4
	blt _021D4550
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D4550
_021D44B6:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x10]
	ldr r2, [r4]
	bl ov21_021D4628
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #4]
	bl ov21_021D4628
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #8]
	bl ov21_021D4628
	ldr r0, [r4, #0x2c]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0xc]
	bl ov21_021D4628
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D4550
_021D44E6:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021D44F6
	ldr r0, [r4]
	bl ov21_021D41C0
	str r0, [sp]
	b _021D44FA
_021D44F6:
	movs r0, #1
	str r0, [sp]
_021D44FA:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _021D4508
	ldr r0, [r4, #4]
	bl ov21_021D41C0
	str r0, [sp, #4]
_021D4508:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D4518
	ldr r0, [r4, #8]
	bl ov21_021D41C0
	str r0, [sp, #8]
	b _021D451C
_021D4518:
	movs r0, #1
	str r0, [sp, #8]
_021D451C:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021D452C
	ldr r0, [r4, #0xc]
	bl ov21_021D41C0
	str r0, [sp, #0xc]
	b _021D4530
_021D452C:
	movs r0, #1
	str r0, [sp, #0xc]
_021D4530:
	movs r2, #0
	add r1, sp, #0
_021D4534:
	ldr r0, [r1]
	cmp r0, #0
	beq _021D4542
	adds r2, r2, #1
	adds r1, r1, #4
	cmp r2, #4
	blt _021D4534
_021D4542:
	cmp r2, #4
	blt _021D4550
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D454C:
	bl FUN_02022974
_021D4550:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D4434

	thumb_func_start ov21_021D4558
ov21_021D4558: @ 0x021D4558
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r4, [r5, #8]
	cmp r0, #3
	bhi _021D461C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D4572: @ jump table
	.2byte _021D457A - _021D4572 - 2 @ case 0
	.2byte _021D458E - _021D4572 - 2 @ case 1
	.2byte _021D45BC - _021D4572 - 2 @ case 2
	.2byte _021D45D8 - _021D4572 - 2 @ case 3
_021D457A:
	ldr r0, [r4]
	bl ov21_021D4198
	ldr r0, [r4, #4]
	bl ov21_021D4198
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D4620
_021D458E:
	ldr r0, [r4]
	bl ov21_021D41A8
	str r0, [sp]
	ldr r0, [r4, #4]
	bl ov21_021D41A8
	str r0, [sp, #4]
	movs r1, #0
	add r2, sp, #0
_021D45A2:
	ldr r0, [r2]
	cmp r0, #0
	beq _021D45B0
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #2
	blt _021D45A2
_021D45B0:
	cmp r1, #2
	blt _021D4620
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D4620
_021D45BC:
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r2, [r4]
	bl ov21_021D4628
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #4]
	bl ov21_021D4628
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D4620
_021D45D8:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021D45E8
	ldr r0, [r4]
	bl ov21_021D41C0
	str r0, [sp]
	b _021D45EC
_021D45E8:
	movs r0, #1
	str r0, [sp]
_021D45EC:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021D45FC
	ldr r0, [r4, #4]
	bl ov21_021D41C0
	str r0, [sp, #4]
	b _021D4600
_021D45FC:
	movs r0, #1
	str r0, [sp, #4]
_021D4600:
	movs r2, #0
	add r1, sp, #0
_021D4604:
	ldr r0, [r1]
	cmp r0, #0
	beq _021D4612
	adds r2, r2, #1
	adds r1, r1, #4
	cmp r2, #2
	blt _021D4604
_021D4612:
	cmp r2, #2
	blt _021D4620
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D461C:
	bl FUN_02022974
_021D4620:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D4558

	thumb_func_start ov21_021D4628
ov21_021D4628: @ 0x021D4628
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r5, #0
	beq _021D465A
	ldr r0, [r5]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #8
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x14
	str r0, [sp, #0xc]
	adds r0, r2, #0
	bl ov21_021D4008
	ldr r1, [r5, #0x20]
	ldr r2, [r5, #0x24]
	adds r0, r4, #0
	bl ov21_021D426C
_021D465A:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D4628

	thumb_func_start ov21_021D4660
ov21_021D4660: @ 0x021D4660
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021D466E
	bl FUN_02022974
_021D466E:
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D4660

	thumb_func_start ov21_021D467C
ov21_021D467C: @ 0x021D467C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r1, _021D4700 @ =ov21_021D4434
	str r3, [r6]
	str r1, [r6, #4]
	movs r1, #0x30
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4696
	bl FUN_02022974
_021D4696:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x30
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r5, #0
	bl ov21_021D1314
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov21_021D1328
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl ov21_021D133C
	str r0, [r4, #0x10]
	adds r0, r5, #0
	bl ov21_021D1350
	str r0, [r4, #0x14]
	adds r0, r5, #0
	bl ov21_021D1364
	str r0, [r4, #0x18]
	adds r0, r5, #0
	bl ov21_021D1378
	str r0, [r4, #0x1c]
	adds r0, r5, #0
	movs r1, #1
	bl ov21_021D1410
	str r0, [r4, #0x20]
	adds r0, r5, #0
	movs r1, #1
	bl ov21_021D1430
	str r0, [r4, #0x24]
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4700: .4byte ov21_021D4434
	thumb_func_end ov21_021D467C

	thumb_func_start ov21_021D4704
ov21_021D4704: @ 0x021D4704
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D4758 @ =ov21_021D43A8
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0x14
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D471E
	bl FUN_02022974
_021D471E:
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_021D4724:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D4724
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D1314
	str r0, [r4, #8]
	adds r0, r6, #0
	bl ov21_021D1328
	str r0, [r4, #0xc]
	adds r0, r6, #0
	bl ov21_021D13DC
	str r0, [r4, #0x10]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D4758: .4byte ov21_021D43A8
	thumb_func_end ov21_021D4704

	thumb_func_start ov21_021D475C
ov21_021D475C: @ 0x021D475C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r1, _021D47EC @ =ov21_021D4434
	str r3, [r6]
	str r1, [r6, #4]
	movs r1, #0x30
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4776
	bl FUN_02022974
_021D4776:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x30
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r5, #0
	bl ov21_021D1314
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov21_021D1328
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl ov21_021D133C
	str r0, [r4, #0x10]
	adds r0, r5, #0
	bl ov21_021D1350
	str r0, [r4, #0x14]
	adds r0, r5, #0
	bl ov21_021D1364
	str r0, [r4, #0x18]
	adds r0, r5, #0
	bl ov21_021D1378
	str r0, [r4, #0x1c]
	adds r0, r5, #0
	movs r1, #2
	bl ov21_021D1410
	str r0, [r4, #0x20]
	adds r0, r5, #0
	movs r1, #2
	bl ov21_021D1430
	str r0, [r4, #0x24]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	str r0, [r4, #0x28]
	adds r0, r5, #0
	movs r1, #3
	bl ov21_021D1430
	str r0, [r4, #0x2c]
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D47EC: .4byte ov21_021D4434
	thumb_func_end ov21_021D475C

	thumb_func_start ov21_021D47F0
ov21_021D47F0: @ 0x021D47F0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	ldr r1, _021D4874 @ =ov21_021D4434
	str r3, [r6]
	str r1, [r6, #4]
	movs r1, #0x30
	adds r5, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D480A
	bl FUN_02022974
_021D480A:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x30
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r5, #0
	bl ov21_021D1314
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov21_021D1328
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl ov21_021D133C
	str r0, [r4, #0x10]
	adds r0, r5, #0
	bl ov21_021D1350
	str r0, [r4, #0x14]
	adds r0, r5, #0
	bl ov21_021D1364
	str r0, [r4, #0x18]
	adds r0, r5, #0
	bl ov21_021D1378
	str r0, [r4, #0x1c]
	adds r0, r5, #0
	movs r1, #0
	bl ov21_021D1410
	str r0, [r4, #0x20]
	adds r0, r5, #0
	movs r1, #0
	bl ov21_021D1430
	str r0, [r4, #0x24]
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	str r4, [r6, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4874: .4byte ov21_021D4434
	thumb_func_end ov21_021D47F0

	thumb_func_start ov21_021D4878
ov21_021D4878: @ 0x021D4878
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _021D48B4 @ =ov21_021D4340
	str r3, [r5]
	adds r6, r1, #0
	str r0, [r5, #4]
	adds r0, r2, #0
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4894
	bl FUN_02022974
_021D4894:
	adds r0, r6, #0
	movs r1, #0
	bl ov21_021D1410
	str r0, [r4]
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D48B4: .4byte ov21_021D4340
	thumb_func_end ov21_021D4878

	thumb_func_start ov21_021D48B8
ov21_021D48B8: @ 0x021D48B8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D4918 @ =ov21_021D4558
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0x18
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D48D2
	bl FUN_02022974
_021D48D2:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021D48D8:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D48D8
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	adds r0, r6, #0
	movs r1, #6
	bl ov21_021D1410
	str r0, [r4, #0x10]
	adds r0, r6, #0
	movs r1, #4
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D4918: .4byte ov21_021D4558
	thumb_func_end ov21_021D48B8

	thumb_func_start ov21_021D491C
ov21_021D491C: @ 0x021D491C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D497C @ =ov21_021D4558
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0x18
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4936
	bl FUN_02022974
_021D4936:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021D493C:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D493C
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	adds r0, r6, #0
	movs r1, #7
	bl ov21_021D1410
	str r0, [r4, #0x10]
	adds r0, r6, #0
	movs r1, #5
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D497C: .4byte ov21_021D4558
	thumb_func_end ov21_021D491C

	thumb_func_start ov21_021D4980
ov21_021D4980: @ 0x021D4980
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D49E0 @ =ov21_021D4558
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0x18
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D499A
	bl FUN_02022974
_021D499A:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021D49A0:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D49A0
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	adds r0, r6, #0
	movs r1, #8
	bl ov21_021D1410
	str r0, [r4, #0x10]
	adds r0, r6, #0
	movs r1, #6
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D49E0: .4byte ov21_021D4558
	thumb_func_end ov21_021D4980

	thumb_func_start ov21_021D49E4
ov21_021D49E4: @ 0x021D49E4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D4A38 @ =ov21_021D4340
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0xc
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D49FE
	bl FUN_02022974
_021D49FE:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	movs r1, #8
	bl ov21_021D1410
	str r0, [r4]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4A38: .4byte ov21_021D4340
	thumb_func_end ov21_021D49E4

	thumb_func_start ov21_021D4A3C
ov21_021D4A3C: @ 0x021D4A3C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D4A90 @ =ov21_021D4340
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0xc
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4A56
	bl FUN_02022974
_021D4A56:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	movs r1, #9
	bl ov21_021D1410
	str r0, [r4]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4A90: .4byte ov21_021D4340
	thumb_func_end ov21_021D4A3C

	thumb_func_start ov21_021D4A94
ov21_021D4A94: @ 0x021D4A94
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D4AF4 @ =ov21_021D4558
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0x18
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4AAE
	bl FUN_02022974
_021D4AAE:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021D4AB4:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D4AB4
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	adds r0, r6, #0
	movs r1, #2
	bl ov21_021D1410
	str r0, [r4, #0x10]
	adds r0, r6, #0
	movs r1, #2
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D4AF4: .4byte ov21_021D4558
	thumb_func_end ov21_021D4A94

	thumb_func_start ov21_021D4AF8
ov21_021D4AF8: @ 0x021D4AF8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D4B4C @ =ov21_021D4340
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0xc
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4B12
	bl FUN_02022974
_021D4B12:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	movs r1, #2
	bl ov21_021D1410
	str r0, [r4]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4B4C: .4byte ov21_021D4340
	thumb_func_end ov21_021D4AF8

	thumb_func_start ov21_021D4B50
ov21_021D4B50: @ 0x021D4B50
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D4BB0 @ =ov21_021D4558
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0x18
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4B6A
	bl FUN_02022974
_021D4B6A:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021D4B70:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D4B70
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4]
	adds r0, r6, #0
	bl ov21_021D1300
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	bl ov21_021D1350
	str r0, [r4, #0xc]
	adds r0, r6, #0
	movs r1, #3
	bl ov21_021D1410
	str r0, [r4, #0x10]
	adds r0, r6, #0
	movs r1, #7
	bl ov21_021D1430
	str r0, [r4, #0x14]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D4BB0: .4byte ov21_021D4558
	thumb_func_end ov21_021D4B50

	thumb_func_start ov21_021D4BB4
ov21_021D4BB4: @ 0x021D4BB4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _021D4C08 @ =ov21_021D4340
	str r3, [r5]
	str r1, [r5, #4]
	movs r1, #0xc
	adds r6, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4BCE
	bl FUN_02022974
_021D4BCE:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r6, #0
	bl ov21_021D12EC
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D133C
	str r0, [r4, #8]
	adds r0, r6, #0
	movs r1, #4
	bl ov21_021D1410
	str r0, [r4]
	str r4, [r5, #0x10]
	pop {r4, r5, r6, pc}
	nop
_021D4C08: .4byte ov21_021D4340
	thumb_func_end ov21_021D4BB4

	thumb_func_start ov21_021D4C0C
ov21_021D4C0C: @ 0x021D4C0C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D4C20
	bl FUN_02022974
_021D4C20:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021D4C26:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D4C26
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	bl FUN_02012744
	str r0, [r4]
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	lsls r1, r1, #4
	bl FUN_02018144
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021D4C4C
	bl FUN_02022974
_021D4C4C:
	ldr r2, [r5, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020D5124
	ldr r0, [r5, #8]
	str r0, [r4, #0x10]
	ldr r0, [r5]
	str r0, [r4, #4]
	ldr r0, [r5, #4]
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x14]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D4C0C

	thumb_func_start ov21_021D4C6C
ov21_021D4C6C: @ 0x021D4C6C
	push {r4, lr}
	adds r4, r0, #0
	bne _021D4C76
	bl FUN_02022974
_021D4C76:
	adds r0, r4, #0
	bl ov21_021D4D3C
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	ldr r0, [r4]
	bl FUN_020127BC
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021D4C8E:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D4C8E
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D4C6C

	thumb_func_start ov21_021D4CA0
ov21_021D4CA0: @ 0x021D4CA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl FUN_02012898
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov21_021D4CB8
	pop {r4, pc}
	thumb_func_end ov21_021D4CA0

	thumb_func_start ov21_021D4CB8
ov21_021D4CB8: @ 0x021D4CB8
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	bl ov21_021D4EB4
	adds r4, r0, #0
	bne _021D4CCE
	bl FUN_02022974
_021D4CCE:
	ldr r2, [r5, #0x20]
	adds r0, r6, #0
	movs r1, #1
	adds r3, r4, #4
	bl FUN_0201ED94
	ldr r0, [r5]
	ldr r0, [r0]
	str r0, [sp]
	ldr r0, [r5, #4]
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #8]
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x10]
	ldr r0, [r4, #8]
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x18]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x2c]
	add r0, sp, #0
	bl FUN_020127E8
	str r0, [r4]
	adds r0, r4, #0
	add sp, #0x30
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D4CB8

	thumb_func_start ov21_021D4D1C
ov21_021D4D1C: @ 0x021D4D1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02012870
	adds r0, r4, #4
	bl FUN_0201EE28
	movs r1, #0x10
	movs r0, #0
_021D4D30:
	strb r0, [r4]
	adds r4, r4, #1
	subs r1, r1, #1
	bne _021D4D30
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D4D1C

	thumb_func_start ov21_021D4D3C
ov21_021D4D3C: @ 0x021D4D3C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r6, #0
	cmp r0, #0
	ble _021D4D68
	adds r4, r6, #0
_021D4D4A:
	ldr r0, [r5, #0xc]
	adds r0, r0, r4
	bl ov21_021D4EA4
	cmp r0, #0
	beq _021D4D5E
	ldr r0, [r5, #0xc]
	adds r0, r0, r4
	bl ov21_021D4D1C
_021D4D5E:
	ldr r0, [r5, #0x10]
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, r0
	blt _021D4D4A
_021D4D68:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D4D3C

	thumb_func_start ov21_021D4D6C
ov21_021D4D6C: @ 0x021D4D6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	adds r4, r1, #0
	movs r1, #1
	adds r6, r2, #0
	bl FUN_0201A778
	adds r7, r0, #0
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	lsls r2, r4, #0x18
	lsls r3, r6, #0x18
	ldr r0, [r5, #8]
	adds r1, r7, #0
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A870
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D4D6C

	thumb_func_start ov21_021D4DA0
ov21_021D4DA0: @ 0x021D4DA0
	ldr r3, _021D4DA8 @ =FUN_0201A928
	movs r1, #1
	bx r3
	nop
_021D4DA8: .4byte FUN_0201A928
	thumb_func_end ov21_021D4DA0

	thumb_func_start ov21_021D4DAC
ov21_021D4DAC: @ 0x021D4DAC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r3, #0
	adds r6, r1, #0
	ldr r3, [r5, #0x14]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	adds r5, r0, #0
	bne _021D4DC8
	bl FUN_02022974
_021D4DC8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4E0C @ =0x00030201
	movs r1, #2
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r2, r4, #0
	bl FUN_0201D78C
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	bl FUN_02002D7C
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0200B190
	adds r0, r6, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D4E0C: .4byte 0x00030201
	thumb_func_end ov21_021D4DAC

	thumb_func_start ov21_021D4E10
ov21_021D4E10: @ 0x021D4E10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r3, #0
	adds r5, r1, #0
	ldr r3, [r4, #0x14]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	adds r4, r0, #0
	bne _021D4E2C
	bl FUN_02022974
_021D4E2C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0200B1EC
	adds r7, r0, #0
	movs r0, #2
	adds r1, r7, #0
	movs r2, #0
	bl FUN_02002D7C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_0201C294
	lsls r0, r0, #3
	movs r1, #0
	subs r3, r0, r6
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4E7C @ =0x00030201
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	lsrs r5, r3, #0x1f
	adds r5, r3, r5
	str r1, [sp, #0xc]
	movs r1, #2
	asrs r3, r5, #1
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B190
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4E7C: .4byte 0x00030201
	thumb_func_end ov21_021D4E10

	thumb_func_start ov21_021D4E80
ov21_021D4E80: @ 0x021D4E80
	push {r3, lr}
	sub sp, #0x10
	ldr r0, [sp, #0x18]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D4EA0 @ =0x00030201
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r1, #0
	movs r1, #2
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
_021D4EA0: .4byte 0x00030201
	thumb_func_end ov21_021D4E80

	thumb_func_start ov21_021D4EA4
ov21_021D4EA4: @ 0x021D4EA4
	ldr r0, [r0]
	cmp r0, #0
	beq _021D4EAE
	movs r0, #1
	bx lr
_021D4EAE:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D4EA4

	thumb_func_start ov21_021D4EB4
ov21_021D4EB4: @ 0x021D4EB4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	movs r6, #0
	cmp r0, #0
	ble _021D4EE0
	adds r4, r6, #0
_021D4EC2:
	ldr r0, [r5, #0xc]
	adds r0, r0, r4
	bl ov21_021D4EA4
	cmp r0, #0
	bne _021D4ED6
	ldr r1, [r5, #0xc]
	lsls r0, r6, #4
	adds r0, r1, r0
	pop {r4, r5, r6, pc}
_021D4ED6:
	ldr r0, [r5, #0x10]
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, r0
	blt _021D4EC2
_021D4EE0:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D4EB4

	thumb_func_start ov21_021D4EE4
ov21_021D4EE4: @ 0x021D4EE4
	push {r3, lr}
	movs r1, #0x14
	bl FUN_02018144
	adds r3, r0, #0
	movs r2, #0x14
	movs r1, #0
_021D4EF2:
	strb r1, [r3]
	adds r3, r3, #1
	subs r2, r2, #1
	bne _021D4EF2
	pop {r3, pc}
	thumb_func_end ov21_021D4EE4

	thumb_func_start ov21_021D4EFC
ov21_021D4EFC: @ 0x021D4EFC
	ldr r3, _021D4F00 @ =FUN_020181C4
	bx r3
	.align 2, 0
_021D4F00: .4byte FUN_020181C4
	thumb_func_end ov21_021D4EFC

	thumb_func_start ov21_021D4F04
ov21_021D4F04: @ 0x021D4F04
	push {r3, r4, r5, r6}
	adds r6, r0, #0
	movs r5, #0x14
	movs r4, #0
_021D4F0C:
	strb r4, [r6]
	adds r6, r6, #1
	subs r5, r5, #1
	bne _021D4F0C
	str r1, [r0]
	str r2, [r0, #4]
	str r3, [r0, #8]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D4F04

	thumb_func_start ov21_021D4F20
ov21_021D4F20: @ 0x021D4F20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #4
	bhi _021D4F7A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D4F36: @ jump table
	.2byte _021D4F40 - _021D4F36 - 2 @ case 0
	.2byte _021D4F48 - _021D4F36 - 2 @ case 1
	.2byte _021D4F50 - _021D4F36 - 2 @ case 2
	.2byte _021D4F62 - _021D4F36 - 2 @ case 3
	.2byte _021D4F74 - _021D4F36 - 2 @ case 4
_021D4F40:
	adds r1, r4, #0
	bl ov21_021D50E0
	pop {r3, r4, r5, pc}
_021D4F48:
	adds r1, r4, #0
	bl ov21_021D5110
	pop {r3, r4, r5, pc}
_021D4F50:
	cmp r4, #0
	blt _021D4F5A
	ldr r0, [r5, #4]
	cmp r4, r0
	blt _021D4F5E
_021D4F5A:
	bl FUN_02022974
_021D4F5E:
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
_021D4F62:
	cmp r4, #0
	blt _021D4F6C
	ldr r0, [r5, #8]
	cmp r4, r0
	blt _021D4F70
_021D4F6C:
	bl FUN_02022974
_021D4F70:
	str r4, [r5, #0x10]
	pop {r3, r4, r5, pc}
_021D4F74:
	adds r1, r4, #0
	bl ov21_021D5140
_021D4F7A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D4F20

	thumb_func_start ov21_021D4F7C
ov21_021D4F7C: @ 0x021D4F7C
	ldr r2, [r0, #0x10]
	ldr r1, [r0, #4]
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, [r0, #0xc]
	adds r2, r3, r1
	ldr r1, [r0]
	movs r0, #0x1c
	muls r0, r2, r0
	adds r0, r1, r0
	ldr r0, [r0, #0x18]
	bx lr
	thumb_func_end ov21_021D4F7C

	thumb_func_start ov21_021D4F94
ov21_021D4F94: @ 0x021D4F94
	push {r4, r5}
	ldr r4, [r0, #0x10]
	ldr r3, [r0, #4]
	adds r5, r4, #0
	muls r5, r3, r5
	ldr r3, [r0, #0xc]
	adds r5, r5, r3
	movs r3, #0x1c
	adds r4, r5, #0
	muls r4, r3, r4
	ldr r3, [r0]
	ldr r3, [r3, r4]
	str r3, [r1]
	ldr r0, [r0]
	adds r0, r0, r4
	ldr r0, [r0, #4]
	str r0, [r2]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D4F94

	thumb_func_start ov21_021D4FBC
ov21_021D4FBC: @ 0x021D4FBC
	push {r4, r5}
	ldr r4, [r0, #0x10]
	ldr r3, [r0, #4]
	adds r5, r4, #0
	muls r5, r3, r5
	ldr r3, [r0, #0xc]
	adds r5, r5, r3
	movs r3, #0x1c
	adds r4, r5, #0
	muls r4, r3, r4
	ldr r3, [r0]
	adds r3, r3, r4
	ldr r3, [r3, #8]
	str r3, [r1]
	ldr r0, [r0]
	adds r0, r0, r4
	ldr r0, [r0, #0xc]
	str r0, [r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ov21_021D4FBC

	thumb_func_start ov21_021D4FE4
ov21_021D4FE4: @ 0x021D4FE4
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, [sp]
	str r3, [r0, #8]
	str r1, [r0, #0xc]
	ldr r1, [sp, #4]
	str r1, [r0, #0x10]
	ldr r1, [sp, #8]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0xc]
	str r1, [r0, #0x18]
	bx lr
	thumb_func_end ov21_021D4FE4

	thumb_func_start ov21_021D4FFC
ov21_021D4FFC: @ 0x021D4FFC
	push {r3, r4, r5, r6}
	ldr r4, [sp, #0x10]
	cmp r0, #0
	beq _021D5008
	cmp r0, #2
	bne _021D5014
_021D5008:
	ldr r6, [sp, #0x14]
	lsrs r5, r6, #0x1f
	adds r5, r6, r5
	asrs r5, r5, #1
	subs r3, r3, r5
	b _021D501E
_021D5014:
	ldr r6, [sp, #0x14]
	lsrs r5, r6, #0x1f
	adds r5, r6, r5
	asrs r5, r5, #1
	adds r3, r3, r5
_021D501E:
	cmp r0, #1
	bhi _021D502E
	ldr r5, [sp, #0x18]
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	subs r4, r4, r0
	b _021D5038
_021D502E:
	ldr r5, [sp, #0x18]
	lsrs r0, r5, #0x1f
	adds r0, r5, r0
	asrs r0, r0, #1
	adds r4, r4, r0
_021D5038:
	str r3, [r1]
	str r4, [r2]
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov21_021D4FFC

	thumb_func_start ov21_021D5040
ov21_021D5040: @ 0x021D5040
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D5056
	cmp r4, #1
	beq _021D5056
	bl FUN_02022974
_021D5056:
	ldr r0, [r5, #0xc]
	movs r1, #0x1c
_021D505A:
	adds r0, r0, r4
	bmi _021D507A
	ldr r2, [r5, #4]
	cmp r0, r2
	bge _021D507A
	ldr r3, [r5, #0x10]
	ldr r2, [r5, #4]
	muls r2, r3, r2
	adds r6, r2, r0
	adds r2, r6, #0
	ldr r3, [r5]
	muls r2, r1, r2
	adds r6, r3, r2
	ldr r2, [r6, #0x10]
	cmp r2, #2
	beq _021D505A
_021D507A:
	cmp r0, #0
	blt _021D508C
	ldr r1, [r5, #4]
	cmp r0, r1
	bge _021D508C
	ldr r1, [r6, #0x10]
	cmp r1, #0
	bne _021D508C
	str r0, [r5, #0xc]
_021D508C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D5040

	thumb_func_start ov21_021D5090
ov21_021D5090: @ 0x021D5090
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	mvns r0, r0
	cmp r4, r0
	beq _021D50A6
	cmp r4, #1
	beq _021D50A6
	bl FUN_02022974
_021D50A6:
	ldr r0, [r5, #0x10]
	movs r1, #0x1c
_021D50AA:
	adds r0, r0, r4
	bmi _021D50CC
	ldr r2, [r5, #8]
	cmp r0, r2
	bge _021D50CC
	ldr r2, [r5, #4]
	adds r3, r0, #0
	muls r3, r2, r3
	ldr r2, [r5, #0xc]
	adds r6, r3, r2
	adds r2, r6, #0
	ldr r3, [r5]
	muls r2, r1, r2
	adds r6, r3, r2
	ldr r2, [r6, #0x14]
	cmp r2, #2
	beq _021D50AA
_021D50CC:
	cmp r0, #0
	blt _021D50DE
	ldr r1, [r5, #8]
	cmp r0, r1
	bge _021D50DE
	ldr r1, [r6, #0x10]
	cmp r1, #0
	bne _021D50DE
	str r0, [r5, #0x10]
_021D50DE:
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D5090

	thumb_func_start ov21_021D50E0
ov21_021D50E0: @ 0x021D50E0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	cmp r1, #0
	bge _021D50EC
	rsbs r5, r1, #0
	b _021D50EE
_021D50EC:
	adds r5, r1, #0
_021D50EE:
	adds r0, r1, #0
	adds r1, r5, #0
	blx FUN_020E1F6C
	adds r7, r0, #0
	movs r4, #0
	cmp r5, #0
	ble _021D510C
_021D50FE:
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021D5040
	adds r4, r4, #1
	cmp r4, r5
	blt _021D50FE
_021D510C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D50E0

	thumb_func_start ov21_021D5110
ov21_021D5110: @ 0x021D5110
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	cmp r1, #0
	bge _021D511C
	rsbs r5, r1, #0
	b _021D511E
_021D511C:
	adds r5, r1, #0
_021D511E:
	adds r0, r1, #0
	adds r1, r5, #0
	blx FUN_020E1F6C
	adds r7, r0, #0
	movs r4, #0
	cmp r5, #0
	ble _021D513C
_021D512E:
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021D5090
	adds r4, r4, #1
	cmp r4, r5
	blt _021D512E
_021D513C:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D5110

	thumb_func_start ov21_021D5140
ov21_021D5140: @ 0x021D5140
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #4]
	ldr r0, [r4, #8]
	adds r3, r2, #0
	muls r3, r0, r3
	movs r5, #0
	cmp r3, #0
	ble _021D5178
	ldr r6, [r4]
_021D5154:
	ldr r0, [r6, #0x18]
	cmp r1, r0
	bne _021D5170
	adds r0, r5, #0
	adds r1, r2, #0
	blx FUN_020E1F6C
	str r1, [r4, #0xc]
	ldr r1, [r4, #4]
	adds r0, r5, #0
	blx FUN_020E1F6C
	str r0, [r4, #0x10]
	pop {r4, r5, r6, pc}
_021D5170:
	adds r5, r5, #1
	adds r6, #0x1c
	cmp r5, r3
	blt _021D5154
_021D5178:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D5140

	thumb_func_start ov21_021D517C
ov21_021D517C: @ 0x021D517C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x5c]
	str r2, [sp, #0x18]
	str r1, [sp, #0x14]
	str r0, [sp, #0x5c]
	movs r0, #0
	str r3, [sp, #0x1c]
	add r1, sp, #0x48
	str r0, [sp, #0x38]
	ldrb r0, [r1, #0x1c]
	str r0, [sp, #0x20]
	cmp r0, #0
	ble _021D5210
	ldr r0, [sp, #0x38]
	ldrb r6, [r1, #0x10]
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	ldrh r0, [r1, #0x24]
	str r0, [sp, #0x2c]
	ldrh r0, [r1, #0x20]
	str r0, [sp, #0x28]
	ldrb r0, [r1, #0x18]
	str r0, [sp, #0x24]
_021D51AE:
	ldr r0, [sp, #0x24]
	movs r7, #0
	cmp r0, #0
	ble _021D51F6
	ldr r1, [sp, #0x5c]
	ldr r0, [sp, #0x30]
	adds r4, r7, #0
	adds r5, r1, r0
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x3c]
_021D51CA:
	str r6, [sp]
	ldrb r0, [r5]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	adds r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl ov21_021D5248
	ldr r0, [sp, #0x24]
	adds r7, r7, #1
	adds r4, r4, r6
	adds r5, r5, #1
	cmp r7, r0
	blt _021D51CA
_021D51F6:
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	adds r0, r0, r6
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x20]
	adds r0, r1, r0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x38]
	adds r1, r0, #1
	ldr r0, [sp, #0x20]
	str r1, [sp, #0x38]
	cmp r1, r0
	blt _021D51AE
_021D5210:
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D517C

	thumb_func_start ov21_021D5214
ov21_021D5214: @ 0x021D5214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r2, #0
	str r0, [sp, #4]
	adds r5, r1, #0
	movs r6, #0
	cmp r7, #0
	ble _021D5244
_021D5224:
	movs r4, #0
	cmp r5, #0
	ble _021D523E
_021D522A:
	ldr r0, [sp, #4]
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r5, #0
	str r7, [sp]
	bl ov21_021D52A0
	adds r4, r4, #1
	cmp r4, r5
	blt _021D522A
_021D523E:
	adds r6, r6, #1
	cmp r6, r7
	blt _021D5224
_021D5244:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5214

	thumb_func_start ov21_021D5248
ov21_021D5248: @ 0x021D5248
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x3c]
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r1, #0
	beq _021D529C
	ldr r0, [sp, #0x38]
	adds r4, r1, #0
	muls r4, r0, r4
	adds r0, r4, #0
	adds r1, r5, #0
	blx FUN_020E1F6C
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	blx FUN_020E1F6C
	str r5, [sp]
	adds r4, r1, #0
	str r6, [sp, #4]
	add r0, sp, #0x28
	ldrb r1, [r0, #0x18]
	lsls r2, r4, #0x10
	lsls r3, r7, #0x10
	str r1, [sp, #8]
	ldrb r0, [r0, #0x1c]
	ldr r1, [sp, #0x1c]
	lsrs r2, r2, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x38]
	lsrs r3, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	bl FUN_0201ADDC
_021D529C:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5248

	thumb_func_start ov21_021D52A0
ov21_021D52A0: @ 0x021D52A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r2, #0
	adds r6, r1, #0
	adds r1, r7, #0
	muls r1, r3, r1
	adds r4, r0, #0
	adds r5, r6, r1
	ldrb r1, [r4, r5]
	cmp r1, #0
	bne _021D52CE
	ldr r1, [sp, #0x20]
	str r3, [sp]
	str r1, [sp, #4]
	add r1, sp, #8
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov21_021D5304
	ldr r0, [sp, #8]
	bl ov21_021D5424
	strb r0, [r4, r5]
_021D52CE:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D52A0

	thumb_func_start ov21_021D52D4
ov21_021D52D4: @ 0x021D52D4
	push {r3, r4}
	cmp r1, #0
	blt _021D52DE
	cmp r1, r3
	blt _021D52E6
_021D52DE:
	movs r0, #0
	mvns r0, r0
	pop {r3, r4}
	bx lr
_021D52E6:
	cmp r2, #0
	blt _021D52F0
	ldr r4, [sp, #8]
	cmp r2, r4
	blt _021D52F8
_021D52F0:
	movs r0, #0
	mvns r0, r0
	pop {r3, r4}
	bx lr
_021D52F8:
	muls r3, r2, r3
	adds r1, r1, r3
	ldrb r0, [r0, r1]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D52D4

	thumb_func_start ov21_021D5304
ov21_021D5304: @ 0x021D5304
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r1, [sp, #0x20]
	adds r6, r2, #0
	str r1, [sp, #0x20]
	adds r7, r3, #0
	movs r1, #0
	str r1, [r5]
	ldr r4, [sp, #0x24]
	ldr r3, [sp, #0x20]
	adds r1, r6, #0
	subs r2, r7, #1
	str r0, [sp, #4]
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D5332
	ldr r1, [r5]
	movs r0, #1
	orrs r0, r1
	str r0, [r5]
_021D5332:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r1, r6, #0
	adds r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D534C
	ldr r1, [r5]
	movs r0, #2
	orrs r0, r1
	str r0, [r5]
_021D534C:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	subs r1, r6, #1
	adds r2, r7, #0
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D5366
	ldr r1, [r5]
	movs r0, #4
	orrs r0, r1
	str r0, [r5]
_021D5366:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r1, r6, #1
	adds r2, r7, #0
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D5380
	ldr r1, [r5]
	movs r0, #8
	orrs r0, r1
	str r0, [r5]
_021D5380:
	ldr r0, [r5]
	movs r1, #1
	tst r1, r0
	bne _021D53A8
	movs r1, #4
	tst r0, r1
	bne _021D53A8
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	subs r1, r6, #1
	subs r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D53A8
	ldr r1, [r5]
	movs r0, #0x10
	orrs r0, r1
	str r0, [r5]
_021D53A8:
	ldr r0, [r5]
	movs r1, #1
	tst r1, r0
	bne _021D53D0
	movs r1, #8
	tst r0, r1
	bne _021D53D0
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r1, r6, #1
	subs r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D53D0
	ldr r1, [r5]
	movs r0, #0x20
	orrs r0, r1
	str r0, [r5]
_021D53D0:
	ldr r0, [r5]
	movs r1, #2
	tst r1, r0
	bne _021D53F8
	movs r1, #4
	tst r0, r1
	bne _021D53F8
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	subs r1, r6, #1
	adds r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D53F8
	ldr r1, [r5]
	movs r0, #0x40
	orrs r0, r1
	str r0, [r5]
_021D53F8:
	ldr r0, [r5]
	movs r1, #2
	tst r1, r0
	bne _021D5420
	movs r1, #8
	tst r0, r1
	bne _021D5420
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r1, r6, #1
	adds r2, r7, #1
	str r4, [sp]
	bl ov21_021D52D4
	cmp r0, #1
	bne _021D5420
	ldr r1, [r5]
	movs r0, #0x80
	orrs r0, r1
	str r0, [r5]
_021D5420:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5304

	thumb_func_start ov21_021D5424
ov21_021D5424: @ 0x021D5424
	push {r4, lr}
	cmp r0, #0x84
	bgt _021D54FA
	blt _021D542E
	b _021D55EC
_021D542E:
	cmp r0, #0x58
	bgt _021D54E0
	blt _021D5436
	b _021D55C4
_021D5436:
	cmp r0, #0x48
	bgt _021D54D2
	blt _021D543E
	b _021D55F4
_021D543E:
	cmp r0, #0x41
	bhi _021D54D8
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D544E: @ jump table
	.2byte _021D553C - _021D544E - 2 @ case 0
	.2byte _021D5540 - _021D544E - 2 @ case 1
	.2byte _021D5544 - _021D544E - 2 @ case 2
	.2byte _021D5550 - _021D544E - 2 @ case 3
	.2byte _021D5548 - _021D544E - 2 @ case 4
	.2byte _021D5554 - _021D544E - 2 @ case 5
	.2byte _021D555C - _021D544E - 2 @ case 6
	.2byte _021D5568 - _021D544E - 2 @ case 7
	.2byte _021D554C - _021D544E - 2 @ case 8
	.2byte _021D5558 - _021D544E - 2 @ case 9
	.2byte _021D5560 - _021D544E - 2 @ case 10
	.2byte _021D556C - _021D544E - 2 @ case 11
	.2byte _021D5564 - _021D544E - 2 @ case 12
	.2byte _021D5570 - _021D544E - 2 @ case 13
	.2byte _021D5574 - _021D544E - 2 @ case 14
	.2byte _021D5578 - _021D544E - 2 @ case 15
	.2byte _021D557C - _021D544E - 2 @ case 16
	.2byte _021D55F8 - _021D544E - 2 @ case 17
	.2byte _021D55E0 - _021D544E - 2 @ case 18
	.2byte _021D55F8 - _021D544E - 2 @ case 19
	.2byte _021D55F8 - _021D544E - 2 @ case 20
	.2byte _021D55F8 - _021D544E - 2 @ case 21
	.2byte _021D55F8 - _021D544E - 2 @ case 22
	.2byte _021D55F8 - _021D544E - 2 @ case 23
	.2byte _021D55F0 - _021D544E - 2 @ case 24
	.2byte _021D55F8 - _021D544E - 2 @ case 25
	.2byte _021D55D4 - _021D544E - 2 @ case 26
	.2byte _021D55F8 - _021D544E - 2 @ case 27
	.2byte _021D55F8 - _021D544E - 2 @ case 28
	.2byte _021D55F8 - _021D544E - 2 @ case 29
	.2byte _021D55F8 - _021D544E - 2 @ case 30
	.2byte _021D55F8 - _021D544E - 2 @ case 31
	.2byte _021D5580 - _021D544E - 2 @ case 32
	.2byte _021D55F8 - _021D544E - 2 @ case 33
	.2byte _021D55E4 - _021D544E - 2 @ case 34
	.2byte _021D55F8 - _021D544E - 2 @ case 35
	.2byte _021D55E8 - _021D544E - 2 @ case 36
	.2byte _021D55F8 - _021D544E - 2 @ case 37
	.2byte _021D55D0 - _021D544E - 2 @ case 38
	.2byte _021D55F8 - _021D544E - 2 @ case 39
	.2byte _021D55F8 - _021D544E - 2 @ case 40
	.2byte _021D55F8 - _021D544E - 2 @ case 41
	.2byte _021D55F8 - _021D544E - 2 @ case 42
	.2byte _021D55F8 - _021D544E - 2 @ case 43
	.2byte _021D55F8 - _021D544E - 2 @ case 44
	.2byte _021D55F8 - _021D544E - 2 @ case 45
	.2byte _021D55F8 - _021D544E - 2 @ case 46
	.2byte _021D55F8 - _021D544E - 2 @ case 47
	.2byte _021D558C - _021D544E - 2 @ case 48
	.2byte _021D55F8 - _021D544E - 2 @ case 49
	.2byte _021D55BC - _021D544E - 2 @ case 50
	.2byte _021D55F8 - _021D544E - 2 @ case 51
	.2byte _021D55F8 - _021D544E - 2 @ case 52
	.2byte _021D55F8 - _021D544E - 2 @ case 53
	.2byte _021D55F8 - _021D544E - 2 @ case 54
	.2byte _021D55F8 - _021D544E - 2 @ case 55
	.2byte _021D55F8 - _021D544E - 2 @ case 56
	.2byte _021D55F8 - _021D544E - 2 @ case 57
	.2byte _021D55F8 - _021D544E - 2 @ case 58
	.2byte _021D55F8 - _021D544E - 2 @ case 59
	.2byte _021D55F8 - _021D544E - 2 @ case 60
	.2byte _021D55F8 - _021D544E - 2 @ case 61
	.2byte _021D55F8 - _021D544E - 2 @ case 62
	.2byte _021D55F8 - _021D544E - 2 @ case 63
	.2byte _021D5584 - _021D544E - 2 @ case 64
	.2byte _021D55D8 - _021D544E - 2 @ case 65
_021D54D2:
	cmp r0, #0x49
	bgt _021D54DA
	beq _021D55CC
_021D54D8:
	b _021D55F8
_021D54DA:
	cmp r0, #0x50
	beq _021D5590
	b _021D55F8
_021D54E0:
	cmp r0, #0x70
	bgt _021D54EC
	bge _021D55A4
	cmp r0, #0x60
	beq _021D5598
	b _021D55F8
_021D54EC:
	cmp r0, #0x80
	bgt _021D54F4
	beq _021D5588
	b _021D55F8
_021D54F4:
	cmp r0, #0x81
	beq _021D55DC
	b _021D55F8
_021D54FA:
	cmp r0, #0xb0
	bgt _021D551A
	bge _021D55A8
	cmp r0, #0x90
	bgt _021D550C
	bge _021D5594
	cmp r0, #0x85
	beq _021D55C8
	b _021D55F8
_021D550C:
	cmp r0, #0xa0
	bgt _021D5514
	beq _021D559C
	b _021D55F8
_021D5514:
	cmp r0, #0xa4
	beq _021D55C0
	b _021D55F8
_021D551A:
	cmp r0, #0xd0
	bgt _021D552E
	bge _021D55AC
	cmp r0, #0xc0
	bgt _021D5528
	beq _021D55A0
	b _021D55F8
_021D5528:
	cmp r0, #0xc1
	beq _021D55B8
	b _021D55F8
_021D552E:
	cmp r0, #0xe0
	bgt _021D5536
	beq _021D55B0
	b _021D55F8
_021D5536:
	cmp r0, #0xf0
	beq _021D55B4
	b _021D55F8
_021D553C:
	movs r4, #0
	b _021D55FC
_021D5540:
	movs r4, #2
	b _021D55FC
_021D5544:
	movs r4, #3
	b _021D55FC
_021D5548:
	movs r4, #4
	b _021D55FC
_021D554C:
	movs r4, #5
	b _021D55FC
_021D5550:
	movs r4, #6
	b _021D55FC
_021D5554:
	movs r4, #7
	b _021D55FC
_021D5558:
	movs r4, #8
	b _021D55FC
_021D555C:
	movs r4, #9
	b _021D55FC
_021D5560:
	movs r4, #0xa
	b _021D55FC
_021D5564:
	movs r4, #0xb
	b _021D55FC
_021D5568:
	movs r4, #0xc
	b _021D55FC
_021D556C:
	movs r4, #0xd
	b _021D55FC
_021D5570:
	movs r4, #0xe
	b _021D55FC
_021D5574:
	movs r4, #0xf
	b _021D55FC
_021D5578:
	movs r4, #0x10
	b _021D55FC
_021D557C:
	movs r4, #0x11
	b _021D55FC
_021D5580:
	movs r4, #0x12
	b _021D55FC
_021D5584:
	movs r4, #0x13
	b _021D55FC
_021D5588:
	movs r4, #0x14
	b _021D55FC
_021D558C:
	movs r4, #0x15
	b _021D55FC
_021D5590:
	movs r4, #0x16
	b _021D55FC
_021D5594:
	movs r4, #0x17
	b _021D55FC
_021D5598:
	movs r4, #0x18
	b _021D55FC
_021D559C:
	movs r4, #0x19
	b _021D55FC
_021D55A0:
	movs r4, #0x1a
	b _021D55FC
_021D55A4:
	movs r4, #0x1b
	b _021D55FC
_021D55A8:
	movs r4, #0x1c
	b _021D55FC
_021D55AC:
	movs r4, #0x1d
	b _021D55FC
_021D55B0:
	movs r4, #0x1e
	b _021D55FC
_021D55B4:
	movs r4, #0x1f
	b _021D55FC
_021D55B8:
	movs r4, #0x20
	b _021D55FC
_021D55BC:
	movs r4, #0x21
	b _021D55FC
_021D55C0:
	movs r4, #0x22
	b _021D55FC
_021D55C4:
	movs r4, #0x23
	b _021D55FC
_021D55C8:
	movs r4, #0x24
	b _021D55FC
_021D55CC:
	movs r4, #0x25
	b _021D55FC
_021D55D0:
	movs r4, #0x26
	b _021D55FC
_021D55D4:
	movs r4, #0x27
	b _021D55FC
_021D55D8:
	movs r4, #0x28
	b _021D55FC
_021D55DC:
	movs r4, #0x29
	b _021D55FC
_021D55E0:
	movs r4, #0x2a
	b _021D55FC
_021D55E4:
	movs r4, #0x2b
	b _021D55FC
_021D55E8:
	movs r4, #0x2c
	b _021D55FC
_021D55EC:
	movs r4, #0x2d
	b _021D55FC
_021D55F0:
	movs r4, #0x2e
	b _021D55FC
_021D55F4:
	movs r4, #0x2f
	b _021D55FC
_021D55F8:
	bl FUN_02022974
_021D55FC:
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov21_021D5424

	thumb_func_start ov21_021D5600
ov21_021D5600: @ 0x021D5600
	ldr r3, _021D5604 @ =FUN_020237BC
	bx r3
	.align 2, 0
_021D5604: .4byte FUN_020237BC
	thumb_func_end ov21_021D5600

	thumb_func_start ov21_021D5608
ov21_021D5608: @ 0x021D5608
	adds r1, r0, #1
	ldr r0, _021D5614 @ =0x021E9CC4
	ldr r3, _021D5618 @ =FUN_020986E8
	ldrb r0, [r0, r1]
	bx r3
	nop
_021D5614: .4byte 0x021E9CC4
_021D5618: .4byte FUN_020986E8
	thumb_func_end ov21_021D5608

	thumb_func_start ov21_021D561C
ov21_021D561C: @ 0x021D561C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r4, r2, #0
	add r2, sp, #4
	str r2, [sp]
	add r2, sp, #0xc
	add r3, sp, #8
	adds r5, r0, #0
	bl ov21_021D5764
	ldr r2, [sp, #4]
	cmp r2, #6
	bne _021D5642
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200B32C
	add sp, #0x28
	pop {r4, r5, r6, pc}
_021D5642:
	ldr r6, _021D5668 @ =0x021E9CCC
	add r5, sp, #0x10
	adds r3, r5, #0
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	lsls r0, r2, #2
	ldr r1, [sp, #0xc]
	ldr r0, [r3, r0]
	adds r2, r4, #0
	str r1, [sp, #4]
	bl ov21_021D5724
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D5668: .4byte 0x021E9CCC
	thumb_func_end ov21_021D561C

	thumb_func_start ov21_021D566C
ov21_021D566C: @ 0x021D566C
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r4, r2, #0
	add r2, sp, #4
	str r2, [sp]
	add r2, sp, #0xc
	add r3, sp, #8
	adds r5, r0, #0
	bl ov21_021D5764
	ldr r2, [sp, #4]
	cmp r2, #6
	bne _021D568C
	str r5, [sp, #4]
	ldr r0, _021D56B4 @ =0x000002C7
	b _021D56A6
_021D568C:
	ldr r6, _021D56B8 @ =0x021E9CE4
	add r5, sp, #0x10
	adds r3, r5, #0
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	lsls r0, r2, #2
	ldr r1, [sp, #0xc]
	ldr r0, [r3, r0]
	str r1, [sp, #4]
_021D56A6:
	ldr r1, [sp, #4]
	adds r2, r4, #0
	bl ov21_021D5724
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D56B4: .4byte 0x000002C7
_021D56B8: .4byte 0x021E9CE4
	thumb_func_end ov21_021D566C

	thumb_func_start ov21_021D56BC
ov21_021D56BC: @ 0x021D56BC
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r4, r2, #0
	add r2, sp, #4
	adds r6, r3, #0
	str r2, [sp]
	add r2, sp, #0xc
	add r3, sp, #8
	adds r5, r0, #0
	bl ov21_021D5764
	ldr r0, [sp, #4]
	cmp r0, #6
	bne _021D56E8
	cmp r4, #1
	blt _021D56E0
	bl FUN_02022974
_021D56E0:
	adds r0, r5, r4
	str r0, [sp, #4]
	ldr r0, _021D571C @ =0x000002C2
	b _021D570E
_021D56E8:
	ldr r3, _021D5720 @ =0x021E9CFC
	add r2, sp, #0x10
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	cmp r4, #1
	blt _021D5700
	bl FUN_02022974
_021D5700:
	ldr r0, [sp, #4]
	lsls r1, r0, #2
	add r0, sp, #0x10
	ldr r0, [r0, r1]
	ldr r1, [sp, #0xc]
	adds r1, r1, r4
	str r1, [sp, #4]
_021D570E:
	ldr r1, [sp, #4]
	adds r2, r6, #0
	bl ov21_021D5724
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D571C: .4byte 0x000002C2
_021D5720: .4byte 0x021E9CFC
	thumb_func_end ov21_021D56BC

	thumb_func_start ov21_021D5724
ov21_021D5724: @ 0x021D5724
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r5, r2, #0
	adds r6, r1, #0
	adds r2, r3, #0
	movs r0, #1
	movs r1, #0x1a
	adds r3, r5, #0
	bl FUN_0200B144
	adds r4, r0, #0
	beq _021D575E
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r5, #0
	bl FUN_02023790
	adds r5, r0, #0
	beq _021D5754
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_0200B1B8
_021D5754:
	adds r0, r4, #0
	bl FUN_0200B190
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
_021D575E:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D5724

	thumb_func_start ov21_021D5764
ov21_021D5764: @ 0x021D5764
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x18]
	bl FUN_020986CC
	str r0, [r5]
	cmp r0, #6
	blt _021D577E
	bl FUN_02022974
_021D577E:
	str r7, [r4]
	ldr r5, [r5]
	cmp r5, #6
	blt _021D578A
	bl FUN_02022974
_021D578A:
	cmp r5, #1
	bne _021D5790
	movs r5, #6
_021D5790:
	str r5, [r6]
	ldr r1, [r4]
	ldr r0, _021D57B0 @ =0x000001ED
	cmp r1, r0
	ble _021D57A2
	cmp r5, #6
	beq _021D57A2
	movs r0, #0
	b _021D57A4
_021D57A2:
	movs r0, #1
_021D57A4:
	cmp r0, #0
	bne _021D57AC
	bl FUN_02022974
_021D57AC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D57B0: .4byte 0x000001ED
	thumb_func_end ov21_021D5764

	thumb_func_start ov21_021D57B4
ov21_021D57B4: @ 0x021D57B4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r2, #9
	bhi _021D5806
	adds r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D57CA: @ jump table
	.2byte _021D57DE - _021D57CA - 2 @ case 0
	.2byte _021D57E2 - _021D57CA - 2 @ case 1
	.2byte _021D57E6 - _021D57CA - 2 @ case 2
	.2byte _021D57EA - _021D57CA - 2 @ case 3
	.2byte _021D57EE - _021D57CA - 2 @ case 4
	.2byte _021D57F4 - _021D57CA - 2 @ case 5
	.2byte _021D57F8 - _021D57CA - 2 @ case 6
	.2byte _021D57FC - _021D57CA - 2 @ case 7
	.2byte _021D5800 - _021D57CA - 2 @ case 8
	.2byte _021D5804 - _021D57CA - 2 @ case 9
_021D57DE:
	movs r5, #4
	b _021D5806
_021D57E2:
	ldr r5, _021D5824 @ =0x000001F3
	b _021D5806
_021D57E6:
	ldr r5, _021D5828 @ =0x000003E2
	b _021D5806
_021D57EA:
	ldr r5, _021D582C @ =0x000005D1
	b _021D5806
_021D57EE:
	movs r5, #0x1f
	lsls r5, r5, #6
	b _021D5806
_021D57F4:
	ldr r5, _021D5830 @ =0x000009AF
	b _021D5806
_021D57F8:
	ldr r5, _021D5834 @ =0x00000B9E
	b _021D5806
_021D57FC:
	ldr r5, _021D5838 @ =0x00000D8D
	b _021D5806
_021D5800:
	ldr r5, _021D583C @ =0x00000F7C
	b _021D5806
_021D5804:
	ldr r5, _021D5840 @ =0x0000116B
_021D5806:
	movs r2, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	movs r0, #0xbc
	adds r1, r5, r1
	bl FUN_02007068
	str r0, [r4]
	ldr r0, [sp, #8]
	lsrs r0, r0, #2
	str r0, [r4, #4]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D5824: .4byte 0x000001F3
_021D5828: .4byte 0x000003E2
_021D582C: .4byte 0x000005D1
_021D5830: .4byte 0x000009AF
_021D5834: .4byte 0x00000B9E
_021D5838: .4byte 0x00000D8D
_021D583C: .4byte 0x00000F7C
_021D5840: .4byte 0x0000116B
	thumb_func_end ov21_021D57B4

	thumb_func_start ov21_021D5844
ov21_021D5844: @ 0x021D5844
	push {r4, lr}
	adds r4, r0, #0
	bne _021D584E
	bl FUN_02022974
_021D584E:
	ldr r0, [r4]
	cmp r0, #0
	bne _021D5858
	bl FUN_02022974
_021D5858:
	ldr r0, [r4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D5844

	thumb_func_start ov21_021D5868
ov21_021D5868: @ 0x021D5868
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r1, #0
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	movs r0, #0xbc
	adds r2, r1, #0
	bl FUN_02007068
	cmp r4, #0
	beq _021D588A
	ldr r1, [sp, #8]
	lsrs r1, r1, #2
	str r1, [r4]
_021D588A:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D5868

	thumb_func_start ov21_021D5890
ov21_021D5890: @ 0x021D5890
	push {r4, r5, lr}
	sub sp, #0xc
	movs r2, #0
	adds r3, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	movs r0, #0xbc
	movs r1, #2
	bl FUN_02007068
	adds r5, r0, #0
	cmp r4, #0
	beq _021D58B8
	ldr r0, [sp, #8]
	movs r1, #0x24
	blx FUN_020E2178
	str r0, [r4]
_021D58B8:
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D5890

	thumb_func_start ov21_021D58C0
ov21_021D58C0: @ 0x021D58C0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r1, [sp, #4]
	adds r4, r3, #0
	str r0, [sp]
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #3]
	adds r0, r1, r0
	cmp r0, r2
	blt _021D58D8
	bl FUN_02022974
_021D58D8:
	ldrb r1, [r4]
	ldrb r0, [r4, #2]
	adds r1, r1, r0
	ldr r0, [sp, #4]
	cmp r1, r0
	blt _021D58E8
	bl FUN_02022974
_021D58E8:
	ldrb r7, [r4, #1]
	ldrb r0, [r4, #3]
	adds r0, r7, r0
	cmp r7, r0
	bge _021D5942
	ldr r0, [sp, #4]
	muls r0, r7, r0
	mov ip, r0
_021D58F8:
	ldrb r5, [r4]
	ldrb r3, [r4, #2]
	adds r1, r5, #0
	adds r0, r5, r3
	cmp r5, r0
	bge _021D592E
	ldr r2, [sp]
	mov r0, ip
	adds r0, r2, r0
	adds r2, r0, r5
_021D590C:
	subs r6, r1, r5
	ldrb r5, [r4, #1]
	ldrb r0, [r2]
	adds r1, r1, #1
	subs r5, r7, r5
	muls r5, r3, r5
	adds r3, r4, r6
	adds r3, r5, r3
	ldrb r3, [r3, #4]
	orrs r0, r3
	strb r0, [r2]
	ldrb r3, [r4, #2]
	ldrb r5, [r4]
	adds r2, r2, #1
	adds r0, r5, r3
	cmp r1, r0
	blt _021D590C
_021D592E:
	ldr r0, [sp, #4]
	mov r1, ip
	adds r0, r1, r0
	mov ip, r0
	ldrb r1, [r4, #1]
	ldrb r0, [r4, #3]
	adds r7, r7, #1
	adds r0, r1, r0
	cmp r7, r0
	blt _021D58F8
_021D5942:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D58C0

	thumb_func_start ov21_021D5948
ov21_021D5948: @ 0x021D5948
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	str r3, [sp, #4]
	str r0, [sp, #0x30]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r5, [sp, #0x34]
	ldr r0, [r0, #4]
	ldr r4, [sp, #0x38]
	subs r0, r0, #1
	cmp r0, #0
	ble _021D59D2
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	ldr r7, [sp, #8]
	str r0, [sp, #0x14]
_021D5976:
	ldr r0, [sp, #0x30]
	ldr r0, [r0]
	ldr r0, [r0, r7]
	cmp r0, #0
	bne _021D5984
	bl FUN_02022974
_021D5984:
	movs r1, #0
	cmp r4, #0
	bls _021D599C
	ldr r0, [sp, #0x30]
	ldr r0, [r0]
	ldr r2, [r0, r7]
_021D5990:
	ldrb r0, [r5, r1]
	cmp r2, r0
	beq _021D599C
	adds r1, r1, #1
	cmp r1, r4
	blo _021D5990
_021D599C:
	cmp r1, r4
	blo _021D59BE
	ldr r3, [sp, #0x30]
	movs r6, #0x24
	ldr r3, [r3]
	ldr r0, [sp]
	ldr r3, [r3, r7]
	ldr r1, [sp, #0x10]
	muls r6, r3, r6
	ldr r3, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r3, r3, r6
	bl ov21_021D58C0
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
_021D59BE:
	ldr r0, [sp, #0xc]
	adds r7, r7, #4
	adds r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r0, [r0, #4]
	subs r1, r0, #1
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _021D5976
_021D59D2:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5948

	thumb_func_start ov21_021D59D8
ov21_021D59D8: @ 0x021D59D8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x24]
	adds r5, r0, #0
	ldrb r6, [r4]
	muls r3, r6, r3
	adds r1, r1, r3
	str r1, [sp]
	ldrb r6, [r4, #1]
	ldr r3, [sp, #0x20]
	lsls r1, r1, #0xc
	muls r3, r6, r3
	adds r2, r2, r3
	str r1, [sp]
	str r2, [sp, #4]
	lsls r1, r2, #0xc
	str r1, [sp, #4]
	add r1, sp, #0
	bl FUN_02021C50
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _021D5A12
	ldr r1, [sp, #0x2c]
	adds r0, r5, #0
	bl FUN_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_021D5A12:
	ldr r1, [sp, #0x28]
	adds r0, r5, #0
	bl FUN_02021D6C
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D59D8

	thumb_func_start ov21_021D5A20
ov21_021D5A20: @ 0x021D5A20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	mov ip, r0
	ldr r0, [sp, #0x40]
	ldr r7, [sp, #0x50]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x44]
	str r1, [sp, #0x10]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r2, [sp, #0x14]
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x4c]
	str r3, [sp, #0x18]
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x54]
	ldr r5, [sp, #0x5c]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x58]
	ldr r4, [sp, #0x60]
	str r0, [sp, #0x58]
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	ldr r0, [r7, #4]
	subs r0, r0, #1
	cmp r0, #0
	ble _021D5AE0
	adds r0, r1, #0
	lsls r1, r0, #2
	mov r0, ip
	adds r0, r0, r1
	ldr r6, [sp, #0x20]
	str r0, [sp, #0x1c]
_021D5A64:
	ldr r0, [r7]
	ldr r0, [r0, r6]
	cmp r0, #0
	bne _021D5A70
	bl FUN_02022974
_021D5A70:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	blt _021D5A7C
	bl FUN_02022974
_021D5A7C:
	movs r1, #0
	cmp r4, #0
	bls _021D5A92
	ldr r0, [r7]
	ldr r2, [r0, r6]
_021D5A86:
	ldrb r0, [r5, r1]
	cmp r2, r0
	beq _021D5A92
	adds r1, r1, #1
	cmp r1, r4
	blo _021D5A86
_021D5A92:
	cmp r1, r4
	blo _021D5ACE
	ldr r0, [sp, #0x48]
	ldr r2, [sp, #0x40]
	str r0, [sp]
	ldr r0, [r7]
	ldr r3, [sp, #0x44]
	ldr r0, [r0, r6]
	lsls r1, r0, #2
	ldr r0, [sp, #0x4c]
	adds r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0]
	bl ov21_021D59D8
	ldr r0, [sp, #0x1c]
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
_021D5ACE:
	ldr r0, [sp, #0x24]
	adds r6, r6, #4
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [r7, #4]
	subs r1, r0, #1
	ldr r0, [sp, #0x24]
	cmp r0, r1
	blt _021D5A64
_021D5AE0:
	ldr r1, [sp, #0x64]
	ldr r0, [sp, #0x20]
	str r0, [r1]
	ldr r0, [sp, #0x10]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5A20

	thumb_func_start ov21_021D5AEC
ov21_021D5AEC: @ 0x021D5AEC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021D5B90
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021D5BE0
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov21_021D5C1C
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021D5CB4
	str r0, [r5, #0x24]
	ldr r0, _021D5B38 @ =ov21_021D5CB8
	str r0, [r5, #8]
	ldr r0, _021D5B3C @ =ov21_021D5D04
	str r0, [r5, #0xc]
	ldr r0, _021D5B40 @ =ov21_021D5D34
	str r0, [r5, #0x10]
	ldr r0, _021D5B44 @ =ov21_021D5D48
	str r0, [r5, #0x14]
	ldr r0, _021D5B48 @ =ov21_021D5E2C
	str r0, [r5, #0x18]
	ldr r0, _021D5B4C @ =ov21_021D5EA8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5B38: .4byte ov21_021D5CB8
_021D5B3C: .4byte ov21_021D5D04
_021D5B40: .4byte ov21_021D5D34
_021D5B44: .4byte ov21_021D5D48
_021D5B48: .4byte ov21_021D5E2C
_021D5B4C: .4byte ov21_021D5EA8
	thumb_func_end ov21_021D5AEC

	thumb_func_start ov21_021D5B50
ov21_021D5B50: @ 0x021D5B50
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021D5BCC
	ldr r0, [r4, #4]
	bl ov21_021D5C08
	ldr r0, [r4, #0x20]
	bl ov21_021D5C7C
	pop {r4, pc}
	thumb_func_end ov21_021D5B50

	thumb_func_start ov21_021D5B68
ov21_021D5B68: @ 0x021D5B68
	ldr r1, [r0, #0x24]
	cmp r1, #1
	beq _021D5B86
	ldr r1, [r0, #0x28]
	cmp r1, #1
	beq _021D5B86
	ldr r1, [r0, #0x2c]
	cmp r1, #1
	beq _021D5B86
	ldr r1, [r0, #0x30]
	cmp r1, #1
	beq _021D5B86
	ldr r0, [r0, #0x34]
	cmp r0, #1
	bne _021D5B8A
_021D5B86:
	movs r0, #0
	bx lr
_021D5B8A:
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D5B68

	thumb_func_start ov21_021D5B90
ov21_021D5B90: @ 0x021D5B90
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x38
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D5BA2
	bl FUN_02022974
_021D5BA2:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x38
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D138C
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	movs r0, #1
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D5B90

	thumb_func_start ov21_021D5BCC
ov21_021D5BCC: @ 0x021D5BCC
	push {r4, lr}
	adds r4, r0, #0
	bne _021D5BD6
	bl FUN_02022974
_021D5BD6:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D5BCC

	thumb_func_start ov21_021D5BE0
ov21_021D5BE0: @ 0x021D5BE0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D5BF2
	bl FUN_02022974
_021D5BF2:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D5BE0

	thumb_func_start ov21_021D5C08
ov21_021D5C08: @ 0x021D5C08
	push {r4, lr}
	adds r4, r0, #0
	bne _021D5C12
	bl FUN_02022974
_021D5C12:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D5C08

	thumb_func_start ov21_021D5C1C
ov21_021D5C1C: @ 0x021D5C1C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl ov21_021D5CB4
	adds r2, r0, #0
	movs r1, #0x14
	adds r0, r5, #0
	muls r1, r2, r1
	bl FUN_02018144
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	movs r3, #1
	bl ov21_021D467C
	adds r1, r6, #0
	adds r0, r5, #0
	adds r1, #0x14
	adds r2, r4, #0
	movs r3, #2
	bl ov21_021D475C
	adds r1, r6, #0
	adds r0, r5, #0
	adds r1, #0x28
	adds r2, r4, #0
	movs r3, #4
	bl ov21_021D4704
	adds r0, r6, #0
	adds r0, #0x3c
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #8
	bl ov21_021D4878
	adds r1, r6, #0
	adds r0, r5, #0
	adds r1, #0x50
	adds r2, r4, #0
	movs r3, #0x10
	bl ov21_021D47F0
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D5C1C

	thumb_func_start ov21_021D5C7C
ov21_021D5C7C: @ 0x021D5C7C
	push {r4, lr}
	adds r4, r0, #0
	bne _021D5C86
	bl FUN_02022974
_021D5C86:
	adds r0, r4, #0
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x14
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x28
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x3c
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x50
	bl ov21_021D4660
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021D5C7C

	thumb_func_start ov21_021D5CB4
ov21_021D5CB4: @ 0x021D5CB4
	movs r0, #5
	bx lr
	thumb_func_end ov21_021D5CB4

	thumb_func_start ov21_021D5CB8
ov21_021D5CB8: @ 0x021D5CB8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	movs r1, #0x24
	bl FUN_02018144
	str r0, [r5, #8]
	cmp r0, #0
	bne _021D5CD0
	bl FUN_02022974
_021D5CD0:
	ldr r0, [r5, #8]
	movs r1, #0
	movs r2, #0x24
	blx FUN_020D5124
	ldr r1, [r5, #8]
	adds r0, r4, #0
	bl ov21_021D5F58
	ldr r0, [r4, #4]
	bl ov21_021D38C0
	movs r1, #1
	str r1, [r4, #0x1c]
	movs r0, #0
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _021D5CF8
	str r1, [r4, #0x10]
_021D5CF8:
	adds r0, r4, #0
	bl ov21_021D5FC4
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D5CB8

	thumb_func_start ov21_021D5D04
ov21_021D5D04: @ 0x021D5D04
	push {r3, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	ldr r3, [r2, #8]
	cmp r0, #1
	bne _021D5D14
	movs r0, #1
	pop {r3, pc}
_021D5D14:
	ldr r0, [r2]
	cmp r0, #0
	bne _021D5D24
	movs r0, #0
	str r0, [r1, #0x18]
	movs r0, #1
	str r0, [r2]
	b _021D5D2E
_021D5D24:
	ldr r2, [r2, #4]
	adds r0, r1, #0
	adds r1, r3, #0
	bl ov21_021D5F7C
_021D5D2E:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021D5D04

	thumb_func_start ov21_021D5D34
ov21_021D5D34: @ 0x021D5D34
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D5D34

	thumb_func_start ov21_021D5D48
ov21_021D5D48: @ 0x021D5D48
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r6, r2, #0
	ldr r7, [r4, #8]
	cmp r0, #3
	bhi _021D5E20
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D5D64: @ jump table
	.2byte _021D5D6C - _021D5D64 - 2 @ case 0
	.2byte _021D5D9A - _021D5D64 - 2 @ case 1
	.2byte _021D5DE4 - _021D5D64 - 2 @ case 2
	.2byte _021D5E0C - _021D5D64 - 2 @ case 3
_021D5D6C:
	movs r1, #0x52
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	bl FUN_02018144
	adds r7, r0, #0
	bne _021D5D7E
	bl FUN_02022974
_021D5D7E:
	str r7, [r4, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021D6C24
	ldr r1, [r5]
	adds r0, r7, #0
	adds r2, r6, #0
	bl ov21_021D68C8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D5E24
_021D5D9A:
	movs r0, #0x5d
	ldr r1, [r6, #4]
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D5DB2
	ldr r1, [r5]
	ldr r3, [r4, #4]
	adds r0, r7, #0
	bl ov21_021D6114
	b _021D5DBC
_021D5DB2:
	ldr r1, [r5]
	ldr r3, [r4, #4]
	adds r0, r7, #0
	bl ov21_021D61F4
_021D5DBC:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021D5DD0
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl ov21_021D7248
	b _021D5DDC
_021D5DD0:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl ov21_021D71A8
_021D5DDC:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D5E24
_021D5DE4:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	beq _021D5DF6
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021D72D4
	b _021D5E00
_021D5DF6:
	adds r0, r7, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021D71E4
_021D5E00:
	cmp r0, #0
	beq _021D5E24
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D5E24
_021D5E0C:
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021D5E28 @ =0x04000050
	movs r1, #1
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5E20:
	bl FUN_02022974
_021D5E24:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D5E28: .4byte 0x04000050
	thumb_func_end ov21_021D5D48

	thumb_func_start ov21_021D5E2C
ov21_021D5E2C: @ 0x021D5E2C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r2, #0
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, [r5, #0x1c]
	ldr r4, [r7, #8]
	cmp r0, #0
	bne _021D5E40
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D5E40:
	ldr r0, [r5, #4]
	bl ov21_021D3898
	movs r1, #0x51
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, r0
	beq _021D5E70
	str r0, [r4, r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D6A58
	ldr r1, [r6]
	ldr r3, [r7, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov21_021D6CC8
	ldr r1, [r6]
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov21_021D68C8
_021D5E70:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D69A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D6AE4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D6BB0
	ldr r1, [r6]
	ldr r3, [r7, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov21_021D6C44
	ldr r1, [r6]
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov21_021D6F20
	adds r0, r5, #0
	bl ov21_021D6F74
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D5E2C

	thumb_func_start ov21_021D5EA8
ov21_021D5EA8: @ 0x021D5EA8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021D5F4A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D5EC4: @ jump table
	.2byte _021D5ECC - _021D5EC4 - 2 @ case 0
	.2byte _021D5F08 - _021D5EC4 - 2 @ case 1
	.2byte _021D5F30 - _021D5EC4 - 2 @ case 2
	.2byte _021D5F46 - _021D5EC4 - 2 @ case 3
_021D5ECC:
	ldr r0, _021D5F54 @ =0x04000050
	movs r3, #0
	strh r3, [r0]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021D5EF8
	ldr r1, [r5]
	ldr r3, [r4, #4]
	adds r0, r6, #0
	bl ov21_021D7160
	ldr r0, [r5]
	adds r1, r7, #0
	bl ov21_021D6F64
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov21_021D7248
	b _021D5F00
_021D5EF8:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021D71A8
_021D5F00:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D5F4E
_021D5F08:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021D5F1A
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl ov21_021D72D4
	b _021D5F24
_021D5F1A:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl ov21_021D71E4
_021D5F24:
	cmp r0, #0
	beq _021D5F4E
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D5F4E
_021D5F30:
	ldr r1, [r5]
	adds r0, r6, #0
	bl ov21_021D61D8
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D5F4E
_021D5F46:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D5F4A:
	bl FUN_02022974
_021D5F4E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5F54: .4byte 0x04000050
	thumb_func_end ov21_021D5EA8

	thumb_func_start ov21_021D5F58
ov21_021D5F58: @ 0x021D5F58
	movs r2, #0
	str r2, [r0, #8]
	str r2, [r1]
	movs r0, #0x3c
	str r0, [r1, #4]
	movs r0, #4
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D5F58

	thumb_func_start ov21_021D5F6C
ov21_021D5F6C: @ 0x021D5F6C
	movs r0, #0xa
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D5F6C

	thumb_func_start ov21_021D5F7C
ov21_021D5F7C: @ 0x021D5F7C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D601C
	cmp r0, #1
	beq _021D5FC2
	adds r0, r5, #0
	bl ov21_021D5FC4
	ldr r0, [r4]
	cmp r0, #0
	bne _021D5FAE
	ldr r0, [r4, #0x14]
	cmp r0, #1
	bne _021D5FA6
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D7590
	b _021D5FAE
_021D5FA6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D75DC
_021D5FAE:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021D5FBC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D60A4
_021D5FBC:
	adds r0, r5, #0
	bl ov21_021D5FD4
_021D5FC2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D5F7C

	thumb_func_start ov21_021D5FC4
ov21_021D5FC4: @ 0x021D5FC4
	movs r1, #0
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D5FC4

	thumb_func_start ov21_021D5FD4
ov21_021D5FD4: @ 0x021D5FD4
	ldr r1, _021D6018 @ =0x021BF67C
	movs r2, #2
	ldr r1, [r1, #0x48]
	tst r2, r1
	beq _021D5FF6
	movs r1, #0x5d
	ldr r2, [r0, #4]
	lsls r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021D5FF0
	movs r1, #1
	str r1, [r0, #0x28]
	bx lr
_021D5FF0:
	movs r1, #1
	str r1, [r0, #0x24]
	bx lr
_021D5FF6:
	movs r3, #1
	adds r2, r1, #0
	tst r2, r3
	beq _021D6002
	str r3, [r0, #0x2c]
	bx lr
_021D6002:
	lsls r2, r3, #0xa
	tst r2, r1
	beq _021D600C
	str r3, [r0, #0x34]
	bx lr
_021D600C:
	movs r2, #4
	tst r1, r2
	beq _021D6014
	str r3, [r0, #0x30]
_021D6014:
	bx lr
	nop
_021D6018: .4byte 0x021BF67C
	thumb_func_end ov21_021D5FD4

	thumb_func_start ov21_021D601C
ov21_021D601C: @ 0x021D601C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [r5, #0x28]
	adds r4, r2, #0
	cmp r1, #0
	beq _021D6038
	bl ov21_021D744C
	ldr r0, _021D609C @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r4, r5, r6, pc}
_021D6038:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _021D604E
	adds r1, r4, #0
	bl ov21_021D7538
	ldr r0, _021D609C @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r4, r5, r6, pc}
_021D604E:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021D607A
	ldr r0, [r5, #4]
	bl ov21_021D3898
	adds r1, r0, #0
	ldr r0, [r5, #4]
	bl ov21_021D38B0
	ldr r1, _021D60A0 @ =0x000001EE
	cmp r0, r1
	beq _021D607A
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021D7464
	ldr r0, _021D609C @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r4, r5, r6, pc}
_021D607A:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _021D6088
	adds r0, r5, #0
	bl ov21_021D747C
	pop {r4, r5, r6, pc}
_021D6088:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021D6098
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D74B0
	pop {r4, r5, r6, pc}
_021D6098:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D609C: .4byte 0x000005DD
_021D60A0: .4byte 0x000001EE
	thumb_func_end ov21_021D601C

	thumb_func_start ov21_021D60A4
ov21_021D60A4: @ 0x021D60A4
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _021D60F4
	ldr r2, [r4, #4]
	ldr r1, [r0, #0xc]
	subs r1, r1, r2
	cmp r1, #0
	ble _021D60BC
	str r1, [r0, #0xc]
	pop {r4, pc}
_021D60BC:
	movs r1, #0
	str r1, [r0, #0xc]
	str r1, [r4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _021D60F4
	ldr r0, [r4, #8]
	subs r0, r0, #1
	cmp r0, #0
	ble _021D60D4
	str r0, [r4, #8]
	pop {r4, pc}
_021D60D4:
	ldr r0, [r4, #4]
	blx FUN_020E17B4
	ldr r1, _021D60F8 @ =0x3FCCCCCD
	blx FUN_020E18B0
	blx FUN_020E1740
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	subs r1, r0, #1
	movs r0, #4
	subs r0, r0, r1
	str r1, [r4, #0xc]
	lsls r0, r0, #2
	str r0, [r4, #8]
_021D60F4:
	pop {r4, pc}
	nop
_021D60F8: .4byte 0x3FCCCCCD
	thumb_func_end ov21_021D60A4

	thumb_func_start ov21_021D60FC
ov21_021D60FC: @ 0x021D60FC
	movs r3, #0xa
	lsls r3, r3, #6
	str r3, [r0, #0xc]
	str r2, [r1]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov21_021D60FC

	thumb_func_start ov21_021D6108
ov21_021D6108: @ 0x021D6108
	ldr r3, _021D6110 @ =ov21_021D3844
	ldr r0, [r0, #4]
	bx r3
	nop
_021D6110: .4byte ov21_021D3844
	thumb_func_end ov21_021D6108

	thumb_func_start ov21_021D6114
ov21_021D6114: @ 0x021D6114
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r1, #0
	movs r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	adds r7, r3, #0
	str r1, [sp]
	adds r0, r6, #0
	adds r2, r1, #0
	adds r3, r1, #0
	str r7, [sp, #4]
	bl ov21_021D276C
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021D62E4
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov21_021D637C
	ldr r0, [r4, #4]
	bl ov21_021D38FC
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl ov21_021D3908
	adds r3, r0, #0
	ldr r2, [sp, #8]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021D63DC
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov21_021D6538
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov21_021D65DC
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov21_021D6744
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021D70C0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov21_021D67EC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6994
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D69A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6AE4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6B94
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6BB0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov21_021D6C44
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021D6F20
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D6114

	thumb_func_start ov21_021D61D8
ov21_021D61D8: @ 0x021D61D8
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021D695C
	adds r0, r4, #0
	bl ov21_021D6580
	adds r0, r4, #0
	bl ov21_021D6940
	adds r0, r4, #0
	bl ov21_021D63C0
	pop {r4, pc}
	thumb_func_end ov21_021D61D8

	thumb_func_start ov21_021D61F4
ov21_021D61F4: @ 0x021D61F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r2, #0
	movs r0, #0x20
	str r0, [sp]
	adds r6, r3, #0
	movs r2, #0
	adds r0, r7, #0
	movs r1, #4
	adds r3, r2, #0
	str r6, [sp, #4]
	bl ov21_021D276C
	adds r0, r7, #0
	movs r1, #0
	add r2, sp, #0x10
	adds r3, r6, #0
	bl ov21_021D27E0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	movs r1, #2
	ldr r0, [r0, #0xc]
	lsls r1, r1, #8
	str r0, [sp, #8]
	blx FUN_020C2C54
	ldr r0, [sp, #8]
	movs r2, #0x1e
	adds r0, #0x20
	movs r1, #0x20
	lsls r2, r2, #4
	str r0, [sp, #8]
	blx FUN_020C00B4
	ldr r0, [sp, #0xc]
	bl FUN_020181C4
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021D62E4
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov21_021D637C
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021D6538
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov21_021D65DC
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov21_021D6744
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021D70C0
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021D67EC
	ldr r0, [r4, #4]
	bl ov21_021D38FC
	adds r2, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021D64B0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6994
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D69A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6AE4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6B94
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6BB0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021D6C44
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov21_021D6F20
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D61F4

	thumb_func_start ov21_021D62E4
ov21_021D62E4: @ 0x021D62E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r5, r0, #0
	str r4, [sp, #0xc]
	ldr r2, [r5]
	movs r1, #0x1c
	movs r3, #3
	bl ov21_021D2724
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x26
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r6, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #0x27
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r4, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #4
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #1
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r1, #3
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021D62E4

	thumb_func_start ov21_021D637C
ov21_021D637C: @ 0x021D637C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	adds r6, r1, #0
	str r0, [sp, #8]
	adds r4, r2, #0
	str r4, [sp, #0xc]
	adds r7, r3, #0
	ldr r2, [r6]
	adds r0, r6, #0
	movs r1, #0x1c
	movs r3, #2
	bl ov21_021D2724
	cmp r7, #1
	bne _021D63A8
	movs r1, #0x2a
	b _021D63AA
_021D63A8:
	movs r1, #0x28
_021D63AA:
	adds r3, r5, #0
	adds r0, r6, #0
	movs r2, #1
	adds r3, #0xdc
	str r4, [sp]
	bl ov21_021D27B8
	adds r5, #0xd8
	str r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D637C

	thumb_func_start ov21_021D63C0
ov21_021D63C0: @ 0x021D63C0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xd8
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xd8
	str r1, [r0]
	adds r4, #0xdc
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D63C0

	thumb_func_start ov21_021D63DC
ov21_021D63DC: @ 0x021D63DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x20
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp, #0x10]
	bl FUN_02023790
	adds r4, r0, #0
	ldr r2, _021D64A8 @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	movs r1, #0
	adds r2, r4, #0
	adds r6, r0, #0
	bl FUN_0200B1B8
	movs r0, #0x98
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D64AC @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r2, r4, #0
	movs r3, #8
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	movs r1, #1
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0x98
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D64AC @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r2, r4, #0
	movs r3, #0x80
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #3
	movs r3, #2
	bl FUN_020238A0
	movs r0, #0xaa
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D64AC @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r2, r4, #0
	movs r3, #0x30
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x10]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #2
	bl FUN_020238A0
	movs r0, #0xaa
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D64AC @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r2, r4, #0
	movs r3, #0xb4
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D64A8: .4byte 0x000002B9
_021D64AC: .4byte 0x00020100
	thumb_func_end ov21_021D63DC

	thumb_func_start ov21_021D64B0
ov21_021D64B0: @ 0x021D64B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x20
	adds r6, r1, #0
	adds r7, r2, #0
	bl FUN_02023790
	adds r4, r0, #0
	ldr r2, _021D6530 @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	movs r1, #0x6d
	adds r2, r4, #0
	adds r6, r0, #0
	bl FUN_0200B1B8
	movs r0, #0x98
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D6534 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r2, r4, #0
	movs r3, #8
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #3
	movs r3, #2
	bl FUN_020238A0
	movs r0, #0xaa
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D6534 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r2, r4, #0
	movs r3, #0x30
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0201C3C0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6530: .4byte 0x000002B9
_021D6534: .4byte 0x00020100
	thumb_func_end ov21_021D64B0

	thumb_func_start ov21_021D6538
ov21_021D6538: @ 0x021D6538
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r0, #2
	movs r1, #0
	adds r2, r4, #0
	bl FUN_02009714
	adds r1, r5, #0
	adds r1, #0x80
	str r0, [r1]
	movs r0, #2
	movs r1, #1
	adds r2, r4, #0
	bl FUN_02009714
	adds r1, r5, #0
	adds r1, #0x84
	str r0, [r1]
	movs r0, #2
	adds r1, r0, #0
	adds r2, r4, #0
	bl FUN_02009714
	adds r1, r5, #0
	adds r1, #0x88
	str r0, [r1]
	movs r0, #2
	movs r1, #3
	adds r2, r4, #0
	bl FUN_02009714
	adds r5, #0x8c
	str r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D6538

	thumb_func_start ov21_021D6580
ov21_021D6580: @ 0x021D6580
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #0x51
	bl FUN_02009DC8
	bl FUN_0200A4E4
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #3
	bl FUN_02009DC8
	bl FUN_0200A6DC
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #0x6f
	bl FUN_02009DC8
	bl FUN_0200A4E4
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	bl FUN_02009754
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	bl FUN_02009754
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	bl FUN_02009754
	adds r4, #0x8c
	ldr r0, [r4]
	bl FUN_02009754
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D6580

	thumb_func_start ov21_021D65DC
ov21_021D65DC: @ 0x021D65DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r6, r0, #0
	movs r2, #0x51
	adds r0, r5, #0
	str r2, [sp]
	movs r3, #1
	str r3, [sp, #4]
	str r4, [sp, #8]
	adds r0, #0x80
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_02009A4C
	adds r7, r0, #0
	bl FUN_0200A3DC
	adds r0, r7, #0
	bl FUN_02009D4C
	movs r2, #3
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xc
	str r0, [sp, #8]
	adds r0, r5, #0
	str r4, [sp, #0xc]
	adds r0, #0x84
	ldr r0, [r0]
	adds r1, r6, #0
	movs r3, #0
	bl FUN_02009B04
	adds r7, r0, #0
	bl FUN_0200A640
	adds r0, r7, #0
	bl FUN_02009D4C
	movs r2, #0x4f
	str r2, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	str r4, [sp, #8]
	adds r0, #0x88
	ldr r0, [r0]
	adds r1, r6, #0
	movs r3, #1
	bl FUN_02009BC4
	movs r2, #0x50
	str r2, [sp]
	movs r0, #3
	str r0, [sp, #4]
	adds r0, r5, #0
	str r4, [sp, #8]
	adds r0, #0x8c
	ldr r0, [r0]
	adds r1, r6, #0
	movs r3, #1
	bl FUN_02009BC4
	movs r0, #0x50
	str r0, [sp]
	subs r0, #0x51
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #2
	str r1, [sp, #0x10]
	adds r1, r5, #0
	adds r1, #0x80
	ldr r1, [r1]
	movs r2, #3
	str r1, [sp, #0x14]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r1, [r1]
	movs r3, #0x4f
	str r1, [sp, #0x18]
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	str r1, [sp, #0x1c]
	adds r1, r5, #0
	adds r1, #0x8c
	ldr r1, [r1]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, #0
	adds r0, #0x90
	movs r1, #0x51
	bl FUN_020093B4
	movs r2, #0x6f
	str r2, [sp]
	movs r3, #1
	str r3, [sp, #4]
	adds r0, r5, #0
	str r4, [sp, #8]
	adds r0, #0x80
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_02009A4C
	adds r7, r0, #0
	bl FUN_0200A3DC
	adds r0, r7, #0
	bl FUN_02009D4C
	movs r2, #0x6d
	str r2, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	str r4, [sp, #8]
	adds r0, #0x88
	ldr r0, [r0]
	adds r1, r6, #0
	movs r3, #1
	bl FUN_02009BC4
	movs r2, #0x6e
	str r2, [sp]
	movs r0, #3
	str r0, [sp, #4]
	adds r0, r5, #0
	str r4, [sp, #8]
	adds r0, #0x8c
	ldr r0, [r0]
	adds r1, r6, #0
	movs r3, #1
	bl FUN_02009BC4
	movs r0, #0x6e
	str r0, [sp]
	subs r0, #0x6f
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #2
	str r1, [sp, #0x10]
	adds r1, r5, #0
	adds r1, #0x80
	ldr r1, [r1]
	movs r2, #3
	str r1, [sp, #0x14]
	adds r1, r5, #0
	adds r1, #0x84
	ldr r1, [r1]
	movs r3, #0x6d
	str r1, [sp, #0x18]
	adds r1, r5, #0
	adds r1, #0x88
	ldr r1, [r1]
	str r1, [sp, #0x1c]
	adds r1, r5, #0
	adds r1, #0x8c
	ldr r1, [r1]
	adds r5, #0xb4
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, #0
	movs r1, #0x6f
	bl FUN_020093B4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D65DC

	thumb_func_start ov21_021D6744
ov21_021D6744: @ 0x021D6744
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	movs r4, #0
	adds r6, r0, #0
	adds r3, r1, #0
	add r5, sp, #0
	adds r0, r4, #0
	adds r1, r4, #0
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	stm r5!, {r0, r1}
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r3, r0]
	adds r5, r6, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x90
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #0x18]
	movs r0, #0x20
	str r2, [sp, #0x1c]
	str r0, [sp, #0x14]
	adds r7, r4, #0
_021D6778:
	add r0, sp, #0
	bl FUN_02021B90
	adds r1, r7, #0
	stm r5!, {r0}
	bl FUN_02021D6C
	adds r4, r4, #1
	cmp r4, #9
	blt _021D6778
	movs r5, #0
	str r5, [sp, #0x14]
	adds r4, r6, #0
	add r7, sp, #0
_021D6794:
	adds r0, r7, #0
	bl FUN_02021B90
	movs r1, #1
	str r0, [r4, #0x50]
	bl FUN_02021D6C
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #9
	blt _021D6794
	movs r0, #0
	str r0, [sp, #0x14]
	add r0, sp, #0
	bl FUN_02021B90
	movs r1, #2
	str r0, [r6, #0x74]
	bl FUN_02021D6C
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0xe
	lsls r0, r0, #0xe
	str r0, [sp, #8]
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r0, #0xb4
	str r0, [sp, #4]
	add r0, sp, #0
	bl FUN_02021B90
	str r0, [r6, #0x7c]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r6, #0x7c]
	movs r1, #1
	bl FUN_02021FE0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D6744

	thumb_func_start ov21_021D67EC
ov21_021D67EC: @ 0x021D67EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r1, [sp, #8]
	str r0, [sp, #4]
	movs r1, #0x15
	ldr r0, [sp, #8]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	movs r1, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	adds r7, r2, #0
	adds r0, #0x98
	ldr r0, [r0]
	str r3, [sp, #0xc]
	str r0, [sp, #0x24]
	movs r0, #2
	str r0, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x3c]
	adds r0, r3, #0
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r1, [sp, #0x38]
	str r0, [sp, #0x40]
	ldr r0, [r7, #4]
	bl ov21_021D3898
	subs r4, r0, #4
	ldr r0, [sp, #4]
	ldr r6, [r0, #0x24]
	ldr r0, [r7, #4]
	bl ov21_021D38A4
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
_021D6838:
	ldr r0, [sp, #4]
	lsls r1, r6, #2
	adds r5, r0, r1
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D684C
	bl ov21_021D4D1C
	movs r0, #0
	str r0, [r5, #0x28]
_021D684C:
	cmp r4, #0
	blt _021D68A4
	ldr r0, [sp, #0x10]
	cmp r4, r0
	bge _021D68A4
	ldr r0, [r7, #4]
	adds r1, r4, #0
	bl ov21_021D38B0
	adds r1, r0, #0
	ldr r0, _021D68C4 @ =0x000001EE
	cmp r1, r0
	beq _021D6892
	ldr r0, [r7, #4]
	bl ov21_021D37DC
	adds r3, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [r7, #4]
	ldr r2, [sp, #0xc]
	ldr r3, [r3]
	bl ov21_021D16D8
	ldr r1, [sp, #4]
	str r0, [sp, #0x20]
	str r0, [sp, #0x18]
	ldr r1, [r1, #0x4c]
	add r0, sp, #0x1c
	bl ov21_021D4CB8
	str r0, [r5, #0x28]
	ldr r0, [sp, #0x18]
	bl ov21_021D4DA0
	b _021D68A8
_021D6892:
	adds r0, r4, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r3, r6, #0
	bl ov21_021D6DF4
	b _021D68A8
_021D68A4:
	movs r0, #0
	str r0, [r5, #0x28]
_021D68A8:
	adds r0, r6, #1
	movs r1, #9
	blx FUN_020E1F6C
	ldr r0, [sp, #0x14]
	adds r6, r1, #0
	adds r0, r0, #1
	adds r4, r4, #1
	str r0, [sp, #0x14]
	cmp r0, #9
	blt _021D6838
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_021D68C4: .4byte 0x000001EE
	thumb_func_end ov21_021D67EC

	thumb_func_start ov21_021D68C8
ov21_021D68C8: @ 0x021D68C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r2, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r6, r1, #0
	bl ov21_021D3898
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl ov21_021D375C
	adds r1, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37DC
	adds r7, r0, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #8]
	bl ov21_021D38B0
	ldr r1, _021D693C @ =0x000001EE
	cmp r0, r1
	bne _021D6910
	adds r0, r6, #0
	movs r1, #0
	bl ov21_021D217C
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _021D6938
	movs r1, #1
	bl FUN_02021CAC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_021D6910:
	movs r0, #0x38
	str r0, [sp]
	movs r0, #0x50
	str r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r7]
	adds r0, r6, #0
	movs r3, #2
	bl ov21_021D1890
	adds r0, r6, #0
	movs r1, #1
	bl ov21_021D217C
	ldr r0, [r5, #0x7c]
	cmp r0, #0
	beq _021D6938
	movs r1, #0
	bl FUN_02021CAC
_021D6938:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D693C: .4byte 0x000001EE
	thumb_func_end ov21_021D68C8

	thumb_func_start ov21_021D6940
ov21_021D6940: @ 0x021D6940
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021D6946:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D6950
	bl ov21_021D4D1C
_021D6950:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #9
	blt _021D6946
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D6940

	thumb_func_start ov21_021D695C
ov21_021D695C: @ 0x021D695C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_021D6964:
	ldr r0, [r5]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #9
	blt _021D6964
	movs r5, #0
	adds r4, r6, #0
_021D6976:
	ldr r0, [r4, #0x50]
	bl FUN_02021BD4
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #9
	blt _021D6976
	ldr r0, [r6, #0x74]
	bl FUN_02021BD4
	ldr r0, [r6, #0x7c]
	bl FUN_02021BD4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D695C

	thumb_func_start ov21_021D6994
ov21_021D6994: @ 0x021D6994
	ldr r3, _021D699C @ =ov21_021D6ED0
	movs r2, #0
	str r2, [r0, #0x24]
	bx r3
	.align 2, 0
_021D699C: .4byte ov21_021D6ED0
	thumb_func_end ov21_021D6994

	thumb_func_start ov21_021D69A0
ov21_021D69A0: @ 0x021D69A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [r5, #0x24]
	str r1, [sp]
	str r0, [sp, #4]
	movs r4, #0
_021D69AE:
	ldr r0, [sp]
	ldr r0, [r0, #8]
	cmp r0, #1
	bne _021D69BA
	adds r0, r4, #2
	b _021D69BC
_021D69BA:
	adds r0, r4, #0
_021D69BC:
	adds r1, r4, #1
	ldr r3, [sp]
	lsls r7, r1, #2
	movs r2, #0xa
	lsls r0, r0, #2
	ldr r1, _021D6A50 @ =0x021E9D14
	str r0, [sp, #8]
	ldr r0, [r1, r0]
	lsls r2, r2, #6
	ldr r6, [r3, #0xc]
	adds r3, r2, #0
	ldr r1, [r1, r7]
	subs r3, r3, r6
	bl ov21_021D6BF8
	str r0, [sp, #0xc]
	ldr r3, [sp]
	movs r2, #0xa
	ldr r1, _021D6A54 @ =0x021E9D40
	ldr r0, [sp, #8]
	lsls r2, r2, #6
	ldr r6, [r3, #0xc]
	ldr r0, [r1, r0]
	adds r3, r2, #0
	ldr r1, [r1, r7]
	subs r3, r3, r6
	bl ov21_021D6BF8
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	add r1, sp, #0xc
	lsls r6, r0, #2
	ldr r0, [r5, r6]
	bl FUN_02021C50
	movs r0, #4
	subs r7, r0, r4
	bpl _021D6A0A
	rsbs r7, r7, #0
_021D6A0A:
	lsls r1, r7, #1
	bpl _021D6A10
	rsbs r1, r1, #0
_021D6A10:
	ldr r0, [r5, r6]
	adds r1, #0x20
	bl FUN_02021F58
	cmp r4, #4
	bne _021D6A26
	ldr r0, [r5, r6]
	movs r1, #0
	bl FUN_02021F24
	b _021D6A3A
_021D6A26:
	adds r1, r7, #6
	cmp r1, #9
	ldr r0, [r5, r6]
	bge _021D6A34
	bl FUN_02021F24
	b _021D6A3A
_021D6A34:
	movs r1, #9
	bl FUN_02021F24
_021D6A3A:
	ldr r0, [sp, #4]
	movs r1, #9
	adds r0, r0, #1
	blx FUN_020E1F6C
	adds r4, r4, #1
	str r1, [sp, #4]
	cmp r4, #9
	blt _021D69AE
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6A50: .4byte 0x021E9D14
_021D6A54: .4byte 0x021E9D40
	thumb_func_end ov21_021D69A0

	thumb_func_start ov21_021D6A58
ov21_021D6A58: @ 0x021D6A58
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D3898
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D38A4
	adds r7, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021D6AAA
	ldr r0, [r5, #0x24]
	adds r0, r0, #1
	cmp r0, #9
	bge _021D6A7E
	b _021D6A80
_021D6A7E:
	movs r0, #0
_021D6A80:
	str r0, [r5, #0x24]
	ldr r0, [r5, #0x24]
	movs r1, #9
	adds r0, #8
	blx FUN_020E1F6C
	adds r0, r6, #4
	cmp r0, r7
	blt _021D6A9E
	lsls r0, r1, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_021D6A9E:
	lsls r0, r1, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_021D6AAA:
	cmp r0, #2
	bne _021D6AD8
	ldr r0, [r5, #0x24]
	subs r0, r0, #1
	bmi _021D6AB6
	b _021D6AB8
_021D6AB6:
	movs r0, #8
_021D6AB8:
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x24]
	subs r0, r6, #4
	bpl _021D6ACC
	lsls r0, r1, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_021D6ACC:
	lsls r0, r1, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
_021D6AD8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D6ED0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D6A58

	thumb_func_start ov21_021D6AE4
ov21_021D6AE4: @ 0x021D6AE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r1, #0
	str r0, [sp]
	ldr r0, [r7, #4]
	bl ov21_021D3898
	adds r5, r0, #0
	ldr r0, [r7, #4]
	bl ov21_021D38A4
	str r0, [sp, #4]
	subs r0, r5, #4
	movs r4, #0
	str r0, [sp, #8]
_021D6B02:
	ldr r0, [sp]
	movs r1, #9
	ldr r0, [r0, #0x24]
	adds r0, r0, r4
	blx FUN_020E1F6C
	ldr r0, [sp, #8]
	adds r5, r1, #0
	movs r6, #0
	adds r1, r0, r4
	bmi _021D6B3A
	ldr r0, [sp, #4]
	cmp r1, r0
	bge _021D6B3A
	ldr r0, [r7, #4]
	bl ov21_021D38B0
	adds r1, r0, #0
	ldr r0, _021D6B90 @ =0x000001EE
	cmp r1, r0
	beq _021D6B3A
	ldr r0, [r7, #4]
	bl ov21_021D37DC
	ldr r0, [r0, #4]
	cmp r0, #2
	bne _021D6B3A
	movs r6, #1
_021D6B3A:
	ldr r0, [sp]
	lsls r1, r5, #2
	adds r5, r0, r1
	ldr r0, [r5, #0x50]
	adds r1, r6, #0
	bl FUN_02021CAC
	cmp r6, #0
	beq _021D6B86
	ldr r0, [r5]
	bl FUN_02021D28
	movs r1, #0x36
	ldr r2, [r0]
	lsls r1, r1, #0xc
	subs r1, r2, r1
	str r1, [sp, #0xc]
	ldr r0, [r0, #4]
	add r1, sp, #0xc
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x50]
	bl FUN_02021C50
	ldr r0, [r5]
	bl FUN_02021F48
	adds r1, r0, #0
	ldr r0, [r5, #0x50]
	bl FUN_02021EF0
	ldr r0, [r5]
	bl FUN_02021F74
	adds r1, r0, #0
	ldr r0, [r5, #0x50]
	subs r1, r1, #1
	bl FUN_02021F58
_021D6B86:
	adds r4, r4, #1
	cmp r4, #9
	blt _021D6B02
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6B90: .4byte 0x000001EE
	thumb_func_end ov21_021D6AE4

	thumb_func_start ov21_021D6B94
ov21_021D6B94: @ 0x021D6B94
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #4]
	bl ov21_021D38A4
	adds r1, r0, #0
	movs r0, #0x36
	lsls r0, r0, #0xc
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	str r0, [r4, #0x78]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D6B94

	thumb_func_start ov21_021D6BB0
ov21_021D6BB0: @ 0x021D6BB0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r1, #4]
	bl ov21_021D3898
	adds r2, r0, #0
	ldr r0, [r4, #0x78]
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	movs r0, #0x3a
	lsls r0, r0, #0xc
	str r1, [sp, #4]
	adds r0, r1, r0
	str r0, [sp, #4]
	movs r0, #0x3e
	lsls r0, r0, #0xe
	str r0, [sp]
	ldr r0, [r4, #0x74]
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D6BB0

	thumb_func_start ov21_021D6BF8
ov21_021D6BF8: @ 0x021D6BF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	subs r0, r1, r5
	lsls r2, r3, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	lsls r1, r4, #0xc
	blx FUN_020BCFD0
	adds r0, r0, r5
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D6BF8

	thumb_func_start ov21_021D6C24
ov21_021D6C24: @ 0x021D6C24
	push {r3, r4, r5, lr}
	movs r2, #0x52
	adds r5, r1, #0
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, [r5, #4]
	bl ov21_021D3898
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D6C24

	thumb_func_start ov21_021D6C44
ov21_021D6C44: @ 0x021D6C44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r5, [r7, #0x24]
	movs r6, #0
_021D6C4E:
	lsls r0, r5, #2
	adds r4, r7, r0
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _021D6C90
	ldr r0, [r4]
	add r1, sp, #4
	add r2, sp, #0
	bl ov21_021D6CA4
	ldr r0, [r4, #0x28]
	ldr r1, [sp, #4]
	ldr r0, [r0]
	ldr r2, [sp]
	bl FUN_020128C4
	ldr r0, [r4]
	bl FUN_02021F74
	adds r1, r0, #0
	ldr r0, [r4, #0x28]
	subs r1, r1, #1
	ldr r0, [r0]
	bl FUN_02012A30
	ldr r0, [r4]
	bl FUN_02021F48
	adds r1, r0, #0
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	bl FUN_02012A90
_021D6C90:
	adds r0, r5, #1
	movs r1, #9
	blx FUN_020E1F6C
	adds r6, r6, #1
	adds r5, r1, #0
	cmp r6, #9
	blt _021D6C4E
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D6C44

	thumb_func_start ov21_021D6CA4
ov21_021D6CA4: @ 0x021D6CA4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_02021D28
	ldr r1, [r0]
	asrs r1, r1, #0xc
	str r1, [r5]
	ldr r0, [r0, #4]
	asrs r0, r0, #0xc
	str r0, [r4]
	ldr r0, [r5]
	subs r0, #0x40
	str r0, [r5]
	ldr r0, [r4]
	subs r0, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D6CA4

	thumb_func_start ov21_021D6CC8
ov21_021D6CC8: @ 0x021D6CC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r2, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	bl ov21_021D3898
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl ov21_021D38A4
	ldr r1, [r4, #8]
	str r0, [sp, #0x10]
	cmp r1, #1
	beq _021D6CF0
	cmp r1, #2
	beq _021D6CFA
	b _021D6D00
_021D6CF0:
	ldr r6, [r5, #0x24]
	ldr r0, [sp, #0x14]
	adds r6, #8
	adds r7, r0, #4
	b _021D6D00
_021D6CFA:
	ldr r0, [sp, #0x14]
	ldr r6, [r5, #0x24]
	subs r7, r0, #4
_021D6D00:
	cmp r1, #0
	bne _021D6D14
	ldr r1, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov21_021D67EC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D6D14:
	adds r0, r6, #0
	movs r1, #9
	blx FUN_020E1F6C
	ldr r0, [sp, #0x10]
	adds r6, r1, #0
	cmp r7, r0
	bge _021D6D5E
	cmp r7, #0
	blt _021D6D5E
	ldr r0, [r4, #4]
	adds r1, r7, #0
	bl ov21_021D38B0
	ldr r1, _021D6D74 @ =0x000001EE
	cmp r0, r1
	beq _021D6D4A
	str r6, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov21_021D6D78
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D6D4A:
	adds r0, r7, #1
	str r0, [sp]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	adds r0, r5, #0
	adds r3, r6, #0
	bl ov21_021D6DF4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_021D6D5E:
	lsls r4, r6, #2
	adds r5, #0x28
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _021D6D70
	bl ov21_021D4D1C
	movs r0, #0
	str r0, [r5, r4]
_021D6D70:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6D74: .4byte 0x000001EE
	thumb_func_end ov21_021D6CC8

	thumb_func_start ov21_021D6D78
ov21_021D6D78: @ 0x021D6D78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x44]
	adds r7, r3, #0
	bl ov21_021D37DC
	str r0, [sp]
	cmp r0, #0
	bne _021D6D96
	bl FUN_02022974
_021D6D96:
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	ldr r3, [sp]
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x24]
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	str r1, [sp, #0x18]
	str r1, [sp, #0x20]
	str r7, [sp, #0x28]
	ldr r1, [r4, #4]
	ldr r3, [r3]
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov21_021D16D8
	adds r6, r0, #0
	ldr r0, [sp, #0x40]
	adds r4, r5, #0
	adds r4, #0x28
	lsls r7, r0, #2
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _021D6DDC
	bl ov21_021D4D1C
_021D6DDC:
	str r6, [sp, #8]
	ldr r1, [r5, #0x4c]
	add r0, sp, #4
	bl ov21_021D4CB8
	str r0, [r4, r7]
	adds r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D6D78

	thumb_func_start ov21_021D6DF4
ov21_021D6DF4: @ 0x021D6DF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r4, r2, #0
	str r0, [sp, #0x10]
	adds r5, r1, #0
	movs r0, #0x20
	adds r1, r4, #0
	adds r6, r3, #0
	bl FUN_02023790
	adds r7, r0, #0
	ldr r2, _021D6EC8 @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	movs r2, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	adds r0, #0x98
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x34]
	movs r0, #1
	str r2, [sp, #0x30]
	str r4, [sp, #0x3c]
	str r0, [sp, #0x38]
	ldr r0, [r5, r1]
	movs r1, #0xf
	bl ov21_021D4D6C
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x58]
	adds r0, r7, #0
	movs r2, #3
	movs r3, #2
	bl FUN_020238A0
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D6ECC @ =0x00030201
	adds r2, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0x16
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	movs r1, #0x63
	adds r2, r7, #0
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D6ECC @ =0x00030201
	adds r2, r7, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0x31
	bl FUN_0201D78C
	ldr r4, [sp, #0x10]
	lsls r6, r6, #2
	adds r4, #0x28
	ldr r0, [r4, r6]
	cmp r0, #0
	beq _021D6EA4
	bl ov21_021D4D1C
_021D6EA4:
	ldr r1, [sp, #0x10]
	str r5, [sp, #0x1c]
	ldr r1, [r1, #0x4c]
	add r0, sp, #0x18
	bl ov21_021D4CB8
	str r0, [r4, r6]
	adds r0, r5, #0
	bl ov21_021D4DA0
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_0200B190
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D6EC8: .4byte 0x000002B9
_021D6ECC: .4byte 0x00030201
	thumb_func_end ov21_021D6DF4

	thumb_func_start ov21_021D6ED0
ov21_021D6ED0: @ 0x021D6ED0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D3898
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D38A4
	subs r4, r5, #4
	ldr r5, [r6, #0x24]
	str r0, [sp]
	movs r7, #0
_021D6EEC:
	cmp r4, #0
	blt _021D6F02
	ldr r0, [sp]
	cmp r4, r0
	bge _021D6F02
	lsls r0, r5, #2
	ldr r0, [r6, r0]
	movs r1, #1
	bl FUN_02021CAC
	b _021D6F0C
_021D6F02:
	lsls r0, r5, #2
	ldr r0, [r6, r0]
	movs r1, #0
	bl FUN_02021CAC
_021D6F0C:
	adds r0, r5, #1
	movs r1, #9
	blx FUN_020E1F6C
	adds r7, r7, #1
	adds r5, r1, #0
	adds r4, r4, #1
	cmp r7, #9
	blt _021D6EEC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D6ED0

	thumb_func_start ov21_021D6F20
ov21_021D6F20: @ 0x021D6F20
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r2, #0xc]
	movs r0, #0xa
	lsls r0, r0, #6
	subs r0, r0, r1
	lsls r0, r0, #0xc
	movs r2, #0x1f
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xc
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	movs r1, #0xa
	lsls r1, r1, #0x12
	blx FUN_020BCFD0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov21_021D2170
	movs r1, #0x17
	asrs r2, r5, #0xc
	bl FUN_02007DEC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D6F20

	thumb_func_start ov21_021D6F64
ov21_021D6F64: @ 0x021D6F64
	push {r3, lr}
	bl ov21_021D2170
	movs r1, #0x17
	movs r2, #0x1f
	bl FUN_02007DEC
	pop {r3, pc}
	thumb_func_end ov21_021D6F64

	thumb_func_start ov21_021D6F74
ov21_021D6F74: @ 0x021D6F74
	push {r4, lr}
	movs r1, #0xa
	ldr r0, [r0, #0xc]
	lsls r1, r1, #6
	subs r0, r1, r0
	lsls r3, r0, #0xc
	asrs r2, r3, #0x1f
	lsrs r0, r3, #0x10
	lsls r4, r2, #0x10
	orrs r4, r0
	movs r0, #2
	lsls r3, r3, #0x10
	movs r2, #0
	lsls r0, r0, #0xa
	adds r0, r3, r0
	adcs r4, r2
	lsls r2, r4, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r2
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	asrs r1, r0, #0xc
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _021D6FB0 @ =0x04000052
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_021D6FB0: .4byte 0x04000052
	thumb_func_end ov21_021D6F74

	thumb_func_start ov21_021D6FB4
ov21_021D6FB4: @ 0x021D6FB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0x14]
	ldr r0, _021D7040 @ =0x00000685
	adds r5, r2, #0
	str r1, [sp, #0x18]
	adds r4, r3, #0
	bl FUN_02005748
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021D6FFA
	cmp r4, #0
	beq _021D6FEC
	ldr r0, [sp, #0x18]
	movs r6, #3
	ldr r0, [r0]
	movs r4, #0
	ldr r0, [r0]
	movs r1, #1
	adds r2, r6, #0
	movs r3, #0xc0
	str r4, [sp, #0x1c]
	movs r7, #0xe
	movs r5, #4
	bl FUN_02019184
	b _021D7018
_021D6FEC:
	movs r0, #3
	movs r6, #0
	str r0, [sp, #0x1c]
	movs r4, #0xe
	adds r7, r6, #0
	movs r5, #4
	b _021D7018
_021D6FFA:
	cmp r4, #0
	beq _021D700C
	movs r0, #0xc
	str r0, [sp, #0x1c]
	movs r4, #0x14
	movs r6, #3
	movs r7, #0xe
	movs r5, #4
	b _021D7018
_021D700C:
	movs r0, #3
	str r0, [sp, #0x1c]
	movs r4, #0xe
	movs r6, #0xc
	movs r7, #0x14
	movs r5, #4
_021D7018:
	ldr r0, [sp, #0x1c]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	str r6, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r5, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r1, [r1]
	adds r3, #0xdc
	str r3, [sp, #0x14]
	ldr r1, [r1]
	ldr r3, [r3]
	adds r0, #0xe0
	movs r2, #2
	bl ov21_021D1558
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D7040: .4byte 0x00000685
	thumb_func_end ov21_021D6FB4

	thumb_func_start ov21_021D7044
ov21_021D7044: @ 0x021D7044
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xe0
	adds r4, r1, #0
	bl ov21_021D157C
	adds r6, r0, #0
	bne _021D708E
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r1, [r0]
	adds r0, r5, #0
	adds r0, #0xfc
	ldr r0, [r0]
	subs r0, r0, #1
	muls r0, r1, r0
	movs r1, #1
	lsls r1, r1, #8
	ldr r1, [r5, r1]
	blx FUN_020E1F6C
	adds r5, #0xf0
	ldr r1, [r5]
	adds r0, r0, r1
	lsls r3, r0, #3
	movs r0, #0x2f
	subs r3, #0x70
	mvns r0, r0
	cmp r3, r0
	bge _021D7082
	adds r3, r0, #0
_021D7082:
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	movs r2, #3
	bl FUN_0201C63C
_021D708E:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D7044

	thumb_func_start ov21_021D7094
ov21_021D7094: @ 0x021D7094
	push {r3, lr}
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _021D70AE
	cmp r2, #0
	bne _021D70AE
	ldr r0, [r0]
	movs r1, #1
	ldr r0, [r0]
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
_021D70AE:
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D70BC @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_021D70BC: .4byte 0xFFFF1FFF
	thumb_func_end ov21_021D7094

	thumb_func_start ov21_021D70C0
ov21_021D70C0: @ 0x021D70C0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	movs r1, #0xf
	movs r2, #2
	bl ov21_021D4D6C
	adds r4, r0, #0
	movs r1, #1
	adds r2, r5, #0
	bl FUN_02012898
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov21_021D4DA0
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D70C0

	thumb_func_start ov21_021D70E8
ov21_021D70E8: @ 0x021D70E8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x74]
	movs r1, #1
	bl FUN_02021FE0
	movs r6, #1
	movs r4, #0
	adds r7, r6, #0
_021D70FA:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_02021FE0
	ldr r0, [r5, #0x50]
	adds r1, r7, #0
	bl FUN_02021FE0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D7118
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02012AF0
_021D7118:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #9
	blt _021D70FA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D70E8

	thumb_func_start ov21_021D7124
ov21_021D7124: @ 0x021D7124
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x74]
	movs r1, #0
	bl FUN_02021FE0
	movs r4, #0
	adds r6, r4, #0
	adds r7, r4, #0
_021D7136:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_02021FE0
	ldr r0, [r5, #0x50]
	adds r1, r7, #0
	bl FUN_02021FE0
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _021D7154
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02012AF0
_021D7154:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #9
	blt _021D7136
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D7124

	thumb_func_start ov21_021D7160
ov21_021D7160: @ 0x021D7160
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4, #0x24]
	adds r6, r1, #0
	adds r0, r0, #4
	movs r1, #9
	adds r5, r2, #0
	adds r7, r3, #0
	blx FUN_020E1F6C
	lsls r0, r1, #2
	ldr r0, [r4, r0]
	bl FUN_02021D28
	adds r4, r0, #0
	ldr r0, [r5, #4]
	bl ov21_021D375C
	adds r3, r0, #0
	ldr r0, [r4]
	adds r2, r7, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl ov21_021D1778
	adds r0, r6, #0
	movs r1, #0
	bl ov21_021D238C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D7160

	thumb_func_start ov21_021D71A8
ov21_021D71A8: @ 0x021D71A8
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	adds r4, r3, #0
	bl ov21_021D6FB4
	ldr r0, [r5, #0x10]
	cmp r0, #1
	beq _021D71E2
	cmp r4, #0
	beq _021D71D0
	movs r1, #0
	movs r0, #1
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #4
	subs r2, #0x10
	movs r3, #0x39
	bl FUN_0200AAE0
	pop {r3, r4, r5, pc}
_021D71D0:
	movs r0, #1
	str r0, [sp]
	movs r0, #4
	adds r1, r0, #0
	subs r1, #0x14
	movs r2, #0
	movs r3, #0x39
	bl FUN_0200AAE0
_021D71E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D71A8

	thumb_func_start ov21_021D71E4
ov21_021D71E4: @ 0x021D71E4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021D7044
	adds r7, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _021D7200
	movs r0, #1
	bl FUN_0200AC1C
	b _021D7202
_021D7200:
	movs r0, #1
_021D7202:
	cmp r7, #1
	bne _021D7242
	cmp r0, #1
	bne _021D7242
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _021D7234
	cmp r6, #0
	bne _021D7234
	movs r0, #0xf
	mvns r0, r0
	movs r1, #0x3f
	movs r2, #1
	bl FUN_0200AB4C
	ldr r0, [r5]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [r5]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
_021D7234:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021D7094
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D7242:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D71E4

	thumb_func_start ov21_021D7248
ov21_021D7248: @ 0x021D7248
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	bl ov21_021D70E8
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021D6FB4
	cmp r4, #0
	bne _021D7278
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021D7394
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021D73F0
_021D7278:
	ldr r0, [r7, #0x10]
	cmp r0, #1
	beq _021D72CE
	cmp r4, #0
	beq _021D72AA
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x28
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #4
	adds r2, r1, #0
	subs r2, #0x14
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021D72AA:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x28
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #4
	adds r3, r1, #0
	subs r3, #0x14
	bl ov21_021D23F8
_021D72CE:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D7248

	thumb_func_start ov21_021D72D4
ov21_021D72D4: @ 0x021D72D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r2, #0
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021D7044
	str r0, [sp, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _021D72FA
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #0xc]
_021D72FA:
	cmp r6, #0
	bne _021D7314
	adds r0, r7, #0
	adds r1, r5, #0
	bl ov21_021D73C8
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r5, #0
	bl ov21_021D7424
	str r0, [sp, #0x14]
	b _021D731A
_021D7314:
	movs r0, #1
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
_021D731A:
	movs r1, #0
	add r2, sp, #8
_021D731E:
	ldr r0, [r2]
	cmp r0, #0
	beq _021D732C
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #4
	blt _021D731E
_021D732C:
	cmp r1, #4
	bne _021D738A
	cmp r6, #0
	bne _021D7364
	ldr r0, [r4, #0x10]
	cmp r0, #1
	beq _021D737A
	movs r3, #0
	adds r0, r3, #0
	str r3, [sp]
	subs r0, #0x10
	str r0, [sp, #4]
	ldr r0, _021D7390 @ =0x04000050
	movs r1, #0x2e
	movs r2, #8
	blx FUN_020BF5A0
	ldr r0, [r5]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [r5]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	b _021D737A
_021D7364:
	adds r0, r7, #0
	bl ov21_021D7124
	ldr r0, [r5]
	movs r1, #0
	bl ov21_021D23C0
	ldr r0, [r5]
	movs r1, #0
	bl ov21_021D2360
_021D737A:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021D7094
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D738A:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D7390: .4byte 0x04000050
	thumb_func_end ov21_021D72D4

	thumb_func_start ov21_021D7394
ov21_021D7394: @ 0x021D7394
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0x48
	adds r5, r0, #0
	str r1, [sp]
	movs r0, #4
	adds r1, #0xbc
	str r0, [sp, #4]
	adds r0, r5, r1
	movs r1, #0x38
	movs r2, #0x30
	movs r3, #0x50
	bl ov21_021D2648
	movs r2, #0x41
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	adds r2, r2, #4
	ldr r0, [r4]
	ldr r2, [r5, r2]
	bl ov21_021D2164
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D7394

	thumb_func_start ov21_021D73C8
ov21_021D73C8: @ 0x021D73C8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x41
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r4, r1, #0
	bl ov21_021D2664
	movs r2, #0x41
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	adds r2, r2, #4
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r2, [r5, r2]
	bl ov21_021D2164
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D73C8

	thumb_func_start ov21_021D73F0
ov21_021D73F0: @ 0x021D73F0
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #0x49
	lsls r0, r0, #2
	adds r4, r1, #0
	adds r0, r5, r0
	movs r1, #0xaa
	movs r2, #0xac
	movs r3, #0x52
	bl ov21_021D2648
	movs r2, #0x49
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	adds r2, r2, #4
	ldr r0, [r4]
	ldr r2, [r5, r2]
	bl ov21_021D1848
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D73F0

	thumb_func_start ov21_021D7424
ov21_021D7424: @ 0x021D7424
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x49
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r4, r1, #0
	bl ov21_021D2664
	movs r2, #0x49
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	adds r2, r2, #4
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r2, [r5, r2]
	bl ov21_021D1848
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D7424

	thumb_func_start ov21_021D744C
ov21_021D744C: @ 0x021D744C
	ldr r3, [r0]
	movs r1, #4
	ldr r2, [r3]
	orrs r1, r2
	str r1, [r3]
	movs r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	movs r1, #2
	str r1, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D744C

	thumb_func_start ov21_021D7464
ov21_021D7464: @ 0x021D7464
	ldr r3, [r1]
	movs r0, #2
	ldr r2, [r3]
	orrs r2, r0
	str r2, [r3]
	movs r3, #0
	str r3, [r1, #0x10]
	movs r2, #1
	str r2, [r1, #0x14]
	str r3, [r1, #0xc]
	str r0, [r1, #0x20]
	bx lr
	thumb_func_end ov21_021D7464

	thumb_func_start ov21_021D747C
ov21_021D747C: @ 0x021D747C
	push {r3, lr}
	movs r1, #0x5d
	ldr r2, [r0, #4]
	lsls r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021D74A8
	ldr r3, [r0]
	movs r1, #1
	ldr r2, [r3]
	orrs r1, r2
	str r1, [r3]
	movs r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	movs r1, #2
	str r1, [r0, #0x20]
	ldr r0, _021D74AC @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	pop {r3, pc}
_021D74A8:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_021D74AC: .4byte 0x000005DD
	thumb_func_end ov21_021D747C

	thumb_func_start ov21_021D74B0
ov21_021D74B0: @ 0x021D74B0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	movs r1, #0x5d
	ldr r0, [r5, #4]
	lsls r1, r1, #6
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021D74CA
	add sp, #0x10
	movs r0, #0
	pop {r4, r5, r6, pc}
_021D74CA:
	bl ov21_021D36D8
	cmp r0, #0
	bne _021D74D6
	movs r4, #1
	b _021D74D8
_021D74D6:
	movs r4, #0
_021D74D8:
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl ov21_021D36A4
	cmp r0, #0
	beq _021D752C
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl ov21_021D36C0
	ldr r0, _021D7534 @ =0x000005DD
	bl FUN_02005748
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5, #4]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov21_021D3684
	ldr r0, [r5, #4]
	movs r1, #0
	bl ov21_021D36FC
	movs r3, #0
	str r3, [r5, #0xc]
	ldr r2, [r5]
	movs r0, #0x10
	ldr r1, [r2]
	add sp, #0x10
	orrs r0, r1
	str r0, [r2]
	str r3, [r5, #0x10]
	str r3, [r5, #0x14]
	movs r0, #2
	str r0, [r5, #0x20]
	str r3, [r5, #0x1c]
	movs r0, #1
	pop {r4, r5, r6, pc}
_021D752C:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D7534: .4byte 0x000005DD
	thumb_func_end ov21_021D74B0

	thumb_func_start ov21_021D7538
ov21_021D7538: @ 0x021D7538
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	bl ov21_021D37BC
	adds r6, r0, #0
	ldr r0, [r5, #4]
	bl ov21_021D36D8
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5, #4]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov21_021D3684
	ldr r2, [r5]
	movs r0, #0x10
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r5, #4]
	adds r1, r6, #0
	bl ov21_021D3794
	movs r2, #0
	str r2, [r5, #0xc]
	movs r0, #0x5d
	ldr r1, [r5, #4]
	lsls r0, r0, #6
	str r2, [r1, r0]
	str r2, [r5, #0x10]
	str r2, [r5, #0x14]
	str r2, [r5, #8]
	movs r0, #2
	str r0, [r5, #0x20]
	str r2, [r5, #0x1c]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D7538

	thumb_func_start ov21_021D7590
ov21_021D7590: @ 0x021D7590
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	adds r4, r1, #0
	subs r0, r0, #1
	str r0, [r5, #0x18]
	bmi _021D75C6
	ldr r1, [r5, #0x1c]
	adds r0, r4, #0
	bl ov21_021D6108
	cmp r0, #0
	beq _021D75C0
	ldr r2, [r5, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D60FC
	movs r0, #1
	str r0, [r4, #0x20]
	ldr r0, _021D75D8 @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D75C0:
	movs r0, #0
	str r0, [r5, #0x18]
	pop {r3, r4, r5, pc}
_021D75C6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D5F58
	movs r0, #0
	str r0, [r5, #0x14]
	str r0, [r4, #0x20]
	pop {r3, r4, r5, pc}
	nop
_021D75D8: .4byte 0x0000068B
	thumb_func_end ov21_021D7590

	thumb_func_start ov21_021D75DC
ov21_021D75DC: @ 0x021D75DC
	push {r3, r4, r5, lr}
	ldr r2, _021D76A8 @ =0x021BF67C
	adds r4, r1, #0
	ldr r3, [r2, #0x44]
	adds r5, r0, #0
	movs r1, #0x40
	adds r0, r3, #0
	tst r0, r1
	beq _021D761E
	adds r0, r4, #0
	subs r1, #0x41
	bl ov21_021D6108
	cmp r0, #0
	beq _021D7610
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov21_021D60FC
	movs r0, #1
	str r0, [r4, #0x20]
	ldr r0, _021D76AC @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D7610:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D5F58
	movs r0, #0
	str r0, [r4, #0x20]
	pop {r3, r4, r5, pc}
_021D761E:
	movs r0, #0x80
	tst r0, r3
	beq _021D7654
	adds r0, r4, #0
	movs r1, #1
	bl ov21_021D6108
	cmp r0, #0
	beq _021D7646
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov21_021D60FC
	movs r0, #1
	str r0, [r4, #0x20]
	ldr r0, _021D76AC @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D7646:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D5F58
	movs r0, #0
	str r0, [r4, #0x20]
	pop {r3, r4, r5, pc}
_021D7654:
	ldr r1, [r2, #0x48]
	movs r0, #0x20
	tst r0, r1
	beq _021D7676
	movs r0, #1
	str r0, [r5, #0x14]
	movs r0, #5
	str r0, [r5, #0x18]
	subs r0, r0, #6
	str r0, [r5, #0x1c]
	movs r0, #2
	str r0, [r5, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D5F6C
	pop {r3, r4, r5, pc}
_021D7676:
	movs r0, #0x10
	tst r0, r1
	beq _021D7692
	movs r1, #1
	str r1, [r5, #0x14]
	movs r0, #5
	str r0, [r5, #0x18]
	str r1, [r5, #0x1c]
	str r1, [r5, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D5F6C
	pop {r3, r4, r5, pc}
_021D7692:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _021D76A4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D5F58
	movs r0, #0
	str r0, [r4, #0x20]
_021D76A4:
	pop {r3, r4, r5, pc}
	nop
_021D76A8: .4byte 0x021BF67C
_021D76AC: .4byte 0x0000068B
	thumb_func_end ov21_021D75DC

	thumb_func_start ov21_021D76B0
ov21_021D76B0: @ 0x021D76B0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021D7728
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021D7770
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021D7798
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021D7814
	str r0, [r5, #0x24]
	ldr r0, _021D76F8 @ =ov21_021D7818
	str r0, [r5, #8]
	ldr r0, _021D76FC @ =ov21_021D7860
	str r0, [r5, #0xc]
	ldr r0, _021D7700 @ =ov21_021D78AC
	str r0, [r5, #0x10]
	ldr r0, _021D7704 @ =ov21_021D78C0
	str r0, [r5, #0x14]
	ldr r0, _021D7708 @ =ov21_021D7950
	str r0, [r5, #0x18]
	ldr r0, _021D770C @ =ov21_021D79E4
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D76F8: .4byte ov21_021D7818
_021D76FC: .4byte ov21_021D7860
_021D7700: .4byte ov21_021D78AC
_021D7704: .4byte ov21_021D78C0
_021D7708: .4byte ov21_021D7950
_021D770C: .4byte ov21_021D79E4
	thumb_func_end ov21_021D76B0

	thumb_func_start ov21_021D7710
ov21_021D7710: @ 0x021D7710
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021D77D4
	ldr r0, [r4]
	bl ov21_021D77E8
	ldr r0, [r4, #0x20]
	bl ov21_021D77FC
	pop {r4, pc}
	thumb_func_end ov21_021D7710

	thumb_func_start ov21_021D7728
ov21_021D7728: @ 0x021D7728
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r1, #0x28
	adds r5, r0, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D773C
	bl FUN_02022974
_021D773C:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x28
	blx FUN_020D5124
	adds r0, r6, #0
	movs r1, #0
	bl ov21_021D1410
	ldr r0, [r0]
	movs r1, #0
	str r0, [r4, #0x1c]
	adds r2, r4, #0
	movs r0, #4
_021D7758:
	adds r1, r1, #1
	stm r2!, {r0}
	cmp r1, #7
	blt _021D7758
	adds r0, r6, #0
	bl ov21_021D13A0
	str r0, [r4, #0x20]
	str r5, [r4, #0x24]
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D7728

	thumb_func_start ov21_021D7770
ov21_021D7770: @ 0x021D7770
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D7782
	bl FUN_02022974
_021D7782:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D7770

	thumb_func_start ov21_021D7798
ov21_021D7798: @ 0x021D7798
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov21_021D7814
	adds r7, r0, #0
	movs r1, #0x14
	muls r7, r1, r7
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D77B8
	bl FUN_02022974
_021D77B8:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	blx FUN_020D5124
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	movs r3, #1
	bl ov21_021D4878
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D7798

	thumb_func_start ov21_021D77D4
ov21_021D77D4: @ 0x021D77D4
	push {r4, lr}
	adds r4, r0, #0
	bne _021D77DE
	bl FUN_02022974
_021D77DE:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D77D4

	thumb_func_start ov21_021D77E8
ov21_021D77E8: @ 0x021D77E8
	push {r4, lr}
	adds r4, r0, #0
	bne _021D77F2
	bl FUN_02022974
_021D77F2:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D77E8

	thumb_func_start ov21_021D77FC
ov21_021D77FC: @ 0x021D77FC
	push {r4, lr}
	adds r4, r0, #0
	bne _021D7806
	bl FUN_02022974
_021D7806:
	adds r0, r4, #0
	bl ov21_021D4660
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021D77FC

	thumb_func_start ov21_021D7814
ov21_021D7814: @ 0x021D7814
	movs r0, #1
	bx lr
	thumb_func_end ov21_021D7814

	thumb_func_start ov21_021D7818
ov21_021D7818: @ 0x021D7818
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	movs r1, #0x24
	bl FUN_02018144
	str r0, [r5, #8]
	cmp r0, #0
	bne _021D7830
	bl FUN_02022974
_021D7830:
	ldr r0, [r5, #8]
	movs r1, #0
	movs r2, #0x24
	blx FUN_020D5124
	ldr r1, _021D785C @ =0x000004CD
	ldr r0, [r5, #8]
	adds r2, r4, #0
	str r1, [r0, #0x1c]
	movs r1, #0
	movs r0, #4
_021D7846:
	adds r1, r1, #1
	stm r2!, {r0}
	cmp r1, #7
	blt _021D7846
	ldr r0, [r5, #8]
	ldr r2, [r5, #4]
	adds r1, r4, #0
	bl ov21_021D7A64
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D785C: .4byte 0x000004CD
	thumb_func_end ov21_021D7818

	thumb_func_start ov21_021D7860
ov21_021D7860: @ 0x021D7860
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021D7870
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D7870:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021D787A
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D787A:
	ldr r2, [r5, #0x1c]
	adds r0, r4, #0
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	bl ov21_021D8434
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D7B20
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021D78A0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021D82A8
	b _021D78A6
_021D78A0:
	movs r0, #0
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
_021D78A6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D7860

	thumb_func_start ov21_021D78AC
ov21_021D78AC: @ 0x021D78AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl ov21_021D7B70
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021D78AC

	thumb_func_start ov21_021D78C0
ov21_021D78C0: @ 0x021D78C0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021D794C
	adds r5, r1, r1
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_021D78DA: @ jump table
	.2byte _021D78E4 - _021D78DA - 2 @ case 0
	.2byte _021D7908 - _021D78DA - 2 @ case 1
	.2byte _021D7918 - _021D78DA - 2 @ case 2
	.2byte _021D7932 - _021D78DA - 2 @ case 3
	.2byte _021D7944 - _021D78DA - 2 @ case 4
_021D78E4:
	ldr r0, [r4, #4]
	movs r1, #0x3c
	bl FUN_02018144
	str r0, [r4, #8]
	cmp r0, #0
	bne _021D78F6
	bl FUN_02022974
_021D78F6:
	ldr r0, [r4, #8]
	movs r1, #0
	movs r2, #0x3c
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D794C
_021D7908:
	adds r1, r3, #0
	ldr r3, [r4, #4]
	bl ov21_021D7C64
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D794C
_021D7918:
	movs r1, #0
	movs r0, #2
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #4
	subs r2, #0x10
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D794C
_021D7932:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #0
	beq _021D794C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D794C
_021D7944:
	adds r0, r1, #1
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D794C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D78C0

	thumb_func_start ov21_021D7950
ov21_021D7950: @ 0x021D7950
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [r1, #8]
	adds r5, r2, #0
	adds r7, r0, #0
	ldr r0, [r4]
	ldr r1, [r5]
	ldr r6, [r3, #8]
	bl ov21_021D144C
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl ov21_021D144C
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl ov21_021D144C
	ldr r0, [r4, #0x18]
	ldr r1, [r5, #0xc]
	bl ov21_021D144C
	ldr r0, [r4, #0x1c]
	ldr r1, [r5, #0x10]
	bl ov21_021D144C
	movs r2, #5
	str r2, [sp]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	subs r2, #0x13
	movs r3, #3
	bl ov21_021D84A8
	movs r2, #5
	str r2, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	subs r2, #0x13
	movs r3, #3
	bl ov21_021D84A8
	movs r2, #5
	str r2, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x14]
	subs r2, #0x13
	movs r3, #2
	bl ov21_021D84A8
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021D79D2
	movs r0, #0x83
	ldr r1, [r6, #0xc]
	lsls r0, r0, #2
	bl FUN_0201D580
	adds r2, r0, #0
	ldr r3, [r6, #0x1c]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021D8354
	b _021D79E0
_021D79D2:
	cmp r0, #1
	bne _021D79E0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov21_021D83C0
_021D79E0:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D7950

	thumb_func_start ov21_021D79E4
ov21_021D79E4: @ 0x021D79E4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4]
	adds r2, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021D7A5C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D7A00: @ jump table
	.2byte _021D7A0A - _021D7A00 - 2 @ case 0
	.2byte _021D7A24 - _021D7A00 - 2 @ case 1
	.2byte _021D7A36 - _021D7A00 - 2 @ case 2
	.2byte _021D7A46 - _021D7A00 - 2 @ case 3
	.2byte _021D7A56 - _021D7A00 - 2 @ case 4
_021D7A0A:
	movs r0, #2
	str r0, [sp]
	movs r0, #4
	adds r1, r0, #0
	subs r1, #0x14
	movs r2, #0
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D7A5C
_021D7A24:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #0
	beq _021D7A5C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D7A5C
_021D7A36:
	adds r1, r2, #0
	ldr r2, [r4, #4]
	bl ov21_021D7CAC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D7A5C
_021D7A46:
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D7A5C
_021D7A56:
	add sp, #4
	movs r0, #1
	pop {r3, r4, pc}
_021D7A5C:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D79E4

	thumb_func_start ov21_021D7A64
ov21_021D7A64: @ 0x021D7A64
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #0x1c
	bl FUN_02018144
	str r0, [r5, #8]
	movs r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #0x10
	movs r2, #0x40
	movs r3, #0
	bl ov21_021D154C
	movs r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #0x40
	adds r0, r0, #4
	movs r2, #0x70
	movs r3, #0
	bl ov21_021D154C
	movs r0, #0x60
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #0x70
	adds r0, #8
	movs r2, #0xc0
	movs r3, #0
	bl ov21_021D154C
	movs r0, #0x84
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #0x38
	adds r0, #0xc
	movs r2, #0x48
	movs r3, #0x74
	bl ov21_021D154C
	movs r0, #0x84
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #0x8a
	adds r0, #0x10
	movs r2, #0x9a
	movs r3, #0x74
	bl ov21_021D154C
	ldr r0, [r5, #8]
	movs r1, #0xfe
	strb r1, [r0, #0x14]
	ldr r0, [r5, #8]
	movs r1, #0xf8
	strb r1, [r0, #0x15]
	ldr r0, [r5, #8]
	movs r1, #0x68
	strb r1, [r0, #0x16]
	ldr r0, [r5, #8]
	movs r2, #0x10
	strb r1, [r0, #0x17]
	movs r0, #0xb4
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r1, #0
	adds r0, #0x18
	movs r3, #0x74
	bl ov21_021D154C
	adds r0, r6, #0
	movs r1, #8
	bl FUN_02018144
	adds r3, r0, #0
	str r5, [r3]
	str r4, [r3, #4]
	str r3, [r5, #4]
	str r6, [sp]
	ldr r0, [r5, #8]
	ldr r2, _021D7B1C @ =ov21_021D7B8C
	movs r1, #7
	bl FUN_02023FCC
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D7B1C: .4byte ov21_021D7B8C
	thumb_func_end ov21_021D7A64

	thumb_func_start ov21_021D7B20
ov21_021D7B20: @ 0x021D7B20
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #0
	adds r2, r4, #0
	movs r0, #4
_021D7B2C:
	adds r1, r1, #1
	stm r2!, {r0}
	cmp r1, #7
	blt _021D7B2C
	adds r0, r4, #0
	bl ov21_021D84B8
	ldr r0, [r5]
	bl FUN_0202404C
	ldr r1, [r4, #0x1c]
	adds r0, r5, #0
	ldr r1, [r1, #4]
	bl ov21_021D84E0
	cmp r0, #0
	bne _021D7B52
	movs r0, #0
	str r0, [r5, #0xc]
_021D7B52:
	ldr r0, [r4, #0x14]
	cmp r0, #4
	ldr r0, [r5, #0x1c]
	beq _021D7B64
	ldr r1, [r5, #0xc]
	bl ov21_021D8580
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
_021D7B64:
	movs r1, #0
	bl ov21_021D8580
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D7B20

	thumb_func_start ov21_021D7B70
ov21_021D7B70: @ 0x021D7B70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02024034
	ldr r0, [r4, #4]
	bl FUN_020181C4
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov21_021D7B70

	thumb_func_start ov21_021D7B8C
ov21_021D7B8C: @ 0x021D7B8C
	push {r4, r5, r6, lr}
	ldr r5, [r2, #4]
	adds r6, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r4, [r2]
	ldr r0, [r0, #4]
	lsls r2, r6, #2
	str r1, [r5, r2]
	cmp r1, #0
	beq _021D7BA6
	cmp r1, #2
	beq _021D7BB2
	b _021D7C5A
_021D7BA6:
	ldr r0, _021D7C60 @ =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0x14]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021D7BB2:
	cmp r6, #6
	bhi _021D7C26
	adds r1, r6, r6
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D7BC2: @ jump table
	.2byte _021D7BD0 - _021D7BC2 - 2 @ case 0
	.2byte _021D7BD8 - _021D7BC2 - 2 @ case 1
	.2byte _021D7BE0 - _021D7BC2 - 2 @ case 2
	.2byte _021D7BE8 - _021D7BC2 - 2 @ case 3
	.2byte _021D7BF8 - _021D7BC2 - 2 @ case 4
	.2byte _021D7C26 - _021D7BC2 - 2 @ case 5
	.2byte _021D7C0E - _021D7BC2 - 2 @ case 6
_021D7BD0:
	ldr r0, [r5, #0x1c]
	movs r1, #1
	str r1, [r0, #0x34]
	b _021D7C26
_021D7BD8:
	ldr r0, [r5, #0x1c]
	movs r1, #1
	str r1, [r0, #0x30]
	b _021D7C26
_021D7BE0:
	ldr r0, [r5, #0x1c]
	movs r1, #1
	str r1, [r0, #0x2c]
	b _021D7C26
_021D7BE8:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021D7C26
	adds r0, r5, #0
	movs r1, #0
	bl ov21_021D853C
	b _021D7C26
_021D7BF8:
	ldr r1, [r4, #0x20]
	cmp r1, #0
	bne _021D7C26
	bl ov21_021D3768
	adds r1, r0, #0
	adds r0, r5, #0
	subs r1, r1, #1
	bl ov21_021D853C
	b _021D7C26
_021D7C0E:
	ldr r0, [r5, #0x1c]
	movs r1, #0x5d
	ldr r2, [r0, #4]
	lsls r1, r1, #6
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021D7C22
	movs r1, #1
	str r1, [r0, #0x28]
	b _021D7C26
_021D7C22:
	movs r1, #1
	str r1, [r0, #0x24]
_021D7C26:
	cmp r6, #5
	bne _021D7C54
	ldr r0, [r5, #0x1c]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021D7C4A
	adds r0, r4, #0
	bl ov21_021D8324
	ldr r1, [r4, #0xc]
	cmp r1, #0x10
	bgt _021D7C4A
	movs r0, #0xf
	mvns r0, r0
	cmp r1, r0
	blt _021D7C4A
	movs r0, #0
	str r0, [r4, #0xc]
_021D7C4A:
	ldr r0, _021D7C60 @ =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0x14]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0x18]
_021D7C54:
	movs r0, #1
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
_021D7C5A:
	movs r0, #0
	str r0, [r4, #0x20]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D7C60: .4byte 0x021BF6BC
	thumb_func_end ov21_021D7B8C

	thumb_func_start ov21_021D7C64
ov21_021D7C64: @ 0x021D7C64
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov21_021D7CD8
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021D820C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov21_021D7D8C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov21_021D7E80
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov21_021D8018
	movs r0, #7
	movs r1, #3
	bl FUN_02019060
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D7C64

	thumb_func_start ov21_021D7CAC
ov21_021D7CAC: @ 0x021D7CAC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov21_021D81EC
	adds r0, r5, #0
	bl ov21_021D7FEC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D7E3C
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021D828C
	movs r0, #7
	movs r1, #1
	bl FUN_02019060
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D7CAC

	thumb_func_start ov21_021D7CD8
ov21_021D7CD8: @ 0x021D7CD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r7, r1, #0
	ldr r6, [r0]
	movs r1, #0
	adds r4, r2, #0
	str r1, [sp]
	str r4, [sp, #4]
	movs r2, #4
	adds r3, r1, #0
	bl ov21_021D276C
	ldr r0, [r7, #0x1c]
	movs r1, #0x5d
	ldr r0, [r0, #4]
	lsls r1, r1, #6
	ldr r1, [r0, r1]
	cmp r1, #1
	bne _021D7D16
	movs r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5]
	movs r1, #1
	movs r2, #4
	movs r3, #0x60
	bl ov21_021D276C
	b _021D7D30
_021D7D16:
	bl ov21_021D36D8
	cmp r0, #1
	bne _021D7D30
	movs r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5]
	movs r1, #0x19
	movs r2, #4
	movs r3, #0x60
	bl ov21_021D276C
_021D7D30:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [r5]
	movs r1, #0x1d
	adds r2, r6, #0
	movs r3, #6
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x29
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r4, r0, #0
	ldrh r0, [r2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r6, #0
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r6, #0
	movs r1, #6
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D7CD8

	thumb_func_start ov21_021D7D8C
ov21_021D7D8C: @ 0x021D7D8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021D7E2C @ =0x0000043C
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x54
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r5, #0x2c]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x2c]
	bl FUN_02009D4C
	ldr r0, _021D7E30 @ =0x000003EB
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0xc
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #3
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x30]
	bl FUN_0200A640
	ldr r0, [r5, #0x30]
	bl FUN_02009D4C
	ldr r0, _021D7E34 @ =0x0000043A
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x52
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x34]
	ldr r0, _021D7E38 @ =0x0000043B
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x53
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x38]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D7E2C: .4byte 0x0000043C
_021D7E30: .4byte 0x000003EB
_021D7E34: .4byte 0x0000043A
_021D7E38: .4byte 0x0000043B
	thumb_func_end ov21_021D7D8C

	thumb_func_start ov21_021D7E3C
ov21_021D7E3C: @ 0x021D7E3C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x2c]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x30]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x2c]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x30]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x34]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x38]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D7E3C

	thumb_func_start ov21_021D7E80
ov21_021D7E80: @ 0x021D7E80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	adds r7, r3, #0
	adds r5, r0, #0
	movs r0, #0
	ldr r4, [r1]
	ldr r3, _021D7FE8 @ =0x0000043B
	adds r6, r2, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #5
	str r2, [sp, #0x10]
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	adds r2, r3, #0
	add r0, sp, #0x4c
	subs r2, #0x50
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xa
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #8
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	movs r0, #3
	lsls r0, r0, #0x10
	str r0, [sp, #0x34]
	lsls r1, r1, #0xe
	lsls r0, r0, #2
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	str r7, [sp, #0x48]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5]
	movs r1, #2
	bl FUN_02021D6C
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #4]
	movs r0, #0x5d
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021D7F18
	ldr r0, [r5]
	movs r1, #0
	bl FUN_02021CAC
_021D7F18:
	movs r0, #3
	lsls r0, r0, #0x10
	movs r1, #0x16
	str r0, [sp, #0x34]
	lsls r1, r1, #0xe
	lsls r0, r0, #2
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5, #4]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, [r6, #0x1c]
	movs r1, #1
	ldr r0, [r0, #4]
	bl ov21_021D36A4
	cmp r0, #0
	beq _021D7F54
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #4]
	movs r0, #0x5d
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021D7F5C
_021D7F54:
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_02021CAC
_021D7F5C:
	movs r0, #3
	lsls r0, r0, #0x10
	movs r1, #0x26
	str r0, [sp, #0x34]
	lsls r1, r1, #0xe
	lsls r0, r0, #2
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	movs r1, #1
	str r0, [r5, #8]
	bl FUN_02021D6C
	movs r0, #0x1f
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r1, #1
	movs r0, #3
	lsls r1, r1, #0x12
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	movs r1, #3
	str r0, [r5, #0x18]
	bl FUN_02021D6C
	movs r0, #0x1f
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r1, #0x92
	movs r0, #3
	lsls r1, r1, #0xc
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	movs r1, #4
	str r0, [r5, #0x1c]
	bl FUN_02021D6C
	movs r0, #0x1f
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r1, #2
	movs r0, #3
	lsls r1, r1, #0xe
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	movs r1, #5
	str r0, [r5, #0x20]
	bl FUN_02021D6C
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D7FE8: .4byte 0x0000043B
	thumb_func_end ov21_021D7E80

	thumb_func_start ov21_021D7FEC
ov21_021D7FEC: @ 0x021D7FEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02021BD4
	ldr r0, [r4, #4]
	bl FUN_02021BD4
	ldr r0, [r4, #8]
	bl FUN_02021BD4
	ldr r0, [r4, #0x18]
	bl FUN_02021BD4
	ldr r0, [r4, #0x1c]
	bl FUN_02021BD4
	ldr r0, [r4, #0x20]
	bl FUN_02021BD4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D7FEC

	thumb_func_start ov21_021D8018
ov21_021D8018: @ 0x021D8018
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r4, [r1]
	cmp r0, #0
	bne _021D802E
	bl FUN_02022974
_021D802E:
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021D81E4 @ =0x000003EB
	bl FUN_02009DC8
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	movs r1, #0
	bl FUN_0200A72C
	movs r1, #0x27
	mvns r1, r1
	str r1, [sp, #0x28]
	adds r1, #0x1a
	str r1, [sp, #0x2c]
	movs r1, #0
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	movs r1, #2
	str r0, [sp, #0x20]
	str r1, [sp, #0x38]
	str r7, [sp, #0x3c]
	bl FUN_0201FAB4
	adds r7, r0, #0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xa
	movs r2, #4
	bl ov21_021D4D6C
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x10]
	ldr r2, _021D81E8 @ =0x000002B9
	movs r3, #7
	bl ov21_021D4DAC
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r5]
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	bl ov21_021D4CA0
	str r0, [r5, #0xc]
	ldr r0, [r0]
	adds r1, r7, #3
	bl FUN_02012A60
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #4]
	movs r0, #0x5d
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021D80BC
	ldr r0, [r5, #0xc]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_020129D0
_021D80BC:
	ldr r0, [sp, #0x10]
	bl ov21_021D4DA0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xa
	movs r2, #4
	bl ov21_021D4D6C
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #8]
	ldr r2, _021D81E8 @ =0x000002B9
	movs r3, #5
	bl ov21_021D4DAC
	ldr r0, [sp, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #4]
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	bl ov21_021D4CA0
	str r0, [r5, #0x10]
	ldr r0, [r0]
	adds r1, r7, #3
	bl FUN_02012A60
	ldr r0, [r6, #0x1c]
	movs r1, #1
	ldr r0, [r0, #4]
	bl ov21_021D36A4
	cmp r0, #0
	beq _021D811C
	ldr r0, [r6, #0x1c]
	ldr r1, [r0, #4]
	movs r0, #0x5d
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _021D8126
_021D811C:
	ldr r0, [r5, #0x10]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_020129D0
_021D8126:
	ldr r0, [sp, #8]
	bl ov21_021D4DA0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xa
	movs r2, #4
	bl ov21_021D4D6C
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0x14]
	ldr r2, _021D81E8 @ =0x000002B9
	movs r3, #0x1d
	bl ov21_021D4DAC
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #8]
	str r0, [sp, #0x24]
	add r0, sp, #0x18
	bl ov21_021D4CA0
	str r0, [r5, #0x14]
	ldr r0, [r0]
	adds r1, r7, #2
	bl FUN_02012A60
	ldr r0, [sp, #0x14]
	bl ov21_021D4DA0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xe
	movs r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0xc]
	ldr r0, [r6, #0x1c]
	ldr r2, _021D81E8 @ =0x000002B9
	ldr r1, [r0, #4]
	movs r0, #0x5d
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021D81A6
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0xc]
	movs r3, #0x6b
	bl ov21_021D4DAC
	b _021D81BA
_021D81A6:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [sp, #0xc]
	movs r3, #0x6c
	bl ov21_021D4DAC
_021D81BA:
	ldr r0, [sp, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x20]
	str r0, [sp, #0x24]
	movs r0, #0xa
	str r0, [sp, #0x28]
	subs r0, #0x12
	str r0, [sp, #0x2c]
	add r0, sp, #0x18
	bl ov21_021D4CA0
	str r0, [r5, #0x24]
	ldr r0, [r0]
	adds r1, r7, #1
	bl FUN_02012A60
	ldr r0, [sp, #0xc]
	bl ov21_021D4DA0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D81E4: .4byte 0x000003EB
_021D81E8: .4byte 0x000002B9
	thumb_func_end ov21_021D8018

	thumb_func_start ov21_021D81EC
ov21_021D81EC: @ 0x021D81EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl ov21_021D4D1C
	ldr r0, [r4, #0x10]
	bl ov21_021D4D1C
	ldr r0, [r4, #0x14]
	bl ov21_021D4D1C
	ldr r0, [r4, #0x24]
	bl ov21_021D4D1C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D81EC

	thumb_func_start ov21_021D820C
ov21_021D820C: @ 0x021D820C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	ldr r4, [r0]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r6, [sp, #0xc]
	movs r1, #0x1b
	adds r2, r4, #0
	movs r3, #7
	bl ov21_021D2724
	str r6, [sp]
	ldr r0, [r5]
	movs r1, #0x25
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #7
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r4, #0
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #7
	bl FUN_0201C3C0
	movs r2, #0
	adds r3, r2, #0
	adds r0, r4, #0
	movs r1, #7
	subs r3, #0x78
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #7
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D820C

	thumb_func_start ov21_021D828C
ov21_021D828C: @ 0x021D828C
	push {r4, lr}
	ldr r0, [r0]
	adds r3, r1, #0
	ldr r4, [r0]
	movs r0, #7
	movs r1, #0x40
	movs r2, #0
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019EBC
	pop {r4, pc}
	thumb_func_end ov21_021D828C

	thumb_func_start ov21_021D82A8
ov21_021D82A8: @ 0x021D82A8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r2, [r4, #0x1c]
	adds r5, r0, #0
	ldr r3, [r2, #0xc]
	ldr r1, [r2, #4]
	cmp r3, #0
	bgt _021D82E4
	ldr r3, [r5, #0x10]
	cmp r3, #0
	beq _021D82E0
	bl ov21_021D8508
	cmp r0, #0
	bne _021D82D0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D8530
	b _021D82E4
_021D82D0:
	movs r1, #0xa
	ldr r0, [r4, #0x1c]
	lsls r1, r1, #6
	str r1, [r0, #0xc]
	ldr r0, _021D8320 @ =0x0000068B
	bl FUN_02005748
	b _021D82E4
_021D82E0:
	movs r0, #0
	str r0, [r2, #8]
_021D82E4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bge _021D82F2
	ldr r0, [r4, #0x1c]
	movs r1, #1
	str r1, [r0, #8]
	b _021D82FA
_021D82F2:
	ble _021D82FA
	ldr r0, [r4, #0x1c]
	movs r1, #2
	str r1, [r0, #8]
_021D82FA:
	ldr r2, [r4, #0x1c]
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _021D831C
	ldr r1, [r5, #0x10]
	cmp r1, #0
	bge _021D830A
	rsbs r1, r1, #0
_021D830A:
	ldr r0, [r2, #0xc]
	subs r0, r0, r1
	str r0, [r2, #0xc]
	ldr r1, [r4, #0x1c]
	ldr r0, [r1, #0xc]
	cmp r0, #0
	bge _021D831C
	movs r0, #0
	str r0, [r1, #0xc]
_021D831C:
	pop {r3, r4, r5, pc}
	nop
_021D8320: .4byte 0x0000068B
	thumb_func_end ov21_021D82A8

	thumb_func_start ov21_021D8324
ov21_021D8324: @ 0x021D8324
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x83
	lsls r0, r0, #2
	str r0, [sp]
	ldr r3, _021D8350 @ =0x021BF6BC
	ldr r0, [r4, #0x14]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	ldr r1, [r4, #0x18]
	subs r0, #0xf8
	subs r1, #0x68
	subs r2, #0xf8
	subs r3, #0x68
	bl FUN_0201D4CC
	movs r1, #0xa
	muls r1, r0, r1
	str r1, [r4, #0xc]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D8350: .4byte 0x021BF6BC
	thumb_func_end ov21_021D8324

	thumb_func_start ov21_021D8354
ov21_021D8354: @ 0x021D8354
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	lsls r0, r2, #0xc
	adds r4, r1, #0
	asrs r6, r3, #0x1f
	adds r2, r3, #0
	asrs r1, r0, #0x1f
	adds r3, r6, #0
	blx FUN_020E1F1C
	movs r3, #2
	movs r6, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r6
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	asrs r0, r1, #0xc
	ldrh r2, [r5, #0x28]
	movs r1, #0xb6
	adds r0, r2, r0
	strh r0, [r5, #0x28]
	ldrh r0, [r5, #0x28]
	strh r0, [r5, #0x28]
	blx FUN_020E1F6C
	adds r3, r0, #0
	ldr r0, [r4]
	lsls r3, r3, #0x10
	ldr r0, [r0]
	movs r1, #7
	adds r2, r6, #0
	lsrs r3, r3, #0x10
	bl FUN_0201C660
	ldr r0, [r4]
	movs r1, #7
	ldr r0, [r0]
	movs r2, #9
	movs r3, #0x80
	bl FUN_0201C718
	ldr r0, [r4]
	movs r1, #7
	ldr r0, [r0]
	movs r2, #0xc
	movs r3, #0x68
	bl FUN_0201C718
	ldrh r0, [r5, #0x28]
	strh r0, [r5, #0x2a]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D8354

	thumb_func_start ov21_021D83C0
ov21_021D83C0: @ 0x021D83C0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	ldr r6, [r7, #0x1c]
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0xa
	ldr r0, [r6, #0xc]
	lsls r1, r1, #6
	subs r2, r1, r0
	ldr r0, _021D8430 @ =0x000011C7
	muls r0, r2, r0
	blx FUN_020E1F6C
	ldr r1, [r6, #8]
	cmp r1, #1
	bne _021D83E2
	rsbs r0, r0, #0
_021D83E2:
	ldrh r1, [r5, #0x2a]
	adds r0, r1, r0
	strh r0, [r5, #0x28]
	ldrh r0, [r5, #0x28]
	movs r1, #0xb6
	strh r0, [r5, #0x28]
	blx FUN_020E1F6C
	adds r3, r0, #0
	ldr r0, [r4]
	lsls r3, r3, #0x10
	ldr r0, [r0]
	movs r1, #7
	movs r2, #0
	lsrs r3, r3, #0x10
	bl FUN_0201C660
	ldr r0, [r4]
	movs r1, #7
	ldr r0, [r0]
	movs r2, #9
	movs r3, #0x80
	bl FUN_0201C718
	ldr r0, [r4]
	movs r1, #7
	ldr r0, [r0]
	movs r2, #0xc
	movs r3, #0x68
	bl FUN_0201C718
	ldr r0, [r7, #0x1c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021D842C
	ldrh r0, [r5, #0x28]
	strh r0, [r5, #0x2a]
_021D842C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D8430: .4byte 0x000011C7
	thumb_func_end ov21_021D83C0

	thumb_func_start ov21_021D8434
ov21_021D8434: @ 0x021D8434
	push {r3, r4}
	ldr r3, [r0, #0xc]
	cmp r3, #0
	ble _021D844C
	subs r3, r3, #2
	cmp r3, #4
	blt _021D8446
	str r3, [r0, #0xc]
	b _021D845C
_021D8446:
	movs r3, #4
	str r3, [r0, #0xc]
	b _021D845C
_021D844C:
	adds r4, r3, #2
	movs r3, #3
	mvns r3, r3
	cmp r4, r3
	bgt _021D845A
	str r4, [r0, #0xc]
	b _021D845C
_021D845A:
	str r3, [r0, #0xc]
_021D845C:
	ldr r3, [r0, #0xc]
	str r3, [r0, #0x10]
	ldr r4, [r0, #0xc]
	cmp r4, #0x21
	bgt _021D849E
	movs r3, #0x20
	mvns r3, r3
	cmp r4, r3
	blt _021D849E
	cmp r1, #0
	bne _021D848C
	movs r3, #0
	str r3, [r0, #0x10]
	ldr r2, [r0, #0xc]
	cmp r2, #4
	bgt _021D849E
	subs r1, r3, #4
	cmp r2, r1
	blt _021D849E
	ldr r1, _021D84A4 @ =0x000004CD
	str r3, [r0, #0xc]
	str r1, [r0, #0x1c]
	pop {r3, r4}
	bx lr
_021D848C:
	cmp r2, #1
	bne _021D8498
	str r3, [r0, #0x10]
	str r3, [r0, #0xc]
	pop {r3, r4}
	bx lr
_021D8498:
	movs r1, #0x21
	str r1, [r0, #0x10]
	str r1, [r0, #0xc]
_021D849E:
	pop {r3, r4}
	bx lr
	nop
_021D84A4: .4byte 0x000004CD
	thumb_func_end ov21_021D8434

	thumb_func_start ov21_021D84A8
ov21_021D84A8: @ 0x021D84A8
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov21_021D1524
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D84A8

	thumb_func_start ov21_021D84B8
ov21_021D84B8: @ 0x021D84B8
	ldr r2, [r0, #0x1c]
	ldr r1, [r2, #0x2c]
	cmp r1, #0
	beq _021D84C6
	movs r1, #2
	str r1, [r0, #8]
	bx lr
_021D84C6:
	ldr r1, [r2, #0x34]
	cmp r1, #0
	beq _021D84D2
	movs r1, #2
	str r1, [r0]
	bx lr
_021D84D2:
	ldr r1, [r2, #0x30]
	cmp r1, #0
	beq _021D84DC
	movs r1, #2
	str r1, [r0, #4]
_021D84DC:
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D84B8

	thumb_func_start ov21_021D84E0
ov21_021D84E0: @ 0x021D84E0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _021D8502
	bge _021D84EE
	movs r2, #1
	b _021D84F2
_021D84EE:
	movs r2, #0
	mvns r2, r2
_021D84F2:
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov21_021D387C
	cmp r0, #0
	bne _021D8502
	movs r0, #0
	pop {r3, pc}
_021D8502:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021D84E0

	thumb_func_start ov21_021D8508
ov21_021D8508: @ 0x021D8508
	push {r3, lr}
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021D852A
	bge _021D8516
	movs r2, #1
	b _021D851A
_021D8516:
	movs r2, #0
	mvns r2, r2
_021D851A:
	adds r0, r1, #0
	adds r1, r2, #0
	bl ov21_021D3844
	cmp r0, #0
	bne _021D852A
	movs r0, #0
	pop {r3, pc}
_021D852A:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021D8508

	thumb_func_start ov21_021D8530
ov21_021D8530: @ 0x021D8530
	movs r2, #0
	str r2, [r0, #0x10]
	str r2, [r0, #0xc]
	ldr r0, [r1, #0x1c]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov21_021D8530

	thumb_func_start ov21_021D853C
ov21_021D853C: @ 0x021D853C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	adds r5, r1, #0
	bl ov21_021D5B68
	cmp r0, #0
	beq _021D857C
	ldr r0, [r4, #0x1c]
	adds r1, r5, #0
	ldr r0, [r0, #4]
	bl ov21_021D36FC
	ldr r1, [r4, #0x20]
	movs r2, #1
	ldr r0, [r1]
	movs r3, #2
	orrs r0, r2
	str r0, [r1]
	ldr r1, [r4, #0x1c]
	movs r0, #0
	str r0, [r1, #0xc]
	ldr r1, [r4, #0x1c]
	str r3, [r1, #0x20]
	ldr r1, [r4, #0x1c]
	str r2, [r1, #0x10]
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0x14]
	ldr r1, [r4, #0x1c]
	str r0, [r1, #8]
	ldr r1, [r4, #0x1c]
	str r0, [r1, #0x1c]
_021D857C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D853C

	thumb_func_start ov21_021D8580
ov21_021D8580: @ 0x021D8580
	cmp r1, #0
	bge _021D8586
	rsbs r1, r1, #0
_021D8586:
	cmp r1, #0x40
	bge _021D8598
	adds r2, r0, #0
	ldr r1, _021D85A8 @ =0x000004CD
	subs r2, #0x29
	cmp r2, r1
	blt _021D85A6
	subs r0, #0x29
	bx lr
_021D8598:
	ldr r1, _021D85AC @ =0x00000333
	adds r2, r0, r1
	movs r1, #1
	lsls r1, r1, #0xc
	cmp r2, r1
	bgt _021D85A6
	adds r0, r2, #0
_021D85A6:
	bx lr
	.align 2, 0
_021D85A8: .4byte 0x000004CD
_021D85AC: .4byte 0x00000333
	thumb_func_end ov21_021D8580

	thumb_func_start ov21_021D85B0
ov21_021D85B0: @ 0x021D85B0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021D86E8
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021D8724
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021D874C
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021D87C8
	str r0, [r5, #0x24]
	ldr r0, _021D85F8 @ =ov21_021D87CC
	str r0, [r5, #8]
	ldr r0, _021D85FC @ =ov21_021D8804
	str r0, [r5, #0xc]
	ldr r0, _021D8600 @ =ov21_021D8928
	str r0, [r5, #0x10]
	ldr r0, _021D8604 @ =ov21_021D893C
	str r0, [r5, #0x14]
	ldr r0, _021D8608 @ =ov21_021D89B8
	str r0, [r5, #0x18]
	ldr r0, _021D860C @ =ov21_021D89F4
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D85F8: .4byte ov21_021D87CC
_021D85FC: .4byte ov21_021D8804
_021D8600: .4byte ov21_021D8928
_021D8604: .4byte ov21_021D893C
_021D8608: .4byte ov21_021D89B8
_021D860C: .4byte ov21_021D89F4
	thumb_func_end ov21_021D85B0

	thumb_func_start ov21_021D8610
ov21_021D8610: @ 0x021D8610
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021D8788
	ldr r0, [r4, #4]
	bl ov21_021D879C
	ldr r0, [r4, #0x20]
	bl ov21_021D87B0
	pop {r4, pc}
	thumb_func_end ov21_021D8610

	thumb_func_start ov21_021D8628
ov21_021D8628: @ 0x021D8628
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0]
	cmp r5, #4
	blt _021D8636
	bl FUN_02022974
_021D8636:
	str r5, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D8628

	thumb_func_start ov21_021D863C
ov21_021D863C: @ 0x021D863C
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D863C

	thumb_func_start ov21_021D8644
ov21_021D8644: @ 0x021D8644
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0]
	cmp r5, #6
	blt _021D8652
	bl FUN_02022974
_021D8652:
	str r5, [r4, #0x10]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D8644

	thumb_func_start ov21_021D8658
ov21_021D8658: @ 0x021D8658
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D8658

	thumb_func_start ov21_021D8660
ov21_021D8660: @ 0x021D8660
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0]
	cmp r5, #0xa
	blt _021D866E
	bl FUN_02022974
_021D866E:
	str r5, [r4, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D8660

	thumb_func_start ov21_021D8674
ov21_021D8674: @ 0x021D8674
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D8674

	thumb_func_start ov21_021D867C
ov21_021D867C: @ 0x021D867C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r4, [r0]
	cmp r5, #0x12
	blt _021D868C
	bl FUN_02022974
_021D868C:
	cmp r6, #0
	bne _021D8694
	str r5, [r4, #0x18]
	pop {r4, r5, r6, pc}
_021D8694:
	str r5, [r4, #0x1c]
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D867C

	thumb_func_start ov21_021D8698
ov21_021D8698: @ 0x021D8698
	ldr r0, [r0]
	cmp r1, #0
	bne _021D86A2
	ldr r0, [r0, #0x18]
	bx lr
_021D86A2:
	ldr r0, [r0, #0x1c]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D8698

	thumb_func_start ov21_021D86A8
ov21_021D86A8: @ 0x021D86A8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0]
	cmp r5, #0xf
	blt _021D86B6
	bl FUN_02022974
_021D86B6:
	str r5, [r4, #0x20]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D86A8

	thumb_func_start ov21_021D86BC
ov21_021D86BC: @ 0x021D86BC
	ldr r0, [r0]
	ldr r0, [r0, #0x20]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D86BC

	thumb_func_start ov21_021D86C4
ov21_021D86C4: @ 0x021D86C4
	ldr r2, [r0]
	movs r0, #1
	str r0, [r2, #0x24]
	str r1, [r2, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D86C4

	thumb_func_start ov21_021D86D0
ov21_021D86D0: @ 0x021D86D0
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D86D0

	thumb_func_start ov21_021D86D8
ov21_021D86D8: @ 0x021D86D8
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D86D8

	thumb_func_start ov21_021D86E0
ov21_021D86E0: @ 0x021D86E0
	ldr r0, [r0]
	ldr r0, [r0, #0x34]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D86E0

	thumb_func_start ov21_021D86E8
ov21_021D86E8: @ 0x021D86E8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x38
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D86FA
	bl FUN_02022974
_021D86FA:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x38
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D138C
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #0
	bl ov21_021D1410
	ldr r0, [r0]
	str r0, [r4, #8]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D86E8

	thumb_func_start ov21_021D8724
ov21_021D8724: @ 0x021D8724
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D8736
	bl FUN_02022974
_021D8736:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D8724

	thumb_func_start ov21_021D874C
ov21_021D874C: @ 0x021D874C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov21_021D87C8
	adds r7, r0, #0
	movs r1, #0x14
	muls r7, r1, r7
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D876C
	bl FUN_02022974
_021D876C:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	blx FUN_020D5124
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #2
	bl ov21_021D47F0
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D874C

	thumb_func_start ov21_021D8788
ov21_021D8788: @ 0x021D8788
	push {r4, lr}
	adds r4, r0, #0
	bne _021D8792
	bl FUN_02022974
_021D8792:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D8788

	thumb_func_start ov21_021D879C
ov21_021D879C: @ 0x021D879C
	push {r4, lr}
	adds r4, r0, #0
	bne _021D87A6
	bl FUN_02022974
_021D87A6:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D879C

	thumb_func_start ov21_021D87B0
ov21_021D87B0: @ 0x021D87B0
	push {r4, lr}
	adds r4, r0, #0
	bne _021D87BA
	bl FUN_02022974
_021D87BA:
	adds r0, r4, #0
	bl ov21_021D4660
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021D87B0

	thumb_func_start ov21_021D87C8
ov21_021D87C8: @ 0x021D87C8
	movs r0, #1
	bx lr
	thumb_func_end ov21_021D87C8

	thumb_func_start ov21_021D87CC
ov21_021D87CC: @ 0x021D87CC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r6, r0, #0
	bne _021D87E2
	bl FUN_02022974
_021D87E2:
	movs r0, #0
	strb r0, [r6]
	strb r0, [r6, #1]
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	str r6, [r5, #8]
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	str r0, [r4, #0x20]
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x30]
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D87CC

	thumb_func_start ov21_021D8804
ov21_021D8804: @ 0x021D8804
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r4, r1, #0
	cmp r0, #1
	bne _021D8818
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, pc}
_021D8818:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021D8824
	add sp, #0x14
	movs r0, #0
	pop {r4, r5, pc}
_021D8824:
	ldr r0, [r5]
	cmp r0, #4
	bhi _021D891A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D8836: @ jump table
	.2byte _021D8840 - _021D8836 - 2 @ case 0
	.2byte _021D8876 - _021D8836 - 2 @ case 1
	.2byte _021D8894 - _021D8836 - 2 @ case 2
	.2byte _021D88A4 - _021D8836 - 2 @ case 3
	.2byte _021D8908 - _021D8836 - 2 @ case 4
_021D8840:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021D884A
	movs r0, #0
	str r0, [r4, #0x2c]
_021D884A:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _021D891E
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021D8866
	ldr r2, [r4]
	movs r0, #2
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r0, #4
	str r0, [r4, #0x30]
	b _021D891E
_021D8866:
	movs r0, #1
	str r0, [r4, #0x30]
	movs r0, #4
	str r0, [r4, #0x34]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D891E
_021D8876:
	ldr r0, [r4, #0x34]
	subs r0, r0, #1
	str r0, [r4, #0x34]
	bpl _021D891E
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	movs r0, #2
	str r0, [r4, #0x30]
	movs r0, #0x20
	str r0, [r4, #0x34]
	ldr r0, _021D8924 @ =0x000005FF
	bl FUN_02005748
	b _021D891E
_021D8894:
	ldr r0, [r4, #0x34]
	subs r0, r0, #1
	str r0, [r4, #0x34]
	bpl _021D891E
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D891E
_021D88A4:
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	ldr r1, [r4, #0x1c]
	str r1, [sp]
	ldr r1, [r4, #0x20]
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl ov21_021D3464
	cmp r0, #1
	bne _021D88EE
	ldr r2, [r4]
	movs r0, #2
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	ldr r0, [r4, #4]
	movs r1, #0
	bl ov21_021D3810
	movs r0, #0x5d
	ldr r1, [r4, #4]
	movs r2, #1
	lsls r0, r0, #6
	str r2, [r1, r0]
	ldr r0, [r4, #8]
	str r2, [r0, #0x18]
	b _021D891E
_021D88EE:
	movs r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x24]
	movs r0, #1
	str r0, [r4, #0x2c]
	movs r0, #3
	str r0, [r4, #0x30]
	movs r0, #4
	str r0, [r4, #0x34]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D891E
_021D8908:
	ldr r0, [r4, #0x34]
	subs r0, r0, #1
	str r0, [r4, #0x34]
	bpl _021D891E
	movs r0, #0
	str r0, [r4, #0x30]
	str r0, [r4, #0x34]
	str r0, [r5]
	b _021D891E
_021D891A:
	bl FUN_02022974
_021D891E:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_021D8924: .4byte 0x000005FF
	thumb_func_end ov21_021D8804

	thumb_func_start ov21_021D8928
ov21_021D8928: @ 0x021D8928
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D8928

	thumb_func_start ov21_021D893C
ov21_021D893C: @ 0x021D893C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	ldr r3, [r3, #8]
	ldr r0, [r4, #8]
	cmp r1, #3
	bhi _021D89B2
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D8958: @ jump table
	.2byte _021D8960 - _021D8958 - 2 @ case 0
	.2byte _021D897A - _021D8958 - 2 @ case 1
	.2byte _021D899C - _021D8958 - 2 @ case 2
	.2byte _021D89AE - _021D8958 - 2 @ case 3
_021D8960:
	ldr r0, [r4, #4]
	movs r1, #0x64
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x64
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D89B2
_021D897A:
	ldr r1, [r4, #4]
	str r1, [sp]
	adds r1, r5, #0
	bl ov21_021D8A7C
	movs r1, #0
	movs r0, #1
	adds r2, r1, #0
	str r0, [sp]
	subs r2, #0x10
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D89B2
_021D899C:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _021D89B2
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D89B2
_021D89AE:
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D89B2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D893C

	thumb_func_start ov21_021D89B8
ov21_021D89B8: @ 0x021D89B8
	push {r4, lr}
	adds r3, r1, #0
	ldr r1, [r2, #0x30]
	adds r4, r0, #0
	ldr r0, [r3, #8]
	cmp r1, #0
	bne _021D89D0
	ldr r3, [r3, #4]
	adds r1, r4, #0
	bl ov21_021D8ED4
	b _021D89EE
_021D89D0:
	cmp r1, #1
	beq _021D89D8
	cmp r1, #3
	bne _021D89E2
_021D89D8:
	ldr r3, [r3, #4]
	adds r1, r4, #0
	bl ov21_021D9320
	b _021D89EE
_021D89E2:
	cmp r1, #4
	beq _021D89EE
	ldr r3, [r3, #4]
	adds r1, r4, #0
	bl ov21_021D9390
_021D89EE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D89B8

	thumb_func_start ov21_021D89F4
ov21_021D89F4: @ 0x021D89F4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4]
	adds r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021D8A76
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D8A10: @ jump table
	.2byte _021D8A1A - _021D8A10 - 2 @ case 0
	.2byte _021D8A40 - _021D8A10 - 2 @ case 1
	.2byte _021D8A52 - _021D8A10 - 2 @ case 2
	.2byte _021D8A60 - _021D8A10 - 2 @ case 3
	.2byte _021D8A70 - _021D8A10 - 2 @ case 4
_021D8A1A:
	ldr r0, [r2, #0x28]
	cmp r0, #0
	bne _021D8A3A
	movs r0, #1
	str r0, [sp]
	movs r0, #6
	adds r1, r0, #0
	subs r1, #0x16
	movs r2, #0
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D8A76
_021D8A3A:
	movs r0, #2
	str r0, [r4]
	b _021D8A76
_021D8A40:
	movs r0, #1
	bl FUN_0200AC1C
	cmp r0, #0
	beq _021D8A76
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D8A76
_021D8A52:
	adds r1, r3, #0
	bl ov21_021D8B40
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D8A76
_021D8A60:
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D8A76
_021D8A70:
	add sp, #4
	movs r0, #1
	pop {r3, r4, pc}
_021D8A76:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D89F4

	thumb_func_start ov21_021D8A7C
ov21_021D8A7C: @ 0x021D8A7C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	ldr r0, [r5]
	movs r1, #2
	ldr r0, [r0]
	adds r4, r2, #0
	ldr r6, [sp, #0x18]
	bl FUN_02019EBC
	ldr r0, [r5]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	ldr r0, [r5]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [r5]
	movs r1, #7
	adds r0, r0, #4
	bl FUN_0201C2B4
	adds r0, r5, #0
	bl ov21_021D8C00
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021D8B8C
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021D8BC4
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov21_021D8C1C
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021D8D0C
	ldr r1, [r4, #0xc]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D8DD4
	ldr r1, [r4, #0xc]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D8F98
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D9054
	ldr r1, [r4, #0x14]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D90B4
	ldr r1, [r4, #0x18]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D9234
	ldr r1, [r4, #0x1c]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D9240
	ldr r1, [r4, #0x20]
	adds r0, r7, #0
	bl ov21_021D924C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D8A7C

	thumb_func_start ov21_021D8B40
ov21_021D8B40: @ 0x021D8B40
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D8DC0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D8CC8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D8BEC
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201C2B4
	movs r0, #1
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #1
	bl FUN_02019060
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D8B40

	thumb_func_start ov21_021D8B8C
ov21_021D8B8C: @ 0x021D8B8C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r4, r2, #0
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x1c
	movs r3, #3
	bl ov21_021D2724
	movs r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	movs r2, #0
	ldr r0, [r5]
	movs r1, #5
	adds r3, r2, #0
	bl ov21_021D276C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D8B8C

	thumb_func_start ov21_021D8BC4
ov21_021D8BC4: @ 0x021D8BC4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bne _021D8BD4
	movs r2, #0x2a
	b _021D8BD6
_021D8BD4:
	movs r2, #0x28
_021D8BD6:
	str r3, [sp]
	ldr r0, [r1]
	adds r3, r4, #0
	adds r1, r2, #0
	movs r2, #1
	adds r3, #0x60
	bl ov21_021D27B8
	str r0, [r4, #0x5c]
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021D8BC4

	thumb_func_start ov21_021D8BEC
ov21_021D8BEC: @ 0x021D8BEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x5c]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D8BEC

	thumb_func_start ov21_021D8C00
ov21_021D8C00: @ 0x021D8C00
	push {r4, lr}
	ldr r0, [r0]
	bl ov21_021D2170
	adds r4, r0, #0
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	adds r0, r4, #0
	bl FUN_02008780
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D8C00

	thumb_func_start ov21_021D8C1C
ov21_021D8C1C: @ 0x021D8C1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021D8CB8 @ =0x00003AE9
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x51
	bl FUN_02009A4C
	str r0, [r5, #0x24]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x24]
	bl FUN_02009D4C
	ldr r0, _021D8CBC @ =0x00003A9B
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xc
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #3
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x28]
	bl FUN_0200A640
	ldr r0, [r5, #0x28]
	bl FUN_02009D4C
	ldr r0, _021D8CC0 @ =0x00003AE7
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x4f
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x2c]
	ldr r0, _021D8CC4 @ =0x00003AE8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x50
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x30]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D8CB8: .4byte 0x00003AE9
_021D8CBC: .4byte 0x00003A9B
_021D8CC0: .4byte 0x00003AE7
_021D8CC4: .4byte 0x00003AE8
	thumb_func_end ov21_021D8C1C

	thumb_func_start ov21_021D8CC8
ov21_021D8CC8: @ 0x021D8CC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x24]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x28]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x28]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x2c]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x30]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D8CC8

	thumb_func_start ov21_021D8D0C
ov21_021D8D0C: @ 0x021D8D0C
	push {r4, r5, r6, lr}
	sub sp, #0x70
	adds r6, r3, #0
	ldr r4, [r1]
	ldr r3, _021D8DBC @ =0x00003AE8
	adds r5, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r2, #0x4d
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x1f
	str r0, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x44]
	lsls r0, r0, #0x13
	str r0, [sp, #0x34]
	movs r0, #0x29
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl FUN_02021B90
	movs r1, #3
	str r0, [r5, #0x20]
	bl FUN_02021D6C
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #0x34]
	movs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5, #0x58]
	movs r1, #0x11
	bl FUN_02021D6C
	ldr r0, [r5, #0x58]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #0x58]
	movs r1, #1
	bl FUN_02021CF8
	ldr r0, [r5, #0x58]
	movs r1, #0
	bl FUN_02021E80
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D8DBC: .4byte 0x00003AE8
	thumb_func_end ov21_021D8D0C

	thumb_func_start ov21_021D8DC0
ov21_021D8DC0: @ 0x021D8DC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	bl FUN_02021BD4
	ldr r0, [r4, #0x58]
	bl FUN_02021BD4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D8DC0

	thumb_func_start ov21_021D8DD4
ov21_021D8DD4: @ 0x021D8DD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [r0]
	movs r0, #0xd0
	str r0, [sp]
	movs r0, #0x20
	adds r6, r1, #0
	adds r7, r2, #0
	str r0, [sp, #4]
	adds r0, r5, #4
	movs r1, #0
	movs r2, #0x18
	movs r3, #8
	bl FUN_0201AE78
	cmp r6, #3
	bhi _021D8E18
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D8E02: @ jump table
	.2byte _021D8E0A - _021D8E02 - 2 @ case 0
	.2byte _021D8E0E - _021D8E02 - 2 @ case 1
	.2byte _021D8E12 - _021D8E02 - 2 @ case 2
	.2byte _021D8E16 - _021D8E02 - 2 @ case 3
_021D8E0A:
	movs r4, #0x5a
	b _021D8E18
_021D8E0E:
	movs r4, #0x57
	b _021D8E18
_021D8E12:
	movs r4, #0x58
	b _021D8E18
_021D8E16:
	movs r4, #0x59
_021D8E18:
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021D1CE0
	adds r6, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0xd0
	subs r0, r1, r0
	lsrs r4, r0, #1
	adds r0, r6, #0
	adds r4, #0x18
	bl FUN_02023C5C
	lsls r1, r0, #4
	movs r0, #0x20
	subs r0, r0, r1
	lsrs r0, r0, #1
	adds r0, #8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D8E64 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r2, r6, #0
	adds r3, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D8E64: .4byte 0x00020100
	thumb_func_end ov21_021D8DD4

	thumb_func_start ov21_021D8E68
ov21_021D8E68: @ 0x021D8E68
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r4, [r0]
	movs r0, #0xd0
	str r0, [sp]
	movs r0, #0x20
	adds r5, r1, #0
	str r0, [sp, #4]
	adds r0, r4, #4
	movs r1, #0
	movs r2, #0x18
	movs r3, #8
	bl FUN_0201AE78
	movs r0, #0x5d
	adds r1, r5, #0
	bl ov21_021D1CE0
	adds r6, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0xd0
	subs r0, r1, r0
	lsrs r5, r0, #1
	adds r0, r6, #0
	adds r5, #0x18
	bl FUN_02023C5C
	lsls r1, r0, #4
	movs r0, #0x20
	subs r0, r0, r1
	lsrs r0, r0, #1
	adds r0, #8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D8ED0 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #4
	adds r2, r6, #0
	adds r3, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D8ED0: .4byte 0x00020100
	thumb_func_end ov21_021D8E68

	thumb_func_start ov21_021D8ED4
ov21_021D8ED4: @ 0x021D8ED4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r1, #0
	ldr r1, [r4, #0x2c]
	ldr r0, [r5, #0x18]
	adds r7, r3, #0
	cmp r1, r0
	beq _021D8EF8
	str r1, [r5, #0x18]
	cmp r1, #1
	bne _021D8EF8
	movs r0, #0x40
	str r0, [r5, #0x1c]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021D8E68
_021D8EF8:
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	ble _021D8F04
	subs r0, r0, #1
	str r0, [r5, #0x1c]
	b _021D8F16
_021D8F04:
	bne _021D8F16
	ldr r1, [r4, #0xc]
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov21_021D8DD4
	ldr r0, [r5, #0x1c]
	subs r0, r0, #1
	str r0, [r5, #0x1c]
_021D8F16:
	ldr r1, [r4, #0xc]
	ldr r0, [r5]
	cmp r0, r1
	beq _021D8F34
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov21_021D8F98
	ldr r1, [r4, #0xc]
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov21_021D8DD4
	ldr r0, [r4, #0xc]
	str r0, [r5]
_021D8F34:
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #4]
	cmp r0, r1
	beq _021D8F48
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov21_021D9054
	ldr r0, [r4, #0x10]
	str r0, [r5, #4]
_021D8F48:
	ldr r1, [r4, #0x14]
	ldr r0, [r5, #8]
	cmp r0, r1
	beq _021D8F5C
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov21_021D90B4
	ldr r0, [r4, #0x14]
	str r0, [r5, #8]
_021D8F5C:
	ldr r1, [r4, #0x18]
	ldr r0, [r5, #0xc]
	cmp r0, r1
	beq _021D8F70
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov21_021D9234
	ldr r0, [r4, #0x18]
	str r0, [r5, #0xc]
_021D8F70:
	ldr r1, [r4, #0x1c]
	ldr r0, [r5, #0x10]
	cmp r0, r1
	beq _021D8F84
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov21_021D9240
	ldr r0, [r4, #0x1c]
	str r0, [r5, #0x10]
_021D8F84:
	ldr r1, [r4, #0x20]
	ldr r0, [r5, #0x14]
	cmp r0, r1
	beq _021D8F96
	adds r0, r5, #0
	bl ov21_021D924C
	ldr r0, [r4, #0x20]
	str r0, [r5, #0x14]
_021D8F96:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D8ED4

	thumb_func_start ov21_021D8F98
ov21_021D8F98: @ 0x021D8F98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r0, #0
	str r2, [sp]
	adds r7, r1, #0
	str r2, [sp, #0xc]
	ldr r0, [r4]
	movs r1, #0x2b
	movs r2, #1
	add r3, sp, #0x14
	bl ov21_021D27B8
	ldr r2, [sp, #0x14]
	movs r3, #0
	str r3, [sp]
	str r0, [sp, #0x10]
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	ldr r0, [sp, #0x10]
	bl FUN_020181C4
	cmp r7, #3
	bhi _021D9008
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D8FEA: @ jump table
	.2byte _021D8FF2 - _021D8FEA - 2 @ case 0
	.2byte _021D8FF8 - _021D8FEA - 2 @ case 1
	.2byte _021D8FFE - _021D8FEA - 2 @ case 2
	.2byte _021D9004 - _021D8FEA - 2 @ case 3
_021D8FF2:
	movs r5, #6
	movs r6, #0x2c
	b _021D9008
_021D8FF8:
	movs r5, #9
	movs r6, #0x2d
	b _021D9008
_021D8FFE:
	movs r5, #0xc
	movs r6, #0x2e
	b _021D9008
_021D9004:
	movs r5, #0x11
	movs r6, #0x2f
_021D9008:
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, [r4]
	movs r2, #1
	add r3, sp, #0x14
	bl ov21_021D27B8
	adds r6, r0, #0
	lsls r0, r5, #0x18
	ldr r2, [sp, #0x14]
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D8F98

	thumb_func_start ov21_021D9054
ov21_021D9054: @ 0x021D9054
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r4, [r0]
	movs r0, #0x50
	str r0, [sp]
	movs r0, #0x10
	adds r5, r1, #0
	adds r6, r2, #0
	str r0, [sp, #4]
	adds r0, r4, #4
	movs r1, #0
	movs r2, #0x58
	movs r3, #0x34
	bl FUN_0201AE78
	adds r5, #0x51
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021D1CE0
	adds r5, r0, #0
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	movs r3, #0x50
	bl FUN_02002EEC
	adds r3, r0, #0
	movs r0, #0x34
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D90B0 @ =0x00040300
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r3, #0x58
	adds r0, r4, #4
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021D90B0: .4byte 0x00040300
	thumb_func_end ov21_021D9054

	thumb_func_start ov21_021D90B4
ov21_021D90B4: @ 0x021D90B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [r0]
	movs r0, #0x50
	str r0, [sp]
	movs r0, #0x10
	adds r6, r1, #0
	adds r7, r2, #0
	str r0, [sp, #4]
	adds r0, r5, #4
	movs r1, #0
	movs r2, #0x58
	movs r3, #0x4d
	bl FUN_0201AE78
	cmp r6, #9
	bhi _021D911C
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D90E2: @ jump table
	.2byte _021D90F6 - _021D90E2 - 2 @ case 0
	.2byte _021D90FA - _021D90E2 - 2 @ case 1
	.2byte _021D90FE - _021D90E2 - 2 @ case 2
	.2byte _021D9102 - _021D90E2 - 2 @ case 3
	.2byte _021D9106 - _021D90E2 - 2 @ case 4
	.2byte _021D910A - _021D90E2 - 2 @ case 5
	.2byte _021D910E - _021D90E2 - 2 @ case 6
	.2byte _021D9112 - _021D90E2 - 2 @ case 7
	.2byte _021D9116 - _021D90E2 - 2 @ case 8
	.2byte _021D911A - _021D90E2 - 2 @ case 9
_021D90F6:
	movs r4, #0x7e
	b _021D911C
_021D90FA:
	movs r4, #0x36
	b _021D911C
_021D90FE:
	movs r4, #0x37
	b _021D911C
_021D9102:
	movs r4, #0x38
	b _021D911C
_021D9106:
	movs r4, #0x39
	b _021D911C
_021D910A:
	movs r4, #0x3a
	b _021D911C
_021D910E:
	movs r4, #0x3b
	b _021D911C
_021D9112:
	movs r4, #0x3c
	b _021D911C
_021D9116:
	movs r4, #0x3d
	b _021D911C
_021D911A:
	movs r4, #0x3e
_021D911C:
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021D1CE0
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	movs r3, #0x50
	bl FUN_02002EEC
	adds r3, r0, #0
	movs r0, #0x4d
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D9158 @ =0x00040300
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r3, #0x58
	adds r0, r5, #4
	adds r2, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D9158: .4byte 0x00040300
	thumb_func_end ov21_021D90B4

	thumb_func_start ov21_021D915C
ov21_021D915C: @ 0x021D915C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r5, [r0]
	adds r7, r3, #0
	movs r0, #0x50
	str r0, [sp]
	movs r0, #0x10
	lsls r3, r7, #0x10
	adds r6, r1, #0
	str r2, [sp, #0x10]
	str r0, [sp, #4]
	adds r0, r5, #4
	movs r1, #0
	movs r2, #0x58
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	cmp r6, #0x11
	bhi _021D91F8
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D918E: @ jump table
	.2byte _021D91B2 - _021D918E - 2 @ case 0
	.2byte _021D91B6 - _021D918E - 2 @ case 1
	.2byte _021D91BA - _021D918E - 2 @ case 2
	.2byte _021D91BE - _021D918E - 2 @ case 3
	.2byte _021D91C2 - _021D918E - 2 @ case 4
	.2byte _021D91C6 - _021D918E - 2 @ case 5
	.2byte _021D91CA - _021D918E - 2 @ case 6
	.2byte _021D91CE - _021D918E - 2 @ case 7
	.2byte _021D91D2 - _021D918E - 2 @ case 8
	.2byte _021D91D6 - _021D918E - 2 @ case 9
	.2byte _021D91DA - _021D918E - 2 @ case 10
	.2byte _021D91DE - _021D918E - 2 @ case 11
	.2byte _021D91E2 - _021D918E - 2 @ case 12
	.2byte _021D91E6 - _021D918E - 2 @ case 13
	.2byte _021D91EA - _021D918E - 2 @ case 14
	.2byte _021D91EE - _021D918E - 2 @ case 15
	.2byte _021D91F2 - _021D918E - 2 @ case 16
	.2byte _021D91F6 - _021D918E - 2 @ case 17
_021D91B2:
	movs r4, #0x35
	b _021D91F8
_021D91B6:
	movs r4, #0x40
	b _021D91F8
_021D91BA:
	movs r4, #0x46
	b _021D91F8
_021D91BE:
	movs r4, #0x49
	b _021D91F8
_021D91C2:
	movs r4, #0x47
	b _021D91F8
_021D91C6:
	movs r4, #0x48
	b _021D91F8
_021D91CA:
	movs r4, #0x4c
	b _021D91F8
_021D91CE:
	movs r4, #0x4b
	b _021D91F8
_021D91D2:
	movs r4, #0x4d
	b _021D91F8
_021D91D6:
	movs r4, #0x50
	b _021D91F8
_021D91DA:
	movs r4, #0x41
	b _021D91F8
_021D91DE:
	movs r4, #0x42
	b _021D91F8
_021D91E2:
	movs r4, #0x44
	b _021D91F8
_021D91E6:
	movs r4, #0x43
	b _021D91F8
_021D91EA:
	movs r4, #0x4a
	b _021D91F8
_021D91EE:
	movs r4, #0x45
	b _021D91F8
_021D91F2:
	movs r4, #0x4e
	b _021D91F8
_021D91F6:
	movs r4, #0x4f
_021D91F8:
	ldr r1, [sp, #0x10]
	adds r0, r4, #0
	bl ov21_021D1CE0
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	movs r3, #0x50
	bl FUN_02002EEC
	adds r3, r0, #0
	str r7, [sp]
	movs r1, #0
	ldr r0, _021D9230 @ =0x00040300
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r3, #0x58
	adds r0, r5, #4
	adds r2, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D9230: .4byte 0x00040300
	thumb_func_end ov21_021D915C

	thumb_func_start ov21_021D9234
ov21_021D9234: @ 0x021D9234
	push {r3, lr}
	movs r3, #0x66
	bl ov21_021D915C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021D9234

	thumb_func_start ov21_021D9240
ov21_021D9240: @ 0x021D9240
	push {r3, lr}
	movs r3, #0x78
	bl ov21_021D915C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021D9240

	thumb_func_start ov21_021D924C
ov21_021D924C: @ 0x021D924C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [r4, #0x20]
	bne _021D925E
	movs r1, #0
	bl FUN_02021CAC
	pop {r3, r4, r5, pc}
_021D925E:
	movs r1, #1
	bl FUN_02021CAC
	cmp r5, #0xe
	bhi _021D931C
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D9274: @ jump table
	.2byte _021D931C - _021D9274 - 2 @ case 0
	.2byte _021D9292 - _021D9274 - 2 @ case 1
	.2byte _021D929C - _021D9274 - 2 @ case 2
	.2byte _021D92A6 - _021D9274 - 2 @ case 3
	.2byte _021D92B0 - _021D9274 - 2 @ case 4
	.2byte _021D92BA - _021D9274 - 2 @ case 5
	.2byte _021D92C4 - _021D9274 - 2 @ case 6
	.2byte _021D92CE - _021D9274 - 2 @ case 7
	.2byte _021D92D8 - _021D9274 - 2 @ case 8
	.2byte _021D92E2 - _021D9274 - 2 @ case 9
	.2byte _021D92EC - _021D9274 - 2 @ case 10
	.2byte _021D92F6 - _021D9274 - 2 @ case 11
	.2byte _021D9300 - _021D9274 - 2 @ case 12
	.2byte _021D930A - _021D9274 - 2 @ case 13
	.2byte _021D9314 - _021D9274 - 2 @ case 14
_021D9292:
	ldr r0, [r4, #0x20]
	movs r1, #3
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D929C:
	ldr r0, [r4, #0x20]
	movs r1, #4
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92A6:
	ldr r0, [r4, #0x20]
	movs r1, #5
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92B0:
	ldr r0, [r4, #0x20]
	movs r1, #6
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92BA:
	ldr r0, [r4, #0x20]
	movs r1, #7
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92C4:
	ldr r0, [r4, #0x20]
	movs r1, #8
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92CE:
	ldr r0, [r4, #0x20]
	movs r1, #9
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92D8:
	ldr r0, [r4, #0x20]
	movs r1, #0xa
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92E2:
	ldr r0, [r4, #0x20]
	movs r1, #0xb
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92EC:
	ldr r0, [r4, #0x20]
	movs r1, #0xc
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D92F6:
	ldr r0, [r4, #0x20]
	movs r1, #0xd
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D9300:
	ldr r0, [r4, #0x20]
	movs r1, #0xe
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D930A:
	ldr r0, [r4, #0x20]
	movs r1, #0xf
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
_021D9314:
	ldr r0, [r4, #0x20]
	movs r1, #0x10
	bl FUN_02021D6C
_021D931C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D924C

	thumb_func_start ov21_021D9320
ov21_021D9320: @ 0x021D9320
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r2, #0x34]
	adds r4, r1, #0
	cmp r0, #4
	bne _021D9384
	ldr r0, [r2, #0x30]
	cmp r0, #1
	bne _021D9358
	movs r1, #0
	str r1, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x14
	str r0, [sp, #0xc]
	movs r0, #4
	str r0, [sp, #0x10]
	ldr r1, [r4]
	adds r0, r5, #0
	ldr r1, [r1]
	ldr r3, [r5, #0x60]
	adds r0, #0x34
	movs r2, #2
	bl ov21_021D1558
	b _021D9384
_021D9358:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r3, #0
	bl ov21_021D9454
	movs r0, #0xc
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #4
	str r0, [sp, #0x10]
	ldr r1, [r4]
	adds r0, r5, #0
	ldr r1, [r1]
	ldr r3, [r5, #0x60]
	adds r0, #0x34
	movs r2, #2
	bl ov21_021D1558
_021D9384:
	adds r5, #0x34
	adds r0, r5, #0
	bl ov21_021D157C
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov21_021D9320

	thumb_func_start ov21_021D9390
ov21_021D9390: @ 0x021D9390
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	ldr r0, [r6, #0x34]
	adds r4, r1, #0
	adds r7, r3, #0
	cmp r0, #0x20
	bne _021D93B2
	ldr r0, [r5, #0x58]
	movs r1, #1
	bl FUN_02021CAC
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021D93F4
	b _021D93D0
_021D93B2:
	cmp r0, #0
	bne _021D93D0
	ldr r0, [r5, #0x58]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [r4]
	adds r0, r0, #4
	bl FUN_0201A9A4
_021D93D0:
	ldr r2, [r6, #0x34]
	movs r1, #4
	subs r2, r1, r2
	ldr r1, _021D93F0 @ =0x00007FFF
	adds r3, r2, #0
	muls r3, r1, r3
	asrs r1, r3, #1
	lsrs r1, r1, #0x1e
	adds r1, r3, r1
	lsls r1, r1, #0xe
	ldr r0, [r5, #0x58]
	lsrs r1, r1, #0x10
	bl FUN_02021C94
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D93F0: .4byte 0x00007FFF
	thumb_func_end ov21_021D9390

	thumb_func_start ov21_021D93F4
ov21_021D93F4: @ 0x021D93F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, [r0]
	adds r4, r1, #0
	adds r0, r5, #4
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x5e
	adds r1, r4, #0
	bl ov21_021D1CE0
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #1
	lsls r1, r1, #8
	subs r0, r1, r0
	lsrs r3, r0, #1
	movs r0, #0x80
	str r0, [sp]
	movs r1, #0
	ldr r0, _021D9450 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r2, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	movs r0, #1
	movs r1, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #1
	bl FUN_02019060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D9450: .4byte 0x00020100
	thumb_func_end ov21_021D93F4

	thumb_func_start ov21_021D9454
ov21_021D9454: @ 0x021D9454
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #1
	adds r4, r1, #0
	adds r1, r0, #0
	adds r6, r2, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	ldr r0, [r5]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r1, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D8F98
	ldr r1, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D8DD4
	ldr r1, [r4, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D9054
	ldr r1, [r4, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D90B4
	ldr r1, [r4, #0xc]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D9234
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D9240
	ldr r1, [r4, #0x14]
	adds r0, r4, #0
	bl ov21_021D924C
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D9454

	thumb_func_start ov21_021D94BC
ov21_021D94BC: @ 0x021D94BC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021D9534
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021D957C
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021D95B4
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021D95E4
	str r0, [r5, #0x24]
	ldr r0, _021D9504 @ =ov21_021D95E8
	str r0, [r5, #8]
	ldr r0, _021D9508 @ =ov21_021D964C
	str r0, [r5, #0xc]
	ldr r0, _021D950C @ =ov21_021D9780
	str r0, [r5, #0x10]
	ldr r0, _021D9510 @ =ov21_021D97A0
	str r0, [r5, #0x14]
	ldr r0, _021D9514 @ =ov21_021D9830
	str r0, [r5, #0x18]
	ldr r0, _021D9518 @ =ov21_021D9960
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D9504: .4byte ov21_021D95E8
_021D9508: .4byte ov21_021D964C
_021D950C: .4byte ov21_021D9780
_021D9510: .4byte ov21_021D97A0
_021D9514: .4byte ov21_021D9830
_021D9518: .4byte ov21_021D9960
	thumb_func_end ov21_021D94BC

	thumb_func_start ov21_021D951C
ov21_021D951C: @ 0x021D951C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021D95B8
	ldr r0, [r4, #4]
	bl ov21_021D95CC
	ldr r0, [r4, #0x20]
	bl ov21_021D95E0
	pop {r4, pc}
	thumb_func_end ov21_021D951C

	thumb_func_start ov21_021D9534
ov21_021D9534: @ 0x021D9534
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x10
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D9546
	bl FUN_02022974
_021D9546:
	adds r2, r4, #0
	movs r1, #0x10
	movs r0, #0
_021D954C:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D954C
	adds r0, r5, #0
	bl ov21_021D138C
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #1
	bl ov21_021D1410
	str r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #1
	bl ov21_021D1430
	str r0, [r4, #0xc]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9534

	thumb_func_start ov21_021D957C
ov21_021D957C: @ 0x021D957C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D958E
	bl FUN_02022974
_021D958E:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D957C

	thumb_func_start ov21_021D95B4
ov21_021D95B4: @ 0x021D95B4
	movs r0, #0
	bx lr
	thumb_func_end ov21_021D95B4

	thumb_func_start ov21_021D95B8
ov21_021D95B8: @ 0x021D95B8
	push {r4, lr}
	adds r4, r0, #0
	bne _021D95C2
	bl FUN_02022974
_021D95C2:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D95B8

	thumb_func_start ov21_021D95CC
ov21_021D95CC: @ 0x021D95CC
	push {r4, lr}
	adds r4, r0, #0
	bne _021D95D6
	bl FUN_02022974
_021D95D6:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D95CC

	thumb_func_start ov21_021D95E0
ov21_021D95E0: @ 0x021D95E0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021D95E0

	thumb_func_start ov21_021D95E4
ov21_021D95E4: @ 0x021D95E4
	movs r0, #0
	bx lr
	thumb_func_end ov21_021D95E4

	thumb_func_start ov21_021D95E8
ov21_021D95E8: @ 0x021D95E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r6, r1, #0
	movs r1, #0x9c
	bl FUN_02018144
	adds r4, r0, #0
	bne _021D95FE
	bl FUN_02022974
_021D95FE:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x9c
	blx FUN_020D5124
	adds r0, r4, #0
	ldr r1, _021D9648 @ =0x0000FFFF
	str r4, [r5, #8]
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DC35C
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021D9ADC
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl ov21_021DB3E0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DB428
	movs r1, #0
	movs r0, #4
_021D9638:
	adds r1, r1, #1
	str r0, [r4, #0x2c]
	adds r4, r4, #4
	cmp r1, #6
	blt _021D9638
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_021D9648: .4byte 0x0000FFFF
	thumb_func_end ov21_021D95E8

	thumb_func_start ov21_021D964C
ov21_021D964C: @ 0x021D964C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [r6, #0xc]
	ldr r4, [r5, #8]
	ldr r7, [r0, #4]
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _021D9666
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D9666:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021D9672
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9672:
	ldr r0, [r6, #8]
	bl ov21_021D86D8
	cmp r0, #0
	beq _021D9682
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D9682:
	ldr r0, [r6, #8]
	bl ov21_021D863C
	str r0, [sp, #4]
	ldr r0, [r5]
	cmp r0, #4
	bhi _021D9778
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D969C: @ jump table
	.2byte _021D96A6 - _021D969C - 2 @ case 0
	.2byte _021D9702 - _021D969C - 2 @ case 1
	.2byte _021D9710 - _021D969C - 2 @ case 2
	.2byte _021D9766 - _021D969C - 2 @ case 3
	.2byte _021D9774 - _021D969C - 2 @ case 4
_021D96A6:
	ldr r1, [r4, #0x24]
	ldr r0, [sp, #4]
	cmp r1, r0
	bne _021D96B6
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	beq _021D96DE
_021D96B6:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x98
	str r1, [r0]
	movs r0, #2
	str r0, [r7, #4]
	adds r0, r4, #0
	adds r0, #0x98
	str r0, [r7, #8]
	adds r0, r4, #0
	bl ov21_021D9CA8
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov21_021D9CB8
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D9778
_021D96DE:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021D9B98
	ldr r0, [r6, #4]
	bl ov21_021D3998
	cmp r0, #2
	bne _021D96F8
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DB2FC
_021D96F8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DC368
	b _021D9778
_021D9702:
	adds r4, #0x98
	ldr r1, [r4]
	cmp r1, #0
	beq _021D9778
	adds r0, r0, #1
	str r0, [r5]
	b _021D9778
_021D9710:
	ldr r0, [r4, #0x24]
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x28]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl ov21_021D9B34
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl ov21_021DB468
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DC35C
	ldr r1, [r4, #0x24]
	ldr r0, [sp]
	cmp r0, r1
	beq _021D9746
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DB428
_021D9746:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x98
	str r1, [r0]
	movs r0, #1
	str r0, [r7, #4]
	adds r0, r4, #0
	adds r0, #0x98
	str r0, [r7, #8]
	adds r0, r4, #0
	bl ov21_021D9D68
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D9778
_021D9766:
	adds r4, #0x98
	ldr r1, [r4]
	cmp r1, #0
	beq _021D9778
	adds r0, r0, #1
	str r0, [r5]
	b _021D9778
_021D9774:
	movs r0, #0
	str r0, [r5]
_021D9778:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D964C

	thumb_func_start ov21_021D9780
ov21_021D9780: @ 0x021D9780
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #8]
	adds r0, r5, #0
	bl ov21_021D9B24
	adds r0, r5, #0
	bl ov21_021DB3C8
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9780

	thumb_func_start ov21_021D97A0
ov21_021D97A0: @ 0x021D97A0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r6, r0, #0
	adds r7, r2, #0
	ldr r5, [r3, #8]
	ldr r0, [r4, #8]
	cmp r1, #3
	bhi _021D982A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D97BE: @ jump table
	.2byte _021D97C6 - _021D97BE - 2 @ case 0
	.2byte _021D97E4 - _021D97BE - 2 @ case 1
	.2byte _021D9814 - _021D97BE - 2 @ case 2
	.2byte _021D9826 - _021D97BE - 2 @ case 3
_021D97C6:
	movs r1, #0x4e
	ldr r0, [r4, #4]
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x4e
	str r0, [r4, #8]
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D982A
_021D97E4:
	ldr r1, [r4, #4]
	adds r3, r5, #0
	str r1, [sp]
	adds r1, r6, #0
	bl ov21_021D9A08
	movs r1, #0
	movs r0, #2
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #1
	subs r2, #0x10
	movs r3, #0x3f
	bl FUN_0200AAE0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov21_021DB480
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D982A
_021D9814:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #0
	beq _021D982A
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D982A
_021D9826:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D982A:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021D97A0

	thumb_func_start ov21_021D9830
ov21_021D9830: @ 0x021D9830
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	adds r0, r2, #0
	adds r5, r1, #0
	ldr r0, [r0, #8]
	str r2, [sp, #4]
	ldr r6, [r3, #8]
	ldr r4, [r5, #8]
	bl ov21_021D86D8
	cmp r0, #0
	beq _021D9856
	ldr r2, [sp, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021DC96C
	b _021D98E0
_021D9856:
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021DC7C0
	movs r0, #0x41
	lsls r0, r0, #2
	ldr r2, [r6, #0x24]
	ldr r3, [r4, r0]
	cmp r3, r2
	bne _021D9874
	adds r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, [r6, #0x28]
	cmp r1, r0
	beq _021D98D6
_021D9874:
	movs r0, #0x41
	lsls r0, r0, #2
	str r2, [r4, r0]
	ldr r1, [r6, #0x28]
	adds r0, r0, #4
	str r1, [r4, r0]
	cmp r3, #3
	bne _021D9892
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021DB6C8
	adds r0, r4, #0
	bl ov21_021DBDA0
_021D9892:
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021DB79C
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021DBE3C
	movs r0, #0x41
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #3
	bne _021D98C4
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021DB634
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021DBBE4
_021D98C4:
	movs r3, #0x41
	lsls r3, r3, #2
	ldr r2, [r4, r3]
	adds r3, r3, #4
	ldr r3, [r4, r3]
	adds r0, r4, #0
	movs r1, #1
	bl ov21_021DC8B4
_021D98D6:
	ldr r2, [sp, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021DB49C
_021D98E0:
	movs r7, #0
	str r6, [sp, #8]
	adds r5, r4, #0
_021D98E6:
	ldr r1, [sp, #8]
	ldr r0, [r5]
	ldr r1, [r1, #0x2c]
	bl ov21_021D144C
	ldr r1, [r5, #0x18]
	cmp r1, #0
	beq _021D990E
	cmp r7, #5
	bne _021D98FE
	movs r3, #1
	b _021D9900
_021D98FE:
	movs r3, #3
_021D9900:
	movs r0, #5
	str r0, [sp]
	movs r2, #5
	ldr r0, [r5]
	mvns r2, r2
	bl ov21_021D1524
_021D990E:
	ldr r0, [sp, #8]
	adds r7, r7, #1
	adds r0, r0, #4
	adds r5, r5, #4
	str r0, [sp, #8]
	cmp r7, #6
	blt _021D98E6
	movs r5, #0
	movs r7, #6
_021D9920:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D992C
	ldr r1, [r6, #0x44]
	bl ov21_021D144C
_021D992C:
	ldr r1, [r4, #0x6c]
	cmp r1, #0
	beq _021D9940
	str r7, [sp]
	movs r2, #5
	ldr r0, [r4, #0x30]
	mvns r2, r2
	movs r3, #0xb
	bl ov21_021D1524
_021D9940:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021D9950
	ldr r1, [r6, #0x44]
	bl ov21_021D144C
_021D9950:
	adds r5, r5, #1
	adds r4, r4, #4
	adds r6, r6, #4
	cmp r5, #0xf
	blt _021D9920
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021D9830

	thumb_func_start ov21_021D9960
ov21_021D9960: @ 0x021D9960
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021D9A02
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D997C: @ jump table
	.2byte _021D9986 - _021D997C - 2 @ case 0
	.2byte _021D99B0 - _021D997C - 2 @ case 1
	.2byte _021D99C2 - _021D997C - 2 @ case 2
	.2byte _021D99EA - _021D997C - 2 @ case 3
	.2byte _021D99FC - _021D997C - 2 @ case 4
_021D9986:
	ldr r0, [r2, #8]
	bl ov21_021D86D0
	cmp r0, #1
	bne _021D9996
	movs r0, #2
	str r0, [r4]
	b _021D9A02
_021D9996:
	movs r0, #2
	str r0, [sp]
	movs r0, #6
	adds r1, r0, #0
	subs r1, #0x16
	movs r2, #0
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D9A02
_021D99B0:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #0
	beq _021D9A02
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D9A02
_021D99C2:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021D9A4C
	movs r0, #0x41
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #3
	bne _021D99E2
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021DB6C8
	adds r0, r5, #0
	bl ov21_021DBDA0
_021D99E2:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D9A02
_021D99EA:
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D9A02
_021D99FC:
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D9A02:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021D9960

	thumb_func_start ov21_021D9A08
ov21_021D9A08: @ 0x021D9A08
	push {r4, r5, r6, lr}
	ldr r4, [sp, #0x10]
	adds r6, r1, #0
	adds r5, r0, #0
	adds r1, r2, #0
	adds r0, r6, #0
	adds r2, r4, #0
	bl ov21_021D9A74
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021DB50C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021DB708
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021DBDC8
	movs r3, #0x41
	lsls r3, r3, #2
	ldr r2, [r5, r3]
	adds r3, r3, #4
	ldr r3, [r5, r3]
	adds r0, r5, #0
	movs r1, #1
	bl ov21_021DC8B4
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021D9A08

	thumb_func_start ov21_021D9A4C
ov21_021D9A4C: @ 0x021D9A4C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021DBE2C
	adds r0, r5, #0
	bl ov21_021DB78C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DB5DC
	movs r0, #0x79
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0
	bl ov21_021D2584
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9A4C

	thumb_func_start ov21_021D9A74
ov21_021D9A74: @ 0x021D9A74
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r5, r2, #0
	str r5, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x1d
	movs r3, #6
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4]
	movs r1, #0x4b
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #6
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D9A74

	thumb_func_start ov21_021D9ADC
ov21_021D9ADC: @ 0x021D9ADC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov21_021D9BEC
	ldr r0, [r5, #0x28]
	adds r1, r4, #0
	str r0, [sp]
	ldr r3, [r5, #0x24]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D9B58
	adds r0, r5, #0
	bl ov21_021D9B04
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021D9ADC

	thumb_func_start ov21_021D9B04
ov21_021D9B04: @ 0x021D9B04
	movs r2, #0
	adds r3, r0, #0
	movs r1, #3
_021D9B0A:
	adds r2, r2, #1
	str r1, [r3, #0x2c]
	adds r3, r3, #4
	cmp r2, #6
	blt _021D9B0A
	movs r2, #0
	movs r1, #3
_021D9B18:
	adds r2, r2, #1
	str r1, [r0, #0x44]
	adds r0, r0, #4
	cmp r2, #0xf
	blt _021D9B18
	bx lr
	thumb_func_end ov21_021D9B04

	thumb_func_start ov21_021D9B24
ov21_021D9B24: @ 0x021D9B24
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021D9D00
	adds r0, r4, #0
	bl ov21_021D9D50
	pop {r4, pc}
	thumb_func_end ov21_021D9B24

	thumb_func_start ov21_021D9B34
ov21_021D9B34: @ 0x021D9B34
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov21_021D9D50
	ldr r0, [r5, #0x28]
	adds r1, r4, #0
	str r0, [sp]
	ldr r3, [r5, #0x24]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov21_021D9B58
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021D9B34

	thumb_func_start ov21_021D9B58
ov21_021D9B58: @ 0x021D9B58
	push {r3, lr}
	cmp r3, #3
	bhi _021D9B94
	adds r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_021D9B6A: @ jump table
	.2byte _021D9B72 - _021D9B6A - 2 @ case 0
	.2byte _021D9B78 - _021D9B6A - 2 @ case 1
	.2byte _021D9B7E - _021D9B6A - 2 @ case 2
	.2byte _021D9B90 - _021D9B6A - 2 @ case 3
_021D9B72:
	bl ov21_021D9D78
	pop {r3, pc}
_021D9B78:
	bl ov21_021D9EB4
	pop {r3, pc}
_021D9B7E:
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _021D9B8A
	bl ov21_021DA018
	pop {r3, pc}
_021D9B8A:
	bl ov21_021DA1C8
	pop {r3, pc}
_021D9B90:
	bl ov21_021DA38C
_021D9B94:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021D9B58

	thumb_func_start ov21_021D9B98
ov21_021D9B98: @ 0x021D9B98
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021D9C90
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021D9BB0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9B98

	thumb_func_start ov21_021D9BB0
ov21_021D9BB0: @ 0x021D9BB0
	push {r3, lr}
	cmp r2, #3
	bhi _021D9BEA
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D9BC2: @ jump table
	.2byte _021D9BCA - _021D9BC2 - 2 @ case 0
	.2byte _021D9BD0 - _021D9BC2 - 2 @ case 1
	.2byte _021D9BD6 - _021D9BC2 - 2 @ case 2
	.2byte _021D9BE6 - _021D9BC2 - 2 @ case 3
_021D9BCA:
	bl ov21_021D9E08
	pop {r3, pc}
_021D9BD0:
	bl ov21_021D9F44
	pop {r3, pc}
_021D9BD6:
	cmp r3, #0
	bne _021D9BE0
	bl ov21_021DA0BC
	pop {r3, pc}
_021D9BE0:
	bl ov21_021DA280
	pop {r3, pc}
_021D9BE6:
	bl ov21_021DA41C
_021D9BEA:
	pop {r3, pc}
	thumb_func_end ov21_021D9BB0

	thumb_func_start ov21_021D9BEC
ov21_021D9BEC: @ 0x021D9BEC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #0x18
	bl FUN_02018144
	str r0, [r5, #4]
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x20
	adds r0, r0, #4
	movs r2, #0x40
	movs r3, #0xc0
	bl ov21_021D154C
	movs r0, #0xec
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0
	movs r2, #0x20
	movs r3, #0xbc
	bl ov21_021D154C
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x40
	adds r0, #8
	movs r2, #0x60
	movs r3, #0xc0
	bl ov21_021D154C
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x60
	adds r0, #0xc
	movs r2, #0x80
	movs r3, #0xc0
	bl ov21_021D154C
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x80
	adds r0, #0x10
	movs r2, #0xa0
	movs r3, #0xc0
	bl ov21_021D154C
	movs r0, #0xfc
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0xa0
	adds r0, #0x14
	movs r2, #0xc0
	movs r3, #0xac
	bl ov21_021D154C
	str r4, [r5, #0x10]
	str r5, [r5, #0x14]
	str r6, [sp]
	adds r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021D9C8C @ =ov21_021D9D18
	movs r1, #6
	adds r3, #0x10
	bl FUN_02023FCC
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D9C8C: .4byte ov21_021D9D18
	thumb_func_end ov21_021D9BEC

	thumb_func_start ov21_021D9C90
ov21_021D9C90: @ 0x021D9C90
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021D9CA8
	ldr r0, [r4]
	bl FUN_0202404C
	ldr r1, [r4, #0x24]
	adds r0, r4, #0
	bl ov21_021D9CB8
	pop {r4, pc}
	thumb_func_end ov21_021D9C90

	thumb_func_start ov21_021D9CA8
ov21_021D9CA8: @ 0x021D9CA8
	movs r2, #0
	movs r1, #3
_021D9CAC:
	adds r2, r2, #1
	str r1, [r0, #0x2c]
	adds r0, r0, #4
	cmp r2, #6
	blt _021D9CAC
	bx lr
	thumb_func_end ov21_021D9CA8

	thumb_func_start ov21_021D9CB8
ov21_021D9CB8: @ 0x021D9CB8
	cmp r1, #3
	bhi _021D9CFE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D9CC8: @ jump table
	.2byte _021D9CD0 - _021D9CC8 - 2 @ case 0
	.2byte _021D9CDC - _021D9CC8 - 2 @ case 1
	.2byte _021D9CE8 - _021D9CC8 - 2 @ case 2
	.2byte _021D9CF4 - _021D9CC8 - 2 @ case 3
_021D9CD0:
	ldr r1, [r0, #0x30]
	cmp r1, #2
	beq _021D9CFE
	movs r1, #1
	str r1, [r0, #0x30]
	bx lr
_021D9CDC:
	ldr r1, [r0, #0x34]
	cmp r1, #2
	beq _021D9CFE
	movs r1, #1
	str r1, [r0, #0x34]
	bx lr
_021D9CE8:
	ldr r1, [r0, #0x38]
	cmp r1, #2
	beq _021D9CFE
	movs r1, #1
	str r1, [r0, #0x38]
	bx lr
_021D9CF4:
	ldr r1, [r0, #0x3c]
	cmp r1, #2
	beq _021D9CFE
	movs r1, #1
	str r1, [r0, #0x3c]
_021D9CFE:
	bx lr
	thumb_func_end ov21_021D9CB8

	thumb_func_start ov21_021D9D00
ov21_021D9D00: @ 0x021D9D00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02024034
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D9D00

	thumb_func_start ov21_021D9D18
ov21_021D9D18: @ 0x021D9D18
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r2, #4]
	lsls r0, r5, #2
	adds r0, r4, r0
	str r1, [r0, #0x2c]
	cmp r1, #2
	bne _021D9D46
	ldr r0, [r4, #0x18]
	movs r1, #4
	adds r2, r5, #0
	bl ov21_021D4F20
	adds r0, r4, #0
	adds r0, #0x80
	str r5, [r0]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D9D46:
	movs r0, #0
	adds r4, #0x94
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D9D18

	thumb_func_start ov21_021D9D50
ov21_021D9D50: @ 0x021D9D50
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_02024034
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021D9D50

	thumb_func_start ov21_021D9D68
ov21_021D9D68: @ 0x021D9D68
	movs r2, #0
	movs r1, #3
_021D9D6C:
	adds r2, r2, #1
	str r1, [r0, #0x44]
	adds r0, r0, #4
	cmp r2, #0xf
	blt _021D9D6C
	bx lr
	thumb_func_end ov21_021D9D68

	thumb_func_start ov21_021D9D78
ov21_021D9D78: @ 0x021D9D78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x18
	str r2, [sp, #0xc]
	bl FUN_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x30
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021D9D98:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	adds r0, #0x10
	movs r4, #0
	movs r5, #0x30
	subs r7, #0x10
	str r0, [sp, #0x18]
_021D9DA8:
	adds r0, r5, #0
	adds r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r5, #0
	ldr r1, [r0, #0xc]
	adds r0, r4, r6
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	subs r3, #0x28
	bl ov21_021D154C
	adds r4, r4, #1
	adds r5, #0x50
	cmp r4, #2
	blt _021D9DA8
	ldr r0, [sp, #0x10]
	adds r6, r6, #2
	adds r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #3
	blt _021D9D98
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, _021D9E04 @ =ov21_021D9E90
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r1, #6
	ldr r0, [r0, #0xc]
	adds r3, #0x10
	bl FUN_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D9E04: .4byte ov21_021D9E90
	thumb_func_end ov21_021D9D78

	thumb_func_start ov21_021D9E08
ov21_021D9E08: @ 0x021D9E08
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	adds r2, r4, #0
	movs r0, #3
_021D9E14:
	adds r1, r1, #1
	str r0, [r2, #0x44]
	adds r2, r2, #4
	cmp r1, #6
	blt _021D9E14
	ldr r0, [r4, #8]
	bl FUN_0202404C
	ldr r0, [r5, #8]
	bl ov21_021D8658
	cmp r0, #5
	bhi _021D9E8C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D9E3A: @ jump table
	.2byte _021D9E46 - _021D9E3A - 2 @ case 0
	.2byte _021D9E52 - _021D9E3A - 2 @ case 1
	.2byte _021D9E5E - _021D9E3A - 2 @ case 2
	.2byte _021D9E6A - _021D9E3A - 2 @ case 3
	.2byte _021D9E76 - _021D9E3A - 2 @ case 4
	.2byte _021D9E82 - _021D9E3A - 2 @ case 5
_021D9E46:
	ldr r0, [r4, #0x44]
	cmp r0, #2
	beq _021D9E8C
	movs r0, #1
	str r0, [r4, #0x44]
	pop {r3, r4, r5, pc}
_021D9E52:
	ldr r0, [r4, #0x48]
	cmp r0, #2
	beq _021D9E8C
	movs r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_021D9E5E:
	ldr r0, [r4, #0x4c]
	cmp r0, #2
	beq _021D9E8C
	movs r0, #1
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021D9E6A:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021D9E8C
	movs r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, pc}
_021D9E76:
	ldr r0, [r4, #0x54]
	cmp r0, #2
	beq _021D9E8C
	movs r0, #1
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_021D9E82:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _021D9E8C
	movs r0, #1
	str r0, [r4, #0x58]
_021D9E8C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D9E08

	thumb_func_start ov21_021D9E90
ov21_021D9E90: @ 0x021D9E90
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r2, #4]
	lsls r0, r5, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021D9EB0
	adds r2, r5, #0
	ldr r0, [r4, #0x18]
	movs r1, #4
	adds r2, #8
	bl ov21_021D4F20
	adds r4, #0x84
	str r5, [r4]
_021D9EB0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D9E90

	thumb_func_start ov21_021D9EB4
ov21_021D9EB4: @ 0x021D9EB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x28
	str r2, [sp, #0xc]
	bl FUN_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x10
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021D9ED4:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	adds r0, #0x10
	movs r4, #0
	movs r5, #0x30
	subs r7, #0x10
	str r0, [sp, #0x18]
_021D9EE4:
	adds r0, r5, #0
	adds r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r5, #0
	ldr r1, [r0, #0xc]
	adds r0, r4, r6
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	subs r3, #0x28
	bl ov21_021D154C
	adds r4, r4, #1
	adds r5, #0x50
	cmp r4, #2
	blt _021D9EE4
	ldr r0, [sp, #0x10]
	adds r6, r6, #2
	adds r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _021D9ED4
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, _021D9F40 @ =ov21_021D9FF8
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r1, #0xa
	ldr r0, [r0, #0xc]
	adds r3, #0x10
	bl FUN_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021D9F40: .4byte ov21_021D9FF8
	thumb_func_end ov21_021D9EB4

	thumb_func_start ov21_021D9F44
ov21_021D9F44: @ 0x021D9F44
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	adds r2, r4, #0
	movs r0, #3
_021D9F50:
	adds r1, r1, #1
	str r0, [r2, #0x44]
	adds r2, r2, #4
	cmp r1, #0xa
	blt _021D9F50
	ldr r0, [r4, #8]
	bl FUN_0202404C
	ldr r0, [r5, #8]
	bl ov21_021D8674
	cmp r0, #9
	bhi _021D9FF4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D9F76: @ jump table
	.2byte _021D9FF4 - _021D9F76 - 2 @ case 0
	.2byte _021D9F8A - _021D9F76 - 2 @ case 1
	.2byte _021D9F96 - _021D9F76 - 2 @ case 2
	.2byte _021D9FA2 - _021D9F76 - 2 @ case 3
	.2byte _021D9FAE - _021D9F76 - 2 @ case 4
	.2byte _021D9FBA - _021D9F76 - 2 @ case 5
	.2byte _021D9FC6 - _021D9F76 - 2 @ case 6
	.2byte _021D9FD2 - _021D9F76 - 2 @ case 7
	.2byte _021D9FDE - _021D9F76 - 2 @ case 8
	.2byte _021D9FEA - _021D9F76 - 2 @ case 9
_021D9F8A:
	ldr r0, [r4, #0x44]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x44]
	pop {r3, r4, r5, pc}
_021D9F96:
	ldr r0, [r4, #0x48]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_021D9FA2:
	ldr r0, [r4, #0x4c]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021D9FAE:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, pc}
_021D9FBA:
	ldr r0, [r4, #0x54]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_021D9FC6:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, pc}
_021D9FD2:
	ldr r0, [r4, #0x5c]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021D9FDE:
	ldr r0, [r4, #0x60]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_021D9FEA:
	ldr r0, [r4, #0x64]
	cmp r0, #2
	beq _021D9FF4
	movs r0, #1
	str r0, [r4, #0x64]
_021D9FF4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021D9F44

	thumb_func_start ov21_021D9FF8
ov21_021D9FF8: @ 0x021D9FF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r2, #4]
	lsls r0, r5, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021DA016
	ldr r0, [r4, #0x18]
	movs r1, #4
	adds r2, r5, #6
	bl ov21_021D4F20
	adds r4, #0x84
	str r5, [r4]
_021DA016:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021D9FF8

	thumb_func_start ov21_021DA018
ov21_021DA018: @ 0x021DA018
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x2c
	str r2, [sp, #0xc]
	bl FUN_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x10
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021DA038:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	adds r0, #0x10
	movs r4, #0
	movs r5, #0x30
	subs r7, #0x10
	str r0, [sp, #0x18]
_021DA048:
	adds r0, r5, #0
	adds r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r5, #0
	ldr r1, [r0, #0xc]
	adds r0, r4, r6
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	subs r3, #0x28
	bl ov21_021D154C
	adds r4, r4, #1
	adds r5, #0x50
	cmp r4, #2
	blt _021DA048
	ldr r0, [sp, #0x10]
	adds r6, r6, #2
	adds r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _021DA038
	movs r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r1, #0xa0
	ldr r0, [r0, #0xc]
	movs r2, #0xc0
	adds r0, #0x28
	movs r3, #8
	bl ov21_021D154C
	ldr r3, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r2, _021DA0B8 @ =ov21_021DA18C
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	movs r1, #0xb
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, #0x10
	ldr r0, [r0, #0xc]
	bl FUN_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DA0B8: .4byte ov21_021DA18C
	thumb_func_end ov21_021DA018

	thumb_func_start ov21_021DA0BC
ov21_021DA0BC: @ 0x021DA0BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0
	adds r2, r5, #0
	movs r0, #3
_021DA0C8:
	adds r1, r1, #1
	str r0, [r2, #0x44]
	adds r2, r2, #4
	cmp r1, #0xb
	blt _021DA0C8
	ldr r0, [r5, #8]
	bl FUN_0202404C
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov21_021D8698
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov21_021DA0FC
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov21_021D8698
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov21_021DA0FC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DA0BC

	thumb_func_start ov21_021DA0FC
ov21_021DA0FC: @ 0x021DA0FC
	cmp r1, #9
	bhi _021DA18A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021DA10C: @ jump table
	.2byte _021DA18A - _021DA10C - 2 @ case 0
	.2byte _021DA120 - _021DA10C - 2 @ case 1
	.2byte _021DA12C - _021DA10C - 2 @ case 2
	.2byte _021DA138 - _021DA10C - 2 @ case 3
	.2byte _021DA144 - _021DA10C - 2 @ case 4
	.2byte _021DA150 - _021DA10C - 2 @ case 5
	.2byte _021DA15C - _021DA10C - 2 @ case 6
	.2byte _021DA168 - _021DA10C - 2 @ case 7
	.2byte _021DA174 - _021DA10C - 2 @ case 8
	.2byte _021DA180 - _021DA10C - 2 @ case 9
_021DA120:
	ldr r1, [r0, #0x44]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x44]
	bx lr
_021DA12C:
	ldr r1, [r0, #0x48]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x48]
	bx lr
_021DA138:
	ldr r1, [r0, #0x4c]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x4c]
	bx lr
_021DA144:
	ldr r1, [r0, #0x50]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x50]
	bx lr
_021DA150:
	ldr r1, [r0, #0x54]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x54]
	bx lr
_021DA15C:
	ldr r1, [r0, #0x58]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x58]
	bx lr
_021DA168:
	ldr r1, [r0, #0x5c]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x5c]
	bx lr
_021DA174:
	ldr r1, [r0, #0x60]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x60]
	bx lr
_021DA180:
	ldr r1, [r0, #0x64]
	cmp r1, #2
	beq _021DA18A
	movs r1, #1
	str r1, [r0, #0x64]
_021DA18A:
	bx lr
	thumb_func_end ov21_021DA0FC

	thumb_func_start ov21_021DA18C
ov21_021DA18C: @ 0x021DA18C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r2, #4]
	lsls r0, r5, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021DA1BE
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _021DA1C4
	ldr r0, [r4, #0x18]
	movs r1, #4
	adds r2, r5, #6
	bl ov21_021D4F20
	adds r0, r4, #0
	adds r0, #0x84
	str r5, [r0]
	movs r0, #1
	adds r4, #0x90
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021DA1BE:
	movs r0, #0
	adds r4, #0x90
	str r0, [r4]
_021DA1C4:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DA18C

	thumb_func_start ov21_021DA1C8
ov21_021DA1C8: @ 0x021DA1C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x28
	str r2, [sp, #0xc]
	bl FUN_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x10
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021DA1E8:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	adds r0, #0x10
	movs r4, #0
	movs r5, #0x30
	subs r7, #0x10
	str r0, [sp, #0x18]
_021DA1F8:
	adds r0, r5, #0
	adds r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r5, #0
	ldr r1, [r0, #0xc]
	adds r0, r4, r6
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	subs r3, #0x28
	bl ov21_021D154C
	adds r4, r4, #1
	adds r5, #0x50
	cmp r4, #2
	blt _021DA1F8
	ldr r0, [sp, #0x10]
	adds r6, r6, #2
	adds r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _021DA1E8
	movs r0, #0xa8
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r1, #0x80
	ldr r0, [r0, #0xc]
	movs r2, #0xa0
	adds r0, #0x20
	movs r3, #0x58
	bl ov21_021D154C
	movs r0, #0x28
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r1, #0xa0
	ldr r0, [r0, #0xc]
	movs r2, #0xc0
	adds r0, #0x24
	movs r3, #8
	bl ov21_021D154C
	ldr r3, [sp, #4]
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r2, _021DA27C @ =ov21_021DA2C0
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	movs r1, #0xa
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, #0x10
	ldr r0, [r0, #0xc]
	bl FUN_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DA27C: .4byte ov21_021DA2C0
	thumb_func_end ov21_021DA1C8

	thumb_func_start ov21_021DA280
ov21_021DA280: @ 0x021DA280
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #0
	adds r2, r5, #0
	movs r0, #3
_021DA28C:
	adds r1, r1, #1
	str r0, [r2, #0x44]
	adds r2, r2, #4
	cmp r1, #0xa
	blt _021DA28C
	ldr r0, [r5, #8]
	bl FUN_0202404C
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov21_021D8698
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov21_021DA308
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov21_021D8698
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov21_021DA308
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DA280

	thumb_func_start ov21_021DA2C0
ov21_021DA2C0: @ 0x021DA2C0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r2, #4]
	lsls r0, r5, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021DA300
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _021DA306
	cmp r5, #8
	ldr r0, [r4, #0x18]
	bne _021DA2EA
	movs r1, #4
	adds r2, r5, #7
	bl ov21_021D4F20
	b _021DA2F2
_021DA2EA:
	movs r1, #4
	adds r2, r5, #6
	bl ov21_021D4F20
_021DA2F2:
	adds r0, r4, #0
	adds r0, #0x84
	str r5, [r0]
	movs r0, #1
	adds r4, #0x90
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021DA300:
	movs r0, #0
	adds r4, #0x90
	str r0, [r4]
_021DA306:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DA2C0

	thumb_func_start ov21_021DA308
ov21_021DA308: @ 0x021DA308
	subs r1, #0xa
	cmp r1, #7
	bhi _021DA388
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021DA31A: @ jump table
	.2byte _021DA32A - _021DA31A - 2 @ case 0
	.2byte _021DA336 - _021DA31A - 2 @ case 1
	.2byte _021DA342 - _021DA31A - 2 @ case 2
	.2byte _021DA34E - _021DA31A - 2 @ case 3
	.2byte _021DA35A - _021DA31A - 2 @ case 4
	.2byte _021DA366 - _021DA31A - 2 @ case 5
	.2byte _021DA372 - _021DA31A - 2 @ case 6
	.2byte _021DA37E - _021DA31A - 2 @ case 7
_021DA32A:
	ldr r1, [r0, #0x44]
	cmp r1, #2
	beq _021DA388
	movs r1, #1
	str r1, [r0, #0x44]
	bx lr
_021DA336:
	ldr r1, [r0, #0x48]
	cmp r1, #2
	beq _021DA388
	movs r1, #1
	str r1, [r0, #0x48]
	bx lr
_021DA342:
	ldr r1, [r0, #0x4c]
	cmp r1, #2
	beq _021DA388
	movs r1, #1
	str r1, [r0, #0x4c]
	bx lr
_021DA34E:
	ldr r1, [r0, #0x50]
	cmp r1, #2
	beq _021DA388
	movs r1, #1
	str r1, [r0, #0x50]
	bx lr
_021DA35A:
	ldr r1, [r0, #0x54]
	cmp r1, #2
	beq _021DA388
	movs r1, #1
	str r1, [r0, #0x54]
	bx lr
_021DA366:
	ldr r1, [r0, #0x58]
	cmp r1, #2
	beq _021DA388
	movs r1, #1
	str r1, [r0, #0x58]
	bx lr
_021DA372:
	ldr r1, [r0, #0x5c]
	cmp r1, #2
	beq _021DA388
	movs r1, #1
	str r1, [r0, #0x5c]
	bx lr
_021DA37E:
	ldr r1, [r0, #0x60]
	cmp r1, #2
	beq _021DA388
	movs r1, #1
	str r1, [r0, #0x60]
_021DA388:
	bx lr
	.align 2, 0
	thumb_func_end ov21_021DA308

	thumb_func_start ov21_021DA38C
ov21_021DA38C: @ 0x021DA38C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r2, #0
	movs r1, #0x3c
	str r2, [sp, #0xc]
	bl FUN_02018144
	ldr r1, [sp, #4]
	str r0, [r1, #0xc]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x10
	ldr r6, [sp, #0x14]
	str r0, [sp, #0x10]
_021DA3AC:
	ldr r0, [sp, #0x10]
	ldr r7, [sp, #0x10]
	str r0, [sp, #0x18]
	adds r0, #0x10
	movs r4, #0
	movs r5, #0x1c
	subs r7, #0x10
	str r0, [sp, #0x18]
_021DA3BC:
	adds r0, r5, #0
	adds r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r3, r5, #0
	ldr r1, [r0, #0xc]
	adds r0, r4, r6
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	subs r3, #0x18
	bl ov21_021D154C
	adds r4, r4, #1
	adds r5, #0x38
	cmp r4, #3
	blt _021DA3BC
	ldr r0, [sp, #0x10]
	adds r6, r6, #3
	adds r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _021DA3AC
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	ldr r3, [sp, #4]
	str r1, [r0, #0x10]
	str r0, [r0, #0x14]
	ldr r0, [sp, #0xc]
	ldr r2, _021DA418 @ =ov21_021DA514
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r1, #0xf
	ldr r0, [r0, #0xc]
	adds r3, #0x10
	bl FUN_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DA418: .4byte ov21_021DA514
	thumb_func_end ov21_021DA38C

	thumb_func_start ov21_021DA41C
ov21_021DA41C: @ 0x021DA41C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	adds r2, r4, #0
	movs r0, #3
_021DA428:
	adds r1, r1, #1
	str r0, [r2, #0x44]
	adds r2, r2, #4
	cmp r1, #0xf
	blt _021DA428
	ldr r0, [r4, #8]
	bl FUN_0202404C
	ldr r0, [r5, #8]
	bl ov21_021D86BC
	cmp r0, #0xe
	bhi _021DA512
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DA44E: @ jump table
	.2byte _021DA512 - _021DA44E - 2 @ case 0
	.2byte _021DA46C - _021DA44E - 2 @ case 1
	.2byte _021DA478 - _021DA44E - 2 @ case 2
	.2byte _021DA484 - _021DA44E - 2 @ case 3
	.2byte _021DA490 - _021DA44E - 2 @ case 4
	.2byte _021DA49C - _021DA44E - 2 @ case 5
	.2byte _021DA4A8 - _021DA44E - 2 @ case 6
	.2byte _021DA4B4 - _021DA44E - 2 @ case 7
	.2byte _021DA4C0 - _021DA44E - 2 @ case 8
	.2byte _021DA4CC - _021DA44E - 2 @ case 9
	.2byte _021DA4D8 - _021DA44E - 2 @ case 10
	.2byte _021DA4E4 - _021DA44E - 2 @ case 11
	.2byte _021DA4F0 - _021DA44E - 2 @ case 12
	.2byte _021DA4FC - _021DA44E - 2 @ case 13
	.2byte _021DA508 - _021DA44E - 2 @ case 14
_021DA46C:
	ldr r0, [r4, #0x60]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x60]
	pop {r3, r4, r5, pc}
_021DA478:
	ldr r0, [r4, #0x70]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x70]
	pop {r3, r4, r5, pc}
_021DA484:
	ldr r0, [r4, #0x58]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x58]
	pop {r3, r4, r5, pc}
_021DA490:
	ldr r0, [r4, #0x48]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x48]
	pop {r3, r4, r5, pc}
_021DA49C:
	ldr r0, [r4, #0x74]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x74]
	pop {r3, r4, r5, pc}
_021DA4A8:
	ldr r0, [r4, #0x64]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x64]
	pop {r3, r4, r5, pc}
_021DA4B4:
	ldr r0, [r4, #0x78]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x78]
	pop {r3, r4, r5, pc}
_021DA4C0:
	ldr r0, [r4, #0x54]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x54]
	pop {r3, r4, r5, pc}
_021DA4CC:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x50]
	pop {r3, r4, r5, pc}
_021DA4D8:
	ldr r0, [r4, #0x5c]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x5c]
	pop {r3, r4, r5, pc}
_021DA4E4:
	ldr r0, [r4, #0x68]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x68]
	pop {r3, r4, r5, pc}
_021DA4F0:
	ldr r0, [r4, #0x4c]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x4c]
	pop {r3, r4, r5, pc}
_021DA4FC:
	ldr r0, [r4, #0x44]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x44]
	pop {r3, r4, r5, pc}
_021DA508:
	ldr r0, [r4, #0x6c]
	cmp r0, #2
	beq _021DA512
	movs r0, #1
	str r0, [r4, #0x6c]
_021DA512:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DA41C

	thumb_func_start ov21_021DA514
ov21_021DA514: @ 0x021DA514
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r2, #4]
	lsls r0, r5, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	cmp r1, #2
	bne _021DA532
	ldr r0, [r4, #0x18]
	movs r1, #4
	adds r2, r5, #6
	bl ov21_021D4F20
	adds r4, #0x84
	str r5, [r4]
_021DA532:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DA514

	thumb_func_start ov21_021DA534
ov21_021DA534: @ 0x021DA534
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r6, r0, #0
	cmp r4, #5
	bhi _021DA592
	adds r5, r4, r4
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_021DA54C: @ jump table
	.2byte _021DA558 - _021DA54C - 2 @ case 0
	.2byte _021DA562 - _021DA54C - 2 @ case 1
	.2byte _021DA56C - _021DA54C - 2 @ case 2
	.2byte _021DA576 - _021DA54C - 2 @ case 3
	.2byte _021DA580 - _021DA54C - 2 @ case 4
	.2byte _021DA58A - _021DA54C - 2 @ case 5
_021DA558:
	movs r2, #0x10
	movs r1, #0xd4
	movs r3, #0x1c
	adds r0, r2, #0
	b _021DA592
_021DA562:
	movs r1, #0xe0
	movs r2, #0x30
	movs r3, #0x2c
	movs r0, #0x10
	b _021DA592
_021DA56C:
	movs r1, #0xe0
	movs r2, #0x50
	movs r3, #0x2c
	movs r0, #0x10
	b _021DA592
_021DA576:
	movs r1, #0xe0
	movs r2, #0x70
	movs r3, #0x2c
	movs r0, #0x10
	b _021DA592
_021DA580:
	movs r1, #0xe0
	movs r2, #0x90
	movs r3, #0x2c
	movs r0, #0x10
	b _021DA592
_021DA58A:
	movs r1, #0xd4
	movs r2, #0xb0
	movs r3, #0x3c
	movs r0, #0x10
_021DA592:
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	str r4, [sp, #0xc]
	bl ov21_021D4FE4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DA534

	thumb_func_start ov21_021DA5A8
ov21_021DA5A8: @ 0x021DA5A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021DA6AC @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #1
	tst r0, r1
	beq _021DA67E
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _021DA68C
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #5
	bhi _021DA66E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DA5D6: @ jump table
	.2byte _021DA658 - _021DA5D6 - 2 @ case 0
	.2byte _021DA5E2 - _021DA5D6 - 2 @ case 1
	.2byte _021DA5FA - _021DA5D6 - 2 @ case 2
	.2byte _021DA610 - _021DA5D6 - 2 @ case 3
	.2byte _021DA628 - _021DA5D6 - 2 @ case 4
	.2byte _021DA640 - _021DA5D6 - 2 @ case 5
_021DA5E2:
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA5FA:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA610:
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA628:
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA640:
	adds r0, r4, #0
	movs r1, #5
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x2c]
	b _021DA66E
_021DA658:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x2c]
_021DA66E:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x94
	str r1, [r0]
	b _021DA68C
_021DA67E:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x94
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x8c
	str r1, [r0]
_021DA68C:
	ldr r0, _021DA6AC @ =0x021BF67C
	movs r1, #2
	ldr r0, [r0, #0x48]
	tst r0, r1
	beq _021DA6AA
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0x80
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x2c]
_021DA6AA:
	pop {r4, pc}
	.align 2, 0
_021DA6AC: .4byte 0x021BF67C
	thumb_func_end ov21_021DA5A8

	thumb_func_start ov21_021DA6B0
ov21_021DA6B0: @ 0x021DA6B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x7e
	lsls r1, r1, #2
	bl FUN_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	movs r0, #0
	str r0, [sp, #0x20]
	movs r0, #0x10
	str r0, [sp, #0x1c]
	movs r0, #6
	ldr r7, [sp, #0x20]
	str r0, [sp, #0x18]
_021DA6D4:
	movs r4, #0
	movs r6, #0x30
_021DA6D8:
	ldr r0, [sp, #0x18]
	adds r1, r4, r0
	ldr r0, [sp, #0x20]
	cmp r0, #5
	bhi _021DA740
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DA6EE: @ jump table
	.2byte _021DA6FA - _021DA6EE - 2 @ case 0
	.2byte _021DA706 - _021DA6EE - 2 @ case 1
	.2byte _021DA712 - _021DA6EE - 2 @ case 2
	.2byte _021DA71E - _021DA6EE - 2 @ case 3
	.2byte _021DA72A - _021DA6EE - 2 @ case 4
	.2byte _021DA736 - _021DA6EE - 2 @ case 5
_021DA6FA:
	cmp r4, #2
	bne _021DA702
	movs r1, #0
	b _021DA740
_021DA702:
	movs r5, #1
	b _021DA740
_021DA706:
	cmp r4, #2
	bne _021DA70E
	movs r1, #1
	b _021DA740
_021DA70E:
	movs r5, #0
	b _021DA740
_021DA712:
	cmp r4, #2
	bne _021DA71A
	movs r1, #2
	b _021DA740
_021DA71A:
	movs r5, #0
	b _021DA740
_021DA71E:
	cmp r4, #2
	bne _021DA726
	movs r1, #3
	b _021DA740
_021DA726:
	movs r5, #0
	b _021DA740
_021DA72A:
	cmp r4, #2
	bne _021DA732
	movs r1, #4
	b _021DA740
_021DA732:
	movs r5, #1
	b _021DA740
_021DA736:
	cmp r4, #2
	bne _021DA73E
	movs r1, #5
	b _021DA740
_021DA73E:
	movs r5, #1
_021DA740:
	cmp r4, #2
	bge _021DA766
	movs r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r2, r4, r7
	movs r1, #0x1c
	muls r1, r2, r1
	ldr r0, [r0, #0x1c]
	ldr r2, [sp, #0x1c]
	adds r0, r0, r1
	adds r1, r6, #0
	movs r3, #0x3c
	bl ov21_021D4FE4
	b _021DA776
_021DA766:
	ldr r0, [sp, #0x10]
	adds r2, r4, r7
	ldr r3, [r0, #0x1c]
	movs r0, #0x1c
	muls r0, r2, r0
	adds r0, r3, r0
	bl ov21_021DA534
_021DA776:
	adds r4, r4, #1
	adds r6, #0x50
	cmp r4, #3
	blt _021DA6D8
	ldr r0, [sp, #0x1c]
	adds r7, r7, #3
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	blt _021DA6D4
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	movs r2, #3
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	movs r3, #6
	bl ov21_021D4F04
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DA6B0

	thumb_func_start ov21_021DA7B0
ov21_021DA7B0: @ 0x021DA7B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021DA884 @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #1
	tst r0, r1
	beq _021DA87A
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _021DA880
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	subs r0, #8
	cmp r0, #5
	bhi _021DA880
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DA7E0: @ jump table
	.2byte _021DA7EC - _021DA7E0 - 2 @ case 0
	.2byte _021DA804 - _021DA7E0 - 2 @ case 1
	.2byte _021DA81C - _021DA7E0 - 2 @ case 2
	.2byte _021DA832 - _021DA7E0 - 2 @ case 3
	.2byte _021DA84A - _021DA7E0 - 2 @ case 4
	.2byte _021DA862 - _021DA7E0 - 2 @ case 5
_021DA7EC:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA804:
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA81C:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA832:
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA84A:
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA862:
	adds r0, r4, #0
	movs r1, #5
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA87A:
	movs r0, #0
	adds r4, #0x8c
	str r0, [r4]
_021DA880:
	pop {r4, pc}
	nop
_021DA884: .4byte 0x021BF67C
	thumb_func_end ov21_021DA7B0

	thumb_func_start ov21_021DA888
ov21_021DA888: @ 0x021DA888
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x7e
	lsls r1, r1, #2
	bl FUN_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	movs r0, #0
	str r0, [sp, #0x20]
	movs r0, #0x10
	str r0, [sp, #0x1c]
	movs r0, #6
	ldr r7, [sp, #0x20]
	str r0, [sp, #0x18]
_021DA8AC:
	movs r4, #0
	movs r6, #0x30
_021DA8B0:
	ldr r0, [sp, #0x18]
	adds r1, r4, r0
	ldr r0, [sp, #0x20]
	cmp r0, #5
	bhi _021DA918
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DA8C6: @ jump table
	.2byte _021DA8D2 - _021DA8C6 - 2 @ case 0
	.2byte _021DA8DE - _021DA8C6 - 2 @ case 1
	.2byte _021DA8EA - _021DA8C6 - 2 @ case 2
	.2byte _021DA8F6 - _021DA8C6 - 2 @ case 3
	.2byte _021DA902 - _021DA8C6 - 2 @ case 4
	.2byte _021DA90E - _021DA8C6 - 2 @ case 5
_021DA8D2:
	cmp r4, #2
	bne _021DA8DA
	movs r1, #0
	b _021DA918
_021DA8DA:
	movs r5, #0
	b _021DA918
_021DA8DE:
	cmp r4, #2
	bne _021DA8E6
	movs r1, #1
	b _021DA918
_021DA8E6:
	movs r5, #0
	b _021DA918
_021DA8EA:
	cmp r4, #2
	bne _021DA8F2
	movs r1, #2
	b _021DA918
_021DA8F2:
	movs r5, #0
	b _021DA918
_021DA8F6:
	cmp r4, #2
	bne _021DA8FE
	movs r1, #3
	b _021DA918
_021DA8FE:
	movs r5, #0
	b _021DA918
_021DA902:
	cmp r4, #2
	bne _021DA90A
	movs r1, #4
	b _021DA918
_021DA90A:
	movs r5, #0
	b _021DA918
_021DA90E:
	cmp r4, #2
	bne _021DA916
	movs r1, #5
	b _021DA918
_021DA916:
	movs r5, #1
_021DA918:
	cmp r4, #2
	bge _021DA93E
	movs r0, #0x10
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r2, r4, r7
	movs r1, #0x1c
	muls r1, r2, r1
	ldr r0, [r0, #0x1c]
	ldr r2, [sp, #0x1c]
	adds r0, r0, r1
	adds r1, r6, #0
	movs r3, #0x3c
	bl ov21_021D4FE4
	b _021DA94E
_021DA93E:
	ldr r0, [sp, #0x10]
	adds r2, r4, r7
	ldr r3, [r0, #0x1c]
	movs r0, #0x1c
	muls r0, r2, r0
	adds r0, r3, r0
	bl ov21_021DA534
_021DA94E:
	adds r4, r4, #1
	adds r6, #0x50
	cmp r4, #3
	blt _021DA8B0
	ldr r0, [sp, #0x1c]
	adds r7, r7, #3
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	blt _021DA8AC
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	movs r2, #3
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	movs r3, #6
	bl ov21_021D4F04
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DA888

	thumb_func_start ov21_021DA988
ov21_021DA988: @ 0x021DA988
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021DAAD0 @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #1
	tst r0, r1
	bne _021DA998
	b _021DAAC8
_021DA998:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _021DA9AC
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #0xf
	bls _021DA9AE
_021DA9AC:
	b _021DAACE
_021DA9AE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DA9BA: @ jump table
	.2byte _021DAACE - _021DA9BA - 2 @ case 0
	.2byte _021DAACE - _021DA9BA - 2 @ case 1
	.2byte _021DAACE - _021DA9BA - 2 @ case 2
	.2byte _021DAACE - _021DA9BA - 2 @ case 3
	.2byte _021DAACE - _021DA9BA - 2 @ case 4
	.2byte _021DAACE - _021DA9BA - 2 @ case 5
	.2byte _021DA9DA - _021DA9BA - 2 @ case 6
	.2byte _021DA9F2 - _021DA9BA - 2 @ case 7
	.2byte _021DAA0A - _021DA9BA - 2 @ case 8
	.2byte _021DAA20 - _021DA9BA - 2 @ case 9
	.2byte _021DAA38 - _021DA9BA - 2 @ case 10
	.2byte _021DAA50 - _021DA9BA - 2 @ case 11
	.2byte _021DAA68 - _021DA9BA - 2 @ case 12
	.2byte _021DAA80 - _021DA9BA - 2 @ case 13
	.2byte _021DAA98 - _021DA9BA - 2 @ case 14
	.2byte _021DAAB0 - _021DA9BA - 2 @ case 15
_021DA9DA:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DA9F2:
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA0A:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA20:
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA38:
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA50:
	adds r0, r4, #0
	movs r1, #5
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA68:
	adds r0, r4, #0
	movs r1, #6
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA80:
	adds r0, r4, #0
	movs r1, #7
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAA98:
	adds r0, r4, #0
	movs r1, #8
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAAB0:
	adds r0, r4, #0
	movs r1, #9
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAAC8:
	movs r0, #0
	adds r4, #0x8c
	str r0, [r4]
_021DAACE:
	pop {r4, pc}
	.align 2, 0
_021DAAD0: .4byte 0x021BF67C
	thumb_func_end ov21_021DA988

	thumb_func_start ov21_021DAAD4
ov21_021DAAD4: @ 0x021DAAD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x7e
	lsls r1, r1, #2
	bl FUN_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	movs r0, #0
	str r0, [sp, #0x28]
	movs r0, #0x10
	str r0, [sp, #0x24]
	movs r0, #6
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x1c]
_021DAAFA:
	movs r0, #0x30
	movs r4, #0
	str r0, [sp, #0x18]
_021DAB00:
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x18]
	adds r1, r4, r0
	ldr r0, [sp, #0x28]
	cmp r0, #5
	bhi _021DAB90
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DAB18: @ jump table
	.2byte _021DAB24 - _021DAB18 - 2 @ case 0
	.2byte _021DAB34 - _021DAB18 - 2 @ case 1
	.2byte _021DAB44 - _021DAB18 - 2 @ case 2
	.2byte _021DAB54 - _021DAB18 - 2 @ case 3
	.2byte _021DAB64 - _021DAB18 - 2 @ case 4
	.2byte _021DAB74 - _021DAB18 - 2 @ case 5
_021DAB24:
	cmp r4, #2
	bne _021DAB2C
	movs r1, #0
	b _021DAB90
_021DAB2C:
	movs r5, #0
	movs r7, #0x3c
	movs r6, #0x10
	b _021DAB90
_021DAB34:
	cmp r4, #2
	bne _021DAB3C
	movs r1, #1
	b _021DAB90
_021DAB3C:
	movs r5, #0
	movs r7, #0x3c
	movs r6, #0x10
	b _021DAB90
_021DAB44:
	cmp r4, #2
	bne _021DAB4C
	movs r1, #2
	b _021DAB90
_021DAB4C:
	movs r5, #0
	movs r7, #0x3c
	movs r6, #0x10
	b _021DAB90
_021DAB54:
	cmp r4, #2
	bne _021DAB5C
	movs r1, #3
	b _021DAB90
_021DAB5C:
	movs r5, #0
	movs r7, #0x3c
	movs r6, #0x10
	b _021DAB90
_021DAB64:
	cmp r4, #2
	bne _021DAB6C
	movs r1, #4
	b _021DAB90
_021DAB6C:
	movs r5, #0
	movs r7, #0x3c
	movs r6, #0x10
	b _021DAB90
_021DAB74:
	cmp r4, #2
	bne _021DAB7C
	movs r1, #5
	b _021DAB90
_021DAB7C:
	cmp r4, #0
	bne _021DAB8A
	movs r7, #0x10
	movs r5, #0
	adds r6, r7, #0
	movs r3, #0x18
	b _021DAB90
_021DAB8A:
	movs r5, #1
	movs r7, #0x3c
	movs r6, #0x10
_021DAB90:
	cmp r4, #2
	bge _021DABB6
	str r6, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	ldr r2, [r0, #0x1c]
	ldr r0, [sp, #0x1c]
	adds r1, r4, r0
	movs r0, #0x1c
	muls r0, r1, r0
	adds r0, r2, r0
	adds r1, r3, #0
	ldr r2, [sp, #0x24]
	adds r3, r7, #0
	bl ov21_021D4FE4
	b _021DABC8
_021DABB6:
	ldr r0, [sp, #0x10]
	ldr r3, [r0, #0x1c]
	ldr r0, [sp, #0x1c]
	adds r2, r4, r0
	movs r0, #0x1c
	muls r0, r2, r0
	adds r0, r3, r0
	bl ov21_021DA534
_021DABC8:
	ldr r0, [sp, #0x18]
	adds r4, r4, #1
	adds r0, #0x50
	str r0, [sp, #0x18]
	cmp r4, #3
	blt _021DAB00
	ldr r0, [sp, #0x24]
	adds r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #3
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #6
	blt _021DAAFA
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	movs r2, #3
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	movs r3, #6
	bl ov21_021D4F04
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DAAD4

	thumb_func_start ov21_021DAC08
ov21_021DAC08: @ 0x021DAC08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021DAD70 @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #1
	tst r0, r1
	bne _021DAC18
	b _021DAD68
_021DAC18:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _021DAC2C
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #0x10
	bls _021DAC2E
_021DAC2C:
	b _021DAD6E
_021DAC2E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DAC3A: @ jump table
	.2byte _021DAD6E - _021DAC3A - 2 @ case 0
	.2byte _021DAD6E - _021DAC3A - 2 @ case 1
	.2byte _021DAD6E - _021DAC3A - 2 @ case 2
	.2byte _021DAD6E - _021DAC3A - 2 @ case 3
	.2byte _021DAD6E - _021DAC3A - 2 @ case 4
	.2byte _021DAD6E - _021DAC3A - 2 @ case 5
	.2byte _021DAC5C - _021DAC3A - 2 @ case 6
	.2byte _021DAC74 - _021DAC3A - 2 @ case 7
	.2byte _021DAC8C - _021DAC3A - 2 @ case 8
	.2byte _021DACA2 - _021DAC3A - 2 @ case 9
	.2byte _021DACBA - _021DAC3A - 2 @ case 10
	.2byte _021DACD2 - _021DAC3A - 2 @ case 11
	.2byte _021DACEA - _021DAC3A - 2 @ case 12
	.2byte _021DAD02 - _021DAC3A - 2 @ case 13
	.2byte _021DAD1A - _021DAC3A - 2 @ case 14
	.2byte _021DAD32 - _021DAC3A - 2 @ case 15
	.2byte _021DAD50 - _021DAC3A - 2 @ case 16
_021DAC5C:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAC74:
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAC8C:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DACA2:
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DACBA:
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DACD2:
	adds r0, r4, #0
	movs r1, #5
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DACEA:
	adds r0, r4, #0
	movs r1, #6
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAD02:
	adds r0, r4, #0
	movs r1, #7
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAD1A:
	adds r0, r4, #0
	movs r1, #8
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAD32:
	adds r0, r4, #0
	movs r1, #9
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	movs r0, #1
	adds r4, #0x8c
	str r0, [r4]
	pop {r4, pc}
_021DAD50:
	adds r0, r4, #0
	movs r1, #0xa
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAD68:
	movs r0, #0
	adds r4, #0x8c
	str r0, [r4]
_021DAD6E:
	pop {r4, pc}
	.align 2, 0
_021DAD70: .4byte 0x021BF67C
	thumb_func_end ov21_021DAC08

	thumb_func_start ov21_021DAD74
ov21_021DAD74: @ 0x021DAD74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x7e
	lsls r1, r1, #2
	bl FUN_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	movs r0, #0
	str r0, [sp, #0x2c]
	movs r0, #0x10
	str r0, [sp, #0x24]
	movs r0, #6
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x1c]
_021DAD9A:
	movs r0, #0x30
	movs r4, #0
	str r0, [sp, #0x18]
_021DADA0:
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x18]
	adds r1, r4, r0
	ldr r0, [sp, #0x2c]
	cmp r0, #5
	bhi _021DAE5C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DADB8: @ jump table
	.2byte _021DADC4 - _021DADB8 - 2 @ case 0
	.2byte _021DADD8 - _021DADB8 - 2 @ case 1
	.2byte _021DADEC - _021DADB8 - 2 @ case 2
	.2byte _021DAE00 - _021DADB8 - 2 @ case 3
	.2byte _021DAE14 - _021DADB8 - 2 @ case 4
	.2byte _021DAE38 - _021DADB8 - 2 @ case 5
_021DADC4:
	cmp r4, #2
	bne _021DADCC
	movs r1, #0
	b _021DAE5C
_021DADCC:
	movs r6, #0
	movs r0, #0x3c
	adds r5, r6, #0
	str r0, [sp, #0x28]
	movs r7, #0x10
	b _021DAE5C
_021DADD8:
	cmp r4, #2
	bne _021DADE0
	movs r1, #1
	b _021DAE5C
_021DADE0:
	movs r6, #0
	movs r0, #0x3c
	adds r5, r6, #0
	str r0, [sp, #0x28]
	movs r7, #0x10
	b _021DAE5C
_021DADEC:
	cmp r4, #2
	bne _021DADF4
	movs r1, #2
	b _021DAE5C
_021DADF4:
	movs r6, #0
	movs r0, #0x3c
	adds r5, r6, #0
	str r0, [sp, #0x28]
	movs r7, #0x10
	b _021DAE5C
_021DAE00:
	cmp r4, #2
	bne _021DAE08
	movs r1, #3
	b _021DAE5C
_021DAE08:
	movs r6, #0
	movs r0, #0x3c
	adds r5, r6, #0
	str r0, [sp, #0x28]
	movs r7, #0x10
	b _021DAE5C
_021DAE14:
	cmp r4, #2
	bne _021DAE1C
	movs r1, #4
	b _021DAE5C
_021DAE1C:
	cmp r4, #0
	bne _021DAE2C
	movs r0, #0x3c
	movs r6, #1
	movs r5, #2
	str r0, [sp, #0x28]
	movs r7, #0x10
	b _021DAE5C
_021DAE2C:
	movs r6, #0
	movs r0, #0x3c
	adds r5, r6, #0
	str r0, [sp, #0x28]
	movs r7, #0x10
	b _021DAE5C
_021DAE38:
	cmp r4, #2
	bne _021DAE40
	movs r1, #5
	b _021DAE5C
_021DAE40:
	cmp r4, #0
	bne _021DAE52
	movs r0, #0x10
	movs r6, #0
	adds r5, r6, #0
	str r0, [sp, #0x28]
	adds r7, r0, #0
	movs r3, #0x18
	b _021DAE5C
_021DAE52:
	movs r6, #1
	movs r0, #0x3c
	adds r5, r6, #0
	str r0, [sp, #0x28]
	movs r7, #0x10
_021DAE5C:
	cmp r4, #2
	bge _021DAE82
	str r7, [sp]
	str r6, [sp, #4]
	str r5, [sp, #8]
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	ldr r2, [r0, #0x1c]
	ldr r0, [sp, #0x1c]
	adds r1, r4, r0
	movs r0, #0x1c
	muls r0, r1, r0
	adds r0, r2, r0
	adds r1, r3, #0
	ldr r2, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl ov21_021D4FE4
	b _021DAE94
_021DAE82:
	ldr r0, [sp, #0x10]
	ldr r3, [r0, #0x1c]
	ldr r0, [sp, #0x1c]
	adds r2, r4, r0
	movs r0, #0x1c
	muls r0, r2, r0
	adds r0, r3, r0
	bl ov21_021DA534
_021DAE94:
	ldr r0, [sp, #0x18]
	adds r4, r4, #1
	adds r0, #0x50
	str r0, [sp, #0x18]
	cmp r4, #3
	bge _021DAEA2
	b _021DADA0
_021DAEA2:
	ldr r0, [sp, #0x24]
	adds r0, #0x20
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #3
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	adds r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #6
	bge _021DAEC0
	b _021DAD9A
_021DAEC0:
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	movs r2, #3
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	movs r3, #6
	bl ov21_021D4F04
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DAD74

	thumb_func_start ov21_021DAED8
ov21_021DAED8: @ 0x021DAED8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021DB028 @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #1
	tst r0, r1
	bne _021DAEE8
	b _021DB020
_021DAEE8:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _021DAEFC
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #0x10
	bls _021DAEFE
_021DAEFC:
	b _021DB026
_021DAEFE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DAF0A: @ jump table
	.2byte _021DB026 - _021DAF0A - 2 @ case 0
	.2byte _021DB026 - _021DAF0A - 2 @ case 1
	.2byte _021DB026 - _021DAF0A - 2 @ case 2
	.2byte _021DB026 - _021DAF0A - 2 @ case 3
	.2byte _021DB026 - _021DAF0A - 2 @ case 4
	.2byte _021DB026 - _021DAF0A - 2 @ case 5
	.2byte _021DAF2C - _021DAF0A - 2 @ case 6
	.2byte _021DAF44 - _021DAF0A - 2 @ case 7
	.2byte _021DAF5C - _021DAF0A - 2 @ case 8
	.2byte _021DAF72 - _021DAF0A - 2 @ case 9
	.2byte _021DAF8A - _021DAF0A - 2 @ case 10
	.2byte _021DAFA2 - _021DAF0A - 2 @ case 11
	.2byte _021DAFBA - _021DAF0A - 2 @ case 12
	.2byte _021DAFD2 - _021DAF0A - 2 @ case 13
	.2byte _021DB026 - _021DAF0A - 2 @ case 14
	.2byte _021DAFEA - _021DAF0A - 2 @ case 15
	.2byte _021DB008 - _021DAF0A - 2 @ case 16
_021DAF2C:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAF44:
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAF5C:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAF72:
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAF8A:
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAFA2:
	adds r0, r4, #0
	movs r1, #5
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAFBA:
	adds r0, r4, #0
	movs r1, #6
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAFD2:
	adds r0, r4, #0
	movs r1, #7
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DAFEA:
	adds r0, r4, #0
	movs r1, #8
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	movs r0, #1
	adds r4, #0x8c
	str r0, [r4]
	pop {r4, pc}
_021DB008:
	adds r0, r4, #0
	movs r1, #9
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB020:
	movs r0, #0
	adds r4, #0x8c
	str r0, [r4]
_021DB026:
	pop {r4, pc}
	.align 2, 0
_021DB028: .4byte 0x021BF67C
	thumb_func_end ov21_021DAED8

	thumb_func_start ov21_021DB02C
ov21_021DB02C: @ 0x021DB02C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #0x2a
	lsls r1, r1, #4
	bl FUN_02018144
	ldr r1, [sp, #0x10]
	str r0, [r1, #0x1c]
	movs r0, #0
	str r0, [sp, #0x20]
	movs r0, #0x10
	str r0, [sp, #0x1c]
	movs r0, #6
	ldr r7, [sp, #0x20]
	str r0, [sp, #0x18]
_021DB050:
	movs r4, #0
	movs r6, #0x1c
_021DB054:
	ldr r0, [sp, #0x18]
	adds r1, r4, r0
	ldr r0, [sp, #0x20]
	cmp r0, #5
	bhi _021DB0BC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DB06A: @ jump table
	.2byte _021DB076 - _021DB06A - 2 @ case 0
	.2byte _021DB082 - _021DB06A - 2 @ case 1
	.2byte _021DB08E - _021DB06A - 2 @ case 2
	.2byte _021DB09A - _021DB06A - 2 @ case 3
	.2byte _021DB0A6 - _021DB06A - 2 @ case 4
	.2byte _021DB0B2 - _021DB06A - 2 @ case 5
_021DB076:
	cmp r4, #3
	bne _021DB07E
	movs r1, #0
	b _021DB0BC
_021DB07E:
	movs r5, #0
	b _021DB0BC
_021DB082:
	cmp r4, #3
	bne _021DB08A
	movs r1, #1
	b _021DB0BC
_021DB08A:
	movs r5, #0
	b _021DB0BC
_021DB08E:
	cmp r4, #3
	bne _021DB096
	movs r1, #2
	b _021DB0BC
_021DB096:
	movs r5, #0
	b _021DB0BC
_021DB09A:
	cmp r4, #3
	bne _021DB0A2
	movs r1, #3
	b _021DB0BC
_021DB0A2:
	movs r5, #0
	b _021DB0BC
_021DB0A6:
	cmp r4, #3
	bne _021DB0AE
	movs r1, #4
	b _021DB0BC
_021DB0AE:
	movs r5, #0
	b _021DB0BC
_021DB0B2:
	cmp r4, #3
	bne _021DB0BA
	movs r1, #5
	b _021DB0BC
_021DB0BA:
	movs r5, #1
_021DB0BC:
	cmp r4, #3
	bge _021DB0E2
	movs r0, #0x14
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r2, r4, r7
	movs r1, #0x1c
	muls r1, r2, r1
	ldr r0, [r0, #0x1c]
	ldr r2, [sp, #0x1c]
	adds r0, r0, r1
	adds r1, r6, #0
	movs r3, #0x20
	bl ov21_021D4FE4
	b _021DB0F2
_021DB0E2:
	ldr r0, [sp, #0x10]
	adds r2, r4, r7
	ldr r3, [r0, #0x1c]
	movs r0, #0x1c
	muls r0, r2, r0
	adds r0, r3, r0
	bl ov21_021DA534
_021DB0F2:
	adds r4, r4, #1
	adds r6, #0x38
	cmp r4, #4
	blt _021DB054
	ldr r0, [sp, #0x1c]
	adds r7, r7, #4
	adds r0, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, r0, #3
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #6
	blt _021DB050
	ldr r0, [sp, #0x14]
	bl ov21_021D4EE4
	ldr r1, [sp, #0x10]
	movs r2, #4
	str r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	movs r3, #6
	bl ov21_021D4F04
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DB02C

	thumb_func_start ov21_021DB12C
ov21_021DB12C: @ 0x021DB12C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021DB2F8 @ =0x021BF67C
	ldr r1, [r0, #0x44]
	movs r0, #1
	tst r0, r1
	bne _021DB13C
	b _021DB2EE
_021DB13C:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _021DB150
	ldr r0, [r4, #0x18]
	bl ov21_021D4F7C
	cmp r0, #0x14
	bls _021DB152
_021DB150:
	b _021DB2F4
_021DB152:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DB15E: @ jump table
	.2byte _021DB2F4 - _021DB15E - 2 @ case 0
	.2byte _021DB2F4 - _021DB15E - 2 @ case 1
	.2byte _021DB2F4 - _021DB15E - 2 @ case 2
	.2byte _021DB2F4 - _021DB15E - 2 @ case 3
	.2byte _021DB2F4 - _021DB15E - 2 @ case 4
	.2byte _021DB2F4 - _021DB15E - 2 @ case 5
	.2byte _021DB188 - _021DB15E - 2 @ case 6
	.2byte _021DB1A0 - _021DB15E - 2 @ case 7
	.2byte _021DB1B8 - _021DB15E - 2 @ case 8
	.2byte _021DB1CE - _021DB15E - 2 @ case 9
	.2byte _021DB1E6 - _021DB15E - 2 @ case 10
	.2byte _021DB1FE - _021DB15E - 2 @ case 11
	.2byte _021DB216 - _021DB15E - 2 @ case 12
	.2byte _021DB22E - _021DB15E - 2 @ case 13
	.2byte _021DB246 - _021DB15E - 2 @ case 14
	.2byte _021DB25E - _021DB15E - 2 @ case 15
	.2byte _021DB276 - _021DB15E - 2 @ case 16
	.2byte _021DB28E - _021DB15E - 2 @ case 17
	.2byte _021DB2A6 - _021DB15E - 2 @ case 18
	.2byte _021DB2BE - _021DB15E - 2 @ case 19
	.2byte _021DB2D6 - _021DB15E - 2 @ case 20
_021DB188:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1A0:
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1B8:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1CE:
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1E6:
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB1FE:
	adds r0, r4, #0
	movs r1, #5
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB216:
	adds r0, r4, #0
	movs r1, #6
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB22E:
	adds r0, r4, #0
	movs r1, #7
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB246:
	adds r0, r4, #0
	movs r1, #8
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB25E:
	adds r0, r4, #0
	movs r1, #9
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB276:
	adds r0, r4, #0
	movs r1, #0xa
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB28E:
	adds r0, r4, #0
	movs r1, #0xb
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB2A6:
	adds r0, r4, #0
	movs r1, #0xc
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB2BE:
	adds r0, r4, #0
	movs r1, #0xd
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB2D6:
	adds r0, r4, #0
	movs r1, #0xe
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	movs r1, #2
	lsls r0, r0, #2
	adds r0, r4, r0
	str r1, [r0, #0x44]
	pop {r4, pc}
_021DB2EE:
	movs r0, #0
	adds r4, #0x8c
	str r0, [r4]
_021DB2F4:
	pop {r4, pc}
	nop
_021DB2F8: .4byte 0x021BF67C
	thumb_func_end ov21_021DB12C

	thumb_func_start ov21_021DB2FC
ov21_021DB2FC: @ 0x021DB2FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021DB388 @ =0x021BF67C
	adds r4, r1, #0
	ldr r1, [r0, #0x48]
	movs r0, #0x10
	tst r0, r1
	beq _021DB31E
	ldr r0, [r5, #0x18]
	movs r1, #0
	movs r2, #1
	bl ov21_021D4F20
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x8c
	str r1, [r0]
_021DB31E:
	ldr r0, _021DB388 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x20
	tst r0, r1
	beq _021DB33A
	movs r1, #0
	ldr r0, [r5, #0x18]
	subs r2, r1, #1
	bl ov21_021D4F20
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x8c
	str r1, [r0]
_021DB33A:
	ldr r0, _021DB388 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x40
	tst r0, r1
	beq _021DB356
	movs r1, #1
	ldr r0, [r5, #0x18]
	subs r2, r1, #2
	bl ov21_021D4F20
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x8c
	str r1, [r0]
_021DB356:
	ldr r0, _021DB388 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x80
	tst r0, r1
	beq _021DB372
	movs r1, #1
	ldr r0, [r5, #0x18]
	adds r2, r1, #0
	bl ov21_021D4F20
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0x8c
	str r1, [r0]
_021DB372:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DA5A8
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DB38C
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DB388: .4byte 0x021BF67C
	thumb_func_end ov21_021DB2FC

	thumb_func_start ov21_021DB38C
ov21_021DB38C: @ 0x021DB38C
	push {r3, lr}
	cmp r2, #3
	bhi _021DB3C6
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021DB39E: @ jump table
	.2byte _021DB3A6 - _021DB39E - 2 @ case 0
	.2byte _021DB3AC - _021DB39E - 2 @ case 1
	.2byte _021DB3B2 - _021DB39E - 2 @ case 2
	.2byte _021DB3C2 - _021DB39E - 2 @ case 3
_021DB3A6:
	bl ov21_021DA7B0
	pop {r3, pc}
_021DB3AC:
	bl ov21_021DA988
	pop {r3, pc}
_021DB3B2:
	cmp r3, #0
	bne _021DB3BC
	bl ov21_021DAC08
	pop {r3, pc}
_021DB3BC:
	bl ov21_021DAED8
	pop {r3, pc}
_021DB3C2:
	bl ov21_021DB12C
_021DB3C6:
	pop {r3, pc}
	thumb_func_end ov21_021DB38C

	thumb_func_start ov21_021DB3C8
ov21_021DB3C8: @ 0x021DB3C8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl FUN_020181C4
	ldr r0, [r4, #0x18]
	bl ov21_021D4EFC
	movs r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov21_021DB3C8

	thumb_func_start ov21_021DB3E0
ov21_021DB3E0: @ 0x021DB3E0
	push {r3, lr}
	ldr r2, [r0, #0x24]
	ldr r3, [r0, #0x28]
	bl ov21_021DB3EC
	pop {r3, pc}
	thumb_func_end ov21_021DB3E0

	thumb_func_start ov21_021DB3EC
ov21_021DB3EC: @ 0x021DB3EC
	push {r3, lr}
	cmp r2, #3
	bhi _021DB426
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021DB3FE: @ jump table
	.2byte _021DB406 - _021DB3FE - 2 @ case 0
	.2byte _021DB40C - _021DB3FE - 2 @ case 1
	.2byte _021DB412 - _021DB3FE - 2 @ case 2
	.2byte _021DB422 - _021DB3FE - 2 @ case 3
_021DB406:
	bl ov21_021DA6B0
	pop {r3, pc}
_021DB40C:
	bl ov21_021DA888
	pop {r3, pc}
_021DB412:
	cmp r3, #0
	bne _021DB41C
	bl ov21_021DAAD4
	pop {r3, pc}
_021DB41C:
	bl ov21_021DAD74
	pop {r3, pc}
_021DB422:
	bl ov21_021DB02C
_021DB426:
	pop {r3, pc}
	thumb_func_end ov21_021DB3EC

	thumb_func_start ov21_021DB428
ov21_021DB428: @ 0x021DB428
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x24]
	cmp r0, #3
	bhi _021DB456
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DB43E: @ jump table
	.2byte _021DB446 - _021DB43E - 2 @ case 0
	.2byte _021DB44A - _021DB43E - 2 @ case 1
	.2byte _021DB44E - _021DB43E - 2 @ case 2
	.2byte _021DB452 - _021DB43E - 2 @ case 3
_021DB446:
	movs r4, #1
	b _021DB45A
_021DB44A:
	movs r4, #2
	b _021DB45A
_021DB44E:
	movs r4, #3
	b _021DB45A
_021DB452:
	movs r4, #4
	b _021DB45A
_021DB456:
	bl FUN_02022974
_021DB45A:
	ldr r0, [r5, #0x18]
	movs r1, #4
	adds r2, r4, #0
	bl ov21_021D4F20
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DB428

	thumb_func_start ov21_021DB468
ov21_021DB468: @ 0x021DB468
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021DB3C8
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DB3EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DB468

	thumb_func_start ov21_021DB480
ov21_021DB480: @ 0x021DB480
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r5]
	adds r6, r2, #0
	bl ov21_021D25B8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021DB49C
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DB480

	thumb_func_start ov21_021DB49C
ov21_021DB49C: @ 0x021DB49C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r2, #4]
	adds r4, r1, #0
	bl ov21_021D3998
	cmp r0, #0
	beq _021DB4CA
	adds r0, r5, #0
	movs r1, #1
	bl ov21_021DB4E4
	cmp r0, #0
	beq _021DB4C0
	ldr r0, [r4, #0x18]
	ldr r1, [r5]
	bl ov21_021D25B8
_021DB4C0:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DB4D4
	pop {r3, r4, r5, pc}
_021DB4CA:
	adds r0, r5, #0
	movs r1, #0
	bl ov21_021DB4E4
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DB49C

	thumb_func_start ov21_021DB4D4
ov21_021DB4D4: @ 0x021DB4D4
	ldr r3, _021DB4E0 @ =ov21_021D2544
	adds r2, r0, #0
	ldr r0, [r1, #0x18]
	ldr r1, [r2]
	bx r3
	nop
_021DB4E0: .4byte ov21_021D2544
	thumb_func_end ov21_021DB4D4

	thumb_func_start ov21_021DB4E4
ov21_021DB4E4: @ 0x021DB4E4
	push {r3, r4, r5, lr}
	ldr r4, [r0]
	movs r0, #0x79
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r5, r1, #0
	bl ov21_021D25A0
	cmp r5, r0
	beq _021DB508
	movs r0, #0x79
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov21_021D2584
	movs r0, #1
	pop {r3, r4, r5, pc}
_021DB508:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DB4E4

	thumb_func_start ov21_021DB50C
ov21_021DB50C: @ 0x021DB50C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021DB5CC @ =0x00003EFD
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x7d
	movs r3, #1
	bl FUN_02009A4C
	adds r1, r5, #0
	adds r1, #0xe4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	bl FUN_0200A3DC
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	bl FUN_02009D4C
	ldr r0, _021DB5D0 @ =0x00003E83
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #3
	movs r3, #0
	bl FUN_02009B04
	adds r1, r5, #0
	adds r1, #0xe8
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200A640
	adds r0, r5, #0
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_02009D4C
	ldr r0, _021DB5D4 @ =0x00003EFE
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x7e
	movs r3, #1
	bl FUN_02009BC4
	adds r1, r5, #0
	adds r1, #0xec
	str r0, [r1]
	ldr r0, _021DB5D8 @ =0x00003EFC
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x7c
	movs r3, #1
	bl FUN_02009BC4
	adds r5, #0xf0
	str r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DB5CC: .4byte 0x00003EFD
_021DB5D0: .4byte 0x00003E83
_021DB5D4: .4byte 0x00003EFE
_021DB5D8: .4byte 0x00003EFC
	thumb_func_end ov21_021DB50C

	thumb_func_start ov21_021DB5DC
ov21_021DB5DC: @ 0x021DB5DC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xe4
	ldr r0, [r0]
	ldr r4, [r1]
	bl FUN_0200A4E4
	adds r0, r5, #0
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200A6DC
	movs r0, #5
	adds r1, r5, #0
	lsls r0, r0, #6
	adds r1, #0xe4
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x51
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xe8
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x52
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xec
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	adds r5, #0xf0
	ldr r0, [r4, r0]
	ldr r1, [r5]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DB5DC

	thumb_func_start ov21_021DB634
ov21_021DB634: @ 0x021DB634
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x80
	movs r3, #1
	bl FUN_02009A4C
	adds r1, r5, #0
	adds r1, #0xf4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl FUN_0200A3DC
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	bl FUN_02009D4C
	ldr r0, _021DB6C0 @ =0x00003F01
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x81
	movs r3, #1
	bl FUN_02009BC4
	adds r1, r5, #0
	adds r1, #0xfc
	str r0, [r1]
	ldr r0, _021DB6C4 @ =0x00003EFF
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x7f
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #1
	lsls r1, r1, #8
	str r0, [r5, r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DB6C0: .4byte 0x00003F01
_021DB6C4: .4byte 0x00003EFF
	thumb_func_end ov21_021DB634

	thumb_func_start ov21_021DB6C8
ov21_021DB6C8: @ 0x021DB6C8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xf4
	ldr r0, [r0]
	ldr r4, [r1]
	bl FUN_0200A4E4
	movs r0, #5
	adds r1, r5, #0
	lsls r0, r0, #6
	adds r1, #0xf4
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x52
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xfc
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r1, #0x53
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	subs r1, #0x4c
	ldr r1, [r5, r1]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DB6C8

	thumb_func_start ov21_021DB708
ov21_021DB708: @ 0x021DB708
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1]
	ldr r3, _021DB788 @ =0x00003EFC
	adds r5, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #5
	str r1, [sp, #0x10]
	lsls r0, r0, #6
	adds r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r2, #0x79
	adds r3, r3, #2
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0x2c
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x20
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	adds r0, r5, #0
	str r6, [sp, #0x48]
	bl ov21_021DB858
	movs r3, #0x41
	lsls r3, r3, #2
	ldr r2, [r5, r3]
	adds r3, r3, #4
	ldr r3, [r5, r3]
	adds r0, r5, #0
	add r1, sp, #0x2c
	bl ov21_021DB81C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	nop
_021DB788: .4byte 0x00003EFC
	thumb_func_end ov21_021DB708

	thumb_func_start ov21_021DB78C
ov21_021DB78C: @ 0x021DB78C
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021DB90C
	adds r0, r4, #0
	bl ov21_021DB924
	pop {r4, pc}
	thumb_func_end ov21_021DB78C

	thumb_func_start ov21_021DB79C
ov21_021DB79C: @ 0x021DB79C
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1]
	ldr r3, _021DB818 @ =0x00003EFC
	adds r5, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #5
	str r1, [sp, #0x10]
	lsls r0, r0, #6
	adds r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r2, #0x79
	adds r3, r3, #2
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x20
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	adds r0, r5, #0
	str r6, [sp, #0x48]
	bl ov21_021DB924
	movs r3, #0x41
	lsls r3, r3, #2
	ldr r2, [r5, r3]
	adds r3, r3, #4
	ldr r3, [r5, r3]
	adds r0, r5, #0
	add r1, sp, #0x2c
	bl ov21_021DB81C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DB818: .4byte 0x00003EFC
	thumb_func_end ov21_021DB79C

	thumb_func_start ov21_021DB81C
ov21_021DB81C: @ 0x021DB81C
	push {r3, lr}
	cmp r2, #3
	bhi _021DB856
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021DB82E: @ jump table
	.2byte _021DB836 - _021DB82E - 2 @ case 0
	.2byte _021DB83C - _021DB82E - 2 @ case 1
	.2byte _021DB842 - _021DB82E - 2 @ case 2
	.2byte _021DB852 - _021DB82E - 2 @ case 3
_021DB836:
	bl ov21_021DB944
	pop {r3, pc}
_021DB83C:
	bl ov21_021DB9B4
	pop {r3, pc}
_021DB842:
	cmp r3, #0
	bne _021DB84C
	bl ov21_021DBA24
	pop {r3, pc}
_021DB84C:
	bl ov21_021DBAB8
	pop {r3, pc}
_021DB852:
	bl ov21_021DBB74
_021DB856:
	pop {r3, pc}
	thumb_func_end ov21_021DB81C

	thumb_func_start ov21_021DB858
ov21_021DB858: @ 0x021DB858
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0xe
	adds r6, r0, #0
	adds r4, r1, #0
	movs r5, #0
	lsls r7, r7, #0x10
_021DB864:
	cmp r5, #5
	bhi _021DB8C2
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DB874: @ jump table
	.2byte _021DB880 - _021DB874 - 2 @ case 0
	.2byte _021DB88E - _021DB874 - 2 @ case 1
	.2byte _021DB898 - _021DB874 - 2 @ case 2
	.2byte _021DB8A2 - _021DB874 - 2 @ case 3
	.2byte _021DB8AC - _021DB874 - 2 @ case 4
	.2byte _021DB8B6 - _021DB874 - 2 @ case 5
_021DB880:
	movs r0, #0xd
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	movs r0, #0x35
	lsls r0, r0, #0xe
	str r0, [r4, #8]
	b _021DB8C2
_021DB88E:
	movs r0, #0xf
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021DB8C2
_021DB898:
	movs r0, #0x11
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021DB8C2
_021DB8A2:
	movs r0, #0x13
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021DB8C2
_021DB8AC:
	movs r0, #0x15
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	str r7, [r4, #8]
	b _021DB8C2
_021DB8B6:
	movs r0, #0x17
	lsls r0, r0, #0x10
	str r0, [r4, #0xc]
	movs r0, #0x35
	lsls r0, r0, #0xe
	str r0, [r4, #8]
_021DB8C2:
	adds r0, r4, #0
	bl FUN_02021B90
	str r0, [r6]
	cmp r5, #5
	bhi _021DB902
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DB8DA: @ jump table
	.2byte _021DB8E6 - _021DB8DA - 2 @ case 0
	.2byte _021DB8F0 - _021DB8DA - 2 @ case 1
	.2byte _021DB8F0 - _021DB8DA - 2 @ case 2
	.2byte _021DB8F0 - _021DB8DA - 2 @ case 3
	.2byte _021DB8F0 - _021DB8DA - 2 @ case 4
	.2byte _021DB8FA - _021DB8DA - 2 @ case 5
_021DB8E6:
	ldr r0, [r6]
	movs r1, #3
	bl FUN_02021D6C
	b _021DB902
_021DB8F0:
	ldr r0, [r6]
	movs r1, #2
	bl FUN_02021D6C
	b _021DB902
_021DB8FA:
	ldr r0, [r6]
	movs r1, #1
	bl FUN_02021D6C
_021DB902:
	adds r5, r5, #1
	adds r6, r6, #4
	cmp r5, #6
	blt _021DB864
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DB858

	thumb_func_start ov21_021DB90C
ov21_021DB90C: @ 0x021DB90C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021DB912:
	ldr r0, [r5]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _021DB912
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DB90C

	thumb_func_start ov21_021DB924
ov21_021DB924: @ 0x021DB924
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021DB92C:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DB938
	bl FUN_02021BD4
	str r6, [r5, #0x30]
_021DB938:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xf
	blt _021DB92C
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DB924

	thumb_func_start ov21_021DB944
ov21_021DB944: @ 0x021DB944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x30
	adds r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r7, r6, #0
	str r0, [sp, #4]
	adds r7, #8
_021DB95C:
	ldr r0, [sp, #8]
	movs r4, #0x30
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [r6, #0xc]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r5, r0, r1
_021DB976:
	str r4, [r6, #8]
	ldr r0, [r7]
	lsls r0, r0, #0xc
	str r0, [r7]
	adds r0, r6, #0
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5, #0x30]
	bl FUN_02021D6C
	ldr r0, [sp, #0xc]
	adds r4, #0x50
	adds r0, r0, #1
	adds r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021DB976
	ldr r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #3
	blt _021DB95C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DB944

	thumb_func_start ov21_021DB9B4
ov21_021DB9B4: @ 0x021DB9B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x10
	adds r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r7, r6, #0
	str r0, [sp, #4]
	adds r7, #8
_021DB9CC:
	ldr r0, [sp, #8]
	movs r4, #0x30
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [r6, #0xc]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r5, r0, r1
_021DB9E6:
	str r4, [r6, #8]
	ldr r0, [r7]
	lsls r0, r0, #0xc
	str r0, [r7]
	adds r0, r6, #0
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5, #0x30]
	bl FUN_02021D6C
	ldr r0, [sp, #0xc]
	adds r4, #0x50
	adds r0, r0, #1
	adds r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021DB9E6
	ldr r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _021DB9CC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DB9B4

	thumb_func_start ov21_021DBA24
ov21_021DBA24: @ 0x021DBA24
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x10
	adds r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r7, r6, #0
	str r0, [sp, #4]
	adds r7, #8
_021DBA3C:
	ldr r0, [sp, #8]
	movs r4, #0x30
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [r6, #0xc]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r5, r0, r1
_021DBA56:
	str r4, [r6, #8]
	ldr r0, [r7]
	lsls r0, r0, #0xc
	str r0, [r7]
	adds r0, r6, #0
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5, #0x30]
	bl FUN_02021D6C
	ldr r0, [sp, #0xc]
	adds r4, #0x50
	adds r0, r0, #1
	adds r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021DBA56
	ldr r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _021DBA3C
	movs r0, #0xb0
	movs r2, #0x18
	str r0, [r6, #0xc]
	lsls r0, r2, #0xc
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	lsls r1, r0, #0xc
	lsls r0, r2, #0xf
	adds r0, r1, r0
	str r0, [r6, #0xc]
	adds r0, r6, #0
	bl FUN_02021B90
	ldr r1, [sp]
	str r0, [r1, #0x58]
	movs r1, #5
	bl FUN_02021D6C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DBA24

	thumb_func_start ov21_021DBAB8
ov21_021DBAB8: @ 0x021DBAB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x10
	adds r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r7, r6, #0
	str r0, [sp, #4]
	adds r7, #8
_021DBAD0:
	ldr r0, [sp, #8]
	movs r4, #0x30
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [r6, #0xc]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r5, r0, r1
_021DBAEA:
	str r4, [r6, #8]
	ldr r0, [r7]
	lsls r0, r0, #0xc
	str r0, [r7]
	adds r0, r6, #0
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5, #0x30]
	bl FUN_02021D6C
	ldr r0, [sp, #0xc]
	adds r4, #0x50
	adds r0, r0, #1
	adds r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #2
	blt _021DBAEA
	ldr r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _021DBAD0
	movs r0, #0x90
	str r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [r6, #0xc]
	adds r0, r6, #0
	bl FUN_02021B90
	ldr r1, [sp]
	str r0, [r1, #0x50]
	movs r1, #0
	bl FUN_02021D6C
	movs r0, #0xb0
	movs r2, #0x18
	str r0, [r6, #0xc]
	lsls r0, r2, #0xc
	str r0, [r6, #8]
	ldr r0, [r6, #0xc]
	lsls r1, r0, #0xc
	lsls r0, r2, #0xf
	adds r0, r1, r0
	str r0, [r6, #0xc]
	adds r0, r6, #0
	bl FUN_02021B90
	ldr r1, [sp]
	str r0, [r1, #0x54]
	movs r1, #4
	bl FUN_02021D6C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DBAB8

	thumb_func_start ov21_021DBB74
ov21_021DBB74: @ 0x021DBB74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x10
	adds r6, r1, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r7, r6, #0
	str r0, [sp, #4]
	adds r7, #8
_021DBB8C:
	ldr r0, [sp, #8]
	movs r4, #0x1c
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [r6, #0xc]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	lsls r1, r0, #2
	ldr r0, [sp]
	adds r5, r0, r1
_021DBBA6:
	str r4, [r6, #8]
	ldr r0, [r7]
	lsls r0, r0, #0xc
	str r0, [r7]
	adds r0, r6, #0
	bl FUN_02021B90
	movs r1, #6
	str r0, [r5, #0x30]
	bl FUN_02021D6C
	ldr r0, [sp, #0xc]
	adds r4, #0x38
	adds r0, r0, #1
	adds r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _021DBBA6
	ldr r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _021DBB8C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DBB74

	thumb_func_start ov21_021DBBE4
ov21_021DBBE4: @ 0x021DBBE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	ldr r4, [r1]
	ldr r3, _021DBD9C @ =0x00003EFF
	str r0, [sp, #0x2c]
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #5
	str r1, [sp, #0x10]
	lsls r0, r0, #6
	adds r5, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x58
	subs r2, #0x7c
	adds r3, r3, #2
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	movs r0, #0xf
	str r0, [sp, #0x4c]
	movs r0, #2
	str r0, [sp, #0x50]
	movs r0, #0
	str r0, [sp, #0x34]
	movs r0, #0x10
	ldr r7, [sp, #0x34]
	str r5, [sp, #0x54]
	str r0, [sp, #0x30]
_021DBC4E:
	ldr r0, [sp, #0x30]
	movs r6, #0
	str r0, [sp, #0x44]
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x2c]
	lsls r1, r7, #2
	movs r5, #0x1c
	adds r4, r0, r1
_021DBC66:
	str r5, [sp, #0x40]
	lsls r0, r5, #0xc
	str r0, [sp, #0x40]
	add r0, sp, #0x38
	bl FUN_02021B90
	adds r1, r4, #0
	adds r1, #0xa8
	str r0, [r1]
	adds r0, r6, r7
	cmp r0, #0xe
	bhi _021DBD78
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DBC8A: @ jump table
	.2byte _021DBCA8 - _021DBC8A - 2 @ case 0
	.2byte _021DBCB6 - _021DBC8A - 2 @ case 1
	.2byte _021DBCC4 - _021DBC8A - 2 @ case 2
	.2byte _021DBCD2 - _021DBC8A - 2 @ case 3
	.2byte _021DBCE0 - _021DBC8A - 2 @ case 4
	.2byte _021DBCEE - _021DBC8A - 2 @ case 5
	.2byte _021DBCFC - _021DBC8A - 2 @ case 6
	.2byte _021DBD0A - _021DBC8A - 2 @ case 7
	.2byte _021DBD18 - _021DBC8A - 2 @ case 8
	.2byte _021DBD26 - _021DBC8A - 2 @ case 9
	.2byte _021DBD34 - _021DBC8A - 2 @ case 10
	.2byte _021DBD42 - _021DBC8A - 2 @ case 11
	.2byte _021DBD50 - _021DBC8A - 2 @ case 12
	.2byte _021DBD5E - _021DBC8A - 2 @ case 13
	.2byte _021DBD6C - _021DBC8A - 2 @ case 14
_021DBCA8:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021D6C
	b _021DBD78
_021DBCB6:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #5
	bl FUN_02021D6C
	b _021DBD78
_021DBCC4:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0xa
	bl FUN_02021D6C
	b _021DBD78
_021DBCD2:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021D6C
	b _021DBD78
_021DBCE0:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #6
	bl FUN_02021D6C
	b _021DBD78
_021DBCEE:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0xb
	bl FUN_02021D6C
	b _021DBD78
_021DBCFC:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #2
	bl FUN_02021D6C
	b _021DBD78
_021DBD0A:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #9
	bl FUN_02021D6C
	b _021DBD78
_021DBD18:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0xc
	bl FUN_02021D6C
	b _021DBD78
_021DBD26:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #3
	bl FUN_02021D6C
	b _021DBD78
_021DBD34:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #8
	bl FUN_02021D6C
	b _021DBD78
_021DBD42:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0xd
	bl FUN_02021D6C
	b _021DBD78
_021DBD50:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #4
	bl FUN_02021D6C
	b _021DBD78
_021DBD5E:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #7
	bl FUN_02021D6C
	b _021DBD78
_021DBD6C:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021CAC
_021DBD78:
	adds r6, r6, #1
	adds r5, #0x38
	adds r4, r4, #4
	cmp r6, #3
	bge _021DBD84
	b _021DBC66
_021DBD84:
	ldr r0, [sp, #0x30]
	adds r7, r7, #3
	adds r0, #0x20
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	adds r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, #5
	bge _021DBD98
	b _021DBC4E
_021DBD98:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DBD9C: .4byte 0x00003EFF
	thumb_func_end ov21_021DBBE4

	thumb_func_start ov21_021DBDA0
ov21_021DBDA0: @ 0x021DBDA0
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021DBDA8:
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021DBDBC
	bl FUN_02021BD4
	adds r0, r5, #0
	adds r0, #0xa8
	str r6, [r0]
_021DBDBC:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xf
	blt _021DBDA8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DBDA0

	thumb_func_start ov21_021DBDC8
ov21_021DBDC8: @ 0x021DBDC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r4, [r1]
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021DBE28 @ =0x00003E83
	adds r6, r2, #0
	bl FUN_02009DC8
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #4]
	movs r1, #0
	bl FUN_0200A72C
	str r0, [sp, #0xc]
	movs r0, #0
	movs r2, #0x15
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	movs r0, #2
	str r0, [sp, #0x24]
	str r6, [sp, #0x28]
	lsls r2, r2, #4
	ldr r2, [r4, r2]
	adds r0, r5, #0
	add r1, sp, #4
	bl ov21_021DBEC8
	movs r3, #0x42
	lsls r3, r3, #2
	ldr r0, [r5, r3]
	adds r2, r3, #0
	str r0, [sp]
	adds r2, #0x48
	subs r3, r3, #4
	ldr r2, [r4, r2]
	ldr r3, [r5, r3]
	adds r0, r5, #0
	add r1, sp, #4
	bl ov21_021DBE98
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_021DBE28: .4byte 0x00003E83
	thumb_func_end ov21_021DBDC8

	thumb_func_start ov21_021DBE2C
ov21_021DBE2C: @ 0x021DBE2C
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021DC04C
	adds r0, r4, #0
	bl ov21_021DC068
	pop {r4, pc}
	thumb_func_end ov21_021DBE2C

	thumb_func_start ov21_021DBE3C
ov21_021DBE3C: @ 0x021DBE3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r4, [r1]
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021DBE94 @ =0x00003E83
	adds r6, r2, #0
	bl FUN_02009DC8
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #4]
	movs r1, #0
	bl FUN_0200A72C
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	movs r0, #2
	str r0, [sp, #0x24]
	adds r0, r5, #0
	str r6, [sp, #0x28]
	bl ov21_021DC068
	movs r3, #0x42
	lsls r3, r3, #2
	ldr r0, [r5, r3]
	adds r2, r3, #0
	str r0, [sp]
	adds r2, #0x48
	subs r3, r3, #4
	ldr r2, [r4, r2]
	ldr r3, [r5, r3]
	adds r0, r5, #0
	add r1, sp, #4
	bl ov21_021DBE98
	add sp, #0x2c
	pop {r3, r4, r5, r6, pc}
	nop
_021DBE94: .4byte 0x00003E83
	thumb_func_end ov21_021DBE3C

	thumb_func_start ov21_021DBE98
ov21_021DBE98: @ 0x021DBE98
	push {r3, lr}
	cmp r3, #0
	beq _021DBEA8
	cmp r3, #1
	beq _021DBEAE
	cmp r3, #2
	beq _021DBEB4
	pop {r3, pc}
_021DBEA8:
	bl ov21_021DC088
	pop {r3, pc}
_021DBEAE:
	bl ov21_021DC12C
	pop {r3, pc}
_021DBEB4:
	ldr r3, [sp, #8]
	cmp r3, #0
	bne _021DBEC0
	bl ov21_021DC1E8
	pop {r3, pc}
_021DBEC0:
	bl ov21_021DC2A4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021DBE98

	thumb_func_start ov21_021DBEC8
ov21_021DBEC8: @ 0x021DBEC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #8]
	adds r6, r2, #0
	movs r1, #2
	bl FUN_0201FAB4
	adds r7, r0, #0
	adds r0, r6, #0
	movs r1, #8
	movs r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, _021DC048 @ =0x000002B9
	adds r0, r6, #0
	movs r3, #0x32
	bl ov21_021D4DAC
	ldr r1, [sp, #8]
	rsbs r0, r0, #0
	str r1, [r4, #4]
	ldr r1, [r5, #4]
	lsrs r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	movs r0, #5
	mvns r0, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x1c]
	ldr r0, [r0]
	adds r1, r7, #3
	bl FUN_02012A60
	ldr r0, [sp, #8]
	bl ov21_021D4DA0
	adds r0, r6, #0
	movs r1, #8
	movs r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r2, _021DC048 @ =0x000002B9
	adds r0, r6, #0
	movs r3, #0x2f
	bl ov21_021D4DAC
	ldr r1, [sp, #0xc]
	rsbs r0, r0, #0
	str r1, [r4, #4]
	ldr r1, [r5, #8]
	lsrs r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	movs r0, #5
	mvns r0, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x20]
	ldr r0, [r0]
	adds r1, r7, #3
	bl FUN_02012A60
	ldr r0, [sp, #0xc]
	bl ov21_021D4DA0
	adds r0, r6, #0
	movs r1, #8
	movs r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, _021DC048 @ =0x000002B9
	adds r0, r6, #0
	movs r3, #0x30
	bl ov21_021D4DAC
	ldr r1, [sp, #0x10]
	rsbs r0, r0, #0
	str r1, [r4, #4]
	ldr r1, [r5, #0xc]
	lsrs r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	movs r0, #5
	mvns r0, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x24]
	ldr r0, [r0]
	adds r1, r7, #3
	bl FUN_02012A60
	ldr r0, [sp, #0x10]
	bl ov21_021D4DA0
	adds r0, r6, #0
	movs r1, #8
	movs r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x14]
	ldr r2, _021DC048 @ =0x000002B9
	adds r0, r6, #0
	movs r3, #0x31
	bl ov21_021D4DAC
	ldr r1, [sp, #0x14]
	rsbs r0, r0, #0
	str r1, [r4, #4]
	ldr r1, [r5, #0x10]
	lsrs r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	movs r0, #5
	mvns r0, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x28]
	ldr r0, [r0]
	adds r1, r7, #3
	bl FUN_02012A60
	ldr r0, [sp, #0x14]
	bl ov21_021D4DA0
	adds r0, r6, #0
	movs r1, #8
	movs r2, #2
	bl ov21_021D4D6C
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, _021DC048 @ =0x000002B9
	adds r0, r6, #0
	movs r3, #0x33
	bl ov21_021D4DAC
	ldr r1, [sp, #0x18]
	rsbs r0, r0, #0
	str r1, [r4, #4]
	ldr r1, [r5, #0x14]
	lsrs r0, r0, #1
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	movs r0, #5
	mvns r0, r0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	bl ov21_021D4CA0
	str r0, [r5, #0x2c]
	ldr r0, [r0]
	adds r1, r7, #1
	bl FUN_02012A60
	ldr r0, [sp, #0x18]
	bl ov21_021D4DA0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DC048: .4byte 0x000002B9
	thumb_func_end ov21_021DBEC8

	thumb_func_start ov21_021DC04C
ov21_021DC04C: @ 0x021DC04C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021DC052:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021DC05C
	bl ov21_021D4D1C
_021DC05C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _021DC052
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DC04C

	thumb_func_start ov21_021DC068
ov21_021DC068: @ 0x021DC068
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021DC070:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021DC07C
	bl ov21_021D4D1C
	str r6, [r5, #0x6c]
_021DC07C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xf
	blt _021DC070
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DC068

	thumb_func_start ov21_021DC088
ov21_021DC088: @ 0x021DC088
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r0, r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	movs r1, #2
	str r2, [sp, #0xc]
	bl FUN_0201FAB4
	str r0, [sp, #0x10]
	adds r0, #0xb
	movs r5, #0
	str r0, [sp, #0x10]
_021DC0A4:
	ldr r0, [sp, #0xc]
	movs r1, #0xa
	movs r2, #2
	bl ov21_021D4D6C
	adds r7, r0, #0
	cmp r5, #5
	bhi _021DC0E2
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC0C0: @ jump table
	.2byte _021DC0CC - _021DC0C0 - 2 @ case 0
	.2byte _021DC0D0 - _021DC0C0 - 2 @ case 1
	.2byte _021DC0D4 - _021DC0C0 - 2 @ case 2
	.2byte _021DC0D8 - _021DC0C0 - 2 @ case 3
	.2byte _021DC0DC - _021DC0C0 - 2 @ case 4
	.2byte _021DC0E0 - _021DC0C0 - 2 @ case 5
_021DC0CC:
	movs r4, #0x51
	b _021DC0E2
_021DC0D0:
	movs r4, #0x52
	b _021DC0E2
_021DC0D4:
	movs r4, #0x53
	b _021DC0E2
_021DC0D8:
	movs r4, #0x54
	b _021DC0E2
_021DC0DC:
	movs r4, #0x55
	b _021DC0E2
_021DC0E0:
	movs r4, #0x56
_021DC0E2:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _021DC128 @ =0x000002B9
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov21_021D4DAC
	rsbs r0, r0, #0
	lsrs r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0, #0x10]
	str r7, [r0, #4]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0xc]
	movs r1, #5
	mvns r1, r1
	str r1, [r0, #0x14]
	bl ov21_021D4CA0
	str r0, [r6, #0x6c]
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	bl FUN_02012A60
	adds r0, r7, #0
	bl ov21_021D4DA0
	adds r5, r5, #1
	adds r6, r6, #4
	cmp r5, #6
	blt _021DC0A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DC128: .4byte 0x000002B9
	thumb_func_end ov21_021DC088

	thumb_func_start ov21_021DC12C
ov21_021DC12C: @ 0x021DC12C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r0, r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	movs r1, #2
	str r2, [sp, #0xc]
	bl FUN_0201FAB4
	str r0, [sp, #0x10]
	adds r0, #0xb
	movs r5, #0
	str r0, [sp, #0x10]
_021DC148:
	ldr r0, [sp, #0xc]
	movs r1, #0xa
	movs r2, #2
	bl ov21_021D4D6C
	adds r7, r0, #0
	cmp r5, #9
	bhi _021DC19E
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC164: @ jump table
	.2byte _021DC178 - _021DC164 - 2 @ case 0
	.2byte _021DC17C - _021DC164 - 2 @ case 1
	.2byte _021DC180 - _021DC164 - 2 @ case 2
	.2byte _021DC184 - _021DC164 - 2 @ case 3
	.2byte _021DC188 - _021DC164 - 2 @ case 4
	.2byte _021DC18C - _021DC164 - 2 @ case 5
	.2byte _021DC190 - _021DC164 - 2 @ case 6
	.2byte _021DC194 - _021DC164 - 2 @ case 7
	.2byte _021DC198 - _021DC164 - 2 @ case 8
	.2byte _021DC19C - _021DC164 - 2 @ case 9
_021DC178:
	movs r4, #0x36
	b _021DC19E
_021DC17C:
	movs r4, #0x37
	b _021DC19E
_021DC180:
	movs r4, #0x38
	b _021DC19E
_021DC184:
	movs r4, #0x39
	b _021DC19E
_021DC188:
	movs r4, #0x3a
	b _021DC19E
_021DC18C:
	movs r4, #0x3b
	b _021DC19E
_021DC190:
	movs r4, #0x3c
	b _021DC19E
_021DC194:
	movs r4, #0x3d
	b _021DC19E
_021DC198:
	movs r4, #0x3e
	b _021DC19E
_021DC19C:
	movs r4, #0x7e
_021DC19E:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _021DC1E4 @ =0x000002B9
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov21_021D4DAC
	rsbs r0, r0, #0
	lsrs r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0, #0x10]
	str r7, [r0, #4]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0xc]
	movs r1, #5
	mvns r1, r1
	str r1, [r0, #0x14]
	bl ov21_021D4CA0
	str r0, [r6, #0x6c]
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	bl FUN_02012A60
	adds r0, r7, #0
	bl ov21_021D4DA0
	adds r5, r5, #1
	adds r6, r6, #4
	cmp r5, #0xa
	blt _021DC148
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DC1E4: .4byte 0x000002B9
	thumb_func_end ov21_021DC12C

	thumb_func_start ov21_021DC1E8
ov21_021DC1E8: @ 0x021DC1E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r0, r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	movs r1, #2
	str r2, [sp, #0xc]
	bl FUN_0201FAB4
	str r0, [sp, #0x10]
	adds r0, #0xb
	movs r5, #0
	str r0, [sp, #0x10]
_021DC204:
	ldr r0, [sp, #0xc]
	movs r1, #0xa
	movs r2, #2
	bl ov21_021D4D6C
	adds r7, r0, #0
	cmp r5, #9
	bhi _021DC25A
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC220: @ jump table
	.2byte _021DC234 - _021DC220 - 2 @ case 0
	.2byte _021DC238 - _021DC220 - 2 @ case 1
	.2byte _021DC23C - _021DC220 - 2 @ case 2
	.2byte _021DC240 - _021DC220 - 2 @ case 3
	.2byte _021DC244 - _021DC220 - 2 @ case 4
	.2byte _021DC248 - _021DC220 - 2 @ case 5
	.2byte _021DC24C - _021DC220 - 2 @ case 6
	.2byte _021DC250 - _021DC220 - 2 @ case 7
	.2byte _021DC254 - _021DC220 - 2 @ case 8
	.2byte _021DC258 - _021DC220 - 2 @ case 9
_021DC234:
	movs r4, #0x40
	b _021DC25A
_021DC238:
	movs r4, #0x46
	b _021DC25A
_021DC23C:
	movs r4, #0x49
	b _021DC25A
_021DC240:
	movs r4, #0x47
	b _021DC25A
_021DC244:
	movs r4, #0x48
	b _021DC25A
_021DC248:
	movs r4, #0x4c
	b _021DC25A
_021DC24C:
	movs r4, #0x4b
	b _021DC25A
_021DC250:
	movs r4, #0x4d
	b _021DC25A
_021DC254:
	movs r4, #0x50
	b _021DC25A
_021DC258:
	movs r4, #0x7f
_021DC25A:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _021DC2A0 @ =0x000002B9
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov21_021D4DAC
	rsbs r0, r0, #0
	lsrs r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0, #0x10]
	str r7, [r0, #4]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0xc]
	movs r1, #5
	mvns r1, r1
	str r1, [r0, #0x14]
	bl ov21_021D4CA0
	str r0, [r6, #0x6c]
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	bl FUN_02012A60
	adds r0, r7, #0
	bl ov21_021D4DA0
	adds r5, r5, #1
	adds r6, r6, #4
	cmp r5, #0xa
	blt _021DC204
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DC2A0: .4byte 0x000002B9
	thumb_func_end ov21_021DC1E8

	thumb_func_start ov21_021DC2A4
ov21_021DC2A4: @ 0x021DC2A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r0, r1, #0
	str r1, [sp, #8]
	ldr r0, [r0, #8]
	movs r1, #2
	str r2, [sp, #0xc]
	bl FUN_0201FAB4
	str r0, [sp, #0x10]
	adds r0, #0xb
	movs r5, #0
	str r0, [sp, #0x10]
_021DC2C0:
	ldr r0, [sp, #0xc]
	movs r1, #0xa
	movs r2, #2
	bl ov21_021D4D6C
	adds r7, r0, #0
	cmp r5, #8
	bhi _021DC310
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC2DC: @ jump table
	.2byte _021DC2EE - _021DC2DC - 2 @ case 0
	.2byte _021DC2F2 - _021DC2DC - 2 @ case 1
	.2byte _021DC2F6 - _021DC2DC - 2 @ case 2
	.2byte _021DC2FA - _021DC2DC - 2 @ case 3
	.2byte _021DC2FE - _021DC2DC - 2 @ case 4
	.2byte _021DC302 - _021DC2DC - 2 @ case 5
	.2byte _021DC306 - _021DC2DC - 2 @ case 6
	.2byte _021DC30A - _021DC2DC - 2 @ case 7
	.2byte _021DC30E - _021DC2DC - 2 @ case 8
_021DC2EE:
	movs r4, #0x41
	b _021DC310
_021DC2F2:
	movs r4, #0x42
	b _021DC310
_021DC2F6:
	movs r4, #0x44
	b _021DC310
_021DC2FA:
	movs r4, #0x43
	b _021DC310
_021DC2FE:
	movs r4, #0x4a
	b _021DC310
_021DC302:
	movs r4, #0x45
	b _021DC310
_021DC306:
	movs r4, #0x4e
	b _021DC310
_021DC30A:
	movs r4, #0x4f
	b _021DC310
_021DC30E:
	movs r4, #0x7f
_021DC310:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r2, _021DC358 @ =0x000002B9
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov21_021D4DAC
	rsbs r0, r0, #0
	lsrs r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [r0, #0x10]
	str r7, [r0, #4]
	ldr r1, [r6, #0x30]
	str r1, [r0, #0xc]
	movs r1, #5
	mvns r1, r1
	str r1, [r0, #0x14]
	bl ov21_021D4CA0
	str r0, [r6, #0x6c]
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	bl FUN_02012A60
	adds r0, r7, #0
	bl ov21_021D4DA0
	adds r5, r5, #1
	adds r6, r6, #4
	cmp r5, #9
	blt _021DC2C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021DC358: .4byte 0x000002B9
	thumb_func_end ov21_021DC2A4

	thumb_func_start ov21_021DC35C
ov21_021DC35C: @ 0x021DC35C
	ldr r1, _021DC364 @ =0x0000FFFF
	adds r0, #0x84
	str r1, [r0]
	bx lr
	.align 2, 0
_021DC364: .4byte 0x0000FFFF
	thumb_func_end ov21_021DC35C

	thumb_func_start ov21_021DC368
ov21_021DC368: @ 0x021DC368
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021DC3BC
	ldr r2, [r5, #0x24]
	ldr r3, [r5, #0x28]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DC380
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DC368

	thumb_func_start ov21_021DC380
ov21_021DC380: @ 0x021DC380
	push {r3, lr}
	cmp r2, #3
	bhi _021DC3BA
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021DC392: @ jump table
	.2byte _021DC39A - _021DC392 - 2 @ case 0
	.2byte _021DC3A0 - _021DC392 - 2 @ case 1
	.2byte _021DC3A6 - _021DC392 - 2 @ case 2
	.2byte _021DC3B6 - _021DC392 - 2 @ case 3
_021DC39A:
	bl ov21_021DC48C
	pop {r3, pc}
_021DC3A0:
	bl ov21_021DC4F8
	pop {r3, pc}
_021DC3A6:
	cmp r3, #0
	bne _021DC3B0
	bl ov21_021DC57C
	pop {r3, pc}
_021DC3B0:
	bl ov21_021DC600
	pop {r3, pc}
_021DC3B6:
	bl ov21_021DC720
_021DC3BA:
	pop {r3, pc}
	thumb_func_end ov21_021DC380

	thumb_func_start ov21_021DC3BC
ov21_021DC3BC: @ 0x021DC3BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r4, r1, #0
	cmp r0, #5
	bhi _021DC47A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC3D6: @ jump table
	.2byte _021DC3E2 - _021DC3D6 - 2 @ case 0
	.2byte _021DC3F2 - _021DC3D6 - 2 @ case 1
	.2byte _021DC40C - _021DC3D6 - 2 @ case 2
	.2byte _021DC426 - _021DC3D6 - 2 @ case 3
	.2byte _021DC448 - _021DC3D6 - 2 @ case 4
	.2byte _021DC462 - _021DC3D6 - 2 @ case 5
_021DC3E2:
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov21_021D86C4
	ldr r0, _021DC484 @ =0x000005DD
	bl FUN_02005748
	b _021DC47A
_021DC3F2:
	ldr r0, [r4, #8]
	bl ov21_021D863C
	cmp r0, #0
	beq _021DC47A
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov21_021D8628
	ldr r0, _021DC484 @ =0x000005DD
	bl FUN_02005748
	b _021DC47A
_021DC40C:
	ldr r0, [r4, #8]
	bl ov21_021D863C
	cmp r0, #1
	beq _021DC47A
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov21_021D8628
	ldr r0, _021DC484 @ =0x000005DD
	bl FUN_02005748
	b _021DC47A
_021DC426:
	ldr r0, [r4, #8]
	bl ov21_021D863C
	cmp r0, #2
	beq _021DC47A
	ldr r0, [r4, #8]
	movs r1, #2
	bl ov21_021D8628
	ldr r0, _021DC484 @ =0x000005DD
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x88
	str r1, [r0]
	b _021DC47A
_021DC448:
	ldr r0, [r4, #8]
	bl ov21_021D863C
	cmp r0, #3
	beq _021DC47A
	ldr r0, [r4, #8]
	movs r1, #3
	bl ov21_021D8628
	ldr r0, _021DC484 @ =0x000005DD
	bl FUN_02005748
	b _021DC47A
_021DC462:
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #1
	bgt _021DC47A
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov21_021D86C4
	ldr r0, _021DC484 @ =0x000005DD
	bl FUN_02005748
_021DC47A:
	ldr r0, _021DC488 @ =0x0000FFFF
	adds r5, #0x80
	str r0, [r5]
	pop {r3, r4, r5, pc}
	nop
_021DC484: .4byte 0x000005DD
_021DC488: .4byte 0x0000FFFF
	thumb_func_end ov21_021DC3BC

	thumb_func_start ov21_021DC48C
ov21_021DC48C: @ 0x021DC48C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	adds r6, r1, #0
	movs r4, #0x64
	cmp r0, #5
	bhi _021DC4CA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC4A8: @ jump table
	.2byte _021DC4B4 - _021DC4A8 - 2 @ case 0
	.2byte _021DC4B8 - _021DC4A8 - 2 @ case 1
	.2byte _021DC4BC - _021DC4A8 - 2 @ case 2
	.2byte _021DC4C0 - _021DC4A8 - 2 @ case 3
	.2byte _021DC4C4 - _021DC4A8 - 2 @ case 4
	.2byte _021DC4C8 - _021DC4A8 - 2 @ case 5
_021DC4B4:
	movs r4, #0
	b _021DC4CA
_021DC4B8:
	movs r4, #1
	b _021DC4CA
_021DC4BC:
	movs r4, #2
	b _021DC4CA
_021DC4C0:
	movs r4, #3
	b _021DC4CA
_021DC4C4:
	movs r4, #4
	b _021DC4CA
_021DC4C8:
	movs r4, #5
_021DC4CA:
	cmp r4, #0x64
	beq _021DC4E6
	ldr r0, [r6, #8]
	bl ov21_021D8658
	cmp r4, r0
	beq _021DC4E6
	ldr r0, _021DC4F0 @ =0x000005DD
	bl FUN_02005748
	ldr r0, [r6, #8]
	adds r1, r4, #0
	bl ov21_021D8644
_021DC4E6:
	ldr r0, _021DC4F4 @ =0x0000FFFF
	adds r5, #0x84
	str r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_021DC4F0: .4byte 0x000005DD
_021DC4F4: .4byte 0x0000FFFF
	thumb_func_end ov21_021DC48C

	thumb_func_start ov21_021DC4F8
ov21_021DC4F8: @ 0x021DC4F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	adds r6, r1, #0
	movs r4, #0x64
	cmp r0, #9
	bhi _021DC54E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC514: @ jump table
	.2byte _021DC528 - _021DC514 - 2 @ case 0
	.2byte _021DC52C - _021DC514 - 2 @ case 1
	.2byte _021DC530 - _021DC514 - 2 @ case 2
	.2byte _021DC534 - _021DC514 - 2 @ case 3
	.2byte _021DC538 - _021DC514 - 2 @ case 4
	.2byte _021DC53C - _021DC514 - 2 @ case 5
	.2byte _021DC540 - _021DC514 - 2 @ case 6
	.2byte _021DC544 - _021DC514 - 2 @ case 7
	.2byte _021DC548 - _021DC514 - 2 @ case 8
	.2byte _021DC54C - _021DC514 - 2 @ case 9
_021DC528:
	movs r4, #1
	b _021DC54E
_021DC52C:
	movs r4, #2
	b _021DC54E
_021DC530:
	movs r4, #3
	b _021DC54E
_021DC534:
	movs r4, #4
	b _021DC54E
_021DC538:
	movs r4, #5
	b _021DC54E
_021DC53C:
	movs r4, #6
	b _021DC54E
_021DC540:
	movs r4, #7
	b _021DC54E
_021DC544:
	movs r4, #8
	b _021DC54E
_021DC548:
	movs r4, #9
	b _021DC54E
_021DC54C:
	movs r4, #0
_021DC54E:
	cmp r4, #0x64
	beq _021DC56A
	ldr r0, [r6, #8]
	bl ov21_021D8674
	cmp r4, r0
	beq _021DC56A
	ldr r0, _021DC574 @ =0x000005DD
	bl FUN_02005748
	ldr r0, [r6, #8]
	adds r1, r4, #0
	bl ov21_021D8660
_021DC56A:
	ldr r0, _021DC578 @ =0x0000FFFF
	adds r5, #0x84
	str r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_021DC574: .4byte 0x000005DD
_021DC578: .4byte 0x0000FFFF
	thumb_func_end ov21_021DC4F8

	thumb_func_start ov21_021DC57C
ov21_021DC57C: @ 0x021DC57C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	adds r6, r1, #0
	movs r4, #0x64
	cmp r0, #0xa
	bhi _021DC5E0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC598: @ jump table
	.2byte _021DC5AE - _021DC598 - 2 @ case 0
	.2byte _021DC5B2 - _021DC598 - 2 @ case 1
	.2byte _021DC5B6 - _021DC598 - 2 @ case 2
	.2byte _021DC5BA - _021DC598 - 2 @ case 3
	.2byte _021DC5BE - _021DC598 - 2 @ case 4
	.2byte _021DC5C2 - _021DC598 - 2 @ case 5
	.2byte _021DC5C6 - _021DC598 - 2 @ case 6
	.2byte _021DC5CA - _021DC598 - 2 @ case 7
	.2byte _021DC5CE - _021DC598 - 2 @ case 8
	.2byte _021DC5D2 - _021DC598 - 2 @ case 9
	.2byte _021DC5D6 - _021DC598 - 2 @ case 10
_021DC5AE:
	movs r4, #1
	b _021DC5E0
_021DC5B2:
	movs r4, #2
	b _021DC5E0
_021DC5B6:
	movs r4, #3
	b _021DC5E0
_021DC5BA:
	movs r4, #4
	b _021DC5E0
_021DC5BE:
	movs r4, #5
	b _021DC5E0
_021DC5C2:
	movs r4, #6
	b _021DC5E0
_021DC5C6:
	movs r4, #7
	b _021DC5E0
_021DC5CA:
	movs r4, #8
	b _021DC5E0
_021DC5CE:
	movs r4, #9
	b _021DC5E0
_021DC5D2:
	movs r4, #0
	b _021DC5E0
_021DC5D6:
	movs r0, #1
	str r0, [r5, #0x20]
	ldr r0, _021DC5F8 @ =0x000005DD
	bl FUN_02005748
_021DC5E0:
	cmp r4, #0x64
	beq _021DC5EE
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021DC67C
_021DC5EE:
	ldr r0, _021DC5FC @ =0x0000FFFF
	adds r5, #0x84
	str r0, [r5]
	pop {r4, r5, r6, pc}
	nop
_021DC5F8: .4byte 0x000005DD
_021DC5FC: .4byte 0x0000FFFF
	thumb_func_end ov21_021DC57C

	thumb_func_start ov21_021DC600
ov21_021DC600: @ 0x021DC600
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	adds r6, r1, #0
	movs r4, #0x64
	cmp r0, #9
	bhi _021DC65E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC61C: @ jump table
	.2byte _021DC630 - _021DC61C - 2 @ case 0
	.2byte _021DC634 - _021DC61C - 2 @ case 1
	.2byte _021DC638 - _021DC61C - 2 @ case 2
	.2byte _021DC63C - _021DC61C - 2 @ case 3
	.2byte _021DC640 - _021DC61C - 2 @ case 4
	.2byte _021DC644 - _021DC61C - 2 @ case 5
	.2byte _021DC648 - _021DC61C - 2 @ case 6
	.2byte _021DC64C - _021DC61C - 2 @ case 7
	.2byte _021DC650 - _021DC61C - 2 @ case 8
	.2byte _021DC654 - _021DC61C - 2 @ case 9
_021DC630:
	movs r4, #0xa
	b _021DC65E
_021DC634:
	movs r4, #0xb
	b _021DC65E
_021DC638:
	movs r4, #0xc
	b _021DC65E
_021DC63C:
	movs r4, #0xd
	b _021DC65E
_021DC640:
	movs r4, #0xe
	b _021DC65E
_021DC644:
	movs r4, #0xf
	b _021DC65E
_021DC648:
	movs r4, #0x10
	b _021DC65E
_021DC64C:
	movs r4, #0x11
	b _021DC65E
_021DC650:
	movs r4, #0
	b _021DC65E
_021DC654:
	movs r0, #0
	str r0, [r5, #0x20]
	ldr r0, _021DC674 @ =0x000005DD
	bl FUN_02005748
_021DC65E:
	cmp r4, #0x64
	beq _021DC66C
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021DC67C
_021DC66C:
	ldr r0, _021DC678 @ =0x0000FFFF
	adds r5, #0x84
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DC674: .4byte 0x000005DD
_021DC678: .4byte 0x0000FFFF
	thumb_func_end ov21_021DC600

	thumb_func_start ov21_021DC67C
ov21_021DC67C: @ 0x021DC67C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	ldr r0, [r4, #8]
	beq _021DC6DC
	movs r1, #0
	bl ov21_021D8698
	cmp r6, r0
	beq _021DC718
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov21_021D8698
	cmp r6, r0
	beq _021DC718
	adds r1, r5, #0
	adds r1, #0x88
	ldr r0, [r4, #8]
	ldr r1, [r1]
	bl ov21_021D8698
	cmp r6, r0
	beq _021DC718
	adds r2, r5, #0
	adds r2, #0x88
	ldr r0, [r4, #8]
	ldr r2, [r2]
	adds r1, r6, #0
	bl ov21_021D867C
	adds r0, r5, #0
	adds r0, #0x88
	ldr r0, [r0]
	adds r5, #0x88
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	str r0, [r5]
	ldr r0, _021DC71C @ =0x000005DD
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_021DC6DC:
	movs r1, #0
	bl ov21_021D8698
	cmp r0, #0
	ldr r0, [r4, #8]
	beq _021DC6F8
	adds r1, r6, #0
	movs r2, #0
	bl ov21_021D867C
	ldr r0, _021DC71C @ =0x000005DD
	bl FUN_02005748
	b _021DC712
_021DC6F8:
	movs r1, #1
	bl ov21_021D8698
	cmp r0, #0
	beq _021DC712
	ldr r0, [r4, #8]
	adds r1, r6, #0
	movs r2, #1
	bl ov21_021D867C
	ldr r0, _021DC71C @ =0x000005DD
	bl FUN_02005748
_021DC712:
	movs r0, #0
	adds r5, #0x88
	str r0, [r5]
_021DC718:
	pop {r4, r5, r6, pc}
	nop
_021DC71C: .4byte 0x000005DD
	thumb_func_end ov21_021DC67C

	thumb_func_start ov21_021DC720
ov21_021DC720: @ 0x021DC720
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0x84
	ldr r0, [r0]
	adds r6, r1, #0
	movs r4, #0x64
	cmp r0, #0xe
	bhi _021DC794
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DC73C: @ jump table
	.2byte _021DC75A - _021DC73C - 2 @ case 0
	.2byte _021DC75E - _021DC73C - 2 @ case 1
	.2byte _021DC762 - _021DC73C - 2 @ case 2
	.2byte _021DC766 - _021DC73C - 2 @ case 3
	.2byte _021DC76A - _021DC73C - 2 @ case 4
	.2byte _021DC76E - _021DC73C - 2 @ case 5
	.2byte _021DC772 - _021DC73C - 2 @ case 6
	.2byte _021DC776 - _021DC73C - 2 @ case 7
	.2byte _021DC77A - _021DC73C - 2 @ case 8
	.2byte _021DC77E - _021DC73C - 2 @ case 9
	.2byte _021DC782 - _021DC73C - 2 @ case 10
	.2byte _021DC786 - _021DC73C - 2 @ case 11
	.2byte _021DC78A - _021DC73C - 2 @ case 12
	.2byte _021DC78E - _021DC73C - 2 @ case 13
	.2byte _021DC792 - _021DC73C - 2 @ case 14
_021DC75A:
	movs r4, #0xd
	b _021DC794
_021DC75E:
	movs r4, #4
	b _021DC794
_021DC762:
	movs r4, #0xc
	b _021DC794
_021DC766:
	movs r4, #9
	b _021DC794
_021DC76A:
	movs r4, #8
	b _021DC794
_021DC76E:
	movs r4, #3
	b _021DC794
_021DC772:
	movs r4, #0xa
	b _021DC794
_021DC776:
	movs r4, #1
	b _021DC794
_021DC77A:
	movs r4, #6
	b _021DC794
_021DC77E:
	movs r4, #0xb
	b _021DC794
_021DC782:
	movs r4, #0xe
	b _021DC794
_021DC786:
	movs r4, #2
	b _021DC794
_021DC78A:
	movs r4, #5
	b _021DC794
_021DC78E:
	movs r4, #7
	b _021DC794
_021DC792:
	movs r4, #0
_021DC794:
	cmp r4, #0x64
	beq _021DC7B0
	ldr r0, [r6, #8]
	bl ov21_021D86BC
	cmp r4, r0
	beq _021DC7B0
	ldr r0, _021DC7B8 @ =0x000005DD
	bl FUN_02005748
	ldr r0, [r6, #8]
	adds r1, r4, #0
	bl ov21_021D86A8
_021DC7B0:
	ldr r0, _021DC7BC @ =0x0000FFFF
	adds r5, #0x84
	str r0, [r5]
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DC7B8: .4byte 0x000005DD
_021DC7BC: .4byte 0x0000FFFF
	thumb_func_end ov21_021DC720

	thumb_func_start ov21_021DC7C0
ov21_021DC7C0: @ 0x021DC7C0
	push {r3, r4, r5, lr}
	movs r3, #0x4b
	lsls r3, r3, #2
	ldr r2, [r0, r3]
	cmp r2, #0
	bne _021DC7EC
	ldr r2, [r1, #4]
	cmp r2, #0
	ble _021DC7F0
	str r2, [r0, r3]
	movs r5, #0
	adds r2, r3, #4
	str r5, [r0, r2]
	adds r2, r3, #0
	ldr r4, [r1, #8]
	adds r2, #8
	adds r3, #8
	str r4, [r0, r2]
	ldr r0, [r0, r3]
	str r5, [r0]
	str r5, [r1, #4]
	pop {r3, r4, r5, pc}
_021DC7EC:
	bl ov21_021DC7F4
_021DC7F0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DC7C0

	thumb_func_start ov21_021DC7F4
ov21_021DC7F4: @ 0x021DC7F4
	push {r4, lr}
	sub sp, #8
	movs r3, #0x4b
	adds r4, r0, #0
	lsls r3, r3, #2
	ldr r1, [r4, r3]
	cmp r1, #0
	beq _021DC8A6
	adds r0, r3, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021DC814
	cmp r0, #1
	beq _021DC866
	add sp, #8
	pop {r4, pc}
_021DC814:
	cmp r1, #1
	bne _021DC82E
	movs r1, #0
	str r1, [sp]
	movs r0, #2
	subs r3, #0x20
	str r0, [sp, #4]
	adds r0, r4, r3
	movs r2, #0x10
	adds r3, r1, #0
	bl ov21_021D2648
	b _021DC842
_021DC82E:
	movs r2, #0
	str r2, [sp]
	movs r0, #2
	subs r3, #0x20
	str r0, [sp, #4]
	adds r0, r4, r3
	movs r1, #0x10
	adds r3, r2, #0
	bl ov21_021D2648
_021DC842:
	movs r0, #0x43
	lsls r0, r0, #2
	ldr r3, [r4, r0]
	movs r0, #0x10
	subs r0, r0, r3
	str r0, [sp]
	ldr r0, _021DC8AC @ =0x04001050
	movs r1, #0
	movs r2, #4
	blx FUN_020BF55C
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	add sp, #8
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_021DC866:
	subs r3, #0x20
	adds r0, r4, r3
	bl ov21_021D2664
	movs r1, #0x43
	lsls r1, r1, #2
	ldr r3, [r4, r1]
	movs r2, #0x10
	subs r2, r2, r3
	lsls r2, r2, #8
	orrs r3, r2
	ldr r2, _021DC8B0 @ =0x04001052
	cmp r0, #1
	strh r3, [r2]
	bne _021DC8A6
	adds r1, #0x20
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _021DC892
	movs r1, #0
	subs r0, r2, #2
	strh r1, [r0]
_021DC892:
	movs r1, #0x4d
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	movs r2, #1
	str r2, [r0]
	subs r0, r1, #4
	movs r2, #0
	str r2, [r4, r0]
	subs r1, #8
	str r2, [r4, r1]
_021DC8A6:
	add sp, #8
	pop {r4, pc}
	nop
_021DC8AC: .4byte 0x04001050
_021DC8B0: .4byte 0x04001052
	thumb_func_end ov21_021DC7F4

	thumb_func_start ov21_021DC8B4
ov21_021DC8B4: @ 0x021DC8B4
	push {r3, lr}
	cmp r2, #2
	bne _021DC8CA
	cmp r3, #0
	bne _021DC8C4
	bl ov21_021DC90C
	pop {r3, pc}
_021DC8C4:
	bl ov21_021DC93C
	pop {r3, pc}
_021DC8CA:
	bl ov21_021DC8D0
	pop {r3, pc}
	thumb_func_end ov21_021DC8B4

	thumb_func_start ov21_021DC8D0
ov21_021DC8D0: @ 0x021DC8D0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
_021DC8D8:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DC8E4
	adds r1, r4, #0
	bl FUN_02021FE0
_021DC8E4:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021DC8F2
	ldr r0, [r0]
	adds r1, r4, #0
	bl FUN_02012AF0
_021DC8F2:
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	cmp r0, #0
	beq _021DC902
	adds r1, r4, #0
	bl FUN_02021FE0
_021DC902:
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #0xf
	blt _021DC8D8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DC8D0

	thumb_func_start ov21_021DC90C
ov21_021DC90C: @ 0x021DC90C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_021DC914:
	cmp r4, #0xa
	beq _021DC932
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DC924
	adds r1, r6, #0
	bl FUN_02021FE0
_021DC924:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021DC932
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_02012AF0
_021DC932:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xf
	blt _021DC914
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DC90C

	thumb_func_start ov21_021DC93C
ov21_021DC93C: @ 0x021DC93C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_021DC944:
	cmp r4, #9
	beq _021DC962
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _021DC954
	adds r1, r6, #0
	bl FUN_02021FE0
_021DC954:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	beq _021DC962
	ldr r0, [r0]
	adds r1, r6, #0
	bl FUN_02012AF0
_021DC962:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xf
	blt _021DC944
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DC93C

	thumb_func_start ov21_021DC96C
ov21_021DC96C: @ 0x021DC96C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r2, #0
	ldr r0, [r4, #8]
	bl ov21_021D86E0
	cmp r0, #4
	bne _021DC9B8
	ldr r0, [r4, #8]
	bl ov21_021D86D8
	cmp r0, #3
	bne _021DC99C
	movs r1, #0
	movs r0, #2
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #4
	subs r2, #0x10
	movs r3, #0x3f
	bl FUN_0200AAE0
	add sp, #4
	pop {r3, r4, pc}
_021DC99C:
	ldr r0, [r4, #8]
	bl ov21_021D86D8
	cmp r0, #1
	bne _021DC9B8
	movs r0, #2
	str r0, [sp]
	movs r0, #4
	adds r1, r0, #0
	subs r1, #0x14
	movs r2, #0
	movs r3, #0x3f
	bl FUN_0200AAE0
_021DC9B8:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021DC96C

	thumb_func_start ov21_021DC9BC
ov21_021DC9BC: @ 0x021DC9BC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r7, #0
	bl ov21_021DCA5C
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021DCAA0
	str r4, [r5]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x20]
	bl ov21_021DCAF4
	str r0, [r5, #0x24]
	ldr r0, _021DC9FC @ =ov21_021DCAF8
	str r0, [r5, #8]
	ldr r0, _021DCA00 @ =ov21_021DCB6C
	str r0, [r5, #0xc]
	ldr r0, _021DCA04 @ =ov21_021DCBA8
	str r0, [r5, #0x10]
	ldr r0, _021DCA08 @ =ov21_021DCBD8
	str r0, [r5, #0x14]
	ldr r0, _021DCA0C @ =ov21_021DCCD8
	str r0, [r5, #0x18]
	ldr r0, _021DCA10 @ =ov21_021DCD04
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DC9FC: .4byte ov21_021DCAF8
_021DCA00: .4byte ov21_021DCB6C
_021DCA04: .4byte ov21_021DCBA8
_021DCA08: .4byte ov21_021DCBD8
_021DCA0C: .4byte ov21_021DCCD8
_021DCA10: .4byte ov21_021DCD04
	thumb_func_end ov21_021DC9BC

	thumb_func_start ov21_021DCA14
ov21_021DCA14: @ 0x021DCA14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021DCACC
	ldr r0, [r4, #4]
	bl ov21_021DCAE0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DCA14

	thumb_func_start ov21_021DCA28
ov21_021DCA28: @ 0x021DCA28
	ldr r0, [r0]
	ldr r0, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021DCA28

	thumb_func_start ov21_021DCA30
ov21_021DCA30: @ 0x021DCA30
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0]
	cmp r5, #3
	blt _021DCA3E
	bl FUN_02022974
_021DCA3E:
	str r5, [r4, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DCA30

	thumb_func_start ov21_021DCA44
ov21_021DCA44: @ 0x021DCA44
	ldr r0, [r0, #4]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov21_021DCA44

	thumb_func_start ov21_021DCA4C
ov21_021DCA4C: @ 0x021DCA4C
	ldr r0, [r0, #4]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021DCA4C

	thumb_func_start ov21_021DCA54
ov21_021DCA54: @ 0x021DCA54
	ldr r0, [r0, #4]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021DCA54

	thumb_func_start ov21_021DCA5C
ov21_021DCA5C: @ 0x021DCA5C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DCA6E
	bl FUN_02022974
_021DCA6E:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	str r0, [r4, #8]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DCA5C

	thumb_func_start ov21_021DCAA0
ov21_021DCAA0: @ 0x021DCAA0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x14
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DCAB2
	bl FUN_02022974
_021DCAB2:
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_021DCAB8:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021DCAB8
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DCAA0

	thumb_func_start ov21_021DCACC
ov21_021DCACC: @ 0x021DCACC
	push {r4, lr}
	adds r4, r0, #0
	bne _021DCAD6
	bl FUN_02022974
_021DCAD6:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DCACC

	thumb_func_start ov21_021DCAE0
ov21_021DCAE0: @ 0x021DCAE0
	push {r4, lr}
	adds r4, r0, #0
	bne _021DCAEA
	bl FUN_02022974
_021DCAEA:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DCAE0

	thumb_func_start ov21_021DCAF4
ov21_021DCAF4: @ 0x021DCAF4
	movs r0, #0
	bx lr
	thumb_func_end ov21_021DCAF4

	thumb_func_start ov21_021DCAF8
ov21_021DCAF8: @ 0x021DCAF8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r5, r1, #0
	movs r1, #0x34
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DCB0E
	bl FUN_02022974
_021DCB0E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x34
	blx FUN_020D5124
	str r4, [r6, #8]
	ldr r1, [r5]
	ldr r0, _021DCB68 @ =0x00001744
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021DCB2A
	movs r0, #0
	str r0, [r5, #4]
	b _021DCB3A
_021DCB2A:
	subs r0, r0, #1
	cmp r0, #1
	bhi _021DCB36
	movs r0, #1
	str r0, [r5, #4]
	b _021DCB3A
_021DCB36:
	movs r0, #2
	str r0, [r5, #4]
_021DCB3A:
	adds r2, r4, #0
	ldr r0, [r6, #4]
	adds r1, r5, #0
	adds r2, #0xc
	bl ov21_021DD900
	str r0, [r4, #4]
	adds r2, r4, #0
	ldr r0, [r6, #4]
	adds r1, r5, #0
	adds r2, #0x10
	bl ov21_021DD908
	str r0, [r4, #8]
	ldr r2, [r6, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021DDABC
	ldr r0, [r5, #4]
	str r0, [r4]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DCB68: .4byte 0x00001744
	thumb_func_end ov21_021DCAF8

	thumb_func_start ov21_021DCB6C
ov21_021DCB6C: @ 0x021DCB6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r6, r1, #0
	ldr r4, [r5, #8]
	cmp r0, #1
	bne _021DCB7E
	movs r0, #1
	pop {r4, r5, r6, pc}
_021DCB7E:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021DCB88
	movs r0, #0
	pop {r4, r5, r6, pc}
_021DCB88:
	ldr r1, [r4]
	ldr r0, [r6, #4]
	cmp r1, r0
	beq _021DCBA4
	adds r0, r4, #0
	bl ov21_021DDB68
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DDABC
	ldr r0, [r6, #4]
	str r0, [r4]
_021DCBA4:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DCB6C

	thumb_func_start ov21_021DCBA8
ov21_021DCBA8: @ 0x021DCBA8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021DCBB8
	bl FUN_020181C4
_021DCBB8:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021DCBC2
	bl FUN_020181C4
_021DCBC2:
	adds r0, r5, #0
	bl ov21_021DDB68
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DCBA8

	thumb_func_start ov21_021DCBD8
ov21_021DCBD8: @ 0x021DCBD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r3, #8]
	adds r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021DCCC6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DCBFA: @ jump table
	.2byte _021DCC02 - _021DCBFA - 2 @ case 0
	.2byte _021DCC3A - _021DCBFA - 2 @ case 1
	.2byte _021DCC92 - _021DCBFA - 2 @ case 2
	.2byte _021DCCBA - _021DCBFA - 2 @ case 3
_021DCC02:
	ldr r0, [r4, #4]
	ldr r1, _021DCCCC @ =0x00000844
	bl FUN_02018144
	ldr r2, _021DCCCC @ =0x00000844
	str r0, [r4, #8]
	movs r1, #0
	blx FUN_020D5124
	ldr r5, [r4, #8]
	ldr r0, [r7, #4]
	movs r1, #0
	str r0, [r5]
	ldr r0, [r4, #4]
	bl ov21_021D5868
	ldr r1, _021DCCD0 @ =0x00000804
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	movs r1, #0
	bl ov21_021D5890
	ldr r1, _021DCCD4 @ =0x00000808
	str r0, [r5, r1]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DCCC6
_021DCC3A:
	ldr r0, [r4, #4]
	ldr r3, [sp, #4]
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021DCDD0
	ldr r0, [r4, #8]
	ldr r2, [sp, #4]
	ldr r3, [r4, #4]
	adds r1, r7, #0
	bl ov21_021DD710
	ldr r0, [r4, #8]
	ldr r1, [sp, #4]
	bl ov21_021DD9E8
	adds r0, r6, #0
	bl ov21_021DDB8C
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021DD964
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021DCC7E
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021DD490
	b _021DCC8A
_021DCC7E:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021DD554
_021DCC8A:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DCCC6
_021DCC92:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021DCCA4
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021DD508
	b _021DCCAE
_021DCCA4:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021DD5E4
_021DCCAE:
	cmp r0, #0
	beq _021DCCC6
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DCCC6
_021DCCBA:
	adds r0, r6, #0
	bl ov21_021DDBCC
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCCC6:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DCCCC: .4byte 0x00000844
_021DCCD0: .4byte 0x00000804
_021DCCD4: .4byte 0x00000808
	thumb_func_end ov21_021DCBD8

	thumb_func_start ov21_021DCCD8
ov21_021DCCD8: @ 0x021DCCD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5, #8]
	adds r7, r2, #0
	ldr r4, [r3, #8]
	str r0, [sp, #4]
	bl ov21_021DDC14
	ldr r0, [r5, #4]
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021DDA80
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DCCD8

	thumb_func_start ov21_021DCD04
ov21_021DCD04: @ 0x021DCD04
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021DCDC4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DCD20: @ jump table
	.2byte _021DCD2A - _021DCD20 - 2 @ case 0
	.2byte _021DCD58 - _021DCD20 - 2 @ case 1
	.2byte _021DCD80 - _021DCD20 - 2 @ case 2
	.2byte _021DCD96 - _021DCD20 - 2 @ case 3
	.2byte _021DCDC0 - _021DCD20 - 2 @ case 4
_021DCD2A:
	adds r0, r5, #0
	bl ov21_021DDB8C
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _021DCD44
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov21_021DD490
	b _021DCD50
_021DCD44:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov21_021DD554
_021DCD50:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DCDC4
_021DCD58:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _021DCD6A
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl ov21_021DD508
	b _021DCD74
_021DCD6A:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl ov21_021DD5E4
_021DCD74:
	cmp r0, #0
	beq _021DCDC4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DCDC4
_021DCD80:
	adds r0, r5, #0
	bl ov21_021DD8B4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021DCE20
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DCDC4
_021DCD96:
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, _021DCDC8 @ =0x00000804
	ldr r0, [r5, r0]
	bl FUN_020181C4
	ldr r0, _021DCDCC @ =0x00000808
	ldr r0, [r5, r0]
	bl FUN_020181C4
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DCDC4
_021DCDC0:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCDC4:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DCDC8: .4byte 0x00000804
_021DCDCC: .4byte 0x00000808
	thumb_func_end ov21_021DCD04

	thumb_func_start ov21_021DCDD0
ov21_021DCDD0: @ 0x021DCDD0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x18]
	adds r7, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov21_021DCE40
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021DD668
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021DCFC8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021DD1A8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl ov21_021DD2E0
	ldr r1, [r7, #4]
	adds r0, r5, #0
	bl ov21_021DDA48
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021DDCF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DCDD0

	thumb_func_start ov21_021DCE20
ov21_021DCE20: @ 0x021DCE20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021DD6C0
	adds r0, r5, #0
	bl ov21_021DD3FC
	adds r0, r5, #0
	bl ov21_021DD2B8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DD114
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DCE20

	thumb_func_start ov21_021DCE40
ov21_021DCE40: @ 0x021DCE40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r4, r2, #0
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x21
	movs r3, #3
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x40
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r7, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r7, #0
	bl FUN_020181C4
	ldr r1, [r6]
	ldr r0, _021DCFB8 @ =0x00001764
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DCEDE
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x41
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r7, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0xd
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r7, #0
	bl FUN_020181C4
_021DCEDE:
	ldr r1, [r6]
	ldr r0, _021DCFBC @ =0x0000176C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DCF22
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x42
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r7, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #7
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0x1c
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r7, #0
	bl FUN_020181C4
_021DCF22:
	ldr r1, [r6]
	ldr r0, _021DCFC0 @ =0x00001760
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DCF66
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x43
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r7, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0xb
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r7, #0
	bl FUN_020181C4
_021DCF66:
	ldr r1, [r6]
	ldr r0, _021DCFC4 @ =0x00001768
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DCFAA
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x44
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r4, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0x19
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
_021DCFAA:
	ldr r0, [r5]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DCFB8: .4byte 0x00001764
_021DCFBC: .4byte 0x0000176C
_021DCFC0: .4byte 0x00001760
_021DCFC4: .4byte 0x00001768
	thumb_func_end ov21_021DCE40

	thumb_func_start ov21_021DCFC8
ov21_021DCFC8: @ 0x021DCFC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021DD0F8 @ =0x000017DC
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x6c
	bl FUN_02009A4C
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_0200A3DC
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_02009D4C
	ldr r0, _021DD0FC @ =0x000017DA
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x6a
	movs r3, #1
	bl FUN_02009BC4
	adds r1, r5, #0
	adds r1, #0xbc
	str r0, [r1]
	ldr r0, _021DD100 @ =0x000017DB
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x6b
	movs r3, #1
	bl FUN_02009BC4
	adds r1, r5, #0
	adds r1, #0xc0
	str r0, [r1]
	ldr r0, _021DD104 @ =0x000017CD
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x5d
	bl FUN_02009A4C
	adds r1, r5, #0
	adds r1, #0xd0
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_0200A3DC
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_02009D4C
	ldr r0, _021DD108 @ =0x0000177E
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0xe
	movs r3, #0
	bl FUN_02009B04
	adds r1, r5, #0
	adds r1, #0xd4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xd4
	ldr r0, [r0]
	bl FUN_0200A640
	adds r0, r5, #0
	adds r0, #0xd4
	ldr r0, [r0]
	bl FUN_02009D4C
	ldr r0, _021DD10C @ =0x000017CB
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x5b
	movs r3, #1
	bl FUN_02009BC4
	adds r1, r5, #0
	adds r1, #0xd8
	str r0, [r1]
	ldr r0, _021DD110 @ =0x000017CC
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x5c
	movs r3, #1
	bl FUN_02009BC4
	adds r5, #0xdc
	str r0, [r5]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DD0F8: .4byte 0x000017DC
_021DD0FC: .4byte 0x000017DA
_021DD100: .4byte 0x000017DB
_021DD104: .4byte 0x000017CD
_021DD108: .4byte 0x0000177E
_021DD10C: .4byte 0x000017CB
_021DD110: .4byte 0x000017CC
	thumb_func_end ov21_021DCFC8

	thumb_func_start ov21_021DD114
ov21_021DD114: @ 0x021DD114
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xb4
	ldr r0, [r0]
	ldr r4, [r1]
	bl FUN_0200A4E4
	movs r0, #5
	adds r1, r5, #0
	lsls r0, r0, #6
	adds r1, #0xb4
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x52
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xbc
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x53
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xc0
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_0200A4E4
	adds r0, r5, #0
	adds r0, #0xd4
	ldr r0, [r0]
	bl FUN_0200A6DC
	movs r0, #5
	adds r1, r5, #0
	lsls r0, r0, #6
	adds r1, #0xd0
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x51
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xd4
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x52
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xd8
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	adds r5, #0xdc
	ldr r0, [r4, r0]
	ldr r1, [r5]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DD114

	thumb_func_start ov21_021DD1A8
ov21_021DD1A8: @ 0x021DD1A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	ldr r4, [r1]
	ldr r3, _021DD2B0 @ =0x000017CC
	adds r5, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	adds r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r2, #0x4e
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x1f
	str r0, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x44]
	movs r0, #0xa
	lsls r0, r0, #0x10
	str r0, [sp, #0x34]
	movs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl FUN_02021B90
	adds r1, r5, #0
	adds r1, #0xc8
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #2
	bl FUN_02021D6C
	ldr r3, _021DD2B4 @ =0x000017DB
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #5
	str r1, [sp, #0x10]
	lsls r0, r0, #6
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r2, #0x5d
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r4, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x1f
	str r0, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x44]
	str r6, [sp, #0x48]
	str r4, [sp, #0x34]
	str r4, [sp, #0x38]
	add r6, sp, #0x2c
	adds r7, r4, #0
_021DD28E:
	adds r0, r6, #0
	bl FUN_02021B90
	str r0, [r5, #4]
	adds r1, r7, #0
	bl FUN_02021CAC
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02021FE0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x2c
	blt _021DD28E
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DD2B0: .4byte 0x000017CC
_021DD2B4: .4byte 0x000017DB
	thumb_func_end ov21_021DD1A8

	thumb_func_start ov21_021DD2B8
ov21_021DD2B8: @ 0x021DD2B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl FUN_02021BD4
	adds r0, r5, #0
	movs r4, #0
	adds r0, #0xc8
	str r4, [r0]
	adds r6, r4, #0
_021DD2CE:
	ldr r0, [r5, #4]
	bl FUN_02021BD4
	str r6, [r5, #4]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x2c
	blt _021DD2CE
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DD2B8

	thumb_func_start ov21_021DD2E0
ov21_021DD2E0: @ 0x021DD2E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	adds r0, #0xc8
	adds r4, r1, #0
	ldr r0, [r0]
	adds r6, r3, #0
	ldr r7, [r4]
	cmp r0, #0
	bne _021DD2F8
	bl FUN_02022974
_021DD2F8:
	movs r0, #0x51
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _021DD3F4 @ =0x0000177E
	bl FUN_02009DC8
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r7, r1]
	str r1, [sp, #0xc]
	movs r1, #0
	bl FUN_0200A72C
	movs r1, #1
	movs r2, #0x1e
	str r0, [sp, #0x14]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r6, [sp, #0x30]
	bl FUN_0201FAB4
	str r0, [sp, #8]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	movs r1, #0x10
	movs r2, #2
	bl ov21_021D4D6C
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	ldr r2, _021DD3F8 @ =0x000002B9
	adds r1, r4, #0
	movs r3, #0x23
	bl ov21_021D4DAC
	adds r1, r5, #0
	lsrs r0, r0, #1
	str r4, [sp, #0x10]
	adds r1, #0xc8
	ldr r1, [r1]
	rsbs r0, r0, #0
	str r0, [sp, #0x1c]
	movs r0, #7
	mvns r0, r0
	str r0, [sp, #0x20]
	add r0, sp, #0xc
	str r1, [sp, #0x18]
	bl ov21_021D4CA0
	adds r1, r5, #0
	adds r1, #0xcc
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	ldr r1, [sp, #8]
	ldr r0, [r0]
	adds r1, r1, #2
	bl FUN_02012A60
	adds r0, r4, #0
	bl ov21_021D4DA0
	movs r6, #0
_021DD388:
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	movs r1, #9
	movs r2, #2
	bl ov21_021D4D6C
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	adds r3, r6, #0
	ldr r0, [r7, r0]
	ldr r2, _021DD3F8 @ =0x000002B9
	adds r1, r4, #0
	adds r3, #0x24
	bl ov21_021D4DAC
	movs r1, #0
	str r1, [sp, #0x18]
	movs r1, #0x48
	subs r0, r1, r0
	lsrs r0, r0, #1
	adds r0, #8
	str r0, [sp, #0x1c]
	movs r0, #0x20
	str r0, [sp, #0x20]
	add r0, sp, #0xc
	str r4, [sp, #0x10]
	bl ov21_021D4CA0
	adds r1, r5, #0
	adds r1, #0xe0
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, [sp, #8]
	ldr r0, [r0]
	adds r1, r1, #2
	bl FUN_02012A60
	adds r0, r4, #0
	bl ov21_021D4DA0
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #3
	blt _021DD388
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021DD3F4: .4byte 0x0000177E
_021DD3F8: .4byte 0x000002B9
	thumb_func_end ov21_021DD2E0

	thumb_func_start ov21_021DD3FC
ov21_021DD3FC: @ 0x021DD3FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl ov21_021D4D1C
	movs r4, #0
_021DD40A:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl ov21_021D4D1C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021DD40A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DD3FC

	thumb_func_start ov21_021DD420
ov21_021DD420: @ 0x021DD420
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021FE0
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02012AF0
	movs r4, #0
	movs r6, #1
_021DD440:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r1, r6, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021DD440
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DD420

	thumb_func_start ov21_021DD458
ov21_021DD458: @ 0x021DD458
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021FE0
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	movs r4, #0
	adds r6, r4, #0
_021DD478:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r1, r6, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021DD478
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DD458

	thumb_func_start ov21_021DD490
ov21_021DD490: @ 0x021DD490
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021DD420
	ldr r0, [r4, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DD4F6
	cmp r6, #0
	beq _021DD4D2
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	b _021DD4F6
_021DD4D2:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021DD4F6:
	movs r1, #0x5b
	ldr r0, [r5]
	lsls r1, r1, #2
	adds r1, r0, r1
	bl ov21_021D24FC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DD490

	thumb_func_start ov21_021DD508
ov21_021DD508: @ 0x021DD508
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r2, #8]
	adds r5, r1, #0
	adds r4, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5]
	beq _021DD528
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	b _021DD532
_021DD528:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
_021DD532:
	cmp r0, #0
	beq _021DD544
	cmp r4, #0
	beq _021DD540
	adds r0, r6, #0
	bl ov21_021DD458
_021DD540:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021DD544:
	movs r1, #0x5b
	ldr r0, [r5]
	lsls r1, r1, #2
	adds r1, r0, r1
	bl ov21_021D24FC
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DD508

	thumb_func_start ov21_021DD554
ov21_021DD554: @ 0x021DD554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	bl ov21_021DD420
	cmp r4, #0
	bne _021DD57E
	ldr r0, [r5, #8]
	movs r1, #0x28
	str r0, [sp]
	ldr r0, [r5, #0x10]
	movs r3, #0x78
	str r0, [sp, #4]
	ldr r0, _021DD5E0 @ =0x00000814
	ldr r2, [r5, #4]
	adds r0, r6, r0
	bl ov21_021D2648
_021DD57E:
	ldr r0, [r7, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DD5DC
	cmp r4, #0
	beq _021DD5B6
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r2, #0x2f
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r1, [r5, #0x10]
	subs r2, #0x3f
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021DD5B6:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r3, #0x2f
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r1, [r5, #0x10]
	subs r3, #0x3f
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov21_021D23F8
_021DD5DC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DD5E0: .4byte 0x00000814
	thumb_func_end ov21_021DD554

	thumb_func_start ov21_021DD5E4
ov21_021DD5E4: @ 0x021DD5E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bne _021DD60C
	ldr r0, _021DD664 @ =0x00000814
	adds r0, r5, r0
	bl ov21_021D2664
	str r0, [sp]
	ldr r2, _021DD664 @ =0x00000814
	ldr r0, [r4]
	ldr r1, [r5, r2]
	adds r2, r2, #4
	ldr r2, [r5, r2]
	bl ov21_021D2164
	b _021DD610
_021DD60C:
	movs r0, #1
	str r0, [sp]
_021DD610:
	ldr r0, [r6, #8]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4]
	beq _021DD62A
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #4]
	b _021DD636
_021DD62A:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #4]
_021DD636:
	movs r1, #0
	add r2, sp, #0
_021DD63A:
	ldr r0, [r2]
	cmp r0, #0
	beq _021DD648
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #2
	blt _021DD63A
_021DD648:
	cmp r1, #2
	bne _021DD65C
	cmp r7, #1
	bne _021DD656
	adds r0, r5, #0
	bl ov21_021DD458
_021DD656:
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DD65C:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DD664: .4byte 0x00000814
	thumb_func_end ov21_021DD5E4

	thumb_func_start ov21_021DD668
ov21_021DD668: @ 0x021DD668
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r6, r2, #0
	adds r0, r0, #4
	movs r1, #0
	bl FUN_0201ADA4
	str r6, [sp]
	ldr r3, _021DD6B4 @ =0x000007F8
	ldr r0, [r4]
	movs r1, #0x1e
	movs r2, #1
	adds r3, r5, r3
	bl ov21_021D2808
	ldr r1, _021DD6B8 @ =0x000007F4
	movs r2, #1
	str r0, [r5, r1]
	str r6, [sp]
	lsls r3, r2, #0xb
	ldr r0, [r4]
	movs r1, #0x1f
	adds r3, r5, r3
	bl ov21_021D2808
	ldr r1, _021DD6BC @ =0x000007FC
	str r0, [r5, r1]
	ldr r0, [r4]
	movs r1, #8
	adds r0, r0, #4
	bl FUN_0201C2B4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021DD6B4: .4byte 0x000007F8
_021DD6B8: .4byte 0x000007F4
_021DD6BC: .4byte 0x000007FC
	thumb_func_end ov21_021DD668

	thumb_func_start ov21_021DD6C0
ov21_021DD6C0: @ 0x021DD6C0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	ldr r0, _021DD708 @ =0x000007F4
	ldr r0, [r5, r0]
	bl FUN_020181C4
	ldr r1, _021DD708 @ =0x000007F4
	movs r2, #0
	str r2, [r5, r1]
	adds r0, r1, #4
	adds r1, #8
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl FUN_020181C4
	ldr r0, _021DD70C @ =0x000007FC
	movs r1, #0
	str r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r4]
	adds r0, r0, #4
	bl FUN_0201C2B4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DD708: .4byte 0x000007F4
_021DD70C: .4byte 0x000007FC
	thumb_func_end ov21_021DD6C0

	thumb_func_start ov21_021DD710
ov21_021DD710: @ 0x021DD710
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r2, #0
	adds r6, r0, #0
	str r1, [sp, #0x28]
	str r3, [sp, #0x2c]
	bl ov21_021DD8B4
	adds r0, r4, #0
	adds r0, #0x1c
	str r0, [sp]
	ldr r0, [r4, #4]
	movs r1, #0x1e
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r3, _021DD8A4 @ =0x00000808
	str r0, [sp, #8]
	adds r0, r6, #0
	ldr r3, [r6, r3]
	adds r0, #0xec
	adds r2, r1, #0
	bl ov21_021D5948
	ldr r1, _021DD8A8 @ =0x00000838
	str r0, [r6, r1]
	ldr r0, [r4, #0x20]
	subs r1, r0, #1
	ldr r0, [r4, #0xc]
	adds r7, r1, r0
	ldr r0, [sp, #0x2c]
	adds r1, r7, #0
	bl FUN_02018184
	adds r5, r0, #0
	movs r1, #0
	cmp r7, #0
	ble _021DD776
_021DD75A:
	ldr r2, [r4, #0xc]
	cmp r1, r2
	bhs _021DD766
	ldr r0, [r4, #4]
	ldrb r0, [r0, r1]
	b _021DD76E
_021DD766:
	subs r2, r1, r2
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #2
	ldr r0, [r0, r2]
_021DD76E:
	strb r0, [r5, r1]
	adds r1, r1, #1
	cmp r1, r7
	blt _021DD75A
_021DD776:
	adds r0, r4, #0
	adds r0, #0x2c
	str r0, [sp]
	str r5, [sp, #4]
	movs r0, #0x47
	lsls r0, r0, #4
	movs r1, #0x1e
	ldr r3, _021DD8A4 @ =0x00000808
	str r7, [sp, #8]
	ldr r3, [r6, r3]
	adds r0, r6, r0
	adds r2, r1, #0
	bl ov21_021D5948
	movs r1, #0x21
	lsls r1, r1, #6
	str r0, [r6, r1]
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r6, #0
	movs r1, #0x1e
	adds r0, #0xec
	adds r2, r1, #0
	bl ov21_021D5214
	movs r0, #0x47
	lsls r0, r0, #4
	movs r1, #0x1e
	adds r0, r6, r0
	adds r2, r1, #0
	bl ov21_021D5214
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	bl ov21_021D37BC
	ldr r1, _021DD8AC @ =0x0000015D
	cmp r0, r1
	bne _021DD7D6
	movs r1, #5
	str r1, [sp, #0x38]
	movs r1, #0x5c
	str r1, [sp, #0x34]
	movs r1, #0xe
	movs r0, #4
	str r1, [sp, #0x30]
	b _021DD7E4
_021DD7D6:
	movs r1, #1
	str r1, [sp, #0x38]
	movs r1, #0x5c
	str r1, [sp, #0x34]
	movs r1, #0x20
	movs r0, #0
	str r1, [sp, #0x30]
_021DD7E4:
	adds r1, r6, #0
	movs r2, #0
	adds r1, #0xc4
	str r2, [r1]
	ldr r1, [sp, #0x30]
	ldr r3, [sp, #0x34]
	str r1, [sp]
	movs r1, #5
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, _021DD8B0 @ =0x00000804
	ldr r2, [r6, r1]
	adds r1, #0x30
	str r2, [sp, #0xc]
	adds r2, r4, #0
	adds r2, #0x14
	str r2, [sp, #0x10]
	movs r2, #2
	str r2, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #8]
	movs r2, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x20]
	adds r0, r6, r1
	adds r1, r6, #0
	str r0, [sp, #0x24]
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, r6, #4
	bl ov21_021D5A20
	adds r1, r6, #0
	adds r1, #0xc4
	str r0, [r1]
	ldr r0, [r4, #0x18]
	subs r1, r0, #1
	ldr r0, [r4, #0x10]
	adds r7, r1, r0
	ldr r0, [sp, #0x2c]
	adds r1, r7, #0
	bl FUN_02018184
	adds r5, r0, #0
	movs r1, #0
	cmp r7, #0
	ble _021DD860
_021DD844:
	ldr r2, [r4, #0x10]
	cmp r1, r2
	bhs _021DD850
	ldr r0, [r4, #8]
	ldrb r0, [r0, r1]
	b _021DD858
_021DD850:
	subs r2, r1, r2
	ldr r0, [r4, #0x14]
	lsls r2, r2, #2
	ldr r0, [r0, r2]
_021DD858:
	strb r0, [r5, r1]
	adds r1, r1, #1
	cmp r1, r7
	blt _021DD844
_021DD860:
	ldr r0, [sp, #0x30]
	ldr r1, _021DD8B0 @ =0x00000804
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	adds r4, #0x24
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	movs r0, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x38]
	adds r1, #0x38
	str r0, [sp, #0x18]
	str r5, [sp, #0x1c]
	adds r0, r6, r1
	str r7, [sp, #0x20]
	adds r1, r6, #0
	str r0, [sp, #0x24]
	adds r1, #0xc4
	ldr r1, [r1]
	ldr r3, [sp, #0x34]
	adds r0, r6, #4
	movs r2, #0x2c
	bl ov21_021D5A20
	adds r6, #0xc4
	str r0, [r6]
	adds r0, r5, #0
	bl FUN_020181C4
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DD8A4: .4byte 0x00000808
_021DD8A8: .4byte 0x00000838
_021DD8AC: .4byte 0x0000015D
_021DD8B0: .4byte 0x00000804
	thumb_func_end ov21_021DD710

	thumb_func_start ov21_021DD8B4
ov21_021DD8B4: @ 0x021DD8B4
	push {r3, r4, r5, r6, r7, lr}
	movs r2, #0xe1
	adds r6, r0, #0
	adds r0, #0xec
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	movs r2, #0x47
	lsls r2, r2, #4
	adds r0, r6, r2
	movs r1, #0
	subs r2, #0xec
	blx FUN_020D5124
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r4, #0
	cmp r0, #0
	ble _021DD8F8
	adds r5, r6, #0
	adds r7, r4, #0
_021DD8E2:
	ldr r0, [r5, #4]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _021DD8E2
_021DD8F8:
	movs r0, #0
	adds r6, #0xc4
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DD8B4

	thumb_func_start ov21_021DD900
ov21_021DD900: @ 0x021DD900
	movs r0, #0
	str r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021DD900

	thumb_func_start ov21_021DD908
ov21_021DD908: @ 0x021DD908
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r2, [r5]
	ldr r1, _021DD958 @ =0x00001768
	movs r4, #0
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021DD928
	ldr r3, _021DD95C @ =0x021E9D7A
	ldr r1, _021DD960 @ =0x0000FFFF
_021DD91E:
	adds r3, r3, #2
	ldrh r2, [r3]
	adds r4, r4, #1
	cmp r2, r1
	bne _021DD91E
_021DD928:
	cmp r4, #0
	beq _021DD934
	adds r1, r4, #0
	bl FUN_02018144
	b _021DD936
_021DD934:
	movs r0, #0
_021DD936:
	str r4, [r6]
	ldr r3, [r5]
	ldr r2, _021DD958 @ =0x00001768
	movs r1, #0
	ldr r2, [r3, r2]
	cmp r2, #0
	bne _021DD956
	ldr r4, _021DD95C @ =0x021E9D7A
	ldr r2, _021DD960 @ =0x0000FFFF
_021DD948:
	ldrh r3, [r4]
	adds r4, r4, #2
	strb r3, [r0, r1]
	ldrh r3, [r4]
	adds r1, r1, #1
	cmp r3, r2
	bne _021DD948
_021DD956:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DD958: .4byte 0x00001768
_021DD95C: .4byte 0x021E9D7A
_021DD960: .4byte 0x0000FFFF
	thumb_func_end ov21_021DD908

	thumb_func_start ov21_021DD964
ov21_021DD964: @ 0x021DD964
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	movs r0, #2
	lsls r0, r0, #0xa
	ldr r3, [r5, r0]
	movs r0, #5
	str r0, [sp]
	movs r0, #0x47
	lsls r0, r0, #4
	adds r0, r5, r0
	str r0, [sp, #4]
	movs r1, #0x1e
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0x59
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldrh r2, [r3, #2]
	ldr r1, [r3, #0x14]
	ldrh r3, [r3]
	ldr r0, [r4]
	lsls r2, r2, #0x13
	lsls r3, r3, #0x13
	adds r0, r0, #4
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl ov21_021D517C
	ldr r0, _021DD9E4 @ =0x000007F8
	movs r1, #0x1e
	ldr r3, [r5, r0]
	movs r0, #5
	str r0, [sp]
	adds r5, #0xec
	str r5, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0x59
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldrh r2, [r3, #2]
	ldr r1, [r3, #0x14]
	ldrh r3, [r3]
	ldr r0, [r4]
	lsls r2, r2, #0x13
	lsls r3, r3, #0x13
	adds r0, r0, #4
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl ov21_021D517C
	ldr r0, [r4]
	adds r0, r0, #4
	bl FUN_0201A954
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DD9E4: .4byte 0x000007F8
	thumb_func_end ov21_021DD964

	thumb_func_start ov21_021DD9E8
ov21_021DD9E8: @ 0x021DD9E8
	push {r4, lr}
	ldr r1, _021DDA44 @ =0x00000834
	adds r4, r0, #0
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021DDA28
	adds r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021DDA28
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021DDA28
	adds r1, #0xc
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021DDA28
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021CAC
	adds r4, #0xcc
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_020129D0
	pop {r4, pc}
_021DDA28:
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r4, #0xcc
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_020129D0
	pop {r4, pc}
	nop
_021DDA44: .4byte 0x00000834
	thumb_func_end ov21_021DD9E8

	thumb_func_start ov21_021DDA48
ov21_021DDA48: @ 0x021DDA48
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	movs r7, #1
_021DDA52:
	cmp r4, r6
	bne _021DDA66
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	adds r1, r7, #0
	ldr r0, [r0]
	bl FUN_020129D0
	b _021DDA74
_021DDA66:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_020129D0
_021DDA74:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021DDA52
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DDA48

	thumb_func_start ov21_021DDA80
ov21_021DDA80: @ 0x021DDA80
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	adds r4, r3, #0
	adds r7, r1, #0
	ldr r2, [r5]
	ldr r1, [r4]
	cmp r2, r1
	beq _021DDAB8
	ldr r3, [sp, #0x18]
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021DD710
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov21_021DD964
	ldr r1, [r6, #4]
	adds r0, r5, #0
	bl ov21_021DDA48
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DD9E8
	ldr r0, [r4]
	str r0, [r5]
_021DDAB8:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DDA80

	thumb_func_start ov21_021DDABC
ov21_021DDABC: @ 0x021DDABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r6, r2, #0
	bl ov21_021D37BC
	adds r7, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021DDADE
	cmp r0, #1
	beq _021DDAE8
	cmp r0, #2
	beq _021DDAF2
	b _021DDAFC
_021DDADE:
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp]
	b _021DDB00
_021DDAE8:
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp]
	b _021DDB00
_021DDAF2:
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #7
	str r0, [sp]
	b _021DDB00
_021DDAFC:
	bl FUN_02022974
_021DDB00:
	adds r0, r5, #0
	ldr r2, [sp, #4]
	adds r0, #0x14
	adds r1, r7, #0
	adds r3, r6, #0
	bl ov21_021D57B4
	adds r0, r5, #0
	ldr r2, [sp]
	adds r0, #0x1c
	adds r1, r7, #0
	adds r3, r6, #0
	bl ov21_021D57B4
	ldr r0, [r4]
	bl ov21_021D3428
	cmp r0, #0
	bne _021DDB46
	adds r0, r5, #0
	adds r0, #0x24
	adds r1, r7, #0
	movs r2, #3
	adds r3, r6, #0
	bl ov21_021D57B4
	adds r5, #0x2c
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #8
	adds r3, r6, #0
	bl ov21_021D57B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021DDB46:
	adds r0, r5, #0
	adds r0, #0x24
	adds r1, r7, #0
	movs r2, #4
	adds r3, r6, #0
	bl ov21_021D57B4
	adds r5, #0x2c
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #9
	adds r3, r6, #0
	bl ov21_021D57B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DDABC

	thumb_func_start ov21_021DDB68
ov21_021DDB68: @ 0x021DDB68
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x14
	bl ov21_021D5844
	adds r0, r4, #0
	adds r0, #0x1c
	bl ov21_021D5844
	adds r0, r4, #0
	adds r0, #0x24
	bl ov21_021D5844
	adds r4, #0x2c
	adds r0, r4, #0
	bl ov21_021D5844
	pop {r4, pc}
	thumb_func_end ov21_021DDB68

	thumb_func_start ov21_021DDB8C
ov21_021DDB8C: @ 0x021DDB8C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _021DDBC8 @ =0x0000080C
	movs r1, #0
	str r1, [r6, r0]
	adds r0, r0, #4
	str r1, [r6, r0]
	movs r0, #2
	bl FUN_0201FF0C
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r4, #0
	cmp r0, #0
	ble _021DDBC6
	adds r5, r6, #0
	adds r7, r4, #0
_021DDBB0:
	ldr r0, [r5, #4]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _021DDBB0
_021DDBC6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DDBC8: .4byte 0x0000080C
	thumb_func_end ov21_021DDB8C

	thumb_func_start ov21_021DDBCC
ov21_021DDBCC: @ 0x021DDBCC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x10
	str r0, [sp]
	ldr r0, _021DDC10 @ =0x04000050
	movs r1, #0xa
	movs r2, #8
	movs r3, #0
	blx FUN_020BF55C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r4, #0
	cmp r0, #0
	ble _021DDC0E
	adds r5, r6, #0
	adds r7, r4, #0
_021DDBF8:
	ldr r0, [r5, #4]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _021DDBF8
_021DDC0E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DDC10: .4byte 0x04000050
	thumb_func_end ov21_021DDBCC

	thumb_func_start ov21_021DDC14
ov21_021DDC14: @ 0x021DDC14
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _021DDCEC @ =0x0000080C
	ldr r1, [r5, r0]
	cmp r1, #0x20
	blt _021DDC6A
	movs r4, #0
	str r4, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021DDC5A
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	ble _021DDC50
	adds r6, r5, #0
	movs r7, #1
_021DDC3A:
	ldr r0, [r6, #4]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, r0
	blt _021DDC3A
_021DDC50:
	movs r0, #0x81
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r5, r0]
	b _021DDC6A
_021DDC5A:
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x81
	adds r1, r4, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021DDC6A:
	ldr r0, _021DDCEC @ =0x0000080C
	ldr r1, [r5, r0]
	cmp r1, #0x10
	blt _021DDC76
	movs r0, #0x20
	subs r1, r0, r1
_021DDC76:
	lsls r2, r1, #0xc
	asrs r1, r2, #0x1f
	lsrs r0, r2, #0x10
	lsls r3, r1, #0x10
	movs r1, #2
	orrs r3, r0
	lsls r2, r2, #0x10
	movs r0, #0
	lsls r1, r1, #0xa
	adds r4, r2, r1
	adcs r3, r0
	lsls r2, r3, #0x14
	lsrs r0, r4, #0xc
	orrs r0, r2
	lsls r1, r1, #5
	blx FUN_020BCFD0
	asrs r1, r0, #0xc
	movs r0, #1
	lsls r0, r0, #0xc
	orrs r1, r0
	ldr r0, _021DDCF0 @ =0x04000052
	strh r1, [r0]
	ldr r0, _021DDCEC @ =0x0000080C
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0x20
	blt _021DDCEA
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021DDCC4
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	pop {r3, r4, r5, r6, r7, pc}
_021DDCC4:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r4, #0
	cmp r0, #0
	ble _021DDCEA
	adds r6, r5, #0
	adds r7, r4, #0
_021DDCD4:
	ldr r0, [r6, #4]
	adds r1, r7, #0
	bl FUN_02021CAC
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, r0
	blt _021DDCD4
_021DDCEA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DDCEC: .4byte 0x0000080C
_021DDCF0: .4byte 0x04000052
	thumb_func_end ov21_021DDC14

	thumb_func_start ov21_021DDCF4
ov21_021DDCF4: @ 0x021DDCF4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl ov21_021D2170
	adds r6, r0, #0
	ldr r0, [r4]
	bl ov21_021D37BC
	adds r2, r0, #0
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0x78
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4]
	movs r3, #2
	bl ov21_021D1890
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DDCF4

	thumb_func_start ov21_021DDD2C
ov21_021DDD2C: @ 0x021DDD2C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021DDDA4
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021DDDF0
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021DDE18
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021DDE48
	str r0, [r5, #0x24]
	ldr r0, _021DDD74 @ =ov21_021DDE4C
	str r0, [r5, #8]
	ldr r0, _021DDD78 @ =ov21_021DDE84
	str r0, [r5, #0xc]
	ldr r0, _021DDD7C @ =ov21_021DDEB4
	str r0, [r5, #0x10]
	ldr r0, _021DDD80 @ =ov21_021DDEC8
	str r0, [r5, #0x14]
	ldr r0, _021DDD84 @ =ov21_021DDF80
	str r0, [r5, #0x18]
	ldr r0, _021DDD88 @ =ov21_021DDFB4
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DDD74: .4byte ov21_021DDE4C
_021DDD78: .4byte ov21_021DDE84
_021DDD7C: .4byte ov21_021DDEB4
_021DDD80: .4byte ov21_021DDEC8
_021DDD84: .4byte ov21_021DDF80
_021DDD88: .4byte ov21_021DDFB4
	thumb_func_end ov21_021DDD2C

	thumb_func_start ov21_021DDD8C
ov21_021DDD8C: @ 0x021DDD8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021DDE1C
	ldr r0, [r4, #4]
	bl ov21_021DDE30
	ldr r0, [r4, #0x20]
	bl ov21_021DDE44
	pop {r4, pc}
	thumb_func_end ov21_021DDD8C

	thumb_func_start ov21_021DDDA4
ov21_021DDDA4: @ 0x021DDDA4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DDDB6
	bl FUN_02022974
_021DDDB6:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	movs r1, #6
	bl ov21_021D1410
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #3
	bl ov21_021D1430
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DDDA4

	thumb_func_start ov21_021DDDF0
ov21_021DDDF0: @ 0x021DDDF0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DDE02
	bl FUN_02022974
_021DDE02:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DDDF0

	thumb_func_start ov21_021DDE18
ov21_021DDE18: @ 0x021DDE18
	movs r0, #0
	bx lr
	thumb_func_end ov21_021DDE18

	thumb_func_start ov21_021DDE1C
ov21_021DDE1C: @ 0x021DDE1C
	push {r4, lr}
	adds r4, r0, #0
	bne _021DDE26
	bl FUN_02022974
_021DDE26:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DDE1C

	thumb_func_start ov21_021DDE30
ov21_021DDE30: @ 0x021DDE30
	push {r4, lr}
	adds r4, r0, #0
	bne _021DDE3A
	bl FUN_02022974
_021DDE3A:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DDE30

	thumb_func_start ov21_021DDE44
ov21_021DDE44: @ 0x021DDE44
	bx lr
	.align 2, 0
	thumb_func_end ov21_021DDE44

	thumb_func_start ov21_021DDE48
ov21_021DDE48: @ 0x021DDE48
	movs r0, #0
	bx lr
	thumb_func_end ov21_021DDE48

	thumb_func_start ov21_021DDE4C
ov21_021DDE4C: @ 0x021DDE4C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r6, r1, #0
	movs r1, #0x28
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DDE62
	bl FUN_02022974
_021DDE62:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x28
	blx FUN_020D5124
	str r4, [r5, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DE5A4
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DE2EC
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DDE4C

	thumb_func_start ov21_021DDE84
ov21_021DDE84: @ 0x021DDE84
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021DDE94
	movs r0, #1
	pop {r3, r4, r5, pc}
_021DDE94:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021DDE9E
	movs r0, #0
	pop {r3, r4, r5, pc}
_021DDE9E:
	ldr r0, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021DDEB0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021DE334
_021DDEB0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DDE84

	thumb_func_start ov21_021DDEB4
ov21_021DDEB4: @ 0x021DDEB4
	push {r4, lr}
	ldr r4, [r0, #8]
	adds r0, r4, #0
	bl ov21_021DE484
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021DDEB4

	thumb_func_start ov21_021DDEC8
ov21_021DDEC8: @ 0x021DDEC8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r3, #8]
	adds r4, r1, #0
	str r0, [sp]
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021DDF7C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DDEE8: @ jump table
	.2byte _021DDEF0 - _021DDEE8 - 2 @ case 0
	.2byte _021DDF0A - _021DDEE8 - 2 @ case 1
	.2byte _021DDF3E - _021DDEE8 - 2 @ case 2
	.2byte _021DDF60 - _021DDEE8 - 2 @ case 3
_021DDEF0:
	ldr r0, [r4, #4]
	movs r1, #0x2c
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x2c
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DDF7C
_021DDF0A:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021DE100
	ldr r2, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021DE49C
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov21_021DE4D4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021DE058
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DDF7C
_021DDF3E:
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021DE4D4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021DE0C4
	cmp r0, #0
	beq _021DDF7C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DDF7C
_021DDF60:
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021DE4D4
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0
	bl ov21_021D25AC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DDF7C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DDEC8

	thumb_func_start ov21_021DDF80
ov21_021DDF80: @ 0x021DDF80
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r3, #8]
	adds r5, r1, #0
	adds r4, r2, #0
	str r0, [sp]
	ldr r7, [r5, #8]
	ldr r2, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov21_021DE49C
	ldr r1, [sp]
	adds r0, r6, #0
	adds r2, r4, #0
	bl ov21_021DE630
	ldr r3, [r5, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021DE4D4
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DDF80

	thumb_func_start ov21_021DDFB4
ov21_021DDFB4: @ 0x021DDFB4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021DE03C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DDFD0: @ jump table
	.2byte _021DDFDA - _021DDFD0 - 2 @ case 0
	.2byte _021DDFFC - _021DDFD0 - 2 @ case 1
	.2byte _021DE012 - _021DDFD0 - 2 @ case 2
	.2byte _021DE024 - _021DDFD0 - 2 @ case 3
	.2byte _021DE038 - _021DDFD0 - 2 @ case 4
_021DDFDA:
	movs r0, #0x79
	ldr r1, [r6]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	bl ov21_021D25AC
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov21_021DE058
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE03C
_021DDFFC:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl ov21_021DE0C4
	cmp r0, #0
	beq _021DE03C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE03C
_021DE012:
	ldr r2, [r4, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021DE128
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE03C
_021DE024:
	ldr r0, [r5, #0x14]
	bl FUN_020181C4
	ldr r0, [r4, #8]
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE03C
_021DE038:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DE03C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DDFB4

	thumb_func_start ov21_021DE040
ov21_021DE040: @ 0x021DE040
	ldr r3, _021DE048 @ =FUN_02021FE0
	ldr r0, [r0]
	movs r1, #1
	bx r3
	.align 2, 0
_021DE048: .4byte FUN_02021FE0
	thumb_func_end ov21_021DE040

	thumb_func_start ov21_021DE04C
ov21_021DE04C: @ 0x021DE04C
	ldr r3, _021DE054 @ =FUN_02021FE0
	ldr r0, [r0]
	movs r1, #0
	bx r3
	.align 2, 0
_021DE054: .4byte FUN_02021FE0
	thumb_func_end ov21_021DE04C

	thumb_func_start ov21_021DE058
ov21_021DE058: @ 0x021DE058
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021DE040
	ldr r0, [r4, #8]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021DE0C0
	cmp r6, #0
	beq _021DE09C
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0x19
	ldr r2, [r5]
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021DE09C:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0x19
	ldr r3, [r5]
	lsls r0, r0, #4
	adds r0, r3, r0
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021DE0C0:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021DE058

	thumb_func_start ov21_021DE0C4
ov21_021DE0C4: @ 0x021DE0C4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r2, #8]
	adds r5, r1, #0
	adds r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021DE0E4
	movs r0, #0x19
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov21_021D2424
	b _021DE0EA
_021DE0E4:
	movs r0, #2
	bl FUN_0200AC1C
_021DE0EA:
	cmp r0, #0
	beq _021DE0FC
	cmp r4, #0
	beq _021DE0F8
	adds r0, r6, #0
	bl ov21_021DE04C
_021DE0F8:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021DE0FC:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DE0C4

	thumb_func_start ov21_021DE100
ov21_021DE100: @ 0x021DE100
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021DE13C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021DE1A4
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021DE258
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DE100

	thumb_func_start ov21_021DE128
ov21_021DE128: @ 0x021DE128
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021DE2E0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DE224
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DE128

	thumb_func_start ov21_021DE13C
ov21_021DE13C: @ 0x021DE13C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x22
	movs r3, #6
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4]
	movs r1, #0x45
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #6
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DE13C

	thumb_func_start ov21_021DE1A4
ov21_021DE1A4: @ 0x021DE1A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021DE218 @ =0x000017D9
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x69
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r5, #4]
	bl FUN_0200A3DC
	ldr r0, [r5, #4]
	bl FUN_02009D4C
	ldr r0, _021DE21C @ =0x000017D7
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x67
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0xc]
	ldr r0, _021DE220 @ =0x000017D8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x68
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x10]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DE218: .4byte 0x000017D9
_021DE21C: .4byte 0x000017D7
_021DE220: .4byte 0x000017D8
	thumb_func_end ov21_021DE1A4

	thumb_func_start ov21_021DE224
ov21_021DE224: @ 0x021DE224
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r1]
	bl FUN_0200A4E4
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DE224

	thumb_func_start ov21_021DE258
ov21_021DE258: @ 0x021DE258
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1]
	ldr r3, _021DE2D8 @ =0x000017D8
	adds r5, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	adds r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, _021DE2DC @ =0x0000083F
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x1f
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	movs r0, #3
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	str r1, [sp, #0x34]
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5]
	bl FUN_02021D6C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
_021DE2D8: .4byte 0x000017D8
_021DE2DC: .4byte 0x0000083F
	thumb_func_end ov21_021DE258

	thumb_func_start ov21_021DE2E0
ov21_021DE2E0: @ 0x021DE2E0
	ldr r3, _021DE2E8 @ =FUN_02021BD4
	ldr r0, [r0]
	bx r3
	nop
_021DE2E8: .4byte FUN_02021BD4
	thumb_func_end ov21_021DE2E0

	thumb_func_start ov21_021DE2EC
ov21_021DE2EC: @ 0x021DE2EC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #4
	bl FUN_02018144
	str r0, [r5, #0x14]
	movs r1, #0xfe
	strb r1, [r0]
	ldr r1, [r5]
	ldr r0, [r5, #0x14]
	adds r3, r5, #0
	strb r1, [r0, #1]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x14]
	ldr r2, _021DE330 @ =ov21_021DE44C
	strb r1, [r0, #2]
	ldr r0, [r5, #0x14]
	movs r1, #0x20
	strb r1, [r0, #3]
	str r4, [r5, #0x18]
	str r5, [r5, #0x1c]
	str r6, [sp]
	ldr r0, [r5, #0x14]
	movs r1, #1
	adds r3, #0x18
	bl FUN_02023FCC
	str r0, [r5, #0x10]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021DE330: .4byte ov21_021DE44C
	thumb_func_end ov21_021DE2EC

	thumb_func_start ov21_021DE334
ov21_021DE334: @ 0x021DE334
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	adds r5, r1, #0
	bl FUN_0202404C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021DE3D0
	ldr r1, [r4]
	ldr r0, [r4, #0x14]
	strb r1, [r0, #1]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x14]
	strb r1, [r0, #2]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DE334

	thumb_func_start ov21_021DE358
ov21_021DE358: @ 0x021DE358
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021DE3C8 @ =0x021BF6BC
	adds r4, r1, #0
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	bne _021DE3C4
	ldr r0, [r4, #8]
	bl ov21_021E33BC
	cmp r0, #1
	bne _021DE3C4
	ldr r0, [r4, #4]
	bl ov21_021D3998
	cmp r0, #2
	bne _021DE3C4
	ldr r0, [r4]
	bl ov21_021DCA28
	ldr r1, _021DE3CC @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	tst r1, r2
	beq _021DE3A4
	subs r1, r0, #1
	bpl _021DE390
	movs r1, #0
_021DE390:
	ldr r0, [r4]
	bl ov21_021DCA30
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DE5A4
	movs r0, #1
	str r0, [r5, #0x24]
	pop {r3, r4, r5, pc}
_021DE3A4:
	movs r1, #0x10
	tst r1, r2
	beq _021DE3C4
	adds r1, r0, #1
	cmp r1, #3
	blt _021DE3B2
	movs r1, #2
_021DE3B2:
	ldr r0, [r4]
	bl ov21_021DCA30
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DE5A4
	movs r0, #1
	str r0, [r5, #0x24]
_021DE3C4:
	pop {r3, r4, r5, pc}
	nop
_021DE3C8: .4byte 0x021BF6BC
_021DE3CC: .4byte 0x021BF67C
	thumb_func_end ov21_021DE358

	thumb_func_start ov21_021DE3D0
ov21_021DE3D0: @ 0x021DE3D0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	str r2, [r5, #0x24]
	ldr r3, [r5, #0x20]
	adds r4, r1, #0
	cmp r3, #0
	beq _021DE442
	ldr r0, _021DE448 @ =0x021BF6BC
	ldrh r1, [r0, #0x22]
	cmp r1, #0
	beq _021DE43E
	ldrh r2, [r0, #0x1c]
	ldr r1, [r5, #8]
	subs r1, r2, r1
	str r1, [r5]
	ldrh r1, [r0, #0x1e]
	ldr r0, [r5, #0xc]
	subs r0, r1, r0
	str r0, [r5, #4]
	ldr r0, [r5]
	cmp r0, #0x18
	bge _021DE402
	movs r0, #0x18
	str r0, [r5]
_021DE402:
	ldr r0, [r5]
	cmp r0, #0xf6
	ble _021DE40C
	movs r0, #0xf6
	str r0, [r5]
_021DE40C:
	ldr r0, [r5, #4]
	cmp r0, #0x40
	bge _021DE416
	movs r0, #0x40
	str r0, [r5, #4]
_021DE416:
	ldr r0, [r5]
	bl ov21_021DE5DC
	ldr r1, [r5, #4]
	adds r0, #0x84
	cmp r1, r0
	ble _021DE426
	str r0, [r5, #4]
_021DE426:
	ldr r0, [r5]
	movs r1, #0x55
	blx FUN_020E1F6C
	adds r1, r0, #0
	cmp r1, #2
	ble _021DE436
	movs r1, #2
_021DE436:
	ldr r0, [r4]
	bl ov21_021DCA30
	pop {r3, r4, r5, pc}
_021DE43E:
	str r2, [r5, #0x20]
	pop {r3, r4, r5, pc}
_021DE442:
	bl ov21_021DE358
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DE448: .4byte 0x021BF6BC
	thumb_func_end ov21_021DE3D0

	thumb_func_start ov21_021DE44C
ov21_021DE44C: @ 0x021DE44C
	push {r4, lr}
	ldr r0, [r2]
	ldr r4, [r2, #4]
	cmp r1, #0
	bne _021DE47A
	ldr r0, [r0, #8]
	movs r1, #1
	bl ov21_021E33B4
	ldr r0, _021DE47C @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	str r0, [r4, #0x20]
	ldr r0, _021DE480 @ =0x021BF6BC
	ldr r1, [r4]
	ldrh r2, [r0, #0x1c]
	subs r1, r2, r1
	str r1, [r4, #8]
	ldrh r1, [r0, #0x1e]
	ldr r0, [r4, #4]
	subs r0, r1, r0
	str r0, [r4, #0xc]
_021DE47A:
	pop {r4, pc}
	.align 2, 0
_021DE47C: .4byte 0x000005DD
_021DE480: .4byte 0x021BF6BC
	thumb_func_end ov21_021DE44C

	thumb_func_start ov21_021DE484
ov21_021DE484: @ 0x021DE484
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02024034
	ldr r0, [r4, #0x14]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x14]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DE484

	thumb_func_start ov21_021DE49C
ov21_021DE49C: @ 0x021DE49C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r2]
	adds r4, r1, #0
	lsls r0, r0, #0xc
	str r0, [sp]
	ldr r0, [r2, #4]
	lsls r1, r0, #0xc
	movs r0, #3
	lsls r0, r0, #0x12
	str r1, [sp, #4]
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r5]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r0, [r4]
	bl ov21_021DCA28
	adds r1, r0, #0
	ldr r0, [r5]
	bl FUN_02021D6C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DE49C

	thumb_func_start ov21_021DE4D4
ov21_021DE4D4: @ 0x021DE4D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r2]
	adds r7, r1, #0
	str r3, [sp]
	movs r4, #0
	bl ov21_021DCA28
	ldr r1, [r5, #0x18]
	adds r6, r0, #0
	cmp r1, r6
	bne _021DE4F8
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DE4F8
	ldr r0, [r5, #0x1c]
	cmp r0, r1
	beq _021DE5A2
_021DE4F8:
	ldr r0, [r5, #0x1c]
	cmp r0, r6
	beq _021DE504
	str r0, [r5, #0x18]
	movs r0, #0
	str r0, [r5, #0x24]
_021DE504:
	ldr r0, [r5, #0x24]
	cmp r0, #0
	beq _021DE514
	cmp r0, #1
	beq _021DE54A
	cmp r0, #2
	beq _021DE580
	b _021DE588
_021DE514:
	str r6, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DE520
	bl FUN_020181C4
_021DE520:
	ldr r1, [r5, #0x18]
	adds r2, r5, #0
	ldr r0, [r7]
	ldr r3, [sp]
	adds r1, #0xf
	adds r2, #0x20
	bl ov21_021D27E0
	str r0, [r5, #0x14]
	movs r0, #0
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x18]
	cmp r0, r6
	ble _021DE540
	movs r4, #1
	b _021DE542
_021DE540:
	movs r4, #2
_021DE542:
	ldr r0, [r5, #0x24]
	adds r0, r0, #1
	str r0, [r5, #0x24]
	b _021DE588
_021DE54A:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021DE554
	bl FUN_020181C4
_021DE554:
	ldr r1, [r5, #0x1c]
	adds r2, r5, #0
	ldr r0, [r7]
	ldr r3, [sp]
	adds r1, #0xf
	adds r2, #0x20
	bl ov21_021D27E0
	str r0, [r5, #0x14]
	movs r0, #0
	str r0, [r5, #0x28]
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	cmp r1, r0
	bge _021DE576
	movs r4, #1
	b _021DE578
_021DE576:
	movs r4, #2
_021DE578:
	ldr r0, [r5, #0x24]
	adds r0, r0, #1
	str r0, [r5, #0x24]
	b _021DE588
_021DE580:
	movs r4, #0
	str r4, [r5, #0x24]
	ldr r0, [r5, #0x1c]
	str r0, [r5, #0x18]
_021DE588:
	ldr r2, [r5, #0x20]
	movs r0, #0x1f
	ldr r3, [r2, #0xc]
	lsls r2, r4, #5
	adds r2, r3, r2
	movs r1, #0x40
	movs r3, #0x20
	bl FUN_0201DC68
	cmp r0, #0
	bne _021DE5A2
	bl FUN_02022974
_021DE5A2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DE4D4

	thumb_func_start ov21_021DE5A4
ov21_021DE5A4: @ 0x021DE5A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1]
	bl ov21_021DCA28
	cmp r0, #0
	beq _021DE5BC
	cmp r0, #1
	beq _021DE5C6
	cmp r0, #2
	beq _021DE5D0
	pop {r4, pc}
_021DE5BC:
	movs r0, #0x20
	str r0, [r4]
	movs r0, #0x80
	str r0, [r4, #4]
	pop {r4, pc}
_021DE5C6:
	movs r0, #0x80
	str r0, [r4]
	movs r0, #0x60
	str r0, [r4, #4]
	pop {r4, pc}
_021DE5D0:
	movs r0, #0xe0
	str r0, [r4]
	movs r0, #0x80
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DE5A4

	thumb_func_start ov21_021DE5DC
ov21_021DE5DC: @ 0x021DE5DC
	push {r3, lr}
	cmp r0, #0x28
	blt _021DE5E6
	cmp r0, #0xd8
	ble _021DE5EA
_021DE5E6:
	movs r0, #0x30
	pop {r3, pc}
_021DE5EA:
	ldr r1, _021DE628 @ =0x00007FFF
	subs r0, #0x28
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xb0
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _021DE62C @ =0x020F983C
	movs r2, #3
	ldrsh r0, [r0, r1]
	lsls r2, r2, #0x10
	movs r3, #0
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	asrs r1, r1, #0xc
	movs r0, #0x30
	subs r0, r0, r1
	pop {r3, pc}
	.align 2, 0
_021DE628: .4byte 0x00007FFF
_021DE62C: .4byte 0x020F983C
	thumb_func_end ov21_021DE5DC

	thumb_func_start ov21_021DE630
ov21_021DE630: @ 0x021DE630
	push {r3, r4, r5, lr}
	ldr r4, [r0]
	ldr r0, [r2, #8]
	adds r5, r1, #0
	bl ov21_021E33BC
	cmp r0, #1
	bne _021DE664
	ldr r0, [r5, #0x24]
	cmp r0, #0
	bne _021DE656
	movs r3, #0x20
	str r3, [sp]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl ov21_021D2574
	pop {r3, r4, r5, pc}
_021DE656:
	movs r3, #0x20
	str r3, [sp]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	bl ov21_021D25E8
_021DE664:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DE630

	thumb_func_start ov21_021DE668
ov21_021DE668: @ 0x021DE668
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r7, #0
	bl ov21_021DE6E8
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021DE724
	str r4, [r5]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x20]
	bl ov21_021DE774
	str r0, [r5, #0x24]
	ldr r0, _021DE6A8 @ =ov21_021DE778
	str r0, [r5, #8]
	ldr r0, _021DE6AC @ =ov21_021DE79C
	str r0, [r5, #0xc]
	ldr r0, _021DE6B0 @ =ov21_021DE7F8
	str r0, [r5, #0x10]
	ldr r0, _021DE6B4 @ =ov21_021DE804
	str r0, [r5, #0x14]
	ldr r0, _021DE6B8 @ =ov21_021DE8E4
	str r0, [r5, #0x18]
	ldr r0, _021DE6BC @ =ov21_021DE8E8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DE6A8: .4byte ov21_021DE778
_021DE6AC: .4byte ov21_021DE79C
_021DE6B0: .4byte ov21_021DE7F8
_021DE6B4: .4byte ov21_021DE804
_021DE6B8: .4byte ov21_021DE8E4
_021DE6BC: .4byte ov21_021DE8E8
	thumb_func_end ov21_021DE668

	thumb_func_start ov21_021DE6C0
ov21_021DE6C0: @ 0x021DE6C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021DE74C
	ldr r0, [r4, #4]
	bl ov21_021DE760
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DE6C0

	thumb_func_start ov21_021DE6D4
ov21_021DE6D4: @ 0x021DE6D4
	movs r0, #0
	bx lr
	thumb_func_end ov21_021DE6D4

	thumb_func_start ov21_021DE6D8
ov21_021DE6D8: @ 0x021DE6D8
	movs r2, #1
	cmp r1, #1
	bne _021DE6E2
	movs r1, #0
	adds r2, r1, #0
_021DE6E2:
	str r1, [r0, #0x18]
	adds r0, r2, #0
	bx lr
	thumb_func_end ov21_021DE6D8

	thumb_func_start ov21_021DE6E8
ov21_021DE6E8: @ 0x021DE6E8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x20
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DE6FA
	bl FUN_02022974
_021DE6FA:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D138C
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	str r0, [r4, #0x10]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DE6E8

	thumb_func_start ov21_021DE724
ov21_021DE724: @ 0x021DE724
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DE736
	bl FUN_02022974
_021DE736:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DE724

	thumb_func_start ov21_021DE74C
ov21_021DE74C: @ 0x021DE74C
	push {r4, lr}
	adds r4, r0, #0
	bne _021DE756
	bl FUN_02022974
_021DE756:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DE74C

	thumb_func_start ov21_021DE760
ov21_021DE760: @ 0x021DE760
	push {r4, lr}
	adds r4, r0, #0
	bne _021DE76A
	bl FUN_02022974
_021DE76A:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DE760

	thumb_func_start ov21_021DE774
ov21_021DE774: @ 0x021DE774
	movs r0, #0
	bx lr
	thumb_func_end ov21_021DE774

	thumb_func_start ov21_021DE778
ov21_021DE778: @ 0x021DE778
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r1, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D3434
	ldr r0, [r4, #4]
	bl ov21_021D36D8
	adds r1, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D344C
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021DE778

	thumb_func_start ov21_021DE79C
ov21_021DE79C: @ 0x021DE79C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r4, r1, #0
	cmp r0, #1
	bne _021DE7B0
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021DE7B0:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021DE7BC
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_021DE7BC:
	ldr r0, [r5]
	cmp r0, #0
	bne _021DE7EE
	ldr r0, [r4, #0x1c]
	cmp r0, #1
	bne _021DE7E8
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	ldr r2, _021DE7F4 @ =0x000001FF
	adds r1, r0, #0
	lsls r1, r1, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0xe
	lsrs r1, r1, #0x10
	adds r3, r2, #0
	bl FUN_020059D0
	movs r0, #0
	str r0, [r4, #0x1c]
_021DE7E8:
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
_021DE7EE:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021DE7F4: .4byte 0x000001FF
	thumb_func_end ov21_021DE79C

	thumb_func_start ov21_021DE7F8
ov21_021DE7F8: @ 0x021DE7F8
	push {r3, lr}
	movs r0, #0
	bl FUN_0200592C
	movs r0, #1
	pop {r3, pc}
	thumb_func_end ov21_021DE7F8

	thumb_func_start ov21_021DE804
ov21_021DE804: @ 0x021DE804
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #3
	bhi _021DE8DA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DE820: @ jump table
	.2byte _021DE828 - _021DE820 - 2 @ case 0
	.2byte _021DE842 - _021DE820 - 2 @ case 1
	.2byte _021DE88C - _021DE820 - 2 @ case 2
	.2byte _021DE8D0 - _021DE820 - 2 @ case 3
_021DE828:
	ldr r0, [r4, #4]
	movs r1, #0x74
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x74
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE8DA
_021DE842:
	ldr r3, [r4, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021DE9A4
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021DE85C
	cmp r0, #1
	beq _021DE86A
	cmp r0, #2
	beq _021DE878
	b _021DE884
_021DE85C:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021DF44C
	b _021DE884
_021DE86A:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021DF374
	b _021DE884
_021DE878:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021DF548
_021DE884:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE8DA
_021DE88C:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021DE89C
	cmp r0, #1
	beq _021DE8AA
	cmp r0, #2
	beq _021DE8B8
	b _021DE8C4
_021DE89C:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl ov21_021DF4D0
	adds r1, r0, #0
	b _021DE8C4
_021DE8AA:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl ov21_021DF3F0
	adds r1, r0, #0
	b _021DE8C4
_021DE8B8:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl ov21_021DF5D0
	adds r1, r0, #0
_021DE8C4:
	cmp r1, #0
	beq _021DE8DA
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE8DA
_021DE8D0:
	ldr r0, _021DE8E0 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DE8DA:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DE8E0: .4byte 0x04000050
	thumb_func_end ov21_021DE804

	thumb_func_start ov21_021DE8E4
ov21_021DE8E4: @ 0x021DE8E4
	movs r0, #0
	bx lr
	thumb_func_end ov21_021DE8E4

	thumb_func_start ov21_021DE8E8
ov21_021DE8E8: @ 0x021DE8E8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r5, [r4]
	adds r3, r0, #0
	adds r1, r2, #0
	ldr r0, [r4, #8]
	cmp r5, #4
	bhi _021DE99E
	adds r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_021DE904: @ jump table
	.2byte _021DE90E - _021DE904 - 2 @ case 0
	.2byte _021DE942 - _021DE904 - 2 @ case 1
	.2byte _021DE980 - _021DE904 - 2 @ case 2
	.2byte _021DE98E - _021DE904 - 2 @ case 3
	.2byte _021DE99A - _021DE904 - 2 @ case 4
_021DE90E:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _021DE91E
	cmp r1, #1
	beq _021DE928
	cmp r1, #2
	beq _021DE932
	b _021DE93A
_021DE91E:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021DF44C
	b _021DE93A
_021DE928:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021DF374
	b _021DE93A
_021DE932:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021DF548
_021DE93A:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE99E
_021DE942:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _021DE952
	cmp r1, #1
	beq _021DE95E
	cmp r1, #2
	beq _021DE96A
	b _021DE974
_021DE952:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021DF4D0
	adds r2, r0, #0
	b _021DE974
_021DE95E:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021DF3F0
	adds r2, r0, #0
	b _021DE974
_021DE96A:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021DF5D0
	adds r2, r0, #0
_021DE974:
	cmp r2, #0
	beq _021DE99E
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE99E
_021DE980:
	adds r1, r3, #0
	bl ov21_021DEA0C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE99E
_021DE98E:
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DE99E
_021DE99A:
	movs r0, #1
	pop {r3, r4, r5, pc}
_021DE99E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DE8E8

	thumb_func_start ov21_021DE9A4
ov21_021DE9A4: @ 0x021DE9A4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021DEF08
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DEF54
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov21_021DEFA8
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021DF214
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021DEA44
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021DEB58
	ldr r0, [r4, #4]
	bl ov21_021D37CC
	cmp r0, #2
	bne _021DEA0A
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021DED24
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021DF098
_021DEA0A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DE9A4

	thumb_func_start ov21_021DEA0C
ov21_021DEA0C: @ 0x021DEA0C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	bl ov21_021DF35C
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DED68
	adds r0, r5, #0
	bl ov21_021DF1F8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DF054
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DEA0C

	thumb_func_start ov21_021DEA44
ov21_021DEA44: @ 0x021DEA44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x21
	movs r3, #3
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x32
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r6, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x33
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r1, #3
	str r1, [sp]
	adds r6, r0, #0
	ldrh r0, [r2]
	movs r3, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x34
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r6, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x36
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r4, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DEA44

	thumb_func_start ov21_021DEB58
ov21_021DEB58: @ 0x021DEB58
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r7, r2, #0
	bl ov21_021D37BC
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37CC
	cmp r0, #2
	beq _021DEB74
	movs r6, #0
_021DEB74:
	ldr r0, _021DEB88 @ =0x00020100
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, [r5]
	ldr r3, [r4, #0x18]
	adds r0, r0, #4
	adds r2, r7, #0
	bl ov21_021DEB8C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DEB88: .4byte 0x00020100
	thumb_func_end ov21_021DEB58

	thumb_func_start ov21_021DEB8C
ov21_021DEB8C: @ 0x021DEB8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r2, #0
	adds r5, r0, #0
	str r1, [sp, #0x10]
	movs r0, #0x40
	adds r1, r6, #0
	str r3, [sp, #0x14]
	ldr r4, [sp, #0x30]
	bl FUN_02023790
	adds r7, r0, #0
	ldr r2, _021DEC28 @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	movs r1, #9
	adds r2, r7, #0
	str r0, [sp, #0x18]
	bl FUN_0200B1B8
	movs r0, #0x58
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	adds r2, r7, #0
	movs r3, #0x98
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x18]
	movs r1, #0xa
	adds r2, r7, #0
	bl FUN_0200B1B8
	movs r0, #0x68
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	adds r2, r7, #0
	movs r3, #0x98
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	bl FUN_0200B190
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r3, r4, #0
	bl ov21_021DEC2C
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r3, r4, #0
	bl ov21_021DEC80
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r6, #0
	str r4, [sp]
	bl ov21_021DECD4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_021DEC28: .4byte 0x000002B9
	thumb_func_end ov21_021DEB8C

	thumb_func_start ov21_021DEC2C
ov21_021DEC2C: @ 0x021DEC2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r6, r1, #0
	movs r0, #0x40
	str r2, [sp, #0x10]
	adds r5, r3, #0
	bl FUN_02023790
	adds r4, r0, #0
	bl FUN_020989D0
	adds r2, r0, #0
	movs r0, #0
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	ldr r1, [sp, #0x10]
	adds r2, r4, #0
	adds r6, r0, #0
	bl FUN_0200B1B8
	movs r0, #0x58
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r5, [sp, #8]
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0xb8
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DEC2C

	thumb_func_start ov21_021DEC80
ov21_021DEC80: @ 0x021DEC80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r6, r1, #0
	movs r0, #0x40
	str r2, [sp, #0x10]
	adds r5, r3, #0
	bl FUN_02023790
	adds r4, r0, #0
	bl FUN_020989C4
	adds r2, r0, #0
	movs r0, #0
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	ldr r1, [sp, #0x10]
	adds r2, r4, #0
	adds r6, r0, #0
	bl FUN_0200B1B8
	movs r0, #0x68
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r5, [sp, #8]
	adds r0, r7, #0
	adds r2, r4, #0
	movs r3, #0xb8
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DEC80

	thumb_func_start ov21_021DECD4
ov21_021DECD4: @ 0x021DECD4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r2, #0
	adds r2, r3, #0
	movs r1, #2
	adds r3, r4, #0
	bl ov21_021D56BC
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	cmp r0, #0xf0
	bhs _021DED00
	lsrs r1, r0, #1
	movs r0, #0x80
	subs r3, r0, r1
	b _021DED02
_021DED00:
	movs r3, #8
_021DED02:
	movs r0, #0x88
	str r0, [sp]
	movs r1, #0
	ldr r0, [sp, #0x20]
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl ov21_021D5600
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DECD4

	thumb_func_start ov21_021DED24
ov21_021DED24: @ 0x021DED24
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r0, [r5, #4]
	adds r7, r1, #0
	str r3, [sp]
	bl ov21_021D37BC
	adds r4, r0, #0
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl ov21_021D33D4
	ldr r1, _021DED64 @ =0x000001E7
	cmp r4, r1
	bne _021DED4A
	cmp r0, #0
	ble _021DED4A
	movs r4, #0xb
_021DED4A:
	ldr r2, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov21_021DED7C
	ldr r2, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021DEE80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DED64: .4byte 0x000001E7
	thumb_func_end ov21_021DED24

	thumb_func_start ov21_021DED68
ov21_021DED68: @ 0x021DED68
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021DEEF8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DEE38
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DED68

	thumb_func_start ov21_021DED7C
ov21_021DED7C: @ 0x021DED7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r3, [sp, #0x10]
	adds r5, r0, #0
	adds r6, r2, #0
	ldr r4, [r1]
	bl ov21_021D1F90
	adds r7, r0, #0
	ldr r0, [sp, #0x10]
	bl ov21_021D1F94
	str r0, [sp, #0x14]
	bl ov21_021D1F98
	str r0, [sp, #0x18]
	bl ov21_021D1F9C
	str r0, [sp, #0x1c]
	bl ov21_021D1FA0
	str r0, [sp, #0x20]
	movs r0, #0xfa
	lsls r0, r0, #4
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #5
	str r6, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x14]
	adds r1, r7, #0
	bl FUN_0200985C
	str r0, [r5, #0x24]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x24]
	bl FUN_02009D4C
	movs r0, #0xfa
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r6, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_020098B8
	str r0, [r5, #0x28]
	bl FUN_0200A640
	ldr r0, [r5, #0x28]
	bl FUN_02009D4C
	movs r0, #0xfa
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r6, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x1c]
	adds r1, r7, #0
	movs r3, #1
	bl FUN_02009918
	str r0, [r5, #0x2c]
	movs r0, #0xfa
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r6, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x20]
	adds r1, r7, #0
	movs r3, #1
	bl FUN_02009918
	str r0, [r5, #0x30]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DED7C

	thumb_func_start ov21_021DEE38
ov21_021DEE38: @ 0x021DEE38
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x24]
	ldr r4, [r1]
	cmp r0, #0
	beq _021DEE7E
	bl FUN_0200A4E4
	ldr r0, [r5, #0x28]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x28]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x2c]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x30]
	bl FUN_02009D68
_021DEE7E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DEE38

	thumb_func_start ov21_021DEE80
ov21_021DEE80: @ 0x021DEE80
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1]
	movs r1, #0xfa
	adds r5, r0, #0
	lsls r1, r1, #4
	movs r0, #0
	adds r6, r2, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #5
	str r2, [sp, #0x10]
	lsls r0, r0, #6
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	adds r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	adds r3, r0, #0
	adds r3, #8
	ldr r3, [r4, r3]
	adds r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x4c
	adds r2, r1, #0
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x20
	str r0, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x44]
	movs r0, #0x16
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	movs r0, #0x1e
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl FUN_02021B90
	str r0, [r5]
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DEE80

	thumb_func_start ov21_021DEEF8
ov21_021DEEF8: @ 0x021DEEF8
	push {r3, lr}
	ldr r0, [r0]
	cmp r0, #0
	beq _021DEF04
	bl FUN_02021BD4
_021DEF04:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021DEEF8

	thumb_func_start ov21_021DEF08
ov21_021DEF08: @ 0x021DEF08
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r6, r2, #0
	bl ov21_021D375C
	adds r3, r0, #0
	movs r0, #0x2b
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	adds r2, r6, #0
	bl ov21_021D1778
	ldr r0, [r5]
	movs r1, #0
	bl ov21_021D238C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DEF08

	thumb_func_start ov21_021DEF3C
ov21_021DEF3C: @ 0x021DEF3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	bl ov21_021D23C0
	ldr r0, [r4]
	movs r1, #0
	bl ov21_021D2360
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DEF3C

	thumb_func_start ov21_021DEF54
ov21_021DEF54: @ 0x021DEF54
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl ov21_021D2170
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r2, r0, #0
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0x48
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	movs r3, #2
	bl ov21_021D1890
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DEF54

	thumb_func_start ov21_021DEF8C
ov21_021DEF8C: @ 0x021DEF8C
	push {r4, lr}
	ldr r0, [r0]
	bl ov21_021D2170
	adds r4, r0, #0
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	adds r0, r4, #0
	bl FUN_02008780
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DEF8C

	thumb_func_start ov21_021DEFA8
ov21_021DEFA8: @ 0x021DEFA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021DF044 @ =0x00000FFA
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x5a
	bl FUN_02009A4C
	str r0, [r5, #0x14]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x14]
	bl FUN_02009D4C
	ldr r0, _021DF048 @ =0x00000FAD
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0xd
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x18]
	bl FUN_0200A640
	ldr r0, [r5, #0x18]
	bl FUN_02009D4C
	ldr r0, _021DF04C @ =0x00000FF8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x58
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x1c]
	ldr r0, _021DF050 @ =0x00000FF9
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x59
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x20]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DF044: .4byte 0x00000FFA
_021DF048: .4byte 0x00000FAD
_021DF04C: .4byte 0x00000FF8
_021DF050: .4byte 0x00000FF9
	thumb_func_end ov21_021DEFA8

	thumb_func_start ov21_021DF054
ov21_021DF054: @ 0x021DF054
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x18]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x20]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DF054

	thumb_func_start ov21_021DF098
ov21_021DF098: @ 0x021DF098
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x78
	adds r6, r2, #0
	adds r5, r0, #0
	ldr r0, [r6, #4]
	str r3, [sp, #0x2c]
	ldr r4, [r1]
	bl ov21_021D37BC
	adds r7, r0, #0
	ldr r0, [r6, #4]
	adds r1, r7, #0
	bl ov21_021D33D4
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x30]
	adds r0, r7, #0
	movs r2, #6
	bl FUN_020759CC
	adds r6, r0, #0
	ldr r1, [sp, #0x30]
	adds r0, r7, #0
	movs r2, #7
	bl FUN_020759CC
	adds r7, r0, #0
	adds r0, r6, #0
	bl ov21_021DF180
	adds r6, r0, #0
	adds r0, r7, #0
	bl ov21_021DF180
	ldr r3, _021DF17C @ =0x00000FF9
	adds r7, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #5
	str r2, [sp, #0x10]
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	adds r2, r3, #0
	add r0, sp, #0x54
	subs r2, #0x4c
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x34]
	add r0, sp, #0x54
	str r0, [sp, #0x38]
	movs r0, #0x20
	str r0, [sp, #0x48]
	movs r0, #1
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x50]
	movs r0, #0xaa
	lsls r0, r0, #0xc
	str r0, [sp, #0x3c]
	movs r0, #0x12
	lsls r0, r0, #0xe
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl FUN_02021B90
	adds r1, r6, #0
	str r0, [r5, #4]
	bl FUN_02021D6C
	cmp r6, r7
	beq _021DF172
	movs r0, #0x37
	lsls r0, r0, #0xe
	str r0, [sp, #0x3c]
	movs r0, #0x12
	lsls r0, r0, #0xe
	str r0, [sp, #0x40]
	add r0, sp, #0x34
	bl FUN_02021B90
	adds r1, r7, #0
	str r0, [r5, #8]
	bl FUN_02021D6C
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
_021DF172:
	movs r0, #0
	str r0, [r5, #8]
	add sp, #0x78
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF17C: .4byte 0x00000FF9
	thumb_func_end ov21_021DF098

	thumb_func_start ov21_021DF180
ov21_021DF180: @ 0x021DF180
	cmp r0, #0x11
	bhi _021DF1F6
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021DF190: @ jump table
	.2byte _021DF1B4 - _021DF190 - 2 @ case 0
	.2byte _021DF1B8 - _021DF190 - 2 @ case 1
	.2byte _021DF1BC - _021DF190 - 2 @ case 2
	.2byte _021DF1C0 - _021DF190 - 2 @ case 3
	.2byte _021DF1C4 - _021DF190 - 2 @ case 4
	.2byte _021DF1C8 - _021DF190 - 2 @ case 5
	.2byte _021DF1CC - _021DF190 - 2 @ case 6
	.2byte _021DF1D0 - _021DF190 - 2 @ case 7
	.2byte _021DF1D4 - _021DF190 - 2 @ case 8
	.2byte _021DF1D0 - _021DF190 - 2 @ case 9
	.2byte _021DF1D8 - _021DF190 - 2 @ case 10
	.2byte _021DF1DC - _021DF190 - 2 @ case 11
	.2byte _021DF1E0 - _021DF190 - 2 @ case 12
	.2byte _021DF1E4 - _021DF190 - 2 @ case 13
	.2byte _021DF1E8 - _021DF190 - 2 @ case 14
	.2byte _021DF1EC - _021DF190 - 2 @ case 15
	.2byte _021DF1F0 - _021DF190 - 2 @ case 16
	.2byte _021DF1F4 - _021DF190 - 2 @ case 17
_021DF1B4:
	movs r0, #0
	bx lr
_021DF1B8:
	movs r0, #6
	bx lr
_021DF1BC:
	movs r0, #0xe
	bx lr
_021DF1C0:
	movs r0, #0xa
	bx lr
_021DF1C4:
	movs r0, #8
	bx lr
_021DF1C8:
	movs r0, #5
	bx lr
_021DF1CC:
	movs r0, #0xb
	bx lr
_021DF1D0:
	movs r0, #7
	bx lr
_021DF1D4:
	movs r0, #9
	bx lr
_021DF1D8:
	movs r0, #1
	bx lr
_021DF1DC:
	movs r0, #3
	bx lr
_021DF1E0:
	movs r0, #2
	bx lr
_021DF1E4:
	movs r0, #4
	bx lr
_021DF1E8:
	movs r0, #0xf
	bx lr
_021DF1EC:
	movs r0, #0xd
	bx lr
_021DF1F0:
	movs r0, #0x10
	bx lr
_021DF1F4:
	movs r0, #0xc
_021DF1F6:
	bx lr
	thumb_func_end ov21_021DF180

	thumb_func_start ov21_021DF1F8
ov21_021DF1F8: @ 0x021DF1F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021DF206
	bl FUN_02021BD4
_021DF206:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021DF210
	bl FUN_02021BD4
_021DF210:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DF1F8

	thumb_func_start ov21_021DF214
ov21_021DF214: @ 0x021DF214
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	adds r6, r0, #0
	adds r0, r2, #0
	adds r5, r1, #0
	ldr r0, [r0, #4]
	str r2, [sp, #0x2c]
	adds r7, r3, #0
	ldr r4, [r5]
	bl ov21_021D37BC
	ldr r3, _021DF308 @ =0x00000FF9
	str r0, [sp, #0x30]
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #5
	str r2, [sp, #0x10]
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	adds r2, r3, #0
	add r0, sp, #0x7c
	subs r2, #0x4c
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x5c]
	add r0, sp, #0x7c
	str r0, [sp, #0x60]
	movs r0, #0x20
	str r0, [sp, #0x70]
	movs r0, #1
	str r0, [sp, #0x74]
	movs r0, #3
	lsls r0, r0, #0x12
	str r0, [sp, #0x64]
	movs r0, #0xd
	lsls r0, r0, #0xe
	str r0, [sp, #0x68]
	add r0, sp, #0x5c
	str r7, [sp, #0x78]
	bl FUN_02021B90
	movs r1, #0x11
	str r0, [r6, #0xc]
	bl FUN_02021D6C
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #4]
	bl ov21_021D37CC
	cmp r0, #2
	beq _021DF2AC
	movs r0, #0
	str r0, [sp, #0x30]
_021DF2AC:
	movs r0, #0x15
	ldr r1, [r5]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x30]
	adds r2, r7, #0
	bl ov21_021DF30C
	adds r4, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl ov21_021D2344
	movs r1, #0x15
	ldr r2, [r5]
	lsls r1, r1, #4
	ldr r1, [r2, r1]
	str r1, [sp, #0x34]
	movs r1, #0
	bl FUN_0200A72C
	str r0, [sp, #0x3c]
	ldr r0, [r6, #0xc]
	str r0, [sp, #0x40]
	movs r0, #0x4d
	mvns r0, r0
	str r0, [sp, #0x44]
	adds r0, #0x46
	str r0, [sp, #0x48]
	movs r0, #0
	str r0, [sp, #0x4c]
	movs r0, #0x1f
	str r0, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x54]
	str r7, [sp, #0x58]
	str r4, [sp, #0x38]
	add r0, sp, #0x34
	bl ov21_021D4CA0
	str r0, [r6, #0x10]
	adds r0, r4, #0
	bl ov21_021D4DA0
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DF308: .4byte 0x00000FF9
	thumb_func_end ov21_021DF214

	thumb_func_start ov21_021DF30C
ov21_021DF30C: @ 0x021DF30C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	movs r1, #0x12
	movs r2, #2
	adds r7, r0, #0
	bl ov21_021D4D6C
	adds r4, r0, #0
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl ov21_021D566C
	adds r5, r0, #0
	movs r0, #2
	adds r1, r5, #0
	movs r2, #0
	bl FUN_02002D7C
	cmp r0, #0x88
	bhs _021DF340
	movs r1, #0x88
	subs r0, r1, r0
	lsrs r3, r0, #1
	b _021DF342
_021DF340:
	movs r3, #0
_021DF342:
	movs r0, #0
	str r0, [sp]
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov21_021D4E80
	adds r0, r5, #0
	bl ov21_021D5600
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DF30C

	thumb_func_start ov21_021DF35C
ov21_021DF35C: @ 0x021DF35C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x10]
	bl ov21_021D4D1C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DF35C

	thumb_func_start ov21_021DF374
ov21_021DF374: @ 0x021DF374
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r7, r0, #0
	ldr r0, [r5]
	movs r1, #1
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov21_021D2360
	adds r0, r7, #0
	bl ov21_021DF64C
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DF3E6
	cmp r6, #0
	beq _021DF3C2
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2b
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	b _021DF3E6
_021DF3C2:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2b
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021DF3E6:
	adds r0, r5, #0
	bl ov21_021DF6B4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF374

	thumb_func_start ov21_021DF3F0
ov21_021DF3F0: @ 0x021DF3F0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r2, #0x10]
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5]
	beq _021DF410
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	b _021DF41A
_021DF410:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
_021DF41A:
	adds r4, r0, #0
	cmp r4, #1
	bne _021DF442
	cmp r6, #1
	bne _021DF434
	adds r0, r7, #0
	bl ov21_021DF680
	ldr r0, [r5]
	movs r1, #0
	bl ov21_021D2360
	b _021DF448
_021DF434:
	adds r0, r5, #0
	bl ov21_021DEF8C
	adds r0, r5, #0
	bl ov21_021DEF3C
	b _021DF448
_021DF442:
	adds r0, r5, #0
	bl ov21_021DF6B4
_021DF448:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF3F0

	thumb_func_start ov21_021DF44C
ov21_021DF44C: @ 0x021DF44C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov21_021DF64C
	cmp r6, #0
	bne _021DF472
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	adds r0, r7, #0
	movs r3, #4
	bl ov21_021DF6C4
	adds r0, r7, #0
	bl ov21_021DF6FC
_021DF472:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DF4CC
	cmp r6, #0
	beq _021DF4A8
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #4
	adds r2, r1, #0
	subs r2, #0x14
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021DF4A8:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #4
	adds r3, r1, #0
	subs r3, #0x14
	bl ov21_021D23F8
_021DF4CC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF44C

	thumb_func_start ov21_021DF4D0
ov21_021DF4D0: @ 0x021DF4D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bne _021DF4F0
	bl ov21_021DF6E0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DF718
	str r0, [sp, #4]
	b _021DF4F6
_021DF4F0:
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
_021DF4F6:
	ldr r0, [r6, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4]
	beq _021DF510
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #8]
	b _021DF51C
_021DF510:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #8]
_021DF51C:
	movs r1, #0
	add r2, sp, #0
_021DF520:
	ldr r0, [r2]
	cmp r0, #0
	beq _021DF52E
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #3
	blt _021DF520
_021DF52E:
	cmp r1, #3
	bne _021DF542
	cmp r7, #1
	bne _021DF53C
	adds r0, r5, #0
	bl ov21_021DF680
_021DF53C:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021DF542:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF4D0

	thumb_func_start ov21_021DF548
ov21_021DF548: @ 0x021DF548
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r7, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov21_021DF64C
	ldr r0, [r5]
	movs r1, #1
	bl ov21_021D2360
	cmp r6, #0
	bne _021DF570
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	adds r0, r7, #0
	movs r3, #1
	bl ov21_021DF6C4
_021DF570:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DF5CA
	cmp r6, #0
	beq _021DF5A6
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021DF5A6:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021DF5CA:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DF548

	thumb_func_start ov21_021DF5D0
ov21_021DF5D0: @ 0x021DF5D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bne _021DF5E6
	bl ov21_021DF6E0
	str r0, [sp]
	b _021DF5EA
_021DF5E6:
	movs r0, #1
	str r0, [sp]
_021DF5EA:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5]
	beq _021DF604
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #4]
	b _021DF610
_021DF604:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #4]
_021DF610:
	movs r1, #0
	add r2, sp, #0
_021DF614:
	ldr r0, [r2]
	cmp r0, #0
	beq _021DF622
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #2
	blt _021DF614
_021DF622:
	cmp r1, #2
	bne _021DF646
	cmp r6, #1
	bne _021DF63A
	adds r0, r7, #0
	bl ov21_021DF680
	ldr r0, [r5]
	movs r1, #0
	bl ov21_021D2360
	b _021DF640
_021DF63A:
	adds r0, r5, #0
	bl ov21_021DEF3C
_021DF640:
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DF646:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DF5D0

	thumb_func_start ov21_021DF64C
ov21_021DF64C: @ 0x021DF64C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	adds r5, r7, #0
	movs r6, #1
_021DF656:
	ldr r0, [r5]
	cmp r0, #0
	beq _021DF662
	adds r1, r6, #0
	bl FUN_02021FE0
_021DF662:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021DF656
	ldr r0, [r7, #0xc]
	movs r1, #1
	bl FUN_02021FE0
	ldr r0, [r7, #0x10]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DF64C

	thumb_func_start ov21_021DF680
ov21_021DF680: @ 0x021DF680
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	adds r5, r7, #0
	adds r6, r4, #0
_021DF68A:
	ldr r0, [r5]
	cmp r0, #0
	beq _021DF696
	adds r1, r6, #0
	bl FUN_02021FE0
_021DF696:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _021DF68A
	ldr r0, [r7, #0xc]
	movs r1, #0
	bl FUN_02021FE0
	ldr r0, [r7, #0x10]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DF680

	thumb_func_start ov21_021DF6B4
ov21_021DF6B4: @ 0x021DF6B4
	movs r1, #0x5b
	ldr r0, [r0]
	lsls r1, r1, #2
	ldr r3, _021DF6C0 @ =ov21_021D24FC
	adds r1, r0, r1
	bx r3
	.align 2, 0
_021DF6C0: .4byte ov21_021D24FC
	thumb_func_end ov21_021DF6B4

	thumb_func_start ov21_021DF6C4
ov21_021DF6C4: @ 0x021DF6C4
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	adds r0, #0x34
	movs r1, #0x30
	adds r2, r4, #0
	movs r3, #0x48
	bl ov21_021D2648
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DF6C4

	thumb_func_start ov21_021DF6E0
ov21_021DF6E0: @ 0x021DF6E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x34
	bl ov21_021D2664
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r1, [r5, #0x34]
	ldr r2, [r5, #0x38]
	bl ov21_021D2164
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DF6E0

	thumb_func_start ov21_021DF6FC
ov21_021DF6FC: @ 0x021DF6FC
	push {r3, lr}
	sub sp, #8
	movs r1, #0x52
	str r1, [sp]
	movs r1, #4
	str r1, [sp, #4]
	adds r0, #0x54
	movs r1, #0xac
	movs r2, #0xaa
	movs r3, #0x20
	bl ov21_021D2648
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov21_021DF6FC

	thumb_func_start ov21_021DF718
ov21_021DF718: @ 0x021DF718
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x54
	bl ov21_021D2664
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r1, [r5, #0x54]
	ldr r2, [r5, #0x58]
	bl ov21_021D1848
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DF718

	thumb_func_start ov21_021DF734
ov21_021DF734: @ 0x021DF734
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r7, #0
	bl ov21_021DF7CC
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021DF80C
	str r4, [r5]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x20]
	bl ov21_021DF86C
	str r0, [r5, #0x24]
	ldr r0, _021DF774 @ =ov21_021DF888
	str r0, [r5, #8]
	ldr r0, _021DF778 @ =ov21_021DF8B0
	str r0, [r5, #0xc]
	ldr r0, _021DF77C @ =ov21_021DF8C0
	str r0, [r5, #0x10]
	ldr r0, _021DF780 @ =ov21_021DF8C4
	str r0, [r5, #0x14]
	ldr r0, _021DF784 @ =ov21_021DF958
	str r0, [r5, #0x18]
	ldr r0, _021DF788 @ =ov21_021DFA18
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DF774: .4byte ov21_021DF888
_021DF778: .4byte ov21_021DF8B0
_021DF77C: .4byte ov21_021DF8C0
_021DF780: .4byte ov21_021DF8C4
_021DF784: .4byte ov21_021DF958
_021DF788: .4byte ov21_021DFA18
	thumb_func_end ov21_021DF734

	thumb_func_start ov21_021DF78C
ov21_021DF78C: @ 0x021DF78C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021DF844
	ldr r0, [r4, #4]
	bl ov21_021DF858
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DF78C

	thumb_func_start ov21_021DF7A0
ov21_021DF7A0: @ 0x021DF7A0
	push {r3, r4, r5, lr}
	ldr r4, [r0]
	ldr r0, [r0, #4]
	adds r2, r1, #0
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021DF7B2
	movs r0, #0
	pop {r3, r4, r5, pc}
_021DF7B2:
	ldr r5, [r4, #0x14]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x10]
	adds r1, r5, #0
	bl ov21_021DF870
	str r0, [r4, #0x14]
	cmp r5, r0
	beq _021DF7C8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021DF7C8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DF7A0

	thumb_func_start ov21_021DF7CC
ov21_021DF7CC: @ 0x021DF7CC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DF7DE
	bl FUN_02022974
_021DF7DE:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021DF7E4:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021DF7E4
	adds r0, r5, #0
	bl ov21_021D138C
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	str r0, [r4, #8]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DF7CC

	thumb_func_start ov21_021DF80C
ov21_021DF80C: @ 0x021DF80C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _021DF81E
	bl FUN_02022974
_021DF81E:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DF80C

	thumb_func_start ov21_021DF844
ov21_021DF844: @ 0x021DF844
	push {r4, lr}
	adds r4, r0, #0
	bne _021DF84E
	bl FUN_02022974
_021DF84E:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DF844

	thumb_func_start ov21_021DF858
ov21_021DF858: @ 0x021DF858
	push {r4, lr}
	adds r4, r0, #0
	bne _021DF862
	bl FUN_02022974
_021DF862:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DF858

	thumb_func_start ov21_021DF86C
ov21_021DF86C: @ 0x021DF86C
	movs r0, #0
	bx lr
	thumb_func_end ov21_021DF86C

	thumb_func_start ov21_021DF870
ov21_021DF870: @ 0x021DF870
	cmp r2, #0
	ble _021DF87E
	adds r2, r1, r2
	cmp r2, r3
	blt _021DF884
	movs r2, #0
	b _021DF884
_021DF87E:
	adds r0, r1, r2
	bpl _021DF884
	subs r2, r3, #1
_021DF884:
	adds r0, r2, #0
	bx lr
	thumb_func_end ov21_021DF870

	thumb_func_start ov21_021DF888
ov21_021DF888: @ 0x021DF888
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r5, r0, #0
	adds r1, r4, #0
	bl ov21_021E01CC
	str r0, [r4, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E0268
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DF888

	thumb_func_start ov21_021DF8B0
ov21_021DF8B0: @ 0x021DF8B0
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021DF8BA
	movs r0, #1
	bx lr
_021DF8BA:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021DF8B0

	thumb_func_start ov21_021DF8C0
ov21_021DF8C0: @ 0x021DF8C0
	movs r0, #1
	bx lr
	thumb_func_end ov21_021DF8C0

	thumb_func_start ov21_021DF8C4
ov21_021DF8C4: @ 0x021DF8C4
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021DF94E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DF8E0: @ jump table
	.2byte _021DF8E8 - _021DF8E0 - 2 @ case 0
	.2byte _021DF910 - _021DF8E0 - 2 @ case 1
	.2byte _021DF92E - _021DF8E0 - 2 @ case 2
	.2byte _021DF944 - _021DF8E0 - 2 @ case 3
_021DF8E8:
	ldr r0, [r4, #4]
	movs r1, #0xd0
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0xd0
	blx FUN_020D5124
	ldr r0, [r4, #8]
	ldr r1, [r7, #0xc]
	adds r0, #0xc8
	str r1, [r0]
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DF94E
_021DF910:
	ldr r3, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021DFA84
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021DFF38
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DF94E
_021DF92E:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021DFFA8
	cmp r0, #0
	beq _021DF94E
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DF94E
_021DF944:
	ldr r0, _021DF954 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DF94E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DF954: .4byte 0x04000050
	thumb_func_end ov21_021DF8C4

	thumb_func_start ov21_021DF958
ov21_021DF958: @ 0x021DF958
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #0
	beq _021DF974
	cmp r0, #1
	beq _021DF9C0
	cmp r0, #2
	beq _021DF9D8
	b _021DFA04
_021DF974:
	adds r0, r6, #0
	adds r0, #0xcc
	ldr r1, [r7, #0x14]
	ldr r0, [r0]
	cmp r1, r0
	beq _021DFA08
	adds r0, r6, #0
	adds r0, #0xcc
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r6, #0
	adds r1, r2, r1
	adds r0, #0xb8
	str r1, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E0094
	adds r0, r6, #0
	bl ov21_021E0C10
	movs r0, #1
	str r0, [r5, #4]
	ldr r0, _021DFA14 @ =0x0000068B
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DFA08
_021DF9C0:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E00B8
	cmp r0, #1
	bne _021DFA08
	movs r0, #1
	str r0, [r5, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DFA08
_021DF9D8:
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _021DFA08
	ldr r0, [r7, #0xc]
	adds r1, r5, #0
	str r0, [sp]
	ldr r0, [r7, #0x14]
	str r0, [sp, #4]
	ldr r3, [r4, #4]
	adds r0, r6, #0
	bl ov21_021E0944
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov21_021DFBB4
	movs r0, #0
	str r0, [r5, #8]
	str r0, [r5, #4]
	str r0, [r4]
	b _021DFA08
_021DFA04:
	bl FUN_02022974
_021DFA08:
	adds r0, r6, #0
	bl ov21_021E0C30
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021DFA14: .4byte 0x0000068B
	thumb_func_end ov21_021DF958

	thumb_func_start ov21_021DFA18
ov21_021DFA18: @ 0x021DFA18
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021DFA7E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021DFA32: @ jump table
	.2byte _021DFA3C - _021DFA32 - 2 @ case 0
	.2byte _021DFA4C - _021DFA32 - 2 @ case 1
	.2byte _021DFA60 - _021DFA32 - 2 @ case 2
	.2byte _021DFA6E - _021DFA32 - 2 @ case 3
	.2byte _021DFA7A - _021DFA32 - 2 @ case 4
_021DFA3C:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021DFF38
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DFA7E
_021DFA4C:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021DFFA8
	cmp r0, #0
	beq _021DFA7E
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DFA7E
_021DFA60:
	adds r1, r3, #0
	bl ov21_021DFACC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DFA7E
_021DFA6E:
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021DFA7E
_021DFA7A:
	movs r0, #1
	pop {r4, pc}
_021DFA7E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021DFA18

	thumb_func_start ov21_021DFA84
ov21_021DFA84: @ 0x021DFA84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	adds r4, r2, #0
	bl ov21_021DFB50
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov21_021DFD1C
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021DFAE8
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021DFE0C
	ldr r0, [r4, #0xc]
	adds r1, r5, #0
	str r0, [sp]
	ldr r0, [r4, #0x14]
	adds r2, r4, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r3, r6, #0
	bl ov21_021E08D0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DFA84

	thumb_func_start ov21_021DFACC
ov21_021DFACC: @ 0x021DFACC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021E0BF8
	adds r0, r5, #0
	bl ov21_021DFF18
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021DFDC8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DFACC

	thumb_func_start ov21_021DFAE8
ov21_021DFAE8: @ 0x021DFAE8
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x21
	movs r3, #3
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4]
	movs r1, #0x32
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021DFAE8

	thumb_func_start ov21_021DFB50
ov21_021DFB50: @ 0x021DFB50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r2, #0
	adds r6, r0, #0
	ldr r0, [r4, #4]
	adds r5, r1, #0
	bl ov21_021D37BC
	adds r7, r0, #0
	ldr r0, [r4, #0xc]
	adds r1, r5, #0
	str r0, [sp]
	ldr r0, [r4, #0x14]
	adds r2, r4, #0
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r3, r7, #0
	bl ov21_021DFBEC
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	ldr r3, [r4, #0x10]
	movs r2, #1
	bl ov21_021DF870
	ldr r1, [r4, #0xc]
	adds r2, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r3, r7, #0
	bl ov21_021DFBEC
	movs r4, #0
	movs r6, #1
_021DFBA0:
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021D2280
	adds r4, r4, #1
	cmp r4, #4
	blt _021DFBA0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DFB50

	thumb_func_start ov21_021DFBB4
ov21_021DFBB4: @ 0x021DFBB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r2, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r6, r1, #0
	bl ov21_021D37BC
	adds r7, r0, #0
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	ldr r3, [r4, #0x10]
	movs r2, #1
	bl ov21_021DF870
	ldr r1, [r4, #0xc]
	adds r2, r4, #0
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r3, r7, #0
	bl ov21_021DFBEC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DFBB4

	thumb_func_start ov21_021DFBEC
ov21_021DFBEC: @ 0x021DFBEC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, [sp, #0x30]
	adds r6, r0, #0
	adds r7, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r4, [sp, #0x2c]
	cmp r5, #2
	ble _021DFC04
	bl FUN_02022974
_021DFC04:
	ldr r0, [sp, #0x28]
	cmp r0, #0xc
	bhi _021DFCF8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021DFC16: @ jump table
	.2byte _021DFC30 - _021DFC16 - 2 @ case 0
	.2byte _021DFC30 - _021DFC16 - 2 @ case 1
	.2byte _021DFC30 - _021DFC16 - 2 @ case 2
	.2byte _021DFC30 - _021DFC16 - 2 @ case 3
	.2byte _021DFC6C - _021DFC16 - 2 @ case 4
	.2byte _021DFC80 - _021DFC16 - 2 @ case 5
	.2byte _021DFC44 - _021DFC16 - 2 @ case 6
	.2byte _021DFC58 - _021DFC16 - 2 @ case 7
	.2byte _021DFC94 - _021DFC16 - 2 @ case 8
	.2byte _021DFCA8 - _021DFC16 - 2 @ case 9
	.2byte _021DFCBC - _021DFC16 - 2 @ case 10
	.2byte _021DFCD0 - _021DFC16 - 2 @ case 11
	.2byte _021DFCE4 - _021DFC16 - 2 @ case 12
_021DFC30:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0354
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC44:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E03EC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC58:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0478
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC6C:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0504
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC80:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0590
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFC94:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E061C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCA8:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E06A8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCBC:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E072C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCD0:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E07B8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCE4:
	ldr r2, [sp, #8]
	str r4, [sp]
	ldr r3, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	str r5, [sp, #4]
	bl ov21_021E0844
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021DFCF8:
	bl FUN_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DFBEC

	thumb_func_start ov21_021DFD00
ov21_021DFD00: @ 0x021DFD00
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021DFD08:
	ldr r0, [r5]
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021D2280
	adds r4, r4, #1
	cmp r4, #4
	blt _021DFD08
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021DFD00

	thumb_func_start ov21_021DFD1C
ov21_021DFD1C: @ 0x021DFD1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021DFDB8 @ =0x0000372A
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x7a
	bl FUN_02009A4C
	str r0, [r5, #0x10]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x10]
	bl FUN_02009D4C
	ldr r0, _021DFDBC @ =0x000036C6
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x16
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x14]
	bl FUN_0200A640
	ldr r0, [r5, #0x14]
	bl FUN_02009D4C
	ldr r0, _021DFDC0 @ =0x0000372B
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x7b
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x18]
	ldr r0, _021DFDC4 @ =0x00003729
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x79
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x1c]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DFDB8: .4byte 0x0000372A
_021DFDBC: .4byte 0x000036C6
_021DFDC0: .4byte 0x0000372B
_021DFDC4: .4byte 0x00003729
	thumb_func_end ov21_021DFD1C

	thumb_func_start ov21_021DFDC8
ov21_021DFDC8: @ 0x021DFDC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x14]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DFDC8

	thumb_func_start ov21_021DFE0C
ov21_021DFE0C: @ 0x021DFE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	adds r5, r3, #0
	ldr r4, [r1]
	ldr r3, _021DFF14 @ =0x00003729
	adds r6, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #3
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	str r2, [sp, #0x2c]
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x58
	subs r2, #0x63
	adds r3, r3, #2
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r4, #0
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	movs r0, #0x20
	str r0, [sp, #0x4c]
	movs r0, #1
	str r5, [sp, #0x54]
	str r0, [sp, #0x50]
	str r4, [sp, #0x40]
	str r4, [sp, #0x44]
	adds r5, r6, #0
	movs r7, #0x1f
_021DFE7A:
	adds r0, r4, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl ov21_021E0B24
	ldr r0, [sp, #0x34]
	lsls r0, r0, #0xc
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x30]
	adds r0, #8
	lsls r0, r0, #0xc
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl FUN_02021B90
	str r0, [r5]
	lsrs r1, r4, #0x1f
	lsls r0, r4, #0x1f
	subs r0, r0, r1
	rors r0, r7
	adds r0, r1, r0
	ldr r0, [r5]
	bne _021DFEB0
	movs r1, #0
	bl FUN_02021D6C
	b _021DFEB6
_021DFEB0:
	movs r1, #2
	bl FUN_02021D6C
_021DFEB6:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021DFE7A
	movs r0, #0x3e
	lsls r0, r0, #0xe
	str r0, [sp, #0x40]
	movs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #0x44]
	movs r0, #0
	str r0, [sp, #0x4c]
	add r0, sp, #0x38
	bl FUN_02021B90
	adds r1, r6, #0
	adds r1, #0xbc
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021D6C
	adds r0, r6, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021CC8
	adds r0, r6, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021E80
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bgt _021DFF10
	adds r6, #0xbc
	ldr r0, [r6]
	movs r1, #0
	bl FUN_02021CAC
_021DFF10:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021DFF14: .4byte 0x00003729
	thumb_func_end ov21_021DFE0C

	thumb_func_start ov21_021DFF18
ov21_021DFF18: @ 0x021DFF18
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_021DFF20:
	ldr r0, [r5]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021DFF20
	adds r6, #0xbc
	ldr r0, [r6]
	bl FUN_02021BD4
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DFF18

	thumb_func_start ov21_021DFF38
ov21_021DFF38: @ 0x021DFF38
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021DFFF8
	ldr r0, [r4, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DFF9E
	cmp r6, #0
	beq _021DFF7A
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2b
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	b _021DFF9E
_021DFF7A:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2b
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021DFF9E:
	adds r0, r5, #0
	bl ov21_021E0078
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021DFF38

	thumb_func_start ov21_021DFFA8
ov21_021DFFA8: @ 0x021DFFA8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r2, #8]
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5]
	beq _021DFFC8
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	b _021DFFD2
_021DFFC8:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
_021DFFD2:
	adds r4, r0, #0
	cmp r4, #1
	bne _021DFFEC
	cmp r6, #1
	bne _021DFFE4
	adds r0, r7, #0
	bl ov21_021E0038
	b _021DFFF2
_021DFFE4:
	adds r0, r5, #0
	bl ov21_021DFD00
	b _021DFFF2
_021DFFEC:
	adds r0, r5, #0
	bl ov21_021E0078
_021DFFF2:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DFFA8

	thumb_func_start ov21_021DFFF8
ov21_021DFFF8: @ 0x021DFFF8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	movs r7, #1
_021E0002:
	ldr r0, [r4]
	adds r1, r7, #0
	bl FUN_02021FE0
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _021E0002
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021FE0
	movs r4, #0
	movs r6, #1
_021E0022:
	ldr r0, [r5, #0x20]
	adds r1, r6, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E0022
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021DFFF8

	thumb_func_start ov21_021E0038
ov21_021E0038: @ 0x021E0038
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r7, r6, #0
_021E0042:
	ldr r0, [r4]
	adds r1, r7, #0
	bl FUN_02021FE0
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _021E0042
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021FE0
	movs r4, #0
	adds r6, r4, #0
_021E0062:
	ldr r0, [r5, #0x20]
	adds r1, r6, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E0062
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E0038

	thumb_func_start ov21_021E0078
ov21_021E0078: @ 0x021E0078
	push {r4, r5, r6, lr}
	movs r6, #0x5b
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_021E0082:
	ldr r0, [r5]
	adds r2, r4, #0
	adds r1, r0, r6
	bl ov21_021D251C
	adds r4, r4, #1
	cmp r4, #4
	blt _021E0082
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E0078

	thumb_func_start ov21_021E0094
ov21_021E0094: @ 0x021E0094
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0xff
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	mvns r7, r7
_021E00A0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	str r4, [sp]
	bl ov21_021E00F4
	adds r4, r4, #1
	cmp r4, #4
	blt _021E00A0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E0094

	thumb_func_start ov21_021E00B8
ov21_021E00B8: @ 0x021E00B8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [r6, #4]
	cmp r0, #0
	bne _021E00C8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E00C8:
	movs r4, #0
_021E00CA:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021E015C
	adds r4, r4, #1
	adds r7, r0, #0
	cmp r4, #4
	blt _021E00CA
	movs r4, #0
_021E00DE:
	ldr r0, [r5, #0x20]
	ldr r0, [r0]
	bl FUN_02012938
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E00DE
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E00B8

	thumb_func_start ov21_021E00F4
ov21_021E00F4: @ 0x021E00F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r0, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r7, r1, #0
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x38]
	cmp r0, #0
	bne _021E010E
	adds r4, r5, #0
	b _021E0114
_021E010E:
	subs r4, r5, #2
	bpl _021E0114
	adds r4, r4, #4
_021E0114:
	adds r0, r5, #0
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl ov21_021E0B24
	ldr r0, [r7]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	adds r3, r4, #0
	bl ov21_021D2250
	adds r1, r6, #0
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #0x14]
	movs r0, #0x10
	str r3, [sp]
	str r0, [sp, #4]
	ldr r4, [sp, #0xc]
	adds r1, #0x28
	lsls r0, r5, #5
	adds r0, r1, r0
	ldr r1, [sp, #8]
	adds r3, r3, r4
	adds r1, r2, r1
	bl ov21_021D2648
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	subs r1, r1, r0
	lsls r0, r5, #2
	adds r0, r6, r0
	adds r0, #0xa8
	str r1, [r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E00F4

	thumb_func_start ov21_021E015C
ov21_021E015C: @ 0x021E015C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r4, r2, #0
	str r1, [sp]
	str r2, [sp, #4]
	cmp r0, #0
	beq _021E0176
	subs r4, r4, #2
	bpl _021E0176
	adds r4, r4, #4
_021E0176:
	ldr r0, [sp, #4]
	adds r7, r5, #0
	lsls r6, r0, #5
	adds r7, #0x28
	adds r0, r7, r6
	bl ov21_021D2664
	str r0, [sp, #8]
	adds r0, r5, #0
	str r0, [sp, #0xc]
	adds r0, #0x2c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	ldr r0, [sp]
	ldr r3, [r2, r6]
	ldr r2, [sp, #4]
	ldr r0, [r0]
	lsls r2, r2, #2
	adds r2, r5, r2
	adds r2, #0xa8
	ldr r2, [r2]
	ldr r1, [r7, r6]
	adds r2, r3, r2
	adds r3, r4, #0
	bl ov21_021D222C
	ldr r0, [r7, r6]
	add r1, sp, #0x10
	lsls r0, r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, r6]
	adds r0, #8
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	lsls r0, r4, #2
	ldr r0, [r5, r0]
	bl FUN_02021C50
	ldr r0, [sp, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E015C

	thumb_func_start ov21_021E01CC
ov21_021E01CC: @ 0x021E01CC
	push {r3, lr}
	ldr r2, _021E0264 @ =0x000001A6
	cmp r0, r2
	bgt _021E020A
	bge _021E023E
	adds r3, r2, #0
	subs r3, #0x24
	cmp r0, r3
	bgt _021E01EA
	subs r2, #0x24
	cmp r0, r2
	bge _021E024E
	cmp r0, #0xc9
	beq _021E023A
	b _021E025E
_021E01EA:
	adds r3, r2, #0
	subs r3, #9
	cmp r0, r3
	bgt _021E025E
	adds r3, r2, #0
	subs r3, #0xa
	cmp r0, r3
	blt _021E025E
	adds r3, r2, #0
	subs r3, #0xa
	cmp r0, r3
	beq _021E0246
	subs r2, #9
	cmp r0, r2
	beq _021E024A
	b _021E025E
_021E020A:
	adds r3, r2, #0
	adds r3, #0x39
	cmp r0, r3
	bgt _021E0222
	adds r3, r2, #0
	adds r3, #0x39
	cmp r0, r3
	bge _021E025A
	adds r2, r2, #1
	cmp r0, r2
	beq _021E0242
	b _021E025E
_021E0222:
	adds r3, r2, #0
	adds r3, #0x41
	cmp r0, r3
	bgt _021E0232
	adds r2, #0x41
	cmp r0, r2
	beq _021E0256
	b _021E025E
_021E0232:
	adds r2, #0x46
	cmp r0, r2
	beq _021E0252
	b _021E025E
_021E023A:
	movs r0, #8
	pop {r3, pc}
_021E023E:
	movs r0, #4
	pop {r3, pc}
_021E0242:
	movs r0, #5
	pop {r3, pc}
_021E0246:
	movs r0, #6
	pop {r3, pc}
_021E024A:
	movs r0, #7
	pop {r3, pc}
_021E024E:
	movs r0, #9
	pop {r3, pc}
_021E0252:
	movs r0, #0xa
	pop {r3, pc}
_021E0256:
	movs r0, #0xb
	pop {r3, pc}
_021E025A:
	movs r0, #0xc
	pop {r3, pc}
_021E025E:
	bl ov21_021E02F0
	pop {r3, pc}
	.align 2, 0
_021E0264: .4byte 0x000001A6
	thumb_func_end ov21_021E01CC

	thumb_func_start ov21_021E0268
ov21_021E0268: @ 0x021E0268
	push {r3, lr}
	adds r2, r0, #0
	ldr r0, _021E02EC @ =0x000001A6
	cmp r2, r0
	bgt _021E02A8
	bge _021E02D6
	adds r3, r0, #0
	subs r3, #0x24
	cmp r2, r3
	bgt _021E0288
	subs r0, #0x24
	cmp r2, r0
	bge _021E02D6
	cmp r2, #0xc9
	beq _021E02D6
	b _021E02E0
_021E0288:
	adds r3, r0, #0
	subs r3, #9
	cmp r2, r3
	bgt _021E02E0
	adds r3, r0, #0
	subs r3, #0xa
	cmp r2, r3
	blt _021E02E0
	adds r3, r0, #0
	subs r3, #0xa
	cmp r2, r3
	beq _021E02D6
	subs r0, #9
	cmp r2, r0
	beq _021E02D6
	b _021E02E0
_021E02A8:
	adds r3, r0, #0
	adds r3, #0x39
	cmp r2, r3
	bgt _021E02C0
	adds r3, r0, #0
	adds r3, #0x39
	cmp r2, r3
	bge _021E02D6
	adds r0, r0, #1
	cmp r2, r0
	beq _021E02D6
	b _021E02E0
_021E02C0:
	adds r3, r0, #0
	adds r3, #0x41
	cmp r2, r3
	bgt _021E02D0
	adds r0, #0x41
	cmp r2, r0
	beq _021E02D6
	b _021E02E0
_021E02D0:
	adds r0, #0x46
	cmp r2, r0
	bne _021E02E0
_021E02D6:
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl ov21_021D341C
	pop {r3, pc}
_021E02E0:
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl ov21_021D33E0
	pop {r3, pc}
	nop
_021E02EC: .4byte 0x000001A6
	thumb_func_end ov21_021E0268

	thumb_func_start ov21_021E02F0
ov21_021E02F0: @ 0x021E02F0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0x12
	adds r5, r0, #0
	bl FUN_020759F0
	cmp r0, #0
	bne _021E0304
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E0304:
	cmp r0, #0xfe
	bne _021E030C
	movs r0, #2
	pop {r3, r4, r5, pc}
_021E030C:
	cmp r0, #0xff
	bne _021E0314
	movs r0, #3
	pop {r3, r4, r5, pc}
_021E0314:
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl ov21_021D33E0
	cmp r0, #1
	bne _021E0350
	ldr r0, [r4, #4]
	adds r1, r5, #0
	movs r2, #0
	bl ov21_021D334C
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _021E0338
	bl FUN_02022974
_021E0338:
	cmp r4, #0
	bne _021E0340
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E0340:
	cmp r4, #0xfe
	bne _021E0348
	movs r0, #2
	pop {r3, r4, r5, pc}
_021E0348:
	cmp r4, #0xff
	bne _021E0350
	movs r0, #3
	pop {r3, r4, r5, pc}
_021E0350:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E02F0

	thumb_func_start ov21_021E0354
ov21_021E0354: @ 0x021E0354
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x34]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x14
	str r3, [sp, #0x10]
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E037A
	adds r0, r4, #0
	b _021E0380
_021E037A:
	subs r0, r4, #2
	bpl _021E0380
	adds r0, r0, #4
_021E0380:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x14]
	movs r3, #2
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	bl ov21_021D19D8
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E03A6
	bl FUN_02022974
_021E03A6:
	adds r0, r4, #1
	add r1, sp, #0x18
	add r2, sp, #0x14
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r1, [r5]
	adds r0, r4, #1
	cmp r1, #0
	beq _021E03C0
	subs r0, r0, #2
	bpl _021E03C0
	adds r0, r0, #4
_021E03C0:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x10]
	str r1, [sp]
	ldr r1, [sp, #0x14]
	movs r3, #0
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	bl ov21_021D19D8
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E03E6
	bl FUN_02022974
_021E03E6:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E0354

	thumb_func_start ov21_021E03EC
ov21_021E03EC: @ 0x021E03EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E0410
	adds r1, r4, #0
	b _021E0416
_021E0410:
	subs r1, r4, #2
	bpl _021E0416
	adds r1, r1, #4
_021E0416:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B08
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0438
	bl FUN_02022974
_021E0438:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E0452
	subs r1, r1, #2
	bpl _021E0452
	adds r1, r1, #4
_021E0452:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B08
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0474
	bl FUN_02022974
_021E0474:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E03EC

	thumb_func_start ov21_021E0478
ov21_021E0478: @ 0x021E0478
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E049C
	adds r1, r4, #0
	b _021E04A2
_021E049C:
	subs r1, r4, #2
	bpl _021E04A2
	adds r1, r1, #4
_021E04A2:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B4C
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E04C4
	bl FUN_02022974
_021E04C4:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E04DE
	subs r1, r1, #2
	bpl _021E04DE
	adds r1, r1, #4
_021E04DE:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B4C
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0500
	bl FUN_02022974
_021E0500:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0478

	thumb_func_start ov21_021E0504
ov21_021E0504: @ 0x021E0504
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E0528
	adds r1, r4, #0
	b _021E052E
_021E0528:
	subs r1, r4, #2
	bpl _021E052E
	adds r1, r1, #4
_021E052E:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1A78
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0550
	bl FUN_02022974
_021E0550:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E056A
	subs r1, r1, #2
	bpl _021E056A
	adds r1, r1, #4
_021E056A:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1A78
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E058C
	bl FUN_02022974
_021E058C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0504

	thumb_func_start ov21_021E0590
ov21_021E0590: @ 0x021E0590
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E05B4
	adds r1, r4, #0
	b _021E05BA
_021E05B4:
	subs r1, r4, #2
	bpl _021E05BA
	adds r1, r1, #4
_021E05BA:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1AC0
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E05DC
	bl FUN_02022974
_021E05DC:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E05F6
	subs r1, r1, #2
	bpl _021E05F6
	adds r1, r1, #4
_021E05F6:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1AC0
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0618
	bl FUN_02022974
_021E0618:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0590

	thumb_func_start ov21_021E061C
ov21_021E061C: @ 0x021E061C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E0640
	adds r1, r4, #0
	b _021E0646
_021E0640:
	subs r1, r4, #2
	bpl _021E0646
	adds r1, r1, #4
_021E0646:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1A34
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0668
	bl FUN_02022974
_021E0668:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E0682
	subs r1, r1, #2
	bpl _021E0682
	adds r1, r1, #4
_021E0682:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1A34
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E06A4
	bl FUN_02022974
_021E06A4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E061C

	thumb_func_start ov21_021E06A8
ov21_021E06A8: @ 0x021E06A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E06CC
	adds r1, r4, #0
	b _021E06D2
_021E06CC:
	subs r1, r4, #2
	bpl _021E06D2
	adds r1, r1, #4
_021E06D2:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B94
	cmp r0, #0xf
	bne _021E06F0
	bl FUN_02022974
_021E06F0:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E070A
	subs r1, r1, #2
	bpl _021E070A
	adds r1, r1, #4
_021E070A:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1B94
	cmp r0, #0xf
	bne _021E0728
	bl FUN_02022974
_021E0728:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E06A8

	thumb_func_start ov21_021E072C
ov21_021E072C: @ 0x021E072C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E0750
	adds r1, r4, #0
	b _021E0756
_021E0750:
	subs r1, r4, #2
	bpl _021E0756
	adds r1, r1, #4
_021E0756:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1BD8
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0778
	bl FUN_02022974
_021E0778:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E0792
	subs r1, r1, #2
	bpl _021E0792
	adds r1, r1, #4
_021E0792:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1BD8
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E07B4
	bl FUN_02022974
_021E07B4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E072C

	thumb_func_start ov21_021E07B8
ov21_021E07B8: @ 0x021E07B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E07DC
	adds r1, r4, #0
	b _021E07E2
_021E07DC:
	subs r1, r4, #2
	bpl _021E07E2
	adds r1, r1, #4
_021E07E2:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1C30
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0804
	bl FUN_02022974
_021E0804:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E081E
	subs r1, r1, #2
	bpl _021E081E
	adds r1, r1, #4
_021E081E:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1C30
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0840
	bl FUN_02022974
_021E0840:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E07B8

	thumb_func_start ov21_021E0844
ov21_021E0844: @ 0x021E0844
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r4, [sp, #0x2c]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r0, r4, #0
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _021E0868
	adds r1, r4, #0
	b _021E086E
_021E0868:
	subs r1, r4, #2
	bpl _021E086E
	adds r1, r1, #4
_021E086E:
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1C88
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E0890
	bl FUN_02022974
_021E0890:
	adds r0, r4, #1
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl ov21_021E0B24
	adds r5, #0xb8
	ldr r0, [r5]
	adds r1, r4, #1
	cmp r0, #0
	beq _021E08AA
	subs r1, r1, #2
	bpl _021E08AA
	adds r1, r1, #4
_021E08AA:
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp]
	ldr r0, [sp, #0x28]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r6]
	ldr r1, [r7, #4]
	ldr r3, [sp, #0x10]
	bl ov21_021D1C88
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _021E08CC
	bl FUN_02022974
_021E08CC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0844

	thumb_func_start ov21_021E08D0
ov21_021E08D0: @ 0x021E08D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r1, r5, #0
	adds r1, #0xb8
	ldr r1, [r1]
	adds r4, r2, #0
	adds r7, r3, #0
	movs r0, #0
	cmp r1, #0
	beq _021E08EE
	subs r0, r0, #2
	bpl _021E08EE
	adds r0, r0, #4
_021E08EE:
	ldr r1, [sp, #0x28]
	adds r2, r4, #0
	str r1, [sp]
	ldr r1, [sp, #0x2c]
	adds r3, r7, #0
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E09A4
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	ldr r3, [r4, #0x10]
	movs r2, #1
	bl ov21_021DF870
	adds r2, r5, #0
	adds r2, #0xb8
	ldr r2, [r2]
	movs r1, #2
	cmp r2, #0
	beq _021E0926
	subs r1, r1, #2
	bpl _021E0926
	adds r1, r1, #4
_021E0926:
	ldr r2, [sp, #0x28]
	adds r3, r7, #0
	str r2, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov21_021E09A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E08D0

	thumb_func_start ov21_021E0944
ov21_021E0944: @ 0x021E0944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r6, r2, #0
	adds r5, r0, #0
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x34]
	ldr r3, [r6, #0x10]
	movs r2, #1
	bl ov21_021DF870
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	movs r4, #2
	cmp r0, #0
	beq _021E0970
	subs r4, r4, #2
	bpl _021E0970
	adds r4, r4, #4
_021E0970:
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r7, r2, r1
	lsls r0, r7, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x20]
	bl ov21_021D4D1C
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x14]
	str r0, [sp, #4]
	str r4, [sp, #8]
	adds r0, r5, #0
	adds r2, r6, #0
	str r7, [sp, #0xc]
	bl ov21_021E09A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0944

	thumb_func_start ov21_021E09A4
ov21_021E09A4: @ 0x021E09A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r0, [sp, #0x58]
	adds r6, r1, #0
	lsls r7, r0, #2
	ldr r0, [r5, r7]
	str r2, [sp]
	str r3, [sp, #4]
	ldr r4, [r6]
	cmp r0, #0
	bne _021E09C0
	bl FUN_02022974
_021E09C0:
	ldr r1, [sp]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	adds r0, r6, #0
	bl ov21_021E0B64
	str r0, [sp, #8]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x14]
	bl FUN_0200A72C
	movs r1, #0xb
	mvns r1, r1
	str r1, [sp, #0x20]
	movs r1, #0x28
	str r1, [sp, #0x24]
	movs r1, #3
	str r1, [sp, #0x28]
	movs r1, #0
	ldr r2, [sp, #4]
	str r1, [sp, #0x2c]
	movs r1, #1
	str r0, [sp, #0x18]
	str r1, [sp, #0x30]
	str r2, [sp, #0x34]
	bl FUN_0201FAB4
	str r0, [sp, #0xc]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x10
	movs r2, #2
	bl ov21_021D4D6C
	adds r6, r0, #0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E0A48 @ =0x000002B9
	ldr r3, [sp, #8]
	adds r1, r6, #0
	bl ov21_021D4E10
	str r6, [sp, #0x14]
	ldr r0, [r5, r7]
	adds r5, #0x20
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x5c]
	lsls r4, r0, #2
	add r0, sp, #0x10
	bl ov21_021D4CA0
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	ldr r1, [sp, #0xc]
	ldr r0, [r0]
	bl FUN_02012A60
	adds r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E0A48: .4byte 0x000002B9
	thumb_func_end ov21_021E09A4

	thumb_func_start ov21_021E0A4C
ov21_021E0A4C: @ 0x021E0A4C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r0, [r5, #4]
	adds r6, r2, #0
	bl ov21_021D37BC
	adds r1, r0, #0
	ldr r0, [r5, #4]
	adds r2, r6, #0
	bl ov21_021D334C
	adds r5, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	bne _021E0A70
	bl FUN_02022974
_021E0A70:
	cmp r5, #0
	beq _021E0A7A
	cmp r5, #1
	beq _021E0A7E
	b _021E0A82
_021E0A7A:
	movs r4, #0xd
	b _021E0A86
_021E0A7E:
	movs r4, #0xe
	b _021E0A86
_021E0A82:
	bl FUN_02022974
_021E0A86:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E0A4C

	thumb_func_start ov21_021E0A8C
ov21_021E0A8C: @ 0x021E0A8C
	movs r0, #0xd
	bx lr
	thumb_func_end ov21_021E0A8C

	thumb_func_start ov21_021E0A90
ov21_021E0A90: @ 0x021E0A90
	movs r0, #0xe
	bx lr
	thumb_func_end ov21_021E0A90

	thumb_func_start ov21_021E0A94
ov21_021E0A94: @ 0x021E0A94
	movs r0, #0x15
	bx lr
	thumb_func_end ov21_021E0A94

	thumb_func_start ov21_021E0A98
ov21_021E0A98: @ 0x021E0A98
	push {r3, lr}
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl ov21_021D33A4
	adds r0, #0x11
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E0A98

	thumb_func_start ov21_021E0AA8
ov21_021E0AA8: @ 0x021E0AA8
	push {r3, lr}
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl ov21_021D33BC
	adds r0, #0x11
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E0AA8

	thumb_func_start ov21_021E0AB8
ov21_021E0AB8: @ 0x021E0AB8
	push {r3, lr}
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl ov21_021D3374
	adds r0, #0xf
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E0AB8

	thumb_func_start ov21_021E0AC8
ov21_021E0AC8: @ 0x021E0AC8
	push {r3, lr}
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl ov21_021D338C
	adds r0, #0xf
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E0AC8

	thumb_func_start ov21_021E0AD8
ov21_021E0AD8: @ 0x021E0AD8
	movs r0, #0x14
	bx lr
	thumb_func_end ov21_021E0AD8

	thumb_func_start ov21_021E0ADC
ov21_021E0ADC: @ 0x021E0ADC
	push {r3, lr}
	ldr r0, [r1, #4]
	adds r1, r2, #0
	bl ov21_021D3404
	adds r0, #0x6f
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E0ADC

	thumb_func_start ov21_021E0AEC
ov21_021E0AEC: @ 0x021E0AEC
	push {r3, lr}
	ldr r0, [r1, #4]
	movs r1, #0x7b
	lsls r1, r1, #2
	bl ov21_021D3410
	adds r0, #0x73
	pop {r3, pc}
	thumb_func_end ov21_021E0AEC

	thumb_func_start ov21_021E0AFC
ov21_021E0AFC: @ 0x021E0AFC
	push {r3, lr}
	ldr r0, [r1, #4]
	ldr r1, _021E0B0C @ =0x000001E7
	bl ov21_021D3410
	adds r0, #0x75
	pop {r3, pc}
	nop
_021E0B0C: .4byte 0x000001E7
	thumb_func_end ov21_021E0AFC

	thumb_func_start ov21_021E0B10
ov21_021E0B10: @ 0x021E0B10
	push {r3, lr}
	ldr r0, [r1, #4]
	ldr r1, _021E0B20 @ =0x000001DF
	bl ov21_021D3410
	adds r0, #0x77
	pop {r3, pc}
	nop
_021E0B20: .4byte 0x000001DF
	thumb_func_end ov21_021E0B10

	thumb_func_start ov21_021E0B24
ov21_021E0B24: @ 0x021E0B24
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	adds r6, r1, #0
	adds r7, r2, #0
	adds r5, r4, #0
	cmp r0, #3
	bhi _021E0B5A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E0B3E: @ jump table
	.2byte _021E0B48 - _021E0B3E - 2 @ case 0
	.2byte _021E0B46 - _021E0B3E - 2 @ case 1
	.2byte _021E0B50 - _021E0B3E - 2 @ case 2
	.2byte _021E0B4E - _021E0B3E - 2 @ case 3
_021E0B46:
	movs r4, #0x68
_021E0B48:
	adds r4, #0x4c
	movs r5, #0x58
	b _021E0B5E
_021E0B4E:
	movs r4, #0x68
_021E0B50:
	movs r0, #0x53
	lsls r0, r0, #2
	adds r4, r4, r0
	movs r5, #0x58
	b _021E0B5E
_021E0B5A:
	bl FUN_02022974
_021E0B5E:
	str r4, [r6]
	str r5, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E0B24

	thumb_func_start ov21_021E0B64
ov21_021E0B64: @ 0x021E0B64
	push {r3, lr}
	cmp r2, #0xc
	bhi _021E0BF6
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021E0B76: @ jump table
	.2byte _021E0B90 - _021E0B76 - 2 @ case 0
	.2byte _021E0B98 - _021E0B76 - 2 @ case 1
	.2byte _021E0BA0 - _021E0B76 - 2 @ case 2
	.2byte _021E0BA8 - _021E0B76 - 2 @ case 3
	.2byte _021E0BC0 - _021E0B76 - 2 @ case 4
	.2byte _021E0BC8 - _021E0B76 - 2 @ case 5
	.2byte _021E0BB0 - _021E0B76 - 2 @ case 6
	.2byte _021E0BB8 - _021E0B76 - 2 @ case 7
	.2byte _021E0BD0 - _021E0B76 - 2 @ case 8
	.2byte _021E0BD8 - _021E0B76 - 2 @ case 9
	.2byte _021E0BE0 - _021E0B76 - 2 @ case 10
	.2byte _021E0BE8 - _021E0B76 - 2 @ case 11
	.2byte _021E0BF0 - _021E0B76 - 2 @ case 12
_021E0B90:
	adds r2, r3, #0
	bl ov21_021E0A4C
	pop {r3, pc}
_021E0B98:
	adds r2, r3, #0
	bl ov21_021E0A8C
	pop {r3, pc}
_021E0BA0:
	adds r2, r3, #0
	bl ov21_021E0A90
	pop {r3, pc}
_021E0BA8:
	adds r2, r3, #0
	bl ov21_021E0A94
	pop {r3, pc}
_021E0BB0:
	adds r2, r3, #0
	bl ov21_021E0A98
	pop {r3, pc}
_021E0BB8:
	adds r2, r3, #0
	bl ov21_021E0AA8
	pop {r3, pc}
_021E0BC0:
	adds r2, r3, #0
	bl ov21_021E0AB8
	pop {r3, pc}
_021E0BC8:
	adds r2, r3, #0
	bl ov21_021E0AC8
	pop {r3, pc}
_021E0BD0:
	adds r2, r3, #0
	bl ov21_021E0AD8
	pop {r3, pc}
_021E0BD8:
	adds r2, r3, #0
	bl ov21_021E0ADC
	pop {r3, pc}
_021E0BE0:
	adds r2, r3, #0
	bl ov21_021E0AEC
	pop {r3, pc}
_021E0BE8:
	adds r2, r3, #0
	bl ov21_021E0AFC
	pop {r3, pc}
_021E0BF0:
	adds r2, r3, #0
	bl ov21_021E0B10
_021E0BF6:
	pop {r3, pc}
	thumb_func_end ov21_021E0B64

	thumb_func_start ov21_021E0BF8
ov21_021E0BF8: @ 0x021E0BF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E0BFE:
	ldr r0, [r5, #0x20]
	bl ov21_021D4D1C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E0BFE
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E0BF8

	thumb_func_start ov21_021E0C10
ov21_021E0C10: @ 0x021E0C10
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02021CAC
	adds r0, r4, #0
	movs r1, #0x18
	adds r0, #0xc0
	str r1, [r0]
	movs r0, #1
	adds r4, #0xc4
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E0C10

	thumb_func_start ov21_021E0C30
ov21_021E0C30: @ 0x021E0C30
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	cmp r0, #0
	beq _021E0C66
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xc0
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	cmp r0, #0
	bgt _021E0C66
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0
	adds r4, #0xc4
	str r0, [r4]
_021E0C66:
	pop {r4, pc}
	thumb_func_end ov21_021E0C30

	thumb_func_start ov21_021E0C68
ov21_021E0C68: @ 0x021E0C68
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r7, #0
	bl ov21_021E0D04
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021E0D40
	str r4, [r5]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x20]
	bl ov21_021E0D90
	str r0, [r5, #0x24]
	ldr r0, _021E0CA8 @ =ov21_021E0D94
	str r0, [r5, #8]
	ldr r0, _021E0CAC @ =ov21_021E0D98
	str r0, [r5, #0xc]
	ldr r0, _021E0CB0 @ =ov21_021E0DA8
	str r0, [r5, #0x10]
	ldr r0, _021E0CB4 @ =ov21_021E0DAC
	str r0, [r5, #0x14]
	ldr r0, _021E0CB8 @ =ov21_021E0E8C
	str r0, [r5, #0x18]
	ldr r0, _021E0CBC @ =ov21_021E0E90
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E0CA8: .4byte ov21_021E0D94
_021E0CAC: .4byte ov21_021E0D98
_021E0CB0: .4byte ov21_021E0DA8
_021E0CB4: .4byte ov21_021E0DAC
_021E0CB8: .4byte ov21_021E0E8C
_021E0CBC: .4byte ov21_021E0E90
	thumb_func_end ov21_021E0C68

	thumb_func_start ov21_021E0CC0
ov21_021E0CC0: @ 0x021E0CC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E0D68
	ldr r0, [r4, #4]
	bl ov21_021E0D7C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E0CC0

	thumb_func_start ov21_021E0CD4
ov21_021E0CD4: @ 0x021E0CD4
	ldr r0, [r0]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	thumb_func_end ov21_021E0CD4

	thumb_func_start ov21_021E0CDC
ov21_021E0CDC: @ 0x021E0CDC
	ldr r0, [r0]
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E0CDC

	thumb_func_start ov21_021E0CE4
ov21_021E0CE4: @ 0x021E0CE4
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E0CE4

	thumb_func_start ov21_021E0CE8
ov21_021E0CE8: @ 0x021E0CE8
	ldr r2, [r0]
	movs r0, #1
	cmp r1, #1
	bne _021E0CF4
	movs r1, #0
	adds r0, r1, #0
_021E0CF4:
	str r1, [r2, #0x1c]
	bx lr
	thumb_func_end ov21_021E0CE8

	thumb_func_start ov21_021E0CF8
ov21_021E0CF8: @ 0x021E0CF8
	ldr r2, [r0]
	movs r0, #0
	str r1, [r2, #0x18]
	str r0, [r2, #0x1c]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E0CF8

	thumb_func_start ov21_021E0D04
ov21_021E0D04: @ 0x021E0D04
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x20
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E0D16
	bl FUN_02022974
_021E0D16:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D138C
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	str r0, [r4, #0x10]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E0D04

	thumb_func_start ov21_021E0D40
ov21_021E0D40: @ 0x021E0D40
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E0D52
	bl FUN_02022974
_021E0D52:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E0D40

	thumb_func_start ov21_021E0D68
ov21_021E0D68: @ 0x021E0D68
	push {r4, lr}
	adds r4, r0, #0
	bne _021E0D72
	bl FUN_02022974
_021E0D72:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E0D68

	thumb_func_start ov21_021E0D7C
ov21_021E0D7C: @ 0x021E0D7C
	push {r4, lr}
	adds r4, r0, #0
	bne _021E0D86
	bl FUN_02022974
_021E0D86:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E0D7C

	thumb_func_start ov21_021E0D90
ov21_021E0D90: @ 0x021E0D90
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E0D90

	thumb_func_start ov21_021E0D94
ov21_021E0D94: @ 0x021E0D94
	movs r0, #1
	bx lr
	thumb_func_end ov21_021E0D94

	thumb_func_start ov21_021E0D98
ov21_021E0D98: @ 0x021E0D98
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021E0DA2
	movs r0, #1
	bx lr
_021E0DA2:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E0D98

	thumb_func_start ov21_021E0DA8
ov21_021E0DA8: @ 0x021E0DA8
	movs r0, #1
	bx lr
	thumb_func_end ov21_021E0DA8

	thumb_func_start ov21_021E0DAC
ov21_021E0DAC: @ 0x021E0DAC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #3
	bhi _021E0E82
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E0DC8: @ jump table
	.2byte _021E0DD0 - _021E0DC8 - 2 @ case 0
	.2byte _021E0DEA - _021E0DC8 - 2 @ case 1
	.2byte _021E0E34 - _021E0DC8 - 2 @ case 2
	.2byte _021E0E78 - _021E0DC8 - 2 @ case 3
_021E0DD0:
	ldr r0, [r4, #4]
	movs r1, #0x58
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x58
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E0E82
_021E0DEA:
	ldr r3, [r4, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E0F4C
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021E0E04
	cmp r0, #1
	beq _021E0E12
	cmp r0, #2
	beq _021E0E20
	b _021E0E2C
_021E0E04:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E15AC
	b _021E0E2C
_021E0E12:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E14D4
	b _021E0E2C
_021E0E20:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E16A8
_021E0E2C:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E0E82
_021E0E34:
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021E0E44
	cmp r0, #1
	beq _021E0E52
	cmp r0, #2
	beq _021E0E60
	b _021E0E6C
_021E0E44:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl ov21_021E1630
	adds r1, r0, #0
	b _021E0E6C
_021E0E52:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl ov21_021E1550
	adds r1, r0, #0
	b _021E0E6C
_021E0E60:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl ov21_021E1730
	adds r1, r0, #0
_021E0E6C:
	cmp r1, #0
	beq _021E0E82
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E0E82
_021E0E78:
	ldr r0, _021E0E88 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E0E82:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E0E88: .4byte 0x04000050
	thumb_func_end ov21_021E0DAC

	thumb_func_start ov21_021E0E8C
ov21_021E0E8C: @ 0x021E0E8C
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E0E8C

	thumb_func_start ov21_021E0E90
ov21_021E0E90: @ 0x021E0E90
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r5, [r4]
	adds r3, r0, #0
	adds r1, r2, #0
	ldr r0, [r4, #8]
	cmp r5, #4
	bhi _021E0F46
	adds r5, r5, r5
	add r5, pc
	ldrh r5, [r5, #6]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	add pc, r5
_021E0EAC: @ jump table
	.2byte _021E0EB6 - _021E0EAC - 2 @ case 0
	.2byte _021E0EEA - _021E0EAC - 2 @ case 1
	.2byte _021E0F28 - _021E0EAC - 2 @ case 2
	.2byte _021E0F36 - _021E0EAC - 2 @ case 3
	.2byte _021E0F42 - _021E0EAC - 2 @ case 4
_021E0EB6:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _021E0EC6
	cmp r1, #1
	beq _021E0ED0
	cmp r1, #2
	beq _021E0EDA
	b _021E0EE2
_021E0EC6:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E15AC
	b _021E0EE2
_021E0ED0:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E14D4
	b _021E0EE2
_021E0EDA:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E16A8
_021E0EE2:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E0F46
_021E0EEA:
	ldr r1, [r1, #0x14]
	cmp r1, #0
	beq _021E0EFA
	cmp r1, #1
	beq _021E0F06
	cmp r1, #2
	beq _021E0F12
	b _021E0F1C
_021E0EFA:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E1630
	adds r2, r0, #0
	b _021E0F1C
_021E0F06:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E1550
	adds r2, r0, #0
	b _021E0F1C
_021E0F12:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E1730
	adds r2, r0, #0
_021E0F1C:
	cmp r2, #0
	beq _021E0F46
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E0F46
_021E0F28:
	adds r1, r3, #0
	bl ov21_021E0F94
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E0F46
_021E0F36:
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E0F46
_021E0F42:
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E0F46:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E0E90

	thumb_func_start ov21_021E0F4C
ov21_021E0F4C: @ 0x021E0F4C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E11DC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E1228
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov21_021E127C
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov21_021E136C
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E0FBC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E10D0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E0F4C

	thumb_func_start ov21_021E0F94
ov21_021E0F94: @ 0x021E0F94
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	bl ov21_021E14BC
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E1328
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E0F94

	thumb_func_start ov21_021E0FBC
ov21_021E0FBC: @ 0x021E0FBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x21
	movs r3, #3
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x32
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r6, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x33
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r1, #3
	str r1, [sp]
	adds r6, r0, #0
	ldrh r0, [r2]
	movs r3, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x37
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r6, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x38
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r4, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E0FBC

	thumb_func_start ov21_021E10D0
ov21_021E10D0: @ 0x021E10D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp, #0x10]
	movs r0, #0x40
	adds r1, r2, #0
	bl FUN_02023790
	str r0, [sp, #0x18]
	ldr r2, _021E1180 @ =0x000002B9
	ldr r3, [sp, #0x10]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r7, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37CC
	cmp r0, #2
	beq _021E110A
	movs r7, #0
	bl FUN_02022974
_021E110A:
	ldr r0, [r4, #0x18]
	bl ov21_021E185C
	adds r1, r0, #0
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	bl FUN_0200B1B8
	movs r0, #0
	ldr r1, [sp, #0x18]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #0x48
	str r0, [sp]
	movs r1, #0
	lsrs r6, r3, #0x1f
	adds r6, r3, r6
	ldr r0, _021E1184 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	ldr r2, [sp, #0x18]
	asrs r6, r6, #1
	movs r3, #0xb0
	adds r0, r0, #4
	subs r3, r3, r6
	bl FUN_0201D78C
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_0200B190
	ldr r0, [r4, #0x1c]
	ldr r1, [sp, #0x10]
	str r0, [sp]
	ldr r3, [r4, #0x18]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov21_021E1188
	ldr r1, [sp, #0x10]
	ldr r3, [r4, #0x18]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov21_021E18A0
	ldr r1, [sp, #0x10]
	ldr r3, [r4, #0x18]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov21_021E18DC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E1180: .4byte 0x000002B9
_021E1184: .4byte 0x00020100
	thumb_func_end ov21_021E10D0

	thumb_func_start ov21_021E1188
ov21_021E1188: @ 0x021E1188
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r2, #0
	adds r1, r3, #0
	ldr r2, [sp, #0x20]
	adds r3, r4, #0
	bl ov21_021D56BC
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	cmp r0, #0xf0
	bhs _021E11B4
	lsrs r1, r0, #1
	movs r0, #0x80
	subs r3, r0, r1
	b _021E11B6
_021E11B4:
	movs r3, #8
_021E11B6:
	movs r0, #0x88
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E11D8 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	bl FUN_0201D78C
	adds r0, r4, #0
	bl ov21_021D5600
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E11D8: .4byte 0x00020100
	thumb_func_end ov21_021E1188

	thumb_func_start ov21_021E11DC
ov21_021E11DC: @ 0x021E11DC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	adds r6, r2, #0
	bl ov21_021D375C
	adds r3, r0, #0
	movs r0, #0x2b
	lsls r0, r0, #0xe
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	adds r2, r6, #0
	bl ov21_021D1778
	ldr r0, [r5]
	movs r1, #0
	bl ov21_021D238C
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E11DC

	thumb_func_start ov21_021E1210
ov21_021E1210: @ 0x021E1210
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	bl ov21_021D23C0
	ldr r0, [r4]
	movs r1, #0
	bl ov21_021D2360
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E1210

	thumb_func_start ov21_021E1228
ov21_021E1228: @ 0x021E1228
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl ov21_021D2170
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r2, r0, #0
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0x48
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	movs r3, #2
	bl ov21_021D1890
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E1228

	thumb_func_start ov21_021E1260
ov21_021E1260: @ 0x021E1260
	push {r4, lr}
	ldr r0, [r0]
	bl ov21_021D2170
	adds r4, r0, #0
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	adds r0, r4, #0
	bl FUN_02008780
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E1260

	thumb_func_start ov21_021E127C
ov21_021E127C: @ 0x021E127C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E1318 @ =0x00000FFA
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x5a
	bl FUN_02009A4C
	str r0, [r5, #8]
	bl FUN_0200A3DC
	ldr r0, [r5, #8]
	bl FUN_02009D4C
	ldr r0, _021E131C @ =0x00000FAD
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0xd
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0xc]
	bl FUN_0200A640
	ldr r0, [r5, #0xc]
	bl FUN_02009D4C
	ldr r0, _021E1320 @ =0x00000FF8
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x58
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x10]
	ldr r0, _021E1324 @ =0x00000FF9
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x59
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x14]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E1318: .4byte 0x00000FFA
_021E131C: .4byte 0x00000FAD
_021E1320: .4byte 0x00000FF8
_021E1324: .4byte 0x00000FF9
	thumb_func_end ov21_021E127C

	thumb_func_start ov21_021E1328
ov21_021E1328: @ 0x021E1328
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #0xc]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E1328

	thumb_func_start ov21_021E136C
ov21_021E136C: @ 0x021E136C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	adds r6, r0, #0
	adds r0, r2, #0
	adds r5, r1, #0
	ldr r0, [r0, #4]
	str r2, [sp, #0x2c]
	adds r7, r3, #0
	ldr r4, [r5]
	bl ov21_021D37BC
	ldr r3, _021E145C @ =0x00000FF9
	str r0, [sp, #0x30]
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #5
	str r2, [sp, #0x10]
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	adds r2, r3, #0
	add r0, sp, #0x7c
	subs r2, #0x4c
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x5c]
	add r0, sp, #0x7c
	str r0, [sp, #0x60]
	movs r0, #0x20
	str r0, [sp, #0x70]
	movs r0, #1
	str r0, [sp, #0x74]
	movs r0, #3
	lsls r0, r0, #0x12
	str r0, [sp, #0x64]
	movs r0, #0xd
	lsls r0, r0, #0xe
	str r0, [sp, #0x68]
	add r0, sp, #0x5c
	str r7, [sp, #0x78]
	bl FUN_02021B90
	movs r1, #0x11
	str r0, [r6]
	bl FUN_02021D6C
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #4]
	bl ov21_021D37CC
	cmp r0, #2
	beq _021E1404
	movs r0, #0
	str r0, [sp, #0x30]
_021E1404:
	ldr r1, [sp, #0x30]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov21_021E1460
	adds r4, r0, #0
	ldr r0, [r5]
	movs r1, #1
	bl ov21_021D2344
	movs r1, #0x15
	ldr r2, [r5]
	lsls r1, r1, #4
	ldr r1, [r2, r1]
	str r1, [sp, #0x34]
	movs r1, #0
	bl FUN_0200A72C
	str r0, [sp, #0x3c]
	ldr r0, [r6]
	str r0, [sp, #0x40]
	movs r0, #0x4d
	mvns r0, r0
	str r0, [sp, #0x44]
	adds r0, #0x46
	str r0, [sp, #0x48]
	movs r0, #0
	str r0, [sp, #0x4c]
	movs r0, #0x1f
	str r0, [sp, #0x50]
	movs r0, #1
	str r0, [sp, #0x54]
	str r7, [sp, #0x58]
	str r4, [sp, #0x38]
	add r0, sp, #0x34
	bl ov21_021D4CA0
	str r0, [r6, #4]
	adds r0, r4, #0
	bl ov21_021D4DA0
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E145C: .4byte 0x00000FF9
	thumb_func_end ov21_021E136C

	thumb_func_start ov21_021E1460
ov21_021E1460: @ 0x021E1460
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x15
	ldr r1, [r5]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r7, r2, #0
	movs r1, #0x12
	movs r2, #2
	bl ov21_021D4D6C
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	adds r2, r7, #0
	bl ov21_021D566C
	adds r6, r0, #0
	movs r0, #2
	adds r1, r6, #0
	movs r2, #0
	bl FUN_02002D7C
	cmp r0, #0x88
	bhs _021E149C
	movs r1, #0x88
	subs r0, r1, r0
	lsrs r3, r0, #1
	b _021E149E
_021E149C:
	movs r3, #0
_021E149E:
	movs r0, #0
	str r0, [sp]
	movs r0, #0x15
	ldr r1, [r5]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021D4E80
	adds r0, r6, #0
	bl ov21_021D5600
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E1460

	thumb_func_start ov21_021E14BC
ov21_021E14BC: @ 0x021E14BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	bl ov21_021D4D1C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E14BC

	thumb_func_start ov21_021E14D4
ov21_021E14D4: @ 0x021E14D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r7, r0, #0
	ldr r0, [r5]
	movs r1, #1
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov21_021D2360
	adds r0, r7, #0
	bl ov21_021E17AC
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E1546
	cmp r6, #0
	beq _021E1522
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2b
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	b _021E1546
_021E1522:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2b
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021E1546:
	adds r0, r5, #0
	bl ov21_021E17DC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E14D4

	thumb_func_start ov21_021E1550
ov21_021E1550: @ 0x021E1550
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r2, #0x10]
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5]
	beq _021E1570
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	b _021E157A
_021E1570:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
_021E157A:
	adds r4, r0, #0
	cmp r4, #1
	bne _021E15A2
	cmp r6, #1
	bne _021E1594
	adds r0, r7, #0
	bl ov21_021E17C4
	ldr r0, [r5]
	movs r1, #0
	bl ov21_021D2360
	b _021E15A8
_021E1594:
	adds r0, r5, #0
	bl ov21_021E1260
	adds r0, r5, #0
	bl ov21_021E1210
	b _021E15A8
_021E15A2:
	adds r0, r5, #0
	bl ov21_021E17DC
_021E15A8:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E1550

	thumb_func_start ov21_021E15AC
ov21_021E15AC: @ 0x021E15AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov21_021E17AC
	cmp r6, #0
	bne _021E15D2
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	adds r0, r7, #0
	movs r3, #4
	bl ov21_021E17EC
	adds r0, r7, #0
	bl ov21_021E1824
_021E15D2:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E162C
	cmp r6, #0
	beq _021E1608
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E1608:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021E162C:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E15AC

	thumb_func_start ov21_021E1630
ov21_021E1630: @ 0x021E1630
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bne _021E1650
	bl ov21_021E1808
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E1840
	str r0, [sp, #4]
	b _021E1656
_021E1650:
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
_021E1656:
	ldr r0, [r6, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4]
	beq _021E1670
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #8]
	b _021E167C
_021E1670:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #8]
_021E167C:
	movs r1, #0
	add r2, sp, #0
_021E1680:
	ldr r0, [r2]
	cmp r0, #0
	beq _021E168E
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #3
	blt _021E1680
_021E168E:
	cmp r1, #3
	bne _021E16A2
	cmp r7, #1
	bne _021E169C
	adds r0, r5, #0
	bl ov21_021E17C4
_021E169C:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021E16A2:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E1630

	thumb_func_start ov21_021E16A8
ov21_021E16A8: @ 0x021E16A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r7, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl ov21_021E17AC
	ldr r0, [r5]
	movs r1, #1
	bl ov21_021D2360
	cmp r6, #0
	bne _021E16D0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	adds r0, r7, #0
	movs r3, #1
	bl ov21_021E17EC
_021E16D0:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E172A
	cmp r6, #0
	beq _021E1706
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E1706:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021E172A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E16A8

	thumb_func_start ov21_021E1730
ov21_021E1730: @ 0x021E1730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bne _021E1746
	bl ov21_021E1808
	str r0, [sp]
	b _021E174A
_021E1746:
	movs r0, #1
	str r0, [sp]
_021E174A:
	ldr r0, [r4, #0x10]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5]
	beq _021E1764
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #4]
	b _021E1770
_021E1764:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #4]
_021E1770:
	movs r1, #0
	add r2, sp, #0
_021E1774:
	ldr r0, [r2]
	cmp r0, #0
	beq _021E1782
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #2
	blt _021E1774
_021E1782:
	cmp r1, #2
	bne _021E17A6
	cmp r6, #1
	bne _021E179A
	adds r0, r7, #0
	bl ov21_021E17C4
	ldr r0, [r5]
	movs r1, #0
	bl ov21_021D2360
	b _021E17A0
_021E179A:
	adds r0, r5, #0
	bl ov21_021E1210
_021E17A0:
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E17A6:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E1730

	thumb_func_start ov21_021E17AC
ov21_021E17AC: @ 0x021E17AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02021FE0
	ldr r0, [r4, #4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r4, pc}
	thumb_func_end ov21_021E17AC

	thumb_func_start ov21_021E17C4
ov21_021E17C4: @ 0x021E17C4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02021FE0
	ldr r0, [r4, #4]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r4, pc}
	thumb_func_end ov21_021E17C4

	thumb_func_start ov21_021E17DC
ov21_021E17DC: @ 0x021E17DC
	movs r1, #0x5b
	ldr r0, [r0]
	lsls r1, r1, #2
	ldr r3, _021E17E8 @ =ov21_021D24FC
	adds r1, r0, r1
	bx r3
	.align 2, 0
_021E17E8: .4byte ov21_021D24FC
	thumb_func_end ov21_021E17DC

	thumb_func_start ov21_021E17EC
ov21_021E17EC: @ 0x021E17EC
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	adds r0, #0x18
	movs r1, #0x30
	adds r2, r4, #0
	movs r3, #0x48
	bl ov21_021D2648
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E17EC

	thumb_func_start ov21_021E1808
ov21_021E1808: @ 0x021E1808
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x18
	bl ov21_021D2664
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r1, [r5, #0x18]
	ldr r2, [r5, #0x1c]
	bl ov21_021D2164
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E1808

	thumb_func_start ov21_021E1824
ov21_021E1824: @ 0x021E1824
	push {r3, lr}
	sub sp, #8
	movs r1, #0x52
	str r1, [sp]
	movs r1, #4
	str r1, [sp, #4]
	adds r0, #0x38
	movs r1, #0xac
	movs r2, #0xaa
	movs r3, #0x20
	bl ov21_021D2648
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov21_021E1824

	thumb_func_start ov21_021E1840
ov21_021E1840: @ 0x021E1840
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x38
	bl ov21_021D2664
	adds r6, r0, #0
	ldr r0, [r4]
	ldr r1, [r5, #0x38]
	ldr r2, [r5, #0x3c]
	bl ov21_021D1848
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E1840

	thumb_func_start ov21_021E185C
ov21_021E185C: @ 0x021E185C
	push {r4, lr}
	cmp r0, #7
	bhi _021E1896
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E186E: @ jump table
	.2byte _021E1896 - _021E186E - 2 @ case 0
	.2byte _021E187E - _021E186E - 2 @ case 1
	.2byte _021E1882 - _021E186E - 2 @ case 2
	.2byte _021E1886 - _021E186E - 2 @ case 3
	.2byte _021E188A - _021E186E - 2 @ case 4
	.2byte _021E188E - _021E186E - 2 @ case 5
	.2byte _021E1896 - _021E186E - 2 @ case 6
	.2byte _021E1892 - _021E186E - 2 @ case 7
_021E187E:
	movs r4, #0x7d
	b _021E189A
_021E1882:
	movs r4, #0x16
	b _021E189A
_021E1886:
	movs r4, #0x17
	b _021E189A
_021E188A:
	movs r4, #0x19
	b _021E189A
_021E188E:
	movs r4, #0x18
	b _021E189A
_021E1892:
	movs r4, #0x1a
	b _021E189A
_021E1896:
	bl FUN_02022974
_021E189A:
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E185C

	thumb_func_start ov21_021E18A0
ov21_021E18A0: @ 0x021E18A0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl ov21_021D561C
	adds r4, r0, #0
	movs r0, #0x60
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E18D8 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	movs r3, #0x78
	bl FUN_0201D78C
	adds r0, r4, #0
	bl ov21_021D5600
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E18D8: .4byte 0x00020100
	thumb_func_end ov21_021E18A0

	thumb_func_start ov21_021E18DC
ov21_021E18DC: @ 0x021E18DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r2, #0
	adds r1, r3, #0
	adds r2, r4, #0
	bl ov21_021D566C
	adds r4, r0, #0
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xf0
	subs r3, r1, r0
	movs r0, #0x70
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E1920 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	bl FUN_0201D78C
	adds r0, r4, #0
	bl ov21_021D5600
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E1920: .4byte 0x00020100
	thumb_func_end ov21_021E18DC

	thumb_func_start ov21_021E1924
ov21_021E1924: @ 0x021E1924
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021E199C
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E19FC
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E1A24
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E1ACC
	str r0, [r5, #0x24]
	ldr r0, _021E196C @ =ov21_021E1AD0
	str r0, [r5, #8]
	ldr r0, _021E1970 @ =ov21_021E1B14
	str r0, [r5, #0xc]
	ldr r0, _021E1974 @ =ov21_021E1B54
	str r0, [r5, #0x10]
	ldr r0, _021E1978 @ =ov21_021E1B68
	str r0, [r5, #0x14]
	ldr r0, _021E197C @ =ov21_021E1BFC
	str r0, [r5, #0x18]
	ldr r0, _021E1980 @ =ov21_021E1CB8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E196C: .4byte ov21_021E1AD0
_021E1970: .4byte ov21_021E1B14
_021E1974: .4byte ov21_021E1B54
_021E1978: .4byte ov21_021E1B68
_021E197C: .4byte ov21_021E1BFC
_021E1980: .4byte ov21_021E1CB8
	thumb_func_end ov21_021E1924

	thumb_func_start ov21_021E1984
ov21_021E1984: @ 0x021E1984
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E1A7C
	ldr r0, [r4]
	bl ov21_021E1A90
	ldr r0, [r4, #0x20]
	bl ov21_021E1AA4
	pop {r4, pc}
	thumb_func_end ov21_021E1984

	thumb_func_start ov21_021E199C
ov21_021E199C: @ 0x021E199C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E19AE
	bl FUN_02022974
_021E19AE:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021E19B4:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E19B4
	adds r0, r5, #0
	bl ov21_021D13A0
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #3
	bl ov21_021D1430
	str r0, [r4, #0x14]
	adds r0, r5, #0
	movs r1, #2
	bl ov21_021D1410
	ldr r0, [r0]
	movs r1, #3
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov21_021D1410
	str r0, [r4, #0xc]
	adds r0, r5, #0
	movs r1, #4
	bl ov21_021D1410
	str r0, [r4, #0x10]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E199C

	thumb_func_start ov21_021E19FC
ov21_021E19FC: @ 0x021E19FC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E1A0E
	bl FUN_02022974
_021E1A0E:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E19FC

	thumb_func_start ov21_021E1A24
ov21_021E1A24: @ 0x021E1A24
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov21_021E1ACC
	adds r7, r0, #0
	movs r1, #0x14
	muls r7, r1, r7
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E1A44
	bl FUN_02022974
_021E1A44:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	blx FUN_020D5124
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl ov21_021D4A94
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x14
	adds r2, r6, #0
	movs r3, #2
	bl ov21_021D4BB4
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x28
	adds r2, r6, #0
	movs r3, #4
	bl ov21_021D4AF8
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E1A24

	thumb_func_start ov21_021E1A7C
ov21_021E1A7C: @ 0x021E1A7C
	push {r4, lr}
	adds r4, r0, #0
	bne _021E1A86
	bl FUN_02022974
_021E1A86:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E1A7C

	thumb_func_start ov21_021E1A90
ov21_021E1A90: @ 0x021E1A90
	push {r4, lr}
	adds r4, r0, #0
	bne _021E1A9A
	bl FUN_02022974
_021E1A9A:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E1A90

	thumb_func_start ov21_021E1AA4
ov21_021E1AA4: @ 0x021E1AA4
	push {r4, lr}
	adds r4, r0, #0
	bne _021E1AAE
	bl FUN_02022974
_021E1AAE:
	adds r0, r4, #0
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x14
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x28
	bl ov21_021D4660
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021E1AA4

	thumb_func_start ov21_021E1ACC
ov21_021E1ACC: @ 0x021E1ACC
	movs r0, #3
	bx lr
	thumb_func_end ov21_021E1ACC

	thumb_func_start ov21_021E1AD0
ov21_021E1AD0: @ 0x021E1AD0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r6, r1, #0
	movs r1, #0x3c
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x3c
	adds r4, r0, #0
	blx FUN_020D5124
	movs r1, #0
	adds r2, r4, #0
	movs r0, #4
_021E1AEE:
	adds r1, r1, #1
	str r0, [r2, #0x14]
	adds r2, r2, #4
	cmp r1, #8
	blt _021E1AEE
	movs r0, #0
	str r0, [r4, #0x10]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E1D40
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E2968
	str r4, [r5, #8]
	movs r0, #1
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E1AD0

	thumb_func_start ov21_021E1B14
ov21_021E1B14: @ 0x021E1B14
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E1B24
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E1B24:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E1B2E
	movs r0, #0
	pop {r3, r4, r5, pc}
_021E1B2E:
	ldr r0, [r5, #0x14]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E1B4E
	adds r0, r4, #0
	bl ov21_021E28A8
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E1E00
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E2864
_021E1B4E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E1B14

	thumb_func_start ov21_021E1B54
ov21_021E1B54: @ 0x021E1B54
	push {r4, lr}
	ldr r4, [r0, #8]
	adds r0, r4, #0
	bl ov21_021E1E74
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021E1B54

	thumb_func_start ov21_021E1B68
ov21_021E1B68: @ 0x021E1B68
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	str r2, [sp]
	ldr r7, [r3, #8]
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E1BF6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E1B86: @ jump table
	.2byte _021E1B8E - _021E1B86 - 2 @ case 0
	.2byte _021E1BA8 - _021E1B86 - 2 @ case 1
	.2byte _021E1BCE - _021E1B86 - 2 @ case 2
	.2byte _021E1BE4 - _021E1B86 - 2 @ case 3
_021E1B8E:
	ldr r0, [r4, #4]
	movs r1, #0xc4
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0xc4
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E1BF6
_021E1BA8:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E2014
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021E28D0
	ldr r2, [sp]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021E25F8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E1BF6
_021E1BCE:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021E2664
	cmp r0, #0
	beq _021E1BF6
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E1BF6
_021E1BE4:
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0
	bl ov21_021D25AC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E1BF6:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E1B68

	thumb_func_start ov21_021E1BFC
ov21_021E1BFC: @ 0x021E1BFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x1c]
	adds r0, r1, #0
	ldr r0, [r0, #8]
	ldr r6, [r3, #8]
	str r0, [sp, #0x28]
	adds r0, #0xc0
	str r1, [sp, #0x20]
	ldr r1, [r0]
	ldr r0, [r6, #0x38]
	cmp r1, r0
	beq _021E1C26
	ldr r0, [sp, #0x28]
	adds r1, r6, #0
	bl ov21_021E28D0
	ldr r0, [sp, #0x28]
	ldr r1, [r6, #0x38]
	adds r0, #0xc0
	str r1, [r0]
_021E1C26:
	movs r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r7, [sp, #0x28]
	str r0, [sp, #0x24]
	adds r0, #0xa0
	ldr r5, [sp, #0x28]
	str r0, [sp, #0x24]
	adds r7, #0x80
	adds r4, r6, #0
_021E1C3A:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _021E1C44
	movs r1, #4
	b _021E1C46
_021E1C44:
	movs r1, #5
_021E1C46:
	movs r0, #5
	mvns r0, r0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x20]
	str r7, [sp, #8]
	ldr r0, [r0, #4]
	str r0, [sp, #0xc]
	movs r0, #4
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	ldr r1, [r5]
	ldr r2, [r5, #0x20]
	ldr r3, [r4, #0x14]
	bl ov21_021E26A0
	ldr r0, [r5, #0x50]
	ldr r1, [r4, #0x14]
	bl ov21_021D144C
	ldr r0, [sp, #0x24]
	adds r7, r7, #4
	adds r0, r0, #4
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x2c]
	adds r4, r4, #4
	adds r0, r0, #1
	adds r5, r5, #4
	str r0, [sp, #0x2c]
	cmp r0, #1
	ble _021E1C3A
	ldr r0, [sp, #0x28]
	movs r4, #2
	adds r0, #8
	adds r6, #8
	str r0, [sp, #0x28]
_021E1C96:
	ldr r0, [sp, #0x28]
	ldr r1, [r6, #0x14]
	ldr r0, [r0]
	adds r2, r4, #0
	bl ov21_021E29A4
	ldr r0, [sp, #0x28]
	adds r4, r4, #1
	adds r0, r0, #4
	adds r6, r6, #4
	str r0, [sp, #0x28]
	cmp r4, #8
	blt _021E1C96
	movs r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E1BFC

	thumb_func_start ov21_021E1CB8
ov21_021E1CB8: @ 0x021E1CB8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #4
	bhi _021E1D3A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E1CD4: @ jump table
	.2byte _021E1CDE - _021E1CD4 - 2 @ case 0
	.2byte _021E1D00 - _021E1CD4 - 2 @ case 1
	.2byte _021E1D16 - _021E1CD4 - 2 @ case 2
	.2byte _021E1D28 - _021E1CD4 - 2 @ case 3
	.2byte _021E1D36 - _021E1CD4 - 2 @ case 4
_021E1CDE:
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	bl ov21_021D25AC
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov21_021E25F8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E1D3A
_021E1D00:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl ov21_021E2664
	cmp r0, #0
	beq _021E1D3A
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E1D3A
_021E1D16:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E2044
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E1D3A
_021E1D28:
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E1D3A
_021E1D36:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E1D3A:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E1CB8

	thumb_func_start ov21_021E1D40
ov21_021E1D40: @ 0x021E1D40
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #0x20
	bl FUN_02018144
	str r0, [r5, #4]
	movs r0, #0xd0
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x70
	movs r2, #0x98
	movs r3, #0x30
	bl ov21_021D154C
	movs r0, #0xd0
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x38
	adds r0, r0, #4
	movs r2, #0x60
	movs r3, #0x30
	bl ov21_021D154C
	movs r0, #0x30
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0xa0
	adds r0, #8
	movs r2, #0xc0
	movs r3, #8
	bl ov21_021D154C
	movs r0, #0x58
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0xa0
	adds r0, #0xc
	movs r2, #0xc0
	movs r3, #0x30
	bl ov21_021D154C
	movs r0, #0x80
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0xa0
	adds r0, #0x10
	movs r2, #0xc0
	movs r3, #0x58
	bl ov21_021D154C
	movs r0, #0xa8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0xa0
	adds r0, #0x14
	movs r2, #0xc0
	movs r3, #0x80
	bl ov21_021D154C
	movs r0, #0xd0
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0xa0
	adds r0, #0x18
	movs r2, #0xc0
	movs r3, #0xa8
	bl ov21_021D154C
	movs r0, #0xf8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0xa0
	adds r0, #0x1c
	movs r2, #0xc0
	movs r3, #0xd0
	bl ov21_021D154C
	str r4, [r5, #8]
	str r5, [r5, #0xc]
	str r6, [sp]
	adds r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E1DFC @ =ov21_021E1E8C
	movs r1, #8
	adds r3, #8
	bl FUN_02023FCC
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E1DFC: .4byte ov21_021E1E8C
	thumb_func_end ov21_021E1D40

	thumb_func_start ov21_021E1E00
ov21_021E1E00: @ 0x021E1E00
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	adds r2, r4, #0
	movs r0, #3
_021E1E0A:
	adds r1, r1, #1
	str r0, [r2, #0x14]
	adds r2, r2, #4
	cmp r1, #8
	blt _021E1E0A
	ldr r0, [r4]
	bl FUN_0202404C
	ldr r0, [r4, #0x10]
	cmp r0, #5
	bhi _021E1E5A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E1E2C: @ jump table
	.2byte _021E1E38 - _021E1E2C - 2 @ case 0
	.2byte _021E1E3E - _021E1E2C - 2 @ case 1
	.2byte _021E1E44 - _021E1E2C - 2 @ case 2
	.2byte _021E1E4A - _021E1E2C - 2 @ case 3
	.2byte _021E1E50 - _021E1E2C - 2 @ case 4
	.2byte _021E1E56 - _021E1E2C - 2 @ case 5
_021E1E38:
	movs r0, #1
	str r0, [r4, #0x1c]
	b _021E1E5A
_021E1E3E:
	movs r0, #1
	str r0, [r4, #0x20]
	b _021E1E5A
_021E1E44:
	movs r0, #1
	str r0, [r4, #0x24]
	b _021E1E5A
_021E1E4A:
	movs r0, #1
	str r0, [r4, #0x28]
	b _021E1E5A
_021E1E50:
	movs r0, #1
	str r0, [r4, #0x2c]
	b _021E1E5A
_021E1E56:
	movs r0, #1
	str r0, [r4, #0x30]
_021E1E5A:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021E1E66
	cmp r0, #1
	beq _021E1E6C
	pop {r4, pc}
_021E1E66:
	movs r0, #2
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E1E6C:
	movs r0, #2
	str r0, [r4, #0x18]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E1E00

	thumb_func_start ov21_021E1E74
ov21_021E1E74: @ 0x021E1E74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02024034
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E1E74

	thumb_func_start ov21_021E1E8C
ov21_021E1E8C: @ 0x021E1E8C
	push {r3, r4, r5, lr}
	ldr r4, [r2, #4]
	ldr r5, [r2]
	lsls r2, r0, #2
	adds r2, r4, r2
	str r1, [r2, #0x14]
	cmp r1, #2
	bne _021E1F06
	cmp r0, #7
	bhi _021E1F06
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E1EAC: @ jump table
	.2byte _021E1EBC - _021E1EAC - 2 @ case 0
	.2byte _021E1EC2 - _021E1EAC - 2 @ case 1
	.2byte _021E1EC8 - _021E1EAC - 2 @ case 2
	.2byte _021E1EFE - _021E1EAC - 2 @ case 3
	.2byte _021E1F36 - _021E1EAC - 2 @ case 4
	.2byte _021E1F6C - _021E1EAC - 2 @ case 5
	.2byte _021E1FA2 - _021E1EAC - 2 @ case 6
	.2byte _021E1FD8 - _021E1EAC - 2 @ case 7
_021E1EBC:
	movs r0, #0
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_021E1EC2:
	movs r0, #1
	str r0, [r4, #0x34]
	pop {r3, r4, r5, pc}
_021E1EC8:
	ldr r0, [r4, #0x38]
	movs r1, #1
	tst r0, r1
	beq _021E1F06
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldr r0, [r5, #8]
	bne _021E1EDE
	bl ov21_021DE6D4
	b _021E1EE6
_021E1EDE:
	movs r1, #0
	bl ov21_021DE6D8
	movs r0, #1
_021E1EE6:
	cmp r0, #0
	beq _021E1F06
	ldr r2, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl ov21_021E27C0
	ldr r0, _021E2010 @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021E1EFE:
	ldr r1, [r4, #0x38]
	movs r0, #2
	tst r0, r1
	bne _021E1F08
_021E1F06:
	b _021E200C
_021E1F08:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	ldr r0, [r5, #0x10]
	bne _021E1F16
	bl ov21_021E0CE4
	b _021E1F1E
_021E1F16:
	movs r1, #0
	bl ov21_021E0CE8
	movs r0, #1
_021E1F1E:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021E27C0
	ldr r0, _021E2010 @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021E1F36:
	ldr r1, [r4, #0x38]
	movs r0, #4
	tst r0, r1
	beq _021E200C
	ldr r0, [r4, #0x10]
	cmp r0, #2
	ldr r0, [r5, #0x10]
	bne _021E1F4C
	bl ov21_021E0CE4
	b _021E1F54
_021E1F4C:
	movs r1, #0
	bl ov21_021E0CE8
	movs r0, #1
_021E1F54:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #2
	bl ov21_021E27C0
	ldr r0, _021E2010 @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021E1F6C:
	ldr r1, [r4, #0x38]
	movs r0, #8
	tst r0, r1
	beq _021E200C
	ldr r0, [r4, #0x10]
	cmp r0, #3
	ldr r0, [r5, #0x10]
	bne _021E1F82
	bl ov21_021E0CE4
	b _021E1F8A
_021E1F82:
	movs r1, #0
	bl ov21_021E0CE8
	movs r0, #1
_021E1F8A:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #3
	bl ov21_021E27C0
	ldr r0, _021E2010 @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021E1FA2:
	ldr r1, [r4, #0x38]
	movs r0, #0x10
	tst r0, r1
	beq _021E200C
	ldr r0, [r4, #0x10]
	cmp r0, #4
	ldr r0, [r5, #0x10]
	bne _021E1FB8
	bl ov21_021E0CE4
	b _021E1FC0
_021E1FB8:
	movs r1, #0
	bl ov21_021E0CE8
	movs r0, #1
_021E1FC0:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #4
	bl ov21_021E27C0
	ldr r0, _021E2010 @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021E1FD8:
	ldr r1, [r4, #0x38]
	movs r0, #0x20
	tst r0, r1
	beq _021E200C
	ldr r0, [r4, #0x10]
	cmp r0, #5
	ldr r0, [r5, #0x10]
	bne _021E1FEE
	bl ov21_021E0CE4
	b _021E1FF6
_021E1FEE:
	movs r1, #0
	bl ov21_021E0CE8
	movs r0, #1
_021E1FF6:
	cmp r0, #0
	beq _021E200C
	ldr r2, [r4, #0x10]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #5
	bl ov21_021E27C0
	ldr r0, _021E2010 @ =0x0000068B
	bl FUN_02005748
_021E200C:
	pop {r3, r4, r5, pc}
	nop
_021E2010: .4byte 0x0000068B
	thumb_func_end ov21_021E1E8C

	thumb_func_start ov21_021E2014
ov21_021E2014: @ 0x021E2014
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E20A4
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E2180
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E22C8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E2478
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E2014

	thumb_func_start ov21_021E2044
ov21_021E2044: @ 0x021E2044
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x20
	adds r6, r2, #0
	str r0, [sp]
	adds r4, r1, #0
	str r6, [sp, #4]
	ldr r0, [r4]
	movs r1, #9
	movs r2, #4
	movs r3, #0x80
	bl ov21_021D276C
	movs r0, #0x20
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r4]
	movs r1, #9
	movs r2, #4
	movs r3, #0xa0
	bl ov21_021D276C
	adds r0, r5, #0
	bl ov21_021E2458
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E256C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E226C
	movs r4, #0
_021E208A:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	cmp r0, #0
	beq _021E2098
	bl FUN_020181C4
_021E2098:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021E208A
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E2044

	thumb_func_start ov21_021E20A4
ov21_021E20A4: @ 0x021E20A4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x22
	movs r3, #6
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x3e
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r6, r0, #0
	ldrh r0, [r2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x3c
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r6, r0, #0
	movs r1, #6
	ldr r2, [sp, #0x10]
	movs r0, #0xe
	str r0, [sp]
	ldrh r0, [r2]
	adds r3, r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x3f
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	adds r4, r0, #0
	movs r1, #6
	ldr r2, [sp, #0x10]
	movs r0, #7
	str r0, [sp]
	ldrh r0, [r2]
	adds r3, r1, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r1, #6
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E20A4

	thumb_func_start ov21_021E2180
ov21_021E2180: @ 0x021E2180
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E2254 @ =0x000013EE
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x66
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r5, #0x40]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x40]
	bl FUN_02009D4C
	ldr r0, _021E2258 @ =0x000013EC
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x64
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x48]
	ldr r0, _021E225C @ =0x000013ED
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x65
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x4c]
	ldr r0, _021E2260 @ =0x000013EB
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x63
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r5, #0x70]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x70]
	bl FUN_02009D4C
	ldr r0, _021E2264 @ =0x000013E9
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x61
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x78]
	ldr r0, _021E2268 @ =0x000013EA
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x62
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x7c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021E2254: .4byte 0x000013EE
_021E2258: .4byte 0x000013EC
_021E225C: .4byte 0x000013ED
_021E2260: .4byte 0x000013EB
_021E2264: .4byte 0x000013E9
_021E2268: .4byte 0x000013EA
	thumb_func_end ov21_021E2180

	thumb_func_start ov21_021E226C
ov21_021E226C: @ 0x021E226C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	ldr r4, [r1]
	bl FUN_0200A4E4
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x40]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x48]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x4c]
	bl FUN_02009D68
	ldr r0, [r5, #0x70]
	bl FUN_0200A4E4
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x70]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x78]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x7c]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E226C

	thumb_func_start ov21_021E22C8
ov21_021E22C8: @ 0x021E22C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r4, [r1]
	ldr r3, _021E2444 @ =0x000013ED
	adds r7, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	adds r5, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, _021E2448 @ =0x0000083F
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x50
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x21
	str r0, [sp, #0x30]
	add r0, sp, #0x50
	str r0, [sp, #0x34]
	movs r0, #0x1f
	str r0, [sp, #0x44]
	movs r0, #2
	str r0, [sp, #0x48]
	lsls r0, r0, #0x12
	str r0, [sp, #0x38]
	movs r0, #3
	lsls r1, r1, #0xe
	lsls r0, r0, #0x12
	str r1, [sp, #0x3c]
	adds r0, r1, r0
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	str r5, [sp, #0x4c]
	bl FUN_02021B90
	movs r1, #0
	str r0, [r7]
	bl FUN_02021D6C
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #0x38]
	movs r1, #0x13
	movs r0, #3
	lsls r1, r1, #0xe
	lsls r0, r0, #0x12
	str r1, [sp, #0x3c]
	adds r0, r1, r0
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl FUN_02021B90
	movs r1, #0
	str r0, [r7, #4]
	bl FUN_02021D6C
	ldr r3, _021E244C @ =0x000013EA
	movs r0, #0
	movs r2, #5
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #2
	lsls r2, r2, #6
	str r1, [sp, #0x10]
	ldr r1, [r4, r2]
	str r1, [sp, #0x14]
	adds r1, r2, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	adds r1, r2, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r2, #0xc
	str r1, [sp, #0x1c]
	ldr r1, [r4, r2]
	ldr r2, _021E2448 @ =0x0000083F
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x50
	subs r3, r3, #1
	bl FUN_020093B4
	add r0, sp, #0x50
	str r0, [sp, #0x34]
	movs r1, #0xb
	movs r0, #3
	lsls r1, r1, #0x10
	lsls r0, r0, #0x12
	str r1, [sp, #0x3c]
	adds r0, r1, r0
	str r0, [sp, #0x3c]
	movs r0, #0
	ldr r4, _021E2450 @ =0x021E9D80
	ldr r5, _021E2454 @ =0x021E9D98
	str r0, [sp, #0x2c]
	adds r6, r7, #0
_021E23C6:
	ldr r0, [r4]
	str r0, [sp, #0x38]
	add r0, sp, #0x30
	bl FUN_02021B90
	str r0, [r6, #8]
	ldr r1, [r5]
	bl FUN_02021D6C
	ldr r0, [sp, #0x2c]
	adds r4, r4, #4
	adds r0, r0, #1
	adds r6, r6, #4
	adds r5, r5, #4
	str r0, [sp, #0x2c]
	cmp r0, #6
	blt _021E23C6
	movs r0, #0x1e
	str r0, [sp, #0x44]
	movs r0, #0xa
	lsls r0, r0, #0x10
	str r0, [sp, #0x38]
	movs r1, #0x86
	movs r0, #3
	lsls r1, r1, #0xc
	lsls r0, r0, #0x12
	str r1, [sp, #0x3c]
	adds r0, r1, r0
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl FUN_02021B90
	movs r1, #0xd
	str r0, [r7, #0x50]
	bl FUN_02021D6C
	movs r0, #6
	lsls r0, r0, #0x10
	movs r1, #0x4e
	str r0, [sp, #0x38]
	lsls r1, r1, #0xc
	lsls r0, r0, #1
	str r1, [sp, #0x3c]
	adds r0, r1, r0
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl FUN_02021B90
	movs r1, #0xc
	str r0, [r7, #0x54]
	bl FUN_02021D6C
	movs r1, #2
	adds r7, #8
	movs r0, #0
_021E2434:
	adds r1, r1, #1
	str r0, [r7, #0x50]
	adds r7, r7, #4
	cmp r1, #8
	blt _021E2434
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_021E2444: .4byte 0x000013ED
_021E2448: .4byte 0x0000083F
_021E244C: .4byte 0x000013EA
_021E2450: .4byte 0x021E9D80
_021E2454: .4byte 0x021E9D98
	thumb_func_end ov21_021E22C8

	thumb_func_start ov21_021E2458
ov21_021E2458: @ 0x021E2458
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E245E:
	ldr r0, [r5]
	bl FUN_02021BD4
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021E246E
	bl FUN_02021BD4
_021E246E:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021E245E
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E2458

	thumb_func_start ov21_021E2478
ov21_021E2478: @ 0x021E2478
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r2, #0
	ldr r4, [r1]
	cmp r0, #0
	bne _021E248C
	bl FUN_02022974
_021E248C:
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E2564 @ =0x0000083F
	bl FUN_02009DC8
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #8]
	movs r1, #0
	bl FUN_0200A72C
	movs r1, #5
	mvns r1, r1
	str r1, [sp, #0x1c]
	movs r1, #2
	movs r2, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	str r6, [sp, #0x2c]
	bl FUN_0201FAB4
	adds r7, r0, #0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #8
	movs r2, #4
	bl ov21_021D4D6C
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E2568 @ =0x000002B9
	adds r1, r6, #0
	movs r3, #0x21
	bl ov21_021D4DAC
	str r6, [sp, #0xc]
	ldr r0, [r5]
	str r0, [sp, #0x14]
	movs r0, #0x1f
	mvns r0, r0
	str r0, [sp, #0x18]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0x20]
	ldr r0, [r0]
	adds r1, r7, #4
	bl FUN_02012A60
	adds r0, r6, #0
	bl ov21_021D4DA0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #8
	movs r2, #4
	bl ov21_021D4D6C
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E2568 @ =0x000002B9
	adds r1, r6, #0
	movs r3, #0x22
	bl ov21_021D4DAC
	movs r1, #0x20
	subs r0, r1, r0
	str r6, [sp, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	str r0, [sp, #0x14]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0x24]
	ldr r0, [r0]
	adds r1, r7, #4
	bl FUN_02012A60
	adds r0, r6, #0
	bl ov21_021D4DA0
	movs r1, #2
	adds r5, #8
	movs r0, #0
_021E2556:
	adds r1, r1, #1
	str r0, [r5, #0x20]
	adds r5, r5, #4
	cmp r1, #8
	blt _021E2556
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E2564: .4byte 0x0000083F
_021E2568: .4byte 0x000002B9
	thumb_func_end ov21_021E2478

	thumb_func_start ov21_021E256C
ov21_021E256C: @ 0x021E256C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E2572:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021E257C
	bl ov21_021D4D1C
_021E257C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021E2572
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E256C

	thumb_func_start ov21_021E2588
ov21_021E2588: @ 0x021E2588
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #1
	adds r5, r0, #0
	movs r4, #0
	adds r6, r7, #0
_021E2592:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_02021FE0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021E25A8
	ldr r0, [r0]
	adds r1, r7, #0
	bl FUN_02012AF0
_021E25A8:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021E25B4
	movs r1, #1
	bl FUN_02021FE0
_021E25B4:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021E2592
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E2588

	thumb_func_start ov21_021E25C0
ov21_021E25C0: @ 0x021E25C0
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r7, r4, #0
	adds r6, r4, #0
_021E25CA:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_02021FE0
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _021E25E0
	ldr r0, [r0]
	adds r1, r7, #0
	bl FUN_02012AF0
_021E25E0:
	ldr r0, [r5, #0x50]
	cmp r0, #0
	beq _021E25EC
	movs r1, #0
	bl FUN_02021FE0
_021E25EC:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021E25CA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E25C0

	thumb_func_start ov21_021E25F8
ov21_021E25F8: @ 0x021E25F8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E2588
	ldr r0, [r4, #0x14]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E2660
	cmp r6, #0
	beq _021E263C
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0x19
	ldr r2, [r5]
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E263C:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0x19
	ldr r3, [r5]
	lsls r0, r0, #4
	adds r0, r3, r0
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021E2660:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E25F8

	thumb_func_start ov21_021E2664
ov21_021E2664: @ 0x021E2664
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r2, #0x14]
	adds r5, r1, #0
	adds r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E2684
	movs r0, #0x19
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov21_021D2424
	b _021E268A
_021E2684:
	movs r0, #2
	bl FUN_0200AC1C
_021E268A:
	cmp r0, #0
	beq _021E269C
	cmp r4, #0
	beq _021E2698
	adds r0, r6, #0
	bl ov21_021E25C0
_021E2698:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E269C:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E2664

	thumb_func_start ov21_021E26A0
ov21_021E26A0: @ 0x021E26A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r1, #0
	adds r1, r3, #0
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x30]
	ldr r6, [sp, #0x40]
	movs r5, #0
	bl ov21_021D144C
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x38]
	bl ov21_021E274C
	ldr r0, [sp, #8]
	bl FUN_02021E74
	cmp r0, #3
	bhi _021E2712
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E26DE: @ jump table
	.2byte _021E26E6 - _021E26DE - 2 @ case 0
	.2byte _021E26E6 - _021E26DE - 2 @ case 1
	.2byte _021E26F6 - _021E26DE - 2 @ case 2
	.2byte _021E2704 - _021E26DE - 2 @ case 3
_021E26E6:
	ldr r0, [r4]
	cmp r0, #0
	beq _021E2712
	movs r0, #0
	movs r5, #1
	movs r7, #9
	str r0, [r4]
	b _021E2712
_021E26F6:
	ldr r0, [r4]
	cmp r0, #1
	beq _021E2712
	movs r5, #1
	movs r7, #0xa
	str r5, [r4]
	b _021E2712
_021E2704:
	ldr r0, [r4]
	cmp r0, #2
	beq _021E2712
	movs r0, #2
	movs r5, #1
	movs r7, #8
	str r0, [r4]
_021E2712:
	cmp r5, #0
	beq _021E2748
	ldr r0, [r6]
	cmp r0, #0
	beq _021E2720
	bl FUN_020181C4
_021E2720:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x34]
	ldr r0, [r0]
	adds r1, r7, #0
	add r2, sp, #0x10
	bl ov21_021D27E0
	str r0, [r6]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r2, [r2, #0xc]
	movs r0, #0x1f
	lsls r1, r1, #5
	movs r3, #0x20
	bl FUN_0201DC68
	cmp r0, #0
	bne _021E2748
	bl FUN_02022974
_021E2748:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E26A0

	thumb_func_start ov21_021E274C
ov21_021E274C: @ 0x021E274C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov21_021D1524
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021E274C

	thumb_func_start ov21_021E275C
ov21_021E275C: @ 0x021E275C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	movs r6, #1
	str r6, [r1, #0x1c]
	ldr r3, [r4]
	adds r5, r2, #0
	ldr r2, [r3]
	movs r1, #4
	orrs r1, r2
	str r1, [r3]
	movs r1, #0
	str r1, [r0, #0x10]
	movs r1, #2
	ldr r0, [r4, #8]
	cmp r5, #5
	str r1, [r0, #0x14]
	bhi _021E27BC
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E278C: @ jump table
	.2byte _021E2798 - _021E278C - 2 @ case 0
	.2byte _021E27AA - _021E278C - 2 @ case 1
	.2byte _021E27AA - _021E278C - 2 @ case 2
	.2byte _021E27AA - _021E278C - 2 @ case 3
	.2byte _021E27AA - _021E278C - 2 @ case 4
	.2byte _021E27AA - _021E278C - 2 @ case 5
_021E2798:
	ldr r0, [r4, #8]
	movs r1, #0x30
	str r1, [r0, #8]
	ldr r0, [r4, #8]
	movs r1, #0x48
	str r1, [r0, #0xc]
	ldr r0, [r4, #8]
	str r6, [r0, #0x14]
	pop {r4, r5, r6, pc}
_021E27AA:
	ldr r0, [r4, #0x10]
	movs r1, #0x30
	movs r2, #0x48
	bl ov21_021E0CD4
	ldr r0, [r4, #0x10]
	adds r1, r6, #0
	bl ov21_021E0CDC
_021E27BC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E275C

	thumb_func_start ov21_021E27C0
ov21_021E27C0: @ 0x021E27C0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r3, #0
	adds r4, r1, #0
	str r2, [sp]
	cmp r5, #5
	bhi _021E2822
	adds r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E27D8: @ jump table
	.2byte _021E27E4 - _021E27D8 - 2 @ case 0
	.2byte _021E27FE - _021E27D8 - 2 @ case 1
	.2byte _021E27FE - _021E27D8 - 2 @ case 2
	.2byte _021E27FE - _021E27D8 - 2 @ case 3
	.2byte _021E27FE - _021E27D8 - 2 @ case 4
	.2byte _021E27FE - _021E27D8 - 2 @ case 5
_021E27E4:
	ldr r3, [r4]
	movs r1, #4
	ldr r2, [r3]
	movs r7, #0x30
	orrs r1, r2
	str r1, [r3]
	movs r1, #0
	str r1, [r0, #0x10]
	ldr r0, [r4, #8]
	movs r1, #2
	movs r6, #0x48
	str r1, [r0, #0x14]
	b _021E2822
_021E27FE:
	ldr r2, [r4]
	movs r1, #2
	ldr r3, [r2]
	movs r7, #0x30
	orrs r3, r1
	str r3, [r2]
	str r5, [r0, #0x10]
	ldr r0, [r4, #0x10]
	movs r6, #0x48
	bl ov21_021E0CDC
	subs r0, r5, #1
	bl ov21_021D5608
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	bl ov21_021E0CF8
_021E2822:
	ldr r0, [sp]
	cmp r0, #5
	bhi _021E2862
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E2834: @ jump table
	.2byte _021E2840 - _021E2834 - 2 @ case 0
	.2byte _021E2850 - _021E2834 - 2 @ case 1
	.2byte _021E2850 - _021E2834 - 2 @ case 2
	.2byte _021E2850 - _021E2834 - 2 @ case 3
	.2byte _021E2850 - _021E2834 - 2 @ case 4
	.2byte _021E2850 - _021E2834 - 2 @ case 5
_021E2840:
	ldr r0, [r4, #8]
	movs r1, #2
	str r7, [r0, #8]
	ldr r0, [r4, #8]
	str r6, [r0, #0xc]
	ldr r0, [r4, #8]
	str r1, [r0, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
_021E2850:
	ldr r0, [r4, #0x10]
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov21_021E0CD4
	ldr r0, [r4, #0x10]
	movs r1, #2
	bl ov21_021E0CDC
_021E2862:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E27C0

	thumb_func_start ov21_021E2864
ov21_021E2864: @ 0x021E2864
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	adds r4, r1, #0
	cmp r0, #8
	beq _021E28A2
	cmp r0, #1
	ldr r0, [r4, #4]
	bne _021E2880
	movs r1, #0
	mvns r1, r1
	bl ov21_021D371C
	b _021E2886
_021E2880:
	movs r1, #1
	bl ov21_021D371C
_021E2886:
	cmp r0, #1
	bne _021E28A2
	ldr r2, [r5, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E275C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E2968
	ldr r0, _021E28A4 @ =0x0000068B
	bl FUN_02005748
_021E28A2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E28A4: .4byte 0x0000068B
	thumb_func_end ov21_021E2864

	thumb_func_start ov21_021E28A8
ov21_021E28A8: @ 0x021E28A8
	ldr r1, _021E28CC @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x40
	tst r1, r2
	beq _021E28B8
	movs r1, #1
	str r1, [r0, #0x34]
	bx lr
_021E28B8:
	movs r1, #0x80
	tst r1, r2
	beq _021E28C4
	movs r1, #0
	str r1, [r0, #0x34]
	bx lr
_021E28C4:
	movs r1, #8
	str r1, [r0, #0x34]
	bx lr
	nop
_021E28CC: .4byte 0x021BF67C
	thumb_func_end ov21_021E28A8

	thumb_func_start ov21_021E28D0
ov21_021E28D0: @ 0x021E28D0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x38]
	movs r1, #1
	tst r0, r1
	ldr r0, [r5, #8]
	bne _021E28E8
	movs r1, #0
	bl FUN_02021CAC
	b _021E28EC
_021E28E8:
	bl FUN_02021CAC
_021E28EC:
	ldr r1, [r4, #0x38]
	movs r0, #2
	tst r0, r1
	ldr r0, [r5, #0xc]
	bne _021E28FE
	movs r1, #0
	bl FUN_02021CAC
	b _021E2904
_021E28FE:
	movs r1, #1
	bl FUN_02021CAC
_021E2904:
	ldr r1, [r4, #0x38]
	movs r0, #4
	tst r0, r1
	ldr r0, [r5, #0x10]
	bne _021E2916
	movs r1, #0
	bl FUN_02021CAC
	b _021E291C
_021E2916:
	movs r1, #1
	bl FUN_02021CAC
_021E291C:
	ldr r1, [r4, #0x38]
	movs r0, #8
	tst r0, r1
	ldr r0, [r5, #0x14]
	bne _021E292E
	movs r1, #0
	bl FUN_02021CAC
	b _021E2934
_021E292E:
	movs r1, #1
	bl FUN_02021CAC
_021E2934:
	ldr r1, [r4, #0x38]
	movs r0, #0x10
	tst r0, r1
	ldr r0, [r5, #0x18]
	bne _021E2946
	movs r1, #0
	bl FUN_02021CAC
	b _021E294C
_021E2946:
	movs r1, #1
	bl FUN_02021CAC
_021E294C:
	ldr r1, [r4, #0x38]
	movs r0, #0x20
	tst r0, r1
	ldr r0, [r5, #0x1c]
	bne _021E295E
	movs r1, #0
	bl FUN_02021CAC
	pop {r3, r4, r5, pc}
_021E295E:
	movs r1, #1
	bl FUN_02021CAC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E28D0

	thumb_func_start ov21_021E2968
ov21_021E2968: @ 0x021E2968
	push {r3, r4, r5, r6, r7, lr}
	movs r5, #0
	adds r4, r0, #0
	adds r6, r1, #0
	str r5, [r0, #0x38]
	adds r4, #0x38
	movs r7, #1
_021E2976:
	adds r0, r5, #0
	bl ov21_021D5608
	adds r1, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D392C
	cmp r0, #0
	beq _021E299C
	ldr r1, [r4]
	movs r0, #1
	adds r2, r1, #0
	orrs r2, r0
	adds r0, r5, #1
	adds r1, r7, #0
	lsls r1, r0
	adds r0, r2, #0
	orrs r0, r1
	str r0, [r4]
_021E299C:
	adds r5, r5, #1
	cmp r5, #5
	blt _021E2976
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E2968

	thumb_func_start ov21_021E29A4
ov21_021E29A4: @ 0x021E29A4
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r4, #2
	blt _021E29B4
	cmp r4, #8
	blt _021E29B8
_021E29B4:
	bl FUN_02022974
_021E29B8:
	subs r0, r4, #2
	lsls r1, r0, #2
	ldr r0, _021E29D8 @ =0x021E9D98
	cmp r6, #1
	ldr r1, [r0, r1]
	bne _021E29CE
	adds r0, r5, #0
	adds r1, r1, #1
	bl FUN_02021D6C
	pop {r4, r5, r6, pc}
_021E29CE:
	adds r0, r5, #0
	bl FUN_02021D6C
	pop {r4, r5, r6, pc}
	nop
_021E29D8: .4byte 0x021E9D98
	thumb_func_end ov21_021E29A4

	thumb_func_start ov21_021E29DC
ov21_021E29DC: @ 0x021E29DC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021E2A5C
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E2AE0
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E2B08
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E2C20
	str r0, [r5, #0x24]
	ldr r0, _021E2A24 @ =ov21_021E2C24
	str r0, [r5, #8]
	ldr r0, _021E2A28 @ =ov21_021E2C2C
	str r0, [r5, #0xc]
	ldr r0, _021E2A2C @ =ov21_021E2C5C
	str r0, [r5, #0x10]
	ldr r0, _021E2A30 @ =ov21_021E2C64
	str r0, [r5, #0x14]
	ldr r0, _021E2A34 @ =ov21_021E2D10
	str r0, [r5, #0x18]
	ldr r0, _021E2A38 @ =ov21_021E2D38
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E2A24: .4byte ov21_021E2C24
_021E2A28: .4byte ov21_021E2C2C
_021E2A2C: .4byte ov21_021E2C5C
_021E2A30: .4byte ov21_021E2C64
_021E2A34: .4byte ov21_021E2D10
_021E2A38: .4byte ov21_021E2D38
	thumb_func_end ov21_021E29DC

	thumb_func_start ov21_021E2A3C
ov21_021E2A3C: @ 0x021E2A3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E2BA8
	ldr r0, [r4, #4]
	bl ov21_021E2BBC
	ldr r0, [r4, #0x20]
	bl ov21_021E2BD0
	pop {r4, pc}
	thumb_func_end ov21_021E2A3C

	thumb_func_start ov21_021E2A54
ov21_021E2A54: @ 0x021E2A54
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E2A54

	thumb_func_start ov21_021E2A5C
ov21_021E2A5C: @ 0x021E2A5C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x34
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E2A6E
	bl FUN_02022974
_021E2A6E:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x34
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D13B4
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #2
	bl ov21_021D1410
	ldr r0, [r0]
	movs r1, #3
	str r0, [r4, #0x10]
	adds r0, r5, #0
	bl ov21_021D1410
	str r0, [r4, #0x14]
	adds r0, r5, #0
	movs r1, #4
	bl ov21_021D1410
	str r0, [r4, #0x18]
	adds r0, r5, #0
	movs r1, #6
	bl ov21_021D1410
	str r0, [r4, #0x1c]
	adds r0, r5, #0
	movs r1, #7
	bl ov21_021D1410
	str r0, [r4, #0x20]
	adds r0, r5, #0
	movs r1, #6
	bl ov21_021D1430
	str r0, [r4, #0x24]
	adds r0, r5, #0
	movs r1, #0
	bl ov21_021D1410
	ldr r0, [r0]
	str r0, [r4, #0xc]
	movs r0, #1
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E2A5C

	thumb_func_start ov21_021E2AE0
ov21_021E2AE0: @ 0x021E2AE0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E2AF2
	bl FUN_02022974
_021E2AF2:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E2AE0

	thumb_func_start ov21_021E2B08
ov21_021E2B08: @ 0x021E2B08
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov21_021E2C20
	adds r7, r0, #0
	movs r1, #0x14
	muls r7, r1, r7
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E2B28
	bl FUN_02022974
_021E2B28:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	blx FUN_020D5124
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #2
	bl ov21_021D47F0
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x14
	adds r2, r6, #0
	movs r3, #4
	bl ov21_021D4A94
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x28
	adds r2, r6, #0
	movs r3, #8
	bl ov21_021D48B8
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x3c
	adds r2, r6, #0
	movs r3, #0x10
	bl ov21_021D491C
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x50
	adds r2, r6, #0
	movs r3, #0x20
	bl ov21_021D4980
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x64
	adds r2, r6, #0
	movs r3, #0x40
	bl ov21_021D49E4
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x78
	adds r2, r6, #0
	movs r3, #0x80
	bl ov21_021D4A3C
	adds r1, r4, #0
	movs r3, #1
	adds r0, r5, #0
	adds r1, #0x8c
	adds r2, r6, #0
	lsls r3, r3, #8
	bl ov21_021D4B50
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E2B08

	thumb_func_start ov21_021E2BA8
ov21_021E2BA8: @ 0x021E2BA8
	push {r4, lr}
	adds r4, r0, #0
	bne _021E2BB2
	bl FUN_02022974
_021E2BB2:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E2BA8

	thumb_func_start ov21_021E2BBC
ov21_021E2BBC: @ 0x021E2BBC
	push {r4, lr}
	adds r4, r0, #0
	bne _021E2BC6
	bl FUN_02022974
_021E2BC6:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E2BBC

	thumb_func_start ov21_021E2BD0
ov21_021E2BD0: @ 0x021E2BD0
	push {r4, lr}
	adds r4, r0, #0
	bne _021E2BDA
	bl FUN_02022974
_021E2BDA:
	adds r0, r4, #0
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x14
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x28
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x3c
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x50
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x64
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x78
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x8c
	bl ov21_021D4660
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021E2BD0

	thumb_func_start ov21_021E2C20
ov21_021E2C20: @ 0x021E2C20
	movs r0, #8
	bx lr
	thumb_func_end ov21_021E2C20

	thumb_func_start ov21_021E2C24
ov21_021E2C24: @ 0x021E2C24
	ldr r1, [r1, #0x10]
	movs r0, #1
	str r0, [r1, #0x1c]
	bx lr
	thumb_func_end ov21_021E2C24

	thumb_func_start ov21_021E2C2C
ov21_021E2C2C: @ 0x021E2C2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #1
	bne _021E2C3A
	movs r0, #1
	pop {r4, pc}
_021E2C3A:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _021E2C44
	movs r0, #0
	pop {r4, pc}
_021E2C44:
	ldr r0, [r4]
	cmp r0, #0
	bne _021E2C56
	adds r0, r1, #0
	bl ov21_021E3320
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021E2C56:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E2C2C

	thumb_func_start ov21_021E2C5C
ov21_021E2C5C: @ 0x021E2C5C
	movs r0, #0
	str r0, [r1, #8]
	movs r0, #1
	bx lr
	thumb_func_end ov21_021E2C5C

	thumb_func_start ov21_021E2C64
ov21_021E2C64: @ 0x021E2C64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r1, #3
	bhi _021E2D06
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E2C82: @ jump table
	.2byte _021E2C8A - _021E2C82 - 2 @ case 0
	.2byte _021E2CAA - _021E2C82 - 2 @ case 1
	.2byte _021E2CE2 - _021E2C82 - 2 @ case 2
	.2byte _021E2CFA - _021E2C82 - 2 @ case 3
_021E2C8A:
	ldr r0, [r4, #4]
	movs r1, #0x28
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x28
	blx FUN_020D5124
	ldr r1, [r7, #8]
	ldr r0, [r4, #8]
	str r1, [r0]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E2D0A
_021E2CAA:
	ldr r3, [r4, #4]
	adds r1, r6, #0
	bl ov21_021E3080
	adds r0, r6, #0
	bl ov21_021E3BE0
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2f
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #4
	adds r2, r1, #0
	subs r2, #0x14
	bl ov21_021D23F8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E2D0A
_021E2CE2:
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	cmp r0, #0
	beq _021E2D0A
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E2D0A
_021E2CFA:
	adds r0, r6, #0
	bl ov21_021E3BFC
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021E2D06:
	bl FUN_02022974
_021E2D0A:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E2C64

	thumb_func_start ov21_021E2D10
ov21_021E2D10: @ 0x021E2D10
	push {r3, r4, r5, lr}
	ldr r4, [r1, #8]
	adds r5, r2, #0
	ldr r1, [r5, #8]
	ldr r0, [r4]
	cmp r0, r1
	beq _021E2D32
	adds r0, r4, #0
	bl ov21_021E331C
	ldr r1, [r5, #8]
	ldr r2, [r4]
	adds r0, r4, #0
	bl ov21_021E3FC0
	ldr r0, [r5, #8]
	str r0, [r4]
_021E2D32:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E2D10

	thumb_func_start ov21_021E2D38
ov21_021E2D38: @ 0x021E2D38
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	ldr r3, [r4]
	adds r5, r0, #0
	ldr r1, [r4, #8]
	cmp r3, #4
	bhi _021E2DF4
	adds r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_021E2D54: @ jump table
	.2byte _021E2D5E - _021E2D54 - 2 @ case 0
	.2byte _021E2DB8 - _021E2D54 - 2 @ case 1
	.2byte _021E2DD0 - _021E2D54 - 2 @ case 2
	.2byte _021E2DDC - _021E2D54 - 2 @ case 3
	.2byte _021E2DEE - _021E2D54 - 2 @ case 4
_021E2D5E:
	ldr r0, [r2, #0x2c]
	cmp r0, #0
	beq _021E2D8E
	adds r0, r1, #0
	bl ov21_021E3BE0
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2f
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #4
	adds r3, r1, #0
	subs r3, #0x14
	bl ov21_021D23F8
	b _021E2DB0
_021E2D8E:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x3f
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #4
	adds r3, r1, #0
	subs r3, #0x14
	bl ov21_021D23F8
_021E2DB0:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E2DF8
_021E2DB8:
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	cmp r0, #0
	beq _021E2DF8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E2DF8
_021E2DD0:
	bl ov21_021E30BC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E2DF8
_021E2DDC:
	adds r0, r1, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E2DF8
_021E2DEE:
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, pc}
_021E2DF4:
	bl FUN_02022974
_021E2DF8:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E2D38

	thumb_func_start ov21_021E2E00
ov21_021E2E00: @ 0x021E2E00
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021E2E10
	movs r0, #1
	str r0, [r4, #0x30]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E2E00

	thumb_func_start ov21_021E2E10
ov21_021E2E10: @ 0x021E2E10
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4]
	movs r0, #2
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r1, #0
	str r1, [r4, #0x28]
	ldr r0, [r4, #0x10]
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CDC
	ldr r0, [r4, #8]
	cmp r0, #4
	bhi _021E2EBE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E2E3E: @ jump table
	.2byte _021E2E48 - _021E2E3E - 2 @ case 0
	.2byte _021E2E64 - _021E2E3E - 2 @ case 1
	.2byte _021E2E88 - _021E2E3E - 2 @ case 2
	.2byte _021E2EAC - _021E2E3E - 2 @ case 3
	.2byte _021E2EB6 - _021E2E3E - 2 @ case 4
_021E2E48:
	ldr r0, [r4, #0x10]
	movs r1, #0x38
	str r1, [r0, #8]
	ldr r0, [r4, #0x10]
	movs r2, #0x50
	str r2, [r0, #0xc]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CD4
	ldr r0, [r4, #0xc]
	movs r1, #1
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
	pop {r4, pc}
_021E2E64:
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl ov21_021DCA4C
	ldr r0, [r4, #0x1c]
	movs r1, #4
	bl ov21_021DCA54
	ldr r0, [r4, #0x1c]
	movs r1, #0x38
	movs r2, #0x50
	bl ov21_021DCA44
	ldr r0, [r4, #0xc]
	movs r1, #1
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
	pop {r4, pc}
_021E2E88:
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl ov21_021E4070
	ldr r0, [r4, #0x20]
	movs r1, #4
	bl ov21_021E4078
	ldr r0, [r4, #0x20]
	movs r1, #0x38
	movs r2, #0x50
	bl ov21_021E4068
	ldr r0, [r4, #0xc]
	movs r1, #1
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
	pop {r4, pc}
_021E2EAC:
	ldr r0, [r4, #0xc]
	movs r1, #0
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
	pop {r4, pc}
_021E2EB6:
	ldr r0, [r4, #0xc]
	movs r1, #0
	str r1, [r0, #0x14]
	str r1, [r4, #0x2c]
_021E2EBE:
	pop {r4, pc}
	thumb_func_end ov21_021E2E10

	thumb_func_start ov21_021E2EC0
ov21_021E2EC0: @ 0x021E2EC0
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E2EC0

	thumb_func_start ov21_021E2EC4
ov21_021E2EC4: @ 0x021E2EC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #1
	adds r7, r1, #0
	str r2, [sp]
	str r0, [sp, #4]
	cmp r7, #4
	bhi _021E2FC2
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E2EE2: @ jump table
	.2byte _021E2EEC - _021E2EE2 - 2 @ case 0
	.2byte _021E2F14 - _021E2EE2 - 2 @ case 1
	.2byte _021E2F4A - _021E2EE2 - 2 @ case 2
	.2byte _021E2F80 - _021E2EE2 - 2 @ case 3
	.2byte _021E2FA0 - _021E2EE2 - 2 @ case 4
_021E2EEC:
	adds r0, r2, #0
	bl ov21_021E2EC0
	cmp r0, #0
	beq _021E2EFA
	movs r1, #2
	b _021E2EFC
_021E2EFA:
	movs r1, #1
_021E2EFC:
	ldr r0, [r4, #0x10]
	movs r6, #0x30
	str r1, [r0, #0x14]
	ldr r2, [r4]
	movs r0, #4
	ldr r1, [r2]
	movs r5, #0x48
	orrs r0, r1
	str r0, [r2]
	movs r0, #0
	str r0, [r4, #8]
	b _021E2FC6
_021E2F14:
	adds r0, r2, #0
	bl ov21_021E2EC0
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	beq _021E2F30
	movs r1, #1
	bl ov21_021DCA4C
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl ov21_021DCA54
	b _021E2F36
_021E2F30:
	movs r1, #0
	bl ov21_021DCA4C
_021E2F36:
	ldr r2, [r4]
	movs r0, #8
	ldr r1, [r2]
	movs r6, #0x28
	orrs r0, r1
	str r0, [r2]
	movs r0, #1
	str r0, [r4, #8]
	movs r5, #0x78
	b _021E2FC6
_021E2F4A:
	adds r0, r2, #0
	bl ov21_021E2EC0
	cmp r0, #0
	ldr r0, [r4, #0x20]
	beq _021E2F66
	movs r1, #1
	bl ov21_021E4070
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl ov21_021E4078
	b _021E2F6C
_021E2F66:
	movs r1, #0
	bl ov21_021E4070
_021E2F6C:
	ldr r2, [r4]
	movs r0, #0x10
	ldr r1, [r2]
	movs r6, #0x30
	orrs r0, r1
	str r0, [r2]
	movs r0, #2
	str r0, [r4, #8]
	movs r5, #0x40
	b _021E2FC6
_021E2F80:
	ldr r0, [r4, #4]
	bl ov21_021D37CC
	cmp r0, #2
	bne _021E2F9A
	ldr r2, [r4]
	movs r0, #0x20
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	movs r0, #3
	str r0, [r4, #8]
	b _021E2FC6
_021E2F9A:
	movs r0, #0
	str r0, [sp, #4]
	b _021E2FC6
_021E2FA0:
	ldr r0, [r4, #4]
	bl ov21_021D3954
	cmp r0, #1
	bne _021E2FBC
	ldr r2, [r4]
	movs r0, #1
	ldr r1, [r2]
	lsls r0, r0, #8
	orrs r0, r1
	str r0, [r2]
	movs r0, #4
	str r0, [r4, #8]
	b _021E2FC6
_021E2FBC:
	movs r0, #0
	str r0, [sp, #4]
	b _021E2FC6
_021E2FC2:
	bl FUN_02022974
_021E2FC6:
	ldr r0, [sp]
	cmp r0, #4
	bhi _021E3076
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E2FD8: @ jump table
	.2byte _021E2FE2 - _021E2FD8 - 2 @ case 0
	.2byte _021E301A - _021E2FD8 - 2 @ case 1
	.2byte _021E3048 - _021E2FD8 - 2 @ case 2
	.2byte _021E307A - _021E2FD8 - 2 @ case 3
	.2byte _021E307A - _021E2FD8 - 2 @ case 4
_021E2FE2:
	adds r0, r7, #0
	bl ov21_021E2EC0
	cmp r0, #0
	beq _021E2FFA
	ldr r0, [r4, #0x10]
	movs r1, #2
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CDC
	b _021E3006
_021E2FFA:
	ldr r0, [r4, #0x10]
	movs r1, #1
	str r1, [r0, #0x14]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CDC
_021E3006:
	ldr r0, [r4, #0x10]
	adds r1, r6, #0
	str r6, [r0, #8]
	ldr r0, [r4, #0x10]
	adds r2, r5, #0
	str r5, [r0, #0xc]
	ldr r0, [r4, #0x18]
	bl ov21_021E0CD4
	b _021E307A
_021E301A:
	adds r0, r7, #0
	bl ov21_021E2EC0
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	beq _021E3036
	movs r1, #1
	bl ov21_021DCA4C
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl ov21_021DCA54
	b _021E303C
_021E3036:
	movs r1, #0
	bl ov21_021DCA4C
_021E303C:
	ldr r0, [r4, #0x1c]
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov21_021DCA44
	b _021E307A
_021E3048:
	adds r0, r7, #0
	bl ov21_021E2EC0
	cmp r0, #0
	ldr r0, [r4, #0x20]
	beq _021E3064
	movs r1, #1
	bl ov21_021E4070
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl ov21_021E4078
	b _021E306A
_021E3064:
	movs r1, #0
	bl ov21_021E4070
_021E306A:
	ldr r0, [r4, #0x20]
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov21_021E4068
	b _021E307A
_021E3076:
	bl FUN_02022974
_021E307A:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E2EC4

	thumb_func_start ov21_021E3080
ov21_021E3080: @ 0x021E3080
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r5, r1, #0
	adds r1, r2, #0
	adds r6, r0, #0
	adds r2, r4, #0
	bl ov21_021E30E4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov21_021E3178
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov21_021E3268
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov21_021E3270
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl ov21_021E3FC0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E3080

	thumb_func_start ov21_021E30BC
ov21_021E30BC: @ 0x021E30BC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov21_021E326C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E3224
	adds r0, r4, #0
	bl ov21_021E3304
	ldr r0, [r5]
	movs r1, #2
	ldr r0, [r0]
	bl FUN_02019EBC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E30BC

	thumb_func_start ov21_021E30E4
ov21_021E30E4: @ 0x021E30E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	movs r2, #0
	str r2, [sp]
	adds r5, r0, #0
	str r4, [sp, #4]
	adds r6, r1, #0
	ldr r0, [r5]
	movs r1, #6
	adds r3, r2, #0
	bl ov21_021D276C
	ldr r0, [r6, #4]
	bl ov21_021D36D8
	cmp r0, #1
	bne _021E311A
	movs r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	movs r2, #0
	ldr r0, [r5]
	movs r1, #0x18
	adds r3, r2, #0
	bl ov21_021D276C
_021E311A:
	ldr r0, [r5]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x21
	movs r3, #2
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x39
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r4, r0, #0
	ldrh r0, [r2]
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r1, #2
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E30E4

	thumb_func_start ov21_021E3178
ov21_021E3178: @ 0x021E3178
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r0]
	adds r5, r1, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E3214 @ =0x00000827
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x57
	bl FUN_02009A4C
	str r0, [r5, #0x18]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x18]
	bl FUN_02009D4C
	ldr r0, _021E3218 @ =0x000007DC
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0xc
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x1c]
	bl FUN_0200A640
	ldr r0, [r5, #0x1c]
	bl FUN_02009D4C
	ldr r0, _021E321C @ =0x00000825
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x55
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x20]
	ldr r0, _021E3220 @ =0x00000826
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x56
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x24]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3214: .4byte 0x00000827
_021E3218: .4byte 0x000007DC
_021E321C: .4byte 0x00000825
_021E3220: .4byte 0x00000826
	thumb_func_end ov21_021E3178

	thumb_func_start ov21_021E3224
ov21_021E3224: @ 0x021E3224
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r4, [r0]
	ldr r0, [r5, #0x18]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x1c]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x20]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3224

	thumb_func_start ov21_021E3268
ov21_021E3268: @ 0x021E3268
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E3268

	thumb_func_start ov21_021E326C
ov21_021E326C: @ 0x021E326C
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E326C

	thumb_func_start ov21_021E3270
ov21_021E3270: @ 0x021E3270
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r7, [r0]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	adds r5, r1, #0
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	movs r1, #0
	adds r4, r2, #0
	bl FUN_0200A72C
	movs r1, #0x10
	str r1, [sp, #0x1c]
	movs r1, #0
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x18]
	movs r1, #1
	str r0, [sp, #0x14]
	str r1, [sp, #0x2c]
	str r4, [sp, #0x30]
	bl FUN_0201FAB4
	str r0, [sp, #8]
	movs r6, #0
_021E32A8:
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	movs r1, #8
	movs r2, #2
	bl ov21_021D4D6C
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	adds r3, r6, #0
	ldr r0, [r7, r0]
	ldr r2, _021E3300 @ =0x000002B9
	adds r1, r4, #0
	adds r3, #0x66
	bl ov21_021D4DAC
	str r4, [sp, #0x10]
	add r0, sp, #0xc
	bl ov21_021D4CA0
	str r0, [r5, #4]
	ldr r0, [r0]
	ldr r1, [sp, #8]
	bl FUN_02012A60
	ldr r0, [r5, #4]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_020129D0
	adds r0, r4, #0
	bl ov21_021D4DA0
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #5
	blt _021E32A8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021E3300: .4byte 0x000002B9
	thumb_func_end ov21_021E3270

	thumb_func_start ov21_021E3304
ov21_021E3304: @ 0x021E3304
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E330A:
	ldr r0, [r5, #4]
	bl ov21_021D4D1C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021E330A
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E3304

	thumb_func_start ov21_021E331C
ov21_021E331C: @ 0x021E331C
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E331C

	thumb_func_start ov21_021E3320
ov21_021E3320: @ 0x021E3320
	movs r1, #1
	str r1, [r0, #0x28]
	ldr r0, [r0, #0x10]
	str r1, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E3320

	thumb_func_start ov21_021E332C
ov21_021E332C: @ 0x021E332C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021E33C4
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E3400
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E3428
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E3458
	str r0, [r5, #0x24]
	ldr r0, _021E3374 @ =ov21_021E345C
	str r0, [r5, #8]
	ldr r0, _021E3378 @ =ov21_021E34AC
	str r0, [r5, #0xc]
	ldr r0, _021E337C @ =ov21_021E3520
	str r0, [r5, #0x10]
	ldr r0, _021E3380 @ =ov21_021E3540
	str r0, [r5, #0x14]
	ldr r0, _021E3384 @ =ov21_021E35D0
	str r0, [r5, #0x18]
	ldr r0, _021E3388 @ =ov21_021E3604
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E3374: .4byte ov21_021E345C
_021E3378: .4byte ov21_021E34AC
_021E337C: .4byte ov21_021E3520
_021E3380: .4byte ov21_021E3540
_021E3384: .4byte ov21_021E35D0
_021E3388: .4byte ov21_021E3604
	thumb_func_end ov21_021E332C

	thumb_func_start ov21_021E338C
ov21_021E338C: @ 0x021E338C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E342C
	ldr r0, [r4, #4]
	bl ov21_021E3440
	ldr r0, [r4, #0x20]
	bl ov21_021E3454
	pop {r4, pc}
	thumb_func_end ov21_021E338C

	thumb_func_start ov21_021E33A4
ov21_021E33A4: @ 0x021E33A4
	ldr r0, [r0]
	ldr r0, [r0, #0x24]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E33A4

	thumb_func_start ov21_021E33AC
ov21_021E33AC: @ 0x021E33AC
	ldr r0, [r0]
	ldr r0, [r0, #0x28]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E33AC

	thumb_func_start ov21_021E33B4
ov21_021E33B4: @ 0x021E33B4
	ldr r0, [r0]
	str r1, [r0, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E33B4

	thumb_func_start ov21_021E33BC
ov21_021E33BC: @ 0x021E33BC
	ldr r0, [r0]
	ldr r0, [r0, #0x30]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E33BC

	thumb_func_start ov21_021E33C4
ov21_021E33C4: @ 0x021E33C4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x34
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E33D6
	bl FUN_02022974
_021E33D6:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x34
	blx FUN_020D5124
	adds r0, r5, #0
	bl ov21_021D13C8
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	ldr r0, [r0]
	str r0, [r4, #4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #8]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E33C4

	thumb_func_start ov21_021E3400
ov21_021E3400: @ 0x021E3400
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E3412
	bl FUN_02022974
_021E3412:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3400

	thumb_func_start ov21_021E3428
ov21_021E3428: @ 0x021E3428
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E3428

	thumb_func_start ov21_021E342C
ov21_021E342C: @ 0x021E342C
	push {r4, lr}
	adds r4, r0, #0
	bne _021E3436
	bl FUN_02022974
_021E3436:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E342C

	thumb_func_start ov21_021E3440
ov21_021E3440: @ 0x021E3440
	push {r4, lr}
	adds r4, r0, #0
	bne _021E344A
	bl FUN_02022974
_021E344A:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E3440

	thumb_func_start ov21_021E3454
ov21_021E3454: @ 0x021E3454
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E3454

	thumb_func_start ov21_021E3458
ov21_021E3458: @ 0x021E3458
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E3458

	thumb_func_start ov21_021E345C
ov21_021E345C: @ 0x021E345C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	movs r1, #0x1c
	bl FUN_02018144
	adds r6, r0, #0
	adds r2, r6, #0
	movs r1, #0x1c
	movs r0, #0
_021E3472:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E3472
	ldr r2, [r5, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov21_021E3688
	ldr r2, [r5, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov21_021E3C6C
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov21_021E3E8C
	movs r1, #0
	movs r0, #4
_021E349A:
	adds r1, r1, #1
	str r0, [r4, #0xc]
	adds r4, r4, #4
	cmp r1, #6
	blt _021E349A
	str r6, [r5, #8]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E345C

	thumb_func_start ov21_021E34AC
ov21_021E34AC: @ 0x021E34AC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E34C0
	movs r0, #0
	str r0, [r5, #0x24]
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E34C0:
	ldr r1, [r0, #0x10]
	cmp r1, #1
	bne _021E34CA
	movs r0, #0
	pop {r3, r4, r5, pc}
_021E34CA:
	ldr r1, [r0]
	cmp r1, #0
	bne _021E34E4
	movs r3, #1
	str r3, [r5, #0x24]
	ldr r1, [r5, #4]
	movs r2, #0
	str r2, [r1, #0x30]
	str r3, [r5, #0x28]
	ldr r1, [r0]
	adds r1, r1, #1
	str r1, [r0]
	b _021E351C
_021E34E4:
	movs r0, #1
	str r0, [r5, #0x28]
	adds r0, r5, #0
	bl ov21_021E3C2C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E3EEC
	adds r0, r5, #0
	bl ov21_021E3724
	ldr r0, [r5, #8]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E3514
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021E3514
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E3D48
_021E3514:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E3734
_021E351C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E34AC

	thumb_func_start ov21_021E3520
ov21_021E3520: @ 0x021E3520
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #8]
	adds r0, r5, #0
	bl ov21_021E37B4
	adds r0, r5, #0
	bl ov21_021E3E74
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3520

	thumb_func_start ov21_021E3540
ov21_021E3540: @ 0x021E3540
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	adds r7, r2, #0
	ldr r6, [r3, #8]
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E35CC
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E355E: @ jump table
	.2byte _021E3568 - _021E355E - 2 @ case 0
	.2byte _021E3582 - _021E355E - 2 @ case 1
	.2byte _021E3592 - _021E355E - 2 @ case 2
	.2byte _021E35B6 - _021E355E - 2 @ case 3
	.2byte _021E35C8 - _021E355E - 2 @ case 4
_021E3568:
	ldr r0, [r4, #4]
	movs r1, #0x28
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x28
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E35CC
_021E3582:
	ldr r3, [r4, #4]
	adds r1, r5, #0
	bl ov21_021E3900
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E35CC
_021E3592:
	movs r1, #0
	movs r0, #2
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #4
	subs r2, #0x10
	movs r3, #0x3f
	bl FUN_0200AAE0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov21_021E3F2C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E35CC
_021E35B6:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #0
	beq _021E35CC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E35CC
_021E35C8:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E35CC:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E3540

	thumb_func_start ov21_021E35D0
ov21_021E35D0: @ 0x021E35D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r3, #8]
	adds r7, r2, #0
	ldr r5, [r1, #8]
	str r0, [sp, #4]
	movs r6, #0
	adds r4, r7, #0
_021E35E2:
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	bl ov21_021D144C
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #6
	blt _021E35E2
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, r7, #0
	bl ov21_021E3F48
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E35D0

	thumb_func_start ov21_021E3604
ov21_021E3604: @ 0x021E3604
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r5, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E3684
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E361E: @ jump table
	.2byte _021E3628 - _021E361E - 2 @ case 0
	.2byte _021E3642 - _021E361E - 2 @ case 1
	.2byte _021E3654 - _021E361E - 2 @ case 2
	.2byte _021E3670 - _021E361E - 2 @ case 3
	.2byte _021E3680 - _021E361E - 2 @ case 4
_021E3628:
	movs r0, #2
	str r0, [sp]
	movs r0, #4
	adds r1, r0, #0
	subs r1, #0x14
	movs r2, #0
	movs r3, #0x3f
	bl FUN_0200AAE0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E3684
_021E3642:
	movs r0, #2
	bl FUN_0200AC1C
	cmp r0, #0
	beq _021E3684
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E3684
_021E3654:
	adds r1, r5, #0
	bl ov21_021E393C
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0
	bl ov21_021D2584
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E3684
_021E3670:
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E3684
_021E3680:
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E3684:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3604

	thumb_func_start ov21_021E3688
ov21_021E3688: @ 0x021E3688
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #0x18
	bl FUN_02018144
	str r0, [r5, #4]
	movs r0, #0x30
	str r0, [sp]
	movs r1, #8
	ldr r0, [r5, #4]
	movs r2, #0x28
	adds r3, r1, #0
	bl ov21_021D154C
	movs r0, #0xf8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #8
	adds r0, #0x14
	movs r2, #0x28
	movs r3, #0xd0
	bl ov21_021D154C
	movs r0, #0x58
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #8
	adds r0, r0, #4
	movs r2, #0x28
	movs r3, #0x30
	bl ov21_021D154C
	movs r0, #0x80
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #8
	adds r0, #8
	movs r2, #0x28
	movs r3, #0x58
	bl ov21_021D154C
	movs r0, #0xa8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #8
	adds r0, #0xc
	movs r2, #0x28
	movs r3, #0x80
	bl ov21_021D154C
	movs r0, #0xd0
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #8
	adds r0, #0x10
	movs r2, #0x28
	movs r3, #0xa8
	bl ov21_021D154C
	str r4, [r5, #8]
	str r5, [r5, #0xc]
	str r6, [sp]
	adds r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E3720 @ =ov21_021E37CC
	movs r1, #6
	adds r3, #8
	bl FUN_02023FCC
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E3720: .4byte ov21_021E37CC
	thumb_func_end ov21_021E3688

	thumb_func_start ov21_021E3724
ov21_021E3724: @ 0x021E3724
	movs r2, #0
	movs r1, #3
_021E3728:
	adds r2, r2, #1
	str r1, [r0, #0xc]
	adds r0, r0, #4
	cmp r2, #6
	blt _021E3728
	bx lr
	thumb_func_end ov21_021E3724

	thumb_func_start ov21_021E3734
ov21_021E3734: @ 0x021E3734
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0x2c]
	cmp r1, #0
	bne _021E3744
	ldr r0, [r0]
	bl FUN_0202404C
_021E3744:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E3754
	ldr r0, [r4, #0x20]
	cmp r0, #2
	beq _021E3754
	movs r0, #1
	str r0, [r4, #0x20]
_021E3754:
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	cmp r0, #4
	bhi _021E37AE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E3768: @ jump table
	.2byte _021E3772 - _021E3768 - 2 @ case 0
	.2byte _021E377E - _021E3768 - 2 @ case 1
	.2byte _021E378A - _021E3768 - 2 @ case 2
	.2byte _021E3796 - _021E3768 - 2 @ case 3
	.2byte _021E37A2 - _021E3768 - 2 @ case 4
_021E3772:
	ldr r0, [r4, #0xc]
	cmp r0, #2
	beq _021E37B2
	movs r0, #1
	str r0, [r4, #0xc]
	pop {r4, pc}
_021E377E:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _021E37B2
	movs r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_021E378A:
	ldr r0, [r4, #0x14]
	cmp r0, #2
	beq _021E37B2
	movs r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E3796:
	ldr r0, [r4, #0x18]
	cmp r0, #2
	beq _021E37B2
	movs r0, #1
	str r0, [r4, #0x18]
	pop {r4, pc}
_021E37A2:
	ldr r0, [r4, #0x1c]
	cmp r0, #2
	beq _021E37B2
	movs r0, #1
	str r0, [r4, #0x1c]
	pop {r4, pc}
_021E37AE:
	bl FUN_02022974
_021E37B2:
	pop {r4, pc}
	thumb_func_end ov21_021E3734

	thumb_func_start ov21_021E37B4
ov21_021E37B4: @ 0x021E37B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02024034
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E37B4

	thumb_func_start ov21_021E37CC
ov21_021E37CC: @ 0x021E37CC
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [r2]
	adds r7, r0, #0
	lsls r0, r7, #2
	adds r0, r6, r0
	ldr r5, [r2, #4]
	ldr r4, [r6, #4]
	cmp r1, #0
	str r1, [r0, #0xc]
	beq _021E37E6
	cmp r1, #2
	beq _021E37EC
	pop {r3, r4, r5, r6, r7, pc}
_021E37E6:
	movs r0, #0
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E37EC:
	ldr r0, [r5, #0x14]
	movs r1, #2
	adds r2, r7, #0
	bl ov21_021D4F20
	cmp r7, #5
	bhi _021E38F6
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E3806: @ jump table
	.2byte _021E3820 - _021E3806 - 2 @ case 0
	.2byte _021E383E - _021E3806 - 2 @ case 1
	.2byte _021E385C - _021E3806 - 2 @ case 2
	.2byte _021E387A - _021E3806 - 2 @ case 3
	.2byte _021E38B4 - _021E3806 - 2 @ case 4
	.2byte _021E3812 - _021E3806 - 2 @ case 5
_021E3812:
	adds r0, r4, #0
	bl ov21_021E2E00
	ldr r0, _021E38F8 @ =0x000005DD
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E3820:
	ldr r2, [r4, #8]
	cmp r2, #0
	beq _021E38F6
	adds r0, r6, #0
	movs r1, #0
	bl ov21_021E3C18
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E383E:
	ldr r2, [r4, #8]
	cmp r2, #1
	beq _021E38F6
	adds r0, r6, #0
	movs r1, #1
	bl ov21_021E3C18
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E385C:
	ldr r2, [r4, #8]
	cmp r2, #2
	beq _021E38F6
	adds r0, r6, #0
	movs r1, #2
	bl ov21_021E3C18
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E387A:
	ldr r2, [r4, #8]
	cmp r2, #3
	beq _021E38F6
	adds r0, r6, #0
	movs r1, #3
	bl ov21_021E3C18
	cmp r0, #0
	beq _021E389C
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E389C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021E38F6
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _021E38AE
	ldr r0, _021E38F8 @ =0x000005DD
	bl FUN_02005748
_021E38AE:
	movs r0, #1
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
_021E38B4:
	ldr r2, [r4, #8]
	cmp r2, #4
	beq _021E38F6
	adds r0, r6, #0
	movs r1, #4
	bl ov21_021E3C18
	cmp r0, #0
	beq _021E38D6
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E3E8C
	ldr r0, _021E38FC @ =0x0000068B
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_021E38D6:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _021E38F6
	ldr r0, [r4, #4]
	bl ov21_021D3954
	cmp r0, #1
	bne _021E38F2
	ldr r0, [r4, #8]
	cmp r0, #2
	beq _021E38F2
	ldr r0, _021E38F8 @ =0x000005DD
	bl FUN_02005748
_021E38F2:
	movs r0, #0
	str r0, [r5, #0x10]
_021E38F6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E38F8: .4byte 0x000005DD
_021E38FC: .4byte 0x0000068B
	thumb_func_end ov21_021E37CC

	thumb_func_start ov21_021E3900
ov21_021E3900: @ 0x021E3900
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov21_021E3960
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov21_021E39FC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov21_021E3AF0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov21_021E3BD8
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E3FE4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E3900

	thumb_func_start ov21_021E393C
ov21_021E393C: @ 0x021E393C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021E3BDC
	adds r0, r5, #0
	bl ov21_021E3BC0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E3AAC
	ldr r0, [r4]
	movs r1, #5
	ldr r0, [r0]
	bl FUN_02019EBC
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E393C

	thumb_func_start ov21_021E3960
ov21_021E3960: @ 0x021E3960
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [r6, #4]
	adds r4, r2, #0
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021E399E
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	ldr r0, [r5]
	movs r1, #6
	movs r2, #4
	bl ov21_021D276C
	ldr r0, [r6, #8]
	bl ov21_021D36D8
	cmp r0, #1
	bne _021E399E
	movs r0, #0x20
	str r0, [sp]
	str r4, [sp, #4]
	ldr r0, [r5]
	movs r1, #0x18
	movs r2, #4
	movs r3, #0
	bl ov21_021D276C
_021E399E:
	ldr r0, [r5]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x22
	movs r3, #5
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x3b
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r4, r0, #0
	ldrh r0, [r2]
	movs r1, #5
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r1, #5
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E3960

	thumb_func_start ov21_021E39FC
ov21_021E39FC: @ 0x021E39FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E3A9C @ =0x00000894
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x60
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r5, #0x18]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x18]
	bl FUN_02009D4C
	ldr r0, _021E3AA0 @ =0x0000083F
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0xb
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x1c]
	bl FUN_0200A640
	ldr r0, [r5, #0x1c]
	bl FUN_02009D4C
	ldr r0, _021E3AA4 @ =0x00000892
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x5e
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x20]
	ldr r0, _021E3AA8 @ =0x00000893
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x5f
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x24]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3A9C: .4byte 0x00000894
_021E3AA0: .4byte 0x0000083F
_021E3AA4: .4byte 0x00000892
_021E3AA8: .4byte 0x00000893
	thumb_func_end ov21_021E39FC

	thumb_func_start ov21_021E3AAC
ov21_021E3AAC: @ 0x021E3AAC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x1c]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x20]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3AAC

	thumb_func_start ov21_021E3AF0
ov21_021E3AF0: @ 0x021E3AF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	ldr r4, [r1]
	ldr r3, _021E3BBC @ =0x00000893
	adds r5, r0, #0
	movs r0, #0
	adds r6, r2, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #5
	str r2, [sp, #0x10]
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	adds r2, r3, #0
	add r0, sp, #0x4c
	subs r2, #0x54
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r7, #7
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x20
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	movs r0, #0x36
	str r6, [sp, #0x48]
	lsls r0, r0, #0xe
	movs r6, #0x39
	str r0, [sp, #0x38]
	movs r4, #0
	lsls r7, r7, #0xe
	lsls r6, r6, #0xe
_021E3B60:
	cmp r4, #5
	bhi _021E3BA2
	adds r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E3B70: @ jump table
	.2byte _021E3B80 - _021E3B70 - 2 @ case 0
	.2byte _021E3B84 - _021E3B70 - 2 @ case 1
	.2byte _021E3B8C - _021E3B70 - 2 @ case 2
	.2byte _021E3B94 - _021E3B70 - 2 @ case 3
	.2byte _021E3B9C - _021E3B70 - 2 @ case 4
	.2byte _021E3B7C - _021E3B70 - 2 @ case 5
_021E3B7C:
	str r6, [sp, #0x34]
	b _021E3BA2
_021E3B80:
	str r7, [sp, #0x34]
	b _021E3BA2
_021E3B84:
	movs r0, #0x11
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	b _021E3BA2
_021E3B8C:
	movs r0, #0x1b
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	b _021E3BA2
_021E3B94:
	movs r0, #0x25
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	b _021E3BA2
_021E3B9C:
	movs r0, #0x2f
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
_021E3BA2:
	add r0, sp, #0x2c
	bl FUN_02021B90
	adds r1, r4, #0
	stm r5!, {r0}
	bl FUN_02021D6C
	adds r4, r4, #1
	cmp r4, #6
	blt _021E3B60
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E3BBC: .4byte 0x00000893
	thumb_func_end ov21_021E3AF0

	thumb_func_start ov21_021E3BC0
ov21_021E3BC0: @ 0x021E3BC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E3BC6:
	ldr r0, [r5]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #6
	blt _021E3BC6
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E3BC0

	thumb_func_start ov21_021E3BD8
ov21_021E3BD8: @ 0x021E3BD8
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E3BD8

	thumb_func_start ov21_021E3BDC
ov21_021E3BDC: @ 0x021E3BDC
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E3BDC

	thumb_func_start ov21_021E3BE0
ov21_021E3BE0: @ 0x021E3BE0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r6, #1
_021E3BE8:
	ldr r0, [r5, #4]
	adds r1, r6, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021E3BE8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3BE0

	thumb_func_start ov21_021E3BFC
ov21_021E3BFC: @ 0x021E3BFC
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021E3C04:
	ldr r0, [r5, #4]
	adds r1, r6, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021E3C04
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3BFC

	thumb_func_start ov21_021E3C18
ov21_021E3C18: @ 0x021E3C18
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021E2EC4
	cmp r0, #1
	bne _021E3C2A
	movs r1, #0
	str r1, [r4, #0x28]
_021E3C2A:
	pop {r4, pc}
	thumb_func_end ov21_021E3C18

	thumb_func_start ov21_021E3C2C
ov21_021E3C2C: @ 0x021E3C2C
	ldr r3, _021E3C30 @ =ov21_021E3C34
	bx r3
	.align 2, 0
_021E3C30: .4byte ov21_021E3C34
	thumb_func_end ov21_021E3C2C

	thumb_func_start ov21_021E3C34
ov21_021E3C34: @ 0x021E3C34
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #4]
	bl ov21_021E3C64
	ldr r0, _021E3C5C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _021E3C58
	adds r0, r4, #0
	bl ov21_021E2E00
	movs r0, #1
	str r0, [r5, #0x2c]
	ldr r0, _021E3C60 @ =0x000005DD
	bl FUN_02005748
_021E3C58:
	pop {r3, r4, r5, pc}
	nop
_021E3C5C: .4byte 0x021BF67C
_021E3C60: .4byte 0x000005DD
	thumb_func_end ov21_021E3C34

	thumb_func_start ov21_021E3C64
ov21_021E3C64: @ 0x021E3C64
	movs r1, #0
	str r1, [r0, #0x2c]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E3C64

	thumb_func_start ov21_021E3C6C
ov21_021E3C6C: @ 0x021E3C6C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #0xa8
	bl FUN_02018144
	str r0, [r5, #0x18]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r2, #0x18
	ldr r0, [r5, #0x18]
	movs r1, #0x1c
	adds r3, r2, #0
	bl ov21_021D4FE4
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	movs r2, #0x18
	adds r0, #0x1c
	movs r1, #0x44
	adds r3, r2, #0
	bl ov21_021D4FE4
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	movs r2, #0x18
	adds r0, #0x38
	movs r1, #0x6c
	adds r3, r2, #0
	bl ov21_021D4FE4
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	movs r2, #0x18
	adds r0, #0x54
	movs r1, #0x94
	adds r3, r2, #0
	bl ov21_021D4FE4
	ldr r0, [r4, #8]
	bl ov21_021D3954
	cmp r0, #1
	bne _021E3CFA
	movs r1, #0
	b _021E3CFC
_021E3CFA:
	movs r1, #2
_021E3CFC:
	movs r0, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	movs r2, #0x18
	adds r0, #0x70
	movs r1, #0xbc
	adds r3, r2, #0
	bl ov21_021D4FE4
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x18]
	movs r2, #0x18
	adds r0, #0x8c
	movs r1, #0xe4
	adds r3, r2, #0
	bl ov21_021D4FE4
	adds r0, r6, #0
	bl ov21_021D4EE4
	str r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	movs r2, #6
	movs r3, #1
	bl ov21_021D4F04
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3C6C

	thumb_func_start ov21_021E3D48
ov21_021E3D48: @ 0x021E3D48
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4, #0x2c]
	ldr r5, [r4, #4]
	cmp r0, #0
	beq _021E3D58
	b _021E3E66
_021E3D58:
	ldr r0, _021E3E68 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x10
	tst r0, r1
	beq _021E3D6C
	ldr r0, [r6, #0x14]
	movs r1, #0
	movs r2, #1
	bl ov21_021D4F20
_021E3D6C:
	ldr r0, _021E3E68 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x20
	tst r0, r1
	beq _021E3D80
	movs r1, #0
	ldr r0, [r6, #0x14]
	subs r2, r1, #1
	bl ov21_021D4F20
_021E3D80:
	ldr r0, _021E3E68 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _021E3E66
	ldr r0, [r6, #0x14]
	bl ov21_021D4F7C
	cmp r0, #5
	bhi _021E3E66
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E3DA0: @ jump table
	.2byte _021E3DAC - _021E3DA0 - 2 @ case 0
	.2byte _021E3DC6 - _021E3DA0 - 2 @ case 1
	.2byte _021E3DE0 - _021E3DA0 - 2 @ case 2
	.2byte _021E3DFA - _021E3DA0 - 2 @ case 3
	.2byte _021E3E26 - _021E3DA0 - 2 @ case 4
	.2byte _021E3E52 - _021E3DA0 - 2 @ case 5
_021E3DAC:
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _021E3E66
	adds r0, r4, #0
	movs r1, #0
	bl ov21_021E3C18
	movs r0, #2
	str r0, [r4, #0xc]
	ldr r0, _021E3E6C @ =0x0000068B
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_021E3DC6:
	ldr r2, [r5, #8]
	cmp r2, #1
	beq _021E3E66
	adds r0, r4, #0
	movs r1, #1
	bl ov21_021E3C18
	movs r0, #2
	str r0, [r4, #0x10]
	ldr r0, _021E3E6C @ =0x0000068B
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_021E3DE0:
	ldr r2, [r5, #8]
	cmp r2, #2
	beq _021E3E66
	adds r0, r4, #0
	movs r1, #2
	bl ov21_021E3C18
	movs r0, #2
	str r0, [r4, #0x14]
	ldr r0, _021E3E6C @ =0x0000068B
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_021E3DFA:
	ldr r2, [r5, #8]
	cmp r2, #3
	beq _021E3E66
	adds r0, r4, #0
	movs r1, #3
	bl ov21_021E3C18
	cmp r0, #0
	beq _021E3E18
	movs r0, #2
	str r0, [r4, #0x18]
	ldr r0, _021E3E6C @ =0x0000068B
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_021E3E18:
	ldr r0, [r5, #8]
	cmp r0, #2
	beq _021E3E66
	ldr r0, _021E3E70 @ =0x000005DD
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_021E3E26:
	ldr r2, [r5, #8]
	cmp r2, #4
	beq _021E3E66
	adds r0, r4, #0
	movs r1, #4
	bl ov21_021E3C18
	cmp r0, #0
	beq _021E3E44
	movs r0, #2
	str r0, [r4, #0x1c]
	ldr r0, _021E3E6C @ =0x0000068B
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_021E3E44:
	ldr r0, [r5, #8]
	cmp r0, #2
	beq _021E3E66
	ldr r0, _021E3E70 @ =0x000005DD
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_021E3E52:
	adds r0, r5, #0
	bl ov21_021E2E00
	movs r0, #1
	str r0, [r4, #0x2c]
	movs r0, #2
	str r0, [r4, #0x20]
	ldr r0, _021E3E70 @ =0x000005DD
	bl FUN_02005748
_021E3E66:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E3E68: .4byte 0x021BF67C
_021E3E6C: .4byte 0x0000068B
_021E3E70: .4byte 0x000005DD
	thumb_func_end ov21_021E3D48

	thumb_func_start ov21_021E3E74
ov21_021E3E74: @ 0x021E3E74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_020181C4
	ldr r0, [r4, #0x14]
	bl ov21_021D4EFC
	movs r0, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov21_021E3E74

	thumb_func_start ov21_021E3E8C
ov21_021E3E8C: @ 0x021E3E8C
	push {r3, lr}
	ldr r3, [r1, #4]
	movs r2, #0
	str r2, [r1, #0x30]
	ldr r1, [r3, #8]
	cmp r1, #4
	bhi _021E3EE8
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E3EA6: @ jump table
	.2byte _021E3EB0 - _021E3EA6 - 2 @ case 0
	.2byte _021E3EBA - _021E3EA6 - 2 @ case 1
	.2byte _021E3EC6 - _021E3EA6 - 2 @ case 2
	.2byte _021E3ED2 - _021E3EA6 - 2 @ case 3
	.2byte _021E3EDE - _021E3EA6 - 2 @ case 4
_021E3EB0:
	ldr r0, [r0, #0x14]
	movs r1, #4
	bl ov21_021D4F20
	pop {r3, pc}
_021E3EBA:
	ldr r0, [r0, #0x14]
	movs r1, #4
	movs r2, #1
	bl ov21_021D4F20
	pop {r3, pc}
_021E3EC6:
	ldr r0, [r0, #0x14]
	movs r1, #4
	movs r2, #2
	bl ov21_021D4F20
	pop {r3, pc}
_021E3ED2:
	ldr r0, [r0, #0x14]
	movs r1, #4
	movs r2, #3
	bl ov21_021D4F20
	pop {r3, pc}
_021E3EDE:
	movs r1, #4
	ldr r0, [r0, #0x14]
	adds r2, r1, #0
	bl ov21_021D4F20
_021E3EE8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E3E8C

	thumb_func_start ov21_021E3EEC
ov21_021E3EEC: @ 0x021E3EEC
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _021E3F26
	ldr r0, [r4, #8]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E3F26
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _021E3F18
	ldr r0, _021E3F28 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x80
	tst r0, r1
	beq _021E3F26
	movs r0, #1
	str r0, [r4, #0x30]
	pop {r4, pc}
_021E3F18:
	ldr r0, _021E3F28 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x40
	tst r0, r1
	beq _021E3F26
	movs r0, #0
	str r0, [r4, #0x30]
_021E3F26:
	pop {r4, pc}
	.align 2, 0
_021E3F28: .4byte 0x021BF67C
	thumb_func_end ov21_021E3EEC

	thumb_func_start ov21_021E3F2C
ov21_021E3F2C: @ 0x021E3F2C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r4, #0x14]
	ldr r1, [r5]
	adds r6, r2, #0
	bl ov21_021D25B8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E3F48
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3F2C

	thumb_func_start ov21_021E3F48
ov21_021E3F48: @ 0x021E3F48
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	ldr r0, [r6, #8]
	adds r4, r1, #0
	bl ov21_021D3998
	cmp r0, #0
	beq _021E3F7E
	adds r0, r5, #0
	movs r1, #1
	bl ov21_021E3F98
	ldr r1, [r6, #0x30]
	cmp r1, #0
	bne _021E3F86
	cmp r0, #0
	beq _021E3F74
	ldr r0, [r4, #0x14]
	ldr r1, [r5]
	bl ov21_021D25B8
_021E3F74:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E3F88
	pop {r4, r5, r6, pc}
_021E3F7E:
	adds r0, r5, #0
	movs r1, #0
	bl ov21_021E3F98
_021E3F86:
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E3F48

	thumb_func_start ov21_021E3F88
ov21_021E3F88: @ 0x021E3F88
	ldr r3, _021E3F94 @ =ov21_021D2544
	adds r2, r0, #0
	ldr r0, [r1, #0x14]
	ldr r1, [r2]
	bx r3
	nop
_021E3F94: .4byte ov21_021D2544
	thumb_func_end ov21_021E3F88

	thumb_func_start ov21_021E3F98
ov21_021E3F98: @ 0x021E3F98
	push {r3, r4, r5, lr}
	ldr r4, [r0]
	movs r0, #0x79
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r5, r1, #0
	bl ov21_021D25A0
	cmp r5, r0
	beq _021E3FBC
	movs r0, #0x79
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov21_021D2584
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E3FBC:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3F98

	thumb_func_start ov21_021E3FC0
ov21_021E3FC0: @ 0x021E3FC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r0, r2, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	adds r4, r1, #0
	ldr r0, [r0]
	movs r1, #0
	bl FUN_020129D0
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, #4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_020129D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E3FC0

	thumb_func_start ov21_021E3FE4
ov21_021E3FE4: @ 0x021E3FE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #8]
	bl ov21_021D3954
	cmp r0, #0
	bne _021E3FFA
	ldr r0, [r4, #0x10]
	movs r1, #0
	bl FUN_02021CAC
_021E3FFA:
	pop {r4, pc}
	thumb_func_end ov21_021E3FE4

	thumb_func_start ov21_021E3FFC
ov21_021E3FFC: @ 0x021E3FFC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r7, #0
	bl ov21_021E4080
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021E40C8
	str r4, [r5]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x20]
	bl ov21_021E411C
	str r0, [r5, #0x24]
	ldr r0, _021E403C @ =ov21_021E4120
	str r0, [r5, #8]
	ldr r0, _021E4040 @ =ov21_021E4168
	str r0, [r5, #0xc]
	ldr r0, _021E4044 @ =ov21_021E4194
	str r0, [r5, #0x10]
	ldr r0, _021E4048 @ =ov21_021E41A8
	str r0, [r5, #0x14]
	ldr r0, _021E404C @ =ov21_021E4268
	str r0, [r5, #0x18]
	ldr r0, _021E4050 @ =ov21_021E4288
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E403C: .4byte ov21_021E4120
_021E4040: .4byte ov21_021E4168
_021E4044: .4byte ov21_021E4194
_021E4048: .4byte ov21_021E41A8
_021E404C: .4byte ov21_021E4268
_021E4050: .4byte ov21_021E4288
	thumb_func_end ov21_021E3FFC

	thumb_func_start ov21_021E4054
ov21_021E4054: @ 0x021E4054
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E40F4
	ldr r0, [r4, #4]
	bl ov21_021E4108
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E4054

	thumb_func_start ov21_021E4068
ov21_021E4068: @ 0x021E4068
	ldr r0, [r0, #4]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov21_021E4068

	thumb_func_start ov21_021E4070
ov21_021E4070: @ 0x021E4070
	ldr r0, [r0, #4]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E4070

	thumb_func_start ov21_021E4078
ov21_021E4078: @ 0x021E4078
	ldr r0, [r0, #4]
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E4078

	thumb_func_start ov21_021E4080
ov21_021E4080: @ 0x021E4080
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x10
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E4092
	bl FUN_02022974
_021E4092:
	adds r2, r4, #0
	movs r1, #0x10
	movs r0, #0
_021E4098:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E4098
	adds r0, r5, #0
	bl ov21_021D138C
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	str r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1430
	str r0, [r4, #0xc]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4080

	thumb_func_start ov21_021E40C8
ov21_021E40C8: @ 0x021E40C8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x14
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E40DA
	bl FUN_02022974
_021E40DA:
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_021E40E0:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E40E0
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E40C8

	thumb_func_start ov21_021E40F4
ov21_021E40F4: @ 0x021E40F4
	push {r4, lr}
	adds r4, r0, #0
	bne _021E40FE
	bl FUN_02022974
_021E40FE:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E40F4

	thumb_func_start ov21_021E4108
ov21_021E4108: @ 0x021E4108
	push {r4, lr}
	adds r4, r0, #0
	bne _021E4112
	bl FUN_02022974
_021E4112:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E4108

	thumb_func_start ov21_021E411C
ov21_021E411C: @ 0x021E411C
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E411C

	thumb_func_start ov21_021E4120
ov21_021E4120: @ 0x021E4120
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D37BC
	adds r7, r0, #0
	ldr r0, [r5, #4]
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E413E
	bl FUN_02022974
_021E413E:
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021E4144:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E4144
	str r4, [r5, #8]
	adds r0, r7, #0
	bl FUN_020050F8
	str r0, [r4]
	bl FUN_020050EC
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E4898
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4120

	thumb_func_start ov21_021E4168
ov21_021E4168: @ 0x021E4168
	push {r3, r4, r5, lr}
	ldr r2, [r0, #0xc]
	adds r5, r1, #0
	ldr r4, [r0, #8]
	cmp r2, #1
	bne _021E4178
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E4178:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E4182
	movs r0, #0
	pop {r3, r4, r5, pc}
_021E4182:
	adds r0, r4, #0
	bl ov21_021E4898
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E4C68
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4168

	thumb_func_start ov21_021E4194
ov21_021E4194: @ 0x021E4194
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E4194

	thumb_func_start ov21_021E41A8
ov21_021E41A8: @ 0x021E41A8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r3, [r3, #8]
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E4264
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E41C6: @ jump table
	.2byte _021E41CE - _021E41C6 - 2 @ case 0
	.2byte _021E41EC - _021E41C6 - 2 @ case 1
	.2byte _021E4228 - _021E41C6 - 2 @ case 2
	.2byte _021E4260 - _021E41C6 - 2 @ case 3
_021E41CE:
	movs r1, #0x33
	ldr r0, [r4, #4]
	lsls r1, r1, #4
	bl FUN_02018144
	movs r2, #0x33
	str r0, [r4, #8]
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4264
_021E41EC:
	ldr r0, [r4, #4]
	adds r1, r5, #0
	str r0, [sp]
	adds r0, r6, #0
	bl ov21_021E4590
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E420C
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E43C8
	b _021E4218
_021E420C:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E448C
_021E4218:
	movs r0, #0
	movs r1, #3
	bl FUN_0200564C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4264
_021E4228:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021E423A
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021E4440
	b _021E4244
_021E423A:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021E4518
_021E4244:
	cmp r0, #1
	bne _021E4264
	bl FUN_02005684
	cmp r0, #0
	bne _021E4264
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020049F4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4264
_021E4260:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E4264:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E41A8

	thumb_func_start ov21_021E4268
ov21_021E4268: @ 0x021E4268
	push {r3, r4, r5, lr}
	ldr r4, [r3, #8]
	ldr r5, [r1, #8]
	adds r2, r0, #0
	adds r1, r2, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov21_021E4A28
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E4B10
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E4268

	thumb_func_start ov21_021E4288
ov21_021E4288: @ 0x021E4288
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E4324
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E42A2: @ jump table
	.2byte _021E42AC - _021E42A2 - 2 @ case 0
	.2byte _021E42DE - _021E42A2 - 2 @ case 1
	.2byte _021E4302 - _021E42A2 - 2 @ case 2
	.2byte _021E4310 - _021E42A2 - 2 @ case 3
	.2byte _021E4320 - _021E42A2 - 2 @ case 4
_021E42AC:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	bne _021E42BC
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E43C8
	b _021E42C4
_021E42BC:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E448C
_021E42C4:
	movs r0, #1
	movs r1, #0
	bl FUN_020049F4
	movs r0, #0x7f
	movs r1, #3
	movs r2, #0
	bl FUN_0200560C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4324
_021E42DE:
	ldr r1, [r3, #0xc]
	cmp r1, #0
	bne _021E42EE
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E4440
	b _021E42F6
_021E42EE:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E4518
_021E42F6:
	cmp r0, #0
	beq _021E4324
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4324
_021E4302:
	adds r1, r3, #0
	bl ov21_021E45DC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4324
_021E4310:
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4324
_021E4320:
	movs r0, #1
	pop {r4, pc}
_021E4324:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021E4288

	thumb_func_start ov21_021E4328
ov21_021E4328: @ 0x021E4328
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl ov21_021D2170
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r2, r0, #0
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	movs r3, #2
	bl ov21_021D1890
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E4328

	thumb_func_start ov21_021E4360
ov21_021E4360: @ 0x021E4360
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r6, #1
_021E436A:
	movs r4, #0
	adds r5, r7, #0
_021E436E:
	ldr r0, [r5, #0x20]
	adds r1, r6, #0
	bl FUN_02021FE0
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #9
	blt _021E436E
	ldr r0, [r7, #0x68]
	movs r1, #1
	bl FUN_02021FE0
	ldr r0, [sp]
	adds r7, #0x54
	adds r0, r0, #1
	str r0, [sp]
	cmp r0, #9
	blt _021E436A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4360

	thumb_func_start ov21_021E4394
ov21_021E4394: @ 0x021E4394
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r6, r0, #0
_021E439E:
	movs r4, #0
	adds r5, r7, #0
_021E43A2:
	ldr r0, [r5, #0x20]
	adds r1, r6, #0
	bl FUN_02021FE0
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #9
	blt _021E43A2
	ldr r0, [r7, #0x68]
	movs r1, #0
	bl FUN_02021FE0
	ldr r0, [sp]
	adds r7, #0x54
	adds r0, r0, #1
	str r0, [sp]
	cmp r0, #9
	blt _021E439E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4394

	thumb_func_start ov21_021E43C8
ov21_021E43C8: @ 0x021E43C8
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E4360
	ldr r0, [r4, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E442E
	cmp r6, #0
	beq _021E440A
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #3
	adds r2, r1, #0
	subs r2, #0x13
	bl ov21_021D23F8
	b _021E442E
_021E440A:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #3
	adds r3, r1, #0
	subs r3, #0x13
	bl ov21_021D23F8
_021E442E:
	movs r1, #0x5b
	ldr r0, [r5]
	lsls r1, r1, #2
	adds r1, r0, r1
	bl ov21_021D24FC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E43C8

	thumb_func_start ov21_021E4440
ov21_021E4440: @ 0x021E4440
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r2, #8]
	adds r5, r1, #0
	adds r4, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5]
	beq _021E4460
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	b _021E446A
_021E4460:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
_021E446A:
	cmp r0, #0
	beq _021E447C
	cmp r4, #0
	beq _021E4478
	adds r0, r6, #0
	bl ov21_021E4394
_021E4478:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E447C:
	movs r1, #0x5b
	ldr r0, [r5]
	lsls r1, r1, #2
	adds r1, r0, r1
	bl ov21_021D24FC
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E4440

	thumb_func_start ov21_021E448C
ov21_021E448C: @ 0x021E448C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	bl ov21_021E4360
	cmp r4, #0
	bne _021E44B4
	ldr r0, [r5, #8]
	movs r1, #0x30
	str r0, [sp]
	ldr r0, [r5, #0x10]
	movs r3, #0x40
	str r0, [sp, #4]
	ldr r2, [r5, #4]
	adds r0, r7, #0
	bl ov21_021D2648
_021E44B4:
	ldr r0, [r6, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E4512
	cmp r4, #0
	beq _021E44EC
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r2, #0x2f
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r1, [r5, #0x10]
	subs r2, #0x3f
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E44EC:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r3, #0x2f
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r1, [r5, #0x10]
	subs r3, #0x3f
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov21_021D23F8
_021E4512:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E448C

	thumb_func_start ov21_021E4518
ov21_021E4518: @ 0x021E4518
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bne _021E4538
	bl ov21_021D2664
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	bl ov21_021D2164
	b _021E453C
_021E4538:
	movs r0, #1
	str r0, [sp]
_021E453C:
	ldr r0, [r6, #8]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4]
	beq _021E4556
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #4]
	b _021E4562
_021E4556:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #4]
_021E4562:
	movs r1, #0
	add r2, sp, #0
_021E4566:
	ldr r0, [r2]
	cmp r0, #0
	beq _021E4574
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #2
	blt _021E4566
_021E4574:
	cmp r1, #2
	bne _021E4588
	cmp r7, #1
	bne _021E4582
	adds r0, r5, #0
	bl ov21_021E4394
_021E4582:
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E4588:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E4518

	thumb_func_start ov21_021E4590
ov21_021E4590: @ 0x021E4590
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x18]
	adds r7, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov21_021E45FC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E46A8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E47CC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl ov21_021E4890
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov21_021E4328
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E4ABC
	adds r0, r5, #0
	bl ov21_021E4AF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4590

	thumb_func_start ov21_021E45DC
ov21_021E45DC: @ 0x021E45DC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021E4894
	adds r0, r5, #0
	bl ov21_021E4868
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E4770
	adds r0, r4, #0
	bl ov21_021E4664
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E45DC

	thumb_func_start ov21_021E45FC
ov21_021E45FC: @ 0x021E45FC
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r5, r2, #0
	str r5, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x21
	movs r3, #3
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4]
	movs r1, #0x46
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E45FC

	thumb_func_start ov21_021E4664
ov21_021E4664: @ 0x021E4664
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, [r4]
	movs r2, #0
	ldr r0, [r0]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_0201C63C
	movs r1, #0
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0xc0
	str r0, [sp, #4]
	ldr r0, [r4]
	adds r2, r1, #0
	adds r0, r0, #4
	adds r3, r1, #0
	bl FUN_0201AE78
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201C2B4
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov21_021E4664

	thumb_func_start ov21_021E46A8
ov21_021E46A8: @ 0x021E46A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E4760 @ =0x00002B6C
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x74
	bl FUN_02009A4C
	movs r1, #0xc5
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl FUN_0200A3DC
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	ldr r0, _021E4764 @ =0x00002B0B
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x13
	movs r3, #0
	bl FUN_02009B04
	movs r1, #0xc6
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl FUN_0200A640
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02009D4C
	ldr r0, _021E4768 @ =0x00002B6D
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x75
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0xc7
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, _021E476C @ =0x00002B6B
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x73
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0x32
	lsls r1, r1, #4
	str r0, [r5, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E4760: .4byte 0x00002B6C
_021E4764: .4byte 0x00002B0B
_021E4768: .4byte 0x00002B6D
_021E476C: .4byte 0x00002B6B
	thumb_func_end ov21_021E46A8

	thumb_func_start ov21_021E4770
ov21_021E4770: @ 0x021E4770
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r4, [r1]
	bl FUN_0200A4E4
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A6DC
	movs r0, #5
	movs r1, #0xc5
	lsls r0, r0, #6
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	movs r0, #0x51
	movs r1, #0xc6
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	movs r0, #0x52
	movs r1, #0xc7
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	movs r0, #0x53
	movs r1, #0x32
	lsls r0, r0, #2
	lsls r1, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4770

	thumb_func_start ov21_021E47CC
ov21_021E47CC: @ 0x021E47CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r4, [r1]
	ldr r3, _021E4864 @ =0x00002B6B
	adds r7, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #5
	str r1, [sp, #0x10]
	lsls r0, r0, #6
	adds r5, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x50
	subs r2, #0x60
	adds r3, r3, #2
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	add r6, sp, #0x30
	str r0, [sp, #0x30]
	add r0, sp, #0x50
	str r0, [sp, #0x34]
	movs r0, #0x11
	str r0, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x48]
	movs r0, #0
	str r5, [sp, #0x4c]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
_021E4836:
	movs r4, #0
	adds r5, r7, #0
_021E483A:
	adds r0, r6, #0
	bl FUN_02021B90
	str r0, [r5, #0x20]
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #9
	blt _021E483A
	adds r0, r6, #0
	bl FUN_02021B90
	str r0, [r7, #0x68]
	ldr r0, [sp, #0x2c]
	adds r7, #0x54
	adds r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, #9
	blt _021E4836
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_021E4864: .4byte 0x00002B6B
	thumb_func_end ov21_021E47CC

	thumb_func_start ov21_021E4868
ov21_021E4868: @ 0x021E4868
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0
_021E486E:
	movs r4, #0
	adds r5, r6, #0
_021E4872:
	ldr r0, [r5, #0x20]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #9
	blt _021E4872
	ldr r0, [r6, #0x68]
	bl FUN_02021BD4
	adds r7, r7, #1
	adds r6, #0x54
	cmp r7, #9
	blt _021E486E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4868

	thumb_func_start ov21_021E4890
ov21_021E4890: @ 0x021E4890
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E4890

	thumb_func_start ov21_021E4894
ov21_021E4894: @ 0x021E4894
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E4894

	thumb_func_start ov21_021E4898
ov21_021E4898: @ 0x021E4898
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0xc]
	bl ov21_021E4D1C
	adds r2, r0, #0
	ldr r1, [r4]
	movs r0, #1
	bl FUN_02005188
	str r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov21_021E4898

	thumb_func_start ov21_021E48B0
ov21_021E48B0: @ 0x021E48B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	ldr r0, [sp, #0x44]
	ldr r7, [sp, #0x3c]
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x48]
	str r1, [sp, #8]
	str r0, [sp, #0x48]
	adds r0, r2, #0
	str r3, [sp, #0xc]
	ldr r5, [sp, #0x40]
	bl FUN_020050E0
	str r0, [sp, #0x1c]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x44]
	ldr r0, [r0]
	subs r3, #0x20
	lsls r2, r5, #0x10
	lsls r3, r3, #0x10
	adds r0, r0, #4
	movs r1, #0
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0xc]
	movs r6, #0
	subs r0, r1, r0
	cmp r7, #0
	ble _021E4954
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	asrs r0, r0, #0x1f
	str r0, [sp, #0x18]
	lsls r0, r7, #0xc
	adds r4, r6, #0
	str r0, [sp, #0x10]
_021E4908:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	asrs r3, r4, #0x1f
	adds r2, r4, #0
	blx FUN_020E1F1C
	movs r2, #2
	lsls r2, r2, #0xa
	adds r0, r0, r2
	ldr r2, _021E4958 @ =0x00000000
	adcs r1, r2
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	ldr r1, [sp, #0x10]
	blx FUN_020BCFD0
	asrs r1, r0, #0xc
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	adds r1, r1, r0
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #0x44]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldrb r1, [r2, r1]
	ldr r0, [r0]
	adds r2, r5, #0
	adds r0, r0, #4
	bl ov21_021E495C
	movs r0, #1
	lsls r0, r0, #0xc
	adds r6, r6, #1
	adds r5, r5, #1
	adds r4, r4, r0
	cmp r6, r7
	blt _021E4908
_021E4954:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E4958: .4byte 0x00000000
	thumb_func_end ov21_021E48B0

	thumb_func_start ov21_021E495C
ov21_021E495C: @ 0x021E495C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	str r0, [sp, #8]
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r4, [sp, #0x20]
	cmp r5, #0x7f
	bls _021E4970
	subs r5, #0xff
_021E4970:
	cmp r5, #0
	beq _021E499A
	lsls r2, r5, #0xc
	asrs r0, r2, #0x1f
	lsrs r1, r2, #0xf
	lsls r0, r0, #0x11
	orrs r0, r1
	movs r1, #2
	lsls r3, r2, #0x11
	movs r2, #0
	lsls r1, r1, #0xa
	adds r3, r3, r1
	adcs r0, r2
	lsls r1, r0, #0x14
	lsrs r0, r3, #0xc
	orrs r0, r1
	movs r1, #0x7f
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	asrs r5, r0, #0xc
_021E499A:
	ldr r1, [r4]
	adds r0, r7, r5
	adds r1, r7, r1
	cmp r0, r1
	ble _021E49AA
	adds r3, r1, #0
	subs r1, r0, r1
	b _021E49AE
_021E49AA:
	adds r3, r0, #0
	subs r1, r1, r0
_021E49AE:
	movs r0, #1
	str r0, [sp]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r2, r6, #0x10
	lsls r3, r3, #0x10
	ldr r0, [sp, #8]
	movs r1, #6
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	str r5, [r4]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E495C

	thumb_func_start ov21_021E49D0
ov21_021E49D0: @ 0x021E49D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, [sp, #0x20]
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r6, r2, #0
	adds r4, r3, #0
	str r0, [sp, #0x24]
	subs r0, r6, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r3, [sp, #0x20]
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	ldr r0, [r7]
	subs r3, #0x20
	lsls r2, r4, #0x10
	lsls r3, r3, #0x10
	adds r0, r0, #4
	movs r1, #0
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	cmp r5, r6
	bge _021E4A24
_021E4A0A:
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x20]
	str r0, [sp]
	ldr r0, [r7]
	movs r1, #0
	adds r0, r0, #4
	adds r2, r4, #0
	bl ov21_021E495C
	adds r5, r5, #1
	adds r4, r4, #1
	cmp r5, r6
	blt _021E4A0A
_021E4A24:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E49D0

	thumb_func_start ov21_021E4A28
ov21_021E4A28: @ 0x021E4A28
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r3, #0xc9
	adds r5, r0, #0
	lsls r3, r3, #2
	ldr r0, [r5, r3]
	adds r4, r1, #0
	adds r0, r0, #4
	str r0, [r5, r3]
	ldr r0, [r5, r3]
	adds r6, r2, #0
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x18
	subs r1, r1, r2
	movs r0, #0x18
	rors r1, r0
	adds r1, r2, r1
	str r1, [r5, r3]
	ldr r3, [r5, r3]
	subs r3, #8
	bpl _021E4A56
	adds r0, #0xe8
	adds r3, r3, r0
_021E4A56:
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r1, [r6, #4]
	ldr r7, [r5, r0]
	cmp r7, r1
	beq _021E4A82
	str r1, [sp]
	movs r1, #4
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r1, #0x97
	subs r0, r0, #4
	str r1, [sp, #0xc]
	adds r0, r5, r0
	str r0, [sp, #0x10]
	ldr r2, [r6]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl ov21_021E48B0
	b _021E4A96
_021E4A82:
	movs r1, #0x97
	subs r0, r0, #4
	str r1, [sp]
	adds r0, r5, r0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #4
	bl ov21_021E49D0
_021E4A96:
	ldr r0, [r4]
	movs r3, #0xc9
	lsls r3, r3, #2
	ldr r0, [r0]
	ldr r3, [r5, r3]
	movs r1, #1
	movs r2, #0
	bl FUN_0201C63C
	ldr r0, [r4]
	adds r0, r0, #4
	bl FUN_0201A9A4
	movs r0, #0xcb
	ldr r1, [r6, #4]
	lsls r0, r0, #2
	str r1, [r5, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4A28

	thumb_func_start ov21_021E4ABC
ov21_021E4ABC: @ 0x021E4ABC
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	movs r1, #9
	adds r0, r0, #4
	bl FUN_0201C2B4
	movs r0, #0xca
	movs r2, #0x97
	lsls r0, r0, #2
	str r2, [sp]
	adds r0, r5, r0
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, #0x69
	adds r3, r1, #0
	bl ov21_021E49D0
	ldr r0, [r4]
	adds r0, r0, #4
	bl FUN_0201A954
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E4ABC

	thumb_func_start ov21_021E4AF4
ov21_021E4AF4: @ 0x021E4AF4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r5, #0x20
_021E4AFC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E4B30
	adds r4, r4, #1
	adds r5, #0x54
	cmp r4, #9
	blt _021E4AFC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E4AF4

	thumb_func_start ov21_021E4B10
ov21_021E4B10: @ 0x021E4B10
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	adds r5, #0x20
_021E4B1A:
	adds r1, r6, r4
	ldrb r1, [r1, #0xc]
	adds r0, r5, #0
	bl ov21_021E4B94
	adds r4, r4, #1
	adds r5, #0x54
	cmp r4, #9
	blt _021E4B1A
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E4B10

	thumb_func_start ov21_021E4B30
ov21_021E4B30: @ 0x021E4B30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	lsls r0, r1, #4
	adds r0, #0x70
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #6
	lsls r0, r0, #0x10
	movs r6, #2
	ldr r5, [sp]
	str r0, [sp, #8]
	movs r4, #0
	add r7, sp, #4
	lsls r6, r6, #0xe
_021E4B4E:
	ldr r0, [r5]
	adds r1, r7, #0
	bl FUN_02021C50
	ldr r0, [r5]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [sp, #8]
	movs r1, #1
	subs r0, r0, r6
	str r0, [sp, #8]
	ldr r0, [r5]
	bl FUN_02021D6C
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #9
	blt _021E4B4E
	movs r0, #6
	lsls r0, r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp]
	add r1, sp, #4
	ldr r0, [r0, #0x48]
	bl FUN_02021C50
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0x48]
	bl FUN_02021CAC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E4B30

	thumb_func_start ov21_021E4B94
ov21_021E4B94: @ 0x021E4B94
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	adds r7, r1, #0
	adds r6, r0, #0
	str r4, [sp]
	cmp r7, #0
	ble _021E4BB8
	adds r5, r6, #0
_021E4BA4:
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02021CAC
	adds r4, r4, #1
	lsls r0, r4, #1
	str r0, [r5, #4]
	adds r5, #8
	cmp r4, r7
	blt _021E4BA4
_021E4BB8:
	movs r5, #0
	adds r4, r6, #0
	adds r7, r5, #0
_021E4BBE:
	ldr r0, [r4]
	bl FUN_02021D34
	cmp r0, #0
	beq _021E4BE0
	ldr r0, [r4, #4]
	subs r0, r0, #1
	cmp r0, #0
	ble _021E4BD8
	str r0, [r4, #4]
	adds r0, r5, #1
	str r0, [sp]
	b _021E4BE0
_021E4BD8:
	ldr r0, [r4]
	adds r1, r7, #0
	bl FUN_02021CAC
_021E4BE0:
	adds r5, r5, #1
	adds r4, #8
	cmp r5, #9
	blt _021E4BBE
	ldr r1, [r6, #0x4c]
	ldr r0, [sp]
	cmp r1, r0
	bgt _021E4C10
	ldr r0, [r6, #0x48]
	ldr r1, [sp]
	bl ov21_021E4C38
	movs r0, #0x10
	str r0, [r6, #0x50]
	ldr r1, [r6, #0x4c]
	ldr r0, [sp]
	cmp r1, r0
	bge _021E4C0C
	ldr r0, [r6, #0x48]
	movs r1, #1
	bl FUN_02021CAC
_021E4C0C:
	ldr r0, [sp]
	str r0, [r6, #0x4c]
_021E4C10:
	ldr r1, [r6, #0x4c]
	cmp r1, #0
	ble _021E4C2E
	ldr r0, [r6, #0x50]
	cmp r0, #0
	bge _021E4C28
	subs r1, r1, #1
	str r1, [r6, #0x4c]
	ldr r0, [r6, #0x48]
	bl ov21_021E4C38
	pop {r3, r4, r5, r6, r7, pc}
_021E4C28:
	subs r0, r0, #1
	str r0, [r6, #0x50]
	pop {r3, r4, r5, r6, r7, pc}
_021E4C2E:
	ldr r0, [r6, #0x48]
	movs r1, #0
	bl FUN_02021CAC
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4B94

	thumb_func_start ov21_021E4C38
ov21_021E4C38: @ 0x021E4C38
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_02021D28
	adds r6, r0, #0
	add r3, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r6]
	adds r1, r2, #0
	str r0, [r3]
	lsls r0, r4, #3
	rsbs r0, r0, #0
	adds r0, #0x60
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E4C38

	thumb_func_start ov21_021E4C68
ov21_021E4C68: @ 0x021E4C68
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r1, #0xc]
	bl ov21_021E4D1C
	adds r4, r0, #0
	adds r1, r5, #0
	movs r0, #0
	adds r1, #0xc
	strb r0, [r5, #0xc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	strb r0, [r1, #8]
	bl FUN_0200598C
	cmp r0, #0
	beq _021E4CA2
	ldr r0, [r5]
	adds r5, #0xc
	adds r1, r5, #0
	movs r2, #9
	adds r3, r4, #0
	bl FUN_020051D0
_021E4CA2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4C68

	thumb_func_start ov21_021E4CA4
ov21_021E4CA4: @ 0x021E4CA4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021E4D24
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E4D64
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E4D8C
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E4DBC
	str r0, [r5, #0x24]
	ldr r0, _021E4CEC @ =ov21_021E4DC0
	str r0, [r5, #8]
	ldr r0, _021E4CF0 @ =ov21_021E4E00
	str r0, [r5, #0xc]
	ldr r0, _021E4CF4 @ =ov21_021E4E84
	str r0, [r5, #0x10]
	ldr r0, _021E4CF8 @ =ov21_021E4E98
	str r0, [r5, #0x14]
	ldr r0, _021E4CFC @ =ov21_021E4F20
	str r0, [r5, #0x18]
	ldr r0, _021E4D00 @ =ov21_021E4F78
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E4CEC: .4byte ov21_021E4DC0
_021E4CF0: .4byte ov21_021E4E00
_021E4CF4: .4byte ov21_021E4E84
_021E4CF8: .4byte ov21_021E4E98
_021E4CFC: .4byte ov21_021E4F20
_021E4D00: .4byte ov21_021E4F78
	thumb_func_end ov21_021E4CA4

	thumb_func_start ov21_021E4D04
ov21_021E4D04: @ 0x021E4D04
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E4D90
	ldr r0, [r4, #4]
	bl ov21_021E4DA4
	ldr r0, [r4, #0x20]
	bl ov21_021E4DB8
	pop {r4, pc}
	thumb_func_end ov21_021E4D04

	thumb_func_start ov21_021E4D1C
ov21_021E4D1C: @ 0x021E4D1C
	ldr r0, [r0]
	ldr r0, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E4D1C

	thumb_func_start ov21_021E4D24
ov21_021E4D24: @ 0x021E4D24
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x10
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E4D36
	bl FUN_02022974
_021E4D36:
	adds r2, r4, #0
	movs r1, #0x10
	movs r0, #0
_021E4D3C:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E4D3C
	adds r0, r5, #0
	bl ov21_021D13A0
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #3
	bl ov21_021D1430
	str r0, [r4, #8]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E4D24

	thumb_func_start ov21_021E4D64
ov21_021E4D64: @ 0x021E4D64
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E4D76
	bl FUN_02022974
_021E4D76:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4D64

	thumb_func_start ov21_021E4D8C
ov21_021E4D8C: @ 0x021E4D8C
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E4D8C

	thumb_func_start ov21_021E4D90
ov21_021E4D90: @ 0x021E4D90
	push {r4, lr}
	adds r4, r0, #0
	bne _021E4D9A
	bl FUN_02022974
_021E4D9A:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E4D90

	thumb_func_start ov21_021E4DA4
ov21_021E4DA4: @ 0x021E4DA4
	push {r4, lr}
	adds r4, r0, #0
	bne _021E4DAE
	bl FUN_02022974
_021E4DAE:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E4DA4

	thumb_func_start ov21_021E4DB8
ov21_021E4DB8: @ 0x021E4DB8
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E4DB8

	thumb_func_start ov21_021E4DBC
ov21_021E4DBC: @ 0x021E4DBC
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E4DBC

	thumb_func_start ov21_021E4DC0
ov21_021E4DC0: @ 0x021E4DC0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D37BC
	adds r7, r0, #0
	ldr r0, [r5, #4]
	movs r1, #0x70
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x70
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E5128
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E51DC
	adds r0, r7, #0
	bl FUN_020050F8
	str r0, [r4, #0x6c]
	str r4, [r5, #8]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4DC0

	thumb_func_start ov21_021E4E00
ov21_021E4E00: @ 0x021E4E00
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E4E1C
	adds r0, r4, #0
	bl ov21_021E5E18
	adds r0, r4, #0
	bl ov21_021E5E28
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E4E1C:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E4E26
	movs r0, #0
	pop {r3, r4, r5, pc}
_021E4E26:
	ldr r0, [r4, #0x3c]
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E4E80
	bl FUN_0200598C
	cmp r0, #0
	bne _021E4E48
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _021E4E48
	adds r0, r4, #0
	bl ov21_021E5E18
_021E4E48:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E51DC
	ldr r0, [r5, #8]
	bl ov21_021E33BC
	cmp r0, #0
	beq _021E4E6C
	ldr r0, [r5, #4]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E4E6C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E5F5C
_021E4E6C:
	ldr r0, [r4, #0x64]
	cmp r0, #0
	beq _021E4E80
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E4E80
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E5E48
_021E4E80:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E4E00

	thumb_func_start ov21_021E4E84
ov21_021E4E84: @ 0x021E4E84
	push {r4, lr}
	ldr r4, [r0, #8]
	adds r0, r4, #0
	bl ov21_021E5200
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021E4E84

	thumb_func_start ov21_021E4E98
ov21_021E4E98: @ 0x021E4E98
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E4F1C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E4EB4: @ jump table
	.2byte _021E4EBC - _021E4EB4 - 2 @ case 0
	.2byte _021E4ED6 - _021E4EB4 - 2 @ case 1
	.2byte _021E4EF4 - _021E4EB4 - 2 @ case 2
	.2byte _021E4F0A - _021E4EB4 - 2 @ case 3
_021E4EBC:
	ldr r0, [r4, #4]
	movs r1, #0x74
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x74
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4F1C
_021E4ED6:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E54D4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E507C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4F1C
_021E4EF4:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021E50EC
	cmp r0, #0
	beq _021E4F1C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E4F1C
_021E4F0A:
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0
	bl ov21_021D25AC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E4F1C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4E98

	thumb_func_start ov21_021E4F20
ov21_021E4F20: @ 0x021E4F20
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r7, r0, #0
	ldr r0, [r6, #8]
	ldr r4, [r3, #8]
	ldr r5, [r1, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E4F74
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E59B4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E5A04
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E5A2C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E5B50
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov21_021E5B6C
	adds r0, r5, #0
	bl ov21_021E5C4C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E5F38
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021E5FD0
_021E4F74:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4F20

	thumb_func_start ov21_021E4F78
ov21_021E4F78: @ 0x021E4F78
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021E5000
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E4F94: @ jump table
	.2byte _021E4F9E - _021E4F94 - 2 @ case 0
	.2byte _021E4FC6 - _021E4F94 - 2 @ case 1
	.2byte _021E4FDC - _021E4F94 - 2 @ case 2
	.2byte _021E4FEE - _021E4F94 - 2 @ case 3
	.2byte _021E4FFC - _021E4F94 - 2 @ case 4
_021E4F9E:
	movs r0, #0x79
	ldr r1, [r6]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	bl ov21_021D25AC
	adds r0, r5, #0
	bl ov21_021E5EC0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov21_021E507C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E5000
_021E4FC6:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	bl ov21_021E50EC
	cmp r0, #0
	beq _021E5000
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E5000
_021E4FDC:
	ldr r2, [r4, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov21_021E5510
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E5000
_021E4FEE:
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E5000
_021E4FFC:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E5000:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E4F78

	thumb_func_start ov21_021E5004
ov21_021E5004: @ 0x021E5004
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02021FE0
	ldr r0, [r4, #0x3c]
	movs r1, #1
	bl FUN_02021FE0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02021FE0
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl FUN_02021FE0
	ldr r0, [r4, #0x50]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02012AF0
	ldr r0, [r4, #0x54]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5004

	thumb_func_start ov21_021E5040
ov21_021E5040: @ 0x021E5040
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02021FE0
	ldr r0, [r4, #0x3c]
	movs r1, #0
	bl FUN_02021FE0
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02021FE0
	ldr r0, [r4, #0x20]
	movs r1, #0
	bl FUN_02021FE0
	ldr r0, [r4, #0x50]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	ldr r0, [r4, #0x54]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5040

	thumb_func_start ov21_021E507C
ov21_021E507C: @ 0x021E507C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E5004
	ldr r0, [r4, #8]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E50E8
	cmp r6, #0
	beq _021E50C2
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x19
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #3
	adds r2, r1, #0
	subs r2, #0x13
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E50C2:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x19
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r1, r0
	movs r1, #3
	adds r3, r1, #0
	subs r3, #0x13
	bl ov21_021D23F8
_021E50E8:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E507C

	thumb_func_start ov21_021E50EC
ov21_021E50EC: @ 0x021E50EC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r2, #8]
	adds r5, r1, #0
	adds r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E510C
	movs r0, #0x19
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov21_021D2424
	b _021E5112
_021E510C:
	movs r0, #2
	bl FUN_0200AC1C
_021E5112:
	cmp r0, #0
	beq _021E5124
	cmp r4, #0
	beq _021E5120
	adds r0, r6, #0
	bl ov21_021E5040
_021E5120:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E5124:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E50EC

	thumb_func_start ov21_021E5128
ov21_021E5128: @ 0x021E5128
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r4, #0
	movs r1, #0xc
	bl FUN_02018144
	str r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #8
	bl FUN_02018144
	str r0, [r5, #0x10]
	movs r0, #0x6a
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x35
	movs r2, #0x51
	movs r3, #0x16
	bl ov21_021D154C
	ldr r1, [r5, #4]
	movs r0, #0xfe
	strb r0, [r1, #4]
	ldr r1, [r5, #4]
	movs r2, #0x33
	strb r2, [r1, #5]
	ldr r1, [r5, #4]
	movs r2, #0x9d
	strb r2, [r1, #6]
	ldr r1, [r5, #4]
	movs r2, #0x20
	strb r2, [r1, #7]
	ldr r1, [r5, #4]
	movs r2, #0x9b
	strb r0, [r1, #8]
	ldr r0, [r5, #4]
	movs r1, #0xb3
	strb r1, [r0, #9]
	ldr r0, [r5, #4]
	movs r1, #0x7b
	strb r1, [r0, #0xa]
	ldr r0, [r5, #4]
	movs r1, #0x48
	strb r1, [r0, #0xb]
	movs r0, #0xcc
	str r0, [sp]
	ldr r0, [r5, #0x10]
	movs r1, #0x6b
	movs r3, #0x9c
	bl ov21_021D154C
	movs r0, #0xf6
	str r0, [sp]
	ldr r0, [r5, #0x10]
	movs r1, #0x96
	adds r0, r0, #4
	movs r2, #0xb6
	movs r3, #0xd6
	bl ov21_021D154C
	str r6, [r5, #8]
	str r5, [r5, #0xc]
	str r4, [sp]
	adds r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E51D4 @ =ov21_021E5228
	movs r1, #3
	adds r3, #8
	bl FUN_02023FCC
	str r0, [r5]
	str r4, [sp]
	adds r3, r5, #0
	ldr r0, [r5, #0x10]
	ldr r2, _021E51D8 @ =ov21_021E5268
	movs r1, #2
	adds r3, #8
	bl FUN_02023FCC
	str r0, [r5, #0x14]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E51D4: .4byte ov21_021E5228
_021E51D8: .4byte ov21_021E5268
	thumb_func_end ov21_021E5128

	thumb_func_start ov21_021E51DC
ov21_021E51DC: @ 0x021E51DC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	adds r2, r4, #0
	movs r0, #0x64
_021E51E6:
	adds r1, r1, #1
	str r0, [r2, #0x18]
	adds r2, r2, #4
	cmp r1, #2
	blt _021E51E6
	ldr r0, [r4]
	bl FUN_0202404C
	ldr r0, [r4, #0x14]
	bl FUN_0202404C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E51DC

	thumb_func_start ov21_021E5200
ov21_021E5200: @ 0x021E5200
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02024034
	ldr r0, [r4, #0x14]
	bl FUN_02024034
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5200

	thumb_func_start ov21_021E5228
ov21_021E5228: @ 0x021E5228
	push {r3, lr}
	ldr r3, [r2]
	ldr r2, [r2, #4]
	cmp r1, #3
	bhi _021E5264
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E523E: @ jump table
	.2byte _021E5246 - _021E523E - 2 @ case 0
	.2byte _021E5256 - _021E523E - 2 @ case 1
	.2byte _021E524E - _021E523E - 2 @ case 2
	.2byte _021E525E - _021E523E - 2 @ case 3
_021E5246:
	adds r1, r3, #0
	bl ov21_021E530C
	pop {r3, pc}
_021E524E:
	adds r1, r3, #0
	bl ov21_021E537C
	pop {r3, pc}
_021E5256:
	adds r1, r3, #0
	bl ov21_021E545C
	pop {r3, pc}
_021E525E:
	adds r1, r3, #0
	bl ov21_021E5498
_021E5264:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E5228

	thumb_func_start ov21_021E5268
ov21_021E5268: @ 0x021E5268
	push {r3, r4, r5, r6, r7, lr}
	ldr r5, [r2]
	adds r6, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r2, #4]
	adds r7, r1, #0
	bl ov21_021D37BC
	str r0, [sp]
	lsls r0, r6, #2
	adds r0, r4, r0
	str r7, [r0, #0x18]
	cmp r7, #3
	bhi _021E5304
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E5290: @ jump table
	.2byte _021E5298 - _021E5290 - 2 @ case 0
	.2byte _021E5304 - _021E5290 - 2 @ case 1
	.2byte _021E52A6 - _021E5290 - 2 @ case 2
	.2byte _021E5304 - _021E5290 - 2 @ case 3
_021E5298:
	ldr r0, [r5, #8]
	movs r1, #1
	bl ov21_021E33B4
	movs r0, #0
	str r0, [r4, #0x24]
	pop {r3, r4, r5, r6, r7, pc}
_021E52A6:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021E5304
	movs r2, #1
	str r2, [r4, #0x24]
	cmp r6, #0
	beq _021E52BA
	cmp r6, #1
	beq _021E52F0
	pop {r3, r4, r5, r6, r7, pc}
_021E52BA:
	ldr r0, [r4, #0x64]
	cmp r0, #1
	ldr r0, [r4, #0x2c]
	bne _021E52DA
	cmp r0, #0
	bne _021E52D2
	ldr r2, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E5DE8
	pop {r3, r4, r5, r6, r7, pc}
_021E52D2:
	adds r0, r4, #0
	bl ov21_021E5E18
	pop {r3, r4, r5, r6, r7, pc}
_021E52DA:
	cmp r0, #1
	bne _021E52E4
	movs r0, #0
	bl FUN_0200592C
_021E52E4:
	ldr r2, [sp]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E5DE8
	pop {r3, r4, r5, r6, r7, pc}
_021E52F0:
	movs r0, #2
	str r0, [r4, #0x28]
	ldr r1, [r4, #0x64]
	adds r0, r4, #0
	eors r1, r2
	bl ov21_021E5E78
	ldr r0, _021E5308 @ =0x000005DD
	bl FUN_02005748
_021E5304:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5308: .4byte 0x000005DD
	thumb_func_end ov21_021E5268

	thumb_func_start ov21_021E530C
ov21_021E530C: @ 0x021E530C
	push {r4, lr}
	adds r4, r2, #0
	cmp r0, #0
	beq _021E531E
	cmp r0, #1
	beq _021E5336
	cmp r0, #2
	beq _021E5352
	pop {r4, pc}
_021E531E:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _021E532A
	adds r0, r4, #0
	bl ov21_021E5E18
_021E532A:
	ldr r0, _021E5378 @ =0x021BF6BC
	ldrh r0, [r0, #0x1c]
	str r0, [r4, #0x38]
	movs r0, #1
	str r0, [r4, #0x30]
	pop {r4, pc}
_021E5336:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _021E5342
	adds r0, r4, #0
	bl ov21_021E5E18
_021E5342:
	movs r0, #1
	str r0, [r4, #0x4c]
	ldr r0, _021E5378 @ =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0x54]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0x58]
	pop {r4, pc}
_021E5352:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E5370
	ldr r0, [r4, #0x10]
	bl FUN_02022734
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x10]
	adds r0, r0, #4
	bl FUN_02022734
	ldr r1, [r4, #0x20]
	orrs r0, r1
	str r0, [r4, #0x20]
	pop {r4, pc}
_021E5370:
	movs r0, #1
	str r0, [r4, #0x20]
	pop {r4, pc}
	nop
_021E5378: .4byte 0x021BF6BC
	thumb_func_end ov21_021E530C

	thumb_func_start ov21_021E537C
ov21_021E537C: @ 0x021E537C
	push {r4, lr}
	adds r4, r2, #0
	cmp r0, #0
	beq _021E538E
	cmp r0, #1
	beq _021E53CE
	cmp r0, #2
	beq _021E53F2
	pop {r4, pc}
_021E538E:
	ldr r0, [r4, #0x30]
	cmp r0, #1
	bne _021E544C
	ldr r1, _021E5450 @ =0x021BF6BC
	ldr r0, [r4, #0x38]
	ldrh r2, [r1, #0x1c]
	subs r2, r2, r0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021E53B6
	cmp r2, #0xc
	blt _021E544C
	movs r0, #1
	str r0, [r4, #0x34]
	ldrh r0, [r1, #0x1c]
	str r0, [r4, #0x38]
	ldr r0, _021E5454 @ =0x000005F7
	bl FUN_02005748
	pop {r4, pc}
_021E53B6:
	movs r0, #0xb
	mvns r0, r0
	cmp r2, r0
	bgt _021E544C
	movs r0, #0
	str r0, [r4, #0x34]
	ldrh r0, [r1, #0x1c]
	str r0, [r4, #0x38]
	ldr r0, _021E5454 @ =0x000005F7
	bl FUN_02005748
	pop {r4, pc}
_021E53CE:
	ldr r0, [r4, #0x4c]
	cmp r0, #1
	bne _021E544C
	adds r0, r4, #0
	bl ov21_021E5A44
	adds r0, r4, #0
	bl ov21_021E5AAC
	adds r0, r4, #0
	bl ov21_021E5AD8
	ldr r0, _021E5450 @ =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #0x54]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0x58]
	pop {r4, pc}
_021E53F2:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E544C
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _021E540C
	movs r0, #1
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r1, #0
	bl ov21_021E5ED8
	b _021E5446
_021E540C:
	ldr r1, _021E5450 @ =0x021BF6BC
	ldrh r0, [r1, #0x1e]
	cmp r0, #0x83
	bhs _021E543A
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _021E5424
	ldrh r1, [r1, #0x1c]
	adds r0, r4, #0
	bl ov21_021E5BE4
	b _021E542C
_021E5424:
	ldrh r1, [r1, #0x1c]
	adds r0, r4, #0
	bl ov21_021E5C18
_021E542C:
	movs r0, #0
	str r0, [r4, #0x3c]
	adds r0, r4, #0
	movs r1, #1
	bl ov21_021E5ED8
	b _021E5446
_021E543A:
	adds r0, r4, #0
	movs r1, #0
	bl ov21_021E5EF0
	ldr r0, _021E5458 @ =0xFFFFFA00
	str r0, [r4, #0x3c]
_021E5446:
	adds r0, r4, #0
	bl ov21_021E5F00
_021E544C:
	pop {r4, pc}
	nop
_021E5450: .4byte 0x021BF6BC
_021E5454: .4byte 0x000005F7
_021E5458: .4byte 0xFFFFFA00
	thumb_func_end ov21_021E537C

	thumb_func_start ov21_021E545C
ov21_021E545C: @ 0x021E545C
	push {r4, lr}
	adds r4, r2, #0
	cmp r0, #0
	beq _021E546E
	cmp r0, #1
	beq _021E5474
	cmp r0, #2
	beq _021E5480
	pop {r4, pc}
_021E546E:
	movs r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
_021E5474:
	ldr r0, [r4, #0x60]
	lsls r0, r0, #2
	str r0, [r4, #0x5c]
	movs r0, #0
	str r0, [r4, #0x4c]
	pop {r4, pc}
_021E5480:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E5494
	adds r0, r4, #0
	movs r1, #0
	bl ov21_021E5ED8
	adds r0, r4, #0
	bl ov21_021E5F00
_021E5494:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E545C

	thumb_func_start ov21_021E5498
ov21_021E5498: @ 0x021E5498
	push {r4, lr}
	adds r4, r2, #0
	cmp r0, #0
	beq _021E54AA
	cmp r0, #1
	beq _021E54B0
	cmp r0, #2
	beq _021E54BC
	pop {r4, pc}
_021E54AA:
	movs r0, #0
	str r0, [r4, #0x30]
	pop {r4, pc}
_021E54B0:
	ldr r0, [r4, #0x60]
	lsls r0, r0, #2
	str r0, [r4, #0x5c]
	movs r0, #0
	str r0, [r4, #0x4c]
	pop {r4, pc}
_021E54BC:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	bne _021E54D0
	adds r0, r4, #0
	movs r1, #0
	bl ov21_021E5ED8
	adds r0, r4, #0
	bl ov21_021E5F00
_021E54D0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5498

	thumb_func_start ov21_021E54D4
ov21_021E54D4: @ 0x021E54D4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E5538
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E5644
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E5734
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E58B8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E5E80
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E54D4

	thumb_func_start ov21_021E5510
ov21_021E5510: @ 0x021E5510
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021E5898
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E599C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E56F0
	adds r0, r4, #0
	bl ov21_021E5620
	adds r0, r5, #0
	bl ov21_021E5E98
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E5510

	thumb_func_start ov21_021E5538
ov21_021E5538: @ 0x021E5538
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x22
	movs r3, #6
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x47
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r6, r0, #0
	ldrh r0, [r2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r1, #6
	ldr r0, [r0]
	bl FUN_0201C3C0
	ldr r0, [r5]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x23
	movs r3, #7
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5]
	movs r1, #0x48
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r4, r0, #0
	ldrh r0, [r2]
	movs r1, #7
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r1, #7
	ldr r0, [r0]
	bl FUN_0201C3C0
	ldr r0, [r5]
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r0]
	movs r1, #7
	subs r3, #0x30
	bl FUN_02019184
	ldr r0, [r5]
	movs r2, #3
	adds r3, r2, #0
	ldr r0, [r0]
	movs r1, #7
	subs r3, #0x13
	bl FUN_02019184
	movs r0, #7
	movs r1, #3
	bl FUN_02019060
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E5538

	thumb_func_start ov21_021E5620
ov21_021E5620: @ 0x021E5620
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #6
	ldr r0, [r0]
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #7
	ldr r0, [r0]
	bl FUN_02019EBC
	movs r0, #7
	movs r1, #1
	bl FUN_02019060
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5620

	thumb_func_start ov21_021E5644
ov21_021E5644: @ 0x021E5644
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E56E4 @ =0x00002781
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x71
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r5, #0x58]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x58]
	bl FUN_02009D4C
	ldr r0, _021E56E8 @ =0x00002722
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x12
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x5c]
	bl FUN_0200A640
	ldr r0, [r5, #0x5c]
	bl FUN_02009D4C
	ldr r0, _021E56EC @ =0x00002782
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x72
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x60]
	movs r0, #0x9e
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x70
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x64]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E56E4: .4byte 0x00002781
_021E56E8: .4byte 0x00002722
_021E56EC: .4byte 0x00002782
	thumb_func_end ov21_021E5644

	thumb_func_start ov21_021E56F0
ov21_021E56F0: @ 0x021E56F0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x58]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x5c]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x58]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x5c]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x60]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x64]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E56F0

	thumb_func_start ov21_021E5734
ov21_021E5734: @ 0x021E5734
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1]
	movs r3, #0x9e
	adds r5, r0, #0
	lsls r3, r3, #6
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	adds r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r2, #0x5e
	adds r3, r3, #2
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x43
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x1f
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	lsls r0, r0, #0x11
	str r0, [sp, #0x34]
	movs r0, #3
	lsls r1, r1, #0xc
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	str r6, [sp, #0x48]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5, #0x3c]
	movs r1, #4
	bl FUN_02021D6C
	ldr r0, [r5, #0x3c]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #2
	ldr r0, [r5, #0x3c]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r5, #0x3c]
	movs r1, #8
	bl FUN_02021E50
	movs r0, #0x33
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	movs r1, #0x9d
	movs r0, #3
	lsls r1, r1, #0xc
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5]
	movs r1, #1
	bl FUN_02021D6C
	ldr r0, [r5]
	movs r1, #1
	bl FUN_02021CF8
	movs r0, #0x2d
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r1, #0x83
	movs r0, #3
	lsls r1, r1, #0xc
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5, #4]
	movs r1, #3
	bl FUN_02021D6C
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #2
	ldr r0, [r5, #4]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r5, #4]
	movs r1, #5
	bl FUN_02021E50
	movs r2, #3
	str r2, [r5, #8]
	movs r1, #2
	str r1, [r5, #0xc]
	str r2, [r5, #0x10]
	movs r0, #5
	str r0, [r5, #0x18]
	movs r0, #0xe6
	str r1, [r5, #0x1c]
	lsls r0, r0, #0xc
	movs r1, #0xa6
	str r0, [sp, #0x34]
	lsls r1, r1, #0xc
	lsls r0, r2, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5, #0x20]
	movs r1, #6
	bl FUN_02021D6C
	ldr r0, [r5, #0x20]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #2
	ldr r0, [r5, #0x20]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r5, #0x20]
	movs r1, #5
	bl FUN_02021E50
	movs r1, #6
	str r1, [r5, #0x24]
	movs r0, #5
	str r0, [r5, #0x28]
	str r1, [r5, #0x2c]
	str r0, [r5, #0x34]
	movs r0, #2
	str r0, [r5, #0x38]
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E5734

	thumb_func_start ov21_021E5898
ov21_021E5898: @ 0x021E5898
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02021BD4
	ldr r0, [r4, #0x3c]
	bl FUN_02021BD4
	ldr r0, [r4, #4]
	bl FUN_02021BD4
	ldr r0, [r4, #0x20]
	bl FUN_02021BD4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5898

	thumb_func_start ov21_021E58B8
ov21_021E58B8: @ 0x021E58B8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r4, [r1]
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E5994 @ =0x00002722
	adds r6, r2, #0
	bl FUN_02009DC8
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #8]
	movs r1, #0
	bl FUN_0200A72C
	movs r2, #0
	movs r1, #0x45
	lsls r1, r1, #2
	str r1, [sp, #0x1c]
	movs r1, #2
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	str r6, [sp, #0x2c]
	bl FUN_0201FAB4
	adds r7, r0, #0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #8
	movs r2, #2
	bl ov21_021D4D6C
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E5998 @ =0x000002B9
	adds r1, r6, #0
	movs r3, #0x29
	bl ov21_021D4DAC
	lsrs r1, r0, #1
	movs r0, #0x40
	subs r0, r0, r1
	str r0, [sp, #0x18]
	str r6, [sp, #0xc]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0x50]
	ldr r0, [r0]
	adds r1, r7, #0
	bl FUN_02012A60
	adds r0, r6, #0
	bl ov21_021D4DA0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #8
	movs r2, #2
	bl ov21_021D4D6C
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E5998 @ =0x000002B9
	adds r1, r6, #0
	movs r3, #0x2a
	bl ov21_021D4DAC
	lsrs r1, r0, #1
	movs r0, #0x40
	subs r0, r0, r1
	str r0, [sp, #0x18]
	str r6, [sp, #0xc]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0x54]
	ldr r0, [r0]
	adds r1, r7, #0
	bl FUN_02012A60
	adds r0, r6, #0
	bl ov21_021D4DA0
	ldr r0, [r5, #0x54]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_020129D0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E5994: .4byte 0x00002722
_021E5998: .4byte 0x000002B9
	thumb_func_end ov21_021E58B8

	thumb_func_start ov21_021E599C
ov21_021E599C: @ 0x021E599C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E59A2:
	ldr r0, [r5, #0x50]
	bl ov21_021D4D1C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E59A2
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E599C

	thumb_func_start ov21_021E59B4
ov21_021E59B4: @ 0x021E59B4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x40]
	ldr r0, [r4, #0x34]
	cmp r1, r0
	beq _021E5A00
	ldr r0, [r5, #0x3c]
	bl FUN_02021E74
	adds r6, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	ldr r0, [r5, #0x3c]
	bne _021E59E8
	movs r1, #4
	bl FUN_02021D6C
	movs r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x3c]
	lsrs r1, r1, #0x10
	bl FUN_02021E50
	b _021E59FC
_021E59E8:
	movs r1, #0
	bl FUN_02021D6C
	movs r1, #8
	subs r1, r1, r6
	lsls r1, r1, #0x10
	ldr r0, [r5, #0x3c]
	lsrs r1, r1, #0x10
	bl FUN_02021E50
_021E59FC:
	ldr r0, [r4, #0x34]
	str r0, [r5, #0x40]
_021E5A00:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E59B4

	thumb_func_start ov21_021E5A04
ov21_021E5A04: @ 0x021E5A04
	push {r4, lr}
	adds r2, r1, #0
	adds r4, r0, #0
	ldr r0, [r2, #0x64]
	ldr r3, [r2, #0x18]
	cmp r0, #0
	ldr r0, [r4, #4]
	bne _021E5A20
	adds r4, #8
	adds r1, r4, #0
	movs r2, #0
	bl ov21_021E5CF8
	pop {r4, pc}
_021E5A20:
	adds r4, #8
	ldr r2, [r2, #0x2c]
	adds r1, r4, #0
	bl ov21_021E5C80
	pop {r4, pc}
	thumb_func_end ov21_021E5A04

	thumb_func_start ov21_021E5A2C
ov21_021E5A2C: @ 0x021E5A2C
	push {r3, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x20]
	adds r3, r1, #0
	adds r2, #0x24
	adds r1, r2, #0
	ldr r2, [r3, #0x64]
	ldr r3, [r3, #0x1c]
	bl ov21_021E5C80
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E5A2C

	thumb_func_start ov21_021E5A44
ov21_021E5A44: @ 0x021E5A44
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r3, _021E5AA8 @ =0x021BF6BC
	ldr r0, [r5, #0x54]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	ldr r1, [r5, #0x58]
	subs r0, #0x33
	subs r1, #0x9d
	subs r2, #0x33
	subs r3, #0x9d
	bl FUN_0201D4CC
	adds r6, r0, #0
	bpl _021E5A6A
	rsbs r0, r6, #0
_021E5A6A:
	cmp r0, #1
	blt _021E5AA4
	ldr r0, [r5, #0x5c]
	adds r4, r5, #0
	adds r4, #0x5c
	adds r0, r0, r6
	str r0, [r5, #0x5c]
	ldr r0, [r4]
	bpl _021E5A82
	adds r0, #0x58
	str r0, [r4]
	b _021E5A8A
_021E5A82:
	movs r1, #0x58
	blx FUN_020E1F6C
	str r1, [r4]
_021E5A8A:
	ldr r0, [r5, #0x5c]
	cmp r0, #0x20
	blt _021E5AA4
	cmp r0, #0x38
	bgt _021E5AA4
	cmp r6, #0
	ble _021E5AA0
	movs r0, #0x20
	add sp, #4
	str r0, [r5, #0x5c]
	pop {r3, r4, r5, r6, pc}
_021E5AA0:
	movs r0, #0x38
	str r0, [r5, #0x5c]
_021E5AA4:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E5AA8: .4byte 0x021BF6BC
	thumb_func_end ov21_021E5A44

	thumb_func_start ov21_021E5AAC
ov21_021E5AAC: @ 0x021E5AAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x5c]
	asrs r0, r1, #1
	lsrs r0, r0, #0x1e
	adds r0, r1, r0
	asrs r1, r0, #2
	ldr r0, [r4, #0x60]
	cmp r1, r0
	beq _021E5AD2
	ldr r0, _021E5AD4 @ =0x000005F7
	bl FUN_02005748
	ldr r1, [r4, #0x5c]
	asrs r0, r1, #1
	lsrs r0, r0, #0x1e
	adds r0, r1, r0
	asrs r0, r0, #2
	str r0, [r4, #0x60]
_021E5AD2:
	pop {r4, pc}
	.align 2, 0
_021E5AD4: .4byte 0x000005F7
	thumb_func_end ov21_021E5AAC

	thumb_func_start ov21_021E5AD8
ov21_021E5AD8: @ 0x021E5AD8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x5c]
	cmp r1, #0
	bne _021E5AE8
	bl ov21_021E5E28
	pop {r4, pc}
_021E5AE8:
	ble _021E5B16
	cmp r1, #0x2c
	bgt _021E5B16
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _021E5AFA
	movs r0, #0
	bl FUN_02004EEC
_021E5AFA:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	beq _021E5B08
	bl FUN_02004EFC
	movs r0, #2
	str r0, [r4, #0x50]
_021E5B08:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	bne _021E5B10
	movs r0, #1
_021E5B10:
	bl FUN_02004F4C
	pop {r4, pc}
_021E5B16:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	bne _021E5B20
	bl FUN_02004F44
_021E5B20:
	ldr r0, [r4, #0x50]
	cmp r0, #1
	beq _021E5B30
	movs r0, #0
	bl FUN_02004EC8
	movs r0, #1
	str r0, [r4, #0x50]
_021E5B30:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	bne _021E5B3A
	movs r0, #0x58
	str r0, [r4, #0x5c]
_021E5B3A:
	ldr r1, [r4, #0x60]
	movs r0, #0x16
	subs r0, r0, r1
	lsls r0, r0, #3
	cmp r0, #0
	ble _021E5B48
	subs r0, r0, #1
_021E5B48:
	movs r1, #0
	bl FUN_02004EF4
	pop {r4, pc}
	thumb_func_end ov21_021E5AD8

	thumb_func_start ov21_021E5B50
ov21_021E5B50: @ 0x021E5B50
	push {r4, lr}
	ldr r1, [r1, #0x5c]
	adds r4, r0, #0
	movs r0, #0xe
	bl FUN_0201D580
	adds r1, r0, #0
	lsls r1, r1, #0x10
	ldr r0, [r4]
	lsrs r1, r1, #0x10
	bl FUN_02021C94
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5B50

	thumb_func_start ov21_021E5B6C
ov21_021E5B6C: @ 0x021E5B6C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r1, [r2, #0x6c]
	adds r5, r0, #0
	ldr r2, [r2, #0x3c]
	movs r0, #1
	bl FUN_02005188
	adds r6, r0, #0
	bne _021E5B84
	movs r0, #0
	str r0, [r5, #0x48]
_021E5B84:
	adds r0, r5, #0
	ldr r1, [r5, #0x48]
	adds r0, #0x4c
	subs r1, r6, r1
	lsls r1, r1, #4
	ldrh r0, [r0]
	rsbs r1, r1, #0
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #0x4c
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x4c
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x4c
	ldrh r0, [r0]
	movs r1, #0xb6
	blx FUN_020E1F6C
	adds r3, r0, #0
	ldr r0, [r4]
	lsls r3, r3, #0x10
	ldr r0, [r0]
	movs r1, #7
	movs r2, #0
	lsrs r3, r3, #0x10
	bl FUN_0201C660
	ldr r0, [r4]
	movs r1, #7
	ldr r0, [r0]
	movs r2, #9
	movs r3, #0x83
	bl FUN_0201C718
	ldr r0, [r4]
	movs r1, #7
	ldr r0, [r0]
	movs r2, #0xc
	movs r3, #0x63
	bl FUN_0201C718
	str r6, [r5, #0x48]
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E5B6C

	thumb_func_start ov21_021E5BE4
ov21_021E5BE4: @ 0x021E5BE4
	push {r4, lr}
	subs r1, #0x6b
	adds r4, r0, #0
	lsls r0, r1, #0xc
	movs r2, #0x7f
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xc
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	movs r1, #9
	lsls r1, r1, #0x10
	blx FUN_020BCFD0
	asrs r0, r0, #0xc
	str r0, [r4, #0x44]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5BE4

	thumb_func_start ov21_021E5C18
ov21_021E5C18: @ 0x021E5C18
	push {r4, lr}
	subs r1, #0xb3
	adds r4, r0, #0
	lsls r0, r1, #0xc
	movs r2, #0x7f
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xc
	movs r3, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	movs r1, #0x12
	lsls r1, r1, #0xe
	blx FUN_020BCFD0
	asrs r0, r0, #0xc
	str r0, [r4, #0x40]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5C18

	thumb_func_start ov21_021E5C4C
ov21_021E5C4C: @ 0x021E5C4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x40]
	cmp r0, #0
	ldr r0, [r4, #0x50]
	bne _021E5C6C
	ldr r0, [r0]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [r4, #0x54]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_020129D0
	pop {r4, pc}
_021E5C6C:
	ldr r0, [r0]
	movs r1, #0
	bl FUN_020129D0
	ldr r0, [r4, #0x54]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_020129D0
	pop {r4, pc}
	thumb_func_end ov21_021E5C4C

	thumb_func_start ov21_021E5C80
ov21_021E5C80: @ 0x021E5C80
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	cmp r4, #3
	bne _021E5C90
	movs r4, #1
_021E5C90:
	adds r0, r6, #0
	bl FUN_02021E74
	str r0, [sp]
	ldr r0, [r5, #0xc]
	cmp r0, r7
	beq _021E5CAA
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov21_021E5D90
	str r7, [r5, #0xc]
_021E5CAA:
	cmp r4, #2
	bgt _021E5CBE
	cmp r4, #0
	blt _021E5CF4
	beq _021E5CF4
	cmp r4, #1
	beq _021E5CE0
	cmp r4, #2
	beq _021E5CC4
	pop {r3, r4, r5, r6, r7, pc}
_021E5CBE:
	cmp r4, #0x64
	beq _021E5CE0
	pop {r3, r4, r5, r6, r7, pc}
_021E5CC4:
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	cmp r0, r1
	ble _021E5CF4
	lsls r1, r1, #0x10
	adds r0, r6, #0
	lsrs r1, r1, #0x10
	bl FUN_02021E50
	adds r0, r6, #0
	movs r1, #0
	bl FUN_02021CE4
	pop {r3, r4, r5, r6, r7, pc}
_021E5CE0:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov21_021E5D90
	movs r1, #2
	adds r0, r6, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
_021E5CF4:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E5C80

	thumb_func_start ov21_021E5CF8
ov21_021E5CF8: @ 0x021E5CF8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	cmp r4, #1
	bne _021E5D08
	movs r4, #3
_021E5D08:
	adds r0, r6, #0
	bl FUN_02021E74
	ldr r0, [r5, #0xc]
	cmp r0, r7
	beq _021E5D20
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov21_021E5D90
	str r7, [r5, #0xc]
_021E5D20:
	cmp r4, #3
	bgt _021E5D34
	cmp r4, #0
	blt _021E5D8E
	beq _021E5D3A
	cmp r4, #2
	beq _021E5D64
	cmp r4, #3
	beq _021E5D7A
	pop {r3, r4, r5, r6, r7, pc}
_021E5D34:
	cmp r4, #0x64
	beq _021E5D7A
	pop {r3, r4, r5, r6, r7, pc}
_021E5D3A:
	cmp r7, #1
	bne _021E5D4A
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov21_021E5D90
	b _021E5D54
_021E5D4A:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov21_021E5D90
_021E5D54:
	ldr r1, [r5, #0x14]
	adds r0, r6, #0
	subs r1, r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_02021E50
	pop {r3, r4, r5, r6, r7, pc}
_021E5D64:
	ldr r1, [r5, #0x14]
	adds r0, r6, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_02021E50
	adds r0, r6, #0
	movs r1, #0
	bl FUN_02021CE4
	pop {r3, r4, r5, r6, r7, pc}
_021E5D7A:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov21_021E5D90
	movs r1, #2
	adds r0, r6, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
_021E5D8E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E5CF8

	thumb_func_start ov21_021E5D90
ov21_021E5D90: @ 0x021E5D90
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	bl FUN_02021E74
	adds r6, r0, #0
	cmp r7, #1
	ldr r1, [r4, #8]
	bne _021E5DC6
	ldr r0, [r4]
	cmp r1, r0
	bne _021E5DE6
	ldr r1, [r4, #4]
	adds r0, r5, #0
	bl FUN_02021D6C
	ldr r0, [r4, #4]
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	subs r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_02021E50
	pop {r3, r4, r5, r6, r7, pc}
_021E5DC6:
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _021E5DE6
	ldr r1, [r4]
	adds r0, r5, #0
	bl FUN_02021D6C
	ldr r0, [r4]
	str r0, [r4, #8]
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	subs r1, r1, r6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_02021E50
_021E5DE6:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E5D90

	thumb_func_start ov21_021E5DE8
ov21_021E5DE8: @ 0x021E5DE8
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #1
	str r0, [r4, #0x2c]
	ldr r0, _021E5E14 @ =0x000001FF
	lsls r1, r2, #0x10
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r2, r3, #0
	movs r0, #0xd
	lsrs r1, r1, #0x10
	movs r3, #0x7f
	bl FUN_020059D0
	adds r0, r4, #0
	bl ov21_021E5F00
	add sp, #8
	pop {r4, pc}
	nop
_021E5E14: .4byte 0x000001FF
	thumb_func_end ov21_021E5DE8

	thumb_func_start ov21_021E5E18
ov21_021E5E18: @ 0x021E5E18
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl FUN_0200592C
	movs r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ov21_021E5E18

	thumb_func_start ov21_021E5E28
ov21_021E5E28: @ 0x021E5E28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #1
	bne _021E5E38
	movs r0, #0
	bl FUN_02004EEC
_021E5E38:
	ldr r0, [r4, #0x50]
	cmp r0, #2
	bne _021E5E42
	bl FUN_02004F44
_021E5E42:
	movs r0, #0
	str r0, [r4, #0x50]
	pop {r4, pc}
	thumb_func_end ov21_021E5E28

	thumb_func_start ov21_021E5E48
ov21_021E5E48: @ 0x021E5E48
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r6, r0, #0
	bl FUN_0200598C
	cmp r0, #0
	bne _021E5E74
	ldr r0, [r5, #0x68]
	subs r0, r0, #1
	str r0, [r5, #0x68]
	bne _021E5E74
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E5DE8
	movs r0, #0xa
	str r0, [r5, #0x68]
_021E5E74:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E5E48

	thumb_func_start ov21_021E5E78
ov21_021E5E78: @ 0x021E5E78
	str r1, [r0, #0x64]
	movs r1, #0xa
	str r1, [r0, #0x68]
	bx lr
	thumb_func_end ov21_021E5E78

	thumb_func_start ov21_021E5E80
ov21_021E5E80: @ 0x021E5E80
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	ldr r0, [r1]
	adds r2, r4, #0
	movs r1, #0x14
	adds r2, #0x6c
	bl ov21_021D27E0
	str r0, [r4, #0x68]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5E80

	thumb_func_start ov21_021E5E98
ov21_021E5E98: @ 0x021E5E98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x6c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5E98

	thumb_func_start ov21_021E5EAC
ov21_021E5EAC: @ 0x021E5EAC
	push {r3, lr}
	adds r2, r0, #0
	ldr r2, [r2, #0x6c]
	movs r0, #0x1f
	ldr r2, [r2, #0xc]
	movs r1, #0xe0
	movs r3, #0x20
	bl FUN_0201DC68
	pop {r3, pc}
	thumb_func_end ov21_021E5EAC

	thumb_func_start ov21_021E5EC0
ov21_021E5EC0: @ 0x021E5EC0
	push {r3, lr}
	adds r2, r0, #0
	ldr r2, [r2, #0x6c]
	movs r0, #0x1f
	ldr r2, [r2, #0xc]
	movs r1, #0xe0
	adds r2, #0x20
	movs r3, #0x20
	bl FUN_0201DC68
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E5EC0

	thumb_func_start ov21_021E5ED8
ov21_021E5ED8: @ 0x021E5ED8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021E5EF0
	cmp r4, #0
	bne _021E5EEC
	adds r0, r5, #0
	bl ov21_021E5EF4
_021E5EEC:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E5ED8

	thumb_func_start ov21_021E5EF0
ov21_021E5EF0: @ 0x021E5EF0
	str r1, [r0, #0x48]
	bx lr
	thumb_func_end ov21_021E5EF0

	thumb_func_start ov21_021E5EF4
ov21_021E5EF4: @ 0x021E5EF4
	movs r1, #0
	str r1, [r0, #0x3c]
	str r1, [r0, #0x40]
	str r1, [r0, #0x44]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E5EF4

	thumb_func_start ov21_021E5F00
ov21_021E5F00: @ 0x021E5F00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _021E5F20
	ldr r0, [r4, #0x3c]
	bl ov21_021E5FF4
	ldr r1, _021E5F24 @ =0x0000FFFF
	ldr r2, [r4, #0x40]
	movs r0, #1
	bl FUN_02004F94
	ldr r0, [r4, #0x44]
	bl ov21_021E5F28
_021E5F20:
	pop {r4, pc}
	nop
_021E5F24: .4byte 0x0000FFFF
	thumb_func_end ov21_021E5F00

	thumb_func_start ov21_021E5F28
ov21_021E5F28: @ 0x021E5F28
	ldr r3, _021E5F34 @ =FUN_02004A54
	adds r1, r0, #0
	movs r0, #8
	movs r2, #0
	bx r3
	nop
_021E5F34: .4byte FUN_02004A54
	thumb_func_end ov21_021E5F28

	thumb_func_start ov21_021E5F38
ov21_021E5F38: @ 0x021E5F38
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r2, [r4, #0x48]
	ldr r1, [r5, #0x70]
	cmp r2, r1
	beq _021E5F58
	cmp r2, #1
	bne _021E5F50
	bl ov21_021E5EAC
	b _021E5F54
_021E5F50:
	bl ov21_021E5EC0
_021E5F54:
	ldr r0, [r4, #0x48]
	str r0, [r5, #0x70]
_021E5F58:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E5F38

	thumb_func_start ov21_021E5F5C
ov21_021E5F5C: @ 0x021E5F5C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r6, r0, #0
	ldr r0, _021E5FCC @ =0x021BF67C
	movs r1, #1
	ldr r0, [r0, #0x48]
	tst r0, r1
	beq _021E5FB0
	str r1, [r5, #0x28]
	movs r0, #0
	str r0, [r5, #0x18]
	ldr r1, [r5, #0x64]
	cmp r1, #0
	bne _021E5F96
	ldr r1, [r5, #0x2c]
	cmp r1, #1
	bne _021E5F8A
	bl FUN_0200592C
_021E5F8A:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E5DE8
	pop {r4, r5, r6, pc}
_021E5F96:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	bne _021E5FA8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E5DE8
	pop {r4, r5, r6, pc}
_021E5FA8:
	adds r0, r5, #0
	bl ov21_021E5E18
	pop {r4, r5, r6, pc}
_021E5FB0:
	ldr r0, [r5, #0x28]
	cmp r0, #1
	bne _021E5FBE
	movs r0, #2
	str r0, [r5, #0x28]
	str r0, [r5, #0x18]
	pop {r4, r5, r6, pc}
_021E5FBE:
	cmp r0, #2
	bne _021E5FC8
	movs r0, #0
	str r0, [r5, #0x28]
	str r1, [r5, #0x18]
_021E5FC8:
	pop {r4, r5, r6, pc}
	nop
_021E5FCC: .4byte 0x021BF67C
	thumb_func_end ov21_021E5F5C

	thumb_func_start ov21_021E5FD0
ov21_021E5FD0: @ 0x021E5FD0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [r0]
	ldr r0, [r1, #8]
	bl ov21_021E33BC
	cmp r0, #1
	bne _021E5FEE
	movs r3, #0x18
	adds r0, r4, #0
	movs r1, #0xb4
	movs r2, #0x83
	str r3, [sp]
	bl ov21_021D2574
_021E5FEE:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E5FD0

	thumb_func_start ov21_021E5FF4
ov21_021E5FF4: @ 0x021E5FF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _021E6010 @ =0x0000FFFF
	movs r0, #1
	adds r2, r4, #0
	bl FUN_02004F68
	adds r4, #0x14
	ldr r1, _021E6010 @ =0x0000FFFF
	movs r0, #8
	adds r2, r4, #0
	bl FUN_02004F68
	pop {r4, pc}
	.align 2, 0
_021E6010: .4byte 0x0000FFFF
	thumb_func_end ov21_021E5FF4

	thumb_func_start ov21_021E6014
ov21_021E6014: @ 0x021E6014
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021E608C
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E60D8
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E6100
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E6130
	str r0, [r5, #0x24]
	ldr r0, _021E605C @ =ov21_021E6134
	str r0, [r5, #8]
	ldr r0, _021E6060 @ =ov21_021E6158
	str r0, [r5, #0xc]
	ldr r0, _021E6064 @ =ov21_021E6168
	str r0, [r5, #0x10]
	ldr r0, _021E6068 @ =ov21_021E617C
	str r0, [r5, #0x14]
	ldr r0, _021E606C @ =ov21_021E6200
	str r0, [r5, #0x18]
	ldr r0, _021E6070 @ =ov21_021E6204
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E605C: .4byte ov21_021E6134
_021E6060: .4byte ov21_021E6158
_021E6064: .4byte ov21_021E6168
_021E6068: .4byte ov21_021E617C
_021E606C: .4byte ov21_021E6200
_021E6070: .4byte ov21_021E6204
	thumb_func_end ov21_021E6014

	thumb_func_start ov21_021E6074
ov21_021E6074: @ 0x021E6074
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E6104
	ldr r0, [r4, #4]
	bl ov21_021E6118
	ldr r0, [r4, #0x20]
	bl ov21_021E612C
	pop {r4, pc}
	thumb_func_end ov21_021E6074

	thumb_func_start ov21_021E608C
ov21_021E608C: @ 0x021E608C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E609E
	bl FUN_02022974
_021E609E:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	adds r0, r5, #0
	bl ov21_021D138C
	str r0, [r4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	str r0, [r4, #8]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E608C

	thumb_func_start ov21_021E60D8
ov21_021E60D8: @ 0x021E60D8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E60EA
	bl FUN_02022974
_021E60EA:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E60D8

	thumb_func_start ov21_021E6100
ov21_021E6100: @ 0x021E6100
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E6100

	thumb_func_start ov21_021E6104
ov21_021E6104: @ 0x021E6104
	push {r4, lr}
	adds r4, r0, #0
	bne _021E610E
	bl FUN_02022974
_021E610E:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E6104

	thumb_func_start ov21_021E6118
ov21_021E6118: @ 0x021E6118
	push {r4, lr}
	adds r4, r0, #0
	bne _021E6122
	bl FUN_02022974
_021E6122:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E6118

	thumb_func_start ov21_021E612C
ov21_021E612C: @ 0x021E612C
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E612C

	thumb_func_start ov21_021E6130
ov21_021E6130: @ 0x021E6130
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E6130

	thumb_func_start ov21_021E6134
ov21_021E6134: @ 0x021E6134
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E6148
	bl FUN_02022974
_021E6148:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	str r4, [r5, #8]
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E6134

	thumb_func_start ov21_021E6158
ov21_021E6158: @ 0x021E6158
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021E6162
	movs r0, #1
	bx lr
_021E6162:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E6158

	thumb_func_start ov21_021E6168
ov21_021E6168: @ 0x021E6168
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E6168

	thumb_func_start ov21_021E617C
ov21_021E617C: @ 0x021E617C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r3, [r3, #8]
	ldr r5, [r4, #8]
	cmp r0, #3
	bhi _021E61FA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E619A: @ jump table
	.2byte _021E61A2 - _021E619A - 2 @ case 0
	.2byte _021E61C0 - _021E619A - 2 @ case 1
	.2byte _021E61E0 - _021E619A - 2 @ case 2
	.2byte _021E61F6 - _021E619A - 2 @ case 3
_021E61A2:
	ldr r0, [r4, #4]
	movs r1, #0x14
	bl FUN_02018144
	str r0, [r4, #8]
	movs r2, #0x14
	movs r1, #0
_021E61B0:
	strb r1, [r0]
	adds r0, r0, #1
	subs r2, r2, #1
	bne _021E61B0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E61FA
_021E61C0:
	ldr r0, [r4, #4]
	adds r1, r6, #0
	str r0, [sp]
	adds r0, r5, #0
	bl ov21_021E6338
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E628C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E61FA
_021E61E0:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #1
	bl ov21_021E62F8
	cmp r0, #0
	beq _021E61FA
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E61FA
_021E61F6:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E61FA:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E617C

	thumb_func_start ov21_021E6200
ov21_021E6200: @ 0x021E6200
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E6200

	thumb_func_start ov21_021E6204
ov21_021E6204: @ 0x021E6204
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E626E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E621E: @ jump table
	.2byte _021E6228 - _021E621E - 2 @ case 0
	.2byte _021E6238 - _021E621E - 2 @ case 1
	.2byte _021E624C - _021E621E - 2 @ case 2
	.2byte _021E625A - _021E621E - 2 @ case 3
	.2byte _021E626A - _021E621E - 2 @ case 4
_021E6228:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E628C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E626E
_021E6238:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E62F8
	cmp r0, #0
	beq _021E626E
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E626E
_021E624C:
	adds r1, r3, #0
	bl ov21_021E638C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E626E
_021E625A:
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E626E
_021E626A:
	movs r0, #1
	pop {r4, pc}
_021E626E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E6204

	thumb_func_start ov21_021E6274
ov21_021E6274: @ 0x021E6274
	ldr r3, _021E627C @ =FUN_02021FE0
	ldr r0, [r0, #0x10]
	movs r1, #1
	bx r3
	.align 2, 0
_021E627C: .4byte FUN_02021FE0
	thumb_func_end ov21_021E6274

	thumb_func_start ov21_021E6280
ov21_021E6280: @ 0x021E6280
	ldr r3, _021E6288 @ =FUN_02021FE0
	ldr r0, [r0, #0x10]
	movs r1, #0
	bx r3
	.align 2, 0
_021E6288: .4byte FUN_02021FE0
	thumb_func_end ov21_021E6280

	thumb_func_start ov21_021E628C
ov21_021E628C: @ 0x021E628C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E6274
	ldr r0, [r4, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E62F4
	cmp r6, #0
	beq _021E62D0
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E62D0:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2a
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021E62F4:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E628C

	thumb_func_start ov21_021E62F8
ov21_021E62F8: @ 0x021E62F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r2, #8]
	adds r5, r1, #0
	adds r4, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5]
	beq _021E6318
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	b _021E6322
_021E6318:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
_021E6322:
	cmp r0, #0
	beq _021E6334
	cmp r4, #0
	beq _021E6330
	adds r0, r6, #0
	bl ov21_021E6280
_021E6330:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E6334:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E62F8

	thumb_func_start ov21_021E6338
ov21_021E6338: @ 0x021E6338
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	adds r7, r2, #0
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov21_021E63C0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E6600
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov21_021E66B0
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov21_021E6428
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021E6518
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021E65F8
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov21_021E67C8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E6338

	thumb_func_start ov21_021E638C
ov21_021E638C: @ 0x021E638C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021E65FC
	adds r0, r5, #0
	bl ov21_021E65EC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E64D4
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	adds r0, r4, #0
	bl ov21_021E6844
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E638C

	thumb_func_start ov21_021E63C0
ov21_021E63C0: @ 0x021E63C0
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r5, r2, #0
	str r5, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x21
	movs r3, #3
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4]
	movs r1, #0x4a
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E63C0

	thumb_func_start ov21_021E6428
ov21_021E6428: @ 0x021E6428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E64C4 @ =0x00001BB5
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	adds r1, r7, #0
	movs r2, #0x5d
	bl FUN_02009A4C
	str r0, [r5]
	bl FUN_0200A3DC
	ldr r0, [r5]
	bl FUN_02009D4C
	ldr r0, _021E64C8 @ =0x00001B66
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0xe
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #4]
	bl FUN_0200A640
	ldr r0, [r5, #4]
	bl FUN_02009D4C
	ldr r0, _021E64CC @ =0x00001BB3
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x5b
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #8]
	ldr r0, _021E64D0 @ =0x00001BB4
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x5c
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E64C4: .4byte 0x00001BB5
_021E64C8: .4byte 0x00001B66
_021E64CC: .4byte 0x00001BB3
_021E64D0: .4byte 0x00001BB4
	thumb_func_end ov21_021E6428

	thumb_func_start ov21_021E64D4
ov21_021E64D4: @ 0x021E64D4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #4]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #4]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0xc]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E64D4

	thumb_func_start ov21_021E6518
ov21_021E6518: @ 0x021E6518
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	adds r6, r2, #0
	adds r5, r0, #0
	ldr r0, [r6, #4]
	adds r7, r3, #0
	ldr r4, [r1]
	bl ov21_021D37BC
	ldr r3, _021E65E4 @ =0x00001BB4
	str r0, [sp, #0x2c]
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	adds r2, r3, #0
	add r0, sp, #0x50
	subs r2, #0x4e
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x30]
	add r0, sp, #0x50
	str r0, [sp, #0x34]
	movs r0, #0x1f
	str r0, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x48]
	str r7, [sp, #0x4c]
	ldr r1, [r6, #4]
	ldr r0, _021E65E8 @ =0x00001748
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x2c]
	bl FUN_02098848
	adds r4, r0, #0
	ldr r1, [r6, #4]
	ldr r0, _021E65E8 @ =0x00001748
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x2c]
	bl FUN_02098888
	adds r7, r0, #0
	movs r0, #0x2a
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	adds r0, r4, #0
	adds r0, #0x58
	lsls r0, r0, #0xc
	str r0, [sp, #0x3c]
	add r0, sp, #0x30
	bl FUN_02021B90
	str r0, [r5, #0x10]
	ldr r0, [r6, #4]
	bl ov21_021D3920
	cmp r0, #0
	ldr r0, [r5, #0x10]
	bne _021E65CA
	movs r1, #5
	bl FUN_02021D6C
	b _021E65D0
_021E65CA:
	movs r1, #6
	bl FUN_02021D6C
_021E65D0:
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl ov21_021E6860
	ldr r0, [r5, #0x10]
	adds r1, r7, #0
	bl ov21_021E688C
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E65E4: .4byte 0x00001BB4
_021E65E8: .4byte 0x00001748
	thumb_func_end ov21_021E6518

	thumb_func_start ov21_021E65EC
ov21_021E65EC: @ 0x021E65EC
	ldr r3, _021E65F4 @ =FUN_02021BD4
	ldr r0, [r0, #0x10]
	bx r3
	nop
_021E65F4: .4byte FUN_02021BD4
	thumb_func_end ov21_021E65EC

	thumb_func_start ov21_021E65F8
ov21_021E65F8: @ 0x021E65F8
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E65F8

	thumb_func_start ov21_021E65FC
ov21_021E65FC: @ 0x021E65FC
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E65FC

	thumb_func_start ov21_021E6600
ov21_021E6600: @ 0x021E6600
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x20
	adds r6, r1, #0
	bl FUN_02023790
	adds r4, r0, #0
	ldr r2, _021E66A8 @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	movs r1, #0x2b
	adds r2, r4, #0
	adds r6, r0, #0
	bl FUN_0200B1B8
	movs r0, #0
	movs r3, #1
	adds r1, r4, #0
	adds r2, r0, #0
	lsls r3, r3, #8
	bl FUN_02002EEC
	adds r3, r0, #0
	movs r0, #0x18
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E66AC @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	bl FUN_0201D78C
	adds r0, r6, #0
	movs r1, #9
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0xa8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E66AC @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	movs r3, #0x20
	bl FUN_0201D78C
	adds r0, r6, #0
	movs r1, #9
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0xa8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E66AC @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	movs r3, #0x98
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E66A8: .4byte 0x000002B9
_021E66AC: .4byte 0x00020100
	thumb_func_end ov21_021E6600

	thumb_func_start ov21_021E66B0
ov21_021E66B0: @ 0x021E66B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x20
	adds r1, r7, #0
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D37BC
	adds r1, r7, #0
	str r0, [sp, #0x10]
	bl FUN_0200B32C
	str r0, [sp, #0x14]
	bl FUN_020989D0
	adds r2, r0, #0
	movs r0, #0
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	str r0, [sp, #0x18]
	movs r0, #0x98
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E67C0 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	ldr r2, [sp, #0x14]
	adds r0, r0, #4
	movs r3, #0x1a
	bl FUN_0201D78C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x6e
	subs r3, r1, r0
	movs r0, #0xa8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E67C0 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	bl FUN_0200B190
	ldr r2, _021E67C4 @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	adds r7, r0, #0
	ldr r0, [r6, #4]
	bl ov21_021D3914
	adds r2, r0, #0
	movs r0, #0x98
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E67C0 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	movs r3, #0x92
	adds r0, r0, #4
	bl FUN_0201D78C
	ldr r0, [r6, #4]
	bl ov21_021D3920
	cmp r0, #0
	bne _021E6780
	adds r0, r7, #0
	movs r1, #0x5f
	adds r2, r4, #0
	bl FUN_0200B1B8
	b _021E678A
_021E6780:
	adds r0, r7, #0
	movs r1, #0x60
	adds r2, r4, #0
	bl FUN_0200B1B8
_021E678A:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe6
	subs r3, r1, r0
	movs r0, #0xa8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E67C0 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E67C0: .4byte 0x00020100
_021E67C4: .4byte 0x000002B9
	thumb_func_end ov21_021E66B0

	thumb_func_start ov21_021E67C8
ov21_021E67C8: @ 0x021E67C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl ov21_021D2170
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl ov21_021D37BC
	adds r7, r0, #0
	ldr r1, [r4, #4]
	ldr r0, _021E6840 @ =0x00001748
	ldr r0, [r1, r0]
	adds r1, r7, #0
	bl FUN_02098868
	str r0, [sp, #8]
	ldr r1, [r4, #4]
	ldr r0, _021E6840 @ =0x00001748
	ldr r0, [r1, r0]
	adds r1, r7, #0
	bl FUN_020988A8
	str r0, [sp, #0xc]
	movs r0, #0x58
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r2, r7, #0
	adds r0, #0x58
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r4, #4]
	movs r3, #2
	bl ov21_021D1890
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02007DEC
	movs r1, #0xf
	movs r3, #0
	adds r0, r6, #0
	adds r2, r1, #0
	str r3, [sp]
	bl FUN_020086FC
	ldr r1, [sp, #8]
	adds r0, r6, #0
	bl ov21_021E687C
	ldr r1, [sp, #0xc]
	adds r0, r6, #0
	bl ov21_021E68B0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E6840: .4byte 0x00001748
	thumb_func_end ov21_021E67C8

	thumb_func_start ov21_021E6844
ov21_021E6844: @ 0x021E6844
	push {r4, lr}
	ldr r0, [r0]
	bl ov21_021D2170
	adds r4, r0, #0
	movs r1, #6
	movs r2, #1
	bl FUN_02007DEC
	adds r0, r4, #0
	bl FUN_02008780
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E6844

	thumb_func_start ov21_021E6860
ov21_021E6860: @ 0x021E6860
	push {lr}
	sub sp, #0xc
	adds r1, #0x58
	movs r2, #0x2a
	lsls r1, r1, #0xc
	lsls r2, r2, #0xe
	str r1, [sp, #4]
	add r1, sp, #0
	str r2, [sp]
	bl FUN_02021C50
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov21_021E6860

	thumb_func_start ov21_021E687C
ov21_021E687C: @ 0x021E687C
	ldr r3, _021E6888 @ =FUN_02007DEC
	adds r2, r1, #0
	movs r1, #1
	adds r2, #0x58
	bx r3
	nop
_021E6888: .4byte FUN_02007DEC
	thumb_func_end ov21_021E687C

	thumb_func_start ov21_021E688C
ov21_021E688C: @ 0x021E688C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #1
	lsls r0, r0, #0x14
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	add r1, sp, #0
	movs r2, #2
	bl FUN_02021C80
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E688C

	thumb_func_start ov21_021E68B0
ov21_021E68B0: @ 0x021E68B0
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #1
	lsls r0, r0, #0x14
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	asrs r2, r0, #0x1f
	lsls r3, r2, #0x14
	lsrs r1, r0, #0xc
	lsls r2, r0, #0x14
	movs r0, #2
	orrs r3, r1
	movs r1, #0
	lsls r0, r0, #0xa
	adds r2, r2, r0
	adcs r3, r1
	lsls r0, r3, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	lsls r0, r1, #4
	asrs r5, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xc
	adds r2, r5, #0
	bl FUN_02007DEC
	adds r0, r4, #0
	movs r1, #0xd
	adds r2, r5, #0
	bl FUN_02007DEC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E68B0

	thumb_func_start ov21_021E68F4
ov21_021E68F4: @ 0x021E68F4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021E696C
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E69B0
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E69D8
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E6A68
	str r0, [r5, #0x24]
	ldr r0, _021E693C @ =ov21_021E6A6C
	str r0, [r5, #8]
	ldr r0, _021E6940 @ =ov21_021E6AB8
	str r0, [r5, #0xc]
	ldr r0, _021E6944 @ =ov21_021E6B0C
	str r0, [r5, #0x10]
	ldr r0, _021E6948 @ =ov21_021E6B20
	str r0, [r5, #0x14]
	ldr r0, _021E694C @ =ov21_021E6BA8
	str r0, [r5, #0x18]
	ldr r0, _021E6950 @ =ov21_021E6BD8
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E693C: .4byte ov21_021E6A6C
_021E6940: .4byte ov21_021E6AB8
_021E6944: .4byte ov21_021E6B0C
_021E6948: .4byte ov21_021E6B20
_021E694C: .4byte ov21_021E6BA8
_021E6950: .4byte ov21_021E6BD8
	thumb_func_end ov21_021E68F4

	thumb_func_start ov21_021E6954
ov21_021E6954: @ 0x021E6954
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E6A20
	ldr r0, [r4, #4]
	bl ov21_021E6A34
	ldr r0, [r4, #0x20]
	bl ov21_021E6A48
	pop {r4, pc}
	thumb_func_end ov21_021E6954

	thumb_func_start ov21_021E696C
ov21_021E696C: @ 0x021E696C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x10
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E697E
	bl FUN_02022974
_021E697E:
	adds r2, r4, #0
	movs r1, #0x10
	movs r0, #0
_021E6984:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E6984
	adds r0, r5, #0
	bl ov21_021D13A0
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #3
	bl ov21_021D1430
	str r0, [r4, #0xc]
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #8]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E696C

	thumb_func_start ov21_021E69B0
ov21_021E69B0: @ 0x021E69B0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E69C2
	bl FUN_02022974
_021E69C2:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E69B0

	thumb_func_start ov21_021E69D8
ov21_021E69D8: @ 0x021E69D8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov21_021E6A68
	adds r7, r0, #0
	movs r1, #0x14
	muls r7, r1, r7
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E69F8
	bl FUN_02022974
_021E69F8:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r7, #0
	blx FUN_020D5124
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl ov21_021D49E4
	adds r1, r4, #0
	adds r0, r5, #0
	adds r1, #0x14
	adds r2, r6, #0
	movs r3, #2
	bl ov21_021D4A3C
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E69D8

	thumb_func_start ov21_021E6A20
ov21_021E6A20: @ 0x021E6A20
	push {r4, lr}
	adds r4, r0, #0
	bne _021E6A2A
	bl FUN_02022974
_021E6A2A:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E6A20

	thumb_func_start ov21_021E6A34
ov21_021E6A34: @ 0x021E6A34
	push {r4, lr}
	adds r4, r0, #0
	bne _021E6A3E
	bl FUN_02022974
_021E6A3E:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E6A34

	thumb_func_start ov21_021E6A48
ov21_021E6A48: @ 0x021E6A48
	push {r4, lr}
	adds r4, r0, #0
	bne _021E6A52
	bl FUN_02022974
_021E6A52:
	adds r0, r4, #0
	bl ov21_021D4660
	adds r0, r4, #0
	adds r0, #0x14
	bl ov21_021D4660
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov21_021E6A48

	thumb_func_start ov21_021E6A68
ov21_021E6A68: @ 0x021E6A68
	movs r0, #2
	bx lr
	thumb_func_end ov21_021E6A68

	thumb_func_start ov21_021E6A6C
ov21_021E6A6C: @ 0x021E6A6C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	movs r1, #0x18
	bl FUN_02018144
	adds r6, r0, #0
	adds r2, r6, #0
	movs r1, #0x18
	movs r0, #0
_021E6A82:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E6A82
	movs r1, #0
	adds r2, r6, #0
	movs r0, #4
_021E6A90:
	adds r1, r1, #1
	str r0, [r2, #0x10]
	adds r2, r2, #4
	cmp r1, #2
	blt _021E6A90
	movs r0, #0
	str r0, [r4, #4]
	ldr r2, [r5, #4]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov21_021E6D58
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov21_021E6DBC
	str r6, [r5, #8]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E6A6C

	thumb_func_start ov21_021E6AB8
ov21_021E6AB8: @ 0x021E6AB8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E6AC8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E6AC8:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E6AD2
	movs r0, #0
	pop {r3, r4, r5, pc}
_021E6AD2:
	ldr r0, [r5, #0xc]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E6B06
	adds r0, r4, #0
	bl ov21_021E6DAC
	ldr r0, [r5, #0xc]
	bl ov21_021E33BC
	cmp r0, #0
	beq _021E6AFE
	ldr r0, [r5, #8]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E6AFE
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E72E8
_021E6AFE:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E6DBC
_021E6B06:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E6AB8

	thumb_func_start ov21_021E6B0C
ov21_021E6B0C: @ 0x021E6B0C
	push {r4, lr}
	ldr r4, [r0, #8]
	adds r0, r4, #0
	bl ov21_021E6DEC
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021E6B0C

	thumb_func_start ov21_021E6B20
ov21_021E6B20: @ 0x021E6B20
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E6BA4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E6B3C: @ jump table
	.2byte _021E6B44 - _021E6B3C - 2 @ case 0
	.2byte _021E6B5E - _021E6B3C - 2 @ case 1
	.2byte _021E6B7C - _021E6B3C - 2 @ case 2
	.2byte _021E6B92 - _021E6B3C - 2 @ case 3
_021E6B44:
	ldr r0, [r4, #4]
	movs r1, #0x40
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E6BA4
_021E6B5E:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E6E64
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E6CB0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E6BA4
_021E6B7C:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021E6D1C
	cmp r0, #0
	beq _021E6BA4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E6BA4
_021E6B92:
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0
	bl ov21_021D25AC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6BA4:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E6B20

	thumb_func_start ov21_021E6BA8
ov21_021E6BA8: @ 0x021E6BA8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r3, #8]
	adds r4, r2, #0
	str r0, [sp]
	adds r5, r1, #0
	ldr r0, [r4, #0xc]
	ldr r7, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E6BD4
	ldr r2, [sp]
	ldr r3, [r5, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021E728C
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov21_021E732C
_021E6BD4:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E6BA8

	thumb_func_start ov21_021E6BD8
ov21_021E6BD8: @ 0x021E6BD8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #4
	bhi _021E6C5A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E6BF4: @ jump table
	.2byte _021E6BFE - _021E6BF4 - 2 @ case 0
	.2byte _021E6C20 - _021E6BF4 - 2 @ case 1
	.2byte _021E6C36 - _021E6BF4 - 2 @ case 2
	.2byte _021E6C48 - _021E6BF4 - 2 @ case 3
	.2byte _021E6C56 - _021E6BF4 - 2 @ case 4
_021E6BFE:
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	bl ov21_021D25AC
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov21_021E6CB0
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E6C5A
_021E6C20:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl ov21_021E6D1C
	cmp r0, #0
	beq _021E6C5A
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E6C5A
_021E6C36:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E6E94
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E6C5A
_021E6C48:
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E6C5A
_021E6C56:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E6C5A:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E6BD8

	thumb_func_start ov21_021E6C60
ov21_021E6C60: @ 0x021E6C60
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #1
	adds r5, r0, #0
	movs r4, #0
	adds r7, r6, #0
_021E6C6A:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_02021FE0
	ldr r0, [r5, #8]
	adds r1, r7, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E6C6A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E6C60

	thumb_func_start ov21_021E6C88
ov21_021E6C88: @ 0x021E6C88
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
	adds r7, r4, #0
_021E6C92:
	ldr r0, [r5]
	adds r1, r6, #0
	bl FUN_02021FE0
	ldr r0, [r5, #8]
	adds r1, r7, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E6C92
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E6C88

	thumb_func_start ov21_021E6CB0
ov21_021E6CB0: @ 0x021E6CB0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E6C60
	ldr r0, [r4, #0xc]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E6D18
	cmp r6, #0
	beq _021E6CF4
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0x19
	ldr r2, [r5]
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E6CF4:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0x19
	ldr r3, [r5]
	lsls r0, r0, #4
	adds r0, r3, r0
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021E6D18:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E6CB0

	thumb_func_start ov21_021E6D1C
ov21_021E6D1C: @ 0x021E6D1C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r2, #0xc]
	adds r5, r1, #0
	adds r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E6D3C
	movs r0, #0x19
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov21_021D2424
	b _021E6D42
_021E6D3C:
	movs r0, #2
	bl FUN_0200AC1C
_021E6D42:
	cmp r0, #0
	beq _021E6D54
	cmp r4, #0
	beq _021E6D50
	adds r0, r6, #0
	bl ov21_021E6C88
_021E6D50:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E6D54:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E6D1C

	thumb_func_start ov21_021E6D58
ov21_021E6D58: @ 0x021E6D58
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #8
	bl FUN_02018144
	str r0, [r5, #4]
	movs r0, #0x80
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x40
	movs r2, #0xb0
	movs r3, #8
	bl ov21_021D154C
	movs r0, #0xf8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x40
	adds r0, r0, #4
	movs r2, #0xb0
	movs r3, #0x80
	bl ov21_021D154C
	str r4, [r5, #8]
	str r5, [r5, #0xc]
	str r6, [sp]
	adds r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E6DA8 @ =ov21_021E6E04
	movs r1, #2
	adds r3, #8
	bl FUN_02023FCC
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021E6DA8: .4byte ov21_021E6E04
	thumb_func_end ov21_021E6D58

	thumb_func_start ov21_021E6DAC
ov21_021E6DAC: @ 0x021E6DAC
	movs r2, #0
	movs r1, #3
_021E6DB0:
	adds r2, r2, #1
	str r1, [r0, #0x10]
	adds r0, r0, #4
	cmp r2, #2
	blt _021E6DB0
	bx lr
	thumb_func_end ov21_021E6DAC

	thumb_func_start ov21_021E6DBC
ov21_021E6DBC: @ 0x021E6DBC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	bl FUN_0202404C
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021E6DD4
	cmp r0, #1
	beq _021E6DE0
	pop {r3, r4, r5, pc}
_021E6DD4:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	beq _021E6DEA
	movs r0, #1
	str r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_021E6DE0:
	ldr r0, [r4, #0x14]
	cmp r0, #2
	beq _021E6DEA
	movs r0, #1
	str r0, [r4, #0x14]
_021E6DEA:
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E6DBC

	thumb_func_start ov21_021E6DEC
ov21_021E6DEC: @ 0x021E6DEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02024034
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E6DEC

	thumb_func_start ov21_021E6E04
ov21_021E6E04: @ 0x021E6E04
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r2]
	ldr r2, [r2, #4]
	lsls r0, r5, #2
	adds r0, r2, r0
	str r1, [r0, #0x10]
	cmp r1, #2
	bne _021E6E5E
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl ov21_021E33B4
	cmp r5, #0
	beq _021E6E28
	cmp r5, #1
	beq _021E6E44
	pop {r3, r4, r5, pc}
_021E6E28:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E6E5E
	ldr r0, _021E6E60 @ =0x000005DD
	bl FUN_02005748
	movs r0, #0
	str r0, [r4, #4]
	ldr r2, [r4]
	movs r0, #1
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
	pop {r3, r4, r5, pc}
_021E6E44:
	ldr r0, [r4, #4]
	cmp r0, #1
	beq _021E6E5E
	ldr r0, _021E6E60 @ =0x000005DD
	bl FUN_02005748
	movs r0, #1
	str r0, [r4, #4]
	ldr r2, [r4]
	movs r0, #2
	ldr r1, [r2]
	orrs r0, r1
	str r0, [r2]
_021E6E5E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E6E60: .4byte 0x000005DD
	thumb_func_end ov21_021E6E04

	thumb_func_start ov21_021E6E64
ov21_021E6E64: @ 0x021E6E64
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E6EF0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E6F58
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E700C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E70D4
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E6E64

	thumb_func_start ov21_021E6E94
ov21_021E6E94: @ 0x021E6E94
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x20
	adds r6, r2, #0
	str r0, [sp]
	adds r4, r1, #0
	str r6, [sp, #4]
	ldr r0, [r4]
	movs r1, #9
	movs r2, #4
	movs r3, #0x80
	bl ov21_021D276C
	movs r0, #0x20
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r4]
	movs r1, #9
	movs r2, #4
	movs r3, #0xa0
	bl ov21_021D276C
	adds r0, r5, #0
	bl ov21_021E70BC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E71B8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E6FD8
	movs r4, #0
_021E6EDA:
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021E6EE4
	bl FUN_020181C4
_021E6EE4:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E6EDA
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E6E94

	thumb_func_start ov21_021E6EF0
ov21_021E6EF0: @ 0x021E6EF0
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x22
	movs r3, #6
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4]
	movs r1, #0x3d
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #6
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E6EF0

	thumb_func_start ov21_021E6F58
ov21_021E6F58: @ 0x021E6F58
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E6FCC @ =0x0000238E
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x66
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r5, #0x10]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x10]
	bl FUN_02009D4C
	ldr r0, _021E6FD0 @ =0x0000238C
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x64
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x18]
	ldr r0, _021E6FD4 @ =0x0000238D
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x65
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x1c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E6FCC: .4byte 0x0000238E
_021E6FD0: .4byte 0x0000238C
_021E6FD4: .4byte 0x0000238D
	thumb_func_end ov21_021E6F58

	thumb_func_start ov21_021E6FD8
ov21_021E6FD8: @ 0x021E6FD8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	ldr r4, [r1]
	bl FUN_0200A4E4
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E6FD8

	thumb_func_start ov21_021E700C
ov21_021E700C: @ 0x021E700C
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1]
	ldr r3, _021E70B4 @ =0x0000238D
	adds r5, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	adds r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, _021E70B8 @ =0x0000083F
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x1e
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x1f
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	movs r0, #0x11
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r0, #3
	lsls r1, r1, #0xe
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl FUN_02021B90
	movs r1, #1
	str r0, [r5]
	bl FUN_02021D6C
	movs r0, #0x2f
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r1, #0x1e
	movs r0, #3
	lsls r1, r1, #0xe
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	movs r1, #1
	str r0, [r5, #4]
	bl FUN_02021D6C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E70B4: .4byte 0x0000238D
_021E70B8: .4byte 0x0000083F
	thumb_func_end ov21_021E700C

	thumb_func_start ov21_021E70BC
ov21_021E70BC: @ 0x021E70BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E70C2:
	ldr r0, [r5]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E70C2
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E70BC

	thumb_func_start ov21_021E70D4
ov21_021E70D4: @ 0x021E70D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r2, #0
	ldr r4, [r1]
	cmp r0, #0
	bne _021E70E8
	bl FUN_02022974
_021E70E8:
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E71B0 @ =0x0000083F
	bl FUN_02009DC8
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #8]
	movs r1, #0
	bl FUN_0200A72C
	movs r1, #7
	mvns r1, r1
	str r1, [sp, #0x1c]
	movs r1, #2
	movs r2, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	str r6, [sp, #0x2c]
	bl FUN_0201FAB4
	adds r7, r0, #0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xc
	movs r2, #2
	bl ov21_021D4D6C
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E71B4 @ =0x000002B9
	adds r1, r6, #0
	movs r3, #0x2d
	bl ov21_021D4DAC
	lsrs r0, r0, #1
	rsbs r0, r0, #0
	str r6, [sp, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r5]
	str r0, [sp, #0x14]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #8]
	ldr r0, [r0]
	adds r1, r7, #4
	bl FUN_02012A60
	adds r0, r6, #0
	bl ov21_021D4DA0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xc
	movs r2, #2
	bl ov21_021D4D6C
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E71B4 @ =0x000002B9
	adds r1, r6, #0
	movs r3, #0x2e
	bl ov21_021D4DAC
	lsrs r0, r0, #1
	rsbs r0, r0, #0
	str r6, [sp, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	str r0, [sp, #0x14]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #0xc]
	ldr r0, [r0]
	adds r1, r7, #4
	bl FUN_02012A60
	adds r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E71B0: .4byte 0x0000083F
_021E71B4: .4byte 0x000002B9
	thumb_func_end ov21_021E70D4

	thumb_func_start ov21_021E71B8
ov21_021E71B8: @ 0x021E71B8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E71BE:
	ldr r0, [r5, #8]
	bl ov21_021D4D1C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _021E71BE
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E71B8

	thumb_func_start ov21_021E71D0
ov21_021E71D0: @ 0x021E71D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r1, #0
	adds r1, r3, #0
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x30]
	ldr r6, [sp, #0x40]
	movs r5, #0
	bl ov21_021D144C
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x38]
	bl ov21_021E727C
	ldr r0, [sp, #8]
	bl FUN_02021E74
	cmp r0, #3
	bhi _021E7242
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E720E: @ jump table
	.2byte _021E7216 - _021E720E - 2 @ case 0
	.2byte _021E7216 - _021E720E - 2 @ case 1
	.2byte _021E7226 - _021E720E - 2 @ case 2
	.2byte _021E7234 - _021E720E - 2 @ case 3
_021E7216:
	ldr r0, [r4]
	cmp r0, #0
	beq _021E7242
	movs r0, #0
	movs r5, #1
	movs r7, #9
	str r0, [r4]
	b _021E7242
_021E7226:
	ldr r0, [r4]
	cmp r0, #1
	beq _021E7242
	movs r5, #1
	movs r7, #0xa
	str r5, [r4]
	b _021E7242
_021E7234:
	ldr r0, [r4]
	cmp r0, #2
	beq _021E7242
	movs r0, #2
	movs r5, #1
	movs r7, #8
	str r0, [r4]
_021E7242:
	cmp r5, #0
	beq _021E7278
	ldr r0, [r6]
	cmp r0, #0
	beq _021E7250
	bl FUN_020181C4
_021E7250:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x34]
	ldr r0, [r0]
	adds r1, r7, #0
	add r2, sp, #0x10
	bl ov21_021D27E0
	str r0, [r6]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r2, [r2, #0xc]
	movs r0, #0x1f
	lsls r1, r1, #5
	movs r3, #0x20
	bl FUN_0201DC68
	cmp r0, #0
	bne _021E7278
	bl FUN_02022974
_021E7278:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E71D0

	thumb_func_start ov21_021E727C
ov21_021E727C: @ 0x021E727C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov21_021D1524
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021E727C

	thumb_func_start ov21_021E728C
ov21_021E728C: @ 0x021E728C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r0, #0
	adds r4, r7, #0
	adds r5, r7, #0
	str r1, [sp, #0x1c]
	str r2, [sp, #0x20]
	str r3, [sp, #0x24]
	movs r6, #0
	adds r4, #0x38
	adds r5, #0x30
_021E72A2:
	cmp r6, #0
	bne _021E72AA
	movs r1, #4
	b _021E72AC
_021E72AA:
	movs r1, #5
_021E72AC:
	movs r0, #7
	mvns r0, r0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x24]
	str r5, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #4
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	ldr r3, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	ldr r1, [r7]
	ldr r2, [r7, #8]
	ldr r3, [r3, #0x10]
	bl ov21_021E71D0
	ldr r0, [sp, #0x20]
	adds r6, r6, #1
	adds r0, r0, #4
	adds r4, r4, #4
	adds r5, r5, #4
	adds r7, r7, #4
	str r0, [sp, #0x20]
	cmp r6, #2
	blt _021E72A2
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E728C

	thumb_func_start ov21_021E72E8
ov21_021E72E8: @ 0x021E72E8
	push {r3, lr}
	ldr r2, _021E7324 @ =0x021BF67C
	ldr r3, [r2, #0x48]
	movs r2, #1
	tst r3, r2
	beq _021E7320
	ldr r3, [r1, #4]
	cmp r3, #1
	bne _021E730C
	movs r3, #0
	str r3, [r1, #4]
	ldr r3, [r1]
	ldr r1, [r3]
	orrs r1, r2
	str r1, [r3]
	movs r1, #2
	str r1, [r0, #0x10]
	b _021E731A
_021E730C:
	str r2, [r1, #4]
	ldr r3, [r1]
	movs r1, #2
	ldr r2, [r3]
	orrs r2, r1
	str r2, [r3]
	str r1, [r0, #0x14]
_021E731A:
	ldr r0, _021E7328 @ =0x000005DD
	bl FUN_02005748
_021E7320:
	pop {r3, pc}
	nop
_021E7324: .4byte 0x021BF67C
_021E7328: .4byte 0x000005DD
	thumb_func_end ov21_021E72E8

	thumb_func_start ov21_021E732C
ov21_021E732C: @ 0x021E732C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5, #0xc]
	bl ov21_021E33BC
	cmp r0, #1
	bne _021E7364
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _021E7354
	movs r0, #0x60
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0xbc
	movs r2, #0x78
	movs r3, #0x68
	bl ov21_021E7368
	pop {r3, r4, r5, pc}
_021E7354:
	movs r0, #0x60
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x44
	movs r2, #0x78
	movs r3, #0x68
	bl ov21_021E7368
_021E7364:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E732C

	thumb_func_start ov21_021E7368
ov21_021E7368: @ 0x021E7368
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r0, [r0]
	bl ov21_021D2574
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E7368

	thumb_func_start ov21_021E737C
ov21_021E737C: @ 0x021E737C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r7, #0
	bl ov21_021E73E8
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov21_021E7424
	str r4, [r5]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5, #0x20]
	bl ov21_021E749C
	str r0, [r5, #0x24]
	ldr r0, _021E73BC @ =ov21_021E74A0
	str r0, [r5, #8]
	ldr r0, _021E73C0 @ =ov21_021E750C
	str r0, [r5, #0xc]
	ldr r0, _021E73C4 @ =ov21_021E751C
	str r0, [r5, #0x10]
	ldr r0, _021E73C8 @ =ov21_021E7530
	str r0, [r5, #0x14]
	ldr r0, _021E73CC @ =ov21_021E75D4
	str r0, [r5, #0x18]
	ldr r0, _021E73D0 @ =ov21_021E7694
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E73BC: .4byte ov21_021E74A0
_021E73C0: .4byte ov21_021E750C
_021E73C4: .4byte ov21_021E751C
_021E73C8: .4byte ov21_021E7530
_021E73CC: .4byte ov21_021E75D4
_021E73D0: .4byte ov21_021E7694
	thumb_func_end ov21_021E737C

	thumb_func_start ov21_021E73D4
ov21_021E73D4: @ 0x021E73D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E7468
	ldr r0, [r4, #4]
	bl ov21_021E747C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E73D4

	thumb_func_start ov21_021E73E8
ov21_021E73E8: @ 0x021E73E8
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #8
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E73FA
	bl FUN_02022974
_021E73FA:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #5
	bl ov21_021D1410
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E73E8

	thumb_func_start ov21_021E7424
ov21_021E7424: @ 0x021E7424
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r1, #0x20
	adds r5, r0, #0
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E7438
	bl FUN_02022974
_021E7438:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
	adds r0, r6, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E7EC0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E7F40
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_02015240
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E7424

	thumb_func_start ov21_021E7468
ov21_021E7468: @ 0x021E7468
	push {r4, lr}
	adds r4, r0, #0
	bne _021E7472
	bl FUN_02022974
_021E7472:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E7468

	thumb_func_start ov21_021E747C
ov21_021E747C: @ 0x021E747C
	push {r4, lr}
	adds r4, r0, #0
	bne _021E7486
	bl FUN_02022974
_021E7486:
	adds r0, r4, #0
	bl ov21_021E7F20
	adds r0, r4, #0
	bl ov21_021E7F7C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E747C

	thumb_func_start ov21_021E749C
ov21_021E749C: @ 0x021E749C
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E749C

	thumb_func_start ov21_021E74A0
ov21_021E74A0: @ 0x021E74A0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	adds r5, r1, #0
	movs r1, #8
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E74B6
	bl FUN_02022974
_021E74B6:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	str r4, [r6, #8]
	ldr r0, [r5]
	bl ov21_021D37BC
	adds r1, r0, #0
	ldr r2, [r5]
	ldr r0, _021E7508 @ =0x00001748
	ldr r0, [r2, r0]
	bl FUN_02098828
	adds r6, r0, #0
	ldr r0, [r5]
	bl ov21_021D3920
	cmp r0, #0
	bne _021E74EC
	movs r0, #0x5f
	b _021E74EE
_021E74EC:
	movs r0, #0x55
_021E74EE:
	lsls r0, r0, #2
	cmp r6, r0
	blt _021E74FC
	subs r0, r6, r0
	str r0, [r4]
	movs r0, #1
	b _021E7502
_021E74FC:
	subs r0, r0, r6
	str r0, [r4]
	movs r0, #0
_021E7502:
	str r0, [r4, #4]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E7508: .4byte 0x00001748
	thumb_func_end ov21_021E74A0

	thumb_func_start ov21_021E750C
ov21_021E750C: @ 0x021E750C
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021E7516
	movs r0, #1
	bx lr
_021E7516:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E750C

	thumb_func_start ov21_021E751C
ov21_021E751C: @ 0x021E751C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E751C

	thumb_func_start ov21_021E7530
ov21_021E7530: @ 0x021E7530
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r7, r0, #0
	ldr r0, [r4]
	str r2, [sp, #4]
	ldr r6, [r3, #8]
	ldr r5, [r4, #8]
	cmp r0, #3
	bhi _021E75C8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E7550: @ jump table
	.2byte _021E7558 - _021E7550 - 2 @ case 0
	.2byte _021E757A - _021E7550 - 2 @ case 1
	.2byte _021E759C - _021E7550 - 2 @ case 2
	.2byte _021E75B2 - _021E7550 - 2 @ case 3
_021E7558:
	ldr r0, [r4, #4]
	movs r1, #0xc4
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0xc4
	blx FUN_020D5124
	ldr r0, [r4, #8]
	movs r1, #1
	adds r0, #0xb8
	str r1, [r0]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E75C8
_021E757A:
	ldr r0, [r4, #4]
	adds r1, r7, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r3, r6, #0
	bl ov21_021E7800
	ldr r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r3, #1
	bl ov21_021E771C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E75C8
_021E759C:
	adds r0, r5, #0
	adds r1, r7, #0
	movs r3, #1
	bl ov21_021E77A4
	cmp r0, #0
	beq _021E75C8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E75C8
_021E75B2:
	ldr r0, _021E75D0 @ =0x021E9DB0
	ldr r2, [r6]
	movs r1, #0x11
	bl ov21_021E83D8
	str r0, [r5, #0x34]
	ldr r0, [r6, #4]
	add sp, #8
	str r0, [r5, #0x38]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E75C8:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E75D0: .4byte 0x021E9DB0
	thumb_func_end ov21_021E7530

	thumb_func_start ov21_021E75D4
ov21_021E75D4: @ 0x021E75D4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r1, #0
	ldr r1, [r4]
	adds r2, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #7
	bhi _021E768C
	adds r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_021E75F0: @ jump table
	.2byte _021E7600 - _021E75F0 - 2 @ case 0
	.2byte _021E761A - _021E75F0 - 2 @ case 1
	.2byte _021E762A - _021E75F0 - 2 @ case 2
	.2byte _021E7638 - _021E75F0 - 2 @ case 3
	.2byte _021E7650 - _021E75F0 - 2 @ case 4
	.2byte _021E765E - _021E75F0 - 2 @ case 5
	.2byte _021E7680 - _021E75F0 - 2 @ case 6
	.2byte _021E768C - _021E75F0 - 2 @ case 7
_021E7600:
	adds r1, r0, #0
	movs r2, #1
	adds r1, #0xb8
	str r2, [r1]
	ldr r0, [r0, #0x34]
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021E7614
	str r2, [r4]
	b _021E768C
_021E7614:
	movs r0, #3
	str r0, [r4]
	b _021E768C
_021E761A:
	adds r1, r2, #0
	ldr r2, [r0, #0x38]
	bl ov21_021E7F88
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E768C
_021E762A:
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	bne _021E768C
	adds r0, r1, #1
	str r0, [r4]
	b _021E768C
_021E7638:
	ldr r3, [r0, #0x34]
	ldr r1, [r0, #0x38]
	str r1, [sp]
	adds r1, r2, #0
	ldrh r2, [r3, #8]
	ldrh r3, [r3, #0xa]
	bl ov21_021E8188
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E768C
_021E7650:
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	bne _021E768C
	adds r0, r1, #1
	str r0, [r4]
	b _021E768C
_021E765E:
	ldr r2, [r0, #0x34]
	ldr r1, [r2, #0xc]
	cmp r1, #0
	beq _021E767A
	ldr r1, [r2, #0x10]
	ldr r2, [r0, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ov21_021E8258
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E768C
_021E767A:
	movs r0, #7
	str r0, [r4]
	b _021E768C
_021E7680:
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #1
	bne _021E768C
	adds r0, r1, #1
	str r0, [r4]
_021E768C:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E75D4

	thumb_func_start ov21_021E7694
ov21_021E7694: @ 0x021E7694
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	adds r3, r0, #0
	ldr r0, [r4, #8]
	cmp r1, #4
	bhi _021E7710
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E76AE: @ jump table
	.2byte _021E76B8 - _021E76AE - 2 @ case 0
	.2byte _021E76C8 - _021E76AE - 2 @ case 1
	.2byte _021E76DC - _021E76AE - 2 @ case 2
	.2byte _021E76EA - _021E76AE - 2 @ case 3
	.2byte _021E770C - _021E76AE - 2 @ case 4
_021E76B8:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E771C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E7710
_021E76C8:
	adds r1, r3, #0
	movs r3, #0
	bl ov21_021E77A4
	cmp r0, #0
	beq _021E7710
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E7710
_021E76DC:
	adds r1, r3, #0
	bl ov21_021E785C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E7710
_021E76EA:
	adds r1, r0, #0
	adds r1, #0xb8
	ldr r1, [r1]
	cmp r1, #0
	bne _021E76FA
	ldr r0, [r0, #0x3c]
	bl FUN_0200DA58
_021E76FA:
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E7710
_021E770C:
	movs r0, #1
	pop {r4, pc}
_021E7710:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov21_021E7694

	thumb_func_start ov21_021E7714
ov21_021E7714: @ 0x021E7714
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E7714

	thumb_func_start ov21_021E7718
ov21_021E7718: @ 0x021E7718
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E7718

	thumb_func_start ov21_021E771C
ov21_021E771C: @ 0x021E771C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E7714
	ldr r0, [r4, #4]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021E779E
	cmp r6, #0
	beq _021E777C
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2b
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24B8
	adds r1, r0, #0
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov21_021E8400
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021E777C:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2b
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021E779E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E771C

	thumb_func_start ov21_021E77A4
ov21_021E77A4: @ 0x021E77A4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r2, #4]
	adds r4, r1, #0
	adds r6, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4]
	beq _021E77C4
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D2424
	b _021E77CE
_021E77C4:
	movs r0, #0x5b
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24EC
_021E77CE:
	cmp r0, #0
	beq _021E77E0
	cmp r6, #0
	beq _021E77DC
	adds r0, r5, #0
	bl ov21_021E7718
_021E77DC:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E77E0:
	movs r0, #0x5b
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov21_021D24B8
	adds r1, r0, #0
	rsbs r1, r1, #0
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov21_021E8400
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E77A4

	thumb_func_start ov21_021E7800
ov21_021E7800: @ 0x021E7800
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	adds r7, r2, #0
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov21_021E789C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E7CF8
	adds r0, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov21_021E7DA8
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021E7904
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021E7B34
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov21_021E7CF0
	ldr r0, [r5, #0xc]
	movs r1, #0
	bl FUN_020152BC
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_02015240
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E7800

	thumb_func_start ov21_021E785C
ov21_021E785C: @ 0x021E785C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov21_021E7CF4
	adds r0, r5, #0
	bl ov21_021E7CCC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E7AA0
	ldr r0, [r4]
	movs r1, #0
	adds r0, r0, #4
	bl FUN_0201ADA4
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02019EBC
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_02015240
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_020152BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E785C

	thumb_func_start ov21_021E789C
ov21_021E789C: @ 0x021E789C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	adds r5, r2, #0
	str r5, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x21
	movs r3, #3
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4]
	movs r1, #0x49
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #3
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E789C

	thumb_func_start ov21_021E7904
ov21_021E7904: @ 0x021E7904
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	adds r0, r2, #0
	adds r7, r1, #0
	ldr r0, [r0]
	str r2, [sp, #0x10]
	adds r4, r3, #0
	ldr r6, [r7]
	bl ov21_021D37BC
	str r0, [sp, #0x20]
	ldr r0, [r7]
	bl ov21_021D26E0
	str r0, [sp, #0x14]
	movs r0, #0x13
	adds r1, r4, #0
	bl FUN_02006C24
	adds r7, r0, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	ldr r0, [r0]
	bl ov21_021D33D4
	adds r2, r0, #0
	ldr r0, [sp, #0x20]
	movs r1, #0
	bl FUN_02079D8C
	str r0, [sp, #0x24]
	bl FUN_02079FD0
	str r0, [sp, #0x28]
	bl FUN_02079FD4
	str r0, [sp, #0x1c]
	bl FUN_02079FE0
	str r0, [sp, #0x18]
	movs r0, #0x7d
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x24]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r5, #0x14]
	bl FUN_0200A450
	ldr r0, [r5, #0x14]
	bl FUN_02009D4C
	movs r0, #0x7d
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x28]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x18]
	bl FUN_0200A640
	cmp r0, #0
	bne _021E79AC
	bl FUN_02022974
_021E79AC:
	adds r0, r4, #0
	movs r1, #0x60
	bl FUN_02018144
	adds r1, r5, #0
	adds r1, #0xbc
	str r0, [r1]
	movs r0, #0x7d
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x1c]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0x1c]
	movs r0, #0x7d
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0x20]
	ldr r0, _021E7A90 @ =0x00001BB5
	movs r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x14]
	movs r2, #0x5d
	bl FUN_02009A4C
	str r0, [r5, #0x24]
	bl FUN_0200A3DC
	ldr r0, [r5, #0x24]
	bl FUN_02009D4C
	ldr r0, _021E7A94 @ =0x00001B66
	ldr r1, [sp, #0x14]
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	movs r0, #0x51
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0xe
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x28]
	bl FUN_0200A640
	adds r0, r4, #0
	movs r1, #0xa0
	bl FUN_02018144
	adds r1, r5, #0
	adds r1, #0xc0
	str r0, [r1]
	ldr r0, _021E7A98 @ =0x00001BB3
	ldr r1, [sp, #0x14]
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x5b
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x2c]
	ldr r0, _021E7A9C @ =0x00001BB4
	ldr r1, [sp, #0x14]
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x5c
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x30]
	adds r0, r7, #0
	bl FUN_02006CA8
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021E7A90: .4byte 0x00001BB5
_021E7A94: .4byte 0x00001B66
_021E7A98: .4byte 0x00001BB3
_021E7A9C: .4byte 0x00001BB4
	thumb_func_end ov21_021E7904

	thumb_func_start ov21_021E7AA0
ov21_021E7AA0: @ 0x021E7AA0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	ldr r4, [r1]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x18]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x18]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x1c]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x20]
	bl FUN_02009D68
	ldr r0, [r5, #0x24]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x28]
	bl FUN_0200A6DC
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x24]
	bl FUN_02009D68
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x28]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x2c]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x30]
	bl FUN_02009D68
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_020181C4
	adds r5, #0xc0
	ldr r0, [r5]
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E7AA0

	thumb_func_start ov21_021E7B34
ov21_021E7B34: @ 0x021E7B34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r6, r2, #0
	adds r5, r0, #0
	ldr r0, [r6]
	adds r7, r3, #0
	ldr r4, [r1]
	bl ov21_021D37BC
	str r0, [sp, #0x2c]
	ldr r0, [r6]
	ldr r1, [sp, #0x2c]
	bl ov21_021D33D4
	ldr r3, _021E7CC8 @ =0x00001BB4
	str r0, [sp, #0x30]
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #3
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	ldr r1, [r4, r0]
	str r1, [sp, #0x14]
	adds r1, r0, #4
	ldr r1, [r4, r1]
	str r1, [sp, #0x18]
	adds r1, r0, #0
	adds r1, #8
	ldr r1, [r4, r1]
	adds r0, #0xc
	str r1, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r1, r3, #1
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	adds r2, r3, #0
	add r0, sp, #0x5c
	subs r2, #0x4e
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	str r0, [sp, #0x3c]
	add r0, sp, #0x5c
	str r0, [sp, #0x40]
	movs r0, #0x1f
	str r0, [sp, #0x50]
	movs r0, #0x2e
	lsls r0, r0, #0xe
	str r0, [sp, #0x44]
	lsls r0, r1, #0x12
	str r0, [sp, #0x48]
	str r1, [sp, #0x54]
	str r7, [sp, #0x58]
	add r0, sp, #0x3c
	bl FUN_02021B90
	str r0, [r5]
	ldr r0, [r6]
	bl ov21_021D3920
	cmp r0, #0
	ldr r0, [r5]
	bne _021E7BD0
	movs r1, #3
	bl FUN_02021D6C
	b _021E7BD6
_021E7BD0:
	movs r1, #4
	bl FUN_02021D6C
_021E7BD6:
	movs r0, #2
	lsls r0, r0, #0x12
	str r0, [sp, #0x44]
	movs r0, #0x6a
	lsls r0, r0, #0xc
	str r0, [sp, #0x48]
	add r0, sp, #0x3c
	bl FUN_02021B90
	str r0, [r5, #8]
	movs r1, #1
	bl FUN_02021D6C
	ldr r0, [r5, #8]
	movs r1, #1
	bl FUN_02021E80
	movs r0, #0x2e
	lsls r0, r0, #0xe
	str r0, [sp, #0x44]
	movs r0, #0x16
	lsls r0, r0, #0xe
	str r0, [sp, #0x48]
	add r0, sp, #0x3c
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5, #0xc]
	bl FUN_02021D6C
	movs r0, #0x12
	lsls r0, r0, #0xe
	str r0, [sp, #0x44]
	movs r0, #0x16
	lsls r0, r0, #0xe
	str r0, [sp, #0x48]
	add r0, sp, #0x3c
	bl FUN_02021B90
	str r0, [r5, #0x10]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, [r5, #0x14]
	bl FUN_02009E08
	adds r6, r0, #0
	ldr r0, [r5, #0x18]
	bl FUN_02009E08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0x1c]
	bl FUN_02009E08
	str r0, [sp, #0x38]
	ldr r0, [r5, #0x20]
	bl FUN_02009E08
	str r0, [sp]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #3
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	ldr r2, [r4, r0]
	ldr r3, [sp, #0x38]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, [sp, #0x34]
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r0, sp, #0x5c
	adds r1, r6, #0
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x3c]
	add r0, sp, #0x5c
	str r0, [sp, #0x40]
	movs r0, #0x1f
	str r0, [sp, #0x50]
	movs r0, #0x12
	movs r1, #1
	lsls r0, r0, #0xe
	str r0, [sp, #0x44]
	lsls r0, r1, #0x12
	str r0, [sp, #0x48]
	str r1, [sp, #0x54]
	str r7, [sp, #0x58]
	add r0, sp, #0x3c
	bl FUN_02021B90
	str r0, [r5, #4]
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x30]
	movs r2, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02021EC4
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021E7CC8: .4byte 0x00001BB4
	thumb_func_end ov21_021E7B34

	thumb_func_start ov21_021E7CCC
ov21_021E7CCC: @ 0x021E7CCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02021BD4
	ldr r0, [r4, #4]
	bl FUN_02021BD4
	ldr r0, [r4, #8]
	bl FUN_02021BD4
	ldr r0, [r4, #0xc]
	bl FUN_02021BD4
	ldr r0, [r4, #0x10]
	bl FUN_02021BD4
	pop {r4, pc}
	thumb_func_end ov21_021E7CCC

	thumb_func_start ov21_021E7CF0
ov21_021E7CF0: @ 0x021E7CF0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E7CF0

	thumb_func_start ov21_021E7CF4
ov21_021E7CF4: @ 0x021E7CF4
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E7CF4

	thumb_func_start ov21_021E7CF8
ov21_021E7CF8: @ 0x021E7CF8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x20
	adds r6, r1, #0
	bl FUN_02023790
	adds r4, r0, #0
	ldr r2, _021E7DA0 @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r6, #0
	bl FUN_0200B144
	movs r1, #0x2c
	adds r2, r4, #0
	adds r6, r0, #0
	bl FUN_0200B1B8
	movs r0, #0
	movs r3, #1
	adds r1, r4, #0
	adds r2, r0, #0
	lsls r3, r3, #8
	bl FUN_02002EEC
	adds r3, r0, #0
	movs r0, #0x18
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E7DA4 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	bl FUN_0201D78C
	adds r0, r6, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0xa8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E7DA4 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	movs r3, #0x20
	bl FUN_0201D78C
	adds r0, r6, #0
	movs r1, #0xa
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0xa8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E7DA4 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	movs r3, #0x98
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E7DA0: .4byte 0x000002B9
_021E7DA4: .4byte 0x00020100
	thumb_func_end ov21_021E7CF8

	thumb_func_start ov21_021E7DA8
ov21_021E7DA8: @ 0x021E7DA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x20
	adds r1, r7, #0
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r6]
	bl ov21_021D37BC
	adds r1, r7, #0
	str r0, [sp, #0x10]
	bl FUN_0200B32C
	str r0, [sp, #0x14]
	bl FUN_020989C4
	adds r2, r0, #0
	movs r0, #0
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	str r0, [sp, #0x18]
	movs r0, #0x98
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E7EB8 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	ldr r2, [sp, #0x14]
	adds r0, r0, #4
	movs r3, #0x1a
	bl FUN_0201D78C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	adds r2, r4, #0
	bl FUN_0200B1B8
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x6e
	subs r3, r1, r0
	movs r0, #0xa8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E7EB8 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	bl FUN_0200B190
	ldr r2, _021E7EBC @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	adds r7, r0, #0
	ldr r0, [r6]
	bl ov21_021D3914
	adds r2, r0, #0
	movs r0, #0x98
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E7EB8 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	movs r3, #0x92
	adds r0, r0, #4
	bl FUN_0201D78C
	ldr r0, [r6]
	bl ov21_021D3920
	cmp r0, #0
	bne _021E7E78
	adds r0, r7, #0
	movs r1, #0x61
	adds r2, r4, #0
	bl FUN_0200B1B8
	b _021E7E82
_021E7E78:
	adds r0, r7, #0
	movs r1, #0x62
	adds r2, r4, #0
	bl FUN_0200B1B8
_021E7E82:
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0xe6
	subs r3, r1, r0
	movs r0, #0xa8
	str r0, [sp]
	movs r1, #0
	ldr r0, _021E7EB8 @ =0x00020100
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r5]
	adds r2, r4, #0
	adds r0, r0, #4
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B190
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E7EB8: .4byte 0x00020100
_021E7EBC: .4byte 0x000002B9
	thumb_func_end ov21_021E7DA8

	thumb_func_start ov21_021E7EC0
ov21_021E7EC0: @ 0x021E7EC0
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r1, #0
	adds r4, r0, #0
	str r5, [sp]
	adds r3, r4, #0
	ldr r0, [r4]
	movs r1, #0x24
	movs r2, #1
	adds r3, #0x18
	bl ov21_021D2808
	str r0, [r4, #0x10]
	adds r2, r4, #0
	ldr r0, [r4]
	movs r1, #6
	adds r2, #0x1c
	adds r3, r5, #0
	bl ov21_021D27E0
	str r0, [r4, #0x14]
	movs r0, #0x5a
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	str r0, [sp, #8]
	add r0, sp, #4
	bl FUN_02015128
	str r0, [r4, #4]
	movs r0, #0x5a
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp, #0x14]
	add r0, sp, #0xc
	bl FUN_020151A4
	str r0, [r4, #8]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E7EC0

	thumb_func_start ov21_021E7F20
ov21_021E7F20: @ 0x021E7F20
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02015164
	ldr r0, [r4, #8]
	bl FUN_020151D4
	ldr r0, [r4, #0x10]
	bl FUN_020181C4
	ldr r0, [r4, #0x14]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E7F20

	thumb_func_start ov21_021E7F40
ov21_021E7F40: @ 0x021E7F40
	push {r4, lr}
	sub sp, #0x20
	adds r4, r0, #0
	movs r0, #0x5a
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0x40
	str r0, [sp]
	ldr r0, [r4, #4]
	movs r2, #0
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	str r0, [sp, #8]
	add r0, sp, #0
	strh r1, [r0, #0xc]
	movs r1, #0x58
	strh r1, [r0, #0xe]
	strh r2, [r0, #0x10]
	movs r1, #0x1f
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	strh r2, [r0, #0x1c]
	add r0, sp, #0
	bl FUN_02015214
	str r0, [r4, #0xc]
	add sp, #0x20
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E7F40

	thumb_func_start ov21_021E7F7C
ov21_021E7F7C: @ 0x021E7F7C
	ldr r3, _021E7F84 @ =FUN_02015238
	ldr r0, [r0, #0xc]
	bx r3
	nop
_021E7F84: .4byte FUN_02015238
	thumb_func_end ov21_021E7F7C

	thumb_func_start ov21_021E7F88
ov21_021E7F88: @ 0x021E7F88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0xc]
	movs r1, #0
	str r0, [r4, #0x40]
	ldr r0, [r4, #0xc]
	str r0, [r4, #0x44]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x48]
	ldr r0, [r4]
	str r0, [r4, #0x4c]
	ldr r0, [r4, #4]
	str r0, [r4, #0x50]
	adds r0, r4, #0
	str r1, [r4, #0x6c]
	adds r0, #0xb8
	str r0, [r4, #0x70]
	adds r0, r4, #0
	adds r0, #0xb8
	str r1, [r0]
	cmp r2, #0
	bne _021E7FB8
	subs r0, r1, #1
	b _021E7FBA
_021E7FB8:
	movs r0, #1
_021E7FBA:
	str r0, [r4, #0x54]
	adds r1, r4, #0
	ldr r0, _021E7FCC @ =ov21_021E7FD0
	adds r1, #0x40
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x3c]
	pop {r4, pc}
	.align 2, 0
_021E7FCC: .4byte ov21_021E7FD0
	thumb_func_end ov21_021E7F88

	thumb_func_start ov21_021E7FD0
ov21_021E7FD0: @ 0x021E7FD0
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0x2c]
	cmp r1, #5
	bhi _021E8078
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021E7FE6: @ jump table
	.2byte _021E7FF2 - _021E7FE6 - 2 @ case 0
	.2byte _021E7FFA - _021E7FE6 - 2 @ case 1
	.2byte _021E8002 - _021E7FE6 - 2 @ case 2
	.2byte _021E8024 - _021E7FE6 - 2 @ case 3
	.2byte _021E8044 - _021E7FE6 - 2 @ case 4
	.2byte _021E806E - _021E7FE6 - 2 @ case 5
_021E7FF2:
	movs r0, #2
	str r0, [r4, #0x18]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_021E7FFA:
	adds r0, r4, #0
	bl ov21_021E8084
	pop {r4, pc}
_021E8002:
	ldr r1, [r4, #0x14]
	ldr r0, _021E807C @ =0xFFFFFDDE
	muls r0, r1, r0
	str r0, [r4, #0x24]
	movs r0, #0xb5
	ldr r1, [r4, #0x14]
	mvns r0, r0
	muls r0, r1, r0
	str r0, [r4, #0x20]
	movs r0, #3
	str r0, [r4, #0x28]
	movs r0, #1
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	bl ov21_021E8084
	pop {r4, pc}
_021E8024:
	ldr r1, [r4, #0x14]
	ldr r0, _021E8080 @ =0x00000222
	muls r0, r1, r0
	str r0, [r4, #0x24]
	ldr r1, [r4, #0x14]
	movs r0, #0xb6
	muls r0, r1, r0
	str r0, [r4, #0x20]
	movs r0, #4
	str r0, [r4, #0x28]
	movs r0, #1
	str r0, [r4, #0x2c]
	adds r0, r4, #0
	bl ov21_021E8084
	pop {r4, pc}
_021E8044:
	movs r1, #0
	str r1, [r4, #0x24]
	ldr r0, [r4, #0x14]
	subs r1, #0xb6
	muls r1, r0, r1
	str r1, [r4, #0x20]
	movs r0, #1
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x18]
	subs r0, r0, #1
	str r0, [r4, #0x18]
	cmp r0, #0
	ble _021E8062
	movs r0, #2
	b _021E8064
_021E8062:
	movs r0, #5
_021E8064:
	str r0, [r4, #0x28]
	adds r0, r4, #0
	bl ov21_021E8084
	pop {r4, pc}
_021E806E:
	bl FUN_0200DA58
	ldr r0, [r4, #0x30]
	movs r1, #1
	str r1, [r0]
_021E8078:
	pop {r4, pc}
	nop
_021E807C: .4byte 0xFFFFFDDE
_021E8080: .4byte 0x00000222
	thumb_func_end ov21_021E7FD0

	thumb_func_start ov21_021E8084
ov21_021E8084: @ 0x021E8084
	push {r3, lr}
	sub sp, #8
	adds r3, r0, #0
	ldr r2, [r3, #0x20]
	ldr r1, [r3, #0x24]
	cmp r2, #0
	bge _021E80A6
	ldr r0, [r3, #0x1c]
	adds r0, r0, r2
	cmp r0, r1
	blt _021E809E
	str r0, [r3, #0x1c]
	b _021E80B8
_021E809E:
	str r1, [r3, #0x1c]
	ldr r0, [r3, #0x28]
	str r0, [r3, #0x2c]
	b _021E80B8
_021E80A6:
	ldr r0, [r3, #0x1c]
	adds r0, r0, r2
	cmp r0, r1
	bgt _021E80B2
	str r0, [r3, #0x1c]
	b _021E80B8
_021E80B2:
	str r1, [r3, #0x1c]
	ldr r0, [r3, #0x28]
	str r0, [r3, #0x2c]
_021E80B8:
	ldr r0, [r3, #0x10]
	str r0, [sp]
	ldr r0, [r3, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r3]
	ldr r1, [r3, #4]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl ov21_021E80D4
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov21_021E8084

	thumb_func_start ov21_021E80D4
ov21_021E80D4: @ 0x021E80D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	add r1, sp, #0x18
	ldrh r1, [r1, #0x14]
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_020152BC
	add r0, sp, #0x18
	ldrh r0, [r0, #0x14]
	movs r2, #0xe
	lsls r2, r2, #0xe
	asrs r0, r0, #4
	lsls r4, r0, #1
	adds r0, r4, #1
	lsls r1, r0, #1
	ldr r0, _021E8184 @ =0x020F983C
	movs r3, #0
	ldrsh r0, [r0, r1]
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r5, r2, #0xc
	orrs r5, r0
	movs r2, #0xe
	ldr r0, _021E8184 @ =0x020F983C
	lsls r1, r4, #1
	ldrsh r0, [r0, r1]
	lsls r2, r2, #0xe
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	lsls r2, r2, #0xa
	movs r3, #0
	adds r0, r0, r2
	adcs r1, r3
	lsrs r4, r0, #0xc
	lsls r0, r2, #8
	lsls r1, r1, #0x14
	adds r0, r5, r0
	orrs r4, r1
	str r0, [sp, #4]
	lsls r0, r2, #7
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp]
	add r1, sp, #4
	bl FUN_02021C50
	movs r0, #6
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r6, #0
	add r1, sp, #4
	bl FUN_02021C50
	movs r0, #2
	lsls r0, r0, #0x12
	subs r1, r0, r5
	lsrs r0, r0, #1
	subs r0, r0, r4
	str r0, [sp, #8]
	str r1, [sp, #4]
	ldr r0, [sp, #0x28]
	add r1, sp, #4
	bl FUN_02021C50
	movs r0, #6
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r7, #0
	add r1, sp, #4
	bl FUN_02021C50
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E8184: .4byte 0x020F983C
	thumb_func_end ov21_021E80D4

	thumb_func_start ov21_021E8188
ov21_021E8188: @ 0x021E8188
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r1, #0xc]
	adds r5, r4, #0
	str r0, [r4, #0x74]
	ldr r0, [r4, #0xc]
	adds r5, #0xb8
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x10]
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	ldr r1, [r4]
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	ldr r1, [r4, #4]
	adds r0, #0x84
	str r1, [r0]
	adds r1, r4, #0
	movs r0, #0
	adds r1, #0x88
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x94
	str r5, [r1]
	adds r1, r4, #0
	adds r1, #0xb8
	str r0, [r1]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021E81D4
	adds r0, r4, #0
	adds r0, #0x8c
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	str r3, [r0]
	b _021E81E4
_021E81D4:
	adds r0, r4, #0
	rsbs r1, r2, #0
	adds r0, #0x8c
	str r1, [r0]
	adds r0, r4, #0
	rsbs r1, r3, #0
	adds r0, #0x90
	str r1, [r0]
_021E81E4:
	adds r1, r4, #0
	ldr r0, _021E81F4 @ =ov21_021E81F8
	adds r1, #0x74
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x3c]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E81F4: .4byte ov21_021E81F8
	thumb_func_end ov21_021E8188

	thumb_func_start ov21_021E81F8
ov21_021E81F8: @ 0x021E81F8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5, #0x18]
	movs r4, #0
	cmp r0, #0
	ldr r2, [r5, #0x1c]
	bge _021E821C
	ldr r1, [r5, #0x14]
	adds r0, r1, r0
	cmp r0, r2
	blt _021E8216
	str r0, [r5, #0x14]
	b _021E822C
_021E8216:
	str r2, [r5, #0x14]
	movs r4, #1
	b _021E822C
_021E821C:
	ldr r1, [r5, #0x14]
	adds r0, r1, r0
	cmp r0, r2
	bgt _021E8228
	str r0, [r5, #0x14]
	b _021E822C
_021E8228:
	str r2, [r5, #0x14]
	movs r4, #1
_021E822C:
	ldr r0, [r5, #0x10]
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	bl ov21_021E80D4
	cmp r4, #1
	bne _021E8254
	adds r0, r6, #0
	bl FUN_0200DA58
	ldr r0, [r5, #0x20]
	movs r1, #1
	str r1, [r0]
_021E8254:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E81F8

	thumb_func_start ov21_021E8258
ov21_021E8258: @ 0x021E8258
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	cmp r2, #0
	bne _021E8266
	ldr r1, [r5, #4]
	b _021E8268
_021E8266:
	ldr r1, [r5]
_021E8268:
	adds r0, #0x98
	str r1, [r0]
	rsbs r0, r4, #0
	lsls r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_02021D28
	adds r1, r5, #0
	ldr r2, [r0]
	adds r1, #0x9c
	str r2, [r1]
	ldr r1, [r0, #4]
	adds r0, r5, #0
	adds r0, #0xa0
	str r1, [r0]
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0
	adds r0, #0xac
	str r2, [r0]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r4, [r0]
	adds r0, r5, #0
	adds r0, #0xb0
	str r2, [r0]
	adds r0, r5, #0
	adds r1, #0xb8
	adds r0, #0xb4
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb8
	str r2, [r0]
	adds r1, r5, #0
	ldr r0, _021E82C4 @ =ov21_021E82C8
	adds r1, #0x98
	bl FUN_0200D9E8
	str r0, [r5, #0x3c]
	pop {r3, r4, r5, pc}
	nop
_021E82C4: .4byte ov21_021E82C8
	thumb_func_end ov21_021E8258

	thumb_func_start ov21_021E82C8
ov21_021E82C8: @ 0x021E82C8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #3
	bhi _021E83D2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E82E2: @ jump table
	.2byte _021E82EA - _021E82E2 - 2 @ case 0
	.2byte _021E833C - _021E82E2 - 2 @ case 1
	.2byte _021E8370 - _021E82E2 - 2 @ case 2
	.2byte _021E83B6 - _021E82E2 - 2 @ case 3
_021E82EA:
	ldr r0, [r4, #0x14]
	adds r3, r0, #1
	str r3, [r4, #0x14]
	movs r0, #0xc
	ldrsh r0, [r4, r0]
	adds r1, r3, #0
	muls r1, r3, r1
	adds r2, r0, #0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	muls r2, r3, r2
	asrs r0, r0, #1
	adds r2, r2, r0
	ldr r0, [r4, #4]
	str r0, [sp]
	ldr r1, [r4, #8]
	lsls r0, r2, #0xc
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [r4]
	add r1, sp, #0
	bl FUN_02021C50
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	blt _021E83D2
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	add sp, #0xc
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	adds r0, r0, #1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x18]
	adds r0, r0, #1
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021E833C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021E8358
	movs r0, #2
	ldr r1, [r4, #4]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #8]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4]
	bl FUN_02021C50
_021E8358:
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #1
	ble _021E83D2
	movs r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0x18]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021E8370:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _021E838C
	movs r0, #2
	ldr r1, [r4, #4]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp]
	ldr r0, [r4, #8]
	add r1, sp, #0
	str r0, [sp, #4]
	ldr r0, [r4]
	bl FUN_02021C50
_021E838C:
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #1
	ble _021E83D2
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0
	ble _021E83AC
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #1
	add sp, #0xc
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021E83AC:
	ldr r0, [r4, #0x18]
	add sp, #0xc
	adds r0, r0, #1
	str r0, [r4, #0x18]
	pop {r4, r5, pc}
_021E83B6:
	ldr r0, [r4, #4]
	add r1, sp, #0
	str r0, [sp]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	ldr r0, [r4]
	bl FUN_02021C50
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x1c]
	movs r1, #1
	str r1, [r0]
_021E83D2:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E82C8

	thumb_func_start ov21_021E83D8
ov21_021E83D8: @ 0x021E83D8
	push {r4, r5}
	movs r4, #0
	cmp r1, #0
	ble _021E83FA
	adds r5, r0, #0
_021E83E2:
	ldr r3, [r5]
	cmp r3, r2
	blt _021E83F2
	movs r1, #0x14
	muls r1, r4, r1
	adds r0, r0, r1
	pop {r4, r5}
	bx lr
_021E83F2:
	adds r4, r4, #1
	adds r5, #0x14
	cmp r4, r1
	blt _021E83E2
_021E83FA:
	movs r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov21_021E83D8

	thumb_func_start ov21_021E8400
ov21_021E8400: @ 0x021E8400
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	adds r7, r1, #0
	adds r4, r2, #0
	bl FUN_02009E34
	adds r6, r0, #0
	ldr r0, [r5, #0x18]
	movs r1, #0
	bl FUN_0200A72C
	adds r1, r5, #0
	str r4, [sp]
	adds r1, #0xbc
	str r0, [sp, #4]
	ldr r0, [r6, #0xc]
	ldr r1, [r1]
	movs r2, #0x30
	adds r3, r7, #0
	bl FUN_0200393C
	ldr r0, [sp, #4]
	movs r1, #1
	blx FUN_020A81FC
	adds r2, r5, #0
	adds r2, #0xbc
	adds r1, r0, #0
	ldr r2, [r2]
	movs r0, #0xe
	movs r3, #0x60
	bl FUN_0201DC68
	ldr r0, [r5, #0x28]
	bl FUN_02009E34
	adds r6, r0, #0
	ldr r0, [r5, #0x28]
	movs r1, #0
	bl FUN_0200A72C
	adds r1, r5, #0
	str r4, [sp]
	adds r1, #0xc0
	str r0, [sp, #8]
	ldr r0, [r6, #0xc]
	ldr r1, [r1]
	movs r2, #0x50
	adds r3, r7, #0
	bl FUN_0200393C
	ldr r0, [sp, #8]
	movs r1, #1
	blx FUN_020A81FC
	adds r5, #0xc0
	adds r1, r0, #0
	ldr r2, [r5]
	movs r0, #0xe
	movs r3, #0xa0
	bl FUN_0201DC68
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E8400

	thumb_func_start ov21_021E8484
ov21_021E8484: @ 0x021E8484
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov21_021E84FC
	adds r6, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E8544
	adds r7, r0, #0
	ldr r0, [sp]
	adds r1, r4, #0
	bl ov21_021E856C
	str r6, [r5]
	str r7, [r5, #4]
	str r0, [r5, #0x20]
	bl ov21_021E859C
	str r0, [r5, #0x24]
	ldr r0, _021E84CC @ =ov21_021E85A0
	str r0, [r5, #8]
	ldr r0, _021E84D0 @ =ov21_021E85DC
	str r0, [r5, #0xc]
	ldr r0, _021E84D4 @ =ov21_021E8640
	str r0, [r5, #0x10]
	ldr r0, _021E84D8 @ =ov21_021E8654
	str r0, [r5, #0x14]
	ldr r0, _021E84DC @ =ov21_021E86DC
	str r0, [r5, #0x18]
	ldr r0, _021E84E0 @ =ov21_021E870C
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E84CC: .4byte ov21_021E85A0
_021E84D0: .4byte ov21_021E85DC
_021E84D4: .4byte ov21_021E8640
_021E84D8: .4byte ov21_021E8654
_021E84DC: .4byte ov21_021E86DC
_021E84E0: .4byte ov21_021E870C
	thumb_func_end ov21_021E8484

	thumb_func_start ov21_021E84E4
ov21_021E84E4: @ 0x021E84E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov21_021E8570
	ldr r0, [r4, #4]
	bl ov21_021E8584
	ldr r0, [r4, #0x20]
	bl ov21_021E8598
	pop {r4, pc}
	thumb_func_end ov21_021E84E4

	thumb_func_start ov21_021E84FC
ov21_021E84FC: @ 0x021E84FC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x10
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E850E
	bl FUN_02022974
_021E850E:
	adds r2, r4, #0
	movs r1, #0x10
	movs r0, #0
_021E8514:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E8514
	adds r0, r5, #0
	bl ov21_021D13A0
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #3
	bl ov21_021D1430
	str r0, [r4, #8]
	adds r0, r5, #0
	movs r1, #3
	bl ov21_021D1410
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E84FC

	thumb_func_start ov21_021E8544
ov21_021E8544: @ 0x021E8544
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	bne _021E8556
	bl FUN_02022974
_021E8556:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E8544

	thumb_func_start ov21_021E856C
ov21_021E856C: @ 0x021E856C
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E856C

	thumb_func_start ov21_021E8570
ov21_021E8570: @ 0x021E8570
	push {r4, lr}
	adds r4, r0, #0
	bne _021E857A
	bl FUN_02022974
_021E857A:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E8570

	thumb_func_start ov21_021E8584
ov21_021E8584: @ 0x021E8584
	push {r4, lr}
	adds r4, r0, #0
	bne _021E858E
	bl FUN_02022974
_021E858E:
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E8584

	thumb_func_start ov21_021E8598
ov21_021E8598: @ 0x021E8598
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E8598

	thumb_func_start ov21_021E859C
ov21_021E859C: @ 0x021E859C
	movs r0, #0
	bx lr
	thumb_func_end ov21_021E859C

	thumb_func_start ov21_021E85A0
ov21_021E85A0: @ 0x021E85A0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r6, r1, #0
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021E85B6:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021E85B6
	movs r0, #4
	str r0, [r4, #0x10]
	ldr r2, [r5, #4]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E886C
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E88B8
	str r4, [r5, #8]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E85A0

	thumb_func_start ov21_021E85DC
ov21_021E85DC: @ 0x021E85DC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, [r0, #0xc]
	ldr r4, [r0, #8]
	cmp r1, #1
	bne _021E85EC
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E85EC:
	ldr r0, [r0, #0x10]
	cmp r0, #1
	bne _021E85F6
	movs r0, #0
	pop {r3, r4, r5, pc}
_021E85F6:
	ldr r0, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E863A
	adds r0, r4, #0
	bl ov21_021E88B0
	ldr r0, [r5, #8]
	bl ov21_021E33BC
	cmp r0, #0
	beq _021E8622
	ldr r0, [r5, #4]
	bl ov21_021D3998
	cmp r0, #2
	bne _021E8622
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E8CF0
_021E8622:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E88B8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021E863A
	adds r0, r5, #0
	bl ov21_021E8D3C
	movs r0, #0
	str r0, [r4, #0x14]
_021E863A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E85DC

	thumb_func_start ov21_021E8640
ov21_021E8640: @ 0x021E8640
	push {r4, lr}
	ldr r4, [r0, #8]
	adds r0, r4, #0
	bl ov21_021E88D0
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov21_021E8640

	thumb_func_start ov21_021E8654
ov21_021E8654: @ 0x021E8654
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021E86D8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E8670: @ jump table
	.2byte _021E8678 - _021E8670 - 2 @ case 0
	.2byte _021E8692 - _021E8670 - 2 @ case 1
	.2byte _021E86B0 - _021E8670 - 2 @ case 2
	.2byte _021E86C6 - _021E8670 - 2 @ case 3
_021E8678:
	ldr r0, [r4, #4]
	movs r1, #0x30
	bl FUN_02018144
	str r0, [r4, #8]
	movs r1, #0
	movs r2, #0x30
	blx FUN_020D5124
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E86D8
_021E8692:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E891C
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #1
	bl ov21_021E87C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E86D8
_021E86B0:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #1
	bl ov21_021E8830
	cmp r0, #0
	beq _021E86D8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E86D8
_021E86C6:
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0
	bl ov21_021D25AC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E86D8:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E8654

	thumb_func_start ov21_021E86DC
ov21_021E86DC: @ 0x021E86DC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r3, #8]
	adds r4, r2, #0
	str r0, [sp]
	adds r5, r1, #0
	ldr r0, [r4, #8]
	ldr r7, [r5, #8]
	bl ov21_021E33AC
	cmp r0, #0
	beq _021E8708
	ldr r2, [sp]
	ldr r3, [r5, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov21_021E8CBC
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov21_021E8D04
_021E8708:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E86DC

	thumb_func_start ov21_021E870C
ov21_021E870C: @ 0x021E870C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #4
	bhi _021E878E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E8728: @ jump table
	.2byte _021E8732 - _021E8728 - 2 @ case 0
	.2byte _021E8754 - _021E8728 - 2 @ case 1
	.2byte _021E876A - _021E8728 - 2 @ case 2
	.2byte _021E877C - _021E8728 - 2 @ case 3
	.2byte _021E878A - _021E8728 - 2 @ case 4
_021E8732:
	movs r0, #0x79
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #1
	bl ov21_021D25AC
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov21_021E87C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E878E
_021E8754:
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #0
	bl ov21_021E8830
	cmp r0, #0
	beq _021E878E
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E878E
_021E876A:
	ldr r2, [r4, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov21_021E894C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E878E
_021E877C:
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021E878E
_021E878A:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021E878E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E870C

	thumb_func_start ov21_021E8794
ov21_021E8794: @ 0x021E8794
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02021FE0
	ldr r0, [r4, #4]
	movs r1, #1
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r4, pc}
	thumb_func_end ov21_021E8794

	thumb_func_start ov21_021E87AC
ov21_021E87AC: @ 0x021E87AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02021FE0
	ldr r0, [r4, #4]
	movs r1, #0
	ldr r0, [r0]
	bl FUN_02012AF0
	pop {r4, pc}
	thumb_func_end ov21_021E87AC

	thumb_func_start ov21_021E87C4
ov21_021E87C4: @ 0x021E87C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r2, #0
	adds r5, r1, #0
	adds r6, r3, #0
	bl ov21_021E8794
	ldr r0, [r4, #8]
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E882C
	cmp r6, #0
	beq _021E8808
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0x19
	ldr r2, [r5]
	lsls r0, r0, #4
	adds r0, r2, r0
	adds r2, r1, #0
	subs r2, #0x11
	bl ov21_021D23F8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
_021E8808:
	movs r0, #0x10
	str r0, [sp]
	movs r2, #0
	str r2, [sp, #4]
	movs r0, #0x2c
	str r0, [sp, #8]
	movs r0, #0x2f
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	movs r0, #0x19
	ldr r3, [r5]
	lsls r0, r0, #4
	adds r0, r3, r0
	adds r3, r1, #0
	subs r3, #0x11
	bl ov21_021D23F8
_021E882C:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E87C4

	thumb_func_start ov21_021E8830
ov21_021E8830: @ 0x021E8830
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r2, #8]
	adds r5, r1, #0
	adds r4, r3, #0
	bl ov21_021E33A4
	cmp r0, #0
	beq _021E8850
	movs r0, #0x19
	ldr r1, [r5]
	lsls r0, r0, #4
	adds r0, r1, r0
	bl ov21_021D2424
	b _021E8856
_021E8850:
	movs r0, #2
	bl FUN_0200AC1C
_021E8856:
	cmp r0, #0
	beq _021E8868
	cmp r4, #0
	beq _021E8864
	adds r0, r6, #0
	bl ov21_021E87AC
_021E8864:
	movs r0, #1
	pop {r4, r5, r6, pc}
_021E8868:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E8830

	thumb_func_start ov21_021E886C
ov21_021E886C: @ 0x021E886C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #4
	bl FUN_02018144
	str r0, [r5, #4]
	movs r0, #0xf8
	str r0, [sp]
	ldr r0, [r5, #4]
	movs r1, #0x68
	movs r2, #0xb8
	movs r3, #8
	bl ov21_021D154C
	str r4, [r5, #8]
	str r5, [r5, #0xc]
	str r6, [sp]
	adds r3, r5, #0
	ldr r0, [r5, #4]
	ldr r2, _021E88AC @ =ov21_021E88E8
	movs r1, #1
	adds r3, #8
	bl FUN_02023FCC
	str r0, [r5]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021E88AC: .4byte ov21_021E88E8
	thumb_func_end ov21_021E886C

	thumb_func_start ov21_021E88B0
ov21_021E88B0: @ 0x021E88B0
	movs r1, #3
	str r1, [r0, #0x10]
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E88B0

	thumb_func_start ov21_021E88B8
ov21_021E88B8: @ 0x021E88B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0202404C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021E88CC
	movs r0, #2
	str r0, [r4, #0x10]
_021E88CC:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E88B8

	thumb_func_start ov21_021E88D0
ov21_021E88D0: @ 0x021E88D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_02024034
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E88D0

	thumb_func_start ov21_021E88E8
ov21_021E88E8: @ 0x021E88E8
	push {r4, lr}
	ldr r4, [r2, #4]
	ldr r3, [r2]
	lsls r2, r0, #2
	adds r2, r4, r2
	str r1, [r2, #0x10]
	cmp r1, #0
	beq _021E88FE
	cmp r1, #2
	beq _021E8910
	pop {r4, pc}
_021E88FE:
	cmp r0, #0
	bne _021E8918
	ldr r0, [r3, #8]
	movs r1, #1
	bl ov21_021E33B4
	movs r0, #1
	str r0, [r4, #0x14]
	pop {r4, pc}
_021E8910:
	cmp r0, #0
	bne _021E8918
	movs r0, #1
	str r0, [r4, #0x14]
_021E8918:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E88E8

	thumb_func_start ov21_021E891C
ov21_021E891C: @ 0x021E891C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov21_021E898C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E89F4
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E8AA8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov21_021E8B40
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E891C

	thumb_func_start ov21_021E894C
ov21_021E894C: @ 0x021E894C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x20
	str r0, [sp]
	adds r4, r1, #0
	str r2, [sp, #4]
	ldr r0, [r4]
	movs r1, #9
	movs r2, #4
	movs r3, #0x80
	bl ov21_021D276C
	adds r0, r5, #0
	bl ov21_021E8B34
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E8BDC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E8A74
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _021E8986
	bl FUN_020181C4
_021E8986:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E894C

	thumb_func_start ov21_021E898C
ov21_021E898C: @ 0x021E898C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	str r5, [sp, #0xc]
	ldr r2, [r0]
	movs r1, #0x22
	movs r3, #6
	bl ov21_021D2724
	str r5, [sp]
	ldr r0, [r4]
	movs r1, #0x3a
	movs r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r0, [r0]
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #6
	ldr r0, [r0]
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E898C

	thumb_func_start ov21_021E89F4
ov21_021E89F4: @ 0x021E89F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r6, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov21_021D26E0
	adds r7, r0, #0
	ldr r0, _021E8A68 @ =0x0000332E
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #5
	str r4, [sp, #8]
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r2, #0x66
	movs r3, #1
	bl FUN_02009A4C
	str r0, [r5, #8]
	bl FUN_0200A3DC
	ldr r0, [r5, #8]
	bl FUN_02009D4C
	ldr r0, _021E8A6C @ =0x0000332C
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x52
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x64
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x10]
	ldr r0, _021E8A70 @ =0x0000332D
	adds r1, r7, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x53
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #0x65
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0x14]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E8A68: .4byte 0x0000332E
_021E8A6C: .4byte 0x0000332C
_021E8A70: .4byte 0x0000332D
	thumb_func_end ov21_021E89F4

	thumb_func_start ov21_021E8A74
ov21_021E8A74: @ 0x021E8A74
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	ldr r4, [r1]
	bl FUN_0200A4E4
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r1, [r5, #8]
	bl FUN_02009D68
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x10]
	bl FUN_02009D68
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, #0x14]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E8A74

	thumb_func_start ov21_021E8AA8
ov21_021E8AA8: @ 0x021E8AA8
	push {r4, r5, r6, lr}
	sub sp, #0x70
	ldr r4, [r1]
	ldr r3, _021E8B2C @ =0x0000332D
	adds r5, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #5
	lsls r0, r0, #6
	adds r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r4, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	ldr r2, _021E8B30 @ =0x0000083F
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	adds r1, r3, #1
	add r0, sp, #0x4c
	subs r3, r3, #1
	bl FUN_020093B4
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #9
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0x1f
	str r0, [sp, #0x40]
	movs r0, #2
	str r0, [sp, #0x44]
	lsls r0, r0, #0x12
	str r0, [sp, #0x34]
	movs r0, #3
	lsls r1, r1, #0x10
	lsls r0, r0, #0x12
	str r1, [sp, #0x38]
	adds r0, r1, r0
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl FUN_02021B90
	movs r1, #2
	str r0, [r5]
	bl FUN_02021D6C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
_021E8B2C: .4byte 0x0000332D
_021E8B30: .4byte 0x0000083F
	thumb_func_end ov21_021E8AA8

	thumb_func_start ov21_021E8B34
ov21_021E8B34: @ 0x021E8B34
	ldr r3, _021E8B3C @ =FUN_02021BD4
	ldr r0, [r0]
	bx r3
	nop
_021E8B3C: .4byte FUN_02021BD4
	thumb_func_end ov21_021E8B34

	thumb_func_start ov21_021E8B40
ov21_021E8B40: @ 0x021E8B40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r2, #0
	ldr r4, [r1]
	cmp r0, #0
	bne _021E8B54
	bl FUN_02022974
_021E8B54:
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _021E8BD4 @ =0x0000083F
	bl FUN_02009DC8
	movs r1, #0x15
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	str r1, [sp, #8]
	movs r1, #0
	bl FUN_0200A72C
	movs r1, #7
	mvns r1, r1
	str r1, [sp, #0x1c]
	movs r1, #2
	movs r2, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x20]
	str r2, [sp, #0x24]
	str r1, [sp, #0x28]
	str r6, [sp, #0x2c]
	bl FUN_0201FAB4
	adds r7, r0, #0
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x10
	movs r2, #2
	bl ov21_021D4D6C
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	ldr r2, _021E8BD8 @ =0x000002B9
	adds r1, r6, #0
	movs r3, #0x65
	bl ov21_021D4DAC
	lsrs r0, r0, #1
	rsbs r0, r0, #0
	str r6, [sp, #0xc]
	str r0, [sp, #0x18]
	ldr r0, [r5]
	str r0, [sp, #0x14]
	add r0, sp, #8
	bl ov21_021D4CA0
	str r0, [r5, #4]
	ldr r0, [r0]
	adds r1, r7, #4
	bl FUN_02012A60
	adds r0, r6, #0
	bl ov21_021D4DA0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021E8BD4: .4byte 0x0000083F
_021E8BD8: .4byte 0x000002B9
	thumb_func_end ov21_021E8B40

	thumb_func_start ov21_021E8BDC
ov21_021E8BDC: @ 0x021E8BDC
	ldr r3, _021E8BE4 @ =ov21_021D4D1C
	ldr r0, [r0, #4]
	bx r3
	nop
_021E8BE4: .4byte ov21_021D4D1C
	thumb_func_end ov21_021E8BDC

	thumb_func_start ov21_021E8BE8
ov21_021E8BE8: @ 0x021E8BE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r1, #0
	adds r1, r3, #0
	str r2, [sp, #0xc]
	ldr r4, [sp, #0x30]
	ldr r6, [sp, #0x40]
	movs r5, #0
	bl ov21_021D144C
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x38]
	bl ov21_021E8C94
	ldr r0, [sp, #8]
	bl FUN_02021E74
	cmp r0, #3
	bhi _021E8C5A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E8C26: @ jump table
	.2byte _021E8C2E - _021E8C26 - 2 @ case 0
	.2byte _021E8C2E - _021E8C26 - 2 @ case 1
	.2byte _021E8C3E - _021E8C26 - 2 @ case 2
	.2byte _021E8C4C - _021E8C26 - 2 @ case 3
_021E8C2E:
	ldr r0, [r4]
	cmp r0, #0
	beq _021E8C5A
	movs r0, #0
	movs r5, #1
	movs r7, #9
	str r0, [r4]
	b _021E8C5A
_021E8C3E:
	ldr r0, [r4]
	cmp r0, #1
	beq _021E8C5A
	movs r5, #1
	movs r7, #0xa
	str r5, [r4]
	b _021E8C5A
_021E8C4C:
	ldr r0, [r4]
	cmp r0, #2
	beq _021E8C5A
	movs r0, #2
	movs r5, #1
	movs r7, #8
	str r0, [r4]
_021E8C5A:
	cmp r5, #0
	beq _021E8C90
	ldr r0, [r6]
	cmp r0, #0
	beq _021E8C68
	bl FUN_020181C4
_021E8C68:
	ldr r0, [sp, #4]
	ldr r3, [sp, #0x34]
	ldr r0, [r0]
	adds r1, r7, #0
	add r2, sp, #0x10
	bl ov21_021D27E0
	str r0, [r6]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x2c]
	ldr r2, [r2, #0xc]
	movs r0, #0x1f
	lsls r1, r1, #5
	movs r3, #0x20
	bl FUN_0201DC68
	cmp r0, #0
	bne _021E8C90
	bl FUN_02022974
_021E8C90:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E8BE8

	thumb_func_start ov21_021E8C94
ov21_021E8C94: @ 0x021E8C94
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	bl ov21_021D1498
	adds r0, r5, #0
	bl FUN_02021E74
	cmp r0, #2
	ldr r0, [r4]
	bge _021E8CB4
	adds r1, r6, #0
	bl FUN_02012AC0
	pop {r4, r5, r6, pc}
_021E8CB4:
	ldr r1, [sp, #0x10]
	bl FUN_02012AC0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E8C94

	thumb_func_start ov21_021E8CBC
ov21_021E8CBC: @ 0x021E8CBC
	push {r4, r5, lr}
	sub sp, #0x1c
	adds r5, r1, #0
	movs r1, #7
	mvns r1, r1
	adds r4, r2, #0
	str r1, [sp]
	movs r2, #4
	adds r1, r5, #0
	str r2, [sp, #4]
	adds r1, #0x28
	str r1, [sp, #8]
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r1, #1
	str r1, [sp, #0x14]
	adds r1, r5, #0
	adds r1, #0x2c
	str r1, [sp, #0x18]
	ldr r1, [r5]
	ldr r2, [r5, #4]
	ldr r3, [r4, #0x10]
	bl ov21_021E8BE8
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov21_021E8CBC

	thumb_func_start ov21_021E8CF0
ov21_021E8CF0: @ 0x021E8CF0
	ldr r1, _021E8D00 @ =0x021BF67C
	ldr r2, [r1, #0x44]
	movs r1, #1
	tst r2, r1
	beq _021E8CFC
	str r1, [r0, #0x14]
_021E8CFC:
	bx lr
	nop
_021E8D00: .4byte 0x021BF67C
	thumb_func_end ov21_021E8CF0

	thumb_func_start ov21_021E8D04
ov21_021E8D04: @ 0x021E8D04
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r1, #8]
	bl ov21_021E33BC
	cmp r0, #1
	bne _021E8D24
	movs r0, #0x40
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x90
	movs r3, #0xe4
	bl ov21_021E8D28
_021E8D24:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov21_021E8D04

	thumb_func_start ov21_021E8D28
ov21_021E8D28: @ 0x021E8D28
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r0, [r0]
	bl ov21_021D2574
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E8D28

	thumb_func_start ov21_021E8D3C
ov21_021E8D3C: @ 0x021E8D3C
	ldr r3, _021E8D44 @ =ov21_021DF7A0
	ldr r0, [r0, #0xc]
	movs r1, #1
	bx r3
	.align 2, 0
_021E8D44: .4byte ov21_021DF7A0
	thumb_func_end ov21_021E8D3C

	thumb_func_start ov21_021E8D48
ov21_021E8D48: @ 0x021E8D48
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r1, #0x7a
	ldr r0, [r5, #0xc]
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x7a
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, [r5, #0x10]
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	ldr r0, [r5, #0x10]
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	ldr r1, _021E8DC8 @ =0x000001E7
	cmp r6, r1
	bne _021E8D86
	bl FUN_02098988
	b _021E8D8C
_021E8D86:
	movs r0, #1
	bl FUN_02098988
_021E8D8C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov21_021E8E0C
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl ov21_021E98D8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	movs r2, #0xa
	movs r3, #0xf
	bl ov21_021E98F8
	ldr r0, _021E8DCC @ =ov21_021E9828
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	movs r1, #7
	lsls r1, r1, #6
	str r0, [r4, r1]
	adds r0, r4, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021E8DC8: .4byte 0x000001E7
_021E8DCC: .4byte ov21_021E9828
	thumb_func_end ov21_021E8D48

	thumb_func_start ov21_021E8DD0
ov21_021E8DD0: @ 0x021E8DD0
	push {r4, lr}
	adds r4, r0, #0
	bl ov21_021E900C
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E8DD0

	thumb_func_start ov21_021E8DEC
ov21_021E8DEC: @ 0x021E8DEC
	movs r1, #0x6e
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	cmp r0, #4
	bne _021E8DFA
	movs r0, #1
	bx lr
_021E8DFA:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov21_021E8DEC

	thumb_func_start ov21_021E8E00
ov21_021E8E00: @ 0x021E8E00
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov21_021E8E00

	thumb_func_start ov21_021E8E04
ov21_021E8E04: @ 0x021E8E04
	movs r2, #0x79
	lsls r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov21_021E8E04

	thumb_func_start ov21_021E8E0C
ov21_021E8E0C: @ 0x021E8E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	adds r5, r0, #0
	movs r0, #0x45
	bl FUN_02006C24
	adds r6, r0, #0
	ldr r0, [r4, #0x10]
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x6f
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	ldr r0, [r4]
	adds r1, r5, #0
	str r0, [r5]
	ldr r2, [r4, #0xc]
	movs r0, #0x20
	adds r1, #0x10
	bl FUN_020095C4
	movs r1, #0x4e
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #0xc]
	bl FUN_02022014
	ldr r0, [r4, #0xc]
	bl ov21_021E9A0C
	ldr r0, [r4, #0xc]
	movs r2, #0x30
	str r0, [sp]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x10]
	movs r3, #0x48
	bl ov21_021E99E0
	str r0, [r5, #0xc]
	ldr r0, [r4, #4]
	str r0, [r5, #8]
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r5]
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	str r0, [sp, #0x10]
	add r0, sp, #4
	bl ov21_021D4C0C
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	bl ov21_021E90B0
	movs r1, #0x3f
	adds r2, r1, #0
	ldr r0, _021E9008 @ =0x04000050
	subs r2, #0x4f
	blx FUN_020BF578
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	bl ov21_021E91B0
	str r0, [r5, #4]
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r1, [r4, #0xc]
	adds r0, r5, r0
	bl ov21_021E9208
	movs r1, #0x15
	lsls r1, r1, #4
	adds r0, r5, r1
	subs r1, #0x14
	ldr r2, [r4, #0xc]
	adds r1, r5, r1
	adds r3, r6, #0
	bl ov21_021D2B88
	movs r2, #0x15
	lsls r2, r2, #4
	movs r0, #2
	str r0, [sp]
	adds r1, r2, #0
	subs r1, #0x18
	adds r0, r5, r2
	subs r2, #0x14
	ldr r1, [r5, r1]
	ldr r3, [r4, #0xc]
	adds r2, r5, r2
	bl ov21_021D2D88
	ldr r0, [r4, #0x14]
	movs r3, #0x15
	lsls r3, r3, #4
	str r0, [sp]
	subs r1, r3, #4
	adds r0, r5, r3
	adds r3, #0x6c
	ldr r1, [r5, r1]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, r3]
	bl ov21_021E9240
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0xac
	movs r2, #0x20
	bl ov21_021D1858
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl ov21_021D2E44
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r2, [r5, r0]
	adds r0, #0x2b
	cmp r2, r0
	bne _021E8F2C
	cmp r7, #0
	ble _021E8F2C
	movs r2, #0xb
_021E8F2C:
	movs r1, #6
	lsls r1, r1, #6
	adds r0, r5, r1
	subs r1, #0x44
	ldr r3, [r4, #0xc]
	adds r1, r5, r1
	bl ov21_021E9458
	movs r2, #6
	lsls r2, r2, #6
	adds r1, r2, #0
	subs r1, #0x48
	adds r0, r5, r2
	subs r2, #0x44
	ldr r1, [r5, r1]
	ldr r3, [r4, #0xc]
	adds r2, r5, r2
	bl ov21_021E94B0
	movs r2, #0x67
	lsls r2, r2, #2
	str r6, [sp]
	adds r1, r2, #0
	adds r0, r5, r2
	adds r2, #0x20
	subs r1, #0x60
	ldr r2, [r5, r2]
	ldr r3, [r4, #0xc]
	adds r1, r5, r1
	bl ov21_021E95BC
	movs r2, #0x6f
	lsls r2, r2, #2
	ldr r0, [r5, r2]
	adds r1, r2, #0
	str r0, [sp]
	adds r0, r2, #0
	subs r1, #0x84
	subs r0, #0x20
	subs r2, #0x80
	ldr r1, [r5, r1]
	ldr r3, [r4, #0xc]
	adds r0, r5, r0
	adds r2, r5, r2
	bl ov21_021E95F8
	movs r2, #0x69
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [sp]
	adds r1, r2, #0
	adds r0, r2, #0
	subs r1, #0x6c
	subs r0, #0x10
	subs r2, #0x68
	ldr r1, [r5, r1]
	ldr r3, [r4, #0xc]
	adds r0, r5, r0
	adds r2, r5, r2
	bl ov21_021E9504
	movs r3, #0x16
	lsls r3, r3, #4
	ldr r0, [r5, r3]
	adds r1, r3, #0
	str r0, [sp]
	adds r0, r3, #0
	subs r1, #0x14
	adds r3, #0x5c
	adds r0, #0x34
	ldr r1, [r5, r1]
	ldr r2, [r4, #0xc]
	ldr r3, [r5, r3]
	adds r0, r5, r0
	bl ov21_021E9560
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	adds r2, r6, #0
	bl ov21_021E96A8
	ldr r0, [r5]
	ldr r1, [r4, #0xc]
	adds r2, r6, #0
	bl ov21_021E97C4
	movs r2, #0x6f
	lsls r2, r2, #2
	ldr r0, [r5, #4]
	ldr r1, [r4, #0xc]
	ldr r2, [r5, r2]
	bl ov21_021E9968
	movs r0, #0x71
	lsls r0, r0, #2
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x14]
	adds r0, r5, r0
	adds r3, r6, #0
	bl ov21_021E9A40
	movs r0, #0x79
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r6, #0
	bl FUN_02006CA8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021E9008: .4byte 0x04000050
	thumb_func_end ov21_021E8E0C

	thumb_func_start ov21_021E900C
ov21_021E900C: @ 0x021E900C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x71
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov21_021E9AC8
	movs r0, #0x67
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov21_021E968C
	movs r1, #0x67
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x60
	adds r1, r4, r1
	bl ov21_021E95EC
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov21_021E95B0
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov21_021E9554
	movs r0, #6
	lsls r0, r0, #6
	adds r0, r4, r0
	bl ov21_021E94F8
	movs r1, #6
	lsls r1, r1, #6
	adds r0, r4, r1
	subs r1, #0x44
	adds r1, r4, r1
	bl ov21_021E94A4
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov21_021E92B0
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov21_021D2E1C
	movs r1, #0x15
	lsls r1, r1, #4
	adds r0, r4, r1
	subs r1, #0x14
	adds r1, r4, r1
	bl ov21_021D2C58
	movs r0, #0x4f
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov21_021E9228
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02021964
	ldr r0, [r4, #4]
	bl ov21_021E91F0
	ldr r0, [r4]
	bl ov21_021E9194
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov21_021D4C6C
	bl ov21_021E9A38
	pop {r4, pc}
	thumb_func_end ov21_021E900C

	thumb_func_start ov21_021E90B0
ov21_021E90B0: @ 0x021E90B0
	push {r4, r5, lr}
	sub sp, #0x54
	ldr r3, _021E9188 @ =0x021E9F30
	adds r5, r0, #0
	adds r4, r1, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x38
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r1, #1
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_02019044
	adds r0, r5, #0
	movs r1, #1
	add r2, sp, #0x38
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r3, _021E918C @ =0x021E9F14
	add r2, sp, #0x1c
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r1, #2
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_02019044
	adds r0, r5, #0
	movs r1, #2
	add r2, sp, #0x1c
	movs r3, #0
	bl FUN_020183C4
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02019044
	ldr r3, _021E9190 @ =0x021E9F4C
	add r2, sp, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r1, #3
	str r0, [r2]
	adds r0, r5, #0
	bl FUN_02019044
	adds r0, r5, #0
	movs r1, #3
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019690
	adds r0, r5, #0
	movs r1, #3
	bl FUN_02019EBC
	add sp, #0x54
	pop {r4, r5, pc}
	.align 2, 0
_021E9188: .4byte 0x021E9F30
_021E918C: .4byte 0x021E9F14
_021E9190: .4byte 0x021E9F4C
	thumb_func_end ov21_021E90B0

	thumb_func_start ov21_021E9194
ov21_021E9194: @ 0x021E9194
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019044
	pop {r4, pc}
	thumb_func_end ov21_021E9194

	thumb_func_start ov21_021E91B0
ov21_021E91B0: @ 0x021E91B0
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r0, r1, #0
	movs r1, #1
	bl FUN_0201A778
	adds r4, r0, #0
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	str r3, [sp, #0x10]
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201A954
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E91B0

	thumb_func_start ov21_021E91F0
ov21_021E91F0: @ 0x021E91F0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl FUN_0201A8FC
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0201A928
	pop {r4, pc}
	thumb_func_end ov21_021E91F0

	thumb_func_start ov21_021E9208
ov21_021E9208: @ 0x021E9208
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	movs r7, #8
_021E9212:
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02009714
	adds r4, r4, #1
	stm r5!, {r0}
	cmp r4, #4
	blt _021E9212
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E9208

	thumb_func_start ov21_021E9228
ov21_021E9228: @ 0x021E9228
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_021E9230:
	ldr r0, [r5]
	bl FUN_02009754
	adds r4, r4, #1
	stm r5!, {r6}
	cmp r4, #4
	blt _021E9230
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E9228

	thumb_func_start ov21_021E9240
ov21_021E9240: @ 0x021E9240
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	adds r4, r1, #0
	str r4, [sp, #4]
	movs r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0200A72C
	str r0, [sp, #0xc]
	ldr r0, [r5]
	str r0, [sp, #0x10]
	movs r0, #0x3f
	mvns r0, r0
	str r0, [sp, #0x14]
	adds r0, #0x38
	str r0, [sp, #0x18]
	movs r0, #2
	str r0, [sp, #0x1c]
	movs r0, #0
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	str r6, [sp, #0x28]
	cmp r0, #0
	bne _021E9286
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov21_021D172C
	b _021E9290
_021E9286:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov21_021D170C
_021E9290:
	adds r4, r0, #0
	ldr r0, [sp, #0x40]
	str r4, [sp, #8]
	str r0, [sp]
	adds r0, r5, #0
	add r1, sp, #4
	movs r2, #0
	adds r3, r7, #0
	bl ov21_021D22F8
	adds r0, r4, #0
	bl ov21_021D4DA0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E9240

	thumb_func_start ov21_021E92B0
ov21_021E92B0: @ 0x021E92B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021E92C2
	bl ov21_021D4D1C
	movs r0, #0
	str r0, [r4, #8]
_021E92C2:
	pop {r4, pc}
	thumb_func_end ov21_021E92B0

	thumb_func_start ov21_021E92C4
ov21_021E92C4: @ 0x021E92C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r7, [sp, #0x3c]
	str r3, [sp, #0x10]
	str r7, [sp]
	movs r3, #1
	adds r6, r2, #0
	str r3, [sp, #4]
	adds r4, r1, #0
	str r6, [sp, #8]
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x28]
	bl FUN_0200985C
	str r0, [r5]
	bl FUN_0200A3DC
	ldr r0, [r5]
	bl FUN_02009D4C
	str r7, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x2c]
	movs r3, #0
	bl FUN_020098B8
	str r0, [r5, #4]
	bl FUN_0200A640
	ldr r0, [r5, #4]
	bl FUN_02009D4C
	str r7, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	movs r3, #1
	bl FUN_02009918
	str r0, [r5, #8]
	str r7, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	movs r3, #1
	bl FUN_02009918
	str r0, [r5, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E92C4

	thumb_func_start ov21_021E9344
ov21_021E9344: @ 0x021E9344
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r7, [sp, #0x3c]
	str r3, [sp, #0x10]
	str r7, [sp]
	movs r3, #1
	adds r6, r2, #0
	str r3, [sp, #4]
	adds r4, r1, #0
	str r6, [sp, #8]
	adds r5, r0, #0
	ldr r0, [r4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x28]
	bl FUN_02009A4C
	str r0, [r5]
	bl FUN_0200A3DC
	ldr r0, [r5]
	bl FUN_02009D4C
	str r7, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r4, #4]
	ldr r2, [sp, #0x2c]
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #4]
	bl FUN_0200A640
	ldr r0, [r5, #4]
	bl FUN_02009D4C
	str r7, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #8]
	str r7, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	movs r3, #1
	bl FUN_02009BC4
	str r0, [r5, #0xc]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E9344

	thumb_func_start ov21_021E93C4
ov21_021E93C4: @ 0x021E93C4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl FUN_0200A4E4
	ldr r0, [r5, #4]
	bl FUN_0200A6DC
	ldr r0, [r4]
	ldr r1, [r5]
	bl FUN_02009D68
	ldr r0, [r4, #4]
	ldr r1, [r5, #4]
	bl FUN_02009D68
	ldr r0, [r4, #8]
	ldr r1, [r5, #8]
	bl FUN_02009D68
	ldr r0, [r4, #0xc]
	ldr r1, [r5, #0xc]
	bl FUN_02009D68
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E93C4

	thumb_func_start ov21_021E93F8
ov21_021E93F8: @ 0x021E93F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	bl FUN_02009E08
	str r0, [sp, #0x2c]
	ldr r0, [r5, #4]
	bl FUN_02009E08
	str r0, [sp, #0x30]
	ldr r0, [r5, #8]
	bl FUN_02009E08
	str r0, [sp, #0x34]
	ldr r0, [r5, #0xc]
	bl FUN_02009E08
	str r0, [sp]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r6, [sp, #0x10]
	ldr r1, [r4]
	ldr r2, [sp, #0x30]
	str r1, [sp, #0x14]
	ldr r1, [r4, #4]
	ldr r3, [sp, #0x34]
	str r1, [sp, #0x18]
	ldr r1, [r4, #8]
	str r1, [sp, #0x1c]
	ldr r1, [r4, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	adds r0, r7, #0
	bl FUN_020093B4
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E93F8

	thumb_func_start ov21_021E9458
ov21_021E9458: @ 0x021E9458
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r4, r2, #0
	adds r5, r0, #0
	str r1, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl ov21_021D1F90
	str r0, [sp, #0x20]
	adds r0, r4, #0
	bl ov21_021D1F94
	adds r4, r0, #0
	bl ov21_021D1F98
	adds r6, r0, #0
	bl ov21_021D1F9C
	adds r7, r0, #0
	bl ov21_021D1FA0
	str r4, [sp]
	str r6, [sp, #4]
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0xfa
	lsls r0, r0, #4
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	adds r0, r5, #4
	bl ov21_021E92C4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E9458

	thumb_func_start ov21_021E94A4
ov21_021E94A4: @ 0x021E94A4
	ldr r3, _021E94AC @ =ov21_021E93C4
	adds r0, r0, #4
	bx r3
	nop
_021E94AC: .4byte ov21_021E93C4
	thumb_func_end ov21_021E94A4

	thumb_func_start ov21_021E94B0
ov21_021E94B0: @ 0x021E94B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	adds r1, r2, #0
	adds r0, r5, #4
	add r2, sp, #0
	movs r3, #2
	bl ov21_021E93F8
	add r0, sp, #0
	str r0, [sp, #0x28]
	movs r0, #1
	str r0, [sp, #0x3c]
	movs r0, #0x20
	str r0, [sp, #0x38]
	movs r0, #0x1e
	lsls r0, r0, #0xe
	str r0, [sp, #0x2c]
	movs r0, #0x16
	lsls r0, r0, #0xe
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	str r4, [sp, #0x24]
	str r6, [sp, #0x40]
	bl FUN_02021B90
	str r0, [r5]
	cmp r0, #0
	bne _021E94F2
	bl FUN_02022974
_021E94F2:
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E94B0

	thumb_func_start ov21_021E94F8
ov21_021E94F8: @ 0x021E94F8
	ldr r3, _021E9500 @ =FUN_02021BD4
	ldr r0, [r0]
	bx r3
	nop
_021E9500: .4byte FUN_02021BD4
	thumb_func_end ov21_021E94F8

	thumb_func_start ov21_021E9504
ov21_021E9504: @ 0x021E9504
	push {r3, r4, r5, r6, lr}
	sub sp, #0x44
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	adds r1, r2, #0
	ldr r0, [sp, #0x58]
	add r2, sp, #0
	movs r3, #2
	bl ov21_021E93F8
	add r0, sp, #0
	str r0, [sp, #0x28]
	movs r0, #1
	str r0, [sp, #0x3c]
	movs r0, #0x20
	str r0, [sp, #0x38]
	movs r0, #3
	lsls r0, r0, #0x12
	str r0, [sp, #0x2c]
	movs r0, #0xd
	lsls r0, r0, #0xe
	str r0, [sp, #0x30]
	add r0, sp, #0x24
	str r4, [sp, #0x24]
	str r6, [sp, #0x40]
	bl FUN_02021B90
	str r0, [r5]
	cmp r0, #0
	bne _021E9546
	bl FUN_02022974
_021E9546:
	ldr r0, [r5]
	movs r1, #0x11
	bl FUN_02021D6C
	add sp, #0x44
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E9504

	thumb_func_start ov21_021E9554
ov21_021E9554: @ 0x021E9554
	ldr r3, _021E955C @ =FUN_02021BD4
	ldr r0, [r0]
	bx r3
	nop
_021E955C: .4byte FUN_02021BD4
	thumb_func_end ov21_021E9554

	thumb_func_start ov21_021E9560
ov21_021E9560: @ 0x021E9560
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r7, r1, #0
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r3, #0
	adds r6, r2, #0
	bl ov21_021DF30C
	adds r4, r0, #0
	ldr r0, [sp, #0x40]
	str r7, [sp]
	movs r1, #0
	bl FUN_0200A72C
	str r0, [sp, #8]
	ldr r0, [r5]
	str r0, [sp, #0xc]
	movs r0, #0x4d
	mvns r0, r0
	str r0, [sp, #0x10]
	adds r0, #0x46
	str r0, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0x18]
	movs r0, #0x1f
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp, #0x20]
	str r6, [sp, #0x24]
	str r4, [sp, #4]
	add r0, sp, #0
	bl ov21_021D4CA0
	str r0, [r5, #4]
	adds r0, r4, #0
	bl ov21_021D4DA0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E9560

	thumb_func_start ov21_021E95B0
ov21_021E95B0: @ 0x021E95B0
	ldr r3, _021E95B8 @ =ov21_021D4D1C
	ldr r0, [r0, #4]
	bx r3
	nop
_021E95B8: .4byte ov21_021D4D1C
	thumb_func_end ov21_021E95B0

	thumb_func_start ov21_021E95BC
ov21_021E95BC: @ 0x021E95BC
	push {r3, lr}
	sub sp, #0x18
	movs r2, #0x5a
	str r2, [sp]
	movs r2, #0xd
	str r2, [sp, #4]
	movs r2, #0x58
	str r2, [sp, #8]
	movs r2, #0x59
	str r2, [sp, #0xc]
	movs r2, #5
	str r2, [sp, #0x10]
	ldr r2, _021E95E8 @ =0x00004268
	adds r0, #8
	str r2, [sp, #0x14]
	adds r2, r3, #0
	ldr r3, [sp, #0x20]
	bl ov21_021E9344
	add sp, #0x18
	pop {r3, pc}
	nop
_021E95E8: .4byte 0x00004268
	thumb_func_end ov21_021E95BC

	thumb_func_start ov21_021E95EC
ov21_021E95EC: @ 0x021E95EC
	ldr r3, _021E95F4 @ =ov21_021E93C4
	adds r0, #8
	bx r3
	nop
_021E95F4: .4byte ov21_021E93C4
	thumb_func_end ov21_021E95EC

	thumb_func_start ov21_021E95F8
ov21_021E95F8: @ 0x021E95F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x60]
	movs r1, #6
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_020759F0
	adds r4, r0, #0
	ldr r0, [sp, #0x60]
	movs r1, #7
	bl FUN_020759F0
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov21_021DF180
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov21_021DF180
	adds r6, r0, #0
	adds r0, r5, #0
	ldr r1, [sp]
	adds r0, #8
	add r2, sp, #8
	movs r3, #2
	bl ov21_021E93F8
	add r0, sp, #8
	str r0, [sp, #0x30]
	movs r0, #1
	str r0, [sp, #0x44]
	movs r0, #0x20
	str r0, [sp, #0x40]
	ldr r0, [sp, #4]
	str r7, [sp, #0x2c]
	str r0, [sp, #0x48]
	movs r0, #0xaa
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	movs r0, #0x12
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	adds r1, r4, #0
	str r0, [r5]
	bl FUN_02021D6C
	cmp r4, r6
	beq _021E9684
	movs r0, #0x37
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r0, #0x12
	lsls r0, r0, #0xe
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	adds r1, r6, #0
	str r0, [r5, #4]
	bl FUN_02021D6C
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_021E9684:
	movs r0, #0
	str r0, [r5, #4]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov21_021E95F8

	thumb_func_start ov21_021E968C
ov21_021E968C: @ 0x021E968C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021E969A
	bl FUN_02021BD4
_021E969A:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E96A4
	bl FUN_02021BD4
_021E96A4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov21_021E968C

	thumb_func_start ov21_021E96A8
ov21_021E96A8: @ 0x021E96A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r2, #0
	movs r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp]
	adds r0, r6, #0
	movs r1, #6
	adds r3, r2, #0
	str r4, [sp, #4]
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x21
	adds r2, r5, #0
	movs r3, #3
	bl FUN_020070E8
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x32
	movs r2, #1
	add r3, sp, #0x10
	bl FUN_020071D0
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r7, r0, #0
	ldrh r0, [r2]
	movs r1, #3
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r5, #0
	bl FUN_020198C0
	adds r0, r7, #0
	bl FUN_020181C4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x33
	movs r2, #1
	add r3, sp, #0x10
	bl FUN_020071D0
	ldr r2, [sp, #0x10]
	movs r1, #3
	str r1, [sp]
	adds r7, r0, #0
	ldrh r0, [r2]
	movs r3, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r5, #0
	bl FUN_020198C0
	adds r0, r7, #0
	bl FUN_020181C4
	adds r0, r6, #0
	movs r1, #0x34
	movs r2, #1
	add r3, sp, #0x10
	str r4, [sp]
	bl FUN_020071D0
	adds r7, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r5, #0
	bl FUN_020198C0
	adds r0, r7, #0
	bl FUN_020181C4
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x36
	movs r2, #1
	add r3, sp, #0x10
	bl FUN_020071D0
	adds r4, r0, #0
	ldr r2, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp]
	ldrh r0, [r2]
	movs r1, #3
	movs r3, #0
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r5, #0
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #3
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov21_021E96A8

	thumb_func_start ov21_021E97C4
ov21_021E97C4: @ 0x021E97C4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	adds r4, r1, #0
	adds r6, r2, #0
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x21
	adds r2, r5, #0
	movs r3, #2
	bl FUN_020070E8
	str r4, [sp]
	adds r0, r6, #0
	movs r1, #0x39
	movs r2, #1
	add r3, sp, #0x10
	bl FUN_020071D0
	ldr r2, [sp, #0x10]
	movs r3, #0
	str r3, [sp]
	adds r4, r0, #0
	ldrh r0, [r2]
	movs r1, #2
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	adds r0, r5, #0
	bl FUN_020198C0
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #2
	bl FUN_0201C3C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov21_021E97C4

	thumb_func_start ov21_021E9828
ov21_021E9828: @ 0x021E9828
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0x6e
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #4
	bhi _021E98B4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021E9844: @ jump table
	.2byte _021E984E - _021E9844 - 2 @ case 0
	.2byte _021E985C - _021E9844 - 2 @ case 1
	.2byte _021E9874 - _021E9844 - 2 @ case 2
	.2byte _021E98A2 - _021E9844 - 2 @ case 3
	.2byte _021E98B4 - _021E9844 - 2 @ case 4
_021E984E:
	ldr r0, _021E98D4 @ =0x04000050
	movs r2, #0
	strh r2, [r0]
	ldr r0, [r4, r1]
	adds r0, r0, #1
	str r0, [r4, r1]
	b _021E98B4
_021E985C:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl ov21_021E9948
	cmp r0, #0
	beq _021E98B4
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _021E98B4
_021E9874:
	adds r2, r1, #0
	adds r2, #0x47
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	movs r0, #0xe
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r3, r2, #0
	bl FUN_020059D0
	cmp r0, #0
	bne _021E9896
	bl FUN_02022974
_021E9896:
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _021E98B4
_021E98A2:
	bl FUN_0200598C
	cmp r0, #0
	bne _021E98B4
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_021E98B4:
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _021E98C6
	subs r0, #0x20
	adds r0, r4, r0
	bl ov21_021E9A9C
_021E98C6:
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020219F8
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_021E98D4: .4byte 0x04000050
	thumb_func_end ov21_021E9828

	thumb_func_start ov21_021E98D8
ov21_021E98D8: @ 0x021E98D8
	push {r4, lr}
	movs r1, #0
	movs r3, #2
	adds r2, r1, #0
	lsls r3, r3, #8
	adds r4, r0, #0
	bl FUN_02003070
	movs r3, #7
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	lsls r3, r3, #6
	bl FUN_02003070
	pop {r4, pc}
	thumb_func_end ov21_021E98D8

	thumb_func_start ov21_021E98F8
ov21_021E98F8: @ 0x021E98F8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [sp, #0x20]
	adds r4, r3, #0
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	bl FUN_020086FC
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	lsls r3, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	ldr r2, _021E9944 @ =0x0000FFFF
	adds r0, r5, #0
	movs r1, #5
	asrs r3, r3, #0x18
	bl FUN_02003178
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02003858
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021E9944: .4byte 0x0000FFFF
	thumb_func_end ov21_021E98F8

	thumb_func_start ov21_021E9948
ov21_021E9948: @ 0x021E9948
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200384C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_020087B4
	cmp r4, #0
	bne _021E9964
	cmp r0, #0
	bne _021E9964
	movs r0, #1
	pop {r3, r4, r5, pc}
_021E9964:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E9948

	thumb_func_start ov21_021E9968
ov21_021E9968: @ 0x021E9968
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldr r1, _021E9988 @ =0x00020100
	adds r5, r0, #0
	str r1, [sp]
	adds r1, r2, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov21_021DEB8C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov21_021E998C
	pop {r3, r4, r5, pc}
	nop
_021E9988: .4byte 0x00020100
	thumb_func_end ov21_021E9968

	thumb_func_start ov21_021E998C
ov21_021E998C: @ 0x021E998C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r0, #0x40
	adds r4, r1, #0
	bl FUN_02023790
	adds r5, r0, #0
	ldr r2, _021E99DC @ =0x000002B9
	movs r0, #0
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	movs r1, #0x6e
	adds r2, r5, #0
	adds r4, r0, #0
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #0xc1
	str r1, [sp, #4]
	lsls r0, r0, #0xa
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0x20
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B190
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_021E99DC: .4byte 0x000002B9
	thumb_func_end ov21_021E998C

	thumb_func_start ov21_021E99E0
ov21_021E99E0: @ 0x021E99E0
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r4, r2, #0
	add r0, sp, #0x10
	movs r2, #2
	adds r6, r3, #0
	bl FUN_02075EF4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	adds r0, r5, #0
	add r1, sp, #0x10
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_02007C34
	add sp, #0x20
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021E99E0

	thumb_func_start ov21_021E9A0C
ov21_021E9A0C: @ 0x021E9A0C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r4, _021E9A30 @ =0x021E9F04
	add r3, sp, #0
	adds r5, r0, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	ldr r1, _021E9A34 @ =0x00200010
	movs r2, #0x10
	str r5, [sp, #0xc]
	bl FUN_0201E88C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021E9A30: .4byte 0x021E9F04
_021E9A34: .4byte 0x00200010
	thumb_func_end ov21_021E9A0C

	thumb_func_start ov21_021E9A38
ov21_021E9A38: @ 0x021E9A38
	ldr r3, _021E9A3C @ =FUN_0201E958
	bx r3
	.align 2, 0
_021E9A3C: .4byte FUN_0201E958
	thumb_func_end ov21_021E9A38

	thumb_func_start ov21_021E9A40
ov21_021E9A40: @ 0x021E9A40
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r3, #0
	cmp r2, #0
	bne _021E9A5C
	adds r2, r5, #0
	adds r0, r6, #0
	movs r1, #0x17
	adds r2, #8
	adds r3, r4, #0
	bl FUN_020071EC
	b _021E9A6A
_021E9A5C:
	adds r2, r5, #0
	adds r0, r6, #0
	movs r1, #0x18
	adds r2, #8
	adds r3, r4, #0
	bl FUN_020071EC
_021E9A6A:
	adds r2, r5, #0
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x1a
	adds r2, #0xc
	adds r3, r4, #0
	bl FUN_020071EC
	str r0, [r5, #4]
	movs r1, #0
	str r1, [r5, #0x10]
	str r1, [r5, #0x1c]
	adds r2, r5, #0
_021E9A84:
	adds r1, r1, #1
	lsls r0, r1, #4
	str r0, [r2, #0x14]
	adds r2, r2, #4
	cmp r1, #2
	blt _021E9A84
	ldr r1, [r5, #0x1c]
	adds r0, r5, #0
	bl ov21_021E9AE8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov21_021E9A40

	thumb_func_start ov21_021E9A9C
ov21_021E9A9C: @ 0x021E9A9C
	push {r3, lr}
	ldr r3, [r0, #0x1c]
	lsls r1, r3, #2
	adds r1, r0, r1
	ldr r2, [r1, #0x14]
	ldr r1, [r0, #0x10]
	cmp r2, r1
	bgt _021E9AC2
	adds r1, r3, #1
	str r1, [r0, #0x1c]
	cmp r1, #2
	blt _021E9ABA
	movs r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #0x10]
_021E9ABA:
	ldr r1, [r0, #0x1c]
	bl ov21_021E9B08
	pop {r3, pc}
_021E9AC2:
	adds r1, r1, #1
	str r1, [r0, #0x10]
	pop {r3, pc}
	thumb_func_end ov21_021E9A9C

	thumb_func_start ov21_021E9AC8
ov21_021E9AC8: @ 0x021E9AC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_021E9ACE:
	ldr r0, [r5]
	bl FUN_020181C4
	adds r4, r4, #1
	cmp r4, #2
	blt _021E9ACE
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov21_021E9AC8

	thumb_func_start ov21_021E9AE8
ov21_021E9AE8: @ 0x021E9AE8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #2
	adds r5, #8
	ldr r0, [r5, r4]
	movs r1, #0x20
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [r5, r4]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0x20
	blx FUN_020C00B4
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021E9AE8

	thumb_func_start ov21_021E9B08
ov21_021E9B08: @ 0x021E9B08
	push {r3, lr}
	adds r2, r1, #0
	adds r3, r0, #0
	lsls r2, r2, #2
	adds r2, r3, r2
	ldr r2, [r2, #8]
	movs r0, #0xf
	ldr r2, [r2, #0xc]
	movs r1, #0
	movs r3, #0x20
	bl FUN_0201DC68
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov21_021E9B08
	@ 0x021E9B24
