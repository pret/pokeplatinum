	.include "macros/function.inc"


	.text

	thumb_func_start ov76_0223B140
ov76_0223B140: @ 0x0223B140
	push {r3, lr}
	ldr r0, _0223B154 @ =0x0000000B
	movs r1, #2
	bl FUN_02006590
	ldr r0, _0223B158 @ =0x0000000C
	movs r1, #2
	bl FUN_02006590
	pop {r3, pc}
	.align 2, 0
_0223B154: .4byte 0x0000000B
_0223B158: .4byte 0x0000000C
	thumb_func_end ov76_0223B140

	thumb_func_start ov76_0223B15C
ov76_0223B15C: @ 0x0223B15C
	adds r3, r2, #0
	subs r3, #0xa
	strb r3, [r0]
	adds r3, r1, #0
	subs r3, #0xa
	strb r3, [r0, #2]
	adds r2, #0xa
	strb r2, [r0, #1]
	adds r1, #0xa
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
	thumb_func_end ov76_0223B15C

	thumb_func_start ov76_0223B174
ov76_0223B174: @ 0x0223B174
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #2]
	movs r1, #0xc0
	strb r1, [r0, #1]
	movs r1, #0xff
	strb r1, [r0, #3]
	bx lr
	thumb_func_end ov76_0223B174

	thumb_func_start ov76_0223B184
ov76_0223B184: @ 0x0223B184
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	beq _0223B1D8
	cmp r2, #1
	bne _0223B1B4
	ldr r3, _0223B1DC @ =0x021BF6BC
	movs r1, #0x1c
	movs r2, #0x1e
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r0, r4, #0
	bl FUN_0200D4C4
	add r1, sp, #0
	adds r0, r4, #0
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	adds r0, r5, #0
	bl ov76_0223B174
	pop {r3, r4, r5, pc}
_0223B1B4:
	add r1, sp, #0
	adds r0, r4, #0
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	add r3, sp, #0
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	adds r0, r5, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	bl ov76_0223B15C
_0223B1D8:
	pop {r3, r4, r5, pc}
	nop
_0223B1DC: .4byte 0x021BF6BC
	thumb_func_end ov76_0223B184

	thumb_func_start ov76_0223B1E0
ov76_0223B1E0: @ 0x0223B1E0
	push {r3, r4, r5, r6, r7, lr}
	movs r4, #0
	adds r7, r4, #0
	movs r6, #0xcb
	adds r5, r0, #0
	subs r7, #0x38
	lsls r6, r6, #2
_0223B1EE:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0223B1FC
	adds r1, r7, #0
	movs r2, #0x10
	bl FUN_0200D5DC
_0223B1FC:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #8
	blt _0223B1EE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223B1E0

	thumb_func_start ov76_0223B208
ov76_0223B208: @ 0x0223B208
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0xf1
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	movs r6, #0
	lsls r0, r0, #3
	adds r0, r7, r0
	ldr r4, [r0, #8]
	adds r5, r7, #0
_0223B21C:
	ldrb r1, [r4]
	cmp r1, #0
	beq _0223B25A
	movs r0, #0xca
	lsls r0, r0, #2
	strb r1, [r5, r0]
	ldrb r1, [r4, #1]
	adds r0, r0, #1
	strb r1, [r5, r0]
	ldrb r1, [r4, #2]
	ldr r0, _0223B274 @ =0x0000032A
	strb r1, [r5, r0]
	lsls r1, r6, #0x18
	adds r0, r7, #0
	lsrs r1, r1, #0x18
	bl ov76_0223B52C
	movs r0, #0x33
	movs r1, #0xcb
	lsls r0, r0, #4
	lsls r1, r1, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	movs r2, #0
	bl ov76_0223B184
	movs r0, #0xc9
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
	b _0223B266
_0223B25A:
	movs r0, #0xc9
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r0, #4
	strb r1, [r5, r0]
_0223B266:
	adds r6, r6, #1
	adds r4, r4, #3
	adds r5, #0x10
	cmp r6, #8
	blt _0223B21C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223B274: .4byte 0x0000032A
	thumb_func_end ov76_0223B208

	thumb_func_start ov76_0223B278
ov76_0223B278: @ 0x0223B278
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0xc9
	movs r4, #0
	adds r3, r6, #0
	lsls r0, r0, #2
_0223B286:
	ldr r2, [r3, r0]
	cmp r2, #1
	beq _0223B2E8
	adds r0, r6, r1
	movs r1, #0x42
	lsls r1, r1, #4
	ldrb r3, [r0, r1]
	lsls r5, r4, #4
	adds r0, r1, #0
	adds r2, r6, r5
	subs r0, #0xf8
	strb r3, [r2, r0]
	adds r0, r1, #0
	subs r0, #0xf7
	adds r7, r6, r0
	movs r0, #0xbe
	subs r1, #0xf6
	strb r0, [r7, r5]
	adds r0, r6, r1
	movs r1, #0x46
	strb r1, [r0, r5]
	str r0, [sp]
	add r0, sp, #8
	add r1, sp, #4
	bl FUN_020227A4
	ldr r0, [sp, #8]
	strb r0, [r7, r5]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0, r5]
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	bl ov76_0223B52C
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	bl ov76_0223B314
	movs r0, #0xc9
	movs r2, #1
	adds r1, r6, r5
	lsls r0, r0, #2
	str r2, [r1, r0]
	add sp, #0xc
	adds r0, r4, #0
	pop {r4, r5, r6, r7, pc}
_0223B2E8:
	adds r4, r4, #1
	adds r3, #0x10
	cmp r4, #8
	blt _0223B286
	movs r0, #0xff
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223B278

	thumb_func_start ov76_0223B2F8
ov76_0223B2F8: @ 0x0223B2F8
	movs r1, #0xc9
	movs r3, #0
	lsls r1, r1, #2
_0223B2FE:
	ldr r2, [r0, r1]
	cmp r2, #1
	beq _0223B308
	movs r0, #1
	bx lr
_0223B308:
	adds r3, r3, #1
	adds r0, #0x10
	cmp r3, #8
	blt _0223B2FE
	movs r0, #0
	bx lr
	thumb_func_end ov76_0223B2F8

	thumb_func_start ov76_0223B314
ov76_0223B314: @ 0x0223B314
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0xc9
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	lsls r7, r7, #2
_0223B320:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _0223B360
	cmp r4, r6
	bne _0223B338
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D474
	b _0223B360
_0223B338:
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D488
	adds r1, r0, #0
	bne _0223B354
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r1, #1
	bl FUN_0200D474
	b _0223B360
_0223B354:
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r1, #2
	bl FUN_0200D474
_0223B360:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #8
	blt _0223B320
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223B314

	thumb_func_start ov76_0223B36C
ov76_0223B36C: @ 0x0223B36C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r1, #0
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r4, [r1]
	adds r1, r0, #0
	adds r1, #0xe0
	ldr r5, [r1]
	movs r1, #0x5b
	str r1, [sp]
	adds r1, #0xca
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	movs r1, #2
	str r1, [sp, #0x10]
	ldr r1, _0223B3F0 @ =0x0000532D
	adds r6, r2, #0
	str r1, [sp, #0x14]
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #3
	adds r2, r4, #0
	adds r3, r5, #0
	bl FUN_0200CD7C
	adds r0, r7, #0
	bl FUN_02098140
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0223B3F4 @ =0x00004E20
	adds r1, r5, #0
	adds r0, r6, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r2, #0x5b
	bl FUN_0200CBDC
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223B3F8 @ =0x0000564D
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x5b
	movs r3, #0x5d
	bl FUN_0200CE0C
	movs r3, #1
	ldr r0, _0223B3FC @ =0x000059D9
	str r3, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0x5b
	bl FUN_0200CE3C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B3F0: .4byte 0x0000532D
_0223B3F4: .4byte 0x00004E20
_0223B3F8: .4byte 0x0000564D
_0223B3FC: .4byte 0x000059D9
	thumb_func_end ov76_0223B36C

	thumb_func_start ov76_0223B400
ov76_0223B400: @ 0x0223B400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x74
	movs r1, #0x26
	lsls r1, r1, #4
	str r0, [sp]
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0223B412
	b _0223B520
_0223B412:
	ldr r0, [sp]
	movs r7, #0
	str r7, [r0, r1]
	add r4, sp, #0x54
	add r5, sp, #0x34
	adds r6, r0, #0
_0223B41E:
	movs r0, #0xff
	str r0, [r4]
	str r0, [r5]
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _0223B436
	bl FUN_0200D488
	str r0, [r4]
	str r7, [r5]
_0223B436:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, r5, #4
	adds r6, #0x10
	cmp r7, #8
	blt _0223B41E
	movs r0, #0
	mov ip, r0
_0223B446:
	mov r0, ip
	movs r3, #7
	cmp r0, #7
	bge _0223B476
	add r4, sp, #0x70
	add r5, sp, #0x50
_0223B452:
	subs r7, r4, #4
	ldr r2, [r4]
	ldr r0, [r7]
	cmp r0, r2
	blt _0223B46A
	ldr r1, [r5]
	subs r6, r5, #4
	str r0, [r4]
	ldr r0, [r6]
	str r0, [r5]
	str r2, [r7]
	str r1, [r6]
_0223B46A:
	subs r3, r3, #1
	mov r0, ip
	subs r4, r4, #4
	subs r5, r5, #4
	cmp r3, r0
	bgt _0223B452
_0223B476:
	mov r0, ip
	adds r0, r0, #1
	mov ip, r0
	cmp r0, #7
	blt _0223B446
	movs r3, #0xca
	lsls r3, r3, #2
	ldr r0, [sp]
	movs r2, #0
	add r1, sp, #0x1c
	adds r4, r3, #1
	adds r5, r3, #2
_0223B48E:
	ldrb r6, [r0, r3]
	adds r2, r2, #1
	strb r6, [r1]
	ldrb r6, [r0, r4]
	strb r6, [r1, #1]
	ldrb r6, [r0, r5]
	adds r0, #0x10
	strb r6, [r1, #2]
	adds r1, r1, #3
	cmp r2, #8
	blt _0223B48E
	add r3, sp, #0x1c
	add r2, sp, #4
	movs r1, #0x18
_0223B4AA:
	ldrb r0, [r3]
	adds r3, r3, #1
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0223B4AA
	ldr r5, [sp]
	movs r6, #0
	add r4, sp, #0x34
	add r7, sp, #4
_0223B4BE:
	ldr r1, [r4]
	cmp r1, #0xff
	bne _0223B4D6
	movs r0, #0xca
	movs r1, #0
	lsls r0, r0, #2
	strb r1, [r5, r0]
	adds r0, r0, #1
	strb r1, [r5, r0]
	ldr r0, _0223B524 @ =0x0000032A
	strb r1, [r5, r0]
	b _0223B516
_0223B4D6:
	lsls r0, r1, #1
	adds r0, r1, r0
	ldrb r1, [r7, r0]
	movs r0, #0xca
	lsls r0, r0, #2
	strb r1, [r5, r0]
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r1, r0
	adds r0, r7, r0
	ldrb r1, [r0, #1]
	ldr r0, _0223B528 @ =0x00000329
	strb r1, [r5, r0]
	ldr r1, [r4]
	lsls r0, r1, #1
	adds r0, r1, r0
	adds r0, r7, r0
	ldrb r1, [r0, #2]
	ldr r0, _0223B524 @ =0x0000032A
	strb r1, [r5, r0]
	ldr r0, [r4]
	lsls r1, r0, #4
	ldr r0, [sp]
	adds r1, r0, r1
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0223B516
	adds r1, r6, #0
	bl FUN_0200D474
_0223B516:
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x10
	cmp r6, #8
	blt _0223B4BE
_0223B520:
	add sp, #0x74
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223B524: .4byte 0x0000032A
_0223B528: .4byte 0x00000329
	thumb_func_end ov76_0223B400

	thumb_func_start ov76_0223B52C
ov76_0223B52C: @ 0x0223B52C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r1, #0
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r7, [r1]
	adds r1, r0, #0
	adds r1, #0xe0
	ldr r6, [r1]
	movs r1, #0xc9
	lsls r1, r1, #2
	adds r2, r0, r1
	lsls r1, r5, #4
	adds r4, r2, r1
	ldr r1, [r2, r1]
	cmp r1, #1
	bne _0223B558
	bl FUN_02022974
	add sp, #0x34
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0223B558:
	ldrb r1, [r4, #4]
	adds r2, r5, #0
	bl ov76_0223B36C
	ldrb r1, [r4, #5]
	add r0, sp, #0
	strh r1, [r0]
	ldrb r1, [r4, #6]
	strh r1, [r0, #2]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r0, #2
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x2c]
	subs r0, r0, #2
	str r1, [sp, #0xc]
	str r1, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	ldrb r0, [r4, #4]
	bl FUN_02098140
	ldr r0, _0223B5B4 @ =0x00004E20
	adds r1, r6, #0
	adds r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _0223B5B8 @ =0x0000532D
	add r2, sp, #0
	str r0, [sp, #0x18]
	ldr r0, _0223B5BC @ =0x0000564D
	str r0, [sp, #0x1c]
	ldr r0, _0223B5C0 @ =0x000059D9
	str r0, [sp, #0x20]
	adds r0, r7, #0
	bl FUN_0200CE6C
	str r0, [r4, #8]
	bl FUN_0200D330
	movs r0, #1
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_0223B5B4: .4byte 0x00004E20
_0223B5B8: .4byte 0x0000532D
_0223B5BC: .4byte 0x0000564D
_0223B5C0: .4byte 0x000059D9
	thumb_func_end ov76_0223B52C

	thumb_func_start ov76_0223B5C4
ov76_0223B5C4: @ 0x0223B5C4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r2, #0
	adds r6, r1, #0
	movs r1, #0xc9
	adds r4, r0, #0
	lsls r7, r5, #4
	adds r3, r4, r7
	lsls r1, r1, #2
	ldr r2, [r3, r1]
	cmp r2, #0
	bne _0223B5DE
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223B5DE:
	cmp r6, #3
	bhi _0223B66E
	adds r2, r6, r6
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223B5EE: @ jump table
	.2byte _0223B5F6 - _0223B5EE - 2 @ case 0
	.2byte _0223B636 - _0223B5EE - 2 @ case 1
	.2byte _0223B60C - _0223B5EE - 2 @ case 2
	.2byte _0223B636 - _0223B5EE - 2 @ case 3
_0223B5F6:
	adds r1, r4, #0
	adds r1, #0xd4
	ldr r1, [r1]
	cmp r1, #0xff
	bne _0223B672
	adds r4, #0xd4
	adds r1, r5, #0
	str r5, [r4]
	bl ov76_0223B314
	b _0223B672
_0223B60C:
	adds r0, #0xd4
	ldr r0, [r0]
	cmp r0, r5
	bne _0223B672
	adds r0, r1, #0
	adds r0, #0xc
	adds r1, #8
	ldr r0, [r3, r0]
	ldr r1, [r3, r1]
	movs r2, #1
	bl ov76_0223B184
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223B758
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223B7D4
	b _0223B672
_0223B636:
	adds r1, r4, #0
	adds r1, #0xd4
	ldr r1, [r1]
	cmp r1, #0xff
	bne _0223B672
	adds r1, r5, #0
	bl ov76_0223B6C4
	movs r1, #0x33
	adds r2, r4, r7
	lsls r1, r1, #4
	adds r6, r0, #0
	ldr r0, [r2, r1]
	subs r1, r1, #4
	ldr r1, [r2, r1]
	movs r2, #0
	bl ov76_0223B184
	cmp r6, #0
	bne _0223B666
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223B704
_0223B666:
	movs r0, #0xff
	adds r4, #0xd4
	str r0, [r4]
	b _0223B672
_0223B66E:
	bl FUN_02022974
_0223B672:
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223B5C4

	thumb_func_start ov76_0223B678
ov76_0223B678: @ 0x0223B678
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0xc9
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_0223B684:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _0223B692
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov76_0223B704
_0223B692:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #8
	blt _0223B684
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223B678

	thumb_func_start ov76_0223B69C
ov76_0223B69C: @ 0x0223B69C
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0xc9
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	lsls r7, r7, #2
_0223B6A8:
	ldr r0, [r5, r7]
	cmp r0, #1
	bne _0223B6BA
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0200D3F4
_0223B6BA:
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #8
	blt _0223B6A8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223B69C

	thumb_func_start ov76_0223B6C4
ov76_0223B6C4: @ 0x0223B6C4
	push {r3, lr}
	lsls r1, r1, #4
	adds r2, r0, r1
	movs r0, #0xc9
	lsls r0, r0, #2
	ldr r1, [r2, r0]
	cmp r1, #0
	bne _0223B6D8
	movs r0, #1
	pop {r3, pc}
_0223B6D8:
	adds r0, #8
	ldr r0, [r2, r0]
	add r1, sp, #0
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	add r2, sp, #0
	movs r0, #2
	movs r1, #0
	ldrsh r0, [r2, r0]
	ldrsh r1, [r2, r1]
	movs r2, #0xbe
	movs r3, #0x46
	bl FUN_02237E54
	cmp r0, #0x3c
	bgt _0223B700
	movs r0, #1
	pop {r3, pc}
_0223B700:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov76_0223B6C4

	thumb_func_start ov76_0223B704
ov76_0223B704: @ 0x0223B704
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xca
	adds r7, r1, #0
	lsls r0, r0, #2
	lsls r4, r7, #4
	adds r6, r5, r0
	ldrb r0, [r6, r4]
	bl FUN_02098140
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r1, _0223B754 @ =0x00004E20
	ldr r0, [r0]
	adds r1, r7, r1
	bl FUN_0200D070
	movs r0, #0xcb
	lsls r0, r0, #2
	adds r7, r5, r0
	ldr r0, [r7, r4]
	bl FUN_0200D0F4
	movs r1, #0
	movs r2, #0xc9
	lsls r2, r2, #2
	str r1, [r7, r4]
	adds r3, r5, r4
	str r1, [r3, r2]
	strb r1, [r6, r4]
	adds r0, r2, #5
	strb r1, [r3, r0]
	adds r0, r2, #6
	adds r2, #0xc
	strb r1, [r3, r0]
	ldr r0, [r3, r2]
	adds r2, r1, #0
	bl ov76_0223B15C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223B754: .4byte 0x00004E20
	thumb_func_end ov76_0223B704

	thumb_func_start ov76_0223B758
ov76_0223B758: @ 0x0223B758
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl ov76_0223B6C4
	cmp r0, #0
	bne _0223B778
	lsls r0, r5, #4
	adds r1, r4, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_0200D810
	pop {r3, r4, r5, pc}
_0223B778:
	lsls r0, r5, #4
	adds r1, r4, r0
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_0200D810
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov76_0223B758

	thumb_func_start ov76_0223B78C
ov76_0223B78C: @ 0x0223B78C
	push {r4, r5, r6, r7}
	movs r2, #0xf1
	lsls r2, r2, #2
	ldr r2, [r0, r2]
	ldr r4, _0223B7D0 @ =0x00000329
	lsls r2, r2, #3
	adds r2, r0, r2
	ldr r2, [r2, #8]
	movs r1, #0
	adds r3, r4, #1
	subs r5, r4, #1
_0223B7A2:
	ldrb r7, [r0, r5]
	ldrb r6, [r2]
	cmp r7, r6
	bne _0223B7BA
	ldrb r7, [r0, r4]
	ldrb r6, [r2, #1]
	cmp r7, r6
	bne _0223B7BA
	ldrb r7, [r0, r3]
	ldrb r6, [r2, #2]
	cmp r7, r6
	beq _0223B7C0
_0223B7BA:
	movs r0, #1
	pop {r4, r5, r6, r7}
	bx lr
_0223B7C0:
	adds r1, r1, #1
	adds r2, r2, #3
	adds r0, #0x10
	cmp r1, #8
	blt _0223B7A2
	movs r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0223B7D0: .4byte 0x00000329
	thumb_func_end ov76_0223B78C

	thumb_func_start ov76_0223B7D4
ov76_0223B7D4: @ 0x0223B7D4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	lsls r4, r1, #4
	movs r0, #0xcb
	adds r1, r5, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	adds r1, #2
	add r2, sp, #0
	bl FUN_0200D550
	add r2, sp, #0
	movs r0, #2
	ldrsh r1, [r2, r0]
	ldr r0, _0223B804 @ =0x00000329
	adds r3, r5, r4
	strb r1, [r3, r0]
	movs r1, #0
	ldrsh r1, [r2, r1]
	adds r0, r0, #1
	strb r1, [r3, r0]
	pop {r3, r4, r5, pc}
	nop
_0223B804: .4byte 0x00000329
	thumb_func_end ov76_0223B7D4

	thumb_func_start ov76_0223B808
ov76_0223B808: @ 0x0223B808
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	movs r3, #0xca
	adds r7, r0, #0
	lsls r3, r3, #2
	movs r0, #0
	adds r1, r7, #0
	add r2, sp, #0
	adds r4, r3, #1
	adds r5, r3, #2
_0223B81C:
	ldrb r6, [r1, r3]
	adds r0, r0, #1
	strb r6, [r2]
	ldrb r6, [r1, r4]
	strb r6, [r2, #1]
	ldrb r6, [r1, r5]
	adds r1, #0x10
	strb r6, [r2, #2]
	adds r2, r2, #3
	cmp r0, #8
	blt _0223B81C
	ldr r0, [r7]
	movs r2, #0xf1
	lsls r2, r2, #2
	ldr r0, [r0, #0x20]
	ldr r2, [r7, r2]
	add r1, sp, #0
	bl FUN_0202CA40
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223B808

	thumb_func_start ov76_0223B848
ov76_0223B848: @ 0x0223B848
	push {r3, r4, r5, r6}
	movs r3, #0xca
	lsls r3, r3, #2
	movs r2, #0
	adds r4, r3, #1
	adds r5, r3, #2
_0223B854:
	ldrb r6, [r1, r3]
	adds r2, r2, #1
	strb r6, [r0]
	ldrb r6, [r1, r4]
	strb r6, [r0, #1]
	ldrb r6, [r1, r5]
	adds r1, #0x10
	strb r6, [r0, #2]
	adds r0, r0, #3
	cmp r2, #8
	blt _0223B854
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov76_0223B848

	thumb_func_start ov76_0223B870
ov76_0223B870: @ 0x0223B870
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, r1, #0
	add r1, sp, #0
	adds r4, r2, #0
	adds r1, #2
	add r2, sp, #0
	adds r6, r3, #0
	bl FUN_0200D550
	add r1, sp, #0
	movs r0, #0
	ldrsh r2, [r1, r0]
	subs r2, r2, r6
	strb r2, [r5]
	ldrsh r0, [r1, r0]
	adds r0, r0, r6
	strb r0, [r5, #1]
	movs r0, #2
	ldrsh r2, [r1, r0]
	subs r2, r2, r4
	strb r2, [r5, #2]
	ldrsh r0, [r1, r0]
	adds r0, r0, r4
	strb r0, [r5, #3]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov76_0223B870

	thumb_func_start ov76_0223B8A8
ov76_0223B8A8: @ 0x0223B8A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	movs r1, #0x35
	bl FUN_02012744
	movs r1, #0x8d
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #2
	movs r1, #0x35
	bl FUN_02002BB8
	pop {r4, pc}
	thumb_func_end ov76_0223B8A8

	thumb_func_start ov76_0223B8C4
ov76_0223B8C4: @ 0x0223B8C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #2
	bl FUN_02002C60
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02012870
	movs r0, #9
	lsls r0, r0, #6
	adds r0, r4, r0
	bl FUN_0201EE28
	movs r0, #0x8f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02012870
	movs r0, #0x93
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201EE28
	movs r0, #0x8d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020127BC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov76_0223B8C4

	thumb_func_start ov76_0223B904
ov76_0223B904: @ 0x0223B904
	push {r3, lr}
	sub sp, #0x18
	adds r3, r0, #0
	movs r0, #0xe
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223B93C @ =0x00007530
	adds r2, r3, #0
	str r0, [sp, #0x14]
	adds r0, r3, #0
	adds r0, #0xe8
	adds r2, #0xdc
	adds r3, #0xe0
	ldr r0, [r0]
	ldr r2, [r2]
	ldr r3, [r3]
	movs r1, #3
	bl FUN_0200CD7C
	add sp, #0x18
	pop {r3, pc}
	.align 2, 0
_0223B93C: .4byte 0x00007530
	thumb_func_end ov76_0223B904

	thumb_func_start ov76_0223B940
ov76_0223B940: @ 0x0223B940
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	bl ov76_0223B904
	movs r1, #0
	adds r0, r4, #0
	movs r2, #0x68
	movs r3, #0xa5
	str r1, [sp]
	bl ov76_0223B98C
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xc0
	movs r3, #0xa5
	bl ov76_0223B98C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov76_0223B940

	thumb_func_start ov76_0223B96C
ov76_0223B96C: @ 0x0223B96C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_020129D0
	movs r0, #0x8f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_020129D0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov76_0223B96C

	thumb_func_start ov76_0223B98C
ov76_0223B98C: @ 0x0223B98C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	adds r5, r0, #0
	adds r4, r1, #0
	str r2, [sp, #0x10]
	adds r7, r3, #0
	movs r0, #0
	movs r1, #0x1a
	movs r2, #8
	movs r3, #0x35
	bl FUN_0200B144
	adds r1, r4, #5
	str r0, [sp, #0x14]
	bl FUN_0200B1EC
	str r0, [sp, #0x18]
	add r0, sp, #0x1c
	bl FUN_0201A7A0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xe4
	ldr r0, [r0]
	add r1, sp, #0x1c
	movs r2, #0xa
	movs r3, #2
	bl FUN_0201A870
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223BA88 @ =0x000F0D02
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	add r0, sp, #0x1c
	movs r1, #2
	str r3, [sp, #0xc]
	bl FUN_0201D78C
	add r0, sp, #0x1c
	movs r1, #2
	movs r2, #0x35
	bl FUN_02012898
	movs r3, #9
	lsls r3, r3, #6
	movs r1, #0xc
	adds r6, r4, #0
	muls r6, r1, r6
	adds r3, r5, r3
	movs r1, #1
	movs r2, #2
	adds r3, r3, r6
	bl FUN_0201ED94
	movs r0, #0x8d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x1c
	str r0, [sp, #0x30]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	bl FUN_0200D9B0
	str r0, [sp, #0x34]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r0, [r0]
	ldr r1, _0223BA8C @ =0x00007530
	bl FUN_0200D04C
	str r0, [sp, #0x38]
	movs r2, #0
	movs r0, #0x91
	str r2, [sp, #0x3c]
	adds r1, r5, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x18]
	movs r0, #2
	bl FUN_02002D7C
	lsrs r1, r0, #1
	ldr r0, [sp, #0x10]
	adds r7, #0xc0
	subs r0, r0, r1
	str r0, [sp, #0x44]
	movs r0, #1
	str r0, [sp, #0x4c]
	movs r0, #0x28
	str r0, [sp, #0x50]
	movs r0, #2
	str r0, [sp, #0x54]
	movs r0, #0x35
	str r0, [sp, #0x58]
	movs r0, #0x8e
	lsls r0, r0, #2
	adds r5, r5, r0
	str r7, [sp, #0x48]
	lsls r4, r4, #2
	add r0, sp, #0x2c
	bl FUN_020127E8
	str r0, [r5, r4]
	ldr r0, [r5, r4]
	ldr r1, [sp, #0x70]
	bl FUN_02012AC0
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
	ldr r0, [sp, #0x14]
	bl FUN_0200B190
	add r0, sp, #0x1c
	bl FUN_0201A8FC
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223BA88: .4byte 0x000F0D02
_0223BA8C: .4byte 0x00007530
	thumb_func_end ov76_0223B98C

	thumb_func_start ov76_0223BA90
ov76_0223BA90: @ 0x0223BA90
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	adds r3, r0, #0
	adds r5, r0, #0
	movs r0, #0x42
	lsls r0, r0, #4
_0223BAA4:
	adds r2, r7, r3
	adds r3, r3, #1
	strb r5, [r2, r0]
	cmp r3, #8
	blt _0223BAA4
	lsls r0, r1, #3
	str r0, [sp, #8]
_0223BAB2:
	movs r6, #0
	adds r4, r7, #0
_0223BAB6:
	ldr r0, [r4, #8]
	adds r1, r5, #0
	bl FUN_0202CA94
	cmp r0, #0
	bne _0223BACA
	adds r6, r6, #1
	adds r4, #8
	cmp r6, #0xc
	blt _0223BAB6
_0223BACA:
	adds r1, r7, r5
	adds r1, #0x80
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223BAD8
	cmp r0, #1
	bne _0223BAFA
_0223BAD8:
	ldr r0, [sp]
	adds r1, r0, #1
	ldr r0, [sp, #8]
	str r1, [sp]
	cmp r1, r0
	ble _0223BAFA
	ldr r0, [sp, #4]
	adds r2, r5, #1
	adds r1, r7, r0
	movs r0, #0x42
	lsls r0, r0, #4
	strb r2, [r1, r0]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #8
	bge _0223BB00
_0223BAFA:
	adds r5, r5, #1
	cmp r5, #0x51
	blt _0223BAB2
_0223BB00:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223BA90

	thumb_func_start ov76_0223BB04
ov76_0223BB04: @ 0x0223BB04
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	adds r0, #0xdc
	ldr r6, [r0]
	adds r0, r7, #0
	adds r0, #0xe0
	ldr r5, [r0]
	adds r0, r7, #0
	adds r0, #0xe8
	ldr r0, [r0]
	movs r4, #0
	str r0, [sp, #0x18]
_0223BB1E:
	movs r0, #0x42
	adds r1, r7, r4
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	bl FUN_02098140
	adds r3, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0223BB9C @ =0x000061A8
	adds r1, r5, #0
	adds r0, r4, r0
	str r0, [sp, #8]
	adds r0, r6, #0
	movs r2, #0x5b
	bl FUN_0200CBDC
	adds r4, r4, #1
	cmp r4, #8
	blt _0223BB1E
	movs r0, #0x5b
	str r0, [sp]
	adds r0, #0xca
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	ldr r0, _0223BBA0 @ =0x000066B4
	movs r1, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	adds r2, r6, #0
	adds r3, r5, #0
	bl FUN_0200CD7C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223BBA4 @ =0x00006A2C
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x5b
	movs r3, #0xb4
	bl FUN_0200CE0C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223BBA8 @ =0x00006DB8
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x5b
	movs r3, #0x58
	bl FUN_0200CE3C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0223BB9C: .4byte 0x000061A8
_0223BBA0: .4byte 0x000066B4
_0223BBA4: .4byte 0x00006A2C
_0223BBA8: .4byte 0x00006DB8
	thumb_func_end ov76_0223BB04

	thumb_func_start ov76_0223BBAC
ov76_0223BBAC: @ 0x0223BBAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	adds r5, r0, #0
	adds r0, #0xdc
	ldr r0, [r0]
	movs r4, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xe0
	ldr r7, [r0]
	add r0, sp, #4
	strh r4, [r0, #0x20]
	strh r4, [r0, #0x22]
	strh r4, [r0, #0x24]
	strh r4, [r0, #0x26]
	movs r0, #0x3c
	str r0, [sp, #0x2c]
	movs r0, #2
	str r0, [sp, #0x34]
	movs r0, #1
	str r0, [sp, #0x50]
	subs r0, r0, #2
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	ldr r0, _0223BC5C @ =0x000066B4
	str r4, [sp, #0x54]
	str r0, [sp, #0x3c]
	ldr r0, _0223BC60 @ =0x00006A2C
	str r4, [sp, #0x30]
	str r0, [sp, #0x40]
	ldr r0, _0223BC64 @ =0x00006DB8
	str r0, [sp, #0x44]
	movs r0, #0xf9
	lsls r0, r0, #2
	adds r6, r5, r0
_0223BBF2:
	ldr r0, _0223BC68 @ =0x000061A8
	adds r1, r7, #0
	adds r0, r4, r0
	str r0, [sp, #0x38]
	ldr r0, [sp]
	add r2, sp, #0x24
	bl FUN_0200CE6C
	adds r4, r4, #1
	stm r6!, {r0}
	cmp r4, #8
	blt _0223BBF2
	ldr r3, _0223BC6C @ =0x0223ED3C
	add r2, sp, #4
	movs r1, #0x10
_0223BC10:
	ldrh r0, [r3]
	adds r3, r3, #2
	strh r0, [r2]
	adds r2, r2, #2
	subs r1, r1, #1
	bne _0223BC10
	movs r7, #0xf9
	movs r6, #0
	add r4, sp, #4
	lsls r7, r7, #2
_0223BC24:
	movs r2, #2
	ldrsh r2, [r4, r2]
	movs r0, #0xf9
	movs r1, #0
	lsls r0, r0, #2
	subs r2, r2, #1
	lsls r2, r2, #0x10
	ldrsh r1, [r4, r1]
	ldr r0, [r5, r0]
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	movs r0, #0xf9
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D330
	ldr r0, [r5, r7]
	movs r1, #0
	bl FUN_0200D3CC
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #8
	blt _0223BC24
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223BC5C: .4byte 0x000066B4
_0223BC60: .4byte 0x00006A2C
_0223BC64: .4byte 0x00006DB8
_0223BC68: .4byte 0x000061A8
_0223BC6C: .4byte 0x0223ED3C
	thumb_func_end ov76_0223BBAC

	thumb_func_start ov76_0223BC70
ov76_0223BC70: @ 0x0223BC70
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r7, #0xf9
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_0223BC7C:
	adds r0, r6, #0
	adds r0, #0xe0
	ldr r1, _0223BC9C @ =0x000061A8
	ldr r0, [r0]
	adds r1, r4, r1
	bl FUN_0200D070
	ldr r0, [r5, r7]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _0223BC7C
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BC9C: .4byte 0x000061A8
	thumb_func_end ov76_0223BC70

	thumb_func_start ov76_0223BCA0
ov76_0223BCA0: @ 0x0223BCA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r7, #0
	str r0, [sp]
	str r1, [sp, #4]
	adds r6, r7, #0
	adds r4, r1, #0
	adds r5, r1, #0
_0223BCB0:
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223BCC6
	adds r0, r5, #0
	bl FUN_02225C50
	cmp r0, #1
	bne _0223BCC6
	movs r7, #1
_0223BCC6:
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x24
	cmp r6, #8
	blt _0223BCB0
	movs r1, #0x12
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	adds r0, r0, r1
	bl FUN_02225C14
	cmp r0, #1
	bne _0223BD0E
	movs r4, #0x59
	ldr r0, [sp, #4]
	lsls r4, r4, #2
	ldr r0, [r0, r4]
	ldr r3, [sp, #4]
	subs r4, #0x44
	ldrsh r3, [r3, r4]
	movs r1, #5
	movs r2, #0
	movs r7, #1
	bl FUN_02019184
	movs r4, #0x59
	ldr r0, [sp, #4]
	lsls r4, r4, #2
	ldr r0, [r0, r4]
	ldr r3, [sp, #4]
	subs r4, #0x42
	ldrsh r3, [r3, r4]
	movs r1, #5
	movs r2, #3
	bl FUN_02019184
_0223BD0E:
	cmp r7, #0
	bne _0223BD2A
	movs r1, #0x5b
	ldr r0, [sp, #4]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r2, #0
	str r2, [r0]
	ldr r0, [sp, #4]
	bl FUN_020181C4
	ldr r0, [sp]
	bl FUN_0200DA58
_0223BD2A:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223BCA0

	thumb_func_start ov76_0223BD30
ov76_0223BD30: @ 0x0223BD30
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r1, [sp, #0xc]
	movs r1, #0x17
	str r0, [sp, #8]
	movs r0, #0x35
	lsls r1, r1, #4
	str r2, [sp, #0x10]
	bl FUN_02018144
	str r0, [sp, #0x1c]
	ldr r0, [sp, #8]
	movs r1, #0x59
	adds r0, #0xe4
	ldr r2, [r0]
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #2
	str r2, [r0, r1]
	adds r4, r0, #0
	adds r5, r0, #0
	ldr r0, [sp, #0xc]
	movs r1, #0x38
	lsls r0, r0, #4
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0xc]
	ldr r6, [sp, #8]
	muls r1, r0, r1
	ldr r0, [sp, #0x10]
	movs r7, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x20]
_0223BD74:
	movs r0, #0xc9
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _0223BD88
	movs r0, #0x51
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0223BDDE
_0223BD88:
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r1, [r6, r0]
	movs r0, #0x51
	lsls r0, r0, #2
	str r1, [r4, r0]
	add r1, sp, #0x24
	ldr r0, [r4, r0]
	adds r1, #2
	add r2, sp, #0x24
	bl FUN_0200D550
	add r1, sp, #0x24
	movs r0, #0
	ldrsh r3, [r1, r0]
	movs r0, #2
	ldrsh r1, [r1, r0]
	ldr r0, [sp, #0x18]
	ldr r2, [sp, #0x14]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x20]
	adds r2, r1, r2
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	asrs r2, r2, #0x10
	bl FUN_02225BC8
	movs r1, #0x51
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r5, #0
	bl FUN_02225C50
	movs r1, #0x51
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r5, #0
	bl FUN_02225C50
_0223BDDE:
	adds r7, r7, #1
	adds r6, #0x10
	adds r4, r4, #4
	adds r5, #0x24
	cmp r7, #8
	blt _0223BD74
	movs r1, #0x59
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #5
	bl FUN_020192EC
	adds r4, r0, #0
	movs r1, #0x59
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #5
	bl FUN_020192F8
	adds r3, r0, #0
	ldr r0, [sp, #0xc]
	movs r5, #0x37
	lsls r0, r0, #4
	adds r0, r3, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x10]
	movs r1, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	lsls r3, r3, #0x10
	ldr r2, [sp, #0xc]
	mvns r5, r5
	muls r5, r2, r5
	adds r2, r4, r5
	lsls r2, r2, #0x10
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #4
	adds r0, r0, r1
	lsls r1, r4, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	asrs r3, r3, #0x10
	bl FUN_02225BC8
	movs r2, #0x96
	lsls r2, r2, #2
	ldr r0, [sp, #8]
	adds r1, r2, #0
	adds r3, r0, r2
	ldr r0, [sp, #0x1c]
	subs r1, #0xec
	str r3, [r0, r1]
	subs r2, #0xec
	ldr r0, [r0, r2]
	movs r3, #1
	str r3, [r0]
	ldr r0, _0223BE68 @ =ov76_0223BCA0
	ldr r1, [sp, #0x1c]
	lsls r2, r3, #0xc
	bl FUN_0200D9E8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223BE68: .4byte ov76_0223BCA0
	thumb_func_end ov76_0223BD30

	thumb_func_start ov76_0223BE6C
ov76_0223BE6C: @ 0x0223BE6C
	push {r3, lr}
	sub sp, #8
	movs r2, #2
	movs r1, #0
	ldr r0, _0223BE88 @ =ov76_0223BE8C
	str r2, [sp]
	str r0, [sp, #4]
	movs r0, #0x35
	adds r3, r1, #0
	bl FUN_02024220
	add sp, #8
	pop {r3, pc}
	nop
_0223BE88: .4byte ov76_0223BE8C
	thumb_func_end ov76_0223BE6C

	thumb_func_start ov76_0223BE8C
ov76_0223BE8C: @ 0x0223BE8C
	push {r3, lr}
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0223BEF8 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0223BEFC @ =0xFFFFCFFD
	ands r2, r1
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r3, [r0]
	adds r1, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0223BF00 @ =0x0000CFFB
	ands r3, r2
	strh r3, [r0]
	ldrh r3, [r0]
	subs r2, #0x1c
	ands r3, r1
	movs r1, #8
	orrs r1, r3
	strh r1, [r0]
	ldrh r1, [r0]
	ands r1, r2
	strh r1, [r0]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r0, #0
	ldr r2, _0223BF04 @ =0x00007FFF
	adds r1, r0, #0
	movs r3, #0x3f
	str r0, [sp]
	blx FUN_020BFD58
	ldr r1, _0223BF08 @ =0xBFFF0000
	ldr r0, _0223BF0C @ =0x04000580
	str r1, [r0]
	pop {r3, pc}
	.align 2, 0
_0223BEF8: .4byte 0x04000008
_0223BEFC: .4byte 0xFFFFCFFD
_0223BF00: .4byte 0x0000CFFB
_0223BF04: .4byte 0x00007FFF
_0223BF08: .4byte 0xBFFF0000
_0223BF0C: .4byte 0x04000580
	thumb_func_end ov76_0223BE8C

	thumb_func_start ov76_0223BF10
ov76_0223BF10: @ 0x0223BF10
	push {r3, r4, r5, lr}
	ldr r3, _0223BF48 @ =0x02100DEC
	movs r0, #2
	movs r1, #0
	ldr r3, [r3]
	lsls r0, r0, #0xe
	adds r2, r1, #0
	blx r3
	ldr r3, _0223BF4C @ =0x02100DF4
	movs r1, #0
	adds r4, r0, #0
	ldr r3, [r3]
	movs r0, #0x80
	adds r2, r1, #0
	blx r3
	adds r5, r0, #0
	cmp r4, #0
	bne _0223BF38
	bl FUN_02022974
_0223BF38:
	cmp r5, #0
	bne _0223BF40
	bl FUN_02022974
_0223BF40:
	bl FUN_02014000
	pop {r3, r4, r5, pc}
	nop
_0223BF48: .4byte 0x02100DEC
_0223BF4C: .4byte 0x02100DF4
	thumb_func_end ov76_0223BF10

	thumb_func_start ov76_0223BF50
ov76_0223BF50: @ 0x0223BF50
	push {r3, lr}
	bl FUN_020241B4
	bl FUN_0201469C
	cmp r0, #0
	ble _0223BF66
	bl FUN_020241B4
	blx FUN_020A73C0
_0223BF66:
	bl FUN_020146C0
	movs r0, #1
	movs r1, #0
	bl FUN_020241BC
	pop {r3, pc}
	thumb_func_end ov76_0223BF50

	thumb_func_start ov76_0223BF74
ov76_0223BF74: @ 0x0223BF74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r1, [sp, #0x18]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x58]
	adds r0, r3, #0
	adds r6, r2, #0
	str r3, [sp, #0x1c]
	bl ov76_0223D45C
	cmp r0, #3
	bhi _0223BFF2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223BF98: @ jump table
	.2byte _0223BFA0 - _0223BF98 - 2 @ case 0
	.2byte _0223BFB2 - _0223BF98 - 2 @ case 1
	.2byte _0223BFC8 - _0223BF98 - 2 @ case 2
	.2byte _0223BFDE - _0223BF98 - 2 @ case 3
_0223BFA0:
	movs r0, #0
	str r0, [sp, #0x24]
	movs r0, #4
	str r0, [sp, #0x28]
	movs r0, #1
	movs r5, #0xd
	movs r4, #6
	str r0, [sp, #0x2c]
	b _0223BFF2
_0223BFB2:
	movs r0, #2
	str r0, [sp, #0x24]
	movs r0, #0
	str r0, [sp, #0x28]
	movs r0, #4
	str r0, [sp, #0x2c]
	movs r0, #1
	movs r5, #0xb
	movs r4, #8
	str r0, [sp, #0x30]
	b _0223BFF2
_0223BFC8:
	movs r0, #3
	str r0, [sp, #0x24]
	movs r0, #0
	str r0, [sp, #0x28]
	movs r0, #4
	str r0, [sp, #0x2c]
	movs r0, #1
	movs r5, #0xb
	movs r4, #8
	str r0, [sp, #0x30]
	b _0223BFF2
_0223BFDE:
	movs r0, #2
	str r0, [sp, #0x24]
	movs r0, #0
	str r0, [sp, #0x28]
	movs r0, #4
	str r0, [sp, #0x2c]
	movs r0, #1
	movs r5, #0xb
	movs r4, #8
	str r0, [sp, #0x30]
_0223BFF2:
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r7, r0, #1
	ldr r0, [sp, #0x18]
	bl FUN_0201A7A0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0xa6
	str r0, [sp, #0x10]
	lsls r2, r6, #0x18
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	lsrs r2, r2, #0x18
	movs r3, #0x15
	bl FUN_0201A7E8
	adds r0, r7, #0
	movs r1, #0x35
	bl FUN_02013A04
	movs r2, #0x67
	ldr r1, [sp, #0x1c]
	lsls r2, r2, #2
	str r0, [r1, r2]
	movs r0, #0
	movs r1, #0x1a
	movs r2, #8
	movs r3, #0x35
	bl FUN_0200B144
	movs r6, #0
	str r0, [sp, #0x20]
	cmp r7, #0
	ble _0223C080
	add r5, sp, #0x24
_0223C04A:
	ldr r1, [r5]
	ldr r0, [sp, #0x20]
	lsls r2, r1, #3
	ldr r1, _0223C0E8 @ =0x0223EF3C
	ldr r1, [r1, r2]
	bl FUN_0200B1EC
	ldr r2, [r5]
	adds r4, r0, #0
	lsls r3, r2, #3
	ldr r2, _0223C0E8 @ =0x0223EF3C
	movs r0, #0x67
	adds r2, r2, r3
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r2, [r2, #4]
	adds r1, r4, #0
	bl FUN_02013A6C
	adds r0, r4, #0
	bl FUN_020237BC
	adds r6, r6, #1
	adds r5, r5, #4
	cmp r6, r7
	blt _0223C04A
_0223C080:
	ldr r0, [sp, #0x20]
	bl FUN_0200B190
	movs r1, #0x67
	ldr r0, [sp, #0x1c]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #0
	str r0, [sp, #0x34]
	add r0, sp, #0x24
	strb r1, [r0, #0x18]
	ldr r1, [sp, #0x18]
	movs r2, #0xf
	str r1, [sp, #0x38]
	movs r1, #1
	strb r1, [r0, #0x19]
	strb r7, [r0, #0x1a]
	ldrb r3, [r0, #0x1b]
	bics r3, r2
	strb r3, [r0, #0x1b]
	ldrb r3, [r0, #0x1b]
	movs r2, #0x30
	bics r3, r2
	strb r3, [r0, #0x1b]
	ldrb r3, [r0, #0x1b]
	movs r2, #0xc0
	bics r3, r2
	movs r2, #0x40
	orrs r2, r3
	strb r2, [r0, #0x1b]
	ldr r0, [sp, #0x18]
	movs r2, #0x1f
	movs r3, #0xd
	bl FUN_0200DC48
	movs r0, #0x35
	str r0, [sp]
	movs r0, #2
	movs r2, #0
	str r0, [sp, #4]
	add r0, sp, #0x34
	movs r1, #8
	adds r3, r2, #0
	bl FUN_02001B7C
	movs r2, #0x1a
	ldr r1, [sp, #0x1c]
	lsls r2, r2, #4
	str r0, [r1, r2]
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C0E8: .4byte 0x0223EF3C
	thumb_func_end ov76_0223BF74

	thumb_func_start ov76_0223C0EC
ov76_0223C0EC: @ 0x0223C0EC
	push {r4, r5}
	lsrs r5, r0, #0x1f
	lsls r4, r0, #0x1e
	subs r4, r4, r5
	movs r3, #0x1e
	rors r4, r3
	adds r4, r5, r4
	movs r3, #0x38
	muls r3, r4, r3
	adds r3, #0x28
	strh r3, [r1]
	asrs r1, r0, #2
	movs r0, #0x35
	muls r0, r1, r0
	adds r0, #0x1b
	strh r0, [r2]
	pop {r4, r5}
	bx lr
	thumb_func_end ov76_0223C0EC

	thumb_func_start ov76_0223C110
ov76_0223C110: @ 0x0223C110
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r4, [r1]
	adds r1, r0, #0
	adds r1, #0xe0
	adds r0, #0xe8
	ldr r5, [r1]
	ldr r6, [r0]
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
	movs r0, #0xfa
	lsls r0, r0, #6
	str r0, [sp, #0x14]
	adds r0, r6, #0
	movs r1, #2
	adds r2, r4, #0
	adds r3, r5, #0
	bl FUN_0200CD7C
	bl FUN_02079FDC
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223C180 @ =0x00004268
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x13
	bl FUN_0200CE0C
	bl FUN_02079FE8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0223C184 @ =0x00004650
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x13
	bl FUN_0200CE3C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223C180: .4byte 0x00004268
_0223C184: .4byte 0x00004650
	thumb_func_end ov76_0223C110

	thumb_func_start ov76_0223C188
ov76_0223C188: @ 0x0223C188
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r5, r0, #0
	ldr r1, [r5]
	movs r6, #0
	ldr r0, [r1]
	cmp r0, #0
	ble _0223C276
	str r6, [sp, #0xc]
	adds r4, r5, #0
_0223C19C:
	ldr r0, [sp, #0xc]
	adds r0, r1, r0
	ldr r7, [r0, #4]
	adds r0, r7, #0
	bl FUN_02079D80
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _0223C27C @ =0x00003A98
	adds r1, r5, #0
	adds r0, r6, r0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xdc
	adds r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	movs r2, #0x13
	bl FUN_0200D888
	movs r1, #0
	add r0, sp, #0x18
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r0, #0xa
	str r0, [sp, #0x20]
	adds r0, r1, #0
	str r0, [sp, #0x24]
	movs r0, #1
	str r0, [sp, #0x28]
	movs r0, #2
	str r0, [sp, #0x44]
	adds r0, r1, #0
	str r0, [sp, #0x48]
	ldr r0, _0223C27C @ =0x00003A98
	add r2, sp, #0x18
	adds r0, r6, r0
	str r0, [sp, #0x2c]
	movs r0, #0xfa
	lsls r0, r0, #6
	str r0, [sp, #0x30]
	ldr r0, _0223C280 @ =0x00004268
	str r0, [sp, #0x34]
	ldr r0, _0223C284 @ =0x00004650
	str r0, [sp, #0x38]
	subs r0, r1, #1
	str r0, [sp, #0x3c]
	subs r0, r1, #1
	str r0, [sp, #0x40]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xdc
	adds r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0200CE6C
	movs r1, #0xbf
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x10]
	adds r0, r7, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x14]
	bl FUN_02079EDC
	adds r1, r0, #0
	movs r0, #0xbf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r0, [r0]
	bl FUN_02021F24
	movs r0, #0xbf
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D364
	ldr r0, [sp, #0xc]
	ldr r1, [r5]
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [r1]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _0223C19C
_0223C276:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0223C27C: .4byte 0x00003A98
_0223C280: .4byte 0x00004268
_0223C284: .4byte 0x00004650
	thumb_func_end ov76_0223C188

	thumb_func_start ov76_0223C288
ov76_0223C288: @ 0x0223C288
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	movs r4, #0
	ldr r0, [r0]
	cmp r0, #0
	ble _0223C2B0
	movs r7, #0xbf
	adds r5, r6, #0
	lsls r7, r7, #2
_0223C29C:
	ldr r0, [r5, r7]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r6]
	adds r4, r4, #1
	ldr r0, [r0]
	adds r5, r5, #4
	cmp r4, r0
	blt _0223C29C
_0223C2B0:
	movs r5, #0
	adds r4, r6, #0
_0223C2B4:
	ldr r7, [r4, #4]
	cmp r7, #0xff
	beq _0223C2F8
	add r1, sp, #0
	adds r0, r5, #0
	adds r1, #2
	add r2, sp, #0
	bl ov76_0223C0EC
	add r2, sp, #0
	movs r1, #2
	ldrsh r1, [r2, r1]
	adds r3, r2, #0
	movs r2, #0
	ldrsh r2, [r3, r2]
	lsls r0, r7, #2
	adds r7, r6, r0
	movs r0, #0xbf
	lsls r0, r0, #2
	subs r1, #0x10
	adds r2, #0xc
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r7, r0]
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	movs r0, #0xbf
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	movs r1, #1
	bl FUN_0200D3F4
_0223C2F8:
	adds r5, r5, #1
	adds r4, #8
	cmp r5, #0xc
	blt _0223C2B4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223C288

	thumb_func_start ov76_0223C304
ov76_0223C304: @ 0x0223C304
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	movs r4, #0
	ldr r0, [r0]
	cmp r0, #0
	ble _0223C32A
	movs r7, #0xbf
	adds r5, r6, #0
	lsls r7, r7, #2
_0223C318:
	ldr r0, [r5, r7]
	bl FUN_0200D330
	ldr r0, [r6]
	adds r4, r4, #1
	ldr r0, [r0]
	adds r5, r5, #4
	cmp r4, r0
	blt _0223C318
_0223C32A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C304

	thumb_func_start ov76_0223C32C
ov76_0223C32C: @ 0x0223C32C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	movs r4, #0
	ldr r0, [r0]
	cmp r0, #0
	ble _0223C352
	movs r7, #0xbf
	adds r5, r6, #0
	lsls r7, r7, #2
_0223C340:
	ldr r0, [r5, r7]
	bl FUN_0200D0F4
	ldr r0, [r6]
	adds r4, r4, #1
	ldr r0, [r0]
	adds r5, r5, #4
	cmp r4, r0
	blt _0223C340
_0223C352:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C32C

	thumb_func_start ov76_0223C354
ov76_0223C354: @ 0x0223C354
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
	adds r4, r7, #0
	adds r5, r7, #0
_0223C35E:
	ldr r0, [r4, #8]
	bl ov76_0223D430
	movs r1, #0x9a
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x99
	ldr r1, [r4, #4]
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _0223C38C
	movs r0, #0x99
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0xff
	beq _0223C38C
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov76_0223E91C
_0223C38C:
	adds r6, r6, #1
	adds r4, #8
	adds r5, #0xc
	cmp r6, #0xc
	blt _0223C35E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C354

	thumb_func_start ov76_0223C398
ov76_0223C398: @ 0x0223C398
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	adds r4, r0, #0
	movs r0, #0x35
	bl FUN_0200C6E4
	add r2, sp, #0x2c
	ldr r5, _0223C418 @ =0x0223ED1C
	str r0, [r4, #8]
	ldm r5!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r5!, {r0, r1}
	ldr r6, _0223C41C @ =0x0223ECF0
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
	ldr r0, [r4, #8]
	movs r3, #0x20
	bl FUN_0200C73C
	ldr r3, _0223C420 @ =0x0223ED04
	add r2, sp, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r4, #8]
	bl FUN_0200C704
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	movs r2, #0x80
	bl FUN_0200C7C0
	cmp r0, #0
	bne _0223C402
	bl FUN_02022974
_0223C402:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, sp, #0
	bl FUN_0200CB30
	cmp r0, #0
	bne _0223C414
	bl FUN_02022974
_0223C414:
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223C418: .4byte 0x0223ED1C
_0223C41C: .4byte 0x0223ECF0
_0223C420: .4byte 0x0223ED04
	thumb_func_end ov76_0223C398

	thumb_func_start ov76_0223C424
ov76_0223C424: @ 0x0223C424
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	bl FUN_0200D0B0
	ldr r0, [r4, #8]
	bl FUN_0200C8D4
	pop {r4, pc}
	thumb_func_end ov76_0223C424

	thumb_func_start ov76_0223C438
ov76_0223C438: @ 0x0223C438
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	adds r4, r1, #0
	str r0, [sp, #4]
	ldr r0, _0223C49C @ =0x0000AFC8
	adds r1, r5, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r0, #0xdc
	adds r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r3, _0223C4A0 @ =0x00000109
	adds r2, r4, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223C4A4 @ =0x0000B798
	adds r1, r5, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xdc
	adds r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	adds r2, r4, #0
	movs r3, #0xad
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223C4A8 @ =0x0000BB80
	adds r2, r4, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xdc
	adds r5, #0xe0
	ldr r0, [r0]
	ldr r1, [r5]
	movs r3, #0x51
	bl FUN_0200CE54
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0223C49C: .4byte 0x0000AFC8
_0223C4A0: .4byte 0x00000109
_0223C4A4: .4byte 0x0000B798
_0223C4A8: .4byte 0x0000BB80
	thumb_func_end ov76_0223C438

	thumb_func_start ov76_0223C4AC
ov76_0223C4AC: @ 0x0223C4AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	ldr r4, _0223C530 @ =0x0223ED5C
	adds r6, r0, #0
	add r3, sp, #0
	movs r2, #6
_0223C4B8:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223C4B8
	movs r7, #0
	add r4, sp, #0
	adds r5, r6, #0
_0223C4C6:
	ldr r1, [r4]
	add r0, sp, #0
	strh r1, [r0, #0x30]
	ldr r1, [r4, #4]
	add r2, sp, #0x30
	strh r1, [r0, #0x32]
	movs r1, #0
	strh r1, [r0, #0x34]
	strh r1, [r0, #0x36]
	movs r0, #0x28
	str r0, [sp, #0x38]
	movs r0, #2
	str r0, [sp, #0x3c]
	str r0, [sp, #0x40]
	movs r0, #1
	str r0, [sp, #0x5c]
	adds r0, r1, #0
	str r0, [sp, #0x60]
	ldr r0, _0223C534 @ =0x0000AFC8
	str r0, [sp, #0x44]
	ldr r0, _0223C538 @ =0x000066B2
	str r0, [sp, #0x48]
	ldr r0, _0223C53C @ =0x0000B798
	str r0, [sp, #0x4c]
	ldr r0, _0223C540 @ =0x0000BB80
	str r0, [sp, #0x50]
	subs r0, r1, #1
	str r0, [sp, #0x54]
	subs r0, r1, #1
	str r0, [sp, #0x58]
	adds r0, r6, #0
	adds r1, r6, #0
	adds r0, #0xdc
	adds r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0200CE6C
	movs r1, #0xc5
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	ldr r1, [r4, #8]
	bl FUN_0200D7D4
	adds r7, r7, #1
	adds r4, #0xc
	adds r5, r5, #4
	cmp r7, #4
	blt _0223C4C6
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223C530: .4byte 0x0223ED5C
_0223C534: .4byte 0x0000AFC8
_0223C538: .4byte 0x000066B2
_0223C53C: .4byte 0x0000B798
_0223C540: .4byte 0x0000BB80
	thumb_func_end ov76_0223C4AC

	thumb_func_start ov76_0223C544
ov76_0223C544: @ 0x0223C544
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #0xd8
	ldr r0, [r0]
	cmp r0, #0
	beq _0223C564
	movs r6, #0xc5
	movs r4, #0
	lsls r6, r6, #2
_0223C556:
	ldr r0, [r5, r6]
	bl FUN_0200D330
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223C556
_0223C564:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov76_0223C544

	thumb_func_start ov76_0223C568
ov76_0223C568: @ 0x0223C568
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0xc5
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	lsls r7, r7, #2
_0223C574:
	ldr r0, [r5, r7]
	adds r1, r6, #0
	bl FUN_0200D3F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223C574
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223C568

	thumb_func_start ov76_0223C588
ov76_0223C588: @ 0x0223C588
	push {r4, r5, r6, lr}
	movs r6, #0xc5
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_0223C592:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0223C592
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov76_0223C588

	thumb_func_start ov76_0223C5A4
ov76_0223C5A4: @ 0x0223C5A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r2, #0
	movs r2, #1
	str r2, [sp]
	ldr r2, [sp, #0x3c]
	ldr r4, [sp, #0x48]
	str r2, [sp, #4]
	ldr r2, _0223C618 @ =0x00002AF8
	adds r5, r0, #0
	adds r2, r3, r2
	str r2, [sp, #8]
	adds r2, r4, #0
	adds r6, r1, #0
	bl FUN_0200CC3C
	ldr r0, [sp, #0x30]
	str r4, [sp]
	str r0, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	ldr r1, [sp, #0x44]
	adds r2, r5, #0
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x3c]
	adds r3, r6, #0
	str r1, [sp, #0x10]
	ldr r1, _0223C618 @ =0x00002AF8
	adds r0, r0, r1
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x40]
	adds r0, r7, #0
	bl FUN_0200CDC4
	movs r0, #1
	str r0, [sp]
	ldr r3, [sp, #0x34]
	ldr r0, _0223C618 @ =0x00002AF8
	adds r1, r6, #0
	adds r0, r3, r0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r4, #0
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r3, [sp, #0x38]
	ldr r0, _0223C618 @ =0x00002AF8
	adds r1, r6, #0
	adds r0, r3, r0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r4, #0
	bl FUN_0200CE54
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0223C618: .4byte 0x00002AF8
	thumb_func_end ov76_0223C5A4

	thumb_func_start ov76_0223C61C
ov76_0223C61C: @ 0x0223C61C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	adds r5, r0, #0
	ldr r0, _0223C7CC @ =0x0000011E
	adds r4, r1, #0
	str r0, [sp]
	movs r0, #0xae
	str r0, [sp, #4]
	movs r3, #0x52
	str r3, [sp, #8]
	movs r1, #1
	adds r2, r5, #0
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r5, #0
	str r4, [sp, #0x18]
	adds r0, #0xdc
	adds r1, #0xe0
	adds r2, #0xe8
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	adds r3, #0xb8
	bl ov76_0223C5A4
	ldr r0, _0223C7D0 @ =0x00000123
	adds r2, r5, #0
	str r0, [sp]
	movs r0, #0xb3
	str r0, [sp, #4]
	movs r3, #0x57
	str r3, [sp, #8]
	movs r1, #1
	str r1, [sp, #0xc]
	movs r0, #2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r5, #0
	str r4, [sp, #0x18]
	adds r0, #0xdc
	adds r1, #0xe0
	adds r2, #0xe8
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r2, [r2]
	adds r3, #0xbc
	bl ov76_0223C5A4
	movs r6, #0
	adds r4, r5, #0
	add r7, sp, #0x1c
_0223C68A:
	movs r0, #0
	strh r0, [r7, #8]
	strh r0, [r7, #0xa]
	strh r0, [r7, #0xc]
	movs r0, #0x9a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r5, #0
	strh r0, [r7, #0xe]
	movs r0, #0x28
	subs r0, r0, r6
	str r0, [sp, #0x2c]
	movs r0, #0
	str r0, [sp, #0x30]
	movs r0, #1
	str r0, [sp, #0x34]
	movs r0, #2
	str r0, [sp, #0x50]
	movs r0, #0
	str r0, [sp, #0x54]
	ldr r0, _0223C7D4 @ =0x00002C02
	adds r1, #0xe0
	str r0, [sp, #0x38]
	adds r0, #0x14
	str r0, [sp, #0x3c]
	ldr r0, _0223C7D8 @ =0x00002BA6
	add r2, sp, #0x24
	str r0, [sp, #0x40]
	subs r0, #0x5c
	str r0, [sp, #0x44]
	movs r0, #0
	mvns r0, r0
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	adds r0, r5, #0
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_0200CE6C
	movs r1, #0x9b
	lsls r1, r1, #2
	str r0, [r4, r1]
	add r1, sp, #0x20
	adds r0, r6, #0
	adds r1, #2
	add r2, sp, #0x20
	bl ov76_0223C0EC
	movs r0, #0x9b
	movs r1, #6
	movs r2, #4
	lsls r0, r0, #2
	ldrsh r1, [r7, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r4, r0]
	bl FUN_0200D4C4
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, #0xc
	blt _0223C68A
	movs r1, #0
	add r0, sp, #0x1c
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	strh r1, [r0, #0xc]
	strh r1, [r0, #0xe]
	movs r0, #0x14
	str r0, [sp, #0x2c]
	movs r0, #1
	str r1, [sp, #0x30]
	str r1, [sp, #0x54]
	ldr r1, _0223C7DC @ =0x00002C0B
	str r0, [sp, #0x34]
	adds r0, r1, #0
	adds r0, #0x10
	str r0, [sp, #0x3c]
	adds r0, r1, #0
	movs r2, #2
	subs r0, #0x60
	str r1, [sp, #0x38]
	str r0, [sp, #0x40]
	subs r0, r2, #3
	subs r1, #0xbc
	str r1, [sp, #0x44]
	adds r1, r5, #0
	str r2, [sp, #0x50]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	adds r0, r5, #0
	adds r0, #0xdc
	adds r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0x24
	bl FUN_0200CE6C
	movs r1, #0xbd
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0xdc
	adds r1, #0xe0
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0x24
	bl FUN_0200CE6C
	movs r1, #0xbe
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r1, #0xcc
	ldr r0, [r5, r1]
	add r1, sp, #0x1c
	adds r1, #2
	add r2, sp, #0x1c
	bl ov76_0223C0EC
	movs r0, #0xbd
	lsls r0, r0, #2
	add r3, sp, #0x1c
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl FUN_0200D4C4
	movs r0, #0xbe
	lsls r0, r0, #2
	add r3, sp, #0x1c
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, [r5, r0]
	bl FUN_0200D4C4
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0x19
	bl FUN_0200D474
	movs r0, #0xbd
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0200D364
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223C7CC: .4byte 0x0000011E
_0223C7D0: .4byte 0x00000123
_0223C7D4: .4byte 0x00002C02
_0223C7D8: .4byte 0x00002BA6
_0223C7DC: .4byte 0x00002C0B
	thumb_func_end ov76_0223C61C

	thumb_func_start ov76_0223C7E0
ov76_0223C7E0: @ 0x0223C7E0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov76_0223C354
	adds r0, r5, #0
	bl ov76_0223C288
	movs r7, #0x9a
	lsls r7, r7, #2
	movs r4, #0
	adds r6, r7, #4
_0223C7F6:
	ldr r0, [r5, r6]
	cmp r0, #0
	beq _0223C802
	ldr r1, [r5, r7]
	bl FUN_0200D364
_0223C802:
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #0xc
	blt _0223C7F6
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C7E0

	thumb_func_start ov76_0223C80C
ov76_0223C80C: @ 0x0223C80C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	lsls r6, r1, #3
	adds r0, r5, r6
	ldr r0, [r0, #4]
	lsls r4, r2, #3
	str r1, [sp]
	adds r1, r5, r4
	ldr r7, [r1, #4]
	cmp r0, #0xff
	beq _0223C838
	adds r1, r2, #1
	str r1, [sp, #0xc]
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	movs r1, #0xa2
	add r2, sp, #0xc
	bl FUN_02074B30
_0223C838:
	cmp r7, #0xff
	beq _0223C852
	ldr r0, [sp]
	add r2, sp, #8
	adds r0, r0, #1
	str r0, [sp, #8]
	ldr r1, [r5]
	lsls r0, r7, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	movs r1, #0xa2
	bl FUN_02074B30
_0223C852:
	adds r2, r5, #4
	ldr r1, [r2, r6]
	ldr r0, [r2, r4]
	adds r7, r5, #0
	str r0, [r2, r6]
	str r1, [r2, r4]
	adds r7, #8
	ldr r0, [r7, r6]
	add r1, sp, #0x10
	bl FUN_0202CA10
	adds r0, r5, #0
	str r0, [sp, #4]
	adds r0, #8
	str r0, [sp, #4]
	ldr r0, [r0, r4]
	ldr r1, [r7, r6]
	bl FUN_0202CA10
	ldr r1, [sp, #4]
	add r0, sp, #0x10
	ldr r1, [r1, r4]
	bl FUN_0202CA10
	adds r0, r5, #0
	bl ov76_0223C7E0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C80C

	thumb_func_start ov76_0223C88C
ov76_0223C88C: @ 0x0223C88C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0x9b
	movs r4, #0
	adds r5, r7, #0
	lsls r6, r6, #2
_0223C898:
	ldr r0, [r5, r6]
	bl FUN_0200D330
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #0xc
	blt _0223C898
	movs r0, #0xbd
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_0200D330
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_0200D330
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C88C

	thumb_func_start ov76_0223C8BC
ov76_0223C8BC: @ 0x0223C8BC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0x9b
	movs r4, #0
	adds r5, r7, #0
	lsls r6, r6, #2
_0223C8C8:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, #0xc
	cmp r4, #0xc
	blt _0223C8C8
	movs r0, #0xbd
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_0200D0F4
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	bl FUN_0200D0F4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223C8BC

	thumb_func_start ov76_0223C8EC
ov76_0223C8EC: @ 0x0223C8EC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r2, #0
	adds r4, r1, #0
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0x35
	str r1, [sp, #4]
	movs r1, #1
	adds r2, r1, #0
	movs r3, #0xf
	adds r5, r0, #0
	bl FUN_0200DD0C
	adds r0, r6, #0
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xc0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x26
	movs r3, #0x35
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x35
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #0xd
	bl FUN_0200DAA4
	bl FUN_0200DAA0
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x26
	movs r3, #0x35
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #7
	movs r3, #0x35
	bl FUN_02003050
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov76_0223C8EC

	thumb_func_start ov76_0223C974
ov76_0223C974: @ 0x0223C974
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r2, #0
	adds r4, r1, #0
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp]
	movs r1, #0x35
	str r1, [sp, #4]
	movs r1, #4
	movs r2, #1
	movs r3, #0xf
	adds r5, r0, #0
	bl FUN_0200DD0C
	adds r0, r6, #0
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xc0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x26
	movs r3, #0x35
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x35
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r1, #4
	movs r2, #0x1f
	movs r3, #0xd
	bl FUN_0200DAA4
	bl FUN_0200DAA0
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xd0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0x26
	movs r3, #0x35
	bl FUN_02003050
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #7
	movs r3, #0x35
	bl FUN_02003050
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0x30
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r1, #0xe
	movs r2, #7
	movs r3, #0x35
	bl FUN_02003050
	movs r0, #1
	str r0, [sp]
	movs r0, #0x20
	movs r1, #0x5b
	str r0, [sp, #4]
	movs r0, #0xb0
	adds r2, r1, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r2, #0xcb
	movs r3, #0x35
	bl FUN_02003050
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov76_0223C974

	thumb_func_start ov76_0223CA30
ov76_0223CA30: @ 0x0223CA30
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, _0223CA94 @ =0x0000FFFF
	adds r4, r0, #0
	cmp r5, r1
	bne _0223CA4E
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201A954
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0223CA4E:
	movs r0, #0
	movs r1, #0x1a
	movs r2, #8
	movs r3, #0x35
	bl FUN_0200B144
	adds r1, r5, #0
	adds r6, r0, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	str r3, [sp, #8]
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_0201A954
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223CA94: .4byte 0x0000FFFF
	thumb_func_end ov76_0223CA30

	thumb_func_start ov76_0223CA98
ov76_0223CA98: @ 0x0223CA98
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r7, r0, #0
	adds r0, r5, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0201A7A0
	ldr r0, [sp, #0x28]
	lsls r2, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	lsls r3, r6, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	adds r1, r5, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	lsrs r2, r2, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r7, #0
	lsrs r3, r3, #0x18
	bl FUN_0201A7E8
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	movs r3, #0xc
	bl FUN_0200E060
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223CA98

	thumb_func_start ov76_0223CAFC
ov76_0223CAFC: @ 0x0223CAFC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r7, r0, #0
	adds r0, r5, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0201A7A0
	ldr r0, [sp, #0x28]
	lsls r2, r4, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	lsls r3, r6, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	adds r1, r5, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	lsrs r2, r2, #0x18
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x34]
	lsrs r3, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	adds r0, r7, #0
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223CAFC

	thumb_func_start ov76_0223CB58
ov76_0223CB58: @ 0x0223CB58
	push {r3, r4, lr}
	sub sp, #0x14
	movs r1, #2
	adds r4, r0, #0
	str r1, [sp]
	movs r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x94
	str r1, [sp, #0xc]
	movs r0, #0xb
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0xe4
	adds r1, #0x88
	ldr r0, [r0]
	adds r1, r4, r1
	movs r2, #6
	movs r3, #3
	bl ov76_0223CAFC
	movs r1, #2
	str r1, [sp]
	movs r0, #4
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r1, #0x9c
	str r1, [sp, #0xc]
	movs r0, #0xb
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0xe4
	adds r1, #0x90
	ldr r0, [r0]
	adds r1, r4, r1
	movs r2, #6
	movs r3, #0xa
	bl ov76_0223CAFC
	movs r0, #5
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r1, #0xa4
	str r1, [sp, #0xc]
	movs r0, #0xb
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0xe4
	adds r1, #0x98
	ldr r0, [r0]
	adds r1, r4, r1
	movs r2, #6
	movs r3, #3
	bl ov76_0223CAFC
	movs r0, #5
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r1, #0xac
	str r1, [sp, #0xc]
	movs r0, #0xb
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0xe4
	adds r1, #0xa0
	ldr r0, [r0]
	adds r1, r4, r1
	movs r2, #6
	movs r3, #0xa
	bl ov76_0223CAFC
	movs r0, #8
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r1, #0xb4
	str r1, [sp, #0xc]
	movs r0, #0xb
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0xe4
	adds r1, #0xa8
	ldr r0, [r0]
	adds r1, r4, r1
	movs r2, #6
	movs r3, #3
	bl ov76_0223CAFC
	movs r0, #8
	str r0, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r1, #0xbc
	str r1, [sp, #0xc]
	movs r0, #0xb
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r0, #0xe4
	adds r1, #0xb0
	ldr r0, [r0]
	adds r1, r4, r1
	movs r2, #6
	movs r3, #0xa
	bl ov76_0223CAFC
	movs r2, #0xb
	str r2, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r1, #0xc4
	str r1, [sp, #0xc]
	adds r0, r4, #0
	str r2, [sp, #0x10]
	adds r0, #0xe4
	adds r1, #0xb8
	ldr r0, [r0]
	adds r1, r4, r1
	movs r2, #6
	movs r3, #3
	bl ov76_0223CAFC
	movs r2, #0xb
	str r2, [sp]
	movs r0, #4
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r1, #0xcc
	str r1, [sp, #0xc]
	adds r0, r4, #0
	str r2, [sp, #0x10]
	adds r0, #0xe4
	adds r1, #0xc0
	ldr r0, [r0]
	adds r1, r4, r1
	movs r2, #6
	movs r3, #0xa
	bl ov76_0223CAFC
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov76_0223CB58

	thumb_func_start ov76_0223CC8C
ov76_0223CC8C: @ 0x0223CC8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	adds r5, r7, #0
	adds r5, #0xec
	movs r6, #3
	adds r5, #0x30
_0223CC9A:
	ldr r0, _0223CD18 @ =0x0000041D
	adds r1, r7, r6
	ldrb r0, [r1, r0]
	str r0, [sp, #0x10]
	cmp r0, #0
	bne _0223CCB6
	adds r0, r5, #0
	movs r1, #0xee
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201A954
	b _0223CD0A
_0223CCB6:
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x64
	movs r1, #0x35
	bl FUN_02023790
	ldr r1, [sp, #0x10]
	adds r4, r0, #0
	ldr r0, [r7, #0x64]
	subs r1, r1, #1
	bl FUN_0202CA90
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #1
	bl FUN_020238A0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223CD1C @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #7
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A954
	adds r0, r4, #0
	bl FUN_020237BC
_0223CD0A:
	adds r6, r6, #1
	adds r5, #0x10
	cmp r6, #0xb
	blt _0223CC9A
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223CD18: .4byte 0x0000041D
_0223CD1C: .4byte 0x00010200
	thumb_func_end ov76_0223CC8C

	thumb_func_start ov76_0223CD20
ov76_0223CD20: @ 0x0223CD20
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r0, r1, #3
	lsls r4, r0, #4
	movs r0, #0x42
	adds r1, r6, r1
	lsls r0, r0, #4
	adds r5, r6, #0
	ldrb r7, [r1, r0]
	adds r5, #0xec
	cmp r7, #0
	bne _0223CD4C
	adds r0, r5, r4
	movs r1, #0xee
	bl FUN_0201ADA4
	adds r0, r5, r4
	bl FUN_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_0223CD4C:
	adds r0, r5, r4
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x64
	movs r1, #0x35
	bl FUN_02023790
	str r0, [sp, #0x10]
	ldr r0, [r6, #0x64]
	subs r1, r7, #1
	bl FUN_0202CA90
	adds r1, r0, #0
	movs r3, #1
	ldr r0, [sp, #0x10]
	movs r2, #3
	str r3, [sp]
	bl FUN_020238A0
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0223CDA0 @ =0x00010200
	ldr r2, [sp, #0x10]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, r4
	movs r1, #1
	movs r3, #7
	bl FUN_0201D78C
	adds r0, r5, r4
	bl FUN_0201A954
	ldr r0, [sp, #0x10]
	bl FUN_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0223CDA0: .4byte 0x00010200
	thumb_func_end ov76_0223CD20

	thumb_func_start ov76_0223CDA4
ov76_0223CDA4: @ 0x0223CDA4
	push {r3, r4, r5, lr}
	adds r0, #0xec
	adds r5, r0, #0
	movs r4, #3
	adds r5, #0x30
_0223CDAE:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #0xb
	blt _0223CDAE
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223CDA4

	thumb_func_start ov76_0223CDC4
ov76_0223CDC4: @ 0x0223CDC4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r1, #0
	ldr r1, _0223CE28 @ =0x0000FFFF
	adds r4, r0, #0
	cmp r5, r1
	bne _0223CDE2
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201A954
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0223CDE2:
	movs r0, #0
	movs r1, #0x1a
	movs r2, #0xc
	movs r3, #0x35
	bl FUN_0200B144
	adds r1, r5, #0
	adds r6, r0, #0
	bl FUN_0200B1EC
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	adds r0, r4, #0
	movs r1, #1
	adds r2, r5, #0
	str r3, [sp, #8]
	bl FUN_0201D738
	adds r0, r4, #0
	bl FUN_0201A954
	adds r0, r5, #0
	bl FUN_020237BC
	adds r0, r6, #0
	bl FUN_0200B190
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0223CE28: .4byte 0x0000FFFF
	thumb_func_end ov76_0223CDC4

	thumb_func_start ov76_0223CE2C
ov76_0223CE2C: @ 0x0223CE2C
	push {r3, lr}
	bl FUN_0201FFD0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	pop {r3, pc}
	thumb_func_end ov76_0223CE2C

	thumb_func_start ov76_0223CE44
ov76_0223CE44: @ 0x0223CE44
	push {lr}
	sub sp, #0xc
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x35
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {pc}
	.align 2, 0
	thumb_func_end ov76_0223CE44

	thumb_func_start ov76_0223CE64
ov76_0223CE64: @ 0x0223CE64
	push {lr}
	sub sp, #0xc
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x35
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	add sp, #0xc
	pop {pc}
	thumb_func_end ov76_0223CE64

	thumb_func_start ov76_0223CE84
ov76_0223CE84: @ 0x0223CE84
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	adds r4, r1, #0
	str r0, [sp, #8]
	movs r1, #0x35
	adds r2, r5, #0
	str r1, [sp, #0xc]
	adds r2, #0xe4
	ldr r2, [r2]
	adds r0, r4, #0
	adds r1, #0xd7
	movs r3, #2
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0x35
	adds r2, r5, #0
	str r1, [sp, #0xc]
	adds r2, #0xe4
	ldr r2, [r2]
	adds r0, r4, #0
	adds r1, #0xe7
	movs r3, #2
	bl FUN_0200710C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	adds r0, r5, #0
	str r1, [sp, #8]
	adds r0, #0xe8
	movs r1, #0x5b
	adds r2, r1, #0
	ldr r0, [r0]
	adds r2, #0xc5
	movs r3, #0x35
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0x35
	adds r2, r5, #0
	str r1, [sp, #0xc]
	adds r2, #0xe4
	ldr r2, [r2]
	adds r0, r4, #0
	adds r1, #0xd8
	movs r3, #3
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0x35
	str r1, [sp, #0xc]
	adds r5, #0xe4
	ldr r2, [r5]
	adds r0, r4, #0
	adds r1, #0xe8
	movs r3, #3
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov76_0223CE84

	thumb_func_start ov76_0223CF24
ov76_0223CF24: @ 0x0223CF24
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	adds r4, r1, #0
	str r0, [sp, #8]
	movs r1, #0x35
	adds r2, r5, #0
	str r1, [sp, #0xc]
	adds r2, #0xe4
	ldr r2, [r2]
	adds r0, r4, #0
	adds r1, #0xd6
	movs r3, #5
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0x35
	adds r2, r5, #0
	str r1, [sp, #0xc]
	adds r2, #0xe4
	ldr r2, [r2]
	adds r0, r4, #0
	adds r1, #0xe6
	movs r3, #5
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x5b
	adds r2, r1, #0
	adds r5, #0xe8
	str r0, [sp, #8]
	ldr r0, [r5]
	adds r2, #0xc4
	movs r3, #0x35
	bl FUN_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223CF24

	thumb_func_start ov76_0223CF88
ov76_0223CF88: @ 0x0223CF88
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	adds r4, r1, #0
	str r0, [sp, #8]
	movs r1, #0x35
	adds r2, r5, #0
	str r1, [sp, #0xc]
	adds r2, #0xe4
	ldr r2, [r2]
	adds r0, r4, #0
	adds r1, #0xd6
	movs r3, #7
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #0x35
	adds r2, r5, #0
	str r1, [sp, #0xc]
	adds r2, #0xe4
	ldr r2, [r2]
	adds r0, r4, #0
	adds r1, #0xe5
	movs r3, #7
	bl FUN_0200710C
	movs r0, #1
	str r0, [sp]
	movs r0, #0x40
	str r0, [sp, #4]
	movs r0, #0
	movs r1, #0x5b
	adds r2, r1, #0
	adds r5, #0xe8
	str r0, [sp, #8]
	ldr r0, [r5]
	adds r2, #0xc4
	movs r3, #0x35
	bl FUN_02003050
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223CF88

	thumb_func_start ov76_0223CFEC
ov76_0223CFEC: @ 0x0223CFEC
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r1, #0
	adds r1, r0, #0
	adds r1, #0xdc
	ldr r6, [r1]
	adds r1, r0, #0
	adds r1, #0xe0
	ldr r4, [r1]
	ldr r1, _0223D128 @ =0x00000122
	str r5, [sp]
	str r1, [sp, #4]
	movs r1, #0
	str r1, [sp, #8]
	movs r1, #3
	str r1, [sp, #0xc]
	movs r2, #2
	str r2, [sp, #0x10]
	ldr r2, _0223D12C @ =0x000066B2
	adds r0, #0xe8
	str r2, [sp, #0x14]
	ldr r0, [r0]
	adds r2, r6, #0
	adds r3, r4, #0
	bl FUN_0200CDC4
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0223D130 @ =0x000062B9
	ldr r3, _0223D134 @ =0x00000111
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223D138 @ =0x00006A29
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0xb1
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223D13C @ =0x00006DB5
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0x55
	bl FUN_0200CE54
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0223D140 @ =0x000062BA
	ldr r3, _0223D144 @ =0x00000112
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223D148 @ =0x00006A2A
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0xb2
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223D14C @ =0x00006DB6
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0x56
	bl FUN_0200CE54
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0223D150 @ =0x000062B6
	ldr r3, _0223D154 @ =0x0000010E
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223D158 @ =0x00006A27
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0xaf
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223D15C @ =0x00006DB3
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0x53
	bl FUN_0200CE54
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, _0223D160 @ =0x000089C8
	movs r3, #0x11
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	lsls r3, r3, #4
	bl FUN_0200CC3C
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223D164 @ =0x00006A28
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0xb0
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _0223D168 @ =0x00006DB4
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r5, #0
	movs r3, #0x54
	bl FUN_0200CE54
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_0223D128: .4byte 0x00000122
_0223D12C: .4byte 0x000066B2
_0223D130: .4byte 0x000062B9
_0223D134: .4byte 0x00000111
_0223D138: .4byte 0x00006A29
_0223D13C: .4byte 0x00006DB5
_0223D140: .4byte 0x000062BA
_0223D144: .4byte 0x00000112
_0223D148: .4byte 0x00006A2A
_0223D14C: .4byte 0x00006DB6
_0223D150: .4byte 0x000062B6
_0223D154: .4byte 0x0000010E
_0223D158: .4byte 0x00006A27
_0223D15C: .4byte 0x00006DB3
_0223D160: .4byte 0x000089C8
_0223D164: .4byte 0x00006A28
_0223D168: .4byte 0x00006DB4
	thumb_func_end ov76_0223CFEC

	thumb_func_start ov76_0223D16C
ov76_0223D16C: @ 0x0223D16C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xa0
	adds r7, r0, #0
	adds r0, #0xdc
	ldr r6, [r0]
	adds r0, r7, #0
	adds r0, #0xe0
	ldr r5, [r0]
	movs r0, #0xf9
	lsls r0, r0, #2
	adds r4, r7, r0
	movs r1, #0
	add r2, sp, #0x6c
	strh r1, [r2]
	strh r1, [r2, #2]
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	movs r0, #0x3c
	str r0, [sp, #0x74]
	movs r0, #2
	str r0, [sp, #0x7c]
	movs r0, #1
	str r1, [sp, #0x9c]
	subs r1, r0, #2
	str r0, [sp, #0x98]
	str r0, [sp, #0x78]
	ldr r0, _0223D2B8 @ =0x000062B9
	str r1, [sp, #0x90]
	str r0, [sp, #0x80]
	ldr r0, _0223D2BC @ =0x000066B2
	str r1, [sp, #0x94]
	str r0, [sp, #0x84]
	ldr r0, _0223D2C0 @ =0x00006A29
	adds r1, r5, #0
	str r0, [sp, #0x88]
	ldr r0, _0223D2C4 @ =0x00006DB5
	str r0, [sp, #0x8c]
	adds r0, r6, #0
	bl FUN_0200CE6C
	str r0, [r4, #0x20]
	ldr r0, _0223D2C8 @ =0x000062BA
	adds r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _0223D2BC @ =0x000066B2
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223D2CC @ =0x00006A2A
	str r0, [sp, #0x88]
	ldr r0, _0223D2D0 @ =0x00006DB6
	str r0, [sp, #0x8c]
	adds r0, r6, #0
	bl FUN_0200CE6C
	str r0, [r4, #0x24]
	movs r0, #1
	str r0, [sp, #0x98]
	str r0, [sp, #0x78]
	ldr r0, _0223D2D4 @ =0x000089C8
	adds r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _0223D2BC @ =0x000066B2
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223D2D8 @ =0x00006A28
	str r0, [sp, #0x88]
	ldr r0, _0223D2DC @ =0x00006DB4
	str r0, [sp, #0x8c]
	adds r0, r6, #0
	bl FUN_0200CE6C
	str r0, [r4, #0x28]
	movs r0, #1
	str r0, [sp, #0x98]
	movs r0, #0
	str r0, [sp, #0x78]
	ldr r0, _0223D2E0 @ =0x000062B6
	adds r1, r5, #0
	str r0, [sp, #0x80]
	ldr r0, _0223D2BC @ =0x000066B2
	add r2, sp, #0x6c
	str r0, [sp, #0x84]
	ldr r0, _0223D2E4 @ =0x00006A27
	str r0, [sp, #0x88]
	ldr r0, _0223D2E8 @ =0x00006DB3
	str r0, [sp, #0x8c]
	adds r0, r6, #0
	bl FUN_0200CE6C
	str r0, [r4, #0x2c]
	adds r0, r6, #0
	adds r1, r5, #0
	add r2, sp, #0x6c
	bl FUN_0200CE6C
	ldr r3, _0223D2EC @ =0x0223ED8C
	str r0, [r4, #0x30]
	add r2, sp, #0x38
	movs r1, #0x1a
_0223D232:
	ldrh r0, [r3]
	adds r3, r3, #2
	strh r0, [r2]
	adds r2, r2, #2
	subs r1, r1, #1
	bne _0223D232
	ldr r3, _0223D2F0 @ =0x0223EDC0
	add r2, sp, #4
	movs r1, #0x1a
_0223D244:
	ldrh r0, [r3]
	adds r3, r3, #2
	strh r0, [r2]
	adds r2, r2, #2
	subs r1, r1, #1
	bne _0223D244
	movs r0, #8
	str r0, [sp]
	movs r0, #0x1d
	adds r4, r7, #0
	lsls r0, r0, #4
	adds r7, r7, r0
	add r6, sp, #0x58
	adds r4, #0x20
	add r5, sp, #0x24
	adds r7, #0x20
_0223D264:
	movs r0, #0xf9
	movs r1, #0
	movs r2, #2
	lsls r0, r0, #2
	ldrsh r1, [r6, r1]
	ldrsh r2, [r6, r2]
	ldr r0, [r4, r0]
	bl FUN_0200D4C4
	movs r0, #0xf9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D330
	movs r0, #0xf9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3CC
	movs r1, #0xf9
	movs r2, #0
	movs r3, #2
	lsls r1, r1, #2
	ldrsh r2, [r5, r2]
	ldrsh r3, [r5, r3]
	ldr r1, [r4, r1]
	adds r0, r7, #0
	bl ov76_0223B870
	ldr r0, [sp]
	adds r6, r6, #4
	adds r0, r0, #1
	adds r4, r4, #4
	adds r5, r5, #4
	adds r7, r7, #4
	str r0, [sp]
	cmp r0, #0xd
	blt _0223D264
	add sp, #0xa0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D2B8: .4byte 0x000062B9
_0223D2BC: .4byte 0x000066B2
_0223D2C0: .4byte 0x00006A29
_0223D2C4: .4byte 0x00006DB5
_0223D2C8: .4byte 0x000062BA
_0223D2CC: .4byte 0x00006A2A
_0223D2D0: .4byte 0x00006DB6
_0223D2D4: .4byte 0x000089C8
_0223D2D8: .4byte 0x00006A28
_0223D2DC: .4byte 0x00006DB4
_0223D2E0: .4byte 0x000062B6
_0223D2E4: .4byte 0x00006A27
_0223D2E8: .4byte 0x00006DB3
_0223D2EC: .4byte 0x0223ED8C
_0223D2F0: .4byte 0x0223EDC0
	thumb_func_end ov76_0223D16C

	thumb_func_start ov76_0223D2F4
ov76_0223D2F4: @ 0x0223D2F4
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0xf9
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	lsls r7, r7, #2
_0223D300:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _0223D30C
	adds r1, r6, #0
	bl FUN_0200D3F4
_0223D30C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xd
	blt _0223D300
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223D2F4

	thumb_func_start ov76_0223D318
ov76_0223D318: @ 0x0223D318
	bx lr
	.align 2, 0
	thumb_func_end ov76_0223D318

	thumb_func_start ov76_0223D31C
ov76_0223D31C: @ 0x0223D31C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r6, #0xf9
	movs r4, #8
	adds r5, #0x20
	lsls r6, r6, #2
_0223D328:
	ldr r0, [r5, r6]
	bl FUN_0200D0F4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0xd
	blt _0223D328
	pop {r4, r5, r6, pc}
	thumb_func_end ov76_0223D31C

	thumb_func_start ov76_0223D338
ov76_0223D338: @ 0x0223D338
	adds r1, r0, #0
	movs r0, #0xf1
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r3, _0223D34C @ =FUN_0202CA10
	lsls r0, r0, #3
	adds r0, r1, r0
	ldr r0, [r0, #8]
	adds r1, #0x68
	bx r3
	.align 2, 0
_0223D34C: .4byte FUN_0202CA10
	thumb_func_end ov76_0223D338

	thumb_func_start ov76_0223D350
ov76_0223D350: @ 0x0223D350
	movs r1, #0xf1
	adds r2, r0, #0
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	ldr r3, _0223D364 @ =FUN_0202CA10
	lsls r1, r1, #3
	adds r1, r2, r1
	adds r0, #0x68
	ldr r1, [r1, #8]
	bx r3
	.align 2, 0
_0223D364: .4byte FUN_0202CA10
	thumb_func_end ov76_0223D350

	thumb_func_start ov76_0223D368
ov76_0223D368: @ 0x0223D368
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0223D36E:
	ldr r0, [r5, #0x64]
	adds r1, r4, #0
	bl FUN_0202CA90
	adds r1, r5, r4
	adds r1, #0x80
	adds r4, r4, #1
	strb r0, [r1]
	cmp r4, #0x51
	blt _0223D36E
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223D368

	thumb_func_start ov76_0223D384
ov76_0223D384: @ 0x0223D384
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0223D38A:
	adds r2, r5, r4
	adds r2, #0x80
	ldrb r2, [r2]
	ldr r0, [r5, #0x64]
	adds r1, r4, #0
	bl FUN_0202CADC
	adds r4, r4, #1
	cmp r4, #0x51
	blt _0223D38A
	pop {r3, r4, r5, pc}
	thumb_func_end ov76_0223D384

	thumb_func_start ov76_0223D3A0
ov76_0223D3A0: @ 0x0223D3A0
	push {r3, lr}
	movs r0, #7
	str r0, [sp]
	ldr r0, _0223D3C4 @ =0x04000050
	movs r1, #0
	movs r2, #6
	movs r3, #0xb
	blx FUN_020BF55C
	movs r0, #8
	str r0, [sp]
	ldr r0, _0223D3C8 @ =0x04001050
	movs r1, #0
	movs r2, #0xe
	movs r3, #7
	blx FUN_020BF55C
	pop {r3, pc}
	.align 2, 0
_0223D3C4: .4byte 0x04000050
_0223D3C8: .4byte 0x04001050
	thumb_func_end ov76_0223D3A0

	thumb_func_start ov76_0223D3CC
ov76_0223D3CC: @ 0x0223D3CC
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0xf1
	adds r5, r0, #0
	lsls r1, r1, #2
	ldr r0, [r5, r1]
	lsls r0, r0, #3
	adds r0, r5, r0
	ldr r0, [r0, #4]
	cmp r0, #0xff
	beq _0223D3F2
	ldr r2, [r5]
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r1, #0x64
	ldr r0, [r0, #4]
	ldr r1, [r5, r1]
	bl FUN_020775EC
	pop {r3, r4, r5, r6, r7, pc}
_0223D3F2:
	ldr r1, [r5]
	movs r6, #0
	ldr r0, [r1]
	cmp r0, #0
	ble _0223D428
	adds r4, r6, #0
_0223D3FE:
	adds r0, r1, r4
	ldr r7, [r0, #4]
	movs r1, #0x4c
	adds r0, r7, #0
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0223D41C
	ldr r1, _0223D42C @ =0x00000428
	adds r0, r7, #0
	ldr r1, [r5, r1]
	bl FUN_020775EC
	pop {r3, r4, r5, r6, r7, pc}
_0223D41C:
	ldr r1, [r5]
	adds r6, r6, #1
	ldr r0, [r1]
	adds r4, r4, #4
	cmp r6, r0
	blt _0223D3FE
_0223D428:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0223D42C: .4byte 0x00000428
	thumb_func_end ov76_0223D3CC

	thumb_func_start ov76_0223D430
ov76_0223D430: @ 0x0223D430
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0
	adds r6, r0, #0
	adds r5, r7, #0
	adds r4, r7, #0
_0223D43A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0202CA64
	bl FUN_0202CA7C
	cmp r0, #0
	beq _0223D44C
	adds r5, r5, #1
_0223D44C:
	adds r4, r4, #1
	cmp r4, #8
	blt _0223D43A
	cmp r5, #0
	beq _0223D458
	movs r7, #1
_0223D458:
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov76_0223D430

	thumb_func_start ov76_0223D45C
ov76_0223D45C: @ 0x0223D45C
	movs r2, #0xc
	muls r2, r1, r2
	adds r1, r0, r2
	movs r0, #0x99
	lsls r0, r0, #2
	ldr r2, [r1, r0]
	adds r0, r0, #4
	ldr r0, [r1, r0]
	cmp r2, #0xff
	bne _0223D478
	cmp r0, #0
	bne _0223D478
	movs r0, #0
	bx lr
_0223D478:
	cmp r2, #0xff
	bne _0223D484
	cmp r0, #1
	bne _0223D484
	movs r0, #1
	bx lr
_0223D484:
	cmp r2, #0xff
	beq _0223D490
	cmp r0, #1
	bne _0223D490
	movs r0, #2
	bx lr
_0223D490:
	movs r0, #3
	bx lr
	thumb_func_end ov76_0223D45C

	thumb_func_start ov76_0223D494
ov76_0223D494: @ 0x0223D494
	push {r3, r4}
	cmp r2, #0xff
	bne _0223D4A6
	movs r2, #0xf6
	lsls r2, r2, #2
	ldr r4, [r0, r2]
	subs r2, r2, #4
	str r4, [r0, r2]
	b _0223D4AC
_0223D4A6:
	movs r4, #0xf5
	lsls r4, r4, #2
	str r2, [r0, r4]
_0223D4AC:
	movs r2, #0xf3
	lsls r2, r2, #2
	str r1, [r0, r2]
	adds r1, r2, #0
	adds r1, #0xc
	str r3, [r0, r1]
	movs r1, #0
	adds r2, #0x10
	str r1, [r0, r2]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov76_0223D494

	thumb_func_start ov76_0223D4C4
ov76_0223D4C4: @ 0x0223D4C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xfc
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	adds r0, #0xfc
	bl FUN_0201ACF4
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001BC4
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	adds r4, #0xfc
	adds r0, r4, #0
	bl FUN_0201A8FC
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov76_0223D4C4

	thumb_func_start ov76_0223D4FC
ov76_0223D4FC: @ 0x0223D4FC
	push {r3, lr}
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl ov76_0223D494
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov76_0223D4FC

	thumb_func_start ov76_0223D50C
ov76_0223D50C: @ 0x0223D50C
	push {r4, lr}
	adds r4, r0, #0
	bl ov76_0223B400
	adds r0, r4, #0
	bl ov76_0223B808
	adds r0, r4, #0
	bl ov76_0223C7E0
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl ov76_0223D494
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov76_0223D50C

	thumb_func_start ov76_0223D530
ov76_0223D530: @ 0x0223D530
	push {r3, lr}
	movs r1, #3
	movs r2, #0
	adds r3, r1, #0
	bl ov76_0223D494
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov76_0223D530

	thumb_func_start ov76_0223D540
ov76_0223D540: @ 0x0223D540
	push {r3, lr}
	movs r1, #4
	movs r2, #0
	movs r3, #3
	bl ov76_0223D494
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov76_0223D540

	thumb_func_start ov76_0223D550
ov76_0223D550: @ 0x0223D550
	push {r3, r4, r5, lr}
	movs r1, #0xf3
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	lsls r2, r1, #2
	ldr r1, _0223D570 @ =0x0223EE04
	ldr r1, [r1, r2]
	blx r1
	adds r4, #0xe0
	adds r5, r0, #0
	ldr r0, [r4]
	bl FUN_0200C7EC
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0223D570: .4byte 0x0223EE04
	thumb_func_end ov76_0223D550

	thumb_func_start ov76_0223D574
ov76_0223D574: @ 0x0223D574
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0223D5FC @ =0x021BF67C
	movs r1, #0x10
	ldr r0, [r0, #0x4c]
	tst r1, r0
	beq _0223D592
	ldr r0, [r4]
	movs r1, #0xc
	adds r0, r0, #1
	str r0, [r4]
	blx FUN_020E1F6C
	str r1, [r4]
	b _0223D5F8
_0223D592:
	movs r1, #0x20
	tst r1, r0
	beq _0223D5AA
	ldr r0, [r4]
	cmp r0, #0
	ble _0223D5A4
	subs r0, r0, #1
	str r0, [r4]
	b _0223D5F8
_0223D5A4:
	movs r0, #0xb
	str r0, [r4]
	b _0223D5F8
_0223D5AA:
	movs r1, #0x40
	tst r1, r0
	beq _0223D5CE
	ldr r1, [r4]
	asrs r0, r1, #1
	lsrs r0, r0, #0x1e
	adds r0, r1, r0
	asrs r0, r0, #2
	beq _0223D5CA
	subs r0, r1, #4
	movs r1, #0xc
	str r0, [r4]
	blx FUN_020E1F6C
	str r1, [r4]
	b _0223D5F8
_0223D5CA:
	movs r0, #0
	pop {r4, pc}
_0223D5CE:
	movs r1, #0x80
	tst r0, r1
	beq _0223D5F4
	ldr r1, [r4]
	asrs r0, r1, #1
	lsrs r0, r0, #0x1e
	adds r0, r1, r0
	asrs r0, r0, #2
	cmp r0, #2
	beq _0223D5F0
	adds r0, r1, #4
	movs r1, #0xc
	str r0, [r4]
	blx FUN_020E1F6C
	str r1, [r4]
	b _0223D5F8
_0223D5F0:
	movs r0, #0
	pop {r4, pc}
_0223D5F4:
	movs r0, #0
	pop {r4, pc}
_0223D5F8:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0223D5FC: .4byte 0x021BF67C
	thumb_func_end ov76_0223D574

	thumb_func_start ov76_0223D600
ov76_0223D600: @ 0x0223D600
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r4, #0
	str r2, [sp]
	cmp r1, #0
	bne _0223D610
	movs r4, #1
_0223D610:
	movs r0, #0xf1
	lsls r0, r0, #2
	lsls r6, r1, #2
	adds r7, r5, r0
	add r1, sp, #4
	ldr r0, [r7, r6]
	adds r1, #2
	add r2, sp, #4
	bl ov76_0223C0EC
	movs r0, #0xbd
	adds r1, r5, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #4
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl FUN_0200D4C4
	ldr r0, [sp]
	cmp r0, #1
	bne _0223D66E
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, [r7, r6]
	lsls r4, r4, #2
	str r0, [r1, r4]
	ldr r0, [r1, r4]
	add r1, sp, #4
	adds r1, #2
	add r2, sp, #4
	bl ov76_0223C0EC
	movs r0, #0xbd
	adds r1, r5, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r3, sp, #4
	movs r1, #2
	movs r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	bl FUN_0200D4C4
_0223D66E:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov76_0223D600

	thumb_func_start ov76_0223D674
ov76_0223D674: @ 0x0223D674
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #6
	bls _0223D686
	b _0223D92A
_0223D686:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223D692: @ jump table
	.2byte _0223D6A0 - _0223D692 - 2 @ case 0
	.2byte _0223D79A - _0223D692 - 2 @ case 1
	.2byte _0223D7AA - _0223D692 - 2 @ case 2
	.2byte _0223D7BE - _0223D692 - 2 @ case 3
	.2byte _0223D880 - _0223D692 - 2 @ case 4
	.2byte _0223D8DE - _0223D692 - 2 @ case 5
	.2byte _0223D8EE - _0223D692 - 2 @ case 6
_0223D6A0:
	movs r0, #0x5b
	movs r1, #0x35
	bl FUN_02006C24
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov76_0223C110
	adds r0, r4, #0
	bl ov76_0223C188
	adds r0, r4, #0
	bl ov76_0223C288
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223CE84
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223CF24
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223CF88
	adds r0, r4, #0
	bl ov76_0223C354
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223C61C
	movs r0, #0x15
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r3, #2
	adds r1, r4, #0
	str r3, [sp, #8]
	movs r0, #0x28
	str r0, [sp, #0xc]
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	adds r1, #0xec
	movs r2, #1
	bl ov76_0223CA98
	adds r0, r4, #0
	bl ov76_0223B208
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223B69C
	adds r0, r4, #0
	bl ov76_0223B1E0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223CFEC
	adds r0, r4, #0
	bl ov76_0223D16C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223C438
	adds r0, r4, #0
	bl ov76_0223C4AC
	adds r0, r4, #0
	bl ov76_0223D338
	adds r0, r4, #0
	bl ov76_0223D368
	ldr r1, _0223D93C @ =0x00000418
	adds r0, r4, #0
	ldr r1, [r4, r1]
	bl ov76_0223BA90
	adds r0, r4, #0
	bl ov76_0223BB04
	adds r0, r4, #0
	bl ov76_0223BBAC
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223D2F4
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223C568
	adds r0, r4, #0
	bl ov76_0223B940
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223B96C
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #7
	bl ov76_0223CA30
	bl ov76_0223CE2C
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223DCB8
	adds r0, r5, #0
	bl FUN_02006CA8
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223D92A
_0223D79A:
	bl ov76_0223CE44
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223D92A
_0223D7AA:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _0223D7B4
	b _0223D92A
_0223D7B4:
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_0223D7BE:
	bl FUN_02022798
	cmp r0, #1
	bne _0223D7CE
	adds r0, r4, #0
	bl ov76_0223D4FC
	b _0223D92A
_0223D7CE:
	movs r0, #0xf1
	lsls r0, r0, #2
	ldr r6, [r4, r0]
	adds r0, r4, r0
	bl ov76_0223D574
	movs r1, #0xf1
	lsls r1, r1, #2
	ldr r5, [r4, r1]
	cmp r0, #1
	str r6, [r4, r1]
	bne _0223D82A
	adds r0, r4, #0
	bl ov76_0223B400
	adds r0, r4, #0
	bl ov76_0223B808
	adds r0, r4, #0
	bl ov76_0223C7E0
	movs r0, #0xf1
	lsls r0, r0, #2
	str r5, [r4, r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl ov76_0223D600
	adds r0, r4, #0
	bl ov76_0223B678
	adds r0, r4, #0
	bl ov76_0223B208
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223B69C
	adds r0, r4, #0
	bl ov76_0223B1E0
	ldr r0, _0223D940 @ =0x000005DC
	bl FUN_02005748
	b _0223D92A
_0223D82A:
	ldr r0, _0223D944 @ =0x021BF67C
	ldr r2, [r0, #0x48]
	movs r0, #1
	tst r0, r2
	beq _0223D86C
	adds r0, r1, #0
	adds r0, #0x10
	ldr r0, [r4, r0]
	adds r1, #0x10
	adds r0, r0, #1
	str r0, [r4, r1]
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #8
	bl ov76_0223CA30
	movs r0, #0xf1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	adds r1, #0xfc
	movs r2, #1
	adds r3, r4, #0
	bl ov76_0223BF74
	ldr r0, _0223D940 @ =0x000005DC
	bl FUN_02005748
	b _0223D92A
_0223D86C:
	movs r0, #2
	tst r0, r2
	beq _0223D92A
	movs r0, #5
	adds r1, #0x10
	str r0, [r4, r1]
	ldr r0, _0223D948 @ =0x000005DD
	bl FUN_02005748
	b _0223D92A
_0223D880:
	movs r0, #0x1a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	adds r1, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r1, r0
	beq _0223D89C
	adds r0, r0, #1
	cmp r1, r0
	beq _0223D92A
	b _0223D8B6
_0223D89C:
	adds r0, r4, #0
	bl ov76_0223D4C4
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #7
	bl ov76_0223CA30
	movs r0, #0xf5
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0223D92A
_0223D8B6:
	cmp r1, #0
	beq _0223D92A
	adds r0, r4, #0
	blx r1
	cmp r0, #1
	beq _0223D8CA
	adds r0, r4, #0
	bl ov76_0223D4C4
	b _0223D92A
_0223D8CA:
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #7
	bl ov76_0223CA30
	movs r0, #0xf5
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0223D92A
_0223D8DE:
	bl ov76_0223CE64
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223D92A
_0223D8EE:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223D92A
	adds r0, r4, #0
	adds r0, #0xec
	bl FUN_0201A8FC
	adds r0, r4, #0
	bl ov76_0223C8BC
	adds r0, r4, #0
	bl ov76_0223C32C
	adds r0, r4, #0
	bl ov76_0223D31C
	adds r0, r4, #0
	bl ov76_0223C588
	adds r0, r4, #0
	bl ov76_0223BC70
	ldr r0, [r4]
	movs r1, #0
	bl FUN_02097F30
	add sp, #0x10
	movs r0, #0
	pop {r4, r5, r6, pc}
_0223D92A:
	adds r0, r4, #0
	bl ov76_0223C304
	adds r0, r4, #0
	bl ov76_0223C88C
	movs r0, #1
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223D93C: .4byte 0x00000418
_0223D940: .4byte 0x000005DC
_0223D944: .4byte 0x021BF67C
_0223D948: .4byte 0x000005DD
	thumb_func_end ov76_0223D674

	thumb_func_start ov76_0223D94C
ov76_0223D94C: @ 0x0223D94C
	push {r3, lr}
	cmp r1, #3
	bhi _0223D97E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223D95E: @ jump table
	.2byte _0223D966 - _0223D95E - 2 @ case 0
	.2byte _0223D976 - _0223D95E - 2 @ case 1
	.2byte _0223D96E - _0223D95E - 2 @ case 2
	.2byte _0223D976 - _0223D95E - 2 @ case 3
_0223D966:
	movs r1, #1
	bl FUN_0200D3CC
	pop {r3, pc}
_0223D96E:
	movs r1, #2
	bl FUN_0200D3CC
	pop {r3, pc}
_0223D976:
	movs r1, #0
	bl FUN_0200D3CC
	pop {r3, pc}
_0223D97E:
	bl FUN_02022974
	pop {r3, pc}
	thumb_func_end ov76_0223D94C

	thumb_func_start ov76_0223D984
ov76_0223D984: @ 0x0223D984
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r5, #0
	beq _0223D9A8
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_020129A4
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r0, r5, #0
	adds r1, r1, r4
	adds r2, r2, r6
	bl FUN_020128C4
_0223D9A8:
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov76_0223D984

	thumb_func_start ov76_0223D9AC
ov76_0223D9AC: @ 0x0223D9AC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #3
	beq _0223D9BE
	cmp r0, #6
	beq _0223D9D8
	b _0223D9F8
_0223D9BE:
	movs r1, #0
	ldr r0, [r4, #8]
	subs r2, r1, #1
	bl ov76_0223D984
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_0200D3CC
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0223D9D8:
	ldr r0, [r4, #8]
	movs r1, #0
	movs r2, #2
	bl ov76_0223D984
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_0200D3CC
	adds r0, r5, #0
	bl FUN_0200DA58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
_0223D9F8:
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov76_0223D9AC

	thumb_func_start ov76_0223DA00
ov76_0223DA00: @ 0x0223DA00
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #0x35
	movs r1, #0xc
	bl FUN_02018144
	adds r4, r0, #0
	movs r0, #1
	str r0, [r4]
	movs r1, #0
	str r6, [r4, #4]
	adds r0, r5, #0
	subs r2, r1, #1
	str r5, [r4, #8]
	bl ov76_0223D984
	movs r2, #0xfa
	ldr r0, _0223DA30 @ =ov76_0223D9AC
	adds r1, r4, #0
	lsls r2, r2, #2
	bl FUN_0200D9E8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223DA30: .4byte ov76_0223D9AC
	thumb_func_end ov76_0223DA00

	thumb_func_start ov76_0223DA34
ov76_0223DA34: @ 0x0223DA34
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r0, #0xd8
	ldr r0, [r0]
	adds r6, r1, #0
	cmp r0, #0
	bne _0223DA48
	b _0223DC84
_0223DA48:
	cmp r5, #0x14
	bls _0223DA4E
	b _0223DC80
_0223DA4E:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0223DA5A: @ jump table
	.2byte _0223DBC2 - _0223DA5A - 2 @ case 0
	.2byte _0223DBC2 - _0223DA5A - 2 @ case 1
	.2byte _0223DBC2 - _0223DA5A - 2 @ case 2
	.2byte _0223DBC2 - _0223DA5A - 2 @ case 3
	.2byte _0223DBC2 - _0223DA5A - 2 @ case 4
	.2byte _0223DBC2 - _0223DA5A - 2 @ case 5
	.2byte _0223DBC2 - _0223DA5A - 2 @ case 6
	.2byte _0223DBC2 - _0223DA5A - 2 @ case 7
	.2byte _0223DA84 - _0223DA5A - 2 @ case 8
	.2byte _0223DACE - _0223DA5A - 2 @ case 9
	.2byte _0223DB1C - _0223DA5A - 2 @ case 10
	.2byte _0223DB4A - _0223DA5A - 2 @ case 11
	.2byte _0223DB88 - _0223DA5A - 2 @ case 12
	.2byte _0223DC50 - _0223DA5A - 2 @ case 13
	.2byte _0223DC50 - _0223DA5A - 2 @ case 14
	.2byte _0223DC50 - _0223DA5A - 2 @ case 15
	.2byte _0223DC50 - _0223DA5A - 2 @ case 16
	.2byte _0223DC50 - _0223DA5A - 2 @ case 17
	.2byte _0223DC50 - _0223DA5A - 2 @ case 18
	.2byte _0223DC50 - _0223DA5A - 2 @ case 19
	.2byte _0223DC50 - _0223DA5A - 2 @ case 20
_0223DA84:
	cmp r6, #0
	bne _0223DAC2
	ldr r1, _0223DC88 @ =0x00000418
	ldr r0, [r4, r1]
	cmp r0, #0
	ble _0223DA92
	b _0223DA96
_0223DA92:
	adds r0, r1, #4
	ldr r0, [r4, r0]
_0223DA96:
	subs r0, r0, #1
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov76_0223BC70
	ldr r1, _0223DC88 @ =0x00000418
	adds r0, r4, #0
	ldr r1, [r4, r1]
	bl ov76_0223BA90
	adds r0, r4, #0
	bl ov76_0223BB04
	adds r0, r4, #0
	bl ov76_0223BBAC
	adds r0, r4, #0
	bl ov76_0223CC8C
	ldr r0, _0223DC8C @ =0x000006C5
	bl FUN_02005748
_0223DAC2:
	ldr r0, _0223DC90 @ =0x00000404
	adds r1, r6, #0
	ldr r0, [r4, r0]
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DACE:
	cmp r6, #0
	bne _0223DB10
	ldr r1, _0223DC88 @ =0x00000418
	ldr r0, [r4, r1]
	adds r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	blx FUN_020E1F6C
	ldr r0, _0223DC88 @ =0x00000418
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov76_0223BC70
	ldr r1, _0223DC88 @ =0x00000418
	adds r0, r4, #0
	ldr r1, [r4, r1]
	bl ov76_0223BA90
	adds r0, r4, #0
	bl ov76_0223BB04
	adds r0, r4, #0
	bl ov76_0223BBAC
	adds r0, r4, #0
	bl ov76_0223CC8C
	ldr r0, _0223DC8C @ =0x000006C5
	bl FUN_02005748
_0223DB10:
	ldr r0, _0223DC94 @ =0x00000408
	adds r1, r6, #0
	ldr r0, [r4, r0]
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DB1C:
	cmp r6, #0
	bne _0223DB3E
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #5
	beq _0223DB34
	movs r1, #5
	str r1, [r4, r0]
	ldr r0, _0223DC98 @ =0x000005DD
	bl FUN_02005748
_0223DB34:
	ldr r0, _0223DC9C @ =0x0000040C
	movs r1, #0
	ldr r0, [r4, r0]
	bl ov76_0223DA00
_0223DB3E:
	ldr r0, _0223DC9C @ =0x0000040C
	adds r1, r6, #0
	ldr r0, [r4, r0]
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DB4A:
	cmp r6, #0
	bne _0223DB7A
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #6
	beq _0223DB6A
	movs r1, #6
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223DCB8
	ldr r0, _0223DCA0 @ =0x000005E2
	bl FUN_02005748
_0223DB6A:
	movs r0, #0x41
	movs r1, #0x8e
	lsls r0, r0, #4
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl ov76_0223DA00
_0223DB7A:
	movs r0, #0x41
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	adds r1, r6, #0
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DB88:
	cmp r6, #0
	bne _0223DBB6
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #7
	beq _0223DBA8
	movs r1, #7
	str r1, [r4, r0]
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223DCB8
	ldr r0, _0223DC98 @ =0x000005DD
	bl FUN_02005748
_0223DBA8:
	ldr r0, _0223DCA4 @ =0x00000414
	movs r1, #0x8f
	lsls r1, r1, #2
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl ov76_0223DA00
_0223DBB6:
	ldr r0, _0223DCA4 @ =0x00000414
	adds r1, r6, #0
	ldr r0, [r4, r0]
	bl ov76_0223D94C
	pop {r4, r5, r6, pc}
_0223DBC2:
	cmp r6, #0
	bne _0223DC84
	adds r0, r4, #0
	bl ov76_0223B2F8
	cmp r0, #0
	bne _0223DBE2
	ldr r0, _0223DCA8 @ =0x000005F2
	bl FUN_02005748
	adds r4, #0xec
	adds r0, r4, #0
	movs r1, #0xf
	bl ov76_0223CA30
	pop {r4, r5, r6, pc}
_0223DBE2:
	movs r0, #0x42
	lsls r0, r0, #4
	adds r6, r4, r0
	ldrb r1, [r6, r5]
	cmp r1, #0
	beq _0223DC38
	ldr r0, [r4, #0x64]
	subs r1, r1, #1
	bl FUN_0202CA90
	cmp r0, #0
	beq _0223DC38
	lsls r1, r5, #0x18
	adds r0, r4, #0
	lsrs r1, r1, #0x18
	bl ov76_0223B278
	adds r1, r4, #0
	adds r1, #0xd4
	str r0, [r1]
	ldrb r0, [r6, r5]
	bl FUN_02098164
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xec
	bl ov76_0223CDC4
	ldr r0, [r4]
	movs r2, #0
	ldrb r1, [r6, r5]
	ldr r0, [r0, #0x20]
	mvns r2, r2
	bl FUN_0202CAE0
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223CD20
	ldr r0, _0223DCAC @ =0x000005EB
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_0223DC38:
	ldrb r0, [r6, r5]
	cmp r0, #0
	beq _0223DC84
	ldr r0, _0223DCA8 @ =0x000005F2
	bl FUN_02005748
	adds r4, #0xec
	adds r0, r4, #0
	movs r1, #0x10
	bl ov76_0223CA30
	pop {r4, r5, r6, pc}
_0223DC50:
	cmp r6, #0
	bne _0223DC84
	subs r5, #0xd
	lsls r2, r5, #0x18
	adds r0, r4, #0
	lsrs r2, r2, #0x18
	bl ov76_0223B5C4
	lsls r0, r5, #4
	adds r1, r4, r0
	movs r0, #0xca
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	bl FUN_02098164
	adds r4, #0xec
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov76_0223CDC4
	ldr r0, _0223DCAC @ =0x000005EB
	bl FUN_02005748
	pop {r4, r5, r6, pc}
_0223DC80:
	bl FUN_02022974
_0223DC84:
	pop {r4, r5, r6, pc}
	nop
_0223DC88: .4byte 0x00000418
_0223DC8C: .4byte 0x000006C5
_0223DC90: .4byte 0x00000404
_0223DC94: .4byte 0x00000408
_0223DC98: .4byte 0x000005DD
_0223DC9C: .4byte 0x0000040C
_0223DCA0: .4byte 0x000005E2
_0223DCA4: .4byte 0x00000414
_0223DCA8: .4byte 0x000005F2
_0223DCAC: .4byte 0x000005EB
	thumb_func_end ov76_0223DA34

	thumb_func_start ov76_0223DCB0
ov76_0223DCB0: @ 0x0223DCB0
	movs r1, #0x96
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov76_0223DCB0

	thumb_func_start ov76_0223DCB8
ov76_0223DCB8: @ 0x0223DCB8
	adds r0, #0xd8
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov76_0223DCB8

	thumb_func_start ov76_0223DCC0
ov76_0223DCC0: @ 0x0223DCC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #4]
	add r1, sp, #0x10
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	movs r7, #0x1d
	lsls r7, r7, #4
	strb r0, [r1, #3]
	ldr r1, _0223DD7C @ =0x0223EE44
	ldr r2, [sp, #4]
	adds r3, r7, #1
	adds r4, r7, #2
	adds r5, r7, #3
_0223DCE0:
	ldrb r6, [r1]
	adds r0, r0, #1
	strb r6, [r2, r7]
	ldrb r6, [r1, #1]
	strb r6, [r2, r3]
	ldrb r6, [r1, #2]
	strb r6, [r2, r4]
	ldrb r6, [r1, #3]
	adds r1, r1, #4
	strb r6, [r2, r5]
	adds r2, r2, #4
	cmp r0, #0xd
	blt _0223DCE0
	cmp r0, #0x15
	bge _0223DD5A
	movs r3, #0x1d
	ldr r2, [sp, #4]
	lsls r3, r3, #4
	adds r2, r2, r3
	lsls r4, r0, #2
	ldr r1, [sp, #4]
	ldr r3, [sp, #4]
	adds r1, r1, r4
	adds r2, r2, r4
	lsls r4, r0, #4
	add r5, sp, #0xc
	adds r3, r3, r4
	ldrb r4, [r5, #4]
	strb r4, [r5]
	ldrb r4, [r5, #5]
	strb r4, [r5, #1]
	ldrb r4, [r5, #6]
	strb r4, [r5, #2]
	ldrb r4, [r5, #7]
	strb r4, [r5, #3]
	ldrb r4, [r5, #2]
	ldrb r6, [r5]
	ldrb r7, [r5, #1]
	str r4, [sp, #8]
	ldrb r4, [r5, #3]
	mov ip, r4
_0223DD32:
	movs r4, #0x1d
	lsls r4, r4, #4
	strb r6, [r1, r4]
	adds r4, r4, #1
	strb r7, [r1, r4]
	ldr r5, _0223DD80 @ =0x000001D2
	ldr r4, [sp, #8]
	adds r0, r0, #1
	strb r4, [r1, r5]
	adds r5, r5, #1
	mov r4, ip
	strb r4, [r1, r5]
	movs r4, #0x26
	lsls r4, r4, #4
	str r2, [r3, r4]
	adds r1, r1, #4
	adds r2, r2, #4
	adds r3, #0x10
	cmp r0, #0x15
	blt _0223DD32
_0223DD5A:
	movs r0, #0x35
	str r0, [sp]
	movs r1, #0x1d
	ldr r0, [sp, #4]
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r2, _0223DD84 @ =ov76_0223DA34
	ldr r3, [sp, #4]
	movs r1, #0x15
	bl FUN_02023FCC
	movs r2, #0x73
	ldr r1, [sp, #4]
	lsls r2, r2, #2
	str r0, [r1, r2]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223DD7C: .4byte 0x0223EE44
_0223DD80: .4byte 0x000001D2
_0223DD84: .4byte ov76_0223DA34
	thumb_func_end ov76_0223DCC0

	thumb_func_start ov76_0223DD88
ov76_0223DD88: @ 0x0223DD88
	push {r4, r5, r6, lr}
	sub sp, #0x48
	ldr r1, _0223DDF4 @ =0x00000428
	adds r5, r0, #0
	ldr r1, [r5, r1]
	add r0, sp, #0x38
	movs r2, #2
	bl FUN_02075EF4
	ldr r0, _0223DDF4 @ =0x00000428
	movs r1, #5
	ldr r0, [r5, r0]
	movs r2, #0
	bl FUN_02074470
	adds r4, r0, #0
	ldr r0, _0223DDF4 @ =0x00000428
	movs r1, #2
	ldr r0, [r5, r0]
	bl FUN_020765AC
	adds r6, r0, #0
	movs r0, #0x6b
	lsls r0, r0, #2
	str r6, [r5, r0]
	ldr r0, _0223DDF8 @ =0x0000042C
	lsls r2, r4, #0x10
	ldr r0, [r5, r0]
	add r1, sp, #0x10
	lsrs r2, r2, #0x10
	movs r3, #1
	bl FUN_020789BC
	ldr r0, _0223DDFC @ =0xFFFFFD80
	adds r6, #0x30
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	movs r0, #0x69
	str r1, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r1, sp, #0x38
	movs r2, #0xc0
	adds r3, r6, #0
	bl FUN_02007C34
	movs r1, #0x6a
	lsls r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x48
	pop {r4, r5, r6, pc}
	.align 2, 0
_0223DDF4: .4byte 0x00000428
_0223DDF8: .4byte 0x0000042C
_0223DDFC: .4byte 0xFFFFFD80
	thumb_func_end ov76_0223DD88

	thumb_func_start ov76_0223DE00
ov76_0223DE00: @ 0x0223DE00
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _0223DE4C @ =0x00000428
	movs r1, #5
	ldr r0, [r5, r0]
	movs r2, #0
	bl FUN_02074470
	adds r4, r0, #0
	ldr r0, _0223DE4C @ =0x00000428
	ldr r0, [r5, r0]
	bl FUN_02075BCC
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02007B98
	movs r0, #2
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r2, #0x97
	str r0, [sp, #8]
	ldr r0, _0223DE50 @ =0x0000042C
	lsls r2, r2, #2
	ldr r1, [r5, r2]
	subs r2, #0xb4
	lsls r3, r4, #0x10
	ldr r0, [r5, r0]
	ldr r2, [r5, r2]
	lsrs r3, r3, #0x10
	bl FUN_020789F4
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0223DE4C: .4byte 0x00000428
_0223DE50: .4byte 0x0000042C
	thumb_func_end ov76_0223DE00

	thumb_func_start ov76_0223DE54
ov76_0223DE54: @ 0x0223DE54
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xc
	movs r2, #0
	bl FUN_02007DEC
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd
	movs r2, #0
	bl FUN_02007DEC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov76_0223DE54

	thumb_func_start ov76_0223DE78
ov76_0223DE78: @ 0x0223DE78
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xc
	bl FUN_020080C0
	movs r1, #1
	lsls r1, r1, #8
	cmp r0, r1
	bne _0223DE94
	movs r0, #0
	pop {r4, pc}
_0223DE94:
	adds r1, #0xa8
	ldr r0, [r4, r1]
	movs r1, #0xc
	bl FUN_020080C0
	movs r2, #1
	lsls r2, r2, #8
	cmp r0, r2
	blt _0223DEC6
	adds r0, r2, #0
	adds r0, #0xa8
	ldr r0, [r4, r0]
	movs r1, #0xc
	bl FUN_02007DEC
	movs r0, #0x6a
	lsls r0, r0, #2
	movs r1, #0xd
	adds r2, r1, #0
	ldr r0, [r4, r0]
	adds r2, #0xf3
	bl FUN_02007DEC
	movs r0, #0
	pop {r4, pc}
_0223DEC6:
	adds r2, #0xa8
	ldr r0, [r4, r2]
	movs r1, #0xc
	movs r2, #0x20
	bl FUN_02008274
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd
	movs r2, #0x20
	bl FUN_02008274
	movs r1, #0x6a
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_020087C8
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov76_0223DE78

	thumb_func_start ov76_0223DEF4
ov76_0223DEF4: @ 0x0223DEF4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xc
	bl FUN_020080C0
	cmp r0, #0
	bne _0223DF0C
	movs r0, #0
	pop {r4, pc}
_0223DF0C:
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xc
	bl FUN_020080C0
	cmp r0, #0
	bgt _0223DF3C
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xc
	movs r2, #0
	bl FUN_02007DEC
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd
	movs r2, #0
	bl FUN_02007DEC
	movs r0, #0
	pop {r4, pc}
_0223DF3C:
	movs r0, #0x6a
	lsls r0, r0, #2
	movs r1, #0xc
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2c
	bl FUN_02008274
	movs r0, #0x6a
	lsls r0, r0, #2
	movs r1, #0xd
	adds r2, r1, #0
	ldr r0, [r4, r0]
	subs r2, #0x2d
	bl FUN_02008274
	movs r1, #0x6a
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_020087C8
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov76_0223DEF4

	thumb_func_start ov76_0223DF70
ov76_0223DF70: @ 0x0223DF70
	adds r2, r1, #0
	movs r1, #0x6a
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	ldr r3, _0223DF80 @ =FUN_02007DEC
	movs r1, #6
	bx r3
	nop
_0223DF80: .4byte FUN_02007DEC
	thumb_func_end ov76_0223DF70

	thumb_func_start ov76_0223DF84
ov76_0223DF84: @ 0x0223DF84
	movs r1, #0x6a
	lsls r1, r1, #2
	ldr r3, _0223DF90 @ =FUN_02007DC8
	ldr r0, [r0, r1]
	bx r3
	nop
_0223DF90: .4byte FUN_02007DC8
	thumb_func_end ov76_0223DF84

	thumb_func_start ov76_0223DF94
ov76_0223DF94: @ 0x0223DF94
	push {r4, r5, r6, r7, lr}
	sub sp, #0xa4
	movs r1, #0xf5
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r2, [r4, r1]
	cmp r2, #0xa
	bhi _0223E014
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223DFB0: @ jump table
	.2byte _0223DFC6 - _0223DFB0 - 2 @ case 0
	.2byte _0223E00C - _0223DFB0 - 2 @ case 1
	.2byte _0223E082 - _0223DFB0 - 2 @ case 2
	.2byte _0223E0BA - _0223DFB0 - 2 @ case 3
	.2byte _0223E7C0 - _0223DFB0 - 2 @ case 4
	.2byte _0223E0DA - _0223DFB0 - 2 @ case 5
	.2byte _0223E42E - _0223DFB0 - 2 @ case 6
	.2byte _0223E49A - _0223DFB0 - 2 @ case 7
	.2byte _0223E6BC - _0223DFB0 - 2 @ case 8
	.2byte _0223E6F0 - _0223DFB0 - 2 @ case 9
	.2byte _0223E77C - _0223DFB0 - 2 @ case 10
_0223DFC6:
	movs r1, #0
	bl ov76_0223DCB8
	adds r0, r4, #0
	ldr r1, _0223E304 @ =0x0000FFFF
	adds r0, #0xec
	bl ov76_0223CA30
	adds r0, r4, #0
	bl ov76_0223CB58
	adds r0, r4, #0
	bl ov76_0223CC8C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl ov76_0223BD30
	adds r0, r4, #0
	bl ov76_0223D338
	adds r0, r4, #0
	bl ov76_0223D368
	movs r0, #0x26
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E00C:
	bl ov76_0223DCB0
	cmp r0, #1
	bne _0223E016
_0223E014:
	b _0223E7C0
_0223E016:
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #1
	movs r2, #3
	bl FUN_02003178
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E304 @ =0x0000FFFF
	movs r1, #4
	bl FUN_02003178
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #7
	movs r1, #1
	bl FUN_02019060
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223D2F4
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223C568
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223B96C
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E082:
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	bne _0223E180
	movs r0, #3
	movs r1, #1
	bl FUN_02019060
	movs r0, #0x10
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #1
	movs r2, #2
	bl FUN_02003178
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E0BA:
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	bne _0223E180
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223DCB8
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E0DA:
	adds r2, r1, #0
	adds r2, #8
	ldr r2, [r4, r2]
	cmp r2, #7
	bls _0223E0E6
	b _0223E3F4
_0223E0E6:
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_0223E0F2: @ jump table
	.2byte _0223E102 - _0223E0F2 - 2 @ case 0
	.2byte _0223E174 - _0223E0F2 - 2 @ case 1
	.2byte _0223E1CA - _0223E0F2 - 2 @ case 2
	.2byte _0223E22E - _0223E0F2 - 2 @ case 3
	.2byte _0223E27A - _0223E0F2 - 2 @ case 4
	.2byte _0223E2BE - _0223E0F2 - 2 @ case 5
	.2byte _0223E314 - _0223E0F2 - 2 @ case 6
	.2byte _0223E388 - _0223E0F2 - 2 @ case 7
_0223E102:
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r3, #0
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E308 @ =0x0000080B
	movs r1, #2
	bl FUN_02003178
	movs r3, #0
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E304 @ =0x0000FFFF
	movs r1, #8
	bl FUN_02003178
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223DCB8
	movs r0, #0x3e
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	adds r0, r4, #0
	bl ov76_0223D3CC
	adds r0, r4, #0
	bl ov76_0223DD88
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223DF70
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #0xd
	bl ov76_0223CA30
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E174:
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	beq _0223E182
_0223E180:
	b _0223E7C0
_0223E182:
	movs r0, #0x35
	str r0, [sp, #0x80]
	movs r1, #1
	movs r2, #0
	movs r0, #0xff
	str r0, [sp, #0x88]
	adds r0, r4, #0
	str r1, [sp, #0x7c]
	str r1, [sp, #0x94]
	str r2, [sp, #0x84]
	str r2, [sp, #0x90]
	adds r0, #0xdc
	ldr r0, [r0]
	movs r1, #0x9b
	str r0, [sp, #0x98]
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	str r0, [sp, #0x9c]
	ldr r0, _0223E30C @ =0x00000428
	ldr r0, [r4, r0]
	bl FUN_02074470
	str r0, [sp, #0x8c]
	add r0, sp, #0x7c
	bl FUN_02237728
	movs r1, #0x8b
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E1CA:
	add r2, sp, #0x58
	movs r0, #0
	str r0, [r2]
	str r0, [r2, #4]
	str r0, [r2, #8]
	movs r0, #1
	str r0, [sp, #0x58]
	adds r0, r1, #0
	adds r0, #0x54
	ldr r0, [r4, r0]
	subs r1, #0x10
	str r0, [sp, #0x60]
	ldr r0, [r4, r1]
	adds r1, r4, #0
	adds r0, r0, #1
	str r0, [sp, #0x18]
	add r0, sp, #0x64
	bl ov76_0223B848
	ldr r0, _0223E30C @ =0x00000428
	movs r1, #0xa2
	ldr r0, [r4, r0]
	add r2, sp, #0x18
	bl FUN_02074B30
	ldr r0, _0223E30C @ =0x00000428
	movs r1, #0xab
	ldr r0, [r4, r0]
	add r2, sp, #0x64
	bl FUN_02074B30
	movs r0, #0x35
	add r1, sp, #0x58
	bl FUN_02236004
	movs r1, #0x8a
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl FUN_02236320
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #4
	str r1, [r4, r0]
	b _0223E7C0
_0223E22E:
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02236374
	cmp r0, #1
	bne _0223E2EA
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02237810
	cmp r0, #1
	bne _0223E2EA
	adds r0, r4, #0
	bl ov76_0223DE78
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_022363B4
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223DF70
	adds r0, r4, #0
	bl ov76_0223DE54
	ldr r0, _0223E310 @ =0x000006C6
	bl FUN_02005748
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E27A:
	bl ov76_0223DE78
	adds r5, r0, #0
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_022377F8
	cmp r0, #0
	bne _0223E2EA
	cmp r5, #0
	bne _0223E2EA
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0223783C
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	bl ov76_0223DE00
	movs r0, #0x3e
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	subs r1, r0, #4
	ldr r1, [r4, r1]
	subs r0, r0, #4
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E2BE:
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_022363C4
	cmp r0, #0
	bne _0223E2EA
	movs r0, #0x97
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_020160F4
	cmp r0, #1
	bne _0223E2EA
	movs r0, #0x6a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02007C24
	cmp r0, #0
	beq _0223E2EC
_0223E2EA:
	b _0223E7C0
_0223E2EC:
	movs r0, #0x8a
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02236428
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
	nop
_0223E304: .4byte 0x0000FFFF
_0223E308: .4byte 0x0000080B
_0223E30C: .4byte 0x00000428
_0223E310: .4byte 0x000006C6
_0223E314:
	adds r0, r1, #0
	adds r0, #0xc
	ldr r0, [r4, r0]
	adds r2, r0, #1
	adds r0, r1, #0
	adds r0, #0xc
	str r2, [r4, r0]
	adds r0, r1, #0
	adds r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #0x1e
	blt _0223E402
	adds r0, r1, #0
	movs r2, #0
	adds r0, #0xc
	str r2, [r4, r0]
	movs r0, #0x35
	movs r3, #1
	str r0, [sp, #0x34]
	movs r0, #5
	str r0, [sp, #0x38]
	movs r0, #0xff
	str r0, [sp, #0x3c]
	adds r0, r4, #0
	str r3, [sp, #0x30]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r1, #0x54
	str r0, [sp, #0x4c]
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	str r0, [sp, #0x50]
	ldr r0, [r4, r1]
	movs r1, #0x9b
	bl FUN_02074470
	str r0, [sp, #0x40]
	add r0, sp, #0x30
	bl FUN_02237728
	movs r1, #0x8b
	lsls r1, r1, #2
	str r0, [r4, r1]
	bl ov76_0223D3A0
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E388:
	bl ov76_0223DEF4
	adds r5, r0, #0
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_022377F8
	cmp r0, #0
	bne _0223E402
	cmp r5, #0
	bne _0223E402
	movs r0, #0xa
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E6E8 @ =0x0000080B
	movs r1, #2
	bl FUN_02003178
	movs r0, #0xa
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E6EC @ =0x0000FFFF
	movs r1, #8
	bl FUN_02003178
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223DF70
	adds r0, r4, #0
	bl ov76_0223DF84
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0223783C
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E3F4:
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	beq _0223E404
_0223E402:
	b _0223E7C0
_0223E404:
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223DCB8
	movs r0, #0xf7
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	movs r1, #4
	subs r0, #8
	str r1, [r4, r0]
	adds r0, r4, #0
	ldr r1, _0223E6EC @ =0x0000FFFF
	adds r0, #0xec
	bl ov76_0223CA30
	b _0223E7C0
_0223E42E:
	adds r0, #0xec
	movs r1, #0xc
	bl ov76_0223CA30
	adds r0, r4, #0
	bl ov76_0223B78C
	cmp r0, #1
	bne _0223E448
	movs r0, #0x26
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r4, r0]
_0223E448:
	adds r0, r4, #0
	bl ov76_0223B808
	adds r0, r4, #0
	bl ov76_0223C7E0
	ldr r0, [r4]
	ldr r0, [r0, #0x28]
	bl FUN_0202CD88
	movs r1, #6
	bl FUN_0202CFEC
	movs r0, #0xf1
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r0, #0xc
	muls r0, r1, r0
	adds r2, r4, r0
	movs r0, #0x99
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	cmp r0, #0xff
	beq _0223E490
	ldr r2, [r4]
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r5, [r0, #4]
	ldr r0, [r2, #0x20]
	bl FUN_0202CA28
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0xab
	bl FUN_02074B30
_0223E490:
	movs r0, #0xf5
	movs r1, #8
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0223E7C0
_0223E49A:
	adds r1, #8
	ldr r1, [r4, r1]
	cmp r1, #5
	bhi _0223E524
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223E4AE: @ jump table
	.2byte _0223E4BA - _0223E4AE - 2 @ case 0
	.2byte _0223E518 - _0223E4AE - 2 @ case 1
	.2byte _0223E59C - _0223E4AE - 2 @ case 2
	.2byte _0223E5AE - _0223E4AE - 2 @ case 3
	.2byte _0223E616 - _0223E4AE - 2 @ case 4
	.2byte _0223E652 - _0223E4AE - 2 @ case 5
_0223E4BA:
	bl ov76_0223B78C
	cmp r0, #0
	bne _0223E4CC
	movs r0, #0xf5
	movs r1, #8
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0223E7C0
_0223E4CC:
	movs r3, #0
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E6E8 @ =0x0000080B
	movs r1, #2
	bl FUN_02003178
	movs r3, #0
	str r3, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E6EC @ =0x0000FFFF
	movs r1, #8
	bl FUN_02003178
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223DCB8
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E518:
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	beq _0223E526
_0223E524:
	b _0223E7C0
_0223E526:
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02003858
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r2, #4
	adds r0, r4, #0
	str r2, [sp, #8]
	movs r1, #0x28
	str r1, [sp, #0xc]
	adds r0, #0xe4
	adds r1, #0xe4
	ldr r0, [r0]
	adds r1, r4, r1
	movs r3, #2
	bl ov76_0223CA98
	adds r0, r4, #0
	adds r0, #0xe4
	ldr r0, [r0]
	movs r1, #0x19
	str r0, [sp, #0x1c]
	movs r0, #4
	str r0, [sp, #0x20]
	movs r0, #0xd4
	str r0, [sp, #0x24]
	movs r0, #5
	str r0, [sp, #0x28]
	add r0, sp, #0x10
	strb r1, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1d]
	movs r0, #0x35
	bl FUN_02015920
	movs r1, #0x89
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, sp, #0x1c
	bl FUN_02015958
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0xe
	bl ov76_0223CA30
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E59C:
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_0223E5AE:
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020159FC
	cmp r0, #0
	beq _0223E65E
	cmp r0, #1
	beq _0223E5C4
	cmp r0, #2
	bne _0223E65E
_0223E5C4:
	movs r1, #0x3e
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02003858
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02015A54
	movs r0, #0x89
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02015938
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	bl FUN_0200E084
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201ACF4
	movs r0, #0x43
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E616:
	movs r0, #0xa
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E6E8 @ =0x0000080B
	movs r1, #2
	bl FUN_02003178
	movs r0, #0xa
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E6EC @ =0x0000FFFF
	movs r1, #8
	bl FUN_02003178
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E652:
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	beq _0223E660
_0223E65E:
	b _0223E7C0
_0223E660:
	movs r0, #0x3e
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223E6AA
	cmp r1, #1
	beq _0223E674
	cmp r1, #2
	beq _0223E6A4
	b _0223E6AA
_0223E674:
	adds r0, r4, #0
	bl ov76_0223D350
	adds r0, r4, #0
	bl ov76_0223D384
	adds r0, r4, #0
	bl ov76_0223CC8C
	adds r0, r4, #0
	bl ov76_0223B678
	adds r0, r4, #0
	bl ov76_0223B208
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223B69C
	movs r0, #0xf5
	movs r1, #6
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0223E6AA
_0223E6A4:
	movs r1, #4
	subs r0, #0xc
	str r1, [r4, r0]
_0223E6AA:
	adds r0, r4, #0
	movs r1, #1
	bl ov76_0223DCB8
	movs r0, #0xf7
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _0223E7C0
_0223E6BC:
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r3, #0
	str r3, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	movs r1, #1
	movs r2, #2
	bl FUN_02003178
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
	.align 2, 0
_0223E6E8: .4byte 0x0000080B
_0223E6EC: .4byte 0x0000FFFF
_0223E6F0:
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	bne _0223E7C0
	movs r0, #0x10
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r0, r4, #0
	movs r1, #1
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	adds r2, r1, #0
	bl FUN_02003178
	movs r0, #0x10
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	adds r0, r4, #0
	str r3, [sp, #8]
	adds r0, #0xe8
	ldr r0, [r0]
	ldr r2, _0223E89C @ =0x0000FFFF
	movs r1, #4
	bl FUN_02003178
	movs r0, #3
	adds r1, r0, #0
	bl FUN_02019060
	movs r0, #7
	movs r1, #3
	bl FUN_02019060
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223D2F4
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223C568
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223B96C
	movs r1, #0
	adds r0, r4, #0
	mvns r1, r1
	movs r2, #4
	bl ov76_0223BD30
	adds r0, r4, #0
	movs r1, #0
	bl ov76_0223DCB8
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E7C0
_0223E77C:
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_0200384C
	cmp r0, #0
	bne _0223E7C0
	adds r0, r4, #0
	bl ov76_0223DCB0
	cmp r0, #1
	beq _0223E7C0
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3F4
	movs r1, #0
	adds r0, r4, #0
	movs r2, #0xff
	adds r3, r1, #0
	bl ov76_0223D494
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #7
	bl ov76_0223CA30
	adds r0, r4, #0
	bl ov76_0223CDA4
	add sp, #0xa4
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0223E7C0:
	adds r0, r4, #0
	adds r0, #0xd4
	ldr r5, [r0]
	cmp r5, #0xff
	bne _0223E7D6
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0202404C
	b _0223E87E
_0223E7D6:
	add r0, sp, #0x14
	add r1, sp, #0x10
	bl FUN_020227A4
	cmp r0, #0
	beq _0223E824
	lsls r6, r5, #4
	movs r0, #0xca
	adds r1, r4, r6
	lsls r0, r0, #2
	ldrb r0, [r1, r0]
	bl FUN_02098164
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xec
	bl ov76_0223CDC4
	movs r0, #0xcb
	ldr r2, [sp, #0x10]
	adds r1, r4, r6
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x14]
	lsls r2, r2, #0x10
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223B758
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223B7D4
	b _0223E87E
_0223E824:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223B6C4
	lsls r6, r5, #4
	movs r2, #0x33
	adds r1, r4, r6
	lsls r2, r2, #4
	adds r7, r0, #0
	ldr r0, [r1, r2]
	subs r2, r2, #4
	ldr r1, [r1, r2]
	movs r2, #0
	bl ov76_0223B184
	cmp r7, #0
	bne _0223E866
	movs r1, #0xca
	ldr r0, [r4]
	adds r2, r4, r6
	lsls r1, r1, #2
	ldrb r1, [r2, r1]
	ldr r0, [r0, #0x20]
	movs r2, #1
	bl FUN_0202CB20
	adds r0, r4, #0
	bl ov76_0223CC8C
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov76_0223B704
_0223E866:
	ldr r0, _0223E8A0 @ =0x000005EA
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0xff
	adds r0, #0xd4
	str r1, [r0]
	adds r0, r4, #0
	ldr r1, _0223E89C @ =0x0000FFFF
	adds r0, #0xec
	bl ov76_0223CDC4
_0223E87E:
	adds r0, r4, #0
	bl ov76_0223D318
	adds r0, r4, #0
	bl ov76_0223C544
	adds r0, r4, #0
	bl ov76_0223C304
	adds r0, r4, #0
	bl ov76_0223C88C
	movs r0, #1
	add sp, #0xa4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0223E89C: .4byte 0x0000FFFF
_0223E8A0: .4byte 0x000005EA
	thumb_func_end ov76_0223DF94

	thumb_func_start ov76_0223E8A4
ov76_0223E8A4: @ 0x0223E8A4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0223E8BC
	cmp r1, #1
	beq _0223E8C0
	cmp r1, #2
	beq _0223E8D0
	b _0223E90A
_0223E8BC:
	adds r1, r1, #1
	str r1, [r4, r0]
_0223E8C0:
	bl ov76_0223CE64
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E90A
_0223E8D0:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0223E90A
	adds r0, r4, #0
	adds r0, #0xec
	bl FUN_0201A8FC
	adds r0, r4, #0
	bl ov76_0223C8BC
	adds r0, r4, #0
	bl ov76_0223C32C
	adds r0, r4, #0
	bl ov76_0223D31C
	adds r0, r4, #0
	bl ov76_0223C588
	adds r0, r4, #0
	bl ov76_0223BC70
	ldr r0, [r4]
	movs r1, #1
	bl FUN_02097F30
	movs r0, #0
	pop {r4, pc}
_0223E90A:
	adds r0, r4, #0
	bl ov76_0223C304
	adds r0, r4, #0
	bl ov76_0223C88C
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov76_0223E8A4

	thumb_func_start ov76_0223E91C
ov76_0223E91C: @ 0x0223E91C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0
	adds r4, r5, #4
	lsls r6, r1, #3
	str r0, [sp]
	ldr r0, [r4, r6]
	cmp r0, #0xff
	beq _0223E940
	ldr r1, [r5]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #4]
	movs r1, #0xa2
	add r2, sp, #0
	bl FUN_02074B30
_0223E940:
	movs r0, #0xff
	str r0, [r4, r6]
	adds r0, r5, #0
	bl ov76_0223C7E0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov76_0223E91C

	thumb_func_start ov76_0223E950
ov76_0223E950: @ 0x0223E950
	push {r4, lr}
	movs r2, #0xf5
	adds r4, r0, #0
	lsls r2, r2, #2
	ldr r1, [r4, r2]
	cmp r1, #0
	beq _0223E968
	cmp r1, #1
	beq _0223E986
	cmp r1, #2
	beq _0223E996
	b _0223E9AA
_0223E968:
	subs r2, #0x10
	ldr r1, [r4, r2]
	bl ov76_0223E91C
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #9
	bl ov76_0223CA30
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
	b _0223E9AA
_0223E986:
	ldr r0, _0223E9BC @ =0x021BF67C
	ldr r3, [r0, #0x48]
	ldr r0, _0223E9C0 @ =0x00000CF3
	tst r0, r3
	beq _0223E9AA
	adds r0, r1, #1
	str r0, [r4, r2]
	b _0223E9AA
_0223E996:
	movs r1, #0
	movs r2, #0xff
	adds r3, r1, #0
	bl ov76_0223D494
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #7
	bl ov76_0223CA30
_0223E9AA:
	adds r0, r4, #0
	bl ov76_0223C304
	adds r0, r4, #0
	bl ov76_0223C88C
	movs r0, #1
	pop {r4, pc}
	nop
_0223E9BC: .4byte 0x021BF67C
_0223E9C0: .4byte 0x00000CF3
	thumb_func_end ov76_0223E950

	thumb_func_start ov76_0223E9C4
ov76_0223E9C4: @ 0x0223E9C4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #3
	bls _0223E9D4
	b _0223EAFC
_0223E9D4:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0223E9E0: @ jump table
	.2byte _0223E9E8 - _0223E9E0 - 2 @ case 0
	.2byte _0223EA2A - _0223E9E0 - 2 @ case 1
	.2byte _0223EAB4 - _0223E9E0 - 2 @ case 2
	.2byte _0223EAC4 - _0223E9E0 - 2 @ case 3
_0223E9E8:
	subs r0, #0xe0
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl FUN_0200D474
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x14
	bl FUN_0200D474
	movs r0, #0xbd
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D364
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #0xa
	bl ov76_0223CA30
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	adds r1, r1, #1
	str r1, [r4, r0]
_0223EA2A:
	movs r0, #0xf2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov76_0223D574
	cmp r0, #1
	bne _0223EA4A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov76_0223D600
	ldr r0, _0223EB0C @ =0x000005DC
	bl FUN_02005748
	b _0223EAFC
_0223EA4A:
	ldr r0, _0223EB10 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0223EA88
	movs r2, #0xf1
	lsls r2, r2, #2
	ldr r1, [r4, r2]
	adds r2, r2, #4
	ldr r2, [r4, r2]
	adds r0, r4, #0
	bl ov76_0223C80C
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov76_0223D600
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #0xb
	bl ov76_0223CA30
	movs r0, #0xf5
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0223EB0C @ =0x000005DC
	bl FUN_02005748
	b _0223EAFC
_0223EA88:
	movs r0, #2
	tst r0, r1
	beq _0223EAFC
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3F4
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl ov76_0223D600
	movs r0, #0xf5
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldr r0, _0223EB14 @ =0x000005DD
	bl FUN_02005748
	b _0223EAFC
_0223EAB4:
	ldr r1, _0223EB10 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	ldr r1, _0223EB18 @ =0x00000CF3
	tst r1, r2
	beq _0223EAFC
	movs r1, #3
	str r1, [r4, r0]
	b _0223EAFC
_0223EAC4:
	subs r0, #0xe0
	ldr r0, [r4, r0]
	movs r1, #0x14
	bl FUN_0200D474
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x19
	bl FUN_0200D474
	movs r1, #0
	adds r0, r4, #0
	movs r2, #0xff
	adds r3, r1, #0
	bl ov76_0223D494
	movs r0, #0xbd
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D364
	adds r0, r4, #0
	adds r0, #0xec
	movs r1, #7
	bl ov76_0223CA30
_0223EAFC:
	adds r0, r4, #0
	bl ov76_0223C304
	adds r0, r4, #0
	bl ov76_0223C88C
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0223EB0C: .4byte 0x000005DC
_0223EB10: .4byte 0x021BF67C
_0223EB14: .4byte 0x000005DD
_0223EB18: .4byte 0x00000CF3
	thumb_func_end ov76_0223E9C4

	thumb_func_start ov76_0223EB1C
ov76_0223EB1C: @ 0x0223EB1C
	movs r0, #0
	bx lr
	thumb_func_end ov76_0223EB1C

	thumb_func_start ov76_0223EB20
ov76_0223EB20: @ 0x0223EB20
	push {r3, lr}
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _0223EB4C @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _0223EB50 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_0223EB4C: .4byte 0xFFFFE0FF
_0223EB50: .4byte 0x04001000
	thumb_func_end ov76_0223EB20

	thumb_func_start ov76_0223EB54
ov76_0223EB54: @ 0x0223EB54
	push {r3, lr}
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	pop {r3, pc}
	thumb_func_end ov76_0223EB54

	thumb_func_start ov76_0223EB64
ov76_0223EB64: @ 0x0223EB64
	push {r4, r5, lr}
	sub sp, #0xfc
	adds r4, r0, #0
	bl FUN_0201FF00
	ldr r5, _0223EC9C @ =0x0223EE1C
	add r3, sp, #0x10
	movs r2, #5
_0223EB74:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223EB74
	add r0, sp, #0x10
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
	ldr r5, _0223ECA0 @ =0x0223EDF4
	add r3, sp, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0223ECA4 @ =0x0223EE78
	add r3, sp, #0xa8
	movs r2, #0xa
_0223EBD4:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223EBD4
	ldr r0, [r5]
	movs r1, #1
	str r0, [r3]
	adds r0, r4, #0
	add r2, sp, #0xa8
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #2
	add r2, sp, #0xc4
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #3
	add r2, sp, #0xe0
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r1, _0223ECA8 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	orrs r2, r0
	strh r2, [r1]
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r5, _0223ECAC @ =0x0223EECC
	add r3, sp, #0x38
	movs r2, #0xe
_0223EC36:
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0223EC36
	adds r0, r4, #0
	movs r1, #4
	add r2, sp, #0x38
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #5
	add r2, sp, #0x54
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #6
	add r2, sp, #0x70
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #7
	add r2, sp, #0x8c
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
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF74
	add sp, #0xfc
	pop {r4, r5, pc}
	nop
_0223EC9C: .4byte 0x0223EE1C
_0223ECA0: .4byte 0x0223EDF4
_0223ECA4: .4byte 0x0223EE78
_0223ECA8: .4byte 0x04000008
_0223ECAC: .4byte 0x0223EECC
	thumb_func_end ov76_0223EB64

	thumb_func_start ov76_0223ECB0
ov76_0223ECB0: @ 0x0223ECB0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x69
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02008A94
	bl FUN_0201DCAC
	bl FUN_0200C800
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r0, [r0]
	bl FUN_02003694
	adds r4, #0xe4
	ldr r0, [r4]
	bl FUN_0201C2B8
	ldr r3, _0223ECE8 @ =0x027E0000
	ldr r1, _0223ECEC @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0223ECE8: .4byte 0x027E0000
_0223ECEC: .4byte 0x00003FF8
	thumb_func_end ov76_0223ECB0
	@ 0x0223ECF0
