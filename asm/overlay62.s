	.include "macros/function.inc"


	.text

	thumb_func_start ov62_0222F2C0
ov62_0222F2C0: @ 0x0222F2C0
	push {r3, r4, r5, lr}
	sub sp, #0x28
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
	ldr r0, _0222F500 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0222F504 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #4
	movs r1, #0x66
	bl FUN_0201DBEC
	movs r0, #0xa2
	movs r1, #0x66
	bl FUN_02006C24
	str r0, [r4, #0x14]
	movs r0, #0x66
	bl FUN_02018340
	str r0, [r4, #0x24]
	movs r0, #0x66
	bl FUN_02002F38
	str r0, [r4, #0x28]
	movs r0, #4
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	movs r0, #0x66
	movs r2, #1
	adds r3, r1, #0
	bl FUN_02024220
	str r0, [r4, #0x60]
	movs r0, #0x66
	bl FUN_0200762C
	str r0, [r4, #0x64]
	blx FUN_020A73C0
	ldr r0, [r4, #0x28]
	movs r1, #1
	bl FUN_02003858
	movs r2, #2
	ldr r0, [r4, #0x28]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x66
	bl FUN_02002F70
	movs r1, #1
	ldr r0, [r4, #0x28]
	lsls r2, r1, #9
	movs r3, #0x66
	bl FUN_02002F70
	movs r1, #2
	ldr r0, [r4, #0x28]
	lsls r2, r1, #8
	movs r3, #0x66
	bl FUN_02002F70
	movs r2, #2
	ldr r0, [r4, #0x28]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x66
	bl FUN_02002F70
	ldr r0, [r4, #0x24]
	bl ov62_0222F670
	adds r0, r4, #0
	bl ov62_0222F848
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	movs r0, #1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl ov62_0222FF40
	movs r0, #1
	bl FUN_02002B20
	ldr r0, _0222F508 @ =ov62_0222F8E4
	adds r1, r4, #0
	bl FUN_02017798
	ldr r0, [r4]
	cmp r0, #0
	beq _0222F406
	adds r0, r4, #0
	bl ov62_02241130
	ldr r1, _0222F50C @ =0x00200010
	movs r0, #1
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r1, _0222F50C @ =0x00200010
	movs r0, #2
	bl FUN_0200966C
	movs r0, #2
	bl FUN_02009704
	bl FUN_02039734
	movs r0, #1
	movs r1, #0x66
	bl FUN_020397C8
	movs r0, #0x66
	bl FUN_020394A8
	add r1, sp, #0x10
	adds r5, r0, #0
	blx FUN_020A71B0
	movs r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0xc]
	movs r2, #2
	movs r3, #0xe0
	bl FUN_02002FBC
	movs r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x10]
	ldr r0, [r4, #0x28]
	ldr r1, [r1, #0xc]
	movs r2, #3
	movs r3, #0xe0
	bl FUN_02002FBC
	adds r0, r5, #0
	bl FUN_020181C4
_0222F406:
	movs r0, #0xc
	str r0, [sp, #0x14]
	movs r0, #0x66
	str r0, [sp, #0x18]
	ldr r0, [r4]
	movs r1, #1
	str r0, [sp, #0x20]
	lsls r0, r1, #0x14
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x18]
	mov r5, sp
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	subs r5, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	add r3, sp, #0x14
	str r1, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldm r3!, {r0, r1}
	adds r2, r5, #0
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldm r5!, {r0, r1, r2, r3}
	bl FUN_0208B284
	movs r1, #0x6f
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	bl FUN_0208B878
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B8B0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #2
	str r0, [sp, #0x1c]
	lsls r0, r0, #0x13
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x18]
	mov r5, sp
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	subs r5, #0x10
	str r0, [sp, #8]
	ldr r0, [r4, #0x28]
	add r3, sp, #0x14
	str r0, [sp, #0xc]
	ldm r3!, {r0, r1}
	adds r2, r5, #0
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldm r5!, {r0, r1, r2, r3}
	bl FUN_0208B284
	ldr r1, _0222F510 @ =0x000006F4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	adds r1, r4, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	bl FUN_0208B878
	ldr r0, _0222F510 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B8B0
	ldr r0, _0222F510 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	movs r0, #0x14
	movs r1, #0x66
	bl FUN_02012744
	str r0, [r4, #0x50]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xa
	movs r3, #0x66
	bl FUN_0200B144
	str r0, [r4, #0x48]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0x14
	movs r3, #0x66
	bl FUN_0200B144
	str r0, [r4, #0x4c]
	adds r0, r4, #0
	bl ov62_022338A8
	adds r0, r4, #0
	bl FUN_0208C06C
	adds r0, r4, #0
	bl ov62_022300D8
	adds r0, r4, #0
	bl ov62_022337D4
	add sp, #0x28
	pop {r3, r4, r5, pc}
	nop
_0222F500: .4byte 0xFFFFE0FF
_0222F504: .4byte 0x04001000
_0222F508: .4byte ov62_0222F8E4
_0222F50C: .4byte 0x00200010
_0222F510: .4byte 0x000006F4
	thumb_func_end ov62_0222F2C0

	thumb_func_start ov62_0222F514
ov62_0222F514: @ 0x0222F514
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_02019044
	ldr r0, [r5, #0x24]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r5, #0x24]
	movs r1, #4
	bl FUN_02019044
	ldr r0, [r5, #0x24]
	movs r1, #5
	bl FUN_02019044
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019044
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019044
	ldr r0, [r5, #0x24]
	bl FUN_020181C4
	ldr r0, [r5, #0x28]
	movs r1, #0
	bl FUN_02002FA0
	ldr r0, [r5, #0x28]
	movs r1, #1
	bl FUN_02002FA0
	ldr r0, [r5, #0x28]
	movs r1, #2
	bl FUN_02002FA0
	ldr r0, [r5, #0x28]
	movs r1, #3
	bl FUN_02002FA0
	ldr r0, [r5, #0x28]
	bl FUN_02002F54
	ldr r0, [r5]
	cmp r0, #0
	bne _0222F5DE
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0202783C
	adds r1, r5, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	bl FUN_0202798C
_0222F5DE:
	ldr r0, [r5, #0x14]
	bl FUN_02006CA8
	ldr r0, _0222F664 @ =0x0000416C
	ldr r0, [r5, r0]
	bl FUN_0200DA58
	ldr r0, [r5, #0x18]
	ldr r1, [r5, #0x1c]
	bl FUN_0200D0B0
	ldr r0, [r5, #0x18]
	bl FUN_0200C8D4
	bl FUN_02039794
	bl FUN_0201E530
	ldr r0, [r5, #0x2c]
	bl FUN_02024034
	movs r0, #0
	bl FUN_02002B20
	ldr r7, _0222F668 @ =0x0000087C
	movs r6, #0
	adds r4, r5, #0
_0222F614:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0222F61E
	bl FUN_020181C4
_0222F61E:
	ldr r0, _0222F66C @ =0x0000088C
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222F62A
	bl FUN_020181C4
_0222F62A:
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0222F614
	ldr r0, [r5, #0x50]
	bl FUN_020127BC
	ldr r0, [r5, #0x48]
	bl FUN_0200B190
	ldr r0, [r5, #0x4c]
	bl FUN_0200B190
	ldr r0, [r5, #0x60]
	bl FUN_020242C4
	ldr r0, [r5, #0x64]
	bl FUN_02007B6C
	adds r0, r5, #0
	bl ov62_022411EC
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_0201DC3C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0222F664: .4byte 0x0000416C
_0222F668: .4byte 0x0000087C
_0222F66C: .4byte 0x0000088C
	thumb_func_end ov62_0222F514

	thumb_func_start ov62_0222F670
ov62_0222F670: @ 0x0222F670
	push {r4, r5, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	bl FUN_0201FF00
	ldr r5, _0222F7F4 @ =0x0224872C
	add r3, sp, #0x2c
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0222F7F8 @ =0x02248788
	add r3, sp, #4
	movs r2, #5
_0222F694:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0222F694
	add r0, sp, #4
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
	movs r1, #0
	ldr r2, _0222F7FC @ =0x022487B0
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_020183C4
	ldr r2, _0222F800 @ =0x022487CC
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	ldr r2, _0222F804 @ =0x022487E8
	adds r0, r4, #0
	movs r1, #2
	movs r3, #0
	bl FUN_020183C4
	ldr r2, _0222F808 @ =0x02248804
	adds r0, r4, #0
	movs r1, #3
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r2, _0222F80C @ =0x02248820
	adds r0, r4, #0
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	ldr r2, _0222F810 @ =0x0224883C
	adds r0, r4, #0
	movs r1, #5
	movs r3, #0
	bl FUN_020183C4
	ldr r2, _0222F814 @ =0x02248858
	adds r0, r4, #0
	movs r1, #6
	movs r3, #0
	bl FUN_020183C4
	ldr r2, _0222F818 @ =0x02248874
	adds r0, r4, #0
	movs r1, #7
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #6
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #7
	bl FUN_02019EBC
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #1
	bl ov62_0222F824
	movs r0, #8
	str r0, [sp]
	ldr r0, _0222F81C @ =0x04000050
	movs r1, #4
	movs r2, #0x12
	movs r3, #7
	blx FUN_020BF55C
	movs r0, #8
	str r0, [sp]
	ldr r0, _0222F820 @ =0x04001050
	movs r1, #4
	movs r2, #0x12
	movs r3, #7
	blx FUN_020BF55C
	add sp, #0x3c
	pop {r4, r5, pc}
	.align 2, 0
_0222F7F4: .4byte 0x0224872C
_0222F7F8: .4byte 0x02248788
_0222F7FC: .4byte 0x022487B0
_0222F800: .4byte 0x022487CC
_0222F804: .4byte 0x022487E8
_0222F808: .4byte 0x02248804
_0222F80C: .4byte 0x02248820
_0222F810: .4byte 0x0224883C
_0222F814: .4byte 0x02248858
_0222F818: .4byte 0x02248874
_0222F81C: .4byte 0x04000050
_0222F820: .4byte 0x04001050
	thumb_func_end ov62_0222F670

	thumb_func_start ov62_0222F824
ov62_0222F824: @ 0x0222F824
	ldr r1, _0222F82C @ =0x021BF6DC
	ldr r3, _0222F830 @ =FUN_0201FFE8
	strb r0, [r1, #5]
	bx r3
	.align 2, 0
_0222F82C: .4byte 0x021BF6DC
_0222F830: .4byte FUN_0201FFE8
	thumb_func_end ov62_0222F824

	thumb_func_start ov62_0222F834
ov62_0222F834: @ 0x0222F834
	push {r3, lr}
	ldr r0, [r0, #0x24]
	ldr r2, _0222F844 @ =0x022487E8
	movs r1, #2
	movs r3, #0
	bl FUN_020183C4
	pop {r3, pc}
	.align 2, 0
_0222F844: .4byte 0x022487E8
	thumb_func_end ov62_0222F834

	thumb_func_start ov62_0222F848
ov62_0222F848: @ 0x0222F848
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	adds r4, r0, #0
	movs r0, #0x66
	bl FUN_0200C6E4
	add r2, sp, #0x2c
	ldr r5, _0222F8D8 @ =0x02248768
	str r0, [r4, #0x18]
	ldm r5!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	ldr r6, _0222F8DC @ =0x0224873C
	stm r2!, {r0, r1}
	add r5, sp, #0x18
	ldm r6!, {r0, r1}
	adds r2, r5, #0
	stm r5!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r5!, {r0, r1}
	ldr r0, [r6]
	adds r1, r3, #0
	str r0, [r5]
	ldr r0, [r4, #0x18]
	movs r3, #0x20
	bl FUN_0200C73C
	ldr r3, _0222F8E0 @ =0x02248750
	add r2, sp, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r4, #0x18]
	bl FUN_0200C704
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	movs r2, #0xc0
	bl FUN_0200C7C0
	cmp r0, #0
	bne _0222F8B2
	bl FUN_02022974
_0222F8B2:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r2, sp, #0
	bl FUN_0200CB30
	cmp r0, #0
	bne _0222F8C4
	bl FUN_02022974
_0222F8C4:
	ldr r0, [r4, #0x18]
	bl FUN_0200C738
	movs r2, #1
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222F8D8: .4byte 0x02248768
_0222F8DC: .4byte 0x0224873C
_0222F8E0: .4byte 0x02248750
	thumb_func_end ov62_0222F848

	thumb_func_start ov62_0222F8E4
ov62_0222F8E4: @ 0x0222F8E4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	ldr r0, [r4, #0x28]
	bl FUN_02003694
	ldr r0, [r4, #0x24]
	bl FUN_0201C2B8
	ldr r3, _0222F908 @ =0x027E0000
	ldr r1, _0222F90C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0222F908: .4byte 0x027E0000
_0222F90C: .4byte 0x00003FF8
	thumb_func_end ov62_0222F8E4

	thumb_func_start ov62_0222F910
ov62_0222F910: @ 0x0222F910
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0x12
	bls _0222F91E
	b _0222FAEA
_0222F91E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0222F92A: @ jump table
	.2byte _0222F950 - _0222F92A - 2 @ case 0
	.2byte _0222F988 - _0222F92A - 2 @ case 1
	.2byte _0222F9A0 - _0222F92A - 2 @ case 2
	.2byte _0222F9B8 - _0222F92A - 2 @ case 3
	.2byte _0222F9D0 - _0222F92A - 2 @ case 4
	.2byte _0222F9E8 - _0222F92A - 2 @ case 5
	.2byte _0222FA00 - _0222F92A - 2 @ case 6
	.2byte _0222FA18 - _0222F92A - 2 @ case 7
	.2byte _0222FA30 - _0222F92A - 2 @ case 8
	.2byte _0222FA30 - _0222F92A - 2 @ case 9
	.2byte _0222FA48 - _0222F92A - 2 @ case 10
	.2byte _0222FA48 - _0222F92A - 2 @ case 11
	.2byte _0222FA60 - _0222F92A - 2 @ case 12
	.2byte _0222FA78 - _0222F92A - 2 @ case 13
	.2byte _0222FA90 - _0222F92A - 2 @ case 14
	.2byte _0222FAA8 - _0222F92A - 2 @ case 15
	.2byte _0222FAC0 - _0222F92A - 2 @ case 16
	.2byte _0222FACC - _0222F92A - 2 @ case 17
	.2byte _0222FAE4 - _0222F92A - 2 @ case 18
_0222F950:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB0C @ =0x02248BD8
	ldr r1, [r1, r2]
	blx r1
	adds r6, r0, #0
	adds r0, r4, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r5, #0
	bl ov62_0222FB44
	cmp r6, #0
	bne _0222F96E
	b _0222FAEE
_0222F96E:
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bne _0222F97E
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0222FB60
	b _0222FAEE
_0222F97E:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0222FB60
	b _0222FAEE
_0222F988:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB10 @ =0x02248BF0
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222F9A0:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB14 @ =0x02248C28
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222F9B8:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB18 @ =0x02248C50
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222F9D0:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB1C @ =0x02248D08
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222F9E8:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB20 @ =0x02248D20
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA00:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB24 @ =0x02248E24
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA18:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB28 @ =0x02248E50
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA30:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB2C @ =0x02248F58
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA48:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB30 @ =0x022490DC
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA60:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB30 @ =0x022490DC
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA78:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB34 @ =0x02249680
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FA90:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB38 @ =0x0224962C
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FAA8:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB3C @ =0x02249618
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FAC0:
	movs r1, #0xff
	movs r2, #1
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FACC:
	ldr r1, [r4, #4]
	lsls r2, r1, #2
	ldr r1, _0222FB40 @ =0x02249790
	ldr r1, [r1, r2]
	blx r1
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0x10
	adds r3, r5, #0
	bl ov62_0222FB44
	b _0222FAEE
_0222FAE4:
	bl ov62_022348FC
	b _0222FAEE
_0222FAEA:
	movs r0, #1
	pop {r4, r5, r6, pc}
_0222FAEE:
	bl FUN_020241B4
	ldr r0, [r4, #0x64]
	bl FUN_02007768
	movs r0, #1
	movs r1, #0
	bl FUN_020241BC
	adds r0, r4, #0
	bl ov62_022411D4
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_0222FB0C: .4byte 0x02248BD8
_0222FB10: .4byte 0x02248BF0
_0222FB14: .4byte 0x02248C28
_0222FB18: .4byte 0x02248C50
_0222FB1C: .4byte 0x02248D08
_0222FB20: .4byte 0x02248D20
_0222FB24: .4byte 0x02248E24
_0222FB28: .4byte 0x02248E50
_0222FB2C: .4byte 0x02248F58
_0222FB30: .4byte 0x022490DC
_0222FB34: .4byte 0x02249680
_0222FB38: .4byte 0x0224962C
_0222FB3C: .4byte 0x02249618
_0222FB40: .4byte 0x02249790
	thumb_func_end ov62_0222F910

	thumb_func_start ov62_0222FB44
ov62_0222FB44: @ 0x0222FB44
	push {r4, lr}
	adds r4, r0, #0
	cmp r2, #0
	beq _0222FB5C
	str r1, [r3]
	movs r1, #0
	bl ov62_0222FB60
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0222FB6C
_0222FB5C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_0222FB44

	thumb_func_start ov62_0222FB60
ov62_0222FB60: @ 0x0222FB60
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov62_0222FB60

	thumb_func_start ov62_0222FB6C
ov62_0222FB6C: @ 0x0222FB6C
	str r1, [r0, #8]
	movs r1, #0
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end ov62_0222FB6C

	thumb_func_start ov62_0222FB74
ov62_0222FB74: @ 0x0222FB74
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0208C06C
	adds r0, r4, #0
	bl ov62_02230A5C
	ldr r0, _0222FB8C @ =0x000006E4
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_0222FB8C: .4byte 0x000006E4
	thumb_func_end ov62_0222FB74

	thumb_func_start ov62_0222FB90
ov62_0222FB90: @ 0x0222FB90
	push {r4, r5, r6, lr}
	ldr r2, _0222FBF0 @ =0x000006D8
	ldr r3, _0222FBF4 @ =0x00000818
	ldr r4, [r0, r2]
	ldr r1, [r0, r3]
	lsls r4, r4, #2
	adds r5, r0, r4
	adds r4, r3, #4
	str r1, [r5, r4]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r1, [r0, r1]
	ldr r5, [r0, r3]
	adds r4, r1, #0
	ldr r1, [r0, r2]
	movs r6, #0x24
	muls r4, r6, r4
	lsls r1, r1, #2
	adds r5, r5, r4
	adds r4, r0, r1
	adds r1, r2, #0
	subs r1, #0x14
	str r5, [r4, r1]
	adds r4, r2, #0
	adds r4, #0xc
	ldr r4, [r0, r4]
	ldr r1, [r0, r3]
	adds r5, r4, #0
	muls r5, r6, r5
	adds r1, r1, r5
	ldr r1, [r1, #0x20]
	movs r4, #0
	str r1, [r0, r3]
	ldr r1, [r0, r2]
	adds r1, r1, #1
	str r1, [r0, r2]
	adds r2, #0xc
	str r4, [r0, r2]
	ldr r1, [r0, r3]
	cmp r1, #0
	bne _0222FBE6
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
_0222FBE6:
	bl ov62_0222FB74
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_0222FBF0: .4byte 0x000006D8
_0222FBF4: .4byte 0x00000818
	thumb_func_end ov62_0222FB90

	thumb_func_start ov62_0222FBF8
ov62_0222FBF8: @ 0x0222FBF8
	push {r3, lr}
	ldr r1, _0222FC14 @ =0x000006D8
	ldr r1, [r0, r1]
	lsls r1, r1, #2
	adds r2, r0, r1
	ldr r1, _0222FC18 @ =0x0000081C
	ldr r2, [r2, r1]
	subs r1, r1, #4
	str r2, [r0, r1]
	bl ov62_0222FB74
	movs r0, #1
	pop {r3, pc}
	nop
_0222FC14: .4byte 0x000006D8
_0222FC18: .4byte 0x0000081C
	thumb_func_end ov62_0222FBF8

	thumb_func_start ov62_0222FC1C
ov62_0222FC1C: @ 0x0222FC1C
	push {r3, r4, r5, lr}
	ldr r3, _0222FD34 @ =0x000006E4
	adds r4, r0, #0
	ldr r1, _0222FD38 @ =0x00000818
	ldr r5, [r4, r3]
	movs r3, #0x24
	ldr r2, [r4, r1]
	muls r3, r5, r3
	adds r2, r2, r3
	ldr r2, [r2, #0x10]
	cmp r2, #0x13
	bhi _0222FD30
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0222FC40: @ jump table
	.2byte _0222FD30 - _0222FC40 - 2 @ case 0
	.2byte _0222FD30 - _0222FC40 - 2 @ case 1
	.2byte _0222FC68 - _0222FC40 - 2 @ case 2
	.2byte _0222FD30 - _0222FC40 - 2 @ case 3
	.2byte _0222FC7E - _0222FC40 - 2 @ case 4
	.2byte _0222FC8A - _0222FC40 - 2 @ case 5
	.2byte _0222FD30 - _0222FC40 - 2 @ case 6
	.2byte _0222FD26 - _0222FC40 - 2 @ case 7
	.2byte _0222FC96 - _0222FC40 - 2 @ case 8
	.2byte _0222FCA2 - _0222FC40 - 2 @ case 9
	.2byte _0222FCAE - _0222FC40 - 2 @ case 10
	.2byte _0222FCBA - _0222FC40 - 2 @ case 11
	.2byte _0222FCC6 - _0222FC40 - 2 @ case 12
	.2byte _0222FCD2 - _0222FC40 - 2 @ case 13
	.2byte _0222FCDE - _0222FC40 - 2 @ case 14
	.2byte _0222FCEA - _0222FC40 - 2 @ case 15
	.2byte _0222FCF6 - _0222FC40 - 2 @ case 16
	.2byte _0222FD02 - _0222FC40 - 2 @ case 17
	.2byte _0222FD0E - _0222FC40 - 2 @ case 18
	.2byte _0222FD1A - _0222FC40 - 2 @ case 19
_0222FC68:
	adds r1, #0x50
	ldr r0, [r4, r1]
	movs r1, #0
	adds r2, r1, #0
	bl FUN_0208BA84
	adds r0, r4, #0
	movs r1, #2
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_0222FC7E:
	ldr r3, [r4, #0x10]
	movs r1, #2
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FC8A:
	ldr r3, [r4, #0x10]
	movs r1, #3
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FC96:
	ldr r3, [r4, #0x10]
	movs r1, #4
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCA2:
	ldr r3, [r4, #0x10]
	movs r1, #5
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCAE:
	ldr r3, [r4, #0x10]
	movs r1, #6
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCBA:
	ldr r3, [r4, #0x10]
	movs r1, #7
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCC6:
	ldr r3, [r4, #0x10]
	movs r1, #8
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCD2:
	ldr r3, [r4, #0x10]
	movs r1, #9
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCDE:
	ldr r3, [r4, #0x10]
	movs r1, #0xa
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCEA:
	ldr r3, [r4, #0x10]
	movs r1, #0xb
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FCF6:
	ldr r3, [r4, #0x10]
	movs r1, #0xc
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FD02:
	ldr r3, [r4, #0x10]
	movs r1, #0xd
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FD0E:
	ldr r3, [r4, #0x10]
	movs r1, #0xe
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FD1A:
	ldr r3, [r4, #0x10]
	movs r1, #0xf
	movs r2, #1
	bl ov62_0222FB44
	pop {r3, r4, r5, pc}
_0222FD26:
	ldr r3, [r4, #0x10]
	movs r1, #0x11
	movs r2, #1
	bl ov62_0222FB44
_0222FD30:
	pop {r3, r4, r5, pc}
	nop
_0222FD34: .4byte 0x000006E4
_0222FD38: .4byte 0x00000818
	thumb_func_end ov62_0222FC1C

	thumb_func_start ov62_0222FD3C
ov62_0222FD3C: @ 0x0222FD3C
	push {r4, r5, r6, lr}
	ldr r3, _0222FDF8 @ =0x000006E4
	adds r5, r0, #0
	ldr r1, _0222FDFC @ =0x00000818
	ldr r4, [r5, r3]
	movs r3, #0x24
	ldr r2, [r5, r1]
	muls r3, r4, r3
	adds r2, r2, r3
	ldr r4, [r2, #0x18]
	ldr r2, [r5]
	movs r6, #1
	cmp r2, #6
	bhi _0222FD72
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0222FD64: @ jump table
	.2byte _0222FD72 - _0222FD64 - 2 @ case 0
	.2byte _0222FD72 - _0222FD64 - 2 @ case 1
	.2byte _0222FDCA - _0222FD64 - 2 @ case 2
	.2byte _0222FDE0 - _0222FD64 - 2 @ case 3
	.2byte _0222FDE0 - _0222FD64 - 2 @ case 4
	.2byte _0222FD8E - _0222FD64 - 2 @ case 5
	.2byte _0222FDB2 - _0222FD64 - 2 @ case 6
_0222FD72:
	cmp r4, #3
	bhi _0222FDE0
	lsls r0, r4, #2
	adds r1, r5, r0
	ldr r0, _0222FE00 @ =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0222FDE0
	ldr r1, _0222FE04 @ =0x0000010D
	adds r0, r5, #0
	bl ov62_0223197C
	movs r6, #0
	b _0222FDE0
_0222FD8E:
	cmp r4, #0
	bne _0222FDE0
	adds r1, #0x18
	ldr r0, [r5, r1]
	bl FUN_0202A750
	adds r1, r4, #0
	bl FUN_02029CA8
	bl FUN_02029F34
	adds r6, r0, #0
	bne _0222FDE0
	ldr r1, _0222FE08 @ =0x00000122
	adds r0, r5, #0
	bl ov62_0223197C
	b _0222FDE0
_0222FDB2:
	cmp r4, #0x64
	bne _0222FDE0
	bl ov62_02231974
	cmp r0, #0
	beq _0222FDE0
	ldr r1, _0222FE0C @ =0x00000111
	adds r0, r5, #0
	bl ov62_0223197C
	movs r6, #0
	b _0222FDE0
_0222FDCA:
	ldr r2, _0222FE10 @ =0x0000270F
	cmp r4, r2
	bne _0222FDE0
	adds r1, #0x64
	ldr r1, [r5, r1]
	cmp r1, #0
	bne _0222FDE0
	movs r1, #0x81
	bl ov62_0223197C
	movs r6, #0
_0222FDE0:
	cmp r6, #0
	bne _0222FDEC
	ldr r0, _0222FE14 @ =0x00000564
	bl FUN_02005748
	b _0222FDF2
_0222FDEC:
	ldr r0, _0222FE18 @ =0x00000563
	bl FUN_02005748
_0222FDF2:
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
	nop
_0222FDF8: .4byte 0x000006E4
_0222FDFC: .4byte 0x00000818
_0222FE00: .4byte 0x0000087C
_0222FE04: .4byte 0x0000010D
_0222FE08: .4byte 0x00000122
_0222FE0C: .4byte 0x00000111
_0222FE10: .4byte 0x0000270F
_0222FE14: .4byte 0x00000564
_0222FE18: .4byte 0x00000563
	thumb_func_end ov62_0222FD3C

	thumb_func_start ov62_0222FE1C
ov62_0222FE1C: @ 0x0222FE1C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #0
	bne _0222FF1C
	ldr r0, _0222FF20 @ =0x000006E4
	str r5, [r4, r0]
	adds r0, r4, #0
	bl ov62_0222FD3C
	cmp r0, #0
	beq _0222FF1C
	cmp r5, #4
	bhi _0222FF1C
	movs r0, #0x28
	muls r0, r5, r0
	adds r1, r4, r0
	ldr r0, _0222FF24 @ =0x000005FC
	add r2, sp, #0
	ldr r0, [r1, r0]
	add r1, sp, #0
	adds r1, #2
	bl ov62_02230E74
	movs r0, #0x6f
	lsls r0, r0, #4
	add r3, sp, #0
	movs r1, #2
	ldrsh r1, [r3, r1]
	movs r2, #0
	ldrsh r2, [r3, r2]
	adds r1, #0x10
	lsls r1, r1, #0x10
	ldr r0, [r4, r0]
	asrs r1, r1, #0x10
	bl FUN_0208B948
	movs r0, #0x6f
	lsls r0, r0, #4
	add r3, sp, #0
	movs r1, #2
	ldrsh r1, [r3, r1]
	movs r2, #0
	ldrsh r2, [r3, r2]
	adds r1, #0x10
	lsls r1, r1, #0x10
	ldr r0, [r4, r0]
	asrs r1, r1, #0x10
	bl FUN_0208B8B8
	ldr r2, _0222FF20 @ =0x000006E4
	ldr r1, _0222FF28 @ =0x00000818
	ldr r0, [r4, r2]
	ldr r6, [r4, r1]
	movs r3, #0x24
	adds r5, r0, #0
	muls r5, r3, r5
	adds r0, r6, r5
	ldr r5, [r0, #0x18]
	adds r0, r1, #0
	adds r0, #0x54
	str r5, [r4, r0]
	ldr r5, [r4, r1]
	ldr r1, [r4, r2]
	adds r0, r4, #0
	adds r2, r1, #0
	muls r2, r3, r2
	adds r1, r5, r2
	ldr r1, [r1, #0x14]
	bl ov62_0222FB60
	ldr r1, _0222FF20 @ =0x000006E4
	ldr r0, _0222FF28 @ =0x00000818
	ldr r2, [r4, r1]
	movs r1, #0x24
	ldr r3, [r4, r0]
	muls r1, r2, r1
	adds r1, r3, r1
	ldr r1, [r1, #0x14]
	cmp r1, #2
	bne _0222FECE
	adds r0, #0x50
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA84
	b _0222FEE0
_0222FECE:
	adds r0, r4, #0
	bl ov62_02230014
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
_0222FEE0:
	ldr r1, _0222FF2C @ =0x0000086C
	ldr r0, _0222FF30 @ =0x000003E7
	ldr r2, [r4, r1]
	cmp r2, r0
	bne _0222FEF6
	adds r0, r4, #0
	movs r1, #0xc1
	bl ov62_02231BC4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222FEF6:
	ldr r0, _0222FF34 @ =0x0000270F
	cmp r2, r0
	bne _0222FF08
	ldr r1, _0222FF38 @ =0x0000012D
	adds r0, r4, #0
	bl ov62_02231BC4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0222FF08:
	adds r1, #0x30
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _0222FF1C
	adds r0, r4, #0
	bl ov62_02231A1C
	ldr r0, _0222FF3C @ =0x0000089C
	movs r1, #0
	str r1, [r4, r0]
_0222FF1C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0222FF20: .4byte 0x000006E4
_0222FF24: .4byte 0x000005FC
_0222FF28: .4byte 0x00000818
_0222FF2C: .4byte 0x0000086C
_0222FF30: .4byte 0x000003E7
_0222FF34: .4byte 0x0000270F
_0222FF38: .4byte 0x0000012D
_0222FF3C: .4byte 0x0000089C
	thumb_func_end ov62_0222FE1C

	thumb_func_start ov62_0222FF40
ov62_0222FF40: @ 0x0222FF40
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r2, r4, #0
	ldr r0, _0222FF74 @ =0x0000060C
	movs r1, #0
	adds r2, #0x30
	adds r3, r4, #0
_0222FF50:
	adds r1, r1, #1
	str r2, [r3, r0]
	adds r2, r2, #4
	adds r3, #0x28
	cmp r1, #5
	blt _0222FF50
	movs r0, #0x66
	str r0, [sp]
	adds r0, r4, #0
	ldr r2, _0222FF78 @ =ov62_0222FE1C
	adds r0, #0x30
	movs r1, #5
	adds r3, r4, #0
	bl FUN_02023FCC
	str r0, [r4, #0x2c]
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_0222FF74: .4byte 0x0000060C
_0222FF78: .4byte ov62_0222FE1C
	thumb_func_end ov62_0222FF40

	thumb_func_start ov62_0222FF7C
ov62_0222FF7C: @ 0x0222FF7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, _02230008 @ =0x00000818
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _02230004
	movs r4, #0
	ldr r5, [sp]
	str r4, [sp, #4]
	adds r6, r4, #0
	add r7, sp, #8
_0222FF94:
	ldr r1, [sp]
	ldr r0, _02230008 @ =0x00000818
	ldr r0, [r1, r0]
	ldr r0, [r0, r4]
	cmp r0, #0
	bne _0222FFBA
	ldr r0, _0223000C @ =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0]
	ldr r0, _0223000C @ =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #1]
	ldr r0, _0223000C @ =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #2]
	ldr r0, _0223000C @ =0x0000060C
	ldr r0, [r5, r0]
	strb r6, [r0, #3]
	b _0222FFF6
_0222FFBA:
	ldr r0, _02230010 @ =0x000005FC
	add r1, sp, #8
	ldr r0, [r5, r0]
	adds r1, #2
	add r2, sp, #8
	bl FUN_0200D550
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _0223000C @ =0x0000060C
	ldr r0, [r5, r0]
	subs r1, #0x10
	strb r1, [r0]
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, _0223000C @ =0x0000060C
	ldr r0, [r5, r0]
	adds r1, #0x10
	strb r1, [r0, #1]
	movs r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _0223000C @ =0x0000060C
	ldr r0, [r5, r0]
	strb r1, [r0, #2]
	movs r0, #2
	ldrsh r1, [r7, r0]
	ldr r0, _0223000C @ =0x0000060C
	ldr r0, [r5, r0]
	adds r1, #0xa0
	strb r1, [r0, #3]
_0222FFF6:
	ldr r0, [sp, #4]
	adds r4, #0x24
	adds r0, r0, #1
	adds r5, #0x28
	str r0, [sp, #4]
	cmp r0, #5
	blt _0222FF94
_02230004:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02230008: .4byte 0x00000818
_0223000C: .4byte 0x0000060C
_02230010: .4byte 0x000005FC
	thumb_func_end ov62_0222FF7C

	thumb_func_start ov62_02230014
ov62_02230014: @ 0x02230014
	push {r3, r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, _0223004C @ =0x0000060C
	adds r5, r0, #0
	adds r4, r6, #0
_0223001E:
	ldr r0, _02230050 @ =0x000005FC
	add r1, sp, #0
	ldr r0, [r5, r0]
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	ldr r0, _0223004C @ =0x0000060C
	adds r6, r6, #1
	ldr r0, [r5, r0]
	strb r4, [r0]
	ldr r0, _0223004C @ =0x0000060C
	ldr r0, [r5, r0]
	strb r4, [r0, #1]
	ldr r0, _0223004C @ =0x0000060C
	ldr r0, [r5, r0]
	strb r4, [r0, #2]
	ldr r0, [r5, r7]
	adds r5, #0x28
	strb r4, [r0, #3]
	cmp r6, #5
	blt _0223001E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223004C: .4byte 0x0000060C
_02230050: .4byte 0x000005FC
	thumb_func_end ov62_02230014

	thumb_func_start ov62_02230054
ov62_02230054: @ 0x02230054
	ldr r3, _0223005C @ =FUN_0202404C
	ldr r0, [r0, #0x2c]
	bx r3
	nop
_0223005C: .4byte FUN_0202404C
	thumb_func_end ov62_02230054

	thumb_func_start ov62_02230060
ov62_02230060: @ 0x02230060
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02230090 @ =0x000006D8
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _02230072
	subs r1, r1, #1
	str r1, [r4, r0]
	b _0223007C
_02230072:
	beq _0223007C
	movs r1, #0
	str r1, [r4, r0]
	bl FUN_02022974
_0223007C:
	ldr r0, _02230090 @ =0x000006D8
	ldr r0, [r4, r0]
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _02230094 @ =0x0000081C
	ldr r1, [r1, r0]
	subs r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02230090: .4byte 0x000006D8
_02230094: .4byte 0x0000081C
	thumb_func_end ov62_02230060

	thumb_func_start ov62_02230098
ov62_02230098: @ 0x02230098
	ldr r1, _022300B8 @ =0x00000838
	movs r3, #0
	str r3, [r0, r1]
	movs r2, #0xff
	adds r1, r1, #4
	str r2, [r0, r1]
	movs r1, #0x21
	adds r2, r3, #0
	lsls r1, r1, #6
_022300AA:
	adds r3, r3, #1
	str r2, [r0, r1]
	adds r0, r0, #4
	cmp r3, #8
	blt _022300AA
	bx lr
	nop
_022300B8: .4byte 0x00000838
	thumb_func_end ov62_02230098

	thumb_func_start ov62_022300BC
ov62_022300BC: @ 0x022300BC
	ldr r1, _022300C4 @ =0x00000838
	ldr r0, [r0, r1]
	bx lr
	nop
_022300C4: .4byte 0x00000838
	thumb_func_end ov62_022300BC

	thumb_func_start ov62_022300C8
ov62_022300C8: @ 0x022300C8
	ldr r2, _022300D4 @ =0x00000838
	movs r3, #1
	str r3, [r0, r2]
	adds r2, r2, #4
	str r1, [r0, r2]
	bx lr
	.align 2, 0
_022300D4: .4byte 0x00000838
	thumb_func_end ov62_022300C8

	thumb_func_start ov62_022300D8
ov62_022300D8: @ 0x022300D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r0, [r7]
	ldr r6, [r7, #0x14]
	ldr r4, [r7, #0x24]
	ldr r5, [r7, #0x28]
	cmp r0, #0
	bne _022301B6
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x43
	adds r2, r4, #0
	movs r3, #1
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x43
	adds r2, r4, #0
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x45
	adds r2, r4, #0
	movs r3, #5
	bl FUN_0200710C
	adds r0, r7, #0
	movs r1, #3
	bl ov62_02231710
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0x12
	str r1, [sp]
	lsls r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r3, #0x66
	bl FUN_02003050
	adds r0, r7, #0
	movs r1, #3
	bl ov62_02231710
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x12
	lsls r0, r0, #4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r3, #0x66
	bl FUN_02003050
	adds r0, r7, #0
	movs r1, #0
	bl ov62_02231710
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r3, #0x66
	bl FUN_02003050
	adds r0, r7, #0
	movs r1, #0
	bl ov62_02231710
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r3, #0x66
	bl FUN_02003050
	b _02230260
_022301B6:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x36
	adds r2, r4, #0
	movs r3, #1
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x36
	adds r2, r4, #0
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x37
	adds r2, r4, #0
	movs r3, #5
	bl FUN_0200710C
	movs r1, #0
	movs r0, #0x12
	str r1, [sp]
	lsls r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r2, #0x35
	movs r3, #0x66
	bl FUN_02003050
	movs r0, #1
	str r0, [sp]
	movs r0, #0x12
	lsls r0, r0, #4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r2, #0x35
	movs r3, #0x66
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r2, #0x34
	movs r3, #0x66
	bl FUN_02003050
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0xa2
	movs r2, #0x34
	movs r3, #0x66
	bl FUN_02003050
_02230260:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x46
	adds r2, r4, #0
	movs r3, #5
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x46
	adds r2, r4, #0
	movs r3, #1
	bl FUN_0200710C
	ldr r0, [r7, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #2
	movs r3, #0x10
	bl FUN_02003A2C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_022300D8

	thumb_func_start ov62_022302A8
ov62_022302A8: @ 0x022302A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r1, #0
	movs r5, #2
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x24]
	cmp r2, #0
	beq _022302BA
	movs r5, #0
_022302BA:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0x2d
	adds r2, r4, #0
	adds r3, r7, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov62_022302A8

	thumb_func_start ov62_022302F0
ov62_022302F0: @ 0x022302F0
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r5, [r0, #0x24]
	ldr r4, [r0, #0x14]
	movs r0, #0
	str r0, [sp]
	adds r6, r1, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x2d
	adds r2, r5, #0
	adds r3, r6, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	adds r3, r6, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_022302F0

	thumb_func_start ov62_02230330
ov62_02230330: @ 0x02230330
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r1, r0, #0
	ldr r6, [r1, #0x18]
	ldr r5, [r1, #0x1c]
	ldr r7, [r1, #0x28]
	ldr r1, [r1]
	str r0, [sp, #0x18]
	ldr r4, [r0, #0x14]
	cmp r1, #0
	bne _02230394
	movs r1, #2
	bl ov62_02231710
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223045C @ =0x0000270F
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl FUN_0200CDC4
	ldr r0, [sp, #0x18]
	movs r1, #2
	bl ov62_02231710
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02230460 @ =0x00002710
	adds r2, r6, #0
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r3, r5, #0
	bl FUN_0200CDC4
	b _022303D6
_02230394:
	str r4, [sp]
	movs r0, #0x33
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223045C @ =0x0000270F
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r2, r6, #0
	adds r3, r5, #0
	bl FUN_0200CDC4
	str r4, [sp]
	movs r0, #0x33
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _02230460 @ =0x00002710
	adds r2, r6, #0
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r3, r5, #0
	bl FUN_0200CDC4
_022303D6:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0223045C @ =0x0000270F
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x41
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _02230460 @ =0x00002710
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x41
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223045C @ =0x0000270F
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x2e
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223045C @ =0x0000270F
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x2f
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	ldr r0, _02230460 @ =0x00002710
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x2e
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02230460 @ =0x00002710
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x2f
	bl FUN_0200CE54
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223045C: .4byte 0x0000270F
_02230460: .4byte 0x00002710
	thumb_func_end ov62_02230330

	thumb_func_start ov62_02230464
ov62_02230464: @ 0x02230464
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	str r0, [sp]
	ldr r0, [r0, #0x18]
	add r4, sp, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp]
	add r2, sp, #0x20
	ldr r0, [r0, #0x1c]
	movs r1, #2
	str r0, [sp, #0x14]
	movs r0, #0
	strh r0, [r2, #0x2c]
	strh r0, [r2, #0x2e]
	strh r0, [r2, #0x30]
	strh r0, [r2, #0x32]
	str r0, [sp, #0x10]
	str r0, [sp, #0x54]
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x10]
	ldr r3, _02230640 @ =0x02248890
	str r0, [sp, #0x7c]
	str r0, [sp, #0x58]
	ldr r0, _02230644 @ =0x0000270F
	str r1, [sp, #0x78]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
	subs r0, r1, #3
	str r0, [sp, #0x70]
	str r0, [sp, #0x74]
	add r0, sp, #0x40
	str r0, [sp, #0xc]
	ldrh r0, [r3, #0x22]
	ldr r5, _02230648 @ =0x022488D8
	str r4, [sp, #8]
	strh r0, [r2, #0x20]
	ldrh r0, [r3, #0x24]
	add r6, sp, #0x20
	strh r0, [r2, #0x22]
	ldrh r0, [r3, #0x26]
	strh r0, [r2, #0x24]
	ldrh r0, [r3, #0x28]
	strh r0, [r2, #0x26]
	ldrh r0, [r3, #0x2a]
	strh r0, [r2, #0x28]
	ldrh r0, [r3, #0x2c]
	strh r0, [r2, #0x2a]
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	ldrb r0, [r3]
	ldr r4, [sp]
	ldr r1, _0223064C @ =0x000006F8
	strb r0, [r2]
	ldrb r0, [r3, #1]
	strb r0, [r2, #1]
	ldrb r0, [r3, #2]
	strb r0, [r2, #2]
	ldrb r0, [r3, #3]
	strb r0, [r2, #3]
	ldrb r0, [r3, #4]
	strb r0, [r2, #4]
	ldrb r0, [r3, #5]
	strb r0, [r2, #5]
	adds r0, r4, #0
	adds r0, r0, r1
	str r0, [sp, #4]
_022304F6:
	ldr r0, [sp, #0x10]
	movs r1, #3
	movs r7, #0
	adds r5, r4, #0
	blx FUN_020E1F6C
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
_02230508:
	cmp r7, #0
	bne _0223051C
	movs r0, #1
	str r0, [sp, #0x5c]
	ldr r0, _02230644 @ =0x0000270F
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
	b _0223052A
_0223051C:
	movs r0, #2
	str r0, [sp, #0x5c]
	ldr r0, _02230650 @ =0x00002710
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	str r0, [sp, #0x6c]
_0223052A:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x14]
	add r2, sp, #0x4c
	bl FUN_0200CE6C
	ldr r1, _0223064C @ =0x000006F8
	ldr r2, [sp, #0xc]
	str r0, [r5, r1]
	adds r0, r1, #0
	movs r1, #0
	ldrsh r1, [r2, r1]
	ldr r0, [r5, r0]
	movs r2, #0x60
	bl ov62_02230E68
	ldr r0, _0223064C @ =0x000006F8
	ldr r0, [r5, r0]
	bl FUN_0200D330
	ldr r0, _0223064C @ =0x000006F8
	movs r1, #2
	ldr r0, [r5, r0]
	bl FUN_0200D6A4
	ldr r0, _0223064C @ =0x000006F8
	ldr r1, [sp, #8]
	movs r2, #0xfe
	ldr r0, [r5, r0]
	ldr r1, [r1]
	lsls r2, r2, #0x16
	bl FUN_0200D6E8
	movs r0, #0x72
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	ldr r1, [sp, #0x1c]
	subs r0, #0xf
	strb r1, [r4, r0]
	ldr r0, _02230654 @ =0x00000724
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, [sp, #8]
	ldr r1, [r0]
	ldr r0, _02230658 @ =0x00000708
	str r1, [r4, r0]
	movs r0, #0
	ldrsb r0, [r6, r0]
	lsls r1, r0, #1
	ldr r0, _0223065C @ =0x0000071C
	adds r1, #0xa
	str r1, [r4, r0]
	ldr r0, [sp, #0x10]
	cmp r0, #3
	ldr r0, _02230660 @ =0x00000718
	bge _022305AE
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r1, #0
	ldrsb r1, [r6, r0]
	ldr r0, _02230664 @ =0x0000070E
	adds r1, #8
	strh r1, [r4, r0]
	movs r1, #0
	mvns r1, r1
	b _022305C2
_022305AE:
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r1, #0
	ldrsb r1, [r6, r0]
	movs r0, #0xff
	adds r1, #8
	subs r1, r0, r1
	ldr r0, _02230664 @ =0x0000070E
	strh r1, [r4, r0]
	movs r1, #1
_022305C2:
	adds r0, r0, #2
	adds r7, r7, #1
	adds r5, r5, #4
	strb r1, [r4, r0]
	cmp r7, #2
	blt _02230508
	ldr r0, _02230668 @ =ov62_02230C28
	ldr r1, [sp, #4]
	movs r2, #5
	bl FUN_0200DA04
	movs r1, #7
	lsls r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [sp, #0xc]
	adds r4, #0x30
	adds r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r6, r6, #1
	adds r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #6
	bge _02230600
	b _022304F6
_02230600:
	ldr r0, [sp]
	subs r1, #0x28
	ldr r0, [r0, r1]
	cmp r0, #0
	beq _0223063A
	ldr r7, _02230654 @ =0x00000724
_0223060C:
	ldr r4, [sp]
	ldr r1, _0223064C @ =0x000006F8
	movs r0, #0
	adds r2, r4, #0
	adds r6, r0, #0
	adds r5, r2, r1
_02230618:
	ldr r1, [r4, r7]
	cmp r1, #3
	beq _0223062C
	movs r0, #7
	lsls r0, r0, #8
	ldr r0, [r4, r0]
	adds r1, r5, #0
	bl ov62_02230C28
	movs r0, #1
_0223062C:
	adds r6, r6, #1
	adds r4, #0x30
	adds r5, #0x30
	cmp r6, #6
	blt _02230618
	cmp r0, #0
	bne _0223060C
_0223063A:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230640: .4byte 0x02248890
_02230644: .4byte 0x0000270F
_02230648: .4byte 0x022488D8
_0223064C: .4byte 0x000006F8
_02230650: .4byte 0x00002710
_02230654: .4byte 0x00000724
_02230658: .4byte 0x00000708
_0223065C: .4byte 0x0000071C
_02230660: .4byte 0x00000718
_02230664: .4byte 0x0000070E
_02230668: .4byte ov62_02230C28
	thumb_func_end ov62_02230464

	thumb_func_start ov62_0223066C
ov62_0223066C: @ 0x0223066C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0
	ldr r6, _02230698 @ =0x000006F8
	str r0, [sp]
_02230676:
	movs r4, #0
	adds r5, r7, #0
_0223067A:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0223067A
	ldr r0, [sp]
	adds r7, #0x30
	adds r0, r0, #1
	str r0, [sp]
	cmp r0, #6
	blt _02230676
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230698: .4byte 0x000006F8
	thumb_func_end ov62_0223066C

	thumb_func_start ov62_0223069C
ov62_0223069C: @ 0x0223069C
	push {r4, r5, r6, lr}
	movs r6, #7
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #8
_022306A6:
	ldr r0, [r5, r6]
	bl FUN_0200DA58
	adds r4, r4, #1
	adds r5, #0x30
	cmp r4, #6
	blt _022306A6
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_0223069C

	thumb_func_start ov62_022306B8
ov62_022306B8: @ 0x022306B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	ldr r1, [r0, #0x14]
	ldr r7, [r0, #0x1c]
	str r1, [sp, #0x10]
	ldr r1, [r0, #0x18]
	ldr r0, [r0]
	str r1, [sp, #0xc]
	cmp r0, #6
	bhi _0223070E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022306D8: @ jump table
	.2byte _022306E6 - _022306D8 - 2 @ case 0
	.2byte _0223070E - _022306D8 - 2 @ case 1
	.2byte _022306EE - _022306D8 - 2 @ case 2
	.2byte _02230706 - _022306D8 - 2 @ case 3
	.2byte _022306FE - _022306D8 - 2 @ case 4
	.2byte _022306F6 - _022306D8 - 2 @ case 5
	.2byte _022306F6 - _022306D8 - 2 @ case 6
_022306E6:
	movs r6, #0x3f
	movs r4, #0x18
	movs r5, #0x19
	b _02230714
_022306EE:
	movs r6, #0x11
	movs r4, #0x12
	movs r5, #0x13
	b _02230714
_022306F6:
	movs r6, #8
	movs r4, #9
	movs r5, #0xa
	b _02230714
_022306FE:
	movs r6, #0xb
	movs r4, #0xc
	movs r5, #0xd
	b _02230714
_02230706:
	movs r6, #0xe
	movs r4, #0xf
	movs r5, #0x10
	b _02230714
_0223070E:
	movs r6, #0x30
	movs r4, #0x16
	movs r5, #0x17
_02230714:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02230798 @ =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	adds r3, r6, #0
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0223079C @ =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	adds r3, r6, #0
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02230798 @ =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	adds r3, r4, #0
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223079C @ =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	adds r3, r4, #0
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02230798 @ =0x00002711
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	adds r3, r5, #0
	bl FUN_0200CE54
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223079C @ =0x00002712
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	adds r3, r5, #0
	bl FUN_0200CE54
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02230798: .4byte 0x00002711
_0223079C: .4byte 0x00002712
	thumb_func_end ov62_022306B8

	thumb_func_start ov62_022307A0
ov62_022307A0: @ 0x022307A0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _022307B8 @ =0x00002711
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _022307BC @ =0x00002712
	bl FUN_0200D070
	pop {r4, pc}
	nop
_022307B8: .4byte 0x00002711
_022307BC: .4byte 0x00002712
	thumb_func_end ov62_022307A0

	thumb_func_start ov62_022307C0
ov62_022307C0: @ 0x022307C0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _02230880 @ =0x00000534
	movs r7, #0
	adds r4, r6, r0
	adds r5, r6, #0
_022307CC:
	movs r2, #0x6e
	lsls r2, r2, #4
	ldr r3, [r6, r2]
	movs r2, #5
	subs r2, r2, r3
	lsls r2, r2, #4
	adds r2, #0xd9
	lsls r2, r2, #0x10
	ldr r0, [r4]
	movs r1, #0x32
	asrs r2, r2, #0x10
	bl ov62_02230E68
	ldr r0, _02230884 @ =0x00000548
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r5, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	adds r7, r7, #1
	adds r4, #0x28
	adds r5, #0x28
	cmp r7, #5
	blt _022307CC
	movs r5, #0
	adds r4, r6, #0
	add r7, sp, #0
_02230804:
	ldr r0, _02230888 @ =0x000006D8
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223087E
	ldr r0, _02230880 @ =0x00000534
	add r1, sp, #0
	ldr r0, [r4, r0]
	adds r1, #2
	add r2, sp, #0
	bl ov62_02230E74
	ldr r0, _02230888 @ =0x000006D8
	ldr r1, [r6, r0]
	subs r0, r1, #1
	cmp r0, r5
	bne _02230834
	movs r0, #0xa9
	strh r0, [r7]
	ldr r0, _02230880 @ =0x00000534
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0200D430
	b _02230862
_02230834:
	movs r0, #2
	ldrsh r0, [r7, r0]
	subs r1, r1, r5
	lsls r1, r1, #2
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _02230888 @ =0x000006D8
	movs r2, #5
	ldr r0, [r6, r0]
	subs r1, r0, r5
	subs r0, r1, #1
	subs r2, r2, r1
	movs r1, #0x24
	muls r1, r2, r1
	lsls r0, r0, #4
	adds r1, #0x19
	adds r0, r0, r1
	strh r0, [r7]
	ldr r0, _02230880 @ =0x00000534
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_0200D430
_02230862:
	ldr r0, _02230880 @ =0x00000534
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r4, r0]
	bl ov62_02230E68
	ldr r0, _02230888 @ =0x000006D8
	adds r5, r5, #1
	ldr r0, [r6, r0]
	adds r4, #0x28
	cmp r5, r0
	blt _02230804
_0223087E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02230880: .4byte 0x00000534
_02230884: .4byte 0x00000548
_02230888: .4byte 0x000006D8
	thumb_func_end ov62_022307C0

	thumb_func_start ov62_0223088C
ov62_0223088C: @ 0x0223088C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	adds r5, r0, #0
	ldr r0, _02230A44 @ =0x00000534
	movs r1, #0x6e
	adds r4, r5, r0
	ldr r0, [r5, #0x18]
	add r2, sp, #0x18
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsls r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x28]
	str r0, [sp, #4]
	movs r0, #0x2a
	strh r0, [r2, #4]
	ldr r3, [r5, r1]
	movs r0, #5
	subs r0, r0, r3
	lsls r0, r0, #4
	adds r0, #0xc9
	strh r0, [r2, #6]
	ldr r1, [r5, r1]
	cmp r1, #2
	bne _022308C8
	movs r0, #4
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc9
	strh r0, [r2, #6]
_022308C8:
	movs r0, #0
	str r0, [sp, #0x10]
	adds r1, r0, #0
	add r0, sp, #0x18
	strh r1, [r0, #8]
	ldr r1, [sp, #0x10]
	movs r2, #1
	strh r1, [r0, #0xa]
	adds r0, r1, #0
	str r1, [sp, #0x4c]
	ldr r1, _02230A48 @ =0x00002711
	str r0, [sp, #0x24]
	str r1, [sp, #0x30]
	subs r1, r1, #2
	movs r0, #3
	str r0, [sp, #0x48]
	subs r0, r0, #4
	str r1, [sp, #0x14]
	str r1, [sp, #0x34]
	ldr r1, _02230A48 @ =0x00002711
	ldr r6, _02230A4C @ =0x022488A8
	ldr r7, [sp, #0x10]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x28]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
_02230900:
	movs r0, #2
	str r0, [sp, #0x2c]
	ldr r0, _02230A50 @ =0x00002712
	ldr r1, [sp, #8]
	str r0, [sp, #0x30]
	subs r0, r0, #2
	str r0, [sp, #0x34]
	ldr r0, _02230A50 @ =0x00002712
	add r2, sp, #0x1c
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldrb r0, [r6, #5]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	bl FUN_0200CE6C
	str r0, [r4]
	bl FUN_0200D330
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0200D3F4
	add r2, sp, #0x18
	movs r1, #4
	ldrsh r1, [r2, r1]
	adds r3, r2, #0
	movs r2, #6
	adds r1, #8
	lsls r1, r1, #0x10
	ldrsh r2, [r3, r2]
	ldr r0, [r4]
	asrs r1, r1, #0x10
	bl ov62_02230E68
	movs r0, #1
	str r0, [sp, #0x2c]
	ldr r0, _02230A48 @ =0x00002711
	ldr r1, [sp, #8]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x14]
	add r2, sp, #0x1c
	str r0, [sp, #0x34]
	ldr r0, _02230A48 @ =0x00002711
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldrb r0, [r6]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0xc]
	bl FUN_0200CE6C
	adds r1, r4, #0
	adds r1, #0xc8
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl FUN_0200D330
	add r2, sp, #0x18
	movs r1, #4
	adds r0, r4, #0
	adds r0, #0xc8
	ldrsh r1, [r2, r1]
	adds r3, r2, #0
	movs r2, #6
	ldrsh r2, [r3, r2]
	ldr r0, [r0]
	bl ov62_02230E68
	ldr r1, _02230A54 @ =0x00000818
	adds r0, r4, #0
	ldr r1, [r5, r1]
	adds r0, #0xc8
	ldr r0, [r0]
	ldr r1, [r1, r7]
	bl FUN_0200D3F4
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	adds r0, r0, #1
	adds r4, #0x28
	adds r7, #0x24
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _02230900
	movs r4, #0
	adds r6, r5, #0
	add r7, sp, #0x18
_022309B2:
	ldr r0, _02230A58 @ =0x000006D8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02230A2C
	ldr r0, _02230A44 @ =0x00000534
	add r1, sp, #0x18
	ldr r0, [r6, r0]
	adds r1, #2
	add r2, sp, #0x18
	bl ov62_02230E74
	ldr r0, _02230A58 @ =0x000006D8
	ldr r1, [r5, r0]
	subs r0, r1, #1
	cmp r0, r4
	bne _022309E2
	movs r0, #0xa9
	strh r0, [r7]
	ldr r0, _02230A44 @ =0x00000534
	movs r1, #1
	ldr r0, [r6, r0]
	bl FUN_0200D430
	b _02230A10
_022309E2:
	movs r0, #2
	ldrsh r0, [r7, r0]
	subs r1, r1, r4
	lsls r1, r1, #2
	subs r0, r0, r1
	strh r0, [r7, #2]
	ldr r0, _02230A58 @ =0x000006D8
	movs r2, #5
	ldr r0, [r5, r0]
	subs r1, r0, r4
	subs r0, r1, #1
	subs r2, r2, r1
	movs r1, #0x24
	muls r1, r2, r1
	lsls r0, r0, #4
	adds r1, #0x19
	adds r0, r0, r1
	strh r0, [r7]
	ldr r0, _02230A44 @ =0x00000534
	movs r1, #2
	ldr r0, [r6, r0]
	bl FUN_0200D430
_02230A10:
	ldr r0, _02230A44 @ =0x00000534
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r6, r0]
	bl ov62_02230E68
	ldr r0, _02230A58 @ =0x000006D8
	adds r4, r4, #1
	ldr r0, [r5, r0]
	adds r6, #0x28
	cmp r4, r0
	blt _022309B2
_02230A2C:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #4]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02230A44: .4byte 0x00000534
_02230A48: .4byte 0x00002711
_02230A4C: .4byte 0x022488A8
_02230A50: .4byte 0x00002712
_02230A54: .4byte 0x00000818
_02230A58: .4byte 0x000006D8
	thumb_func_end ov62_0223088C

	thumb_func_start ov62_02230A5C
ov62_02230A5C: @ 0x02230A5C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02230AB0 @ =0x000005FC
	movs r4, #0
	str r4, [sp]
	adds r6, r5, #0
	adds r7, r5, r0
_02230A6A:
	ldr r1, _02230AB4 @ =0x00000818
	ldr r0, _02230AB0 @ =0x000005FC
	ldr r1, [r5, r1]
	ldr r0, [r6, r0]
	ldr r1, [r1, r4]
	bl FUN_0200D3F4
	ldr r0, _02230AB4 @ =0x00000818
	ldr r0, [r5, r0]
	adds r1, r0, r4
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _02230A9E
	ldr r0, _02230AB0 @ =0x000005FC
	ldr r1, [r1, #0xc]
	ldr r0, [r6, r0]
	bl FUN_0200D364
	ldr r0, _02230AB4 @ =0x00000818
	adds r1, r7, #0
	ldr r2, [r5, r0]
	adds r0, r5, #0
	adds r3, r2, r4
	ldr r2, [r3, #8]
	bl ov62_02230FC8
_02230A9E:
	ldr r0, [sp]
	adds r4, #0x24
	adds r0, r0, #1
	adds r6, #0x28
	adds r7, #0x28
	str r0, [sp]
	cmp r0, #5
	blt _02230A6A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02230AB0: .4byte 0x000005FC
_02230AB4: .4byte 0x00000818
	thumb_func_end ov62_02230A5C

	thumb_func_start ov62_02230AB8
ov62_02230AB8: @ 0x02230AB8
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02230AE8 @ =0x00000548
	adds r5, r0, #0
	adds r6, r7, #0
	movs r4, #0
	subs r6, #0x14
_02230AC4:
	ldr r1, _02230AEC @ =0x000005FC
	movs r0, #0x61
	ldr r1, [r5, r1]
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	ldr r1, [r1]
	bl FUN_020131E0
	ldr r1, [r5, r6]
	ldr r0, [r5, r7]
	ldr r1, [r1]
	bl FUN_020131E0
	adds r4, r4, #1
	adds r5, #0x28
	cmp r4, #5
	blt _02230AC4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02230AE8: .4byte 0x00000548
_02230AEC: .4byte 0x000005FC
	thumb_func_end ov62_02230AB8

	thumb_func_start ov62_02230AF0
ov62_02230AF0: @ 0x02230AF0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _02230B64 @ =0x000006D8
	ldr r1, [r7, r0]
	cmp r1, #0
	beq _02230B60
	movs r0, #0
	str r0, [sp]
	cmp r1, #0
	ble _02230B60
	ldr r0, _02230B68 @ =0x00000534
	adds r4, r7, #0
	adds r5, r7, #0
	adds r6, r7, r0
_02230B0C:
	ldr r1, _02230B6C @ =0x000006C4
	ldr r0, _02230B68 @ =0x00000534
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	ldr r1, [r1, #0xc]
	bl FUN_0200D364
	ldr r0, _02230B6C @ =0x000006C4
	adds r1, r6, #0
	ldr r3, [r4, r0]
	adds r0, r7, #0
	ldr r2, [r3, #8]
	bl ov62_02230FC8
	ldr r0, _02230B70 @ =0x00000548
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r5, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	ldr r0, _02230B70 @ =0x00000548
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_020129D0
	ldr r0, _02230B68 @ =0x00000534
	movs r1, #1
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	ldr r0, [sp]
	adds r4, r4, #4
	adds r0, r0, #1
	str r0, [sp]
	ldr r0, _02230B64 @ =0x000006D8
	adds r5, #0x28
	ldr r1, [r7, r0]
	ldr r0, [sp]
	adds r6, #0x28
	cmp r0, r1
	blt _02230B0C
_02230B60:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230B64: .4byte 0x000006D8
_02230B68: .4byte 0x00000534
_02230B6C: .4byte 0x000006C4
_02230B70: .4byte 0x00000548
	thumb_func_end ov62_02230AF0

	thumb_func_start ov62_02230B74
ov62_02230B74: @ 0x02230B74
	push {r3, r4, r5, lr}
	ldr r1, _02230B98 @ =0x00000534
	movs r4, #0
	adds r5, r0, r1
_02230B7C:
	ldr r0, [r5]
	bl FUN_0200D0F4
	adds r0, r5, #0
	adds r0, #0xc8
	ldr r0, [r0]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, #0x28
	cmp r4, #5
	blt _02230B7C
	pop {r3, r4, r5, pc}
	nop
_02230B98: .4byte 0x00000534
	thumb_func_end ov62_02230B74

	thumb_func_start ov62_02230B9C
ov62_02230B9C: @ 0x02230B9C
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0x15
	adds r5, r0, #0
	adds r4, r1, #0
	movs r6, #0
	lsls r7, r7, #6
_02230BA8:
	ldr r0, [r5, r7]
	cmp r0, #0
	ldr r0, _02230C18 @ =0x00000548
	bne _02230BC4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_020129D0
	ldr r0, _02230C1C @ =0x00000534
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	b _02230BD6
_02230BC4:
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_020129D0
	ldr r0, _02230C1C @ =0x00000534
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
_02230BD6:
	ldr r0, _02230C20 @ =0x00000608
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02230BF6
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_020129D0
	ldr r0, _02230C24 @ =0x000005FC
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
	b _02230C0C
_02230BF6:
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_020129D0
	ldr r0, _02230C24 @ =0x000005FC
	adds r1, r4, #0
	ldr r0, [r5, r0]
	bl FUN_0200D3F4
_02230C0C:
	adds r6, r6, #1
	adds r5, #0x28
	cmp r6, #5
	blt _02230BA8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02230C18: .4byte 0x00000548
_02230C1C: .4byte 0x00000534
_02230C20: .4byte 0x00000608
_02230C24: .4byte 0x000005FC
	thumb_func_end ov62_02230B9C

	thumb_func_start ov62_02230C28
ov62_02230C28: @ 0x02230C28
	push {r4, lr}
	sub sp, #0x40
	adds r4, r1, #0
	ldr r0, [r4, #0x1c]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	str r0, [r4, #0x1c]
	beq _02230C44
	b _02230E58
_02230C44:
	ldr r0, [r4, #0x2c]
	cmp r0, #3
	bls _02230C4C
	b _02230E26
_02230C4C:
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02230C58: @ jump table
	.2byte _02230C60 - _02230C58 - 2 @ case 0
	.2byte _02230C76 - _02230C58 - 2 @ case 1
	.2byte _02230CEC - _02230C58 - 2 @ case 2
	.2byte _02230D96 - _02230C58 - 2 @ case 3
_02230C60:
	ldr r1, [r4, #0x28]
	cmp r1, #3
	bne _02230C70
	adds r0, r0, #1
	str r0, [r4, #0x2c]
	movs r0, #0
	str r0, [r4, #0x28]
	b _02230E26
_02230C70:
	adds r0, r1, #1
	str r0, [r4, #0x28]
	b _02230E26
_02230C76:
	ldr r1, [r4, #0x28]
	cmp r1, #4
	bne _02230C86
	adds r0, r0, #1
	str r0, [r4, #0x2c]
	movs r0, #0
	str r0, [r4, #0x28]
	b _02230E26
_02230C86:
	ldr r0, [r4]
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl FUN_0200D638
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	add r2, sp, #0x18
	bl FUN_0200D638
	ldr r1, [r4, #0x20]
	ldr r0, _02230E5C @ =0x0000FFFF
	muls r0, r1, r0
	movs r1, #0x5a
	lsls r1, r1, #2
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	movs r1, #0x18
	ldrsb r1, [r4, r1]
	ldr r2, [sp, #0x24]
	rsbs r1, r1, #0
	muls r0, r1, r0
	adds r0, r2, r0
	movs r1, #0x5a
	str r0, [sp, #0x24]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x20]
	lsls r1, r1, #2
	adds r0, #0x20
	str r0, [r4, #0x20]
	blx FUN_020E1F6C
	str r1, [r4, #0x20]
	ldr r0, [r4]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	bl FUN_0200D614
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #0x18]
	bl FUN_0200D614
	ldr r0, [r4, #0x28]
	adds r0, r0, #1
	str r0, [r4, #0x28]
	b _02230E26
_02230CEC:
	ldr r3, _02230E60 @ =0x022488C0
	add r2, sp, #0x28
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	add r2, sp, #0
	ldr r0, [r4]
	add r1, sp, #4
	adds r2, #2
	bl FUN_0200D550
	ldr r0, [r4, #4]
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_0200D550
	ldr r1, [r4, #0x28]
	cmp r1, #0
	bne _02230D3A
	movs r0, #0x16
	ldrsh r2, [r4, r0]
	add r1, sp, #0
	movs r0, #4
	ldrsh r0, [r1, r0]
	subs r0, r2, r0
	strh r0, [r4, #0x14]
	movs r0, #0x14
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x24]
	blx FUN_020E1F6C
	strh r0, [r4, #0x14]
	ldr r0, [r4, #0x28]
	adds r0, r0, #1
	str r0, [r4, #0x28]
	b _02230D74
_02230D3A:
	ldr r0, [r4, #0x24]
	adds r0, r0, #1
	cmp r1, r0
	bne _02230D60
	movs r0, #0x16
	ldrsh r1, [r4, r0]
	add r0, sp, #0
	strh r1, [r0, #4]
	ldrb r0, [r4, #0x19]
	lsls r1, r0, #2
	add r0, sp, #0x28
	ldr r0, [r0, r1]
	str r0, [r4, #0x20]
	ldr r0, [r4, #0x2c]
	adds r0, r0, #1
	str r0, [r4, #0x2c]
	movs r0, #0
	str r0, [r4, #0x28]
	b _02230D74
_02230D60:
	add r1, sp, #0
	movs r0, #4
	ldrsh r2, [r1, r0]
	movs r0, #0x14
	ldrsh r0, [r4, r0]
	adds r0, r2, r0
	strh r0, [r1, #4]
	ldr r0, [r4, #0x28]
	adds r0, r0, #1
	str r0, [r4, #0x28]
_02230D74:
	add r3, sp, #0
	movs r1, #4
	movs r2, #2
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4]
	bl FUN_0200D4C4
	add r3, sp, #0
	movs r1, #4
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl FUN_0200D4C4
	b _02230E26
_02230D96:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _02230DAE
	adds r1, r4, #0
	ldr r0, [r4]
	adds r1, #0xc
	add r2, sp, #0x10
	bl FUN_0200D638
	ldr r0, [r4, #0x28]
	adds r0, r0, #1
	str r0, [r4, #0x28]
_02230DAE:
	ldr r0, [r4]
	add r1, sp, #0x14
	add r2, sp, #0x10
	bl FUN_0200D638
	ldr r0, [r4, #4]
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_0200D638
	ldr r1, [r4, #0x20]
	ldr r0, _02230E5C @ =0x0000FFFF
	muls r0, r1, r0
	movs r1, #0x5a
	lsls r1, r1, #2
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	movs r2, #0x18
	ldrsb r2, [r4, r2]
	ldr r1, [r4, #0xc]
	rsbs r3, r2, #0
	lsls r2, r0, #1
	adds r0, r0, r2
	muls r0, r3, r0
	adds r0, r1, r0
	str r0, [sp, #0x14]
	str r0, [sp, #0xc]
	ldrb r0, [r4, #0x19]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1f
	subs r1, r1, r2
	movs r0, #0x1f
	rors r1, r0
	adds r0, r2, r1
	ldr r0, [r4, #0x20]
	beq _02230E02
	subs r0, r0, #4
	b _02230E04
_02230E02:
	adds r0, r0, #4
_02230E04:
	str r0, [r4, #0x20]
	movs r1, #0x5a
	ldr r0, [r4, #0x20]
	lsls r1, r1, #2
	blx FUN_020E1F6C
	str r1, [r4, #0x20]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x10]
	bl FUN_0200D614
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	bl FUN_0200D614
_02230E26:
	ldr r0, [r4, #0x2c]
	cmp r0, #2
	blt _02230E58
	ldr r0, [r4, #0x10]
	ldr r1, _02230E64 @ =0x3DCCCCCD
	blx FUN_020E1108
	bls _02230E58
	ldr r0, [r4, #0x10]
	ldr r1, _02230E64 @ =0x3DCCCCCD
	blx FUN_020E1A9C
	str r0, [r4, #0x10]
	movs r2, #0xfe
	ldr r0, [r4]
	ldr r1, [r4, #0x10]
	lsls r2, r2, #0x16
	bl FUN_0200D6E8
	movs r2, #0xfe
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	lsls r2, r2, #0x16
	bl FUN_0200D6E8
_02230E58:
	add sp, #0x40
	pop {r4, pc}
	.align 2, 0
_02230E5C: .4byte 0x0000FFFF
_02230E60: .4byte 0x022488C0
_02230E64: .4byte 0x3DCCCCCD
	thumb_func_end ov62_02230C28

	thumb_func_start ov62_02230E68
ov62_02230E68: @ 0x02230E68
	push {r3, lr}
	movs r3, #1
	lsls r3, r3, #0x14
	bl FUN_0200D500
	pop {r3, pc}
	thumb_func_end ov62_02230E68

	thumb_func_start ov62_02230E74
ov62_02230E74: @ 0x02230E74
	push {r3, lr}
	movs r3, #1
	lsls r3, r3, #0x14
	bl FUN_0200D5A0
	pop {r3, pc}
	thumb_func_end ov62_02230E74

	thumb_func_start ov62_02230E80
ov62_02230E80: @ 0x02230E80
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	adds r6, r0, #0
	ldr r0, _02230FBC @ =0x02248890
	ldr r2, [r0, #8]
	ldr r1, [r0, #0xc]
	str r2, [sp, #0x2c]
	str r1, [sp, #0x30]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0x14]
	str r1, [sp, #0x24]
	str r0, [sp, #0x28]
	movs r0, #0
	ldr r1, _02230FC0 @ =0x000005FC
	str r0, [sp, #0x1c]
	adds r0, r6, r1
	subs r1, #0xc8
	str r0, [sp, #0x14]
	adds r0, r6, r1
	str r0, [sp, #0x10]
_02230EA8:
	ldr r0, [sp, #0x14]
	ldr r1, _02230FC4 @ =0x022488A8
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x34
	str r0, [sp, #0x38]
	movs r0, #0
	str r0, [sp, #0x18]
	add r0, sp, #0x24
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	add r5, sp, #0x2c
	adds r0, r1, r0
	str r0, [sp, #8]
	add r7, sp, #0x3c
_02230EC6:
	adds r0, r7, #0
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r6, #0x24]
	adds r1, r7, #0
	movs r2, #0x14
	movs r3, #2
	bl FUN_0201A870
	adds r0, r7, #0
	movs r1, #0x66
	bl FUN_02012B20
	ldr r1, [r4]
	movs r2, #0x66
	str r0, [r1, #0x18]
	ldr r1, [r5]
	adds r0, r7, #0
	bl FUN_02012898
	ldr r3, [r4]
	ldr r2, [r5]
	movs r1, #1
	adds r3, #0x1c
	bl FUN_0201ED94
	ldr r0, [r4]
	add r1, sp, #0x20
	ldr r0, [r0]
	adds r1, #2
	add r2, sp, #0x20
	bl FUN_0200D550
	ldr r0, [r6, #0x50]
	str r7, [sp, #0x50]
	str r0, [sp, #0x4c]
	ldr r0, [r6, #0x1c]
	bl FUN_0200D9B0
	str r0, [sp, #0x54]
	ldr r1, [sp, #0xc]
	ldr r0, [r6, #0x1c]
	ldr r1, [r1]
	bl FUN_0200D04C
	str r0, [sp, #0x58]
	ldr r0, [r4]
	add r1, sp, #0x20
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [sp, #0x5c]
	ldr r0, [r4]
	ldr r0, [r0, #0x20]
	str r0, [sp, #0x60]
	movs r0, #2
	ldrsh r0, [r1, r0]
	adds r0, #0x24
	str r0, [sp, #0x64]
	movs r0, #0
	ldrsh r0, [r1, r0]
	subs r0, #8
	str r0, [sp, #0x68]
	movs r0, #3
	str r0, [sp, #0x6c]
	ldr r0, [sp, #8]
	ldrb r0, [r0]
	subs r0, r0, #1
	str r0, [sp, #0x70]
	ldr r0, [r5]
	str r0, [sp, #0x74]
	movs r0, #0x66
	str r0, [sp, #0x78]
	ldr r1, [r4]
	add r0, sp, #0x4c
	ldr r1, [r1, #0x18]
	bl FUN_02012B60
	ldr r1, [r4]
	str r0, [r1, #0x14]
	ldr r0, [r4]
	movs r1, #1
	ldr r0, [r0, #0x14]
	bl FUN_02012AC0
	adds r0, r7, #0
	bl FUN_0201A8FC
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #0x14]
	bl FUN_020129D0
	ldr r0, [sp, #0xc]
	adds r4, r4, #4
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r5, r5, #4
	adds r0, r0, #5
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _02230EC6
	ldr r0, [sp, #0x14]
	adds r0, #0x28
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, #0x28
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #5
	bge _02230FB6
	b _02230EA8
_02230FB6:
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	nop
_02230FBC: .4byte 0x02248890
_02230FC0: .4byte 0x000005FC
_02230FC4: .4byte 0x022488A8
	thumb_func_end ov62_02230E80

	thumb_func_start ov62_02230FC8
ov62_02230FC8: @ 0x02230FC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	adds r5, r3, #0
	str r1, [sp, #0x10]
	ldr r0, [r4, #0x48]
	cmp r2, #8
	bne _02231058
	ldr r1, [r5, #0x18]
	lsls r1, r1, #2
	adds r3, r4, r1
	ldr r1, _02231134 @ =0x0000088C
	ldr r1, [r3, r1]
	cmp r1, #0
	bne _02230FF0
	adds r1, r2, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	b _022310E4
_02230FF0:
	movs r0, #0x66
	bl ov62_02231690
	adds r6, r0, #0
	ldr r0, [r4, #0x48]
	movs r1, #7
	bl FUN_0200B1EC
	adds r7, r0, #0
	ldr r0, [r5, #0x18]
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _02231134 @ =0x0000088C
	ldr r0, [r1, r0]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	adds r0, r4, #0
	bl ov62_022349A8
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl FUN_0200C388
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B3F0
	b _022310E4
_02231058:
	cmp r2, #0x29
	bne _022310DC
	ldr r1, [r5, #0x18]
	lsls r1, r1, #2
	adds r3, r4, r1
	ldr r1, _02231134 @ =0x0000088C
	ldr r1, [r3, r1]
	cmp r1, #0
	bne _02231074
	adds r1, r2, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	b _022310E4
_02231074:
	movs r0, #0x66
	bl ov62_02231690
	adds r6, r0, #0
	ldr r0, [r4, #0x48]
	movs r1, #7
	bl FUN_0200B1EC
	adds r7, r0, #0
	ldr r0, [r5, #0x18]
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _02231134 @ =0x0000088C
	ldr r0, [r1, r0]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r4, #0
	bl ov62_022349A8
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl FUN_0200C388
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B3F0
	b _022310E4
_022310DC:
	adds r1, r2, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
_022310E4:
	add r0, sp, #0x1c
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x24]
	add r1, sp, #0x1c
	movs r2, #0x14
	movs r3, #2
	bl FUN_0201A870
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231138 @ =0x000E0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	add r0, sp, #0x1c
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x14]
	ldr r1, [r1, #0x18]
	add r2, sp, #0x1c
	movs r3, #0x66
	bl FUN_02012BE0
	adds r0, r5, #0
	bl FUN_020237BC
	add r0, sp, #0x1c
	bl FUN_0201A8FC
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02231134: .4byte 0x0000088C
_02231138: .4byte 0x000E0D00
	thumb_func_end ov62_02230FC8

	thumb_func_start ov62_0223113C
ov62_0223113C: @ 0x0223113C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r1, #0
	str r1, [sp]
	ldr r1, _02231188 @ =0x000005FC
	adds r7, r0, r1
	subs r1, #0xc8
	adds r6, r0, r1
_0223114C:
	str r7, [sp, #4]
	str r6, [sp, #8]
	movs r4, #0
	add r5, sp, #4
_02231154:
	ldr r0, [r5]
	ldr r0, [r0, #0x18]
	bl FUN_02012B48
	ldr r0, [r5]
	ldr r0, [r0, #0x14]
	bl FUN_02012BD8
	ldr r0, [r5]
	adds r0, #0x1c
	bl FUN_0201EE28
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _02231154
	ldr r0, [sp]
	adds r7, #0x28
	adds r0, r0, #1
	adds r6, #0x28
	str r0, [sp]
	cmp r0, #5
	blt _0223114C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02231188: .4byte 0x000005FC
	thumb_func_end ov62_0223113C

	thumb_func_start ov62_0223118C
ov62_0223118C: @ 0x0223118C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r7, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, _02231248 @ =0x0000270F
	cmp r7, #2
	bne _0223119E
	adds r6, r6, #1
_0223119E:
	add r0, sp, #0xc
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r1, sp, #0xc
	movs r2, #0x14
	movs r3, #2
	bl FUN_0201A870
	add r0, sp, #0xc
	movs r1, #0x66
	bl FUN_02012B20
	str r0, [r5, #0xc]
	add r0, sp, #0xc
	adds r1, r7, #0
	movs r2, #0x66
	bl FUN_02012898
	adds r3, r5, #0
	movs r1, #1
	adds r2, r7, #0
	adds r3, #0x10
	bl FUN_0201ED94
	add r1, sp, #8
	ldr r0, [r5, #4]
	adds r1, #2
	add r2, sp, #8
	bl FUN_0200D550
	ldr r0, [r4, #0x3c]
	str r0, [sp, #0x1c]
	add r0, sp, #0xc
	str r0, [sp, #0x20]
	ldr r0, [r4, #8]
	bl FUN_0200D9B0
	str r0, [sp, #0x24]
	ldr r0, [r4, #8]
	adds r1, r6, #0
	bl FUN_0200D04C
	str r0, [sp, #0x28]
	ldr r0, [r5, #4]
	add r1, sp, #8
	ldr r0, [r0]
	str r0, [sp, #0x2c]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x30]
	movs r0, #2
	ldrsh r0, [r1, r0]
	adds r0, #0x24
	str r0, [sp, #0x34]
	movs r0, #0
	ldrsh r1, [r1, r0]
	subs r1, #8
	str r0, [sp, #0x40]
	movs r0, #0x66
	str r1, [sp, #0x38]
	movs r1, #3
	str r0, [sp, #0x48]
	str r7, [sp, #0x44]
	str r1, [sp, #0x3c]
	ldr r1, [r5, #0xc]
	add r0, sp, #0x1c
	bl FUN_02012B60
	movs r1, #1
	str r0, [r5, #8]
	bl FUN_02012AC0
	add r0, sp, #0xc
	bl FUN_0201A8FC
	ldr r0, [r5, #8]
	movs r1, #0
	bl FUN_020129D0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_02231248: .4byte 0x0000270F
	thumb_func_end ov62_0223118C

	thumb_func_start ov62_0223124C
ov62_0223124C: @ 0x0223124C
	push {r4, r5, r6, lr}
	sub sp, #0x20
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x34]
	adds r1, r2, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	add r0, sp, #0x10
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r4, #0x10]
	add r1, sp, #0x10
	movs r2, #0x14
	movs r3, #2
	bl FUN_0201A870
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022312AC @ =0x000E0D00
	adds r2, r6, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r0, sp, #0x10
	adds r3, r1, #0
	bl FUN_0201D78C
	ldr r0, [r5, #8]
	ldr r1, [r5, #0xc]
	add r2, sp, #0x10
	movs r3, #0x66
	bl FUN_02012BE0
	adds r0, r6, #0
	bl FUN_020237BC
	add r0, sp, #0x10
	bl FUN_0201A8FC
	add sp, #0x20
	pop {r4, r5, r6, pc}
	nop
_022312AC: .4byte 0x000E0D00
	thumb_func_end ov62_0223124C

	thumb_func_start ov62_022312B0
ov62_022312B0: @ 0x022312B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_02012B48
	ldr r0, [r4, #8]
	bl FUN_02012BD8
	adds r4, #0x10
	adds r0, r4, #0
	bl FUN_0201EE28
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_022312B0

	thumb_func_start ov62_022312CC
ov62_022312CC: @ 0x022312CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	movs r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _02231318 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x31
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02231318 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x1a
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02231318 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x1b
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02231318: .4byte 0x00002E94
	thumb_func_end ov62_022312CC

	thumb_func_start ov62_0223131C
ov62_0223131C: @ 0x0223131C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	movs r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _02231368 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x7a
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02231368 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x7b
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02231368 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x7c
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02231368: .4byte 0x00002E94
	thumb_func_end ov62_0223131C

	thumb_func_start ov62_0223136C
ov62_0223136C: @ 0x0223136C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	movs r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _022313B8 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x1e
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022313B8 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x20
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _022313B8 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x1f
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_022313B8: .4byte 0x00002E94
	thumb_func_end ov62_0223136C

	thumb_func_start ov62_022313BC
ov62_022313BC: @ 0x022313BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _022313DC @ =0x00002E94
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _022313DC @ =0x00002E94
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _022313DC @ =0x00002E94
	bl FUN_0200D0A0
	pop {r4, pc}
	nop
_022313DC: .4byte 0x00002E94
	thumb_func_end ov62_022313BC

	thumb_func_start ov62_022313E0
ov62_022313E0: @ 0x022313E0
	push {r3, r4, lr}
	sub sp, #0x34
	adds r2, r0, #0
	movs r3, #0x80
	add r0, sp, #0
	strh r3, [r0]
	movs r3, #0x60
	strh r3, [r0, #2]
	movs r3, #0
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0x2c]
	subs r0, r0, #4
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, _02231448 @ =0x00002E94
	str r3, [sp, #0xc]
	str r1, [sp, #0x10]
	str r3, [sp, #0x30]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	cmp r1, #1
	bne _0223141C
	ldr r0, _0223144C @ =0x0000270F
	str r0, [sp, #0x18]
	b _02231420
_0223141C:
	ldr r0, _02231450 @ =0x00002710
	str r0, [sp, #0x18]
_02231420:
	ldr r0, [r2, #0x18]
	ldr r1, [r2, #0x1c]
	add r2, sp, #0
	bl FUN_0200CE6C
	adds r4, r0, #0
	movs r1, #2
	bl FUN_0200D41C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0200D364
	adds r0, r4, #0
	bl FUN_0200D330
	adds r0, r4, #0
	add sp, #0x34
	pop {r3, r4, pc}
	nop
_02231448: .4byte 0x00002E94
_0223144C: .4byte 0x0000270F
_02231450: .4byte 0x00002710
	thumb_func_end ov62_022313E0

	thumb_func_start ov62_02231454
ov62_02231454: @ 0x02231454
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl ov62_02230B9C
	adds r0, r4, #0
	bl ov62_02230B74
	adds r0, r4, #0
	bl ov62_022307A0
	pop {r4, pc}
	thumb_func_end ov62_02231454

	thumb_func_start ov62_0223146C
ov62_0223146C: @ 0x0223146C
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_022306B8
	adds r0, r4, #0
	bl ov62_02230060
	adds r0, r4, #0
	bl FUN_0208C06C
	adds r0, r4, #0
	bl ov62_0223088C
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02230B9C
	adds r0, r4, #0
	bl ov62_02230A5C
	adds r0, r4, #0
	bl ov62_02230AB8
	adds r0, r4, #0
	bl ov62_022307C0
	adds r0, r4, #0
	bl ov62_02230AF0
	pop {r4, pc}
	thumb_func_end ov62_0223146C

	thumb_func_start ov62_022314A8
ov62_022314A8: @ 0x022314A8
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_022306B8
	adds r0, r4, #0
	bl ov62_02230060
	adds r0, r4, #0
	bl FUN_0208C06C
	adds r0, r4, #0
	bl ov62_0223088C
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02230B9C
	adds r0, r4, #0
	bl ov62_02230A5C
	adds r0, r4, #0
	bl ov62_02230AB8
	adds r0, r4, #0
	bl ov62_022307C0
	adds r0, r4, #0
	bl ov62_02230AF0
	ldr r0, _022314EC @ =0x000006D8
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
	.align 2, 0
_022314EC: .4byte 0x000006D8
	thumb_func_end ov62_022314A8

	thumb_func_start ov62_022314F0
ov62_022314F0: @ 0x022314F0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0
	str r0, [r5]
	adds r4, r1, #0
	movs r0, #0x1f
	str r0, [r4]
	ldr r0, [sp, #0x20]
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r0, #0
	bne _02231528
	ldr r0, [r4]
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, _02231558 @ =0x04000050
	ldr r3, [r5]
	adds r2, r7, #0
	blx FUN_020BF55C
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, _0223155C @ =0x04001050
	ldr r2, [sp, #0x1c]
	ldr r3, [r5]
	blx FUN_020BF55C
_02231528:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _0223153E
	ldr r0, [r4]
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, _02231558 @ =0x04000050
	ldr r3, [r5]
	adds r2, r7, #0
	blx FUN_020BF55C
_0223153E:
	ldr r0, [sp, #0x20]
	cmp r0, #2
	bne _02231554
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, _0223155C @ =0x04001050
	ldr r2, [sp, #0x1c]
	ldr r3, [r5]
	blx FUN_020BF55C
_02231554:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02231558: .4byte 0x04000050
_0223155C: .4byte 0x04001050
	thumb_func_end ov62_022314F0

	thumb_func_start ov62_02231560
ov62_02231560: @ 0x02231560
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0x20]
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r0, #0
	bne _02231590
	ldr r0, [r4]
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, _022315C0 @ =0x04000050
	ldr r3, [r5]
	adds r2, r7, #0
	blx FUN_020BF55C
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, _022315C4 @ =0x04001050
	ldr r2, [sp, #0x1c]
	ldr r3, [r5]
	blx FUN_020BF55C
_02231590:
	ldr r0, [sp, #0x20]
	cmp r0, #1
	bne _022315A6
	ldr r0, [r4]
	adds r1, r6, #0
	str r0, [sp]
	ldr r0, _022315C0 @ =0x04000050
	ldr r3, [r5]
	adds r2, r7, #0
	blx FUN_020BF55C
_022315A6:
	ldr r0, [sp, #0x20]
	cmp r0, #2
	bne _022315BC
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, _022315C4 @ =0x04001050
	ldr r2, [sp, #0x1c]
	ldr r3, [r5]
	blx FUN_020BF55C
_022315BC:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022315C0: .4byte 0x04000050
_022315C4: .4byte 0x04001050
	thumb_func_end ov62_02231560

	thumb_func_start ov62_022315C8
ov62_022315C8: @ 0x022315C8
	push {r3, r4, lr}
	sub sp, #0xc
	movs r4, #8
	str r4, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	str r2, [sp, #8]
	adds r2, r4, #0
	bl ov62_022314F0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov62_022315C8

	thumb_func_start ov62_022315E0
ov62_022315E0: @ 0x022315E0
	push {r4, r5}
	movs r4, #1
	cmp r2, #0
	ldr r2, [r0]
	bne _02231602
	cmp r2, #8
	bge _022315F4
	adds r2, r2, #1
	str r2, [r0]
	movs r4, #0
_022315F4:
	ldr r2, [r1]
	cmp r2, #7
	ble _02231618
	subs r2, r2, #3
	str r2, [r1]
	movs r4, #0
	b _02231618
_02231602:
	cmp r2, #0
	ble _0223160C
	subs r2, r2, #1
	str r2, [r0]
	movs r4, #0
_0223160C:
	ldr r2, [r1]
	cmp r2, #0x1f
	bge _02231618
	adds r2, r2, #3
	str r2, [r1]
	movs r4, #0
_02231618:
	cmp r3, #0
	bne _02231634
	ldr r2, [r1]
	ldr r5, [r0]
	lsls r2, r2, #8
	orrs r5, r2
	ldr r2, _0223165C @ =0x04000052
	strh r5, [r2]
	ldr r2, [r1]
	ldr r5, [r0]
	lsls r2, r2, #8
	orrs r5, r2
	ldr r2, _02231660 @ =0x04001052
	strh r5, [r2]
_02231634:
	cmp r3, #1
	bne _02231644
	ldr r2, [r1]
	ldr r5, [r0]
	lsls r2, r2, #8
	orrs r5, r2
	ldr r2, _0223165C @ =0x04000052
	strh r5, [r2]
_02231644:
	cmp r3, #2
	bne _02231656
	ldr r2, [r0]
	ldr r0, [r1]
	adds r1, r2, #0
	lsls r0, r0, #8
	orrs r1, r0
	ldr r0, _02231660 @ =0x04001052
	strh r1, [r0]
_02231656:
	adds r0, r4, #0
	pop {r4, r5}
	bx lr
	.align 2, 0
_0223165C: .4byte 0x04000052
_02231660: .4byte 0x04001052
	thumb_func_end ov62_022315E0

	thumb_func_start ov62_02231664
ov62_02231664: @ 0x02231664
	movs r2, #1
	cmp r1, #1
	ldr r1, [r0]
	bne _02231678
	cmp r1, #0x10
	bge _02231682
	adds r1, r1, #2
	str r1, [r0]
	movs r2, #0
	b _02231682
_02231678:
	cmp r1, #0
	ble _02231682
	subs r1, r1, #2
	str r1, [r0]
	movs r2, #0
_02231682:
	adds r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end ov62_02231664

	thumb_func_start ov62_02231688
ov62_02231688: @ 0x02231688
	movs r1, #0x10
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov62_02231688

	thumb_func_start ov62_02231690
ov62_02231690: @ 0x02231690
	ldr r3, _0223169C @ =FUN_0200B368
	adds r2, r0, #0
	movs r0, #4
	movs r1, #0x40
	bx r3
	nop
_0223169C: .4byte FUN_0200B368
	thumb_func_end ov62_02231690

	thumb_func_start ov62_022316A0
ov62_022316A0: @ 0x022316A0
	push {r3, r4, r5}
	sub sp, #0x1c
	ldr r4, _022316CC @ =0x02248944
	adds r5, r0, #0
	ldm r4!, {r0, r1}
	add r3, sp, #0
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	adds r5, #0x5c
	str r0, [r3]
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	add sp, #0x1c
	pop {r3, r4, r5}
	bx lr
	nop
_022316CC: .4byte 0x02248944
	thumb_func_end ov62_022316A0

	thumb_func_start ov62_022316D0
ov62_022316D0: @ 0x022316D0
	push {r3, r4, r5}
	sub sp, #0x1c
	ldr r4, _02231708 @ =0x0224897C
	adds r5, r0, #0
	ldm r4!, {r0, r1}
	add r3, sp, #0
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r5]
	cmp r0, #0
	beq _022316FA
	add sp, #0x1c
	ldr r0, _0223170C @ =0x00007E05
	pop {r3, r4, r5}
	bx lr
_022316FA:
	adds r5, #0x5c
	ldrb r0, [r5]
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	add sp, #0x1c
	pop {r3, r4, r5}
	bx lr
	.align 2, 0
_02231708: .4byte 0x0224897C
_0223170C: .4byte 0x00007E05
	thumb_func_end ov62_022316D0

	thumb_func_start ov62_02231710
ov62_02231710: @ 0x02231710
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	ldr r4, _022317BC @ =0x02248998
	adds r5, r0, #0
	adds r2, r1, #0
	add r3, sp, #0x58
	ldm r4!, {r0, r1}
	str r3, [sp]
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, _022317C0 @ =0x02248928
	str r0, [r3]
	add r3, sp, #0x3c
	ldm r4!, {r0, r1}
	mov ip, r3
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, _022317C4 @ =0x022489B4
	str r0, [r3]
	add r3, sp, #0x20
	ldm r4!, {r0, r1}
	adds r7, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	ldr r4, _022317C8 @ =0x02248960
	str r0, [r3]
	add r3, sp, #4
	ldm r4!, {r0, r1}
	adds r6, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	adds r5, #0x5c
	str r0, [r3]
	ldrb r0, [r5]
	cmp r2, #3
	bhi _022317B0
	adds r1, r2, r2
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02231784: @ jump table
	.2byte _0223178C - _02231784 - 2 @ case 0
	.2byte _02231796 - _02231784 - 2 @ case 1
	.2byte _022317A0 - _02231784 - 2 @ case 2
	.2byte _022317A8 - _02231784 - 2 @ case 3
_0223178C:
	lsls r1, r0, #2
	ldr r0, [sp]
	add sp, #0x74
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_02231796:
	lsls r1, r0, #2
	mov r0, ip
	add sp, #0x74
	ldr r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_022317A0:
	lsls r0, r0, #2
	add sp, #0x74
	ldr r0, [r7, r0]
	pop {r4, r5, r6, r7, pc}
_022317A8:
	lsls r0, r0, #2
	add sp, #0x74
	ldr r0, [r6, r0]
	pop {r4, r5, r6, r7, pc}
_022317B0:
	bl FUN_02022974
	ldr r0, [sp, #0x58]
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	nop
_022317BC: .4byte 0x02248998
_022317C0: .4byte 0x02248928
_022317C4: .4byte 0x022489B4
_022317C8: .4byte 0x02248960
	thumb_func_end ov62_02231710

	thumb_func_start ov62_022317CC
ov62_022317CC: @ 0x022317CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r1, [r5, #0x18]
	ldr r4, [r5, #0x28]
	str r1, [sp, #0x18]
	ldr r7, [r5, #0x1c]
	ldr r6, [r5, #0x14]
	movs r1, #3
	bl ov62_02231710
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0x12
	str r1, [sp]
	lsls r0, r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xa2
	movs r3, #0x66
	bl FUN_02003050
	adds r0, r5, #0
	movs r1, #3
	bl ov62_02231710
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x12
	lsls r0, r0, #4
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xa2
	movs r3, #0x66
	bl FUN_02003050
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02231710
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xa2
	movs r3, #0x66
	bl FUN_02003050
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02231710
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xa2
	movs r3, #0x66
	bl FUN_02003050
	adds r1, r5, #0
	movs r0, #0x6f
	adds r1, #0x5c
	lsls r0, r0, #4
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	bl FUN_0208B63C
	adds r1, r5, #0
	movs r0, #0x6f
	adds r1, #0x5c
	lsls r0, r0, #4
	ldrb r1, [r1]
	ldr r0, [r5, r0]
	bl FUN_0208B63C
	ldr r1, _022318E0 @ =0x0000270F
	adds r0, r7, #0
	bl FUN_0200D080
	ldr r1, _022318E4 @ =0x00002710
	adds r0, r7, #0
	bl FUN_0200D080
	adds r0, r5, #0
	movs r1, #2
	bl ov62_02231710
	str r6, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022318E0 @ =0x0000270F
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	adds r0, r4, #0
	movs r1, #2
	adds r3, r7, #0
	bl FUN_0200CDC4
	adds r0, r5, #0
	movs r1, #2
	bl ov62_02231710
	str r6, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022318E4 @ =0x00002710
	ldr r2, [sp, #0x18]
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r3, r7, #0
	bl FUN_0200CDC4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022318E0: .4byte 0x0000270F
_022318E4: .4byte 0x00002710
	thumb_func_end ov62_022317CC

	thumb_func_start ov62_022318E8
ov62_022318E8: @ 0x022318E8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x58]
	ldr r2, _02231944 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r1, #2
	movs r3, #0
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02231944 @ =0x0000FFFF
	adds r3, r1, #0
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02231944 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r1, #3
	movs r3, #0
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02231944 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r1, #1
	movs r3, #0
	bl FUN_02003A2C
	add sp, #4
	pop {r3, r4, pc}
	nop
_02231944: .4byte 0x0000FFFF
	thumb_func_end ov62_022318E8

	thumb_func_start ov62_02231948
ov62_02231948: @ 0x02231948
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r2, #0
	movs r2, #0
	adds r3, r0, #0
	str r2, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	movs r0, #0x4b
	movs r1, #0xd
	bl FUN_02007068
	ldr r1, [sp, #8]
	lsrs r1, r1, #1
	str r1, [r4]
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov62_02231948

	thumb_func_start ov62_0223196C
ov62_0223196C: @ 0x0223196C
	movs r2, #0x87
	lsls r2, r2, #4
	str r1, [r0, r2]
	bx lr
	thumb_func_end ov62_0223196C

	thumb_func_start ov62_02231974
ov62_02231974: @ 0x02231974
	movs r1, #0x87
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov62_02231974

	thumb_func_start ov62_0223197C
ov62_0223197C: @ 0x0223197C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02231A10 @ =0x000008A4
	adds r6, r1, #0
	adds r5, r0, #0
	subs r1, r4, #4
	ldr r1, [r5, r1]
	cmp r1, #1
	beq _02231A0C
	movs r2, #1
	subs r1, r4, #4
	str r2, [r5, r1]
	movs r1, #6
	movs r2, #0
	bl ov62_022302A8
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, _02231A14 @ =0x04001050
	movs r1, #0
	strh r1, [r0]
	movs r0, #6
	bl FUN_02019060
	adds r0, r5, r4
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r5, r4
	movs r2, #6
	movs r3, #1
	bl FUN_0201A7E8
	ldr r0, [r5, #0x48]
	adds r1, r6, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, r4
	movs r1, #0xcc
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231A18 @ =0x000F0D0C
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, r4
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, r4
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
_02231A0C:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02231A10: .4byte 0x000008A4
_02231A14: .4byte 0x04001050
_02231A18: .4byte 0x000F0D0C
	thumb_func_end ov62_0223197C

	thumb_func_start ov62_02231A1C
ov62_02231A1C: @ 0x02231A1C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x8a
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02231A78
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _02231A7C @ =0x000008A4
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #6
	movs r1, #2
	bl FUN_02019060
	movs r0, #8
	str r0, [sp]
	ldr r0, _02231A80 @ =0x04000050
	movs r1, #4
	movs r2, #0x12
	movs r3, #7
	blx FUN_020BF55C
	movs r0, #8
	str r0, [sp]
	ldr r0, _02231A84 @ =0x04001050
	movs r1, #4
	movs r2, #0x12
	movs r3, #7
	blx FUN_020BF55C
_02231A78:
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02231A7C: .4byte 0x000008A4
_02231A80: .4byte 0x04000050
_02231A84: .4byte 0x04001050
	thumb_func_end ov62_02231A1C

	thumb_func_start ov62_02231A88
ov62_02231A88: @ 0x02231A88
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02231AA8 @ =0x000008A4
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _02231AA8 @ =0x000008A4
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	pop {r4, pc}
	nop
_02231AA8: .4byte 0x000008A4
	thumb_func_end ov62_02231A88

	thumb_func_start ov62_02231AAC
ov62_02231AAC: @ 0x02231AAC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02231B34 @ =0x000008A4
	adds r6, r1, #0
	adds r5, r0, #0
	subs r1, r4, #4
	ldr r1, [r5, r1]
	cmp r1, #1
	beq _02231B30
	movs r2, #1
	subs r1, r4, #4
	str r2, [r5, r1]
	movs r1, #2
	movs r2, #0
	bl ov62_022302A8
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r5, r4
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r5, r4
	movs r2, #2
	movs r3, #1
	bl FUN_0201A7E8
	ldr r0, [r5, #0x48]
	adds r1, r6, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, r4
	movs r1, #0xcc
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231B38 @ =0x000F0D0C
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, r4
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, r4
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
_02231B30:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02231B34: .4byte 0x000008A4
_02231B38: .4byte 0x000F0D0C
	thumb_func_end ov62_02231AAC

	thumb_func_start ov62_02231B3C
ov62_02231B3C: @ 0x02231B3C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	ldr r6, _02231B84 @ =0x000008A4
	adds r5, r0, #0
	subs r0, r6, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02231B80
	ldr r0, [r5, #0x48]
	bl FUN_0200B1EC
	adds r4, r0, #0
	adds r0, r5, r6
	movs r1, #0xcc
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231B88 @ =0x000F0D0C
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, r6
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, r6
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
_02231B80:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_02231B84: .4byte 0x000008A4
_02231B88: .4byte 0x000F0D0C
	thumb_func_end ov62_02231B3C

	thumb_func_start ov62_02231B8C
ov62_02231B8C: @ 0x02231B8C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8a
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02231BBE
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _02231BC0 @ =0x000008A4
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
_02231BBE:
	pop {r4, pc}
	.align 2, 0
_02231BC0: .4byte 0x000008A4
	thumb_func_end ov62_02231B8C

	thumb_func_start ov62_02231BC4
ov62_02231BC4: @ 0x02231BC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02231C6C @ =0x000008A4
	adds r5, r0, #0
	subs r0, r4, #4
	ldr r0, [r5, r0]
	adds r6, r1, #0
	cmp r0, #1
	beq _02231C66
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r5, r0]
	cmp r0, #1
	beq _02231C66
	movs r1, #1
	subs r0, r4, #4
	str r1, [r5, r0]
	adds r0, r4, #0
	subs r0, #8
	str r1, [r5, r0]
	ldr r0, _02231C70 @ =0x04001050
	movs r1, #0
	strh r1, [r0]
	movs r0, #6
	bl FUN_02019060
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	bl ov62_022302A8
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r5, r4
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r5, r4
	movs r2, #6
	movs r3, #1
	bl FUN_0201A7E8
	ldr r0, [r5, #0x48]
	adds r1, r6, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, r4
	movs r1, #0xcc
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02231C74 @ =0x000F0D0C
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, r4
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, r4
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
_02231C66:
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02231C6C: .4byte 0x000008A4
_02231C70: .4byte 0x04001050
_02231C74: .4byte 0x000F0D0C
	thumb_func_end ov62_02231BC4

	thumb_func_start ov62_02231C78
ov62_02231C78: @ 0x02231C78
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xd8
	ldr r3, _02232004 @ =0x02248A28
	adds r7, r1, #0
	str r0, [sp, #0x14]
	add r2, sp, #0x88
	movs r1, #0x28
_02231C86:
	ldrh r0, [r3]
	adds r3, r3, #2
	strh r0, [r2]
	adds r2, r2, #2
	subs r1, r1, #1
	bne _02231C86
	ldr r4, _02232008 @ =0x022489F8
	add r3, sp, #0x58
	movs r2, #6
_02231C98:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02231C98
	movs r0, #1
	str r0, [sp, #0x24]
	movs r0, #0
	ldr r4, [sp, #0x14]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	adds r4, #0xc
	str r0, [sp, #0x1c]
	add r5, sp, #0x88
_02231CB2:
	ldr r1, [sp, #0x1c]
	ldr r0, [r7, #0x48]
	ldr r1, [r1]
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_0201A7A0
	movs r0, #2
	ldrsh r0, [r5, r0]
	movs r3, #0
	adds r1, r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #4
	ldrsh r0, [r5, r0]
	movs r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #6
	ldrsh r0, [r5, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x24]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r5, r3]
	ldr r0, [r7, #0x24]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov62_0223429C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r6, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A9A4
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #6
	ldrsh r0, [r5, r0]
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #0x24]
	adds r0, r0, r2
	str r0, [sp, #0x24]
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	adds r4, #0x10
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x28]
	adds r5, #8
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #8
	blt _02231CB2
	ldr r0, [sp, #0x14]
	ldr r0, [r0]
	str r0, [sp, #0x20]
	movs r0, #0x66
	bl ov62_02231690
	adds r4, r0, #0
	ldr r5, [sp, #0x14]
	ldr r0, [sp, #0x20]
	movs r1, #0x66
	adds r5, #0xc
	bl FUN_02030B94
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	adds r0, r7, #0
	bl ov62_022349A8
	ldr r0, [r7, #0x48]
	movs r1, #0xd
	bl FUN_0200B1EC
	str r0, [sp, #0x30]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x2c]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C @ =0x000F0D00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x2c]
	bl FUN_020237BC
	ldr r0, [sp, #0x30]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200C41C
	ldr r0, [sp, #0x20]
	bl FUN_02030CCC
	str r0, [sp, #0x34]
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	movs r1, #0xf
	adds r5, #0x2c
	bl FUN_0200B1EC
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x20]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x3c]
	ldr r1, [sp, #0x3c]
	adds r0, r7, #0
	bl ov62_022349A8
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	ldr r2, [sp, #0x34]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0200C2E0
	ldr r2, [sp, #0x38]
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C @ =0x000F0D00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x38]
	bl FUN_020237BC
	ldr r0, [sp, #0x3c]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200C41C
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	adds r5, #0x3c
	movs r1, #0x10
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C @ =0x000F0D00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x20]
	bl FUN_02030BFC
	adds r6, r0, #0
	ldr r0, [sp, #0x20]
	bl FUN_02030C08
	ldr r5, [sp, #0x14]
	str r0, [sp, #0x40]
	adds r5, #0x4c
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	cmp r6, #0
	bne _02231F18
	ldr r0, [r7, #0x48]
	movs r1, #0x15
	bl FUN_0200B1EC
	movs r1, #0
	adds r6, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C @ =0x000F0D00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	b _02231FD2
_02231F18:
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x44]
	ldr r0, [r7, #0x48]
	movs r1, #0x16
	bl FUN_0200B1EC
	str r0, [sp, #0x48]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0200BDD0
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	adds r0, r4, #0
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C @ =0x000F0D00
	ldr r2, [sp, #0x44]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x44]
	bl FUN_020237BC
	ldr r0, [sp, #0x48]
	bl FUN_020237BC
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _02231FD2
	ldr r0, [sp, #0x14]
	movs r1, #0
	str r0, [sp, #0x18]
	adds r0, #0x5c
	str r0, [sp, #0x18]
	bl FUN_0201ADA4
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r5, r0, #0
	ldr r0, [r7, #0x48]
	movs r1, #0x17
	bl FUN_0200B1EC
	str r0, [sp, #0x4c]
	ldr r3, [sp, #0x40]
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0200BE08
	ldr r2, [sp, #0x4c]
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_0200C388
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	movs r3, #4
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x18]
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x4c]
	bl FUN_020237BC
_02231FD2:
	adds r0, r4, #0
	bl FUN_0200C41C
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	adds r5, #0x6c
	movs r1, #0x11
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223200C @ =0x000F0D00
	b _02232010
	.align 2, 0
_02232004: .4byte 0x02248A28
_02232008: .4byte 0x022489F8
_0223200C: .4byte 0x000F0D00
_02232010:
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	add r1, sp, #0x50
	adds r0, #0x7c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	movs r2, #0x66
	bl FUN_02030C28
	adds r5, r0, #0
	bne _02232046
	add r0, sp, #0x50
	movs r1, #0x66
	bl FUN_02014B34
	adds r5, r0, #0
_02232046:
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223207C @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200B3F0
	add sp, #0xd8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223207C: .4byte 0x000F0D00
	thumb_func_end ov62_02231C78

	thumb_func_start ov62_02232080
ov62_02232080: @ 0x02232080
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r5, #0xc
_02232088:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #8
	blt _02232088
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02232080

	thumb_func_start ov62_022320A0
ov62_022320A0: @ 0x022320A0
	push {r3, lr}
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _022320AC
	bl FUN_0200D3F4
_022320AC:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_022320A0

	thumb_func_start ov62_022320B0
ov62_022320B0: @ 0x022320B0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r5, #0x1c]
	ldr r1, _022320E8 @ =0x000186A0
	bl FUN_0200D070
	ldr r0, [r5, #0x1c]
	ldr r1, _022320E8 @ =0x000186A0
	bl FUN_0200D080
	ldr r0, [r5, #0x1c]
	ldr r1, _022320E8 @ =0x000186A0
	bl FUN_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _022320E8 @ =0x000186A0
	bl FUN_0200D0A0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022320E4
	bl FUN_0200D0F4
	movs r0, #0
	str r0, [r4, #4]
_022320E4:
	pop {r3, r4, r5, pc}
	nop
_022320E8: .4byte 0x000186A0
	thumb_func_end ov62_022320B0

	thumb_func_start ov62_022320EC
ov62_022320EC: @ 0x022320EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r6, [r1, #0x18]
	ldr r4, [r0, #0x1c]
	ldr r7, [r0, #0x28]
	str r1, [sp, #0x18]
	bl FUN_02079FD0
	movs r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022321F0 @ =0x000186A0
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r7, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl FUN_0200CD7C
	str r0, [sp, #0x1c]
	bl FUN_02079FDC
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _022321F0 @ =0x000186A0
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x13
	bl FUN_0200CE0C
	bl FUN_02079FE8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _022321F0 @ =0x000186A0
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x13
	bl FUN_0200CE3C
	ldr r0, [r5]
	bl FUN_02030BBC
	adds r7, r0, #0
	ldr r0, [r5]
	bl FUN_02030BCC
	str r0, [sp, #0x20]
	ldr r0, [r5]
	bl FUN_02030BEC
	str r0, [sp, #0x24]
	cmp r7, #0
	beq _022321EC
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	adds r0, r7, #0
	bl FUN_02079D8C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022321F0 @ =0x000186A0
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r2, #0x13
	bl FUN_0200D888
	movs r1, #0x4c
	add r0, sp, #0x28
	strh r1, [r0]
	movs r1, #0x3c
	strh r1, [r0, #2]
	movs r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _022321F0 @ =0x000186A0
	movs r1, #1
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	subs r0, r1, #2
	str r1, [sp, #0x38]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	add r2, sp, #0x28
	bl FUN_0200CE6C
	str r0, [r5, #4]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	adds r0, r7, #0
	bl FUN_02079EDC
	adds r2, r0, #0
	ldr r1, [sp, #0x1c]
	ldr r0, [r5, #4]
	adds r1, r1, r2
	bl FUN_0200D430
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_0200D364
_022321EC:
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022321F0: .4byte 0x000186A0
	thumb_func_end ov62_022320EC

	thumb_func_start ov62_022321F4
ov62_022321F4: @ 0x022321F4
	ldr r3, _022321FC @ =FUN_0200D3F4
	ldr r0, [r0, #8]
	bx r3
	nop
_022321FC: .4byte FUN_0200D3F4
	thumb_func_end ov62_022321F4

	thumb_func_start ov62_02232200
ov62_02232200: @ 0x02232200
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02232230 @ =0x0002869F
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _02232230 @ =0x0002869F
	bl FUN_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _02232230 @ =0x0002869F
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02232230 @ =0x0002869F
	bl FUN_0200D0A0
	ldr r0, [r5, #8]
	bl FUN_0200D0F4
	pop {r3, r4, r5, pc}
	nop
_02232230: .4byte 0x0002869F
	thumb_func_end ov62_02232200

	thumb_func_start ov62_02232234
ov62_02232234: @ 0x02232234
	push {r4, lr}
	adds r4, r1, #0
	cmp r0, #0x10
	bgt _02232240
	cmp r0, #0
	bge _02232246
_02232240:
	bl FUN_02022974
	movs r0, #0
_02232246:
	cmp r4, #4
	bne _02232252
	movs r1, #0x4f
	lsls r1, r1, #2
	adds r0, r0, r1
	pop {r4, pc}
_02232252:
	cmp r4, #5
	blt _0223225A
	movs r0, #0
	pop {r4, pc}
_0223225A:
	lsls r2, r0, #4
	ldr r0, _02232268 @ =0x02248AD8
	lsls r1, r4, #2
	adds r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, pc}
	nop
_02232268: .4byte 0x02248AD8
	thumb_func_end ov62_02232234

	thumb_func_start ov62_0223226C
ov62_0223226C: @ 0x0223226C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	movs r0, #0xe
	str r0, [sp, #0x20]
	ldr r0, [r5]
	str r1, [sp, #0x18]
	movs r7, #0xd
	bl FUN_02030BAC
	ldr r1, [sp, #0x18]
	ldr r2, _02232370 @ =0x0000086C
	ldr r6, [r1, #0x18]
	ldr r4, [r1, #0x1c]
	ldr r1, [r1, #0x28]
	str r1, [sp, #0x24]
	ldr r1, [sp, #0x18]
	ldr r1, [r1, r2]
	cmp r1, #0
	bne _022322A0
	cmp r0, #1
	bne _022322C4
	movs r0, #0x10
	movs r7, #0xf
	str r0, [sp, #0x20]
	b _022322C4
_022322A0:
	ldr r0, [r5]
	bl FUN_02030CDC
	str r0, [sp, #0x1c]
	cmp r0, #0x10
	blt _022322B0
	movs r0, #0
	str r0, [sp, #0x1c]
_022322B0:
	ldr r0, [sp, #0x1c]
	movs r1, #2
	bl ov62_02232234
	adds r7, r0, #0
	ldr r0, [sp, #0x1c]
	movs r1, #3
	bl ov62_02232234
	str r0, [sp, #0x20]
_022322C4:
	movs r0, #0x92
	str r0, [sp]
	str r7, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02232374 @ =0x0002869F
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	adds r2, r6, #0
	adds r3, r4, #0
	bl FUN_0200CD7C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02232374 @ =0x0002869F
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x92
	movs r3, #9
	bl FUN_0200CE0C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02232374 @ =0x0002869F
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x92
	movs r3, #0xa
	bl FUN_0200CE3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02232374 @ =0x0002869F
	ldr r3, [sp, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x92
	bl FUN_0200D888
	movs r1, #0x28
	add r0, sp, #0x28
	strh r1, [r0]
	movs r1, #0x3c
	strh r1, [r0, #2]
	movs r2, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _02232374 @ =0x0002869F
	movs r1, #1
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	subs r0, r1, #2
	str r1, [sp, #0x38]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	ldr r0, [r0, #0x18]
	ldr r1, [r1, #0x1c]
	add r2, sp, #0x28
	bl FUN_0200CE6C
	str r0, [r5, #8]
	movs r1, #1
	bl FUN_0200D364
	ldr r0, [r5, #8]
	bl FUN_0200D330
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02232370: .4byte 0x0000086C
_02232374: .4byte 0x0002869F
	thumb_func_end ov62_0223226C

	thumb_func_start ov62_02232378
ov62_02232378: @ 0x02232378
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov62_02231C78
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_0223226C
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_022320EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02232378

	thumb_func_start ov62_02232394
ov62_02232394: @ 0x02232394
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov62_02232080
	adds r0, r5, #0
	movs r1, #0
	bl ov62_022323B8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_02232200
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_022320B0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02232394

	thumb_func_start ov62_022323B8
ov62_022323B8: @ 0x022323B8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov62_022320A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_022321F4
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_022323B8

	thumb_func_start ov62_022323CC
ov62_022323CC: @ 0x022323CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _02232498 @ =0x0000088C
	adds r4, r1, #0
	ldr r0, [r4, r0]
	bl FUN_02030BFC
	str r0, [sp, #0x10]
	ldr r0, _02232498 @ =0x0000088C
	ldr r0, [r4, r0]
	bl FUN_02030C08
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	adds r5, #0x18
	cmp r0, #0
	bne _02232400
	cmp r6, #0
	bne _02232400
	ldr r0, [r4, #0x48]
	movs r1, #0x7d
	bl FUN_0200B1EC
	str r0, [sp, #0x14]
	b _0223246C
_02232400:
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	cmp r6, #0
	beq _02232438
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x48]
	movs r1, #0x17
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r2, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #0
	adds r3, r6, #0
	bl FUN_0200BE08
	ldr r1, [sp, #0x14]
	adds r0, r7, #0
	adds r2, r4, #0
	bl FUN_0200C388
	b _02232460
_02232438:
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x48]
	movs r1, #0x16
	bl FUN_0200B1EC
	adds r4, r0, #0
	ldr r2, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0200BDD0
	ldr r1, [sp, #0x14]
	adds r0, r7, #0
	adds r2, r4, #0
	bl FUN_0200C388
_02232460:
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
_0223246C:
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223249C @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232498: .4byte 0x0000088C
_0223249C: .4byte 0x000F0D00
	thumb_func_end ov62_022323CC

	thumb_func_start ov62_022324A0
ov62_022324A0: @ 0x022324A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	str r0, [sp, #0x18]
	adds r0, #0x18
	adds r4, r2, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	str r1, [sp, #0x14]
	str r0, [r5, #4]
	movs r0, #0
	str r0, [r5]
	str r0, [r5, #0xc]
	ldr r0, [r4, #0x24]
	str r0, [r5, #0x10]
	str r4, [r5, #0x28]
	adds r0, r1, #0
	ldr r0, [r0, #0x48]
	str r0, [r5, #0x34]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x10]
	blx FUN_020E1F6C
	adds r0, r0, #1
	str r0, [r5, #0x14]
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _022324E6
	str r1, [r5, #0x10]
	subs r0, r1, #1
	str r0, [r5, #0x40]
	ldr r0, [r5, #0x10]
	subs r0, r0, #1
	str r0, [r5, #0x44]
_022324E6:
	ldr r0, [sp, #0x18]
	bl FUN_0201A7A0
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r4, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0xc]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r0, [sp, #0x18]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x10]
	movs r7, #0
	cmp r0, #0
	ble _02232584
	adds r6, r7, #0
_02232538:
	ldr r1, [r4]
	ldr r0, [r5, #0x34]
	ldr r1, [r1, r6]
	bl FUN_0200B1EC
	str r0, [sp, #0x1c]
	ldr r0, [r4, #8]
	movs r1, #0
	lsls r0, r0, #4
	muls r0, r7, r0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232590 @ =0x000F0D00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r3, r1, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	ldr r0, [r4]
	ldr r0, [r0, r6]
	cmp r0, #0x10
	bne _0223257A
	ldr r1, [sp, #0x14]
	adds r0, r5, #0
	bl ov62_022323CC
_0223257A:
	ldr r0, [r5, #0x10]
	adds r7, r7, #1
	adds r6, #0x10
	cmp r7, r0
	blt _02232538
_02232584:
	ldr r0, [sp, #0x18]
	bl FUN_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232590: .4byte 0x000F0D00
	thumb_func_end ov62_022324A0

	thumb_func_start ov62_02232594
ov62_02232594: @ 0x02232594
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r0, #0
	str r0, [sp, #0x20]
	adds r0, #0x18
	adds r5, r3, #0
	str r0, [sp, #0x20]
	ldr r0, [r5, #4]
	str r1, [sp, #0x14]
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x24]
	cmp r2, #0
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	beq _022325BC
	str r2, [r4, #0x34]
	b _022325C2
_022325BC:
	adds r0, r1, #0
	ldr r0, [r0, #0x48]
	str r0, [r4, #0x34]
_022325C2:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	blx FUN_020E1F6C
	adds r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x10]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x10]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r4, #0x44]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge _022325F6
	str r1, [r4, #0x10]
	subs r0, r1, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	str r0, [r4, #0x44]
_022325F6:
	ldr r0, [sp, #0x20]
	bl FUN_0201A7A0
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x20]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0xc]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r0, [sp, #0x20]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5]
	cmp r0, #0
	beq _0223268C
	ldr r0, [r4, #0x10]
	movs r6, #0
	cmp r0, #0
	ble _0223268A
	adds r7, r6, #0
_0223264E:
	ldr r1, [r5]
	ldr r0, [r4, #0x34]
	ldr r1, [r1, r7]
	bl FUN_0200B1EC
	str r0, [sp, #0x24]
	ldr r0, [r5, #8]
	movs r1, #0
	lsls r0, r0, #4
	muls r0, r6, r0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232770 @ =0x000F0D00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r3, r1, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x24]
	bl FUN_020237BC
	ldr r0, [r4, #0x10]
	adds r6, r6, #1
	adds r7, #0x10
	cmp r6, r0
	blt _0223264E
_0223268A:
	b _02232766
_0223268C:
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ble _02232766
	ldr r0, [sp, #0x14]
	movs r5, #4
	str r0, [sp, #0x1c]
_0223269C:
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x14]
	movs r1, #0x63
	ldr r0, [r0, #0x48]
	bl FUN_0200B1EC
	str r0, [sp, #0x28]
	movs r0, #1
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r1, r1, #1
	movs r2, #2
	movs r3, #1
	bl FUN_020238A0
	ldr r2, [sp, #0x1c]
	ldr r1, _02232774 @ =0x00002608
	adds r0, r7, #0
	ldr r1, [r2, r1]
	bl FUN_02023D28
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	bl ov62_022349A8
	movs r0, #0
	ldr r1, [sp, #0x2c]
	adds r2, r0, #0
	bl FUN_02002D7C
	mov ip, r0
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232770 @ =0x000F0D00
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	movs r3, #0x10
	mov r6, ip
	movs r1, #0
	subs r3, r3, r6
	bl FUN_0201D78C
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232770 @ =0x000F0D00
	ldr r2, [sp, #0x28]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	movs r1, #0
	movs r3, #0x10
	bl FUN_0201D78C
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232770 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r2, r7, #0
	movs r3, #0x16
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x2c]
	bl FUN_020237BC
	ldr r0, [sp, #0x28]
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	ldr r1, [r4, #0x10]
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r5, #0x18
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	blt _0223269C
_02232766:
	ldr r0, [sp, #0x20]
	bl FUN_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02232770: .4byte 0x000F0D00
_02232774: .4byte 0x00002608
	thumb_func_end ov62_02232594

	thumb_func_start ov62_02232778
ov62_02232778: @ 0x02232778
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xe0
	adds r4, r0, #0
	ldr r0, [sp, #0x2f4]
	adds r5, r3, #0
	str r0, [sp, #0x2f4]
	ldr r0, [sp, #0x2f8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x2f8]
	movs r0, #0
	str r0, [sp, #0x40]
	add r6, sp, #0x264
	adds r1, r0, #0
	movs r3, #7
_02232796:
	stm r6!, {r0, r1}
	stm r6!, {r0, r1}
	subs r3, r3, #1
	bne _02232796
	stm r6!, {r0, r1}
	adds r0, r4, #0
	str r0, [sp, #0x50]
	adds r0, #0x18
	str r0, [sp, #0x50]
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	movs r0, #0
	str r0, [r4]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x24]
	cmp r2, #0
	str r0, [r4, #0x10]
	str r5, [r4, #0x28]
	beq _022327C0
	str r2, [r4, #0x34]
	b _022327C6
_022327C0:
	ldr r0, [sp, #0x14]
	ldr r0, [r0, #0x48]
	str r0, [r4, #0x34]
_022327C6:
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x10]
	blx FUN_020E1F6C
	adds r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r1, r0
	bge _022327E6
	str r1, [r4, #0x10]
	subs r0, r1, #1
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	str r0, [r4, #0x44]
_022327E6:
	ldr r1, [r4, #0x10]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r4, #0x40]
	ldr r1, [r4, #0x10]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r4, #0x44]
	ldr r0, [sp, #0x50]
	bl FUN_0201A7A0
	ldr r0, [r5, #0x10]
	ldr r1, [sp, #0x50]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #0x20]
	ldr r3, [r5, #0xc]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r0, #0x24]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r0, [sp, #0x50]
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x66
	bl ov62_02231690
	add r2, sp, #0x58
	ldr r3, _02232AA4 @ =0x022488F8
	adds r5, r0, #0
	ldm r3!, {r0, r1}
	adds r7, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r6, #1
	str r0, [r2]
	ldr r0, [r4, #0x28]
	ldr r1, [r0]
	ldr r0, [r1, #8]
	str r0, [sp, #0x38]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x3c]
	movs r0, #0
	str r0, [sp, #0x264]
	ldr r0, [sp, #0x2f4]
	lsls r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #1
	ble _022328B0
	adds r0, r1, #0
	movs r2, #0x10
	add r3, sp, #0x268
	mov ip, r0
_0223287C:
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	adds r0, r0, r2
	ldr r1, [r0, #0xc]
	ldr r7, [r0, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x54]
	eors r1, r0
	ldr r0, [sp, #0x38]
	eors r0, r7
	orrs r0, r1
	bne _0223289A
	ldr r0, [sp, #0x40]
	str r0, [r3]
	b _022328A4
_0223289A:
	ldr r0, [sp, #0x54]
	str r7, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r6, [r3]
	str r6, [sp, #0x40]
_022328A4:
	adds r6, r6, #1
	mov r0, ip
	adds r2, #0x10
	adds r3, r3, #4
	cmp r6, r0
	blt _0223287C
_022328B0:
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bgt _022328BC
	b _02232A90
_022328BC:
	add r0, sp, #0x264
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2f4]
	ldr r6, [sp, #0x18]
	str r0, [sp, #0x1c]
	adds r0, #0x58
	str r0, [sp, #0x1c]
_022328CA:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x48]
	bl FUN_0200B1EC
	str r0, [sp, #0x4c]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x48]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2f4]
	cmp r0, #0
	beq _02232904
	cmp r0, #1
	beq _0223292A
	cmp r0, #2
	beq _0223294A
	b _02232984
_02232904:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	adds r1, r1, r6
	ldr r1, [r1, #4]
	bl FUN_0200B1EC
	str r0, [sp, #0x44]
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0
	bl FUN_0200B48C
	b _02232984
_0223292A:
	ldr r0, [r4, #0x28]
	movs r1, #0x66
	ldr r0, [r0]
	adds r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x30]
	movs r0, #0xff
	bl FUN_02023790
	str r0, [sp, #0x44]
	ldr r2, [sp, #0x30]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0200C2E0
	b _02232984
_0223294A:
	ldr r0, [r4, #0x28]
	movs r1, #0x66
	ldr r0, [r0]
	adds r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x2c]
	movs r0, #0xff
	bl FUN_02023790
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x2c]
	movs r1, #0x66
	add r2, sp, #0x64
	bl FUN_0200B274
	ldr r0, [sp, #0x44]
	add r1, sp, #0x64
	bl FUN_02023D28
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0
	bl FUN_0200B48C
_02232984:
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	adds r1, r0, r6
	ldr r0, [r1, #8]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl ov62_0223438C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl FUN_020239D4
	movs r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x48]
	ldr r1, [r1]
	movs r2, #2
	adds r1, r1, #1
	movs r3, #1
	bl FUN_020238A0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x48]
	adds r0, r5, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x4c]
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_0200C388
	ldr r0, [r4, #0x28]
	adds r2, r7, #0
	ldr r0, [r0, #8]
	lsls r1, r0, #4
	ldr r0, [sp, #0x18]
	muls r1, r0, r1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232AA8 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	adds r3, r1, #0
	bl FUN_0201D78C
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _02232A56
	ldr r0, [sp, #0x2f8]
	cmp r0, #0
	beq _02232A56
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x2f8]
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_0200C388
	ldr r0, [r4, #0x28]
	adds r2, r7, #0
	ldr r0, [r0, #8]
	movs r3, #0x10
	lsls r1, r0, #4
	ldr r0, [sp, #0x18]
	muls r1, r0, r1
	adds r1, #0x10
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232AA8 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x50]
	bl FUN_0201D78C
_02232A56:
	ldr r0, [sp, #0x4c]
	bl FUN_020237BC
	ldr r0, [sp, #0x48]
	bl FUN_020237BC
	ldr r0, [sp, #0x44]
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x34]
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0200C41C
	ldr r0, [sp, #0x20]
	ldr r1, [r4, #0x10]
	adds r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	adds r6, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r1
	bge _02232A90
	b _022328CA
_02232A90:
	ldr r0, [sp, #0x50]
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_0200B3F0
	add sp, #0x1fc
	add sp, #0xe0
	pop {r4, r5, r6, r7, pc}
	nop
_02232AA4: .4byte 0x022488F8
_02232AA8: .4byte 0x000F0D00
	thumb_func_end ov62_02232778

	thumb_func_start ov62_02232AAC
ov62_02232AAC: @ 0x02232AAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	str r0, [sp, #0x14]
	adds r0, #0x18
	adds r7, r2, #0
	str r0, [sp, #0x14]
	ldr r0, [r7, #4]
	adds r4, r1, #0
	str r0, [r6, #4]
	movs r0, #0
	str r0, [r6]
	str r0, [r6, #0xc]
	ldr r0, [r7, #0x24]
	adds r5, r3, #0
	str r0, [r6, #0x10]
	str r7, [r6, #0x28]
	ldr r0, [r4, #0x48]
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	blx FUN_020E1F6C
	adds r0, r0, #1
	str r0, [r6, #0x14]
	ldr r1, [r6, #0x10]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r6, #0x40]
	ldr r1, [r6, #0x10]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [r6, #0x44]
	ldr r1, [r6, #4]
	ldr r0, [r6, #0x10]
	cmp r1, r0
	bge _02232B06
	str r1, [r6, #0x10]
	subs r0, r1, #1
	str r0, [r6, #0x40]
	ldr r0, [r6, #0x10]
	subs r0, r0, #1
	str r0, [r6, #0x44]
_02232B06:
	movs r0, #1
	str r0, [r6, #0x48]
	ldr r0, [sp, #0x14]
	bl FUN_0201A7A0
	ldr r0, [r7, #0x10]
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r7, #0x14]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r7, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [r7, #0x1c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r2, [r7, #0x20]
	ldr r3, [r7, #0xc]
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [r4, #0x24]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r6, #0x10]
	movs r4, #0
	cmp r0, #0
	ble _02232BA6
_02232B58:
	ldr r0, [r7, #8]
	movs r1, #0
	lsls r0, r0, #3
	muls r0, r4, r0
	adds r0, r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232BB0 @ =0x000F0D00
	adds r3, r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5]
	bl FUN_0201D78C
	ldr r0, [r7, #8]
	movs r1, #0
	lsls r0, r0, #3
	muls r0, r4, r0
	adds r0, r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232BB0 @ =0x000F0D00
	movs r3, #0x88
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	ldr r2, [r5, #4]
	bl FUN_0201D78C
	ldr r0, [r6, #0x10]
	adds r4, r4, #1
	adds r5, #8
	cmp r4, r0
	blt _02232B58
_02232BA6:
	ldr r0, [sp, #0x14]
	bl FUN_0201A9A4
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02232BB0: .4byte 0x000F0D00
	thumb_func_end ov62_02232AAC

	thumb_func_start ov62_02232BB4
ov62_02232BB4: @ 0x02232BB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5, #0x38]
	ldr r0, [r5, #0xc]
	adds r4, r2, #0
	cmp r1, r0
	bne _02232BCA
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232BCA:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _02232BD8
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02232BD8:
	adds r7, r5, #0
	adds r7, #0x18
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r3, [r5, #0x40]
	ldr r1, [r5, #0x3c]
	movs r0, #0
	cmp r1, r3
	blt _02232C00
	ldr r2, [r5, #0x38]
	ldr r1, [r5, #4]
	subs r0, r2, r3
	adds r3, r3, #1
	subs r3, r1, r3
	cmp r2, r3
	blt _02232C00
	ldr r0, [r5, #0x10]
	subs r0, r1, r0
_02232C00:
	ldr r1, [r5, #0x10]
	movs r6, #0
	cmp r1, #0
	ble _02232C62
	lsls r0, r0, #3
	adds r4, r4, r0
_02232C0C:
	ldr r2, [r4]
	cmp r2, #0
	beq _02232C58
	ldr r0, [r5, #0x28]
	movs r1, #0
	ldr r0, [r0, #8]
	adds r3, r1, #0
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232C74 @ =0x000F0D00
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r7, #0
	bl FUN_0201D78C
	ldr r0, [r5, #0x28]
	movs r1, #0
	ldr r0, [r0, #8]
	movs r3, #0x88
	lsls r0, r0, #3
	muls r0, r6, r0
	adds r0, r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232C74 @ =0x000F0D00
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #4]
	adds r0, r7, #0
	bl FUN_0201D78C
_02232C58:
	ldr r0, [r5, #0x10]
	adds r6, r6, #1
	adds r4, #8
	cmp r6, r0
	blt _02232C0C
_02232C62:
	adds r0, r7, #0
	bl FUN_0201A954
	ldr r0, [r5, #0x38]
	str r0, [r5, #0xc]
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02232C74: .4byte 0x000F0D00
	thumb_func_end ov62_02232BB4

	thumb_func_start ov62_02232C78
ov62_02232C78: @ 0x02232C78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0xe8
	adds r4, r0, #0
	ldr r0, [sp, #0x2f8]
	str r1, [sp, #0x10]
	str r0, [sp, #0x2f8]
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0xc]
	str r3, [sp, #0x14]
	cmp r1, r0
	bne _02232C9A
	add sp, #0x1fc
	add sp, #0xe8
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_02232C9A:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _02232CAA
	add sp, #0x1fc
	add sp, #0xe8
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_02232CAA:
	adds r0, r4, #0
	str r0, [sp, #0x58]
	adds r0, #0x18
	str r0, [sp, #0x58]
	movs r0, #0x66
	bl ov62_02231690
	adds r5, r0, #0
	ldr r0, [sp, #0x58]
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	movs r0, #8
	ldrsh r0, [r4, r0]
	ldr r1, [r4, #0x10]
	add r3, sp, #0x26c
	str r0, [sp, #0x18]
	adds r0, r0, r1
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	movs r2, #7
	adds r1, r0, #0
_02232CDC:
	stm r3!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02232CDC
	stm r3!, {r0, r1}
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x34]
	cmp r0, r1
	blt _02232CF6
	ldr r0, [r4, #0x10]
	str r1, [sp, #0x34]
	subs r0, r1, r0
	str r0, [sp, #0x18]
_02232CF6:
	ldr r3, _02232F60 @ =0x02248904
	add r2, sp, #0x60
	ldm r3!, {r0, r1}
	adds r7, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r6, #1
	str r0, [r2]
	ldr r0, [r4, #0x28]
	ldr r1, [r0]
	ldr r0, [r1, #8]
	str r0, [sp, #0x38]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x3c]
	movs r0, #0
	str r0, [sp, #0x26c]
	ldr r0, [sp, #0x14]
	lsls r0, r0, #2
	ldr r1, [r7, r0]
	cmp r1, #1
	ble _02232D5C
	adds r0, r1, #0
	movs r2, #0x10
	add r3, sp, #0x270
	mov ip, r0
_02232D28:
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	adds r0, r0, r2
	ldr r1, [r0, #0xc]
	ldr r7, [r0, #8]
	ldr r0, [sp, #0x3c]
	str r1, [sp, #0x5c]
	eors r1, r0
	ldr r0, [sp, #0x38]
	eors r0, r7
	orrs r0, r1
	bne _02232D46
	ldr r0, [sp, #0x40]
	str r0, [r3]
	b _02232D50
_02232D46:
	ldr r0, [sp, #0x5c]
	str r7, [sp, #0x38]
	str r0, [sp, #0x3c]
	str r6, [r3]
	str r6, [sp, #0x40]
_02232D50:
	adds r6, r6, #1
	mov r0, ip
	adds r2, #0x10
	adds r3, r3, #4
	cmp r6, r0
	blt _02232D28
_02232D5C:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x34]
	cmp r1, r0
	blt _02232D66
	b _02232F46
_02232D66:
	adds r0, r1, #0
	lsls r6, r0, #4
	add r1, sp, #0x26c
	lsls r0, r0, #2
	adds r0, r1, r0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	adds r0, #0x58
	str r0, [sp, #0x1c]
_02232D7A:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x1c]
	ldr r0, [r0, #0x48]
	bl FUN_0200B1EC
	str r0, [sp, #0x54]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x50]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _02232DB4
	cmp r0, #1
	beq _02232DDA
	cmp r0, #2
	beq _02232DFA
	b _02232E34
_02232DB4:
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	adds r1, r1, r6
	ldr r1, [r1, #4]
	bl FUN_0200B1EC
	str r0, [sp, #0x4c]
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x4c]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0
	bl FUN_0200B48C
	b _02232E34
_02232DDA:
	ldr r0, [r4, #0x28]
	movs r1, #0x66
	ldr r0, [r0]
	adds r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x30]
	movs r0, #0xff
	bl FUN_02023790
	str r0, [sp, #0x4c]
	ldr r2, [sp, #0x30]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0200C2E0
	b _02232E34
_02232DFA:
	ldr r0, [r4, #0x28]
	movs r1, #0x66
	ldr r0, [r0]
	adds r0, r0, r6
	ldr r0, [r0, #4]
	str r0, [sp, #0x2c]
	movs r0, #0xff
	bl FUN_02023790
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x2c]
	movs r1, #0x66
	add r2, sp, #0x6c
	bl FUN_0200B274
	ldr r0, [sp, #0x4c]
	add r1, sp, #0x6c
	bl FUN_02023D28
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x4c]
	adds r0, r5, #0
	movs r1, #1
	movs r3, #0
	bl FUN_0200B48C
_02232E34:
	ldr r0, [r4, #0x28]
	ldr r0, [r0]
	adds r1, r0, r6
	ldr r0, [r1, #8]
	str r0, [sp, #0x24]
	ldr r0, [r1, #0xc]
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl ov62_0223438C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	bl FUN_020239D4
	movs r0, #1
	str r0, [sp]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x50]
	ldr r1, [r1]
	movs r2, #2
	adds r1, r1, #1
	movs r3, #1
	bl FUN_020238A0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x50]
	adds r0, r5, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x54]
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_0200C388
	ldr r0, [r4, #0x28]
	adds r2, r7, #0
	ldr r0, [r0, #8]
	lsls r1, r0, #4
	ldr r0, [sp, #0x44]
	muls r1, r0, r1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232F64 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	adds r3, r1, #0
	bl FUN_0201D78C
	ldr r0, [r4, #0x28]
	ldr r0, [r0, #8]
	cmp r0, #2
	bne _02232F06
	ldr r0, [sp, #0x2f8]
	cmp r0, #0
	beq _02232F06
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x48]
	adds r0, r5, #0
	movs r1, #2
	movs r3, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x2f8]
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_0200C388
	ldr r0, [r4, #0x28]
	adds r2, r7, #0
	ldr r0, [r0, #8]
	movs r3, #0x10
	lsls r1, r0, #4
	ldr r0, [sp, #0x44]
	muls r1, r0, r1
	adds r1, #0x10
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02232F64 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x58]
	bl FUN_0201D78C
_02232F06:
	ldr r0, [sp, #0x44]
	adds r0, r0, #1
	str r0, [sp, #0x44]
	ldr r0, [sp, #0x54]
	bl FUN_020237BC
	ldr r0, [sp, #0x50]
	bl FUN_020237BC
	ldr r0, [sp, #0x4c]
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x48]
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0200C41C
	ldr r0, [sp, #0x20]
	adds r6, #0x10
	adds r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	adds r1, r0, #1
	ldr r0, [sp, #0x34]
	str r1, [sp, #0x18]
	cmp r1, r0
	bge _02232F46
	b _02232D7A
_02232F46:
	ldr r0, [sp, #0x58]
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_0200B3F0
	movs r0, #8
	ldrsh r0, [r4, r0]
	str r0, [r4, #0xc]
	movs r0, #0
	add sp, #0x1fc
	add sp, #0xe8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02232F60: .4byte 0x02248904
_02232F64: .4byte 0x000F0D00
	thumb_func_end ov62_02232C78

	thumb_func_start ov62_02232F68
ov62_02232F68: @ 0x02232F68
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x28]
	adds r7, r1, #0
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _02232FB6
	ldr r0, [r5, #0x10]
	ldr r6, [sp, #0x1c]
	cmp r0, #0
	ble _02232FB6
	adds r4, r6, #0
_02232F86:
	ldr r0, [r5, #0x28]
	ldr r0, [r0, #0x28]
	adds r0, r0, r4
	bl FUN_02022760
	cmp r0, #0
	beq _02232FAC
	adds r0, r7, #0
	bl ov62_02234520
	movs r1, #8
	ldrsh r1, [r5, r1]
	ldr r0, [r5, #0x28]
	adds r1, r1, r6
	ldr r0, [r0]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #4]
	str r0, [sp, #0x1c]
_02232FAC:
	ldr r0, [r5, #0x10]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _02232F86
_02232FB6:
	movs r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bne _02232FC6
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02232FC6:
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _02232FD4
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_02232FD4:
	adds r0, r5, #0
	str r0, [sp, #0x18]
	adds r0, #0x18
	movs r1, #0
	str r0, [sp, #0x18]
	bl FUN_0201ADA4
	movs r0, #8
	ldrsh r0, [r5, r0]
	ldr r2, [r5, #0x10]
	ldr r1, [r5, #4]
	str r0, [sp, #0x10]
	adds r0, r0, r2
	movs r6, #0
	str r0, [sp, #0x14]
	cmp r0, r1
	blt _02232FFC
	subs r0, r1, r2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
_02232FFC:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bge _0223304E
	adds r0, r1, #0
	lsls r4, r0, #4
_02233008:
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x34]
	ldr r1, [r1]
	ldr r1, [r1, r4]
	bl FUN_0200B1EC
	adds r7, r0, #0
	ldr r0, [r5, #0x28]
	movs r1, #0
	ldr r0, [r0, #8]
	adds r2, r7, #0
	lsls r0, r0, #4
	muls r0, r6, r0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233060 @ =0x000F0D00
	adds r3, r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	adds r1, r0, #1
	ldr r0, [sp, #0x14]
	adds r4, #0x10
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _02233008
_0223304E:
	ldr r0, [sp, #0x18]
	bl FUN_0201A954
	movs r0, #8
	ldrsh r0, [r5, r0]
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x1c]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233060: .4byte 0x000F0D00
	thumb_func_end ov62_02232F68

	thumb_func_start ov62_02233064
ov62_02233064: @ 0x02233064
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r1, [r0, #0x38]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	bne _0223307A
	add sp, #0x2c
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0223307A:
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #4]
	cmp r1, r0
	bne _0223308A
	add sp, #0x2c
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0223308A:
	ldr r0, [sp, #0x10]
	movs r1, #0
	str r0, [sp, #0x28]
	adds r0, #0x18
	str r0, [sp, #0x28]
	bl FUN_0201ADA4
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #0x40]
	ldr r1, [r1, #0x3c]
	cmp r1, r0
	blt _022330C4
	ldr r1, [sp, #0x10]
	ldr r2, [r1, #0x38]
	subs r1, r2, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	adds r0, r0, #1
	ldr r1, [r1, #4]
	subs r0, r1, r0
	cmp r2, r0
	blt _022330C4
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	subs r0, r1, r0
	str r0, [sp, #0x1c]
_022330C4:
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ble _022331AE
	ldr r0, [sp, #0x1c]
	movs r4, #4
	lsls r1, r0, #2
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	str r0, [sp, #0x18]
_022330DC:
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r5, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r7, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0x63
	ldr r0, [r0, #0x48]
	bl FUN_0200B1EC
	str r0, [sp, #0x24]
	movs r0, #1
	str r0, [sp]
	ldr r2, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	adds r0, r7, #0
	adds r1, r2, r1
	adds r1, r1, #1
	movs r2, #2
	movs r3, #1
	bl FUN_020238A0
	ldr r2, [sp, #0x18]
	ldr r1, _022331C0 @ =0x00002608
	adds r0, r5, #0
	ldr r1, [r2, r1]
	bl FUN_02023D28
	ldr r0, [sp, #0x14]
	adds r1, r5, #0
	bl ov62_022349A8
	movs r0, #0
	adds r1, r7, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	mov ip, r0
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022331C4 @ =0x000F0D00
	movs r3, #0x10
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	mov r6, ip
	ldr r0, [sp, #0x28]
	movs r1, #0
	adds r2, r7, #0
	subs r3, r3, r6
	bl FUN_0201D78C
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022331C4 @ =0x000F0D00
	ldr r2, [sp, #0x24]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	movs r1, #0
	movs r3, #0x10
	bl FUN_0201D78C
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022331C4 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	adds r2, r5, #0
	movs r3, #0x16
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x24]
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	adds r4, #0x18
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #0x20]
	cmp r0, r1
	blt _022330DC
_022331AE:
	ldr r0, [sp, #0x28]
	bl FUN_0201A954
	ldr r0, [sp, #0x10]
	ldr r1, [r0, #0x38]
	str r1, [r0, #0xc]
	movs r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022331C0: .4byte 0x00002608
_022331C4: .4byte 0x000F0D00
	thumb_func_end ov62_02233064

	thumb_func_start ov62_022331C8
ov62_022331C8: @ 0x022331C8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r6, #0xff
	cmp r1, #0
	bge _022331E8
	ldr r0, [r5, #0x38]
	cmp r0, #0
	ble _02233200
	subs r0, r0, #1
	str r0, [r5, #0x38]
	ldr r0, _022332A8 @ =0x0000055A
	adds r6, r4, #0
	bl FUN_02005748
	b _02233200
_022331E8:
	ble _02233200
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x38]
	subs r0, r0, #1
	cmp r1, r0
	bge _02233200
	adds r0, r1, #1
	str r0, [r5, #0x38]
	ldr r0, _022332A8 @ =0x0000055A
	movs r6, #1
	bl FUN_02005748
_02233200:
	cmp r6, #0
	beq _0223320A
	cmp r6, #1
	beq _02233246
	b _0223326A
_0223320A:
	ldr r2, [r5, #0x44]
	ldr r1, [r5, #0x38]
	cmp r1, r2
	bge _02233218
	lsls r0, r1, #0x10
	asrs r4, r0, #0x10
	b _0223326A
_02233218:
	ldr r0, [r5, #4]
	subs r0, r0, r2
	cmp r1, r0
	blt _02233234
	adds r2, r2, #1
	lsls r2, r2, #0x10
	asrs r4, r2, #0x10
	cmp r1, r0
	blt _0223326A
	subs r0, r1, r0
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _0223326A
_02233234:
	lsls r0, r2, #0x10
	asrs r4, r0, #0x10
	cmp r1, r2
	bgt _0223326A
	subs r0, r1, r2
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _0223326A
_02233246:
	ldr r0, [r5, #0x38]
	ldr r2, [r5, #0x40]
	cmp r0, r2
	bgt _02233254
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _0223326A
_02233254:
	lsls r1, r2, #0x10
	asrs r4, r1, #0x10
	ldr r1, [r5, #4]
	subs r1, r1, r2
	cmp r0, r1
	blt _0223326A
	subs r1, r1, #1
	subs r0, r0, r1
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
_0223326A:
	cmp r4, #0
	bge _02233272
	bl FUN_02022974
_02233272:
	cmp r6, #0xff
	beq _02233278
	str r4, [r5, #0x3c]
_02233278:
	ldr r2, [r5, #0x40]
	ldr r0, [r5, #0x3c]
	movs r3, #0
	cmp r0, r2
	blt _0223329C
	ldr r1, [r5, #0x38]
	subs r0, r1, r2
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
	ldr r0, [r5, #4]
	adds r2, r2, #1
	subs r2, r0, r2
	cmp r1, r2
	blt _0223329C
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	asrs r3, r0, #0x10
_0223329C:
	adds r0, r5, #0
	strh r3, [r5, #8]
	bl ov62_0223349C
	pop {r4, r5, r6, pc}
	nop
_022332A8: .4byte 0x0000055A
	thumb_func_end ov62_022331C8

	thumb_func_start ov62_022332AC
ov62_022332AC: @ 0x022332AC
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #8
	ldrsh r0, [r4, r2]
	adds r1, r0, r1
	strh r1, [r4, #8]
	ldrsh r1, [r4, r2]
	cmp r1, #0
	bge _022332C2
	movs r1, #0
	strh r1, [r4, #8]
_022332C2:
	ldr r2, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r2, r1
	bne _022332CE
	movs r1, #0
	strh r1, [r4, #8]
_022332CE:
	movs r1, #8
	ldrsh r1, [r4, r1]
	ldr r3, [r4, #0x10]
	ldr r2, [r4, #4]
	adds r1, r1, r3
	cmp r1, r2
	ble _022332E0
	subs r1, r2, r3
	strh r1, [r4, #8]
_022332E0:
	movs r1, #8
	ldrsh r1, [r4, r1]
	cmp r0, r1
	beq _022332EE
	ldr r0, _022332F8 @ =0x0000055A
	bl FUN_02005748
_022332EE:
	adds r0, r4, #0
	bl ov62_02233454
	pop {r4, pc}
	nop
_022332F8: .4byte 0x0000055A
	thumb_func_end ov62_022332AC

	thumb_func_start ov62_022332FC
ov62_022332FC: @ 0x022332FC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x18
	bl FUN_0201ACF4
	adds r4, #0x18
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	thumb_func_end ov62_022332FC

	thumb_func_start ov62_02233310
ov62_02233310: @ 0x02233310
	ldr r3, _02233318 @ =FUN_020D5124
	movs r1, #0
	movs r2, #0x50
	bx r3
	.align 2, 0
_02233318: .4byte FUN_020D5124
	thumb_func_end ov62_02233310

	thumb_func_start ov62_0223331C
ov62_0223331C: @ 0x0223331C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x14]
	ldr r7, [r4, #0x1c]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x18]
	adds r6, r2, #0
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp]
	ldr r0, _02233428 @ =0x00030D40
	str r6, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r1, r7, #0
	movs r3, #0x7f
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02233428 @ =0x00030D40
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r3, #0x7e
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02233428 @ =0x00030D40
	ldr r2, [sp, #0x10]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r3, #0x7d
	bl FUN_0200CE54
	movs r1, #0x80
	add r0, sp, #0x14
	strh r1, [r0]
	movs r1, #0x60
	strh r1, [r0, #2]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r0, #1
	str r0, [sp, #0x1c]
	str r0, [sp, #0x40]
	subs r0, r0, #2
	str r0, [sp, #0x38]
	str r0, [sp, #0x3c]
	ldr r0, _02233428 @ =0x00030D40
	str r1, [sp, #0x20]
	str r6, [sp, #0x24]
	str r1, [sp, #0x44]
	str r0, [sp, #0x28]
	str r0, [sp, #0x30]
	str r0, [sp, #0x34]
	cmp r6, #1
	bne _022333A2
	ldr r0, _0223342C @ =0x0000270F
	str r0, [sp, #0x2c]
	b _022333A6
_022333A2:
	ldr r0, _02233430 @ =0x00002710
	str r0, [sp, #0x2c]
_022333A6:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r2, sp, #0x14
	bl FUN_0200CE6C
	str r0, [r5, #0x2c]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r2, sp, #0x14
	bl FUN_0200CE6C
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	movs r1, #2
	bl FUN_0200D41C
	ldr r0, [r5, #0x30]
	movs r1, #2
	bl FUN_0200D41C
	ldr r0, [r5, #0x2c]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r5, #0x30]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r5, #0x2c]
	bl FUN_0200D330
	ldr r0, [r5, #0x30]
	bl FUN_0200D330
	ldr r0, [r5, #0x30]
	movs r1, #2
	bl FUN_0200D7D4
	cmp r6, #1
	ldr r0, [r5, #0x2c]
	bne _0223340C
	movs r1, #0x80
	movs r2, #0x18
	bl FUN_0200D4C4
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	movs r2, #0x78
	bl FUN_0200D4C4
	b _0223341E
_0223340C:
	movs r1, #0x80
	movs r2, #0x58
	bl FUN_0200D4C4
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	movs r2, #0xb8
	bl FUN_0200D4C4
_0223341E:
	adds r0, r5, #0
	bl ov62_02233454
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233428: .4byte 0x00030D40
_0223342C: .4byte 0x0000270F
_02233430: .4byte 0x00002710
	thumb_func_end ov62_0223331C

	thumb_func_start ov62_02233434
ov62_02233434: @ 0x02233434
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	adds r5, r2, #0
	ldr r0, [r4, #0x2c]
	movs r1, #0x80
	adds r2, r3, #0
	bl FUN_0200D4C4
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	adds r2, r5, #0
	bl FUN_0200D4C4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02233434

	thumb_func_start ov62_02233454
ov62_02233454: @ 0x02233454
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02233478
	ldr r0, [r4, #0x2c]
	movs r1, #0
	bl FUN_0200D3F4
_02233478:
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _0223348E
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_0200D3F4
_0223348E:
	ldr r0, [r4, #0x2c]
	bl FUN_0200D33C
	ldr r0, [r4, #0x30]
	bl FUN_0200D33C
	pop {r4, pc}
	thumb_func_end ov62_02233454

	thumb_func_start ov62_0223349C
ov62_0223349C: @ 0x0223349C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #8
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022334C0
	ldr r0, [r4, #0x2c]
	movs r1, #0
	bl FUN_0200D3F4
_022334C0:
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x10]
	adds r1, r1, r0
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _022334D6
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_0200D3F4
_022334D6:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _022334EE
	ldr r0, [r4, #0x2c]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_0200D3F4
_022334EE:
	ldr r0, [r4, #0x2c]
	bl FUN_0200D33C
	ldr r0, [r4, #0x30]
	bl FUN_0200D33C
	pop {r4, pc}
	thumb_func_end ov62_0223349C

	thumb_func_start ov62_022334FC
ov62_022334FC: @ 0x022334FC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02233528 @ =0x00030D40
	bl FUN_0200D070
	ldr r0, [r4, #0x1c]
	ldr r1, _02233528 @ =0x00030D40
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02233528 @ =0x00030D40
	bl FUN_0200D0A0
	ldr r0, [r5, #0x2c]
	bl FUN_0200D0F4
	ldr r0, [r5, #0x30]
	bl FUN_0200D0F4
	pop {r3, r4, r5, pc}
	.align 2, 0
_02233528: .4byte 0x00030D40
	thumb_func_end ov62_022334FC

	thumb_func_start ov62_0223352C
ov62_0223352C: @ 0x0223352C
	push {r4, r5, lr}
	sub sp, #0x34
	adds r4, r3, #0
	movs r3, #0x80
	add r0, sp, #0
	strh r3, [r0]
	movs r3, #0x60
	strh r3, [r0, #2]
	movs r3, #0
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	movs r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0x2c]
	subs r0, r0, #2
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldr r0, _02233590 @ =0x00002E94
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x30]
	str r0, [sp, #0x14]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	cmp r2, #1
	bne _02233566
	ldr r0, _02233594 @ =0x0000270F
	str r0, [sp, #0x18]
	b _0223356A
_02233566:
	ldr r0, _02233598 @ =0x00002710
	str r0, [sp, #0x18]
_0223356A:
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0x1c]
	add r2, sp, #0
	bl FUN_0200CE6C
	adds r5, r0, #0
	movs r1, #2
	bl FUN_0200D41C
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200D364
	adds r0, r5, #0
	bl FUN_0200D330
	adds r0, r5, #0
	add sp, #0x34
	pop {r4, r5, pc}
	.align 2, 0
_02233590: .4byte 0x00002E94
_02233594: .4byte 0x0000270F
_02233598: .4byte 0x00002710
	thumb_func_end ov62_0223352C

	thumb_func_start ov62_0223359C
ov62_0223359C: @ 0x0223359C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	bl FUN_0200D0F4
	ldr r0, [r4, #0x1c]
	bl FUN_0200D0F4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_0223359C

	thumb_func_start ov62_022335B0
ov62_022335B0: @ 0x022335B0
	ldr r3, _022335B8 @ =ov62_022335BC
	movs r2, #5
	bx r3
	nop
_022335B8: .4byte ov62_022335BC
	thumb_func_end ov62_022335B0

	thumb_func_start ov62_022335BC
ov62_022335BC: @ 0x022335BC
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	movs r2, #2
	adds r3, r6, #0
	bl ov62_0223352C
	str r0, [r5, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	adds r3, r6, #0
	bl ov62_0223352C
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	movs r1, #0x18
	movs r2, #0x88
	bl FUN_0200D4C4
	ldr r0, [r5, #0x1c]
	movs r1, #0xe8
	movs r2, #0x88
	bl FUN_0200D4C4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_022335BC

	thumb_func_start ov62_022335F4
ov62_022335F4: @ 0x022335F4
	ldr r3, _022335FC @ =FUN_020D5124
	movs r1, #0
	movs r2, #0x20
	bx r3
	.align 2, 0
_022335FC: .4byte FUN_020D5124
	thumb_func_end ov62_022335F4

	thumb_func_start ov62_02233600
ov62_02233600: @ 0x02233600
	ldr r3, _02233604 @ =ov62_0223359C
	bx r3
	.align 2, 0
_02233604: .4byte ov62_0223359C
	thumb_func_end ov62_02233600

	thumb_func_start ov62_02233608
ov62_02233608: @ 0x02233608
	push {r3, r4}
	ldr r2, [r0, #0xc]
	subs r4, r1, r2
	adds r3, r4, #0
	movs r2, #1
	muls r3, r4, r3
	lsls r2, r2, #8
	cmp r3, r2
	blt _0223362E
	cmp r4, #0
	bge _02233624
	movs r2, #0
	mvns r2, r2
	b _02233626
_02233624:
	movs r2, #1
_02233626:
	strh r2, [r0, #0x10]
	str r1, [r0, #0xc]
	pop {r3, r4}
	bx lr
_0223362E:
	movs r1, #0
	strh r1, [r0, #0x10]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov62_02233608

	thumb_func_start ov62_02233638
ov62_02233638: @ 0x02233638
	ldr r2, [r1, #0x48]
	cmp r2, #0
	beq _02233650
	ldr r1, [r1, #4]
	cmp r1, #2
	bge _0223364A
	movs r1, #0
	str r1, [r0, #0x14]
	bx lr
_0223364A:
	movs r1, #1
	str r1, [r0, #0x14]
	bx lr
_02233650:
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #4]
	cmp r2, r1
	blt _0223365E
	movs r1, #0
	str r1, [r0, #0x14]
	bx lr
_0223365E:
	movs r1, #1
	str r1, [r0, #0x14]
	bx lr
	thumb_func_end ov62_02233638

	thumb_func_start ov62_02233664
ov62_02233664: @ 0x02233664
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	movs r4, #0
	bl FUN_020227A4
	adds r6, r0, #0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _02233688
	ldr r0, [r5, #0x18]
	bl FUN_0200D33C
	ldr r0, [r5, #0x1c]
	bl FUN_0200D33C
_02233688:
	ldr r0, [r5, #4]
	cmp r0, #0
	bne _022336A2
	cmp r6, #0
	bne _022336A2
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
	add sp, #8
	strh r0, [r5, #0x10]
	pop {r4, r5, r6, pc}
_022336A2:
	ldr r0, _022336FC @ =0x022488F0
	bl FUN_02022734
	cmp r0, #0
	bne _022336B6
	ldr r0, _02233700 @ =0x022488F4
	bl FUN_02022734
	cmp r0, #0
	beq _022336B8
_022336B6:
	movs r4, #1
_022336B8:
	cmp r4, #0
	ldr r0, [r5, #4]
	beq _022336E8
	cmp r0, #0
	bne _022336D6
	movs r0, #1
	str r0, [r5, #4]
	ldr r0, [sp, #4]
	str r0, [r5, #8]
	ldr r0, [sp]
	add sp, #8
	str r0, [r5, #0xc]
	movs r0, #2
	str r0, [r5]
	pop {r4, r5, r6, pc}
_022336D6:
	ldr r0, [r5]
	subs r0, r0, #1
	str r0, [r5]
	ldr r1, [sp]
	adds r0, r5, #0
	bl ov62_02233608
	add sp, #8
	pop {r4, r5, r6, pc}
_022336E8:
	cmp r0, #0
	beq _022336F6
	movs r0, #0
	str r0, [r5, #4]
	str r0, [r5]
	str r0, [r5, #8]
	str r0, [r5, #0xc]
_022336F6:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022336FC: .4byte 0x022488F0
_02233700: .4byte 0x022488F4
	thumb_func_end ov62_02233664

	thumb_func_start ov62_02233704
ov62_02233704: @ 0x02233704
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #0x83
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_0202CD88
	adds r1, r4, #0
	bl FUN_0202CFEC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02233704

	thumb_func_start ov62_0223371C
ov62_0223371C: @ 0x0223371C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x77
	add r2, sp, #4
	bl FUN_0202F1F8
	ldr r1, _0223374C @ =0x000008B4
	movs r3, #0
	ldr r0, [r4, r1]
	subs r1, #0x84
	ldr r1, [r4, r1]
	adds r2, r0, #0
	str r1, [sp]
	adds r1, r0, #0
	adds r1, #0x80
	adds r2, #0xe4
	bl FUN_0202FE20
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0223374C: .4byte 0x000008B4
	thumb_func_end ov62_0223371C

	thumb_func_start ov62_02233750
ov62_02233750: @ 0x02233750
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	bl ov62_0222F824
	bl FUN_02039720
	movs r0, #1
	str r0, [r4, #4]
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02233750

	thumb_func_start ov62_0223376C
ov62_0223376C: @ 0x0223376C
	ldr r2, _02233784 @ =0x0000052C
	adds r3, r0, #0
	str r1, [r3, r2]
	movs r1, #0
	adds r0, r2, #4
	str r1, [r3, r0]
	adds r1, r3, r2
	ldr r3, _02233788 @ =FUN_0200DA04
	ldr r0, _0223378C @ =ov62_02233750
	movs r2, #4
	bx r3
	nop
_02233784: .4byte 0x0000052C
_02233788: .4byte FUN_0200DA04
_0223378C: .4byte ov62_02233750
	thumb_func_end ov62_0223376C

	thumb_func_start ov62_02233790
ov62_02233790: @ 0x02233790
	movs r1, #0x53
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov62_02233790

	thumb_func_start ov62_02233798
ov62_02233798: @ 0x02233798
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _022337CE
	adds r0, r4, #0
	bl ov62_02234534
	cmp r0, #1
	beq _022337CE
	ldr r0, _022337D0 @ =0x00000524
	ldr r1, [r4, r0]
	cmp r1, #1
	beq _022337CE
	movs r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, #0x64]
	bl FUN_02008A94
	ldr r0, [r4, #0x1c]
	bl FUN_0200C7EC
	bl FUN_0200C800
	ldr r0, _022337D0 @ =0x00000524
	movs r1, #0
	str r1, [r4, r0]
_022337CE:
	pop {r4, pc}
	.align 2, 0
_022337D0: .4byte 0x00000524
	thumb_func_end ov62_02233798

	thumb_func_start ov62_022337D4
ov62_022337D4: @ 0x022337D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022337E8 @ =ov62_02233798
	adds r1, r4, #0
	movs r2, #5
	bl FUN_0200DA04
	ldr r1, _022337EC @ =0x0000416C
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_022337E8: .4byte ov62_02233798
_022337EC: .4byte 0x0000416C
	thumb_func_end ov62_022337D4

	thumb_func_start ov62_022337F0
ov62_022337F0: @ 0x022337F0
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, _02233818 @ =0x00000836
	adds r3, r0, #0
	adds r0, r3, r4
	str r0, [sp]
	subs r0, r4, #6
	ldr r0, [r3, r0]
	subs r4, r4, #2
	adds r3, r3, r4
	bl ov62_02248598
	cmp r0, #1
	bls _02233812
	add sp, #4
	movs r0, #1
	pop {r3, r4, pc}
_02233812:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02233818: .4byte 0x00000836
	thumb_func_end ov62_022337F0

	thumb_func_start ov62_0223381C
ov62_0223381C: @ 0x0223381C
	ldr r2, _02233824 @ =0x00000874
	str r1, [r0, r2]
	bx lr
	nop
_02233824: .4byte 0x00000874
	thumb_func_end ov62_0223381C

	thumb_func_start ov62_02233828
ov62_02233828: @ 0x02233828
	push {r3, r4, r5, r6, r7, lr}
	ldr r3, _02233894 @ =0x000008B4
	adds r2, r0, #0
	ldr r1, [r1]
	adds r7, r2, r3
	str r0, [sp]
	cmp r1, #1
	beq _02233892
	bl ov62_0224112C
	ldr r1, _02233898 @ =0x00001D54
	movs r2, #0x1e
	adds r1, r7, r1
	bl FUN_0222BE20
	ldr r1, _0223389C @ =0x00003884
	movs r4, #0
	str r0, [r7, r1]
	ldr r0, [r7, r1]
	cmp r0, #0
	ble _02233892
	ldr r5, [sp]
	movs r1, #0x9a
	lsls r1, r1, #6
	adds r0, r5, #0
	adds r6, r0, r1
_0223385C:
	ldr r0, _022338A0 @ =0x00002608
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02233868
	bl FUN_02022974
_02233868:
	ldr r0, _022338A0 @ =0x00002608
	adds r1, r6, #0
	ldr r0, [r5, r0]
	movs r2, #0xe4
	blx FUN_020C4DB0
	ldr r0, _022338A0 @ =0x00002608
	ldr r1, [sp]
	ldr r0, [r5, r0]
	adds r2, r1, r4
	adds r0, #0xa7
	ldrb r0, [r0]
	ldr r1, _022338A4 @ =0x0000413C
	adds r4, r4, #1
	strb r0, [r2, r1]
	ldr r0, _0223389C @ =0x00003884
	adds r5, r5, #4
	ldr r0, [r7, r0]
	adds r6, #0xe4
	cmp r4, r0
	blt _0223385C
_02233892:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233894: .4byte 0x000008B4
_02233898: .4byte 0x00001D54
_0223389C: .4byte 0x00003884
_022338A0: .4byte 0x00002608
_022338A4: .4byte 0x0000413C
	thumb_func_end ov62_02233828

	thumb_func_start ov62_022338A8
ov62_022338A8: @ 0x022338A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r5, #0
	adds r4, r6, #0
	adds r7, r5, #0
_022338B4:
	movs r0, #0x83
	str r5, [sp]
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r1, #0x66
	add r2, sp, #4
	movs r3, #0
	bl FUN_0202F298
	ldr r0, [sp, #4]
	cmp r0, #3
	bhi _02233980
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022338D8: @ jump table
	.2byte _022338E0 - _022338D8 - 2 @ case 0
	.2byte _02233950 - _022338D8 - 2 @ case 1
	.2byte _02233904 - _022338D8 - 2 @ case 2
	.2byte _0223392A - _022338D8 - 2 @ case 3
_022338E0:
	ldr r0, _02233998 @ =0x0000087C
	str r7, [r4, r0]
	adds r0, #0x10
	str r7, [r4, r0]
	cmp r5, #0
	bne _02233980
	movs r0, #0x66
	bl FUN_02030A80
	ldr r1, _0223399C @ =0x0000088C
	str r0, [r4, r1]
	adds r0, r1, #0
	subs r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl FUN_02030AA0
	b _02233980
_02233904:
	ldr r0, _02233998 @ =0x0000087C
	movs r1, #0
	str r1, [r4, r0]
	adds r0, #0x10
	str r1, [r4, r0]
	cmp r5, #0
	bne _02233980
	movs r0, #0x66
	bl FUN_02030A80
	ldr r1, _0223399C @ =0x0000088C
	str r0, [r4, r1]
	adds r0, r1, #0
	subs r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl FUN_02030AA0
	b _02233980
_0223392A:
	ldr r0, _02233998 @ =0x0000087C
	movs r1, #0
	str r1, [r4, r0]
	adds r0, #0x10
	str r1, [r4, r0]
	cmp r5, #0
	bne _02233980
	movs r0, #0x66
	bl FUN_02030A80
	ldr r1, _0223399C @ =0x0000088C
	str r0, [r4, r1]
	adds r0, r1, #0
	subs r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl FUN_02030AA0
	b _02233980
_02233950:
	movs r0, #0x66
	bl FUN_0202FD88
	ldr r1, _02233998 @ =0x0000087C
	cmp r5, #0
	str r0, [r4, r1]
	bne _02233976
	movs r0, #0x66
	bl FUN_02030A80
	ldr r1, _0223399C @ =0x0000088C
	str r0, [r4, r1]
	adds r0, r1, #0
	subs r1, #0x5c
	ldr r0, [r4, r0]
	ldr r1, [r6, r1]
	bl FUN_02030AA0
	b _02233980
_02233976:
	movs r0, #0x66
	bl FUN_0202FDB8
	ldr r1, _0223399C @ =0x0000088C
	str r0, [r4, r1]
_02233980:
	bl FUN_0202F250
	cmp r0, #1
	bne _0223398C
	bl FUN_0202F22C
_0223398C:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #4
	blt _022338B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02233998: .4byte 0x0000087C
_0223399C: .4byte 0x0000088C
	thumb_func_end ov62_022338A8

	thumb_func_start ov62_022339A0
ov62_022339A0: @ 0x022339A0
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	adds r5, r0, #0
	adds r6, r4, #0
	adds r7, r4, #0
_022339AA:
	ldr r0, _022339D4 @ =0x0000087C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022339BA
	bl FUN_020181C4
	ldr r0, _022339D4 @ =0x0000087C
	str r6, [r5, r0]
_022339BA:
	ldr r0, _022339D8 @ =0x0000088C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022339CA
	bl FUN_020181C4
	ldr r0, _022339D8 @ =0x0000088C
	str r7, [r5, r0]
_022339CA:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _022339AA
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022339D4: .4byte 0x0000087C
_022339D8: .4byte 0x0000088C
	thumb_func_end ov62_022339A0

	thumb_func_start ov62_022339DC
ov62_022339DC: @ 0x022339DC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	ldr r6, [r0, #0x28]
	bl FUN_02079FD0
	movs r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02233A40 @ =0x000186A0
	movs r1, #2
	str r0, [sp, #0x14]
	adds r0, r6, #0
	adds r2, r4, #0
	adds r3, r5, #0
	bl FUN_0200CD7C
	bl FUN_02079FDC
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02233A40 @ =0x000186A0
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x13
	bl FUN_0200CE0C
	bl FUN_02079FE8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02233A40 @ =0x000186A0
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x13
	bl FUN_0200CE3C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_02233A40: .4byte 0x000186A0
	thumb_func_end ov62_022339DC

	thumb_func_start ov62_02233A44
ov62_02233A44: @ 0x02233A44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	ldr r1, _02233A64 @ =0x000186A0
	bl FUN_0200D080
	ldr r0, [r4, #0x1c]
	ldr r1, _02233A64 @ =0x000186A0
	bl FUN_0200D090
	ldr r0, [r4, #0x1c]
	ldr r1, _02233A64 @ =0x000186A0
	bl FUN_0200D0A0
	pop {r4, pc}
	nop
_02233A64: .4byte 0x000186A0
	thumb_func_end ov62_02233A44

	thumb_func_start ov62_02233A68
ov62_02233A68: @ 0x02233A68
	ldr r3, _02233A70 @ =FUN_02006C24
	movs r0, #0x13
	movs r1, #0x66
	bx r3
	.align 2, 0
_02233A70: .4byte FUN_02006C24
	thumb_func_end ov62_02233A68

	thumb_func_start ov62_02233A74
ov62_02233A74: @ 0x02233A74
	ldr r3, _02233A78 @ =FUN_02006CA8
	bx r3
	.align 2, 0
_02233A78: .4byte FUN_02006CA8
	thumb_func_end ov62_02233A74

	thumb_func_start ov62_02233A7C
ov62_02233A7C: @ 0x02233A7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r5, r2, #0
	str r1, [sp, #0xc]
	adds r4, r3, #0
	ldr r7, [r0, #0x18]
	ldr r6, [r0, #0x1c]
	bne _02233A92
	add sp, #0x4c
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_02233A92:
	ldr r0, [sp, #0x60]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x64]
	ldr r2, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	adds r0, r4, #0
	bl FUN_02079D8C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02233B20 @ =0x000186A0
	ldr r2, [sp, #0xc]
	adds r0, r5, r0
	str r0, [sp, #8]
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_0200D8E8
	movs r1, #0
	add r0, sp, #0x18
	adds r2, r1, #0
	strh r1, [r0]
	subs r2, #0x30
	strh r2, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r0, #1
	str r0, [sp, #0x28]
	subs r0, r0, #2
	str r1, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	ldr r1, _02233B20 @ =0x000186A0
	str r0, [sp, #0x3c]
	adds r2, r5, r1
	str r2, [sp, #0x2c]
	str r0, [sp, #0x40]
	str r1, [sp, #0x30]
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	adds r0, r7, #0
	adds r1, r6, #0
	add r2, sp, #0x18
	bl FUN_0200CE6C
	adds r5, r0, #0
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	adds r0, r4, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	adds r0, r5, #0
	adds r1, r1, #4
	bl FUN_0200D430
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0200D364
	adds r0, r5, #0
	bl FUN_0200D330
	adds r0, r5, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02233B20: .4byte 0x000186A0
	thumb_func_end ov62_02233A7C

	thumb_func_start ov62_02233B24
ov62_02233B24: @ 0x02233B24
	push {r4, lr}
	adds r4, r2, #0
	beq _02233B3A
	ldr r2, _02233B3C @ =0x000186A0
	ldr r0, [r0, #0x1c]
	adds r1, r1, r2
	bl FUN_0200D070
	adds r0, r4, #0
	bl FUN_0200D0F4
_02233B3A:
	pop {r4, pc}
	.align 2, 0
_02233B3C: .4byte 0x000186A0
	thumb_func_end ov62_02233B24

	thumb_func_start ov62_02233B40
ov62_02233B40: @ 0x02233B40
	push {r3, lr}
	cmp r2, #0
	beq _02233B4C
	adds r0, r2, #0
	bl FUN_0200D0F4
_02233B4C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_02233B40

	thumb_func_start ov62_02233B50
ov62_02233B50: @ 0x02233B50
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	ldr r3, _02233E7C @ =0x022489D0
	adds r7, r1, #0
	str r0, [sp, #0x14]
	add r2, sp, #0x74
	movs r1, #0x14
_02233B5E:
	ldrh r0, [r3]
	adds r3, r3, #2
	strh r0, [r2]
	adds r2, r2, #2
	subs r1, r1, #1
	bne _02233B5E
	ldr r3, _02233E80 @ =0x02248910
	add r2, sp, #0x5c
	str r2, [sp, #0x20]
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r0, #1
	ldr r5, [sp, #0x14]
	str r0, [sp, #0x3c]
	movs r0, #0
	str r0, [sp, #0x40]
	add r4, sp, #0x74
	adds r5, #0x3c
_02233B8A:
	movs r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0xff
	beq _02233C3E
	ldr r1, [sp, #0x20]
	ldr r0, [r7, #0x48]
	ldr r1, [r1]
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_0201A7A0
	movs r0, #2
	ldrsh r0, [r4, r0]
	movs r3, #0
	adds r1, r5, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #4
	ldrsh r0, [r4, r0]
	movs r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	movs r0, #6
	ldrsh r0, [r4, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldrsh r3, [r4, r3]
	ldr r0, [r7, #0x24]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_0223429C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233E84 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r6, #0
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r0, #6
	ldrsh r0, [r4, r0]
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #0x3c]
	adds r0, r0, r2
	str r0, [sp, #0x3c]
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x20]
	adds r4, #8
	adds r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x40]
	adds r5, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #5
	blt _02233B8A
_02233C3E:
	ldr r0, [sp, #0x14]
	ldr r6, [r0]
	movs r0, #0x66
	bl ov62_02231690
	ldr r5, [sp, #0x14]
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #0x66
	adds r5, #0x3c
	bl FUN_02030B94
	str r0, [sp, #0x44]
	ldr r1, [sp, #0x44]
	adds r0, r7, #0
	bl ov62_022349A8
	ldr r0, [r7, #0x48]
	movs r1, #7
	bl FUN_0200B1EC
	str r0, [sp, #0x48]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x44]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x48]
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233E84 @ =0x000F0D00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x44]
	bl FUN_020237BC
	ldr r0, [sp, #0x48]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200C41C
	ldr r0, [sp, #0x14]
	movs r1, #3
	ldr r0, [r0, #4]
	movs r2, #0
	bl FUN_0202FE98
	adds r1, r0, #0
	ldr r5, [sp, #0x14]
	ldr r0, [r7, #0x48]
	adds r1, #0x84
	adds r5, #0x4c
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233E84 @ =0x000F0D00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200C41C
	ldr r0, [sp, #0x14]
	movs r1, #2
	ldr r0, [r0, #4]
	movs r2, #0
	bl FUN_0202FE98
	str r0, [sp, #0x4c]
	cmp r0, #0
	beq _02233DD0
	ldr r5, [sp, #0x14]
	movs r0, #0xff
	movs r1, #0x66
	adds r5, #0x5c
	bl FUN_02023790
	str r0, [sp, #0x50]
	ldr r0, [r7, #0x48]
	movs r1, #9
	bl FUN_0200B1EC
	str r0, [sp, #0x54]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x4c]
	movs r2, #4
	movs r3, #0
	bl FUN_020238A0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x50]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x54]
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_0200C388
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233E84 @ =0x000F0D00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x50]
	bl FUN_020237BC
	ldr r0, [sp, #0x54]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200C41C
	b _02233DE2
_02233DD0:
	ldr r5, [sp, #0x14]
	movs r1, #0
	adds r5, #0x6c
	adds r0, r5, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A9A4
_02233DE2:
	ldr r0, [sp, #0x14]
	movs r1, #4
	ldr r0, [r0, #4]
	movs r2, #0
	bl FUN_0202FE98
	adds r5, r0, #0
	str r1, [sp, #0x1c]
	adds r6, r1, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x38]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x34]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x1c]
	adds r0, #0x7c
	str r0, [sp, #0x14]
	ldr r2, _02233E88 @ =0x000186A0
	adds r0, r5, #0
	movs r3, #0
	blx FUN_020E1EE0
	str r0, [sp, #0x2c]
	ldr r2, _02233E88 @ =0x000186A0
	adds r0, r5, #0
	adds r1, r6, #0
	movs r3, #0
	blx FUN_020E1ED4
	ldr r2, _02233E88 @ =0x000186A0
	str r0, [sp, #0x58]
	movs r3, #0
	adds r6, r1, #0
	blx FUN_020E1EE0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x58]
	ldr r2, _02233E88 @ =0x000186A0
	adds r1, r6, #0
	movs r3, #0
	blx FUN_020E1ED4
	movs r1, #0xa
	str r0, [sp, #0x24]
	blx FUN_020E2178
	movs r1, #0xa
	blx FUN_020E2178
	cmp r1, #0
	bne _02233E8C
	ldr r0, [sp, #0x1c]
	movs r1, #0
	eors r1, r0
	movs r2, #0
	adds r0, r5, #0
	eors r0, r2
	orrs r0, r1
	beq _02233E8C
	ldr r0, [r7, #0x48]
	movs r1, #0xc
	bl FUN_0200B1EC
	adds r6, r0, #0
	b _02233E96
	nop
_02233E7C: .4byte 0x022489D0
_02233E80: .4byte 0x02248910
_02233E84: .4byte 0x000F0D00
_02233E88: .4byte 0x000186A0
_02233E8C:
	ldr r0, [r7, #0x48]
	movs r1, #0xb
	bl FUN_0200B1EC
	adds r6, r0, #0
_02233E96:
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x2c]
	movs r2, #5
	movs r3, #2
	bl FUN_020238A0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x28]
	movs r2, #5
	movs r3, #2
	bl FUN_020238A0
	movs r0, #1
	str r0, [sp]
	movs r2, #2
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x24]
	adds r3, r2, #0
	bl FUN_020238A0
	movs r0, #1
	str r0, [sp]
	movs r1, #2
	ldr r2, [sp, #0x38]
	adds r0, r4, #0
	movs r3, #0
	str r1, [sp, #4]
	bl FUN_0200B48C
	movs r1, #1
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_0200B48C
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02233F70 @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	bl FUN_0201A9A4
	ldr r0, [sp, #0x38]
	bl FUN_020237BC
	ldr r0, [sp, #0x34]
	bl FUN_020237BC
	ldr r0, [sp, #0x30]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0200C41C
	adds r0, r4, #0
	bl FUN_0200B3F0
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	nop
_02233F70: .4byte 0x000F0D00
	thumb_func_end ov62_02233B50

	thumb_func_start ov62_02233F74
ov62_02233F74: @ 0x02233F74
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r5, #0x3c
_02233F7C:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #5
	blt _02233F7C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02233F74

	thumb_func_start ov62_02233F94
ov62_02233F94: @ 0x02233F94
	push {r3, lr}
	movs r1, #3
	movs r2, #0
	bl FUN_0202FE98
	cmp r0, #0x1a
	bgt _02233FCC
	bge _02233FD8
	adds r1, r0, #0
	subs r1, #0xe
	cmp r1, #9
	bhi _02233FDC
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02233FB8: @ jump table
	.2byte _02233FD8 - _02233FB8 - 2 @ case 0
	.2byte _02233FDC - _02233FB8 - 2 @ case 1
	.2byte _02233FDC - _02233FB8 - 2 @ case 2
	.2byte _02233FD8 - _02233FB8 - 2 @ case 3
	.2byte _02233FDC - _02233FB8 - 2 @ case 4
	.2byte _02233FDC - _02233FB8 - 2 @ case 5
	.2byte _02233FD8 - _02233FB8 - 2 @ case 6
	.2byte _02233FDC - _02233FB8 - 2 @ case 7
	.2byte _02233FDC - _02233FB8 - 2 @ case 8
	.2byte _02233FD8 - _02233FB8 - 2 @ case 9
_02233FCC:
	cmp r0, #0x1d
	bgt _02233FD4
	beq _02233FD8
	b _02233FDC
_02233FD4:
	cmp r0, #0x20
	bne _02233FDC
_02233FD8:
	movs r0, #1
	pop {r3, pc}
_02233FDC:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov62_02233F94

	thumb_func_start ov62_02233FE0
ov62_02233FE0: @ 0x02233FE0
	ldr r3, _02233FE8 @ =ov62_02233F94
	ldr r0, [r0, #4]
	bx r3
	nop
_02233FE8: .4byte ov62_02233F94
	thumb_func_end ov62_02233FE0

	thumb_func_start ov62_02233FEC
ov62_02233FEC: @ 0x02233FEC
	push {r3, lr}
	bl ov62_02233FE0
	cmp r0, #1
	bne _02233FFA
	movs r0, #0x51
	pop {r3, pc}
_02233FFA:
	movs r0, #0x52
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_02233FEC

	thumb_func_start ov62_02234000
ov62_02234000: @ 0x02234000
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x140
	str r0, [sp, #0x18]
	movs r0, #0
	str r1, [sp, #0x1c]
	ldr r3, _0223420C @ =0x02248A78
	str r0, [sp, #0x44]
	add r2, sp, #0xe0
	movs r1, #0x30
_02234012:
	ldrh r0, [r3]
	adds r3, r3, #2
	strh r0, [r2]
	adds r2, r2, #2
	subs r1, r1, #1
	bne _02234012
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x18]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x1c]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x1c]
	ldr r4, [r0, #0x28]
	bl FUN_02079FD0
	movs r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _02234210 @ =0x000186A0
	ldr r2, [sp, #0x3c]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x38]
	adds r0, r4, #0
	movs r1, #2
	bl FUN_0200CD7C
	bl FUN_02079FDC
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02234210 @ =0x000186A0
	ldr r1, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	movs r2, #0x13
	bl FUN_0200CE0C
	bl FUN_02079FE8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02234210 @ =0x000186A0
	ldr r1, [sp, #0x38]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	movs r2, #0x13
	bl FUN_0200CE3C
	movs r0, #6
	movs r6, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x30]
	str r6, [sp, #0x40]
	bl ov62_02233FE0
	cmp r0, #1
	bne _022340A4
	movs r0, #3
	str r0, [sp, #0x34]
	str r0, [sp, #0x2c]
	movs r0, #1
	str r0, [sp, #0x40]
_022340A4:
	ldr r4, [sp, #0x30]
	ldr r0, [sp, #0x2c]
	adds r1, r4, #0
	cmp r1, r0
	bge _022340EA
	lsls r1, r6, #2
	add r0, sp, #0x7c
	adds r5, r0, r1
	add r0, sp, #0x4c
	adds r7, r0, r1
_022340B8:
	movs r0, #0xff
	str r0, [r5]
	ldr r0, [sp, #0x18]
	movs r1, #0
	ldr r0, [r0, #4]
	adds r2, r4, #0
	bl FUN_0202FE98
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x18]
	movs r1, #1
	ldr r0, [r0, #4]
	adds r2, r4, #0
	bl FUN_0202FE98
	ldr r1, [sp, #0x48]
	cmp r1, #0
	beq _022340E2
	stm r5!, {r1}
	stm r7!, {r0}
	adds r6, r6, #1
_022340E2:
	ldr r0, [sp, #0x2c]
	adds r4, r4, #1
	cmp r4, r0
	blt _022340B8
_022340EA:
	ldr r1, [sp, #0x2c]
	adds r0, r6, #0
	cmp r6, r1
	bge _0223410C
	lsls r2, r6, #2
	add r1, sp, #0x7c
	adds r3, r1, r2
	add r1, sp, #0x4c
	adds r4, r1, r2
	movs r2, #0
_022340FE:
	stm r3!, {r2}
	ldr r1, [sp, #0x2c]
	adds r0, r0, #1
	stm r4!, {r2}
	adds r6, r6, #1
	cmp r0, r1
	blt _022340FE
_0223410C:
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x34]
	adds r0, r1, r0
	str r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x34]
	adds r0, r1, r0
	str r0, [sp, #0x2c]
	cmp r0, #0xc
	ble _022340A4
	add r0, sp, #0x7c
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x40]
	movs r1, #0x30
	add r2, sp, #0xe0
	muls r1, r0, r1
	ldr r5, [sp, #0x18]
	movs r6, #0
	add r7, sp, #0x4c
	adds r4, r2, r1
_02234134:
	ldr r0, [sp, #0x18]
	movs r1, #0
	str r1, [r0, #0xc]
	ldr r0, [sp, #0x28]
	ldr r0, [r0]
	str r0, [sp, #0x20]
	cmp r0, #0
	beq _022341F2
	ldr r0, [r7]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x24]
	bl FUN_02079D8C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r1, [sp, #0x44]
	ldr r0, _02234210 @ =0x000186A0
	movs r2, #0x13
	adds r0, r1, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x3c]
	ldr r1, [sp, #0x38]
	bl FUN_0200D888
	movs r0, #0
	ldrsh r1, [r4, r0]
	add r0, sp, #0xac
	add r2, sp, #0xac
	adds r1, #8
	strh r1, [r0]
	movs r0, #2
	ldrsh r1, [r4, r0]
	add r0, sp, #0xac
	subs r1, #0xc
	strh r1, [r0, #2]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	adds r0, r1, #0
	str r0, [sp, #0xb4]
	str r0, [sp, #0xb8]
	movs r0, #1
	str r0, [sp, #0xbc]
	adds r0, r1, #0
	str r0, [sp, #0xd8]
	str r0, [sp, #0xdc]
	ldr r1, [sp, #0x44]
	ldr r0, _02234210 @ =0x000186A0
	adds r0, r1, r0
	str r0, [sp, #0xc0]
	ldr r0, _02234210 @ =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #0xc4]
	str r0, [sp, #0xc8]
	str r0, [sp, #0xcc]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0xd0]
	str r0, [sp, #0xd4]
	ldr r0, [sp, #0x1c]
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x18]
	bl FUN_0200CE6C
	str r0, [r5, #0xc]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	movs r2, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [r5, #0xc]
	adds r1, r1, #4
	bl FUN_0200D430
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_0200D364
	ldr r0, [r5, #0xc]
	bl FUN_0200D330
	movs r1, #0xc
	ldr r0, [r5, #0xc]
	subs r1, r1, r6
	bl FUN_0200D474
	ldr r0, [sp, #0x44]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #0x44]
_022341F2:
	ldr r0, [sp, #0x18]
	adds r6, r6, #1
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x28]
	adds r7, r7, #4
	adds r0, r0, #4
	adds r4, r4, #4
	str r0, [sp, #0x28]
	cmp r6, #0xc
	blt _02234134
	add sp, #0x140
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223420C: .4byte 0x02248A78
_02234210: .4byte 0x000186A0
	thumb_func_end ov62_02234000

	thumb_func_start ov62_02234214
ov62_02234214: @ 0x02234214
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov62_02233B50
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_02234000
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02234214

	thumb_func_start ov62_02234228
ov62_02234228: @ 0x02234228
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	str r0, [sp]
	ldr r0, [r6, #0x1c]
	ldr r1, _02234278 @ =0x000186A0
	bl FUN_0200D080
	ldr r0, [r6, #0x1c]
	ldr r1, _02234278 @ =0x000186A0
	bl FUN_0200D090
	ldr r0, [r6, #0x1c]
	ldr r1, _02234278 @ =0x000186A0
	bl FUN_0200D0A0
	movs r4, #0
	ldr r5, [sp]
	adds r7, r4, #0
_0223424C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _02234264
	ldr r1, _02234278 @ =0x000186A0
	ldr r0, [r6, #0x1c]
	adds r1, r4, r1
	bl FUN_0200D070
	ldr r0, [r5, #0xc]
	bl FUN_0200D0F4
	str r7, [r5, #0xc]
_02234264:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xc
	blt _0223424C
	ldr r0, [sp]
	adds r1, r6, #0
	bl ov62_02233F74
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02234278: .4byte 0x000186A0
	thumb_func_end ov62_02234228

	thumb_func_start ov62_0223427C
ov62_0223427C: @ 0x0223427C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
_02234284:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _02234290
	adds r1, r6, #0
	bl FUN_0200D3F4
_02234290:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xc
	blt _02234284
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_0223427C

	thumb_func_start ov62_0223429C
ov62_0223429C: @ 0x0223429C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0201C294
	lsls r0, r0, #3
	subs r1, r0, r4
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223429C

	thumb_func_start ov62_022342BC
ov62_022342BC: @ 0x022342BC
	ldr r1, _022342C8 @ =0x00000834
	movs r2, #0
	strh r2, [r0, r1]
	adds r1, r1, #2
	strh r2, [r0, r1]
	bx lr
	.align 2, 0
_022342C8: .4byte 0x00000834
	thumb_func_end ov62_022342BC

	thumb_func_start ov62_022342CC
ov62_022342CC: @ 0x022342CC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0202783C
	add r1, sp, #4
	str r1, [sp]
	ldr r1, _02234310 @ =0x0000086C
	add r2, sp, #0xc
	ldr r1, [r5, r1]
	add r3, sp, #8
	adds r1, r1, #2
	adds r4, r0, #0
	bl FUN_020279A8
	add r0, sp, #4
	ldrb r0, [r0]
	movs r2, #0
	mvns r2, r2
	str r0, [sp]
	ldr r1, _02234310 @ =0x0000086C
	adds r0, r4, #0
	ldr r1, [r5, r1]
	adds r3, r2, #0
	adds r1, r1, #2
	bl FUN_020279D0
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02234310: .4byte 0x0000086C
	thumb_func_end ov62_022342CC

	thumb_func_start ov62_02234314
ov62_02234314: @ 0x02234314
	push {r3, lr}
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #4
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #0
	bl FUN_02019060
	movs r0, #7
	movs r1, #1
	bl FUN_02019060
	pop {r3, pc}
	thumb_func_end ov62_02234314

	thumb_func_start ov62_02234358
ov62_02234358: @ 0x02234358
	push {r4, r5, r6, lr}
	ldr r0, [r0, #0x44]
	adds r5, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r0, #0
	bne _0223436E
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0208B9E0
_0223436E:
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0208B8B0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0208B948
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl FUN_0208B8B8
	pop {r4, r5, r6, pc}
	thumb_func_end ov62_02234358

	thumb_func_start ov62_0223438C
ov62_0223438C: @ 0x0223438C
	push {r4, r5, r6, lr}
	movs r3, #0
	movs r2, #1
	movs r5, #1
	subs r2, r2, r0
	sbcs r3, r1
	bhs _022343B2
	movs r4, #0xa
	movs r6, #0
_0223439E:
	adds r2, r4, #0
	adds r3, r6, #0
	blx FUN_020E1ED4
	movs r2, #0
	movs r3, #1
	adds r5, r5, #1
	subs r3, r3, r0
	sbcs r2, r1
	blo _0223439E
_022343B2:
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_0223438C

	thumb_func_start ov62_022343B8
ov62_022343B8: @ 0x022343B8
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r3, r2, #0
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	bl FUN_0200710C
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov62_022343B8

	thumb_func_start ov62_022343D8
ov62_022343D8: @ 0x022343D8
	push {r4, lr}
	ldr r2, _02234438 @ =0x00004160
	adds r4, r1, #0
	ldr r1, [r4, r2]
	adds r1, r1, #1
	str r1, [r4, r2]
	ldr r1, [r4, r2]
	cmp r1, #7
	blt _02234422
	bl FUN_0200DA58
	ldr r0, _02234438 @ =0x00004160
	movs r2, #0
	str r2, [r4, r0]
	subs r1, r0, #4
	str r2, [r4, r1]
	adds r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0208BA54
	ldr r0, _0223443C @ =0x00004164
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, _0223443C @ =0x00004164
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B8B0
	ldr r0, _0223443C @ =0x00004164
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	pop {r4, pc}
_02234422:
	lsls r0, r1, #1
	adds r0, r0, #6
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	adds r0, r2, #4
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	pop {r4, pc}
	nop
_02234438: .4byte 0x00004160
_0223443C: .4byte 0x00004164
	thumb_func_end ov62_022343D8

	thumb_func_start ov62_02234440
ov62_02234440: @ 0x02234440
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _02234508 @ =0x0000415C
	ldr r1, [r4, r0]
	cmp r1, #1
	bne _02234460
	adds r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223445A
	bl FUN_0200DA58
_0223445A:
	ldr r0, _0223450C @ =0x00004168
	movs r1, #0
	str r1, [r4, r0]
_02234460:
	ldr r0, _02234510 @ =0x021BF6DC
	ldrb r0, [r0, #5]
	cmp r0, #0
	bne _0223446C
	ldr r0, _02234514 @ =0x000006F4
	b _02234470
_0223446C:
	movs r0, #0x6f
	lsls r0, r0, #4
_02234470:
	ldr r1, [r4, r0]
	ldr r0, _02234518 @ =0x00004164
	str r1, [r4, r0]
	ldr r0, _02234508 @ =0x0000415C
	movs r1, #1
	str r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #4
	str r1, [r4, r0]
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_020227C0
	ldr r0, _02234518 @ =0x00004164
	ldr r0, [r4, r0]
	bl FUN_0208BA30
	ldr r0, _02234518 @ =0x00004164
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0208B8B0
	ldr r0, _02234518 @ =0x00004164
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	ldr r0, _02234518 @ =0x00004164
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0208B8B8
	ldr r0, _02234518 @ =0x00004164
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0208B948
	movs r2, #1
	ldr r0, _0223451C @ =ov62_022343D8
	adds r1, r4, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	ldr r2, _0223450C @ =0x00004168
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	cmp r0, #0
	beq _022344EE
	adds r1, r4, #0
	bl ov62_022343D8
	add sp, #8
	pop {r4, pc}
_022344EE:
	adds r0, r2, #0
	movs r1, #0
	subs r0, #0xc
	str r1, [r4, r0]
	subs r0, r2, #4
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	bl FUN_02022974
	add sp, #8
	pop {r4, pc}
	nop
_02234508: .4byte 0x0000415C
_0223450C: .4byte 0x00004168
_02234510: .4byte 0x021BF6DC
_02234514: .4byte 0x000006F4
_02234518: .4byte 0x00004164
_0223451C: .4byte ov62_022343D8
	thumb_func_end ov62_02234440

	thumb_func_start ov62_02234520
ov62_02234520: @ 0x02234520
	push {r3, lr}
	bl ov62_02234440
	ldr r0, _02234530 @ =0x00000563
	bl FUN_02005748
	pop {r3, pc}
	nop
_02234530: .4byte 0x00000563
	thumb_func_end ov62_02234520

	thumb_func_start ov62_02234534
ov62_02234534: @ 0x02234534
	ldr r1, _0223453C @ =0x00000528
	ldr r0, [r0, r1]
	bx lr
	nop
_0223453C: .4byte 0x00000528
	thumb_func_end ov62_02234534

	thumb_func_start ov62_02234540
ov62_02234540: @ 0x02234540
	ldr r2, _02234548 @ =0x00000528
	str r1, [r0, r2]
	bx lr
	nop
_02234548: .4byte 0x00000528
	thumb_func_end ov62_02234540

	thumb_func_start ov62_0223454C
ov62_0223454C: @ 0x0223454C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	adds r4, r1, #0
	adds r5, r0, #0
	adds r1, r6, #0
	adds r7, r3, #0
	bl ov62_022313E0
	adds r1, r5, #0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r1, #0x14
	adds r2, r6, #0
	bl ov62_0223118C
	adds r5, #0x14
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov62_0223124C
	add r3, sp, #8
	movs r1, #0x10
	movs r2, #0x14
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #4]
	bl FUN_0200D4C4
	add r3, sp, #8
	movs r1, #0x18
	movs r2, #0x1c
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #8]
	bl FUN_020128C4
	ldr r0, [r4, #8]
	ldr r1, [sp, #0x2c]
	bl FUN_020129D0
	ldr r0, [r4, #4]
	ldr r1, [sp, #0x28]
	bl FUN_0200D364
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_0223454C

	thumb_func_start ov62_022345A8
ov62_022345A8: @ 0x022345A8
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_022312B0
	ldr r0, [r4, #4]
	bl FUN_0200D0F4
	pop {r4, pc}
	thumb_func_end ov62_022345A8

	thumb_func_start ov62_022345B8
ov62_022345B8: @ 0x022345B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r1, r2, #0
	adds r0, r3, #0
	ldr r2, [r5, #4]
	ldr r3, _02234878 @ =0x00000504
	str r2, [r5, r3]
	ldr r4, [r5, #8]
	adds r2, r3, #4
	str r4, [r5, r2]
	ldr r2, [r5, #0x10]
	ldr r4, [r2]
	adds r2, r3, #0
	adds r2, #8
	str r4, [r5, r2]
	movs r2, #1
	adds r3, #0x18
	movs r4, #0xc2
	str r2, [r5, r3]
	cmp r0, #0
	beq _022345EE
	cmp r0, #1
	beq _0223465E
	cmp r0, #2
	beq _022346B0
	b _022348AE
_022345EE:
	cmp r1, #0xe
	bhi _02234658
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022345FE: @ jump table
	.2byte _0223461C - _022345FE - 2 @ case 0
	.2byte _02234620 - _022345FE - 2 @ case 1
	.2byte _02234624 - _022345FE - 2 @ case 2
	.2byte _02234628 - _022345FE - 2 @ case 3
	.2byte _0223462C - _022345FE - 2 @ case 4
	.2byte _02234630 - _022345FE - 2 @ case 5
	.2byte _02234634 - _022345FE - 2 @ case 6
	.2byte _02234638 - _022345FE - 2 @ case 7
	.2byte _0223463C - _022345FE - 2 @ case 8
	.2byte _02234640 - _022345FE - 2 @ case 9
	.2byte _02234644 - _022345FE - 2 @ case 10
	.2byte _02234648 - _022345FE - 2 @ case 11
	.2byte _0223464C - _022345FE - 2 @ case 12
	.2byte _02234650 - _022345FE - 2 @ case 13
	.2byte _02234654 - _022345FE - 2 @ case 14
_0223461C:
	movs r4, #0xf4
	b _022348AE
_02234620:
	movs r4, #0xf5
	b _022348AE
_02234624:
	movs r4, #0xf6
	b _022348AE
_02234628:
	movs r4, #0xf7
	b _022348AE
_0223462C:
	movs r4, #0xf8
	b _022348AE
_02234630:
	movs r4, #0xf9
	b _022348AE
_02234634:
	movs r4, #0xfa
	b _022348AE
_02234638:
	movs r4, #0xfb
	b _022348AE
_0223463C:
	movs r4, #0xfc
	b _022348AE
_02234640:
	movs r4, #0xfd
	b _022348AE
_02234644:
	movs r4, #0xfe
	b _022348AE
_02234648:
	movs r4, #0xff
	b _022348AE
_0223464C:
	adds r4, #0x3e
	b _022348AE
_02234650:
	adds r4, #0x3f
	b _022348AE
_02234654:
	adds r4, #0x40
	b _022348AE
_02234658:
	bl FUN_02022974
	b _022348AE
_0223465E:
	cmp r1, #9
	bhi _022346AA
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223466E: @ jump table
	.2byte _02234682 - _0223466E - 2 @ case 0
	.2byte _02234686 - _0223466E - 2 @ case 1
	.2byte _0223468A - _0223466E - 2 @ case 2
	.2byte _0223468E - _0223466E - 2 @ case 3
	.2byte _02234692 - _0223466E - 2 @ case 4
	.2byte _02234696 - _0223466E - 2 @ case 5
	.2byte _0223469A - _0223466E - 2 @ case 6
	.2byte _0223469E - _0223466E - 2 @ case 7
	.2byte _022346A2 - _0223466E - 2 @ case 8
	.2byte _022346A6 - _0223466E - 2 @ case 9
_02234682:
	adds r4, #0x41
	b _022348AE
_02234686:
	adds r4, #0x42
	b _022348AE
_0223468A:
	adds r4, #0x43
	b _022348AE
_0223468E:
	adds r4, #0x44
	b _022348AE
_02234692:
	adds r4, #0x45
	b _022348AE
_02234696:
	adds r4, #0x46
	b _022348AE
_0223469A:
	adds r4, #0x47
	b _022348AE
_0223469E:
	adds r4, #0x48
	b _022348AE
_022346A2:
	adds r4, #0x49
	b _022348AE
_022346A6:
	adds r4, #0x4a
	b _022348AE
_022346AA:
	bl FUN_02022974
	b _022348AE
_022346B0:
	cmp r6, #8
	bls _022346B6
	b _022348AA
_022346B6:
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022346C2: @ jump table
	.2byte _022346D4 - _022346C2 - 2 @ case 0
	.2byte _0223470C - _022346C2 - 2 @ case 1
	.2byte _0223473A - _022346C2 - 2 @ case 2
	.2byte _0223477A - _022346C2 - 2 @ case 3
	.2byte _022347A8 - _022346C2 - 2 @ case 4
	.2byte _022347C8 - _022346C2 - 2 @ case 5
	.2byte _02234802 - _022346C2 - 2 @ case 6
	.2byte _02234848 - _022346C2 - 2 @ case 7
	.2byte _0223487C - _022346C2 - 2 @ case 8
_022346D4:
	cmp r1, #5
	bhi _02234706
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022346E4: @ jump table
	.2byte _022346F0 - _022346E4 - 2 @ case 0
	.2byte _022346F2 - _022346E4 - 2 @ case 1
	.2byte _022346F6 - _022346E4 - 2 @ case 2
	.2byte _022346FA - _022346E4 - 2 @ case 3
	.2byte _022346FE - _022346E4 - 2 @ case 4
	.2byte _02234702 - _022346E4 - 2 @ case 5
_022346F0:
	b _022348AE
_022346F2:
	movs r4, #0xc3
	b _022348AE
_022346F6:
	movs r4, #0xc4
	b _022348AE
_022346FA:
	movs r4, #0xc5
	b _022348AE
_022346FE:
	movs r4, #0xc6
	b _022348AE
_02234702:
	movs r4, #0xc7
	b _022348AE
_02234706:
	bl FUN_02022974
	b _022348AE
_0223470C:
	cmp r1, #3
	bhi _02234734
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223471C: @ jump table
	.2byte _02234724 - _0223471C - 2 @ case 0
	.2byte _02234728 - _0223471C - 2 @ case 1
	.2byte _0223472C - _0223471C - 2 @ case 2
	.2byte _02234730 - _0223471C - 2 @ case 3
_02234724:
	movs r4, #0xc8
	b _022348AE
_02234728:
	movs r4, #0xc9
	b _022348AE
_0223472C:
	movs r4, #0xca
	b _022348AE
_02234730:
	movs r4, #0xcb
	b _022348AE
_02234734:
	bl FUN_02022974
	b _022348AE
_0223473A:
	cmp r1, #6
	bhi _02234774
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223474A: @ jump table
	.2byte _02234758 - _0223474A - 2 @ case 0
	.2byte _0223475C - _0223474A - 2 @ case 1
	.2byte _02234760 - _0223474A - 2 @ case 2
	.2byte _02234764 - _0223474A - 2 @ case 3
	.2byte _02234768 - _0223474A - 2 @ case 4
	.2byte _0223476C - _0223474A - 2 @ case 5
	.2byte _02234770 - _0223474A - 2 @ case 6
_02234758:
	movs r4, #0xcc
	b _022348AE
_0223475C:
	movs r4, #0xcd
	b _022348AE
_02234760:
	movs r4, #0xce
	b _022348AE
_02234764:
	movs r4, #0xcf
	b _022348AE
_02234768:
	movs r4, #0xd0
	b _022348AE
_0223476C:
	movs r4, #0xd1
	b _022348AE
_02234770:
	movs r4, #0xd2
	b _022348AE
_02234774:
	bl FUN_02022974
	b _022348AE
_0223477A:
	cmp r1, #3
	bhi _022347A2
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223478A: @ jump table
	.2byte _02234792 - _0223478A - 2 @ case 0
	.2byte _02234796 - _0223478A - 2 @ case 1
	.2byte _0223479A - _0223478A - 2 @ case 2
	.2byte _0223479E - _0223478A - 2 @ case 3
_02234792:
	movs r4, #0xd3
	b _022348AE
_02234796:
	movs r4, #0xd4
	b _022348AE
_0223479A:
	movs r4, #0xd5
	b _022348AE
_0223479E:
	movs r4, #0xd6
	b _022348AE
_022347A2:
	bl FUN_02022974
	b _022348AE
_022347A8:
	cmp r1, #0
	beq _022347B6
	cmp r1, #1
	beq _022347BA
	cmp r1, #2
	beq _022347BE
	b _022347C2
_022347B6:
	movs r4, #0xd7
	b _022348AE
_022347BA:
	movs r4, #0xd8
	b _022348AE
_022347BE:
	movs r4, #0xd9
	b _022348AE
_022347C2:
	bl FUN_02022974
	b _022348AE
_022347C8:
	cmp r1, #5
	bhi _022347FC
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022347D8: @ jump table
	.2byte _022347E4 - _022347D8 - 2 @ case 0
	.2byte _022347E8 - _022347D8 - 2 @ case 1
	.2byte _022347EC - _022347D8 - 2 @ case 2
	.2byte _022347F0 - _022347D8 - 2 @ case 3
	.2byte _022347F4 - _022347D8 - 2 @ case 4
	.2byte _022347F8 - _022347D8 - 2 @ case 5
_022347E4:
	movs r4, #0xda
	b _022348AE
_022347E8:
	movs r4, #0xdb
	b _022348AE
_022347EC:
	movs r4, #0xdc
	b _022348AE
_022347F0:
	movs r4, #0xdd
	b _022348AE
_022347F4:
	movs r4, #0xde
	b _022348AE
_022347F8:
	movs r4, #0xdf
	b _022348AE
_022347FC:
	bl FUN_02022974
	b _022348AE
_02234802:
	cmp r1, #7
	bhi _02234842
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02234812: @ jump table
	.2byte _02234822 - _02234812 - 2 @ case 0
	.2byte _02234826 - _02234812 - 2 @ case 1
	.2byte _0223482A - _02234812 - 2 @ case 2
	.2byte _0223482E - _02234812 - 2 @ case 3
	.2byte _02234832 - _02234812 - 2 @ case 4
	.2byte _02234836 - _02234812 - 2 @ case 5
	.2byte _0223483A - _02234812 - 2 @ case 6
	.2byte _0223483E - _02234812 - 2 @ case 7
_02234822:
	movs r4, #0xe0
	b _022348AE
_02234826:
	movs r4, #0xe1
	b _022348AE
_0223482A:
	movs r4, #0xe2
	b _022348AE
_0223482E:
	movs r4, #0xe3
	b _022348AE
_02234832:
	movs r4, #0xe4
	b _022348AE
_02234836:
	movs r4, #0xe5
	b _022348AE
_0223483A:
	movs r4, #0xe6
	b _022348AE
_0223483E:
	movs r4, #0xe7
	b _022348AE
_02234842:
	bl FUN_02022974
	b _022348AE
_02234848:
	cmp r1, #3
	bhi _02234870
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02234858: @ jump table
	.2byte _02234860 - _02234858 - 2 @ case 0
	.2byte _02234864 - _02234858 - 2 @ case 1
	.2byte _02234868 - _02234858 - 2 @ case 2
	.2byte _0223486C - _02234858 - 2 @ case 3
_02234860:
	movs r4, #0xe8
	b _022348AE
_02234864:
	movs r4, #0xe9
	b _022348AE
_02234868:
	movs r4, #0xea
	b _022348AE
_0223486C:
	movs r4, #0xeb
	b _022348AE
_02234870:
	bl FUN_02022974
	b _022348AE
	nop
_02234878: .4byte 0x00000504
_0223487C:
	cmp r1, #3
	bhi _022348A4
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223488C: @ jump table
	.2byte _02234894 - _0223488C - 2 @ case 0
	.2byte _02234898 - _0223488C - 2 @ case 1
	.2byte _0223489C - _0223488C - 2 @ case 2
	.2byte _022348A0 - _0223488C - 2 @ case 3
_02234894:
	movs r4, #0xec
	b _022348AE
_02234898:
	movs r4, #0xed
	b _022348AE
_0223489C:
	movs r4, #0xee
	b _022348AE
_022348A0:
	movs r4, #0xef
	b _022348AE
_022348A4:
	bl FUN_02022974
	b _022348AE
_022348AA:
	bl FUN_02022974
_022348AE:
	movs r0, #0x51
	lsls r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov62_022345B8

	thumb_func_start ov62_022348B8
ov62_022348B8: @ 0x022348B8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r5, [r4, #4]
	ldr r7, _022348F8 @ =0x00000504
	str r5, [r4, r7]
	ldr r6, [r4, #8]
	adds r5, r7, #4
	str r6, [r4, r5]
	ldr r5, [r4, #0x10]
	ldr r6, [r5]
	adds r5, r7, #0
	adds r5, #8
	str r6, [r4, r5]
	adds r5, r7, #0
	movs r6, #0
	adds r5, #0x10
	str r6, [r4, r5]
	adds r7, #0x14
	str r6, [r4, r7]
	bl ov62_022345B8
	movs r1, #0x51
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #1
	adds r1, #0xc
	str r0, [r4, r1]
	ldr r0, [r4, #0x10]
	movs r1, #0x12
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022348F8: .4byte 0x00000504
	thumb_func_end ov62_022348B8

	thumb_func_start ov62_022348FC
ov62_022348FC: @ 0x022348FC
	push {r4, lr}
	ldr r2, _0223496C @ =0x00000514
	adds r4, r0, #0
	ldr r1, [r4, r2]
	cmp r1, #0
	beq _0223490E
	cmp r1, #1
	beq _02234934
	b _0223494C
_0223490E:
	adds r1, r2, #4
	ldr r1, [r4, r1]
	cmp r1, #8
	bge _02234922
	adds r0, r2, #4
	ldr r0, [r4, r0]
	adds r1, r0, #1
	adds r0, r2, #4
	str r1, [r4, r0]
	pop {r4, pc}
_02234922:
	subs r1, r2, #4
	ldr r1, [r4, r1]
	bl ov62_02231AAC
	ldr r0, _0223496C @ =0x00000514
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_02234934:
	bl FUN_02022798
	cmp r0, #0
	beq _02234968
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r0, _0223496C @ =0x00000514
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	pop {r4, pc}
_0223494C:
	adds r0, r2, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02234960
	adds r0, r2, #4
	ldr r0, [r4, r0]
	subs r1, r0, #1
	adds r0, r2, #4
	str r1, [r4, r0]
	pop {r4, pc}
_02234960:
	subs r2, #8
	ldr r1, [r4, r2]
	ldr r0, [r4, #0x10]
	str r1, [r0]
_02234968:
	pop {r4, pc}
	nop
_0223496C: .4byte 0x00000514
	thumb_func_end ov62_022348FC

	thumb_func_start ov62_02234970
ov62_02234970: @ 0x02234970
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r2, #0
	movs r4, #1
	adds r5, r0, #4
_0223497A:
	ldr r0, _022349A4 @ =0x0000087C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02234996
	movs r1, #4
	movs r2, #0
	bl FUN_0202FE98
	eors r1, r7
	eors r0, r6
	orrs r0, r1
	bne _02234996
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02234996:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223497A
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022349A4: .4byte 0x0000087C
	thumb_func_end ov62_02234970

	thumb_func_start ov62_022349A8
ov62_022349A8: @ 0x022349A8
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	bl ov62_0224112C
	movs r1, #0x51
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r0, #0x40
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl FUN_02002DB4
	cmp r0, #0
	bne _022349DA
	movs r1, #0x51
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_022349E4
_022349DA:
	adds r0, r6, #0
	bl FUN_020237BC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_022349A8

	thumb_func_start ov62_022349E4
ov62_022349E4: @ 0x022349E4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	bl FUN_020237E8
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0xa
	adds r3, r5, #0
	bl FUN_0200B144
	movs r1, #0x53
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r2, r4, #0
	bl FUN_0200B1B8
	adds r0, r5, #0
	bl FUN_0200B190
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_022349E4

	thumb_func_start ov62_02234A10
ov62_02234A10: @ 0x02234A10
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	ldr r4, _02234A88 @ =0x000008A4
	adds r5, r0, #0
	adds r0, r5, r4
	bl FUN_0201A7A0
	movs r0, #0x10
	str r0, [sp]
	str r0, [sp, #4]
	movs r2, #2
	str r2, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x4b
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r5, r4
	movs r3, #8
	bl FUN_0201A7E8
	adds r0, r5, r4
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0xc0
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r5, r4
	adds r1, r6, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02234A8C @ =0x00010E00
	adds r2, r6, #0
	str r0, [sp, #8]
	adds r0, r5, r4
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, r4
	bl FUN_0201A9A4
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02234A88: .4byte 0x000008A4
_02234A8C: .4byte 0x00010E00
	thumb_func_end ov62_02234A10

	thumb_func_start ov62_02234A90
ov62_02234A90: @ 0x02234A90
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02234AB0 @ =0x000008A4
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _02234AB0 @ =0x000008A4
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	pop {r4, pc}
	nop
_02234AB0: .4byte 0x000008A4
	thumb_func_end ov62_02234A90

	thumb_func_start ov62_02234AB4
ov62_02234AB4: @ 0x02234AB4
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #6
	bls _02234AC2
	b _02234CB6
_02234AC2:
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_02234ACE: @ jump table
	.2byte _02234ADC - _02234ACE - 2 @ case 0
	.2byte _02234B7E - _02234ACE - 2 @ case 1
	.2byte _02234BC2 - _02234ACE - 2 @ case 2
	.2byte _02234C0E - _02234ACE - 2 @ case 3
	.2byte _02234C32 - _02234ACE - 2 @ case 4
	.2byte _02234C5A - _02234ACE - 2 @ case 5
	.2byte _02234C82 - _02234ACE - 2 @ case 6
_02234ADC:
	bl ov62_022300BC
	cmp r0, #1
	bne _02234AEE
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0222FB60
	b _02234CBE
_02234AEE:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02234CC4 @ =0x0000FFFE
	movs r1, #2
	movs r3, #0x10
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02234CC8 @ =0x0000BFFF
	movs r1, #0
	movs r3, #0x10
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02234CCC @ =0x00003FFE
	movs r1, #3
	movs r3, #0x10
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	ldr r2, _02234CD0 @ =0x0000FFFF
	movs r1, #1
	movs r3, #0x10
	bl FUN_02003A2C
	ldr r0, _02234CD4 @ =0x000006F4
	ldr r0, [r4, r0]
	bl FUN_0208BA30
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0208BA30
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234B7E:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _02234B88
	b _02234CBE
_02234B88:
	ldr r0, _02234CD4 @ =0x000006F4
	movs r1, #0x80
	ldr r0, [r4, r0]
	movs r2, #0x10
	bl FUN_0208B948
	ldr r0, _02234CD4 @ =0x000006F4
	movs r1, #0x80
	ldr r0, [r4, r0]
	movs r2, #0xd8
	bl FUN_0208B8B8
	ldr r0, _02234CD4 @ =0x000006F4
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	ldr r0, _02234CD4 @ =0x000006F4
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0208B8B0
	ldr r0, _02234CD8 @ =0x0000055E
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234BC2:
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x19
	blt _02234CBE
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x80
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x90
	bl FUN_0208B948
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0x60
	bl FUN_0208B8B8
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B8B0
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234C0E:
	ldr r1, [r4, #0xc]
	adds r1, r1, #1
	str r1, [r4, #0xc]
	cmp r1, #0x12
	blt _02234CBE
	bl ov62_02234A10
	ldr r0, _02234CD4 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	movs r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234C32:
	ldr r0, [r4, #0xc]
	cmp r0, #0x10
	bge _02234C54
	adds r0, r0, #4
	str r0, [r4, #0xc]
	ldr r0, _02234CD0 @ =0x0000FFFF
	movs r2, #0xf
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #0
	lsls r2, r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02234CBE
_02234C54:
	adds r0, r1, #1
	str r0, [r4, #8]
	b _02234CBE
_02234C5A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _02234C7C
	subs r0, r0, #4
	str r0, [r4, #0xc]
	ldr r0, _02234CD0 @ =0x0000FFFF
	movs r2, #0xf
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #0
	lsls r2, r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02234CBE
_02234C7C:
	adds r0, r1, #1
	str r0, [r4, #8]
	b _02234CBE
_02234C82:
	bl FUN_0202278C
	cmp r0, #1
	bne _02234CBE
	adds r0, r4, #0
	bl ov62_02234A90
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	ldr r0, _02234CD4 @ =0x000006F4
	ldr r0, [r4, r0]
	bl FUN_0208BA54
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0208BA54
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234CBE
_02234CB6:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0222FB60
_02234CBE:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02234CC4: .4byte 0x0000FFFE
_02234CC8: .4byte 0x0000BFFF
_02234CCC: .4byte 0x00003FFE
_02234CD0: .4byte 0x0000FFFF
_02234CD4: .4byte 0x000006F4
_02234CD8: .4byte 0x0000055E
	thumb_func_end ov62_02234AB4

	thumb_func_start ov62_02234CDC
ov62_02234CDC: @ 0x02234CDC
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02234CF4
	cmp r1, #1
	beq _02234DC4
	cmp r1, #2
	bne _02234CF2
	b _02234E8A
_02234CF2:
	b _02234ECA
_02234CF4:
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02230330
	adds r0, r4, #0
	bl ov62_02230464
	adds r0, r4, #0
	bl ov62_022306B8
	adds r0, r4, #0
	bl ov62_0223088C
	adds r0, r4, #0
	bl ov62_02230E80
	adds r0, r4, #0
	bl ov62_02230A5C
	adds r0, r4, #0
	bl ov62_02230AF0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022300BC
	cmp r0, #1
	bne _02234DB2
	ldr r0, [r4]
	cmp r0, #0
	bne _02234D56
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x45
	movs r3, #5
	bl FUN_0200710C
	b _02234D6E
_02234D56:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x37
	movs r3, #5
	bl FUN_0200710C
_02234D6E:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0xe0
	bl FUN_0208B948
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0xe0
	bl FUN_0208B8B8
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B8B0
	ldr r1, _02234EE0 @ =0x0000083C
	ldr r3, [r4, #0x10]
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #1
	bl ov62_0222FB44
	b _02234ED8
_02234DB2:
	ldr r0, _02234EE4 @ =0x0000055B
	bl FUN_02005748
	movs r0, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234ED8
_02234DC4:
	bl ov62_022300BC
	cmp r0, #1
	bne _02234DDE
	bl FUN_0200F2AC
	cmp r0, #1
	beq _02234DD6
	b _02234ED8
_02234DD6:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234ED8
_02234DDE:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02234E5A
	subs r0, r0, #2
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	ldr r2, _02234EE8 @ =0x0000FFFE
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	ldr r2, _02234EEC @ =0x0000FFFF
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	ldr r2, _02234EF0 @ =0x00003FFE
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	ldr r2, _02234EEC @ =0x0000FFFF
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02234ED8
_02234E5A:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #2
	movs r3, #0x10
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234ED8
_02234E8A:
	ldr r0, [r4]
	cmp r0, #0
	bne _02234EAA
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x45
	movs r3, #5
	bl FUN_0200710C
	b _02234EC2
_02234EAA:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x37
	movs r3, #5
	bl FUN_0200710C
_02234EC2:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234ED8
_02234ECA:
	ldr r1, _02234EF4 @ =0x00000724
	ldr r1, [r4, r1]
	cmp r1, #3
	blt _02234ED8
	movs r1, #2
	bl ov62_0222FB60
_02234ED8:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_02234EE0: .4byte 0x0000083C
_02234EE4: .4byte 0x0000055B
_02234EE8: .4byte 0x0000FFFE
_02234EEC: .4byte 0x0000FFFF
_02234EF0: .4byte 0x00003FFE
_02234EF4: .4byte 0x00000724
	thumb_func_end ov62_02234CDC

	thumb_func_start ov62_02234EF8
ov62_02234EF8: @ 0x02234EF8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02234F0C
	cmp r1, #1
	beq _02234F74
	cmp r1, #2
	beq _02234F94
	b _02234FC0
_02234F0C:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0x60
	bl FUN_0208B948
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0x60
	bl FUN_0208B8B8
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B8B0
	ldr r0, [r4, #0xc]
	movs r3, #0x10
	adds r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r5, [r4, #0xc]
	ldr r0, [r4, #0x28]
	subs r3, r3, r5
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0xc]
	cmp r0, #2
	bne _02234FC6
	movs r0, #0xf
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234FC6
_02234F74:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234FC6
_02234F94:
	ldr r0, [r4, #0xc]
	movs r1, #1
	subs r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x58]
	movs r2, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02234FC6
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02234FC6
_02234FC0:
	movs r1, #3
	bl ov62_0222FB60
_02234FC6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02234EF8

	thumb_func_start ov62_02234FCC
ov62_02234FCC: @ 0x02234FCC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov62_02235008
	adds r4, r0, #0
	ldr r0, _02235004 @ =0x000005FC
	add r1, sp, #0
	ldr r0, [r5, r0]
	adds r1, #2
	add r2, sp, #0
	bl ov62_02230E74
	movs r0, #0x6f
	lsls r0, r0, #4
	add r3, sp, #0
	movs r1, #2
	ldrsh r1, [r3, r1]
	movs r2, #0
	ldrsh r2, [r3, r2]
	adds r1, #0x10
	lsls r1, r1, #0x10
	ldr r0, [r5, r0]
	asrs r1, r1, #0x10
	bl FUN_0208B8B8
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_02235004: .4byte 0x000005FC
	thumb_func_end ov62_02234FCC

	thumb_func_start ov62_02235008
ov62_02235008: @ 0x02235008
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223501A
	cmp r0, #1
	beq _02235106
	b _022351F6
_0223501A:
	movs r0, #0x66
	movs r1, #0x54
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x54
	adds r4, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x86
	lsls r0, r0, #4
	str r4, [r5, r0]
	adds r0, r4, #0
	adds r3, r4, #0
	movs r1, #0x10
	adds r0, #0x50
	strb r1, [r0]
	ldr r0, [r5, #0x58]
	adds r3, #0x50
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r3, [r3]
	ldr r0, [r5, #0x28]
	movs r1, #2
	movs r2, #0xc
	bl FUN_02003A2C
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _022350FE
	ldr r0, [sp, #0x14]
	movs r7, #0x19
	str r0, [sp, #4]
	adds r6, r5, #0
_02235068:
	ldr r0, [sp, #4]
	movs r2, #0x6e
	str r0, [r4]
	movs r0, #0x5a
	str r0, [r4, #4]
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	movs r0, #5
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, r7, r0
	strh r0, [r4, #8]
	lsls r2, r2, #4
	ldr r3, [r5, r2]
	movs r2, #5
	subs r2, r2, r3
	ldr r0, _0223526C @ =0x000005FC
	lsls r2, r2, #4
	adds r2, #0xa9
	lsls r2, r2, #0x10
	ldr r0, [r6, r0]
	movs r1, #0x2a
	asrs r2, r2, #0x10
	bl ov62_02230E68
	ldr r0, _0223526C @ =0x000005FC
	adds r1, r4, #0
	ldr r0, [r6, r0]
	adds r1, #0xc
	add r2, sp, #0x20
	bl FUN_0200D638
	movs r2, #0x6e
	lsls r2, r2, #4
	ldr r3, [r5, r2]
	movs r2, #5
	ldr r0, _0223526C @ =0x000005FC
	subs r2, r2, r3
	lsls r2, r2, #4
	adds r2, #0xa9
	ldr r0, [r6, r0]
	ldr r1, [r4, #0xc]
	lsls r2, r2, #0xc
	bl FUN_0200D614
	movs r0, #0x61
	lsls r0, r0, #4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r6, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [sp, #4]
	adds r4, #0x10
	adds r0, r0, #4
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	adds r7, #0x24
	adds r0, r0, #1
	str r0, [sp, #0x14]
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x14]
	adds r6, #0x28
	cmp r0, r1
	blt _02235068
_022350FE:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02235266
_02235106:
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223513C
	adds r0, r4, #0
	adds r0, #0x50
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x50
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x50
	strb r1, [r0]
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldrb r3, [r3]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	bl FUN_02003A2C
_0223513C:
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _022351E8
	adds r6, r5, #0
	add r7, sp, #0x18
_02235150:
	ldr r0, [r4]
	cmp r0, #0
	beq _0223515C
	subs r0, r0, #1
	str r0, [r4]
	b _022351D2
_0223515C:
	ldr r0, _0223526C @ =0x000005FC
	add r1, sp, #0x1c
	ldr r0, [r6, r0]
	adds r1, #2
	add r2, sp, #0x1c
	bl ov62_02230E74
	movs r0, #8
	movs r1, #4
	ldrsh r0, [r4, r0]
	ldrsh r2, [r7, r1]
	cmp r2, r0
	bne _0223517E
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
	b _022351D2
_0223517E:
	adds r1, r2, #0
	subs r1, #8
	cmp r1, r0
	ble _0223518C
	subs r2, #8
	strh r2, [r7, #4]
	b _0223518E
_0223518C:
	strh r0, [r7, #4]
_0223518E:
	movs r0, #4
	ldrsh r0, [r7, r0]
	ldr r1, [r4, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, _02235270 @ =0x0000FFFF
	muls r0, r1, r0
	movs r1, #0x5a
	lsls r1, r1, #2
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	lsls r1, r0, #4
	ldr r0, [r4, #4]
	ldr r2, [r4, #0xc]
	subs r0, r0, #4
	str r0, [r4, #4]
	ldr r0, _0223526C @ =0x000005FC
	adds r1, r2, r1
	ldr r0, [r6, r0]
	ldr r2, [sp, #8]
	bl FUN_0200D614
	movs r0, #0x61
	lsls r0, r0, #4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r6, r0]
	subs r2, #0x2c
	bl FUN_020128C4
_022351D2:
	ldr r0, [sp, #0x10]
	adds r4, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	ldr r0, [sp, #0x10]
	adds r6, #0x28
	cmp r0, r1
	blt _02235150
_022351E8:
	ldr r0, [sp, #0xc]
	cmp r0, r1
	bne _02235266
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02235266
_022351F6:
	ldr r1, _02235274 @ =0x000006E4
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r2, [r5, r1]
	ldr r4, [r5, r0]
	movs r0, #0x28
	muls r0, r2, r0
	adds r0, r5, r0
	subs r1, #0xe8
	ldr r0, [r0, r1]
	add r1, sp, #0x18
	adds r1, #2
	add r2, sp, #0x18
	bl ov62_02230E74
	movs r0, #0x6f
	lsls r0, r0, #4
	add r2, sp, #0x18
	movs r1, #2
	ldrsh r1, [r2, r1]
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, #0x10
	lsls r1, r1, #0x10
	ldr r0, [r5, r0]
	asrs r1, r1, #0x10
	bl FUN_0208B948
	movs r0, #0x6f
	lsls r0, r0, #4
	add r2, sp, #0x18
	movs r1, #2
	ldrsh r1, [r2, r1]
	movs r3, #0
	ldrsh r2, [r2, r3]
	adds r1, #0x10
	lsls r1, r1, #0x10
	ldr r0, [r5, r0]
	asrs r1, r1, #0x10
	bl FUN_0208B8B8
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	adds r0, r5, #0
	bl ov62_0222FF7C
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02235266:
	movs r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223526C: .4byte 0x000005FC
_02235270: .4byte 0x0000FFFF
_02235274: .4byte 0x000006E4
	thumb_func_end ov62_02235008

	thumb_func_start ov62_02235278
ov62_02235278: @ 0x02235278
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02022798
	cmp r0, #0
	beq _02235292
	ldr r0, _022352D4 @ =0x0000089C
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02235292
	adds r0, r4, #0
	bl ov62_02231A1C
_02235292:
	ldr r0, [r4]
	cmp r0, #0
	bne _022352CA
	bl ov62_022352DC
	cmp r0, #1
	beq _022352A6
	cmp r0, #2
	beq _022352B8
	b _022352CA
_022352A6:
	ldr r0, _022352D8 @ =0x00000563
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
	movs r0, #0
	pop {r4, pc}
_022352B8:
	ldr r0, _022352D8 @ =0x00000563
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
	movs r0, #0
	pop {r4, pc}
_022352CA:
	adds r0, r4, #0
	bl ov62_02230054
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_022352D4: .4byte 0x0000089C
_022352D8: .4byte 0x00000563
	thumb_func_end ov62_02235278

	thumb_func_start ov62_022352DC
ov62_022352DC: @ 0x022352DC
	push {r3, lr}
	ldr r0, _02235300 @ =0x02248BE8
	bl FUN_02022734
	cmp r0, #0
	beq _022352EC
	movs r0, #1
	pop {r3, pc}
_022352EC:
	ldr r0, _02235304 @ =0x02248BEC
	bl FUN_02022734
	cmp r0, #0
	beq _022352FA
	movs r0, #2
	pop {r3, pc}
_022352FA:
	movs r0, #0
	pop {r3, pc}
	nop
_02235300: .4byte 0x02248BE8
_02235304: .4byte 0x02248BEC
	thumb_func_end ov62_022352DC

	thumb_func_start ov62_02235308
ov62_02235308: @ 0x02235308
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02022974
	movs r0, #1
	str r0, [r4, #0x44]
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0222FB60
	adds r0, r4, #0
	bl ov62_02235278
	pop {r4, pc}
	thumb_func_end ov62_02235308

	thumb_func_start ov62_02235324
ov62_02235324: @ 0x02235324
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0223533A
	cmp r1, #1
	beq _02235364
	cmp r1, #2
	beq _022353EA
	b _02235416
_0223533A:
	movs r1, #0
	str r1, [r4, #0x54]
	movs r0, #0x6f
	str r1, [r4, #0xc]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	ldr r0, _02235434 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223542C
_02235364:
	ldr r1, [r4, #0xc]
	cmp r1, #0x10
	beq _022353DE
	adds r1, r1, #2
	str r1, [r4, #0xc]
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	ldr r2, _02235438 @ =0x0000FFFE
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	ldr r2, _0223543C @ =0x0000FFFF
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	ldr r2, _02235440 @ =0x00003FFE
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022316D0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	ldr r2, _0223543C @ =0x0000FFFF
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223542C
_022353DE:
	movs r0, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223542C
_022353EA:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _022353F6
	subs r0, r0, #4
	str r0, [r4, #0xc]
	b _0223542C
_022353F6:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223542C
_02235416:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223542C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_0223542C:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02235434: .4byte 0x000006F4
_02235438: .4byte 0x0000FFFE
_0223543C: .4byte 0x0000FFFF
_02235440: .4byte 0x00003FFE
	thumb_func_end ov62_02235324

	thumb_func_start ov62_02235444
ov62_02235444: @ 0x02235444
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02235008
	cmp r0, #0
	beq _02235474
	ldr r0, [r4, #0x44]
	cmp r0, #1
	bne _0223546C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0222FB60
	b _02235474
_0223546C:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0222FB60
_02235474:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02235444

	thumb_func_start ov62_02235478
ov62_02235478: @ 0x02235478
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x44]
	cmp r1, #1
	bne _02235498
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0222FB60
	b _0223549E
_02235498:
	movs r1, #1
	bl ov62_0222FB60
_0223549E:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02235478

	thumb_func_start ov62_022354A4
ov62_022354A4: @ 0x022354A4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _022354B6
	cmp r0, #1
	beq _022354E0
	b _02235570
_022354B6:
	movs r0, #4
	ldrsh r1, [r4, r0]
	movs r0, #0
	ldrsh r0, [r4, r0]
	subs r0, r1, r0
	ldrb r1, [r4, #0x1c]
	blx FUN_020E1F6C
	strh r0, [r4, #8]
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r0, #2
	ldrsh r0, [r4, r0]
	subs r0, r1, r0
	ldrb r1, [r4, #0x1c]
	blx FUN_020E1F6C
	strh r0, [r4, #0xa]
	ldrb r0, [r4, #0x1d]
	adds r0, r0, #1
	strb r0, [r4, #0x1d]
_022354E0:
	add r1, sp, #0
	ldr r0, [r4, #0x20]
	adds r1, #2
	add r2, sp, #0
	bl ov62_02230E74
	ldrb r0, [r4, #0x1c]
	add r1, sp, #0
	subs r0, r0, #1
	strb r0, [r4, #0x1c]
	ldrb r0, [r4, #0x1c]
	cmp r0, #0
	bne _0223550E
	movs r0, #4
	ldrsh r0, [r4, r0]
	strh r0, [r1, #2]
	movs r0, #6
	ldrsh r0, [r4, r0]
	strh r0, [r1]
	ldrb r0, [r4, #0x1d]
	adds r0, r0, #1
	strb r0, [r4, #0x1d]
	b _02235526
_0223550E:
	movs r0, #2
	ldrsh r2, [r1, r0]
	movs r0, #8
	ldrsh r0, [r4, r0]
	adds r0, r2, r0
	strh r0, [r1, #2]
	movs r0, #0
	ldrsh r2, [r1, r0]
	movs r0, #0xa
	ldrsh r0, [r4, r0]
	adds r0, r2, r0
	strh r0, [r1]
_02235526:
	ldr r0, [r4, #0x28]
	cmp r0, #0
	beq _0223554C
	add r3, sp, #0
	movs r1, #2
	ldrsh r1, [r3, r1]
	movs r2, #0
	ldrsh r2, [r3, r2]
	adds r1, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl FUN_0208B8B8
	ldrb r0, [r4, #0x1c]
	cmp r0, #2
	bne _0223554C
	ldr r0, [r4, #0x30]
	movs r1, #1
	str r1, [r0]
_0223554C:
	add r3, sp, #0
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r4, #0x20]
	bl ov62_02230E68
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, #0x24]
	subs r2, #0x2c
	bl FUN_020128C4
	ldr r0, [r4, #0x2c]
	movs r1, #1
	str r1, [r0]
	pop {r3, r4, r5, pc}
_02235570:
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_022354A4

	thumb_func_start ov62_02235580
ov62_02235580: @ 0x02235580
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _02235598
	cmp r1, #1
	beq _02235676
	cmp r1, #2
	bne _02235596
	b _02235800
_02235596:
	b _02235830
_02235598:
	movs r0, #0x66
	movs r1, #0x10
	bl FUN_02018144
	str r0, [sp, #4]
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r1, #0x86
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r7, #0
	str r7, [r0, #8]
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02235668
	ldr r0, [sp, #4]
	adds r6, r4, #0
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	str r0, [sp, #0x10]
	adds r0, #0xc
	str r0, [sp, #0x10]
_022355D0:
	movs r0, #0x66
	movs r1, #0x34
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x34
	adds r5, r0, #0
	blx FUN_020D5124
	ldr r0, _02235838 @ =0x000005FC
	adds r1, r5, #0
	ldr r0, [r6, r0]
	adds r2, r5, #2
	bl ov62_02230E74
	ldr r0, _02235838 @ =0x000005FC
	ldr r0, [r6, r0]
	str r0, [r5, #0x20]
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0xc]
	str r0, [r5, #0x2c]
	ldr r0, [sp, #0x10]
	str r0, [r5, #0x30]
	ldr r0, _0223583C @ =0x000006E4
	ldr r0, [r4, r0]
	cmp r7, r0
	bne _02235626
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [r5, #0x28]
	movs r0, #0
	ldrsh r0, [r5, r0]
	strh r0, [r5, #4]
	movs r0, #0x2f
	mvns r0, r0
	strh r0, [r5, #6]
	movs r0, #8
	strb r0, [r5, #0x1c]
	b _0223564E
_02235626:
	movs r0, #0
	str r0, [r5, #0x28]
	ldrsh r0, [r5, r0]
	strh r0, [r5, #4]
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	movs r0, #5
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xcd
	strh r0, [r5, #6]
	movs r0, #6
	ldrsh r0, [r5, r0]
	cmp r0, #0xdd
	blt _0223564A
	movs r0, #0xdd
	strh r0, [r5, #6]
_0223564A:
	movs r0, #8
	strb r0, [r5, #0x1c]
_0223564E:
	movs r2, #2
	ldr r0, _02235840 @ =ov62_022354A4
	adds r1, r5, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	adds r7, r7, #1
	adds r6, #0x28
	cmp r7, r0
	blt _022355D0
_02235668:
	ldr r0, [sp, #4]
	movs r1, #0
	str r1, [r0]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02235830
_02235676:
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	str r0, [sp, #8]
	ldr r0, [r0]
	cmp r0, #0x10
	beq _022356A4
	adds r1, r0, #2
	ldr r0, [sp, #8]
	ldr r3, [sp, #8]
	str r1, [r0]
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r3]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_022356A4:
	ldr r0, [sp, #8]
	ldr r0, [r0, #0xc]
	cmp r0, #1
	beq _022356AE
	b _022357B8
_022356AE:
	ldr r0, [sp, #8]
	movs r7, #0
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _022357AE
	ldr r0, [sp, #8]
	movs r1, #1
	str r1, [r0, #8]
	ldr r0, _02235844 @ =0x00000534
	adds r6, r4, #0
	adds r0, r4, r0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	adds r0, r0, #4
	str r0, [sp, #0x14]
_022356CC:
	movs r0, #0x66
	movs r1, #0x34
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x34
	adds r5, r0, #0
	blx FUN_020D5124
	ldr r0, _02235844 @ =0x00000534
	adds r1, r5, #0
	ldr r0, [r6, r0]
	adds r2, r5, #2
	bl ov62_02230E74
	ldr r0, _02235844 @ =0x00000534
	ldr r0, [r6, r0]
	str r0, [r5, #0x20]
	ldr r0, _02235848 @ =0x00000548
	ldr r0, [r6, r0]
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x14]
	str r0, [r5, #0x2c]
	movs r0, #0
	str r0, [r5, #0x28]
	ldrsh r0, [r5, r0]
	strh r0, [r5, #4]
	ldr r0, _0223584C @ =0x000006D8
	ldr r0, [r4, r0]
	cmp r0, r7
	bne _02235774
	movs r0, #0
	ldrsh r0, [r5, r0]
	ldr r1, _02235850 @ =0x00000818
	strh r0, [r5, #4]
	movs r0, #0xa9
	strh r0, [r5, #6]
	ldr r3, [r4, r1]
	ldr r1, _0223583C @ =0x000006E4
	ldr r0, _02235844 @ =0x00000534
	ldr r2, [r4, r1]
	movs r1, #0x24
	muls r1, r2, r1
	adds r1, r3, r1
	ldr r0, [r6, r0]
	ldr r1, [r1, #0xc]
	bl FUN_0200D364
	ldr r0, _0223583C @ =0x000006E4
	movs r2, #0x28
	ldr r1, [r4, r0]
	movs r0, #0x24
	adds r3, r1, #0
	ldr r1, _0223584C @ =0x000006D8
	muls r3, r0, r3
	ldr r0, _02235850 @ =0x00000818
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	muls r2, r1, r2
	ldr r1, [sp, #0x18]
	mov ip, r0
	adds r1, r1, r2
	mov r2, ip
	adds r3, r2, r3
	ldr r2, [r3, #8]
	adds r0, r4, #0
	bl ov62_02230FC8
	ldr r0, _0223584C @ =0x000006D8
	ldr r1, [r4, r0]
	movs r0, #0x28
	muls r0, r1, r0
	adds r1, r4, r0
	ldr r0, _02235848 @ =0x00000548
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, _02235844 @ =0x00000534
	movs r1, #1
	ldr r0, [r6, r0]
	bl FUN_0200D3F4
	b _02235792
_02235774:
	movs r0, #0
	ldrsh r0, [r5, r0]
	movs r1, #4
	subs r0, r0, #4
	strh r0, [r5, #4]
	ldr r0, _0223584C @ =0x000006D8
	ldr r0, [r4, r0]
	subs r2, r0, r7
	lsls r0, r2, #4
	subs r2, r1, r2
	movs r1, #0x24
	muls r1, r2, r1
	adds r1, #0x19
	adds r0, r0, r1
	strh r0, [r5, #6]
_02235792:
	movs r0, #4
	strb r0, [r5, #0x1c]
	movs r2, #2
	ldr r0, _02235840 @ =ov62_022354A4
	adds r1, r5, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	ldr r0, _0223584C @ =0x000006D8
	adds r7, r7, #1
	ldr r0, [r4, r0]
	adds r6, #0x28
	cmp r7, r0
	ble _022356CC
_022357AE:
	ldr r0, [sp, #8]
	ldr r1, [r0, #0xc]
	str r1, [r0, #4]
	movs r1, #0
	str r1, [r0, #0xc]
_022357B8:
	ldr r0, _0223584C @ =0x000006D8
	movs r5, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _022357EA
	ldr r7, _02235844 @ =0x00000534
	adds r6, r4, #0
_022357C6:
	cmp r5, r0
	bne _022357D4
	ldr r0, [r6, r7]
	movs r1, #1
	bl FUN_0200D430
	b _022357DE
_022357D4:
	ldr r0, _02235844 @ =0x00000534
	movs r1, #2
	ldr r0, [r6, r0]
	bl FUN_0200D430
_022357DE:
	ldr r0, _0223584C @ =0x000006D8
	adds r5, r5, #1
	ldr r0, [r4, r0]
	adds r6, #0x28
	cmp r5, r0
	blt _022357C6
_022357EA:
	ldr r0, [sp, #8]
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _022357F8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022357F8:
	ldr r0, [sp, #8]
	movs r1, #0
	str r1, [r0, #4]
	b _02235830
_02235800:
	ldr r1, _02235850 @ =0x00000818
	ldr r3, [r4, r1]
	ldr r1, _0223583C @ =0x000006E4
	ldr r2, [r4, r1]
	movs r1, #0x24
	muls r1, r2, r1
	adds r1, r3, r1
	ldr r1, [r1, #0x20]
	cmp r1, #0
	bne _0223581A
	bl ov62_0222FC1C
	b _02235820
_0223581A:
	movs r1, #5
	bl ov62_0222FB60
_02235820:
	adds r0, r4, #0
	bl ov62_0222FB90
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
_02235830:
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02235838: .4byte 0x000005FC
_0223583C: .4byte 0x000006E4
_02235840: .4byte ov62_022354A4
_02235844: .4byte 0x00000534
_02235848: .4byte 0x00000548
_0223584C: .4byte 0x000006D8
_02235850: .4byte 0x00000818
	thumb_func_end ov62_02235580

	thumb_func_start ov62_02235854
ov62_02235854: @ 0x02235854
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223586C
	cmp r1, #1
	beq _0223592E
	cmp r1, #2
	bne _0223586A
	b _02235A14
_0223586A:
	b _02235A4E
_0223586C:
	movs r0, #0x66
	movs r1, #0x10
	bl FUN_02018144
	str r0, [sp, #8]
	movs r1, #0
	movs r2, #0x10
	blx FUN_020C4CF4
	movs r1, #0x86
	ldr r0, [sp, #8]
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	movs r6, #0
	adds r0, #0xc
	adds r7, r5, #0
	str r0, [sp, #8]
_02235894:
	movs r0, #0x66
	movs r1, #0x34
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x34
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, _02235A6C @ =0x00000534
	adds r1, r4, #0
	ldr r0, [r7, r0]
	adds r2, r4, #2
	bl ov62_02230E74
	ldr r0, _02235A6C @ =0x00000534
	ldr r0, [r7, r0]
	str r0, [r4, #0x20]
	ldr r0, _02235A70 @ =0x00000548
	ldr r0, [r7, r0]
	str r0, [r4, #0x24]
	ldr r0, [sp, #0xc]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #8]
	str r0, [r4, #0x30]
	movs r0, #0
	str r0, [r4, #0x28]
	ldrsh r0, [r4, r0]
	strh r0, [r4, #4]
	ldr r0, _02235A74 @ =0x000006D8
	ldr r0, [r5, r0]
	subs r0, r0, #1
	cmp r0, r6
	bne _022358EA
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	str r0, [r4, #0x28]
	movs r0, #0
	ldrsh r0, [r4, r0]
	strh r0, [r4, #4]
	movs r0, #0xd9
	b _02235906
_022358EA:
	movs r0, #0
	ldrsh r0, [r4, r0]
	movs r1, #0x24
	adds r0, r0, #4
	strh r0, [r4, #4]
	ldr r0, _02235A74 @ =0x000006D8
	ldr r0, [r5, r0]
	subs r2, r0, r6
	movs r0, #5
	subs r0, r0, r2
	muls r1, r0, r1
	adds r1, #0x1d
	lsls r0, r2, #4
	adds r0, r1, r0
_02235906:
	strh r0, [r4, #6]
	movs r0, #4
	strb r0, [r4, #0x1c]
	movs r2, #2
	ldr r0, _02235A78 @ =ov62_022354A4
	adds r1, r4, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	ldr r0, _02235A74 @ =0x000006D8
	adds r6, r6, #1
	ldr r0, [r5, r0]
	adds r7, #0x28
	subs r0, r0, #1
	cmp r6, r0
	ble _02235894
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02235A64
_0223592E:
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	str r0, [sp, #4]
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _02235A12
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r7, #0
	cmp r0, #0
	ble _022359CE
	ldr r0, [sp, #4]
	adds r6, r5, #0
	adds r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	str r0, [sp, #0x14]
	adds r0, #0xc
	str r0, [sp, #0x14]
_02235958:
	movs r0, #0x66
	movs r1, #0x34
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x34
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, _02235A7C @ =0x000005FC
	adds r1, r4, #0
	ldr r0, [r6, r0]
	adds r2, r4, #2
	bl ov62_02230E74
	ldr r0, _02235A7C @ =0x000005FC
	ldr r0, [r6, r0]
	str r0, [r4, #0x20]
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	str r0, [r4, #0x24]
	ldr r0, [sp, #0x10]
	str r0, [r4, #0x2c]
	ldr r0, [sp, #0x14]
	str r0, [r4, #0x30]
	movs r0, #0
	str r0, [r4, #0x28]
	ldrsh r0, [r4, r0]
	strh r0, [r4, #4]
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	movs r0, #5
	subs r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xcd
	strh r0, [r4, #6]
	movs r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0xdd
	blt _022359B0
	movs r0, #0xdd
	strh r0, [r4, #6]
_022359B0:
	movs r0, #8
	strb r0, [r4, #0x1c]
	movs r2, #2
	ldr r0, _02235A78 @ =ov62_022354A4
	adds r1, r4, #0
	lsls r2, r2, #0xc
	bl FUN_0200D9E8
	movs r0, #0x6e
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r7, r7, #1
	adds r6, #0x28
	cmp r7, r0
	blt _02235958
_022359CE:
	ldr r0, [sp, #4]
	movs r4, #0
	str r4, [r0]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	ldr r0, _02235A74 @ =0x000006D8
	ldr r1, [r5, r0]
	subs r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0
	ble _02235A64
	ldr r7, _02235A6C @ =0x00000534
	adds r6, r5, #0
_022359EC:
	subs r0, r0, #1
	cmp r4, r0
	bne _022359FC
	ldr r0, [r6, r7]
	movs r1, #1
	bl FUN_0200D430
	b _02235A06
_022359FC:
	ldr r0, _02235A6C @ =0x00000534
	movs r1, #2
	ldr r0, [r6, r0]
	bl FUN_0200D430
_02235A06:
	ldr r0, _02235A74 @ =0x000006D8
	adds r4, r4, #1
	ldr r0, [r5, r0]
	adds r6, #0x28
	cmp r4, r0
	blt _022359EC
_02235A12:
	b _02235A64
_02235A14:
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r4]
	cmp r0, #0x10
	beq _02235A3C
	adds r0, r0, #2
	str r0, [r4]
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_02235A3C:
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02235A48
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02235A48:
	movs r0, #0
	str r0, [r4, #4]
	b _02235A64
_02235A4E:
	bl ov62_0222FBF8
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_020181C4
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
_02235A64:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235A6C: .4byte 0x00000534
_02235A70: .4byte 0x00000548
_02235A74: .4byte 0x000006D8
_02235A78: .4byte ov62_022354A4
_02235A7C: .4byte 0x000005FC
	thumb_func_end ov62_02235854

	thumb_func_start ov62_02235A80
ov62_02235A80: @ 0x02235A80
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02235A8E
	b _02235C5C
_02235A8E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02235A9A: @ jump table
	.2byte _02235AA4 - _02235A9A - 2 @ case 0
	.2byte _02235AD4 - _02235A9A - 2 @ case 1
	.2byte _02235B4A - _02235A9A - 2 @ case 2
	.2byte _02235BCE - _02235A9A - 2 @ case 3
	.2byte _02235BE6 - _02235A9A - 2 @ case 4
_02235AA4:
	movs r0, #0
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	cmp r0, #0
	beq _02235ABC
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	subs r1, r0, #1
	b _02235ABE
_02235ABC:
	movs r1, #6
_02235ABE:
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r4, #0
	bl ov62_022316A0
	str r0, [r4, #0x58]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02235C64
_02235AD4:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02235AE8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02235AE8:
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02235C64
_02235B4A:
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF74
	adds r1, r4, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	adds r0, r4, #0
	bl ov62_022317CC
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02235C64
_02235BCE:
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02235C64
_02235BE6:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02235BFA
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02235BFA:
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235C6C @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02235C64
_02235C5C:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0222FB60
_02235C64:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_02235C6C: .4byte 0x0000FFFF
	thumb_func_end ov62_02235A80

	thumb_func_start ov62_02235C70
ov62_02235C70: @ 0x02235C70
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02235C7E
	b _02235E50
_02235C7E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02235C8A: @ jump table
	.2byte _02235C94 - _02235C8A - 2 @ case 0
	.2byte _02235CC8 - _02235C8A - 2 @ case 1
	.2byte _02235D3E - _02235C8A - 2 @ case 2
	.2byte _02235DC2 - _02235C8A - 2 @ case 3
	.2byte _02235DDA - _02235C8A - 2 @ case 4
_02235C94:
	movs r0, #0
	str r0, [r4, #0x54]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x5c
	ldrb r0, [r0]
	movs r1, #7
	blx FUN_020E1F6C
	adds r0, r4, #0
	adds r0, #0x5c
	strb r1, [r0]
	adds r0, r4, #0
	bl ov62_022316A0
	str r0, [r4, #0x58]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02235E5A
_02235CC8:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02235CDC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02235CDC:
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02235E5A
_02235D3E:
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF74
	adds r1, r4, #0
	adds r1, #0x5c
	ldrb r1, [r1]
	adds r0, r4, #0
	bl ov62_022317CC
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02235E5A
_02235DC2:
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02235E5A
_02235DDA:
	adds r0, r4, #0
	adds r0, #0x54
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02235DEE
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02235DEE:
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #0
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02235E60 @ =0x0000FFFF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #0x54]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02235E5A
_02235E50:
	movs r1, #0
	adds r0, r4, #0
	str r1, [r4, #0x54]
	bl ov62_0222FB60
_02235E5A:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_02235E60: .4byte 0x0000FFFF
	thumb_func_end ov62_02235C70

	thumb_func_start ov62_02235E64
ov62_02235E64: @ 0x02235E64
	push {r3, r4, r5, lr}
	movs r1, #0x67
	adds r5, r0, #0
	movs r0, #0x66
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x67
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x86
	lsls r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	bl ov62_022315C8
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0222FB60
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02235E64

	thumb_func_start ov62_02235EBC
ov62_02235EBC: @ 0x02235EBC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02235ED4
	cmp r1, #1
	beq _02235F32
	b _02235FBE
_02235ED4:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02235EE8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02235EE8:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223603C
_02235F32:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02231454
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #2
	bl FUN_02019060
	movs r0, #4
	movs r1, #0
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #1
	bl FUN_02019060
	movs r0, #7
	movs r1, #2
	bl FUN_02019060
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223603C
_02235FBE:
	movs r1, #0
	bl ov62_0223376C
	adds r0, r5, #0
	bl ov62_022300BC
	cmp r0, #1
	bne _02236034
	ldr r0, _02236044 @ =0x0000086C
	movs r6, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02235FDC
	movs r6, #1
	b _02236006
_02235FDC:
	lsls r1, r1, #2
	adds r1, r5, r1
	adds r0, #0x10
	ldr r0, [r1, r0]
	movs r1, #5
	adds r2, r6, #0
	bl FUN_0202FE98
	movs r3, #0
	movs r2, #1
	eors r1, r3
	eors r0, r2
	orrs r0, r1
	bne _02235FFC
	movs r6, #1
	b _02236006
_02235FFC:
	ldr r0, _02236048 @ =0x00000874
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02236006
	movs r6, #1
_02236006:
	cmp r6, #0
	beq _02236022
	adds r0, r5, #0
	bl ov62_02236C20
	movs r0, #0x66
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r5, #0
	movs r1, #9
	bl ov62_0222FB60
	b _0223603C
_02236022:
	movs r0, #0x66
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r5, #0
	movs r1, #6
	bl ov62_0222FB60
	b _0223603C
_02236034:
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
_0223603C:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02236044: .4byte 0x0000086C
_02236048: .4byte 0x00000874
	thumb_func_end ov62_02235EBC

	thumb_func_start ov62_0223604C
ov62_0223604C: @ 0x0223604C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223605E
	b _02236160
_0223605E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223606A: @ jump table
	.2byte _02236072 - _0223606A - 2 @ case 0
	.2byte _02236088 - _0223606A - 2 @ case 1
	.2byte _022360AA - _0223606A - 2 @ case 2
	.2byte _02236106 - _0223606A - 2 @ case 3
_02236072:
	bl ov62_02236C20
	adds r0, r4, #0
	movs r1, #6
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02236168
_02236088:
	bl ov62_02236B2C
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223616C @ =0x02248C1C
	ldr r2, _02236170 @ =ov62_02236AB0
	movs r1, #3
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02236168
_022360AA:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	adds r0, #0x9c
	adds r1, r4, #0
	bl ov62_02234214
	adds r0, r5, #0
	adds r0, #0x9c
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	adds r5, #0x9c
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223427C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02236168
_02236106:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02236146
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #1
	bl ov62_0223427C
	adds r0, r4, #0
	bl ov62_02236B64
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02236146:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02236168
_02236160:
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
_02236168:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223616C: .4byte 0x02248C1C
_02236170: .4byte ov62_02236AB0
	thumb_func_end ov62_0223604C

	thumb_func_start ov62_02236174
ov62_02236174: @ 0x02236174
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_02236174

	thumb_func_start ov62_0223618C
ov62_0223618C: @ 0x0223618C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #3
	bhi _0223629A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022361A8: @ jump table
	.2byte _022361B0 - _022361A8 - 2 @ case 0
	.2byte _022361DC - _022361A8 - 2 @ case 1
	.2byte _022361F4 - _022361A8 - 2 @ case 2
	.2byte _02236256 - _022361A8 - 2 @ case 3
_022361B0:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022361C2
	adds r4, #0x9c
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02234228
	b _022361CC
_022361C2:
	adds r4, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02232394
_022361CC:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022362B2
_022361DC:
	movs r2, #1
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022362B2
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022362B2
_022361F4:
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02236220
	adds r0, r4, #0
	adds r0, #0x10
	adds r1, r5, #0
	bl ov62_02232378
	adds r4, #0x10
	adds r0, r4, #0
	movs r1, #0
	bl ov62_022323B8
	adds r0, r5, #0
	movs r1, #0x50
	movs r2, #3
	bl ov62_022343B8
	b _02236246
_02236220:
	adds r0, r4, #0
	adds r0, #0x9c
	adds r1, r5, #0
	bl ov62_02234214
	adds r0, r4, #0
	adds r0, #0x9c
	movs r1, #0
	bl ov62_0223427C
	adds r4, #0x9c
	adds r0, r4, #0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #3
	bl ov62_022343B8
_02236246:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022362B2
_02236256:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _022362B2
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02236278
	adds r4, #0x10
	adds r0, r4, #0
	movs r1, #1
	bl ov62_022323B8
	b _02236282
_02236278:
	adds r4, #0x9c
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223427C
_02236282:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022362B2
_0223629A:
	ldr r1, [r4, #0xc]
	movs r0, #1
	eors r1, r0
	str r1, [r4, #0xc]
	adds r0, r5, #0
	adds r1, #0x79
	bl ov62_02236BC8
	adds r0, r5, #0
	movs r1, #3
	bl ov62_0222FB60
_022362B2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223618C

	thumb_func_start ov62_022362B8
ov62_022362B8: @ 0x022362B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	movs r6, #0x5e
	ldr r4, [r5, r0]
	lsls r6, r6, #2
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r3, #4
	bl FUN_0201A7E8
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x82
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r4, r6
	adds r1, r7, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02236394 @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r4, r6
	bl FUN_0201A9A4
	adds r6, #0x10
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r3, #0x12
	bl FUN_0201A7E8
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x83
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, r6
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02236394 @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, r6
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02236394: .4byte 0x000F0D00
	thumb_func_end ov62_022362B8

	thumb_func_start ov62_02236398
ov62_02236398: @ 0x02236398
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #0x62
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	movs r0, #0x62
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02236398

	thumb_func_start ov62_022363CC
ov62_022363CC: @ 0x022363CC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r2, [r4, #8]
	ldr r5, [r4, r1]
	cmp r2, #7
	bls _022363E0
	b _022365EA
_022363E0:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_022363EC: @ jump table
	.2byte _022363FC - _022363EC - 2 @ case 0
	.2byte _02236458 - _022363EC - 2 @ case 1
	.2byte _022364A8 - _022363EC - 2 @ case 2
	.2byte _022364E6 - _022363EC - 2 @ case 3
	.2byte _02236530 - _022363EC - 2 @ case 4
	.2byte _0223658E - _022363EC - 2 @ case 5
	.2byte _0223659E - _022363EC - 2 @ case 6
	.2byte _022365B0 - _022363EC - 2 @ case 7
_022363FC:
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02024034
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _02236430
	adds r0, r5, #0
	adds r0, #0x9c
	adds r1, r4, #0
	bl ov62_02234228
	b _0223643A
_02236430:
	adds r0, r5, #0
	adds r0, #0x10
	adds r1, r4, #0
	bl ov62_02232394
_0223643A:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02236BA8
	movs r0, #0x66
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_02236458:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223648E
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02236C94
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223648E:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223660C
_022364A8:
	bl ov62_022362B8
	movs r1, #0x4a
	adds r0, r4, #0
	lsls r1, r1, #2
	bl ov62_02231AAC
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x54
	movs r3, #7
	bl FUN_0200710C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_022364E6:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02236516
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02236516:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223660C
_02236530:
	ldr r0, _02236614 @ =0x02248C14
	bl FUN_02022760
	cmp r0, #0
	beq _02236570
	movs r0, #0x66
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	bl ov62_02234520
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02024800
	cmp r0, #0
	beq _02236560
	ldr r1, _02236618 @ =0x0000012A
	adds r0, r4, #0
	bl ov62_02231B3C
	b _02236568
_02236560:
	ldr r1, _0223661C @ =0x0000012B
	adds r0, r4, #0
	bl ov62_02231B3C
_02236568:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_02236570:
	ldr r0, _02236620 @ =0x02248C18
	bl FUN_02022760
	cmp r0, #0
	beq _0223660C
	movs r0, #0x66
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	bl ov62_02234520
	movs r0, #6
	str r0, [r4, #8]
	b _0223660C
_0223658E:
	subs r1, #0x30
	ldr r0, [r4, r1]
	bl FUN_020246E0
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_0223659E:
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_02236398
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223660C
_022365B0:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022365D0
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022365D0:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223660C
_022365EA:
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #1
	bne _022365FE
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
	b _0223660C
_022365FE:
	movs r1, #0
	str r1, [r5, r0]
	str r1, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #2
	bl ov62_0222FB60
_0223660C:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02236614: .4byte 0x02248C14
_02236618: .4byte 0x0000012A
_0223661C: .4byte 0x0000012B
_02236620: .4byte 0x02248C18
	thumb_func_end ov62_022363CC

	thumb_func_start ov62_02236624
ov62_02236624: @ 0x02236624
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0223663A
	cmp r1, #1
	beq _0223665E
	cmp r1, #2
	beq _0223666E
	b _022366B2
_0223663A:
	ldr r1, _022366CC @ =0x0000012B
	bl ov62_02231AAC
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022366C4
_0223665E:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022366C4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022366C4
_0223666E:
	ldr r1, _022366D0 @ =0x00000874
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _022366AA
	adds r0, r1, #0
	subs r0, #8
	ldr r0, [r4, r0]
	subs r1, #0x44
	str r0, [sp]
	ldr r0, [r4, r1]
	movs r1, #0x66
	add r2, sp, #0xc
	movs r3, #0
	bl FUN_0202F298
	movs r1, #0x83
	lsls r1, r1, #4
	ldr r0, [r4, r1]
	adds r1, #0x3c
	ldr r1, [r4, r1]
	bl ov62_022486A4
	bl FUN_0202F22C
	adds r0, r4, #0
	bl ov62_022339A0
	adds r0, r4, #0
	bl ov62_022338A8
_022366AA:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022366C4
_022366B2:
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_02236C20
	adds r0, r4, #0
	movs r1, #9
	bl ov62_0222FB60
_022366C4:
	movs r0, #0
	add sp, #0x10
	pop {r4, pc}
	nop
_022366CC: .4byte 0x0000012B
_022366D0: .4byte 0x00000874
	thumb_func_end ov62_02236624

	thumb_func_start ov62_022366D4
ov62_022366D4: @ 0x022366D4
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022366F0
	cmp r1, #1
	beq _02236710
	cmp r1, #2
	beq _02236720
	b _0223679E
_022366F0:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022367AA
_02236710:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022367AA
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022367AA
_02236720:
	movs r1, #0x66
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _0223676A
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _02236742
	adds r0, r4, #0
	adds r0, #0x9c
	adds r1, r5, #0
	bl ov62_02234228
	b _0223674C
_02236742:
	adds r0, r4, #0
	adds r0, #0x10
	adds r1, r5, #0
	bl ov62_02232394
_0223674C:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02024034
	adds r0, r5, #0
	bl ov62_02236BA8
	adds r0, r5, #0
	bl ov62_02236C94
_0223676A:
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022314A8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r1, [r5, #0x10]
	adds r0, r5, #0
	ldr r1, [r1]
	bl ov62_022300C8
	ldr r0, _022367B0 @ =0x00000868
	movs r1, #1
	ldr r0, [r5, r0]
	movs r2, #0
	bl FUN_0208BA84
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022367AA
_0223679E:
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_022367AA:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_022367B0: .4byte 0x00000868
	thumb_func_end ov62_022366D4

	thumb_func_start ov62_022367B4
ov62_022367B4: @ 0x022367B4
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022367CE
	cmp r1, #1
	beq _02236812
	cmp r1, #2
	beq _02236852
	b _02236896
_022367CE:
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022367FA
	adds r4, #0x9c
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02234228
	b _02236804
_022367FA:
	adds r4, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02232394
_02236804:
	adds r0, r5, #0
	bl ov62_02236BA8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223691A
_02236812:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02236838
	adds r0, r5, #0
	bl ov62_02236C94
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02236838:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223691A
_02236852:
	movs r1, #1
	bl ov62_0223376C
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223146C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223691A
_02236896:
	bl ov62_02233790
	cmp r0, #0
	beq _0223691A
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022368EA
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r4, #0
	bl FUN_020181C4
	b _0223691A
_022368EA:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223691A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_022367B4

	thumb_func_start ov62_02236920
ov62_02236920: @ 0x02236920
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _02236934
	b _02236A88
_02236934:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02236940: @ jump table
	.2byte _0223694C - _02236940 - 2 @ case 0
	.2byte _0223696C - _02236940 - 2 @ case 1
	.2byte _0223698E - _02236940 - 2 @ case 2
	.2byte _022369EA - _02236940 - 2 @ case 3
	.2byte _02236A5A - _02236940 - 2 @ case 4
	.2byte _02236A78 - _02236940 - 2 @ case 5
_0223694C:
	movs r1, #6
	movs r2, #7
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_0223696C:
	bl ov62_02236B2C
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02236AA4 @ =0x02248C1C
	ldr r2, _02236AA8 @ =ov62_02236AB0
	movs r1, #3
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_0223698E:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	adds r0, #0x9c
	adds r1, r4, #0
	bl ov62_02234214
	adds r0, r5, #0
	adds r0, #0x9c
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	adds r5, #0x9c
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223427C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_022369EA:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02236A40
	adds r0, r5, #0
	adds r0, #0x9c
	movs r1, #1
	bl ov62_0223427C
	adds r0, r4, #0
	bl ov62_02236B64
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02236A32
	movs r0, #0xff
	b _02236A36
_02236A32:
	ldr r0, [r4, #8]
	adds r0, r0, #1
_02236A36:
	str r0, [r4, #8]
	movs r0, #0x66
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_02236A40:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02236A9E
_02236A5A:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_02236A78:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02236A9E
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02236A9E
_02236A88:
	ldr r0, _02236AAC @ =0x000006D8
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov62_02230098
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
_02236A9E:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02236AA4: .4byte 0x02248C1C
_02236AA8: .4byte ov62_02236AB0
_02236AAC: .4byte 0x000006D8
	thumb_func_end ov62_02236920

	thumb_func_start ov62_02236AB0
ov62_02236AB0: @ 0x02236AB0
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _02236B24
	cmp r0, #0
	beq _02236ACC
	cmp r0, #1
	beq _02236ADC
	cmp r0, #2
	beq _02236B16
	pop {r3, r4, r5, pc}
_02236ACC:
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02236ADC:
	adds r0, r5, #0
	bl ov62_02234520
	ldr r0, _02236B28 @ =0x0000086C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02236B02
	adds r4, #0xa0
	ldr r0, [r4]
	movs r1, #5
	movs r2, #0
	bl FUN_0202FE98
	movs r3, #0
	movs r2, #1
	eors r1, r3
	eors r0, r2
	orrs r0, r1
	bne _02236B0C
_02236B02:
	adds r0, r5, #0
	movs r1, #7
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02236B0C:
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02236B16:
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #8
	bl ov62_0222FB60
_02236B24:
	pop {r3, r4, r5, pc}
	nop
_02236B28: .4byte 0x0000086C
	thumb_func_end ov62_02236AB0

	thumb_func_start ov62_02236B2C
ov62_02236B2C: @ 0x02236B2C
	push {r3, r4}
	movs r3, #0x86
	lsls r3, r3, #4
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r0, r2]
	ldr r1, [r0, r3]
	lsls r2, r2, #2
	adds r4, r0, r2
	adds r2, r3, #0
	adds r2, #0x2c
	ldr r4, [r4, r2]
	adds r2, r1, #0
	str r4, [r1, #0x10]
	adds r2, #0x9c
	str r4, [r2]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r0, r2]
	adds r3, #0x1c
	lsls r2, r2, #2
	adds r0, r0, r2
	ldr r0, [r0, r3]
	adds r1, #0xa0
	str r0, [r1]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov62_02236B2C

	thumb_func_start ov62_02236B64
ov62_02236B64: @ 0x02236B64
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	movs r6, #0x5e
	ldr r4, [r5, r0]
	lsls r6, r6, #2
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r0, #3
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r2, #6
	movs r3, #8
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0x79
	bl ov62_02236BC8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_02236B64

	thumb_func_start ov62_02236BA8
ov62_02236BA8: @ 0x02236BA8
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	movs r0, #0x5e
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02236BA8

	thumb_func_start ov62_02236BC8
ov62_02236BC8: @ 0x02236BC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	movs r6, #0x5e
	adds r7, r1, #0
	ldr r4, [r5, r0]
	lsls r6, r6, #2
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	adds r1, r7, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, r6
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02236C1C @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, r6
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02236C1C: .4byte 0x000F0D00
	thumb_func_end ov62_02236BC8

	thumb_func_start ov62_02236C20
ov62_02236C20: @ 0x02236C20
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	movs r1, #2
	bl ov62_022312CC
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r0, r1, #4
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	movs r0, #0x56
	lsls r0, r0, #2
	adds r5, #0x14
	adds r0, r4, r0
	adds r1, r5, #0
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x50
	movs r2, #0xe8
	bl FUN_0200D4C4
	movs r0, #0x16
	lsls r0, r0, #4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02236C20

	thumb_func_start ov62_02236C94
ov62_02236C94: @ 0x02236C94
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov62_022312B0
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	adds r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02236C94

	thumb_func_start ov62_02236CBC
ov62_02236CBC: @ 0x02236CBC
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _02236CD8
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0x80
	movs r2, #0xe8
	bl FUN_0200D4C4
	b _02236CE6
_02236CD8:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0x50
	movs r2, #0xe8
	bl FUN_0200D4C4
_02236CE6:
	adds r4, #0xc0
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4]
	subs r2, #0x2c
	bl FUN_020128C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02236CBC

	thumb_func_start ov62_02236CF8
ov62_02236CF8: @ 0x02236CF8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r6, [r0, #0x14]
	ldr r4, [r0, #0x18]
	ldr r5, [r0, #0x1c]
	movs r0, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _02236D44 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x32
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02236D44 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x1c
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02236D44 @ =0x00002E94
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	movs r3, #0x1d
	bl FUN_0200CE54
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02236D44: .4byte 0x00002E94
	thumb_func_end ov62_02236CF8

	thumb_func_start ov62_02236D48
ov62_02236D48: @ 0x02236D48
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	movs r1, #2
	bl ov62_02236CF8
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	adds r1, r4, #0
	adds r1, #0xbc
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0xb8
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0xb8
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0x80
	movs r2, #0xe8
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xc0
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r0]
	subs r2, #0x2c
	bl FUN_020128C4
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	movs r1, #1
	bl FUN_020129D0
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	adds r1, r4, #0
	adds r1, #0x98
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #0xdc
	movs r2, #0xe0
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0x98
	ldr r0, [r0]
	movs r1, #2
	bl FUN_0200D364
	adds r4, #0x98
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02236CBC
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02236D48

	thumb_func_start ov62_02236DE8
ov62_02236DE8: @ 0x02236DE8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r0, r4, #0
	adds r0, #0xb8
	bl ov62_022312B0
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_0200D0F4
	adds r4, #0x98
	ldr r0, [r4]
	bl FUN_0200D0F4
	adds r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02236DE8

	thumb_func_start ov62_02236E14
ov62_02236E14: @ 0x02236E14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	ldr r5, [r0, #0x24]
	str r0, [sp, #0x18]
	ldr r7, [r0, #0x14]
	ldr r6, [r0, #0x18]
	ldr r4, [r0, #0x1c]
	ldr r0, [r0, #0x28]
	movs r1, #0x3e
	str r0, [sp, #0x24]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r7, #0
	adds r2, r5, #0
	movs r3, #6
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r7, #0
	movs r1, #0x44
	adds r2, r5, #0
	movs r3, #6
	bl FUN_0200710C
	ldr r0, [sp, #0x18]
	movs r1, #0
	bl ov62_02231710
	str r7, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _022370B4 @ =0x0000726C
	movs r1, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	adds r2, r6, #0
	adds r3, r4, #0
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _022370B4 @ =0x0000726C
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x42
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370B4 @ =0x0000726C
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x47
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370B4 @ =0x0000726C
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x48
	bl FUN_0200CE54
	ldr r0, [sp, #0x18]
	movs r1, #1
	bl ov62_02231710
	str r7, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #6
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _022370B8 @ =0x00006E7A
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	adds r2, r6, #0
	adds r3, r4, #0
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022370B8 @ =0x00006E7A
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x40
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370B8 @ =0x00006E7A
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x26
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370B8 @ =0x00006E7A
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x27
	bl FUN_0200CE54
	ldr r3, _022370BC @ =0x02248C84
	add r2, sp, #0x3c
	ldm r3!, {r0, r1}
	str r2, [sp, #0x20]
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	ldr r3, _022370C0 @ =0x02248C70
	str r0, [r2]
	add r2, sp, #0x28
	ldm r3!, {r0, r1}
	str r2, [sp, #0x1c]
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r5, #0
	str r0, [r2]
_02236F4C:
	cmp r5, #3
	bne _02236F8E
	str r7, [sp]
	movs r0, #0x5c
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022370C4 @ =0x00004705
	movs r1, #2
	adds r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	adds r2, r6, #0
	adds r3, r4, #0
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022370C4 @ =0x00004705
	adds r1, r4, #0
	adds r0, r5, r0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x5b
	bl FUN_0200CC3C
	b _02236FD0
_02236F8E:
	movs r0, #0x92
	str r0, [sp]
	ldr r0, [sp, #0x20]
	movs r1, #2
	ldr r0, [r0]
	adds r2, r6, #0
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022370C4 @ =0x00004705
	adds r3, r4, #0
	adds r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x24]
	bl FUN_0200CD7C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022370C4 @ =0x00004705
	ldr r3, [sp, #0x1c]
	adds r0, r5, r0
	str r0, [sp, #8]
	ldr r3, [r3]
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x92
	bl FUN_0200D888
_02236FD0:
	ldr r0, [sp, #0x20]
	adds r5, r5, #1
	adds r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	cmp r5, #5
	blt _02236F4C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370C4 @ =0x00004705
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x92
	movs r3, #9
	bl FUN_0200CE0C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370C4 @ =0x00004705
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x92
	movs r3, #0xa
	bl FUN_0200CE3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370C8 @ =0x00004706
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x59
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370C8 @ =0x00004706
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r7, #0
	movs r3, #0x5a
	bl FUN_0200CE54
	ldr r1, _022370CC @ =0x0000088C
	ldr r0, [sp, #0x18]
	movs r6, #0xd
	ldr r0, [r0, r1]
	movs r7, #0xe
	bl FUN_02030BAC
	ldr r1, [sp, #0x18]
	cmp r0, #0
	ldr r4, [r1, #0x18]
	ldr r5, [r1, #0x1c]
	ldr r1, [r1, #0x28]
	beq _02237050
	movs r6, #0xf
	movs r7, #0x10
_02237050:
	movs r0, #0x92
	str r0, [sp]
	str r6, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _022370D0 @ =0x0002869F
	adds r2, r4, #0
	str r0, [sp, #0x14]
	adds r0, r1, #0
	movs r1, #2
	adds r3, r5, #0
	bl FUN_0200CD7C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370D0 @ =0x0002869F
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x92
	movs r3, #9
	bl FUN_0200CE0C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022370D0 @ =0x0002869F
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x92
	movs r3, #0xa
	bl FUN_0200CE3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022370D0 @ =0x0002869F
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r2, #0x92
	adds r3, r7, #0
	bl FUN_0200D888
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022370B4: .4byte 0x0000726C
_022370B8: .4byte 0x00006E7A
_022370BC: .4byte 0x02248C84
_022370C0: .4byte 0x02248C70
_022370C4: .4byte 0x00004705
_022370C8: .4byte 0x00004706
_022370CC: .4byte 0x0000088C
_022370D0: .4byte 0x0002869F
	thumb_func_end ov62_02236E14

	thumb_func_start ov62_022370D4
ov62_022370D4: @ 0x022370D4
	push {r4, r5, r6, r7}
	adds r3, r0, #0
	movs r0, #0
	cmp r1, #0
	ble _022370E6
_022370DE:
	adds r0, r0, #1
	adds r3, r3, #2
	cmp r0, r1
	blt _022370DE
_022370E6:
	adds r7, r1, r2
	cmp r0, r7
	bge _02237126
	movs r1, #0x97
_022370EE:
	ldrh r6, [r3]
	movs r2, #0x1f
	adds r0, r0, #1
	asrs r4, r6, #0xa
	ands r4, r2
	adds r5, r4, #0
	movs r2, #0x1d
	muls r5, r2, r5
	movs r2, #0x1f
	ands r2, r6
	movs r4, #0x4c
	muls r4, r2, r4
	asrs r6, r6, #5
	movs r2, #0x1f
	ands r2, r6
	adds r6, r2, #0
	muls r6, r1, r6
	adds r2, r4, r6
	adds r2, r5, r2
	asrs r5, r2, #8
	lsls r4, r5, #0xa
	lsls r2, r5, #5
	orrs r2, r4
	orrs r2, r5
	strh r2, [r3]
	adds r3, r3, #2
	cmp r0, r7
	blt _022370EE
_02237126:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov62_022370D4

	thumb_func_start ov62_0223712C
ov62_0223712C: @ 0x0223712C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	ldr r0, [r0, #0x28]
	movs r1, #0x83
	str r0, [sp, #4]
	ldr r0, [sp]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl FUN_020507E4
	adds r4, r0, #0
	bl FUN_0206B5C8
	str r0, [sp, #0x30]
	adds r0, r4, #0
	bl FUN_0206B588
	str r0, [sp, #0x34]
	adds r0, r4, #0
	bl FUN_0206B5B8
	str r0, [sp, #0x38]
	adds r0, r4, #0
	bl FUN_0206B5A8
	str r0, [sp, #0x3c]
	adds r0, r4, #0
	bl FUN_0206B598
	ldr r3, _022371C8 @ =0x02248C5C
	str r0, [sp, #0x40]
	ldm r3!, {r0, r1}
	add r2, sp, #8
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	movs r7, #0
	add r4, sp, #0x30
	add r5, sp, #0x1c
	str r0, [r2]
_02237180:
	ldr r6, [r4]
	cmp r6, #0
	beq _022371B2
	add r3, sp, #8
	ldm r3!, {r0, r1}
	add r2, sp, #0x1c
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	cmp r6, #2
	str r0, [r2]
	bne _022371B2
	ldr r0, [sp]
	movs r1, #2
	ldr r0, [r0, #0x28]
	bl FUN_0200316C
	ldr r1, [r5]
	movs r2, #0x10
	adds r1, r1, #4
	lsls r1, r1, #0x14
	lsrs r1, r1, #0x10
	bl ov62_022370D4
_022371B2:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r7, #5
	blt _02237180
	ldr r0, [sp, #4]
	movs r1, #1
	bl FUN_02003858
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022371C8: .4byte 0x02248C5C
	thumb_func_end ov62_0223712C

	thumb_func_start ov62_022371CC
ov62_022371CC: @ 0x022371CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #0x1c]
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r6, [r7, r0]
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x20
	strh r0, [r1, #0x28]
	movs r0, #1
	lsls r0, r0, #8
	strh r0, [r1, #0x2a]
	ldr r0, [sp, #0x1c]
	ldr r5, [sp, #0x1c]
	strh r0, [r1, #0x2c]
	strh r0, [r1, #0x2e]
	movs r0, #0xa
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x1c]
	movs r1, #1
	str r0, [sp, #0x54]
	str r0, [sp, #0x74]
	str r0, [sp, #0x78]
	subs r0, r1, #2
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	ldr r0, _02237490 @ =0x0002869F
	str r1, [sp, #0x58]
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	adds r4, r6, #0
_02237212:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl FUN_0200CE6C
	str r0, [r4, #0x40]
	movs r1, #1
	bl FUN_0200D364
	ldr r0, [r4, #0x40]
	bl FUN_0200D330
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x40]
	adds r2, r1, #0
	bl FUN_0200D6E8
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #5
	blt _02237212
	movs r5, #0
	adds r4, r6, #0
_02237240:
	ldr r0, _02237494 @ =0x00004705
	adds r0, r5, r0
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	cmp r5, #3
	bne _02237254
	ldr r0, _02237498 @ =0x00004706
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	b _0223725A
_02237254:
	ldr r0, _02237494 @ =0x00004705
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
_0223725A:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl FUN_0200CE6C
	str r0, [r4, #0x54]
	cmp r5, #3
	ldr r0, [r4, #0x54]
	bne _02237274
	movs r1, #0
	bl FUN_0200D364
	b _0223727A
_02237274:
	movs r1, #1
	bl FUN_0200D364
_0223727A:
	ldr r0, [r4, #0x54]
	bl FUN_0200D330
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x54]
	adds r2, r1, #0
	bl FUN_0200D6E8
	adds r1, r5, #0
	ldr r0, [r4, #0x54]
	adds r1, #0xa
	bl FUN_0200D41C
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #5
	blt _02237240
	ldr r0, _0223749C @ =0x00006E7A
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	movs r0, #0x14
	str r0, [sp, #0x50]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	bl FUN_020507E4
	adds r4, r0, #0
	bl FUN_0206B5C8
	str r0, [sp, #0x7c]
	adds r0, r4, #0
	bl FUN_0206B588
	str r0, [sp, #0x80]
	adds r0, r4, #0
	bl FUN_0206B5B8
	str r0, [sp, #0x84]
	adds r0, r4, #0
	bl FUN_0206B5A8
	str r0, [sp, #0x88]
	adds r0, r4, #0
	bl FUN_0206B598
	str r0, [sp, #0x8c]
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #0x7c
	ldr r2, _022374A0 @ =0x02248C98
	str r0, [sp, #0x10]
	ldm r2!, {r0, r1}
	add r3, sp, #0x20
	stm r3!, {r0, r1}
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r2]
	adds r4, r6, #0
	add r5, sp, #0x34
	str r0, [r3]
_02237300:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl FUN_0200CE6C
	str r0, [r4, #0x68]
	ldr r0, [sp, #0x10]
	ldr r0, [r0]
	cmp r0, #0
	bne _02237336
	ldr r0, [r4, #0x68]
	movs r1, #5
	bl FUN_0200D364
	ldr r0, [r4, #0x68]
	movs r1, #9
	bl FUN_0200D41C
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r4, #0x40]
	movs r1, #0
	bl FUN_0200D3F4
	b _02237358
_02237336:
	add r3, sp, #0x20
	ldm r3!, {r0, r1}
	add r2, sp, #0x34
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x68]
	ldr r1, [r5]
	bl FUN_0200D364
	ldr r1, [r5]
	ldr r0, [r4, #0x68]
	adds r1, r1, #4
	bl FUN_0200D41C
_02237358:
	ldr r0, [r4, #0x68]
	bl FUN_0200D330
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x68]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r0, [sp, #0x10]
	adds r4, r4, #4
	adds r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02237300
	ldr r0, _022374A4 @ =0x0000726C
	movs r4, #0xfa
	str r0, [sp, #0x5c]
	str r0, [sp, #0x60]
	str r0, [sp, #0x64]
	str r0, [sp, #0x68]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x6c]
	str r0, [sp, #0x70]
	movs r0, #2
	str r0, [sp, #0x58]
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x50]
	adds r0, r6, #0
	adds r0, #0x90
	ldr r0, [r0]
	lsls r4, r4, #2
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r5, sp, #0x90
	str r0, [sp, #8]
_022373AA:
	ldr r0, [sp]
	adds r1, r4, #0
	blx FUN_020E1F6C
	str r0, [r5]
	ldr r0, [sp]
	adds r1, r4, #0
	blx FUN_020E1F6C
	str r1, [sp]
	adds r0, r4, #0
	movs r1, #0xa
	blx FUN_020E1F6C
	adds r4, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	bne _022373DC
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _022373DC
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	b _022373E0
_022373DC:
	movs r0, #1
	str r0, [sp, #0x18]
_022373E0:
	ldr r0, [sp, #8]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blt _022373AA
	movs r0, #0xa
	str r0, [sp, #0xa0]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #0x58
	adds r4, r6, #0
	add r5, sp, #0x90
	str r0, [sp, #0x14]
_022373FC:
	ldr r0, [r7, #0x18]
	ldr r1, [r7, #0x1c]
	add r2, sp, #0x48
	bl FUN_0200CE6C
	str r0, [r4, #0x7c]
	ldr r0, [r5]
	cmp r0, #0
	bne _0223741E
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	cmp r1, r0
	bge _0223741E
	ldr r0, [r4, #0x7c]
	movs r1, #0
	bl FUN_0200D3F4
_0223741E:
	ldr r0, [r4, #0x7c]
	ldr r1, [r5]
	bl FUN_0200D364
	ldr r1, [sp, #0x14]
	ldr r0, [r4, #0x7c]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	movs r2, #0x48
	bl ov62_02230E68
	ldr r0, [r4, #0x7c]
	bl FUN_0200D330
	ldr r0, [sp, #0x14]
	adds r4, r4, #4
	adds r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #5
	blt _022373FC
	adds r0, r6, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200D3F4
	adds r0, r6, #0
	adds r0, #0x8c
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200D3F4
	movs r5, #2
	movs r4, #0
	adds r7, r5, #0
_0223746C:
	ldr r0, [r6, #0x40]
	adds r1, r5, #0
	bl FUN_0200D6A4
	ldr r0, [r6, #0x54]
	adds r1, r7, #0
	bl FUN_0200D6A4
	ldr r0, [r6, #0x68]
	movs r1, #2
	bl FUN_0200D6A4
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, #5
	blt _0223746C
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02237490: .4byte 0x0002869F
_02237494: .4byte 0x00004705
_02237498: .4byte 0x00004706
_0223749C: .4byte 0x00006E7A
_022374A0: .4byte 0x02248C98
_022374A4: .4byte 0x0000726C
	thumb_func_end ov62_022371CC

	thumb_func_start ov62_022374A8
ov62_022374A8: @ 0x022374A8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r7, [r5, r0]
	movs r4, #0
	adds r6, r7, #0
_022374B6:
	ldr r1, _02237590 @ =0x00004705
	ldr r0, [r5, #0x1c]
	adds r1, r4, r1
	bl FUN_0200D070
	ldr r1, _02237590 @ =0x00004705
	ldr r0, [r5, #0x1c]
	adds r1, r4, r1
	bl FUN_0200D080
	ldr r0, [r6, #0x54]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, #5
	blt _022374B6
	ldr r0, [r5, #0x1c]
	ldr r1, _02237590 @ =0x00004705
	bl FUN_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _02237590 @ =0x00004705
	bl FUN_0200D0A0
	ldr r0, [r5, #0x1c]
	ldr r1, _02237594 @ =0x00004706
	bl FUN_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _02237594 @ =0x00004706
	bl FUN_0200D0A0
	movs r6, #0
	adds r4, r7, #0
_022374FC:
	ldr r0, [r4, #0x40]
	bl FUN_0200D0F4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #5
	blt _022374FC
	ldr r0, [r5, #0x1c]
	ldr r1, _02237598 @ =0x0002869F
	bl FUN_0200D070
	ldr r0, [r5, #0x1c]
	ldr r1, _02237598 @ =0x0002869F
	bl FUN_0200D080
	ldr r0, [r5, #0x1c]
	ldr r1, _02237598 @ =0x0002869F
	bl FUN_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _02237598 @ =0x0002869F
	bl FUN_0200D0A0
	movs r6, #0
	adds r4, r7, #0
_0223752E:
	ldr r0, [r4, #0x68]
	bl FUN_0200D0F4
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #5
	blt _0223752E
	ldr r0, [r5, #0x1c]
	ldr r1, _0223759C @ =0x00006E7A
	bl FUN_0200D070
	ldr r0, [r5, #0x1c]
	ldr r1, _0223759C @ =0x00006E7A
	bl FUN_0200D080
	ldr r0, [r5, #0x1c]
	ldr r1, _0223759C @ =0x00006E7A
	bl FUN_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _0223759C @ =0x00006E7A
	bl FUN_0200D0A0
	movs r4, #0
_0223755E:
	ldr r0, [r7, #0x7c]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r7, r7, #4
	cmp r4, #5
	blt _0223755E
	ldr r0, [r5, #0x1c]
	ldr r1, _022375A0 @ =0x0000726C
	bl FUN_0200D070
	ldr r0, [r5, #0x1c]
	ldr r1, _022375A0 @ =0x0000726C
	bl FUN_0200D080
	ldr r0, [r5, #0x1c]
	ldr r1, _022375A0 @ =0x0000726C
	bl FUN_0200D090
	ldr r0, [r5, #0x1c]
	ldr r1, _022375A0 @ =0x0000726C
	bl FUN_0200D0A0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237590: .4byte 0x00004705
_02237594: .4byte 0x00004706
_02237598: .4byte 0x0002869F
_0223759C: .4byte 0x00006E7A
_022375A0: .4byte 0x0000726C
	thumb_func_end ov62_022374A8

	thumb_func_start ov62_022375A4
ov62_022375A4: @ 0x022375A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	movs r6, #0x5a
	str r0, [sp]
	movs r4, #0
	adds r5, r0, #0
	lsls r6, r6, #2
_022375B8:
	ldr r0, [r5, #0x2c]
	adds r1, r6, #0
	adds r0, #0x14
	str r0, [r5, #0x2c]
	blx FUN_020E1F6C
	str r1, [r5, #0x2c]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _022375B8
	ldr r0, [sp]
	ldr r1, [sp]
	movs r2, #0
	adds r0, #0xd4
	adds r1, #0xd8
	adds r3, r2, #0
	bl ov62_022315E0
	ldr r5, [sp]
	movs r6, #0
	add r4, sp, #4
_022375E4:
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _022375F6
	ldr r0, [r5, #4]
	ldr r1, _022376C0 @ =0x3D4CCCCD
	blx FUN_020E0B00
	b _02237612
_022375F6:
	ldr r0, [r5, #0x40]
	movs r1, #0
	bl FUN_0200D6A4
	ldr r0, [r5, #0x54]
	movs r1, #0
	bl FUN_0200D6A4
	ldr r0, [r5, #0x68]
	movs r1, #0
	bl FUN_0200D6A4
	movs r0, #0xfe
	lsls r0, r0, #0x16
_02237612:
	str r0, [r5, #4]
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x18]
	adds r7, r1, #0
	muls r7, r0, r7
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x18]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0x6a
	lsls r0, r0, #0xc
	movs r1, #2
	subs r2, r0, r2
	lsls r1, r1, #0x12
	ldr r0, [r5, #0x68]
	adds r1, r7, r1
	bl FUN_0200D614
	add r1, sp, #4
	ldr r0, [r5, #0x68]
	adds r1, #2
	add r2, sp, #4
	bl FUN_0200D550
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x40]
	subs r1, #0x20
	subs r2, r2, #2
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x54]
	adds r1, #0x10
	subs r2, r2, #2
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x68]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x40]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x54]
	adds r2, r1, #0
	bl FUN_0200D6E8
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #5
	blt _022375E4
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _022376BA
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022376BA:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022376C0: .4byte 0x3D4CCCCD
	thumb_func_end ov62_022375A4

	thumb_func_start ov62_022376C4
ov62_022376C4: @ 0x022376C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	movs r6, #0x5a
	str r0, [sp]
	movs r4, #0
	adds r5, r0, #0
	lsls r6, r6, #2
_022376D8:
	ldr r0, [r5, #0x2c]
	adds r1, r6, #0
	adds r0, #0x14
	str r0, [r5, #0x2c]
	blx FUN_020E1F6C
	str r1, [r5, #0x2c]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _022376D8
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0x14
	bne _0223771E
	movs r6, #2
	ldr r4, [sp]
	movs r5, #0
	adds r7, r6, #0
_022376FE:
	ldr r0, [r4, #0x40]
	adds r1, r6, #0
	bl FUN_0200D6A4
	ldr r0, [r4, #0x54]
	adds r1, r7, #0
	bl FUN_0200D6A4
	ldr r0, [r4, #0x68]
	movs r1, #2
	bl FUN_0200D6A4
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #5
	blt _022376FE
_0223771E:
	ldr r0, [sp]
	ldr r1, [sp]
	adds r0, #0xd4
	adds r1, #0xd8
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	ldr r5, [sp]
	movs r6, #0
	add r4, sp, #4
_02237734:
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _02237748
	ldr r0, [r5, #4]
	ldr r1, _02237810 @ =0x3D4CCCCD
	blx FUN_020E1A9C
	str r0, [r5, #4]
	b _02237760
_02237748:
	ldr r0, [r5, #0x68]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r5, #0x40]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r5, #0x54]
	movs r1, #0
	bl FUN_0200D3F4
_02237760:
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D250
	ldr r1, [r5, #0x18]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #2
	lsls r0, r0, #0x12
	subs r7, r0, r2
	ldr r0, [r5, #0x2c]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D264
	ldr r1, [r5, #0x18]
	adds r2, r1, #0
	muls r2, r0, r2
	movs r0, #0x6a
	lsls r0, r0, #0xc
	subs r2, r0, r2
	ldr r0, [r5, #0x68]
	adds r1, r7, #0
	bl FUN_0200D614
	add r1, sp, #4
	ldr r0, [r5, #0x68]
	adds r1, #2
	add r2, sp, #4
	bl FUN_0200D550
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x40]
	subs r1, #0x20
	subs r2, r2, #2
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x54]
	adds r1, #0x10
	subs r2, r2, #2
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x68]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x40]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldr r1, [r5, #4]
	ldr r0, [r5, #0x54]
	adds r2, r1, #0
	bl FUN_0200D6E8
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #5
	blt _02237734
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _02237808
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02237808:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02237810: .4byte 0x3D4CCCCD
	thumb_func_end ov62_022376C4

	thumb_func_start ov62_02237814
ov62_02237814: @ 0x02237814
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, _02237880 @ =0x022497C0
	ldr r5, [r0, r1]
	movs r7, #0
	add r6, sp, #0
_02237822:
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r5, #0x68]
	lsls r1, r1, #0xc
	lsls r2, r2, #0xc
	bl FUN_0200D614
	add r1, sp, #0
	ldr r0, [r5, #0x68]
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x40]
	subs r1, #0x20
	subs r2, r2, #2
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r5, #0x54]
	adds r1, #0x10
	subs r2, r2, #2
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r7, #5
	blt _02237822
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02237880: .4byte 0x022497C0
	thumb_func_end ov62_02237814

	thumb_func_start ov62_02237884
ov62_02237884: @ 0x02237884
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02237926
	movs r0, #0x66
	movs r1, #0xdc
	bl FUN_02018144
	movs r1, #0
	movs r2, #0xdc
	adds r5, r0, #0
	blx FUN_020C4CF4
	movs r0, #0x86
	lsls r0, r0, #4
	str r5, [r4, r0]
	movs r0, #0
	str r0, [r5]
	adds r1, r5, #0
	adds r2, r0, #0
	movs r7, #0x40
	movs r6, #0x34
_022378B4:
	subs r3, r0, #2
	cmp r3, #1
	bhi _022378BE
	str r6, [r1, #0x18]
	b _022378C0
_022378BE:
	str r7, [r1, #0x18]
_022378C0:
	ldr r3, _02237AB8 @ =0x3E4CCCCD
	str r2, [r1, #0x2c]
	str r3, [r1, #4]
	adds r0, r0, #1
	adds r1, r1, #4
	adds r2, #0x48
	cmp r0, #5
	blt _022378B4
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd4
	adds r1, #0xd8
	movs r2, #0
	bl ov62_022315C8
	movs r0, #4
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xd4
	adds r1, #0xd8
	adds r3, r2, #0
	str r2, [sp, #8]
	bl ov62_02231560
	ldr r0, _02237ABC @ =0x00000561
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223792C
_02237926:
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r5, [r4, r0]
_0223792C:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02237934
	b _02237AA8
_02237934:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02237940: @ jump table
	.2byte _02237AA8 - _02237940 - 2 @ case 0
	.2byte _0223794A - _02237940 - 2 @ case 1
	.2byte _022379BE - _02237940 - 2 @ case 2
	.2byte _02237A1A - _02237940 - 2 @ case 3
	.2byte _02237A5E - _02237940 - 2 @ case 4
_0223794A:
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02237974
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0202D750
	movs r1, #0
	adds r2, r1, #0
	bl FUN_0202D230
	adds r1, r5, #0
	adds r1, #0x90
	str r0, [r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02237974:
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02237AB0
_022379BE:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02231454
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0223376C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	bl ov62_02234314
	movs r0, #6
	movs r1, #2
	bl FUN_02019060
	adds r0, r4, #0
	bl ov62_02236E14
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0x1c
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02237AB0
_02237A1A:
	adds r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _02237AB0
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02236D48
	adds r0, r4, #0
	bl ov62_022371CC
	adds r0, r4, #0
	bl ov62_0223712C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02237AB0
_02237A5E:
	adds r0, r4, #0
	bl ov62_022375A4
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r5, #0
	movs r2, #0
	adds r0, #0xd4
	adds r1, #0xd8
	adds r3, r2, #0
	bl ov62_022315E0
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02231664
	cmp r6, #0
	bne _02237A8E
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ov62_02237814
_02237A8E:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0x1c
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02237AB0
_02237AA8:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0222FB60
_02237AB0:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02237AB8: .4byte 0x3E4CCCCD
_02237ABC: .4byte 0x00000561
	thumb_func_end ov62_02237884

	thumb_func_start ov62_02237AC0
ov62_02237AC0: @ 0x02237AC0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	add r0, sp, #4
	add r1, sp, #0
	bl FUN_020227C0
	cmp r0, #0
	beq _02237AF4
	ldr r0, [sp, #4]
	cmp r0, #0x50
	bls _02237AF4
	cmp r0, #0xb0
	bhs _02237AF4
	ldr r0, [sp]
	cmp r0, #0x98
	bls _02237AF4
	cmp r0, #0xb0
	bhs _02237AF4
	ldr r0, _02237AFC @ =0x00000563
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #2
	bl ov62_0222FB60
_02237AF4:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	nop
_02237AFC: .4byte 0x00000563
	thumb_func_end ov62_02237AC0

	thumb_func_start ov62_02237B00
ov62_02237B00: @ 0x02237B00
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02237B12
	b _02237C76
_02237B12:
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02237B1E: @ jump table
	.2byte _02237B28 - _02237B1E - 2 @ case 0
	.2byte _02237B86 - _02237B1E - 2 @ case 1
	.2byte _02237B8A - _02237B1E - 2 @ case 2
	.2byte _02237BD2 - _02237B1E - 2 @ case 3
	.2byte _02237C16 - _02237B1E - 2 @ case 4
_02237B28:
	ldr r0, [r5]
	cmp r0, #0
	bne _02237B34
	ldr r0, _02237D14 @ =0x00000562
	bl FUN_02005748
_02237B34:
	ldr r0, [r5]
	cmp r0, #0x10
	beq _02237B3E
	adds r0, r0, #2
	str r0, [r5]
_02237B3E:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0x1c
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	ldr r2, _02237D18 @ =0x00004018
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	adds r0, r4, #0
	bl ov62_022376C4
	cmp r0, #0
	beq _02237B7A
	b _02237D0E
_02237B7A:
	movs r0, #0
	str r0, [r5]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02237D0E
_02237B86:
	adds r0, r0, #1
	str r0, [r4, #8]
_02237B8A:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022374A8
	adds r0, r4, #0
	bl ov62_02236DE8
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0
	str r0, [r5]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02237D0E
_02237BD2:
	movs r0, #1
	bl ov62_0222F824
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223146C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02237D0E
_02237C16:
	ldr r1, [r5]
	cmp r1, #0
	beq _02237C22
	subs r0, r1, #2
	str r0, [r5]
	b _02237D0E
_02237C22:
	adds r0, r0, #1
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0x1c
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02237D0E
_02237C76:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02237CDE
	movs r0, #8
	str r0, [sp]
	ldr r0, _02237D1C @ =0x04000050
	movs r1, #4
	movs r2, #0x12
	movs r3, #7
	blx FUN_020BF55C
	movs r0, #8
	str r0, [sp]
	ldr r0, _02237D20 @ =0x04001050
	movs r1, #4
	movs r2, #0x12
	movs r3, #7
	blx FUN_020BF55C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	bl ov62_022318E8
	adds r0, r5, #0
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r4, #0x10]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
	b _02237D0E
_02237CDE:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_02237D0E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02237D14: .4byte 0x00000562
_02237D18: .4byte 0x00004018
_02237D1C: .4byte 0x04000050
_02237D20: .4byte 0x04001050
	thumb_func_end ov62_02237B00

	thumb_func_start ov62_02237D24
ov62_02237D24: @ 0x02237D24
	push {r3, r4, r5, lr}
	movs r1, #0xba
	adds r5, r0, #0
	movs r0, #0x66
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0xba
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x86
	lsls r0, r0, #4
	str r4, [r5, r0]
	ldr r0, _02237DB4 @ =0x00000016
	movs r1, #2
	bl FUN_02006590
	movs r1, #0x86
	ldr r0, [r5, #0x24]
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r2, #0x48
	adds r0, r1, #4
	str r2, [r4, r0]
	adds r0, r1, #0
	movs r2, #0x10
	adds r0, #8
	str r2, [r4, r0]
	movs r0, #0x66
	adds r1, #0xc
	str r0, [r4, r1]
	bl FUN_02029C68
	movs r1, #0x8e
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x66
	bl FUN_02030A80
	movs r1, #0x25
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	bl ov62_022315C8
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0222FB60
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02237DB4: .4byte 0x00000016
	thumb_func_end ov62_02237D24

	thumb_func_start ov62_02237DB8
ov62_02237DB8: @ 0x02237DB8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02237DD4
	cmp r1, #1
	beq _02237E32
	cmp r1, #2
	beq _02237E86
	b _02237E9C
_02237DD4:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02237DE8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02237DE8:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02237F00
_02237E32:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #3
	movs r1, #2
	bl FUN_02019060
	movs r0, #4
	movs r1, #0
	bl FUN_02019060
	movs r0, #6
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #7
	movs r1, #2
	bl FUN_02019060
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02237F00
_02237E86:
	movs r1, #0
	bl ov62_0223376C
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02237F00
_02237E9C:
	bl ov62_02233790
	cmp r0, #0
	beq _02237F00
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02231454
	adds r0, r5, #0
	bl ov62_02239608
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
_02237F00:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02237DB8

	thumb_func_start ov62_02237F08
ov62_02237F08: @ 0x02237F08
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02237F22
	cmp r1, #1
	beq _02237FB2
	cmp r1, #2
	beq _02237FC8
	b _02238018
_02237F22:
	bl ov62_02239518
	adds r0, r5, #0
	movs r1, #0x23
	movs r2, #3
	bl ov62_022343B8
	adds r0, r5, #0
	movs r1, #0x25
	movs r2, #7
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0202A750
	movs r1, #0
	bl FUN_02029CA8
	movs r1, #0x8b
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02237F8A
	adds r0, r1, #0
	subs r0, #0x14
	ldr r1, [r4, r1]
	adds r0, r4, r0
	bl FUN_0225AF8C
	movs r1, #0x8a
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_0225B074
_02237F8A:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, _02238044 @ =ov62_022394D8
	adds r1, r5, #0
	bl FUN_02017798
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223801E
_02237FB2:
	movs r1, #0
	movs r3, #2
	ldr r0, [r5, #0x28]
	adds r2, r1, #0
	lsls r3, r3, #8
	bl FUN_02003070
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223801E
_02237FC8:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02237FFE
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	bl ov62_02239724
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02237FFE:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223801E
_02238018:
	movs r1, #3
	bl ov62_0222FB60
_0223801E:
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223803E
	bl FUN_020241B4
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0225AFF8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
_0223803E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02238044: .4byte ov62_022394D8
	thumb_func_end ov62_02237F08

	thumb_func_start ov62_02238048
ov62_02238048: @ 0x02238048
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _022380A8 @ =0x02248CB0
	bl FUN_02022760
	cmp r0, #0
	beq _0223806A
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
_0223806A:
	ldr r0, _022380AC @ =0x02248CB4
	bl FUN_02022760
	cmp r0, #0
	beq _02238082
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #4
	bl ov62_0222FB60
_02238082:
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022380A2
	bl FUN_020241B4
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0225AFF8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
_022380A2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022380A8: .4byte 0x02248CB0
_022380AC: .4byte 0x02248CB4
	thumb_func_end ov62_02238048

	thumb_func_start ov62_022380B0
ov62_022380B0: @ 0x022380B0
	push {r3, r4, r5, lr}
	sub sp, #8
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _022380CA
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_022380CA:
	ldr r0, [r4, #8]
	cmp r0, #6
	bls _022380D2
	b _02238316
_022380D2:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022380DE: @ jump table
	.2byte _022380EC - _022380DE - 2 @ case 0
	.2byte _0223815E - _022380DE - 2 @ case 1
	.2byte _022381D2 - _022380DE - 2 @ case 2
	.2byte _0223822A - _022380DE - 2 @ case 3
	.2byte _02238256 - _022380DE - 2 @ case 4
	.2byte _022382A6 - _022380DE - 2 @ case 5
	.2byte _022382C8 - _022380DE - 2 @ case 6
_022380EC:
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #4
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #2
	bl FUN_02019060
	movs r0, #7
	movs r1, #1
	bl FUN_02019060
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_020181C4
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02030A98
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	adds r0, r4, #0
	bl ov62_02239D0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_0223815E:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022381B8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022396E8
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	movs r2, #0
	ldr r0, [r4, #0x24]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019184
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022381B8:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _022383CA
_022381D2:
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r1, _022383D0 @ =0x0000011E
	adds r0, r4, #0
	bl ov62_02231AAC
	movs r0, #0x66
	bl FUN_02030A80
	movs r1, #0xb7
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0x83
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_02030AA0
	ldr r0, _022383D4 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_0223822A:
	adds r0, r4, #0
	bl ov62_0224112C
	movs r2, #0xb7
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #0xb0
	ldr r2, [r5, r2]
	bl FUN_0222B1B4
	cmp r0, #1
	beq _02238244
	b _022383CA
_02238244:
	movs r0, #0xb7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02030A98
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_02238256:
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _022383D4 @ =0x00000565
	bne _0223828A
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp, #4]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #0
	bl ov62_022348B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_0223828A:
	movs r1, #0
	bl FUN_020057A4
	adds r0, r4, #0
	movs r1, #0x2f
	bl ov62_02233704
	ldr r0, _022383D8 @ =0x0000055F
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_022382A6:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_022382C8:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r5, #8
	adds r0, r5, #0
	bl ov62_02231688
	adds r0, r4, #0
	bl ov62_0223146C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022383CA
_02238316:
	adds r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _022383CA
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223839A
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223834E
	bl FUN_0225B020
	adds r0, r4, #0
	bl ov62_0222F834
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	bl ov62_0223956C
_0223834E:
	adds r0, r4, #0
	bl ov62_022318E8
	adds r0, r5, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r4, #0x10]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, _022383DC @ =0x00000016
	bl FUN_02006514
	ldr r0, _022383E0 @ =ov62_0222F8E4
	adds r1, r4, #0
	bl FUN_02017798
	b _022383CA
_0223839A:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_022383CA:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_022383D0: .4byte 0x0000011E
_022383D4: .4byte 0x00000565
_022383D8: .4byte 0x0000055F
_022383DC: .4byte 0x00000016
_022383E0: .4byte ov62_0222F8E4
	thumb_func_end ov62_022380B0

	thumb_func_start ov62_022383E4
ov62_022383E4: @ 0x022383E4
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _022383FE
	cmp r1, #1
	beq _02238470
	cmp r1, #2
	beq _022384D0
	b _0223851E
_022383FE:
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #4
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #2
	bl FUN_02019060
	movs r0, #7
	movs r1, #1
	bl FUN_02019060
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02030A98
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	adds r0, r5, #0
	bl ov62_02239D0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022385E0
_02238470:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022384B6
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022396E8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_022384B6:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _022385E0
_022384D0:
	adds r4, #8
	adds r0, r4, #0
	bl ov62_02231688
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223146C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022385E0
_0223851E:
	bl ov62_02233790
	cmp r0, #0
	beq _022385E0
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022385B0
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223855C
	bl FUN_0225B020
	adds r0, r5, #0
	bl ov62_0222F834
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	bl ov62_0223956C
_0223855C:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, _022385E4 @ =0x00000016
	bl FUN_02006514
	ldr r0, _022385E8 @ =ov62_0222F8E4
	adds r1, r5, #0
	bl FUN_02017798
	b _022385E0
_022385B0:
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_022385E0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022385E4: .4byte 0x00000016
_022385E8: .4byte ov62_0222F8E4
	thumb_func_end ov62_022383E4

	thumb_func_start ov62_022385EC
ov62_022385EC: @ 0x022385EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	bne _02238604
	movs r1, #1
	bl ov62_0223958C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223860A
_02238604:
	movs r1, #3
	bl ov62_0222FB60
_0223860A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_022385EC

	thumb_func_start ov62_02238610
ov62_02238610: @ 0x02238610
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02238622
	b _02238768
_02238622:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223862E: @ jump table
	.2byte _02238638 - _0223862E - 2 @ case 0
	.2byte _0223867E - _0223862E - 2 @ case 1
	.2byte _022386C6 - _0223862E - 2 @ case 2
	.2byte _022386F2 - _0223862E - 2 @ case 3
	.2byte _0223870C - _0223862E - 2 @ case 4
_02238638:
	movs r1, #0x3c
	movs r2, #7
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02238788 @ =0x022491F0
	ldr r2, _0223878C @ =ov62_02239BAC
	movs r1, #9
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x1d
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238784
_0223867E:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022386AC
	adds r0, r4, #0
	movs r1, #0x72
	bl ov62_02231AAC
	adds r0, r4, #0
	bl ov62_02239BD8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022386AC:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02238784
_022386C6:
	movs r0, #0x1d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0202404C
	ldr r0, _02238790 @ =0x02248CAC
	bl FUN_02022760
	cmp r0, #0
	bne _022386E4
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02238784
_022386E4:
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238784
_022386F2:
	bl ov62_02239CE8
	movs r0, #0x1d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02024034
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223870C:
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0223872E
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02238784
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238784
_0223872E:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223874E
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223874E:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02238784
_02238768:
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0223877C
	adds r0, r4, #0
	movs r1, #4
	bl ov62_0222FB60
	b _02238784
_0223877C:
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
_02238784:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238788: .4byte 0x022491F0
_0223878C: .4byte ov62_02239BAC
_02238790: .4byte 0x02248CAC
	thumb_func_end ov62_02238610

	thumb_func_start ov62_02238794
ov62_02238794: @ 0x02238794
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _022387A8
	b _02238932
_022387A8:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022387B4: @ jump table
	.2byte _022387BE - _022387B4 - 2 @ case 0
	.2byte _022387D6 - _022387B4 - 2 @ case 1
	.2byte _02238878 - _022387B4 - 2 @ case 2
	.2byte _022388C4 - _022387B4 - 2 @ case 3
	.2byte _022388F8 - _022387B4 - 2 @ case 4
_022387BE:
	movs r1, #1
	bl ov62_0223958C
	adds r0, r4, #0
	movs r1, #0x3a
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238954
_022387D6:
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	bne _022387E8
	b _02238954
_022387E8:
	adds r0, r4, #0
	movs r1, #0x72
	bl ov62_02231AAC
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223895C @ =0x0000047C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022335B0
	movs r0, #0x7b
	lsls r0, r0, #2
	ldr r3, _02238960 @ =0x02248CDC
	adds r2, r5, r0
	movs r6, #5
_0223880C:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _0223880C
	ldr r0, [r3]
	movs r1, #0x7a
	lsls r1, r1, #2
	str r0, [r2]
	ldr r2, [r5, r1]
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	subs r0, #0x14
	ldr r0, [r5, r0]
	adds r1, #8
	str r0, [r5, r1]
	ldr r0, _02238964 @ =0x0000049C
	adds r0, r4, r0
	bl ov62_02233310
	movs r3, #0x1e
	ldr r0, _02238964 @ =0x0000049C
	lsls r3, r3, #4
	ldr r2, [r5, r3]
	adds r3, #0xc
	adds r0, r4, r0
	adds r1, r4, #0
	adds r3, r5, r3
	bl ov62_02232594
	ldr r1, _0223895C @ =0x0000047C
	adds r0, r4, r1
	adds r1, #0x20
	adds r1, r4, r1
	bl ov62_02233638
	ldr r0, _02238964 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	movs r2, #2
	bl ov62_0223331C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0x2e
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238954
_02238878:
	ldr r0, _0223895C @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233664
	ldr r1, _02238964 @ =0x0000049C
	adds r0, r4, r1
	subs r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov62_022332AC
	ldr r0, _02238964 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_02232F68
	cmp r0, #0
	beq _022388AC
	movs r1, #0x2e
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022388AC:
	ldr r0, _02238968 @ =0x02248CAC
	bl FUN_02022760
	cmp r0, #0
	beq _02238954
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238954
_022388C4:
	bl ov62_02231B8C
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223895C @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233600
	ldr r0, _02238964 @ =0x0000049C
	adds r0, r4, r0
	bl ov62_022332FC
	ldr r0, _02238964 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022334FC
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022388F8:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02238918
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02238918:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02238954
_02238932:
	adds r0, r4, #0
	bl ov62_02239B7C
	movs r0, #0x2e
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223894C
	adds r0, r4, #0
	movs r1, #6
	bl ov62_0222FB60
	b _02238954
_0223894C:
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
_02238954:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0223895C: .4byte 0x0000047C
_02238960: .4byte 0x02248CDC
_02238964: .4byte 0x0000049C
_02238968: .4byte 0x02248CAC
	thumb_func_end ov62_02238794

	thumb_func_start ov62_0223896C
ov62_0223896C: @ 0x0223896C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02238986
	cmp r1, #1
	beq _022389F2
	cmp r1, #2
	beq _02238A52
	b _02238AA0
_02238986:
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #4
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #2
	bl FUN_02019060
	movs r0, #7
	movs r1, #1
	bl FUN_02019060
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02030A98
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02238B62
_022389F2:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02238A38
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022396E8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02238A38:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02238B62
_02238A52:
	adds r4, #8
	adds r0, r4, #0
	bl ov62_02231688
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223146C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02238B62
_02238AA0:
	bl ov62_02233790
	cmp r0, #0
	beq _02238B62
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02238B32
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238ADE
	bl FUN_0225B020
	adds r0, r5, #0
	bl ov62_0222F834
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	bl ov62_0223956C
_02238ADE:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, _02238B68 @ =0x00000016
	bl FUN_02006514
	ldr r0, _02238B6C @ =ov62_0222F8E4
	adds r1, r5, #0
	bl FUN_02017798
	b _02238B62
_02238B32:
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_02238B62:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02238B68: .4byte 0x00000016
_02238B6C: .4byte ov62_0222F8E4
	thumb_func_end ov62_0223896C

	thumb_func_start ov62_02238B70
ov62_02238B70: @ 0x02238B70
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _02238B86
	movs r0, #0
	pop {r3, r4, r5, pc}
_02238B86:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02238B8E
	b _02238CCC
_02238B8E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02238B9A: @ jump table
	.2byte _02238BA4 - _02238B9A - 2 @ case 0
	.2byte _02238BE4 - _02238B9A - 2 @ case 1
	.2byte _02238C00 - _02238B9A - 2 @ case 2
	.2byte _02238C5E - _02238B9A - 2 @ case 3
	.2byte _02238C98 - _02238B9A - 2 @ case 4
_02238BA4:
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r1, _02238CF4 @ =0x0000011F
	adds r0, r4, #0
	bl ov62_02231AAC
	ldr r0, _02238CF8 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238CF0
_02238BE4:
	adds r0, r4, #0
	bl ov62_0224112C
	movs r1, #0x2e
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	bl FUN_0222B1FC
	cmp r0, #1
	bne _02238CF0
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238CF0
_02238C00:
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #0
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _02238CF8 @ =0x00000565
	bne _02238C4A
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #1
	bl ov62_022348B8
	movs r0, #0xb9
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r0, #0x6f
	str r1, [r4, #0xc]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
	b _02238CF0
_02238C4A:
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _02238CFC @ =0x0000055F
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238CF0
_02238C5E:
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02238CF0
_02238C98:
	movs r1, #0xb9
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _02238CB8
	adds r0, r1, #0
	movs r2, #0
	subs r0, #0xb0
	str r2, [r5, r0]
	subs r1, #0xb4
	str r2, [r5, r1]
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
	b _02238CF0
_02238CB8:
	ldr r1, _02238D00 @ =0x00000125
	adds r0, r4, #0
	bl ov62_02231AAC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	b _02238CF0
_02238CCC:
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x3c
	bge _02238CDE
	bl FUN_02022798
	cmp r0, #1
	bne _02238CF0
_02238CDE:
	movs r0, #0
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
_02238CF0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238CF4: .4byte 0x0000011F
_02238CF8: .4byte 0x00000565
_02238CFC: .4byte 0x0000055F
_02238D00: .4byte 0x00000125
	thumb_func_end ov62_02238B70

	thumb_func_start ov62_02238D04
ov62_02238D04: @ 0x02238D04
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02238D1E
	cmp r1, #1
	beq _02238DA8
	cmp r1, #2
	beq _02238DBE
	b _02238E26
_02238D1E:
	movs r1, #0x8d
	movs r0, #0
	lsls r1, r1, #2
	str r0, [r4, #0xc]
	ldr r0, [r4, r1]
	lsls r0, r0, #2
	adds r2, r4, r0
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r2, r0]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, #0x80
	bl FUN_0222AE80
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, #0x20
	ldr r1, [r4, r1]
	bl FUN_0225AF8C
	movs r1, #0x8a
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	bl FUN_0225B074
	bl ov62_02239518
	adds r0, r5, #0
	movs r1, #0x23
	movs r2, #3
	bl ov62_022343B8
	adds r0, r5, #0
	movs r1, #0x24
	movs r2, #7
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, _02238E50 @ =ov62_022394D8
	adds r1, r5, #0
	bl FUN_02017798
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02238E2C
_02238DA8:
	movs r1, #0
	movs r3, #2
	ldr r0, [r5, #0x28]
	adds r2, r1, #0
	lsls r3, r3, #8
	bl FUN_02003070
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02238E2C
_02238DBE:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02238E0C
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0225B074
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_02239854
	adds r0, r5, #0
	bl ov62_02239498
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02238E0C:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02238E2C
_02238E26:
	movs r1, #8
	bl ov62_0222FB60
_02238E2C:
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238E4C
	bl FUN_020241B4
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0225AFF8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
_02238E4C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02238E50: .4byte ov62_022394D8
	thumb_func_end ov62_02238D04

	thumb_func_start ov62_02238E54
ov62_02238E54: @ 0x02238E54
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _02238F14 @ =0x02248CAC
	bl FUN_02022760
	cmp r0, #0
	beq _02238E76
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #9
	bl ov62_0222FB60
_02238E76:
	ldr r0, _02238F18 @ =0x02248CB8
	bl FUN_02022760
	cmp r0, #0
	beq _02238E8E
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #0xa
	bl ov62_0222FB60
_02238E8E:
	ldr r0, _02238F1C @ =0x02248CBC
	bl FUN_02022760
	cmp r0, #0
	beq _02238EBC
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	cmp r0, #0
	beq _02238EA4
	b _02238EAA
_02238EA4:
	adds r0, r1, #0
	adds r0, #0xb0
	ldr r0, [r4, r0]
_02238EAA:
	subs r0, r0, #1
	str r0, [r4, r1]
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #0xb
	bl ov62_0222FB60
_02238EBC:
	ldr r0, _02238F20 @ =0x02248CC0
	bl FUN_02022760
	cmp r0, #0
	beq _02238EEE
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	adds r1, #0xb0
	ldr r1, [r4, r1]
	blx FUN_020E1F6C
	movs r0, #0x8d
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #0xb
	bl ov62_0222FB60
_02238EEE:
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238F0E
	bl FUN_020241B4
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0225AFF8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
_02238F0E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02238F14: .4byte 0x02248CAC
_02238F18: .4byte 0x02248CB8
_02238F1C: .4byte 0x02248CBC
_02238F20: .4byte 0x02248CC0
	thumb_func_end ov62_02238E54

	thumb_func_start ov62_02238F24
ov62_02238F24: @ 0x02238F24
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02238F3A
	cmp r1, #1
	beq _02238F80
	b _02239002
_02238F3A:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02238F58
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	adds r0, r5, #0
	bl ov62_02239D0C
	b _02238F72
_02238F58:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232394
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
_02238F72:
	adds r0, r5, #0
	bl ov62_02239424
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02239008
_02238F80:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02238FE8
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02238FC2
	bl FUN_0225B020
	adds r0, r5, #0
	bl ov62_0222F834
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #0x8a
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	bl ov62_0223956C
_02238FC2:
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02238FE8:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02239008
_02239002:
	movs r1, #3
	bl ov62_0222FB60
_02239008:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02238F24

	thumb_func_start ov62_0223900C
ov62_0223900C: @ 0x0223900C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #4
	bls _0223901E
	b _022391FE
_0223901E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223902A: @ jump table
	.2byte _02239034 - _0223902A - 2 @ case 0
	.2byte _0223906A - _0223902A - 2 @ case 1
	.2byte _022390CA - _0223902A - 2 @ case 2
	.2byte _02239186 - _0223902A - 2 @ case 3
	.2byte _022391A2 - _0223902A - 2 @ case 4
_02239034:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02239048
	bl ov62_02239D0C
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	b _02239062
_02239048:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232394
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
_02239062:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_0223906A:
	movs r2, #1
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223907C
	b _02239216
_0223907C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022390C2
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022390AA
	bl FUN_0225B020
	adds r0, r5, #0
	bl ov62_0222F834
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #0x8a
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	bl ov62_0223956C
_022390AA:
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
_022390C2:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_022390CA:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0223911A
	movs r1, #1
	bl ov62_02234540
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	lsls r0, r0, #2
	adds r2, r4, r0
	adds r0, r1, #0
	adds r0, #8
	adds r1, #0x1c
	ldr r0, [r2, r0]
	ldr r1, [r4, r1]
	bl FUN_0222AFC0
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232378
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl ov62_022323B8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #0x50
	movs r2, #3
	bl ov62_022343B8
	b _0223917E
_0223911A:
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	lsls r0, r0, #2
	adds r2, r4, r0
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r2, r0]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, #0x80
	bl FUN_0222AE80
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, #0x20
	ldr r1, [r4, r1]
	bl FUN_0225AF8C
	movs r1, #0x8a
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	bl FUN_0225B074
	bl ov62_02239518
	adds r0, r5, #0
	movs r1, #0x23
	movs r2, #3
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
_0223917E:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_02239186:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _0223919A
	movs r1, #0
	movs r3, #2
	ldr r0, [r5, #0x28]
	adds r2, r1, #0
	lsls r3, r3, #8
	bl FUN_02003070
_0223919A:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_022391A2:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _02239216
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022391CE
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #1
	bl ov62_022323B8
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	b _022391F6
_022391CE:
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_02239854
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0225B074
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
_022391F6:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02239216
_022391FE:
	ldr r1, [r4, #0xc]
	movs r0, #1
	eors r1, r0
	str r1, [r4, #0xc]
	adds r0, r5, #0
	adds r1, #0x79
	bl ov62_02239440
	adds r0, r5, #0
	movs r1, #8
	bl ov62_0222FB60
_02239216:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223900C

	thumb_func_start ov62_0223921C
ov62_0223921C: @ 0x0223921C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #4
	bls _0223922E
	b _02239416
_0223922E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223923A: @ jump table
	.2byte _02239244 - _0223923A - 2 @ case 0
	.2byte _0223927A - _0223923A - 2 @ case 1
	.2byte _022392DA - _0223923A - 2 @ case 2
	.2byte _0223939E - _0223923A - 2 @ case 3
	.2byte _022393BA - _0223923A - 2 @ case 4
_02239244:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02239258
	bl ov62_02239D0C
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	b _02239272
_02239258:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232394
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
_02239272:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_0223927A:
	movs r2, #1
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223928C
	b _0223941E
_0223928C:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022392D2
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022392BA
	bl FUN_0225B020
	adds r0, r5, #0
	bl ov62_0222F834
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #0x8a
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	bl ov62_0223956C
_022392BA:
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
_022392D2:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_022392DA:
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0223934C
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	lsls r0, r0, #2
	adds r2, r4, r0
	adds r0, r1, #0
	adds r0, #8
	ldr r0, [r2, r0]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, #0x80
	bl FUN_0222AE80
	movs r1, #0x86
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, #0x20
	ldr r1, [r4, r1]
	bl FUN_0225AF8C
	movs r1, #0x8a
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0
	bl FUN_0225B074
	bl ov62_02239518
	adds r0, r5, #0
	movs r1, #0x23
	movs r2, #3
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	b _0223938E
_0223934C:
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	lsls r0, r0, #2
	adds r2, r4, r0
	adds r0, r1, #0
	adds r0, #8
	adds r1, #0x1c
	ldr r0, [r2, r0]
	ldr r1, [r4, r1]
	bl FUN_0222AFC0
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232378
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl ov62_022323B8
	adds r0, r5, #0
	movs r1, #0x50
	movs r2, #3
	bl ov62_022343B8
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
_0223938E:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_0223939E:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022393B2
	movs r1, #0
	movs r3, #2
	ldr r0, [r5, #0x28]
	adds r2, r1, #0
	lsls r3, r3, #8
	bl FUN_02003070
_022393B2:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_022393BA:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223941E
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _022393FA
	movs r1, #0x8d
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_02239854
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0225B074
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	b _0223940E
_022393FA:
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #1
	bl ov62_022323B8
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
_0223940E:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223941E
_02239416:
	adds r0, r5, #0
	movs r1, #8
	bl ov62_0222FB60
_0223941E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223921C

	thumb_func_start ov62_02239424
ov62_02239424: @ 0x02239424
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	adds r0, r4, #0
	adds r0, #0xd0
	bl FUN_0201ACF4
	adds r4, #0xd0
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02239424

	thumb_func_start ov62_02239440
ov62_02239440: @ 0x02239440
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r6, r1, #0
	adds r4, #0xd0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	adds r1, r6, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239494 @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02239494: .4byte 0x000F0D00
	thumb_func_end ov62_02239440

	thumb_func_start ov62_02239498
ov62_02239498: @ 0x02239498
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r4, #0xd0
	adds r0, r4, #0
	bl FUN_0201A7A0
	movs r0, #3
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, #0
	movs r2, #6
	movs r3, #8
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0x79
	bl ov62_02239440
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov62_02239498

	thumb_func_start ov62_022394D8
ov62_022394D8: @ 0x022394D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022394F0
	bl FUN_0225B06C
_022394F0:
	bl FUN_0201DCAC
	ldr r0, [r4, #0x28]
	bl FUN_02003694
	ldr r0, [r4, #0x24]
	bl FUN_0201C2B8
	ldr r3, _02239510 @ =0x027E0000
	ldr r1, _02239514 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02239510: .4byte 0x027E0000
_02239514: .4byte 0x00003FF8
	thumb_func_end ov62_022394D8

	thumb_func_start ov62_02239518
ov62_02239518: @ 0x02239518
	push {r4, r5}
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _02239560 @ =0xFFFF1FFF
	adds r4, r0, #0
	ands r2, r1
	lsrs r1, r0, #0xd
	orrs r1, r2
	str r1, [r0]
	adds r4, #0x48
	ldrh r3, [r4]
	movs r2, #0x3f
	movs r1, #0x1f
	bics r3, r2
	orrs r1, r3
	movs r3, #0x20
	orrs r1, r3
	strh r1, [r4]
	adds r4, r0, #0
	adds r4, #0x4a
	ldrh r5, [r4]
	movs r1, #0x1e
	bics r5, r2
	orrs r1, r5
	orrs r1, r3
	strh r1, [r4]
	adds r1, r0, #0
	ldr r2, _02239564 @ =0x000048B8
	adds r1, #0x40
	strh r2, [r1]
	ldr r1, _02239568 @ =0x00001090
	adds r0, #0x44
	strh r1, [r0]
	pop {r4, r5}
	bx lr
	.align 2, 0
_02239560: .4byte 0xFFFF1FFF
_02239564: .4byte 0x000048B8
_02239568: .4byte 0x00001090
	thumb_func_end ov62_02239518

	thumb_func_start ov62_0223956C
ov62_0223956C: @ 0x0223956C
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _02239584 @ =0xFFFF1FFF
	ands r1, r0
	str r1, [r2]
	ldr r2, _02239588 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	bx lr
	nop
_02239584: .4byte 0xFFFF1FFF
_02239588: .4byte 0x04001000
	thumb_func_end ov62_0223956C

	thumb_func_start ov62_0223958C
ov62_0223958C: @ 0x0223958C
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _022395C0
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	movs r2, #0xe8
	bl FUN_0200D4C4
	b _022395E6
_022395C0:
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_020129D0
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x50
	movs r2, #0xe8
	bl FUN_0200D4C4
_022395E6:
	movs r0, #0x1a
	lsls r0, r0, #4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x6f
	lsls r0, r0, #2
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	pop {r4, pc}
	thumb_func_end ov62_0223958C

	thumb_func_start ov62_02239608
ov62_02239608: @ 0x02239608
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	movs r1, #2
	bl ov62_022312CC
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	movs r1, #0x67
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	movs r1, #0x6e
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x20
	adds r0, r4, r1
	adds r1, r5, #0
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	movs r0, #0x6d
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	movs r0, #0x66
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x6d
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #0x35
	bl ov62_0223124C
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #4
	bl FUN_0200D364
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	movs r2, #0xe8
	bl FUN_0200D4C4
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0xe8
	bl FUN_0200D4C4
	movs r0, #0x1a
	lsls r0, r0, #4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x6f
	lsls r0, r0, #2
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223958C
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02239608

	thumb_func_start ov62_022396E8
ov62_022396E8: @ 0x022396E8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r0, #0x66
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov62_022312B0
	movs r0, #0x6d
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov62_022312B0
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	movs r0, #0x6e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	adds r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_022396E8

	thumb_func_start ov62_02239724
ov62_02239724: @ 0x02239724
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r6, [r5, r0]
	adds r0, r6, #0
	adds r0, #0x10
	bl FUN_0201A7CC
	cmp r0, #1
	bne _0223973E
	b _0223984A
_0223973E:
	adds r0, r6, #0
	str r0, [sp, #0x20]
	adds r0, #0x10
	str r0, [sp, #0x20]
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r3, #0x10
	str r3, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x4b
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x20]
	movs r2, #2
	bl FUN_0201A7E8
	ldr r0, [sp, #0x20]
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x66
	bl ov62_02231690
	str r0, [sp, #0x18]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r7, r0, #0
	ldr r0, [r5, #0x48]
	movs r1, #0x38
	bl FUN_0200B1EC
	str r0, [sp, #0x1c]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r1, r4, #0
	bl FUN_0202A1A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_022349A8
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0202A1F4
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [sp, #0x18]
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r0, [sp, #0x18]
	movs r1, #1
	adds r2, r5, #0
	bl FUN_0200BE48
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	adds r1, r7, #0
	bl FUN_0200C388
	adds r0, r7, #0
	bl FUN_02023C5C
	movs r5, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bls _0223982C
	adds r6, r5, #0
_022397F0:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl FUN_02023C9C
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x80
	subs r0, r1, r0
	lsrs r3, r0, #1
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239850 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r2, r4, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	adds r5, r5, #1
	adds r6, #0x10
	cmp r5, r0
	blo _022397F0
_0223982C:
	ldr r0, [sp, #0x20]
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	bl FUN_0200B3F0
_0223984A:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02239850: .4byte 0x000F0D00
	thumb_func_end ov62_02239724

	thumb_func_start ov62_02239854
ov62_02239854: @ 0x02239854
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r6, [r5, r0]
	adds r0, r6, #0
	adds r0, #0x10
	bl FUN_0201A7CC
	cmp r0, #1
	bne _0223986E
	b _0223997A
_0223986E:
	adds r0, r6, #0
	str r0, [sp, #0x20]
	adds r0, #0x10
	str r0, [sp, #0x20]
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r3, #0x10
	str r3, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x4b
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	ldr r1, [sp, #0x20]
	movs r2, #2
	bl FUN_0201A7E8
	ldr r0, [sp, #0x20]
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x66
	bl ov62_02231690
	str r0, [sp, #0x18]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r7, r0, #0
	ldr r0, [r5, #0x48]
	movs r1, #0x38
	bl FUN_0200B1EC
	str r0, [sp, #0x1c]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r1, r4, #0
	bl FUN_0202A1A0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_022349A8
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0202A1F4
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [sp, #0x18]
	adds r2, r4, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r0, [sp, #0x18]
	movs r1, #1
	adds r2, r5, #0
	bl FUN_0200BE48
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	adds r1, r7, #0
	bl FUN_0200C388
	adds r0, r7, #0
	bl FUN_02023C5C
	movs r5, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bls _0223995C
	adds r6, r5, #0
_02239920:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl FUN_02023C9C
	movs r0, #0
	adds r1, r4, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	movs r1, #0x80
	subs r0, r1, r0
	lsrs r3, r0, #1
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239980 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r2, r4, #0
	bl FUN_0201D78C
	ldr r0, [sp, #0x14]
	adds r5, r5, #1
	adds r6, #0x10
	cmp r5, r0
	blo _02239920
_0223995C:
	ldr r0, [sp, #0x20]
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	bl FUN_0200B3F0
_0223997A:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02239980: .4byte 0x000F0D00
	thumb_func_end ov62_02239854

	thumb_func_start ov62_02239984
ov62_02239984: @ 0x02239984
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r1, #1
	ldr r2, _02239A04 @ =0x022497D4
	lsls r0, r0, #1
	ldrh r4, [r2, r0]
	lsls r0, r1, #1
	ldrh r6, [r2, r0]
	ldr r1, [sp, #8]
	movs r0, #0x66
	add r2, sp, #0xc
	bl ov62_02231948
	str r0, [sp, #4]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02027560
	str r0, [sp]
	adds r7, r6, #0
	cmp r6, r4
	bge _022399D6
	ldr r0, [sp, #4]
	lsls r1, r6, #1
	adds r5, r0, r1
_022399BE:
	ldrh r1, [r5]
	ldr r0, [sp]
	bl FUN_02026FE8
	cmp r0, #0
	bne _022399CE
	ldr r0, _02239A08 @ =0x0000FFFF
	strh r0, [r5]
_022399CE:
	adds r7, r7, #1
	adds r5, r5, #2
	cmp r7, r4
	blt _022399BE
_022399D6:
	cmp r6, r4
	bge _022399F6
	ldr r0, [sp, #4]
	lsls r1, r6, #1
	adds r2, r0, r1
	ldr r0, _02239A08 @ =0x0000FFFF
_022399E2:
	ldrh r1, [r2]
	cmp r1, r0
	beq _022399EE
	movs r0, #1
	str r0, [sp, #8]
	b _022399F6
_022399EE:
	adds r6, r6, #1
	adds r2, r2, #2
	cmp r6, r4
	blt _022399E2
_022399F6:
	ldr r0, [sp, #4]
	bl FUN_020181C4
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02239A04: .4byte 0x022497D4
_02239A08: .4byte 0x0000FFFF
	thumb_func_end ov62_02239984

	thumb_func_start ov62_02239A0C
ov62_02239A0C: @ 0x02239A0C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r0, r1, #1
	ldr r2, _02239B74 @ =0x022497D4
	lsls r0, r0, #1
	ldrh r6, [r2, r0]
	lsls r0, r1, #1
	ldrh r0, [r2, r0]
	movs r2, #0x76
	lsls r2, r2, #2
	str r0, [sp]
	movs r0, #0x66
	movs r1, #0
	adds r2, r4, r2
	bl ov62_02231948
	movs r2, #0x77
	lsls r2, r2, #2
	str r0, [r4, r2]
	subs r2, r2, #4
	movs r0, #0x66
	movs r1, #0
	adds r2, r4, r2
	bl ov62_02231948
	str r0, [sp, #8]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02027560
	str r0, [sp, #4]
	movs r0, #0x75
	ldr r7, [sp]
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r7, #0
	cmp r0, r6
	bge _02239A92
	lsls r1, r0, #1
	ldr r0, [sp, #8]
	adds r5, r0, r1
_02239A6A:
	ldrh r1, [r5]
	ldr r0, [sp, #4]
	bl FUN_02026FE8
	cmp r0, #0
	bne _02239A7C
	ldr r0, _02239B78 @ =0x0000FFFF
	strh r0, [r5]
	b _02239A8A
_02239A7C:
	movs r0, #0x75
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r0, #1
	movs r0, #0x75
	lsls r0, r0, #2
	str r1, [r4, r0]
_02239A8A:
	adds r7, r7, #1
	adds r5, r5, #2
	cmp r7, r6
	blt _02239A6A
_02239A92:
	ldr r1, [sp]
	movs r0, #0
	cmp r1, r6
	bge _02239AC2
	lsls r2, r1, #1
	ldr r1, [sp, #8]
	ldr r7, _02239B78 @ =0x0000FFFF
	adds r2, r1, r2
	adds r3, r0, #0
_02239AA4:
	ldrh r1, [r2]
	cmp r1, r7
	beq _02239AB6
	movs r5, #0x77
	lsls r5, r5, #2
	ldr r5, [r4, r5]
	adds r0, r0, #1
	strh r1, [r5, r3]
	adds r3, r3, #2
_02239AB6:
	ldr r1, [sp]
	adds r2, r2, #2
	adds r1, r1, #1
	str r1, [sp]
	cmp r1, r6
	blt _02239AA4
_02239AC2:
	movs r1, #0x76
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	bge _02239AEA
	movs r7, #0x77
	ldr r1, [sp, #8]
	lsls r6, r0, #1
	lsls r7, r7, #2
	adds r5, r1, r6
	subs r1, r7, #4
_02239AD8:
	ldrh r3, [r5]
	ldr r2, [r4, r7]
	adds r0, r0, #1
	strh r3, [r2, r6]
	ldr r2, [r4, r1]
	adds r5, r5, #2
	adds r6, r6, #2
	cmp r0, r2
	blt _02239AD8
_02239AEA:
	ldr r0, [sp, #8]
	bl FUN_020181C4
	movs r1, #0x75
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r0, #0x66
	lsls r1, r1, #4
	bl FUN_02018144
	movs r2, #0x7a
	lsls r2, r2, #2
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	subs r2, #0x14
	ldr r2, [r4, r2]
	movs r1, #0
	lsls r2, r2, #4
	blx FUN_020C4CF4
	movs r0, #0x75
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r5, #0
	cmp r0, #0
	ble _02239B54
	movs r7, #0x7a
	lsls r7, r7, #2
	adds r0, r7, #0
	adds r2, r5, #0
	adds r3, r5, #0
	subs r0, #0x14
_02239B2A:
	movs r1, #0x77
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r6, #0x7a
	lsls r6, r6, #2
	ldrh r1, [r1, r2]
	ldr r6, [r4, r6]
	adds r5, r5, #1
	str r1, [r6, r3]
	movs r1, #0x77
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	ldr r6, [r4, r7]
	ldrh r1, [r1, r2]
	adds r6, r6, r3
	adds r2, r2, #2
	str r1, [r6, #4]
	ldr r1, [r4, r0]
	adds r3, #0x10
	cmp r5, r1
	blt _02239B2A
_02239B54:
	movs r2, #0x67
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x66
	bl FUN_0200B144
	movs r1, #0x1e
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r2, #1
	adds r0, r1, #4
	str r2, [r4, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02239B74: .4byte 0x022497D4
_02239B78: .4byte 0x0000FFFF
	thumb_func_end ov62_02239A0C

	thumb_func_start ov62_02239B7C
ov62_02239B7C: @ 0x02239B7C
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r0, #0x1e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0200B190
	movs r0, #0x7a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x77
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x79
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov62_02239B7C

	thumb_func_start ov62_02239BAC
ov62_02239BAC: @ 0x02239BAC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #0
	bne _02239BD2
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02239984
	cmp r0, #0
	bne _02239BCA
	ldr r0, _02239BD4 @ =0x00000564
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_02239BCA:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02239A0C
_02239BD2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02239BD4: .4byte 0x00000564
	thumb_func_end ov62_02239BAC

	thumb_func_start ov62_02239BD8
ov62_02239BD8: @ 0x02239BD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x14]
	movs r0, #1
	str r0, [sp, #0x28]
	movs r1, #0x86
	ldr r0, [sp, #0x14]
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	ldr r5, _02239CDC @ =0x022491F0
	movs r7, #0
	adds r4, #0xd0
_02239BF0:
	ldrb r0, [r5, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	ldrb r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	ldrb r0, [r5, #3]
	lsrs r1, r0, #3
	ldr r0, [sp, #0x24]
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #1]
	lsrs r1, r0, #3
	ldr r0, [sp, #0x20]
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldr r0, [sp, #0x20]
	adds r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	movs r2, #6
	str r0, [sp, #4]
	str r6, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x24]
	ldr r0, [r0, #0x24]
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	ldr r0, [r0, #0x48]
	adds r1, #0x44
	bl FUN_0200B1EC
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	adds r0, r4, #0
	bl ov62_0223429C
	lsls r1, r6, #3
	subs r1, #0x10
	str r0, [sp, #0x30]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	bl ov62_02239984
	cmp r0, #1
	bne _02239C9A
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239CE0 @ =0x000F0D00
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201D78C
	b _02239CB6
_02239C9A:
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02239CE4 @ =0x000C0B00
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201D78C
_02239CB6:
	adds r0, r4, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x2c]
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	adds r7, r7, #1
	adds r1, r0, #0
	ldr r0, [sp, #0x28]
	muls r1, r6, r1
	adds r0, r0, r1
	str r0, [sp, #0x28]
	adds r4, #0x10
	adds r5, r5, #4
	cmp r7, #9
	blo _02239BF0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02239CDC: .4byte 0x022491F0
_02239CE0: .4byte 0x000F0D00
_02239CE4: .4byte 0x000C0B00
	thumb_func_end ov62_02239BD8

	thumb_func_start ov62_02239CE8
ov62_02239CE8: @ 0x02239CE8
	push {r3, r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r5, [r0, r1]
	movs r4, #0
	adds r5, #0xd0
_02239CF4:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #9
	blo _02239CF4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02239CE8

	thumb_func_start ov62_02239D0C
ov62_02239D0C: @ 0x02239D0C
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A7CC
	cmp r0, #1
	bne _02239D30
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201ACF4
	adds r4, #0x10
	adds r0, r4, #0
	bl FUN_0201A8FC
_02239D30:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02239D0C

	thumb_func_start ov62_02239D34
ov62_02239D34: @ 0x02239D34
	bx lr
	.align 2, 0
	thumb_func_end ov62_02239D34

	thumb_func_start ov62_02239D38
ov62_02239D38: @ 0x02239D38
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r1, [r1]
	ldr r4, [r0, r2]
	cmp r1, #1
	beq _02239D5C
	bl ov62_0224112C
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r1, r4, r1
	movs r2, #5
	bl FUN_0222BC90
	movs r1, #0xb9
	lsls r1, r1, #2
	str r0, [r4, r1]
_02239D5C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02239D38

	thumb_func_start ov62_02239D60
ov62_02239D60: @ 0x02239D60
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r0, #0x66
	bl FUN_02030A80
	ldr r1, _02239D88 @ =0x00002ED8
	str r0, [r4, r1]
	lsls r0, r5, #2
	adds r2, r4, r0
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	ldr r1, [r4, r1]
	bl FUN_0222AFC0
	pop {r3, r4, r5, pc}
	nop
_02239D88: .4byte 0x00002ED8
	thumb_func_end ov62_02239D60

	thumb_func_start ov62_02239D8C
ov62_02239D8C: @ 0x02239D8C
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _02239D9C @ =0x00002ED8
	ldr r3, _02239DA0 @ =FUN_02030A98
	ldr r0, [r1, r0]
	bx r3
	nop
_02239D9C: .4byte 0x00002ED8
_02239DA0: .4byte FUN_02030A98
	thumb_func_end ov62_02239D8C

	thumb_func_start ov62_02239DA4
ov62_02239DA4: @ 0x02239DA4
	movs r2, #0
_02239DA6:
	ldrh r1, [r0, #0x28]
	cmp r1, #0
	beq _02239DB0
	movs r0, #1
	bx lr
_02239DB0:
	adds r2, r2, #1
	adds r0, r0, #2
	cmp r2, #0x1e
	blt _02239DA6
	movs r0, #0
	bx lr
	thumb_func_end ov62_02239DA4

	thumb_func_start ov62_02239DBC
ov62_02239DBC: @ 0x02239DBC
	push {r3, r4}
	movs r1, #0x1b
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	adds r2, r4, #0
	cmp r4, #0x1e
	bge _02239DE6
	lsls r1, r4, #1
	adds r3, r0, r1
_02239DCE:
	ldrh r1, [r3, #0x2c]
	cmp r1, #0
	beq _02239DDE
	movs r1, #0x1b
	lsls r1, r1, #4
	str r2, [r0, r1]
	pop {r3, r4}
	bx lr
_02239DDE:
	adds r2, r2, #1
	adds r3, r3, #2
	cmp r2, #0x1e
	blt _02239DCE
_02239DE6:
	movs r3, #0
	cmp r4, #0
	ble _02239E06
	adds r2, r0, #0
_02239DEE:
	ldrh r1, [r2, #0x2c]
	cmp r1, #0
	beq _02239DFE
	movs r1, #0x1b
	lsls r1, r1, #4
	str r3, [r0, r1]
	pop {r3, r4}
	bx lr
_02239DFE:
	adds r3, r3, #1
	adds r2, r2, #2
	cmp r3, r4
	blt _02239DEE
_02239E06:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov62_02239DBC

	thumb_func_start ov62_02239E0C
ov62_02239E0C: @ 0x02239E0C
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r5, r2]
	cmp r0, #3
	bhi _02239EBA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02239E26: @ jump table
	.2byte _02239E2E - _02239E26 - 2 @ case 0
	.2byte _02239E54 - _02239E26 - 2 @ case 1
	.2byte _02239E80 - _02239E26 - 2 @ case 2
	.2byte _02239E94 - _02239E26 - 2 @ case 3
_02239E2E:
	cmp r1, #2
	bne _02239EBA
	adds r0, r5, #0
	bl ov62_02234520
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	ble _02239E46
	subs r1, r1, #1
	b _02239E48
_02239E46:
	movs r1, #0x11
_02239E48:
	str r1, [r4, r0]
	adds r0, r5, #0
	movs r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239E54:
	cmp r1, #2
	bne _02239EBA
	adds r0, r5, #0
	bl ov62_02234520
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	movs r1, #0x12
	blx FUN_020E1F6C
	movs r0, #0x1a
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r5, #0
	movs r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239E80:
	cmp r1, #0
	bne _02239EBA
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #9
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239E94:
	cmp r1, #0
	bne _02239EBA
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r4, #4
	bl ov62_02239DA4
	cmp r0, #0
	beq _02239EB2
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239EB2:
	ldr r1, _02239EBC @ =0x0000010F
	adds r0, r5, #0
	bl ov62_0223AC0C
_02239EBA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02239EBC: .4byte 0x0000010F
	thumb_func_end ov62_02239E0C

	thumb_func_start ov62_02239EC0
ov62_02239EC0: @ 0x02239EC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x86
	adds r4, r2, #0
	lsls r0, r0, #4
	ldr r6, [r4, r0]
	cmp r1, #0
	bne _02239EF8
	cmp r5, #6
	beq _02239EEA
	adds r0, r4, #0
	bl ov62_02234520
	movs r0, #0xe
	lsls r0, r0, #6
	str r5, [r6, r0]
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
	pop {r4, r5, r6, pc}
_02239EEA:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
_02239EF8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_02239EC0

	thumb_func_start ov62_02239EFC
ov62_02239EFC: @ 0x02239EFC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x86
	adds r4, r2, #0
	lsls r0, r0, #4
	ldr r6, [r4, r0]
	cmp r1, #0
	bne _02239F34
	cmp r5, #6
	beq _02239F26
	adds r0, r4, #0
	bl ov62_02234520
	movs r0, #0xe
	lsls r0, r0, #6
	str r5, [r6, r0]
	adds r0, r4, #0
	movs r1, #4
	bl ov62_0222FB60
	pop {r4, r5, r6, pc}
_02239F26:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0xc
	bl ov62_0222FB60
_02239F34:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_02239EFC

	thumb_func_start ov62_02239F38
ov62_02239F38: @ 0x02239F38
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _02239F92
	cmp r0, #0
	beq _02239F52
	cmp r0, #1
	beq _02239F74
	cmp r0, #2
	beq _02239F84
_02239F52:
	adds r0, r5, #0
	bl ov62_02234520
	ldr r0, _02239F94 @ =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02239F6A
	adds r0, r5, #0
	movs r1, #7
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239F6A:
	adds r0, r5, #0
	movs r1, #8
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239F74:
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #9
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02239F84:
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #6
	bl ov62_0222FB60
_02239F92:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02239F94: .4byte 0x00002F64
	thumb_func_end ov62_02239F38

	thumb_func_start ov62_02239F98
ov62_02239F98: @ 0x02239F98
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _0223A0A0
	cmp r0, #0
	beq _02239FB0
	cmp r0, #1
	beq _0223A078
	pop {r3, r4, r5, pc}
_02239FB0:
	adds r0, r5, #0
	bl ov62_02234520
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	movs r1, #0x1e
	blx FUN_020E1F6C
	movs r0, #0x1b
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov62_02239DBC
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #6
	blx FUN_020E1F6C
	ldr r0, _0223A0A4 @ =0x00002F68
	str r1, [r4, r0]
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #6
	blx FUN_020E1F6C
	ldr r2, _0223A0A8 @ =0x00002F6C
	str r0, [r4, r2]
	subs r1, r2, #4
	ldr r3, [r4, r1]
	movs r1, #0x18
	muls r1, r3, r1
	ldr r3, [r4, r2]
	movs r2, #0x16
	movs r0, #0x6f
	muls r2, r3, r2
	lsls r0, r0, #4
	adds r1, #0x6e
	adds r2, #0x34
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0208B8B8
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223B140
	adds r0, r5, #0
	bl ov62_0223B050
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r1, #0x1b
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_0223ADC0
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r2, [r4, r0]
	lsls r1, r2, #1
	adds r1, r4, r1
	ldrh r1, [r1, #0x2c]
	cmp r1, #0
	beq _0223A0A0
	subs r0, #0x58
	movs r1, #1
	ldr r0, [r4, r0]
	lsls r1, r2
	bl ov62_0223ADB0
	cmp r0, #1
	beq _0223A0A0
	movs r1, #0x1b
	lsls r1, r1, #4
	ldr r2, [r4, r1]
	subs r1, #0x54
	lsls r0, r2, #1
	adds r0, r4, r0
	adds r2, r4, r2
	ldrh r0, [r0, #0x2c]
	ldrb r1, [r2, r1]
	bl FUN_02005844
	pop {r3, r4, r5, pc}
_0223A078:
	adds r0, r5, #0
	bl ov62_02234520
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	adds r0, r5, #0
	movs r1, #0xb
	bl ov62_0222FB60
_0223A0A0:
	pop {r3, r4, r5, pc}
	nop
_0223A0A4: .4byte 0x00002F68
_0223A0A8: .4byte 0x00002F6C
	thumb_func_end ov62_02239F98

	thumb_func_start ov62_0223A0AC
ov62_0223A0AC: @ 0x0223A0AC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	movs r1, #2
	bl ov62_0223131C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xe8
	str r0, [sp, #4]
	movs r0, #0x24
	str r0, [sp, #8]
	subs r0, #0x2c
	str r0, [sp, #0xc]
	movs r0, #0
	movs r1, #0xd2
	str r0, [sp, #0x10]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, r1
	movs r2, #2
	movs r3, #3
	bl ov62_0223454C
	movs r0, #0x80
	str r0, [sp]
	movs r0, #0xe8
	str r0, [sp, #4]
	movs r0, #0x24
	str r0, [sp, #8]
	subs r0, #0x2c
	str r0, [sp, #0xc]
	movs r0, #1
	movs r1, #0xd9
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, r1
	movs r2, #2
	movs r3, #0x35
	bl ov62_0223454C
	add sp, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223A0AC

	thumb_func_start ov62_0223A110
ov62_0223A110: @ 0x0223A110
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov62_022345A8
	movs r0, #0xd9
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov62_022345A8
	adds r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223A110

	thumb_func_start ov62_0223A138
ov62_0223A138: @ 0x0223A138
	movs r2, #0
	adds r3, r0, #0
_0223A13C:
	ldrh r1, [r3, #0x2c]
	cmp r1, #0
	beq _0223A14A
	movs r1, #0x1b
	lsls r1, r1, #4
	str r2, [r0, r1]
	bx lr
_0223A14A:
	adds r2, r2, #1
	adds r3, r3, #2
	cmp r2, #0x1e
	blt _0223A13C
	bx lr
	thumb_func_end ov62_0223A138

	thumb_func_start ov62_0223A154
ov62_0223A154: @ 0x0223A154
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r2, #0
	movs r2, #0x67
	adds r4, r1, #0
	adds r7, r3, #0
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	movs r0, #0x66
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_0222AE88
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_0223A154

	thumb_func_start ov62_0223A17C
ov62_0223A17C: @ 0x0223A17C
	push {r3, r4, r5, lr}
	ldr r1, _0223A280 @ =0x00002F70
	adds r5, r0, #0
	movs r0, #0x66
	bl FUN_02018144
	ldr r2, _0223A280 @ =0x00002F70
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x86
	lsls r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02024420
	str r0, [r4]
	movs r0, #0x83
	movs r2, #0x1a
	lsls r0, r0, #4
	lsls r2, r2, #4
	ldr r0, [r5, r0]
	ldr r1, [r4]
	ldr r2, [r4, r2]
	adds r3, r4, #4
	bl ov62_0223A154
	adds r0, r4, #0
	bl ov62_0223A138
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #0
	bl ov62_022315C8
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223A284 @ =0x02248DB4
	ldr r2, _0223A288 @ =ov62_02239E0C
	movs r1, #4
	adds r3, r5, #0
	bl FUN_02023FCC
	movs r1, #0x33
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223A28C @ =0x02248DDC
	ldr r2, _0223A290 @ =ov62_02239EC0
	movs r1, #7
	adds r3, r5, #0
	bl FUN_02023FCC
	movs r1, #0xcd
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223A28C @ =0x02248DDC
	ldr r2, _0223A294 @ =ov62_02239EFC
	movs r1, #7
	adds r3, r5, #0
	bl FUN_02023FCC
	movs r1, #0xce
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223A298 @ =0x02248D6C
	ldr r2, _0223A29C @ =ov62_02239F38
	movs r1, #3
	adds r3, r5, #0
	bl FUN_02023FCC
	movs r1, #0xcf
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223A2A0 @ =0x02248D54
	ldr r2, _0223A2A4 @ =ov62_02239F98
	movs r1, #2
	adds r3, r5, #0
	bl FUN_02023FCC
	movs r1, #0xd
	lsls r1, r1, #6
	str r0, [r4, r1]
	movs r0, #0x66
	bl FUN_02030A80
	movs r1, #0xe1
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #0x83
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	bl FUN_02030AA0
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0222FB60
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223A280: .4byte 0x00002F70
_0223A284: .4byte 0x02248DB4
_0223A288: .4byte ov62_02239E0C
_0223A28C: .4byte 0x02248DDC
_0223A290: .4byte ov62_02239EC0
_0223A294: .4byte ov62_02239EFC
_0223A298: .4byte 0x02248D6C
_0223A29C: .4byte ov62_02239F38
_0223A2A0: .4byte 0x02248D54
_0223A2A4: .4byte ov62_02239F98
	thumb_func_end ov62_0223A17C

	thumb_func_start ov62_0223A2A8
ov62_0223A2A8: @ 0x0223A2A8
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223A2C2
	cmp r1, #1
	beq _0223A32E
	cmp r1, #2
	beq _0223A35E
	b _0223A388
_0223A2C2:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _0223A2D8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223A2D8:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #2
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223A38E
_0223A32E:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02231454
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223376C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223A38E
_0223A35E:
	bl ov62_02233790
	cmp r0, #0
	beq _0223A38E
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223A0AC
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	bl ov62_02234314
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223A38E
_0223A388:
	movs r1, #2
	bl ov62_0222FB60
_0223A38E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223A2A8

	thumb_func_start ov62_0223A394
ov62_0223A394: @ 0x0223A394
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223A3A8
	b _0223A4B8
_0223A3A8:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223A3B4: @ jump table
	.2byte _0223A3BC - _0223A3B4 - 2 @ case 0
	.2byte _0223A3FE - _0223A3B4 - 2 @ case 1
	.2byte _0223A436 - _0223A3B4 - 2 @ case 2
	.2byte _0223A462 - _0223A3B4 - 2 @ case 3
_0223A3BC:
	movs r2, #8
	movs r1, #0x69
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #8]
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	bl ov62_02231560
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223B140
	adds r0, r4, #0
	bl ov62_0223AFEC
	adds r0, r4, #0
	bl ov62_0223AD7C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223A3FE:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	movs r2, #1
	adds r1, r5, r1
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A4B8
	movs r0, #0x83
	movs r2, #0x1a
	lsls r0, r0, #4
	lsls r2, r2, #4
	ldr r0, [r4, r0]
	ldr r1, [r5]
	ldr r2, [r5, r2]
	adds r3, r5, #4
	bl ov62_0223A154
	adds r0, r5, #0
	bl ov62_0223A138
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223A4B8
_0223A436:
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223B230
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223B124
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0223AFC0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223A4B8
_0223A462:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A4B8
	movs r1, #0x1b
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r4, #0
	bl ov62_0223ADC0
	adds r0, r4, #0
	bl ov62_0223AD20
	ldr r1, _0223A4C0 @ =0x0000010E
	adds r0, r4, #0
	bl ov62_0223AC0C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0223B124
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223AFC0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0223A4C4 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
_0223A4B8:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223A4C0: .4byte 0x0000010E
_0223A4C4: .4byte 0x04000050
	thumb_func_end ov62_0223A394

	thumb_func_start ov62_0223A4C8
ov62_0223A4C8: @ 0x0223A4C8
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _0223A4FC
	movs r0, #0xda
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	movs r0, #0xd3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	movs r2, #0xe8
	bl FUN_0200D4C4
	b _0223A522
_0223A4FC:
	movs r0, #0xda
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0xdb
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_020129D0
	movs r0, #0xd3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x50
	movs r2, #0xe8
	bl FUN_0200D4C4
_0223A522:
	movs r0, #0x35
	lsls r0, r0, #4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0xdb
	lsls r0, r0, #2
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	pop {r4, pc}
	thumb_func_end ov62_0223A4C8

	thumb_func_start ov62_0223A544
ov62_0223A544: @ 0x0223A544
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223A55C
	cmp r0, #1
	beq _0223A5D2
	b _0223A62A
_0223A55C:
	ldr r0, _0223A630 @ =0x000006F4
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0208B9E0
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A5B4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x4f
	movs r3, #7
	bl FUN_0200710C
	adds r0, r5, #0
	bl ov62_0223AB14
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223A4C8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223A5B4:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223A62A
_0223A5D2:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A60E
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r5, #0
	movs r1, #6
	bl ov62_0222FB60
	movs r1, #0x11
	adds r0, r5, #0
	lsls r1, r1, #4
	bl ov62_0223AC0C
_0223A60E:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223A62A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223A630: .4byte 0x000006F4
	thumb_func_end ov62_0223A544

	thumb_func_start ov62_0223A634
ov62_0223A634: @ 0x0223A634
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0xcd
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0223A634

	thumb_func_start ov62_0223A64C
ov62_0223A64C: @ 0x0223A64C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223A666
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223A666:
	ldr r0, [r4, #8]
	cmp r0, #7
	bls _0223A66E
	b _0223A824
_0223A66E:
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223A67A: @ jump table
	.2byte _0223A68A - _0223A67A - 2 @ case 0
	.2byte _0223A6A8 - _0223A67A - 2 @ case 1
	.2byte _0223A6F4 - _0223A67A - 2 @ case 2
	.2byte _0223A73A - _0223A67A - 2 @ case 3
	.2byte _0223A73E - _0223A67A - 2 @ case 4
	.2byte _0223A780 - _0223A67A - 2 @ case 5
	.2byte _0223A7AA - _0223A67A - 2 @ case 6
	.2byte _0223A802 - _0223A67A - 2 @ case 7
_0223A68A:
	adds r0, r4, #0
	bl ov62_0223ABBC
	ldr r0, _0223A834 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223A6A8:
	movs r2, #8
	movs r1, #0x69
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #8]
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	bl ov62_02231560
	adds r0, r4, #0
	bl ov62_0223B140
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223AFEC
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223AD7C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A6F4:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A71C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223A71C:
	ldr r0, [r4, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223A82C
_0223A73A:
	adds r0, r0, #1
	str r0, [r4, #8]
_0223A73E:
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	movs r1, #0x12
	adds r0, r4, #0
	lsls r1, r1, #4
	bl ov62_02231AAC
	ldr r0, _0223A838 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A780:
	adds r0, r4, #0
	bl ov62_0224112C
	movs r1, #0x1a
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	movs r2, #0xe
	str r1, [sp]
	lsls r2, r2, #6
	ldr r1, [r5, r2]
	adds r2, r2, #4
	ldr r2, [r5, r2]
	ldr r3, [r5]
	bl FUN_0222B224
	cmp r0, #1
	bne _0223A82C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A7AA:
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #0xc
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _0223A838 @ =0x00000565
	bne _0223A7DE
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp, #0xc]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #2
	bl ov62_022348B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A7DE:
	movs r1, #0
	bl FUN_020057A4
	adds r0, r4, #0
	movs r1, #0x30
	bl ov62_02233704
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223196C
	ldr r0, _0223A83C @ =0x0000055F
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A802:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223A82C
_0223A824:
	adds r0, r4, #0
	movs r1, #0xa
	bl ov62_0222FB60
_0223A82C:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223A834: .4byte 0x000006F4
_0223A838: .4byte 0x00000565
_0223A83C: .4byte 0x0000055F
	thumb_func_end ov62_0223A64C

	thumb_func_start ov62_0223A840
ov62_0223A840: @ 0x0223A840
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223A85C
	cmp r0, #1
	beq _0223A87A
	cmp r0, #2
	beq _0223A8E0
	b _0223A92E
_0223A85C:
	ldr r0, _0223A934 @ =0x000006F4
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0208B9E0
	adds r0, r5, #0
	bl ov62_0223ABBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223A87A:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A8C2
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223A4C8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x4d
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223A8C2:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223A92E
_0223A8E0:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A912
	ldr r1, _0223A938 @ =0x0000010E
	adds r0, r5, #0
	bl ov62_0223AC0C
	adds r0, r5, #0
	movs r1, #3
	bl ov62_0222FB60
_0223A912:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223A92E:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223A934: .4byte 0x000006F4
_0223A938: .4byte 0x0000010E
	thumb_func_end ov62_0223A840

	thumb_func_start ov62_0223A93C
ov62_0223A93C: @ 0x0223A93C
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223A958
	cmp r1, #1
	beq _0223A9A2
	cmp r1, #2
	beq _0223A9E8
	b _0223A9EE
_0223A958:
	movs r2, #8
	movs r1, #0x69
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #8]
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	bl ov62_02231560
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223B140
	adds r0, r5, #0
	bl ov62_0223AFEC
	adds r0, r5, #0
	bl ov62_0223AD7C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223A9A2:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223A9CA
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223A9CA:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223A9EE
_0223A9E8:
	movs r1, #0xa
	bl ov62_0222FB60
_0223A9EE:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov62_0223A93C

	thumb_func_start ov62_0223A9F4
ov62_0223A9F4: @ 0x0223A9F4
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223AA10
	cmp r1, #1
	beq _0223AA3C
	cmp r1, #2
	beq _0223AA82
	b _0223AA88
_0223AA10:
	bl ov62_0223ABBC
	movs r2, #8
	movs r1, #0x69
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #8]
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	bl ov62_02231560
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223AA3C:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223AA64
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223AA64:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223AA88
_0223AA82:
	movs r1, #0xd
	bl ov62_0222FB60
_0223AA88:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223A9F4

	thumb_func_start ov62_0223AA90
ov62_0223AA90: @ 0x0223AA90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0x86
	ldr r6, _0223AB08 @ =0x00000101
	ldr r0, [sp, #0x14]
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	adds r0, r6, #0
	adds r0, #0xb3
	ldr r5, _0223AB0C @ =0x02248D9C
	ldr r7, _0223AB10 @ =0x02248D78
	adds r4, r1, r0
_0223AAAE:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldrb r0, [r5, #1]
	adds r1, r4, #0
	movs r2, #2
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl FUN_0201A7E8
	ldr r1, [r7]
	adds r0, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201A9A4
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	adds r4, #0x10
	adds r5, r5, #4
	muls r0, r1, r0
	adds r6, r6, r0
	ldr r0, [sp, #0x18]
	adds r7, r7, #4
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0223AAAE
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223AB08: .4byte 0x00000101
_0223AB0C: .4byte 0x02248D9C
_0223AB10: .4byte 0x02248D78
	thumb_func_end ov62_0223AA90

	thumb_func_start ov62_0223AB14
ov62_0223AB14: @ 0x0223AB14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #0x14]
	ldr r1, [r0, r1]
	movs r0, #0x8d
	lsls r0, r0, #2
	ldr r5, _0223ABB4 @ =0x02248DC4
	movs r6, #1
	movs r7, #0
	adds r4, r1, r0
_0223AB2C:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldrb r0, [r5, #1]
	adds r1, r4, #0
	movs r2, #6
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl FUN_0201A7E8
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	ldr r0, [r0, #0x48]
	adds r1, #0x3c
	bl FUN_0200B1EC
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r4, #0
	bl ov62_0223429C
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223ABB8 @ =0x000F0D00
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r3, [sp, #0x1c]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	adds r7, r7, #1
	adds r4, #0x10
	muls r0, r1, r0
	adds r6, r6, r0
	adds r5, r5, #4
	cmp r7, #6
	blo _0223AB2C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223ABB4: .4byte 0x02248DC4
_0223ABB8: .4byte 0x000F0D00
	thumb_func_end ov62_0223AB14

	thumb_func_start ov62_0223ABBC
ov62_0223ABBC: @ 0x0223ABBC
	push {r3, r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x8d
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r1, r0
_0223ABCC:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #6
	blo _0223ABCC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223ABBC

	thumb_func_start ov62_0223ABE4
ov62_0223ABE4: @ 0x0223ABE4
	push {r3, r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x6d
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r1, r0
_0223ABF4:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #3
	blt _0223ABF4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223ABE4

	thumb_func_start ov62_0223AC0C
ov62_0223AC0C: @ 0x0223AC0C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r5, [r0, r2]
	movs r6, #0x75
	ldr r0, [r0, #0x48]
	lsls r6, r6, #2
	bl FUN_0200B1EC
	adds r4, r0, #0
	adds r0, r5, r6
	movs r1, #0xcc
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AC54 @ =0x000F0D00
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r5, r6
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, r6
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223AC54: .4byte 0x000F0D00
	thumb_func_end ov62_0223AC0C

	thumb_func_start ov62_0223AC58
ov62_0223AC58: @ 0x0223AC58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r1, #0xe
	lsls r1, r1, #6
	ldr r1, [r4, r1]
	ldr r0, [r5, #0x48]
	adds r1, #0x1c
	bl FUN_0200B1EC
	str r0, [sp, #0x10]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r7, r0, #0
	movs r0, #0x66
	bl ov62_02231690
	ldr r1, _0223AD18 @ =0x000004D4
	str r0, [sp, #0x14]
	ldr r1, [r5, r1]
	adds r0, r6, #0
	lsls r1, r1, #2
	adds r2, r4, r1
	movs r1, #0xe3
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	bl FUN_02023D28
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_022349A8
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [sp, #0x14]
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x10]
	adds r1, r7, #0
	bl FUN_0200C388
	movs r0, #0x75
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0xcc
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AD1C @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	movs r0, #0x75
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #0x75
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x10]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_0200B3F0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223AD18: .4byte 0x000004D4
_0223AD1C: .4byte 0x000F0D00
	thumb_func_end ov62_0223AC58

	thumb_func_start ov62_0223AD20
ov62_0223AD20: @ 0x0223AD20
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r5, [r0, r1]
	movs r6, #0x71
	movs r0, #0xff
	movs r1, #0x66
	lsls r6, r6, #2
	bl FUN_02023790
	adds r1, r5, #4
	adds r4, r0, #0
	bl FUN_02023D28
	adds r0, r5, r6
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, r6
	adds r1, r4, #0
	bl ov62_0223429C
	adds r3, r0, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AD78 @ =0x000F0100
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r5, r6
	adds r2, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, r6
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223AD78: .4byte 0x000F0100
	thumb_func_end ov62_0223AD20

	thumb_func_start ov62_0223AD7C
ov62_0223AD7C: @ 0x0223AD7C
	push {r4, r5, r6, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x6d
	lsls r0, r0, #2
	ldr r5, _0223ADAC @ =0x02248D78
	movs r6, #0
	adds r4, r1, r0
_0223AD8E:
	ldr r1, [r5]
	adds r0, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, r5, #4
	cmp r6, #2
	blt _0223AD8E
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223ADAC: .4byte 0x02248D78
	thumb_func_end ov62_0223AD7C

	thumb_func_start ov62_0223ADB0
ov62_0223ADB0: @ 0x0223ADB0
	ands r0, r1
	cmp r1, r0
	bne _0223ADBA
	movs r0, #1
	bx lr
_0223ADBA:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov62_0223ADB0

	thumb_func_start ov62_0223ADC0
ov62_0223ADC0: @ 0x0223ADC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	adds r5, r1, #0
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r7, #0x6d
	lsls r7, r7, #2
	adds r0, r4, r7
	movs r1, #0
	bl FUN_0201ADA4
	lsls r0, r5, #1
	adds r0, r4, r0
	ldrh r6, [r0, #0x2c]
	cmp r6, #0
	bne _0223ADF0
	adds r0, r4, r7
	bl FUN_0201A9A4
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
_0223ADF0:
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r2, r7, #0
	subs r2, #0x5c
	adds r5, r0, #0
	ldr r0, [r4, r2]
	adds r2, #0x58
	ldr r2, [r4, r2]
	movs r1, #1
	lsls r1, r2
	bl ov62_0223ADB0
	cmp r0, #1
	bne _0223AE14
	adds r6, r7, #0
	adds r6, #0x3a
_0223AE14:
	adds r0, r6, #0
	movs r1, #0x66
	add r2, sp, #0x10
	bl FUN_0200B274
	adds r0, r5, #0
	add r1, sp, #0x10
	bl FUN_02023D28
	adds r0, r4, r7
	adds r1, r5, #0
	bl ov62_0223429C
	adds r3, r0, #0
	movs r0, #6
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223AE5C @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r4, r7
	adds r2, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, r7
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_020237BC
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223AE5C: .4byte 0x000F0D00
	thumb_func_end ov62_0223ADC0

	thumb_func_start ov62_0223AE60
ov62_0223AE60: @ 0x0223AE60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r4, [r0, #0x28]
	str r1, [sp, #0x24]
	ldr r1, [r0, #0x18]
	str r1, [sp, #0x20]
	ldr r1, [r0, #0x1c]
	str r1, [sp, #0x1c]
	bl FUN_02079FD0
	movs r1, #0x13
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, _0223AFBC @ =0x000186A0
	ldr r2, [sp, #0x20]
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	adds r0, r4, #0
	movs r1, #2
	bl FUN_0200CD7C
	bl FUN_02079FDC
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223AFBC @ =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	movs r2, #0x13
	bl FUN_0200CE0C
	bl FUN_02079FE8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223AFBC @ =0x000186A0
	ldr r1, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	movs r2, #0x13
	bl FUN_0200CE3C
	ldr r7, [sp, #0x24]
	movs r4, #0
	adds r5, r7, #0
_0223AED2:
	ldr r0, [sp, #0x24]
	ldrh r6, [r7, #0x2c]
	adds r1, r0, r4
	movs r0, #0x57
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x18]
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	lsls r1, r4
	bl ov62_0223ADB0
	str r0, [sp, #0x28]
	cmp r6, #0
	beq _0223AFAE
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x18]
	adds r0, r6, #0
	bl FUN_02079D8C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0223AFBC @ =0x000186A0
	ldr r1, [sp, #0x1c]
	adds r0, r4, r0
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	movs r2, #0x13
	bl FUN_0200D888
	adds r0, r4, #0
	movs r1, #6
	blx FUN_020E1F6C
	adds r2, r1, #0
	movs r0, #0x18
	muls r2, r0, r2
	adds r2, #0x6e
	add r0, sp, #0x2c
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #6
	blx FUN_020E1F6C
	movs r1, #0x16
	muls r1, r0, r1
	adds r1, #0x30
	add r0, sp, #0x2c
	strh r1, [r0, #2]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	adds r0, r1, #0
	str r0, [sp, #0x34]
	str r0, [sp, #0x38]
	movs r0, #1
	str r0, [sp, #0x3c]
	adds r0, r1, #0
	str r0, [sp, #0x58]
	str r0, [sp, #0x5c]
	ldr r0, _0223AFBC @ =0x000186A0
	add r2, sp, #0x2c
	adds r0, r4, r0
	str r0, [sp, #0x40]
	ldr r0, _0223AFBC @ =0x000186A0
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	subs r0, r1, #1
	str r0, [sp, #0x50]
	subs r0, r1, #1
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	bl FUN_0200CE6C
	movs r1, #0xad
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x28]
	adds r0, r6, #0
	bl FUN_02079EDC
	adds r1, r0, #0
	movs r0, #0xad
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r1, #4
	bl FUN_0200D430
	movs r0, #0xad
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0200D364
	movs r0, #0xad
	lsls r0, r0, #2
	movs r1, #0x1e
	ldr r0, [r5, r0]
	subs r1, r1, r4
	bl FUN_0200D474
_0223AFAE:
	adds r4, r4, #1
	adds r7, r7, #2
	adds r5, r5, #4
	cmp r4, #0x1e
	blt _0223AED2
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223AFBC: .4byte 0x000186A0
	thumb_func_end ov62_0223AE60

	thumb_func_start ov62_0223AFC0
ov62_0223AFC0: @ 0x0223AFC0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r6, #0
	adds r5, r4, #0
_0223AFCE:
	ldrh r0, [r4, #0x2c]
	cmp r0, #0
	beq _0223AFE0
	movs r0, #0xad
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r7, #0
	bl FUN_0200D3F4
_0223AFE0:
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #4
	cmp r6, #0x1e
	blt _0223AFCE
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_0223AFC0

	thumb_func_start ov62_0223AFEC
ov62_0223AFEC: @ 0x0223AFEC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r7, r0]
	ldr r0, [r7, #0x1c]
	ldr r1, _0223B04C @ =0x000186A0
	bl FUN_0200D080
	ldr r0, [r7, #0x1c]
	ldr r1, _0223B04C @ =0x000186A0
	bl FUN_0200D090
	ldr r0, [r7, #0x1c]
	ldr r1, _0223B04C @ =0x000186A0
	bl FUN_0200D0A0
	movs r6, #0
	adds r5, r4, #0
_0223B012:
	ldrh r0, [r4, #0x2c]
	cmp r0, #0
	beq _0223B03E
	movs r0, #0xad
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223B03E
	ldr r1, _0223B04C @ =0x000186A0
	ldr r0, [r7, #0x1c]
	adds r1, r6, r1
	bl FUN_0200D070
	movs r0, #0xad
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D0F4
	movs r0, #0xad
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_0223B03E:
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #4
	cmp r6, #0x1e
	blt _0223B012
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B04C: .4byte 0x000186A0
	thumb_func_end ov62_0223AFEC

	thumb_func_start ov62_0223B050
ov62_0223B050: @ 0x0223B050
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #0x10]
	ldr r4, [r0, r1]
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r2, [r4, r0]
	lsls r1, r2, #2
	adds r1, r4, r1
	adds r3, r1, #0
	adds r3, #0xe0
	ldr r3, [r3]
	adds r5, r4, r2
	str r3, [sp, #0x14]
	adds r3, r0, #0
	subs r3, #0x54
	ldrb r7, [r5, r3]
	lsls r3, r2, #1
	adds r3, r4, r3
	ldrh r5, [r3, #0x2c]
	ldr r6, [r1, #0x68]
	cmp r5, #0
	bne _0223B08E
	movs r0, #0xcb
	movs r1, #0
	lsls r0, r0, #2
	add sp, #0x34
	str r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_0223B08E:
	subs r0, #0x58
	movs r1, #1
	ldr r0, [r4, r0]
	lsls r1, r2
	bl ov62_0223ADB0
	cmp r0, #1
	bne _0223B0AC
	ldr r0, _0223B11C @ =0x000001EA
	cmp r5, r0
	bne _0223B0A8
	movs r7, #1
	b _0223B0AA
_0223B0A8:
	movs r7, #0
_0223B0AA:
	ldr r5, _0223B120 @ =0x000001EE
_0223B0AC:
	adds r0, r5, #0
	movs r1, #0x66
	bl FUN_02075894
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_02075DAC
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	adds r1, r6, #0
	bl FUN_02075E38
	lsls r3, r7, #0x18
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	movs r2, #2
	lsrs r3, r3, #0x18
	str r6, [sp]
	bl FUN_02076648
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	add r0, sp, #0x24
	adds r1, r5, #0
	movs r3, #2
	str r6, [sp, #8]
	bl FUN_02075FB4
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x24
	ldr r0, [r0, #0x64]
	movs r2, #0x2a
	movs r3, #0x5b
	bl FUN_02007C34
	movs r1, #0xcb
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	bl FUN_020759B8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223B11C: .4byte 0x000001EA
_0223B120: .4byte 0x000001EE
	thumb_func_end ov62_0223B050

	thumb_func_start ov62_0223B124
ov62_0223B124: @ 0x0223B124
	push {r3, lr}
	adds r2, r1, #0
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223B13E
	movs r1, #6
	bl FUN_02007DEC
_0223B13E:
	pop {r3, pc}
	thumb_func_end ov62_0223B124

	thumb_func_start ov62_0223B140
ov62_0223B140: @ 0x0223B140
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223B156
	bl FUN_02007DC8
_0223B156:
	pop {r3, pc}
	thumb_func_end ov62_0223B140

	thumb_func_start ov62_0223B158
ov62_0223B158: @ 0x0223B158
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	subs r0, #0x30
	ldr r0, [r5, r0]
	bl FUN_02024420
	ldr r1, _0223B228 @ =0x0000017A
	ldrb r2, [r4, r1]
	cmp r2, #0x10
	blo _0223B17C
	cmp r2, #0x18
	bhs _0223B17C
	movs r2, #0
	strb r2, [r4, r1]
_0223B17C:
	ldr r1, _0223B228 @ =0x0000017A
	ldrb r1, [r4, r1]
	cmp r1, #0x18
	blo _0223B18E
	cmp r1, #0x20
	bhs _0223B18E
	subs r1, #0x18
	bl FUN_02079CFC
_0223B18E:
	ldr r0, _0223B228 @ =0x0000017A
	ldrb r1, [r4, r0]
	cmp r1, #0x20
	blo _0223B19A
	movs r1, #0
	strb r1, [r4, r0]
_0223B19A:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r1, _0223B228 @ =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	movs r3, #3
	lsls r1, r2, #1
	adds r1, r2, r1
	ldr r2, [r5, #0x24]
	adds r1, #0x8a
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r1, _0223B228 @ =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	movs r3, #3
	lsls r1, r2, #1
	adds r1, r2, r1
	ldr r2, [r5, #0x24]
	adds r1, #0x8c
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0xc0
	movs r1, #0xa2
	str r0, [sp, #8]
	adds r2, r1, #0
	str r0, [sp, #0xc]
	adds r2, #0xd8
	ldrb r3, [r4, r2]
	ldr r0, [r5, #0x28]
	lsls r2, r3, #1
	adds r2, r3, r2
	adds r2, #0x8b
	movs r3, #0x66
	bl FUN_02002FEC
	adds r0, r5, #0
	bl ov62_0223B050
	adds r0, r5, #0
	bl ov62_0223AE60
	movs r1, #0x1b
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_0223ADC0
	adds r0, r5, #0
	bl ov62_0223AD20
	ldr r1, _0223B22C @ =0x0000010E
	adds r0, r5, #0
	bl ov62_0223AC0C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B228: .4byte 0x0000017A
_0223B22C: .4byte 0x0000010E
	thumb_func_end ov62_0223B158

	thumb_func_start ov62_0223B230
ov62_0223B230: @ 0x0223B230
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	subs r0, #0x30
	ldr r0, [r5, r0]
	bl FUN_02024420
	ldr r1, _0223B2E4 @ =0x0000017A
	ldrb r2, [r4, r1]
	cmp r2, #0x10
	blo _0223B254
	cmp r2, #0x18
	bhs _0223B254
	movs r2, #0
	strb r2, [r4, r1]
_0223B254:
	ldr r1, _0223B2E4 @ =0x0000017A
	ldrb r1, [r4, r1]
	cmp r1, #0x18
	blo _0223B270
	cmp r1, #0x20
	bhs _0223B270
	subs r1, #0x18
	bl FUN_02079CFC
	cmp r0, #0
	bne _0223B270
	ldr r0, _0223B2E4 @ =0x0000017A
	movs r1, #0
	strb r1, [r4, r0]
_0223B270:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r1, _0223B2E4 @ =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	movs r3, #3
	lsls r1, r2, #1
	adds r1, r2, r1
	ldr r2, [r5, #0x24]
	adds r1, #0x8a
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r1, _0223B2E4 @ =0x0000017A
	ldr r0, [r5, #0x14]
	ldrb r2, [r4, r1]
	movs r3, #3
	lsls r1, r2, #1
	adds r1, r2, r1
	ldr r2, [r5, #0x24]
	adds r1, #0x8c
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0xc0
	movs r1, #0xa2
	str r0, [sp, #8]
	adds r2, r1, #0
	str r0, [sp, #0xc]
	adds r2, #0xd8
	ldrb r3, [r4, r2]
	ldr r0, [r5, #0x28]
	lsls r2, r3, #1
	adds r2, r3, r2
	adds r2, #0x8b
	movs r3, #0x66
	bl FUN_02002FEC
	adds r0, r5, #0
	bl ov62_0223B050
	adds r0, r5, #0
	bl ov62_0223AE60
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223B2E4: .4byte 0x0000017A
	thumb_func_end ov62_0223B230

	thumb_func_start ov62_0223B2E8
ov62_0223B2E8: @ 0x0223B2E8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223B304
	cmp r1, #1
	beq _0223B37E
	cmp r1, #2
	beq _0223B3C2
	b _0223B400
_0223B304:
	movs r1, #2
	bl ov62_022302F0
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223AA90
	adds r0, r5, #0
	bl ov62_0223B158
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223B124
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223AFC0
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x4d
	movs r3, #7
	bl FUN_0200710C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223B400
_0223B37E:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	movs r2, #0
	adds r1, r4, r1
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223B400
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223B124
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223AFC0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, _0223B408 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223B400
_0223B3C2:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223B3E4
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	adds r0, #0x14
	str r1, [r4, r0]
	adds r0, r5, #0
	movs r1, #3
	bl ov62_0222FB60
_0223B3E4:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223B400:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223B408: .4byte 0x04000050
	thumb_func_end ov62_0223B2E8

	thumb_func_start ov62_0223B40C
ov62_0223B40C: @ 0x0223B40C
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0xd1
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0223B40C

	thumb_func_start ov62_0223B424
ov62_0223B424: @ 0x0223B424
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r7, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223B43A
	cmp r1, #1
	beq _0223B474
	b _0223B4CA
_0223B43A:
	bl ov62_0223AFEC
	adds r0, r5, #0
	bl ov62_0223B140
	adds r0, r5, #0
	bl ov62_0223ABE4
	adds r0, r5, #0
	bl ov62_0223A110
	ldr r0, _0223B560 @ =0x000006F4
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0208B8B0
	ldr r0, _0223B560 @ =0x000006F4
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0208B9E0
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223B55C
_0223B474:
	bl ov62_02233790
	cmp r0, #0
	beq _0223B55C
	movs r6, #0
	adds r4, r7, #0
_0223B480:
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02024034
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #5
	blt _0223B480
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r7, r0
	bl ov62_02231688
	adds r0, r5, #0
	bl ov62_0223146C
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223B55C
_0223B4CA:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223B524
	adds r0, r5, #0
	bl ov62_022318E8
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r7, r0
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	movs r0, #0xe1
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_02030A98
	adds r0, r7, #0
	bl FUN_020181C4
	b _0223B55C
_0223B524:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223B55C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B560: .4byte 0x000006F4
	thumb_func_end ov62_0223B424

	thumb_func_start ov62_0223B564
ov62_0223B564: @ 0x0223B564
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223B580
	cmp r1, #1
	beq _0223B60A
	cmp r1, #2
	beq _0223B646
	b _0223B684
_0223B580:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022302F0
	adds r0, r5, #0
	bl ov62_0223AA90
	ldr r1, _0223B68C @ =0x00000113
	adds r0, r5, #0
	bl ov62_0223AC0C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x4f
	movs r3, #7
	bl FUN_0200710C
	adds r0, r5, #0
	bl ov62_0223AB14
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223A4C8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223B684
_0223B60A:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	movs r2, #0
	adds r1, r4, r1
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223B684
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, _0223B690 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223B684
_0223B646:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223B668
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r0, #0xc
	str r1, [r4, r0]
	adds r0, r5, #0
	movs r1, #3
	bl ov62_0222FB60
_0223B668:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r4, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223B684:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223B68C: .4byte 0x00000113
_0223B690: .4byte 0x04000050
	thumb_func_end ov62_0223B564

	thumb_func_start ov62_0223B694
ov62_0223B694: @ 0x0223B694
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0223B694

	thumb_func_start ov62_0223B6AC
ov62_0223B6AC: @ 0x0223B6AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r1, _0223B75C @ =0x02248D50
	ldr r5, _0223B760 @ =0x02248D5C
	ldr r2, [r1, #0x14]
	ldr r1, [r1, #0x18]
	movs r7, #1
	str r1, [sp, #0x24]
	movs r1, #0
	str r1, [sp, #0x18]
	movs r1, #0x8d
	lsls r1, r1, #2
	add r6, sp, #0x20
	str r2, [sp, #0x20]
	adds r4, r0, r1
_0223B6D2:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldrb r0, [r5, #1]
	adds r1, r4, #0
	movs r2, #6
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	ldr r1, [r6]
	ldr r0, [r0, #0x48]
	bl FUN_0200B1EC
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	adds r0, r4, #0
	bl ov62_0223429C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223B764 @ =0x000F0D00
	ldr r2, [sp, #0x1c]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A9A4
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	muls r0, r1, r0
	adds r7, r7, r0
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	adds r4, #0x10
	adds r0, r0, #1
	adds r5, r5, #4
	adds r6, r6, #4
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0223B6D2
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B75C: .4byte 0x02248D50
_0223B760: .4byte 0x02248D5C
_0223B764: .4byte 0x000F0D00
	thumb_func_end ov62_0223B6AC

	thumb_func_start ov62_0223B768
ov62_0223B768: @ 0x0223B768
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	movs r6, #0x8d
	adds r7, r1, #0
	ldr r4, [r5, r0]
	lsls r6, r6, #2
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	adds r1, r7, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, r6
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223B7BC @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, r6
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B7BC: .4byte 0x000F0D00
	thumb_func_end ov62_0223B768

	thumb_func_start ov62_0223B7C0
ov62_0223B7C0: @ 0x0223B7C0
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	movs r6, #0x8d
	ldr r4, [r5, r0]
	lsls r6, r6, #2
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r3, #0xc
	bl FUN_0201A7E8
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x22
	bl FUN_0200B1EC
	adds r5, r0, #0
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0x40
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223B83C @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, r6
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_020237BC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223B83C: .4byte 0x000F0D00
	thumb_func_end ov62_0223B7C0

	thumb_func_start ov62_0223B840
ov62_0223B840: @ 0x0223B840
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r0, #0x8d
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	movs r0, #0x8d
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_0223B840

	thumb_func_start ov62_0223B860
ov62_0223B860: @ 0x0223B860
	push {r3, r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x8d
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r1, r0
_0223B870:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #2
	blt _0223B870
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223B860

	thumb_func_start ov62_0223B888
ov62_0223B888: @ 0x0223B888
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	movs r1, #0x6d
	str r0, [sp, #0x24]
	movs r0, #1
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	lsls r1, r1, #2
	ldr r5, _0223B94C @ =0x02248D50
	movs r7, #0
	adds r4, r0, r1
_0223B8A6:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldrb r0, [r5, #1]
	adds r1, r4, #0
	movs r2, #2
	str r0, [sp]
	ldrb r0, [r5, #2]
	str r0, [sp, #4]
	ldrb r0, [r5, #3]
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldrb r3, [r5]
	ldr r0, [r0, #0x24]
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	cmp r7, #0
	bne _0223B902
	movs r1, #0xe
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x24]
	lsls r1, r1, #6
	ldr r2, [r2, r1]
	ldr r1, _0223B950 @ =0x00000136
	ldr r0, [r0, #0x48]
	adds r1, r2, r1
	bl FUN_0200B1EC
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov62_0223429C
	str r0, [sp, #0x1c]
	movs r0, #0
	str r0, [sp, #0x18]
_0223B902:
	cmp r6, #0
	beq _0223B928
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x1c]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223B954 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r6, #0
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
_0223B928:
	adds r0, r4, #0
	bl FUN_0201A9A4
	ldrb r1, [r5, #2]
	ldrb r0, [r5, #3]
	adds r7, r7, #1
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #0x20]
	adds r4, #0x10
	adds r0, r0, r2
	adds r5, r5, #4
	str r0, [sp, #0x20]
	cmp r7, #1
	blo _0223B8A6
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B94C: .4byte 0x02248D50
_0223B950: .4byte 0x00000136
_0223B954: .4byte 0x000F0D00
	thumb_func_end ov62_0223B888

	thumb_func_start ov62_0223B958
ov62_0223B958: @ 0x0223B958
	push {r3, r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x6d
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r1, r0
_0223B968:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #1
	blo _0223B968
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223B958

	thumb_func_start ov62_0223B980
ov62_0223B980: @ 0x0223B980
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223B99A
	add sp, #0x14
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_0223B99A:
	ldr r0, [r4, #8]
	cmp r0, #8
	bls _0223B9A2
	b _0223BD2C
_0223B9A2:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223B9AE: @ jump table
	.2byte _0223B9C0 - _0223B9AE - 2 @ case 0
	.2byte _0223BA06 - _0223B9AE - 2 @ case 1
	.2byte _0223BA94 - _0223B9AE - 2 @ case 2
	.2byte _0223BAD4 - _0223B9AE - 2 @ case 3
	.2byte _0223BAF2 - _0223B9AE - 2 @ case 4
	.2byte _0223BB9A - _0223B9AE - 2 @ case 5
	.2byte _0223BBD8 - _0223B9AE - 2 @ case 6
	.2byte _0223BC58 - _0223B9AE - 2 @ case 7
	.2byte _0223BCA0 - _0223B9AE - 2 @ case 8
_0223B9C0:
	ldr r0, _0223BD10 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	adds r0, r4, #0
	bl ov62_0223ABE4
	adds r0, r4, #0
	bl ov62_0223ABBC
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #8
	movs r1, #0x69
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #8]
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	bl ov62_02231560
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223BA06:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223BA76
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	movs r1, #3
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	adds r3, r1, #0
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x4e
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223BA76:
	ldr r0, [r4, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223BE5E
_0223BA94:
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r1, _0223BD14 @ =0x00000121
	adds r0, r4, #0
	bl ov62_02231AAC
	ldr r0, _0223BD18 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BAD4:
	adds r0, r4, #0
	bl ov62_0224112C
	movs r1, #0xe
	lsls r1, r1, #6
	ldr r1, [r5, r1]
	bl FUN_0222B290
	cmp r0, #1
	beq _0223BAEA
	b _0223BE5E
_0223BAEA:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BAF2:
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #0x10
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _0223BD18 @ =0x00000565
	bne _0223BB86
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp, #0x10]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #3
	bl ov62_022348B8
	movs r0, #0xe2
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, _0223BD1C @ =0x00002F64
	str r1, [r5, r0]
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223AA90
	ldr r0, _0223BD10 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B8B0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #7
	str r0, [r4, #8]
	b _0223BE5E
_0223BB86:
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _0223BD20 @ =0x0000055F
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BB9A:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223BBD2
	ldr r0, [r4, #8]
	ldr r1, _0223BD24 @ =0x00000126
	adds r0, r0, #1
	str r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl ov62_02231AAC
	b _0223BE5E
_0223BBD2:
	movs r0, #0xff
	str r0, [r4, #8]
	b _0223BE5E
_0223BBD8:
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x3c
	bge _0223BBEA
	bl FUN_02022798
	cmp r0, #1
	bne _0223BC6E
_0223BBEA:
	movs r0, #0
	str r0, [r4, #0xc]
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r0, _0223BD1C @ =0x00002F64
	movs r1, #0
	str r1, [r5, r0]
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223AA90
	ldr r0, _0223BD10 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B8B0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BC58:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223BC70
_0223BC6E:
	b _0223BE5E
_0223BC70:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x4f
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223BE5E
_0223BCA0:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223BCF0
	adds r0, r4, #0
	movs r1, #2
	bl ov62_022302F0
	ldr r1, _0223BD28 @ =0x00000113
	adds r0, r4, #0
	bl ov62_0223AC0C
	adds r0, r4, #0
	bl ov62_0223AB14
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
_0223BCF0:
	ldr r0, [r4, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223BE5E
	nop
_0223BD10: .4byte 0x000006F4
_0223BD14: .4byte 0x00000121
_0223BD18: .4byte 0x00000565
_0223BD1C: .4byte 0x00002F64
_0223BD20: .4byte 0x0000055F
_0223BD24: .4byte 0x00000126
_0223BD28: .4byte 0x00000113
_0223BD2C:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_02231664
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	movs r2, #0
	adds r1, r5, r1
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223BE26
	adds r0, r4, #0
	bl ov62_0223B888
	adds r0, r4, #0
	bl ov62_0223BE7C
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223BE64 @ =0x00002EAC
	ldr r3, _0223BE68 @ =0x02248DF8
	adds r2, r5, r0
	movs r6, #5
_0223BD6A:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _0223BD6A
	ldr r0, [r3]
	movs r1, #0xe2
	str r0, [r2]
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	ldr r0, _0223BE6C @ =0x00002EB0
	adds r1, #0xf4
	str r2, [r5, r0]
	adds r0, r4, r1
	adds r1, r4, #0
	movs r2, #2
	bl ov62_022335BC
	ldr r0, _0223BE70 @ =0x0000049C
	adds r0, r4, r0
	bl ov62_02233310
	ldr r3, _0223BE64 @ =0x00002EAC
	ldr r0, _0223BE70 @ =0x0000049C
	adds r2, r5, r3
	subs r3, #0xa0
	adds r0, r4, r0
	adds r1, r4, #0
	adds r3, r5, r3
	bl ov62_02232AAC
	ldr r1, _0223BE74 @ =0x0000047C
	adds r0, r4, r1
	adds r1, #0x20
	adds r1, r4, r1
	bl ov62_02233638
	ldr r0, _0223BE70 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	movs r2, #1
	bl ov62_0223331C
	ldr r0, _0223BE70 @ =0x0000049C
	movs r1, #0x38
	adds r0, r4, r0
	movs r2, #0xb0
	bl ov62_02233434
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223B6AC
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r3, _0223BE78 @ =0x000004D8
	movs r1, #0x6f
	ldr r6, [r4, r3]
	movs r3, #0x18
	muls r3, r6, r3
	lsls r1, r1, #4
	adds r3, #0x44
	lsls r3, r3, #0x10
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x10
	asrs r3, r3, #0x10
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0xc
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
_0223BE26:
	ldr r0, [r4, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #2
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223BE5E:
	movs r0, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223BE64: .4byte 0x00002EAC
_0223BE68: .4byte 0x02248DF8
_0223BE6C: .4byte 0x00002EB0
_0223BE70: .4byte 0x0000049C
_0223BE74: .4byte 0x0000047C
_0223BE78: .4byte 0x000004D8
	thumb_func_end ov62_0223B980

	thumb_func_start ov62_0223BE7C
ov62_0223BE7C: @ 0x0223BE7C
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp]
	ldr r7, [r0, r1]
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	movs r6, #0
	cmp r0, #0
	ble _0223BEE6
	adds r4, r7, #0
	adds r5, r7, #0
_0223BE96:
	movs r0, #0x14
	movs r1, #0x66
	bl FUN_02023790
	ldr r1, _0223BEE8 @ =0x00002E10
	str r0, [r4, r1]
	adds r0, r1, #0
	movs r1, #0xe3
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r5, r1]
	bl FUN_02023D28
	ldr r1, _0223BEE8 @ =0x00002E10
	ldr r0, [sp]
	ldr r1, [r4, r1]
	bl ov62_022349A8
	movs r0, #0x1e
	movs r1, #0x66
	bl FUN_02023790
	ldr r1, _0223BEEC @ =0x00002E0C
	str r0, [r4, r1]
	adds r0, r1, #0
	movs r1, #0xe3
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ldr r0, [r4, r0]
	adds r1, #0x80
	bl FUN_02023D28
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	adds r6, r6, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r6, r0
	blt _0223BE96
_0223BEE6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BEE8: .4byte 0x00002E10
_0223BEEC: .4byte 0x00002E0C
	thumb_func_end ov62_0223BE7C

	thumb_func_start ov62_0223BEF0
ov62_0223BEF0: @ 0x0223BEF0
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r6, [r0, r1]
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r4, #0
	cmp r0, #0
	ble _0223BF38
	adds r5, r6, #0
	adds r7, r4, #0
_0223BF08:
	ldr r0, _0223BF3C @ =0x00002E0C
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223BF18
	bl FUN_020237BC
	ldr r0, _0223BF3C @ =0x00002E0C
	str r7, [r5, r0]
_0223BF18:
	ldr r0, _0223BF40 @ =0x00002E10
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223BF2A
	bl FUN_020237BC
	ldr r0, _0223BF40 @ =0x00002E10
	movs r1, #0
	str r1, [r5, r0]
_0223BF2A:
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r4, r4, #1
	adds r5, #8
	cmp r4, r0
	blt _0223BF08
_0223BF38:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BF3C: .4byte 0x00002E0C
_0223BF40: .4byte 0x00002E10
	thumb_func_end ov62_0223BEF0

	thumb_func_start ov62_0223BF44
ov62_0223BF44: @ 0x0223BF44
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _0223BFA0 @ =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223BF92
	ldr r0, _0223BFA4 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223BFA8 @ =0x0000049C
	adds r0, r5, r1
	subs r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _0223BFA8 @ =0x0000049C
	ldr r2, _0223BFAC @ =0x00002E0C
	adds r0, r5, r0
	adds r1, r5, #0
	adds r2, r4, r2
	bl ov62_02232BB4
	ldr r2, _0223BFB0 @ =0x000004D8
	movs r0, #0x6f
	ldr r3, [r5, r2]
	movs r2, #0x18
	muls r2, r3, r2
	lsls r0, r0, #4
	adds r2, #0x44
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	movs r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0208B8EC
_0223BF92:
	movs r0, #0xcf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223BFA0: .4byte 0x00002F64
_0223BFA4: .4byte 0x0000047C
_0223BFA8: .4byte 0x0000049C
_0223BFAC: .4byte 0x00002E0C
_0223BFB0: .4byte 0x000004D8
	thumb_func_end ov62_0223BF44

	thumb_func_start ov62_0223BFB4
ov62_0223BFB4: @ 0x0223BFB4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223BFD2
	cmp r1, #1
	beq _0223C0A0
	cmp r1, #2
	bne _0223BFD0
	b _0223C0D6
_0223BFD0:
	b _0223C11A
_0223BFD2:
	bl ov62_0223BEF0
	adds r0, r5, #0
	bl ov62_0223B860
	ldr r0, _0223C120 @ =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C016
	adds r0, r5, #0
	bl ov62_0223B958
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223C124 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233600
	ldr r0, _0223C128 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223C128 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_022334FC
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	b _0223C036
_0223C016:
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223C12C @ =0x00002ED8
	adds r1, r5, #0
	adds r0, r4, r0
	bl ov62_02232394
	adds r0, r5, #0
	bl ov62_02239D8C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
_0223C036:
	ldr r0, _0223C120 @ =0x00002F64
	movs r1, #0
	str r1, [r4, r0]
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223AA90
	adds r0, r5, #0
	movs r1, #0xff
	bl ov62_0223AC58
	ldr r0, _0223C130 @ =0x000006F4
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B8B0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223C0A0:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C11A
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x4f
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223C11A
_0223C0D6:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C11A
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022302F0
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r1, _0223C134 @ =0x00000113
	adds r0, r5, #0
	bl ov62_0223AC0C
	adds r0, r5, #0
	bl ov62_0223AB14
	adds r0, r5, #0
	movs r1, #3
	bl ov62_0222FB60
_0223C11A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C120: .4byte 0x00002F64
_0223C124: .4byte 0x0000047C
_0223C128: .4byte 0x0000049C
_0223C12C: .4byte 0x00002ED8
_0223C130: .4byte 0x000006F4
_0223C134: .4byte 0x00000113
	thumb_func_end ov62_0223BFB4

	thumb_func_start ov62_0223C138
ov62_0223C138: @ 0x0223C138
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223C14C
	b _0223C306
_0223C14C:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223C158: @ jump table
	.2byte _0223C160 - _0223C158 - 2 @ case 0
	.2byte _0223C1FC - _0223C158 - 2 @ case 1
	.2byte _0223C21A - _0223C158 - 2 @ case 2
	.2byte _0223C2B2 - _0223C158 - 2 @ case 3
_0223C160:
	bl ov62_0223B860
	ldr r0, _0223C3E8 @ =0x00002F64
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223C19E
	adds r0, r4, #0
	bl ov62_0223B958
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223C3EC @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233600
	ldr r0, _0223C3F0 @ =0x0000049C
	adds r0, r4, r0
	bl ov62_022332FC
	ldr r0, _0223C3F0 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022334FC
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	b _0223C1BE
_0223C19E:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223C3F4 @ =0x00002ED8
	adds r1, r4, #0
	adds r0, r5, r0
	bl ov62_02232394
	adds r0, r4, #0
	bl ov62_02239D8C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
_0223C1BE:
	ldr r0, _0223C3F8 @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B8B0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223C1FC:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	adds r1, r5, r1
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C2C8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223C3E0
_0223C21A:
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223C3FC @ =0x000004D4
	adds r3, r5, #4
	ldr r0, [r4, r0]
	movs r2, #0x33
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r6, [r1, r0]
	adds r6, #0x80
_0223C234:
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223C234
	ldr r0, [r6]
	str r0, [r3]
	adds r0, r5, #0
	bl ov62_0223A138
	adds r0, r4, #0
	movs r1, #2
	bl ov62_022302F0
	adds r0, r4, #0
	bl ov62_0223AA90
	adds r0, r4, #0
	bl ov62_0223B158
	adds r0, r4, #0
	movs r1, #0xff
	bl ov62_0223AC58
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223B124
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0223AFC0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x4b
	movs r3, #7
	bl FUN_0200710C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223C3E0
_0223C2B2:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r5, r1
	adds r1, r1, #4
	movs r2, #0
	adds r1, r5, r1
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223C2CA
_0223C2C8:
	b _0223C3E0
_0223C2CA:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0223B124
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223AFC0
	adds r0, r4, #0
	bl ov62_0223B7C0
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, _0223C400 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223C3E0
_0223C306:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223C3C4
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	adds r0, #0x14
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov62_0223A138
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #6
	blx FUN_020E1F6C
	ldr r0, _0223C404 @ =0x00002F68
	str r1, [r5, r0]
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #6
	blx FUN_020E1F6C
	ldr r3, _0223C408 @ =0x00002F6C
	movs r1, #0x6f
	str r0, [r5, r3]
	subs r2, r3, #4
	ldr r6, [r5, r2]
	movs r2, #0x18
	muls r2, r6, r2
	ldr r6, [r5, r3]
	movs r3, #0x16
	muls r3, r6, r3
	lsls r1, r1, #4
	adds r2, #0x6e
	adds r3, #0x34
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	ldr r1, [r4, r1]
	adds r0, r4, #0
	asrs r2, r2, #0x10
	asrs r3, r3, #0x10
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0xc
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r2, [r5, r0]
	lsls r1, r2, #1
	adds r1, r5, r1
	ldrh r1, [r1, #0x2c]
	cmp r1, #0
	beq _0223C3BC
	subs r0, #0x58
	movs r1, #1
	ldr r0, [r5, r0]
	lsls r1, r2
	bl ov62_0223ADB0
	cmp r0, #1
	beq _0223C3BC
	movs r1, #0x1b
	lsls r1, r1, #4
	ldr r2, [r5, r1]
	subs r1, #0x54
	lsls r0, r2, #1
	adds r0, r5, r0
	adds r2, r5, r2
	ldrh r0, [r0, #0x2c]
	ldrb r1, [r2, r1]
	bl FUN_02005844
_0223C3BC:
	adds r0, r4, #0
	movs r1, #0xa
	bl ov62_0222FB60
_0223C3C4:
	ldr r0, [r4, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223C3E0:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223C3E8: .4byte 0x00002F64
_0223C3EC: .4byte 0x0000047C
_0223C3F0: .4byte 0x0000049C
_0223C3F4: .4byte 0x00002ED8
_0223C3F8: .4byte 0x000006F4
_0223C3FC: .4byte 0x000004D4
_0223C400: .4byte 0x04000050
_0223C404: .4byte 0x00002F68
_0223C408: .4byte 0x00002F6C
	thumb_func_end ov62_0223C138

	thumb_func_start ov62_0223C40C
ov62_0223C40C: @ 0x0223C40C
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0xd
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0223C40C

	thumb_func_start ov62_0223C424
ov62_0223C424: @ 0x0223C424
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223C440
	cmp r0, #1
	beq _0223C486
	cmp r0, #2
	beq _0223C492
	b _0223C50A
_0223C440:
	movs r2, #8
	movs r1, #0x69
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #8]
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	bl ov62_02231560
	adds r0, r5, #0
	bl ov62_0223B140
	adds r0, r5, #0
	bl ov62_0223AFEC
	adds r0, r5, #0
	bl ov62_0223AD7C
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	adds r0, r5, #0
	bl ov62_0223ABE4
	adds r0, r5, #0
	bl ov62_0223B840
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223C486:
	ldr r0, _0223C624 @ =0x00002F64
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223C492:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223C4AA
	b _0223C61C
_0223C4AA:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	movs r1, #3
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	adds r3, r1, #0
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x4e
	movs r3, #7
	bl FUN_0200710C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223C61C
_0223C50A:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	movs r2, #0
	adds r1, r4, r1
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C61C
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0208B9E0
	adds r0, r5, #0
	bl ov62_0223B888
	adds r0, r5, #0
	bl ov62_0223B6AC
	ldr r0, _0223C628 @ =0x0000047C
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #2
	bl ov62_022335BC
	ldr r3, _0223C62C @ =0x00002EAC
	ldr r0, _0223C630 @ =0x0000049C
	adds r2, r4, r3
	subs r3, #0xa0
	adds r0, r5, r0
	adds r1, r5, #0
	adds r3, r4, r3
	bl ov62_02232AAC
	ldr r1, _0223C628 @ =0x0000047C
	adds r0, r5, r1
	adds r1, #0x20
	adds r1, r5, r1
	bl ov62_02233638
	ldr r0, _0223C630 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #1
	bl ov62_0223331C
	ldr r0, _0223C630 @ =0x0000049C
	movs r1, #0x38
	adds r0, r5, r0
	movs r2, #0xb0
	bl ov62_02233434
	ldr r3, _0223C634 @ =0x000004D8
	movs r1, #0x6f
	ldr r6, [r5, r3]
	movs r3, #0x18
	muls r3, r6, r3
	lsls r1, r1, #4
	adds r3, #0x44
	lsls r3, r3, #0x10
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #0x10
	asrs r3, r3, #0x10
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0xc
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, _0223C624 @ =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C5FC
	ldr r0, _0223C628 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223C630 @ =0x0000049C
	adds r0, r5, r1
	subs r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _0223C630 @ =0x0000049C
	ldr r2, _0223C638 @ =0x00002E0C
	adds r0, r5, r0
	adds r1, r5, #0
	adds r2, r4, r2
	bl ov62_02232BB4
	ldr r2, _0223C634 @ =0x000004D8
	movs r0, #0x6f
	ldr r3, [r5, r2]
	movs r2, #0x18
	muls r2, r3, r2
	lsls r0, r0, #4
	adds r2, #0x44
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	movs r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0208B8EC
_0223C5FC:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
_0223C61C:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223C624: .4byte 0x00002F64
_0223C628: .4byte 0x0000047C
_0223C62C: .4byte 0x00002EAC
_0223C630: .4byte 0x0000049C
_0223C634: .4byte 0x000004D8
_0223C638: .4byte 0x00002E0C
	thumb_func_end ov62_0223C424

	thumb_func_start ov62_0223C63C
ov62_0223C63C: @ 0x0223C63C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0223C658
	cmp r0, #1
	beq _0223C6C2
	cmp r0, #2
	beq _0223C73E
	b _0223C782
_0223C658:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	ldr r0, _0223C788 @ =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C672
	adds r0, r5, #0
	bl ov62_0223B958
_0223C672:
	ldr r0, _0223C78C @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233600
	ldr r0, _0223C790 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223C790 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_022334FC
	ldr r0, _0223C788 @ =0x00002F64
	movs r1, #1
	str r1, [r4, r0]
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	movs r2, #8
	movs r1, #0x69
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #8]
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	bl ov62_02231560
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223C6C2:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	movs r2, #1
	adds r1, r4, r1
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C782
	ldr r1, _0223C794 @ =0x000004D4
	adds r0, r5, #0
	ldr r1, [r5, r1]
	bl ov62_02239D60
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223C798 @ =0x00002ED8
	adds r1, r5, #0
	adds r0, r4, r0
	bl ov62_02232378
	ldr r0, _0223C798 @ =0x00002ED8
	movs r1, #0
	adds r0, r4, r0
	bl ov62_022323B8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x50
	movs r3, #3
	bl FUN_0200710C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223C782
_0223C73E:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C782
	ldr r0, _0223C798 @ =0x00002ED8
	movs r1, #1
	adds r0, r4, r0
	bl ov62_022323B8
	ldr r1, _0223C788 @ =0x00002F64
	adds r0, r5, #0
	ldr r1, [r4, r1]
	adds r1, #0x79
	bl ov62_0223B768
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
_0223C782:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223C788: .4byte 0x00002F64
_0223C78C: .4byte 0x0000047C
_0223C790: .4byte 0x0000049C
_0223C794: .4byte 0x000004D4
_0223C798: .4byte 0x00002ED8
	thumb_func_end ov62_0223C63C

	thumb_func_start ov62_0223C79C
ov62_0223C79C: @ 0x0223C79C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223C7B8
	cmp r1, #1
	beq _0223C7C6
	cmp r1, #2
	beq _0223C7EA
	b _0223C84A
_0223C7B8:
	ldr r0, _0223C92C @ =0x00002F64
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223C924
_0223C7C6:
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223C930 @ =0x00002ED8
	adds r1, r5, #0
	adds r0, r4, r0
	bl ov62_02232394
	adds r0, r5, #0
	bl ov62_02239D8C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223C7EA:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	movs r2, #1
	adds r1, r4, r1
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	bne _0223C802
	b _0223C924
_0223C802:
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	movs r1, #3
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	adds r3, r1, #0
	bl FUN_0200710C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223C924
_0223C84A:
	movs r1, #0x69
	lsls r1, r1, #2
	adds r0, r4, r1
	adds r1, r1, #4
	adds r1, r4, r1
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223C924
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r1, _0223C92C @ =0x00002F64
	adds r0, r5, #0
	ldr r1, [r4, r1]
	adds r1, #0x79
	bl ov62_0223B768
	adds r0, r5, #0
	bl ov62_0223B888
	ldr r0, _0223C934 @ =0x0000047C
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #2
	bl ov62_022335BC
	ldr r3, _0223C938 @ =0x00002EAC
	ldr r0, _0223C93C @ =0x0000049C
	adds r2, r4, r3
	subs r3, #0xa0
	adds r0, r5, r0
	adds r1, r5, #0
	adds r3, r4, r3
	bl ov62_02232AAC
	ldr r1, _0223C934 @ =0x0000047C
	adds r0, r5, r1
	adds r1, #0x20
	adds r1, r5, r1
	bl ov62_02233638
	ldr r0, _0223C93C @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #1
	bl ov62_0223331C
	ldr r0, _0223C93C @ =0x0000049C
	movs r1, #0x38
	adds r0, r5, r0
	movs r2, #0xb0
	bl ov62_02233434
	ldr r0, _0223C92C @ =0x00002F64
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223C900
	ldr r0, _0223C934 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223C93C @ =0x0000049C
	adds r0, r5, r1
	subs r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _0223C93C @ =0x0000049C
	ldr r2, _0223C940 @ =0x00002E0C
	adds r0, r5, r0
	adds r1, r5, #0
	adds r2, r4, r2
	bl ov62_02232BB4
	ldr r2, _0223C944 @ =0x000004D8
	movs r0, #0x6f
	ldr r3, [r5, r2]
	movs r2, #0x18
	muls r2, r3, r2
	lsls r0, r0, #4
	adds r2, #0x44
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	movs r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0208B8EC
_0223C900:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
_0223C924:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223C92C: .4byte 0x00002F64
_0223C930: .4byte 0x00002ED8
_0223C934: .4byte 0x0000047C
_0223C938: .4byte 0x00002EAC
_0223C93C: .4byte 0x0000049C
_0223C940: .4byte 0x00002E0C
_0223C944: .4byte 0x000004D8
	thumb_func_end ov62_0223C79C

	thumb_func_start ov62_0223C948
ov62_0223C948: @ 0x0223C948
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r7, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223C95E
	cmp r1, #1
	beq _0223C9B4
	b _0223CA0A
_0223C95E:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223ABE4
	adds r0, r5, #0
	bl ov62_0223A110
	ldr r0, _0223CAA0 @ =0x000006F4
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0208B8B0
	ldr r0, _0223CAA0 @ =0x000006F4
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0208B8B0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223CA9C
_0223C9B4:
	bl ov62_02233790
	cmp r0, #0
	beq _0223CA9C
	movs r6, #0
	adds r4, r7, #0
_0223C9C0:
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02024034
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #5
	blt _0223C9C0
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r7, r0
	bl ov62_02231688
	adds r0, r5, #0
	bl ov62_0223146C
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223CA9C
_0223CA0A:
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223CA64
	adds r0, r5, #0
	bl ov62_022318E8
	movs r0, #0x6b
	lsls r0, r0, #2
	adds r0, r7, r0
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	movs r0, #0xe1
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_02030A98
	adds r0, r7, #0
	bl FUN_020181C4
	b _0223CA9C
_0223CA64:
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #1
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r3, #0x6b
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	lsls r3, r3, #2
	ldr r3, [r7, r3]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r1, #3
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223CA9C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223CAA0: .4byte 0x000006F4
	thumb_func_end ov62_0223C948

	thumb_func_start ov62_0223CAA4
ov62_0223CAA4: @ 0x0223CAA4
	bx lr
	.align 2, 0
	thumb_func_end ov62_0223CAA4

	thumb_func_start ov62_0223CAA8
ov62_0223CAA8: @ 0x0223CAA8
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r1, [r1]
	ldr r4, [r0, r2]
	cmp r1, #1
	bne _0223CAC0
	movs r0, #0xe2
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0223CAC0:
	bl ov62_0224112C
	movs r1, #0xe3
	lsls r1, r1, #2
	adds r1, r4, r1
	movs r2, #0x14
	bl FUN_0222BD18
	movs r1, #0xe2
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #4
	adds r1, #0x54
	ldr r2, _0223CAE8 @ =0x00002A30
	adds r0, r4, r0
	adds r1, r4, r1
	blx FUN_020C4DB0
	pop {r4, pc}
	nop
_0223CAE8: .4byte 0x00002A30
	thumb_func_end ov62_0223CAA8

	thumb_func_start ov62_0223CAEC
ov62_0223CAEC: @ 0x0223CAEC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, _0223CBC0 @ =0x00000B0C
	bne _0223CB1A
	ldr r3, _0223CBC4 @ =0x02248F00
	adds r2, r4, r0
	movs r6, #5
_0223CB06:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _0223CB06
	ldr r0, [r3]
	movs r1, #0
	str r0, [r2]
	ldr r0, _0223CBC8 @ =0x00000748
	str r1, [r4, r0]
	b _0223CB46
_0223CB1A:
	ldr r3, _0223CBCC @ =0x02248F2C
	adds r2, r4, r0
	movs r6, #5
_0223CB20:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _0223CB20
	ldr r0, [r3]
	ldr r1, _0223CBD0 @ =0x00000714
	str r0, [r2]
	ldr r3, [r4, r1]
	movs r1, #0x72
	ldr r2, [r4, #0xc]
	lsls r1, r1, #2
	muls r1, r2, r1
	ldrb r1, [r3, r1]
	ldr r0, [r5, #0x4c]
	adds r1, #0x5e
	bl FUN_0200B1EC
	ldr r1, _0223CBC8 @ =0x00000748
	str r0, [r4, r1]
_0223CB46:
	movs r1, #0xb1
	ldr r0, [r4, #0x20]
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r3, [r4, #0xc]
	ldr r0, _0223CBD4 @ =0x0000074C
	lsls r2, r3, #2
	adds r2, r3, r2
	adds r0, r4, r0
	lsls r2, r2, #6
	adds r2, r0, r2
	subs r0, r1, #4
	str r2, [r4, r0]
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223CBD8 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_02233310
	ldr r0, [r4, #0xc]
	ldr r3, _0223CBC0 @ =0x00000B0C
	str r0, [sp]
	ldr r0, [r4, #0x14]
	ldr r2, _0223CBC8 @ =0x00000748
	str r0, [sp, #4]
	ldr r0, [r4, r2]
	subs r2, r2, #4
	str r0, [sp, #8]
	ldr r0, _0223CBD8 @ =0x0000049C
	ldr r2, [r4, r2]
	adds r0, r5, r0
	adds r1, r5, #0
	adds r3, r4, r3
	bl ov62_02232778
	ldr r1, _0223CBDC @ =0x0000047C
	adds r0, r5, r1
	adds r1, #0x20
	adds r1, r5, r1
	bl ov62_02233638
	ldr r0, _0223CBD8 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #1
	bl ov62_0223331C
	ldr r0, _0223CBD8 @ =0x0000049C
	movs r1, #0x70
	adds r0, r5, r0
	movs r2, #0xb8
	bl ov62_02233434
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223CBC0: .4byte 0x00000B0C
_0223CBC4: .4byte 0x02248F00
_0223CBC8: .4byte 0x00000748
_0223CBCC: .4byte 0x02248F2C
_0223CBD0: .4byte 0x00000714
_0223CBD4: .4byte 0x0000074C
_0223CBD8: .4byte 0x0000049C
_0223CBDC: .4byte 0x0000047C
	thumb_func_end ov62_0223CAEC

	thumb_func_start ov62_0223CBE0
ov62_0223CBE0: @ 0x0223CBE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	ldr r0, _0223CF00 @ =0x00000714
	adds r1, r4, #0
	adds r1, #0xe0
	str r1, [r4, r0]
	adds r1, r0, #0
	subs r1, #0xdc
	adds r1, r4, r1
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0223CC12
	cmp r0, #1
	bne _0223CC08
	b _0223CD0C
_0223CC08:
	cmp r0, #2
	bne _0223CC0E
	b _0223CDF8
_0223CC0E:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223CC12:
	movs r6, #0
	adds r5, r6, #0
	str r6, [sp]
_0223CC18:
	ldr r0, [r4, #0x1c]
	ldr r1, [r4, #0xc]
	cmp r0, #0
	bne _0223CC70
	lsls r0, r1, #2
	adds r0, r1, r0
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r2, r5, r0
	ldr r1, _0223CF04 @ =0x00002710
	ldr r0, _0223CF08 @ =0x0000074C
	str r1, [r2, r0]
	subs r0, #0x34
	ldr r2, [r4, r0]
	ldr r1, [r4, #0xc]
	movs r0, #0x48
	muls r0, r1, r0
	adds r0, r2, r0
	adds r0, r6, r0
	ldrb r0, [r0, #4]
	movs r1, #4
	bl ov62_02232234
	ldr r2, [r4, #0xc]
	lsls r1, r2, #2
	adds r1, r2, r1
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r2, r5, r1
	movs r1, #0x75
	lsls r1, r1, #4
	str r0, [r2, r1]
	ldr r2, [r4, #0xc]
	asrs r0, r6, #0x1f
	lsls r1, r2, #2
	adds r1, r2, r1
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r2, r5, r1
	ldr r1, _0223CF0C @ =0x00000754
	str r6, [r2, r1]
	adds r1, r1, #4
	str r0, [r2, r1]
	b _0223CCFA
_0223CC70:
	lsls r0, r1, #2
	adds r0, r1, r0
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r2, r5, r0
	ldr r1, _0223CF10 @ =0x00004E20
	ldr r0, _0223CF08 @ =0x0000074C
	str r1, [r2, r0]
	subs r0, #0x38
	ldr r2, [r4, r0]
	movs r0, #0x72
	ldr r1, [r4, #0xc]
	lsls r0, r0, #2
	muls r0, r1, r0
	adds r0, r2, r0
	adds r0, r6, r0
	ldrb r0, [r0, #4]
	movs r1, #4
	bl ov62_02232234
	ldr r2, [r4, #0xc]
	lsls r1, r2, #2
	adds r1, r2, r1
	lsls r1, r1, #6
	adds r1, r4, r1
	adds r2, r5, r1
	movs r1, #0x75
	lsls r1, r1, #4
	str r0, [r2, r1]
	subs r1, #0x3c
	ldr r2, [r4, r1]
	movs r1, #0x72
	ldr r0, [r4, #0xc]
	lsls r1, r1, #2
	muls r1, r0, r1
	adds r2, r2, r1
	ldr r1, [sp]
	adds r1, r1, r2
	adds r1, #0x14
	ldm r1!, {r2, r3}
	lsls r1, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r1, r5, r0
	ldr r0, _0223CF0C @ =0x00000754
	adds r0, r1, r0
	stm r0!, {r2, r3}
	ldr r1, [r4, #0xc]
	lsls r0, r1, #2
	adds r0, r1, r0
	lsls r0, r0, #6
	adds r0, r4, r0
	adds r3, r0, r5
	ldr r0, _0223CF0C @ =0x00000754
	ldr r2, [r3, r0]
	adds r0, r0, #4
	ldr r1, [r3, r0]
	ldr r7, _0223CF14 @ =0x8AC72304
	ldr r0, _0223CF18 @ =0x89E7FFFF
	subs r0, r2, r0
	sbcs r1, r7
	blo _0223CCFA
	ldr r1, _0223CF18 @ =0x89E7FFFF
	ldr r0, _0223CF0C @ =0x00000754
	str r1, [r3, r0]
	ldr r1, _0223CF14 @ =0x8AC72304
	adds r0, r0, #4
	str r1, [r3, r0]
_0223CCFA:
	ldr r0, [sp]
	adds r6, r6, #1
	adds r0, #8
	adds r5, #0x10
	str r0, [sp]
	cmp r6, #0x10
	blt _0223CC18
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223CD0C:
	movs r1, #0
	adds r0, r1, #0
	adds r7, r1, #0
_0223CD12:
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	cmp r2, #0
	bne _0223CD62
	lsls r2, r3, #2
	adds r2, r3, r2
	lsls r2, r2, #6
	adds r2, r4, r2
	adds r5, r0, r2
	ldr r3, _0223CF1C @ =0x00007530
	ldr r2, _0223CF08 @ =0x0000074C
	str r3, [r5, r2]
	subs r2, #0x34
	ldr r3, [r4, #0xc]
	movs r5, #0x48
	ldr r2, [r4, r2]
	muls r5, r3, r5
	adds r2, r2, r5
	lsls r5, r3, #2
	adds r3, r3, r5
	adds r2, r1, r2
	lsls r3, r3, #6
	adds r3, r4, r3
	adds r5, r0, r3
	movs r3, #0x75
	ldrb r2, [r2, #0x14]
	lsls r3, r3, #4
	str r2, [r5, r3]
	ldr r5, [r4, #0xc]
	asrs r3, r1, #0x1f
	lsls r2, r5, #2
	adds r2, r5, r2
	lsls r2, r2, #6
	adds r2, r4, r2
	ldr r5, _0223CF0C @ =0x00000754
	adds r2, r0, r2
	str r1, [r2, r5]
	adds r5, r5, #4
	str r3, [r2, r5]
	b _0223CDEA
_0223CD62:
	lsls r2, r3, #2
	adds r2, r3, r2
	lsls r2, r2, #6
	adds r2, r4, r2
	adds r5, r0, r2
	ldr r3, _0223CF20 @ =0x00009C40
	ldr r2, _0223CF08 @ =0x0000074C
	str r3, [r5, r2]
	subs r2, #0x38
	movs r5, #0x72
	ldr r3, [r4, #0xc]
	lsls r5, r5, #2
	ldr r2, [r4, r2]
	muls r5, r3, r5
	adds r2, r2, r5
	lsls r5, r3, #2
	adds r2, r1, r2
	adds r3, r3, r5
	adds r2, #0x94
	lsls r3, r3, #6
	adds r3, r4, r3
	adds r5, r0, r3
	movs r3, #0x75
	ldrb r2, [r2]
	lsls r3, r3, #4
	str r2, [r5, r3]
	adds r2, r3, #0
	subs r2, #0x3c
	movs r3, #0x72
	ldr r5, [r4, #0xc]
	lsls r3, r3, #2
	ldr r2, [r4, r2]
	muls r3, r5, r3
	adds r2, r2, r3
	adds r6, r7, r2
	adds r6, #0xa0
	ldm r6!, {r2, r3}
	lsls r6, r5, #2
	adds r5, r5, r6
	lsls r5, r5, #6
	adds r5, r4, r5
	adds r6, r0, r5
	ldr r5, _0223CF0C @ =0x00000754
	adds r5, r6, r5
	stm r5!, {r2, r3}
	ldr r3, [r4, #0xc]
	lsls r2, r3, #2
	adds r2, r3, r2
	lsls r2, r2, #6
	adds r2, r4, r2
	adds r5, r2, r0
	ldr r2, _0223CF0C @ =0x00000754
	ldr r3, [r5, r2]
	adds r2, r2, #4
	ldr r2, [r5, r2]
	ldr r6, _0223CF14 @ =0x8AC72304
	str r6, [sp, #0xc]
	ldr r6, _0223CF18 @ =0x89E7FFFF
	subs r3, r3, r6
	ldr r3, [sp, #0xc]
	sbcs r2, r3
	blo _0223CDEA
	ldr r3, _0223CF18 @ =0x89E7FFFF
	ldr r2, _0223CF0C @ =0x00000754
	str r3, [r5, r2]
	ldr r3, _0223CF14 @ =0x8AC72304
	adds r2, r2, #4
	str r3, [r5, r2]
_0223CDEA:
	adds r1, r1, #1
	adds r0, #0x10
	adds r7, #8
	cmp r1, #0xc
	blt _0223CD12
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223CDF8:
	movs r7, #0
	adds r0, r7, #0
	adds r1, r7, #0
	str r7, [sp, #0x10]
_0223CE00:
	ldr r2, [r4, #0x1c]
	ldr r3, [r4, #0xc]
	cmp r2, #0
	bne _0223CE50
	lsls r2, r3, #2
	adds r2, r3, r2
	lsls r2, r2, #6
	adds r2, r4, r2
	adds r5, r0, r2
	ldr r3, _0223CF24 @ =0x0000C350
	ldr r2, _0223CF08 @ =0x0000074C
	str r3, [r5, r2]
	subs r2, #0x34
	ldr r3, [r4, #0xc]
	movs r5, #0x48
	ldr r2, [r4, r2]
	muls r5, r3, r5
	adds r2, r2, r5
	lsls r5, r3, #2
	adds r3, r3, r5
	adds r2, r1, r2
	lsls r3, r3, #6
	adds r3, r4, r3
	adds r5, r0, r3
	movs r3, #0x75
	ldrh r2, [r2, #0x20]
	lsls r3, r3, #4
	str r2, [r5, r3]
	ldr r5, [r4, #0xc]
	asrs r3, r7, #0x1f
	lsls r2, r5, #2
	adds r2, r5, r2
	lsls r2, r2, #6
	adds r2, r4, r2
	ldr r5, _0223CF0C @ =0x00000754
	adds r2, r0, r2
	str r7, [r2, r5]
	adds r5, r5, #4
	str r3, [r2, r5]
	b _0223CEEA
_0223CE50:
	lsls r2, r3, #2
	adds r2, r3, r2
	lsls r2, r2, #6
	adds r2, r4, r2
	adds r5, r0, r2
	ldr r3, _0223CF28 @ =0x0000EA60
	ldr r2, _0223CF08 @ =0x0000074C
	str r3, [r5, r2]
	subs r2, #0x38
	movs r5, #0x72
	ldr r3, [r4, #0xc]
	lsls r5, r5, #2
	ldr r2, [r4, r2]
	muls r5, r3, r5
	adds r2, r2, r5
	adds r5, r1, r2
	movs r2, #1
	lsls r2, r2, #8
	ldrh r2, [r5, r2]
	lsls r5, r3, #2
	adds r3, r3, r5
	lsls r3, r3, #6
	adds r3, r4, r3
	adds r5, r0, r3
	movs r3, #0x75
	lsls r3, r3, #4
	str r2, [r5, r3]
	ldr r2, [r4, #0xc]
	str r2, [sp, #4]
	adds r2, r3, #0
	subs r2, #0x3c
	movs r3, #0x72
	ldr r5, [sp, #4]
	lsls r3, r3, #2
	ldr r2, [r4, r2]
	muls r3, r5, r3
	adds r3, r2, r3
	ldr r2, [sp, #0x10]
	adds r3, r2, r3
	movs r2, #0x4a
	lsls r2, r2, #2
	adds r5, r3, r2
	ldm r5!, {r2, r3}
	ldr r5, [sp, #4]
	lsls r6, r5, #2
	adds r5, r5, r6
	lsls r5, r5, #6
	adds r5, r4, r5
	adds r6, r0, r5
	ldr r5, _0223CF0C @ =0x00000754
	adds r5, r6, r5
	stm r5!, {r2, r3}
	ldr r3, [r4, #0xc]
	lsls r2, r3, #2
	adds r2, r3, r2
	lsls r2, r2, #6
	adds r2, r4, r2
	adds r3, r2, r0
	ldr r2, _0223CF0C @ =0x00000754
	str r3, [sp, #8]
	ldr r5, [r3, r2]
	adds r2, r2, #4
	ldr r3, [r3, r2]
	ldr r2, _0223CF14 @ =0x8AC72304
	mov ip, r2
	ldr r2, _0223CF18 @ =0x89E7FFFF
	subs r2, r5, r2
	mov r2, ip
	sbcs r3, r2
	blo _0223CEEA
	ldr r5, _0223CF18 @ =0x89E7FFFF
	ldr r3, [sp, #8]
	ldr r2, _0223CF0C @ =0x00000754
	str r5, [r3, r2]
	ldr r5, _0223CF14 @ =0x8AC72304
	adds r2, r2, #4
	str r5, [r3, r2]
_0223CEEA:
	ldr r2, [sp, #0x10]
	adds r7, r7, #1
	adds r2, #8
	adds r0, #0x10
	adds r1, r1, #2
	str r2, [sp, #0x10]
	cmp r7, #0x14
	blt _0223CE00
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223CF00: .4byte 0x00000714
_0223CF04: .4byte 0x00002710
_0223CF08: .4byte 0x0000074C
_0223CF0C: .4byte 0x00000754
_0223CF10: .4byte 0x00004E20
_0223CF14: .4byte 0x8AC72304
_0223CF18: .4byte 0x89E7FFFF
_0223CF1C: .4byte 0x00007530
_0223CF20: .4byte 0x00009C40
_0223CF24: .4byte 0x0000C350
_0223CF28: .4byte 0x0000EA60
	thumb_func_end ov62_0223CBE0

	thumb_func_start ov62_0223CF2C
ov62_0223CF2C: @ 0x0223CF2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0x86
	ldr r0, [sp, #0x14]
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	ldr r5, _0223CFD8 @ =0x02248EA0
	movs r6, #1
	adds r4, #0x84
_0223CF44:
	ldr r0, [r5, #4]
	adds r1, r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r2, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	muls r0, r1, r0
	adds r6, r6, r0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x48]
	adds r1, #0x50
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov62_0223429C
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223CFDC @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r7, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	adds r4, #0x10
	adds r0, r0, #1
	adds r5, #0x10
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0223CF44
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223CFD8: .4byte 0x02248EA0
_0223CFDC: .4byte 0x000F0D00
	thumb_func_end ov62_0223CF2C

	thumb_func_start ov62_0223CFE0
ov62_0223CFE0: @ 0x0223CFE0
	push {r3, r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r5, [r0, r1]
	movs r4, #0
	adds r5, #0x84
_0223CFEC:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #2
	blt _0223CFEC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223CFE0

	thumb_func_start ov62_0223D004
ov62_0223D004: @ 0x0223D004
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _0223D0F4 @ =0x02248EC0
	str r0, [sp, #0x1c]
	ldr r4, [sp, #0x1c]
	movs r0, #0
	ldr r5, _0223D0F8 @ =0x02248EE0
	movs r7, #1
	str r0, [sp, #0x18]
	adds r4, #0x24
_0223D020:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldr r0, [sp, #0x1c]
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	bne _0223D068
	ldr r0, [r6, #4]
	adds r1, r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r6, #8]
	movs r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r6, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r6]
	ldr r0, [r0, #0x24]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r1, [r6, #8]
	ldr r0, [r6, #0xc]
	b _0223D0A0
_0223D068:
	ldr r0, [r5, #4]
	adds r1, r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
_0223D0A0:
	muls r0, r1, r0
	adds r7, r7, r0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	movs r1, #0x43
	ldr r0, [r0, #0x48]
	bl FUN_0200B1EC
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223D0FC @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x20]
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	adds r4, #0x10
	adds r0, r0, #1
	adds r6, #0x10
	adds r5, #0x10
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0223D020
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223D0F4: .4byte 0x02248EC0
_0223D0F8: .4byte 0x02248EE0
_0223D0FC: .4byte 0x000F0D00
	thumb_func_end ov62_0223D004

	thumb_func_start ov62_0223D100
ov62_0223D100: @ 0x0223D100
	push {r3, r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r5, [r0, r1]
	movs r4, #0
	adds r5, #0x24
_0223D10C:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #2
	blt _0223D10C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223D100

	thumb_func_start ov62_0223D124
ov62_0223D124: @ 0x0223D124
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, #0x57
	blt _0223D134
	movs r5, #0
	bl FUN_02022974
_0223D134:
	ldr r6, _0223D158 @ =0x022497E8
	lsls r5, r5, #2
	ldr r1, [r6, r5]
	ldr r0, _0223D15C @ =0x0000FFFF
	cmp r1, r0
	bne _0223D144
	bl FUN_02022974
_0223D144:
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0202CD88
	ldr r1, [r6, r5]
	bl FUN_0202CFB8
	pop {r4, r5, r6, pc}
	nop
_0223D158: .4byte 0x022497E8
_0223D15C: .4byte 0x0000FFFF
	thumb_func_end ov62_0223D124

	thumb_func_start ov62_0223D160
ov62_0223D160: @ 0x0223D160
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x30
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x14]
	movs r0, #0x66
	bl ov62_02231690
	adds r6, r0, #0
	adds r0, r4, #0
	adds r0, #0x24
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #0x4c]
	bne _0223D1A6
	ldr r1, _0223D390 @ =0x00000718
	ldr r3, [r4, #0xc]
	movs r2, #0x48
	ldr r1, [r4, r1]
	muls r2, r3, r2
	ldrb r1, [r1, r2]
	subs r1, r1, #1
	bl FUN_0200B1EC
	b _0223D1BA
_0223D1A6:
	ldr r1, _0223D394 @ =0x00000714
	movs r2, #0x72
	ldr r3, [r4, #0xc]
	lsls r2, r2, #2
	ldr r1, [r4, r1]
	muls r2, r3, r2
	ldrb r1, [r1, r2]
	subs r1, r1, #1
	bl FUN_0200B1EC
_0223D1BA:
	movs r1, #0
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223D398 @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x24
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	adds r0, #0x24
	bl FUN_0201A9A4
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r4, #0
	adds r0, #0x34
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #0x48]
	bne _0223D200
	ldr r1, [r4, #0x14]
	adds r1, #0x52
	bl FUN_0200B1EC
	b _0223D206
_0223D200:
	movs r1, #0x5b
	bl FUN_0200B1EC
_0223D206:
	movs r1, #0
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223D398 @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x34
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	adds r0, #0x34
	bl FUN_0201A9A4
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, _0223D39C @ =0x0000088C
	movs r1, #0x66
	ldr r0, [r5, r0]
	bl FUN_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0223D254
	cmp r0, #1
	beq _0223D292
	cmp r0, #2
	beq _0223D2BC
	b _0223D326
_0223D254:
	ldr r0, _0223D39C @ =0x0000088C
	ldr r0, [r5, r0]
	bl FUN_02030CDC
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x48]
	movs r1, #0x55
	bl FUN_0200B1EC
	adds r7, r0, #0
	ldr r0, [sp, #0x20]
	movs r1, #4
	bl ov62_02232234
	adds r1, r0, #0
	ldr r0, _0223D3A0 @ =0x00000744
	ldr r0, [r4, r0]
	bl FUN_0200B1EC
	str r0, [sp, #0x1c]
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	adds r0, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	b _0223D326
_0223D292:
	ldr r0, _0223D39C @ =0x0000088C
	ldr r0, [r5, r0]
	bl FUN_02030CCC
	str r0, [sp, #0x24]
	ldr r0, [r5, #0x48]
	movs r1, #0x56
	bl FUN_0200B1EC
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x24]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0200C2E0
	b _0223D326
_0223D2BC:
	ldr r0, _0223D39C @ =0x0000088C
	ldr r0, [r5, r0]
	bl FUN_02030BBC
	str r0, [sp, #0x10]
	ldr r0, _0223D39C @ =0x0000088C
	ldr r0, [r5, r0]
	bl FUN_02030BEC
	str r0, [sp, #0x28]
	ldr r0, [r5, #0x48]
	movs r1, #0x57
	bl FUN_0200B1EC
	adds r7, r0, #0
	ldr r0, [sp, #0x28]
	cmp r0, #0
	beq _0223D2E4
	ldr r0, _0223D3A4 @ =0x000001EE
	str r0, [sp, #0x10]
_0223D2E4:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0223D308
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	movs r1, #0x66
	add r2, sp, #0x2c
	bl FUN_0200B274
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x2c
	bl FUN_02023D28
	b _0223D312
_0223D308:
	ldr r0, [r5, #0x48]
	movs r1, #0x15
	bl FUN_0200B1EC
	str r0, [sp, #0x1c]
_0223D312:
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	adds r0, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
_0223D326:
	movs r1, #1
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_0200B48C
	ldr r1, [sp, #0x14]
	adds r0, r6, #0
	adds r2, r7, #0
	bl FUN_0200C388
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223D398 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r2, [sp, #0x14]
	adds r0, #0x34
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r4, #0x34
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200C41C
	adds r0, r6, #0
	bl FUN_0200B3F0
	add sp, #0x1fc
	add sp, #0x30
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223D390: .4byte 0x00000718
_0223D394: .4byte 0x00000714
_0223D398: .4byte 0x000F0D00
_0223D39C: .4byte 0x0000088C
_0223D3A0: .4byte 0x00000744
_0223D3A4: .4byte 0x000001EE
	thumb_func_end ov62_0223D160

	thumb_func_start ov62_0223D3A8
ov62_0223D3A8: @ 0x0223D3A8
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _0223D3DC
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #1
	bl FUN_0200D3F4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #1
	bl FUN_020129D0
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0x80
	movs r2, #0xe8
	bl FUN_0200D4C4
	b _0223D402
_0223D3DC:
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0
	bl FUN_020129D0
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0x50
	movs r2, #0xe8
	bl FUN_0200D4C4
_0223D402:
	adds r0, r4, #0
	adds r0, #0xac
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r0]
	subs r2, #0x2c
	bl FUN_020128C4
	adds r4, #0xc8
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4]
	subs r2, #0x2c
	bl FUN_020128C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_0223D3A8

	thumb_func_start ov62_0223D424
ov62_0223D424: @ 0x0223D424
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	movs r1, #2
	bl ov62_0223131C
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	adds r1, r4, #0
	adds r1, #0xa8
	str r0, [r1]
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	adds r1, r4, #0
	adds r1, #0xc4
	str r0, [r1]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0xa4
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0xc0
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0xa4
	adds r1, #0x14
	movs r2, #0x35
	bl ov62_0223124C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0xc0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	movs r1, #0x20
	movs r2, #0xe8
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xc4
	ldr r0, [r0]
	movs r1, #0x80
	movs r2, #0xe8
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r0, #0xac
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r0]
	subs r2, #0x2c
	bl FUN_020128C4
	adds r0, r4, #0
	adds r0, #0xc8
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r0]
	subs r2, #0x2c
	bl FUN_020128C4
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0
	bl FUN_020129D0
	adds r4, #0xc8
	ldr r0, [r4]
	movs r1, #1
	bl FUN_020129D0
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223D3A8
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223D424

	thumb_func_start ov62_0223D4E4
ov62_0223D4E4: @ 0x0223D4E4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r0, r4, #0
	adds r0, #0xa4
	bl ov62_022312B0
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov62_022312B0
	adds r0, r4, #0
	adds r0, #0xa8
	ldr r0, [r0]
	bl FUN_0200D0F4
	adds r4, #0xc4
	ldr r0, [r4]
	bl FUN_0200D0F4
	adds r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223D4E4

	thumb_func_start ov62_0223D518
ov62_0223D518: @ 0x0223D518
	push {r3, r4, r5}
	sub sp, #0xc
	ldr r5, _0223D53C @ =0x02248E88
	adds r2, r0, #0
	ldm r5!, {r0, r1}
	add r4, sp, #0
	adds r3, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r2, #0x14]
	lsls r0, r0, #2
	ldr r0, [r3, r0]
	str r0, [r2, #0x20]
	add sp, #0xc
	pop {r3, r4, r5}
	bx lr
	nop
_0223D53C: .4byte 0x02248E88
	thumb_func_end ov62_0223D518

	thumb_func_start ov62_0223D540
ov62_0223D540: @ 0x0223D540
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r5, r2]
	cmp r1, #0
	bne _0223D5A2
	cmp r0, #0
	beq _0223D558
	cmp r0, #1
	beq _0223D576
	b _0223D594
_0223D558:
	adds r0, r5, #0
	bl ov62_02234520
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	blx FUN_020E1F6C
	str r1, [r4, #0xc]
	adds r0, r5, #0
	movs r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_0223D576:
	adds r0, r5, #0
	bl ov62_02234520
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	ldr r1, [r4, #0x18]
	blx FUN_020E1F6C
	str r1, [r4, #0x14]
	adds r0, r5, #0
	movs r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_0223D594:
	adds r0, r5, #0
	bl ov62_02234520
	adds r0, r5, #0
	movs r1, #7
	bl ov62_0222FB60
_0223D5A2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223D540

	thumb_func_start ov62_0223D5A4
ov62_0223D5A4: @ 0x0223D5A4
	push {r3, r4, r5, lr}
	ldr r1, _0223D634 @ =0x00000B38
	adds r5, r0, #0
	movs r0, #0x66
	bl FUN_02018144
	ldr r2, _0223D634 @ =0x00000B38
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x86
	lsls r0, r0, #4
	str r4, [r5, r0]
	adds r0, #0xc
	ldr r0, [r5, r0]
	str r0, [r4, #0x1c]
	movs r0, #3
	str r0, [r4, #0x10]
	adds r0, r5, #0
	bl FUN_0208BE68
	cmp r0, #0
	bne _0223D5DA
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	str r0, [r4, #0x10]
_0223D5DA:
	movs r0, #3
	str r0, [r4, #0x18]
	adds r0, r4, #0
	bl ov62_0223D518
	ldr r1, [r5, #0x48]
	ldr r0, _0223D638 @ =0x00000744
	str r1, [r4, r0]
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	bl ov62_022315C8
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223D63C @ =0x02248E94
	ldr r2, _0223D640 @ =ov62_0223D540
	movs r1, #3
	adds r3, r5, #0
	bl FUN_02023FCC
	adds r4, #0xdc
	str r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0222FB60
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223D634: .4byte 0x00000B38
_0223D638: .4byte 0x00000744
_0223D63C: .4byte 0x02248E94
_0223D640: .4byte ov62_0223D540
	thumb_func_end ov62_0223D5A4

	thumb_func_start ov62_0223D644
ov62_0223D644: @ 0x0223D644
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223D65A
	cmp r1, #1
	beq _0223D6B8
	b _0223D72E
_0223D65A:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _0223D66E
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223D66E:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223D73E
_0223D6B8:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02231454
	adds r0, r5, #0
	bl ov62_0223D424
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #4
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #0
	bl FUN_02019060
	movs r0, #7
	movs r1, #2
	bl FUN_02019060
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223376C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223D73E
_0223D72E:
	bl ov62_02233790
	cmp r0, #0
	beq _0223D73E
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
_0223D73E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223D644

	thumb_func_start ov62_0223D744
ov62_0223D744: @ 0x0223D744
	push {r3, r4, r5, lr}
	sub sp, #8
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223D75E
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223D75E:
	ldr r0, [r4, #8]
	cmp r0, #6
	bls _0223D766
	b _0223DA8C
_0223D766:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223D772: @ jump table
	.2byte _0223D780 - _0223D772 - 2 @ case 0
	.2byte _0223D7C0 - _0223D772 - 2 @ case 1
	.2byte _0223D7D8 - _0223D772 - 2 @ case 2
	.2byte _0223D8C2 - _0223D772 - 2 @ case 3
	.2byte _0223D8E2 - _0223D772 - 2 @ case 4
	.2byte _0223D9A6 - _0223D772 - 2 @ case 5
	.2byte _0223DA04 - _0223D772 - 2 @ case 6
_0223D780:
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r1, _0223DABC @ =0x00000117
	adds r0, r4, #0
	bl ov62_02231AAC
	ldr r0, _0223DAC0 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223D7C0:
	adds r0, r4, #0
	bl ov62_0224112C
	bl FUN_0222B2B8
	cmp r0, #1
	beq _0223D7D0
	b _0223DAB4
_0223D7D0:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223D7D8:
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	bne _0223D816
	ldr r0, _0223DAC0 @ =0x00000565
	movs r1, #0
	bl FUN_020057A4
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r3, [sp, #4]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #4
	bl ov62_022348B8
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #5
	str r0, [r4, #8]
	b _0223DAB4
_0223D816:
	movs r0, #0x71
	lsls r0, r0, #4
	adds r1, r5, r0
	adds r0, #0xc
	str r1, [r5, r0]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02025E5C
	bl FUN_0202CC58
	ldr r1, _0223DAC4 @ =0x00000728
	strh r0, [r5, r1]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02025E5C
	bl FUN_0202CC5C
	ldr r1, _0223DAC8 @ =0x0000072A
	strb r0, [r5, r1]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02025E5C
	bl FUN_0202CC60
	ldr r1, _0223DACC @ =0x0000072B
	strb r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0]
	adds r0, r1, #1
	strb r2, [r5, r0]
	adds r0, r1, #0
	subs r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0, #1]
	adds r0, r1, #0
	adds r0, #9
	strb r2, [r5, r0]
	adds r0, r1, #0
	subs r0, #0xf
	ldr r0, [r5, r0]
	ldrb r2, [r0, #2]
	adds r0, r1, #0
	adds r0, #0x11
	strb r2, [r5, r0]
	adds r1, r1, #1
	ldrb r1, [r5, r1]
	adds r0, r4, #0
	subs r1, r1, #1
	bl ov62_0223D124
	movs r1, #0x73
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r1, r1, #4
	ldrb r1, [r5, r1]
	adds r0, r4, #0
	subs r1, r1, #1
	bl ov62_0223D124
	ldr r1, _0223DAD0 @ =0x00000738
	str r0, [r5, r1]
	adds r1, r1, #4
	ldrb r1, [r5, r1]
	adds r0, r4, #0
	subs r1, r1, #1
	bl ov62_0223D124
	movs r1, #0x1d
	lsls r1, r1, #6
	str r0, [r5, r1]
	ldr r0, _0223DAC0 @ =0x00000565
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223D8C2:
	adds r0, r4, #0
	bl ov62_0224112C
	ldr r1, _0223DAD4 @ =0x0000088C
	ldr r2, _0223DAD8 @ =0x0000072C
	ldr r1, [r4, r1]
	adds r2, r5, r2
	bl FUN_0222B2D8
	cmp r0, #1
	beq _0223D8DA
	b _0223DAB4
_0223D8DA:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223D8E2:
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	bne _0223D920
	ldr r0, _0223DAC0 @ =0x00000565
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp, #4]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #5
	bl ov62_022348B8
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #5
	str r0, [r4, #8]
	b _0223DAB4
_0223D920:
	ldr r1, [r5, #0x1c]
	movs r0, #0
	cmp r1, #0
	bne _0223D948
	ldr r1, _0223DADC @ =0x00000718
	ldr r2, [r5, r1]
	ldrb r1, [r2]
	cmp r1, #0
	beq _0223D944
	adds r1, r2, #0
	adds r1, #0x48
	ldrb r1, [r1]
	cmp r1, #0
	beq _0223D944
	adds r2, #0x90
	ldrb r1, [r2]
	cmp r1, #0
	bne _0223D966
_0223D944:
	movs r0, #1
	b _0223D966
_0223D948:
	ldr r1, _0223DAE0 @ =0x00000714
	ldr r3, [r5, r1]
	ldrb r1, [r3]
	cmp r1, #0
	beq _0223D964
	movs r1, #0x72
	lsls r1, r1, #2
	ldrb r2, [r3, r1]
	cmp r2, #0
	beq _0223D964
	lsls r1, r1, #1
	ldrb r1, [r3, r1]
	cmp r1, #0
	bne _0223D966
_0223D964:
	movs r0, #1
_0223D966:
	cmp r0, #0
	beq _0223D992
	movs r2, #0
	adds r0, r4, #0
	movs r1, #5
	adds r3, r2, #0
	bl ov62_022348B8
	movs r1, #0x4b
	movs r0, #0x51
	lsls r1, r1, #2
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #5
	str r0, [r4, #8]
	b _0223DAB4
_0223D992:
	ldr r0, _0223DAC0 @ =0x00000565
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _0223DAE4 @ =0x0000055F
	bl FUN_02005748
	movs r0, #0xff
	str r0, [r4, #8]
	b _0223DAB4
_0223D9A6:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223D4E4
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	bl FUN_02024034
	adds r5, #8
	adds r0, r5, #0
	bl ov62_02231688
	adds r0, r4, #0
	bl ov62_0223146C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223DAB4
_0223DA04:
	adds r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _0223DAB4
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223DA5A
	adds r0, r4, #0
	bl ov62_022318E8
	adds r0, r5, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r4, #0x10]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r5, #0
	bl FUN_020181C4
	b _0223DAB4
_0223DA5A:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223DAB4
_0223DA8C:
	adds r0, r4, #0
	bl ov62_0223CBE0
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
_0223DAB4:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223DABC: .4byte 0x00000117
_0223DAC0: .4byte 0x00000565
_0223DAC4: .4byte 0x00000728
_0223DAC8: .4byte 0x0000072A
_0223DACC: .4byte 0x0000072B
_0223DAD0: .4byte 0x00000738
_0223DAD4: .4byte 0x0000088C
_0223DAD8: .4byte 0x0000072C
_0223DADC: .4byte 0x00000718
_0223DAE0: .4byte 0x00000714
_0223DAE4: .4byte 0x0000055F
	thumb_func_end ov62_0223D744

	thumb_func_start ov62_0223DAE8
ov62_0223DAE8: @ 0x0223DAE8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223DB00
	cmp r1, #1
	beq _0223DBAC
	b _0223DC0E
_0223DB00:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x21
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x22
	movs r3, #7
	bl FUN_0200710C
	adds r0, r5, #0
	bl ov62_0223D004
	adds r0, r5, #0
	bl ov62_0223D160
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223DC1C @ =0x0000047C
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #2
	bl ov62_022335BC
	adds r0, r5, #0
	bl ov62_0223CAEC
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223CF2C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223DC14
_0223DBAC:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223DBDC
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223DBDC:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223DC14
_0223DC0E:
	movs r1, #6
	bl ov62_0222FB60
_0223DC14:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0223DC1C: .4byte 0x0000047C
	thumb_func_end ov62_0223DAE8

	thumb_func_start ov62_0223DC20
ov62_0223DC20: @ 0x0223DC20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, _0223DC60 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223DC64 @ =0x0000049C
	adds r0, r5, r1
	subs r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022332AC
	ldr r0, _0223DC68 @ =0x00000748
	adds r1, r5, #0
	ldr r0, [r4, r0]
	str r0, [sp]
	ldr r0, _0223DC64 @ =0x0000049C
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x14]
	adds r0, r5, r0
	bl ov62_02232C78
	adds r4, #0xdc
	ldr r0, [r4]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223DC60: .4byte 0x0000047C
_0223DC64: .4byte 0x0000049C
_0223DC68: .4byte 0x00000748
	thumb_func_end ov62_0223DC20

	thumb_func_start ov62_0223DC6C
ov62_0223DC6C: @ 0x0223DC6C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223DC82
	cmp r1, #1
	beq _0223DCD8
	b _0223DD2A
_0223DC82:
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223DD34 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233600
	ldr r0, _0223DD38 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223DD3C @ =0x00000748
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223DCA4
	bl FUN_020237BC
_0223DCA4:
	ldr r0, _0223DD38 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_022334FC
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, _0223DD40 @ =0x000006F4
	movs r1, #0
	ldr r0, [r5, r0]
	bl FUN_0208B9E0
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223DD30
_0223DCD8:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223DCF8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223DCF8:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223DD30
_0223DD2A:
	movs r1, #8
	bl ov62_0222FB60
_0223DD30:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223DD34: .4byte 0x0000047C
_0223DD38: .4byte 0x0000049C
_0223DD3C: .4byte 0x00000748
_0223DD40: .4byte 0x000006F4
	thumb_func_end ov62_0223DC6C

	thumb_func_start ov62_0223DD44
ov62_0223DD44: @ 0x0223DD44
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223DD5A
	cmp r1, #1
	beq _0223DD8A
	b _0223DDD6
_0223DD5A:
	bl ov62_0223CFE0
	adds r0, r5, #0
	bl ov62_0223D100
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223D4E4
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r4, #0xdc
	ldr r0, [r4]
	bl FUN_02024034
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223DE5A
_0223DD8A:
	movs r1, #1
	bl ov62_02234540
	adds r4, #8
	adds r0, r4, #0
	bl ov62_02231688
	adds r0, r5, #0
	bl ov62_0223146C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223DE5A
_0223DDD6:
	bl ov62_02233790
	cmp r0, #0
	beq _0223DE5A
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223DE2A
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r4, #0
	bl FUN_020181C4
	b _0223DE5A
_0223DE2A:
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223DE5A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223DD44

	thumb_func_start ov62_0223DE60
ov62_0223DE60: @ 0x0223DE60
	push {r3, lr}
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0223DE60

	thumb_func_start ov62_0223DE6C
ov62_0223DE6C: @ 0x0223DE6C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223DE86
	cmp r1, #1
	beq _0223DEBC
	cmp r1, #2
	beq _0223DED4
	b _0223DEFE
_0223DE86:
	bl ov62_0223CBE0
	adds r0, r4, #0
	bl ov62_0223D518
	adds r0, r5, #0
	bl ov62_0223D100
	ldr r0, _0223DF08 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223DF0C @ =0x00000748
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0223DEAA
	bl FUN_020237BC
_0223DEAA:
	ldr r0, _0223DF08 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_022334FC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223DF04
_0223DEBC:
	movs r2, #1
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223DF04
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223DF04
_0223DED4:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223DF04
	adds r0, r5, #0
	bl ov62_0223D004
	adds r0, r5, #0
	bl ov62_0223D160
	adds r0, r5, #0
	bl ov62_0223CAEC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223DF04
_0223DEFE:
	movs r1, #6
	bl ov62_0222FB60
_0223DF04:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223DF08: .4byte 0x0000049C
_0223DF0C: .4byte 0x00000748
	thumb_func_end ov62_0223DE6C

	thumb_func_start ov62_0223DF10
ov62_0223DF10: @ 0x0223DF10
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r1, [r1]
	ldr r4, [r0, r2]
	cmp r1, #1
	bne _0223DF2A
	movs r0, #0x71
	lsls r0, r0, #4
	adds r1, r4, r0
	adds r0, #0xc
	str r1, [r4, r0]
	pop {r4, pc}
_0223DF2A:
	bl ov62_0224112C
	ldr r1, _0223DF48 @ =0x0000071C
	adds r1, r4, r1
	bl FUN_0222BD78
	ldr r1, _0223DF48 @ =0x0000071C
	movs r2, #4
	ldr r0, [r4, r1]
	subs r1, #0xc
	adds r1, r4, r1
	blx FUN_020C4DB0
	pop {r4, pc}
	nop
_0223DF48: .4byte 0x0000071C
	thumb_func_end ov62_0223DF10

	thumb_func_start ov62_0223DF4C
ov62_0223DF4C: @ 0x0223DF4C
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r1, [r1]
	ldr r4, [r0, r2]
	cmp r1, #1
	bne _0223DF6E
	adds r1, r4, #0
	ldr r0, _0223DF9C @ =0x00000714
	adds r1, #0xe0
	str r1, [r4, r0]
	adds r1, r0, #0
	subs r1, #0xdc
	adds r1, r4, r1
	adds r0, r0, #4
	str r1, [r4, r0]
	pop {r4, pc}
_0223DF6E:
	bl ov62_0224112C
	ldr r2, _0223DF9C @ =0x00000714
	adds r1, r4, r2
	adds r2, r2, #4
	adds r2, r4, r2
	bl FUN_0222BDAC
	ldr r0, _0223DF9C @ =0x00000714
	adds r1, r4, #0
	ldr r0, [r4, r0]
	ldr r2, _0223DFA0 @ =0x00000558
	adds r1, #0xe0
	blx FUN_020C4DB0
	ldr r1, _0223DFA4 @ =0x00000718
	movs r2, #0xd8
	ldr r0, [r4, r1]
	subs r1, #0xe0
	adds r1, r4, r1
	blx FUN_020C4DB0
	pop {r4, pc}
	.align 2, 0
_0223DF9C: .4byte 0x00000714
_0223DFA0: .4byte 0x00000558
_0223DFA4: .4byte 0x00000718
	thumb_func_end ov62_0223DF4C

	thumb_func_start ov62_0223DFA8
ov62_0223DFA8: @ 0x0223DFA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	ldr r4, _0223E014 @ =0x02249064
	add r3, sp, #0xc
	movs r2, #0x3c
_0223DFB2:
	ldrh r1, [r4]
	adds r4, r4, #2
	strh r1, [r3]
	adds r3, r3, #2
	subs r2, r2, #1
	bne _0223DFB2
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _0223E018 @ =0x00002090
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	str r0, [sp]
_0223DFD0:
	ldr r0, [sp]
	ldr r4, [sp, #4]
	lsls r1, r0, #2
	add r0, sp, #0xc
	movs r6, #0
	adds r5, r0, r1
_0223DFDC:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0223DFEE
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl FUN_0200D4C4
_0223DFEE:
	adds r6, r6, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r6, #6
	blt _0223DFDC
	ldr r0, [sp, #4]
	adds r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _0223DFD0
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_0223E014: .4byte 0x02249064
_0223E018: .4byte 0x00002090
	thumb_func_end ov62_0223DFA8

	thumb_func_start ov62_0223E01C
ov62_0223E01C: @ 0x0223E01C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	movs r1, #2
	bl ov62_022312CC
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	movs r1, #0x46
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	movs r1, #0x4d
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0x20
	adds r0, r4, r1
	adds r1, r5, #0
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	movs r0, #0x13
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	movs r0, #0x45
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x13
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #3
	bl FUN_0200D364
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	movs r2, #0xe8
	bl FUN_0200D4C4
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0xe8
	bl FUN_0200D4C4
	movs r0, #0x47
	lsls r0, r0, #2
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x4e
	lsls r0, r0, #2
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223F0A8
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223E01C

	thumb_func_start ov62_0223E0FC
ov62_0223E0FC: @ 0x0223E0FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, _0223E224 @ =0x000008A4
	adds r4, r1, #0
	subs r0, #0x44
	ldr r3, [r5, r0]
	cmp r4, #0x64
	bne _0223E176
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r3, r0]
	str r0, [sp, #0x14]
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r7, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
	b _0223E1EE
_0223E176:
	cmp r4, #0x66
	bne _0223E1E6
	lsls r0, r2, #2
	adds r1, r5, r0
	ldr r0, _0223E224 @ =0x000008A4
	subs r0, #0x18
	ldr r0, [r1, r0]
	str r0, [sp, #0x10]
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	adds r0, r7, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
	b _0223E1EE
_0223E1E6:
	ldr r0, [r5, #0x48]
	bl FUN_0200B1EC
	adds r6, r0, #0
_0223E1EE:
	ldr r0, _0223E224 @ =0x000008A4
	movs r1, #0xcc
	adds r0, r5, r0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223E228 @ =0x000F0D0C
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _0223E224 @ =0x000008A4
	adds r3, r1, #0
	adds r0, r5, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, _0223E224 @ =0x000008A4
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223E224: .4byte 0x000008A4
_0223E228: .4byte 0x000F0D0C
	thumb_func_end ov62_0223E0FC

	thumb_func_start ov62_0223E22C
ov62_0223E22C: @ 0x0223E22C
	push {r3, r4, r5, lr}
	sub sp, #8
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223E246
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223E246:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _0223E24E
	b _0223E3D4
_0223E24E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223E25A: @ jump table
	.2byte _0223E264 - _0223E25A - 2 @ case 0
	.2byte _0223E29A - _0223E25A - 2 @ case 1
	.2byte _0223E2D4 - _0223E25A - 2 @ case 2
	.2byte _0223E31A - _0223E25A - 2 @ case 3
	.2byte _0223E346 - _0223E25A - 2 @ case 4
_0223E264:
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223E288
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	b _0223E294
_0223E288:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_022323B8
_0223E294:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223E29A:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E2BA
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223E2BA:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223E3FE
_0223E2D4:
	adds r0, r4, #0
	movs r1, #0x75
	bl ov62_02231AAC
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, _0223E404 @ =0x00002038
	movs r1, #0
	str r1, [r5, r0]
	ldr r0, _0223E408 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223E3FE
_0223E31A:
	adds r0, r4, #0
	bl ov62_0224112C
	ldr r1, _0223E40C @ =0x000004D4
	ldr r1, [r4, r1]
	lsls r1, r1, #2
	adds r2, r4, r1
	ldr r1, _0223E410 @ =0x00002608
	ldr r2, [r2, r1]
	adds r1, r2, #0
	adds r1, #0xd8
	adds r2, #0xdc
	ldr r1, [r1]
	ldr r2, [r2]
	bl FUN_0222B524
	cmp r0, #1
	bne _0223E3FE
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223E3FE
_0223E346:
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _0223E408 @ =0x00000565
	bne _0223E380
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp, #4]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #8
	bl ov62_022348B8
	ldr r0, [r4, #8]
	movs r1, #0
	adds r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _0223E404 @ =0x00002038
	str r1, [r5, r0]
	b _0223E3B8
_0223E380:
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0xff
	ldr r1, _0223E404 @ =0x00002038
	str r0, [r4, #8]
	movs r2, #1
	str r2, [r5, r1]
	ldr r1, _0223E414 @ =0x0000413C
	adds r2, r4, r1
	ldr r1, _0223E40C @ =0x000004D4
	ldr r1, [r4, r1]
	adds r1, r2, r1
	ldr r2, _0223E418 @ =0x00000878
	str r1, [r4, r2]
	adds r1, r2, #0
	adds r1, #0x3c
	ldr r3, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x85
	str r3, [r5, r1]
	adds r0, #0x85
	adds r2, #0x40
	adds r1, r4, r2
	ldr r0, [r5, r0]
	ldr r2, _0223E41C @ =0x00001D4C
	blx FUN_020C4DB0
_0223E3B8:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	b _0223E3FE
_0223E3D4:
	ldr r0, _0223E404 @ =0x00002038
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0223E3F6
	ldr r0, _0223E420 @ =0x0000055F
	bl FUN_02005748
	ldr r1, _0223E424 @ =0x00002034
	adds r0, r4, #0
	ldr r1, [r5, r1]
	bl ov62_0222FB60
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223381C
	b _0223E3FE
_0223E3F6:
	adds r0, r4, #0
	movs r1, #0x14
	bl ov62_0222FB60
_0223E3FE:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E404: .4byte 0x00002038
_0223E408: .4byte 0x00000565
_0223E40C: .4byte 0x000004D4
_0223E410: .4byte 0x00002608
_0223E414: .4byte 0x0000413C
_0223E418: .4byte 0x00000878
_0223E41C: .4byte 0x00001D4C
_0223E420: .4byte 0x0000055F
_0223E424: .4byte 0x00002034
	thumb_func_end ov62_0223E22C

	thumb_func_start ov62_0223E428
ov62_0223E428: @ 0x0223E428
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0202FF44
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02030A98
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_0223E428

	thumb_func_start ov62_0223E448
ov62_0223E448: @ 0x0223E448
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0223E448

	thumb_func_start ov62_0223E460
ov62_0223E460: @ 0x0223E460
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223E47A
	cmp r1, #1
	beq _0223E48A
	cmp r1, #2
	beq _0223E4B8
	b _0223E504
_0223E47A:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223E50A
_0223E48A:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E50A
	adds r0, r5, #0
	bl ov62_02240A24
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223E50A
_0223E4B8:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E4EA
	adds r0, r5, #0
	movs r1, #0x64
	movs r2, #0
	bl ov62_0223E0FC
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223E4EA:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223E50A
_0223E504:
	movs r1, #0xc
	bl ov62_0222FB60
_0223E50A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223E460

	thumb_func_start ov62_0223E510
ov62_0223E510: @ 0x0223E510
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #7
	bls _0223E524
	b _0223E736
_0223E524:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223E530: @ jump table
	.2byte _0223E540 - _0223E530 - 2 @ case 0
	.2byte _0223E550 - _0223E530 - 2 @ case 1
	.2byte _0223E5A2 - _0223E530 - 2 @ case 2
	.2byte _0223E5C0 - _0223E530 - 2 @ case 3
	.2byte _0223E5F6 - _0223E530 - 2 @ case 4
	.2byte _0223E63A - _0223E530 - 2 @ case 5
	.2byte _0223E680 - _0223E530 - 2 @ case 6
	.2byte _0223E6DC - _0223E530 - 2 @ case 7
_0223E540:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E550:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E588
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r1, _0223E7F0 @ =0x00000116
	adds r0, r4, #0
	movs r2, #0
	bl ov62_0223E0FC
	adds r0, r4, #0
	bl ov62_022342BC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223E588:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223E7E8
_0223E5A2:
	ldr r2, _0223E7F4 @ =0x000004D4
	ldr r1, _0223E7F8 @ =0x00002028
	ldr r2, [r4, r2]
	ldr r1, [r5, r1]
	adds r3, r4, r2
	ldr r2, _0223E7FC @ =0x0000413C
	ldrb r2, [r3, r2]
	bl ov62_022337F0
	cmp r0, #0
	beq _0223E688
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E5C0:
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _0223E800 @ =0x00000565
	bl FUN_02005748
	b _0223E7E8
_0223E5F6:
	bl ov62_022411B8
	cmp r0, #0
	bne _0223E604
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_0223E604:
	movs r1, #0x46
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0
	bl ov62_0223E0FC
	bl FUN_0202FE04
	movs r1, #4
	movs r2, #0
	bl FUN_0202FE98
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r4, #0
	bl ov62_0224112C
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_0222B550
	cmp r0, #1
	bne _0223E688
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E63A:
	bl ov62_022411B8
	cmp r0, #0
	bne _0223E648
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_0223E648:
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _0223E800 @ =0x00000565
	bne _0223E662
	movs r1, #0
	bl FUN_020057A4
	b _0223E66E
_0223E662:
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _0223E804 @ =0x0000055F
	bl FUN_02005748
_0223E66E:
	ldr r0, [r4, #8]
	ldr r1, _0223E808 @ =0x00000119
	adds r0, r0, #1
	str r0, [r4, #8]
	adds r0, r4, #0
	movs r2, #0
	bl ov62_0223E0FC
	b _0223E7E8
_0223E680:
	bl FUN_02022798
	cmp r0, #0
	bne _0223E68A
_0223E688:
	b _0223E7E8
_0223E68A:
	adds r0, r4, #0
	bl ov62_02231A88
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223F038
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	adds r0, r4, #0
	bl ov62_022339A0
	adds r0, r4, #0
	bl ov62_022338A8
	ldr r0, _0223E80C @ =0x0000049C
	adds r0, r4, r0
	bl ov62_02233310
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E6DC:
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02024034
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02024034
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02024034
	adds r0, r4, #0
	bl ov62_0223E428
	adds r5, #8
	adds r0, r5, #0
	bl ov62_02231688
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223146C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #1
	movs r1, #0x66
	bl FUN_020397C8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223E7E8
_0223E736:
	adds r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _0223E7E8
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223E7B8
	adds r0, r4, #0
	bl ov62_022318E8
	adds r0, r5, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r4, #0x10]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r5, #0
	bl FUN_020181C4
	bl FUN_0202F250
	cmp r0, #1
	bne _0223E7E8
	bl FUN_0202F22C
	b _0223E7E8
_0223E7B8:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223E7E8:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0223E7F0: .4byte 0x00000116
_0223E7F4: .4byte 0x000004D4
_0223E7F8: .4byte 0x00002028
_0223E7FC: .4byte 0x0000413C
_0223E800: .4byte 0x00000565
_0223E804: .4byte 0x0000055F
_0223E808: .4byte 0x00000119
_0223E80C: .4byte 0x0000049C
	thumb_func_end ov62_0223E510

	thumb_func_start ov62_0223E810
ov62_0223E810: @ 0x0223E810
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223E828
	cmp r1, #1
	beq _0223E886
	b _0223E8AC
_0223E828:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E86C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x54
	movs r3, #7
	bl FUN_0200710C
	ldr r2, _0223E8B8 @ =0x00002028
	adds r0, r5, #0
	ldr r2, [r4, r2]
	movs r1, #0x66
	bl ov62_0223E0FC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223E86C:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223E8B2
_0223E886:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E8B2
	adds r0, r5, #0
	bl ov62_02240944
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223E8B2
_0223E8AC:
	movs r1, #0xf
	bl ov62_0222FB60
_0223E8B2:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E8B8: .4byte 0x00002028
	thumb_func_end ov62_0223E810

	thumb_func_start ov62_0223E8BC
ov62_0223E8BC: @ 0x0223E8BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r1, [r4, #8]
	ldr r5, [r4, r0]
	cmp r1, #3
	bls _0223E8D0
	b _0223EAD8
_0223E8D0:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223E8DC: @ jump table
	.2byte _0223E8E4 - _0223E8DC - 2 @ case 0
	.2byte _0223E90C - _0223E8DC - 2 @ case 1
	.2byte _0223E946 - _0223E8DC - 2 @ case 2
	.2byte _0223EA6E - _0223E8DC - 2 @ case 3
_0223E8E4:
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223EB04
_0223E90C:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223E92C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223E92C:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223EB04
_0223E946:
	adds r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _0223E986
	movs r0, #0x45
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x13
	lsls r0, r0, #4
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_0200D364
_0223E986:
	adds r0, r4, #0
	bl ov62_0224088C
	adds r0, r4, #0
	bl ov62_02240900
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223EA0A
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234228
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	b _0223EA46
_0223EA0A:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02232394
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02232378
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_022323B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x50
	movs r3, #3
	bl FUN_0200710C
_0223EA46:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #6
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223EB04
_0223EA6E:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223EABE
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223EA9C
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	b _0223EAA8
_0223EA9C:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl ov62_022323B8
_0223EAA8:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223EABE:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223EB04
_0223EAD8:
	ldr r1, _0223EB0C @ =0x00004138
	movs r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0223EAFC
	movs r1, #0x9a
	lsls r1, r1, #6
	adds r5, r4, r1
	ldr r2, _0223EB0C @ =0x00004138
	adds r6, r4, #0
	subs r1, #0x78
_0223EAEE:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	adds r0, r0, #1
	adds r5, #0xe4
	adds r6, r6, #4
	cmp r0, r3
	blt _0223EAEE
_0223EAFC:
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
_0223EB04:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223EB0C: .4byte 0x00004138
	thumb_func_end ov62_0223E8BC

	thumb_func_start ov62_0223EB10
ov62_0223EB10: @ 0x0223EB10
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0223EB10

	thumb_func_start ov62_0223EB28
ov62_0223EB28: @ 0x0223EB28
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223EB3C
	b _0223ED40
_0223EB3C:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223EB48: @ jump table
	.2byte _0223EB50 - _0223EB48 - 2 @ case 0
	.2byte _0223EB78 - _0223EB48 - 2 @ case 1
	.2byte _0223EBC8 - _0223EB48 - 2 @ case 2
	.2byte _0223ECD6 - _0223EB48 - 2 @ case 3
_0223EB50:
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223ED6C
_0223EB78:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223EBAE
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223F038
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223EBAE:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223ED6C
_0223EBC8:
	bl ov62_0223E01C
	ldr r0, _0223ED74 @ =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _0223EC0C
	movs r0, #0x45
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x13
	lsls r0, r0, #4
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_0200D364
_0223EC0C:
	adds r0, r4, #0
	bl ov62_02240900
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223EC7E
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	b _0223ECAE
_0223EC7E:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02232378
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_022323B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x50
	movs r3, #3
	bl FUN_0200710C
_0223ECAE:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #6
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223ED6C
_0223ECD6:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223ED26
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0223ED04
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	b _0223ED10
_0223ED04:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl ov62_022323B8
_0223ED10:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223ED26:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223ED6C
_0223ED40:
	ldr r1, _0223ED78 @ =0x00004138
	movs r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0223ED64
	movs r1, #0x9a
	lsls r1, r1, #6
	adds r5, r4, r1
	ldr r2, _0223ED78 @ =0x00004138
	adds r6, r4, #0
	subs r1, #0x78
_0223ED56:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	adds r0, r0, #1
	adds r5, #0xe4
	adds r6, r6, #4
	cmp r0, r3
	blt _0223ED56
_0223ED64:
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
_0223ED6C:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223ED74: .4byte 0x0000086C
_0223ED78: .4byte 0x00004138
	thumb_func_end ov62_0223EB28

	thumb_func_start ov62_0223ED7C
ov62_0223ED7C: @ 0x0223ED7C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223ED92
	cmp r1, #1
	beq _0223EE04
	b _0223EE7E
_0223ED92:
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	bl ov62_0223E428
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223EDE2
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234228
	b _0223EDEE
_0223EDE2:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232394
_0223EDEE:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0224088C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223EE84
_0223EE04:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223EE64
	movs r0, #0x45
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x13
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #0x6f
	bl ov62_0223124C
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D364
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223F0A8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223EE64:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223EE84
_0223EE7E:
	movs r1, #3
	bl ov62_0222FB60
_0223EE84:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223ED7C

	thumb_func_start ov62_0223EE88
ov62_0223EE88: @ 0x0223EE88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	ldr r1, _0223EF58 @ =0x0000088C
	lsls r6, r2, #2
	adds r4, r5, r1
	ldr r1, [r4, r6]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x48]
	cmp r1, #0
	bne _0223EEA8
	movs r1, #8
	bl FUN_0200B1EC
	adds r4, r0, #0
	b _0223EF06
_0223EEA8:
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	ldr r0, [r5, #0x48]
	movs r1, #7
	bl FUN_0200B1EC
	str r0, [sp, #0x14]
	ldr r0, [r4, r6]
	movs r1, #0x66
	bl FUN_02030B94
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_022349A8
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x14]
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
_0223EF06:
	add r0, sp, #0x18
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	add r1, sp, #0x18
	movs r2, #0x14
	movs r3, #2
	bl FUN_0201A870
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223EF5C @ =0x000E0D00
	adds r2, r4, #0
	str r0, [sp, #8]
	add r0, sp, #0x18
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r2, sp, #0x18
	movs r3, #0x66
	bl FUN_02012BE0
	adds r0, r4, #0
	bl FUN_020237BC
	add r0, sp, #0x18
	bl FUN_0201A8FC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223EF58: .4byte 0x0000088C
_0223EF5C: .4byte 0x000E0D00
	thumb_func_end ov62_0223EE88

	thumb_func_start ov62_0223EF60
ov62_0223EF60: @ 0x0223EF60
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r3, _0223F030 @ =0x02248FA8
	ldr r4, [r0, r1]
	str r0, [sp]
	add r2, sp, #0x20
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r3, _0223F034 @ =0x02248FB8
	add r2, sp, #0x10
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [sp]
	movs r1, #2
	bl ov62_0223136C
	movs r0, #0x45
	lsls r0, r0, #2
	adds r5, r4, r0
	add r0, sp, #0x20
	str r0, [sp, #8]
	movs r0, #0x69
	str r0, [sp, #4]
	ldr r0, [sp]
	movs r6, #0
	str r0, [sp, #0xc]
	adds r0, #0x14
	add r7, sp, #0x10
	str r0, [sp, #0xc]
_0223EFA6:
	ldr r0, [sp]
	movs r1, #2
	bl ov62_022313E0
	movs r1, #0x46
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r1, [sp, #0xc]
	adds r0, r5, #0
	movs r2, #2
	bl ov62_0223118C
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	adds r0, r5, #0
	bl ov62_0223124C
	cmp r6, #3
	beq _0223EFD8
	ldr r1, [sp]
	adds r0, r5, #0
	adds r2, r6, #1
	bl ov62_0223EE88
_0223EFD8:
	movs r0, #0x46
	ldr r2, [sp, #4]
	lsls r0, r0, #2
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	movs r1, #0x32
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, [r7]
	bl FUN_0200D364
	movs r0, #0x47
	lsls r0, r0, #2
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [sp, #8]
	adds r6, r6, #1
	adds r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r4, #0x1c
	adds r0, #0x24
	adds r5, #0x1c
	adds r7, r7, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _0223EFA6
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F030: .4byte 0x02248FA8
_0223F034: .4byte 0x02248FB8
	thumb_func_end ov62_0223EF60

	thumb_func_start ov62_0223F038
ov62_0223F038: @ 0x0223F038
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp]
	ldr r5, [r0, r1]
	movs r0, #0x45
	lsls r0, r0, #2
	movs r6, #0
	adds r4, r5, r0
	adds r7, r0, #4
_0223F04C:
	adds r0, r4, #0
	bl ov62_022312B0
	ldr r0, [r5, r7]
	bl FUN_0200D0F4
	adds r6, r6, #1
	adds r4, #0x1c
	adds r5, #0x1c
	cmp r6, #4
	blt _0223F04C
	ldr r0, [sp]
	bl ov62_022313BC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov62_0223F038

	thumb_func_start ov62_0223F06C
ov62_0223F06C: @ 0x0223F06C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r0, #0x45
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov62_022312B0
	movs r0, #0x13
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov62_022312B0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	adds r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223F06C

	thumb_func_start ov62_0223F0A8
ov62_0223F0A8: @ 0x0223F0A8
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	bne _0223F0DC
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_020129D0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x20
	movs r2, #0xe8
	bl FUN_0200D4C4
	b _0223F102
_0223F0DC:
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_020129D0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x50
	movs r2, #0xe8
	bl FUN_0200D4C4
_0223F102:
	movs r0, #0x47
	lsls r0, r0, #2
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r0, #0x4e
	lsls r0, r0, #2
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_020128C4
	pop {r4, pc}
	thumb_func_end ov62_0223F0A8

	thumb_func_start ov62_0223F124
ov62_0223F124: @ 0x0223F124
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r6, [r0, r1]
	ldr r0, _0223F15C @ =0x00002030
	movs r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	ble _0223F152
	adds r5, r6, #0
	ldr r7, _0223F15C @ =0x00002030
	adds r5, #0x14
_0223F13C:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, r0
	blt _0223F13C
_0223F152:
	ldr r0, _0223F15C @ =0x00002030
	movs r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F15C: .4byte 0x00002030
	thumb_func_end ov62_0223F124

	thumb_func_start ov62_0223F160
ov62_0223F160: @ 0x0223F160
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r6, [r0, r1]
	ldr r0, _0223F198 @ =0x0000202C
	movs r4, #0
	ldr r0, [r6, r0]
	cmp r0, #0
	ble _0223F18E
	adds r5, r6, #0
	ldr r7, _0223F198 @ =0x0000202C
	adds r5, #0x94
_0223F178:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, r0
	blt _0223F178
_0223F18E:
	ldr r0, _0223F198 @ =0x0000202C
	movs r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F198: .4byte 0x0000202C
	thumb_func_end ov62_0223F160

	thumb_func_start ov62_0223F19C
ov62_0223F19C: @ 0x0223F19C
	push {r3, r4, r5, lr}
	ldr r1, _0223F214 @ =0x0000217C
	adds r5, r0, #0
	movs r0, #0x66
	bl FUN_02018144
	ldr r2, _0223F214 @ =0x0000217C
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x86
	lsls r0, r0, #4
	str r4, [r5, r0]
	adds r0, #0xc
	ldr r1, [r5, r0]
	movs r0, #0x4b
	lsls r0, r0, #2
	cmp r1, r0
	bne _0223F1CA
	movs r0, #0
	str r0, [r4, #0xc]
	b _0223F1DE
_0223F1CA:
	adds r0, r0, #1
	cmp r1, r0
	bne _0223F1D6
	movs r0, #1
	str r0, [r4, #0xc]
	b _0223F1DE
_0223F1D6:
	cmp r1, #0xc8
	bne _0223F1DE
	movs r0, #2
	str r0, [r4, #0xc]
_0223F1DE:
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	bl ov62_022315C8
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0222FB60
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223F214: .4byte 0x0000217C
	thumb_func_end ov62_0223F19C

	thumb_func_start ov62_0223F218
ov62_0223F218: @ 0x0223F218
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F232
	cmp r1, #1
	beq _0223F290
	cmp r1, #2
	beq _0223F2EC
	b _0223F328
_0223F232:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _0223F246
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223F246:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223F342
_0223F290:
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #4
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #0
	bl FUN_02019060
	movs r0, #7
	movs r1, #2
	bl FUN_02019060
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223376C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223F342
_0223F2EC:
	bl ov62_02233790
	cmp r0, #0
	beq _0223F342
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02231454
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223E01C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223F342
_0223F328:
	bl ov62_022300BC
	cmp r0, #1
	bne _0223F33A
	adds r0, r5, #0
	movs r1, #0x13
	bl ov62_0222FB60
	b _0223F342
_0223F33A:
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
_0223F342:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0223F218

	thumb_func_start ov62_0223F348
ov62_0223F348: @ 0x0223F348
	push {r3, r4, r5, lr}
	sub sp, #8
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _0223F362
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_0223F362:
	ldr r0, [r4, #8]
	cmp r0, #6
	bls _0223F36A
	b _0223F622
_0223F36A:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223F376: @ jump table
	.2byte _0223F384 - _0223F376 - 2 @ case 0
	.2byte _0223F3DC - _0223F376 - 2 @ case 1
	.2byte _0223F468 - _0223F376 - 2 @ case 2
	.2byte _0223F4EA - _0223F376 - 2 @ case 3
	.2byte _0223F50C - _0223F376 - 2 @ case 4
	.2byte _0223F546 - _0223F376 - 2 @ case 5
	.2byte _0223F57A - _0223F376 - 2 @ case 6
_0223F384:
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, _0223F64C @ =0x0000086C
	movs r1, #0x4b
	ldr r0, [r4, r0]
	lsls r1, r1, #2
	subs r0, r0, r1
	cmp r0, #1
	bhi _0223F3C6
	adds r0, r4, #0
	subs r1, #0x15
	bl ov62_02231AAC
	b _0223F3CE
_0223F3C6:
	adds r0, r4, #0
	subs r1, #8
	bl ov62_02231AAC
_0223F3CE:
	ldr r0, _0223F650 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F3DC:
	ldr r0, _0223F64C @ =0x0000086C
	ldr r1, [r4, r0]
	movs r0, #0x4b
	lsls r0, r0, #2
	cmp r1, r0
	bne _0223F402
	movs r0, #0
	str r0, [r5, #0xc]
	adds r0, r4, #0
	bl ov62_0224112C
	bl FUN_0222B4A8
	cmp r0, #1
	bne _0223F458
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F402:
	adds r0, r0, #1
	cmp r1, r0
	bne _0223F422
	movs r0, #1
	str r0, [r5, #0xc]
	adds r0, r4, #0
	bl ov62_0224112C
	bl FUN_0222B4E4
	cmp r0, #1
	bne _0223F458
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F422:
	cmp r1, #0xc8
	bne _0223F462
	movs r0, #2
	str r0, [r5, #0xc]
	adds r0, r4, #0
	bl FUN_0208BE68
	cmp r0, #1
	bne _0223F44A
	adds r0, r4, #0
	bl ov62_0224112C
	bl FUN_0222B44C
	cmp r0, #1
	bne _0223F458
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F44A:
	adds r0, r4, #0
	bl ov62_0224112C
	bl FUN_0222B3EC
	cmp r0, #1
	beq _0223F45A
_0223F458:
	b _0223F644
_0223F45A:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F462:
	bl FUN_02022974
	b _0223F644
_0223F468:
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _0223F650 @ =0x00000565
	bne _0223F49C
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp, #4]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #7
	bl ov62_022348B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F49C:
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _0223F654 @ =0x0000055F
	bl FUN_02005748
	ldr r0, _0223F658 @ =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0223F4E4
	movs r2, #0
	adds r0, r4, #0
	movs r1, #5
	adds r3, r2, #0
	bl ov62_022348B8
	ldr r0, [r5, #0xc]
	cmp r0, #2
	bne _0223F4C6
	movs r1, #0x76
	b _0223F4CA
_0223F4C6:
	movs r1, #0x4b
	lsls r1, r1, #2
_0223F4CA:
	movs r0, #0x51
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F4E4:
	movs r0, #0xff
	str r0, [r4, #8]
	b _0223F644
_0223F4EA:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F50C:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223F52C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223F52C:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223F644
_0223F546:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223F06C
	adds r0, r4, #0
	bl ov62_0223146C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #1
	movs r1, #0x66
	bl FUN_020397C8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223F644
_0223F57A:
	adds r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _0223F644
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223F5F0
	adds r0, r4, #0
	bl ov62_022318E8
	adds r0, r5, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r4, #0x10]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r5, #0
	bl FUN_020181C4
	b _0223F644
_0223F5F0:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223F644
_0223F622:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
_0223F644:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0223F64C: .4byte 0x0000086C
_0223F650: .4byte 0x00000565
_0223F654: .4byte 0x0000055F
_0223F658: .4byte 0x00004138
	thumb_func_end ov62_0223F348

	thumb_func_start ov62_0223F65C
ov62_0223F65C: @ 0x0223F65C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r3, _0223F754 @ =0x02248F8C
	adds r6, r4, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x14
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r6, #0x14
	str r0, [r2]
	adds r0, r6, #0
	bl FUN_0201A7A0
	movs r3, #3
	str r3, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r6, #0
	movs r2, #2
	bl FUN_0201A7E8
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r1, [r4, #0xc]
	ldr r0, [r5, #0x48]
	lsls r2, r1, #2
	add r1, sp, #0x14
	ldr r1, [r1, r2]
	bl FUN_0200B1EC
	movs r1, #0
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F758 @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_0201A9A4
	adds r0, r7, #0
	bl FUN_020237BC
	adds r6, r4, #0
	adds r6, #0x94
	adds r0, r6, #0
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	adds r0, #0xf2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r6, #0
	movs r3, #0xb
	bl FUN_0201A7E8
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x5f
	bl FUN_0200B1EC
	adds r5, r0, #0
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0x50
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223F758 @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_020237BC
	ldr r0, _0223F75C @ =0x0000202C
	movs r1, #1
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223F754: .4byte 0x02248F8C
_0223F758: .4byte 0x000F0D00
_0223F75C: .4byte 0x0000202C
	thumb_func_end ov62_0223F65C

	thumb_func_start ov62_0223F760
ov62_0223F760: @ 0x0223F760
	push {r4, r5, r6, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F77A
	cmp r1, #1
	bne _0223F778
	b _0223F8BA
_0223F778:
	b _0223F95A
_0223F77A:
	bl FUN_0202F250
	cmp r0, #0
	beq _0223F786
	bl FUN_0202F22C
_0223F786:
	ldr r0, _0223F968 @ =0x00002054
	ldr r3, _0223F96C @ =0x02248FD8
	adds r2, r4, r0
	movs r6, #5
_0223F78E:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _0223F78E
	ldr r0, [r3]
	movs r1, #0
	str r0, [r2]
	ldr r0, _0223F968 @ =0x00002054
	str r1, [r4, r0]
	ldr r1, _0223F970 @ =0x00004138
	adds r0, r0, #4
	ldr r1, [r5, r1]
	str r1, [r4, r0]
	adds r0, r5, #0
	bl ov62_022339DC
	movs r0, #0x66
	bl ov62_02233A68
	movs r1, #0x82
	lsls r1, r1, #6
	str r0, [r4, r1]
	movs r0, #0x7d
	lsls r0, r0, #2
	adds r1, #8
	str r0, [r4, r1]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r5, #0
	movs r1, #4
	movs r2, #3
	bl ov62_022343B8
	movs r1, #7
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223F0A8
	adds r0, r5, #0
	bl ov62_0223F65C
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0223F974 @ =0x0000047C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_022335B0
	ldr r0, _0223F978 @ =0x0000049C
	ldr r3, _0223F968 @ =0x00002054
	adds r0, r5, r0
	adds r1, r5, #0
	movs r2, #0
	adds r3, r4, r3
	bl ov62_02232594
	ldr r1, _0223F97C @ =0x000004E4
	movs r0, #1
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #0x68
	subs r1, #0x48
	adds r0, r5, r0
	adds r1, r5, r1
	bl ov62_02233638
	ldr r0, _0223F978 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #1
	bl ov62_0223331C
	ldr r0, _0223F978 @ =0x0000049C
	movs r1, #0x40
	adds r0, r5, r0
	movs r2, #0xb8
	bl ov62_02233434
	ldr r0, _0223F978 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_02233064
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02240BF4
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02240D98
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223F960
_0223F8BA:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223F928
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02240D98
	ldr r3, _0223F980 @ =0x000004D8
	movs r1, #0x6f
	ldr r6, [r5, r3]
	movs r3, #0x18
	muls r3, r6, r3
	lsls r1, r1, #4
	adds r3, #0x4c
	lsls r3, r3, #0x10
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #0x10
	asrs r3, r3, #0x10
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0xc
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223F928:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223F960
_0223F95A:
	movs r1, #4
	bl ov62_0222FB60
_0223F960:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0223F968: .4byte 0x00002054
_0223F96C: .4byte 0x02248FD8
_0223F970: .4byte 0x00004138
_0223F974: .4byte 0x0000047C
_0223F978: .4byte 0x0000049C
_0223F97C: .4byte 0x000004E4
_0223F980: .4byte 0x000004D8
	thumb_func_end ov62_0223F760

	thumb_func_start ov62_0223F984
ov62_0223F984: @ 0x0223F984
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223F9A0
	cmp r1, #1
	beq _0223FA2E
	cmp r1, #2
	bne _0223F99E
	b _0223FAA8
_0223F99E:
	b _0223FB42
_0223F9A0:
	ldr r0, _0223FB50 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233664
	ldr r1, _0223FB54 @ =0x0000049C
	adds r0, r5, r1
	subs r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _0223FB54 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_02233064
	ldr r2, _0223FB58 @ =0x000004D8
	movs r0, #0x6f
	ldr r3, [r5, r2]
	movs r2, #0x18
	muls r2, r3, r2
	lsls r0, r0, #4
	adds r2, #0x4c
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	movs r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0208B8EC
	adds r0, r5, #0
	bl ov62_02240E30
	ldr r0, _0223FB5C @ =0x02248F7C
	bl FUN_02022760
	cmp r0, #0
	beq _0223FA0E
	adds r0, r5, #0
	bl ov62_02234520
	ldr r0, _0223FB60 @ =0x000004D4
	ldr r0, [r5, r0]
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0223FB64 @ =0x00002608
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223FA0E
	ldr r0, _0223FB68 @ =0x00002034
	movs r1, #6
	str r1, [r4, r0]
	movs r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223FA0E:
	ldr r0, _0223FB6C @ =0x02248F80
	bl FUN_02022760
	cmp r0, #0
	bne _0223FA1A
	b _0223FB4A
_0223FA1A:
	adds r0, r5, #0
	bl ov62_02234520
	ldr r0, _0223FB68 @ =0x00002034
	movs r1, #5
	str r1, [r4, r0]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223FB4A
_0223FA2E:
	ldr r0, _0223FB50 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233600
	ldr r0, _0223FB54 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_022332FC
	ldr r0, _0223FB54 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_022334FC
	movs r0, #0x82
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl ov62_02233A74
	adds r0, r5, #0
	bl ov62_02240DDC
	adds r0, r5, #0
	bl ov62_02233A44
	adds r0, r5, #0
	bl ov62_0223F124
	adds r0, r5, #0
	bl ov62_0223F160
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, _0223FB68 @ =0x00002034
	ldr r0, [r4, r0]
	cmp r0, #5
	bne _0223FAA2
	ldr r0, _0223FB50 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_022335F4
	ldr r0, _0223FB54 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_02233310
	ldr r0, _0223FB70 @ =0x00002084
	movs r1, #0
	str r1, [r4, r0]
_0223FAA2:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223FAA8:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FB10
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0223F0A8
	ldr r0, _0223FB68 @ =0x00002034
	ldr r0, [r4, r0]
	cmp r0, #6
	bne _0223FB0A
	movs r0, #0x45
	lsls r0, r0, #2
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x13
	lsls r0, r0, #4
	adds r1, r5, #0
	adds r0, r4, r0
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #3
	bl FUN_0200D364
_0223FB0A:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223FB10:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223FB4A
_0223FB42:
	ldr r1, _0223FB68 @ =0x00002034
	ldr r1, [r4, r1]
	bl ov62_0222FB60
_0223FB4A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223FB50: .4byte 0x0000047C
_0223FB54: .4byte 0x0000049C
_0223FB58: .4byte 0x000004D8
_0223FB5C: .4byte 0x02248F7C
_0223FB60: .4byte 0x000004D4
_0223FB64: .4byte 0x00002608
_0223FB68: .4byte 0x00002034
_0223FB6C: .4byte 0x02248F80
_0223FB70: .4byte 0x00002084
	thumb_func_end ov62_0223F984

	thumb_func_start ov62_0223FB74
ov62_0223FB74: @ 0x0223FB74
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223FB8E
	cmp r1, #1
	beq _0223FBA6
	cmp r1, #2
	beq _0223FBF6
	b _0223FC1C
_0223FB8E:
	bl ov62_0223F124
	adds r0, r5, #0
	bl ov62_0223F160
	adds r0, r5, #0
	bl ov62_02231B8C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223FCC0
_0223FBA6:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FBDC
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223F06C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0223FBDC:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223FCC0
_0223FBF6:
	adds r4, #8
	adds r0, r4, #0
	bl ov62_02231688
	adds r0, r5, #0
	bl ov62_0223146C
	movs r0, #1
	movs r1, #0x66
	bl FUN_020397C8
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223FCC0
_0223FC1C:
	bl ov62_02233790
	cmp r0, #0
	beq _0223FCC0
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _0223FC90
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	bl FUN_020181C4
	b _0223FCC0
_0223FC90:
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_0223FCC0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223FB74

	thumb_func_start ov62_0223FCC4
ov62_0223FCC4: @ 0x0223FCC4
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0223FCD6
	b _0223FE06
_0223FCD6:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223FCE2: @ jump table
	.2byte _0223FCEA - _0223FCE2 - 2 @ case 0
	.2byte _0223FCFA - _0223FCE2 - 2 @ case 1
	.2byte _0223FD48 - _0223FCE2 - 2 @ case 2
	.2byte _0223FDAA - _0223FCE2 - 2 @ case 3
_0223FCEA:
	movs r1, #6
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223FE0E
_0223FCFA:
	bl ov62_02240B94
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223FE14 @ =0x02248FC8
	ldr r2, _0223FE18 @ =ov62_02240A50
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223FE1C @ =0x02248F98
	ldr r2, _0223FE20 @ =ov62_02240AEC
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0223FE24 @ =0x02248F84
	ldr r2, _0223FE28 @ =ov62_02240B5C
	movs r1, #2
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223FE0E
_0223FD48:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0223FE0E
_0223FDAA:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FDEC
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	adds r0, r4, #0
	bl ov62_02240900
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0223FDEC:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0223FE0E
_0223FE06:
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
_0223FE0E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0223FE14: .4byte 0x02248FC8
_0223FE18: .4byte ov62_02240A50
_0223FE1C: .4byte 0x02248F98
_0223FE20: .4byte ov62_02240AEC
_0223FE24: .4byte 0x02248F84
_0223FE28: .4byte ov62_02240B5C
	thumb_func_end ov62_0223FCC4

	thumb_func_start ov62_0223FE2C
ov62_0223FE2C: @ 0x0223FE2C
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0223FE2C

	thumb_func_start ov62_0223FE44
ov62_0223FE44: @ 0x0223FE44
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #3
	bls _0223FE56
	b _0223FF74
_0223FE56:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223FE62: @ jump table
	.2byte _0223FE6A - _0223FE62 - 2 @ case 0
	.2byte _0223FEA8 - _0223FE62 - 2 @ case 1
	.2byte _0223FEC0 - _0223FE62 - 2 @ case 2
	.2byte _0223FF2C - _0223FE62 - 2 @ case 3
_0223FE6A:
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223FE84
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234228
	b _0223FE90
_0223FE84:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232394
_0223FE90:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223FF8C
_0223FEA8:
	movs r2, #1
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FF8C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223FF8C
_0223FEC0:
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223FEF0
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232378
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov62_022323B8
	adds r0, r5, #0
	movs r1, #0x50
	movs r2, #3
	bl ov62_022343B8
	b _0223FF1C
_0223FEF0:
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234214
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #3
	bl ov62_022343B8
_0223FF1C:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223FF8C
_0223FF2C:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _0223FF8C
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223FF50
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl ov62_022323B8
	b _0223FF5C
_0223FF50:
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #1
	bl ov62_0223427C
_0223FF5C:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0223FF8C
_0223FF74:
	ldr r1, [r4, #0x10]
	movs r0, #1
	eors r1, r0
	str r1, [r4, #0x10]
	adds r0, r5, #0
	adds r1, #0x79
	bl ov62_022408A8
	adds r0, r5, #0
	movs r1, #7
	bl ov62_0222FB60
_0223FF8C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_0223FE44

	thumb_func_start ov62_0223FF90
ov62_0223FF90: @ 0x0223FF90
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0223FFAC
	cmp r1, #1
	beq _0223FFCC
	cmp r1, #2
	beq _0223FFDC
	b _0224006E
_0223FFAC:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0224007A
_0223FFCC:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0224007A
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0224007A
_0223FFDC:
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0223FFF6
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234228
	b _02240002
_0223FFF6:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02232394
_02240002:
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02024034
	adds r0, r5, #0
	bl ov62_0223E428
	adds r0, r5, #0
	bl ov62_0224088C
	adds r0, r5, #0
	bl ov62_022410F0
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022314A8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r1, [r5, #0x10]
	adds r0, r5, #0
	ldr r1, [r1]
	bl ov62_022300C8
	ldr r0, _02240080 @ =0x00000868
	movs r1, #1
	ldr r0, [r5, r0]
	movs r2, #0
	bl FUN_0208BA84
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0224007A
_0224006E:
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_0224007A:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02240080: .4byte 0x00000868
	thumb_func_end ov62_0223FF90

	thumb_func_start ov62_02240084
ov62_02240084: @ 0x02240084
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _02240098
	b _022402B8
_02240098:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022400A4: @ jump table
	.2byte _022400B0 - _022400A4 - 2 @ case 0
	.2byte _0224017E - _022400A4 - 2 @ case 1
	.2byte _022401CC - _022400A4 - 2 @ case 2
	.2byte _0224022E - _022400A4 - 2 @ case 3
	.2byte _0224028A - _022400A4 - 2 @ case 4
	.2byte _022402A8 - _022400A4 - 2 @ case 5
_022400B0:
	bl ov62_02234314
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	bl ov62_022315C8
	ldr r0, _022402D4 @ =0x00004138
	movs r2, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _022400E4
	movs r0, #0x9a
	lsls r0, r0, #6
	adds r7, r0, #0
	adds r3, r4, r0
	ldr r0, _022402D4 @ =0x00004138
	adds r6, r4, #0
	subs r7, #0x78
_022400D6:
	str r3, [r6, r7]
	ldr r1, [r4, r0]
	adds r2, r2, #1
	adds r3, #0xe4
	adds r6, r6, #4
	cmp r2, r1
	blt _022400D6
_022400E4:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #6
	movs r2, #7
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x45
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x13
	lsls r0, r0, #4
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_0200D364
	movs r1, #0x7d
	ldr r0, _022402D8 @ =0x00002088
	lsls r1, r1, #2
	str r1, [r5, r0]
	ldr r1, _022402DC @ =0x000004A4
	subs r0, r0, #4
	ldrsh r1, [r4, r1]
	str r1, [r5, r0]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_0224017E:
	bl ov62_02240B94
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022402E0 @ =0x02248FC8
	ldr r2, _022402E4 @ =ov62_02240A50
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022402E8 @ =0x02248F98
	ldr r2, _022402EC @ =ov62_02240AEC
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022402F0 @ =0x02248F84
	ldr r2, _022402F4 @ =ov62_02240B5C
	movs r1, #2
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_022401CC:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_0224022E:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02240270
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	adds r0, r4, #0
	bl ov62_02240900
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02240270:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _022402CE
_0224028A:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_022402A8:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022402CE
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022402CE
_022402B8:
	ldr r0, _022402F8 @ =0x000006D8
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov62_02230098
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
_022402CE:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022402D4: .4byte 0x00004138
_022402D8: .4byte 0x00002088
_022402DC: .4byte 0x000004A4
_022402E0: .4byte 0x02248FC8
_022402E4: .4byte ov62_02240A50
_022402E8: .4byte 0x02248F98
_022402EC: .4byte ov62_02240AEC
_022402F0: .4byte 0x02248F84
_022402F4: .4byte ov62_02240B5C
_022402F8: .4byte 0x000006D8
	thumb_func_end ov62_02240084

	thumb_func_start ov62_022402FC
ov62_022402FC: @ 0x022402FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	ldr r1, _022403F0 @ =0x000008A4
	adds r5, r0, #0
	subs r1, #0x44
	ldr r6, [r5, r1]
	movs r1, #2
	bl ov62_022302A8
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, _022403F0 @ =0x000008A4
	adds r0, r5, r0
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r1, _022403F0 @ =0x000008A4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r5, r1
	movs r2, #2
	movs r3, #1
	bl FUN_0201A7E8
	cmp r4, #0x64
	bne _022403B0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	str r0, [sp, #0x14]
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r7, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
	b _022403BA
_022403B0:
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
_022403BA:
	ldr r0, _022403F0 @ =0x000008A4
	movs r1, #0xcc
	adds r0, r5, r0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022403F4 @ =0x000F0D0C
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _022403F0 @ =0x000008A4
	adds r3, r1, #0
	adds r0, r5, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, _022403F0 @ =0x000008A4
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022403F0: .4byte 0x000008A4
_022403F4: .4byte 0x000F0D0C
	thumb_func_end ov62_022402FC

	thumb_func_start ov62_022403F8
ov62_022403F8: @ 0x022403F8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	bl FUN_0202FE04
	movs r1, #4
	movs r2, #0
	bl FUN_0202FE98
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	adds r1, r3, #0
	bl ov62_02234970
	cmp r0, #0
	ldr r0, [r4, #8]
	bne _02240424
	b _02240758
_02240424:
	cmp r0, #6
	bls _0224042A
	b _0224072A
_0224042A:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02240436: @ jump table
	.2byte _02240444 - _02240436 - 2 @ case 0
	.2byte _022404A8 - _02240436 - 2 @ case 1
	.2byte _02240508 - _02240436 - 2 @ case 2
	.2byte _02240518 - _02240436 - 2 @ case 3
	.2byte _02240550 - _02240436 - 2 @ case 4
	.2byte _022405A0 - _02240436 - 2 @ case 5
	.2byte _022406C0 - _02240436 - 2 @ case 6
_02240444:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02240460
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234228
	b _0224046C
_02240460:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02232394
_0224046C:
	adds r0, r4, #0
	bl ov62_0224088C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022410F0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_022404A8:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022404EE
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223EF60
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022404EE:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02240884
_02240508:
	ldr r1, _0224082C @ =0x00000115
	adds r0, r4, #0
	bl ov62_02231AAC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_02240518:
	bl FUN_02022798
	cmp r0, #0
	bne _02240522
	b _02240884
_02240522:
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_02240550:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02240586
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223F038
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02240586:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02240884
_022405A0:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223E01C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, _02240830 @ =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _022405F6
	movs r0, #0x45
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	movs r0, #0x13
	lsls r0, r0, #4
	adds r1, r4, #0
	adds r0, r5, r0
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #3
	bl FUN_0200D364
_022405F6:
	adds r0, r4, #0
	bl ov62_02240900
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02240668
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	b _02240698
_02240668:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02232378
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_022323B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x50
	movs r3, #3
	bl FUN_0200710C
_02240698:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #6
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_022406C0:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02240710
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _022406EE
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	b _022406FA
_022406EE:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl ov62_022323B8
_022406FA:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02240710:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02240884
_0224072A:
	ldr r1, _02240834 @ =0x00004138
	movs r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _0224074E
	movs r1, #0x9a
	lsls r1, r1, #6
	adds r5, r4, r1
	ldr r2, _02240834 @ =0x00004138
	adds r6, r4, #0
	subs r1, #0x78
_02240740:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	adds r0, r0, #1
	adds r5, #0xe4
	adds r6, r6, #4
	cmp r0, r3
	blt _02240740
_0224074E:
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
	b _02240884
_02240758:
	cmp r0, #0
	beq _02240766
	cmp r0, #1
	beq _022407CA
	cmp r0, #2
	beq _02240838
	b _0224087C
_02240766:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _02240782
	movs r0, #0x22
	lsls r0, r0, #4
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234228
	b _0224078E
_02240782:
	movs r0, #0x65
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02232394
_0224078E:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022410F0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0224088C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02240884
_022407CA:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02240810
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223EF60
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02240810:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02240884
	nop
_0224082C: .4byte 0x00000115
_02240830: .4byte 0x0000086C
_02240834: .4byte 0x00004138
_02240838:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _02240862
	adds r0, r4, #0
	movs r1, #0x64
	movs r2, #0
	bl ov62_022402FC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02240862:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02240884
_0224087C:
	adds r0, r4, #0
	movs r1, #0xc
	bl ov62_0222FB60
_02240884:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov62_022403F8

	thumb_func_start ov62_0224088C
ov62_0224088C: @ 0x0224088C
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	adds r0, r4, #0
	adds r0, #0x94
	bl FUN_0201ACF4
	adds r4, #0x94
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_0224088C

	thumb_func_start ov62_022408A8
ov62_022408A8: @ 0x022408A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r6, r1, #0
	adds r4, #0x94
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	adds r1, r6, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022408FC @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_022408FC: .4byte 0x000F0D00
	thumb_func_end ov62_022408A8

	thumb_func_start ov62_02240900
ov62_02240900: @ 0x02240900
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r6, r4, #0
	adds r6, #0x94
	adds r0, r6, #0
	bl FUN_0201A7A0
	movs r0, #3
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r6, #0
	movs r2, #6
	movs r3, #8
	bl FUN_0201A7E8
	ldr r1, [r4, #0x10]
	adds r0, r5, #0
	adds r1, #0x79
	bl ov62_022408A8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov62_02240900

	thumb_func_start ov62_02240944
ov62_02240944: @ 0x02240944
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r6, r4, #0
	adds r6, #0x94
	adds r0, r6, #0
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r6, #0
	movs r3, #4
	bl FUN_0201A7E8
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x82
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240A20 @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0201A9A4
	adds r4, #0xa4
	adds r0, r4, #0
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, #0
	movs r3, #0x12
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x83
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02240A20 @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02240A20: .4byte 0x000F0D00
	thumb_func_end ov62_02240944

	thumb_func_start ov62_02240A24
ov62_02240A24: @ 0x02240A24
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	adds r0, r4, #0
	adds r0, #0x94
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x94
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0xa4
	bl FUN_0201ACF4
	adds r4, #0xa4
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02240A24

	thumb_func_start ov62_02240A50
ov62_02240A50: @ 0x02240A50
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r5, [r4, r2]
	cmp r1, #0
	bne _02240AE4
	cmp r0, #3
	bhi _02240AE4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02240A6E: @ jump table
	.2byte _02240A76 - _02240A6E - 2 @ case 0
	.2byte _02240A86 - _02240A6E - 2 @ case 1
	.2byte _02240AAE - _02240A6E - 2 @ case 2
	.2byte _02240AD6 - _02240A6E - 2 @ case 3
_02240A76:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240A86:
	adds r0, r4, #0
	bl ov62_02234520
	bl FUN_0202F250
	cmp r0, #0
	beq _02240A9E
	adds r0, r4, #0
	movs r1, #9
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240A9E:
	ldr r0, _02240AE8 @ =0x00002034
	movs r1, #9
	str r1, [r5, r0]
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240AAE:
	adds r0, r4, #0
	bl ov62_02234520
	bl FUN_0202F250
	cmp r0, #0
	beq _02240AC6
	adds r0, r4, #0
	movs r1, #0xb
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240AC6:
	ldr r0, _02240AE8 @ =0x00002034
	movs r1, #0xb
	str r1, [r5, r0]
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02240AD6:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0xa
	bl ov62_0222FB60
_02240AE4:
	pop {r3, r4, r5, pc}
	nop
_02240AE8: .4byte 0x00002034
	thumb_func_end ov62_02240A50

	thumb_func_start ov62_02240AEC
ov62_02240AEC: @ 0x02240AEC
	push {r4, lr}
	adds r4, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r3, [r4, r2]
	cmp r1, #0
	bne _02240B54
	cmp r0, #3
	bhi _02240B54
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02240B0A: @ jump table
	.2byte _02240B12 - _02240B0A - 2 @ case 0
	.2byte _02240B12 - _02240B0A - 2 @ case 1
	.2byte _02240B12 - _02240B0A - 2 @ case 2
	.2byte _02240B40 - _02240B0A - 2 @ case 3
_02240B12:
	adds r1, r0, #1
	ldr r0, _02240B58 @ =0x00002028
	adds r2, #0x2c
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02240B30
	adds r0, r4, #0
	movs r1, #0xe
	bl ov62_0222FB60
	b _02240B38
_02240B30:
	adds r0, r4, #0
	movs r1, #0x11
	bl ov62_0222FB60
_02240B38:
	adds r0, r4, #0
	bl ov62_02234520
	pop {r4, pc}
_02240B40:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	bl ov62_02231A88
	adds r0, r4, #0
	movs r1, #0xd
	bl ov62_0222FB60
_02240B54:
	pop {r4, pc}
	nop
_02240B58: .4byte 0x00002028
	thumb_func_end ov62_02240AEC

	thumb_func_start ov62_02240B5C
ov62_02240B5C: @ 0x02240B5C
	push {r4, lr}
	adds r4, r2, #0
	cmp r1, #0
	bne _02240B92
	cmp r0, #0
	beq _02240B6E
	cmp r0, #1
	beq _02240B84
	pop {r4, pc}
_02240B6E:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	bl ov62_02240A24
	adds r0, r4, #0
	movs r1, #0x11
	bl ov62_0222FB60
	pop {r4, pc}
_02240B84:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0x10
	bl ov62_0222FB60
_02240B92:
	pop {r4, pc}
	thumb_func_end ov62_02240B5C

	thumb_func_start ov62_02240B94
ov62_02240B94: @ 0x02240B94
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r0, #0x66
	bl FUN_02030A80
	movs r1, #0x65
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02240BEC @ =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, _02240BF0 @ =0x00002608
	ldr r0, [r2, r0]
	bl FUN_0222AFC0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r0, #0x8c
	str r1, [r4, r0]
	movs r0, #0x66
	bl FUN_0202FF2C
	movs r1, #0x89
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _02240BEC @ =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, _02240BF0 @ =0x00002608
	ldr r0, [r2, r0]
	movs r2, #0x64
	adds r0, #0x80
	blx FUN_020C4DB0
	pop {r3, r4, r5, pc}
	nop
_02240BEC: .4byte 0x000004D4
_02240BF0: .4byte 0x00002608
	thumb_func_end ov62_02240B94

	thumb_func_start ov62_02240BF4
ov62_02240BF4: @ 0x02240BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r0, r1]
	ldr r1, _02240D80 @ =0x000004A4
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r5, _02240D84 @ =0x02249034
	ldrsh r2, [r0, r1]
	add r4, sp, #0x50
	movs r3, #6
_02240C0E:
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	subs r3, r3, #1
	bne _02240C0E
	movs r1, #0
	add r0, sp, #0x38
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	add r0, sp, #0x20
	str r1, [r0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [sp, #8]
	lsls r1, r2, #2
	adds r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
_02240C42:
	ldr r1, _02240D88 @ =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _02240C4E
	b _02240D5C
_02240C4E:
	adds r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02240C5C
	movs r0, #1
	b _02240C5E
_02240C5C:
	movs r0, #0
_02240C5E:
	movs r7, #0
	adds r1, r7, #0
	add r2, sp, #0x38
	add r4, sp, #0x20
	adds r3, r7, #0
_02240C68:
	stm r2!, {r3}
	adds r1, r1, #1
	stm r4!, {r3}
	cmp r1, #6
	blt _02240C68
	movs r1, #0x18
	muls r1, r0, r1
	add r0, sp, #0x50
	str r1, [sp, #0x1c]
	adds r0, r0, r1
	add r1, sp, #0x38
	add r2, sp, #0x20
_02240C80:
	ldr r5, [sp, #0x10]
	ldr r4, _02240D88 @ =0x00002608
	ldr r6, [r0]
	ldr r5, [r5, r4]
	lsls r4, r6, #1
	adds r4, r5, r4
	adds r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _02240CA6
	stm r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _02240D88 @ =0x00002608
	adds r7, r7, #1
	ldr r4, [r5, r4]
	adds r4, r4, r6
	adds r4, #0x98
	ldrb r4, [r4]
	stm r2!, {r4}
_02240CA6:
	adds r3, r3, #1
	adds r0, r0, #4
	cmp r3, #3
	blt _02240C80
	ldr r1, _02240D88 @ =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	adds r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02240CC0
	movs r7, #3
_02240CC0:
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x50
	adds r0, r1, r0
	lsls r4, r7, #2
	add r1, sp, #0x38
	add r2, sp, #0x20
	movs r3, #3
	adds r0, #0xc
	adds r1, r1, r4
	adds r2, r2, r4
_02240CD4:
	ldr r5, [sp, #0x10]
	ldr r4, _02240D88 @ =0x00002608
	ldr r6, [r0]
	ldr r5, [r5, r4]
	lsls r4, r6, #1
	adds r4, r5, r4
	adds r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _02240CFA
	stm r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _02240D88 @ =0x00002608
	adds r7, r7, #1
	ldr r4, [r5, r4]
	adds r4, r4, r6
	adds r4, #0x98
	ldrb r4, [r4]
	stm r2!, {r4}
_02240CFA:
	adds r3, r3, #1
	adds r0, r0, #4
	cmp r3, #6
	blt _02240CD4
	ldr r5, [sp, #0xc]
	movs r7, #0
	add r6, sp, #0x38
	add r4, sp, #0x20
_02240D0A:
	ldr r2, [sp, #0x14]
	ldr r1, _02240D8C @ =0x00002088
	ldr r3, [r6]
	ldr r2, [r2, r1]
	ldr r0, [r4]
	adds r1, r1, #4
	str r2, [r5, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x82
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	lsls r1, r1, #6
	ldr r1, [r2, r1]
	ldr r2, _02240D90 @ =0x0000208C
	ldr r0, [sp, #8]
	ldr r2, [r5, r2]
	bl ov62_02233A7C
	ldr r1, _02240D94 @ =0x00002090
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02240D44
	movs r1, #6
	subs r1, r1, r7
	bl FUN_0200D474
_02240D44:
	ldr r1, [sp, #0x14]
	ldr r0, _02240D8C @ =0x00002088
	adds r7, r7, #1
	ldr r0, [r1, r0]
	adds r6, r6, #4
	adds r2, r0, #1
	ldr r0, _02240D8C @ =0x00002088
	adds r4, r4, #4
	adds r5, #8
	str r2, [r1, r0]
	cmp r7, #6
	blt _02240D0A
_02240D5C:
	ldr r0, [sp, #0x10]
	adds r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #5
	bge _02240D74
	b _02240C42
_02240D74:
	ldr r0, [sp, #8]
	bl ov62_0223DFA8
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240D80: .4byte 0x000004A4
_02240D84: .4byte 0x02249034
_02240D88: .4byte 0x00002608
_02240D8C: .4byte 0x00002088
_02240D90: .4byte 0x0000208C
_02240D94: .4byte 0x00002090
	thumb_func_end ov62_02240BF4

	thumb_func_start ov62_02240D98
ov62_02240D98: @ 0x02240D98
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _02240DD8 @ =0x00002090
	str r0, [sp]
_02240DAC:
	ldr r5, [sp]
	movs r4, #0
_02240DB0:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02240DBC
	adds r1, r6, #0
	bl FUN_0200D3F4
_02240DBC:
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #6
	blt _02240DB0
	ldr r0, [sp]
	adds r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02240DAC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02240DD8: .4byte 0x00002090
	thumb_func_end ov62_02240D98

	thumb_func_start ov62_02240DDC
ov62_02240DDC: @ 0x02240DDC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r7, #0
	str r0, [sp]
_02240DF0:
	ldr r5, [sp]
	movs r4, #0
_02240DF4:
	ldr r0, _02240E28 @ =0x00002090
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _02240E0A
	ldr r1, _02240E2C @ =0x0000208C
	adds r0, r6, #0
	ldr r1, [r5, r1]
	bl ov62_02233B24
	ldr r0, _02240E28 @ =0x00002090
	str r7, [r5, r0]
_02240E0A:
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #6
	blt _02240DF4
	ldr r0, [sp]
	adds r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02240DF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02240E28: .4byte 0x00002090
_02240E2C: .4byte 0x0000208C
	thumb_func_end ov62_02240DDC

	thumb_func_start ov62_02240E30
ov62_02240E30: @ 0x02240E30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	movs r1, #0
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x20]
	add r1, sp, #0x8c
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, #0
	ldr r1, [r1, r2]
	ldr r2, _022410CC @ =0x00002084
	str r1, [sp, #0x1c]
	ldr r3, [r1, r2]
	ldr r2, _022410D0 @ =0x000004A4
	adds r1, r0, #0
	ldrsh r1, [r1, r2]
	str r0, [sp, #8]
	cmp r3, r1
	bne _02240E64
	b _022410C6
_02240E64:
	movs r1, #1
	bl ov62_02234540
	ldr r1, _022410CC @ =0x00002084
	ldr r0, [sp, #0x1c]
	ldr r2, [r0, r1]
	ldr r1, _022410D0 @ =0x000004A4
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	cmp r2, r0
	ble _02240E7E
	movs r0, #4
	str r0, [sp, #0x20]
_02240E7E:
	ldr r0, [sp, #0x20]
	movs r1, #0x30
	muls r1, r0, r1
	ldr r0, [sp, #0x1c]
	movs r6, #0
	adds r4, r0, r1
	add r5, sp, #0x8c
	adds r7, r6, #0
_02240E8E:
	ldr r0, _022410D4 @ =0x00002090
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _02240EAA
	ldr r1, _022410D8 @ =0x0000208C
	ldr r0, [sp, #8]
	ldr r1, [r4, r1]
	bl ov62_02233B40
	ldr r0, _022410D8 @ =0x0000208C
	ldr r0, [r4, r0]
	str r0, [r5]
	ldr r0, _022410D4 @ =0x00002090
	str r7, [r4, r0]
_02240EAA:
	adds r6, r6, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r6, #6
	blt _02240E8E
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02240EF4
	ldr r2, _022410DC @ =0x00002060
	ldr r7, [sp, #0x1c]
	movs r0, #4
	adds r3, r2, #0
	adds r5, r2, #0
	str r0, [sp, #0xc]
	adds r7, #0xc0
	adds r3, #0x30
	subs r4, r2, #4
	adds r5, #0x2c
_02240ECE:
	movs r0, #0
	adds r1, r7, #0
_02240ED2:
	ldr r6, [r1, r2]
	adds r0, r0, #1
	str r6, [r1, r3]
	ldr r6, [r1, r4]
	str r6, [r1, r5]
	adds r1, #8
	cmp r0, #6
	blt _02240ED2
	ldr r0, [sp, #0xc]
	subs r7, #0x30
	subs r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #1
	bge _02240ECE
	movs r0, #0
	str r0, [sp, #0x10]
	b _02240F2C
_02240EF4:
	ldr r6, _022410D4 @ =0x00002090
	ldr r7, [sp, #0x1c]
	movs r0, #1
	adds r2, r6, #0
	adds r4, r6, #0
	mov ip, r0
	adds r7, #0x30
	subs r2, #0x30
	subs r3, r6, #4
	subs r4, #0x34
_02240F08:
	movs r1, #0
	adds r0, r7, #0
_02240F0C:
	ldr r5, [r0, r6]
	adds r1, r1, #1
	str r5, [r0, r2]
	ldr r5, [r0, r3]
	str r5, [r0, r4]
	adds r0, #8
	cmp r1, #6
	blt _02240F0C
	mov r0, ip
	adds r0, r0, #1
	adds r7, #0x30
	mov ip, r0
	cmp r0, #5
	blt _02240F08
	movs r0, #4
	str r0, [sp, #0x10]
_02240F2C:
	ldr r1, _022410D0 @ =0x000004A4
	ldr r0, [sp, #8]
	ldr r5, _022410E0 @ =0x02249004
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x5c
	adds r2, r1, r0
	movs r3, #6
_02240F3C:
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	subs r3, r3, #1
	bne _02240F3C
	add r0, sp, #0x44
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	add r0, sp, #0x2c
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	lsls r0, r2, #2
	str r0, [sp, #0x14]
	ldr r1, _022410E4 @ =0x00002608
	ldr r0, [sp, #8]
	adds r1, r0, r1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x24]
	ldr r0, [r1, r0]
	adds r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02240F7E
	movs r4, #1
_02240F7E:
	movs r0, #0
	str r0, [sp, #0x18]
	add r1, sp, #0x44
	add r2, sp, #0x2c
	adds r6, r0, #0
_02240F88:
	stm r1!, {r6}
	adds r0, r0, #1
	stm r2!, {r6}
	cmp r0, #6
	blt _02240F88
	movs r0, #0x18
	muls r0, r4, r0
	add r1, sp, #0x5c
	adds r2, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, sp, #0x44
	add r5, sp, #0x2c
	adds r4, r1, r0
_02240FA6:
	ldr r0, _022410E4 @ =0x00002608
	ldr r7, [r2]
	ldr r1, [r4, r0]
	lsls r0, r7, #1
	adds r0, r1, r0
	adds r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _02240FCC
	stm r3!, {r0}
	ldr r0, _022410E4 @ =0x00002608
	ldr r0, [r4, r0]
	adds r0, r0, r7
	adds r0, #0x98
	ldrb r0, [r0]
	stm r5!, {r0}
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
_02240FCC:
	adds r6, r6, #1
	adds r2, r2, #4
	cmp r6, #3
	blt _02240FA6
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	adds r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02240FE8
	movs r0, #3
	str r0, [sp, #0x18]
_02240FE8:
	ldr r0, [sp, #0x28]
	add r1, sp, #0x5c
	adds r2, r1, r0
	ldr r0, [sp, #0x18]
	movs r6, #3
	lsls r1, r0, #2
	add r0, sp, #0x44
	adds r3, r0, r1
	add r0, sp, #0x2c
	adds r2, #0xc
	adds r5, r0, r1
_02240FFE:
	ldr r0, _022410E4 @ =0x00002608
	ldr r7, [r2]
	ldr r1, [r4, r0]
	lsls r0, r7, #1
	adds r0, r1, r0
	adds r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _02241024
	stm r3!, {r0}
	ldr r0, _022410E4 @ =0x00002608
	ldr r0, [r4, r0]
	adds r0, r0, r7
	adds r0, #0x98
	ldrb r0, [r0]
	stm r5!, {r0}
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
_02241024:
	adds r6, r6, #1
	adds r2, r2, #4
	cmp r6, #6
	blt _02240FFE
	ldr r0, [sp, #0x10]
	movs r1, #0x30
	muls r1, r0, r1
	ldr r0, [sp, #0x1c]
	movs r5, #0
	add r7, sp, #0x44
	add r6, sp, #0x2c
	adds r4, r0, r1
_0224103C:
	ldr r2, [sp, #0x1c]
	ldr r1, _022410E8 @ =0x00002088
	ldr r3, [r7]
	ldr r2, [r2, r1]
	ldr r0, [r6]
	adds r1, r1, #4
	str r2, [r4, r1]
	str r0, [sp]
	movs r0, #0
	movs r1, #0x82
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	lsls r1, r1, #6
	ldr r1, [r2, r1]
	ldr r2, _022410D8 @ =0x0000208C
	ldr r0, [sp, #8]
	ldr r2, [r4, r2]
	bl ov62_02233A7C
	ldr r1, _022410D4 @ =0x00002090
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02241076
	movs r1, #6
	subs r1, r1, r5
	bl FUN_0200D474
_02241076:
	ldr r1, [sp, #0x1c]
	ldr r0, _022410E8 @ =0x00002088
	adds r5, r5, #1
	ldr r0, [r1, r0]
	adds r7, r7, #4
	adds r2, r0, #1
	ldr r0, _022410E8 @ =0x00002088
	adds r6, r6, #4
	adds r4, #8
	str r2, [r1, r0]
	cmp r5, #6
	blt _0224103C
	ldr r0, [sp, #8]
	bl ov62_0223DFA8
	ldr r1, _022410D0 @ =0x000004A4
	ldr r0, [sp, #8]
	ldr r6, _022410EC @ =0x000186A0
	ldrsh r2, [r0, r1]
	ldr r1, _022410CC @ =0x00002084
	ldr r0, [sp, #0x1c]
	movs r5, #0
	str r2, [r0, r1]
	add r4, sp, #0x8c
_022410A6:
	ldr r1, [r4]
	cmp r1, #0
	beq _022410B6
	ldr r0, [sp, #8]
	adds r1, r1, r6
	ldr r0, [r0, #0x1c]
	bl FUN_0200D070
_022410B6:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #6
	blt _022410A6
	ldr r0, [sp, #8]
	movs r1, #0
	bl ov62_02234540
_022410C6:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	nop
_022410CC: .4byte 0x00002084
_022410D0: .4byte 0x000004A4
_022410D4: .4byte 0x00002090
_022410D8: .4byte 0x0000208C
_022410DC: .4byte 0x00002060
_022410E0: .4byte 0x02249004
_022410E4: .4byte 0x00002608
_022410E8: .4byte 0x00002088
_022410EC: .4byte 0x000186A0
	thumb_func_end ov62_02240E30

	thumb_func_start ov62_022410F0
ov62_022410F0: @ 0x022410F0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r0, #0x45
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov62_022312B0
	movs r0, #0x13
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov62_022312B0
	movs r0, #0x46
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D0F4
	adds r0, r5, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_022410F0

	thumb_func_start ov62_0224112C
ov62_0224112C: @ 0x0224112C
	adds r0, #0x68
	bx lr
	thumb_func_end ov62_0224112C

	thumb_func_start ov62_02241130
ov62_02241130: @ 0x02241130
	push {r4, lr}
	sub sp, #0x40
	adds r4, r0, #0
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02025CCC
	bl FUN_02025D74
	str r0, [sp]
	movs r0, #0x66
	str r0, [sp, #4]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	add r1, sp, #0
	str r0, [sp, #8]
	ldr r0, _02241190 @ =ov62_02239D34
	str r4, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02241194 @ =ov62_02239D38
	str r4, [sp, #0x3c]
	str r0, [sp, #0x14]
	ldr r0, _02241198 @ =ov62_0223CAA4
	adds r4, #0x68
	str r0, [sp, #0x18]
	ldr r0, _0224119C @ =ov62_0223CAA8
	str r0, [sp, #0x1c]
	ldr r0, _022411A0 @ =ov62_0223DF10
	str r0, [sp, #0x20]
	ldr r0, _022411A4 @ =ov62_0223DF4C
	str r0, [sp, #0x24]
	ldr r0, _022411A8 @ =ov62_02246944
	str r0, [sp, #0x28]
	ldr r0, _022411AC @ =ov62_02233828
	str r0, [sp, #0x2c]
	ldr r0, _022411B0 @ =ov62_02246968
	str r0, [sp, #0x30]
	ldr r0, _022411B4 @ =ov62_0224699C
	str r0, [sp, #0x34]
	movs r0, #0
	str r0, [sp, #0x38]
	adds r0, r4, #0
	bl FUN_0222B008
	add sp, #0x40
	pop {r4, pc}
	.align 2, 0
_02241190: .4byte ov62_02239D34
_02241194: .4byte ov62_02239D38
_02241198: .4byte ov62_0223CAA4
_0224119C: .4byte ov62_0223CAA8
_022411A0: .4byte ov62_0223DF10
_022411A4: .4byte ov62_0223DF4C
_022411A8: .4byte ov62_02246944
_022411AC: .4byte ov62_02233828
_022411B0: .4byte ov62_02246968
_022411B4: .4byte ov62_0224699C
	thumb_func_end ov62_02241130

	thumb_func_start ov62_022411B8
ov62_022411B8: @ 0x022411B8
	push {r3, lr}
	movs r1, #0x42
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	bne _022411C8
	movs r0, #0
	pop {r3, pc}
_022411C8:
	bl ov62_0224112C
	bl FUN_0222BBBC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_022411B8

	thumb_func_start ov62_022411D4
ov62_022411D4: @ 0x022411D4
	push {r3, lr}
	movs r1, #0x42
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _022411E8
	bl ov62_0224112C
	bl FUN_0222B57C
_022411E8:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_022411D4

	thumb_func_start ov62_022411EC
ov62_022411EC: @ 0x022411EC
	push {r3, lr}
	movs r1, #0x42
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	cmp r1, #0
	beq _02241200
	bl ov62_0224112C
	bl FUN_0222B0F0
_02241200:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_022411EC

	thumb_func_start ov62_02241204
ov62_02241204: @ 0x02241204
	push {r4, r5, r6, r7, lr}
	sub sp, #0x84
	ldr r4, _02241270 @ =0x02249430
	add r3, sp, #0xc
	movs r2, #0x3c
_0224120E:
	ldrh r1, [r4]
	adds r4, r4, #2
	strh r1, [r3]
	adds r3, r3, #2
	subs r2, r2, #1
	bne _0224120E
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _02241274 @ =0x0000051C
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	str r0, [sp]
_0224122C:
	ldr r0, [sp]
	ldr r4, [sp, #4]
	lsls r1, r0, #2
	add r0, sp, #0xc
	movs r6, #0
	adds r5, r0, r1
_02241238:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _0224124A
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	bl FUN_0200D4C4
_0224124A:
	adds r6, r6, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r6, #6
	blt _02241238
	ldr r0, [sp, #4]
	adds r0, #0x30
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #5
	blt _0224122C
	add sp, #0x84
	pop {r4, r5, r6, r7, pc}
	nop
_02241270: .4byte 0x02249430
_02241274: .4byte 0x0000051C
	thumb_func_end ov62_02241204

	thumb_func_start ov62_02241278
ov62_02241278: @ 0x02241278
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r0, r1]
	ldr r4, _02241400 @ =0x022492F0
	str r0, [sp, #0x14]
	add r3, sp, #0x50
	movs r2, #6
_0224128C:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224128C
	movs r0, #0
	add r1, sp, #0x38
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	add r1, sp, #0x20
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	str r0, [r1, #0xc]
	str r0, [r1, #0x10]
	str r0, [r1, #0x14]
	str r0, [sp, #0x18]
	ldr r1, _02241404 @ =0x000004A4
	ldr r0, [sp, #8]
	ldrsh r0, [r0, r1]
	lsls r1, r0, #2
	ldr r0, [sp, #8]
	adds r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0xc]
_022412C6:
	ldr r1, _02241408 @ =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _022412D2
	b _022413DE
_022412D2:
	adds r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _022412E0
	movs r0, #1
	b _022412E2
_022412E0:
	movs r0, #0
_022412E2:
	movs r7, #0
	adds r1, r7, #0
	add r2, sp, #0x38
	add r4, sp, #0x20
	adds r3, r7, #0
_022412EC:
	stm r2!, {r3}
	adds r1, r1, #1
	stm r4!, {r3}
	cmp r1, #6
	blt _022412EC
	movs r1, #0x18
	muls r1, r0, r1
	add r0, sp, #0x50
	str r1, [sp, #0x1c]
	adds r0, r0, r1
	add r1, sp, #0x38
	add r2, sp, #0x20
_02241304:
	ldr r5, [sp, #0x10]
	ldr r4, _02241408 @ =0x00002608
	ldr r6, [r0]
	ldr r5, [r5, r4]
	lsls r4, r6, #1
	adds r4, r5, r4
	adds r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _0224132A
	stm r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _02241408 @ =0x00002608
	adds r7, r7, #1
	ldr r4, [r5, r4]
	adds r4, r4, r6
	adds r4, #0x98
	ldrb r4, [r4]
	stm r2!, {r4}
_0224132A:
	adds r3, r3, #1
	adds r0, r0, #4
	cmp r3, #3
	blt _02241304
	ldr r1, _02241408 @ =0x00002608
	ldr r0, [sp, #0x10]
	ldr r0, [r0, r1]
	adds r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02241344
	movs r7, #3
_02241344:
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x50
	adds r0, r1, r0
	lsls r4, r7, #2
	add r1, sp, #0x38
	add r2, sp, #0x20
	movs r3, #3
	adds r0, #0xc
	adds r1, r1, r4
	adds r2, r2, r4
_02241358:
	ldr r5, [sp, #0x10]
	ldr r4, _02241408 @ =0x00002608
	ldr r6, [r0]
	ldr r5, [r5, r4]
	lsls r4, r6, #1
	adds r4, r5, r4
	adds r4, #0x80
	ldrh r4, [r4]
	cmp r4, #0
	beq _0224137E
	stm r1!, {r4}
	ldr r5, [sp, #0x10]
	ldr r4, _02241408 @ =0x00002608
	adds r7, r7, #1
	ldr r4, [r5, r4]
	adds r4, r4, r6
	adds r4, #0x98
	ldrb r4, [r4]
	stm r2!, {r4}
_0224137E:
	adds r3, r3, #1
	adds r0, r0, #4
	cmp r3, #6
	blt _02241358
	ldr r5, [sp, #0xc]
	movs r7, #0
	add r6, sp, #0x38
	add r4, sp, #0x20
_0224138E:
	ldr r2, [sp, #0x14]
	ldr r1, _0224140C @ =0x00000514
	ldr r3, [r6]
	ldr r2, [r2, r1]
	ldr r0, [r4]
	adds r1, r1, #4
	str r2, [r5, r1]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	ldr r1, _02241410 @ =0x0000050C
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	ldr r2, _02241414 @ =0x00000518
	ldr r2, [r5, r2]
	bl ov62_02233A7C
	ldr r1, _02241418 @ =0x0000051C
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022413C6
	movs r1, #6
	subs r1, r1, r7
	bl FUN_0200D474
_022413C6:
	ldr r1, [sp, #0x14]
	ldr r0, _0224140C @ =0x00000514
	adds r7, r7, #1
	ldr r0, [r1, r0]
	adds r6, r6, #4
	adds r2, r0, #1
	ldr r0, _0224140C @ =0x00000514
	adds r4, r4, #4
	adds r5, #8
	str r2, [r1, r0]
	cmp r7, #6
	blt _0224138E
_022413DE:
	ldr r0, [sp, #0x10]
	adds r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, #0x30
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #5
	bge _022413F6
	b _022412C6
_022413F6:
	ldr r0, [sp, #8]
	bl ov62_02241204
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02241400: .4byte 0x022492F0
_02241404: .4byte 0x000004A4
_02241408: .4byte 0x00002608
_0224140C: .4byte 0x00000514
_02241410: .4byte 0x0000050C
_02241414: .4byte 0x00000518
_02241418: .4byte 0x0000051C
	thumb_func_end ov62_02241278

	thumb_func_start ov62_0224141C
ov62_0224141C: @ 0x0224141C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	movs r1, #0
	str r1, [sp, #4]
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	ldr r7, _0224145C @ =0x0000051C
	str r0, [sp]
_02241430:
	ldr r5, [sp]
	movs r4, #0
_02241434:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02241440
	adds r1, r6, #0
	bl FUN_0200D3F4
_02241440:
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #6
	blt _02241434
	ldr r0, [sp]
	adds r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _02241430
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224145C: .4byte 0x0000051C
	thumb_func_end ov62_0224141C

	thumb_func_start ov62_02241460
ov62_02241460: @ 0x02241460
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r1, #0x86
	adds r6, r0, #0
	lsls r1, r1, #4
	ldr r1, [r6, r1]
	str r1, [sp]
	movs r1, #1
	bl ov62_02234540
	movs r0, #0
	str r0, [sp, #4]
	adds r7, r0, #0
_0224147A:
	ldr r5, [sp]
	movs r4, #0
_0224147E:
	ldr r0, _022414B8 @ =0x0000051C
	ldr r2, [r5, r0]
	cmp r2, #0
	beq _02241494
	ldr r1, _022414BC @ =0x00000518
	adds r0, r6, #0
	ldr r1, [r5, r1]
	bl ov62_02233B24
	ldr r0, _022414B8 @ =0x0000051C
	str r7, [r5, r0]
_02241494:
	adds r4, r4, #1
	adds r5, #8
	cmp r4, #6
	blt _0224147E
	ldr r0, [sp]
	adds r0, #0x30
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _0224147A
	adds r0, r6, #0
	movs r1, #0
	bl ov62_02234540
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022414B8: .4byte 0x0000051C
_022414BC: .4byte 0x00000518
	thumb_func_end ov62_02241460

	thumb_func_start ov62_022414C0
ov62_022414C0: @ 0x022414C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	movs r1, #0
	str r1, [sp, #0x20]
	ldr r2, [sp, #0x20]
	add r1, sp, #0x8c
	str r2, [r1]
	str r2, [r1, #4]
	str r2, [r1, #8]
	str r2, [r1, #0xc]
	str r2, [r1, #0x10]
	str r2, [r1, #0x14]
	movs r2, #0x86
	lsls r2, r2, #4
	adds r1, r0, #0
	ldr r1, [r1, r2]
	movs r2, #0x51
	lsls r2, r2, #4
	ldr r3, [r1, r2]
	str r1, [sp, #0x1c]
	subs r2, #0x6c
	adds r1, r0, #0
	ldrsh r1, [r1, r2]
	str r0, [sp, #8]
	cmp r3, r1
	bne _022414F6
	b _02241758
_022414F6:
	movs r1, #1
	bl ov62_02234540
	movs r1, #0x51
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #4
	ldr r2, [r0, r1]
	ldr r0, [sp, #8]
	subs r1, #0x6c
	ldrsh r0, [r0, r1]
	cmp r2, r0
	ble _02241512
	movs r0, #4
	str r0, [sp, #0x20]
_02241512:
	ldr r0, [sp, #0x20]
	movs r1, #0x30
	muls r1, r0, r1
	ldr r0, [sp, #0x1c]
	movs r6, #0
	adds r4, r0, r1
	add r5, sp, #0x8c
	adds r7, r6, #0
_02241522:
	ldr r0, _0224175C @ =0x0000051C
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _0224153E
	ldr r1, _02241760 @ =0x00000518
	ldr r0, [sp, #8]
	ldr r1, [r4, r1]
	bl ov62_02233B40
	ldr r0, _02241760 @ =0x00000518
	ldr r0, [r4, r0]
	str r0, [r5]
	ldr r0, _0224175C @ =0x0000051C
	str r7, [r4, r0]
_0224153E:
	adds r6, r6, #1
	adds r4, #8
	adds r5, r5, #4
	cmp r6, #6
	blt _02241522
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _02241588
	ldr r2, _02241764 @ =0x000004EC
	ldr r7, [sp, #0x1c]
	movs r0, #4
	adds r3, r2, #0
	adds r5, r2, #0
	str r0, [sp, #0xc]
	adds r7, #0xc0
	adds r3, #0x30
	subs r4, r2, #4
	adds r5, #0x2c
_02241562:
	movs r0, #0
	adds r1, r7, #0
_02241566:
	ldr r6, [r1, r2]
	adds r0, r0, #1
	str r6, [r1, r3]
	ldr r6, [r1, r4]
	str r6, [r1, r5]
	adds r1, #8
	cmp r0, #6
	blt _02241566
	ldr r0, [sp, #0xc]
	subs r7, #0x30
	subs r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #1
	bge _02241562
	movs r0, #0
	str r0, [sp, #0x10]
	b _022415C0
_02241588:
	ldr r6, _0224175C @ =0x0000051C
	ldr r7, [sp, #0x1c]
	movs r0, #1
	adds r2, r6, #0
	adds r4, r6, #0
	mov ip, r0
	adds r7, #0x30
	subs r2, #0x30
	subs r3, r6, #4
	subs r4, #0x34
_0224159C:
	movs r1, #0
	adds r0, r7, #0
_022415A0:
	ldr r5, [r0, r6]
	adds r1, r1, #1
	str r5, [r0, r2]
	ldr r5, [r0, r3]
	str r5, [r0, r4]
	adds r0, #8
	cmp r1, #6
	blt _022415A0
	mov r0, ip
	adds r0, r0, #1
	adds r7, #0x30
	mov ip, r0
	cmp r0, #5
	blt _0224159C
	movs r0, #4
	str r0, [sp, #0x10]
_022415C0:
	ldr r1, _02241768 @ =0x000004A4
	ldr r0, [sp, #8]
	ldr r5, _0224176C @ =0x02249320
	ldrsh r1, [r0, r1]
	ldr r0, [sp, #0x10]
	add r4, sp, #0x5c
	adds r2, r1, r0
	movs r3, #6
_022415D0:
	ldm r5!, {r0, r1}
	stm r4!, {r0, r1}
	subs r3, r3, #1
	bne _022415D0
	add r0, sp, #0x44
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	add r0, sp, #0x2c
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	str r4, [r0, #0xc]
	str r4, [r0, #0x10]
	str r4, [r0, #0x14]
	lsls r0, r2, #2
	str r0, [sp, #0x14]
	ldr r1, _02241770 @ =0x00002608
	ldr r0, [sp, #8]
	adds r1, r0, r1
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x24]
	ldr r0, [r1, r0]
	adds r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _02241612
	movs r4, #1
_02241612:
	movs r0, #0
	str r0, [sp, #0x18]
	add r1, sp, #0x44
	add r2, sp, #0x2c
	adds r6, r0, #0
_0224161C:
	stm r1!, {r6}
	adds r0, r0, #1
	stm r2!, {r6}
	cmp r0, #6
	blt _0224161C
	movs r0, #0x18
	muls r0, r4, r0
	add r1, sp, #0x5c
	adds r2, r1, r0
	str r0, [sp, #0x28]
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x14]
	add r3, sp, #0x44
	add r5, sp, #0x2c
	adds r4, r1, r0
_0224163A:
	ldr r0, _02241770 @ =0x00002608
	ldr r7, [r2]
	ldr r1, [r4, r0]
	lsls r0, r7, #1
	adds r0, r1, r0
	adds r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _02241660
	stm r3!, {r0}
	ldr r0, _02241770 @ =0x00002608
	ldr r0, [r4, r0]
	adds r0, r0, r7
	adds r0, #0x98
	ldrb r0, [r0]
	stm r5!, {r0}
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
_02241660:
	adds r6, r6, #1
	adds r2, r2, #4
	cmp r6, #3
	blt _0224163A
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r0, [r1, r0]
	adds r0, #0x80
	bl ov62_02233F94
	cmp r0, #0
	beq _0224167C
	movs r0, #3
	str r0, [sp, #0x18]
_0224167C:
	ldr r0, [sp, #0x28]
	add r1, sp, #0x5c
	adds r2, r1, r0
	ldr r0, [sp, #0x18]
	movs r6, #3
	lsls r1, r0, #2
	add r0, sp, #0x44
	adds r3, r0, r1
	add r0, sp, #0x2c
	adds r2, #0xc
	adds r5, r0, r1
_02241692:
	ldr r0, _02241770 @ =0x00002608
	ldr r7, [r2]
	ldr r1, [r4, r0]
	lsls r0, r7, #1
	adds r0, r1, r0
	adds r0, #0x80
	ldrh r0, [r0]
	cmp r0, #0
	beq _022416B8
	stm r3!, {r0}
	ldr r0, _02241770 @ =0x00002608
	ldr r0, [r4, r0]
	adds r0, r0, r7
	adds r0, #0x98
	ldrb r0, [r0]
	stm r5!, {r0}
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
_022416B8:
	adds r6, r6, #1
	adds r2, r2, #4
	cmp r6, #6
	blt _02241692
	ldr r0, [sp, #0x10]
	movs r1, #0x30
	muls r1, r0, r1
	ldr r0, [sp, #0x1c]
	movs r5, #0
	add r7, sp, #0x44
	add r6, sp, #0x2c
	adds r4, r0, r1
_022416D0:
	ldr r2, [sp, #0x1c]
	ldr r1, _02241774 @ =0x00000514
	ldr r3, [r7]
	ldr r2, [r2, r1]
	ldr r0, [r6]
	adds r1, r1, #4
	str r2, [r4, r1]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	ldr r1, _02241778 @ =0x0000050C
	ldr r0, [sp, #8]
	ldr r1, [r2, r1]
	ldr r2, _02241760 @ =0x00000518
	ldr r2, [r4, r2]
	bl ov62_02233A7C
	ldr r1, _0224175C @ =0x0000051C
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02241708
	movs r1, #6
	subs r1, r1, r5
	bl FUN_0200D474
_02241708:
	ldr r1, [sp, #0x1c]
	ldr r0, _02241774 @ =0x00000514
	adds r5, r5, #1
	ldr r0, [r1, r0]
	adds r7, r7, #4
	adds r2, r0, #1
	ldr r0, _02241774 @ =0x00000514
	adds r6, r6, #4
	adds r4, #8
	str r2, [r1, r0]
	cmp r5, #6
	blt _022416D0
	ldr r0, [sp, #8]
	bl ov62_02241204
	ldr r1, _02241768 @ =0x000004A4
	ldr r0, [sp, #8]
	ldr r6, _0224177C @ =0x000186A0
	ldrsh r2, [r0, r1]
	ldr r0, [sp, #0x1c]
	adds r1, #0x6c
	str r2, [r0, r1]
	movs r5, #0
	add r4, sp, #0x8c
_02241738:
	ldr r1, [r4]
	cmp r1, #0
	beq _02241748
	ldr r0, [sp, #8]
	adds r1, r1, r6
	ldr r0, [r0, #0x1c]
	bl FUN_0200D070
_02241748:
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #6
	blt _02241738
	ldr r0, [sp, #8]
	movs r1, #0
	bl ov62_02234540
_02241758:
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224175C: .4byte 0x0000051C
_02241760: .4byte 0x00000518
_02241764: .4byte 0x000004EC
_02241768: .4byte 0x000004A4
_0224176C: .4byte 0x02249320
_02241770: .4byte 0x00002608
_02241774: .4byte 0x00000514
_02241778: .4byte 0x0000050C
_0224177C: .4byte 0x000186A0
	thumb_func_end ov62_022414C0

	thumb_func_start ov62_02241780
ov62_02241780: @ 0x02241780
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	movs r2, #0x13
	lsls r2, r2, #6
	ldrh r3, [r0, r2]
	ldr r1, _022417BC @ =0x0000FFFF
	cmp r3, r1
	beq _02241796
	movs r0, #1
	bx lr
_02241796:
	adds r1, r2, #2
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	beq _022417A2
	movs r0, #1
	bx lr
_022417A2:
	adds r1, r2, #3
	ldrb r1, [r0, r1]
	cmp r1, #0xff
	bne _022417B2
	adds r1, r2, #4
	ldrb r0, [r0, r1]
	cmp r0, #0xff
	beq _022417B6
_022417B2:
	movs r0, #1
	bx lr
_022417B6:
	movs r0, #0
	bx lr
	nop
_022417BC: .4byte 0x0000FFFF
	thumb_func_end ov62_02241780

	thumb_func_start ov62_022417C0
ov62_022417C0: @ 0x022417C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x9c
	adds r3, r1, #0
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _022418C8 @ =0x022493D0
	str r0, [sp, #0x20]
	add r4, sp, #0x3c
	movs r2, #0xc
_022417D6:
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r2, r2, #1
	bne _022417D6
	ldr r6, _022418CC @ =0x022491D8
	add r4, sp, #0x24
	adds r2, r4, #0
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	cmp r3, #0
	beq _022417F8
	cmp r3, #1
	b _02241804
_022417F8:
	ldr r1, _022418D0 @ =0x00000794
	ldr r0, [sp, #0x20]
	movs r3, #6
	str r3, [r0, r1]
	add r5, sp, #0x3c
	str r2, [sp, #0x18]
_02241804:
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _022418D0 @ =0x00000794
	ldr r0, [sp, #0x20]
	movs r7, #1
	ldr r0, [r0, r1]
	lsls r7, r7, #8
	cmp r0, #0
	ble _022418C4
	ldr r1, _022418D4 @ =0x00000614
	ldr r0, [sp, #0x20]
	adds r4, r0, r1
_0224181C:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldr r0, [r5, #4]
	adds r1, r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x48]
	ldr r1, [r1]
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	muls r0, r1, r0
	adds r7, r7, r0
	movs r0, #0
	beq _02241880
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov62_0223429C
_02241880:
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022418D8 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	adds r4, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _022418D0 @ =0x00000794
	adds r5, #0x10
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _0224181C
_022418C4:
	add sp, #0x9c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022418C8: .4byte 0x022493D0
_022418CC: .4byte 0x022491D8
_022418D0: .4byte 0x00000794
_022418D4: .4byte 0x00000614
_022418D8: .4byte 0x000F0D00
	thumb_func_end ov62_022417C0

	thumb_func_start ov62_022418DC
ov62_022418DC: @ 0x022418DC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r6, [r5, r0]
	ldr r7, _0224194C @ =0x00000644
	adds r4, r1, #0
	adds r0, r6, r7
	movs r1, #0
	bl FUN_0201ADA4
	cmp r4, #0xff
	bne _02241904
	ldr r0, [r5, #0x48]
	movs r1, #0x7d
	bl FUN_0200B1EC
	adds r4, r0, #0
	b _02241924
_02241904:
	adds r0, r4, #0
	subs r0, #0xfa
	cmp r0, #3
	ldr r0, [r5, #0x48]
	bhi _0224191A
	subs r4, #0x55
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	b _02241924
_0224191A:
	adds r4, #0x84
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
_02241924:
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241950 @ =0x000F0D00
	adds r2, r4, #0
	str r0, [sp, #8]
	adds r0, r6, r7
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r6, r7
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224194C: .4byte 0x00000644
_02241950: .4byte 0x000F0D00
	thumb_func_end ov62_022418DC

	thumb_func_start ov62_02241954
ov62_02241954: @ 0x02241954
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x1fc
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r7, _022419C8 @ =0x00000654
	adds r6, r1, #0
	adds r0, r4, r7
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, _022419CC @ =0x0000FFFF
	cmp r6, r0
	bne _02241980
	ldr r0, [r5, #0x48]
	movs r1, #0x7d
	bl FUN_0200B1EC
	adds r5, r0, #0
	b _0224199C
_02241980:
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r5, r0, #0
	adds r0, r6, #0
	movs r1, #0x66
	add r2, sp, #0x10
	bl FUN_0200B274
	adds r0, r5, #0
	add r1, sp, #0x10
	bl FUN_02023D28
_0224199C:
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022419D0 @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, r7
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, r7
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_020237BC
	add sp, #0x1fc
	add sp, #0x14
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022419C8: .4byte 0x00000654
_022419CC: .4byte 0x0000FFFF
_022419D0: .4byte 0x000F0D00
	thumb_func_end ov62_02241954

	thumb_func_start ov62_022419D4
ov62_022419D4: @ 0x022419D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r7, [r5, r0]
	ldr r0, _02241A9C @ =0x00000664
	str r1, [sp, #0x10]
	adds r0, r7, r0
	movs r1, #0
	adds r4, r2, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x10]
	cmp r0, #0xff
	bne _02241A04
	cmp r4, #0xff
	bne _02241A04
	ldr r0, [r5, #0x48]
	movs r1, #0x7d
	bl FUN_0200B1EC
	str r0, [sp, #0x14]
	b _02241A70
_02241A04:
	movs r0, #0x66
	bl ov62_02231690
	adds r6, r0, #0
	cmp r4, #0
	beq _02241A3C
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	movs r1, #0x17
	bl FUN_0200B1EC
	adds r5, r0, #0
	ldr r2, [sp, #0x10]
	adds r0, r6, #0
	movs r1, #0
	adds r3, r4, #0
	bl FUN_0200BE08
	ldr r1, [sp, #0x14]
	adds r0, r6, #0
	adds r2, r5, #0
	bl FUN_0200C388
	b _02241A64
_02241A3C:
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x14]
	ldr r0, [r5, #0x48]
	movs r1, #0x16
	bl FUN_0200B1EC
	adds r5, r0, #0
	ldr r2, [sp, #0x10]
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0200BDD0
	ldr r1, [sp, #0x14]
	adds r0, r6, #0
	adds r2, r5, #0
	bl FUN_0200C388
_02241A64:
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B3F0
_02241A70:
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241AA0 @ =0x000F0D00
	ldr r2, [sp, #0x14]
	str r0, [sp, #8]
	ldr r0, _02241A9C @ =0x00000664
	adds r3, r1, #0
	adds r0, r7, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, _02241A9C @ =0x00000664
	adds r0, r7, r0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02241A9C: .4byte 0x00000664
_02241AA0: .4byte 0x000F0D00
	thumb_func_end ov62_022419D4

	thumb_func_start ov62_02241AA4
ov62_02241AA4: @ 0x02241AA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	adds r3, r1, #0
	movs r1, #0x86
	lsls r1, r1, #4
	str r0, [sp, #0x14]
	ldr r0, [r0, r1]
	ldr r6, _02241BA8 @ =0x02249350
	str r0, [sp, #0x20]
	add r4, sp, #0x30
	movs r2, #6
_02241ABA:
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r2, r2, #1
	bne _02241ABA
	ldr r6, _02241BAC @ =0x02249144
	add r4, sp, #0x24
	ldm r6!, {r0, r1}
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r6]
	cmp r3, #0
	str r0, [r4]
	beq _02241AD8
	cmp r3, #1
	b _02241AE4
_02241AD8:
	ldr r1, _02241BB0 @ =0x00000798
	ldr r0, [sp, #0x20]
	movs r3, #3
	str r3, [r0, r1]
	add r5, sp, #0x30
	str r2, [sp, #0x18]
_02241AE4:
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r1, _02241BB0 @ =0x00000798
	ldr r0, [sp, #0x20]
	movs r7, #1
	ldr r0, [r0, r1]
	lsls r7, r7, #8
	cmp r0, #0
	ble _02241BA4
	ldr r0, [sp, #0x20]
	subs r1, #0xc4
	adds r4, r0, r1
_02241AFC:
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldr r0, [r5, #4]
	adds r1, r4, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r5, #8]
	movs r2, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [r5]
	ldr r0, [r0, #0x24]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	ldr r0, [r0, #0x48]
	ldr r1, [r1]
	bl FUN_0200B1EC
	adds r6, r0, #0
	ldr r1, [r5, #8]
	ldr r0, [r5, #0xc]
	muls r0, r1, r0
	adds r7, r7, r0
	movs r0, #0
	beq _02241B60
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov62_0223429C
_02241B60:
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241BB4 @ =0x000F0D00
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	adds r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	adds r4, #0x10
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	ldr r0, _02241BB0 @ =0x00000798
	adds r5, #0x10
	ldr r1, [r1, r0]
	ldr r0, [sp, #0x1c]
	cmp r0, r1
	blt _02241AFC
_02241BA4:
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02241BA8: .4byte 0x02249350
_02241BAC: .4byte 0x02249144
_02241BB0: .4byte 0x00000798
_02241BB4: .4byte 0x000F0D00
	thumb_func_end ov62_02241AA4

	thumb_func_start ov62_02241BB8
ov62_02241BB8: @ 0x02241BB8
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r6, [r0, r1]
	subs r1, #0xcc
	ldr r0, [r6, r1]
	movs r4, #0
	cmp r0, #0
	ble _02241BE6
	ldr r0, _02241BF0 @ =0x00000614
	ldr r7, _02241BF4 @ =0x00000794
	adds r5, r6, r0
_02241BD0:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, r0
	blt _02241BD0
_02241BE6:
	ldr r0, _02241BF4 @ =0x00000794
	movs r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02241BF0: .4byte 0x00000614
_02241BF4: .4byte 0x00000794
	thumb_func_end ov62_02241BB8

	thumb_func_start ov62_02241BF8
ov62_02241BF8: @ 0x02241BF8
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r6, [r0, r1]
	subs r1, #0xc8
	ldr r0, [r6, r1]
	movs r4, #0
	cmp r0, #0
	ble _02241C28
	ldr r0, _02241C30 @ =0x000006D4
	adds r7, r0, #0
	adds r5, r6, r0
	adds r7, #0xc4
_02241C12:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, r0
	blt _02241C12
_02241C28:
	ldr r0, _02241C34 @ =0x00000798
	movs r1, #0
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02241C30: .4byte 0x000006D4
_02241C34: .4byte 0x00000798
	thumb_func_end ov62_02241BF8

	thumb_func_start ov62_02241C38
ov62_02241C38: @ 0x02241C38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02241D18 @ =0x00000614
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r3, #3
	str r3, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x20
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r2, #2
	bl FUN_0201A7E8
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x7e
	bl FUN_0200B1EC
	movs r1, #0
	adds r7, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241D1C @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, r6
	bl FUN_0201A9A4
	adds r0, r7, #0
	bl FUN_020237BC
	adds r6, #0xc0
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	adds r0, #0xf2
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r3, #0xb
	bl FUN_0201A7E8
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x5f
	bl FUN_0200B1EC
	adds r5, r0, #0
	movs r0, #0
	adds r1, r5, #0
	adds r2, r0, #0
	bl FUN_02002EB4
	movs r1, #0x50
	subs r0, r1, r0
	movs r1, #0
	lsrs r3, r0, #1
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02241D1C @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, r6
	bl FUN_0201A9A4
	adds r0, r5, #0
	bl FUN_020237BC
	ldr r0, _02241D20 @ =0x00000798
	movs r1, #1
	str r1, [r4, r0]
	subs r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02241D18: .4byte 0x00000614
_02241D1C: .4byte 0x000F0D00
_02241D20: .4byte 0x00000798
	thumb_func_end ov62_02241C38

	thumb_func_start ov62_02241D24
ov62_02241D24: @ 0x02241D24
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02241D3C
	cmp r1, #1
	beq _02241DE6
	b _02241E7E
_02241D3C:
	bl ov62_02234314
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	bl ov62_022315C8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r5, #0
	movs r1, #0x38
	movs r2, #3
	bl ov62_022343B8
	adds r0, r5, #0
	movs r1, #0x3b
	movs r2, #7
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r5, #0
	bl ov62_02245C64
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02245C08
	movs r1, #0x7d
	ldr r0, _02241E8C @ =0x00000514
	lsls r1, r1, #2
	str r1, [r4, r0]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02241E90 @ =0x022491AC
	ldr r2, _02241E94 @ =ov62_022458A0
	movs r1, #5
	adds r3, r5, #0
	bl FUN_02023FCC
	ldr r1, _02241E98 @ =0x00000608
	ldr r2, _02241E9C @ =ov62_02245968
	str r0, [r4, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02241EA0 @ =0x022491F0
	movs r1, #9
	adds r3, r5, #0
	bl FUN_02023FCC
	ldr r1, _02241EA4 @ =0x0000060C
	adds r5, #8
	str r0, [r4, r1]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02241E84
_02241DE6:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02241E64
	adds r0, r5, #0
	movs r1, #0x7c
	bl ov62_02231AAC
	adds r0, r5, #0
	movs r1, #0
	bl ov62_022417C0
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02241AA4
	movs r1, #0x13
	ldr r0, _02241EA8 @ =0x0000FFFF
	lsls r1, r1, #6
	strh r0, [r4, r1]
	movs r2, #0xff
	adds r0, r1, #2
	strb r2, [r4, r0]
	adds r0, r1, #3
	strb r2, [r4, r0]
	adds r0, r1, #4
	strb r2, [r4, r0]
	ldrh r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_02241954
	ldr r1, _02241EAC @ =0x000004C2
	adds r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov62_022418DC
	ldr r2, _02241EB0 @ =0x000004C3
	adds r0, r5, #0
	ldrb r1, [r4, r2]
	adds r2, r2, #1
	ldrb r2, [r4, r2]
	bl ov62_022419D4
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02241E64:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02241E84
_02241E7E:
	movs r1, #3
	bl ov62_0222FB60
_02241E84:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02241E8C: .4byte 0x00000514
_02241E90: .4byte 0x022491AC
_02241E94: .4byte ov62_022458A0
_02241E98: .4byte 0x00000608
_02241E9C: .4byte ov62_02245968
_02241EA0: .4byte 0x022491F0
_02241EA4: .4byte 0x0000060C
_02241EA8: .4byte 0x0000FFFF
_02241EAC: .4byte 0x000004C2
_02241EB0: .4byte 0x000004C3
	thumb_func_end ov62_02241D24

	thumb_func_start ov62_02241EB4
ov62_02241EB4: @ 0x02241EB4
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _02241EC8 @ =0x00000608
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_02241EC8: .4byte 0x00000608
	thumb_func_end ov62_02241EB4

	thumb_func_start ov62_02241ECC
ov62_02241ECC: @ 0x02241ECC
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02241EE6
	cmp r1, #1
	beq _02241F0E
	cmp r1, #2
	beq _02241F48
	b _02241F72
_02241EE6:
	bl ov62_02241BB8
	adds r0, r5, #0
	bl ov62_02241BF8
	adds r0, r5, #0
	bl ov62_02231B8C
	ldr r0, _0224201C @ =0x00000608
	ldr r0, [r4, r0]
	bl FUN_02024034
	ldr r0, _02242020 @ =0x0000060C
	ldr r0, [r4, r0]
	bl FUN_02024034
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02242016
_02241F0E:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02241F2E
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02241F2E:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242016
_02241F48:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02245D50
	adds r0, r5, #0
	bl ov62_0223146C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02242016
_02241F72:
	bl ov62_02233790
	cmp r0, #0
	beq _02242016
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02241FE6
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	bl FUN_020181C4
	b _02242016
_02241FE6:
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_02242016:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224201C: .4byte 0x00000608
_02242020: .4byte 0x0000060C
	thumb_func_end ov62_02241ECC

	thumb_func_start ov62_02242024
ov62_02242024: @ 0x02242024
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0224203A
	cmp r1, #1
	beq _02242044
	b _0224207E
_0224203A:
	bl ov62_02241BF8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02242044:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242064
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02242064:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _022420A6
_0224207E:
	ldr r1, _022420AC @ =0x000004C5
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _02242090
	cmp r1, #1
	beq _02242098
	cmp r1, #2
	beq _022420A0
	b _022420A6
_02242090:
	movs r1, #6
	bl ov62_0222FB60
	b _022420A6
_02242098:
	movs r1, #7
	bl ov62_0222FB60
	b _022420A6
_022420A0:
	movs r1, #0xa
	bl ov62_0222FB60
_022420A6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022420AC: .4byte 0x000004C5
	thumb_func_end ov62_02242024

	thumb_func_start ov62_022420B0
ov62_022420B0: @ 0x022420B0
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _022420C2
	b _02242258
_022420C2:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022420CE: @ jump table
	.2byte _022420D8 - _022420CE - 2 @ case 0
	.2byte _02242106 - _022420CE - 2 @ case 1
	.2byte _0224219C - _022420CE - 2 @ case 2
	.2byte _022421E6 - _022420CE - 2 @ case 3
	.2byte _02242216 - _022420CE - 2 @ case 4
_022420D8:
	movs r1, #0x71
	bl ov62_02231B3C
	ldr r1, _02242264 @ =0x000004C2
	movs r0, #0xff
	strb r0, [r5, r1]
	ldrb r1, [r5, r1]
	adds r0, r4, #0
	bl ov62_022418DC
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02245C08
	adds r0, r4, #0
	movs r1, #0x3d
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242260
_02242106:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242182
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _02242268 @ =0x0000047C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022335B0
	ldr r0, _0224226C @ =0x0000049C
	adds r0, r4, r0
	bl ov62_02233310
	adds r0, r4, #0
	bl FUN_0208BE68
	cmp r0, #1
	ldr r0, _0224226C @ =0x0000049C
	bne _02242152
	ldr r2, _02242270 @ =0x0224926C
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov62_022324A0
	b _0224215C
_02242152:
	ldr r2, _02242274 @ =0x02249240
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov62_022324A0
_0224215C:
	ldr r1, _02242268 @ =0x0000047C
	adds r0, r4, r1
	adds r1, #0x20
	adds r1, r4, r1
	bl ov62_02233638
	ldr r0, _0224226C @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	movs r2, #2
	bl ov62_0223331C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02242182:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242260
_0224219C:
	ldr r0, _02242268 @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233664
	ldr r1, _0224226C @ =0x0000049C
	adds r0, r4, r1
	subs r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov62_022332AC
	ldr r0, _0224226C @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_02232F68
	adds r1, r0, #0
	beq _022421CE
	ldr r0, _02242264 @ =0x000004C2
	strb r1, [r5, r0]
	adds r0, r4, #0
	bl ov62_022418DC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022421CE:
	ldr r0, _02242278 @ =0x02249138
	bl FUN_02022760
	cmp r0, #0
	beq _02242260
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242260
_022421E6:
	ldr r0, _02242268 @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233600
	ldr r0, _0224226C @ =0x0000049C
	adds r0, r4, r0
	bl ov62_022332FC
	ldr r0, _0224226C @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022334FC
	ldr r0, _02242268 @ =0x0000047C
	adds r0, r4, r0
	bl ov62_022335F4
	ldr r0, _0224226C @ =0x0000049C
	adds r0, r4, r0
	bl ov62_02233310
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02242216:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0224223E
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0224223E:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242260
_02242258:
	adds r0, r4, #0
	movs r1, #0xb
	bl ov62_0222FB60
_02242260:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02242264: .4byte 0x000004C2
_02242268: .4byte 0x0000047C
_0224226C: .4byte 0x0000049C
_02242270: .4byte 0x0224926C
_02242274: .4byte 0x02249240
_02242278: .4byte 0x02249138
	thumb_func_end ov62_022420B0

	thumb_func_start ov62_0224227C
ov62_0224227C: @ 0x0224227C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	bne _022422B0
	movs r1, #0x72
	bl ov62_02231B3C
	movs r1, #0x13
	ldr r0, _022422BC @ =0x0000FFFF
	lsls r1, r1, #6
	strh r0, [r4, r1]
	ldrh r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_02241954
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02245C08
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_022422B0:
	adds r0, r5, #0
	movs r1, #8
	bl ov62_0222FB60
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022422BC: .4byte 0x0000FFFF
	thumb_func_end ov62_0224227C

	thumb_func_start ov62_022422C0
ov62_022422C0: @ 0x022422C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #0x14]
	movs r0, #1
	str r0, [sp, #0x28]
	movs r1, #0x86
	ldr r0, [sp, #0x14]
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _022423C8 @ =0x000006D4
	ldr r5, _022423CC @ =0x022491F0
	movs r7, #0
	adds r4, r1, r0
_022422DA:
	ldrb r0, [r5, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	ldrb r0, [r5]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x20]
	ldrb r0, [r5, #3]
	lsrs r1, r0, #3
	ldr r0, [sp, #0x24]
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #1]
	lsrs r1, r0, #3
	ldr r0, [sp, #0x20]
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r4, #0
	bl FUN_0201A7A0
	ldr r0, [sp, #0x20]
	adds r1, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	movs r2, #6
	str r0, [sp, #4]
	str r6, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x24]
	ldr r0, [r0, #0x24]
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	ldr r0, [r0, #0x48]
	adds r1, #0x44
	bl FUN_0200B1EC
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x2c]
	adds r0, r4, #0
	bl ov62_0223429C
	lsls r1, r6, #3
	subs r1, #0x10
	str r0, [sp, #0x30]
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	bl ov62_02242748
	cmp r0, #1
	bne _02242384
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022423D0 @ =0x000F0D00
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201D78C
	b _022423A0
_02242384:
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x2c]
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022423D4 @ =0x000C0B00
	ldr r3, [sp, #0x30]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201D78C
_022423A0:
	adds r0, r4, #0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x2c]
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	adds r7, r7, #1
	adds r1, r0, #0
	ldr r0, [sp, #0x28]
	muls r1, r6, r1
	adds r0, r0, r1
	str r0, [sp, #0x28]
	adds r4, #0x10
	adds r5, r5, #4
	cmp r7, #9
	blo _022422DA
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_022423C8: .4byte 0x000006D4
_022423CC: .4byte 0x022491F0
_022423D0: .4byte 0x000F0D00
_022423D4: .4byte 0x000C0B00
	thumb_func_end ov62_022422C0

	thumb_func_start ov62_022423D8
ov62_022423D8: @ 0x022423D8
	push {r3, r4, r5, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _022423FC @ =0x000006D4
	movs r4, #0
	adds r5, r1, r0
_022423E6:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #9
	blo _022423E6
	pop {r3, r4, r5, pc}
	.align 2, 0
_022423FC: .4byte 0x000006D4
	thumb_func_end ov62_022423D8

	thumb_func_start ov62_02242400
ov62_02242400: @ 0x02242400
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bhi _0224250A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224241C: @ jump table
	.2byte _02242426 - _0224241C - 2 @ case 0
	.2byte _02242436 - _0224241C - 2 @ case 1
	.2byte _02242476 - _0224241C - 2 @ case 2
	.2byte _0224249E - _0224241C - 2 @ case 3
	.2byte _022424A8 - _0224241C - 2 @ case 4
_02242426:
	movs r1, #0x3c
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242524
_02242436:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0224245C
	adds r0, r4, #0
	bl ov62_022422C0
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0224245C:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242524
_02242476:
	ldr r0, _02242528 @ =0x0000060C
	ldr r0, [r5, r0]
	bl FUN_0202404C
	ldr r0, _0224252C @ =0x02249138
	bl FUN_02022760
	cmp r0, #0
	bne _02242490
	ldr r0, _02242530 @ =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02242524
_02242490:
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242524
_0224249E:
	bl ov62_022423D8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022424A8:
	ldr r0, _02242530 @ =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _022424C8
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242524
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242524
_022424C8:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022424F0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022424F0:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242524
_0224250A:
	ldr r0, _02242530 @ =0x000004D8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _0224251C
	adds r0, r4, #0
	movs r1, #9
	bl ov62_0222FB60
	b _02242524
_0224251C:
	adds r0, r4, #0
	movs r1, #0xb
	bl ov62_0222FB60
_02242524:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02242528: .4byte 0x0000060C
_0224252C: .4byte 0x02249138
_02242530: .4byte 0x000004D8
	thumb_func_end ov62_02242400

	thumb_func_start ov62_02242534
ov62_02242534: @ 0x02242534
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02242548
	b _02242702
_02242548:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02242554: @ jump table
	.2byte _0224255E - _02242554 - 2 @ case 0
	.2byte _0224257E - _02242554 - 2 @ case 1
	.2byte _02242618 - _02242554 - 2 @ case 2
	.2byte _0224266C - _02242554 - 2 @ case 3
	.2byte _0224269C - _02242554 - 2 @ case 4
_0224255E:
	movs r1, #0x72
	bl ov62_02231B3C
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02245C08
	adds r0, r4, #0
	movs r1, #0x3a
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242726
_0224257E:
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	bne _02242590
	b _02242726
_02242590:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _0224272C @ =0x0000047C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022335B0
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r3, _02242730 @ =0x022492C4
	adds r2, r5, r0
	movs r6, #5
_022425AC:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _022425AC
	ldr r0, [r3]
	ldr r1, _02242734 @ =0x000004DC
	str r0, [r2]
	ldr r2, [r5, r1]
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	subs r0, #0x14
	ldr r2, [r5, r0]
	adds r0, r1, #0
	adds r0, #8
	subs r1, #0x40
	str r2, [r5, r0]
	adds r0, r4, r1
	bl ov62_02233310
	ldr r3, _02242738 @ =0x0000049C
	adds r1, r4, #0
	adds r2, r3, #0
	adds r2, #0x38
	adds r0, r4, r3
	adds r3, #0x44
	ldr r2, [r5, r2]
	adds r3, r5, r3
	bl ov62_02232594
	ldr r1, _0224273C @ =0x000004E4
	movs r0, #0
	str r0, [r4, r1]
	adds r0, r1, #0
	subs r0, #0x68
	subs r1, #0x48
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov62_02233638
	ldr r0, _02242738 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	movs r2, #2
	bl ov62_0223331C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242726
_02242618:
	ldr r0, _0224272C @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233664
	ldr r1, _02242738 @ =0x0000049C
	adds r0, r4, r1
	subs r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov62_022332AC
	ldr r0, _02242738 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_02232F68
	adds r1, r0, #0
	beq _0224264C
	movs r0, #0x13
	lsls r0, r0, #6
	strh r1, [r5, r0]
	adds r0, r4, #0
	bl ov62_02241954
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0224264C:
	ldr r0, _02242740 @ =0x02249138
	bl FUN_02022760
	cmp r0, #0
	beq _02242726
	movs r0, #0x13
	ldr r1, _02242744 @ =0x0000FFFF
	lsls r0, r0, #6
	strh r1, [r5, r0]
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242726
_0224266C:
	ldr r0, _0224272C @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233600
	ldr r0, _02242738 @ =0x0000049C
	adds r0, r4, r0
	bl ov62_022332FC
	ldr r0, _02242738 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022334FC
	ldr r0, _0224272C @ =0x0000047C
	adds r0, r4, r0
	bl ov62_022335F4
	ldr r0, _02242738 @ =0x0000049C
	adds r0, r4, r0
	bl ov62_02233310
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0224269C:
	movs r0, #0x13
	lsls r0, r0, #6
	ldrh r1, [r5, r0]
	ldr r0, _02242744 @ =0x0000FFFF
	cmp r1, r0
	beq _022426EA
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022426D0
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022426D0:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242726
_022426EA:
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242726
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242726
_02242702:
	adds r0, r4, #0
	bl ov62_02242938
	movs r0, #0x13
	lsls r0, r0, #6
	ldrh r1, [r5, r0]
	ldr r0, _02242744 @ =0x0000FFFF
	cmp r1, r0
	beq _0224271E
	adds r0, r4, #0
	movs r1, #0xb
	bl ov62_0222FB60
	b _02242726
_0224271E:
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
_02242726:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0224272C: .4byte 0x0000047C
_02242730: .4byte 0x022492C4
_02242734: .4byte 0x000004DC
_02242738: .4byte 0x0000049C
_0224273C: .4byte 0x000004E4
_02242740: .4byte 0x02249138
_02242744: .4byte 0x0000FFFF
	thumb_func_end ov62_02242534

	thumb_func_start ov62_02242748
ov62_02242748: @ 0x02242748
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r1, #1
	ldr r2, _022427C8 @ =0x02249944
	lsls r0, r0, #1
	ldrh r4, [r2, r0]
	lsls r0, r1, #1
	ldrh r6, [r2, r0]
	ldr r1, [sp, #8]
	movs r0, #0x66
	add r2, sp, #0xc
	bl ov62_02231948
	str r0, [sp, #4]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02027560
	str r0, [sp]
	adds r7, r6, #0
	cmp r6, r4
	bge _0224279A
	ldr r0, [sp, #4]
	lsls r1, r6, #1
	adds r5, r0, r1
_02242782:
	ldrh r1, [r5]
	ldr r0, [sp]
	bl FUN_02026FE8
	cmp r0, #0
	bne _02242792
	ldr r0, _022427CC @ =0x0000FFFF
	strh r0, [r5]
_02242792:
	adds r7, r7, #1
	adds r5, r5, #2
	cmp r7, r4
	blt _02242782
_0224279A:
	cmp r6, r4
	bge _022427BA
	ldr r0, [sp, #4]
	lsls r1, r6, #1
	adds r2, r0, r1
	ldr r0, _022427CC @ =0x0000FFFF
_022427A6:
	ldrh r1, [r2]
	cmp r1, r0
	beq _022427B2
	movs r0, #1
	str r0, [sp, #8]
	b _022427BA
_022427B2:
	adds r6, r6, #1
	adds r2, r2, #2
	cmp r6, r4
	blt _022427A6
_022427BA:
	ldr r0, [sp, #4]
	bl FUN_020181C4
	ldr r0, [sp, #8]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022427C8: .4byte 0x02249944
_022427CC: .4byte 0x0000FFFF
	thumb_func_end ov62_02242748

	thumb_func_start ov62_022427D0
ov62_022427D0: @ 0x022427D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r0, r1, #1
	ldr r2, _02242920 @ =0x02249944
	lsls r0, r0, #1
	ldrh r6, [r2, r0]
	lsls r0, r1, #1
	ldrh r0, [r2, r0]
	ldr r2, _02242924 @ =0x000004CC
	movs r1, #0
	str r0, [sp]
	movs r0, #0x66
	adds r2, r4, r2
	bl ov62_02231948
	movs r2, #0x4d
	lsls r2, r2, #4
	str r0, [r4, r2]
	subs r2, r2, #4
	movs r0, #0x66
	movs r1, #0
	adds r2, r4, r2
	bl ov62_02231948
	str r0, [sp, #8]
	movs r0, #0x83
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02027560
	str r0, [sp, #4]
	ldr r0, _02242928 @ =0x000004C8
	movs r1, #0
	ldr r7, [sp]
	str r1, [r4, r0]
	adds r0, r7, #0
	cmp r0, r6
	bge _0224284E
	lsls r1, r0, #1
	ldr r0, [sp, #8]
	adds r5, r0, r1
_0224282A:
	ldrh r1, [r5]
	ldr r0, [sp, #4]
	bl FUN_02026FE8
	cmp r0, #0
	bne _0224283C
	ldr r0, _0224292C @ =0x0000FFFF
	strh r0, [r5]
	b _02242846
_0224283C:
	ldr r0, _02242928 @ =0x000004C8
	ldr r0, [r4, r0]
	adds r1, r0, #1
	ldr r0, _02242928 @ =0x000004C8
	str r1, [r4, r0]
_02242846:
	adds r7, r7, #1
	adds r5, r5, #2
	cmp r7, r6
	blt _0224282A
_0224284E:
	ldr r1, [sp]
	movs r0, #0
	cmp r1, r6
	bge _0224287E
	lsls r2, r1, #1
	ldr r1, [sp, #8]
	ldr r7, _0224292C @ =0x0000FFFF
	adds r2, r1, r2
	adds r3, r0, #0
_02242860:
	ldrh r1, [r2]
	cmp r1, r7
	beq _02242872
	movs r5, #0x4d
	lsls r5, r5, #4
	ldr r5, [r4, r5]
	adds r0, r0, #1
	strh r1, [r5, r3]
	adds r3, r3, #2
_02242872:
	ldr r1, [sp]
	adds r2, r2, #2
	adds r1, r1, #1
	str r1, [sp]
	cmp r1, r6
	blt _02242860
_0224287E:
	ldr r1, _02242924 @ =0x000004CC
	ldr r1, [r4, r1]
	cmp r0, r1
	bge _022428A4
	movs r7, #0x4d
	ldr r1, [sp, #8]
	lsls r6, r0, #1
	lsls r7, r7, #4
	adds r5, r1, r6
	subs r1, r7, #4
_02242892:
	ldrh r3, [r5]
	ldr r2, [r4, r7]
	adds r0, r0, #1
	strh r3, [r2, r6]
	ldr r2, [r4, r1]
	adds r5, r5, #2
	adds r6, r6, #2
	cmp r0, r2
	blt _02242892
_022428A4:
	ldr r0, [sp, #8]
	bl FUN_020181C4
	ldr r1, _02242928 @ =0x000004C8
	movs r0, #0x66
	ldr r1, [r4, r1]
	lsls r1, r1, #4
	bl FUN_02018144
	ldr r2, _02242930 @ =0x000004DC
	movs r1, #0
	str r0, [r4, r2]
	ldr r0, [r4, r2]
	subs r2, #0x14
	ldr r2, [r4, r2]
	lsls r2, r2, #4
	blx FUN_020C4CF4
	ldr r0, _02242928 @ =0x000004C8
	movs r5, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02242904
	ldr r7, _02242930 @ =0x000004DC
	adds r2, r5, #0
	adds r0, r7, #0
	adds r3, r5, #0
	subs r0, #0x14
_022428DC:
	movs r1, #0x4d
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	ldr r6, _02242930 @ =0x000004DC
	ldrh r1, [r1, r2]
	ldr r6, [r4, r6]
	adds r5, r5, #1
	str r1, [r6, r3]
	movs r1, #0x4d
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	ldr r6, [r4, r7]
	ldrh r1, [r1, r2]
	adds r6, r6, r3
	adds r2, r2, #2
	str r1, [r6, #4]
	ldr r1, [r4, r0]
	adds r3, #0x10
	cmp r5, r1
	blt _022428DC
_02242904:
	movs r2, #0x67
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x66
	bl FUN_0200B144
	ldr r1, _02242934 @ =0x000004D4
	movs r2, #1
	str r0, [r4, r1]
	adds r0, r1, #4
	str r2, [r4, r0]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02242920: .4byte 0x02249944
_02242924: .4byte 0x000004CC
_02242928: .4byte 0x000004C8
_0224292C: .4byte 0x0000FFFF
_02242930: .4byte 0x000004DC
_02242934: .4byte 0x000004D4
	thumb_func_end ov62_022427D0

	thumb_func_start ov62_02242938
ov62_02242938: @ 0x02242938
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	ldr r0, _02242964 @ =0x000004D4
	ldr r0, [r4, r0]
	bl FUN_0200B190
	ldr r0, _02242968 @ =0x000004DC
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x4d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _0224296C @ =0x000004D8
	movs r1, #0
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02242964: .4byte 0x000004D4
_02242968: .4byte 0x000004DC
_0224296C: .4byte 0x000004D8
	thumb_func_end ov62_02242938

	thumb_func_start ov62_02242970
ov62_02242970: @ 0x02242970
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02242982
	b _02242B0C
_02242982:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224298E: @ jump table
	.2byte _02242998 - _0224298E - 2 @ case 0
	.2byte _022429CE - _0224298E - 2 @ case 1
	.2byte _02242A46 - _0224298E - 2 @ case 2
	.2byte _02242AAA - _0224298E - 2 @ case 3
	.2byte _02242ACA - _0224298E - 2 @ case 4
_02242998:
	movs r1, #0x73
	bl ov62_02231B3C
	ldr r2, _02242B18 @ =0x000004C3
	movs r1, #0xff
	strb r1, [r5, r2]
	adds r0, r2, #1
	strb r1, [r5, r0]
	ldrb r1, [r5, r2]
	adds r2, r2, #1
	ldrb r2, [r5, r2]
	adds r0, r4, #0
	bl ov62_022419D4
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02245C08
	adds r0, r4, #0
	movs r1, #0x39
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242B14
_022429CE:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242A2C
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _02242B1C @ =0x0000047C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022335B0
	ldr r0, _02242B20 @ =0x0000049C
	ldr r2, _02242B24 @ =0x02249214
	adds r0, r4, r0
	adds r1, r4, #0
	bl ov62_022324A0
	ldr r1, _02242B1C @ =0x0000047C
	adds r0, r4, r1
	adds r1, #0x20
	adds r1, r4, r1
	bl ov62_02233638
	ldr r0, _02242B20 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	movs r2, #2
	bl ov62_0223331C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02242A2C:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242B14
_02242A46:
	ldr r0, _02242B1C @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233664
	ldr r1, _02242B20 @ =0x0000049C
	adds r0, r4, r1
	subs r1, #0x10
	ldrsh r1, [r4, r1]
	bl ov62_022332AC
	ldr r0, _02242B20 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_02232F68
	cmp r0, #0
	beq _02242A92
	ldr r0, _02242B28 @ =0x0000088C
	ldr r0, [r4, r0]
	bl FUN_02030BFC
	ldr r1, _02242B18 @ =0x000004C3
	strb r0, [r5, r1]
	ldr r0, _02242B28 @ =0x0000088C
	ldr r0, [r4, r0]
	bl FUN_02030C08
	ldr r2, _02242B2C @ =0x000004C4
	strb r0, [r5, r2]
	subs r1, r2, #1
	ldrb r1, [r5, r1]
	ldrb r2, [r5, r2]
	adds r0, r4, #0
	bl ov62_022419D4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02242A92:
	ldr r0, _02242B30 @ =0x02249138
	bl FUN_02022760
	cmp r0, #0
	beq _02242B14
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242B14
_02242AAA:
	ldr r0, _02242B1C @ =0x0000047C
	adds r0, r4, r0
	bl ov62_02233600
	ldr r0, _02242B20 @ =0x0000049C
	adds r0, r4, r0
	bl ov62_022332FC
	ldr r0, _02242B20 @ =0x0000049C
	adds r1, r4, #0
	adds r0, r4, r0
	bl ov62_022334FC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02242ACA:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242AF2
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02242AF2:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242B14
_02242B0C:
	adds r0, r4, #0
	movs r1, #0xb
	bl ov62_0222FB60
_02242B14:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02242B18: .4byte 0x000004C3
_02242B1C: .4byte 0x0000047C
_02242B20: .4byte 0x0000049C
_02242B24: .4byte 0x02249214
_02242B28: .4byte 0x0000088C
_02242B2C: .4byte 0x000004C4
_02242B30: .4byte 0x02249138
	thumb_func_end ov62_02242970

	thumb_func_start ov62_02242B34
ov62_02242B34: @ 0x02242B34
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242B4A
	cmp r1, #1
	beq _02242B64
	b _02242BAE
_02242B4A:
	movs r1, #0x38
	movs r2, #3
	bl ov62_022343B8
	adds r0, r5, #0
	movs r1, #0x3b
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02242BB4
_02242B64:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02242B94
	adds r0, r5, #0
	movs r1, #0x7c
	bl ov62_02231B3C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02241AA4
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02242B94:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242BB4
_02242BAE:
	movs r1, #3
	bl ov62_0222FB60
_02242BB4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02242B34

	thumb_func_start ov62_02242BB8
ov62_02242BB8: @ 0x02242BB8
	push {r4, r5, r6, lr}
	sub sp, #8
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _02242BD2
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_02242BD2:
	ldr r0, [r4, #8]
	cmp r0, #3
	bhi _02242CB6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02242BE4: @ jump table
	.2byte _02242BEC - _02242BE4 - 2 @ case 0
	.2byte _02242C02 - _02242BE4 - 2 @ case 1
	.2byte _02242C42 - _02242BE4 - 2 @ case 2
	.2byte _02242C8C - _02242BE4 - 2 @ case 3
_02242BEC:
	adds r0, r4, #0
	movs r1, #0x75
	bl ov62_02231B3C
	ldr r0, _02242CE0 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242C02:
	ldr r0, _02242CE4 @ =0x000004C2
	ldrb r6, [r5, r0]
	cmp r6, #0xff
	bne _02242C1A
	adds r0, r4, #0
	bl FUN_0208BE68
	cmp r0, #1
	bne _02242C18
	movs r6, #0xff
	b _02242C1A
_02242C18:
	movs r6, #0xfe
_02242C1A:
	adds r0, r4, #0
	bl ov62_0224112C
	ldr r3, _02242CE8 @ =0x000004C4
	lsls r2, r6, #0x18
	ldrb r1, [r5, r3]
	lsrs r2, r2, #0x18
	str r1, [sp]
	subs r1, r3, #4
	subs r3, r3, #1
	ldrh r1, [r5, r1]
	ldrb r3, [r5, r3]
	bl FUN_0222B394
	cmp r0, #1
	bne _02242CD8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242C42:
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _02242CE0 @ =0x00000565
	bne _02242C76
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp, #4]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #7
	bl ov62_022345B8
	ldr r0, _02242CEC @ =0x00004138
	movs r1, #0
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242C76:
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0x51
	movs r1, #0x76
	lsls r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242C8C:
	ldr r0, _02242CEC @ =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02242CA8
	movs r1, #0x51
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov62_02231B3C
	ldr r0, _02242CF0 @ =0x00000564
	bl FUN_02005748
	b _02242CAE
_02242CA8:
	ldr r0, _02242CF4 @ =0x0000055F
	bl FUN_02005748
_02242CAE:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02242CD8
_02242CB6:
	ldr r0, _02242CF8 @ =0x0000049C
	adds r0, r4, r0
	bl ov62_02233310
	ldr r0, _02242CEC @ =0x00004138
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02242CD0
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
	b _02242CD8
_02242CD0:
	adds r0, r4, #0
	movs r1, #0xd
	bl ov62_0222FB60
_02242CD8:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_02242CE0: .4byte 0x00000565
_02242CE4: .4byte 0x000004C2
_02242CE8: .4byte 0x000004C4
_02242CEC: .4byte 0x00004138
_02242CF0: .4byte 0x00000564
_02242CF4: .4byte 0x0000055F
_02242CF8: .4byte 0x0000049C
	thumb_func_end ov62_02242BB8

	thumb_func_start ov62_02242CFC
ov62_02242CFC: @ 0x02242CFC
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242D12
	cmp r1, #1
	beq _02242D3A
	b _02242D7C
_02242D12:
	bl ov62_02241BB8
	adds r0, r5, #0
	bl ov62_02241BF8
	adds r0, r5, #0
	bl ov62_02231B8C
	ldr r0, _02242D88 @ =0x00000608
	ldr r0, [r4, r0]
	bl FUN_02024034
	ldr r0, _02242D8C @ =0x0000060C
	ldr r0, [r4, r0]
	bl FUN_02024034
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02242D82
_02242D3A:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02242D62
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02245C08
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02242D62:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242D82
_02242D7C:
	movs r1, #0xe
	bl ov62_0222FB60
_02242D82:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02242D88: .4byte 0x00000608
_02242D8C: .4byte 0x0000060C
	thumb_func_end ov62_02242CFC

	thumb_func_start ov62_02242D90
ov62_02242D90: @ 0x02242D90
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242DAA
	cmp r1, #1
	bne _02242DA8
	b _02242EAC
_02242DA8:
	b _02242F4C
_02242DAA:
	bl FUN_0202F250
	cmp r0, #0
	beq _02242DB6
	bl FUN_0202F22C
_02242DB6:
	movs r0, #0x4e
	lsls r0, r0, #4
	ldr r3, _02242F58 @ =0x02249298
	adds r2, r4, r0
	movs r6, #5
_02242DC0:
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	subs r6, r6, #1
	bne _02242DC0
	ldr r0, [r3]
	movs r1, #0
	str r0, [r2]
	movs r0, #0x4e
	lsls r0, r0, #4
	str r1, [r4, r0]
	ldr r1, _02242F5C @ =0x00004138
	adds r0, r0, #4
	ldr r1, [r5, r1]
	str r1, [r4, r0]
	adds r0, r5, #0
	bl ov62_022339DC
	movs r0, #0x66
	bl ov62_02233A68
	ldr r1, _02242F60 @ =0x0000050C
	movs r2, #3
	str r0, [r4, r1]
	adds r0, r5, #0
	movs r1, #4
	bl ov62_022343B8
	movs r1, #7
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_022343B8
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r5, #0
	bl ov62_02241C38
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _02242F64 @ =0x0000047C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_022335B0
	ldr r3, _02242F68 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r3
	adds r3, #0x44
	movs r2, #0
	adds r3, r4, r3
	bl ov62_02232594
	ldr r1, _02242F6C @ =0x000004E4
	movs r0, #1
	str r0, [r5, r1]
	adds r0, r1, #0
	subs r0, #0x68
	subs r1, #0x48
	adds r0, r5, r0
	adds r1, r5, r1
	bl ov62_02233638
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	ldr r0, _02242F68 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	movs r2, #1
	bl ov62_0223331C
	ldr r0, _02242F68 @ =0x0000049C
	movs r1, #0x40
	adds r0, r5, r0
	movs r2, #0xb8
	bl ov62_02233434
	ldr r0, _02242F68 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_02233064
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02241278
	adds r0, r5, #0
	movs r1, #0
	bl ov62_0224141C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02242F52
_02242EAC:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02242F1A
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0224141C
	ldr r3, _02242F70 @ =0x000004D8
	movs r1, #0x6f
	ldr r6, [r5, r3]
	movs r3, #0x18
	muls r3, r6, r3
	lsls r1, r1, #4
	adds r3, #0x4c
	lsls r3, r3, #0x10
	ldr r1, [r5, r1]
	adds r0, r5, #0
	movs r2, #0x10
	asrs r3, r3, #0x10
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0xc
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02242F1A:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02242F52
_02242F4C:
	movs r1, #0xf
	bl ov62_0222FB60
_02242F52:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02242F58: .4byte 0x02249298
_02242F5C: .4byte 0x00004138
_02242F60: .4byte 0x0000050C
_02242F64: .4byte 0x0000047C
_02242F68: .4byte 0x0000049C
_02242F6C: .4byte 0x000004E4
_02242F70: .4byte 0x000004D8
	thumb_func_end ov62_02242D90

	thumb_func_start ov62_02242F74
ov62_02242F74: @ 0x02242F74
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02242F8E
	cmp r1, #1
	beq _02243004
	cmp r1, #2
	beq _0224307C
	b _02243108
_02242F8E:
	ldr r0, _02243114 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233664
	ldr r1, _02243118 @ =0x0000049C
	adds r0, r5, r1
	subs r1, #0x10
	ldrsh r1, [r5, r1]
	bl ov62_022331C8
	ldr r0, _02243118 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_02233064
	ldr r2, _0224311C @ =0x000004D8
	movs r0, #0x6f
	ldr r3, [r5, r2]
	movs r2, #0x18
	muls r2, r3, r2
	lsls r0, r0, #4
	adds r2, #0x4c
	lsls r2, r2, #0x10
	ldr r0, [r5, r0]
	movs r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0208B8EC
	adds r0, r5, #0
	bl ov62_022414C0
	ldr r0, _02243120 @ =0x02249134
	bl FUN_02022760
	cmp r0, #0
	beq _02242FE6
	adds r0, r5, #0
	bl ov62_02234520
	movs r0, #0x11
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02242FE6:
	ldr r0, _02243124 @ =0x02249138
	bl FUN_02022760
	cmp r0, #0
	bne _02242FF2
	b _0224310E
_02242FF2:
	adds r0, r5, #0
	bl ov62_02234520
	movs r0, #0x10
	str r0, [r4, #0xc]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0224310E
_02243004:
	ldr r0, _02243114 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_02233600
	ldr r0, _02243118 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_022332FC
	ldr r0, _02243118 @ =0x0000049C
	adds r1, r5, #0
	adds r0, r5, r0
	bl ov62_022334FC
	ldr r0, _02243128 @ =0x0000050C
	ldr r0, [r4, r0]
	bl ov62_02233A74
	adds r0, r5, #0
	bl ov62_02241460
	adds r0, r5, #0
	bl ov62_02233A44
	adds r0, r5, #0
	bl ov62_02241BB8
	adds r0, r5, #0
	bl ov62_02241BF8
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r5, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, [r4, #0xc]
	cmp r0, #0x10
	bne _02243076
	ldr r0, _02243114 @ =0x0000047C
	adds r0, r5, r0
	bl ov62_022335F4
	ldr r0, _02243118 @ =0x0000049C
	adds r0, r5, r0
	bl ov62_02233310
	movs r0, #0x51
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
_02243076:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0224307C:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022430D6
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02245C08
	ldr r0, [r4, #0xc]
	cmp r0, #0x11
	bne _022430D0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r4, #0x30]
	movs r1, #3
	bl FUN_0200D364
_022430D0:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_022430D6:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0224310E
_02243108:
	ldr r1, [r4, #0xc]
	bl ov62_0222FB60
_0224310E:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02243114: .4byte 0x0000047C
_02243118: .4byte 0x0000049C
_0224311C: .4byte 0x000004D8
_02243120: .4byte 0x02249134
_02243124: .4byte 0x02249138
_02243128: .4byte 0x0000050C
	thumb_func_end ov62_02242F74

	thumb_func_start ov62_0224312C
ov62_0224312C: @ 0x0224312C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02243142
	cmp r1, #1
	beq _022431A4
	b _02243222
_02243142:
	movs r1, #0x38
	movs r2, #3
	bl ov62_022343B8
	adds r0, r5, #0
	movs r1, #0x3b
	movs r2, #7
	bl ov62_022343B8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02245C08
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0224322C @ =0x022491AC
	ldr r2, _02243230 @ =ov62_022458A0
	movs r1, #5
	adds r3, r5, #0
	bl FUN_02023FCC
	ldr r1, _02243234 @ =0x00000608
	ldr r2, _02243238 @ =ov62_02245968
	str r0, [r4, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0224323C @ =0x022491F0
	movs r1, #9
	adds r3, r5, #0
	bl FUN_02023FCC
	ldr r1, _02243240 @ =0x0000060C
	str r0, [r4, r1]
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02241AA4
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02243228
_022431A4:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02243208
	adds r0, r5, #0
	movs r1, #0x7c
	bl ov62_02231AAC
	adds r0, r5, #0
	movs r1, #0
	bl ov62_022417C0
	movs r1, #0x13
	lsls r1, r1, #6
	ldrh r1, [r4, r1]
	adds r0, r5, #0
	bl ov62_02241954
	ldr r1, _02243244 @ =0x000004C2
	adds r0, r5, #0
	ldrb r1, [r4, r1]
	bl ov62_022418DC
	ldr r2, _02243248 @ =0x000004C3
	adds r0, r5, #0
	ldrb r1, [r4, r2]
	adds r2, r2, #1
	ldrb r2, [r4, r2]
	bl ov62_022419D4
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02243208:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02243228
_02243222:
	movs r1, #3
	bl ov62_0222FB60
_02243228:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224322C: .4byte 0x022491AC
_02243230: .4byte ov62_022458A0
_02243234: .4byte 0x00000608
_02243238: .4byte ov62_02245968
_0224323C: .4byte 0x022491F0
_02243240: .4byte 0x0000060C
_02243244: .4byte 0x000004C2
_02243248: .4byte 0x000004C3
	thumb_func_end ov62_0224312C

	thumb_func_start ov62_0224324C
ov62_0224324C: @ 0x0224324C
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _0224325E
	b _02243392
_0224325E:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224326A: @ jump table
	.2byte _02243272 - _0224326A - 2 @ case 0
	.2byte _02243282 - _0224326A - 2 @ case 1
	.2byte _022432CC - _0224326A - 2 @ case 2
	.2byte _02243336 - _0224326A - 2 @ case 3
_02243272:
	movs r1, #6
	movs r2, #7
	bl ov62_022343B8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224339A
_02243282:
	bl ov62_0224443C
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022433A0 @ =0x0224919C
	ldr r2, _022433A4 @ =ov62_02245994
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	ldr r1, _022433A8 @ =0x00000608
	ldr r2, _022433AC @ =ov62_02245A28
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022433B0 @ =0x0224915C
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	ldr r1, _022433B4 @ =0x0000060C
	ldr r2, _022433B8 @ =ov62_02245A90
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022433BC @ =0x0224913C
	movs r1, #2
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x61
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224339A
_022432CC:
	movs r1, #0x73
	movs r2, #0
	lsls r1, r1, #2
	str r2, [r5, r1]
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224339A
_02243336:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02243378
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	adds r0, r4, #0
	bl ov62_02245640
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02243378:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0224339A
_02243392:
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
_0224339A:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022433A0: .4byte 0x0224919C
_022433A4: .4byte ov62_02245994
_022433A8: .4byte 0x00000608
_022433AC: .4byte ov62_02245A28
_022433B0: .4byte 0x0224915C
_022433B4: .4byte 0x0000060C
_022433B8: .4byte ov62_02245A90
_022433BC: .4byte 0x0224913C
	thumb_func_end ov62_0224324C

	thumb_func_start ov62_022433C0
ov62_022433C0: @ 0x022433C0
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _022433D4 @ =0x00000608
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_022433D4: .4byte 0x00000608
	thumb_func_end ov62_022433C0

	thumb_func_start ov62_022433D8
ov62_022433D8: @ 0x022433D8
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02245D80
	cmp r0, #0
	beq _022433EC
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
_022433EC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022433D8

	thumb_func_start ov62_022433F0
ov62_022433F0: @ 0x022433F0
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	bl ov62_02246850
	cmp r0, #0
	beq _0224340A
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
_0224340A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_022433F0

	thumb_func_start ov62_02243410
ov62_02243410: @ 0x02243410
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02243426
	cmp r1, #1
	beq _02243494
	b _02243502
_02243426:
	ldr r0, _0224350C @ =0x00000608
	ldr r0, [r4, r0]
	bl FUN_02024034
	ldr r0, _02243510 @ =0x0000060C
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	bl ov62_022444A0
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02243474
	subs r0, #0xc0
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234228
	b _0224347E
_02243474:
	adds r4, #0x80
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02232394
_0224347E:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022455C4
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02243508
_02243494:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022434E8
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x6f
	bl ov62_0223124C
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_0200D364
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02245C08
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_022434E8:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02243508
_02243502:
	movs r1, #0xe
	bl ov62_0222FB60
_02243508:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224350C: .4byte 0x00000608
_02243510: .4byte 0x0000060C
	thumb_func_end ov62_02243410

	thumb_func_start ov62_02243514
ov62_02243514: @ 0x02243514
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	bl FUN_0202FE04
	movs r1, #4
	movs r2, #0
	bl FUN_0202FE98
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	adds r1, r3, #0
	bl ov62_02234970
	cmp r0, #0
	bne _0224353E
	b _0224380A
_0224353E:
	ldr r0, [r4, #8]
	cmp r0, #5
	bls _02243546
	b _022437DC
_02243546:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02243552: @ jump table
	.2byte _0224355E - _02243552 - 2 @ case 0
	.2byte _022435AC - _02243552 - 2 @ case 1
	.2byte _02243612 - _02243552 - 2 @ case 2
	.2byte _02243622 - _02243552 - 2 @ case 3
	.2byte _02243660 - _02243552 - 2 @ case 4
	.2byte _02243772 - _02243552 - 2 @ case 5
_0224355E:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224357C
	subs r0, #0xc0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234228
	b _02243586
_0224357C:
	adds r5, #0x80
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_02232394
_02243586:
	adds r0, r4, #0
	bl ov62_022455C4
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224381C
_022435AC:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022435F8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02245D50
	adds r0, r4, #0
	bl ov62_02244BE4
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022435F8:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0224381C
_02243612:
	ldr r1, _02243824 @ =0x00000115
	adds r0, r4, #0
	bl ov62_02231AAC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224381C
_02243622:
	bl FUN_02022798
	cmp r0, #0
	bne _0224362C
	b _0224381C
_0224362C:
	adds r0, r4, #0
	bl ov62_02244CA4
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224381C
_02243660:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02245C64
	ldr r0, _02243828 @ =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _022436A2
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r5, #0x30]
	movs r1, #3
	bl FUN_0200D364
_022436A2:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02245640
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224371E
	subs r0, #0xc0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	b _0224374A
_0224371E:
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl ov62_02232378
	adds r5, #0x80
	adds r0, r5, #0
	movs r1, #0
	bl ov62_022323B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x50
	movs r3, #3
	bl FUN_0200710C
_0224374A:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #6
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224381C
_02243772:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022437C2
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _022437A2
	subs r0, #0xc0
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	b _022437AC
_022437A2:
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	bl ov62_022323B8
_022437AC:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022437C2:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0224381C
_022437DC:
	ldr r1, _0224382C @ =0x00004138
	movs r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _02243800
	movs r1, #0x9a
	lsls r1, r1, #6
	adds r5, r4, r1
	ldr r2, _0224382C @ =0x00004138
	adds r6, r4, #0
	subs r1, #0x78
_022437F2:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	adds r0, r0, #1
	adds r5, #0xe4
	adds r6, r6, #4
	cmp r0, r3
	blt _022437F2
_02243800:
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
	b _0224381C
_0224380A:
	adds r0, r4, #0
	bl ov62_02245ECC
	cmp r0, #0
	beq _0224381C
	adds r0, r4, #0
	movs r1, #0x17
	bl ov62_0222FB60
_0224381C:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02243824: .4byte 0x00000115
_02243828: .4byte 0x0000086C
_0224382C: .4byte 0x00004138
	thumb_func_end ov62_02243514

	thumb_func_start ov62_02243830
ov62_02243830: @ 0x02243830
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _02243844 @ =0x0000060C
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_02243844: .4byte 0x0000060C
	thumb_func_end ov62_02243830

	thumb_func_start ov62_02243848
ov62_02243848: @ 0x02243848
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl ov62_02246640
	cmp r0, #0
	beq _02243880
	ldr r1, _02243884 @ =0x00004138
	movs r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _02243878
	movs r1, #0x9a
	lsls r1, r1, #6
	adds r5, r4, r1
	ldr r2, _02243884 @ =0x00004138
	adds r6, r4, #0
	subs r1, #0x78
_0224386A:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	adds r0, r0, #1
	adds r5, #0xe4
	adds r6, r6, #4
	cmp r0, r3
	blt _0224386A
_02243878:
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
_02243880:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02243884: .4byte 0x00004138
	thumb_func_end ov62_02243848

	thumb_func_start ov62_02243888
ov62_02243888: @ 0x02243888
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	bl ov62_02246428
	cmp r0, #0
	beq _022438C0
	ldr r1, _022438C4 @ =0x00004138
	movs r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	ble _022438B8
	movs r1, #0x9a
	lsls r1, r1, #6
	adds r5, r4, r1
	ldr r2, _022438C4 @ =0x00004138
	adds r6, r4, #0
	subs r1, #0x78
_022438AA:
	str r5, [r6, r1]
	ldr r3, [r4, r2]
	adds r0, r0, #1
	adds r5, #0xe4
	adds r6, r6, #4
	cmp r0, r3
	blt _022438AA
_022438B8:
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
_022438C0:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022438C4: .4byte 0x00004138
	thumb_func_end ov62_02243888

	thumb_func_start ov62_022438C8
ov62_022438C8: @ 0x022438C8
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02245FE4
	cmp r0, #0
	beq _022438DC
	adds r0, r4, #0
	movs r1, #0x1a
	bl ov62_0222FB60
_022438DC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022438C8

	thumb_func_start ov62_022438E0
ov62_022438E0: @ 0x022438E0
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_022438E0

	thumb_func_start ov62_022438F8
ov62_022438F8: @ 0x022438F8
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02246090
	cmp r0, #0
	beq _0224390C
	adds r0, r4, #0
	movs r1, #0x17
	bl ov62_0222FB60
_0224390C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022438F8

	thumb_func_start ov62_02243910
ov62_02243910: @ 0x02243910
	push {r3, lr}
	bl ov62_0224613C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_02243910

	thumb_func_start ov62_0224391C
ov62_0224391C: @ 0x0224391C
	push {r3, r4, r5, lr}
	sub sp, #8
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	bl ov62_022411B8
	cmp r0, #0
	bne _02243936
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, pc}
_02243936:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _0224393E
	b _02243AC4
_0224393E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224394A: @ jump table
	.2byte _02243954 - _0224394A - 2 @ case 0
	.2byte _0224398A - _0224394A - 2 @ case 1
	.2byte _022439C4 - _0224394A - 2 @ case 2
	.2byte _02243A0A - _0224394A - 2 @ case 3
	.2byte _02243A36 - _0224394A - 2 @ case 4
_02243954:
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224397A
	subs r0, #0xc0
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	b _02243984
_0224397A:
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #0
	bl ov62_022323B8
_02243984:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0224398A:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022439AA
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022439AA:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02243AF8
_022439C4:
	adds r0, r4, #0
	movs r1, #0x75
	bl ov62_02231AAC
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, _02243B00 @ =0x000004B8
	movs r1, #0
	str r1, [r5, r0]
	adds r0, #0xad
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02243AF8
_02243A0A:
	adds r0, r4, #0
	bl ov62_0224112C
	ldr r1, _02243B04 @ =0x000004D4
	ldr r1, [r4, r1]
	lsls r1, r1, #2
	adds r2, r4, r1
	ldr r1, _02243B08 @ =0x00002608
	ldr r2, [r2, r1]
	adds r1, r2, #0
	adds r1, #0xd8
	adds r2, #0xdc
	ldr r1, [r1]
	ldr r2, [r2]
	bl FUN_0222B524
	cmp r0, #1
	bne _02243AF8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02243AF8
_02243A36:
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _02243B0C @ =0x00000565
	bne _02243A70
	movs r1, #0
	bl FUN_020057A4
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r3, [sp, #4]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #8
	bl ov62_022348B8
	ldr r0, [r4, #8]
	movs r1, #0
	adds r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _02243B00 @ =0x000004B8
	str r1, [r5, r0]
	b _02243AA8
_02243A70:
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0xff
	str r0, [r4, #8]
	ldr r0, _02243B00 @ =0x000004B8
	movs r1, #1
	str r1, [r5, r0]
	ldr r1, _02243B10 @ =0x0000413C
	adds r2, r4, r1
	adds r1, r0, #0
	adds r1, #0x1c
	ldr r1, [r4, r1]
	adds r2, r2, r1
	ldr r1, _02243B14 @ =0x00000878
	str r2, [r4, r1]
	adds r2, r1, #0
	adds r2, #0x3c
	ldr r3, [r4, r2]
	adds r2, r0, #4
	str r3, [r5, r2]
	adds r0, r0, #4
	adds r1, #0x40
	ldr r0, [r5, r0]
	ldr r2, _02243B18 @ =0x00001D4C
	adds r1, r4, r1
	blx FUN_020C4DB0
_02243AA8:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	b _02243AF8
_02243AC4:
	ldr r0, _02243B00 @ =0x000004B8
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02243AEA
	adds r0, #0xa7
	bl FUN_02005748
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r1, [r5, #0xc]
	adds r0, r4, #0
	bl ov62_0222FB60
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223381C
	b _02243AF8
_02243AEA:
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	movs r1, #0x1f
	bl ov62_0222FB60
_02243AF8:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02243B00: .4byte 0x000004B8
_02243B04: .4byte 0x000004D4
_02243B08: .4byte 0x00002608
_02243B0C: .4byte 0x00000565
_02243B10: .4byte 0x0000413C
_02243B14: .4byte 0x00000878
_02243B18: .4byte 0x00001D4C
	thumb_func_end ov62_0224391C

	thumb_func_start ov62_02243B1C
ov62_02243B1C: @ 0x02243B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _02243B30
	b _02243D74
_02243B30:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02243B3C: @ jump table
	.2byte _02243B48 - _02243B3C - 2 @ case 0
	.2byte _02243C3E - _02243B3C - 2 @ case 1
	.2byte _02243C88 - _02243B3C - 2 @ case 2
	.2byte _02243CEA - _02243B3C - 2 @ case 3
	.2byte _02243D46 - _02243B3C - 2 @ case 4
	.2byte _02243D64 - _02243B3C - 2 @ case 5
_02243B48:
	bl ov62_02234314
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	bl ov62_022315C8
	ldr r0, _02243D90 @ =0x00004138
	movs r2, #0
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _02243B7C
	movs r0, #0x9a
	lsls r0, r0, #6
	adds r7, r0, #0
	adds r3, r4, r0
	ldr r0, _02243D90 @ =0x00004138
	adds r6, r4, #0
	subs r7, #0x78
_02243B6E:
	str r3, [r6, r7]
	ldr r1, [r4, r0]
	adds r2, r2, #1
	adds r3, #0xe4
	adds r6, r6, #4
	cmp r2, r1
	blt _02243B6E
_02243B7C:
	ldr r0, _02243D94 @ =0x000004D4
	movs r3, #3
	ldr r0, [r4, r0]
	adds r1, r4, r0
	ldr r0, _02243D98 @ =0x0000413C
	ldrb r1, [r1, r0]
	ldr r0, _02243D9C @ =0x0000079C
	strb r1, [r5, r0]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #6
	movs r2, #7
	bl ov62_022343B8
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	adds r0, r4, #0
	bl ov62_02245C64
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02245C08
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r5, #0x30]
	movs r1, #3
	bl FUN_0200D364
	movs r1, #0x13
	ldr r0, _02243DA0 @ =0x0000FFFF
	lsls r1, r1, #6
	strh r0, [r5, r1]
	movs r2, #0xff
	adds r0, r1, #2
	strb r2, [r5, r0]
	adds r0, r1, #3
	strb r2, [r5, r0]
	adds r0, r1, #4
	strb r2, [r5, r0]
	adds r0, r1, #0
	adds r2, #0xf5
	adds r0, #0x54
	str r2, [r5, r0]
	adds r0, r1, #0
	subs r0, #0x1c
	ldrsh r0, [r4, r0]
	adds r1, #0x50
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243C3E:
	bl ov62_0224443C
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02243DA4 @ =0x0224919C
	ldr r2, _02243DA8 @ =ov62_02245994
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	ldr r1, _02243DAC @ =0x00000608
	ldr r2, _02243DB0 @ =ov62_02245A28
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02243DB4 @ =0x0224915C
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	ldr r1, _02243DB8 @ =0x0000060C
	ldr r2, _02243DBC @ =ov62_02245A90
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02243DC0 @ =0x0224913C
	movs r1, #2
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x61
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243C88:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243CEA:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02243D2C
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	adds r0, r4, #0
	bl ov62_02245640
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02243D2C:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02243D8A
_02243D46:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243D64:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02243D8A
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02243D8A
_02243D74:
	ldr r0, _02243DC4 @ =0x000006D8
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov62_02230098
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
_02243D8A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02243D90: .4byte 0x00004138
_02243D94: .4byte 0x000004D4
_02243D98: .4byte 0x0000413C
_02243D9C: .4byte 0x0000079C
_02243DA0: .4byte 0x0000FFFF
_02243DA4: .4byte 0x0224919C
_02243DA8: .4byte ov62_02245994
_02243DAC: .4byte 0x00000608
_02243DB0: .4byte ov62_02245A28
_02243DB4: .4byte 0x0224915C
_02243DB8: .4byte 0x0000060C
_02243DBC: .4byte ov62_02245A90
_02243DC0: .4byte 0x0224913C
_02243DC4: .4byte 0x000006D8
	thumb_func_end ov62_02243B1C

	thumb_func_start ov62_02243DC8
ov62_02243DC8: @ 0x02243DC8
	push {r3, r4, r5, lr}
	movs r1, #0x7a
	adds r5, r0, #0
	movs r0, #0x66
	lsls r1, r1, #4
	bl FUN_02018144
	movs r2, #0x7a
	movs r1, #0
	lsls r2, r2, #4
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x86
	lsls r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	bl ov62_022315C8
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0222FB60
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02243DC8

	thumb_func_start ov62_02243E20
ov62_02243E20: @ 0x02243E20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r2, [r5, #8]
	ldr r4, [r5, r1]
	cmp r2, #0
	beq _02243E36
	cmp r2, #1
	beq _02243E94
	b _02243EF0
_02243E36:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02243E4A
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02243E4A:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02243FA4
_02243E94:
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02231454
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #2
	bl FUN_02019060
	movs r0, #4
	movs r1, #0
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #1
	bl FUN_02019060
	movs r0, #7
	movs r1, #2
	bl FUN_02019060
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02243FA4
_02243EF0:
	adds r1, #0xc
	ldr r1, [r5, r1]
	cmp r1, #0xc8
	beq _02243F02
	cmp r1, #0xd2
	beq _02243F32
	cmp r1, #0xdc
	beq _02243F62
	b _02243F8A
_02243F02:
	movs r1, #0
	bl ov62_0223376C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	adds r0, r5, #0
	bl ov62_022300BC
	cmp r0, #1
	bne _02243F28
	adds r0, r5, #0
	movs r1, #6
	bl ov62_0222FB60
	b _02243FA4
_02243F28:
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
	b _02243FA4
_02243F32:
	movs r1, #0
	bl ov62_0223376C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	adds r0, r5, #0
	bl ov62_022300BC
	cmp r0, #1
	bne _02243F58
	adds r0, r5, #0
	movs r1, #0x1e
	bl ov62_0222FB60
	b _02243FA4
_02243F58:
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
	b _02243FA4
_02243F62:
	bl ov62_022300BC
	cmp r0, #1
	bne _02243F74
	adds r0, r5, #0
	movs r1, #0x13
	bl ov62_0222FB60
	b _02243F7C
_02243F74:
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
_02243F7C:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	b _02243FA4
_02243F8A:
	movs r1, #0
	bl ov62_0223376C
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0208B9E0
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
_02243FA4:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02243E20

	thumb_func_start ov62_02243FA8
ov62_02243FA8: @ 0x02243FA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	movs r2, #0x75
	ldr r6, [r5, r1]
	lsls r2, r2, #2
	adds r4, r6, r2
	ldr r2, [r5, #8]
	cmp r2, #0
	beq _02243FCA
	cmp r2, #1
	beq _0224403A
	cmp r2, #2
	beq _0224405E
	b _022440A0
_02243FCA:
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #5
	subs r1, #0x30
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r0, [r5, r1]
	bl FUN_02025E44
	adds r3, r0, #0
	movs r0, #0x66
	movs r1, #0xc
	add r2, sp, #0xc
	bl ov62_02246B00
	ldr r1, _022440AC @ =0x000004AC
	movs r2, #0x22
	str r0, [r6, r1]
	ldr r0, [r5, #0x14]
	lsls r2, r2, #4
	str r0, [r4, r2]
	ldr r3, [r5, #0x18]
	adds r0, r2, #4
	str r3, [r4, r0]
	adds r0, r2, #0
	ldr r3, [r5, #0x1c]
	adds r0, #8
	str r3, [r4, r0]
	adds r0, r2, #0
	ldr r3, [r5, #0x24]
	adds r0, #0xc
	str r3, [r4, r0]
	adds r0, r2, #0
	ldr r3, [r5, #0x28]
	adds r0, #0x10
	str r3, [r4, r0]
	adds r0, r2, #0
	adds r0, #0x88
	ldr r3, [r6, r1]
	adds r7, r4, r0
	ldm r3!, {r0, r1}
	stm r7!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r7!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r7!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r7!, {r0, r1}
	adds r2, #0xb4
	str r5, [r4, r2]
	adds r0, r5, #0
	bl ov62_02245B24
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0224403A:
	movs r2, #8
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r6, #4
	bl ov62_022314F0
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022440A6
_0224405E:
	adds r0, r6, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r6, #0
	adds r1, r6, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244086
	adds r0, r5, #0
	movs r1, #0x70
	bl ov62_0223197C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02244086:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r6, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _022440A6
_022440A0:
	movs r1, #3
	bl ov62_0222FB60
_022440A6:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022440AC: .4byte 0x000004AC
	thumb_func_end ov62_02243FA8

	thumb_func_start ov62_022440B0
ov62_022440B0: @ 0x022440B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	movs r0, #0x75
	lsls r0, r0, #2
	adds r0, r1, r0
	bl ov62_02247084
	cmp r0, #1
	bne _022440D0
	adds r0, r4, #0
	movs r1, #4
	bl ov62_0222FB60
_022440D0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022440B0

	thumb_func_start ov62_022440D4
ov62_022440D4: @ 0x022440D4
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	movs r1, #0x75
	lsls r1, r1, #2
	ldr r2, [r5, #8]
	adds r3, r4, r1
	cmp r2, #0
	beq _022440F2
	cmp r2, #1
	beq _02244118
	b _02244160
_022440F2:
	bl ov62_02231A1C
	movs r2, #8
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r4, #4
	bl ov62_02231560
	ldr r0, _0224417C @ =0x000004AC
	ldr r0, [r4, r0]
	bl ov62_02246B4C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02244118:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244146
	movs r0, #8
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	bl ov62_02245BD8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02244146:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02244176
_02244160:
	adds r1, #0xf4
	ldr r1, [r3, r1]
	cmp r1, #0
	beq _02244170
	movs r1, #6
	bl ov62_0222FB60
	b _02244176
_02244170:
	movs r1, #5
	bl ov62_0222FB60
_02244176:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0224417C: .4byte 0x000004AC
	thumb_func_end ov62_022440D4

	thumb_func_start ov62_02244180
ov62_02244180: @ 0x02244180
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _022441B6
	adds r4, #8
	adds r0, r4, #0
	bl ov62_02231688
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223146C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02244252
_022441B6:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02244222
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	bl FUN_020181C4
	b _02244252
_02244222:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_02244252:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02244180

	thumb_func_start ov62_02244258
ov62_02244258: @ 0x02244258
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	movs r1, #0x75
	lsls r1, r1, #2
	adds r6, r5, r1
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _02244272
	b _022443AA
_02244272:
	adds r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0224427E: @ jump table
	.2byte _02244288 - _0224427E - 2 @ case 0
	.2byte _022442C6 - _0224427E - 2 @ case 1
	.2byte _022442F4 - _0224427E - 2 @ case 2
	.2byte _02244396 - _0224427E - 2 @ case 3
	.2byte _022443A4 - _0224427E - 2 @ case 4
_02244288:
	movs r1, #0x75
	bl ov62_0223197C
	ldr r1, _022443CC @ =0x000006F4
	adds r0, r4, #0
	ldr r1, [r4, r1]
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	ldr r0, _022443CC @ =0x000006F4
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	ldr r0, _022443CC @ =0x000006F4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, _022443D0 @ =0x000004B8
	movs r1, #0
	str r1, [r5, r0]
	adds r0, #0xad
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022443C4
_022442C6:
	bl ov62_022411B8
	cmp r0, #0
	bne _022442D4
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_022442D4:
	adds r0, r4, #0
	bl ov62_0224112C
	movs r2, #0xb3
	lsls r2, r2, #2
	ldr r1, [r6, r2]
	adds r2, r2, #4
	ldr r2, [r6, r2]
	bl FUN_0222B524
	cmp r0, #1
	bne _022443C4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022443C4
_022442F4:
	bl ov62_022411B8
	cmp r0, #0
	bne _02244302
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_02244302:
	adds r0, r4, #0
	bl ov62_02231A1C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #0
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _022443D4 @ =0x00000565
	bne _0224434A
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _022443D8 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r3, [sp]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #8
	bl ov62_022348B8
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0223376C
	ldr r0, [r4, #8]
	movs r1, #0
	adds r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _022443D0 @ =0x000004B8
	str r1, [r5, r0]
	b _0224437E
_0224434A:
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0xff
	str r0, [r4, #8]
	ldr r0, _022443D0 @ =0x000004B8
	movs r1, #1
	str r1, [r5, r0]
	adds r0, #0xa7
	bl FUN_02005748
	ldr r0, _022443DC @ =0x00002604
	ldr r1, _022443E0 @ =0x00000878
	adds r0, r4, r0
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x3c
	ldr r2, [r4, r0]
	ldr r0, _022443E4 @ =0x000004BC
	adds r1, #0x40
	str r2, [r5, r0]
	ldr r0, [r5, r0]
	ldr r2, _022443E8 @ =0x00001D4C
	adds r1, r4, r1
	blx FUN_020C4DB0
_0224437E:
	ldr r0, _022443CC @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_0208B9E0
	ldr r0, _022443CC @ =0x000006F4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	b _022443C4
_02244396:
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022443C4
_022443A4:
	adds r0, r1, #1
	str r0, [r4, #8]
	b _022443C4
_022443AA:
	ldr r0, _022443D0 @ =0x000004B8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _022443BC
	adds r0, r4, #0
	movs r1, #7
	bl ov62_0222FB60
	b _022443C4
_022443BC:
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
_022443C4:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_022443CC: .4byte 0x000006F4
_022443D0: .4byte 0x000004B8
_022443D4: .4byte 0x00000565
_022443D8: .4byte 0x04000050
_022443DC: .4byte 0x00002604
_022443E0: .4byte 0x00000878
_022443E4: .4byte 0x000004BC
_022443E8: .4byte 0x00001D4C
	thumb_func_end ov62_02244258

	thumb_func_start ov62_022443EC
ov62_022443EC: @ 0x022443EC
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r0, #0x66
	bl FUN_02030A80
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	ldr r0, _02244438 @ =0x000004BC
	adds r1, r4, #0
	adds r1, #0x80
	ldr r0, [r4, r0]
	ldr r1, [r1]
	bl FUN_0222AFC0
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	movs r0, #0x43
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #0x66
	bl FUN_0202FF2C
	movs r1, #0x11
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _02244438 @ =0x000004BC
	ldr r1, [r4, r1]
	ldr r0, [r4, r0]
	movs r2, #0x64
	adds r0, #0x80
	blx FUN_020C4DB0
	pop {r4, pc}
	nop
_02244438: .4byte 0x000004BC
	thumb_func_end ov62_022443EC

	thumb_func_start ov62_0224443C
ov62_0224443C: @ 0x0224443C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	movs r0, #0x66
	bl FUN_02030A80
	adds r1, r4, #0
	adds r1, #0x80
	str r0, [r1]
	ldr r0, _02244498 @ =0x000004D4
	ldr r0, [r5, r0]
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0224449C @ =0x00002608
	ldr r0, [r1, r0]
	adds r1, r4, #0
	adds r1, #0x80
	ldr r1, [r1]
	bl FUN_0222AFC0
	adds r0, r4, #0
	adds r0, #0x80
	ldr r1, [r0]
	movs r0, #0x43
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r0, #0x66
	bl FUN_0202FF2C
	movs r1, #0x11
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, _02244498 @ =0x000004D4
	ldr r1, [r4, r1]
	ldr r0, [r5, r0]
	lsls r0, r0, #2
	adds r2, r5, r0
	ldr r0, _0224449C @ =0x00002608
	ldr r0, [r2, r0]
	movs r2, #0x64
	adds r0, #0x80
	blx FUN_020C4DB0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02244498: .4byte 0x000004D4
_0224449C: .4byte 0x00002608
	thumb_func_end ov62_0224443C

	thumb_func_start ov62_022444A0
ov62_022444A0: @ 0x022444A0
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_0202FF44
	adds r4, #0x80
	ldr r0, [r4]
	bl FUN_02030A98
	pop {r4, pc}
	thumb_func_end ov62_022444A0

	thumb_func_start ov62_022444BC
ov62_022444BC: @ 0x022444BC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _022444D0
	b _022446A0
_022444D0:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022444DC: @ jump table
	.2byte _022444E4 - _022444DC - 2 @ case 0
	.2byte _022444F2 - _022444DC - 2 @ case 1
	.2byte _022445DC - _022444DC - 2 @ case 2
	.2byte _02244644 - _022444DC - 2 @ case 3
_022444E4:
	movs r1, #0
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022446A8
_022444F2:
	bl ov62_02233790
	cmp r0, #0
	bne _022444FC
	b _022446A8
_022444FC:
	movs r2, #8
	str r2, [sp]
	movs r3, #0x12
	str r3, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r5, #4
	bl ov62_02231560
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #6
	movs r2, #7
	bl ov62_022343B8
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #4
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #0
	bl FUN_02019060
	movs r0, #7
	movs r1, #2
	bl FUN_02019060
	adds r0, r4, #0
	bl ov62_022443EC
	adds r0, r4, #0
	bl ov62_02245C64
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022446B0 @ =0x0224919C
	ldr r2, _022446B4 @ =ov62_022457A0
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	ldr r1, _022446B8 @ =0x00000608
	ldr r2, _022446BC @ =ov62_02245800
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022446C0 @ =0x0224915C
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	ldr r1, _022446C4 @ =0x0000060C
	ldr r2, _022446C8 @ =ov62_02245868
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _022446CC @ =0x0224913C
	movs r1, #2
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x61
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022446A8
_022445DC:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	subs r0, #0xc0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022446A8
_02244644:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244686
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	adds r0, r4, #0
	bl ov62_02245640
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02244686:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _022446A8
_022446A0:
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
_022446A8:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022446B0: .4byte 0x0224919C
_022446B4: .4byte ov62_022457A0
_022446B8: .4byte 0x00000608
_022446BC: .4byte ov62_02245800
_022446C0: .4byte 0x0224915C
_022446C4: .4byte 0x0000060C
_022446C8: .4byte ov62_02245868
_022446CC: .4byte 0x0224913C
	thumb_func_end ov62_022444BC

	thumb_func_start ov62_022446D0
ov62_022446D0: @ 0x022446D0
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _022446E4 @ =0x00000608
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_022446E4: .4byte 0x00000608
	thumb_func_end ov62_022446D0

	thumb_func_start ov62_022446E8
ov62_022446E8: @ 0x022446E8
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02245D80
	cmp r0, #0
	beq _022446FC
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
_022446FC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_022446E8

	thumb_func_start ov62_02244700
ov62_02244700: @ 0x02244700
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	bl ov62_02246850
	cmp r0, #0
	beq _0224471A
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r4, pc}
_0224471A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02244700

	thumb_func_start ov62_02244720
ov62_02244720: @ 0x02244720
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _02244732
	b _022448D2
_02244732:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224473E: @ jump table
	.2byte _02244746 - _0224473E - 2 @ case 0
	.2byte _022447B4 - _0224473E - 2 @ case 1
	.2byte _022447F4 - _0224473E - 2 @ case 2
	.2byte _02244822 - _0224473E - 2 @ case 3
_02244746:
	ldr r0, _022448D8 @ =0x00000608
	ldr r0, [r5, r0]
	bl FUN_02024034
	ldr r0, _022448DC @ =0x0000060C
	ldr r0, [r5, r0]
	bl FUN_02024034
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02024034
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl ov62_022444A0
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02244794
	subs r0, #0xc0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234228
	b _0224479E
_02244794:
	adds r5, #0x80
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_02232394
_0224479E:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022455C4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022448D2
_022447B4:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022447DA
	adds r0, r4, #0
	bl ov62_02245D50
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022447DA:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _022448D2
_022447F4:
	adds r5, #8
	adds r0, r5, #0
	bl ov62_02231688
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_0223146C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022448D2
_02244822:
	bl ov62_02233790
	cmp r0, #0
	beq _022448D2
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022448A2
	adds r0, r4, #0
	bl ov62_022318E8
	adds r0, r5, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r4, #0x10]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	bl FUN_0202F250
	cmp r0, #1
	bne _022448D2
	bl FUN_0202F22C
	b _022448D2
_022448A2:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_022448D2:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022448D8: .4byte 0x00000608
_022448DC: .4byte 0x0000060C
	thumb_func_end ov62_02244720

	thumb_func_start ov62_022448E0
ov62_022448E0: @ 0x022448E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	ldr r1, _022449B0 @ =0x0000088C
	lsls r6, r2, #2
	adds r4, r5, r1
	ldr r1, [r4, r6]
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x48]
	cmp r1, #0
	bne _02244900
	movs r1, #8
	bl FUN_0200B1EC
	adds r4, r0, #0
	b _0224495E
_02244900:
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	ldr r0, [r5, #0x48]
	movs r1, #7
	bl FUN_0200B1EC
	str r0, [sp, #0x14]
	ldr r0, [r4, r6]
	movs r1, #0x66
	bl FUN_02030B94
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov62_022349A8
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r7, #0
	adds r2, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r2, [sp, #0x14]
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
_0224495E:
	add r0, sp, #0x18
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x24]
	add r1, sp, #0x18
	movs r2, #0x14
	movs r3, #2
	bl FUN_0201A870
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022449B4 @ =0x000E0D00
	adds r2, r4, #0
	str r0, [sp, #8]
	add r0, sp, #0x18
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	add r2, sp, #0x18
	movs r3, #0x66
	bl FUN_02012BE0
	adds r0, r4, #0
	bl FUN_020237BC
	add r0, sp, #0x18
	bl FUN_0201A8FC
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022449B0: .4byte 0x0000088C
_022449B4: .4byte 0x000E0D00
	thumb_func_end ov62_022448E0

	thumb_func_start ov62_022449B8
ov62_022449B8: @ 0x022449B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	ldr r1, _02244AAC @ =0x000008A4
	adds r5, r0, #0
	subs r1, #0x44
	ldr r6, [r5, r1]
	movs r1, #2
	bl ov62_022302A8
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, _02244AAC @ =0x000008A4
	adds r0, r5, r0
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r1, _02244AAC @ =0x000008A4
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r5, r1
	movs r2, #2
	movs r3, #1
	bl FUN_0201A7E8
	cmp r4, #0x64
	bne _02244A6A
	adds r6, #0x80
	ldr r0, [r6]
	str r0, [sp, #0x14]
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r7, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
	b _02244A74
_02244A6A:
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r6, r0, #0
_02244A74:
	ldr r0, _02244AAC @ =0x000008A4
	movs r1, #0xcc
	adds r0, r5, r0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02244AB0 @ =0x000F0D0C
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02244AAC @ =0x000008A4
	adds r3, r1, #0
	adds r0, r5, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, _02244AAC @ =0x000008A4
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02244AAC: .4byte 0x000008A4
_02244AB0: .4byte 0x000F0D0C
	thumb_func_end ov62_022449B8

	thumb_func_start ov62_02244AB4
ov62_02244AB4: @ 0x02244AB4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, _02244BDC @ =0x000008A4
	adds r4, r1, #0
	subs r0, #0x44
	ldr r0, [r5, r0]
	cmp r4, #0x64
	bne _02244B2C
	adds r0, #0x80
	ldr r0, [r0]
	str r0, [sp, #0x14]
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	adds r0, r7, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
	b _02244BA4
_02244B2C:
	cmp r4, #0x66
	bne _02244B9C
	lsls r0, r2, #2
	adds r1, r5, r0
	ldr r0, _02244BDC @ =0x000008A4
	subs r0, #0x18
	ldr r0, [r1, r0]
	str r0, [sp, #0x10]
	movs r0, #0x66
	bl ov62_02231690
	adds r7, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x1c]
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	adds r1, r4, #0
	bl FUN_0200B1EC
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	adds r0, r7, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r7, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_0200B3F0
	b _02244BA4
_02244B9C:
	ldr r0, [r5, #0x48]
	bl FUN_0200B1EC
	adds r6, r0, #0
_02244BA4:
	ldr r0, _02244BDC @ =0x000008A4
	movs r1, #0xcc
	adds r0, r5, r0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02244BE0 @ =0x000F0D0C
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, _02244BDC @ =0x000008A4
	adds r3, r1, #0
	adds r0, r5, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, _02244BDC @ =0x000008A4
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r6, #0
	bl FUN_020237BC
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244BDC: .4byte 0x000008A4
_02244BE0: .4byte 0x000F0D0C
	thumb_func_end ov62_02244AB4

	thumb_func_start ov62_02244BE4
ov62_02244BE4: @ 0x02244BE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r3, _02244C9C @ =0x0224916C
	ldr r4, [r0, r1]
	str r0, [sp]
	add r2, sp, #0x20
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r3, _02244CA0 @ =0x0224917C
	add r2, sp, #0x10
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [sp]
	movs r1, #2
	bl ov62_0223136C
	add r0, sp, #0x20
	str r0, [sp, #8]
	movs r0, #0x69
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r5, r4, #0
	str r0, [sp, #0xc]
	adds r0, #0x14
	movs r6, #0
	adds r5, #0x10
	add r7, sp, #0x10
	str r0, [sp, #0xc]
_02244C28:
	ldr r0, [sp]
	movs r1, #2
	bl ov62_022313E0
	str r0, [r4, #0x14]
	ldr r1, [sp, #0xc]
	adds r0, r5, #0
	movs r2, #2
	bl ov62_0223118C
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	adds r0, r5, #0
	bl ov62_0223124C
	cmp r6, #3
	beq _02244C56
	ldr r1, [sp]
	adds r0, r5, #0
	adds r2, r6, #1
	bl ov62_022448E0
_02244C56:
	ldr r2, [sp, #4]
	ldr r0, [r4, #0x14]
	lsls r2, r2, #0x10
	movs r1, #0x32
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	ldr r0, [r4, #0x14]
	ldr r1, [r7]
	bl FUN_0200D364
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, #0x18]
	subs r2, #0x2c
	bl FUN_020128C4
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [sp, #8]
	adds r6, r6, #1
	adds r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r4, #0x1c
	adds r0, #0x24
	adds r5, #0x1c
	adds r7, r7, #4
	str r0, [sp, #4]
	cmp r6, #4
	blt _02244C28
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02244C9C: .4byte 0x0224916C
_02244CA0: .4byte 0x0224917C
	thumb_func_end ov62_02244BE4

	thumb_func_start ov62_02244CA4
ov62_02244CA4: @ 0x02244CA4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r5, [r7, r0]
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0x10
_02244CB4:
	adds r0, r4, #0
	bl ov62_022312B0
	ldr r0, [r5, #0x14]
	bl FUN_0200D0F4
	adds r6, r6, #1
	adds r4, #0x1c
	adds r5, #0x1c
	cmp r6, #4
	blt _02244CB4
	adds r0, r7, #0
	bl ov62_022313BC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov62_02244CA4

	thumb_func_start ov62_02244CD4
ov62_02244CD4: @ 0x02244CD4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	bl FUN_0202FE04
	movs r1, #4
	movs r2, #0
	bl FUN_0202FE98
	adds r3, r0, #0
	adds r2, r1, #0
	adds r0, r4, #0
	adds r1, r3, #0
	bl ov62_02234970
	cmp r0, #0
	bne _02244CFC
	b _02244F5A
_02244CFC:
	ldr r0, [r4, #8]
	cmp r0, #5
	bls _02244D04
	b _02244EA6
_02244D04:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02244D10: @ jump table
	.2byte _02244D1C - _02244D10 - 2 @ case 0
	.2byte _02244D6A - _02244D10 - 2 @ case 1
	.2byte _02244DD0 - _02244D10 - 2 @ case 2
	.2byte _02244DE0 - _02244D10 - 2 @ case 3
	.2byte _02244E18 - _02244D10 - 2 @ case 4
	.2byte _02244E58 - _02244D10 - 2 @ case 5
_02244D1C:
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02244D3A
	subs r0, #0xc0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234228
	b _02244D44
_02244D3A:
	adds r5, #0x80
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_02232394
_02244D44:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022455C4
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02244F6C
_02244D6A:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244DB6
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_02245D50
	adds r0, r4, #0
	bl ov62_02244BE4
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02244DB6:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02244F6C
_02244DD0:
	ldr r1, _02244F70 @ =0x00000115
	adds r0, r4, #0
	bl ov62_02231AAC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02244F6C
_02244DE0:
	bl FUN_02022798
	cmp r0, #0
	bne _02244DEA
	b _02244F6C
_02244DEA:
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02244F6C
_02244E18:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02244E3E
	adds r0, r4, #0
	bl ov62_02244CA4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02244E3E:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02244F6C
_02244E58:
	ldr r0, _02244F74 @ =0x00000608
	ldr r0, [r5, r0]
	bl FUN_02024034
	ldr r0, _02244F78 @ =0x0000060C
	ldr r0, [r5, r0]
	bl FUN_02024034
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02024034
	adds r5, #8
	adds r0, r5, #0
	bl ov62_02231688
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022444A0
	adds r0, r4, #0
	bl ov62_0223146C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02244F6C
_02244EA6:
	adds r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _02244F6C
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02244F28
	adds r0, r4, #0
	bl ov62_022318E8
	adds r0, r5, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r4, #0x10]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	bl FUN_0202F250
	cmp r0, #1
	bne _02244F6C
	bl FUN_0202F22C
	b _02244F6C
_02244F28:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02244F6C
_02244F5A:
	adds r0, r4, #0
	bl ov62_02245ECC
	cmp r0, #0
	beq _02244F6C
	adds r0, r4, #0
	movs r1, #0xd
	bl ov62_0222FB60
_02244F6C:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02244F70: .4byte 0x00000115
_02244F74: .4byte 0x00000608
_02244F78: .4byte 0x0000060C
	thumb_func_end ov62_02244CD4

	thumb_func_start ov62_02244F7C
ov62_02244F7C: @ 0x02244F7C
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	ldr r0, _02244F90 @ =0x0000060C
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_02244F90: .4byte 0x0000060C
	thumb_func_end ov62_02244F7C

	thumb_func_start ov62_02244F94
ov62_02244F94: @ 0x02244F94
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02246640
	cmp r0, #0
	beq _02244FA8
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
_02244FA8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02244F94

	thumb_func_start ov62_02244FAC
ov62_02244FAC: @ 0x02244FAC
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02246428
	cmp r0, #0
	beq _02244FC0
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
_02244FC0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02244FAC

	thumb_func_start ov62_02244FC4
ov62_02244FC4: @ 0x02244FC4
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02245FE4
	cmp r0, #0
	beq _02244FD8
	adds r0, r4, #0
	movs r1, #0x10
	bl ov62_0222FB60
_02244FD8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02244FC4

	thumb_func_start ov62_02244FDC
ov62_02244FDC: @ 0x02244FDC
	push {r3, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r1, [r0, r1]
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl FUN_0202404C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_02244FDC

	thumb_func_start ov62_02244FF4
ov62_02244FF4: @ 0x02244FF4
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02246090
	cmp r0, #0
	beq _02245008
	adds r0, r4, #0
	movs r1, #0xd
	bl ov62_0222FB60
_02245008:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02244FF4

	thumb_func_start ov62_0224500C
ov62_0224500C: @ 0x0224500C
	push {r3, lr}
	bl ov62_0224613C
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_0224500C

	thumb_func_start ov62_02245018
ov62_02245018: @ 0x02245018
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #5
	bls _0224502C
	b _022452E4
_0224502C:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02245038: @ jump table
	.2byte _02245044 - _02245038 - 2 @ case 0
	.2byte _022450D8 - _02245038 - 2 @ case 1
	.2byte _02245178 - _02245038 - 2 @ case 2
	.2byte _02245244 - _02245038 - 2 @ case 3
	.2byte _022452B6 - _02245038 - 2 @ case 4
	.2byte _022452D4 - _02245038 - 2 @ case 5
_02245044:
	bl ov62_02233790
	cmp r0, #0
	beq _022450F0
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	bl ov62_022315C8
	ldr r0, _02245300 @ =0x00002604
	ldrb r1, [r4, r0]
	ldr r0, _02245304 @ =0x0000079C
	strb r1, [r5, r0]
	ldr r0, _02245308 @ =0x000008B8
	ldr r1, _0224530C @ =0x000004BC
	adds r2, r4, r0
	str r2, [r5, r1]
	ldr r1, [r5, r1]
	subs r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov62_0223371C
	adds r0, r4, #0
	bl ov62_022443EC
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #0
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_022450D8:
	bl ov62_02233790
	cmp r0, #0
	beq _022450F0
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	bne _022450F2
_022450F0:
	b _022452FA
_022450F2:
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #4
	movs r1, #1
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #0
	bl FUN_02019060
	movs r0, #7
	movs r1, #2
	bl FUN_02019060
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02245310 @ =0x0224919C
	ldr r2, _02245314 @ =ov62_022457A0
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	ldr r1, _02245318 @ =0x00000608
	ldr r2, _0224531C @ =ov62_02245800
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _02245320 @ =0x0224915C
	movs r1, #4
	adds r3, r4, #0
	bl FUN_02023FCC
	ldr r1, _02245324 @ =0x0000060C
	ldr r2, _02245328 @ =ov62_02245868
	str r0, [r5, r1]
	movs r0, #0x66
	str r0, [sp]
	ldr r0, _0224532C @ =0x0224913C
	movs r1, #2
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x61
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_02245178:
	bl ov62_02245C64
	adds r0, r4, #0
	bl ov62_02245640
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _022451F0
	subs r0, #0xc0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	b _0224521C
_022451F0:
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl ov62_02232378
	adds r5, #0x80
	adds r0, r5, #0
	movs r1, #0
	bl ov62_022323B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x50
	movs r3, #3
	bl FUN_0200710C
_0224521C:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #6
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_02245244:
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	str r2, [r5, #8]
	bl ov62_022315E0
	cmp r0, #0
	beq _0224529C
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224526C
	subs r0, #0xc0
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	b _02245276
_0224526C:
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	bl ov62_022323B8
_02245276:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0224529C:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _022452FA
_022452B6:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_022452D4:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022452FA
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022452FA
_022452E4:
	ldr r0, _02245330 @ =0x000006D8
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov62_02230098
	adds r0, r4, #0
	movs r1, #8
	bl ov62_0222FB60
_022452FA:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02245300: .4byte 0x00002604
_02245304: .4byte 0x0000079C
_02245308: .4byte 0x000008B8
_0224530C: .4byte 0x000004BC
_02245310: .4byte 0x0224919C
_02245314: .4byte ov62_022457A0
_02245318: .4byte 0x00000608
_0224531C: .4byte ov62_02245800
_02245320: .4byte 0x0224915C
_02245324: .4byte 0x0000060C
_02245328: .4byte ov62_02245868
_0224532C: .4byte 0x0224913C
_02245330: .4byte 0x000006D8
	thumb_func_end ov62_02245018

	thumb_func_start ov62_02245334
ov62_02245334: @ 0x02245334
	push {r4, lr}
	movs r1, #0x6f
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02245334

	thumb_func_start ov62_0224536C
ov62_0224536C: @ 0x0224536C
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _02245380
	b _022454A0
_02245380:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224538C: @ jump table
	.2byte _02245394 - _0224538C - 2 @ case 0
	.2byte _022453A8 - _0224538C - 2 @ case 1
	.2byte _02245406 - _0224538C - 2 @ case 2
	.2byte _0224548A - _0224538C - 2 @ case 3
_02245394:
	movs r1, #0x77
	bl ov62_02231AAC
	ldr r0, _022454D0 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022454CA
_022453A8:
	bl ov62_022411B8
	cmp r0, #0
	bne _022453B6
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_022453B6:
	movs r3, #0
	movs r0, #0x83
	str r3, [sp]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0x66
	add r2, sp, #4
	bl FUN_0202F298
	movs r0, #0x66
	bl FUN_02030A80
	movs r1, #0x1d
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0x83
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_02030AA0
	adds r0, r4, #0
	bl ov62_0224112C
	movs r1, #0x1d
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	bl FUN_0222B338
	cmp r0, #1
	bne _022454CA
	movs r0, #0x1d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02030A98
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022454CA
_02245406:
	bl ov62_022411B8
	cmp r0, #0
	bne _02245414
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_02245414:
	bl FUN_0202F22C
	adds r0, r4, #0
	bl ov62_02231B8C
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #8
	bl FUN_0222BB48
	cmp r0, #1
	bne _02245464
	ldr r0, _022454D0 @ =0x00000565
	movs r1, #0
	bl FUN_020057A4
	ldr r3, [sp, #8]
	adds r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	movs r1, #6
	bl ov62_022348B8
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	movs r0, #0xff
	str r0, [r4, #8]
	b _022454CA
_02245464:
	adds r0, r4, #0
	movs r1, #0x77
	bl ov62_02231AAC
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov62_022469A0
	ldr r0, _022454D0 @ =0x00000565
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _022454D4 @ =0x0000055F
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022454CA
_0224548A:
	bl FUN_02022798
	cmp r0, #0
	beq _022454CA
	adds r0, r4, #0
	bl ov62_02231B8C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _022454CA
_022454A0:
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	adds r0, r4, #0
	movs r1, #0x2e
	bl ov62_02233704
	adds r0, r4, #0
	movs r1, #4
	bl ov62_0222FB60
_022454CA:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_022454D0: .4byte 0x00000565
_022454D4: .4byte 0x0000055F
	thumb_func_end ov62_0224536C

	thumb_func_start ov62_022454D8
ov62_022454D8: @ 0x022454D8
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	bne _0224551C
	adds r4, #8
	adds r0, r4, #0
	bl ov62_02231688
	adds r0, r5, #0
	bl ov62_02230060
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_0223146C
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _022455C0
_0224551C:
	bl ov62_02233790
	cmp r0, #0
	beq _022455C0
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _02245590
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	b _022455C0
_02245590:
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_022455C0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_022454D8

	thumb_func_start ov62_022455C4
ov62_022455C4: @ 0x022455C4
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	ldr r0, _022455E0 @ =0x000006D4
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _022455E0 @ =0x000006D4
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	nop
_022455E0: .4byte 0x000006D4
	thumb_func_end ov62_022455C4

	thumb_func_start ov62_022455E4
ov62_022455E4: @ 0x022455E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02245638 @ =0x000006D4
	adds r7, r1, #0
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	adds r1, r7, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, r6
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0224563C @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, r6
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245638: .4byte 0x000006D4
_0224563C: .4byte 0x000F0D00
	thumb_func_end ov62_022455E4

	thumb_func_start ov62_02245640
ov62_02245640: @ 0x02245640
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02245688 @ =0x000006D4
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r0, #3
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r2, #6
	movs r3, #8
	bl FUN_0201A7E8
	movs r1, #0x73
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r5, #0
	adds r1, #0x79
	bl ov62_022455E4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02245688: .4byte 0x000006D4
	thumb_func_end ov62_02245640

	thumb_func_start ov62_0224568C
ov62_0224568C: @ 0x0224568C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r6, _02245764 @ =0x000006D4
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r3, #4
	bl FUN_0201A7E8
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x82
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r4, r6
	adds r1, r7, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02245768 @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r4, r6
	bl FUN_0201A9A4
	adds r6, #0x10
	adds r0, r4, r6
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, r6
	movs r3, #0x12
	bl FUN_0201A7E8
	adds r0, r4, r6
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x83
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, r6
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02245768 @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, r6
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, r6
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02245764: .4byte 0x000006D4
_02245768: .4byte 0x000F0D00
	thumb_func_end ov62_0224568C

	thumb_func_start ov62_0224576C
ov62_0224576C: @ 0x0224576C
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	ldr r0, _02245798 @ =0x000006D4
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _02245798 @ =0x000006D4
	adds r0, r4, r0
	bl FUN_0201A8FC
	ldr r0, _0224579C @ =0x000006E4
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _0224579C @ =0x000006E4
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	nop
_02245798: .4byte 0x000006D4
_0224579C: .4byte 0x000006E4
	thumb_func_end ov62_0224576C

	thumb_func_start ov62_022457A0
ov62_022457A0: @ 0x022457A0
	push {r4, lr}
	adds r4, r2, #0
	cmp r1, #0
	bne _022457FE
	cmp r0, #3
	bhi _022457FE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022457B8: @ jump table
	.2byte _022457C0 - _022457B8 - 2 @ case 0
	.2byte _022457D0 - _022457B8 - 2 @ case 1
	.2byte _022457E0 - _022457B8 - 2 @ case 2
	.2byte _022457F0 - _022457B8 - 2 @ case 3
_022457C0:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #9
	bl ov62_0222FB60
	pop {r4, pc}
_022457D0:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0xa
	bl ov62_0222FB60
	pop {r4, pc}
_022457E0:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0xc
	bl ov62_0222FB60
	pop {r4, pc}
_022457F0:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0xb
	bl ov62_0222FB60
_022457FE:
	pop {r4, pc}
	thumb_func_end ov62_022457A0

	thumb_func_start ov62_02245800
ov62_02245800: @ 0x02245800
	push {r4, lr}
	adds r4, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r3, [r4, r2]
	cmp r1, #0
	bne _02245864
	cmp r0, #3
	bhi _02245864
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224581E: @ jump table
	.2byte _02245826 - _0224581E - 2 @ case 0
	.2byte _02245826 - _0224581E - 2 @ case 1
	.2byte _02245826 - _0224581E - 2 @ case 2
	.2byte _02245856 - _0224581E - 2 @ case 3
_02245826:
	adds r1, r0, #1
	movs r0, #0x72
	lsls r0, r0, #2
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	adds r2, #0x2c
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02245846
	adds r0, r4, #0
	movs r1, #0xf
	bl ov62_0222FB60
	b _0224584E
_02245846:
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
_0224584E:
	adds r0, r4, #0
	bl ov62_02234520
	pop {r4, pc}
_02245856:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0xe
	bl ov62_0222FB60
_02245864:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02245800

	thumb_func_start ov62_02245868
ov62_02245868: @ 0x02245868
	push {r4, lr}
	adds r4, r2, #0
	cmp r1, #0
	bne _0224589E
	cmp r0, #0
	beq _0224587A
	cmp r0, #1
	beq _02245890
	pop {r4, pc}
_0224587A:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	bl ov62_0224576C
	adds r0, r4, #0
	movs r1, #0x12
	bl ov62_0222FB60
	pop {r4, pc}
_02245890:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0x11
	bl ov62_0222FB60
_0224589E:
	pop {r4, pc}
	thumb_func_end ov62_02245868

	thumb_func_start ov62_022458A0
ov62_022458A0: @ 0x022458A0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x86
	adds r4, r2, #0
	lsls r0, r0, #4
	ldr r6, [r4, r0]
	cmp r1, #0
	bne _0224595C
	cmp r5, #4
	bhi _0224595C
	adds r1, r5, r5
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022458C0: @ jump table
	.2byte _022458CA - _022458C0 - 2 @ case 0
	.2byte _022458DE - _022458C0 - 2 @ case 1
	.2byte _022458F2 - _022458C0 - 2 @ case 2
	.2byte _02245924 - _022458C0 - 2 @ case 3
	.2byte _02245934 - _022458C0 - 2 @ case 4
_022458CA:
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, _02245960 @ =0x000004C5
	movs r1, #5
	strb r5, [r6, r0]
	adds r0, r4, #0
	bl ov62_0222FB60
	pop {r3, r4, r5, r6, r7, pc}
_022458DE:
	adds r0, r4, #0
	bl ov62_02234520
	ldr r0, _02245960 @ =0x000004C5
	movs r1, #5
	strb r5, [r6, r0]
	adds r0, r4, #0
	bl ov62_0222FB60
	pop {r3, r4, r5, r6, r7, pc}
_022458F2:
	adds r0, #0x2c
	ldr r0, [r4, r0]
	bl FUN_02030BFC
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov62_02234520
	cmp r7, #0
	bne _02245916
	ldr r0, _02245964 @ =0x00000564
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x80
	bl ov62_02231B3C
	pop {r3, r4, r5, r6, r7, pc}
_02245916:
	ldr r0, _02245960 @ =0x000004C5
	movs r1, #5
	strb r5, [r6, r0]
	adds r0, r4, #0
	bl ov62_0222FB60
	pop {r3, r4, r5, r6, r7, pc}
_02245924:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #4
	bl ov62_0222FB60
	pop {r3, r4, r5, r6, r7, pc}
_02245934:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	bl ov62_02241780
	cmp r0, #0
	bne _02245954
	ldr r0, _02245964 @ =0x00000564
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x74
	bl ov62_02231B3C
	pop {r3, r4, r5, r6, r7, pc}
_02245954:
	adds r0, r4, #0
	movs r1, #0xc
	bl ov62_0222FB60
_0224595C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02245960: .4byte 0x000004C5
_02245964: .4byte 0x00000564
	thumb_func_end ov62_022458A0

	thumb_func_start ov62_02245968
ov62_02245968: @ 0x02245968
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #0
	bne _0224598E
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02242748
	cmp r0, #0
	bne _02245986
	ldr r0, _02245990 @ =0x00000564
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_02245986:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_022427D0
_0224598E:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02245990: .4byte 0x00000564
	thumb_func_end ov62_02245968

	thumb_func_start ov62_02245994
ov62_02245994: @ 0x02245994
	push {r3, r4, r5, lr}
	adds r4, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r5, [r4, r2]
	cmp r1, #0
	bne _02245A24
	cmp r0, #3
	bhi _02245A24
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022459B2: @ jump table
	.2byte _022459BA - _022459B2 - 2 @ case 0
	.2byte _022459CA - _022459B2 - 2 @ case 1
	.2byte _022459F0 - _022459B2 - 2 @ case 2
	.2byte _02245A16 - _022459B2 - 2 @ case 3
_022459BA:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0x13
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_022459CA:
	adds r0, r4, #0
	bl ov62_02234520
	bl FUN_0202F250
	cmp r0, #0
	beq _022459E2
	adds r0, r4, #0
	movs r1, #0x14
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_022459E2:
	movs r0, #0x14
	str r0, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #0x1d
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_022459F0:
	adds r0, r4, #0
	bl ov62_02234520
	bl FUN_0202F250
	cmp r0, #0
	beq _02245A08
	adds r0, r4, #0
	movs r1, #0x16
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02245A08:
	movs r0, #0x16
	str r0, [r5, #0xc]
	adds r0, r4, #0
	movs r1, #0x1d
	bl ov62_0222FB60
	pop {r3, r4, r5, pc}
_02245A16:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0x15
	bl ov62_0222FB60
_02245A24:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02245994

	thumb_func_start ov62_02245A28
ov62_02245A28: @ 0x02245A28
	push {r4, lr}
	adds r4, r2, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r3, [r4, r2]
	cmp r1, #0
	bne _02245A8C
	cmp r0, #3
	bhi _02245A8C
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02245A46: @ jump table
	.2byte _02245A4E - _02245A46 - 2 @ case 0
	.2byte _02245A4E - _02245A46 - 2 @ case 1
	.2byte _02245A4E - _02245A46 - 2 @ case 2
	.2byte _02245A7E - _02245A46 - 2 @ case 3
_02245A4E:
	adds r1, r0, #1
	movs r0, #0x72
	lsls r0, r0, #2
	str r1, [r3, r0]
	ldr r0, [r3, r0]
	adds r2, #0x2c
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, r2]
	cmp r0, #0
	beq _02245A6E
	adds r0, r4, #0
	movs r1, #0x19
	bl ov62_0222FB60
	b _02245A76
_02245A6E:
	adds r0, r4, #0
	movs r1, #0x1c
	bl ov62_0222FB60
_02245A76:
	adds r0, r4, #0
	bl ov62_02234520
	pop {r4, pc}
_02245A7E:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0x18
	bl ov62_0222FB60
_02245A8C:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02245A28

	thumb_func_start ov62_02245A90
ov62_02245A90: @ 0x02245A90
	push {r4, lr}
	adds r4, r2, #0
	cmp r1, #0
	bne _02245AC6
	cmp r0, #0
	beq _02245AA2
	cmp r0, #1
	beq _02245AB8
	pop {r4, pc}
_02245AA2:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	bl ov62_0224576C
	adds r0, r4, #0
	movs r1, #0x1c
	bl ov62_0222FB60
	pop {r4, pc}
_02245AB8:
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	movs r1, #0x1b
	bl ov62_0222FB60
_02245AC6:
	pop {r4, pc}
	thumb_func_end ov62_02245A90

	thumb_func_start ov62_02245AC8
ov62_02245AC8: @ 0x02245AC8
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	ldr r0, [r4, #0x14]
	bne _02245AF0
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	movs r2, #0xa8
	bl FUN_0200D4C4
	b _02245B08
_02245AF0:
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r4, #0x18]
	movs r1, #0
	bl FUN_020129D0
	ldr r0, [r4, #0x30]
	movs r1, #0x50
	movs r2, #0xa8
	bl FUN_0200D4C4
_02245B08:
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, #0x18]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, #0x34]
	subs r2, #0x2c
	bl FUN_020128C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02245AC8

	thumb_func_start ov62_02245B24
ov62_02245B24: @ 0x02245B24
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	movs r1, #1
	bl ov62_022312CC
	adds r0, r4, #0
	movs r1, #1
	bl ov62_022313E0
	str r0, [r5, #0x14]
	adds r0, r4, #0
	movs r1, #1
	bl ov62_022313E0
	str r0, [r5, #0x30]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #1
	bl ov62_0223118C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #1
	bl ov62_0223118C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x6f
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	movs r1, #0x20
	movs r2, #0xa8
	bl FUN_0200D4C4
	ldr r0, [r5, #0x30]
	movs r1, #0x80
	movs r2, #0xa8
	bl FUN_0200D4C4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r5, #0x18]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r5, #0x34]
	subs r2, #0x2c
	bl FUN_020128C4
	ldr r0, [r5, #0x18]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [r5, #0x34]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r5, #0x30]
	movs r1, #1
	bl FUN_0200D364
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02245AC8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02245B24

	thumb_func_start ov62_02245BD8
ov62_02245BD8: @ 0x02245BD8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	adds r0, r5, #0
	adds r0, #0x10
	bl ov62_022312B0
	adds r0, r5, #0
	adds r0, #0x2c
	bl ov62_022312B0
	ldr r0, [r5, #0x14]
	bl FUN_0200D0F4
	ldr r0, [r5, #0x30]
	bl FUN_0200D0F4
	adds r0, r4, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02245BD8

	thumb_func_start ov62_02245C08
ov62_02245C08: @ 0x02245C08
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r4, [r0, r2]
	cmp r1, #0
	ldr r0, [r4, #0x30]
	bne _02245C30
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, [r4, #0x34]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [r4, #0x14]
	movs r1, #0x20
	movs r2, #0xe8
	bl FUN_0200D4C4
	b _02245C48
_02245C30:
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r4, #0x34]
	movs r1, #0
	bl FUN_020129D0
	ldr r0, [r4, #0x14]
	movs r1, #0x50
	movs r2, #0xe8
	bl FUN_0200D4C4
_02245C48:
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, #0x18]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, #0x34]
	subs r2, #0x2c
	bl FUN_020128C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02245C08

	thumb_func_start ov62_02245C64
ov62_02245C64: @ 0x02245C64
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	movs r1, #2
	bl ov62_022312CC
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	str r0, [r4, #0x14]
	adds r0, r5, #0
	movs r1, #2
	bl ov62_022313E0
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #2
	bl ov62_0223118C
	ldr r0, _02245D4C @ =0x0000086C
	ldr r0, [r5, r0]
	cmp r0, #0xd2
	bne _02245CDA
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x6f
	bl ov62_0223124C
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_0200D364
	b _02245D06
_02245CDA:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r4, #0
	adds r1, r5, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r4, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r4, #0x30]
	movs r1, #3
	bl FUN_0200D364
_02245D06:
	ldr r0, [r4, #0x14]
	movs r1, #0x20
	movs r2, #0xe8
	bl FUN_0200D4C4
	ldr r0, [r4, #0x30]
	movs r1, #0x80
	movs r2, #0xe8
	bl FUN_0200D4C4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, #0x18]
	subs r2, #0x2c
	bl FUN_020128C4
	movs r1, #0x24
	adds r2, r1, #0
	ldr r0, [r4, #0x34]
	subs r2, #0x2c
	bl FUN_020128C4
	ldr r0, [r4, #0x18]
	movs r1, #1
	bl FUN_020129D0
	ldr r0, [r4, #0x34]
	movs r1, #1
	bl FUN_020129D0
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02245C08
	pop {r3, r4, r5, pc}
	.align 2, 0
_02245D4C: .4byte 0x0000086C
	thumb_func_end ov62_02245C64

	thumb_func_start ov62_02245D50
ov62_02245D50: @ 0x02245D50
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r5, [r4, r0]
	adds r0, r5, #0
	adds r0, #0x10
	bl ov62_022312B0
	adds r0, r5, #0
	adds r0, #0x2c
	bl ov62_022312B0
	ldr r0, [r5, #0x14]
	bl FUN_0200D0F4
	ldr r0, [r5, #0x30]
	bl FUN_0200D0F4
	adds r0, r4, #0
	bl ov62_022313BC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02245D50

	thumb_func_start ov62_02245D80
ov62_02245D80: @ 0x02245D80
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #3
	bls _02245D92
	b _02245EAE
_02245D92:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02245D9E: @ jump table
	.2byte _02245DA6 - _02245D9E - 2 @ case 0
	.2byte _02245DE4 - _02245D9E - 2 @ case 1
	.2byte _02245DFC - _02245D9E - 2 @ case 2
	.2byte _02245E66 - _02245D9E - 2 @ case 3
_02245DA6:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02245DC2
	subs r0, #0xc0
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234228
	b _02245DCC
_02245DC2:
	adds r4, #0x80
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02232394
_02245DCC:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02245EC8
_02245DE4:
	movs r2, #1
	adds r0, r4, #0
	adds r1, r4, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02245EC8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02245EC8
_02245DFC:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02245E2C
	adds r0, r4, #0
	adds r0, #0x80
	adds r1, r5, #0
	bl ov62_02232378
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #0
	bl ov62_022323B8
	adds r0, r5, #0
	movs r1, #0x50
	movs r2, #3
	bl ov62_022343B8
	b _02245E56
_02245E2C:
	subs r0, #0xc0
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234214
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #3
	bl ov62_022343B8
_02245E56:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02245EC8
_02245E66:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _02245EC8
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02245E8C
	adds r4, #0x80
	adds r0, r4, #0
	movs r1, #1
	bl ov62_022323B8
	b _02245E96
_02245E8C:
	subs r0, #0xc0
	adds r0, r4, r0
	movs r1, #1
	bl ov62_0223427C
_02245E96:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02245EC8
_02245EAE:
	movs r1, #0x73
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	movs r0, #1
	eors r0, r2
	str r0, [r4, r1]
	ldr r1, [r4, r1]
	adds r0, r5, #0
	adds r1, #0x79
	bl ov62_022455E4
	movs r0, #1
	pop {r3, r4, r5, pc}
_02245EC8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02245D80

	thumb_func_start ov62_02245ECC
ov62_02245ECC: @ 0x02245ECC
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02245EE6
	cmp r1, #1
	beq _02245F32
	cmp r1, #2
	beq _02245F98
	b _02245FDC
_02245EE6:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02245F02
	subs r0, #0xc0
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234228
	b _02245F0C
_02245F02:
	adds r4, #0x80
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_02232394
_02245F0C:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022455C4
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02245FE0
_02245F32:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02245F7E
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02245D50
	adds r0, r5, #0
	bl ov62_02244BE4
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02245F7E:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02245FE0
_02245F98:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #1
	bl ov62_022315E0
	cmp r0, #0
	beq _02245FC2
	adds r0, r5, #0
	movs r1, #0x64
	movs r2, #0
	bl ov62_022449B8
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02245FC2:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02245FE0
_02245FDC:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02245FE0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02245ECC

	thumb_func_start ov62_02245FE4
ov62_02245FE4: @ 0x02245FE4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02245FFC
	cmp r0, #1
	beq _0224605C
	b _02246082
_02245FFC:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02246042
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x54
	movs r3, #7
	bl FUN_0200710C
	movs r2, #0x72
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	adds r0, r5, #0
	movs r1, #0x66
	bl ov62_02244AB4
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02246042:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02246088
_0224605C:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02246088
	adds r0, r5, #0
	bl ov62_0224568C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02246088
_02246082:
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_02246088:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02245FE4

	thumb_func_start ov62_02246090
ov62_02246090: @ 0x02246090
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _022460AA
	cmp r0, #1
	beq _022460BA
	cmp r0, #2
	beq _022460E8
	b _02246134
_022460AA:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02246138
_022460BA:
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _02246138
	adds r0, r5, #0
	bl ov62_0224576C
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02246138
_022460E8:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _0224611A
	adds r0, r5, #0
	movs r1, #0x64
	movs r2, #0
	bl ov62_02244AB4
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_0224611A:
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02246138
_02246134:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02246138:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02246090

	thumb_func_start ov62_0224613C
ov62_0224613C: @ 0x0224613C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r1, [r4, #8]
	ldr r5, [r4, r2]
	cmp r1, #7
	bls _02246150
	b _02246350
_02246150:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224615C: @ jump table
	.2byte _0224616C - _0224615C - 2 @ case 0
	.2byte _0224617C - _0224615C - 2 @ case 1
	.2byte _022461CE - _0224615C - 2 @ case 2
	.2byte _022461EE - _0224615C - 2 @ case 3
	.2byte _02246224 - _0224615C - 2 @ case 4
	.2byte _02246268 - _0224615C - 2 @ case 5
	.2byte _022462AE - _0224615C - 2 @ case 6
	.2byte _022462FA - _0224615C - 2 @ case 7
_0224616C:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_0224617C:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022461B4
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r1, _02246408 @ =0x00000116
	adds r0, r4, #0
	movs r2, #0
	bl ov62_02244AB4
	adds r0, r4, #0
	bl ov62_022342BC
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022461B4:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02246402
_022461CE:
	movs r1, #0x72
	subs r2, #0xc4
	lsls r1, r1, #2
	ldrb r2, [r5, r2]
	ldr r1, [r5, r1]
	bl ov62_022337F0
	cmp r0, #0
	beq _022462B6
	ldr r0, _0224640C @ =0x0000079C
	movs r1, #0
	strb r1, [r5, r0]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_022461EE:
	movs r1, #0x6f
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	movs r2, #0x80
	movs r3, #0x60
	bl ov62_02234358
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0x18
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	ldr r0, _02246410 @ =0x00000565
	bl FUN_02005748
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_02246224:
	bl ov62_022411B8
	cmp r0, #0
	bne _02246232
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_02246232:
	movs r1, #0x46
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0
	bl ov62_02244AB4
	bl FUN_0202FE04
	movs r1, #4
	movs r2, #0
	bl FUN_0202FE98
	adds r6, r0, #0
	adds r5, r1, #0
	adds r0, r4, #0
	bl ov62_0224112C
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_0222B550
	cmp r0, #1
	bne _022462B6
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_02246268:
	bl ov62_022411B8
	cmp r0, #0
	bne _02246276
	add sp, #8
	movs r0, #0
	pop {r4, r5, r6, pc}
_02246276:
	adds r0, r4, #0
	bl ov62_0224112C
	add r1, sp, #4
	bl FUN_0222BB48
	cmp r0, #1
	ldr r0, _02246410 @ =0x00000565
	bne _02246290
	movs r1, #0
	bl FUN_020057A4
	b _0224629C
_02246290:
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _02246414 @ =0x0000055F
	bl FUN_02005748
_0224629C:
	ldr r0, [r4, #8]
	ldr r1, _02246418 @ =0x00000119
	adds r0, r0, #1
	str r0, [r4, #8]
	adds r0, r4, #0
	movs r2, #0
	bl ov62_02244AB4
	b _02246402
_022462AE:
	bl FUN_02022798
	cmp r0, #0
	bne _022462B8
_022462B6:
	b _02246402
_022462B8:
	adds r0, r4, #0
	bl ov62_02231A88
	adds r0, r4, #0
	bl ov62_02244CA4
	movs r0, #0x6f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0208B9E0
	movs r0, #0x6f
	lsls r0, r0, #4
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_0208BA08
	adds r0, r4, #0
	bl ov62_022339A0
	adds r0, r4, #0
	bl ov62_022338A8
	ldr r0, _0224641C @ =0x0000049C
	adds r0, r4, r0
	bl ov62_02233310
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_022462FA:
	ldr r0, _02246420 @ =0x00000608
	ldr r0, [r5, r0]
	bl FUN_02024034
	ldr r0, _02246424 @ =0x0000060C
	ldr r0, [r5, r0]
	bl FUN_02024034
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_02024034
	adds r5, #8
	adds r0, r5, #0
	bl ov62_02231688
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r4, #0
	bl ov62_022444A0
	adds r0, r4, #0
	bl ov62_0223146C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #1
	movs r1, #0x66
	bl FUN_020397C8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02246402
_02246350:
	adds r0, r4, #0
	bl ov62_02233790
	cmp r0, #0
	beq _02246402
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022463D2
	adds r0, r4, #0
	bl ov62_022318E8
	adds r0, r5, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r4, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r4, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r4, #0x10]
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r4, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r5, #0
	bl FUN_020181C4
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	bl FUN_0202F250
	cmp r0, #1
	bne _02246402
	bl FUN_0202F22C
	b _02246402
_022463D2:
	ldr r0, [r4, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_02246402:
	movs r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_02246408: .4byte 0x00000116
_0224640C: .4byte 0x0000079C
_02246410: .4byte 0x00000565
_02246414: .4byte 0x0000055F
_02246418: .4byte 0x00000119
_0224641C: .4byte 0x0000049C
_02246420: .4byte 0x00000608
_02246424: .4byte 0x0000060C
	thumb_func_end ov62_0224613C

	thumb_func_start ov62_02246428
ov62_02246428: @ 0x02246428
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r1, [r4, #8]
	ldr r5, [r4, r0]
	cmp r1, #3
	bls _0224643C
	b _02246634
_0224643C:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02246448: @ jump table
	.2byte _02246450 - _02246448 - 2 @ case 0
	.2byte _02246478 - _02246448 - 2 @ case 1
	.2byte _022464B2 - _02246448 - 2 @ case 2
	.2byte _022465CA - _02246448 - 2 @ case 3
_02246450:
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224663A
_02246478:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02246498
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02246498:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0224663A
_022464B2:
	adds r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _022464E6
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r5, #0x30]
	movs r1, #3
	bl FUN_0200D364
_022464E6:
	adds r0, r4, #0
	bl ov62_022455C4
	adds r0, r4, #0
	bl ov62_02245640
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224656C
	subs r0, #0xc0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234228
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	b _022465A2
_0224656C:
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl ov62_02232394
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl ov62_02232378
	adds r5, #0x80
	adds r0, r5, #0
	movs r1, #0
	bl ov62_022323B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x50
	movs r3, #3
	bl FUN_0200710C
_022465A2:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #6
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _0224663A
_022465CA:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _0224661A
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _022465FA
	subs r0, #0xc0
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	b _02246604
_022465FA:
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	bl ov62_022323B8
_02246604:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_0224661A:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0224663A
_02246634:
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_0224663A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02246428

	thumb_func_start ov62_02246640
ov62_02246640: @ 0x02246640
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _02246654
	b _0224683E
_02246654:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02246660: @ jump table
	.2byte _02246668 - _02246660 - 2 @ case 0
	.2byte _02246694 - _02246660 - 2 @ case 1
	.2byte _022466D4 - _02246660 - 2 @ case 2
	.2byte _022467D4 - _02246660 - 2 @ case 3
_02246668:
	bl ov62_02231A88
	ldr r0, [r4, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r4, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02246844
_02246694:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022466BA
	adds r0, r4, #0
	bl ov62_02244CA4
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022466BA:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02246844
_022466D4:
	bl ov62_02245C64
	ldr r0, _0224684C @ =0x0000086C
	ldr r0, [r4, r0]
	cmp r0, #0xd2
	bne _0224670C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x10
	adds r1, #0x14
	movs r2, #3
	bl ov62_0223124C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r0, #0x2c
	adds r1, #0x14
	movs r2, #0x5e
	bl ov62_0223124C
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [r5, #0x30]
	movs r1, #3
	bl FUN_0200D364
_0224670C:
	adds r0, r4, #0
	bl ov62_02245640
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02246780
	subs r0, #0xc0
	adds r0, r5, r0
	adds r1, r4, #0
	bl ov62_02234214
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl ov62_0223427C
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov62_02233FEC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #3
	bl ov62_022343B8
	b _022467AC
_02246780:
	adds r0, r5, #0
	adds r0, #0x80
	adds r1, r4, #0
	bl ov62_02232378
	adds r5, #0x80
	adds r0, r5, #0
	movs r1, #0
	bl ov62_022323B8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x50
	movs r3, #3
	bl FUN_0200710C
_022467AC:
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02234540
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #6
	movs r3, #7
	bl FUN_0200710C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02246844
_022467D4:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	movs r2, #0
	adds r0, r5, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _02246824
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _02246804
	subs r0, #0xc0
	adds r0, r5, r0
	movs r1, #1
	bl ov62_0223427C
	b _0224680E
_02246804:
	adds r0, r5, #0
	adds r0, #0x80
	movs r1, #1
	bl ov62_022323B8
_0224680E:
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_02246824:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02246844
_0224683E:
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, pc}
_02246844:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0224684C: .4byte 0x0000086C
	thumb_func_end ov62_02246640

	thumb_func_start ov62_02246850
ov62_02246850: @ 0x02246850
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0224686C
	cmp r1, #1
	beq _0224688C
	cmp r1, #2
	beq _0224689C
	b _0224692A
_0224686C:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x66
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02246930
_0224688C:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02246930
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02246930
_0224689C:
	movs r1, #1
	bl ov62_02234540
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _022468B8
	subs r0, #0xc0
	adds r0, r4, r0
	adds r1, r5, #0
	bl ov62_02234228
	b _022468C2
_022468B8:
	adds r0, r4, #0
	adds r0, #0x80
	adds r1, r5, #0
	bl ov62_02232394
_022468C2:
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, _02246938 @ =0x00000608
	ldr r0, [r4, r0]
	bl FUN_02024034
	ldr r0, _0224693C @ =0x0000060C
	ldr r0, [r4, r0]
	bl FUN_02024034
	movs r0, #0x61
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02024034
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_022444A0
	adds r0, r5, #0
	bl ov62_022455C4
	adds r0, r5, #0
	bl ov62_02245D50
	adds r0, r5, #0
	bl ov62_022314A8
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r1, [r5, #0x10]
	adds r0, r5, #0
	ldr r1, [r1]
	bl ov62_022300C8
	ldr r0, _02246940 @ =0x00000868
	movs r1, #1
	ldr r0, [r5, r0]
	movs r2, #0
	bl FUN_0208BA84
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02246930
_0224692A:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, pc}
_02246930:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02246938: .4byte 0x00000608
_0224693C: .4byte 0x0000060C
_02246940: .4byte 0x00000868
	thumb_func_end ov62_02246850

	thumb_func_start ov62_02246944
ov62_02246944: @ 0x02246944
	push {r4, lr}
	movs r2, #0x86
	lsls r2, r2, #4
	ldr r1, [r1]
	ldr r4, [r0, r2]
	cmp r1, #1
	beq _02246964
	bl ov62_0224112C
	bl FUN_0222BDF0
	movs r2, #0x4b
	lsls r2, r2, #4
	str r0, [r4, r2]
	adds r0, r2, #4
	str r1, [r4, r0]
_02246964:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02246944

	thumb_func_start ov62_02246968
ov62_02246968: @ 0x02246968
	push {r4, lr}
	ldr r1, [r1]
	adds r4, r0, #0
	cmp r1, #1
	beq _02246990
	bl ov62_0224112C
	ldr r1, _02246994 @ =0x000008B4
	adds r1, r4, r1
	bl FUN_0222BED8
	adds r0, r4, #0
	bl ov62_0223371C
	ldr r0, _02246994 @ =0x000008B4
	ldr r0, [r4, r0]
	adds r0, #0xa7
	ldrb r1, [r0]
	ldr r0, _02246998 @ =0x00002604
	strb r1, [r4, r0]
_02246990:
	pop {r4, pc}
	nop
_02246994: .4byte 0x000008B4
_02246998: .4byte 0x00002604
	thumb_func_end ov62_02246968

	thumb_func_start ov62_0224699C
ov62_0224699C: @ 0x0224699C
	bx lr
	.align 2, 0
	thumb_func_end ov62_0224699C

	thumb_func_start ov62_022469A0
ov62_022469A0: @ 0x022469A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r0, #0
	movs r0, #0x66
	adds r5, r1, #0
	bl ov62_02231690
	adds r6, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #4
	ldr r7, [r4, r0]
	adds r0, r0, #4
	ldr r4, [r4, r0]
	movs r0, #0xff
	movs r1, #0x66
	str r4, [sp, #0x14]
	bl FUN_02023790
	str r0, [sp, #0x18]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x1c]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x20]
	ldr r2, _02246AF0 @ =0x000186A0
	adds r0, r7, #0
	adds r1, r4, #0
	movs r3, #0
	blx FUN_020E1ED4
	str r0, [sp, #0x24]
	adds r4, r1, #0
	ldr r0, [r5, #0x48]
	ldr r1, _02246AF4 @ =0x00000127
	bl FUN_0200B1EC
	str r0, [sp, #0x28]
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	str r0, [sp, #0x2c]
	ldr r1, [sp, #0x14]
	ldr r2, _02246AF0 @ =0x000186A0
	adds r0, r7, #0
	movs r3, #0
	blx FUN_020E1EE0
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x18]
	movs r2, #5
	movs r3, #2
	bl FUN_020238A0
	ldr r0, [sp, #0x24]
	ldr r2, _02246AF0 @ =0x000186A0
	adds r1, r4, #0
	movs r3, #0
	blx FUN_020E1EE0
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	movs r2, #5
	movs r3, #2
	bl FUN_020238A0
	ldr r0, [sp, #0x24]
	ldr r2, _02246AF0 @ =0x000186A0
	adds r1, r4, #0
	movs r3, #0
	blx FUN_020E1ED4
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r2, #2
	ldr r0, [sp, #0x20]
	adds r3, r2, #0
	bl FUN_020238A0
	movs r0, #1
	str r0, [sp]
	movs r1, #2
	ldr r2, [sp, #0x18]
	adds r0, r6, #0
	movs r3, #0
	str r1, [sp, #4]
	bl FUN_0200B48C
	movs r1, #1
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x1c]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_0200B48C
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x20]
	adds r0, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	adds r0, r6, #0
	bl FUN_0200C388
	ldr r0, _02246AF8 @ =0x000008A4
	movs r1, #0xcc
	adds r0, r5, r0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02246AFC @ =0x000F0D00
	ldr r2, [sp, #0x2c]
	str r0, [sp, #8]
	ldr r0, _02246AF8 @ =0x000008A4
	adds r3, r1, #0
	adds r0, r5, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, _02246AF8 @ =0x000008A4
	adds r0, r5, r0
	bl FUN_0201A9A4
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	ldr r0, [sp, #0x20]
	bl FUN_020237BC
	ldr r0, [sp, #0x28]
	bl FUN_020237BC
	ldr r0, [sp, #0x2c]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200C41C
	adds r0, r6, #0
	bl FUN_0200B3F0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02246AF0: .4byte 0x000186A0
_02246AF4: .4byte 0x00000127
_02246AF8: .4byte 0x000008A4
_02246AFC: .4byte 0x000F0D00
	thumb_func_end ov62_022469A0

	thumb_func_start ov62_02246B00
ov62_02246B00: @ 0x02246B00
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0x20
	str r0, [sp]
	adds r5, r2, #0
	adds r7, r3, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x20
	adds r4, r0, #0
	blx FUN_020C4CF4
	ldr r1, [sp]
	adds r0, r6, #1
	str r6, [r4]
	bl FUN_02023790
	str r0, [r4, #0x18]
	str r7, [r4, #0x1c]
	movs r2, #0
	adds r1, r5, #0
	adds r3, r4, #0
_02246B2E:
	ldr r0, [r1]
	adds r2, r2, #1
	str r0, [r3, #4]
	adds r1, r1, #4
	adds r3, r3, #4
	cmp r2, #3
	blt _02246B2E
	subs r0, r2, #1
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	lsls r0, r2, #2
	adds r0, r4, r0
	str r1, [r0, #4]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_02246B00

	thumb_func_start ov62_02246B4C
ov62_02246B4C: @ 0x02246B4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _02246B5A
	bl FUN_02022974
_02246B5A:
	cmp r4, #0
	bne _02246B62
	bl FUN_02022974
_02246B62:
	ldr r0, [r4, #0x18]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov62_02246B4C

	thumb_func_start ov62_02246B70
ov62_02246B70: @ 0x02246B70
	push {r3, r4}
	movs r2, #0x82
	lsls r2, r2, #2
	ldr r4, [r0, r2]
	adds r3, r2, #4
	str r4, [r0, r3]
	str r1, [r0, r2]
	adds r1, r2, #0
	movs r3, #0
	adds r1, #8
	str r3, [r0, r1]
	adds r1, r2, #0
	adds r1, #0xc
	str r3, [r0, r1]
	adds r1, r2, #0
	adds r1, #0x10
	str r3, [r0, r1]
	adds r1, r2, #0
	adds r1, #0x14
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02246BC2
	subs r1, r1, #1
	lsls r1, r1, #2
	adds r3, r0, r1
	adds r1, r2, #0
	subs r1, #0x24
	ldrh r3, [r3, r1]
	adds r1, r2, #0
	adds r1, #8
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	subs r1, r1, #1
	lsls r1, r1, #2
	adds r3, r0, r1
	adds r1, r2, #0
	subs r1, #0x22
	ldrh r1, [r3, r1]
	adds r2, #0xc
	str r1, [r0, r2]
_02246BC2:
	movs r2, #0x83
	lsls r2, r2, #2
	ldr r1, [r0, r2]
	cmp r1, #0
	beq _02246BF0
	subs r1, r1, #1
	lsls r1, r1, #2
	adds r3, r0, r1
	adds r1, r2, #0
	subs r1, #0x28
	ldrh r3, [r3, r1]
	adds r1, r2, #0
	adds r1, #0xc
	str r3, [r0, r1]
	ldr r1, [r0, r2]
	subs r1, r1, #1
	lsls r1, r1, #2
	adds r3, r0, r1
	adds r1, r2, #0
	subs r1, #0x26
	ldrh r1, [r3, r1]
	adds r2, #0x10
	str r1, [r0, r2]
_02246BF0:
	pop {r3, r4}
	bx lr
	thumb_func_end ov62_02246B70

	thumb_func_start ov62_02246BF4
ov62_02246BF4: @ 0x02246BF4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r4, r2, #0
	movs r1, #1
	adds r3, r0, #0
	str r1, [r3, r2]
	movs r5, #0
	subs r4, #0xb4
	strh r5, [r3, r4]
	adds r4, r2, #0
	adds r4, #0x14
	ldr r5, [r3, r4]
	adds r4, r2, #0
	subs r4, #0xb2
	strh r5, [r3, r4]
	adds r4, r2, #0
	adds r4, #0x14
	ldr r5, [r3, r4]
	adds r4, r2, #0
	subs r4, #0xb0
	strh r5, [r3, r4]
	adds r4, r2, #0
	adds r4, #0x14
	ldr r5, [r3, r4]
	adds r4, r2, #0
	adds r4, #0x18
	ldr r3, [r3, r4]
	adds r4, r2, #0
	adds r5, r5, r3
	adds r6, r2, #0
	subs r4, #0xae
	adds r3, r0, #0
	strh r5, [r3, r4]
	adds r4, r2, #0
	adds r4, #0x14
	ldr r5, [r3, r4]
	adds r4, r2, #0
	adds r4, #0x18
	ldr r3, [r3, r4]
	adds r4, r2, #0
	adds r5, r5, r3
	subs r4, #0xac
	adds r3, r0, #0
	strh r5, [r3, r4]
	adds r4, r2, #0
	adds r5, r2, #0
	adds r4, #0x1c
	adds r5, #0x14
	ldr r4, [r3, r4]
	ldr r3, [r3, r5]
	adds r6, #0x18
	adds r5, r0, #0
	ldr r5, [r5, r6]
	subs r2, #0xaa
	adds r3, r3, r5
	adds r4, r4, r3
	adds r3, r0, #0
	str r0, [sp]
	strh r4, [r3, r2]
	bl ov62_02246B70
	movs r4, #0x81
	lsls r4, r4, #2
	adds r3, r4, #0
	ldr r1, [sp]
	movs r0, #0
	adds r3, #0xa8
_02246C7E:
	ldr r2, [sp]
	adds r0, r0, #1
	ldr r5, [r2, r4]
	ldr r2, [r1, r3]
	adds r1, r1, #4
	adds r5, r5, r2
	ldr r2, [sp]
	cmp r0, #3
	str r5, [r2, r4]
	blt _02246C7E
	ldr r4, _02246D5C @ =0x02249710
	add r3, sp, #8
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	movs r1, #0xab
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r2, #0
	cmp r0, #4
	beq _02246CB2
	movs r2, #1
_02246CB2:
	movs r0, #0xc
	muls r0, r2, r0
	add r3, sp, #8
	adds r0, r3, r0
	movs r2, #0x77
	ldr r5, [sp]
	movs r1, #0
	adds r4, r0, #0
	lsls r2, r2, #2
_02246CC4:
	ldr r3, [r4]
	adds r1, r1, #1
	strh r3, [r5, r2]
	adds r4, r4, #4
	adds r5, r5, #2
	cmp r1, #3
	blt _02246CC4
	subs r2, r1, #1
	lsls r2, r2, #2
	ldr r2, [r0, r2]
	ldr r0, [sp]
	lsls r1, r1, #1
	adds r1, r0, r1
	movs r0, #0x77
	lsls r0, r0, #2
	strh r2, [r1, r0]
	ldr r1, [sp]
	movs r0, #0
	movs r4, #0xab
	movs r5, #0x15
	adds r3, r0, #0
	adds r2, r1, #0
	lsls r4, r4, #2
	lsls r5, r5, #4
_02246CF4:
	ldr r6, [r1, r4]
	adds r3, r3, #1
	adds r0, r0, r6
	subs r6, r0, #1
	str r6, [r2, r5]
	adds r1, r1, #4
	adds r2, #0x1c
	cmp r3, #2
	blt _02246CF4
	ldr r0, [sp]
	movs r5, #0
	movs r7, #0xab
	mov ip, r5
	str r0, [sp, #4]
	adds r4, r0, #0
	lsls r7, r7, #2
_02246D14:
	movs r0, #0xab
	ldr r2, [sp, #4]
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	movs r1, #0
	cmp r0, #0
	ble _02246D40
	mov r0, ip
	lsls r3, r0, #2
	ldr r0, [sp]
	adds r2, r4, #0
	adds r3, r0, r3
	mov r0, ip
	adds r6, r0, #1
_02246D30:
	str r6, [r2, #4]
	ldr r0, [r3, r7]
	adds r1, r1, #1
	adds r2, #0x1c
	adds r4, #0x1c
	adds r5, r5, #1
	cmp r1, r0
	blt _02246D30
_02246D40:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	adds r0, r0, #4
	str r0, [sp, #4]
	mov r0, ip
	adds r0, r0, #1
	mov ip, r0
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r5, r0
	blt _02246D14
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02246D5C: .4byte 0x02249710
	thumb_func_end ov62_02246BF4

	thumb_func_start ov62_02246D60
ov62_02246D60: @ 0x02246D60
	movs r2, #0x7d
	lsls r2, r2, #2
	str r1, [r0, r2]
	movs r3, #0
	adds r1, r2, #4
	str r3, [r0, r1]
	adds r1, r2, #0
	adds r1, #8
	str r3, [r0, r1]
	adds r2, #0xc
	str r3, [r0, r2]
	bx lr
	thumb_func_end ov62_02246D60

	thumb_func_start ov62_02246D78
ov62_02246D78: @ 0x02246D78
	push {r4, lr}
	adds r4, r0, #0
	bl ov62_02246BF4
	adds r0, r4, #0
	bl ov62_02247220
	adds r0, r4, #0
	bl ov62_02247574
	adds r0, r4, #0
	bl ov62_02247B48
	adds r0, r4, #0
	bl ov62_02247754
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02247B88
	adds r0, r4, #0
	bl ov62_0224784C
	adds r0, r4, #0
	bl ov62_02247CE0
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02246D60
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov62_02246D78

	thumb_func_start ov62_02246DB8
ov62_02246DB8: @ 0x02246DB8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02024034
	adds r0, r4, #0
	bl ov62_02247694
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov62_02246DB8

	thumb_func_start ov62_02246DD0
ov62_02246DD0: @ 0x02246DD0
	push {r4, lr}
	movs r1, #0x7f
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0
	bne _02246DE4
	adds r0, r2, #1
	str r0, [r4, r1]
	b _02246DF2
_02246DE4:
	bl ov62_022474A8
	movs r0, #0x8d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0202404C
_02246DF2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02246DD0

	thumb_func_start ov62_02246DF8
ov62_02246DF8: @ 0x02246DF8
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x7f
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r2, [r5, r1]
	cmp r2, #0
	beq _02246E0E
	cmp r2, #1
	bne _02246E0C
	b _02246F74
_02246E0C:
	b _0224701C
_02246E0E:
	movs r1, #0
	adds r2, r1, #0
	bl ov62_02247968
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r6, #0
	cmp r0, #0
	ble _02246EB0
	ldr r7, _02247078 @ =0x02249974
	adds r4, r5, #0
_02246E26:
	ldrb r0, [r4, #0x18]
	cmp r0, #0
	beq _02246EA2
	movs r1, #0x14
	movs r2, #0x16
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	bl FUN_0200D5DC
	ldrb r0, [r4, #0x18]
	subs r0, r0, #1
	strb r0, [r4, #0x18]
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	blt _02246E70
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02246E70
	ldrb r0, [r4, #0x19]
	lsls r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldrb r0, [r4, #0x19]
	movs r1, #2
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl FUN_0200D6A4
_02246E70:
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	blt _02246EA2
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02246EA2
	ldrb r0, [r4, #0x19]
	ldr r1, _0224707C @ =0x02249958
	lsls r2, r0, #2
	ldr r1, [r1, r2]
	ldr r0, [r4, #0xc]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldrb r0, [r4, #0x19]
	movs r1, #2
	adds r0, r0, #1
	strb r0, [r4, #0x19]
	ldr r0, [r4, #0xc]
	bl FUN_0200D6A4
_02246EA2:
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r6, r6, #1
	adds r4, #0x1c
	cmp r6, r0
	blt _02246E26
_02246EB0:
	movs r7, #0x5a
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_02246EB8:
	ldrb r0, [r4, r7]
	cmp r0, #0
	beq _02246EE0
	movs r1, #0x59
	ldr r2, _02247080 @ =0x00000166
	movs r0, #0x57
	lsls r1, r1, #2
	lsls r0, r0, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, r0]
	bl FUN_0200D5DC
	movs r0, #0x5a
	lsls r0, r0, #2
	ldrb r0, [r4, r0]
	subs r1, r0, #1
	movs r0, #0x5a
	lsls r0, r0, #2
	strb r1, [r4, r0]
_02246EE0:
	adds r6, r6, #1
	adds r4, #0x1c
	cmp r6, #2
	blt _02246EB8
	ldrb r0, [r5, #0x18]
	cmp r0, #0
	bne _02246F68
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r6, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02246F26
	movs r0, #0x1c
	muls r0, r6, r0
	movs r7, #0x85
	adds r4, r5, r0
	lsls r7, r7, #2
_02246F06:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl ov62_02247B3C
	adds r1, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0200D364
	ldr r0, [r4, #0xc]
	bl FUN_0200D330
	ldr r0, [r5, r7]
	adds r6, r6, #1
	adds r4, #0x1c
	cmp r6, r0
	blt _02246F06
_02246F26:
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r6, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02246F5E
	movs r0, #0x1c
	muls r0, r6, r0
	movs r7, #0x87
	adds r4, r5, r0
	lsls r7, r7, #2
_02246F3E:
	ldr r0, [r4]
	ldr r1, [r4, #8]
	bl ov62_02247B3C
	adds r1, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0200D364
	ldr r0, [r4, #0xc]
	bl FUN_0200D330
	ldr r0, [r5, r7]
	adds r6, r6, #1
	adds r4, #0x1c
	cmp r6, r0
	blt _02246F3E
_02246F5E:
	movs r0, #0x7f
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
_02246F68:
	movs r0, #2
	lsls r0, r0, #8
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	b _02247072
_02246F74:
	adds r0, r1, #0
	adds r0, #0x14
	adds r1, #0x18
	ldr r6, [r5, r0]
	ldr r0, [r5, r1]
	cmp r6, r0
	bge _02246FBA
	movs r0, #0x1c
	muls r0, r6, r0
	ldr r7, _02247078 @ =0x02249974
	adds r4, r5, r0
_02246F8A:
	ldrb r0, [r4, #0x19]
	cmp r0, #6
	bne _02246F9A
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_0200D6A4
	b _02246FAC
_02246F9A:
	lsls r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
_02246FAC:
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r6, r6, #1
	adds r4, #0x1c
	cmp r6, r0
	blt _02246F8A
_02246FBA:
	movs r0, #0x86
	lsls r0, r0, #2
	ldr r6, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r6, r0
	bge _02247000
	movs r0, #0x1c
	muls r0, r6, r0
	ldr r7, _0224707C @ =0x02249958
	adds r4, r5, r0
_02246FD0:
	ldrb r0, [r4, #0x19]
	cmp r0, #6
	bne _02246FE0
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_0200D6A4
	b _02246FF2
_02246FE0:
	lsls r1, r0, #2
	ldr r1, [r7, r1]
	ldr r0, [r4, #0xc]
	adds r2, r1, #0
	bl FUN_0200D6E8
	ldrb r0, [r4, #0x19]
	adds r0, r0, #1
	strb r0, [r4, #0x19]
_02246FF2:
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r6, r6, #1
	adds r4, #0x1c
	cmp r6, r0
	blt _02246FD0
_02247000:
	movs r1, #2
	lsls r1, r1, #8
	ldr r0, [r5, r1]
	adds r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #6
	bne _02247072
	subs r0, r1, #4
	ldr r0, [r5, r0]
	adds r2, r0, #1
	subs r0, r1, #4
	str r2, [r5, r0]
	b _02247072
_0224701C:
	bl ov62_02247CE0
	movs r1, #0xa9
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _0224703E
	subs r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov62_02247518
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov62_02247998
	b _02247050
_0224703E:
	subs r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r5, #0
	bl ov62_02247540
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov62_02247998
_02247050:
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02247064
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl ov62_02247968
_02247064:
	adds r0, r5, #0
	bl ov62_02247504
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02246D60
_02247072:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247078: .4byte 0x02249974
_0224707C: .4byte 0x02249958
_02247080: .4byte 0x00000166
	thumb_func_end ov62_02246DF8

	thumb_func_start ov62_02247084
ov62_02247084: @ 0x02247084
	push {r3, r4, r5, lr}
	movs r1, #0x7d
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	lsls r2, r1, #2
	ldr r1, _022470A4 @ =0x02249700
	ldr r1, [r1, r2]
	blx r1
	adds r5, r0, #0
	bne _022470A0
	adds r0, r4, #0
	bl ov62_02247A70
_022470A0:
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_022470A4: .4byte 0x02249700
	thumb_func_end ov62_02247084

	thumb_func_start ov62_022470A8
ov62_022470A8: @ 0x022470A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #0x64
	movs r1, #0x66
	bl FUN_02023790
	movs r1, #0xb2
	str r0, [sp, #4]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [r7, r1]
	movs r6, #0
	adds r0, r1, #4
	str r6, [r7, r0]
	adds r0, r1, #0
	adds r0, #8
	subs r1, #0xc4
	str r6, [r7, r0]
	ldr r0, [r7, r1]
	cmp r0, #0
	ble _02247148
	movs r0, #0xb3
	lsls r0, r0, #2
	adds r4, r7, #0
	adds r5, r7, r0
_022470DC:
	ldr r0, [r4]
	cmp r0, #0
	bne _022470F4
	movs r0, #1
	str r0, [r4]
	ldr r1, [r4, #8]
	bl ov62_02247B3C
	adds r1, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0200D364
_022470F4:
	ldr r0, [r4]
	subs r0, r0, #1
	str r0, [sp, #8]
	cmp r6, #0
	beq _0224710E
	ldr r0, [r5]
	ldr r1, [r5, #4]
	movs r2, #0xa
	movs r3, #0
	blx FUN_020E1F1C
	str r0, [r5]
	str r1, [r5, #4]
_0224710E:
	ldr r2, [r5]
	ldr r1, [sp, #8]
	ldr r0, [r5, #4]
	adds r2, r2, r1
	ldr r1, _0224715C @ =0x00000000
	str r2, [r5]
	adcs r0, r1
	str r0, [r5, #4]
	movs r0, #1
	str r0, [sp]
	movs r2, #1
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	adds r3, r2, #0
	bl FUN_020238A0
	movs r0, #0xb
	lsls r0, r0, #6
	ldr r0, [r7, r0]
	ldr r1, [sp, #4]
	bl FUN_02023E4C
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	adds r6, r6, #1
	adds r4, #0x1c
	cmp r6, r0
	blt _022470DC
_02247148:
	ldr r0, [sp, #4]
	bl FUN_020237BC
	adds r0, r7, #0
	movs r1, #3
	bl ov62_02246D60
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224715C: .4byte 0x00000000
	thumb_func_end ov62_022470A8

	thumb_func_start ov62_02247160
ov62_02247160: @ 0x02247160
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	cmp r1, #0
	bne _0224719C
	subs r1, r0, #4
	ldr r1, [r5, r1]
	subs r2, r1, #1
	adds r1, r0, #0
	subs r1, #0x80
	str r2, [r5, r1]
	adds r1, r0, #0
	subs r1, #0x80
	ldr r2, [r5, r1]
	movs r1, #0x1c
	muls r1, r2, r1
	adds r1, r5, r1
	ldr r3, [r1, #4]
	adds r1, r0, #0
	movs r2, #1
	adds r1, #0x94
	str r2, [r5, r1]
	adds r1, r0, #0
	adds r1, #0x98
	str r3, [r5, r1]
	adds r0, #0x9c
	str r2, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224719C:
	subs r0, #0x80
	ldr r6, [r5, r0]
	movs r0, #0x1c
	adds r4, r6, #0
	muls r4, r0, r4
	movs r0, #0
	str r0, [r5, r4]
	adds r1, r5, r4
	ldr r0, [r5, r4]
	ldr r1, [r1, #8]
	bl ov62_02247B3C
	adds r1, r0, #0
	adds r0, r5, r4
	ldr r0, [r0, #0xc]
	bl FUN_0200D364
	adds r0, r5, r4
	ldr r7, [r0, #4]
	cmp r6, #0
	ble _0224720C
	subs r1, r6, #1
	movs r0, #0x1c
	adds r4, r1, #0
	muls r4, r0, r4
	adds r1, r5, r4
	ldr r0, [r5, r4]
	ldr r1, [r1, #8]
	bl ov62_02247B3C
	adds r1, r0, #0
	adds r0, r5, r4
	ldr r0, [r0, #0xc]
	bl FUN_0200D364
	adds r0, r5, r4
	ldr r3, [r0, #4]
	cmp r7, r3
	beq _022471FC
	movs r1, #0xa7
	lsls r1, r1, #2
	movs r2, #1
	str r2, [r5, r1]
	adds r0, r1, #4
	str r3, [r5, r0]
	adds r1, #8
	str r2, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
_022471FC:
	movs r0, #0xa7
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r5, r0]
	subs r1, r6, #1
	adds r0, r0, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0224720C:
	movs r0, #0xb2
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	movs r1, #3
	bl ov62_02246D60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov62_02247160

	thumb_func_start ov62_02247220
ov62_02247220: @ 0x02247220
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	movs r1, #0x8e
	adds r4, r0, #0
	lsls r1, r1, #2
	movs r0, #0
	adds r1, r4, r1
	adds r2, r4, #0
_02247230:
	adds r0, r0, #1
	str r1, [r2, #0x10]
	adds r1, r1, #4
	adds r2, #0x1c
	cmp r0, #0xc
	blt _02247230
	ldr r5, _022472F8 @ =0x02249728
	add r3, sp, #4
	movs r2, #0x30
_02247242:
	ldrh r1, [r5]
	adds r5, r5, #2
	strh r1, [r3]
	adds r3, r3, #2
	subs r2, r2, #1
	bne _02247242
	cmp r0, #0x18
	bge _022472B0
	add r2, sp, #4
	lsls r1, r0, #3
	adds r1, r2, r1
	lsls r2, r0, #2
	movs r7, #0x5b
	ldr r3, _022472FC @ =0x0000023B
	adds r2, r4, r2
	mvns r7, r7
_02247262:
	movs r5, #0x5d
	movs r6, #0x59
	mvns r5, r5
	mvns r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	adds r0, r0, #1
	subs r6, r5, r6
	movs r5, #0x8e
	lsls r5, r5, #2
	strb r6, [r2, r5]
	movs r5, #0x5f
	movs r6, #0x5b
	mvns r5, r5
	mvns r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	subs r6, r5, r6
	ldr r5, _02247300 @ =0x0000023A
	strb r6, [r2, r5]
	movs r5, #0x5d
	movs r6, #0x59
	mvns r5, r5
	mvns r6, r6
	ldrsh r5, [r1, r5]
	ldrsh r6, [r1, r6]
	adds r6, r5, r6
	ldr r5, _02247304 @ =0x00000239
	strb r6, [r2, r5]
	movs r5, #0x5f
	mvns r5, r5
	ldrsh r6, [r1, r5]
	ldrsh r5, [r1, r7]
	adds r1, #8
	adds r5, r6, r5
	strb r5, [r2, r3]
	adds r2, r2, #4
	cmp r0, #0x18
	blt _02247262
_022472B0:
	movs r0, #0x29
	lsls r0, r0, #4
	movs r3, #0x98
	strb r3, [r4, r0]
	movs r2, #0x20
	adds r1, r0, #2
	strb r2, [r4, r1]
	movs r2, #0xb8
	adds r1, r0, #1
	strb r2, [r4, r1]
	movs r1, #0x80
	adds r5, r0, #3
	strb r1, [r4, r5]
	adds r5, r0, #4
	strb r3, [r4, r5]
	adds r3, r0, #6
	strb r1, [r4, r3]
	adds r1, r0, #5
	strb r2, [r4, r1]
	adds r1, r0, #7
	movs r2, #0xe0
	strb r2, [r4, r1]
	movs r1, #0x66
	subs r0, #0x58
	str r1, [sp]
	ldr r2, _02247308 @ =ov62_0224730C
	adds r0, r4, r0
	movs r1, #0x18
	adds r3, r4, #0
	bl FUN_02023FCC
	movs r1, #0x8d
	lsls r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022472F8: .4byte 0x02249728
_022472FC: .4byte 0x0000023B
_02247300: .4byte 0x0000023A
_02247304: .4byte 0x00000239
_02247308: .4byte ov62_0224730C
	thumb_func_end ov62_02247220

	thumb_func_start ov62_0224730C
ov62_0224730C: @ 0x0224730C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r2, #0
	movs r2, #0x7d
	lsls r2, r2, #2
	adds r5, r0, #0
	ldr r0, [r4, r2]
	cmp r0, #1
	beq _0224731E
	b _0224749C
_0224731E:
	adds r0, r2, #0
	adds r0, #0xa4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _0224732E
	movs r0, #1
	adds r2, #0xa4
	str r0, [r4, r2]
_0224732E:
	cmp r1, #0
	beq _02247334
	b _0224749C
_02247334:
	cmp r5, #0xb
	bhi _02247368
	movs r0, #0x1c
	muls r0, r5, r0
	adds r2, r4, r0
	ldr r0, [r2, #8]
	cmp r0, #1
	bne _02247352
	movs r0, #0xa7
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r0, #4
	str r5, [r4, r0]
	b _02247360
_02247352:
	movs r0, #0xa7
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r1, [r2, #4]
	adds r0, r0, #4
	str r1, [r4, r0]
_02247360:
	ldr r0, _022474A0 @ =0x00000563
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
_02247368:
	cmp r5, #0x16
	bne _0224737C
	movs r0, #0x6e
	movs r1, #0
	lsls r0, r0, #2
	strh r1, [r4, r0]
	movs r1, #2
	adds r0, r0, #2
	strh r1, [r4, r0]
	b _022473AE
_0224737C:
	cmp r5, #0x17
	bne _02247390
	movs r0, #0x6e
	movs r1, #3
	lsls r0, r0, #2
	strh r1, [r4, r0]
	movs r1, #2
	adds r0, r0, #2
	strh r1, [r4, r0]
	b _022473AE
_02247390:
	adds r0, r5, #0
	subs r0, #0xc
	movs r1, #5
	blx FUN_020E2178
	movs r0, #0x6e
	lsls r0, r0, #2
	strh r1, [r4, r0]
	adds r0, r5, #0
	subs r0, #0xc
	movs r1, #5
	blx FUN_020E2178
	ldr r1, _022474A4 @ =0x000001BA
	strh r0, [r4, r1]
_022473AE:
	cmp r5, #0xc
	blo _02247480
	cmp r5, #0x15
	bhi _02247480
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224749C
	ldr r0, _022474A0 @ =0x00000563
	bl FUN_02005748
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r7, [r4, r0]
	movs r0, #0x1c
	adds r6, r7, #0
	muls r6, r0, r6
	adds r0, r5, #0
	subs r0, #0xb
	str r0, [r4, r6]
	adds r1, r4, r6
	ldr r0, [r4, r6]
	ldr r1, [r1, #8]
	bl ov62_02247B3C
	adds r1, r0, #0
	adds r0, r4, r6
	ldr r0, [r0, #0xc]
	bl FUN_0200D364
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov62_02247968
	subs r5, #0xc
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_022479D4
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov62_02247968
	adds r0, r4, #0
	movs r1, #2
	movs r2, #1
	bl ov62_02247968
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov62_02247A20
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #3
	bl FUN_0200D364
	adds r0, r4, r6
	ldr r2, [r0, #4]
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r3, [r4, r0]
	adds r1, r7, #1
	cmp r1, r3
	bne _02247450
	adds r1, r0, #0
	movs r2, #1
	adds r1, #0x98
	str r2, [r4, r1]
	adds r1, r0, #0
	movs r2, #0
	adds r1, #0x9c
	str r2, [r4, r1]
	adds r0, #0xa0
	str r2, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02247450:
	movs r3, #0x1c
	muls r3, r1, r3
	adds r3, r4, r3
	ldr r3, [r3, #4]
	cmp r2, r3
	beq _02247472
	adds r1, r0, #0
	movs r2, #1
	adds r1, #0x98
	str r2, [r4, r1]
	adds r1, r0, #0
	adds r1, #0x9c
	str r3, [r4, r1]
	movs r1, #0
	adds r0, #0xa0
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02247472:
	adds r2, r0, #0
	movs r3, #2
	adds r2, #0x98
	str r3, [r4, r2]
	adds r0, #0x9c
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02247480:
	cmp r5, #0x16
	ldr r0, _022474A0 @ =0x00000563
	bne _02247492
	bl FUN_02005748
	adds r0, r4, #0
	bl ov62_02247160
	pop {r3, r4, r5, r6, r7, pc}
_02247492:
	bl FUN_02005748
	adds r0, r4, #0
	bl ov62_022470A8
_0224749C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022474A0: .4byte 0x00000563
_022474A4: .4byte 0x000001BA
	thumb_func_end ov62_0224730C

	thumb_func_start ov62_022474A8
ov62_022474A8: @ 0x022474A8
	push {r4, lr}
	movs r1, #0xa7
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #2
	bgt _022474C6
	cmp r2, #0
	blt _02247500
	beq _02247500
	cmp r2, #1
	beq _022474CA
	cmp r2, #2
	beq _022474F2
	pop {r4, pc}
_022474C6:
	cmp r2, #0xff
	pop {r4, pc}
_022474CA:
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov62_02246B70
	adds r0, r4, #0
	bl ov62_02247B48
	adds r0, r4, #0
	movs r1, #1
	bl ov62_02247B88
	adds r0, r4, #0
	movs r1, #2
	bl ov62_02246D60
	movs r0, #0xa7
	movs r1, #0xff
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_022474F2:
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl ov62_02247998
	adds r0, r4, #0
	bl ov62_02247504
_02247500:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_022474A8

	thumb_func_start ov62_02247504
ov62_02247504: @ 0x02247504
	movs r2, #0xa7
	lsls r2, r2, #2
	movs r3, #0
	str r3, [r0, r2]
	adds r1, r2, #4
	str r3, [r0, r1]
	adds r2, #8
	str r3, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end ov62_02247504

	thumb_func_start ov62_02247518
ov62_02247518: @ 0x02247518
	push {r3, r4}
	movs r2, #0x81
	lsls r2, r2, #2
	ldr r4, [r0, r2]
	movs r3, #0
	cmp r4, #0
	ble _0224753A
_02247526:
	ldr r2, [r0, #4]
	cmp r1, r2
	bne _02247532
	adds r0, r3, #0
	pop {r3, r4}
	bx lr
_02247532:
	adds r3, r3, #1
	adds r0, #0x1c
	cmp r3, r4
	blt _02247526
_0224753A:
	movs r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov62_02247518

	thumb_func_start ov62_02247540
ov62_02247540: @ 0x02247540
	push {r3, r4, r5, r6}
	movs r2, #0x81
	lsls r2, r2, #2
	ldr r6, [r0, r2]
	movs r5, #0
	adds r4, r5, #0
	cmp r6, #0
	ble _0224756E
	movs r2, #1
_02247552:
	ldr r3, [r0, #4]
	cmp r1, r3
	bne _0224755C
	adds r5, r2, #0
	b _02247566
_0224755C:
	cmp r5, #1
	bne _02247566
	subs r0, r4, #1
	pop {r3, r4, r5, r6}
	bx lr
_02247566:
	adds r4, r4, #1
	adds r0, #0x1c
	cmp r4, r6
	blt _02247552
_0224756E:
	subs r0, r6, #1
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov62_02247540

	thumb_func_start ov62_02247574
ov62_02247574: @ 0x02247574
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	movs r2, #0x89
	lsls r2, r2, #2
	adds r1, r2, #4
	ldr r5, [r0, r1]
	adds r1, r2, #0
	adds r1, #0xc
	ldr r1, [r0, r1]
	ldr r6, [r0, r2]
	str r1, [sp, #0x18]
	adds r1, r2, #0
	adds r1, #8
	ldr r7, [r0, r1]
	subs r1, r2, #4
	ldr r4, [r0, r1]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x36
	adds r2, r7, #0
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x2b
	adds r2, r7, #0
	movs r3, #3
	bl FUN_0200710C
	str r4, [sp]
	movs r0, #0x2c
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0xfa
	lsls r0, r0, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	movs r1, #2
	adds r2, r6, #0
	adds r3, r5, #0
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xfa
	lsls r0, r0, #2
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x28
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #0xfa
	lsls r0, r0, #2
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x29
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	movs r0, #0xfa
	lsls r0, r0, #2
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0x2a
	bl FUN_0200CE54
	str r4, [sp]
	movs r0, #0x58
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	ldr r0, _02247690 @ =0x000003E9
	movs r1, #2
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r2, r6, #0
	adds r3, r5, #0
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02247690 @ =0x000003E9
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x57
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02247690 @ =0x000003E9
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x55
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02247690 @ =0x000003E9
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	movs r3, #0x56
	bl FUN_0200CE54
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02247690: .4byte 0x000003E9
	thumb_func_end ov62_02247574

	thumb_func_start ov62_02247694
ov62_02247694: @ 0x02247694
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r4, #0
	cmp r0, #0
	ble _022476BA
	movs r7, #0x81
	adds r5, r6, #0
	lsls r7, r7, #2
_022476AA:
	ldr r0, [r5, #0xc]
	bl FUN_0200D0F4
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, r0
	blt _022476AA
_022476BA:
	movs r7, #0x57
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #2
_022476C2:
	ldr r0, [r4, r7]
	bl FUN_0200D0F4
	adds r5, r5, #1
	adds r4, #0x1c
	cmp r5, #2
	blt _022476C2
	movs r7, #0x65
	movs r5, #0
	adds r4, r6, #0
	lsls r7, r7, #2
_022476D8:
	ldr r0, [r4, r7]
	bl FUN_0200D0F4
	adds r5, r5, #1
	adds r4, #0x1c
	cmp r5, #3
	blt _022476D8
	movs r0, #0x8a
	lsls r0, r0, #2
	movs r1, #0xfa
	ldr r0, [r6, r0]
	lsls r1, r1, #2
	bl FUN_0200D070
	movs r0, #0x8a
	lsls r0, r0, #2
	movs r1, #0xfa
	ldr r0, [r6, r0]
	lsls r1, r1, #2
	bl FUN_0200D080
	movs r0, #0x8a
	lsls r0, r0, #2
	movs r1, #0xfa
	ldr r0, [r6, r0]
	lsls r1, r1, #2
	bl FUN_0200D090
	movs r0, #0x8a
	lsls r0, r0, #2
	movs r1, #0xfa
	ldr r0, [r6, r0]
	lsls r1, r1, #2
	bl FUN_0200D0A0
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02247750 @ =0x000003E9
	bl FUN_0200D070
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02247750 @ =0x000003E9
	bl FUN_0200D080
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02247750 @ =0x000003E9
	bl FUN_0200D090
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, _02247750 @ =0x000003E9
	bl FUN_0200D0A0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02247750: .4byte 0x000003E9
	thumb_func_end ov62_02247694

	thumb_func_start ov62_02247754
ov62_02247754: @ 0x02247754
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r1, [sp]
	adds r2, r0, #4
	ldr r1, [r1, r0]
	subs r0, #0x20
	str r1, [sp, #8]
	ldr r1, [sp]
	ldr r7, [sp, #0xc]
	ldr r1, [r1, r2]
	add r2, sp, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0xc]
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	movs r1, #0xa
	str r1, [sp, #0x18]
	ldr r1, [sp, #0xc]
	movs r2, #1
	str r1, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x1c]
	movs r1, #0xfa
	lsls r1, r1, #2
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	subs r1, r2, #2
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	ldr r1, [sp]
	str r2, [sp, #0x20]
	ldr r0, [r1, r0]
	adds r0, r0, #2
	cmp r0, #0
	ble _02247846
	adds r4, r1, #0
	movs r6, #0x4c
	adds r5, r1, #0
_022477B2:
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	adds r0, r0, r1
	adds r0, r0, #1
	cmp r7, r0
	add r2, sp, #0x10
	bne _02247800
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl FUN_0200CE6C
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	lsls r1, r6, #0x10
	ldr r0, [r4, r0]
	asrs r1, r1, #0x10
	movs r2, #0x18
	bl FUN_0200D4C4
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x16
	bl FUN_0200D364
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D330
	ldr r0, [sp, #0xc]
	adds r4, #0x1c
	adds r0, r0, #1
	str r0, [sp, #0xc]
	b _02247834
_02247800:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl FUN_0200CE6C
	lsls r1, r6, #0x10
	str r0, [r5, #0xc]
	asrs r1, r1, #0x10
	movs r2, #0x18
	bl FUN_0200D4C4
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov62_02247B3C
	adds r1, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_0200D364
	ldr r0, [r5, #0xc]
	movs r1, #0
	bl FUN_0200D6A4
	ldr r0, [r5, #0xc]
	bl FUN_0200D330
	adds r5, #0x1c
_02247834:
	movs r0, #0x81
	ldr r1, [sp]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r7, r7, #1
	adds r0, r0, #2
	adds r6, #8
	cmp r7, r0
	blt _022477B2
_02247846:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov62_02247754

	thumb_func_start ov62_0224784C
ov62_0224784C: @ 0x0224784C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x34
	adds r5, r0, #0
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r6, [r5, r0]
	adds r0, r0, #4
	ldr r4, [r5, r0]
	movs r2, #0
	add r0, sp, #0
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r0, _02247964 @ =0x000003E9
	movs r1, #1
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	subs r0, r1, #2
	str r1, [sp, #0x10]
	str r2, [sp, #8]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r2, [sp, #0xc]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r6, #0
	adds r1, r4, #0
	add r2, sp, #0
	bl FUN_0200CE6C
	movs r1, #0x65
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r6, #0
	adds r1, r4, #0
	add r2, sp, #0
	bl FUN_0200CE6C
	movs r1, #0x1b
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r0, r6, #0
	adds r1, r4, #0
	add r2, sp, #0
	bl FUN_0200CE6C
	movs r1, #0x73
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02247998
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D330
	movs r2, #0x6e
	lsls r2, r2, #2
	movs r1, #0
	strh r1, [r5, r2]
	adds r0, r2, #2
	strh r1, [r5, r0]
	movs r0, #1
	subs r2, #0x14
	str r0, [r5, r2]
	adds r0, r5, #0
	bl ov62_022479D4
	movs r1, #0x1b
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	subs r1, #0xc
	ldr r1, [r5, r1]
	bl FUN_0200D364
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0200D330
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0200D810
	movs r2, #0x75
	lsls r2, r2, #2
	movs r1, #0
	strh r1, [r5, r2]
	adds r0, r2, #2
	strh r1, [r5, r0]
	movs r0, #1
	subs r2, #0x14
	str r0, [r5, r2]
	adds r0, r5, #0
	bl ov62_022479D4
	movs r1, #0x73
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	subs r1, #0xc
	ldr r1, [r5, r1]
	bl FUN_0200D364
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D330
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_0200D810
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl ov62_02247968
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl ov62_02247968
	add sp, #0x34
	pop {r3, r4, r5, r6, pc}
	nop
_02247964: .4byte 0x000003E9
	thumb_func_end ov62_0224784C

	thumb_func_start ov62_02247968
ov62_02247968: @ 0x02247968
	push {r3, lr}
	cmp r2, #1
	bne _02247982
	movs r2, #0x1c
	muls r2, r1, r2
	adds r1, r0, r2
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_0200D3F4
	pop {r3, pc}
_02247982:
	movs r2, #0x1c
	muls r2, r1, r2
	adds r1, r0, r2
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_0200D3F4
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov62_02247968

	thumb_func_start ov62_02247998
ov62_02247998: @ 0x02247998
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x1c
	muls r0, r1, r0
	adds r0, r4, r0
	movs r2, #0x62
	ldr r0, [r0, #0xc]
	lsls r2, r2, #2
	str r1, [r4, r2]
	add r1, sp, #0
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	movs r0, #0x65
	lsls r0, r0, #2
	add r3, sp, #0
	movs r2, #0
	ldrsh r2, [r3, r2]
	movs r1, #2
	ldrsh r1, [r3, r1]
	adds r2, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov62_02247998

	thumb_func_start ov62_022479D4
ov62_022479D4: @ 0x022479D4
	push {r4, lr}
	adds r1, #0xc
	movs r2, #0x1b
	adds r3, r0, #0
	lsls r2, r2, #4
	lsls r1, r1, #2
	ldr r0, [r3, r2]
	adds r3, r3, r1
	adds r1, r2, #0
	adds r1, #0x8a
	ldrb r4, [r3, r1]
	adds r1, r2, #0
	adds r1, #0x8b
	ldrb r1, [r3, r1]
	adds r4, r4, r1
	lsrs r1, r4, #0x1f
	adds r1, r4, r1
	adds r4, r2, #0
	adds r4, #0x88
	adds r2, #0x89
	lsls r1, r1, #0xf
	asrs r1, r1, #0x10
	lsls r1, r1, #0x10
	ldrb r4, [r3, r4]
	ldrb r2, [r3, r2]
	asrs r1, r1, #0x10
	adds r3, r4, r2
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	lsls r2, r2, #0xf
	asrs r2, r2, #0x10
	subs r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_022479D4

	thumb_func_start ov62_02247A20
ov62_02247A20: @ 0x02247A20
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x1c
	muls r0, r2, r0
	adds r1, #0xc
	movs r2, #0x65
	lsls r1, r1, #2
	adds r0, r3, r0
	lsls r2, r2, #2
	adds r3, r3, r1
	adds r1, r2, #0
	adds r1, #0xa6
	ldrb r4, [r3, r1]
	adds r1, r2, #0
	adds r1, #0xa7
	ldrb r1, [r3, r1]
	ldr r0, [r0, r2]
	adds r4, r4, r1
	lsrs r1, r4, #0x1f
	adds r1, r4, r1
	adds r4, r2, #0
	adds r4, #0xa4
	adds r2, #0xa5
	lsls r1, r1, #0xf
	asrs r1, r1, #0x10
	lsls r1, r1, #0x10
	ldrb r4, [r3, r4]
	ldrb r2, [r3, r2]
	asrs r1, r1, #0x10
	adds r3, r4, r2
	lsrs r2, r3, #0x1f
	adds r2, r3, r2
	lsls r2, r2, #0xf
	asrs r2, r2, #0x10
	subs r2, #8
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	pop {r4, pc}
	thumb_func_end ov62_02247A20

	thumb_func_start ov62_02247A70
ov62_02247A70: @ 0x02247A70
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D330
	movs r0, #0x1b
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0200D330
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D330
	adds r4, r5, #0
	movs r7, #0x65
	movs r6, #1
	adds r4, #0x1c
	lsls r7, r7, #2
_02247A9C:
	ldr r0, [r4, r7]
	bl FUN_0200D37C
	cmp r0, #3
	bne _02247AF0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D3B8
	cmp r0, #0
	bne _02247B32
	movs r0, #0x65
	movs r1, #0x62
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl FUN_0200D364
	movs r0, #0xa6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02247ADA
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl ov62_02247968
	b _02247AE4
_02247ADA:
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_02247968
_02247AE4:
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl ov62_02247968
	b _02247B32
_02247AF0:
	movs r1, #0x62
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	cmp r0, r1
	beq _02247B04
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D364
_02247B04:
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D37C
	cmp r0, #3
	beq _02247B32
	movs r0, #0xa6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02247B28
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl ov62_02247968
	b _02247B32
_02247B28:
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_02247968
_02247B32:
	adds r6, r6, #1
	adds r4, #0x1c
	cmp r6, #3
	blt _02247A9C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_02247A70

	thumb_func_start ov62_02247B3C
ov62_02247B3C: @ 0x02247B3C
	movs r2, #0
	cmp r1, #0
	bne _02247B44
	movs r2, #0xb
_02247B44:
	adds r0, r2, r0
	bx lr
	thumb_func_end ov62_02247B3C

	thumb_func_start ov62_02247B48
ov62_02247B48: @ 0x02247B48
	push {r4, r5, r6, r7}
	movs r1, #0x81
	lsls r1, r1, #2
	ldr r1, [r0, r1]
	movs r3, #0
	cmp r1, #0
	ble _02247B82
	movs r6, #0x85
	lsls r6, r6, #2
	adds r4, r0, #0
	adds r1, r3, #0
	movs r2, #1
	subs r7, r6, #4
_02247B62:
	ldr r5, [r0, r7]
	cmp r3, r5
	blt _02247B72
	ldr r5, [r0, r6]
	cmp r3, r5
	bge _02247B72
	str r2, [r4, #8]
	b _02247B74
_02247B72:
	str r1, [r4, #8]
_02247B74:
	movs r5, #0x81
	lsls r5, r5, #2
	ldr r5, [r0, r5]
	adds r3, r3, #1
	adds r4, #0x1c
	cmp r3, r5
	blt _02247B62
_02247B82:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
	thumb_func_end ov62_02247B48

	thumb_func_start ov62_02247B88
ov62_02247B88: @ 0x02247B88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp, #4]
	movs r1, #0x82
	lsls r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	movs r4, #0
	lsls r2, r0, #1
	ldr r0, [sp]
	str r4, [sp, #8]
	adds r2, r0, r2
	adds r0, r1, #0
	subs r0, #0x2c
	ldrsh r5, [r2, r0]
	ldr r0, [sp]
	subs r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	bgt _02247BB2
	b _02247CDA
_02247BB2:
	ldr r7, [sp]
	adds r6, r7, #0
_02247BB6:
	movs r0, #0x21
	ldr r1, [sp]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	cmp r4, r0
	blt _02247BE2
	adds r2, r1, #0
	movs r1, #0x85
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	cmp r4, r1
	bge _02247BE2
	cmp r4, r0
	bne _02247BDA
	adds r5, #0x14
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	b _02247BF4
_02247BDA:
	adds r5, #0x20
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	b _02247BF4
_02247BE2:
	cmp r4, #0
	bne _02247BEE
	adds r5, #0x14
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	b _02247BF4
_02247BEE:
	adds r5, #8
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
_02247BF4:
	add r1, sp, #0xc
	ldr r0, [r7, #0xc]
	adds r1, #2
	add r2, sp, #0xc
	bl FUN_0200D550
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02247C16
	add r3, sp, #0xc
	movs r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r7, #0xc]
	adds r1, r5, #0
	bl FUN_0200D4C4
	b _02247C32
_02247C16:
	add r1, sp, #0xc
	movs r0, #2
	ldrsh r0, [r1, r0]
	subs r1, r5, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r0, r0, #1
	strh r0, [r7, #0x14]
	movs r0, #0
	strh r0, [r7, #0x16]
	movs r0, #2
	strb r0, [r7, #0x18]
	movs r0, #0
	strb r0, [r7, #0x19]
_02247C32:
	movs r0, #0x15
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	cmp r4, r0
	bne _02247CC8
	ldr r0, [sp, #8]
	cmp r0, #2
	beq _02247CC8
	movs r0, #0x57
	lsls r0, r0, #2
	add r1, sp, #0xc
	ldr r0, [r6, r0]
	adds r1, #2
	add r2, sp, #0xc
	bl FUN_0200D550
	ldr r1, [sp]
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r2, r1, #0
	movs r1, #0x21
	lsls r1, r1, #4
	ldr r1, [r2, r1]
	cmp r1, r0
	bne _02247C6E
	adds r5, #8
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	b _02247C84
_02247C6E:
	cmp r4, r1
	ble _02247C7E
	cmp r4, r0
	bge _02247C7E
	adds r5, #0x14
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
	b _02247C84
_02247C7E:
	adds r5, #8
	lsls r0, r5, #0x10
	asrs r5, r0, #0x10
_02247C84:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _02247C9E
	movs r0, #0x57
	lsls r0, r0, #2
	add r3, sp, #0xc
	movs r2, #0
	ldrsh r2, [r3, r2]
	ldr r0, [r6, r0]
	adds r1, r5, #0
	bl FUN_0200D4C4
	b _02247CC0
_02247C9E:
	add r1, sp, #0xc
	movs r0, #2
	ldrsh r0, [r1, r0]
	subs r1, r5, r0
	lsrs r0, r1, #0x1f
	adds r0, r1, r0
	asrs r1, r0, #1
	movs r0, #0x59
	lsls r0, r0, #2
	strh r1, [r6, r0]
	movs r1, #0
	adds r0, r0, #2
	strh r1, [r6, r0]
	movs r0, #0x5a
	movs r1, #2
	lsls r0, r0, #2
	strb r1, [r6, r0]
_02247CC0:
	ldr r0, [sp, #8]
	adds r6, #0x1c
	adds r0, r0, #1
	str r0, [sp, #8]
_02247CC8:
	movs r0, #0x81
	ldr r1, [sp]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r4, r4, #1
	adds r7, #0x1c
	cmp r4, r0
	bge _02247CDA
	b _02247BB6
_02247CDA:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov62_02247B88

	thumb_func_start ov62_02247CE0
ov62_02247CE0: @ 0x02247CE0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	movs r4, #0
	cmp r0, #0
	ble _02247D70
	adds r5, r6, #0
_02247CF4:
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	cmp r4, r0
	blt _02247D10
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	bge _02247D10
	movs r0, #0x10
	str r0, [sp]
	adds r7, r0, #0
	b _02247D16
_02247D10:
	movs r0, #4
	str r0, [sp]
	movs r7, #8
_02247D16:
	add r2, sp, #4
	ldr r0, [r5, #0xc]
	add r1, sp, #4
	adds r2, #2
	bl FUN_0200D550
	add r1, sp, #4
	movs r0, #2
	ldrsh r0, [r1, r0]
	subs r1, r0, r7
	ldr r0, [r5, #0x10]
	strb r1, [r0]
	add r1, sp, #4
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	subs r1, r1, r0
	ldr r0, [r5, #0x10]
	strb r1, [r0, #2]
	add r1, sp, #4
	movs r0, #2
	ldrsh r0, [r1, r0]
	adds r1, r0, r7
	ldr r0, [r5, #0x10]
	strb r1, [r0, #1]
	add r1, sp, #4
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [sp]
	adds r1, r1, r0
	ldr r0, [r5, #0x10]
	cmp r4, #0
	strb r1, [r0, #3]
	bne _02247D62
	ldr r1, [r5, #0x10]
	ldrb r0, [r1, #2]
	subs r0, r0, #4
	strb r0, [r1, #2]
_02247D62:
	movs r0, #0x81
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, r0
	blt _02247CF4
_02247D70:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov62_02247CE0

	thumb_func_start ov62_02247D74
ov62_02247D74: @ 0x02247D74
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r5, _02247DB0 @ =0x000008A4
	adds r2, r1, #0
	adds r4, r0, #0
	movs r1, #2
	bl ov62_022302A8
	adds r0, r4, r5
	bl FUN_0201A7A0
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1e
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x4b
	lsls r0, r0, #2
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	adds r1, r4, r5
	movs r2, #2
	movs r3, #1
	bl FUN_0201A7E8
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_02247DB0: .4byte 0x000008A4
	thumb_func_end ov62_02247D74

	thumb_func_start ov62_02247DB4
ov62_02247DB4: @ 0x02247DB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02247DD4 @ =0x000008A4
	adds r0, r4, r0
	bl FUN_0201ACF4
	ldr r0, _02247DD4 @ =0x000008A4
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	pop {r4, pc}
	nop
_02247DD4: .4byte 0x000008A4
	thumb_func_end ov62_02247DB4

	thumb_func_start ov62_02247DD8
ov62_02247DD8: @ 0x02247DD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r3, _02247E90 @ =0x0000011A
	adds r5, r0, #0
	adds r0, r1, #0
	str r1, [sp, #0x10]
	cmp r0, r3
	bne _02247E52
	lsls r0, r2, #2
	adds r1, r5, r0
	ldr r0, _02247E94 @ =0x000008A4
	subs r0, #0x18
	ldr r7, [r1, r0]
	movs r0, #0x66
	bl ov62_02231690
	adds r6, r0, #0
	movs r0, #0xff
	movs r1, #0x66
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r7, #0
	movs r1, #0x66
	bl FUN_02030B94
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	adds r0, r5, #0
	bl ov62_022349A8
	ldr r0, [r5, #0x48]
	ldr r1, [sp, #0x10]
	bl FUN_0200B1EC
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	movs r1, #0
	str r0, [sp, #4]
	ldr r2, [sp, #0x14]
	adds r0, r6, #0
	adds r3, r1, #0
	bl FUN_0200B48C
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x14]
	bl FUN_020237BC
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B3F0
	b _02247E5A
_02247E52:
	ldr r0, [r5, #0x48]
	bl FUN_0200B1EC
	adds r4, r0, #0
_02247E5A:
	ldr r0, _02247E94 @ =0x000008A4
	movs r1, #0xcc
	adds r0, r5, r0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02247E98 @ =0x000F0D0C
	adds r2, r4, #0
	str r0, [sp, #8]
	ldr r0, _02247E94 @ =0x000008A4
	adds r3, r1, #0
	adds r0, r5, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, _02247E94 @ =0x000008A4
	adds r0, r5, r0
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02247E90: .4byte 0x0000011A
_02247E94: .4byte 0x000008A4
_02247E98: .4byte 0x000F0D0C
	thumb_func_end ov62_02247DD8

	thumb_func_start ov62_02247E9C
ov62_02247E9C: @ 0x02247E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0x86
	lsls r0, r0, #4
	ldr r4, [r5, r0]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r6, #0
	movs r3, #4
	bl FUN_0201A7E8
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x82
	bl FUN_0200B1EC
	adds r7, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02247F78 @ =0x000F0D00
	adds r2, r7, #0
	str r0, [sp, #8]
	adds r0, r6, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r7, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0201A9A4
	adds r4, #0x20
	adds r0, r4, #0
	bl FUN_0201A7A0
	movs r2, #6
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x15
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x24]
	adds r1, r4, #0
	movs r3, #0x12
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x48]
	movs r1, #0x83
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov62_0223429C
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02247F78 @ =0x000F0D00
	adds r2, r5, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02247F78: .4byte 0x000F0D00
	thumb_func_end ov62_02247E9C

	thumb_func_start ov62_02247F7C
ov62_02247F7C: @ 0x02247F7C
	push {r4, lr}
	movs r1, #0x86
	lsls r1, r1, #4
	ldr r4, [r0, r1]
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201ACF4
	adds r0, r4, #0
	adds r0, #0x10
	bl FUN_0201A8FC
	adds r0, r4, #0
	adds r0, #0x20
	bl FUN_0201ACF4
	adds r4, #0x20
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov62_02247F7C

	thumb_func_start ov62_02247FA8
ov62_02247FA8: @ 0x02247FA8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x66
	movs r1, #0x30
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x30
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x86
	lsls r0, r0, #4
	str r4, [r5, r0]
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r4, #0
	adds r1, r4, #4
	movs r2, #0
	bl ov62_022315C8
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0222FB60
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02247FA8

	thumb_func_start ov62_02247FFC
ov62_02247FFC: @ 0x02247FFC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _02248014
	cmp r1, #1
	beq _02248072
	b _02248100
_02248014:
	adds r0, r4, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	cmp r0, #0
	beq _02248028
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02248028:
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _0224810E
_02248072:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #1
	movs r1, #3
	bl FUN_02019060
	movs r0, #2
	movs r1, #0
	bl FUN_02019060
	movs r0, #3
	movs r1, #2
	bl FUN_02019060
	movs r0, #4
	movs r1, #0
	bl FUN_02019060
	movs r0, #5
	movs r1, #3
	bl FUN_02019060
	movs r0, #6
	movs r1, #1
	bl FUN_02019060
	movs r0, #7
	movs r1, #2
	bl FUN_02019060
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x14]
	ldr r2, [r5, #0x24]
	movs r1, #0x3e
	movs r3, #7
	bl FUN_020070E8
	adds r0, r5, #0
	movs r1, #1
	bl ov62_02234540
	adds r0, r5, #0
	bl ov62_02231454
	adds r0, r5, #0
	movs r1, #0
	bl ov62_02234540
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _0224810E
_02248100:
	movs r1, #0
	bl ov62_0223376C
	adds r0, r5, #0
	movs r1, #2
	bl ov62_0222FB60
_0224810E:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov62_02247FFC

	thumb_func_start ov62_02248114
ov62_02248114: @ 0x02248114
	push {r3, r4, r5, lr}
	sub sp, #0x10
	movs r1, #0x86
	adds r4, r0, #0
	lsls r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #6
	bls _02248128
	b _022482F0
_02248128:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02248134: @ jump table
	.2byte _02248142 - _02248134 - 2 @ case 0
	.2byte _0224818E - _02248134 - 2 @ case 1
	.2byte _022481E4 - _02248134 - 2 @ case 2
	.2byte _02248226 - _02248134 - 2 @ case 3
	.2byte _0224826A - _02248134 - 2 @ case 4
	.2byte _02248276 - _02248134 - 2 @ case 5
	.2byte _022482C0 - _02248134 - 2 @ case 6
_02248142:
	bl ov62_02247E9C
	adds r0, r4, #0
	movs r1, #0
	bl ov62_02247D74
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x66
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	ldr r2, [r4, #0x24]
	movs r1, #0x54
	movs r3, #7
	bl FUN_0200710C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_0224818E:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #0
	movs r3, #2
	bl ov62_022315E0
	cmp r0, #0
	beq _022481CA
	ldr r2, _0224830C @ =0x0000086C
	ldr r1, _02248310 @ =0x0000011A
	ldr r2, [r4, r2]
	adds r0, r4, #0
	bl ov62_02247DD8
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022481CA:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02248306
_022481E4:
	ldr r0, _02248314 @ =0x02249788
	bl FUN_02022760
	cmp r0, #0
	beq _02248206
	adds r0, r4, #0
	bl ov62_02234520
	ldr r1, _02248318 @ =0x0000011B
	adds r0, r4, #0
	movs r2, #0
	bl ov62_02247DD8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_02248206:
	ldr r0, _0224831C @ =0x0224978C
	bl FUN_02022760
	cmp r0, #0
	beq _02248306
	adds r0, r4, #0
	bl ov62_02234520
	movs r0, #1
	str r0, [r5, #0xc]
	adds r0, r4, #0
	bl ov62_02247DB4
	movs r0, #4
	str r0, [r4, #8]
	b _02248306
_02248226:
	ldr r0, _02248314 @ =0x02249788
	bl FUN_02022760
	cmp r0, #0
	beq _02248248
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	bl ov62_022342BC
	movs r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_02248248:
	ldr r0, _0224831C @ =0x0224978C
	bl FUN_02022760
	cmp r0, #0
	beq _02248306
	adds r0, r4, #0
	bl ov62_02234520
	adds r0, r4, #0
	bl ov62_02247DB4
	movs r0, #1
	str r0, [r5, #0xc]
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_0224826A:
	bl ov62_02247F7C
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_02248276:
	adds r0, r5, #0
	adds r0, #8
	movs r1, #1
	bl ov62_02231664
	adds r0, r5, #0
	adds r1, r5, #4
	movs r2, #1
	movs r3, #0
	bl ov62_022315E0
	cmp r0, #0
	beq _022482A6
	ldr r0, [r5, #0xc]
	cmp r0, #1
	bne _022482A0
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
	b _022482A6
_022482A0:
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
_022482A6:
	ldr r0, [r4, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r5, #8]
	ldr r0, [r4, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	b _02248306
_022482C0:
	bl ov62_022342CC
	cmp r0, #0
	beq _022482E6
	adds r0, r4, #0
	bl ov62_022339A0
	adds r0, r4, #0
	bl ov62_022338A8
	ldr r1, _02248320 @ =0x0000011D
	adds r0, r4, #0
	movs r2, #0
	bl ov62_02247DD8
	ldr r0, [r4, #8]
	adds r0, r0, #1
	str r0, [r4, #8]
	b _02248306
_022482E6:
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
	b _02248306
_022482F0:
	bl FUN_02022798
	cmp r0, #0
	beq _02248306
	adds r0, r4, #0
	bl ov62_02247DB4
	adds r0, r4, #0
	movs r1, #3
	bl ov62_0222FB60
_02248306:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224830C: .4byte 0x0000086C
_02248310: .4byte 0x0000011A
_02248314: .4byte 0x02249788
_02248318: .4byte 0x0000011B
_0224831C: .4byte 0x0224978C
_02248320: .4byte 0x0000011D
	thumb_func_end ov62_02248114

	thumb_func_start ov62_02248324
ov62_02248324: @ 0x02248324
	push {r3, r4, r5, lr}
	movs r1, #0x86
	adds r5, r0, #0
	lsls r1, r1, #4
	ldr r4, [r5, r1]
	ldr r1, [r5, #8]
	cmp r1, #0
	beq _0224833E
	cmp r1, #1
	beq _02248342
	cmp r1, #2
	beq _02248348
	b _0224837E
_0224833E:
	adds r0, r1, #1
	str r0, [r5, #8]
_02248342:
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
_02248348:
	adds r0, r5, #0
	bl ov62_0223146C
	ldr r0, [r5, #0x24]
	movs r1, #2
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #3
	bl FUN_02019EBC
	ldr r0, [r5, #0x24]
	movs r1, #7
	bl FUN_02019EBC
	adds r0, r5, #0
	movs r1, #1
	bl ov62_0223376C
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	b _02248402
_0224837E:
	bl ov62_02233790
	cmp r0, #0
	beq _02248402
	adds r0, r4, #0
	adds r0, #8
	movs r1, #0
	bl ov62_02231664
	cmp r0, #0
	beq _022483D2
	adds r0, r5, #0
	bl ov62_022318E8
	adds r0, r4, #0
	adds r0, #8
	bl ov62_02231688
	ldr r0, [r5, #0x58]
	movs r1, #2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [r5, #0x28]
	movs r2, #0xc
	movs r3, #0x10
	bl FUN_02003A2C
	movs r1, #1
	ldr r3, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov62_0222FB44
	adds r0, r5, #0
	movs r1, #5
	bl ov62_0222FB60
	adds r0, r4, #0
	bl FUN_020181C4
	b _02248402
_022483D2:
	ldr r0, [r5, #0x58]
	movs r1, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #2
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	ldr r0, [r5, #0x58]
	movs r1, #3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r3, [r4, #8]
	ldr r0, [r5, #0x28]
	lsls r3, r3, #0x18
	movs r2, #0xc
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
_02248402:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_02248324

	thumb_func_start ov62_02248408
ov62_02248408: @ 0x02248408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r0, #0xaa
	ldrb r0, [r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r1, sp, #0x28
	add r2, sp, #0x24
	bl FUN_0202F4C0
	ldr r1, [sp, #4]
	movs r0, #0x40
	bl FUN_02023790
	adds r4, r0, #0
	ldr r1, [sp, #4]
	movs r0, #0x40
	bl FUN_02023790
	str r0, [sp, #0x1c]
	ldr r0, [sp, #4]
	movs r1, #0x80
	bl FUN_02018144
	adds r5, r0, #0
	movs r0, #0
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x20]
	cmp r1, #0
	ble _022484D2
	ldr r0, [sp]
	movs r7, #0
	mvns r7, r7
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	adds r0, #0x3c
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	lsrs r6, r7, #0x10
_02248456:
	ldr r2, [sp, #0x14]
	movs r1, #7
	adds r2, #0xe
_0224845C:
	ldrh r0, [r2, #0x3c]
	cmp r0, r6
	beq _0224846A
	subs r1, r1, #1
	subs r2, r2, #2
	cmp r1, r7
	bgt _0224845C
_0224846A:
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	bne _02248486
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	bl ov62_0224856C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	movs r2, #8
	bl FUN_02023DF0
	b _022484B4
_02248486:
	adds r0, r4, #0
	bl FUN_020237E8
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl FUN_02023D28
	ldr r2, [sp, #0x1c]
	movs r0, #0
	adds r1, r4, #0
	bl FUN_02002DB4
	cmp r0, #0
	bne _022484B4
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #4]
	bl ov62_0224856C
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x10]
	movs r2, #8
	bl FUN_02023DF0
_022484B4:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x28]
	adds r0, #0x34
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r0, #0x34
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, #0x34
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x20]
	adds r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r1
	blt _02248456
_022484D2:
	movs r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	ble _02248556
_022484DA:
	ldr r0, [sp]
	ldr r0, [r0, #4]
	bl FUN_0207A0F8
	movs r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	ble _02248544
_022484EA:
	ldr r0, [sp]
	adds r1, r6, #0
	ldr r0, [r0, #4]
	bl FUN_0207A0FC
	movs r1, #0xac
	movs r2, #0
	adds r7, r0, #0
	bl FUN_02074470
	cmp r0, #0
	beq _02248544
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0x80
	blx FUN_020C4AF0
	adds r0, r7, #0
	movs r1, #0x75
	adds r2, r5, #0
	bl FUN_02074470
	adds r0, r4, #0
	bl FUN_020237E8
	adds r0, r4, #0
	adds r1, r5, #0
	bl FUN_02023D28
	ldr r2, [sp, #0x1c]
	movs r0, #0
	adds r1, r4, #0
	bl FUN_02002DB4
	cmp r0, #0
	bne _0224853C
	adds r0, r7, #0
	movs r1, #0xb3
	movs r2, #0
	bl FUN_02074B30
_0224853C:
	ldr r0, [sp, #0x18]
	adds r6, r6, #1
	cmp r6, r0
	blt _022484EA
_02248544:
	ldr r0, [sp]
	ldr r1, [sp, #0x28]
	adds r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r1
	blt _022484DA
_02248556:
	adds r0, r4, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x1c]
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_020181C4
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov62_02248408

	thumb_func_start ov62_0224856C
ov62_0224856C: @ 0x0224856C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	bl FUN_020237E8
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0xa
	adds r3, r5, #0
	bl FUN_0200B144
	movs r1, #0x53
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r2, r4, #0
	bl FUN_0200B1B8
	adds r0, r5, #0
	bl FUN_0200B190
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov62_0224856C

	thumb_func_start ov62_02248598
ov62_02248598: @ 0x02248598
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r3, #0
	adds r6, r1, #0
	ldrh r1, [r4]
	adds r7, r0, #0
	adds r5, r2, #0
	cmp r1, #0
	beq _022485AE
	cmp r1, #1
	beq _02248602
	b _02248610
_022485AE:
	ldr r0, _02248614 @ =0x021C07A4
	ldr r0, [r0]
	cmp r0, #0
	bne _022485BA
	bl FUN_02022974
_022485BA:
	cmp r5, #1
	bne _022485E2
	ldr r1, _02248614 @ =0x021C07A4
	ldr r2, _02248618 @ =0x0000E281
	ldr r0, [r1]
	adds r0, #0xab
	strb r5, [r0]
	ldr r0, [r1]
	adds r0, #0xcc
	strh r2, [r0]
	ldr r1, [r1]
	adds r0, r7, #0
	adds r1, #0x84
	movs r2, #0x58
	bl FUN_0202486C
	ldr r1, _02248614 @ =0x021C07A4
	ldr r1, [r1]
	adds r1, #0xe4
	strh r0, [r1]
_022485E2:
	ldr r0, _02248614 @ =0x021C07A4
	ldr r1, _0224861C @ =0x00001D4C
	ldr r0, [r0]
	ldr r2, _02248620 @ =0x0000FFFF
	ldrh r3, [r0, r1]
	adds r0, #0xe8
	subs r1, #0xe8
	eors r2, r3
	lsls r2, r2, #0x10
	adds r2, r3, r2
	bl FUN_0202F858
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _02248610
_02248602:
	ldr r1, _02248614 @ =0x021C07A4
	ldr r3, [sp, #0x18]
	ldr r1, [r1]
	adds r2, r6, #0
	bl FUN_0202F3AC
	pop {r3, r4, r5, r6, r7, pc}
_02248610:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02248614: .4byte 0x021C07A4
_02248618: .4byte 0x0000E281
_0224861C: .4byte 0x00001D4C
_02248620: .4byte 0x0000FFFF
	thumb_func_end ov62_02248598

	thumb_func_start ov62_02248624
ov62_02248624: @ 0x02248624
	push {r3, lr}
	ldr r0, _0224864C @ =0x021C07A4
	ldr r0, [r0]
	cmp r0, #0
	bne _02248632
	bl FUN_02022974
_02248632:
	ldr r0, _0224864C @ =0x021C07A4
	ldr r1, _02248650 @ =0x00001D4C
	ldr r0, [r0]
	ldr r2, _02248654 @ =0x0000FFFF
	ldrh r3, [r0, r1]
	adds r0, #0xe8
	subs r1, #0xe8
	eors r2, r3
	lsls r2, r2, #0x10
	adds r2, r3, r2
	bl FUN_0202F858
	pop {r3, pc}
	.align 2, 0
_0224864C: .4byte 0x021C07A4
_02248650: .4byte 0x00001D4C
_02248654: .4byte 0x0000FFFF
	thumb_func_end ov62_02248624

	thumb_func_start ov62_02248658
ov62_02248658: @ 0x02248658
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r5, r1, #0
	ldrh r1, [r4]
	adds r6, r2, #0
	cmp r1, #0
	beq _0224866C
	cmp r1, #1
	beq _0224868E
	b _0224869C
_0224866C:
	ldr r0, _022486A0 @ =0x021C07A4
	ldr r0, [r0]
	cmp r0, #0
	bne _02248678
	bl FUN_02022974
_02248678:
	ldr r0, _022486A0 @ =0x021C07A4
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0xdc
	str r5, [r0]
	adds r1, #0xe0
	str r6, [r1]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	b _0224869C
_0224868E:
	ldr r1, _022486A0 @ =0x021C07A4
	ldr r3, [sp, #0x10]
	ldr r1, [r1]
	movs r2, #0
	bl FUN_0202F3AC
	pop {r4, r5, r6, pc}
_0224869C:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_022486A0: .4byte 0x021C07A4
	thumb_func_end ov62_02248658

	thumb_func_start ov62_022486A4
ov62_022486A4: @ 0x022486A4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0224871C @ =0x021C07A4
	adds r4, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	bne _022486B6
	bl FUN_02022974
_022486B6:
	ldr r1, _0224871C @ =0x021C07A4
	movs r2, #1
	ldr r0, [r1]
	adds r0, #0xab
	strb r2, [r0]
	ldr r0, [r1]
	ldr r2, _02248720 @ =0x0000E281
	adds r0, #0xcc
	strh r2, [r0]
	ldr r1, [r1]
	adds r0, r5, #0
	adds r1, #0x84
	movs r2, #0x58
	bl FUN_0202486C
	ldr r1, _0224871C @ =0x021C07A4
	ldr r3, _02248724 @ =0x0000FFFF
	ldr r2, [r1]
	adds r2, #0xe4
	strh r0, [r2]
	ldr r0, [r1]
	ldr r1, _02248728 @ =0x00001D4C
	ldrh r2, [r0, r1]
	adds r0, #0xe8
	subs r1, #0xe8
	eors r3, r2
	lsls r3, r3, #0x10
	adds r2, r2, r3
	bl FUN_0202F858
	movs r0, #8
	bl FUN_02017DE0
	ldr r1, _0224871C @ =0x021C07A4
	adds r0, r5, #0
	ldr r1, [r1]
	adds r2, r4, #0
	bl FUN_0202447C
	adds r4, r0, #0
	cmp r4, #2
	bne _02248712
	adds r0, r5, #0
	bl FUN_020246E0
	adds r4, r0, #0
_02248712:
	movs r0, #8
	bl FUN_02017DF0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224871C: .4byte 0x021C07A4
_02248720: .4byte 0x0000E281
_02248724: .4byte 0x0000FFFF
_02248728: .4byte 0x00001D4C
	thumb_func_end ov62_022486A4
	@ 0x0224872C
