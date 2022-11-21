	.include "macros/function.inc"


	.text

	thumb_func_start ov68_0225C700
ov68_0225C700: @ 0x0225C700
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	bl FUN_02006840
	movs r2, #5
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x7a
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0xa3
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0x7a
	bl FUN_0200681C
	movs r2, #0xa3
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0x7a
	bl ov68_0225C91C
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r1, [r5, #4]
	adds r0, r4, r0
	movs r2, #0x7a
	bl ov68_0225CB70
	movs r0, #0x9a
	lsls r0, r0, #2
	ldr r2, [r5]
	adds r0, r4, r0
	adds r1, r4, #0
	movs r3, #0x7a
	bl ov68_0225D128
	ldr r0, [r5, #8]
	cmp r0, #2
	blt _0225C762
	bl FUN_02022974
_0225C762:
	movs r1, #0x7a
	str r1, [sp]
	adds r3, r5, #0
	ldr r5, [r5, #8]
	adds r0, r1, #0
	lsls r6, r5, #2
	ldr r5, _0225C790 @ =0x0225DEB0
	adds r0, #0xfe
	adds r1, #0xca
	ldr r5, [r5, r6]
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, r4, #0
	blx r5
	ldr r0, _0225C794 @ =ov68_0225C914
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225C790: .4byte 0x0225DEB0
_0225C794: .4byte ov68_0225C914
	thumb_func_end ov68_0225C700

	thumb_func_start ov68_0225C798
ov68_0225C798: @ 0x0225C798
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0200682C
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _0225C896
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225C7C0: @ jump table
	.2byte _0225C7CA - _0225C7C0 - 2 @ case 0
	.2byte _0225C7F0 - _0225C7C0 - 2 @ case 1
	.2byte _0225C800 - _0225C7C0 - 2 @ case 2
	.2byte _0225C85E - _0225C7C0 - 2 @ case 3
	.2byte _0225C87E - _0225C7C0 - 2 @ case 4
_0225C7CA:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x7a
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_0222E31C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C896
_0225C7F0:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225C896
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C896
_0225C800:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225C830
	ldr r0, [r5, #4]
	bl FUN_0222E12C
	cmp r0, #1
	bne _0225C820
	ldr r0, [r5, #4]
	bl FUN_0222E2A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C896
_0225C820:
	bl FUN_02231760
	cmp r0, #1
	bne _0225C830
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C896
_0225C830:
	movs r1, #0x7a
	str r5, [sp]
	str r1, [sp, #4]
	ldr r5, [r5, #8]
	adds r0, r1, #0
	lsls r6, r5, #2
	ldr r5, _0225C8A4 @ =0x0225DEA8
	movs r3, #0x9a
	adds r0, #0xfe
	adds r1, #0xca
	lsls r3, r3, #2
	ldr r5, [r5, r6]
	adds r0, r7, r0
	adds r1, r7, r1
	adds r2, r7, #0
	adds r3, r7, r3
	blx r5
	cmp r0, #1
	bne _0225C896
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C896
_0225C85E:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x7a
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0225C896
_0225C87E:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225C896
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r0, r7, r0
	bl ov68_0225D2A0
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225C896:
	adds r0, r7, #0
	bl ov68_0225C980
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225C8A4: .4byte 0x0225DEA8
	thumb_func_end ov68_0225C798

	thumb_func_start ov68_0225C8A8
ov68_0225C8A8: @ 0x0225C8A8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	adds r6, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	ldr r3, [r6, #8]
	movs r1, #0x5e
	lsls r6, r3, #2
	ldr r3, _0225C910 @ =0x0225DEA0
	lsls r1, r1, #2
	adds r0, r4, r1
	subs r1, #0x34
	ldr r3, [r3, r6]
	adds r1, r4, r1
	adds r2, r4, #0
	blx r3
	movs r0, #0x9a
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0x7a
	bl ov68_0225D178
	movs r0, #0x51
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov68_0225CBC0
	adds r0, r4, #0
	bl ov68_0225C960
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x7a
	bl FUN_0201807C
	movs r0, #0
	bl FUN_020057BC
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_0225C910: .4byte 0x0225DEA0
	thumb_func_end ov68_0225C8A8

	thumb_func_start ov68_0225C914
ov68_0225C914: @ 0x0225C914
	ldr r3, _0225C918 @ =ov68_0225C98C
	bx r3
	.align 2, 0
_0225C918: .4byte ov68_0225C98C
	thumb_func_end ov68_0225C914

	thumb_func_start ov68_0225C91C
ov68_0225C91C: @ 0x0225C91C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r0, r1, #0
	bl FUN_02025E44
	adds r6, r0, #0
	movs r0, #0xba
	adds r1, r4, #0
	bl FUN_02006C24
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0x20
	adds r1, r4, #0
	bl FUN_0201DBEC
	ldr r0, _0225C95C @ =0x0225DDC0
	bl FUN_0201FE94
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov68_0225C9A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov68_0225CAB4
	pop {r4, r5, r6, pc}
	nop
_0225C95C: .4byte 0x0225DDC0
	thumb_func_end ov68_0225C91C

	thumb_func_start ov68_0225C960
ov68_0225C960: @ 0x0225C960
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl ov68_0225CA8C
	adds r0, r4, #0
	bl ov68_0225CB44
	pop {r4, pc}
	thumb_func_end ov68_0225C960

	thumb_func_start ov68_0225C980
ov68_0225C980: @ 0x0225C980
	ldr r3, _0225C988 @ =FUN_020219F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225C988: .4byte FUN_020219F8
	thumb_func_end ov68_0225C980

	thumb_func_start ov68_0225C98C
ov68_0225C98C: @ 0x0225C98C
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0201C2B8
	bl FUN_0200A858
	bl FUN_0201DCAC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov68_0225C98C

	thumb_func_start ov68_0225C9A0
ov68_0225C9A0: @ 0x0225C9A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _0225CA7C @ =0x0225DD48
	adds r7, r2, #0
	str r1, [sp, #0x10]
	bl FUN_02018368
	adds r0, r7, #0
	bl FUN_02018340
	str r0, [r5]
	ldr r0, _0225CA80 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #0
	ldr r6, _0225CA84 @ =0x0225DE18
	ldr r4, _0225CA88 @ =0x0225DD68
	str r0, [sp, #0x14]
_0225C9CA:
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4]
	movs r1, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	adds r3, r7, #0
	bl FUN_02019690
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	ldr r0, [sp, #0x14]
	adds r6, #0x1c
	adds r0, r0, #1
	adds r4, r4, #4
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0225C9CA
	movs r0, #0
	movs r1, #0x80
	adds r2, r7, #0
	bl FUN_02002E98
	ldr r0, [sp, #0x10]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	str r7, [sp, #4]
	movs r1, #1
	ldr r0, [r5]
	adds r2, r1, #0
	movs r3, #5
	bl FUN_0200DD0C
	movs r0, #0
	str r0, [sp]
	str r7, [sp, #4]
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0x1f
	movs r3, #6
	bl FUN_0200DAA4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r2, [r5]
	movs r0, #0xa9
	movs r1, #2
	movs r3, #4
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r7, [sp, #0xc]
	ldr r2, [r5]
	movs r0, #0xa9
	movs r1, #6
	movs r3, #4
	bl FUN_02006E60
	movs r1, #0
	str r1, [sp]
	movs r0, #0xa9
	movs r2, #4
	adds r3, r1, #0
	str r7, [sp, #4]
	bl FUN_02006E84
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225CA7C: .4byte 0x0225DD48
_0225CA80: .4byte 0x021BF6DC
_0225CA84: .4byte 0x0225DE18
_0225CA88: .4byte 0x0225DD68
	thumb_func_end ov68_0225C9A0

	thumb_func_start ov68_0225CA8C
ov68_0225CA8C: @ 0x0225CA8C
	push {r4, r5, r6, lr}
	ldr r5, _0225CAB0 @ =0x0225DD68
	adds r6, r0, #0
	movs r4, #0
_0225CA94:
	ldr r1, [r5]
	ldr r0, [r6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225CA94
	ldr r0, [r6]
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225CAB0: .4byte 0x0225DD68
	thumb_func_end ov68_0225CA8C

	thumb_func_start ov68_0225CAB4
ov68_0225CAB4: @ 0x0225CAB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r6, r1, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x1f
	str r3, [sp, #0xc]
	adds r2, r0, #0
	str r6, [sp, #0x10]
	bl FUN_0200A784
	movs r1, #0x10
	ldr r0, _0225CB40 @ =0x0225DD58
	adds r2, r1, #0
	bl FUN_0201E88C
	movs r0, #0x20
	adds r1, r6, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	adds r1, r5, #0
	movs r0, #0x20
	adds r1, #8
	adds r2, r6, #0
	bl FUN_020095C4
	movs r7, #0x13
	str r0, [r5, #4]
	movs r4, #0
	lsls r7, r7, #4
_0225CB12:
	movs r0, #0x20
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225CB12
	bl FUN_02039734
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225CB40: .4byte 0x0225DD58
	thumb_func_end ov68_0225CAB4

	thumb_func_start ov68_0225CB44
ov68_0225CB44: @ 0x0225CB44
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_02021964
	movs r6, #0x13
	movs r4, #0
	lsls r6, r6, #4
_0225CB54:
	ldr r0, [r5, r6]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225CB54
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	pop {r4, r5, r6, pc}
	thumb_func_end ov68_0225CB44

	thumb_func_start ov68_0225CB70
ov68_0225CB70: @ 0x0225CB70
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0225CBBC @ =0x0225DD9C
	str r0, [sp]
	adds r7, r2, #0
	str r1, [r0, #0x30]
	movs r6, #0
	adds r5, r0, #0
_0225CB7E:
	ldr r2, [r4]
	movs r0, #0
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	adds r6, r6, #1
	adds r4, r4, #4
	stm r5!, {r0}
	cmp r6, #9
	blt _0225CB7E
	adds r0, r7, #0
	bl FUN_0200B358
	ldr r1, [sp]
	str r0, [r1, #0x24]
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r7, #0
	bl FUN_02023790
	ldr r1, [sp]
	str r0, [r1, #0x28]
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r7, #0
	bl FUN_02023790
	ldr r1, [sp]
	str r0, [r1, #0x2c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225CBBC: .4byte 0x0225DD9C
	thumb_func_end ov68_0225CB70

	thumb_func_start ov68_0225CBC0
ov68_0225CBC0: @ 0x0225CBC0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_0225CBC8:
	ldr r0, [r5]
	bl FUN_0200B190
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #9
	blt _0225CBC8
	ldr r0, [r6, #0x24]
	bl FUN_0200B3F0
	ldr r0, [r6, #0x28]
	bl FUN_020237BC
	ldr r0, [r6, #0x2c]
	bl FUN_020237BC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov68_0225CBC0

	thumb_func_start ov68_0225CBEC
ov68_0225CBEC: @ 0x0225CBEC
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #9
	blo _0225CBFC
	bl FUN_02022974
_0225CBFC:
	lsls r0, r4, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x2c]
	adds r1, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl FUN_0200C388
	ldr r0, [r5, #0x28]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov68_0225CBEC

	thumb_func_start ov68_0225CC18
ov68_0225CC18: @ 0x0225CC18
	push {r4, lr}
	adds r2, r1, #0
	adds r4, r0, #0
	cmp r2, #0x3c
	blo _0225CC2A
	bhs _0225CC28
	bl FUN_02022974
_0225CC28:
	movs r2, #0
_0225CC2A:
	cmp r2, #0x32
	bhs _0225CC38
	adds r0, r4, #0
	movs r1, #1
	bl ov68_0225CBEC
	pop {r4, pc}
_0225CC38:
	adds r0, r4, #0
	movs r1, #2
	subs r2, #0x32
	bl ov68_0225CBEC
	pop {r4, pc}
	thumb_func_end ov68_0225CC18

	thumb_func_start ov68_0225CC44
ov68_0225CC44: @ 0x0225CC44
	push {r3, r4, r5, lr}
	adds r3, r1, #0
	adds r4, r0, #0
	adds r5, r2, #0
	cmp r3, #0x3c
	blo _0225CC58
	bhs _0225CC56
	bl FUN_02022974
_0225CC56:
	movs r3, #0
_0225CC58:
	cmp r3, #0x32
	bhs _0225CC68
	adds r0, r4, #0
	adds r1, r5, #3
	adds r2, r3, #0
	bl ov68_0225CBEC
	pop {r3, r4, r5, pc}
_0225CC68:
	subs r3, #0x32
	adds r0, r4, #0
	adds r1, r5, #6
	adds r2, r3, #0
	bl ov68_0225CBEC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov68_0225CC44

	thumb_func_start ov68_0225CC78
ov68_0225CC78: @ 0x0225CC78
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r2, #0
	adds r5, r0, #0
	adds r0, r7, #0
	adds r4, r1, #0
	bl FUN_02025E6C
	adds r6, r0, #0
	ldr r0, [r5, #0x30]
	bl FUN_0222E3BC
	adds r1, r6, #0
	adds r2, r7, #0
	bl FUN_0222E640
	ldr r0, [r5, #0x24]
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0200B498
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov68_0225CC78

	thumb_func_start ov68_0225CCA8
ov68_0225CCA8: @ 0x0225CCA8
	push {r3, lr}
	ldr r3, [sp, #8]
	bl ov68_0225CCD0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov68_0225CCA8

	thumb_func_start ov68_0225CCB4
ov68_0225CCB4: @ 0x0225CCB4
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl ov68_0225CE48
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov68_0225CCB4

	thumb_func_start ov68_0225CCC8
ov68_0225CCC8: @ 0x0225CCC8
	ldr r3, _0225CCCC @ =ov68_0225D02C
	bx r3
	.align 2, 0
_0225CCCC: .4byte ov68_0225D02C
	thumb_func_end ov68_0225CCC8

	thumb_func_start ov68_0225CCD0
ov68_0225CCD0: @ 0x0225CCD0
	push {r4, r5, r6, lr}
	sub sp, #0x70
	adds r5, r0, #0
	movs r0, #0x80
	str r0, [sp]
	adds r6, r3, #0
	adds r4, r2, #0
	movs r2, #0
	str r6, [sp, #4]
	adds r0, #0xc0
	ldr r0, [r4, r0]
	movs r1, #0xc7
	adds r3, r2, #0
	bl FUN_02007130
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #5
	str r6, [sp, #0xc]
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r2, [r4]
	movs r1, #0xc8
	bl FUN_020070E8
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #5
	str r6, [sp, #0xc]
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	ldr r2, [r4]
	movs r1, #0xc9
	bl FUN_0200710C
	movs r0, #0x14
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0x13
	str r6, [sp, #8]
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	adds r1, #0x10
	ldr r1, [r4, r1]
	movs r2, #0xcd
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r5, #0x18]
	movs r0, #0x14
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r1, #0x4d
	str r6, [sp, #0xc]
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #0xc
	ldr r1, [r4, r1]
	movs r2, #0xcc
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	bl FUN_0200A3DC
	cmp r0, #0
	bne _0225CD6C
	bl FUN_02022974
_0225CD6C:
	ldr r0, [r5, #0x1c]
	bl FUN_0200A640
	cmp r0, #0
	bne _0225CD7A
	bl FUN_02022974
_0225CD7A:
	ldr r0, [r5, #0x18]
	bl FUN_02009D4C
	ldr r0, [r5, #0x1c]
	bl FUN_02009D4C
	movs r0, #0x14
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r1, #0x4e
	str r6, [sp, #8]
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #8
	ldr r1, [r4, r1]
	movs r2, #0xce
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0x20]
	movs r0, #0x14
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r1, #0x4f
	str r6, [sp, #8]
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	movs r2, #0xcf
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0x24]
	movs r0, #0
	add r2, sp, #0x2c
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	movs r1, #0x14
	adds r2, r1, #0
	str r1, [sp]
	subs r2, #0x15
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	movs r2, #0x13
	str r0, [sp, #0x10]
	lsls r2, r2, #4
	ldr r3, [r4, r2]
	str r3, [sp, #0x14]
	adds r3, r2, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	adds r3, r2, #0
	adds r3, #8
	ldr r3, [r4, r3]
	adds r2, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r4, r2]
	adds r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [r4, #4]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #0
	str r0, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x44]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl FUN_02021B90
	movs r1, #0
	str r0, [r5, #0x14]
	bl FUN_02021CAC
	ldr r0, [r4]
	ldr r2, _0225CE44 @ =0x0225DD40
	adds r1, r5, #0
	bl FUN_0201A8D4
	adds r5, #0x2c
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl ov68_0225DB8C
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225CE44: .4byte 0x0225DD40
	thumb_func_end ov68_0225CCD0

	thumb_func_start ov68_0225CE48
ov68_0225CE48: @ 0x0225CE48
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r3, #0
	ldrh r3, [r4, #0x28]
	adds r6, r1, #0
	cmp r3, #0xa
	bls _0225CE58
	b _0225D014
_0225CE58:
	adds r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_0225CE64: @ jump table
	.2byte _0225CE7A - _0225CE64 - 2 @ case 0
	.2byte _0225CE96 - _0225CE64 - 2 @ case 1
	.2byte _0225CEA6 - _0225CE64 - 2 @ case 2
	.2byte _0225CEC8 - _0225CE64 - 2 @ case 3
	.2byte _0225CEEE - _0225CE64 - 2 @ case 4
	.2byte _0225CF16 - _0225CE64 - 2 @ case 5
	.2byte _0225CF6E - _0225CE64 - 2 @ case 6
	.2byte _0225CFA4 - _0225CE64 - 2 @ case 7
	.2byte _0225CFD4 - _0225CE64 - 2 @ case 8
	.2byte _0225CFFA - _0225CE64 - 2 @ case 9
	.2byte _0225D004 - _0225CE64 - 2 @ case 10
_0225CE7A:
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x5e
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	movs r0, #1
	strh r0, [r4, #0x2a]
	movs r0, #0xa
	strh r0, [r4, #0x28]
	b _0225D018
_0225CE96:
	adds r1, r2, #0
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	bl ov68_0225D304
	movs r0, #2
	strh r0, [r4, #0x28]
	b _0225D018
_0225CEA6:
	ldr r1, [sp, #0x14]
	adds r0, r5, #0
	bl ov68_0225D330
	cmp r0, #0
	beq _0225CEBC
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0225CEC2
	b _0225D018
_0225CEBC:
	movs r0, #3
	strh r0, [r4, #0x28]
	b _0225D018
_0225CEC2:
	movs r0, #9
	strh r0, [r4, #0x28]
	b _0225D018
_0225CEC8:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0225CED2
	movs r2, #0x5c
	b _0225CED4
_0225CED2:
	movs r2, #0x5d
_0225CED4:
	adds r0, r6, #0
	movs r1, #0
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	movs r0, #4
	strh r0, [r4, #0x2a]
	movs r0, #0xa
	strh r0, [r4, #0x28]
	b _0225D018
_0225CEEE:
	bl ov68_0225D06C
	adds r0, r4, #0
	adds r0, #0x2c
	adds r1, r6, #0
	bl ov68_0225DC40
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D218
	adds r0, r4, #0
	bl ov68_0225D0F8
	adds r0, r4, #0
	bl ov68_0225D11C
	movs r0, #5
	strh r0, [r4, #0x28]
	b _0225D018
_0225CF16:
	ldr r0, _0225D01C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0225CF2E
	ldr r0, _0225D020 @ =0x000005DC
	bl FUN_02005748
	ldrh r0, [r4, #0x28]
	adds r0, r0, #1
	strh r0, [r4, #0x28]
	b _0225D018
_0225CF2E:
	movs r0, #0x40
	tst r0, r1
	beq _0225CF4A
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	bmi _0225CF66
	movs r0, #0x5e
	lsls r0, r0, #4
	bl FUN_02005748
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	str r0, [r4, #0x10]
	b _0225CF66
_0225CF4A:
	movs r0, #0x80
	tst r0, r1
	beq _0225CF66
	ldr r0, [r4, #0x10]
	adds r0, r0, #1
	cmp r0, #3
	bge _0225CF66
	movs r0, #0x5e
	lsls r0, r0, #4
	bl FUN_02005748
	ldr r0, [r4, #0x10]
	adds r0, r0, #1
	str r0, [r4, #0x10]
_0225CF66:
	adds r0, r4, #0
	bl ov68_0225D0F8
	b _0225D018
_0225CF6E:
	ldr r0, [sp, #0x10]
	ldr r1, [r4, #0x30]
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x10]
	bl FUN_0222E5D8
	ldr r0, [r4, #0x10]
	bl FUN_022333E4
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x60
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D218
	adds r0, r5, #0
	bl ov68_0225D284
	ldr r0, _0225D024 @ =0x00000565
	bl FUN_02005748
	movs r0, #7
	strh r0, [r4, #0x28]
	b _0225D018
_0225CFA4:
	bl FUN_02233434
	cmp r0, #1
	beq _0225D018
	ldr r0, _0225D028 @ =0x000005E4
	bl FUN_02005748
	adds r0, r5, #0
	bl ov68_0225D2A0
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x61
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	movs r0, #8
	strh r0, [r4, #0x2a]
	movs r0, #0xa
	strh r0, [r4, #0x28]
	b _0225D018
_0225CFD4:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	bne _0225CFDE
	movs r2, #0x62
	b _0225CFE0
_0225CFDE:
	movs r2, #0x63
_0225CFE0:
	adds r0, r6, #0
	movs r1, #0
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	movs r0, #9
	strh r0, [r4, #0x2a]
	movs r0, #0xa
	strh r0, [r4, #0x28]
	b _0225D018
_0225CFFA:
	adds r0, r5, #0
	bl ov68_0225D2CC
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225D004:
	adds r0, r5, #0
	bl ov68_0225D2B4
	cmp r0, #1
	bne _0225D018
	ldrh r0, [r4, #0x2a]
	strh r0, [r4, #0x28]
	b _0225D018
_0225D014:
	bl FUN_02022974
_0225D018:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225D01C: .4byte 0x021BF67C
_0225D020: .4byte 0x000005DC
_0225D024: .4byte 0x00000565
_0225D028: .4byte 0x000005E4
	thumb_func_end ov68_0225CE48

	thumb_func_start ov68_0225D02C
ov68_0225D02C: @ 0x0225D02C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x2c
	adds r4, r2, #0
	bl ov68_0225DC24
	adds r0, r5, #0
	bl FUN_0201A8FC
	ldr r0, [r5, #0x14]
	bl FUN_02021BD4
	ldr r0, [r5, #0x18]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x1c]
	bl FUN_0200A6DC
	movs r7, #0x13
	movs r6, #0
	lsls r7, r7, #4
_0225D056:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x18]
	bl FUN_02009D68
	adds r6, r6, #1
	adds r5, r5, #4
	adds r4, r4, #4
	cmp r6, #4
	blt _0225D056
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov68_0225D02C

	thumb_func_start ov68_0225D06C
ov68_0225D06C: @ 0x0225D06C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x2c
	adds r1, r4, #0
	movs r2, #0
	bl ov68_0225DC58
	movs r3, #0
	adds r2, r0, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D0F4 @ =0x00010200
	movs r1, #1
	str r0, [sp, #8]
	adds r0, r5, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	adds r0, #0x2c
	adds r1, r4, #0
	movs r2, #1
	bl ov68_0225DC58
	adds r2, r0, #0
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D0F4 @ =0x00010200
	movs r3, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	adds r0, #0x2c
	adds r1, r4, #0
	movs r2, #2
	bl ov68_0225DC58
	adds r2, r0, #0
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D0F4 @ =0x00010200
	movs r3, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #1
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225D0F4: .4byte 0x00010200
	thumb_func_end ov68_0225D06C

	thumb_func_start ov68_0225D0F8
ov68_0225D0F8: @ 0x0225D0F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	movs r1, #1
	bl FUN_02021CAC
	ldr r2, [r4, #0x10]
	movs r1, #0xc
	ldr r3, _0225D118 @ =0x0225DD78
	muls r1, r2, r1
	ldr r0, [r4, #0x14]
	adds r1, r3, r1
	bl FUN_02021C50
	pop {r4, pc}
	nop
_0225D118: .4byte 0x0225DD78
	thumb_func_end ov68_0225D0F8

	thumb_func_start ov68_0225D11C
ov68_0225D11C: @ 0x0225D11C
	ldr r3, _0225D124 @ =FUN_02021CC8
	ldr r0, [r0, #0x14]
	movs r1, #1
	bx r3
	.align 2, 0
_0225D124: .4byte FUN_02021CC8
	thumb_func_end ov68_0225D11C

	thumb_func_start ov68_0225D128
ov68_0225D128: @ 0x0225D128
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [r1]
	adds r1, r5, #0
	adds r4, r2, #0
	adds r6, r3, #0
	adds r1, #8
	movs r2, #1
	movs r3, #2
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r6, #0
	bl FUN_02023790
	str r0, [r5, #0x18]
	adds r0, r4, #0
	bl FUN_02025E44
	bl FUN_02027AC0
	str r0, [r5, #4]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov68_0225D128

	thumb_func_start ov68_0225D178
ov68_0225D178: @ 0x0225D178
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D196
	ldr r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D196:
	adds r0, r5, #0
	bl ov68_0225D2A0
	ldr r0, [r5, #0x18]
	bl FUN_020237BC
	adds r0, r5, #0
	adds r0, #8
	bl FUN_0201A8FC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov68_0225D348
	pop {r3, r4, r5, pc}
	thumb_func_end ov68_0225D178

	thumb_func_start ov68_0225D1B4
ov68_0225D1B4: @ 0x0225D1B4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D1D4
	ldr r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D1D4:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #0x18]
	adds r1, r4, #0
	bl FUN_02023810
	movs r3, #0
	str r3, [sp]
	ldr r0, [r5, #4]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, _0225D214 @ =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x18]
	adds r0, #8
	bl FUN_0201D78C
	str r0, [r5]
	adds r5, #8
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	movs r3, #5
	bl FUN_0200E060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225D214: .4byte 0x0001020F
	thumb_func_end ov68_0225D1B4

	thumb_func_start ov68_0225D218
ov68_0225D218: @ 0x0225D218
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D238
	ldr r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D238:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #0x18]
	adds r1, r4, #0
	bl FUN_02023810
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D280 @ =0x0001020F
	movs r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	adds r0, r5, #0
	ldr r2, [r5, #0x18]
	adds r0, #8
	bl FUN_0201D78C
	adds r0, r5, #0
	movs r1, #1
	adds r0, #8
	adds r2, r1, #0
	movs r3, #5
	bl FUN_0200E060
	adds r5, #8
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225D280: .4byte 0x0001020F
	thumb_func_end ov68_0225D218

	thumb_func_start ov68_0225D284
ov68_0225D284: @ 0x0225D284
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225D292
	bl FUN_02022974
_0225D292:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl FUN_0200E7FC
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov68_0225D284

	thumb_func_start ov68_0225D2A0
ov68_0225D2A0: @ 0x0225D2A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225D2B2
	bl FUN_0200EBA0
	movs r0, #0
	str r0, [r4, #0x1c]
_0225D2B2:
	pop {r4, pc}
	thumb_func_end ov68_0225D2A0

	thumb_func_start ov68_0225D2B4
ov68_0225D2B4: @ 0x0225D2B4
	push {r3, lr}
	ldr r0, [r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0225D2C8
	movs r0, #1
	pop {r3, pc}
_0225D2C8:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov68_0225D2B4

	thumb_func_start ov68_0225D2CC
ov68_0225D2CC: @ 0x0225D2CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D2E8
	ldr r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D2E8:
	adds r0, r4, #0
	bl ov68_0225D2A0
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl FUN_0200E084
	adds r4, #8
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov68_0225D2CC

	thumb_func_start ov68_0225D304
ov68_0225D304: @ 0x0225D304
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x20]
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _0225D318
	bl FUN_02022974
_0225D318:
	str r6, [sp]
	ldr r0, [r4]
	ldr r1, _0225D32C @ =0x0225DD38
	movs r2, #0x1f
	movs r3, #6
	bl FUN_02002100
	str r0, [r5, #0x20]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225D32C: .4byte 0x0225DD38
	thumb_func_end ov68_0225D304

	thumb_func_start ov68_0225D330
ov68_0225D330: @ 0x0225D330
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0225D346
	movs r1, #0
	str r1, [r4, #0x20]
_0225D346:
	pop {r4, pc}
	thumb_func_end ov68_0225D330

	thumb_func_start ov68_0225D348
ov68_0225D348: @ 0x0225D348
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _0225D35A
	bl FUN_02002154
	movs r0, #0
	str r0, [r4, #0x20]
_0225D35A:
	pop {r4, pc}
	thumb_func_end ov68_0225D348

	thumb_func_start ov68_0225D35C
ov68_0225D35C: @ 0x0225D35C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	bl ov68_0225D388
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov68_0225D35C

	thumb_func_start ov68_0225D36C
ov68_0225D36C: @ 0x0225D36C
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl ov68_0225D478
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov68_0225D36C

	thumb_func_start ov68_0225D380
ov68_0225D380: @ 0x0225D380
	ldr r3, _0225D384 @ =ov68_0225D868
	bx r3
	.align 2, 0
_0225D384: .4byte ov68_0225D868
	thumb_func_end ov68_0225D380

	thumb_func_start ov68_0225D388
ov68_0225D388: @ 0x0225D388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, [sp, #0x30]
	movs r1, #0x80
	str r1, [sp]
	adds r6, r2, #0
	adds r1, #0xc0
	str r0, [sp, #0x30]
	str r0, [sp, #4]
	ldr r0, [r6, r1]
	movs r2, #0
	str r3, [sp, #0x18]
	movs r1, #0xc7
	adds r3, r2, #0
	bl FUN_02007130
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	ldr r2, [r6]
	movs r1, #0xc8
	bl FUN_020070E8
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	ldr r2, [r6]
	movs r1, #0xca
	bl FUN_0200710C
	ldr r4, _0225D474 @ =0x0225DDE8
	ldr r5, [sp, #0x10]
	movs r7, #0
_0225D3E6:
	ldr r0, [r6]
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_0201A8D4
	adds r7, r7, #1
	adds r4, #8
	adds r5, #0x10
	cmp r7, #6
	blt _0225D3E6
	movs r3, #0xc1
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	movs r2, #0x6d
	lsls r3, r3, #0xa
	bl ov68_0225D89C
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	movs r1, #0xc8
	movs r2, #0
	adds r3, #0x84
	bl FUN_020071B4
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x30]
	adds r1, #0x80
	str r0, [r1]
	ldr r0, [sp, #0x10]
	movs r1, #1
	adds r0, #0x88
	bl ov68_0225DB8C
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x30]
	adds r0, #0xa8
	movs r1, #0
	bl ov68_0225DB8C
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #4]
	adds r1, #0xc8
	bl FUN_0222F144
	cmp r0, #0
	bne _0225D464
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x10]
	ldr r1, [r1, #4]
	adds r0, #0xc8
	bl ov68_0225DCCC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #4]
	adds r1, #0xc8
	bl FUN_0222F124
_0225D464:
	ldr r0, [sp, #0x10]
	adds r0, #0xdc
	str r0, [sp, #0x10]
	bl ov68_0225DC74
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D474: .4byte 0x0225DDE8
	thumb_func_end ov68_0225D388

	thumb_func_start ov68_0225D478
ov68_0225D478: @ 0x0225D478
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r2, [sp, #0x14]
	ldr r2, [sp, #0x44]
	adds r4, r0, #0
	str r2, [sp, #0x44]
	adds r2, r4, #0
	adds r2, #0x60
	ldrh r2, [r2]
	adds r7, r1, #0
	adds r5, r3, #0
	ldr r6, [sp, #0x40]
	cmp r2, #0x16
	bls _0225D496
	b _0225D85C
_0225D496:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0225D4A2: @ jump table
	.2byte _0225D4D0 - _0225D4A2 - 2 @ case 0
	.2byte _0225D4FE - _0225D4A2 - 2 @ case 1
	.2byte _0225D51C - _0225D4A2 - 2 @ case 2
	.2byte _0225D54A - _0225D4A2 - 2 @ case 3
	.2byte _0225D578 - _0225D4A2 - 2 @ case 4
	.2byte _0225D5D0 - _0225D4A2 - 2 @ case 5
	.2byte _0225D5E2 - _0225D4A2 - 2 @ case 6
	.2byte _0225D622 - _0225D4A2 - 2 @ case 7
	.2byte _0225D646 - _0225D4A2 - 2 @ case 8
	.2byte _0225D66C - _0225D4A2 - 2 @ case 9
	.2byte _0225D68C - _0225D4A2 - 2 @ case 10
	.2byte _0225D6A8 - _0225D4A2 - 2 @ case 11
	.2byte _0225D6C6 - _0225D4A2 - 2 @ case 12
	.2byte _0225D6D6 - _0225D4A2 - 2 @ case 13
	.2byte _0225D704 - _0225D4A2 - 2 @ case 14
	.2byte _0225D722 - _0225D4A2 - 2 @ case 15
	.2byte _0225D750 - _0225D4A2 - 2 @ case 16
	.2byte _0225D77E - _0225D4A2 - 2 @ case 17
	.2byte _0225D7E0 - _0225D4A2 - 2 @ case 18
	.2byte _0225D7F2 - _0225D4A2 - 2 @ case 19
	.2byte _0225D804 - _0225D4A2 - 2 @ case 20
	.2byte _0225D826 - _0225D4A2 - 2 @ case 21
	.2byte _0225D832 - _0225D4A2 - 2 @ case 22
_0225D4D0:
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _0225D4DC
	movs r2, #0x67
	b _0225D4DE
_0225D4DC:
	movs r2, #0x69
_0225D4DE:
	adds r0, r7, #0
	movs r1, #0
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #1
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D4FE:
	adds r0, #0x88
	bl ov68_0225DC40
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #2
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D51C:
	ldr r0, _0225D848 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _0225D528
	b _0225D860
_0225D528:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x68
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #3
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D54A:
	adds r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	bne _0225D556
	movs r2, #0x6b
	b _0225D558
_0225D556:
	movs r2, #0x6c
_0225D558:
	adds r0, r7, #0
	movs r1, #0
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #4
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D578:
	ldr r0, [r6, #4]
	bl FUN_0222E3BC
	add r1, sp, #0x20
	bl FUN_0222E908
	ldr r0, [r6, #4]
	bl FUN_0222E338
	adds r1, r0, #0
	ldr r0, [r6, #4]
	bl FUN_0222E924
	add r1, sp, #0x20
	str r1, [sp]
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	ldr r1, _0225D84C @ =0x00090A00
	adds r2, r7, #0
	str r1, [sp, #8]
	ldr r1, _0225D850 @ =0x000D0E00
	str r1, [sp, #0xc]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r1, #0x88
	bl ov68_0225D8F0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc8
	movs r3, #1
	bl ov68_0225DA30
	movs r0, #0x17
	lsls r0, r0, #6
	bl FUN_02005748
	movs r0, #5
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D5D0:
	ldr r1, [sp, #0x14]
	bl ov68_0225DA74
	cmp r0, #1
	bne _0225D65A
	movs r0, #6
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D5E2:
	ldr r0, _0225D848 @ =0x021BF67C
	movs r1, #1
	ldr r0, [r0, #0x48]
	tst r0, r1
	beq _0225D65A
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r2, [r0]
	subs r0, r1, #2
	cmp r2, r0
	beq _0225D600
	movs r0, #7
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D600:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x70
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #0x14
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D622:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x6f
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D218
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x44]
	adds r0, r5, #0
	bl ov68_0225D304
	movs r0, #8
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D646:
	ldr r1, [sp, #0x44]
	adds r0, r5, #0
	bl ov68_0225D330
	cmp r0, #0
	beq _0225D65C
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0225D664
_0225D65A:
	b _0225D860
_0225D65C:
	movs r0, #9
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D664:
	movs r0, #0x14
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D66C:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x44]
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0xa
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D68C:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225D72C
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x44]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov68_0225DB3C
	movs r0, #0xb
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D6A8:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #0xc
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D6C6:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225D72C
	movs r0, #0xd
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D6D6:
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	bne _0225D6E2
	movs r2, #0x71
	b _0225D6E4
_0225D6E2:
	movs r2, #0x73
_0225D6E4:
	adds r0, r7, #0
	movs r1, #0
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #0xe
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D704:
	adds r0, #0xa8
	bl ov68_0225DC40
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #0xf
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D722:
	ldr r0, _0225D848 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _0225D72E
_0225D72C:
	b _0225D860
_0225D72E:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x72
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #0x10
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D750:
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r0, #0
	bne _0225D75C
	movs r2, #0x75
	b _0225D75E
_0225D75C:
	movs r2, #0x76
_0225D75E:
	adds r0, r7, #0
	movs r1, #0
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #0x11
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D77E:
	ldr r0, [r6]
	bl FUN_02030EC4
	adds r5, r0, #0
	bl FUN_02030ED0
	str r0, [sp, #0x18]
	adds r0, r5, #0
	bl FUN_02030ED4
	str r0, [sp, #0x1c]
	ldr r0, [r6, #4]
	bl FUN_0222E338
	adds r1, r0, #0
	ldr r0, [r6, #4]
	bl FUN_0222E924
	add r1, sp, #0x18
	str r1, [sp]
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x14]
	str r1, [sp, #4]
	ldr r1, _0225D854 @ =0x000B0C00
	adds r2, r7, #0
	str r1, [sp, #8]
	ldr r1, _0225D858 @ =0x000F0E00
	str r1, [sp, #0xc]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r1, #0xa8
	bl ov68_0225D8F0
	adds r1, r4, #0
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xdc
	movs r3, #2
	bl ov68_0225DA30
	movs r0, #0x17
	lsls r0, r0, #6
	bl FUN_02005748
	movs r0, #0x12
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D7E0:
	ldr r1, [sp, #0x14]
	bl ov68_0225DA74
	cmp r0, #1
	bne _0225D860
	movs r0, #0x13
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D7F2:
	ldr r0, _0225D848 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0225D860
	movs r0, #0x14
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D804:
	adds r0, r7, #0
	movs r1, #0
	movs r2, #0x78
	bl ov68_0225CBEC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov68_0225D1B4
	adds r0, r4, #0
	movs r1, #0x15
	adds r0, #0x62
	strh r1, [r0]
	movs r0, #0x16
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
_0225D826:
	adds r0, r5, #0
	bl ov68_0225D2CC
	add sp, #0x28
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0225D832:
	adds r0, r5, #0
	bl ov68_0225D2B4
	cmp r0, #1
	bne _0225D860
	adds r0, r4, #0
	adds r0, #0x62
	ldrh r0, [r0]
	adds r4, #0x60
	strh r0, [r4]
	b _0225D860
	.align 2, 0
_0225D848: .4byte 0x021BF67C
_0225D84C: .4byte 0x00090A00
_0225D850: .4byte 0x000D0E00
_0225D854: .4byte 0x000B0C00
_0225D858: .4byte 0x000F0E00
_0225D85C:
	bl FUN_02022974
_0225D860:
	movs r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov68_0225D478

	thumb_func_start ov68_0225D868
ov68_0225D868: @ 0x0225D868
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x88
	bl ov68_0225DC24
	adds r0, r5, #0
	adds r0, #0xa8
	bl ov68_0225DC24
	adds r0, r5, #0
	adds r0, #0x80
	ldr r0, [r0]
	bl FUN_020181C4
	adds r0, r5, #0
	movs r4, #0
	adds r0, #0x80
	str r4, [r0]
_0225D88C:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #6
	blt _0225D88C
	pop {r3, r4, r5, pc}
	thumb_func_end ov68_0225D868

	thumb_func_start ov68_0225D89C
ov68_0225D89C: @ 0x0225D89C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	adds r7, r2, #0
	movs r1, #0
	adds r5, r0, #0
	adds r4, r3, #0
	bl FUN_0201ADA4
	adds r0, r6, #0
	movs r1, #0
	adds r2, r7, #0
	bl ov68_0225CBEC
	adds r6, r0, #0
	movs r0, #1
	adds r1, r6, #0
	movs r2, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r4, #0x90
	movs r0, #0
	subs r3, r4, r3
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	lsrs r3, r3, #1
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov68_0225D89C

	thumb_func_start ov68_0225D8F0
ov68_0225D8F0: @ 0x0225D8F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r0, #0
	str r1, [sp, #0x20]
	adds r0, #0x10
	movs r1, #0
	str r2, [sp, #0x10]
	ldr r7, [sp, #0x38]
	ldr r4, [sp, #0x40]
	bl FUN_0201ADA4
	adds r0, r6, #0
	adds r0, #0x50
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	movs r2, #0
	bl ov68_0225DC58
	movs r3, #0
	adds r2, r0, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	adds r0, r6, #0
	str r4, [sp, #8]
	adds r0, #0x10
	movs r1, #1
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	movs r2, #1
	bl ov68_0225DC58
	adds r2, r0, #0
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	adds r0, r6, #0
	str r4, [sp, #8]
	movs r3, #0
	adds r0, #0x10
	movs r1, #1
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	movs r2, #2
	bl ov68_0225DC58
	adds r2, r0, #0
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	adds r0, r6, #0
	str r4, [sp, #8]
	movs r3, #0
	adds r0, #0x10
	movs r1, #1
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x20]
	ldr r1, [r7]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _0225DA1C
	ldr r0, [r7, #4]
	cmp r0, #3
	bhs _0225DA1C
	ldr r0, [sp, #0x48]
	cmp r0, #1
	bne _0225D996
	ldr r0, [sp, #0x44]
	str r0, [sp, #0x14]
	b _0225D998
_0225D996:
	str r4, [sp, #0x14]
_0225D998:
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x3c]
	movs r1, #0
	bl ov68_0225CC78
	ldr r0, [sp, #0x10]
	movs r1, #0
	movs r2, #0x6e
	bl ov68_0225CBEC
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	movs r0, #1
	movs r2, #0
	bl FUN_02002D7C
	str r0, [sp, #0x1c]
	movs r1, #0
	ldr r3, [sp, #0x1c]
	movs r5, #0x60
	subs r5, r5, r3
	lsrs r3, r5, #0x1f
	adds r3, r5, r3
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	adds r0, r6, #0
	str r1, [sp, #0xc]
	adds r0, #0x50
	movs r1, #1
	asrs r3, r3, #1
	bl FUN_0201D78C
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x10]
	ldr r2, [r7, #4]
	bl ov68_0225DC58
	adds r5, r0, #0
	movs r0, #1
	adds r1, r5, #0
	movs r2, #0
	bl FUN_02002D7C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r4, #0x68
	subs r4, r4, r3
	lsrs r3, r4, #0x1f
	adds r3, r4, r3
	adds r0, r6, #0
	asrs r3, r3, #1
	str r1, [sp, #0xc]
	adds r0, #0x50
	movs r1, #1
	adds r2, r5, #0
	adds r3, #0x60
	bl FUN_0201D78C
_0225DA1C:
	adds r0, r6, #0
	adds r0, #0x50
	bl FUN_0201A9A4
	adds r6, #0x10
	adds r0, r6, #0
	bl FUN_0201A9A4
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov68_0225D8F0

	thumb_func_start ov68_0225DA30
ov68_0225DA30: @ 0x0225DA30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r0, r3, #0x18
	movs r4, #0
	lsrs r0, r0, #0x18
	str r1, [sp]
	str r4, [r6, #0x64]
	adds r5, r6, #0
	str r0, [sp, #4]
_0225DA44:
	movs r0, #0
	str r0, [r5, #0x68]
	ldr r0, [sp]
	adds r1, r4, #0
	movs r2, #0x50
	bl ov68_0225DCA4
	str r0, [r5, #0x74]
	adds r0, r4, #2
	lsls r7, r0, #4
	ldr r1, [sp, #4]
	adds r0, r6, r7
	bl FUN_0201C2B4
	adds r0, r6, r7
	movs r1, #0
	bl FUN_0201ADA4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0225DA44
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov68_0225DA30

	thumb_func_start ov68_0225DA74
ov68_0225DA74: @ 0x0225DA74
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	ldr r0, [r6, #0x64]
	cmp r0, #0x14
	blt _0225DA86
	add sp, #0x2c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225DA86:
	adds r1, r0, #1
	movs r0, #0x50
	str r1, [r6, #0x64]
	muls r0, r1, r0
	movs r1, #0x14
	blx FUN_020E1F6C
	str r0, [sp, #0x24]
	movs r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r6, [sp, #0x18]
_0225DA9E:
	ldr r0, [sp, #0x18]
	ldr r2, [r0, #0x74]
	ldr r0, [r0, #0x68]
	cmp r0, r2
	bne _0225DAB0
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	b _0225DB18
_0225DAB0:
	ldr r1, [sp, #0x24]
	cmp r2, r1
	blt _0225DABE
	subs r4, r1, r0
	adds r2, r1, #0
	ldr r1, [sp, #0x18]
	b _0225DAC2
_0225DABE:
	ldr r1, [sp, #0x18]
	subs r4, r2, r0
_0225DAC2:
	movs r5, #0
	str r2, [r1, #0x68]
	cmp r4, #0
	ble _0225DB0C
	ldr r1, [sp, #0x20]
	adds r0, r0, #4
	adds r1, r1, #2
	lsls r7, r1, #4
	str r0, [sp, #0x28]
_0225DAD4:
	movs r0, #1
	lsls r0, r0, #8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	adds r1, r6, #0
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp, #0x14]
	adds r1, #0x84
	ldr r1, [r1]
	adds r0, r6, r7
	ldr r1, [r1, #0x14]
	movs r2, #0xf7
	movs r3, #0x10
	bl FUN_0201ADDC
	adds r5, r5, #1
	cmp r5, r4
	blt _0225DAD4
_0225DB0C:
	ldr r0, [sp, #0x20]
	adds r0, r0, #2
	lsls r0, r0, #4
	adds r0, r6, r0
	bl FUN_0201A9A4
_0225DB18:
	ldr r0, [sp, #0x18]
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #3
	blt _0225DA9E
	ldr r0, [sp, #0x1c]
	cmp r0, #3
	bne _0225DB34
	add sp, #0x2c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225DB34:
	movs r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov68_0225DA74

	thumb_func_start ov68_0225DB3C
ov68_0225DB3C: @ 0x0225DB3C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	adds r7, r0, #0
	str r4, [sp, #8]
	movs r0, #5
	str r3, [sp, #0xc]
	lsls r0, r0, #6
	ldr r0, [r2, r0]
	str r1, [sp, #0x10]
	ldr r2, [r2]
	movs r1, #0xcb
	adds r3, r4, #0
	bl FUN_0200710C
	adds r5, r7, #0
	adds r6, r4, #0
_0225DB62:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A954
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #6
	blt _0225DB62
	ldr r1, [sp, #0x10]
	ldr r3, _0225DB88 @ =0x00050600
	adds r0, r7, #0
	movs r2, #0x77
	bl ov68_0225D89C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225DB88: .4byte 0x00050600
	thumb_func_end ov68_0225DB3C

	thumb_func_start ov68_0225DB8C
ov68_0225DB8C: @ 0x0225DB8C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	adds r7, r2, #0
	str r1, [sp]
	lsls r0, r0, #8
	adds r1, r7, #0
	bl FUN_02023790
	str r0, [r5, #0x10]
	movs r6, #0
	adds r4, r5, #0
_0225DBA4:
	movs r0, #1
	lsls r0, r0, #8
	adds r1, r7, #0
	bl FUN_02023790
	str r0, [r4, #0x14]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _0225DBA4
	ldr r0, [sp]
	cmp r0, #1
	bne _0225DBC2
	movs r6, #0
	b _0225DBC4
_0225DBC2:
	movs r6, #4
_0225DBC4:
	adds r0, r6, #2
	bl FUN_02233454
	str r0, [r5, #8]
	adds r0, r6, #1
	bl FUN_02233454
	str r0, [r5]
	adds r0, r6, #0
	bl FUN_02233454
	str r0, [r5, #4]
	adds r0, r6, #3
	bl FUN_02233454
	str r0, [r5, #0xc]
	cmp r0, #1
	bne _0225DC20
	adds r0, r6, #0
	bl FUN_02233538
	adds r4, r0, #0
	bne _0225DBF6
	bl FUN_02022974
_0225DBF6:
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl FUN_02023D28
	movs r4, #0
	adds r7, r6, #1
_0225DC02:
	adds r0, r7, r4
	bl FUN_02233538
	adds r6, r0, #0
	bne _0225DC10
	bl FUN_02022974
_0225DC10:
	ldr r0, [r5, #0x14]
	adds r1, r6, #0
	bl FUN_02023D28
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0225DC02
_0225DC20:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov68_0225DB8C

	thumb_func_start ov68_0225DC24
ov68_0225DC24: @ 0x0225DC24
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	bl FUN_020237BC
	movs r4, #0
_0225DC30:
	ldr r0, [r5, #0x14]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0225DC30
	pop {r3, r4, r5, pc}
	thumb_func_end ov68_0225DC24

	thumb_func_start ov68_0225DC40
ov68_0225DC40: @ 0x0225DC40
	push {r3, lr}
	adds r2, r0, #0
	ldr r0, [r2, #0xc]
	cmp r0, #0
	bne _0225DC54
	adds r0, r1, #0
	ldr r1, [r2]
	bl ov68_0225CC18
	pop {r3, pc}
_0225DC54:
	ldr r0, [r2, #0x10]
	pop {r3, pc}
	thumb_func_end ov68_0225DC40

	thumb_func_start ov68_0225DC58
ov68_0225DC58: @ 0x0225DC58
	push {r3, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0xc]
	cmp r0, #0
	bne _0225DC6C
	adds r0, r1, #0
	ldr r1, [r3]
	bl ov68_0225CC44
	pop {r3, pc}
_0225DC6C:
	lsls r0, r2, #2
	adds r0, r3, r0
	ldr r0, [r0, #0x14]
	pop {r3, pc}
	thumb_func_end ov68_0225DC58

	thumb_func_start ov68_0225DC74
ov68_0225DC74: @ 0x0225DC74
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r6, #0
	str r6, [r5, #0xc]
	adds r4, r5, #0
	str r6, [r5, #0x10]
	adds r4, #0xc
	adds r7, r6, #0
_0225DC84:
	adds r0, r6, #0
	adds r0, #8
	bl FUN_02233454
	str r0, [r5]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	adds r0, r1, r0
	adcs r2, r7
	str r0, [r4]
	adds r6, r6, #1
	adds r5, r5, #4
	str r2, [r4, #4]
	cmp r6, #3
	blt _0225DC84
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov68_0225DC74

	thumb_func_start ov68_0225DCA4
ov68_0225DCA4: @ 0x0225DCA4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #3
	blo _0225DCB4
	bl FUN_02022974
_0225DCB4:
	lsls r2, r4, #2
	movs r1, #0
	ldr r2, [r5, r2]
	adds r0, r6, #0
	adds r3, r1, #0
	blx FUN_020E1F1C
	ldr r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	blx FUN_020E1ED4
	pop {r4, r5, r6, pc}
	thumb_func_end ov68_0225DCA4

	thumb_func_start ov68_0225DCCC
ov68_0225DCCC: @ 0x0225DCCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	str r1, [sp]
	adds r2, r6, #0
	movs r1, #0x14
	movs r0, #0
_0225DCDA:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0225DCDA
	adds r4, r6, #0
	movs r5, #0
	adds r4, #0xc
_0225DCE8:
	ldr r0, [sp]
	adds r1, r5, #0
	bl FUN_0222E374
	adds r7, r0, #0
	beq _0225DD2A
	bl FUN_0222E850
	str r0, [sp, #4]
	adds r0, r7, #0
	add r1, sp, #8
	bl FUN_0222E908
	ldr r1, [sp, #4]
	movs r0, #0
	bl FUN_022335C0
	cmp r0, #1
	bne _0225DD2A
	ldr r0, [sp, #0xc]
	cmp r0, #3
	bhs _0225DD2A
	lsls r1, r0, #2
	ldr r0, [r6, r1]
	adds r0, r0, #1
	str r0, [r6, r1]
	ldr r0, [r4]
	ldr r1, [r4, #4]
	adds r2, r0, #1
	ldr r0, _0225DD34 @ =0x00000000
	str r2, [r4]
	adcs r1, r0
	str r1, [r4, #4]
_0225DD2A:
	adds r5, r5, #1
	cmp r5, #0x14
	blt _0225DCE8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225DD34: .4byte 0x00000000
	thumb_func_end ov68_0225DCCC
	@ 0x0225DD38
