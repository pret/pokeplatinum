	.include "macros/function.inc"


	.text

	thumb_func_start ov84_0223B5A0
ov84_0223B5A0: @ 0x0223B5A0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _0223B758 @ =0xFFFFE0FF
	ldr r3, _0223B75C @ =0x04001000
	ands r2, r1
	str r2, [r0]
	ldr r2, [r3]
	adds r0, #0x50
	ands r1, r2
	str r1, [r3]
	movs r1, #0
	strh r1, [r0]
	adds r3, #0x50
	strh r1, [r3]
	movs r1, #6
	movs r0, #3
	lsls r2, r1, #0xf
	bl FUN_02017FC8
	ldr r1, _0223B760 @ =0x000004A4
	adds r0, r5, #0
	movs r2, #6
	bl FUN_0200681C
	ldr r2, _0223B760 @ =0x000004A4
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r5, #0
	bl FUN_02006840
	adds r1, r4, #0
	adds r1, #0xc4
	str r0, [r1]
	adds r0, r4, #0
	bl ov84_0223B9AC
	movs r0, #6
	bl FUN_02018340
	str r0, [r4]
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_02025F30
	ldr r1, _0223B764 @ =0x00000425
	movs r3, #0
	strb r0, [r4, r1]
	movs r1, #6
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r1, #3
	adds r2, r1, #0
	bl FUN_0200F174
	movs r0, #3
	movs r1, #8
	bl FUN_02017DD4
	adds r0, r4, #0
	bl ov84_0223BEAC
	adds r0, r4, #0
	bl ov84_0223BDB4
	adds r0, r4, #0
	bl ov84_0223C158
	adds r0, r4, #0
	bl ov84_0223BE24
	adds r0, r4, #0
	bl ov84_0223C720
	bl ov84_0223BA3C
	ldr r0, [r4]
	bl ov84_0223BA5C
	adds r0, r4, #0
	bl ov84_0223BC1C
	adds r0, r4, #0
	bl ov84_0223D0BC
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	adds r0, r4, #0
	bl ov84_0223F040
	movs r0, #1
	bl FUN_02002B20
	adds r0, r4, #0
	bl ov84_0223F1F8
	adds r0, r4, #0
	bl ov84_0223F25C
	adds r0, r4, #0
	bl ov84_0223F2FC
	adds r0, r4, #0
	bl ov84_0223F438
	adds r0, r4, #0
	bl ov84_0223FA88
	adds r0, r4, #0
	bl ov84_0223F7D4
	adds r0, r4, #0
	bl ov84_0223BFBC
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r1, r3, #0
	adds r0, #0xa
	adds r1, #8
	adds r0, r0, r2
	adds r1, r1, r2
	adds r2, r3, r2
	ldrb r2, [r2, #0xd]
	bl ov84_0223C194
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r1, r3, #0
	adds r0, #0xa
	adds r1, #8
	adds r0, r0, r2
	adds r1, r1, r2
	adds r2, r3, r2
	ldrb r2, [r2, #0xd]
	movs r3, #9
	bl ov84_0223C1D0
	adds r0, r4, #0
	bl ov84_022403F4
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r2, r3, r2
	ldrh r1, [r2, #0xa]
	ldrh r2, [r2, #8]
	adds r0, r4, #0
	bl ov84_0223C224
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	adds r0, #0xfc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0223B73A
	adds r0, r4, #0
	bl ov84_02240328
_0223B73A:
	ldr r0, _0223B768 @ =ov84_0223BA14
	adds r1, r4, #0
	bl FUN_02017798
	movs r1, #0
	movs r0, #0x33
	adds r2, r1, #0
	bl FUN_02004550
	bl FUN_020397E4
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223B758: .4byte 0xFFFFE0FF
_0223B75C: .4byte 0x04001000
_0223B760: .4byte 0x000004A4
_0223B764: .4byte 0x00000425
_0223B768: .4byte ov84_0223BA14
	thumb_func_end ov84_0223B5A0

	thumb_func_start ov84_0223B76C
ov84_0223B76C: @ 0x0223B76C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	bl FUN_0200682C
	ldr r1, [r4]
	adds r5, r0, #0
	cmp r1, #0x18
	bhi _0223B7C2
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223B788: @ jump table
	.2byte _0223B7BA - _0223B788 - 2 @ case 0
	.2byte _0223B7F2 - _0223B788 - 2 @ case 1
	.2byte _0223B7FA - _0223B788 - 2 @ case 2
	.2byte _0223B836 - _0223B788 - 2 @ case 3
	.2byte _0223B844 - _0223B788 - 2 @ case 4
	.2byte _0223B8E0 - _0223B788 - 2 @ case 5
	.2byte _0223B8E0 - _0223B788 - 2 @ case 6
	.2byte _0223B84C - _0223B788 - 2 @ case 7
	.2byte _0223B854 - _0223B788 - 2 @ case 8
	.2byte _0223B85C - _0223B788 - 2 @ case 9
	.2byte _0223B864 - _0223B788 - 2 @ case 10
	.2byte _0223B86C - _0223B788 - 2 @ case 11
	.2byte _0223B874 - _0223B788 - 2 @ case 12
	.2byte _0223B87C - _0223B788 - 2 @ case 13
	.2byte _0223B884 - _0223B788 - 2 @ case 14
	.2byte _0223B88C - _0223B788 - 2 @ case 15
	.2byte _0223B894 - _0223B788 - 2 @ case 16
	.2byte _0223B89C - _0223B788 - 2 @ case 17
	.2byte _0223B8A4 - _0223B788 - 2 @ case 18
	.2byte _0223B8AC - _0223B788 - 2 @ case 19
	.2byte _0223B8B4 - _0223B788 - 2 @ case 20
	.2byte _0223B8BC - _0223B788 - 2 @ case 21
	.2byte _0223B8C4 - _0223B788 - 2 @ case 22
	.2byte _0223B8CC - _0223B788 - 2 @ case 23
	.2byte _0223B8D4 - _0223B788 - 2 @ case 24
_0223B7BA:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _0223B7C4
_0223B7C2:
	b _0223B8E0
_0223B7C4:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #2
	bne _0223B7D8
	movs r0, #0x10
	str r0, [r4]
	b _0223B8E0
_0223B7D8:
	cmp r0, #1
	bne _0223B7E2
	movs r0, #0xe
	str r0, [r4]
	b _0223B8E0
_0223B7E2:
	cmp r0, #3
	bne _0223B7EC
	movs r0, #0x17
	str r0, [r4]
	b _0223B8E0
_0223B7EC:
	movs r0, #1
	str r0, [r4]
	b _0223B8E0
_0223B7F2:
	bl ov84_0223C51C
	str r0, [r4]
	b _0223B8E0
_0223B7FA:
	bl ov84_0223D0FC
	adds r0, r5, #0
	bl ov84_0223C920
	cmp r0, #1
	bne _0223B8E0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #2
	bne _0223B81C
	movs r0, #0x10
	str r0, [r4]
	b _0223B8E0
_0223B81C:
	cmp r0, #1
	bne _0223B826
	movs r0, #0xe
	str r0, [r4]
	b _0223B8E0
_0223B826:
	cmp r0, #3
	bne _0223B830
	movs r0, #0x17
	str r0, [r4]
	b _0223B8E0
_0223B830:
	movs r0, #1
	str r0, [r4]
	b _0223B8E0
_0223B836:
	bl ov84_0223D2F8
	cmp r0, #1
	bne _0223B8E0
	movs r0, #1
	str r0, [r4]
	b _0223B8E0
_0223B844:
	bl ov84_0223D730
	str r0, [r4]
	b _0223B8E0
_0223B84C:
	bl ov84_0223DF0C
	str r0, [r4]
	b _0223B8E0
_0223B854:
	bl ov84_0223DFF8
	str r0, [r4]
	b _0223B8E0
_0223B85C:
	bl ov84_0223E01C
	str r0, [r4]
	b _0223B8E0
_0223B864:
	bl ov84_0223E158
	str r0, [r4]
	b _0223B8E0
_0223B86C:
	bl ov84_0223E18C
	str r0, [r4]
	b _0223B8E0
_0223B874:
	bl ov84_0223D8EC
	str r0, [r4]
	b _0223B8E0
_0223B87C:
	bl ov84_0223DA04
	str r0, [r4]
	b _0223B8E0
_0223B884:
	bl ov84_0223E27C
	str r0, [r4]
	b _0223B8E0
_0223B88C:
	bl ov84_0223E36C
	str r0, [r4]
	b _0223B8E0
_0223B894:
	bl ov84_0223E3BC
	str r0, [r4]
	b _0223B8E0
_0223B89C:
	bl ov84_0223E588
	str r0, [r4]
	b _0223B8E0
_0223B8A4:
	bl ov84_0223E5C4
	str r0, [r4]
	b _0223B8E0
_0223B8AC:
	bl ov84_0223E7A8
	str r0, [r4]
	b _0223B8E0
_0223B8B4:
	bl ov84_0223E7CC
	str r0, [r4]
	b _0223B8E0
_0223B8BC:
	bl ov84_0223E920
	str r0, [r4]
	b _0223B8E0
_0223B8C4:
	bl ov84_0223E9B0
	str r0, [r4]
	b _0223B8E0
_0223B8CC:
	bl ov84_0223EA18
	str r0, [r4]
	b _0223B8E0
_0223B8D4:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223B8E0
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223B8E0:
	adds r0, r5, #0
	bl ov84_0223D014
	adds r0, r5, #0
	bl ov84_02240E5C
	adds r0, r5, #0
	bl ov84_02240ABC
	adds r5, #0xdc
	ldr r0, [r5]
	bl FUN_0200C7EC
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov84_0223B76C

	thumb_func_start ov84_0223B900
ov84_0223B900: @ 0x0223B900
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl ov84_02240A88
	adds r0, r4, #0
	bl ov84_0223C4E0
	adds r0, r4, #0
	bl ov84_0223BF68
	adds r0, r4, #4
	bl ov84_0223F1DC
	ldr r0, [r4]
	bl ov84_0223BBC4
	bl FUN_0201E530
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl ov84_0223FB50
	adds r0, r4, #0
	bl ov84_0223F238
	adds r0, r4, #0
	bl ov84_0223F800
	adds r0, r4, #0
	bl ov84_0223C178
	movs r0, #0xfe
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0200C560
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200B3F0
	adds r4, #0xd4
	ldr r0, [r4]
	bl FUN_02006CA8
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #6
	bl FUN_0201807C
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov84_0223B900

	thumb_func_start ov84_0223B9AC
ov84_0223B9AC: @ 0x0223B9AC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0207D990
	adds r1, r4, #0
	adds r1, #0xc8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_02025E38
	adds r1, r4, #0
	adds r1, #0xcc
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_02025E44
	adds r4, #0xd0
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov84_0223B9AC

	thumb_func_start ov84_0223B9E4
ov84_0223B9E4: @ 0x0223B9E4
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r3, _0223B9F0 @ =FUN_0202D834
	ldr r0, [r0]
	bx r3
	nop
_0223B9F0: .4byte FUN_0202D834
	thumb_func_end ov84_0223B9E4

	thumb_func_start ov84_0223B9F4
ov84_0223B9F4: @ 0x0223B9F4
	push {r4, lr}
	adds r4, r1, #0
	bl ov84_0223B9E4
	bl FUN_0202D9CC
	strb r4, [r0]
	pop {r4, pc}
	thumb_func_end ov84_0223B9F4

	thumb_func_start ov84_0223BA04
ov84_0223BA04: @ 0x0223BA04
	push {r4, lr}
	adds r4, r1, #0
	bl ov84_0223B9E4
	adds r1, r4, #0
	bl FUN_0202D9EC
	pop {r4, pc}
	thumb_func_end ov84_0223BA04

	thumb_func_start ov84_0223BA14
ov84_0223BA14: @ 0x0223BA14
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r3, _0223BA34 @ =0x027E0000
	ldr r1, _0223BA38 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_0223BA34: .4byte 0x027E0000
_0223BA38: .4byte 0x00003FF8
	thumb_func_end ov84_0223BA14

	thumb_func_start ov84_0223BA3C
ov84_0223BA3C: @ 0x0223BA3C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223BA58 @ =0x0224100C
	add r3, sp, #0
	movs r2, #5
_0223BA46:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223BA46
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0223BA58: .4byte 0x0224100C
	thumb_func_end ov84_0223BA3C

	thumb_func_start ov84_0223BA5C
ov84_0223BA5C: @ 0x0223BA5C
	push {r4, r5, lr}
	sub sp, #0xd4
	ldr r5, _0223BBA4 @ =0x02240EC0
	add r3, sp, #0xc4
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0223BBA8 @ =0x02240EE4
	add r3, sp, #0xa8
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #0
	str r0, [r3]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _0223BBAC @ =0x02240F00
	add r3, sp, #0x8c
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
	ldr r5, _0223BBB0 @ =0x02240F38
	add r3, sp, #0x70
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
	bl FUN_02019EBC
	ldr r5, _0223BBB4 @ =0x02240F8C
	add r3, sp, #0x54
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
	ldr r5, _0223BBB8 @ =0x02240F1C
	add r3, sp, #0x38
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	adds r0, r4, #0
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	ldr r5, _0223BBBC @ =0x02240F54
	add r3, sp, #0x1c
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
	ldr r5, _0223BBC0 @ =0x02240F70
	add r3, sp, #0
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
	movs r3, #1
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #7
	movs r2, #9
	movs r3, #0x80
	bl FUN_0201C718
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0xc
	movs r3, #0x50
	bl FUN_0201C718
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #6
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #6
	bl FUN_02019690
	add sp, #0xd4
	pop {r4, r5, pc}
	nop
_0223BBA4: .4byte 0x02240EC0
_0223BBA8: .4byte 0x02240EE4
_0223BBAC: .4byte 0x02240F00
_0223BBB0: .4byte 0x02240F38
_0223BBB4: .4byte 0x02240F8C
_0223BBB8: .4byte 0x02240F1C
_0223BBBC: .4byte 0x02240F54
_0223BBC0: .4byte 0x02240F70
	thumb_func_end ov84_0223BA5C

	thumb_func_start ov84_0223BBC4
ov84_0223BBC4: @ 0x0223BBC4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x1b
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019044
	adds r0, r4, #0
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
	movs r0, #6
	adds r1, r4, #0
	bl FUN_02018238
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223BBC4

	thumb_func_start ov84_0223BC1C
ov84_0223BC1C: @ 0x0223BC1C
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0xd
	movs r1, #6
	bl FUN_02006C24
	adds r1, r4, #0
	adds r1, #0xd4
	str r0, [r1]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r2, [r4]
	movs r1, #0xb
	movs r3, #1
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r2, [r4]
	movs r1, #0xe
	movs r3, #1
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r2, [r4]
	movs r1, #0xd
	movs r3, #3
	bl FUN_0200710C
	movs r2, #0
	str r2, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #0xc
	adds r3, r2, #0
	bl FUN_02007130
	movs r0, #0x20
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xd4
	movs r3, #0x1a
	ldr r0, [r0]
	movs r1, #0x16
	movs r2, #0
	lsls r3, r3, #4
	bl FUN_02007130
	movs r1, #0x16
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #6
	bl FUN_02002E98
	movs r1, #0
	str r1, [sp]
	movs r0, #6
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _0223BDAC @ =0x000003F7
	movs r3, #0xe
	bl FUN_0200DAA4
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _0223BDB0 @ =0x000003D9
	movs r1, #0
	movs r3, #0xc
	bl FUN_0200DD0C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r2, [r4]
	movs r1, #0xf
	movs r3, #5
	bl FUN_020070E8
	movs r3, #0
	str r3, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	movs r1, #0x10
	movs r2, #4
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r2, [r4]
	movs r1, #0x11
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r2, [r4]
	movs r1, #0x20
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r2, [r4]
	movs r1, #0x21
	movs r3, #7
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r0, [r0]
	ldr r2, [r4]
	movs r1, #0x13
	movs r3, #4
	bl FUN_020070E8
	movs r3, #0x40
	str r3, [sp]
	movs r0, #6
	adds r4, #0xd4
	str r0, [sp, #4]
	ldr r0, [r4]
	movs r1, #0x12
	movs r2, #4
	bl FUN_02007130
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223BDAC: .4byte 0x000003F7
_0223BDB0: .4byte 0x000003D9
	thumb_func_end ov84_0223BC1C

	thumb_func_start ov84_0223BDB4
ov84_0223BDB4: @ 0x0223BDB4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r1, #0x1a
	movs r2, #7
	movs r3, #6
	bl FUN_0200B144
	movs r1, #0x45
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #1
	movs r1, #2
	movs r2, #0
	movs r3, #6
	bl FUN_0200C440
	movs r1, #0x11
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #6
	bl FUN_0200B358
	movs r2, #0x46
	lsls r2, r2, #2
	str r0, [r4, r2]
	movs r0, #0
	movs r1, #0x1a
	adds r2, #0x70
	movs r3, #6
	bl FUN_0200B144
	movs r1, #0x47
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r2, _0223BE20 @ =0x00000287
	movs r0, #0
	movs r1, #0x1a
	movs r3, #6
	bl FUN_0200B144
	movs r1, #0x12
	lsls r1, r1, #4
	str r0, [r4, r1]
	subs r1, #0x20
	adds r0, r1, #0
	movs r1, #6
	bl FUN_02023790
	movs r1, #0xfe
	lsls r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	nop
_0223BE20: .4byte 0x00000287
	thumb_func_end ov84_0223BDB4

	thumb_func_start ov84_0223BE24
ov84_0223BE24: @ 0x0223BE24
	push {r4, r5}
	ldr r2, _0223BE58 @ =0x00000424
	movs r1, #0
	strb r1, [r0, r2]
	adds r4, r2, #0
	movs r3, #0xc
_0223BE30:
	adds r2, r0, #0
	adds r2, #0xc4
	ldr r5, [r2]
	adds r2, r1, #0
	muls r2, r3, r2
	adds r2, r5, r2
	ldr r2, [r2, #4]
	cmp r2, #0
	beq _0223BE48
	ldrb r2, [r0, r4]
	adds r2, r2, #1
	strb r2, [r0, r4]
_0223BE48:
	adds r1, r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r1, #8
	blo _0223BE30
	pop {r4, r5}
	bx lr
	nop
_0223BE58: .4byte 0x00000424
	thumb_func_end ov84_0223BE24

	thumb_func_start ov84_0223BE5C
ov84_0223BE5C: @ 0x0223BE5C
	push {r3, r4}
	adds r0, #0xc4
	ldr r0, [r0]
	adds r4, r0, #4
	adds r0, #0x64
	ldrb r3, [r0]
	movs r0, #0xc
	muls r0, r3, r0
	cmp r2, #0
	ldr r2, [r4, r0]
	bne _0223BE7A
	lsls r0, r1, #2
	ldrh r0, [r2, r0]
	pop {r3, r4}
	bx lr
_0223BE7A:
	lsls r0, r1, #2
	adds r0, r2, r0
	ldrh r0, [r0, #2]
	pop {r3, r4}
	bx lr
	thumb_func_end ov84_0223BE5C

	thumb_func_start ov84_0223BE84
ov84_0223BE84: @ 0x0223BE84
	adds r3, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, _0223BE90 @ =FUN_0200B1B8
	bx r3
	nop
_0223BE90: .4byte FUN_0200B1B8
	thumb_func_end ov84_0223BE84

	thumb_func_start ov84_0223BE94
ov84_0223BE94: @ 0x0223BE94
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r2, #0
	bl FUN_0207D268
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl FUN_0200B1B8
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223BE94

	thumb_func_start ov84_0223BEAC
ov84_0223BEAC: @ 0x0223BEAC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r5, #0
	adds r0, #0x64
	strb r5, [r0]
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r6, r0, #4
	ldr r0, [r0, #0x6c]
	cmp r0, #0
	bne _0223BEEA
	movs r3, #1
	adds r2, r5, #0
	movs r1, #0xc
_0223BECE:
	adds r0, r5, #0
	muls r0, r1, r0
	adds r4, r6, r0
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223BF64
	adds r0, r5, #1
	lsls r0, r0, #0x10
	strh r3, [r4, #4]
	lsrs r5, r0, #0x10
	strh r2, [r4, #6]
	cmp r5, #8
	blo _0223BECE
	pop {r3, r4, r5, r6, r7, pc}
_0223BEEA:
	movs r0, #0xc
	muls r0, r5, r0
	adds r4, r6, r0
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223BF2E
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldrb r1, [r4, #8]
	add r2, sp, #0
	ldr r0, [r0, #0x6c]
	adds r2, #1
	add r3, sp, #0
	bl FUN_0207D9B4
	add r0, sp, #0
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne _0223BF18
	movs r1, #1
	add r0, sp, #0
	strb r1, [r0, #1]
_0223BF18:
	add r0, sp, #0
	ldrb r0, [r0, #1]
	strh r0, [r4, #4]
	add r0, sp, #0
	ldrb r0, [r0]
	strh r0, [r4, #6]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #8
	blo _0223BEEA
_0223BF2E:
	adds r0, r7, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r0, [r0, #0x6c]
	bl FUN_0207D9C4
	movs r1, #0
	movs r3, #0xc
_0223BF3E:
	adds r2, r1, #0
	muls r2, r3, r2
	adds r4, r6, r2
	ldr r2, [r6, r2]
	cmp r2, #0
	beq _0223BF64
	ldrb r2, [r4, #8]
	cmp r0, r2
	bne _0223BF5A
	adds r2, r7, #0
	adds r2, #0xc4
	ldr r2, [r2]
	adds r2, #0x64
	strb r1, [r2]
_0223BF5A:
	adds r1, r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #8
	blo _0223BF3E
_0223BF64:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov84_0223BEAC

	thumb_func_start ov84_0223BF68
ov84_0223BF68: @ 0x0223BF68
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r0, #0xc4
	ldr r1, [r0]
	ldr r0, [r1, #0x6c]
	cmp r0, #0
	beq _0223BFBA
	adds r7, r1, #4
	movs r4, #0
	adds r5, r7, #0
_0223BF7C:
	ldr r0, [r5]
	cmp r0, #0
	beq _0223BFA4
	adds r0, r6, #0
	adds r0, #0xc4
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldr r0, [r0]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldrb r1, [r5, #8]
	ldr r0, [r0, #0x6c]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0207D9C8
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #8
	blo _0223BF7C
_0223BFA4:
	adds r6, #0xc4
	ldr r1, [r6]
	ldr r0, [r1, #0x6c]
	adds r1, #0x64
	ldrb r2, [r1]
	movs r1, #0xc
	muls r1, r2, r1
	adds r1, r7, r1
	ldrb r1, [r1, #8]
	bl FUN_0207D9D4
_0223BFBA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov84_0223BF68

	thumb_func_start ov84_0223BFBC
ov84_0223BFBC: @ 0x0223BFBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r4, r2, r0
	ldrb r1, [r4, #8]
	ldr r0, _0223C154 @ =0x02241118
	ldrb r0, [r0, r1]
	movs r1, #6
	adds r0, r0, #3
	bl FUN_02013A04
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	subs r1, #0x4c
	movs r2, #0x20
	adds r3, r2, #0
	ldr r1, [r5, r1]
	subs r3, #0x23
	bl FUN_02013A4C
	ldrb r3, [r4, #8]
	cmp r3, #3
	bne _0223C086
	ldr r0, _0223C154 @ =0x02241118
	movs r6, #0
	ldrb r0, [r0, r3]
	cmp r0, #0
	bls _0223C056
	str r6, [sp]
	adds r7, r5, #0
_0223C00A:
	ldr r0, [r4]
	ldr r2, [sp]
	ldr r1, [sp]
	ldrh r2, [r0, r2]
	adds r1, r0, r1
	cmp r2, #0
	beq _0223C056
	ldrh r0, [r1, #2]
	cmp r0, #0
	beq _0223C056
	movs r0, #0x12
	movs r1, #0x59
	lsls r0, r0, #4
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	movs r3, #6
	bl ov84_0223BE94
	movs r0, #0x16
	movs r1, #0x59
	lsls r0, r0, #4
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	adds r2, r6, #0
	bl FUN_02013A6C
	ldr r0, [sp]
	ldrb r1, [r4, #8]
	adds r0, r0, #4
	str r0, [sp]
	ldr r0, _0223C154 @ =0x02241118
	adds r6, r6, #1
	ldrb r0, [r0, r1]
	adds r7, r7, #4
	cmp r6, r0
	blo _0223C00A
_0223C056:
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	subs r1, #0x4c
	movs r2, #0x20
	adds r3, r2, #0
	ldr r1, [r5, r1]
	subs r3, #0x22
	bl FUN_02013A4C
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	subs r1, #0x4c
	movs r2, #0x20
	adds r3, r2, #0
	ldr r1, [r5, r1]
	subs r3, #0x23
	bl FUN_02013A4C
	adds r0, r6, #3
	add sp, #8
	strb r0, [r4, #9]
	pop {r3, r4, r5, r6, r7, pc}
_0223C086:
	ldr r0, _0223C154 @ =0x02241118
	movs r6, #0
	ldrb r0, [r0, r3]
	cmp r0, #0
	bls _0223C0E0
	str r6, [sp, #4]
	adds r7, r5, #0
_0223C094:
	ldr r2, [r4]
	ldr r0, [sp, #4]
	ldr r1, [sp, #4]
	adds r0, r2, r0
	ldrh r2, [r2, r1]
	cmp r2, #0
	beq _0223C0E0
	ldrh r0, [r0, #2]
	cmp r0, #0
	beq _0223C0E0
	movs r0, #0x47
	movs r1, #0x59
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	movs r3, #6
	bl ov84_0223BE84
	movs r0, #0x16
	movs r1, #0x59
	lsls r0, r0, #4
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r7, r1]
	adds r2, r6, #0
	bl FUN_02013A6C
	ldr r0, [sp, #4]
	ldrb r3, [r4, #8]
	adds r0, r0, #4
	str r0, [sp, #4]
	ldr r0, _0223C154 @ =0x02241118
	adds r6, r6, #1
	ldrb r0, [r0, r3]
	adds r7, r7, #4
	cmp r6, r0
	blo _0223C094
_0223C0E0:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #5
	beq _0223C138
	cmp r3, #4
	bne _0223C108
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	subs r1, #0x4c
	movs r2, #0x20
	adds r3, r2, #0
	ldr r1, [r5, r1]
	subs r3, #0x22
	bl FUN_02013A4C
	b _0223C11C
_0223C108:
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	subs r1, #0x4c
	movs r2, #0x29
	adds r3, r2, #0
	ldr r1, [r5, r1]
	subs r3, #0x2b
	bl FUN_02013A4C
_0223C11C:
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	subs r1, #0x4c
	movs r2, #0x20
	adds r3, r2, #0
	ldr r1, [r5, r1]
	subs r3, #0x23
	bl FUN_02013A4C
	adds r0, r6, #3
	add sp, #8
	strb r0, [r4, #9]
	pop {r3, r4, r5, r6, r7, pc}
_0223C138:
	movs r1, #0x16
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	subs r1, #0x4c
	movs r2, #0x20
	adds r3, r2, #0
	ldr r1, [r5, r1]
	subs r3, #0x23
	bl FUN_02013A4C
	adds r0, r6, #2
	strb r0, [r4, #9]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223C154: .4byte 0x02241118
	thumb_func_end ov84_0223BFBC

	thumb_func_start ov84_0223C158
ov84_0223C158: @ 0x0223C158
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0x59
	adds r5, r0, #0
	movs r4, #0
	movs r7, #0x12
	lsls r6, r6, #2
_0223C164:
	adds r0, r7, #0
	movs r1, #6
	bl FUN_02023790
	str r0, [r5, r6]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xa5
	blo _0223C164
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov84_0223C158

	thumb_func_start ov84_0223C178
ov84_0223C178: @ 0x0223C178
	push {r4, r5, r6, lr}
	movs r6, #0x59
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_0223C182:
	ldr r0, [r5, r6]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xa5
	blo _0223C182
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov84_0223C178

	thumb_func_start ov84_0223C194
ov84_0223C194: @ 0x0223C194
	push {r4, r5}
	subs r2, r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #8
	bls _0223C1A4
	movs r5, #7
	b _0223C1AA
_0223C1A4:
	subs r3, r2, #1
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
_0223C1AA:
	ldrh r3, [r0]
	cmp r3, #0
	beq _0223C1BC
	subs r4, r2, #1
	adds r3, r3, r5
	cmp r3, r4
	ble _0223C1BC
	subs r3, r4, r5
	strh r3, [r0]
_0223C1BC:
	ldrh r3, [r0]
	ldrh r0, [r1]
	subs r2, r2, #1
	adds r0, r3, r0
	cmp r0, r2
	blt _0223C1CC
	subs r0, r2, r3
	strh r0, [r1]
_0223C1CC:
	pop {r4, r5}
	bx lr
	thumb_func_end ov84_0223C194

	thumb_func_start ov84_0223C1D0
ov84_0223C1D0: @ 0x0223C1D0
	push {r3, r4, r5, r6}
	subs r2, r2, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #8
	bls _0223C1E0
	movs r5, #7
	b _0223C1E6
_0223C1E0:
	subs r4, r2, #1
	lsls r4, r4, #0x18
	lsrs r5, r4, #0x18
_0223C1E6:
	ldrh r6, [r1]
	asrs r4, r3, #1
	adds r3, r4, #2
	cmp r6, r3
	blt _0223C21E
	subs r6, r6, r4
	movs r3, #0
	subs r6, r6, #2
	bmi _0223C21E
	subs r2, r2, #1
_0223C1FA:
	ldrh r6, [r0]
	adds r6, r6, r5
	cmp r2, r6
	beq _0223C21E
	ldrh r6, [r1]
	adds r3, r3, #1
	lsls r3, r3, #0x18
	subs r6, r6, #1
	strh r6, [r1]
	ldrh r6, [r0]
	lsrs r3, r3, #0x18
	adds r6, r6, #1
	strh r6, [r0]
	ldrh r6, [r1]
	subs r6, r6, r4
	subs r6, r6, #2
	cmp r3, r6
	ble _0223C1FA
_0223C21E:
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov84_0223C1D0

	thumb_func_start ov84_0223C224
ov84_0223C224: @ 0x0223C224
	push {r4, r5, r6, lr}
	sub sp, #0x20
	ldr r6, _0223C2A8 @ =0x02240FA8
	add r5, sp, #0
	adds r4, r0, #0
	adds r3, r1, #0
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [sp]
	adds r0, r4, #4
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x64
	ldrb r5, [r0]
	movs r0, #0xc
	adds r6, r5, #0
	muls r6, r0, r6
	adds r1, r1, r6
	ldrb r5, [r1, #0xd]
	add r1, sp, #0
	strh r5, [r1, #0x10]
	adds r5, r4, #0
	str r4, [sp, #0x1c]
	adds r5, #0xc4
	ldr r5, [r5]
	adds r6, r5, #0
	adds r6, #0x64
	ldrb r6, [r6]
	muls r0, r6, r0
	adds r0, r5, r0
	ldrb r0, [r0, #0xc]
	adds r0, #0xfd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0223C288
	movs r0, #0x23
	b _0223C28A
_0223C288:
	movs r0, #0
_0223C28A:
	strb r0, [r1, #0x15]
	adds r1, r3, #0
	add r0, sp, #0
	movs r3, #6
	bl FUN_0200112C
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #4
	bl FUN_0201A9A4
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_0223C2A8: .4byte 0x02240FA8
	thumb_func_end ov84_0223C224

	thumb_func_start ov84_0223C2AC
ov84_0223C2AC: @ 0x0223C2AC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r1, #0x13
	adds r4, r2, #0
	bl FUN_02001504
	adds r5, r0, #0
	cmp r4, #1
	beq _0223C334
	ldr r0, _0223C39C @ =0x00000482
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0223C2CC
	cmp r0, #1
	beq _0223C2D4
	b _0223C2DC
_0223C2CC:
	ldr r0, _0223C3A0 @ =0x000006CC
	bl FUN_02005748
	b _0223C2E2
_0223C2D4:
	ldr r0, _0223C3A4 @ =0x000006CD
	bl FUN_02005748
	b _0223C2E2
_0223C2DC:
	ldr r0, _0223C3A8 @ =0x000006CE
	bl FUN_02005748
_0223C2E2:
	ldr r0, _0223C39C @ =0x00000482
	movs r1, #3
	ldrb r0, [r5, r0]
	adds r0, r0, #1
	blx FUN_020E1F6C
	ldr r0, _0223C39C @ =0x00000482
	strb r1, [r5, r0]
	adds r0, #0x10
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0223C308
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0200D3B8
	cmp r0, #0
	bne _0223C334
_0223C308:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3CC
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r2, #0x64
	ldrb r3, [r2]
	movs r2, #0xc
	adds r0, #0xe0
	muls r2, r3, r2
	adds r1, r1, r2
	ldrb r1, [r1, #0xc]
	ldr r0, [r0]
	adds r1, #8
	bl FUN_0200D364
_0223C334:
	ldr r0, _0223C3AC @ =0x0000047A
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0223C398
	adds r0, r5, #0
	adds r0, #0x14
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #1
	mvns r1, r1
	cmp r7, r1
	beq _0223C378
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	lsls r7, r7, #2
	adds r4, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r6, r1, #0
	muls r6, r0, r6
	ldr r1, [r4, r6]
	adds r0, r5, #0
	ldrh r1, [r1, r7]
	bl ov84_0223F528
	ldr r1, [r4, r6]
	adds r0, r5, #0
	ldrh r1, [r1, r7]
	bl ov84_02240AD8
	b _0223C388
_0223C378:
	adds r0, r5, #0
	lsrs r1, r1, #0x10
	bl ov84_0223F528
	ldr r1, _0223C3B0 @ =0x0000FFFF
	adds r0, r5, #0
	bl ov84_02240AD8
_0223C388:
	ldr r0, _0223C3B4 @ =0x00000479
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _0223C398
	adds r5, #0x14
	adds r0, r5, #0
	bl FUN_0201A9A4
_0223C398:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C39C: .4byte 0x00000482
_0223C3A0: .4byte 0x000006CC
_0223C3A4: .4byte 0x000006CD
_0223C3A8: .4byte 0x000006CE
_0223C3AC: .4byte 0x0000047A
_0223C3B0: .4byte 0x0000FFFF
_0223C3B4: .4byte 0x00000479
	thumb_func_end ov84_0223C2AC

	thumb_func_start ov84_0223C3B8
ov84_0223C3B8: @ 0x0223C3B8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	movs r1, #0x13
	str r0, [sp]
	adds r7, r2, #0
	bl FUN_02001504
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r6, r2, r0
	ldr r0, _0223C4D4 @ =0x0000047A
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223C3F6
	adds r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, r5
	bne _0223C3F6
	ldr r0, [sp]
	movs r1, #8
	movs r2, #0
	movs r3, #9
	bl FUN_0200147C
	b _0223C402
_0223C3F6:
	ldr r0, [sp]
	movs r1, #1
	movs r2, #0
	movs r3, #2
	bl FUN_0200147C
_0223C402:
	ldrb r0, [r6, #8]
	cmp r0, #7
	bne _0223C434
	movs r0, #2
	mvns r0, r0
	cmp r5, r0
	beq _0223C4D0
	adds r0, r0, #1
	cmp r5, r0
	beq _0223C4D0
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl FUN_0207D3FC
	ldr r2, [r6]
	lsls r1, r5, #2
	ldrh r1, [r2, r1]
	cmp r1, r0
	bne _0223C4D0
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov84_0223FA44
	pop {r3, r4, r5, r6, r7, pc}
_0223C434:
	cmp r0, #3
	bne _0223C460
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bne _0223C44A
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov84_0223F9F0
	pop {r3, r4, r5, r6, r7, pc}
_0223C44A:
	subs r0, r0, #1
	cmp r5, r0
	beq _0223C4D0
	ldr r2, [r6]
	lsls r1, r5, #2
	adds r1, r2, r1
	adds r0, r4, #0
	adds r2, r7, #0
	bl ov84_0223F8D0
	pop {r3, r4, r5, r6, r7, pc}
_0223C460:
	cmp r0, #4
	bne _0223C48C
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bne _0223C476
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov84_0223F9F0
	pop {r3, r4, r5, r6, r7, pc}
_0223C476:
	subs r0, r0, #1
	cmp r5, r0
	beq _0223C4D0
	ldr r2, [r6]
	lsls r1, r5, #2
	adds r1, r2, r1
	adds r0, r4, #0
	adds r2, r7, #0
	bl ov84_0223F94C
	pop {r3, r4, r5, r6, r7, pc}
_0223C48C:
	movs r0, #2
	mvns r0, r0
	cmp r5, r0
	beq _0223C4D0
	adds r0, r0, #1
	cmp r5, r0
	beq _0223C4D0
	ldr r0, _0223C4D4 @ =0x0000047A
	ldrb r1, [r4, r0]
	cmp r1, #1
	bne _0223C4BE
	adds r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, r5
	bne _0223C4BE
	ldr r2, [r6]
	lsls r1, r5, #2
	adds r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r3, _0223C4D8 @ =0x00080900
	adds r0, r4, #0
	adds r2, r7, #0
	bl ov84_0223F81C
	pop {r3, r4, r5, r6, r7, pc}
_0223C4BE:
	ldr r2, [r6]
	lsls r1, r5, #2
	adds r1, r2, r1
	ldrh r1, [r1, #2]
	ldr r3, _0223C4DC @ =0x00010200
	adds r0, r4, #0
	adds r2, r7, #0
	bl ov84_0223F81C
_0223C4D0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C4D4: .4byte 0x0000047A
_0223C4D8: .4byte 0x00080900
_0223C4DC: .4byte 0x00010200
	thumb_func_end ov84_0223C3B8

	thumb_func_start ov84_0223C4E0
ov84_0223C4E0: @ 0x0223C4E0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	adds r1, r3, #0
	muls r2, r0, r2
	movs r0, #0x57
	lsls r0, r0, #2
	adds r1, #0xa
	ldr r0, [r4, r0]
	adds r3, #8
	adds r1, r1, r2
	adds r2, r3, r2
	bl FUN_02001384
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	movs r0, #0x57
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov84_0223C4E0

	thumb_func_start ov84_0223C51C
ov84_0223C51C: @ 0x0223C51C
	push {r4, lr}
	adds r4, r0, #0
	bl ov84_0223D0FC
	adds r0, r4, #0
	bl ov84_0223ED14
	cmp r0, #1
	bne _0223C532
	movs r0, #1
	pop {r4, pc}
_0223C532:
	adds r0, r4, #0
	bl ov84_0223C750
	cmp r0, #1
	bne _0223C540
	movs r0, #2
	pop {r4, pc}
_0223C540:
	adds r0, r4, #0
	bl ov84_0223CD40
	cmp r0, #1
	bne _0223C54E
	movs r0, #2
	pop {r4, pc}
_0223C54E:
	adds r0, r4, #0
	bl ov84_0223C5B8
	cmp r0, #1
	bne _0223C59C
	adds r0, r4, #0
	movs r1, #2
	bl ov84_02240B34
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201ACF4
	adds r0, r4, #0
	bl ov84_0223D5AC
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _0223C598
	adds r0, r4, #0
	movs r1, #1
	bl ov84_0223D7E8
_0223C598:
	movs r0, #4
	pop {r4, pc}
_0223C59C:
	cmp r0, #2
	bne _0223C5AA
	adds r0, r4, #0
	bl ov84_0223D2A0
	movs r0, #3
	pop {r4, pc}
_0223C5AA:
	cmp r0, #3
	bne _0223C5B2
	movs r0, #0x18
	pop {r4, pc}
_0223C5B2:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223C51C

	thumb_func_start ov84_0223C5B8
ov84_0223C5B8: @ 0x0223C5B8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r4, r2, r0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #6
	adds r2, r4, #4
	bl FUN_020014DC
	ldr r0, _0223C714 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #4
	tst r0, r1
	beq _0223C5FC
	adds r0, r5, #0
	bl ov84_0223D244
	cmp r0, #1
	bne _0223C5FC
	ldr r0, _0223C718 @ =0x000005DC
	bl FUN_02005748
	add sp, #4
	movs r0, #2
	pop {r3, r4, r5, r6, pc}
_0223C5FC:
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001288
	adds r6, r0, #0
	movs r0, #0x57
	lsls r0, r0, #2
	add r1, sp, #0
	ldr r0, [r5, r0]
	adds r1, #2
	add r2, sp, #0
	bl FUN_020014DC
	add r0, sp, #0
	ldrh r2, [r0]
	ldrh r0, [r4, #4]
	cmp r0, r2
	beq _0223C638
	subs r2, r2, #1
	adds r0, r5, #0
	lsls r2, r2, #4
	adds r0, #0xf0
	adds r2, #0x18
	lsls r2, r2, #0x10
	ldr r0, [r0]
	movs r1, #0xb1
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
_0223C638:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	strh r1, [r4, #6]
	ldrh r0, [r0]
	strh r0, [r4, #4]
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	bne _0223C674
	adds r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223C674
	add r1, sp, #0
	ldrh r2, [r1, #2]
	ldrh r1, [r1]
	movs r0, #0x57
	lsls r0, r0, #2
	adds r1, r2, r1
	lsls r1, r1, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0x10
	bl FUN_020014F8
	adds r6, r0, #0
	movs r0, #0x49
	movs r1, #1
	lsls r0, r0, #4
	strb r1, [r5, r0]
_0223C674:
	movs r0, #1
	mvns r0, r0
	cmp r6, r0
	beq _0223C6AA
	adds r0, r0, #1
	cmp r6, r0
	bne _0223C6E8
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020014F0
	cmp r0, #1
	bne _0223C69A
	adds r0, r5, #0
	movs r1, #0x24
	bl ov84_0223EB08
	b _0223C70E
_0223C69A:
	cmp r0, #2
	bne _0223C70E
	movs r1, #0x23
	adds r0, r5, #0
	mvns r1, r1
	bl ov84_0223EB08
	b _0223C70E
_0223C6AA:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #5
	bne _0223C6BE
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0223C6BE:
	ldr r0, _0223C718 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0
	adds r0, #0x66
	strh r1, [r0]
	adds r5, #0xc4
	ldr r0, [r5]
	movs r1, #5
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #1
	movs r1, #6
	bl FUN_0208C120
	add sp, #4
	movs r0, #3
	pop {r3, r4, r5, r6, pc}
_0223C6E8:
	ldr r0, _0223C718 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [r4]
	lsls r2, r6, #2
	ldrh r1, [r0, r2]
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	add sp, #4
	adds r0, #0x66
	strh r1, [r0]
	ldr r0, [r4]
	adds r0, r0, r2
	ldrh r1, [r0, #2]
	ldr r0, _0223C71C @ =0x0000048A
	strh r1, [r5, r0]
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0223C70E:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223C714: .4byte 0x021BF67C
_0223C718: .4byte 0x000005DC
_0223C71C: .4byte 0x0000048A
	thumb_func_end ov84_0223C5B8

	thumb_func_start ov84_0223C720
ov84_0223C720: @ 0x0223C720
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223C748 @ =0x00000424
	ldrb r2, [r4, r0]
	movs r0, #0xa
	adds r1, r2, #0
	muls r1, r0, r1
	movs r0, #0x5a
	subs r0, r0, r1
	adds r1, r2, #1
	blx FUN_020E1F6C
	adds r1, r0, #6
	ldr r0, _0223C74C @ =0x00000427
	strb r1, [r4, r0]
	ldrb r1, [r4, r0]
	adds r0, r0, #1
	adds r1, r1, #4
	strb r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_0223C748: .4byte 0x00000424
_0223C74C: .4byte 0x00000427
	thumb_func_end ov84_0223C720

	thumb_func_start ov84_0223C750
ov84_0223C750: @ 0x0223C750
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223C834 @ =0x021BF67C
	ldr r1, [r0, #0x4c]
	movs r0, #0x20
	tst r0, r1
	beq _0223C7C4
	ldr r0, _0223C838 @ =0x00000424
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223C76A
	movs r0, #0
	pop {r4, pc}
_0223C76A:
	ldr r0, _0223C83C @ =0x000006CA
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r0, #0x64
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223C794
	ldr r1, _0223C840 @ =0x00000429
	subs r0, r0, #1
	strb r0, [r4, r1]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r1, #0x4f
	adds r0, #0x64
	ldrb r0, [r0]
	subs r0, r0, #1
	b _0223C7A4
_0223C794:
	ldr r1, _0223C838 @ =0x00000424
	ldrb r0, [r4, r1]
	subs r2, r0, #1
	adds r0, r1, #5
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	adds r1, #0x54
	subs r0, r0, #1
_0223C7A4:
	strb r0, [r4, r1]
	adds r0, r4, #0
	bl ov84_02240B68
	ldr r0, _0223C844 @ =0x0000042A
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov84_0223C848
	ldr r0, [r4]
	movs r1, #4
	bl FUN_0201C3C0
	movs r0, #1
	pop {r4, pc}
_0223C7C4:
	movs r0, #0x10
	tst r0, r1
	beq _0223C82E
	ldr r0, _0223C838 @ =0x00000424
	ldrb r0, [r4, r0]
	cmp r0, #1
	bne _0223C7D6
	movs r0, #0
	pop {r4, pc}
_0223C7D6:
	ldr r0, _0223C83C @ =0x000006CA
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r1, _0223C838 @ =0x00000424
	adds r0, #0x64
	ldrb r0, [r0]
	adds r2, r0, #1
	ldrb r0, [r4, r1]
	cmp r2, r0
	bge _0223C806
	adds r0, r1, #5
	strb r2, [r4, r0]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r1, #0x54
	adds r0, #0x64
	ldrb r0, [r0]
	adds r0, r0, #1
	strb r0, [r4, r1]
	b _0223C810
_0223C806:
	adds r0, r1, #5
	movs r2, #0
	strb r2, [r4, r0]
	adds r1, #0x54
	strb r2, [r4, r1]
_0223C810:
	adds r0, r4, #0
	bl ov84_02240B68
	ldr r0, _0223C844 @ =0x0000042A
	movs r1, #1
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov84_0223C848
	ldr r0, [r4]
	movs r1, #4
	bl FUN_0201C3C0
	movs r0, #1
	pop {r4, pc}
_0223C82E:
	movs r0, #0
	pop {r4, pc}
	nop
_0223C834: .4byte 0x021BF67C
_0223C838: .4byte 0x00000424
_0223C83C: .4byte 0x000006CA
_0223C840: .4byte 0x00000429
_0223C844: .4byte 0x0000042A
	thumb_func_end ov84_0223C750

	thumb_func_start ov84_0223C848
ov84_0223C848: @ 0x0223C848
	push {r4, lr}
	adds r4, r0, #0
	bl ov84_0223C89C
	ldr r0, _0223C864 @ =0x0000042D
	movs r1, #3
	strb r1, [r4, r0]
	adds r1, r0, #3
	ldrb r2, [r4, r1]
	movs r1, #0x80
	adds r0, r0, #3
	bics r2, r1
	strb r2, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_0223C864: .4byte 0x0000042D
	thumb_func_end ov84_0223C848

	thumb_func_start ov84_0223C868
ov84_0223C868: @ 0x0223C868
	push {r4, lr}
	ldr r1, _0223C894 @ =0x0000042A
	adds r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #2
	beq _0223C87A
	bl ov84_0223C89C
	b _0223C880
_0223C87A:
	movs r2, #2
	adds r0, r1, #1
	strb r2, [r4, r0]
_0223C880:
	ldr r0, _0223C898 @ =0x0000042D
	movs r1, #0
	strb r1, [r4, r0]
	adds r1, r0, #3
	ldrb r2, [r4, r1]
	movs r1, #0x80
	adds r0, r0, #3
	orrs r1, r2
	strb r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_0223C894: .4byte 0x0000042A
_0223C898: .4byte 0x0000042D
	thumb_func_end ov84_0223C868

	thumb_func_start ov84_0223C89C
ov84_0223C89C: @ 0x0223C89C
	push {r4, lr}
	ldr r1, _0223C91C @ =0x00000429
	adds r4, r0, #0
	adds r1, r4, r1
	movs r2, #0
	strb r2, [r1, #2]
	strb r2, [r1, #3]
	strb r2, [r1, #5]
	ldrb r3, [r1, #7]
	movs r2, #0xf
	bics r3, r2
	strb r3, [r1, #7]
	ldrb r3, [r1, #7]
	movs r2, #0x70
	bics r3, r2
	strb r3, [r1, #7]
	bl ov84_0223C4E0
	adds r0, r4, #4
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r0, #0x14
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #4
	bl FUN_0201A9A4
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r1, r4, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, r4, #0
	adds r1, #0x64
	ldrb r1, [r1]
	movs r2, #0
	bl ov84_0223F3AC
	adds r0, r4, #0
	adds r4, #0xc4
	ldr r1, [r4]
	movs r2, #0
	adds r1, #0x64
	ldrb r1, [r1]
	bl ov84_0223CF20
	pop {r4, pc}
	.align 2, 0
_0223C91C: .4byte 0x00000429
	thumb_func_end ov84_0223C89C

	thumb_func_start ov84_0223C920
ov84_0223C920: @ 0x0223C920
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0223CA54 @ =0x00000429
	adds r4, r5, r0
	bl FUN_0202278C
	cmp r0, #0
	bne _0223C93C
	ldrb r1, [r4, #7]
	movs r0, #0x70
	bics r1, r0
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r4, #7]
_0223C93C:
	adds r0, r5, #0
	bl ov84_0223CE08
	adds r6, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _0223C952
	ldrb r0, [r4]
	cmp r6, r0
	beq _0223C95E
_0223C952:
	ldrb r1, [r4, #7]
	movs r0, #0xf
	bics r1, r0
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #7]
_0223C95E:
	adds r0, r5, #0
	bl ov84_0223CA5C
	cmp r0, #0
	bne _0223C9F2
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1d
	cmp r0, #1
	bne _0223C9F2
	movs r0, #0
	mvns r0, r0
	cmp r6, r0
	beq _0223C9F2
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldrb r1, [r4]
	adds r0, #0x64
	strb r1, [r0]
	lsls r0, r6, #0x18
	ldrb r1, [r4]
	lsrs r0, r0, #0x18
	cmp r1, r0
	bls _0223C9AA
	movs r2, #0
	strb r2, [r4, #1]
	strb r2, [r4, #2]
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ov84_0223CF20
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #0
	bl ov84_0223F3AC
	b _0223C9CE
_0223C9AA:
	cmp r1, r0
	bhs _0223C9CA
	movs r0, #1
	strb r0, [r4, #1]
	movs r2, #0
	strb r2, [r4, #2]
	ldrb r1, [r4]
	adds r0, r5, #0
	bl ov84_0223CF20
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #0
	bl ov84_0223F3AC
	b _0223C9CE
_0223C9CA:
	movs r0, #2
	strb r0, [r4, #1]
_0223C9CE:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	strb r0, [r4]
	ldrb r2, [r4, #7]
	movs r1, #0xf
	bics r2, r1
	strb r2, [r4, #7]
	ldrb r2, [r4, #7]
	movs r1, #0x70
	bics r2, r1
	strb r2, [r4, #7]
	movs r1, #0
	strb r1, [r4, #4]
	ldr r1, _0223CA58 @ =0x00000478
	strb r0, [r5, r1]
	adds r0, r5, #0
	bl ov84_02240B68
_0223C9F2:
	adds r0, r5, #0
	bl ov84_0223CBD8
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov84_0223CE60
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov84_02240B80
	cmp r6, #1
	bne _0223CA4E
	cmp r7, #1
	bne _0223CA4E
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0223CA4E
	adds r0, r5, #0
	bl ov84_02240B50
	cmp r0, #1
	bne _0223CA4E
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0223CA40
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #1
	bl ov84_0223CF20
	ldr r0, [r5]
	movs r1, #4
	bl FUN_0201C3C0
_0223CA40:
	adds r5, #0xfc
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223CA4E:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CA54: .4byte 0x00000429
_0223CA58: .4byte 0x00000478
	thumb_func_end ov84_0223C920

	thumb_func_start ov84_0223CA5C
ov84_0223CA5C: @ 0x0223CA5C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0223CBC4 @ =0x021BF67C
	ldr r1, _0223CBC8 @ =0x00000429
	ldr r2, [r0, #0x48]
	movs r0, #0x20
	adds r4, r5, r1
	tst r0, r2
	beq _0223CB14
	subs r0, r1, #5
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0223CA7A
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223CA7A:
	ldr r0, _0223CBCC @ =0x000006CA
	bl FUN_02005748
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r3, [r1]
	adds r0, r5, #0
	adds r0, #0xe0
	ldrb r2, [r4]
	movs r1, #0xc
	ldr r0, [r0]
	muls r1, r2, r1
	adds r1, r3, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0200D364
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #0
	bl ov84_0223CF20
	ldr r0, [r5]
	movs r1, #4
	bl FUN_0201C3C0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldrb r1, [r4]
	adds r0, #0x64
	strb r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0223CACA
	subs r0, r0, #1
	strb r0, [r4]
	ldr r0, _0223CBD0 @ =0x00000478
	ldrb r1, [r5, r0]
	subs r1, r1, #1
	b _0223CAD8
_0223CACA:
	ldr r0, _0223CBD4 @ =0x00000424
	ldrb r1, [r5, r0]
	subs r1, r1, #1
	strb r1, [r4]
	ldrb r1, [r5, r0]
	adds r0, #0x54
	subs r1, r1, #1
_0223CAD8:
	strb r1, [r5, r0]
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #1]
	ldrb r1, [r4, #7]
	movs r0, #0x70
	bics r1, r0
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	movs r0, #0xf
	bics r1, r0
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	movs r0, #0x80
	bics r1, r0
	strb r1, [r4, #7]
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq _0223CB0A
	movs r0, #4
	strb r0, [r4, #4]
_0223CB0A:
	adds r0, r5, #0
	bl ov84_02240B68
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223CB14:
	movs r0, #0x10
	tst r0, r2
	beq _0223CBBE
	subs r0, r1, #5
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _0223CB26
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223CB26:
	ldr r0, _0223CBCC @ =0x000006CA
	bl FUN_02005748
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r3, [r1]
	adds r0, r5, #0
	adds r0, #0xe0
	ldrb r2, [r4]
	movs r1, #0xc
	ldr r0, [r0]
	muls r1, r2, r1
	adds r1, r3, r1
	ldrb r1, [r1, #0xc]
	bl FUN_0200D364
	ldrb r1, [r4]
	adds r0, r5, #0
	movs r2, #0
	bl ov84_0223CF20
	ldr r0, [r5]
	movs r1, #4
	bl FUN_0201C3C0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldrb r1, [r4]
	adds r0, #0x64
	strb r1, [r0]
	ldrb r0, [r4]
	ldr r1, _0223CBD4 @ =0x00000424
	adds r2, r0, #1
	ldrb r0, [r5, r1]
	cmp r2, r0
	bge _0223CB7C
	adds r0, r1, #0
	strb r2, [r4]
	adds r0, #0x54
	ldrb r0, [r5, r0]
	adds r0, r0, #1
	b _0223CB80
_0223CB7C:
	movs r0, #0
	strb r0, [r4]
_0223CB80:
	adds r1, #0x54
	strb r0, [r5, r1]
	movs r0, #0
	strb r0, [r4, #2]
	movs r0, #1
	strb r0, [r4, #1]
	ldrb r2, [r4, #7]
	movs r1, #0x70
	bics r2, r1
	movs r1, #0x10
	orrs r1, r2
	strb r1, [r4, #7]
	ldrb r2, [r4, #7]
	movs r1, #0xf
	bics r2, r1
	orrs r0, r2
	strb r0, [r4, #7]
	ldrb r1, [r4, #7]
	movs r0, #0x80
	bics r1, r0
	strb r1, [r4, #7]
	ldrb r0, [r4, #4]
	cmp r0, #3
	beq _0223CBB4
	movs r0, #4
	strb r0, [r4, #4]
_0223CBB4:
	adds r0, r5, #0
	bl ov84_02240B68
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223CBBE:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223CBC4: .4byte 0x021BF67C
_0223CBC8: .4byte 0x00000429
_0223CBCC: .4byte 0x000006CA
_0223CBD0: .4byte 0x00000478
_0223CBD4: .4byte 0x00000424
	thumb_func_end ov84_0223CA5C

	thumb_func_start ov84_0223CBD8
ov84_0223CBD8: @ 0x0223CBD8
	push {r4, r5, r6, lr}
	ldr r1, _0223CD3C @ =0x00000429
	adds r5, r0, #0
	adds r4, r5, r1
	ldrb r1, [r4, #2]
	cmp r1, #0
	beq _0223CBF2
	cmp r1, #1
	beq _0223CBFE
	cmp r1, #2
	bne _0223CBF0
	b _0223CD34
_0223CBF0:
	b _0223CD38
_0223CBF2:
	movs r0, #0
	strb r0, [r4, #3]
	ldrb r0, [r4, #2]
	adds r0, r0, #1
	strb r0, [r4, #2]
	b _0223CD38
_0223CBFE:
	ldrb r1, [r4, #3]
	cmp r1, #8
	bhs _0223CC0E
	adds r1, r1, #1
	strb r1, [r4, #3]
	bl ov84_0223F2FC
	b _0223CD38
_0223CC0E:
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223CC42
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r3, [r1]
	adds r1, r3, #0
	adds r1, #0x64
	ldrb r6, [r1]
	movs r1, #0xc
	adds r2, r6, #0
	muls r2, r1, r2
	adds r1, r3, #0
	adds r1, #0xa
	adds r3, #8
	adds r1, r1, r2
	adds r2, r3, r2
	bl FUN_02001384
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02013A3C
_0223CC42:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldrb r1, [r4]
	adds r0, #0x64
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r2, #0x64
	ldrb r3, [r2]
	movs r2, #0xc
	adds r0, #0xe0
	muls r2, r3, r2
	adds r1, r1, r2
	ldrb r1, [r1, #0xc]
	ldr r0, [r0]
	bl FUN_0200D364
	adds r0, r5, #0
	bl ov84_0223F438
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, r5, #0
	adds r1, #0x64
	ldrb r1, [r1]
	movs r2, #1
	bl ov84_0223F3AC
	adds r0, r5, #0
	bl ov84_0223BFBC
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r1, r3, #0
	adds r0, #0xa
	adds r1, #8
	adds r0, r0, r2
	adds r1, r1, r2
	adds r2, r3, r2
	ldrb r2, [r2, #0xd]
	bl ov84_0223C194
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r1, r3, #0
	adds r0, #0xa
	adds r1, #8
	adds r0, r0, r2
	adds r1, r1, r2
	adds r2, r3, r2
	ldrb r2, [r2, #0xd]
	movs r3, #9
	bl ov84_0223C1D0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x64
	ldrb r2, [r0]
	movs r0, #0xc
	adds r3, r2, #0
	muls r3, r0, r3
	adds r2, r1, r3
	ldrh r1, [r2, #0xa]
	ldrh r2, [r2, #8]
	adds r0, r5, #0
	bl ov84_0223C224
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r2, [r0]
	adds r0, r5, #0
	adds r3, r2, #0
	adds r3, #0x64
	ldrb r6, [r3]
	movs r3, #0xc
	adds r0, #0xf0
	muls r3, r6, r3
	adds r2, r2, r3
	ldrh r2, [r2, #8]
	ldr r0, [r0]
	movs r1, #0xb1
	subs r2, r2, #1
	lsls r2, r2, #4
	adds r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r5, #0xf0
	ldr r0, [r5]
	movs r1, #1
	bl FUN_0200D3F4
	ldrb r0, [r4, #2]
	adds r0, r0, #1
	strb r0, [r4, #2]
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223CD34:
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223CD38:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223CD3C: .4byte 0x00000429
	thumb_func_end ov84_0223CBD8

	thumb_func_start ov84_0223CD40
ov84_0223CD40: @ 0x0223CD40
	push {r4, lr}
	adds r4, r0, #0
	bl ov84_0223CDB0
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _0223CD54
	movs r0, #0
	pop {r4, pc}
_0223CD54:
	ldr r2, _0223CDA8 @ =0x00000424
	ldrb r1, [r4, r2]
	cmp r1, #1
	bne _0223CD60
	movs r0, #0
	pop {r4, pc}
_0223CD60:
	adds r1, r4, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r1, #0x64
	ldrb r3, [r1]
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	cmp r3, r1
	bne _0223CD7A
	movs r3, #2
	adds r1, r2, #6
	strb r3, [r4, r1]
	b _0223CD8C
_0223CD7A:
	cmp r3, r1
	bls _0223CD86
	movs r3, #0
	adds r1, r2, #6
	strb r3, [r4, r1]
	b _0223CD8C
_0223CD86:
	movs r3, #1
	adds r1, r2, #6
	strb r3, [r4, r1]
_0223CD8C:
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _0223CDAC @ =0x00000429
	strb r1, [r4, r0]
	adds r0, #0x4f
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov84_02240B68
	adds r0, r4, #0
	bl ov84_0223C868
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0223CDA8: .4byte 0x00000424
_0223CDAC: .4byte 0x00000429
	thumb_func_end ov84_0223CD40

	thumb_func_start ov84_0223CDB0
ov84_0223CDB0: @ 0x0223CDB0
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0223CDF8 @ =0x00000424
	ldrb r0, [r5, r0]
	lsls r1, r0, #3
	ldr r0, _0223CDFC @ =0x022410CC
	ldr r0, [r0, r1]
	bl FUN_02022664
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _0223CDF2
	ldr r1, _0223CE00 @ =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223CE04 @ =0x021BF6BC
	ldr r0, [r5]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	movs r1, #4
	bl FUN_0201C784
	cmp r0, #0
	bne _0223CDF2
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, pc}
_0223CDF2:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223CDF8: .4byte 0x00000424
_0223CDFC: .4byte 0x022410CC
_0223CE00: .4byte 0x0000FFFE
_0223CE04: .4byte 0x021BF6BC
	thumb_func_end ov84_0223CDB0

	thumb_func_start ov84_0223CE08
ov84_0223CE08: @ 0x0223CE08
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0223CE50 @ =0x00000424
	ldrb r0, [r5, r0]
	lsls r1, r0, #3
	ldr r0, _0223CE54 @ =0x022410CC
	ldr r0, [r0, r1]
	bl FUN_02022644
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	beq _0223CE4A
	ldr r1, _0223CE58 @ =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223CE5C @ =0x021BF6BC
	ldr r0, [r5]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	movs r1, #4
	bl FUN_0201C784
	cmp r0, #0
	bne _0223CE4A
	movs r0, #0
	add sp, #8
	mvns r0, r0
	pop {r3, r4, r5, pc}
_0223CE4A:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223CE50: .4byte 0x00000424
_0223CE54: .4byte 0x022410CC
_0223CE58: .4byte 0x0000FFFE
_0223CE5C: .4byte 0x021BF6BC
	thumb_func_end ov84_0223CE08

	thumb_func_start ov84_0223CE60
ov84_0223CE60: @ 0x0223CE60
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0223CF10 @ =0x00000429
	adds r4, r5, r0
	ldrb r0, [r4, #4]
	cmp r0, #4
	bhi _0223CF06
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223CE7A: @ jump table
	.2byte _0223CE84 - _0223CE7A - 2 @ case 0
	.2byte _0223CE9C - _0223CE7A - 2 @ case 1
	.2byte _0223CEEC - _0223CE7A - 2 @ case 2
	.2byte _0223CEFA - _0223CE7A - 2 @ case 3
	.2byte _0223CEFE - _0223CE7A - 2 @ case 4
_0223CE84:
	movs r0, #0
	strb r0, [r4, #5]
	ldrb r1, [r4, #7]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r4, #7]
	ldrb r0, [r4]
	strb r0, [r4, #6]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0223CF06
_0223CE9C:
	ldrb r0, [r4, #5]
	cmp r0, #3
	bne _0223CF06
	ldr r0, _0223CF14 @ =0x000005E4
	bl FUN_02005748
	ldrb r1, [r4, #6]
	adds r0, r5, #0
	movs r2, #2
	bl ov84_0223CF20
	ldr r0, [r5]
	movs r1, #4
	bl FUN_0201C3C0
	ldrb r0, [r4, #6]
	lsls r3, r0, #1
	ldr r0, _0223CF18 @ =0x00000424
	ldrb r0, [r5, r0]
	lsls r1, r0, #3
	ldr r0, _0223CF1C @ =0x022410C8
	ldr r2, [r0, r1]
	adds r0, r5, #0
	ldrb r1, [r2, r3]
	adds r3, r3, #1
	ldrb r2, [r2, r3]
	lsls r1, r1, #3
	adds r1, #0x14
	lsls r2, r2, #3
	adds r2, #0x14
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl ov84_02240E24
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0223CF06
_0223CEEC:
	ldrb r1, [r4, #5]
	cmp r1, #7
	bne _0223CF06
	adds r0, r0, #1
	strb r0, [r4, #4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223CEFA:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223CEFE:
	movs r0, #3
	strb r0, [r4, #4]
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223CF06:
	ldrb r0, [r4, #5]
	adds r0, r0, #1
	strb r0, [r4, #5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223CF10: .4byte 0x00000429
_0223CF14: .4byte 0x000005E4
_0223CF18: .4byte 0x00000424
_0223CF1C: .4byte 0x022410C8
	thumb_func_end ov84_0223CE60

	thumb_func_start ov84_0223CF20
ov84_0223CF20: @ 0x0223CF20
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	movs r1, #4
	adds r6, r2, #0
	bl FUN_02019FE4
	adds r7, r0, #0
	ldr r0, _0223CFA8 @ =0x00000424
	ldrb r0, [r4, r0]
	adds r4, #0xc4
	lsls r1, r0, #3
	ldr r0, _0223CFAC @ =0x022410C8
	ldr r1, [r0, r1]
	lsls r0, r5, #1
	adds r2, r1, r0
	ldr r1, [r4]
	movs r0, #0xc
	muls r0, r5, r0
	adds r0, r1, r0
	ldrb r3, [r0, #0xc]
	lsls r0, r6, #2
	adds r1, r6, r0
	lsrs r5, r3, #1
	movs r0, #0x96
	muls r0, r5, r0
	movs r5, #1
	ands r5, r3
	movs r3, #0xf
	muls r3, r5, r3
	adds r0, r0, r3
	adds r0, #0x1e
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #0
	mov ip, r0
_0223CF6C:
	movs r0, #0x1e
	adds r1, r4, #0
	muls r1, r0, r1
	mov r0, ip
	movs r3, #0
	adds r5, r0, r1
_0223CF78:
	ldrb r6, [r2, #1]
	movs r0, #2
	adds r1, r3, r5
	lsls r0, r0, #0xc
	adds r1, r1, r0
	adds r6, r4, r6
	lsls r6, r6, #5
	ldrb r0, [r2]
	adds r6, r3, r6
	adds r0, r0, r6
	lsls r0, r0, #1
	strh r1, [r7, r0]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #5
	blo _0223CF78
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #5
	blo _0223CF6C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223CFA8: .4byte 0x00000424
_0223CFAC: .4byte 0x022410C8
	thumb_func_end ov84_0223CF20

	thumb_func_start ov84_0223CFB0
ov84_0223CFB0: @ 0x0223CFB0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r4, r1, #0
	ldr r0, [r0]
	movs r1, #4
	bl FUN_02019FE4
	mov ip, r0
	adds r1, r4, #0
	movs r0, #6
	muls r1, r0, r1
	ldr r0, _0223D010 @ =0x00000276
	movs r4, #3
	adds r0, r1, r0
	lsls r0, r0, #0x10
	movs r6, #0
	lsrs r7, r0, #0x10
	lsls r4, r4, #0xc
_0223CFD4:
	movs r0, #0x1e
	muls r0, r6, r0
	adds r2, r7, r0
	adds r0, r6, #7
	lsls r3, r0, #6
	mov r0, ip
	movs r1, #0
	adds r3, r0, r3
_0223CFE4:
	adds r0, r1, r2
	lsls r5, r1, #1
	adds r0, r0, r4
	adds r5, r3, r5
	strh r0, [r5, #0x1a]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #6
	blo _0223CFE4
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #6
	blo _0223CFD4
	ldr r0, [sp]
	movs r1, #4
	ldr r0, [r0]
	bl FUN_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D010: .4byte 0x00000276
	thumb_func_end ov84_0223CFB0

	thumb_func_start ov84_0223D014
ov84_0223D014: @ 0x0223D014
	push {r4, lr}
	movs r1, #0x49
	adds r4, r0, #0
	lsls r1, r1, #4
	ldrb r2, [r4, r1]
	cmp r2, #3
	bhi _0223D0B0
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223D02E: @ jump table
	.2byte _0223D0B0 - _0223D02E - 2 @ case 0
	.2byte _0223D036 - _0223D02E - 2 @ case 1
	.2byte _0223D05E - _0223D02E - 2 @ case 2
	.2byte _0223D08A - _0223D02E - 2 @ case 3
_0223D036:
	movs r1, #0x80
	movs r2, #0x50
	bl ov84_02240E24
	ldr r0, _0223D0B4 @ =0x000005E4
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #2
	bl ov84_0223CFB0
	ldr r0, _0223D0B8 @ =0x00000491
	movs r1, #0
	strb r1, [r4, r0]
	subs r1, r0, #1
	ldrb r1, [r4, r1]
	subs r0, r0, #1
	adds r1, r1, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0223D05E:
	adds r2, r1, #1
	ldrb r2, [r4, r2]
	cmp r2, #3
	bne _0223D07E
	movs r1, #1
	bl ov84_0223CFB0
	movs r0, #0x49
	lsls r0, r0, #4
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0223D07E:
	adds r0, r1, #1
	ldrb r0, [r4, r0]
	adds r2, r0, #1
	adds r0, r1, #1
	strb r2, [r4, r0]
	pop {r4, pc}
_0223D08A:
	adds r2, r1, #1
	ldrb r2, [r4, r2]
	cmp r2, #2
	bne _0223D0A6
	movs r1, #0
	bl ov84_0223CFB0
	movs r0, #0x49
	movs r1, #0
	lsls r0, r0, #4
	strb r1, [r4, r0]
	adds r0, r0, #1
	strb r1, [r4, r0]
	pop {r4, pc}
_0223D0A6:
	adds r0, r1, #1
	ldrb r0, [r4, r0]
	adds r2, r0, #1
	adds r0, r1, #1
	strb r2, [r4, r0]
_0223D0B0:
	pop {r4, pc}
	nop
_0223D0B4: .4byte 0x000005E4
_0223D0B8: .4byte 0x00000491
	thumb_func_end ov84_0223D014

	thumb_func_start ov84_0223D0BC
ov84_0223D0BC: @ 0x0223D0BC
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0
	adds r5, r0, #0
	bl ov84_0223CFB0
	ldr r0, _0223D0F8 @ =0x00000424
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0223D0EE
	movs r4, #0
	cmp r0, #0
	bls _0223D0EE
	ldr r6, _0223D0F8 @ =0x00000424
	adds r7, r4, #0
_0223D0D8:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov84_0223CF20
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5, r6]
	cmp r4, r0
	blo _0223D0D8
_0223D0EE:
	ldr r0, [r5]
	movs r1, #4
	bl FUN_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223D0F8: .4byte 0x00000424
	thumb_func_end ov84_0223D0BC

	thumb_func_start ov84_0223D0FC
ov84_0223D0FC: @ 0x0223D0FC
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0223D1F0 @ =0x00000481
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _0223D1DE
	subs r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #3
	bhi _0223D1D0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223D11E: @ jump table
	.2byte _0223D126 - _0223D11E - 2 @ case 0
	.2byte _0223D126 - _0223D11E - 2 @ case 1
	.2byte _0223D17C - _0223D11E - 2 @ case 2
	.2byte _0223D17C - _0223D11E - 2 @ case 3
_0223D126:
	adds r0, r4, #0
	adds r0, #0xe8
	add r1, sp, #0
	ldr r0, [r0]
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	add r3, sp, #0
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #0
	subs r0, r0, #1
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xe8
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0]
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xec
	add r1, sp, #0
	ldr r0, [r0]
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	add r3, sp, #0
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #0
	adds r0, r0, #1
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xec
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0]
	bl FUN_0200D4C4
	b _0223D1D0
_0223D17C:
	adds r0, r4, #0
	adds r0, #0xe8
	add r1, sp, #0
	ldr r0, [r0]
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	add r3, sp, #0
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #0
	adds r0, r0, #1
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xe8
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0]
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xec
	add r1, sp, #0
	ldr r0, [r0]
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	add r3, sp, #0
	movs r1, #2
	ldrsh r0, [r3, r1]
	movs r2, #0
	subs r0, r0, #1
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xec
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r0]
	bl FUN_0200D4C4
_0223D1D0:
	movs r1, #0x12
	lsls r1, r1, #6
	ldrb r0, [r4, r1]
	adds r2, r0, #1
	movs r0, #3
	ands r0, r2
	strb r0, [r4, r1]
_0223D1DE:
	ldr r1, _0223D1F0 @ =0x00000481
	ldrb r0, [r4, r1]
	adds r2, r0, #1
	movs r0, #3
	ands r0, r2
	strb r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D1F0: .4byte 0x00000481
	thumb_func_end ov84_0223D0FC

	thumb_func_start ov84_0223D1F4
ov84_0223D1F4: @ 0x0223D1F4
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0223D238 @ =0x02240E98
	bl FUN_02022664
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223D230
	ldr r1, _0223D23C @ =0x0000FFFE
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _0223D240 @ =0x021BF6BC
	ldr r0, [r4]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	movs r1, #4
	bl FUN_0201C784
	cmp r0, #0
	beq _0223D22A
	add sp, #8
	movs r0, #1
	pop {r4, pc}
_0223D22A:
	add sp, #8
	movs r0, #0
	pop {r4, pc}
_0223D230:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_0223D238: .4byte 0x02240E98
_0223D23C: .4byte 0x0000FFFE
_0223D240: .4byte 0x021BF6BC
	thumb_func_end ov84_0223D1F4

	thumb_func_start ov84_0223D244
ov84_0223D244: @ 0x0223D244
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r4, r2, r0
	movs r0, #0x57
	lsls r0, r0, #2
	ldrh r2, [r4, #6]
	ldrh r1, [r4, #4]
	ldr r0, [r5, r0]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_020014F8
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bne _0223D278
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223D278:
	adds r5, #0xc4
	ldr r0, [r5]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223D288
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223D288:
	ldrb r0, [r4, #8]
	adds r0, #0xfd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0223D298
	movs r0, #1
	b _0223D29A
_0223D298:
	movs r0, #0
_0223D29A:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223D244

	thumb_func_start ov84_0223D2A0
ov84_0223D2A0: @ 0x0223D2A0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r3, r2, r0
	ldr r1, _0223D2F0 @ =0x0000047A
	movs r0, #1
	strb r0, [r4, r1]
	ldrh r2, [r3, #6]
	ldrh r0, [r3, #4]
	adds r2, r2, r0
	adds r0, r1, #1
	strb r2, [r4, r0]
	movs r0, #0x57
	adds r1, r1, #1
	lsls r0, r0, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, r0]
	bl FUN_020014F8
	ldr r1, _0223D2F4 @ =0x0000047C
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov84_0223FE18
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020013AC
	adds r0, r4, #0
	bl ov84_0223D4E8
	pop {r4, pc}
	nop
_0223D2F0: .4byte 0x0000047A
_0223D2F4: .4byte 0x0000047C
	thumb_func_end ov84_0223D2A0

	thumb_func_start ov84_0223D2F8
ov84_0223D2F8: @ 0x0223D2F8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	bl ov84_0223EE30
	cmp r0, #1
	bne _0223D30C
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0223D30C:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r4, r2, r0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #6
	adds r2, r4, #4
	bl FUN_020014DC
	adds r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223D34E
	ldr r0, _0223D424 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	bl ov84_0223D42C
	movs r1, #0x49
	movs r0, #1
	lsls r1, r1, #4
	add sp, #4
	strb r0, [r5, r1]
	pop {r3, r4, r5, r6, pc}
_0223D34E:
	ldr r0, _0223D428 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #4
	tst r0, r1
	beq _0223D36A
	ldr r0, _0223D424 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	bl ov84_0223D42C
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0223D36A:
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001288
	adds r6, r0, #0
	movs r0, #0x57
	lsls r0, r0, #2
	add r1, sp, #0
	ldr r0, [r5, r0]
	adds r1, #2
	add r2, sp, #0
	bl FUN_020014DC
	add r0, sp, #0
	ldrh r2, [r0]
	ldrh r0, [r4, #4]
	cmp r0, r2
	beq _0223D3A6
	subs r2, r2, #1
	adds r0, r5, #0
	lsls r2, r2, #4
	adds r0, #0xf4
	adds r2, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r0]
	movs r1, #0xb1
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
_0223D3A6:
	add r0, sp, #0
	ldrh r1, [r0, #2]
	strh r1, [r4, #6]
	ldrh r0, [r0]
	strh r0, [r4, #4]
	movs r0, #1
	mvns r0, r0
	cmp r6, r0
	beq _0223D3E6
	adds r0, r0, #1
	cmp r6, r0
	bne _0223D40A
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020014F0
	cmp r0, #1
	bne _0223D3D6
	adds r0, r5, #0
	movs r1, #0x24
	bl ov84_0223EB08
	b _0223D41C
_0223D3D6:
	cmp r0, #2
	bne _0223D41C
	movs r1, #0x23
	adds r0, r5, #0
	mvns r1, r1
	bl ov84_0223EB08
	b _0223D41C
_0223D3E6:
	ldr r0, _0223D424 @ =0x000005DC
	bl FUN_02005748
	ldr r0, _0223D428 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0223D3FE
	adds r0, r5, #0
	bl ov84_0223D42C
	b _0223D404
_0223D3FE:
	adds r0, r5, #0
	bl ov84_0223D484
_0223D404:
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0223D40A:
	ldr r0, _0223D424 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	bl ov84_0223D42C
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0223D41C:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223D424: .4byte 0x000005DC
_0223D428: .4byte 0x021BF67C
	thumb_func_end ov84_0223D2F8

	thumb_func_start ov84_0223D42C
ov84_0223D42C: @ 0x0223D42C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r0, r2, r0
	ldrh r2, [r0, #6]
	ldrh r1, [r0, #4]
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	ldr r1, _0223D480 @ =0x0000047B
	ldrb r1, [r4, r1]
	cmp r1, r2
	beq _0223D478
	subs r2, r2, #1
	cmp r1, r2
	beq _0223D478
	subs r1, r1, #1
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r0]
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl FUN_0207CDEC
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	adds r0, r4, #0
	bl ov84_0223BFBC
_0223D478:
	adds r0, r4, #0
	bl ov84_0223D484
	pop {r4, pc}
	.align 2, 0
_0223D480: .4byte 0x0000047B
	thumb_func_end ov84_0223D42C

	thumb_func_start ov84_0223D484
ov84_0223D484: @ 0x0223D484
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r4, r2, r0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #6
	adds r2, r4, #4
	bl FUN_02001384
	movs r0, #0x57
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _0223D4E0 @ =0x0000047B
	ldrh r1, [r4, #6]
	ldrb r2, [r5, r0]
	ldrh r0, [r4, #4]
	adds r1, r1, r0
	cmp r2, r1
	bge _0223D4C0
	subs r0, r0, #1
	strh r0, [r4, #4]
_0223D4C0:
	ldr r0, _0223D4E4 @ =0x0000047A
	movs r2, #0
	strb r2, [r5, r0]
	adds r1, r0, #1
	strb r2, [r5, r1]
	adds r0, r0, #2
	str r2, [r5, r0]
	ldrh r1, [r4, #6]
	ldrh r2, [r4, #4]
	adds r0, r5, #0
	bl ov84_0223C224
	adds r0, r5, #0
	bl ov84_0223D4E8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223D4E0: .4byte 0x0000047B
_0223D4E4: .4byte 0x0000047A
	thumb_func_end ov84_0223D484

	thumb_func_start ov84_0223D4E8
ov84_0223D4E8: @ 0x0223D4E8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r0, _0223D5A4 @ =0x0000047A
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0223D554
	ldrh r2, [r2, #4]
	adds r0, r4, #0
	adds r0, #0xf0
	subs r2, r2, #1
	lsls r2, r2, #4
	adds r2, #0x18
	lsls r2, r2, #0x10
	ldr r0, [r0]
	movs r1, #0xb1
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200D3F4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, _0223D5A8 @ =0x00000424
	ldrb r0, [r4, r0]
	cmp r0, #1
	beq _0223D5A2
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200D3F4
	adds r4, #0xec
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200D3F4
	pop {r4, pc}
_0223D554:
	ldrh r2, [r2, #4]
	adds r0, r4, #0
	adds r0, #0xf4
	subs r2, r2, #1
	lsls r2, r2, #4
	adds r2, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r0]
	movs r1, #0xb1
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xf0
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, _0223D5A8 @ =0x00000424
	ldrb r0, [r4, r0]
	cmp r0, #1
	beq _0223D5A2
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r4, #0xec
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D3F4
_0223D5A2:
	pop {r4, pc}
	.align 2, 0
_0223D5A4: .4byte 0x0000047A
_0223D5A8: .4byte 0x00000424
	thumb_func_end ov84_0223D4E8

	thumb_func_start ov84_0223D5AC
ov84_0223D5AC: @ 0x0223D5AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0
	adds r0, #0x66
	ldrh r0, [r0]
	movs r2, #6
	bl FUN_0207CF48
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r4, #0
	adds r1, r0, #0
	adds r1, #0x64
	ldrb r2, [r1]
	movs r1, #0xc
	muls r1, r2, r1
	adds r1, r0, r1
	adds r0, #0x65
	ldrb r0, [r0]
	ldrb r6, [r1, #0xc]
	cmp r0, #0
	beq _0223D5E4
	b _0223D6F2
_0223D5E4:
	cmp r6, #4
	bne _0223D5F0
	movs r1, #9
	add r0, sp, #0
	strb r1, [r0]
	adds r4, r4, #1
_0223D5F0:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x76
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x11
	ldr r1, _0223D724 @ =0x0000FFFE
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bhi _0223D628
	adds r1, r0, #0
	adds r1, #0x64
	ldrb r2, [r1]
	movs r1, #0xc
	muls r1, r2, r1
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #5
	bne _0223D6A2
	movs r1, #2
	add r0, sp, #0
	strb r1, [r0, r4]
	adds r4, r4, #1
	b _0223D6A2
_0223D628:
	adds r0, r7, #0
	movs r1, #6
	bl FUN_0207D014
	cmp r0, #0
	beq _0223D6A2
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r1, [r0]
	ldr r2, _0223D728 @ =0x000001C2
	adds r0, r1, #0
	adds r0, #0x66
	ldrh r0, [r0]
	cmp r0, r2
	bne _0223D65C
	adds r2, r1, #0
	adds r2, #0x76
	ldrh r2, [r2]
	lsls r2, r2, #0x1f
	lsrs r2, r2, #0x1f
	cmp r2, #1
	bne _0223D65C
	movs r1, #1
	add r0, sp, #0
	strb r1, [r0, r4]
	b _0223D6A0
_0223D65C:
	adds r2, r1, #0
	adds r2, #0x64
	ldrb r3, [r2]
	movs r2, #0xc
	muls r2, r3, r2
	adds r2, r1, r2
	ldrb r3, [r2, #0xc]
	cmp r3, #5
	bne _0223D676
	movs r1, #2
	add r0, sp, #0
	strb r1, [r0, r4]
	b _0223D6A0
_0223D676:
	ldr r2, _0223D72C @ =0x000001C1
	cmp r0, r2
	bne _0223D684
	movs r1, #4
	add r0, sp, #0
	strb r1, [r0, r4]
	b _0223D6A0
_0223D684:
	cmp r3, #4
	bne _0223D69A
	ldr r0, [r1, #0x70]
	bl FUN_02068B50
	cmp r0, #1
	bne _0223D69A
	movs r1, #3
	add r0, sp, #0
	strb r1, [r0, r4]
	b _0223D6A0
_0223D69A:
	movs r1, #0
	add r0, sp, #0
	strb r1, [r0, r4]
_0223D6A0:
	adds r4, r4, #1
_0223D6A2:
	adds r0, r7, #0
	movs r1, #3
	bl FUN_0207D014
	cmp r0, #0
	bne _0223D6C0
	movs r0, #8
	add r1, sp, #0
	strb r0, [r1, r4]
	adds r4, r4, #1
	cmp r6, #3
	beq _0223D6C0
	movs r0, #5
	strb r0, [r1, r4]
	adds r4, r4, #1
_0223D6C0:
	adds r0, r7, #0
	movs r1, #4
	bl FUN_0207D014
	cmp r0, #0
	beq _0223D708
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl FUN_0207D3FC
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r1, #0x66
	ldrh r1, [r1]
	cmp r1, r0
	bne _0223D6E8
	movs r1, #7
	b _0223D6EA
_0223D6E8:
	movs r1, #6
_0223D6EA:
	add r0, sp, #0
	strb r1, [r0, r4]
	adds r4, r4, #1
	b _0223D708
_0223D6F2:
	adds r0, #0xfc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0223D708
	movs r1, #0xa
	add r0, sp, #0
	strb r1, [r0]
	movs r1, #9
	strb r1, [r0, #1]
	adds r4, r4, #2
_0223D708:
	adds r2, r4, #1
	lsls r2, r2, #0x18
	movs r0, #0xb
	add r1, sp, #0
	strb r0, [r1, r4]
	adds r0, r5, #0
	lsrs r2, r2, #0x18
	bl ov84_0223FB70
	adds r0, r7, #0
	bl FUN_020181C4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223D724: .4byte 0x0000FFFE
_0223D728: .4byte 0x000001C2
_0223D72C: .4byte 0x000001C1
	thumb_func_end ov84_0223D5AC

	thumb_func_start ov84_0223D730
ov84_0223D730: @ 0x0223D730
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov84_0223EF4C
	cmp r0, #1
	bne _0223D740
	movs r0, #4
	pop {r3, r4, r5, pc}
_0223D740:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001BE0
	adds r4, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _0223D774
	adds r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223D774
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02001D44
	adds r4, r0, #0
	movs r0, #0x49
	movs r1, #1
	lsls r0, r0, #4
	strb r1, [r5, r0]
_0223D774:
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _0223D7AA
	adds r0, r0, #1
	cmp r4, r0
	bne _0223D7DC
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001DC8
	cmp r0, #1
	bne _0223D79A
	adds r0, r5, #0
	movs r1, #0x12
	bl ov84_0223EB08
	b _0223D7E2
_0223D79A:
	cmp r0, #2
	bne _0223D7E2
	movs r1, #0x11
	adds r0, r5, #0
	mvns r1, r1
	bl ov84_0223EB08
	b _0223D7E2
_0223D7AA:
	adds r0, r5, #0
	movs r1, #1
	bl ov84_02240B34
	adds r0, r5, #0
	bl ov84_0223FD84
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _0223D7D8
	adds r0, r5, #0
	movs r1, #0
	bl ov84_0223D7E8
_0223D7D8:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223D7DC:
	adds r0, r5, #0
	blx r4
	pop {r3, r4, r5, pc}
_0223D7E2:
	movs r0, #4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov84_0223D730

	thumb_func_start ov84_0223D7E8
ov84_0223D7E8: @ 0x0223D7E8
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	cmp r1, #0
	bne _0223D816
	movs r0, #0x12
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r2, _0223D844 @ =0x02241064
	movs r1, #1
	movs r3, #0
	bl FUN_020198C0
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200D3F4
	b _0223D838
_0223D816:
	movs r0, #0x12
	str r0, [sp]
	movs r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r4]
	ldr r2, _0223D848 @ =0x02241096
	movs r1, #1
	movs r3, #0
	bl FUN_020198C0
	adds r0, r4, #0
	adds r0, #0xfc
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
_0223D838:
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0201C3C0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_0223D844: .4byte 0x02241064
_0223D848: .4byte 0x02241096
	thumb_func_end ov84_0223D7E8

	thumb_func_start ov84_0223D84C
ov84_0223D84C: @ 0x0223D84C
	lsls r1, r0, #2
	ldr r0, _0223D854 @ =0x02241034
	ldr r0, [r0, r1]
	bx lr
	.align 2, 0
_0223D854: .4byte 0x02241034
	thumb_func_end ov84_0223D84C

	thumb_func_start ov84_0223D858
ov84_0223D858: @ 0x0223D858
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl ov84_0223FD84
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #6
	adds r0, #0x66
	ldrh r0, [r0]
	adds r2, r1, #0
	bl FUN_0207CFF0
	adds r1, r0, #0
	lsls r1, r1, #0x10
	movs r0, #2
	lsrs r1, r1, #0x10
	bl FUN_020683F4
	adds r1, r0, #0
	beq _0223D8D8
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r0, [r0, #0x70]
	blx r1
	adds r3, r0, #0
	beq _0223D8D8
	movs r0, #6
	adds r2, r4, #0
	str r0, [sp]
	adds r2, #0xc4
	ldr r2, [r2]
	adds r0, r4, #0
	movs r1, #0xfe
	adds r2, #0x66
	adds r0, #0xcc
	lsls r1, r1, #2
	ldrh r2, [r2]
	ldr r0, [r0]
	ldr r1, [r4, r1]
	bl FUN_0207CD34
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	ldr r2, _0223D8E4 @ =0x000003D9
	adds r0, #0x64
	movs r1, #0
	movs r3, #0xc
	bl FUN_0200E060
	adds r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223D8E8 @ =0x00000426
	add sp, #4
	strb r0, [r4, r1]
	movs r0, #0xc
	pop {r3, r4, pc}
_0223D8D8:
	adds r0, r4, #0
	bl ov84_0223D94C
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223D8E4: .4byte 0x000003D9
_0223D8E8: .4byte 0x00000426
	thumb_func_end ov84_0223D858

	thumb_func_start ov84_0223D8EC
ov84_0223D8EC: @ 0x0223D8EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D940 @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223D93C
	ldr r0, _0223D944 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _0223D90E
	ldr r0, _0223D948 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223D93C
_0223D90E:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	adds r4, #0xc4
	ldr r0, [r4]
	adds r0, #0x65
	ldrb r0, [r0]
	cmp r0, #3
	bne _0223D938
	movs r0, #0x17
	pop {r4, pc}
_0223D938:
	movs r0, #1
	pop {r4, pc}
_0223D93C:
	movs r0, #0xc
	pop {r4, pc}
	.align 2, 0
_0223D940: .4byte 0x00000426
_0223D944: .4byte 0x021BF67C
_0223D948: .4byte 0x021BF6BC
	thumb_func_end ov84_0223D8EC

	thumb_func_start ov84_0223D94C
ov84_0223D94C: @ 0x0223D94C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r2, r2, r0
	ldr r1, _0223D9EC @ =0x00000483
	movs r0, #0
	strb r0, [r4, r1]
	ldrb r0, [r2, #8]
	cmp r0, #3
	bne _0223D976
	ldr r2, _0223D9F0 @ =ov84_0223DA14
	adds r0, r1, #1
	str r2, [r4, r0]
	movs r0, #0xd
	pop {r4, pc}
_0223D976:
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r2, [r0]
	subs r1, #0x8b
	ldr r0, [r2]
	adds r2, #0x66
	ldrh r2, [r2]
	ldr r1, [r4, r1]
	movs r3, #6
	bl FUN_0207CC10
	cmp r0, #1
	bne _0223D9B6
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	ldr r2, _0223D9F4 @ =0x000003D9
	adds r0, #0x64
	movs r1, #0
	movs r3, #0xc
	bl FUN_0200E060
	adds r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223D9F8 @ =0x00000426
	strb r0, [r4, r1]
	movs r0, #0xc
	pop {r4, pc}
_0223D9B6:
	adds r1, r4, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, r4, #0
	adds r1, #0x66
	ldrh r1, [r1]
	bl ov84_0223DBF4
	cmp r0, #1
	bne _0223D9D4
	ldr r1, _0223D9FC @ =ov84_0223DDD0
	ldr r0, _0223DA00 @ =0x00000484
	str r1, [r4, r0]
	movs r0, #0xd
	pop {r4, pc}
_0223D9D4:
	movs r0, #1
	movs r1, #6
	bl FUN_0208C120
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #0
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x18
	pop {r4, pc}
	nop
_0223D9EC: .4byte 0x00000483
_0223D9F0: .4byte ov84_0223DA14
_0223D9F4: .4byte 0x000003D9
_0223D9F8: .4byte 0x00000426
_0223D9FC: .4byte ov84_0223DDD0
_0223DA00: .4byte 0x00000484
	thumb_func_end ov84_0223D94C

	thumb_func_start ov84_0223DA04
ov84_0223DA04: @ 0x0223DA04
	push {r3, lr}
	ldr r1, _0223DA10 @ =0x00000484
	ldr r1, [r0, r1]
	blx r1
	pop {r3, pc}
	nop
_0223DA10: .4byte 0x00000484
	thumb_func_end ov84_0223DA04

	thumb_func_start ov84_0223DA14
ov84_0223DA14: @ 0x0223DA14
	push {r3, r4, r5, lr}
	ldr r1, _0223DBE0 @ =0x00000483
	adds r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #3
	bls _0223DA22
	b _0223DBDC
_0223DA22:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223DA2E: @ jump table
	.2byte _0223DA36 - _0223DA2E - 2 @ case 0
	.2byte _0223DAAC - _0223DA2E - 2 @ case 1
	.2byte _0223DB0C - _0223DA2E - 2 @ case 2
	.2byte _0223DB26 - _0223DA2E - 2 @ case 3
_0223DA36:
	adds r0, #0xc4
	ldr r0, [r0]
	adds r0, #0x66
	ldrh r0, [r0]
	bl FUN_0207D268
	adds r5, r0, #0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	adds r2, r5, #0
	bl FUN_0200B630
	adds r0, r5, #0
	bl FUN_0207D28C
	cmp r0, #1
	bne _0223DA70
	movs r0, #0x45
	movs r2, #0xfe
	lsls r0, r0, #2
	lsls r2, r2, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	movs r1, #0x3b
	bl FUN_0200B1B8
	b _0223DA82
_0223DA70:
	movs r0, #0x45
	movs r2, #0xfe
	lsls r0, r0, #2
	lsls r2, r2, #2
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	movs r1, #0x3a
	bl FUN_0200B1B8
_0223DA82:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	ldr r2, _0223DBE4 @ =0x000003D9
	adds r0, #0x64
	movs r1, #0
	movs r3, #0xc
	bl FUN_0200E060
	adds r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223DBE8 @ =0x00000426
	strb r0, [r4, r1]
	movs r0, #1
	adds r1, #0x5d
	strb r0, [r4, r1]
	b _0223DBDC
_0223DAAC:
	subs r1, #0x5d
	ldrb r0, [r4, r1]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223DB6E
	ldr r0, _0223DBEC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _0223DACA
	ldr r0, _0223DBF0 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223DB6E
_0223DACA:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x3c
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	adds r2, r5, #0
	bl FUN_0200C388
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223DBE8 @ =0x00000426
	strb r0, [r4, r1]
	movs r0, #2
	adds r1, #0x5d
	strb r0, [r4, r1]
	b _0223DBDC
_0223DB0C:
	subs r1, #0x5d
	ldrb r0, [r4, r1]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223DBDC
	adds r0, r4, #0
	bl ov84_02240120
	ldr r0, _0223DBE0 @ =0x00000483
	movs r1, #3
	strb r1, [r4, r0]
	b _0223DBDC
_0223DB26:
	bl ov84_0223EF4C
	cmp r0, #1
	beq _0223DBDC
	adds r0, r4, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223DB50
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	movs r2, #6
	bl FUN_02002134
	movs r1, #0x49
	movs r2, #1
	lsls r1, r1, #4
	strb r2, [r4, r1]
	b _0223DB5C
_0223DB50:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #6
	bl FUN_02002114
_0223DB5C:
	cmp r0, #0
	beq _0223DB70
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223DBB6
	adds r1, r1, #1
	cmp r0, r1
	beq _0223DB8E
_0223DB6E:
	b _0223DBDC
_0223DB70:
	movs r0, #1
	movs r1, #6
	bl FUN_0208C120
	adds r0, r4, #0
	movs r1, #0
	bl ov84_0223D7E8
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #0
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x18
	pop {r3, r4, r5, pc}
_0223DB8E:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001DC8
	cmp r0, #1
	bne _0223DBA6
	adds r0, r4, #0
	movs r1, #0x12
	bl ov84_0223EB08
	b _0223DBDC
_0223DBA6:
	cmp r0, #2
	bne _0223DBDC
	movs r1, #0x11
	adds r0, r4, #0
	mvns r1, r1
	bl ov84_0223EB08
	b _0223DBDC
_0223DBB6:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	adds r0, r4, #0
	movs r1, #0
	bl ov84_0223D7E8
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223DBDC:
	movs r0, #0xd
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223DBE0: .4byte 0x00000483
_0223DBE4: .4byte 0x000003D9
_0223DBE8: .4byte 0x00000426
_0223DBEC: .4byte 0x021BF67C
_0223DBF0: .4byte 0x021BF6BC
	thumb_func_end ov84_0223DA14

	thumb_func_start ov84_0223DBF4
ov84_0223DBF4: @ 0x0223DBF4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x46
	adds r2, r4, #0
	lsls r0, r0, #2
	adds r2, #0xcc
	adds r5, r1, #0
	ldr r0, [r4, r0]
	ldr r2, [r2]
	movs r1, #0
	bl FUN_0200B498
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	adds r2, r5, #0
	bl FUN_0200B70C
	cmp r5, #0x44
	bne _0223DC3C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x40
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl ov84_0223BA04
	ldr r0, _0223DC98 @ =0x00000488
	movs r1, #0
	strh r1, [r4, r0]
	b _0223DC7A
_0223DC3C:
	cmp r5, #0x45
	bne _0223DC5E
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x3f
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #2
	bl ov84_0223BA04
	ldr r0, _0223DC98 @ =0x00000488
	movs r1, #0
	strh r1, [r4, r0]
	b _0223DC7A
_0223DC5E:
	cmp r5, #0x4d
	beq _0223DC6A
	cmp r5, #0x4c
	beq _0223DC6A
	cmp r5, #0x4f
	bne _0223DC76
_0223DC6A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov84_0223DC9C
	adds r5, r0, #0
	b _0223DC7A
_0223DC76:
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223DC7A:
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	adds r2, r5, #0
	bl FUN_0200C388
	adds r0, r5, #0
	bl FUN_020237BC
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0223DC98: .4byte 0x00000488
	thumb_func_end ov84_0223DBF4

	thumb_func_start ov84_0223DC9C
ov84_0223DC9C: @ 0x0223DC9C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl ov84_0223B9E4
	bl FUN_0202D9D8
	cmp r0, #0
	bne _0223DCC2
	ldr r0, _0223DCF4 @ =0x00000488
	movs r1, #0
	strh r1, [r4, r0]
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x3e
	bl FUN_0200B1EC
	pop {r3, r4, r5, pc}
_0223DCC2:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #6
	bl FUN_0207CFF0
	adds r1, r0, #0
	lsls r1, r1, #0x18
	adds r0, r4, #0
	lsrs r1, r1, #0x18
	bl ov84_0223B9F4
	ldr r0, _0223DCF4 @ =0x00000488
	movs r1, #1
	strh r1, [r4, r0]
	movs r0, #6
	lsls r0, r0, #8
	bl FUN_02005748
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x3d
	bl FUN_0200B1EC
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223DCF4: .4byte 0x00000488
	thumb_func_end ov84_0223DC9C

	thumb_func_start ov84_0223DCF8
ov84_0223DCF8: @ 0x0223DCF8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r3, r1, #0
	muls r3, r0, r3
	adds r1, r2, r3
	movs r0, #6
	str r0, [sp]
	ldr r3, _0223DDCC @ =0x00000488
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	adds r2, #0x66
	ldrh r2, [r2]
	ldrh r3, [r4, r3]
	subs r1, r1, #3
	bl FUN_0207D658
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	adds r1, r3, #0
	muls r2, r0, r2
	movs r0, #0x57
	lsls r0, r0, #2
	adds r1, #0xa
	ldr r0, [r4, r0]
	adds r3, #8
	adds r1, r1, r2
	adds r2, r3, r2
	bl FUN_02001384
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	adds r0, r4, #0
	bl ov84_0223BFBC
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r1, r3, #0
	adds r0, #0xa
	adds r1, #8
	adds r0, r0, r2
	adds r1, r1, r2
	adds r2, r3, r2
	ldrb r2, [r2, #0xd]
	bl ov84_0223C194
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r0, r3, #0
	adds r1, r3, #0
	adds r0, #0xa
	adds r1, #8
	adds r0, r0, r2
	adds r1, r1, r2
	adds r2, r3, r2
	ldrb r2, [r2, #0xd]
	movs r3, #9
	bl ov84_0223C1D0
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r3, [r0]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	adds r2, r3, r2
	ldrh r1, [r2, #0xa]
	ldrh r2, [r2, #8]
	adds r0, r4, #0
	bl ov84_0223C224
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0223DDCC: .4byte 0x00000488
	thumb_func_end ov84_0223DCF8

	thumb_func_start ov84_0223DDD0
ov84_0223DDD0: @ 0x0223DDD0
	push {r4, lr}
	ldr r1, _0223DE64 @ =0x00000483
	adds r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0223DDE6
	cmp r2, #1
	beq _0223DE0E
	cmp r2, #2
	beq _0223DE3E
	b _0223DE5E
_0223DDE6:
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	ldr r2, _0223DE68 @ =0x000003D9
	adds r0, #0x64
	movs r1, #0
	movs r3, #0xc
	bl FUN_0200E060
	adds r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223DE6C @ =0x00000426
	strb r0, [r4, r1]
	movs r0, #1
	adds r1, #0x5d
	strb r0, [r4, r1]
	b _0223DE5E
_0223DE0E:
	subs r1, #0x5d
	ldrb r0, [r4, r1]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223DE5E
	ldr r0, _0223DE70 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _0223DE2C
	ldr r0, _0223DE74 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223DE5E
_0223DE2C:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	ldr r0, _0223DE64 @ =0x00000483
	movs r1, #2
	strb r1, [r4, r0]
	b _0223DE5E
_0223DE3E:
	adds r1, r1, #5
	ldrsh r1, [r4, r1]
	cmp r1, #0
	beq _0223DE4A
	bl ov84_0223DCF8
_0223DE4A:
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	movs r0, #1
	pop {r4, pc}
_0223DE5E:
	movs r0, #0xd
	pop {r4, pc}
	nop
_0223DE64: .4byte 0x00000483
_0223DE68: .4byte 0x000003D9
_0223DE6C: .4byte 0x00000426
_0223DE70: .4byte 0x021BF67C
_0223DE74: .4byte 0x021BF6BC
	thumb_func_end ov84_0223DDD0

	thumb_func_start ov84_0223DE78
ov84_0223DE78: @ 0x0223DE78
	push {r4, lr}
	adds r4, r0, #0
	bl ov84_0223FD84
	movs r0, #1
	movs r1, #6
	bl FUN_0208C120
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223DE78

	thumb_func_start ov84_0223DE98
ov84_0223DE98: @ 0x0223DE98
	push {r4, lr}
	adds r4, r0, #0
	bl ov84_0223FD84
	movs r0, #1
	movs r1, #6
	bl FUN_0208C120
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #3
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223DE98

	thumb_func_start ov84_0223DEB8
ov84_0223DEB8: @ 0x0223DEB8
	push {r4, lr}
	adds r4, r0, #0
	bl ov84_0223FD84
	ldr r0, _0223DF08 @ =0x00000488
	movs r1, #1
	strh r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r2, [r0]
	movs r3, #6
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r2, r0
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	adds r2, #0x66
	ldrh r2, [r2]
	subs r1, r1, #3
	bl FUN_0207D748
	cmp r0, #1
	bne _0223DEF6
	adds r0, r4, #0
	bl ov84_0223FFF0
	movs r0, #8
	pop {r4, pc}
_0223DEF6:
	adds r0, r4, #0
	bl ov84_0223FE94
	adds r0, r4, #0
	movs r1, #0
	bl ov84_02240CF0
	movs r0, #7
	pop {r4, pc}
	.align 2, 0
_0223DF08: .4byte 0x00000488
	thumb_func_end ov84_0223DEB8

	thumb_func_start ov84_0223DF0C
ov84_0223DF0C: @ 0x0223DF0C
	push {r4, lr}
	ldr r2, _0223DFE8 @ =0x00000488
	adds r4, r0, #0
	adds r1, r4, r2
	adds r2, r2, #2
	ldrh r2, [r4, r2]
	bl ov84_0223EFD0
	cmp r0, #1
	bne _0223DF2A
	adds r0, r4, #0
	bl ov84_0223FF44
	movs r0, #7
	pop {r4, pc}
_0223DF2A:
	adds r0, r4, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223DF4E
	adds r0, r4, #0
	bl ov84_0223FFF0
	adds r0, r4, #0
	movs r1, #0
	bl ov84_02240D3C
	movs r0, #0x49
	movs r1, #1
	lsls r0, r0, #4
	strb r1, [r4, r0]
	movs r0, #8
	pop {r4, pc}
_0223DF4E:
	ldr r1, _0223DFE8 @ =0x00000488
	adds r0, r4, r1
	adds r1, r1, #2
	ldrh r1, [r4, r1]
	bl FUN_0208C15C
	cmp r0, #0
	beq _0223DF9A
	cmp r0, #1
	beq _0223DF68
	cmp r0, #2
	beq _0223DF80
	b _0223DF9A
_0223DF68:
	adds r0, r4, #0
	movs r1, #0x12
	bl ov84_0223EB08
	adds r0, r4, #0
	bl ov84_0223FF44
	ldr r0, _0223DFEC @ =0x00000638
	bl FUN_02005748
	movs r0, #7
	pop {r4, pc}
_0223DF80:
	movs r1, #0x11
	adds r0, r4, #0
	mvns r1, r1
	bl ov84_0223EB08
	adds r0, r4, #0
	bl ov84_0223FF44
	ldr r0, _0223DFEC @ =0x00000638
	bl FUN_02005748
	movs r0, #7
	pop {r4, pc}
_0223DF9A:
	ldr r0, _0223DFF0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0223DFBC
	adds r0, r4, #0
	bl ov84_0223FFF0
	adds r0, r4, #0
	movs r1, #0
	bl ov84_02240D3C
	ldr r0, _0223DFF4 @ =0x000005DC
	bl FUN_02005748
	movs r0, #8
	pop {r4, pc}
_0223DFBC:
	movs r0, #2
	tst r0, r1
	beq _0223DFE2
	adds r0, r4, #0
	bl ov84_0223FFC0
	adds r0, r4, #0
	movs r1, #0
	bl ov84_02240D3C
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	ldr r0, _0223DFF4 @ =0x000005DC
	bl FUN_02005748
	movs r0, #1
	pop {r4, pc}
_0223DFE2:
	movs r0, #7
	pop {r4, pc}
	nop
_0223DFE8: .4byte 0x00000488
_0223DFEC: .4byte 0x00000638
_0223DFF0: .4byte 0x021BF67C
_0223DFF4: .4byte 0x000005DC
	thumb_func_end ov84_0223DF0C

	thumb_func_start ov84_0223DFF8
ov84_0223DFF8: @ 0x0223DFF8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E018 @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223E012
	adds r0, r4, #0
	bl ov84_02240120
	movs r0, #9
	pop {r4, pc}
_0223E012:
	movs r0, #8
	pop {r4, pc}
	nop
_0223E018: .4byte 0x00000426
	thumb_func_end ov84_0223DFF8

	thumb_func_start ov84_0223E01C
ov84_0223E01C: @ 0x0223E01C
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov84_0223EF4C
	cmp r0, #1
	bne _0223E030
	add sp, #8
	movs r0, #9
	pop {r3, r4, r5, pc}
_0223E030:
	adds r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223E052
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	movs r2, #6
	bl FUN_02002134
	movs r1, #0x49
	movs r2, #1
	lsls r1, r1, #4
	strb r2, [r5, r1]
	b _0223E05E
_0223E052:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl FUN_02002114
_0223E05E:
	cmp r0, #0
	beq _0223E072
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223E128
	adds r1, r1, #1
	cmp r0, r1
	beq _0223E100
	b _0223E148
_0223E072:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x35
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r0, _0223E150 @ =0x00000488
	ldrsh r0, [r5, r0]
	cmp r0, #1
	bne _0223E0A0
	adds r2, r5, #0
	adds r2, #0xc4
	ldr r2, [r2]
	movs r0, #0x46
	adds r2, #0x66
	lsls r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200B70C
	b _0223E0B6
_0223E0A0:
	adds r2, r5, #0
	adds r2, #0xc4
	ldr r2, [r2]
	movs r0, #0x46
	adds r2, #0x66
	lsls r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200B77C
_0223E0B6:
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	movs r0, #0x46
	ldr r2, _0223E150 @ =0x00000488
	str r1, [sp, #4]
	lsls r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	movs r3, #3
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E154 @ =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	movs r0, #0xa
	pop {r3, r4, r5, pc}
_0223E100:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001DC8
	cmp r0, #1
	bne _0223E118
	adds r0, r5, #0
	movs r1, #0x12
	bl ov84_0223EB08
	b _0223E148
_0223E118:
	cmp r0, #2
	bne _0223E148
	movs r1, #0x11
	adds r0, r5, #0
	mvns r1, r1
	bl ov84_0223EB08
	b _0223E148
_0223E128:
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	adds r0, r5, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r5, #0
	movs r1, #1
	bl ov84_02240B34
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223E148:
	movs r0, #9
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223E150: .4byte 0x00000488
_0223E154: .4byte 0x00000426
	thumb_func_end ov84_0223E01C

	thumb_func_start ov84_0223E158
ov84_0223E158: @ 0x0223E158
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E184 @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	beq _0223E16C
	movs r0, #0xa
	pop {r4, pc}
_0223E16C:
	ldr r0, _0223E188 @ =0x00000479
	movs r1, #1
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov84_0223DCF8
	adds r4, #0x64
	adds r0, r4, #0
	bl FUN_0201A9A4
	movs r0, #0xb
	pop {r4, pc}
	.align 2, 0
_0223E184: .4byte 0x00000426
_0223E188: .4byte 0x00000479
	thumb_func_end ov84_0223E158

	thumb_func_start ov84_0223E18C
ov84_0223E18C: @ 0x0223E18C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E1D4 @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223E1D0
	ldr r0, _0223E1D8 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _0223E1AE
	ldr r0, _0223E1DC @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223E1D0
_0223E1AE:
	ldr r0, _0223E1E0 @ =0x00000479
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x64
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	movs r0, #1
	pop {r4, pc}
_0223E1D0:
	movs r0, #0xb
	pop {r4, pc}
	.align 2, 0
_0223E1D4: .4byte 0x00000426
_0223E1D8: .4byte 0x021BF67C
_0223E1DC: .4byte 0x021BF6BC
_0223E1E0: .4byte 0x00000479
	thumb_func_end ov84_0223E18C

	thumb_func_start ov84_0223E1E4
ov84_0223E1E4: @ 0x0223E1E4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, #0xc8
	adds r1, #0x66
	ldrh r1, [r1]
	ldr r0, [r0]
	bl FUN_0207D404
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020013AC
	adds r0, r4, #0
	bl ov84_0223FD84
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223E1E4

	thumb_func_start ov84_0223E220
ov84_0223E220: @ 0x0223E220
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xc8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0207D404
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020013AC
	adds r0, r4, #0
	bl ov84_0223FD84
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223E220

	thumb_func_start ov84_0223E254
ov84_0223E254: @ 0x0223E254
	push {r4, lr}
	adds r4, r0, #0
	bl ov84_0223FD84
	movs r0, #1
	movs r1, #6
	bl FUN_0208C120
	adds r0, r4, #0
	movs r1, #0
	bl ov84_0223D7E8
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #2
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223E254

	thumb_func_start ov84_0223E27C
ov84_0223E27C: @ 0x0223E27C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov84_0223D0FC
	adds r0, r5, #0
	bl ov84_0223ED14
	cmp r0, #1
	bne _0223E292
	movs r0, #0xe
	pop {r3, r4, r5, pc}
_0223E292:
	adds r0, r5, #0
	bl ov84_0223C750
	cmp r0, #1
	bne _0223E2A0
	movs r0, #2
	pop {r3, r4, r5, pc}
_0223E2A0:
	adds r0, r5, #0
	bl ov84_0223CD40
	cmp r0, #1
	bne _0223E2AE
	movs r0, #2
	pop {r3, r4, r5, pc}
_0223E2AE:
	adds r0, r5, #0
	bl ov84_0223C5B8
	cmp r0, #1
	bne _0223E34E
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #3
	adds r0, #0x66
	ldrh r0, [r0]
	movs r2, #6
	bl FUN_0207CFF0
	cmp r0, #0
	beq _0223E338
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	ldr r2, _0223E364 @ =0x000003D9
	adds r0, #0x64
	movs r1, #0
	movs r3, #0xc
	bl FUN_0200E060
	adds r2, r5, #0
	adds r2, #0xc4
	ldr r2, [r2]
	movs r0, #0x46
	adds r2, #0x66
	lsls r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200B70C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x2e
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E368 @ =0x00000426
	strb r0, [r5, r1]
	adds r0, r5, #0
	movs r1, #2
	bl ov84_02240B34
	movs r0, #0xf
	pop {r3, r4, r5, pc}
_0223E338:
	adds r5, #0xc4
	ldr r0, [r5]
	movs r1, #4
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #1
	movs r1, #6
	bl FUN_0208C120
	movs r0, #0x18
	pop {r3, r4, r5, pc}
_0223E34E:
	cmp r0, #3
	bne _0223E360
	adds r5, #0xc4
	ldr r0, [r5]
	movs r1, #4
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #0x18
	pop {r3, r4, r5, pc}
_0223E360:
	movs r0, #0xe
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E364: .4byte 0x000003D9
_0223E368: .4byte 0x00000426
	thumb_func_end ov84_0223E27C

	thumb_func_start ov84_0223E36C
ov84_0223E36C: @ 0x0223E36C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E3B0 @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223E3AC
	ldr r0, _0223E3B4 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _0223E38E
	ldr r0, _0223E3B8 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223E3AC
_0223E38E:
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	movs r0, #0xe
	pop {r4, pc}
_0223E3AC:
	movs r0, #0xf
	pop {r4, pc}
	.align 2, 0
_0223E3B0: .4byte 0x00000426
_0223E3B4: .4byte 0x021BF67C
_0223E3B8: .4byte 0x021BF6BC
	thumb_func_end ov84_0223E36C

	thumb_func_start ov84_0223E3BC
ov84_0223E3BC: @ 0x0223E3BC
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov84_0223D0FC
	adds r0, r5, #0
	bl ov84_0223ED14
	cmp r0, #1
	bne _0223E3D6
	add sp, #8
	movs r0, #0x10
	pop {r3, r4, r5, pc}
_0223E3D6:
	adds r0, r5, #0
	bl ov84_0223C750
	cmp r0, #1
	bne _0223E3E6
	add sp, #8
	movs r0, #2
	pop {r3, r4, r5, pc}
_0223E3E6:
	adds r0, r5, #0
	bl ov84_0223CD40
	cmp r0, #1
	bne _0223E3F6
	add sp, #8
	movs r0, #2
	pop {r3, r4, r5, pc}
_0223E3F6:
	adds r0, r5, #0
	bl ov84_0223C5B8
	cmp r0, #1
	beq _0223E402
	b _0223E566
_0223E402:
	adds r0, r5, #0
	movs r1, #0
	bl ov84_02240248
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	ldr r2, _0223E578 @ =0x000003D9
	adds r0, #0x64
	movs r1, #0
	movs r3, #0xc
	bl FUN_0200E060
	adds r2, r5, #0
	adds r2, #0xc4
	ldr r2, [r2]
	movs r0, #0x46
	adds r2, #0x66
	lsls r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200B70C
	adds r0, r5, #0
	movs r1, #2
	bl ov84_02240B34
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0
	adds r0, #0x66
	ldrh r0, [r0]
	movs r2, #6
	bl FUN_0207CFF0
	ldr r1, _0223E57C @ =0x0000048C
	movs r2, #6
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #3
	adds r0, #0x66
	ldrh r0, [r0]
	bl FUN_0207CFF0
	cmp r0, #0
	bne _0223E474
	ldr r1, _0223E57C @ =0x0000048C
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0223E4AA
_0223E474:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x4a
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E580 @ =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	movs r0, #0x16
	pop {r3, r4, r5, pc}
_0223E4AA:
	movs r2, #1
	subs r0, r1, #4
	strh r2, [r5, r0]
	ldr r0, [r5, r1]
	movs r3, #6
	lsrs r0, r0, #1
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r2, r0
	ldr r0, [r1, #4]
	ldrb r1, [r1, #0xd]
	adds r2, #0x66
	ldrh r2, [r2]
	subs r1, r1, #3
	bl FUN_0207D748
	cmp r0, #1
	bne _0223E530
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x4c
	bl FUN_0200B1EC
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, _0223E584 @ =0x00000488
	movs r0, #0x46
	ldrsh r3, [r5, r2]
	adds r2, r2, #4
	lsls r0, r0, #2
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	muls r2, r3, r2
	movs r3, #6
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E580 @ =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	movs r0, #0x13
	pop {r3, r4, r5, pc}
_0223E530:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x4b
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E580 @ =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	movs r0, #0x11
	pop {r3, r4, r5, pc}
_0223E566:
	cmp r0, #3
	bne _0223E570
	add sp, #8
	movs r0, #0x18
	pop {r3, r4, r5, pc}
_0223E570:
	movs r0, #0x10
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223E578: .4byte 0x000003D9
_0223E57C: .4byte 0x0000048C
_0223E580: .4byte 0x00000426
_0223E584: .4byte 0x00000488
	thumb_func_end ov84_0223E3BC

	thumb_func_start ov84_0223E588
ov84_0223E588: @ 0x0223E588
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E5BC @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223E5B8
	ldr r0, _0223E5C0 @ =0x0000048A
	ldrh r1, [r4, r0]
	cmp r1, #0x63
	bls _0223E5A4
	movs r1, #0x63
	strh r1, [r4, r0]
_0223E5A4:
	adds r0, r4, #0
	movs r1, #0
	bl ov84_02240148
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240CF0
	movs r0, #0x12
	pop {r4, pc}
_0223E5B8:
	movs r0, #0x11
	pop {r4, pc}
	.align 2, 0
_0223E5BC: .4byte 0x00000426
_0223E5C0: .4byte 0x0000048A
	thumb_func_end ov84_0223E588

	thumb_func_start ov84_0223E5C4
ov84_0223E5C4: @ 0x0223E5C4
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r2, _0223E790 @ =0x00000488
	adds r4, r0, #0
	adds r1, r4, r2
	adds r2, r2, #2
	ldrh r2, [r4, r2]
	bl ov84_0223EFD0
	cmp r0, #1
	bne _0223E5E8
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240148
	add sp, #8
	movs r0, #0x12
	pop {r3, r4, r5, pc}
_0223E5E8:
	adds r0, r4, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223E668
	adds r0, r4, #0
	movs r1, #0
	bl ov84_02240D3C
	adds r0, r4, #0
	adds r0, #0x74
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x4c
	bl FUN_0200B1EC
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, _0223E790 @ =0x00000488
	movs r0, #0x46
	ldrsh r3, [r4, r2]
	adds r2, r2, #4
	lsls r0, r0, #2
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	muls r2, r3, r2
	movs r3, #6
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	adds r2, r5, #0
	bl FUN_0200C388
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223E794 @ =0x00000426
	add sp, #8
	strb r0, [r4, r1]
	movs r0, #1
	adds r1, #0x6a
	strb r0, [r4, r1]
	movs r0, #0x13
	pop {r3, r4, r5, pc}
_0223E668:
	ldr r1, _0223E790 @ =0x00000488
	adds r0, r4, r1
	adds r1, r1, #2
	ldrh r1, [r4, r1]
	bl FUN_0208C15C
	cmp r0, #0
	beq _0223E6BC
	cmp r0, #1
	beq _0223E682
	cmp r0, #2
	beq _0223E69E
	b _0223E6BC
_0223E682:
	adds r0, r4, #0
	movs r1, #0x12
	bl ov84_0223EB08
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240148
	ldr r0, _0223E798 @ =0x00000638
	bl FUN_02005748
	add sp, #8
	movs r0, #0x12
	pop {r3, r4, r5, pc}
_0223E69E:
	movs r1, #0x11
	adds r0, r4, #0
	mvns r1, r1
	bl ov84_0223EB08
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240148
	ldr r0, _0223E798 @ =0x00000638
	bl FUN_02005748
	add sp, #8
	movs r0, #0x12
	pop {r3, r4, r5, pc}
_0223E6BC:
	ldr r0, _0223E79C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0223E73C
	adds r0, r4, #0
	movs r1, #0
	bl ov84_02240D3C
	adds r0, r4, #0
	adds r0, #0x74
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x4c
	bl FUN_0200B1EC
	movs r1, #0
	adds r5, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, _0223E790 @ =0x00000488
	movs r0, #0x46
	ldrsh r3, [r4, r2]
	adds r2, r2, #4
	lsls r0, r0, #2
	ldr r2, [r4, r2]
	ldr r0, [r4, r0]
	muls r2, r3, r2
	movs r3, #6
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	adds r2, r5, #0
	bl FUN_0200C388
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223E794 @ =0x00000426
	strb r0, [r4, r1]
	ldr r0, _0223E7A0 @ =0x000005DC
	bl FUN_02005748
	add sp, #8
	movs r0, #0x13
	pop {r3, r4, r5, pc}
_0223E73C:
	movs r0, #2
	tst r0, r1
	beq _0223E788
	ldr r0, _0223E7A4 @ =0x0000048C
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov84_02240D3C
	adds r0, r4, #0
	adds r0, #0x84
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x74
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	ldr r0, _0223E7A0 @ =0x000005DC
	bl FUN_02005748
	add sp, #8
	movs r0, #0x10
	pop {r3, r4, r5, pc}
_0223E788:
	movs r0, #0x12
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223E790: .4byte 0x00000488
_0223E794: .4byte 0x00000426
_0223E798: .4byte 0x00000638
_0223E79C: .4byte 0x021BF67C
_0223E7A0: .4byte 0x000005DC
_0223E7A4: .4byte 0x0000048C
	thumb_func_end ov84_0223E5C4

	thumb_func_start ov84_0223E7A8
ov84_0223E7A8: @ 0x0223E7A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E7C8 @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223E7C2
	adds r0, r4, #0
	bl ov84_02240120
	movs r0, #0x14
	pop {r4, pc}
_0223E7C2:
	movs r0, #0x13
	pop {r4, pc}
	nop
_0223E7C8: .4byte 0x00000426
	thumb_func_end ov84_0223E7A8

	thumb_func_start ov84_0223E7CC
ov84_0223E7CC: @ 0x0223E7CC
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	bl ov84_0223EF4C
	cmp r0, #1
	bne _0223E7E0
	add sp, #8
	movs r0, #0x14
	pop {r3, r4, r5, pc}
_0223E7E0:
	adds r0, r5, #0
	bl ov84_0223D1F4
	cmp r0, #1
	bne _0223E802
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	movs r2, #6
	bl FUN_02002134
	movs r1, #0x49
	movs r2, #1
	lsls r1, r1, #4
	strb r2, [r5, r1]
	b _0223E80E
_0223E802:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #6
	bl FUN_02002114
_0223E80E:
	cmp r0, #0
	beq _0223E822
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0223E8DE
	adds r1, r1, #1
	cmp r0, r1
	beq _0223E8B6
	b _0223E90E
_0223E822:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x4d
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r0, _0223E914 @ =0x00000488
	ldrsh r0, [r5, r0]
	cmp r0, #1
	ble _0223E850
	adds r2, r5, #0
	adds r2, #0xc4
	ldr r2, [r2]
	movs r0, #0x46
	adds r2, #0x66
	lsls r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200B77C
	b _0223E866
_0223E850:
	adds r2, r5, #0
	adds r2, #0xc4
	ldr r2, [r2]
	movs r0, #0x46
	adds r2, #0x66
	lsls r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200B70C
_0223E866:
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	movs r0, #0x46
	ldr r2, _0223E914 @ =0x00000488
	str r1, [sp, #4]
	ldrsh r3, [r5, r2]
	adds r2, r2, #4
	lsls r0, r0, #2
	ldr r2, [r5, r2]
	ldr r0, [r5, r0]
	muls r2, r3, r2
	movs r3, #6
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0223E918 @ =0x00000426
	add sp, #8
	strb r0, [r5, r1]
	movs r0, #0x15
	pop {r3, r4, r5, pc}
_0223E8B6:
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001DC8
	cmp r0, #1
	bne _0223E8CE
	adds r0, r5, #0
	movs r1, #0x12
	bl ov84_0223EB08
	b _0223E90E
_0223E8CE:
	cmp r0, #2
	bne _0223E90E
	movs r1, #0x11
	adds r0, r5, #0
	mvns r1, r1
	bl ov84_0223EB08
	b _0223E90E
_0223E8DE:
	ldr r0, _0223E91C @ =0x0000048C
	movs r1, #0
	str r1, [r5, r0]
	adds r0, r5, #0
	adds r0, #0x84
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	adds r0, r5, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r5, #0
	movs r1, #1
	bl ov84_02240B34
	add sp, #8
	movs r0, #0x10
	pop {r3, r4, r5, pc}
_0223E90E:
	movs r0, #0x14
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E914: .4byte 0x00000488
_0223E918: .4byte 0x00000426
_0223E91C: .4byte 0x0000048C
	thumb_func_end ov84_0223E7CC

	thumb_func_start ov84_0223E920
ov84_0223E920: @ 0x0223E920
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223E9A0 @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	beq _0223E934
	movs r0, #0x15
	pop {r4, pc}
_0223E934:
	ldr r0, _0223E9A4 @ =0x00000644
	bl FUN_02005748
	ldr r1, _0223E9A8 @ =0x00000488
	adds r0, r4, #0
	ldrsh r2, [r4, r1]
	adds r1, r1, #4
	adds r0, #0xcc
	ldr r1, [r4, r1]
	ldr r0, [r0]
	muls r1, r2, r1
	bl FUN_02025F94
	ldr r0, _0223E9A8 @ =0x00000488
	ldrsh r0, [r4, r0]
	cmp r0, #1
	bne _0223E974
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x75
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _0223E980
	adds r0, r1, #0
	adds r0, #0x75
	ldrb r0, [r0]
	adds r1, #0x75
	adds r0, r0, #1
	strb r0, [r1]
	b _0223E980
_0223E974:
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #2
	adds r0, #0x75
	strb r1, [r0]
_0223E980:
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240248
	ldr r0, _0223E9AC @ =0x00000479
	movs r1, #1
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov84_0223DCF8
	adds r4, #0x64
	adds r0, r4, #0
	bl FUN_0201A9A4
	movs r0, #0x16
	pop {r4, pc}
	.align 2, 0
_0223E9A0: .4byte 0x00000426
_0223E9A4: .4byte 0x00000644
_0223E9A8: .4byte 0x00000488
_0223E9AC: .4byte 0x00000479
	thumb_func_end ov84_0223E920

	thumb_func_start ov84_0223E9B0
ov84_0223E9B0: @ 0x0223E9B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223EA08 @ =0x00000426
	ldrb r0, [r4, r0]
	bl FUN_0201D724
	cmp r0, #0
	bne _0223EA04
	ldr r0, _0223EA0C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	bne _0223E9D2
	ldr r0, _0223EA10 @ =0x021BF6BC
	ldrh r0, [r0, #0x20]
	cmp r0, #0
	beq _0223EA04
_0223E9D2:
	ldr r0, _0223EA14 @ =0x00000479
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, #0x13
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x84
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240B34
	movs r0, #0x10
	pop {r4, pc}
_0223EA04:
	movs r0, #0x16
	pop {r4, pc}
	.align 2, 0
_0223EA08: .4byte 0x00000426
_0223EA0C: .4byte 0x021BF67C
_0223EA10: .4byte 0x021BF6BC
_0223EA14: .4byte 0x00000479
	thumb_func_end ov84_0223E9B0

	thumb_func_start ov84_0223EA18
ov84_0223EA18: @ 0x0223EA18
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl ov84_0223D0FC
	adds r0, r4, #0
	bl ov84_0223ED14
	cmp r0, #1
	bne _0223EA32
	add sp, #4
	movs r0, #0x17
	pop {r3, r4, pc}
_0223EA32:
	adds r0, r4, #0
	bl ov84_0223C750
	cmp r0, #1
	bne _0223EA42
	add sp, #4
	movs r0, #2
	pop {r3, r4, pc}
_0223EA42:
	adds r0, r4, #0
	bl ov84_0223CD40
	cmp r0, #1
	bne _0223EA52
	add sp, #4
	movs r0, #2
	pop {r3, r4, pc}
_0223EA52:
	adds r0, r4, #0
	bl ov84_0223C5B8
	cmp r0, #1
	bne _0223EAE4
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x64
	ldrb r2, [r1]
	movs r1, #0xc
	muls r1, r2, r1
	adds r1, r0, r1
	ldrb r1, [r1, #0xc]
	cmp r1, #0
	bne _0223EACC
	adds r0, #0x66
	ldrh r0, [r0]
	movs r1, #6
	adds r2, r1, #0
	bl FUN_0207CFF0
	cmp r0, #0xd
	beq _0223EACC
	movs r3, #6
	adds r2, r4, #0
	str r3, [sp]
	adds r2, #0xc4
	ldr r2, [r2]
	adds r0, r4, #0
	movs r1, #0xfe
	adds r2, #0x66
	adds r0, #0xcc
	lsls r1, r1, #2
	ldrh r2, [r2]
	ldr r0, [r0]
	ldr r1, [r4, r1]
	subs r3, r3, #7
	bl FUN_0207CD34
	adds r0, r4, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	ldr r2, _0223EB00 @ =0x000003D9
	adds r0, #0x64
	movs r1, #0
	movs r3, #0xc
	bl FUN_0200E060
	adds r0, r4, #0
	bl ov84_022400A0
	ldr r1, _0223EB04 @ =0x00000426
	add sp, #4
	strb r0, [r4, r1]
	movs r0, #0xc
	pop {r3, r4, pc}
_0223EACC:
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #0
	adds r0, #0x68
	strh r1, [r0]
	movs r0, #1
	movs r1, #6
	bl FUN_0208C120
	add sp, #4
	movs r0, #0x18
	pop {r3, r4, pc}
_0223EAE4:
	cmp r0, #3
	bne _0223EAF8
	adds r4, #0xc4
	ldr r0, [r4]
	movs r1, #5
	adds r0, #0x68
	strh r1, [r0]
	add sp, #4
	movs r0, #0x18
	pop {r3, r4, pc}
_0223EAF8:
	movs r0, #0x17
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223EB00: .4byte 0x000003D9
_0223EB04: .4byte 0x00000426
	thumb_func_end ov84_0223EA18

	thumb_func_start ov84_0223EB08
ov84_0223EB08: @ 0x0223EB08
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	adds r5, r1, #0
	movs r1, #7
	bl FUN_02019FFC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r5
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	movs r0, #0x5a
	lsls r0, r0, #2
	cmp r5, r0
	blt _0223EB30
	subs r0, r5, r0
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	b _0223EB3A
_0223EB30:
	cmp r5, #0
	bge _0223EB3A
	adds r0, r5, r0
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
_0223EB3A:
	lsls r3, r5, #0x10
	ldr r0, [r4]
	movs r1, #7
	movs r2, #0
	lsrs r3, r3, #0x10
	bl FUN_0201C660
	ldr r0, _0223EB50 @ =0x0000049A
	strh r5, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0223EB50: .4byte 0x0000049A
	thumb_func_end ov84_0223EB08

	thumb_func_start ov84_0223EB54
ov84_0223EB54: @ 0x0223EB54
	push {r3, lr}
	ldr r0, _0223EB68 @ =0x02240EA8
	bl FUN_020226DC
	cmp r0, #1
	bne _0223EB64
	movs r0, #1
	pop {r3, pc}
_0223EB64:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_0223EB68: .4byte 0x02240EA8
	thumb_func_end ov84_0223EB54

	thumb_func_start ov84_0223EB6C
ov84_0223EB6C: @ 0x0223EB6C
	push {r3, lr}
	ldr r0, _0223EB80 @ =0x02240EB4
	bl FUN_02022684
	cmp r0, #1
	bne _0223EB7C
	movs r0, #1
	pop {r3, pc}
_0223EB7C:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_0223EB80: .4byte 0x02240EB4
	thumb_func_end ov84_0223EB6C

	thumb_func_start ov84_0223EB84
ov84_0223EB84: @ 0x0223EB84
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl ov84_0223EB54
	cmp r0, #1
	bne _0223EBB2
	ldr r1, _0223ECF8 @ =0x00000492
	movs r0, #1
	strb r0, [r5, r1]
	movs r2, #0
	adds r0, r1, #6
	strh r2, [r5, r0]
	adds r0, r1, #2
	str r2, [r5, r0]
	adds r0, r1, #0
	ldr r2, _0223ECFC @ =0x021BF6BC
	adds r0, #0xc
	ldrh r3, [r2, #0x1c]
	adds r1, #0xe
	strh r3, [r5, r0]
	ldrh r0, [r2, #0x1e]
	strh r0, [r5, r1]
_0223EBB2:
	ldr r0, _0223ECF8 @ =0x00000492
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _0223EBBC
	b _0223ECF2
_0223EBBC:
	bl ov84_0223EB6C
	cmp r0, #1
	beq _0223EBC6
	b _0223ECE4
_0223EBC6:
	movs r3, #0x50
	ldr r1, _0223ED00 @ =0x0000049E
	str r3, [sp]
	ldr r4, _0223ECFC @ =0x021BF6BC
	ldrh r0, [r5, r1]
	adds r1, r1, #2
	ldrh r1, [r5, r1]
	ldrh r2, [r4, #0x1c]
	movs r7, #0x80
	ldrh r4, [r4, #0x1e]
	subs r1, r3, r1
	subs r0, r7, r0
	subs r2, r7, r2
	subs r3, r3, r4
	bl FUN_0201D4CC
	adds r4, r0, #0
	movs r0, #0x50
	lsls r1, r4, #1
	bl FUN_0201D580
	lsls r0, r0, #8
	movs r1, #0xb6
	blx FUN_020E1F6C
	ldr r1, _0223ED04 @ =0x0000049A
	asrs r3, r0, #8
	ldrsh r2, [r5, r1]
	adds r0, r5, r1
	adds r2, r2, r3
	strh r2, [r0]
	ldrsh r1, [r5, r1]
	cmp r1, #0
	bge _0223EC18
	movs r1, #0
	ldrsh r2, [r0, r1]
	adds r1, r7, #0
	adds r1, #0xe8
	adds r1, r2, r1
	strh r1, [r0]
	b _0223EC28
_0223EC18:
	adds r2, r7, #0
	adds r2, #0xe8
	cmp r1, r2
	blt _0223EC28
	movs r1, #0
	ldrsh r1, [r0, r1]
	subs r1, r1, r2
	strh r1, [r0]
_0223EC28:
	ldr r3, _0223ED04 @ =0x0000049A
	ldr r0, [r5]
	ldrh r3, [r5, r3]
	movs r1, #7
	movs r2, #0
	bl FUN_0201C660
	ldr r0, _0223ED08 @ =0x000001F6
	adds r1, r6, #0
	blx FUN_020E1F6C
	adds r6, r0, #0
	cmp r4, #0
	ble _0223EC8C
	ldr r0, _0223ED0C @ =0x00000498
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0223EC66
	adds r0, r4, #0
	adds r1, r6, #0
	blx FUN_020E1F6C
	ldr r1, _0223ED0C @ =0x00000498
	strh r0, [r5, r1]
	adds r0, r4, #0
	adds r1, r6, #0
	blx FUN_020E1F6C
	ldr r0, _0223ED10 @ =0x00000494
	str r1, [r5, r0]
	b _0223ECD4
_0223EC66:
	subs r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	adds r0, r0, r4
	blx FUN_020E1F6C
	ldr r1, _0223ED0C @ =0x00000498
	ldrsh r2, [r5, r1]
	adds r0, r2, r0
	strh r0, [r5, r1]
	subs r0, r1, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	adds r0, r0, r4
	blx FUN_020E1F6C
	ldr r0, _0223ED10 @ =0x00000494
	str r1, [r5, r0]
	b _0223ECD4
_0223EC8C:
	bge _0223ECD4
	ldr r0, _0223ED0C @ =0x00000498
	ldrsh r1, [r5, r0]
	cmp r1, #0
	ble _0223ECB0
	adds r0, r4, #0
	adds r1, r6, #0
	blx FUN_020E1F6C
	ldr r1, _0223ED0C @ =0x00000498
	strh r0, [r5, r1]
	adds r0, r4, #0
	adds r1, r6, #0
	blx FUN_020E1F6C
	ldr r0, _0223ED10 @ =0x00000494
	str r1, [r5, r0]
	b _0223ECD4
_0223ECB0:
	subs r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	adds r0, r0, r4
	blx FUN_020E1F6C
	ldr r1, _0223ED0C @ =0x00000498
	ldrsh r2, [r5, r1]
	adds r0, r2, r0
	strh r0, [r5, r1]
	subs r0, r1, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	adds r0, r0, r4
	blx FUN_020E1F6C
	ldr r0, _0223ED10 @ =0x00000494
	str r1, [r5, r0]
_0223ECD4:
	ldr r1, _0223ECFC @ =0x021BF6BC
	ldr r0, _0223ED00 @ =0x0000049E
	ldrh r2, [r1, #0x1c]
	strh r2, [r5, r0]
	ldrh r1, [r1, #0x1e]
	adds r0, r0, #2
	strh r1, [r5, r0]
	b _0223ECEE
_0223ECE4:
	ldr r0, _0223ECF8 @ =0x00000492
	movs r1, #0
	strb r1, [r5, r0]
	adds r0, r0, #6
	strh r1, [r5, r0]
_0223ECEE:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223ECF2:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223ECF8: .4byte 0x00000492
_0223ECFC: .4byte 0x021BF6BC
_0223ED00: .4byte 0x0000049E
_0223ED04: .4byte 0x0000049A
_0223ED08: .4byte 0x000001F6
_0223ED0C: .4byte 0x00000498
_0223ED10: .4byte 0x00000494
	thumb_func_end ov84_0223EB84

	thumb_func_start ov84_0223ED14
ov84_0223ED14: @ 0x0223ED14
	push {r4, lr}
	movs r1, #0x24
	adds r4, r0, #0
	bl ov84_0223EB84
	ldr r1, _0223ED60 @ =0x00000498
	ldrsh r1, [r4, r1]
	cmp r1, #0
	ble _0223ED42
	adds r0, r4, #0
	movs r1, #0x40
	bl ov84_0223ED64
	cmp r0, #1
	ldr r0, _0223ED60 @ =0x00000498
	bne _0223ED3A
	ldrsh r1, [r4, r0]
	subs r1, r1, #1
	b _0223ED3C
_0223ED3A:
	movs r1, #0
_0223ED3C:
	strh r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_0223ED42:
	bge _0223ED5E
	adds r0, r4, #0
	movs r1, #0x80
	bl ov84_0223ED64
	cmp r0, #1
	ldr r0, _0223ED60 @ =0x00000498
	bne _0223ED58
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	b _0223ED5A
_0223ED58:
	movs r1, #0
_0223ED5A:
	strh r1, [r4, r0]
	movs r0, #1
_0223ED5E:
	pop {r4, pc}
	.align 2, 0
_0223ED60: .4byte 0x00000498
	thumb_func_end ov84_0223ED14

	thumb_func_start ov84_0223ED64
ov84_0223ED64: @ 0x0223ED64
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r3, [r0]
	movs r5, #0xc
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r0, [r0]
	adds r2, r0, #0
	muls r2, r5, r2
	adds r0, r3, r2
	ldrh r0, [r0, #0xa]
	add r3, sp, #0x10
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x64
	ldrb r2, [r2]
	muls r5, r2, r5
	adds r0, r0, r5
	ldrh r0, [r0, #8]
	strh r0, [r3]
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	str r1, [sp, #4]
	adds r0, #2
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x57
	lsls r0, r0, #2
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001408
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x64
	ldrb r2, [r1]
	movs r1, #0xc
	adds r5, r2, #0
	muls r5, r1, r5
	add r1, sp, #0x10
	adds r2, r0, r5
	ldrh r3, [r1, #2]
	ldrh r0, [r2, #0xa]
	cmp r3, r0
	bne _0223EDE2
	ldrh r1, [r1]
	ldrh r0, [r2, #8]
	cmp r1, r0
	bne _0223EDE2
	add sp, #0x14
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0223EDE2:
	add r2, sp, #0x10
	ldrh r2, [r2]
	adds r0, r4, #0
	adds r0, #0xf0
	subs r2, r2, #1
	lsls r2, r2, #4
	adds r2, #0x18
	lsls r2, r2, #0x10
	ldr r0, [r0]
	movs r1, #0xb1
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r6, [r0]
	add r2, sp, #0x10
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r0, [r0]
	ldrh r5, [r2, #2]
	movs r1, #0xc
	adds r3, r0, #0
	muls r3, r1, r3
	adds r0, r6, r3
	strh r5, [r0, #0xa]
	adds r4, #0xc4
	ldr r3, [r4]
	ldrh r2, [r2]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r0, [r0]
	muls r1, r0, r1
	adds r0, r3, r1
	strh r2, [r0, #8]
	movs r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov84_0223ED64

	thumb_func_start ov84_0223EE30
ov84_0223EE30: @ 0x0223EE30
	push {r4, lr}
	movs r1, #0x24
	adds r4, r0, #0
	bl ov84_0223EB84
	ldr r1, _0223EE7C @ =0x00000498
	ldrsh r1, [r4, r1]
	cmp r1, #0
	ble _0223EE5E
	adds r0, r4, #0
	movs r1, #0x40
	bl ov84_0223EE80
	cmp r0, #1
	ldr r0, _0223EE7C @ =0x00000498
	bne _0223EE56
	ldrsh r1, [r4, r0]
	subs r1, r1, #1
	b _0223EE58
_0223EE56:
	movs r1, #0
_0223EE58:
	strh r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_0223EE5E:
	bge _0223EE7A
	adds r0, r4, #0
	movs r1, #0x80
	bl ov84_0223EE80
	cmp r0, #1
	ldr r0, _0223EE7C @ =0x00000498
	bne _0223EE74
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	b _0223EE76
_0223EE74:
	movs r1, #0
_0223EE76:
	strh r1, [r4, r0]
	movs r0, #1
_0223EE7A:
	pop {r4, pc}
	.align 2, 0
_0223EE7C: .4byte 0x00000498
	thumb_func_end ov84_0223EE30

	thumb_func_start ov84_0223EE80
ov84_0223EE80: @ 0x0223EE80
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r4, r0, #0
	adds r0, #0xc4
	ldr r3, [r0]
	movs r5, #0xc
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r0, [r0]
	adds r2, r0, #0
	muls r2, r5, r2
	adds r0, r3, r2
	ldrh r0, [r0, #0xa]
	add r3, sp, #0x10
	strh r0, [r3, #2]
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0x64
	ldrb r2, [r2]
	muls r5, r2, r5
	adds r0, r0, r5
	ldrh r0, [r0, #8]
	strh r0, [r3]
	movs r0, #1
	str r0, [sp]
	add r0, sp, #0x10
	str r1, [sp, #4]
	adds r0, #2
	str r0, [sp, #8]
	add r0, sp, #0x10
	str r0, [sp, #0xc]
	movs r0, #0x57
	lsls r0, r0, #2
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001408
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x64
	ldrb r2, [r1]
	movs r1, #0xc
	adds r5, r2, #0
	muls r5, r1, r5
	add r1, sp, #0x10
	adds r2, r0, r5
	ldrh r3, [r1, #2]
	ldrh r0, [r2, #0xa]
	cmp r3, r0
	bne _0223EEFE
	ldrh r1, [r1]
	ldrh r0, [r2, #8]
	cmp r1, r0
	bne _0223EEFE
	add sp, #0x14
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0223EEFE:
	add r2, sp, #0x10
	ldrh r2, [r2]
	adds r0, r4, #0
	adds r0, #0xf4
	subs r2, r2, #1
	lsls r2, r2, #4
	adds r2, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r0]
	movs r1, #0xb1
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r6, [r0]
	add r2, sp, #0x10
	adds r0, r6, #0
	adds r0, #0x64
	ldrb r0, [r0]
	ldrh r5, [r2, #2]
	movs r1, #0xc
	adds r3, r0, #0
	muls r3, r1, r3
	adds r0, r6, r3
	strh r5, [r0, #0xa]
	adds r4, #0xc4
	ldr r3, [r4]
	ldrh r2, [r2]
	adds r0, r3, #0
	adds r0, #0x64
	ldrb r0, [r0]
	muls r1, r0, r1
	adds r0, r3, r1
	strh r2, [r0, #8]
	movs r0, #1
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov84_0223EE80

	thumb_func_start ov84_0223EF4C
ov84_0223EF4C: @ 0x0223EF4C
	push {r4, lr}
	movs r1, #0x12
	adds r4, r0, #0
	bl ov84_0223EB84
	ldr r1, _0223EF98 @ =0x00000498
	ldrsh r1, [r4, r1]
	cmp r1, #0
	ble _0223EF7A
	adds r0, r4, #0
	movs r1, #2
	bl ov84_0223EF9C
	cmp r0, #1
	ldr r0, _0223EF98 @ =0x00000498
	bne _0223EF72
	ldrsh r1, [r4, r0]
	subs r1, r1, #1
	b _0223EF74
_0223EF72:
	movs r1, #0
_0223EF74:
	strh r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_0223EF7A:
	bge _0223EF96
	adds r0, r4, #0
	movs r1, #3
	bl ov84_0223EF9C
	cmp r0, #1
	ldr r0, _0223EF98 @ =0x00000498
	bne _0223EF90
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	b _0223EF92
_0223EF90:
	movs r1, #0
_0223EF92:
	strh r1, [r4, r0]
	movs r0, #1
_0223EF96:
	pop {r4, pc}
	.align 2, 0
_0223EF98: .4byte 0x00000498
	thumb_func_end ov84_0223EF4C

	thumb_func_start ov84_0223EF9C
ov84_0223EF9C: @ 0x0223EF9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r6, r1, #0
	bl FUN_02001DC4
	adds r4, r0, #0
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_02001D44
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02001DC4
	cmp r4, r0
	beq _0223EFCC
	movs r0, #1
	pop {r4, r5, r6, pc}
_0223EFCC:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_0223EF9C

	thumb_func_start ov84_0223EFD0
ov84_0223EFD0: @ 0x0223EFD0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r1, #0x12
	adds r5, r0, #0
	adds r6, r2, #0
	bl ov84_0223EB84
	ldr r7, _0223F038 @ =0x00000498
	movs r1, #0
	ldrsh r2, [r5, r7]
	ldrsh r3, [r4, r1]
	cmp r2, #0
	ble _0223F010
	subs r0, r2, #1
	strh r0, [r5, r7]
	ldrsh r0, [r4, r1]
	adds r0, r0, #1
	strh r0, [r4]
	ldrsh r0, [r4, r1]
	cmp r0, r6
	ble _0223EFFE
	movs r0, #1
	strh r0, [r4]
_0223EFFE:
	movs r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, r3
	beq _0223F034
	ldr r0, _0223F03C @ =0x00000638
	bl FUN_02005748
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223F010:
	bge _0223F034
	adds r0, r2, #1
	strh r0, [r5, r7]
	ldrsh r0, [r4, r1]
	subs r0, r0, #1
	strh r0, [r4]
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt _0223F024
	strh r6, [r4]
_0223F024:
	movs r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, r3
	beq _0223F034
	ldr r0, _0223F03C @ =0x00000638
	bl FUN_02005748
	movs r0, #1
_0223F034:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F038: .4byte 0x00000498
_0223F03C: .4byte 0x00000638
	thumb_func_end ov84_0223EFD0

	thumb_func_start ov84_0223F040
ov84_0223F040: @ 0x0223F040
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x11
	str r0, [sp, #4]
	movs r0, #0x12
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, r4, #4
	movs r2, #2
	movs r3, #0xe
	bl FUN_0201A7E8
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #6
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1BC @ =0x00000133
	adds r1, r4, #0
	str r0, [sp, #0x10]
	movs r2, #0
	ldr r0, [r4]
	adds r1, #0x14
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0x24
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _0223F1C0 @ =0x000001F3
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x24
	movs r2, #2
	movs r3, #0
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0xe
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1C4 @ =0x0000025F
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x34
	movs r2, #0
	movs r3, #6
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0xd
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1C4 @ =0x0000025F
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x44
	movs r2, #0
	movs r3, #6
	bl FUN_0201A7E8
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _0223F1C8 @ =0x00000297
	adds r1, r4, #0
	str r0, [sp, #0x10]
	movs r2, #0
	ldr r0, [r4]
	adds r1, #0x54
	adds r3, r2, #0
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xb
	str r0, [sp, #0xc]
	ldr r0, _0223F1CC @ =0x000002AF
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x64
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D0 @ =0x00000337
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x74
	movs r2, #0
	movs r3, #0x13
	bl FUN_0201A7E8
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D4 @ =0x00000367
	adds r1, #0x84
	str r0, [sp, #0x10]
	ldr r0, [r4]
	movs r2, #0
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D8 @ =0x00000387
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r1, #0x94
	movs r2, #0
	movs r3, #0x18
	bl FUN_0201A7E8
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223F1D8 @ =0x00000387
	movs r2, #0
	str r0, [sp, #0x10]
	ldr r0, [r4]
	adds r4, #0xa4
	adds r1, r4, #0
	movs r3, #1
	bl FUN_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	nop
_0223F1BC: .4byte 0x00000133
_0223F1C0: .4byte 0x000001F3
_0223F1C4: .4byte 0x0000025F
_0223F1C8: .4byte 0x00000297
_0223F1CC: .4byte 0x000002AF
_0223F1D0: .4byte 0x00000337
_0223F1D4: .4byte 0x00000367
_0223F1D8: .4byte 0x00000387
	thumb_func_end ov84_0223F040

	thumb_func_start ov84_0223F1DC
ov84_0223F1DC: @ 0x0223F1DC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0223F1E2:
	lsls r0, r4, #4
	adds r0, r5, r0
	bl FUN_0201A8FC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xb
	blo _0223F1E2
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov84_0223F1DC

	thumb_func_start ov84_0223F1F8
ov84_0223F1F8: @ 0x0223F1F8
	push {r3, r4, r5, r6, r7, lr}
	ldr r2, _0223F230 @ =0x0000018B
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0x1a
	movs r3, #6
	bl FUN_0200B144
	ldr r7, _0223F234 @ =0x00000404
	adds r6, r0, #0
	movs r4, #0
_0223F20E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0200B1EC
	lsls r1, r4, #2
	adds r1, r5, r1
	str r0, [r1, r7]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #8
	blo _0223F20E
	adds r0, r6, #0
	bl FUN_0200B190
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F230: .4byte 0x0000018B
_0223F234: .4byte 0x00000404
	thumb_func_end ov84_0223F1F8

	thumb_func_start ov84_0223F238
ov84_0223F238: @ 0x0223F238
	push {r4, r5, r6, lr}
	ldr r6, _0223F258 @ =0x00000404
	adds r5, r0, #0
	movs r4, #0
_0223F240:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_020237BC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #8
	blo _0223F240
	pop {r4, r5, r6, pc}
	nop
_0223F258: .4byte 0x00000404
	thumb_func_end ov84_0223F238

	thumb_func_start ov84_0223F25C
ov84_0223F25C: @ 0x0223F25C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r4, #0
	movs r6, #0xd
	movs r7, #1
_0223F268:
	str r6, [sp]
	ldr r2, _0223F2B8 @ =0x000001FF
	str r7, [sp, #4]
	adds r2, r4, r2
	lsls r2, r2, #0x10
	lsls r3, r4, #0x18
	str r7, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, [r5]
	movs r1, #2
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	movs r0, #0xe
	str r0, [sp]
	movs r0, #1
	ldr r2, _0223F2BC @ =0x00000223
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #3
	adds r2, r4, r2
	str r0, [sp, #0xc]
	lsls r2, r2, #0x10
	lsls r3, r4, #0x18
	ldr r0, [r5]
	movs r1, #2
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x18
	bl FUN_02019CB8
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xc
	blo _0223F268
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F2B8: .4byte 0x000001FF
_0223F2BC: .4byte 0x00000223
	thumb_func_end ov84_0223F25C

	thumb_func_start ov84_0223F2C0
ov84_0223F2C0: @ 0x0223F2C0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	adds r4, r2, #0
	adds r2, r0, #0
	adds r6, r1, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F2F8 @ =0x00010200
	lsrs r3, r3, #1
	adds r5, #0x24
	str r0, [sp, #8]
	movs r1, #0
	adds r0, r5, #0
	adds r2, r6, #0
	subs r3, r4, r3
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F2F8: .4byte 0x00010200
	thumb_func_end ov84_0223F2C0

	thumb_func_start ov84_0223F2FC
ov84_0223F2FC: @ 0x0223F2FC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x24
	movs r1, #0
	bl FUN_0201ADA4
	adds r2, r4, #0
	adds r2, #0xc4
	ldr r6, [r2]
	ldr r1, _0223F38C @ =0x00000429
	adds r2, r6, #0
	adds r2, #0x64
	ldrb r3, [r2]
	movs r2, #0xc
	adds r0, r4, r1
	adds r5, r3, #0
	muls r5, r2, r5
	adds r3, r6, r5
	ldrb r3, [r3, #0xc]
	lsls r3, r3, #2
	adds r5, r4, r3
	adds r3, r1, #0
	subs r3, #0x25
	ldr r7, [r5, r3]
	ldrb r3, [r0]
	subs r1, #0x25
	adds r5, r3, #0
	muls r5, r2, r5
	adds r3, r6, r5
	ldrb r3, [r3, #0xc]
	lsls r3, r3, #2
	adds r3, r4, r3
	ldr r1, [r3, r1]
	ldrb r3, [r0, #1]
	ldrb r0, [r0, #3]
	cmp r3, #0
	bne _0223F35E
	muls r2, r0, r2
	adds r2, #0x92
	lsls r0, r2, #0x10
	lsrs r5, r0, #0x10
	adds r2, r5, #0
	subs r2, #0x60
	lsls r2, r2, #0x10
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	bl ov84_0223F2C0
	b _0223F376
_0223F35E:
	muls r2, r0, r2
	movs r0, #0x92
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x60
	lsls r2, r2, #0x10
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	bl ov84_0223F2C0
_0223F376:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov84_0223F2C0
	adds r4, #0x24
	adds r0, r4, #0
	bl FUN_0201ACCC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F38C: .4byte 0x00000429
	thumb_func_end ov84_0223F2FC

	thumb_func_start ov84_0223F390
ov84_0223F390: @ 0x0223F390
	push {r3, r4, r5, lr}
	adds r0, #0xd4
	ldr r0, [r0]
	adds r5, r1, #0
	movs r1, #0x15
	movs r2, #6
	bl FUN_02006CB8
	adds r1, r5, #0
	adds r4, r0, #0
	blx FUN_020A7164
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F390

	thumb_func_start ov84_0223F3AC
ov84_0223F3AC: @ 0x0223F3AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	add r1, sp, #0x18
	adds r5, r0, #0
	adds r6, r2, #0
	bl ov84_0223F390
	adds r7, r0, #0
	cmp r6, #1
	bne _0223F3D8
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r1, [r0]
	movs r0, #0xc
	muls r0, r4, r0
	adds r0, r1, r0
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #5
	adds r0, #0x10
	lsls r0, r0, #0x18
	b _0223F3E8
_0223F3D8:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r1, [r0]
	movs r0, #0xc
	muls r0, r4, r0
	adds r0, r1, r0
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1d
_0223F3E8:
	lsrs r2, r0, #0x18
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x10
	ldr r1, _0223F434 @ =0x00000427
	str r0, [sp, #4]
	ldrb r0, [r5, r1]
	adds r1, r1, #1
	ldrb r1, [r5, r1]
	adds r3, r1, #0
	muls r3, r4, r3
	adds r0, r0, r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #0xa
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	ldr r1, [r1, #0x14]
	adds r0, #0x54
	movs r3, #0
	bl FUN_0201ADDC
	adds r5, #0x54
	adds r0, r5, #0
	bl FUN_0201A9A4
	movs r0, #6
	adds r1, r7, #0
	bl FUN_02018238
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223F434: .4byte 0x00000427
	thumb_func_end ov84_0223F3AC

	thumb_func_start ov84_0223F438
ov84_0223F438: @ 0x0223F438
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	add r1, sp, #0x1c
	bl ov84_0223F390
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r0, #0x54
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, _0223F4E0 @ =0x00000424
	movs r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bls _0223F4CC
	movs r7, #1
	adds r6, r5, #0
	lsls r7, r7, #8
	adds r6, #0x54
_0223F462:
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r1, r0, #0
	adds r1, #0x64
	ldrb r1, [r1]
	cmp r4, r1
	bne _0223F482
	movs r1, #0xc
	muls r1, r4, r1
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #5
	adds r0, #0x10
	lsls r0, r0, #0x18
	b _0223F48C
_0223F482:
	movs r1, #0xc
	muls r1, r4, r1
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	lsls r0, r0, #0x1d
_0223F48C:
	lsrs r2, r0, #0x18
	str r7, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0223F4E4 @ =0x00000427
	ldrb r3, [r5, r0]
	adds r0, r0, #1
	ldrb r0, [r5, r0]
	adds r1, r0, #0
	muls r1, r4, r1
	adds r0, r3, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #0xa
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	adds r0, r6, #0
	ldr r1, [r1, #0x14]
	movs r3, #0
	bl FUN_0201ADDC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0223F4E0 @ =0x00000424
	ldrb r0, [r5, r0]
	cmp r4, r0
	blo _0223F462
_0223F4CC:
	adds r5, #0x54
	adds r0, r5, #0
	bl FUN_0201A9A4
	ldr r1, [sp, #0x18]
	movs r0, #6
	bl FUN_02018238
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223F4E0: .4byte 0x00000424
_0223F4E4: .4byte 0x00000427
	thumb_func_end ov84_0223F438

	thumb_func_start ov84_0223F4E8
ov84_0223F4E8: @ 0x0223F4E8
	push {r3, r4, r5, lr}
	lsls r1, r1, #0x10
	adds r4, r2, #0
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r5, r0, #0
	bl ov84_0223BE5C
	adds r2, r0, #0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_0200B70C
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F4E8

	thumb_func_start ov84_0223F508
ov84_0223F508: @ 0x0223F508
	push {r3, r4, r5, lr}
	lsls r1, r1, #0x10
	adds r4, r2, #0
	lsrs r1, r1, #0x10
	movs r2, #0
	adds r5, r0, #0
	bl ov84_0223BE5C
	adds r2, r0, #0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_0200B77C
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F508

	thumb_func_start ov84_0223F528
ov84_0223F528: @ 0x0223F528
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _0223F57C @ =0x0000FFFF
	adds r6, r1, #0
	cmp r6, r0
	beq _0223F54A
	movs r0, #0x82
	movs r1, #6
	bl FUN_02023790
	adds r1, r6, #0
	movs r2, #6
	adds r4, r0, #0
	bl FUN_0207CFC8
	b _0223F558
_0223F54A:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x5e
	bl FUN_0200B1EC
	adds r4, r0, #0
_0223F558:
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F580 @ =0x000F0E00
	adds r5, #0x14
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #0x28
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223F57C: .4byte 0x0000FFFF
_0223F580: .4byte 0x000F0E00
	thumb_func_end ov84_0223F528

	thumb_func_start ov84_0223F584
ov84_0223F584: @ 0x0223F584
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r5, #0
	adds r0, r1, #0
	adds r4, #0x14
	bl FUN_0207D268
	str r0, [sp, #0x10]
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x62
	bl FUN_0200B1EC
	movs r1, #0
	adds r6, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 @ =0x000F0E00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x56
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 @ =0x000F0E00
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x59
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 @ =0x000F0E00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r3, #0x60
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x57
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 @ =0x000F0E00
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x60
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x58
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 @ =0x000F0E00
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x60
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x10]
	movs r1, #0
	bl FUN_020790DC
	adds r7, r0, #0
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x5a
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	adds r2, r7, #0
	movs r3, #2
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 @ =0x000F0E00
	movs r2, #0xfe
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r4, #0
	movs r3, #0x30
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	movs r1, #2
	bl FUN_020790C4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #1
	bhi _0223F6FA
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x18
	bl FUN_0200B1EC
	b _0223F706
_0223F6FA:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x5b
	bl FUN_0200B1EC
_0223F706:
	movs r1, #0
	adds r6, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r2, r7, #0
	movs r3, #3
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 @ =0x000F0E00
	movs r2, #0xfe
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r4, #0
	movs r3, #0xa0
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	movs r1, #4
	bl FUN_020790C4
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bne _0223F770
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x18
	bl FUN_0200B1EC
	b _0223F77C
_0223F770:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x5b
	bl FUN_0200B1EC
_0223F77C:
	movs r1, #0
	adds r6, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r2, r7, #0
	movs r3, #3
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F7D0 @ =0x000F0E00
	movs r2, #0xfe
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r4, #0
	movs r3, #0xa0
	bl FUN_0201D78C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223F7D0: .4byte 0x000F0E00
	thumb_func_end ov84_0223F584

	thumb_func_start ov84_0223F7D4
ov84_0223F7D4: @ 0x0223F7D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x26
	bl FUN_0200B1EC
	movs r1, #0xff
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x25
	bl FUN_0200B1EC
	movs r1, #1
	lsls r1, r1, #0xa
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223F7D4

	thumb_func_start ov84_0223F800
ov84_0223F800: @ 0x0223F800
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xff
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020237BC
	movs r0, #1
	lsls r0, r0, #0xa
	ldr r0, [r4, r0]
	bl FUN_020237BC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov84_0223F800

	thumb_func_start ov84_0223F81C
ov84_0223F81C: @ 0x0223F81C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	str r1, [sp, #0x10]
	adds r0, #0xc4
	ldr r0, [r0]
	adds r4, r2, #0
	adds r1, r0, #0
	adds r1, #0x64
	ldrb r2, [r1]
	movs r1, #0xc
	adds r6, r3, #0
	muls r1, r2, r1
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	str r4, [sp]
	bne _0223F858
	movs r2, #0xff
	str r2, [sp, #4]
	str r6, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r5, #4
	movs r3, #0x73
	bl FUN_0201D78C
	b _0223F86E
_0223F858:
	movs r2, #0xff
	str r2, [sp, #4]
	str r6, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r5, #4
	movs r3, #0x6d
	bl FUN_0201D78C
_0223F86E:
	movs r0, #0xa
	movs r1, #6
	bl FUN_02023790
	movs r1, #0
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x10]
	movs r3, #3
	bl FUN_0200B60C
	movs r0, #0x46
	movs r2, #1
	lsls r0, r0, #2
	lsls r2, r2, #0xa
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	adds r1, r7, #0
	bl FUN_0200C388
	movs r0, #0
	adds r1, r7, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r4, #0x86
	str r6, [sp, #8]
	movs r1, #0
	adds r0, r5, #4
	adds r2, r7, #0
	subs r3, r4, r3
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov84_0223F81C

	thumb_func_start ov84_0223F8D0
ov84_0223F8D0: @ 0x0223F8D0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	adds r4, r2, #0
	adds r5, r0, #0
	movs r0, #0x69
	ldrh r2, [r6]
	lsls r0, r0, #2
	cmp r2, r0
	bhs _0223F91A
	adds r1, r0, #0
	subs r1, #0x5d
	subs r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	movs r1, #2
	str r1, [sp]
	adds r3, r5, #4
	str r3, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	adds r3, r4, #5
	str r3, [sp, #0xc]
	subs r0, #0x94
	ldr r0, [r5, r0]
	adds r3, r1, #0
	bl FUN_0200C648
	lsls r2, r4, #0x10
	ldrh r1, [r6, #2]
	ldr r3, _0223F948 @ =0x00010200
	adds r0, r5, #0
	lsrs r2, r2, #0x10
	bl ov84_0223F81C
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0223F91A:
	subs r1, r0, #1
	subs r1, r2, r1
	adds r2, r5, #4
	str r2, [sp]
	movs r2, #0x10
	str r2, [sp, #4]
	adds r2, r4, #5
	str r2, [sp, #8]
	subs r0, #0x94
	lsls r1, r1, #0x10
	ldr r0, [r5, r0]
	lsrs r1, r1, #0x10
	movs r2, #2
	movs r3, #1
	bl FUN_0200C5BC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov84_0223F9B0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F948: .4byte 0x00010200
	thumb_func_end ov84_0223F8D0

	thumb_func_start ov84_0223F94C
ov84_0223F94C: @ 0x0223F94C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	adds r6, r2, #0
	bl FUN_0207D344
	movs r1, #2
	adds r2, r0, #0
	str r1, [sp]
	adds r0, r5, #4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r6, #5
	str r0, [sp, #0xc]
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r2, r2, #1
	adds r3, r1, #0
	bl FUN_0200C648
	lsls r2, r6, #0x10
	ldrh r1, [r4, #2]
	ldr r3, _0223F990 @ =0x00010200
	adds r0, r5, #0
	lsrs r2, r2, #0x10
	bl ov84_0223F81C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F990: .4byte 0x00010200
	thumb_func_end ov84_0223F94C

	thumb_func_start ov84_0223F994
ov84_0223F994: @ 0x0223F994
	push {r3, r4, r5, lr}
	adds r0, #0xd4
	ldr r0, [r0]
	adds r5, r1, #0
	movs r1, #0x26
	movs r2, #6
	bl FUN_02006CB8
	adds r1, r5, #0
	adds r4, r0, #0
	blx FUN_020A7164
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov84_0223F994

	thumb_func_start ov84_0223F9B0
ov84_0223F9B0: @ 0x0223F9B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	add r1, sp, #0x18
	adds r5, r0, #0
	bl ov84_0223F994
	adds r6, r0, #0
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x10
	lsls r1, r4, #0x10
	str r0, [sp, #4]
	movs r3, #0
	str r3, [sp, #8]
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #0x18
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r0, r5, #4
	ldr r1, [r1, #0x14]
	movs r2, #0x28
	bl FUN_0201ADDC
	movs r0, #6
	adds r1, r6, #0
	bl FUN_02018238
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov84_0223F9B0

	thumb_func_start ov84_0223F9F0
ov84_0223F9F0: @ 0x0223F9F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x45
	lsls r0, r0, #2
	adds r4, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0x29
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0x88
	str r0, [sp]
	movs r0, #0x10
	movs r1, #0
	lsls r3, r4, #0x10
	str r0, [sp, #4]
	adds r0, r5, #4
	adds r2, r1, #0
	lsrs r3, r3, #0x10
	bl FUN_0201AE78
	movs r1, #0
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223FA40 @ =0x00010200
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #4
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223FA40: .4byte 0x00010200
	thumb_func_end ov84_0223F9F0

	thumb_func_start ov84_0223FA44
ov84_0223FA44: @ 0x0223FA44
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	add r1, sp, #0x18
	adds r5, r0, #0
	bl ov84_0223F994
	adds r6, r0, #0
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x10
	movs r2, #0
	str r0, [sp, #4]
	movs r1, #0x60
	str r1, [sp, #8]
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0xc]
	movs r1, #0x28
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	adds r0, r5, #4
	ldr r1, [r1, #0x14]
	adds r3, r2, #0
	bl FUN_0201ADDC
	movs r0, #6
	adds r1, r6, #0
	bl FUN_02018238
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov84_0223FA44

	thumb_func_start ov84_0223FA88
ov84_0223FA88: @ 0x0223FA88
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200B1EC
	movs r1, #0x49
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x10
	ldr r0, [r4, r1]
	movs r1, #6
	bl FUN_0200B1EC
	movs r1, #0x4a
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x14
	ldr r0, [r4, r1]
	movs r1, #0x10
	bl FUN_0200B1EC
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x18
	ldr r0, [r4, r1]
	movs r1, #0x5f
	bl FUN_0200B1EC
	movs r1, #0x13
	lsls r1, r1, #4
	str r0, [r4, r1]
	subs r1, #0x1c
	ldr r0, [r4, r1]
	movs r1, #0x60
	bl FUN_0200B1EC
	movs r1, #0x4d
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x20
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_0200B1EC
	movs r1, #0x4e
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x24
	ldr r0, [r4, r1]
	movs r1, #2
	bl FUN_0200B1EC
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x28
	ldr r0, [r4, r1]
	movs r1, #0x12
	bl FUN_0200B1EC
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r4, r1]
	subs r1, #0x2c
	ldr r0, [r4, r1]
	movs r1, #3
	bl FUN_0200B1EC
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x30
	ldr r0, [r4, r1]
	movs r1, #4
	bl FUN_0200B1EC
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x34
	ldr r0, [r4, r1]
	movs r1, #5
	bl FUN_0200B1EC
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x38
	ldr r0, [r4, r1]
	movs r1, #8
	bl FUN_0200B1EC
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov84_0223FA88

	thumb_func_start ov84_0223FB50
ov84_0223FB50: @ 0x0223FB50
	push {r4, r5, r6, lr}
	movs r6, #0x49
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_0223FB5A:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_020237BC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0xc
	blo _0223FB5A
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_0223FB50

	thumb_func_start ov84_0223FB70
ov84_0223FB70: @ 0x0223FB70
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r6, r1, #0
	adds r1, r0, #0
	adds r1, #0x64
	adds r7, r2, #0
	ldrb r2, [r1]
	movs r1, #0xc
	muls r1, r2, r1
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _0223FBC0
	lsls r0, r7, #1
	movs r3, #0x17
	subs r1, r3, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #8
	lsls r0, r0, #0x18
	str r1, [sp, #4]
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223FD78 @ =0x00000337
	adds r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, #0xb4
	movs r2, #0
	bl FUN_0201A7E8
	movs r0, #4
	str r0, [sp, #0x14]
	b _0223FBF0
_0223FBC0:
	lsls r0, r7, #1
	movs r1, #0x17
	subs r1, r1, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #7
	lsls r0, r0, #0x18
	str r1, [sp, #4]
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	ldr r0, _0223FD78 @ =0x00000337
	adds r1, r5, #0
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, #0xb4
	movs r2, #0
	movs r3, #0x18
	bl FUN_0201A7E8
	movs r0, #3
	str r0, [sp, #0x14]
_0223FBF0:
	adds r0, r7, #0
	movs r1, #6
	bl FUN_02013A04
	movs r1, #0x55
	lsls r1, r1, #2
	movs r4, #0
	str r0, [r5, r1]
	cmp r7, #0
	ble _0223FC2C
_0223FC04:
	ldrb r0, [r6, r4]
	bl ov84_0223D84C
	ldrb r1, [r6, r4]
	adds r2, r0, #0
	movs r0, #0x55
	lsls r1, r1, #2
	adds r3, r5, r1
	movs r1, #0x49
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r3, r1]
	bl FUN_02013A6C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r7
	blt _0223FC04
_0223FC2C:
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	adds r0, #0xb4
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	strb r1, [r0, #8]
	movs r1, #1
	strb r1, [r0, #9]
	strb r7, [r0, #0xa]
	ldrb r2, [r0, #0xb]
	movs r1, #0xf
	bics r2, r1
	strb r2, [r0, #0xb]
	ldrb r2, [r0, #0xb]
	movs r1, #0x30
	bics r2, r1
	strb r2, [r0, #0xb]
	cmp r7, #4
	ldrb r2, [r0, #0xb]
	blo _0223FC68
	movs r1, #0xc0
	bics r2, r1
	movs r1, #0x40
	orrs r1, r2
	strb r1, [r0, #0xb]
	b _0223FC6E
_0223FC68:
	movs r1, #0xc0
	bics r2, r1
	strb r2, [r0, #0xb]
_0223FC6E:
	movs r0, #6
	str r0, [sp]
	movs r0, #2
	movs r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x1c
	movs r1, #8
	adds r3, r2, #0
	bl FUN_02001AF4
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r2, [r0]
	movs r3, #0xc
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r0, [r0]
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r2, r1
	ldrb r0, [r0, #0xc]
	cmp r0, #3
	bne _0223FCD8
	adds r0, r5, #0
	adds r0, #0x14
	movs r1, #0
	bl FUN_0201ADA4
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, r5, #0
	adds r1, #0x66
	ldrh r1, [r1]
	bl ov84_0223F584
	adds r0, r5, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, r5, #0
	adds r1, #0x66
	ldrh r1, [r1]
	movs r2, #1
	bl ov84_02240D5C
	b _0223FD5E
_0223FCD8:
	ldr r0, [sp, #0x14]
	adds r4, r5, #4
	lsls r6, r0, #4
	ldr r2, _0223FD7C @ =0x000003D9
	adds r0, r4, r6
	movs r1, #1
	bl FUN_0200E060
	adds r0, r4, r6
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x2a
	bl FUN_0200B1EC
	str r0, [sp, #0x18]
	movs r0, #0x38
	movs r1, #6
	bl FUN_02023790
	adds r7, r0, #0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r1, [r0]
	adds r0, r1, #4
	adds r1, #0x64
	ldrb r2, [r1]
	movs r1, #0xc
	muls r1, r2, r1
	adds r1, r0, r1
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	adds r0, r5, #0
	adds r1, r2, r1
	subs r1, r1, #1
	movs r2, #0
	bl ov84_0223F4E8
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [sp, #0x18]
	adds r1, r7, #0
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, r6
	movs r1, #1
	adds r2, r7, #0
	str r3, [sp, #8]
	bl FUN_0201D738
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	adds r0, r4, r6
	bl FUN_0201A9A4
_0223FD5E:
	adds r0, r5, #0
	ldr r2, _0223FD80 @ =0x000003F7
	adds r0, #0xb4
	movs r1, #1
	movs r3, #0xe
	bl FUN_0200DC48
	adds r5, #0xb4
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223FD78: .4byte 0x00000337
_0223FD7C: .4byte 0x000003D9
_0223FD80: .4byte 0x000003F7
	thumb_func_end ov84_0223FB70

	thumb_func_start ov84_0223FD84
ov84_0223FD84: @ 0x0223FD84
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xc4
	ldr r2, [r0]
	adds r0, r2, #0
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r0, r2, r0
	ldrb r0, [r0, #0xc]
	cmp r0, #4
	bne _0223FDA2
	movs r1, #4
	b _0223FDA4
_0223FDA2:
	movs r1, #3
_0223FDA4:
	cmp r0, #3
	beq _0223FDBA
	lsls r6, r1, #4
	adds r4, r5, #4
	adds r0, r4, r6
	movs r1, #1
	bl FUN_0200E084
	adds r0, r4, r6
	bl FUN_0201AD10
_0223FDBA:
	adds r0, r5, #0
	adds r0, #0xb4
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r5, #0
	adds r0, #0xb4
	bl FUN_0201AD10
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02001BC4
	movs r0, #0x55
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013A3C
	adds r0, r5, #0
	adds r0, #0xb4
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r0, #0x14
	movs r1, #0
	bl FUN_0201ADA4
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, r5, #0
	adds r1, #0x66
	ldrh r1, [r1]
	bl ov84_0223F528
	adds r0, r5, #0
	adds r0, #0x14
	bl FUN_0201A9A4
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov84_02240D5C
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_0223FD84

	thumb_func_start ov84_0223FE18
ov84_0223FE18: @ 0x0223FE18
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r0, #0x14
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x2d
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0x82
	movs r1, #6
	bl FUN_02023790
	ldr r1, _0223FE8C @ =0x0000047B
	adds r4, r0, #0
	ldrb r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #0
	subs r1, r1, #1
	bl ov84_0223F4E8
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223FE90 @ =0x000F0E00
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0x14
	movs r3, #0x28
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r5, #0x14
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223FE8C: .4byte 0x0000047B
_0223FE90: .4byte 0x000F0E00
	thumb_func_end ov84_0223FE18

	thumb_func_start ov84_0223FE94
ov84_0223FE94: @ 0x0223FE94
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r2, _0223FF3C @ =0x000003F7
	adds r5, r0, #0
	adds r0, #0x94
	movs r1, #1
	movs r3, #0xe
	bl FUN_0200DC48
	adds r0, r5, #0
	bl ov84_0223FF44
	adds r0, r5, #0
	ldr r2, _0223FF40 @ =0x000003D9
	adds r0, #0x34
	movs r1, #1
	movs r3, #0xc
	bl FUN_0200E060
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x34
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #0x38
	movs r1, #6
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r2, r0
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	adds r0, r5, #0
	adds r1, r2, r1
	subs r1, r1, #1
	movs r2, #0
	bl ov84_0223F4E8
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200C388
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #1
	adds r2, r4, #0
	str r3, [sp, #8]
	bl FUN_0201D738
	adds r5, #0x34
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223FF3C: .4byte 0x000003F7
_0223FF40: .4byte 0x000003D9
	thumb_func_end ov84_0223FE94

	thumb_func_start ov84_0223FF44
ov84_0223FF44: @ 0x0223FF44
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x94
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x54
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, _0223FFBC @ =0x00000488
	movs r0, #0x46
	lsls r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	movs r1, #0
	movs r3, #3
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	movs r0, #8
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0xfe
	str r1, [sp, #8]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r4, #0
	movs r3, #0x10
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0223FFBC: .4byte 0x00000488
	thumb_func_end ov84_0223FF44

	thumb_func_start ov84_0223FFC0
ov84_0223FFC0: @ 0x0223FFC0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x34
	movs r1, #1
	bl FUN_0200E084
	adds r0, r4, #0
	adds r0, #0x94
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0x34
	bl FUN_0201AD10
	adds r0, r4, #0
	adds r0, #0x94
	bl FUN_0201AD10
	adds r4, #0x14
	adds r0, r4, #0
	bl FUN_0201A9A4
	pop {r4, pc}
	thumb_func_end ov84_0223FFC0

	thumb_func_start ov84_0223FFF0
ov84_0223FFF0: @ 0x0223FFF0
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r2, _02240094 @ =0x000003D9
	adds r5, r0, #0
	adds r0, #0x64
	movs r1, #1
	movs r3, #0xc
	bl FUN_0200E060
	adds r0, r5, #0
	adds r0, #0x64
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x36
	bl FUN_0200B1EC
	adds r4, r0, #0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r2, r0, #4
	adds r0, #0x64
	ldrb r1, [r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r2, r0
	ldr r0, _02240098 @ =0x00000488
	ldrsh r0, [r5, r0]
	cmp r0, #1
	bne _02240046
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	adds r0, r5, #0
	adds r1, r2, r1
	subs r1, r1, #1
	movs r2, #0
	bl ov84_0223F4E8
	b _02240056
_02240046:
	ldrh r2, [r1, #6]
	ldrh r1, [r1, #4]
	adds r0, r5, #0
	adds r1, r2, r1
	subs r1, r1, #1
	movs r2, #0
	bl ov84_0223F508
_02240056:
	movs r0, #0
	str r0, [sp]
	movs r1, #1
	movs r0, #0x46
	ldr r2, _02240098 @ =0x00000488
	str r1, [sp, #4]
	lsls r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	movs r3, #3
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl ov84_022400A0
	ldr r1, _0224009C @ =0x00000426
	strb r0, [r5, r1]
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02240094: .4byte 0x000003D9
_02240098: .4byte 0x00000488
_0224009C: .4byte 0x00000426
	thumb_func_end ov84_0223FFF0

	thumb_func_start ov84_022400A0
ov84_022400A0: @ 0x022400A0
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	bl FUN_02027AC0
	movs r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _022400DC @ =ov84_022400E0
	movs r2, #0xfe
	str r0, [sp, #8]
	lsls r2, r2, #2
	adds r0, r4, #0
	ldr r2, [r4, r2]
	adds r0, #0x64
	movs r1, #1
	bl FUN_0201D738
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_022400DC: .4byte ov84_022400E0
	thumb_func_end ov84_022400A0

	thumb_func_start ov84_022400E0
ov84_022400E0: @ 0x022400E0
	push {r3, lr}
	cmp r1, #4
	bhi _02240118
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022400F2: @ jump table
	.2byte _02240118 - _022400F2 - 2 @ case 0
	.2byte _022400FC - _022400F2 - 2 @ case 1
	.2byte _02240102 - _022400F2 - 2 @ case 2
	.2byte _02240108 - _022400F2 - 2 @ case 3
	.2byte _02240110 - _022400F2 - 2 @ case 4
_022400FC:
	bl FUN_020057E0
	pop {r3, pc}
_02240102:
	bl FUN_020061E4
	pop {r3, pc}
_02240108:
	ldr r0, _0224011C @ =0x0000060D
	bl FUN_02005748
	b _02240118
_02240110:
	ldr r0, _0224011C @ =0x0000060D
	bl FUN_020057D4
	pop {r3, pc}
_02240118:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_0224011C: .4byte 0x0000060D
	thumb_func_end ov84_022400E0

	thumb_func_start ov84_02240120
ov84_02240120: @ 0x02240120
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #6
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, _02240140 @ =0x02241150
	ldr r2, _02240144 @ =0x000003F7
	movs r3, #0xe
	bl FUN_02002100
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02240140: .4byte 0x02241150
_02240144: .4byte 0x000003F7
	thumb_func_end ov84_02240120

	thumb_func_start ov84_02240148
ov84_02240148: @ 0x02240148
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x74
	cmp r1, #0
	bne _02240162
	ldr r2, _0224023C @ =0x000003F7
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xe
	bl FUN_0200DC48
_02240162:
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x50
	bl FUN_0200B1EC
	movs r3, #2
	adds r6, r0, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r2, _02240240 @ =0x00000488
	movs r0, #0x46
	lsls r0, r0, #2
	ldrsh r2, [r5, r2]
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	movs r0, #8
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0xfe
	str r1, [sp, #8]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0201D738
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x51
	bl FUN_0200B1EC
	adds r6, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r2, _02240244 @ =0x0000048C
	movs r0, #0x46
	ldr r3, [r5, r2]
	subs r2, r2, #4
	ldrsh r2, [r5, r2]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	muls r2, r3, r2
	movs r1, #0
	movs r3, #6
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	movs r1, #0xfe
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #8
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0xfe
	str r1, [sp, #8]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	movs r5, #0x60
	adds r0, r4, #0
	subs r3, r5, r3
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0224023C: .4byte 0x000003F7
_02240240: .4byte 0x00000488
_02240244: .4byte 0x0000048C
	thumb_func_end ov84_02240148

	thumb_func_start ov84_02240248
ov84_02240248: @ 0x02240248
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x84
	cmp r1, #0
	bne _02240294
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r2, _02240324 @ =0x000003F7
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xe
	bl FUN_0200DC48
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x4e
	bl FUN_0200B1EC
	movs r1, #0
	adds r6, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r1, #0
	str r1, [sp, #8]
	bl FUN_0201D738
	adds r0, r6, #0
	bl FUN_020237BC
	b _022402A6
_02240294:
	movs r0, #0x50
	str r0, [sp]
	movs r3, #0x10
	adds r0, r4, #0
	movs r1, #0xf
	movs r2, #0
	str r3, [sp, #4]
	bl FUN_0201AE78
_022402A6:
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x4f
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	bl FUN_02025F74
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	movs r3, #6
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	movs r1, #0xfe
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0xfe
	str r1, [sp, #8]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	movs r5, #0x50
	adds r0, r4, #0
	subs r3, r5, r3
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02240324: .4byte 0x000003F7
	thumb_func_end ov84_02240248

	thumb_func_start ov84_02240328
ov84_02240328: @ 0x02240328
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xa4
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r2, _022403F0 @ =0x000003F7
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xe
	bl FUN_0200DC48
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x6c
	bl FUN_0200B1EC
	movs r1, #0
	adds r6, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r1, #0
	str r1, [sp, #8]
	bl FUN_0201D738
	adds r0, r6, #0
	bl FUN_020237BC
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x6d
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_0202AB28
	bl FUN_0202AC98
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	movs r3, #3
	bl FUN_0200B60C
	movs r0, #0x46
	movs r1, #0xfe
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	movs r1, #0xfe
	lsls r1, r1, #2
	movs r0, #0
	ldr r1, [r5, r1]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0xfe
	str r1, [sp, #8]
	lsls r2, r2, #2
	ldr r2, [r5, r2]
	movs r5, #0x58
	adds r0, r4, #0
	subs r3, r5, r3
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022403F0: .4byte 0x000003F7
	thumb_func_end ov84_02240328

	thumb_func_start ov84_022403F4
ov84_022403F4: @ 0x022403F4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x20
	movs r1, #6
	bl FUN_0201DBEC
	adds r0, r4, #0
	bl ov84_02240424
	adds r0, r4, #0
	bl ov84_022404C0
	adds r0, r4, #0
	bl ov84_02240950
	pop {r4, pc}
	thumb_func_end ov84_022403F4

	thumb_func_start ov84_02240424
ov84_02240424: @ 0x02240424
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	ldr r3, _022404B4 @ =0x02241178
	add r2, sp, #0x34
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r0, #6
	bl FUN_0200C6E4
	adds r1, r4, #0
	adds r1, #0xd8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xd8
	ldr r0, [r0]
	bl FUN_0200C704
	adds r1, r4, #0
	adds r1, #0xdc
	add r2, sp, #0x14
	ldr r5, _022404B8 @ =0x02241190
	str r0, [r1]
	ldm r5!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	ldr r6, _022404BC @ =0x02241164
	stm r2!, {r0, r1}
	add r5, sp, #0
	ldm r6!, {r0, r1}
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r0, [r6]
	adds r1, r3, #0
	str r0, [r5]
	adds r0, r4, #0
	adds r0, #0xd8
	ldr r0, [r0]
	movs r3, #0x20
	bl FUN_0200C73C
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0xc
	bl FUN_0200C7C0
	adds r0, r4, #0
	adds r0, #0xd8
	adds r4, #0xdc
	ldr r0, [r0]
	ldr r1, [r4]
	add r2, sp, #0x34
	bl FUN_0200CB30
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	nop
_022404B4: .4byte 0x02241178
_022404B8: .4byte 0x02241190
_022404BC: .4byte 0x02241164
	thumb_func_end ov84_02240424

	thumb_func_start ov84_022404C0
ov84_022404C0: @ 0x022404C0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, _02240844 @ =0x00000425
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _022404D4
	movs r3, #2
	movs r4, #3
	b _022404D8
_022404D4:
	movs r3, #6
	movs r4, #7
_022404D8:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02240848 @ =0x0000C0F9
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0224084C @ =0x0000C0FA
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x19
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02240850 @ =0x0000C0FB
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x1c
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02240854 @ =0x0000C0FC
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x1f
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02240858 @ =0x0000C0FD
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0xa
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0224085C @ =0x0000C0FE
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x24
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xc1
	lsls r0, r0, #8
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x3e
	movs r3, #4
	bl FUN_0200CBDC
	movs r0, #0
	movs r1, #1
	bl FUN_0207CE78
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02240860 @ =0x0000C0FF
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x10
	bl FUN_0200CBDC
	ldr r0, _02240864 @ =0x0000C101
	adds r1, r5, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #1
	movs r3, #0
	bl FUN_0207C948
	ldr r0, _02240868 @ =0x0000C102
	adds r1, r5, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #1
	movs r3, #0
	bl FUN_0207CAC4
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240848 @ =0x0000C0F9
	adds r1, r5, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	adds r3, r4, #0
	bl FUN_0200CD0C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, _0224084C @ =0x0000C0FA
	adds r1, r5, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x14
	bl FUN_0200CD0C
	movs r0, #0
	movs r1, #2
	bl FUN_0207CE78
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02240854 @ =0x0000C0FC
	adds r1, r5, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x10
	bl FUN_0200CC9C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, _02240858 @ =0x0000C0FD
	adds r1, r5, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x3e
	movs r3, #0xa
	bl FUN_0200CC9C
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r3, _0224085C @ =0x0000C0FE
	movs r2, #1
	bl FUN_0207C97C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	ldr r0, _02240850 @ =0x0000C0FB
	adds r1, r5, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x25
	bl FUN_0200CD0C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240848 @ =0x0000C0F9
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #1
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0224084C @ =0x0000C0FA
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x18
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240850 @ =0x0000C0FB
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x1b
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240854 @ =0x0000C0FC
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x1e
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240858 @ =0x0000C0FD
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #9
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0224085C @ =0x0000C0FE
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x23
	bl FUN_0200CE24
	bl FUN_0207CF40
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240860 @ =0x0000C0FF
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x10
	bl FUN_0200CE0C
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc1
	lsls r0, r0, #8
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x3e
	movs r3, #5
	bl FUN_0200CE0C
	movs r3, #0
	adds r1, r5, #0
	adds r2, r5, #0
	ldr r0, _02240848 @ =0x0000C0F9
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	ldr r0, _0224084C @ =0x0000C0FA
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x17
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240850 @ =0x0000C0FB
	b _0224086C
	.align 2, 0
_02240844: .4byte 0x00000425
_02240848: .4byte 0x0000C0F9
_0224084C: .4byte 0x0000C0FA
_02240850: .4byte 0x0000C0FB
_02240854: .4byte 0x0000C0FC
_02240858: .4byte 0x0000C0FD
_0224085C: .4byte 0x0000C0FE
_02240860: .4byte 0x0000C0FF
_02240864: .4byte 0x0000C101
_02240868: .4byte 0x0000C102
_0224086C:
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x1a
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	ldr r0, _0224093C @ =0x0000C0FC
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x1d
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240940 @ =0x0000C0FD
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #8
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240944 @ =0x0000C0FE
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	adds r2, #0xd4
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	movs r3, #0x22
	bl FUN_0200CE54
	bl FUN_0207CF44
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240948 @ =0x0000C0FF
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x10
	bl FUN_0200CE3C
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc1
	lsls r0, r0, #8
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x3e
	movs r3, #6
	bl FUN_0200CE3C
	adds r0, r5, #0
	adds r0, #0xd8
	adds r5, #0xdc
	ldr r2, _0224094C @ =0x0000C101
	ldr r0, [r0]
	ldr r1, [r5]
	adds r3, r2, #0
	bl FUN_0207C9EC
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224093C: .4byte 0x0000C0FC
_02240940: .4byte 0x0000C0FD
_02240944: .4byte 0x0000C0FE
_02240948: .4byte 0x0000C0FF
_0224094C: .4byte 0x0000C101
	thumb_func_end ov84_022404C0

	thumb_func_start ov84_02240950
ov84_02240950: @ 0x02240950
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r4, _02240A7C @ =0x022411B0
	movs r7, #0
	adds r6, r5, #0
_0224095C:
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, r4, #0
	bl FUN_0200CE6C
	adds r1, r6, #0
	adds r1, #0xe0
	adds r7, r7, #1
	str r0, [r1]
	adds r4, #0x34
	adds r6, r6, #4
	cmp r7, #0xc
	blo _0224095C
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0x43
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r0, [r0]
	adds r0, #0x65
	ldrb r0, [r0]
	adds r0, #0xfc
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _022409CE
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
_022409CE:
	ldr r0, _02240A80 @ =0x00000424
	ldrb r0, [r5, r0]
	cmp r0, #1
	bne _022409EE
	adds r0, r5, #0
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r5, #0
	adds r0, #0xec
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
_022409EE:
	adds r0, r5, #0
	movs r1, #0
	bl ov84_02240D3C
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r1, [r0]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r2, #0x64
	ldrb r3, [r2]
	movs r2, #0xc
	adds r0, #0xe0
	muls r2, r3, r2
	adds r1, r1, r2
	ldrb r1, [r1, #0xc]
	ldr r0, [r0]
	bl FUN_0200D364
	adds r1, r5, #0
	adds r1, #0xc4
	ldr r1, [r1]
	adds r0, r5, #0
	adds r1, #0x64
	ldrb r1, [r1]
	bl ov84_02240C30
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	movs r2, #0x61
	bl FUN_0200D4C4
	adds r0, r5, #0
	adds r0, #0xc4
	ldr r2, [r0]
	adds r0, r5, #0
	adds r3, r2, #0
	adds r3, #0x64
	ldrb r4, [r3]
	movs r3, #0xc
	adds r0, #0xf0
	muls r3, r4, r3
	adds r2, r2, r3
	ldrh r2, [r2, #8]
	ldr r0, [r0]
	movs r1, #0xb1
	subs r2, r2, #1
	lsls r2, r2, #4
	adds r2, #0x18
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	ldr r4, _02240A84 @ =0x02241158
	add r3, sp, #0
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldr r0, [r4]
	adds r1, r2, #0
	adds r5, #0xe0
	str r0, [r3]
	ldr r0, [r5]
	movs r2, #2
	ldr r0, [r0]
	bl FUN_02021C80
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02240A7C: .4byte 0x022411B0
_02240A80: .4byte 0x00000424
_02240A84: .4byte 0x02241158
	thumb_func_end ov84_02240950

	thumb_func_start ov84_02240A88
ov84_02240A88: @ 0x02240A88
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_02240A90:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xc
	blo _02240A90
	adds r0, r6, #0
	adds r1, r6, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0200D0B0
	adds r6, #0xd8
	ldr r0, [r6]
	bl FUN_0200C8D4
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_02240A88

	thumb_func_start ov84_02240ABC
ov84_02240ABC: @ 0x02240ABC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02240AC2:
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0200D330
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xc
	blo _02240AC2
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov84_02240ABC

	thumb_func_start ov84_02240AD8
ov84_02240AD8: @ 0x02240AD8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0207CE78
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240B2C @ =0x0000C0FF
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x10
	bl FUN_0200D948
	adds r0, r4, #0
	movs r1, #2
	bl FUN_0207CE78
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02240B30 @ =0x0000C0FC
	movs r2, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r5, #0xdc
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_0200D97C
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02240B2C: .4byte 0x0000C0FF
_02240B30: .4byte 0x0000C0FC
	thumb_func_end ov84_02240AD8

	thumb_func_start ov84_02240B34
ov84_02240B34: @ 0x02240B34
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xf0
	ldr r0, [r0]
	adds r4, r1, #0
	bl FUN_0200D41C
	adds r5, #0xe4
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_0200D41C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov84_02240B34

	thumb_func_start ov84_02240B50
ov84_02240B50: @ 0x02240B50
	ldr r1, _02240B64 @ =0x00000454
	ldrb r0, [r0, r1]
	cmp r0, #0
	bne _02240B5C
	movs r0, #1
	b _02240B5E
_02240B5C:
	movs r0, #0
_02240B5E:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_02240B64: .4byte 0x00000454
	thumb_func_end ov84_02240B50

	thumb_func_start ov84_02240B68
ov84_02240B68: @ 0x02240B68
	ldr r1, _02240B78 @ =0x00000457
	movs r2, #0
	strb r2, [r0, r1]
	ldr r3, _02240B7C @ =ov84_02240C48
	movs r2, #1
	subs r1, r1, #3
	strb r2, [r0, r1]
	bx r3
	.align 2, 0
_02240B78: .4byte 0x00000457
_02240B7C: .4byte ov84_02240C48
	thumb_func_end ov84_02240B68

	thumb_func_start ov84_02240B80
ov84_02240B80: @ 0x02240B80
	push {r3, lr}
	ldr r1, _02240B94 @ =0x00000454
	ldrb r1, [r0, r1]
	cmp r1, #0
	beq _02240B92
	cmp r1, #1
	bne _02240B92
	bl ov84_02240B98
_02240B92:
	pop {r3, pc}
	.align 2, 0
_02240B94: .4byte 0x00000454
	thumb_func_end ov84_02240B80

	thumb_func_start ov84_02240B98
ov84_02240B98: @ 0x02240B98
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0xe4
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r2, _02240C24 @ =0x00000455
	ldrb r0, [r4, r2]
	cmp r0, #0
	bne _02240BD0
	adds r1, r2, #2
	ldrb r1, [r4, r1]
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r1, r2, #3
	ldr r1, [r3, r1]
	subs r0, r0, r1
	str r0, [sp]
	b _02240BE2
_02240BD0:
	adds r1, r2, #2
	ldrb r1, [r4, r1]
	ldr r0, [sp]
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r1, r2, #3
	ldr r1, [r3, r1]
	adds r0, r0, r1
	str r0, [sp]
_02240BE2:
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	add r1, sp, #0
	ldr r0, [r0]
	bl FUN_02021C50
	ldr r1, _02240C28 @ =0x00000457
	ldrb r0, [r4, r1]
	adds r0, r0, #1
	strb r0, [r4, r1]
	ldrb r0, [r4, r1]
	cmp r0, #8
	bne _02240C20
	adds r1, #0x21
	ldrb r1, [r4, r1]
	adds r0, r4, #0
	bl ov84_02240C30
	lsls r0, r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	add r1, sp, #0
	ldr r0, [r0]
	bl FUN_02021C50
	ldr r0, _02240C2C @ =0x00000454
	movs r1, #0
	strb r1, [r4, r0]
_02240C20:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02240C24: .4byte 0x00000455
_02240C28: .4byte 0x00000457
_02240C2C: .4byte 0x00000454
	thumb_func_end ov84_02240B98

	thumb_func_start ov84_02240C30
ov84_02240C30: @ 0x02240C30
	ldr r2, _02240C44 @ =0x00000427
	ldrb r3, [r0, r2]
	adds r2, r2, #1
	ldrb r0, [r0, r2]
	muls r1, r0, r1
	adds r0, r3, r1
	adds r0, r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	.align 2, 0
_02240C44: .4byte 0x00000427
	thumb_func_end ov84_02240C30

	thumb_func_start ov84_02240C48
ov84_02240C48: @ 0x02240C48
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0xe4
	ldr r0, [r0]
	ldr r0, [r0]
	bl FUN_02021D28
	adds r3, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r1, _02240CE4 @ =0x00000478
	str r0, [r2]
	ldrb r1, [r4, r1]
	adds r0, r4, #0
	bl ov84_02240C30
	lsls r1, r0, #0xc
	ldr r0, [sp]
	cmp r1, r0
	bge _02240C82
	subs r0, r0, r1
	movs r1, #0x64
	blx FUN_020E1F6C
	movs r2, #0
	b _02240C8C
_02240C82:
	subs r0, r1, r0
	movs r1, #0x64
	blx FUN_020E1F6C
	movs r2, #1
_02240C8C:
	ldr r1, _02240CE8 @ =0x00000455
	movs r3, #0x28
	strb r2, [r4, r1]
	adds r5, r0, #0
	ldr r1, _02240CEC @ =0x00000458
	movs r2, #0
	muls r5, r3, r5
	str r2, [r4, r1]
	adds r3, r1, #4
	str r5, [r4, r3]
	movs r3, #0x19
	adds r5, r0, #0
	muls r5, r3, r5
	adds r3, r1, #0
	adds r3, #8
	str r5, [r4, r3]
	movs r3, #0xf
	adds r5, r0, #0
	muls r5, r3, r5
	adds r3, r1, #0
	adds r3, #0xc
	str r5, [r4, r3]
	movs r3, #0xa
	adds r5, r0, #0
	muls r5, r3, r5
	adds r3, r1, #0
	adds r3, #0x10
	str r5, [r4, r3]
	movs r3, #7
	adds r5, r0, #0
	muls r5, r3, r5
	adds r3, r1, #0
	adds r3, #0x14
	str r5, [r4, r3]
	lsls r3, r0, #1
	adds r3, r0, r3
	adds r0, r1, #0
	adds r0, #0x18
	str r3, [r4, r0]
	adds r1, #0x1c
	str r2, [r4, r1]
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02240CE4: .4byte 0x00000478
_02240CE8: .4byte 0x00000455
_02240CEC: .4byte 0x00000458
	thumb_func_end ov84_02240C48

	thumb_func_start ov84_02240CF0
ov84_02240CF0: @ 0x02240CF0
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	bne _02240D16
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #0xdc
	movs r2, #0x9c
	bl FUN_0200D4C4
	movs r0, #0x41
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xdc
	movs r2, #0xb4
	bl FUN_0200D4C4
	b _02240D32
_02240D16:
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	movs r1, #0xa2
	movs r2, #0x6c
	bl FUN_0200D4C4
	movs r0, #0x41
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xa2
	movs r2, #0x84
	bl FUN_0200D4C4
_02240D32:
	adds r0, r4, #0
	movs r1, #1
	bl ov84_02240D3C
	pop {r4, pc}
	thumb_func_end ov84_02240CF0

	thumb_func_start ov84_02240D3C
ov84_02240D3C: @ 0x02240D3C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #1
	lsls r0, r0, #8
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_0200D3F4
	movs r0, #0x41
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_0200D3F4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov84_02240D3C

	thumb_func_start ov84_02240D5C
ov84_02240D5C: @ 0x02240D5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x42
	lsls r0, r0, #2
	adds r4, r2, #0
	adds r6, r1, #0
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_0200D3F4
	movs r0, #0x43
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_0200D3F4
	cmp r4, #0
	beq _02240E18
	adds r0, r6, #0
	bl FUN_0207D268
	movs r1, #3
	adds r4, r0, #0
	bl FUN_020790C4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl FUN_020790C4
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	bl FUN_0207C944
	adds r7, r0, #0
	adds r0, r6, #0
	bl FUN_0207C908
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, _02240E1C @ =0x0000C101
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, r7, #0
	bl FUN_0200D948
	adds r0, r6, #0
	bl FUN_0207C92C
	adds r1, r0, #0
	movs r0, #0x42
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r1, #6
	bl FUN_0200D41C
	bl FUN_0207CAC0
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_0207CA90
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, _02240E20 @ =0x0000C102
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xd8
	adds r1, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, r6, #0
	bl FUN_0200D948
	adds r0, r4, #0
	bl FUN_0207CAA8
	adds r1, r0, #0
	movs r0, #0x43
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r1, #6
	bl FUN_0200D41C
_02240E18:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02240E1C: .4byte 0x0000C101
_02240E20: .4byte 0x0000C102
	thumb_func_end ov84_02240D5C

	thumb_func_start ov84_02240E24
ov84_02240E24: @ 0x02240E24
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xf8
	adds r4, r1, #0
	ldr r0, [r0]
	movs r1, #1
	adds r6, r2, #0
	bl FUN_0200D3F4
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200D4C4
	adds r0, r5, #0
	adds r0, #0xf8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3CC
	adds r5, #0xf8
	ldr r0, [r5]
	movs r1, #0
	bl FUN_0200D364
	pop {r4, r5, r6, pc}
	thumb_func_end ov84_02240E24

	thumb_func_start ov84_02240E5C
ov84_02240E5C: @ 0x02240E5C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xf8
	ldr r0, [r0]
	bl FUN_0200D408
	cmp r0, #1
	bne _02240E92
	adds r0, r4, #0
	adds r0, #0xf8
	movs r1, #1
	ldr r0, [r0]
	lsls r1, r1, #0xc
	bl FUN_0200D34C
	adds r0, r4, #0
	adds r0, #0xf8
	ldr r0, [r0]
	bl FUN_0200D3E0
	cmp r0, #2
	bne _02240E92
	adds r4, #0xf8
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D3F4
_02240E92:
	pop {r4, pc}
	thumb_func_end ov84_02240E5C
	@ 0x02240E94
