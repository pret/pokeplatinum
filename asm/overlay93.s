	.include "macros/function.inc"


	.text

	thumb_func_start ov93_021D0D80
ov93_021D0D80: @ 0x021D0D80
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x48
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #0xa0
	movs r2, #0x48
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0xa0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r5, #0
	bl FUN_02006840
	adds r5, r0, #0
	adds r0, r4, #0
	ldrb r1, [r5]
	adds r0, #0x9c
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x9d
	strb r1, [r0]
	movs r0, #0x48
	bl FUN_020203AC
	str r0, [r4]
	bl ov93_021D0FA8
	adds r0, r4, #0
	bl ov93_021D102C
	add r0, sp, #0xc
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [r4]
	ldr r2, _021D0E64 @ =0x021D14BC
	str r1, [sp, #8]
	ldr r1, _021D0E68 @ =0x0029AEC1
	ldr r3, _021D0E6C @ =0x000005C1
	bl FUN_020206D0
	ldr r0, [r4]
	bl FUN_020203D4
	movs r4, #0
	movs r7, #2
	movs r6, #4
_021D0DF8:
	ldr r2, [r5, #4]
	movs r0, #6
	adds r1, r4, #0
	muls r1, r0, r1
	adds r3, r2, r1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r3, r7]
	ldrsh r3, [r3, r6]
	adds r0, r4, #0
	blx FUN_020AF51C
	ldr r2, [r5, #4]
	lsls r1, r4, #1
	adds r1, r2, r1
	ldrh r1, [r1, #0x18]
	adds r0, r4, #0
	blx FUN_020AF558
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _021D0DF8
	ldr r2, [r5, #4]
	ldrh r0, [r2, #0x20]
	ldrh r1, [r2, #0x22]
	ldr r2, [r2, #0x28]
	blx FUN_020AF56C
	ldr r2, [r5, #4]
	ldrh r0, [r2, #0x24]
	ldrh r1, [r2, #0x26]
	ldr r2, [r2, #0x2c]
	blx FUN_020AF590
	ldr r3, [r5, #4]
	ldr r0, [r3, #0x40]
	str r0, [sp]
	ldr r0, [r3, #0x44]
	str r0, [sp, #4]
	ldr r0, [r3, #0x30]
	ldr r1, [r3, #0x34]
	ldr r2, [r3, #0x38]
	ldr r3, [r3, #0x3c]
	blx FUN_020AF5B4
	movs r0, #0
	movs r1, #0x48
	bl FUN_0208C120
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D0E64: .4byte 0x021D14BC
_021D0E68: .4byte 0x0029AEC1
_021D0E6C: .4byte 0x000005C1
	thumb_func_end ov93_021D0D80

	thumb_func_start ov93_021D0E70
ov93_021D0E70: @ 0x021D0E70
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r6, _021D0F4C @ =0x021D14CC
	adds r2, r0, #0
	adds r5, r1, #0
	add r4, sp, #0x18
	movs r3, #4
_021D0E7E:
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r3, r3, #1
	bne _021D0E7E
	ldr r0, [r6]
	add r3, sp, #0xc
	str r0, [r4]
	ldr r4, _021D0F50 @ =0x021D149C
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	add r1, sp, #0
	str r0, [r3]
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r0, r2, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021D0EB4
	cmp r0, #1
	beq _021D0EC2
	b _021D0F02
_021D0EB4:
	ldr r0, _021D0F54 @ =0x000006DC
	bl FUN_02005748
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D0F02
_021D0EC2:
	adds r0, r4, #0
	adds r0, #0x9d
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D0EF4
	adds r0, r4, #0
	adds r0, #0x80
	ldr r2, [r0]
	movs r0, #1
	ldr r1, [r2]
	lsls r0, r0, #0xc
	adds r1, r1, r0
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _021D0F02
	adds r1, r4, #0
	movs r0, #1
	adds r1, #0x9d
	strb r0, [r1]
	movs r1, #0x48
	bl FUN_0208C120
	b _021D0F02
_021D0EF4:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D0F02
	add sp, #0x3c
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D0F02:
	movs r3, #1
	movs r2, #0
	lsls r3, r3, #0xc
_021D0F08:
	lsls r0, r2, #2
	adds r0, r4, r0
	adds r0, #0x80
	ldr r1, [r0]
	ldr r5, [r1, #8]
	ldr r0, [r1]
	ldrh r5, [r5, #4]
	adds r0, r0, r3
	lsls r5, r5, #0xc
	cmp r0, r5
	bge _021D0F20
	str r0, [r1]
_021D0F20:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #4
	blo _021D0F08
	bl FUN_020241B4
	bl FUN_020203EC
	adds r0, r4, #4
	add r1, sp, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl FUN_0201CA74
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020241BC
	movs r0, #0
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D0F4C: .4byte 0x021D14CC
_021D0F50: .4byte 0x021D149C
_021D0F54: .4byte 0x000006DC
	thumb_func_end ov93_021D0E70

	thumb_func_start ov93_021D0F58
ov93_021D0F58: @ 0x021D0F58
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl FUN_0200682C
	adds r6, r0, #0
	adds r7, r6, #0
	movs r4, #0
	adds r7, #0x70
_021D0F68:
	lsls r0, r4, #2
	adds r5, r6, r0
	adds r1, r5, #0
	adds r1, #0x80
	ldr r1, [r1]
	adds r0, r7, #0
	blx FUN_020B2CD8
	ldr r0, [r5, #0x60]
	bl FUN_020181C4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _021D0F68
	ldr r0, [r6, #0x5c]
	bl FUN_020181C4
	ldr r0, [r6]
	bl FUN_020203B8
	ldr r0, [sp]
	bl FUN_02006830
	bl FUN_0201CBA0
	movs r0, #0x48
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov93_021D0F58

	thumb_func_start ov93_021D0FA8
ov93_021D0FA8: @ 0x021D0FA8
	push {r3, lr}
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D0FF8 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D0FFC @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	bl ov93_021D100C
	movs r0, #0x48
	bl FUN_0201CAF4
	ldr r2, _021D1000 @ =0x04000060
	ldr r0, _021D1004 @ =0xFFFFCFFF
	ldrh r1, [r2]
	ands r1, r0
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _021D1008 @ =0x021D14A8
	blx FUN_020BFD2C
	bl FUN_0201FFE8
	pop {r3, pc}
	nop
_021D0FF8: .4byte 0xFFFFE0FF
_021D0FFC: .4byte 0x04001000
_021D1000: .4byte 0x04000060
_021D1004: .4byte 0xFFFFCFFF
_021D1008: .4byte 0x021D14A8
	thumb_func_end ov93_021D0FA8

	thumb_func_start ov93_021D100C
ov93_021D100C: @ 0x021D100C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1028 @ =0x021D14F0
	add r3, sp, #0
	movs r2, #5
_021D1016:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1016
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D1028: .4byte 0x021D14F0
	thumb_func_end ov93_021D100C

	thumb_func_start ov93_021D102C
ov93_021D102C: @ 0x021D102C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x78
	movs r1, #0x48
	bl FUN_02006C24
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x70
	movs r1, #0x48
	movs r2, #4
	bl FUN_020182CC
	adds r1, r5, #0
	adds r1, #0x9c
	ldrb r2, [r1]
	movs r1, #0xa
	ldr r0, [sp]
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _021D1118 @ =0x021D15A0
	movs r2, #0x48
	ldrh r1, [r1, r3]
	bl FUN_02006CB8
	adds r1, r5, #0
	adds r2, r5, #0
	str r0, [r5, #0x5c]
	adds r0, r5, #4
	adds r1, #0x58
	adds r2, #0x5c
	bl FUN_0201CA3C
	ldr r0, [r5, #0x5c]
	blx FUN_020B3C1C
	str r0, [sp, #4]
	ldr r0, [r5, #0x58]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	ldr r0, [r5, #0x58]
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	ldr r0, [r5, #0x58]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	ldr r0, [r5, #0x58]
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	adds r0, r5, #0
	str r0, [sp, #8]
	adds r0, #0x70
	movs r6, #0
	str r0, [sp, #8]
_021D10AE:
	adds r1, r5, #0
	adds r1, #0x9c
	ldrb r3, [r1]
	lsls r0, r6, #2
	adds r4, r5, r0
	adds r2, r3, #0
	movs r1, #0xa
	muls r2, r1, r2
	ldr r3, _021D1118 @ =0x021D15A0
	lsls r1, r6, #1
	adds r2, r3, r2
	adds r1, r1, r2
	ldrh r1, [r1, #2]
	ldr r0, [sp]
	movs r2, #0x48
	bl FUN_02006CB8
	str r0, [r4, #0x60]
	movs r1, #0
	blx FUN_020B3C5C
	adds r7, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x58]
	adds r1, r7, #0
	blx FUN_020B2CB4
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	ldr r2, [r5, #0x58]
	ldr r3, [sp, #4]
	adds r1, r7, #0
	blx FUN_020AE4F0
	adds r4, #0x80
	ldr r1, [r4]
	adds r0, r5, #4
	blx FUN_020AE77C
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #4
	blo _021D10AE
	ldr r0, [sp]
	bl FUN_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1118: .4byte 0x021D15A0
	thumb_func_end ov93_021D102C

	thumb_func_start ov93_021D111C
ov93_021D111C: @ 0x021D111C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	movs r2, #2
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x48
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	adds r0, r5, #0
	movs r1, #0x98
	movs r2, #0x48
	bl FUN_0200681C
	movs r1, #0
	movs r2, #0x98
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r5, #0
	bl FUN_02006840
	adds r5, r0, #0
	adds r0, r4, #0
	ldrb r1, [r5]
	adds r0, #0x94
	strb r1, [r0]
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x95
	strb r1, [r0]
	movs r0, #0x48
	bl FUN_020203AC
	str r0, [r4]
	bl ov93_021D133C
	adds r0, r4, #0
	bl ov93_021D13C0
	add r0, sp, #0xc
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [sp]
	str r1, [sp, #4]
	ldr r1, [r4]
	ldr r2, _021D1200 @ =0x021D1538
	str r1, [sp, #8]
	ldr r1, _021D1204 @ =0x0029AEC1
	ldr r3, _021D1208 @ =0x000005C1
	bl FUN_020206D0
	ldr r0, [r4]
	bl FUN_020203D4
	movs r4, #0
	movs r7, #2
	movs r6, #4
_021D1194:
	ldr r2, [r5, #4]
	movs r0, #6
	adds r1, r4, #0
	muls r1, r0, r1
	adds r3, r2, r1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r3, r7]
	ldrsh r3, [r3, r6]
	adds r0, r4, #0
	blx FUN_020AF51C
	ldr r2, [r5, #4]
	lsls r1, r4, #1
	adds r1, r2, r1
	ldrh r1, [r1, #0x18]
	adds r0, r4, #0
	blx FUN_020AF558
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _021D1194
	ldr r2, [r5, #4]
	ldrh r0, [r2, #0x20]
	ldrh r1, [r2, #0x22]
	ldr r2, [r2, #0x28]
	blx FUN_020AF56C
	ldr r2, [r5, #4]
	ldrh r0, [r2, #0x24]
	ldrh r1, [r2, #0x26]
	ldr r2, [r2, #0x2c]
	blx FUN_020AF590
	ldr r3, [r5, #4]
	ldr r0, [r3, #0x40]
	str r0, [sp]
	ldr r0, [r3, #0x44]
	str r0, [sp, #4]
	ldr r0, [r3, #0x30]
	ldr r1, [r3, #0x34]
	ldr r2, [r3, #0x38]
	ldr r3, [r3, #0x3c]
	blx FUN_020AF5B4
	movs r0, #0
	movs r1, #0x48
	bl FUN_0208C120
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1200: .4byte 0x021D1538
_021D1204: .4byte 0x0029AEC1
_021D1208: .4byte 0x000005C1
	thumb_func_end ov93_021D111C

	thumb_func_start ov93_021D120C
ov93_021D120C: @ 0x021D120C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x3c
	ldr r6, _021D12E4 @ =0x021D1548
	adds r2, r0, #0
	adds r5, r1, #0
	add r4, sp, #0x18
	movs r3, #4
_021D121A:
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r3, r3, #1
	bne _021D121A
	ldr r0, [r6]
	add r3, sp, #0xc
	str r0, [r4]
	ldr r4, _021D12E8 @ =0x021D1518
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	add r1, sp, #0
	str r0, [r3]
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r0, r2, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021D1250
	cmp r0, #1
	beq _021D125E
	b _021D129A
_021D1250:
	ldr r0, _021D12EC @ =0x000006DC
	bl FUN_02005748
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D129A
_021D125E:
	adds r0, r4, #0
	adds r0, #0x95
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D128C
	ldr r2, [r4, #0x7c]
	movs r0, #1
	ldr r1, [r2]
	lsls r0, r0, #0xc
	adds r1, r1, r0
	ldr r0, [r2, #8]
	ldrh r0, [r0, #4]
	lsls r0, r0, #0xc
	cmp r1, r0
	bne _021D129A
	adds r1, r4, #0
	movs r0, #1
	adds r1, #0x95
	strb r0, [r1]
	movs r1, #0x48
	bl FUN_0208C120
	b _021D129A
_021D128C:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D129A
	add sp, #0x3c
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D129A:
	movs r3, #1
	movs r2, #0
	lsls r3, r3, #0xc
_021D12A0:
	lsls r0, r2, #2
	adds r0, r4, r0
	ldr r1, [r0, #0x7c]
	ldr r5, [r1, #8]
	ldr r0, [r1]
	ldrh r5, [r5, #4]
	adds r0, r0, r3
	lsls r5, r5, #0xc
	cmp r0, r5
	bge _021D12B6
	str r0, [r1]
_021D12B6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	blo _021D12A0
	bl FUN_020241B4
	bl FUN_020203EC
	adds r0, r4, #4
	add r1, sp, #0
	add r2, sp, #0x18
	add r3, sp, #0xc
	bl FUN_0201CA74
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020241BC
	movs r0, #0
	add sp, #0x3c
	pop {r3, r4, r5, r6, pc}
	nop
_021D12E4: .4byte 0x021D1548
_021D12E8: .4byte 0x021D1518
_021D12EC: .4byte 0x000006DC
	thumb_func_end ov93_021D120C

	thumb_func_start ov93_021D12F0
ov93_021D12F0: @ 0x021D12F0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl FUN_0200682C
	adds r6, r0, #0
	adds r7, r6, #0
	movs r4, #0
	adds r7, #0x6c
_021D1300:
	lsls r0, r4, #2
	adds r5, r6, r0
	ldr r1, [r5, #0x7c]
	adds r0, r7, #0
	blx FUN_020B2CD8
	ldr r0, [r5, #0x60]
	bl FUN_020181C4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	blo _021D1300
	ldr r0, [r6, #0x5c]
	bl FUN_020181C4
	ldr r0, [r6]
	bl FUN_020203B8
	ldr r0, [sp]
	bl FUN_02006830
	bl FUN_0201CBA0
	movs r0, #0x48
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov93_021D12F0

	thumb_func_start ov93_021D133C
ov93_021D133C: @ 0x021D133C
	push {r3, lr}
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D138C @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D1390 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	bl ov93_021D13A0
	movs r0, #0x48
	bl FUN_0201CAF4
	ldr r2, _021D1394 @ =0x04000060
	ldr r0, _021D1398 @ =0xFFFFCFFF
	ldrh r1, [r2]
	ands r1, r0
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _021D139C @ =0x021D1524
	blx FUN_020BFD2C
	bl FUN_0201FFE8
	pop {r3, pc}
	nop
_021D138C: .4byte 0xFFFFE0FF
_021D1390: .4byte 0x04001000
_021D1394: .4byte 0x04000060
_021D1398: .4byte 0xFFFFCFFF
_021D139C: .4byte 0x021D1524
	thumb_func_end ov93_021D133C

	thumb_func_start ov93_021D13A0
ov93_021D13A0: @ 0x021D13A0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D13BC @ =0x021D156C
	add r3, sp, #0
	movs r2, #5
_021D13AA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D13AA
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D13BC: .4byte 0x021D156C
	thumb_func_end ov93_021D13A0

	thumb_func_start ov93_021D13C0
ov93_021D13C0: @ 0x021D13C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x9c
	movs r1, #0x48
	bl FUN_02006C24
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x6c
	movs r1, #0x48
	movs r2, #4
	bl FUN_020182CC
	adds r1, r5, #0
	adds r1, #0x94
	ldrb r1, [r1]
	ldr r0, [sp]
	lsls r2, r1, #3
	ldr r1, _021D1498 @ =0x021D15C8
	ldrh r1, [r1, r2]
	movs r2, #0x48
	bl FUN_02006CB8
	adds r1, r5, #0
	adds r2, r5, #0
	str r0, [r5, #0x5c]
	adds r0, r5, #4
	adds r1, #0x58
	adds r2, #0x5c
	bl FUN_0201CA3C
	ldr r0, [r5, #0x5c]
	blx FUN_020B3C1C
	str r0, [sp, #4]
	ldr r0, [r5, #0x58]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020B2CE4
	ldr r0, [r5, #0x58]
	movs r1, #0
	movs r2, #0x80
	blx FUN_020B2CE4
	movs r2, #2
	ldr r0, [r5, #0x58]
	movs r1, #0
	lsls r2, r2, #8
	blx FUN_020B2CE4
	movs r2, #1
	ldr r0, [r5, #0x58]
	movs r1, #0
	lsls r2, r2, #0xa
	blx FUN_020B2CE4
	adds r0, r5, #0
	str r0, [sp, #8]
	adds r0, #0x6c
	movs r4, #0
	str r0, [sp, #8]
_021D143E:
	adds r1, r5, #0
	adds r1, #0x94
	ldrb r1, [r1]
	lsls r0, r4, #2
	adds r6, r5, r0
	lsls r3, r1, #3
	ldr r1, _021D1498 @ =0x021D15C8
	lsls r2, r4, #1
	adds r1, r1, r3
	adds r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r0, [sp]
	movs r2, #0x48
	bl FUN_02006CB8
	str r0, [r6, #0x60]
	movs r1, #0
	blx FUN_020B3C5C
	adds r7, r0, #0
	ldr r0, [sp, #8]
	ldr r2, [r5, #0x58]
	adds r1, r7, #0
	blx FUN_020B2CB4
	str r0, [r6, #0x7c]
	ldr r2, [r5, #0x58]
	ldr r3, [sp, #4]
	adds r1, r7, #0
	blx FUN_020AE4F0
	ldr r1, [r6, #0x7c]
	adds r0, r5, #4
	blx FUN_020AE77C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	blo _021D143E
	ldr r0, [sp]
	bl FUN_02006CA8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D1498: .4byte 0x021D15C8
	thumb_func_end ov93_021D13C0
	@ 0x021D149C
