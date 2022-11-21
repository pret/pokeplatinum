
	thumb_func_start ov34_022561C0
ov34_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov34_022561D4
	ldr r1, _022561D0 @ =ov34_02256294
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov34_022561D4
_022561D0: .4byte ov34_02256294
	thumb_func_end ov34_022561C0

	thumb_func_start ov34_022561D4
ov34_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x54
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov34_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov34_02256260
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
_02256218: .4byte ov34_02256260
	thumb_func_end ov34_022561D4

	thumb_func_start ov34_0225621C
ov34_0225621C: @ 0x0225621C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x48
	adds r1, r5, #4
	bl ov34_02256540
	cmp r0, #0
	beq _0225623E
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	str r0, [r5, #0x50]
	str r4, [r5, #0x4c]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225623E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov34_0225621C

	thumb_func_start ov34_02256244
ov34_02256244: @ 0x02256244
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _02256252
	bl FUN_020181C4
_02256252:
	ldr r0, [r4, #0x48]
	bl ov34_02256604
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov34_02256244

	thumb_func_start ov34_02256260
ov34_02256260: @ 0x02256260
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhs _0225628C
	lsls r2, r1, #2
	ldr r1, _02256290 @ =0x02256A1C
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225628C
	adds r0, r4, #0
	bl ov34_02256244
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x4c]
	bl FUN_02254260
_0225628C:
	pop {r3, r4, r5, pc}
	nop
_02256290: .4byte 0x02256A1C
	thumb_func_end ov34_02256260

	thumb_func_start ov34_02256294
ov34_02256294: @ 0x02256294
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov34_02256294

	thumb_func_start ov34_0225629C
ov34_0225629C: @ 0x0225629C
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562A4
	b _022562A6
_022562A4:
	movs r1, #2
_022562A6:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov34_0225629C

	thumb_func_start ov34_022562B0
ov34_022562B0: @ 0x022562B0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562C0
	cmp r0, #1
	beq _022562D0
	b _022562EA
_022562C0:
	ldr r0, [r4, #0x48]
	movs r1, #0
	bl ov34_02256640
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022562EA
_022562D0:
	ldr r0, [r4, #0x48]
	movs r1, #0
	bl ov34_02256664
	cmp r0, #0
	beq _022562EA
	ldr r0, [r4, #0x4c]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov34_0225629C
_022562EA:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov34_022562B0

	thumb_func_start ov34_022562F0
ov34_022562F0: @ 0x022562F0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _02256310
	ldr r0, [r4, #0x48]
	bl ov34_02256A0C
	adds r0, r4, #0
	movs r1, #2
	bl ov34_0225629C
	add sp, #8
	movs r0, #0
	pop {r4, pc}
_02256310:
	ldrb r1, [r4, #1]
	cmp r1, #3
	bhi _022563DA
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02256322: @ jump table
	.2byte _0225632A - _02256322 - 2 @ case 0
	.2byte _02256354 - _02256322 - 2 @ case 1
	.2byte _022563AA - _02256322 - 2 @ case 2
	.2byte _022563BC - _02256322 - 2 @ case 3
_0225632A:
	add r1, sp, #4
	add r2, sp, #0
	bl ov34_022563E4
	cmp r0, #0
	beq _022563DA
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r0, r4, #0
	bl ov34_02256428
	ldr r0, _022563E0 @ =0x00000668
	bl FUN_02254424
	ldr r0, [r4, #0x48]
	movs r1, #2
	bl ov34_02256640
	movs r0, #1
	strb r0, [r4, #1]
	b _022563DA
_02256354:
	ldr r0, [r4, #0x48]
	movs r1, #2
	bl ov34_02256664
	cmp r0, #0
	beq _02256366
	movs r0, #0
	strb r0, [r4, #1]
	b _022563DA
_02256366:
	ldr r0, [r4, #0x4c]
	bl FUN_02254534
	cmp r0, #1
	beq _0225637A
	ldr r0, [r4, #0x4c]
	bl FUN_0225450C
	cmp r0, #0
	beq _02256386
_0225637A:
	ldr r0, [r4, #0x48]
	bl ov34_02256A0C
	movs r0, #2
	strb r0, [r4, #1]
	b _022563DA
_02256386:
	adds r0, r4, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov34_022563E4
	cmp r0, #0
	beq _022563DA
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r0, r4, #0
	bl ov34_02256428
	ldr r0, [r4, #0x48]
	bl ov34_02256A0C
	movs r0, #3
	strb r0, [r4, #1]
	b _022563DA
_022563AA:
	ldr r0, [r4, #0x48]
	movs r1, #2
	bl ov34_02256664
	cmp r0, #0
	beq _022563DA
	movs r0, #0
	strb r0, [r4, #1]
	b _022563DA
_022563BC:
	ldr r0, [r4, #0x48]
	movs r1, #2
	bl ov34_02256664
	cmp r0, #0
	beq _022563DA
	ldr r0, _022563E0 @ =0x00000668
	bl FUN_02254424
	ldr r0, [r4, #0x48]
	movs r1, #2
	bl ov34_02256640
	movs r0, #1
	strb r0, [r4, #1]
_022563DA:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_022563E0: .4byte 0x00000668
	thumb_func_end ov34_022562F0

	thumb_func_start ov34_022563E4
ov34_022563E4: @ 0x022563E4
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x4c]
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_0225450C
	cmp r0, #0
	bne _02256424
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_020227C0
	cmp r0, #0
	beq _02256424
	ldr r0, [r5]
	subs r0, #0x18
	cmp r0, #0xb0
	bhs _0225640C
	movs r1, #1
	b _0225640E
_0225640C:
	movs r1, #0
_0225640E:
	ldr r0, [r4]
	subs r0, #0x18
	cmp r0, #0x90
	bhs _0225641A
	movs r0, #1
	b _0225641C
_0225641A:
	movs r0, #0
_0225641C:
	tst r0, r1
	beq _02256424
	movs r0, #1
	pop {r3, r4, r5, pc}
_02256424:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov34_022563E4

	thumb_func_start ov34_02256428
ov34_02256428: @ 0x02256428
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #0x4c]
	adds r7, r1, #0
	str r2, [sp]
	bl FUN_0225453C
	movs r1, #8
	bl FUN_0203F478
	str r0, [sp, #4]
	adds r4, r5, #4
	movs r1, #0
	str r1, [r4, #8]
	ldr r0, [sp]
	str r7, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [sp, #4]
	str r1, [r4, #0xc]
	cmp r0, #0
	beq _022564E6
	ldrb r0, [r0, #4]
	cmp r0, #0xff
	beq _022564E0
	adds r6, r4, #0
	ldr r5, [sp, #4]
	adds r6, #0xc
_02256460:
	ldrh r0, [r5]
	ldrh r1, [r5, #2]
	add r2, sp, #0xc
	add r3, sp, #8
	bl ov34_022564F0
	ldr r1, [sp, #8]
	ldr r0, [sp]
	subs r0, r1, r0
	ldr r1, [sp, #0xc]
	subs r1, r1, r7
	adds r2, r1, #0
	muls r2, r1, r2
	adds r1, r0, #0
	muls r1, r0, r1
	adds r0, r2, r1
	lsls r0, r0, #0xc
	blx FUN_020BCFF0
	ldrb r1, [r5, #4]
	lsls r2, r1, #2
	ldr r1, _022564EC @ =0x02256A28
	ldr r1, [r1, r2]
	cmp r0, r1
	bgt _022564C6
	ldr r1, [r4, #0xc]
	cmp r1, #8
	bhs _022564D8
	movs r2, #6
	muls r2, r1, r2
	ldr r0, [sp, #0xc]
	adds r1, r4, r2
	strh r0, [r1, #0x10]
	ldr r2, [r4, #0xc]
	movs r1, #6
	muls r1, r2, r1
	ldr r0, [sp, #8]
	adds r1, r4, r1
	strh r0, [r1, #0x12]
	ldr r2, [r4, #0xc]
	movs r1, #6
	muls r1, r2, r1
	ldrb r0, [r5, #4]
	adds r1, r4, r1
	strh r0, [r1, #0x14]
	ldr r0, [r6]
	adds r0, r0, #1
	str r0, [r6]
	movs r0, #2
	str r0, [r4, #8]
	b _022564D8
_022564C6:
	movs r1, #3
	lsls r1, r1, #0x10
	cmp r0, r1
	bgt _022564D8
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _022564D8
	movs r0, #1
	str r0, [r4, #8]
_022564D8:
	adds r5, r5, #6
	ldrb r0, [r5, #4]
	cmp r0, #0xff
	bne _02256460
_022564E0:
	ldr r0, [sp, #4]
	bl FUN_020181C4
_022564E6:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022564EC: .4byte 0x02256A28
	thumb_func_end ov34_02256428

	thumb_func_start ov34_022564F0
ov34_022564F0: @ 0x022564F0
	push {r4, r5}
	subs r4, r0, #7
	movs r0, #0xb
	adds r5, r4, #0
	muls r5, r0, r5
	subs r1, r1, #7
	adds r5, #0x70
	muls r0, r1, r0
	str r5, [r2]
	adds r0, #0x65
	str r0, [r3]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov34_022564F0

	thumb_func_start ov34_0225650C
ov34_0225650C: @ 0x0225650C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225651C
	cmp r0, #1
	beq _0225652C
	b _0225653A
_0225651C:
	ldr r0, [r4, #0x48]
	movs r1, #1
	bl ov34_02256640
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225653A
_0225652C:
	ldr r0, [r4, #0x48]
	bl ov34_02256670
	cmp r0, #0
	beq _0225653A
	movs r0, #1
	pop {r4, pc}
_0225653A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov34_0225650C

	thumb_func_start ov34_02256540
ov34_02256540: @ 0x02256540
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x90
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256584
	adds r0, #8
	movs r1, #8
	bl FUN_02255090
	str r6, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4, #0x6c]
	bl FUN_02254664
	str r0, [r4, #0x30]
	movs r1, #0
	str r1, [r4, #0x34]
	adds r2, r4, #0
	adds r0, r1, #0
_02256574:
	adds r1, r1, #1
	str r0, [r2, #0x38]
	adds r2, r2, #4
	cmp r1, #8
	blt _02256574
	str r4, [r5]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02256584:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov34_02256540

	thumb_func_start ov34_02256588
ov34_02256588: @ 0x02256588
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r6, #0
	adds r0, #0x58
	movs r1, #0xc
	movs r2, #0x28
	movs r3, #0x29
	bl FUN_02255958
	cmp r0, #0
	beq _022565F4
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x2a
	bl FUN_02006EC0
	adds r2, r6, #0
	ldr r0, [r6, #0x30]
	ldr r1, _022565FC @ =0x02256A40
	adds r2, #0x58
	bl FUN_02255810
	movs r1, #1
	str r0, [r6, #0x34]
	bl FUN_02255914
	adds r7, r6, #0
	movs r4, #0
	adds r5, r6, #0
	adds r7, #0x58
_022565D4:
	ldr r0, [r6, #0x30]
	ldr r1, _02256600 @ =0x02256A50
	adds r2, r7, #0
	bl FUN_02255810
	movs r1, #1
	str r0, [r5, #0x38]
	bl FUN_02255914
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _022565D4
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022565F4:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022565FC: .4byte 0x02256A40
_02256600: .4byte 0x02256A50
	thumb_func_end ov34_02256588

	thumb_func_start ov34_02256604
ov34_02256604: @ 0x02256604
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	beq _0225663C
	movs r4, #0
	adds r5, r6, #0
_0225660E:
	ldr r1, [r5, #0x38]
	cmp r1, #0
	beq _0225661A
	ldr r0, [r6, #0x30]
	bl FUN_022558B0
_0225661A:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _0225660E
	ldr r1, [r6, #0x34]
	cmp r1, #0
	beq _0225662E
	ldr r0, [r6, #0x30]
	bl FUN_022558B0
_0225662E:
	adds r0, r6, #0
	adds r0, #0x58
	bl FUN_022559B0
	adds r0, r6, #0
	bl FUN_020181C4
_0225663C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov34_02256604

	thumb_func_start ov34_02256640
ov34_02256640: @ 0x02256640
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _02256660 @ =0x02256A7C
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256660: .4byte 0x02256A7C
	thumb_func_end ov34_02256640

	thumb_func_start ov34_02256664
ov34_02256664: @ 0x02256664
	ldr r3, _0225666C @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_0225666C: .4byte FUN_02255130
	thumb_func_end ov34_02256664

	thumb_func_start ov34_02256670
ov34_02256670: @ 0x02256670
	ldr r3, _02256678 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_02256678: .4byte FUN_02255154
	thumb_func_end ov34_02256670

	thumb_func_start ov34_0225667C
ov34_0225667C: @ 0x0225667C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov34_0225667C

	thumb_func_start ov34_02256690
ov34_02256690: @ 0x02256690
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _02256768 @ =0x02256A60
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
	ldr r2, [r4, #4]
	movs r0, #0xc
	movs r1, #0x27
	movs r3, #6
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	movs r0, #0xc
	movs r1, #0x26
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	adds r0, r4, #0
	adds r0, #0x70
	bl FUN_02254728
	adds r0, r4, #0
	adds r0, #0x80
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x72
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x70
	movs r1, #0x20
	blx FUN_020C2C54
	adds r0, r4, #0
	movs r1, #0x1a
	adds r0, #0x70
	lsls r1, r1, #4
	movs r2, #0x20
	blx FUN_020C01B8
	adds r0, r4, #0
	adds r0, #0x8e
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x72
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x70
	movs r1, #0x20
	blx FUN_020C2C54
	adds r0, r4, #0
	movs r1, #7
	adds r0, #0x70
	lsls r1, r1, #6
	movs r2, #0x20
	blx FUN_020C01B8
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _0225676C @ =0x04001000
	ldr r0, _02256770 @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
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
	bl ov34_02256588
	adds r0, r5, #0
	bl ov34_0225667C
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_02256768: .4byte 0x02256A60
_0225676C: .4byte 0x04001000
_02256770: .4byte 0xFFFFE0FF
	thumb_func_end ov34_02256690

	thumb_func_start ov34_02256774
ov34_02256774: @ 0x02256774
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov34_0225667C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov34_02256774

	thumb_func_start ov34_02256790
ov34_02256790: @ 0x02256790
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	str r0, [sp]
	adds r0, r5, #0
	bl FUN_0225523C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_02255244
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255248
	cmp r0, #0
	bne _022567C0
	movs r0, #1
	str r0, [r6, #0x6c]
	ldr r0, [r7, #8]
	str r0, [r4]
_022567C0:
	ldr r2, [r4]
	ldr r0, [sp]
	lsls r3, r2, #2
	ldr r2, _022567D0 @ =0x02256A34
	adds r1, r5, #0
	ldr r2, [r2, r3]
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022567D0: .4byte 0x02256A34
	thumb_func_end ov34_02256790

	thumb_func_start ov34_022567D4
ov34_022567D4: @ 0x022567D4
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
	cmp r0, #0
	beq _022567F8
	cmp r0, #1
	beq _0225681E
	pop {r4, r5, r6, pc}
_022567F8:
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_02255900
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_022558C4
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_0225681E:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _02256832
	adds r0, r4, #0
	bl ov34_022569E8
	adds r0, r5, #0
	bl ov34_0225667C
	pop {r4, r5, r6, pc}
_02256832:
	ldr r0, [r4, #0x34]
	bl FUN_022558E0
	cmp r0, #0
	beq _02256848
	adds r0, r4, #0
	bl ov34_022569E8
	adds r0, r5, #0
	bl ov34_0225667C
_02256848:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov34_022567D4

	thumb_func_start ov34_0225684C
ov34_0225684C: @ 0x0225684C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_02255248
	cmp r0, #0
	beq _02256870
	cmp r0, #1
	beq _02256896
	pop {r4, r5, r6, pc}
_02256870:
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldr r0, [r5, #0x34]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_02255900
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_022558C4
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_02255914
	adds r0, r6, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_02256896:
	ldr r0, [r5, #0x6c]
	cmp r0, #0
	bne _022568AA
	adds r0, r5, #0
	bl ov34_022569E8
	adds r0, r6, #0
	bl ov34_0225667C
	pop {r4, r5, r6, pc}
_022568AA:
	ldr r0, [r5, #0x34]
	bl FUN_022558E0
	cmp r0, #0
	beq _022568BC
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_022558C4
_022568BC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov34_0225684C

	thumb_func_start ov34_022568C0
ov34_022568C0: @ 0x022568C0
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
	cmp r0, #0
	beq _022568E8
	cmp r0, #1
	beq _02256916
	cmp r0, #2
	beq _02256944
	pop {r4, r5, r6, pc}
_022568E8:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov34_02256974
	ldr r1, [r6]
	ldr r2, [r6, #4]
	ldr r0, [r4, #0x34]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_02255900
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_022558C4
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_02255914
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_02256916:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _0225692A
	adds r0, r4, #0
	bl ov34_022569E8
	adds r0, r5, #0
	bl ov34_0225667C
	pop {r4, r5, r6, pc}
_0225692A:
	ldr r0, [r4, #0x34]
	bl FUN_022558E0
	cmp r0, #0
	beq _02256972
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov34_022569A0
	adds r0, r5, #0
	bl FUN_0225524C
	pop {r4, r5, r6, pc}
_02256944:
	ldr r0, [r4, #0x6c]
	cmp r0, #0
	bne _02256958
	adds r0, r4, #0
	bl ov34_022569E8
	adds r0, r5, #0
	bl ov34_0225667C
	pop {r4, r5, r6, pc}
_02256958:
	adds r0, r4, #0
	bl ov34_022569DC
	cmp r0, #0
	beq _02256972
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_022558C4
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02255254
_02256972:
	pop {r4, r5, r6, pc}
	thumb_func_end ov34_022568C0

	thumb_func_start ov34_02256974
ov34_02256974: @ 0x02256974
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r0, #0
	ldr r0, [r7, #0xc]
	movs r6, #0
	cmp r0, #0
	bls _0225699E
	adds r4, r7, #0
_02256984:
	ldrh r1, [r4, #0x10]
	ldrh r2, [r4, #0x12]
	ldr r0, [r5, #0x38]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_02255900
	ldr r0, [r7, #0xc]
	adds r6, r6, #1
	adds r4, r4, #6
	adds r5, r5, #4
	cmp r6, r0
	blo _02256984
_0225699E:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov34_02256974

	thumb_func_start ov34_022569A0
ov34_022569A0: @ 0x022569A0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r0, [r0, #0xc]
	movs r6, #0
	str r1, [sp]
	cmp r0, #0
	bls _022569DA
	adds r4, r1, #0
_022569B2:
	ldrh r0, [r4, #0x14]
	adds r7, r0, #1
	cmp r7, #3
	blo _022569BC
	movs r7, #3
_022569BC:
	ldr r0, [r5, #0x38]
	movs r1, #0
	bl FUN_02255914
	ldr r0, [r5, #0x38]
	adds r1, r7, #0
	bl FUN_022558C4
	ldr r0, [sp]
	adds r6, r6, #1
	ldr r0, [r0, #0xc]
	adds r4, r4, #6
	adds r5, r5, #4
	cmp r6, r0
	blo _022569B2
_022569DA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov34_022569A0

	thumb_func_start ov34_022569DC
ov34_022569DC: @ 0x022569DC
	ldr r3, _022569E4 @ =FUN_022558E0
	ldr r0, [r0, #0x38]
	bx r3
	nop
_022569E4: .4byte FUN_022558E0
	thumb_func_end ov34_022569DC

	thumb_func_start ov34_022569E8
ov34_022569E8: @ 0x022569E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	movs r1, #1
	bl FUN_02255914
	movs r4, #0
	movs r6, #1
_022569F8:
	ldr r0, [r5, #0x38]
	adds r1, r6, #0
	bl FUN_02255914
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _022569F8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov34_022569E8

	thumb_func_start ov34_02256A0C
ov34_02256A0C: @ 0x02256A0C
	push {r4, lr}
	adds r4, r0, #0
	bl ov34_022569E8
	movs r0, #0
	str r0, [r4, #0x6c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov34_02256A0C
	@ 0x02256A1C
