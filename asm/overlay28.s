
	thumb_func_start ov28_022561C0
ov28_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov28_022561D4
	ldr r1, _022561D0 @ =ov28_02256324
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov28_022561D4
_022561D0: .4byte ov28_02256324
	thumb_func_end ov28_022561C0

	thumb_func_start ov28_022561D4
ov28_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0x28
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256208
	ldr r1, [sp]
	adds r2, r7, #0
	bl ov28_02256210
	cmp r0, #0
	beq _02256208
	ldr r0, _0225620C @ =ov28_022562CC
	str r6, [r4, #0x10]
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0200D9E8
	str r4, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02256208:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225620C: .4byte ov28_022562CC
	thumb_func_end ov28_022561D4

	thumb_func_start ov28_02256210
ov28_02256210: @ 0x02256210
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r0, #0x14
	adds r1, #0x18
	bl ov28_0225697C
	cmp r0, #0
	beq _0225628A
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #3]
	strb r0, [r4, #2]
	strb r0, [r4, #4]
	movs r0, #0x11
	strh r0, [r4, #6]
	subs r0, #0x12
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x1c
	movs r1, #0xa
	bl ov28_02256E9C
	adds r0, r4, #0
	adds r0, #0x20
	movs r1, #0xa
	bl ov28_02256E9C
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #0xa
	bl ov28_02256E9C
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02256268
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _02256268
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0225626E
_02256268:
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0225626E:
	movs r0, #8
	str r0, [sp]
	ldr r0, _02256290 @ =0x02257658
	ldr r2, _02256294 @ =ov28_02256344
	movs r1, #0x11
	adds r3, r4, #0
	bl FUN_02255ACC
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _0225628A
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0225628A:
	movs r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02256290: .4byte 0x02257658
_02256294: .4byte ov28_02256344
	thumb_func_end ov28_02256210

	thumb_func_start ov28_02256298
ov28_02256298: @ 0x02256298
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022562A6
	bl ov28_02256EC0
_022562A6:
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _022562B0
	bl ov28_02256EC0
_022562B0:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	beq _022562BA
	bl ov28_02256EC0
_022562BA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022562C4
	bl FUN_02255B34
_022562C4:
	ldr r0, [r4, #0x14]
	bl ov28_022569AC
	pop {r4, pc}
	thumb_func_end ov28_02256298

	thumb_func_start ov28_022562CC
ov28_022562CC: @ 0x022562CC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq _022562E4
	adds r0, r4, #0
	movs r1, #6
	bl ov28_0225632C
	movs r0, #0
	strb r0, [r4, #3]
_022562E4:
	ldrb r0, [r4]
	cmp r0, #7
	bhs _0225631E
	movs r0, #0x11
	strh r0, [r4, #6]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _02256320 @ =0x0225763C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _0225631E
	adds r0, r4, #0
	bl ov28_02256298
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	ldr r0, [r4, #0x10]
	bl FUN_02254260
_0225631E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256320: .4byte 0x0225763C
	thumb_func_end ov28_022562CC

	thumb_func_start ov28_02256324
ov28_02256324: @ 0x02256324
	movs r1, #1
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
	thumb_func_end ov28_02256324

	thumb_func_start ov28_0225632C
ov28_0225632C: @ 0x0225632C
	ldrb r2, [r0, #3]
	cmp r2, #0
	bne _02256334
	b _02256336
_02256334:
	movs r1, #6
_02256336:
	strb r1, [r0]
	ldrb r1, [r0]
	strb r1, [r0, #2]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov28_0225632C

	thumb_func_start ov28_02256344
ov28_02256344: @ 0x02256344
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r3, #0
	cmp r2, #0
	beq _02256356
	cmp r2, #1
	beq _02256362
	b _0225636C
_02256356:
	strh r5, [r4, #0x18]
	ldr r0, [r4, #0x14]
	movs r1, #2
	bl ov28_022569B8
	b _0225636C
_02256362:
	strh r5, [r4, #0x18]
	ldr r0, [r4, #0x14]
	movs r1, #1
	bl ov28_022569B8
_0225636C:
	cmp r6, #3
	bne _02256372
	strh r5, [r4, #6]
_02256372:
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02256344

	thumb_func_start ov28_02256374
ov28_02256374: @ 0x02256374
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _02256384
	cmp r0, #1
	beq _02256394
	b _022563AE
_02256384:
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022563AE
_02256394:
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl ov28_022569DC
	cmp r0, #0
	beq _022563AE
	ldr r0, [r4, #0x10]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov28_0225632C
_022563AE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov28_02256374

	thumb_func_start ov28_022563B4
ov28_022563B4: @ 0x022563B4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022563C4
	cmp r1, #1
	beq _02256468
	b _02256488
_022563C4:
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	adds r2, r1, #0
	subs r2, #0xa
	cmp r2, #7
	bhi _0225641E
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022563E0: @ jump table
	.2byte _022563FA - _022563E0 - 2 @ case 0
	.2byte _02256400 - _022563E0 - 2 @ case 1
	.2byte _02256400 - _022563E0 - 2 @ case 2
	.2byte _02256400 - _022563E0 - 2 @ case 3
	.2byte _02256400 - _022563E0 - 2 @ case 4
	.2byte _02256410 - _022563E0 - 2 @ case 5
	.2byte _022563F0 - _022563E0 - 2 @ case 6
	.2byte _02256440 - _022563E0 - 2 @ case 7
_022563F0:
	bl ov28_02256868
	movs r0, #4
	str r0, [r4, #8]
	b _02256440
_022563FA:
	movs r0, #1
	strb r0, [r4, #4]
	b _02256440
_02256400:
	strh r1, [r4, #0x1a]
	movs r0, #0
	strb r0, [r4, #4]
	movs r0, #8
	str r0, [r4, #8]
	movs r0, #2
	strb r0, [r4, #2]
	b _02256440
_02256410:
	ldr r1, [r4, #0x1c]
	bl ov28_02256914
	ldr r0, [r4, #0x1c]
	bl ov28_02256EC8
	b _02256440
_0225641E:
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0x1c]
	beq _02256434
	bl ov28_022571B8
	cmp r0, #0
	beq _02256440
	movs r0, #3
	str r0, [r4, #8]
	b _02256440
_02256434:
	bl ov28_0225717C
	cmp r0, #0
	beq _02256440
	movs r0, #3
	str r0, [r4, #8]
_02256440:
	movs r0, #0
	ldr r1, [r4, #8]
	mvns r0, r0
	cmp r1, r0
	beq _02256458
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256488
_02256458:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256488
	adds r0, r4, #0
	bl ov28_0225632C
	b _02256488
_02256468:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _02256488
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256484
	adds r0, r4, #0
	bl ov28_0225632C
	b _02256488
_02256484:
	movs r0, #0
	strb r0, [r4, #1]
_02256488:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov28_022563B4

	thumb_func_start ov28_0225648C
ov28_0225648C: @ 0x0225648C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _0225649C
	cmp r1, #1
	beq _02256564
	b _02256584
_0225649C:
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	adds r2, r1, #0
	subs r2, #0xa
	cmp r2, #7
	bhi _02256522
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022564B8: @ jump table
	.2byte _022564D6 - _022564B8 - 2 @ case 0
	.2byte _022564EA - _022564B8 - 2 @ case 1
	.2byte _022564EA - _022564B8 - 2 @ case 2
	.2byte _022564EA - _022564B8 - 2 @ case 3
	.2byte _022564EA - _022564B8 - 2 @ case 4
	.2byte _022564F2 - _022564B8 - 2 @ case 5
	.2byte _022564C8 - _022564B8 - 2 @ case 6
	.2byte _0225653C - _022564B8 - 2 @ case 7
_022564C8:
	bl ov28_02256868
	movs r0, #4
	str r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #2]
	b _0225653C
_022564D6:
	ldr r0, [r4, #0x20]
	bl ov28_02256EC8
	movs r0, #5
	str r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #4]
	movs r0, #3
	strb r0, [r4, #2]
	b _0225653C
_022564EA:
	strh r1, [r4, #0x1a]
	movs r0, #8
	str r0, [r4, #8]
	b _0225653C
_022564F2:
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov28_02256ED8
	ldrh r1, [r4, #0x1a]
	adds r0, r4, #0
	bl ov28_02256888
	cmp r0, #0
	beq _02256518
	ldr r1, [r4, #0x24]
	adds r0, r4, #0
	bl ov28_02256914
	movs r0, #6
	str r0, [r4, #8]
	movs r0, #4
	strb r0, [r4, #2]
	b _0225653C
_02256518:
	movs r0, #9
	str r0, [r4, #8]
	movs r0, #5
	strb r0, [r4, #2]
	b _0225653C
_02256522:
	ldr r0, [r4, #0x20]
	bl ov28_02256EC8
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0x20]
	bl ov28_0225717C
	cmp r0, #0
	beq _0225653C
	movs r0, #5
	str r0, [r4, #8]
	movs r0, #3
	strb r0, [r4, #2]
_0225653C:
	movs r0, #0
	ldr r1, [r4, #8]
	mvns r0, r0
	cmp r1, r0
	beq _02256554
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256584
_02256554:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256584
	adds r0, r4, #0
	bl ov28_0225632C
	b _02256584
_02256564:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _02256584
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256580
	adds r0, r4, #0
	bl ov28_0225632C
	b _02256584
_02256580:
	movs r0, #0
	strb r0, [r4, #1]
_02256584:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov28_0225648C

	thumb_func_start ov28_02256588
ov28_02256588: @ 0x02256588
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _02256598
	cmp r1, #1
	beq _0225667A
	b _0225669A
_02256598:
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	adds r2, r1, #0
	subs r2, #0xa
	cmp r2, #7
	bhi _02256630
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022565B4: @ jump table
	.2byte _022565D2 - _022565B4 - 2 @ case 0
	.2byte _022565D8 - _022565B4 - 2 @ case 1
	.2byte _022565D8 - _022565B4 - 2 @ case 2
	.2byte _022565D8 - _022565B4 - 2 @ case 3
	.2byte _022565D8 - _022565B4 - 2 @ case 4
	.2byte _02256606 - _022565B4 - 2 @ case 5
	.2byte _022565C4 - _022565B4 - 2 @ case 6
	.2byte _02256652 - _022565B4 - 2 @ case 7
_022565C4:
	bl ov28_02256868
	movs r0, #4
	str r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #2]
	b _02256652
_022565D2:
	movs r0, #1
	strb r0, [r4, #4]
	b _02256652
_022565D8:
	ldrh r1, [r4, #0x1a]
	bl ov28_02256888
	cmp r0, #0
	beq _022565FC
	ldrh r0, [r4, #6]
	strh r0, [r4, #0x1a]
	movs r0, #0
	strb r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	bl ov28_02256ED8
	movs r0, #7
	str r0, [r4, #8]
	movs r0, #2
	strb r0, [r4, #2]
	b _02256652
_022565FC:
	movs r0, #9
	str r0, [r4, #8]
	movs r0, #5
	strb r0, [r4, #2]
	b _02256652
_02256606:
	ldrh r1, [r4, #0x1a]
	bl ov28_02256888
	cmp r0, #0
	beq _02256626
	ldr r1, [r4, #0x24]
	adds r0, r4, #0
	bl ov28_02256914
	movs r0, #6
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #4]
	movs r0, #4
	strb r0, [r4, #2]
	b _02256652
_02256626:
	movs r0, #9
	str r0, [r4, #8]
	movs r0, #5
	strb r0, [r4, #2]
	b _02256652
_02256630:
	ldrb r0, [r4, #4]
	cmp r0, #0
	ldr r0, [r4, #0x20]
	beq _02256646
	bl ov28_022571B8
	cmp r0, #0
	beq _02256652
	movs r0, #5
	str r0, [r4, #8]
	b _02256652
_02256646:
	bl ov28_0225717C
	cmp r0, #0
	beq _02256652
	movs r0, #5
	str r0, [r4, #8]
_02256652:
	movs r0, #0
	ldr r1, [r4, #8]
	mvns r0, r0
	cmp r1, r0
	beq _0225666A
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225669A
_0225666A:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _0225669A
	adds r0, r4, #0
	bl ov28_0225632C
	b _0225669A
_0225667A:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _0225669A
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256696
	adds r0, r4, #0
	bl ov28_0225632C
	b _0225669A
_02256696:
	movs r0, #0
	strb r0, [r4, #1]
_0225669A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov28_02256588

	thumb_func_start ov28_022566A0
ov28_022566A0: @ 0x022566A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022566B0
	cmp r1, #1
	beq _02256784
	b _022567A4
_022566B0:
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	adds r2, r1, #0
	subs r2, #0xa
	cmp r2, #7
	bhi _02256742
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022566CC: @ jump table
	.2byte _022566EA - _022566CC - 2 @ case 0
	.2byte _022566FA - _022566CC - 2 @ case 1
	.2byte _022566FA - _022566CC - 2 @ case 2
	.2byte _022566FA - _022566CC - 2 @ case 3
	.2byte _022566FA - _022566CC - 2 @ case 4
	.2byte _02256712 - _022566CC - 2 @ case 5
	.2byte _022566DC - _022566CC - 2 @ case 6
	.2byte _0225675C - _022566CC - 2 @ case 7
_022566DC:
	bl ov28_02256868
	movs r0, #4
	str r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #2]
	b _0225675C
_022566EA:
	bl ov28_02256868
	movs r0, #3
	str r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #4]
	strb r0, [r4, #2]
	b _0225675C
_022566FA:
	strh r1, [r4, #0x1a]
	movs r0, #8
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #4]
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	bl ov28_02256ED8
	movs r0, #2
	strb r0, [r4, #2]
	b _0225675C
_02256712:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	bl ov28_02256ED8
	ldrh r1, [r4, #0x1a]
	adds r0, r4, #0
	bl ov28_02256888
	cmp r0, #0
	beq _02256738
	ldr r1, [r4, #0x24]
	adds r0, r4, #0
	bl ov28_02256914
	movs r0, #6
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r4, #4]
	b _0225675C
_02256738:
	movs r0, #9
	str r0, [r4, #8]
	movs r0, #5
	strb r0, [r4, #2]
	b _0225675C
_02256742:
	ldr r0, [r4, #0x1c]
	bl ov28_02256EC8
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0x1c]
	bl ov28_0225717C
	cmp r0, #0
	beq _02256758
	movs r0, #3
	str r0, [r4, #8]
_02256758:
	movs r0, #1
	strb r0, [r4, #2]
_0225675C:
	movs r0, #0
	ldr r1, [r4, #8]
	mvns r0, r0
	cmp r1, r0
	beq _02256774
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _022567A4
_02256774:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _022567A4
	adds r0, r4, #0
	bl ov28_0225632C
	b _022567A4
_02256784:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _022567A4
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _022567A0
	adds r0, r4, #0
	bl ov28_0225632C
	b _022567A4
_022567A0:
	movs r0, #0
	strb r0, [r4, #1]
_022567A4:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov28_022566A0

	thumb_func_start ov28_022567A8
ov28_022567A8: @ 0x022567A8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0
	beq _022567B8
	cmp r1, #1
	beq _02256842
	b _02256862
_022567B8:
	movs r1, #0
	mvns r1, r1
	str r1, [r4, #8]
	ldrh r1, [r4, #6]
	subs r1, #0xa
	cmp r1, #7
	bhi _02256800
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022567D2: @ jump table
	.2byte _022567F0 - _022567D2 - 2 @ case 0
	.2byte _0225681A - _022567D2 - 2 @ case 1
	.2byte _0225681A - _022567D2 - 2 @ case 2
	.2byte _0225681A - _022567D2 - 2 @ case 3
	.2byte _0225681A - _022567D2 - 2 @ case 4
	.2byte _0225681A - _022567D2 - 2 @ case 5
	.2byte _022567E2 - _022567D2 - 2 @ case 6
	.2byte _0225681A - _022567D2 - 2 @ case 7
_022567E2:
	bl ov28_02256868
	movs r0, #3
	str r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #2]
	b _0225681A
_022567F0:
	bl ov28_02256868
	movs r0, #3
	str r0, [r4, #8]
	movs r0, #1
	strb r0, [r4, #4]
	strb r0, [r4, #2]
	b _0225681A
_02256800:
	adds r0, r4, #0
	bl ov28_02256868
	ldrh r1, [r4, #6]
	ldr r0, [r4, #0x1c]
	bl ov28_0225717C
	cmp r0, #0
	beq _02256816
	movs r0, #3
	str r0, [r4, #8]
_02256816:
	movs r0, #1
	strb r0, [r4, #2]
_0225681A:
	movs r0, #0
	ldr r1, [r4, #8]
	mvns r0, r0
	cmp r1, r0
	beq _02256832
	ldr r0, [r4, #0x14]
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256862
_02256832:
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _02256862
	adds r0, r4, #0
	bl ov28_0225632C
	b _02256862
_02256842:
	ldr r0, [r4, #0x14]
	ldr r1, [r4, #8]
	bl ov28_022569DC
	cmp r0, #0
	beq _02256862
	ldrb r1, [r4, #2]
	ldrb r0, [r4]
	cmp r1, r0
	beq _0225685E
	adds r0, r4, #0
	bl ov28_0225632C
	b _02256862
_0225685E:
	movs r0, #0
	strb r0, [r4, #1]
_02256862:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov28_022567A8

	thumb_func_start ov28_02256868
ov28_02256868: @ 0x02256868
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	bl ov28_02256EC8
	ldr r0, [r4, #0x20]
	bl ov28_02256EC8
	ldr r0, [r4, #0x24]
	bl ov28_02256EC8
	movs r0, #0x11
	strh r0, [r4, #0x1a]
	movs r0, #0
	strb r0, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov28_02256868

	thumb_func_start ov28_02256888
ov28_02256888: @ 0x02256888
	push {r4, lr}
	subs r1, #0xb
	adds r4, r0, #0
	cmp r1, #3
	bhi _022568D4
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225689E: @ jump table
	.2byte _022568B2 - _0225689E - 2 @ case 0
	.2byte _022568A6 - _0225689E - 2 @ case 1
	.2byte _022568BE - _0225689E - 2 @ case 2
	.2byte _022568CA - _0225689E - 2 @ case 3
_022568A6:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl ov28_02256EE8
	b _022568D4
_022568B2:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl ov28_02256F74
	b _022568D4
_022568BE:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl ov28_02257028
	b _022568D4
_022568CA:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	bl ov28_02257058
_022568D4:
	ldr r0, [r4, #0x24]
	movs r1, #0xa
	bl ov28_02257240
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov28_02256888

	thumb_func_start ov28_022568E0
ov28_022568E0: @ 0x022568E0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022568F0
	cmp r0, #1
	beq _02256900
	b _0225690E
_022568F0:
	ldr r0, [r4, #0x14]
	movs r1, #0xa
	bl ov28_022569B8
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225690E
_02256900:
	ldr r0, [r4, #0x14]
	bl ov28_022569E8
	cmp r0, #0
	beq _0225690E
	movs r0, #1
	pop {r4, pc}
_0225690E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov28_022568E0

	thumb_func_start ov28_02256914
ov28_02256914: @ 0x02256914
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	bl ov28_02257468
	adds r4, r0, #0
	movs r2, #0
	movs r0, #0
	subs r0, r0, r4
	sbcs r2, r1
	bge _02256976
	movs r2, #0
	ldr r0, _02256978 @ =0x000001ED
	subs r0, r0, r4
	sbcs r2, r1
	blt _02256976
	ldr r0, [r5, #0x10]
	bl FUN_02254544
	bl FUN_02027560
	adds r5, r0, #0
	bl FUN_02027474
	cmp r0, #0
	beq _0225694E
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	b _02256958
_0225694E:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl FUN_020775C4
	adds r4, r0, #0
_02256958:
	cmp r4, #0
	beq _02256976
	ldr r0, _02256978 @ =0x000001ED
	cmp r4, r0
	bhi _02256976
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02026FE8
	cmp r0, #0
	beq _02256976
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02254444
_02256976:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02256978: .4byte 0x000001ED
	thumb_func_end ov28_02256914

	thumb_func_start ov28_0225697C
ov28_0225697C: @ 0x0225697C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r1, _022569A8 @ =0x0000048C
	movs r0, #8
	adds r7, r2, #0
	bl FUN_02018144
	adds r4, r0, #0
	beq _022569A2
	str r6, [r4]
	str r7, [r4, #4]
	adds r0, #8
	movs r1, #8
	bl FUN_02255090
	str r4, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022569A2:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022569A8: .4byte 0x0000048C
	thumb_func_end ov28_0225697C

	thumb_func_start ov28_022569AC
ov28_022569AC: @ 0x022569AC
	push {r3, lr}
	cmp r0, #0
	beq _022569B6
	bl FUN_020181C4
_022569B6:
	pop {r3, pc}
	thumb_func_end ov28_022569AC

	thumb_func_start ov28_022569B8
ov28_022569B8: @ 0x022569B8
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _022569D8 @ =0x022579C0
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_022569D8: .4byte 0x022579C0
	thumb_func_end ov28_022569B8

	thumb_func_start ov28_022569DC
ov28_022569DC: @ 0x022569DC
	ldr r3, _022569E4 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_022569E4: .4byte FUN_02255130
	thumb_func_end ov28_022569DC

	thumb_func_start ov28_022569E8
ov28_022569E8: @ 0x022569E8
	ldr r3, _022569F0 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_022569F0: .4byte FUN_02255154
	thumb_func_end ov28_022569E8

	thumb_func_start ov28_022569F4
ov28_022569F4: @ 0x022569F4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov28_022569F4

	thumb_func_start ov28_02256A08
ov28_02256A08: @ 0x02256A08
	push {r4, r5, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_02255240
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _02256A98 @ =0x0225769C
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
	movs r1, #0x10
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
	movs r1, #0x11
	movs r3, #6
	bl FUN_02006E60
	adds r0, r5, #0
	bl ov28_02256AA4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r1, _02256A9C @ =0x04001000
	ldr r0, _02256AA0 @ =0xFFFFE0FF
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
	bl ov28_022569F4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02256A98: .4byte 0x0225769C
_02256A9C: .4byte 0x04001000
_02256AA0: .4byte 0xFFFFE0FF
	thumb_func_end ov28_02256A08

	thumb_func_start ov28_02256AA4
ov28_02256AA4: @ 0x02256AA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, [r6, #4]
	movs r1, #6
	bl FUN_02019FE4
	mov ip, r0
	movs r0, #0
	ldr r3, _02256B20 @ =0x02257938
	str r0, [sp, #4]
_02256ABA:
	ldrb r7, [r3, #1]
	ldrb r0, [r3, #3]
	movs r2, #0
	adds r0, r7, r0
	cmp r7, r0
	bhs _02256B0C
	lsls r0, r7, #5
	str r0, [sp]
_02256ACA:
	ldrb r1, [r3]
	ldrb r0, [r3, #2]
	adds r0, r1, r0
	cmp r1, r0
	bhs _02256AFA
	ldr r0, [sp]
	lsls r4, r0, #1
	mov r0, ip
	adds r4, r0, r4
	lsls r0, r1, #1
	adds r4, r4, r0
_02256AE0:
	lsls r5, r2, #1
	ldrh r0, [r4]
	adds r5, r6, r5
	adds r5, #0x4c
	strh r0, [r5]
	ldrb r5, [r3]
	ldrb r0, [r3, #2]
	adds r1, r1, #1
	adds r2, r2, #1
	adds r0, r5, r0
	adds r4, r4, #2
	cmp r1, r0
	blo _02256AE0
_02256AFA:
	ldr r0, [sp]
	ldrb r1, [r3, #1]
	adds r0, #0x20
	str r0, [sp]
	ldrb r0, [r3, #3]
	adds r7, r7, #1
	adds r0, r1, r0
	cmp r7, r0
	blo _02256ACA
_02256B0C:
	ldr r0, [sp, #4]
	adds r3, r3, #4
	adds r0, r0, #1
	adds r6, #0x40
	str r0, [sp, #4]
	cmp r0, #0x11
	blo _02256ABA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02256B20: .4byte 0x02257938
	thumb_func_end ov28_02256AA4

	thumb_func_start ov28_02256B24
ov28_02256B24: @ 0x02256B24
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldrh r5, [r5]
	ldr r0, _02256B78 @ =0x00000663
	bl FUN_02254424
	lsls r3, r5, #2
	ldr r0, _02256B7C @ =0x02257939
	ldr r2, _02256B80 @ =0x0225797C
	ldrb r0, [r0, r3]
	ldr r5, _02256B84 @ =0x02257938
	ldr r2, [r2, r3]
	str r0, [sp]
	ldr r0, _02256B88 @ =0x0225793A
	movs r1, #6
	ldrb r0, [r0, r3]
	str r0, [sp, #4]
	ldr r0, _02256B8C @ =0x0225793B
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl FUN_020198C0
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r6, #0
	bl ov28_022569F4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02256B78: .4byte 0x00000663
_02256B7C: .4byte 0x02257939
_02256B80: .4byte 0x0225797C
_02256B84: .4byte 0x02257938
_02256B88: .4byte 0x0225793A
_02256B8C: .4byte 0x0225793B
	thumb_func_end ov28_02256B24

	thumb_func_start ov28_02256B90
ov28_02256B90: @ 0x02256B90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_02255240
	ldrh r5, [r0]
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	lsls r3, r5, #2
	ldr r0, _02256BE0 @ =0x02257939
	adds r2, r4, #0
	ldrb r0, [r0, r3]
	adds r2, #0x4c
	lsls r5, r5, #6
	str r0, [sp]
	ldr r0, _02256BE4 @ =0x0225793A
	adds r2, r2, r5
	ldrb r0, [r0, r3]
	ldr r5, _02256BE8 @ =0x02257938
	movs r1, #6
	str r0, [sp, #4]
	ldr r0, _02256BEC @ =0x0225793B
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	ldr r0, [r4, #4]
	bl FUN_020198C0
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r6, #0
	bl ov28_022569F4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02256BE0: .4byte 0x02257939
_02256BE4: .4byte 0x0225793A
_02256BE8: .4byte 0x02257938
_02256BEC: .4byte 0x0225793B
	thumb_func_end ov28_02256B90

	thumb_func_start ov28_02256BF0
ov28_02256BF0: @ 0x02256BF0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r5, #4]
	adds r1, #0x30
	bl ov28_0225726C
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02256BF0

	thumb_func_start ov28_02256C28
ov28_02256C28: @ 0x02256C28
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r5, #4]
	adds r1, #0x30
	bl ov28_0225726C
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	bl ov28_02256DCC
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov28_02256C28

	thumb_func_start ov28_02256C68
ov28_02256C68: @ 0x02256C68
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r5, #8]
	adds r1, #0x30
	bl ov28_0225726C
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02256C68

	thumb_func_start ov28_02256CA0
ov28_02256CA0: @ 0x02256CA0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r5, #0xc]
	adds r1, #0x30
	bl ov28_0225726C
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	bl ov28_02256DCC
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov28_02256CA0

	thumb_func_start ov28_02256CE0
ov28_02256CE0: @ 0x02256CE0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r5, #0xc]
	adds r1, #0x30
	bl ov28_0225726C
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl ov28_02256D90
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r6, #0
	bl ov28_022569F4
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02256CE0

	thumb_func_start ov28_02256D20
ov28_02256D20: @ 0x02256D20
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	movs r2, #0
	adds r1, r4, #0
	movs r0, #0xc
_02256D32:
	adds r2, r2, #1
	strh r0, [r1, #0x30]
	adds r1, r1, #2
	cmp r2, #0xa
	blo _02256D32
	lsls r0, r2, #1
	movs r1, #0xd
	adds r0, r4, r0
	strh r1, [r0, #0x30]
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #0x30
	bl ov28_02256E0C
	ldr r0, [r4, #4]
	bl ov28_02256DCC
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r5, #0
	bl ov28_022569F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov28_02256D20

	thumb_func_start ov28_02256D64
ov28_02256D64: @ 0x02256D64
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02255240
	adds r1, r0, #0
	ldr r0, [r4, #4]
	bl ov28_02256D90
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019448
	adds r0, r5, #0
	bl ov28_022569F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov28_02256D64

	thumb_func_start ov28_02256D90
ov28_02256D90: @ 0x02256D90
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r1, #0
	movs r1, #6
	adds r4, r0, #0
	bl FUN_02019FE4
	ldrh r1, [r5, #2]
	cmp r1, #0x11
	bne _02256DAE
	adds r0, r4, #0
	bl ov28_02256DCC
	add sp, #0xc
	pop {r4, r5, pc}
_02256DAE:
	subs r1, #0xb
	lsls r1, r1, #1
	adds r1, #0xf0
	str r1, [sp]
	movs r1, #0x28
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #3
	adds r2, r1, #0
	movs r3, #0x20
	bl FUN_02255258
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov28_02256D90

	thumb_func_start ov28_02256DCC
ov28_02256DCC: @ 0x02256DCC
	push {lr}
	sub sp, #0xc
	movs r1, #6
	bl FUN_02019FE4
	movs r1, #0x29
	str r1, [sp]
	movs r1, #0x28
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #3
	adds r2, r1, #0
	movs r3, #0x20
	bl FUN_02255258
	add sp, #0xc
	pop {pc}
	thumb_func_end ov28_02256DCC

	thumb_func_start ov28_02256DF0
ov28_02256DF0: @ 0x02256DF0
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	ldr r0, [r0, #4]
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	bl ov28_022569F4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov28_02256DF0

	thumb_func_start ov28_02256E0C
ov28_02256E0C: @ 0x02256E0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r1, #0
	movs r1, #6
	bl FUN_02019FE4
	adds r7, r0, #0
	ldrh r0, [r6]
	movs r1, #0
	cmp r0, #0xd
	beq _02256E2E
	adds r2, r6, #0
_02256E24:
	adds r2, r2, #2
	ldrh r0, [r2]
	adds r1, r1, #1
	cmp r0, #0xd
	bne _02256E24
_02256E2E:
	movs r0, #0xa
	movs r4, #0
	subs r0, r0, r1
	str r0, [sp, #0xc]
	beq _02256E5C
	movs r5, #5
_02256E3A:
	movs r0, #0x2b
	str r0, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0x20
	bl FUN_02255258
	ldr r0, [sp, #0xc]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, r0
	blo _02256E3A
_02256E5C:
	movs r0, #0
	str r0, [sp, #0x10]
	cmp r4, #0xa
	bhs _02256E96
	bhs _02256E96
	lsls r0, r4, #1
	adds r5, r0, #5
_02256E6A:
	ldrh r0, [r6]
	adds r1, r5, #0
	movs r2, #3
	lsls r0, r0, #1
	adds r0, #0xa5
	str r0, [sp]
	movs r0, #0x28
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r3, #0x20
	bl FUN_02255258
	ldr r0, [sp, #0x10]
	adds r4, r4, #1
	adds r0, r0, #1
	adds r5, r5, #2
	adds r6, r6, #2
	str r0, [sp, #0x10]
	cmp r4, #0xa
	blo _02256E6A
_02256E96:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov28_02256E0C

	thumb_func_start ov28_02256E9C
ov28_02256E9C: @ 0x02256E9C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #8
	movs r1, #0xc
	bl FUN_02018144
	str r0, [r5]
	cmp r0, #0
	beq _02256EBC
	strb r4, [r0, #0xa]
	ldr r0, [r5]
	bl ov28_02256EC8
	movs r0, #1
	pop {r3, r4, r5, pc}
_02256EBC:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov28_02256E9C

	thumb_func_start ov28_02256EC0
ov28_02256EC0: @ 0x02256EC0
	ldr r3, _02256EC4 @ =FUN_020181C4
	bx r3
	.align 2, 0
_02256EC4: .4byte FUN_020181C4
	thumb_func_end ov28_02256EC0

	thumb_func_start ov28_02256EC8
ov28_02256EC8: @ 0x02256EC8
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #4]
	strb r1, [r0, #9]
	strb r1, [r0, #8]
	strb r1, [r0, #0xb]
	bx lr
	.align 2, 0
	thumb_func_end ov28_02256EC8

	thumb_func_start ov28_02256ED8
ov28_02256ED8: @ 0x02256ED8
	adds r2, r1, #0
	adds r3, r0, #0
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	.align 2, 0
	thumb_func_end ov28_02256ED8

	thumb_func_start ov28_02256EE8
ov28_02256EE8: @ 0x02256EE8
	push {r4, r5, r6, lr}
	sub sp, #0x30
	adds r5, r0, #0
	adds r3, r1, #0
	ldrb r1, [r5, #9]
	adds r4, r2, #0
	cmp r1, #0
	bne _02256F1A
	ldrb r0, [r3, #9]
	cmp r0, #1
	bne _02256F1A
	ldm r3!, {r0, r1}
	add r6, sp, #0x24
	adds r4, r6, #0
	stm r6!, {r0, r1}
	ldr r0, [r3]
	adds r1, r4, #0
	str r0, [r6]
	movs r0, #0
	strb r0, [r4, #9]
	adds r0, r5, #0
	bl ov28_02256F74
	add sp, #0x30
	pop {r4, r5, r6, pc}
_02256F1A:
	cmp r1, #1
	bne _02256F42
	ldrb r0, [r3, #9]
	cmp r0, #0
	bne _02256F42
	ldm r5!, {r0, r1}
	add r6, sp, #0x18
	adds r2, r6, #0
	stm r6!, {r0, r1}
	ldr r0, [r5]
	adds r1, r2, #0
	str r0, [r6]
	movs r0, #0
	strb r0, [r2, #9]
	adds r0, r3, #0
	adds r2, r4, #0
	bl ov28_02256F74
	add sp, #0x30
	pop {r4, r5, r6, pc}
_02256F42:
	adds r1, r3, #0
	adds r0, r5, #0
	add r2, sp, #0xc
	add r3, sp, #0
	bl ov28_022575EC
	ldr r2, [sp, #0xc]
	ldr r1, [sp]
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #4]
	adds r1, r2, r1
	adcs r3, r0
	str r1, [r4]
	str r3, [r4, #4]
	add r0, sp, #0
	ldrb r1, [r0, #0x14]
	strb r1, [r4, #8]
	ldrb r0, [r0, #0x15]
	strb r0, [r4, #9]
	adds r0, r4, #0
	bl ov28_022574FC
	add sp, #0x30
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov28_02256EE8

	thumb_func_start ov28_02256F74
ov28_02256F74: @ 0x02256F74
	push {r3, r4, r5, r6, lr}
	sub sp, #0x24
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r1, [r5, #9]
	adds r6, r2, #0
	cmp r1, #0
	bne _02256F8A
	ldrb r0, [r4, #9]
	cmp r0, #1
	beq _02256F94
_02256F8A:
	cmp r1, #1
	bne _02256FB6
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _02256FB6
_02256F94:
	ldm r4!, {r0, r1}
	add r3, sp, #0x18
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldrb r1, [r2, #9]
	movs r0, #1
	eors r0, r1
	strb r0, [r2, #9]
	adds r1, r2, #0
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov28_02256EE8
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02256FB6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov28_022571F4
	cmp r0, #0
	beq _02256FCC
	adds r0, r6, #0
	bl ov28_02256EC8
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
_02256FCC:
	adds r0, r5, #0
	adds r1, r4, #0
	add r2, sp, #0xc
	add r3, sp, #0
	bl ov28_022575EC
	ldr r3, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r5, sp, #0xc
	add r4, sp, #0
	subs r0, r3, r0
	sbcs r2, r1
	bhs _02256FEE
	movs r1, #1
	b _02256FF0
_02256FEE:
	movs r1, #0
_02256FF0:
	add r0, sp, #0
	ldrb r0, [r0, #0x15]
	eors r0, r1
	beq _02257006
	adds r0, r5, #0
	adds r5, r4, #0
	ldrb r1, [r5, #9]
	adds r4, r0, #0
	movs r0, #1
	eors r0, r1
	b _02257008
_02257006:
	ldrb r0, [r5, #9]
_02257008:
	strb r0, [r6, #9]
	ldr r2, [r5]
	ldr r1, [r4]
	ldr r3, [r5, #4]
	ldr r0, [r4, #4]
	subs r1, r2, r1
	sbcs r3, r0
	str r1, [r6]
	str r3, [r6, #4]
	ldrb r0, [r5, #8]
	strb r0, [r6, #8]
	adds r0, r6, #0
	bl ov28_022574FC
	add sp, #0x24
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov28_02256F74

	thumb_func_start ov28_02257028
ov28_02257028: @ 0x02257028
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [r6]
	ldr r3, [r6, #4]
	blx FUN_020E1F1C
	str r0, [r4]
	str r1, [r4, #4]
	ldrb r1, [r5, #8]
	ldrb r0, [r6, #8]
	adds r0, r1, r0
	strb r0, [r4, #8]
	ldrb r1, [r5, #9]
	ldrb r0, [r6, #9]
	eors r0, r1
	strb r0, [r4, #9]
	adds r0, r4, #0
	bl ov28_022574FC
	pop {r4, r5, r6, pc}
	thumb_func_end ov28_02257028

	thumb_func_start ov28_02257058
ov28_02257058: @ 0x02257058
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r2, #0
	adds r2, r1, #0
	adds r3, r1, #0
	ldr r6, [r3, #4]
	movs r3, #0
	ldr r2, [r2]
	movs r4, #0
	eors r3, r6
	eors r2, r4
	str r1, [sp]
	orrs r2, r3
	bne _0225707C
	movs r0, #1
	add sp, #0x1c
	strb r0, [r5, #0xb]
	pop {r4, r5, r6, r7, pc}
_0225707C:
	add r2, sp, #0x10
	add r3, sp, #4
	bl ov28_022575EC
	add r0, sp, #4
	str r0, [sp]
	ldr r4, [sp, #4]
	ldr r3, [sp, #8]
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	ldr r0, _0225716C @ =0x04000280
	movs r6, #2
	strh r6, [r0]
	adds r6, r0, #0
	adds r6, #0x10
	str r2, [r6]
	str r1, [r6, #4]
	adds r1, r0, #0
	adds r1, #0x18
	str r4, [r1]
	str r3, [r1, #4]
	lsrs r1, r0, #0xb
_022570A8:
	ldrh r2, [r0]
	tst r2, r1
	bne _022570A8
	ldr r0, _02257170 @ =0x040002A0
	ldr r1, [r0]
	ldr r0, [r0, #4]
	str r1, [r5]
	str r0, [r5, #4]
	movs r0, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	bl ov28_02257498
	ldr r2, _0225716C @ =0x04000280
	adds r7, r0, #0
	lsrs r0, r2, #0xb
_022570C8:
	ldrh r1, [r2]
	tst r1, r0
	bne _022570C8
	ldr r0, _02257174 @ =0x040002A8
	movs r1, #0
	ldr r2, [r0, #4]
	ldr r3, [r0]
	movs r0, #0
	eors r1, r2
	eors r0, r3
	orrs r0, r1
	beq _0225715C
_022570E0:
	ldrb r0, [r5, #8]
	adds r1, r7, #1
	adds r1, r1, r0
	ldrb r0, [r5, #0xa]
	cmp r1, r0
	bhs _0225715C
	ldr r4, [sp, #4]
	ldr r6, [sp, #8]
	ldr r0, _0225716C @ =0x04000280
	movs r1, #2
	strh r1, [r0]
	adds r0, r3, #0
	adds r1, r2, #0
	movs r2, #0xa
	movs r3, #0
	blx FUN_020E1F1C
	ldr r2, _02257178 @ =0x04000290
	movs r3, #0
	str r0, [r2]
	str r1, [r2, #4]
	adds r2, #8
	str r4, [r2]
	str r6, [r2, #4]
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0xa
	blx FUN_020E1F1C
	str r0, [r5]
	ldr r2, _0225716C @ =0x04000280
	str r1, [r5, #4]
	lsrs r0, r2, #0xb
_02257122:
	ldrh r1, [r2]
	tst r1, r0
	bne _02257122
	ldr r0, _02257170 @ =0x040002A0
	ldr r2, [r5]
	ldr r1, [r0]
	ldr r3, [r5, #4]
	adds r1, r2, r1
	ldr r0, [r0, #4]
	ldr r2, _0225716C @ =0x04000280
	adcs r3, r0
	str r1, [r5]
	str r3, [r5, #4]
	ldrb r0, [r5, #8]
	adds r0, r0, #1
	strb r0, [r5, #8]
	lsrs r0, r2, #0xb
_02257144:
	ldrh r1, [r2]
	tst r1, r0
	bne _02257144
	ldr r0, _02257174 @ =0x040002A8
	movs r1, #0
	ldr r2, [r0, #4]
	ldr r3, [r0]
	movs r0, #0
	eors r1, r2
	eors r0, r3
	orrs r0, r1
	bne _022570E0
_0225715C:
	add r0, sp, #0x10
	ldrb r1, [r0, #9]
	ldr r0, [sp]
	ldrb r0, [r0, #9]
	eors r0, r1
	strb r0, [r5, #9]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225716C: .4byte 0x04000280
_02257170: .4byte 0x040002A0
_02257174: .4byte 0x040002A8
_02257178: .4byte 0x04000290
	thumb_func_end ov28_02257058

	thumb_func_start ov28_0225717C
ov28_0225717C: @ 0x0225717C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov28_022574E8
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	blo _02257190
	movs r0, #0
	pop {r3, r4, r5, pc}
_02257190:
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _022571B2
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0xa
	movs r3, #0
	blx FUN_020E1F1C
	str r0, [r5]
	str r1, [r5, #4]
	ldr r2, [r5]
	movs r0, #0
	adds r2, r2, r4
	adcs r1, r0
	str r2, [r5]
	str r1, [r5, #4]
_022571B2:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov28_0225717C

	thumb_func_start ov28_022571B8
ov28_022571B8: @ 0x022571B8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov28_022574E8
	ldrb r1, [r5, #0xa]
	cmp r0, r1
	blo _022571CC
	movs r0, #0
	pop {r3, r4, r5, pc}
_022571CC:
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0xa
	movs r3, #0
	blx FUN_020E1F1C
	str r0, [r5]
	str r1, [r5, #4]
	ldr r2, [r5]
	movs r0, #0
	adds r2, r2, r4
	adcs r1, r0
	str r2, [r5]
	str r1, [r5, #4]
	ldrb r0, [r5, #8]
	adds r0, r0, #1
	strb r0, [r5, #8]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov28_022571B8

	thumb_func_start ov28_022571F4
ov28_022571F4: @ 0x022571F4
	push {r3, r4, r5, r6}
	ldr r2, [r0, #4]
	ldr r3, [r0]
	ldr r4, [r1, #4]
	adds r5, r2, #0
	eors r5, r4
	ldr r6, [r1]
	adds r4, r3, #0
	eors r4, r6
	orrs r4, r5
	beq _02257210
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02257210:
	ldrb r5, [r0, #8]
	ldrb r4, [r1, #8]
	cmp r5, r4
	beq _0225721E
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_0225721E:
	ldrb r4, [r0, #9]
	ldrb r0, [r1, #9]
	cmp r4, r0
	beq _02257238
	movs r1, #0
	movs r0, #0
	eors r1, r2
	eors r0, r3
	orrs r0, r1
	beq _02257238
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
_02257238:
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov28_022571F4

	thumb_func_start ov28_02257240
ov28_02257240: @ 0x02257240
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r1, [r5, #0xb]
	cmp r1, #0
	beq _02257250
	movs r0, #0
	pop {r3, r4, r5, pc}
_02257250:
	bl ov28_02257498
	ldrb r1, [r5, #8]
	cmp r1, #0
	beq _0225725E
	adds r1, r1, #1
	adds r0, r0, r1
_0225725E:
	cmp r0, r4
	bls _02257266
	movs r0, #0
	pop {r3, r4, r5, pc}
_02257266:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov28_02257240

	thumb_func_start ov28_0225726C
ov28_0225726C: @ 0x0225726C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	ldrb r0, [r0, #0xb]
	str r1, [sp, #0x10]
	cmp r0, #0
	beq _02257280
	add sp, #0x20
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02257280:
	ldr r0, [sp]
	movs r1, #0
	ldr r7, [r0, #4]
	ldr r6, [r0]
	movs r0, #0
	eors r1, r7
	eors r0, r6
	orrs r0, r1
	bne _022572D6
	ldr r1, [sp, #0x10]
	adds r0, r1, #0
	adds r2, r0, #2
	movs r0, #0
	strh r0, [r1]
	ldr r1, [sp]
	str r2, [sp, #0x10]
	ldrb r1, [r1, #8]
	cmp r1, #0
	beq _022572CA
	adds r1, r2, #2
	str r1, [sp, #0x10]
	movs r1, #0xa
	strh r1, [r2]
	ldr r1, [sp]
	ldrb r1, [r1, #8]
	cmp r1, #0
	ble _022572CA
	adds r2, r0, #0
_022572B8:
	ldr r1, [sp, #0x10]
	adds r0, r0, #1
	strh r2, [r1]
	adds r1, r1, #2
	str r1, [sp, #0x10]
	ldr r1, [sp]
	ldrb r1, [r1, #8]
	cmp r0, r1
	blt _022572B8
_022572CA:
	ldr r0, [sp, #0x10]
	movs r1, #0xd
	strh r1, [r0]
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022572D6:
	movs r2, #0xa
	movs r0, #1
	movs r1, #0
	subs r2, r6, r2
	mov ip, r7
	mov r2, ip
	sbcs r2, r1
	blo _022572FA
	ldr r2, _0225744C @ =0x02257A58
_022572E8:
	adds r2, #8
	ldr r3, [r2]
	adds r0, r0, #1
	ldr r1, [r2, #4]
	subs r3, r6, r3
	mov ip, r7
	mov r3, ip
	sbcs r3, r1
	bhs _022572E8
_022572FA:
	ldr r1, [sp]
	str r0, [sp, #8]
	ldrb r1, [r1, #8]
	subs r3, r1, r0
	bmi _0225730C
	adds r1, r3, #2
	adds r1, r0, r1
	str r1, [sp, #8]
	b _02257314
_0225730C:
	cmp r1, #0
	beq _02257314
	adds r1, r0, #1
	str r1, [sp, #8]
_02257314:
	ldr r1, [sp]
	ldr r4, [sp]
	ldrb r2, [r1, #9]
	ldr r1, [sp, #8]
	ldrb r4, [r4, #0xa]
	adds r1, r1, r2
	cmp r1, r4
	bls _0225732A
	add sp, #0x20
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0225732A:
	cmp r2, #1
	bne _02257338
	ldr r1, [sp, #0x10]
	movs r2, #0xb
	strh r2, [r1]
	adds r1, r1, #2
	str r1, [sp, #0x10]
_02257338:
	ldr r5, [sp, #0x10]
	cmp r3, #0
	blt _02257362
	adds r0, r5, #0
	movs r1, #0
	strh r1, [r0]
	movs r1, #0xa
	adds r5, r0, #4
	strh r1, [r0, #2]
	adds r0, r3, #0
	subs r3, r3, #1
	cmp r0, #0
	beq _022573CE
	movs r0, #0
_02257354:
	adds r1, r3, #0
	strh r0, [r5]
	adds r5, r5, #2
	subs r3, r3, #1
	cmp r1, #0
	bne _02257354
	b _022573CE
_02257362:
	rsbs r1, r3, #0
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #0x14]
	ldr r1, [sp, #4]
	cmp r1, #0
	ble _022573C0
	ldr r4, _02257450 @ =0x04000280
	subs r0, r0, #1
	mov lr, r0
	lsrs r3, r4, #0xb
	lsrs r2, r4, #0xb
_0225737A:
	movs r0, #2
	strh r0, [r4]
	ldr r0, _02257454 @ =0x04000290
	mov r1, lr
	str r6, [r0]
	str r7, [r0, #4]
	ldr r0, [sp, #0x14]
	subs r0, r1, r0
	lsls r1, r0, #3
	ldr r0, _02257458 @ =0x02257A50
	adds r6, r0, r1
	ldr r1, [r0, r1]
	ldr r6, [r6, #4]
	ldr r0, _0225745C @ =0x04000298
	str r1, [r0]
	str r6, [r0, #4]
_0225739A:
	ldrh r0, [r4]
	tst r0, r3
	bne _0225739A
	ldr r0, _02257460 @ =0x040002A0
	ldr r0, [r0]
	strh r0, [r5]
	adds r5, r5, #2
_022573A8:
	ldrh r0, [r4]
	tst r0, r2
	bne _022573A8
	ldr r0, _02257464 @ =0x040002A8
	ldr r1, [sp, #4]
	ldr r6, [r0]
	ldr r7, [r0, #4]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _0225737A
_022573C0:
	ldr r0, [sp]
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _022573CE
	movs r0, #0xa
	strh r0, [r5]
	adds r5, r5, #2
_022573CE:
	ldr r0, [sp, #0x10]
	subs r1, r5, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	ldr r0, [sp, #8]
	cmp r1, r0
	bhs _02257440
	subs r0, r0, r1
	str r0, [sp, #0x18]
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _02257440
	ldr r4, _02257450 @ =0x04000280
	subs r0, r0, #1
	str r0, [sp, #0xc]
	lsrs r3, r4, #0xb
	lsrs r2, r4, #0xb
_022573F6:
	movs r0, #2
	strh r0, [r4]
	ldr r0, _02257454 @ =0x04000290
	ldr r1, [sp, #0xc]
	str r6, [r0]
	str r7, [r0, #4]
	ldr r0, [sp, #0x1c]
	ldr r6, _02257458 @ =0x02257A50
	subs r0, r1, r0
	lsls r1, r0, #3
	ldr r0, _02257458 @ =0x02257A50
	adds r0, r0, r1
	ldr r1, [r6, r1]
	ldr r0, [r0, #4]
	ldr r6, _0225745C @ =0x04000298
	str r1, [r6]
	adds r1, r6, #0
	str r0, [r1, #4]
_0225741A:
	ldrh r0, [r4]
	tst r0, r3
	bne _0225741A
	ldr r0, _02257460 @ =0x040002A0
	ldr r0, [r0]
	strh r0, [r5]
	adds r5, r5, #2
_02257428:
	ldrh r0, [r4]
	tst r0, r2
	bne _02257428
	ldr r0, _02257464 @ =0x040002A8
	ldr r1, [sp, #0x18]
	ldr r6, [r0]
	ldr r7, [r0, #4]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r1
	blt _022573F6
_02257440:
	movs r0, #0xd
	strh r0, [r5]
	movs r0, #1
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225744C: .4byte 0x02257A58
_02257450: .4byte 0x04000280
_02257454: .4byte 0x04000290
_02257458: .4byte 0x02257A50
_0225745C: .4byte 0x04000298
_02257460: .4byte 0x040002A0
_02257464: .4byte 0x040002A8
	thumb_func_end ov28_0225726C

	thumb_func_start ov28_02257468
ov28_02257468: @ 0x02257468
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	lsls r5, r2, #3
	ldr r2, _02257494 @ =0x02257A50
	adds r3, r2, r5
	ldr r2, [r2, r5]
	ldr r3, [r3, #4]
	blx FUN_020E1ED4
	ldrb r2, [r4, #9]
	cmp r2, #1
	bne _02257490
	movs r2, #0
	mvns r2, r2
	adds r3, r2, #0
	blx FUN_020E1F1C
_02257490:
	pop {r3, r4, r5, pc}
	nop
_02257494: .4byte 0x02257A50
	thumb_func_end ov28_02257468

	thumb_func_start ov28_02257498
ov28_02257498: @ 0x02257498
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	ldr r2, [sp]
	movs r0, #0xa
	ldr r5, [r2]
	ldr r6, [r2, #4]
	movs r2, #0xa
	movs r1, #0
	movs r4, #1
	movs r3, #0
	subs r2, r5, r2
	mov ip, r6
	mov r2, ip
	sbcs r2, r3
	blo _022574D2
	ldr r2, [sp]
	ldrb r7, [r2, #0xa]
_022574BA:
	adds r4, r4, #1
	cmp r4, r7
	bhi _022574D2
	movs r2, #0xa
	movs r3, #0
	blx FUN_020E1F1C
	subs r2, r5, r0
	mov ip, r6
	mov r2, ip
	sbcs r2, r1
	bhs _022574BA
_022574D2:
	ldr r0, [sp]
	ldrb r0, [r0, #8]
	cmp r4, r0
	bls _022574DE
	subs r4, r4, r0
	b _022574E0
_022574DE:
	movs r4, #1
_022574E0:
	ldr r0, [sp]
	ldrb r0, [r0, #9]
	adds r0, r4, r0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov28_02257498

	thumb_func_start ov28_022574E8
ov28_022574E8: @ 0x022574E8
	push {r4, lr}
	adds r4, r0, #0
	bl ov28_02257498
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _022574FA
	adds r1, r1, #1
	adds r0, r0, r1
_022574FA:
	pop {r4, pc}
	thumb_func_end ov28_022574E8

	thumb_func_start ov28_022574FC
ov28_022574FC: @ 0x022574FC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02257582
	ldr r5, _022575DC @ =0x04000280
	ldr r2, [r4]
	adds r3, r5, #0
	ldr r1, [r4, #4]
	movs r0, #1
	strh r0, [r5]
	adds r3, #0x10
	str r2, [r3]
	adds r0, r5, #0
	str r1, [r3, #4]
	adds r0, #0x18
	movs r2, #0xa
	movs r1, #0
	str r2, [r0]
	str r1, [r0, #4]
	adds r1, r4, #0
	mov ip, r0
	adds r1, #8
	b _02257564
_0225752C:
	movs r0, #2
	lsls r0, r0, #0xe
_02257530:
	ldrh r2, [r5]
	tst r2, r0
	bne _02257530
	ldr r0, _022575E0 @ =0x040002A0
	ldr r2, _022575E0 @ =0x040002A0
	ldr r0, [r0]
	ldr r2, [r2, #4]
	str r0, [r4]
	str r2, [r4, #4]
	ldr r6, [r4]
	movs r0, #1
	strh r0, [r5]
	str r6, [r3]
	str r2, [r3, #4]
	movs r2, #0xa
	mov r0, ip
	str r2, [r0]
	movs r2, #0
	mov r0, ip
	str r2, [r0, #4]
	ldrb r0, [r1]
	subs r0, r0, #1
	strb r0, [r1]
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02257582
_02257564:
	ldrh r2, [r5]
	movs r0, #2
	lsls r0, r0, #0xe
	tst r0, r2
	bne _02257564
	ldr r0, _022575E4 @ =0x040002A8
	movs r7, #0
	ldr r6, [r0]
	ldr r2, [r0, #4]
	movs r0, #0
	eors r0, r2
	adds r2, r6, #0
	eors r2, r7
	orrs r0, r2
	beq _0225752C
_02257582:
	adds r0, r4, #0
	bl ov28_02257498
	ldrb r2, [r4, #8]
	cmp r2, #0
	beq _022575D8
	adds r1, r2, #1
	adds r1, r0, r1
	ldrb r0, [r4, #0xa]
	cmp r1, r0
	bls _022575D8
	subs r1, r1, r0
	cmp r1, r2
	bhi _022575D8
	ldr r5, [r4]
	ldr r3, [r4, #4]
	ldr r0, _022575DC @ =0x04000280
	movs r2, #1
	strh r2, [r0]
	adds r2, r0, #0
	adds r2, #0x10
	str r5, [r2]
	str r3, [r2, #4]
	ldr r2, _022575E8 @ =0x02257A50
	lsls r3, r1, #3
	ldr r5, [r2, r3]
	adds r2, r0, #0
	adds r2, #0x18
	movs r3, #0
	str r5, [r2]
	str r3, [r2, #4]
	lsrs r2, r0, #0xb
_022575C2:
	ldrh r3, [r0]
	tst r3, r2
	bne _022575C2
	ldr r0, _022575E0 @ =0x040002A0
	ldr r2, [r0]
	ldr r0, [r0, #4]
	str r2, [r4]
	str r0, [r4, #4]
	ldrb r0, [r4, #8]
	subs r0, r0, r1
	strb r0, [r4, #8]
_022575D8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022575DC: .4byte 0x04000280
_022575E0: .4byte 0x040002A0
_022575E4: .4byte 0x040002A8
_022575E8: .4byte 0x02257A50
	thumb_func_end ov28_022574FC

	thumb_func_start ov28_022575EC
ov28_022575EC: @ 0x022575EC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	ldm r6!, {r0, r1}
	adds r5, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r6]
	adds r4, r3, #0
	str r0, [r2]
	ldm r7!, {r0, r1}
	adds r2, r4, #0
	stm r2!, {r0, r1}
	ldr r0, [r7]
	str r0, [r2]
	ldrb r1, [r5, #8]
	ldrb r0, [r4, #8]
	cmp r1, r0
	bhs _02257616
	adds r0, r5, #0
	adds r5, r4, #0
	adds r4, r0, #0
_02257616:
	ldrb r3, [r5, #8]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	subs r2, r3, r2
	lsls r6, r2, #3
	ldr r2, _02257638 @ =0x02257A50
	adds r3, r2, r6
	ldr r2, [r2, r6]
	ldr r3, [r3, #4]
	blx FUN_020E1F1C
	str r0, [r4]
	str r1, [r4, #4]
	ldrb r0, [r5, #8]
	strb r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02257638: .4byte 0x02257A50
	thumb_func_end ov28_022575EC
	@ 0x0225763C
