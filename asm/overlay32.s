	.include "macros/function.inc"


	.text

	thumb_func_start ov32_022561C0
ov32_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov32_022561D4
	ldr r1, _022561D0 @ =ov32_022562AC
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov32_022561D4
_022561D0: .4byte ov32_022562AC
	thumb_func_end ov32_022561C0

	thumb_func_start ov32_022561D4
ov32_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x7c
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov32_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov32_02256278
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
_02256218: .4byte ov32_02256278
	thumb_func_end ov32_022561D4

	thumb_func_start ov32_0225621C
ov32_0225621C: @ 0x0225621C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0x74
	adds r1, r5, #4
	bl ov32_02256470
	cmp r0, #0
	beq _02256260
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	adds r0, r4, #0
	bl FUN_02254544
	bl FUN_0207A268
	adds r1, r0, #0
	adds r0, r5, #4
	bl ov32_022563C8
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0x68
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x6a
	strh r1, [r0]
	str r1, [r5, #0x6c]
	str r1, [r5, #0x70]
	str r4, [r5, #0x78]
	movs r0, #1
	pop {r3, r4, r5, pc}
_02256260:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov32_0225621C

	thumb_func_start ov32_02256264
ov32_02256264: @ 0x02256264
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x74]
	bl ov32_02256508
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov32_02256264

	thumb_func_start ov32_02256278
ov32_02256278: @ 0x02256278
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhs _022562A4
	lsls r2, r1, #2
	ldr r1, _022562A8 @ =0x02256CC0
	adds r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022562A4
	adds r0, r4, #0
	bl ov32_02256264
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x78]
	bl FUN_02254260
_022562A4:
	pop {r3, r4, r5, pc}
	nop
_022562A8: .4byte 0x02256CC0
	thumb_func_end ov32_02256278

	thumb_func_start ov32_022562AC
ov32_022562AC: @ 0x022562AC
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov32_022562AC

	thumb_func_start ov32_022562B4
ov32_022562B4: @ 0x022562B4
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022562BC
	b _022562BE
_022562BC:
	movs r1, #2
_022562BE:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov32_022562B4

	thumb_func_start ov32_022562C8
ov32_022562C8: @ 0x022562C8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022562D8
	cmp r0, #1
	beq _022562E8
	b _02256302
_022562D8:
	ldr r0, [r4, #0x74]
	movs r1, #0
	bl ov32_02256538
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256302
_022562E8:
	ldr r0, [r4, #0x74]
	movs r1, #0
	bl ov32_0225655C
	cmp r0, #0
	beq _02256302
	ldr r0, [r4, #0x78]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov32_022562B4
_02256302:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov32_022562C8

	thumb_func_start ov32_02256308
ov32_02256308: @ 0x02256308
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0225631C
	movs r1, #2
	bl ov32_022562B4
	movs r0, #0
	pop {r4, pc}
_0225631C:
	ldr r0, [r4, #0x74]
	movs r1, #2
	bl ov32_0225655C
	cmp r0, #0
	beq _02256386
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x6c
	adds r1, #0x70
	bl FUN_0225446C
	adds r1, r4, #0
	adds r1, #0x68
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x68
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256386
	bl FUN_02022798
	adds r1, r4, #0
	adds r1, #0x6a
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x6a
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256382
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x70]
	ldr r2, [r4, #4]
	bl ov32_02256B78
	ldr r1, [r4, #4]
	cmp r0, r1
	blo _02256382
	ldr r0, [r4, #0x78]
	bl FUN_02254544
	bl FUN_0207A268
	adds r1, r0, #0
	adds r0, r4, #4
	bl ov32_022563C8
	ldr r0, [r4, #0x74]
	movs r1, #2
	bl ov32_02256538
_02256382:
	movs r0, #0
	pop {r4, pc}
_02256386:
	movs r0, #0
	str r0, [r4, #0x6c]
	str r0, [r4, #0x70]
	adds r4, #0x6a
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov32_02256308

	thumb_func_start ov32_02256394
ov32_02256394: @ 0x02256394
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563A4
	cmp r0, #1
	beq _022563B4
	b _022563C2
_022563A4:
	ldr r0, [r4, #0x74]
	movs r1, #1
	bl ov32_02256538
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563C2
_022563B4:
	ldr r0, [r4, #0x74]
	bl ov32_02256568
	cmp r0, #0
	beq _022563C2
	movs r0, #1
	pop {r4, pc}
_022563C2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov32_02256394

	thumb_func_start ov32_022563C8
ov32_022563C8: @ 0x022563C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	adds r0, r1, #0
	str r1, [sp, #4]
	bl FUN_0207A0F8
	ldr r1, [sp]
	movs r6, #0
	str r0, [r1]
	cmp r0, #0
	ble _0225646C
	adds r5, r1, #0
_022563E2:
	ldr r0, [sp, #4]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r4, r0, #0
	bl FUN_02073C88
	adds r7, r0, #0
	adds r0, r4, #0
	bl FUN_02079D40
	str r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	strh r0, [r5, #8]
	adds r0, r4, #0
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	strh r0, [r5, #0xa]
	adds r0, r4, #0
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	strh r0, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	strh r0, [r5, #0xe]
	adds r0, r4, #0
	movs r1, #0xa0
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0225643C
	movs r0, #1
	b _0225643E
_0225643C:
	movs r0, #0
_0225643E:
	strh r0, [r5, #0x10]
	adds r0, r4, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074470
	strb r0, [r5, #0x12]
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	strb r0, [r5, #0x13]
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02073CD4
	ldr r0, [sp]
	adds r6, r6, #1
	ldr r0, [r0]
	adds r5, #0x10
	cmp r6, r0
	blt _022563E2
_0225646C:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov32_022563C8

	thumb_func_start ov32_02256470
ov32_02256470: @ 0x02256470
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	movs r1, #0xe3
	str r0, [sp, #4]
	movs r0, #8
	lsls r1, r1, #2
	bl FUN_02018144
	str r0, [sp, #8]
	cmp r0, #0
	beq _02256502
	adds r0, #0xc
	movs r1, #8
	bl FUN_02255090
	ldr r0, [sp, #8]
	str r4, [r0]
	bl FUN_02254674
	ldr r1, [sp, #8]
	str r0, [r1, #4]
	bl FUN_02254664
	ldr r1, [sp, #8]
	movs r6, #0
	str r0, [r1, #8]
	adds r0, r1, #0
	str r6, [r0, #0x38]
	adds r0, #0xf4
	adds r4, r1, #0
	str r6, [r0]
	adds r4, #0x3c
	adds r5, r1, #0
	adds r7, r6, #0
_022564B6:
	adds r0, r4, #0
	bl FUN_0201A7A0
	adds r0, r5, #0
	adds r0, #0x9c
	str r7, [r0]
	adds r0, r5, #0
	adds r0, #0xb4
	adds r6, r6, #1
	str r7, [r0]
	adds r4, #0x10
	adds r5, r5, #4
	cmp r6, #6
	blt _022564B6
	movs r0, #8
	str r0, [sp]
	ldr r0, [sp, #8]
	movs r1, #0xc
	adds r0, #0xcc
	movs r2, #5
	movs r3, #6
	bl FUN_02255958
	movs r0, #8
	str r0, [sp]
	ldr r0, [sp, #8]
	movs r1, #0xc
	adds r0, #0xe0
	movs r2, #0x6b
	movs r3, #0x6c
	bl FUN_02255958
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	add sp, #0xc
	str r1, [r0]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02256502:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov32_02256470

	thumb_func_start ov32_02256508
ov32_02256508: @ 0x02256508
	push {r4, lr}
	adds r4, r0, #0
	beq _02256536
	bl ov32_02256BD4
	adds r0, r4, #0
	adds r0, #0xcc
	bl FUN_022559B0
	adds r0, r4, #0
	adds r0, #0xe0
	bl FUN_022559B0
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _02256530
	bl FUN_0200DA58
_02256530:
	adds r0, r4, #0
	bl FUN_020181C4
_02256536:
	pop {r4, pc}
	thumb_func_end ov32_02256508

	thumb_func_start ov32_02256538
ov32_02256538: @ 0x02256538
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #0xc
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _02256558 @ =0x02256D18
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_02256558: .4byte 0x02256D18
	thumb_func_end ov32_02256538

	thumb_func_start ov32_0225655C
ov32_0225655C: @ 0x0225655C
	ldr r3, _02256564 @ =FUN_02255130
	adds r0, #0xc
	bx r3
	nop
_02256564: .4byte FUN_02255130
	thumb_func_end ov32_0225655C

	thumb_func_start ov32_02256568
ov32_02256568: @ 0x02256568
	ldr r3, _02256570 @ =FUN_02255154
	adds r0, #0xc
	bx r3
	nop
_02256570: .4byte FUN_02255154
	thumb_func_end ov32_02256568

	thumb_func_start ov32_02256574
ov32_02256574: @ 0x02256574
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #0xc
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov32_02256574

	thumb_func_start ov32_02256588
ov32_02256588: @ 0x02256588
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r2, _0225663C @ =0x02256CFC
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
	movs r1, #0x6a
	movs r3, #6
	bl FUN_02006E3C
	movs r3, #0
	lsrs r5, r0, #5
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r4, #4]
	movs r1, #6
	movs r2, #5
	bl FUN_02019CB8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	str r5, [r4, #0x34]
	ldr r1, [r4]
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov32_02256648
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	movs r0, #0xf
	movs r1, #1
	bl FUN_02255308
	movs r0, #2
	bl FUN_02255360
	ldr r1, [r4]
	adds r0, r4, #0
	bl ov32_02256898
	ldr r1, [r4]
	adds r0, r4, #0
	bl ov32_0225692C
	adds r0, r4, #0
	bl ov32_02256A48
	ldr r1, _02256640 @ =0x04001000
	ldr r0, _02256644 @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
	str r3, [sp, #0x10]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #0x14
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r6, #0
	bl ov32_02256574
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0225663C: .4byte 0x02256CFC
_02256640: .4byte 0x04001000
_02256644: .4byte 0xFFFFE0FF
	thumb_func_end ov32_02256588

	thumb_func_start ov32_02256648
ov32_02256648: @ 0x02256648
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x20]
	adds r0, r1, #0
	str r1, [sp, #0x18]
	ldr r1, [r0]
	str r2, [sp, #0x1c]
	cmp r1, #0
	ble _022566D4
	ldr r4, [sp, #0x14]
	ldr r7, [sp, #0x20]
	ldr r5, _022566DC @ =0x02256CE4
	ldr r6, [sp, #0x18]
	adds r4, #0x3c
_02256668:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldrh r0, [r5, #2]
	adds r1, r4, #0
	movs r2, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrh r3, [r5]
	ldr r0, [sp, #0x14]
	lsls r3, r3, #0x18
	ldr r0, [r0, #4]
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	adds r0, r4, #0
	bl FUN_0201A9F4
	ldr r1, [sp, #0x14]
	adds r0, r4, #0
	bl ov32_022566E0
	ldrh r0, [r6, #0xa]
	ldrh r1, [r6, #0xc]
	bl ov32_0225686C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov32_0225682C
	ldr r0, [sp, #0x20]
	adds r4, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	adds r7, #8
	ldr r1, [r0]
	ldr r0, [sp, #0x20]
	adds r5, r5, #4
	adds r6, #0x10
	cmp r0, r1
	blt _02256668
_022566D4:
	ldr r0, [sp, #0x14]
	str r1, [r0, #0x38]
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022566DC: .4byte 0x02256CE4
	thumb_func_end ov32_02256648

	thumb_func_start ov32_022566E0
ov32_022566E0: @ 0x022566E0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrb r0, [r5, #6]
	adds r4, r1, #0
	movs r2, #1
	subs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	movs r1, #6
	subs r3, r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	ldrb r0, [r5, #6]
	movs r1, #6
	movs r2, #2
	subs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #7]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	bl FUN_02019CB8
	ldrb r0, [r5, #6]
	ldr r2, _02256818 @ =0x00000401
	movs r1, #6
	subs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r6, [r5, #5]
	ldrb r3, [r5, #7]
	ldr r0, [r4, #4]
	adds r3, r6, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	ldrb r0, [r5, #6]
	movs r1, #6
	adds r2, r1, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5, #8]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	subs r3, r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	ldrb r0, [r5, #6]
	ldr r2, _0225681C @ =0x00000406
	movs r1, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5, #8]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r6, [r5, #5]
	ldrb r3, [r5, #7]
	ldr r0, [r4, #4]
	adds r3, r6, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #8]
	ldr r2, _02256820 @ =0x00000801
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	movs r1, #6
	subs r3, r3, #1
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #8]
	ldr r2, _02256824 @ =0x00000802
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #7]
	movs r1, #6
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r5, #5]
	ldr r0, [r4, #4]
	bl FUN_02019CB8
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #8]
	ldr r2, _02256828 @ =0x00000C01
	adds r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [r4, #4]
	ldrb r4, [r5, #5]
	ldrb r3, [r5, #7]
	movs r1, #6
	adds r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02256818: .4byte 0x00000401
_0225681C: .4byte 0x00000406
_02256820: .4byte 0x00000801
_02256824: .4byte 0x00000802
_02256828: .4byte 0x00000C01
	thumb_func_end ov32_022566E0

	thumb_func_start ov32_0225682C
ov32_0225682C: @ 0x0225682C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0x40
	str r1, [sp]
	movs r1, #8
	movs r2, #0
	str r1, [sp, #4]
	movs r1, #4
	adds r3, r2, #0
	adds r5, r0, #0
	bl FUN_0201AE78
	cmp r4, #0
	beq _02256860
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #8
	movs r2, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
_02256860:
	adds r0, r5, #0
	bl FUN_0201ACCC
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov32_0225682C

	thumb_func_start ov32_0225686C
ov32_0225686C: @ 0x0225686C
	push {r3, lr}
	cmp r0, #0
	bne _02256876
	movs r0, #0
	pop {r3, pc}
_02256876:
	cmp r0, r1
	bne _0225687E
	movs r0, #0x40
	pop {r3, pc}
_0225687E:
	lsls r0, r0, #0xc
	blx FUN_020E2178
	lsls r0, r0, #5
	lsrs r0, r0, #0xc
	bne _0225688E
	movs r0, #1
	b _02256894
_0225688E:
	cmp r0, #0x20
	bne _02256894
	movs r0, #0x1f
_02256894:
	lsls r0, r0, #1
	pop {r3, pc}
	thumb_func_end ov32_0225686C

	thumb_func_start ov32_02256898
ov32_02256898: @ 0x02256898
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x6d
	bl FUN_02006EC0
	movs r4, #0
	add r0, sp, #0x18
	strb r4, [r0, #0xa]
	movs r1, #2
	strb r1, [r0, #0xb]
	strb r4, [r0, #0xc]
	strb r4, [r0, #0xd]
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	ble _02256922
	ldr r7, [sp, #0xc]
	ldr r6, [sp, #0x10]
	adds r0, r7, #0
	str r0, [sp, #0x14]
	adds r0, #0xe0
	ldr r5, _02256928 @ =0x02256CCC
	str r0, [sp, #0x14]
_022568D8:
	ldrh r0, [r6, #0xe]
	cmp r0, #0
	beq _02256912
	bl FUN_0207D2D0
	cmp r0, #0
	beq _022568EA
	movs r1, #1
	b _022568EC
_022568EA:
	movs r1, #0
_022568EC:
	add r0, sp, #0x18
	strh r1, [r0, #8]
	ldrh r0, [r5]
	ldr r2, [sp, #0x14]
	add r1, sp, #0x18
	adds r0, #0x1c
	lsls r0, r0, #0xc
	str r0, [sp, #0x18]
	ldrh r0, [r5, #2]
	adds r0, #0x15
	lsls r0, r0, #0xc
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	bl FUN_02255810
	adds r1, r7, #0
	adds r1, #0xb4
	str r0, [r1]
_02256912:
	ldr r0, [sp, #0x10]
	adds r4, r4, #1
	ldr r0, [r0]
	adds r6, #0x10
	adds r5, r5, #4
	adds r7, r7, #4
	cmp r4, r0
	blt _022568D8
_02256922:
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256928: .4byte 0x02256CCC
	thumb_func_end ov32_02256898

	thumb_func_start ov32_0225692C
ov32_0225692C: @ 0x0225692C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x13
	movs r1, #8
	bl FUN_02006C24
	str r0, [sp, #0x14]
	cmp r0, #0
	beq _02256A40
	movs r0, #0
	add r1, sp, #0x20
	strh r0, [r1, #0xc]
	str r0, [sp, #0x10]
	strb r0, [r1, #0xe]
	movs r0, #2
	strb r0, [r1, #0xf]
	movs r7, #1
	strb r7, [r1, #0x10]
	ldr r0, [sp, #8]
	strb r7, [r1, #0x11]
	ldr r0, [r0]
	cmp r0, #0
	ble _02256A3A
	ldr r5, [sp, #4]
	movs r0, #8
	movs r1, #0x43
	str r0, [sp, #0xc]
	lsls r1, r1, #2
	adds r0, r5, #0
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r0, r5, #0
	str r0, [sp, #0x1c]
	adds r0, #0xcc
	ldr r4, [sp, #8]
	ldr r6, _02256A44 @ =0x02256CCC
	adds r7, #0xff
	str r0, [sp, #0x1c]
_0225697C:
	ldr r0, [sp, #0x18]
	movs r3, #0xa
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r1, [r4, #4]
	movs r2, #0
	lsls r3, r3, #6
	bl FUN_02006DC8
	ldr r0, [sp, #0x18]
	add r1, sp, #0x20
	blx FUN_020A7118
	ldr r0, [sp, #0x20]
	movs r1, #2
	ldr r0, [r0, #0x14]
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp, #0x20]
	movs r2, #2
	ldr r0, [r0, #0x14]
	adds r1, r7, #0
	lsls r2, r2, #8
	blx FUN_020C0314
	ldrh r0, [r6]
	ldr r2, [sp, #0x1c]
	add r1, sp, #0x24
	lsls r0, r0, #0xc
	str r0, [sp, #0x24]
	ldrh r0, [r6, #2]
	lsls r0, r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #4]
	ldr r0, [r0, #8]
	bl FUN_02255810
	adds r1, r5, #0
	adds r1, #0x9c
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	ldr r1, [sp, #0xc]
	bl FUN_02255940
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	movs r1, #4
	bl FUN_022558C4
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _022569F2
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _02256A00
_022569F2:
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02255938
	b _02256A18
_02256A00:
	ldrh r0, [r4, #8]
	ldrb r1, [r4, #0x13]
	ldrb r2, [r4, #0x12]
	bl FUN_02079EDC
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0x9c
	ldr r0, [r0]
	adds r1, r1, #2
	bl FUN_02255938
_02256A18:
	movs r0, #2
	lsls r0, r0, #8
	adds r7, r7, r0
	ldr r0, [sp, #0xc]
	adds r4, #0x10
	adds r0, #0x10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r6, r6, #4
	adds r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #8]
	adds r5, r5, #4
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	blt _0225697C
_02256A3A:
	ldr r0, [sp, #0x14]
	bl FUN_02006CA8
_02256A40:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02256A44: .4byte 0x02256CCC
	thumb_func_end ov32_0225692C

	thumb_func_start ov32_02256A48
ov32_02256A48: @ 0x02256A48
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	movs r1, #0
	lsls r0, r0, #8
	strb r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0xf8
	str r4, [r0]
	adds r0, r4, #0
	ldr r1, [r4]
	adds r0, #0xfc
	str r1, [r0]
	adds r1, r4, #0
	ldr r0, _02256A74 @ =ov32_02256A78
	adds r1, #0xf8
	movs r2, #1
	bl FUN_0200D9E8
	adds r4, #0xf4
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02256A74: .4byte ov32_02256A78
	thumb_func_end ov32_02256A48

	thumb_func_start ov32_02256A78
ov32_02256A78: @ 0x02256A78
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldrb r0, [r5, #8]
	ldr r4, [r5, #4]
	ldr r6, [r5]
	cmp r0, #0
	beq _02256A8C
	cmp r0, #1
	beq _02256AE6
	pop {r4, r5, r6, pc}
_02256A8C:
	adds r0, r4, #0
	adds r0, #0x66
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256B6C
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4]
	bl ov32_02256B78
	ldr r1, [r4]
	cmp r0, r1
	bhs _02256B6C
	lsls r2, r0, #4
	adds r1, r4, r2
	ldrh r3, [r1, #0xa]
	cmp r3, #0
	beq _02256B6C
	ldrb r3, [r1, #0x12]
	cmp r3, #0
	bne _02256B6C
	movs r3, #0
	strb r3, [r5, #9]
	strb r3, [r5, #0xb]
	strb r0, [r5, #0xa]
	movs r3, #2
	str r3, [r5, #0x10]
	ldrh r0, [r1, #0x10]
	cmp r0, #0
	bne _02256AD0
	movs r0, #1
	strb r0, [r5, #0xc]
	movs r0, #8
	b _02256AD4
_02256AD0:
	strb r3, [r5, #0xc]
	movs r0, #4
_02256AD4:
	strb r0, [r5, #0xd]
	movs r0, #1
	strb r0, [r5, #8]
	adds r1, r4, r2
	ldrh r0, [r1, #8]
	ldrb r1, [r1, #0x13]
	bl FUN_02254444
	pop {r4, r5, r6, pc}
_02256AE6:
	ldrb r1, [r5, #0xb]
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bne _02256B28
	adds r0, r4, #0
	adds r0, #0x64
	ldrh r0, [r0]
	cmp r0, #0
	beq _02256B08
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x6c]
	ldr r2, [r4]
	bl ov32_02256B78
	ldrb r1, [r5, #0xa]
	cmp r1, r0
	beq _02256B28
_02256B08:
	ldrb r0, [r5, #0xa]
	ldr r1, _02256B70 @ =0x02256CCC
	ldr r3, _02256B74 @ =0x02256CCE
	lsls r2, r0, #2
	adds r0, r6, r2
	ldrh r1, [r1, r2]
	ldrh r2, [r3, r2]
	adds r0, #0x9c
	ldr r0, [r0]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_02255900
	movs r0, #0
	strb r0, [r5, #8]
	pop {r4, r5, r6, pc}
_02256B28:
	ldrb r0, [r5, #9]
	cmp r0, #0
	bne _02256B68
	ldrb r0, [r5, #0xa]
	ldr r1, _02256B70 @ =0x02256CCC
	ldr r3, _02256B74 @ =0x02256CCE
	lsls r2, r0, #2
	adds r0, r6, r2
	ldrh r1, [r1, r2]
	adds r0, #0x9c
	ldrh r2, [r3, r2]
	ldr r4, [r5, #0x10]
	ldr r0, [r0]
	adds r2, r4, r2
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_02255900
	ldrb r1, [r5, #0xb]
	ldrb r0, [r5, #0xd]
	cmp r1, r0
	bhs _02256B58
	adds r0, r1, #1
	strb r0, [r5, #0xb]
_02256B58:
	movs r0, #0
	ldr r1, [r5, #0x10]
	mvns r0, r0
	muls r0, r1, r0
	str r0, [r5, #0x10]
	ldrb r0, [r5, #0xc]
	strb r0, [r5, #9]
	pop {r4, r5, r6, pc}
_02256B68:
	subs r0, r0, #1
	strb r0, [r5, #9]
_02256B6C:
	pop {r4, r5, r6, pc}
	nop
_02256B70: .4byte 0x02256CCC
_02256B74: .4byte 0x02256CCE
	thumb_func_end ov32_02256A78

	thumb_func_start ov32_02256B78
ov32_02256B78: @ 0x02256B78
	push {r3, r4, r5, r6, r7, lr}
	mov lr, r0
	mov ip, r1
	adds r7, r2, #0
	ldr r6, _02256BCC @ =0x00000000
	beq _02256BC6
	ldr r3, _02256BD0 @ =0x02256CCC
_02256B86:
	ldrh r1, [r3]
	ldrh r4, [r3, #2]
	mov r5, lr
	adds r0, r1, #0
	subs r0, #0x10
	adds r2, r4, #0
	adds r1, #0x10
	subs r5, r5, r0
	subs r0, r1, r0
	subs r2, #8
	cmp r5, r0
	bhs _02256BA2
	movs r0, #1
	b _02256BA4
_02256BA2:
	movs r0, #0
_02256BA4:
	mov r1, ip
	adds r4, #0x18
	subs r1, r1, r2
	subs r2, r4, r2
	cmp r1, r2
	bhs _02256BB4
	movs r1, #1
	b _02256BB6
_02256BB4:
	movs r1, #0
_02256BB6:
	tst r0, r1
	beq _02256BBE
	adds r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_02256BBE:
	adds r6, r6, #1
	adds r3, r3, #4
	cmp r6, r7
	blo _02256B86
_02256BC6:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256BCC: .4byte 0x00000000
_02256BD0: .4byte 0x02256CCC
	thumb_func_end ov32_02256B78

	thumb_func_start ov32_02256BD4
ov32_02256BD4: @ 0x02256BD4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r7, r6, #0
_02256BDE:
	adds r0, r4, #0
	adds r0, #0x9c
	ldr r1, [r0]
	cmp r1, #0
	beq _02256BF4
	ldr r0, [r5, #8]
	bl FUN_022558B0
	adds r0, r4, #0
	adds r0, #0x9c
	str r7, [r0]
_02256BF4:
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r1, [r0]
	cmp r1, #0
	beq _02256C0C
	ldr r0, [r5, #8]
	bl FUN_022558B0
	adds r1, r4, #0
	adds r1, #0xb4
	movs r0, #0
	str r0, [r1]
_02256C0C:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #6
	blt _02256BDE
	ldr r0, [r5, #0x38]
	movs r6, #0
	cmp r0, #0
	bls _02256C30
	adds r4, r5, #0
	adds r4, #0x3c
_02256C20:
	adds r0, r4, #0
	bl FUN_0201A8FC
	ldr r0, [r5, #0x38]
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, r0
	blo _02256C20
_02256C30:
	movs r0, #0
	str r0, [r5, #0x38]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov32_02256BD4

	thumb_func_start ov32_02256C38
ov32_02256C38: @ 0x02256C38
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov32_02256574
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov32_02256C38

	thumb_func_start ov32_02256C54
ov32_02256C54: @ 0x02256C54
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov32_02256BD4
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x18
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [r5, #4]
	movs r1, #6
	movs r2, #5
	bl FUN_02019CB8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov32_02256898
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov32_0225692C
	ldr r2, [r5, #0x34]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov32_02256648
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r0, _02256CBC @ =0x00000669
	bl FUN_02254424
	adds r0, r6, #0
	bl ov32_02256574
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02256CBC: .4byte 0x00000669
	thumb_func_end ov32_02256C54
	@ 0x02256CC0
