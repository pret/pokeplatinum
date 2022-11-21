
	thumb_func_start ov25_02253CE0
ov25_02253CE0: @ 0x02253CE0
	ldr r3, _02253CE4 @ =FUN_0203D158
	bx r3
	.align 2, 0
_02253CE4: .4byte FUN_0203D158
	thumb_func_end ov25_02253CE0

	thumb_func_start ov25_02253CE8
ov25_02253CE8: @ 0x02253CE8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #3
	str r2, [sp]
	movs r1, #7
	lsls r2, r0, #0xe
	adds r7, r3, #0
	bl FUN_02017FC8
	movs r0, #3
	movs r1, #8
	lsls r2, r0, #0xe
	bl FUN_02017FC8
	movs r0, #7
	movs r1, #0x64
	bl FUN_02018144
	adds r4, r0, #0
	beq _02253D52
	str r4, [r5]
	ldr r0, [sp]
	str r6, [r4, #0x5c]
	str r0, [r4, #0x54]
	bl FUN_02056B24
	str r0, [r4, #0x58]
	ldr r0, [sp, #0x18]
	str r7, [r4, #0x4c]
	str r0, [r4, #0x50]
	adds r0, r4, #0
	bl ov25_02253DDC
	cmp r0, #0
	beq _02253D52
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	ldr r0, _02253D54 @ =ov25_02253E94
	str r5, [r4, #0x34]
	adds r1, r4, #0
	movs r2, #4
	bl FUN_0200D9E8
	str r0, [r4, #0x38]
	ldr r0, _02253D58 @ =ov25_02253E40
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
_02253D52:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02253D54: .4byte ov25_02253E94
_02253D58: .4byte ov25_02253E40
	thumb_func_end ov25_02253CE8

	thumb_func_start ov25_02253D5C
ov25_02253D5C: @ 0x02253D5C
	push {r3, lr}
	ldrb r1, [r0]
	cmp r1, #3
	beq _02253D6E
	cmp r1, #4
	beq _02253D6E
	movs r1, #3
	bl ov25_02253E9C
_02253D6E:
	pop {r3, pc}
	thumb_func_end ov25_02253D5C

	thumb_func_start ov25_02253D70
ov25_02253D70: @ 0x02253D70
	cmp r0, #0
	bne _02253D78
	movs r0, #1
	bx lr
_02253D78:
	movs r0, #0
	bx lr
	thumb_func_end ov25_02253D70

	thumb_func_start ov25_02253D7C
ov25_02253D7C: @ 0x02253D7C
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #5
	bhi _02253DCE
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02253D90: @ jump table
	.2byte _02253DCE - _02253D90 - 2 @ case 0
	.2byte _02253D9C - _02253D90 - 2 @ case 1
	.2byte _02253DCE - _02253D90 - 2 @ case 2
	.2byte _02253DCE - _02253D90 - 2 @ case 3
	.2byte _02253DBE - _02253D90 - 2 @ case 4
	.2byte _02253DA2 - _02253D90 - 2 @ case 5
_02253D9C:
	movs r0, #1
	strb r0, [r4, #4]
	pop {r4, pc}
_02253DA2:
	ldr r0, [r4, #0x58]
	bl FUN_020568C8
	adds r1, r0, #1
	ldr r0, _02253DD0 @ =0x0001869F
	cmp r1, r0
	bls _02253DB2
	movs r1, #0
_02253DB2:
	ldr r0, [r4, #0x58]
	bl FUN_020568CC
	movs r0, #1
	strb r0, [r4, #7]
	pop {r4, pc}
_02253DBE:
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _02253DCE
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _02253DCE
	ldr r0, [r4, #0x48]
	blx r1
_02253DCE:
	pop {r4, pc}
	.align 2, 0
_02253DD0: .4byte 0x0001869F
	thumb_func_end ov25_02253D7C

	thumb_func_start ov25_02253DD4
ov25_02253DD4: @ 0x02253DD4
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov25_02253DD4

	thumb_func_start ov25_02253DD8
ov25_02253DD8: @ 0x02253DD8
	ldr r0, [r0, #0x14]
	bx lr
	thumb_func_end ov25_02253DD8

	thumb_func_start ov25_02253DDC
ov25_02253DDC: @ 0x02253DDC
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r2, [r4, #0x50]
	adds r0, #0x1c
	adds r1, #0x20
	adds r3, r4, #0
	bl ov25_02254560
	cmp r0, #0
	beq _02253E1A
	movs r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #7]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	subs r0, r1, #1
	str r0, [r4, #0x14]
	strb r1, [r4, #2]
	str r1, [r4, #8]
	adds r0, r4, #0
	str r1, [r4, #0x60]
	bl ov25_02254284
	cmp r0, #0
	beq _02253E1A
	movs r0, #1
	pop {r4, pc}
_02253E1A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov25_02253DDC

	thumb_func_start ov25_02253E20
ov25_02253E20: @ 0x02253E20
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x38]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl ov25_022542C8
	adds r0, r4, #0
	bl ov25_022541BC
	ldr r0, [r4, #0x1c]
	bl ov25_02254754
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov25_02253E20

	thumb_func_start ov25_02253E40
ov25_02253E40: @ 0x02253E40
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #4
	bhs _02253E64
	cmp r0, #0
	beq _02253E56
	adds r0, r4, #0
	bl ov25_022542D4
_02253E56:
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _02253E90 @ =0x02255E6C
	ldr r1, [r1, r2]
	blx r1
	pop {r3, r4, r5, pc}
_02253E64:
	beq _02253E6A
	bl FUN_02022974
_02253E6A:
	ldr r0, [r4, #0x34]
	movs r1, #0
	str r1, [r0]
	adds r0, r4, #0
	bl ov25_02253E20
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	movs r0, #7
	bl FUN_0201807C
	movs r0, #8
	bl FUN_0201807C
	pop {r3, r4, r5, pc}
	.align 2, 0
_02253E90: .4byte 0x02255E6C
	thumb_func_end ov25_02253E40

	thumb_func_start ov25_02253E94
ov25_02253E94: @ 0x02253E94
	movs r0, #0
	strb r0, [r1, #4]
	strb r0, [r1, #7]
	bx lr
	thumb_func_end ov25_02253E94

	thumb_func_start ov25_02253E9C
ov25_02253E9C: @ 0x02253E9C
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov25_02253E9C

	thumb_func_start ov25_02253EA4
ov25_02253EA4: @ 0x02253EA4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #3
	bhi _02253F28
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02253EBA: @ jump table
	.2byte _02253EC2 - _02253EBA - 2 @ case 0
	.2byte _02253ED2 - _02253EBA - 2 @ case 1
	.2byte _02253EFE - _02253EBA - 2 @ case 2
	.2byte _02253F14 - _02253EBA - 2 @ case 3
_02253EC2:
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl ov25_022547D0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_02253ED2:
	ldr r0, [r4, #0x1c]
	movs r1, #0
	bl ov25_022547F4
	cmp r0, #0
	beq _02253F28
	ldr r0, [r4, #0x58]
	bl FUN_02056830
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov25_02254170
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov25_022541D8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_02253EFE:
	bl ov25_022541FC
	cmp r0, #0
	beq _02253F28
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl ov25_022547D0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
_02253F14:
	ldr r0, [r4, #0x1c]
	movs r1, #1
	bl ov25_022547F4
	cmp r0, #0
	beq _02253F28
	adds r0, r4, #0
	movs r1, #1
	bl ov25_02253E9C
_02253F28:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov25_02253EA4

	thumb_func_start ov25_02253F2C
ov25_02253F2C: @ 0x02253F2C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #4
	bhi _02253F60
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02253F42: @ jump table
	.2byte _02253F4C - _02253F42 - 2 @ case 0
	.2byte _02253F7A - _02253F42 - 2 @ case 1
	.2byte _02253FCC - _02253F42 - 2 @ case 2
	.2byte _02254002 - _02253F42 - 2 @ case 3
	.2byte _0225401E - _02253F42 - 2 @ case 4
_02253F4C:
	bl ov25_0225450C
	cmp r0, #0
	beq _02253F56
	b _02254068
_02253F56:
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _02253F62
	cmp r0, #5
	beq _02253F62
_02253F60:
	b _02254068
_02253F62:
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #1
	strb r0, [r4, #5]
	ldr r0, [r4, #0x1c]
	movs r1, #4
	bl ov25_022547D0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
_02253F7A:
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _02253F84
	cmp r0, #5
	bne _02253F88
_02253F84:
	movs r0, #1
	str r0, [r4, #0xc]
_02253F88:
	ldr r0, [r4, #0x1c]
	bl ov25_02254800
	cmp r0, #0
	beq _02254068
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldr r0, [r4, #0x58]
	bne _02253FA0
	bl FUN_02056860
	b _02253FA4
_02253FA0:
	bl FUN_02056838
_02253FA4:
	str r0, [r4, #0x20]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02253FC2
	ldr r0, [r4, #0x1c]
	movs r1, #0xc
	bl ov25_022547D0
	movs r0, #0x1e
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #1]
	pop {r4, pc}
_02253FC2:
	movs r0, #3
	str r0, [r4, #0x10]
	movs r0, #2
	strb r0, [r4, #1]
	pop {r4, pc}
_02253FCC:
	ldr r1, [r4, #8]
	cmp r1, #3
	beq _02253FD6
	cmp r1, #5
	bne _02253FEC
_02253FD6:
	ldr r0, [r4, #0x1c]
	movs r1, #0xc
	bl ov25_022547D0
	movs r0, #0x1e
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #4
	strb r0, [r4, #1]
	pop {r4, pc}
_02253FEC:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _02253FF8
	subs r0, r1, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_02253FF8:
	bl ov25_0225420C
	movs r0, #3
	strb r0, [r4, #1]
	pop {r4, pc}
_02254002:
	bl ov25_02254228
	cmp r0, #0
	beq _02254068
	adds r0, r4, #0
	bl ov25_022541BC
	bl FUN_02099D44
	adds r0, r4, #0
	movs r1, #2
	bl ov25_02253E9C
	pop {r4, pc}
_0225401E:
	ldr r0, [r4, #8]
	cmp r0, #3
	beq _02254028
	cmp r0, #5
	bne _0225404A
_02254028:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	ldr r0, [r4, #0x58]
	bne _02254036
	bl FUN_02056860
	b _0225403A
_02254036:
	bl FUN_02056838
_0225403A:
	str r0, [r4, #0x20]
	movs r0, #0x1e
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x1c]
	movs r1, #0xd
	bl ov25_022547D0
	pop {r4, pc}
_0225404A:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02254056
	subs r0, r0, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_02254056:
	ldr r0, [r4, #0x1c]
	movs r1, #0xe
	bl ov25_022547D0
	adds r0, r4, #0
	bl ov25_0225420C
	movs r0, #3
	strb r0, [r4, #1]
_02254068:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov25_02253F2C

	thumb_func_start ov25_0225406C
ov25_0225406C: @ 0x0225406C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02254080
	cmp r1, #1
	beq _022540A4
	cmp r1, #2
	beq _022540BC
	pop {r3, r4, r5, pc}
_02254080:
	movs r0, #1
	strb r0, [r4, #6]
	ldr r0, [r4, #0x58]
	bl FUN_02056830
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov25_02254170
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov25_022541D8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_022540A4:
	bl ov25_022541FC
	cmp r0, #0
	beq _022540D6
	ldr r0, [r4, #0x1c]
	movs r1, #2
	bl ov25_022547D0
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	pop {r3, r4, r5, pc}
_022540BC:
	ldr r0, [r4, #0x1c]
	movs r1, #2
	bl ov25_022547F4
	cmp r0, #0
	beq _022540D6
	movs r0, #0
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	adds r0, r4, #0
	movs r1, #1
	bl ov25_02253E9C
_022540D6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_0225406C

	thumb_func_start ov25_022540D8
ov25_022540D8: @ 0x022540D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #3
	bhi _0225416C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022540EE: @ jump table
	.2byte _022540F6 - _022540EE - 2 @ case 0
	.2byte _02254126 - _022540EE - 2 @ case 1
	.2byte _0225413A - _022540EE - 2 @ case 2
	.2byte _02254150 - _022540EE - 2 @ case 3
_022540F6:
	ldrb r1, [r4, #2]
	cmp r1, #3
	bhi _0225416C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02254108: @ jump table
	.2byte _02254120 - _02254108 - 2 @ case 0
	.2byte _02254110 - _02254108 - 2 @ case 1
	.2byte _02254116 - _02254108 - 2 @ case 2
	.2byte _02254120 - _02254108 - 2 @ case 3
_02254110:
	movs r0, #1
	strb r0, [r4, #1]
	pop {r4, pc}
_02254116:
	bl ov25_0225420C
	movs r0, #2
	strb r0, [r4, #1]
	pop {r4, pc}
_02254120:
	movs r0, #2
	strb r0, [r4, #1]
	pop {r4, pc}
_02254126:
	bl ov25_022541FC
	cmp r0, #0
	beq _0225416C
	adds r0, r4, #0
	bl ov25_0225420C
	movs r0, #2
	strb r0, [r4, #1]
	pop {r4, pc}
_0225413A:
	bl ov25_02254228
	cmp r0, #0
	beq _0225416C
	ldr r0, [r4, #0x1c]
	movs r1, #0x11
	bl ov25_022547D0
	movs r0, #3
	strb r0, [r4, #1]
	pop {r4, pc}
_02254150:
	ldr r0, [r4, #0x1c]
	bl ov25_02254800
	cmp r0, #0
	beq _0225416C
	adds r0, r4, #0
	bl ov25_022541BC
	bl FUN_0201E530
	adds r0, r4, #0
	movs r1, #4
	bl ov25_02253E9C
_0225416C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov25_022540D8

	thumb_func_start ov25_02254170
ov25_02254170: @ 0x02254170
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bmi _0225417C
	cmp r4, #0x19
	blo _02254180
_0225417C:
	bl FUN_02022974
_02254180:
	movs r0, #0
	ldr r1, [r5, #0x14]
	mvns r0, r0
	cmp r1, r0
	bne _022541B0
	ldr r2, _022541B4 @ =0x02255E7C
	movs r1, #0
_0225418E:
	ldr r0, [r2]
	cmp r4, r0
	bne _022541A8
	ldr r0, _022541B8 @ =0x02255E80
	lsls r1, r1, #3
	ldr r6, [r0, r1]
	movs r1, #2
	adds r0, r6, #0
	bl FUN_02006590
	str r4, [r5, #0x14]
	str r6, [r5, #0x18]
	pop {r4, r5, r6, pc}
_022541A8:
	adds r1, r1, #1
	adds r2, #8
	cmp r1, #0x19
	blo _0225418E
_022541B0:
	pop {r4, r5, r6, pc}
	nop
_022541B4: .4byte 0x02255E7C
_022541B8: .4byte 0x02255E80
	thumb_func_end ov25_02254170

	thumb_func_start ov25_022541BC
ov25_022541BC: @ 0x022541BC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r1, [r4, #0x14]
	mvns r0, r0
	cmp r1, r0
	beq _022541D6
	ldr r0, [r4, #0x18]
	bl FUN_02006514
	movs r0, #0
	mvns r0, r0
	str r0, [r4, #0x14]
_022541D6:
	pop {r4, pc}
	thumb_func_end ov25_022541BC

	thumb_func_start ov25_022541D8
ov25_022541D8: @ 0x022541D8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _022541E6
	bl FUN_02022974
_022541E6:
	adds r0, r4, #0
	ldr r2, [r4, #0x4c]
	ldr r3, [r4, #0x14]
	ldr r5, [r4, #0x3c]
	adds r0, #0x24
	adds r1, r4, #0
	blx r5
	movs r0, #1
	strb r0, [r4, #2]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov25_022541D8

	thumb_func_start ov25_022541FC
ov25_022541FC: @ 0x022541FC
	ldrb r0, [r0, #2]
	cmp r0, #2
	bne _02254206
	movs r0, #1
	bx lr
_02254206:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov25_022541FC

	thumb_func_start ov25_0225420C
ov25_0225420C: @ 0x0225420C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #2
	beq _0225421A
	bl FUN_02022974
_0225421A:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x40]
	blx r1
	movs r0, #3
	strb r0, [r4, #2]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov25_0225420C

	thumb_func_start ov25_02254228
ov25_02254228: @ 0x02254228
	ldrb r0, [r0, #2]
	cmp r0, #0
	bne _02254232
	movs r0, #1
	bx lr
_02254232:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov25_02254228

	thumb_func_start ov25_02254238
ov25_02254238: @ 0x02254238
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov25_02253CE0
	str r5, [r0, #0x3c]
	str r4, [r0, #0x40]
	movs r1, #0
	str r1, [r0, #0x44]
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254238

	thumb_func_start ov25_0225424C
ov25_0225424C: @ 0x0225424C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #1
	beq _0225425A
	bl FUN_02022974
_0225425A:
	movs r0, #2
	strb r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end ov25_0225424C

	thumb_func_start ov25_02254260
ov25_02254260: @ 0x02254260
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #2]
	cmp r0, #3
	beq _0225426E
	bl FUN_02022974
_0225426E:
	movs r0, #0
	strb r0, [r4, #2]
	pop {r4, pc}
	thumb_func_end ov25_02254260

	thumb_func_start ov25_02254274
ov25_02254274: @ 0x02254274
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov25_02253CE0
	str r5, [r0, #0x44]
	str r4, [r0, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254274

	thumb_func_start ov25_02254284
ov25_02254284: @ 0x02254284
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #7
	str r0, [sp]
	ldr r0, _022542C0 @ =0x02255E60
	ldr r2, _022542C4 @ =ov25_022542E4
	movs r1, #3
	adds r3, r4, #0
	bl ov25_02255ACC
	str r0, [r4, #0x28]
	cmp r0, #0
	beq _022542B8
	movs r1, #0
	adds r2, r1, #0
	movs r3, #7
	bl ov25_02255C48
	movs r0, #0
	mvns r0, r0
	str r0, [r4, #0x2c]
	str r0, [r4, #0x30]
	add sp, #4
	movs r0, #1
	pop {r3, r4, pc}
_022542B8:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022542C0: .4byte 0x02255E60
_022542C4: .4byte ov25_022542E4
	thumb_func_end ov25_02254284

	thumb_func_start ov25_022542C8
ov25_022542C8: @ 0x022542C8
	ldr r3, _022542D0 @ =ov25_02255B34
	ldr r0, [r0, #0x28]
	bx r3
	nop
_022542D0: .4byte ov25_02255B34
	thumb_func_end ov25_022542C8

	thumb_func_start ov25_022542D4
ov25_022542D4: @ 0x022542D4
	ldr r3, _022542E0 @ =ov25_02255B50
	movs r1, #0
	str r1, [r0, #8]
	ldr r0, [r0, #0x28]
	bx r3
	nop
_022542E0: .4byte ov25_02255B50
	thumb_func_end ov25_022542D4

	thumb_func_start ov25_022542E4
ov25_022542E4: @ 0x022542E4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r3, #0
	adds r7, r0, #0
	adds r0, r5, #0
	adds r6, r1, #0
	str r2, [sp]
	bl ov25_0225450C
	cmp r0, #0
	bne _0225430E
	ldr r0, [sp]
	cmp r0, #0
	beq _02254308
	cmp r0, #1
	bne _02254312
	movs r0, #1
	strb r0, [r5, #3]
	b _02254312
_02254308:
	movs r0, #0
	strb r0, [r5, #3]
	b _02254312
_0225430E:
	movs r0, #0
	strb r0, [r5, #3]
_02254312:
	cmp r7, #2
	bne _0225432E
	adds r0, r5, #0
	bl ov25_0225450C
	cmp r0, #0
	beq _022543E6
	ldr r0, [sp]
	cmp r0, #1
	bne _022543E6
	ldr r0, _022543E8 @ =0x0000066E
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_0225432E:
	ldr r0, [sp]
	movs r4, #0
	mvns r4, r4
	cmp r0, #0
	beq _0225433E
	cmp r0, #1
	beq _0225434A
	b _02254372
_0225433E:
	cmp r7, #0
	bne _02254346
	movs r4, #8
	b _02254372
_02254346:
	movs r4, #0xb
	b _02254372
_0225434A:
	adds r0, r5, #0
	bl ov25_0225450C
	cmp r0, #0
	bne _0225435A
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _02254368
_0225435A:
	cmp r7, #0
	bne _02254362
	movs r4, #6
	b _02254364
_02254362:
	movs r4, #9
_02254364:
	movs r6, #0
	b _02254372
_02254368:
	cmp r7, #0
	bne _02254370
	movs r4, #7
	b _02254372
_02254370:
	movs r4, #0xa
_02254372:
	movs r0, #0
	ldr r1, [r5, #0x2c]
	mvns r0, r0
	cmp r1, r0
	beq _02254382
	adds r0, r4, #0
	adds r4, r1, #0
	str r0, [r5, #0x2c]
_02254382:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _022543A8
	ldr r0, [r5, #0x1c]
	adds r1, r4, #0
	bl ov25_022543EC
	cmp r0, #0
	beq _022543A8
	cmp r4, #6
	beq _022543A6
	cmp r4, #7
	beq _022543A6
	adds r0, r4, #0
	subs r0, #9
	cmp r0, #1
	bhi _022543A8
_022543A6:
	str r4, [r5, #0x30]
_022543A8:
	cmp r6, #2
	beq _022543CC
	cmp r6, #3
	beq _022543BE
	cmp r6, #5
	bne _022543D8
	ldr r0, [r5, #0x28]
	movs r1, #0
	bl ov25_02255C68
	b _022543D8
_022543BE:
	ldr r0, [r5, #0x30]
	cmp r0, #6
	beq _022543C8
	cmp r0, #9
	bne _022543D8
_022543C8:
	movs r6, #0
	b _022543D8
_022543CC:
	ldr r0, [r5, #0x30]
	cmp r0, #7
	beq _022543D6
	cmp r0, #0xa
	bne _022543D8
_022543D6:
	movs r6, #3
_022543D8:
	str r6, [r5, #8]
	cmp r7, #0
	bne _022543E2
	movs r0, #0
	b _022543E4
_022543E2:
	movs r0, #1
_022543E4:
	str r0, [r5, #0x60]
_022543E6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022543E8: .4byte 0x0000066E
	thumb_func_end ov25_022542E4

	thumb_func_start ov25_022543EC
ov25_022543EC: @ 0x022543EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_022543F4:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov25_022547F4
	cmp r0, #0
	bne _02254404
	movs r0, #0
	pop {r4, r5, r6, pc}
_02254404:
	adds r4, r4, #1
	cmp r4, #6
	blo _022543F4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov25_022547D0
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov25_022543EC

	thumb_func_start ov25_02254418
ov25_02254418: @ 0x02254418
	push {r3, lr}
	bl ov25_02253CE0
	ldr r0, [r0, #0x1c]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov25_02254418

	thumb_func_start ov25_02254424
ov25_02254424: @ 0x02254424
	push {r4, lr}
	adds r4, r0, #0
	bl ov25_02253CE0
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _02254442
	bl ov25_0225450C
	cmp r0, #0
	bne _02254442
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
_02254442:
	pop {r4, pc}
	thumb_func_end ov25_02254424

	thumb_func_start ov25_02254444
ov25_02254444: @ 0x02254444
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov25_02253CE0
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _02254468
	bl ov25_0225450C
	cmp r0, #0
	bne _02254468
	lsls r0, r5, #0x10
	lsls r1, r4, #0x18
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x18
	bl FUN_02005844
_02254468:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov25_02254444

	thumb_func_start ov25_0225446C
ov25_0225446C: @ 0x0225446C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov25_02253CE0
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _022544B8
	bl ov25_0225450C
	cmp r0, #0
	bne _022544B8
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_020227A4
	cmp r0, #0
	beq _022544B8
	ldr r0, [r5]
	subs r0, #0x10
	cmp r0, #0xbf
	bhs _0225449C
	movs r1, #1
	b _0225449E
_0225449C:
	movs r1, #0
_0225449E:
	ldr r0, [r4]
	subs r0, #0x10
	cmp r0, #0x9f
	bhs _022544AA
	movs r0, #1
	b _022544AC
_022544AA:
	movs r0, #0
_022544AC:
	tst r0, r1
	beq _022544B4
	movs r0, #1
	pop {r3, r4, r5, pc}
_022544B4:
	movs r0, #0
	pop {r3, r4, r5, pc}
_022544B8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_0225446C

	thumb_func_start ov25_022544BC
ov25_022544BC: @ 0x022544BC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov25_02253CE0
	ldrb r1, [r0, #5]
	cmp r1, #0
	bne _02254508
	bl ov25_0225450C
	cmp r0, #0
	bne _02254508
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_020227C0
	cmp r0, #0
	beq _02254508
	ldr r0, [r5]
	subs r0, #0x10
	cmp r0, #0xbf
	bhs _022544EC
	movs r1, #1
	b _022544EE
_022544EC:
	movs r1, #0
_022544EE:
	ldr r0, [r4]
	subs r0, #0x10
	cmp r0, #0x9f
	bhs _022544FA
	movs r0, #1
	b _022544FC
_022544FA:
	movs r0, #0
_022544FC:
	tst r0, r1
	beq _02254504
	movs r0, #1
	pop {r3, r4, r5, pc}
_02254504:
	movs r0, #0
	pop {r3, r4, r5, pc}
_02254508:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_022544BC

	thumb_func_start ov25_0225450C
ov25_0225450C: @ 0x0225450C
	ldr r3, _02254514 @ =FUN_020509A4
	ldr r0, [r0, #0x5c]
	bx r3
	nop
_02254514: .4byte FUN_020509A4
	thumb_func_end ov25_0225450C

	thumb_func_start ov25_02254518
ov25_02254518: @ 0x02254518
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov25_0225450C
	cmp r0, #0
	bne _02254532
	ldrb r0, [r5, #5]
	cmp r0, #0
	bne _02254532
	adds r0, r4, #0
	bl ov25_02255B50
_02254532:
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254518

	thumb_func_start ov25_02254534
ov25_02254534: @ 0x02254534
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end ov25_02254534

	thumb_func_start ov25_02254538
ov25_02254538: @ 0x02254538
	ldrb r0, [r0, #7]
	bx lr
	thumb_func_end ov25_02254538

	thumb_func_start ov25_0225453C
ov25_0225453C: @ 0x0225453C
	ldr r0, [r0, #0x5c]
	bx lr
	thumb_func_end ov25_0225453C

	thumb_func_start ov25_02254540
ov25_02254540: @ 0x02254540
	ldr r0, [r0, #0x58]
	bx lr
	thumb_func_end ov25_02254540

	thumb_func_start ov25_02254544
ov25_02254544: @ 0x02254544
	ldr r0, [r0, #0x54]
	bx lr
	thumb_func_end ov25_02254544

	thumb_func_start ov25_02254548
ov25_02254548: @ 0x02254548
	push {r3, lr}
	ldr r0, [r0, #0x54]
	bl FUN_02025E38
	bl FUN_02025F30
	cmp r0, #1
	beq _0225455C
	movs r0, #1
	pop {r3, pc}
_0225455C:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov25_02254548

	thumb_func_start ov25_02254560
ov25_02254560: @ 0x02254560
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0x42
	adds r5, r0, #0
	movs r0, #7
	lsls r1, r1, #4
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	str r0, [r5]
	adds r4, r0, #0
	beq _0225464C
	movs r0, #0x72
	lsls r0, r0, #2
	str r7, [r4, r0]
	ldr r0, [r4, r0]
	blx FUN_020A7FFC
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #7
	bl ov25_02255540
	movs r1, #0x73
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _022545AA
	ldr r0, [r5]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r5]
	pop {r3, r4, r5, r6, r7, pc}
_022545AA:
	movs r0, #7
	str r6, [r4]
	bl FUN_02018340
	movs r1, #0x7e
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	adds r1, r1, #4
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov25_02254684
	movs r1, #0x75
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #8
	ldr r1, [r4, r1]
	bl ov25_02254DD8
	ldr r0, [r5]
	movs r1, #8
	adds r0, r0, #4
	bl ov25_02255090
	ldr r0, [r5]
	movs r1, #0x48
	adds r0, #0x2c
	movs r2, #4
	movs r3, #6
	bl ov25_02254798
	ldr r0, [r5]
	movs r1, #0x4c
	adds r0, #0x6c
	movs r2, #4
	movs r3, #6
	bl ov25_02254798
	ldr r0, [r5]
	movs r1, #0x50
	adds r0, #0xac
	movs r2, #4
	movs r3, #6
	bl ov25_02254798
	ldr r0, [r5]
	movs r1, #0x54
	adds r0, #0xec
	movs r2, #2
	movs r3, #4
	bl ov25_02254798
	movs r0, #0x4b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0x58
	movs r2, #2
	movs r3, #4
	bl ov25_02254798
	movs r0, #0x5b
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	movs r1, #0x5c
	movs r2, #2
	movs r3, #4
	bl ov25_02254798
	ldr r0, _02254650 @ =ov25_02254654
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200DA3C
	movs r1, #0x1d
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225464C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02254650: .4byte ov25_02254654
	thumb_func_end ov25_02254560

	thumb_func_start ov25_02254654
ov25_02254654: @ 0x02254654
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r3, _02254660 @ =ov25_02255614
	ldr r0, [r1, r0]
	bx r3
	nop
_02254660: .4byte ov25_02255614
	thumb_func_end ov25_02254654

	thumb_func_start ov25_02254664
ov25_02254664: @ 0x02254664
	push {r3, lr}
	bl ov25_02254418
	movs r1, #0x73
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov25_02254664

	thumb_func_start ov25_02254674
ov25_02254674: @ 0x02254674
	push {r3, lr}
	bl ov25_02254418
	movs r1, #0x7e
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov25_02254674

	thumb_func_start ov25_02254684
ov25_02254684: @ 0x02254684
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xc
	movs r1, #0
	add r2, sp, #0
	movs r3, #7
	bl FUN_02006F88
	adds r4, r0, #0
	beq _022546B6
	ldr r0, [sp]
	movs r2, #2
	lsls r2, r2, #8
	ldr r0, [r0, #0xc]
	adds r1, r5, r2
	blx FUN_020C4B68
	movs r1, #2
	lsls r1, r1, #8
	adds r0, r5, r1
	blx FUN_020C2C54
	adds r0, r4, #0
	bl FUN_020181C4
_022546B6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254684

	thumb_func_start ov25_022546B8
ov25_022546B8: @ 0x022546B8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	bl ov25_02254418
	adds r4, r0, #0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_02254540
	bl FUN_02056888
	movs r1, #2
	lsls r1, r1, #8
	adds r5, r4, r1
	lsls r4, r0, #6
	adds r0, r5, r4
	lsls r1, r6, #5
	movs r2, #0x20
	blx FUN_020C0108
	adds r0, r5, r4
	adds r1, r7, #0
	movs r2, #0x20
	blx FUN_020C01B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_022546B8

	thumb_func_start ov25_022546F0
ov25_022546F0: @ 0x022546F0
	push {r3, r4, r5, lr}
	bl ov25_02254418
	adds r4, r0, #0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_02254540
	bl FUN_02056888
	movs r1, #2
	lsls r0, r0, #5
	lsls r1, r1, #8
	adds r0, #0x10
	adds r4, r4, r1
	lsls r5, r0, #1
	adds r0, r4, r5
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C0108
	adds r0, r4, r5
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C01B8
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_022546F0

	thumb_func_start ov25_02254728
ov25_02254728: @ 0x02254728
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov25_02254418
	adds r4, r0, #0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_02254540
	bl FUN_02056888
	movs r1, #2
	lsls r1, r1, #8
	adds r1, r4, r1
	lsls r0, r0, #6
	adds r0, r1, r0
	adds r1, r5, #0
	movs r2, #0x20
	blx FUN_020C4B18
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02254728

	thumb_func_start ov25_02254754
ov25_02254754: @ 0x02254754
	push {r4, lr}
	adds r4, r0, #0
	beq _02254794
	movs r0, #0x75
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov25_02254F40
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02254772
	bl ov25_022555E8
_02254772:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02254780
	bl FUN_020181C4
_02254780:
	movs r0, #0x1d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225478E
	bl FUN_0200DA58
_0225478E:
	adds r0, r4, #0
	bl FUN_020181C4
_02254794:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov25_02254754

	thumb_func_start ov25_02254798
ov25_02254798: @ 0x02254798
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0xf
	movs r6, #0
	mov ip, r2
	mov lr, r1
	adds r7, r3, #0
	adds r2, r6, #0
	lsls r4, r4, #0xc
_022547A8:
	mov r3, lr
	movs r1, #0
	adds r3, r3, r6
_022547AE:
	adds r5, r1, r3
	orrs r5, r4
	strh r5, [r0]
	adds r1, r1, #1
	adds r0, r0, #2
	cmp r1, #4
	blt _022547AE
	mov r1, ip
	cmp r2, r1
	blt _022547C6
	cmp r2, r7
	blt _022547C8
_022547C6:
	adds r6, #0x20
_022547C8:
	adds r2, r2, #1
	cmp r2, #8
	blt _022547A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02254798

	thumb_func_start ov25_022547D0
ov25_022547D0: @ 0x022547D0
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, r2, #4
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	ldr r0, _022547F0 @ =0x02255F8C
	ldr r3, [r2]
	bl ov25_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022547F0: .4byte 0x02255F8C
	thumb_func_end ov25_022547D0

	thumb_func_start ov25_022547F4
ov25_022547F4: @ 0x022547F4
	ldr r3, _022547FC @ =ov25_02255130
	adds r0, r0, #4
	bx r3
	nop
_022547FC: .4byte ov25_02255130
	thumb_func_end ov25_022547F4

	thumb_func_start ov25_02254800
ov25_02254800: @ 0x02254800
	ldr r3, _02254808 @ =ov25_02255154
	adds r0, r0, #4
	bx r3
	nop
_02254808: .4byte ov25_02255154
	thumb_func_end ov25_02254800

	thumb_func_start ov25_0225480C
ov25_0225480C: @ 0x0225480C
	push {r4, lr}
	adds r4, r0, #0
	bl ov25_0225523C
	adds r0, r0, #4
	adds r1, r4, #0
	bl ov25_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov25_0225480C

	thumb_func_start ov25_02254820
ov25_02254820: @ 0x02254820
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r0, r5, #0
	bl ov25_0225523C
	adds r4, r0, #0
	movs r0, #0
	blx FUN_020BDEA8
	movs r0, #0x80
	blx FUN_020BEA50
	movs r0, #1
	lsls r0, r0, #8
	blx FUN_020BEAF8
	ldr r2, _0225492C @ =0x04001000
	ldr r0, _02254930 @ =0xFFCFFFEF
	ldr r1, [r2]
	ands r1, r0
	movs r0, #0x10
	orrs r0, r1
	str r0, [r2]
	bl FUN_0201FF68
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, _02254934 @ =0x02255F54
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r2, _02254938 @ =0x02255F70
	movs r1, #5
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #7
	movs r2, #0x7e
	str r0, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	movs r0, #0xc
	movs r1, #0xe
	movs r3, #4
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #7
	movs r2, #0x7e
	str r0, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	movs r0, #0xc
	movs r1, #0xf
	movs r3, #4
	bl FUN_02006E60
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov25_02254548
	adds r3, r0, #0
	movs r0, #0x1e
	lsls r0, r0, #4
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0xd
	movs r2, #4
	lsls r3, r3, #5
	bl FUN_02006E9C
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	movs r2, #0xe4
	bl FUN_02019CB8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl FUN_02019448
	ldr r0, _0225492C @ =0x04001000
	ldr r1, _0225493C @ =0xFFFFE0FF
	ldr r2, [r0]
	ands r2, r1
	movs r1, #0x13
	lsls r1, r1, #8
	orrs r1, r2
	str r1, [r0]
	ldr r2, [r0]
	ldr r1, _02254940 @ =0xFFFF1FFF
	ands r1, r2
	str r1, [r0]
	adds r0, r5, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225492C: .4byte 0x04001000
_02254930: .4byte 0xFFCFFFEF
_02254934: .4byte 0x02255F54
_02254938: .4byte 0x02255F70
_0225493C: .4byte 0xFFFFE0FF
_02254940: .4byte 0xFFFF1FFF
	thumb_func_end ov25_02254820

	thumb_func_start ov25_02254944
ov25_02254944: @ 0x02254944
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	adds r0, r1, #0
	bl ov25_02255244
	adds r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_0225523C
	adds r5, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_02255248
	cmp r0, #0
	beq _02254970
	cmp r0, #1
	beq _0225497C
	cmp r0, #2
	beq _02254A50
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02254970:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	ldr r0, [sp, #0x10]
	bl ov25_0225524C
_0225497C:
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _02254A56
	movs r0, #0
	strh r0, [r4]
	ldrh r0, [r4, #2]
	adds r0, #0xc
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x28
	bls _0225499C
	movs r0, #0x28
	strh r0, [r4, #2]
_0225499C:
	ldrh r1, [r4, #2]
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x1e
	lsrs r0, r1, #2
	subs r2, r2, r3
	movs r1, #0x1e
	rors r2, r1
	movs r1, #0xc
	subs r6, r1, r0
	lsls r0, r0, #1
	str r0, [sp, #0x14]
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r7, r3, r2
	ldr r0, [sp, #0x14]
	movs r1, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0x40
	movs r3, #2
	bl FUN_02019CB8
	cmp r7, #0
	beq _02254A34
	subs r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	adds r2, r7, #0
	lsls r0, r0, #2
	adds r2, #0xe4
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	movs r1, #5
	lsrs r2, r2, #0x10
	movs r3, #2
	bl FUN_02019CB8
	ldr r0, [sp, #0x14]
	movs r2, #0xe4
	adds r0, r6, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	lsls r0, r0, #2
	subs r2, r2, r7
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	movs r1, #5
	lsrs r2, r2, #0x10
	movs r3, #2
	bl FUN_02019CB8
_02254A34:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #5
	bl FUN_02019448
	ldrh r0, [r4, #2]
	cmp r0, #0x28
	bne _02254A56
	ldr r0, [sp, #0x10]
	bl ov25_0225524C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02254A50:
	ldr r0, [sp, #0x10]
	bl ov25_0225480C
_02254A56:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov25_02254944

	thumb_func_start ov25_02254A5C
ov25_02254A5C: @ 0x02254A5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r1, [sp, #0x10]
	adds r0, r1, #0
	bl ov25_02255244
	adds r4, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_0225523C
	adds r5, r0, #0
	ldr r0, [sp, #0x10]
	bl ov25_02255248
	cmp r0, #0
	beq _02254A88
	cmp r0, #1
	beq _02254A94
	cmp r0, #2
	beq _02254B82
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02254A88:
	movs r0, #0
	strh r0, [r4]
	strh r0, [r4, #2]
	ldr r0, [sp, #0x10]
	bl ov25_0225524C
_02254A94:
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _02254B88
	movs r0, #0
	strh r0, [r4]
	ldrh r0, [r4, #2]
	adds r0, #8
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0x28
	bls _02254AB4
	movs r0, #0x28
	strh r0, [r4, #2]
_02254AB4:
	ldrh r0, [r4, #2]
	movs r3, #2
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	lsrs r7, r0, #2
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	movs r0, #0x16
	subs r0, r0, r7
	str r0, [sp, #0x14]
	str r3, [sp]
	movs r0, #0x18
	adds r6, r2, r1
	str r0, [sp, #4]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #5
	movs r2, #0xe4
	bl FUN_02019CB8
	ldr r0, [sp, #0x14]
	movs r1, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #0xe4
	movs r3, #2
	bl FUN_02019CB8
	cmp r6, #0
	beq _02254B66
	movs r0, #0
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	lsls r0, r0, #2
	subs r3, r6, #1
	movs r2, #0xe7
	subs r2, r2, r3
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	movs r1, #5
	lsrs r2, r2, #0x10
	movs r3, #2
	bl FUN_02019CB8
	ldr r0, [sp, #0x14]
	adds r6, #0xe0
	subs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	lsls r0, r0, #2
	lsls r2, r6, #0x10
	ldr r0, [r5, r0]
	movs r1, #5
	lsrs r2, r2, #0x10
	movs r3, #2
	bl FUN_02019CB8
_02254B66:
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #5
	bl FUN_02019448
	ldrh r0, [r4, #2]
	cmp r0, #0x28
	bne _02254B88
	ldr r0, [sp, #0x10]
	bl ov25_0225524C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_02254B82:
	ldr r0, [sp, #0x10]
	bl ov25_0225480C
_02254B88:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02254A5C

	thumb_func_start ov25_02254B8C
ov25_02254B8C: @ 0x02254B8C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r0, r5, #0
	bl ov25_02255244
	adds r0, r5, #0
	bl ov25_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov25_02255248
	adds r2, r0, #0
	cmp r2, #4
	bhs _02254BE6
	movs r3, #2
	str r3, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	movs r6, #0xe3
	lsls r0, r0, #2
	subs r2, r6, r2
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	movs r1, #5
	lsrs r2, r2, #0x10
	bl FUN_02019CB8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl FUN_02019448
	adds r0, r5, #0
	bl ov25_0225524C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02254BE6:
	adds r0, r5, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov25_02254B8C

	thumb_func_start ov25_02254BF0
ov25_02254BF0: @ 0x02254BF0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r0, r5, #0
	bl ov25_02255244
	adds r0, r5, #0
	bl ov25_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov25_02255248
	adds r2, r0, #0
	cmp r2, #4
	bhs _02254C4A
	movs r3, #2
	str r3, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	movs r6, #0xe7
	lsls r0, r0, #2
	subs r2, r6, r2
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	movs r1, #5
	lsrs r2, r2, #0x10
	bl FUN_02019CB8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl FUN_02019448
	adds r0, r5, #0
	bl ov25_0225524C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02254C4A:
	adds r0, r5, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov25_02254BF0

	thumb_func_start ov25_02254C54
ov25_02254C54: @ 0x02254C54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	bl ov25_0225523C
	adds r4, r0, #0
	cmp r5, #0
	bne _02254C6E
	movs r3, #0x1c
	movs r0, #4
	b _02254C72
_02254C6E:
	movs r3, #0x1c
	movs r0, #0xc
_02254C72:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r1, #4
	str r1, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0x7e
	lsls r0, r0, #2
	lsls r3, r3, #0x18
	ldr r0, [r4, r0]
	adds r2, r7, #0
	lsrs r3, r3, #0x18
	bl FUN_020198C0
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl FUN_02019448
	adds r0, r6, #0
	bl ov25_0225480C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov25_02254C54

	thumb_func_start ov25_02254CA8
ov25_02254CA8: @ 0x02254CA8
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov25_0225523C
	adds r1, r0, #0
	adds r0, r4, #0
	adds r1, #0x6c
	movs r2, #0
	bl ov25_02254C54
	ldr r0, _02254CC8 @ =0x00000671
	bl FUN_02005748
	pop {r4, pc}
	nop
_02254CC8: .4byte 0x00000671
	thumb_func_end ov25_02254CA8

	thumb_func_start ov25_02254CCC
ov25_02254CCC: @ 0x02254CCC
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov25_0225523C
	movs r1, #0x4b
	adds r2, r0, #0
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #1
	bl ov25_02254C54
	ldr r0, _02254CF0 @ =0x00000671
	bl FUN_02005748
	pop {r4, pc}
	nop
_02254CF0: .4byte 0x00000671
	thumb_func_end ov25_02254CCC

	thumb_func_start ov25_02254CF4
ov25_02254CF4: @ 0x02254CF4
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov25_0225523C
	adds r1, r0, #0
	adds r0, r4, #0
	adds r1, #0x2c
	movs r2, #0
	bl ov25_02254C54
	pop {r4, pc}
	thumb_func_end ov25_02254CF4

	thumb_func_start ov25_02254D0C
ov25_02254D0C: @ 0x02254D0C
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov25_0225523C
	adds r1, r0, #0
	adds r0, r4, #0
	adds r1, #0xec
	movs r2, #1
	bl ov25_02254C54
	pop {r4, pc}
	thumb_func_end ov25_02254D0C

	thumb_func_start ov25_02254D24
ov25_02254D24: @ 0x02254D24
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov25_0225523C
	adds r1, r0, #0
	adds r0, r4, #0
	adds r1, #0xac
	movs r2, #0
	bl ov25_02254C54
	ldr r0, _02254D44 @ =0x0000066F
	bl FUN_02005748
	pop {r4, pc}
	nop
_02254D44: .4byte 0x0000066F
	thumb_func_end ov25_02254D24

	thumb_func_start ov25_02254D48
ov25_02254D48: @ 0x02254D48
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov25_0225523C
	movs r1, #0x5b
	adds r2, r0, #0
	lsls r1, r1, #2
	adds r1, r2, r1
	adds r0, r4, #0
	movs r2, #1
	bl ov25_02254C54
	ldr r0, _02254D6C @ =0x0000066F
	bl FUN_02005748
	pop {r4, pc}
	nop
_02254D6C: .4byte 0x0000066F
	thumb_func_end ov25_02254D48

	thumb_func_start ov25_02254D70
ov25_02254D70: @ 0x02254D70
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl ov25_0225523C
	movs r1, #0x75
	adds r4, r0, #0
	lsls r1, r1, #2
	adds r1, r4, r1
	bl ov25_02254DE0
	movs r0, #0x75
	lsls r0, r0, #2
	ldr r1, [r4]
	adds r0, r4, r0
	bl ov25_02254EE8
	adds r0, r5, #0
	bl ov25_0225480C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov25_02254D70

	thumb_func_start ov25_02254D9C
ov25_02254D9C: @ 0x02254D9C
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov25_0225523C
	adds r1, r0, #0
	movs r0, #0x75
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r1, [r1]
	bl ov25_02254EE8
	adds r0, r4, #0
	bl ov25_0225480C
	pop {r4, pc}
	thumb_func_end ov25_02254D9C

	thumb_func_start ov25_02254DBC
ov25_02254DBC: @ 0x02254DBC
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov25_0225523C
	movs r1, #0x75
	lsls r1, r1, #2
	adds r0, r0, r1
	bl ov25_02254F40
	adds r0, r4, #0
	bl ov25_0225480C
	pop {r4, pc}
	thumb_func_end ov25_02254DBC

	thumb_func_start ov25_02254DD8
ov25_02254DD8: @ 0x02254DD8
	movs r2, #0
	str r2, [r0]
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov25_02254DD8

	thumb_func_start ov25_02254DE0
ov25_02254DE0: @ 0x02254DE0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0xc
	movs r2, #3
	movs r3, #4
	bl ov25_02255958
	cmp r0, #0
	beq _02254E7C
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #7
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #2
	bl FUN_02006EC0
	movs r0, #0x60
	str r0, [sp]
	movs r0, #7
	movs r1, #0
	str r0, [sp, #4]
	movs r0, #0xc
	movs r2, #5
	adds r3, r1, #0
	bl FUN_02006E84
	adds r0, r5, #0
	movs r1, #0xf
	bl ov25_02254E84
	adds r2, r4, #0
	ldr r0, [r4, #4]
	ldr r1, _02254E80 @ =0x02255F44
	adds r2, #8
	bl ov25_02255810
	str r0, [r4, #0x1c]
	cmp r0, #0
	beq _02254E7C
	adds r2, r4, #0
	ldr r0, [r4, #4]
	ldr r1, _02254E80 @ =0x02255F44
	adds r2, #8
	bl ov25_02255810
	str r0, [r4, #0x20]
	cmp r0, #0
	bne _02254E5E
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	bl ov25_022558B0
	add sp, #0xc
	pop {r4, r5, pc}
_02254E5E:
	movs r1, #1
	lsls r1, r1, #0x10
	movs r2, #0
	bl ov25_022558F0
	ldr r0, [r4, #0x1c]
	movs r1, #0xf
	bl ov25_02255938
	ldr r0, [r4, #0x20]
	movs r1, #0xf
	bl ov25_02255938
	movs r0, #1
	str r0, [r4]
_02254E7C:
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02254E80: .4byte 0x02255F44
	thumb_func_end ov25_02254DE0

	thumb_func_start ov25_02254E84
ov25_02254E84: @ 0x02254E84
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl ov25_02254540
	bl FUN_02056888
	movs r0, #1
	lsls r0, r0, #0xa
	adds r0, r5, r0
	bl ov25_02254728
	ldr r1, _02254EE4 @ =0x00000402
	adds r0, r1, #6
	ldrh r2, [r5, r1]
	ldrh r0, [r5, r0]
	strh r0, [r5, r1]
	adds r0, r1, #6
	strh r2, [r5, r0]
	adds r0, r1, #0
	adds r2, r1, #0
	adds r0, #0xe
	adds r2, #0x1c
	ldrh r3, [r5, r2]
	adds r2, r1, #0
	ldrh r0, [r5, r0]
	adds r2, #0xe
	strh r3, [r5, r2]
	adds r2, r1, #0
	adds r2, #0x1c
	strh r0, [r5, r2]
	subs r0, r1, #2
	adds r0, r5, r0
	movs r1, #0x20
	blx FUN_020C2C54
	movs r0, #1
	lsls r0, r0, #0xa
	adds r0, r5, r0
	lsls r1, r4, #5
	movs r2, #0x20
	blx FUN_020C01B8
	pop {r3, r4, r5, pc}
	nop
_02254EE4: .4byte 0x00000402
	thumb_func_end ov25_02254E84

	thumb_func_start ov25_02254EE8
ov25_02254EE8: @ 0x02254EE8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _02254F32
	ldr r0, [r1]
	ldr r2, _02254F34 @ =0x04000280
	movs r3, #0
	adds r0, r0, #1
	strh r3, [r2]
	str r0, [r2, #0x10]
	adds r0, r2, #0
	movs r1, #0xa
	adds r0, #0x18
	str r1, [r0]
	str r3, [r0, #4]
	lsrs r0, r2, #0xb
_02254F0A:
	ldrh r1, [r2]
	tst r1, r0
	bne _02254F0A
	ldr r0, _02254F38 @ =0x040002A0
	adds r3, r0, #0
	ldr r1, [r0]
	subs r3, #0x20
	lsrs r0, r0, #0xb
_02254F1A:
	ldrh r2, [r3]
	tst r2, r0
	bne _02254F1A
	ldr r0, _02254F3C @ =0x040002A8
	ldr r5, [r0]
	ldr r0, [r4, #0x1c]
	bl ov25_022558C4
	ldr r0, [r4, #0x20]
	adds r1, r5, #0
	bl ov25_022558C4
_02254F32:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02254F34: .4byte 0x04000280
_02254F38: .4byte 0x040002A0
_02254F3C: .4byte 0x040002A8
	thumb_func_end ov25_02254EE8

	thumb_func_start ov25_02254F40
ov25_02254F40: @ 0x02254F40
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _02254F66
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x1c]
	bl ov25_022558B0
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x20]
	bl ov25_022558B0
	adds r0, r4, #0
	adds r0, #8
	bl ov25_022559B0
	movs r0, #0
	str r0, [r4]
_02254F66:
	pop {r4, pc}
	thumb_func_end ov25_02254F40

	thumb_func_start ov25_02254F68
ov25_02254F68: @ 0x02254F68
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	adds r0, r6, #0
	bl ov25_0225523C
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov25_02255244
	adds r0, r6, #0
	bl ov25_02255248
	adds r5, r0, #0
	cmp r5, #3
	bhi _02254FFC
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02254F94: @ jump table
	.2byte _02254F9C - _02254F94 - 2 @ case 0
	.2byte _02254FB8 - _02254F94 - 2 @ case 1
	.2byte _02254FB8 - _02254F94 - 2 @ case 2
	.2byte _02254FB8 - _02254F94 - 2 @ case 3
_02254F9C:
	movs r0, #6
	str r0, [sp]
	ldr r0, _02255000 @ =0x04001050
	movs r1, #2
	movs r2, #0x1c
	movs r3, #0x1a
	blx FUN_020BF55C
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl FUN_02019448
_02254FB8:
	movs r3, #2
	str r3, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	movs r2, #0xe7
	lsls r0, r0, #2
	subs r2, r2, r5
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	movs r1, #5
	lsrs r2, r2, #0x10
	bl FUN_02019CB8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl FUN_02019448
	cmp r5, #3
	bne _02254FF6
	adds r0, r6, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_02254FF6:
	adds r0, r6, #0
	bl ov25_0225524C
_02254FFC:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02255000: .4byte 0x04001050
	thumb_func_end ov25_02254F68

	thumb_func_start ov25_02255004
ov25_02255004: @ 0x02255004
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r0, r5, #0
	bl ov25_0225523C
	movs r3, #2
	adds r4, r0, #0
	str r3, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	movs r2, #0x40
	bl FUN_02019CB8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl FUN_02019448
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl FUN_02019448
	movs r1, #0
	ldr r0, _02255060 @ =0x04001050
	adds r2, r1, #0
	movs r3, #0x1f
	str r1, [sp]
	blx FUN_020BF55C
	adds r0, r5, #0
	bl ov25_0225480C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02255060: .4byte 0x04001050
	thumb_func_end ov25_02255004

	thumb_func_start ov25_02255064
ov25_02255064: @ 0x02255064
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl ov25_0225523C
	adds r4, r0, #0
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl FUN_02019044
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #5
	bl FUN_02019044
	adds r0, r5, #0
	bl ov25_0225480C
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02255064

	thumb_func_start ov25_02255090
ov25_02255090: @ 0x02255090
	ldr r2, _022550AC @ =0x12345678
	str r1, [r0]
	movs r3, #0
	str r2, [r0, #4]
	cmp r1, #0
	bls _022550A8
	subs r2, r3, #1
_0225509E:
	adds r3, r3, #1
	str r2, [r0, #8]
	adds r0, r0, #4
	cmp r3, r1
	blo _0225509E
_022550A8:
	bx lr
	nop
_022550AC: .4byte 0x12345678
	thumb_func_end ov25_02255090

	thumb_func_start ov25_022550B0
ov25_022550B0: @ 0x022550B0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #4]
	ldr r0, _022550EC @ =0x12345678
	cmp r1, r0
	beq _022550C2
	bl FUN_02022974
_022550C2:
	ldr r6, [r5]
	movs r2, #0
	cmp r6, #0
	bls _022550E6
	adds r3, r5, #0
	subs r0, r2, #1
_022550CE:
	ldr r1, [r3, #8]
	cmp r1, r0
	bne _022550DE
	lsls r0, r2, #2
	adds r0, r5, r0
	str r4, [r0, #8]
	movs r0, #1
	pop {r4, r5, r6, pc}
_022550DE:
	adds r2, r2, #1
	adds r3, r3, #4
	cmp r2, r6
	blo _022550CE
_022550E6:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_022550EC: .4byte 0x12345678
	thumb_func_end ov25_022550B0

	thumb_func_start ov25_022550F0
ov25_022550F0: @ 0x022550F0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #4]
	ldr r0, _0225512C @ =0x12345678
	cmp r1, r0
	beq _02255102
	bl FUN_02022974
_02255102:
	ldr r3, [r5]
	movs r2, #0
	cmp r3, #0
	bls _02255126
	adds r1, r5, #0
_0225510C:
	ldr r0, [r1, #8]
	cmp r4, r0
	bne _0225511E
	movs r1, #0
	lsls r0, r2, #2
	mvns r1, r1
	adds r0, r5, r0
	str r1, [r0, #8]
	pop {r3, r4, r5, pc}
_0225511E:
	adds r2, r2, #1
	adds r1, r1, #4
	cmp r2, r3
	blo _0225510C
_02255126:
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225512C: .4byte 0x12345678
	thumb_func_end ov25_022550F0

	thumb_func_start ov25_02255130
ov25_02255130: @ 0x02255130
	push {r3, r4}
	ldr r4, [r0]
	movs r3, #0
	cmp r4, #0
	bls _0225514E
_0225513A:
	ldr r2, [r0, #8]
	cmp r1, r2
	bne _02255146
	movs r0, #0
	pop {r3, r4}
	bx lr
_02255146:
	adds r3, r3, #1
	adds r0, r0, #4
	cmp r3, r4
	blo _0225513A
_0225514E:
	movs r0, #1
	pop {r3, r4}
	bx lr
	thumb_func_end ov25_02255130

	thumb_func_start ov25_02255154
ov25_02255154: @ 0x02255154
	push {r3, r4}
	ldr r4, [r0]
	movs r3, #0
	cmp r4, #0
	bls _02255174
	subs r1, r3, #1
_02255160:
	ldr r2, [r0, #8]
	cmp r2, r1
	beq _0225516C
	movs r0, #0
	pop {r3, r4}
	bx lr
_0225516C:
	adds r3, r3, #1
	adds r0, r0, #4
	cmp r3, r4
	blo _02255160
_02255174:
	movs r0, #1
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255154

	thumb_func_start ov25_0225517C
ov25_0225517C: @ 0x0225517C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	str r2, [sp]
	movs r0, #0
	adds r5, r1, #0
	ldr r2, [r7]
	subs r1, r0, #1
	str r3, [sp, #4]
	cmp r2, r1
	beq _0225521C
	adds r3, r7, #0
	subs r1, r0, #1
_02255196:
	ldr r2, [r3]
	cmp r5, r2
	bne _02255212
	adds r6, r0, #0
	adds r0, r7, #0
	str r0, [sp, #8]
	adds r0, #8
	movs r1, #0xc
	str r0, [sp, #8]
	muls r6, r1, r6
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x28]
	ldr r1, [r1, r6]
	adds r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225520C
	ldr r0, [sp, #8]
	ldr r0, [r0, r6]
	cmp r0, #0
	beq _022551C8
	adds r0, r4, #0
	adds r0, #0x18
	b _022551CA
_022551C8:
	movs r0, #0
_022551CA:
	str r0, [r4, #0xc]
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	bl ov25_022550B0
	cmp r0, #0
	beq _02255202
	ldr r0, [sp]
	ldr r2, [sp, #0x24]
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #4]
	str r5, [r4]
	ldr r0, [sp, #4]
	adds r5, r7, #4
	str r0, [r4, #0x10]
	ldr r0, [r5, r6]
	adds r1, r4, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x14]
	cmp r0, #0
	beq _02255220
	ldr r2, [r5, r6]
	adds r1, r4, #0
	blx r2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02255202:
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0225520C:
	bl FUN_02022974
	b _0225521C
_02255212:
	adds r3, #0xc
	ldr r2, [r3]
	adds r0, r0, #1
	cmp r2, r1
	bne _02255196
_0225521C:
	bl FUN_02022974
_02255220:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov25_0225517C

	thumb_func_start ov25_02255224
ov25_02255224: @ 0x02255224
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4]
	bl ov25_022550F0
	ldr r0, [r4, #0x14]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov25_02255224

	thumb_func_start ov25_0225523C
ov25_0225523C: @ 0x0225523C
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov25_0225523C

	thumb_func_start ov25_02255240
ov25_02255240: @ 0x02255240
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov25_02255240

	thumb_func_start ov25_02255244
ov25_02255244: @ 0x02255244
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov25_02255244

	thumb_func_start ov25_02255248
ov25_02255248: @ 0x02255248
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end ov25_02255248

	thumb_func_start ov25_0225524C
ov25_0225524C: @ 0x0225524C
	ldr r1, [r0, #4]
	adds r1, r1, #1
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov25_0225524C

	thumb_func_start ov25_02255254
ov25_02255254: @ 0x02255254
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov25_02255254

	thumb_func_start ov25_02255258
ov25_02255258: @ 0x02255258
	push {r3, r4, r5, r6}
	muls r2, r3, r2
	ldr r4, [sp, #0x18]
	adds r1, r1, r2
	lsls r6, r1, #1
	lsls r4, r4, #0xc
	ldr r1, [sp, #0x10]
	adds r5, r4, #0
	orrs r5, r1
	adds r2, r0, r6
	strh r5, [r0, r6]
	adds r0, r1, #1
	orrs r0, r4
	strh r0, [r2, #2]
	ldr r0, [sp, #0x14]
	lsls r3, r3, #1
	adds r1, r1, r0
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r2, r3]
	adds r0, r1, #1
	adds r1, r4, #0
	orrs r1, r0
	adds r0, r2, r3
	strh r1, [r0, #2]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255258

	thumb_func_start ov25_02255290
ov25_02255290: @ 0x02255290
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x20
	bl FUN_02018144
	adds r7, r0, #0
	beq _022552FC
	bl ov25_02254728
	movs r4, #0
	cmp r6, #0
	bls _022552F6
_022552AC:
	ldrh r3, [r5]
	movs r0, #0x1f
	lsls r0, r0, #0xa
	ands r0, r3
	asrs r0, r0, #0xa
	adds r2, r0, #0
	movs r1, #0x72
	movs r0, #0x1f
	muls r2, r1, r2
	ands r0, r3
	adds r1, #0xb9
	muls r1, r0, r1
	movs r0, #0x3e
	lsls r0, r0, #4
	ands r0, r3
	asrs r3, r0, #5
	ldr r0, _02255300 @ =0x0000024B
	muls r0, r3, r0
	adds r0, r1, r0
	movs r1, #0xfa
	adds r0, r2, r0
	lsls r1, r1, #2
	blx FUN_020E2178
	lsrs r1, r0, #3
	cmp r1, #3
	bls _022552E4
	movs r1, #3
_022552E4:
	ldr r0, _02255304 @ =0x02256078
	adds r4, r4, #1
	ldrb r0, [r0, r1]
	lsls r0, r0, #1
	ldrh r0, [r7, r0]
	strh r0, [r5]
	adds r5, r5, #2
	cmp r4, r6
	blo _022552AC
_022552F6:
	adds r0, r7, #0
	bl FUN_020181C4
_022552FC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255300: .4byte 0x0000024B
_02255304: .4byte 0x02256078
	thumb_func_end ov25_02255290

	thumb_func_start ov25_02255308
ov25_02255308: @ 0x02255308
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #8
	movs r1, #0x20
	bl FUN_02018144
	adds r4, r0, #0
	beq _0225535E
	movs r0, #8
	movs r1, #0x20
	bl FUN_02018144
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov25_02254728
	cmp r5, #0
	beq _02255358
	movs r0, #0
	adds r1, r5, #0
	lsls r3, r6, #1
_02255334:
	ldrh r2, [r4, r3]
	adds r0, r0, #1
	strh r2, [r1]
	adds r1, r1, #2
	cmp r0, #0x10
	blt _02255334
	adds r0, r5, #0
	movs r1, #0x20
	blx FUN_020C2C54
	adds r0, r5, #0
	lsls r1, r7, #5
	movs r2, #0x20
	blx FUN_020C01B8
	adds r0, r5, #0
	bl FUN_020181C4
_02255358:
	adds r0, r4, #0
	bl FUN_020181C4
_0225535E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02255308

	thumb_func_start ov25_02255360
ov25_02255360: @ 0x02255360
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02079FD0
	adds r1, r0, #0
	movs r0, #0x13
	add r2, sp, #0
	movs r3, #8
	bl FUN_02006F88
	adds r4, r0, #0
	beq _0225539E
	ldr r0, [sp]
	movs r1, #0x40
	ldr r0, [r0, #0xc]
	bl ov25_02255290
	ldr r0, [sp]
	movs r1, #0x80
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	lsls r1, r5, #5
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C01B8
	adds r0, r4, #0
	bl FUN_020181C4
_0225539E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02255360

	thumb_func_start ov25_022553A0
ov25_022553A0: @ 0x022553A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #4]
	lsls r0, r3, #1
	str r0, [sp, #0xc]
	adds r6, r1, #0
	str r2, [sp, #8]
	ldr r2, _02255438 @ =0x02256074
	ldr r1, [sp, #0xc]
	movs r0, #8
	ldrh r1, [r2, r1]
	bl FUN_02018144
	adds r7, r0, #0
	beq _02255434
	movs r0, #0x13
	movs r1, #8
	bl FUN_02006C24
	str r0, [sp, #0x1c]
	cmp r0, #0
	beq _0225542E
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	cmp r0, #0
	bls _02255428
	ldr r1, _0225543C @ =0x02256070
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #0x18]
	ldrh r5, [r1, r0]
	ldr r1, _02255438 @ =0x02256074
	ldrh r0, [r1, r0]
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	lsls r0, r0, #5
	str r0, [sp, #0x10]
_022553EA:
	str r7, [sp]
	ldr r0, [sp, #0x1c]
	ldr r1, [r6]
	ldr r3, [sp, #0x14]
	movs r2, #0
	bl FUN_02006DC8
	adds r0, r7, #0
	add r1, sp, #0x20
	blx FUN_020A7118
	ldr r0, [sp, #0x20]
	adds r1, r5, #0
	ldr r0, [r0, #0x14]
	blx FUN_020C2C54
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x14]
	adds r1, r1, r4
	adds r2, r5, #0
	blx FUN_020C0314
	ldr r0, [sp, #0x18]
	adds r6, r6, #4
	adds r1, r0, #1
	ldr r0, [sp, #8]
	adds r4, r4, r5
	str r1, [sp, #0x18]
	cmp r1, r0
	blo _022553EA
_02255428:
	ldr r0, [sp, #0x1c]
	bl FUN_02006CA8
_0225542E:
	adds r0, r7, #0
	bl FUN_020181C4
_02255434:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02255438: .4byte 0x02256074
_0225543C: .4byte 0x02256070
	thumb_func_end ov25_022553A0

	thumb_func_start ov25_02255440
ov25_02255440: @ 0x02255440
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r4, r2, #0
	movs r1, #2
	add r2, sp, #0xc
	strh r1, [r2]
	movs r3, #3
	strh r3, [r2, #2]
	movs r3, #0xa
	strh r3, [r2, #4]
	movs r3, #0xb
	strh r3, [r2, #6]
	str r3, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	add r2, sp, #0xc
	movs r3, #9
	adds r6, r0, #0
	bl FUN_020198C0
	movs r1, #4
	add r0, sp, #0xc
	strh r1, [r0]
	movs r1, #5
	strh r1, [r0, #2]
	movs r1, #0xc
	strh r1, [r0, #4]
	movs r1, #0xd
	strh r1, [r0, #6]
	movs r3, #0xb
	lsls r1, r4, #0x18
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	add r2, sp, #0xc
	bl FUN_020198C0
	movs r1, #6
	add r0, sp, #0xc
	strh r1, [r0]
	movs r1, #7
	strh r1, [r0, #2]
	movs r1, #0xe
	strh r1, [r0, #4]
	movs r1, #0xf
	strh r1, [r0, #6]
	movs r0, #0xb
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	lsls r1, r4, #0x18
	str r0, [sp, #8]
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	add r2, sp, #0xc
	movs r3, #0xd
	bl FUN_020198C0
	adds r0, r5, #0
	movs r1, #0xa
	blx FUN_020E2178
	movs r1, #0xa
	muls r1, r0, r1
	adds r0, r0, #4
	subs r5, r5, r1
	lsrs r1, r0, #2
	lsls r0, r0, #0x1e
	lsls r1, r1, #4
	lsrs r0, r0, #0x1d
	adds r2, r1, r0
	add r0, sp, #0xc
	strh r2, [r0]
	adds r1, r2, #1
	strh r1, [r0, #2]
	adds r1, r2, #0
	adds r1, #8
	strh r1, [r0, #4]
	adds r2, #9
	strh r2, [r0, #6]
	movs r0, #0xb
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	lsls r1, r4, #0x18
	str r0, [sp, #8]
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	add r2, sp, #0xc
	movs r3, #0xf
	bl FUN_020198C0
	adds r0, r5, #4
	lsrs r1, r0, #2
	lsls r0, r0, #0x1e
	lsls r1, r1, #4
	lsrs r0, r0, #0x1d
	adds r2, r1, r0
	add r0, sp, #0xc
	strh r2, [r0]
	adds r1, r2, #1
	strh r1, [r0, #2]
	adds r1, r2, #0
	adds r1, #8
	strh r1, [r0, #4]
	adds r2, #9
	strh r2, [r0, #6]
	movs r0, #0xb
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	lsls r1, r4, #0x18
	str r0, [sp, #8]
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	add r2, sp, #0xc
	movs r3, #0x11
	bl FUN_020198C0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov25_02255440

	thumb_func_start ov25_02255540
ov25_02255540: @ 0x02255540
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #0x1c
	movs r6, #0
	bl FUN_02018144
	adds r4, r0, #0
	beq _022555AA
	adds r0, r6, #0
	str r0, [r4, #0x14]
	str r0, [r4, #0xc]
	str r0, [r4, #4]
	str r7, [r4]
	str r5, [r4, #0x18]
	adds r0, r7, #0
	blx FUN_020A813C
	strh r0, [r4, #0x10]
	ldrh r1, [r4, #0x10]
	adds r0, r5, #0
	lsls r1, r1, #3
	bl FUN_02018144
	str r0, [r4, #0x14]
	cmp r0, #0
	beq _022555AA
	ldrh r2, [r4, #0x10]
	movs r1, #0x94
	adds r0, r5, #0
	muls r1, r2, r1
	bl FUN_02018144
	str r0, [r4, #0xc]
	cmp r0, #0
	beq _022555AA
	ldrh r1, [r4, #0x10]
	adds r0, r5, #0
	lsls r1, r1, #2
	bl FUN_02018144
	str r0, [r4, #4]
	cmp r0, #0
	beq _022555AA
	ldrh r2, [r4, #0x10]
	ldr r1, [r4, #0xc]
	bl ov25_022559D8
	adds r0, r6, #0
	strh r0, [r4, #0x12]
	str r0, [r4, #8]
	movs r6, #1
_022555AA:
	cmp r6, #0
	bne _022555E2
	cmp r4, #0
	beq _022555DE
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _022555BE
	adds r0, r5, #0
	bl FUN_02018238
_022555BE:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _022555CA
	adds r0, r5, #0
	bl FUN_02018238
_022555CA:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _022555D6
	adds r0, r5, #0
	bl FUN_02018238
_022555D6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02018238
_022555DE:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022555E2:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov25_02255540

	thumb_func_start ov25_022555E8
ov25_022555E8: @ 0x022555E8
	push {r4, lr}
	adds r4, r0, #0
	beq _02255612
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _022555F8
	bl FUN_020181C4
_022555F8:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02255602
	bl FUN_020181C4
_02255602:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0225560C
	bl FUN_020181C4
_0225560C:
	adds r0, r4, #0
	bl FUN_020181C4
_02255612:
	pop {r4, pc}
	thumb_func_end ov25_022555E8

	thumb_func_start ov25_02255614
ov25_02255614: @ 0x02255614
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	ldrh r0, [r0, #0x12]
	cmp r0, #0
	bne _02255622
	b _022557EE
_02255622:
	ldr r0, [sp, #0xc]
	ldr r4, [r0, #8]
	ldr r5, [r0, #0x14]
	ldrh r0, [r0, #0x10]
	cmp r4, #0
	str r0, [sp, #0x10]
	bne _02255632
	b _022557D4
_02255632:
	adds r0, r4, #0
	movs r1, #2
	adds r0, #8
	lsls r1, r1, #0xc
	blx FUN_020A8D60
	adds r0, r4, #0
	adds r0, #0x8a
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225564A
	b _022557CC
_0225564A:
	adds r6, r4, #0
	adds r6, #0x44
	movs r0, #0xc
	ldrsh r0, [r6, r0]
	ldr r1, [r4, #0x68]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #0x18]
	movs r0, #0xe
	ldrsh r0, [r6, r0]
	ldr r1, [r4, #0x6c]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	adds r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225568A
	add r0, sp, #0x18
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r1, [sp, #0x10]
	str r3, [sp, #8]
	lsls r1, r1, #0x10
	ldr r2, [r4, #0x38]
	adds r0, r5, #0
	lsrs r1, r1, #0x10
	blx FUN_020A8DA0
	b _02255722
_0225568A:
	ldr r0, [r4, #0x70]
	blx FUN_020BB44C
	ldrh r1, [r6, #0x12]
	movs r0, #4
	tst r0, r1
	beq _022556BC
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r2, [r6, #0x10]
	ldrh r0, [r0]
	ldr r1, _022557F4 @ =0x020F983C
	adds r0, r2, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r3, r0, #2
	adds r2, r1, r3
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	ldr r0, [r4, #0x70]
	bl FUN_020BB464
	b _022556DA
_022556BC:
	adds r0, r4, #0
	adds r0, #0x90
	ldrh r0, [r0]
	cmp r0, #0
	beq _022556DA
	asrs r0, r0, #4
	lsls r3, r0, #2
	ldr r1, _022557F4 @ =0x020F983C
	ldr r0, [r4, #0x70]
	adds r2, r1, r3
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r2, [r2, r3]
	bl FUN_020BB464
_022556DA:
	ldrh r1, [r6, #0x12]
	movs r0, #2
	tst r0, r1
	beq _022556FE
	ldr r0, [r6, #4]
	ldr r7, [r4, #0x70]
	blx FUN_020BCFE0
	str r0, [sp, #0x14]
	ldr r0, [r6, #8]
	blx FUN_020BCFE0
	adds r3, r0, #0
	ldr r2, [sp, #0x14]
	adds r0, r7, #0
	adds r1, r7, #0
	blx FUN_020BB470
_022556FE:
	ldr r0, [sp, #0xc]
	ldr r1, [r4, #0x70]
	ldr r0, [r0]
	blx FUN_020A7D34
	add r1, sp, #0x18
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r1, [sp, #0x10]
	ldr r2, [r4, #0x38]
	lsls r1, r1, #0x10
	ldr r3, [r4, #0x70]
	adds r0, r5, #0
	lsrs r1, r1, #0x10
	blx FUN_020A8DA0
_02255722:
	ldr r1, [sp, #0x10]
	subs r1, r1, r0
	str r1, [sp, #0x10]
	adds r1, r0, #0
	subs r0, r0, #1
	cmp r1, #0
	beq _022557CC
	ldr r7, _022557F8 @ =0xDFFFFFFF
	asrs r1, r7, #0x11
_02255734:
	ldr r3, [r5, #4]
	ldr r2, _022557FC @ =0xFFFFF3FF
	adds r6, r4, #0
	ands r2, r3
	adds r3, r4, #0
	adds r3, #0x86
	ldrh r3, [r3]
	adds r6, #0x88
	lsls r3, r3, #0x1e
	lsrs r3, r3, #0x14
	orrs r2, r3
	str r2, [r5, #4]
	ldr r3, _02255800 @ =0xFFFF0FFF
	ldrh r6, [r6]
	ands r3, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x1c
	adds r2, r2, r6
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x10
	orrs r2, r3
	adds r6, r4, #0
	ldr r3, _02255804 @ =0xFFFFFC00
	str r2, [r5, #4]
	adds r6, #0x8c
	ands r3, r2
	lsls r2, r2, #0x16
	ldrh r6, [r6]
	lsrs r2, r2, #0x16
	adds r6, r2, r6
	ldr r2, _02255808 @ =0x000003FF
	ands r2, r6
	orrs r2, r3
	adds r6, r4, #0
	str r2, [r5, #4]
	adds r6, #0x8e
	ldr r2, [r5]
	ldr r3, _0225580C @ =0xEFFFFFFF
	ldrb r6, [r6]
	ands r3, r2
	lsls r2, r2, #3
	lsrs r2, r2, #0x1f
	eors r2, r6
	lsls r2, r2, #0x1f
	lsrs r2, r2, #3
	orrs r2, r3
	adds r6, r4, #0
	adds r3, r2, #0
	str r2, [r5]
	adds r6, #0x8f
	lsls r2, r2, #2
	ldrb r6, [r6]
	lsrs r2, r2, #0x1f
	ands r3, r7
	eors r2, r6
	lsls r2, r2, #0x1f
	lsrs r2, r2, #2
	orrs r2, r3
	adds r6, r4, #0
	adds r3, r2, #0
	str r2, [r5]
	adds r6, #0x92
	lsls r2, r2, #0x13
	ldrb r6, [r6]
	lsrs r2, r2, #0x1f
	ands r3, r1
	eors r2, r6
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x13
	orrs r2, r3
	str r2, [r5]
	adds r2, r0, #0
	adds r5, #8
	subs r0, r0, #1
	cmp r2, #0
	bne _02255734
_022557CC:
	ldr r4, [r4, #0x60]
	cmp r4, #0
	beq _022557D4
	b _02255632
_022557D4:
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #0x14]
	cmp r5, r1
	bls _022557EE
	subs r3, r5, r1
	asrs r2, r3, #2
	lsrs r2, r2, #0x1d
	adds r2, r3, r2
	lsls r2, r2, #0xd
	ldr r0, [r0]
	lsrs r2, r2, #0x10
	blx FUN_020A7B80
_022557EE:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022557F4: .4byte 0x020F983C
_022557F8: .4byte 0xDFFFFFFF
_022557FC: .4byte 0xFFFFF3FF
_02255800: .4byte 0xFFFF0FFF
_02255804: .4byte 0xFFFFFC00
_02255808: .4byte 0x000003FF
_0225580C: .4byte 0xEFFFFFFF
	thumb_func_end ov25_02255614

	thumb_func_start ov25_02255810
ov25_02255810: @ 0x02255810
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl ov25_02255A04
	adds r4, r0, #0
	beq _022558AC
	ldrb r1, [r5, #0xb]
	adds r0, #0x86
	strh r1, [r0]
	adds r0, r4, #0
	ldrb r1, [r5, #0xc]
	adds r0, #0x84
	strh r1, [r0]
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov25_02255A40
	ldr r0, [r6, #8]
	str r0, [r4]
	ldr r0, [r6, #0xc]
	str r0, [r4, #4]
	ldrh r1, [r5, #8]
	blx FUN_020A6EF0
	adds r1, r0, #0
	adds r0, r4, #0
	ldr r2, [r4]
	adds r0, #8
	blx FUN_020A8C88
	ldr r1, [r5]
	ldr r0, [r5, #4]
	str r1, [r4, #0x68]
	adds r1, r4, #0
	str r0, [r4, #0x6c]
	movs r0, #0
	adds r1, #0x88
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x8c
	strh r0, [r1]
	ldrb r2, [r5, #0xa]
	movs r1, #1
	tst r2, r1
	beq _02255870
	adds r0, r1, #0
_02255870:
	adds r1, r4, #0
	adds r1, #0x8e
	strb r0, [r1]
	ldrb r1, [r5, #0xa]
	movs r0, #2
	tst r0, r1
	beq _02255882
	movs r1, #1
	b _02255884
_02255882:
	movs r1, #0
_02255884:
	adds r0, r4, #0
	adds r0, #0x8f
	strb r1, [r0]
	adds r1, r4, #0
	movs r0, #0
	adds r1, #0x92
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x90
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x74
	str r1, [r4, #0x70]
	adds r1, r4, #0
	ldrb r2, [r5, #0xd]
	adds r1, #0x8b
	strb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x8a
	strb r0, [r1]
_022558AC:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02255810

	thumb_func_start ov25_022558B0
ov25_022558B0: @ 0x022558B0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov25_02255A98
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov25_02255A1C
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_022558B0

	thumb_func_start ov25_022558C4
ov25_022558C4: @ 0x022558C4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	ldr r0, [r4, #4]
	lsrs r1, r1, #0x10
	blx FUN_020A6EF0
	adds r1, r0, #0
	adds r0, r4, #0
	ldr r2, [r4]
	adds r0, #8
	blx FUN_020A8C88
	pop {r4, pc}
	thumb_func_end ov25_022558C4

	thumb_func_start ov25_022558E0
ov25_022558E0: @ 0x022558E0
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _022558EA
	movs r0, #1
	bx lr
_022558EA:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov25_022558E0

	thumb_func_start ov25_022558F0
ov25_022558F0: @ 0x022558F0
	ldr r3, [r0, #0x68]
	adds r1, r3, r1
	str r1, [r0, #0x68]
	ldr r1, [r0, #0x6c]
	adds r1, r1, r2
	str r1, [r0, #0x6c]
	bx lr
	.align 2, 0
	thumb_func_end ov25_022558F0

	thumb_func_start ov25_02255900
ov25_02255900: @ 0x02255900
	str r1, [r0, #0x68]
	str r2, [r0, #0x6c]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255900

	thumb_func_start ov25_02255908
ov25_02255908: @ 0x02255908
	ldr r3, [r0, #0x68]
	str r3, [r1]
	ldr r0, [r0, #0x6c]
	str r0, [r2]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255908

	thumb_func_start ov25_02255914
ov25_02255914: @ 0x02255914
	adds r0, #0x8a
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255914

	thumb_func_start ov25_0225591C
ov25_0225591C: @ 0x0225591C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r4, r2, #0
	bl ov25_02255A98
	adds r0, r5, #0
	adds r0, #0x84
	strh r4, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov25_02255A40
	pop {r4, r5, r6, pc}
	thumb_func_end ov25_0225591C

	thumb_func_start ov25_02255938
ov25_02255938: @ 0x02255938
	adds r0, #0x88
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255938

	thumb_func_start ov25_02255940
ov25_02255940: @ 0x02255940
	adds r0, #0x8c
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255940

	thumb_func_start ov25_02255948
ov25_02255948: @ 0x02255948
	adds r0, #0x92
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255948

	thumb_func_start ov25_02255950
ov25_02255950: @ 0x02255950
	adds r0, #0x90
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255950

	thumb_func_start ov25_02255958
ov25_02255958: @ 0x02255958
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	adds r5, r0, #0
	adds r6, r1, #0
	adds r1, r2, #0
	adds r7, r3, #0
	str r4, [r5, #0x10]
	adds r0, r6, #0
	adds r2, r4, #0
	bl FUN_02006FD8
	str r0, [r5]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl FUN_02006FD8
	str r0, [r5, #4]
	ldr r0, [r5]
	cmp r0, #0
	beq _022559AA
	ldr r1, [r5, #4]
	cmp r1, #0
	beq _022559AA
	adds r1, r5, #0
	adds r1, #8
	blx FUN_020A6F38
	cmp r0, #0
	bne _02255998
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02255998:
	ldr r0, [r5, #4]
	adds r5, #0xc
	adds r1, r5, #0
	blx FUN_020A6D94
	cmp r0, #0
	bne _022559AA
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022559AA:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov25_02255958

	thumb_func_start ov25_022559B0
ov25_022559B0: @ 0x022559B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #0
	beq _022559C4
	ldr r0, [r4, #0x10]
	bl FUN_02018238
	movs r0, #0
	str r0, [r4]
_022559C4:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _022559D4
	ldr r0, [r4, #0x10]
	bl FUN_02018238
	movs r0, #0
	str r0, [r4, #4]
_022559D4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov25_022559B0

	thumb_func_start ov25_022559D8
ov25_022559D8: @ 0x022559D8
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r1, #0
	subs r6, r6, #1
	cmp r0, #0
	beq _022559FA
_022559E8:
	adds r0, r4, #0
	stm r5!, {r4}
	bl ov25_022559FC
	adds r0, r6, #0
	adds r4, #0x94
	subs r6, r6, #1
	cmp r0, #0
	bne _022559E8
_022559FA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov25_022559D8

	thumb_func_start ov25_022559FC
ov25_022559FC: @ 0x022559FC
	movs r1, #0
	str r1, [r0, #0x60]
	str r1, [r0, #0x64]
	bx lr
	thumb_func_end ov25_022559FC

	thumb_func_start ov25_02255A04
ov25_02255A04: @ 0x02255A04
	ldrh r2, [r0, #0x12]
	ldrh r1, [r0, #0x10]
	cmp r2, r1
	bhs _02255A18
	adds r1, r2, #1
	strh r1, [r0, #0x12]
	ldr r1, [r0, #4]
	lsls r0, r2, #2
	ldr r0, [r1, r0]
	bx lr
_02255A18:
	movs r0, #0
	bx lr
	thumb_func_end ov25_02255A04

	thumb_func_start ov25_02255A1C
ov25_02255A1C: @ 0x02255A1C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x12]
	adds r4, r1, #0
	cmp r0, #0
	beq _02255A3C
	adds r0, r4, #0
	bl ov25_022559FC
	ldrh r0, [r5, #0x12]
	subs r0, r0, #1
	strh r0, [r5, #0x12]
	ldrh r0, [r5, #0x12]
	ldr r1, [r5, #4]
	lsls r0, r0, #2
	str r4, [r1, r0]
_02255A3C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov25_02255A1C

	thumb_func_start ov25_02255A40
ov25_02255A40: @ 0x02255A40
	push {r4, r5}
	ldr r3, [r0, #8]
	cmp r3, #0
	bne _02255A54
	str r1, [r0, #8]
	movs r0, #0
	str r0, [r1, #0x60]
	str r0, [r1, #0x64]
	pop {r4, r5}
	bx lr
_02255A54:
	adds r4, r1, #0
	adds r4, #0x84
	ldr r5, [r4]
	adds r2, r3, #0
_02255A5C:
	adds r4, r2, #0
	adds r4, #0x84
	ldr r4, [r4]
	cmp r5, r4
	bhs _02255A7E
	cmp r2, r3
	bne _02255A6C
	str r1, [r0, #8]
_02255A6C:
	ldr r0, [r2, #0x64]
	str r0, [r1, #0x64]
	cmp r0, #0
	beq _02255A76
	str r1, [r0, #0x60]
_02255A76:
	str r2, [r1, #0x60]
	str r1, [r2, #0x64]
	pop {r4, r5}
	bx lr
_02255A7E:
	ldr r4, [r2, #0x60]
	cmp r4, #0
	bne _02255A90
	str r1, [r2, #0x60]
	str r2, [r1, #0x64]
	movs r0, #0
	str r0, [r1, #0x60]
	pop {r4, r5}
	bx lr
_02255A90:
	adds r2, r4, #0
	b _02255A5C
	thumb_func_end ov25_02255A40
_02255A94:
	.byte 0x30, 0xBC, 0x70, 0x47

	thumb_func_start ov25_02255A98
ov25_02255A98: @ 0x02255A98
	ldr r2, [r1, #0x64]
	cmp r2, #0
	beq _02255AB4
	ldr r0, [r1, #0x60]
	cmp r0, #0
	beq _02255AAE
	str r0, [r2, #0x60]
	ldr r2, [r1, #0x64]
	ldr r0, [r1, #0x60]
	str r2, [r0, #0x64]
	bx lr
_02255AAE:
	movs r0, #0
	str r0, [r2, #0x60]
	bx lr
_02255AB4:
	ldr r3, [r1, #0x60]
	cmp r3, #0
	beq _02255AC4
	movs r2, #0
	str r2, [r3, #0x64]
	ldr r1, [r1, #0x60]
	str r1, [r0, #8]
	bx lr
_02255AC4:
	movs r1, #0
	str r1, [r0, #8]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255A98

	thumb_func_start ov25_02255ACC
ov25_02255ACC: @ 0x02255ACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	str r2, [sp]
	str r3, [sp, #4]
	ldr r5, [sp, #0x20]
	bne _02255AE0
	bl FUN_02022974
_02255AE0:
	adds r0, r5, #0
	movs r1, #0x18
	bl FUN_02018144
	adds r4, r0, #0
	beq _02255B2E
	ldr r0, [sp]
	str r5, [r4, #8]
	str r0, [r4, #4]
	str r6, [r4]
	movs r1, #0xe
	ldr r0, [sp, #4]
	str r7, [r4, #0xc]
	str r0, [r4, #0x10]
	adds r0, r5, #0
	muls r1, r7, r1
	bl FUN_02018144
	str r0, [r4, #0x14]
	cmp r0, #0
	beq _02255B24
	movs r6, #0
	cmp r7, #0
	bls _02255B2E
	adds r5, r6, #0
_02255B12:
	ldr r0, [r4, #0x14]
	adds r0, r0, r5
	bl ov25_02255C80
	adds r6, r6, #1
	adds r5, #0xe
	cmp r6, r7
	blo _02255B12
	b _02255B2E
_02255B24:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02018238
	movs r4, #0
_02255B2E:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov25_02255ACC

	thumb_func_start ov25_02255B34
ov25_02255B34: @ 0x02255B34
	push {r4, lr}
	adds r4, r0, #0
	bne _02255B3E
	bl FUN_02022974
_02255B3E:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x14]
	bl FUN_02018238
	ldr r0, [r4, #8]
	adds r1, r4, #0
	bl FUN_02018238
	pop {r4, pc}
	thumb_func_end ov25_02255B34

	thumb_func_start ov25_02255B50
ov25_02255B50: @ 0x02255B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	bl FUN_0202278C
	str r0, [sp, #4]
	cmp r0, #0
	beq _02255BA8
	bl FUN_02022798
	ldr r1, [r5, #0xc]
	movs r7, #0
	str r0, [sp]
	cmp r1, #0
	bls _02255BCE
	adds r4, r7, #0
	adds r6, r7, #0
_02255B72:
	ldr r0, [r5, #0x14]
	adds r1, r0, r4
	ldrb r0, [r1, #1]
	strb r0, [r1, #2]
	ldr r0, [r5, #0x14]
	adds r0, r0, r4
	ldrb r0, [r0, #1]
	cmp r0, #0
	ldr r0, [r5]
	beq _02255B8E
	adds r0, r0, r6
	bl FUN_02022734
	b _02255B94
_02255B8E:
	adds r0, r0, r6
	bl FUN_02022760
_02255B94:
	ldr r1, [r5, #0x14]
	adds r7, r7, #1
	adds r1, r1, r4
	strb r0, [r1, #1]
	ldr r1, [r5, #0xc]
	adds r4, #0xe
	adds r6, r6, #4
	cmp r7, r1
	blo _02255B72
	b _02255BCE
_02255BA8:
	ldr r1, [r5, #0xc]
	movs r2, #0
	str r2, [sp]
	cmp r1, #0
	bls _02255BCE
	adds r0, r2, #0
	adds r3, r2, #0
_02255BB6:
	ldr r1, [r5, #0x14]
	adds r2, r2, #1
	adds r4, r1, r0
	ldrb r1, [r4, #1]
	strb r1, [r4, #2]
	ldr r1, [r5, #0x14]
	adds r1, r1, r0
	strb r3, [r1, #1]
	ldr r1, [r5, #0xc]
	adds r0, #0xe
	cmp r2, r1
	blo _02255BB6
_02255BCE:
	movs r6, #0
	cmp r1, #0
	bls _02255C14
	ldr r7, _02255C44 @ =0x0225607C
	adds r4, r6, #0
_02255BD8:
	ldr r3, [r5, #0x14]
	ldr r1, [sp, #4]
	adds r0, r3, r4
	ldrb r3, [r3, r4]
	ldr r2, [sp]
	lsls r3, r3, #2
	ldr r3, [r7, r3]
	blx r3
	adds r1, r0, #0
	ldr r0, [r5, #0x14]
	adds r0, r0, r4
	ldrb r2, [r0, #1]
	ldrb r0, [r0, #2]
	cmp r2, r0
	bne _02255BF8
	movs r2, #2
_02255BF8:
	cmp r1, #0
	bne _02255C00
	cmp r2, #2
	beq _02255C0A
_02255C00:
	ldr r3, [r5, #0x10]
	ldr r4, [r5, #4]
	adds r0, r6, #0
	blx r4
	b _02255C14
_02255C0A:
	ldr r0, [r5, #0xc]
	adds r6, r6, #1
	adds r4, #0xe
	cmp r6, r0
	blo _02255BD8
_02255C14:
	ldr r0, [r5, #0xc]
	adds r6, r6, #1
	cmp r6, r0
	bhs _02255C3E
	movs r0, #0xe
	adds r4, r6, #0
	ldr r7, _02255C44 @ =0x0225607C
	muls r4, r0, r4
_02255C24:
	ldr r3, [r5, #0x14]
	ldr r1, [sp, #4]
	adds r0, r3, r4
	ldrb r3, [r3, r4]
	ldr r2, [sp]
	lsls r3, r3, #2
	ldr r3, [r7, r3]
	blx r3
	ldr r0, [r5, #0xc]
	adds r6, r6, #1
	adds r4, #0xe
	cmp r6, r0
	blo _02255C24
_02255C3E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02255C44: .4byte 0x0225607C
	thumb_func_end ov25_02255B50

	thumb_func_start ov25_02255C48
ov25_02255C48: @ 0x02255C48
	push {r3, r4}
	ldr r4, [r0, #0x14]
	movs r0, #0xe
	muls r0, r1, r0
	adds r1, r4, r0
	lsls r0, r2, #1
	adds r0, r1, r0
	strh r3, [r0, #8]
	pop {r3, r4}
	bx lr
	thumb_func_end ov25_02255C48

	thumb_func_start ov25_02255C5C
ov25_02255C5C: @ 0x02255C5C
	ldr r3, [r0, #0x14]
	movs r0, #0xe
	muls r0, r1, r0
	adds r0, r3, r0
	strh r2, [r0, #0xc]
	bx lr
	thumb_func_end ov25_02255C5C

	thumb_func_start ov25_02255C68
ov25_02255C68: @ 0x02255C68
	adds r3, r1, #0
	movs r2, #0xe
	muls r3, r2, r3
	ldr r1, [r0, #0x14]
	movs r2, #0
	adds r1, r1, r3
	strh r2, [r1, #4]
	ldr r0, [r0, #0x14]
	movs r1, #4
	strb r1, [r0, r3]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255C68

	thumb_func_start ov25_02255C80
ov25_02255C80: @ 0x02255C80
	movs r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	adds r3, r0, #0
	adds r1, r2, #0
_02255C90:
	adds r2, r2, #1
	strh r1, [r3, #8]
	adds r3, r3, #2
	cmp r2, #2
	blo _02255C90
	strh r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255C80

	thumb_func_start ov25_02255CA0
ov25_02255CA0: @ 0x02255CA0
	strb r1, [r0]
	movs r1, #0
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov25_02255CA0

	thumb_func_start ov25_02255CA8
ov25_02255CA8: @ 0x02255CA8
	strb r1, [r0]
	bx lr
	thumb_func_end ov25_02255CA8

	thumb_func_start ov25_02255CAC
ov25_02255CAC: @ 0x02255CAC
	ldrh r2, [r0, #4]
	ldr r1, _02255CBC @ =0x0000FFFF
	cmp r2, r1
	bhs _02255CB8
	adds r1, r2, #1
	strh r1, [r0, #4]
_02255CB8:
	bx lr
	nop
_02255CBC: .4byte 0x0000FFFF
	thumb_func_end ov25_02255CAC

	thumb_func_start ov25_02255CC0
ov25_02255CC0: @ 0x02255CC0
	ldrh r3, [r0, #4]
	movs r2, #0
_02255CC4:
	ldrh r1, [r0, #8]
	cmp r3, r1
	bne _02255CCE
	adds r0, r2, #5
	bx lr
_02255CCE:
	adds r2, r2, #1
	adds r0, r0, #2
	cmp r2, #2
	blo _02255CC4
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov25_02255CC0

	thumb_func_start ov25_02255CDC
ov25_02255CDC: @ 0x02255CDC
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _02255CF2
	cmp r2, #0
	beq _02255CF2
	movs r1, #1
	bl ov25_02255CA0
	movs r0, #1
	pop {r3, pc}
_02255CF2:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov25_02255CDC

	thumb_func_start ov25_02255CF8
ov25_02255CF8: @ 0x02255CF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov25_02255CAC
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02255D26
	adds r0, r5, #0
	bl ov25_02255CC0
	cmp r0, #0
	bne _02255D54
	ldrh r1, [r5, #0xc]
	cmp r1, #0
	beq _02255D52
	ldrh r0, [r5, #4]
	cmp r0, r1
	blo _02255D52
	movs r0, #0
	strh r0, [r5, #4]
	movs r0, #7
	pop {r3, r4, r5, pc}
_02255D26:
	cmp r4, #0
	beq _02255D36
	adds r0, r5, #0
	movs r1, #0
	bl ov25_02255CA0
	movs r0, #2
	pop {r3, r4, r5, pc}
_02255D36:
	ldrh r0, [r5, #6]
	cmp r0, #0
	beq _02255D46
	adds r0, r5, #0
	movs r1, #2
	bl ov25_02255CA8
	b _02255D52
_02255D46:
	adds r0, r5, #0
	movs r1, #0
	bl ov25_02255CA0
	movs r0, #3
	pop {r3, r4, r5, pc}
_02255D52:
	movs r0, #0
_02255D54:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov25_02255CF8

	thumb_func_start ov25_02255D58
ov25_02255D58: @ 0x02255D58
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl ov25_02255CAC
	ldrh r1, [r5, #4]
	ldrh r0, [r5, #6]
	cmp r1, r0
	bls _02255D76
	adds r0, r5, #0
	movs r1, #0
	bl ov25_02255CA0
	movs r0, #3
	pop {r3, r4, r5, pc}
_02255D76:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02255D8C
	cmp r4, #0
	beq _02255D8C
	adds r0, r5, #0
	movs r1, #3
	bl ov25_02255CA0
	movs r0, #4
	pop {r3, r4, r5, pc}
_02255D8C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov25_02255D58

	thumb_func_start ov25_02255D90
ov25_02255D90: @ 0x02255D90
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	beq _02255D9E
	bl ov25_02255CAC
	b _02255DA4
_02255D9E:
	movs r1, #0
	bl ov25_02255CA0
_02255DA4:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov25_02255D90

	thumb_func_start ov25_02255DA8
ov25_02255DA8: @ 0x02255DA8
	push {r3, lr}
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne _02255DB6
	movs r1, #0
	bl ov25_02255CA0
_02255DB6:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov25_02255DA8

	thumb_func_start ov25_02255DBC
ov25_02255DBC: @ 0x02255DBC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r5, #0x1e
	blo _02255DCE
	bl FUN_02022974
_02255DCE:
	cmp r4, #0x21
	blo _02255DD6
	bl FUN_02022974
_02255DD6:
	cmp r5, #0x1e
	blo _02255DDC
	movs r5, #0
_02255DDC:
	cmp r4, #0x21
	blo _02255DE2
	movs r4, #0
_02255DE2:
	ldr r0, _02255DF4 @ =0x022560B0
	lsls r1, r5, #1
	ldrh r0, [r0, r1]
	lsls r1, r4, #1
	str r0, [r6]
	ldr r0, _02255DF8 @ =0x022560EC
	ldrh r0, [r0, r1]
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02255DF4: .4byte 0x022560B0
_02255DF8: .4byte 0x022560EC
	thumb_func_end ov25_02255DBC

	thumb_func_start ov25_02255DFC
ov25_02255DFC: @ 0x02255DFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r5, #4
	blo _02255E0C
	bl FUN_02022974
_02255E0C:
	ldr r0, _02255E1C @ =0x02256090
	lsls r1, r5, #3
	ldr r0, [r0, r1]
	str r0, [r4]
	ldr r0, _02255E20 @ =0x02256094
	ldr r0, [r0, r1]
	str r0, [r6]
	pop {r4, r5, r6, pc}
	.align 2, 0
_02255E1C: .4byte 0x02256090
_02255E20: .4byte 0x02256094
	thumb_func_end ov25_02255DFC

	thumb_func_start ov25_02255E24
ov25_02255E24: @ 0x02255E24
	push {r4, r5}
	ldr r5, _02255E54 @ =0x0225612E
	movs r4, #0
_02255E2A:
	ldrh r3, [r5]
	cmp r0, r3
	bne _02255E44
	ldr r0, _02255E58 @ =0x02256130
	lsls r3, r4, #2
	ldrb r0, [r0, r3]
	str r0, [r1]
	ldr r0, _02255E5C @ =0x02256131
	ldrb r0, [r0, r3]
	str r0, [r2]
	movs r0, #1
	pop {r4, r5}
	bx lr
_02255E44:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x1d
	blo _02255E2A
	movs r0, #0
	pop {r4, r5}
	bx lr
	nop
_02255E54: .4byte 0x0225612E
_02255E58: .4byte 0x02256130
_02255E5C: .4byte 0x02256131
	thumb_func_end ov25_02255E24
	@ 0x02255E60
