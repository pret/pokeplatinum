
	thumb_func_start ov98_02246C20
ov98_02246C20: @ 0x02246C20
	push {r3, r4, r5, lr}
	movs r2, #0xa
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x6c
	lsls r2, r2, #0xe
	bl FUN_02017FC8
	movs r2, #3
	movs r0, #0
	movs r1, #0x5b
	lsls r2, r2, #8
	bl FUN_02017FC8
	movs r1, #0x47
	adds r0, r5, #0
	lsls r1, r1, #2
	movs r2, #0x6c
	bl FUN_0200681C
	movs r2, #0x47
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020C4CF4
	adds r0, r5, #0
	bl FUN_02006840
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl FUN_02025E44
	str r0, [r4, #8]
	movs r0, #0x64
	movs r1, #0x6c
	bl FUN_02023790
	movs r1, #0x11
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #0x64
	movs r1, #0x6c
	bl FUN_02023790
	movs r1, #0x45
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, _02246C94 @ =0x00000497
	movs r0, #0x11
	movs r2, #1
	bl FUN_02004550
	movs r0, #0
	adds r4, #0x88
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02246C94: .4byte 0x00000497
	thumb_func_end ov98_02246C20

	thumb_func_start ov98_02246C98
ov98_02246C98: @ 0x02246C98
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246CBC
	blx FUN_021D8018
	bl FUN_0223B15C
	blx FUN_021D7EAC
	movs r1, #3
	subs r0, r1, r0
	bl FUN_020397B0
_02246CBC:
	ldr r0, [r5]
	cmp r0, #4
	bhi _02246D9E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02246CCE: @ jump table
	.2byte _02246CD8 - _02246CCE - 2 @ case 0
	.2byte _02246CE4 - _02246CCE - 2 @ case 1
	.2byte _02246D04 - _02246CCE - 2 @ case 2
	.2byte _02246D42 - _02246CCE - 2 @ case 3
	.2byte _02246D9A - _02246CCE - 2 @ case 4
_02246CD8:
	adds r0, r4, #0
	bl ov98_02246E08
	movs r0, #1
	str r0, [r5]
	b _02246D9E
_02246CE4:
	bl FUN_020334A4
	cmp r0, #0
	beq _02246D9E
	ldr r1, [r4, #0x10]
	ldr r0, _02246DA4 @ =0x02249E20
	str r1, [r0]
	ldr r0, _02246DA8 @ =ov98_02246EAC
	ldr r1, _02246DAC @ =ov98_02246ED4
	blx FUN_021D776C
	movs r0, #1
	str r0, [r4, #0x7c]
	movs r0, #2
	str r0, [r5]
	b _02246D9E
_02246D04:
	adds r1, r4, #0
	adds r1, #0x88
	ldr r1, [r1]
	adds r0, r4, #0
	lsls r2, r1, #4
	ldr r1, _02246DB0 @ =0x02249B4C
	ldr r1, [r1, r2]
	blx r1
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	lsls r2, r0, #4
	ldr r0, _02246DB4 @ =0x02249B54
	ldr r0, [r0, r2]
	movs r2, #0x6c
	bl FUN_020067E8
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0x88
	ldr r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	movs r0, #6
	adds r4, #0x88
	str r0, [r4]
	movs r0, #3
	str r0, [r5]
	b _02246D9E
_02246D42:
	ldr r0, [r4]
	bl FUN_02006844
	cmp r0, #1
	bne _02246D9E
	adds r1, r4, #0
	adds r1, #0x80
	ldr r1, [r1]
	adds r0, r4, #0
	lsls r2, r1, #4
	ldr r1, _02246DB8 @ =0x02249B50
	ldr r1, [r1, r2]
	blx r1
	ldr r0, [r4]
	bl FUN_02006814
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #6
	bne _02246D72
	movs r0, #4
	str r0, [r5]
	b _02246D9E
_02246D72:
	lsls r1, r0, #4
	ldr r0, _02246DBC @ =0x02249B58
	ldr r0, [r0, r1]
	cmp r0, #1
	bne _02246D88
	adds r0, r4, #0
	bl ov98_02246E54
	movs r0, #2
	str r0, [r5]
	b _02246D9E
_02246D88:
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246D94
	movs r0, #2
	str r0, [r5]
	b _02246D9E
_02246D94:
	movs r0, #0
	str r0, [r5]
	b _02246D9E
_02246D9A:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02246D9E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02246DA4: .4byte 0x02249E20
_02246DA8: .4byte ov98_02246EAC
_02246DAC: .4byte ov98_02246ED4
_02246DB0: .4byte 0x02249B4C
_02246DB4: .4byte 0x02249B54
_02246DB8: .4byte 0x02249B50
_02246DBC: .4byte 0x02249B58
	thumb_func_end ov98_02246C98

	thumb_func_start ov98_02246DC0
ov98_02246DC0: @ 0x02246DC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov98_02246E54
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x6c
	bl FUN_0201807C
	movs r0, #0x5b
	bl FUN_0201807C
	ldr r0, _02246E00 @ =0x0000004D
	ldr r1, _02246E04 @ =0x021D742C
	bl FUN_02000EC4
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02246E00: .4byte 0x0000004D
_02246E04: .4byte 0x021D742C
	thumb_func_end ov98_02246DC0

	thumb_func_start ov98_02246E08
ov98_02246E08: @ 0x02246E08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _02246E48
	ldr r0, _02246E4C @ =0x0000005E
	movs r1, #2
	bl FUN_02006590
	ldr r1, _02246E50 @ =0x00020020
	movs r0, #0x6c
	bl FUN_02018144
	str r0, [r4, #0xc]
	adds r0, #0x1f
	movs r1, #0x1f
	bics r0, r1
	movs r1, #2
	lsls r1, r1, #0x10
	movs r2, #0
	blx FUN_020A5404
	str r0, [r4, #0x10]
	bl FUN_02099550
	bl FUN_020995B4
	bl FUN_02033478
	movs r0, #4
	bl FUN_02017B8C
_02246E48:
	pop {r4, pc}
	nop
_02246E4C: .4byte 0x0000005E
_02246E50: .4byte 0x00020020
	thumb_func_end ov98_02246E08

	thumb_func_start ov98_02246E54
ov98_02246E54: @ 0x02246E54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x7c]
	cmp r0, #1
	bne _02246E80
	ldr r0, [r4, #0x10]
	blx FUN_020A543C
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	bl FUN_020995C4
	bl FUN_02099560
	bl FUN_020334CC
	ldr r0, _02246E84 @ =0x0000005E
	bl FUN_02006514
	movs r0, #0
	str r0, [r4, #0x7c]
_02246E80:
	pop {r4, pc}
	nop
_02246E84: .4byte 0x0000005E
	thumb_func_end ov98_02246E54

	thumb_func_start ov98_02246E88
ov98_02246E88: @ 0x02246E88
	adds r3, r0, #0
	adds r3, #0x88
	str r1, [r3]
	adds r0, #0x8c
	str r2, [r0]
	bx lr
	thumb_func_end ov98_02246E88

	thumb_func_start ov98_02246E94
ov98_02246E94: @ 0x02246E94
	movs r1, #6
	adds r0, #0x88
	str r1, [r0]
	bx lr
	thumb_func_end ov98_02246E94

	thumb_func_start ov98_02246E9C
ov98_02246E9C: @ 0x02246E9C
	adds r0, #0x7a
	strb r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov98_02246E9C

	thumb_func_start ov98_02246EA4
ov98_02246EA4: @ 0x02246EA4
	adds r0, #0x7a
	ldrb r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov98_02246EA4

	thumb_func_start ov98_02246EAC
ov98_02246EAC: @ 0x02246EAC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	blx FUN_020C3D98
	adds r6, r0, #0
	ldr r0, _02246ED0 @ =0x02249E20
	adds r1, r5, #0
	ldr r0, [r0]
	adds r2, r4, #0
	blx FUN_020A5448
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020C3DAC
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02246ED0: .4byte 0x02249E20
	thumb_func_end ov98_02246EAC

	thumb_func_start ov98_02246ED4
ov98_02246ED4: @ 0x02246ED4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	beq _02246EF0
	blx FUN_020C3D98
	adds r4, r0, #0
	ldr r0, _02246EF4 @ =0x02249E20
	adds r1, r5, #0
	ldr r0, [r0]
	blx FUN_020A55D8
	adds r0, r4, #0
	blx FUN_020C3DAC
_02246EF0:
	pop {r3, r4, r5, pc}
	nop
_02246EF4: .4byte 0x02249E20
	thumb_func_end ov98_02246ED4

	thumb_func_start ov98_02246EF8
ov98_02246EF8: @ 0x02246EF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6c
	movs r1, #0x64
	bl FUN_02018144
	adds r4, r0, #0
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r2, #0x6c
	bl ov98_022499C8
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_02030D38
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	thumb_func_end ov98_02246EF8

	thumb_func_start ov98_02246F24
ov98_02246F24: @ 0x02246F24
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x78
	ldrh r2, [r2]
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_02030D5C
	movs r2, #0x42
	lsls r2, r2, #2
	ldr r0, [r4, #4]
	ldr r2, [r4, r2]
	movs r1, #2
	bl FUN_02030D5C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_02246F24

	thumb_func_start ov98_02246F48
ov98_02246F48: @ 0x02246F48
	movs r2, #0x41
	adds r3, r0, #0
	lsls r2, r2, #2
	ldr r0, [r3, #4]
	ldr r2, [r3, r2]
	ldr r3, _02246F58 @ =FUN_02030D5C
	movs r1, #3
	bx r3
	.align 2, 0
_02246F58: .4byte FUN_02030D5C
	thumb_func_end ov98_02246F48

	thumb_func_start ov98_02246F5C
ov98_02246F5C: @ 0x02246F5C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x98
	bl FUN_02030E48
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov98_02246F94
	pop {r4, pc}
	thumb_func_end ov98_02246F5C

	thumb_func_start ov98_02246F74
ov98_02246F74: @ 0x02246F74
	adds r1, r0, #0
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r3, _02246F84 @ =ov98_022499C8
	adds r1, #0xbc
	movs r2, #0x6c
	bx r3
	.align 2, 0
_02246F84: .4byte ov98_022499C8
	thumb_func_end ov98_02246F74

	thumb_func_start ov98_02246F88
ov98_02246F88: @ 0x02246F88
	movs r1, #0x42
	lsls r1, r1, #2
	ldr r1, [r0, r1]
	adds r0, #0xfa
	strh r1, [r0]
	bx lr
	thumb_func_end ov98_02246F88

	thumb_func_start ov98_02246F94
ov98_02246F94: @ 0x02246F94
	adds r0, #0x78
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov98_02246F94

	thumb_func_start ov98_02246F9C
ov98_02246F9C: @ 0x02246F9C
	movs r1, #0x42
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov98_02246F9C

	thumb_func_start ov98_02246FA4
ov98_02246FA4: @ 0x02246FA4
	movs r1, #0x41
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov98_02246FA4

	thumb_func_start ov98_02246FAC
ov98_02246FAC: @ 0x02246FAC
	movs r2, #0x43
	lsls r2, r2, #2
	strb r1, [r0, r2]
	bx lr
	thumb_func_end ov98_02246FAC

	thumb_func_start ov98_02246FB4
ov98_02246FB4: @ 0x02246FB4
	movs r1, #0x43
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov98_02246FB4

	thumb_func_start ov98_02246FBC
ov98_02246FBC: @ 0x02246FBC
	bx lr
	.align 2, 0
	thumb_func_end ov98_02246FBC

	thumb_func_start ov98_02246FC0
ov98_02246FC0: @ 0x02246FC0
	bx lr
	.align 2, 0
	thumb_func_end ov98_02246FC0

	thumb_func_start ov98_02246FC4
ov98_02246FC4: @ 0x02246FC4
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl FUN_02025E44
	adds r3, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x6c
	movs r1, #0x10
	add r2, sp, #8
	bl FUN_02089400
	adds r1, r4, #0
	adds r1, #0x94
	adds r4, #0x94
	str r0, [r1]
	ldr r0, [r4]
	add sp, #0x18
	pop {r4, pc}
	thumb_func_end ov98_02246FC4

	thumb_func_start ov98_02246FFC
ov98_02246FFC: @ 0x02246FFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x94
	ldr r4, [r0]
	movs r1, #0x6c
	ldr r0, [r4, #0x1c]
	bl ov98_02249A80
	cmp r0, #0
	beq _0224701A
	adds r0, r5, #0
	movs r1, #1
	bl ov98_02246FAC
	b _0224705C
_0224701A:
	adds r0, r5, #0
	bl ov98_02246FB4
	cmp r0, #2
	bne _02247048
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x1c]
	bl FUN_02023BE0
	cmp r0, #0
	beq _0224703E
	adds r0, r5, #0
	movs r1, #3
	bl ov98_02246FAC
	b _0224705C
_0224703E:
	adds r0, r5, #0
	movs r1, #0
	bl ov98_02246FAC
	b _0224705C
_02247048:
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r4, #0x1c]
	bl FUN_02023810
	adds r0, r5, #0
	movs r1, #2
	bl ov98_02246FAC
_0224705C:
	adds r0, r4, #0
	bl FUN_02089438
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov98_02246E88
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov98_02246FFC

	thumb_func_start ov98_02247070
ov98_02247070: @ 0x02247070
	push {r4, lr}
	sub sp, #0x20
	adds r4, r0, #0
	movs r0, #3
	str r0, [sp, #0x10]
	movs r0, #4
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	bl FUN_02025E44
	adds r3, r0, #0
	movs r0, #5
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x78
	ldrh r0, [r0]
	movs r1, #7
	add r2, sp, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x6c
	bl FUN_0208941C
	adds r1, r4, #0
	adds r1, #0x94
	adds r4, #0x94
	str r0, [r1]
	ldr r0, [r4]
	add sp, #0x20
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_02247070

	thumb_func_start ov98_022470B8
ov98_022470B8: @ 0x022470B8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x94
	ldr r4, [r0]
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	bl FUN_02023B38
	ldr r2, _022470F4 @ =0x00002710
	movs r3, #0
	blx FUN_020E1EE0
	movs r1, #0x42
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _022470E0
	bl FUN_02022974
_022470E0:
	adds r0, r4, #0
	bl FUN_02089438
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov98_02246E88
	pop {r3, r4, r5, pc}
	nop
_022470F4: .4byte 0x00002710
	thumb_func_end ov98_022470B8

	thumb_func_start ov98_022470F8
ov98_022470F8: @ 0x022470F8
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r4, #4]
	bl FUN_02025E44
	adds r3, r0, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x6c
	movs r1, #4
	add r2, sp, #8
	bl FUN_02089400
	adds r1, r4, #0
	adds r1, #0x94
	adds r4, #0x94
	str r0, [r1]
	ldr r0, [r4]
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_022470F8

	thumb_func_start ov98_02247134
ov98_02247134: @ 0x02247134
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x94
	ldr r4, [r0]
	add r1, sp, #0
	ldr r0, [r4, #0x1c]
	bl FUN_02023B38
	movs r1, #0x41
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp]
	cmp r0, #0
	bne _02247154
	bl FUN_02022974
_02247154:
	adds r0, r4, #0
	bl FUN_02089438
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov98_02246E88
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov98_02247134

	thumb_func_start ov98_02247168
ov98_02247168: @ 0x02247168
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x6c
	movs r1, #0xc
	bl FUN_02018144
	movs r1, #0
	movs r2, #0xc
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r0, [r5, #4]
	str r0, [r4]
	movs r0, #1
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0x94
	adds r5, #0x94
	str r4, [r0]
	ldr r0, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov98_02247168

	thumb_func_start ov98_02247198
ov98_02247198: @ 0x02247198
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02039074
	cmp r0, #0
	beq _022471B0
	ldr r0, [r4, #4]
	bl FUN_020507E4
	bl FUN_0206AF5C
_022471B0:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_020181C4
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov98_02246E88
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_02247198

	thumb_func_start ov98_022471C8
ov98_022471C8: @ 0x022471C8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r1, #1
	lsls r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _022473B0 @ =0xFFFFE0FF
	ands r0, r2
	str r0, [r1]
	ldr r0, _022473B4 @ =0x04001000
	ldr r3, [r0]
	ands r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _022473B8 @ =0xFFFF1FFF
	ands r3, r2
	str r3, [r1]
	ldr r3, [r0]
	adds r1, #0x50
	ands r2, r3
	str r2, [r0]
	movs r2, #0
	strh r2, [r1]
	adds r0, #0x50
	strh r2, [r0]
	movs r2, #7
	movs r0, #3
	movs r1, #0x6d
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	ldr r1, _022473BC @ =0x00000418
	adds r0, r4, #0
	movs r2, #0x6d
	bl FUN_0200681C
	ldr r2, _022473BC @ =0x00000418
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020C4CF4
	adds r0, r4, #0
	bl FUN_02006840
	str r0, [r5]
	movs r0, #0x6d
	bl FUN_02018340
	str r0, [r5, #4]
	movs r0, #0x40
	movs r1, #0x6d
	bl FUN_0201DBEC
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	ldr r0, [r5, #4]
	bl ov98_02247510
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r0, #0xb
	movs r1, #0x40
	movs r2, #0x6d
	bl FUN_0200B368
	str r0, [r5, #0x20]
	ldr r2, _022473C0 @ =0x0000029F
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x6d
	bl FUN_0200B144
	str r0, [r5, #0x24]
	ldr r2, _022473C4 @ =0x000002A2
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x6d
	bl FUN_0200B144
	str r0, [r5, #0x2c]
	ldr r2, _022473C8 @ =0x000002B7
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x6d
	bl FUN_0200B144
	movs r2, #0x67
	str r0, [r5, #0x30]
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x6d
	bl FUN_0200B144
	str r0, [r5, #0x28]
	ldr r2, _022473CC @ =0x00000166
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x6d
	bl FUN_0200B144
	str r0, [r5, #0x34]
	movs r0, #0xb4
	movs r1, #0x6d
	bl FUN_02023790
	str r0, [r5, #0x38]
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x6d
	bl FUN_02023790
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x24]
	movs r1, #0x1f
	bl FUN_0200B1EC
	str r0, [r5, #0x3c]
	adds r0, r5, #0
	bl ov98_02247704
	adds r0, r5, #0
	bl ov98_02247A24
	ldr r0, [r5]
	bl ov98_02246EA4
	cmp r0, #0xc
	beq _022472EE
	cmp r0, #0x16
	beq _0224731A
	b _02247330
_022472EE:
	blx FUN_021D7A8C
	cmp r0, #0
	bne _02247314
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_02039074
	cmp r0, #1
	bne _02247314
	movs r0, #0xc
	str r0, [r5, #8]
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_02038548
	bl FUN_02039734
	b _02247338
_02247314:
	movs r0, #0
	str r0, [r5, #8]
	b _02247338
_0224731A:
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xe8
	str r1, [r0]
	bl FUN_02039734
	ldr r0, [r5]
	bl ov98_02246EA4
	str r0, [r5, #8]
	b _02247338
_02247330:
	ldr r0, [r5]
	bl ov98_02246EA4
	str r0, [r5, #8]
_02247338:
	ldr r0, [r5]
	movs r1, #0
	bl ov98_02246E9C
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x6d
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, _022473D0 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	ldr r0, _022473D4 @ =ov98_022474E8
	adds r1, r5, #0
	bl FUN_02017798
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_022473B0: .4byte 0xFFFFE0FF
_022473B4: .4byte 0x04001000
_022473B8: .4byte 0xFFFF1FFF
_022473BC: .4byte 0x00000418
_022473C0: .4byte 0x0000029F
_022473C4: .4byte 0x000002A2
_022473C8: .4byte 0x000002B7
_022473CC: .4byte 0x00000166
_022473D0: .4byte 0x021BF6DC
_022473D4: .4byte ov98_022474E8
	thumb_func_end ov98_022471C8

	thumb_func_start ov98_022473D8
ov98_022473D8: @ 0x022473D8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0
	beq _022473F2
	cmp r1, #1
	beq _02247400
	cmp r1, #2
	beq _0224742C
	b _02247438
_022473F2:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02247438
	movs r0, #1
	str r0, [r5]
	b _02247438
_02247400:
	ldr r6, [r4, #8]
	ldr r1, _0224743C @ =0x02249D70
	lsls r2, r6, #2
	ldr r1, [r1, r2]
	blx r1
	ldr r1, [r4, #8]
	cmp r6, r1
	beq _02247422
	adds r1, r4, #0
	movs r2, #0
	adds r1, #0x94
	str r2, [r1]
	adds r1, r4, #0
	adds r1, #0x9c
	str r2, [r1]
	adds r4, #0x98
	str r2, [r4]
_02247422:
	cmp r0, #1
	bne _02247438
	movs r0, #2
	str r0, [r5]
	b _02247438
_0224742C:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02247438
	movs r0, #1
	pop {r4, r5, r6, pc}
_02247438:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224743C: .4byte 0x02249D70
	thumb_func_end ov98_022473D8

	thumb_func_start ov98_02247440
ov98_02247440: @ 0x02247440
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, #0xec
	ldr r0, [r0]
	cmp r0, #0
	beq _02247464
	bl FUN_0200DA58
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xec
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xf0
	str r1, [r0]
_02247464:
	ldr r0, [r4, #0x34]
	bl FUN_0200B190
	ldr r0, [r4, #0x28]
	bl FUN_0200B190
	ldr r0, [r4, #0x30]
	bl FUN_0200B190
	ldr r0, [r4, #0x2c]
	bl FUN_0200B190
	ldr r0, [r4, #0x24]
	bl FUN_0200B190
	ldr r0, [r4, #0x20]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x3c]
	bl FUN_020237BC
	ldr r0, [r4, #0x40]
	bl FUN_020237BC
	ldr r0, [r4, #0x38]
	bl FUN_020237BC
	adds r0, r4, #0
	bl ov98_02247ACC
	ldr r0, [r4, #4]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl ov98_022476D0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201DC3C
	bl FUN_0201E530
	movs r0, #0
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	bl FUN_02039794
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x6d
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov98_02247440

	thumb_func_start ov98_022474E8
ov98_022474E8: @ 0x022474E8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r0, [r4, #4]
	bl FUN_0201C2B8
	ldr r3, _02247508 @ =0x027E0000
	ldr r1, _0224750C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_02247508: .4byte 0x027E0000
_0224750C: .4byte 0x00003FF8
	thumb_func_end ov98_022474E8

	thumb_func_start ov98_02247510
ov98_02247510: @ 0x02247510
	push {r3, r4, r5, lr}
	sub sp, #0xe0
	adds r4, r0, #0
	bl FUN_0201FF00
	bl FUN_0201FF68
	ldr r5, _022476C0 @ =0x02249C4C
	add r3, sp, #0x48
	movs r2, #5
_02247524:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02247524
	add r0, sp, #0x48
	bl FUN_0201FE94
	movs r1, #6
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x12
	blx FUN_020C4B4C
	movs r1, #0x62
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x14
	lsls r2, r2, #0x10
	blx FUN_020C4B4C
	movs r1, #0x19
	movs r2, #1
	movs r0, #0
	lsls r1, r1, #0x16
	lsls r2, r2, #0x12
	blx FUN_020C4B4C
	movs r1, #0x66
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x14
	lsls r2, r2, #0x10
	blx FUN_020C4B4C
	ldr r5, _022476C4 @ =0x02249BCC
	add r3, sp, #0x38
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _022476C8 @ =0x02249CAC
	add r3, sp, #0x70
	movs r2, #0xe
_02247584:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02247584
	movs r1, #0
	adds r0, r4, #0
	add r2, sp, #0x70
	adds r3, r1, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02019184
	movs r1, #0
	adds r0, r4, #0
	movs r2, #3
	adds r3, r1, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #1
	add r2, sp, #0x8c
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #2
	add r2, sp, #0xa8
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #3
	add r2, sp, #0xc4
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02019184
	movs r1, #3
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r5, _022476CC @ =0x02249C74
	add r3, sp, #0
	movs r2, #7
_02247642:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02247642
	adds r0, r4, #0
	movs r1, #4
	add r2, sp, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #4
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #4
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #5
	add r2, sp, #0x1c
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019EBC
	movs r2, #0
	adds r0, r4, #0
	movs r1, #5
	adds r3, r2, #0
	bl FUN_02019184
	adds r0, r4, #0
	movs r1, #5
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x6d
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x6d
	bl FUN_02019690
	add sp, #0xe0
	pop {r3, r4, r5, pc}
	nop
_022476C0: .4byte 0x02249C4C
_022476C4: .4byte 0x02249BCC
_022476C8: .4byte 0x02249CAC
_022476CC: .4byte 0x02249C74
	thumb_func_end ov98_02247510

	thumb_func_start ov98_022476D0
ov98_022476D0: @ 0x022476D0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #5
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019044
	pop {r4, pc}
	thumb_func_end ov98_022476D0

	thumb_func_start ov98_02247704
ov98_02247704: @ 0x02247704
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #0x10]
	ldr r0, [r0, #4]
	movs r1, #0x6d
	str r0, [sp, #0x30]
	movs r0, #0x5c
	bl FUN_02006C24
	movs r2, #0
	str r2, [sp]
	movs r1, #0x6d
	str r1, [sp, #4]
	movs r1, #3
	adds r3, r2, #0
	str r0, [sp, #0x2c]
	bl FUN_02007130
	movs r3, #0
	str r3, [sp]
	movs r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	movs r1, #3
	movs r2, #4
	bl FUN_02007130
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x6d
	bl FUN_02002E98
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x6d
	bl FUN_02002E98
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	ldr r0, [r0, #8]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200DD0C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DAA4
	movs r0, #0
	str r0, [sp]
	movs r0, #0x6d
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	movs r1, #2
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DAA4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	movs r1, #2
	movs r3, #1
	bl FUN_020070E8
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	movs r1, #5
	movs r3, #1
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	movs r1, #0xa
	movs r3, #5
	bl FUN_020070E8
	movs r1, #0
	movs r0, #6
	str r1, [sp]
	lsls r0, r0, #8
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x6d
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x30]
	movs r1, #0xb
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	ldr r0, [sp, #0x10]
	movs r2, #0xcb
	adds r0, #0xec
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020C4CF4
	ldr r0, [sp, #0x2c]
	movs r1, #4
	add r2, sp, #0x3c
	movs r3, #0x6d
	bl FUN_020071EC
	adds r4, r0, #0
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0xc]
	adds r1, #0xf4
	movs r2, #0x80
	blx FUN_020C4B18
	ldr r0, [sp, #0x3c]
	movs r2, #0x5d
	ldr r1, [sp, #0x10]
	lsls r2, r2, #2
	adds r1, r1, r2
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C4B18
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	movs r1, #0x5d
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, #0xf4
	str r0, [sp, #0x14]
_0224786A:
	movs r0, #0
	str r0, [sp, #0x20]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	lsls r1, r0, #5
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	str r0, [sp, #0x34]
_0224787C:
	ldr r0, [sp, #0x24]
	cmp r0, #0x15
	blt _02247886
	bl FUN_02022974
_02247886:
	ldr r0, [sp, #0x34]
	movs r7, #1
	adds r6, r0, #2
	ldr r0, [sp, #0x18]
	adds r4, r0, #2
	ldr r0, [sp, #0x14]
	adds r5, r0, #2
	ldr r0, [sp, #0x20]
	asrs r0, r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x38]
_0224789E:
	adds r0, r6, #0
	adds r0, #0xf4
	ldrh r0, [r0]
	ldr r3, [sp, #0x38]
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #1
	bl FUN_0200393C
	adds r7, r7, #1
	adds r6, r6, #2
	adds r4, r4, #2
	adds r5, r5, #2
	cmp r7, #0x10
	blt _0224789E
	ldr r0, [sp, #0x18]
	adds r0, #0x20
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	beq _022478EA
	movs r0, #3
	ldr r1, [sp, #0x20]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x20]
	cmp r1, r0
	blt _0224787C
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x1c]
	b _0224787C
_022478EA:
	ldr r0, [sp, #0x14]
	adds r0, #0x20
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #3
	blt _0224786A
	movs r1, #0x5d
	ldr r0, [sp, #0x10]
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0x2a
	lsls r1, r1, #4
	blx FUN_020C2C54
	ldr r0, [sp, #0x10]
	movs r1, #1
	adds r0, #0xf0
	str r1, [r0]
	ldr r1, [sp, #0x10]
	ldr r0, _0224798C @ =ov98_02247990
	adds r1, #0xec
	movs r2, #0x14
	bl FUN_0200DA04
	ldr r1, [sp, #0x10]
	adds r1, #0xec
	str r0, [r1]
	ldr r0, [sp, #0x2c]
	str r1, [sp, #0x10]
	bl FUN_02006CA8
	movs r0, #0xaa
	movs r1, #0x6d
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6d
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	movs r1, #0xb
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x6d
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	movs r1, #0xa
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0x20
	str r0, [sp]
	movs r3, #0x6d
	str r3, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xc
	movs r2, #0
	adds r3, #0xb3
	bl FUN_02007130
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224798C: .4byte ov98_02247990
	thumb_func_end ov98_02247704

	thumb_func_start ov98_02247990
ov98_02247990: @ 0x02247990
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02247A18
	ldr r0, _02247A1C @ =0x0000032B
	movs r1, #1
	ldrb r2, [r4, r0]
	eors r2, r1
	strb r2, [r4, r0]
	ldrb r2, [r4, r0]
	tst r1, r2
	bne _02247A18
	subs r0, r0, #3
	ldrsh r0, [r4, r0]
	adds r1, r4, #0
	adds r1, #0x88
	lsls r0, r0, #5
	adds r0, r1, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C00B4
	movs r0, #0xca
	lsls r0, r0, #2
	ldrsh r0, [r4, r0]
	adds r1, r4, #0
	adds r1, #0x88
	lsls r0, r0, #5
	adds r0, r1, r0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020C0108
	ldr r0, _02247A20 @ =0x0000032A
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bne _022479FC
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0x15
	blt _02247A18
	movs r2, #0x13
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r2, [r4, r0]
	movs r1, #1
	eors r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
_022479FC:
	subs r1, r0, #2
	ldrsh r1, [r4, r1]
	subs r2, r1, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsh r1, [r4, r1]
	cmp r1, #0
	bge _02247A18
	movs r2, #1
	subs r1, r0, #2
	strh r2, [r4, r1]
	ldrsb r1, [r4, r0]
	eors r1, r2
	strb r1, [r4, r0]
_02247A18:
	pop {r4, pc}
	nop
_02247A1C: .4byte 0x0000032B
_02247A20: .4byte 0x0000032A
	thumb_func_end ov98_02247990

	thumb_func_start ov98_02247A24
ov98_02247A24: @ 0x02247A24
	push {r3, r4, lr}
	sub sp, #0x14
	movs r3, #4
	adds r4, r0, #0
	str r3, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x68
	movs r2, #0
	bl FUN_0201A7E8
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #1
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x81
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x58
	movs r2, #0
	movs r3, #4
	bl FUN_0201A7E8
	adds r0, r4, #0
	adds r0, #0x58
	movs r1, #0
	bl FUN_0201ADA4
	movs r3, #1
	ldr r0, _02247AC8 @ =0x000F0E00
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	ldr r1, [r4, #0x3c]
	adds r0, #0x58
	movs r2, #0
	bl ov98_022498CC
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x48
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	adds r4, #0x48
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_02247AC8: .4byte 0x000F0E00
	thumb_func_end ov98_02247A24

	thumb_func_start ov98_02247ACC
ov98_02247ACC: @ 0x02247ACC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x48
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x58
	bl FUN_0201A8FC
	adds r4, #0x68
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	thumb_func_end ov98_02247ACC

	thumb_func_start ov98_02247AE8
ov98_02247AE8: @ 0x02247AE8
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov98_02247AE8

	thumb_func_start ov98_02247AF0
ov98_02247AF0: @ 0x02247AF0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	bne _02247B0A
	adds r0, r4, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_0200E7FC
	adds r4, #0x8c
	str r0, [r4]
_02247B0A:
	pop {r4, pc}
	thumb_func_end ov98_02247AF0

	thumb_func_start ov98_02247B0C
ov98_02247B0C: @ 0x02247B0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _02247B22
	bl FUN_0200EBA0
	movs r0, #0
	adds r4, #0x8c
	str r0, [r4]
_02247B22:
	pop {r4, pc}
	thumb_func_end ov98_02247B0C

	thumb_func_start ov98_02247B24
ov98_02247B24: @ 0x02247B24
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r5, _02247B54 @ =0x02249BC4
	add r4, sp, #4
	ldrh r6, [r5]
	add r3, sp, #4
	strh r6, [r4]
	ldrh r6, [r5, #2]
	strh r6, [r4, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	strh r6, [r4, #4]
	strh r5, [r4, #6]
	strb r1, [r4, #2]
	strh r2, [r4, #6]
	movs r1, #0x6d
	str r1, [sp]
	adds r1, r3, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_02002100
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02247B54: .4byte 0x02249BC4
	thumb_func_end ov98_02247B24

	thumb_func_start ov98_02247B58
ov98_02247B58: @ 0x02247B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r5, _02247B94 @ =0x02249BC4
	adds r4, r1, #0
	ldrh r6, [r5]
	adds r1, r3, #0
	add r3, sp, #8
	strh r6, [r3]
	ldrh r6, [r5, #2]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	strh r6, [r3, #2]
	ldrh r6, [r5, #4]
	ldrh r5, [r5, #6]
	add r7, sp, #8
	strh r6, [r3, #4]
	strh r5, [r3, #6]
	strb r4, [r3, #2]
	strh r2, [r3, #6]
	str r1, [sp]
	movs r1, #0x6d
	str r1, [sp, #4]
	adds r1, r7, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_02002054
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247B94: .4byte 0x02249BC4
	thumb_func_end ov98_02247B58

	thumb_func_start ov98_02247B98
ov98_02247B98: @ 0x02247B98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _02247BAC
	cmp r0, #1
	beq _02247C78
	b _02247CD4
_02247BAC:
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_02030D20
	cmp r0, #1
	bne _02247BC2
	ldr r3, _02247D14 @ =0x02249BC0
	ldr r4, _02247D18 @ =0x02249BEC
	movs r7, #4
	ldr r2, _02247D1C @ =0x02249C0C
	b _02247BCA
_02247BC2:
	ldr r3, _02247D20 @ =0x02249BBC
	ldr r4, _02247D24 @ =0x02249BDC
	ldr r2, _02247D28 @ =0x02249C2C
	movs r7, #2
_02247BCA:
	add r6, sp, #0x14
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r6!, {r0, r1}
	ldrb r0, [r3, #1]
	adds r1, r5, #0
	adds r1, #0x78
	str r0, [sp]
	ldrb r0, [r3, #2]
	movs r2, #0
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	ldrb r3, [r3]
	ldr r0, [r5, #4]
	bl FUN_0201A7E8
	adds r0, r7, #0
	movs r1, #0x6d
	bl FUN_02013A04
	adds r1, r5, #0
	adds r1, #0xa0
	movs r6, #0
	str r0, [r1]
	cmp r7, #0
	ble _02247C2A
_02247C12:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	ldr r1, [r5, #0x34]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r7
	blt _02247C12
_02247C2A:
	adds r0, r5, #0
	adds r0, #0x78
	str r0, [sp, #0x20]
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	movs r1, #0
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	adds r2, r1, #0
	movs r3, #0x6d
	bl FUN_0200112C
	adds r1, r5, #0
	adds r1, #0xa4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DC48
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	adds r0, #0x78
	bl FUN_0201A954
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r5, #0x94
	adds r0, r0, #1
	str r0, [r5]
	b _02247D0E
_02247C78:
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	bl FUN_02001288
	adds r4, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _02247C94
	adds r0, r0, #1
	cmp r4, r0
	beq _02247D0E
	b _02247CBA
_02247C94:
	ldr r0, _02247D2C @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r5]
	movs r1, #6
	movs r2, #0
	bl ov98_02246E88
	adds r0, r5, #0
	movs r1, #0x1d
	adds r0, #0x9c
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r5, #0x94
	adds r0, r0, #1
	str r0, [r5]
	b _02247D0E
_02247CBA:
	ldr r0, _02247D2C @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0x9c
	str r4, [r0]
	adds r0, r5, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r5, #0x94
	adds r0, r0, #1
	str r0, [r5]
	b _02247D0E
_02247CD4:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	bl FUN_02013A3C
	adds r0, r5, #0
	adds r0, #0xa4
	movs r1, #0
	ldr r0, [r0]
	adds r2, r1, #0
	bl FUN_02001384
	adds r0, r5, #0
	adds r0, #0x78
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r5, #0
	adds r0, #0x78
	bl FUN_0201ACF4
	adds r0, r5, #0
	adds r0, #0x78
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	str r0, [r5, #8]
_02247D0E:
	movs r0, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02247D14: .4byte 0x02249BC0
_02247D18: .4byte 0x02249BEC
_02247D1C: .4byte 0x02249C0C
_02247D20: .4byte 0x02249BBC
_02247D24: .4byte 0x02249BDC
_02247D28: .4byte 0x02249C2C
_02247D2C: .4byte 0x000005DC
	thumb_func_end ov98_02247B98

	thumb_func_start ov98_02247D30
ov98_02247D30: @ 0x02247D30
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #4
	movs r2, #3
	bl ov98_02246E88
	ldr r0, [r4]
	movs r1, #0x26
	bl ov98_02246E9C
	movs r0, #0x1d
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_02247D30

	thumb_func_start ov98_02247D50
ov98_02247D50: @ 0x02247D50
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02247D66
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02247D66:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bhi _02247E2C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02247D7C: @ jump table
	.2byte _02247D84 - _02247D7C - 2 @ case 0
	.2byte _02247DA2 - _02247D7C - 2 @ case 1
	.2byte _02247DC2 - _02247D7C - 2 @ case 2
	.2byte _02247E22 - _02247D7C - 2 @ case 3
_02247D84:
	ldr r0, _02247E34 @ =0x00000F0F
	movs r2, #0x19
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247E2C
_02247DA2:
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov98_02247B24
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247E2C
_02247DC2:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x6d
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02247E2C
	subs r1, r1, #1
	cmp r0, r1
	ldr r0, _02247E34 @ =0x00000F0F
	bne _02247DFA
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r2, #0x1b
	movs r3, #1
	bl ov98_02249714
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #4]
	adds r2, r1, #0
	bl FUN_02030D5C
	b _02247E14
_02247DFA:
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r2, #0x1a
	movs r3, #1
	bl ov98_02249714
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #4]
	movs r2, #1
	bl FUN_02030D5C
_02247E14:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247E2C
_02247E22:
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl ov98_02247AE8
_02247E2C:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02247E34: .4byte 0x00000F0F
	thumb_func_end ov98_02247D50

	thumb_func_start ov98_02247E38
ov98_02247E38: @ 0x02247E38
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02247E4E
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02247E4E:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bhi _02247EFC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02247E64: @ jump table
	.2byte _02247E6C - _02247E64 - 2 @ case 0
	.2byte _02247E8A - _02247E64 - 2 @ case 1
	.2byte _02247EAC - _02247E64 - 2 @ case 2
	.2byte _02247EF2 - _02247E64 - 2 @ case 3
_02247E6C:
	ldr r0, _02247F04 @ =0x00000F0F
	movs r2, #0x1c
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247EFC
_02247E8A:
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	movs r3, #1
	bl ov98_02247B58
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247EFC
_02247EAC:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x6d
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02247EFC
	subs r1, r1, #1
	cmp r0, r1
	bne _02247ECC
	movs r0, #0
	str r0, [r4, #8]
	b _02247EFC
_02247ECC:
	ldr r0, _02247F04 @ =0x00000F0F
	movs r2, #0x1d
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_02030D10
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02247EFC
_02247EF2:
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl ov98_02247AE8
_02247EFC:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02247F04: .4byte 0x00000F0F
	thumb_func_end ov98_02247E38

	thumb_func_start ov98_02247F08
ov98_02247F08: @ 0x02247F08
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0xd4
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r4, #0x34]
	movs r1, #0x2a
	bl FUN_0200B1EC
	adds r5, r0, #0
	ldr r3, _02247F98 @ =0x02249D60
	movs r1, #0
	ldr r0, [r3, #4]
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3]
	adds r0, r4, #0
	adds r0, #0xd4
	adds r3, #0xc
	bl FUN_0201D738
	adds r0, r5, #0
	bl FUN_020237BC
	ldr r0, [r4, #0x34]
	movs r1, #0x2b
	bl FUN_0200B1EC
	adds r5, r0, #0
	ldr r3, _02247F98 @ =0x02249D60
	movs r1, #0
	ldr r0, [r3, #0xc]
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r3, [r3, #8]
	adds r0, r4, #0
	adds r0, #0xd4
	adds r3, #0xc
	bl FUN_0201D738
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	adds r1, r4, #0
	lsls r3, r0, #3
	adds r0, r4, #0
	ldr r2, _02247F9C @ =0x02249D60
	adds r0, #0xe4
	ldr r5, _02247FA0 @ =0x02249D64
	ldr r2, [r2, r3]
	ldr r0, [r0]
	ldr r3, [r5, r3]
	adds r1, #0xd4
	bl FUN_02014A58
	adds r4, #0xd4
	adds r0, r4, #0
	bl FUN_0201A954
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02247F98: .4byte 0x02249D60
_02247F9C: .4byte 0x02249D60
_02247FA0: .4byte 0x02249D64
	thumb_func_end ov98_02247F08

	thumb_func_start ov98_02247FA4
ov98_02247FA4: @ 0x02247FA4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xd4
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r4, #0xd4
	adds r0, r4, #0
	bl FUN_0201A954
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_02247FA4

	thumb_func_start ov98_02247FBC
ov98_02247FBC: @ 0x02247FBC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r0, #0xbc
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xbc
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, #8
	beq _02247FDA
	b _022482C8
_02247FDA:
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #1
	adds r2, r0, #0
	adds r0, r4, #0
	eors r2, r1
	adds r0, #0xc0
	str r2, [r0]
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0xbc
	str r2, [r0]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r3, r0, #6
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r3, r0
	bne _02248008
	b _02248146
_02248008:
	movs r0, #0x11
	str r0, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #1
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_02019CB8
	movs r0, #0x11
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #2
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_02019CB8
	movs r0, #0x11
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #3
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_02019CB8
	movs r3, #0x11
	adds r2, r4, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r5, [r2]
	movs r2, #0x14
	muls r2, r5, r2
	adds r2, r2, #4
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	bl FUN_02019CB8
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xb
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_02019CB8
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xc
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_02019CB8
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xd
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_02019CB8
	movs r0, #0x12
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xe
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x11
	bl FUN_02019CB8
	b _02248160
_02248146:
	movs r0, #0x11
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	movs r1, #3
	movs r3, #0xe
	bl FUN_02019CB8
_02248160:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	bne _0224816C
	b _022482A6
_0224816C:
	movs r1, #3
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #5
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_02019CB8
	movs r1, #3
	adds r2, r4, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #6
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_02019CB8
	movs r1, #3
	adds r2, r4, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, r2, #7
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_02019CB8
	movs r1, #3
	adds r2, r4, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #8
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	lsrs r2, r2, #0x10
	movs r3, #0x11
	bl FUN_02019CB8
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0xf
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xe
	bl FUN_02019CB8
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0xf
	bl FUN_02019CB8
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0x11
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x10
	bl FUN_02019CB8
	movs r0, #4
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #9
	adds r2, r4, #0
	str r0, [sp, #0xc]
	adds r2, #0xc0
	ldr r3, [r2]
	movs r2, #0x14
	muls r2, r3, r2
	adds r2, #0x12
	lsls r2, r2, #0x10
	ldr r0, [r4, #4]
	movs r1, #3
	lsrs r2, r2, #0x10
	movs r3, #0x11
	bl FUN_02019CB8
	b _022482C0
_022482A6:
	movs r1, #3
	str r1, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #9
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	movs r2, #0
	movs r3, #0xe
	bl FUN_02019CB8
_022482C0:
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_0201C3C0
_022482C8:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov98_02247FBC

	thumb_func_start ov98_022482CC
ov98_022482CC: @ 0x022482CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r0, #0xc4
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r7, #0x34]
	movs r1, #0x2c
	bl FUN_0200B1EC
	str r0, [sp, #0xc]
	bl FUN_02023C3C
	movs r1, #0x6d
	bl FUN_02023790
	adds r6, r0, #0
	adds r0, r7, #0
	adds r0, #0xac
	ldr r4, [r0]
	adds r0, r4, #6
	cmp r4, r0
	bge _02248336
	adds r0, r7, #0
	str r0, [sp, #0x10]
	adds r0, #0xc4
	movs r5, #0
	str r0, [sp, #0x10]
_02248306:
	ldr r1, [sp, #0xc]
	adds r0, r6, #0
	adds r2, r4, #0
	bl FUN_02023C9C
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	movs r1, #0
	adds r2, r6, #0
	movs r3, #4
	bl FUN_0201D738
	adds r0, r7, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r4, r4, #1
	adds r0, r0, #6
	adds r5, #0x10
	cmp r4, r0
	blt _02248306
_02248336:
	ldr r0, [sp, #0xc]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r7, #0xc4
	adds r0, r7, #0
	bl FUN_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov98_022482CC

	thumb_func_start ov98_02248350
ov98_02248350: @ 0x02248350
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0xa8
	ldr r1, [r1]
	cmp r1, #0
	beq _0224836E
	cmp r1, #1
	bne _02248366
	b _022484B8
_02248366:
	cmp r1, #2
	bne _0224836C
	b _02248566
_0224836C:
	b _02248614
_0224836E:
	ldr r0, [r5, #0x34]
	movs r1, #0x2c
	bl FUN_0200B1EC
	str r0, [sp, #0x14]
	bl FUN_02023C5C
	adds r1, r5, #0
	movs r2, #0
	adds r1, #0xac
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0xb0
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0xb8
	str r2, [r1]
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	movs r0, #5
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #0xc
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x94
	str r0, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [r5, #4]
	adds r1, #0xc4
	movs r2, #2
	movs r3, #1
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x7f
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	adds r1, r5, #0
	ldr r0, [r5, #4]
	adds r1, #0xd4
	movs r2, #2
	movs r3, #1
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0xc4
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	bl FUN_02023C3C
	movs r1, #0x6d
	bl FUN_02023790
	adds r7, r0, #0
	adds r0, r5, #0
	movs r6, #0
	str r0, [sp, #0x18]
	adds r0, #0xc4
	adds r4, r6, #0
	str r0, [sp, #0x18]
_02248400:
	ldr r1, [sp, #0x14]
	adds r0, r7, #0
	adds r2, r6, #0
	bl FUN_02023C9C
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r1, #0
	adds r2, r7, #0
	movs r3, #4
	bl FUN_0201D738
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #6
	blt _02248400
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #0xc4
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DC48
	adds r0, r5, #0
	adds r0, #0xc4
	bl FUN_0201A954
	adds r0, r5, #0
	adds r0, #0xd4
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0xd4
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DC48
	adds r0, r5, #0
	adds r0, #0xd4
	bl FUN_0201A954
	movs r0, #0x6d
	bl FUN_020149F0
	adds r1, r5, #0
	adds r1, #0xe4
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	adds r0, #0x48
	bl FUN_0201ACF4
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xbc
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc0
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	b _02248670
_022484B8:
	ldr r1, _0224867C @ =0x021BF67C
	adds r0, #0xac
	ldr r2, [r1, #0x4c]
	ldr r4, [r0]
	movs r0, #0x40
	tst r0, r2
	beq _022484E0
	cmp r4, #0
	beq _02248552
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xac
	str r1, [r0]
	ldr r0, _02248680 @ =0x000005DC
	bl FUN_02005748
	b _02248552
_022484E0:
	movs r0, #0x80
	tst r0, r2
	beq _02248534
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r1, r4, #6
	cmp r1, r0
	bge _02248506
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xac
	str r1, [r0]
	ldr r0, _02248680 @ =0x000005DC
	bl FUN_02005748
_02248506:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	adds r1, r0, #6
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r1, r0
	bne _02248552
	adds r0, r5, #0
	bl ov98_02247F08
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	ldr r0, _02248680 @ =0x000005DC
	bl FUN_02005748
	b _02248552
_02248534:
	ldr r1, [r1, #0x48]
	movs r0, #2
	tst r0, r1
	beq _02248552
	ldr r0, _02248680 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #2
	adds r0, #0xb8
	str r1, [r0]
	adds r0, r5, #0
	movs r1, #0xff
	adds r0, #0xa8
	str r1, [r0]
_02248552:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r4, r0
	bne _0224855E
	b _02248670
_0224855E:
	adds r0, r5, #0
	bl ov98_022482CC
	b _02248670
_02248566:
	ldr r1, _0224867C @ =0x021BF67C
	movs r2, #0x10
	ldr r1, [r1, #0x48]
	tst r2, r1
	bne _02248576
	movs r2, #0x20
	tst r2, r1
	beq _02248594
_02248576:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r1, [r0]
	movs r0, #1
	eors r1, r0
	adds r0, r5, #0
	adds r0, #0xb0
	str r1, [r0]
	ldr r0, _02248680 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	bl ov98_02247F08
	b _02248670
_02248594:
	movs r2, #1
	tst r2, r1
	beq _022485BE
	adds r0, #0xb0
	ldr r1, [r0]
	movs r0, #2
	subs r1, r0, r1
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	ldr r0, _02248680 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	b _02248670
_022485BE:
	movs r2, #2
	adds r3, r1, #0
	tst r3, r2
	beq _022485E0
	adds r0, #0xb8
	str r2, [r0]
	ldr r0, _02248680 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	b _02248670
_022485E0:
	movs r2, #0x40
	tst r1, r2
	beq _02248670
	bl ov98_02247FA4
	ldr r0, _02248680 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	subs r1, r0, #1
	adds r0, r5, #0
	adds r0, #0xac
	str r1, [r0]
	adds r0, r5, #0
	bl ov98_022482CC
	b _02248670
_02248614:
	adds r0, #0xc4
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r5, #0
	adds r0, #0xc4
	bl FUN_0201ACF4
	adds r0, r5, #0
	adds r0, #0xc4
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0xd4
	movs r1, #0
	bl FUN_0200DC9C
	adds r0, r5, #0
	adds r0, #0xd4
	bl FUN_0201ACF4
	adds r0, r5, #0
	adds r0, #0xd4
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	bl FUN_02014A20
	ldr r0, [r5, #4]
	movs r1, #3
	bl FUN_02019EBC
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xa8
	str r1, [r0]
	adds r5, #0xb8
	add sp, #0x1c
	ldr r0, [r5]
	pop {r4, r5, r6, r7, pc}
_02248670:
	adds r0, r5, #0
	bl ov98_02247FBC
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224867C: .4byte 0x021BF67C
_02248680: .4byte 0x000005DC
	thumb_func_end ov98_02248350

	thumb_func_start ov98_02248684
ov98_02248684: @ 0x02248684
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _0224869A
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0224869A:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #4
	bhi _02248768
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022486B0: @ jump table
	.2byte _022486BA - _022486B0 - 2 @ case 0
	.2byte _022486C2 - _022486B0 - 2 @ case 1
	.2byte _022486D0 - _022486B0 - 2 @ case 2
	.2byte _02248710 - _022486B0 - 2 @ case 3
	.2byte _02248748 - _022486B0 - 2 @ case 4
_022486BA:
	movs r0, #3
	adds r4, #0x94
	str r0, [r4]
	b _022487A2
_022486C2:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022487A2
_022486D0:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x6d
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _022487A2
	subs r1, r1, #1
	cmp r0, r1
	bne _022486F8
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022487A2
_022486F8:
	ldr r0, _022487A8 @ =0x00000F0F
	movs r2, #9
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	movs r0, #4
	adds r4, #0x94
	str r0, [r4]
	b _022487A2
_02248710:
	adds r0, r4, #0
	bl ov98_02248350
	cmp r0, #1
	bne _02248738
	ldr r0, _022487A8 @ =0x00000F0F
	movs r2, #9
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022487A2
_02248738:
	cmp r0, #2
	bne _022487A2
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0
	bl ov98_02247AE8
	b _022487A2
_02248748:
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov98_02247B24
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022487A2
_02248768:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x6d
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _022487A2
	subs r1, r1, #1
	cmp r0, r1
	bne _0224879E
	ldr r0, _022487A8 @ =0x00000F0F
	movs r2, #0xa
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0
	bl ov98_02247AE8
	b _022487A2
_0224879E:
	movs r0, #5
	str r0, [r4, #8]
_022487A2:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022487A8: .4byte 0x00000F0F
	thumb_func_end ov98_02248684

	thumb_func_start ov98_022487AC
ov98_022487AC: @ 0x022487AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #1
	movs r2, #0
	bl ov98_02246E88
	ldr r0, [r4]
	movs r1, #6
	bl ov98_02246E9C
	movs r0, #0x1d
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_022487AC

	thumb_func_start ov98_022487CC
ov98_022487CC: @ 0x022487CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov98_02246FB4
	cmp r0, #1
	beq _022487E4
	cmp r0, #2
	beq _022487EA
	cmp r0, #3
	beq _022487EA
	b _022487F2
_022487E4:
	movs r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
_022487EA:
	movs r0, #0x25
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
_022487F2:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	bne _02248800
	movs r0, #7
	str r0, [r4, #8]
_02248800:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov98_022487CC

	thumb_func_start ov98_02248804
ov98_02248804: @ 0x02248804
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _0224881A
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0224881A:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #4
	bhi _022488EC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248830: @ jump table
	.2byte _0224883A - _02248830 - 2 @ case 0
	.2byte _02248848 - _02248830 - 2 @ case 1
	.2byte _02248866 - _02248830 - 2 @ case 2
	.2byte _02248886 - _02248830 - 2 @ case 3
	.2byte _022488BA - _02248830 - 2 @ case 4
_0224883A:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022488EC
_02248848:
	ldr r0, _022488F4 @ =0x00000F0F
	movs r2, #0xb
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022488EC
_02248866:
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov98_02247B24
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022488EC
_02248886:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x6d
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _022488EC
	subs r1, r1, #1
	cmp r0, r1
	bne _022488AC
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0
	bl ov98_02247AE8
	b _022488EC
_022488AC:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022488EC
_022488BA:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_02039074
	cmp r0, #0
	bne _022488E2
	ldr r0, [r4]
	movs r1, #5
	movs r2, #0
	bl ov98_02246E88
	ldr r0, [r4]
	movs r1, #0xc
	bl ov98_02246E9C
	movs r0, #0x1d
	str r0, [r4, #8]
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_022488E2:
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0xc
	bl ov98_02247AE8
_022488EC:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022488F4: .4byte 0x00000F0F
	thumb_func_end ov98_02248804

	thumb_func_start ov98_022488F8
ov98_022488F8: @ 0x022488F8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x6d
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0224894A
	subs r1, r1, #1
	cmp r0, r1
	bne _0224892A
	bl FUN_0203859C
	ldr r0, [r4]
	movs r1, #6
	movs r2, #0
	bl ov98_02246E88
	movs r0, #0x1d
	str r0, [r4, #8]
	b _0224894A
_0224892A:
	ldr r0, _02248950 @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov98_02249714
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0xc
	bl ov98_02247AE8
	adds r0, r4, #0
	bl ov98_02247AF0
_0224894A:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248950: .4byte 0x00000F0F
	thumb_func_end ov98_022488F8

	thumb_func_start ov98_02248954
ov98_02248954: @ 0x02248954
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _02248978 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x30]
	movs r2, #0x1a
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0xa
	bl ov98_02247AE8
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248978: .4byte 0x00000F0F
	thumb_func_end ov98_02248954

	thumb_func_start ov98_0224897C
ov98_0224897C: @ 0x0224897C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0203859C
	blx FUN_021D7DB0
	bl FUN_02039794
	movs r0, #4
	bl FUN_02017B8C
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _022489AC
	bl FUN_0223B7AC
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_022489AC:
	movs r0, #0xb
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov98_0224897C

	thumb_func_start ov98_022489B4
ov98_022489B4: @ 0x022489B4
	push {r3, r4, lr}
	sub sp, #4
	ldr r1, _022489D8 @ =0x00000F0F
	adds r4, r0, #0
	str r1, [sp]
	ldr r1, [r4, #0x30]
	movs r2, #0x1b
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	movs r1, #0x23
	movs r2, #0x1d
	bl ov98_02247AE8
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022489D8: .4byte 0x00000F0F
	thumb_func_end ov98_022489B4

	thumb_func_start ov98_022489DC
ov98_022489DC: @ 0x022489DC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _022489F4
	cmp r0, #1
	beq _02248A24
	cmp r0, #2
	beq _02248A3C
	b _02248A5E
_022489F4:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_02038548
	bl FUN_02039734
	ldr r0, _02248A64 @ =0x00000F0F
	movs r2, #1
	str r0, [sp]
	ldr r1, [r4, #0x2c]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov98_02249714
	adds r0, r4, #0
	bl ov98_02247AF0
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248A5E
_02248A24:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _02248A5E
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248A5E
_02248A3C:
	movs r0, #4
	bl FUN_02017B7C
	ldr r0, [r4]
	movs r1, #2
	adds r0, #0x14
	movs r2, #1
	movs r3, #0x14
	blx FUN_021D78C8
	movs r0, #2
	blx FUN_021D792C
	blx FUN_021D797C
	movs r0, #0xd
	str r0, [r4, #8]
_02248A5E:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248A64: .4byte 0x00000F0F
	thumb_func_end ov98_022489DC

	thumb_func_start ov98_02248A68
ov98_02248A68: @ 0x02248A68
	push {r4, lr}
	sub sp, #0x48
	adds r4, r0, #0
	blx FUN_021D7AE4
	blx FUN_021D7A8C
	cmp r0, #0
	beq _02248B0E
	blx FUN_021D7BFC
	cmp r0, #8
	bhi _02248AEE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248A8E: @ jump table
	.2byte _02248AEE - _02248A8E - 2 @ case 0
	.2byte _02248AEE - _02248A8E - 2 @ case 1
	.2byte _02248AEE - _02248A8E - 2 @ case 2
	.2byte _02248AEE - _02248A8E - 2 @ case 3
	.2byte _02248B04 - _02248A8E - 2 @ case 4
	.2byte _02248AEE - _02248A8E - 2 @ case 5
	.2byte _02248AEE - _02248A8E - 2 @ case 6
	.2byte _02248AA0 - _02248A8E - 2 @ case 7
	.2byte _02248AEE - _02248A8E - 2 @ case 8
_02248AA0:
	add r0, sp, #8
	add r1, sp, #4
	blx FUN_021D75F4
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	str r0, [r4, #0x18]
	ldr r0, [sp, #4]
	str r0, [r4, #0x1c]
	blx FUN_021D76E8
	blx FUN_021D7DB0
	bl FUN_02039794
	bl FUN_0203859C
	movs r0, #4
	bl FUN_02017B8C
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02248AE2
	bl FUN_0223B7AC
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_02248AE2:
	adds r0, r4, #0
	bl ov98_02247B0C
	movs r0, #0x1b
	str r0, [r4, #8]
	b _02248B0E
_02248AEE:
	add r0, sp, #0
	blx FUN_021D75D4
	adds r0, r4, #0
	bl ov98_02247B0C
	movs r0, #0x20
	str r0, [r4, #8]
	subs r0, #0x22
	str r0, [r4, #0x10]
	b _02248B0E
_02248B04:
	add r0, sp, #0xc
	blx FUN_021D7EB8
	movs r0, #0xe
	str r0, [r4, #8]
_02248B0E:
	movs r0, #0
	add sp, #0x48
	pop {r4, pc}
	thumb_func_end ov98_02248A68

	thumb_func_start ov98_02248B14
ov98_02248B14: @ 0x02248B14
	push {r4, lr}
	adds r4, r0, #0
	blx FUN_021D81DC
	movs r0, #0xf
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov98_02248B14

	thumb_func_start ov98_02248B24
ov98_02248B24: @ 0x02248B24
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	blx FUN_021D82A0
	cmp r0, #5
	bhi _02248BEC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248B3E: @ jump table
	.2byte _02248B50 - _02248B3E - 2 @ case 0
	.2byte _02248BEC - _02248B3E - 2 @ case 1
	.2byte _02248BEC - _02248B3E - 2 @ case 2
	.2byte _02248B4A - _02248B3E - 2 @ case 3
	.2byte _02248B50 - _02248B3E - 2 @ case 4
	.2byte _02248B50 - _02248B3E - 2 @ case 5
_02248B4A:
	movs r0, #0x10
	str r0, [r4, #8]
	b _02248BEC
_02248B50:
	adds r0, r4, #0
	bl ov98_02247B0C
	add r0, sp, #4
	add r1, sp, #0
	blx FUN_021D75F4
	str r0, [r4, #0x14]
	ldr r0, [sp, #4]
	str r0, [r4, #0x18]
	blx FUN_021D76E8
	blx FUN_021D7DB0
	bl FUN_02039794
	bl FUN_0203859C
	movs r0, #4
	bl FUN_02017B8C
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _02248B94
	bl FUN_0223B7AC
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_02248B94:
	movs r0, #0x1b
	str r0, [r4, #8]
	ldr r1, [sp]
	cmp r1, #7
	bhi _02248BDA
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02248BAA: @ jump table
	.2byte _02248BDA - _02248BAA - 2 @ case 0
	.2byte _02248BBA - _02248BAA - 2 @ case 1
	.2byte _02248BBA - _02248BAA - 2 @ case 2
	.2byte _02248BCC - _02248BAA - 2 @ case 3
	.2byte _02248BBE - _02248BAA - 2 @ case 4
	.2byte _02248BD6 - _02248BAA - 2 @ case 5
	.2byte _02248BC8 - _02248BAA - 2 @ case 6
	.2byte _02248BD6 - _02248BAA - 2 @ case 7
_02248BBA:
	str r0, [r4, #8]
	b _02248BDA
_02248BBE:
	blx FUN_021E55B0
	movs r0, #0x1b
	str r0, [r4, #8]
	b _02248BDA
_02248BC8:
	str r0, [r4, #8]
	b _02248BDA
_02248BCC:
	blx FUN_021D8E8C
	movs r0, #0x1b
	str r0, [r4, #8]
	b _02248BDA
_02248BD6:
	bl FUN_02038A0C
_02248BDA:
	ldr r1, [sp, #4]
	ldr r0, _02248BF4 @ =0xFFFFB1E0
	cmp r1, r0
	bge _02248BEC
	ldr r0, _02248BF8 @ =0xFFFF8AD1
	cmp r1, r0
	blt _02248BEC
	movs r0, #0x1b
	str r0, [r4, #8]
_02248BEC:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_02248BF4: .4byte 0xFFFFB1E0
_02248BF8: .4byte 0xFFFF8AD1
	thumb_func_end ov98_02248B24

	thumb_func_start ov98_02248BFC
ov98_02248BFC: @ 0x02248BFC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_0202B370
	adds r6, r0, #0
	ldr r0, [r5]
	ldr r0, [r0, #4]
	bl FUN_02025CCC
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0202AD28
	adds r7, r0, #0
	adds r0, r4, #0
	bl FUN_02025D74
	cmp r0, #0
	bne _02248C34
	adds r0, r6, #0
	bl FUN_02039058
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02025D78
_02248C34:
	adds r0, r4, #0
	bl FUN_02025D74
	adds r4, r0, #0
	adds r0, r7, #0
	blx FUN_020A471C
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	adds r1, r3, #0
	bl FUN_0223B140
	movs r0, #0x46
	ldr r1, [r5]
	movs r2, #1
	lsls r0, r0, #2
	str r2, [r1, r0]
	movs r0, #0x11
	str r0, [r5, #8]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov98_02248BFC

	thumb_func_start ov98_02248C60
ov98_02248C60: @ 0x02248C60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov98_02246F5C
	ldr r0, [r4]
	bl ov98_02246F74
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x98
	adds r1, #0xfc
	bl FUN_0223BB84
	movs r0, #0x12
	str r0, [r4, #8]
	movs r0, #0
	adds r4, #0xe8
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov98_02248C60

	thumb_func_start ov98_02248C88
ov98_02248C88: @ 0x02248C88
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl FUN_0223B7B8
	cmp r0, #0
	bne _02248C96
	b _02248DBE
_02248C96:
	bl FUN_0223B7D8
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xe8
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xf
	cmp r0, #0x11
	bls _02248CAE
	b _02248DB2
_02248CAE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248CBA: @ jump table
	.2byte _02248D96 - _02248CBA - 2 @ case 0
	.2byte _02248DA4 - _02248CBA - 2 @ case 1
	.2byte _02248DB2 - _02248CBA - 2 @ case 2
	.2byte _02248D96 - _02248CBA - 2 @ case 3
	.2byte _02248DB2 - _02248CBA - 2 @ case 4
	.2byte _02248DB2 - _02248CBA - 2 @ case 5
	.2byte _02248DB2 - _02248CBA - 2 @ case 6
	.2byte _02248DB2 - _02248CBA - 2 @ case 7
	.2byte _02248DB2 - _02248CBA - 2 @ case 8
	.2byte _02248DB2 - _02248CBA - 2 @ case 9
	.2byte _02248DB2 - _02248CBA - 2 @ case 10
	.2byte _02248DB2 - _02248CBA - 2 @ case 11
	.2byte _02248DB2 - _02248CBA - 2 @ case 12
	.2byte _02248DA4 - _02248CBA - 2 @ case 13
	.2byte _02248D88 - _02248CBA - 2 @ case 14
	.2byte _02248CDE - _02248CBA - 2 @ case 15
	.2byte _02248D7A - _02248CBA - 2 @ case 16
	.2byte _02248D88 - _02248CBA - 2 @ case 17
_02248CDE:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	beq _02248CF4
	cmp r0, #1
	beq _02248D4E
	cmp r0, #2
	beq _02248D5E
	b _02248D6E
_02248CF4:
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #3
	bhi _02248D48
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248D0A: @ jump table
	.2byte _02248D28 - _02248D0A - 2 @ case 0
	.2byte _02248D12 - _02248D0A - 2 @ case 1
	.2byte _02248D18 - _02248D0A - 2 @ case 2
	.2byte _02248D38 - _02248D0A - 2 @ case 3
_02248D12:
	movs r0, #0x13
	str r0, [r4, #8]
	b _02248DDC
_02248D18:
	adds r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DE0 @ =0xFFFFEC77
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D28:
	adds r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DE4 @ =0xFFFFEC76
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D38:
	adds r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DE8 @ =0xFFFFEC75
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D48:
	bl FUN_02038A0C
	b _02248DDC
_02248D4E:
	adds r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DEC @ =0xFFFFEC74
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D5E:
	adds r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248DF0 @ =0xFFFFEC73
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D6E:
	adds r0, r4, #0
	bl ov98_02247B0C
	bl FUN_02038A0C
	b _02248DDC
_02248D7A:
	adds r0, r4, #0
	bl ov98_02247B0C
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D88:
	adds r0, r4, #0
	bl ov98_02247B0C
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248D96:
	adds r0, r4, #0
	bl ov98_02247B0C
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248DA4:
	adds r0, r4, #0
	bl ov98_02247B0C
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02248DDC
_02248DB2:
	adds r0, r4, #0
	bl ov98_02247B0C
	bl FUN_02038A0C
	b _02248DDC
_02248DBE:
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xe8
	str r1, [r0]
	adds r4, #0xe8
	movs r0, #0xe1
	ldr r1, [r4]
	lsls r0, r0, #4
	cmp r1, r0
	bne _02248DDC
	bl FUN_02038A0C
_02248DDC:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02248DE0: .4byte 0xFFFFEC77
_02248DE4: .4byte 0xFFFFEC76
_02248DE8: .4byte 0xFFFFEC75
_02248DEC: .4byte 0xFFFFEC74
_02248DF0: .4byte 0xFFFFEC73
	thumb_func_end ov98_02248C88

	thumb_func_start ov98_02248DF4
ov98_02248DF4: @ 0x02248DF4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02248E0A
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02248E0A:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bhi _02248EB4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248E20: @ jump table
	.2byte _02248E28 - _02248E20 - 2 @ case 0
	.2byte _02248E4C - _02248E20 - 2 @ case 1
	.2byte _02248E6C - _02248E20 - 2 @ case 2
	.2byte _02248E9A - _02248E20 - 2 @ case 3
_02248E28:
	adds r0, r4, #0
	bl ov98_02247B0C
	ldr r0, _02248EBC @ =0x00000F0F
	movs r2, #0xd
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248EB4
_02248E4C:
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov98_02247B24
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248EB4
_02248E6C:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x6d
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02248EB4
	subs r1, r1, #1
	cmp r0, r1
	bne _02248E8C
	movs r0, #0x15
	str r0, [r4, #8]
	b _02248EB4
_02248E8C:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248EB4
_02248E9A:
	ldr r0, _02248EBC @ =0x00000F0F
	movs r2, #0x11
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0x14
	bl ov98_02247AE8
_02248EB4:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02248EBC: .4byte 0x00000F0F
	thumb_func_end ov98_02248DF4

	thumb_func_start ov98_02248EC0
ov98_02248EC0: @ 0x02248EC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	movs r1, #2
	movs r2, #1
	bl ov98_02246E88
	ldr r0, [r4]
	movs r1, #0x16
	bl ov98_02246E9C
	movs r0, #0x1e
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_02248EC0

	thumb_func_start ov98_02248EE0
ov98_02248EE0: @ 0x02248EE0
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02248EF6
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02248EF6:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _02248F0A
	cmp r0, #1
	beq _02248F28
	cmp r0, #2
	beq _02248F48
	b _02248F72
_02248F0A:
	ldr r0, _02248F78 @ =0x00000F0F
	movs r2, #0xe
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248F72
_02248F28:
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov98_02247B24
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02248F72
_02248F48:
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x6d
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02248F72
	subs r1, r1, #1
	cmp r0, r1
	bne _02248F68
	movs r0, #0x13
	str r0, [r4, #8]
	b _02248F72
_02248F68:
	adds r0, r4, #0
	movs r1, #0x1a
	movs r2, #0
	bl ov98_02247AE8
_02248F72:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02248F78: .4byte 0x00000F0F
	thumb_func_end ov98_02248EE0

	thumb_func_start ov98_02248F7C
ov98_02248F7C: @ 0x02248F7C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl ov98_02246F9C
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _02248F96
	movs r0, #0x15
	str r0, [r4, #8]
	movs r0, #0
	pop {r3, r4, r5, pc}
_02248F96:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #3
	bls _02248FA2
	b _02249150
_02248FA2:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248FAE: @ jump table
	.2byte _02248FB6 - _02248FAE - 2 @ case 0
	.2byte _02248FEC - _02248FAE - 2 @ case 1
	.2byte _0224911E - _02248FAE - 2 @ case 2
	.2byte _0224913C - _02248FAE - 2 @ case 3
_02248FB6:
	ldr r0, _02249154 @ =0x00000F0F
	movs r2, #0x12
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #0
	bl ov98_02249714
	adds r0, r4, #0
	bl ov98_02247AF0
	ldr r0, [r4]
	bl ov98_02246F88
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x98
	adds r1, #0xfc
	bl FUN_0223BB84
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249150
_02248FEC:
	bl FUN_0223B7B8
	cmp r0, #0
	bne _02248FF6
	b _022490FE
_02248FF6:
	bl FUN_0223B7D8
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0xe8
	str r1, [r0]
	adds r0, r4, #0
	bl ov98_02247B0C
	adds r0, r5, #0
	adds r0, #0xf
	cmp r0, #0x11
	bhi _022490F8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224901E: @ jump table
	.2byte _022490E8 - _0224901E - 2 @ case 0
	.2byte _022490F0 - _0224901E - 2 @ case 1
	.2byte _022490F8 - _0224901E - 2 @ case 2
	.2byte _022490E8 - _0224901E - 2 @ case 3
	.2byte _022490F8 - _0224901E - 2 @ case 4
	.2byte _022490F8 - _0224901E - 2 @ case 5
	.2byte _022490F8 - _0224901E - 2 @ case 6
	.2byte _022490F8 - _0224901E - 2 @ case 7
	.2byte _022490F8 - _0224901E - 2 @ case 8
	.2byte _022490F8 - _0224901E - 2 @ case 9
	.2byte _022490F8 - _0224901E - 2 @ case 10
	.2byte _022490F8 - _0224901E - 2 @ case 11
	.2byte _022490F8 - _0224901E - 2 @ case 12
	.2byte _022490F0 - _0224901E - 2 @ case 13
	.2byte _022490E0 - _0224901E - 2 @ case 14
	.2byte _02249042 - _0224901E - 2 @ case 15
	.2byte _022490D8 - _0224901E - 2 @ case 16
	.2byte _022490E0 - _0224901E - 2 @ case 17
_02249042:
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0xfc
	ldr r0, [r0]
	cmp r0, #0
	beq _02249058
	cmp r0, #1
	beq _022490BA
	cmp r0, #2
	beq _022490C4
	b _022490CE
_02249058:
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r1, r0]
	cmp r0, #3
	bhi _022490B4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224906E: @ jump table
	.2byte _02249076 - _0224906E - 2 @ case 0
	.2byte _022490A0 - _0224906E - 2 @ case 1
	.2byte _022490AA - _0224906E - 2 @ case 2
	.2byte _02249084 - _0224906E - 2 @ case 3
_02249076:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249150
_02249084:
	ldr r0, _02249154 @ =0x00000F0F
	movs r2, #0x13
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0x15
	bl ov98_02247AE8
	b _02249150
_022490A0:
	ldr r0, _02249158 @ =0xFFFFEC72
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490AA:
	ldr r0, _0224915C @ =0xFFFFEC71
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490B4:
	bl FUN_02038A0C
	b _02249150
_022490BA:
	ldr r0, _02249160 @ =0xFFFFEC6E
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490C4:
	ldr r0, _02249164 @ =0xFFFFEC6D
	str r0, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490CE:
	bl FUN_02022974
	bl FUN_02038A0C
	b _02249150
_022490D8:
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490E0:
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490E8:
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490F0:
	str r5, [r4, #0x10]
	movs r0, #0x20
	str r0, [r4, #8]
	b _02249150
_022490F8:
	bl FUN_02038A0C
	b _02249150
_022490FE:
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0xe8
	str r1, [r0]
	adds r4, #0xe8
	movs r0, #0xe1
	ldr r1, [r4]
	lsls r0, r0, #4
	cmp r1, r0
	bne _02249150
	bl FUN_02038A0C
	b _02249150
_0224911E:
	ldr r0, _02249154 @ =0x00000F0F
	movs r2, #0x14
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249150
_0224913C:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _02249150
	adds r0, r4, #0
	movs r1, #0x1a
	movs r2, #0x17
	bl ov98_02247AE8
_02249150:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02249154: .4byte 0x00000F0F
_02249158: .4byte 0xFFFFEC72
_0224915C: .4byte 0xFFFFEC71
_02249160: .4byte 0xFFFFEC6E
_02249164: .4byte 0xFFFFEC6D
	thumb_func_end ov98_02248F7C

	thumb_func_start ov98_02249168
ov98_02249168: @ 0x02249168
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _0224917E
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0224917E:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _0224918E
	cmp r0, #1
	beq _022491AC
	b _022491C2
_0224918E:
	ldr r0, _022491C8 @ =0x00000F0F
	movs r2, #0x15
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022491C2
_022491AC:
	ldr r0, [r4]
	movs r1, #3
	movs r2, #2
	bl ov98_02246E88
	ldr r0, [r4]
	movs r1, #0x18
	bl ov98_02246E9C
	movs r0, #0x1e
	str r0, [r4, #8]
_022491C2:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022491C8: .4byte 0x00000F0F
	thumb_func_end ov98_02249168

	thumb_func_start ov98_022491CC
ov98_022491CC: @ 0x022491CC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _022491E2
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_022491E2:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _022491F2
	cmp r0, #1
	beq _02249210
	b _0224922C
_022491F2:
	ldr r0, _02249234 @ =0x00000F0F
	movs r2, #0x18
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224922C
_02249210:
	ldr r0, [r4]
	bl ov98_02246EF8
	ldr r0, [r4]
	bl ov98_02246F24
	ldr r0, [r4]
	bl ov98_02246F48
	adds r0, r4, #0
	movs r1, #0x19
	movs r2, #0
	bl ov98_02247AE8
_0224922C:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02249234: .4byte 0x00000F0F
	thumb_func_end ov98_022491CC

	thumb_func_start ov98_02249238
ov98_02249238: @ 0x02249238
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x94
	ldr r1, [r1]
	cmp r1, #3
	bhi _02249312
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02249254: @ jump table
	.2byte _0224925C - _02249254 - 2 @ case 0
	.2byte _0224927E - _02249254 - 2 @ case 1
	.2byte _022492D8 - _02249254 - 2 @ case 2
	.2byte _022492F0 - _02249254 - 2 @ case 3
_0224925C:
	ldr r1, _02249318 @ =0x00000F0F
	movs r2, #0x20
	str r1, [sp]
	ldr r1, [r4, #0x34]
	movs r3, #0
	bl ov98_02249714
	adds r0, r4, #0
	bl ov98_02247AF0
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249312
_0224927E:
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_020246E0
	cmp r0, #2
	bne _022492B4
	ldr r0, [r4]
	ldr r0, [r0, #4]
	bl FUN_02025E38
	adds r2, r0, #0
	ldr r0, [r4, #0x20]
	movs r1, #0
	bl FUN_0200B498
	ldr r0, _02249318 @ =0x00000F0F
	movs r2, #0x21
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #0
	bl ov98_02249714
	ldr r0, _0224931C @ =0x0000061B
	bl FUN_02005748
	b _022492C4
_022492B4:
	ldr r0, _02249318 @ =0x00000F0F
	movs r2, #0x22
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #0
	bl ov98_02249714
_022492C4:
	adds r0, r4, #0
	bl ov98_02247B0C
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249312
_022492D8:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _02249312
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _02249312
_022492F0:
	adds r0, #0x98
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x98
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	cmp r0, #0x3c
	ble _02249312
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x98
	str r1, [r0]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_02249312:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02249318: .4byte 0x00000F0F
_0224931C: .4byte 0x0000061B
	thumb_func_end ov98_02249238

	thumb_func_start ov98_02249320
ov98_02249320: @ 0x02249320
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _02249336
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_02249336:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #4
	bhi _0224940A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224934C: @ jump table
	.2byte _02249356 - _0224934C - 2 @ case 0
	.2byte _02249374 - _0224934C - 2 @ case 1
	.2byte _022493AE - _0224934C - 2 @ case 2
	.2byte _022493D6 - _0224934C - 2 @ case 3
	.2byte _022493EE - _0224934C - 2 @ case 4
_02249356:
	ldr r0, _02249410 @ =0x00000F0F
	movs r2, #0xf
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224940A
_02249374:
	blx FUN_021D7DB0
	bl FUN_02039794
	bl FUN_0203859C
	movs r0, #4
	bl FUN_02017B8C
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _022493A0
	bl FUN_0223B7AC
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_022493A0:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224940A
_022493AE:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _0224940A
	ldr r0, _02249410 @ =0x00000F0F
	movs r2, #0x10
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224940A
_022493D6:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _0224940A
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224940A
_022493EE:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x90
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _0224940A
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_0224940A:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02249410: .4byte 0x00000F0F
	thumb_func_end ov98_02249320

	thumb_func_start ov98_02249414
ov98_02249414: @ 0x02249414
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	rsbs r0, r0, #0
	bl FUN_021D1F3C
	ldr r2, [r4, #0x18]
	adds r1, r0, #0
	adds r0, r4, #0
	rsbs r2, r2, #0
	bl ov98_02249964
	movs r0, #0x1c
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_02249414

	thumb_func_start ov98_02249438
ov98_02249438: @ 0x02249438
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02249460 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _0224944C
	movs r0, #2
	tst r0, r1
	beq _0224945A
_0224944C:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl FUN_0200DC9C
	movs r0, #0
	str r0, [r4, #8]
_0224945A:
	movs r0, #0
	pop {r4, pc}
	nop
_02249460: .4byte 0x021BF67C
	thumb_func_end ov98_02249438

	thumb_func_start ov98_02249464
ov98_02249464: @ 0x02249464
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0x1e
	beq _02249474
	bl FUN_0203859C
_02249474:
	bl FUN_02039794
	adds r0, r4, #0
	bl ov98_02247B0C
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x6d
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov98_02249464

	thumb_func_start ov98_022494A0
ov98_022494A0: @ 0x022494A0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov98_02247B24
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_022494A0

	thumb_func_start ov98_022494C0
ov98_022494C0: @ 0x022494C0
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #0
	ldr r0, [r4, #0x10]
	subs r2, r1, #5
	cmp r0, r2
	bgt _0224951E
	bge _02249552
	adds r2, r1, #0
	subs r2, #0xf
	cmp r0, r2
	bgt _0224950C
	adds r2, r1, #0
	subs r2, #0xf
	cmp r0, r2
	bge _02249552
	ldr r2, _022495BC @ =0x00001393
	adds r2, r0, r2
	cmp r2, #0xa
	bhi _02249552
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022494F6: @ jump table
	.2byte _02249586 - _022494F6 - 2 @ case 0
	.2byte _02249580 - _022494F6 - 2 @ case 1
	.2byte _02249552 - _022494F6 - 2 @ case 2
	.2byte _02249552 - _022494F6 - 2 @ case 3
	.2byte _0224957A - _022494F6 - 2 @ case 4
	.2byte _02249574 - _022494F6 - 2 @ case 5
	.2byte _0224956E - _022494F6 - 2 @ case 6
	.2byte _02249568 - _022494F6 - 2 @ case 7
	.2byte _02249562 - _022494F6 - 2 @ case 8
	.2byte _0224955C - _022494F6 - 2 @ case 9
	.2byte _02249556 - _022494F6 - 2 @ case 10
_0224950C:
	movs r2, #0xd
	mvns r2, r2
	cmp r0, r2
	bgt _02249518
	beq _0224954E
	b _02249552
_02249518:
	adds r2, r2, #2
	cmp r0, r2
	b _02249552
_0224951E:
	subs r2, r1, #1
	cmp r0, r2
	bgt _02249538
	bge _0224954A
	subs r2, r1, #3
	cmp r0, r2
	bgt _02249530
	cmp r0, r2
	b _02249552
_02249530:
	subs r2, r1, #2
	cmp r0, r2
	beq _0224954E
	b _02249552
_02249538:
	cmp r0, #1
	bgt _02249540
	beq _02249546
	b _02249552
_02249540:
	cmp r0, #2
	beq _0224954A
	b _02249552
_02249546:
	movs r2, #0x36
	b _0224958A
_0224954A:
	movs r2, #0x37
	b _0224958A
_0224954E:
	movs r2, #0x39
	b _0224958A
_02249552:
	movs r2, #0x38
	b _0224958A
_02249556:
	movs r2, #0xad
	adds r1, r1, #1
	b _0224958A
_0224955C:
	movs r2, #0xae
	adds r1, r1, #1
	b _0224958A
_02249562:
	movs r2, #0xae
	adds r1, r1, #1
	b _0224958A
_02249568:
	movs r2, #0xaf
	adds r1, r1, #1
	b _0224958A
_0224956E:
	movs r2, #0xb0
	adds r1, r1, #1
	b _0224958A
_02249574:
	movs r2, #0xae
	adds r1, r1, #1
	b _0224958A
_0224957A:
	movs r2, #0xae
	adds r1, r1, #1
	b _0224958A
_02249580:
	movs r2, #0xaf
	adds r1, r1, #1
	b _0224958A
_02249586:
	movs r2, #0xb0
	adds r1, r1, #1
_0224958A:
	cmp r1, #0
	ldr r0, _022495C0 @ =0x00000F0F
	bne _0224959E
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
	b _022495AA
_0224959E:
	str r0, [sp]
	ldr r1, [r4, #0x24]
	adds r0, r4, #0
	movs r3, #1
	bl ov98_02249714
_022495AA:
	adds r0, r4, #0
	movs r1, #0x22
	movs r2, #0x21
	bl ov98_02247AE8
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_022495BC: .4byte 0x00001393
_022495C0: .4byte 0x00000F0F
	thumb_func_end ov98_022494C0

	thumb_func_start ov98_022495C4
ov98_022495C4: @ 0x022495C4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x94
	ldr r1, [r1]
	cmp r1, #3
	bhi _0224967C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022495E0: @ jump table
	.2byte _022495E8 - _022495E0 - 2 @ case 0
	.2byte _02249604 - _022495E0 - 2 @ case 1
	.2byte _02249648 - _022495E0 - 2 @ case 2
	.2byte _02249664 - _022495E0 - 2 @ case 3
_022495E8:
	ldr r1, _022496A4 @ =0x00000F0F
	movs r2, #0xf
	str r1, [sp]
	ldr r1, [r4, #0x34]
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224969E
_02249604:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _0224969E
	bl FUN_0203859C
	blx FUN_021D7DB0
	bl FUN_02039794
	movs r0, #4
	bl FUN_02017B8C
	movs r0, #0x46
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #1
	bne _0224963A
	bl FUN_0223B7AC
	movs r0, #0x46
	ldr r1, [r4]
	movs r2, #0
	lsls r0, r0, #2
	str r2, [r1, r0]
_0224963A:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224969E
_02249648:
	ldr r1, _022496A4 @ =0x00000F0F
	movs r2, #0x10
	str r1, [sp]
	ldr r1, [r4, #0x34]
	movs r3, #1
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224969E
_02249664:
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _0224969E
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _0224969E
_0224967C:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x90
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _0224969E
	ldr r0, [r4]
	bl ov98_02246E94
	movs r0, #0x1d
	str r0, [r4, #8]
_0224969E:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022496A4: .4byte 0x00000F0F
	thumb_func_end ov98_022495C4

	thumb_func_start ov98_022496A8
ov98_022496A8: @ 0x022496A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _022496BA
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022496BA:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_022496A8

	thumb_func_start ov98_022496C0
ov98_022496C0: @ 0x022496C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _022496E8
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0x1e
	ble _022496DC
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_022496DC:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	adds r4, #0x90
	adds r0, r0, #1
	str r0, [r4]
_022496E8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov98_022496C0

	thumb_func_start ov98_022496EC
ov98_022496EC: @ 0x022496EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #0
	bne _02249710
	movs r2, #0x8d
	ldr r0, [r4, #4]
	movs r1, #0xd
	lsls r2, r2, #2
	bl ov98_02247B24
	adds r1, r4, #0
	adds r1, #0x88
	str r0, [r1]
	ldr r0, [r4, #0xc]
	str r0, [r4, #8]
_02249710:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov98_022496EC

	thumb_func_start ov98_02249714
ov98_02249714: @ 0x02249714
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x38]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200E060
	movs r3, #0
	str r3, [sp]
	str r4, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x38]
	adds r0, #0x48
	movs r1, #1
	bl FUN_0201D738
	str r0, [r5, #0x44]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x90
	str r1, [r0]
	cmp r4, #0xff
	beq _02249774
	cmp r4, #0
	bne _02249778
_02249774:
	movs r0, #0xff
	str r0, [r5, #0x44]
_02249778:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov98_02249714

	thumb_func_start ov98_0224977C
ov98_0224977C: @ 0x0224977C
	push {r3, lr}
	cmp r0, #0xff
	beq _0224978E
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _02249792
_0224978E:
	movs r0, #0
	pop {r3, pc}
_02249792:
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov98_0224977C

	thumb_func_start ov98_02249798
ov98_02249798: @ 0x02249798
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	bl ov98_0224977C
	cmp r0, #1
	bne _022497AE
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_022497AE:
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _022497BE
	cmp r0, #1
	beq _022497EA
	b _022497EE
_022497BE:
	ldr r0, [r4]
	bl ov98_02246FB4
	cmp r0, #2
	bne _022497CC
	movs r2, #0x26
	b _022497CE
_022497CC:
	movs r2, #0x27
_022497CE:
	ldr r0, _022497F4 @ =0x00000F0F
	movs r3, #1
	str r0, [sp]
	ldr r1, [r4, #0x34]
	adds r0, r4, #0
	bl ov98_02249714
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r4, #0x94
	adds r0, r0, #1
	str r0, [r4]
	b _022497EE
_022497EA:
	movs r0, #5
	str r0, [r4, #8]
_022497EE:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_022497F4: .4byte 0x00000F0F
	thumb_func_end ov98_02249798

	thumb_func_start ov98_022497F8
ov98_022497F8: @ 0x022497F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	ldr r4, [r6]
	bl ov98_0224977C
	cmp r0, #1
	bne _02249810
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02249810:
	adds r0, r6, #0
	adds r0, #0x94
	ldr r0, [r0]
	cmp r0, #0
	beq _02249820
	cmp r0, #1
	beq _02249884
	b _02249888
_02249820:
	adds r0, r4, #0
	bl ov98_02246FA4
	adds r5, r0, #0
	ldr r0, [r4, #4]
	movs r1, #3
	bl FUN_02030D98
	cmp r5, r0
	bne _02249866
	ldr r0, [r4, #4]
	bl FUN_02030D50
	add r1, sp, #8
	movs r2, #0x6c
	bl ov98_02249ACC
	movs r4, #0
	add r5, sp, #8
	movs r7, #2
_02249848:
	str r7, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r6, #0x20]
	ldr r2, [r5]
	adds r1, r4, #0
	movs r3, #4
	bl FUN_0200B60C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blo _02249848
	movs r2, #0x29
	b _02249868
_02249866:
	movs r2, #0x28
_02249868:
	ldr r0, _02249890 @ =0x00000F0F
	movs r3, #1
	str r0, [sp]
	ldr r1, [r6, #0x34]
	adds r0, r6, #0
	bl ov98_02249714
	adds r0, r6, #0
	adds r0, #0x94
	ldr r0, [r0]
	adds r6, #0x94
	adds r0, r0, #1
	str r0, [r6]
	b _02249888
_02249884:
	movs r0, #0
	str r0, [r6, #8]
_02249888:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249890: .4byte 0x00000F0F
	thumb_func_end ov98_022497F8

	thumb_func_start ov98_02249894
ov98_02249894: @ 0x02249894
	push {r4, lr}
	adds r4, r0, #0
	cmp r3, #1
	beq _022498A2
	cmp r3, #2
	beq _022498B8
	b _022498C6
_022498A2:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r1, r1, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r2, r0, #1
	b _022498C6
_022498B8:
	ldr r0, [sp, #0xc]
	movs r2, #0
	bl FUN_02002D7C
	ldrb r1, [r4, #7]
	lsls r1, r1, #3
	subs r2, r1, r0
_022498C6:
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov98_02249894

	thumb_func_start ov98_022498CC
ov98_022498CC: @ 0x022498CC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r3, #0
	ldr r3, [sp, #0x24]
	adds r5, r0, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r6, r1, #0
	bl ov98_02249894
	adds r3, r0, #0
	str r4, [sp]
	movs r1, #0
	ldr r0, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov98_022498CC

	thumb_func_start ov98_02249900
ov98_02249900: @ 0x02249900
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	adds r6, r1, #0
	lsls r0, r0, #8
	movs r1, #0x6d
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r5, #0x30]
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x20]
	ldr r1, [r5, #0x40]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x68
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DC48
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	adds r0, r5, #0
	ldr r2, [r5, #0x40]
	adds r0, #0x68
	movs r1, #1
	bl FUN_0201D738
	movs r0, #0xff
	str r0, [r5, #0x44]
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov98_02249900

	thumb_func_start ov98_02249964
ov98_02249964: @ 0x02249964
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	adds r4, r1, #0
	mvns r0, r0
	cmp r4, r0
	bne _02249976
	movs r4, #0xb
_02249976:
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	movs r1, #0
	movs r3, #5
	bl FUN_0200B60C
	adds r0, r5, #0
	adds r0, #0x48
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov98_02249900
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov98_02249964

	thumb_func_start ov98_022499A0
ov98_022499A0: @ 0x022499A0
	push {r3, lr}
	cmp r2, #0
	bne _022499AC
	ldr r0, _022499B0 @ =0x000005DC
	bl FUN_02005748
_022499AC:
	pop {r3, pc}
	nop
_022499B0: .4byte 0x000005DC
	thumb_func_end ov98_022499A0

	thumb_func_start ov98_022499B4
ov98_022499B4: @ 0x022499B4
	push {r3, lr}
	cmp r2, #0
	bne _022499C0
	ldr r0, _022499C4 @ =0x000005DC
	bl FUN_02005748
_022499C0:
	pop {r3, pc}
	nop
_022499C4: .4byte 0x000005DC
	thumb_func_end ov98_022499B4

	thumb_func_start ov98_022499C8
ov98_022499C8: @ 0x022499C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r2, #0
	movs r4, #0
	adds r5, r1, #0
	ldr r2, _02249A70 @ =0x02249D1C
	str r0, [sp]
	adds r1, r4, #0
	adds r0, r2, #0
	adds r3, r4, #0
_022499DC:
	adds r6, r1, #0
	ldrsb r6, [r0, r6]
	adds r2, r2, #1
	adds r1, r1, #1
	strb r6, [r5, r4]
	ldrsb r6, [r2, r3]
	adds r4, r4, #1
	cmp r6, #0
	bne _022499DC
	adds r0, r7, #0
	movs r1, #0xc8
	bl FUN_02018144
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	movs r2, #0x64
	bl FUN_02023DF0
	ldr r7, [sp, #4]
	movs r6, #0
_02249A06:
	ldrh r1, [r7]
	ldr r0, _02249A74 @ =0x0000FFFF
	cmp r1, r0
	bne _02249A14
	movs r2, #0
	strb r2, [r5, r4]
	b _02249A4A
_02249A14:
	ldr r2, [sp, #4]
	lsls r3, r6, #1
	ldrh r3, [r2, r3]
	ldr r1, _02249A78 @ =0x02249D2C
	movs r0, #0
_02249A1E:
	ldrh r2, [r1]
	cmp r2, r3
	bne _02249A32
	ldr r1, _02249A78 @ =0x02249D2C
	lsls r2, r0, #2
	adds r2, r1, r2
	movs r1, #2
	ldrsb r1, [r2, r1]
	strb r1, [r5, r4]
	b _02249A3A
_02249A32:
	adds r0, r0, #1
	adds r1, r1, #4
	cmp r0, #0xa
	blo _02249A1E
_02249A3A:
	cmp r0, #0xa
	blo _02249A42
	bl FUN_02022974
_02249A42:
	adds r4, r4, #1
	adds r7, r7, #2
	adds r6, r6, #1
	b _02249A06
_02249A4A:
	ldr r1, _02249A7C @ =0x02249D20
	adds r3, r2, #0
	adds r0, r1, #0
_02249A50:
	adds r6, r2, #0
	ldrsb r6, [r0, r6]
	adds r1, r1, #1
	adds r2, r2, #1
	strb r6, [r5, r4]
	ldrsb r6, [r1, r3]
	adds r4, r4, #1
	cmp r6, #0
	bne _02249A50
	movs r0, #0
	strb r0, [r5, r4]
	ldr r0, [sp, #4]
	bl FUN_020181C4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02249A70: .4byte 0x02249D1C
_02249A74: .4byte 0x0000FFFF
_02249A78: .4byte 0x02249D2C
_02249A7C: .4byte 0x02249D20
	thumb_func_end ov98_022499C8

	thumb_func_start ov98_02249A80
ov98_02249A80: @ 0x02249A80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	movs r1, #0xc8
	movs r5, #1
	bl FUN_02018144
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x64
	bl FUN_02023DF0
	ldrh r1, [r4]
	ldr r0, _02249AC4 @ =0x0000FFFF
	cmp r1, r0
	beq _02249AB8
	ldr r1, _02249AC8 @ =0x00000121
	adds r3, r4, #0
_02249AA6:
	ldrh r2, [r3]
	cmp r2, r1
	beq _02249AB0
	movs r5, #0
	b _02249AB8
_02249AB0:
	adds r3, r3, #2
	ldrh r2, [r3]
	cmp r2, r0
	bne _02249AA6
_02249AB8:
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	nop
_02249AC4: .4byte 0x0000FFFF
_02249AC8: .4byte 0x00000121
	thumb_func_end ov98_02249A80

	thumb_func_start ov98_02249ACC
ov98_02249ACC: @ 0x02249ACC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	adds r5, r0, #0
	adds r7, r1, #0
	str r4, [sp, #4]
_02249AD8:
	movs r0, #0
	str r0, [r7]
	str r0, [sp]
	b _02249B14
_02249AE0:
	cmp r0, #0
	bne _02249AEC
	bne _02249AFA
	bl FUN_02022974
	b _02249AFA
_02249AEC:
	adds r4, r4, #1
_02249AEE:
	ldrsb r0, [r5, r4]
	adds r6, r5, r4
	cmp r0, #0x30
	blt _02249AE0
	cmp r0, #0x39
	bgt _02249AE0
_02249AFA:
	ldr r1, [r7]
	movs r0, #0xa
	muls r0, r1, r0
	str r0, [r7]
	movs r1, #0
	ldrsb r1, [r6, r1]
	adds r4, r4, #1
	subs r1, #0x30
	adds r0, r0, r1
	str r0, [r7]
	ldr r0, [sp]
	adds r0, r0, #1
	str r0, [sp]
_02249B14:
	ldr r0, [sp]
	cmp r0, #4
	blt _02249AEE
	ldr r0, [sp, #4]
	adds r7, r7, #4
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02249AD8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov98_02249ACC
	@ 0x02249B2C
