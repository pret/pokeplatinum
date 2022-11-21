	.include "macros/function.inc"


	.text

	thumb_func_start ov118_021D0D80
ov118_021D0D80: @ 0x021D0D80
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D0DB4 @ =0x00000B3C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D0D90
	bl FUN_02022974
_021D0D90:
	movs r0, #0xc
	movs r1, #0x1c
	bl FUN_02018144
	ldr r1, _021D0DB4 @ =0x00000B3C
	movs r2, #0x1c
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	blx FUN_020C4CF4
	ldr r0, _021D0DB8 @ =0x00000B29
	ldrb r1, [r4, r0]
	adds r0, #0x13
	ldr r0, [r4, r0]
	str r1, [r0, #0x14]
	pop {r4, pc}
	nop
_021D0DB4: .4byte 0x00000B3C
_021D0DB8: .4byte 0x00000B29
	thumb_func_end ov118_021D0D80

	thumb_func_start ov118_021D0DBC
ov118_021D0DBC: @ 0x021D0DBC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r1, _021D0F58 @ =0x00000B3C
	ldr r0, _021D0F5C @ =0x000005A4
	ldr r4, [r5, r1]
	ldr r0, [r5, r0]
	subs r1, #0x13
	ldrb r1, [r5, r1]
	ldr r0, [r0]
	bl FUN_0207A0FC
	ldr r1, [r4]
	adds r6, r0, #0
	cmp r1, #0xa
	bls _021D0DDC
	b _021D0F52
_021D0DDC:
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D0DE8: @ jump table
	.2byte _021D0DFE - _021D0DE8 - 2 @ case 0
	.2byte _021D0E60 - _021D0DE8 - 2 @ case 1
	.2byte _021D0E60 - _021D0DE8 - 2 @ case 2
	.2byte _021D0E66 - _021D0DE8 - 2 @ case 3
	.2byte _021D0E74 - _021D0DE8 - 2 @ case 4
	.2byte _021D0E8A - _021D0DE8 - 2 @ case 5
	.2byte _021D0EBE - _021D0DE8 - 2 @ case 6
	.2byte _021D0ECC - _021D0DE8 - 2 @ case 7
	.2byte _021D0ED8 - _021D0DE8 - 2 @ case 8
	.2byte _021D0EE8 - _021D0DE8 - 2 @ case 9
	.2byte _021D0F32 - _021D0DE8 - 2 @ case 10
_021D0DFE:
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	ldr r2, _021D0F60 @ =0x000001DF
	str r0, [r4, #0xc]
	cmp r0, r2
	beq _021D0E40
	adds r1, r2, #0
	adds r1, #8
	cmp r0, r1
	beq _021D0E1E
	adds r2, #0xd
	cmp r0, r2
	beq _021D0E2E
	b _021D0E40
_021D0E1E:
	adds r0, r6, #0
	bl FUN_02077A00
	movs r0, #0x41
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x10]
	b _021D0E44
_021D0E2E:
	adds r0, r6, #0
	movs r1, #1
	bl FUN_02077ACC
	movs r0, #0x23
	str r0, [r4, #8]
	movs r0, #1
	str r0, [r4, #0x10]
	b _021D0E44
_021D0E40:
	bl FUN_02022974
_021D0E44:
	ldr r0, _021D0F5C @ =0x000005A4
	ldr r0, [r5, r0]
	ldr r0, [r0, #0x1c]
	bl FUN_0203D174
	bl FUN_02027560
	adds r1, r6, #0
	bl FUN_0202736C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F52
_021D0E60:
	adds r0, r1, #1
	str r0, [r4]
	b _021D0F52
_021D0E66:
	adds r0, r5, #0
	bl ov118_021D0F88
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F52
_021D0E74:
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl ov118_021D1028
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F52
_021D0E8A:
	ldr r0, [r4, #4]
	adds r1, r0, #1
	str r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _021D0EA0
	ldr r1, _021D0F64 @ =0x00000B29
	adds r0, r5, #0
	ldrb r1, [r5, r1]
	bl FUN_02082DA8
_021D0EA0:
	bl ov118_021D10E8
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	ble _021D0F52
	ldr r0, [r4, #0x18]
	bl FUN_02014710
	cmp r0, #0
	bne _021D0F52
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F52
_021D0EBE:
	adds r0, r5, #0
	bl ov118_021D0FB8
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F52
_021D0ECC:
	bl FUN_02077E3C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F52
_021D0ED8:
	bl FUN_0200598C
	cmp r0, #0
	bne _021D0F52
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F52
_021D0EE8:
	ldr r0, _021D0F68 @ =0x0000069C
	movs r1, #0xca
	ldr r0, [r5, r0]
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r6, #0
	bl FUN_02076B10
	adds r2, r0, #0
	movs r0, #0x6a
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200B5CC
	movs r1, #0x6a
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r7, #0
	bl FUN_0200C388
	adds r0, r7, #0
	bl FUN_020237BC
	movs r1, #0
	adds r0, r5, #0
	mvns r1, r1
	movs r2, #1
	bl FUN_02082708
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _021D0F52
_021D0F32:
	ldr r0, _021D0F6C @ =0x00000B28
	ldrb r0, [r5, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _021D0F52
	adds r0, r5, #0
	bl ov118_021D0F70
	ldr r0, _021D0F5C @ =0x000005A4
	movs r1, #0
	ldr r0, [r5, r0]
	adds r0, #0x23
	strb r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D0F52:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D0F58: .4byte 0x00000B3C
_021D0F5C: .4byte 0x000005A4
_021D0F60: .4byte 0x000001DF
_021D0F64: .4byte 0x00000B29
_021D0F68: .4byte 0x0000069C
_021D0F6C: .4byte 0x00000B28
	thumb_func_end ov118_021D0DBC

	thumb_func_start ov118_021D0F70
ov118_021D0F70: @ 0x021D0F70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D0F84 @ =0x00000B3C
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _021D0F84 @ =0x00000B3C
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_021D0F84: .4byte 0x00000B3C
	thumb_func_end ov118_021D0F70

	thumb_func_start ov118_021D0F88
ov118_021D0F88: @ 0x021D0F88
	push {r3, r4, lr}
	sub sp, #4
	movs r1, #0
	adds r4, r0, #0
	bl FUN_0207EA74
	ldr r0, _021D0FB0 @ =0x00000B3C
	ldr r0, [r4, r0]
	bl ov118_021D0FDC
	movs r1, #0
	ldr r0, _021D0FB4 @ =0x04000050
	movs r2, #0x3f
	movs r3, #0x1f
	str r1, [sp]
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, pc}
	nop
_021D0FB0: .4byte 0x00000B3C
_021D0FB4: .4byte 0x04000050
	thumb_func_end ov118_021D0F88

	thumb_func_start ov118_021D0FB8
ov118_021D0FB8: @ 0x021D0FB8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D0FD4 @ =0x00000B3C
	ldr r0, [r4, r0]
	bl ov118_021D110C
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0207EA74
	ldr r0, _021D0FD8 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	pop {r4, pc}
	.align 2, 0
_021D0FD4: .4byte 0x00000B3C
_021D0FD8: .4byte 0x04000050
	thumb_func_end ov118_021D0FB8

	thumb_func_start ov118_021D0FDC
ov118_021D0FDC: @ 0x021D0FDC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl FUN_02014000
	movs r1, #0x12
	movs r0, #0xc
	lsls r1, r1, #0xa
	bl FUN_02018144
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r3, #0x12
	ldr r0, _021D1020 @ =ov118_021D1128
	ldr r1, _021D1024 @ =ov118_021D114C
	lsls r3, r3, #0xa
	bl FUN_02014014
	str r0, [r4, #0x18]
	bl FUN_02014784
	adds r2, r0, #0
	movs r0, #1
	movs r1, #0xe1
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	add sp, #8
	pop {r4, pc}
	nop
_021D1020: .4byte ov118_021D1128
_021D1024: .4byte ov118_021D114C
	thumb_func_end ov118_021D0FDC

	thumb_func_start ov118_021D1028
ov118_021D1028: @ 0x021D1028
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x10]
	movs r0, #0xb9
	movs r2, #0xc
	bl FUN_020144C4
	adds r1, r0, #0
	ldr r0, [r4, #0x18]
	movs r2, #0xa
	movs r3, #1
	bl FUN_020144CC
	ldr r1, [r4, #0xc]
	ldr r0, _021D10A0 @ =0x000001E7
	cmp r1, r0
	beq _021D1052
	adds r0, r0, #5
	cmp r1, r0
	beq _021D107E
	pop {r4, pc}
_021D1052:
	ldr r0, [r4, #0x18]
	ldr r2, _021D10A4 @ =ov118_021D10B0
	movs r1, #0
	adds r3, r4, #0
	bl FUN_020146F4
	ldr r0, [r4, #0x18]
	ldr r2, _021D10A4 @ =ov118_021D10B0
	movs r1, #1
	adds r3, r4, #0
	bl FUN_020146F4
	ldr r0, [r4, #0x18]
	ldr r2, _021D10A4 @ =ov118_021D10B0
	movs r1, #2
	adds r3, r4, #0
	bl FUN_020146F4
	ldr r0, _021D10A8 @ =0x00000553
	bl FUN_02005748
	pop {r4, pc}
_021D107E:
	ldr r0, [r4, #0x18]
	ldr r2, _021D10A4 @ =ov118_021D10B0
	movs r1, #0
	adds r3, r4, #0
	bl FUN_020146F4
	ldr r0, [r4, #0x18]
	ldr r2, _021D10A4 @ =ov118_021D10B0
	movs r1, #1
	adds r3, r4, #0
	bl FUN_020146F4
	ldr r0, _021D10AC @ =0x00000554
	bl FUN_02005748
	pop {r4, pc}
	nop
_021D10A0: .4byte 0x000001E7
_021D10A4: .4byte ov118_021D10B0
_021D10A8: .4byte 0x00000553
_021D10AC: .4byte 0x00000554
	thumb_func_end ov118_021D1028

	thumb_func_start ov118_021D10B0
ov118_021D10B0: @ 0x021D10B0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02014764
	ldr r1, [r0, #0x14]
	lsls r2, r1, #3
	ldr r1, _021D10E0 @ =0x021D1170
	ldr r2, [r1, r2]
	ldr r1, [r4, #0x20]
	ldr r1, [r1]
	ldr r1, [r1, #4]
	adds r1, r2, r1
	str r1, [r4, #0x28]
	ldr r0, [r0, #0x14]
	lsls r1, r0, #3
	ldr r0, _021D10E4 @ =0x021D1174
	ldr r1, [r0, r1]
	ldr r0, [r4, #0x20]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	adds r0, r1, r0
	str r0, [r4, #0x2c]
	pop {r4, pc}
	nop
_021D10E0: .4byte 0x021D1170
_021D10E4: .4byte 0x021D1174
	thumb_func_end ov118_021D10B0

	thumb_func_start ov118_021D10E8
ov118_021D10E8: @ 0x021D10E8
	push {r4, lr}
	bl FUN_020241B4
	bl FUN_0201469C
	adds r4, r0, #0
	cmp r4, #0
	ble _021D10FC
	bl FUN_020241B4
_021D10FC:
	bl FUN_020146C0
	movs r0, #1
	movs r1, #0
	bl FUN_020241BC
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov118_021D10E8

	thumb_func_start ov118_021D110C
ov118_021D110C: @ 0x021D110C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x18]
	bl FUN_02014730
	adds r4, r0, #0
	ldr r0, [r5, #0x18]
	bl FUN_0201411C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov118_021D110C

	thumb_func_start ov118_021D1128
ov118_021D1128: @ 0x021D1128
	push {r4, lr}
	ldr r3, _021D1148 @ =0x02100DEC
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bne _021D113A
	bl FUN_02022974
_021D113A:
	adds r0, r4, #0
	bl FUN_020145B4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_021D1148: .4byte 0x02100DEC
	thumb_func_end ov118_021D1128

	thumb_func_start ov118_021D114C
ov118_021D114C: @ 0x021D114C
	push {r4, lr}
	ldr r3, _021D116C @ =0x02100DF4
	movs r2, #1
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bne _021D115E
	bl FUN_02022974
_021D115E:
	adds r0, r4, #0
	bl FUN_020145F4
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_021D116C: .4byte 0x02100DF4
	thumb_func_end ov118_021D114C
	@ 0x021D1170
