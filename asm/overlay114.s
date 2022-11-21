	.include "macros/function.inc"


	.text

	thumb_func_start ov114_0225C700
ov114_0225C700: @ 0x0225C700
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	adds r2, r6, #0
	movs r1, #0x10
	movs r0, #0
_0225C712:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0225C712
	bl FUN_02032E64
	strb r0, [r6, #8]
	bl FUN_0203608C
	movs r5, #0
	adds r7, r0, #0
	adds r4, r5, #0
_0225C72A:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _0225C740
	cmp r7, r4
	bne _0225C73A
	strb r5, [r6, #9]
_0225C73A:
	adds r0, r6, r5
	strb r4, [r0, #4]
	adds r5, r5, #1
_0225C740:
	adds r4, r4, #1
	cmp r4, #4
	blt _0225C72A
	ldrb r0, [r6, #8]
	cmp r5, r0
	beq _0225C750
	bl FUN_02022974
_0225C750:
	ldr r0, [sp]
	cmp r0, #0
	bne _0225C75A
	movs r0, #1
	strb r0, [r6, #0xb]
_0225C75A:
	ldr r0, [sp, #4]
	str r0, [r6]
	ldr r0, [sp, #8]
	strb r0, [r6, #0xa]
	ldr r0, [sp, #0x20]
	str r0, [r6, #0xc]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225C700

	thumb_func_start ov114_0225C76C
ov114_0225C76C: @ 0x0225C76C
	ldrb r2, [r0, #8]
	movs r3, #0
	cmp r2, #0
	ble _0225C788
_0225C774:
	adds r2, r0, r3
	ldrb r2, [r2, #4]
	cmp r1, r2
	bne _0225C780
	adds r0, r3, #0
	bx lr
_0225C780:
	ldrb r2, [r0, #8]
	adds r3, r3, #1
	cmp r3, r2
	blt _0225C774
_0225C788:
	movs r0, #4
	bx lr
	thumb_func_end ov114_0225C76C

	thumb_func_start ov114_0225C78C
ov114_0225C78C: @ 0x0225C78C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	adds r4, r1, #0
	cmp r4, r0
	blo _0225C79C
	bl FUN_02022974
_0225C79C:
	adds r0, r5, r4
	ldrb r0, [r0, #4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov114_0225C78C

	thumb_func_start ov114_0225C7A4
ov114_0225C7A4: @ 0x0225C7A4
	push {r3, lr}
	cmp r1, #4
	blo _0225C7B4
	blo _0225C7B0
	bl FUN_02022974
_0225C7B0:
	movs r0, #0
	pop {r3, pc}
_0225C7B4:
	ldr r2, [r0, #0xc]
	adds r0, r2, r1
	ldrb r1, [r0, #4]
	movs r0, #0
	mvns r0, r0
	cmp r1, r0
	bne _0225C7C6
	movs r0, #0
	pop {r3, pc}
_0225C7C6:
	adds r0, r2, r1
	ldrb r0, [r0, #8]
	pop {r3, pc}
	thumb_func_end ov114_0225C7A4

	thumb_func_start ov114_0225C7CC
ov114_0225C7CC: @ 0x0225C7CC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #4
	blo _0225C7E0
	blo _0225C7DC
	bl FUN_02022974
_0225C7DC:
	movs r0, #0
	pop {r3, r4, r5, pc}
_0225C7E0:
	ldrb r2, [r5, #0xb]
	cmp r2, #1
	bne _0225C800
	bl ov114_0225C76C
	ldrb r1, [r5, #9]
	cmp r0, r1
	bne _0225C7F8
	ldr r0, [r5]
	bl FUN_02025E38
	pop {r3, r4, r5, pc}
_0225C7F8:
	adds r0, r4, #0
	bl FUN_02032EE8
	pop {r3, r4, r5, pc}
_0225C800:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0225C80A
	bl FUN_02022974
_0225C80A:
	ldr r1, [r5, #0xc]
	lsls r0, r4, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x20]
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225C7CC

	thumb_func_start ov114_0225C814
ov114_0225C814: @ 0x0225C814
	ldr r3, _0225C81C @ =ov114_0225D48C
	adds r2, r1, #0
	movs r1, #0
	bx r3
	.align 2, 0
_0225C81C: .4byte ov114_0225D48C
	thumb_func_end ov114_0225C814

	thumb_func_start ov114_0225C820
ov114_0225C820: @ 0x0225C820
	ldr r3, _0225C828 @ =ov114_0225D48C
	adds r2, r1, #0
	movs r1, #1
	bx r3
	.align 2, 0
_0225C828: .4byte ov114_0225D48C
	thumb_func_end ov114_0225C820

	thumb_func_start ov114_0225C82C
ov114_0225C82C: @ 0x0225C82C
	ldr r3, _0225C834 @ =ov114_0225D48C
	adds r2, r1, #0
	movs r1, #2
	bx r3
	.align 2, 0
_0225C834: .4byte ov114_0225D48C
	thumb_func_end ov114_0225C82C

	thumb_func_start ov114_0225C838
ov114_0225C838: @ 0x0225C838
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0225C8B8 @ =0x000005EC
	ldr r0, [r5, r0]
	bl FUN_0200DA58
	movs r0, #0x5f
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl FUN_0200DA58
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov114_0225DFFC
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov114_0225E234
	ldrb r0, [r5, #0x10]
	movs r6, #0
	cmp r0, #0
	ble _0225C880
	movs r0, #0x81
	lsls r0, r0, #2
	adds r4, r5, r0
_0225C870:
	adds r0, r4, #0
	bl ov114_0225DDA0
	ldrb r0, [r5, #0x10]
	adds r6, r6, #1
	adds r4, #0x38
	cmp r6, r0
	blt _0225C870
_0225C880:
	adds r0, r5, #0
	adds r0, #0x4c
	bl ov114_0225D338
	adds r0, r5, #0
	bl ov114_0225D678
	adds r0, r5, #0
	adds r0, #0x3c
	bl ov114_0225D0D8
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov114_0225CD10
	adds r0, r5, #0
	adds r0, #0x84
	bl ov114_0225D058
	adds r0, r5, #0
	adds r0, #0x30
	bl ov114_0225CF84
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225C8B8: .4byte 0x000005EC
	thumb_func_end ov114_0225C838

	thumb_func_start ov114_0225C8BC
ov114_0225C8BC: @ 0x0225C8BC
	ldrb r0, [r0]
	cmp r0, #0x10
	blo _0225C8C6
	movs r0, #1
	bx lr
_0225C8C6:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov114_0225C8BC

	thumb_func_start ov114_0225C8CC
ov114_0225C8CC: @ 0x0225C8CC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #1
	beq _0225C8DA
	bl FUN_02022974
_0225C8DA:
	ldrb r0, [r4, #6]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov114_0225C8CC

	thumb_func_start ov114_0225C8E0
ov114_0225C8E0: @ 0x0225C8E0
	push {r3, lr}
	adds r3, r2, #0
	movs r2, #0
	bl ov114_0225E5A8
	pop {r3, pc}
	thumb_func_end ov114_0225C8E0

	thumb_func_start ov114_0225C8EC
ov114_0225C8EC: @ 0x0225C8EC
	push {r3, lr}
	adds r3, r2, #0
	movs r2, #1
	bl ov114_0225E5A8
	pop {r3, pc}
	thumb_func_end ov114_0225C8EC

	thumb_func_start ov114_0225C8F8
ov114_0225C8F8: @ 0x0225C8F8
	push {r3, lr}
	adds r3, r2, #0
	movs r2, #2
	bl ov114_0225E5A8
	pop {r3, pc}
	thumb_func_end ov114_0225C8F8

	thumb_func_start ov114_0225C904
ov114_0225C904: @ 0x0225C904
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0225C990 @ =0x00000644
	ldr r0, [r5, r0]
	bl FUN_0200DA58
	ldr r0, _0225C994 @ =0x00000648
	ldr r0, [r5, r0]
	bl FUN_0200DA58
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov114_0225DFFC
	ldrb r0, [r5, #0x14]
	movs r6, #0
	cmp r0, #0
	ble _0225C940
	movs r0, #0x97
	lsls r0, r0, #2
	adds r4, r5, r0
_0225C930:
	adds r0, r4, #0
	bl ov114_0225DDA0
	ldrb r0, [r5, #0x14]
	adds r6, r6, #1
	adds r4, #0x38
	cmp r6, r0
	blt _0225C930
_0225C940:
	movs r0, #0x7a
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov114_0225F270
	adds r0, r5, #0
	bl ov114_0225E854
	adds r0, r5, #0
	adds r0, #0x68
	bl ov114_0225D338
	adds r0, r5, #0
	adds r0, #0x58
	bl ov114_0225D0D8
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov114_0225CD10
	adds r0, r5, #0
	adds r0, #0xa0
	bl ov114_0225D058
	adds r0, r5, #0
	adds r0, #0x4c
	bl ov114_0225CF84
	ldr r0, _0225C998 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0225C99C @ =0x04001050
	strh r1, [r0]
	bl FUN_0201DC3C
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225C990: .4byte 0x00000644
_0225C994: .4byte 0x00000648
_0225C998: .4byte 0x04000050
_0225C99C: .4byte 0x04001050
	thumb_func_end ov114_0225C904

	thumb_func_start ov114_0225C9A0
ov114_0225C9A0: @ 0x0225C9A0
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end ov114_0225C9A0

	thumb_func_start ov114_0225C9A4
ov114_0225C9A4: @ 0x0225C9A4
	ldrb r0, [r0, #8]
	bx lr
	thumb_func_end ov114_0225C9A4

	thumb_func_start ov114_0225C9A8
ov114_0225C9A8: @ 0x0225C9A8
	push {r3, r4, r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r7, #0
	mov ip, r1
	adds r0, r1, #0
	beq _0225C9E8
	adds r3, r5, #0
_0225C9B8:
	adds r2, r7, #0
	cmp r7, #0
	ble _0225C9DA
	add r0, sp, #0
	adds r4, r0, r7
_0225C9C2:
	subs r0, r4, #1
	ldrb r1, [r0]
	ldr r0, [r3]
	lsls r6, r1, #2
	ldr r6, [r5, r6]
	cmp r0, r6
	bls _0225C9DA
	subs r2, r2, #1
	strb r1, [r4]
	subs r4, r4, #1
	cmp r2, #0
	bgt _0225C9C2
_0225C9DA:
	add r0, sp, #0
	strb r7, [r0, r2]
	adds r7, r7, #1
	mov r0, ip
	adds r3, r3, #4
	cmp r7, r0
	blo _0225C9B8
_0225C9E8:
	mov r0, ip
	movs r4, #0
	cmp r0, #0
	bls _0225CA1E
	add r3, sp, #0
_0225C9F2:
	adds r2, r4, #0
	cmp r4, #0
	ble _0225CA0E
	subs r0, r3, #1
	ldrb r1, [r0]
	ldrb r0, [r3]
	lsls r6, r1, #2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r6, [r5, r6]
	cmp r0, r6
	bne _0225CA0E
	adds r0, r5, r1
	ldrb r2, [r0, #0x10]
_0225CA0E:
	ldrb r0, [r3]
	adds r4, r4, #1
	adds r3, r3, #1
	adds r0, r5, r0
	strb r2, [r0, #0x10]
	mov r0, ip
	cmp r4, r0
	blo _0225C9F2
_0225CA1E:
	add sp, #4
	pop {r3, r4, r5, r6, r7}
	bx lr
	thumb_func_end ov114_0225C9A8

	thumb_func_start ov114_0225CA24
ov114_0225CA24: @ 0x0225CA24
	strb r1, [r0, #6]
	movs r1, #1
	strb r1, [r0, #7]
	bx lr
	thumb_func_end ov114_0225CA24

	thumb_func_start ov114_0225CA2C
ov114_0225CA2C: @ 0x0225CA2C
	push {r3, lr}
	adds r3, r0, #0
	ldrb r0, [r3, #0x15]
	cmp r0, #0
	bne _0225CA42
	movs r0, #0x7a
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrb r3, [r3, #0x14]
	bl ov114_0225F424
_0225CA42:
	pop {r3, pc}
	thumb_func_end ov114_0225CA2C

	thumb_func_start ov114_0225CA44
ov114_0225CA44: @ 0x0225CA44
	movs r2, #0x7a
	lsls r2, r2, #2
	ldr r3, _0225CA50 @ =ov114_0225F47C
	adds r0, r0, r2
	bx r3
	nop
_0225CA50: .4byte ov114_0225F47C
	thumb_func_end ov114_0225CA44

	thumb_func_start ov114_0225CA54
ov114_0225CA54: @ 0x0225CA54
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	movs r4, #0
	cmp r0, #0
	beq _0225CA94
	bl FUN_02035E18
	ldrb r1, [r5, #8]
	cmp r1, r0
	beq _0225CA6C
	movs r4, #1
_0225CA6C:
	bl FUN_02038284
	cmp r0, #1
	bne _0225CA76
	movs r4, #1
_0225CA76:
	bl FUN_020380E4
	cmp r0, #2
	blt _0225CA80
	movs r4, #1
_0225CA80:
	cmp r4, #1
	bne _0225CA8A
	ldr r0, [r5, #0xc]
	movs r1, #1
	str r1, [r0, #0x1c]
_0225CA8A:
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	bne _0225CA94
	movs r4, #1
_0225CA94:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225CA54

	thumb_func_start ov114_0225CA98
ov114_0225CA98: @ 0x0225CA98
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0225CAA6
	bl FUN_02022974
_0225CAA6:
	ldr r0, [r4, #0xc]
	ldr r0, [r0, #0x1c]
	cmp r0, #1
	beq _0225CAB2
	bl FUN_02022974
_0225CAB2:
	bl FUN_02032AAC
	cmp r0, #1
	bne _0225CAC4
	bl FUN_02032A70
	bl FUN_0203888C
	b _0225CAD0
_0225CAC4:
	bl FUN_020382C0
	cmp r0, #1
	bne _0225CAD0
	movs r0, #1
	pop {r4, pc}
_0225CAD0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov114_0225CA98

	thumb_func_start ov114_0225CAD4
ov114_0225CAD4: @ 0x0225CAD4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r1, #0
	movs r1, #0x73
	adds r6, r0, #0
	adds r0, r5, #0
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x73
	adds r4, r0, #0
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	str r6, [r4, #8]
	movs r0, #0xab
	adds r1, r5, #0
	bl FUN_02006C24
	str r0, [r4, #0xc]
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #1
	adds r2, r5, #0
	bl ov114_0225CCD0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _0225CB34 @ =0x00001388
	movs r2, #3
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	adds r0, r4, #0
	ldr r1, [r4, #0xc]
	adds r0, #0x10
	adds r3, r2, #0
	bl ov114_0225CD54
	str r0, [r4, #0x28]
	adds r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0225CB34: .4byte 0x00001388
	thumb_func_end ov114_0225CAD4

	thumb_func_start ov114_0225CB38
ov114_0225CB38: @ 0x0225CB38
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0225CB4A
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x2c]
_0225CB4A:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _0225CB54
	bl FUN_02021BD4
_0225CB54:
	adds r0, r4, #0
	adds r0, #0x34
	bl ov114_0225FBF0
	adds r0, r4, #0
	adds r0, #0x10
	bl ov114_0225CD10
	ldr r0, [r4, #0xc]
	bl FUN_02006CA8
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov114_0225CB38

	thumb_func_start ov114_0225CB74
ov114_0225CB74: @ 0x0225CB74
	push {r3, lr}
	ldr r0, [r0, #0x14]
	ldr r1, _0225CB88 @ =0x00001388
	bl FUN_02009DC8
	movs r1, #1
	bl FUN_0200A760
	pop {r3, pc}
	nop
_0225CB88: .4byte 0x00001388
	thumb_func_end ov114_0225CB74

	thumb_func_start ov114_0225CB8C
ov114_0225CB8C: @ 0x0225CB8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0225CB9A
	bl FUN_02022974
_0225CB9A:
	ldr r0, _0225CBAC @ =ov114_0225FDC8
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x2c]
	movs r0, #1
	strh r0, [r4, #4]
	pop {r4, pc}
	.align 2, 0
_0225CBAC: .4byte ov114_0225FDC8
	thumb_func_end ov114_0225CB8C

	thumb_func_start ov114_0225CBB0
ov114_0225CBB0: @ 0x0225CBB0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _0225CBBE
	bl FUN_02022974
_0225CBBE:
	ldr r0, _0225CBD8 @ =ov114_0225FF54
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	str r0, [r4, #0x2c]
	movs r0, #1
	strh r0, [r4, #4]
	ldr r0, _0225CBDC @ =0x000005F1
	bl FUN_02005748
	pop {r4, pc}
	nop
_0225CBD8: .4byte ov114_0225FF54
_0225CBDC: .4byte 0x000005F1
	thumb_func_end ov114_0225CBB0

	thumb_func_start ov114_0225CBE0
ov114_0225CBE0: @ 0x0225CBE0
	ldrh r0, [r0, #4]
	cmp r0, #0
	bne _0225CBEA
	movs r0, #1
	bx lr
_0225CBEA:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov114_0225CBE0

	thumb_func_start ov114_0225CBF0
ov114_0225CBF0: @ 0x0225CBF0
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	adds r5, r0, #0
	adds r7, r2, #0
	adds r0, r3, #0
	adds r6, r1, #0
	lsls r2, r4, #0xc
	str r3, [sp]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	adds r2, r0, #0
	subs r0, r7, r6
	movs r7, #2
	movs r3, #0
	lsls r7, r7, #0xa
	adds r2, r2, r7
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r1
	subs r2, r0, r2
	asrs r1, r2, #0x1f
	lsrs r0, r2, #0x13
	lsls r1, r1, #0xd
	orrs r1, r0
	lsls r0, r2, #0xd
	adds r0, r0, r7
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	adds r1, r4, #0
	muls r1, r4, r1
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	str r6, [r5]
	ldr r1, [sp]
	str r6, [r5, #4]
	str r1, [r5, #8]
	str r0, [r5, #0xc]
	str r4, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225CBF0

	thumb_func_start ov114_0225CC4C
ov114_0225CC4C: @ 0x0225CC4C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	adds r4, r1, #0
	cmp r4, r0
	blt _0225CC5E
	adds r4, r0, #0
	movs r7, #1
	b _0225CC60
_0225CC5E:
	movs r7, #0
_0225CC60:
	ldr r0, [r5, #8]
	lsls r2, r4, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsrs r6, r2, #0xc
	lsls r0, r1, #0x14
	adds r2, r4, #0
	orrs r6, r0
	ldr r0, [r5, #0xc]
	muls r2, r4, r2
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	lsls r1, r2, #2
	blx FUN_020BCFD0
	ldr r1, [r5, #4]
	adds r0, r6, r0
	adds r0, r1, r0
	str r0, [r5]
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225CC4C

	thumb_func_start ov114_0225CCB0
ov114_0225CCB0: @ 0x0225CCB0
	push {r3, r4}
	ldr r2, [r0, #8]
	adds r0, #0xc
	lsrs r4, r2, #1
	movs r3, #0
	cmp r4, #0
	ble _0225CCCC
_0225CCBE:
	ldrh r2, [r0]
	adds r3, r3, #1
	adds r2, r2, r1
	strh r2, [r0]
	adds r0, r0, #2
	cmp r3, r4
	blt _0225CCBE
_0225CCCC:
	pop {r3, r4}
	bx lr
	thumb_func_end ov114_0225CCB0

	thumb_func_start ov114_0225CCD0
ov114_0225CCD0: @ 0x0225CCD0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	adds r6, r1, #0
	adds r7, r2, #0
	movs r4, #0
	adds r5, r0, #0
_0225CCDC:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl FUN_02009714
	adds r4, r4, #1
	stm r5!, {r0}
	cmp r4, #4
	blt _0225CCDC
	movs r0, #0x38
	adds r4, r6, #0
	muls r4, r0, r4
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_02018144
	ldr r1, [sp]
	adds r2, r4, #0
	str r0, [r1, #0x10]
	movs r1, #0
	blx FUN_020D5124
	ldr r0, [sp]
	str r6, [r0, #0x14]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225CCD0

	thumb_func_start ov114_0225CD10
ov114_0225CD10: @ 0x0225CD10
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	movs r6, #0
	cmp r0, #0
	bls _0225CD38
	adds r4, r6, #0
_0225CD1E:
	ldr r1, [r5, #0x10]
	ldr r0, [r1, r4]
	cmp r0, #1
	bne _0225CD2E
	adds r0, r5, #0
	adds r1, r1, r4
	bl ov114_0225CEB8
_0225CD2E:
	ldr r0, [r5, #0x14]
	adds r6, r6, #1
	adds r4, #0x38
	cmp r6, r0
	blo _0225CD1E
_0225CD38:
	movs r6, #0
	adds r4, r5, #0
_0225CD3C:
	ldr r0, [r4]
	bl FUN_02009754
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #4
	blt _0225CD3C
	ldr r0, [r5, #0x10]
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov114_0225CD10

	thumb_func_start ov114_0225CD54
ov114_0225CD54: @ 0x0225CD54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r6, [r5, #0x14]
	movs r4, #0
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	adds r7, r3, #0
	adds r1, r4, #0
	cmp r6, #0
	bls _0225CD84
	ldr r3, [r5, #0x10]
	adds r2, r3, #0
_0225CD6E:
	ldr r0, [r2]
	cmp r0, #0
	bne _0225CD7C
	movs r0, #0x38
	muls r0, r1, r0
	adds r4, r3, r0
	b _0225CD84
_0225CD7C:
	adds r1, r1, #1
	adds r2, #0x38
	cmp r1, r6
	blo _0225CD6E
_0225CD84:
	cmp r4, #0
	bne _0225CD8C
	bl FUN_02022974
_0225CD8C:
	ldr r0, [sp, #0x38]
	str r7, [sp]
	str r0, [sp, #4]
	ldr r0, [sp, #0x3c]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [sp, #0x40]
	ldr r3, [sp, #0x1c]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	bl ov114_0225CDE0
	adds r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov114_0225CD54

	thumb_func_start ov114_0225CDB4
ov114_0225CDB4: @ 0x0225CDB4
	push {r3, lr}
	sub sp, #0x20
	adds r0, #0x14
	str r0, [sp, #4]
	lsls r0, r2, #0xc
	str r0, [sp, #8]
	lsls r0, r3, #0xc
	str r0, [sp, #0xc]
	str r1, [sp]
	add r0, sp, #0x18
	ldrh r0, [r0, #0x10]
	str r0, [sp, #0x14]
	movs r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x1c]
	add r0, sp, #0
	bl FUN_02021B90
	add sp, #0x20
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov114_0225CDB4

	thumb_func_start ov114_0225CDE0
ov114_0225CDE0: @ 0x0225CDE0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	cmp r0, #0
	beq _0225CDF6
	bl FUN_02022974
_0225CDF6:
	movs r0, #1
	ldr r7, [sp, #0x58]
	str r0, [r4]
	str r7, [sp]
	ldr r6, [sp, #0x5c]
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x4c]
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r4, #4]
	str r7, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x30]
	movs r3, #0
	bl FUN_02009B04
	str r0, [r4, #8]
	str r7, [sp]
	movs r0, #2
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x50]
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r4, #0xc]
	str r7, [sp]
	movs r0, #3
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5, #0xc]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x54]
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	bl FUN_0200A3DC
	cmp r0, #0
	bne _0225CE66
	bl FUN_02022974
_0225CE66:
	ldr r0, [r4, #4]
	bl FUN_02009D4C
	ldr r0, [r4, #8]
	bl FUN_0200A640
	cmp r0, #0
	bne _0225CE7A
	bl FUN_02022974
_0225CE7A:
	ldr r0, [r4, #8]
	bl FUN_02009D4C
	movs r0, #0
	str r7, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	movs r1, #1
	str r1, [sp, #0x10]
	ldr r1, [r5]
	adds r4, #0x14
	str r1, [sp, #0x14]
	ldr r1, [r5, #4]
	adds r2, r7, #0
	str r1, [sp, #0x18]
	ldr r1, [r5, #8]
	adds r3, r7, #0
	str r1, [sp, #0x1c]
	ldr r1, [r5, #0xc]
	str r1, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_020093B4
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov114_0225CDE0

	thumb_func_start ov114_0225CEB8
ov114_0225CEB8: @ 0x0225CEB8
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #1
	beq _0225CEC8
	bl FUN_02022974
_0225CEC8:
	movs r0, #0
	str r0, [r4]
	ldr r0, [r4, #4]
	bl FUN_0200A4E4
	ldr r0, [r4, #8]
	bl FUN_0200A6DC
	movs r6, #0
_0225CEDA:
	ldr r0, [r5]
	ldr r1, [r4, #4]
	bl FUN_02009D68
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #4
	blt _0225CEDA
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov114_0225CEB8

	thumb_func_start ov114_0225CEF0
ov114_0225CEF0: @ 0x0225CEF0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0x18]
	adds r6, r2, #0
	str r0, [sp, #0x18]
	adds r0, r1, #0
	str r3, [sp]
	bl FUN_02018368
	ldr r0, [sp, #0x18]
	bl FUN_02018340
	str r0, [r5]
	ldr r0, [sp]
	str r6, [r5, #4]
	str r0, [r5, #8]
	ldr r0, _0225CF80 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	ldr r0, [sp]
	movs r7, #0
	cmp r0, #0
	bls _0225CF7C
	adds r4, r6, #0
_0225CF24:
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r6, #4
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4]
	ldr r3, [sp, #0x18]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x20
	movs r2, #0
	bl FUN_02019690
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	ldr r1, [r4]
	movs r2, #0
	lsls r1, r1, #0x18
	ldr r0, [r5]
	lsrs r1, r1, #0x18
	adds r3, r2, #0
	bl FUN_02019184
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	ldr r0, [sp]
	adds r7, r7, #1
	adds r6, #0x20
	adds r4, #0x20
	cmp r7, r0
	blo _0225CF24
_0225CF7C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225CF80: .4byte 0x021BF6DC
	thumb_func_end ov114_0225CEF0

	thumb_func_start ov114_0225CF84
ov114_0225CF84: @ 0x0225CF84
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r1, #3
	ldr r0, [r5]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_02019184
	ldr r0, [r5, #8]
	movs r6, #0
	cmp r0, #0
	bls _0225CFB6
	adds r4, r6, #0
_0225CF9E:
	ldr r1, [r5, #4]
	ldr r0, [r5]
	ldr r1, [r1, r4]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019044
	ldr r0, [r5, #8]
	adds r6, r6, #1
	adds r4, #0x20
	cmp r6, r0
	blo _0225CF9E
_0225CFB6:
	ldr r0, [r5]
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov114_0225CF84

	thumb_func_start ov114_0225CFC0
ov114_0225CFC0: @ 0x0225CFC0
	ldr r3, _0225CFC8 @ =FUN_0201C2B8
	ldr r0, [r0]
	bx r3
	nop
_0225CFC8: .4byte FUN_0201C2B8
	thumb_func_end ov114_0225CFC0

	thumb_func_start ov114_0225CFCC
ov114_0225CFCC: @ 0x0225CFCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	str r1, [sp, #0x14]
	adds r6, r2, #0
	str r3, [sp, #0x18]
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	ldr r4, [sp, #0x40]
	str r0, [sp, #8]
	movs r3, #0x1f
	str r3, [sp, #0xc]
	adds r2, r0, #0
	str r4, [sp, #0x10]
	bl FUN_0200A784
	ldr r3, _0225D054 @ =0x0226017C
	add r2, sp, #0x1c
	adds r7, r2, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r1, #0x10
	adds r0, r7, #0
	adds r2, r1, #0
	str r6, [sp, #0x1c]
	str r4, [sp, #0x28]
	bl FUN_0201E88C
	ldr r0, [sp, #0x18]
	adds r1, r4, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	ldr r0, [sp, #0x14]
	adds r1, r5, #4
	adds r2, r4, #0
	bl FUN_020095C4
	str r0, [r5]
	bl FUN_02039734
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D054: .4byte 0x0226017C
	thumb_func_end ov114_0225CFCC

	thumb_func_start ov114_0225D058
ov114_0225D058: @ 0x0225D058
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_02021964
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov114_0225D058

	thumb_func_start ov114_0225D070
ov114_0225D070: @ 0x0225D070
	ldr r3, _0225D078 @ =FUN_020219F8
	ldr r0, [r0]
	bx r3
	nop
_0225D078: .4byte FUN_020219F8
	thumb_func_end ov114_0225D070

	thumb_func_start ov114_0225D07C
ov114_0225D07C: @ 0x0225D07C
	ldr r3, _0225D080 @ =FUN_0200A858
	bx r3
	.align 2, 0
_0225D080: .4byte FUN_0200A858
	thumb_func_end ov114_0225D07C

	thumb_func_start ov114_0225D084
ov114_0225D084: @ 0x0225D084
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r2, _0225D0D4 @ =0x0000019B
	movs r0, #0
	movs r1, #0x1a
	adds r3, r4, #0
	bl FUN_0200B144
	str r0, [r5]
	movs r0, #8
	movs r1, #0x40
	adds r2, r4, #0
	bl FUN_0200B368
	str r0, [r5, #4]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	str r0, [r5, #8]
	movs r0, #0x80
	adds r1, r4, #0
	bl FUN_02023790
	movs r1, #6
	str r0, [r5, #0xc]
	movs r0, #0
	lsls r1, r1, #6
	adds r2, r4, #0
	bl FUN_02002E98
	movs r1, #6
	movs r0, #4
	lsls r1, r1, #6
	adds r2, r4, #0
	bl FUN_02002E98
	pop {r3, r4, r5, pc}
	nop
_0225D0D4: .4byte 0x0000019B
	thumb_func_end ov114_0225D084

	thumb_func_start ov114_0225D0D8
ov114_0225D0D8: @ 0x0225D0D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_020237BC
	ldr r0, [r4, #8]
	bl FUN_020237BC
	ldr r0, [r4, #4]
	bl FUN_0200B3F0
	ldr r0, [r4]
	bl FUN_0200B190
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov114_0225D0D8

	thumb_func_start ov114_0225D0F8
ov114_0225D0F8: @ 0x0225D0F8
	ldr r3, _0225D100 @ =FUN_0200C41C
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D100: .4byte FUN_0200C41C
	thumb_func_end ov114_0225D0F8

	thumb_func_start ov114_0225D104
ov114_0225D104: @ 0x0225D104
	ldr r3, _0225D110 @ =FUN_0200B498
	adds r2, r1, #0
	ldr r0, [r0, #4]
	movs r1, #0
	bx r3
	nop
_0225D110: .4byte FUN_0200B498
	thumb_func_end ov114_0225D104

	thumb_func_start ov114_0225D114
ov114_0225D114: @ 0x0225D114
	ldr r3, _0225D120 @ =FUN_0200BDD0
	adds r2, r1, #0
	ldr r0, [r0, #4]
	movs r1, #0
	bx r3
	nop
_0225D120: .4byte FUN_0200BDD0
	thumb_func_end ov114_0225D114

	thumb_func_start ov114_0225D124
ov114_0225D124: @ 0x0225D124
	push {r4, lr}
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r0, #4]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0200BE08
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov114_0225D124

	thumb_func_start ov114_0225D138
ov114_0225D138: @ 0x0225D138
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	adds r3, r2, #0
	ldr r0, [r0, #4]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0200B60C
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov114_0225D138

	thumb_func_start ov114_0225D154
ov114_0225D154: @ 0x0225D154
	push {r3, lr}
	sub sp, #8
	adds r2, r1, #0
	movs r1, #1
	str r1, [sp]
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	movs r1, #0
	movs r3, #2
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov114_0225D154

	thumb_func_start ov114_0225D170
ov114_0225D170: @ 0x0225D170
	ldr r3, _0225D17C @ =FUN_0200C120
	adds r2, r1, #0
	ldr r0, [r0, #4]
	movs r1, #1
	bx r3
	nop
_0225D17C: .4byte FUN_0200C120
	thumb_func_end ov114_0225D170

	thumb_func_start ov114_0225D180
ov114_0225D180: @ 0x0225D180
	ldr r3, _0225D18C @ =FUN_0200C0B0
	adds r2, r1, #0
	ldr r0, [r0, #4]
	movs r1, #0
	bx r3
	nop
_0225D18C: .4byte FUN_0200C0B0
	thumb_func_end ov114_0225D180

	thumb_func_start ov114_0225D190
ov114_0225D190: @ 0x0225D190
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	ldr r0, [r5]
	ldr r2, [r5, #0xc]
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	ldr r2, [r5, #0xc]
	adds r1, r4, #0
	bl FUN_0200C388
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225D190

	thumb_func_start ov114_0225D1AC
ov114_0225D1AC: @ 0x0225D1AC
	push {r4, lr}
	sub sp, #8
	add r4, sp, #0
	ldrb r4, [r4, #0x10]
	str r4, [sp]
	ldr r4, _0225D1C4 @ =0x000F0E00
	str r4, [sp, #4]
	bl ov114_0225D254
	add sp, #8
	pop {r4, pc}
	nop
_0225D1C4: .4byte 0x000F0E00
	thumb_func_end ov114_0225D1AC

	thumb_func_start ov114_0225D1C8
ov114_0225D1C8: @ 0x0225D1C8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r2, #0
	ldr r0, [r5]
	ldr r2, [r5, #0xc]
	adds r4, r3, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl FUN_0200C388
	movs r0, #0
	ldr r1, [r5, #8]
	adds r2, r0, #0
	bl FUN_02002D7C
	subs r3, r4, r0
	bpl _0225D1F4
	movs r3, #0
_0225D1F4:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	movs r1, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225D214 @ =0x000F0E00
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #8]
	adds r0, r6, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225D214: .4byte 0x000F0E00
	thumb_func_end ov114_0225D1C8

	thumb_func_start ov114_0225D218
ov114_0225D218: @ 0x0225D218
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r2, #0
	ldr r0, [r5]
	ldr r2, [r5, #0xc]
	adds r4, r3, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	ldr r2, [r5, #0xc]
	adds r1, r4, #0
	bl FUN_0200C388
	movs r3, #0
	ldr r0, [sp, #0x20]
	str r3, [sp]
	str r0, [sp, #4]
	ldr r0, _0225D250 @ =0x0001020F
	movs r1, #1
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r2, r4, #0
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225D250: .4byte 0x0001020F
	thumb_func_end ov114_0225D218

	thumb_func_start ov114_0225D254
ov114_0225D254: @ 0x0225D254
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	ldr r0, [r5]
	ldr r2, [r5, #0xc]
	adds r6, r3, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r5, #0xc]
	bl FUN_0200C388
	add r0, sp, #0x10
	ldrb r0, [r0, #0x10]
	movs r1, #0
	adds r3, r6, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x24]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #8]
	adds r0, r4, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov114_0225D254

	thumb_func_start ov114_0225D290
ov114_0225D290: @ 0x0225D290
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x30]
	adds r7, r1, #0
	str r0, [sp, #0x30]
	adds r0, r2, #0
	str r3, [sp, #0x18]
	bl FUN_02025E44
	bl FUN_02027B50
	adds r4, r0, #0
	movs r0, #1
	bl FUN_020959F4
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	movs r1, #2
	str r0, [sp, #4]
	ldr r0, [r7]
	movs r2, #1
	movs r3, #0xd
	bl FUN_0200DD0C
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x30]
	movs r1, #4
	str r0, [sp, #4]
	ldr r0, [r7]
	movs r2, #1
	movs r3, #0xd
	bl FUN_0200DD0C
	ldr r4, [sp, #0x14]
	movs r6, #0
	adds r5, r4, #0
_0225D2E2:
	cmp r6, #0
	bne _0225D2EC
	movs r2, #2
	movs r0, #0x13
	b _0225D2F0
_0225D2EC:
	movs r2, #4
	movs r0, #1
_0225D2F0:
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xc
	str r0, [sp, #0xc]
	movs r0, #0x1f
	str r0, [sp, #0x10]
	lsls r2, r2, #0x18
	ldr r0, [r7]
	adds r1, r4, #0
	lsrs r2, r2, #0x18
	movs r3, #2
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r1, [sp, #0x30]
	movs r0, #0x80
	bl FUN_02023790
	str r0, [r5, #0x24]
	adds r6, r6, #1
	adds r4, #0x10
	adds r5, r5, #4
	cmp r6, #2
	blt _0225D2E2
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	str r1, [r0, #0x34]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225D290

	thumb_func_start ov114_0225D338
ov114_0225D338: @ 0x0225D338
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	adds r5, r7, #0
	adds r6, r7, #0
_0225D342:
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov114_0225D400
	ldr r0, [r5, #0x24]
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, r5, #4
	adds r6, #0x10
	cmp r4, #2
	blt _0225D342
	bl FUN_02095A24
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225D338

	thumb_func_start ov114_0225D368
ov114_0225D368: @ 0x0225D368
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	str r1, [sp, #4]
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r0, #1
	bne _0225D38E
	ldr r2, _0225D3FC @ =0x02260234
	movs r1, #0
_0225D37E:
	ldrh r0, [r2]
	cmp r4, r0
	bne _0225D386
	ldrh r4, [r2, #2]
_0225D386:
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, #0x14
	blo _0225D37E
_0225D38E:
	adds r0, r5, #0
	str r0, [sp, #8]
	adds r0, #0x20
	str r0, [sp, #8]
	lsls r0, r6, #1
	ldr r1, [sp, #8]
	str r0, [sp, #0xc]
	ldrh r0, [r1, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D3B8
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldrh r0, [r1, r0]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D3B8:
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov114_0225D474
	lsls r7, r6, #4
	adds r0, r5, r7
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #1
	lsls r3, r6, #2
	str r0, [sp]
	adds r3, r5, r3
	ldr r0, [sp, #4]
	ldr r3, [r3, #0x24]
	adds r1, r4, #0
	adds r2, r5, r7
	bl ov114_0225D218
	ldr r2, [sp, #8]
	ldr r1, [sp, #0xc]
	movs r3, #0xd
	strh r0, [r2, r1]
	movs r1, #1
	adds r0, r5, r7
	adds r2, r1, #0
	bl FUN_0200E060
	adds r0, r5, r7
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D3FC: .4byte 0x02260234
	thumb_func_end ov114_0225D368

	thumb_func_start ov114_0225D400
ov114_0225D400: @ 0x0225D400
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov114_0225D474
	adds r6, r5, #0
	adds r6, #0x20
	lsls r7, r4, #1
	ldrh r0, [r6, r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225D428
	ldrh r0, [r6, r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225D428:
	lsls r4, r4, #4
	adds r0, r5, r4
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, r4
	bl FUN_0201AD10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225D400

	thumb_func_start ov114_0225D43C
ov114_0225D43C: @ 0x0225D43C
	push {r3, lr}
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0x20]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0225D454
	movs r0, #1
	pop {r3, pc}
_0225D454:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov114_0225D43C

	thumb_func_start ov114_0225D458
ov114_0225D458: @ 0x0225D458
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x2c
	lsls r4, r1, #2
	ldr r2, [r5, r4]
	cmp r2, #0
	bne _0225D472
	lsls r1, r1, #4
	adds r0, r0, r1
	movs r1, #1
	bl FUN_0200E7FC
	str r0, [r5, r4]
_0225D472:
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225D458

	thumb_func_start ov114_0225D474
ov114_0225D474: @ 0x0225D474
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	lsls r5, r1, #2
	adds r4, #0x2c
	ldr r0, [r4, r5]
	cmp r0, #0
	beq _0225D48A
	bl FUN_0200EBC8
	movs r0, #0
	str r0, [r4, r5]
_0225D48A:
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225D474

	thumb_func_start ov114_0225D48C
ov114_0225D48C: @ 0x0225D48C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r6, r0, #0
	adds r5, r2, #0
	ldr r1, _0225D590 @ =0x000004BB
	movs r0, #0x13
	movs r2, #0
	bl FUN_02004550
	ldr r1, _0225D594 @ =0x000005F4
	adds r0, r5, #0
	bl FUN_02018144
	ldr r2, _0225D594 @ =0x000005F4
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r2, r4, #0
	adds r2, #8
	movs r1, #0x10
_0225D4B6:
	ldrb r0, [r6]
	adds r6, r6, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0225D4B6
	ldr r3, _0225D598 @ =0x04000050
	strh r7, [r4, #4]
	movs r1, #0
	strh r1, [r3]
	ldr r0, _0225D59C @ =0x04001050
	subs r3, #0x50
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, _0225D5A0 @ =0xFFFF1FFF
	subs r0, #0x50
	ands r2, r1
	str r2, [r3]
	ldr r2, [r0]
	ands r1, r2
	str r1, [r0]
	ldr r0, _0225D5A4 @ =0x022601B4
	bl FUN_0201FE94
	adds r0, r4, #0
	strh r5, [r4, #2]
	bl ov114_02260060
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x18
	adds r1, #8
	bl ov114_0225E0F8
	adds r0, r4, #0
	ldr r1, _0225D5A8 @ =0x0226018C
	ldr r2, _0225D5AC @ =0x02260284
	adds r0, #0x30
	movs r3, #5
	str r5, [sp]
	bl ov114_0225CEF0
	adds r0, r4, #0
	movs r2, #1
	adds r0, #0x84
	movs r1, #0x10
	adds r3, r2, #0
	str r5, [sp]
	bl ov114_0225CFCC
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #1
	adds r2, r5, #0
	bl ov114_0225CCD0
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	bl ov114_0225D084
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov114_0225D5BC
	adds r0, r4, #0
	ldrb r1, [r4, #0x11]
	adds r0, #8
	bl ov114_0225C78C
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #8
	bl ov114_0225C7A4
	str r5, [sp]
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r4, #0
	ldr r2, [r4, #8]
	adds r0, #0x4c
	adds r1, #0x30
	bl ov114_0225D290
	ldr r0, _0225D5B0 @ =ov114_0225D688
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	ldr r1, _0225D5B4 @ =0x000005EC
	movs r2, #0
	str r0, [r4, r1]
	ldr r0, _0225D5B8 @ =ov114_0225DA0C
	adds r1, r4, #0
	bl FUN_0200DA3C
	movs r1, #0x5f
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _0225D58A
	adds r0, r5, #0
	bl FUN_021D1E74
_0225D58A:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D590: .4byte 0x000004BB
_0225D594: .4byte 0x000005F4
_0225D598: .4byte 0x04000050
_0225D59C: .4byte 0x04001050
_0225D5A0: .4byte 0xFFFF1FFF
_0225D5A4: .4byte 0x022601B4
_0225D5A8: .4byte 0x0226018C
_0225D5AC: .4byte 0x02260284
_0225D5B0: .4byte ov114_0225D688
_0225D5B4: .4byte 0x000005EC
_0225D5B8: .4byte ov114_0225DA0C
	thumb_func_end ov114_0225D48C

	thumb_func_start ov114_0225D5BC
ov114_0225D5BC: @ 0x0225D5BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0xab
	adds r4, r1, #0
	bl FUN_02006C24
	movs r1, #0x12
	lsls r1, r1, #4
	str r1, [sp]
	movs r2, #0
	movs r1, #4
	adds r3, r2, #0
	adds r6, r0, #0
	str r4, [sp, #4]
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r6, #0
	movs r1, #6
	movs r3, #1
	bl FUN_020070E8
	movs r3, #2
	lsls r3, r3, #8
	adds r0, r6, #0
	movs r1, #9
	movs r2, #0
	adds r3, r5, r3
	str r4, [sp]
	bl FUN_020071D0
	movs r1, #0x7f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0x30]
	adds r0, r6, #0
	movs r1, #8
	movs r3, #3
	bl FUN_0200710C
	ldrh r1, [r5, #4]
	adds r0, r6, #0
	adds r2, r4, #0
	bl ov114_0225E550
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0xd
	str r0, [sp, #4]
	movs r0, #0xe
	str r0, [sp, #8]
	ldr r0, _0225D674 @ =0x00001388
	adds r1, r6, #0
	str r0, [sp, #0xc]
	movs r0, #0x1b
	lsls r0, r0, #4
	adds r0, r5, r0
	movs r2, #0xb
	movs r3, #5
	str r4, [sp, #0x10]
	bl ov114_0225CD54
	movs r1, #0x72
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #4
	str r6, [sp]
	str r4, [sp, #4]
	adds r1, r5, #0
	adds r2, r5, #0
	ldrh r3, [r5, #4]
	adds r0, r5, r0
	adds r1, #0x30
	adds r2, #0x3c
	bl ov114_0225E1A4
	adds r0, r6, #0
	bl FUN_02006CA8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225D674: .4byte 0x00001388
	thumb_func_end ov114_0225D5BC

	thumb_func_start ov114_0225D678
ov114_0225D678: @ 0x0225D678
	movs r1, #0x7f
	lsls r1, r1, #2
	ldr r3, _0225D684 @ =FUN_020181C4
	ldr r0, [r0, r1]
	bx r3
	nop
_0225D684: .4byte FUN_020181C4
	thumb_func_end ov114_0225D678

	thumb_func_start ov114_0225D688
ov114_0225D688: @ 0x0225D688
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r4, r1, #0
	ldrb r0, [r4]
	cmp r0, #0x10
	bls _0225D696
	b _0225D9E6
_0225D696:
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0225D6A2: @ jump table
	.2byte _0225D6C4 - _0225D6A2 - 2 @ case 0
	.2byte _0225D6F2 - _0225D6A2 - 2 @ case 1
	.2byte _0225D710 - _0225D6A2 - 2 @ case 2
	.2byte _0225D72A - _0225D6A2 - 2 @ case 3
	.2byte _0225D742 - _0225D6A2 - 2 @ case 4
	.2byte _0225D75C - _0225D6A2 - 2 @ case 5
	.2byte _0225D78C - _0225D6A2 - 2 @ case 6
	.2byte _0225D7A8 - _0225D6A2 - 2 @ case 7
	.2byte _0225D8AE - _0225D6A2 - 2 @ case 8
	.2byte _0225D8C0 - _0225D6A2 - 2 @ case 9
	.2byte _0225D8E6 - _0225D6A2 - 2 @ case 10
	.2byte _0225D8F8 - _0225D6A2 - 2 @ case 11
	.2byte _0225D92A - _0225D6A2 - 2 @ case 12
	.2byte _0225D944 - _0225D6A2 - 2 @ case 13
	.2byte _0225D9AA - _0225D6A2 - 2 @ case 14
	.2byte _0225D9DC - _0225D6A2 - 2 @ case 15
	.2byte _0225D9E6 - _0225D6A2 - 2 @ case 16
_0225D6C4:
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrh r0, [r4, #2]
	ldr r3, _0225D9CC @ =0x0000FFFF
	adds r2, r1, #0
	str r0, [sp, #8]
	movs r0, #3
	bl FUN_0200F174
	movs r0, #0x73
	lsls r0, r0, #2
	adds r1, r4, #0
	ldrh r2, [r4, #2]
	adds r0, r4, r0
	adds r1, #0x30
	bl ov114_0225E244
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D6F2:
	movs r0, #0x73
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x30
	bl ov114_0225E31C
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225D79E
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D710:
	movs r0, #0x73
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x30
	bl ov114_0225E31C
	cmp r0, #1
	bne _0225D79E
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D72A:
	adds r0, r4, #0
	adds r1, r4, #0
	movs r2, #0
	adds r0, #0x4c
	adds r1, #0x3c
	adds r3, r2, #0
	bl ov114_0225D368
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D742:
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	bl ov114_0225D43C
	cmp r0, #0
	beq _0225D79E
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	movs r0, #0x40
	strb r0, [r4, #1]
	b _0225D9E6
_0225D75C:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225D79E
	subs r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0225D79E
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	bl ov114_0225D400
	movs r0, #0x73
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x30
	bl ov114_0225E2D4
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D78C:
	movs r0, #0x73
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x30
	bl ov114_0225E438
	cmp r0, #1
	beq _0225D7A0
_0225D79E:
	b _0225D9E6
_0225D7A0:
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D7A8:
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r1, r4, #0
	ldrh r2, [r4, #2]
	adds r0, r4, r0
	adds r1, #0x30
	bl ov114_0225DF7C
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #8
	adds r1, #0x18
	bl ov114_0225E14C
	ldrb r1, [r4, #0x10]
	movs r6, #0
	str r0, [sp, #0x1c]
	cmp r1, #0
	ble _0225D87A
	movs r0, #0x81
	lsls r0, r0, #2
	adds r5, r4, r0
	adds r0, r4, #0
	str r0, [sp, #0x20]
	adds r0, #0x30
	str r0, [sp, #0x20]
	adds r0, r4, #0
	str r0, [sp, #0x24]
	adds r0, #0x84
	str r0, [sp, #0x24]
	adds r0, r4, #0
	str r0, [sp, #0x28]
	adds r0, #8
	str r0, [sp, #0x28]
	adds r0, r4, #0
	str r0, [sp, #0x2c]
	adds r0, #0x3c
	str r4, [sp, #0x18]
	adds r7, r6, #0
	str r0, [sp, #0x2c]
_0225D7F8:
	ldr r0, [sp, #0x20]
	movs r3, #2
	str r0, [sp]
	str r6, [sp, #4]
	ldrb r0, [r4, #0x11]
	lsls r3, r3, #8
	str r0, [sp, #8]
	ldr r0, [sp, #0x24]
	str r0, [sp, #0xc]
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x10]
	ldrh r0, [r4, #2]
	str r0, [sp, #0x14]
	ldrh r2, [r4, #4]
	ldr r3, [r4, r3]
	adds r0, r5, #0
	bl ov114_0225DAC0
	ldr r0, [sp, #0x28]
	adds r1, r6, #0
	bl ov114_0225C78C
	adds r1, r0, #0
	ldr r0, [sp, #0x28]
	bl ov114_0225C7A4
	movs r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x2c]
	ldr r2, [r2, #0x20]
	adds r0, r5, #0
	movs r3, #8
	bl ov114_0225DC44
	adds r3, r4, r6
	ldrb r0, [r3, #0x1c]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	ldrb r3, [r3, #0x18]
	adds r0, r5, #0
	bl ov114_0225DCA0
	movs r1, #7
	lsls r2, r7, #0x10
	adds r0, r5, #0
	mvns r1, r1
	asrs r2, r2, #0x10
	bl ov114_0225DDD4
	ldr r0, [sp, #0x18]
	ldrb r1, [r4, #0x10]
	adds r0, r0, #4
	adds r6, r6, #1
	adds r5, #0x38
	str r0, [sp, #0x18]
	adds r7, r7, #3
	cmp r6, r1
	blt _0225D7F8
_0225D87A:
	movs r6, #0
	cmp r1, #0
	ble _0225D8A2
	movs r0, #0x81
	lsls r0, r0, #2
	adds r7, r4, #0
	adds r5, r4, r0
	adds r7, #0x30
_0225D88A:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov114_0225DD80
	adds r0, r5, #0
	bl ov114_0225DD94
	ldrb r0, [r4, #0x10]
	adds r6, r6, #1
	adds r5, #0x38
	cmp r6, r0
	blt _0225D88A
_0225D8A2:
	movs r0, #0x5c
	strb r0, [r4, #1]
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D8AE:
	adds r0, r4, #0
	bl ov114_0225DA5C
	cmp r0, #1
	bne _0225D8DE
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D8C0:
	ldrb r0, [r4, #1]
	subs r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0225D8DE
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	movs r0, #0x81
	bl FUN_020364F0
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	bne _0225D8E0
_0225D8DE:
	b _0225D9E6
_0225D8E0:
	bl FUN_021D1F18
	b _0225D9E6
_0225D8E6:
	movs r0, #0x81
	bl FUN_02036540
	cmp r0, #0
	beq _0225D9E6
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D8F8:
	ldrb r0, [r4, #0x10]
	movs r7, #0
	cmp r0, #0
	ble _0225D91E
	movs r0, #0x81
	lsls r0, r0, #2
	adds r6, r7, #0
	adds r5, r4, r0
_0225D908:
	lsls r1, r6, #0x10
	adds r0, r5, #0
	asrs r1, r1, #0x10
	bl ov114_0225DE38
	ldrb r0, [r4, #0x10]
	adds r7, r7, #1
	adds r6, r6, #3
	adds r5, #0x38
	cmp r7, r0
	blt _0225D908
_0225D91E:
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	movs r0, #8
	strb r0, [r4, #1]
	b _0225D9E6
_0225D92A:
	ldrb r0, [r4, #1]
	subs r0, r0, #1
	strb r0, [r4, #1]
	adds r0, r4, #0
	bl ov114_0225DA5C
	ldrb r0, [r4, #1]
	cmp r0, #0
	bne _0225D9E6
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D944:
	movs r0, #6
	str r0, [sp]
	movs r2, #1
	str r2, [sp, #4]
	ldrh r0, [r4, #2]
	movs r1, #0
	adds r3, r1, #0
	str r0, [sp, #8]
	movs r0, #3
	bl FUN_0200F174
	adds r0, r4, #0
	bl ov114_0225DA5C
	ldrb r0, [r4, #0x11]
	cmp r0, #0
	bne _0225D9A2
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0225D976
	cmp r0, #1
	beq _0225D982
	cmp r0, #2
	beq _0225D98E
	b _0225D998
_0225D976:
	ldr r0, _0225D9D0 @ =0x022600D0
	movs r1, #3
	bl ov114_0225DA2C
	str r0, [sp, #0x30]
	b _0225D998
_0225D982:
	ldr r0, _0225D9D4 @ =0x022600C8
	movs r1, #2
	bl ov114_0225DA2C
	str r0, [sp, #0x30]
	b _0225D998
_0225D98E:
	ldr r0, _0225D9D8 @ =0x022600CC
	movs r1, #3
	bl ov114_0225DA2C
	str r0, [sp, #0x30]
_0225D998:
	movs r0, #0x1a
	add r1, sp, #0x30
	movs r2, #4
	bl FUN_020359DC
_0225D9A2:
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
_0225D9AA:
	adds r0, r4, #0
	bl ov114_0225DA5C
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225D9E6
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov114_0225DFFC
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225D9E6
	nop
_0225D9CC: .4byte 0x0000FFFF
_0225D9D0: .4byte 0x022600D0
_0225D9D4: .4byte 0x022600C8
_0225D9D8: .4byte 0x022600CC
_0225D9DC:
	ldrb r1, [r4, #7]
	cmp r1, #1
	bne _0225D9E6
	adds r0, r0, #1
	strb r0, [r4]
_0225D9E6:
	adds r0, r4, #0
	adds r0, #0x84
	bl ov114_0225D070
	ldr r0, [r4, #0x30]
	movs r1, #3
	movs r2, #4
	movs r3, #2
	bl FUN_0201C63C
	ldr r0, [r4, #0x30]
	movs r1, #5
	movs r2, #4
	movs r3, #2
	bl FUN_0201C63C
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225D688

	thumb_func_start ov114_0225DA0C
ov114_0225DA0C: @ 0x0225DA0C
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0x30
	bl ov114_0225CFC0
	adds r0, r4, #0
	adds r0, #0x84
	bl ov114_0225D07C
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov114_0225E08C
	pop {r4, pc}
	thumb_func_end ov114_0225DA0C

	thumb_func_start ov114_0225DA2C
ov114_0225DA2C: @ 0x0225DA2C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0201D35C
	movs r1, #0x64
	blx FUN_020E2178
	movs r3, #0
	adds r0, r3, #0
	cmp r4, #0
	bls _0225DA52
_0225DA44:
	ldrb r2, [r5, r0]
	adds r3, r3, r2
	cmp r3, r1
	bhi _0225DA58
	adds r0, r0, #1
	cmp r0, r4
	blo _0225DA44
_0225DA52:
	bl FUN_02022974
	subs r0, r4, #1
_0225DA58:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov114_0225DA2C

	thumb_func_start ov114_0225DA5C
ov114_0225DA5C: @ 0x0225DA5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldrb r0, [r7, #0x10]
	cmp r0, #0
	ble _0225DABA
	movs r0, #0x81
	lsls r0, r0, #2
	adds r6, r7, r0
	adds r4, r7, #0
	adds r5, r6, #0
_0225DA7A:
	movs r0, #0x85
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225DAA4
	adds r0, r6, #0
	bl ov114_0225DE70
	str r0, [sp, #8]
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r1, r5, #0
	bl ov114_0225E028
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225DAA8
	movs r0, #0
	str r0, [sp]
	b _0225DAA8
_0225DAA4:
	movs r0, #0
	str r0, [sp]
_0225DAA8:
	ldr r0, [sp, #4]
	ldrb r1, [r7, #0x10]
	adds r0, r0, #1
	adds r4, #0x38
	adds r6, #0x38
	adds r5, #0x38
	str r0, [sp, #4]
	cmp r0, r1
	blt _0225DA7A
_0225DABA:
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov114_0225DA5C

	thumb_func_start ov114_0225DAC0
ov114_0225DAC0: @ 0x0225DAC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r0, #0
	ldr r0, [sp, #0x48]
	adds r6, r3, #0
	str r0, [sp, #0x48]
	ldr r0, [sp, #0x54]
	str r1, [sp, #0x1c]
	ldr r4, [sp, #0x4c]
	str r0, [sp, #0x54]
	cmp r2, #0
	beq _0225DAE0
	cmp r2, #1
	beq _0225DAEE
	cmp r2, #2
	bne _0225DB04
_0225DAE0:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x50]
	adds r1, r4, #0
	bl ov114_0225DF44
	adds r7, r0, #0
	b _0225DB06
_0225DAEE:
	ldr r0, [sp, #0x50]
	cmp r0, r4
	bls _0225DAF8
	adds r7, r4, #1
	b _0225DB06
_0225DAF8:
	cmp r0, r4
	bne _0225DB00
	movs r7, #0
	b _0225DB06
_0225DB00:
	adds r7, r4, #0
	b _0225DB06
_0225DB04:
	adds r7, r4, #0
_0225DB06:
	movs r0, #1
	movs r1, #2
	bl FUN_02019060
	movs r0, #0
	movs r1, #1
	bl FUN_02019060
	ldr r1, [sp, #0x1c]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	str r2, [sp, #0x2c]
	ldr r2, _0225DC2C @ =0x022601F8
	ldr r1, [sp, #0x2c]
	movs r3, #5
	adds r1, r2, r1
	ldrb r1, [r7, r1]
	movs r2, #0
	str r1, [sp, #0x28]
	adds r1, r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0x1a
	str r1, [sp, #4]
	movs r1, #4
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #0x68
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _0225DC30 @ =0x00000201
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x48]
	adds r1, r5, #0
	ldr r0, [r0]
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x20
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xc
	str r0, [sp, #8]
	movs r2, #0
	ldr r1, _0225DC34 @ =0x022601FC
	ldr r0, [sp, #0x2c]
	str r2, [sp, #0xc]
	adds r0, r1, r0
	ldrb r0, [r4, r0]
	ldr r3, [sp, #0x28]
	movs r1, #1
	str r0, [sp, #0x10]
	ldrh r0, [r6]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r6, #2]
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x48]
	ldr r0, [r0]
	bl FUN_020198E8
	ldr r0, [sp, #0x28]
	ldr r1, _0225DC38 @ =0x02260200
	lsls r0, r0, #3
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	ldr r2, _0225DC3C @ =0x0226015C
	adds r0, r1, r0
	ldrb r0, [r7, r0]
	ldr r3, _0225DC40 @ =0x0226015E
	ldr r1, [sp, #0x54]
	lsls r6, r0, #2
	ldrsh r2, [r2, r6]
	str r0, [sp, #0x24]
	movs r0, #0
	ldrsh r6, [r3, r6]
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #4]
	adds r3, r6, r3
	lsls r2, r2, #0x18
	lsls r3, r3, #0x18
	ldr r0, [sp, #0x58]
	ldr r1, [r1]
	lsrs r2, r2, #0x18
	lsrs r3, r3, #0x18
	bl ov114_0225CDB4
	ldr r1, [sp, #0x24]
	str r0, [r5, #0x10]
	bl FUN_02021D6C
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl FUN_02021EF0
	ldr r0, [r5, #0x10]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #0x10]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x5c]
	ldr r3, [sp, #0x20]
	str r0, [sp, #4]
	ldr r1, [sp, #0x54]
	adds r3, #0x15
	str r3, [sp, #0x20]
	lsls r3, r3, #0x18
	ldr r0, [sp, #0x58]
	ldr r1, [r1]
	movs r2, #0x18
	lsrs r3, r3, #0x18
	bl ov114_0225CDB4
	str r0, [r5, #0x14]
	movs r1, #0
	bl FUN_02021D6C
	ldr r0, [r5, #0x14]
	movs r1, #0
	bl FUN_02021CAC
	strb r4, [r5, #0x1a]
	ldr r0, [sp, #0x1c]
	strb r7, [r5, #0x1b]
	strh r0, [r5, #0x18]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225DC2C: .4byte 0x022601F8
_0225DC30: .4byte 0x00000201
_0225DC34: .4byte 0x022601FC
_0225DC38: .4byte 0x02260200
_0225DC3C: .4byte 0x0226015C
_0225DC40: .4byte 0x0226015E
	thumb_func_end ov114_0225DAC0

	thumb_func_start ov114_0225DC44
ov114_0225DC44: @ 0x0225DC44
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r2, #0
	adds r4, r3, #0
	bl ov114_0225D104
	ldr r0, [sp, #0x1c]
	add r1, sp, #8
	cmp r0, #1
	bne _0225DC7E
	movs r0, #0x10
	ldrsh r0, [r1, r0]
	lsls r3, r4, #0x18
	movs r1, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, _0225DC9C @ =0x00050600
	adds r2, r6, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	lsrs r3, r3, #0x18
	bl ov114_0225D254
	add sp, #8
	pop {r4, r5, r6, pc}
_0225DC7E:
	movs r0, #0x10
	ldrsh r0, [r1, r0]
	lsls r3, r4, #0x18
	movs r1, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	lsrs r3, r3, #0x18
	bl ov114_0225D1AC
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0225DC9C: .4byte 0x00050600
	thumb_func_end ov114_0225DC44

	thumb_func_start ov114_0225DCA0
ov114_0225DCA0: @ 0x0225DCA0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	adds r4, r3, #0
	cmp r2, #0
	beq _0225DCDC
	cmp r4, #0
	beq _0225DD08
	adds r0, r5, #0
	bl ov114_0225D0F8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov114_0225D114
	movs r0, #0x10
	str r0, [sp]
	add r4, sp, #8
	movs r3, #0x14
	ldrsh r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xb
	lsls r3, r3, #0x18
	adds r2, r6, #0
	lsrs r3, r3, #0x18
	bl ov114_0225D1AC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0225DCDC:
	cmp r4, #0
	beq _0225DD08
	adds r0, r5, #0
	bl ov114_0225D0F8
	ldr r2, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov114_0225D124
	movs r0, #0x10
	str r0, [sp]
	add r4, sp, #8
	movs r3, #0x14
	ldrsh r3, [r4, r3]
	adds r0, r5, #0
	movs r1, #0xc
	lsls r3, r3, #0x18
	adds r2, r6, #0
	lsrs r3, r3, #0x18
	bl ov114_0225D1AC
_0225DD08:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov114_0225DCA0

	thumb_func_start ov114_0225DD0C
ov114_0225DD0C: @ 0x0225DD0C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x14]
	adds r4, r1, #0
	movs r1, #1
	bl FUN_02021CAC
	ldr r0, [r5, #0x14]
	adds r1, r4, #4
	bl FUN_02021D6C
	ldr r0, [r5, #0x14]
	movs r1, #1
	bl FUN_02021CC8
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225DD0C

	thumb_func_start ov114_0225DD2C
ov114_0225DD2C: @ 0x0225DD2C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r1, #0
	adds r1, r2, #0
	adds r6, r0, #0
	ldr r2, [sp, #0x1c]
	adds r0, r5, #0
	adds r4, r3, #0
	bl ov114_0225D138
	ldr r0, [sp, #0x1c]
	add r1, sp, #8
	cmp r0, #5
	bne _0225DD64
	movs r0, #0x10
	ldrsh r0, [r1, r0]
	lsls r3, r4, #0x18
	movs r1, #0xe
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	lsrs r3, r3, #0x18
	bl ov114_0225D1C8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_0225DD64:
	movs r0, #0x10
	ldrsh r0, [r1, r0]
	lsls r3, r4, #0x18
	movs r1, #0xd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	lsrs r3, r3, #0x18
	bl ov114_0225D1C8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov114_0225DD2C

	thumb_func_start ov114_0225DD80
ov114_0225DD80: @ 0x0225DD80
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0201A9A4
	ldr r0, [r4]
	movs r1, #1
	bl FUN_0201C3C0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov114_0225DD80

	thumb_func_start ov114_0225DD94
ov114_0225DD94: @ 0x0225DD94
	ldr r3, _0225DD9C @ =FUN_02021CAC
	ldr r0, [r0, #0x10]
	movs r1, #1
	bx r3
	.align 2, 0
_0225DD9C: .4byte FUN_02021CAC
	thumb_func_end ov114_0225DD94

	thumb_func_start ov114_0225DDA0
ov114_0225DDA0: @ 0x0225DDA0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0225DDB2
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #0x10]
_0225DDB2:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _0225DDC0
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #0x14]
_0225DDC0:
	adds r0, r4, #0
	bl FUN_0201A7CC
	cmp r0, #1
	bne _0225DDD0
	adds r0, r4, #0
	bl FUN_0201A8FC
_0225DDD0:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov114_0225DDA0

	thumb_func_start ov114_0225DDD4
ov114_0225DDD4: @ 0x0225DDD4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	cmp r1, #0
	ble _0225DDF0
	lsls r0, r1, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0225DDFE
_0225DDF0:
	lsls r0, r1, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0225DDFE:
	blx FUN_020E1740
	adds r2, r0, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #7
	ldr r1, _0225DE30 @ =0xFFF01000
	adds r0, #0x1c
	lsls r3, r3, #0xe
	bl ov114_0225CBF0
	movs r0, #0
	strh r0, [r5, #0x30]
	ldr r0, _0225DE34 @ =0x00000566
	strh r4, [r5, #0x32]
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x1c]
	adds r0, r5, #0
	asrs r1, r1, #0xc
	rsbs r1, r1, #0
	bl ov114_0225DEBC
	pop {r3, r4, r5, pc}
	nop
_0225DE30: .4byte 0xFFF01000
_0225DE34: .4byte 0x00000566
	thumb_func_end ov114_0225DDD4

	thumb_func_start ov114_0225DE38
ov114_0225DE38: @ 0x0225DE38
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #8
	str r0, [sp]
	adds r4, r1, #0
	adds r0, r5, #0
	ldr r1, [r5, #0x1c]
	ldr r2, _0225DE68 @ =0xFFF01000
	adds r0, #0x1c
	movs r3, #0
	bl ov114_0225CBF0
	movs r0, #0
	strh r0, [r5, #0x30]
	ldr r0, _0225DE6C @ =0x00000567
	strh r4, [r5, #0x32]
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x1c]
	adds r0, r5, #0
	asrs r1, r1, #0xc
	rsbs r1, r1, #0
	bl ov114_0225DEBC
	pop {r3, r4, r5, pc}
	.align 2, 0
_0225DE68: .4byte 0xFFF01000
_0225DE6C: .4byte 0x00000567
	thumb_func_end ov114_0225DE38

	thumb_func_start ov114_0225DE70
ov114_0225DE70: @ 0x0225DE70
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x32
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0225DEB2
	movs r0, #0x30
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bne _0225DE8E
	ldr r0, [r5, #0x34]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
_0225DE8E:
	movs r1, #0x30
	ldrsh r0, [r5, r1]
	adds r0, r0, #1
	strh r0, [r5, #0x30]
	ldrsh r1, [r5, r1]
	adds r0, r5, #0
	adds r0, #0x1c
	bl ov114_0225CC4C
	ldr r1, [r5, #0x1c]
	adds r4, r0, #0
	asrs r1, r1, #0xc
	adds r0, r5, #0
	rsbs r1, r1, #0
	bl ov114_0225DEBC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_0225DEB2:
	subs r0, r0, #1
	strh r0, [r5, #0x32]
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov114_0225DE70

	thumb_func_start ov114_0225DEBC
ov114_0225DEBC: @ 0x0225DEBC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrh r0, [r5, #0x18]
	adds r4, r1, #0
	ldrb r2, [r5, #0x1b]
	subs r1, r0, #1
	movs r0, #0xc
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _0225DF34 @ =0x0226020C
	ldr r6, _0225DF38 @ =0x02260204
	adds r0, r0, r3
	ldrb r0, [r2, r0]
	adds r3, r6, r3
	ldrb r2, [r2, r3]
	lsls r1, r0, #2
	ldr r0, _0225DF3C @ =0x0226015E
	lsls r2, r2, #3
	ldrsh r0, [r0, r1]
	adds r0, r0, r2
	ldr r2, _0225DF40 @ =0x0226015C
	lsls r0, r0, #0x18
	ldrsh r1, [r2, r1]
	lsrs r0, r0, #0x18
	lsls r0, r0, #0xc
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r1, r1, r4
	lsls r1, r1, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	bl FUN_02021C50
	ldrh r0, [r5, #0x18]
	adds r4, #0x18
	subs r1, r0, #1
	adds r2, r1, #0
	movs r0, #0xc
	muls r2, r0, r2
	adds r0, r6, #0
	ldrb r1, [r5, #0x1b]
	adds r0, r0, r2
	ldrb r0, [r1, r0]
	lsls r0, r0, #3
	adds r0, #0x15
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsls r0, r4, #0xc
	str r0, [sp]
	lsls r0, r1, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	bl FUN_02021C50
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225DF34: .4byte 0x0226020C
_0225DF38: .4byte 0x02260204
_0225DF3C: .4byte 0x0226015E
_0225DF40: .4byte 0x0226015C
	thumb_func_end ov114_0225DEBC

	thumb_func_start ov114_0225DF44
ov114_0225DF44: @ 0x0225DF44
	push {r4, r5, r6, r7}
	adds r5, r0, #0
	ldr r4, _0225DF74 @ =0x00000000
	beq _0225DF6A
	ldr r7, _0225DF78 @ =0x0226016C
	lsls r6, r5, #2
	adds r7, r7, r6
_0225DF52:
	subs r6, r7, #4
	ldrb r6, [r6]
	cmp r1, r6
	bne _0225DF5C
	adds r3, r4, #0
_0225DF5C:
	cmp r2, r6
	bne _0225DF62
	adds r0, r4, #0
_0225DF62:
	adds r4, r4, #1
	adds r7, r7, #1
	cmp r4, r5
	blo _0225DF52
_0225DF6A:
	subs r0, r3, r0
	bpl _0225DF70
	adds r0, r0, r5
_0225DF70:
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0225DF74: .4byte 0x00000000
_0225DF78: .4byte 0x0226016C
	thumb_func_end ov114_0225DF44

	thumb_func_start ov114_0225DF7C
ov114_0225DF7C: @ 0x0225DF7C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	beq _0225DF92
	bl FUN_02022974
_0225DF92:
	movs r1, #0
	str r4, [r6]
	adds r3, r1, #0
	ldr r0, [r4]
	adds r2, r1, #0
	subs r3, #0xff
	bl FUN_02019184
	ldr r0, [r6]
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r0]
	movs r1, #1
	subs r3, #0xff
	bl FUN_02019184
	movs r7, #6
	movs r4, #0
	adds r5, r6, #4
	lsls r7, r7, #6
_0225DFBA:
	movs r2, #6
	ldr r0, _0225DFF4 @ =0x0000FF01
	adds r1, r5, #0
	lsls r2, r2, #6
	blx FUN_020C4AF0
	adds r4, r4, #1
	adds r5, r5, r7
	cmp r4, #2
	blt _0225DFBA
	movs r2, #0x61
	lsls r2, r2, #2
	ldr r0, [sp]
	adds r1, r6, #4
	adds r2, r6, r2
	bl FUN_02013B10
	movs r1, #0xc1
	lsls r1, r1, #2
	str r0, [r6, r1]
	ldr r0, [r6, r1]
	movs r1, #0
	bl FUN_02013B80
	ldr r0, _0225DFF8 @ =ov114_0225E0AC
	adds r1, r6, #0
	bl FUN_020177BC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225DFF4: .4byte 0x0000FF01
_0225DFF8: .4byte ov114_0225E0AC
	thumb_func_end ov114_0225DF7C

	thumb_func_start ov114_0225DFFC
ov114_0225DFFC: @ 0x0225DFFC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225E024
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020177BC
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02013B40
	movs r0, #0xc1
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_0225E024:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov114_0225DFFC

	thumb_func_start ov114_0225E028
ov114_0225E028: @ 0x0225E028
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	movs r1, #0xc1
	lsls r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0225E03C
	bl FUN_02022974
_0225E03C:
	movs r1, #0xc1
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_02013B54
	ldr r1, _0225E088 @ =0x02260204
	adds r5, r0, #0
	movs r6, #0
	movs r7, #0xc
_0225E050:
	ldrh r0, [r4, #0x18]
	subs r3, r6, #1
	adds r2, r0, #0
	muls r2, r7, r2
	ldrb r0, [r4, #0x1b]
	adds r2, r1, r2
	adds r0, r0, r2
	subs r0, #0xc
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r2, r3, r0
	bpl _0225E06A
	adds r2, #0xc0
_0225E06A:
	ldr r0, [r4, #0x1c]
	lsls r2, r2, #1
	asrs r0, r0, #0xc
	adds r6, r6, #1
	strh r0, [r5, r2]
	cmp r6, #0x30
	blt _0225E050
	movs r1, #0xc1
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #1
	bl FUN_02013B80
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225E088: .4byte 0x02260204
	thumb_func_end ov114_0225E028

	thumb_func_start ov114_0225E08C
ov114_0225E08C: @ 0x0225E08C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225E0AA
	bl FUN_02013B94
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02013B80
_0225E0AA:
	pop {r4, pc}
	thumb_func_end ov114_0225E08C

	thumb_func_start ov114_0225E0AC
ov114_0225E0AC: @ 0x0225E0AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0225E0F0 @ =0x04000006
	ldrh r4, [r0]
	cmp r4, #0xc0
	bge _0225E0EC
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02013B68
	adds r6, r0, #0
	ldr r0, _0225E0F4 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #2
	tst r0, r1
	beq _0225E0EC
	lsls r4, r4, #1
	ldr r0, [r5]
	movs r1, #0
	ldrsh r3, [r6, r4]
	ldr r0, [r0]
	adds r2, r1, #0
	bl FUN_02019184
	ldr r0, [r5]
	ldrsh r3, [r6, r4]
	ldr r0, [r0]
	movs r1, #1
	movs r2, #0
	bl FUN_02019184
_0225E0EC:
	pop {r4, r5, r6, pc}
	nop
_0225E0F0: .4byte 0x04000006
_0225E0F4: .4byte 0x04000004
	thumb_func_end ov114_0225E0AC

	thumb_func_start ov114_0225E0F8
ov114_0225E0F8: @ 0x0225E0F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	str r0, [sp]
	ldrb r0, [r5, #8]
	movs r4, #0
	cmp r0, #0
	ble _0225E146
	ldr r6, [sp]
_0225E10A:
	adds r1, r5, r4
	ldrb r1, [r1, #4]
	adds r0, r5, #0
	bl ov114_0225C7CC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0225E11E
	bl FUN_02022974
_0225E11E:
	adds r0, r5, r4
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r7, r0, r4
	ldr r0, [sp, #4]
	ldrb r0, [r0, #4]
	bl FUN_02032F78
	ldr r1, [sp]
	strb r0, [r1, r4]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #4]
	bl FUN_02032F9C
	strb r0, [r7, #4]
	ldrb r0, [r5, #8]
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r4, r0
	blt _0225E10A
_0225E146:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225E0F8

	thumb_func_start ov114_0225E14C
ov114_0225E14C: @ 0x0225E14C
	push {r3, r4, r5, r6}
	ldrb r4, [r0, #8]
	movs r3, #0
	adds r2, r3, #0
	subs r4, r4, #1
	cmp r4, #0
	ble _0225E17A
	movs r5, #1
_0225E15C:
	adds r4, r1, r2
	ldrb r6, [r4, #1]
	ldrb r4, [r1, r2]
	cmp r4, r6
	bne _0225E16E
	cmp r4, #0
	beq _0225E16E
	cmp r6, #0
	bne _0225E170
_0225E16E:
	adds r3, r5, #0
_0225E170:
	ldrb r4, [r0, #8]
	adds r2, r2, #1
	subs r4, r4, #1
	cmp r2, r4
	blt _0225E15C
_0225E17A:
	adds r0, r3, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov114_0225E14C

	thumb_func_start ov114_0225E180
ov114_0225E180: @ 0x0225E180
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #3
	blx FUN_020E2178
	adds r4, r1, #0
	adds r0, r5, #0
	movs r1, #3
	blx FUN_020E2178
	adds r1, r4, #1
	cmp r1, #3
	bhs _0225E19C
	adds r4, r1, #0
_0225E19C:
	lsls r1, r0, #1
	adds r0, r0, r1
	adds r0, r0, r4
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225E180

	thumb_func_start ov114_0225E1A4
ov114_0225E1A4: @ 0x0225E1A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	ldr r0, _0225E230 @ =0x00000201
	adds r4, r1, #0
	str r0, [sp, #0x10]
	adds r7, r2, #0
	adds r6, r3, #0
	ldr r0, [r4]
	adds r1, r5, #0
	movs r2, #1
	movs r3, #6
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r1, [sp, #0x2c]
	movs r0, #0x80
	bl FUN_02023790
	str r0, [r5, #0x14]
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov114_0225D180
	ldr r1, [r5, #0x14]
	adds r0, r7, #0
	movs r2, #0x10
	bl ov114_0225D190
	movs r0, #1
	movs r1, #0
	str r6, [r5, #0x10]
	bl FUN_0201FF0C
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	ldr r2, [r4]
	movs r1, #7
	bl FUN_020070E8
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r3, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x28]
	ldr r2, [r4]
	movs r1, #0xa
	bl FUN_0200710C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225E230: .4byte 0x00000201
	thumb_func_end ov114_0225E1A4

	thumb_func_start ov114_0225E234
ov114_0225E234: @ 0x0225E234
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201A8FC
	ldr r0, [r4, #0x14]
	bl FUN_020237BC
	pop {r4, pc}
	thumb_func_end ov114_0225E234

	thumb_func_start ov114_0225E244
ov114_0225E244: @ 0x0225E244
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #0x2c]
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x10]
	adds r4, r1, #0
	adds r7, r2, #0
	lsls r6, r0, #2
	ldr r1, _0225E2C4 @ =0x02260140
	ldr r2, _0225E2C8 @ =0x02260110
	ldr r3, _0225E2CC @ =0x02260104
	movs r0, #0x10
	str r0, [sp]
	adds r0, r5, #0
	ldr r1, [r1, r6]
	ldr r2, [r2, r6]
	ldr r3, [r3, r6]
	adds r0, #0x18
	bl ov114_0225CBF0
	ldr r2, [r5, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	asrs r2, r2, #0xc
	bl ov114_0225E4B0
	movs r0, #2
	adds r1, r7, #0
	bl FUN_02002BB8
	ldr r1, [r5, #0x14]
	movs r0, #2
	movs r2, #0
	bl FUN_02002D7C
	movs r2, #0
	str r2, [sp]
	adds r3, r0, #0
	str r2, [sp, #4]
	ldr r0, [r5, #0x10]
	lsrs r4, r3, #1
	lsls r1, r0, #2
	ldr r0, _0225E2D0 @ =0x022600F8
	movs r3, #0x50
	ldr r0, [r0, r1]
	movs r1, #2
	str r0, [sp, #8]
	str r2, [sp, #0xc]
	ldr r2, [r5, #0x14]
	adds r0, r5, #0
	subs r3, r3, r4
	bl FUN_0201D78C
	movs r0, #2
	bl FUN_02002C60
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225E2C4: .4byte 0x02260140
_0225E2C8: .4byte 0x02260110
_0225E2CC: .4byte 0x02260104
_0225E2D0: .4byte 0x022600F8
	thumb_func_end ov114_0225E244

	thumb_func_start ov114_0225E2D4
ov114_0225E2D4: @ 0x0225E2D4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #0x2c]
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x10]
	adds r4, r1, #0
	lsls r3, r0, #2
	ldr r1, _0225E310 @ =0x02260110
	ldr r2, _0225E314 @ =0x022600E0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	ldr r6, _0225E318 @ =0x022600EC
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r6, r3]
	adds r0, #0x18
	bl ov114_0225CBF0
	ldr r2, [r5, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	asrs r2, r2, #0xc
	bl ov114_0225E500
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225E310: .4byte 0x02260110
_0225E314: .4byte 0x022600E0
_0225E318: .4byte 0x022600EC
	thumb_func_end ov114_0225E2D4

	thumb_func_start ov114_0225E31C
ov114_0225E31C: @ 0x0225E31C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x2e
	ldrsh r0, [r4, r0]
	adds r5, r1, #0
	cmp r0, #3
	bhi _0225E41C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225E338: @ jump table
	.2byte _0225E340 - _0225E338 - 2 @ case 0
	.2byte _0225E396 - _0225E338 - 2 @ case 1
	.2byte _0225E3E6 - _0225E338 - 2 @ case 2
	.2byte _0225E416 - _0225E338 - 2 @ case 3
_0225E340:
	movs r1, #0x2c
	ldrsh r1, [r4, r1]
	adds r0, r4, #0
	adds r0, #0x18
	bl ov114_0225CC4C
	ldr r2, [r4, #0x18]
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	asrs r2, r2, #0xc
	bl ov114_0225E500
	movs r0, #0x2c
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #0x2c]
	cmp r6, #1
	bne _0225E41C
	ldr r0, _0225E424 @ =0x00000569
	bl FUN_02005748
	ldr r0, [r4, #0x10]
	ldr r1, _0225E428 @ =0x02260110
	lsls r3, r0, #2
	ldr r2, _0225E42C @ =0x0226011C
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	ldr r5, _0225E430 @ =0x02260128
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r5, r3]
	adds r0, #0x18
	bl ov114_0225CBF0
	movs r0, #0x2e
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #0x2e]
	movs r0, #0
	strh r0, [r4, #0x2c]
	b _0225E41C
_0225E396:
	movs r1, #0x2c
	ldrsh r1, [r4, r1]
	adds r0, r4, #0
	adds r0, #0x18
	bl ov114_0225CC4C
	ldr r2, [r4, #0x18]
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	asrs r2, r2, #0xc
	bl ov114_0225E500
	movs r0, #0x2c
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #0x2c]
	cmp r6, #1
	bne _0225E41C
	ldr r0, [r4, #0x10]
	ldr r1, _0225E42C @ =0x0226011C
	lsls r3, r0, #2
	ldr r2, _0225E428 @ =0x02260110
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	ldr r5, _0225E434 @ =0x02260134
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r5, r3]
	adds r0, #0x18
	bl ov114_0225CBF0
	movs r0, #0x2e
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #0x2e]
	movs r0, #0
	strh r0, [r4, #0x2c]
	b _0225E41C
_0225E3E6:
	movs r1, #0x2c
	ldrsh r1, [r4, r1]
	adds r0, r4, #0
	adds r0, #0x18
	bl ov114_0225CC4C
	ldr r2, [r4, #0x18]
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	asrs r2, r2, #0xc
	bl ov114_0225E500
	movs r0, #0x2c
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #0x2c]
	cmp r6, #1
	bne _0225E41C
	movs r0, #0x2e
	ldrsh r0, [r4, r0]
	adds r0, r0, #1
	strh r0, [r4, #0x2e]
	b _0225E41C
_0225E416:
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0225E41C:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225E424: .4byte 0x00000569
_0225E428: .4byte 0x02260110
_0225E42C: .4byte 0x0226011C
_0225E430: .4byte 0x02260128
_0225E434: .4byte 0x02260134
	thumb_func_end ov114_0225E31C

	thumb_func_start ov114_0225E438
ov114_0225E438: @ 0x0225E438
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #0x2e
	ldrsh r1, [r5, r1]
	cmp r1, #0
	beq _0225E44C
	cmp r1, #1
	beq _0225E47A
	b _0225E4AC
_0225E44C:
	movs r1, #0x2c
	ldrsh r1, [r5, r1]
	adds r0, #0x18
	bl ov114_0225CC4C
	ldr r2, [r5, #0x18]
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	asrs r2, r2, #0xc
	bl ov114_0225E500
	movs r0, #0x2c
	ldrsh r0, [r5, r0]
	adds r0, r0, #1
	strh r0, [r5, #0x2c]
	cmp r6, #1
	bne _0225E4AC
	movs r0, #0x2e
	ldrsh r0, [r5, r0]
	adds r0, r0, #1
	strh r0, [r5, #0x2e]
	b _0225E4AC
_0225E47A:
	bl FUN_0201ACF4
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov114_0225E4B0
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02019EBC
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225E4AC:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov114_0225E438

	thumb_func_start ov114_0225E4B0
ov114_0225E4B0: @ 0x0225E4B0
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x10]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r0, #0
	beq _0225E4C6
	cmp r0, #1
	beq _0225E4C6
	cmp r0, #2
	beq _0225E4E0
	b _0225E4FA
_0225E4C6:
	movs r1, #0
	ldr r0, [r5]
	adds r2, r1, #0
	adds r3, r4, #0
	bl FUN_02019184
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl FUN_02019184
	pop {r3, r4, r5, pc}
_0225E4E0:
	ldr r0, [r5]
	movs r1, #0
	movs r2, #3
	adds r3, r4, #0
	bl FUN_02019184
	ldr r0, [r5]
	movs r1, #1
	movs r2, #3
	adds r3, r4, #0
	bl FUN_02019184
	pop {r3, r4, r5, pc}
_0225E4FA:
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225E4B0

	thumb_func_start ov114_0225E500
ov114_0225E500: @ 0x0225E500
	push {r3, r4, r5, lr}
	ldr r0, [r0, #0x10]
	adds r5, r1, #0
	adds r4, r2, #0
	cmp r0, #0
	beq _0225E516
	cmp r0, #1
	beq _0225E516
	cmp r0, #2
	beq _0225E530
	b _0225E54A
_0225E516:
	movs r1, #0
	ldr r0, [r5]
	adds r2, r1, #0
	adds r3, r4, #0
	bl FUN_0201C63C
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0
	adds r3, r4, #0
	bl FUN_0201C63C
	pop {r3, r4, r5, pc}
_0225E530:
	ldr r0, [r5]
	movs r1, #0
	movs r2, #3
	adds r3, r4, #0
	bl FUN_0201C63C
	ldr r0, [r5]
	movs r1, #1
	movs r2, #3
	adds r3, r4, #0
	bl FUN_0201C63C
	pop {r3, r4, r5, pc}
_0225E54A:
	bl FUN_02022974
	pop {r3, r4, r5, pc}
	thumb_func_end ov114_0225E500

	thumb_func_start ov114_0225E550
ov114_0225E550: @ 0x0225E550
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r2, #0
	cmp r1, #0
	beq _0225E566
	cmp r1, #1
	beq _0225E56A
	cmp r1, #2
	beq _0225E56E
	b _0225E572
_0225E566:
	movs r0, #1
	b _0225E574
_0225E56A:
	movs r0, #2
	b _0225E574
_0225E56E:
	movs r0, #0
	b _0225E574
_0225E572:
	movs r0, #1
_0225E574:
	lsls r4, r0, #5
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #0
	adds r3, r4, #0
	str r5, [sp, #8]
	bl FUN_02007148
	movs r0, #0xa0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r1, #5
	movs r2, #4
	adds r3, r4, #0
	str r5, [sp, #8]
	bl FUN_02007148
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov114_0225E550

	thumb_func_start ov114_0225E5A8
ov114_0225E5A8: @ 0x0225E5A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r1, #0
	adds r5, r3, #0
	adds r6, r0, #0
	ldr r1, _0225E714 @ =0x00000664
	adds r0, r5, #0
	str r2, [sp, #4]
	bl FUN_02018144
	ldr r2, _0225E714 @ =0x00000664
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	adds r2, r4, #0
	adds r2, #0x1c
	movs r1, #0x18
_0225E5CC:
	ldrb r0, [r7]
	adds r7, r7, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0225E5CC
	adds r2, r4, #0
	adds r2, #0xc
	movs r1, #0x10
_0225E5DE:
	ldrb r0, [r6]
	adds r6, r6, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0225E5DE
	ldr r0, [sp, #4]
	strb r0, [r4, #7]
	adds r0, r4, #0
	bl ov114_02260044
	ldr r3, _0225E718 @ =0x04000050
	movs r1, #0
	strh r1, [r3]
	ldr r0, _0225E71C @ =0x04001050
	subs r3, #0x50
	strh r1, [r0]
	ldr r2, [r3]
	ldr r1, _0225E720 @ =0xFFFF1FFF
	subs r0, #0x50
	ands r2, r1
	str r2, [r3]
	ldr r2, [r0]
	ands r1, r2
	str r1, [r0]
	ldr r0, _0225E724 @ =0x022601DC
	bl FUN_0201FE94
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x34
	adds r1, #0xc
	strh r5, [r4, #2]
	bl ov114_0225E0F8
	movs r0, #0x10
	adds r1, r5, #0
	bl FUN_0201DBEC
	adds r0, r4, #0
	ldr r1, _0225E728 @ =0x0226014C
	ldr r2, _0225E72C @ =0x02260324
	adds r0, #0x4c
	movs r3, #6
	str r5, [sp]
	bl ov114_0225CEF0
	adds r0, r4, #0
	movs r2, #2
	adds r0, #0xa0
	movs r1, #0x20
	adds r3, r2, #0
	str r5, [sp]
	bl ov114_0225CFCC
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #2
	adds r2, r5, #0
	bl ov114_0225CCD0
	adds r0, r4, #0
	adds r0, #0x58
	adds r1, r5, #0
	bl ov114_0225D084
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov114_0225E744
	adds r0, r4, #0
	ldrb r1, [r4, #0x15]
	adds r0, #0xc
	bl ov114_0225C78C
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc
	bl ov114_0225C7A4
	str r5, [sp]
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, r4, #0
	ldr r2, [r4, #0xc]
	adds r0, #0x68
	adds r1, #0x4c
	bl ov114_0225D290
	movs r0, #0x7a
	lsls r0, r0, #2
	adds r1, r4, #0
	ldrb r2, [r4, #0x16]
	adds r0, r4, r0
	adds r1, #0x4c
	adds r3, r5, #0
	bl ov114_0225F234
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0xc
	adds r1, #0x34
	bl ov114_0225E14C
	strb r0, [r4, #5]
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq _0225E6C2
	cmp r0, #1
	beq _0225E6C2
	cmp r0, #2
	beq _0225E6D2
	b _0225E6E2
_0225E6C2:
	ldr r0, _0225E730 @ =ov114_0225E874
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	ldr r1, _0225E734 @ =0x00000644
	str r0, [r4, r1]
	b _0225E6F4
_0225E6D2:
	ldr r0, _0225E738 @ =ov114_0225ED40
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	ldr r1, _0225E734 @ =0x00000644
	str r0, [r4, r1]
	b _0225E6F4
_0225E6E2:
	bl FUN_02022974
	ldr r0, _0225E730 @ =ov114_0225E874
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200D9E8
	ldr r1, _0225E734 @ =0x00000644
	str r0, [r4, r1]
_0225E6F4:
	ldr r0, _0225E73C @ =ov114_0225F124
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200DA3C
	ldr r1, _0225E740 @ =0x00000648
	str r0, [r4, r1]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0225E70E
	adds r0, r5, #0
	bl FUN_021D1E74
_0225E70E:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225E714: .4byte 0x00000664
_0225E718: .4byte 0x04000050
_0225E71C: .4byte 0x04001050
_0225E720: .4byte 0xFFFF1FFF
_0225E724: .4byte 0x022601DC
_0225E728: .4byte 0x0226014C
_0225E72C: .4byte 0x02260324
_0225E730: .4byte ov114_0225E874
_0225E734: .4byte 0x00000644
_0225E738: .4byte ov114_0225ED40
_0225E73C: .4byte ov114_0225F124
_0225E740: .4byte 0x00000648
	thumb_func_end ov114_0225E5A8

	thumb_func_start ov114_0225E744
ov114_0225E744: @ 0x0225E744
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0xab
	adds r4, r1, #0
	bl FUN_02006C24
	movs r1, #0x12
	lsls r1, r1, #4
	str r1, [sp]
	movs r2, #0
	movs r1, #4
	adds r3, r2, #0
	adds r6, r0, #0
	str r4, [sp, #4]
	bl FUN_02007130
	movs r0, #0x12
	lsls r0, r0, #4
	str r0, [sp]
	movs r1, #4
	adds r0, r6, #0
	adds r2, r1, #0
	movs r3, #0
	str r4, [sp, #4]
	bl FUN_02007130
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0x4c]
	adds r0, r6, #0
	movs r1, #6
	movs r3, #1
	bl FUN_020070E8
	movs r1, #0
	movs r0, #1
	str r1, [sp]
	lsls r0, r0, #0xe
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0x4c]
	adds r0, r6, #0
	movs r1, #6
	movs r3, #5
	bl FUN_020070E8
	movs r3, #0x96
	lsls r3, r3, #2
	adds r0, r6, #0
	movs r1, #9
	movs r2, #0
	adds r3, r5, r3
	str r4, [sp]
	bl FUN_020071D0
	movs r1, #0x95
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0x4c]
	adds r0, r6, #0
	movs r1, #8
	movs r3, #3
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r5, #0x4c]
	adds r0, r6, #0
	movs r1, #8
	movs r3, #5
	bl FUN_0200710C
	ldrb r1, [r5, #7]
	adds r0, r6, #0
	adds r2, r4, #0
	bl ov114_0225E550
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0xd
	str r0, [sp, #4]
	movs r0, #0xe
	str r0, [sp, #8]
	ldr r0, _0225E850 @ =0x00001388
	adds r1, r6, #0
	str r0, [sp, #0xc]
	movs r0, #0x73
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r2, #0xb
	movs r3, #5
	str r4, [sp, #0x10]
	bl ov114_0225CD54
	movs r1, #0x79
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov114_0225F148
	movs r3, #0x82
	lsls r3, r3, #2
	adds r0, r5, r3
	adds r1, r5, #0
	adds r2, r5, #0
	subs r3, #0x3c
	str r6, [sp]
	adds r1, #0x4c
	adds r2, #0xa0
	adds r3, r5, r3
	str r4, [sp, #4]
	bl ov114_0225F484
	adds r0, r6, #0
	bl FUN_02006CA8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_0225E850: .4byte 0x00001388
	thumb_func_end ov114_0225E744

	thumb_func_start ov114_0225E854
ov114_0225E854: @ 0x0225E854
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x82
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov114_0225F578
	movs r0, #0x95
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r4, #0
	bl ov114_0225F224
	pop {r4, pc}
	thumb_func_end ov114_0225E854

	thumb_func_start ov114_0225E874
ov114_0225E874: @ 0x0225E874
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	ldrb r1, [r4, #4]
	cmp r1, #0x17
	bhi _0225E97E
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225E88C: @ jump table
	.2byte _0225E8BC - _0225E88C - 2 @ case 0
	.2byte _0225E92C - _0225E88C - 2 @ case 1
	.2byte _0225E93C - _0225E88C - 2 @ case 2
	.2byte _0225E954 - _0225E88C - 2 @ case 3
	.2byte _0225E96E - _0225E88C - 2 @ case 4
	.2byte _0225E9E0 - _0225E88C - 2 @ case 5
	.2byte _0225EA52 - _0225E88C - 2 @ case 6
	.2byte _0225EABE - _0225E88C - 2 @ case 7
	.2byte _0225EAD0 - _0225E88C - 2 @ case 8
	.2byte _0225EAE0 - _0225E88C - 2 @ case 9
	.2byte _0225EAFC - _0225E88C - 2 @ case 10
	.2byte _0225EB34 - _0225E88C - 2 @ case 11
	.2byte _0225EB68 - _0225E88C - 2 @ case 12
	.2byte _0225EBD0 - _0225E88C - 2 @ case 13
	.2byte _0225EBEA - _0225E88C - 2 @ case 14
	.2byte _0225EC12 - _0225E88C - 2 @ case 15
	.2byte _0225EC36 - _0225E88C - 2 @ case 16
	.2byte _0225EC54 - _0225E88C - 2 @ case 17
	.2byte _0225EC74 - _0225E88C - 2 @ case 18
	.2byte _0225EC82 - _0225E88C - 2 @ case 19
	.2byte _0225EC90 - _0225E88C - 2 @ case 20
	.2byte _0225ECC0 - _0225E88C - 2 @ case 21
	.2byte _0225ECD0 - _0225E88C - 2 @ case 22
	.2byte _0225ECE6 - _0225E88C - 2 @ case 23
_0225E8BC:
	ldr r0, [r4, #0x18]
	ldr r1, [r0]
	ldr r0, _0225EB9C @ =0x0000064C
	str r1, [r4, r0]
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0225E8D0
	movs r0, #0
	strb r0, [r4, #9]
	b _0225E90E
_0225E8D0:
	adds r0, r4, #0
	bl ov114_0225F8FC
	ldrb r2, [r4, #0x15]
	adds r1, r4, r2
	adds r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	bne _0225E8FE
	lsls r1, r2, #2
	adds r1, r4, r1
	ldr r1, [r1, #0x1c]
	cmp r1, r0
	bls _0225E8FE
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	bl ov114_0225E180
	ldr r1, [r4, #0x18]
	str r0, [r1]
	movs r0, #1
	strb r0, [r4, #9]
	b _0225E902
_0225E8FE:
	movs r0, #0
	strb r0, [r4, #9]
_0225E902:
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0225E90E
	adds r0, r4, #0
	bl ov114_0225F920
_0225E90E:
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrh r0, [r4, #2]
	ldr r3, _0225EBA0 @ =0x0000FFFF
	adds r2, r1, #0
	str r0, [sp, #8]
	movs r0, #3
	bl FUN_0200F174
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225E92C:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225E97E
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225E93C:
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x68
	adds r1, #0x58
	movs r2, #1
	movs r3, #0
	bl ov114_0225D368
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225E954:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl ov114_0225D43C
	cmp r0, #0
	beq _0225E97E
	movs r0, #0x40
	strh r0, [r4]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225E96E:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225E97E
	subs r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225E980
_0225E97E:
	b _0225ED10
_0225E980:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	movs r5, #1
	bl ov114_0225D400
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r1, r4, #0
	ldrh r2, [r4, #2]
	adds r0, r4, r0
	adds r1, #0x4c
	bl ov114_0225DF7C
	adds r0, r4, #0
	bl ov114_0225F8FC
	ldrb r6, [r4, #0x14]
	adds r2, r0, #0
	movs r1, #0
	cmp r6, #0
	ble _0225E9C0
	adds r3, r4, #0
	adds r7, r1, #0
_0225E9B0:
	ldr r0, [r3, #0x1c]
	cmp r0, r2
	bls _0225E9B8
	adds r5, r7, #0
_0225E9B8:
	adds r1, r1, #1
	adds r3, r3, #4
	cmp r1, r6
	blt _0225E9B0
_0225E9C0:
	cmp r5, #1
	bne _0225E9D0
	ldr r0, _0225EBA4 @ =0x00000652
	movs r1, #0x10
	strh r1, [r4, r0]
	movs r0, #0x16
	strb r0, [r4, #4]
	b _0225ED10
_0225E9D0:
	ldrb r0, [r4, #4]
	movs r1, #4
	adds r0, r0, #1
	strb r0, [r4, #4]
	movs r0, #0x65
	lsls r0, r0, #4
	strh r1, [r4, r0]
	b _0225ED10
_0225E9E0:
	movs r7, #0x65
	movs r1, #0
	movs r6, #1
	lsls r7, r7, #4
_0225E9E8:
	ldrh r0, [r4, r7]
	subs r0, r0, #1
	strh r0, [r4, r7]
	ldrb r3, [r4, #0x14]
	movs r0, #0
	cmp r3, #0
	ble _0225EA0E
	movs r2, #0x65
	lsls r2, r2, #4
	ldrh r2, [r4, r2]
_0225E9FC:
	adds r5, r4, r0
	adds r5, #0x2c
	ldrb r5, [r5]
	cmp r2, r5
	bne _0225EA08
	adds r1, r6, #0
_0225EA08:
	adds r0, r0, #1
	cmp r0, r3
	blt _0225E9FC
_0225EA0E:
	cmp r1, #0
	beq _0225E9E8
	movs r1, #0x65
	lsls r1, r1, #4
	ldrh r0, [r4, r1]
	cmp r0, #3
	bhi _0225EA40
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225EA28: @ jump table
	.2byte _0225EA38 - _0225EA28 - 2 @ case 0
	.2byte _0225EA38 - _0225EA28 - 2 @ case 1
	.2byte _0225EA30 - _0225EA28 - 2 @ case 2
	.2byte _0225EA30 - _0225EA28 - 2 @ case 3
_0225EA30:
	movs r2, #0x10
	adds r0, r1, #2
	strh r2, [r4, r0]
	b _0225EA44
_0225EA38:
	movs r2, #0x20
	adds r0, r1, #2
	strh r2, [r4, r0]
	b _0225EA44
_0225EA40:
	bl FUN_02022974
_0225EA44:
	adds r0, r4, #0
	bl ov114_0225F7D8
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EA52:
	ldr r0, _0225EBA4 @ =0x00000652
	ldrh r1, [r4, r0]
	subs r1, r1, #1
	strh r1, [r4, r0]
	adds r0, r4, #0
	bl ov114_0225F7D8
	ldr r0, _0225EBA4 @ =0x00000652
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0225EAF0
	ldrb r0, [r4, #0x14]
	movs r5, #0
	cmp r0, #0
	ble _0225EAA6
	movs r6, #0x65
	adds r7, r5, #0
	lsls r6, r6, #4
_0225EA76:
	adds r1, r4, r5
	adds r1, #0x2c
	ldrb r2, [r1]
	ldrh r1, [r4, r6]
	adds r0, r7, #0
	cmp r1, r2
	bne _0225EA88
	movs r0, #1
	b _0225EA92
_0225EA88:
	cmp r1, #1
	bne _0225EA92
	cmp r2, #0
	bne _0225EA92
	movs r0, #1
_0225EA92:
	cmp r0, #0
	beq _0225EA9E
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov114_0225F6E4
_0225EA9E:
	ldrb r0, [r4, #0x14]
	adds r5, r5, #1
	cmp r5, r0
	blt _0225EA76
_0225EAA6:
	movs r0, #0x65
	lsls r0, r0, #4
	ldrh r0, [r4, r0]
	cmp r0, #1
	bls _0225EAB6
	movs r0, #5
	strb r0, [r4, #4]
	b _0225ED10
_0225EAB6:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EABE:
	adds r0, r4, #0
	bl ov114_0225F7D8
	cmp r0, #0
	beq _0225EAF0
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EAD0:
	adds r0, r1, #1
	strb r0, [r4, #4]
	adds r0, r4, #0
	bl ov114_0225F168
	movs r0, #0x1e
	strh r0, [r4]
	b _0225ED10
_0225EAE0:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225EAEA
	subs r0, r0, #1
	strh r0, [r4]
_0225EAEA:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225EAF2
_0225EAF0:
	b _0225ED10
_0225EAF2:
	movs r0, #0xa
	strb r0, [r4, #4]
	movs r0, #0
	strh r0, [r4]
	b _0225ED10
_0225EAFC:
	ldrb r1, [r4, #0x15]
	adds r0, r4, r1
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225EB0C
	movs r5, #0x11
	b _0225EB0E
_0225EB0C:
	movs r5, #0x12
_0225EB0E:
	lsls r1, r1, #2
	adds r1, r4, r1
	adds r0, r4, #0
	ldr r1, [r1, #0x3c]
	adds r0, #0x58
	bl ov114_0225D104
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x68
	adds r1, #0x58
	adds r2, r5, #0
	movs r3, #0
	bl ov114_0225D368
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EB34:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl ov114_0225D43C
	cmp r0, #0
	beq _0225EBFA
	adds r0, r4, #0
	bl ov114_0225F860
	cmp r0, #1
	bne _0225EBFA
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0225EB5C
	movs r0, #0x66
	strh r0, [r4]
	movs r0, #0xe
	strb r0, [r4, #4]
	b _0225ED10
_0225EB5C:
	movs r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EB68:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225EB74
	subs r0, r0, #1
	strh r0, [r4]
	b _0225ED10
_0225EB74:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0225EBA8
	ldr r1, [r4, #0x18]
	adds r0, r4, #0
	ldr r1, [r1]
	adds r0, #0x58
	bl ov114_0225D170
	ldr r0, _0225EB9C @ =0x0000064C
	ldr r1, [r4, r0]
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	cmp r1, r0
	bne _0225EB96
	movs r5, #0x13
	b _0225EBAA
_0225EB96:
	movs r5, #2
	b _0225EBAA
	nop
_0225EB9C: .4byte 0x0000064C
_0225EBA0: .4byte 0x0000FFFF
_0225EBA4: .4byte 0x00000652
_0225EBA8:
	movs r5, #9
_0225EBAA:
	ldrb r1, [r4, #0x15]
	adds r0, r4, #0
	adds r0, #0x58
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #0x3c]
	bl ov114_0225D104
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x68
	adds r1, #0x58
	adds r2, r5, #0
	movs r3, #0
	bl ov114_0225D368
	movs r0, #0xd
	strb r0, [r4, #4]
	b _0225ED10
_0225EBD0:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl ov114_0225D43C
	cmp r0, #0
	beq _0225EBFA
	movs r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EBEA:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225EBFA
	subs r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225EBFC
_0225EBFA:
	b _0225ED10
_0225EBFC:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl ov114_0225D400
	movs r0, #0x1e
	strh r0, [r4]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EC12:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225EC1E
	subs r0, r0, #1
	strh r0, [r4]
	b _0225ED10
_0225EC1E:
	movs r0, #0x82
	bl FUN_020364F0
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0225EC2E
	bl FUN_021D1F18
_0225EC2E:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EC36:
	movs r0, #0x82
	bl FUN_02036540
	cmp r0, #0
	beq _0225ED10
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _0225EC4C
	movs r0, #0x13
	strb r0, [r4, #4]
	b _0225ED10
_0225EC4C:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EC54:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0
	ldrh r0, [r4, #2]
	adds r2, r1, #0
	adds r3, r1, #0
	str r0, [sp, #8]
	movs r0, #3
	bl FUN_0200F174
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EC74:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225ED10
	movs r0, #0x15
	strb r0, [r4, #4]
	b _0225ED10
_0225EC82:
	adds r0, r4, #0
	bl ov114_0225F890
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225EC90:
	ldrh r0, [r4, #2]
	adds r1, r4, #0
	adds r2, r4, #0
	str r0, [sp]
	movs r0, #0x7a
	lsls r0, r0, #2
	ldrb r3, [r4, #7]
	adds r0, r4, r0
	adds r1, #0x68
	adds r2, #0x58
	bl ov114_0225F27C
	cmp r0, #0
	beq _0225ED10
	movs r0, #0x7a
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov114_0225F420
	strb r0, [r4, #8]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225ECC0:
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov114_0225DFFC
	movs r0, #1
	strb r0, [r4, #6]
	b _0225ED10
_0225ECD0:
	ldr r0, _0225ED3C @ =0x00000652
	ldrh r1, [r4, r0]
	subs r1, r1, #1
	strh r1, [r4, r0]
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0225ED10
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225ED10
_0225ECE6:
	ldrb r0, [r4, #0x14]
	movs r5, #0
	cmp r0, #0
	ble _0225ED0C
_0225ECEE:
	subs r1, r0, #1
	adds r0, r4, r5
	adds r0, #0x2c
	strb r1, [r0]
	adds r2, r4, r5
	adds r2, #0x2c
	ldrb r2, [r2]
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov114_0225F6E4
	ldrb r0, [r4, #0x14]
	adds r5, r5, #1
	cmp r5, r0
	blt _0225ECEE
_0225ED0C:
	movs r0, #7
	strb r0, [r4, #4]
_0225ED10:
	adds r0, r4, #0
	bl ov114_0225F19C
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov114_0225D070
	ldr r0, [r4, #0x4c]
	movs r1, #3
	movs r2, #4
	movs r3, #2
	bl FUN_0201C63C
	ldr r0, [r4, #0x4c]
	movs r1, #5
	movs r2, #4
	movs r3, #2
	bl FUN_0201C63C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0225ED3C: .4byte 0x00000652
	thumb_func_end ov114_0225E874

	thumb_func_start ov114_0225ED40
ov114_0225ED40: @ 0x0225ED40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r1, #0
	ldrb r0, [r4, #4]
	cmp r0, #0x14
	bhi _0225EE2A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225ED58: @ jump table
	.2byte _0225ED82 - _0225ED58 - 2 @ case 0
	.2byte _0225EDD2 - _0225ED58 - 2 @ case 1
	.2byte _0225EDEA - _0225ED58 - 2 @ case 2
	.2byte _0225EE00 - _0225ED58 - 2 @ case 3
	.2byte _0225EE1A - _0225ED58 - 2 @ case 4
	.2byte _0225EE3E - _0225ED58 - 2 @ case 5
	.2byte _0225EF20 - _0225ED58 - 2 @ case 6
	.2byte _0225EF4A - _0225ED58 - 2 @ case 7
	.2byte _0225EF6E - _0225ED58 - 2 @ case 8
	.2byte _0225EF94 - _0225ED58 - 2 @ case 9
	.2byte _0225EFD2 - _0225ED58 - 2 @ case 10
	.2byte _0225EFF4 - _0225ED58 - 2 @ case 11
	.2byte _0225F01A - _0225ED58 - 2 @ case 12
	.2byte _0225F030 - _0225ED58 - 2 @ case 13
	.2byte _0225F046 - _0225ED58 - 2 @ case 14
	.2byte _0225F05E - _0225ED58 - 2 @ case 15
	.2byte _0225F07C - _0225ED58 - 2 @ case 16
	.2byte _0225F09C - _0225ED58 - 2 @ case 17
	.2byte _0225F0AA - _0225ED58 - 2 @ case 18
	.2byte _0225F0BC - _0225ED58 - 2 @ case 19
	.2byte _0225F0EA - _0225ED58 - 2 @ case 20
_0225ED82:
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0225ED8E
	movs r0, #0
	strb r0, [r4, #9]
	b _0225EDB4
_0225ED8E:
	ldr r0, [r4, #0x30]
	cmp r0, #0xa
	blo _0225EDA4
	ldr r0, [r4, #0x18]
	ldr r0, [r0]
	bl ov114_0225E180
	ldr r1, [r4, #0x18]
	str r0, [r1]
	movs r0, #1
	b _0225EDA6
_0225EDA4:
	movs r0, #0
_0225EDA6:
	strb r0, [r4, #9]
	ldrb r0, [r4, #0x15]
	cmp r0, #0
	bne _0225EDB4
	adds r0, r4, #0
	bl ov114_0225F988
_0225EDB4:
	movs r0, #6
	movs r1, #1
	str r0, [sp]
	str r1, [sp, #4]
	ldrh r0, [r4, #2]
	ldr r3, _0225F0B8 @ =0x0000FFFF
	adds r2, r1, #0
	str r0, [sp, #8]
	movs r0, #3
	bl FUN_0200F174
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EDD2:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225EE2A
	ldrb r0, [r4, #4]
	movs r1, #4
	adds r0, r0, #1
	strb r0, [r4, #4]
	movs r0, #0x65
	lsls r0, r0, #4
	strh r1, [r4, r0]
	b _0225F0F8
_0225EDEA:
	adds r0, r4, #0
	adds r0, #0x68
	adds r1, #0x58
	movs r2, #1
	movs r3, #0
	bl ov114_0225D368
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EE00:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl ov114_0225D43C
	cmp r0, #0
	beq _0225EE2A
	movs r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EE1A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225EE2A
	subs r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225EE2C
_0225EE2A:
	b _0225F0F8
_0225EE2C:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl ov114_0225D400
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EE3E:
	movs r0, #0xcf
	lsls r0, r0, #2
	ldrh r2, [r4, #2]
	adds r0, r4, r0
	adds r1, #0x4c
	bl ov114_0225DF7C
	ldrb r1, [r4, #0x14]
	movs r6, #0
	cmp r1, #0
	ble _0225EF14
	movs r0, #0x97
	lsls r0, r0, #2
	adds r5, r4, r0
	adds r0, r4, #0
	str r0, [sp, #0x1c]
	adds r0, #0x4c
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	str r0, [sp, #0x20]
	adds r0, #0xa0
	str r0, [sp, #0x20]
	adds r0, r4, #0
	str r0, [sp, #0x24]
	adds r0, #0xc
	str r0, [sp, #0x24]
	adds r0, r4, #0
	str r0, [sp, #0x28]
	adds r0, #0x58
	str r4, [sp, #0x18]
	adds r7, r6, #0
	str r0, [sp, #0x28]
_0225EE7E:
	ldr r0, [sp, #0x1c]
	movs r3, #0x96
	str r0, [sp]
	str r6, [sp, #4]
	ldrb r0, [r4, #0x15]
	lsls r3, r3, #2
	str r0, [sp, #8]
	ldr r0, [sp, #0x20]
	str r0, [sp, #0xc]
	movs r0, #0x79
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x10]
	ldrh r0, [r4, #2]
	str r0, [sp, #0x14]
	ldrb r2, [r4, #7]
	ldr r3, [r4, r3]
	adds r0, r5, #0
	bl ov114_0225DAC0
	ldr r0, [sp, #0x24]
	adds r1, r6, #0
	bl ov114_0225C78C
	adds r1, r0, #0
	ldr r0, [sp, #0x24]
	bl ov114_0225C7A4
	movs r1, #0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x28]
	ldr r2, [r2, #0x3c]
	adds r0, r5, #0
	movs r3, #8
	bl ov114_0225DC44
	adds r0, r4, r6
	adds r0, #0x38
	ldrb r0, [r0]
	adds r3, r4, r6
	adds r3, #0x34
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	ldrb r2, [r4, #5]
	ldrb r3, [r3]
	ldr r1, [sp, #0x28]
	adds r0, r5, #0
	bl ov114_0225DCA0
	ldr r1, [sp, #0x1c]
	adds r0, r5, #0
	bl ov114_0225DD80
	adds r0, r5, #0
	bl ov114_0225DD94
	movs r1, #7
	lsls r2, r7, #0x10
	adds r0, r5, #0
	mvns r1, r1
	asrs r2, r2, #0x10
	bl ov114_0225DDD4
	ldr r0, [sp, #0x18]
	ldrb r1, [r4, #0x14]
	adds r0, r0, #4
	adds r6, r6, #1
	adds r5, #0x38
	str r0, [sp, #0x18]
	adds r7, r7, #3
	cmp r6, r1
	blt _0225EE7E
_0225EF14:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	movs r0, #0x10
	strh r0, [r4]
	b _0225F0F8
_0225EF20:
	adds r0, r4, #0
	bl ov114_0225F7D8
	cmp r0, #1
	bne _0225EFB2
	ldrh r0, [r4]
	subs r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225EFB2
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r1, [r4, #0x30]
	adds r0, r4, r0
	bl ov114_0225F598
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EF4A:
	movs r0, #0x82
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, #0x4c
	bl ov114_0225F5AC
	cmp r0, #1
	bne _0225EFB2
	ldrb r0, [r4, #9]
	cmp r0, #1
	bne _0225EF66
	adds r0, r4, #0
	bl ov114_0225F83C
_0225EF66:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EF6E:
	adds r0, r4, #0
	ldr r1, [r4, #0x30]
	adds r0, #0x58
	bl ov114_0225D154
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x68
	adds r1, #0x58
	movs r2, #7
	movs r3, #0
	bl ov114_0225D368
	movs r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EF94:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl ov114_0225D43C
	cmp r0, #1
	bne _0225EFB2
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225EFCC
	adds r0, r4, #0
	bl ov114_0225F860
	cmp r0, #1
	beq _0225EFB4
_0225EFB2:
	b _0225F0F8
_0225EFB4:
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _0225EFC4
	movs r0, #0x66
	strh r0, [r4]
	movs r0, #0xc
	strb r0, [r4, #4]
	b _0225F0F8
_0225EFC4:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EFCC:
	subs r0, r0, #1
	strh r0, [r4]
	b _0225F0F8
_0225EFD2:
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0225EFDC
	movs r2, #8
	b _0225EFDE
_0225EFDC:
	movs r2, #9
_0225EFDE:
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x68
	adds r1, #0x58
	movs r3, #0
	bl ov114_0225D368
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225EFF4:
	adds r0, r4, #0
	adds r0, #0x68
	movs r1, #0
	bl ov114_0225D43C
	cmp r0, #0
	beq _0225F0F8
	movs r0, #0x66
	strh r0, [r4]
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0225F012
	movs r0, #0xd
	strb r0, [r4, #4]
	b _0225F0F8
_0225F012:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225F01A:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225F0F8
	subs r0, r0, #1
	strh r0, [r4]
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225F0F8
	movs r0, #0xe
	strb r0, [r4, #4]
	b _0225F0F8
_0225F030:
	ldrh r0, [r4]
	cmp r0, #0
	beq _0225F03A
	subs r0, r0, #1
	strh r0, [r4]
_0225F03A:
	ldrh r0, [r4]
	cmp r0, #0
	bne _0225F0F8
	movs r0, #0xe
	strb r0, [r4, #4]
	b _0225F0F8
_0225F046:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _0225F050
	bl FUN_021D1F18
_0225F050:
	movs r0, #0x82
	bl FUN_020364F0
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225F05E:
	movs r0, #0x82
	bl FUN_02036540
	cmp r0, #0
	beq _0225F0F8
	ldrb r0, [r4, #0x17]
	cmp r0, #0
	beq _0225F074
	movs r0, #0x12
	strb r0, [r4, #4]
	b _0225F0F8
_0225F074:
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225F07C:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r1, #0
	ldrh r0, [r4, #2]
	adds r2, r1, #0
	adds r3, r1, #0
	str r0, [sp, #8]
	movs r0, #3
	bl FUN_0200F174
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225F09C:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225F0F8
	movs r0, #0x14
	strb r0, [r4, #4]
	b _0225F0F8
_0225F0AA:
	adds r0, r4, #0
	bl ov114_0225F890
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
	.align 2, 0
_0225F0B8: .4byte 0x0000FFFF
_0225F0BC:
	ldrh r0, [r4, #2]
	adds r2, r4, #0
	adds r1, #0x68
	str r0, [sp]
	movs r0, #0x7a
	lsls r0, r0, #2
	ldrb r3, [r4, #7]
	adds r0, r4, r0
	adds r2, #0x58
	bl ov114_0225F27C
	cmp r0, #0
	beq _0225F0F8
	movs r0, #0x7a
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov114_0225F420
	strb r0, [r4, #8]
	ldrb r0, [r4, #4]
	adds r0, r0, #1
	strb r0, [r4, #4]
	b _0225F0F8
_0225F0EA:
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov114_0225DFFC
	movs r0, #1
	strb r0, [r4, #6]
_0225F0F8:
	adds r0, r4, #0
	bl ov114_0225F19C
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov114_0225D070
	ldr r0, [r4, #0x4c]
	movs r1, #3
	movs r2, #4
	movs r3, #2
	bl FUN_0201C63C
	ldr r0, [r4, #0x4c]
	movs r1, #5
	movs r2, #4
	movs r3, #2
	bl FUN_0201C63C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225ED40

	thumb_func_start ov114_0225F124
ov114_0225F124: @ 0x0225F124
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0201DCAC
	adds r0, r4, #0
	adds r0, #0x4c
	bl ov114_0225CFC0
	adds r0, r4, #0
	adds r0, #0xa0
	bl ov114_0225D07C
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov114_0225E08C
	pop {r4, pc}
	thumb_func_end ov114_0225F124

	thumb_func_start ov114_0225F148
ov114_0225F148: @ 0x0225F148
	push {r4, lr}
	adds r3, r2, #0
	adds r4, r0, #0
	ldr r2, _0225F160 @ =0x00000658
	adds r0, r1, #0
	movs r1, #5
	adds r2, r4, r2
	bl FUN_020071EC
	ldr r1, _0225F164 @ =0x00000654
	str r0, [r4, r1]
	pop {r4, pc}
	.align 2, 0
_0225F160: .4byte 0x00000658
_0225F164: .4byte 0x00000654
	thumb_func_end ov114_0225F148

	thumb_func_start ov114_0225F168
ov114_0225F168: @ 0x0225F168
	push {r3, lr}
	ldr r1, _0225F198 @ =0x0000065E
	movs r2, #1
	strh r2, [r0, r1]
	ldrb r3, [r0, #0x14]
	movs r2, #0
	cmp r3, #0
	ble _0225F194
_0225F178:
	adds r1, r0, r2
	adds r1, #0x2c
	ldrb r1, [r1]
	cmp r1, #0
	bne _0225F18E
	ldrb r1, [r0, #0x15]
	cmp r1, r2
	bne _0225F18E
	bl ov114_0225F83C
	pop {r3, pc}
_0225F18E:
	adds r2, r2, #1
	cmp r2, r3
	blt _0225F178
_0225F194:
	pop {r3, pc}
	nop
_0225F198: .4byte 0x0000065E
	thumb_func_end ov114_0225F168

	thumb_func_start ov114_0225F19C
ov114_0225F19C: @ 0x0225F19C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _0225F214 @ =0x0000065E
	ldrh r1, [r5, r0]
	cmp r1, #0
	beq _0225F212
	subs r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0225F1B4
	cmp r0, #8
	bne _0225F1FE
_0225F1B4:
	ldrb r0, [r5, #0x14]
	movs r6, #0
	cmp r0, #0
	ble _0225F1FE
	ldr r4, _0225F218 @ =0x022600D4
	ldr r7, _0225F21C @ =0x0000065C
_0225F1C0:
	adds r0, r5, r6
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225F1F4
	ldr r0, _0225F220 @ =0x00000658
	ldrb r3, [r4]
	ldr r0, [r5, r0]
	ldr r2, [r0, #0xc]
	ldrh r0, [r5, r7]
	lsls r1, r3, #5
	cmp r0, #0
	bne _0225F1DE
	adds r0, r3, #3
	b _0225F1E0
_0225F1DE:
	adds r0, r3, #7
_0225F1E0:
	lsls r0, r0, #5
	adds r2, r2, r0
	movs r0, #0xf
	movs r3, #0x20
	bl FUN_0201DC68
	cmp r0, #0
	bne _0225F1F4
	bl FUN_02022974
_0225F1F4:
	ldrb r0, [r5, #0x14]
	adds r6, r6, #1
	adds r4, r4, #1
	cmp r6, r0
	blt _0225F1C0
_0225F1FE:
	ldr r3, _0225F21C @ =0x0000065C
	ldrh r0, [r5, r3]
	adds r0, r0, #1
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1c
	subs r1, r1, r2
	movs r0, #0x1c
	rors r1, r0
	adds r0, r2, r1
	strh r0, [r5, r3]
_0225F212:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225F214: .4byte 0x0000065E
_0225F218: .4byte 0x022600D4
_0225F21C: .4byte 0x0000065C
_0225F220: .4byte 0x00000658
	thumb_func_end ov114_0225F19C

	thumb_func_start ov114_0225F224
ov114_0225F224: @ 0x0225F224
	ldr r1, _0225F22C @ =0x00000654
	ldr r3, _0225F230 @ =FUN_020181C4
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_0225F22C: .4byte 0x00000654
_0225F230: .4byte FUN_020181C4
	thumb_func_end ov114_0225F224

	thumb_func_start ov114_0225F234
ov114_0225F234: @ 0x0225F234
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	movs r1, #0
	movs r2, #0x20
	adds r5, r0, #0
	adds r7, r3, #0
	blx FUN_020D5124
	ldr r0, [r4]
	str r0, [r5, #8]
	movs r0, #4
	str r0, [r5, #0xc]
	movs r0, #0x8b
	str r0, [r5, #0x10]
	movs r0, #2
	str r0, [r5, #0x14]
	movs r0, #0x18
	strb r0, [r5, #0x18]
	movs r0, #8
	strb r0, [r5, #0x19]
	adds r0, r7, #0
	bl FUN_02015920
	str r0, [r5, #4]
	strb r6, [r5, #1]
	movs r0, #1
	strb r0, [r5, #0x1d]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov114_0225F234

	thumb_func_start ov114_0225F270
ov114_0225F270: @ 0x0225F270
	ldr r3, _0225F278 @ =FUN_02015938
	ldr r0, [r0, #4]
	bx r3
	nop
_0225F278: .4byte FUN_02015938
	thumb_func_end ov114_0225F270

	thumb_func_start ov114_0225F27C
ov114_0225F27C: @ 0x0225F27C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4]
	adds r5, r1, #0
	adds r6, r2, #0
	cmp r0, #0xc
	bhi _0225F2EC
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0225F298: @ jump table
	.2byte _0225F2B2 - _0225F298 - 2 @ case 0
	.2byte _0225F2E4 - _0225F298 - 2 @ case 1
	.2byte _0225F2F6 - _0225F298 - 2 @ case 2
	.2byte _0225F312 - _0225F298 - 2 @ case 3
	.2byte _0225F326 - _0225F298 - 2 @ case 4
	.2byte _0225F338 - _0225F298 - 2 @ case 5
	.2byte _0225F37E - _0225F298 - 2 @ case 6
	.2byte _0225F396 - _0225F298 - 2 @ case 7
	.2byte _0225F3AA - _0225F298 - 2 @ case 8
	.2byte _0225F3C2 - _0225F298 - 2 @ case 9
	.2byte _0225F3D6 - _0225F298 - 2 @ case 10
	.2byte _0225F3F6 - _0225F298 - 2 @ case 11
	.2byte _0225F414 - _0225F298 - 2 @ case 12
_0225F2B2:
	movs r0, #6
	str r0, [sp]
	movs r0, #0
	movs r2, #1
	ldr r5, [sp, #0x20]
	str r2, [sp, #4]
	adds r1, r0, #0
	adds r3, r0, #0
	str r5, [sp, #8]
	bl FUN_0200F174
	ldr r1, [sp, #0x20]
	movs r0, #0
	bl FUN_020397C8
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225F2DC
	adds r0, r5, #0
	bl FUN_021D1E74
_0225F2DC:
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F2E4:
	bl FUN_0200F2AC
	cmp r0, #0
	bne _0225F2EE
_0225F2EC:
	b _0225F41A
_0225F2EE:
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F2F6:
	adds r0, r6, #0
	adds r1, r3, #0
	bl ov114_0225D180
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #3
	movs r3, #1
	bl ov114_0225D368
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F312:
	adds r0, r5, #0
	movs r1, #1
	bl ov114_0225D43C
	cmp r0, #1
	bne _0225F41A
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F326:
	adds r1, r4, #0
	ldr r0, [r4, #4]
	adds r1, #8
	bl FUN_02015958
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F338:
	ldr r0, [r4, #4]
	bl FUN_020159FC
	subs r1, r0, #1
	cmp r1, #1
	bhi _0225F41A
	cmp r0, #1
	bne _0225F354
	movs r1, #0
	movs r0, #0x16
	adds r2, r1, #0
	bl FUN_020359DC
	b _0225F362
_0225F354:
	cmp r0, #2
	bne _0225F362
	movs r1, #0
	movs r0, #0x17
	adds r2, r1, #0
	bl FUN_020359DC
_0225F362:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0xf
	movs r3, #1
	bl ov114_0225D368
	adds r0, r5, #0
	movs r1, #1
	bl ov114_0225D458
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F37E:
	ldrb r1, [r4, #0x1e]
	cmp r1, #0
	beq _0225F41A
	ldrb r1, [r4, #0x1f]
	cmp r1, #0
	beq _0225F390
	movs r0, #0xa
	strb r0, [r4]
	b _0225F41A
_0225F390:
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F396:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #6
	movs r3, #1
	bl ov114_0225D368
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F3AA:
	adds r0, r5, #0
	movs r1, #1
	bl ov114_0225D43C
	cmp r0, #1
	bne _0225F41A
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	movs r0, #0x66
	strh r0, [r4, #2]
	b _0225F41A
_0225F3C2:
	ldrh r0, [r4, #2]
	subs r0, r0, #1
	strh r0, [r4, #2]
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0225F41A
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F3D6:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	movs r1, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	adds r2, r1, #0
	str r0, [sp, #8]
	movs r0, #4
	adds r3, r1, #0
	bl FUN_0200F174
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F3F6:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _0225F41A
	bl FUN_02039794
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _0225F40C
	bl FUN_021D1F18
_0225F40C:
	ldrb r0, [r4]
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F41A
_0225F414:
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0225F41A:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov114_0225F27C

	thumb_func_start ov114_0225F420
ov114_0225F420: @ 0x0225F420
	ldrb r0, [r0, #0x1f]
	bx lr
	thumb_func_end ov114_0225F420

	thumb_func_start ov114_0225F424
ov114_0225F424: @ 0x0225F424
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, r3, #0
	movs r3, #1
	lsls r3, r1
	ldrb r1, [r4, #0x1c]
	tst r1, r3
	bne _0225F442
	cmp r2, #0
	bne _0225F43C
	movs r1, #0
	strb r1, [r4, #0x1d]
_0225F43C:
	ldrb r1, [r4, #0x1c]
	orrs r1, r3
	strb r1, [r4, #0x1c]
_0225F442:
	ldrb r3, [r4, #0x1c]
	movs r2, #0
	adds r1, r2, #0
	movs r5, #1
_0225F44A:
	adds r6, r5, #0
	lsls r6, r1
	tst r6, r3
	beq _0225F454
	adds r2, r2, #1
_0225F454:
	adds r1, r1, #1
	cmp r1, #4
	blt _0225F44A
	cmp r2, r0
	bne _0225F47A
	ldrb r0, [r4, #0x1d]
	cmp r0, #0
	beq _0225F470
	movs r1, #0
	movs r0, #0x18
	adds r2, r1, #0
	bl FUN_020359DC
	pop {r4, r5, r6, pc}
_0225F470:
	movs r1, #0
	movs r0, #0x19
	adds r2, r1, #0
	bl FUN_020359DC
_0225F47A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov114_0225F424

	thumb_func_start ov114_0225F47C
ov114_0225F47C: @ 0x0225F47C
	movs r2, #1
	strb r2, [r0, #0x1e]
	strb r1, [r0, #0x1f]
	bx lr
	thumb_func_end ov114_0225F47C

	thumb_func_start ov114_0225F484
ov114_0225F484: @ 0x0225F484
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	ldr r1, [sp, #0x44]
	str r2, [sp, #0x14]
	str r1, [sp, #0x44]
	movs r1, #0
	movs r2, #0x4c
	adds r7, r0, #0
	adds r6, r3, #0
	ldr r4, [sp, #0x40]
	blx FUN_020D5124
	movs r0, #0x20
	str r0, [sp]
	ldr r0, [sp, #0x44]
	movs r3, #7
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #0
	lsls r3, r3, #6
	bl FUN_02007130
	movs r0, #0x8b
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	movs r1, #0x19
	str r0, [sp, #0xc]
	ldr r2, [r5]
	adds r0, r4, #0
	movs r3, #2
	bl FUN_020070E8
	ldr r0, [sp, #0x44]
	movs r1, #0x1a
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	adds r3, r7, #4
	bl FUN_020071D0
	str r0, [r7]
	movs r0, #0x10
	str r0, [sp]
	movs r0, #0x11
	str r0, [sp, #4]
	movs r0, #0x12
	str r0, [sp, #8]
	ldr r0, _0225F574 @ =0x00001389
	adds r1, r4, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x44]
	movs r2, #0xf
	str r0, [sp, #0x10]
	adds r0, r6, #0
	movs r3, #1
	bl ov114_0225CD54
	str r0, [r7, #0x44]
	movs r0, #0x28
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
_0225F50C:
	ldr r0, [sp, #0x20]
	movs r4, #0x4a
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r6, #0
	str r0, [sp, #0x24]
_0225F518:
	ldr r0, [sp, #0x1c]
	lsls r2, r4, #0x10
	adds r0, r6, r0
	lsls r0, r0, #2
	adds r5, r7, r0
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [r7, #0x44]
	ldr r1, [r1]
	ldr r3, [sp, #0x24]
	asrs r2, r2, #0x10
	bl ov114_0225CDB4
	str r0, [r5, #8]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r5, #8]
	ldr r1, [sp, #0x18]
	bl FUN_02021D6C
	ldr r0, [r5, #8]
	movs r1, #0
	bl FUN_02021E80
	adds r6, r6, #1
	adds r4, #0x18
	cmp r6, #5
	blt _0225F518
	ldr r0, [sp, #0x20]
	adds r0, #0x24
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #5
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #3
	blt _0225F50C
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225F574: .4byte 0x00001389
	thumb_func_end ov114_0225F484

	thumb_func_start ov114_0225F578
ov114_0225F578: @ 0x0225F578
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	adds r5, r6, #0
_0225F580:
	ldr r0, [r5, #8]
	bl FUN_02021BD4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xf
	blt _0225F580
	ldr r0, [r6]
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov114_0225F578

	thumb_func_start ov114_0225F598
ov114_0225F598: @ 0x0225F598
	adds r2, r0, #0
	adds r2, #0x4b
	strb r1, [r2]
	adds r1, r0, #0
	movs r2, #0
	adds r1, #0x48
	strb r2, [r1]
	adds r0, #0x4a
	strb r2, [r0]
	bx lr
	thumb_func_end ov114_0225F598

	thumb_func_start ov114_0225F5AC
ov114_0225F5AC: @ 0x0225F5AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, #0x48
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #3
	bls _0225F5BE
	b _0225F6DA
_0225F5BE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225F5CA: @ jump table
	.2byte _0225F5D2 - _0225F5CA - 2 @ case 0
	.2byte _0225F620 - _0225F5CA - 2 @ case 1
	.2byte _0225F66C - _0225F5CA - 2 @ case 2
	.2byte _0225F6D4 - _0225F5CA - 2 @ case 3
_0225F5D2:
	ldr r0, [r4, #4]
	movs r1, #0x8b
	bl ov114_0225CCB0
	movs r3, #0
	str r3, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x14
	str r0, [sp, #8]
	ldr r2, [r4, #4]
	ldr r0, [r5]
	movs r1, #2
	adds r2, #0xc
	bl FUN_020198C0
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r0, #0xe
	str r0, [sp, #8]
	movs r2, #0
	ldr r0, [r5]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_02019E2C
	ldr r0, [r5]
	movs r1, #2
	bl FUN_0201C3C0
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	adds r4, #0x48
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F6DA
_0225F620:
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r1, r0
	bne _0225F638
	movs r0, #3
	adds r4, #0x48
	strb r0, [r4]
	b _0225F6DA
_0225F638:
	ldr r0, _0225F6E0 @ =0x0000057C
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	movs r1, #0xf
	blx FUN_020E1F6C
	lsls r0, r1, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	movs r1, #1
	bl FUN_02021CAC
	adds r0, r4, #0
	movs r1, #8
	adds r0, #0x49
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x48
	ldrb r0, [r0]
	adds r4, #0x48
	adds r0, r0, #1
	strb r0, [r4]
	b _0225F6DA
_0225F66C:
	adds r0, r4, #0
	adds r0, #0x49
	ldrb r0, [r0]
	subs r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x49
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x49
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225F6DA
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r0, [r0]
	adds r1, r0, #1
	adds r0, r4, #0
	adds r0, #0x4a
	strb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x4a
	ldrb r5, [r0]
	movs r1, #0xf
	adds r0, r5, #0
	blx FUN_020E1F6C
	cmp r1, #0
	bne _0225F6CC
	adds r0, r4, #0
	adds r0, #0x4b
	ldrb r0, [r0]
	cmp r5, r0
	beq _0225F6CC
	movs r6, #0
	adds r5, r4, #0
	adds r7, r6, #0
_0225F6B4:
	ldr r0, [r5, #8]
	adds r1, r7, #0
	bl FUN_02021CAC
	ldr r0, [r5, #8]
	movs r1, #2
	bl FUN_02021D6C
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, #0xf
	blt _0225F6B4
_0225F6CC:
	movs r0, #1
	adds r4, #0x48
	strb r0, [r4]
	b _0225F6DA
_0225F6D4:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225F6DA:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225F6E0: .4byte 0x0000057C
	thumb_func_end ov114_0225F5AC

	thumb_func_start ov114_0225F6E4
ov114_0225F6E4: @ 0x0225F6E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r6, r1, #0
	adds r5, r0, #0
	movs r0, #0x38
	adds r4, r6, #0
	muls r4, r0, r4
	adds r0, r5, #0
	adds r0, #0x4c
	str r0, [sp]
	str r6, [sp, #4]
	ldrb r0, [r5, #0x15]
	movs r3, #0x97
	lsls r3, r3, #2
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xa0
	str r0, [sp, #0xc]
	adds r0, r3, #0
	subs r0, #0x78
	ldr r0, [r5, r0]
	adds r7, r5, r3
	str r0, [sp, #0x10]
	ldrh r0, [r5, #2]
	str r2, [sp, #0x18]
	subs r3, r3, #4
	str r0, [sp, #0x14]
	ldrb r1, [r5, #0x14]
	ldrb r2, [r5, #7]
	ldr r3, [r5, r3]
	adds r0, r7, r4
	bl ov114_0225DAC0
	adds r0, r5, #0
	adds r0, #0xc
	adds r1, r6, #0
	bl ov114_0225C78C
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xc
	bl ov114_0225C7A4
	lsls r1, r6, #2
	str r1, [sp, #0x1c]
	movs r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x1c]
	str r0, [sp, #4]
	adds r2, r5, r2
	adds r1, r5, #0
	ldr r2, [r2, #0x3c]
	adds r0, r7, r4
	adds r1, #0x58
	movs r3, #8
	bl ov114_0225DC44
	adds r0, r5, r6
	adds r0, #0x38
	ldrb r0, [r0]
	adds r3, r5, r6
	adds r1, r5, #0
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r3, #0x34
	ldrb r2, [r5, #5]
	ldrb r3, [r3]
	adds r0, r7, r4
	adds r1, #0x58
	bl ov114_0225DCA0
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0225F77E
	movs r1, #5
	b _0225F780
_0225F77E:
	movs r1, #6
_0225F780:
	ldr r3, [sp, #0x18]
	movs r0, #0
	adds r6, r3, #1
	movs r3, #4
	subs r3, r3, r6
	lsls r6, r3, #1
	ldr r3, _0225F7D4 @ =0x022600D8
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	ldrsh r6, [r3, r6]
	movs r3, #0xb0
	str r1, [sp, #4]
	adds r2, r5, r2
	subs r3, r3, r6
	adds r1, r5, #0
	lsls r3, r3, #0x10
	ldr r2, [r2, #0x1c]
	adds r0, r7, r4
	adds r1, #0x58
	asrs r3, r3, #0x10
	bl ov114_0225DD2C
	adds r5, #0x4c
	adds r0, r7, r4
	adds r1, r5, #0
	bl ov114_0225DD80
	ldr r1, [sp, #0x18]
	adds r0, r7, r4
	bl ov114_0225DD0C
	ldr r1, [sp, #0x18]
	adds r0, r7, r4
	lsls r2, r1, #1
	ldr r1, _0225F7D4 @ =0x022600D8
	ldrsh r1, [r1, r2]
	movs r2, #0
	bl ov114_0225DDD4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225F7D4: .4byte 0x022600D8
	thumb_func_end ov114_0225F6E4

	thumb_func_start ov114_0225F7D8
ov114_0225F7D8: @ 0x0225F7D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldrb r0, [r7, #0x14]
	cmp r0, #0
	ble _0225F836
	movs r0, #0x97
	lsls r0, r0, #2
	adds r6, r7, r0
	adds r4, r7, #0
	adds r5, r6, #0
_0225F7F6:
	movs r0, #0x9b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0225F820
	adds r0, r6, #0
	bl ov114_0225DE70
	str r0, [sp, #8]
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r0, r7, r0
	adds r1, r5, #0
	bl ov114_0225E028
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _0225F824
	movs r0, #0
	str r0, [sp]
	b _0225F824
_0225F820:
	movs r0, #0
	str r0, [sp]
_0225F824:
	ldr r0, [sp, #4]
	ldrb r1, [r7, #0x14]
	adds r0, r0, #1
	adds r4, #0x38
	adds r6, #0x38
	adds r5, #0x38
	str r0, [sp, #4]
	cmp r0, r1
	blt _0225F7F6
_0225F836:
	ldr r0, [sp]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov114_0225F7D8

	thumb_func_start ov114_0225F83C
ov114_0225F83C: @ 0x0225F83C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0225F858
	ldr r0, _0225F85C @ =0x000004C6
	bl FUN_02006150
	movs r0, #0x66
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
_0225F858:
	pop {r4, pc}
	nop
_0225F85C: .4byte 0x000004C6
	thumb_func_end ov114_0225F83C

	thumb_func_start ov114_0225F860
ov114_0225F860: @ 0x0225F860
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0225F87E
	bl FUN_020061E4
	cmp r0, #0
	bne _0225F87E
	movs r0, #0x66
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
_0225F87E:
	movs r0, #0x66
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #1
	beq _0225F88C
	movs r0, #1
	pop {r4, pc}
_0225F88C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov114_0225F860

	thumb_func_start ov114_0225F890
ov114_0225F890: @ 0x0225F890
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	bl FUN_0202B370
	adds r4, r0, #0
	ldrb r0, [r5, #0x14]
	movs r6, #0
	cmp r0, #0
	ble _0225F8FA
	add r7, sp, #0
_0225F8A6:
	adds r0, r5, r6
	ldrb r0, [r0, #0x10]
	bl FUN_02032F1C
	adds r1, r0, #0
	ldr r0, [r5, #0xc]
	adds r2, r7, #0
	bl FUN_0203909C
	cmp r0, #0
	beq _0225F8C0
	cmp r0, #1
	bne _0225F8F2
_0225F8C0:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0225F8D0
	cmp r0, #1
	beq _0225F8DC
	cmp r0, #2
	beq _0225F8E8
	b _0225F8F2
_0225F8D0:
	ldr r1, [sp]
	adds r0, r4, #0
	movs r2, #1
	bl FUN_0202B1F8
	b _0225F8F2
_0225F8DC:
	ldr r1, [sp]
	adds r0, r4, #0
	movs r2, #1
	bl FUN_0202B220
	b _0225F8F2
_0225F8E8:
	ldr r1, [sp]
	adds r0, r4, #0
	movs r2, #1
	bl FUN_0202B248
_0225F8F2:
	ldrb r0, [r5, #0x14]
	adds r6, r6, #1
	cmp r6, r0
	blt _0225F8A6
_0225F8FA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov114_0225F890

	thumb_func_start ov114_0225F8FC
ov114_0225F8FC: @ 0x0225F8FC
	push {r3, lr}
	ldrb r1, [r0, #7]
	cmp r1, #0
	beq _0225F90E
	cmp r1, #1
	beq _0225F912
	cmp r1, #2
	beq _0225F916
	pop {r3, pc}
_0225F90E:
	movs r0, #0
	pop {r3, pc}
_0225F912:
	movs r0, #0
	pop {r3, pc}
_0225F916:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov114_0225F8FC

	thumb_func_start ov114_0225F920
ov114_0225F920: @ 0x0225F920
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r1, sp, #0xc
	movs r4, #0
	str r4, [r1]
	str r4, [r1, #4]
	str r4, [r1, #8]
	adds r5, r0, #0
	str r4, [r1, #0xc]
	bl ov114_0225F8FC
	ldrb r2, [r5, #0x14]
	adds r1, r4, #0
	cmp r2, #0
	ble _0225F966
	adds r2, r5, #0
	add r3, sp, #0xc
_0225F942:
	adds r6, r5, r1
	adds r6, #0x2c
	ldrb r6, [r6]
	cmp r6, #0
	bne _0225F95C
	ldr r6, [r2, #0x1c]
	cmp r0, r6
	beq _0225F95C
	ldr r6, [r5, #0x18]
	adds r4, r4, #1
	adds r6, r6, r1
	ldrb r6, [r6, #4]
	stm r3!, {r6}
_0225F95C:
	ldrb r6, [r5, #0x14]
	adds r1, r1, #1
	adds r2, r2, #4
	cmp r1, r6
	blt _0225F942
_0225F966:
	cmp r4, #0
	beq _0225F984
	ldr r0, [sp, #0x10]
	adds r2, r4, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	ldr r0, [r5, #0x18]
	ldrb r1, [r5, #7]
	ldr r0, [r0, #0x30]
	ldr r3, [sp, #0xc]
	bl FUN_0222EAB4
_0225F984:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov114_0225F920

	thumb_func_start ov114_0225F988
ov114_0225F988: @ 0x0225F988
	push {lr}
	sub sp, #0xc
	adds r1, r0, #0
	ldrb r2, [r1, #0x14]
	cmp r2, #0
	beq _0225F9B2
	ldr r0, [r1, #0x30]
	cmp r0, #0xa
	blo _0225F9B2
	ldr r3, [r1, #0x18]
	ldrb r0, [r3, #5]
	str r0, [sp]
	ldrb r0, [r3, #6]
	str r0, [sp, #4]
	ldrb r0, [r3, #7]
	str r0, [sp, #8]
	ldr r0, [r3, #0x30]
	ldrb r1, [r1, #7]
	ldrb r3, [r3, #4]
	bl FUN_0222EAB4
_0225F9B2:
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov114_0225F988

	thumb_func_start ov114_0225F9B8
ov114_0225F9B8: @ 0x0225F9B8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	adds r0, #0xc
	movs r1, #0
	movs r2, #0xc0
	str r3, [sp, #0x10]
	blx FUN_020D5124
	adds r0, r7, #0
	adds r0, #0xcc
	movs r1, #0
	movs r2, #0xc0
	blx FUN_020D5124
	movs r6, #0
	strh r6, [r7, #8]
	movs r0, #0x63
	strh r6, [r7, #0xa]
	lsls r0, r0, #2
	ldr r4, _0225FAAC @ =0x0226019C
	str r6, [r7, r0]
	adds r5, r7, #0
_0225F9EA:
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [sp, #4]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	lsls r2, r2, #4
	lsls r3, r3, #4
	ldr r0, [sp, #8]
	asrs r2, r2, #0x10
	asrs r3, r3, #0x10
	bl ov114_0225CDB4
	str r0, [r5]
	movs r1, #5
	bl FUN_02021D6C
	ldr r0, [r5]
	movs r1, #0
	bl FUN_02021E80
	adds r6, r6, #1
	adds r4, #0xc
	adds r5, r5, #4
	cmp r6, #2
	blt _0225F9EA
	movs r3, #1
	lsls r3, r3, #0x1a
	ldr r1, [r3]
	movs r0, #0xe
	lsls r0, r0, #0xc
	ands r1, r0
	ldr r4, [r3]
	ldr r2, _0225FAB0 @ =0xFFFF1FFF
	lsrs r1, r1, #0xd
	ands r4, r2
	movs r2, #1
	bics r1, r2
	lsls r1, r1, #0xd
	orrs r1, r4
	adds r2, r3, #0
	str r1, [r3]
	adds r2, #0x48
	ldrh r4, [r2]
	movs r1, #0x3f
	bics r4, r1
	movs r1, #0x1f
	orrs r4, r1
	movs r1, #0x20
	orrs r4, r1
	strh r4, [r2]
	adds r2, r3, #0
	movs r4, #0
	adds r2, #0x40
	strh r4, [r2]
	adds r2, r3, #0
	adds r2, #0x44
	strh r4, [r2]
	adds r2, r3, #0
	adds r2, #0x4a
	ldrb r4, [r2]
	movs r2, #0x19
	lsls r2, r2, #4
	strb r4, [r7, r2]
	ldr r3, [r3]
	ands r0, r3
	lsrs r3, r0, #0xd
	movs r0, #2
	ands r3, r0
	adds r0, r2, #4
	str r3, [r7, r0]
	adds r0, r2, #1
	ldrb r3, [r7, r0]
	movs r0, #0x1f
	bics r3, r0
	movs r0, #0xf
	orrs r3, r0
	adds r0, r2, #1
	strb r3, [r7, r0]
	ldrb r0, [r7, r0]
	orrs r1, r0
	adds r0, r2, #1
	strb r1, [r7, r0]
	ldr r0, _0225FAB4 @ =ov114_0225FCF0
	adds r1, r7, #0
	bl FUN_020177BC
	ldr r0, [r7, #4]
	movs r1, #2
	bl FUN_02021D0C
	adds r0, r7, #0
	bl ov114_0225FC6C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225FAAC: .4byte 0x0226019C
_0225FAB0: .4byte 0xFFFF1FFF
_0225FAB4: .4byte ov114_0225FCF0
	thumb_func_end ov114_0225F9B8

	thumb_func_start ov114_0225FAB8
ov114_0225FAB8: @ 0x0225FAB8
	push {r4, lr}
	movs r1, #8
	ldrsh r2, [r0, r1]
	movs r4, #0
	adds r2, r2, #1
	strh r2, [r0, #8]
	ldrsh r2, [r0, r1]
	cmp r2, #8
	blt _0225FACE
	strh r1, [r0, #8]
	movs r4, #1
_0225FACE:
	movs r1, #1
	bl ov114_0225FB10
	adds r0, r4, #0
	pop {r4, pc}
	thumb_func_end ov114_0225FAB8

	thumb_func_start ov114_0225FAD8
ov114_0225FAD8: @ 0x0225FAD8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #8
	ldrsh r2, [r5, r0]
	movs r1, #0
	adds r4, r1, #0
	subs r2, r2, #1
	strh r2, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _0225FB00
	movs r4, #1
	strh r4, [r5, #8]
	ldr r0, [r5]
	bl FUN_02021CAC
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_02021CAC
_0225FB00:
	movs r1, #0
	adds r0, r5, #0
	mvns r1, r1
	bl ov114_0225FB10
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov114_0225FAD8

	thumb_func_start ov114_0225FB10
ov114_0225FB10: @ 0x0225FB10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r2, [sp]
	movs r0, #8
	ldrsh r2, [r2, r0]
	movs r3, #0x17
	adds r4, r2, #0
	muls r4, r3, r4
	asrs r2, r4, #2
	lsrs r2, r2, #0x1d
	adds r2, r4, r2
	asrs r4, r2, #3
	ldr r2, [sp]
	strh r4, [r2, #0xa]
	ldrsh r0, [r2, r0]
	adds r0, r0, r1
	cmp r0, #8
	bgt _0225FB4A
	cmp r0, #0
	blt _0225FB4A
	adds r1, r0, #0
	muls r1, r3, r1
	asrs r0, r1, #2
	lsrs r0, r0, #0x1d
	adds r0, r1, r0
	asrs r0, r0, #3
	str r0, [sp, #4]
	b _0225FB52
_0225FB4A:
	ldr r0, [sp]
	movs r1, #0xa
	ldrsh r0, [r0, r1]
	str r0, [sp, #4]
_0225FB52:
	ldr r0, [sp, #4]
	ldr r7, _0225FBEC @ =0x0226019C
	ldr r4, [sp]
	movs r6, #0
	lsls r5, r0, #0xc
_0225FB5C:
	adds r3, r7, #0
	ldm r3!, {r0, r1}
	add r2, sp, #8
	stm r2!, {r0, r1}
	ldr r0, [r3]
	cmp r6, #0
	str r0, [r2]
	bne _0225FB9E
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0225FB84
	adds r0, r5, #0
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0225FB92
_0225FB84:
	adds r0, r5, #0
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0225FB92:
	blx FUN_020E1740
	ldr r1, [sp, #0xc]
	subs r0, r1, r0
	str r0, [sp, #0xc]
	b _0225FBCE
_0225FB9E:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble _0225FBB6
	adds r0, r5, #0
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0225FBC4
_0225FBB6:
	adds r0, r5, #0
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0225FBC4:
	blx FUN_020E1740
	ldr r1, [sp, #0xc]
	adds r0, r1, r0
	str r0, [sp, #0xc]
_0225FBCE:
	ldr r0, [r4]
	add r1, sp, #8
	bl FUN_02021C50
	adds r6, r6, #1
	adds r7, #0xc
	adds r4, r4, #4
	cmp r6, #2
	blt _0225FB5C
	ldr r0, [sp]
	bl ov114_0225FC6C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225FBEC: .4byte 0x0226019C
	thumb_func_end ov114_0225FB10

	thumb_func_start ov114_0225FBF0
ov114_0225FBF0: @ 0x0225FBF0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0225FC0A
	bl FUN_0200DA58
	movs r0, #0x63
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r6, r0]
_0225FC0A:
	movs r4, #0
	adds r5, r6, #0
	adds r7, r4, #0
_0225FC10:
	ldr r0, [r5]
	cmp r0, #0
	beq _0225FC1C
	bl FUN_02021BD4
	str r7, [r5]
_0225FC1C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0225FC10
	bl FUN_020177A4
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0225FC64 @ =0xFFFF1FFF
	adds r3, r1, #0
	ands r3, r0
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r1, [r6, r0]
	subs r0, r0, #4
	lsls r1, r1, #0xd
	orrs r1, r3
	str r1, [r2]
	adds r2, #0x4a
	ldrh r2, [r2]
	movs r1, #0x3f
	ldrb r0, [r6, r0]
	bics r2, r1
	lsls r1, r0, #0x1b
	lsrs r1, r1, #0x1b
	lsls r0, r0, #0x1a
	orrs r1, r2
	lsrs r0, r0, #0x1f
	beq _0225FC5C
	movs r0, #0x20
	orrs r1, r0
_0225FC5C:
	ldr r0, _0225FC68 @ =0x0400004A
	strh r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225FC64: .4byte 0xFFFF1FFF
_0225FC68: .4byte 0x0400004A
	thumb_func_end ov114_0225FBF0

	thumb_func_start ov114_0225FC6C
ov114_0225FC6C: @ 0x0225FC6C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xcc
	movs r1, #0
	movs r2, #0xc0
	blx FUN_020D5124
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	movs r0, #0x17
	movs r1, #0
	subs r0, r0, r2
	cmp r0, #0
	ble _0225FCA8
	ldr r7, _0225FCC4 @ =0x00000115
	movs r0, #1
	movs r2, #0x79
	movs r5, #0xa
	movs r6, #0x17
_0225FC92:
	adds r3, r4, r1
	strb r0, [r3, r7]
	subs r3, r2, r1
	adds r3, r4, r3
	adds r3, #0xcc
	strb r0, [r3]
	ldrsh r3, [r4, r5]
	adds r1, r1, #1
	subs r3, r6, r3
	cmp r1, r3
	blt _0225FC92
_0225FCA8:
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0225FCC2
	ldr r0, _0225FCC8 @ =ov114_0225FCCC
	adds r1, r4, #0
	movs r2, #0
	bl FUN_0200DA3C
	movs r1, #0x63
	lsls r1, r1, #2
	str r0, [r4, r1]
_0225FCC2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225FCC4: .4byte 0x00000115
_0225FCC8: .4byte ov114_0225FCCC
	thumb_func_end ov114_0225FC6C

	thumb_func_start ov114_0225FCCC
ov114_0225FCCC: @ 0x0225FCCC
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, #0xcc
	movs r2, #0xc0
	blx FUN_020D50B8
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200DA58
	movs r0, #0x63
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	thumb_func_end ov114_0225FCCC

	thumb_func_start ov114_0225FCF0
ov114_0225FCF0: @ 0x0225FCF0
	push {r4, r5}
	ldr r1, _0225FDB8 @ =0x04000006
	ldrh r2, [r1]
	adds r2, r2, #1
	lsrs r4, r2, #0x1f
	lsls r3, r2, #0x18
	subs r3, r3, r4
	movs r2, #0x18
	rors r3, r2
	adds r2, r4, r3
	cmp r2, #0xc0
	bge _0225FDB2
	subs r3, r1, #6
	ldr r4, [r3]
	movs r3, #0xe
	lsls r3, r3, #0xc
	ands r3, r4
	subs r4, r1, #2
	ldrh r5, [r4]
	movs r4, #2
	lsrs r3, r3, #0xd
	tst r4, r5
	beq _0225FDB2
	cmp r2, #0x49
	blt _0225FD26
	cmp r2, #0x79
	ble _0225FD52
_0225FD26:
	ldr r1, _0225FDBC @ =0x0400004A
	movs r4, #0x3f
	ldrh r1, [r1]
	bics r1, r4
	movs r4, #0x19
	lsls r4, r4, #4
	ldrb r4, [r0, r4]
	lsls r5, r4, #0x1b
	lsrs r5, r5, #0x1b
	lsls r4, r4, #0x1a
	orrs r1, r5
	lsrs r4, r4, #0x1f
	beq _0225FD44
	movs r4, #0x20
	orrs r1, r4
_0225FD44:
	ldr r4, _0225FDBC @ =0x0400004A
	strh r1, [r4]
	movs r1, #0x65
	lsls r1, r1, #2
	ldr r1, [r0, r1]
	orrs r3, r1
	b _0225FD80
_0225FD52:
	adds r1, #0x44
	ldrh r1, [r1]
	movs r4, #0x3f
	bics r1, r4
	ldr r4, _0225FDC0 @ =0x00000191
	ldrb r4, [r0, r4]
	lsls r5, r4, #0x1b
	lsrs r5, r5, #0x1b
	lsls r4, r4, #0x1a
	orrs r1, r5
	lsrs r4, r4, #0x1f
	beq _0225FD6E
	movs r4, #0x20
	orrs r1, r4
_0225FD6E:
	ldr r4, _0225FDBC @ =0x0400004A
	strh r1, [r4]
	movs r1, #0x65
	lsls r1, r1, #2
	ldr r4, [r0, r1]
	movs r1, #2
	orrs r1, r4
	mvns r1, r1
	ands r3, r1
_0225FD80:
	adds r0, r0, r2
	ldrb r0, [r0, #0xc]
	cmp r0, #1
	ldr r0, _0225FDC4 @ =0xFFFF1FFF
	bne _0225FDA0
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ands r1, r0
	movs r0, #1
	orrs r0, r3
	lsls r0, r0, #0xd
	orrs r0, r1
	str r0, [r2]
	pop {r4, r5}
	bx lr
_0225FDA0:
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ands r1, r0
	movs r0, #1
	bics r3, r0
	lsls r0, r3, #0xd
	orrs r0, r1
	str r0, [r2]
_0225FDB2:
	pop {r4, r5}
	bx lr
	nop
_0225FDB8: .4byte 0x04000006
_0225FDBC: .4byte 0x0400004A
_0225FDC0: .4byte 0x00000191
_0225FDC4: .4byte 0xFFFF1FFF
	thumb_func_end ov114_0225FCF0

	thumb_func_start ov114_0225FDC8
ov114_0225FDC8: @ 0x0225FDC8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	ldrh r0, [r4, #4]
	cmp r0, #5
	bhi _0225FE2C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225FDE0: @ jump table
	.2byte _0225FF46 - _0225FDE0 - 2 @ case 0
	.2byte _0225FDEC - _0225FDE0 - 2 @ case 1
	.2byte _0225FE20 - _0225FDE0 - 2 @ case 2
	.2byte _0225FE3C - _0225FDE0 - 2 @ case 3
	.2byte _0225FF00 - _0225FDE0 - 2 @ case 4
	.2byte _0225FF22 - _0225FDE0 - 2 @ case 5
_0225FDEC:
	adds r0, r4, #0
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #8]
	ldr r3, [r4]
	adds r0, #0x34
	bl ov114_0225F9B8
	movs r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	movs r2, #0x80
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	movs r3, #0x61
	bl ov114_0225CDB4
	str r0, [r4, #0x30]
	movs r1, #0
	bl FUN_02021E80
	ldrh r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, r5, r6, pc}
_0225FE20:
	adds r0, r4, #0
	adds r0, #0x34
	bl ov114_0225FAB8
	cmp r0, #1
	beq _0225FE2E
_0225FE2C:
	b _0225FF46
_0225FE2E:
	ldrh r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	strh r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #6]
	pop {r4, r5, r6, pc}
_0225FE3C:
	ldr r0, [r4, #0x30]
	bl FUN_02021E74
	adds r6, r0, #0
	movs r1, #2
	ldr r0, [r4, #0x30]
	lsls r1, r1, #0xc
	bl FUN_02021E2C
	ldr r0, [r4, #0x30]
	bl FUN_02021E74
	adds r5, r0, #0
	cmp r6, r5
	beq _0225FEB0
	cmp r5, #0xf
	bhi _0225FEB0
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225FE6A: @ jump table
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 0
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 1
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 2
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 3
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 4
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 5
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 6
	.2byte _0225FE8A - _0225FE6A - 2 @ case 7
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 8
	.2byte _0225FE92 - _0225FE6A - 2 @ case 9
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 10
	.2byte _0225FE9A - _0225FE6A - 2 @ case 11
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 12
	.2byte _0225FEA2 - _0225FE6A - 2 @ case 13
	.2byte _0225FEB0 - _0225FE6A - 2 @ case 14
	.2byte _0225FEAA - _0225FE6A - 2 @ case 15
_0225FE8A:
	ldr r0, _0225FF4C @ =0x000005DD
	bl FUN_02005748
	b _0225FEB0
_0225FE92:
	ldr r0, _0225FF4C @ =0x000005DD
	bl FUN_02005748
	b _0225FEB0
_0225FE9A:
	ldr r0, _0225FF4C @ =0x000005DD
	bl FUN_02005748
	b _0225FEB0
_0225FEA2:
	ldr r0, _0225FF4C @ =0x000005DD
	bl FUN_02005748
	b _0225FEB0
_0225FEAA:
	ldr r0, _0225FF50 @ =0x00000643
	bl FUN_02005748
_0225FEB0:
	cmp r5, #0xf
	bne _0225FEE4
	movs r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0225FEC6
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_02021F24
	b _0225FED2
_0225FEC6:
	cmp r0, #4
	bne _0225FED2
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_02021F24
_0225FED2:
	movs r0, #6
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #8
	blt _0225FEE4
	movs r0, #0
	strh r0, [r4, #6]
_0225FEE4:
	ldr r0, [r4, #0x30]
	bl FUN_02021FD0
	cmp r0, #0
	bne _0225FF46
	ldrh r0, [r4, #4]
	movs r1, #0
	adds r0, r0, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #0x30]
	bl FUN_02021F24
	add sp, #8
	pop {r4, r5, r6, pc}
_0225FF00:
	adds r0, r4, #0
	adds r0, #0x34
	bl ov114_0225FAD8
	cmp r0, #1
	bne _0225FF46
	ldr r0, [r4, #0x30]
	bl FUN_02021BD4
	movs r1, #0
	str r1, [r4, #0x30]
	ldrh r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	strh r0, [r4, #4]
	strh r1, [r4, #6]
	pop {r4, r5, r6, pc}
_0225FF22:
	movs r0, #6
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #2
	blt _0225FF46
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x34
	bl ov114_0225FBF0
	ldr r0, [r4, #0x2c]
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x2c]
_0225FF46:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0225FF4C: .4byte 0x000005DD
_0225FF50: .4byte 0x00000643
	thumb_func_end ov114_0225FDC8

	thumb_func_start ov114_0225FF54
ov114_0225FF54: @ 0x0225FF54
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	ldrh r0, [r4, #4]
	cmp r0, #5
	bhi _02260034
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225FF6C: @ jump table
	.2byte _02260034 - _0225FF6C - 2 @ case 0
	.2byte _0225FF78 - _0225FF6C - 2 @ case 1
	.2byte _0225FFB4 - _0225FF6C - 2 @ case 2
	.2byte _0225FFD6 - _0225FF6C - 2 @ case 3
	.2byte _0225FFEE - _0225FF6C - 2 @ case 4
	.2byte _02260010 - _0225FF6C - 2 @ case 5
_0225FF78:
	adds r0, r4, #0
	ldr r1, [r4, #0x28]
	ldr r2, [r4, #8]
	ldr r3, [r4]
	adds r0, #0x34
	bl ov114_0225F9B8
	movs r0, #0x40
	str r0, [sp]
	ldr r0, [r4]
	movs r2, #0x80
	str r0, [sp, #4]
	ldr r0, [r4, #0x28]
	ldr r1, [r4, #8]
	movs r3, #0x61
	bl ov114_0225CDB4
	str r0, [r4, #0x30]
	movs r1, #1
	bl FUN_02021D6C
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_02021E80
	ldrh r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, pc}
_0225FFB4:
	adds r0, r4, #0
	adds r0, #0x34
	bl ov114_0225FAB8
	cmp r0, #1
	bne _02260034
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_02021CC8
	ldrh r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	strh r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #6]
	pop {r4, pc}
_0225FFD6:
	movs r0, #6
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #0x32
	blt _02260034
	ldrh r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, pc}
_0225FFEE:
	adds r0, r4, #0
	adds r0, #0x34
	bl ov114_0225FAD8
	cmp r0, #1
	bne _02260034
	ldr r0, [r4, #0x30]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #0x30]
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	add sp, #8
	adds r0, r0, #1
	strh r0, [r4, #4]
	pop {r4, pc}
_02260010:
	movs r0, #6
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	cmp r0, #2
	blt _02260034
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x34
	bl ov114_0225FBF0
	ldr r0, [r4, #0x2c]
	bl FUN_0200DA58
	movs r0, #0
	str r0, [r4, #0x2c]
_02260034:
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov114_0225FF54

	thumb_func_start ov114_02260038
ov114_02260038: @ 0x02260038
	ldr r0, _0226003C @ =0x022603E4
	bx lr
	.align 2, 0
_0226003C: .4byte 0x022603E4
	thumb_func_end ov114_02260038

	thumb_func_start ov114_02260040
ov114_02260040: @ 0x02260040
	movs r0, #5
	bx lr
	thumb_func_end ov114_02260040

	thumb_func_start ov114_02260044
ov114_02260044: @ 0x02260044
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov114_02260038
	adds r4, r0, #0
	bl ov114_02260040
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl FUN_02032798
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov114_02260044

	thumb_func_start ov114_02260060
ov114_02260060: @ 0x02260060
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl ov114_02260038
	adds r4, r0, #0
	bl ov114_02260040
	adds r1, r0, #0
	adds r0, r4, #0
	adds r2, r5, #0
	bl FUN_02032798
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov114_02260060

	thumb_func_start ov114_0226007C
ov114_0226007C: @ 0x0226007C
	movs r0, #0
	bx lr
	thumb_func_end ov114_0226007C

	thumb_func_start ov114_02260080
ov114_02260080: @ 0x02260080
	movs r0, #4
	bx lr
	thumb_func_end ov114_02260080

	thumb_func_start ov114_02260084
ov114_02260084: @ 0x02260084
	adds r0, r3, #0
	ldr r3, _0226008C @ =ov114_0225CA24
	ldr r1, [r2]
	bx r3
	.align 2, 0
_0226008C: .4byte ov114_0225CA24
	thumb_func_end ov114_02260084

	thumb_func_start ov114_02260090
ov114_02260090: @ 0x02260090
	adds r1, r0, #0
	adds r0, r3, #0
	ldr r3, _0226009C @ =ov114_0225CA2C
	movs r2, #1
	bx r3
	nop
_0226009C: .4byte ov114_0225CA2C
	thumb_func_end ov114_02260090

	thumb_func_start ov114_022600A0
ov114_022600A0: @ 0x022600A0
	adds r1, r0, #0
	adds r0, r3, #0
	ldr r3, _022600AC @ =ov114_0225CA2C
	movs r2, #0
	bx r3
	nop
_022600AC: .4byte ov114_0225CA2C
	thumb_func_end ov114_022600A0

	thumb_func_start ov114_022600B0
ov114_022600B0: @ 0x022600B0
	adds r0, r3, #0
	ldr r3, _022600B8 @ =ov114_0225CA44
	movs r1, #1
	bx r3
	.align 2, 0
_022600B8: .4byte ov114_0225CA44
	thumb_func_end ov114_022600B0

	thumb_func_start ov114_022600BC
ov114_022600BC: @ 0x022600BC
	adds r0, r3, #0
	ldr r3, _022600C4 @ =ov114_0225CA44
	movs r1, #0
	bx r3
	.align 2, 0
_022600C4: .4byte ov114_0225CA44
	thumb_func_end ov114_022600BC
	@ 0x022600C8
