
	thumb_func_start ov40_022561C0
ov40_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov40_022561D4
	ldr r1, _022561D0 @ =ov40_022562A4
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov40_022561D4
_022561D0: .4byte ov40_022562A4
	thumb_func_end ov40_022561C0

	thumb_func_start ov40_022561D4
ov40_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x34
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov40_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov40_02256270
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0200D9E8
	cmp r0, #0
	beq _0225620C
	str r4, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225620C:
	adds r0, r4, #0
	bl FUN_020181C4
_02256212:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256218: .4byte ov40_02256270
	thumb_func_end ov40_022561D4

	thumb_func_start ov40_0225621C
ov40_0225621C: @ 0x0225621C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	bl FUN_02254544
	bl FUN_02026310
	str r0, [r5, #0x30]
	ldr r1, [r5, #0x30]
	adds r0, r5, #4
	bl ov40_022563D0
	adds r0, r5, #0
	adds r0, #0x28
	adds r1, r5, #4
	adds r2, r6, #0
	bl ov40_0225645C
	cmp r0, #0
	beq _02256256
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r4, [r5, #0x2c]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02256256:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov40_0225621C

	thumb_func_start ov40_0225625C
ov40_0225625C: @ 0x0225625C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov40_022564B8
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov40_0225625C

	thumb_func_start ov40_02256270
ov40_02256270: @ 0x02256270
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhs _0225629C
	lsls r2, r1, #2
	ldr r1, _022562A0 @ =0x02256A38
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225629C
	adds r0, r4, #0
	bl ov40_0225625C
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x2c]
	bl FUN_02254260
_0225629C:
	pop {r3, r4, r5, pc}
	nop
_022562A0: .4byte 0x02256A38
	thumb_func_end ov40_02256270

	thumb_func_start ov40_022562A4
ov40_022562A4: @ 0x022562A4
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov40_022562A4

	thumb_func_start ov40_022562AC
ov40_022562AC: @ 0x022562AC
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562B4
	b _022562B6
_022562B4:
	movs r1, #2
_022562B6:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov40_022562AC

	thumb_func_start ov40_022562C0
ov40_022562C0: @ 0x022562C0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562D0
	cmp r0, #1
	beq _022562E0
	b _022562FA
_022562D0:
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl ov40_022565C8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022562FA
_022562E0:
	ldr r0, [r4, #0x28]
	movs r1, #0
	bl ov40_022565EC
	cmp r0, #0
	beq _022562FA
	ldr r0, [r4, #0x2c]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov40_022562AC
_022562FA:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov40_022562C0

	thumb_func_start ov40_02256300
ov40_02256300: @ 0x02256300
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256314
	movs r1, #2
	bl ov40_022562AC
	movs r0, #0
	pop {r4, pc}
_02256314:
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02256320
	cmp r1, #1
	beq _02256340
	b _02256350
_02256320:
	bl ov40_02256388
	cmp r0, #0
	beq _02256350
	ldr r1, [r4, #0x30]
	adds r0, r4, #4
	bl ov40_022563D0
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl ov40_022565C8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256350
_02256340:
	ldr r0, [r4, #0x28]
	movs r1, #2
	bl ov40_022565EC
	cmp r0, #0
	beq _02256350
	movs r0, #0
	strb r0, [r4, #1]
_02256350:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov40_02256300

	thumb_func_start ov40_02256354
ov40_02256354: @ 0x02256354
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256364
	cmp r0, #1
	beq _02256374
	b _02256382
_02256364:
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl ov40_022565C8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256382
_02256374:
	ldr r0, [r4, #0x28]
	bl ov40_022565F8
	cmp r0, #0
	beq _02256382
	movs r0, #1
	pop {r4, pc}
_02256382:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov40_02256354

	thumb_func_start ov40_02256388
ov40_02256388: @ 0x02256388
	push {r3, lr}
	sub sp, #8
	ldr r0, [r0, #0x2c]
	bl FUN_0225450C
	cmp r0, #0
	bne _022563C8
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_020227C0
	cmp r0, #0
	beq _022563C8
	ldr r0, [sp, #4]
	subs r0, #0x10
	cmp r0, #0xbf
	bhs _022563AE
	movs r1, #1
	b _022563B0
_022563AE:
	movs r1, #0
_022563B0:
	ldr r0, [sp]
	subs r0, #0x10
	cmp r0, #0x9f
	bhs _022563BC
	movs r0, #1
	b _022563BE
_022563BC:
	movs r0, #0
_022563BE:
	tst r0, r1
	beq _022563C8
	add sp, #8
	movs r0, #1
	pop {r3, pc}
_022563C8:
	movs r0, #0
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov40_02256388

	thumb_func_start ov40_022563D0
ov40_022563D0: @ 0x022563D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	adds r0, r1, #0
	str r1, [sp, #4]
	bl FUN_021E6238
	ldr r1, [sp]
	strb r0, [r1]
	ldr r0, [sp, #4]
	bl FUN_02026234
	ldr r1, [sp]
	movs r7, #0
	strb r0, [r1, #1]
	adds r0, r1, #0
	ldrb r0, [r0]
	cmp r0, #0
	ble _02256456
	adds r5, r1, #0
	adds r6, r1, #0
_022563FA:
	ldr r0, [sp, #4]
	adds r1, r7, #0
	bl FUN_02026218
	str r0, [sp, #8]
	bl FUN_02026220
	adds r4, r0, #0
	bl FUN_02073D20
	str r0, [sp, #0xc]
	adds r0, r4, #0
	bl FUN_02079D40
	str r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074570
	strh r0, [r6, #0x1c]
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074570
	strh r0, [r6, #0x20]
	ldr r0, [sp, #8]
	bl FUN_021E6590
	str r0, [r5, #0xc]
	adds r0, r4, #0
	bl FUN_02075D74
	str r0, [r5, #0x14]
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl FUN_02073D48
	ldr r0, [sp]
	adds r7, r7, #1
	ldrb r0, [r0]
	adds r5, r5, #4
	adds r6, r6, #2
	cmp r7, r0
	blt _022563FA
_02256456:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov40_022563D0

	thumb_func_start ov40_0225645C
ov40_0225645C: @ 0x0225645C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #8
	movs r1, #0x90
	bl FUN_02018144
	adds r4, r0, #0
	beq _022564AE
	adds r0, #8
	movs r1, #4
	bl FUN_02255090
	str r5, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0x88
	str r2, [r0]
	ldr r0, _022564B4 @ =ov40_022567E0
	adds r1, r4, #0
	bl FUN_0200DA3C
	adds r1, r4, #0
	adds r1, #0x8c
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov40_022564D4
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022564AE
	str r4, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
_022564AE:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_022564B4: .4byte ov40_022567E0
	thumb_func_end ov40_0225645C

	thumb_func_start ov40_022564B8
ov40_022564B8: @ 0x022564B8
	push {r4, lr}
	adds r4, r0, #0
	beq _022564D2
	bl ov40_02256598
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
_022564D2:
	pop {r4, pc}
	thumb_func_end ov40_022564B8

	thumb_func_start ov40_022564D4
ov40_022564D4: @ 0x022564D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp, #0xc]
	movs r0, #1
	str r1, [sp, #0x10]
	bl FUN_02255360
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x54
	bl FUN_02006EC0
	movs r1, #0x14
	blx FUN_020E2178
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r0, [r1, #0x78]
	ldr r1, [sp, #0x10]
	bl ov40_02256808
	movs r0, #8
	str r0, [sp]
	ldr r0, [sp, #0xc]
	movs r1, #0xc
	adds r0, #0x50
	movs r2, #0x52
	movs r3, #0x53
	bl FUN_02255958
	movs r0, #8
	str r0, [sp]
	ldr r0, [sp, #0xc]
	movs r1, #0xc
	adds r0, #0x64
	movs r2, #5
	movs r3, #6
	bl FUN_02255958
	ldr r5, [sp, #0xc]
	movs r4, #0
	adds r0, r5, #0
	str r0, [sp, #0x1c]
	adds r0, #0x50
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	str r0, [sp, #0x18]
	adds r0, #0x64
	ldr r6, _02256594 @ =0x02256A90
	adds r7, r4, #0
	str r0, [sp, #0x18]
_02256544:
	cmp r4, #0
	blt _02256564
	cmp r4, #2
	bgt _02256564
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x18]
	ldr r0, [r0, #0x20]
	adds r1, r6, #0
	bl FUN_02255810
	ldr r1, [sp, #0x14]
	str r0, [r5, #0x24]
	adds r1, r1, r7
	bl FUN_02255940
	b _02256572
_02256564:
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x1c]
	ldr r0, [r0, #0x20]
	adds r1, r6, #0
	bl FUN_02255810
	str r0, [r5, #0x24]
_02256572:
	ldr r0, [r5, #0x24]
	movs r1, #1
	bl FUN_02255948
	adds r4, r4, #1
	adds r6, #0x10
	adds r5, r5, #4
	adds r7, #0x20
	cmp r4, #0xb
	blt _02256544
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl ov40_02256848
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256594: .4byte 0x02256A90
	thumb_func_end ov40_022564D4

	thumb_func_start ov40_02256598
ov40_02256598: @ 0x02256598
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_022565A0:
	ldr r1, [r5, #0x24]
	cmp r1, #0
	beq _022565AC
	ldr r0, [r6, #0x20]
	bl FUN_022558B0
_022565AC:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xb
	blt _022565A0
	adds r0, r6, #0
	adds r0, #0x64
	bl FUN_022559B0
	adds r6, #0x50
	adds r0, r6, #0
	bl FUN_022559B0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov40_02256598

	thumb_func_start ov40_022565C8
ov40_022565C8: @ 0x022565C8
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _022565E8 @ =0x02256A60
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022565E8: .4byte 0x02256A60
	thumb_func_end ov40_022565C8

	thumb_func_start ov40_022565EC
ov40_022565EC: @ 0x022565EC
	ldr r3, _022565F4 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_022565F4: .4byte FUN_02255130
	thumb_func_end ov40_022565EC

	thumb_func_start ov40_022565F8
ov40_022565F8: @ 0x022565F8
	ldr r3, _02256600 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_02256600: .4byte FUN_02255154
	thumb_func_end ov40_022565F8

	thumb_func_start ov40_02256604
ov40_02256604: @ 0x02256604
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov40_02256604

	thumb_func_start ov40_02256618
ov40_02256618: @ 0x02256618
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022566A4 @ =0x02256A44
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r1, #0x51
	movs r3, #6
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r1, #0x50
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _022566A8 @ =0x0400104C
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	subs r1, #0x4c
	ldr r3, [r1]
	ldr r2, [r1]
	ldr r0, _022566AC @ =0xFFFFE0FF
	str r3, [sp, #0x10]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #4
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r4, #0
	bl ov40_02256604
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_022566A4: .4byte 0x02256A44
_022566A8: .4byte 0x0400104C
_022566AC: .4byte 0xFFFFE0FF
	thumb_func_end ov40_02256618

	thumb_func_start ov40_022566B0
ov40_022566B0: @ 0x022566B0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	beq _022566CC
	cmp r0, #1
	beq _022566DA
	pop {r3, r4, r5, pc}
_022566CC:
	movs r0, #1
	adds r4, #0x84
	str r0, [r4]
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r3, r4, r5, pc}
_022566DA:
	adds r0, r4, #0
	movs r1, #2
	bl ov40_022565EC
	cmp r0, #0
	beq _022566FC
	ldr r0, _02256700 @ =0x0400104C
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r5, #0
	bl ov40_02256604
_022566FC:
	pop {r3, r4, r5, pc}
	nop
_02256700: .4byte 0x0400104C
	thumb_func_end ov40_022566B0

	thumb_func_start ov40_02256704
ov40_02256704: @ 0x02256704
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_02255248
	cmp r0, #3
	bhi _022567D0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225672E: @ jump table
	.2byte _02256736 - _0225672E - 2 @ case 0
	.2byte _0225675C - _0225672E - 2 @ case 1
	.2byte _02256774 - _0225672E - 2 @ case 2
	.2byte _022567CA - _0225672E - 2 @ case 3
_02256736:
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	movs r0, #0xa
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl ov40_022567D8
	ldr r0, _022567D4 @ =0x00000678
	bl FUN_02254424
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_0225675C:
	ldr r0, [r4, #0x78]
	adds r1, r6, #0
	bl ov40_02256808
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov40_02256848
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_02256774:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _02256790
	movs r0, #0
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl ov40_022567D8
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_02256790:
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x80
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0x80
	ldr r0, [r0]
	cmp r0, #4
	blo _022567D0
	adds r0, r4, #0
	movs r1, #0
	adds r0, #0x80
	str r1, [r0]
	ldr r0, [r4, #0x7c]
	subs r0, r0, #1
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl ov40_022567D8
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	bne _022567D0
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_022567CA:
	adds r0, r5, #0
	bl ov40_02256604
_022567D0:
	pop {r4, r5, r6, pc}
	nop
_022567D4: .4byte 0x00000678
	thumb_func_end ov40_02256704

	thumb_func_start ov40_022567D8
ov40_022567D8: @ 0x022567D8
	movs r1, #1
	adds r0, #0x88
	str r1, [r0]
	bx lr
	thumb_func_end ov40_022567D8

	thumb_func_start ov40_022567E0
ov40_022567E0: @ 0x022567E0
	adds r0, r1, #0
	adds r0, #0x88
	ldr r0, [r0]
	cmp r0, #0
	beq _02256802
	ldr r2, [r1, #0x7c]
	ldr r3, _02256804 @ =0x0400104C
	lsls r0, r2, #4
	orrs r0, r2
	strb r0, [r3]
	ldr r2, [r1, #0x7c]
	adds r1, #0x88
	lsls r0, r2, #4
	orrs r0, r2
	strb r0, [r3, #1]
	movs r0, #0
	str r0, [r1]
_02256802:
	bx lr
	.align 2, 0
_02256804: .4byte 0x0400104C
	thumb_func_end ov40_022567E0

	thumb_func_start ov40_02256808
ov40_02256808: @ 0x02256808
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	adds r4, r1, #0
	adds r1, r0, #0
	movs r2, #0
	bl FUN_02079D8C
	ldrb r1, [r4]
	cmp r1, #0
	beq _02256824
	ldr r1, [r4, #4]
	b _02256826
_02256824:
	adds r1, r0, #0
_02256826:
	str r1, [sp]
	ldrb r1, [r4]
	cmp r1, #1
	bls _02256832
	ldr r1, [r4, #8]
	b _02256834
_02256832:
	adds r1, r0, #0
_02256834:
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	add r1, sp, #0
	movs r2, #3
	movs r3, #1
	bl FUN_022553A0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov40_02256808

	thumb_func_start ov40_02256848
ov40_02256848: @ 0x02256848
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0
	adds r6, r1, #0
	str r0, [sp]
	ldrb r0, [r6]
	cmp r0, #0
	ble _02256880
	adds r4, r6, #0
	adds r5, r7, #0
_0225685C:
	ldrh r0, [r4, #0x1c]
	ldrh r1, [r4, #0x20]
	movs r2, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [r5, #0x24]
	adds r1, r1, #1
	bl FUN_02255938
	ldr r0, [sp]
	ldrb r1, [r6]
	adds r0, r0, #1
	adds r4, r4, #2
	adds r5, r5, #4
	str r0, [sp]
	cmp r0, r1
	blt _0225685C
_02256880:
	movs r0, #1
	movs r1, #0
	adds r2, r0, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [r7, #0x2c]
	adds r1, r1, #1
	bl FUN_02255938
	ldrb r0, [r6]
	cmp r0, #0
	beq _022568B8
	ldrh r0, [r6, #0x1c]
	ldrh r1, [r6, #0x20]
	movs r2, #0x1c
	bl FUN_020759CC
	cmp r0, #0
	ldr r0, [r7, #0x24]
	beq _022568B2
	movs r1, #6
	bl FUN_022558C4
	b _022568B8
_022568B2:
	movs r1, #7
	bl FUN_022558C4
_022568B8:
	adds r0, r7, #0
	ldr r1, [r6, #0xc]
	adds r0, #0x30
	bl ov40_02256958
	adds r0, r7, #0
	ldr r1, [r6, #0x10]
	adds r0, #0x3c
	bl ov40_02256958
	ldr r0, [r7, #0x48]
	ldr r1, [r6, #0x14]
	bl ov40_02256A14
	ldr r0, [r7, #0x4c]
	ldr r1, [r6, #0x18]
	bl ov40_02256A14
	ldrb r0, [r6]
	cmp r0, #0
	bne _022568E6
	movs r4, #1
	b _022568E8
_022568E6:
	movs r4, #0
_022568E8:
	ldr r0, [r7, #0x24]
	adds r1, r4, #0
	bl FUN_02255914
	ldr r0, [r7, #0x30]
	adds r1, r4, #0
	bl FUN_02255914
	ldr r0, [r7, #0x34]
	adds r1, r4, #0
	bl FUN_02255914
	ldr r0, [r7, #0x38]
	adds r1, r4, #0
	bl FUN_02255914
	ldr r0, [r7, #0x48]
	adds r1, r4, #0
	bl FUN_02255914
	ldrb r0, [r6]
	cmp r0, #1
	bhi _0225691A
	movs r4, #1
	b _0225691C
_0225691A:
	movs r4, #0
_0225691C:
	ldr r0, [r7, #0x28]
	adds r1, r4, #0
	bl FUN_02255914
	ldr r0, [r7, #0x3c]
	adds r1, r4, #0
	bl FUN_02255914
	ldr r0, [r7, #0x40]
	adds r1, r4, #0
	bl FUN_02255914
	ldr r0, [r7, #0x44]
	adds r1, r4, #0
	bl FUN_02255914
	ldr r0, [r7, #0x4c]
	adds r1, r4, #0
	bl FUN_02255914
	ldrb r0, [r6, #1]
	cmp r0, #0
	bne _0225694E
	movs r1, #1
	b _02256950
_0225694E:
	movs r1, #0
_02256950:
	ldr r0, [r7, #0x2c]
	bl FUN_02255914
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov40_02256848

	thumb_func_start ov40_02256958
ov40_02256958: @ 0x02256958
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r1, #0
	str r0, [sp]
	cmp r7, #0x64
	bls _02256966
	movs r7, #0x64
_02256966:
	ldr r2, _02256A08 @ =0x04000280
	movs r3, #0
	strh r3, [r2]
	adds r0, r2, #0
	str r7, [r2, #0x10]
	movs r1, #0x64
	adds r0, #0x18
	str r1, [r0]
	str r3, [r0, #4]
	lsrs r0, r2, #0xb
_0225697A:
	ldrh r1, [r2]
	tst r1, r0
	bne _0225697A
	ldr r0, _02256A0C @ =0x040002A0
	ldr r4, _02256A08 @ =0x04000280
	ldr r0, [r0]
	str r0, [sp, #4]
	lsrs r0, r4, #0xb
_0225698A:
	ldrh r1, [r4]
	tst r1, r0
	bne _0225698A
	ldr r3, _02256A10 @ =0x040002A8
	movs r1, #0
	ldr r2, [r3]
	adds r0, r3, #0
	strh r1, [r4]
	subs r0, #0x18
	str r2, [r0]
	movs r0, #0xa
	subs r3, #0x10
	str r0, [r3]
	ldr r2, _02256A08 @ =0x04000280
	str r1, [r3, #4]
	lsrs r0, r2, #0xb
_022569AA:
	ldrh r1, [r2]
	tst r1, r0
	bne _022569AA
	ldr r0, _02256A0C @ =0x040002A0
	ldr r2, _02256A08 @ =0x04000280
	ldr r0, [r0]
	str r0, [sp, #8]
	lsrs r0, r2, #0xb
_022569BA:
	ldrh r1, [r2]
	tst r1, r0
	bne _022569BA
	ldr r0, _02256A10 @ =0x040002A8
	ldr r5, [sp]
	ldr r0, [r0]
	movs r6, #0
	str r0, [sp, #0xc]
	add r4, sp, #4
_022569CC:
	ldr r0, [r5]
	ldr r1, [r4]
	bl FUN_022558C4
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #3
	blt _022569CC
	cmp r7, #0x64
	bhs _022569E6
	movs r1, #1
	b _022569E8
_022569E6:
	movs r1, #0
_022569E8:
	ldr r0, [sp]
	ldr r0, [r0]
	bl FUN_02255914
	cmp r7, #0xa
	bhs _022569F8
	movs r1, #1
	b _022569FA
_022569F8:
	movs r1, #0
_022569FA:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl FUN_02255914
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256A08: .4byte 0x04000280
_02256A0C: .4byte 0x040002A0
_02256A10: .4byte 0x040002A8
	thumb_func_end ov40_02256958

	thumb_func_start ov40_02256A14
ov40_02256A14: @ 0x02256A14
	push {r3, lr}
	cmp r1, #0
	beq _02256A20
	cmp r1, #1
	beq _02256A28
	b _02256A30
_02256A20:
	movs r1, #0xa
	bl FUN_022558C4
	pop {r3, pc}
_02256A28:
	movs r1, #0xb
	bl FUN_022558C4
	pop {r3, pc}
_02256A30:
	movs r1, #0xc
	bl FUN_022558C4
	pop {r3, pc}
	thumb_func_end ov40_02256A14
	@ 0x02256A38
