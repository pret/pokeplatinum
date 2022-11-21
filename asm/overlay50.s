	.include "macros/function.inc"


	.text

	thumb_func_start ov50_022561C0
ov50_022561C0: @ 0x022561C0
	ldr r3, _022561C8 @ =FUN_02254238
	ldr r0, _022561CC @ =ov50_022561D4
	ldr r1, _022561D0 @ =ov50_022563B0
	bx r3
	.align 2, 0
_022561C8: .4byte FUN_02254238
_022561CC: .4byte ov50_022561D4
_022561D0: .4byte ov50_022563B0
	thumb_func_end ov50_022561C0

	thumb_func_start ov50_022561D4
ov50_022561D4: @ 0x022561D4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #8
	movs r1, #0xb0
	adds r7, r2, #0
	str r3, [sp]
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256212
	ldr r3, [sp]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov50_0225621C
	cmp r0, #0
	beq _0225620C
	ldr r0, _02256218 @ =ov50_0225636C
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
_02256218: .4byte ov50_0225636C
	thumb_func_end ov50_022561D4

	thumb_func_start ov50_0225621C
ov50_0225621C: @ 0x0225621C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r1, #0
	add r0, sp, #4
	adds r6, r2, #0
	bl FUN_020138A4
	adds r0, r4, #0
	bl FUN_02254540
	adds r1, r5, #0
	adds r1, #0x98
	str r0, [r1]
	adds r0, r5, #4
	adds r1, r5, #0
	add r2, sp, #4
	bl ov50_022562AC
	adds r0, r5, #0
	ldrb r1, [r5, #0x12]
	adds r0, #0xa8
	adds r2, r6, #0
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r1, [r0]
	ldr r0, [r5, #8]
	subs r0, r0, #1
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xac
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0x90
	adds r1, r5, #4
	bl ov50_02256510
	cmp r0, #0
	beq _0225629C
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	movs r0, #8
	str r0, [sp]
	ldr r0, _022562A4 @ =0x02256998
	ldr r2, _022562A8 @ =ov50_02256360
	movs r1, #0x25
	adds r3, r5, #0
	bl FUN_02255ACC
	adds r1, r5, #0
	adds r1, #0x9c
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xa0
	str r1, [r0]
	adds r5, #0x94
	add sp, #0x14
	str r4, [r5]
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0225629C:
	movs r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_022562A4: .4byte 0x02256998
_022562A8: .4byte ov50_02256360
	thumb_func_end ov50_0225621C

	thumb_func_start ov50_022562AC
ov50_022562AC: @ 0x022562AC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r2, #0
	adds r6, r0, #0
	ldr r0, [r4, #4]
	str r1, [sp]
	str r0, [r6]
	ldr r0, [r4, #8]
	str r0, [r6, #8]
	ldr r1, [r6]
	ldr r0, _0225633C @ =0x02256A2B
	ldrb r0, [r0, r1]
	str r0, [r6, #4]
	ldr r0, [r6]
	cmp r0, #2
	bne _022562F0
	ldr r5, [r4]
	movs r1, #0x19
	adds r0, r5, #0
	lsls r1, r1, #4
	blx FUN_020E2178
	cmp r1, #0
	beq _022562EC
	adds r0, r5, #0
	movs r1, #0x64
	blx FUN_020E2178
	cmp r1, #0
	beq _022562F0
	movs r0, #3
	tst r0, r5
	bne _022562F0
_022562EC:
	movs r0, #0x1d
	str r0, [r6, #4]
_022562F0:
	ldr r0, [r4, #8]
	movs r1, #7
	subs r0, r0, #1
	blx FUN_020E2178
	movs r2, #7
	ldr r3, [r4, #0xc]
	subs r0, r2, r1
	adds r7, r3, r0
	cmp r7, #7
	blo _02256310
	adds r0, r7, #0
	adds r1, r2, #0
	blx FUN_020E2178
	adds r7, r1, #0
_02256310:
	ldr r0, [r6, #4]
	movs r4, #0
	cmp r0, #0
	bls _0225633A
	adds r5, r6, #0
_0225631A:
	ldr r0, [sp]
	adds r2, r4, #1
	strh r2, [r5, #0xc]
	adds r0, #0x98
	ldr r0, [r0]
	ldr r1, [r6]
	bl FUN_020569A8
	strb r0, [r5, #0xf]
	adds r0, r7, r4
	strb r0, [r5, #0xe]
	ldr r0, [r6, #4]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blo _0225631A
_0225633A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225633C: .4byte 0x02256A2B
	thumb_func_end ov50_022562AC

	thumb_func_start ov50_02256340
ov50_02256340: @ 0x02256340
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x9c
	ldr r0, [r0]
	bl FUN_02255B34
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl ov50_0225654C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov50_02256340

	thumb_func_start ov50_02256360
ov50_02256360: @ 0x02256360
	adds r2, r3, #0
	adds r2, #0xa4
	str r0, [r2]
	adds r3, #0xa0
	str r1, [r3]
	bx lr
	thumb_func_end ov50_02256360

	thumb_func_start ov50_0225636C
ov50_0225636C: @ 0x0225636C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4]
	cmp r0, #3
	bhs _022563AA
	adds r0, r4, #0
	adds r0, #0x94
	adds r1, #0x9c
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_02254518
	ldrb r1, [r4]
	adds r0, r4, #0
	lsls r2, r1, #2
	ldr r1, _022563AC @ =0x0225698C
	ldr r1, [r1, r2]
	blx r1
	cmp r0, #0
	beq _022563AA
	adds r0, r4, #0
	bl ov50_02256340
	adds r0, r5, #0
	bl FUN_0200DA58
	adds r4, #0x94
	ldr r0, [r4]
	bl FUN_02254260
_022563AA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022563AC: .4byte 0x0225698C
	thumb_func_end ov50_0225636C

	thumb_func_start ov50_022563B0
ov50_022563B0: @ 0x022563B0
	movs r1, #1
	strb r1, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov50_022563B0

	thumb_func_start ov50_022563B8
ov50_022563B8: @ 0x022563B8
	ldrb r2, [r0, #2]
	cmp r2, #0
	bne _022563C0
	b _022563C2
_022563C0:
	movs r1, #2
_022563C2:
	strb r1, [r0]
	movs r1, #0
	strb r1, [r0, #1]
	bx lr
	.align 2, 0
	thumb_func_end ov50_022563B8

	thumb_func_start ov50_022563CC
ov50_022563CC: @ 0x022563CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022563DC
	cmp r0, #1
	beq _022563F0
	b _02256412
_022563DC:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0
	bl ov50_022565FC
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _02256412
_022563F0:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0
	bl ov50_02256620
	cmp r0, #0
	beq _02256412
	adds r0, r4, #0
	adds r0, #0x94
	ldr r0, [r0]
	bl FUN_0225424C
	adds r0, r4, #0
	movs r1, #1
	bl ov50_022563B8
_02256412:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov50_022563CC

	thumb_func_start ov50_02256418
ov50_02256418: @ 0x02256418
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #2]
	cmp r1, #0
	beq _0225642C
	movs r1, #2
	bl ov50_022563B8
	movs r0, #0
	pop {r3, r4, r5, pc}
_0225642C:
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq _02256438
	cmp r0, #1
	beq _022564BE
	b _022564D2
_02256438:
	adds r0, r5, #0
	adds r0, #0xa0
	ldr r0, [r0]
	cmp r0, #1
	bne _022564D2
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xa0
	str r1, [r0]
	adds r0, r5, #0
	adds r0, #0xa8
	ldr r2, [r0]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r1, [r0]
	cmp r1, r2
	blo _022564D2
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r1, r0
	bhi _022564D2
	adds r0, r5, #0
	adds r0, #0x98
	subs r4, r1, r2
	ldr r0, [r0]
	ldr r1, [r5, #4]
	adds r2, r4, #1
	bl FUN_020569A8
	cmp r0, #0
	beq _02256488
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	ldr r1, [r5, #4]
	adds r2, r4, #1
	bl FUN_02056970
	b _02256496
_02256488:
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	ldr r1, [r5, #4]
	adds r2, r4, #1
	bl FUN_02056934
_02256496:
	adds r3, r5, #0
	adds r3, #0x13
	lsls r2, r4, #2
	ldrb r1, [r3, r2]
	movs r0, #1
	eors r0, r1
	strb r0, [r3, r2]
	adds r0, r5, #0
	adds r0, #0x8c
	str r4, [r0]
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #2
	bl ov50_022565FC
	ldrb r0, [r5, #1]
	adds r0, r0, #1
	strb r0, [r5, #1]
	b _022564D2
_022564BE:
	adds r0, r5, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #2
	bl ov50_02256620
	cmp r0, #0
	beq _022564D2
	movs r0, #0
	strb r0, [r5, #1]
_022564D2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov50_02256418

	thumb_func_start ov50_022564D8
ov50_022564D8: @ 0x022564D8
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _022564E8
	cmp r0, #1
	beq _022564FC
	b _0225650C
_022564E8:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #1
	bl ov50_022565FC
	ldrb r0, [r4, #1]
	adds r0, r0, #1
	strb r0, [r4, #1]
	b _0225650C
_022564FC:
	adds r4, #0x90
	ldr r0, [r4]
	bl ov50_0225662C
	cmp r0, #0
	beq _0225650C
	movs r0, #1
	pop {r4, pc}
_0225650C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov50_022564D8

	thumb_func_start ov50_02256510
ov50_02256510: @ 0x02256510
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #8
	movs r1, #0x3c
	bl FUN_02018144
	adds r4, r0, #0
	beq _02256546
	adds r0, #8
	movs r1, #4
	bl FUN_02255090
	str r5, [r4]
	bl FUN_02254674
	str r0, [r4, #4]
	bl FUN_02254664
	str r0, [r4, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov50_02256560
	str r4, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02256546:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov50_02256510

	thumb_func_start ov50_0225654C
ov50_0225654C: @ 0x0225654C
	push {r4, lr}
	adds r4, r0, #0
	beq _0225655C
	bl ov50_022565E4
	adds r0, r4, #0
	bl FUN_020181C4
_0225655C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov50_0225654C

	thumb_func_start ov50_02256560
ov50_02256560: @ 0x02256560
	push {r4, r5, lr}
	sub sp, #0xc
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	movs r0, #0xc
	movs r1, #0x72
	bl FUN_02006EC0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0x28
	movs r1, #0xc
	movs r2, #0x70
	movs r3, #0x71
	bl FUN_02255958
	adds r2, r5, #0
	ldr r0, [r5, #0x20]
	ldr r1, _022565AC @ =0x02256A38
	adds r2, #0x28
	bl FUN_02255810
	str r0, [r5, #0x24]
	ldr r1, [r4, #8]
	lsls r1, r1, #2
	adds r1, r4, r1
	ldrb r1, [r1, #0xa]
	bl ov50_022565B0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_022565AC: .4byte 0x02256A38
	thumb_func_end ov50_02256560

	thumb_func_start ov50_022565B0
ov50_022565B0: @ 0x022565B0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #7
	blx FUN_020E2178
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #7
	blx FUN_020E2178
	adds r2, r0, #0
	lsls r1, r4, #1
	lsls r3, r2, #1
	adds r1, r4, r1
	adds r2, r2, r3
	adds r1, r1, #5
	adds r2, r2, #6
	adds r0, r5, #0
	lsls r1, r1, #0xf
	lsls r2, r2, #0xf
	bl FUN_02255900
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov50_022565B0

	thumb_func_start ov50_022565E4
ov50_022565E4: @ 0x022565E4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x24]
	bl FUN_022558B0
	adds r4, #0x28
	adds r0, r4, #0
	bl FUN_022559B0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov50_022565E4

	thumb_func_start ov50_022565FC
ov50_022565FC: @ 0x022565FC
	push {lr}
	sub sp, #0xc
	adds r2, r0, #0
	adds r0, #8
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #8
	str r0, [sp, #8]
	ldr r0, _0225661C @ =0x02256AC0
	ldr r3, [r2]
	bl FUN_0225517C
	add sp, #0xc
	pop {pc}
	nop
_0225661C: .4byte 0x02256AC0
	thumb_func_end ov50_022565FC

	thumb_func_start ov50_02256620
ov50_02256620: @ 0x02256620
	ldr r3, _02256628 @ =FUN_02255130
	adds r0, #8
	bx r3
	nop
_02256628: .4byte FUN_02255130
	thumb_func_end ov50_02256620

	thumb_func_start ov50_0225662C
ov50_0225662C: @ 0x0225662C
	ldr r3, _02256634 @ =FUN_02255154
	adds r0, #8
	bx r3
	nop
_02256634: .4byte FUN_02255154
	thumb_func_end ov50_0225662C

	thumb_func_start ov50_02256638
ov50_02256638: @ 0x02256638
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0225523C
	adds r0, #8
	adds r1, r4, #0
	bl FUN_02255224
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov50_02256638

	thumb_func_start ov50_0225664C
ov50_0225664C: @ 0x0225664C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r6, r1, #0
	adds r0, r6, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r6, #0
	bl FUN_02255240
	adds r4, r0, #0
	ldr r0, [r5, #4]
	ldr r2, _022566E0 @ =0x02256A7C
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #4]
	ldr r2, _022566E4 @ =0x02256A60
	movs r1, #7
	movs r3, #0
	bl FUN_020183C4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov50_0225675C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov50_022567F4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r2, [r5, #4]
	movs r0, #0xc
	movs r1, #0x6f
	movs r3, #7
	bl FUN_02006E3C
	movs r0, #0
	adds r1, r0, #0
	bl FUN_022546B8
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_02019448
	ldr r0, [r5, #4]
	movs r1, #7
	bl FUN_02019448
	ldr r1, _022566E8 @ =0x04001000
	ldr r0, _022566EC @ =0xFFFFE0FF
	ldr r3, [r1]
	ldr r2, [r1]
	str r3, [sp, #0x10]
	ands r0, r2
	lsls r2, r3, #0x13
	lsrs r3, r2, #0x1b
	movs r2, #0xc
	orrs r2, r3
	lsls r2, r2, #8
	orrs r0, r2
	str r0, [r1]
	adds r0, r6, #0
	bl ov50_02256638
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022566E0: .4byte 0x02256A7C
_022566E4: .4byte 0x02256A60
_022566E8: .4byte 0x04001000
_022566EC: .4byte 0xFFFFE0FF
	thumb_func_end ov50_0225664C

	thumb_func_start ov50_022566F0
ov50_022566F0: @ 0x022566F0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r0, r5, #0
	bl FUN_0225523C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r4, #4]
	movs r1, #7
	bl FUN_02019044
	adds r0, r5, #0
	bl ov50_02256638
	pop {r3, r4, r5, pc}
	thumb_func_end ov50_022566F0

	thumb_func_start ov50_02256714
ov50_02256714: @ 0x02256714
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0225523C
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02255240
	adds r2, r0, #0
	adds r0, #0x88
	ldr r0, [r0]
	lsls r3, r0, #2
	adds r0, r2, r3
	ldrb r0, [r0, #0xf]
	cmp r0, #0
	beq _0225673A
	movs r1, #0x8f
	b _0225673C
_0225673A:
	movs r1, #0x83
_0225673C:
	adds r2, r2, r3
	ldrb r2, [r2, #0xe]
	lsls r1, r1, #0x10
	ldr r0, [r5, #4]
	lsrs r1, r1, #0x10
	bl ov50_022567A8
	ldr r0, [r5, #4]
	movs r1, #7
	bl FUN_02019448
	adds r0, r4, #0
	bl ov50_02256638
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov50_02256714

	thumb_func_start ov50_0225675C
ov50_0225675C: @ 0x0225675C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	adds r6, r1, #0
	ldr r2, [r7, #4]
	movs r0, #0xc
	movs r1, #0x6e
	movs r3, #7
	bl FUN_02006E60
	ldr r0, [r6, #4]
	movs r4, #0
	cmp r0, #0
	bls _022567A2
	adds r5, r6, #0
_02256788:
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	beq _02256798
	ldrb r2, [r5, #0xe]
	ldr r0, [r7, #4]
	movs r1, #0x8f
	bl ov50_022567A8
_02256798:
	ldr r0, [r6, #4]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blo _02256788
_022567A2:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov50_0225675C

	thumb_func_start ov50_022567A8
ov50_022567A8: @ 0x022567A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r7, #0
	movs r1, #7
	blx FUN_020E2178
	adds r4, r1, #0
	adds r0, r7, #0
	movs r1, #7
	blx FUN_020E2178
	lsls r1, r0, #1
	adds r0, r0, r1
	adds r0, r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r3, r4, #1
	str r0, [sp]
	movs r0, #2
	adds r3, r4, r3
	str r0, [sp, #4]
	adds r3, r3, #4
	str r0, [sp, #8]
	movs r0, #0
	lsls r3, r3, #0x18
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #7
	adds r2, r6, #0
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov50_022567A8

	thumb_func_start ov50_022567F4
ov50_022567F4: @ 0x022567F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r3, #0
	adds r7, r0, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r6, r1, #0
	ldr r0, [r7, #4]
	movs r1, #6
	movs r2, #0x82
	bl FUN_02019CB8
	ldr r0, [r7, #4]
	ldr r1, [r6]
	bl ov50_0225683C
	ldr r0, [r6, #4]
	movs r4, #0
	cmp r0, #0
	bls _02256838
	adds r5, r6, #0
_02256824:
	ldrb r2, [r5, #0xe]
	ldr r0, [r7, #4]
	adds r1, r4, #1
	bl ov50_02256894
	ldr r0, [r6, #4]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blo _02256824
_02256838:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov50_022567F4

	thumb_func_start ov50_0225683C
ov50_0225683C: @ 0x0225683C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r0, _02256890 @ =0x02256A46
	lsls r1, r1, #1
	ldrh r4, [r0, r1]
	movs r0, #0
	str r0, [sp, #0x10]
_0225684C:
	ldr r0, [sp, #0x10]
	movs r5, #0
	adds r0, r0, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_02256856:
	adds r3, r5, #0
	adds r2, r4, r5
	adds r3, #0xc
	lsls r2, r2, #0x10
	lsls r3, r3, #0x18
	str r6, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r7, #0
	movs r1, #6
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	adds r5, r5, #1
	cmp r5, #4
	blt _02256856
	ldr r0, [sp, #0x10]
	adds r4, #0xc
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #2
	blt _0225684C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02256890: .4byte 0x02256A46
	thumb_func_end ov50_0225683C

	thumb_func_start ov50_02256894
ov50_02256894: @ 0x02256894
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r2, #0
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #7
	blx FUN_020E2178
	adds r6, r1, #0
	lsls r0, r6, #1
	adds r0, r6, r0
	adds r4, r0, #4
	adds r0, r5, #0
	movs r1, #7
	blx FUN_020E2178
	lsls r1, r0, #1
	adds r0, r0, r1
	adds r5, r0, #5
	cmp r6, #0
	bne _022568C4
	movs r6, #1
	b _022568C6
_022568C4:
	movs r6, #0
_022568C6:
	ldr r0, [sp, #0x14]
	movs r1, #0xa
	blx FUN_020E2178
	adds r7, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0xa
	blx FUN_020E2178
	str r1, [sp, #0x18]
	cmp r7, #0
	beq _0225692E
	movs r0, #0x14
	adds r2, r6, #0
	muls r2, r0, r2
	ldr r0, _02256988 @ =0x02256A98
	lsls r1, r7, #1
	adds r0, r0, r2
	ldrh r7, [r1, r0]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r3, r4, #0x18
	ldr r0, [sp, #0x10]
	movs r1, #6
	adds r2, r7, #0
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	adds r7, #0xc
	str r0, [sp, #0xc]
	lsls r2, r7, #0x10
	lsls r3, r4, #0x18
	ldr r0, [sp, #0x10]
	movs r1, #6
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
_0225692E:
	movs r0, #0x14
	adds r3, r6, #0
	muls r3, r0, r3
	ldr r0, [sp, #0x18]
	ldr r2, _02256988 @ =0x02256A98
	lsls r1, r0, #1
	adds r0, r2, r3
	ldrh r6, [r1, r0]
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	adds r3, r4, #1
	str r0, [sp, #0xc]
	lsls r3, r3, #0x18
	ldr r0, [sp, #0x10]
	movs r1, #6
	adds r2, r6, #0
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	adds r6, #0xc
	adds r3, r4, #1
	str r0, [sp, #0xc]
	lsls r2, r6, #0x10
	lsls r3, r3, #0x18
	ldr r0, [sp, #0x10]
	movs r1, #6
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02256988: .4byte 0x02256A98
	thumb_func_end ov50_02256894
	@ 0x0225698C
