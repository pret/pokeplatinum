
	thumb_func_start ov8_02249960
ov8_02249960: @ 0x02249960
	asrs r1, r0
	movs r0, #1
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bx lr
	thumb_func_end ov8_02249960

	thumb_func_start ov8_0224996C
ov8_0224996C: @ 0x0224996C
	movs r2, #1
	ldr r3, [r1]
	lsls r2, r0
	adds r0, r3, #0
	eors r0, r2
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end ov8_0224996C

	thumb_func_start ov8_0224997C
ov8_0224997C: @ 0x0224997C
	push {r4, r5, lr}
	sub sp, #0x2c
	ldr r3, _02249A30 @ =0x0224C758
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x10
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r4, #0x3c]
	bl FUN_0205EABC
	adds r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl FUN_0205EAC8
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0x1c
	movs r2, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r3, r2, #0
	bl FUN_020550F4
	movs r0, #0
	str r0, [sp]
	add r0, sp, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	add r1, sp, #0x10
	movs r2, #3
	add r3, sp, #0x1c
	bl FUN_02055208
	cmp r0, #0
	beq _02249A2C
	adds r0, r4, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #1
	bl FUN_02027F6C
	adds r5, r0, #0
	movs r0, #0xb
	movs r1, #4
	bl FUN_02018184
	adds r2, r0, #0
	movs r0, #0
	str r0, [r2]
	ldr r0, [sp, #0xc]
	cmp r0, #0xef
	bne _02249A00
	ldr r0, [r4, #0x10]
	ldr r1, _02249A34 @ =ov8_02249CD8
	bl FUN_02050944
	movs r0, #2
	add sp, #0x2c
	strb r0, [r5]
	pop {r4, r5, pc}
_02249A00:
	cmp r0, #0xf0
	bne _02249A14
	ldr r0, [r4, #0x10]
	ldr r1, _02249A38 @ =ov8_02249B74
	bl FUN_02050944
	movs r0, #1
	add sp, #0x2c
	strb r0, [r5]
	pop {r4, r5, pc}
_02249A14:
	cmp r0, #0xf1
	bne _02249A28
	ldr r0, [r4, #0x10]
	ldr r1, _02249A3C @ =ov8_02249A94
	bl FUN_02050944
	movs r0, #0
	add sp, #0x2c
	strb r0, [r5]
	pop {r4, r5, pc}
_02249A28:
	bl FUN_02022974
_02249A2C:
	add sp, #0x2c
	pop {r4, r5, pc}
	.align 2, 0
_02249A30: .4byte 0x0224C758
_02249A34: .4byte ov8_02249CD8
_02249A38: .4byte ov8_02249B74
_02249A3C: .4byte ov8_02249A94
	thumb_func_end ov8_0224997C

	thumb_func_start ov8_02249A40
ov8_02249A40: @ 0x02249A40
	push {r4, r5, r6, lr}
	adds r5, r3, #0
	ldr r4, [sp, #0x10]
	bl FUN_02054F94
	adds r6, r0, #0
	bl FUN_0205DBFC
	cmp r0, #0
	beq _02249A5E
	cmp r5, #0
	beq _02249A8E
	movs r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02249A5E:
	adds r0, r6, #0
	bl FUN_0205DC08
	cmp r0, #0
	beq _02249A76
	movs r0, #2
	lsls r0, r0, #0x10
	cmp r5, r0
	beq _02249A8E
	movs r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02249A76:
	adds r0, r6, #0
	bl FUN_0205DC14
	cmp r0, #0
	beq _02249A8E
	movs r0, #1
	lsls r0, r0, #0x12
	cmp r5, r0
	beq _02249A8E
	movs r0, #1
	str r0, [r4]
	pop {r4, r5, r6, pc}
_02249A8E:
	movs r0, #0
	str r0, [r4]
	pop {r4, r5, r6, pc}
	thumb_func_end ov8_02249A40

	thumb_func_start ov8_02249A94
ov8_02249A94: @ 0x02249A94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	bl FUN_02050A60
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02050A64
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #3
	bhi _02249B6A
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02249ABA: @ jump table
	.2byte _02249AC2 - _02249ABA - 2 @ case 0
	.2byte _02249AD2 - _02249ABA - 2 @ case 1
	.2byte _02249B44 - _02249ABA - 2 @ case 2
	.2byte _02249B60 - _02249ABA - 2 @ case 3
_02249AC2:
	ldr r1, [r4, #0x50]
	movs r0, #0
	bl ov8_02249F14
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02249B6A
_02249AD2:
	ldr r1, [r4, #0x50]
	movs r0, #1
	bl FUN_021D3DA0
	adds r6, r0, #0
	ldr r1, [r4, #0x50]
	movs r0, #2
	bl FUN_021D3DA0
	adds r7, r0, #0
	ldr r1, [r4, #0x50]
	movs r0, #3
	bl FUN_021D3DA0
	str r0, [sp]
	adds r0, r6, #0
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249B6A
	adds r0, r7, #0
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249B6A
	ldr r0, [sp]
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249B6A
	adds r4, #0xa4
	ldr r0, [r4]
	movs r1, #0xf2
	bl FUN_021E18CC
	adds r4, r0, #0
	add r0, sp, #4
	adds r1, r4, #0
	bl FUN_021E1894
	movs r0, #1
	ldr r1, [sp, #8]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #8]
	cmp r0, #0
	bgt _02249B3A
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
_02249B3A:
	adds r0, r4, #0
	add r1, sp, #4
	bl FUN_021E18A4
	b _02249B6A
_02249B44:
	adds r4, #0xa0
	movs r0, #0
	ldr r2, [r4]
	adds r1, r0, #0
	bl FUN_021EF388
	ldr r0, _02249B70 @ =0x0000065A
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02249B6A
_02249B60:
	bl FUN_020181C4
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249B6A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02249B70: .4byte 0x0000065A
	thumb_func_end ov8_02249A94

	thumb_func_start ov8_02249B74
ov8_02249B74: @ 0x02249B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	bl FUN_02050A60
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02050A64
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #5
	bls _02249B90
	b _02249CCC
_02249B90:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02249B9C: @ jump table
	.2byte _02249BA8 - _02249B9C - 2 @ case 0
	.2byte _02249BB8 - _02249B9C - 2 @ case 1
	.2byte _02249C38 - _02249B9C - 2 @ case 2
	.2byte _02249C6E - _02249B9C - 2 @ case 3
	.2byte _02249CA4 - _02249B9C - 2 @ case 4
	.2byte _02249CC2 - _02249B9C - 2 @ case 5
_02249BA8:
	ldr r1, [r4, #0x50]
	movs r0, #1
	bl ov8_02249F14
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02249CCC
_02249BB8:
	ldr r1, [r4, #0x50]
	movs r0, #1
	bl FUN_021D3DA0
	adds r6, r0, #0
	ldr r1, [r4, #0x50]
	movs r0, #2
	bl FUN_021D3DA0
	adds r7, r0, #0
	ldr r1, [r4, #0x50]
	movs r0, #3
	bl FUN_021D3DA0
	str r0, [sp]
	adds r0, r6, #0
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249CCC
	adds r0, r7, #0
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249CCC
	ldr r0, [sp]
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249CCC
	adds r4, #0xa4
	ldr r0, [r4]
	movs r1, #0xf2
	bl FUN_021E18CC
	adds r1, r0, #0
	add r0, sp, #0x1c
	bl FUN_021E1894
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bne _02249C12
	movs r0, #2
	str r0, [r5]
	b _02249CCC
_02249C12:
	movs r0, #2
	lsls r0, r0, #0x10
	cmp r1, r0
	bne _02249C26
	adds r0, r5, #0
	bl FUN_020181C4
	add sp, #0x28
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249C26:
	lsls r0, r0, #1
	cmp r1, r0
	bne _02249C32
	movs r0, #3
	str r0, [r5]
	b _02249CCC
_02249C32:
	bl FUN_02022974
	b _02249CCC
_02249C38:
	adds r4, #0xa4
	ldr r0, [r4]
	movs r1, #0xf2
	bl FUN_021E18CC
	adds r4, r0, #0
	add r0, sp, #0x10
	adds r1, r4, #0
	bl FUN_021E1894
	movs r0, #1
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xc
	adds r2, r1, r0
	lsls r1, r0, #5
	str r2, [sp, #0x14]
	cmp r2, r1
	blt _02249C64
	lsls r0, r0, #5
	str r0, [sp, #0x14]
	movs r0, #4
	str r0, [r5]
_02249C64:
	adds r0, r4, #0
	add r1, sp, #0x10
	bl FUN_021E18A4
	b _02249CCC
_02249C6E:
	adds r4, #0xa4
	ldr r0, [r4]
	movs r1, #0xf2
	bl FUN_021E18CC
	adds r4, r0, #0
	add r0, sp, #4
	adds r1, r4, #0
	bl FUN_021E1894
	movs r0, #1
	ldr r1, [sp, #8]
	lsls r0, r0, #0xc
	subs r2, r1, r0
	lsls r1, r0, #5
	str r2, [sp, #8]
	cmp r2, r1
	bgt _02249C9A
	lsls r0, r0, #5
	str r0, [sp, #8]
	movs r0, #4
	str r0, [r5]
_02249C9A:
	adds r0, r4, #0
	add r1, sp, #4
	bl FUN_021E18A4
	b _02249CCC
_02249CA4:
	adds r4, #0xa0
	movs r1, #2
	ldr r2, [r4]
	movs r0, #0
	lsls r1, r1, #0x10
	bl FUN_021EF388
	ldr r0, _02249CD4 @ =0x0000065A
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02249CCC
_02249CC2:
	bl FUN_020181C4
	add sp, #0x28
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249CCC:
	movs r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249CD4: .4byte 0x0000065A
	thumb_func_end ov8_02249B74

	thumb_func_start ov8_02249CD8
ov8_02249CD8: @ 0x02249CD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	bl FUN_02050A60
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02050A64
	adds r5, r0, #0
	ldr r1, [r5]
	cmp r1, #3
	bhi _02249DB2
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02249CFE: @ jump table
	.2byte _02249D06 - _02249CFE - 2 @ case 0
	.2byte _02249D16 - _02249CFE - 2 @ case 1
	.2byte _02249D8A - _02249CFE - 2 @ case 2
	.2byte _02249DA8 - _02249CFE - 2 @ case 3
_02249D06:
	ldr r1, [r4, #0x50]
	movs r0, #2
	bl ov8_02249F14
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02249DB2
_02249D16:
	ldr r1, [r4, #0x50]
	movs r0, #1
	bl FUN_021D3DA0
	adds r6, r0, #0
	ldr r1, [r4, #0x50]
	movs r0, #2
	bl FUN_021D3DA0
	adds r7, r0, #0
	ldr r1, [r4, #0x50]
	movs r0, #3
	bl FUN_021D3DA0
	str r0, [sp]
	adds r0, r6, #0
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249DB2
	adds r0, r7, #0
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249DB2
	ldr r0, [sp]
	bl FUN_021D3F70
	cmp r0, #0
	beq _02249DB2
	adds r4, #0xa4
	ldr r0, [r4]
	movs r1, #0xf2
	bl FUN_021E18CC
	adds r4, r0, #0
	add r0, sp, #4
	adds r1, r4, #0
	bl FUN_021E1894
	movs r0, #1
	ldr r1, [sp, #8]
	lsls r0, r0, #0xc
	adds r2, r1, r0
	lsls r1, r0, #6
	str r2, [sp, #8]
	cmp r2, r1
	blt _02249D80
	lsls r0, r0, #6
	str r0, [sp, #8]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
_02249D80:
	adds r0, r4, #0
	add r1, sp, #4
	bl FUN_021E18A4
	b _02249DB2
_02249D8A:
	adds r4, #0xa0
	movs r1, #1
	ldr r2, [r4]
	movs r0, #0
	lsls r1, r1, #0x12
	bl FUN_021EF388
	ldr r0, _02249DB8 @ =0x0000065A
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _02249DB2
_02249DA8:
	bl FUN_020181C4
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02249DB2:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02249DB8: .4byte 0x0000065A
	thumb_func_end ov8_02249CD8

	thumb_func_start ov8_02249DBC
ov8_02249DBC: @ 0x02249DBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r4, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #1
	bl FUN_02027F6C
	add r2, sp, #0x20
	ldr r6, _02249F10 @ =0x0224C728
	adds r5, r0, #0
	ldm r6!, {r0, r1}
	adds r3, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r6]
	str r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r0, [r4, #0x50]
	movs r2, #0xf2
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r4, #0x30]
	bl FUN_021E19CC
	movs r0, #0x26
	str r0, [sp]
	movs r0, #0
	adds r1, r4, #0
	str r0, [sp, #4]
	adds r1, #0xa0
	ldr r1, [r1]
	movs r2, #2
	str r1, [sp, #8]
	movs r1, #1
	movs r3, #0x19
	bl FUN_021EF2CC
	ldrb r0, [r5]
	cmp r0, #0
	beq _02249E20
	cmp r0, #1
	beq _02249E2A
	cmp r0, #2
	beq _02249E36
	b _02249E42
_02249E20:
	movs r5, #0
	movs r6, #1
	adds r7, r6, #0
	str r5, [sp, #0xc]
	b _02249E4E
_02249E2A:
	movs r5, #2
	movs r6, #1
	lsls r5, r5, #0x10
	movs r7, #0
	str r6, [sp, #0xc]
	b _02249E4E
_02249E36:
	movs r5, #1
	movs r7, #1
	lsls r5, r5, #0x12
	movs r6, #0
	str r7, [sp, #0xc]
	b _02249E4E
_02249E42:
	bl FUN_02022974
	movs r5, #0
	movs r6, #1
	adds r7, r6, #0
	str r5, [sp, #0xc]
_02249E4E:
	adds r0, r4, #0
	adds r0, #0xa4
	ldr r0, [r0]
	movs r1, #0xf2
	bl FUN_021E18CC
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x10]
	add r0, sp, #0x14
	bl FUN_021E1894
	ldr r0, [sp, #0x10]
	add r1, sp, #0x14
	str r5, [sp, #0x18]
	bl FUN_021E18A4
	adds r2, r4, #0
	adds r2, #0xa0
	ldr r2, [r2]
	movs r0, #0
	adds r1, r5, #0
	bl FUN_021EF388
	ldr r2, [r4, #0x50]
	movs r0, #0xef
	movs r1, #0
	bl FUN_021D3DE4
	adds r5, r0, #0
	movs r1, #1
	bl FUN_021D3F0C
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_021D3F04
	adds r0, r5, #0
	movs r1, #1
	bl FUN_021D3F08
	adds r0, r5, #0
	movs r1, #1
	bl FUN_021D3E40
	adds r0, r5, #0
	bl FUN_021D3E9C
	ldr r2, [r4, #0x50]
	movs r0, #0xf0
	movs r1, #0
	bl FUN_021D3DE4
	adds r5, r0, #0
	movs r1, #2
	bl FUN_021D3F0C
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_021D3F04
	adds r0, r5, #0
	movs r1, #1
	bl FUN_021D3F08
	adds r0, r5, #0
	movs r1, #1
	bl FUN_021D3E40
	adds r0, r5, #0
	bl FUN_021D3E9C
	ldr r2, [r4, #0x50]
	movs r0, #0xf1
	movs r1, #0
	bl FUN_021D3DE4
	movs r1, #3
	adds r4, r0, #0
	bl FUN_021D3F0C
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl FUN_021D3F04
	adds r0, r4, #0
	movs r1, #1
	bl FUN_021D3F08
	adds r0, r4, #0
	movs r1, #1
	bl FUN_021D3E40
	adds r0, r4, #0
	bl FUN_021D3E9C
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02249F10: .4byte 0x0224C728
	thumb_func_end ov8_02249DBC

	thumb_func_start ov8_02249F14
ov8_02249F14: @ 0x02249F14
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	cmp r0, #2
	bne _02249F24
	movs r6, #1
	movs r4, #2
	movs r5, #3
	b _02249F40
_02249F24:
	cmp r0, #1
	bne _02249F30
	movs r6, #2
	movs r4, #1
	movs r5, #3
	b _02249F40
_02249F30:
	cmp r0, #0
	bne _02249F3C
	movs r6, #3
	movs r4, #1
	movs r5, #2
	b _02249F40
_02249F3C:
	bl FUN_02022974
_02249F40:
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_021D3DA0
	adds r6, r0, #0
	movs r1, #0
	bl FUN_021D3F04
	adds r0, r6, #0
	bl FUN_021D3E7C
	adds r0, r6, #0
	movs r1, #0
	bl FUN_021D3E40
	adds r0, r6, #0
	bl FUN_021D3E44
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_021D3DA0
	adds r4, r0, #0
	movs r1, #1
	bl FUN_021D3F04
	adds r0, r4, #0
	bl FUN_021D3E7C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_021D3E40
	adds r0, r4, #0
	bl FUN_021D3E44
	adds r0, r5, #0
	adds r1, r7, #0
	bl FUN_021D3DA0
	adds r4, r0, #0
	movs r1, #1
	bl FUN_021D3F04
	adds r0, r4, #0
	bl FUN_021D3E7C
	adds r0, r4, #0
	movs r1, #0
	bl FUN_021D3E40
	adds r0, r4, #0
	bl FUN_021D3E44
	ldr r0, _02249FB4 @ =0x0000065A
	bl FUN_02005748
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02249FB4: .4byte 0x0000065A
	thumb_func_end ov8_02249F14

	thumb_func_start ov8_02249FB8
ov8_02249FB8: @ 0x02249FB8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0xb
	movs r1, #4
	bl FUN_02018184
	adds r6, r0, #0
	movs r0, #0
	str r0, [r6]
	adds r0, r5, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #2
	bl FUN_02027F6C
	adds r4, r0, #0
	ldr r0, [r5, #0x3c]
	add r1, sp, #0
	bl FUN_0205EAEC
	ldr r0, [sp, #4]
	cmp r0, #0
	ldr r0, [r5, #0x10]
	bne _02249FFE
	ldr r1, _0224A010 @ =ov8_0224A018
	adds r2, r6, #0
	bl FUN_02050944
	movs r0, #1
	add sp, #0xc
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02249FFE:
	ldr r1, _0224A014 @ =ov8_0224A0E8
	adds r2, r6, #0
	bl FUN_02050944
	movs r0, #0
	strb r0, [r4]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A010: .4byte ov8_0224A018
_0224A014: .4byte ov8_0224A0E8
	thumb_func_end ov8_02249FB8

	thumb_func_start ov8_0224A018
ov8_0224A018: @ 0x0224A018
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl FUN_02050A60
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02050A64
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #3
	bhi _0224A0D6
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224A03E: @ jump table
	.2byte _0224A046 - _0224A03E - 2 @ case 0
	.2byte _0224A05C - _0224A03E - 2 @ case 1
	.2byte _0224A0A6 - _0224A03E - 2 @ case 2
	.2byte _0224A0CC - _0224A03E - 2 @ case 3
_0224A046:
	ldr r0, [r5, #0x3c]
	movs r1, #0
	bl FUN_0205ED2C
	ldr r0, _0224A0DC @ =0x00000611
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A0D6
_0224A05C:
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, _0224A0E0 @ =0x00000102
	bl FUN_021E18CC
	adds r6, r0, #0
	add r0, sp, #0
	adds r1, r6, #0
	bl FUN_021E1894
	movs r0, #1
	ldr r1, [sp, #4]
	lsls r0, r0, #0xc
	adds r1, r1, r0
	movs r0, #0xa
	lsls r0, r0, #0x10
	str r1, [sp, #4]
	cmp r1, r0
	blt _0224A094
	str r0, [sp, #4]
	ldr r0, _0224A0DC @ =0x00000611
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0224A094:
	ldr r0, [r5, #0x3c]
	ldr r1, [sp, #4]
	bl FUN_0205ED0C
	adds r0, r6, #0
	add r1, sp, #0
	bl FUN_021E18A4
	b _0224A0D6
_0224A0A6:
	adds r2, r5, #0
	adds r2, #0xa0
	movs r1, #0xa
	ldr r2, [r2]
	movs r0, #0
	lsls r1, r1, #0x10
	bl FUN_021EF388
	ldr r0, [r5, #0x3c]
	movs r1, #1
	bl FUN_0205ED48
	ldr r0, _0224A0E4 @ =0x0000061A
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A0D6
_0224A0CC:
	bl FUN_020181C4
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0224A0D6:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0224A0DC: .4byte 0x00000611
_0224A0E0: .4byte 0x00000102
_0224A0E4: .4byte 0x0000061A
	thumb_func_end ov8_0224A018

	thumb_func_start ov8_0224A0E8
ov8_0224A0E8: @ 0x0224A0E8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl FUN_02050A60
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_02050A64
	adds r4, r0, #0
	ldr r1, [r4]
	cmp r1, #3
	bhi _0224A1A0
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224A10E: @ jump table
	.2byte _0224A116 - _0224A10E - 2 @ case 0
	.2byte _0224A12C - _0224A10E - 2 @ case 1
	.2byte _0224A172 - _0224A10E - 2 @ case 2
	.2byte _0224A196 - _0224A10E - 2 @ case 3
_0224A116:
	ldr r0, [r5, #0x3c]
	movs r1, #0
	bl FUN_0205ED2C
	ldr r0, _0224A1A8 @ =0x00000611
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A1A0
_0224A12C:
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, _0224A1AC @ =0x00000102
	bl FUN_021E18CC
	adds r6, r0, #0
	add r0, sp, #0
	adds r1, r6, #0
	bl FUN_021E1894
	movs r0, #1
	ldr r1, [sp, #4]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #4]
	cmp r0, #0
	bgt _0224A160
	movs r1, #0
	ldr r0, _0224A1A8 @ =0x00000611
	str r1, [sp, #4]
	bl FUN_020057A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0224A160:
	ldr r0, [r5, #0x3c]
	ldr r1, [sp, #4]
	bl FUN_0205ED0C
	adds r0, r6, #0
	add r1, sp, #0
	bl FUN_021E18A4
	b _0224A1A0
_0224A172:
	adds r2, r5, #0
	adds r2, #0xa0
	movs r0, #0
	ldr r2, [r2]
	adds r1, r0, #0
	bl FUN_021EF388
	ldr r0, [r5, #0x3c]
	movs r1, #1
	bl FUN_0205ED48
	ldr r0, _0224A1B0 @ =0x0000061A
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A1A0
_0224A196:
	bl FUN_020181C4
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0224A1A0:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0224A1A8: .4byte 0x00000611
_0224A1AC: .4byte 0x00000102
_0224A1B0: .4byte 0x0000061A
	thumb_func_end ov8_0224A0E8

	thumb_func_start ov8_0224A1B4
ov8_0224A1B4: @ 0x0224A1B4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r4, #0
_0224A1BE:
	adds r1, r5, r4
	ldrb r0, [r1, #0x10]
	cmp r6, r0
	bne _0224A1DA
	ldr r0, [r5]
	adds r1, #0x28
	adds r0, #0xa4
	ldrb r1, [r1]
	ldr r0, [r0]
	bl FUN_021E18C4
	adds r1, r7, #0
	bl FUN_021E18B4
_0224A1DA:
	adds r4, r4, #1
	cmp r4, #0x18
	blt _0224A1BE
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov8_0224A1B4

	thumb_func_start ov8_0224A1E4
ov8_0224A1E4: @ 0x0224A1E4
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4]
	add r1, sp, #0
	ldr r0, [r0, #0x3c]
	bl FUN_0205EAEC
	ldr r1, [sp, #4]
	asrs r0, r1, #0xf
	lsrs r0, r0, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	ldr r1, [sp]
	lsrs r2, r0, #0x18
	asrs r0, r1, #0xf
	lsrs r0, r0, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	ldr r1, [sp, #8]
	lsrs r3, r0, #0x18
	asrs r0, r1, #0xf
	lsrs r0, r0, #0x10
	adds r0, r1, r0
	asrs r0, r0, #0x10
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r0, #0
_0224A220:
	lsls r1, r0, #1
	adds r1, r0, r1
	adds r6, r4, r1
	adds r6, #0x41
	ldrb r6, [r6]
	cmp r2, r6
	bne _0224A242
	adds r6, r4, r1
	adds r6, #0x40
	ldrb r6, [r6]
	cmp r3, r6
	bne _0224A242
	adds r1, r4, r1
	adds r1, #0x42
	ldrb r1, [r1]
	cmp r5, r1
	beq _0224A24E
_0224A242:
	adds r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x18
	blo _0224A220
	movs r0, #0x18
_0224A24E:
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov8_0224A1E4

	thumb_func_start ov8_0224A254
ov8_0224A254: @ 0x0224A254
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #3
	bl FUN_02027F6C
	str r0, [sp, #4]
	movs r0, #0xb
	movs r1, #4
	bl FUN_02018184
	movs r1, #0
	str r1, [r0]
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xe8
	strb r4, [r0]
	lsls r0, r4, #2
	ldr r1, [sp, #4]
	adds r0, r5, r0
	adds r0, #0x88
	ldr r7, [r0]
	ldr r1, [r1]
	adds r0, r4, #0
	bl ov8_02249960
	adds r6, r0, #0
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov8_0224996C
	ldr r0, _0224A408 @ =0x00000127
	cmp r7, r0
	bne _0224A308
	cmp r6, #0
	beq _0224A2C2
	adds r0, r5, #0
	movs r1, #5
	adds r0, #0xf0
	str r1, [r0]
	ldr r2, _0224A40C @ =0x0224CB6C
	lsls r1, r4, #4
	ldrb r0, [r2, r1]
	adds r3, r2, r1
	lsls r6, r0, #0x10
	movs r0, #2
	lsls r0, r0, #0xe
	adds r6, r6, r0
	b _0224A2D8
_0224A2C2:
	adds r0, r5, #0
	ldr r2, _0224A410 @ =0x0224CB6F
	lsls r1, r4, #4
	movs r6, #4
	adds r0, #0xf0
	str r6, [r0]
	ldrb r0, [r2, r1]
	lsls r6, r6, #0xd
	adds r3, r2, r1
	lsls r0, r0, #0x10
	adds r6, r0, r6
_0224A2D8:
	adds r0, r5, #0
	adds r0, #0xec
	str r6, [r0]
	lsls r0, r4, #1
	adds r0, r4, r0
	ldrb r2, [r2, r1]
	adds r1, r5, r0
	adds r1, #0x40
	strb r2, [r1]
	adds r1, r5, r0
	adds r0, r5, r0
	ldrb r2, [r3, #1]
	adds r1, #0x41
	adds r0, #0x42
	strb r2, [r1]
	ldrb r1, [r3, #2]
	ldr r2, [sp]
	strb r1, [r0]
	ldr r0, [r5]
	ldr r1, _0224A414 @ =ov8_0224A620
	bl FUN_02050904
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224A308:
	subs r0, r0, #1
	cmp r7, r0
	bne _0224A37E
	cmp r6, #0
	beq _0224A334
	adds r1, r5, #0
	movs r0, #2
	adds r1, #0xf0
	str r0, [r1]
	ldr r1, _0224A418 @ =0x0224CB6E
	lsls r2, r4, #4
	ldrb r1, [r1, r2]
	lsls r0, r0, #0xe
	ldr r3, _0224A40C @ =0x0224CB6C
	lsls r1, r1, #0x10
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xec
	str r1, [r0]
	lsls r0, r4, #1
	adds r1, r4, r0
	b _0224A356
_0224A334:
	adds r0, r5, #0
	movs r1, #3
	adds r0, #0xf0
	str r1, [r0]
	ldr r0, _0224A41C @ =0x0224CB71
	lsls r2, r4, #4
	ldrb r0, [r0, r2]
	ldr r3, _0224A410 @ =0x0224CB6F
	lsls r1, r0, #0x10
	movs r0, #2
	lsls r0, r0, #0xe
	adds r1, r1, r0
	adds r0, r5, #0
	adds r0, #0xec
	str r1, [r0]
	lsls r0, r4, #1
	adds r1, r4, r0
_0224A356:
	adds r0, r3, r2
	ldrb r3, [r3, r2]
	adds r2, r5, r1
	adds r2, #0x40
	strb r3, [r2]
	adds r2, r5, r1
	ldrb r3, [r0, #1]
	adds r2, #0x41
	strb r3, [r2]
	ldrb r2, [r0, #2]
	adds r0, r5, r1
	adds r0, #0x42
	strb r2, [r0]
	ldr r0, [r5]
	ldr r1, _0224A420 @ =ov8_0224A770
	ldr r2, [sp]
	bl FUN_02050904
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0224A37E:
	cmp r6, #0
	beq _0224A3C2
	adds r0, r5, #0
	movs r1, #1
	adds r0, #0xf0
	str r1, [r0]
	ldr r0, _0224A424 @ =0x0224CB6D
	lsls r2, r4, #4
	ldrb r0, [r0, r2]
	ldr r3, _0224A40C @ =0x0224CB6C
	lsls r1, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xec
	str r1, [r0]
	lsls r0, r4, #1
	adds r1, r4, r0
	ldrb r6, [r3, r2]
	adds r0, r3, r2
	adds r3, r5, r1
	adds r3, #0x40
	strb r6, [r3]
	adds r3, r5, r1
	ldrb r6, [r0, #1]
	adds r3, #0x41
	strb r6, [r3]
	ldrb r3, [r0, #2]
	adds r0, r5, r1
	adds r0, #0x42
	strb r3, [r0]
	ldr r0, _0224A428 @ =0x0224CB72
	ldrb r1, [r0, r2]
	adds r0, r5, r4
	strb r1, [r0, #0x10]
	b _0224A3F8
_0224A3C2:
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xf0
	str r1, [r0]
	ldr r0, _0224A42C @ =0x0224CB70
	lsls r2, r4, #4
	ldrb r0, [r0, r2]
	ldr r3, _0224A410 @ =0x0224CB6F
	lsls r1, r0, #0x10
	adds r0, r5, #0
	adds r0, #0xec
	str r1, [r0]
	lsls r0, r4, #1
	adds r1, r4, r0
	adds r0, r3, r2
	ldrb r3, [r3, r2]
	adds r2, r5, r1
	adds r2, #0x40
	strb r3, [r2]
	adds r2, r5, r1
	ldrb r3, [r0, #1]
	adds r2, #0x41
	strb r3, [r2]
	ldrb r2, [r0, #2]
	adds r0, r5, r1
	adds r0, #0x42
	strb r2, [r0]
_0224A3F8:
	ldr r0, [r5]
	ldr r1, _0224A430 @ =ov8_0224A4FC
	ldr r2, [sp]
	bl FUN_02050904
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224A408: .4byte 0x00000127
_0224A40C: .4byte 0x0224CB6C
_0224A410: .4byte 0x0224CB6F
_0224A414: .4byte ov8_0224A620
_0224A418: .4byte 0x0224CB6E
_0224A41C: .4byte 0x0224CB71
_0224A420: .4byte ov8_0224A770
_0224A424: .4byte 0x0224CB6D
_0224A428: .4byte 0x0224CB72
_0224A42C: .4byte 0x0224CB70
_0224A430: .4byte ov8_0224A4FC
	thumb_func_end ov8_0224A254

	thumb_func_start ov8_0224A434
ov8_0224A434: @ 0x0224A434
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	ldr r1, [r5, #4]
	adds r0, #0xa4
	lsls r1, r1, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x18
	bl FUN_021E18C4
	str r0, [sp]
	ldr r0, [r5]
	ldr r1, [r5, #8]
	adds r0, #0xa4
	lsls r1, r1, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x18
	bl FUN_021E18C4
	adds r7, r0, #0
	ldr r0, [r5]
	ldr r1, [r5, #0xc]
	adds r0, #0xa4
	lsls r1, r1, #0x18
	ldr r0, [r0]
	lsrs r1, r1, #0x18
	bl FUN_021E18C4
	adds r6, r0, #0
	movs r0, #1
	lsls r0, r0, #0x10
	cmp r4, r0
	blt _0224A48C
	ldr r0, [sp]
	movs r1, #0
	bl FUN_021E18B4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #1
	bl ov8_0224A1B4
	b _0224A49E
_0224A48C:
	ldr r0, [sp]
	movs r1, #1
	bl FUN_021E18B4
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov8_0224A1B4
_0224A49E:
	movs r0, #0xb
	lsls r0, r0, #0x10
	cmp r4, r0
	blt _0224A4BA
	adds r0, r7, #0
	movs r1, #0
	bl FUN_021E18B4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #2
	bl ov8_0224A1B4
	b _0224A4CC
_0224A4BA:
	adds r0, r7, #0
	movs r1, #1
	bl FUN_021E18B4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl ov8_0224A1B4
_0224A4CC:
	movs r0, #0x15
	lsls r0, r0, #0x10
	cmp r4, r0
	blt _0224A4E8
	adds r0, r6, #0
	movs r1, #0
	bl FUN_021E18B4
	adds r0, r5, #0
	movs r1, #0
	movs r2, #3
	bl ov8_0224A1B4
	pop {r3, r4, r5, r6, r7, pc}
_0224A4E8:
	adds r0, r6, #0
	movs r1, #1
	bl FUN_021E18B4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	bl ov8_0224A1B4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224A434

	thumb_func_start ov8_0224A4FC
ov8_0224A4FC: @ 0x0224A4FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl FUN_02050A60
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_02050A64
	ldr r1, [r6, #4]
	adds r4, r0, #0
	ldr r5, [r1, #0x24]
	ldr r1, [r4]
	cmp r1, #3
	bhi _0224A60C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224A526: @ jump table
	.2byte _0224A52E - _0224A526 - 2 @ case 0
	.2byte _0224A544 - _0224A526 - 2 @ case 1
	.2byte _0224A5EC - _0224A526 - 2 @ case 2
	.2byte _0224A602 - _0224A526 - 2 @ case 3
_0224A52E:
	ldr r0, [r6, #0x3c]
	movs r1, #0
	bl FUN_0205ED2C
	ldr r0, _0224A614 @ =0x00000611
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A60C
_0224A544:
	adds r1, r5, #0
	adds r1, #0xe8
	ldrb r1, [r1]
	adds r0, r6, #0
	adds r0, #0xa4
	adds r1, r5, r1
	adds r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r0]
	bl FUN_021E18C4
	adds r7, r0, #0
	add r0, sp, #0
	adds r1, r7, #0
	bl FUN_021E1894
	adds r0, r5, #0
	adds r0, #0xf0
	ldr r0, [r0]
	cmp r0, #0
	bne _0224A5A4
	movs r0, #2
	ldr r1, [sp, #4]
	lsls r0, r0, #0xe
	adds r1, r1, r0
	adds r0, r5, #0
	str r1, [sp, #4]
	adds r0, #0xec
	ldr r0, [r0]
	cmp r1, r0
	blt _0224A5D2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xe8
	ldrb r0, [r0]
	ldr r1, _0224A618 @ =0x0224CB73
	lsls r2, r0, #4
	ldrb r1, [r1, r2]
	adds r0, r5, r0
	strb r1, [r0, #0x10]
	ldr r0, _0224A614 @ =0x00000611
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A5D2
_0224A5A4:
	cmp r0, #1
	bne _0224A5CE
	movs r0, #2
	ldr r1, [sp, #4]
	lsls r0, r0, #0xe
	subs r1, r1, r0
	adds r0, r5, #0
	str r1, [sp, #4]
	adds r0, #0xec
	ldr r0, [r0]
	cmp r1, r0
	bgt _0224A5D2
	str r0, [sp, #4]
	ldr r0, _0224A614 @ =0x00000611
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A5D2
_0224A5CE:
	bl FUN_02022974
_0224A5D2:
	ldr r0, [r6, #0x3c]
	ldr r1, [sp, #4]
	bl FUN_0205ED0C
	adds r0, r7, #0
	add r1, sp, #0
	bl FUN_021E18A4
	ldr r1, [sp, #4]
	adds r0, r5, #0
	bl ov8_0224A434
	b _0224A60C
_0224A5EC:
	ldr r0, [r6, #0x3c]
	movs r1, #1
	bl FUN_0205ED48
	ldr r0, _0224A61C @ =0x0000061A
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A60C
_0224A602:
	bl FUN_020181C4
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A60C:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0224A614: .4byte 0x00000611
_0224A618: .4byte 0x0224CB73
_0224A61C: .4byte 0x0000061A
	thumb_func_end ov8_0224A4FC

	thumb_func_start ov8_0224A620
ov8_0224A620: @ 0x0224A620
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	bl FUN_02050A60
	adds r7, r0, #0
	adds r0, r4, #0
	bl FUN_02050A64
	adds r4, r0, #0
	ldr r0, [r7, #4]
	ldr r5, [r0, #0x24]
	ldr r0, [r7, #0x3c]
	bl FUN_0205EB3C
	ldr r1, [r4]
	adds r6, r0, #0
	cmp r1, #4
	bls _0224A648
	b _0224A760
_0224A648:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224A654: @ jump table
	.2byte _0224A65E - _0224A654 - 2 @ case 0
	.2byte _0224A67C - _0224A654 - 2 @ case 1
	.2byte _0224A720 - _0224A654 - 2 @ case 2
	.2byte _0224A736 - _0224A654 - 2 @ case 3
	.2byte _0224A754 - _0224A654 - 2 @ case 4
_0224A65E:
	bl FUN_020655F4
	cmp r0, #1
	bne _0224A760
	adds r0, r6, #0
	movs r1, #0x49
	bl FUN_02065638
	ldr r0, _0224A768 @ =0x00000611
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A760
_0224A67C:
	adds r1, r5, #0
	adds r1, #0xe8
	ldrb r1, [r1]
	adds r0, r7, #0
	adds r0, #0xa4
	adds r1, r5, r1
	adds r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r0]
	bl FUN_021E18C4
	str r0, [sp]
	ldr r1, [sp]
	add r0, sp, #0x10
	bl FUN_021E1894
	ldr r0, [r7, #0x3c]
	add r1, sp, #4
	bl FUN_0205EAEC
	ldr r0, [sp, #4]
	adds r1, r5, #0
	str r0, [sp, #0x10]
	adds r1, #0xf0
	ldr r1, [r1]
	cmp r1, #4
	bne _0224A6E0
	adds r5, #0xec
	ldr r1, [r5]
	cmp r0, r1
	blt _0224A6CC
	ldr r0, _0224A768 @ =0x00000611
	str r1, [sp, #0x10]
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A716
_0224A6CC:
	adds r0, r6, #0
	bl FUN_020655F4
	cmp r0, #1
	bne _0224A716
	adds r0, r6, #0
	movs r1, #0x17
	bl FUN_02065638
	b _0224A716
_0224A6E0:
	cmp r1, #5
	bne _0224A712
	adds r5, #0xec
	ldr r1, [r5]
	cmp r0, r1
	bgt _0224A6FE
	ldr r0, _0224A768 @ =0x00000611
	str r1, [sp, #0x10]
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A716
_0224A6FE:
	adds r0, r6, #0
	bl FUN_020655F4
	cmp r0, #1
	bne _0224A716
	adds r0, r6, #0
	movs r1, #0x16
	bl FUN_02065638
	b _0224A716
_0224A712:
	bl FUN_02022974
_0224A716:
	ldr r0, [sp]
	add r1, sp, #0x10
	bl FUN_021E18A4
	b _0224A760
_0224A720:
	bl FUN_020655F4
	cmp r0, #1
	bne _0224A736
	adds r0, r6, #0
	movs r1, #0x4a
	bl FUN_02065638
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0224A736:
	adds r0, r6, #0
	bl FUN_02065684
	cmp r0, #1
	bne _0224A760
	adds r0, r6, #0
	bl FUN_020656AC
	ldr r0, _0224A76C @ =0x0000061A
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A760
_0224A754:
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A760:
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224A768: .4byte 0x00000611
_0224A76C: .4byte 0x0000061A
	thumb_func_end ov8_0224A620

	thumb_func_start ov8_0224A770
ov8_0224A770: @ 0x0224A770
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	bl FUN_02050A60
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_02050A64
	adds r4, r0, #0
	ldr r0, [r6, #4]
	ldr r5, [r0, #0x24]
	ldr r0, [r6, #0x3c]
	bl FUN_0205EB3C
	ldr r1, [r4]
	adds r7, r0, #0
	cmp r1, #4
	bhi _0224A7B4
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224A7A2: @ jump table
	.2byte _0224A7AC - _0224A7A2 - 2 @ case 0
	.2byte _0224A7CC - _0224A7A2 - 2 @ case 1
	.2byte _0224A870 - _0224A7A2 - 2 @ case 2
	.2byte _0224A888 - _0224A7A2 - 2 @ case 3
	.2byte _0224A8AC - _0224A7A2 - 2 @ case 4
_0224A7AC:
	bl FUN_020655F4
	cmp r0, #1
	beq _0224A7B6
_0224A7B4:
	b _0224A8B8
_0224A7B6:
	adds r0, r7, #0
	movs r1, #0x49
	bl FUN_02065638
	ldr r0, _0224A8C0 @ =0x00000611
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A8B8
_0224A7CC:
	adds r1, r5, #0
	adds r1, #0xe8
	ldrb r1, [r1]
	adds r0, r6, #0
	adds r0, #0xa4
	adds r1, r5, r1
	adds r1, #0x28
	ldrb r1, [r1]
	ldr r0, [r0]
	bl FUN_021E18C4
	str r0, [sp]
	ldr r1, [sp]
	add r0, sp, #0x10
	bl FUN_021E1894
	ldr r0, [r6, #0x3c]
	add r1, sp, #4
	bl FUN_0205EAEC
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	str r0, [sp, #0x18]
	adds r1, #0xf0
	ldr r1, [r1]
	cmp r1, #3
	bne _0224A830
	adds r5, #0xec
	ldr r1, [r5]
	cmp r0, r1
	blt _0224A81C
	ldr r0, _0224A8C0 @ =0x00000611
	str r1, [sp, #0x18]
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A866
_0224A81C:
	adds r0, r7, #0
	bl FUN_020655F4
	cmp r0, #1
	bne _0224A866
	adds r0, r7, #0
	movs r1, #0x15
	bl FUN_02065638
	b _0224A866
_0224A830:
	cmp r1, #2
	bne _0224A862
	adds r5, #0xec
	ldr r1, [r5]
	cmp r0, r1
	bgt _0224A84E
	ldr r0, _0224A8C0 @ =0x00000611
	str r1, [sp, #0x18]
	movs r1, #0
	bl FUN_020057A4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A866
_0224A84E:
	adds r0, r7, #0
	bl FUN_020655F4
	cmp r0, #1
	bne _0224A866
	adds r0, r7, #0
	movs r1, #0x14
	bl FUN_02065638
	b _0224A866
_0224A862:
	bl FUN_02022974
_0224A866:
	ldr r0, [sp]
	add r1, sp, #0x10
	bl FUN_021E18A4
	b _0224A8B8
_0224A870:
	bl FUN_020655F4
	cmp r0, #1
	bne _0224A8B8
	adds r0, r7, #0
	movs r1, #0x4a
	bl FUN_02065638
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A8B8
_0224A888:
	ldr r0, [r6, #0x3c]
	bl FUN_0205EB3C
	adds r5, r0, #0
	bl FUN_02065684
	cmp r0, #1
	bne _0224A8B8
	adds r0, r5, #0
	bl FUN_020656AC
	ldr r0, _0224A8C4 @ =0x0000061A
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224A8B8
_0224A8AC:
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x1c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224A8B8:
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0224A8C0: .4byte 0x00000611
_0224A8C4: .4byte 0x0000061A
	thumb_func_end ov8_0224A770

	thumb_func_start ov8_0224A8C8
ov8_0224A8C8: @ 0x0224A8C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	adds r6, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #3
	bl FUN_02027F6C
	str r0, [sp, #0x10]
	movs r0, #4
	movs r1, #0xf4
	bl FUN_02018144
	ldr r1, [r6, #4]
	add r2, sp, #0x50
	str r0, [r1, #0x24]
	ldr r0, [r6, #4]
	ldr r4, _0224AA90 @ =0x0224C710
	ldr r0, [r0, #0x24]
	adds r3, r2, #0
	str r0, [sp, #0x14]
	str r6, [r0]
	ldm r4!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	movs r0, #0xa
	lsls r0, r0, #0x10
	str r0, [sp, #0x54]
	movs r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	movs r2, #0x4b
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r6, #0x30]
	lsls r2, r2, #2
	bl FUN_021E19CC
	ldr r1, [sp, #0x14]
	ldr r2, _0224AA94 @ =0x0000012D
	str r0, [r1, #4]
	movs r0, #5
	lsls r0, r0, #0x12
	str r0, [sp, #0x54]
	movs r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #0x50
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r6, #0x30]
	bl FUN_021E19CC
	ldr r1, [sp, #0x14]
	ldr r2, _0224AA98 @ =0x0000012E
	str r0, [r1, #8]
	movs r0, #0x1e
	lsls r0, r0, #0x10
	str r0, [sp, #0x54]
	movs r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #0x50
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r6, #0x30]
	bl FUN_021E19CC
	ldr r1, [sp, #0x14]
	ldr r4, _0224AA9C @ =0x0224CB68
	str r0, [r1, #0xc]
	adds r0, r1, #0
	movs r7, #0
	adds r5, r1, #0
	str r0, [sp, #0xc]
_0224A970:
	ldr r1, [sp, #0x10]
	lsls r0, r7, #0x18
	ldr r1, [r1]
	lsrs r0, r0, #0x18
	bl ov8_02249960
	cmp r0, #0
	beq _0224A9B4
	ldrb r0, [r4, #7]
	ldrb r1, [r4, #7]
	lsls r0, r0, #0x10
	str r0, [sp, #0x44]
	ldrb r0, [r4, #8]
	lsls r0, r0, #0x10
	str r0, [sp, #0x48]
	ldrb r0, [r4, #9]
	lsls r0, r0, #0x10
	str r0, [sp, #0x4c]
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r0, r5, #0
	ldrb r1, [r4, #8]
	adds r0, #0x41
	strb r1, [r0]
	adds r0, r5, #0
	ldrb r1, [r4, #9]
	adds r0, #0x42
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	ldrb r1, [r4, #0xb]
	adds r0, r0, r7
	str r0, [sp, #8]
	b _0224A9E6
_0224A9B4:
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #4]
	lsls r0, r0, #0x10
	str r0, [sp, #0x44]
	ldrb r0, [r4, #5]
	lsls r0, r0, #0x10
	str r0, [sp, #0x48]
	ldrb r0, [r4, #6]
	lsls r0, r0, #0x10
	str r0, [sp, #0x4c]
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
	adds r0, r5, #0
	ldrb r1, [r4, #5]
	adds r0, #0x41
	strb r1, [r0]
	adds r0, r5, #0
	ldrb r1, [r4, #6]
	adds r0, #0x42
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	ldrb r1, [r4, #0xa]
	adds r0, r0, r7
	str r0, [sp, #8]
_0224A9E6:
	strb r1, [r0, #0x10]
	movs r0, #2
	ldr r1, [sp, #0x44]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x44]
	movs r0, #2
	ldr r1, [sp, #0x4c]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x4c]
	movs r0, #0
	str r0, [sp]
	ldr r0, [r6, #0x50]
	add r3, sp, #0x44
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r6, #0x30]
	ldr r2, [r4]
	bl FUN_021E19CC
	ldr r1, [sp, #8]
	adds r7, r7, #1
	adds r1, #0x28
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	str r1, [sp, #8]
	ldr r1, [r4]
	adds r0, #0x88
	str r1, [r0]
	ldr r0, [sp, #0xc]
	adds r4, #0x10
	adds r0, r0, #4
	adds r5, r5, #3
	str r0, [sp, #0xc]
	cmp r7, #0x18
	blt _0224A970
	ldr r0, [r6, #0x3c]
	add r1, sp, #0x38
	bl FUN_0205EAEC
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x3c]
	bl ov8_0224A434
	movs r0, #0x19
	ldr r1, _0224AAA0 @ =0x006A4000
	ldr r2, [r6, #0x24]
	lsls r0, r0, #0xe
	bl FUN_020206BC
	movs r1, #6
	str r1, [sp]
	ldr r0, _0224AAA4 @ =0x000076A0
	subs r1, r1, #7
	str r0, [sp, #4]
	ldr r0, [r6, #0x48]
	movs r2, #1
	movs r3, #0
	bl FUN_021D57FC
	movs r1, #0
	movs r2, #0
	ldr r0, [r6, #0x48]
	mvns r1, r1
	adds r3, r2, #0
	bl FUN_021D5834
	movs r0, #0
	adds r1, r0, #0
	add r2, sp, #0x18
_0224AA78:
	adds r0, r0, #1
	strb r1, [r2]
	adds r1, r1, #2
	adds r2, r2, #1
	cmp r0, #0x20
	blt _0224AA78
	ldr r0, [r6, #0x48]
	add r1, sp, #0x18
	bl FUN_021D585C
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224AA90: .4byte 0x0224C710
_0224AA94: .4byte 0x0000012D
_0224AA98: .4byte 0x0000012E
_0224AA9C: .4byte 0x0224CB68
_0224AAA0: .4byte 0x006A4000
_0224AAA4: .4byte 0x000076A0
	thumb_func_end ov8_0224A8C8

	thumb_func_start ov8_0224AAA8
ov8_0224AAA8: @ 0x0224AAA8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	bl FUN_02027F80
	cmp r0, #3
	beq _0224AAC0
	movs r0, #0
	pop {r4, pc}
_0224AAC0:
	ldr r0, [r4, #4]
	ldr r4, [r0, #0x24]
	cmp r4, #0
	bne _0224AACC
	movs r0, #0
	pop {r4, pc}
_0224AACC:
	adds r0, r4, #0
	bl ov8_0224A1E4
	adds r1, r0, #0
	cmp r1, #0x18
	beq _0224AAE2
	adds r0, r4, #0
	bl ov8_0224A254
	movs r0, #1
	pop {r4, pc}
_0224AAE2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov8_0224AAA8

	thumb_func_start ov8_0224AAE8
ov8_0224AAE8: @ 0x0224AAE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	movs r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov8_0224AAE8

	thumb_func_start ov8_0224AAFC
ov8_0224AAFC: @ 0x0224AAFC
	push {r4, r5, r6, lr}
	asrs r0, r3, #0xf
	lsrs r0, r0, #0x10
	adds r0, r3, r0
	adds r4, r1, #0
	asrs r0, r0, #0x10
	movs r1, #0xa
	adds r6, r2, #0
	blx FUN_020E1F6C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0224AB1C
	bl FUN_02022974
_0224AB1C:
	ldr r1, _0224AB3C @ =0x0224D035
	lsls r0, r5, #0xa
	adds r5, r1, r0
	lsls r0, r6, #5
	adds r4, r4, r0
	movs r0, #1
	lsls r0, r0, #0xa
	cmp r4, r0
	blt _0224AB32
	bl FUN_02022974
_0224AB32:
	ldrb r1, [r5, r4]
	ldr r0, [sp, #0x10]
	str r1, [r0]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224AB3C: .4byte 0x0224D035
	thumb_func_end ov8_0224AAFC

	thumb_func_start ov8_0224AB40
ov8_0224AB40: @ 0x0224AB40
	push {r3, lr}
	cmp r0, #0
	beq _0224AB50
	cmp r0, #1
	beq _0224AB54
	cmp r0, #2
	beq _0224AB58
	b _0224AB5C
_0224AB50:
	movs r0, #3
	pop {r3, pc}
_0224AB54:
	movs r0, #6
	pop {r3, pc}
_0224AB58:
	movs r0, #0xd
	pop {r3, pc}
_0224AB5C:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov8_0224AB40

	thumb_func_start ov8_0224AB64
ov8_0224AB64: @ 0x0224AB64
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #7]
	adds r6, r1, #0
	movs r7, #0
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	beq _0224AB7A
	cmp r0, #1
	beq _0224AB7E
	b _0224AB82
_0224AB7A:
	adds r7, r2, #4
	b _0224AB86
_0224AB7E:
	adds r7, r2, #0
	b _0224AB86
_0224AB82:
	bl FUN_02022974
_0224AB86:
	ldrb r0, [r5, #7]
	movs r4, #0
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _0224AB96
	bl FUN_02022974
_0224AB96:
	ldrb r0, [r5, #7]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1e
	lsls r0, r0, #0xe
	adds r0, r4, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r6, #3
	bls _0224ABAC
	bl FUN_02022974
_0224ABAC:
	lsls r0, r6, #0x1e
	asrs r1, r0, #0x10
	ldrb r0, [r5, #7]
	lsls r0, r0, #0x1d
	lsrs r0, r0, #0x1f
	bne _0224ABC0
	adds r0, r4, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _0224ABD0
_0224ABC0:
	cmp r0, #1
	bne _0224ABCC
	subs r0, r4, r1
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	b _0224ABD0
_0224ABCC:
	bl FUN_02022974
_0224ABD0:
	str r4, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224AB64

	thumb_func_start ov8_0224ABD4
ov8_0224ABD4: @ 0x0224ABD4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r5, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #5
	bl FUN_02027F6C
	str r0, [sp, #0xc]
	movs r0, #4
	movs r1, #0x1c
	bl FUN_02018144
	ldr r1, [r5, #4]
	str r0, [r1, #0x24]
	ldr r0, [r5, #4]
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x10]
	strb r1, [r0, #0x11]
	ldr r0, [sp, #0xc]
	ldr r1, [r0]
	ldr r0, [sp, #0x10]
	strb r1, [r0, #0x13]
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ov8_0224AB40
	movs r6, #0
	str r0, [sp, #8]
	cmp r0, #0
	ble _0224ACA2
	adds r7, r6, #0
_0224AC22:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #4]
	lsls r1, r0, #2
	ldr r0, _0224ACA8 @ =0x0224C740
	ldr r0, [r0, r1]
	adds r4, r0, r7
	ldrb r0, [r4, #4]
	lsls r2, r0, #0x10
	str r2, [sp, #0x20]
	ldrb r0, [r4, #5]
	lsls r1, r0, #0x10
	str r1, [sp, #0x24]
	ldrb r0, [r4, #6]
	lsls r3, r0, #0x10
	movs r0, #2
	lsls r0, r0, #0xe
	adds r0, r2, r0
	str r0, [sp, #0x20]
	movs r0, #2
	lsls r0, r0, #0xe
	str r3, [sp, #0x28]
	adds r0, r3, r0
	str r0, [sp, #0x28]
	ldrb r0, [r4, #7]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224AC62
	movs r0, #2
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x24]
_0224AC62:
	movs r0, #0
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr r1, [r1]
	adds r0, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	add r2, sp, #0x14
	bl ov8_0224AB64
	add r0, sp, #0x14
	str r0, [sp]
	ldr r0, [r5, #0x50]
	add r3, sp, #0x20
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r5, #0x30]
	ldr r2, [r4]
	bl FUN_021E19CC
	ldr r1, [sp, #0x10]
	adds r7, #8
	adds r1, r1, r6
	strb r0, [r1, #4]
	ldr r0, [sp, #8]
	adds r6, r6, #1
	cmp r6, r0
	blt _0224AC22
_0224ACA2:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0224ACA8: .4byte 0x0224C740
	thumb_func_end ov8_0224ABD4

	thumb_func_start ov8_0224ACAC
ov8_0224ACAC: @ 0x0224ACAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	movs r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov8_0224ACAC

	thumb_func_start ov8_0224ACC0
ov8_0224ACC0: @ 0x0224ACC0
	push {r4, r5, r6, r7}
	ldr r0, [r0, #4]
	adds r3, r1, #0
	adds r1, r2, #0
	ldr r2, [r0, #0x24]
	movs r4, #0x14
	ldrb r0, [r2, #0x11]
	ldrb r2, [r2, #0x13]
	adds r5, r0, #0
	muls r5, r4, r5
	ldr r4, _0224AD28 @ =0x0224E740
	lsls r2, r2, #2
	ldr r6, [r4, r5]
	ldr r4, _0224AD2C @ =0x0224E744
	adds r4, r4, r5
	ldr r2, [r2, r4]
	movs r5, #0
	mov ip, r2
	lsls r2, r0, #2
	ldr r0, _0224AD30 @ =0x0224C74C
	cmp r6, #0
	ldr r7, [r0, r2]
	ble _0224AD22
_0224ACEE:
	mov r0, ip
	ldrb r0, [r0, r5]
	lsls r0, r0, #2
	ldrb r2, [r7, r0]
	adds r4, r7, r0
	cmp r2, r3
	bgt _0224AD1C
	ldrb r0, [r4, #2]
	adds r0, r2, r0
	cmp r3, r0
	bge _0224AD1C
	ldrb r0, [r4, #1]
	cmp r0, r1
	bgt _0224AD1C
	ldrb r2, [r4, #3]
	adds r0, r0, r2
	cmp r1, r0
	bge _0224AD1C
	ldr r1, [sp, #0x10]
	movs r0, #1
	str r0, [r1]
	pop {r4, r5, r6, r7}
	bx lr
_0224AD1C:
	adds r5, r5, #1
	cmp r5, r6
	blt _0224ACEE
_0224AD22:
	movs r0, #0
	pop {r4, r5, r6, r7}
	bx lr
	.align 2, 0
_0224AD28: .4byte 0x0224E740
_0224AD2C: .4byte 0x0224E744
_0224AD30: .4byte 0x0224C74C
	thumb_func_end ov8_0224ACC0

	thumb_func_start ov8_0224AD34
ov8_0224AD34: @ 0x0224AD34
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #5
	bl FUN_02027F6C
	adds r6, r0, #0
	ldr r0, [r7, #4]
	movs r1, #4
	ldr r4, [r0, #0x24]
	movs r0, #0xb
	bl FUN_02018184
	movs r1, #0
	str r1, [r0]
	strh r5, [r4, #0x14]
	strh r1, [r4, #0x16]
	str r0, [sp]
	ldr r0, [r6, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl ov8_0224AB40
	strb r0, [r4, #0x12]
	ldr r0, [r6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r5, #0
	bne _0224AD90
	movs r1, #1
	lsls r1, r1, #0xe
	adds r0, r0, #1
	strh r1, [r4, #0x18]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0224ADCA
_0224AD90:
	cmp r5, #1
	bne _0224ADA6
	movs r1, #1
	subs r0, r0, #1
	lsls r1, r1, #0xe
	lsls r0, r0, #0x18
	strh r1, [r4, #0x18]
	asrs r0, r0, #0x18
	bpl _0224ADCA
	movs r0, #3
	b _0224ADCA
_0224ADA6:
	cmp r5, #2
	bne _0224ADC4
	movs r1, #2
	lsls r1, r1, #0xe
	adds r0, r0, #2
	strh r1, [r4, #0x18]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	b _0224ADCA
_0224ADC4:
	bl FUN_02022974
	pop {r3, r4, r5, r6, r7, pc}
_0224ADCA:
	str r0, [r6]
	strb r0, [r4, #0x13]
	ldr r0, _0224ADE0 @ =0x0000063F
	bl FUN_02005748
	ldr r0, [r7, #0x10]
	ldr r1, _0224ADE4 @ =ov8_0224ADE8
	ldr r2, [sp]
	bl FUN_02050944
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224ADE0: .4byte 0x0000063F
_0224ADE4: .4byte ov8_0224ADE8
	thumb_func_end ov8_0224AD34

	thumb_func_start ov8_0224ADE8
ov8_0224ADE8: @ 0x0224ADE8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	bl FUN_02050A60
	str r0, [sp, #8]
	adds r0, r4, #0
	bl FUN_02050A64
	ldr r1, [sp, #8]
	str r0, [sp, #4]
	ldr r1, [r1, #4]
	ldr r4, [r1, #0x24]
	adds r1, r0, #0
	ldr r1, [r1]
	cmp r1, #0
	beq _0224AE10
	cmp r1, #1
	beq _0224AEC8
	b _0224AED2
_0224AE10:
	ldrh r2, [r4, #0x18]
	movs r0, #1
	ldrh r1, [r4, #0x16]
	lsls r0, r0, #0xa
	str r0, [sp]
	adds r0, r1, r0
	cmp r0, r2
	ble _0224AE28
	subs r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
_0224AE28:
	ldrh r1, [r4, #0x16]
	ldr r0, [sp]
	adds r0, r1, r0
	strh r0, [r4, #0x16]
	ldrh r0, [r4, #0x14]
	cmp r0, #1
	bne _0224AE40
	ldr r0, [sp]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
_0224AE40:
	ldrb r0, [r4, #0x12]
	movs r5, #0
	cmp r0, #0
	bls _0224AEB4
	ldr r0, [sp]
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0xc]
_0224AE52:
	ldr r0, [sp, #8]
	adds r1, r4, r5
	adds r0, #0xa4
	ldrb r1, [r1, #4]
	ldr r0, [r0]
	bl FUN_021E18C4
	bl FUN_021E1890
	ldrb r1, [r4, #0x11]
	lsls r2, r1, #2
	ldr r1, _0224AED8 @ =0x0224C740
	ldr r2, [r1, r2]
	lsls r1, r5, #3
	adds r1, r2, r1
	ldrb r2, [r1, #7]
	lsls r2, r2, #0x1d
	lsrs r2, r2, #0x1f
	cmp r2, #1
	bne _0224AE7E
	ldr r7, [sp, #0xc]
	b _0224AE80
_0224AE7E:
	ldr r7, [sp]
_0224AE80:
	ldrb r1, [r1, #7]
	lsls r1, r1, #0x1c
	lsrs r1, r1, #0x1f
	beq _0224AE8E
	cmp r1, #1
	beq _0224AE92
	b _0224AE96
_0224AE8E:
	adds r6, r0, #4
	b _0224AE9A
_0224AE92:
	adds r6, r0, #0
	b _0224AE9A
_0224AE96:
	bl FUN_02022974
_0224AE9A:
	ldr r0, [r6]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r0, r0, r7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r6]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldrb r0, [r4, #0x12]
	cmp r5, r0
	blo _0224AE52
_0224AEB4:
	ldrh r1, [r4, #0x16]
	ldrh r0, [r4, #0x18]
	cmp r1, r0
	blo _0224AED2
	ldr r0, [sp, #4]
	ldr r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0]
	b _0224AED2
_0224AEC8:
	bl FUN_020181C4
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224AED2:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224AED8: .4byte 0x0224C740
	thumb_func_end ov8_0224ADE8

	thumb_func_start ov8_0224AEDC
ov8_0224AEDC: @ 0x0224AEDC
	push {r4, lr}
	ldr r0, [r0, #0xc]
	adds r4, r1, #0
	bl FUN_020507E4
	adds r1, r4, #0
	bl FUN_0206B46C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov8_0224AEDC

	thumb_func_start ov8_0224AEF0
ov8_0224AEF0: @ 0x0224AEF0
	push {r3, lr}
	ldr r0, [r0, #0xc]
	bl FUN_020507E4
	bl FUN_0206B47C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov8_0224AEF0

	thumb_func_start ov8_0224AF00
ov8_0224AF00: @ 0x0224AF00
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	adds r3, r0, r1
	movs r0, #0xf
	lsls r0, r0, #0xe
	str r3, [r4, #4]
	cmp r3, r0
	blt _0224AF2A
	movs r1, #1
	lsls r1, r1, #0xc
	adds r2, r0, #0
_0224AF18:
	ldr r3, [r4, #4]
	subs r3, r3, r0
	str r3, [r4, #4]
	ldr r3, [r4]
	adds r3, r3, r1
	str r3, [r4]
	ldr r3, [r4, #4]
	cmp r3, r2
	bge _0224AF18
_0224AF2A:
	cmp r3, #0
	bge _0224AF48
	movs r0, #0xf
	movs r1, #1
	lsls r0, r0, #0xe
	lsls r1, r1, #0xc
_0224AF36:
	ldr r2, [r4, #4]
	adds r2, r2, r0
	str r2, [r4, #4]
	ldr r2, [r4]
	adds r2, r2, r1
	str r2, [r4]
	ldr r2, [r4, #4]
	cmp r2, #0
	blt _0224AF36
_0224AF48:
	movs r1, #3
	ldr r0, [r4]
	lsls r1, r1, #0xe
	blx FUN_020E1F6C
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov8_0224AF00

	thumb_func_start ov8_0224AF58
ov8_0224AF58: @ 0x0224AF58
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x14]
	bl FUN_021E1890
	ldr r1, [r4]
	str r1, [r0]
	movs r1, #1
	ldr r2, [r4, #4]
	lsls r1, r1, #0x10
	subs r1, r1, r2
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x10
	subs r2, r2, r3
	movs r1, #0x10
	rors r2, r1
	adds r1, r3, r2
	str r1, [r0, #4]
	ldr r1, [r4, #8]
	str r1, [r0, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov8_0224AF58

	thumb_func_start ov8_0224AF84
ov8_0224AF84: @ 0x0224AF84
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #4]
	adds r5, r6, #0
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r4, r0, #0xc
	adds r0, r4, #0
	movs r1, #0xf
	adds r5, #0x24
	blx FUN_020E1F6C
	cmp r1, #0
	bne _0224AFB2
	adds r0, r4, #0
	movs r1, #5
	blx FUN_020E1F6C
	lsls r1, r0, #1
	ldr r0, _0224B018 @ =0x0224C7B8
	ldrh r0, [r0, r1]
	b _0224AFB6
_0224AFB2:
	ldr r0, _0224B01C @ =0x00000445
	muls r0, r4, r0
_0224AFB6:
	str r0, [r5, #4]
	movs r0, #1
	ldr r1, [r5, #4]
	lsls r0, r0, #0xe
	subs r0, r1, r0
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x10
	subs r1, r1, r2
	movs r0, #0x10
	rors r1, r0
	adds r0, r2, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	bl ov8_0224AF58
	ldr r2, [r6]
	adds r0, r6, #0
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r1, r1, #0xc
	lsls r2, r1, #1
	ldr r1, _0224B018 @ =0x0224C7B8
	adds r0, #0xc
	ldrh r1, [r1, r2]
	str r1, [r0, #4]
	ldr r1, [r6, #8]
	cmp r1, #1
	bne _0224AFFA
	movs r1, #0x5b
	ldr r2, [r0, #4]
	muls r1, r4, r1
	adds r1, r2, r1
	str r1, [r0, #4]
_0224AFFA:
	movs r1, #2
	ldr r2, [r0, #4]
	lsls r1, r1, #0xe
	adds r1, r2, r1
	lsrs r3, r1, #0x1f
	lsls r2, r1, #0x10
	subs r2, r2, r3
	movs r1, #0x10
	rors r2, r1
	adds r1, r3, r2
	str r1, [r0, #4]
	bl ov8_0224AF58
	pop {r4, r5, r6, pc}
	nop
_0224B018: .4byte 0x0224C7B8
_0224B01C: .4byte 0x00000445
	thumb_func_end ov8_0224AF84

	thumb_func_start ov8_0224B020
ov8_0224B020: @ 0x0224B020
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #8
	bl FUN_02027F6C
	str r0, [sp, #0x10]
	movs r0, #4
	movs r1, #0x40
	bl FUN_02018144
	str r0, [sp, #0xc]
	movs r1, #0
	movs r2, #0x40
	blx FUN_020D5124
	ldr r0, [sp, #0xc]
	ldr r1, [r6, #4]
	adds r4, r0, #0
	str r0, [r1, #0x24]
	str r6, [r0, #0x3c]
	ldr r0, _0224B0EC @ =0x0224C7A0
	movs r7, #0
	str r0, [sp, #8]
	add r0, sp, #0x20
	str r7, [r0]
	str r7, [r0, #4]
	ldr r5, _0224B0F0 @ =0x0224C700
	adds r4, #0xc
	str r7, [r0, #8]
_0224B064:
	ldr r0, [r5]
	ldr r3, [sp, #8]
	str r0, [r4, #0xc]
	add r0, sp, #0x20
	str r0, [sp]
	ldr r0, [r6, #0x50]
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r6, #0x30]
	ldr r2, [r5]
	bl FUN_021E19CC
	strh r0, [r4, #0x10]
	adds r0, r6, #0
	adds r0, #0xa4
	ldr r0, [r0]
	ldr r1, [r5]
	bl FUN_021E18CC
	str r0, [r4, #0x14]
	ldr r0, [sp, #8]
	adds r7, r7, #1
	adds r0, #0xc
	adds r4, #0x18
	adds r5, r5, #4
	str r0, [sp, #8]
	cmp r7, #2
	blt _0224B064
	ldr r3, _0224B0F4 @ =0x0224C71C
	add r2, sp, #0x14
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	adds r0, r6, #0
	bl ov8_0224AEF0
	ldr r1, [sp, #0x10]
	ldr r2, _0224B0F8 @ =0x0224C774
	str r0, [r1]
	lsls r1, r0, #2
	adds r0, r2, r1
	ldrsh r1, [r2, r1]
	lsls r2, r1, #0xc
	ldr r1, [sp, #0xc]
	str r2, [r1]
	movs r1, #2
	ldrsh r0, [r0, r1]
	lsls r1, r0, #0xc
	ldr r0, [sp, #0xc]
	str r1, [r0, #4]
	bl ov8_0224AF84
	ldr r0, [sp, #0x10]
	ldr r1, [r0]
	cmp r1, #3
	bhs _0224B0E6
	lsls r2, r1, #2
	add r1, sp, #0x14
	ldr r1, [r1, r2]
	adds r0, r6, #0
	bl FUN_021F4098
_0224B0E6:
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0224B0EC: .4byte 0x0224C7A0
_0224B0F0: .4byte 0x0224C700
_0224B0F4: .4byte 0x0224C71C
_0224B0F8: .4byte 0x0224C774
	thumb_func_end ov8_0224B020

	thumb_func_start ov8_0224B0FC
ov8_0224B0FC: @ 0x0224B0FC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	movs r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov8_0224B0FC

	thumb_func_start ov8_0224B110
ov8_0224B110: @ 0x0224B110
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	ldr r6, [sp, #0x18]
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #8
	bl FUN_02027F6C
	ldr r1, [r0]
	movs r0, #0
	str r0, [r6]
	cmp r4, #7
	blt _0224B156
	cmp r4, #0x13
	bgt _0224B156
	cmp r5, #5
	blt _0224B156
	cmp r5, #0x11
	bgt _0224B156
	subs r2, r4, #7
	adds r3, r2, #0
	movs r0, #0xd
	muls r3, r0, r3
	subs r7, r5, #5
	movs r0, #0xa9
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _0224B184 @ =0x0224CCE8
	adds r3, r3, r7
	adds r0, r0, r2
	ldrb r0, [r3, r0]
	str r0, [r6]
_0224B156:
	cmp r0, #0
	bne _0224B180
	cmp r4, #0x13
	blt _0224B180
	bgt _0224B180
	cmp r5, #1
	blt _0224B180
	cmp r5, #0x15
	bgt _0224B180
	subs r4, #0x13
	movs r0, #0x15
	adds r3, r4, #0
	adds r2, r1, #0
	muls r3, r0, r3
	muls r2, r0, r2
	ldr r0, _0224B188 @ =0x0224CA5C
	subs r5, r5, #1
	adds r1, r3, r5
	adds r0, r0, r2
	ldrb r0, [r1, r0]
	str r0, [r6]
_0224B180:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224B184: .4byte 0x0224CCE8
_0224B188: .4byte 0x0224CA5C
	thumb_func_end ov8_0224B110

	thumb_func_start ov8_0224B18C
ov8_0224B18C: @ 0x0224B18C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #0x3c]
	adds r4, r1, #0
	adds r7, r2, #0
	str r3, [sp, #0xc]
	bl FUN_0205EABC
	adds r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl FUN_0205EAC8
	adds r2, r0, #0
	str r6, [r4, #0x10]
	str r2, [r4, #0x14]
	ldr r0, [sp, #0xc]
	str r7, [r4, #8]
	str r0, [r4, #0xc]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	subs r0, r1, r0
	bpl _0224B1BE
	movs r0, #2
	b _0224B1C0
_0224B1BE:
	movs r0, #3
_0224B1C0:
	str r0, [r4, #0x18]
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	subs r0, r1, r0
	bpl _0224B1CE
	movs r0, #0
	b _0224B1D0
_0224B1CE:
	movs r0, #1
_0224B1D0:
	str r0, [r4, #0x1c]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x10]
	subs r3, r1, r0
	bpl _0224B1DC
	rsbs r3, r3, #0
_0224B1DC:
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	subs r0, r1, r0
	bpl _0224B1E6
	rsbs r0, r0, #0
_0224B1E6:
	cmp r3, r0
	bge _0224B1EE
	movs r0, #1
	str r0, [r4, #4]
_0224B1EE:
	movs r0, #2
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r0, [r5, #0x1c]
	adds r1, r6, #0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r5, #0x38]
	bl FUN_020619DC
	str r0, [r4, #0x20]
	bl FUN_020642F8
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl FUN_02062D64
	ldr r0, [r4, #0x20]
	movs r1, #0
	bl FUN_02062D80
	ldr r0, [r4, #0x20]
	movs r1, #1
	bl FUN_02062E28
	ldr r0, [r4, #0x20]
	bl FUN_02063070
	ldr r1, [r5, #0x28]
	adds r4, r0, #0
	bl FUN_021E931C
	ldr r1, [r5, #0x24]
	adds r0, r4, #0
	bl FUN_02020690
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov8_0224B18C

	thumb_func_start ov8_0224B240
ov8_0224B240: @ 0x0224B240
	ldr r3, [r0, #8]
	str r3, [r0, #0x10]
	ldr r3, [r0, #0xc]
	str r3, [r0, #0x14]
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x10]
	subs r1, r2, r1
	bpl _0224B258
	movs r1, #2
	b _0224B25A
_0224B258:
	movs r1, #3
_0224B25A:
	str r1, [r0, #0x18]
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	subs r1, r2, r1
	bpl _0224B268
	movs r1, #0
	b _0224B26A
_0224B268:
	movs r1, #1
_0224B26A:
	str r1, [r0, #0x1c]
	ldr r2, [r0, #8]
	ldr r1, [r0, #0x10]
	subs r3, r2, r1
	bpl _0224B276
	rsbs r3, r3, #0
_0224B276:
	ldr r2, [r0, #0xc]
	ldr r1, [r0, #0x14]
	subs r1, r2, r1
	bpl _0224B280
	rsbs r1, r1, #0
_0224B280:
	cmp r3, r1
	bge _0224B288
	movs r1, #1
	str r1, [r0, #4]
_0224B288:
	bx lr
	.align 2, 0
	thumb_func_end ov8_0224B240

	thumb_func_start ov8_0224B28C
ov8_0224B28C: @ 0x0224B28C
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #1
	eors r0, r1
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x18]
	bl FUN_0206447C
	str r0, [r4, #0x18]
	ldr r0, [r4, #0x1c]
	bl FUN_0206447C
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov8_0224B28C

	thumb_func_start ov8_0224B2B4
ov8_0224B2B4: @ 0x0224B2B4
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [sp]
	str r3, [r0, #0xc]
	str r1, [r0, #0x18]
	ldr r1, [sp, #4]
	str r1, [r0, #0x1c]
	bx lr
	thumb_func_end ov8_0224B2B4

	thumb_func_start ov8_0224B2C4
ov8_0224B2C4: @ 0x0224B2C4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x3c]
	adds r4, r1, #0
	bl FUN_0205EAFC
	ldr r1, [r5, #0x28]
	adds r6, r0, #0
	bl FUN_021E931C
	ldr r1, [r5, #0x24]
	adds r0, r6, #0
	bl FUN_02020690
	ldr r0, [r4, #0x20]
	bl FUN_02061AF4
	pop {r4, r5, r6, pc}
	thumb_func_end ov8_0224B2C4

	thumb_func_start ov8_0224B2E8
ov8_0224B2E8: @ 0x0224B2E8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r7, [r5, #0x20]
	adds r0, r7, #0
	bl FUN_020655F4
	cmp r0, #1
	bne _0224B36C
	adds r0, r7, #0
	movs r6, #0x9a
	bl FUN_02063020
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_02063040
	ldr r1, [r5, #8]
	cmp r4, r1
	bne _0224B318
	ldr r2, [r5, #0xc]
	cmp r0, r2
	bne _0224B318
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B318:
	ldr r2, [r5, #4]
	cmp r2, #0
	beq _0224B340
	cmp r4, r1
	beq _0224B32E
	ldr r0, [r5, #0x18]
	movs r1, #0xc
	bl FUN_02065838
	adds r6, r0, #0
	b _0224B360
_0224B32E:
	ldr r1, [r5, #0xc]
	cmp r0, r1
	beq _0224B360
	ldr r0, [r5, #0x1c]
	movs r1, #0xc
	bl FUN_02065838
	adds r6, r0, #0
	b _0224B360
_0224B340:
	ldr r2, [r5, #0xc]
	cmp r0, r2
	beq _0224B352
	ldr r0, [r5, #0x1c]
	movs r1, #0xc
	bl FUN_02065838
	adds r6, r0, #0
	b _0224B360
_0224B352:
	cmp r4, r1
	beq _0224B360
	ldr r0, [r5, #0x18]
	movs r1, #0xc
	bl FUN_02065838
	adds r6, r0, #0
_0224B360:
	cmp r6, #0x9a
	beq _0224B36C
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_02065638
_0224B36C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224B2E8

	thumb_func_start ov8_0224B370
ov8_0224B370: @ 0x0224B370
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, [r5]
	adds r7, r1, #0
	adds r4, r2, #0
	ldr r6, [r5, #4]
	cmp r0, r7
	bne _0224B388
	cmp r6, r4
	beq _0224B3C0
_0224B388:
	movs r1, #2
	adds r0, r5, #0
	lsls r1, r1, #0xc
	bl ov8_0224AF00
	ldr r0, [r5]
	ldr r1, [r5, #4]
	cmp r0, r7
	bne _0224B3BC
	cmp r6, r1
	ble _0224B3B2
	movs r2, #0xf
	lsls r2, r2, #0xe
	adds r3, r1, r2
	adds r2, r4, r2
	cmp r6, r2
	bge _0224B3BC
	cmp r3, r2
	ble _0224B3BC
	adds r1, r4, #0
	b _0224B3BC
_0224B3B2:
	cmp r6, r4
	bge _0224B3BC
	cmp r1, r4
	ble _0224B3BC
	adds r1, r4, #0
_0224B3BC:
	str r0, [r5]
	str r1, [r5, #4]
_0224B3C0:
	ldr r0, [r5]
	cmp r0, r7
	bne _0224B3CC
	ldr r0, [r5, #4]
	cmp r0, r4
	beq _0224B3D0
_0224B3CC:
	movs r0, #0
	str r0, [sp]
_0224B3D0:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224B370

	thumb_func_start ov8_0224B3D4
ov8_0224B3D4: @ 0x0224B3D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	bl FUN_02050A60
	adds r6, r0, #0
	adds r0, r4, #0
	bl FUN_02050A64
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r7, [r4, #0x14]
	ldr r5, [r4, #0x18]
	cmp r0, #0xc
	bhi _0224B438
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224B3FE: @ jump table
	.2byte _0224B418 - _0224B3FE - 2 @ case 0
	.2byte _0224B42C - _0224B3FE - 2 @ case 1
	.2byte _0224B442 - _0224B3FE - 2 @ case 2
	.2byte _0224B45C - _0224B3FE - 2 @ case 3
	.2byte _0224B4D4 - _0224B3FE - 2 @ case 4
	.2byte _0224B514 - _0224B3FE - 2 @ case 5
	.2byte _0224B528 - _0224B3FE - 2 @ case 6
	.2byte _0224B53E - _0224B3FE - 2 @ case 7
	.2byte _0224B570 - _0224B3FE - 2 @ case 8
	.2byte _0224B584 - _0224B3FE - 2 @ case 9
	.2byte _0224B5BA - _0224B3FE - 2 @ case 10
	.2byte _0224B614 - _0224B3FE - 2 @ case 11
	.2byte _0224B628 - _0224B3FE - 2 @ case 12
_0224B418:
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x1c
	movs r2, #0xb
	movs r3, #0xd
	bl ov8_0224B18C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0224B42C:
	adds r0, r4, #0
	adds r0, #0x1c
	bl ov8_0224B2E8
	cmp r0, #1
	beq _0224B43A
_0224B438:
	b _0224B662
_0224B43A:
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224B662
_0224B442:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #8
	blt _0224B54A
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, _0224B668 @ =0x0000054B
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0224B45C:
	ldr r0, [r7]
	cmp r0, #4
	bne _0224B478
	ldr r1, [r5]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _0224B478
	ldr r1, [r5, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	ble _0224B478
	movs r0, #0xb
	lsls r0, r0, #0xc
	str r0, [r5]
_0224B478:
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	adds r0, r5, #0
	bl ov8_0224B370
	adds r6, r0, #0
	ldr r0, [r7]
	cmp r0, #4
	bne _0224B494
	lsls r1, r0, #2
	ldr r0, _0224B66C @ =0x0224C774
	ldrsh r0, [r0, r1]
	lsls r0, r0, #0xc
	str r0, [r5]
_0224B494:
	ldr r1, [r5]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _0224B4B0
	ldr r1, [r5, #4]
	ldr r0, [r4, #0xc]
	cmp r1, r0
	ble _0224B4AA
	ldr r0, [r7]
	cmp r0, #4
	bne _0224B4B4
_0224B4AA:
	movs r0, #0
	str r0, [r5, #8]
	b _0224B4B4
_0224B4B0:
	movs r0, #1
	str r0, [r5, #8]
_0224B4B4:
	adds r0, r5, #0
	bl ov8_0224AF84
	cmp r6, #1
	bne _0224B54A
	ldr r0, _0224B668 @ =0x0000054B
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _0224B670 @ =0x000005E3
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224B662
_0224B4D4:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #8
	blt _0224B54A
	movs r1, #0
	str r1, [r4, #4]
	ldr r0, [r7]
	subs r0, r0, #2
	cmp r0, #1
	bhi _0224B504
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x1c
	movs r2, #0xb
	movs r3, #0x13
	bl ov8_0224B2B4
	movs r0, #7
	str r0, [r4]
	b _0224B662
_0224B504:
	adds r0, r4, #0
	adds r0, #0x1c
	bl ov8_0224B28C
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224B662
_0224B514:
	adds r0, r4, #0
	adds r0, #0x1c
	bl ov8_0224B2E8
	cmp r0, #1
	bne _0224B54A
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224B662
_0224B528:
	adds r1, r4, #0
	adds r0, r6, #0
	adds r1, #0x1c
	bl ov8_0224B2C4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224B53E:
	adds r0, r4, #0
	adds r0, #0x1c
	bl ov8_0224B2E8
	cmp r0, #1
	beq _0224B54C
_0224B54A:
	b _0224B662
_0224B54C:
	ldr r0, [r7]
	movs r2, #0x14
	movs r1, #3
	cmp r0, #3
	bne _0224B55A
	movs r2, #2
	adds r1, r2, #0
_0224B55A:
	str r1, [sp]
	movs r1, #1
	adds r0, r4, #0
	str r1, [sp, #4]
	adds r0, #0x1c
	movs r3, #0x13
	bl ov8_0224B2B4
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0224B570:
	adds r0, r4, #0
	adds r0, #0x1c
	bl ov8_0224B2E8
	cmp r0, #1
	bne _0224B662
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224B662
_0224B584:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	blt _0224B662
	movs r1, #0
	str r1, [r4, #4]
	ldr r0, [r7]
	cmp r0, #2
	bne _0224B5A2
	adds r0, r6, #0
	movs r1, #1
	bl FUN_021F416C
	b _0224B5AC
_0224B5A2:
	cmp r0, #3
	bne _0224B5AC
	adds r0, r6, #0
	bl FUN_021F416C
_0224B5AC:
	ldr r0, _0224B674 @ =0x00000639
	bl FUN_02005748
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	b _0224B662
_0224B5BA:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x3c
	blt _0224B662
	movs r1, #0
	str r1, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	ldr r0, _0224B674 @ =0x00000639
	bl FUN_020057A4
	ldr r0, [r4, #0x48]
	ldr r2, [r4, #0x4c]
	movs r1, #0xc
	bl FUN_0200B1B8
	ldr r0, [r6, #8]
	ldr r1, [r4, #0x44]
	movs r2, #3
	bl FUN_0205D8F4
	ldr r0, [r4, #0x44]
	movs r1, #0
	bl FUN_0200E084
	ldr r0, [r6, #0xc]
	bl FUN_02025E44
	adds r1, r0, #0
	ldr r0, [r4, #0x44]
	bl FUN_0205D944
	ldr r0, [r6, #0xc]
	bl FUN_02025E44
	adds r2, r0, #0
	ldr r0, [r4, #0x44]
	ldr r1, [r4, #0x4c]
	movs r3, #1
	bl FUN_0205D994
	str r0, [r4, #0x40]
	b _0224B662
_0224B614:
	ldr r0, [r4, #0x40]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0205DA04
	cmp r0, #1
	bne _0224B662
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_0224B628:
	ldr r0, _0224B678 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0224B662
	ldr r0, [r6, #0x3c]
	bl FUN_0205EABC
	adds r5, r0, #0
	ldr r0, [r6, #0x3c]
	bl FUN_0205EAC8
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0x1c
	adds r1, r5, #0
	bl ov8_0224B240
	ldr r0, [r4, #0x44]
	movs r1, #0
	bl FUN_0200E084
	ldr r0, [r4, #0x44]
	bl FUN_0201A8FC
	movs r0, #0
	str r0, [r4, #4]
	movs r0, #5
	str r0, [r4]
_0224B662:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224B668: .4byte 0x0000054B
_0224B66C: .4byte 0x0224C774
_0224B670: .4byte 0x000005E3
_0224B674: .4byte 0x00000639
_0224B678: .4byte 0x021BF67C
	thumb_func_end ov8_0224B3D4

	thumb_func_start ov8_0224B67C
ov8_0224B67C: @ 0x0224B67C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #8
	bl FUN_02027F6C
	adds r6, r0, #0
	ldr r0, [r6]
	cmp r0, #4
	blo _0224B6A4
	add sp, #0x14
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0224B6A4:
	adds r1, r0, #1
	str r1, [r6]
	lsls r1, r1, #0x10
	adds r0, r5, #0
	lsrs r1, r1, #0x10
	bl ov8_0224AEDC
	ldr r0, [r5, #4]
	ldr r1, _0224B70C @ =0x0224C774
	ldr r0, [r0, #0x24]
	str r0, [sp, #0xc]
	ldr r0, [r6]
	lsls r0, r0, #2
	adds r7, r1, r0
	str r0, [sp, #0x10]
	movs r0, #0xb
	movs r1, #0x50
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x50
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, [sp]
	ldr r1, _0224B70C @ =0x0224C774
	str r0, [r4, #0x44]
	ldr r0, [sp, #4]
	adds r2, r4, #0
	str r0, [r4, #0x48]
	ldr r0, [sp, #8]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x10]
	ldrsh r0, [r1, r0]
	ldr r1, _0224B710 @ =ov8_0224B3D4
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #2
	ldrsh r0, [r7, r0]
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r5, [r4, #0x10]
	ldr r0, [sp, #0xc]
	str r6, [r4, #0x14]
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x10]
	bl FUN_02050944
	movs r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0224B70C: .4byte 0x0224C774
_0224B710: .4byte ov8_0224B3D4
	thumb_func_end ov8_0224B67C

	thumb_func_start ov8_0224B714
ov8_0224B714: @ 0x0224B714
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #8
	bl FUN_02027F6C
	ldr r0, [r0]
	ldr r2, _0224B760 @ =0x0224C7F0
	lsls r1, r0, #3
	adds r0, r2, r1
	ldrsh r1, [r2, r1]
	cmp r1, r5
	bne _0224B75A
	movs r1, #2
	ldrsh r1, [r0, r1]
	cmp r1, r6
	bne _0224B75A
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _0224B74E
	cmp r4, #2
	beq _0224B756
	cmp r4, #3
	beq _0224B756
_0224B74E:
	cmp r0, #1
	bne _0224B75A
	cmp r4, #1
	bhi _0224B75A
_0224B756:
	movs r0, #1
	pop {r4, r5, r6, pc}
_0224B75A:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224B760: .4byte 0x0224C7F0
	thumb_func_end ov8_0224B714

	thumb_func_start ov8_0224B764
ov8_0224B764: @ 0x0224B764
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #4
	bl FUN_02027F6C
	movs r1, #0x79
	adds r6, r0, #0
	movs r0, #4
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x79
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, [r5, #4]
	movs r1, #0x1f
	str r4, [r0, #0x24]
	str r5, [r4]
	ldr r0, [r5, #0x40]
	bl FUN_021DF4A8
	ldr r0, [r5, #0x40]
	movs r1, #0xb
	movs r2, #9
	bl FUN_021F42D8
	ldr r0, [r6]
	cmp r0, #1
	bne _0224B7B4
	adds r0, r4, #0
	bl ov8_0224B958
	b _0224B7BA
_0224B7B4:
	adds r0, r4, #0
	bl ov8_0224B8D0
_0224B7BA:
	movs r0, #1
	str r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov8_0224B764

	thumb_func_start ov8_0224B7C0
ov8_0224B7C0: @ 0x0224B7C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x24]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	movs r1, #0
	str r1, [r0, #0x24]
	pop {r4, pc}
	thumb_func_end ov8_0224B7C0

	thumb_func_start ov8_0224B7D4
ov8_0224B7D4: @ 0x0224B7D4
	movs r0, #0
	bx lr
	thumb_func_end ov8_0224B7D4

	thumb_func_start ov8_0224B7D8
ov8_0224B7D8: @ 0x0224B7D8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r3, #0
	movs r3, #2
	lsls r3, r3, #0xc
	str r3, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r5, [r0, #0x1c]
	ldr r5, [r5]
	str r5, [sp, #8]
	ldr r0, [r0, #0x38]
	bl FUN_020619DC
	adds r5, r0, #0
	movs r1, #0xfd
	bl FUN_0206290C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl FUN_020629B4
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov8_0224B7D8

	thumb_func_start ov8_0224B80C
ov8_0224B80C: @ 0x0224B80C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	str r4, [r5, #8]
	adds r0, r4, #0
	adds r6, r2, #0
	bl FUN_02063020
	str r0, [r5]
	adds r0, r4, #0
	bl FUN_02063040
	str r0, [r5, #4]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_020629D8
	cmp r0, #0
	bne _0224B842
	ldr r1, [r5]
	ldr r2, [r5, #4]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_021F4474
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
_0224B842:
	ldr r1, [r5]
	ldr r2, [r5, #4]
	adds r0, r6, #0
	movs r3, #0
	bl FUN_021F4668
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov8_0224B80C

	thumb_func_start ov8_0224B854
ov8_0224B854: @ 0x0224B854
	push {r3, r4}
	movs r3, #0x43
	lsls r3, r3, #2
	movs r4, #0
	adds r0, r0, r3
_0224B85E:
	ldr r3, [r0, #8]
	cmp r3, r1
	bne _0224B86A
	ldr r3, [r0, #0xc]
	cmp r3, r2
	beq _0224B874
_0224B86A:
	adds r4, r4, #1
	adds r0, #0x18
	cmp r4, #9
	blt _0224B85E
	movs r0, #0
_0224B874:
	pop {r3, r4}
	bx lr
	thumb_func_end ov8_0224B854

	thumb_func_start ov8_0224B878
ov8_0224B878: @ 0x0224B878
	push {r3, r4}
	movs r4, #0
	adds r0, r0, #4
_0224B87E:
	ldr r3, [r0]
	cmp r3, #0
	beq _0224B890
	ldr r3, [r0, #8]
	cmp r3, r1
	bne _0224B890
	ldr r3, [r0, #0xc]
	cmp r3, r2
	beq _0224B89A
_0224B890:
	adds r4, r4, #1
	adds r0, #0x18
	cmp r4, #0xb
	blt _0224B87E
	movs r0, #0
_0224B89A:
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov8_0224B878

	thumb_func_start ov8_0224B8A0
ov8_0224B8A0: @ 0x0224B8A0
	push {r4, lr}
	adds r4, r0, #0
	bne _0224B8AA
	bl FUN_02022974
_0224B8AA:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _0224B8B4
	bl FUN_02022974
_0224B8B4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0224B8BE
	bl FUN_02022974
_0224B8BE:
	ldr r0, [r4, #0x14]
	bl FUN_0207136C
	ldr r0, [r4, #0x10]
	bl FUN_02061AF4
	movs r0, #0
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov8_0224B8A0

	thumb_func_start ov8_0224B8D0
ov8_0224B8D0: @ 0x0224B8D0
	push {r3, r4, r5, r6, r7, lr}
	movs r2, #0x43
	lsls r2, r2, #2
	adds r5, r0, r2
	adds r6, r0, #4
	ldr r4, [r0]
	adds r0, r6, #0
	movs r1, #0
	subs r2, r2, #4
	blx FUN_020D5124
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xd8
	blx FUN_020D5124
	movs r0, #0
	ldr r7, _0224B950 @ =0x0224C99C
	str r0, [sp]
_0224B8F6:
	ldr r2, [r7, #4]
	ldr r1, [r7]
	adds r0, r4, #0
	subs r2, r2, #2
	movs r3, #0
	bl ov8_0224B7D8
	adds r1, r0, #0
	adds r0, r6, #0
	adds r0, #8
	adds r2, r4, #0
	bl ov8_0224B80C
	movs r0, #1
	str r0, [r6]
	ldr r0, [sp]
	adds r7, #8
	adds r0, r0, #1
	adds r6, #0x18
	str r0, [sp]
	cmp r0, #0xb
	blt _0224B8F6
	ldr r6, _0224B954 @ =0x0224C90C
	movs r7, #0
_0224B926:
	ldr r2, [r6, #4]
	ldr r1, [r6]
	adds r0, r4, #0
	subs r2, r2, #2
	movs r3, #1
	bl ov8_0224B7D8
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #8
	adds r2, r4, #0
	bl ov8_0224B80C
	movs r0, #1
	str r0, [r5]
	adds r7, r7, #1
	adds r6, #8
	adds r5, #0x18
	cmp r7, #9
	blt _0224B926
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224B950: .4byte 0x0224C99C
_0224B954: .4byte 0x0224C90C
	thumb_func_end ov8_0224B8D0

	thumb_func_start ov8_0224B958
ov8_0224B958: @ 0x0224B958
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r7, #0
	str r7, [sp, #8]
	ldr r6, [r0]
	adds r4, r0, #4
	ldr r1, [r6, #0x38]
	add r2, sp, #8
	str r1, [sp]
	movs r1, #0x43
	lsls r1, r1, #2
	adds r5, r0, r1
	ldr r0, [sp]
	add r1, sp, #4
	movs r3, #1
	bl FUN_020625B0
	cmp r0, #1
	bne _0224B9D4
_0224B97E:
	ldr r0, [sp, #4]
	bl FUN_02062910
	cmp r0, #0xfd
	bne _0224B9C4
	ldr r0, [sp, #4]
	movs r1, #0
	bl FUN_020629D8
	cmp r0, #0
	bne _0224B9A8
	adds r0, r4, #0
	ldr r1, [sp, #4]
	adds r0, #8
	adds r2, r6, #0
	bl ov8_0224B80C
	movs r0, #1
	str r0, [r4]
	adds r4, #0x18
	b _0224B9BA
_0224B9A8:
	adds r0, r5, #0
	ldr r1, [sp, #4]
	adds r0, #8
	adds r2, r6, #0
	bl ov8_0224B80C
	movs r0, #1
	str r0, [r5]
	adds r5, #0x18
_0224B9BA:
	adds r7, r7, #1
	cmp r7, #0x14
	ble _0224B9C4
	bl FUN_02022974
_0224B9C4:
	ldr r0, [sp]
	add r1, sp, #4
	add r2, sp, #8
	movs r3, #1
	bl FUN_020625B0
	cmp r0, #1
	beq _0224B97E
_0224B9D4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224B958

	thumb_func_start ov8_0224B9D8
ov8_0224B9D8: @ 0x0224B9D8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	cmp r4, #0
	bge _0224B9E6
	bl FUN_02022974
_0224B9E6:
	cmp r4, #0x20
	blt _0224B9EE
	bl FUN_02022974
_0224B9EE:
	cmp r5, #0
	bge _0224B9F6
	bl FUN_02022974
_0224B9F6:
	cmp r5, #0x20
	blt _0224B9FE
	bl FUN_02022974
_0224B9FE:
	lsls r0, r5, #5
	adds r1, r4, r0
	ldr r0, _0224BA08 @ =0x0224E33C
	ldrb r0, [r0, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224BA08: .4byte 0x0224E33C
	thumb_func_end ov8_0224B9D8

	thumb_func_start ov8_0224BA0C
ov8_0224BA0C: @ 0x0224BA0C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r7, r2, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r5, r3, #0
	movs r4, #0
	bl ov8_0224B9D8
	cmp r0, #5
	bhi _0224BA62
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224BA32: @ jump table
	.2byte _0224BA62 - _0224BA32 - 2 @ case 0
	.2byte _0224BA62 - _0224BA32 - 2 @ case 1
	.2byte _0224BA44 - _0224BA32 - 2 @ case 2
	.2byte _0224BA4E - _0224BA32 - 2 @ case 3
	.2byte _0224BA3E - _0224BA32 - 2 @ case 4
	.2byte _0224BA5A - _0224BA32 - 2 @ case 5
_0224BA3E:
	movs r0, #4
	orrs r4, r0
	b _0224BA62
_0224BA44:
	cmp r5, #1
	bhi _0224BA62
	movs r0, #1
	orrs r4, r0
	b _0224BA62
_0224BA4E:
	subs r0, r5, #2
	cmp r0, #1
	bhi _0224BA62
	movs r0, #1
	orrs r4, r0
	b _0224BA62
_0224BA5A:
	cmp r5, #2
	bne _0224BA62
	movs r0, #1
	orrs r4, r0
_0224BA62:
	adds r0, r5, #0
	bl FUN_0206419C
	str r0, [sp, #4]
	adds r0, r5, #0
	bl FUN_020641A8
	adds r5, r0, #0
	ldr r0, [sp, #4]
	adds r1, r7, r5
	adds r0, r6, r0
	bl ov8_0224B9D8
	cmp r0, #1
	bne _0224BA84
	movs r0, #1
	orrs r4, r0
_0224BA84:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	adds r1, r6, r1
	adds r2, r7, r5
	bl ov8_0224B878
	cmp r0, #0
	beq _0224BA98
	movs r0, #2
	orrs r4, r0
_0224BA98:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov8_0224BA0C

	thumb_func_start ov8_0224BAA0
ov8_0224BAA0: @ 0x0224BAA0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r5, [sp, #0x20]
	movs r6, #0
	str r0, [sp]
	adds r7, r1, #0
	str r2, [sp, #4]
	adds r4, r3, #0
	str r5, [sp, #0x20]
	str r6, [r5]
	bl ov8_0224BA0C
	cmp r0, #0
	beq _0224BAC0
	cmp r0, #4
	bne _0224BAEE
_0224BAC0:
	adds r0, r4, #0
	bl FUN_0206419C
	adds r7, r7, r0
	adds r0, r4, #0
	bl FUN_020641A8
	ldr r1, [sp, #4]
	adds r3, r4, #0
	adds r0, r1, r0
	str r0, [sp, #4]
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #4]
	ldr r0, [r0]
	adds r1, r0, #1
	ldr r0, [sp, #0x20]
	str r1, [r0]
	ldr r0, [sp]
	adds r1, r7, #0
	bl ov8_0224BA0C
	cmp r0, #0
	beq _0224BAC0
_0224BAEE:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov8_0224BAA0

	thumb_func_start ov8_0224BAF4
ov8_0224BAF4: @ 0x0224BAF4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_02050A60
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02050A64
	adds r5, r0, #0
	ldr r0, [r4, #0x3c]
	bl FUN_0205EB3C
	ldr r1, [r5]
	adds r4, r0, #0
	cmp r1, #0
	beq _0224BB1A
	cmp r1, #1
	beq _0224BB4C
	b _0224BB70
_0224BB1A:
	bl FUN_020655F4
	cmp r0, #1
	bne _0224BB70
	ldr r0, [r5, #8]
	movs r1, #0x28
	bl FUN_02065838
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02065638
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #8]
	ldr r0, [r0, #0x14]
	movs r2, #0
	bl FUN_021F4698
	ldr r0, _0224BB74 @ =0x00000557
	bl FUN_02005748
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0224BB70
_0224BB4C:
	bl FUN_02065684
	cmp r0, #1
	bne _0224BB70
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x14]
	bl FUN_021F4720
	cmp r0, #1
	bne _0224BB70
	adds r0, r4, #0
	bl FUN_020656AC
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #1
	pop {r3, r4, r5, pc}
_0224BB70:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224BB74: .4byte 0x00000557
	thumb_func_end ov8_0224BAF4

	thumb_func_start ov8_0224BB78
ov8_0224BB78: @ 0x0224BB78
	push {r3, r4, r5, lr}
	bl FUN_02050A64
	ldr r4, _0224BB9C @ =0x0224C818
	adds r5, r0, #0
_0224BB82:
	ldr r1, [r5]
	adds r0, r5, #0
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _0224BB82
	cmp r0, #2
	bne _0224BB98
	movs r0, #1
	pop {r3, r4, r5, pc}
_0224BB98:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224BB9C: .4byte 0x0224C818
	thumb_func_end ov8_0224BB78

	thumb_func_start ov8_0224BBA0
ov8_0224BBA0: @ 0x0224BBA0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #0x34]
	adds r0, #0x1c
	adds r4, r1, #0
	str r0, [sp]
	adds r4, #8
	ldr r0, [r5, #0x3c]
	ldr r1, [r1, #8]
	ldr r2, [r4, #4]
	ldr r3, [r5, #8]
	bl ov8_0224BAA0
	adds r1, r5, #0
	ldr r0, [r4, #0xc]
	adds r1, #0x20
	bl FUN_020715E4
	movs r0, #0x44
	str r0, [r5, #0x2c]
	movs r0, #1
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov8_0224BBA0

	thumb_func_start ov8_0224BBD0
ov8_0224BBD0: @ 0x0224BBD0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	bl FUN_0205EB3C
	adds r4, r0, #0
	bl FUN_020655F4
	cmp r0, #0
	bne _0224BBEC
	movs r0, #0
	pop {r3, r4, r5, pc}
_0224BBEC:
	ldr r0, [r5, #8]
	movs r1, #0x1c
	bl FUN_02065838
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02065638
	ldr r4, [r5, #0x34]
	ldr r1, [r5, #8]
	ldr r0, [r4, #0x14]
	movs r2, #1
	bl FUN_021F4698
	adds r1, r4, #0
	ldr r2, [r5, #8]
	adds r0, r5, #0
	adds r1, #8
	bl ov8_0224C0C8
	cmp r0, #1
	bne _0224BC34
	movs r0, #1
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x3c]
	adds r4, #8
	ldr r0, [r0]
	ldr r3, [r5, #8]
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov8_0224BFCC
	adds r0, r5, #0
	movs r1, #0
	bl ov8_0224C0FC
_0224BC34:
	ldr r0, _0224BC44 @ =0x00000557
	bl FUN_02005748
	movs r0, #2
	str r0, [r5]
	movs r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224BC44: .4byte 0x00000557
	thumb_func_end ov8_0224BBD0

	thumb_func_start ov8_0224BC48
ov8_0224BC48: @ 0x0224BC48
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #8]
	ldr r2, [r4, #0x2c]
	adds r1, #0x20
	bl FUN_02064418
	ldr r0, [r4, #0x34]
	adds r1, r4, #0
	ldr r0, [r0, #0x14]
	adds r1, #0x20
	bl FUN_020715D4
	ldr r1, [r4, #0x2c]
	adds r1, #0x44
	str r1, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x1e
	blt _0224BCA0
	ldr r1, [r4, #0x1c]
	movs r0, #0xd
	lsls r2, r1, #4
	lsrs r1, r2, #0x1f
	adds r1, r2, r1
	lsls r0, r0, #0xc
	asrs r1, r1, #1
	blx FUN_020E1F6C
	adds r1, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl FUN_021F4714
	movs r0, #3
	str r0, [r4]
	ldr r0, _0224BCA4 @ =0x0000054C
	bl FUN_02005748
_0224BCA0:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0224BCA4: .4byte 0x0000054C
	thumb_func_end ov8_0224BC48

	thumb_func_start ov8_0224BCA8
ov8_0224BCA8: @ 0x0224BCA8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	ldr r4, [r5, #0x34]
	ldr r0, [r5, #8]
	ldr r2, [r5, #0x2c]
	adds r1, #0x20
	bl FUN_02064418
	adds r1, r5, #0
	ldr r0, [r4, #0x14]
	adds r1, #0x20
	bl FUN_020715D4
	ldr r1, [r5, #0x30]
	ldr r0, [r5, #0x2c]
	adds r0, r1, r0
	str r0, [r5, #0x30]
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
	cmp r0, #0x24
	bge _0224BCE6
	movs r0, #1
	ldr r1, [r5, #0x2c]
	lsls r0, r0, #0xc
	cmp r1, r0
	bge _0224BCF4
	adds r0, r1, r1
	str r0, [r5, #0x2c]
	b _0224BCF4
_0224BCE6:
	bne _0224BCF4
	movs r0, #2
	ldr r1, [r5, #0x2c]
	lsls r0, r0, #0xc
	cmp r1, r0
	bgt _0224BCF4
	str r0, [r5, #0x2c]
_0224BCF4:
	ldr r1, [r5, #0x2c]
	adds r0, r5, #0
	bl ov8_0224C170
	ldr r0, [r5, #0x30]
	asrs r1, r0, #4
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r1, r0, #0xc
	ldr r0, [r5, #0x14]
	cmp r1, r0
	ble _0224BDBE
	str r1, [r5, #0x14]
	ldr r0, [r5, #8]
	bl FUN_0206419C
	ldr r1, [r4, #8]
	adds r0, r1, r0
	str r0, [r4, #8]
	ldr r0, [r5, #8]
	bl FUN_020641A8
	ldr r1, [r4, #0xc]
	adds r2, r1, r0
	str r2, [r4, #0xc]
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #8]
	ldr r3, [r5, #8]
	bl ov8_0224BA0C
	adds r6, r0, #0
	beq _0224BDBE
	adds r2, r5, #0
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	adds r2, #0x20
	bl FUN_02064450
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #8]
	bl FUN_02063024
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	bl FUN_02063044
	ldr r0, [r4, #0x10]
	bl FUN_02064208
	movs r1, #1
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0xc
	bl FUN_021F4714
	ldr r0, _0224BDC4 @ =0x0000054C
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _0224BDC8 @ =0x00000557
	bl FUN_02005748
	ldr r0, _0224BDCC @ =0x0000054D
	bl FUN_02005748
	movs r0, #2
	tst r0, r6
	bne _0224BD8E
	ldr r0, [r5, #0x18]
	cmp r0, #1
	bne _0224BD88
	movs r0, #6
	str r0, [r5]
	b _0224BDBE
_0224BD88:
	movs r0, #8
	str r0, [r5]
	b _0224BDBE
_0224BD8E:
	ldr r0, [r5, #8]
	bl FUN_0206419C
	adds r6, r0, #0
	ldr r0, [r5, #8]
	bl FUN_020641A8
	ldr r1, [r4, #8]
	adds r2, r0, #0
	ldr r3, [r4, #0xc]
	ldr r0, [r5, #0x3c]
	adds r1, r1, r6
	adds r2, r3, r2
	bl ov8_0224B878
	str r0, [r5, #0x38]
	cmp r0, #0
	bne _0224BDB6
	bl FUN_02022974
_0224BDB6:
	movs r0, #0
	str r0, [r5, #4]
	movs r0, #4
	str r0, [r5]
_0224BDBE:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_0224BDC4: .4byte 0x0000054C
_0224BDC8: .4byte 0x00000557
_0224BDCC: .4byte 0x0000054D
	thumb_func_end ov8_0224BCA8

	thumb_func_start ov8_0224BDD0
ov8_0224BDD0: @ 0x0224BDD0
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x2c]
	bl ov8_0224C170
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #4
	blt _0224BDFA
	movs r0, #0
	str r0, [r4, #4]
	movs r0, #5
	str r0, [r4]
	ldr r0, [r4, #0x38]
	ldr r0, [r0, #0x14]
	bl FUN_021F44A4
	ldr r0, _0224BE00 @ =0x0000062A
	bl FUN_02005748
_0224BDFA:
	movs r0, #0
	pop {r4, pc}
	nop
_0224BE00: .4byte 0x0000062A
	thumb_func_end ov8_0224BDD0

	thumb_func_start ov8_0224BE04
ov8_0224BE04: @ 0x0224BE04
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x2c]
	bl ov8_0224C170
	ldr r0, [r4, #0x38]
	ldr r0, [r0, #0x14]
	bl FUN_021F453C
	cmp r0, #0
	beq _0224BE34
	ldr r0, [r4, #0x38]
	bl ov8_0224B8A0
	movs r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x18]
	cmp r0, #1
	bne _0224BE30
	movs r0, #6
	str r0, [r4]
	b _0224BE34
_0224BE30:
	movs r0, #8
	str r0, [r4]
_0224BE34:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov8_0224BE04

	thumb_func_start ov8_0224BE38
ov8_0224BE38: @ 0x0224BE38
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x2c]
	bl ov8_0224C170
	adds r0, r4, #0
	bl ov8_0224C0C4
	cmp r0, #1
	bne _0224BE64
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl FUN_021F4720
	cmp r0, #1
	bne _0224BE64
	adds r0, r4, #0
	movs r1, #1
	bl ov8_0224C0FC
	movs r0, #7
	str r0, [r4]
_0224BE64:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov8_0224BE38

	thumb_func_start ov8_0224BE68
ov8_0224BE68: @ 0x0224BE68
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0x10
	bl ov8_0224C11C
	adds r0, r4, #0
	bl ov8_0224C0C4
	cmp r0, #1
	bne _0224BE86
	adds r0, r4, #0
	bl ov8_0224C098
	movs r0, #9
	str r0, [r4]
_0224BE86:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov8_0224BE68

	thumb_func_start ov8_0224BE8C
ov8_0224BE8C: @ 0x0224BE8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x14]
	bl FUN_021F4720
	cmp r0, #1
	bne _0224BEA0
	movs r0, #9
	str r0, [r4]
_0224BEA0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov8_0224BE8C

	thumb_func_start ov8_0224BEA4
ov8_0224BEA4: @ 0x0224BEA4
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	ldr r0, [r0]
	ldr r0, [r0, #0x3c]
	bl FUN_0205EB3C
	adds r5, r0, #0
	bl FUN_02065684
	cmp r0, #1
	bne _0224BEC6
	adds r0, r5, #0
	bl FUN_020656AC
	movs r0, #0xa
	str r0, [r4]
_0224BEC6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov8_0224BEA4

	thumb_func_start ov8_0224BECC
ov8_0224BECC: @ 0x0224BECC
	push {r3, lr}
	bl FUN_020181C4
	movs r0, #2
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov8_0224BECC

	thumb_func_start ov8_0224BED8
ov8_0224BED8: @ 0x0224BED8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r0, #0xb
	movs r1, #0x78
	adds r7, r2, #0
	bl FUN_02018184
	adds r4, r0, #0
	bne _0224BEF0
	bl FUN_02022974
_0224BEF0:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x78
	blx FUN_020D5124
	str r7, [r4, #8]
	ldr r0, [r5, #8]
	str r0, [r4, #0xc]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x10]
	str r5, [r4, #0x34]
	str r6, [r4, #0x3c]
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224BED8

	thumb_func_start ov8_0224BF0C
ov8_0224BF0C: @ 0x0224BF0C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	bl ov8_0224BED8
	adds r2, r0, #0
	ldr r1, _0224BF28 @ =ov8_0224BAF4
	adds r0, r4, #0
	bl FUN_02050904
	pop {r4, pc}
	nop
_0224BF28: .4byte ov8_0224BAF4
	thumb_func_end ov8_0224BF0C

	thumb_func_start ov8_0224BF2C
ov8_0224BF2C: @ 0x0224BF2C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	bl ov8_0224BED8
	adds r2, r0, #0
	ldr r1, _0224BF48 @ =ov8_0224BB78
	adds r0, r4, #0
	bl FUN_02050904
	pop {r4, pc}
	nop
_0224BF48: .4byte ov8_0224BB78
	thumb_func_end ov8_0224BF2C

	thumb_func_start ov8_0224BF4C
ov8_0224BF4C: @ 0x0224BF4C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	bl FUN_02027F80
	cmp r0, #4
	beq _0224BF68
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224BF68:
	ldr r0, [r5, #0x3c]
	bl FUN_0205EA78
	adds r6, r0, #0
	ldr r0, [r5, #4]
	adds r1, r6, #0
	ldr r4, [r0, #0x24]
	ldr r0, [r5, #0x3c]
	add r2, sp, #0xc
	add r3, sp, #8
	bl FUN_0206157C
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	adds r0, r4, #0
	bl ov8_0224B854
	adds r7, r0, #0
	bne _0224BF94
	add sp, #0x10
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224BF94:
	add r0, sp, #4
	str r0, [sp]
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	adds r0, r4, #0
	adds r3, r6, #0
	bl ov8_0224BAA0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0224BFB8
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl ov8_0224BF0C
	b _0224BFC4
_0224BFB8:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	adds r3, r6, #0
	bl ov8_0224BF2C
_0224BFC4:
	movs r0, #1
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov8_0224BF4C

	thumb_func_start ov8_0224BFCC
ov8_0224BFCC: @ 0x0224BFCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r4, #0x40
	adds r5, r0, #0
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x38
	adds r7, r3, #0
	blx FUN_020D5124
	ldr r0, [sp, #0x10]
	str r5, [r4, #0x34]
	ldr r6, [r0]
	ldr r0, [r0, #4]
	adds r1, r6, #0
	str r6, [r4, #8]
	str r0, [sp, #0x14]
	str r0, [r4, #0xc]
	adds r0, r4, #0
	str r7, [r4, #0x20]
	adds r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	ldr r0, [r0, #0x3c]
	adds r3, r7, #0
	bl ov8_0224BAA0
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _0224C014
	bl FUN_02022974
_0224C014:
	adds r0, r7, #0
	bl FUN_0206419C
	ldr r1, [r4, #0x24]
	muls r0, r1, r0
	adds r0, r6, r0
	str r0, [r4, #0x18]
	adds r0, r7, #0
	bl FUN_020641A8
	ldr r1, [r4, #0x24]
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp, #0x14]
	adds r0, r0, r2
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x3c]
	bl FUN_0205EABC
	adds r6, r0, #0
	ldr r0, [r5, #0x3c]
	bl FUN_0205EAC8
	adds r2, r0, #0
	str r6, [r4, #0x10]
	movs r0, #2
	str r2, [r4, #0x14]
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r3, #0
	str r3, [sp, #4]
	ldr r0, [r5, #0x1c]
	adds r1, r6, #0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, [r5, #0x38]
	bl FUN_020619DC
	str r0, [r4, #0x30]
	bl FUN_020642F8
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_02062D64
	ldr r0, [r4, #0x30]
	movs r1, #0
	bl FUN_02062D80
	ldr r0, [r4, #0x30]
	movs r1, #1
	bl FUN_02062E28
	ldr r0, [r4, #0x30]
	bl FUN_02063070
	ldr r1, [r5, #0x28]
	adds r4, r0, #0
	bl FUN_021E931C
	ldr r1, [r5, #0x24]
	adds r0, r4, #0
	bl FUN_02020690
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov8_0224BFCC

	thumb_func_start ov8_0224C098
ov8_0224C098: @ 0x0224C098
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r5, #0x40
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x3c]
	bl FUN_0205EAFC
	ldr r1, [r5, #0x34]
	adds r4, r0, #0
	ldr r1, [r1, #0x28]
	bl FUN_021E931C
	ldr r1, [r5, #0x34]
	adds r0, r4, #0
	ldr r1, [r1, #0x24]
	bl FUN_02020690
	ldr r0, [r5, #0x30]
	bl FUN_02061AF4
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov8_0224C098

	thumb_func_start ov8_0224C0C4
ov8_0224C0C4: @ 0x0224C0C4
	ldr r0, [r0, #0x6c]
	bx lr
	thumb_func_end ov8_0224C0C4

	thumb_func_start ov8_0224C0C8
ov8_0224C0C8: @ 0x0224C0C8
	push {r4, lr}
	sub sp, #8
	adds r3, r1, #0
	add r1, sp, #4
	str r1, [sp]
	adds r4, r2, #0
	ldr r0, [r0, #0x3c]
	ldr r1, [r3]
	ldr r2, [r3, #4]
	adds r3, r4, #0
	bl ov8_0224BAA0
	ldr r0, _0224C0F8 @ =0x0224C764
	lsls r1, r4, #2
	ldr r2, [sp, #4]
	ldr r0, [r0, r1]
	cmp r2, r0
	ble _0224C0F2
	add sp, #8
	movs r0, #1
	pop {r4, pc}
_0224C0F2:
	movs r0, #0
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_0224C0F8: .4byte 0x0224C764
	thumb_func_end ov8_0224C0C8

	thumb_func_start ov8_0224C0FC
ov8_0224C0FC: @ 0x0224C0FC
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0x40
	movs r3, #0
	movs r2, #1
	str r3, [r4, #0x28]
	str r2, [r0, #0x40]
	str r3, [r4, #0x2c]
	cmp r1, #1
	bne _0224C118
	ldr r0, [r4, #0x20]
	bl FUN_0206447C
	str r0, [r4, #0x20]
_0224C118:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov8_0224C0FC

	thumb_func_start ov8_0224C11C
ov8_0224C11C: @ 0x0224C11C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r0, #0x40]
	adds r5, r1, #0
	adds r4, #0x40
	cmp r0, #0
	beq _0224C16E
	cmp r0, #1
	beq _0224C134
	cmp r0, #2
	beq _0224C166
	pop {r3, r4, r5, pc}
_0224C134:
	ldr r0, [r4, #0x30]
	bl FUN_020655F4
	cmp r0, #1
	bne _0224C16E
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x24]
	cmp r1, r0
	blt _0224C14E
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0224C14E:
	ldr r0, [r4, #0x20]
	adds r1, r5, #0
	bl FUN_02065838
	adds r1, r0, #0
	ldr r0, [r4, #0x30]
	bl FUN_02065638
	ldr r0, [r4, #0x28]
	adds r0, r0, #1
	str r0, [r4, #0x28]
	pop {r3, r4, r5, pc}
_0224C166:
	movs r0, #1
	str r0, [r4, #0x2c]
	movs r0, #0
	str r0, [r4]
_0224C16E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov8_0224C11C

	thumb_func_start ov8_0224C170
ov8_0224C170: @ 0x0224C170
	push {r3, lr}
	ldr r2, [r0, #0x18]
	cmp r2, #1
	bne _0224C194
	asrs r2, r1, #0xb
	lsrs r2, r2, #0x14
	adds r2, r1, r2
	asrs r2, r2, #0xc
	beq _0224C194
	movs r1, #8
	cmp r2, #2
	bgt _0224C18C
	movs r1, #0xc
	b _0224C190
_0224C18C:
	ble _0224C190
	movs r1, #0x10
_0224C190:
	bl ov8_0224C11C
_0224C194:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov8_0224C170

	thumb_func_start ov8_0224C198
ov8_0224C198: @ 0x0224C198
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	movs r1, #2
	bl FUN_02027F6C
	movs r1, #0x7e
	adds r4, r0, #0
	movs r0, #4
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0x7e
	str r0, [sp, #8]
	movs r1, #0
	lsls r2, r2, #2
	blx FUN_020D5124
	ldr r0, [sp, #8]
	str r6, [r0]
	ldr r1, [r6, #4]
	str r0, [r1, #0x24]
	bl ov8_0224C3B4
	ldr r0, [r6, #0x40]
	movs r1, #0x20
	bl FUN_021DF4A8
	ldr r0, [r6, #0x38]
	movs r1, #0
	bl FUN_02062CCC
	ldr r0, [r6, #0x3c]
	movs r5, #0xd2
	bl FUN_0205EB3C
	adds r7, r0, #0
	ldr r0, [r6, #0x3c]
	bl FUN_0205EB98
	cmp r0, #1
	bne _0224C1F6
	movs r5, #0xd3
_0224C1F6:
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_02061AD4
	adds r0, r6, #0
	movs r1, #1
	bl FUN_021F5AA4
	ldr r0, [sp, #8]
	bl ov8_0224C444
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x1c]
	ldr r5, _0224C378 @ =0x0224C8D4
	ldr r1, [r0]
_0224C216:
	ldr r0, [r5]
	cmp r0, r1
	beq _0224C228
	ldr r0, [sp, #4]
	adds r5, #0x1c
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _0224C216
_0224C228:
	movs r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0224C302
	movs r0, #1
	strh r0, [r4]
	movs r0, #8
	strh r0, [r4, #2]
	ldr r0, [sp, #4]
	cmp r0, #2
	beq _0224C302
	lsls r1, r0, #2
	ldr r0, _0224C37C @ =0x0224C6F8
	ldr r0, [r0, r1]
	str r0, [sp]
	bl FUN_0201D35C
	ldr r1, [r5, #8]
	blx FUN_020E2178
	ldr r0, [r5, #4]
	adds r7, r4, #4
	adds r0, r1, r0
	strh r0, [r4, #2]
	adds r0, r4, #6
	str r0, [sp, #0xc]
_0224C25C:
	bl FUN_0201D35C
	ldr r1, [r5, #0x14]
	blx FUN_020E2178
	strh r1, [r4, #4]
	bl FUN_0201D35C
	ldr r1, [r5, #0x18]
	blx FUN_020E2178
	strh r1, [r4, #6]
	movs r0, #4
	ldrsh r2, [r4, r0]
	movs r0, #6
	ldrsh r0, [r4, r0]
	ldr r1, [r5, #0x14]
	muls r1, r0, r1
	ldr r0, [sp]
	adds r0, r0, r2
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _0224C25C
	movs r0, #0
	ldrsh r1, [r7, r0]
	ldr r0, [r5, #0xc]
	movs r2, #6
	adds r0, r1, r0
	strh r0, [r7]
	ldr r1, [sp, #0xc]
	movs r0, #0
	ldrsh r1, [r1, r0]
	ldr r0, [r5, #0x10]
	movs r3, #0
	adds r1, r1, r0
	ldr r0, [sp, #0xc]
	strh r1, [r0]
	movs r1, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r6, #0x38]
	bl FUN_0206326C
	cmp r0, #0
	bne _0224C25C
	movs r0, #2
	ldrsh r2, [r4, r0]
	ldr r1, [r5, #4]
	ldr r0, [r5, #8]
	adds r0, r1, r0
	cmp r2, r0
	blt _0224C2C8
	bl FUN_02022974
_0224C2C8:
	movs r0, #4
	ldrsh r2, [r4, r0]
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	adds r0, r1, r0
	cmp r2, r0
	blt _0224C2DA
	bl FUN_02022974
_0224C2DA:
	movs r0, #6
	ldrsh r2, [r4, r0]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x18]
	adds r0, r1, r0
	cmp r2, r0
	blt _0224C2EC
	bl FUN_02022974
_0224C2EC:
	movs r1, #4
	movs r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	adds r0, r6, #0
	bl FUN_02054F68
	cmp r0, #0
	beq _0224C302
	bl FUN_02022974
_0224C302:
	movs r0, #2
	ldrsh r0, [r4, r0]
	cmp r0, #8
	beq _0224C362
	ldr r0, [sp, #4]
	lsls r1, r0, #2
	ldr r0, _0224C380 @ =0x0224C708
	ldr r5, [r0, r1]
	ldr r1, [r5]
	cmp r1, #8
	beq _0224C350
_0224C318:
	movs r0, #2
	ldrsh r0, [r4, r0]
	cmp r1, r0
	beq _0224C348
	movs r1, #4
	movs r2, #6
	ldrsh r1, [r5, r1]
	ldrsh r2, [r5, r2]
	adds r0, r6, #0
	bl FUN_0203A468
	adds r7, r0, #0
	lsls r1, r7, #0x10
	adds r0, r6, #0
	lsrs r1, r1, #0x10
	movs r2, #0x58
	bl FUN_0203A574
	lsls r1, r7, #0x10
	adds r0, r6, #0
	lsrs r1, r1, #0x10
	movs r2, #1
	bl FUN_0203A584
_0224C348:
	adds r5, #8
	ldr r1, [r5]
	cmp r1, #8
	bne _0224C318
_0224C350:
	movs r1, #4
	movs r2, #6
	movs r3, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	ldr r0, [r6, #0x40]
	bl FUN_021F4CEC
_0224C362:
	ldr r0, _0224C384 @ =ov8_0224C3B0
	ldr r1, [sp, #8]
	movs r2, #0
	bl FUN_0200D9E8
	movs r2, #0x7d
	ldr r1, [sp, #8]
	lsls r2, r2, #2
	str r0, [r1, r2]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224C378: .4byte 0x0224C8D4
_0224C37C: .4byte 0x0224C6F8
_0224C380: .4byte 0x0224C708
_0224C384: .4byte ov8_0224C3B0
	thumb_func_end ov8_0224C198

	thumb_func_start ov8_0224C388
ov8_0224C388: @ 0x0224C388
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r0, #0x24]
	movs r0, #0x7d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200DA58
	adds r0, r4, #0
	bl ov8_0224C4F8
	adds r0, r4, #0
	bl FUN_020181C4
	ldr r0, [r5, #4]
	movs r1, #0
	str r1, [r0, #0x24]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov8_0224C388

	thumb_func_start ov8_0224C3B0
ov8_0224C3B0: @ 0x0224C3B0
	bx lr
	.align 2, 0
	thumb_func_end ov8_0224C3B0

	thumb_func_start ov8_0224C3B4
ov8_0224C3B4: @ 0x0224C3B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x71
	lsls r0, r0, #2
	adds r4, r5, r0
	ldr r0, [r5]
	movs r6, #0x6d
	ldr r7, [r0, #0x48]
	movs r0, #0xa
	str r7, [r4]
	str r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, [r5]
	ldr r0, [r0, #0xc]
	bl FUN_02025E38
	movs r1, #4
	bl FUN_02025F34
	cmp r0, #1
	bne _0224C3EC
	movs r6, #0x5b
	b _0224C3F8
_0224C3EC:
	ldr r0, [r5]
	ldr r0, [r0, #0x1c]
	ldr r0, [r0]
	cmp r0, #0x5a
	bne _0224C3F8
	movs r6, #0x77
_0224C3F8:
	adds r0, r4, #0
	adds r0, #0xc
	adds r1, r6, #0
	movs r2, #0x20
	blx FUN_020D5124
	ldr r0, [r4, #4]
	movs r3, #0
	str r0, [sp]
	str r3, [sp, #4]
	adds r0, r7, #0
	subs r1, r3, #1
	movs r2, #1
	bl FUN_021D57FC
	ldrb r2, [r4, #0xa]
	ldrb r5, [r4, #9]
	movs r1, #0
	lsls r3, r2, #0xa
	ldrb r2, [r4, #8]
	lsls r5, r5, #5
	adds r0, r7, #0
	orrs r2, r5
	orrs r2, r3
	lsls r2, r2, #0x10
	ldrb r3, [r4, #0xb]
	mvns r1, r1
	lsrs r2, r2, #0x10
	bl FUN_021D5834
	adds r4, #0xc
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_021D585C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov8_0224C3B4

	thumb_func_start ov8_0224C444
ov8_0224C444: @ 0x0224C444
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r0, #0
	ldr r0, [r6]
	movs r7, #0
	ldr r0, [r0, #0x38]
	adds r5, r6, #4
	str r0, [sp]
	str r7, [sp, #0xc]
	bl FUN_02062858
	str r0, [sp, #4]
	ldr r0, [sp]
	add r1, sp, #8
	add r2, sp, #0xc
	movs r3, #1
	bl FUN_020625B0
	cmp r0, #0
	beq _0224C4EE
_0224C46C:
	ldr r0, [sp, #8]
	bl FUN_02062910
	adds r4, r0, #0
	ldr r0, [sp, #8]
	movs r1, #0
	bl FUN_020629D8
	str r0, [r5, #8]
	cmp r4, #0xff
	beq _0224C492
	ldr r0, [sp, #8]
	bl FUN_02062950
	cmp r0, #1
	bne _0224C4DE
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _0224C4DE
_0224C492:
	movs r0, #1
	str r0, [r5]
	ldr r0, [sp, #8]
	bl FUN_0206298C
	str r0, [r5, #4]
	ldr r0, [sp, #8]
	cmp r4, #0xff
	str r0, [r5, #0x14]
	str r6, [r5, #0x18]
	bne _0224C4AC
	movs r0, #2
	str r0, [r5, #8]
_0224C4AC:
	ldr r0, [r6]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0x40]
	ldr r2, [r5, #8]
	movs r3, #3
	bl FUN_021F4840
	ldr r2, [sp, #4]
	str r0, [r5, #0x10]
	ldr r0, _0224C4F4 @ =ov8_0224C518
	adds r1, r5, #0
	adds r2, r2, #2
	bl FUN_0200D9E8
	str r0, [r5, #0xc]
	cmp r0, #0
	bne _0224C4D2
	bl FUN_02022974
_0224C4D2:
	adds r7, r7, #1
	cmp r7, #0x10
	blt _0224C4DC
	bl FUN_02022974
_0224C4DC:
	adds r5, #0x1c
_0224C4DE:
	ldr r0, [sp]
	add r1, sp, #8
	add r2, sp, #0xc
	movs r3, #1
	bl FUN_020625B0
	cmp r0, #0
	bne _0224C46C
_0224C4EE:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C4F4: .4byte ov8_0224C518
	thumb_func_end ov8_0224C444

	thumb_func_start ov8_0224C4F8
ov8_0224C4F8: @ 0x0224C4F8
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #4
	adds r6, r4, #0
_0224C500:
	ldr r0, [r5]
	cmp r0, #0
	beq _0224C50E
	ldr r0, [r5, #0xc]
	bl FUN_0200DA58
	str r6, [r5]
_0224C50E:
	adds r4, r4, #1
	adds r5, #0x1c
	cmp r4, #0x10
	blt _0224C500
	pop {r4, r5, r6, pc}
	thumb_func_end ov8_0224C4F8

	thumb_func_start ov8_0224C518
ov8_0224C518: @ 0x0224C518
	bx lr
	.align 2, 0
	thumb_func_end ov8_0224C518

	thumb_func_start ov8_0224C51C
ov8_0224C51C: @ 0x0224C51C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	bl FUN_0203D174
	bl FUN_02027860
	bl FUN_02027F80
	cmp r0, #2
	beq _0224C538
	add sp, #0x20
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C538:
	movs r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x3c]
	ldr r4, [r5, #0x38]
	str r0, [sp, #0x10]
	bl FUN_0205EB3C
	adds r6, r0, #0
	bl FUN_0206298C
	bl FUN_0206447C
	adds r7, r0, #0
	adds r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x1c
	movs r3, #1
	bl FUN_020625B0
	cmp r0, #0
	beq _0224C5D0
_0224C564:
	ldr r1, [sp, #0x18]
	cmp r1, r6
	beq _0224C5C0
	adds r0, r5, #0
	bl FUN_02067F88
	cmp r0, #1
	bne _0224C5C0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	adds r2, r7, #0
	movs r3, #2
	bl FUN_02067D58
	movs r1, #0
	mvns r1, r1
	str r0, [sp, #0x14]
	cmp r0, r1
	beq _0224C5C0
	ldr r0, [sp, #0x18]
	bl FUN_02062960
	adds r4, r0, #0
	ldr r1, _0224C5D8 @ =0x00000F58
	ldr r2, [sp, #0x18]
	adds r0, r5, #0
	bl FUN_0203E880
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0203F254
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x14]
	adds r0, r5, #0
	adds r3, r7, #0
	bl FUN_0203E8B0
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224C5C0:
	adds r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x1c
	movs r3, #1
	bl FUN_020625B0
	cmp r0, #0
	bne _0224C564
_0224C5D0:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224C5D8: .4byte 0x00000F58
	thumb_func_end ov8_0224C51C

	thumb_func_start ov8_0224C5DC
ov8_0224C5DC: @ 0x0224C5DC
	push {r4, lr}
	adds r4, r1, #0
	bl FUN_0203D174
	bl FUN_02027860
	bl FUN_02027F80
	cmp r0, #2
	beq _0224C5F4
	movs r0, #0
	pop {r4, pc}
_0224C5F4:
	adds r0, r4, #0
	bl FUN_02063020
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02062FF4
	adds r0, r4, #0
	bl FUN_02063040
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02063004
	adds r0, r4, #0
	movs r1, #2
	bl FUN_020629FC
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02062A04
	adds r0, r4, #0
	movs r1, #3
	bl FUN_020633A8
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov8_0224C5DC

	thumb_func_start ov8_0224C62C
ov8_0224C62C: @ 0x0224C62C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r1, [r3]
	adds r6, r2, #0
	str r0, [sp]
	str r3, [sp, #4]
	cmp r1, #0
	beq _0224C644
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C644:
	bl FUN_0203D174
	bl FUN_02027860
	adds r4, r0, #0
	bl FUN_02027F80
	cmp r0, #2
	beq _0224C65C
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C65C:
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02027F6C
	adds r7, r0, #0
	movs r0, #2
	ldrsh r0, [r7, r0]
	cmp r0, #8
	bne _0224C674
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C674:
	ldr r0, [sp]
	ldr r2, _0224C6D0 @ =0x0224C8D4
	ldr r0, [r0, #0x1c]
	movs r4, #0
	ldr r1, [r0]
_0224C67E:
	ldr r0, [r2]
	cmp r0, r1
	beq _0224C68C
	adds r4, r4, #1
	adds r2, #0x1c
	cmp r4, #2
	blt _0224C67E
_0224C68C:
	cmp r4, #2
	bne _0224C694
	bl FUN_02022974
_0224C694:
	ldr r0, _0224C6D4 @ =0x0224C708
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	ldr r1, [r0]
	cmp r1, #8
	beq _0224C6C6
	movs r4, #6
	movs r3, #4
_0224C6A4:
	ldrsh r2, [r0, r3]
	cmp r2, r5
	bne _0224C6BE
	ldrsh r2, [r0, r4]
	cmp r2, r6
	bne _0224C6BE
	movs r2, #2
	ldrsh r2, [r7, r2]
	cmp r1, r2
	bne _0224C6BE
	add sp, #8
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0224C6BE:
	adds r0, #8
	ldr r1, [r0]
	cmp r1, #8
	bne _0224C6A4
_0224C6C6:
	ldr r1, [sp, #4]
	movs r0, #1
	str r0, [r1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224C6D0: .4byte 0x0224C8D4
_0224C6D4: .4byte 0x0224C708
	thumb_func_end ov8_0224C62C
	@ 0x0224C6D8
