
	thumb_func_start ov72_0223D7A0
ov72_0223D7A0: @ 0x0223D7A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, [r5]
	adds r6, r0, #0
	cmp r1, #0
	beq _0223D7B6
	cmp r1, #1
	bne _0223D7B4
	b _0223D8EA
_0223D7B4:
	b _0223D8F8
_0223D7B6:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0200F344
	movs r0, #1
	movs r1, #0
	bl FUN_0200F344
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0223D900 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0223D904 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #3
	movs r1, #0x27
	lsls r2, r2, #6
	bl FUN_02017FC8
	ldr r1, _0223D908 @ =0x00005CB0
	adds r0, r6, #0
	movs r2, #0x27
	bl FUN_0200681C
	ldr r2, _0223D908 @ =0x00005CB0
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x27
	bl FUN_02018340
	str r0, [r4]
	movs r0, #0x5f
	movs r1, #0x27
	bl FUN_02006C24
	adds r7, r0, #0
	movs r0, #0x27
	bl FUN_0200B358
	str r0, [r4, #0x10]
	ldr r2, _0223D90C @ =0x000001A9
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x27
	bl FUN_0200B144
	str r0, [r4, #0x14]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	bl ov72_0223DA70
	ldr r0, [r4]
	bl ov72_0223DA90
	movs r0, #0x10
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x27
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	adds r0, r6, #0
	bl FUN_02006840
	bl FUN_0202C834
	bl FUN_0202C840
	ldr r1, _0223D910 @ =0x00005B98
	str r0, [r4, r1]
	adds r0, r6, #0
	bl FUN_02006840
	bl FUN_0202CD88
	str r0, [r4, #8]
	adds r0, r6, #0
	bl FUN_02006840
	bl FUN_02025E44
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov72_0223DCA8
	bl FUN_0201E3D8
	movs r0, #1
	bl FUN_0201E450
	ldr r0, _0223D914 @ =ov72_0223DA48
	ldr r1, [r4]
	bl FUN_02017798
	movs r0, #2
	movs r1, #0x27
	bl FUN_02002BB8
	adds r0, r4, #0
	bl ov72_0223DB98
	bl ov72_0223DDA8
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov72_0223DDD8
	adds r0, r4, #0
	bl ov72_0223DF58
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov72_0223E0A0
	movs r1, #0
	movs r0, #0x38
	adds r2, r1, #0
	bl FUN_02004550
	ldr r2, _0223D918 @ =0x04000304
	ldr r0, _0223D91C @ =0xFFFF7FFF
	ldrh r1, [r2]
	ands r0, r1
	strh r0, [r2]
	adds r0, r7, #0
	bl FUN_02006CA8
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0223D8F8
_0223D8EA:
	bl FUN_0200682C
	movs r0, #0
	str r0, [r5]
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223D8F8:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0223D900: .4byte 0xFFFFE0FF
_0223D904: .4byte 0x04001000
_0223D908: .4byte 0x00005CB0
_0223D90C: .4byte 0x000001A9
_0223D910: .4byte 0x00005B98
_0223D914: .4byte ov72_0223DA48
_0223D918: .4byte 0x04000304
_0223D91C: .4byte 0xFFFF7FFF
	thumb_func_end ov72_0223D7A0

	thumb_func_start ov72_0223D920
ov72_0223D920: @ 0x0223D920
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0
	beq _0223D93A
	cmp r1, #1
	beq _0223D948
	cmp r1, #2
	beq _0223D966
	b _0223D972
_0223D93A:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223D972
	movs r0, #1
	str r0, [r5]
	b _0223D972
_0223D948:
	movs r2, #0xc3
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	lsls r3, r2, #2
	ldr r2, _0223D97C @ =0x0223ED40
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _0223D95C
	blx r2
	str r0, [r5]
_0223D95C:
	ldr r0, _0223D980 @ =0x00004318
	adds r0, r4, r0
	bl ov72_0223E8D0
	b _0223D972
_0223D966:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0223D972
	movs r0, #1
	pop {r3, r4, r5, pc}
_0223D972:
	ldr r0, [r4, #0x3c]
	bl FUN_020219F8
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223D97C: .4byte 0x0223ED40
_0223D980: .4byte 0x00004318
	thumb_func_end ov72_0223D920

	thumb_func_start ov72_0223D984
ov72_0223D984: @ 0x0223D984
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl FUN_0200682C
	adds r6, r0, #0
	ldr r0, _0223DA40 @ =0x00005B98
	movs r1, #0x2d
	lsls r1, r1, #4
	ldr r0, [r6, r0]
	ldr r1, [r6, r1]
	bl ov72_0223E9B4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x5e
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r7, #0x5a
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_0223D9D4:
	ldr r0, [r5, r7]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223D9D4
	ldr r0, [r6, #0x3c]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	adds r0, r6, #0
	bl ov72_0223E260
	movs r0, #2
	bl FUN_02002C60
	ldr r0, [r6]
	bl ov72_0223DC6C
	bl FUN_0201E530
	ldr r0, [r6, #0x14]
	bl FUN_0200B190
	ldr r0, [r6, #0x10]
	bl FUN_0200B3F0
	adds r0, r6, #0
	bl ov72_0223DC34
	ldr r0, [sp]
	bl FUN_02006830
	ldr r2, _0223DA44 @ =0x04000304
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x27
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DA40: .4byte 0x00005B98
_0223DA44: .4byte 0x04000304
	thumb_func_end ov72_0223D984

	thumb_func_start ov72_0223DA48
ov72_0223DA48: @ 0x0223DA48
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200A858
	adds r0, r4, #0
	bl FUN_0201C2B8
	ldr r3, _0223DA68 @ =0x027E0000
	ldr r1, _0223DA6C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_0223DA68: .4byte 0x027E0000
_0223DA6C: .4byte 0x00003FF8
	thumb_func_end ov72_0223DA48

	thumb_func_start ov72_0223DA70
ov72_0223DA70: @ 0x0223DA70
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0223DA8C @ =0x0223EC08
	add r3, sp, #0
	movs r2, #5
_0223DA7A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223DA7A
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0223DA8C: .4byte 0x0223EC08
	thumb_func_end ov72_0223DA70

	thumb_func_start ov72_0223DA90
ov72_0223DA90: @ 0x0223DA90
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0223DB80 @ =0x0223EB5C
	add r3, sp, #0x8c
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0223DB84 @ =0x0223EBB4
	add r3, sp, #0x70
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
	ldr r5, _0223DB88 @ =0x0223EBD0
	add r3, sp, #0x54
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
	ldr r5, _0223DB8C @ =0x0223EBEC
	add r3, sp, #0x38
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
	ldr r5, _0223DB90 @ =0x0223EB7C
	add r3, sp, #0x1c
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
	ldr r5, _0223DB94 @ =0x0223EB98
	add r3, sp, #0
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
	movs r1, #5
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x27
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x27
	bl FUN_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_0223DB80: .4byte 0x0223EB5C
_0223DB84: .4byte 0x0223EBB4
_0223DB88: .4byte 0x0223EBD0
_0223DB8C: .4byte 0x0223EBEC
_0223DB90: .4byte 0x0223EB7C
_0223DB94: .4byte 0x0223EB98
	thumb_func_end ov72_0223DA90

	thumb_func_start ov72_0223DB98
ov72_0223DB98: @ 0x0223DB98
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0223DC24 @ =0x0000433D
	movs r6, #0
	adds r5, r7, r0
	movs r0, #0xf0
	adds r4, r7, #0
	str r0, [sp]
_0223DBA8:
	movs r0, #8
	movs r1, #0x27
	bl FUN_02023790
	str r0, [r4, #0x18]
	ldrb r1, [r5]
	ldr r0, [sp]
	adds r6, r6, #1
	bics r1, r0
	strb r1, [r5]
	ldr r0, _0223DC28 @ =0x00004384
	movs r1, #0
	strh r1, [r4, r0]
	adds r4, r4, #4
	adds r5, #0x11
	cmp r6, #5
	blt _0223DBA8
	movs r0, #0x14
	movs r1, #0x27
	bl FUN_02023790
	str r0, [r7, #0x2c]
	movs r0, #0x28
	movs r1, #0x27
	bl FUN_02023790
	str r0, [r7, #0x30]
	movs r0, #0x50
	movs r1, #0x27
	bl FUN_02023790
	str r0, [r7, #0x34]
	ldr r0, _0223DC2C @ =0x0000431A
	movs r1, #0
	strb r1, [r7, r0]
	movs r0, #0xc3
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r7, r0]
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x2c]
	movs r1, #0xc
	bl FUN_0200B1B8
	ldr r0, [r7, #0x14]
	ldr r2, [r7, #0x30]
	movs r1, #9
	bl FUN_0200B1B8
	movs r0, #0x27
	bl FUN_02015920
	ldr r1, _0223DC30 @ =0x00005C9C
	movs r2, #5
	str r0, [r7, r1]
	adds r1, r1, #4
	movs r0, #0
	adds r1, r7, r1
	blx FUN_020C4BB8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223DC24: .4byte 0x0000433D
_0223DC28: .4byte 0x00004384
_0223DC2C: .4byte 0x0000431A
_0223DC30: .4byte 0x00005C9C
	thumb_func_end ov72_0223DB98

	thumb_func_start ov72_0223DC34
ov72_0223DC34: @ 0x0223DC34
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _0223DC68 @ =0x00005C9C
	ldr r0, [r6, r0]
	bl FUN_02015938
	movs r4, #0
	adds r5, r6, #0
_0223DC44:
	ldr r0, [r5, #0x18]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _0223DC44
	ldr r0, [r6, #0x34]
	bl FUN_020237BC
	ldr r0, [r6, #0x30]
	bl FUN_020237BC
	ldr r0, [r6, #0x2c]
	bl FUN_020237BC
	pop {r4, r5, r6, pc}
	nop
_0223DC68: .4byte 0x00005C9C
	thumb_func_end ov72_0223DC34

	thumb_func_start ov72_0223DC6C
ov72_0223DC6C: @ 0x0223DC6C
	push {r4, lr}
	adds r4, r0, #0
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
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov72_0223DC6C

	thumb_func_start ov72_0223DCA8
ov72_0223DCA8: @ 0x0223DCA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r4, [r6]
	movs r0, #0x60
	adds r5, r1, #0
	movs r1, #0
	str r0, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02007130
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x27
	bl FUN_02002E98
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x27
	bl FUN_02002E98
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x27
	bl FUN_02019690
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x27
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #3
	adds r2, r4, #0
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x27
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #5
	adds r2, r4, #0
	movs r3, #2
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x27
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #4
	adds r2, r4, #0
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x27
	str r0, [sp, #0xc]
	adds r0, r5, #0
	movs r1, #6
	adds r2, r4, #0
	movs r3, #5
	bl FUN_0200710C
	ldr r0, [r6, #0xc]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200DD0C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x27
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov72_0223DCA8

	thumb_func_start ov72_0223DDA8
ov72_0223DDA8: @ 0x0223DDA8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _0223DDD4 @ =0x0223EB6C
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #0x14
	movs r1, #0x27
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_0223DDD4: .4byte 0x0223EB6C
	thumb_func_end ov72_0223DDA8

	thumb_func_start ov72_0223DDD8
ov72_0223DDD8: @ 0x0223DDD8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r7, r1, #0
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x27
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r5, #0
	movs r0, #0x32
	adds r1, #0x40
	movs r2, #0x27
	bl FUN_020095C4
	str r0, [r5, #0x3c]
	adds r0, r5, #0
	movs r2, #1
	adds r0, #0x40
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r6, #0
	adds r4, r5, #0
_0223DE1C:
	movs r0, #2
	adds r1, r6, #0
	movs r2, #0x27
	bl FUN_02009714
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0223DE1C
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x27
	str r0, [sp, #8]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	adds r1, r7, #0
	movs r2, #7
	bl FUN_02009A4C
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #0
	str r3, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x27
	subs r1, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	bl FUN_02009B04
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #8
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #6
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0xc
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #9
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #7
	bl FUN_02009A4C
	movs r1, #0x62
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r2, #1
	str r2, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x27
	subs r1, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_02009B04
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #8
	bl FUN_02009BC4
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r3, #1
	str r3, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x27
	subs r1, #0x1c
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r7, #0
	movs r2, #9
	bl FUN_02009BC4
	movs r1, #0x65
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0x1c
	ldr r0, [r5, r1]
	bl FUN_0200A328
	movs r0, #0x62
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A328
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A5C8
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200A5C8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov72_0223DDD8

	thumb_func_start ov72_0223DF58
ov72_0223DF58: @ 0x0223DF58
	push {r3, r4, lr}
	sub sp, #0x5c
	movs r1, #0
	adds r4, r0, #0
	str r1, [sp]
	subs r0, r1, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r2, #0x5a
	str r1, [sp, #0x10]
	lsls r2, r2, #2
	ldr r0, [r4, r2]
	adds r3, r1, #0
	str r0, [sp, #0x14]
	adds r0, r2, #4
	ldr r0, [r4, r0]
	str r0, [sp, #0x18]
	adds r0, r2, #0
	adds r0, #8
	ldr r0, [r4, r0]
	str r0, [sp, #0x1c]
	adds r0, r2, #0
	adds r0, #0xc
	ldr r0, [r4, r0]
	adds r2, #0x30
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	adds r0, r4, r2
	adds r2, r1, #0
	str r1, [sp, #0x28]
	bl FUN_020093B4
	movs r1, #1
	movs r3, #0x5a
	str r1, [sp]
	subs r0, r1, #2
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsls r3, r3, #2
	ldr r2, [r4, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r4, r2]
	adds r3, #0x54
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r4, r3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_020093B4
	ldr r0, [r4, #0x3c]
	movs r2, #0
	str r0, [sp, #0x2c]
	movs r0, #0x66
	lsls r0, r0, #2
	adds r1, r4, r0
	str r1, [sp, #0x30]
	movs r1, #1
	lsls r1, r1, #0xc
	adds r0, #0x24
	str r2, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r1, [sp, #0x44]
	str r1, [sp, #0x48]
	add r1, sp, #0x2c
	strh r2, [r1, #0x20]
	movs r1, #1
	adds r0, r4, r0
	str r0, [sp, #0x30]
	movs r0, #0xe
	lsls r0, r0, #0x10
	str r0, [sp, #0x34]
	movs r0, #0xaf
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	str r1, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0x27
	add r0, sp, #0x2c
	str r1, [sp, #0x58]
	bl FUN_02021AA0
	movs r1, #0x25
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021D6C
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02021E90
	movs r0, #0x25
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_02021E80
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x5c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov72_0223DF58

	thumb_func_start ov72_0223E060
ov72_0223E060: @ 0x0223E060
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	movs r0, #2
	movs r2, #0
	adds r6, r1, #0
	adds r7, r3, #0
	bl FUN_02002D7C
	adds r3, r0, #0
	str r4, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	adds r1, r7, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r4, [r5, #7]
	adds r0, r5, #0
	adds r2, r6, #0
	lsls r4, r4, #3
	subs r4, r4, r3
	lsrs r3, r4, #0x1f
	adds r3, r4, r3
	asrs r3, r3, #1
	bl FUN_0201D78C
	ldr r0, [r5, #0xc]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov72_0223E060

	thumb_func_start ov72_0223E0A0
ov72_0223E0A0: @ 0x0223E0A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	movs r1, #0xb5
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r1, r5, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #9
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #8
	movs r1, #0xb1
	lsls r1, r1, #2
	str r0, [sp, #8]
	movs r2, #1
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r0, [r5]
	adds r1, r5, r1
	movs r3, #4
	bl FUN_0201A7E8
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #2
	bl FUN_0201ADA4
	movs r0, #0x15
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #0xc1
	movs r1, #0xb9
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r5]
	adds r1, r5, r1
	movs r2, #1
	movs r3, #0x1a
	bl FUN_0201A7E8
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, _0223E250 @ =0x000E0702
	movs r2, #1
	str r0, [sp]
	movs r0, #0xb9
	lsls r0, r0, #2
	ldr r1, [r5, #0x2c]
	adds r0, r5, r0
	movs r3, #2
	bl ov72_0223E060
	movs r1, #2
	lsls r1, r1, #8
	blx FUN_020C2C54
	movs r4, #0
	ldr r0, _0223E254 @ =0x00005B9C
	str r4, [sp, #0x18]
	adds r7, r4, #0
	adds r6, r5, r0
_0223E156:
	movs r0, #0
	str r0, [sp]
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #4
	movs r2, #2
	adds r3, r4, #0
	str r6, [sp, #4]
	bl FUN_02012C60
	movs r1, #1
	adds r0, r6, #0
	lsls r1, r1, #8
	blx FUN_020C2C54
	movs r2, #1
	adds r0, r6, #0
	adds r1, r7, #0
	lsls r2, r2, #8
	blx FUN_020C02BC
	movs r0, #1
	lsls r0, r0, #8
	adds r7, r7, r0
	ldr r0, [sp, #0x18]
	adds r4, r4, #4
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #2
	blt _0223E156
	movs r3, #2
	str r3, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	movs r1, #0xbd
	lsls r1, r1, #2
	str r3, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0xd1
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, r5, r1
	movs r2, #1
	bl FUN_0201A7E8
	ldr r1, [r5, #0x30]
	movs r0, #1
	movs r2, #0
	bl FUN_02002D7C
	adds r4, r0, #0
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #0
	str r1, [sp]
	movs r3, #0xe0
	subs r4, r3, r4
	lsrs r3, r4, #0x1f
	adds r3, r4, r3
	ldr r0, _0223E258 @ =0x00010200
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0xbd
	lsls r0, r0, #2
	ldr r2, [r5, #0x30]
	adds r0, r5, r0
	movs r1, #1
	asrs r3, r3, #1
	bl FUN_0201D78C
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #0x9d
	lsls r0, r0, #2
	movs r7, #1
	movs r6, #3
	adds r4, r5, r0
_0223E1FE:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	lsls r0, r7, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r5]
	adds r1, r4, #0
	movs r2, #4
	movs r3, #5
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x14]
	adds r7, #0x14
	adds r0, r0, #1
	adds r6, r6, #4
	adds r4, #0x10
	str r0, [sp, #0x14]
	cmp r0, #5
	blt _0223E1FE
	movs r0, #0x9d
	lsls r0, r0, #2
	ldr r2, _0223E25C @ =0x000E0D0F
	adds r0, r5, r0
	movs r1, #0
	adds r3, r5, #0
	bl ov72_0223E910
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223E250: .4byte 0x000E0702
_0223E254: .4byte 0x00005B9C
_0223E258: .4byte 0x00010200
_0223E25C: .4byte 0x000E0D0F
	thumb_func_end ov72_0223E0A0

	thumb_func_start ov72_0223E260
ov72_0223E260: @ 0x0223E260
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x9d
	lsls r0, r0, #2
	movs r4, #0
	adds r5, r6, r0
_0223E26C:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #5
	blt _0223E26C
	movs r0, #0xbd
	lsls r0, r0, #2
	adds r0, r6, r0
	bl FUN_0201A8FC
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r6, r0
	bl FUN_0201A8FC
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r0, r6, r0
	bl FUN_0201A8FC
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r0, r6, r0
	bl FUN_0201A8FC
	pop {r4, r5, r6, pc}
	thumb_func_end ov72_0223E260

	thumb_func_start ov72_0223E2A4
ov72_0223E2A4: @ 0x0223E2A4
	bx lr
	.align 2, 0
	thumb_func_end ov72_0223E2A4

	thumb_func_start ov72_0223E2A8
ov72_0223E2A8: @ 0x0223E2A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r4, r0, #0
	ldr r0, _0223E370 @ =0x0223EB4A
	bl FUN_02022664
	adds r1, r0, #0
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	beq _0223E2FC
	cmp r1, #0
	bne _0223E2EE
	movs r0, #0xc3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0223E2FC
	adds r0, r4, #0
	movs r1, #0xa
	bl ov72_0223E930
	movs r0, #0xc3
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r4, r0]
	subs r0, #0xbc
	adds r0, r4, r0
	movs r1, #1
	bl ov72_0223E3A8
	ldr r0, _0223E374 @ =0x000005DD
	bl FUN_02005748
	b _0223E2FC
_0223E2EE:
	ldr r0, _0223E378 @ =0x0000431A
	strb r1, [r4, r0]
	movs r0, #0x25
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov72_0223E388
_0223E2FC:
	ldr r0, _0223E37C @ =0x0223EB42
	bl FUN_02022644
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0223E310
	adds r0, r4, #0
	bl ov72_0223EA18
_0223E310:
	add r0, sp, #0
	movs r1, #4
	movs r2, #1
	bl FUN_0201E564
	cmp r0, #1
	bne _0223E36C
	add r7, sp, #0
	ldrh r3, [r7]
	movs r1, #0
	cmp r3, #0
	ble _0223E344
	ldr r5, _0223E380 @ =0x0000431C
	add r2, sp, #0
	adds r6, r5, #0
	adds r6, #8
_0223E330:
	ldrh r3, [r2, #2]
	adds r0, r4, r1
	adds r1, r1, #1
	strb r3, [r0, r5]
	ldrh r3, [r2, #4]
	adds r2, #8
	strb r3, [r0, r6]
	ldrh r3, [r7]
	cmp r1, r3
	blt _0223E330
_0223E344:
	ldr r0, _0223E384 @ =0x0000432C
	movs r2, #0xf0
	ldrb r1, [r4, r0]
	bics r1, r2
	lsls r2, r3, #0x18
	lsrs r2, r2, #0x18
	lsls r2, r2, #0x1c
	lsrs r2, r2, #0x18
	orrs r1, r2
	strb r1, [r4, r0]
	ldrb r3, [r4, r0]
	movs r1, #0xf
	bics r3, r1
	adds r1, r0, #0
	subs r1, #0x12
	ldrb r2, [r4, r1]
	movs r1, #0xf
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, r0]
_0223E36C:
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223E370: .4byte 0x0223EB4A
_0223E374: .4byte 0x000005DD
_0223E378: .4byte 0x0000431A
_0223E37C: .4byte 0x0223EB42
_0223E380: .4byte 0x0000431C
_0223E384: .4byte 0x0000432C
	thumb_func_end ov72_0223E2A8

	thumb_func_start ov72_0223E388
ov72_0223E388: @ 0x0223E388
	push {r3, lr}
	ldr r2, _0223E3A4 @ =0x0223EB3C
	cmp r1, #0
	ldr r0, [r0]
	bne _0223E39C
	ldrh r1, [r2, #4]
	adds r1, r1, #1
	bl FUN_02021D6C
	pop {r3, pc}
_0223E39C:
	ldrh r1, [r2, #4]
	bl FUN_02021D6C
	pop {r3, pc}
	.align 2, 0
_0223E3A4: .4byte 0x0223EB3C
	thumb_func_end ov72_0223E388

	thumb_func_start ov72_0223E3A8
ov72_0223E3A8: @ 0x0223E3A8
	push {r3, lr}
	cmp r1, #1
	ldr r0, [r0]
	bne _0223E3B8
	movs r1, #1
	bl FUN_02021D6C
	pop {r3, pc}
_0223E3B8:
	movs r1, #0
	bl FUN_02021D6C
	pop {r3, pc}
	thumb_func_end ov72_0223E3A8

	thumb_func_start ov72_0223E3C0
ov72_0223E3C0: @ 0x0223E3C0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov72_0223E2A8
	movs r0, #0x9d
	lsls r0, r0, #2
	ldr r2, _0223E400 @ =0x000E0C0F
	adds r0, r5, r0
	movs r1, #0
	adds r3, r5, #0
	bl ov72_0223E910
	adds r0, r5, #0
	bl ov72_0223E914
	adds r0, r5, #0
	bl ov72_0223E8CC
	ldr r2, _0223E404 @ =0x0000432D
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r5, r2
	adds r2, #0x55
	adds r0, r5, r0
	adds r2, r5, r2
	movs r3, #1
	bl ov72_0223E80C
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0223E400: .4byte 0x000E0C0F
_0223E404: .4byte 0x0000432D
	thumb_func_end ov72_0223E3C0

	thumb_func_start ov72_0223E408
ov72_0223E408: @ 0x0223E408
	push {r4, lr}
	adds r4, r0, #0
	bl ov72_0223E2A4
	adds r0, r4, #0
	bl ov72_0223E8CC
	ldr r2, _0223E42C @ =0x0000432D
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r1, r4, r2
	adds r2, #0x55
	adds r0, r4, r0
	adds r2, r4, r2
	movs r3, #0
	bl ov72_0223E80C
	pop {r4, pc}
	.align 2, 0
_0223E42C: .4byte 0x0000432D
	thumb_func_end ov72_0223E408

	thumb_func_start ov72_0223E430
ov72_0223E430: @ 0x0223E430
	push {lr}
	sub sp, #0x14
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #0xb4
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	movs r2, #0x19
	add r0, sp, #0
	strb r2, [r0, #0x10]
	movs r2, #6
	strb r2, [r0, #0x11]
	adds r0, r1, #0
	add r1, sp, #0
	bl FUN_02015958
	add sp, #0x14
	pop {pc}
	thumb_func_end ov72_0223E430

	thumb_func_start ov72_0223E458
ov72_0223E458: @ 0x0223E458
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	adds r4, r1, #0
	bl ov72_0223E99C
	cmp r0, #0
	beq _0223E47A
	ldr r1, _0223E484 @ =0x00005C9C
	ldr r0, [r5]
	ldr r1, [r5, r1]
	bl ov72_0223E430
	movs r0, #0xc3
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r5, r0]
_0223E47A:
	adds r0, r5, #0
	bl ov72_0223E408
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E484: .4byte 0x00005C9C
	thumb_func_end ov72_0223E458

	thumb_func_start ov72_0223E488
ov72_0223E488: @ 0x0223E488
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0223E520 @ =0x00005C9C
	adds r4, r1, #0
	ldr r0, [r5, r0]
	bl FUN_020159FC
	cmp r0, #1
	beq _0223E4A2
	cmp r0, #2
	beq _0223E4E4
	b _0223E50A
_0223E4A2:
	ldr r0, [r5, #8]
	movs r1, #4
	bl FUN_0202CFEC
	ldr r0, [r5, #8]
	movs r1, #0x72
	bl FUN_0202CF28
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0200E084
	ldr r0, _0223E520 @ =0x00005C9C
	ldr r0, [r5, r0]
	bl FUN_02015A54
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x27
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	add sp, #0xc
	movs r0, #2
	pop {r4, r5, pc}
_0223E4E4:
	movs r0, #0xc3
	movs r1, #4
	lsls r0, r0, #2
	str r1, [r5, r0]
	subs r0, #0xbc
	adds r0, r5, r0
	movs r1, #0
	bl ov72_0223E3A8
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0200E084
	ldr r0, _0223E520 @ =0x00005C9C
	ldr r0, [r5, r0]
	bl FUN_02015A54
_0223E50A:
	ldr r1, _0223E524 @ =0x0000432C
	movs r0, #0xf0
	ldrb r2, [r5, r1]
	bics r2, r0
	adds r0, r5, #0
	strb r2, [r5, r1]
	bl ov72_0223E408
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0223E520: .4byte 0x00005C9C
_0223E524: .4byte 0x0000432C
	thumb_func_end ov72_0223E488

	thumb_func_start ov72_0223E528
ov72_0223E528: @ 0x0223E528
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0223E58C @ =0x00005C9C
	adds r4, r1, #0
	ldr r0, [r5, r0]
	bl FUN_020159FC
	cmp r0, #1
	beq _0223E540
	cmp r0, #2
	beq _0223E570
	b _0223E588
_0223E540:
	movs r0, #0xc3
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
	subs r0, #0x38
	adds r0, r5, r0
	bl FUN_0200E084
	ldr r0, _0223E58C @ =0x00005C9C
	ldr r0, [r5, r0]
	bl FUN_02015A54
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #2
	bl FUN_0201ADA4
	movs r0, #0xb1
	lsls r0, r0, #2
	adds r0, r5, r0
	bl FUN_0201A954
	b _0223E588
_0223E570:
	movs r0, #0xc3
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
	subs r0, #0x38
	adds r0, r5, r0
	bl FUN_0200E084
	ldr r0, _0223E58C @ =0x00005C9C
	ldr r0, [r5, r0]
	bl FUN_02015A54
_0223E588:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E58C: .4byte 0x00005C9C
	thumb_func_end ov72_0223E528

	thumb_func_start ov72_0223E590
ov72_0223E590: @ 0x0223E590
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0xb
	adds r5, r0, #0
	bl ov72_0223E930
	movs r0, #0xc3
	movs r1, #5
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov72_0223E408
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov72_0223E590

	thumb_func_start ov72_0223E5B0
ov72_0223E5B0: @ 0x0223E5B0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	adds r4, r1, #0
	bl ov72_0223E99C
	cmp r0, #0
	beq _0223E5D2
	movs r0, #0xc3
	movs r1, #6
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r1, _0223E5DC @ =0x00005C9C
	ldr r0, [r5]
	ldr r1, [r5, r1]
	bl ov72_0223E430
_0223E5D2:
	adds r0, r5, #0
	bl ov72_0223E408
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223E5DC: .4byte 0x00005C9C
	thumb_func_end ov72_0223E5B0

	thumb_func_start ov72_0223E5E0
ov72_0223E5E0: @ 0x0223E5E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x38]
	mov ip, r1
	adds r6, r2, #0
	adds r7, r3, #0
	str r0, [sp, #0x18]
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x40]
	ldr r1, [sp, #0x44]
	cmp r4, #0
	bge _0223E60C
	rsbs r0, r4, #0
	cmp r0, r2
	ble _0223E600
	adds r0, r2, #0
_0223E600:
	ldr r5, [sp, #0x30]
	movs r4, #0
	subs r5, r5, r0
	adds r6, r6, r0
	str r5, [sp, #0x30]
	subs r2, r2, r0
_0223E60C:
	cmp r3, #0
	bge _0223E624
	rsbs r0, r3, #0
	cmp r0, r1
	ble _0223E618
	adds r0, r1, #0
_0223E618:
	ldr r5, [sp, #0x34]
	movs r3, #0
	subs r5, r5, r0
	adds r7, r7, r0
	str r5, [sp, #0x34]
	subs r1, r1, r0
_0223E624:
	ldr r0, [sp, #0x30]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x34]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	lsls r2, r6, #0x10
	lsls r3, r7, #0x10
	ldr r0, [sp, #0x18]
	mov r1, ip
	lsrs r2, r2, #0x10
	lsrs r3, r3, #0x10
	bl FUN_0201ADDC
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov72_0223E5E0

	thumb_func_start ov72_0223E660
ov72_0223E660: @ 0x0223E660
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x50]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x54]
	str r2, [sp, #0x20]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x50]
	str r3, [sp, #0x24]
	ldr r4, [r0]
	ldr r0, [sp, #0x54]
	ldr r5, [r0]
	adds r0, r2, #0
	str r0, [sp, #0x38]
	adds r0, r3, #0
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x58]
	cmp r0, #0
	bne _0223E6A0
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _0223E6A0
	ldr r0, [sp, #0x50]
	adds r1, r2, #0
	str r1, [r0]
	ldr r0, [sp, #0x54]
	adds r1, r3, #0
	str r1, [r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
_0223E6A0:
	ldr r0, [sp, #0x20]
	subs r0, r0, r4
	str r0, [sp, #0x34]
	bpl _0223E6AC
	rsbs r0, r0, #0
	str r0, [sp, #0x34]
_0223E6AC:
	ldr r0, [sp, #0x24]
	subs r7, r0, r5
	bpl _0223E6B4
	rsbs r7, r7, #0
_0223E6B4:
	ldr r0, [sp, #0x34]
	cmp r0, r7
	ble _0223E742
	ldr r0, [sp, #0x20]
	cmp r4, r0
	ble _0223E6DA
	ldr r0, [sp, #0x24]
	cmp r5, r0
	ble _0223E6CC
	movs r0, #1
	str r0, [sp, #0x2c]
	b _0223E6D2
_0223E6CC:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x2c]
_0223E6D2:
	str r4, [sp, #0x38]
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	b _0223E6EC
_0223E6DA:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	bge _0223E6E6
	movs r0, #1
	str r0, [sp, #0x2c]
	b _0223E6EC
_0223E6E6:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x2c]
_0223E6EC:
	movs r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r3, r2, #0
	bl ov72_0223E5E0
	ldr r0, [sp, #0x34]
	adds r4, r4, #1
	asrs r6, r0, #1
	ldr r0, [sp, #0x38]
	cmp r4, r0
	bgt _0223E7C6
_0223E712:
	subs r6, r6, r7
	bpl _0223E71E
	ldr r0, [sp, #0x34]
	adds r6, r6, r0
	ldr r0, [sp, #0x2c]
	adds r5, r5, r0
_0223E71E:
	movs r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r3, r2, #0
	bl ov72_0223E5E0
	ldr r0, [sp, #0x38]
	adds r4, r4, #1
	cmp r4, r0
	ble _0223E712
	b _0223E7C6
_0223E742:
	ldr r0, [sp, #0x24]
	cmp r5, r0
	ble _0223E762
	ldr r0, [sp, #0x20]
	cmp r4, r0
	ble _0223E754
	movs r0, #1
	str r0, [sp, #0x28]
	b _0223E75A
_0223E754:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x28]
_0223E75A:
	str r5, [sp, #0x30]
	ldr r5, [sp, #0x24]
	ldr r4, [sp, #0x20]
	b _0223E774
_0223E762:
	ldr r0, [sp, #0x20]
	cmp r4, r0
	bge _0223E76E
	movs r0, #1
	str r0, [sp, #0x28]
	b _0223E774
_0223E76E:
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x28]
_0223E774:
	movs r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r3, r2, #0
	bl ov72_0223E5E0
	ldr r0, [sp, #0x30]
	adds r5, r5, #1
	asrs r6, r7, #1
	cmp r5, r0
	bgt _0223E7C6
_0223E798:
	ldr r0, [sp, #0x34]
	subs r6, r6, r0
	bpl _0223E7A4
	ldr r0, [sp, #0x28]
	adds r6, r6, r7
	adds r4, r4, r0
_0223E7A4:
	movs r0, #4
	str r0, [sp]
	str r0, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	movs r2, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	adds r3, r2, #0
	bl ov72_0223E5E0
	ldr r0, [sp, #0x30]
	adds r5, r5, #1
	cmp r5, r0
	ble _0223E798
_0223E7C6:
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x50]
	str r1, [r0]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x54]
	str r1, [r0]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov72_0223E660

	thumb_func_start ov72_0223E7D8
ov72_0223E7D8: @ 0x0223E7D8
	movs r2, #0
_0223E7DA:
	ldrb r3, [r0, #0x10]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1c
	strh r3, [r1, #2]
	ldrb r3, [r0, #0x10]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1c
	beq _0223E7FE
	adds r3, r0, r3
	subs r3, r3, #1
	ldrb r3, [r3]
	strb r3, [r1]
	ldrb r3, [r0, #0x10]
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x1c
	adds r3, r0, r3
	ldrb r3, [r3, #7]
	strb r3, [r1, #1]
_0223E7FE:
	adds r2, r2, #1
	adds r0, #0x11
	adds r1, r1, #4
	cmp r2, #5
	blt _0223E7DA
	bx lr
	.align 2, 0
	thumb_func_end ov72_0223E7D8

	thumb_func_start ov72_0223E80C
ov72_0223E80C: @ 0x0223E80C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r7, r0, #0
	movs r0, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	adds r5, r1, #0
	adds r6, r2, #0
_0223E822:
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	beq _0223E886
	ldrh r0, [r6, #2]
	cmp r0, #0
	beq _0223E83C
	ldrb r0, [r6]
	subs r0, #0x20
	str r0, [sp, #0x28]
	ldrb r0, [r6, #1]
	subs r0, #0x48
	str r0, [sp, #0x24]
_0223E83C:
	ldrb r0, [r5, #0x10]
	movs r4, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x1c
	cmp r1, #0
	ble _0223E886
	movs r0, #1
	str r0, [sp, #0x1c]
	cmp r1, #0
	ble _0223E886
_0223E850:
	add r0, sp, #0x28
	str r0, [sp]
	add r0, sp, #0x24
	str r0, [sp, #4]
	str r4, [sp, #8]
	ldrh r0, [r6, #2]
	adds r3, r5, r4
	str r0, [sp, #0xc]
	ldrb r1, [r5, #0x10]
	ldrb r3, [r3, #8]
	adds r0, r7, #0
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1c
	lsls r2, r1, #4
	ldr r1, _0223E8C8 @ =0x0223EC30
	subs r3, #0x48
	adds r1, r1, r2
	ldrb r2, [r5, r4]
	subs r2, #0x20
	bl ov72_0223E660
	ldrb r0, [r5, #0x10]
	adds r4, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r4, r0
	blt _0223E850
_0223E886:
	ldr r0, [sp, #0x20]
	adds r5, #0x11
	adds r0, r0, #1
	adds r6, r6, #4
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _0223E822
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	beq _0223E8A6
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _0223E8A6
	adds r0, r7, #0
	bl FUN_0201A954
_0223E8A6:
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	bl ov72_0223E7D8
	movs r3, #0
	movs r1, #0xf0
_0223E8B2:
	ldr r0, [sp, #0x10]
	adds r3, r3, #1
	ldrb r2, [r0, #0x10]
	bics r2, r1
	strb r2, [r0, #0x10]
	adds r0, #0x11
	str r0, [sp, #0x10]
	cmp r3, #5
	blt _0223E8B2
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223E8C8: .4byte 0x0223EC30
	thumb_func_end ov72_0223E80C

	thumb_func_start ov72_0223E8CC
ov72_0223E8CC: @ 0x0223E8CC
	bx lr
	.align 2, 0
	thumb_func_end ov72_0223E8CC

	thumb_func_start ov72_0223E8D0
ov72_0223E8D0: @ 0x0223E8D0
	push {r3, lr}
	ldrh r1, [r0]
	adds r1, #0x14
	strh r1, [r0]
	ldrh r2, [r0]
	movs r1, #0x5a
	lsls r1, r1, #2
	cmp r2, r1
	bls _0223E8E6
	movs r1, #0
	strh r1, [r0]
_0223E8E6:
	ldrh r0, [r0]
	bl FUN_0201D250
	movs r1, #0xa
	muls r1, r0, r1
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	adds r0, #0xf
	lsls r1, r0, #5
	movs r0, #0x1d
	orrs r1, r0
	add r0, sp, #0
	strh r1, [r0]
	add r0, sp, #0
	movs r1, #0x18
	movs r2, #2
	blx FUN_020C0160
	pop {r3, pc}
	thumb_func_end ov72_0223E8D0

	thumb_func_start ov72_0223E910
ov72_0223E910: @ 0x0223E910
	bx lr
	.align 2, 0
	thumb_func_end ov72_0223E910

	thumb_func_start ov72_0223E914
ov72_0223E914: @ 0x0223E914
	ldr r1, _0223E92C @ =0x0000431C
	adds r3, r0, r1
	adds r1, #0x11
	adds r2, r0, r1
	movs r1, #0x11
_0223E91E:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0223E91E
	bx lr
	.align 2, 0
_0223E92C: .4byte 0x0000431C
	thumb_func_end ov72_0223E914

	thumb_func_start ov72_0223E930
ov72_0223E930: @ 0x0223E930
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x50
	movs r1, #0x27
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r5, #0x14]
	adds r1, r6, #0
	adds r2, r4, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x34]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0xb5
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200E060
	ldr r0, [r5, #0xc]
	bl FUN_02027AC0
	movs r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xb5
	lsls r0, r0, #2
	ldr r2, [r5, #0x34]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	str r0, [r5, #0x38]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov72_0223E930

	thumb_func_start ov72_0223E99C
ov72_0223E99C: @ 0x0223E99C
	push {r3, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0223E9AE
	movs r0, #1
	pop {r3, pc}
_0223E9AE:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov72_0223E99C

	thumb_func_start ov72_0223E9B4
ov72_0223E9B4: @ 0x0223E9B4
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0
	adds r5, r0, #0
	str r1, [sp]
	adds r4, r7, #0
	strb r7, [r5]
	adds r6, r7, #0
_0223E9C2:
	ldr r0, [sp]
	ldrb r1, [r0, r6]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #1
	bne _0223E9D8
	movs r0, #1
	ldrb r1, [r5]
	lsls r0, r4
	orrs r0, r1
	strb r0, [r5]
_0223E9D8:
	ldr r0, [sp]
	ldrb r0, [r0, r6]
	asrs r0, r0, #4
	cmp r0, #1
	bne _0223E9EE
	ldrb r0, [r5]
	adds r2, r4, #1
	movs r1, #1
	lsls r1, r2
	orrs r0, r1
	strb r0, [r5]
_0223E9EE:
	adds r4, r4, #2
	cmp r4, #8
	bne _0223E9FE
	movs r0, #0
	adds r5, r5, #1
	adds r7, r7, #1
	strb r0, [r5]
	adds r4, r0, #0
_0223E9FE:
	movs r0, #6
	lsls r0, r0, #0xa
	cmp r7, r0
	blt _0223EA0A
	bl FUN_02022974
_0223EA0A:
	movs r0, #6
	adds r6, r6, #1
	lsls r0, r0, #0xa
	cmp r6, r0
	blt _0223E9C2
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov72_0223E9B4

	thumb_func_start ov72_0223EA18
ov72_0223EA18: @ 0x0223EA18
	push {r3, r4, r5, lr}
	ldr r1, _0223EAC4 @ =0x021BF6BC
	adds r4, r0, #0
	ldrh r0, [r1, #0x1c]
	ldr r3, _0223EAC8 @ =0x0000FFFF
	cmp r0, r3
	beq _0223EAB2
	ldrh r1, [r1, #0x1e]
	cmp r1, r3
	beq _0223EAB2
	ldr r2, _0223EACC @ =0x00005CA8
	ldr r5, [r4, r2]
	cmp r5, r3
	beq _0223EAB2
	adds r1, r2, #4
	ldr r1, [r4, r1]
	cmp r1, r3
	beq _0223EAB2
	cmp r5, r0
	ble _0223EA48
	movs r1, #0
	subs r3, r5, r0
	mvns r1, r1
	b _0223EA4C
_0223EA48:
	subs r3, r0, r5
	movs r1, #1
_0223EA4C:
	subs r0, r2, #6
	strb r1, [r4, r0]
	cmp r3, #3
	blt _0223EA82
	cmp r3, #0x28
	bgt _0223EA82
	ldr r0, _0223EAC4 @ =0x021BF6BC
	ldrh r2, [r0, #0x1e]
	ldr r0, _0223EAD0 @ =0x00005CAC
	ldr r1, [r4, r0]
	cmp r1, r2
	ble _0223EA6C
	subs r2, r1, r2
	movs r1, #0
	mvns r1, r1
	b _0223EA70
_0223EA6C:
	subs r2, r2, r1
	movs r1, #1
_0223EA70:
	subs r0, #9
	strb r1, [r4, r0]
	cmp r2, #0x28
	bgt _0223EAB2
	ldr r0, _0223EAD4 @ =0x00005CA0
	adds r0, r4, r0
	bl ov72_0223EAD8
	b _0223EAB2
_0223EA82:
	cmp r3, #0x28
	bgt _0223EAB2
	ldr r0, _0223EAC4 @ =0x021BF6BC
	ldrh r2, [r0, #0x1e]
	ldr r0, _0223EAD0 @ =0x00005CAC
	ldr r1, [r4, r0]
	cmp r1, r2
	ble _0223EA9A
	subs r2, r1, r2
	movs r1, #0
	mvns r1, r1
	b _0223EA9E
_0223EA9A:
	subs r2, r2, r1
	movs r1, #1
_0223EA9E:
	subs r0, #9
	strb r1, [r4, r0]
	cmp r2, #3
	blt _0223EAB2
	cmp r2, #0x28
	bgt _0223EAB2
	ldr r0, _0223EAD4 @ =0x00005CA0
	adds r0, r4, r0
	bl ov72_0223EAD8
_0223EAB2:
	ldr r1, _0223EAC4 @ =0x021BF6BC
	ldr r0, _0223EACC @ =0x00005CA8
	ldrh r2, [r1, #0x1c]
	str r2, [r4, r0]
	ldrh r1, [r1, #0x1e]
	adds r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_0223EAC4: .4byte 0x021BF6BC
_0223EAC8: .4byte 0x0000FFFF
_0223EACC: .4byte 0x00005CA8
_0223EAD0: .4byte 0x00005CAC
_0223EAD4: .4byte 0x00005CA0
	thumb_func_end ov72_0223EA18

	thumb_func_start ov72_0223EAD8
ov72_0223EAD8: @ 0x0223EAD8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0223EAFC
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _0223EAFC
	ldr r0, _0223EB38 @ =0x0000069A
	bl FUN_020057D4
	cmp r0, #0
	bne _0223EAFC
	ldr r0, _0223EB38 @ =0x0000069A
	bl FUN_02005748
_0223EAFC:
	movs r0, #0
	ldrsb r1, [r4, r0]
	movs r0, #2
	ldrsb r0, [r4, r0]
	muls r0, r1, r0
	bmi _0223EB14
	movs r0, #1
	ldrsb r1, [r4, r0]
	movs r0, #3
	ldrsb r0, [r4, r0]
	muls r0, r1, r0
	bpl _0223EB24
_0223EB14:
	ldr r0, _0223EB38 @ =0x0000069A
	bl FUN_020057D4
	cmp r0, #0
	bne _0223EB24
	ldr r0, _0223EB38 @ =0x0000069A
	bl FUN_02005748
_0223EB24:
	movs r0, #2
	ldrsb r0, [r4, r0]
	strb r0, [r4]
	movs r0, #3
	ldrsb r0, [r4, r0]
	strb r0, [r4, #1]
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	pop {r4, pc}
	.align 2, 0
_0223EB38: .4byte 0x0000069A
	thumb_func_end ov72_0223EAD8
	@ 0x0223EB3C
