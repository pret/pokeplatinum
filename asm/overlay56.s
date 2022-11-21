	.include "macros/function.inc"


	.text

	thumb_func_start ov56_022561C0
ov56_022561C0: @ 0x022561C0
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	adds r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	beq _02256292
	ldr r1, [r4]
	cmp r1, #3
	bhi _02256292
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022561E2: @ jump table
	.2byte _022561EA - _022561E2 - 2 @ case 0
	.2byte _02256212 - _022561E2 - 2 @ case 1
	.2byte _02256268 - _022561E2 - 2 @ case 2
	.2byte _02256292 - _022561E2 - 2 @ case 3
_022561EA:
	bl ov56_02256508
	adds r0, r4, #0
	bl ov56_02256294
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	adds r0, r4, #0
	bl ov56_0225710C
	adds r0, r4, #0
	movs r1, #1
	bl ov56_0225717C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_02256212:
	adds r0, r4, #0
	bl ov56_02256634
	adds r0, r4, #0
	bl ov56_02256704
	movs r0, #1
	movs r1, #4
	bl FUN_02002BEC
	movs r1, #0x72
	lsls r1, r1, #2
	ldr r0, [r4, #0x14]
	adds r1, r4, r1
	bl ov56_022562EC
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r4, #0
	bl ov56_02257100
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_02256268:
	adds r0, r4, #0
	bl ov56_0225712C
	adds r0, r4, #0
	bl ov56_02257098
	adds r0, r4, #0
	bl ov56_022569E0
	adds r0, r4, #0
	bl ov56_02256D04
	adds r0, r4, #0
	bl ov56_022568E0
	adds r0, r4, #0
	bl ov56_022571D0
	ldr r0, [r4, #0x28]
	bl FUN_020219F8
_02256292:
	pop {r4, pc}
	thumb_func_end ov56_022561C0

	thumb_func_start ov56_02256294
ov56_02256294: @ 0x02256294
	push {r3, r4, lr}
	sub sp, #4
	movs r1, #0xa1
	lsls r1, r1, #2
	adds r4, r0, #0
	movs r2, #0
	adds r0, r1, #0
	str r2, [r4, r1]
	subs r0, #0x10
	strh r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0xe
	strh r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0xc
	strh r2, [r4, r0]
	subs r1, #0xa
	movs r0, #4
	strh r2, [r4, r1]
	bl FUN_0200B358
	str r0, [r4, #0x18]
	ldr r2, _022562E8 @ =0x0000027B
	movs r0, #0
	movs r1, #0x1a
	movs r3, #4
	bl FUN_0200B144
	str r0, [r4, #0x1c]
	movs r0, #4
	adds r3, r4, #0
	str r0, [sp]
	movs r0, #0x4a
	movs r1, #3
	movs r2, #1
	adds r3, #0x24
	bl FUN_02006F6C
	str r0, [r4, #0x20]
	add sp, #4
	pop {r3, r4, pc}
	nop
_022562E8: .4byte 0x0000027B
	thumb_func_end ov56_02256294

	thumb_func_start ov56_022562EC
ov56_022562EC: @ 0x022562EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r7, r0, #0
	movs r0, #0xa0
	str r0, [sp, #0x20]
	movs r0, #0xd0
	str r0, [sp, #0x1c]
	movs r0, #3
	str r0, [sp, #0x18]
	ldr r0, _022563E4 @ =0x00000265
	adds r5, r1, #0
	movs r4, #0
	movs r6, #1
	str r0, [sp, #0x14]
_02256308:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r2, r4, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x18
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, r5, #0
	lsrs r2, r2, #0x18
	movs r3, #1
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A954
	ldr r0, [sp, #0x18]
	adds r2, r4, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #5
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	adds r1, r5, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x18
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, #0x10
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x10
	bl FUN_0201A954
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xf
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	adds r2, r4, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r1, r5, #0
	lsls r2, r2, #0x18
	str r0, [sp, #0x10]
	adds r0, r7, #0
	adds r1, #0x20
	lsrs r2, r2, #0x18
	movs r3, #0xc
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x20
	bl FUN_0201A954
	ldr r0, [sp, #0x20]
	adds r4, r4, #1
	adds r0, #0x10
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r6, #8
	adds r0, #0x87
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r5, #0x38
	adds r0, #8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, #0x1e
	str r0, [sp, #0x14]
	cmp r4, #3
	blt _02256308
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022563E4: .4byte 0x00000265
	thumb_func_end ov56_022562EC

	thumb_func_start ov56_022563E8
ov56_022563E8: @ 0x022563E8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_022563EE:
	adds r0, r5, #0
	adds r0, #0x10
	bl FUN_0201A8FC
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0x20
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x38
	cmp r4, #3
	blt _022563EE
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov56_022563E8

	thumb_func_start ov56_02256410
ov56_02256410: @ 0x02256410
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #0xa6
	movs r2, #4
	ldr r0, _02256460 @ =ov56_022561C0
	lsls r1, r1, #2
	adds r3, r2, #0
	bl FUN_0200679C
	adds r6, r0, #0
	bl FUN_0201CED0
	adds r4, r0, #0
	str r5, [r4, #0xc]
	ldr r0, [r5, #8]
	str r0, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [r4, #4]
	ldr r0, [r5, #0x7c]
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	bl FUN_02025E38
	str r0, [r4, #0x10]
	movs r0, #0
	movs r1, #0xa5
	str r0, [r4]
	lsls r1, r1, #2
	str r6, [r4, r1]
	adds r5, #0x80
	ldr r2, [r5]
	ldr r0, _02256464 @ =0x000004DC
	subs r1, #0x24
	ldr r0, [r2, r0]
	str r0, [r4, r1]
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_02256460: .4byte ov56_022561C0
_02256464: .4byte 0x000004DC
	thumb_func_end ov56_02256410

	thumb_func_start ov56_02256468
ov56_02256468: @ 0x02256468
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _022564DE
	ldr r0, [r6, #0x14]
	str r0, [sp]
	movs r0, #3
	str r0, [r6]
	movs r0, #1
	bl FUN_02002C28
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r7, #0x55
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_0225649C:
	ldr r0, [r5, r7]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225649C
	ldr r0, [r6, #0x28]
	bl FUN_02021964
	ldr r0, [r6, #0x1c]
	bl FUN_0200B190
	ldr r0, [r6, #0x18]
	bl FUN_0200B3F0
	movs r0, #0x72
	lsls r0, r0, #2
	adds r0, r6, r0
	bl ov56_022563E8
	ldr r0, [sp]
	bl ov56_022564E4
	ldr r0, [r6, #0x20]
	bl FUN_020181C4
	movs r0, #0xa5
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_020067D0
	pop {r3, r4, r5, r6, r7, pc}
_022564DE:
	bl FUN_02022974
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov56_02256468

	thumb_func_start ov56_022564E4
ov56_022564E4: @ 0x022564E4
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019044
	pop {r4, pc}
	thumb_func_end ov56_022564E4

	thumb_func_start ov56_02256508
ov56_02256508: @ 0x02256508
	push {r3, r4, r5, lr}
	sub sp, #0x80
	adds r4, r0, #0
	bl ov56_022564E4
	ldr r5, _02256624 @ =0x022572D4
	add r3, sp, #0x64
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #4
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	ldr r5, _02256628 @ =0x0225729C
	add r3, sp, #0x48
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #5
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019EBC
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	ldr r5, _0225662C @ =0x02257280
	add r3, sp, #0x2c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #6
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r5, _02256630 @ =0x022572B8
	add r3, sp, #0x10
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #7
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0x60
	movs r1, #0
	str r0, [sp]
	movs r2, #4
	movs r0, #0x4a
	adds r3, r1, #0
	str r2, [sp, #4]
	bl FUN_02006E84
	movs r0, #0
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #0xa
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #4
	str r0, [sp, #0xc]
	movs r0, #0x4a
	movs r1, #2
	adds r2, r4, #0
	movs r3, #7
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #4
	movs r0, #0x4a
	adds r2, r4, #0
	movs r3, #7
	str r1, [sp, #0xc]
	bl FUN_02006E60
	movs r0, #4
	movs r1, #0
	bl FUN_0205D8CC
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02256624: .4byte 0x022572D4
_02256628: .4byte 0x0225729C
_0225662C: .4byte 0x02257280
_02256630: .4byte 0x022572B8
	thumb_func_end ov56_02256508

	thumb_func_start ov56_02256634
ov56_02256634: @ 0x02256634
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	adds r1, r6, #0
	movs r0, #0xa
	adds r1, #0x2c
	movs r2, #4
	bl FUN_020095C4
	movs r7, #0x55
	str r0, [r6, #0x28]
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_02256650:
	movs r0, #1
	adds r1, r4, #0
	movs r2, #4
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _02256650
	ldr r0, _02256700 @ =0x000003E7
	movs r1, #0x4a
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r2, #5
	movs r3, #1
	bl FUN_0200985C
	movs r1, #0x59
	lsls r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _02256700 @ =0x000003E7
	movs r2, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r2, [sp, #8]
	movs r0, #4
	subs r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	movs r1, #0x4a
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _02256700 @ =0x000003E7
	subs r1, #0xc
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	movs r1, #0x4a
	movs r2, #6
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _02256700 @ =0x000003E7
	subs r1, #0xc
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	movs r1, #0x4a
	movs r2, #7
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r6, r1]
	subs r1, #0xc
	ldr r0, [r6, r1]
	bl FUN_0200A3DC
	movs r0, #0x5a
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A640
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256700: .4byte 0x000003E7
	thumb_func_end ov56_02256634

	thumb_func_start ov56_02256704
ov56_02256704: @ 0x02256704
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	ldr r1, _022567DC @ =0x000003E7
	adds r5, r0, #0
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r3, #0x55
	str r0, [sp, #0x10]
	lsls r3, r3, #2
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r5, r2]
	adds r3, #0x20
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, r3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_020093B4
	ldr r0, [r5, #0x28]
	movs r4, #0
	str r0, [sp, #0x2c]
	movs r0, #0x5d
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	movs r7, #0x3f
	str r4, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r4, [r0, #0x20]
	movs r0, #2
	str r0, [sp, #0x54]
	movs r0, #4
	ldr r6, _022567E0 @ =0x02257238
	str r4, [sp, #0x50]
	str r0, [sp, #0x58]
	lsls r7, r7, #0x18
_02256778:
	movs r0, #0x3a
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	ldr r0, [r6]
	cmp r0, #0
	ble _02256794
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	adds r0, r7, #0
	blx FUN_020E0B00
	b _022567A0
_02256794:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r7, #0
	blx FUN_020E1A9C
_022567A0:
	blx FUN_020E1740
	movs r1, #3
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_02021D6C
	adds r4, r4, #1
	adds r6, r6, #4
	adds r5, r5, #4
	cmp r4, #3
	blt _02256778
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022567DC: .4byte 0x000003E7
_022567E0: .4byte 0x02257238
	thumb_func_end ov56_02256704

	thumb_func_start ov56_022567E4
ov56_022567E4: @ 0x022567E4
	adds r1, r1, #1
	cmp r1, #0x1e
	bne _022567EC
	movs r1, #0
_022567EC:
	adds r0, r1, #0
	bx lr
	thumb_func_end ov56_022567E4

	thumb_func_start ov56_022567F0
ov56_022567F0: @ 0x022567F0
	adds r0, r0, r1
	cmp r0, #0x1e
	blt _022567F8
	subs r0, #0x1e
_022567F8:
	bx lr
	.align 2, 0
	thumb_func_end ov56_022567F0

	thumb_func_start ov56_022567FC
ov56_022567FC: @ 0x022567FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r3, r1, #0
	adds r5, r0, #0
	adds r4, r3, #0
	movs r0, #0x38
	muls r4, r0, r4
	movs r0, #0x7e
	adds r6, r2, #0
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r6, #0x10]
	movs r2, #8
	str r0, [r1, r4]
	movs r0, #0x20
	str r0, [sp]
	str r2, [sp, #4]
	ldr r2, [r5, #0x24]
	movs r7, #0
	adds r2, #0xc
	str r2, [sp, #8]
	str r7, [sp, #0xc]
	ldr r2, [r1, r4]
	movs r1, #0x18
	muls r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r0, #0x30
	str r0, [sp, #0x18]
	lsls r3, r3, #0x1b
	ldr r0, [r5, #0x14]
	movs r1, #7
	adds r2, r7, #0
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	movs r0, #0x72
	lsls r0, r0, #2
	adds r7, r5, r0
	adds r0, r7, r4
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x1c]
	adds r0, r0, r4
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x7a
	lsls r0, r0, #2
	adds r5, r5, r0
	adds r0, r5, r4
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022568DC @ =0x00010200
	movs r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r6]
	adds r0, r7, r4
	bl FUN_0201D78C
	movs r0, #6
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022568DC @ =0x00010200
	movs r3, #0
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r2, [r6, #4]
	adds r0, r0, r4
	movs r1, #1
	bl FUN_0201D78C
	adds r0, r7, r4
	bl FUN_0201A9A4
	ldr r0, [sp, #0x1c]
	adds r0, r0, r4
	bl FUN_0201A9A4
	ldr r2, [r6, #8]
	cmp r2, #0
	beq _022568D2
	movs r1, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022568DC @ =0x00010200
	movs r3, #0
	str r0, [sp, #8]
	adds r0, r5, r4
	str r3, [sp, #0xc]
	bl FUN_0201D78C
_022568D2:
	adds r0, r5, r4
	bl FUN_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022568DC: .4byte 0x00010200
	thumb_func_end ov56_022567FC

	thumb_func_start ov56_022568E0
ov56_022568E0: @ 0x022568E0
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x27
	adds r5, r0, #0
	lsls r1, r1, #4
	adds r0, r1, #0
	ldr r2, [r5, r1]
	adds r1, #8
	adds r0, #0xdc
	ldrh r1, [r5, r1]
	ldr r0, [r2, r0]
	bl ov56_022567F0
	adds r6, r0, #0
	movs r0, #0x27
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	adds r0, #0xd8
	ldr r7, [r1, r0]
	cmp r7, #3
	ble _0225690A
	movs r7, #3
_0225690A:
	movs r0, #0x9e
	lsls r0, r0, #2
	ldrh r1, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r1, r0
	beq _02256928
	adds r0, r5, #0
	bl ov56_02257100
	movs r0, #0x9e
	lsls r0, r0, #2
	ldrh r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
_02256928:
	movs r0, #0xa1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02256992
	movs r4, #0
	cmp r7, #0
	ble _02256960
_02256938:
	movs r2, #0x27
	lsls r2, r2, #4
	movs r3, #0x1c
	ldr r2, [r5, r2]
	muls r3, r6, r3
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r2, r3
	bl ov56_022567FC
	movs r0, #0x27
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl ov56_022567E4
	adds r4, r4, #1
	adds r6, r0, #0
	cmp r4, r7
	blt _02256938
_02256960:
	ldr r0, [r5, #0x14]
	movs r1, #7
	bl FUN_02019FE4
	movs r1, #6
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [r5, #0x14]
	movs r1, #7
	bl FUN_02019FE4
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r3, #6
	ldr r0, [r5, #0x14]
	movs r1, #7
	lsls r3, r3, #8
	bl FUN_02019460
	movs r0, #0xa1
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_02256992:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov56_022568E0

	thumb_func_start ov56_02256994
ov56_02256994: @ 0x02256994
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0x3a
	lsls r0, r0, #0xe
	str r0, [sp]
	cmp r1, #0
	ble _022569B6
	lsls r0, r1, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _022569C4
_022569B6:
	lsls r0, r1, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_022569C4:
	blx FUN_020E1740
	movs r1, #3
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov56_02256994

	thumb_func_start ov56_022569E0
ov56_022569E0: @ 0x022569E0
	push {r4, lr}
	movs r1, #0x27
	adds r4, r0, #0
	lsls r1, r1, #4
	adds r0, r1, #0
	ldr r2, [r4, r1]
	adds r0, #0xd8
	ldr r2, [r2, r0]
	adds r0, r1, #4
	strh r2, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #3
	bls _02256A14
	adds r0, r1, #6
	ldrh r0, [r4, r0]
	cmp r0, #3
	bhi _02256A14
	adds r0, r1, #0
	movs r2, #1
	adds r0, #0xa
	strh r2, [r4, r0]
	adds r0, r1, #4
	ldrh r0, [r4, r0]
	adds r1, #8
	subs r0, r0, #3
	strh r0, [r4, r1]
_02256A14:
	movs r1, #0x1a
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	adds r1, #0xda
	ldrh r1, [r4, r1]
	bl FUN_02021CAC
	ldr r0, _02256A64 @ =0x0000027A
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _02256A56
	adds r0, r4, #0
	bl ov56_02257184
	cmp r0, #1
	bne _02256A56
	movs r1, #0x9e
	lsls r1, r1, #2
	ldrh r2, [r4, r1]
	subs r1, r1, #4
	ldrh r1, [r4, r1]
	movs r0, #0x60
	muls r0, r2, r0
	subs r1, r1, #3
	blx FUN_020E1F6C
	adds r1, r0, #0
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	adds r1, #0x30
	bl ov56_02256994
_02256A56:
	movs r0, #0x9d
	lsls r0, r0, #2
	ldrh r1, [r4, r0]
	adds r0, r0, #2
	strh r1, [r4, r0]
	pop {r4, pc}
	nop
_02256A64: .4byte 0x0000027A
	thumb_func_end ov56_022569E0

	thumb_func_start ov56_02256A68
ov56_02256A68: @ 0x02256A68
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02256BB0 @ =0x02257264
	bl FUN_02022644
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov56_02257174
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r7, r0
	beq _02256A9E
	cmp r7, #0
	beq _02256A92
	cmp r7, #1
	beq _02256AC4
	cmp r7, #5
	beq _02256AFA
	b _02256B04
_02256A92:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov56_0225718C
	cmp r4, #1
	beq _02256AA0
_02256A9E:
	b _02256BAC
_02256AA0:
	movs r0, #0x9e
	lsls r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _02256ABA
	ldr r0, _02256BB4 @ =0x000005E5
	bl FUN_02005748
	movs r0, #0x9e
	lsls r0, r0, #2
	ldrh r1, [r5, r0]
	subs r1, r1, #1
	strh r1, [r5, r0]
_02256ABA:
	movs r0, #0x71
	subs r1, r7, #2
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02256BAC
_02256AC4:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov56_0225718C
	cmp r4, #1
	bne _02256BAC
	movs r0, #0x9e
	lsls r0, r0, #2
	ldrh r1, [r5, r0]
	subs r0, r0, #4
	ldrh r0, [r5, r0]
	subs r0, r0, #3
	cmp r1, r0
	bge _02256AF0
	ldr r0, _02256BB4 @ =0x000005E5
	bl FUN_02005748
	movs r0, #0x9e
	lsls r0, r0, #2
	ldrh r1, [r5, r0]
	adds r1, r1, #1
	strh r1, [r5, r0]
_02256AF0:
	movs r0, #0x71
	subs r1, r7, #2
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02256BAC
_02256AFA:
	movs r0, #0x71
	subs r1, r7, #2
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _02256BAC
_02256B04:
	ldr r0, _02256BB8 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02256BAC
	movs r2, #0x27
	lsls r2, r2, #4
	adds r1, r2, #0
	ldr r0, [r5, r2]
	adds r1, #0xd8
	ldr r3, [r0, r1]
	subs r1, r7, #1
	cmp r3, r1
	blt _02256BA4
	adds r1, r2, #0
	adds r1, #0xdc
	adds r2, #8
	ldr r0, [r0, r1]
	ldrh r1, [r5, r2]
	adds r1, r1, r7
	subs r1, r1, #2
	bl ov56_022567F0
	movs r1, #0x1c
	movs r4, #0
	muls r1, r0, r1
	adds r6, r4, #0
	str r1, [sp]
_02256B3A:
	adds r0, r4, #0
	bl FUN_02033F3C
	cmp r0, #0
	beq _02256B76
	ldr r1, [r5, #4]
	adds r0, #0x50
	adds r1, r1, r6
	ldrb r1, [r1, #0xd]
	cmp r1, #2
	bne _02256B76
	movs r1, #0x27
	lsls r1, r1, #4
	ldr r2, [r5, r1]
	ldr r1, [sp]
	ldr r0, [r0]
	adds r1, r1, r2
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bne _02256B76
	ldr r0, _02256BB4 @ =0x000005E5
	bl FUN_02005748
	movs r1, #0x18
	ldr r2, [r5, #4]
	muls r1, r4, r1
	movs r0, #1
	adds r1, r2, r1
	strb r0, [r1, #0xf]
	b _02256B7E
_02256B76:
	adds r4, r4, #1
	adds r6, #0x18
	cmp r4, #0xa
	blt _02256B3A
_02256B7E:
	bl FUN_02033F9C
	bl FUN_02025F20
	movs r1, #0x27
	lsls r1, r1, #4
	ldr r2, [r5, r1]
	ldr r1, [sp]
	adds r1, r2, r1
	ldr r1, [r1, #0xc]
	cmp r1, r0
	bne _02256BA4
	ldr r0, _02256BB4 @ =0x000005E5
	bl FUN_02005748
	ldr r1, [r5, #4]
	ldr r0, _02256BBC @ =0x000004BF
	movs r2, #1
	strb r2, [r1, r0]
_02256BA4:
	movs r0, #0x71
	subs r1, r7, #2
	lsls r0, r0, #2
	str r1, [r5, r0]
_02256BAC:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256BB0: .4byte 0x02257264
_02256BB4: .4byte 0x000005E5
_02256BB8: .4byte 0x021BF6BC
_02256BBC: .4byte 0x000004BF
	thumb_func_end ov56_02256A68

	thumb_func_start ov56_02256BC0
ov56_02256BC0: @ 0x02256BC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, _02256C80 @ =0x02257250
	bl FUN_02022644
	movs r1, #0
	mvns r1, r1
	str r0, [sp]
	cmp r0, r1
	beq _02256C70
	cmp r0, #0
	bne _02256C3A
	adds r0, r7, #0
	movs r1, #0
	bl ov56_0225717C
	add r0, sp, #8
	add r1, sp, #4
	bl FUN_020227A4
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	ldr r1, [sp, #4]
	bl ov56_02256994
	movs r0, #0x9d
	lsls r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #3
	bls _02256C78
	subs r4, r0, #2
	movs r0, #0x60
	adds r1, r4, #0
	blx FUN_020E1F6C
	movs r1, #0
	cmp r4, #0
	ble _02256C78
	ldr r5, [sp, #4]
	adds r2, r1, #0
	adds r3, r1, #0
_02256C16:
	adds r6, r2, #0
	adds r6, #0x30
	cmp r5, r6
	blo _02256C2E
	adds r6, r3, r0
	adds r6, #0x30
	cmp r5, r6
	bhs _02256C2E
	movs r0, #0x9e
	lsls r0, r0, #2
	strh r1, [r7, r0]
	b _02256C78
_02256C2E:
	adds r1, r1, #1
	adds r2, r2, r0
	adds r3, r3, r0
	cmp r1, r4
	blt _02256C16
	b _02256C78
_02256C3A:
	movs r1, #0x27
	lsls r1, r1, #4
	adds r0, r1, #0
	ldr r2, [r7, r1]
	adds r0, #0xd8
	ldr r2, [r2, r0]
	ldr r0, [sp]
	cmp r2, r0
	blt _02256C78
	adds r0, r1, #0
	subs r0, #0xac
	ldr r2, [r7, r0]
	ldr r0, [sp]
	subs r3, r0, #1
	cmp r2, r3
	bne _02256C78
	subs r1, #0x74
	adds r2, r7, r1
	movs r0, #0x38
	adds r1, r3, #0
	muls r1, r0, r1
	ldr r0, [r2, r1]
	cmp r0, #5
	bge _02256C78
	adds r0, r0, #1
	str r0, [r2, r1]
	b _02256C78
_02256C70:
	adds r0, r7, #0
	movs r1, #1
	bl ov56_0225717C
_02256C78:
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02256C80: .4byte 0x02257250
	thumb_func_end ov56_02256BC0

	thumb_func_start ov56_02256C84
ov56_02256C84: @ 0x02256C84
	push {r4, lr}
	ldr r1, _02256CFC @ =0x021BF67C
	adds r4, r0, #0
	ldr r3, [r1, #0x44]
	movs r1, #2
	lsls r1, r1, #8
	adds r2, r3, #0
	tst r2, r1
	beq _02256CC6
	movs r1, #0
	bl ov56_0225718C
	ldr r0, _02256CFC @ =0x021BF67C
	movs r1, #2
	ldr r0, [r0, #0x4c]
	lsls r1, r1, #8
	tst r0, r1
	beq _02256CF8
	adds r0, r1, #0
	adds r0, #0x78
	ldrh r0, [r4, r0]
	cmp r0, #0
	beq _02256CF8
	adds r0, r1, #0
	adds r0, #0x78
	ldrh r0, [r4, r0]
	adds r1, #0x78
	subs r0, r0, #1
	strh r0, [r4, r1]
	ldr r0, _02256D00 @ =0x000005E5
	bl FUN_02005748
	pop {r4, pc}
_02256CC6:
	lsrs r1, r1, #1
	tst r1, r3
	beq _02256CF8
	movs r1, #1
	bl ov56_0225718C
	ldr r0, _02256CFC @ =0x021BF67C
	ldr r1, [r0, #0x4c]
	movs r0, #1
	lsls r0, r0, #8
	tst r0, r1
	beq _02256CF8
	movs r0, #0x9e
	lsls r0, r0, #2
	subs r1, r0, #4
	ldrh r1, [r4, r1]
	ldrh r2, [r4, r0]
	subs r1, r1, #3
	cmp r2, r1
	bge _02256CF8
	adds r1, r2, #1
	strh r1, [r4, r0]
	ldr r0, _02256D00 @ =0x000005E5
	bl FUN_02005748
_02256CF8:
	pop {r4, pc}
	nop
_02256CFC: .4byte 0x021BF67C
_02256D00: .4byte 0x000005E5
	thumb_func_end ov56_02256C84

	thumb_func_start ov56_02256D04
ov56_02256D04: @ 0x02256D04
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r4, #0
	mvns r4, r4
	bl FUN_020509A4
	cmp r0, #0
	bne _02256D3A
	adds r0, r5, #0
	bl ov56_02256A68
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov56_02256BC0
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	bne _02256D3A
	cmp r4, r0
	bne _02256D3A
	adds r0, r5, #0
	bl ov56_02256C84
_02256D3A:
	movs r2, #0x27
	lsls r2, r2, #4
	adds r0, r2, #0
	ldr r1, [r5, r2]
	adds r0, #0xd8
	ldr r0, [r1, r0]
	subs r3, r4, #1
	str r0, [sp]
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r5, r0
	str r0, [sp, #4]
	subs r2, #0xa8
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x24]
	adds r2, r5, r2
	bl ov56_02256D64
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov56_02256D04

	thumb_func_start ov56_02256D64
ov56_02256D64: @ 0x02256D64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x20]
	adds r5, r2, #0
	movs r1, #0
	str r0, [sp, #0x40]
	ldr r4, [sp, #0x44]
	cmp r0, #3
	ble _02256D7E
	movs r0, #3
	str r0, [sp, #0x40]
_02256D7E:
	ldr r2, [sp, #0x40]
	movs r0, #0
	cmp r2, #0
	ble _02256DA4
	adds r2, r5, #0
_02256D88:
	cmp r3, r0
	beq _02256D96
	ldr r6, [r2, #0x34]
	cmp r6, #0
	beq _02256D96
	subs r6, r6, #1
	str r6, [r2, #0x34]
_02256D96:
	ldr r6, [r2, #0x34]
	adds r0, r0, #1
	adds r1, r1, r6
	ldr r6, [sp, #0x40]
	adds r2, #0x38
	cmp r0, r6
	blt _02256D88
_02256DA4:
	cmp r1, #0
	bne _02256DB4
	ldr r0, [r4]
	cmp r0, #0
	bne _02256DB4
	add sp, #0x28
	str r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02256DB4:
	ldr r0, [sp, #0x40]
	str r1, [r4]
	movs r4, #0
	cmp r0, #0
	ble _02256E2A
	ldr r0, [sp, #0x20]
	adds r7, r4, #0
	adds r0, #0xc
	str r0, [sp, #0x20]
_02256DC6:
	ldr r1, [r5, #0x34]
	lsls r3, r7, #0x18
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x20
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	lsrs r3, r3, #0x18
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	ldr r1, [r5, #0x30]
	lsls r2, r0, #3
	movs r0, #0x18
	muls r0, r1, r0
	adds r0, r2, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	movs r0, #0x20
	str r0, [sp, #0x14]
	movs r0, #0x30
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	movs r1, #7
	movs r2, #0
	bl FUN_020198E8
	ldr r3, [sp, #0x24]
	adds r1, r4, #4
	lsls r6, r3, #2
	ldr r3, _02256E58 @ =0x02257244
	lsls r1, r1, #0x18
	ldr r0, [sp, #0x1c]
	ldr r3, [r3, r6]
	lsrs r1, r1, #0x18
	movs r2, #3
	bl FUN_02019184
	ldr r0, [sp, #0x40]
	adds r4, r4, #1
	adds r5, #0x38
	adds r7, #8
	cmp r4, r0
	blt _02256DC6
_02256E2A:
	ldr r0, [sp, #0x1c]
	movs r1, #7
	bl FUN_02019FE4
	movs r1, #6
	lsls r1, r1, #8
	blx FUN_020C2C54
	ldr r0, [sp, #0x1c]
	movs r1, #7
	bl FUN_02019FE4
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r3, #6
	ldr r0, [sp, #0x1c]
	movs r1, #7
	lsls r3, r3, #8
	bl FUN_02019460
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256E58: .4byte 0x02257244
	thumb_func_end ov56_02256D64

	thumb_func_start ov56_02256E5C
ov56_02256E5C: @ 0x02256E5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	movs r4, #0
	ldr r0, [sp, #0x28]
	adds r5, r1, #0
	adds r7, r2, #0
	str r3, [sp, #8]
	str r4, [sp, #0xc]
	bl FUN_02025F20
	cmp r5, r0
	beq _02256E80
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_020280E0
	adds r4, r0, #0
_02256E80:
	cmp r4, #0
	ble _02256EE0
	cmp r4, #1
	bne _02256E94
	ldr r2, [sp, #0x28]
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0200B498
	b _02256ED2
_02256E94:
	cmp r4, #2
	blt _02256ED2
	subs r5, r4, #2
	movs r0, #0xa
	movs r1, #0x59
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_02027FBC
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02023D28
	adds r0, r6, #0
	adds r1, r5, #0
	bl FUN_02027FC4
	movs r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r4, #0
	bl FUN_020237BC
_02256ED2:
	ldr r1, [sp, #8]
	adds r0, r7, #0
	movs r2, #0xd0
	movs r3, #0x59
	bl FUN_0200B29C
	str r0, [sp, #0xc]
_02256EE0:
	ldr r0, [sp, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov56_02256E5C

	thumb_func_start ov56_02256EE8
ov56_02256EE8: @ 0x02256EE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r6, r2, #0
	ldr r2, [r7, #4]
	ldr r0, _02256FC4 @ =0x000004D8
	str r1, [sp, #4]
	movs r1, #0x27
	ldr r0, [r2, r0]
	lsls r1, r1, #4
	str r0, [sp, #0xc]
	adds r0, r1, #0
	ldr r4, [r7, r1]
	adds r0, #0xd8
	ldr r0, [r4, r0]
	str r3, [sp, #8]
	cmp r0, #0x1e
	bne _02256F10
	adds r1, #0xdc
	b _02256F12
_02256F10:
	adds r1, #0xd8
_02256F12:
	adds r5, r4, r1
	ldr r1, [r5]
	movs r0, #0x1c
	muls r0, r1, r0
	adds r0, r4, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02256F26
	bl FUN_020237BC
_02256F26:
	ldr r1, [r5]
	movs r0, #0x1c
	muls r0, r1, r0
	adds r0, r4, r0
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _02256F38
	bl FUN_020237BC
_02256F38:
	ldr r0, [sp, #8]
	bl FUN_02025EF0
	adds r1, r0, #0
	ldr r2, [r5]
	movs r0, #0x1c
	muls r0, r2, r0
	ldr r0, [r4, r0]
	bl FUN_02023D28
	ldr r0, [r5]
	movs r1, #0x1c
	adds r2, r0, #0
	muls r2, r1, r2
	adds r0, r4, r2
	ldrh r2, [r6]
	strh r2, [r0, #0x14]
	ldrh r2, [r6, #2]
	strh r2, [r0, #0x16]
	ldrh r2, [r6, #4]
	strh r2, [r0, #0x18]
	ldrh r2, [r6, #6]
	strh r2, [r0, #0x1a]
	ldr r0, [r5]
	muls r1, r0, r1
	ldr r0, [sp, #4]
	adds r1, r4, r1
	str r0, [r1, #0xc]
	ldr r0, [sp, #8]
	bl FUN_02025F30
	ldr r2, [r5]
	movs r1, #0x1c
	muls r1, r2, r1
	adds r1, r4, r1
	str r0, [r1, #0x10]
	adds r0, r6, #0
	movs r1, #0x59
	bl FUN_02014B34
	ldr r2, [r5]
	movs r1, #0x1c
	muls r1, r2, r1
	adds r1, r4, r1
	str r0, [r1, #4]
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [r7, #0x18]
	ldr r3, [r7, #0x1c]
	bl ov56_02256E5C
	ldr r2, [r5]
	movs r1, #0x1c
	muls r1, r2, r1
	adds r1, r4, r1
	str r0, [r1, #8]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	movs r0, #0xd3
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0x1e
	bne _02256FC0
	movs r1, #0
	str r1, [r4, r0]
_02256FC0:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02256FC4: .4byte 0x000004D8
	thumb_func_end ov56_02256EE8

	thumb_func_start ov56_02256FC8
ov56_02256FC8: @ 0x02256FC8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, r1, #0
	str r1, [sp]
	adds r7, r2, #0
	bl FUN_02014BBC
	cmp r0, #0
	bne _02256FDE
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02256FDE:
	movs r1, #0x27
	lsls r1, r1, #4
	ldr r0, [r6, r1]
	adds r1, #0xd8
	ldr r1, [r0, r1]
	movs r4, #0
	cmp r1, #0
	ble _02257018
	adds r5, r4, #0
_02256FF0:
	adds r1, r0, r5
	ldr r0, [r1, #0xc]
	cmp r7, r0
	bne _02257004
	ldr r0, [sp]
	adds r1, #0x14
	bl FUN_02014C88
	cmp r0, #0
	bne _02257018
_02257004:
	movs r0, #0x27
	lsls r0, r0, #4
	movs r1, #0xd2
	ldr r0, [r6, r0]
	lsls r1, r1, #2
	ldr r1, [r0, r1]
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, r1
	blt _02256FF0
_02257018:
	movs r0, #0x27
	lsls r0, r0, #4
	ldr r1, [r6, r0]
	adds r0, #0xd8
	ldr r0, [r1, r0]
	cmp r4, r0
	beq _0225702E
	cmp r0, #0
	beq _0225702E
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225702E:
	movs r0, #0x1c
	muls r0, r4, r0
	adds r1, r1, r0
	ldr r0, [r1, #0xc]
	cmp r7, r0
	beq _02257042
	ldr r0, [sp]
	adds r1, #0x14
	bl FUN_02014C88
_02257042:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov56_02256FC8

	thumb_func_start ov56_02257048
ov56_02257048: @ 0x02257048
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	movs r1, #0x9e
	adds r4, r0, #0
	lsls r1, r1, #2
	ldrh r0, [r4, r1]
	subs r1, r1, #4
	ldrh r1, [r4, r1]
	movs r5, #0
	subs r1, r1, #3
	cmp r0, r1
	bne _02257062
	movs r5, #1
_02257062:
	adds r1, r3, #0
	adds r0, r4, #0
	adds r3, r6, #0
	bl ov56_02256EE8
	ldr r1, _02257094 @ =0x0000027A
	ldrh r0, [r4, r1]
	cmp r0, #0
	beq _0225708A
	cmp r5, #0
	beq _0225708A
	adds r0, r1, #0
	subs r0, #0xa
	ldr r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0xce
	ldr r0, [r2, r0]
	subs r2, r0, #3
	subs r0, r1, #2
	strh r2, [r4, r0]
_0225708A:
	adds r0, r4, #0
	bl ov56_02257100
	pop {r4, r5, r6, pc}
	nop
_02257094: .4byte 0x0000027A
	thumb_func_end ov56_02257048

	thumb_func_start ov56_02257098
ov56_02257098: @ 0x02257098
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_020509A4
	cmp r0, #0
	bne _022570FC
	movs r4, #0
_022570A8:
	adds r0, r4, #0
	bl FUN_02033F3C
	adds r2, r0, #0
	beq _022570DA
	adds r6, r2, #0
	adds r6, #0x50
	adds r7, r6, #0
	adds r7, #8
	ldr r2, [r2, #0x50]
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov56_02256FC8
	cmp r0, #0
	beq _022570DA
	adds r0, r4, #0
	bl FUN_02033FB0
	adds r1, r0, #0
	ldr r3, [r6]
	adds r0, r5, #0
	adds r2, r7, #0
	bl ov56_02257048
_022570DA:
	adds r4, r4, #1
	cmp r4, #0x10
	blt _022570A8
	ldr r0, [r5, #8]
	bl FUN_0205C028
	adds r4, r0, #0
	beq _022570FC
	ldr r0, [r5, #0x10]
	bl FUN_02025F20
	adds r3, r0, #0
	ldr r1, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov56_02257048
_022570FC:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov56_02257098

	thumb_func_start ov56_02257100
ov56_02257100: @ 0x02257100
	movs r1, #0xa1
	movs r2, #1
	lsls r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov56_02257100

	thumb_func_start ov56_0225710C
ov56_0225710C: @ 0x0225710C
	movs r1, #0xa2
	movs r2, #0
	lsls r1, r1, #2
	strb r2, [r0, r1]
	movs r3, #8
	adds r2, r1, #2
	strb r3, [r0, r2]
	movs r3, #4
	adds r2, r1, #3
	strb r3, [r0, r2]
	adds r2, r1, #2
	ldrb r2, [r0, r2]
	adds r1, r1, #1
	strb r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov56_0225710C

	thumb_func_start ov56_0225712C
ov56_0225712C: @ 0x0225712C
	movs r2, #0xa2
	movs r1, #0
	lsls r2, r2, #2
	strb r1, [r0, r2]
	ldr r1, _02257170 @ =0x021BF6BC
	ldrh r3, [r1, #0x20]
	cmp r3, #0
	beq _02257142
	movs r1, #1
	strb r1, [r0, r2]
	bx lr
_02257142:
	ldrh r1, [r1, #0x22]
	cmp r1, #0
	beq _02257166
	adds r1, r2, #1
	ldrsb r1, [r0, r1]
	subs r3, r1, #1
	adds r1, r2, #1
	strb r3, [r0, r1]
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _0225716E
	movs r1, #1
	strb r1, [r0, r2]
	adds r1, r2, #3
	ldrb r3, [r0, r1]
	adds r1, r2, #1
	strb r3, [r0, r1]
	bx lr
_02257166:
	adds r1, r2, #2
	ldrb r3, [r0, r1]
	adds r1, r2, #1
	strb r3, [r0, r1]
_0225716E:
	bx lr
	.align 2, 0
_02257170: .4byte 0x021BF6BC
	thumb_func_end ov56_0225712C

	thumb_func_start ov56_02257174
ov56_02257174: @ 0x02257174
	movs r1, #0xa2
	lsls r1, r1, #2
	ldrb r0, [r0, r1]
	bx lr
	thumb_func_end ov56_02257174

	thumb_func_start ov56_0225717C
ov56_0225717C: @ 0x0225717C
	movs r2, #0xa3
	lsls r2, r2, #2
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov56_0225717C

	thumb_func_start ov56_02257184
ov56_02257184: @ 0x02257184
	movs r1, #0xa3
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov56_02257184

	thumb_func_start ov56_0225718C
ov56_0225718C: @ 0x0225718C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x66
	adds r5, r1, #0
	lsls r0, r0, #2
	adds r4, r7, r0
	lsls r6, r5, #2
	ldr r0, [r4, r6]
	bl FUN_02021E74
	str r0, [sp]
	ldr r0, [r4, r6]
	bl FUN_02021E24
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldr r0, [sp]
	cmp r0, #1
	bhi _022571B8
	adds r0, r5, #4
	cmp r1, r0
	beq _022571C0
_022571B8:
	ldr r0, [r4, r6]
	adds r1, r5, #4
	bl FUN_02021D6C
_022571C0:
	lsls r0, r5, #1
	adds r1, r7, r0
	movs r0, #0x29
	movs r2, #1
	lsls r0, r0, #4
	strh r2, [r1, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov56_0225718C

	thumb_func_start ov56_022571D0
ov56_022571D0: @ 0x022571D0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r7, r6, #0
_022571DA:
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021E74
	movs r1, #0x29
	lsls r1, r1, #4
	ldrh r1, [r4, r1]
	cmp r1, #1
	bne _02257206
	cmp r0, #1
	blo _022571FE
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02021CC8
_022571FE:
	movs r0, #0x29
	lsls r0, r0, #4
	strh r7, [r4, r0]
	b _0225722C
_02257206:
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02021D3C
	cmp r0, #0
	bne _0225722C
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #2
	bl FUN_02021E50
_0225722C:
	adds r6, r6, #1
	adds r5, r5, #4
	adds r4, r4, #2
	cmp r6, #2
	blt _022571DA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov56_022571D0
	@ 0x02257238
