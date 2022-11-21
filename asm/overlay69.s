
	thumb_func_start ov69_0225C700
ov69_0225C700: @ 0x0225C700
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	bl FUN_02006840
	movs r2, #5
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x69
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	ldr r1, _0225C80C @ =0x0000C724
	adds r0, r4, #0
	movs r2, #0x69
	bl FUN_0200681C
	ldr r2, _0225C80C @ =0x0000C724
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, [r5, #4]
	bl FUN_0202C878
	str r0, [r4, #0xc]
	ldr r0, [r5, #4]
	bl FUN_02025E44
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	bl FUN_0202C8C0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl FUN_0202C8C4
	str r0, [r4, #0x18]
	ldr r0, [r5, #8]
	adds r1, r5, #0
	str r0, [r4, #0x1c]
	adds r0, r4, #0
	bl ov69_0225D2A8
	adds r0, r4, #0
	ldr r1, [r4, #0x10]
	adds r0, #0x20
	movs r2, #0x69
	bl ov69_0225D318
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x20
	movs r2, #0x69
	bl ov69_0225D6D8
	movs r0, #0x5a
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0x69
	bl ov69_0225EF1C
	movs r0, #0x69
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	subs r2, r2, #4
	str r1, [r2]
	str r0, [r2, #4]
	movs r0, #0x89
	ldr r3, [r2]
	lsls r0, r0, #2
	adds r2, r4, #0
	ldr r1, [r5]
	adds r0, r4, r0
	adds r2, #0x20
	bl ov69_0225D7A0
	adds r3, r4, #4
	ldr r0, _0225C810 @ =0x0000C3CC
	ldm r3!, {r1, r2}
	adds r0, r4, r0
	movs r3, #0x69
	bl ov69_0225DA74
	ldr r0, _0225C814 @ =0x0000C3E0
	movs r2, #0x5a
	adds r1, r4, #0
	lsls r2, r2, #2
	adds r0, r4, r0
	adds r1, #0x20
	adds r2, r4, r2
	movs r3, #0x69
	bl ov69_0225DBB4
	movs r2, #0x69
	str r2, [sp]
	movs r0, #0xc7
	lsls r0, r0, #8
	adds r1, r4, #0
	adds r2, #0xff
	ldr r3, [r5, #4]
	adds r0, r4, r0
	adds r1, #0x20
	adds r2, r4, r2
	bl ov69_0225DD60
	ldr r0, _0225C818 @ =0x0000C40C
	movs r2, #0x5a
	adds r1, r4, #0
	lsls r2, r2, #2
	adds r0, r4, r0
	adds r1, #0x20
	adds r2, r4, r2
	movs r3, #0x69
	bl ov69_0225DEC0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov69_0225D030
	ldr r0, _0225C81C @ =ov69_0225CF90
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0225C80C: .4byte 0x0000C724
_0225C810: .4byte 0x0000C3CC
_0225C814: .4byte 0x0000C3E0
_0225C818: .4byte 0x0000C40C
_0225C81C: .4byte ov69_0225CF90
	thumb_func_end ov69_0225C700

	thumb_func_start ov69_0225C820
ov69_0225C820: @ 0x0225C820
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0200682C
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #6
	bhi _0225C8EE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225C848: @ jump table
	.2byte _0225C856 - _0225C848 - 2 @ case 0
	.2byte _0225C87C - _0225C848 - 2 @ case 1
	.2byte _0225C88C - _0225C848 - 2 @ case 2
	.2byte _0225C8EE - _0225C848 - 2 @ case 3
	.2byte _0225C8EE - _0225C848 - 2 @ case 4
	.2byte _0225C8C0 - _0225C848 - 2 @ case 5
	.2byte _0225C8E0 - _0225C848 - 2 @ case 6
_0225C856:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x69
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_0222E31C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C8EE
_0225C87C:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225C8EE
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C8EE
_0225C88C:
	adds r0, r7, #0
	bl ov69_0225CE64
	adds r6, r0, #0
	adds r0, r7, #0
	bl ov69_0225CF30
	ldr r0, [r5, #0xc]
	bl FUN_0222E12C
	cmp r0, #1
	bne _0225C8AC
	ldr r0, [r5, #0xc]
	bl FUN_0222E2A4
	movs r6, #1
_0225C8AC:
	bl FUN_02231760
	cmp r0, #1
	bne _0225C8B6
	movs r6, #1
_0225C8B6:
	cmp r6, #1
	bne _0225C8EE
	movs r0, #5
	str r0, [r4]
	b _0225C8EE
_0225C8C0:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x69
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C8EE
_0225C8E0:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225C8EE
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225C8EE:
	adds r0, r7, #0
	bl ov69_0225CF50
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov69_0225C820

	thumb_func_start ov69_0225C8FC
ov69_0225C8FC: @ 0x0225C8FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	ldr r0, _0225C974 @ =0x0000C40C
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x20
	bl ov69_0225DFBC
	movs r0, #0xc7
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov69_0225DDC8
	ldr r0, _0225C978 @ =0x0000C3E0
	adds r0, r4, r0
	bl ov69_0225DC48
	ldr r0, _0225C97C @ =0x0000C3CC
	adds r0, r4, r0
	bl ov69_0225DAEC
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov69_0225D71C
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov69_0225D838
	movs r0, #0x5a
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov69_0225EF54
	adds r4, #0x20
	adds r0, r4, #0
	bl ov69_0225D35C
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x69
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225C974: .4byte 0x0000C40C
_0225C978: .4byte 0x0000C3E0
_0225C97C: .4byte 0x0000C3CC
	thumb_func_end ov69_0225C8FC

	thumb_func_start ov69_0225C980
ov69_0225C980: @ 0x0225C980
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	str r1, [sp, #0xc]
	movs r0, #0x66
	adds r1, r2, #0
	str r2, [sp, #0x10]
	bl FUN_02006C24
	movs r2, #0
	str r2, [r5]
	str r2, [sp]
	add r1, sp, #0x2c
	str r1, [sp, #4]
	ldr r3, [sp, #0x10]
	movs r1, #0x12
	str r0, [sp, #0x24]
	bl FUN_02007250
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	movs r1, #6
	blx FUN_020E2178
	adds r7, r0, #0
	ldr r0, [sp, #0x20]
	movs r6, #1
	adds r4, r0, #6
	cmp r7, #1
	ble _0225C9EE
_0225C9BC:
	ldrh r0, [r4]
	cmp r0, #2
	beq _0225C9E6
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	movs r2, #2
	str r0, [sp, #8]
	movs r3, #4
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r5]
	adds r0, r5, #0
	bl ov69_0225CA7C
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
_0225C9E6:
	adds r6, r6, #1
	adds r4, r4, #6
	cmp r6, r7
	blt _0225C9BC
_0225C9EE:
	ldr r0, [sp, #0x20]
	bl FUN_020181C4
	movs r7, #1
	bl FUN_020996D0
	str r0, [sp, #0x18]
	cmp r0, #1
	ble _0225CA72
_0225CA00:
	adds r0, r7, #0
	bl FUN_02099764
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0x28
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	ldr r3, [sp, #0x10]
	movs r2, #0
	bl FUN_02007250
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	movs r6, #1
	lsrs r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x1c]
	adds r4, r0, #4
	ldr r0, [sp, #0x14]
	cmp r0, #1
	ble _0225CA64
_0225CA2E:
	adds r0, r7, #0
	bl FUN_02099748
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	movs r2, #0
	str r0, [sp, #8]
	movs r3, #2
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r1, [r5]
	adds r0, r5, #0
	bl ov69_0225CA7C
	ldr r0, [r5]
	adds r6, r6, #1
	adds r0, r0, #1
	str r0, [r5]
	ldr r0, [sp, #0x14]
	adds r4, r4, #4
	cmp r6, r0
	blt _0225CA2E
_0225CA64:
	ldr r0, [sp, #0x1c]
	bl FUN_020181C4
	ldr r0, [sp, #0x18]
	adds r7, r7, #1
	cmp r7, r0
	blt _0225CA00
_0225CA72:
	ldr r0, [sp, #0x24]
	bl FUN_02006CA8
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov69_0225C980

	thumb_func_start ov69_0225CA7C
ov69_0225CA7C: @ 0x0225CA7C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r5, _0225CAF0 @ =0x0225F09C
	adds r7, r2, #0
	adds r6, r3, #0
	adds r4, r0, #0
	mov ip, r1
	add r3, sp, #0xc
	movs r2, #4
_0225CA8E:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225CA8E
	ldr r0, [r5]
	movs r1, #0x30
	str r0, [r3]
	mov r0, ip
	adds r5, r0, #0
	muls r5, r1, r5
	adds r0, r4, r5
	strh r7, [r0, #4]
	strh r6, [r0, #6]
	movs r0, #0
	str r0, [sp, #8]
	add r0, sp, #0xc
	add r1, sp, #0
	str r7, [sp]
	str r6, [sp, #4]
	bl ov69_0225CB6C
	adds r3, r4, r5
	add r6, sp, #0xc
	adds r3, #8
	movs r2, #4
_0225CAC0:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0225CAC0
	ldr r0, [r6]
	str r0, [r3]
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _0225CAE0
	add r2, sp, #0x38
	ldrh r1, [r2, #0x10]
	ldrh r2, [r2, #0x14]
	bl ov69_0225D91C
	adds r1, r4, r5
	strh r0, [r1, #0x2c]
_0225CAE0:
	add r0, sp, #0x38
	ldrh r2, [r0, #0x10]
	adds r1, r4, r5
	strh r2, [r1, #0x2e]
	ldrh r0, [r0, #0x14]
	strh r0, [r1, #0x30]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225CAF0: .4byte 0x0225F09C
	thumb_func_end ov69_0225CA7C

	thumb_func_start ov69_0225CAF4
ov69_0225CAF4: @ 0x0225CAF4
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r1, #0
	ldr r1, [r4, #4]
	ldr r3, _0225CB68 @ =0x020F983C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	asrs r1, r1, #4
	lsls r2, r1, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r5, r0, #0
	bl FUN_020BB5C8
	ldr r0, [r4]
	ldr r3, _0225CB68 @ =0x020F983C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5AC
	adds r0, r5, #0
	add r1, sp, #0
	adds r2, r5, #0
	blx FUN_020BB8EC
	ldr r0, [r4, #8]
	ldr r3, _0225CB68 @ =0x020F983C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5E4
	adds r0, r5, #0
	add r1, sp, #0
	adds r2, r5, #0
	blx FUN_020BB8EC
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_0225CB68: .4byte 0x020F983C
	thumb_func_end ov69_0225CAF4

	thumb_func_start ov69_0225CB6C
ov69_0225CB6C: @ 0x0225CB6C
	push {r4, r5, lr}
	sub sp, #0x24
	adds r4, r1, #0
	ldr r1, [r4]
	ldr r3, _0225CBE0 @ =0x020F983C
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	asrs r1, r1, #4
	lsls r2, r1, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r5, r0, #0
	bl FUN_020BB5C8
	ldr r0, [r4, #4]
	ldr r3, _0225CBE0 @ =0x020F983C
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5AC
	adds r0, r5, #0
	add r1, sp, #0
	adds r2, r5, #0
	blx FUN_020BB8EC
	ldr r0, [r4, #8]
	ldr r3, _0225CBE0 @ =0x020F983C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #1
	adds r1, r2, #1
	lsls r1, r1, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5E4
	adds r0, r5, #0
	add r1, sp, #0
	adds r2, r5, #0
	blx FUN_020BB8EC
	add sp, #0x24
	pop {r4, r5, pc}
	.align 2, 0
_0225CBE0: .4byte 0x020F983C
	thumb_func_end ov69_0225CB6C

	thumb_func_start ov69_0225CBE4
ov69_0225CBE4: @ 0x0225CBE4
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r0
	ldr r0, _0225CC4C @ =0x021BF6BC
	mov ip, r1
	ldrh r5, [r0, #0x1c]
	movs r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, _0225CC50 @ =0x0000FFFF
	adds r2, r1, #0
	adds r3, r1, #0
	adds r4, r1, #0
	cmp r5, r0
	beq _0225CC14
	mov r0, lr
	subs r3, r5, r0
	bpl _0225CC0E
	subs r0, r1, #1
	eors r3, r0
	movs r1, #0x10
	b _0225CC14
_0225CC0E:
	cmp r3, #0
	ble _0225CC14
	movs r1, #0x20
_0225CC14:
	str r1, [r7]
	movs r1, #0x3f
	adds r0, r3, #0
	ands r0, r1
	str r0, [r6]
	ldr r0, _0225CC4C @ =0x021BF6BC
	ldrh r3, [r0, #0x1e]
	ldr r0, _0225CC50 @ =0x0000FFFF
	cmp r3, r0
	beq _0225CC3C
	mov r0, ip
	subs r4, r3, r0
	bpl _0225CC36
	subs r1, #0x40
	eors r4, r1
	movs r2, #0x80
	b _0225CC3C
_0225CC36:
	cmp r4, #0
	ble _0225CC3C
	movs r2, #0x40
_0225CC3C:
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	str r2, [r0]
	movs r0, #0x3f
	ands r1, r0
	ldr r0, [sp, #0x1c]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225CC4C: .4byte 0x021BF6BC
_0225CC50: .4byte 0x0000FFFF
	thumb_func_end ov69_0225CBE4

	thumb_func_start ov69_0225CC54
ov69_0225CC54: @ 0x0225CC54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #0x5e
	lsls r0, r0, #2
	str r1, [sp]
	adds r0, r4, r0
	add r1, sp, #0xc
	adds r7, r2, #0
	bl ov69_0225D780
	ldr r0, _0225CDF4 @ =0x0000C3E0
	movs r1, #0
	adds r0, r4, r0
	bl ov69_0225DD10
	adds r6, r0, #0
	ldr r0, _0225CDF4 @ =0x0000C3E0
	movs r1, #1
	adds r0, r4, r0
	bl ov69_0225DD10
	str r0, [sp, #4]
	ldr r0, _0225CDF4 @ =0x0000C3E0
	movs r1, #2
	adds r0, r4, r0
	bl ov69_0225DD10
	adds r5, r0, #0
	ldr r0, _0225CDF8 @ =0x0000C3CC
	adds r0, r4, r0
	bl ov69_0225DBB0
	ldr r2, [sp, #0x10]
	adds r1, r0, #0
	lsls r2, r2, #0x10
	ldr r0, [sp, #0xc]
	asrs r2, r2, #0x10
	mov ip, r2
	lsls r0, r0, #0x10
	ldr r2, [sp]
	movs r3, #1
	asrs r0, r0, #0x10
	tst r2, r3
	bne _0225CCB8
	adds r2, r6, #0
	tst r2, r3
	beq _0225CCCC
_0225CCB8:
	ldr r0, [r4, #4]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0225CCC6
	movs r0, #1
	str r0, [sp, #8]
_0225CCC6:
	ldr r0, [sp, #8]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0225CCCC:
	cmp r1, #0
	bne _0225CCF4
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _0225CCDA
	cmp r5, #0
	beq _0225CCEE
_0225CCDA:
	ldr r2, [sp, #4]
	movs r1, #0x55
	muls r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r1, #0x55
	muls r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	b _0225CD16
_0225CCEE:
	lsls r3, r3, #9
	adds r5, r3, #0
	b _0225CD16
_0225CCF4:
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _0225CCFE
	cmp r5, #0
	beq _0225CD12
_0225CCFE:
	ldr r2, [sp, #4]
	movs r1, #0xa
	muls r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	movs r1, #0xa
	muls r1, r5, r1
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	b _0225CD16
_0225CD12:
	movs r3, #0x20
	adds r5, r3, #0
_0225CD16:
	movs r2, #0x20
	adds r1, r7, #0
	tst r1, r2
	bne _0225CD24
	adds r1, r6, #0
	tst r1, r2
	beq _0225CD44
_0225CD24:
	ldr r1, [r4, #4]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, #1
	bne _0225CD36
	ldr r1, [sp, #0x10]
	adds r1, r1, r3
	str r1, [sp, #0x10]
	b _0225CD44
_0225CD36:
	ldr r2, _0225CDFC @ =0xFFFFD820
	mov r1, ip
	cmp r1, r2
	bge _0225CD44
	ldr r1, [sp, #0x10]
	adds r1, r1, r3
	str r1, [sp, #0x10]
_0225CD44:
	movs r2, #0x10
	adds r1, r7, #0
	tst r1, r2
	bne _0225CD52
	adds r1, r6, #0
	tst r1, r2
	beq _0225CD72
_0225CD52:
	ldr r1, [r4, #4]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, #1
	bne _0225CD64
	ldr r1, [sp, #0x10]
	subs r1, r1, r3
	str r1, [sp, #0x10]
	b _0225CD72
_0225CD64:
	ldr r2, _0225CE00 @ =0xFFFFCC80
	mov r1, ip
	cmp r1, r2
	ble _0225CD72
	ldr r1, [sp, #0x10]
	subs r1, r1, r3
	str r1, [sp, #0x10]
_0225CD72:
	movs r1, #0x40
	adds r2, r7, #0
	tst r2, r1
	bne _0225CD7E
	tst r1, r6
	beq _0225CDAA
_0225CD7E:
	ldr r1, [r4, #4]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, #1
	bne _0225CD9E
	movs r1, #0x3e
	adds r2, r0, r5
	lsls r1, r1, #8
	cmp r2, r1
	bge _0225CD9A
	ldr r1, [sp, #0xc]
	adds r1, r1, r5
	str r1, [sp, #0xc]
	b _0225CDAA
_0225CD9A:
	str r1, [sp, #0xc]
	b _0225CDAA
_0225CD9E:
	ldr r1, _0225CE04 @ =0x00002020
	cmp r0, r1
	bge _0225CDAA
	ldr r1, [sp, #0xc]
	adds r1, r1, r5
	str r1, [sp, #0xc]
_0225CDAA:
	movs r1, #0x80
	adds r2, r7, #0
	tst r2, r1
	bne _0225CDB6
	tst r1, r6
	beq _0225CDE2
_0225CDB6:
	ldr r1, [r4, #4]
	lsls r1, r1, #0x1f
	lsrs r1, r1, #0x1f
	cmp r1, #1
	bne _0225CDD4
	subs r1, r0, r5
	ldr r0, _0225CE08 @ =0xFFFFC200
	cmp r1, r0
	ble _0225CDD0
	ldr r0, [sp, #0xc]
	subs r0, r0, r5
	str r0, [sp, #0xc]
	b _0225CDE2
_0225CDD0:
	str r0, [sp, #0xc]
	b _0225CDE2
_0225CDD4:
	movs r1, #0x13
	lsls r1, r1, #8
	cmp r0, r1
	ble _0225CDE2
	ldr r0, [sp, #0xc]
	subs r0, r0, r5
	str r0, [sp, #0xc]
_0225CDE2:
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	add r1, sp, #0xc
	bl ov69_0225D790
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225CDF4: .4byte 0x0000C3E0
_0225CDF8: .4byte 0x0000C3CC
_0225CDFC: .4byte 0xFFFFD820
_0225CE00: .4byte 0xFFFFCC80
_0225CE04: .4byte 0x00002020
_0225CE08: .4byte 0xFFFFC200
	thumb_func_end ov69_0225CC54

	thumb_func_start ov69_0225CE0C
ov69_0225CE0C: @ 0x0225CE0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	blt _0225CE20
	ldr r1, _0225CE60 @ =0x0000FFFF
	blx FUN_020E1F6C
	str r1, [r4]
	b _0225CE36
_0225CE20:
	bge _0225CE24
	rsbs r0, r0, #0
_0225CE24:
	ldr r1, _0225CE60 @ =0x0000FFFF
	blx FUN_020E1F6C
	adds r1, r0, #1
	ldr r0, _0225CE60 @ =0x0000FFFF
	ldr r2, [r4]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [r4]
_0225CE36:
	ldr r0, [r4, #4]
	cmp r0, #0
	blt _0225CE46
	ldr r1, _0225CE60 @ =0x0000FFFF
	blx FUN_020E1F6C
	str r1, [r4, #4]
	pop {r4, pc}
_0225CE46:
	bge _0225CE4A
	rsbs r0, r0, #0
_0225CE4A:
	ldr r1, _0225CE60 @ =0x0000FFFF
	blx FUN_020E1F6C
	adds r1, r0, #1
	ldr r0, _0225CE60 @ =0x0000FFFF
	ldr r2, [r4, #4]
	muls r0, r1, r0
	adds r0, r2, r0
	str r0, [r4, #4]
	pop {r4, pc}
	nop
_0225CE60: .4byte 0x0000FFFF
	thumb_func_end ov69_0225CE0C

	thumb_func_start ov69_0225CE64
ov69_0225CE64: @ 0x0225CE64
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4]
	cmp r1, #3
	bhi _0225CF1C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0225CE7A: @ jump table
	.2byte _0225CE82 - _0225CE7A - 2 @ case 0
	.2byte _0225CEA8 - _0225CE7A - 2 @ case 1
	.2byte _0225CEC0 - _0225CE7A - 2 @ case 2
	.2byte _0225CEE2 - _0225CE7A - 2 @ case 3
_0225CE82:
	bl ov69_0225CF9C
	cmp r0, #0
	beq _0225CF20
	cmp r0, #1
	beq _0225CE94
	cmp r0, #2
	beq _0225CEA2
	b _0225CF20
_0225CE94:
	ldr r0, _0225CF24 @ =0x0000C3CC
	adds r0, r4, r0
	bl ov69_0225DB00
	movs r0, #1
	strh r0, [r4]
	b _0225CF20
_0225CEA2:
	movs r0, #2
	strh r0, [r4]
	b _0225CF20
_0225CEA8:
	ldr r0, _0225CF24 @ =0x0000C3CC
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov69_0225DB2C
	cmp r0, #1
	bne _0225CF20
	movs r0, #0
	strh r0, [r4]
	b _0225CF20
_0225CEC0:
	movs r0, #0xc7
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov69_0225DDFC
	ldr r0, _0225CF28 @ =0x0000C40C
	adds r0, r4, r0
	bl ov69_0225E084
	ldr r0, _0225CF2C @ =0x0000C3E0
	adds r0, r4, r0
	bl ov69_0225DD2C
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0225CF20
_0225CEE2:
	movs r0, #0xc7
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov69_0225DE40
	cmp r0, #0
	beq _0225CF20
	cmp r0, #1
	beq _0225CF18
	cmp r0, #2
	bne _0225CF18
	ldr r0, _0225CF28 @ =0x0000C40C
	adds r0, r4, r0
	bl ov69_0225E0A0
	movs r0, #0xc7
	lsls r0, r0, #8
	adds r0, r4, r0
	bl ov69_0225DEA0
	ldr r0, _0225CF2C @ =0x0000C3E0
	adds r0, r4, r0
	bl ov69_0225DD44
	movs r0, #0
	strh r0, [r4]
	b _0225CF20
_0225CF18:
	movs r0, #1
	pop {r4, pc}
_0225CF1C:
	bl FUN_02022974
_0225CF20:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0225CF24: .4byte 0x0000C3CC
_0225CF28: .4byte 0x0000C40C
_0225CF2C: .4byte 0x0000C3E0
	thumb_func_end ov69_0225CE64

	thumb_func_start ov69_0225CF30
ov69_0225CF30: @ 0x0225CF30
	push {r3, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #2]
	cmp r0, #0
	bne _0225CF4A
	ldr r0, _0225CF4C @ =0x0000C40C
	movs r1, #0x5a
	lsls r1, r1, #2
	adds r0, r2, r0
	adds r1, r2, r1
	adds r2, #0x20
	bl ov69_0225E00C
_0225CF4A:
	pop {r3, pc}
	.align 2, 0
_0225CF4C: .4byte 0x0000C40C
	thumb_func_end ov69_0225CF30

	thumb_func_start ov69_0225CF50
ov69_0225CF50: @ 0x0225CF50
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	ldr r0, _0225CF8C @ =0x0000C3CC
	adds r0, r4, r0
	bl ov69_0225DAF8
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov69_0225D728
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0xac
	adds r1, r4, r1
	bl ov69_0225D854
	adds r4, #0x20
	adds r0, r4, #0
	bl ov69_0225D384
	movs r0, #0
	movs r1, #1
	bl FUN_020241BC
	pop {r4, pc}
	nop
_0225CF8C: .4byte 0x0000C3CC
	thumb_func_end ov69_0225CF50

	thumb_func_start ov69_0225CF90
ov69_0225CF90: @ 0x0225CF90
	ldr r3, _0225CF98 @ =ov69_0225D390
	adds r0, #0x20
	bx r3
	nop
_0225CF98: .4byte ov69_0225D390
	thumb_func_end ov69_0225CF90

	thumb_func_start ov69_0225CF9C
ov69_0225CF9C: @ 0x0225CF9C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0225D01C @ =0x0000C3E0
	adds r0, r5, r0
	bl ov69_0225DC54
	ldr r0, _0225D01C @ =0x0000C3E0
	ldr r1, [r5, r0]
	movs r0, #2
	tst r1, r0
	beq _0225CFC0
	ldr r0, _0225D020 @ =0x000005DD
	bl FUN_02005748
	add sp, #0xc
	movs r0, #2
	pop {r4, r5, pc}
_0225CFC0:
	ldr r2, _0225D024 @ =0x021BF67C
	lsls r0, r0, #9
	ldr r1, [r2, #0x48]
	tst r0, r1
	beq _0225D00C
	adds r0, r5, #0
	add r1, sp, #0
	bl ov69_0225D088
	cmp r0, #1
	bne _0225D016
	ldr r0, _0225D028 @ =0x0000C40C
	add r1, sp, #0
	adds r0, r5, r0
	bl ov69_0225E0F8
	cmp r0, #0
	bne _0225D016
	ldr r0, _0225D028 @ =0x0000C40C
	add r1, sp, #0
	adds r0, r5, r0
	bl ov69_0225E0C0
	cmp r0, #0
	beq _0225D016
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	bl ov69_0225D268
	ldr r0, _0225D02C @ =0x000005BF
	bl FUN_02005748
	b _0225D016
_0225D00C:
	ldr r2, [r2, #0x44]
	adds r0, r5, #0
	bl ov69_0225CC54
	adds r4, r0, #0
_0225D016:
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0225D01C: .4byte 0x0000C3E0
_0225D020: .4byte 0x000005DD
_0225D024: .4byte 0x021BF67C
_0225D028: .4byte 0x0000C40C
_0225D02C: .4byte 0x000005BF
	thumb_func_end ov69_0225CF9C

	thumb_func_start ov69_0225D030
ov69_0225D030: @ 0x0225D030
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0x14]
	ldr r2, [r5, #0x18]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	bl ov69_0225D268
	cmp r0, #0
	bne _0225D084
	ldr r0, [r4]
	bl ov69_0225EFEC
	adds r6, r0, #0
	cmp r6, #0x32
	beq _0225D084
	lsls r1, r6, #0x18
	ldr r0, [r4]
	lsrs r1, r1, #0x18
	bl FUN_022315D8
	adds r7, r0, #0
	lsls r1, r6, #0x18
	ldr r0, [r4]
	lsrs r1, r1, #0x18
	bl FUN_022315FC
	adds r2, r0, #0
	lsls r1, r7, #0x18
	lsls r2, r2, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	bl ov69_0225D268
	cmp r0, #1
	beq _0225D084
	bl FUN_02022974
_0225D084:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov69_0225D030

	thumb_func_start ov69_0225D088
ov69_0225D088: @ 0x0225D088
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov69_0225D0D8
	adds r6, r0, #0
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov69_0225DA70
	cmp r6, r0
	blo _0225D0A6
	movs r0, #0
	pop {r4, r5, r6, pc}
_0225D0A6:
	adds r2, r5, #0
	adds r2, #0x1c
	ldr r2, [r2]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov69_0225D1E0
	str r0, [r4]
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r6, #0
	bl ov69_0225DA38
	str r0, [r4, #4]
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r6, #0
	bl ov69_0225DA54
	str r0, [r4, #8]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov69_0225D088

	thumb_func_start ov69_0225D0D8
ov69_0225D0D8: @ 0x0225D0D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov69_0225DA70
	str r0, [sp, #0x14]
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r5, r0
	add r1, sp, #0x24
	bl ov69_0225D780
	ldr r1, [sp, #0x24]
	movs r6, #1
	adds r0, r1, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x80
	str r0, [sp, #0xc]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [sp, #0x28]
	str r0, [sp, #8]
	adds r0, r1, #0
	subs r0, #0x80
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, #0x80
	str r0, [sp, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x14]
	lsls r6, r6, #8
	movs r4, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	bls _0225D18C
	add r7, sp, #0x18
_0225D12E:
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov69_0225D9F0
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov69_0225DA1C
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	cmp r1, r2
	ble _0225D184
	ldr r2, [sp, #8]
	cmp r1, r2
	bge _0225D184
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #4]
	cmp r1, r2
	ble _0225D184
	ldr r2, [sp]
	cmp r1, r2
	bge _0225D184
	cmp r0, #3
	beq _0225D184
	add r0, sp, #0x24
	bl ov69_0225CE0C
	adds r0, r7, #0
	bl ov69_0225CE0C
	add r0, sp, #0x24
	adds r1, r7, #0
	bl ov69_0225D194
	cmp r0, r6
	bhs _0225D184
	adds r6, r0, #0
	str r4, [sp, #0x10]
_0225D184:
	ldr r0, [sp, #0x14]
	adds r4, r4, #1
	cmp r4, r0
	blo _0225D12E
_0225D18C:
	ldr r0, [sp, #0x10]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov69_0225D0D8

	thumb_func_start ov69_0225D194
ov69_0225D194: @ 0x0225D194
	push {r3, r4, r5, lr}
	ldr r3, [r0]
	ldr r2, [r1]
	subs r4, r3, r2
	bpl _0225D1A0
	rsbs r4, r4, #0
_0225D1A0:
	ldr r2, [r0, #4]
	ldr r0, [r1, #4]
	subs r5, r2, r0
	bpl _0225D1AA
	rsbs r5, r5, #0
_0225D1AA:
	movs r0, #0xb4
	bl FUN_0201D278
	cmp r4, r0
	ble _0225D1B8
	ldr r0, _0225D1DC @ =0x0000FFFF
	subs r4, r0, r4
_0225D1B8:
	movs r0, #0xb4
	bl FUN_0201D278
	cmp r5, r0
	ble _0225D1C6
	ldr r0, _0225D1DC @ =0x0000FFFF
	subs r5, r0, r5
_0225D1C6:
	adds r1, r4, #0
	adds r0, r5, #0
	muls r1, r4, r1
	muls r0, r5, r0
	adds r0, r1, r0
	lsls r0, r0, #0xc
	blx FUN_020BCFF0
	asrs r0, r0, #0xc
	pop {r3, r4, r5, pc}
	nop
_0225D1DC: .4byte 0x0000FFFF
	thumb_func_end ov69_0225D194

	thumb_func_start ov69_0225D1E0
ov69_0225D1E0: @ 0x0225D1E0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	add r0, sp, #0x30
	ldrb r0, [r0, #8]
	adds r7, r1, #0
	movs r1, #0xdb
	subs r4, r0, #4
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r2, #3
	bl ov69_0225D9C4
	adds r6, r0, #0
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov69_0225DA70
	cmp r6, r0
	blo _0225D212
	bl FUN_02022974
_0225D212:
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	add r1, sp, #0xc
	adds r2, r6, #0
	bl ov69_0225D9F0
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r5, r0
	add r1, sp, #0
	adds r2, r7, #0
	bl ov69_0225D9F0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	movs r0, #0x18
	muls r0, r1, r0
	ldr r1, _0225D264 @ =0x0000FFFF
	blx FUN_020E1F6C
	adds r4, r4, r0
	bpl _0225D248
	adds r4, #0x18
_0225D248:
	cmp r4, #0x18
	blt _0225D256
	adds r0, r4, #0
	movs r1, #0x18
	blx FUN_020E1F6C
	adds r4, r1, #0
_0225D256:
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_0225D264: .4byte 0x0000FFFF
	thumb_func_end ov69_0225D1E0

	thumb_func_start ov69_0225D268
ov69_0225D268: @ 0x0225D268
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0x89
	lsls r0, r0, #2
	adds r0, r4, r0
	add r3, sp, #0xc
	bl ov69_0225D984
	cmp r0, #3
	beq _0225D2A0
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	add r1, sp, #0
	bl ov69_0225D780
	ldr r0, [sp, #8]
	add r1, sp, #0xc
	str r0, [sp, #0x14]
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov69_0225D790
	add sp, #0x18
	movs r0, #1
	pop {r4, pc}
_0225D2A0:
	movs r0, #0
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225D268

	thumb_func_start ov69_0225D2A8
ov69_0225D2A8: @ 0x0225D2A8
	push {r4, r5, r6, r7}
	ldr r4, [r0, #4]
	movs r2, #2
	bics r4, r2
	movs r3, #1
	bics r4, r3
	ldr r3, _0225D314 @ =0x020E4C44
	str r4, [r0, #4]
	ldrb r3, [r3]
	cmp r3, #1
	ldr r3, [r0, #4]
	bne _0225D2C8
	movs r2, #2
	orrs r2, r3
	str r2, [r0, #4]
	b _0225D2CC
_0225D2C8:
	bics r3, r2
	str r3, [r0, #4]
_0225D2CC:
	ldr r2, [r0, #4]
	lsls r3, r2, #0x1e
	lsrs r3, r3, #0x1f
	cmp r3, #1
	bne _0225D306
	movs r3, #0
	adds r4, r3, #0
	movs r5, #1
	movs r6, #1
_0225D2DE:
	ldr r2, [r1]
	adds r7, r2, r4
	ldrb r7, [r7, #3]
	lsls r7, r7, #0x18
	lsrs r7, r7, #0x1c
	cmp r7, #1
	bne _0225D2FA
	ldrh r2, [r2, r4]
	cmp r2, #0x67
	beq _0225D2FA
	ldr r2, [r0, #4]
	bics r2, r5
	orrs r2, r6
	str r2, [r0, #4]
_0225D2FA:
	adds r3, r3, #1
	adds r4, r4, #4
	cmp r3, #0x32
	blt _0225D2DE
	pop {r4, r5, r6, r7}
	bx lr
_0225D306:
	movs r1, #1
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	str r1, [r0, #4]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0225D314: .4byte 0x020E4C44
	thumb_func_end ov69_0225D2A8

	thumb_func_start ov69_0225D318
ov69_0225D318: @ 0x0225D318
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0xa3
	adds r1, r4, #0
	bl FUN_02006C24
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x40
	adds r1, r4, #0
	bl FUN_0201DBEC
	ldr r0, _0225D358 @ =0x0225F0C0
	bl FUN_0201FE94
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov69_0225D3A4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov69_0225D53C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov69_0225D604
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225D358: .4byte 0x0225F0C0
	thumb_func_end ov69_0225D318

	thumb_func_start ov69_0225D35C
ov69_0225D35C: @ 0x0225D35C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl ov69_0225D504
	adds r0, r4, #0
	bl ov69_0225D5D8
	adds r0, r4, #0
	bl ov69_0225D63C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225D35C

	thumb_func_start ov69_0225D384
ov69_0225D384: @ 0x0225D384
	ldr r3, _0225D38C @ =FUN_020219F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D38C: .4byte FUN_020219F8
	thumb_func_end ov69_0225D384

	thumb_func_start ov69_0225D390
ov69_0225D390: @ 0x0225D390
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0201C2B8
	bl FUN_0200A858
	bl FUN_0201DCAC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov69_0225D390

	thumb_func_start ov69_0225D3A4
ov69_0225D3A4: @ 0x0225D3A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _0225D4F0 @ =0x0225F040
	adds r7, r2, #0
	str r1, [sp, #0x10]
	bl FUN_02018368
	adds r0, r7, #0
	bl FUN_02018340
	str r0, [r5]
	ldr r0, _0225D4F4 @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #0
	ldr r6, _0225D4F8 @ =0x0225F154
	ldr r4, _0225D4FC @ =0x0225F060
	str r0, [sp, #0x14]
_0225D3CE:
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4]
	movs r1, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	adds r3, r7, #0
	bl FUN_02019690
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	ldr r0, [sp, #0x14]
	adds r6, #0x1c
	adds r0, r0, #1
	adds r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _0225D3CE
	movs r3, #0
	str r3, [sp]
	movs r0, #0x51
	str r7, [sp, #4]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #5
	movs r2, #4
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r7, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #0xb
	movs r3, #4
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r7, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #0xc
	movs r3, #4
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r7, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #4
	movs r3, #6
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x51
	str r7, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5]
	movs r1, #0x12
	movs r3, #7
	bl FUN_0200710C
	movs r0, #0
	movs r1, #0x20
	adds r2, r7, #0
	bl FUN_02002E98
	movs r1, #0x16
	movs r0, #4
	lsls r1, r1, #4
	adds r2, r7, #0
	bl FUN_02002E98
	movs r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0x1f
	bl FUN_0200DAA4
	movs r3, #0
	str r3, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0x1f
	bl FUN_0200DAA4
	ldr r0, [sp, #0x10]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	str r4, [sp]
	str r7, [sp, #4]
	movs r2, #0xa
	ldr r0, [r5]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_0200DD0C
	str r4, [sp]
	str r7, [sp, #4]
	movs r1, #1
	ldr r0, [r5]
	adds r2, r1, #0
	movs r3, #2
	bl FUN_0200DD0C
	ldr r1, _0225D500 @ =0x000072CA
	movs r0, #0
	bl FUN_0201975C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225D4F0: .4byte 0x0225F040
_0225D4F4: .4byte 0x021BF6DC
_0225D4F8: .4byte 0x0225F154
_0225D4FC: .4byte 0x0225F060
_0225D500: .4byte 0x000072CA
	thumb_func_end ov69_0225D3A4

	thumb_func_start ov69_0225D504
ov69_0225D504: @ 0x0225D504
	push {r4, r5, r6, lr}
	ldr r5, _0225D534 @ =0x0225F060
	adds r6, r0, #0
	movs r4, #0
_0225D50C:
	ldr r1, [r5]
	ldr r0, [r6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _0225D50C
	ldr r0, [r6]
	bl FUN_020181C4
	ldr r0, _0225D538 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	pop {r4, r5, r6, pc}
	nop
_0225D534: .4byte 0x0225F060
_0225D538: .4byte 0x021BF6DC
	thumb_func_end ov69_0225D504

	thumb_func_start ov69_0225D53C
ov69_0225D53C: @ 0x0225D53C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x1f
	str r3, [sp, #0xc]
	adds r2, r0, #0
	str r6, [sp, #0x10]
	bl FUN_0200A784
	movs r1, #0x10
	ldr r0, _0225D5D4 @ =0x0225F050
	adds r2, r1, #0
	bl FUN_0201E88C
	movs r0, #0x20
	adds r1, r6, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	adds r1, r5, #0
	movs r0, #0x20
	adds r1, #8
	adds r2, r6, #0
	bl FUN_020095C4
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	adds r0, #8
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r7, #0x13
	movs r4, #0
	lsls r7, r7, #4
_0225D5A8:
	movs r0, #0x20
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225D5A8
	bl FUN_02039734
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225D5D4: .4byte 0x0225F050
	thumb_func_end ov69_0225D53C

	thumb_func_start ov69_0225D5D8
ov69_0225D5D8: @ 0x0225D5D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02021964
	movs r6, #0x13
	movs r4, #0
	lsls r6, r6, #4
_0225D5E8:
	ldr r0, [r5, r6]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225D5E8
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	pop {r4, r5, r6, pc}
	thumb_func_end ov69_0225D5D8

	thumb_func_start ov69_0225D604
ov69_0225D604: @ 0x0225D604
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #4
	str r0, [sp]
	ldr r0, _0225D634 @ =ov69_0225D64C
	movs r2, #2
	str r0, [sp, #4]
	adds r0, r1, #0
	movs r1, #0
	adds r3, r1, #0
	bl FUN_02024220
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r4, r1]
	movs r0, #0
	ldr r3, _0225D638 @ =0xFFFFF001
	adds r1, r0, #0
	adds r2, r0, #0
	blx FUN_020AF51C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0225D634: .4byte ov69_0225D64C
_0225D638: .4byte 0xFFFFF001
	thumb_func_end ov69_0225D604

	thumb_func_start ov69_0225D63C
ov69_0225D63C: @ 0x0225D63C
	movs r1, #5
	lsls r1, r1, #6
	ldr r3, _0225D648 @ =FUN_020242C4
	ldr r0, [r0, r1]
	bx r3
	nop
_0225D648: .4byte FUN_020242C4
	thumb_func_end ov69_0225D63C

	thumb_func_start ov69_0225D64C
ov69_0225D64C: @ 0x0225D64C
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0225D6BC @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0225D6C0 @ =0xFFFFCFFD
	ands r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	adds r2, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0225D6C4 @ =0x0000CFFB
	ands r2, r3
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r3, [r0]
	adds r1, r1, #2
	ands r3, r2
	movs r2, #8
	orrs r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	ands r2, r1
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r1, #0
	ldr r0, _0225D6C8 @ =0x00006B5A
	ldr r2, _0225D6CC @ =0x00007FFF
	movs r3, #0x3f
	str r1, [sp]
	blx FUN_020BFD58
	ldr r1, _0225D6D0 @ =0xBFFF0000
	ldr r0, _0225D6D4 @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0225D6BC: .4byte 0x04000008
_0225D6C0: .4byte 0xFFFFCFFD
_0225D6C4: .4byte 0x0000CFFB
_0225D6C8: .4byte 0x00006B5A
_0225D6CC: .4byte 0x00007FFF
_0225D6D0: .4byte 0xBFFF0000
_0225D6D4: .4byte 0x04000580
	thumb_func_end ov69_0225D64C

	thumb_func_start ov69_0225D6D8
ov69_0225D6D8: @ 0x0225D6D8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r2, #0
	movs r2, #0
	str r2, [r4]
	str r2, [r4, #4]
	movs r0, #1
	str r2, [r4, #8]
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	movs r0, #0x69
	lsls r0, r0, #6
	str r0, [r4, #0x18]
	movs r0, #0x1f
	lsls r0, r0, #0xa
	str r0, [r4, #0x1c]
	str r2, [r4, #0x20]
	movs r2, #0x51
	lsls r2, r2, #2
	adds r0, r4, #0
	ldr r1, [r1, r2]
	adds r0, #0x9c
	movs r2, #3
	bl FUN_020170D8
	adds r0, r4, #0
	adds r4, #0x9c
	adds r0, #0x24
	adds r1, r4, #0
	bl FUN_02017258
	pop {r4, pc}
	thumb_func_end ov69_0225D6D8

	thumb_func_start ov69_0225D71C
ov69_0225D71C: @ 0x0225D71C
	ldr r3, _0225D724 @ =FUN_02017110
	adds r0, #0x9c
	bx r3
	nop
_0225D724: .4byte FUN_02017110
	thumb_func_end ov69_0225D71C

	thumb_func_start ov69_0225D728
ov69_0225D728: @ 0x0225D728
	push {r3, r4, lr}
	sub sp, #0x24
	adds r4, r0, #0
	add r1, sp, #0
	bl ov69_0225D770
	adds r0, r4, #0
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	adds r0, #0x24
	bl FUN_02017350
	adds r0, r4, #0
	ldr r1, [r4, #0xc]
	ldr r2, [r4, #0x10]
	ldr r3, [r4, #0x14]
	adds r0, #0x24
	bl FUN_0201736C
	adds r4, #0x24
	adds r0, r4, #0
	add r1, sp, #0
	bl FUN_02017330
	add sp, #0x24
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225D728

	thumb_func_start ov69_0225D760
ov69_0225D760: @ 0x0225D760
	adds r3, r0, #0
	adds r2, r1, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225D760

	thumb_func_start ov69_0225D770
ov69_0225D770: @ 0x0225D770
	adds r2, r0, #0
	ldr r3, _0225D77C @ =ov69_0225CAF4
	adds r2, #0x18
	adds r0, r1, #0
	adds r1, r2, #0
	bx r3
	.align 2, 0
_0225D77C: .4byte ov69_0225CAF4
	thumb_func_end ov69_0225D770

	thumb_func_start ov69_0225D780
ov69_0225D780: @ 0x0225D780
	adds r2, r0, #0
	adds r2, #0x18
	adds r3, r1, #0
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	thumb_func_end ov69_0225D780

	thumb_func_start ov69_0225D790
ov69_0225D790: @ 0x0225D790
	adds r3, r1, #0
	adds r2, r0, #0
	ldm r3!, {r0, r1}
	adds r2, #0x18
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	bx lr
	thumb_func_end ov69_0225D790

	thumb_func_start ov69_0225D7A0
ov69_0225D7A0: @ 0x0225D7A0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp, #4]
	ldr r2, [sp, #0x34]
	str r0, [sp]
	str r2, [sp, #0x34]
	bl ov69_0225C980
	ldr r1, _0225D828 @ =0x0000C178
	ldr r0, [sp]
	ldr r4, _0225D82C @ =0x0225F028
	adds r5, r0, r1
	ldr r1, _0225D830 @ =0x0000C010
	movs r7, #0
	adds r6, r0, r1
_0225D7C0:
	movs r1, #0x51
	ldr r2, [sp, #4]
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldr r2, [r4]
	ldr r3, [sp, #0x34]
	adds r0, r5, #0
	bl FUN_020170D8
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_02017258
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, #0x10
	adds r6, #0x78
	cmp r7, #3
	blt _0225D7C0
	ldr r0, [sp, #0x2c]
	ldr r2, _0225D834 @ =0x0000C004
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bne _0225D80E
	movs r3, #3
	ldr r0, [sp]
	lsls r3, r3, #8
	str r3, [r0, r2]
	adds r1, r2, #4
	str r3, [r0, r1]
	movs r1, #1
	lsls r1, r1, #0xc
	adds r2, #8
	str r1, [r0, r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
_0225D80E:
	movs r3, #1
	ldr r0, [sp]
	lsls r3, r3, #0xc
	str r3, [r0, r2]
	adds r1, r2, #4
	str r3, [r0, r1]
	adds r2, #8
	str r3, [r0, r2]
	add sp, #8
	pop {r3, r4, r5, r6, r7}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
_0225D828: .4byte 0x0000C178
_0225D82C: .4byte 0x0225F028
_0225D830: .4byte 0x0000C010
_0225D834: .4byte 0x0000C004
	thumb_func_end ov69_0225D7A0

	thumb_func_start ov69_0225D838
ov69_0225D838: @ 0x0225D838
	push {r3, r4, r5, lr}
	ldr r1, _0225D850 @ =0x0000C178
	movs r4, #0
	adds r5, r0, r1
_0225D840:
	adds r0, r5, #0
	bl FUN_02017110
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #3
	blt _0225D840
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225D850: .4byte 0x0000C178
	thumb_func_end ov69_0225D838

	thumb_func_start ov69_0225D854
ov69_0225D854: @ 0x0225D854
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	add r1, sp, #4
	bl ov69_0225D760
	adds r0, r4, #0
	add r1, sp, #0x10
	bl ov69_0225D770
	ldr r0, _0225D908 @ =0x0000C010
	ldr r7, _0225D90C @ =0x0000019A
	movs r6, #0
	adds r4, r5, r0
_0225D874:
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r0, r4, #0
	bl FUN_02017350
	cmp r6, #2
	ldr r1, _0225D910 @ =0x0000C004
	bne _0225D89A
	ldr r3, _0225D914 @ =0x0000C00C
	ldr r2, _0225D918 @ =0x0000C008
	ldr r3, [r5, r3]
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	adds r0, r4, #0
	adds r3, r3, r7
	bl FUN_0201736C
	b _0225D8AA
_0225D89A:
	ldr r2, _0225D918 @ =0x0000C008
	ldr r3, _0225D914 @ =0x0000C00C
	ldr r1, [r5, r1]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	adds r0, r4, #0
	bl FUN_0201736C
_0225D8AA:
	adds r6, r6, #1
	adds r4, #0x78
	cmp r6, #3
	blt _0225D874
	add r0, sp, #0x34
	blx FUN_020BB4C8
	movs r0, #0xc1
	lsls r0, r0, #8
	adds r0, r5, r0
	add r1, sp, #0x34
	bl FUN_02017330
	ldr r0, [r5]
	movs r7, #0
	cmp r0, #0
	bls _0225D904
	ldr r0, _0225D908 @ =0x0000C010
	adds r6, r5, #0
	adds r0, r5, r0
	adds r6, #8
	adds r4, r5, #0
	str r0, [sp]
_0225D8D8:
	adds r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0x34
	blx FUN_020BB8EC
	ldrh r2, [r4, #0x2c]
	cmp r2, #3
	beq _0225D8F8
	movs r0, #0x78
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, [sp]
	adds r0, r0, r1
	add r1, sp, #0x34
	bl FUN_02017330
_0225D8F8:
	ldr r0, [r5]
	adds r7, r7, #1
	adds r6, #0x30
	adds r4, #0x30
	cmp r7, r0
	blo _0225D8D8
_0225D904:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225D908: .4byte 0x0000C010
_0225D90C: .4byte 0x0000019A
_0225D910: .4byte 0x0000C004
_0225D914: .4byte 0x0000C00C
_0225D918: .4byte 0x0000C008
	thumb_func_end ov69_0225D854

	thumb_func_start ov69_0225D91C
ov69_0225D91C: @ 0x0225D91C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r7, r1, #0
	str r2, [sp]
	movs r4, #0
_0225D928:
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_0223164C
	cmp r0, #0
	beq _0225D976
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_02231624
	lsls r1, r4, #0x18
	str r0, [sp, #4]
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_022315D8
	lsls r0, r0, #0x18
	lsls r1, r4, #0x18
	lsrs r6, r0, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_022315FC
	cmp r6, r7
	bne _0225D976
	ldr r1, [sp]
	cmp r0, r1
	bne _0225D976
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0225D970
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225D970:
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225D976:
	adds r4, r4, #1
	cmp r4, #0x32
	blt _0225D928
	movs r0, #3
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov69_0225D91C

	thumb_func_start ov69_0225D984
ov69_0225D984: @ 0x0225D984
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r2, [sp]
	adds r5, r0, #0
	adds r7, r1, #0
	str r3, [sp, #4]
	movs r4, #3
	bl ov69_0225DA70
	adds r6, r0, #0
	ldr r2, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov69_0225D9C4
	adds r7, r0, #0
	cmp r7, r6
	bge _0225D9BC
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov69_0225DA1C
	adds r4, r0, #0
	ldr r1, [sp, #4]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov69_0225D9F0
_0225D9BC:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov69_0225D984

	thumb_func_start ov69_0225D9C4
ov69_0225D9C4: @ 0x0225D9C4
	push {r4, r5}
	ldr r5, [r0]
	movs r4, #0
	cmp r5, #0
	bls _0225D9E8
_0225D9CE:
	ldrh r3, [r0, #0x2e]
	cmp r1, r3
	bne _0225D9E0
	ldrh r3, [r0, #0x30]
	cmp r2, r3
	bne _0225D9E0
	adds r0, r4, #0
	pop {r4, r5}
	bx lr
_0225D9E0:
	adds r4, r4, #1
	adds r0, #0x30
	cmp r4, r5
	blo _0225D9CE
_0225D9E8:
	adds r0, r5, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225D9C4

	thumb_func_start ov69_0225D9F0
ov69_0225D9F0: @ 0x0225D9F0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r2, #0
	adds r4, r1, #0
	cmp r6, r0
	blo _0225DA02
	bl FUN_02022974
_0225DA02:
	movs r0, #0x30
	muls r0, r6, r0
	adds r1, r5, r0
	movs r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r4]
	movs r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #8]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov69_0225D9F0

	thumb_func_start ov69_0225DA1C
ov69_0225DA1C: @ 0x0225DA1C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	cmp r4, r0
	blo _0225DA2C
	bl FUN_02022974
_0225DA2C:
	movs r0, #0x30
	muls r0, r4, r0
	adds r0, r5, r0
	ldrh r0, [r0, #0x2c]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov69_0225DA1C

	thumb_func_start ov69_0225DA38
ov69_0225DA38: @ 0x0225DA38
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	cmp r4, r0
	blo _0225DA48
	bl FUN_02022974
_0225DA48:
	movs r0, #0x30
	muls r0, r4, r0
	adds r0, r5, r0
	ldrh r0, [r0, #0x2e]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov69_0225DA38

	thumb_func_start ov69_0225DA54
ov69_0225DA54: @ 0x0225DA54
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	cmp r4, r0
	blo _0225DA64
	bl FUN_02022974
_0225DA64:
	movs r0, #0x30
	muls r0, r4, r0
	adds r0, r5, r0
	ldrh r0, [r0, #0x30]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov69_0225DA54

	thumb_func_start ov69_0225DA70
ov69_0225DA70: @ 0x0225DA70
	ldr r0, [r0]
	bx lr
	thumb_func_end ov69_0225DA70

	thumb_func_start ov69_0225DA74
ov69_0225DA74: @ 0x0225DA74
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r0, r3, #0
	bl FUN_020203AC
	str r0, [r4]
	movs r3, #0
	str r3, [sp]
	ldr r0, [r4]
	ldr r1, _0225DAE0 @ =0x0225F01C
	str r0, [sp, #4]
	ldr r0, _0225DAE4 @ =0x0225F034
	ldr r2, _0225DAE8 @ =0x000005C1
	bl FUN_02020784
	movs r1, #0x19
	ldr r2, [r4]
	movs r0, #0
	lsls r1, r1, #0xe
	bl FUN_020206BC
	ldr r1, [r4]
	movs r0, #0
	bl FUN_02020854
	ldr r0, [r4]
	bl FUN_020203D4
	ldr r0, [sp, #0x14]
	lsls r0, r0, #0x1f
	lsrs r0, r0, #0x1f
	bne _0225DAC2
	movs r0, #1
	strh r0, [r4, #0x10]
	movs r0, #5
	lsls r0, r0, #0x10
	b _0225DACA
_0225DAC2:
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #0x4a
	lsls r0, r0, #0xe
_0225DACA:
	str r0, [r4, #0xc]
	ldr r0, [r4, #0xc]
	ldr r1, [r4]
	bl FUN_02020A50
	add sp, #8
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_0225DAE0: .4byte 0x0225F01C
_0225DAE4: .4byte 0x0225F034
_0225DAE8: .4byte 0x000005C1
	thumb_func_end ov69_0225DA74

	thumb_func_start ov69_0225DAEC
ov69_0225DAEC: @ 0x0225DAEC
	ldr r3, _0225DAF4 @ =FUN_020203B8
	ldr r0, [r0]
	bx r3
	nop
_0225DAF4: .4byte FUN_020203B8
	thumb_func_end ov69_0225DAEC

	thumb_func_start ov69_0225DAF8
ov69_0225DAF8: @ 0x0225DAF8
	ldr r3, _0225DAFC @ =FUN_020203EC
	bx r3
	.align 2, 0
_0225DAFC: .4byte FUN_020203EC
	thumb_func_end ov69_0225DAF8

	thumb_func_start ov69_0225DB00
ov69_0225DB00: @ 0x0225DB00
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	bne _0225DB16
	movs r0, #1
	strh r0, [r4, #0x10]
	ldr r0, _0225DB28 @ =0x000005BE
	bl FUN_02005748
	b _0225DB20
_0225DB16:
	movs r0, #0
	strh r0, [r4, #0x10]
	ldr r0, _0225DB28 @ =0x000005BE
	bl FUN_02005748
_0225DB20:
	movs r0, #1
	strh r0, [r4, #0x12]
	pop {r4, pc}
	nop
_0225DB28: .4byte 0x000005BE
	thumb_func_end ov69_0225DB00

	thumb_func_start ov69_0225DB2C
ov69_0225DB2C: @ 0x0225DB2C
	push {r3, lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0x12]
	cmp r0, #0
	bne _0225DB3A
	movs r0, #1
	pop {r3, pc}
_0225DB3A:
	ldrh r0, [r2, #0x10]
	cmp r0, #0
	beq _0225DB72
	cmp r0, #1
	bne _0225DB9E
	movs r0, #0x16
	ldr r3, [r2, #0xc]
	lsls r0, r0, #0xe
	cmp r3, r0
	ble _0225DB66
	movs r0, #2
	lsls r0, r0, #0xe
	subs r0, r3, r0
	str r0, [r2, #0xc]
	ldr r0, _0225DBAC @ =0x0000C004
	ldr r3, [r1, r0]
	subs r3, #0x80
	str r3, [r1, r0]
	ldr r3, [r1, r0]
	adds r0, r0, #4
	str r3, [r1, r0]
	b _0225DB9E
_0225DB66:
	movs r0, #5
	lsls r0, r0, #0x10
	str r0, [r2, #0xc]
	movs r0, #0
	strh r0, [r2, #0x12]
	b _0225DB9E
_0225DB72:
	movs r0, #0x12
	ldr r3, [r2, #0xc]
	lsls r0, r0, #0x10
	cmp r3, r0
	bge _0225DB94
	movs r0, #2
	lsls r0, r0, #0xe
	adds r0, r3, r0
	str r0, [r2, #0xc]
	ldr r0, _0225DBAC @ =0x0000C004
	ldr r3, [r1, r0]
	adds r3, #0x80
	str r3, [r1, r0]
	ldr r3, [r1, r0]
	adds r0, r0, #4
	str r3, [r1, r0]
	b _0225DB9E
_0225DB94:
	movs r0, #0x4a
	lsls r0, r0, #0xe
	str r0, [r2, #0xc]
	movs r0, #0
	strh r0, [r2, #0x12]
_0225DB9E:
	ldr r0, [r2, #0xc]
	ldr r1, [r2]
	bl FUN_02020A50
	movs r0, #0
	pop {r3, pc}
	nop
_0225DBAC: .4byte 0x0000C004
	thumb_func_end ov69_0225DB2C

	thumb_func_start ov69_0225DBB0
ov69_0225DBB0: @ 0x0225DBB0
	ldrh r0, [r0, #0x10]
	bx lr
	thumb_func_end ov69_0225DBB0

	thumb_func_start ov69_0225DBB4
ov69_0225DBB4: @ 0x0225DBB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r6, r2, #0
	movs r1, #0
	movs r2, #0x2c
	adds r5, r0, #0
	adds r7, r3, #0
	blx FUN_020D5124
	movs r0, #0x15
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r2, #1
	adds r1, r5, #0
	str r2, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x1c
	movs r3, #0x19
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x1c
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r6, #0
	movs r1, #1
	bl ov69_0225EF74
	adds r4, r0, #0
	movs r0, #2
	adds r1, r7, #0
	bl FUN_02002BB8
	movs r0, #2
	adds r1, r4, #0
	movs r2, #0
	movs r3, #0x30
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225DC44 @ =0x0002010F
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	adds r0, #0x1c
	movs r1, #2
	bl FUN_0201D78C
	movs r0, #2
	bl FUN_02002C60
	adds r5, #0x1c
	movs r1, #0
	adds r0, r5, #0
	movs r2, #0x1f
	adds r3, r1, #0
	bl FUN_0200DC48
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225DC44: .4byte 0x0002010F
	thumb_func_end ov69_0225DBB4

	thumb_func_start ov69_0225DC48
ov69_0225DC48: @ 0x0225DC48
	ldr r3, _0225DC50 @ =FUN_0201A8FC
	adds r0, #0x1c
	bx r3
	nop
_0225DC50: .4byte FUN_0201A8FC
	thumb_func_end ov69_0225DC48

	thumb_func_start ov69_0225DC54
ov69_0225DC54: @ 0x0225DC54
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	ldr r0, _0225DD0C @ =0x021BF6BC
	ldrh r1, [r0, #0x20]
	cmp r1, #0
	beq _0225DC9C
	ldrh r1, [r0, #0x1c]
	cmp r1, #0xc8
	blo _0225DC82
	cmp r1, #0xf8
	bhi _0225DC82
	ldrh r0, [r0, #0x1e]
	cmp r0, #0xa8
	blo _0225DC82
	cmp r0, #0xb8
	bhi _0225DC82
	movs r0, #2
	add sp, #0x18
	str r0, [r4]
	pop {r4, pc}
_0225DC82:
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	str r0, [r4]
	ldr r0, _0225DD0C @ =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #8]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0xc]
	movs r0, #4
	str r0, [r4, #0x18]
_0225DC9C:
	ldr r0, _0225DD0C @ =0x021BF6BC
	ldrh r0, [r0, #0x22]
	cmp r0, #0
	beq _0225DCF4
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0225DCB2
	cmp r1, #1
	beq _0225DCC2
	add sp, #0x18
	pop {r4, pc}
_0225DCB2:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _0225DCBE
	adds r0, r1, #1
	str r0, [r4, #4]
	b _0225DCC2
_0225DCBE:
	subs r0, r0, #1
	str r0, [r4, #0x18]
_0225DCC2:
	add r0, sp, #0xc
	str r0, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl ov69_0225CBE4
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	orrs r0, r1
	str r0, [r4]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x10]
	ldr r0, [sp, #8]
	add sp, #0x18
	str r0, [r4, #0x14]
	ldr r0, _0225DD0C @ =0x021BF6BC
	ldrh r1, [r0, #0x1c]
	str r1, [r4, #8]
	ldrh r0, [r0, #0x1e]
	str r0, [r4, #0xc]
	pop {r4, pc}
_0225DCF4:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _0225DCFE
	movs r0, #1
	str r0, [r4]
_0225DCFE:
	movs r0, #0
	str r0, [r4, #4]
	str r0, [r4, #0x10]
	str r0, [r4, #0x14]
	str r0, [r4, #0x18]
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
_0225DD0C: .4byte 0x021BF6BC
	thumb_func_end ov69_0225DC54

	thumb_func_start ov69_0225DD10
ov69_0225DD10: @ 0x0225DD10
	cmp r1, #0
	beq _0225DD1E
	cmp r1, #1
	beq _0225DD22
	cmp r1, #2
	beq _0225DD26
	bx lr
_0225DD1E:
	ldr r0, [r0]
	bx lr
_0225DD22:
	ldr r0, [r0, #0x10]
	bx lr
_0225DD26:
	ldr r0, [r0, #0x14]
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225DD10

	thumb_func_start ov69_0225DD2C
ov69_0225DD2C: @ 0x0225DD2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x1c
	movs r1, #1
	bl FUN_0200DC9C
	adds r4, #0x1c
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225DD2C

	thumb_func_start ov69_0225DD44
ov69_0225DD44: @ 0x0225DD44
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x1c
	bl FUN_0201A9A4
	adds r4, #0x1c
	movs r1, #0
	adds r0, r4, #0
	movs r2, #0x1f
	adds r3, r1, #0
	bl FUN_0200DC48
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225DD44

	thumb_func_start ov69_0225DD60
ov69_0225DD60: @ 0x0225DD60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	movs r1, #0
	movs r2, #0x2c
	adds r5, r0, #0
	blx FUN_020D5124
	adds r0, r7, #0
	bl FUN_02025E44
	bl FUN_02027AC0
	str r0, [r5, #8]
	ldr r1, [sp, #0x28]
	movs r0, #0x80
	bl FUN_02023790
	str r0, [r5, #0xc]
	movs r2, #1
	adds r1, r5, #0
	str r2, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	movs r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x10
	movs r3, #2
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x10
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r2, [r5, #0xc]
	adds r0, r6, #0
	movs r1, #5
	bl ov69_0225EF84
	ldr r0, [sp, #0x28]
	bl FUN_02015920
	str r0, [r5, #0x20]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov69_0225DD60

	thumb_func_start ov69_0225DDC8
ov69_0225DDC8: @ 0x0225DDC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225DDE4
	ldr r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225DDE4:
	ldr r0, [r4, #0xc]
	bl FUN_020237BC
	ldr r0, [r4, #0x20]
	bl FUN_02015938
	adds r4, #0x10
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225DDC8

	thumb_func_start ov69_0225DDFC
ov69_0225DDFC: @ 0x0225DDFC
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0x10
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x10
	adds r2, r1, #0
	movs r3, #2
	bl FUN_0200E060
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A9A4
	movs r3, #0
	str r3, [sp]
	ldr r0, [r4, #8]
	movs r1, #1
	str r0, [sp, #4]
	str r3, [sp, #8]
	adds r0, r4, #0
	ldr r2, [r4, #0xc]
	adds r0, #0x10
	bl FUN_0201D738
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov69_0225DDFC

	thumb_func_start ov69_0225DE40
ov69_0225DE40: @ 0x0225DE40
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0225DE52
	cmp r0, #1
	beq _0225DE8C
	b _0225DE94
_0225DE52:
	ldr r0, [r5, #4]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0225DE94
	ldr r3, _0225DE9C @ =0x0225F074
	add r2, sp, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r5, #0
	adds r0, #0x10
	bl FUN_0201C28C
	str r0, [sp]
	ldr r0, [r5, #0x20]
	add r1, sp, #0
	bl FUN_02015958
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225DE94
_0225DE8C:
	ldr r0, [r5, #0x20]
	bl FUN_020159FC
	adds r4, r0, #0
_0225DE94:
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_0225DE9C: .4byte 0x0225F074
	thumb_func_end ov69_0225DE40

	thumb_func_start ov69_0225DEA0
ov69_0225DEA0: @ 0x0225DEA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	bl FUN_02015A54
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #1
	bl FUN_0200E084
	adds r4, #0x10
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225DEA0

	thumb_func_start ov69_0225DEC0
ov69_0225DEC0: @ 0x0225DEC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	movs r2, #0
	adds r1, r0, #0
	str r0, [sp, #0x14]
	str r3, [sp, #0x20]
	str r2, [r1]
	bl ov69_0225E13C
	ldr r5, [sp, #0x14]
	ldr r4, _0225DFB4 @ =0x0225F014
	ldr r6, _0225DFB8 @ =0x0225F118
	movs r7, #0
	adds r5, #0xa0
_0225DEE0:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldrb r3, [r4]
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov69_0225E748
	adds r7, r7, #1
	adds r4, r4, #1
	adds r6, #0xc
	adds r5, #0x28
	cmp r7, #5
	blt _0225DEE0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r2, #4
	str r2, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	movs r3, #0x6a
	ldr r1, [sp, #0x14]
	lsls r3, r3, #2
	adds r1, r1, r3
	ldr r0, [r0]
	movs r3, #2
	bl FUN_0201A7E8
	movs r1, #0x6a
	ldr r0, [sp, #0x14]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [sp, #0x1c]
	movs r1, #0
	bl ov69_0225EF74
	movs r3, #0
	adds r2, r0, #0
	str r3, [sp]
	movs r1, #0xff
	str r1, [sp, #4]
	ldr r0, [sp, #0x14]
	adds r1, #0xa9
	adds r0, r0, r1
	movs r1, #1
	str r3, [sp, #8]
	bl FUN_0201D738
	movs r1, #0x6a
	movs r2, #0xa
	ldr r0, [sp, #0x14]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	adds r3, r2, #0
	bl FUN_0200E060
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x20]
	bl ov69_0225E590
	ldr r0, [sp, #0x20]
	movs r1, #0x51
	str r0, [sp]
	ldr r3, [sp, #0x14]
	ldr r0, [sp, #0x18]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #0x13
	movs r2, #0
	adds r3, #0x98
	bl FUN_020071D0
	ldr r1, [sp, #0x14]
	movs r3, #0xb9
	adds r1, #0x94
	str r0, [r1]
	movs r1, #0x6e
	ldr r0, [sp, #0x14]
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r2, [sp, #0x14]
	lsls r3, r3, #2
	adds r2, r2, r3
	ldr r1, [sp, #0x18]
	ldr r3, [sp, #0x20]
	bl ov69_0225E960
	movs r1, #0xb9
	ldr r0, [sp, #0x14]
	lsls r1, r1, #2
	adds r0, r0, r1
	bl ov69_0225E478
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_0225DFB4: .4byte 0x0225F014
_0225DFB8: .4byte 0x0225F118
	thumb_func_end ov69_0225DEC0

	thumb_func_start ov69_0225DFBC
ov69_0225DFBC: @ 0x0225DFBC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r4, r1, #0
	bl ov69_0225E4E8
	movs r0, #0x6e
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov69_0225EAE8
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r5, #0
	bl ov69_0225E61C
	movs r0, #0x6a
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A8FC
	adds r0, r5, #0
	bl ov69_0225E148
	movs r4, #0
	adds r5, #0xa0
_0225DFFC:
	adds r0, r5, #0
	bl ov69_0225E7DC
	adds r4, r4, #1
	adds r5, #0x28
	cmp r4, #5
	blt _0225DFFC
	pop {r3, r4, r5, pc}
	thumb_func_end ov69_0225DFBC

	thumb_func_start ov69_0225E00C
ov69_0225E00C: @ 0x0225E00C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4]
	adds r5, r2, #0
	cmp r3, #4
	bhi _0225E080
	adds r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_0225E024: @ jump table
	.2byte _0225E02E - _0225E024 - 2 @ case 0
	.2byte _0225E046 - _0225E024 - 2 @ case 1
	.2byte _0225E050 - _0225E024 - 2 @ case 2
	.2byte _0225E060 - _0225E024 - 2 @ case 3
	.2byte _0225E072 - _0225E024 - 2 @ case 4
_0225E02E:
	adds r1, r5, #0
	bl ov69_0225E1EC
	movs r0, #0x6e
	movs r1, #0xb9
	lsls r0, r0, #2
	lsls r1, r1, #2
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov69_0225EC08
	pop {r3, r4, r5, pc}
_0225E046:
	bl ov69_0225E208
	movs r0, #2
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225E050:
	adds r1, r5, #0
	bl ov69_0225E2D0
	cmp r0, #1
	bne _0225E080
	movs r0, #0
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225E060:
	bl ov69_0225E2DC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov69_0225E2E4
	movs r0, #4
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0225E072:
	adds r1, r5, #0
	bl ov69_0225E2E4
	cmp r0, #1
	bne _0225E080
	movs r0, #0
	str r0, [r4]
_0225E080:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov69_0225E00C

	thumb_func_start ov69_0225E084
ov69_0225E084: @ 0x0225E084
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6a
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl FUN_0200E084
	movs r0, #0x6a
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201AD10
	pop {r4, pc}
	thumb_func_end ov69_0225E084

	thumb_func_start ov69_0225E0A0
ov69_0225E0A0: @ 0x0225E0A0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6a
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	movs r0, #0x6a
	lsls r0, r0, #2
	movs r2, #0xa
	adds r0, r4, r0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_0200E060
	pop {r4, pc}
	thumb_func_end ov69_0225E0A0

	thumb_func_start ov69_0225E0C0
ov69_0225E0C0: @ 0x0225E0C0
	push {r3, lr}
	ldr r2, [r0]
	cmp r2, #4
	bhi _0225E0F0
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0225E0D4: @ jump table
	.2byte _0225E0DE - _0225E0D4 - 2 @ case 0
	.2byte _0225E0EC - _0225E0D4 - 2 @ case 1
	.2byte _0225E0E4 - _0225E0D4 - 2 @ case 2
	.2byte _0225E0EC - _0225E0D4 - 2 @ case 3
	.2byte _0225E0EC - _0225E0D4 - 2 @ case 4
_0225E0DE:
	movs r2, #1
	str r2, [r0]
	b _0225E0F0
_0225E0E4:
	movs r1, #3
	str r1, [r0]
	movs r0, #0
	pop {r3, pc}
_0225E0EC:
	movs r0, #0
	pop {r3, pc}
_0225E0F0:
	bl ov69_0225E154
	movs r0, #1
	pop {r3, pc}
	thumb_func_end ov69_0225E0C0

	thumb_func_start ov69_0225E0F8
ov69_0225E0F8: @ 0x0225E0F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
	add r7, sp, #0
_0225E104:
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl ov69_0225E1C0
	cmp r0, #0
	bne _0225E118
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0225E118:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _0225E12E
	ldr r1, [sp, #8]
	ldr r0, [r5, #8]
	cmp r1, r0
	bne _0225E12E
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225E12E:
	adds r4, r4, #1
	cmp r4, #3
	blt _0225E104
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov69_0225E0F8

	thumb_func_start ov69_0225E13C
ov69_0225E13C: @ 0x0225E13C
	movs r1, #0
	strh r1, [r0, #0x34]
	strh r1, [r0, #0x36]
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225E13C

	thumb_func_start ov69_0225E148
ov69_0225E148: @ 0x0225E148
	movs r1, #0
	strh r1, [r0, #0x34]
	strh r1, [r0, #0x36]
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225E148

	thumb_func_start ov69_0225E154
ov69_0225E154: @ 0x0225E154
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrh r1, [r5, #0x36]
	adds r1, r1, #1
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x1e
	subs r2, r2, r3
	movs r1, #0x1e
	rors r2, r1
	ldrh r1, [r5, #0x34]
	adds r2, r3, r2
	cmp r2, r1
	bne _0225E174
	bl ov69_0225E1A0
_0225E174:
	ldrh r1, [r5, #0x36]
	movs r0, #0xc
	muls r0, r1, r0
	adds r0, r5, r0
	adds r2, r0, #4
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	ldrh r0, [r5, #0x36]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	strh r0, [r5, #0x36]
	ldr r0, [r5, #0x38]
	adds r0, r0, #1
	str r0, [r5, #0x38]
	pop {r3, r4, r5, pc}
	thumb_func_end ov69_0225E154

	thumb_func_start ov69_0225E1A0
ov69_0225E1A0: @ 0x0225E1A0
	ldrh r2, [r0, #0x34]
	ldrh r1, [r0, #0x36]
	cmp r1, r2
	beq _0225E1BE
	adds r1, r2, #1
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x1e
	subs r2, r2, r3
	movs r1, #0x1e
	rors r2, r1
	adds r1, r3, r2
	strh r1, [r0, #0x34]
	ldr r1, [r0, #0x38]
	subs r1, r1, #1
	str r1, [r0, #0x38]
_0225E1BE:
	bx lr
	thumb_func_end ov69_0225E1A0

	thumb_func_start ov69_0225E1C0
ov69_0225E1C0: @ 0x0225E1C0
	adds r3, r1, #0
	ldr r1, [r0, #0x38]
	cmp r2, r1
	blo _0225E1CC
	movs r0, #0
	bx lr
_0225E1CC:
	ldrh r1, [r0, #0x36]
	subs r1, r1, #1
	subs r2, r1, r2
	bpl _0225E1D6
	adds r2, r2, #4
_0225E1D6:
	movs r1, #0xc
	muls r1, r2, r1
	adds r0, r0, r1
	adds r2, r0, #4
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225E1C0

	thumb_func_start ov69_0225E1EC
ov69_0225E1EC: @ 0x0225E1EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	adds r5, #0xa0
_0225E1F6:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov69_0225E810
	adds r4, r4, #1
	adds r5, #0x28
	cmp r4, #5
	blt _0225E1F6
	pop {r4, r5, r6, pc}
	thumb_func_end ov69_0225E1EC

	thumb_func_start ov69_0225E208
ov69_0225E208: @ 0x0225E208
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	str r1, [sp]
	adds r0, #0x40
	movs r1, #0
	movs r2, #0x48
	blx FUN_020D5124
	movs r6, #0
	strh r6, [r5, #0x3c]
	adds r4, r5, #0
	strh r6, [r5, #0x3e]
	adds r4, #0xa0
_0225E224:
	adds r0, r4, #0
	bl ov69_0225E904
	adds r6, r6, #1
	adds r4, #0x28
	cmp r6, #5
	blt _0225E224
	movs r0, #0x6e
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov69_0225EB60
	adds r0, r5, #0
	str r0, [sp, #8]
	adds r0, #0xa0
	movs r7, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	mvns r7, r7
	str r0, [sp, #0xc]
	adds r0, #0x3e
	movs r6, #0
	str r7, [sp, #0x10]
	str r0, [sp, #0xc]
_0225E254:
	movs r0, #2
	subs r4, r0, r6
	adds r0, r5, #0
	add r1, sp, #0x14
	adds r2, r6, #0
	bl ov69_0225E1C0
	cmp r0, #1
	bne _0225E2BA
	ldr r0, [sp, #0x14]
	bl ov69_0225EEEC
	movs r1, #0x28
	str r0, [sp, #4]
	muls r1, r0, r1
	ldr r0, [sp, #8]
	movs r2, #1
	adds r0, r0, r1
	adds r1, r4, #0
	bl ov69_0225E8EC
	ldr r3, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	add r2, sp, #0x14
	bl ov69_0225E644
	lsls r0, r4, #2
	adds r1, r5, r0
	lsls r3, r7, #0x18
	ldr r0, [sp, #4]
	adds r1, #0x88
	str r0, [r1]
	ldr r2, [sp, #0x14]
	movs r0, #0x6e
	lsls r0, r0, #2
	lsls r1, r4, #0x18
	lsls r2, r2, #0x18
	adds r0, r5, r0
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl ov69_0225EB8C
	ldr r0, [sp, #0xc]
	ldrh r0, [r0]
	adds r1, r0, #6
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	ldr r7, [sp, #0x14]
	b _0225E2C6
_0225E2BA:
	lsls r0, r4, #2
	adds r1, r5, r0
	adds r1, #0x88
	movs r0, #5
	ldr r7, [sp, #0x10]
	str r0, [r1]
_0225E2C6:
	adds r6, r6, #1
	cmp r6, #3
	blt _0225E254
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov69_0225E208

	thumb_func_start ov69_0225E2D0
ov69_0225E2D0: @ 0x0225E2D0
	ldr r3, _0225E2D8 @ =ov69_0225E2F0
	movs r2, #2
	bx r3
	nop
_0225E2D8: .4byte ov69_0225E2F0
	thumb_func_end ov69_0225E2D0

	thumb_func_start ov69_0225E2DC
ov69_0225E2DC: @ 0x0225E2DC
	ldrh r1, [r0, #0x3c]
	lsrs r1, r1, #1
	strh r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov69_0225E2DC

	thumb_func_start ov69_0225E2E4
ov69_0225E2E4: @ 0x0225E2E4
	ldr r3, _0225E2EC @ =ov69_0225E2F0
	movs r2, #1
	bx r3
	nop
_0225E2EC: .4byte ov69_0225E2F0
	thumb_func_end ov69_0225E2E4

	thumb_func_start ov69_0225E2F0
ov69_0225E2F0: @ 0x0225E2F0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x3c]
	adds r4, r2, #0
	adds r6, r1, #0
	adds r1, r4, #0
	movs r7, #1
	str r0, [sp]
	blx FUN_020E1F6C
	cmp r1, #0
	bne _0225E318
	ldr r0, [sp]
	adds r1, r4, #0
	blx FUN_020E1F6C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov69_0225E368
_0225E318:
	ldrh r0, [r5, #0x3c]
	adds r1, r0, #1
	movs r0, #0x12
	muls r0, r4, r0
	cmp r1, r0
	bge _0225E326
	strh r1, [r5, #0x3c]
_0225E326:
	ldrh r0, [r5, #0x3e]
	movs r4, #0
	cmp r0, #0
	ble _0225E346
_0225E32E:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov69_0225E374
	cmp r0, #0
	bne _0225E33E
	movs r7, #0
_0225E33E:
	ldrh r0, [r5, #0x3e]
	adds r4, r4, #1
	cmp r4, r0
	blt _0225E32E
_0225E346:
	cmp r7, #1
	bne _0225E362
	movs r0, #0x6e
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov69_0225EBEC
	movs r0, #0xb9
	lsls r0, r0, #2
	movs r1, #0
	adds r0, r5, r0
	adds r2, r1, #0
	bl ov69_0225E51C
_0225E362:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov69_0225E2F0

	thumb_func_start ov69_0225E368
ov69_0225E368: @ 0x0225E368
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r2, #1
	adds r0, #0x40
	strb r2, [r0]
	bx lr
	thumb_func_end ov69_0225E368

	thumb_func_start ov69_0225E374
ov69_0225E374: @ 0x0225E374
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r2, [sp]
	adds r5, r0, #0
	lsls r2, r1, #2
	adds r0, r5, r2
	adds r0, #0x40
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225E38E
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225E38E:
	adds r0, r5, #0
	adds r0, #0x41
	ldrsb r4, [r0, r2]
	adds r6, r0, r2
	cmp r4, #2
	blt _0225E3A0
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225E3A0:
	movs r0, #0x11
	subs r7, r0, r1
	adds r0, r7, #0
	movs r1, #6
	blx FUN_020E2178
	str r0, [sp, #0xc]
	adds r0, r7, #0
	movs r1, #6
	blx FUN_020E2178
	ldr r0, [sp, #0xc]
	str r1, [sp, #4]
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r4, #0
	str r0, [sp, #8]
	beq _0225E3CE
	cmp r4, #1
	beq _0225E3FC
	b _0225E424
_0225E3CE:
	adds r0, r5, #0
	bl ov69_0225E70C
	adds r3, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	adds r0, r5, #0
	bl ov69_0225E71C
	ldr r2, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov69_0225E430
	movs r0, #0xb9
	lsls r0, r0, #2
	lsls r1, r7, #0x13
	adds r0, r5, r0
	asrs r1, r1, #0x10
	movs r2, #0x90
	bl ov69_0225E51C
	b _0225E424
_0225E3FC:
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	adds r0, r5, #0
	bl ov69_0225E6E8
	adds r3, r0, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #4]
	adds r0, r5, #0
	bl ov69_0225E71C
	ldr r0, [sp, #8]
	movs r1, #0x28
	adds r5, #0xa0
	muls r1, r0, r1
	adds r0, r5, r1
	ldr r2, [sp]
	adds r1, r7, #0
	bl ov69_0225E910
_0225E424:
	movs r0, #0
	ldrsb r1, [r6, r0]
	adds r1, r1, #1
	strb r1, [r6]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov69_0225E374

	thumb_func_start ov69_0225E430
ov69_0225E430: @ 0x0225E430
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r0, #0x98
	ldr r0, [r0]
	adds r4, r2, #0
	movs r2, #0x20
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r0, #0
	adds r2, #0xc
	str r2, [sp, #8]
	movs r2, #0
	lsls r1, r1, #0x18
	str r2, [sp, #0xc]
	lsrs r3, r1, #0x18
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #6
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225E430

	thumb_func_start ov69_0225E478
ov69_0225E478: @ 0x0225E478
	push {r4, r5, r6, lr}
	ldr r1, _0225E4D8 @ =0x04001000
	ldr r2, _0225E4DC @ =0xFFFF1FFF
	ldr r3, [r1]
	adds r5, r1, #0
	ands r3, r2
	movs r2, #6
	lsls r2, r2, #0xc
	orrs r2, r3
	str r2, [r1]
	adds r5, #0x4a
	ldrh r6, [r5]
	movs r3, #0x3f
	movs r2, #0x1f
	bics r6, r3
	orrs r2, r6
	strh r2, [r5]
	adds r1, #0x48
	ldrh r5, [r1]
	movs r2, #0xf
	adds r4, r0, #0
	bics r5, r3
	adds r3, r5, #0
	orrs r3, r2
	strh r3, [r1]
	ldrh r5, [r1]
	ldr r3, _0225E4E0 @ =0xFFFFC0FF
	lsls r2, r2, #8
	ands r3, r5
	orrs r2, r3
	strh r2, [r1]
	movs r1, #0
	adds r2, r1, #0
	bl ov69_0225E504
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov69_0225E51C
	ldr r0, _0225E4E4 @ =ov69_0225E534
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200DA3C
	str r0, [r4, #0xc]
	pop {r4, r5, r6, pc}
	nop
_0225E4D8: .4byte 0x04001000
_0225E4DC: .4byte 0xFFFF1FFF
_0225E4E0: .4byte 0xFFFFC0FF
_0225E4E4: .4byte ov69_0225E534
	thumb_func_end ov69_0225E478

	thumb_func_start ov69_0225E4E8
ov69_0225E4E8: @ 0x0225E4E8
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl FUN_0200DA58
	ldr r2, _0225E4FC @ =0x04001000
	ldr r0, _0225E500 @ =0xFFFF1FFF
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_0225E4FC: .4byte 0x04001000
_0225E500: .4byte 0xFFFF1FFF
	thumb_func_end ov69_0225E4E8

	thumb_func_start ov69_0225E504
ov69_0225E504: @ 0x0225E504
	cmp r1, #0
	bge _0225E50A
	movs r1, #0
_0225E50A:
	cmp r2, #0
	bge _0225E510
	movs r2, #0
_0225E510:
	movs r3, #1
	strh r3, [r0]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225E504

	thumb_func_start ov69_0225E51C
ov69_0225E51C: @ 0x0225E51C
	cmp r1, #0
	bge _0225E522
	movs r1, #0
_0225E522:
	cmp r2, #0
	bge _0225E528
	movs r2, #0
_0225E528:
	movs r3, #1
	strh r3, [r0, #2]
	strh r1, [r0, #8]
	strh r2, [r0, #0xa]
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225E51C

	thumb_func_start ov69_0225E534
ov69_0225E534: @ 0x0225E534
	push {r4, r5}
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	beq _0225E55C
	movs r0, #6
	ldrsh r2, [r1, r0]
	movs r0, #4
	ldrsh r5, [r1, r0]
	ldr r0, _0225E588 @ =0x04001040
	movs r3, #0xff
	strh r3, [r0]
	lsls r2, r2, #0x18
	lsls r5, r5, #8
	lsls r3, r3, #8
	ands r3, r5
	lsrs r2, r2, #0x18
	orrs r2, r3
	strh r2, [r0, #4]
	strh r4, [r1]
_0225E55C:
	movs r0, #2
	ldrsh r0, [r1, r0]
	cmp r0, #0
	beq _0225E584
	movs r0, #0xa
	ldrsh r2, [r1, r0]
	movs r0, #8
	ldrsh r4, [r1, r0]
	ldr r0, _0225E58C @ =0x04001042
	movs r3, #0xff
	strh r3, [r0]
	lsls r2, r2, #0x18
	lsls r4, r4, #8
	lsls r3, r3, #8
	ands r3, r4
	lsrs r2, r2, #0x18
	orrs r2, r3
	strh r2, [r0, #4]
	movs r0, #0
	strh r0, [r1, #2]
_0225E584:
	pop {r4, r5}
	bx lr
	.align 2, 0
_0225E588: .4byte 0x04001040
_0225E58C: .4byte 0x04001042
	thumb_func_end ov69_0225E534

	thumb_func_start ov69_0225E590
ov69_0225E590: @ 0x0225E590
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	movs r6, #0x94
	str r1, [sp, #0x18]
	adds r1, r6, #0
	movs r7, #0
	adds r1, #0xd4
	str r0, [sp, #0x14]
	adds r4, r7, #0
	adds r5, r0, r1
_0225E5A4:
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	adds r1, r5, #0
	ldr r0, [r0]
	movs r2, #5
	movs r3, #0
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	adds r6, #0xa2
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A954
	adds r7, r7, #1
	adds r4, r4, #6
	adds r5, #0x10
	cmp r7, #3
	blt _0225E5A4
	movs r3, #0
	str r3, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	movs r2, #0x66
	ldr r1, [sp, #0x14]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r0, [r0]
	movs r2, #5
	bl FUN_0201A7E8
	movs r1, #0x66
	ldr r0, [sp, #0x14]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	bl FUN_0201ADA4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov69_0225E590

	thumb_func_start ov69_0225E61C
ov69_0225E61C: @ 0x0225E61C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x5a
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r6, r0
_0225E628:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #3
	blt _0225E628
	movs r0, #0x66
	lsls r0, r0, #2
	adds r0, r6, r0
	bl FUN_0201A8FC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov69_0225E61C

	thumb_func_start ov69_0225E644
ov69_0225E644: @ 0x0225E644
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r4, #3
	blo _0225E658
	bl FUN_02022974
_0225E658:
	movs r0, #0x5a
	lsls r0, r0, #2
	adds r5, r5, r0
	lsls r4, r4, #4
	adds r0, r5, r4
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r6]
	bl ov69_0225EEEC
	str r0, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #2
	bl ov69_0225EF74
	movs r3, #0
	adds r2, r0, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	lsls r1, r0, #2
	ldr r0, _0225E6E0 @ =0x0225F088
	ldr r0, [r0, r1]
	movs r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r5, r4
	bl FUN_0201D78C
	ldr r1, [r6, #4]
	adds r0, r7, #0
	bl ov69_0225EF90
	adds r2, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225E6E4 @ =0x00010200
	movs r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r5, r4
	movs r1, #1
	bl FUN_0201D78C
	ldr r1, [r6, #4]
	ldr r2, [r6, #8]
	adds r0, r7, #0
	bl ov69_0225EFB8
	adds r2, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225E6E4 @ =0x00010200
	movs r3, #0
	str r0, [sp, #8]
	adds r0, r5, r4
	movs r1, #1
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225E6E0: .4byte 0x0225F088
_0225E6E4: .4byte 0x00010200
	thumb_func_end ov69_0225E644

	thumb_func_start ov69_0225E6E8
ov69_0225E6E8: @ 0x0225E6E8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #3
	blo _0225E6F8
	bl FUN_02022974
_0225E6F8:
	lsls r0, r4, #4
	adds r1, r5, r0
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, [r1, r0]
	movs r0, #0x36
	lsls r0, r0, #4
	muls r0, r6, r0
	adds r0, r1, r0
	pop {r4, r5, r6, pc}
	thumb_func_end ov69_0225E6E8

	thumb_func_start ov69_0225E70C
ov69_0225E70C: @ 0x0225E70C
	movs r2, #0x69
	lsls r2, r2, #2
	ldr r2, [r0, r2]
	movs r0, #0x36
	lsls r0, r0, #4
	muls r0, r1, r0
	adds r0, r2, r0
	bx lr
	thumb_func_end ov69_0225E70C

	thumb_func_start ov69_0225E71C
ov69_0225E71C: @ 0x0225E71C
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	movs r2, #0x5a
	lsls r2, r2, #2
	adds r2, r0, r2
	lsls r0, r1, #4
	adds r0, r2, r0
	adds r4, r3, #0
	bl FUN_0201C2A4
	movs r3, #0x1b
	adds r1, r5, #0
	muls r1, r3, r1
	adds r0, r0, r1
	lsls r1, r0, #0x10
	movs r0, #0x15
	lsrs r1, r1, #0xb
	adds r2, r4, #0
	lsls r3, r3, #5
	bl FUN_0201DC68
	pop {r3, r4, r5, pc}
	thumb_func_end ov69_0225E71C

	thumb_func_start ov69_0225E748
ov69_0225E748: @ 0x0225E748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x28]
	str r2, [sp, #8]
	str r1, [sp, #0x28]
	movs r1, #0
	movs r2, #0x28
	adds r7, r0, #0
	adds r4, r3, #0
	blx FUN_020D5124
	ldr r0, [sp, #8]
	strh r4, [r7, #2]
	ldrh r0, [r0, #4]
	cmp r0, #0
	beq _0225E7A8
	strh r0, [r7, #0x18]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrh r0, [r7, #0x18]
	cmp r0, #0
	ble _0225E7A8
	adds r6, r7, #0
	ldr r4, [sp, #8]
	adds r6, #0x10
	adds r5, r7, #0
_0225E77E:
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #4]
	str r0, [sp]
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldrh r1, [r4]
	movs r2, #0
	adds r3, r6, #0
	bl FUN_020071D0
	str r0, [r5, #8]
	ldr r0, [sp, #0xc]
	ldrh r1, [r7, #0x18]
	adds r0, r0, #1
	adds r6, r6, #4
	adds r4, r4, #2
	adds r5, r5, #4
	str r0, [sp, #0xc]
	cmp r0, r1
	blt _0225E77E
_0225E7A8:
	ldr r0, [sp, #8]
	ldrh r1, [r0, #8]
	cmp r1, #0
	beq _0225E7D8
	adds r0, r7, #0
	adds r0, #0x24
	strb r1, [r0]
	ldr r0, [sp, #8]
	adds r2, r7, #0
	ldrh r1, [r0, #0xa]
	adds r0, r7, #0
	adds r0, #0x26
	strb r1, [r0]
	movs r1, #0x51
	ldr r0, [sp, #4]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x28]
	ldrh r1, [r1, #6]
	adds r2, #0x20
	bl FUN_020071EC
	str r0, [r7, #0x1c]
_0225E7D8:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov69_0225E748

	thumb_func_start ov69_0225E7DC
ov69_0225E7DC: @ 0x0225E7DC
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #0x18]
	cmp r0, #0
	beq _0225E7FE
	movs r4, #0
	cmp r0, #0
	ble _0225E7FE
	adds r5, r6, #0
_0225E7EE:
	ldr r0, [r5, #8]
	bl FUN_020181C4
	ldrh r0, [r6, #0x18]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _0225E7EE
_0225E7FE:
	adds r0, r6, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225E80E
	ldr r0, [r6, #0x1c]
	bl FUN_020181C4
_0225E80E:
	pop {r4, r5, r6, pc}
	thumb_func_end ov69_0225E7DC

	thumb_func_start ov69_0225E810
ov69_0225E810: @ 0x0225E810
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldrh r4, [r5]
	ldrh r0, [r5, #0x18]
	ldrh r6, [r5, #2]
	adds r7, r1, #0
	muls r0, r4, r0
	adds r1, r6, #0
	blx FUN_020E1F6C
	str r0, [sp, #0x20]
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	adds r1, r6, #0
	muls r0, r4, r0
	blx FUN_020E1F6C
	str r0, [sp, #0x1c]
	adds r0, r4, #1
	adds r1, r6, #0
	blx FUN_020E1F6C
	strh r1, [r5]
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	beq _0225E8A8
	ldrh r1, [r5, #0x1a]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	beq _0225E8A8
	movs r6, #0
	strh r0, [r5, #0x1a]
	adds r4, r6, #0
_0225E856:
	adds r0, r5, r6
	ldrb r0, [r0, #4]
	cmp r0, #1
	bne _0225E8A0
	ldrh r0, [r5, #0x1a]
	movs r1, #0x20
	movs r2, #0
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x10]
	str r1, [sp]
	movs r1, #6
	str r1, [sp, #4]
	adds r1, r0, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	lsls r1, r4, #0x18
	lsrs r3, r1, #0x18
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r7]
	bl FUN_020198E8
	ldr r0, [r7]
	movs r1, #6
	bl FUN_0201C3C0
_0225E8A0:
	adds r6, r6, #1
	adds r4, r4, #6
	cmp r6, #3
	blt _0225E856
_0225E8A8:
	adds r0, r5, #0
	adds r0, #0x24
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225E8E8
	adds r0, r5, #0
	adds r0, #0x25
	ldrb r1, [r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	beq _0225E8E8
	adds r1, r5, #0
	adds r1, #0x25
	strb r0, [r1]
	ldr r2, [r5, #0x20]
	adds r1, r5, #0
	adds r1, #0x26
	ldrb r1, [r1]
	adds r5, #0x25
	ldr r3, [r2, #0xc]
	ldrb r2, [r5]
	movs r0, #0x1f
	lsls r1, r1, #5
	lsls r2, r2, #5
	adds r2, r3, r2
	movs r3, #0x20
	bl FUN_0201DC68
	cmp r0, #0
	bne _0225E8E8
	bl FUN_02022974
_0225E8E8:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov69_0225E810

	thumb_func_start ov69_0225E8EC
ov69_0225E8EC: @ 0x0225E8EC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #3
	blo _0225E8FC
	bl FUN_02022974
_0225E8FC:
	adds r0, r5, r4
	strb r6, [r0, #4]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov69_0225E8EC

	thumb_func_start ov69_0225E904
ov69_0225E904: @ 0x0225E904
	movs r1, #0
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	bx lr
	thumb_func_end ov69_0225E904

	thumb_func_start ov69_0225E910
ov69_0225E910: @ 0x0225E910
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r2, #0
	ldrh r2, [r0, #0x18]
	cmp r2, #0
	beq _0225E95C
	ldrh r2, [r0, #0x1a]
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0, #0x10]
	movs r2, #0x20
	str r2, [sp]
	movs r2, #1
	str r2, [sp, #4]
	adds r2, r0, #0
	adds r2, #0xc
	str r2, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsls r1, r1, #0x15
	lsrs r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	movs r1, #6
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #6
	bl FUN_0201C3C0
_0225E95C:
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov69_0225E910

	thumb_func_start ov69_0225E960
ov69_0225E960: @ 0x0225E960
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x88
	str r0, [sp, #0x2c]
	str r2, [sp, #0x30]
	movs r0, #0
	adds r5, r1, #0
	add r2, sp, #0x44
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	movs r2, #0x4b
	ldr r0, [sp, #0x2c]
	lsls r2, r2, #2
	str r3, [sp, #0x34]
	blx FUN_020D5124
	ldr r0, [sp, #0x2c]
	movs r2, #2
	strh r2, [r0, #0x30]
	movs r1, #0x80
	strh r1, [r0, #0x32]
	ldr r0, [r5, #4]
	ldr r3, [sp, #0x34]
	str r0, [sp, #0x44]
	add r0, sp, #0x64
	str r0, [sp, #0x48]
	movs r0, #0x40
	str r0, [sp, #0x58]
	str r3, [sp, #0x60]
	str r2, [sp, #0x5c]
	movs r3, #0
	str r3, [sp]
	str r2, [sp, #4]
	movs r2, #0xc
	str r2, [sp, #8]
	ldr r2, [sp, #0x34]
	adds r0, #0xf4
	str r2, [sp, #0xc]
	adds r1, #0xc4
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	movs r2, #0x14
	bl FUN_02009B04
	ldr r1, [sp, #0x2c]
	str r0, [r1, #0x70]
	bl FUN_0200A640
	cmp r0, #0
	bne _0225E9CC
	bl FUN_02022974
_0225E9CC:
	ldr r0, [sp, #0x2c]
	ldr r0, [r0, #0x70]
	bl FUN_02009D4C
	movs r0, #0x15
	str r0, [sp, #0x40]
	ldr r4, [sp, #0x2c]
	movs r0, #0x16
	str r0, [sp, #0x3c]
	movs r0, #0x17
	movs r6, #0
	str r0, [sp, #0x38]
	adds r7, r4, #0
_0225E9E6:
	str r6, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	movs r1, #0x51
	str r0, [sp, #8]
	movs r0, #0x13
	lsls r0, r0, #4
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x40]
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r4, #0x6c]
	movs r1, #0x51
	str r6, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	lsls r1, r1, #2
	str r0, [sp, #8]
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x3c]
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r4, #0x74]
	movs r1, #0x51
	str r6, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	lsls r1, r1, #2
	str r0, [sp, #8]
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r2, [sp, #0x38]
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r4, #0x78]
	ldr r0, [r4, #0x6c]
	bl FUN_0200A3DC
	cmp r0, #0
	bne _0225EA54
	bl FUN_02022974
_0225EA54:
	ldr r0, [r4, #0x6c]
	bl FUN_02009D4C
	movs r0, #0
	str r6, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	str r0, [sp, #0x14]
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0
	str r0, [sp, #0x18]
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r3, r6, #0
	str r0, [sp, #0x1c]
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x64
	bl FUN_020093B4
	add r0, sp, #0x44
	bl FUN_02021B90
	str r0, [r7, #0x3c]
	movs r1, #1
	bl FUN_02021CC8
	movs r1, #1
	ldr r0, [r7, #0x3c]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [sp, #0x40]
	adds r6, r6, #1
	adds r0, r0, #3
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	adds r4, #0x10
	adds r0, r0, #3
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	adds r7, r7, #4
	adds r0, r0, #3
	str r0, [sp, #0x38]
	cmp r6, #0xc
	blt _0225E9E6
	ldr r0, [sp, #0x2c]
	bl ov69_0225EBEC
	movs r1, #0
	ldr r0, [sp, #0x30]
	adds r2, r1, #0
	bl ov69_0225E51C
	add sp, #0x88
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov69_0225E960

	thumb_func_start ov69_0225EAE8
ov69_0225EAE8: @ 0x0225EAE8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0225EB5C @ =0x000005C1
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0
	ldr r7, [sp]
	str r0, [sp, #8]
_0225EAFE:
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl FUN_02021BD4
	ldr r0, [r7, #0x6c]
	bl FUN_0200A4E4
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225EB26
	ldr r0, [r7, #0x70]
	bl FUN_0200A6DC
	movs r0, #0x4d
	ldr r1, [sp, #4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [r7, #0x70]
	bl FUN_02009D68
_0225EB26:
	ldr r5, [sp, #4]
	movs r4, #0
	adds r6, r7, #0
_0225EB2C:
	cmp r4, #1
	beq _0225EB3C
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r6, #0x6c]
	bl FUN_02009D68
_0225EB3C:
	adds r4, r4, #1
	adds r6, r6, #4
	adds r5, r5, #4
	cmp r4, #4
	blt _0225EB2C
	ldr r0, [sp]
	adds r7, #0x10
	adds r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0xc
	blt _0225EAFE
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225EB5C: .4byte 0x000005C1
	thumb_func_end ov69_0225EAE8

	thumb_func_start ov69_0225EB60
ov69_0225EB60: @ 0x0225EB60
	adds r1, r0, #0
	adds r2, r0, #0
	movs r3, #0
	adds r1, #0x34
	strb r3, [r1]
	adds r2, #0x34
	strb r3, [r2, #1]
	strb r3, [r2, #2]
	adds r1, r0, #0
	strb r3, [r2, #3]
	adds r2, r0, #0
	adds r1, #0x38
	strb r3, [r1]
	adds r2, #0x38
	strb r3, [r2, #1]
	strb r3, [r2, #2]
	strb r3, [r2, #3]
	movs r1, #2
	strh r1, [r0, #0x30]
	movs r1, #0x80
	strh r1, [r0, #0x32]
	bx lr
	thumb_func_end ov69_0225EB60

	thumb_func_start ov69_0225EB8C
ov69_0225EB8C: @ 0x0225EB8C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r5, r4
	adds r6, r5, #0
	str r3, [sp]
	movs r1, #1
	adds r0, #0x34
	strb r1, [r0]
	adds r6, #0x38
	adds r0, r2, #0
	bl ov69_0225EF04
	strb r0, [r6, r4]
	lsls r7, r4, #4
	ldrb r2, [r6, r4]
	movs r1, #0x30
	ldr r3, _0225EBE8 @ =0x0225F1E0
	muls r1, r2, r1
	adds r1, r3, r1
	adds r0, r5, r7
	adds r1, r1, r7
	bl ov69_0225ECF0
	ldr r0, [sp]
	cmp r0, #0x18
	bhs _0225EBE4
	bl ov69_0225EF04
	ldrb r1, [r6, r4]
	cmp r0, r1
	bne _0225EBE4
	cmp r4, #2
	bhs _0225EBE4
	adds r0, r4, #1
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl ov69_0225ED10
	adds r0, r5, r7
	movs r1, #1
	bl ov69_0225ED0C
_0225EBE4:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225EBE8: .4byte 0x0225F1E0
	thumb_func_end ov69_0225EB8C

	thumb_func_start ov69_0225EBEC
ov69_0225EBEC: @ 0x0225EBEC
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
_0225EBF4:
	ldr r0, [r5, #0x3c]
	adds r1, r6, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xc
	blt _0225EBF4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov69_0225EBEC

	thumb_func_start ov69_0225EC08
ov69_0225EC08: @ 0x0225EC08
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #0x32
	ldrsh r2, [r5, r1]
	cmp r2, #0
	ble _0225EC36
	subs r2, r2, #1
	strh r2, [r5, #0x32]
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bne _0225EC6A
	movs r1, #0x30
	ldrsh r1, [r5, r1]
	adds r2, r4, #0
	bl ov69_0225EC70
	cmp r0, #1
	bne _0225EC6A
	ldr r0, _0225EC6C @ =0x000005C1
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_0225EC36:
	movs r1, #0x30
	ldrsh r1, [r5, r1]
	adds r2, r4, #0
	bl ov69_0225ECAC
	cmp r0, #1
	bne _0225EC6A
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	subs r0, r0, #1
	bmi _0225EC5A
	strh r0, [r5, #0x30]
	ldrsh r1, [r5, r1]
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov69_0225EC70
	pop {r3, r4, r5, pc}
_0225EC5A:
	ldr r0, _0225EC6C @ =0x000005C1
	movs r1, #0
	bl FUN_020057A4
	movs r0, #2
	strh r0, [r5, #0x30]
	movs r0, #0x80
	strh r0, [r5, #0x32]
_0225EC6A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225EC6C: .4byte 0x000005C1
	thumb_func_end ov69_0225EC08

	thumb_func_start ov69_0225EC70
ov69_0225EC70: @ 0x0225EC70
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r5, r4
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225EC84
	movs r0, #0
	pop {r3, r4, r5, pc}
_0225EC84:
	lsls r0, r4, #4
	adds r0, r5, r0
	adds r1, r2, #0
	bl ov69_0225ED5C
	adds r0, r5, r4
	adds r0, #0x38
	ldrb r0, [r0]
	movs r1, #1
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl FUN_02021CAC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov69_0225EEC4
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov69_0225EC70

	thumb_func_start ov69_0225ECAC
ov69_0225ECAC: @ 0x0225ECAC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r5, r4
	adds r0, #0x34
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225ECC0
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225ECC0:
	lsls r0, r4, #4
	adds r0, r5, r0
	adds r1, r2, #0
	bl ov69_0225ED14
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov69_0225EEC4
	cmp r6, #1
	bne _0225ECEA
	adds r0, r5, r4
	adds r0, #0x38
	ldrb r0, [r0]
	movs r1, #0
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl FUN_02021CAC
_0225ECEA:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov69_0225ECAC

	thumb_func_start ov69_0225ECF0
ov69_0225ECF0: @ 0x0225ECF0
	str r1, [r0, #0xc]
	movs r3, #0
	ldrsh r2, [r1, r3]
	strh r2, [r0]
	movs r2, #2
	ldrsh r1, [r1, r2]
	adds r1, #0x10
	strh r1, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strh r3, [r0, #8]
	strh r3, [r0, #0xa]
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225ECF0

	thumb_func_start ov69_0225ED0C
ov69_0225ED0C: @ 0x0225ED0C
	strh r1, [r0, #8]
	bx lr
	thumb_func_end ov69_0225ED0C

	thumb_func_start ov69_0225ED10
ov69_0225ED10: @ 0x0225ED10
	strh r1, [r0, #0xa]
	bx lr
	thumb_func_end ov69_0225ED10

	thumb_func_start ov69_0225ED14
ov69_0225ED14: @ 0x0225ED14
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #4
	ldrsh r3, [r5, r1]
	ldr r2, [r5, #0xc]
	movs r1, #8
	ldrsh r1, [r2, r1]
	cmp r3, r1
	ble _0225ED2C
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225ED2C:
	bl ov69_0225ED90
	movs r0, #4
	ldrsh r0, [r5, r0]
	adds r0, r0, #1
	strh r0, [r5, #4]
	movs r0, #6
	ldrsh r0, [r5, r0]
	ldr r1, [r5, #0xc]
	adds r2, r0, #1
	movs r0, #0xc
	ldrsh r0, [r1, r0]
	cmp r2, r0
	ble _0225ED4E
	movs r0, #0
	strh r0, [r5, #6]
	b _0225ED50
_0225ED4E:
	strh r2, [r5, #6]
_0225ED50:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov69_0225EE68
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov69_0225ED14

	thumb_func_start ov69_0225ED5C
ov69_0225ED5C: @ 0x0225ED5C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #0
	strh r1, [r5, #4]
	strh r1, [r5, #6]
	bl ov69_0225ED90
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov69_0225EE68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov69_0225ED5C

	thumb_func_start ov69_0225ED78
ov69_0225ED78: @ 0x0225ED78
	movs r2, #0
	ldrsh r2, [r0, r2]
	lsls r2, r2, #0xc
	str r2, [r1]
	movs r2, #2
	ldrsh r0, [r0, r2]
	lsls r3, r0, #0xc
	lsls r0, r2, #0x13
	adds r0, r3, r0
	str r0, [r1, #4]
	bx lr
	.align 2, 0
	thumb_func_end ov69_0225ED78

	thumb_func_start ov69_0225ED90
ov69_0225ED90: @ 0x0225ED90
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0xa]
	ldr r2, [r5, #0xc]
	cmp r0, #0
	bne _0225EDA8
	movs r0, #6
	ldrsh r0, [r2, r0]
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	b _0225EDAC
_0225EDA8:
	movs r0, #6
	ldrsh r7, [r2, r0]
_0225EDAC:
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _0225EDBE
	movs r0, #2
	ldrsh r0, [r2, r0]
	adds r0, #0x10
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _0225EDC2
_0225EDBE:
	movs r0, #2
	ldrsh r4, [r2, r0]
_0225EDC2:
	movs r0, #0
	ldrsh r6, [r2, r0]
	movs r0, #4
	ldrsh r1, [r5, r0]
	ldrsh r0, [r2, r0]
	subs r0, r0, r6
	muls r0, r1, r0
	movs r1, #8
	ldrsh r1, [r2, r1]
	blx FUN_020E1F6C
	adds r0, r6, r0
	strh r0, [r5]
	movs r0, #4
	ldrsh r1, [r5, r0]
	subs r0, r7, r4
	ldr r2, [r5, #0xc]
	muls r0, r1, r0
	movs r1, #8
	ldrsh r1, [r2, r1]
	blx FUN_020E1F6C
	adds r0, r4, r0
	strh r0, [r5, #2]
	movs r0, #6
	ldrsh r1, [r5, r0]
	ldr r0, _0225EE60 @ =0x0000FFFF
	ldr r4, [r5, #0xc]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsh r1, [r4, r1]
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _0225EE64 @ =0x020F983C
	ldrsh r6, [r0, r1]
	movs r0, #0xa
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0225EE2A
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0225EE38
_0225EE2A:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0225EE38:
	blx FUN_020E1740
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r3, #2
	movs r4, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r4
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	orrs r1, r0
	ldrsh r2, [r5, r4]
	asrs r0, r1, #0xc
	adds r0, r2, r0
	strh r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225EE60: .4byte 0x0000FFFF
_0225EE64: .4byte 0x020F983C
	thumb_func_end ov69_0225ED90

	thumb_func_start ov69_0225EE68
ov69_0225EE68: @ 0x0225EE68
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov69_0225E504
	ldrh r0, [r5, #8]
	cmp r0, #0
	bne _0225EE9C
	ldr r1, [r5, #0xc]
	movs r0, #2
	ldrsh r1, [r1, r0]
	ldrsh r2, [r5, r0]
	adds r0, r1, #0
	subs r0, #0x10
	cmp r2, r0
	ble _0225EE9C
	adds r2, r1, #0
	adds r2, #0x20
	lsls r2, r2, #0x10
	adds r0, r4, #0
	asrs r2, r2, #0x10
	bl ov69_0225E504
_0225EE9C:
	ldrh r0, [r5, #0xa]
	cmp r0, #0
	bne _0225EEC0
	ldr r1, [r5, #0xc]
	movs r0, #6
	ldrsh r2, [r1, r0]
	movs r0, #2
	ldrsh r0, [r5, r0]
	subs r0, #0x10
	cmp r0, r2
	bgt _0225EEC0
	adds r1, r2, #0
	subs r1, #0x20
	lsls r1, r1, #0x10
	adds r0, r4, #0
	asrs r1, r1, #0x10
	bl ov69_0225E504
_0225EEC0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov69_0225EE68

	thumb_func_start ov69_0225EEC4
ov69_0225EEC4: @ 0x0225EEC4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	lsls r0, r4, #4
	adds r0, r5, r0
	add r1, sp, #0
	bl ov69_0225ED78
	adds r0, r5, r4
	adds r0, #0x38
	ldrb r0, [r0]
	add r1, sp, #0
	lsls r0, r0, #2
	adds r0, r5, r0
	ldr r0, [r0, #0x3c]
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov69_0225EEC4

	thumb_func_start ov69_0225EEEC
ov69_0225EEEC: @ 0x0225EEEC
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0x18
	blo _0225EEF8
	bl FUN_02022974
_0225EEF8:
	ldr r0, _0225EF00 @ =0x0225F0E8
	lsls r1, r4, #1
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_0225EF00: .4byte 0x0225F0E8
	thumb_func_end ov69_0225EEEC

	thumb_func_start ov69_0225EF04
ov69_0225EF04: @ 0x0225EF04
	push {r4, lr}
	adds r4, r0, #0
	cmp r4, #0x18
	blo _0225EF10
	bl FUN_02022974
_0225EF10:
	ldr r0, _0225EF18 @ =0x0225F0E9
	lsls r1, r4, #1
	ldrb r0, [r0, r1]
	pop {r4, pc}
	.align 2, 0
_0225EF18: .4byte 0x0225F0E9
	thumb_func_end ov69_0225EF04

	thumb_func_start ov69_0225EF1C
ov69_0225EF1C: @ 0x0225EF1C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r2, #0xae
	adds r5, r0, #0
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	adds r3, r4, #0
	bl FUN_0200B144
	str r0, [r5]
	movs r0, #8
	movs r1, #0x40
	adds r2, r4, #0
	bl FUN_0200B368
	str r0, [r5, #4]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #8]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov69_0225EF1C

	thumb_func_start ov69_0225EF54
ov69_0225EF54: @ 0x0225EF54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0200B190
	ldr r0, [r4, #4]
	bl FUN_0200B3F0
	ldr r0, [r4, #8]
	bl FUN_020237BC
	ldr r0, [r4, #0xc]
	bl FUN_020237BC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov69_0225EF54

	thumb_func_start ov69_0225EF74
ov69_0225EF74: @ 0x0225EF74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r2, [r4, #8]
	bl FUN_0200B1B8
	ldr r0, [r4, #8]
	pop {r4, pc}
	thumb_func_end ov69_0225EF74

	thumb_func_start ov69_0225EF84
ov69_0225EF84: @ 0x0225EF84
	ldr r3, _0225EF8C @ =FUN_0200B1B8
	ldr r0, [r0]
	bx r3
	nop
_0225EF8C: .4byte FUN_0200B1B8
	thumb_func_end ov69_0225EF84

	thumb_func_start ov69_0225EF90
ov69_0225EF90: @ 0x0225EF90
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	ldr r2, [r5, #0xc]
	movs r1, #3
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0200BDD0
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl FUN_0200C388
	ldr r0, [r5, #8]
	pop {r3, r4, r5, pc}
	thumb_func_end ov69_0225EF90

	thumb_func_start ov69_0225EFB8
ov69_0225EFB8: @ 0x0225EFB8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	adds r6, r2, #0
	bl FUN_0200C41C
	ldr r0, [r5]
	ldr r2, [r5, #0xc]
	movs r1, #3
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	movs r1, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl FUN_0200BE08
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl FUN_0200C388
	ldr r0, [r5, #8]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov69_0225EFB8

	thumb_func_start ov69_0225EFEC
ov69_0225EFEC: @ 0x0225EFEC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0225EFF2:
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl FUN_0223164C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _0225F008
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0225F008:
	adds r4, r4, #1
	cmp r4, #0x32
	blt _0225EFF2
	movs r0, #0x32
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov69_0225EFEC
	@ 0x0225F014
