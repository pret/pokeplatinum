	.include "macros/function.inc"


	.text

	thumb_func_start ov85_02241440
ov85_02241440: @ 0x02241440
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02241540 @ =0xFFFFE0FF
	ldr r3, _02241544 @ =0x04001000
	ands r1, r0
	str r1, [r2]
	ldr r1, [r3]
	ands r0, r1
	str r0, [r3]
	adds r0, r2, #0
	movs r1, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r3, #0x50
	strh r1, [r3]
	movs r0, #3
	movs r1, #0x24
	lsrs r2, r2, #9
	bl FUN_02017FC8
	movs r1, #0x81
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0x24
	bl FUN_0200681C
	movs r2, #0x81
	movs r1, #0
	lsls r2, r2, #2
	adds r5, r0, #0
	blx FUN_020D5124
	adds r0, r4, #0
	bl FUN_02006840
	movs r1, #0x7e
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x24
	bl FUN_02018340
	str r0, [r5]
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x24
	ldrb r0, [r0, #8]
	bl FUN_020973B8
	movs r1, #0x7f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	movs r1, #0x24
	bl FUN_0208C120
	movs r0, #0x35
	movs r1, #0x24
	bl FUN_02006C24
	adds r4, r0, #0
	bl ov85_02241614
	ldr r0, [r5]
	bl ov85_02241634
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov85_02241718
	bl ov85_022417CC
	adds r0, r5, #0
	bl ov85_022417E4
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov85_02241E60
	adds r0, r5, #0
	bl ov85_0224183C
	adds r0, r5, #0
	bl ov85_02241CD0
	adds r0, r5, #0
	bl ov85_02242038
	adds r0, r5, #0
	bl ov85_02242218
	ldr r0, _02241548 @ =ov85_022415F4
	adds r1, r5, #0
	bl FUN_02017798
	bl FUN_020397E4
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl FUN_02006CA8
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02241540: .4byte 0xFFFFE0FF
_02241544: .4byte 0x04001000
_02241548: .4byte ov85_022415F4
	thumb_func_end ov85_02241440

	thumb_func_start ov85_0224154C
ov85_0224154C: @ 0x0224154C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	bl FUN_0200682C
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #3
	bhi _02241594
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02241568: @ jump table
	.2byte _02241570 - _02241568 - 2 @ case 0
	.2byte _02241578 - _02241568 - 2 @ case 1
	.2byte _02241580 - _02241568 - 2 @ case 2
	.2byte _02241588 - _02241568 - 2 @ case 3
_02241570:
	bl ov85_02241CE8
	str r0, [r4]
	b _02241594
_02241578:
	bl ov85_02241D10
	str r0, [r4]
	b _02241594
_02241580:
	bl ov85_02241DF8
	str r0, [r4]
	b _02241594
_02241588:
	bl ov85_02241DEC
	cmp r0, #1
	bne _02241594
	movs r0, #1
	pop {r3, r4, r5, pc}
_02241594:
	adds r0, r5, #0
	bl ov85_02241FF0
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov85_0224154C

	thumb_func_start ov85_022415A0
ov85_022415A0: @ 0x022415A0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r4, #4
	bl ov85_02241860
	ldr r0, [r4]
	bl ov85_022416E8
	bl FUN_0201E530
	adds r0, r4, #0
	bl ov85_0224181C
	adds r0, r4, #0
	bl ov85_0224202C
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x24
	bl FUN_0201807C
	ldr r0, _022415F0 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_022415F0: .4byte 0x04000050
	thumb_func_end ov85_022415A0

	thumb_func_start ov85_022415F4
ov85_022415F4: @ 0x022415F4
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0201C2B8
	ldr r3, _0224160C @ =0x027E0000
	ldr r1, _02241610 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_0224160C: .4byte 0x027E0000
_02241610: .4byte 0x00003FF8
	thumb_func_end ov85_022415F4

	thumb_func_start ov85_02241614
ov85_02241614: @ 0x02241614
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02241630 @ =0x022428B0
	add r3, sp, #0
	movs r2, #5
_0224161E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224161E
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_02241630: .4byte 0x022428B0
	thumb_func_end ov85_02241614

	thumb_func_start ov85_02241634
ov85_02241634: @ 0x02241634
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _022416D8 @ =0x0224284C
	add r3, sp, #0x54
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	bl ov85_02241F5C
	ldr r5, _022416DC @ =0x02242894
	add r3, sp, #0x38
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _022416E0 @ =0x0224285C
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #2
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #2
	movs r2, #3
	movs r3, #8
	bl FUN_0201C63C
	ldr r5, _022416E4 @ =0x02242878
	add r3, sp, #0
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #3
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x24
	bl FUN_02019690
	add sp, #0x64
	pop {r4, r5, pc}
	nop
_022416D8: .4byte 0x0224284C
_022416DC: .4byte 0x02242894
_022416E0: .4byte 0x0224285C
_022416E4: .4byte 0x02242878
	thumb_func_end ov85_02241634

	thumb_func_start ov85_022416E8
ov85_022416E8: @ 0x022416E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	movs r0, #0x24
	adds r1, r4, #0
	bl FUN_02018238
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov85_022416E8

	thumb_func_start ov85_02241718
ov85_02241718: @ 0x02241718
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x24
	str r0, [sp, #0xc]
	adds r5, r1, #0
	movs r1, #2
	ldr r2, [r4]
	adds r0, r5, #0
	adds r3, r1, #0
	bl FUN_020070E8
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x24
	str r0, [sp, #0xc]
	ldr r2, [r4]
	adds r0, r5, #0
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x24
	str r0, [sp, #0xc]
	ldr r2, [r4]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #3
	bl FUN_0200710C
	movs r2, #0
	str r2, [sp]
	movs r0, #0x24
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #3
	adds r3, r2, #0
	bl FUN_02007130
	movs r0, #0x24
	movs r1, #0x80
	bl FUN_02018144
	adds r5, r0, #0
	ldr r0, _022417C8 @ =0x00003001
	movs r2, #0
	adds r3, r5, #0
_02241788:
	adds r1, r2, r0
	strh r1, [r3]
	adds r2, r2, #1
	adds r3, r3, #2
	cmp r2, #0x40
	blo _02241788
	movs r0, #5
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	movs r1, #1
	adds r2, r5, #0
	movs r3, #2
	bl FUN_020198C0
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019448
	movs r1, #0x1e
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x24
	bl FUN_02002E7C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_022417C8: .4byte 0x00003001
	thumb_func_end ov85_02241718

	thumb_func_start ov85_022417CC
ov85_022417CC: @ 0x022417CC
	push {r3, lr}
	movs r0, #8
	str r0, [sp]
	ldr r0, _022417E0 @ =0x04000050
	movs r1, #1
	movs r2, #0xe
	movs r3, #0x17
	blx FUN_020BF55C
	pop {r3, pc}
	.align 2, 0
_022417E0: .4byte 0x04000050
	thumb_func_end ov85_022417CC

	thumb_func_start ov85_022417E4
ov85_022417E4: @ 0x022417E4
	push {r4, lr}
	ldr r2, _02241818 @ =0x0000018E
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x24
	bl FUN_0200B144
	adds r1, r4, #0
	adds r1, #0xc4
	str r0, [r1]
	movs r0, #0xf
	movs r1, #2
	movs r2, #0
	movs r3, #0x24
	bl FUN_0200C440
	adds r1, r4, #0
	adds r1, #0xcc
	str r0, [r1]
	movs r0, #0x24
	bl FUN_0200B358
	adds r4, #0xc8
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
_02241818: .4byte 0x0000018E
	thumb_func_end ov85_022417E4

	thumb_func_start ov85_0224181C
ov85_0224181C: @ 0x0224181C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	bl FUN_0200B190
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_0200C560
	adds r4, #0xc8
	ldr r0, [r4]
	bl FUN_0200B3F0
	pop {r4, pc}
	thumb_func_end ov85_0224181C

	thumb_func_start ov85_0224183C
ov85_0224183C: @ 0x0224183C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, _0224185C @ =0x022428D8
	movs r6, #0
	adds r5, r7, #4
_02241846:
	ldr r0, [r7]
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_0201A8D4
	adds r6, r6, #1
	adds r4, #8
	adds r5, #0x10
	cmp r6, #0xc
	blo _02241846
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224185C: .4byte 0x022428D8
	thumb_func_end ov85_0224183C

	thumb_func_start ov85_02241860
ov85_02241860: @ 0x02241860
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02241866:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #0xc
	blo _02241866
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov85_02241860

	thumb_func_start ov85_02241878
ov85_02241878: @ 0x02241878
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #4
	adds r0, #0xc4
	lsls r4, r1, #4
	ldr r0, [r0]
	adds r1, r2, #0
	adds r6, r3, #0
	bl FUN_0200B1EC
	str r0, [sp, #0x10]
	movs r0, #0
	ldr r1, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r7, r0, #0
	adds r0, r5, r4
	bl FUN_0201C294
	adds r3, r0, #0
	movs r1, #0
	lsls r3, r3, #3
	subs r3, r3, r7
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [sp, #0x10]
	adds r0, r5, r4
	lsrs r3, r3, #1
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	bl FUN_020237BC
	adds r0, r5, r4
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov85_02241878

	thumb_func_start ov85_022418CC
ov85_022418CC: @ 0x022418CC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	movs r1, #4
	bl FUN_0201ADA4
	movs r1, #0
	ldr r3, _022418E8 @ =0x00010204
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov85_02241878
	pop {r4, pc}
	nop
_022418E8: .4byte 0x00010204
	thumb_func_end ov85_022418CC

	thumb_func_start ov85_022418EC
ov85_022418EC: @ 0x022418EC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x24
	movs r1, #0
	bl FUN_0201ADA4
	ldr r3, _02241908 @ =0x000F0200
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241908: .4byte 0x000F0200
	thumb_func_end ov85_022418EC

	thumb_func_start ov85_0224190C
ov85_0224190C: @ 0x0224190C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x34
	movs r1, #0
	bl FUN_0201ADA4
	ldr r3, _02241928 @ =0x000F0200
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241928: .4byte 0x000F0200
	thumb_func_end ov85_0224190C

	thumb_func_start ov85_0224192C
ov85_0224192C: @ 0x0224192C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x44
	movs r1, #0
	bl FUN_0201ADA4
	ldr r3, _02241948 @ =0x000F0200
	adds r0, r4, #0
	movs r1, #4
	movs r2, #3
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241948: .4byte 0x000F0200
	thumb_func_end ov85_0224192C

	thumb_func_start ov85_0224194C
ov85_0224194C: @ 0x0224194C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x54
	movs r1, #0
	bl FUN_0201ADA4
	ldr r3, _02241968 @ =0x000F0200
	adds r0, r4, #0
	movs r1, #5
	movs r2, #4
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241968: .4byte 0x000F0200
	thumb_func_end ov85_0224194C

	thumb_func_start ov85_0224196C
ov85_0224196C: @ 0x0224196C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0201ADA4
	ldr r3, _02241988 @ =0x000F0200
	adds r0, r4, #0
	movs r1, #6
	movs r2, #5
	bl ov85_02241878
	pop {r4, pc}
	nop
_02241988: .4byte 0x000F0200
	thumb_func_end ov85_0224196C

	thumb_func_start ov85_0224198C
ov85_0224198C: @ 0x0224198C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x14
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r1, #2
	adds r2, r4, #0
	movs r3, #0
	bl FUN_0200C578
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #6
	bl FUN_0200B1EC
	adds r7, r0, #0
	movs r0, #6
	movs r1, #0x24
	bl FUN_02023790
	movs r3, #2
	adds r6, r0, #0
	movs r2, #0x7e
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r5, #0
	ldrb r2, [r2, #8]
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0
	adds r2, r2, #1
	bl FUN_0200B60C
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r0, [r0]
	adds r1, r6, #0
	adds r2, r7, #0
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241A54 @ =0x000F0200
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r3, #0x10
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x24
	ldrb r0, [r0, #8]
	bl FUN_0209742C
	adds r5, r0, #0
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241A54 @ =0x000F0200
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r3, #0x28
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241A54: .4byte 0x000F0200
	thumb_func_end ov85_0224198C

	thumb_func_start ov85_02241A58
ov85_02241A58: @ 0x02241A58
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb4
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x24
	ldrb r0, [r0, #8]
	bl FUN_02097454
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241AA4 @ =0x00010200
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241AA4: .4byte 0x00010200
	thumb_func_end ov85_02241A58

	thumb_func_start ov85_02241AA8
ov85_02241AA8: @ 0x02241AA8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x94
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #0xa
	bl FUN_0200B1EC
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241AF0 @ =0x000F0200
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241AF0: .4byte 0x000F0200
	thumb_func_end ov85_02241AA8

	thumb_func_start ov85_02241AF4
ov85_02241AF4: @ 0x02241AF4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xa4
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020973D4
	adds r1, r0, #0
	beq _02241B18
	subs r1, r1, #1
_02241B18:
	adds r4, #0xc4
	ldr r0, [r4]
	adds r1, #0xb
	bl FUN_0200B1EC
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241B4C @ =0x000F0200
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02241B4C: .4byte 0x000F0200
	thumb_func_end ov85_02241AF4

	thumb_func_start ov85_02241B50
ov85_02241B50: @ 0x02241B50
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x74
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #8
	bl FUN_0200B1EC
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241B98 @ =0x000F0200
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241B98: .4byte 0x000F0200
	thumb_func_end ov85_02241B50

	thumb_func_start ov85_02241B9C
ov85_02241B9C: @ 0x02241B9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x84
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_020973D4
	movs r1, #0xfa
	lsls r1, r1, #2
	muls r1, r0, r1
	adds r0, r1, #0
	movs r1, #0xfe
	blx FUN_020E2178
	adds r0, r0, #5
	movs r1, #0xa
	blx FUN_020E2178
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #9
	bl FUN_0200B1EC
	str r0, [sp, #0x10]
	movs r0, #0x20
	movs r1, #0x24
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #0xa
	blx FUN_020E2178
	movs r1, #0
	adds r2, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r3, #2
	bl FUN_0200B60C
	adds r0, r7, #0
	movs r1, #0xa
	blx FUN_020E2178
	movs r0, #0
	adds r2, r1, #0
	str r0, [sp]
	movs r1, #1
	adds r0, r5, #0
	str r1, [sp, #4]
	adds r0, #0xc8
	ldr r0, [r0]
	adds r3, r1, #0
	bl FUN_0200B60C
	adds r5, #0xc8
	ldr r0, [r5]
	ldr r2, [sp, #0x10]
	adds r1, r4, #0
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241C60 @ =0x000F0200
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02241C60: .4byte 0x000F0200
	thumb_func_end ov85_02241B9C

	thumb_func_start ov85_02241C64
ov85_02241C64: @ 0x02241C64
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #7
	bhi _02241CCE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02241C78: @ jump table
	.2byte _02241C88 - _02241C78 - 2 @ case 0
	.2byte _02241C8E - _02241C78 - 2 @ case 1
	.2byte _02241C94 - _02241C78 - 2 @ case 2
	.2byte _02241C9A - _02241C78 - 2 @ case 3
	.2byte _02241CA6 - _02241C78 - 2 @ case 4
	.2byte _02241CB2 - _02241C78 - 2 @ case 5
	.2byte _02241CBE - _02241C78 - 2 @ case 6
	.2byte _02241CCA - _02241C78 - 2 @ case 7
_02241C88:
	bl ov85_022418CC
	pop {r4, pc}
_02241C8E:
	bl ov85_022418EC
	pop {r4, pc}
_02241C94:
	bl ov85_0224198C
	pop {r4, pc}
_02241C9A:
	bl ov85_0224196C
	adds r0, r4, #0
	bl ov85_0224190C
	pop {r4, pc}
_02241CA6:
	bl ov85_0224192C
	adds r0, r4, #0
	bl ov85_0224194C
	pop {r4, pc}
_02241CB2:
	bl ov85_02241B50
	adds r0, r4, #0
	bl ov85_02241B9C
	pop {r4, pc}
_02241CBE:
	bl ov85_02241AA8
	adds r0, r4, #0
	bl ov85_02241AF4
	pop {r4, pc}
_02241CCA:
	bl ov85_02241A58
_02241CCE:
	pop {r4, pc}
	thumb_func_end ov85_02241C64

	thumb_func_start ov85_02241CD0
ov85_02241CD0: @ 0x02241CD0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02241CD6:
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov85_02241C64
	adds r4, r4, #1
	cmp r4, #8
	blo _02241CD6
	pop {r3, r4, r5, pc}
	thumb_func_end ov85_02241CD0

	thumb_func_start ov85_02241CE8
ov85_02241CE8: @ 0x02241CE8
	push {r3, lr}
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02241D06
	movs r0, #0
	str r0, [sp]
	ldr r0, _02241D0C @ =0x04000050
	movs r1, #2
	movs r2, #4
	movs r3, #0x10
	blx FUN_020BF55C
	movs r0, #1
	pop {r3, pc}
_02241D06:
	movs r0, #0
	pop {r3, pc}
	nop
_02241D0C: .4byte 0x04000050
	thumb_func_end ov85_02241CE8

	thumb_func_start ov85_02241D10
ov85_02241D10: @ 0x02241D10
	push {r4, lr}
	ldr r1, _02241DE4 @ =0x021BF67C
	adds r4, r0, #0
	ldr r3, [r1, #0x44]
	movs r2, #0x40
	adds r0, r3, #0
	tst r0, r2
	beq _02241D6C
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	subs r2, #0x41
	ldrb r1, [r0, #8]
	bl ov85_02241EB8
	movs r1, #0x7e
	lsls r1, r1, #2
	ldr r3, [r4, r1]
	ldrb r2, [r3, #8]
	cmp r2, r0
	beq _02241D68
	strb r0, [r3, #8]
	adds r0, r1, #0
	movs r2, #0
	adds r0, #9
	strb r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #8
	strb r2, [r4, r0]
	ldr r1, [r4, r1]
	ldrb r0, [r1, #0xa]
	cmp r0, #3
	bne _02241D5E
	ldrb r0, [r1, #9]
	cmp r0, #0
	beq _02241D5E
	subs r0, r0, #1
	strb r0, [r1, #9]
	b _02241D64
_02241D5E:
	ldrb r0, [r1, #0xa]
	subs r0, r0, #1
	strb r0, [r1, #0xa]
_02241D64:
	movs r0, #2
	pop {r4, pc}
_02241D68:
	movs r0, #1
	pop {r4, pc}
_02241D6C:
	movs r0, #0x80
	tst r0, r3
	beq _02241DC4
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #1
	ldrb r1, [r0, #8]
	bl ov85_02241EB8
	movs r1, #0x7e
	lsls r1, r1, #2
	ldr r3, [r4, r1]
	ldrb r2, [r3, #8]
	cmp r2, r0
	beq _02241DC0
	strb r0, [r3, #8]
	adds r0, r1, #0
	movs r2, #0
	adds r0, #9
	strb r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #8
	strb r2, [r4, r0]
	ldr r3, [r4, r1]
	ldrb r0, [r3, #0xa]
	cmp r0, #5
	bne _02241DB6
	ldrb r1, [r3, #9]
	ldrb r0, [r3, #0xb]
	adds r2, r1, #0
	adds r2, #9
	cmp r2, r0
	bge _02241DB6
	adds r0, r1, #1
	strb r0, [r3, #9]
	b _02241DBC
_02241DB6:
	ldrb r0, [r3, #0xa]
	adds r0, r0, #1
	strb r0, [r3, #0xa]
_02241DBC:
	movs r0, #2
	pop {r4, pc}
_02241DC0:
	movs r0, #1
	pop {r4, pc}
_02241DC4:
	ldr r1, [r1, #0x48]
	movs r0, #2
	tst r0, r1
	bne _02241DD4
	ldr r0, _02241DE8 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _02241DE0
_02241DD4:
	movs r0, #1
	movs r1, #0x24
	bl FUN_0208C120
	movs r0, #3
	pop {r4, pc}
_02241DE0:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_02241DE4: .4byte 0x021BF67C
_02241DE8: .4byte 0x021BF6BC
	thumb_func_end ov85_02241D10

	thumb_func_start ov85_02241DEC
ov85_02241DEC: @ 0x02241DEC
	push {r3, lr}
	bl FUN_0200F2AC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r3, pc}
	thumb_func_end ov85_02241DEC

	thumb_func_start ov85_02241DF8
ov85_02241DF8: @ 0x02241DF8
	push {r3, r4, r5, lr}
	movs r4, #2
	adds r5, r0, #0
	lsls r1, r4, #8
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _02241E1C
	ldr r0, _02241E58 @ =0x00000201
	ldrb r1, [r5, r0]
	adds r1, r1, #4
	strb r1, [r5, r0]
	ldrb r0, [r5, r0]
	cmp r0, #0x10
	bne _02241E42
	movs r1, #1
	lsls r0, r1, #9
	strb r1, [r5, r0]
	b _02241E42
_02241E1C:
	cmp r1, #1
	bne _02241E2C
	bl ov85_02241F0C
	adds r1, r4, #0
	lsls r0, r1, #8
	strb r1, [r5, r0]
	b _02241E42
_02241E2C:
	ldr r0, _02241E58 @ =0x00000201
	ldrb r1, [r5, r0]
	subs r1, r1, #4
	strb r1, [r5, r0]
	ldrb r1, [r5, r0]
	cmp r1, #0
	bne _02241E42
	movs r1, #0
	subs r0, r0, #1
	strb r1, [r5, r0]
	movs r4, #1
_02241E42:
	ldr r0, _02241E58 @ =0x00000201
	ldrb r2, [r5, r0]
	movs r0, #0x10
	subs r1, r0, r2
	lsls r0, r2, #8
	orrs r1, r0
	ldr r0, _02241E5C @ =0x04000052
	strh r1, [r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02241E58: .4byte 0x00000201
_02241E5C: .4byte 0x04000052
	thumb_func_end ov85_02241DF8

	thumb_func_start ov85_02241E60
ov85_02241E60: @ 0x02241E60
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	ldrb r0, [r0, #8]
	bl ov85_02241EB0
	movs r3, #1
	adds r1, r0, #0
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x24
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	bl FUN_020070E8
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, #8]
	bl ov85_02241EB4
	adds r1, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x24
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0x60
	bl FUN_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov85_02241E60

	thumb_func_start ov85_02241EB0
ov85_02241EB0: @ 0x02241EB0
	adds r0, r0, #6
	bx lr
	thumb_func_end ov85_02241EB0

	thumb_func_start ov85_02241EB4
ov85_02241EB4: @ 0x02241EB4
	adds r0, #0x46
	bx lr
	thumb_func_end ov85_02241EB4

	thumb_func_start ov85_02241EB8
ov85_02241EB8: @ 0x02241EB8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	adds r4, r7, #0
	cmp r5, #0
	bge _02241EE6
	cmp r7, #0
	beq _02241F06
_02241ECA:
	subs r4, r4, #1
	lsls r1, r4, #0x10
	adds r0, r6, #0
	lsrs r1, r1, #0x10
	bl FUN_02097368
	cmp r0, #1
	bne _02241EE0
	adds r7, r4, #0
	adds r5, r5, #1
	beq _02241F06
_02241EE0:
	cmp r4, #0
	beq _02241F06
	b _02241ECA
_02241EE6:
	cmp r7, #0x3f
	beq _02241F06
_02241EEA:
	adds r4, r4, #1
	lsls r1, r4, #0x10
	adds r0, r6, #0
	lsrs r1, r1, #0x10
	bl FUN_02097368
	cmp r0, #1
	bne _02241F02
	lsls r0, r4, #0x10
	lsrs r7, r0, #0x10
	subs r5, r5, #1
	beq _02241F06
_02241F02:
	cmp r4, #0x3f
	bne _02241EEA
_02241F06:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov85_02241EB8

	thumb_func_start ov85_02241F0C
ov85_02241F0C: @ 0x02241F0C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x7e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x24
	ldrb r0, [r0, #8]
	bl FUN_020973B8
	movs r1, #0x7f
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov85_02241CD0
	movs r0, #0x35
	movs r1, #0x24
	bl FUN_02006C24
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov85_02241E60
	adds r0, r5, #0
	bl FUN_02006CA8
	adds r0, r4, #0
	bl ov85_02242578
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019448
	pop {r3, r4, r5, pc}
	thumb_func_end ov85_02241F0C

	thumb_func_start ov85_02241F5C
ov85_02241F5C: @ 0x02241F5C
	push {r3, r4, lr}
	sub sp, #4
	blx FUN_020BF9AC
	blx FUN_020BFB4C
	ldr r0, _02241FD4 @ =0x04000060
	ldr r1, _02241FD8 @ =0xFFFFCFFD
	ldrh r2, [r0]
	ldr r3, _02241FDC @ =0x0000CFFB
	ands r2, r1
	strh r2, [r0]
	ldrh r2, [r0]
	ands r2, r3
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r4, [r0]
	adds r1, r1, #2
	subs r3, #0x1c
	ands r4, r2
	movs r2, #8
	orrs r2, r4
	strh r2, [r0]
	ldrh r2, [r0]
	ands r2, r1
	movs r1, #0x10
	orrs r1, r2
	strh r1, [r0]
	ldrh r1, [r0]
	ands r1, r3
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r0, #0
	ldr r2, _02241FE0 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _02241FE4 @ =0x04000540
	movs r0, #0
	str r0, [r1]
	ldr r0, _02241FE8 @ =0xBFFF0000
	str r0, [r1, #0x40]
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r1, _02241FEC @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	strh r2, [r1]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02241FD4: .4byte 0x04000060
_02241FD8: .4byte 0xFFFFCFFD
_02241FDC: .4byte 0x0000CFFB
_02241FE0: .4byte 0x00007FFF
_02241FE4: .4byte 0x04000540
_02241FE8: .4byte 0xBFFF0000
_02241FEC: .4byte 0x04000008
	thumb_func_end ov85_02241F5C

	thumb_func_start ov85_02241FF0
ov85_02241FF0: @ 0x02241FF0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	bl FUN_020203EC
	ldr r2, _02242024 @ =0x04000440
	movs r3, #0
	adds r1, r2, #0
	str r3, [r2]
	adds r1, #0x14
	str r3, [r1]
	movs r0, #2
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0xd4
	str r3, [r1]
	bl ov85_022420A8
	adds r0, r4, #0
	bl ov85_02242144
	ldr r0, _02242028 @ =0x04000540
	movs r1, #1
	str r1, [r0]
	pop {r4, pc}
	.align 2, 0
_02242024: .4byte 0x04000440
_02242028: .4byte 0x04000540
	thumb_func_end ov85_02241FF0

	thumb_func_start ov85_0224202C
ov85_0224202C: @ 0x0224202C
	ldr r3, _02242034 @ =FUN_020203B8
	adds r0, #0xd0
	ldr r0, [r0]
	bx r3
	.align 2, 0
_02242034: .4byte FUN_020203B8
	thumb_func_end ov85_0224202C

	thumb_func_start ov85_02242038
ov85_02242038: @ 0x02242038
	push {r3, r4, lr}
	sub sp, #0x1c
	ldr r3, _022420A0 @ =0x02242840
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x10
	stm r2!, {r0, r1}
	ldr r0, [r3]
	add r1, sp, #8
	str r0, [r2]
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	movs r0, #0x24
	bl FUN_020203AC
	adds r1, r4, #0
	adds r1, #0xd0
	str r0, [r1]
	movs r1, #1
	adds r0, r4, #0
	str r1, [sp]
	adds r0, #0xd0
	ldr r0, [r0]
	ldr r3, _022420A4 @ =0x000005C1
	str r0, [sp, #4]
	add r0, sp, #0x10
	lsls r1, r1, #0x10
	add r2, sp, #8
	bl FUN_02020738
	adds r2, r4, #0
	adds r2, #0xd0
	movs r1, #0x19
	ldr r2, [r2]
	movs r0, #0
	lsls r1, r1, #0xe
	bl FUN_020206BC
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_020206B0
	adds r4, #0xd0
	ldr r0, [r4]
	bl FUN_020203D4
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_022420A0: .4byte 0x02242840
_022420A4: .4byte 0x000005C1
	thumb_func_end ov85_02242038

	thumb_func_start ov85_022420A8
ov85_022420A8: @ 0x022420A8
	push {r4, r5, r6, r7}
	adds r4, r0, #0
	ldr r0, _02242110 @ =0x121800C0
	ldr r1, _02242114 @ =0x040004A4
	ldr r2, _02242118 @ =0x00003FE8
	str r0, [r1]
	movs r0, #1
	str r0, [r1, #0x5c]
	ldr r0, _0224211C @ =0x0400048C
	movs r3, #0
	subs r1, #0x24
_022420BE:
	str r2, [r1]
	ldrh r7, [r4, #2]
	ldrh r5, [r4]
	ldrh r6, [r4, #4]
	lsls r7, r7, #0x10
	orrs r5, r7
	str r5, [r0]
	str r6, [r0]
	str r2, [r1]
	ldrh r7, [r4, #8]
	ldrh r5, [r4, #6]
	ldrh r6, [r4, #0xa]
	lsls r7, r7, #0x10
	orrs r5, r7
	str r5, [r0]
	str r6, [r0]
	str r2, [r1]
	ldrh r7, [r4, #0x14]
	ldrh r5, [r4, #0x12]
	ldrh r6, [r4, #0x16]
	lsls r7, r7, #0x10
	orrs r5, r7
	str r5, [r0]
	str r6, [r0]
	str r2, [r1]
	ldrh r7, [r4, #0xe]
	ldrh r5, [r4, #0xc]
	ldrh r6, [r4, #0x10]
	lsls r7, r7, #0x10
	orrs r5, r7
	str r5, [r0]
	adds r3, r3, #1
	adds r4, #0x18
	str r6, [r0]
	cmp r3, #4
	blo _022420BE
	ldr r0, _02242120 @ =0x04000504
	movs r1, #0
	str r1, [r0]
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_02242110: .4byte 0x121800C0
_02242114: .4byte 0x040004A4
_02242118: .4byte 0x00003FE8
_0224211C: .4byte 0x0400048C
_02242120: .4byte 0x04000504
	thumb_func_end ov85_022420A8

	thumb_func_start ov85_02242124
ov85_02242124: @ 0x02242124
	movs r2, #0
	ldrsh r3, [r0, r2]
	ldrsh r2, [r1, r2]
	adds r2, r3, r2
	strh r2, [r0]
	movs r2, #2
	ldrsh r3, [r0, r2]
	ldrsh r2, [r1, r2]
	adds r2, r3, r2
	strh r2, [r0, #2]
	movs r2, #4
	ldrsh r3, [r0, r2]
	ldrsh r1, [r1, r2]
	adds r1, r3, r1
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov85_02242124

	thumb_func_start ov85_02242144
ov85_02242144: @ 0x02242144
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp]
	movs r0, #0x7d
	ldr r1, [sp]
	lsls r0, r0, #2
	ldr r1, [r1, r0]
	cmp r1, #4
	beq _02242212
	cmp r1, #3
	bne _0224217E
	ldr r6, [sp]
	movs r5, #0
	subs r0, #0x60
_02242160:
	adds r3, r6, #0
	adds r4, r6, r0
	adds r3, #0xd4
	movs r2, #0xc
_02242168:
	ldrh r1, [r4]
	adds r4, r4, #2
	strh r1, [r3]
	adds r3, r3, #2
	subs r2, r2, #1
	bne _02242168
	adds r5, r5, #1
	adds r6, #0x18
	cmp r5, #4
	blo _02242160
	b _02242204
_0224217E:
	movs r1, #0
	str r1, [sp, #4]
	adds r2, r0, #0
	ldr r1, [sp]
	subs r2, #0xc0
	adds r1, r1, r2
	str r1, [sp, #0x14]
	ldr r1, [sp]
	adds r2, r0, #0
	str r1, [sp, #0x10]
	adds r1, #0xd4
	str r1, [sp, #0x10]
	ldr r1, [sp]
	subs r2, #0xba
	adds r1, r1, r2
	adds r2, r0, #0
	str r1, [sp, #0xc]
	ldr r1, [sp]
	subs r2, #0xb4
	str r1, [sp, #8]
	adds r1, #0xda
	str r1, [sp, #8]
	ldr r1, [sp]
	subs r0, #0xae
	adds r4, r1, #0
	adds r5, r1, #0
	adds r7, r1, r2
	adds r4, #0xe0
	adds r6, r1, r0
	adds r5, #0xe6
_022421BA:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl ov85_02242124
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl ov85_02242124
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov85_02242124
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov85_02242124
	ldr r0, [sp, #0x14]
	adds r7, #0x18
	adds r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r4, #0x18
	adds r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r6, #0x18
	adds r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r5, #0x18
	adds r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blo _022421BA
_02242204:
	movs r1, #0x7d
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	adds r2, r0, #1
	ldr r0, [sp]
	str r2, [r0, r1]
_02242212:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov85_02242144

	thumb_func_start ov85_02242218
ov85_02242218: @ 0x02242218
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r2, _02242390 @ =0x02242940
	adds r5, r0, #0
	ldrh r3, [r2, #0x34]
	add r1, sp, #0
	adds r5, #0xd8
	strh r3, [r1, #0x12]
	ldrh r3, [r2, #0x36]
	strh r3, [r1, #0x14]
	ldrh r2, [r2, #0x38]
	strh r2, [r1, #0x16]
	adds r2, r0, #0
	ldrh r4, [r1, #0x12]
	adds r2, #0xd4
	strh r4, [r2]
	adds r2, r0, #0
	ldrh r3, [r1, #0x14]
	adds r2, #0xd6
	strh r3, [r2]
	ldrh r2, [r1, #0x16]
	strh r2, [r5]
	adds r5, r0, #0
	adds r5, #0xda
	strh r4, [r5]
	adds r5, r0, #0
	adds r5, #0xdc
	strh r3, [r5]
	adds r5, r0, #0
	adds r5, #0xde
	strh r2, [r5]
	adds r5, r0, #0
	adds r5, #0xe0
	strh r4, [r5]
	adds r5, r0, #0
	adds r5, #0xe2
	strh r3, [r5]
	adds r5, r0, #0
	adds r5, #0xe4
	strh r2, [r5]
	adds r5, r0, #0
	adds r5, #0xe6
	strh r4, [r5]
	adds r4, r0, #0
	adds r4, #0xe8
	strh r3, [r4]
	adds r3, r0, #0
	adds r3, #0xea
	strh r2, [r3]
	ldr r2, _02242394 @ =0x02242980
	adds r5, r0, #0
	ldrh r3, [r2, #0x2a]
	adds r5, #0xf0
	strh r3, [r1, #0xc]
	ldrh r3, [r2, #0x2c]
	strh r3, [r1, #0xe]
	ldrh r2, [r2, #0x2e]
	strh r2, [r1, #0x10]
	adds r2, r0, #0
	ldrh r4, [r1, #0xc]
	adds r2, #0xec
	strh r4, [r2]
	adds r2, r0, #0
	ldrh r3, [r1, #0xe]
	adds r2, #0xee
	strh r3, [r2]
	ldrh r2, [r1, #0x10]
	strh r2, [r5]
	adds r5, r0, #0
	adds r5, #0xf2
	strh r4, [r5]
	adds r5, r0, #0
	adds r5, #0xf4
	strh r3, [r5]
	adds r5, r0, #0
	adds r5, #0xf6
	strh r2, [r5]
	adds r5, r0, #0
	adds r5, #0xf8
	strh r4, [r5]
	adds r5, r0, #0
	adds r5, #0xfa
	strh r3, [r5]
	adds r5, r0, #0
	adds r5, #0xfc
	strh r2, [r5]
	adds r5, r0, #0
	adds r5, #0xfe
	strh r4, [r5]
	movs r5, #1
	lsls r5, r5, #8
	strh r3, [r0, r5]
	adds r3, r5, #2
	strh r2, [r0, r3]
	ldr r2, _02242398 @ =0x022429C0
	adds r4, r5, #6
	ldrh r3, [r2, #0x20]
	strh r3, [r1, #6]
	ldrh r3, [r2, #0x22]
	strh r3, [r1, #8]
	ldrh r2, [r2, #0x24]
	strh r2, [r1, #0xa]
	ldrh r3, [r1, #6]
	adds r2, r5, #4
	strh r3, [r0, r2]
	ldrh r2, [r1, #8]
	strh r2, [r0, r4]
	adds r4, r5, #0
	ldrh r6, [r1, #0xa]
	adds r4, #8
	strh r6, [r0, r4]
	adds r4, r5, #0
	adds r4, #0xa
	strh r3, [r0, r4]
	adds r4, r5, #0
	adds r4, #0xc
	strh r2, [r0, r4]
	adds r4, r5, #0
	adds r4, #0xe
	strh r6, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x10
	strh r3, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x12
	strh r2, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x14
	strh r6, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x16
	strh r3, [r0, r4]
	adds r3, r5, #0
	adds r3, #0x18
	strh r2, [r0, r3]
	adds r2, r5, #0
	adds r2, #0x1a
	strh r6, [r0, r2]
	ldr r2, _0224239C @ =0x02242A00
	adds r4, r5, #0
	ldrh r3, [r2, #0x16]
	adds r4, #0x1e
	strh r3, [r1]
	ldrh r3, [r2, #0x18]
	strh r3, [r1, #2]
	ldrh r2, [r2, #0x1a]
	strh r2, [r1, #4]
	adds r2, r5, #0
	ldrh r3, [r1]
	adds r2, #0x1c
	strh r3, [r0, r2]
	ldrh r2, [r1, #2]
	strh r2, [r0, r4]
	adds r4, r5, #0
	ldrh r1, [r1, #4]
	adds r4, #0x20
	strh r1, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x22
	strh r3, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x24
	strh r2, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x26
	strh r1, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x28
	strh r3, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x2a
	strh r2, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x2c
	strh r1, [r0, r4]
	adds r4, r5, #0
	adds r4, #0x2e
	strh r3, [r0, r4]
	adds r3, r5, #0
	adds r3, #0x30
	strh r2, [r0, r3]
	adds r5, #0x32
	strh r1, [r0, r5]
	bl ov85_02242578
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02242390: .4byte 0x02242940
_02242394: .4byte 0x02242980
_02242398: .4byte 0x022429C0
_0224239C: .4byte 0x02242A00
	thumb_func_end ov85_02242218

	thumb_func_start ov85_022423A0
ov85_022423A0: @ 0x022423A0
	push {r4, r5}
	cmp r2, #0xff
	bne _022423B6
	ldrh r2, [r0]
	strh r2, [r1]
	ldrh r2, [r0, #2]
	strh r2, [r1, #2]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
_022423B6:
	cmp r2, #0
	bne _022423CA
	ldrh r2, [r0, #6]
	strh r2, [r1]
	ldrh r2, [r0, #8]
	strh r2, [r1, #2]
	ldrh r0, [r0, #0xa]
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
_022423CA:
	movs r3, #6
	ldrsh r5, [r0, r3]
	movs r3, #0xc
	ldrsh r3, [r0, r3]
	adds r4, r3, #0
	muls r4, r2, r4
	adds r3, r5, r4
	strh r3, [r1]
	movs r3, #8
	ldrsh r5, [r0, r3]
	movs r3, #0xe
	ldrsh r3, [r0, r3]
	adds r4, r3, #0
	muls r4, r2, r4
	adds r3, r5, r4
	strh r3, [r1, #2]
	movs r3, #0xa
	ldrsh r4, [r0, r3]
	movs r3, #0x10
	ldrsh r0, [r0, r3]
	muls r2, r0, r2
	adds r0, r4, r2
	strh r0, [r1, #4]
	pop {r4, r5}
	bx lr
	thumb_func_end ov85_022423A0

	thumb_func_start ov85_022423FC
ov85_022423FC: @ 0x022423FC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	adds r6, r2, #0
	subs r7, r1, r0
	adds r0, r7, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	movs r1, #0
	blx FUN_020E1108
	bls _02242450
	adds r0, r7, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, _02242570 @ =0x45800000
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	b _02242476
_02242450:
	adds r0, r7, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, _02242570 @ =0x45800000
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	blx FUN_020E1740
_02242476:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r6]
	movs r0, #2
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	subs r7, r1, r0
	adds r0, r7, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	movs r1, #0
	blx FUN_020E1108
	bls _022424C8
	adds r0, r7, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, _02242570 @ =0x45800000
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	b _022424EE
_022424C8:
	adds r0, r7, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, _02242570 @ =0x45800000
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	blx FUN_020E1740
_022424EE:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r6, #2]
	movs r0, #4
	ldrsh r1, [r4, r0]
	ldrsh r0, [r5, r0]
	subs r4, r1, r0
	adds r0, r4, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	movs r1, #0
	blx FUN_020E1108
	bls _02242540
	adds r0, r4, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, _02242570 @ =0x45800000
	blx FUN_020E18B0
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	b _02242566
_02242540:
	adds r0, r4, #0
	blx FUN_020E17B4
	ldr r1, _02242570 @ =0x45800000
	blx FUN_020E1304
	ldr r1, _02242574 @ =0x40800000
	blx FUN_020E1304
	adds r1, r0, #0
	ldr r0, _02242570 @ =0x45800000
	blx FUN_020E18B0
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	blx FUN_020E1740
_02242566:
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	strh r0, [r6, #4]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242570: .4byte 0x45800000
_02242574: .4byte 0x40800000
	thumb_func_end ov85_022423FC

	thumb_func_start ov85_02242578
ov85_02242578: @ 0x02242578
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #5
	bl FUN_020973D4
	adds r2, r0, #0
	movs r1, #0x65
	lsls r1, r1, #2
	lsls r2, r2, #0x18
	ldr r0, _022427E0 @ =0x02242938
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl FUN_020973D4
	adds r2, r0, #0
	ldr r1, _022427E4 @ =0x0000019A
	lsls r2, r2, #0x18
	ldr r0, _022427E8 @ =0x0224294A
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #7
	bl FUN_020973D4
	adds r2, r0, #0
	ldr r1, _022427EC @ =0x000001A6
	lsls r2, r2, #0x18
	ldr r0, _022427F0 @ =0x0224295C
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r1, #0x1a
	lsls r1, r1, #4
	ldr r0, _022427F4 @ =0x0224296E
	adds r1, r5, r1
	movs r2, #0
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	bl FUN_020973D4
	adds r2, r0, #0
	movs r1, #0x6b
	lsls r1, r1, #2
	lsls r2, r2, #0x18
	ldr r0, _022427F8 @ =0x02242980
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #5
	bl FUN_020973D4
	adds r2, r0, #0
	ldr r1, _022427FC @ =0x000001B2
	lsls r2, r2, #0x18
	ldr r0, _02242800 @ =0x02242992
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	ldr r1, _02242804 @ =0x000001BE
	ldr r0, _02242808 @ =0x022429A4
	adds r1, r5, r1
	movs r2, #0
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #8
	bl FUN_020973D4
	adds r2, r0, #0
	movs r1, #0x6e
	lsls r1, r1, #2
	lsls r2, r2, #0x18
	ldr r0, _0224280C @ =0x022429B6
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #9
	bl FUN_020973D4
	adds r2, r0, #0
	movs r1, #0x71
	lsls r1, r1, #2
	lsls r2, r2, #0x18
	ldr r0, _02242810 @ =0x022429C8
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	ldr r1, _02242814 @ =0x000001CA
	ldr r0, _02242818 @ =0x022429DA
	adds r1, r5, r1
	movs r2, #0
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #7
	bl FUN_020973D4
	adds r2, r0, #0
	ldr r1, _0224281C @ =0x000001D6
	lsls r2, r2, #0x18
	ldr r0, _02242820 @ =0x022429EC
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #8
	bl FUN_020973D4
	adds r2, r0, #0
	movs r1, #0x1d
	lsls r1, r1, #4
	lsls r2, r2, #0x18
	ldr r0, _02242824 @ =0x022429FE
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r1, #0x77
	lsls r1, r1, #2
	ldr r0, _02242828 @ =0x02242A10
	adds r1, r5, r1
	movs r2, #0
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl FUN_020973D4
	adds r2, r0, #0
	ldr r1, _0224282C @ =0x000001E2
	lsls r2, r2, #0x18
	ldr r0, _02242830 @ =0x02242A22
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #7
	bl FUN_020973D4
	adds r2, r0, #0
	ldr r1, _02242834 @ =0x000001EE
	lsls r2, r2, #0x18
	ldr r0, _02242838 @ =0x02242A34
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #8
	bl FUN_020973D4
	adds r2, r0, #0
	movs r1, #0x7a
	lsls r1, r1, #2
	lsls r2, r2, #0x18
	ldr r0, _0224283C @ =0x02242A46
	adds r1, r5, r1
	lsrs r2, r2, #0x18
	bl ov85_022423A0
	movs r0, #0
	str r0, [sp, #0x24]
	movs r0, #0x4d
	lsls r0, r0, #2
	adds r1, r5, r0
	str r1, [sp, #0x20]
	adds r1, r0, #0
	adds r1, #0x60
	adds r1, r5, r1
	str r1, [sp, #0x1c]
	adds r1, r5, #0
	str r1, [sp, #0x18]
	adds r1, #0xd4
	str r1, [sp, #0x18]
	adds r1, r0, #6
	adds r1, r5, r1
	str r1, [sp, #0x14]
	adds r1, r0, #0
	adds r1, #0x66
	adds r1, r5, r1
	str r1, [sp, #0x10]
	adds r1, r5, #0
	str r1, [sp, #0xc]
	adds r1, #0xda
	str r1, [sp, #0xc]
	adds r1, r0, #0
	adds r1, #0xc
	adds r1, r5, r1
	str r1, [sp, #8]
	adds r1, r0, #0
	adds r1, #0x6c
	adds r1, r5, r1
	str r1, [sp, #4]
	adds r1, r5, #0
	str r1, [sp]
	adds r1, #0xe0
	str r1, [sp]
	adds r1, r0, #0
	adds r1, #0x12
	adds r0, #0x72
	adds r4, r5, #0
	adds r7, r5, r1
	adds r6, r5, r0
	adds r4, #0xe6
_02242766:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	bl ov85_022423FC
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl ov85_022423FC
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	bl ov85_022423FC
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov85_022423FC
	ldr r0, [sp, #0x20]
	adds r7, #0x18
	adds r0, #0x18
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r6, #0x18
	adds r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r4, #0x18
	adds r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, #0x18
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, #0x18
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x24]
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #4
	blo _02242766
	movs r0, #0x7d
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022427E0: .4byte 0x02242938
_022427E4: .4byte 0x0000019A
_022427E8: .4byte 0x0224294A
_022427EC: .4byte 0x000001A6
_022427F0: .4byte 0x0224295C
_022427F4: .4byte 0x0224296E
_022427F8: .4byte 0x02242980
_022427FC: .4byte 0x000001B2
_02242800: .4byte 0x02242992
_02242804: .4byte 0x000001BE
_02242808: .4byte 0x022429A4
_0224280C: .4byte 0x022429B6
_02242810: .4byte 0x022429C8
_02242814: .4byte 0x000001CA
_02242818: .4byte 0x022429DA
_0224281C: .4byte 0x000001D6
_02242820: .4byte 0x022429EC
_02242824: .4byte 0x022429FE
_02242828: .4byte 0x02242A10
_0224282C: .4byte 0x000001E2
_02242830: .4byte 0x02242A22
_02242834: .4byte 0x000001EE
_02242838: .4byte 0x02242A34
_0224283C: .4byte 0x02242A46
	thumb_func_end ov85_02242578
	@ 0x02242840
