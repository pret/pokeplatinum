	.include "macros/function.inc"


	.text

	thumb_func_start ov70_0225C700
ov70_0225C700: @ 0x0225C700
	movs r3, #0
	ldrsh r2, [r0, r3]
	lsls r2, r2, #0xc
	str r2, [r1]
	movs r2, #2
	ldrsh r0, [r0, r2]
	lsls r0, r0, #0xc
	str r0, [r1, #8]
	str r3, [r1, #4]
	bx lr
	thumb_func_end ov70_0225C700

	thumb_func_start ov70_0225C714
ov70_0225C714: @ 0x0225C714
	ldr r3, [r0]
	asrs r2, r3, #0xb
	lsrs r2, r2, #0x14
	adds r2, r3, r2
	asrs r2, r2, #0xc
	strh r2, [r1]
	ldr r2, [r0, #8]
	asrs r0, r2, #0xb
	lsrs r0, r0, #0x14
	adds r0, r2, r0
	asrs r0, r0, #0xc
	strh r0, [r1, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225C714

	thumb_func_start ov70_0225C730
ov70_0225C730: @ 0x0225C730
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0
	adds r7, r3, #0
	bl FUN_0200723C
	adds r4, r0, #0
	blx FUN_020B3C1C
	adds r6, r0, #0
	bl FUN_0201CBCC
	adds r0, r6, #0
	add r1, sp, #0xc
	add r2, sp, #8
	blx FUN_020AE9B8
	adds r0, r6, #0
	blx FUN_020AEA70
	str r0, [sp, #4]
	adds r0, r4, #0
	bl FUN_02022F24
	adds r6, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_02018144
	str r0, [r5]
	adds r1, r4, #0
	adds r2, r6, #0
	blx FUN_020D50B8
	ldr r0, [r5]
	blx FUN_020B3C1C
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	adds r5, r0, #0
	blx FUN_020AE8EC
	ldr r1, [sp, #4]
	adds r0, r5, #0
	blx FUN_020AEA18
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225C730

	thumb_func_start ov70_0225C7A0
ov70_0225C7A0: @ 0x0225C7A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x60
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r5, #0
	add r1, sp, #0x54
	add r2, sp, #0x58
	add r3, sp, #0x5c
	bl FUN_02017358
	adds r0, r5, #0
	add r1, sp, #0x48
	add r2, sp, #0x4c
	add r3, sp, #0x50
	bl FUN_02017374
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02017394
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02017394
	adds r7, r0, #0
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02017394
	adds r5, r0, #0
	add r0, sp, #0x24
	blx FUN_020BB4C8
	asrs r0, r6, #4
	lsls r3, r0, #1
	lsls r1, r3, #1
	ldr r2, _0225C854 @ =0x020F983C
	adds r3, r3, #1
	lsls r3, r3, #1
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	add r0, sp, #0
	bl FUN_020BB5AC
	add r1, sp, #0x24
	add r0, sp, #0
	adds r2, r1, #0
	blx FUN_020BB8EC
	asrs r0, r5, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	ldr r3, _0225C854 @ =0x020F983C
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5E4
	add r1, sp, #0x24
	add r0, sp, #0
	adds r2, r1, #0
	blx FUN_020BB8EC
	asrs r0, r7, #4
	lsls r2, r0, #1
	lsls r1, r2, #1
	ldr r3, _0225C854 @ =0x020F983C
	adds r2, r2, #1
	lsls r2, r2, #1
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	add r0, sp, #0
	bl FUN_020BB5C8
	add r1, sp, #0x24
	add r0, sp, #0
	adds r2, r1, #0
	blx FUN_020BB8EC
	ldr r0, [r4, #8]
	add r1, sp, #0x54
	add r2, sp, #0x24
	add r3, sp, #0x48
	bl FUN_0201CED8
	add sp, #0x60
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225C854: .4byte 0x020F983C
	thumb_func_end ov70_0225C7A0

	thumb_func_start ov70_0225C858
ov70_0225C858: @ 0x0225C858
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r1, #4
	bl FUN_02018144
	adds r4, r0, #0
	movs r0, #0x23
	movs r1, #0x2a
	adds r2, r5, #0
	bl FUN_0222BCE8
	str r0, [r4]
	movs r0, #1
	movs r1, #0
	str r0, [sp]
	movs r0, #0xae
	adds r2, r1, #0
	adds r3, r5, #0
	bl FUN_02006FE8
	adds r5, r0, #0
	ldr r0, [r4]
	adds r1, r5, #0
	bl FUN_0222BD50
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225C858

	thumb_func_start ov70_0225C894
ov70_0225C894: @ 0x0225C894
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0222BD30
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225C894

	thumb_func_start ov70_0225C8A8
ov70_0225C8A8: @ 0x0225C8A8
	movs r0, #0x23
	bx lr
	thumb_func_end ov70_0225C8A8

	thumb_func_start ov70_0225C8AC
ov70_0225C8AC: @ 0x0225C8AC
	ldr r3, _0225C8B4 @ =FUN_0222BDAC
	ldr r0, [r0]
	bx r3
	nop
_0225C8B4: .4byte FUN_0222BDAC
	thumb_func_end ov70_0225C8AC

	thumb_func_start ov70_0225C8B8
ov70_0225C8B8: @ 0x0225C8B8
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0222BDE4
	lsrs r0, r0, #0xf
	pop {r3, pc}
	thumb_func_end ov70_0225C8B8

	thumb_func_start ov70_0225C8C4
ov70_0225C8C4: @ 0x0225C8C4
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0222BDE4
	ldr r1, _0225C8D4 @ =0x00007FFF
	ands r0, r1
	pop {r3, pc}
	nop
_0225C8D4: .4byte 0x00007FFF
	thumb_func_end ov70_0225C8C4

	thumb_func_start ov70_0225C8D8
ov70_0225C8D8: @ 0x0225C8D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	movs r5, #0
	ldr r7, [sp, #0x28]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r5, [sp, #0x10]
_0225C8EA:
	ldr r0, [sp, #0x10]
	movs r4, #0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
_0225C8F2:
	lsls r1, r4, #0x10
	ldr r0, [sp]
	lsrs r1, r1, #0x10
	adds r2, r6, #0
	bl ov70_0225C8B8
	ldr r1, [sp, #4]
	cmp r0, r1
	bne _0225C91A
	cmp r5, r7
	blo _0225C918
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	strh r4, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x14
	strh r1, [r0]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225C918:
	adds r5, r5, #1
_0225C91A:
	adds r4, r4, #1
	cmp r4, #0x23
	blt _0225C8F2
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x2a
	blt _0225C8EA
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225C8D8

	thumb_func_start ov70_0225C930
ov70_0225C930: @ 0x0225C930
	ldr r3, _0225C94C @ =0x0226D4DC
	movs r2, #0
_0225C934:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C93E
	movs r0, #1
	bx lr
_0225C93E:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, #0x20
	blo _0225C934
	movs r0, #0
	bx lr
	nop
_0225C94C: .4byte 0x0226D4DC
	thumb_func_end ov70_0225C930

	thumb_func_start ov70_0225C950
ov70_0225C950: @ 0x0225C950
	ldr r3, _0225C96C @ =0x0226D4CC
	movs r2, #0
_0225C954:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C95E
	movs r0, #1
	bx lr
_0225C95E:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, #3
	blo _0225C954
	movs r0, #0
	bx lr
	nop
_0225C96C: .4byte 0x0226D4CC
	thumb_func_end ov70_0225C950

	thumb_func_start ov70_0225C970
ov70_0225C970: @ 0x0225C970
	ldr r3, _0225C98C @ =0x0226D4D4
	movs r2, #0
_0225C974:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C97E
	movs r0, #1
	bx lr
_0225C97E:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, #7
	blo _0225C974
	movs r0, #0
	bx lr
	nop
_0225C98C: .4byte 0x0226D4D4
	thumb_func_end ov70_0225C970

	thumb_func_start ov70_0225C990
ov70_0225C990: @ 0x0225C990
	ldr r3, _0225C9AC @ =0x0226D4D0
	movs r2, #0
_0225C994:
	ldrb r1, [r3]
	cmp r0, r1
	bne _0225C99E
	movs r0, #1
	bx lr
_0225C99E:
	adds r2, r2, #1
	adds r3, r3, #1
	cmp r2, #4
	blo _0225C994
	movs r0, #0
	bx lr
	nop
_0225C9AC: .4byte 0x0226D4D0
	thumb_func_end ov70_0225C990

	thumb_func_start ov70_0225C9B0
ov70_0225C9B0: @ 0x0225C9B0
	ldr r0, [r0]
	bx lr
	thumb_func_end ov70_0225C9B0

	thumb_func_start ov70_0225C9B4
ov70_0225C9B4: @ 0x0225C9B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r3, #0
	movs r1, #0x28
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x28
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r1, [sp, #4]
	adds r0, r5, #0
	bl FUN_0222BE18
	str r0, [r4]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x20]
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_022343A8
	str r0, [r4, #4]
	ldr r1, [sp, #4]
	movs r0, #0x20
	bl FUN_0222D848
	str r0, [r4, #0x10]
	movs r0, #0x28
	adds r7, r5, #0
	muls r7, r0, r7
	ldr r0, [sp, #4]
	adds r1, r7, #0
	strh r5, [r4, #0xc]
	bl FUN_02018144
	movs r1, #0
	adds r2, r7, #0
	str r0, [r4, #8]
	blx FUN_020D5124
	ldr r0, [sp]
	str r0, [r4, #0x14]
	adds r0, r4, #0
	strh r6, [r4, #0xe]
	bl ov70_0225D0D8
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225C9B4

	thumb_func_start ov70_0225CA20
ov70_0225CA20: @ 0x0225CA20
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	bl FUN_020181C4
	ldr r0, [r4, #0x10]
	bl FUN_0222D880
	ldr r0, [r4, #4]
	bl FUN_02234548
	ldr r0, [r4]
	bl FUN_0222BE58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov70_0225CA20

	thumb_func_start ov70_0225CA44
ov70_0225CA44: @ 0x0225CA44
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	bl FUN_0222BE84
	adds r0, r4, #0
	ldr r1, [r4, #4]
	adds r0, #0x18
	bl ov70_0225D954
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225CA44

	thumb_func_start ov70_0225CA5C
ov70_0225CA5C: @ 0x0225CA5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrh r0, [r5, #0xc]
	movs r6, #0
	cmp r0, #0
	ble _0225CA8C
	adds r4, r6, #0
_0225CA6C:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl ov70_0225D2FC
	cmp r0, #0
	bne _0225CA82
	ldr r0, [r5, #8]
	adds r1, r5, #0
	adds r0, r0, r4
	ldr r2, [r0, #0x24]
	blx r2
_0225CA82:
	ldrh r0, [r5, #0xc]
	adds r6, r6, #1
	adds r4, #0x28
	cmp r6, r0
	blt _0225CA6C
_0225CA8C:
	ldr r0, [r5, #0x14]
	bl ov70_0225C9B0
	adds r4, r0, #0
	ldr r0, [r5, #0x10]
	add r1, sp, #8
	bl FUN_0222D8D0
	cmp r0, #1
	bne _0225CAC8
	add r7, sp, #0
	add r6, sp, #8
_0225CAA4:
	ldr r1, [r5]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_0222CA88
	cmp r0, #1
	bne _0225CABC
	ldr r0, [r5]
	adds r1, r7, #0
	bl FUN_0222BE70
_0225CABC:
	ldr r0, [r5, #0x10]
	adds r1, r6, #0
	bl FUN_0222D8D0
	cmp r0, #1
	beq _0225CAA4
_0225CAC8:
	ldr r0, [r5, #4]
	bl FUN_02234590
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225CA5C

	thumb_func_start ov70_0225CAD4
ov70_0225CAD4: @ 0x0225CAD4
	ldr r3, _0225CADC @ =FUN_022345C4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CADC: .4byte FUN_022345C4
	thumb_func_end ov70_0225CAD4

	thumb_func_start ov70_0225CAE0
ov70_0225CAE0: @ 0x0225CAE0
	ldr r3, _0225CAE8 @ =FUN_02234604
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CAE8: .4byte FUN_02234604
	thumb_func_end ov70_0225CAE0

	thumb_func_start ov70_0225CAEC
ov70_0225CAEC: @ 0x0225CAEC
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r1, [r3, #4]
	lsls r3, r2, #2
	ldr r2, _0225CB00 @ =0x0226D518
	adds r0, #0x18
	ldr r2, [r2, r3]
	ldr r3, _0225CB04 @ =ov70_0225D920
	bx r3
	nop
_0225CB00: .4byte 0x0226D518
_0225CB04: .4byte ov70_0225D920
	thumb_func_end ov70_0225CAEC

	thumb_func_start ov70_0225CB08
ov70_0225CB08: @ 0x0225CB08
	lsls r2, r1, #2
	ldr r1, _0225CB14 @ =0x0226D518
	ldr r3, _0225CB18 @ =ov70_0225D93C
	adds r0, #0x18
	ldr r1, [r1, r2]
	bx r3
	.align 2, 0
_0225CB14: .4byte 0x0226D518
_0225CB18: .4byte ov70_0225D93C
	thumb_func_end ov70_0225CB08

	thumb_func_start ov70_0225CB1C
ov70_0225CB1C: @ 0x0225CB1C
	ldr r3, _0225CB24 @ =FUN_0222D894
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0225CB24: .4byte FUN_0222D894
	thumb_func_end ov70_0225CB1C

	thumb_func_start ov70_0225CB28
ov70_0225CB28: @ 0x0225CB28
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	add r2, sp, #4
	adds r4, r1, #0
	ldr r0, [r5, #0x14]
	movs r1, #3
	adds r2, #2
	add r3, sp, #4
	bl ov70_0225C8D8
	cmp r0, #0
	bne _0225CB4A
	bl FUN_02022974
_0225CB4A:
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0225CB5C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225CB28

	thumb_func_start ov70_0225CB5C
ov70_0225CB5C: @ 0x0225CB5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	str r3, [sp]
	bl ov70_0225D2C0
	adds r4, r0, #0
	lsls r0, r7, #4
	add r1, sp, #4
	strh r0, [r1]
	ldr r0, [sp]
	movs r2, #0
	lsls r0, r0, #4
	strh r0, [r1, #2]
	strh r6, [r1, #4]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	ldrh r0, [r5, #0xe]
	cmp r0, #0
	bne _0225CB8C
	strh r2, [r1, #0xa]
	b _0225CB90
_0225CB8C:
	movs r0, #0x61
	strh r0, [r1, #0xa]
_0225CB90:
	ldr r0, [r5]
	add r1, sp, #4
	bl FUN_0222BEC0
	str r0, [r4]
	ldr r0, [r5, #4]
	ldr r1, [r4]
	bl FUN_0223461C
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	str r4, [r5, #0x20]
	bl ov70_0225CDEC
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225CB5C

	thumb_func_start ov70_0225CBB8
ov70_0225CBB8: @ 0x0225CBB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r7, r1, #0
	str r2, [sp, #4]
	bl ov70_0225D2C0
	movs r6, #0
	str r0, [sp, #8]
	adds r4, r6, #0
_0225CBCC:
	str r4, [sp]
	add r2, sp, #0xc
	ldr r0, [r5, #0x14]
	adds r1, r7, #4
	adds r2, #2
	add r3, sp, #0xc
	bl ov70_0225C8D8
	cmp r0, #0
	bne _0225CBE6
	add sp, #0x1c
	movs r0, #0
	pop {r4, r5, r6, r7, pc}
_0225CBE6:
	adds r0, r5, #0
	bl ov70_0225CCAC
	cmp r0, #0
	bne _0225CBF4
	movs r6, #1
	b _0225CC06
_0225CBF4:
	add r1, sp, #0xc
	add r2, sp, #0xc
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	bl ov70_0225CEDC
	cmp r0, #0
	bne _0225CC06
	movs r6, #1
_0225CC06:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r6, #0
	beq _0225CBCC
	add r1, sp, #0xc
	ldrh r0, [r1, #2]
	lsls r0, r0, #4
	strh r0, [r1, #4]
	ldrh r0, [r1]
	lsls r0, r0, #4
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r0, #1
	strh r0, [r1, #0xc]
	ldr r0, [sp, #4]
	strh r0, [r1, #0xe]
	ldr r0, [r5]
	add r1, sp, #0x10
	bl FUN_0222BEC0
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, [r1]
	bl FUN_0223461C
	ldr r1, [sp, #8]
	movs r2, #0
	str r0, [r1, #4]
	adds r0, r5, #0
	bl ov70_0225CDEC
	ldr r0, [sp, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225CBB8

	thumb_func_start ov70_0225CC54
ov70_0225CC54: @ 0x0225CC54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02234798
	ldr r0, [r4]
	bl FUN_0222BF08
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x28
	blx FUN_020D5124
	pop {r4, pc}
	thumb_func_end ov70_0225CC54

	thumb_func_start ov70_0225CC70
ov70_0225CC70: @ 0x0225CC70
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0xc]
	adds r7, r1, #0
	movs r6, #0
	cmp r0, #0
	ble _0225CCA6
	adds r4, r6, #0
_0225CC80:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _0225CC9C
	movs r1, #4
	bl FUN_0222BF90
	cmp r0, r7
	bne _0225CC9C
	movs r0, #0x28
	ldr r1, [r5, #8]
	muls r0, r6, r0
	adds r0, r1, r0
	pop {r3, r4, r5, r6, r7, pc}
_0225CC9C:
	ldrh r0, [r5, #0xc]
	adds r6, r6, #1
	adds r4, #0x28
	cmp r6, r0
	blt _0225CC80
_0225CCA6:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225CC70

	thumb_func_start ov70_0225CCAC
ov70_0225CCAC: @ 0x0225CCAC
	ldr r0, [r0, #0x20]
	bx lr
	thumb_func_end ov70_0225CCAC

	thumb_func_start ov70_0225CCB0
ov70_0225CCB0: @ 0x0225CCB0
	ldr r0, [r0, #0x24]
	bx lr
	thumb_func_end ov70_0225CCB0

	thumb_func_start ov70_0225CCB4
ov70_0225CCB4: @ 0x0225CCB4
	push {r0, r1, r2, r3}
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _0225CCC4
	bl FUN_02022974
_0225CCC4:
	add r1, sp, #8
	ldrh r2, [r1, #4]
	mov r3, sp
	ldr r0, [r4]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_0222C1A4
	add r1, sp, #8
	mov r3, sp
	ldrh r2, [r1, #4]
	ldr r0, [r4]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_0222C1B4
	ldr r0, [r4]
	movs r1, #5
	movs r2, #0
	bl FUN_0222C000
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ov70_0225CCB4

	thumb_func_start ov70_0225CD04
ov70_0225CD04: @ 0x0225CD04
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	add r1, sp, #0x10
	adds r4, r2, #0
	mov r3, sp
	ldrh r2, [r1, #4]
	subs r3, r3, #4
	adds r5, r0, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov70_0225CCB4
	ldr r0, [r5]
	movs r1, #6
	adds r2, r4, #0
	bl FUN_0222C000
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ov70_0225CD04

	thumb_func_start ov70_0225CD34
ov70_0225CD34: @ 0x0225CD34
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	bne _0225CD44
	bl FUN_02022974
_0225CD44:
	ldr r0, [r4]
	bl FUN_0222C0FC
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1, #2]
	ldrh r0, [r1]
	lsls r1, r2, #0x10
	orrs r0, r1
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225CD34

	thumb_func_start ov70_0225CD60
ov70_0225CD60: @ 0x0225CD60
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	cmp r0, #0
	bne _0225CD70
	bl FUN_02022974
_0225CD70:
	ldr r0, [r5]
	adds r1, r4, #0
	bl FUN_0222BF90
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_0225CD60

	thumb_func_start ov70_0225CD7C
ov70_0225CD7C: @ 0x0225CD7C
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	movs r1, #5
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0222BF90
	cmp r0, #0
	beq _0225CD96
	bl FUN_02022974
_0225CD96:
	ldr r0, [r4]
	movs r1, #4
	bl FUN_0222BF90
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225CD7C

	thumb_func_start ov70_0225CDAC
ov70_0225CDAC: @ 0x0225CDAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	strh r6, [r1, #8]
	strb r7, [r1, #0xa]
	ldr r0, [r4]
	movs r1, #4
	bl FUN_0222BF90
	add r1, sp, #0
	strb r0, [r1, #0xb]
	ldr r0, [r5]
	add r1, sp, #4
	bl FUN_0222BE70
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225CDAC

	thumb_func_start ov70_0225CDEC
ov70_0225CDEC: @ 0x0225CDEC
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r4, #0xa
	blt _0225CDFC
	bl FUN_02022974
_0225CDFC:
	ldrb r0, [r5, #0xb]
	lsls r1, r0, #2
	ldr r0, _0225CE30 @ =0x0226D530
	ldr r2, [r0, r1]
	cmp r2, #0
	beq _0225CE0E
	adds r0, r5, #0
	adds r1, r6, #0
	blx r2
_0225CE0E:
	movs r2, #0
	strh r2, [r5, #8]
	strb r2, [r5, #0xa]
	adds r1, r5, #0
	strb r4, [r5, #0xb]
	adds r1, #0xc
	movs r0, #0x18
_0225CE1C:
	strb r2, [r1]
	adds r1, r1, #1
	subs r0, r0, #1
	bne _0225CE1C
	ldr r0, _0225CE34 @ =0x0226D558
	lsls r1, r4, #2
	ldr r0, [r0, r1]
	str r0, [r5, #0x24]
	pop {r4, r5, r6, pc}
	nop
_0225CE30: .4byte 0x0226D530
_0225CE34: .4byte 0x0226D558
	thumb_func_end ov70_0225CDEC

	thumb_func_start ov70_0225CE38
ov70_0225CE38: @ 0x0225CE38
	ldrb r0, [r0, #0xa]
	bx lr
	thumb_func_end ov70_0225CE38

	thumb_func_start ov70_0225CE3C
ov70_0225CE3C: @ 0x0225CE3C
	ldrb r0, [r0, #0xb]
	bx lr
	thumb_func_end ov70_0225CE3C

	thumb_func_start ov70_0225CE40
ov70_0225CE40: @ 0x0225CE40
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	movs r1, #6
	bl FUN_0222BF90
	adds r2, r0, #0
	ldr r0, [r4]
	ldr r1, [r5]
	bl FUN_0222C1C4
	cmp r0, #0
	bne _0225CE60
	movs r0, #0
	pop {r3, r4, r5, pc}
_0225CE60:
	movs r1, #4
	bl FUN_0222BF90
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225CC70
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225CE40

	thumb_func_start ov70_0225CE70
ov70_0225CE70: @ 0x0225CE70
	ldr r3, _0225CE78 @ =FUN_022347CC
	ldr r0, [r0, #4]
	bx r3
	nop
_0225CE78: .4byte FUN_022347CC
	thumb_func_end ov70_0225CE70

	thumb_func_start ov70_0225CE7C
ov70_0225CE7C: @ 0x0225CE7C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r0, r1, #4
	add r1, sp, #0
	strh r0, [r1]
	lsls r0, r2, #4
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r4]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl FUN_0222C2AC
	cmp r0, #0
	bne _0225CEAA
	add sp, #4
	movs r0, #0
	pop {r3, r4, pc}
_0225CEAA:
	ldrh r2, [r4, #0xc]
	movs r1, #0
	cmp r2, #0
	ble _0225CED0
	ldr r3, [r4, #8]
_0225CEB4:
	ldr r2, [r3]
	cmp r2, r0
	bne _0225CEC6
	movs r0, #0x28
	ldr r2, [r4, #8]
	muls r0, r1, r0
	add sp, #4
	adds r0, r2, r0
	pop {r3, r4, pc}
_0225CEC6:
	ldrh r2, [r4, #0xc]
	adds r1, r1, #1
	adds r3, #0x28
	cmp r1, r2
	blt _0225CEB4
_0225CED0:
	bl FUN_02022974
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225CE7C

	thumb_func_start ov70_0225CEDC
ov70_0225CEDC: @ 0x0225CEDC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5]
	adds r6, r1, #0
	adds r4, r2, #0
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5]
	bl FUN_0222C0F0
	add r2, sp, #0
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r1, [r2, r1]
	lsls r0, r6, #4
	cmp r1, r0
	bne _0225CF2C
	movs r1, #0xe
	ldrsh r2, [r2, r1]
	lsls r1, r4, #4
	cmp r2, r1
	bne _0225CF2C
	add sp, #0x10
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225CF2C:
	add r2, sp, #0
	movs r1, #8
	ldrsh r1, [r2, r1]
	cmp r1, r0
	bne _0225CF46
	movs r0, #0xa
	ldrsh r1, [r2, r0]
	lsls r0, r4, #4
	cmp r1, r0
	bne _0225CF46
	add sp, #0x10
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225CF46:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225CEDC

	thumb_func_start ov70_0225CF4C
ov70_0225CF4C: @ 0x0225CF4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	ldr r0, [r1]
	str r2, [sp]
	str r3, [sp, #4]
	bl FUN_0222C0E4
	add r4, sp, #0x1c
	strh r0, [r4, #4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #6]
	ldrh r0, [r4, #4]
	mov r5, sp
	ldr r7, _0225D02C @ =0x0226D504
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #6]
	subs r5, r5, #4
	strh r0, [r4, #0xe]
	movs r0, #0
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0xc]
	str r0, [sp, #0x14]
	ldrh r0, [r4, #0xe]
	str r0, [sp, #0x18]
_0225CF7E:
	ldr r0, [sp, #0x14]
	strh r0, [r5]
	ldr r0, [sp, #0x18]
	strh r0, [r5, #2]
	ldrb r1, [r7]
	ldr r0, [r5]
	bl FUN_0222C078
	strh r0, [r4]
	lsrs r0, r0, #0x10
	strh r0, [r4, #2]
	ldrh r0, [r4]
	strh r0, [r4, #8]
	ldrh r0, [r4, #2]
	strh r0, [r4, #0xa]
	movs r0, #0xa
	ldrsh r1, [r4, r0]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	str r0, [sp, #0xc]
	movs r0, #8
	ldrsh r1, [r4, r0]
	ldr r2, [sp, #0xc]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	str r0, [sp, #8]
	ldr r1, [sp, #8]
	lsls r2, r2, #0x10
	lsls r1, r1, #0x10
	ldr r0, [r6, #0x14]
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl ov70_0225C8AC
	cmp r0, #1
	beq _0225D018
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r6, #0x14]
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl ov70_0225C8C4
	cmp r0, #0
	beq _0225CFE8
	cmp r0, #0x2a
	bne _0225D018
_0225CFE8:
	ldrh r1, [r4, #8]
	ldr r0, [r6]
	strh r1, [r5]
	ldrh r1, [r4, #0xa]
	strh r1, [r5, #2]
	ldr r1, [r5]
	bl FUN_0222C2AC
	cmp r0, #0
	bne _0225D018
	ldr r1, _0225D02C @ =0x0226D504
	ldr r0, [sp, #0x10]
	ldrb r1, [r1, r0]
	ldr r0, [sp]
	str r1, [r0]
	add r1, sp, #0x1c
	ldr r0, [sp, #4]
	ldrh r2, [r1, #8]
	add sp, #0x2c
	strh r2, [r0]
	ldrh r1, [r1, #0xa]
	strh r1, [r0, #2]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0225D018:
	ldr r0, [sp, #0x10]
	adds r7, r7, #1
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #4
	blt _0225CF7E
	movs r0, #0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D02C: .4byte 0x0226D504
	thumb_func_end ov70_0225CF4C

	thumb_func_start ov70_0225D030
ov70_0225D030: @ 0x0225D030
	ldr r3, _0225D038 @ =FUN_022347B0
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D038: .4byte FUN_022347B0
	thumb_func_end ov70_0225D030

	thumb_func_start ov70_0225D03C
ov70_0225D03C: @ 0x0225D03C
	ldr r3, _0225D044 @ =FUN_022347D4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D044: .4byte FUN_022347D4
	thumb_func_end ov70_0225D03C

	thumb_func_start ov70_0225D048
ov70_0225D048: @ 0x0225D048
	ldr r3, _0225D050 @ =FUN_022347F8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D050: .4byte FUN_022347F8
	thumb_func_end ov70_0225D048

	thumb_func_start ov70_0225D054
ov70_0225D054: @ 0x0225D054
	ldr r3, _0225D05C @ =FUN_0223481C
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D05C: .4byte FUN_0223481C
	thumb_func_end ov70_0225D054

	thumb_func_start ov70_0225D060
ov70_0225D060: @ 0x0225D060
	ldr r3, _0225D068 @ =FUN_02234834
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D068: .4byte FUN_02234834
	thumb_func_end ov70_0225D060

	thumb_func_start ov70_0225D06C
ov70_0225D06C: @ 0x0225D06C
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _0225D07C
	movs r1, #1
	bl FUN_02234850
	pop {r3, pc}
_0225D07C:
	bl FUN_0223487C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0225D06C

	thumb_func_start ov70_0225D084
ov70_0225D084: @ 0x0225D084
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _0225D094
	movs r1, #0
	bl FUN_02234850
	pop {r3, pc}
_0225D094:
	bl FUN_0223487C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0225D084

	thumb_func_start ov70_0225D09C
ov70_0225D09C: @ 0x0225D09C
	push {r3, lr}
	cmp r1, #0
	ldr r0, [r0, #4]
	beq _0225D0AC
	movs r1, #2
	bl FUN_02234850
	pop {r3, pc}
_0225D0AC:
	bl FUN_0223487C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0225D09C

	thumb_func_start ov70_0225D0B4
ov70_0225D0B4: @ 0x0225D0B4
	ldr r3, _0225D0BC @ =FUN_022347C4
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0BC: .4byte FUN_022347C4
	thumb_func_end ov70_0225D0B4

	thumb_func_start ov70_0225D0C0
ov70_0225D0C0: @ 0x0225D0C0
	ldr r3, _0225D0C8 @ =FUN_0223488C
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0C8: .4byte FUN_0223488C
	thumb_func_end ov70_0225D0C0

	thumb_func_start ov70_0225D0CC
ov70_0225D0CC: @ 0x0225D0CC
	ldr r3, _0225D0D4 @ =FUN_022348A8
	ldr r0, [r0, #4]
	bx r3
	nop
_0225D0D4: .4byte FUN_022348A8
	thumb_func_end ov70_0225D0CC

	thumb_func_start ov70_0225D0D8
ov70_0225D0D8: @ 0x0225D0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0
	ldr r4, _0225D178 @ =0x0226D508
	str r0, [sp, #8]
_0225D0E4:
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp]
	ldrb r1, [r4]
	add r2, sp, #0xc
	ldr r0, [r5, #0x14]
	adds r2, #2
	add r3, sp, #0xc
	bl ov70_0225C8D8
	cmp r0, #1
	bne _0225D166
	add r7, sp, #0xc
_0225D0FE:
	adds r0, r5, #0
	bl ov70_0225D2C0
	adds r6, r0, #0
	ldrh r0, [r7, #2]
	add r1, sp, #0x10
	lsls r0, r0, #4
	strh r0, [r7, #4]
	ldrh r0, [r7]
	lsls r0, r0, #4
	strh r0, [r7, #6]
	ldrb r0, [r4, #3]
	strh r0, [r7, #8]
	movs r0, #0
	strh r0, [r7, #0xa]
	ldrb r0, [r4, #1]
	strh r0, [r7, #0xc]
	ldrb r0, [r4, #2]
	strh r0, [r7, #0xe]
	ldr r0, [r5]
	bl FUN_0222BEC0
	adds r1, r0, #0
	str r1, [r6]
	ldr r0, [r5, #4]
	bl FUN_0223461C
	str r0, [r6, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl ov70_0225CDEC
	ldrb r0, [r4]
	cmp r0, #0x61
	bne _0225D148
	str r6, [r5, #0x24]
_0225D148:
	ldr r0, [sp, #4]
	add r2, sp, #0xc
	adds r0, r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	str r0, [sp]
	ldrb r1, [r4]
	ldr r0, [r5, #0x14]
	adds r2, #2
	add r3, sp, #0xc
	bl ov70_0225C8D8
	cmp r0, #1
	beq _0225D0FE
_0225D166:
	ldr r0, [sp, #8]
	adds r4, r4, #4
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #4
	blo _0225D0E4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D178: .4byte 0x0226D508
	thumb_func_end ov70_0225D0D8

	thumb_func_start ov70_0225D17C
ov70_0225D17C: @ 0x0225D17C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	strh r1, [r4]
	strb r2, [r4, #2]
	add r1, sp, #0
	strb r3, [r4, #3]
	bl ov70_0225CB1C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225D17C

	thumb_func_start ov70_0225D194
ov70_0225D194: @ 0x0225D194
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	bl FUN_0201D35C
	adds r1, r4, #0
	blx FUN_020E2178
	ldrb r0, [r5, r1]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225D194

	thumb_func_start ov70_0225D1A8
ov70_0225D1A8: @ 0x0225D1A8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r1]
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	subs r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	adds r1, r6, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_0222C078
	add r2, sp, #0
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #8
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r3, [r2, r1]
	ldr r0, [r5, #0x14]
	asrs r1, r3, #3
	lsrs r1, r1, #0x1c
	adds r1, r3, r1
	movs r3, #0xa
	ldrsh r3, [r2, r3]
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	asrs r2, r3, #3
	lsrs r2, r2, #0x1c
	adds r2, r3, r2
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	bl ov70_0225C8B8
	cmp r0, r4
	bne _0225D218
	add sp, #0x10
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225D218:
	movs r0, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0225D1A8

	thumb_func_start ov70_0225D220
ov70_0225D220: @ 0x0225D220
	str r1, [r0]
	str r1, [r0, #4]
	subs r1, r2, r1
	str r1, [r0, #8]
	str r3, [r0, #0xc]
	bx lr
	thumb_func_end ov70_0225D220

	thumb_func_start ov70_0225D22C
ov70_0225D22C: @ 0x0225D22C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r6, [r5, #8]
	beq _0225D248
	lsls r0, r4, #0xc
	blx FUN_020E17FC
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0225D256
_0225D248:
	lsls r0, r4, #0xc
	blx FUN_020E17FC
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0225D256:
	blx FUN_020E1740
	adds r2, r0, #0
	asrs r1, r6, #0x1f
	adds r0, r6, #0
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r6, r2, #0xc
	orrs r6, r0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	beq _0225D28E
	lsls r0, r0, #0xc
	blx FUN_020E17FC
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0225D29C
_0225D28E:
	lsls r0, r0, #0xc
	blx FUN_020E17FC
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0225D29C:
	blx FUN_020E1740
	adds r1, r0, #0
	adds r0, r6, #0
	blx FUN_020BCFD0
	ldr r1, [r5, #4]
	adds r0, r0, r1
	str r0, [r5]
	ldr r0, [r5, #0xc]
	cmp r4, r0
	blo _0225D2B8
	movs r0, #1
	pop {r4, r5, r6, pc}
_0225D2B8:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225D22C

	thumb_func_start ov70_0225D2BC
ov70_0225D2BC: @ 0x0225D2BC
	ldr r0, [r0]
	bx lr
	thumb_func_end ov70_0225D2BC

	thumb_func_start ov70_0225D2C0
ov70_0225D2C0: @ 0x0225D2C0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0xc]
	movs r6, #0
	cmp r0, #0
	ble _0225D2EE
	adds r4, r6, #0
_0225D2CE:
	ldr r0, [r5, #8]
	adds r0, r0, r4
	bl ov70_0225D2FC
	cmp r0, #0
	beq _0225D2E4
	movs r0, #0x28
	ldr r1, [r5, #8]
	muls r0, r6, r0
	adds r0, r1, r0
	pop {r4, r5, r6, pc}
_0225D2E4:
	ldrh r0, [r5, #0xc]
	adds r6, r6, #1
	adds r4, #0x28
	cmp r6, r0
	blt _0225D2CE
_0225D2EE:
	bl FUN_02022974
	movs r0, #0x28
	ldr r1, [r5, #8]
	muls r0, r6, r0
	adds r0, r1, r0
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225D2C0

	thumb_func_start ov70_0225D2FC
ov70_0225D2FC: @ 0x0225D2FC
	ldr r0, [r0]
	cmp r0, #0
	bne _0225D306
	movs r0, #1
	bx lr
_0225D306:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225D2FC

	thumb_func_start ov70_0225D30C
ov70_0225D30C: @ 0x0225D30C
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225D30C

	thumb_func_start ov70_0225D310
ov70_0225D310: @ 0x0225D310
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7]
	adds r5, r1, #0
	movs r1, #6
	bl FUN_0222BF90
	adds r4, r0, #0
	ldr r0, [r7]
	movs r1, #4
	bl FUN_0222BF90
	adds r6, r0, #0
	ldr r0, [r7]
	movs r1, #5
	bl FUN_0222BF90
	cmp r0, #0
	bne _0225D3D2
	ldr r0, _0225D3D4 @ =0x021BF67C
	movs r1, #2
	ldr r0, [r0, #0x44]
	adds r2, r0, #0
	tst r2, r1
	beq _0225D344
	movs r1, #3
_0225D344:
	movs r2, #0x40
	tst r2, r0
	beq _0225D368
	cmp r4, #0
	bne _0225D35A
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D35A:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	adds r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D368:
	movs r2, #0x80
	tst r2, r0
	beq _0225D38C
	cmp r4, #1
	bne _0225D37E
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D37E:
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D38C:
	movs r2, #0x20
	tst r2, r0
	beq _0225D3B0
	cmp r4, #2
	bne _0225D3A2
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D3A2:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	adds r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D3B0:
	movs r2, #0x10
	tst r0, r2
	beq _0225D3D2
	cmp r4, #3
	bne _0225D3C6
	adds r0, r5, #0
	adds r2, r4, #0
	adds r3, r6, #0
	bl ov70_0225D17C
	pop {r3, r4, r5, r6, r7, pc}
_0225D3C6:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #3
	adds r3, r6, #0
	bl ov70_0225D17C
_0225D3D2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225D3D4: .4byte 0x021BF67C
	thumb_func_end ov70_0225D310

	thumb_func_start ov70_0225D3D8
ov70_0225D3D8: @ 0x0225D3D8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r5, r1, #0
	cmp r0, #4
	bhi _0225D4C0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225D3F0: @ jump table
	.2byte _0225D3FA - _0225D3F0 - 2 @ case 0
	.2byte _0225D40C - _0225D3F0 - 2 @ case 1
	.2byte _0225D422 - _0225D3F0 - 2 @ case 2
	.2byte _0225D48E - _0225D3F0 - 2 @ case 3
	.2byte _0225D4B0 - _0225D3F0 - 2 @ case 4
_0225D3FA:
	ldr r0, _0225D4C4 @ =0x0226D500
	movs r1, #4
	bl ov70_0225D194
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D40C:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	subs r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _0225D4C0
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D422:
	ldr r0, [r4]
	movs r1, #4
	bl FUN_0222BF90
	adds r6, r0, #0
	ldr r0, [r4]
	movs r1, #6
	bl FUN_0222BF90
	adds r7, r0, #0
	ldr r0, _0225D4C8 @ =0x0226D4FC
	movs r1, #4
	bl ov70_0225D194
	strh r0, [r4, #0xe]
	movs r2, #0xe
	ldrsh r2, [r4, r2]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r6, #4
	bl ov70_0225D1A8
	cmp r0, #1
	bne _0225D47A
	movs r0, #0xe
	ldrsh r3, [r4, r0]
	cmp r7, r3
	bne _0225D46A
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov70_0225CD7C
	movs r0, #4
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D46A:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov70_0225CD7C
	movs r0, #3
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D47A:
	movs r3, #0xe
	ldrsh r3, [r4, r3]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov70_0225CD7C
	movs r0, #4
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D48E:
	ldr r0, [r4]
	movs r1, #5
	bl FUN_0222BF90
	cmp r0, #0
	bne _0225D4C0
	movs r3, #0xe
	ldrsh r3, [r4, r3]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov70_0225CD7C
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225D4B0:
	ldr r0, [r4]
	movs r1, #5
	bl FUN_0222BF90
	cmp r0, #0
	bne _0225D4C0
	movs r0, #0
	strh r0, [r4, #8]
_0225D4C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225D4C4: .4byte 0x0226D500
_0225D4C8: .4byte 0x0226D4FC
	thumb_func_end ov70_0225D3D8

	thumb_func_start ov70_0225D4CC
ov70_0225D4CC: @ 0x0225D4CC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _0225D572
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225D4E4: @ jump table
	.2byte _0225D4EC - _0225D4E4 - 2 @ case 0
	.2byte _0225D516 - _0225D4E4 - 2 @ case 1
	.2byte _0225D532 - _0225D4E4 - 2 @ case 2
	.2byte _0225D572 - _0225D4E4 - 2 @ case 3
_0225D4EC:
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_022347B0
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02234850
	adds r0, r4, #0
	movs r2, #0x7d
	adds r0, #0xc
	movs r1, #0
	lsls r2, r2, #0xe
	movs r3, #0x18
	bl ov70_0225D220
	movs r0, #0x20
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
_0225D516:
	ldr r0, [r4, #0x1c]
	subs r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225D572
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	movs r0, #0
	str r0, [r4, #0x1c]
	ldr r0, _0225D578 @ =0x0000064F
	bl FUN_02005748
	add sp, #0xc
	pop {r4, r5, pc}
_0225D532:
	adds r0, r4, #0
	ldr r1, [r4, #0x1c]
	adds r0, #0xc
	bl ov70_0225D22C
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl FUN_0223481C
	adds r0, r4, #0
	adds r0, #0xc
	bl ov70_0225D2BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_022347F8
	cmp r5, #1
	bne _0225D572
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl FUN_0223487C
	movs r0, #1
	strb r0, [r4, #0xa]
_0225D572:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0225D578: .4byte 0x0000064F
	thumb_func_end ov70_0225D4CC

	thumb_func_start ov70_0225D57C
ov70_0225D57C: @ 0x0225D57C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _0225D62A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225D594: @ jump table
	.2byte _0225D59C - _0225D594 - 2 @ case 0
	.2byte _0225D5CC - _0225D594 - 2 @ case 1
	.2byte _0225D60A - _0225D594 - 2 @ case 2
	.2byte _0225D62A - _0225D594 - 2 @ case 3
_0225D59C:
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_022347B0
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02234850
	adds r0, r4, #0
	movs r1, #0x7d
	adds r0, #0xc
	lsls r1, r1, #0xe
	movs r2, #0
	movs r3, #0x18
	bl ov70_0225D220
	movs r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, _0225D630 @ =0x0000064F
	bl FUN_02005748
_0225D5CC:
	adds r0, r4, #0
	ldr r1, [r4, #0x1c]
	adds r0, #0xc
	bl ov70_0225D22C
	adds r5, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl FUN_0223481C
	adds r0, r4, #0
	adds r0, #0xc
	bl ov70_0225D2BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_022347F8
	cmp r5, #1
	bne _0225D62A
	movs r0, #0x20
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add sp, #0xc
	adds r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, pc}
_0225D60A:
	ldr r0, [r4, #0x1c]
	subs r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225D62A
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl FUN_0223487C
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_022347B0
	movs r0, #1
	strb r0, [r4, #0xa]
_0225D62A:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_0225D630: .4byte 0x0000064F
	thumb_func_end ov70_0225D57C

	thumb_func_start ov70_0225D634
ov70_0225D634: @ 0x0225D634
	ldr r3, _0225D63C @ =ov70_0225D664
	movs r2, #2
	bx r3
	nop
_0225D63C: .4byte ov70_0225D664
	thumb_func_end ov70_0225D634

	thumb_func_start ov70_0225D640
ov70_0225D640: @ 0x0225D640
	ldr r3, _0225D648 @ =ov70_0225D664
	movs r2, #3
	bx r3
	nop
_0225D648: .4byte ov70_0225D664
	thumb_func_end ov70_0225D640

	thumb_func_start ov70_0225D64C
ov70_0225D64C: @ 0x0225D64C
	ldr r3, _0225D654 @ =ov70_0225D664
	movs r2, #0
	bx r3
	nop
_0225D654: .4byte ov70_0225D664
	thumb_func_end ov70_0225D64C

	thumb_func_start ov70_0225D658
ov70_0225D658: @ 0x0225D658
	ldr r3, _0225D660 @ =ov70_0225D664
	movs r2, #1
	bx r3
	nop
_0225D660: .4byte ov70_0225D664
	thumb_func_end ov70_0225D658

	thumb_func_start ov70_0225D664
ov70_0225D664: @ 0x0225D664
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r5, r2, #0
	cmp r0, #3
	bls _0225D674
	b _0225D816
_0225D674:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225D680: @ jump table
	.2byte _0225D688 - _0225D680 - 2 @ case 0
	.2byte _0225D6E4 - _0225D680 - 2 @ case 1
	.2byte _0225D79E - _0225D680 - 2 @ case 2
	.2byte _0225D816 - _0225D680 - 2 @ case 3
_0225D688:
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_022347B0
	ldr r0, [r4, #4]
	movs r1, #0
	bl FUN_02234850
	ldr r0, [r4, #4]
	movs r1, #2
	bl FUN_02234888
	adds r0, r4, #0
	movs r2, #1
	adds r0, #0xc
	movs r1, #0
	lsls r2, r2, #0x10
	movs r3, #4
	bl ov70_0225D220
	ldr r0, [r4, #4]
	add r1, sp, #0x1c
	bl FUN_0223481C
	cmp r5, #3
	bhi _0225D6DA
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225D6C8: @ jump table
	.2byte _0225D6D0 - _0225D6C8 - 2 @ case 0
	.2byte _0225D6D0 - _0225D6C8 - 2 @ case 1
	.2byte _0225D6D6 - _0225D6C8 - 2 @ case 2
	.2byte _0225D6D6 - _0225D6C8 - 2 @ case 3
_0225D6D0:
	ldr r0, [sp, #0x24]
	str r0, [r4, #0x20]
	b _0225D6DA
_0225D6D6:
	ldr r0, [sp, #0x1c]
	str r0, [r4, #0x20]
_0225D6DA:
	movs r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
_0225D6E4:
	adds r0, r4, #0
	ldr r1, [r4, #0x1c]
	adds r0, #0xc
	bl ov70_0225D22C
	adds r6, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0x10
	adds r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl FUN_0223481C
	cmp r5, #3
	bhi _0225D754
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225D70E: @ jump table
	.2byte _0225D716 - _0225D70E - 2 @ case 0
	.2byte _0225D726 - _0225D70E - 2 @ case 1
	.2byte _0225D736 - _0225D70E - 2 @ case 2
	.2byte _0225D746 - _0225D70E - 2 @ case 3
_0225D716:
	adds r0, r4, #0
	adds r0, #0xc
	bl ov70_0225D2BC
	ldr r1, [r4, #0x20]
	subs r0, r1, r0
	str r0, [sp, #0x18]
	b _0225D754
_0225D726:
	adds r0, r4, #0
	adds r0, #0xc
	bl ov70_0225D2BC
	ldr r1, [r4, #0x20]
	adds r0, r1, r0
	str r0, [sp, #0x18]
	b _0225D754
_0225D736:
	adds r0, r4, #0
	adds r0, #0xc
	bl ov70_0225D2BC
	ldr r1, [r4, #0x20]
	subs r0, r1, r0
	str r0, [sp, #0x10]
	b _0225D754
_0225D746:
	adds r0, r4, #0
	adds r0, #0xc
	bl ov70_0225D2BC
	ldr r1, [r4, #0x20]
	adds r0, r1, r0
	str r0, [sp, #0x10]
_0225D754:
	ldr r0, [r4, #4]
	add r1, sp, #0x10
	bl FUN_022347F8
	cmp r6, #1
	bne _0225D816
	adds r0, r5, #0
	bl FUN_0222C0AC
	movs r1, #4
	str r1, [r4, #0x1c]
	cmp r0, #3
	bhi _0225D794
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225D77A: @ jump table
	.2byte _0225D788 - _0225D77A - 2 @ case 0
	.2byte _0225D794 - _0225D77A - 2 @ case 1
	.2byte _0225D78E - _0225D77A - 2 @ case 2
	.2byte _0225D782 - _0225D77A - 2 @ case 3
_0225D782:
	ldr r0, [r4, #0x1c]
	adds r0, r0, #2
	str r0, [r4, #0x1c]
_0225D788:
	ldr r0, [r4, #0x1c]
	adds r0, r0, #2
	str r0, [r4, #0x1c]
_0225D78E:
	ldr r0, [r4, #0x1c]
	adds r0, r0, #2
	str r0, [r4, #0x1c]
_0225D794:
	ldrh r0, [r4, #8]
	add sp, #0x28
	adds r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, r6, pc}
_0225D79E:
	ldr r0, [r4, #0x1c]
	subs r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225D816
	ldrh r0, [r4, #8]
	adds r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4]
	bl FUN_0222C0E4
	add r1, sp, #0
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	subs r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	adds r1, r5, #0
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_0222C078
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	adds r0, r5, #0
	bl FUN_0222C0AC
	add r1, sp, #0
	mov r5, sp
	adds r2, r0, #0
	ldrh r3, [r1, #8]
	subs r5, r5, #4
	adds r0, r4, #0
	strh r3, [r5]
	ldrh r1, [r1, #0xa]
	strh r1, [r5, #2]
	ldr r1, [r5]
	bl ov70_0225CD04
	ldr r0, [r4, #4]
	bl FUN_0223487C
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_022347B0
	movs r0, #1
	strb r0, [r4, #0xa]
_0225D816:
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0225D664

	thumb_func_start ov70_0225D81C
ov70_0225D81C: @ 0x0225D81C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0225D830
	cmp r0, #1
	beq _0225D850
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0225D830:
	ldr r0, [r5, #4]
	movs r1, #0
	bl FUN_022347B0
	adds r1, r5, #0
	ldr r0, [r5, #4]
	adds r1, #0x10
	bl FUN_0223481C
	movs r0, #0x1c
	str r0, [r5, #0xc]
	ldrh r0, [r5, #8]
	add sp, #0xc
	adds r0, r0, #1
	strh r0, [r5, #8]
	pop {r3, r4, r5, r6, pc}
_0225D850:
	ldr r0, [r5, #0xc]
	subs r0, r0, #1
	str r0, [r5, #0xc]
	bpl _0225D85C
	movs r0, #0x1c
	str r0, [r5, #0xc]
_0225D85C:
	adds r3, r5, #0
	adds r3, #0x10
	ldm r3!, {r0, r1}
	add r2, sp, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	ldr r0, [r5, #0xc]
	subs r0, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	ble _0225D8DE
	movs r1, #6
	blx FUN_020E1F6C
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	movs r0, #0xb4
	muls r0, r1, r0
	movs r1, #6
	blx FUN_020E1F6C
	adds r4, r0, #0
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	ldr r2, _0225D8F4 @ =0xFFFFE000
	asrs r1, r0, #0x1f
	asrs r3, r2, #0xd
	blx FUN_020E1F1C
	movs r3, #2
	movs r6, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r6
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	ldr r2, [sp, #8]
	orrs r1, r0
	adds r0, r2, r1
	str r0, [sp, #8]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	movs r2, #0xa
	asrs r1, r0, #0x1f
	lsls r2, r2, #0xc
	adds r3, r6, #0
	blx FUN_020E1F1C
	movs r3, #2
	adds r4, r6, #0
	lsls r3, r3, #0xa
	adds r3, r0, r3
	adcs r1, r4
	lsls r0, r1, #0x14
	lsrs r1, r3, #0xc
	ldr r2, [sp, #4]
	orrs r1, r0
	adds r0, r2, r1
	str r0, [sp, #4]
_0225D8DE:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl FUN_022347F8
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_02234834
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0225D8F4: .4byte 0xFFFFE000
	thumb_func_end ov70_0225D81C

	thumb_func_start ov70_0225D8F8
ov70_0225D8F8: @ 0x0225D8F8
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, [r4, #4]
	movs r1, #1
	bl FUN_022347B0
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_0223481C
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl FUN_022347F8
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225D8F8

	thumb_func_start ov70_0225D920
ov70_0225D920: @ 0x0225D920
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	movs r3, #0
	strb r3, [r0, #3]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	strb r3, [r0]
	adds r0, r1, #0
	ldr r3, _0225D938 @ =FUN_02234610
	adds r1, r2, #0
	bx r3
	nop
_0225D938: .4byte FUN_02234610
	thumb_func_end ov70_0225D920

	thumb_func_start ov70_0225D93C
ov70_0225D93C: @ 0x0225D93C
	movs r2, #1
	strb r2, [r0]
	ldrb r2, [r0, #1]
	strb r2, [r0, #2]
	ldrb r2, [r0, #1]
	subs r1, r1, r2
	strb r1, [r0, #3]
	movs r1, #0
	strh r1, [r0, #4]
	movs r1, #0x3c
	strh r1, [r0, #6]
	bx lr
	thumb_func_end ov70_0225D93C

	thumb_func_start ov70_0225D954
ov70_0225D954: @ 0x0225D954
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5]
	adds r4, r1, #0
	cmp r0, #0
	bne _0225D964
	movs r0, #1
	pop {r3, r4, r5, pc}
_0225D964:
	movs r0, #4
	ldrsh r1, [r5, r0]
	adds r1, r1, #1
	strh r1, [r5, #4]
	ldrsh r1, [r5, r0]
	movs r0, #6
	ldrsh r0, [r5, r0]
	cmp r1, r0
	blt _0225D97A
	movs r0, #0
	strb r0, [r5]
_0225D97A:
	movs r0, #4
	ldrsh r1, [r5, r0]
	movs r0, #3
	ldrsb r0, [r5, r0]
	muls r0, r1, r0
	movs r1, #6
	ldrsh r1, [r5, r1]
	blx FUN_020E1F6C
	strb r0, [r5, #1]
	movs r0, #2
	ldrb r1, [r5, #1]
	ldrsb r0, [r5, r0]
	adds r0, r1, r0
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	adds r0, r4, #0
	bl FUN_02234610
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225D954

	thumb_func_start ov70_0225D9A4
ov70_0225D9A4: @ 0x0225D9A4
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	bl FUN_02006840
	movs r2, #0x3a
	adds r5, r0, #0
	movs r0, #3
	movs r1, #0x70
	lsls r2, r2, #0xc
	bl FUN_02017FC8
	movs r2, #0x3d
	movs r0, #3
	movs r1, #0x71
	lsls r2, r2, #0xc
	bl FUN_02017FC8
	movs r1, #0xfe
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0x70
	bl FUN_0200681C
	movs r2, #0xfe
	movs r1, #0
	lsls r2, r2, #2
	adds r4, r0, #0
	blx FUN_020D5124
	adds r0, r5, #0
	adds r0, #0xc
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x1c]
	str r0, [r4, #0x34]
	bl FUN_0222E338
	strb r0, [r4, #2]
	ldr r0, [r4, #0x34]
	bl FUN_0222E338
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _0225DA02
	bl FUN_02022974
_0225DA02:
	movs r0, #1
	bl FUN_02002AC8
	movs r0, #0
	bl FUN_02002AE4
	movs r0, #0
	bl FUN_02002B20
	ldr r0, [r5]
	bl FUN_02025E38
	movs r1, #0xfd
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r4, #0
	ldr r1, [r5]
	adds r0, #0x3c
	movs r2, #0x70
	bl ov70_0225E4EC
	movs r0, #0x70
	bl ov70_0225C858
	movs r1, #0xfa
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r1, #0xc
	ldr r0, [r4, r1]
	bl FUN_02025F30
	adds r1, r0, #0
	movs r0, #0x71
	movs r2, #0xfa
	str r0, [sp]
	lsls r2, r2, #2
	ldr r2, [r4, r2]
	movs r0, #0x18
	movs r3, #0x70
	bl ov70_0225C9B4
	movs r2, #0x3e
	lsls r2, r2, #4
	str r0, [r4, r2]
	movs r0, #0x71
	str r0, [sp]
	adds r2, #8
	ldr r0, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [r4, r2]
	movs r3, #0x70
	bl ov70_02261E10
	movs r1, #0xf9
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x70
	bl ov70_02260A70
	movs r1, #0xfb
	lsls r1, r1, #2
	str r0, [r4, r1]
	subs r1, #0xf4
	adds r0, r4, r1
	adds r1, r4, #0
	ldr r2, [r5]
	adds r1, #0x3c
	movs r3, #0x70
	bl ov70_0225E9C8
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r2, [r5]
	adds r0, r4, r0
	adds r1, #0x3c
	movs r3, #0x70
	bl ov70_0225EBA8
	movs r0, #0xce
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x3c
	movs r2, #0x70
	bl ov70_0225EC20
	movs r0, #0x39
	lsls r0, r0, #4
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x3c
	movs r2, #0x70
	bl ov70_0225F114
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x3c
	movs r2, #0x70
	bl ov70_0225EFD4
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0x70
	bl ov70_0225F208
	movs r1, #0x3a
	lsls r1, r1, #4
	adds r0, r4, r1
	subs r1, #0xc4
	adds r1, r4, r1
	movs r2, #0x70
	bl ov70_0225F098
	movs r0, #0x70
	str r0, [sp]
	movs r3, #0xfd
	movs r0, #0x61
	lsls r3, r3, #2
	lsls r0, r0, #2
	adds r2, r4, #0
	ldr r1, [r4, #0x38]
	ldr r3, [r4, r3]
	adds r0, r4, r0
	adds r2, #0x3c
	bl ov70_0225F350
	ldr r0, [r4, #0x34]
	bl FUN_0222E3BC
	adds r5, r0, #0
	bl FUN_0222E8D8
	cmp r0, #1
	bne _0225DB2E
	movs r0, #0x61
	movs r2, #0xb7
	lsls r0, r0, #2
	adds r1, r4, #0
	lsls r2, r2, #2
	adds r0, r4, r0
	adds r1, #0x3c
	adds r2, r4, r2
	movs r3, #0x70
	str r5, [sp]
	bl ov70_0225F8AC
_0225DB2E:
	adds r0, r4, #0
	movs r1, #0x70
	bl ov70_02262DA8
	movs r1, #0x3f
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov70_022630A4
	adds r0, r4, #0
	bl ov70_022630EC
	movs r0, #0x70
	str r0, [sp]
	movs r0, #0x71
	movs r3, #0xfa
	str r0, [sp, #4]
	lsls r3, r3, #2
	adds r2, r3, #4
	ldr r1, [r4, r3]
	subs r3, #8
	ldr r0, [r4, #0x34]
	ldr r2, [r4, r2]
	ldr r3, [r4, r3]
	bl ov70_02269190
	movs r1, #0xf5
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0x70
	adds r1, r4, #0
	bl ov70_0226C60C
	movs r1, #0xf7
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, _0225DB8C @ =ov70_0225E4C8
	adds r1, r4, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_0225DB8C: .4byte ov70_0225E4C8
	thumb_func_end ov70_0225D9A4

	thumb_func_start ov70_0225DB90
ov70_0225DB90: @ 0x0225DB90
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_02006840
	ldr r0, [r5]
	cmp r0, #8
	bhi _0225DC58
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225DBB6: @ jump table
	.2byte _0225DBC8 - _0225DBB6 - 2 @ case 0
	.2byte _0225DBEA - _0225DBB6 - 2 @ case 1
	.2byte _0225DBFE - _0225DBB6 - 2 @ case 2
	.2byte _0225DC7A - _0225DBB6 - 2 @ case 3
	.2byte _0225DCF8 - _0225DBB6 - 2 @ case 4
	.2byte _0225DD08 - _0225DBB6 - 2 @ case 5
	.2byte _0225DD58 - _0225DBB6 - 2 @ case 6
	.2byte _0225DD76 - _0225DBB6 - 2 @ case 7
	.2byte _0225DDD0 - _0225DBB6 - 2 @ case 8
_0225DBC8:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225DDE2
_0225DBEA:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225DC58
	movs r0, #0
	strb r0, [r4, #3]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225DDE2
_0225DBFE:
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x1c
	cmp r0, #1
	bne _0225DC26
	bl FUN_02231760
	cmp r0, #1
	beq _0225DC1A
	ldr r0, [r4, #0x34]
	bl FUN_0222DFF8
	cmp r0, #0
	beq _0225DC26
_0225DC1A:
	ldrb r1, [r4, #4]
	movs r0, #0xf0
	bics r1, r0
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r4, #4]
_0225DC26:
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0225DC42
	ldr r0, [r4, #0x34]
	bl FUN_0222E138
	cmp r0, #1
	bne _0225DC42
	movs r0, #1
	strb r0, [r4, #6]
	adds r0, r4, #0
	movs r1, #8
	bl ov70_0225DF38
_0225DC42:
	ldrb r0, [r4]
	cmp r0, #1
	beq _0225DC5A
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0225DC5A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225DC5A
_0225DC58:
	b _0225DDE2
_0225DC5A:
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	beq _0225DC68
	movs r0, #3
	str r0, [r5]
	b _0225DDE2
_0225DC68:
	ldrb r0, [r4, #6]
	cmp r0, #1
	bne _0225DC74
	movs r0, #5
	str r0, [r5]
	b _0225DDE2
_0225DC74:
	movs r0, #7
	str r0, [r5]
	b _0225DDE2
_0225DC7A:
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225EB74
	movs r0, #0xce
	lsls r0, r0, #2
	movs r1, #0
	adds r0, r4, r0
	adds r2, r1, #0
	bl ov70_0225EF14
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225F024
	movs r0, #0x3a
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov70_0225F100
	bl FUN_020383E8
	cmp r0, #0
	beq _0225DCBE
	movs r1, #0x39
	lsls r1, r1, #4
	adds r0, r4, r1
	subs r1, #0xb4
	adds r1, r4, r1
	bl ov70_0225F184
	b _0225DCF2
_0225DCBE:
	bl FUN_0203881C
	cmp r0, #0
	beq _0225DCDC
	bl FUN_022326DC
	movs r1, #0x39
	lsls r1, r1, #4
	adds r2, r0, #0
	adds r0, r4, r1
	subs r1, #0xb4
	adds r1, r4, r1
	bl ov70_0225F1C0
	b _0225DCF2
_0225DCDC:
	ldr r0, [r4, #0x34]
	bl FUN_0222DFF8
	movs r1, #0x39
	lsls r1, r1, #4
	adds r2, r0, #0
	adds r0, r4, r1
	subs r1, #0xb4
	adds r1, r4, r1
	bl ov70_0225F1F0
_0225DCF2:
	movs r0, #4
	str r0, [r5]
	b _0225DDE2
_0225DCF8:
	ldr r0, _0225DDF4 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0225DDE2
	movs r0, #7
	str r0, [r5]
	b _0225DDE2
_0225DD08:
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225EB74
	movs r0, #0xce
	lsls r0, r0, #2
	movs r1, #0
	adds r0, r4, r0
	adds r2, r1, #0
	bl ov70_0225EF14
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225F024
	movs r0, #0x3a
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov70_0225F100
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #1
	movs r2, #0x46
	bl ov70_0225F288
	adds r1, r0, #0
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225EA44
	movs r0, #6
	str r0, [r5]
	movs r0, #0x3c
	str r0, [r4, #8]
	b _0225DDE2
_0225DD58:
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225EB5C
	cmp r0, #0
	beq _0225DDE2
	ldr r0, [r4, #8]
	subs r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #0
	bgt _0225DDE2
	movs r0, #7
	str r0, [r5]
	b _0225DDE2
_0225DD76:
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225F798
	cmp r0, #5
	bne _0225DDA8
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225DDE2
_0225DDA8:
	cmp r0, #0
	bne _0225DDE2
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x70
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	strb r0, [r4, #3]
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _0225DDE2
_0225DDD0:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225DDE2
	movs r0, #0
	strb r0, [r4, #3]
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0225DDE2:
	adds r0, r4, #0
	bl ov70_0225E88C
	adds r0, r4, #0
	bl ov70_0225E92C
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0225DDF4: .4byte 0x021BF67C
	thumb_func_end ov70_0225DB90

	thumb_func_start ov70_0225DDF8
ov70_0225DDF8: @ 0x0225DDF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_02006840
	ldrb r1, [r4, #1]
	str r1, [r0, #0x18]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0226C6F8
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269204
	movs r0, #0x3f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262DF4
	movs r0, #0x61
	movs r1, #0xc6
	lsls r0, r0, #2
	lsls r1, r1, #2
	adds r2, r4, #0
	adds r0, r4, r0
	adds r1, r4, r1
	adds r2, #0x3c
	bl ov70_0225F3E4
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225F25C
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225EA14
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225EBBC
	movs r0, #0xce
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r0, r4, r0
	adds r1, #0x3c
	bl ov70_0225ED4C
	movs r0, #0x39
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov70_0225F144
	movs r0, #0x3a
	lsls r0, r0, #4
	adds r0, r4, r0
	bl ov70_0225F100
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225EFD8
	movs r0, #0xfb
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02260AD4
	movs r0, #0xf9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_022621AC
	movs r0, #0x3e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA20
	movs r0, #0xfa
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0225C894
	adds r0, r4, #0
	adds r0, #0x3c
	bl ov70_0225E6D0
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0x70
	bl FUN_0201807C
	movs r0, #0x71
	bl FUN_0201807C
	movs r0, #0
	bl FUN_020057BC
	movs r0, #0
	bl FUN_0200592C
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_0225DDF8

	thumb_func_start ov70_0225DEE8
ov70_0225DEE8: @ 0x0225DEE8
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov70_0225DEE8

	thumb_func_start ov70_0225DEEC
ov70_0225DEEC: @ 0x0225DEEC
	ldr r0, [r0, #0x38]
	bx lr
	thumb_func_end ov70_0225DEEC

	thumb_func_start ov70_0225DEF0
ov70_0225DEF0: @ 0x0225DEF0
	movs r1, #0x3e
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DEF0

	thumb_func_start ov70_0225DEF8
ov70_0225DEF8: @ 0x0225DEF8
	movs r1, #0xf9
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DEF8

	thumb_func_start ov70_0225DF00
ov70_0225DF00: @ 0x0225DF00
	movs r1, #0xfa
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF00

	thumb_func_start ov70_0225DF08
ov70_0225DF08: @ 0x0225DF08
	movs r1, #0xfb
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF08

	thumb_func_start ov70_0225DF10
ov70_0225DF10: @ 0x0225DF10
	movs r1, #0x3f
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0225DF10

	thumb_func_start ov70_0225DF18
ov70_0225DF18: @ 0x0225DF18
	ldrb r3, [r0, #4]
	movs r2, #0xf
	lsls r1, r1, #0x18
	bics r3, r2
	lsrs r2, r1, #0x18
	movs r1, #0xf
	ands r1, r2
	orrs r1, r3
	strb r1, [r0, #4]
	bx lr
	thumb_func_end ov70_0225DF18

	thumb_func_start ov70_0225DF2C
ov70_0225DF2C: @ 0x0225DF2C
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end ov70_0225DF2C

	thumb_func_start ov70_0225DF30
ov70_0225DF30: @ 0x0225DF30
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov70_0225DF30

	thumb_func_start ov70_0225DF34
ov70_0225DF34: @ 0x0225DF34
	strb r1, [r0]
	bx lr
	thumb_func_end ov70_0225DF34

	thumb_func_start ov70_0225DF38
ov70_0225DF38: @ 0x0225DF38
	strb r1, [r0, #1]
	bx lr
	thumb_func_end ov70_0225DF38

	thumb_func_start ov70_0225DF3C
ov70_0225DF3C: @ 0x0225DF3C
	strb r1, [r0, #5]
	bx lr
	thumb_func_end ov70_0225DF3C

	thumb_func_start ov70_0225DF40
ov70_0225DF40: @ 0x0225DF40
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end ov70_0225DF40

	thumb_func_start ov70_0225DF44
ov70_0225DF44: @ 0x0225DF44
	movs r1, #1
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225DF44

	thumb_func_start ov70_0225DF4C
ov70_0225DF4C: @ 0x0225DF4C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #0x14
	blo _0225DF5C
	bl FUN_02022974
_0225DF5C:
	adds r0, r5, r4
	strb r6, [r0, #0xc]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0225DF4C

	thumb_func_start ov70_0225DF64
ov70_0225DF64: @ 0x0225DF64
	adds r0, r0, r1
	ldrb r0, [r0, #0xc]
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225DF64

	thumb_func_start ov70_0225DF6C
ov70_0225DF6C: @ 0x0225DF6C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #0x14
	blo _0225DF7C
	bl FUN_02022974
_0225DF7C:
	adds r0, r5, r4
	adds r0, #0x20
	strb r6, [r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225DF6C

	thumb_func_start ov70_0225DF84
ov70_0225DF84: @ 0x0225DF84
	adds r0, r0, r1
	adds r0, #0x20
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov70_0225DF84

	thumb_func_start ov70_0225DF8C
ov70_0225DF8C: @ 0x0225DF8C
	movs r2, #0xbe
	lsls r2, r2, #2
	ldr r3, _0225DF98 @ =ov70_0225EA44
	adds r0, r0, r2
	bx r3
	nop
_0225DF98: .4byte ov70_0225EA44
	thumb_func_end ov70_0225DF8C

	thumb_func_start ov70_0225DF9C
ov70_0225DF9C: @ 0x0225DF9C
	movs r2, #0xbe
	lsls r2, r2, #2
	ldr r3, _0225DFA8 @ =ov70_0225EAA4
	adds r0, r0, r2
	bx r3
	nop
_0225DFA8: .4byte ov70_0225EAA4
	thumb_func_end ov70_0225DF9C

	thumb_func_start ov70_0225DFAC
ov70_0225DFAC: @ 0x0225DFAC
	movs r1, #0xbe
	lsls r1, r1, #2
	ldr r3, _0225DFB8 @ =ov70_0225EB5C
	adds r0, r0, r1
	bx r3
	nop
_0225DFB8: .4byte ov70_0225EB5C
	thumb_func_end ov70_0225DFAC

	thumb_func_start ov70_0225DFBC
ov70_0225DFBC: @ 0x0225DFBC
	movs r1, #0xbe
	lsls r1, r1, #2
	ldr r3, _0225DFC8 @ =ov70_0225EB08
	adds r0, r0, r1
	bx r3
	nop
_0225DFC8: .4byte ov70_0225EB08
	thumb_func_end ov70_0225DFBC

	thumb_func_start ov70_0225DFCC
ov70_0225DFCC: @ 0x0225DFCC
	movs r1, #0xbe
	lsls r1, r1, #2
	ldr r3, _0225DFD8 @ =ov70_0225EB24
	adds r0, r0, r1
	bx r3
	nop
_0225DFD8: .4byte ov70_0225EB24
	thumb_func_end ov70_0225DFCC

	thumb_func_start ov70_0225DFDC
ov70_0225DFDC: @ 0x0225DFDC
	movs r1, #0xbe
	lsls r1, r1, #2
	ldr r3, _0225DFE8 @ =ov70_0225EB4C
	adds r0, r0, r1
	bx r3
	nop
_0225DFE8: .4byte ov70_0225EB4C
	thumb_func_end ov70_0225DFDC

	thumb_func_start ov70_0225DFEC
ov70_0225DFEC: @ 0x0225DFEC
	movs r1, #0xbe
	lsls r1, r1, #2
	ldr r3, _0225DFF8 @ =ov70_0225EB74
	adds r0, r0, r1
	bx r3
	nop
_0225DFF8: .4byte ov70_0225EB74
	thumb_func_end ov70_0225DFEC

	thumb_func_start ov70_0225DFFC
ov70_0225DFFC: @ 0x0225DFFC
	movs r2, #0xc6
	lsls r2, r2, #2
	ldr r3, _0225E008 @ =ov70_0225EBC4
	adds r0, r0, r2
	bx r3
	nop
_0225E008: .4byte ov70_0225EBC4
	thumb_func_end ov70_0225DFFC

	thumb_func_start ov70_0225E00C
ov70_0225E00C: @ 0x0225E00C
	push {r3, lr}
	movs r2, #0xce
	lsls r2, r2, #2
	adds r0, r0, r2
	movs r2, #0x71
	movs r3, #0
	bl ov70_0225EDA8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0225E00C

	thumb_func_start ov70_0225E020
ov70_0225E020: @ 0x0225E020
	push {r3, lr}
	adds r3, r2, #0
	movs r2, #0xce
	lsls r2, r2, #2
	adds r0, r0, r2
	movs r2, #0x71
	bl ov70_0225EDA8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0225E020

	thumb_func_start ov70_0225E034
ov70_0225E034: @ 0x0225E034
	movs r1, #0xce
	lsls r1, r1, #2
	ldr r3, _0225E040 @ =ov70_0225EDE0
	adds r0, r0, r1
	bx r3
	nop
_0225E040: .4byte ov70_0225EDE0
	thumb_func_end ov70_0225E034

	thumb_func_start ov70_0225E044
ov70_0225E044: @ 0x0225E044
	movs r3, #0xce
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r3, _0225E050 @ =ov70_0225EDF8
	bx r3
	nop
_0225E050: .4byte ov70_0225EDF8
	thumb_func_end ov70_0225E044

	thumb_func_start ov70_0225E054
ov70_0225E054: @ 0x0225E054
	movs r1, #0xce
	lsls r1, r1, #2
	ldr r3, _0225E060 @ =ov70_0225EE04
	adds r0, r0, r1
	bx r3
	nop
_0225E060: .4byte ov70_0225EE04
	thumb_func_end ov70_0225E054

	thumb_func_start ov70_0225E064
ov70_0225E064: @ 0x0225E064
	movs r2, #0xce
	lsls r2, r2, #2
	ldr r3, _0225E070 @ =ov70_0225EE08
	adds r0, r0, r2
	bx r3
	nop
_0225E070: .4byte ov70_0225EE08
	thumb_func_end ov70_0225E064

	thumb_func_start ov70_0225E074
ov70_0225E074: @ 0x0225E074
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	str r3, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	movs r0, #0xce
	lsls r0, r0, #2
	adds r4, r2, #0
	adds r0, r5, r0
	adds r5, #0x3c
	adds r2, r5, #0
	adds r3, r4, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_0225E074

	thumb_func_start ov70_0225E0A4
ov70_0225E0A4: @ 0x0225E0A4
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	str r3, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	adds r4, r2, #0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x10]
	adds r3, r4, #0
	str r2, [sp, #8]
	ldrb r2, [r0, #0x14]
	str r2, [sp, #0xc]
	ldrb r0, [r0, #0x18]
	str r0, [sp, #0x10]
	movs r0, #0xce
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r5, #0x3c
	adds r2, r5, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov70_0225E0A4

	thumb_func_start ov70_0225E0D4
ov70_0225E0D4: @ 0x0225E0D4
	movs r1, #0xce
	lsls r1, r1, #2
	ldr r3, _0225E0E0 @ =ov70_0225EED8
	adds r0, r0, r1
	bx r3
	nop
_0225E0E0: .4byte ov70_0225EED8
	thumb_func_end ov70_0225E0D4

	thumb_func_start ov70_0225E0E4
ov70_0225E0E4: @ 0x0225E0E4
	movs r3, #0xce
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r3, _0225E0F0 @ =ov70_0225EF14
	bx r3
	nop
_0225E0F0: .4byte ov70_0225EF14
	thumb_func_end ov70_0225E0E4

	thumb_func_start ov70_0225E0F4
ov70_0225E0F4: @ 0x0225E0F4
	movs r2, #0xce
	lsls r2, r2, #2
	ldr r3, _0225E100 @ =ov70_0225EF6C
	adds r0, r0, r2
	bx r3
	nop
_0225E100: .4byte ov70_0225EF6C
	thumb_func_end ov70_0225E0F4

	thumb_func_start ov70_0225E104
ov70_0225E104: @ 0x0225E104
	push {r4, r5, lr}
	sub sp, #0xc
	str r2, [sp]
	adds r5, r0, #0
	str r3, [sp, #4]
	add r0, sp, #8
	ldrb r0, [r0, #0x10]
	adds r4, r1, #0
	movs r2, #0x70
	str r0, [sp, #8]
	movs r0, #0xf1
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r5, #0x3c
	adds r1, r5, #0
	adds r3, r4, #0
	bl ov70_0225EFE0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov70_0225E104

	thumb_func_start ov70_0225E12C
ov70_0225E12C: @ 0x0225E12C
	movs r1, #0xf1
	lsls r1, r1, #2
	ldr r3, _0225E138 @ =ov70_0225F024
	adds r0, r0, r1
	bx r3
	nop
_0225E138: .4byte ov70_0225F024
	thumb_func_end ov70_0225E12C

	thumb_func_start ov70_0225E13C
ov70_0225E13C: @ 0x0225E13C
	push {r4, lr}
	movs r4, #0xf1
	lsls r4, r4, #2
	adds r0, r0, r4
	bl ov70_0225F048
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225E13C

	thumb_func_start ov70_0225E14C
ov70_0225E14C: @ 0x0225E14C
	push {r3, r4, lr}
	sub sp, #4
	add r4, sp, #0
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	movs r4, #0xf1
	lsls r4, r4, #2
	adds r0, r0, r4
	bl ov70_0225F078
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225E14C

	thumb_func_start ov70_0225E164
ov70_0225E164: @ 0x0225E164
	push {lr}
	sub sp, #0x14
	movs r3, #0
	adds r2, r0, #0
	str r3, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	movs r0, #0x19
	str r0, [sp, #8]
	movs r0, #0xd
	movs r1, #0xce
	str r0, [sp, #0xc]
	movs r0, #6
	lsls r1, r1, #2
	str r0, [sp, #0x10]
	adds r0, r2, r1
	adds r1, #0x6c
	adds r1, r2, r1
	adds r2, #0x3c
	bl ov70_0225EE30
	add sp, #0x14
	pop {pc}
	.align 2, 0
	thumb_func_end ov70_0225E164

	thumb_func_start ov70_0225E194
ov70_0225E194: @ 0x0225E194
	push {lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #0x70
	str r0, [sp, #4]
	movs r0, #0x19
	str r0, [sp, #8]
	movs r0, #0xd
	movs r1, #0xce
	str r0, [sp, #0xc]
	movs r0, #6
	lsls r1, r1, #2
	str r0, [sp, #0x10]
	adds r0, r2, r1
	adds r1, #0x6c
	adds r1, r2, r1
	adds r2, #0x3c
	movs r3, #0
	bl ov70_0225EE30
	add sp, #0x14
	pop {pc}
	thumb_func_end ov70_0225E194

	thumb_func_start ov70_0225E1C4
ov70_0225E1C4: @ 0x0225E1C4
	push {r3, lr}
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r0, r1
	bl ov70_0225EED8
	cmp r0, #0
	beq _0225E1EA
	cmp r0, #1
	beq _0225E1E6
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bne _0225E1EE
	ldr r0, _0225E1F4 @ =0x000005DC
	bl FUN_02005748
_0225E1E6:
	movs r0, #1
	pop {r3, pc}
_0225E1EA:
	movs r0, #0
	pop {r3, pc}
_0225E1EE:
	movs r0, #2
	pop {r3, pc}
	nop
_0225E1F4: .4byte 0x000005DC
	thumb_func_end ov70_0225E1C4

	thumb_func_start ov70_0225E1F8
ov70_0225E1F8: @ 0x0225E1F8
	movs r1, #0xce
	lsls r1, r1, #2
	adds r0, r0, r1
	movs r1, #0
	ldr r3, _0225E208 @ =ov70_0225EF14
	adds r2, r1, #0
	bx r3
	nop
_0225E208: .4byte ov70_0225EF14
	thumb_func_end ov70_0225E1F8

	thumb_func_start ov70_0225E20C
ov70_0225E20C: @ 0x0225E20C
	movs r3, #0xb7
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r3, _0225E218 @ =ov70_0225F288
	bx r3
	nop
_0225E218: .4byte ov70_0225F288
	thumb_func_end ov70_0225E20C

	thumb_func_start ov70_0225E21C
ov70_0225E21C: @ 0x0225E21C
	push {r3, r4, lr}
	sub sp, #4
	ldr r4, [sp, #0x10]
	str r4, [sp]
	movs r4, #0xb7
	lsls r4, r4, #2
	adds r0, r0, r4
	bl ov70_0225F2A8
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225E21C

	thumb_func_start ov70_0225E234
ov70_0225E234: @ 0x0225E234
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x70
	adds r4, r1, #0
	adds r7, r2, #0
	bl FUN_02025E6C
	adds r6, r0, #0
	ldr r0, [r5, #0x34]
	bl FUN_0222E338
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bne _0225E256
	bl FUN_0222E3BC
	b _0225E25C
_0225E256:
	adds r1, r4, #0
	bl FUN_0222E374
_0225E25C:
	adds r1, r6, #0
	movs r2, #0x70
	bl FUN_0222E640
	movs r0, #0xb7
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov70_0225F2C8
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225E234

	thumb_func_start ov70_0225E27C
ov70_0225E27C: @ 0x0225E27C
	movs r3, #0xb7
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r3, _0225E288 @ =ov70_0225F2D8
	bx r3
	nop
_0225E288: .4byte ov70_0225F2D8
	thumb_func_end ov70_0225E27C

	thumb_func_start ov70_0225E28C
ov70_0225E28C: @ 0x0225E28C
	movs r3, #0xb7
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r3, _0225E298 @ =ov70_0225F2E8
	bx r3
	nop
_0225E298: .4byte ov70_0225F2E8
	thumb_func_end ov70_0225E28C

	thumb_func_start ov70_0225E29C
ov70_0225E29C: @ 0x0225E29C
	movs r3, #0xb7
	lsls r3, r3, #2
	adds r0, r0, r3
	ldr r3, _0225E2A8 @ =ov70_0225F2F8
	bx r3
	nop
_0225E2A8: .4byte ov70_0225F2F8
	thumb_func_end ov70_0225E29C

	thumb_func_start ov70_0225E2AC
ov70_0225E2AC: @ 0x0225E2AC
	movs r3, #0xb7
	lsls r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2B8 @ =FUN_0200C158
	bx r3
	nop
_0225E2B8: .4byte FUN_0200C158
	thumb_func_end ov70_0225E2AC

	thumb_func_start ov70_0225E2BC
ov70_0225E2BC: @ 0x0225E2BC
	movs r3, #0xb7
	lsls r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2C8 @ =FUN_0200C190
	bx r3
	nop
_0225E2C8: .4byte FUN_0200C190
	thumb_func_end ov70_0225E2BC

	thumb_func_start ov70_0225E2CC
ov70_0225E2CC: @ 0x0225E2CC
	movs r3, #0xb7
	lsls r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2D8 @ =FUN_0200C1C8
	bx r3
	nop
_0225E2D8: .4byte FUN_0200C1C8
	thumb_func_end ov70_0225E2CC

	thumb_func_start ov70_0225E2DC
ov70_0225E2DC: @ 0x0225E2DC
	movs r3, #0xb7
	lsls r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2E8 @ =FUN_0200C200
	bx r3
	nop
_0225E2E8: .4byte FUN_0200C200
	thumb_func_end ov70_0225E2DC

	thumb_func_start ov70_0225E2EC
ov70_0225E2EC: @ 0x0225E2EC
	movs r3, #0xb7
	lsls r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E2F8 @ =FUN_0200C238
	bx r3
	nop
_0225E2F8: .4byte FUN_0200C238
	thumb_func_end ov70_0225E2EC

	thumb_func_start ov70_0225E2FC
ov70_0225E2FC: @ 0x0225E2FC
	movs r3, #0xb7
	lsls r3, r3, #2
	ldr r0, [r0, r3]
	ldr r3, _0225E308 @ =FUN_0200C270
	bx r3
	nop
_0225E308: .4byte FUN_0200C270
	thumb_func_end ov70_0225E2FC

	thumb_func_start ov70_0225E30C
ov70_0225E30C: @ 0x0225E30C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r2, #0
	adds r4, r1, #0
	bl FUN_022316E8
	adds r2, r0, #0
	movs r0, #0xb7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl FUN_0200B7EC
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225E30C

	thumb_func_start ov70_0225E328
ov70_0225E328: @ 0x0225E328
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov70_0225F7F8
	cmp r4, r0
	bne _0225E368
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov70_0225F7FC
	cmp r0, #1
	bne _0225E368
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov70_0225F834
	cmp r0, #0
	bne _0225E368
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r5, r0
	bl ov70_0225F828
	cmp r6, r0
	beq _0225E376
_0225E368:
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov70_0225F79C
_0225E376:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225E328

	thumb_func_start ov70_0225E378
ov70_0225E378: @ 0x0225E378
	push {r3, lr}
	adds r3, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r3, r0
	adds r3, #0x3c
	adds r2, r1, #0
	adds r1, r3, #0
	movs r3, #0x70
	bl ov70_0225F7A8
	pop {r3, pc}
	thumb_func_end ov70_0225E378

	thumb_func_start ov70_0225E390
ov70_0225E390: @ 0x0225E390
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225F7FC
	cmp r0, #0
	beq _0225E3CC
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_0225F7F8
	adds r1, r0, #0
	ldr r0, [r4, #0x34]
	bl FUN_0222E374
	movs r1, #0x61
	lsls r1, r1, #2
	str r0, [sp]
	adds r0, r4, r1
	adds r1, #8
	adds r1, r4, r1
	adds r4, #0x3c
	adds r2, r4, #0
	movs r3, #0x70
	bl ov70_0225FDA0
_0225E3CC:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225E390

	thumb_func_start ov70_0225E3D0
ov70_0225E3D0: @ 0x0225E3D0
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r3, _0225E3DC @ =ov70_0225F7E0
	adds r0, r0, r1
	bx r3
	nop
_0225E3DC: .4byte ov70_0225F7E0
	thumb_func_end ov70_0225E3D0

	thumb_func_start ov70_0225E3E0
ov70_0225E3E0: @ 0x0225E3E0
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r3, _0225E3EC @ =ov70_0225F7F8
	adds r0, r0, r1
	bx r3
	nop
_0225E3EC: .4byte ov70_0225F7F8
	thumb_func_end ov70_0225E3E0

	thumb_func_start ov70_0225E3F0
ov70_0225E3F0: @ 0x0225E3F0
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r3, _0225E3FC @ =ov70_0225F7FC
	adds r0, r0, r1
	bx r3
	nop
_0225E3FC: .4byte ov70_0225F7FC
	thumb_func_end ov70_0225E3F0

	thumb_func_start ov70_0225E400
ov70_0225E400: @ 0x0225E400
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r3, _0225E40C @ =ov70_0225F814
	adds r0, r0, r1
	bx r3
	nop
_0225E40C: .4byte ov70_0225F814
	thumb_func_end ov70_0225E400

	thumb_func_start ov70_0225E410
ov70_0225E410: @ 0x0225E410
	movs r1, #0x61
	lsls r1, r1, #2
	ldr r3, _0225E41C @ =ov70_0225F7EC
	adds r0, r0, r1
	bx r3
	nop
_0225E41C: .4byte ov70_0225F7EC
	thumb_func_end ov70_0225E410

	thumb_func_start ov70_0225E420
ov70_0225E420: @ 0x0225E420
	movs r2, #0xf7
	lsls r2, r2, #2
	ldr r0, [r0, r2]
	ldr r3, _0225E42C @ =ov70_0226C810
	movs r2, #1
	bx r3
	.align 2, 0
_0225E42C: .4byte ov70_0226C810
	thumb_func_end ov70_0225E420

	thumb_func_start ov70_0225E430
ov70_0225E430: @ 0x0225E430
	ldr r1, _0225E438 @ =0x0000018A
	movs r2, #1
	strh r2, [r0, r1]
	bx lr
	.align 2, 0
_0225E438: .4byte 0x0000018A
	thumb_func_end ov70_0225E430

	thumb_func_start ov70_0225E43C
ov70_0225E43C: @ 0x0225E43C
	movs r2, #0x61
	lsls r2, r2, #2
	ldr r3, _0225E448 @ =ov70_0225F934
	adds r0, r0, r2
	bx r3
	nop
_0225E448: .4byte ov70_0225F934
	thumb_func_end ov70_0225E43C

	thumb_func_start ov70_0225E44C
ov70_0225E44C: @ 0x0225E44C
	movs r1, #0xa6
	lsls r1, r1, #2
	ldr r3, _0225E458 @ =ov70_02260A68
	adds r0, r0, r1
	bx r3
	nop
_0225E458: .4byte ov70_02260A68
	thumb_func_end ov70_0225E44C

	thumb_func_start ov70_0225E45C
ov70_0225E45C: @ 0x0225E45C
	movs r1, #0xf6
	lsls r1, r1, #2
	ldr r3, [r0, r1]
	movs r2, #0
	str r2, [r0, r1]
	adds r0, r3, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225E45C

	thumb_func_start ov70_0225E46C
ov70_0225E46C: @ 0x0225E46C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #0x14
	blo _0225E47A
	bl FUN_02022974
_0225E47A:
	ldr r0, [r5, #0x34]
	adds r1, r4, #0
	bl FUN_0222E374
	bl FUN_0222E8C4
	adds r6, r0, #0
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov70_02269268
	ldr r0, [r5, #0x34]
	bl FUN_0222E338
	cmp r4, r0
	bne _0225E4A8
	ldr r0, [r5, #0x34]
	adds r1, r6, #0
	bl FUN_0222EB6C
_0225E4A8:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0225E46C

	thumb_func_start ov70_0225E4AC
ov70_0225E4AC: @ 0x0225E4AC
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #0x14
	blo _0225E4BA
	bl FUN_02022974
_0225E4BA:
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r4, #0
	bl ov70_02269298
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225E4AC

	thumb_func_start ov70_0225E4C8
ov70_0225E4C8: @ 0x0225E4C8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xf9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_022622A4
	movs r0, #0x3e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CAE0
	adds r4, #0x3c
	adds r0, r4, #0
	bl ov70_0225E740
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225E4C8

	thumb_func_start ov70_0225E4EC
ov70_0225E4EC: @ 0x0225E4EC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	str r1, [sp, #0x14]
	ldr r0, _0225E698 @ =0x04000050
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0225E69C @ =0x04001050
	adds r6, r2, #0
	strh r1, [r0]
	movs r0, #0x20
	adds r1, r6, #0
	bl FUN_0201DBEC
	ldr r0, _0225E6A0 @ =0x0226D664
	bl FUN_0201FE94
	ldr r0, _0225E6A4 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #5]
	bl FUN_0201FFE8
	movs r0, #0
	adds r1, r0, #0
	bl FUN_0201975C
	ldr r0, _0225E6A8 @ =0x0226D5BC
	bl FUN_02018368
	adds r0, r6, #0
	bl FUN_02018340
	str r0, [r5]
	movs r0, #0
	ldr r7, _0225E6AC @ =0x0226D6B4
	ldr r4, _0225E6B0 @ =0x0226D5CC
	str r0, [sp, #0x18]
_0225E536:
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r2, r7, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4]
	movs r1, #0x20
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r2, #0
	adds r3, r6, #0
	bl FUN_02019690
	ldr r1, [r4]
	ldr r0, [r5]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019EBC
	ldr r0, [sp, #0x18]
	adds r7, #0x1c
	adds r0, r0, #1
	adds r4, r4, #4
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0225E536
	ldr r0, [sp, #0x14]
	bl FUN_02025E44
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0
	movs r1, #0xa0
	adds r2, r6, #0
	bl FUN_02002E7C
	movs r0, #0
	movs r1, #0x80
	adds r2, r6, #0
	bl FUN_02002E98
	movs r0, #0
	str r0, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0x55
	movs r3, #3
	bl FUN_0200DAA4
	movs r1, #1
	str r4, [sp]
	str r6, [sp, #4]
	ldr r0, [r5]
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200DD0C
	movs r0, #3
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r6, [sp, #8]
	ldr r0, [r5]
	movs r1, #1
	movs r2, #0x1f
	movs r3, #2
	bl FUN_0200E2A4
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0xba
	movs r1, #0x5a
	movs r2, #0
	movs r3, #0x40
	str r6, [sp, #4]
	bl FUN_02006E84
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
	ldr r0, _0225E6B4 @ =0x0226D5DC
	ldr r2, _0225E6B8 @ =0x00100010
	movs r1, #0x10
	bl FUN_0201E88C
	movs r0, #0x18
	adds r1, r6, #0
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	bl FUN_02039734
	adds r1, r5, #0
	movs r0, #0x18
	adds r1, #8
	adds r2, r6, #0
	bl FUN_020095C4
	str r0, [r5, #4]
	adds r0, r5, #0
	movs r2, #1
	adds r0, #8
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r7, #0
	adds r4, r5, #0
_0225E642:
	movs r0, #0x18
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_02009714
	movs r1, #0x13
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r7, r7, #1
	adds r4, r4, #4
	cmp r7, #4
	blt _0225E642
	movs r0, #0x18
	adds r1, r6, #0
	bl FUN_0201DCC8
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	str r0, [sp]
	ldr r0, _0225E6BC @ =ov70_0225E754
	movs r1, #0
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #2
	adds r3, r1, #0
	bl FUN_02024220
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0225E698: .4byte 0x04000050
_0225E69C: .4byte 0x04001050
_0225E6A0: .4byte 0x0226D664
_0225E6A4: .4byte 0x021BF6DC
_0225E6A8: .4byte 0x0226D5BC
_0225E6AC: .4byte 0x0226D6B4
_0225E6B0: .4byte 0x0226D5CC
_0225E6B4: .4byte 0x0226D5DC
_0225E6B8: .4byte 0x00100010
_0225E6BC: .4byte ov70_0225E754
	thumb_func_end ov70_0225E4EC

	thumb_func_start ov70_0225E6C0
ov70_0225E6C0: @ 0x0225E6C0
	push {r3, lr}
	ldr r0, [r0, #4]
	bl FUN_020219F8
	bl FUN_0201DCE8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0225E6C0

	thumb_func_start ov70_0225E6D0
ov70_0225E6D0: @ 0x0225E6D0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	bl FUN_0201DC3C
	ldr r5, _0225E73C @ =0x0226D5CC
	movs r4, #0
_0225E6DC:
	ldr r1, [r5]
	ldr r0, [r6]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl FUN_02019044
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225E6DC
	ldr r0, [r6]
	bl FUN_020181C4
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	bl FUN_0201DCF0
	movs r0, #5
	lsls r0, r0, #6
	movs r4, #0
	adds r7, r0, #0
	str r4, [r6, r0]
	adds r5, r6, #0
	subs r7, #0x10
_0225E70E:
	ldr r0, [r5, r7]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225E70E
	ldr r0, [r6, #4]
	bl FUN_02021964
	bl FUN_0201E958
	bl FUN_0201F8B4
	bl FUN_0200A878
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_020242C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E73C: .4byte 0x0226D5CC
	thumb_func_end ov70_0225E6D0

	thumb_func_start ov70_0225E740
ov70_0225E740: @ 0x0225E740
	push {r3, lr}
	ldr r0, [r0]
	bl FUN_0201C2B8
	bl FUN_0200A858
	bl FUN_0201DCAC
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0225E740

	thumb_func_start ov70_0225E754
ov70_0225E754: @ 0x0225E754
	push {r3, r4, lr}
	sub sp, #0xc
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	ldr r0, _0225E864 @ =0x04000008
	movs r1, #3
	ldrh r2, [r0]
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strh r1, [r0]
	adds r0, #0x58
	ldrh r2, [r0]
	ldr r1, _0225E868 @ =0xFFFFCFFD
	ands r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	adds r2, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _0225E86C @ =0x0000CFFB
	ands r2, r3
	strh r2, [r0]
	adds r2, r1, #2
	ldrh r3, [r0]
	adds r1, r1, #2
	ands r3, r2
	movs r2, #8
	orrs r2, r3
	strh r2, [r0]
	ldrh r2, [r0]
	ands r2, r1
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	ldr r0, _0225E870 @ =0x0226D5EC
	blx FUN_020BFD2C
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	blx FUN_020BFC74
	movs r1, #0
	ldr r0, _0225E874 @ =0x00006B5A
	ldr r2, _0225E878 @ =0x00007FFF
	movs r3, #0x3f
	str r1, [sp]
	blx FUN_020BFD58
	ldr r1, _0225E87C @ =0xBFFF0000
	ldr r0, _0225E880 @ =0x04000580
	ldr r2, _0225E884 @ =0xFFFFF224
	str r1, [r0]
	ldr r1, _0225E888 @ =0xFFFFF805
	movs r0, #0
	movs r3, #0x6e
	blx FUN_020AF51C
	movs r1, #0
	add r0, sp, #4
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r1, #1
	lsls r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	adds r1, r0, #0
	blx FUN_020BD4FC
	add r4, sp, #4
	movs r1, #0
	movs r2, #2
	movs r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	movs r0, #1
	blx FUN_020AF51C
	movs r1, #0
	adds r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r1, #1
	lsls r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	adds r1, r0, #0
	blx FUN_020BD4FC
	movs r0, #2
	movs r1, #0
	movs r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r0]
	ldrsh r3, [r4, r3]
	blx FUN_020AF51C
	ldr r1, _0225E878 @ =0x00007FFF
	movs r0, #2
	blx FUN_020AF558
	movs r1, #0
	adds r0, r4, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	movs r1, #1
	lsls r1, r1, #0xc
	strh r1, [r0, #4]
	add r0, sp, #4
	adds r1, r0, #0
	blx FUN_020BD4FC
	movs r1, #0
	movs r2, #2
	movs r3, #4
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldrsh r3, [r4, r3]
	movs r0, #3
	blx FUN_020AF51C
	ldr r1, _0225E878 @ =0x00007FFF
	movs r0, #3
	blx FUN_020AF558
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_0225E864: .4byte 0x04000008
_0225E868: .4byte 0xFFFFCFFD
_0225E86C: .4byte 0x0000CFFB
_0225E870: .4byte 0x0226D5EC
_0225E874: .4byte 0x00006B5A
_0225E878: .4byte 0x00007FFF
_0225E87C: .4byte 0xBFFF0000
_0225E880: .4byte 0x04000580
_0225E884: .4byte 0xFFFFF224
_0225E888: .4byte 0xFFFFF805
	thumb_func_end ov70_0225E754

	thumb_func_start ov70_0225E88C
ov70_0225E88C: @ 0x0225E88C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x3e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA44
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bne _0225E8B2
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225E8B2
	movs r0, #0x3f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262E20
_0225E8B2:
	movs r0, #0xf9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02262210
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	bne _0225E8E8
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _0225E8E8
	movs r0, #0x3e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CA5C
	movs r0, #0x3f
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_02262E2C
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_0226C718
_0225E8E8:
	adds r0, r4, #0
	bl ov70_0225E970
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0225E91E
	ldrb r0, [r4, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0225E90A
	ldrb r0, [r4, #6]
	cmp r0, #1
	beq _0225E90A
	ldrb r0, [r4]
	cmp r0, #1
	bne _0225E90E
_0225E90A:
	movs r2, #1
	b _0225E910
_0225E90E:
	movs r2, #0
_0225E910:
	movs r0, #0x61
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r4, #0
	movs r3, #0x70
	bl ov70_0225F418
_0225E91E:
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269220
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225E88C

	thumb_func_start ov70_0225E92C
ov70_0225E92C: @ 0x0225E92C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	movs r0, #0xfb
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02260AEC
	movs r0, #0xf9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02262298
	movs r0, #0x3e
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov70_0225CAD4
	movs r0, #0xf5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02269240
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	adds r4, #0x3c
	adds r0, r4, #0
	bl ov70_0225E6C0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225E92C

	thumb_func_start ov70_0225E970
ov70_0225E970: @ 0x0225E970
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [r7, #0x34]
	bl FUN_0222E190
	str r0, [sp, #8]
	movs r4, #0
_0225E980:
	adds r0, r4, #0
	bl FUN_02233184
	adds r6, r0, #0
	cmp r6, #1
	bne _0225E99E
	adds r0, r4, #0
	bl FUN_022331A4
	cmp r0, #0
	bne _0225E99A
	movs r5, #1
	b _0225E9A0
_0225E99A:
	movs r5, #0
	b _0225E9A0
_0225E99E:
	movs r5, #0
_0225E9A0:
	adds r0, r4, #0
	bl FUN_02233224
	adds r2, r0, #0
	ldr r0, [sp, #8]
	str r5, [sp]
	str r0, [sp, #4]
	movs r0, #0xf9
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	adds r1, r4, #0
	adds r3, r6, #0
	bl ov70_022627BC
	adds r4, r4, #1
	cmp r4, #3
	blt _0225E980
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225E970

	thumb_func_start ov70_0225E9C8
ov70_0225E9C8: @ 0x0225E9C8
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
	movs r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [r1]
	adds r4, r2, #0
	adds r6, r3, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #2
	bl FUN_0201A7E8
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #6
	lsls r0, r0, #6
	adds r1, r6, #0
	bl FUN_02023790
	str r0, [r5, #0x18]
	adds r0, r4, #0
	bl FUN_02025E44
	bl FUN_02027AC0
	str r0, [r5, #0x14]
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov70_0225E9C8

	thumb_func_start ov70_0225EA14
ov70_0225EA14: @ 0x0225EA14
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225EA30
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225EA30:
	adds r0, r4, #0
	bl ov70_0225EB38
	ldr r0, [r4, #0x18]
	bl FUN_020237BC
	adds r0, r4, #0
	bl FUN_0201A8FC
	pop {r4, pc}
	thumb_func_end ov70_0225EA14

	thumb_func_start ov70_0225EA44
ov70_0225EA44: @ 0x0225EA44
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225EA64
	ldr r0, [r5, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225EA64:
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #0x18]
	adds r1, r4, #0
	bl FUN_02023810
	movs r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x14]
	movs r1, #1
	str r0, [sp, #4]
	ldr r0, _0225EAA0 @ =0x0001020F
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	adds r0, r5, #0
	bl FUN_0201D78C
	movs r1, #1
	str r0, [r5, #0x10]
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200E060
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225EAA0: .4byte 0x0001020F
	thumb_func_end ov70_0225EA44

	thumb_func_start ov70_0225EAA4
ov70_0225EAA4: @ 0x0225EAA4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225EAC4
	ldr r0, [r5, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225EAC4:
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #0x18]
	adds r1, r4, #0
	bl FUN_02023810
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0225EB04 @ =0x0001020F
	movs r1, #1
	str r0, [sp, #8]
	str r3, [sp, #0xc]
	ldr r2, [r5, #0x18]
	adds r0, r5, #0
	bl FUN_0201D78C
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200E060
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225EB04: .4byte 0x0001020F
	thumb_func_end ov70_0225EAA4

	thumb_func_start ov70_0225EB08
ov70_0225EB08: @ 0x0225EB08
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB16
	bl FUN_02022974
_0225EB16:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0200E7FC
	str r0, [r4, #0x1c]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225EB08

	thumb_func_start ov70_0225EB24
ov70_0225EB24: @ 0x0225EB24
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB36
	bl FUN_0200EBA0
	movs r0, #0
	str r0, [r4, #0x1c]
_0225EB36:
	pop {r4, pc}
	thumb_func_end ov70_0225EB24

	thumb_func_start ov70_0225EB38
ov70_0225EB38: @ 0x0225EB38
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _0225EB4A
	bl FUN_0200EBC8
	movs r0, #0
	str r0, [r4, #0x1c]
_0225EB4A:
	pop {r4, pc}
	thumb_func_end ov70_0225EB38

	thumb_func_start ov70_0225EB4C
ov70_0225EB4C: @ 0x0225EB4C
	ldr r0, [r0, #0x1c]
	cmp r0, #0
	beq _0225EB56
	movs r0, #1
	bx lr
_0225EB56:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225EB4C

	thumb_func_start ov70_0225EB5C
ov70_0225EB5C: @ 0x0225EB5C
	push {r3, lr}
	ldr r0, [r0, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _0225EB70
	movs r0, #1
	pop {r3, pc}
_0225EB70:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0225EB5C

	thumb_func_start ov70_0225EB74
ov70_0225EB74: @ 0x0225EB74
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225EB90
	ldr r0, [r4, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225EB90:
	adds r0, r4, #0
	bl ov70_0225EB38
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0200E084
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225EB74

	thumb_func_start ov70_0225EBA8
ov70_0225EBA8: @ 0x0225EBA8
	push {r4, lr}
	adds r4, r0, #0
	bl ov70_0225E9C8
	adds r0, r4, #0
	movs r1, #2
	bl FUN_0201C2B4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225EBA8

	thumb_func_start ov70_0225EBBC
ov70_0225EBBC: @ 0x0225EBBC
	ldr r3, _0225EBC0 @ =ov70_0225EA14
	bx r3
	.align 2, 0
_0225EBC0: .4byte ov70_0225EA14
	thumb_func_end ov70_0225EBBC

	thumb_func_start ov70_0225EBC4
ov70_0225EBC4: @ 0x0225EBC4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #0x10]
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	beq _0225EBE4
	ldr r0, [r5, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_0225EBE4:
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r5, #0x18]
	adds r1, r4, #0
	bl FUN_02023810
	movs r3, #0
	str r3, [sp]
	ldr r0, [r5, #0x14]
	movs r1, #1
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r5, #0x18]
	adds r0, r5, #0
	bl FUN_0201D738
	str r0, [r5, #0x10]
	movs r0, #3
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x1f
	movs r3, #2
	bl FUN_0200E69C
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_0225EBC4

	thumb_func_start ov70_0225EC20
ov70_0225EC20: @ 0x0225EC20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	adds r5, r2, #0
	adds r7, r0, #0
	adds r4, r1, #0
	movs r0, #0x3e
	adds r1, r5, #0
	bl FUN_02006C24
	adds r6, r0, #0
	ldr r0, _0225ED44 @ =0x00001388
	adds r1, r6, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x13
	str r5, [sp, #8]
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r2, #4
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r7, #0x40]
	ldr r0, _0225ED44 @ =0x00001388
	adds r1, r6, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x4d
	str r5, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #0xa
	movs r3, #0
	bl FUN_02009B04
	str r0, [r7, #0x44]
	ldr r1, _0225ED44 @ =0x00001388
	movs r0, #2
	str r1, [sp]
	str r0, [sp, #4]
	lsrs r0, r1, #4
	str r5, [sp, #8]
	ldr r0, [r4, r0]
	adds r1, r6, #0
	movs r2, #5
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r7, #0x48]
	ldr r0, _0225ED44 @ =0x00001388
	adds r1, r6, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x4f
	str r5, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r2, #6
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r7, #0x4c]
	adds r0, r6, #0
	bl FUN_02006CA8
	ldr r0, [r7, #0x40]
	bl FUN_0200A3DC
	ldr r0, [r7, #0x44]
	bl FUN_0200A640
	ldr r1, _0225ED44 @ =0x00001388
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r0, #0x13
	str r2, [sp, #0x10]
	lsls r0, r0, #4
	ldr r3, [r4, r0]
	str r3, [sp, #0x14]
	adds r3, r0, #4
	ldr r3, [r4, r3]
	str r3, [sp, #0x18]
	adds r3, r0, #0
	adds r3, #8
	ldr r3, [r4, r3]
	adds r0, #0xc
	str r3, [sp, #0x1c]
	ldr r0, [r4, r0]
	adds r3, r1, #0
	str r0, [sp, #0x20]
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	add r0, sp, #0x4c
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [r4, #4]
	movs r6, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	movs r0, #1
	str r0, [sp, #0x44]
	movs r0, #3
	lsls r0, r0, #0x12
	str r5, [sp, #0x48]
	ldr r4, _0225ED48 @ =0x0226D580
	str r6, [sp, #0x40]
	str r0, [sp, #0x34]
	adds r5, r7, #0
_0225ED0E:
	ldrb r0, [r4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021B90
	str r0, [r5, #0x50]
	adds r1, r6, #0
	bl FUN_02021D6C
	ldr r0, [r5, #0x50]
	movs r1, #1
	bl FUN_02021CC8
	ldr r0, [r5, #0x50]
	movs r1, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r6, #2
	blt _0225ED0E
	movs r0, #0
	str r0, [r7, #0x3c]
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225ED44: .4byte 0x00001388
_0225ED48: .4byte 0x0226D580
	thumb_func_end ov70_0225EC20

	thumb_func_start ov70_0225ED4C
ov70_0225ED4C: @ 0x0225ED4C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [r5, #0x34]
	cmp r1, #0
	beq _0225ED5C
	bl ov70_0225EDE0
_0225ED5C:
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225ED6C
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225EF14
_0225ED6C:
	movs r7, #0
	adds r4, r5, #0
_0225ED70:
	ldr r0, [r4, #0x50]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #0x50]
	adds r7, r7, #1
	adds r4, r4, #4
	cmp r7, #2
	blt _0225ED70
	ldr r0, [r5, #0x40]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x44]
	bl FUN_0200A6DC
	movs r7, #0x13
	movs r4, #0
	lsls r7, r7, #4
_0225ED94:
	ldr r0, [r6, r7]
	ldr r1, [r5, #0x40]
	bl FUN_02009D68
	adds r4, r4, #1
	adds r5, r5, #4
	adds r6, r6, #4
	cmp r4, #4
	blt _0225ED94
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225ED4C

	thumb_func_start ov70_0225EDA8
ov70_0225EDA8: @ 0x0225EDA8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x34]
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r0, #0
	beq _0225EDBC
	bl FUN_02022974
_0225EDBC:
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02013A04
	str r0, [r5, #0x34]
	movs r1, #0
	strh r4, [r5, #0x38]
	cmp r4, #0
	bls _0225EDDE
	adds r2, r1, #0
_0225EDD0:
	ldr r0, [r5, #0x34]
	adds r1, r1, #1
	adds r0, r0, r2
	str r6, [r0, #4]
	adds r2, #8
	cmp r1, r4
	blo _0225EDD0
_0225EDDE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225EDA8

	thumb_func_start ov70_0225EDE0
ov70_0225EDE0: @ 0x0225EDE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _0225EDF4
	bl FUN_02013A3C
	movs r0, #0
	str r0, [r4, #0x34]
	strh r0, [r4, #0x38]
_0225EDF4:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225EDE0

	thumb_func_start ov70_0225EDF8
ov70_0225EDF8: @ 0x0225EDF8
	ldr r3, _0225EE00 @ =FUN_02013A6C
	ldr r0, [r0, #0x34]
	bx r3
	nop
_0225EE00: .4byte FUN_02013A6C
	thumb_func_end ov70_0225EDF8

	thumb_func_start ov70_0225EE04
ov70_0225EE04: @ 0x0225EE04
	ldr r0, [r0, #0x34]
	bx lr
	thumb_func_end ov70_0225EE04

	thumb_func_start ov70_0225EE08
ov70_0225EE08: @ 0x0225EE08
	push {r3, r4}
	ldrh r2, [r0, #0x38]
	movs r3, #0
	cmp r2, #0
	ble _0225EE2A
	ldr r4, [r0, #0x34]
_0225EE14:
	ldr r2, [r4, #4]
	cmp r1, r2
	bne _0225EE20
	movs r0, #1
	pop {r3, r4}
	bx lr
_0225EE20:
	ldrh r2, [r0, #0x38]
	adds r3, r3, #1
	adds r4, #8
	cmp r3, r2
	blt _0225EE14
_0225EE2A:
	movs r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_0225EE08

	thumb_func_start ov70_0225EE30
ov70_0225EE30: @ 0x0225EE30
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r0, #0
	beq _0225EE46
	bl FUN_02022974
_0225EE46:
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #1
	cmp r0, #0x12
	blt _0225EE52
	bl FUN_02022974
_0225EE52:
	adds r3, r4, #0
	adds r2, r5, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	adds r1, r5, #0
	adds r1, #0x20
	str r1, [r5, #0xc]
	ldrh r0, [r4, #0x10]
	add r3, sp, #0x18
	movs r2, #1
	strh r0, [r5, #0x3a]
	ldr r0, _0225EED4 @ =ov70_0225EF58
	str r0, [r5, #4]
	ldrb r0, [r3, #0x1c]
	str r0, [sp]
	add r0, sp, #0x38
	ldrb r0, [r0]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x12]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #0xca
	str r0, [sp, #0x10]
	ldrb r3, [r3, #0x18]
	ldr r0, [r6]
	bl FUN_0201A7E8
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	movs r2, #0x55
	movs r3, #3
	bl FUN_0200DC48
	add r2, sp, #0x18
	ldr r3, [sp, #0x2c]
	ldrh r2, [r2, #0x10]
	lsls r3, r3, #0x18
	adds r0, r5, #0
	adds r1, r7, #0
	lsrs r3, r3, #0x18
	bl FUN_0200112C
	str r0, [r5, #0x30]
	adds r5, #0x20
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0225EED4: .4byte ov70_0225EF58
	thumb_func_end ov70_0225EE30

	thumb_func_start ov70_0225EED8
ov70_0225EED8: @ 0x0225EED8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _0225EEE8
	movs r0, #1
	mvns r0, r0
	pop {r3, r4, r5, pc}
_0225EEE8:
	bl FUN_02001288
	adds r4, r0, #0
	movs r0, #1
	mvns r0, r0
	cmp r4, r0
	beq _0225EEFC
	adds r0, r0, #1
	cmp r4, r0
	bne _0225EF04
_0225EEFC:
	adds r0, r5, #0
	bl ov70_0225EF70
	b _0225EF0A
_0225EF04:
	ldr r0, _0225EF10 @ =0x000005DC
	bl FUN_02005748
_0225EF0A:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_0225EF10: .4byte 0x000005DC
	thumb_func_end ov70_0225EED8

	thumb_func_start ov70_0225EF14
ov70_0225EF14: @ 0x0225EF14
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x30]
	cmp r0, #0
	beq _0225EF56
	bl FUN_02001384
	movs r0, #0
	str r0, [r5, #0x30]
	adds r0, r5, #0
	adds r0, #0x20
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r5, #0
	adds r0, #0x20
	bl FUN_0201AD10
	adds r0, r5, #0
	adds r0, #0x20
	bl FUN_0201A8FC
	movs r4, #0
	str r4, [r5, #0x3c]
	adds r6, r4, #0
_0225EF46:
	ldr r0, [r5, #0x50]
	adds r1, r6, #0
	bl FUN_02021CAC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0225EF46
_0225EF56:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225EF14

	thumb_func_start ov70_0225EF58
ov70_0225EF58: @ 0x0225EF58
	push {r3, lr}
	cmp r2, #0
	bne _0225EF64
	ldr r0, _0225EF68 @ =0x000005DC
	bl FUN_02005748
_0225EF64:
	pop {r3, pc}
	nop
_0225EF68: .4byte 0x000005DC
	thumb_func_end ov70_0225EF58

	thumb_func_start ov70_0225EF6C
ov70_0225EF6C: @ 0x0225EF6C
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov70_0225EF6C

	thumb_func_start ov70_0225EF70
ov70_0225EF70: @ 0x0225EF70
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #0
	bne _0225EF90
	ldr r0, [r4, #0x50]
	movs r1, #0
	bl FUN_02021CAC
	ldr r0, [r4, #0x54]
	movs r1, #0
	bl FUN_02021CAC
	add sp, #4
	pop {r3, r4, pc}
_0225EF90:
	ldr r0, [r4, #0x30]
	add r1, sp, #0
	movs r2, #0
	bl FUN_020014DC
	add r0, sp, #0
	ldrh r0, [r0]
	cmp r0, #0
	ldr r0, [r4, #0x50]
	bne _0225EFAC
	movs r1, #0
	bl FUN_02021CAC
	b _0225EFB2
_0225EFAC:
	movs r1, #1
	bl FUN_02021CAC
_0225EFB2:
	add r0, sp, #0
	ldrh r1, [r0]
	ldrh r0, [r4, #0x3a]
	subs r0, r0, #7
	cmp r1, r0
	ldr r0, [r4, #0x54]
	blt _0225EFCA
	movs r1, #0
	bl FUN_02021CAC
	add sp, #4
	pop {r3, r4, pc}
_0225EFCA:
	movs r1, #1
	bl FUN_02021CAC
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0225EF70

	thumb_func_start ov70_0225EFD4
ov70_0225EFD4: @ 0x0225EFD4
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225EFD4

	thumb_func_start ov70_0225EFD8
ov70_0225EFD8: @ 0x0225EFD8
	ldr r3, _0225EFDC @ =ov70_0225F024
	bx r3
	.align 2, 0
_0225EFDC: .4byte ov70_0225F024
	thumb_func_end ov70_0225EFD8

	thumb_func_start ov70_0225EFE0
ov70_0225EFE0: @ 0x0225EFE0
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	add r0, sp, #0x10
	ldrb r2, [r0, #0x10]
	str r2, [sp]
	ldrb r2, [r0, #0x14]
	str r2, [sp, #4]
	ldrb r0, [r0, #0x18]
	movs r2, #1
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #0xca
	str r0, [sp, #0x10]
	ldr r0, [r1]
	adds r1, r4, #0
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x55
	movs r3, #3
	bl FUN_0200DC48
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov70_0225EFE0

	thumb_func_start ov70_0225F024
ov70_0225F024: @ 0x0225F024
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201A7CC
	cmp r0, #1
	bne _0225F044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r4, #0
	bl FUN_0201AD10
	adds r0, r4, #0
	bl FUN_0201A8FC
_0225F044:
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0225F024

	thumb_func_start ov70_0225F048
ov70_0225F048: @ 0x0225F048
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	str r3, [sp]
	adds r5, r2, #0
	movs r1, #0xff
	str r1, [sp, #4]
	ldr r1, _0225F074 @ =0x0001020F
	adds r4, r0, #0
	str r1, [sp, #8]
	movs r1, #0
	adds r2, r6, #0
	adds r3, r5, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_0225F074: .4byte 0x0001020F
	thumb_func_end ov70_0225F048

	thumb_func_start ov70_0225F078
ov70_0225F078: @ 0x0225F078
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	str r3, [sp]
	add r1, sp, #8
	adds r4, r2, #0
	ldrh r1, [r1, #0x10]
	adds r2, r5, #0
	adds r3, r4, #0
	str r1, [sp, #4]
	movs r1, #0xf
	bl FUN_0201AE78
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_0225F078

	thumb_func_start ov70_0225F098
ov70_0225F098: @ 0x0225F098
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r0, #0
	beq _0225F0AA
	bl FUN_02022974
_0225F0AA:
	movs r0, #2
	adds r1, r6, #0
	bl FUN_02013A04
	str r0, [r5]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x43
	bl ov70_0225F288
	adds r1, r0, #0
	ldr r0, [r5]
	movs r2, #0
	bl FUN_02013A6C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x42
	bl ov70_0225F288
	adds r1, r0, #0
	ldr r0, [r5]
	movs r2, #1
	bl FUN_02013A6C
	ldr r3, _0225F0FC @ =0x0226D644
	adds r2, r5, #4
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r0, #2
	strh r0, [r5, #0x14]
	ldr r0, [r5]
	str r0, [r5, #4]
	pop {r4, r5, r6, pc}
	nop
_0225F0FC: .4byte 0x0226D644
	thumb_func_end ov70_0225F098

	thumb_func_start ov70_0225F100
ov70_0225F100: @ 0x0225F100
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _0225F112
	bl FUN_02013A3C
	movs r0, #0
	str r0, [r4]
_0225F112:
	pop {r4, pc}
	thumb_func_end ov70_0225F100

	thumb_func_start ov70_0225F114
ov70_0225F114: @ 0x0225F114
	push {r3, r4, lr}
	sub sp, #0x14
	movs r3, #4
	adds r4, r0, #0
	str r3, [sp]
	movs r0, #0x17
	str r0, [sp, #4]
	movs r0, #0x10
	str r0, [sp, #8]
	movs r0, #5
	str r0, [sp, #0xc]
	movs r0, #0x5e
	str r0, [sp, #0x10]
	ldr r0, [r1]
	adds r1, r4, #0
	movs r2, #1
	bl FUN_0201A7E8
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	add sp, #0x14
	pop {r3, r4, pc}
	thumb_func_end ov70_0225F114

	thumb_func_start ov70_0225F144
ov70_0225F144: @ 0x0225F144
	ldr r3, _0225F148 @ =FUN_0201A8FC
	bx r3
	.align 2, 0
_0225F148: .4byte FUN_0201A8FC
	thumb_func_end ov70_0225F144

	thumb_func_start ov70_0225F14C
ov70_0225F14C: @ 0x0225F14C
	push {r4, lr}
	sub sp, #0x10
	adds r2, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r3, #0xff
	str r3, [sp, #4]
	ldr r3, _0225F180 @ =0x0001020F
	adds r4, r0, #0
	str r3, [sp, #8]
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x55
	movs r3, #3
	bl FUN_0200DC48
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r4, pc}
	nop
_0225F180: .4byte 0x0001020F
	thumb_func_end ov70_0225F14C

	thumb_func_start ov70_0225F184
ov70_0225F184: @ 0x0225F184
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl FUN_020382F8
	adds r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl FUN_022316F4
	adds r7, r0, #0
	movs r0, #2
	str r0, [sp]
	ldr r1, [r4]
	adds r0, r5, #0
	movs r2, #5
	movs r3, #0
	bl ov70_0225F2A8
	adds r0, r5, #0
	movs r1, #2
	adds r2, r7, #0
	bl ov70_0225F288
	adds r1, r0, #0
	adds r0, r6, #0
	bl ov70_0225F14C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225F184

	thumb_func_start ov70_0225F1C0
ov70_0225F1C0: @ 0x0225F1C0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r2, #0
	adds r4, r1, #0
	bl FUN_0223270C
	adds r1, r0, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #0
	bl ov70_0225F2A8
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x20
	bl ov70_0225F288
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225F14C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F1C0

	thumb_func_start ov70_0225F1F0
ov70_0225F1F0: @ 0x0225F1F0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #2
	movs r2, #0xe
	bl ov70_0225F288
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225F14C
	pop {r4, pc}
	thumb_func_end ov70_0225F1F0

	thumb_func_start ov70_0225F208
ov70_0225F208: @ 0x0225F208
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	str r0, [sp]
	movs r0, #8
	movs r1, #0x40
	adds r2, r7, #0
	bl FUN_0200B368
	ldr r1, [sp]
	ldr r4, _0225F258 @ =0x0226D5AC
	str r0, [r1]
	movs r6, #0
	adds r5, r1, #0
_0225F222:
	ldr r2, [r4]
	movs r0, #1
	movs r1, #0x1a
	adds r3, r7, #0
	bl FUN_0200B144
	str r0, [r5, #4]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #4
	blt _0225F222
	movs r0, #0x1e
	lsls r0, r0, #4
	adds r1, r7, #0
	bl FUN_02023790
	ldr r1, [sp]
	str r0, [r1, #0x14]
	movs r0, #0x1e
	lsls r0, r0, #4
	adds r1, r7, #0
	bl FUN_02023790
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225F258: .4byte 0x0226D5AC
	thumb_func_end ov70_0225F208

	thumb_func_start ov70_0225F25C
ov70_0225F25C: @ 0x0225F25C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6]
	bl FUN_0200B3F0
	movs r4, #0
	adds r5, r6, #0
_0225F26A:
	ldr r0, [r5, #4]
	bl FUN_0200B190
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _0225F26A
	ldr r0, [r6, #0x14]
	bl FUN_020237BC
	ldr r0, [r6, #0x18]
	bl FUN_020237BC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0225F25C

	thumb_func_start ov70_0225F288
ov70_0225F288: @ 0x0225F288
	push {r4, lr}
	adds r4, r0, #0
	lsls r0, r1, #2
	adds r0, r4, r0
	adds r1, r2, #0
	ldr r0, [r0, #4]
	ldr r2, [r4, #0x18]
	bl FUN_0200B1B8
	ldr r0, [r4]
	ldr r1, [r4, #0x14]
	ldr r2, [r4, #0x18]
	bl FUN_0200C388
	ldr r0, [r4, #0x14]
	pop {r4, pc}
	thumb_func_end ov70_0225F288

	thumb_func_start ov70_0225F2A8
ov70_0225F2A8: @ 0x0225F2A8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r1, [sp, #0x18]
	adds r4, r2, #0
	str r1, [sp]
	movs r1, #1
	str r1, [sp, #4]
	adds r1, r3, #0
	ldr r0, [r0]
	adds r2, r5, #0
	adds r3, r4, #0
	bl FUN_0200B60C
	add sp, #8
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F2A8

	thumb_func_start ov70_0225F2C8
ov70_0225F2C8: @ 0x0225F2C8
	adds r3, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, _0225F2D4 @ =FUN_0200B498
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0225F2D4: .4byte FUN_0200B498
	thumb_func_end ov70_0225F2C8

	thumb_func_start ov70_0225F2D8
ov70_0225F2D8: @ 0x0225F2D8
	adds r3, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, _0225F2E4 @ =FUN_0200C0B0
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0225F2E4: .4byte FUN_0200C0B0
	thumb_func_end ov70_0225F2D8

	thumb_func_start ov70_0225F2E8
ov70_0225F2E8: @ 0x0225F2E8
	adds r3, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, _0225F2F4 @ =FUN_0200C0E8
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0225F2F4: .4byte FUN_0200C0E8
	thumb_func_end ov70_0225F2E8

	thumb_func_start ov70_0225F2F8
ov70_0225F2F8: @ 0x0225F2F8
	adds r3, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, _0225F304 @ =FUN_0200C120
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0225F304: .4byte FUN_0200C120
	thumb_func_end ov70_0225F2F8

	thumb_func_start ov70_0225F308
ov70_0225F308: @ 0x0225F308
	adds r3, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r3, _0225F314 @ =FUN_0200BDD0
	ldr r0, [r0]
	bx r3
	.align 2, 0
_0225F314: .4byte FUN_0200BDD0
	thumb_func_end ov70_0225F308

	thumb_func_start ov70_0225F318
ov70_0225F318: @ 0x0225F318
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	adds r1, r3, #0
	ldr r0, [r0]
	adds r2, r5, #0
	adds r3, r4, #0
	bl FUN_0200BE08
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0225F318

	thumb_func_start ov70_0225F32C
ov70_0225F32C: @ 0x0225F32C
	ldr r3, _0225F334 @ =FUN_0200BE48
	ldr r0, [r0]
	bx r3
	nop
_0225F334: .4byte FUN_0200BE48
	thumb_func_end ov70_0225F32C

	thumb_func_start ov70_0225F338
ov70_0225F338: @ 0x0225F338
	ldr r3, _0225F340 @ =FUN_0200C41C
	ldr r0, [r0]
	bx r3
	nop
_0225F340: .4byte FUN_0200C41C
	thumb_func_end ov70_0225F338

	thumb_func_start ov70_0225F344
ov70_0225F344: @ 0x0225F344
	movs r1, #0xf6
	movs r2, #1
	lsls r1, r1, #2
	str r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225F344

	thumb_func_start ov70_0225F350
ov70_0225F350: @ 0x0225F350
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r4, [sp, #0x20]
	adds r5, r0, #0
	adds r0, r3, #0
	adds r7, r1, #0
	adds r6, r2, #0
	bl FUN_02025F30
	str r0, [sp, #4]
	movs r0, #0xba
	adds r1, r4, #0
	bl FUN_02006C24
	movs r2, #0x53
	lsls r2, r2, #2
	str r0, [r5, r2]
	str r4, [sp]
	ldr r2, [r5, r2]
	ldr r3, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov70_0225F9BC
	movs r2, #0x53
	lsls r2, r2, #2
	adds r0, r5, #0
	ldr r2, [r5, r2]
	adds r0, #8
	adds r1, r6, #0
	adds r3, r4, #0
	bl ov70_0225FA84
	movs r2, #0x45
	lsls r2, r2, #2
	adds r0, r5, r2
	adds r2, #0x38
	ldr r2, [r5, r2]
	adds r1, r6, #0
	adds r3, r4, #0
	bl ov70_02260744
	movs r1, #0
	strb r1, [r5, #2]
	strb r1, [r5, #1]
	ldrh r0, [r7, #6]
	cmp r0, #0
	bne _0225F3DC
	movs r0, #4
	strb r1, [r5]
	bl FUN_0201975C
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
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0225F3DC:
	movs r0, #5
	strb r0, [r5]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F350

	thumb_func_start ov70_0225F3E4
ov70_0225F3E4: @ 0x0225F3E4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x45
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r6, r1, #0
	adds r4, r2, #0
	bl ov70_022607A8
	adds r0, r5, #0
	adds r0, #8
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov70_0225FAA8
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0225FA10
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02006CA8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0225F3E4

	thumb_func_start ov70_0225F418
ov70_0225F418: @ 0x0225F418
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r5, #0
	str r0, [sp, #0x38]
	adds r0, #0x3c
	str r0, [sp, #0x38]
	movs r0, #0xb7
	lsls r0, r0, #2
	ldrb r1, [r4]
	adds r7, r3, #0
	ldr r6, [r5, #0x34]
	str r0, [sp, #0x3c]
	cmp r1, #0xa
	bhi _0225F4FA
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225F444: @ jump table
	.2byte _0225F45A - _0225F444 - 2 @ case 0
	.2byte _0225F468 - _0225F444 - 2 @ case 1
	.2byte _0225F486 - _0225F444 - 2 @ case 2
	.2byte _0225F4D4 - _0225F444 - 2 @ case 3
	.2byte _0225F4F2 - _0225F444 - 2 @ case 4
	.2byte _0225F506 - _0225F444 - 2 @ case 5
	.2byte _0225F5E2 - _0225F444 - 2 @ case 6
	.2byte _0225F600 - _0225F444 - 2 @ case 7
	.2byte _0225F648 - _0225F444 - 2 @ case 8
	.2byte _0225F74E - _0225F444 - 2 @ case 9
	.2byte _0225F780 - _0225F444 - 2 @ case 10
_0225F45A:
	ldrh r0, [r4, #6]
	cmp r0, #1
	bne _0225F4FA
	adds r0, r1, #1
	add sp, #0x50
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F468:
	movs r0, #4
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r1, #0
	ldr r3, _0225F790 @ =0x00007FFF
	str r7, [sp, #8]
	adds r2, r1, #0
	bl FUN_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F486:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225F4FA
	adds r0, r6, #0
	bl FUN_0222E3BC
	movs r2, #0xb7
	lsls r2, r2, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	adds r0, r4, #0
	adds r2, r5, r2
	adds r3, r7, #0
	bl ov70_0225F8AC
	movs r0, #4
	strb r0, [r4, #1]
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F4D4:
	movs r0, #6
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	ldr r3, _0225F790 @ =0x00007FFF
	str r7, [sp, #8]
	movs r0, #4
	adds r2, r1, #0
	bl FUN_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F4F2:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _0225F4FC
_0225F4FA:
	b _0225F78C
_0225F4FC:
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F506:
	cmp r2, #1
	beq _0225F608
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _0225F5D2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225F51C: @ jump table
	.2byte _0225F5D2 - _0225F51C - 2 @ case 0
	.2byte _0225F526 - _0225F51C - 2 @ case 1
	.2byte _0225F5C2 - _0225F51C - 2 @ case 2
	.2byte _0225F542 - _0225F51C - 2 @ case 3
	.2byte _0225F5D2 - _0225F51C - 2 @ case 4
_0225F526:
	movs r2, #0x45
	lsls r2, r2, #2
	adds r0, r4, r2
	adds r2, #0x38
	ldr r1, [sp, #0x38]
	ldr r2, [r4, r2]
	bl ov70_022607D4
	cmp r0, #1
	bne _0225F5D2
	adds r0, r5, #0
	bl ov70_0225F344
	b _0225F5D2
_0225F542:
	ldr r2, _0225F794 @ =0x00000153
	ldrb r0, [r4, r2]
	cmp r0, #0
	beq _0225F56E
	subs r1, r2, #3
	movs r0, #0xf7
	subs r2, r2, #1
	lsls r0, r0, #2
	ldrh r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldr r0, [r5, r0]
	bl ov70_0226C810
	cmp r0, #0
	bne _0225F56E
	ldr r0, _0225F794 @ =0x00000153
	movs r1, #0
	strb r1, [r4, r0]
	subs r0, #0x3f
	adds r0, r4, r0
	bl ov70_02260A68
_0225F56E:
	movs r2, #0x45
	lsls r2, r2, #2
	adds r0, r4, r2
	adds r2, #0x38
	ldr r1, [sp, #0x38]
	ldr r2, [r4, r2]
	adds r3, r7, #0
	bl ov70_022607D4
	cmp r0, #1
	bne _0225F5D2
	adds r0, r6, #0
	bl FUN_0222E338
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_0222EBD4
	adds r0, r6, #0
	bl FUN_0222EC50
	adds r0, r6, #0
	bl FUN_0222E338
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_0222EBA4
	add r1, sp, #0x4c
	add r2, sp, #0x48
	bl FUN_0222EC04
	ldr r0, _0225F794 @ =0x00000153
	movs r1, #1
	strb r1, [r4, r0]
	subs r1, r0, #3
	ldr r2, [sp, #0x4c]
	subs r0, r0, #1
	strh r2, [r4, r1]
	ldr r1, [sp, #0x48]
	strb r1, [r4, r0]
	b _0225F5D2
_0225F5C2:
	ldr r1, [sp, #0x3c]
	adds r0, r4, #0
	adds r1, #0x3c
	str r1, [sp, #0x3c]
	adds r0, #8
	adds r1, r5, r1
	bl ov70_0225FACC
_0225F5D2:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0225F608
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F5E2:
	movs r0, #3
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r2, #0
	str r7, [sp, #8]
	movs r0, #4
	adds r3, r2, #0
	bl FUN_0200F174
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F600:
	bl FUN_0200F2AC
	cmp r0, #1
	beq _0225F60A
_0225F608:
	b _0225F78C
_0225F60A:
	ldrb r0, [r4, #1]
	cmp r0, #4
	bhi _0225F63E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225F61C: @ jump table
	.2byte _0225F63E - _0225F61C - 2 @ case 0
	.2byte _0225F626 - _0225F61C - 2 @ case 1
	.2byte _0225F630 - _0225F61C - 2 @ case 2
	.2byte _0225F626 - _0225F61C - 2 @ case 3
	.2byte _0225F626 - _0225F61C - 2 @ case 4
_0225F626:
	ldr r1, [sp, #0x38]
	adds r0, r4, #0
	bl ov70_0225F920
	b _0225F63E
_0225F630:
	movs r1, #0xc6
	lsls r1, r1, #2
	ldr r2, [sp, #0x38]
	adds r0, r4, #0
	adds r1, r5, r1
	bl ov70_0225F89C
_0225F63E:
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F648:
	ldrb r0, [r4, #2]
	cmp r0, #4
	bhi _0225F740
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0225F65A: @ jump table
	.2byte _0225F740 - _0225F65A - 2 @ case 0
	.2byte _0225F664 - _0225F65A - 2 @ case 1
	.2byte _0225F67E - _0225F65A - 2 @ case 2
	.2byte _0225F710 - _0225F65A - 2 @ case 3
	.2byte _0225F664 - _0225F65A - 2 @ case 4
_0225F664:
	adds r0, r6, #0
	bl FUN_0222E3BC
	movs r2, #0xb7
	lsls r2, r2, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	adds r0, r4, #0
	adds r2, r5, r2
	adds r3, r7, #0
	bl ov70_0225F8AC
	b _0225F740
_0225F67E:
	adds r0, r6, #0
	bl FUN_0222E3BC
	str r0, [sp, #0x28]
	ldrb r0, [r4, #3]
	str r0, [sp, #0x24]
	adds r0, r6, #0
	bl FUN_0222E338
	ldr r1, [sp, #0x24]
	cmp r1, r0
	bne _0225F6A4
	adds r0, r6, #0
	bl FUN_0222E3BC
	str r0, [sp, #0x20]
	movs r0, #1
	str r0, [sp, #0x2c]
	b _0225F6B0
_0225F6A4:
	adds r0, r6, #0
	bl FUN_0222E374
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x2c]
_0225F6B0:
	ldrb r1, [r4, #3]
	adds r0, r6, #0
	bl FUN_0222E924
	str r0, [sp, #0x34]
	ldrh r0, [r4, #4]
	cmp r0, #1
	bne _0225F6DC
	ldrb r1, [r4, #3]
	adds r0, r6, #0
	bl FUN_0222E944
	str r0, [sp, #0x30]
	ldrb r1, [r4, #3]
	adds r0, r6, #0
	bl FUN_0222E954
	cmp r0, #0
	bne _0225F6E0
	movs r1, #0
	str r1, [sp, #0x30]
	b _0225F6E0
_0225F6DC:
	movs r0, #0
	str r0, [sp, #0x30]
_0225F6E0:
	ldr r1, [sp, #0x2c]
	ldr r3, [sp, #0x3c]
	str r1, [sp]
	ldr r1, [sp, #0x20]
	str r7, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x38]
	str r1, [sp, #0xc]
	ldr r1, [sp, #0x34]
	adds r3, r5, r3
	str r1, [sp, #0x10]
	ldr r1, [sp, #0x30]
	str r1, [sp, #0x14]
	movs r1, #0xc6
	str r0, [sp, #0x18]
	movs r0, #1
	lsls r1, r1, #2
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	adds r1, r5, r1
	bl ov70_0225F844
	b _0225F740
_0225F710:
	adds r0, r6, #0
	bl FUN_0222E338
	adds r1, r0, #0
	adds r0, r6, #0
	bl FUN_0222EBA4
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	bne _0225F72C
	bl FUN_02022974
	movs r0, #0
_0225F72C:
	add r1, sp, #0x44
	add r2, sp, #0x40
	bl FUN_0222EC04
	ldr r1, [sp, #0x38]
	ldr r3, [sp, #0x40]
	adds r0, r4, #0
	adds r2, r7, #0
	bl ov70_0225F8F0
_0225F740:
	movs r0, #0
	strb r0, [r4, #2]
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F74E:
	movs r0, #3
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	str r7, [sp, #8]
	movs r0, #4
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0200F174
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _0225F776
	movs r1, #0xc6
	adds r0, r4, #0
	lsls r1, r1, #2
	adds r0, #8
	adds r1, r5, r1
	bl ov70_0225FACC
_0225F776:
	ldrb r0, [r4]
	add sp, #0x50
	adds r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_0225F780:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0225F78C
	movs r0, #5
	strb r0, [r4]
_0225F78C:
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225F790: .4byte 0x00007FFF
_0225F794: .4byte 0x00000153
	thumb_func_end ov70_0225F418

	thumb_func_start ov70_0225F798
ov70_0225F798: @ 0x0225F798
	ldrb r0, [r0]
	bx lr
	thumb_func_end ov70_0225F798

	thumb_func_start ov70_0225F79C
ov70_0225F79C: @ 0x0225F79C
	movs r3, #2
	strb r3, [r0, #2]
	strb r1, [r0, #3]
	strh r2, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225F79C

	thumb_func_start ov70_0225F7A8
ov70_0225F7A8: @ 0x0225F7A8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r3, #0
	cmp r4, #0x1b
	blo _0225F7BA
	bl FUN_02022974
_0225F7BA:
	ldrb r0, [r5, #1]
	cmp r0, #2
	beq _0225F7C4
	bl FUN_02022974
_0225F7C4:
	ldrb r0, [r5, #1]
	cmp r0, #2
	bne _0225F7DE
	movs r2, #0x53
	str r4, [sp]
	lsls r2, r2, #2
	adds r0, r5, #0
	ldr r2, [r5, r2]
	adds r0, #8
	adds r1, r6, #0
	adds r3, r7, #0
	bl ov70_0225FEC4
_0225F7DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F7A8

	thumb_func_start ov70_0225F7E0
ov70_0225F7E0: @ 0x0225F7E0
	ldrb r1, [r0, #1]
	cmp r1, #1
	beq _0225F7EA
	movs r1, #1
	strb r1, [r0, #2]
_0225F7EA:
	bx lr
	thumb_func_end ov70_0225F7E0

	thumb_func_start ov70_0225F7EC
ov70_0225F7EC: @ 0x0225F7EC
	ldrb r1, [r0, #1]
	cmp r1, #3
	beq _0225F7F6
	movs r1, #3
	strb r1, [r0, #2]
_0225F7F6:
	bx lr
	thumb_func_end ov70_0225F7EC

	thumb_func_start ov70_0225F7F8
ov70_0225F7F8: @ 0x0225F7F8
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end ov70_0225F7F8

	thumb_func_start ov70_0225F7FC
ov70_0225F7FC: @ 0x0225F7FC
	ldrb r1, [r0, #2]
	cmp r1, #2
	bne _0225F806
	movs r0, #1
	bx lr
_0225F806:
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0225F810
	movs r0, #1
	bx lr
_0225F810:
	movs r0, #0
	bx lr
	thumb_func_end ov70_0225F7FC

	thumb_func_start ov70_0225F814
ov70_0225F814: @ 0x0225F814
	ldrb r1, [r0, #2]
	cmp r1, #0
	bne _0225F824
	ldrb r0, [r0, #1]
	cmp r0, #2
	bne _0225F824
	movs r0, #1
	bx lr
_0225F824:
	movs r0, #0
	bx lr
	thumb_func_end ov70_0225F814

	thumb_func_start ov70_0225F828
ov70_0225F828: @ 0x0225F828
	ldr r3, _0225F830 @ =ov70_0225FEEC
	adds r0, #8
	bx r3
	nop
_0225F830: .4byte ov70_0225FEEC
	thumb_func_end ov70_0225F828

	thumb_func_start ov70_0225F834
ov70_0225F834: @ 0x0225F834
	ldrb r0, [r0, #2]
	cmp r0, #0
	beq _0225F83E
	movs r0, #1
	bx lr
_0225F83E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225F834

	thumb_func_start ov70_0225F844
ov70_0225F844: @ 0x0225F844
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r0, #0
	adds r4, r3, #0
	ldrb r3, [r5, #1]
	adds r6, r1, #0
	adds r7, r2, #0
	cmp r3, #2
	bne _0225F85A
	bl ov70_0225F89C
_0225F85A:
	ldr r0, [sp, #0x40]
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r2, r5, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x44]
	adds r1, r6, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x48]
	adds r2, #8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x4c]
	adds r3, r7, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x54]
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x5c]
	str r0, [sp, #0x24]
	adds r0, r5, #0
	bl ov70_0225FAD0
	movs r0, #2
	strb r0, [r5, #1]
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225F844

	thumb_func_start ov70_0225F89C
ov70_0225F89C: @ 0x0225F89C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #8
	bl ov70_0225FE80
	movs r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov70_0225F89C

	thumb_func_start ov70_0225F8AC
ov70_0225F8AC: @ 0x0225F8AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #1]
	adds r4, r1, #0
	adds r7, r2, #0
	adds r6, r3, #0
	cmp r0, #1
	beq _0225F8C8
	adds r0, #0xfd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0225F8D0
_0225F8C8:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0225F920
_0225F8D0:
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	subs r0, #0x38
	str r1, [sp]
	ldr r3, [sp, #0x20]
	adds r0, r5, r0
	adds r1, r4, #0
	adds r2, r7, #0
	str r6, [sp, #4]
	bl ov70_02260870
	movs r0, #1
	strb r0, [r5, #1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225F8AC

	thumb_func_start ov70_0225F8F0
ov70_0225F8F0: @ 0x0225F8F0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	ldrb r2, [r5, #1]
	adds r6, r1, #0
	adds r7, r3, #0
	cmp r2, #3
	bne _0225F904
	bl ov70_0225F920
_0225F904:
	movs r3, #0x45
	lsls r3, r3, #2
	adds r0, r5, r3
	str r4, [sp]
	adds r3, #0x38
	ldr r3, [r5, r3]
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov70_02260930
	movs r0, #3
	strb r0, [r5, #1]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225F8F0

	thumb_func_start ov70_0225F920
ov70_0225F920: @ 0x0225F920
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x45
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov70_022609A8
	movs r0, #0
	strb r0, [r4, #1]
	pop {r4, pc}
	thumb_func_end ov70_0225F920

	thumb_func_start ov70_0225F934
ov70_0225F934: @ 0x0225F934
	ldr r2, _0225F93C @ =0x0000011A
	strh r1, [r0, r2]
	bx lr
	nop
_0225F93C: .4byte 0x0000011A
	thumb_func_end ov70_0225F934

	thumb_func_start ov70_0225F940
ov70_0225F940: @ 0x0225F940
	adds r1, r0, #0
	movs r0, #0x55
	lsls r0, r0, #2
	strh r2, [r1, r0]
	adds r0, r0, #2
	strh r3, [r1, r0]
	ldr r3, _0225F954 @ =FUN_0200DA3C
	ldr r0, _0225F958 @ =ov70_0225F95C
	movs r2, #0
	bx r3
	.align 2, 0
_0225F954: .4byte FUN_0200DA3C
_0225F958: .4byte ov70_0225F95C
	thumb_func_end ov70_0225F940

	thumb_func_start ov70_0225F95C
ov70_0225F95C: @ 0x0225F95C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r3, #0
	ldr r1, _0225F9B8 @ =0x00000156
	str r3, [sp]
	adds r5, r0, #0
	ldrh r0, [r4, r1]
	movs r2, #4
	str r0, [sp, #4]
	adds r0, r1, #0
	subs r1, r1, #2
	subs r0, #0xa
	ldrh r1, [r4, r1]
	ldr r0, [r4, r0]
	bl FUN_02007130
	movs r1, #0xa0
	adds r2, r1, #0
	adds r2, #0xb6
	ldrh r2, [r4, r2]
	movs r0, #4
	bl FUN_02002E7C
	bl FUN_0207C944
	adds r6, r0, #0
	bl FUN_0207C920
	adds r1, r0, #0
	movs r0, #0x60
	str r0, [sp]
	adds r0, #0xf6
	ldrh r0, [r4, r0]
	movs r3, #0x16
	movs r2, #4
	str r0, [sp, #4]
	adds r0, r6, #0
	lsls r3, r3, #4
	bl FUN_02006E84
	adds r0, r5, #0
	bl FUN_0200DA58
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_0225F9B8: .4byte 0x00000156
	thumb_func_end ov70_0225F95C

	thumb_func_start ov70_0225F9BC
ov70_0225F9BC: @ 0x0225F9BC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r4, [sp, #0x20]
	cmp r3, #0
	bne _0225F9DC
	movs r3, #0
	str r3, [sp]
	adds r0, r5, #0
	movs r1, #0x56
	movs r2, #4
	str r4, [sp, #4]
	bl FUN_02007130
	b _0225F9EC
_0225F9DC:
	movs r3, #0
	str r3, [sp]
	adds r0, r5, #0
	movs r1, #0x57
	movs r2, #4
	str r4, [sp, #4]
	bl FUN_02007130
_0225F9EC:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r2, [r6]
	adds r0, r5, #0
	movs r1, #0x36
	movs r3, #4
	bl FUN_020070E8
	movs r0, #4
	movs r1, #0xa0
	adds r2, r4, #0
	bl FUN_02002E7C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0225F9BC

	thumb_func_start ov70_0225FA10
ov70_0225FA10: @ 0x0225FA10
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225FA10

	thumb_func_start ov70_0225FA14
ov70_0225FA14: @ 0x0225FA14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r0, [sp, #0x2c]
	adds r6, r3, #0
	str r0, [sp]
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0
	add r3, sp, #0xc
	ldr r4, [sp, #0x28]
	bl FUN_020071D0
	ldr r2, [sp, #0xc]
	adds r7, r0, #0
	ldr r0, [r2, #8]
	adds r2, #0xc
	lsrs r1, r0, #1
	movs r0, #0
	cmp r1, #0
	ble _0225FA4C
_0225FA3E:
	ldrh r3, [r2]
	adds r0, r0, #1
	adds r3, r3, r4
	strh r3, [r2]
	adds r2, r2, #2
	cmp r0, r1
	blt _0225FA3E
_0225FA4C:
	ldr r2, [sp, #0xc]
	movs r3, #0
	str r3, [sp]
	ldrh r0, [r2]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	adds r2, #0xc
	lsls r0, r0, #0x15
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5]
	bl FUN_020198C0
	lsls r1, r6, #0x18
	ldr r0, [r5]
	lsrs r1, r1, #0x18
	bl FUN_0201C3C0
	adds r0, r7, #0
	bl FUN_020181C4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0225FA14

	thumb_func_start ov70_0225FA84
ov70_0225FA84: @ 0x0225FA84
	push {r3, r4, r5, r6, r7, lr}
	ldr r4, _0225FAA4 @ =0x0226D68C
	adds r7, r1, #0
	movs r6, #0
	adds r5, r0, #4
_0225FA8E:
	ldr r0, [r7]
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_0201A8D4
	adds r6, r6, #1
	adds r4, #8
	adds r5, #0x10
	cmp r6, #5
	blt _0225FA8E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0225FAA4: .4byte 0x0226D68C
	thumb_func_end ov70_0225FA84

	thumb_func_start ov70_0225FAA8
ov70_0225FAA8: @ 0x0225FAA8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0x54]
	cmp r3, #0
	beq _0225FAB6
	bl ov70_0225FE80
_0225FAB6:
	movs r5, #0
	adds r4, r4, #4
_0225FABA:
	adds r0, r4, #0
	bl FUN_0201A8FC
	adds r5, r5, #1
	adds r4, #0x10
	cmp r5, #5
	blt _0225FABA
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_0225FAA8

	thumb_func_start ov70_0225FACC
ov70_0225FACC: @ 0x0225FACC
	bx lr
	.align 2, 0
	thumb_func_end ov70_0225FACC

	thumb_func_start ov70_0225FAD0
ov70_0225FAD0: @ 0x0225FAD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	ldr r4, [sp, #0x28]
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	adds r5, r2, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x38]
	adds r6, r3, #0
	str r0, [sp, #0x38]
	adds r0, r4, #0
	bl ov70_0225F338
	ldr r0, [sp, #0x38]
	bl FUN_0222E7C8
	cmp r0, #0
	bne _0225FB1C
	ldr r0, [sp, #0x40]
	ldr r7, _0225FD98 @ =0x00070800
	cmp r0, #0
	bne _0225FB0E
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	adds r1, r6, #0
	movs r2, #0x56
	bl ov70_0225F940
	b _0225FB40
_0225FB0E:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	adds r1, r6, #0
	movs r2, #0x58
	bl ov70_0225F940
	b _0225FB40
_0225FB1C:
	ldr r0, [sp, #0x40]
	movs r7, #0xc1
	lsls r7, r7, #0xa
	cmp r0, #0
	bne _0225FB34
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	adds r1, r6, #0
	movs r2, #0x57
	bl ov70_0225F940
	b _0225FB40
_0225FB34:
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x34]
	adds r1, r6, #0
	movs r2, #0x58
	bl ov70_0225F940
_0225FB40:
	ldr r0, [r6]
	movs r1, #4
	movs r2, #0
	bl FUN_02019F04
	ldr r0, [r6]
	movs r1, #5
	movs r2, #0
	bl FUN_02019F04
	ldr r0, [r6]
	movs r1, #6
	movs r2, #0
	bl FUN_02019F04
	adds r0, r5, #0
	bl ov70_022602C0
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x30]
	str r0, [sp, #4]
	adds r0, r6, #0
	movs r2, #0x5c
	movs r3, #4
	bl ov70_0225FA14
	ldr r0, [sp, #0x34]
	bl FUN_02025E6C
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	bl FUN_0222E640
	movs r2, #0
	str r2, [sp]
	str r2, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0x2c
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r0, [sp, #0x10]
	bl FUN_02025F24
	adds r1, r0, #0
	movs r0, #2
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #5
	movs r3, #0
	bl ov70_0225F2A8
	movs r0, #0x7a
	str r0, [sp]
	movs r2, #0
	ldr r0, _0225FD9C @ =0x00010200
	str r2, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0x31
	bl ov70_02260314
	movs r2, #0
	str r2, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0x2d
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02260370
	movs r0, #0x7a
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C @ =0x00010200
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0x32
	bl ov70_02260314
	adds r0, r5, #0
	movs r1, #0
	bl ov70_02260360
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #0x2e
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r0, [sp, #0x38]
	bl FUN_0222E880
	cmp r0, #0
	bne _0225FC3E
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C @ =0x00010200
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r2, #1
	movs r3, #0x37
	bl ov70_022602DC
	b _0225FC60
_0225FC3E:
	ldr r2, [sp, #0x38]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02260380
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	ldr r0, _0225FD9C @ =0x00010200
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r2, #1
	movs r3, #0x33
	bl ov70_022602DC
_0225FC60:
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02260360
	ldr r0, [sp, #0x44]
	cmp r0, #0
	beq _0225FD06
	movs r0, #1
	str r0, [r5]
	ldr r2, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02260370
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	movs r3, #0x38
	str r7, [sp, #8]
	bl ov70_022602DC
	ldr r2, [sp, #0x48]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_022603B0
	movs r0, #6
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225FD9C @ =0x00010200
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0x3b
	bl ov70_022602DC
	movs r0, #0x5a
	str r0, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	ldr r0, _0225FD9C @ =0x00010200
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0x3c
	bl ov70_022602DC
	movs r0, #6
	str r0, [sp]
	movs r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225FD9C @ =0x00010200
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0x3d
	bl ov70_022602DC
	movs r0, #0x5a
	str r0, [sp]
	movs r0, #0x2c
	str r0, [sp, #4]
	ldr r0, _0225FD9C @ =0x00010200
	adds r1, r4, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r2, #4
	movs r3, #0x3e
	bl ov70_022602DC
	adds r0, r5, #0
	movs r1, #4
	bl ov70_02260360
	b _0225FD3A
_0225FD06:
	movs r1, #0
	str r1, [r5]
	movs r0, #8
	str r0, [sp]
	str r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	movs r3, #0x30
	str r7, [sp, #8]
	bl ov70_022602DC
	adds r0, r5, #0
	movs r1, #4
	bl ov70_02260360
	ldr r0, [sp, #0x38]
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r0, [sp, #0x3c]
	ldr r3, [sp, #0x34]
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov70_022603CC
_0225FD3A:
	ldr r0, [sp, #0x38]
	bl FUN_0222E8C4
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	ldr r2, [sp, #0x30]
	str r0, [sp, #4]
	ldr r3, [sp, #0x34]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov70_0225FEF0
	ldr r0, [sp, #0x2c]
	cmp r0, #1
	bne _0225FD6A
	ldr r0, [sp, #0x38]
	bl FUN_0222E7C8
	cmp r0, #1
	bne _0225FD66
	movs r0, #0x61
	b _0225FD70
_0225FD66:
	movs r0, #0
	b _0225FD70
_0225FD6A:
	ldr r0, [sp, #0x38]
	bl FUN_0222E858
_0225FD70:
	ldr r2, [sp, #0x30]
	str r0, [sp]
	ldr r3, [sp, #0x34]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov70_02260080
	ldr r0, [sp, #0x38]
	ldr r3, [sp, #0x34]
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0225FDA0
	ldr r0, [sp, #0x10]
	bl FUN_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225FD98: .4byte 0x00070800
_0225FD9C: .4byte 0x00010200
	thumb_func_end ov70_0225FAD0

	thumb_func_start ov70_0225FDA0
ov70_0225FDA0: @ 0x0225FDA0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	ldr r0, [sp, #0x48]
	ldr r6, _0225FE78 @ =0x0226D624
	str r0, [sp, #0x48]
	movs r0, #0
	str r0, [sp, #0x24]
	ldr r0, _0225FE7C @ =0x0226D590
	adds r5, r2, #0
	str r3, [sp, #0x1c]
	str r0, [sp, #0x20]
	movs r4, #2
_0225FDB8:
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x24]
	bl FUN_0222E8E8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	beq _0225FE60
	bl FUN_022316E8
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	bl FUN_0207C944
	str r0, [sp, #0x28]
	adds r0, r7, #0
	bl FUN_0207C908
	adds r1, r0, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	movs r2, #1
	bl FUN_02006FE8
	add r1, sp, #0x30
	str r0, [sp, #0x2c]
	blx FUN_020A7118
	ldr r0, [sp, #0x20]
	movs r1, #6
	ldrh r0, [r0]
	adds r3, r1, #0
	adds r3, #0xfa
	str r0, [sp]
	ldr r2, [sp, #0x30]
	ldr r0, [r5]
	ldr r2, [r2, #0x14]
	bl FUN_0201958C
	ldr r0, [sp, #0x2c]
	bl FUN_020181C4
	movs r0, #4
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	lsls r3, r4, #0x18
	str r6, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #4
	str r0, [sp, #0x14]
	movs r0, #2
	str r0, [sp, #0x18]
	ldr r0, [r5]
	movs r1, #6
	movs r2, #0x1a
	lsrs r3, r3, #0x18
	bl FUN_020198E8
	adds r0, r7, #0
	bl FUN_0207C92C
	movs r1, #4
	adds r0, #0xb
	str r1, [sp]
	movs r1, #2
	lsls r0, r0, #0x18
	str r1, [sp, #4]
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsls r3, r4, #0x18
	ldr r0, [r5]
	movs r1, #6
	movs r2, #0x1a
	lsrs r3, r3, #0x18
	bl FUN_02019E2C
	ldr r0, [r5]
	movs r1, #6
	bl FUN_0201C3C0
_0225FE60:
	ldr r0, [sp, #0x20]
	adds r6, #0x10
	adds r0, r0, #2
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r4, r4, #2
	adds r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0225FDB8
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0225FE78: .4byte 0x0226D624
_0225FE7C: .4byte 0x0226D590
	thumb_func_end ov70_0225FDA0

	thumb_func_start ov70_0225FE80
ov70_0225FE80: @ 0x0225FE80
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5]
	adds r4, r2, #0
	cmp r1, #1
	bne _0225FE92
	movs r0, #0
	str r0, [r5]
	b _0225FE98
_0225FE92:
	adds r1, r4, #0
	bl ov70_0226068C
_0225FE98:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02260048
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02260228
	ldr r0, [r4]
	movs r1, #4
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #5
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #6
	bl FUN_02019EBC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_0225FE80

	thumb_func_start ov70_0225FEC4
ov70_0225FEC4: @ 0x0225FEC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl ov70_02260048
	ldr r0, [sp, #0x20]
	adds r1, r4, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov70_0225FEF0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225FEC4

	thumb_func_start ov70_0225FEEC
ov70_0225FEEC: @ 0x0225FEEC
	ldr r0, [r0]
	bx lr
	thumb_func_end ov70_0225FEEC

	thumb_func_start ov70_0225FEF0
ov70_0225FEF0: @ 0x0225FEF0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x7c
	adds r5, r0, #0
	ldr r0, [sp, #0x90]
	adds r4, r1, #0
	adds r6, r3, #0
	str r2, [sp, #0x2c]
	cmp r0, #0x1b
	blo _0225FF06
	bl FUN_02022974
_0225FF06:
	ldr r0, [r5, #0x54]
	cmp r0, #0
	beq _0225FF10
	bl FUN_02022974
_0225FF10:
	ldr r0, [sp, #0x90]
	movs r1, #3
	blx FUN_020E2178
	adds r7, r0, #0
	ldr r0, [sp, #0x90]
	movs r1, #3
	blx FUN_020E2178
	str r1, [sp, #0x30]
	lsls r0, r7, #1
	str r0, [sp, #0x34]
	movs r1, #0x64
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	adds r1, #0xcc
	ldr r0, [r4, r1]
	adds r2, r7, r2
	ldr r1, [sp, #0x2c]
	adds r2, #0x3d
	movs r3, #0
	bl FUN_02009A4C
	str r0, [r5, #0x58]
	bl FUN_0200A3DC
	cmp r0, #0
	bne _0225FF52
	bl FUN_02022974
_0225FF52:
	ldr r0, [r5, #0x58]
	bl FUN_02009D4C
	movs r1, #0x64
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	str r6, [sp, #0xc]
	adds r1, #0xd0
	ldr r0, [r4, r1]
	ldr r1, [sp, #0x2c]
	movs r2, #0x59
	movs r3, #0
	bl FUN_02009B04
	str r0, [r5, #0x5c]
	bl FUN_0200A640
	cmp r0, #0
	bne _0225FF82
	bl FUN_02022974
_0225FF82:
	ldr r0, [r5, #0x5c]
	bl FUN_02009D4C
	movs r1, #0x64
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	adds r1, #0xd4
	ldr r0, [r4, r1]
	adds r2, r7, r2
	ldr r1, [sp, #0x2c]
	adds r2, #0x3c
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0x60]
	movs r1, #0x64
	str r1, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r2, [sp, #0x34]
	str r6, [sp, #8]
	adds r1, #0xd8
	ldr r0, [r4, r1]
	adds r2, r7, r2
	ldr r1, [sp, #0x2c]
	adds r2, #0x3b
	movs r3, #0
	bl FUN_02009BC4
	str r0, [r5, #0x64]
	movs r0, #0
	add r2, sp, #0x38
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	movs r1, #0x64
	adds r2, r1, #0
	str r1, [sp]
	subs r2, #0x65
	str r2, [sp, #4]
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	adds r2, r1, #0
	str r0, [sp, #0x10]
	adds r2, #0xcc
	ldr r2, [r4, r2]
	adds r3, r1, #0
	str r2, [sp, #0x14]
	adds r2, r1, #0
	adds r2, #0xd0
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	adds r2, r1, #0
	adds r2, #0xd4
	ldr r2, [r4, r2]
	str r2, [sp, #0x1c]
	adds r2, r1, #0
	adds r2, #0xd8
	ldr r2, [r4, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [r4, #4]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	movs r0, #0x10
	str r0, [sp, #0x4c]
	movs r0, #2
	str r0, [sp, #0x50]
	movs r0, #0xd
	lsls r0, r0, #0x10
	str r0, [sp, #0x40]
	movs r0, #0x66
	lsls r0, r0, #0xe
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	str r6, [sp, #0x54]
	bl FUN_02021B90
	ldr r1, [sp, #0x30]
	str r0, [r5, #0x54]
	bl FUN_02021D6C
	ldr r0, [r5, #0x54]
	ldr r1, [sp, #0x94]
	bl FUN_02021CAC
	add sp, #0x7c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0225FEF0

	thumb_func_start ov70_02260048
ov70_02260048: @ 0x02260048
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	adds r4, r1, #0
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r5, #0x54]
	ldr r0, [r5, #0x58]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x5c]
	bl FUN_0200A6DC
	movs r7, #0x13
	movs r6, #0
	lsls r7, r7, #4
_0226006A:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x58]
	bl FUN_02009D68
	adds r6, r6, #1
	adds r5, r5, #4
	adds r4, r4, #4
	cmp r6, #4
	blt _0226006A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02260048

	thumb_func_start ov70_02260080
ov70_02260080: @ 0x02260080
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	adds r6, r0, #0
	ldr r0, [r6, #0x68]
	adds r5, r1, #0
	str r3, [sp, #0x2c]
	ldr r4, [sp, #0xa8]
	cmp r0, #0
	beq _02260096
	bl FUN_02022974
_02260096:
	ldr r1, _02260224 @ =0x0226D724
	movs r0, #0
_0226009A:
	ldrh r2, [r1]
	cmp r4, r2
	bne _022600AA
	ldrh r2, [r1, #2]
	str r2, [sp, #0x34]
	ldrh r2, [r1, #4]
	str r2, [sp, #0x30]
	ldrh r7, [r1, #6]
_022600AA:
	adds r0, r0, #1
	adds r1, #8
	cmp r0, #0x12
	blo _0226009A
	ldr r0, [sp, #0x34]
	movs r1, #2
	add r2, sp, #0x7c
	bl FUN_02076AAC
	movs r1, #0x65
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	adds r1, #0xcb
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x80]
	movs r3, #0
	bl FUN_0200985C
	str r0, [r6, #0x6c]
	bl FUN_0200A3DC
	cmp r0, #0
	bne _022600E4
	bl FUN_02022974
_022600E4:
	movs r1, #0x65
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, [sp, #0x2c]
	adds r1, #0xcf
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x84]
	movs r3, #0
	bl FUN_020098B8
	str r0, [r6, #0x70]
	bl FUN_02009E34
	bl ov70_02260268
	ldr r0, [r6, #0x70]
	bl FUN_0200A640
	cmp r0, #0
	bne _0226011A
	bl FUN_02022974
_0226011A:
	ldr r0, [r6, #0x70]
	bl FUN_02009D4C
	movs r1, #0x65
	str r1, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	adds r1, #0xd3
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x88]
	movs r3, #0
	bl FUN_02009918
	str r0, [r6, #0x74]
	movs r1, #0x65
	str r1, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	adds r1, #0xd7
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	ldr r1, [sp, #0x7c]
	ldr r2, [sp, #0x8c]
	movs r3, #0
	bl FUN_02009918
	str r0, [r6, #0x78]
	movs r0, #0
	add r2, sp, #0x38
	adds r1, r0, #0
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	stm r2!, {r0, r1}
	movs r1, #0x65
	adds r2, r1, #0
	str r1, [sp]
	subs r2, #0x66
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r2, #1
	str r2, [sp, #0xc]
	movs r2, #3
	str r2, [sp, #0x10]
	adds r2, r1, #0
	adds r2, #0xcb
	ldr r2, [r5, r2]
	adds r3, r1, #0
	str r2, [sp, #0x14]
	adds r2, r1, #0
	adds r2, #0xcf
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r1, #0
	adds r2, #0xd3
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	adds r2, r1, #0
	adds r2, #0xd7
	ldr r2, [r5, r2]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x58
	adds r2, r1, #0
	bl FUN_020093B4
	ldr r0, [r5, #4]
	str r0, [sp, #0x38]
	add r0, sp, #0x58
	str r0, [sp, #0x3c]
	movs r0, #0x20
	str r0, [sp, #0x4c]
	movs r0, #2
	str r0, [sp, #0x50]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _022601D4
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _022601E2
_022601D4:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_022601E2:
	blx FUN_020E1740
	str r0, [sp, #0x40]
	cmp r7, #0
	beq _022601FE
	lsls r0, r7, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226020C
_022601FE:
	lsls r0, r7, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226020C:
	blx FUN_020E1740
	movs r1, #1
	lsls r1, r1, #0x14
	adds r0, r0, r1
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl FUN_02021B90
	str r0, [r6, #0x68]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02260224: .4byte 0x0226D724
	thumb_func_end ov70_02260080

	thumb_func_start ov70_02260228
ov70_02260228: @ 0x02260228
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x68]
	adds r4, r1, #0
	bl FUN_02021F98
	bl FUN_0201ED1C
	ldr r0, [r5, #0x68]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x6c]
	bl FUN_0200A4E4
	ldr r0, [r5, #0x70]
	bl FUN_0200A6DC
	movs r7, #0x13
	movs r6, #0
	lsls r7, r7, #4
_02260254:
	ldr r0, [r4, r7]
	ldr r1, [r5, #0x6c]
	bl FUN_02009D68
	adds r6, r6, #1
	adds r5, r5, #4
	adds r4, r4, #4
	cmp r6, #4
	blt _02260254
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02260228

	thumb_func_start ov70_02260268
ov70_02260268: @ 0x02260268
	push {r4, r5, r6, r7}
	ldr r1, [r0, #8]
	ldr r4, [r0, #0xc]
	lsrs r3, r1, #1
	movs r2, #0
	cmp r3, #0
	ble _022602BC
	movs r5, #0xc8
_02260278:
	ldrh r6, [r4]
	movs r0, #0x1f
	adds r2, r2, #1
	adds r1, r6, #0
	asrs r7, r6, #5
	ands r1, r0
	ands r0, r7
	asrs r7, r6, #0xa
	movs r6, #0x1f
	ands r6, r7
	movs r7, #0x1d
	muls r7, r6, r7
	movs r6, #0x4c
	muls r6, r1, r6
	movs r1, #0x97
	muls r1, r0, r1
	adds r0, r6, r1
	adds r0, r7, r0
	asrs r6, r0, #8
	lsls r0, r6, #8
	adds r7, r6, #0
	asrs r1, r0, #8
	lsls r0, r6, #7
	muls r7, r5, r7
	asrs r0, r0, #8
	asrs r6, r7, #8
	lsls r0, r0, #0xa
	lsls r6, r6, #5
	orrs r0, r6
	orrs r0, r1
	strh r0, [r4]
	adds r4, r4, #2
	cmp r2, r3
	blt _02260278
_022602BC:
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov70_02260268

	thumb_func_start ov70_022602C0
ov70_022602C0: @ 0x022602C0
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #4
	adds r6, r4, #0
_022602C8:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_0201ADA4
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #5
	blt _022602C8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_022602C0

	thumb_func_start ov70_022602DC
ov70_022602DC: @ 0x022602DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	adds r0, r1, #0
	movs r1, #1
	adds r2, r3, #0
	bl ov70_0225F288
	add r3, sp, #0x10
	adds r2, r0, #0
	ldrb r0, [r3, #0x14]
	movs r1, #0
	adds r5, r5, #4
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsls r0, r4, #4
	ldrb r3, [r3, #0x10]
	adds r0, r5, r0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_022602DC

	thumb_func_start ov70_02260314
ov70_02260314: @ 0x02260314
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	adds r0, r1, #0
	movs r1, #1
	adds r2, r3, #0
	bl ov70_0225F288
	adds r6, r0, #0
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	bl FUN_02002D7C
	add r1, sp, #0x10
	ldrb r1, [r1, #0x10]
	subs r3, r1, r0
	bpl _0226033C
	movs r3, #0
_0226033C:
	add r0, sp, #0x10
	ldrb r0, [r0, #0x14]
	adds r2, r5, #4
	movs r1, #0
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	str r0, [sp, #8]
	lsls r0, r4, #4
	adds r0, r2, r0
	adds r2, r6, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02260314

	thumb_func_start ov70_02260360
ov70_02260360: @ 0x02260360
	ldr r3, _0226036C @ =FUN_0201A9A4
	adds r2, r0, #4
	lsls r0, r1, #4
	adds r0, r2, r0
	bx r3
	nop
_0226036C: .4byte FUN_0201A9A4
	thumb_func_end ov70_02260360

	thumb_func_start ov70_02260370
ov70_02260370: @ 0x02260370
	ldr r3, _0226037C @ =ov70_0225F2C8
	adds r0, r1, #0
	adds r1, r2, #0
	movs r2, #0
	bx r3
	nop
_0226037C: .4byte ov70_0225F2C8
	thumb_func_end ov70_02260370

	thumb_func_start ov70_02260380
ov70_02260380: @ 0x02260380
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r0, r6, #0
	adds r5, r1, #0
	bl FUN_0222E880
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0222E8A4
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov70_0225F308
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	movs r3, #1
	bl ov70_0225F318
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02260380

	thumb_func_start ov70_022603B0
ov70_022603B0: @ 0x022603B0
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r2, #0
	movs r4, #0
_022603B8:
	ldrh r2, [r5]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov70_0225F32C
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #4
	blt _022603B8
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_022603B0

	thumb_func_start ov70_022603CC
ov70_022603CC: @ 0x022603CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x98
	adds r7, r0, #0
	ldr r0, [sp, #0xb0]
	adds r5, r1, #0
	str r0, [sp, #0xb0]
	movs r0, #0xc0
	adds r1, r3, #0
	str r2, [sp, #0x2c]
	str r3, [sp, #0x30]
	bl FUN_02006C24
	str r0, [sp, #0x50]
	ldr r0, [sp, #0xb4]
	bl FUN_0222E798
	str r0, [sp, #0x44]
	ldr r0, [sp, #0xb4]
	bl FUN_0222E7C8
	str r0, [sp, #0x4c]
	ldr r0, _0226067C @ =0x0226D60C
	movs r6, #0
	str r0, [sp, #0x40]
	ldr r0, _02260680 @ =0x0226D59C
	adds r4, r7, #0
	str r0, [sp, #0x3c]
	ldr r0, _02260684 @ =0x0226D594
	str r0, [sp, #0x38]
_02260406:
	cmp r6, #2
	bne _02260426
	ldr r0, [sp, #0x4c]
	cmp r0, #1
	bne _02260446
	adds r1, r4, #0
	adds r1, #0xac
	movs r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xec
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xfc
	str r0, [r1]
	b _022604EC
_02260426:
	cmp r6, #3
	bne _02260446
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	bne _02260446
	adds r1, r4, #0
	adds r1, #0xac
	movs r0, #0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xec
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0xfc
	str r0, [r1]
	b _022604EC
_02260446:
	ldr r0, [sp, #0x40]
	ldrh r0, [r0]
	cmp r0, #0xc0
	bne _02260454
	ldr r0, [sp, #0x50]
	str r0, [sp, #0x34]
	b _02260458
_02260454:
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x34]
_02260458:
	adds r0, r6, #0
	adds r0, #0x96
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	ldr r2, [sp, #0x40]
	ldrh r0, [r0, #4]
	ldr r1, [sp, #0x34]
	movs r3, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	str r0, [sp, #0xc]
	movs r0, #0x4d
	lsls r0, r0, #2
	ldrh r2, [r2, #2]
	ldr r0, [r5, r0]
	bl FUN_02009B04
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_0200A640
	cmp r0, #0
	bne _02260496
	bl FUN_02022974
_02260496:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_02009D4C
	adds r0, r6, #0
	adds r0, #0x96
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x3c]
	str r0, [sp, #8]
	movs r0, #0x4e
	lsls r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	movs r3, #0
	bl FUN_02009BC4
	adds r1, r4, #0
	adds r1, #0xec
	str r0, [r1]
	adds r0, r6, #0
	adds r0, #0x96
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	str r0, [sp, #8]
	movs r0, #0x4f
	lsls r0, r0, #2
	ldrh r2, [r2]
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x34]
	movs r3, #0
	bl FUN_02009BC4
	adds r1, r4, #0
	adds r1, #0xfc
	str r0, [r1]
_022604EC:
	ldr r0, [sp, #0x40]
	adds r6, r6, #1
	adds r0, r0, #6
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x3c]
	adds r4, r4, #4
	adds r0, r0, #2
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x38]
	adds r0, r0, #2
	str r0, [sp, #0x38]
	cmp r6, #4
	bge _02260508
	b _02260406
_02260508:
	ldr r0, _02260688 @ =0x0226D7B4
	movs r6, #0
	str r0, [sp, #0x48]
_0226050E:
	ldr r0, [sp, #0xb0]
	adds r1, r6, #0
	bl FUN_0222E728
	adds r4, r0, #0
	ldr r0, [sp, #0xb0]
	adds r1, r6, #0
	bl FUN_0222E760
	adds r1, r0, #0
	cmp r4, #0x18
	bne _02260532
	adds r1, r7, #0
	adds r1, #0xbc
	movs r0, #0
	str r0, [r1]
	str r0, [r7, #0x7c]
	b _02260660
_02260532:
	ldr r2, [sp, #0x44]
	ldr r3, [sp, #0x4c]
	adds r0, r4, #0
	bl ov70_02260728
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #1
	bne _02260548
	ldr r1, [sp, #0x2c]
	b _0226054A
_02260548:
	ldr r1, [sp, #0x50]
_0226054A:
	adds r0, r6, #0
	adds r0, #0x96
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	movs r3, #0
	str r0, [sp, #8]
	movs r0, #0x13
	lsls r0, r0, #4
	ldrh r2, [r4, #2]
	ldr r0, [r5, r0]
	bl FUN_02009A4C
	adds r1, r7, #0
	adds r1, #0xbc
	str r0, [r1]
	adds r0, r7, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_0200A3DC
	cmp r0, #0
	bne _0226057E
	bl FUN_02022974
_0226057E:
	adds r0, r7, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_02009D4C
	ldrb r2, [r4]
	movs r0, #0
	mvns r0, r0
	adds r2, #0x96
	str r2, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r6, #0
	str r0, [sp, #0x14]
	movs r0, #0x4d
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, #0x96
	str r0, [sp, #0x18]
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r3, r2, #0
	str r0, [sp, #0x1c]
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	str r0, [sp, #0x20]
	movs r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x54
	bl FUN_020093B4
	ldr r0, [r5, #4]
	ldr r2, [sp, #0x48]
	str r0, [sp, #0x78]
	add r0, sp, #0x54
	str r0, [sp, #0x7c]
	movs r0, #0
	str r0, [sp, #0x8c]
	movs r0, #2
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x30]
	add r3, sp, #0x80
	str r0, [sp, #0x94]
	ldm r2!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	movs r0, #4
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02260608
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _02260616
_02260608:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_02260616:
	blx FUN_020E1740
	ldr r1, [sp, #0x80]
	adds r0, r1, r0
	str r0, [sp, #0x80]
	movs r0, #6
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _0226063A
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _02260648
_0226063A:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_02260648:
	blx FUN_020E1740
	ldr r1, [sp, #0x84]
	adds r0, r1, r0
	str r0, [sp, #0x84]
	add r0, sp, #0x78
	bl FUN_02021B90
	str r0, [r7, #0x7c]
	ldrb r1, [r4, #1]
	bl FUN_02021F24
_02260660:
	ldr r0, [sp, #0x48]
	adds r6, r6, #1
	adds r0, #0xc
	adds r7, r7, #4
	str r0, [sp, #0x48]
	cmp r6, #0xc
	bge _02260670
	b _0226050E
_02260670:
	ldr r0, [sp, #0x50]
	bl FUN_02006CA8
	add sp, #0x98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226067C: .4byte 0x0226D60C
_02260680: .4byte 0x0226D59C
_02260684: .4byte 0x0226D594
_02260688: .4byte 0x0226D7B4
	thumb_func_end ov70_022603CC

	thumb_func_start ov70_0226068C
ov70_0226068C: @ 0x0226068C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r7, #0
	adds r4, r5, #0
_02260696:
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	cmp r0, #0
	beq _022606CC
	ldr r0, [r4, #0x7c]
	bl FUN_02021BD4
	movs r0, #0
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_0200A4E4
	movs r0, #0x13
	adds r1, r4, #0
	lsls r0, r0, #4
	adds r1, #0xbc
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	adds r1, r4, #0
	adds r1, #0xbc
	movs r0, #0
	str r0, [r1]
_022606CC:
	adds r7, r7, #1
	adds r4, r4, #4
	cmp r7, #0xc
	blt _02260696
	movs r4, #0
	adds r7, r4, #0
_022606D8:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _0226071C
	bl FUN_0200A6DC
	movs r0, #0x4d
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xac
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x4e
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xec
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	movs r0, #0x4f
	adds r1, r5, #0
	lsls r0, r0, #2
	adds r1, #0xfc
	ldr r0, [r6, r0]
	ldr r1, [r1]
	bl FUN_02009D68
	adds r0, r5, #0
	adds r0, #0xac
	str r7, [r0]
_0226071C:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _022606D8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226068C

	thumb_func_start ov70_02260728
ov70_02260728: @ 0x02260728
	cmp r1, r2
	bne _02260734
	ldr r1, _0226073C @ =0x0226D5FC
	lsls r0, r3, #3
	adds r0, r1, r0
	bx lr
_02260734:
	ldr r1, _02260740 @ =0x0226D844
	lsls r0, r0, #3
	adds r0, r1, r0
	bx lr
	.align 2, 0
_0226073C: .4byte 0x0226D5FC
_02260740: .4byte 0x0226D844
	thumb_func_end ov70_02260728

	thumb_func_start ov70_02260744
ov70_02260744: @ 0x02260744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, [r1]
	ldr r1, [sp, #4]
	str r2, [sp, #8]
	ldr r2, _0226079C @ =0x0226D5A4
	adds r1, #0xc
	adds r7, r3, #0
	bl FUN_0201A8D4
	ldr r4, [sp, #4]
	ldr r5, [sp, #4]
	movs r6, #0
	adds r4, #0x2c
_02260762:
	adds r1, r6, #0
	ldr r0, [sp, #8]
	adds r1, #0x38
	movs r2, #0
	adds r3, r4, #0
	str r7, [sp]
	bl FUN_020071D0
	str r0, [r5, #0x20]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #3
	blt _02260762
	ldr r0, _022607A0 @ =0x0226D58C
	ldr r2, _022607A4 @ =ov70_02260A50
	ldr r3, [sp, #4]
	movs r1, #1
	str r7, [sp]
	bl FUN_02023FCC
	ldr r1, [sp, #4]
	str r0, [r1, #0x1c]
	ldr r0, [sp, #4]
	movs r1, #1
	strh r1, [r0, #6]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226079C: .4byte 0x0226D5A4
_022607A0: .4byte 0x0226D58C
_022607A4: .4byte ov70_02260A50
	thumb_func_end ov70_02260744

	thumb_func_start ov70_022607A8
ov70_022607A8: @ 0x022607A8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #0x1c]
	bl FUN_02024034
	adds r0, r6, #0
	adds r0, #0xc
	bl FUN_0201A8FC
	movs r4, #0
	adds r5, r6, #0
_022607BE:
	ldr r0, [r5, #0x20]
	bl FUN_020181C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _022607BE
	movs r0, #0
	strb r0, [r6, #2]
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_022607A8

	thumb_func_start ov70_022607D4
ov70_022607D4: @ 0x022607D4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #4]
	ldrh r0, [r5, #6]
	adds r6, r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	cmp r0, #0
	bne _022607F2
	ldr r0, [r5, #0x1c]
	bl FUN_0202404C
	b _022607F6
_022607F2:
	movs r0, #1
	strb r0, [r5, #3]
_022607F6:
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _02260812
	movs r2, #0
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _02260812
	strb r2, [r5, #2]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r3, r7, #0
	str r4, [sp]
	bl ov70_022609D4
_02260812:
	ldrb r1, [r5, #3]
	ldrh r0, [r5, #4]
	cmp r1, r0
	beq _02260868
	strh r1, [r5, #4]
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _02260832
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	adds r3, r7, #0
	str r4, [sp]
	bl ov70_022609D4
	b _02260854
_02260832:
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _02260848
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	adds r3, r7, #0
	bl ov70_022609D4
	b _02260854
_02260848:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl ov70_022609D4
_02260854:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _02260868
	ldrb r0, [r5, #3]
	cmp r0, #2
	bne _02260868
	movs r0, #1
	strb r0, [r5, #2]
	str r0, [sp, #4]
	strh r0, [r5]
_02260868:
	ldr r0, [sp, #4]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_022607D4

	thumb_func_start ov70_02260870
ov70_02260870: @ 0x02260870
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r6, r1, #0
	ldr r4, [sp, #0x34]
	str r0, [sp, #8]
	ldr r7, [sp, #0x30]
	str r3, [sp, #0x14]
	str r4, [sp, #0xc]
	str r2, [sp, #0x10]
	ldr r2, [r6]
	adds r0, r7, #0
	movs r1, #0x37
	movs r3, #4
	bl FUN_0200710C
	movs r0, #0
	strh r0, [r5, #8]
	ldr r0, [sp, #0x14]
	bl FUN_0222E8C4
	strh r0, [r5, #0xa]
	movs r0, #5
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r2, [r6]
	adds r0, r7, #0
	movs r3, #6
	bl FUN_020070E8
	movs r0, #5
	lsls r0, r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	ldrh r2, [r5, #0xa]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r2, #0x1b
	movs r3, #6
	bl ov70_0225FA14
	ldr r0, [sp, #0x10]
	movs r1, #1
	movs r2, #0x3f
	bl ov70_0225F288
	str r0, [sp, #0x18]
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #4
	str r0, [sp]
	movs r1, #0
	ldr r0, _0226092C @ =0x000F0E00
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r5, #0
	ldr r2, [sp, #0x18]
	str r1, [sp, #0xc]
	adds r0, #0xc
	adds r3, r1, #0
	bl FUN_0201D78C
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _0226091A
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	adds r3, r7, #0
	bl ov70_022609D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
_0226091A:
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	adds r3, r7, #0
	bl ov70_022609D4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0226092C: .4byte 0x000F0E00
	thumb_func_end ov70_02260870

	thumb_func_start ov70_02260930
ov70_02260930: @ 0x02260930
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r2, #0
	adds r5, r0, #0
	adds r6, r1, #0
	str r3, [sp, #0x10]
	ldr r4, [sp, #0x28]
	cmp r7, #3
	blo _02260946
	bl FUN_02022974
_02260946:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [r6]
	movs r1, #0x37
	movs r3, #4
	bl FUN_0200710C
	movs r0, #1
	strh r0, [r5, #8]
	movs r0, #5
	strh r7, [r5, #0xa]
	lsls r0, r0, #6
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrh r1, [r5, #0xa]
	ldr r0, [sp, #0x10]
	ldr r2, [r6]
	adds r1, #0x5d
	movs r3, #6
	bl FUN_020070E8
	ldrb r0, [r5, #2]
	cmp r0, #0
	str r4, [sp]
	bne _02260996
	ldr r3, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	bl ov70_022609D4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02260996:
	ldr r3, [sp, #0x10]
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #2
	bl ov70_022609D4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02260930

	thumb_func_start ov70_022609A8
ov70_022609A8: @ 0x022609A8
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4]
	movs r1, #4
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #5
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #6
	bl FUN_02019EBC
	ldr r0, [r4]
	movs r1, #6
	movs r2, #3
	movs r3, #0
	bl FUN_02019184
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_022609A8

	thumb_func_start ov70_022609D4
ov70_022609D4: @ 0x022609D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0x20
	adds r4, r1, #0
	adds r6, r2, #0
	str r0, [sp]
	movs r1, #0x15
	str r1, [sp, #4]
	lsls r1, r6, #2
	adds r1, r5, r1
	ldr r1, [r1, #0x2c]
	adds r7, r3, #0
	adds r1, #0xc
	str r1, [sp, #8]
	movs r2, #0
	str r2, [sp, #0xc]
	movs r3, #3
	str r3, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	movs r1, #5
	bl FUN_020198E8
	ldr r0, [r4]
	movs r1, #5
	bl FUN_0201C3C0
	ldrh r0, [r5, #8]
	cmp r0, #1
	bne _02260A34
	movs r0, #5
	lsls r0, r0, #6
	str r0, [sp]
	ldr r0, [sp, #0x30]
	ldr r2, _02260A48 @ =0x0226D584
	str r0, [sp, #4]
	ldrh r3, [r5, #0xa]
	ldrb r2, [r2, r6]
	adds r0, r4, #0
	lsls r3, r3, #1
	adds r2, r2, r3
	adds r1, r7, #0
	adds r2, #0x60
	movs r3, #6
	bl ov70_0225FA14
_02260A34:
	ldr r3, _02260A4C @ =0x0226D588
	ldr r0, [r4]
	ldrsb r3, [r3, r6]
	movs r1, #6
	movs r2, #3
	bl FUN_0201C63C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02260A48: .4byte 0x0226D584
_02260A4C: .4byte 0x0226D588
	thumb_func_end ov70_022609D4

	thumb_func_start ov70_02260A50
ov70_02260A50: @ 0x02260A50
	strb r1, [r2, #3]
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _02260A5E
	movs r0, #2
	strb r0, [r2, #3]
	bx lr
_02260A5E:
	cmp r0, #3
	bne _02260A66
	movs r0, #1
	strb r0, [r2, #3]
_02260A66:
	bx lr
	thumb_func_end ov70_02260A50

	thumb_func_start ov70_02260A68
ov70_02260A68: @ 0x02260A68
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02260A68

	thumb_func_start ov70_02260A70
ov70_02260A70: @ 0x02260A70
	push {r4, r5, lr}
	sub sp, #0xc
	movs r1, #0x14
	adds r5, r0, #0
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_02260A84:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02260A84
	adds r0, r5, #0
	bl FUN_020203AC
	str r0, [r4]
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, _02260AC8 @ =0x0029AEC1
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r2, _02260ACC @ =0x0226D904
	ldr r3, _02260AD0 @ =0x000005C1
	adds r0, #8
	bl FUN_020206D0
	ldr r0, [r4]
	bl FUN_020203D4
	movs r0, #0x96
	movs r1, #0xe1
	ldr r2, [r4]
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_02260AC8: .4byte 0x0029AEC1
_02260ACC: .4byte 0x0226D904
_02260AD0: .4byte 0x000005C1
	thumb_func_end ov70_02260A70

	thumb_func_start ov70_02260AD4
ov70_02260AD4: @ 0x02260AD4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020203E0
	ldr r0, [r4]
	bl FUN_020203B8
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02260AD4

	thumb_func_start ov70_02260AEC
ov70_02260AEC: @ 0x02260AEC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02260B10
	adds r1, r4, #0
	adds r1, #8
	bl ov70_0225D054
	movs r0, #2
	ldr r1, [r4, #8]
	lsls r0, r0, #0xe
	adds r1, r1, r0
	str r1, [r4, #8]
	ldr r1, [r4, #0x10]
	lsls r0, r0, #2
	subs r0, r1, r0
	str r0, [r4, #0x10]
_02260B10:
	bl FUN_020203EC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02260AEC

	thumb_func_start ov70_02260B18
ov70_02260B18: @ 0x02260B18
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02260B18

	thumb_func_start ov70_02260B20
ov70_02260B20: @ 0x02260B20
	push {r3, r4}
	movs r4, #2
	lsls r4, r4, #0xe
	adds r1, r1, r4
	str r1, [r0, #8]
	lsls r1, r4, #2
	str r2, [r0, #0xc]
	subs r1, r3, r1
	str r1, [r0, #0x10]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov70_02260B20

	thumb_func_start ov70_02260B38
ov70_02260B38: @ 0x02260B38
	str r1, [r0, #4]
	bx lr
	thumb_func_end ov70_02260B38

	thumb_func_start ov70_02260B3C
ov70_02260B3C: @ 0x02260B3C
	movs r1, #0
	str r1, [r0, #4]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02260B3C

	thumb_func_start ov70_02260B44
ov70_02260B44: @ 0x02260B44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r1, _02260BB4 @ =0x000004A4
	adds r0, r2, #0
	str r2, [sp]
	bl FUN_02018144
	ldr r2, _02260BB4 @ =0x000004A4
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0xb4
	muls r0, r5, r0
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl FUN_02018144
	movs r1, #0x47
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r0, #0xe4
	adds r7, r6, #0
	muls r7, r0, r7
	ldr r0, [sp]
	adds r1, r7, #0
	bl FUN_02018144
	movs r1, #0x12
	lsls r1, r1, #4
	str r0, [r4, r1]
	subs r0, r1, #4
	ldr r0, [r4, r0]
	ldr r2, [sp, #4]
	movs r1, #0
	blx FUN_020D5124
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	adds r2, r7, #0
	blx FUN_020D5124
	movs r0, #0x49
	lsls r0, r0, #2
	strb r5, [r4, r0]
	adds r0, r0, #1
	strb r6, [r4, r0]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260BB4: .4byte 0x000004A4
	thumb_func_end ov70_02260B44

	thumb_func_start ov70_02260BB8
ov70_02260BB8: @ 0x02260BB8
	push {r4, lr}
	movs r1, #0x4a
	adds r4, r0, #0
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _02260BCA
	bl ov70_02260D80
_02260BCA:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02260BB8

	thumb_func_start ov70_02260BE8
ov70_02260BE8: @ 0x02260BE8
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x4b
	adds r5, r0, #0
	lsls r1, r1, #2
	adds r1, r5, r1
	bl ov70_022616B0
	movs r0, #0x49
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	movs r4, #0
	cmp r0, #0
	ble _02260C24
	movs r7, #0x71
	adds r6, r4, #0
	lsls r7, r7, #2
_02260C08:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r5, r7
	adds r0, r0, r6
	bl ov70_02261968
	movs r0, #0x49
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	adds r4, r4, #1
	adds r6, #0xb4
	cmp r4, r0
	blt _02260C08
_02260C24:
	ldr r0, _02260C4C @ =0x00000125
	movs r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02260C4A
	ldr r7, _02260C4C @ =0x00000125
	adds r4, r6, #0
_02260C32:
	movs r1, #0x12
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r5, #0
	adds r1, r1, r4
	bl ov70_02261C60
	ldrb r0, [r5, r7]
	adds r6, r6, #1
	adds r4, #0xe4
	cmp r6, r0
	blt _02260C32
_02260C4A:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02260C4C: .4byte 0x00000125
	thumb_func_end ov70_02260BE8

	thumb_func_start ov70_02260C50
ov70_02260C50: @ 0x02260C50
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bne _02260C5A
	bl FUN_02022974
_02260C5A:
	movs r0, #0x12
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02260C68
	bl FUN_02022974
_02260C68:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02260C76
	bl FUN_02022974
_02260C76:
	movs r1, #0x4b
	lsls r1, r1, #2
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov70_022616FC
	ldr r0, _02260CDC @ =0x00000125
	movs r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02260CAC
	movs r7, #0xa7
	adds r6, r4, #0
	lsls r7, r7, #2
_02260C92:
	movs r1, #0x12
	lsls r1, r1, #4
	ldr r1, [r5, r1]
	adds r0, r5, r7
	adds r1, r1, r6
	bl ov70_02261C04
	ldr r0, _02260CDC @ =0x00000125
	adds r4, r4, #1
	ldrb r0, [r5, r0]
	adds r6, #0xe4
	cmp r4, r0
	blt _02260C92
_02260CAC:
	movs r0, #0x49
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	movs r4, #0
	cmp r0, #0
	ble _02260CDA
	movs r7, #0x71
	adds r6, r4, #0
	lsls r7, r7, #2
_02260CBE:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r5, r7
	adds r0, r0, r6
	bl ov70_022619F4
	movs r0, #0x49
	lsls r0, r0, #2
	ldrb r0, [r5, r0]
	adds r4, r4, #1
	adds r6, #0xb4
	cmp r4, r0
	blt _02260CBE
_02260CDA:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02260CDC: .4byte 0x00000125
	thumb_func_end ov70_02260C50

	thumb_func_start ov70_02260CE0
ov70_02260CE0: @ 0x02260CE0
	bx lr
	.align 2, 0
	thumb_func_end ov70_02260CE0

	thumb_func_start ov70_02260CE4
ov70_02260CE4: @ 0x02260CE4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02260D78 @ =0x00000127
	adds r7, r3, #0
	strb r2, [r5, r0]
	subs r0, r0, #1
	strb r1, [r5, r0]
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r7, #0
	ldr r4, [sp, #0x18]
	bl ov70_022613F4
	adds r6, r0, #0
	movs r0, #0xaf
	adds r1, r7, #0
	bl FUN_02006C24
	adds r7, r0, #0
	ldr r0, _02260D7C @ =0x00000494
	adds r1, r4, #0
	adds r0, r5, r0
	movs r2, #4
	bl FUN_020182CC
	ldr r0, _02260D7C @ =0x00000494
	adds r1, r7, #0
	adds r0, r5, r0
	str r0, [sp]
	movs r0, #0x4b
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov70_022614F4
	movs r0, #0xa7
	ldr r2, _02260D7C @ =0x00000494
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r7, #0
	adds r2, r5, r2
	adds r3, r6, #0
	str r4, [sp]
	bl ov70_02261B24
	movs r0, #0x71
	ldr r2, _02260D7C @ =0x00000494
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r7, #0
	adds r2, r5, r2
	adds r3, r6, #0
	str r4, [sp]
	bl ov70_0226174C
	adds r0, r7, #0
	bl FUN_02006CA8
	adds r0, r6, #0
	bl ov70_02261418
	movs r1, #0x4b
	lsls r1, r1, #2
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov70_022615E8
	movs r0, #0x4a
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260D78: .4byte 0x00000127
_02260D7C: .4byte 0x00000494
	thumb_func_end ov70_02260CE4

	thumb_func_start ov70_02260D80
ov70_02260D80: @ 0x02260D80
	push {r4, lr}
	movs r1, #0x4b
	adds r4, r0, #0
	lsls r1, r1, #2
	adds r1, r4, r1
	bl ov70_02261664
	movs r0, #0x4b
	ldr r1, _02260DC4 @ =0x00000494
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov70_022615A4
	movs r0, #0xa7
	ldr r1, _02260DC4 @ =0x00000494
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov70_02261BB4
	movs r0, #0x71
	ldr r1, _02260DC4 @ =0x00000494
	lsls r0, r0, #2
	adds r0, r4, r0
	adds r1, r4, r1
	bl ov70_022618C8
	movs r0, #0x4a
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02260DC4: .4byte 0x00000494
	thumb_func_end ov70_02260D80

	thumb_func_start ov70_02260DC8
ov70_02260DC8: @ 0x02260DC8
	push {r3, lr}
	movs r2, #7
	adds r1, r0, #0
	lsls r2, r2, #6
	ldr r0, [r1, r2]
	cmp r0, #1
	bne _02260DF2
	adds r0, r2, #0
	subs r0, #0xbc
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02260DF2
	adds r0, r2, #0
	movs r3, #1
	subs r0, #0xbc
	str r3, [r1, r0]
	subs r2, #0x24
	adds r0, r1, #4
	adds r1, r1, r2
	bl FUN_0201727C
_02260DF2:
	pop {r3, pc}
	thumb_func_end ov70_02260DC8

	thumb_func_start ov70_02260DF4
ov70_02260DF4: @ 0x02260DF4
	push {r4, lr}
	movs r1, #7
	adds r4, r0, #0
	lsls r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02260E1E
	adds r0, r1, #0
	subs r0, #0xbc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02260E1E
	subs r1, #0x24
	adds r0, r4, #4
	adds r1, r4, r1
	bl FUN_02017288
	movs r0, #0x41
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
_02260E1E:
	pop {r4, pc}
	thumb_func_end ov70_02260DF4

	thumb_func_start ov70_02260E20
ov70_02260E20: @ 0x02260E20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r7, r0, #0
	adds r6, r2, #0
	str r3, [sp]
	cmp r5, #2
	ble _02260E34
	bl FUN_02022974
_02260E34:
	cmp r6, #3
	ble _02260E3C
	bl FUN_02022974
_02260E3C:
	adds r0, r7, #0
	bl ov70_02261718
	movs r1, #0x71
	lsls r1, r1, #2
	adds r4, r0, #0
	adds r2, r7, r1
	lsls r1, r5, #4
	adds r0, r4, #4
	adds r1, r2, r1
	bl FUN_02017258
	adds r0, r4, #4
	movs r1, #1
	bl FUN_02017348
	ldr r1, [sp]
	adds r0, r4, #0
	bl ov70_02260EA0
	add r1, sp, #4
	movs r0, #0
	str r0, [r1]
	str r0, [r1, #4]
	str r0, [r1, #8]
	adds r0, r4, #0
	bl ov70_02260EE4
	strb r6, [r4, #1]
	adds r0, r4, #0
	strb r5, [r4, #2]
	movs r1, #1
	strb r1, [r4]
	str r1, [r4, #0x7c]
	adds r0, #0x84
	str r1, [r0]
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02260E20

	thumb_func_start ov70_02260E8C
ov70_02260E8C: @ 0x02260E8C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r4, #4
	movs r1, #0
	bl FUN_02017348
	movs r0, #0
	strb r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02260E8C

	thumb_func_start ov70_02260EA0
ov70_02260EA0: @ 0x02260EA0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	adds r2, #0x9c
	stm r2!, {r0, r1}
	ldr r0, [r4]
	adds r1, r3, #0
	str r0, [r2]
	adds r1, #0x9c
	ldr r2, [r1]
	adds r1, r3, #0
	adds r1, #0xa8
	ldr r1, [r1]
	adds r0, r3, #4
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa0
	ldr r4, [r2]
	adds r2, r3, #0
	adds r2, #0xac
	ldr r2, [r2]
	adds r2, r4, r2
	adds r4, r3, #0
	adds r4, #0xa4
	adds r3, #0xb0
	ldr r4, [r4]
	ldr r3, [r3]
	adds r3, r4, r3
	bl FUN_02017350
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02260EA0

	thumb_func_start ov70_02260EE4
ov70_02260EE4: @ 0x02260EE4
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	adds r2, #0xa8
	stm r2!, {r0, r1}
	ldr r0, [r4]
	adds r1, r3, #0
	str r0, [r2]
	adds r1, #0x9c
	ldr r2, [r1]
	adds r1, r3, #0
	adds r1, #0xa8
	ldr r1, [r1]
	adds r0, r3, #4
	adds r1, r2, r1
	adds r2, r3, #0
	adds r2, #0xa0
	ldr r4, [r2]
	adds r2, r3, #0
	adds r2, #0xac
	ldr r2, [r2]
	adds r2, r4, r2
	adds r4, r3, #0
	adds r4, #0xa4
	adds r3, #0xb0
	ldr r4, [r4]
	ldr r3, [r3]
	adds r3, r4, r3
	bl FUN_02017350
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02260EE4

	thumb_func_start ov70_02260F28
ov70_02260F28: @ 0x02260F28
	push {r3, lr}
	adds r3, r1, #0
	adds r0, r0, #4
	adds r2, r1, #4
	adds r3, #8
	bl FUN_02017358
	pop {r3, pc}
	thumb_func_end ov70_02260F28

	thumb_func_start ov70_02260F38
ov70_02260F38: @ 0x02260F38
	ldr r3, _02260F40 @ =FUN_02017348
	adds r0, r0, #4
	bx r3
	nop
_02260F40: .4byte FUN_02017348
	thumb_func_end ov70_02260F38

	thumb_func_start ov70_02260F44
ov70_02260F44: @ 0x02260F44
	adds r1, r0, #0
	adds r1, #0x80
	ldr r1, [r1]
	cmp r1, #0
	bne _02260F58
	movs r1, #1
	adds r0, #0x80
	str r1, [r0]
	adds r0, r1, #0
	bx lr
_02260F58:
	movs r0, #0
	bx lr
	thumb_func_end ov70_02260F44

	thumb_func_start ov70_02260F5C
ov70_02260F5C: @ 0x02260F5C
	adds r1, r0, #0
	adds r1, #0x88
	ldr r1, [r1]
	cmp r1, #0
	bne _02260F70
	movs r1, #1
	adds r0, #0x88
	str r1, [r0]
	adds r0, r1, #0
	bx lr
_02260F70:
	movs r0, #0
	bx lr
	thumb_func_end ov70_02260F5C

	thumb_func_start ov70_02260F74
ov70_02260F74: @ 0x02260F74
	ldr r3, _02260F7C @ =FUN_02017388
	adds r0, r0, #4
	movs r2, #0
	bx r3
	.align 2, 0
_02260F7C: .4byte FUN_02017388
	thumb_func_end ov70_02260F74

	thumb_func_start ov70_02260F80
ov70_02260F80: @ 0x02260F80
	adds r0, #0x80
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02260F80

	thumb_func_start ov70_02260F88
ov70_02260F88: @ 0x02260F88
	adds r0, #0x88
	ldr r0, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02260F88

	thumb_func_start ov70_02260F90
ov70_02260F90: @ 0x02260F90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov70_02261AF0
	movs r1, #0xa7
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, [sp]
	str r0, [sp, #0xc]
	lsls r1, r1, #4
	adds r0, r0, #4
	adds r1, r2, r1
	bl FUN_02017258
	ldr r5, [sp, #0xc]
	ldr r0, [sp]
	movs r1, #0xc
	muls r1, r0, r1
	movs r0, #0xa7
	lsls r0, r0, #2
	adds r0, r7, r0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	movs r6, #0
	lsls r0, r0, #4
	adds r4, r7, r1
	adds r5, #0x7c
	str r0, [sp, #0x14]
_02260FD0:
	movs r0, #0xef
	lsls r0, r0, #2
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _02260FEA
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r3, r1
	ldr r3, _02261054 @ =0x00000494
	adds r3, r7, r3
	bl FUN_02017190
_02260FEA:
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x14
	cmp r6, #3
	blt _02260FD0
	ldr r0, [sp, #0xc]
	movs r1, #1
	adds r0, r0, #4
	bl FUN_02017348
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	lsls r0, r0, #4
	strh r0, [r1]
	ldr r0, [sp, #8]
	mov r3, sp
	lsls r0, r0, #4
	strh r0, [r1, #2]
	ldrh r2, [r1]
	subs r3, r3, #4
	ldr r0, [sp, #0xc]
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov70_022610BC
	ldr r0, [sp, #0xc]
	movs r2, #1
	ldr r1, [sp]
	strh r2, [r0]
	strh r1, [r0, #2]
	movs r1, #0x14
	adds r0, #0xcc
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	lsls r1, r2, #0xc
	adds r0, #0xdc
	str r1, [r0]
	ldr r0, [sp, #0xc]
	movs r1, #0
	adds r0, #0xe0
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	movs r1, #0x1f
	adds r0, #0xe1
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	adds r0, #0xe2
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02261054: .4byte 0x00000494
	thumb_func_end ov70_02260F90

	thumb_func_start ov70_02261058
ov70_02261058: @ 0x02261058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	str r1, [sp]
	adds r0, r1, #4
	movs r1, #0
	bl FUN_02017348
	movs r0, #0xa7
	ldr r5, [sp]
	lsls r0, r0, #2
	movs r7, #0
	adds r0, r6, r0
	adds r4, r7, #0
	adds r5, #0x7c
	str r0, [sp, #4]
_02261078:
	ldr r0, [sp]
	ldrh r1, [r0, #2]
	movs r0, #0xc
	muls r0, r1, r0
	adds r0, r6, r0
	adds r2, r4, r0
	movs r0, #0xef
	lsls r0, r0, #2
	ldr r2, [r2, r0]
	cmp r2, #0
	beq _0226109E
	lsls r3, r1, #4
	ldr r1, [sp, #4]
	adds r0, r5, #0
	adds r1, r1, r3
	ldr r3, _022610B4 @ =0x00000494
	adds r3, r6, r3
	bl FUN_02017190
_0226109E:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, #0x14
	cmp r7, #3
	blt _02261078
	ldr r0, [sp]
	movs r1, #0
	strh r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022610B4: .4byte 0x00000494
	thumb_func_end ov70_02261058

	thumb_func_start ov70_022610B8
ov70_022610B8: @ 0x022610B8
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end ov70_022610B8

	thumb_func_start ov70_022610BC
ov70_022610BC: @ 0x022610BC
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	add r0, sp, #0x1c
	add r1, sp, #0
	bl ov70_0225C700
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r4, #4
	bl FUN_02017350
	add sp, #0xc
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.align 2, 0
	thumb_func_end ov70_022610BC

	thumb_func_start ov70_022610E4
ov70_022610E4: @ 0x022610E4
	push {r3, lr}
	sub sp, #0x10
	adds r0, r0, #4
	add r1, sp, #4
	add r2, sp, #8
	add r3, sp, #0xc
	bl FUN_02017358
	add r0, sp, #4
	add r1, sp, #0
	bl ov70_0225C714
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsls r1, r1, #0x10
	orrs r0, r1
	add sp, #0x10
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_022610E4

	thumb_func_start ov70_0226110C
ov70_0226110C: @ 0x0226110C
	push {r3, r4, lr}
	sub sp, #4
	movs r4, #0
	str r4, [sp]
	bl ov70_0226111C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0226110C

	thumb_func_start ov70_0226111C
ov70_0226111C: @ 0x0226111C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r2, #0
	str r0, [sp]
	adds r4, r1, #0
	adds r7, r3, #0
	cmp r5, #3
	blt _02261130
	bl FUN_02022974
_02261130:
	cmp r7, #7
	blt _02261138
	bl FUN_02022974
_02261138:
	ldrh r0, [r4, #2]
	cmp r0, #0x12
	blo _02261142
	bl FUN_02022974
_02261142:
	ldrh r0, [r4, #2]
	movs r1, #0xc
	lsls r6, r5, #2
	muls r1, r0, r1
	ldr r0, [sp]
	adds r0, r0, r1
	adds r1, r0, r6
	movs r0, #0xef
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226121C
	adds r0, r4, #0
	str r0, [sp, #4]
	adds r0, #0xb8
	str r0, [sp, #4]
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _02261178
	adds r2, r4, #0
	movs r1, #0x14
	adds r2, #0x7c
	muls r1, r5, r1
	adds r0, r4, #4
	adds r1, r2, r1
	bl FUN_0201727C
_02261178:
	ldr r0, [sp, #4]
	movs r1, #1
	strb r1, [r0, r5]
	adds r0, r4, r5
	adds r0, #0xbc
	strb r7, [r0]
	adds r0, r4, r6
	ldr r1, [sp, #0x20]
	adds r0, #0xd0
	str r1, [r0]
	adds r0, r4, #0
	str r0, [sp, #8]
	adds r0, #0xcd
	str r0, [sp, #8]
	movs r0, #0
	ldr r1, [sp, #8]
	cmp r7, #6
	strb r0, [r1, r5]
	bhi _02261208
	adds r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022611AA: @ jump table
	.2byte _022611B8 - _022611AA - 2 @ case 0
	.2byte _022611B8 - _022611AA - 2 @ case 1
	.2byte _022611B8 - _022611AA - 2 @ case 2
	.2byte _022611C0 - _022611AA - 2 @ case 3
	.2byte _022611C0 - _022611AA - 2 @ case 4
	.2byte _022611D6 - _022611AA - 2 @ case 5
	.2byte _022611F0 - _022611AA - 2 @ case 6
_022611B8:
	adds r1, r4, r6
	adds r1, #0xc0
	str r0, [r1]
	b _02261208
_022611C0:
	adds r1, r4, #0
	movs r0, #0x14
	adds r1, #0x7c
	muls r0, r5, r0
	adds r0, r1, r0
	bl FUN_0201724C
	adds r1, r4, r6
	adds r1, #0xc0
	str r0, [r1]
	b _02261208
_022611D6:
	adds r1, r4, r6
	adds r1, #0xc0
	str r0, [r1]
	bl FUN_0201D35C
	adds r1, r4, #0
	adds r1, #0xcc
	ldrb r1, [r1]
	blx FUN_020E2178
	ldr r0, [sp, #8]
	strb r1, [r0, r5]
	b _02261208
_022611F0:
	adds r1, r4, r6
	adds r1, #0xc0
	str r0, [r1]
	bl FUN_0201D35C
	adds r1, r4, #0
	adds r1, #0xcc
	ldrb r1, [r1]
	blx FUN_020E2178
	ldr r0, [sp, #8]
	strb r1, [r0, r5]
_02261208:
	adds r1, r4, #0
	movs r0, #0x14
	adds r1, #0x7c
	muls r0, r5, r0
	adds r0, r1, r0
	adds r1, r4, r6
	adds r1, #0xc0
	ldr r1, [r1]
	bl FUN_02017240
_0226121C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226111C

	thumb_func_start ov70_02261220
ov70_02261220: @ 0x02261220
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r4, #3
	blt _02261230
	bl FUN_02022974
_02261230:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0226123A
	bl FUN_02022974
_0226123A:
	ldrh r1, [r5, #2]
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r6, r0
	lsls r0, r4, #2
	adds r1, r1, r0
	movs r0, #0xef
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261288
	adds r6, r5, #0
	adds r6, #0xb8
	ldrb r0, [r6, r4]
	cmp r0, #1
	bne _02261288
	adds r2, r5, #0
	movs r1, #0x14
	adds r2, #0x7c
	muls r1, r4, r1
	adds r0, r5, #4
	adds r1, r2, r1
	bl FUN_02017288
	lsls r2, r4, #2
	movs r0, #0
	adds r1, r5, r2
	strb r0, [r6, r4]
	adds r1, #0xc0
	str r0, [r1]
	adds r1, r5, r4
	adds r1, #0xbc
	strb r0, [r1]
	adds r1, r5, r4
	adds r1, #0xcd
	strb r0, [r1]
	adds r1, r5, r2
	adds r1, #0xd0
	str r0, [r1]
_02261288:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02261220

	thumb_func_start ov70_0226128C
ov70_0226128C: @ 0x0226128C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	movs r4, #0
_02261294:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02261348
	cmp r0, #1
	bne _022612AA
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov70_02261220
_022612AA:
	adds r4, r4, #1
	cmp r4, #3
	blt _02261294
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0226128C

	thumb_func_start ov70_022612B4
ov70_022612B4: @ 0x022612B4
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r4, #3
	blt _022612C4
	bl FUN_02022974
_022612C4:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _022612CE
	bl FUN_02022974
_022612CE:
	ldrh r1, [r5, #2]
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r6, r0
	lsls r0, r4, #2
	adds r1, r1, r0
	movs r0, #0xef
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022612EC
	adds r0, r5, r4
	adds r0, #0xb8
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_022612EC:
	movs r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_022612B4

	thumb_func_start ov70_022612F0
ov70_022612F0: @ 0x022612F0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r2, #0
	adds r6, r0, #0
	adds r5, r1, #0
	adds r7, r3, #0
	cmp r4, #3
	blt _02261302
	bl FUN_02022974
_02261302:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0226130C
	bl FUN_02022974
_0226130C:
	ldrh r1, [r5, #2]
	movs r0, #0xc
	muls r0, r1, r0
	adds r1, r6, r0
	lsls r0, r4, #2
	adds r1, r1, r0
	movs r0, #0xef
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02261326
	bl FUN_02022974
_02261326:
	adds r0, r5, r4
	adds r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #2
	bne _02261346
	adds r2, r5, #0
	movs r0, #0x14
	adds r2, #0xc0
	lsls r1, r4, #2
	str r7, [r2, r1]
	adds r5, #0x7c
	muls r0, r4, r0
	ldr r1, [r2, r1]
	adds r0, r5, r0
	bl FUN_02017240
_02261346:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_022612F0

	thumb_func_start ov70_02261348
ov70_02261348: @ 0x02261348
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #3
	blt _02261356
	bl FUN_02022974
_02261356:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _02261360
	bl FUN_02022974
_02261360:
	adds r0, r5, r4
	adds r0, #0xb8
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02261348

	thumb_func_start ov70_02261368
ov70_02261368: @ 0x02261368
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #3
	blt _02261376
	bl FUN_02022974
_02261376:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _02261380
	bl FUN_02022974
_02261380:
	lsls r0, r4, #2
	adds r0, r5, r0
	adds r0, #0xc0
	ldr r0, [r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_02261368

	thumb_func_start ov70_0226138C
ov70_0226138C: @ 0x0226138C
	ldr r3, _02261394 @ =FUN_02017348
	adds r0, r0, #4
	bx r3
	nop
_02261394: .4byte FUN_02017348
	thumb_func_end ov70_0226138C

	thumb_func_start ov70_02261398
ov70_02261398: @ 0x02261398
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4, #2]
	adds r6, r2, #0
	cmp r0, #0x12
	blo _022613AA
	bl FUN_02022974
_022613AA:
	ldrh r0, [r4, #2]
	lsls r0, r0, #4
	adds r1, r5, r0
	movs r0, #0xa9
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r6, #0
	blx FUN_020B3664
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02261398

	thumb_func_start ov70_022613C0
ov70_022613C0: @ 0x022613C0
	adds r0, #0xdc
	str r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov70_022613C0

	thumb_func_start ov70_022613C8
ov70_022613C8: @ 0x022613C8
	push {r3, r4}
	adds r3, r0, #0
	movs r4, #1
	adds r3, #0xe0
	strb r4, [r3]
	adds r3, r0, #0
	adds r3, #0xe1
	strb r1, [r3]
	adds r0, #0xe2
	strb r2, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_022613C8

	thumb_func_start ov70_022613E0
ov70_022613E0: @ 0x022613E0
	movs r1, #0
	adds r0, #0xe0
	strb r1, [r0]
	bx lr
	thumb_func_end ov70_022613E0

	thumb_func_start ov70_022613E8
ov70_022613E8: @ 0x022613E8
	push {r3, lr}
	adds r0, r0, #4
	bl FUN_0201736C
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_022613E8

	thumb_func_start ov70_022613F4
ov70_022613F4: @ 0x022613F4
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	lsls r2, r1, #2
	adds r1, r1, r2
	adds r4, r0, r1
	cmp r4, #0x19
	blo _02261406
	bl FUN_02022974
_02261406:
	movs r0, #1
	str r0, [sp]
	movs r0, #0xae
	adds r1, r4, #1
	movs r2, #0
	adds r3, r5, #0
	bl FUN_02006FE8
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022613F4

	thumb_func_start ov70_02261418
ov70_02261418: @ 0x02261418
	ldr r3, _0226141C @ =FUN_020181C4
	bx r3
	.align 2, 0
_0226141C: .4byte FUN_020181C4
	thumb_func_end ov70_02261418

	thumb_func_start ov70_02261420
ov70_02261420: @ 0x02261420
	push {r4, lr}
	adds r4, r0, #0
	bl ov70_0225C730
	ldr r0, [r4]
	blx FUN_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _02261454
	adds r2, r0, #0
	adds r2, #8
	beq _02261448
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02261448
	ldrh r1, [r0, #0xe]
	adds r1, r2, r1
	adds r1, r1, #4
	b _0226144A
_02261448:
	movs r1, #0
_0226144A:
	cmp r1, #0
	beq _02261454
	ldr r1, [r1]
	adds r0, r0, r1
	b _02261456
_02261454:
	movs r0, #0
_02261456:
	str r0, [r4, #8]
	ldr r0, [r4]
	blx FUN_020B3C1C
	str r0, [r4, #0xc]
	ldr r0, [r4]
	ldr r1, [r4, #0xc]
	bl FUN_0201CBB0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02261420

	thumb_func_start ov70_0226146C
ov70_0226146C: @ 0x0226146C
	ldr r3, _02261470 @ =FUN_02017110
	bx r3
	.align 2, 0
_02261470: .4byte FUN_02017110
	thumb_func_end ov70_0226146C

	thumb_func_start ov70_02261474
ov70_02261474: @ 0x02261474
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl FUN_0201724C
	adds r1, r0, #0
	ldr r0, [r5]
	adds r0, r0, r4
	cmp r0, r1
	bge _0226148E
	str r0, [r5]
	pop {r3, r4, r5, pc}
_0226148E:
	blx FUN_020E1F6C
	str r1, [r5]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_02261474

	thumb_func_start ov70_02261498
ov70_02261498: @ 0x02261498
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl FUN_0201724C
	ldr r1, [r5]
	adds r1, r1, r4
	cmp r1, r0
	bge _022614B2
	str r1, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
_022614B2:
	movs r1, #2
	lsls r1, r1, #0xa
	subs r0, r0, r1
	str r0, [r5]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_02261498

	thumb_func_start ov70_022614C0
ov70_022614C0: @ 0x022614C0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r4, r2, #0
	bl FUN_0201724C
	ldr r1, [r5]
	subs r1, r1, r4
	bmi _022614D6
	str r1, [r5]
	pop {r3, r4, r5, pc}
_022614D6:
	adds r0, r0, r1
	str r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022614C0

	thumb_func_start ov70_022614DC
ov70_022614DC: @ 0x022614DC
	ldr r1, [r0]
	subs r1, r1, r2
	cmp r1, #0
	ble _022614EA
	str r1, [r0]
	movs r0, #0
	bx lr
_022614EA:
	movs r1, #0
	str r1, [r0]
	movs r0, #1
	bx lr
	.align 2, 0
	thumb_func_end ov70_022614DC

	thumb_func_start ov70_022614F4
ov70_022614F4: @ 0x022614F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	movs r7, #6
	ldr r5, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x30]
	movs r6, #0
	adds r4, r2, #0
	lsls r7, r7, #6
_0226150E:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x14]
	adds r0, r5, #0
	bl ov70_02261420
	ldr r0, [r5]
	bl FUN_02231668
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x10
	cmp r6, #2
	blt _0226150E
	ldr r6, [sp, #8]
	ldr r4, [sp, #0x10]
	adds r0, r6, #0
	adds r5, r6, #0
	str r0, [sp, #0x18]
	adds r0, #0x10
	movs r7, #0
	adds r5, #0x20
	str r0, [sp, #0x18]
_0226153C:
	movs r0, #6
	ldr r1, [sp, #0x10]
	lsls r0, r0, #6
	ldr r1, [r1, r0]
	adds r0, #0xc
	ldr r0, [r4, r0]
	cmp r1, r0
	bne _02261556
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #0
	str r0, [r1]
	b _02261594
_02261556:
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #1
	str r0, [r1]
	cmp r7, #3
	beq _0226157C
	ldr r0, [sp, #0x14]
	movs r3, #0x63
	str r0, [sp]
	ldr r0, [sp, #0x30]
	lsls r3, r3, #2
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [r4, r3]
	adds r0, r5, #0
	bl FUN_02017164
	b _02261594
_0226157C:
	ldr r0, [sp, #0x14]
	movs r3, #0x63
	str r0, [sp]
	ldr r0, [sp, #0x30]
	lsls r3, r3, #2
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [r4, r3]
	adds r0, r5, #0
	bl FUN_02017164
_02261594:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r6, r6, #4
	adds r5, #0x14
	cmp r7, #5
	blt _0226153C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_022614F4

	thumb_func_start ov70_022615A4
ov70_022615A4: @ 0x022615A4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	str r1, [sp]
	movs r7, #0
	adds r4, r6, #0
	adds r5, #0x20
_022615B2:
	adds r0, r4, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #0
	beq _022615CC
	ldr r1, [sp]
	adds r0, r5, #0
	bl FUN_020171A0
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #0
	str r0, [r1]
_022615CC:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r5, #0x14
	cmp r7, #5
	blt _022615B2
	movs r4, #0
_022615D8:
	adds r0, r6, #0
	bl ov70_0226146C
	adds r4, r4, #1
	adds r6, #0x10
	cmp r4, #2
	blt _022615D8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_022615A4

	thumb_func_start ov70_022615E8
ov70_022615E8: @ 0x022615E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #1
	adds r7, r1, #0
	str r0, [r6]
	movs r0, #0
	str r0, [sp]
	adds r4, r7, #0
	adds r5, r6, #4
_022615FC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_02017258
	adds r0, r5, #0
	movs r1, #1
	bl FUN_02017348
	ldr r0, [sp]
	adds r4, #0x10
	adds r0, r0, #1
	adds r5, #0x78
	str r0, [sp]
	cmp r0, #2
	blt _022615FC
	adds r0, r6, #0
	str r0, [sp, #8]
	adds r0, #0x7c
	adds r4, r7, #0
	str r0, [sp, #8]
	adds r0, r6, #4
	movs r5, #0
	adds r4, #0x20
	str r0, [sp, #4]
_0226162C:
	adds r0, r7, #0
	adds r0, #0x84
	ldr r0, [r0]
	cmp r0, #1
	bne _02261654
	adds r1, r6, #0
	adds r1, #0xf4
	movs r0, #1
	str r0, [r1]
	cmp r5, #3
	beq _0226164C
	ldr r0, [sp, #4]
	adds r1, r4, #0
	bl FUN_0201727C
	b _02261654
_0226164C:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl FUN_0201727C
_02261654:
	adds r5, r5, #1
	adds r7, r7, #4
	adds r6, r6, #4
	adds r4, #0x14
	cmp r5, #4
	blt _0226162C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_022615E8

	thumb_func_start ov70_02261664
ov70_02261664: @ 0x02261664
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	str r0, [sp]
	adds r0, #0x7c
	movs r6, #0
	adds r4, r7, #0
	adds r5, #0x20
	str r0, [sp]
_02261676:
	adds r0, r4, #0
	adds r0, #0xf4
	ldr r0, [r0]
	cmp r0, #1
	bne _0226169E
	adds r1, r4, #0
	adds r1, #0xf4
	movs r0, #0
	str r0, [r1]
	cmp r6, #3
	beq _02261696
	adds r0, r7, #4
	adds r1, r5, #0
	bl FUN_02017288
	b _0226169E
_02261696:
	ldr r0, [sp]
	adds r1, r5, #0
	bl FUN_02017288
_0226169E:
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x14
	cmp r6, #4
	blt _02261676
	movs r0, #0
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02261664

	thumb_func_start ov70_022616B0
ov70_022616B0: @ 0x022616B0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r4, r1, #0
	movs r0, #0x42
	adds r4, #0x20
	lsls r0, r0, #2
	adds r6, r5, r0
	adds r7, r4, #0
_022616C4:
	adds r0, r5, #0
	adds r0, #0xf4
	ldr r0, [r0]
	cmp r0, #0
	beq _022616E6
	movs r2, #1
	adds r0, r6, #0
	adds r1, r4, #0
	lsls r2, r2, #0xc
	bl ov70_02261474
	movs r1, #0x42
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	adds r0, r7, #0
	bl FUN_02017240
_022616E6:
	ldr r0, [sp]
	adds r5, r5, #4
	adds r0, r0, #1
	adds r4, #0x14
	adds r6, r6, #4
	adds r7, #0x14
	str r0, [sp]
	cmp r0, #5
	blt _022616C4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_022616B0

	thumb_func_start ov70_022616FC
ov70_022616FC: @ 0x022616FC
	push {r3, r4, r5, lr}
	ldr r1, [r0]
	cmp r1, #0
	beq _02261716
	movs r4, #0
	adds r5, r0, #4
_02261708:
	adds r0, r5, #0
	bl FUN_02017294
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #2
	blt _02261708
_02261716:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022616FC

	thumb_func_start ov70_02261718
ov70_02261718: @ 0x02261718
	push {r4, lr}
	movs r1, #0x49
	lsls r1, r1, #2
	ldrb r4, [r0, r1]
	movs r2, #0
	cmp r4, #0
	ble _02261742
	subs r1, #8
	ldr r3, [r0, r1]
	adds r1, r3, #0
_0226172C:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0226173A
	movs r0, #0xb4
	muls r0, r2, r0
	adds r0, r3, r0
	pop {r4, pc}
_0226173A:
	adds r2, r2, #1
	adds r1, #0xb4
	cmp r2, r4
	blt _0226172C
_02261742:
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02261718

	thumb_func_start ov70_0226174C
ov70_0226174C: @ 0x0226174C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	movs r7, #0x4a
	str r0, [sp, #0x58]
	movs r0, #0
	str r0, [sp, #0x40]
	adds r0, r3, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x20]
	adds r0, #0x20
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x20]
	lsls r7, r7, #2
_02261770:
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x20]
	movs r6, #0
_02261776:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x58]
	adds r0, r5, #0
	bl ov70_0225C730
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #3
	blt _02261776
	ldr r0, [sp, #0x24]
	adds r0, #0xc
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	adds r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x40]
	adds r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #2
	blt _02261770
	ldr r4, [sp, #8]
	ldr r6, [sp, #0x14]
	movs r7, #0
	adds r5, r4, #0
_022617AA:
	movs r0, #0
	movs r1, #0x12
	str r0, [sp]
	lsls r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r1]
	ldr r3, [sp, #0x58]
	movs r2, #0
	bl FUN_0200723C
	str r0, [r4]
	blx FUN_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _022617EA
	adds r1, r0, #0
	adds r1, #8
	beq _022617DE
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _022617DE
	ldrh r2, [r0, #0xe]
	adds r1, r1, r2
	adds r1, r1, #4
	b _022617E0
_022617DE:
	movs r1, #0
_022617E0:
	cmp r1, #0
	beq _022617EA
	ldr r1, [r1]
	adds r0, r0, r1
	b _022617EC
_022617EA:
	movs r0, #0
_022617EC:
	str r0, [r4, #8]
	ldr r0, [r5, #0x20]
	blx FUN_020B3C1C
	str r0, [r4, #0xc]
	adds r7, r7, #1
	adds r6, r6, #4
	adds r4, #0x10
	adds r5, #0xc
	cmp r7, #2
	blt _022617AA
	movs r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r7, [sp, #0x14]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	str r0, [sp, #0x38]
	adds r0, #0x38
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	str r0, [sp, #0x30]
_0226181C:
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	ldr r6, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	ldr r5, [sp, #0x30]
	str r0, [sp, #0x28]
_0226182C:
	movs r0, #5
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #6
	ldr r3, [r1, r0]
	ldr r1, [sp, #0x14]
	subs r0, #0x20
	ldr r0, [r1, r0]
	cmp r0, r3
	beq _02261880
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	bl FUN_02017164
	ldr r0, [sp, #0x18]
	cmp r0, #1
	blt _02261880
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	movs r4, #0
	cmp r0, #0
	bls _02261880
_02261862:
	movs r0, #0x59
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	beq _02261874
	ldr r0, [r5, #0x40]
	adds r1, r4, #0
	blx FUN_020AE5CC
_02261874:
	movs r0, #0x16
	lsls r0, r0, #4
	ldr r0, [r7, r0]
	adds r4, r4, #1
	cmp r4, r0
	blo _02261862
_02261880:
	ldr r0, [sp, #0x2c]
	adds r6, r6, #4
	adds r0, r0, #4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	adds r5, #0x14
	adds r0, #0x14
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	adds r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0226182C
	ldr r0, [sp, #0x3c]
	adds r7, r7, #4
	adds r0, #0x10
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	adds r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	adds r0, #0x50
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	adds r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	adds r0, #0x50
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	adds r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #2
	blt _0226181C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226174C

	thumb_func_start ov70_022618C8
ov70_022618C8: @ 0x022618C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r7, [sp]
	movs r0, #0
	adds r6, r1, #0
	str r0, [sp, #8]
	adds r7, #0x38
_022618D8:
	movs r4, #0
	adds r5, r7, #0
_022618DC:
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_020171A0
	adds r4, r4, #1
	adds r5, #0x14
	cmp r4, #4
	blt _022618DC
	ldr r0, [sp, #8]
	adds r7, #0x50
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _022618D8
	ldr r4, [sp]
	movs r5, #0
_022618FC:
	ldr r0, [r4]
	bl FUN_020181C4
	adds r5, r5, #1
	adds r4, #0x10
	cmp r5, #2
	blt _022618FC
	movs r0, #0
	ldr r7, _02261960 @ =0x02100DF0
	str r0, [sp, #4]
_02261910:
	ldr r4, [sp]
	movs r5, #0
_02261914:
	ldr r0, [r4, #0x20]
	blx FUN_020B3C1C
	add r1, sp, #0x10
	add r2, sp, #0xc
	adds r6, r0, #0
	blx FUN_020AE9B8
	ldr r0, [sp, #0x10]
	ldr r1, [r7]
	blx r1
	ldr r0, [sp, #0xc]
	ldr r1, [r7]
	blx r1
	adds r0, r6, #0
	blx FUN_020AEA70
	ldr r1, _02261964 @ =0x02100DF8
	ldr r1, [r1]
	blx r1
	ldr r0, [r4, #0x20]
	bl FUN_020181C4
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #3
	blt _02261914
	ldr r0, [sp]
	adds r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _02261910
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02261960: .4byte 0x02100DF0
_02261964: .4byte 0x02100DF8
	thumb_func_end ov70_022618C8

	thumb_func_start ov70_02261968
ov70_02261968: @ 0x02261968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r7, #0
	str r0, [sp]
	adds r4, r0, #0
	adds r0, r1, #0
	str r1, [sp, #4]
	adds r0, #0x38
	adds r6, r7, #0
	adds r5, #0x8c
	str r0, [sp, #4]
_02261980:
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _022619E4
	cmp r7, #3
	bhi _022619E0
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02261996: @ jump table
	.2byte _0226199E - _02261996 - 2 @ case 0
	.2byte _022619B8 - _02261996 - 2 @ case 1
	.2byte _0226199E - _02261996 - 2 @ case 2
	.2byte _022619B8 - _02261996 - 2 @ case 3
_0226199E:
	ldr r1, [sp]
	movs r2, #0x50
	ldrb r1, [r1, #2]
	adds r0, r5, #0
	muls r2, r1, r2
	ldr r1, [sp, #4]
	adds r1, r1, r2
	movs r2, #1
	adds r1, r1, r6
	lsls r2, r2, #0xc
	bl ov70_02261474
	b _022619E4
_022619B8:
	ldr r1, [sp]
	movs r2, #0x50
	ldrb r1, [r1, #2]
	adds r0, r5, #0
	muls r2, r1, r2
	ldr r1, [sp, #4]
	adds r1, r1, r2
	movs r2, #1
	adds r1, r1, r6
	lsls r2, r2, #0xc
	bl ov70_02261498
	cmp r0, #1
	bne _022619E4
	movs r0, #0
	adds r1, r4, #0
	str r0, [r4, #0x7c]
	adds r1, #0x8c
	str r0, [r1]
	b _022619E4
_022619E0:
	bl FUN_02022974
_022619E4:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r6, #0x14
	adds r5, r5, #4
	cmp r7, #4
	blt _02261980
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261968

	thumb_func_start ov70_022619F4
ov70_022619F4: @ 0x022619F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r0, [r5]
	str r1, [sp]
	cmp r0, #0
	beq _02261AEA
	ldrb r0, [r5, #2]
	lsls r1, r0, #4
	ldr r0, [sp]
	adds r0, r0, r1
	adds r1, r5, #4
	bl ov70_0225C7A0
	cmp r0, #0
	beq _02261AEA
	ldrb r0, [r5, #1]
	cmp r0, #3
	blo _02261A1E
	bl FUN_02022974
_02261A1E:
	ldrb r0, [r5, #2]
	cmp r0, #2
	blo _02261A28
	bl FUN_02022974
_02261A28:
	ldrb r1, [r5, #2]
	movs r0, #0xc
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, [sp]
	adds r1, r0, r2
	ldrb r0, [r5, #1]
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0x20]
	blx FUN_020B3C1C
	ldrb r1, [r5, #2]
	lsls r2, r1, #4
	ldr r1, [sp]
	adds r1, r1, r2
	str r0, [r1, #0xc]
	ldrb r0, [r5, #2]
	lsls r1, r0, #4
	ldr r0, [sp]
	adds r1, r0, r1
	ldr r0, [r1, #4]
	ldr r1, [r1, #0xc]
	blx FUN_020AF1E8
	cmp r0, #0
	bne _02261A62
	bl FUN_02022974
_02261A62:
	ldr r7, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r6, r5, #0
	adds r4, r0, #0
	adds r7, #0x38
_02261A6E:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _02261A98
	ldrb r2, [r5, #2]
	movs r1, #0x50
	adds r0, r5, #4
	muls r1, r2, r1
	adds r1, r7, r1
	adds r1, r1, r4
	bl FUN_0201727C
	ldrb r1, [r5, #2]
	movs r0, #0x50
	muls r0, r1, r0
	adds r1, r6, #0
	adds r1, #0x8c
	adds r0, r7, r0
	ldr r1, [r1]
	adds r0, r0, r4
	bl FUN_02017240
_02261A98:
	ldr r0, [sp, #4]
	adds r6, r6, #4
	adds r0, r0, #1
	adds r4, #0x14
	str r0, [sp, #4]
	cmp r0, #4
	blt _02261A6E
	adds r0, r5, #4
	bl FUN_02017294
	ldr r0, [sp]
	movs r7, #0
	str r0, [sp, #8]
	adds r0, #0x38
	adds r6, r5, #0
	adds r4, r7, #0
	str r0, [sp, #8]
_02261ABA:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _02261AD2
	ldrb r1, [r5, #2]
	movs r2, #0x50
	adds r0, r5, #4
	muls r2, r1, r2
	ldr r1, [sp, #8]
	adds r1, r1, r2
	adds r1, r1, r4
	bl FUN_02017288
_02261AD2:
	adds r7, r7, #1
	adds r6, r6, #4
	adds r4, #0x14
	cmp r7, #4
	blt _02261ABA
	ldrb r0, [r5, #2]
	lsls r1, r0, #4
	ldr r0, [sp]
	adds r0, r0, r1
	ldr r0, [r0, #4]
	blx FUN_020AF298
_02261AEA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_022619F4

	thumb_func_start ov70_02261AF0
ov70_02261AF0: @ 0x02261AF0
	push {r4, lr}
	ldr r3, _02261B20 @ =0x00000125
	movs r1, #0
	ldrb r2, [r0, r3]
	cmp r2, #0
	ble _02261B18
	subs r3, r3, #5
	ldr r4, [r0, r3]
	adds r3, r4, #0
_02261B02:
	ldrh r0, [r3]
	cmp r0, #0
	bne _02261B10
	movs r0, #0xe4
	muls r0, r1, r0
	adds r0, r4, r0
	pop {r4, pc}
_02261B10:
	adds r1, r1, #1
	adds r3, #0xe4
	cmp r1, r2
	blt _02261B02
_02261B18:
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02261B20: .4byte 0x00000125
	thumb_func_end ov70_02261AF0

	thumb_func_start ov70_02261B24
ov70_02261B24: @ 0x02261B24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	adds r7, r3, #0
	str r0, [sp, #0x30]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #0x10]
	str r0, [sp, #0xc]
_02261B3C:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [r7]
	ldr r3, [sp, #0x30]
	bl ov70_02261420
	ldr r0, [sp, #0x14]
	cmp r0, #0xb
	beq _02261B5A
	cmp r0, #0xc
	beq _02261B5A
	ldr r0, [sp, #4]
	ldr r0, [r0]
	bl FUN_02231668
_02261B5A:
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0xc]
	movs r6, #0
_02261B60:
	ldr r1, [r4, #0x48]
	ldr r0, [r7]
	cmp r0, r1
	beq _02261B7E
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x30]
	movs r2, #0
	bl FUN_0200723C
	movs r1, #0x12
	lsls r1, r1, #4
	str r0, [r5, r1]
	b _02261B86
_02261B7E:
	movs r0, #0x12
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_02261B86:
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #3
	blt _02261B60
	ldr r0, [sp, #4]
	adds r7, r7, #4
	adds r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	adds r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x12
	blt _02261B3C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02261B24

	thumb_func_start ov70_02261BB4
ov70_02261BB4: @ 0x02261BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	movs r7, #0x12
	str r0, [sp, #4]
	movs r6, #0
	lsls r7, r7, #4
_02261BC8:
	ldr r5, [sp]
	movs r4, #0
_02261BCC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02261BDC
	bl FUN_020181C4
	movs r0, #0x12
	lsls r0, r0, #4
	str r6, [r5, r0]
_02261BDC:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _02261BCC
	ldr r0, [sp, #4]
	bl ov70_0226146C
	ldr r0, [sp]
	adds r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0x12
	blt _02261BC8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261BB4

	thumb_func_start ov70_02261C04
ov70_02261C04: @ 0x02261C04
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02261C5C
	ldrh r0, [r4, #2]
	adds r1, r4, #4
	lsls r0, r0, #4
	adds r0, r5, r0
	bl ov70_0225C7A0
	cmp r0, #0
	beq _02261C5C
	adds r0, r4, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261C3C
	ldrh r0, [r4, #2]
	adds r1, r4, #0
	adds r1, #0xe1
	lsls r0, r0, #4
	adds r0, r5, r0
	ldrb r1, [r1]
	ldr r0, [r0, #8]
	blx FUN_020B3764
_02261C3C:
	adds r0, r4, #4
	bl FUN_02017294
	adds r0, r4, #0
	adds r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261C5C
	ldrh r0, [r4, #2]
	adds r4, #0xe2
	ldrb r1, [r4]
	lsls r0, r0, #4
	adds r0, r5, r0
	ldr r0, [r0, #8]
	blx FUN_020B3764
_02261C5C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_02261C04

	thumb_func_start ov70_02261C60
ov70_02261C60: @ 0x02261C60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	str r0, [sp]
	adds r0, r4, #0
	str r0, [sp, #0xc]
	adds r0, #0x7c
	adds r7, r4, #0
	movs r5, #0
	str r0, [sp, #0xc]
	adds r7, #0xc0
	adds r6, r4, #0
	str r0, [sp, #8]
_02261C7A:
	adds r0, r4, r5
	adds r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261CE6
	adds r0, r4, r5
	adds r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #6
	bhi _02261CE6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02261C9A: @ jump table
	.2byte _02261CA8 - _02261C9A - 2 @ case 0
	.2byte _02261CC4 - _02261C9A - 2 @ case 1
	.2byte _02261DF4 - _02261C9A - 2 @ case 2
	.2byte _02261D0A - _02261C9A - 2 @ case 3
	.2byte _02261D26 - _02261C9A - 2 @ case 4
	.2byte _02261D6A - _02261C9A - 2 @ case 5
	.2byte _02261DC0 - _02261C9A - 2 @ case 6
_02261CA8:
	adds r2, r4, #0
	adds r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	adds r0, r7, #0
	bl ov70_02261474
	adds r1, r6, #0
	adds r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl FUN_02017240
	b _02261DF4
_02261CC4:
	adds r2, r4, #0
	adds r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	adds r0, r7, #0
	bl ov70_02261498
	adds r1, r6, #0
	adds r1, #0xc0
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl FUN_02017240
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _02261CE8
_02261CE6:
	b _02261DF4
_02261CE8:
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r0, [r0]
	adds r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	adds r2, r5, #0
	bl ov70_02261220
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02261DF4
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	adds r1, r4, #0
	blx r2
	b _02261DF4
_02261D0A:
	adds r2, r4, #0
	adds r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	adds r0, r7, #0
	bl ov70_022614C0
	adds r1, r6, #0
	adds r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl FUN_02017240
	b _02261DF4
_02261D26:
	adds r2, r4, #0
	adds r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	adds r0, r7, #0
	bl ov70_022614DC
	adds r1, r6, #0
	adds r1, #0xc0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl FUN_02017240
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02261DF4
	adds r0, r6, #0
	adds r0, #0xd0
	ldr r0, [r0]
	adds r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r2, r5, #0
	bl ov70_02261220
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02261DF4
	ldr r0, [sp]
	ldr r2, [sp, #4]
	adds r1, r4, #0
	blx r2
	b _02261DF4
_02261D6A:
	adds r0, r4, r5
	adds r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261D84
	adds r0, r4, r5
	adds r0, #0xcd
	ldrb r0, [r0]
	subs r1, r0, #1
	adds r0, r4, r5
	adds r0, #0xcd
	strb r1, [r0]
	b _02261DF4
_02261D84:
	adds r2, r4, #0
	adds r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	adds r0, r7, #0
	bl ov70_02261498
	cmp r0, #1
	bne _02261DB2
	bl FUN_0201D35C
	adds r1, r4, #0
	adds r1, #0xcc
	ldrb r1, [r1]
	blx FUN_020E2178
	adds r0, r4, r5
	adds r0, #0xcd
	strb r1, [r0]
	adds r1, r6, #0
	adds r1, #0xc0
	movs r0, #0
	str r0, [r1]
_02261DB2:
	adds r1, r6, #0
	adds r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl FUN_02017240
	b _02261DF4
_02261DC0:
	adds r0, r4, r5
	adds r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261DDA
	adds r0, r4, r5
	adds r0, #0xcd
	ldrb r0, [r0]
	subs r1, r0, #1
	adds r0, r4, r5
	adds r0, #0xcd
	strb r1, [r0]
	b _02261DF4
_02261DDA:
	adds r2, r4, #0
	adds r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2]
	adds r0, r7, #0
	bl ov70_02261474
	adds r1, r6, #0
	adds r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1]
	bl FUN_02017240
_02261DF4:
	ldr r0, [sp, #0xc]
	adds r5, r5, #1
	adds r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r7, r7, #4
	adds r0, #0x14
	adds r6, r6, #4
	str r0, [sp, #8]
	cmp r5, #3
	bge _02261E0C
	b _02261C7A
_02261E0C:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261C60

	thumb_func_start ov70_02261E10
ov70_02261E10: @ 0x02261E10
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r6, r1, #0
	adds r5, r0, #0
	ldr r1, _0226217C @ =0x00000614
	adds r0, r3, #0
	adds r7, r2, #0
	str r3, [sp, #4]
	bl FUN_02018144
	ldr r2, _0226217C @ =0x00000614
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	movs r0, #0x61
	str r7, [r4]
	lsls r0, r0, #4
	strb r5, [r4, r0]
	adds r0, r0, #1
	strb r6, [r4, r0]
	ldr r2, [sp, #4]
	ldr r3, [sp, #0x48]
	movs r0, #9
	movs r1, #0x80
	bl ov70_02260B44
	str r0, [r4, #4]
	ldr r0, [sp, #0x48]
	ldr r3, [sp, #4]
	str r0, [sp]
	ldr r0, [r4, #4]
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov70_02260CE4
	movs r0, #0
	ldr r5, _02262180 @ =0x0226D944
	str r0, [sp, #0xc]
_02261E5E:
	movs r0, #0
	str r0, [sp]
	ldrh r1, [r5]
	str r0, [sp, #8]
	add r2, sp, #0x1c
	ldr r0, [r4]
	adds r2, #2
	add r3, sp, #0x1c
	bl ov70_0225C8D8
	cmp r0, #1
	beq _02261E78
	b _0226212C
_02261E78:
	movs r0, #0x92
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [sp, #0x10]
	movs r0, #0xda
	lsls r0, r0, #2
	adds r0, r4, r0
	str r0, [sp, #0x14]
	ldr r0, _02262184 @ =0x000004E8
	mov r7, sp
	adds r0, r4, r0
	str r0, [sp, #0x18]
	subs r7, r7, #4
	add r6, sp, #0x1c
_02261E94:
	ldrh r1, [r5, #2]
	ldrh r2, [r6, #2]
	ldrh r3, [r6]
	ldr r0, [r4, #4]
	bl ov70_02260F90
	ldr r1, _02262188 @ =0x00000612
	ldrb r1, [r4, r1]
	lsls r1, r1, #2
	adds r1, r4, r1
	str r0, [r1, #8]
	ldrh r0, [r5, #2]
	cmp r0, #0x10
	bls _02261EB2
	b _02262106
_02261EB2:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02261EBE: @ jump table
	.2byte _02261F0C - _02261EBE - 2 @ case 0
	.2byte _02262106 - _02261EBE - 2 @ case 1
	.2byte _02262106 - _02261EBE - 2 @ case 2
	.2byte _02262106 - _02261EBE - 2 @ case 3
	.2byte _02262106 - _02261EBE - 2 @ case 4
	.2byte _02262106 - _02261EBE - 2 @ case 5
	.2byte _02261EE0 - _02261EBE - 2 @ case 6
	.2byte _02261EE0 - _02261EBE - 2 @ case 7
	.2byte _02261EE0 - _02261EBE - 2 @ case 8
	.2byte _02262106 - _02261EBE - 2 @ case 9
	.2byte _02261F4A - _02261EBE - 2 @ case 10
	.2byte _02261F76 - _02261EBE - 2 @ case 11
	.2byte _02261F76 - _02261EBE - 2 @ case 12
	.2byte _02261F8C - _02261EBE - 2 @ case 13
	.2byte _02261FEA - _02261EBE - 2 @ case 14
	.2byte _02262048 - _02261EBE - 2 @ case 15
	.2byte _02262084 - _02261EBE - 2 @ case 16
_02261EE0:
	ldr r1, _02262188 @ =0x00000612
	movs r2, #0
	ldrb r1, [r4, r1]
	ldr r0, [r4, #4]
	adds r3, r2, #0
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	ldr r0, _02262188 @ =0x00000612
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r2, [r0, #8]
	ldrh r0, [r5, #2]
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x85
	lsls r0, r0, #2
	str r2, [r1, r0]
	b _02262106
_02261F0C:
	ldr r1, _02262188 @ =0x00000612
	movs r2, #0
	ldrb r1, [r4, r1]
	ldr r0, [r4, #4]
	adds r3, r2, #0
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	ldr r1, _02262188 @ =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	movs r2, #1
	movs r3, #0
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	ldr r1, _02262188 @ =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	movs r2, #2
	movs r3, #0
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	b _02262106
_02261F4A:
	ldr r1, _02262188 @ =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	movs r2, #0
	movs r3, #2
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	ldr r0, _02262188 @ =0x00000612
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r2, [r0, #8]
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r1, r4, r0
	movs r0, #0x45
	lsls r0, r0, #2
	str r2, [r1, r0]
	b _02262106
_02261F76:
	ldr r1, _02262188 @ =0x00000612
	ldr r0, [r4, #4]
	ldrb r1, [r4, r1]
	movs r2, #0
	movs r3, #2
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_0226110C
	b _02262106
_02261F8C:
	ldr r0, _0226218C @ =0x00000608
	movs r1, #0xc
	ldrb r0, [r4, r0]
	muls r1, r0, r1
	ldr r0, [sp, #0x10]
	adds r0, r0, r1
	ldr r1, _02262188 @ =0x00000612
	ldrb r1, [r4, r1]
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_022629FC
	ldr r0, _0226218C @ =0x00000608
	ldrb r0, [r4, r0]
	adds r1, r0, #1
	ldr r0, _0226218C @ =0x00000608
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _02261FBA
	bl FUN_02022974
_02261FBA:
	ldr r0, _02262188 @ =0x00000612
	movs r1, #0
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_0226138C
	ldrh r1, [r5]
	ldr r0, _02262190 @ =0x0000FFA4
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _02261FDA
	b _02262106
_02261FDA:
	ldr r0, _02262188 @ =0x00000612
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_02262D48
	b _02262106
_02261FEA:
	ldr r0, _02262194 @ =0x00000609
	movs r1, #0xc
	ldrb r0, [r4, r0]
	muls r1, r0, r1
	ldr r0, [sp, #0x14]
	adds r0, r0, r1
	ldr r1, _02262188 @ =0x00000612
	ldrb r1, [r4, r1]
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_022629FC
	ldr r0, _02262194 @ =0x00000609
	ldrb r0, [r4, r0]
	adds r1, r0, #1
	ldr r0, _02262194 @ =0x00000609
	strb r1, [r4, r0]
	subs r0, r0, #1
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _0226201A
	bl FUN_02022974
_0226201A:
	ldr r0, _02262188 @ =0x00000612
	movs r1, #0
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_0226138C
	ldrh r1, [r5]
	ldr r0, _02262190 @ =0x0000FFA4
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bhi _02262106
	ldr r0, _02262188 @ =0x00000612
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_02262D48
	b _02262106
_02262048:
	ldr r0, _02262188 @ =0x00000612
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r2, [r0, #8]
	ldr r0, _02262198 @ =0x0000060A
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r1, r4, r0
	ldr r0, _0226219C @ =0x00000488
	str r2, [r1, r0]
	ldr r0, _02262198 @ =0x0000060A
	ldrb r0, [r4, r0]
	adds r1, r0, #1
	ldr r0, _02262198 @ =0x0000060A
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _02262072
	bl FUN_02022974
_02262072:
	ldr r0, _02262188 @ =0x00000612
	movs r1, #0
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_0226138C
	b _02262106
_02262084:
	ldr r0, _022621A0 @ =0x0000060B
	movs r1, #0xc
	ldrb r0, [r4, r0]
	muls r1, r0, r1
	ldr r0, [sp, #0x18]
	adds r0, r0, r1
	ldr r1, _02262188 @ =0x00000612
	ldrb r1, [r4, r1]
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r1, [r1, #8]
	bl ov70_022629FC
	ldr r0, _022621A0 @ =0x0000060B
	ldrb r0, [r4, r0]
	adds r1, r0, #1
	ldr r0, _022621A0 @ =0x0000060B
	strb r1, [r4, r0]
	ldrb r0, [r4, r0]
	cmp r0, #0x18
	bls _022620B2
	bl FUN_02022974
_022620B2:
	ldr r0, _02262188 @ =0x00000612
	movs r1, #0
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_0226138C
	ldr r0, _02262188 @ =0x00000612
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	bl ov70_022610E4
	strh r0, [r6, #4]
	lsrs r0, r0, #0x10
	strh r0, [r6, #6]
	ldrh r0, [r6, #4]
	strh r0, [r6, #8]
	ldrh r0, [r6, #6]
	strh r0, [r6, #0xa]
	movs r0, #8
	ldrsh r0, [r6, r0]
	adds r0, #8
	strh r0, [r6, #8]
	movs r0, #0xa
	ldrsh r0, [r6, r0]
	adds r0, #0x14
	strh r0, [r6, #0xa]
	ldr r0, _02262188 @ =0x00000612
	ldrh r1, [r6, #8]
	ldrb r0, [r4, r0]
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #8]
	strh r1, [r7]
	ldrh r1, [r6, #0xa]
	strh r1, [r7, #2]
	ldr r1, [r7]
	bl ov70_022610BC
_02262106:
	ldr r0, _02262188 @ =0x00000612
	add r2, sp, #0x1c
	ldrb r0, [r4, r0]
	adds r2, #2
	add r3, sp, #0x1c
	adds r1, r0, #1
	ldr r0, _02262188 @ =0x00000612
	strb r1, [r4, r0]
	ldr r0, [sp, #8]
	adds r0, r0, #1
	str r0, [sp]
	str r0, [sp, #8]
	ldrh r1, [r5]
	ldr r0, [r4]
	bl ov70_0225C8D8
	cmp r0, #1
	bne _0226212C
	b _02261E94
_0226212C:
	ldr r0, [sp, #0xc]
	adds r5, r5, #4
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x23
	bhs _0226213A
	b _02261E5E
_0226213A:
	movs r0, #0xa
	movs r7, #0
	lsls r0, r0, #0xe
	ldr r6, _022621A4 @ =0x0226D920
	str r7, [sp, #0x28]
	str r0, [sp, #0x30]
	str r7, [sp, #0x2c]
	adds r5, r4, #0
_0226214A:
	ldrh r1, [r6]
	ldrh r2, [r6, #2]
	ldr r0, [r4, #4]
	add r3, sp, #0x28
	bl ov70_02260E20
	movs r1, #0x82
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov70_02260F38
	adds r7, r7, #1
	adds r6, r6, #4
	adds r5, r5, #4
	cmp r7, #9
	blt _0226214A
	ldr r0, _022621A8 @ =0x00000613
	movs r1, #9
	strb r1, [r4, r0]
	adds r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226217C: .4byte 0x00000614
_02262180: .4byte 0x0226D944
_02262184: .4byte 0x000004E8
_02262188: .4byte 0x00000612
_0226218C: .4byte 0x00000608
_02262190: .4byte 0x0000FFA4
_02262194: .4byte 0x00000609
_02262198: .4byte 0x0000060A
_0226219C: .4byte 0x00000488
_022621A0: .4byte 0x0000060B
_022621A4: .4byte 0x0226D920
_022621A8: .4byte 0x00000613
	thumb_func_end ov70_02261E10

	thumb_func_start ov70_022621AC
ov70_022621AC: @ 0x022621AC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02262208 @ =0x00000613
	movs r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _022621D2
	ldr r7, _02262208 @ =0x00000613
	adds r4, r5, #0
_022621BE:
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov70_02260E8C
	ldrb r0, [r5, r7]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _022621BE
_022621D2:
	ldr r0, _0226220C @ =0x00000612
	movs r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _022621F2
	ldr r7, _0226220C @ =0x00000612
	adds r4, r5, #0
_022621E0:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	bl ov70_02261058
	ldrb r0, [r5, r7]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _022621E0
_022621F2:
	ldr r0, [r5, #4]
	bl ov70_02260D80
	ldr r0, [r5, #4]
	bl ov70_02260BB8
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262208: .4byte 0x00000613
_0226220C: .4byte 0x00000612
	thumb_func_end ov70_022621AC

	thumb_func_start ov70_02262210
ov70_02262210: @ 0x02262210
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02262288 @ =0x00000608
	movs r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02262238
	movs r0, #0x92
	lsls r0, r0, #2
	ldr r7, _02262288 @ =0x00000608
	adds r4, r5, r0
_02262226:
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl ov70_02262A04
	ldrb r0, [r5, r7]
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, r0
	blt _02262226
_02262238:
	ldr r0, _0226228C @ =0x00000609
	movs r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0226225C
	movs r0, #0xda
	lsls r0, r0, #2
	ldr r7, _0226228C @ =0x00000609
	adds r4, r5, r0
_0226224A:
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl ov70_02262BEC
	ldrb r0, [r5, r7]
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, r0
	blt _0226224A
_0226225C:
	ldr r0, _02262290 @ =0x0000060B
	movs r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0226227E
	ldr r0, _02262294 @ =0x000004E8
	ldr r7, _02262290 @ =0x0000060B
	adds r4, r5, r0
_0226226C:
	ldr r1, [r5, #4]
	adds r0, r4, #0
	bl ov70_02262C94
	ldrb r0, [r5, r7]
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, r0
	blt _0226226C
_0226227E:
	ldr r0, [r5, #4]
	bl ov70_02260BE8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262288: .4byte 0x00000608
_0226228C: .4byte 0x00000609
_02262290: .4byte 0x0000060B
_02262294: .4byte 0x000004E8
	thumb_func_end ov70_02262210

	thumb_func_start ov70_02262298
ov70_02262298: @ 0x02262298
	ldr r3, _022622A0 @ =ov70_02260C50
	ldr r0, [r0, #4]
	bx r3
	nop
_022622A0: .4byte ov70_02260C50
	thumb_func_end ov70_02262298

	thumb_func_start ov70_022622A4
ov70_022622A4: @ 0x022622A4
	ldr r3, _022622AC @ =ov70_02260CE0
	ldr r0, [r0, #4]
	bx r3
	nop
_022622AC: .4byte ov70_02260CE0
	thumb_func_end ov70_022622A4

	thumb_func_start ov70_022622B0
ov70_022622B0: @ 0x022622B0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _022622E8 @ =0x00000613
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	adds r6, r2, #0
	cmp r0, r4
	bhi _022622C6
	bl FUN_02022974
_022622C6:
	movs r0, #0xa
	lsls r0, r0, #0xe
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x82
	str r6, [sp]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	bl ov70_02260EA0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_022622E8: .4byte 0x00000613
	thumb_func_end ov70_022622B0

	thumb_func_start ov70_022622EC
ov70_022622EC: @ 0x022622EC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _02262314 @ =0x00000613
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	adds r6, r2, #0
	cmp r0, r4
	bhi _02262300
	bl FUN_02022974
_02262300:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r6, #0
	bl ov70_02260EE4
	pop {r4, r5, r6, pc}
	nop
_02262314: .4byte 0x00000613
	thumb_func_end ov70_022622EC

	thumb_func_start ov70_02262318
ov70_02262318: @ 0x02262318
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02262368 @ =0x00000613
	adds r6, r1, #0
	ldrb r0, [r5, r0]
	adds r7, r2, #0
	adds r4, r3, #0
	cmp r0, r6
	bhi _0226232E
	bl FUN_02022974
_0226232E:
	cmp r7, #3
	blo _02262336
	bl FUN_02022974
_02262336:
	lsls r0, r6, #2
	adds r1, r5, r0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r4, #0
	bl ov70_02260F28
	ldr r1, _0226236C @ =0x0226D914
	lsls r0, r7, #2
	ldrsh r1, [r1, r0]
	ldr r2, [r4]
	lsls r1, r1, #0xc
	adds r1, r2, r1
	str r1, [r4]
	ldr r1, _02262370 @ =0x0226D916
	ldr r2, [r4, #8]
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0xc
	adds r0, r2, r0
	str r0, [r4, #8]
	movs r0, #0xa
	lsls r0, r0, #0xe
	str r0, [r4, #4]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02262368: .4byte 0x00000613
_0226236C: .4byte 0x0226D914
_02262370: .4byte 0x0226D916
	thumb_func_end ov70_02262318

	thumb_func_start ov70_02262374
ov70_02262374: @ 0x02262374
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02262398 @ =0x00000613
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _02262386
	bl FUN_02022974
_02262386:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl ov70_02260F44
	pop {r3, r4, r5, pc}
	nop
_02262398: .4byte 0x00000613
	thumb_func_end ov70_02262374

	thumb_func_start ov70_0226239C
ov70_0226239C: @ 0x0226239C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _022623C0 @ =0x00000613
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _022623AE
	bl FUN_02022974
_022623AE:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl ov70_02260F5C
	pop {r3, r4, r5, pc}
	nop
_022623C0: .4byte 0x00000613
	thumb_func_end ov70_0226239C

	thumb_func_start ov70_022623C4
ov70_022623C4: @ 0x022623C4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _022623EC @ =0x00000613
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	adds r6, r2, #0
	cmp r0, r4
	bhi _022623D8
	bl FUN_02022974
_022623D8:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r6, #0
	bl ov70_02260F38
	pop {r4, r5, r6, pc}
	nop
_022623EC: .4byte 0x00000613
	thumb_func_end ov70_022623C4

	thumb_func_start ov70_022623F0
ov70_022623F0: @ 0x022623F0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _02262418 @ =0x00000613
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	adds r6, r2, #0
	cmp r0, r4
	bhi _02262404
	bl FUN_02022974
_02262404:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r6, #0
	bl ov70_02260F74
	pop {r4, r5, r6, pc}
	nop
_02262418: .4byte 0x00000613
	thumb_func_end ov70_022623F0

	thumb_func_start ov70_0226241C
ov70_0226241C: @ 0x0226241C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02262440 @ =0x00000613
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _0226242E
	bl FUN_02022974
_0226242E:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl ov70_02260F80
	pop {r3, r4, r5, pc}
	nop
_02262440: .4byte 0x00000613
	thumb_func_end ov70_0226241C

	thumb_func_start ov70_02262444
ov70_02262444: @ 0x02262444
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _02262468 @ =0x00000613
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, r4
	bhi _02262456
	bl FUN_02022974
_02262456:
	lsls r0, r4, #2
	adds r1, r5, r0
	movs r0, #0x82
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl ov70_02260F88
	pop {r3, r4, r5, pc}
	nop
_02262468: .4byte 0x00000613
	thumb_func_end ov70_02262444

	thumb_func_start ov70_0226246C
ov70_0226246C: @ 0x0226246C
	ldr r3, _02262474 @ =ov70_02260DC8
	ldr r0, [r0, #4]
	bx r3
	nop
_02262474: .4byte ov70_02260DC8
	thumb_func_end ov70_0226246C

	thumb_func_start ov70_02262478
ov70_02262478: @ 0x02262478
	ldr r3, _02262480 @ =ov70_02260DF4
	ldr r0, [r0, #4]
	bx r3
	nop
_02262480: .4byte ov70_02260DF4
	thumb_func_end ov70_02262478

	thumb_func_start ov70_02262484
ov70_02262484: @ 0x02262484
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _02262514 @ =0x00000612
	str r1, [sp]
	ldrb r0, [r5, r0]
	movs r6, #0
	cmp r0, #0
	ble _0226250E
	ldr r1, [sp]
	subs r0, r2, #1
	subs r1, r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x18
	adds r4, r5, #0
	str r1, [sp, #4]
	lsrs r7, r0, #0x18
_022624A8:
	ldr r0, [r4, #8]
	ldr r1, [sp, #4]
	adds r2, r7, #0
	bl ov70_022628C8
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	ldr r1, [sp]
	adds r2, r7, #0
	bl ov70_022628C8
	ldr r1, [sp, #8]
	cmp r1, #1
	beq _022624C8
	cmp r0, #1
	bne _02262502
_022624C8:
	ldr r0, [r4, #8]
	bl ov70_022610B8
	cmp r0, #4
	bhi _02262502
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022624DE: @ jump table
	.2byte _02262502 - _022624DE - 2 @ case 0
	.2byte _022624E8 - _022624DE - 2 @ case 1
	.2byte _022624E8 - _022624DE - 2 @ case 2
	.2byte _022624E8 - _022624DE - 2 @ case 3
	.2byte _022624E8 - _022624DE - 2 @ case 4
_022624E8:
	ldr r0, _02262518 @ =0x00000611
	ldrb r0, [r5, r0]
	cmp r0, #4
	bne _022624FA
	ldr r1, [r4, #8]
	adds r0, r5, #0
	bl ov70_022629AC
	b _02262502
_022624FA:
	ldr r1, [r4, #8]
	adds r0, r5, #0
	bl ov70_02262968
_02262502:
	ldr r0, _02262514 @ =0x00000612
	adds r6, r6, #1
	ldrb r0, [r5, r0]
	adds r4, r4, #4
	cmp r6, r0
	blt _022624A8
_0226250E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02262514: .4byte 0x00000612
_02262518: .4byte 0x00000611
	thumb_func_end ov70_02262484

	thumb_func_start ov70_0226251C
ov70_0226251C: @ 0x0226251C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _022625D4 @ =0x00000612
	adds r7, r1, #0
	ldrb r0, [r5, r0]
	movs r6, #0
	cmp r0, #0
	ble _022625D2
	adds r4, r5, #0
_0226252E:
	ldr r0, [r4, #8]
	bl ov70_022610B8
	cmp r0, #4
	bhi _0226254E
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02262544: @ jump table
	.2byte _022625C6 - _02262544 - 2 @ case 0
	.2byte _02262554 - _02262544 - 2 @ case 1
	.2byte _02262554 - _02262544 - 2 @ case 2
	.2byte _02262554 - _02262544 - 2 @ case 3
	.2byte _02262554 - _02262544 - 2 @ case 4
_0226254E:
	cmp r0, #0xf
	beq _02262564
	b _022625C6
_02262554:
	cmp r7, #1
	bne _022625C6
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	movs r2, #1
	bl ov70_02261398
	b _022625C6
_02262564:
	cmp r7, #1
	bne _022625A0
	movs r1, #2
	ldr r0, [r4, #8]
	lsls r1, r1, #0xa
	bl ov70_022613C0
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	movs r2, #0
	movs r3, #6
	bl ov70_0226110C
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	movs r2, #1
	movs r3, #6
	bl ov70_0226110C
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	movs r2, #2
	movs r3, #6
	bl ov70_0226110C
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov70_0226138C
	b _022625C6
_022625A0:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	movs r2, #0
	bl ov70_02261220
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	movs r2, #1
	bl ov70_02261220
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	movs r2, #2
	bl ov70_02261220
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov70_0226138C
_022625C6:
	ldr r0, _022625D4 @ =0x00000612
	adds r6, r6, #1
	ldrb r0, [r5, r0]
	adds r4, r4, #4
	cmp r6, r0
	blt _0226252E
_022625D2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022625D4: .4byte 0x00000612
	thumb_func_end ov70_0226251C

	thumb_func_start ov70_022625D8
ov70_022625D8: @ 0x022625D8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _02262604 @ =0x0000060B
	adds r7, r1, #0
	ldrb r0, [r6, r0]
	movs r4, #0
	cmp r0, #0
	ble _02262600
	ldr r0, _02262608 @ =0x000004E8
	adds r5, r6, r0
_022625EC:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov70_02262BD0
	ldr r0, _02262604 @ =0x0000060B
	adds r4, r4, #1
	ldrb r0, [r6, r0]
	adds r5, #0xc
	cmp r4, r0
	blt _022625EC
_02262600:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262604: .4byte 0x0000060B
_02262608: .4byte 0x000004E8
	thumb_func_end ov70_022625D8

	thumb_func_start ov70_0226260C
ov70_0226260C: @ 0x0226260C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02262654 @ =0x00000612
	movs r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02262652
	ldr r7, _02262654 @ =0x00000612
	adds r4, r5, #0
_0226261E:
	ldr r0, [r4, #8]
	bl ov70_022610B8
	cmp r0, #4
	bhi _02262648
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02262634: @ jump table
	.2byte _02262648 - _02262634 - 2 @ case 0
	.2byte _0226263E - _02262634 - 2 @ case 1
	.2byte _0226263E - _02262634 - 2 @ case 2
	.2byte _0226263E - _02262634 - 2 @ case 3
	.2byte _0226263E - _02262634 - 2 @ case 4
_0226263E:
	ldr r0, [r5, #4]
	ldr r1, [r4, #8]
	movs r2, #1
	bl ov70_02261398
_02262648:
	ldrb r0, [r5, r7]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _0226261E
_02262652:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02262654: .4byte 0x00000612
	thumb_func_end ov70_0226260C

	thumb_func_start ov70_02262658
ov70_02262658: @ 0x02262658
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, _02262710 @ =0x00000612
	adds r7, r1, #0
	ldrb r0, [r4, r0]
	movs r6, #0
	cmp r0, #0
	ble _0226270E
	adds r5, r4, #0
_0226266A:
	ldr r0, [r5, #8]
	bl ov70_022610B8
	cmp r0, #0xb
	beq _02262678
	cmp r0, #0xc
	bne _02262702
_02262678:
	cmp r7, #3
	bhi _02262702
	adds r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02262688: @ jump table
	.2byte _02262690 - _02262688 - 2 @ case 0
	.2byte _022626A6 - _02262688 - 2 @ case 1
	.2byte _022626C0 - _02262688 - 2 @ case 2
	.2byte _022626E4 - _02262688 - 2 @ case 3
_02262690:
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	movs r2, #0
	movs r3, #2
	bl ov70_0226110C
	movs r0, #0x91
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _02262702
_022626A6:
	ldr r0, _02262714 @ =ov70_02262908
	movs r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	movs r3, #1
	bl ov70_0226111C
	movs r0, #0x91
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _02262702
_022626C0:
	ldr r0, _02262718 @ =ov70_02262938
	movs r2, #0
	str r0, [sp]
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	movs r3, #4
	bl ov70_0226111C
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	movs r2, #1
	bl ov70_02261220
	movs r0, #0x91
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	b _02262702
_022626E4:
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	movs r2, #1
	movs r3, #0
	bl ov70_0226110C
	ldr r0, [r4, #4]
	ldr r1, [r5, #8]
	movs r2, #0
	bl ov70_02261220
	movs r0, #0x91
	movs r1, #1
	lsls r0, r0, #2
	str r1, [r4, r0]
_02262702:
	ldr r0, _02262710 @ =0x00000612
	adds r6, r6, #1
	ldrb r0, [r4, r0]
	adds r5, r5, #4
	cmp r6, r0
	blt _0226266A
_0226270E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02262710: .4byte 0x00000612
_02262714: .4byte ov70_02262908
_02262718: .4byte ov70_02262938
	thumb_func_end ov70_02262658

	thumb_func_start ov70_0226271C
ov70_0226271C: @ 0x0226271C
	movs r1, #0x91
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov70_0226271C

	thumb_func_start ov70_02262724
ov70_02262724: @ 0x02262724
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02262750 @ =0x00000608
	adds r6, r1, #0
	ldrb r0, [r5, r0]
	adds r7, r2, #0
	movs r4, #0
	cmp r0, #0
	ble _0226274C
_02262736:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov70_02262754
	ldr r0, _02262750 @ =0x00000608
	adds r4, r4, #1
	ldrb r0, [r5, r0]
	cmp r4, r0
	blt _02262736
_0226274C:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262750: .4byte 0x00000608
	thumb_func_end ov70_02262724

	thumb_func_start ov70_02262754
ov70_02262754: @ 0x02262754
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _02262788 @ =0x00000608
	ldrb r0, [r4, r0]
	cmp r1, r0
	bhs _02262784
	movs r0, #0x92
	lsls r0, r0, #2
	adds r5, r4, r0
	movs r0, #0xc
	muls r0, r1, r0
	cmp r2, #0
	beq _0226277A
	ldr r1, [r4, #4]
	adds r0, r5, r0
	adds r2, r3, #0
	bl ov70_02262A50
	b _02262780
_0226277A:
	adds r0, r5, r0
	bl ov70_02262A80
_02262780:
	movs r0, #1
	pop {r3, r4, r5, pc}
_02262784:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02262788: .4byte 0x00000608
	thumb_func_end ov70_02262754

	thumb_func_start ov70_0226278C
ov70_0226278C: @ 0x0226278C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, _022627B8 @ =0x00000609
	adds r7, r1, #0
	ldrb r0, [r6, r0]
	movs r4, #0
	cmp r0, #0
	ble _022627B6
	movs r0, #0xda
	lsls r0, r0, #2
	adds r5, r6, r0
_022627A2:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov70_02262BD0
	ldr r0, _022627B8 @ =0x00000609
	adds r4, r4, #1
	ldrb r0, [r6, r0]
	adds r5, #0xc
	cmp r4, r0
	blt _022627A2
_022627B6:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022627B8: .4byte 0x00000609
	thumb_func_end ov70_0226278C

	thumb_func_start ov70_022627BC
ov70_022627BC: @ 0x022627BC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r1, r5, r0
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r6, [r1, r0]
	adds r0, #0xc
	ldr r7, [r1, r0]
	ldr r0, [sp, #0x18]
	adds r4, r2, #0
	cmp r0, #1
	beq _022627DA
	cmp r3, #1
	bne _0226288A
_022627DA:
	adds r0, r6, #0
	movs r1, #1
	bl ov70_02261348
	cmp r0, #0
	bne _022627F2
	ldr r0, [r5, #4]
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0
	bl ov70_0226110C
_022627F2:
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02262830
	adds r0, r4, #4
	lsls r1, r0, #2
	beq _02262810
	lsls r0, r0, #0xe
	blx FUN_020E17FC
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226281E
_02262810:
	lsls r0, r0, #0xe
	blx FUN_020E17FC
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226281E:
	blx FUN_020E1740
	adds r3, r0, #0
	ldr r0, [r5, #4]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_022612F0
	pop {r3, r4, r5, r6, r7, pc}
_02262830:
	ldr r0, _022628C4 @ =0x0000060C
	movs r1, #0x1c
	ldr r0, [r5, r0]
	adds r0, r0, #1
	blx FUN_020E2178
	ldr r0, _022628C4 @ =0x0000060C
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0xe
	bhs _0226287C
	lsls r0, r4, #2
	beq _0226285C
	lsls r0, r4, #0xe
	blx FUN_020E17FC
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226286A
_0226285C:
	lsls r0, r4, #0xe
	blx FUN_020E17FC
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226286A:
	blx FUN_020E1740
	adds r3, r0, #0
	ldr r0, [r5, #4]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_022612F0
	pop {r3, r4, r5, r6, r7, pc}
_0226287C:
	movs r2, #0
	ldr r0, [r5, #4]
	adds r1, r7, #0
	adds r3, r2, #0
	bl ov70_022612F0
	pop {r3, r4, r5, r6, r7, pc}
_0226288A:
	ldr r0, [sp, #0x1c]
	cmp r0, #0
	ldr r0, [r5, #4]
	beq _022628AC
	adds r1, r6, #0
	bl ov70_0226128C
	ldr r0, [r5, #4]
	adds r1, r7, #0
	bl ov70_0226128C
	ldr r0, [r5, #4]
	adds r1, r6, #0
	movs r2, #1
	bl ov70_02261398
	pop {r3, r4, r5, r6, r7, pc}
_022628AC:
	adds r1, r6, #0
	movs r2, #1
	bl ov70_02261220
	movs r2, #0
	ldr r0, [r5, #4]
	adds r1, r7, #0
	adds r3, r2, #0
	bl ov70_022612F0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022628C4: .4byte 0x0000060C
	thumb_func_end ov70_022627BC

	thumb_func_start ov70_022628C8
ov70_022628C8: @ 0x022628C8
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	lsls r1, r2, #0x14
	asrs r4, r1, #0x10
	bl ov70_022610E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #4
	ldrsh r2, [r1, r0]
	lsls r0, r5, #0x14
	asrs r0, r0, #0x10
	cmp r2, r0
	bne _02262900
	movs r0, #6
	ldrsh r0, [r1, r0]
	cmp r0, r4
	bne _02262900
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_02262900:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_022628C8

	thumb_func_start ov70_02262908
ov70_02262908: @ 0x02262908
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	bl ov70_022610B8
	adds r4, r0, #0
	cmp r4, #0xb
	beq _02262922
	cmp r4, #0xc
	beq _02262922
	bl FUN_02022974
_02262922:
	subs r4, #0xb
	cmp r4, #1
	bhi _02262934
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	movs r3, #0
	bl ov70_0226110C
_02262934:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02262908

	thumb_func_start ov70_02262938
ov70_02262938: @ 0x02262938
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	bl ov70_022610B8
	adds r4, r0, #0
	cmp r4, #0xb
	beq _02262952
	cmp r4, #0xc
	beq _02262952
	bl FUN_02022974
_02262952:
	subs r4, #0xb
	cmp r4, #1
	bhi _02262964
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0
	movs r3, #2
	bl ov70_0226110C
_02262964:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02262938

	thumb_func_start ov70_02262968
ov70_02262968: @ 0x02262968
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r0, [r6, #4]
	adds r2, r4, #0
	adds r5, r1, #0
	bl ov70_022612B4
	cmp r0, #0
	bne _02262980
	movs r4, #1
	b _02262992
_02262980:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02261368
	movs r1, #2
	lsls r1, r1, #0xc
	cmp r0, r1
	ble _02262992
	movs r4, #1
_02262992:
	cmp r4, #1
	bne _022629A4
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov70_022629DC
	ldr r0, _022629A8 @ =0x000005A5
	bl FUN_02005748
_022629A4:
	pop {r4, r5, r6, pc}
	nop
_022629A8: .4byte 0x000005A5
	thumb_func_end ov70_02262968

	thumb_func_start ov70_022629AC
ov70_022629AC: @ 0x022629AC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r0, [r5, #4]
	adds r2, r4, #0
	adds r6, r1, #0
	bl ov70_022612B4
	cmp r0, #0
	bne _022629C2
	movs r4, #1
_022629C2:
	cmp r4, #1
	bne _022629D4
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov70_022629DC
	ldr r0, _022629D8 @ =0x000005A9
	bl FUN_02005748
_022629D4:
	pop {r4, r5, r6, pc}
	nop
_022629D8: .4byte 0x000005A9
	thumb_func_end ov70_022629AC

	thumb_func_start ov70_022629DC
ov70_022629DC: @ 0x022629DC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r4, #0
	movs r7, #1
_022629E6:
	ldr r0, [r5, #4]
	adds r1, r6, #0
	adds r2, r4, #0
	adds r3, r7, #0
	bl ov70_0226110C
	adds r4, r4, #1
	cmp r4, #3
	blt _022629E6
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_022629DC

	thumb_func_start ov70_022629FC
ov70_022629FC: @ 0x022629FC
	str r1, [r0]
	movs r1, #0
	strh r1, [r0, #4]
	bx lr
	thumb_func_end ov70_022629FC

	thumb_func_start ov70_02262A04
ov70_02262A04: @ 0x02262A04
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #4]
	adds r5, r1, #0
	cmp r2, #4
	bhi _02262A4E
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_02262A1C: @ jump table
	.2byte _02262A4E - _02262A1C - 2 @ case 0
	.2byte _02262A26 - _02262A1C - 2 @ case 1
	.2byte _02262A4E - _02262A1C - 2 @ case 2
	.2byte _02262A30 - _02262A1C - 2 @ case 3
	.2byte _02262A3A - _02262A1C - 2 @ case 4
_02262A26:
	bl ov70_02262AA4
	movs r0, #2
	strh r0, [r4, #4]
	pop {r3, r4, r5, pc}
_02262A30:
	bl ov70_02262B24
	movs r0, #4
	strh r0, [r4, #4]
	pop {r3, r4, r5, pc}
_02262A3A:
	bl ov70_02262B2C
	cmp r0, #1
	bne _02262A4E
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02262AE0
	movs r0, #0
	strh r0, [r4, #4]
_02262A4E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02262A04

	thumb_func_start ov70_02262A50
ov70_02262A50: @ 0x02262A50
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	ldrh r2, [r5, #4]
	ldr r3, _02262A7C @ =0x0000FFFF
	adds r6, r2, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	cmp r6, #1
	bls _02262A7A
	subs r3, r3, #2
	adds r2, r2, r3
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #1
	bhi _02262A74
	bl ov70_02262AE0
_02262A74:
	movs r0, #1
	strh r0, [r5, #4]
	str r4, [r5, #8]
_02262A7A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02262A7C: .4byte 0x0000FFFF
	thumb_func_end ov70_02262A50

	thumb_func_start ov70_02262A80
ov70_02262A80: @ 0x02262A80
	ldrh r2, [r0, #4]
	ldr r1, _02262AA0 @ =0x0000FFFD
	adds r1, r2, r1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #1
	bls _02262A9C
	cmp r2, #1
	bhi _02262A98
	movs r1, #0
	strh r1, [r0, #4]
	bx lr
_02262A98:
	movs r1, #3
	strh r1, [r0, #4]
_02262A9C:
	bx lr
	nop
_02262AA0: .4byte 0x0000FFFD
	thumb_func_end ov70_02262A80

	thumb_func_start ov70_02262AA4
ov70_02262AA4: @ 0x02262AA4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov70_022613C0
	movs r2, #0
	ldr r1, [r5]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov70_0226110C
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl ov70_0226110C
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl ov70_0226110C
	ldr r0, [r5]
	movs r1, #1
	bl ov70_0226138C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02262AA4

	thumb_func_start ov70_02262AE0
ov70_02262AE0: @ 0x02262AE0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_02261220
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #1
	bl ov70_02261220
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #2
	bl ov70_02261220
	ldr r0, [r5]
	movs r1, #0
	bl ov70_0226138C
	ldr r0, [r5]
	bl ov70_022613E0
	movs r1, #1
	lsls r1, r1, #0xc
	ldr r0, [r5]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov70_022613E8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_02262AE0

	thumb_func_start ov70_02262B24
ov70_02262B24: @ 0x02262B24
	movs r1, #0
	strh r1, [r0, #6]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02262B24

	thumb_func_start ov70_02262B2C
ov70_02262B2C: @ 0x02262B2C
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	movs r0, #6
	ldrsh r1, [r4, r0]
	cmp r1, #0xa
	bge _02262BC8
	adds r1, r1, #1
	strh r1, [r4, #6]
	ldrsh r0, [r4, r0]
	ldr r2, [r4, #8]
	lsls r0, r0, #0xc
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
	movs r1, #0xa
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	adds r2, r0, #0
	ldr r1, [r4, #8]
	ldr r0, [r4]
	adds r1, r2, r1
	bl ov70_022613C0
	movs r0, #6
	ldrsh r1, [r4, r0]
	movs r0, #0x1f
	muls r0, r1, r0
	movs r1, #0xa
	blx FUN_020E1F6C
	movs r2, #0x1f
	subs r1, r2, r0
	lsls r1, r1, #0x18
	ldr r0, [r4]
	lsrs r1, r1, #0x18
	bl ov70_022613C8
	movs r0, #6
	ldrsh r0, [r4, r0]
	ldr r2, _02262BCC @ =0x000002E1
	movs r3, #0
	lsls r0, r0, #0xc
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	movs r1, #0xa
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	movs r3, #1
	adds r5, r0, #0
	lsls r3, r3, #0xc
	adds r1, r5, r3
	ldr r0, [r4]
	adds r2, r1, #0
	adds r3, r5, r3
	bl ov70_022613E8
	movs r0, #0
	pop {r3, r4, r5, pc}
_02262BC8:
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02262BCC: .4byte 0x000002E1
	thumb_func_end ov70_02262B2C

	thumb_func_start ov70_02262BD0
ov70_02262BD0: @ 0x02262BD0
	ldrh r3, [r0, #4]
	ldr r2, _02262BE8 @ =0x0000FFFF
	adds r2, r3, r2
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r2, #1
	bls _02262BE4
	movs r2, #1
	strh r2, [r0, #4]
	str r1, [r0, #8]
_02262BE4:
	bx lr
	nop
_02262BE8: .4byte 0x0000FFFF
	thumb_func_end ov70_02262BD0

	thumb_func_start ov70_02262BEC
ov70_02262BEC: @ 0x02262BEC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #4]
	cmp r2, #4
	bhi _02262C5E
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_02262C02: @ jump table
	.2byte _02262C62 - _02262C02 - 2 @ case 0
	.2byte _02262C0C - _02262C02 - 2 @ case 1
	.2byte _02262C16 - _02262C02 - 2 @ case 2
	.2byte _02262C2A - _02262C02 - 2 @ case 3
	.2byte _02262C34 - _02262C02 - 2 @ case 4
_02262C0C:
	bl ov70_02262C64
	movs r0, #2
	strh r0, [r4, #4]
	pop {r4, pc}
_02262C16:
	adds r0, r1, #0
	ldr r1, [r4]
	movs r2, #0
	bl ov70_022612B4
	cmp r0, #0
	bne _02262C62
	movs r0, #3
	strh r0, [r4, #4]
	pop {r4, pc}
_02262C2A:
	bl ov70_02262B24
	movs r0, #4
	strh r0, [r4, #4]
	pop {r4, pc}
_02262C34:
	bl ov70_02262B2C
	cmp r0, #1
	bne _02262C62
	ldr r0, [r4]
	movs r1, #0
	bl ov70_0226138C
	ldr r0, [r4]
	bl ov70_022613E0
	movs r1, #1
	lsls r1, r1, #0xc
	ldr r0, [r4]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov70_022613E8
	movs r0, #0
	strh r0, [r4, #4]
	pop {r4, pc}
_02262C5E:
	bl FUN_02022974
_02262C62:
	pop {r4, pc}
	thumb_func_end ov70_02262BEC

	thumb_func_start ov70_02262C64
ov70_02262C64: @ 0x02262C64
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov70_022613C0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl ov70_0226110C
	movs r2, #1
	ldr r1, [r5]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov70_0226110C
	ldr r0, [r5]
	movs r1, #1
	bl ov70_0226138C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02262C64

	thumb_func_start ov70_02262C94
ov70_02262C94: @ 0x02262C94
	push {r4, lr}
	adds r4, r0, #0
	ldrh r2, [r4, #4]
	cmp r2, #4
	bhi _02262D06
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_02262CAA: @ jump table
	.2byte _02262D0A - _02262CAA - 2 @ case 0
	.2byte _02262CB4 - _02262CAA - 2 @ case 1
	.2byte _02262CBE - _02262CAA - 2 @ case 2
	.2byte _02262CD2 - _02262CAA - 2 @ case 3
	.2byte _02262CDC - _02262CAA - 2 @ case 4
_02262CB4:
	bl ov70_02262D0C
	movs r0, #2
	strh r0, [r4, #4]
	pop {r4, pc}
_02262CBE:
	adds r0, r1, #0
	ldr r1, [r4]
	movs r2, #0
	bl ov70_022612B4
	cmp r0, #0
	bne _02262D0A
	movs r0, #3
	strh r0, [r4, #4]
	pop {r4, pc}
_02262CD2:
	bl ov70_02262B24
	movs r0, #4
	strh r0, [r4, #4]
	pop {r4, pc}
_02262CDC:
	bl ov70_02262B2C
	cmp r0, #1
	bne _02262D0A
	ldr r0, [r4]
	movs r1, #0
	bl ov70_0226138C
	ldr r0, [r4]
	bl ov70_022613E0
	movs r1, #1
	lsls r1, r1, #0xc
	ldr r0, [r4]
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov70_022613E8
	movs r0, #0
	strh r0, [r4, #4]
	pop {r4, pc}
_02262D06:
	bl FUN_02022974
_02262D0A:
	pop {r4, pc}
	thumb_func_end ov70_02262C94

	thumb_func_start ov70_02262D0C
ov70_02262D0C: @ 0x02262D0C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov70_022613C0
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #1
	bl ov70_0226110C
	movs r2, #1
	ldr r1, [r5]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov70_0226110C
	ldr r1, [r5]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #1
	bl ov70_0226110C
	ldr r0, [r5]
	movs r1, #1
	bl ov70_0226138C
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02262D0C

	thumb_func_start ov70_02262D48
ov70_02262D48: @ 0x02262D48
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	cmp r4, #0x5c
	beq _02262D5C
	cmp r4, #0x5d
	beq _02262D5C
	bl FUN_02022974
_02262D5C:
	adds r0, r5, #0
	bl ov70_022610E4
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	subs r4, #0x5c
	lsls r2, r4, #2
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #4
	ldrsh r3, [r1, r0]
	ldr r0, _02262DA4 @ =0x0226D90C
	ldr r0, [r0, r2]
	adds r0, r3, r0
	strh r0, [r1, #4]
	movs r0, #6
	ldrsh r0, [r1, r0]
	mov r3, sp
	subs r3, r3, #4
	subs r0, #0xa
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov70_022610BC
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02262DA4: .4byte 0x0226D90C
	thumb_func_end ov70_02262D48

	thumb_func_start ov70_02262DA8
ov70_02262DA8: @ 0x02262DA8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	movs r1, #0xbf
	adds r4, r0, #0
	adds r0, r6, #0
	lsls r1, r1, #2
	bl FUN_02018144
	movs r2, #0xbf
	movs r1, #0
	lsls r2, r2, #2
	adds r7, r0, #0
	blx FUN_020D5124
	str r6, [r7]
	adds r5, r7, #0
	str r4, [r7, #4]
	movs r4, #0
	adds r5, #8
_02262DCE:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov70_02262F64
	adds r4, r4, #1
	adds r5, #0x24
	cmp r4, #0x14
	blt _02262DCE
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r7, r0
	movs r1, #0
	adds r2, r6, #0
	bl ov70_02262F64
	adds r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02262DA8

	thumb_func_start ov70_02262DF4
ov70_02262DF4: @ 0x02262DF4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	movs r4, #0
	adds r5, #8
_02262DFE:
	adds r0, r5, #0
	bl ov70_02262F70
	adds r4, r4, #1
	adds r5, #0x24
	cmp r4, #0x14
	blt _02262DFE
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r6, r0
	bl ov70_02262F70
	adds r0, r6, #0
	bl FUN_020181C4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02262DF4

	thumb_func_start ov70_02262E20
ov70_02262E20: @ 0x02262E20
	ldr r3, _02262E28 @ =ov70_02262F14
	movs r1, #0
	bx r3
	nop
_02262E28: .4byte ov70_02262F14
	thumb_func_end ov70_02262E20

	thumb_func_start ov70_02262E2C
ov70_02262E2C: @ 0x02262E2C
	ldr r3, _02262E34 @ =ov70_02262F14
	movs r1, #1
	bx r3
	nop
_02262E34: .4byte ov70_02262F14
	thumb_func_end ov70_02262E2C

	thumb_func_start ov70_02262E38
ov70_02262E38: @ 0x02262E38
	ldr r0, [r0, #0xc]
	bx lr
	thumb_func_end ov70_02262E38

	thumb_func_start ov70_02262E3C
ov70_02262E3C: @ 0x02262E3C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	adds r4, r1, #0
	cmp r0, #0
	beq _02262E4C
	bl FUN_02022974
_02262E4C:
	ldrh r0, [r5]
	adds r1, r4, #0
	bl FUN_02018144
	movs r1, #0
	adds r2, r4, #0
	str r0, [r5, #8]
	blx FUN_020D5124
	ldr r0, [r5, #8]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_02262E3C

	thumb_func_start ov70_02262E64
ov70_02262E64: @ 0x02262E64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _02262E72
	bl FUN_02022974
_02262E72:
	ldr r0, [r4, #8]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #8]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02262E64

	thumb_func_start ov70_02262E80
ov70_02262E80: @ 0x02262E80
	ldr r0, [r0, #8]
	bx lr
	thumb_func_end ov70_02262E80

	thumb_func_start ov70_02262E84
ov70_02262E84: @ 0x02262E84
	ldr r0, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E84

	thumb_func_start ov70_02262E88
ov70_02262E88: @ 0x02262E88
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E88

	thumb_func_start ov70_02262E8C
ov70_02262E8C: @ 0x02262E8C
	ldr r1, [r0, #0x10]
	adds r1, r1, #1
	str r1, [r0, #0x10]
	bx lr
	thumb_func_end ov70_02262E8C

	thumb_func_start ov70_02262E94
ov70_02262E94: @ 0x02262E94
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r5, #0
	bne _02262EA6
	bl FUN_02022974
_02262EA6:
	cmp r4, #0x14
	blo _02262EAE
	bl FUN_02022974
_02262EAE:
	movs r0, #0x24
	adds r5, #8
	muls r0, r4, r0
	adds r0, r5, r0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov70_02262FD4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262E94

	thumb_func_start ov70_02262EC0
ov70_02262EC0: @ 0x02262EC0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r5, #0
	bne _02262ED2
	bl FUN_02022974
_02262ED2:
	cmp r4, #0x14
	blo _02262EDA
	bl FUN_02022974
_02262EDA:
	movs r0, #0x24
	adds r5, #8
	muls r0, r4, r0
	adds r0, r5, r0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov70_0226300C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262EC0

	thumb_func_start ov70_02262EEC
ov70_02262EEC: @ 0x02262EEC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r5, #0
	bne _02262EFC
	bl FUN_02022974
_02262EFC:
	cmp r4, #0x14
	blo _02262F04
	bl FUN_02022974
_02262F04:
	movs r0, #0x24
	adds r5, #8
	muls r0, r4, r0
	adds r0, r5, r0
	adds r1, r6, #0
	bl ov70_02263008
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02262EEC

	thumb_func_start ov70_02262F14
ov70_02262F14: @ 0x02262F14
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #0xb6
	lsls r0, r0, #2
	adds r0, r7, r0
	str r1, [sp]
	bl ov70_0226307C
	cmp r0, #1
	bne _02262F3A
	movs r0, #0xb6
	lsls r0, r0, #2
	ldr r2, [sp]
	adds r0, r7, r0
	adds r1, r7, #0
	movs r3, #0
	bl ov70_02262F94
	pop {r3, r4, r5, r6, r7, pc}
_02262F3A:
	adds r6, r7, #0
	adds r6, #8
	movs r4, #0
	adds r5, r6, #0
_02262F42:
	adds r0, r6, #0
	bl ov70_0226307C
	cmp r0, #1
	bne _02262F58
	ldr r2, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov70_02262F94
_02262F58:
	adds r4, r4, #1
	adds r6, #0x24
	adds r5, #0x24
	cmp r4, #0x14
	blt _02262F42
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262F14

	thumb_func_start ov70_02262F64
ov70_02262F64: @ 0x02262F64
	strh r2, [r0]
	movs r2, #1
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02262F64

	thumb_func_start ov70_02262F70
ov70_02262F70: @ 0x02262F70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02262F7E
	bl FUN_020181C4
_02262F7E:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _02262F88
	bl FUN_020181C4
_02262F88:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x24
	blx FUN_020D5124
	pop {r4, pc}
	thumb_func_end ov70_02262F70

	thumb_func_start ov70_02262F94
ov70_02262F94: @ 0x02262F94
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	adds r6, r1, #0
	adds r7, r3, #0
	cmp r0, #0
	beq _02262FD2
	cmp r2, #0
	beq _02262FAC
	cmp r2, #1
	beq _02262FB2
	b _02262FB8
_02262FAC:
	ldr r0, [r5, #4]
	ldr r4, [r0]
	b _02262FBC
_02262FB2:
	ldr r0, [r5, #4]
	ldr r4, [r0, #4]
	b _02262FBC
_02262FB8:
	bl FUN_02022974
_02262FBC:
	cmp r4, #0
	beq _02262FD2
	ldr r1, [r6, #4]
	adds r0, r5, #0
	adds r2, r7, #0
	blx r4
	cmp r0, #1
	bne _02262FD2
	adds r0, r5, #0
	bl ov70_02263044
_02262FD2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02262F94

	thumb_func_start ov70_02262FD4
ov70_02262FD4: @ 0x02262FD4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov70_0226306C
	cmp r0, #1
	beq _02262FEA
	bl FUN_02022974
_02262FEA:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02262FF4
	bl FUN_02022974
_02262FF4:
	movs r3, #0
	adds r0, r5, #4
	adds r1, r4, #0
	adds r2, r6, #0
	str r3, [sp]
	bl ov70_0226308C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02262FD4

	thumb_func_start ov70_02263008
ov70_02263008: @ 0x02263008
	strb r1, [r0, #2]
	bx lr
	thumb_func_end ov70_02263008

	thumb_func_start ov70_0226300C
ov70_0226300C: @ 0x0226300C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov70_0226306C
	cmp r0, #1
	beq _02263022
	bl FUN_02022974
_02263022:
	adds r2, r5, #0
	adds r3, r5, #4
	adds r2, #0x14
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	movs r3, #0
	adds r0, r5, #4
	adds r1, r4, #0
	adds r2, r6, #0
	str r3, [sp]
	bl ov70_0226308C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0226300C

	thumb_func_start ov70_02263044
ov70_02263044: @ 0x02263044
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02263052
	bl FUN_02022974
_02263052:
	adds r3, r4, #0
	adds r3, #0x14
	adds r2, r4, #4
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	adds r4, #0x14
	adds r0, r4, #0
	bl ov70_02263098
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02263044

	thumb_func_start ov70_0226306C
ov70_0226306C: @ 0x0226306C
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _02263076
	movs r0, #1
	bx lr
_02263076:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_0226306C

	thumb_func_start ov70_0226307C
ov70_0226307C: @ 0x0226307C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _02263086
	movs r0, #1
	bx lr
_02263086:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_0226307C

	thumb_func_start ov70_0226308C
ov70_0226308C: @ 0x0226308C
	str r1, [r0]
	ldr r1, [sp]
	str r3, [r0, #0xc]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov70_0226308C

	thumb_func_start ov70_02263098
ov70_02263098: @ 0x02263098
	movs r1, #0
	str r1, [r0]
	str r1, [r0, #0xc]
	str r1, [r0, #4]
	str r1, [r0, #8]
	bx lr
	thumb_func_end ov70_02263098

	thumb_func_start ov70_022630A4
ov70_022630A4: @ 0x022630A4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov70_0225DEEC
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF10
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF2C
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov70_0225DEE8
	movs r1, #1
	bl FUN_0222E3E4
	ldrh r0, [r4, #6]
	cmp r0, #4
	blo _022630D4
	bl FUN_02022974
_022630D4:
	ldrh r2, [r4, #6]
	ldr r3, _022630E8 @ =0x0226DA78
	adds r0, r7, #0
	lsls r2, r2, #3
	adds r2, r3, r2
	adds r1, r6, #0
	movs r3, #0
	bl ov70_02262E94
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022630E8: .4byte 0x0226DA78
	thumb_func_end ov70_022630A4

	thumb_func_start ov70_022630EC
ov70_022630EC: @ 0x022630EC
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl ov70_0225DF2C
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF10
	ldr r7, _0226311C @ =0x0226DA10
	adds r6, r0, #0
	movs r4, #0
_02263102:
	cmp r5, r4
	beq _02263112
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r3, #0
	bl ov70_02262E94
_02263112:
	adds r4, r4, #1
	cmp r4, #0x14
	blt _02263102
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226311C: .4byte 0x0226DA10
	thumb_func_end ov70_022630EC

	thumb_func_start ov70_02263120
ov70_02263120: @ 0x02263120
	cmp r0, #3
	bhi _02263146
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02263130: @ jump table
	.2byte _02263138 - _02263130 - 2 @ case 0
	.2byte _0226313C - _02263130 - 2 @ case 1
	.2byte _02263140 - _02263130 - 2 @ case 2
	.2byte _02263144 - _02263130 - 2 @ case 3
_02263138:
	movs r1, #0x40
	b _02263146
_0226313C:
	movs r1, #0x80
	b _02263146
_02263140:
	movs r1, #0x20
	b _02263146
_02263144:
	movs r1, #0x10
_02263146:
	ldr r0, _02263158 @ =0x021BF67C
	ldr r0, [r0, #0x44]
	tst r0, r1
	beq _02263152
	movs r0, #1
	bx lr
_02263152:
	movs r0, #0
	bx lr
	nop
_02263158: .4byte 0x021BF67C
	thumb_func_end ov70_02263120

	thumb_func_start ov70_0226315C
ov70_0226315C: @ 0x0226315C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	adds r7, r0, #0
	str r2, [sp, #4]
	adds r4, r3, #0
	ldr r5, [sp, #0x28]
	bl ov70_02262E80
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl ov70_0225DF10
	str r0, [sp, #8]
	ldr r0, [r4, #8]
	movs r2, #0
	cmp r0, #3
	beq _022631F0
	adds r6, r4, #0
	adds r1, r2, #0
_02263184:
	adds r3, r1, #0
_02263186:
	ldrb r0, [r6, r3]
	cmp r0, #0xff
	beq _022631E6
	cmp r5, r0
	bne _022631E0
	movs r0, #0x18
	adds r5, r2, #0
	muls r5, r0, r5
	adds r6, r4, r5
	ldr r0, [r6, #8]
	cmp r0, #0
	beq _022631A6
	cmp r0, #1
	beq _022631BE
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631A6:
	adds r0, r7, #0
	bl ov70_02262E64
	adds r2, r6, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	adds r2, #0xc
	movs r3, #0
	bl ov70_02262E94
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631BE:
	ldr r7, [r6, #0x14]
	cmp r7, #0
	beq _022631CE
	ldrb r3, [r3, r6]
	ldr r0, [sp, #0xc]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	blx r7
_022631CE:
	adds r2, r4, r5
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	adds r2, #0xc
	movs r3, #0
	bl ov70_02262EC0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_022631E0:
	adds r3, r3, #1
	cmp r3, #8
	blt _02263186
_022631E6:
	adds r6, #0x18
	ldr r0, [r6, #8]
	adds r2, r2, #1
	cmp r0, #3
	bne _02263184
_022631F0:
	bl FUN_02022974
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226315C

	thumb_func_start ov70_022631F8
ov70_022631F8: @ 0x022631F8
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r0, #0
	bl ov70_0225DEF0
	adds r1, r4, #0
	bl ov70_0225CB28
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF08
	adds r5, r0, #0
	adds r0, r4, #0
	add r1, sp, #0
	bl ov70_0225D054
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r5, #0
	bl ov70_02260B20
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_022631F8

	thumb_func_start ov70_02263230
ov70_02263230: @ 0x02263230
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	str r3, [sp]
	bl ov70_0225DEF0
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF08
	str r0, [sp, #4]
	ldr r3, [sp]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov70_0225CB5C
	adds r5, r0, #0
	ldr r3, [sp, #0x20]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov70_0225CD7C
	ldr r0, [sp, #4]
	adds r1, r5, #0
	bl ov70_02260B38
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02263230

	thumb_func_start ov70_02263270
ov70_02263270: @ 0x02263270
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	strb r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #5]
	bl FUN_0201D35C
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #6]
	movs r0, #1
	strb r0, [r4, #7]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_02263270

	thumb_func_start ov70_02263290
ov70_02263290: @ 0x02263290
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #5]
	cmp r0, #0
	beq _022632A4
	cmp r0, #1
	beq _022632AA
	cmp r0, #2
	beq _022632BC
	b _0226331E
_022632A4:
	movs r0, #0
	str r0, [r4]
	b _0226331E
_022632AA:
	ldrb r0, [r4, #6]
	subs r0, r0, #1
	cmp r0, #0
	ble _022632B6
	strb r0, [r4, #6]
	b _0226331E
_022632B6:
	movs r0, #2
	strb r0, [r4, #5]
	b _0226331E
_022632BC:
	movs r0, #4
	ldrsb r1, [r4, r0]
	movs r3, #0
	adds r1, r1, #1
	strb r1, [r4, #4]
	ldrsb r1, [r4, r0]
	ldr r0, _02263324 @ =0x00007FFF
	adds r2, r1, #0
	muls r2, r0, r2
	asrs r0, r2, #1
	lsrs r0, r0, #0x1e
	adds r0, r2, r0
	lsls r0, r0, #0xe
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _02263328 @ =0x020F983C
	movs r2, #6
	ldrsh r0, [r0, r1]
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4]
	movs r0, #4
	ldrsb r0, [r4, r0]
	cmp r0, #4
	blt _0226331E
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _0226331C
	strb r3, [r4, #4]
	movs r0, #1
	strb r0, [r4, #5]
	bl FUN_0201D35C
	movs r1, #3
	ands r0, r1
	strb r0, [r4, #6]
	b _0226331E
_0226331C:
	strb r3, [r4, #5]
_0226331E:
	ldr r0, [r4]
	pop {r4, pc}
	nop
_02263324: .4byte 0x00007FFF
_02263328: .4byte 0x020F983C
	thumb_func_end ov70_02263290

	thumb_func_start ov70_0226332C
ov70_0226332C: @ 0x0226332C
	movs r1, #0
	strb r1, [r0, #7]
	bx lr
	.align 2, 0
	thumb_func_end ov70_0226332C

	thumb_func_start ov70_02263334
ov70_02263334: @ 0x02263334
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _0226333E
	movs r0, #1
	bx lr
_0226333E:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_02263334

	thumb_func_start ov70_02263344
ov70_02263344: @ 0x02263344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r6, r0, #0
	adds r4, r2, #0
	adds r0, r5, #0
	bl ov70_0225DEF0
	adds r1, r4, #0
	adds r7, r0, #0
	bl ov70_0225CC70
	str r0, [sp]
	adds r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #4]
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _0226337A
	cmp r0, #1
	beq _0226339E
	cmp r0, #2
	beq _022633B4
	b _0226340C
_0226337A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0225E46C
	adds r0, r6, #0
	movs r1, #1
	bl ov70_02262E88
	ldr r0, [sp, #4]
	bl FUN_0222E338
	cmp r4, r0
	bne _0226340C
	adds r0, r5, #0
	movs r1, #0
	bl ov70_0225E43C
	b _0226340C
_0226339E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0225E4AC
	cmp r0, #1
	bne _0226340C
	adds r0, r6, #0
	movs r1, #2
	bl ov70_02262E88
	b _0226340C
_022633B4:
	ldr r0, [sp, #4]
	bl FUN_0222E338
	cmp r4, r0
	bne _022633CA
	ldr r1, [sp]
	adds r0, r7, #0
	movs r2, #1
	bl ov70_0225CDEC
	b _02263400
_022633CA:
	adds r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #1
	bne _022633EA
	adds r0, r5, #0
	bl ov70_0225E3E0
	cmp r4, r0
	beq _022633F4
	ldr r1, [sp]
	adds r0, r7, #0
	movs r2, #2
	bl ov70_0225CDEC
	b _022633F4
_022633EA:
	ldr r1, [sp]
	adds r0, r7, #0
	movs r2, #2
	bl ov70_0225CDEC
_022633F4:
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov70_0225DF4C
_02263400:
	adds r0, r5, #0
	bl ov70_0225E44C
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226340C:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02263344

	thumb_func_start ov70_02263414
ov70_02263414: @ 0x02263414
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	str r2, [sp]
	bl ov70_0225DEE8
	str r0, [sp, #4]
	adds r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #8]
	bl ov70_0225CCAC
	adds r7, r0, #0
	adds r0, r6, #0
	bl ov70_02262E80
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x16
	bhi _022634FE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02263452: @ jump table
	.2byte _02263480 - _02263452 - 2 @ case 0
	.2byte _022634C0 - _02263452 - 2 @ case 1
	.2byte _022634F6 - _02263452 - 2 @ case 2
	.2byte _02263510 - _02263452 - 2 @ case 3
	.2byte _0226352A - _02263452 - 2 @ case 4
	.2byte _02263544 - _02263452 - 2 @ case 5
	.2byte _0226355E - _02263452 - 2 @ case 6
	.2byte _02263578 - _02263452 - 2 @ case 7
	.2byte _0226358E - _02263452 - 2 @ case 8
	.2byte _022635AE - _02263452 - 2 @ case 9
	.2byte _022635E0 - _02263452 - 2 @ case 10
	.2byte _02263654 - _02263452 - 2 @ case 11
	.2byte _0226369A - _02263452 - 2 @ case 12
	.2byte _022636CC - _02263452 - 2 @ case 13
	.2byte _022638F6 - _02263452 - 2 @ case 14
	.2byte _02263740 - _02263452 - 2 @ case 15
	.2byte _02263786 - _02263452 - 2 @ case 16
	.2byte _022637DE - _02263452 - 2 @ case 17
	.2byte _022637FE - _02263452 - 2 @ case 18
	.2byte _0226384C - _02263452 - 2 @ case 19
	.2byte _02263876 - _02263452 - 2 @ case 20
	.2byte _022638AA - _02263452 - 2 @ case 21
	.2byte _022638BE - _02263452 - 2 @ case 22
_02263480:
	adds r0, r6, #0
	movs r1, #0x2c
	bl ov70_02262E3C
	adds r1, r5, #0
	adds r4, r0, #0
	bl ov70_022653DC
	ldr r0, [sp, #4]
	bl FUN_0222E2CC
	ldr r0, [sp, #4]
	bl FUN_0222F0DC
	strh r0, [r4, #2]
	ldrh r1, [r4, #2]
	ldr r0, [sp, #4]
	bl FUN_0222E528
	ldr r1, [sp]
	adds r0, r5, #0
	bl ov70_022631F8
	adds r1, r0, #0
	ldr r0, [sp, #8]
	movs r2, #4
	bl ov70_0225CDEC
	adds r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_022634C0:
	adds r0, r5, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _022634FE
	adds r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _022634FE
	ldr r0, [sp, #8]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_0225CDEC
	adds r0, r5, #0
	bl ov70_0225DF08
	adds r1, r7, #0
	bl ov70_02260B38
	movs r0, #0x10
	str r0, [r4, #4]
	adds r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_022634F6:
	ldr r0, [r4, #4]
	subs r0, r0, #1
	str r0, [r4, #4]
	beq _02263500
_022634FE:
	b _022638F6
_02263500:
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225DF18
	adds r0, r6, #0
	bl ov70_02262E8C
	b _022638F6
_02263510:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	movs r2, #2
	movs r3, #0
	bl ov70_0225CD7C
	movs r0, #4
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #7
	bl ov70_02262E88
	b _022638F6
_0226352A:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	movs r2, #2
	movs r3, #0
	bl ov70_0225CD7C
	movs r0, #5
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #7
	bl ov70_02262E88
	b _022638F6
_02263544:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	movs r2, #1
	movs r3, #3
	bl ov70_0225CD7C
	movs r0, #6
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #7
	bl ov70_02262E88
	b _022638F6
_0226355E:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	movs r2, #2
	movs r3, #3
	bl ov70_0225CD7C
	movs r0, #8
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #7
	bl ov70_02262E88
	b _022638F6
_02263578:
	adds r0, r7, #0
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263662
	ldrh r1, [r4]
	adds r0, r6, #0
	bl ov70_02262E88
	b _022638F6
_0226358E:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x10
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022635AE:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #5
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r4, #8
	movs r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E0F4
	adds r0, r6, #0
	movs r1, #0xa
	bl ov70_02262E88
	b _022638F6
_022635E0:
	adds r0, r5, #0
	movs r7, #0
	bl ov70_0225E0D4
	adds r2, r0, #0
	beq _02263600
	subs r0, r7, #2
	cmp r2, r0
	beq _022635FA
	adds r0, r0, #1
	cmp r2, r0
	beq _02263614
	b _02263608
_022635FA:
	ldr r0, _022638FC @ =0x000005DC
	bl FUN_02005748
_02263600:
	movs r0, #0
	strh r0, [r4, #0x28]
	movs r7, #1
	b _02263614
_02263608:
	adds r0, r5, #0
	movs r1, #0
	strh r2, [r4, #0x28]
	movs r7, #1
	bl ov70_0225E30C
_02263614:
	cmp r7, #1
	bne _02263662
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	ldrh r0, [r4, #0x28]
	cmp r0, #0
	beq _0226364A
	adds r0, r5, #0
	movs r1, #1
	movs r2, #8
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225E164
	adds r0, r6, #0
	movs r1, #0xb
	bl ov70_02262E88
	b _022638F6
_0226364A:
	adds r0, r6, #0
	movs r1, #0x11
	bl ov70_02262E88
	b _022638F6
_02263654:
	adds r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02263664
	cmp r0, #1
	beq _0226368A
_02263662:
	b _022638F6
_02263664:
	adds r0, r5, #0
	bl ov70_0225E1F8
	adds r0, r6, #0
	movs r1, #0xc
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl FUN_0222E56C
	adds r0, r5, #0
	bl ov70_0225E390
	ldr r0, _02263900 @ =0x000005E5
	bl FUN_02005748
	b _022638F6
_0226368A:
	adds r0, r5, #0
	bl ov70_0225E1F8
	adds r0, r6, #0
	movs r1, #9
	bl ov70_02262E88
	b _022638F6
_0226369A:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xa
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r4, #8
	movs r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E0F4
	adds r0, r6, #0
	movs r1, #0xd
	bl ov70_02262E88
	b _022638F6
_022636CC:
	adds r0, r5, #0
	movs r7, #0
	bl ov70_0225E0D4
	adds r2, r0, #0
	beq _022636EC
	subs r0, r7, #2
	cmp r2, r0
	beq _022636E6
	adds r0, r0, #1
	cmp r2, r0
	beq _02263700
	b _022636F4
_022636E6:
	ldr r0, _022638FC @ =0x000005DC
	bl FUN_02005748
_022636EC:
	movs r0, #0
	strh r0, [r4, #0x2a]
	movs r7, #1
	b _02263700
_022636F4:
	adds r0, r5, #0
	movs r1, #0
	strh r2, [r4, #0x2a]
	movs r7, #1
	bl ov70_0225E30C
_02263700:
	cmp r7, #1
	bne _0226374E
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	ldrh r0, [r4, #0x2a]
	cmp r0, #0
	beq _02263736
	adds r0, r5, #0
	movs r1, #1
	movs r2, #8
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225E164
	adds r0, r6, #0
	movs r1, #0xf
	bl ov70_02262E88
	b _022638F6
_02263736:
	adds r0, r6, #0
	movs r1, #0x13
	bl ov70_02262E88
	b _022638F6
_02263740:
	adds r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02263750
	cmp r0, #1
	beq _02263776
_0226374E:
	b _022638F6
_02263750:
	adds r0, r5, #0
	bl ov70_0225E1F8
	adds r0, r6, #0
	movs r1, #0x14
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl FUN_0222E56C
	adds r0, r5, #0
	bl ov70_0225E390
	ldr r0, _02263900 @ =0x000005E5
	bl FUN_02005748
	b _022638F6
_02263776:
	adds r0, r5, #0
	bl ov70_0225E1F8
	adds r0, r6, #0
	movs r1, #0xc
	bl ov70_02262E88
	b _022638F6
_02263786:
	ldr r0, _02263904 @ =0x000005A8
	bl FUN_02005748
	adds r0, r5, #0
	bl ov70_0225E430
	ldr r1, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #2]
	adds r0, r5, #0
	movs r2, #1
	bl ov70_0225E29C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl FUN_0222E924
	cmp r0, #0
	bne _022637BE
	movs r1, #1
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E20C
	b _022637C8
_022637BE:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x7c
	bl ov70_0225E20C
_022637C8:
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x12
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022637DE:
	adds r0, r5, #0
	movs r1, #1
	movs r2, #2
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x16
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022637FE:
	ldr r0, _02263904 @ =0x000005A8
	bl FUN_020057D4
	cmp r0, #0
	bne _022638F6
	ldr r0, _02263908 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _022638F6
	ldr r0, _022638FC @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	movs r1, #1
	movs r2, #4
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #9
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #0x15
	bl ov70_02262E88
	ldrh r1, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	ldr r0, [sp, #4]
	bl FUN_0222E56C
	ldr r1, [sp]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E328
	b _022638F6
_0226384C:
	ldrh r2, [r4, #0x28]
	adds r0, r5, #0
	movs r1, #0
	bl ov70_0225E30C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xc
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x11
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #0x15
	bl ov70_02262E88
	b _022638F6
_02263876:
	ldrh r2, [r4, #0x28]
	adds r0, r5, #0
	movs r1, #0
	bl ov70_0225E30C
	ldrh r2, [r4, #0x2a]
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E30C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xb
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x11
	strh r0, [r4]
	adds r0, r6, #0
	movs r1, #0x15
	bl ov70_02262E88
	b _022638F6
_022638AA:
	adds r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022638F6
	ldrh r1, [r4]
	adds r0, r6, #0
	bl ov70_02262E88
	b _022638F6
_022638BE:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r5, #0
	bl ov70_0225DFEC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02265450
	adds r0, r6, #0
	bl ov70_02262E64
	adds r0, r5, #0
	bl ov70_0225DF10
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF2C
	adds r1, r0, #0
	ldr r2, _0226390C @ =0x0226D9D0
	adds r0, r4, #0
	movs r3, #0
	bl ov70_02262E94
_022638F6:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022638FC: .4byte 0x000005DC
_02263900: .4byte 0x000005E5
_02263904: .4byte 0x000005A8
_02263908: .4byte 0x021BF67C
_0226390C: .4byte 0x0226D9D0
	thumb_func_end ov70_02263414

	thumb_func_start ov70_02263910
ov70_02263910: @ 0x02263910
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DEE8
	str r0, [sp, #8]
	adds r0, r4, #0
	bl ov70_0225DEEC
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _02263944
	b _02263A4E
_02263944:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02263950: @ jump table
	.2byte _0226395C - _02263950 - 2 @ case 0
	.2byte _02263988 - _02263950 - 2 @ case 1
	.2byte _022639BE - _02263950 - 2 @ case 2
	.2byte _022639EE - _02263950 - 2 @ case 3
	.2byte _02263A12 - _02263950 - 2 @ case 4
	.2byte _02263A2A - _02263950 - 2 @ case 5
_0226395C:
	movs r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov70_02263230
	bl FUN_02231760
	cmp r0, #0
	bne _02263978
	bl FUN_02232AA4
_02263978:
	ldr r0, [sp, #8]
	movs r1, #0
	bl FUN_0222E31C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263988:
	bl FUN_02231760
	cmp r0, #0
	bne _02263998
	bl FUN_02232AD4
	cmp r0, #0
	beq _02263A4E
_02263998:
	adds r0, r4, #0
	bl ov70_0225DEEC
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263A4E
	adds r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #2
	bl ov70_0225CDAC
	b _02263A4E
_022639BE:
	adds r0, r7, #0
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263A4E
	adds r0, r4, #0
	movs r1, #1
	bl ov70_0225DF18
	ldr r0, [sp, #8]
	bl FUN_0222E2B4
	cmp r0, #1
	bne _022639E4
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_022639E4:
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _02263A4E
_022639EE:
	ldrh r1, [r6, #8]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x15
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263A12:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263A4E
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263A4E
_02263A2A:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r4, #0
	bl ov70_0225DF10
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF2C
	adds r1, r0, #0
	ldr r2, _02263A54 @ =0x0226D9D0
	adds r0, r5, #0
	movs r3, #0
	bl ov70_02262E94
_02263A4E:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02263A54: .4byte 0x0226D9D0
	thumb_func_end ov70_02263910

	thumb_func_start ov70_02263A58
ov70_02263A58: @ 0x02263A58
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DF10
	str r0, [sp, #8]
	adds r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x10]
	adds r0, r4, #0
	bl ov70_0225DEEC
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _02263A94
	b _02263B96
_02263A94:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02263AA0: @ jump table
	.2byte _02263AAC - _02263AA0 - 2 @ case 0
	.2byte _02263ADE - _02263AA0 - 2 @ case 1
	.2byte _02263B04 - _02263AA0 - 2 @ case 2
	.2byte _02263B36 - _02263AA0 - 2 @ case 3
	.2byte _02263B5A - _02263AA0 - 2 @ case 4
	.2byte _02263B72 - _02263AA0 - 2 @ case 5
_02263AAC:
	movs r0, #1
	str r0, [sp]
	ldrh r2, [r6]
	ldrh r3, [r6, #2]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov70_02263230
	adds r0, r5, #0
	bl ov70_02262E8C
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	ldr r2, _02263B9C @ =0x0226DA00
	movs r3, #0
	bl ov70_02262EC0
	ldr r0, [sp, #0x10]
	movs r1, #0
	bl FUN_0222E2C4
	ldr r0, [sp, #0x10]
	bl FUN_0222E2CC
	b _02263B96
_02263ADE:
	adds r0, r4, #0
	bl ov70_0225DEEC
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263B96
	adds r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r6, #4]
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #2
	bl ov70_0225CDAC
	b _02263B96
_02263B04:
	adds r0, r7, #0
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263B96
	adds r0, r4, #0
	movs r1, #1
	bl ov70_0225DF18
	ldr r0, [sp, #0x10]
	bl FUN_0222E220
	cmp r0, #1
	bne _02263B2C
	adds r0, r5, #0
	movs r1, #3
	bl ov70_02262E88
	b _02263B96
_02263B2C:
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _02263B96
_02263B36:
	ldrh r1, [r6, #8]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #8
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263B96
_02263B5A:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263B96
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263B96
_02263B72:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r4, #0
	bl ov70_0225DF10
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF2C
	adds r1, r0, #0
	ldr r2, _02263BA0 @ =0x0226D9D0
	adds r0, r5, #0
	movs r3, #0
	bl ov70_02262E94
_02263B96:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02263B9C: .4byte 0x0226DA00
_02263BA0: .4byte 0x0226D9D0
	thumb_func_end ov70_02263A58

	thumb_func_start ov70_02263BA4
ov70_02263BA4: @ 0x02263BA4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	str r2, [sp, #4]
	bl ov70_0225DEE8
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEEC
	str r0, [sp, #8]
	adds r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bhi _02263CBE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02263BE2: @ jump table
	.2byte _02263BEE - _02263BE2 - 2 @ case 0
	.2byte _02263C12 - _02263BE2 - 2 @ case 1
	.2byte _02263C38 - _02263BE2 - 2 @ case 2
	.2byte _02263C68 - _02263BE2 - 2 @ case 3
	.2byte _02263C82 - _02263BE2 - 2 @ case 4
	.2byte _02263C9A - _02263BE2 - 2 @ case 5
_02263BEE:
	movs r0, #1
	str r0, [sp]
	ldr r2, [sp, #8]
	ldr r3, [sp, #8]
	ldrh r2, [r2]
	ldrh r3, [r3, #2]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov70_02263230
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0222E31C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C12:
	adds r0, r4, #0
	bl ov70_0225DEEC
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF30
	cmp r0, #0
	bne _02263CBE
	adds r0, r5, #0
	bl ov70_02262E8C
	ldrh r3, [r7, #4]
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #2
	bl ov70_0225CDAC
	b _02263CBE
_02263C38:
	adds r0, r6, #0
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263CBE
	adds r0, r4, #0
	movs r1, #1
	bl ov70_0225DF18
	adds r0, r7, #0
	bl FUN_0222E2B4
	cmp r0, #1
	bne _02263C5E
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C5E:
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _02263CBE
_02263C68:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x5b
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C82:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02263CBE
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02263CBE
_02263C9A:
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r4, #0
	bl ov70_0225DF10
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF2C
	adds r1, r0, #0
	ldr r2, _02263CC4 @ =0x0226D9D0
	adds r0, r5, #0
	movs r3, #0
	bl ov70_02262E94
_02263CBE:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02263CC4: .4byte 0x0226D9D0
	thumb_func_end ov70_02263BA4

	thumb_func_start ov70_02263CC8
ov70_02263CC8: @ 0x02263CC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x50
	str r0, [sp, #4]
	adds r5, r1, #0
	adds r7, r2, #0
	bl ov70_02262E80
	str r0, [sp, #0x30]
	ldr r0, [sp, #4]
	bl ov70_02262E84
	cmp r0, #0
	beq _02263CE8
	cmp r0, #1
	beq _02263CF8
	b _02264106
_02263CE8:
	ldr r0, [sp, #4]
	movs r1, #4
	bl ov70_02262E3C
	ldr r0, [sp, #4]
	bl ov70_02262E8C
	b _02264106
_02263CF8:
	adds r0, r5, #0
	movs r1, #0
	bl ov70_0225E43C
	adds r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	adds r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x18]
	adds r0, r5, #0
	bl ov70_0225DEF0
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF00
	str r0, [sp, #0x1c]
	adds r0, r5, #0
	bl ov70_0225DEF8
	str r0, [sp, #0x20]
	adds r0, r4, #0
	bl ov70_0225CCB0
	adds r6, r0, #0
	beq _02263D7A
	ldr r0, [sp, #0x18]
	bl FUN_0222E12C
	cmp r0, #0
	bne _02263D66
	ldr r0, [sp, #0x18]
	bl FUN_0222E19C
	cmp r0, #1
	bne _02263D66
	ldr r0, [sp, #0x18]
	bl FUN_0222E0F4
	cmp r0, #0
	bne _02263D66
	adds r0, r6, #0
	bl ov70_0225CE3C
	cmp r0, #9
	beq _02263D7A
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #9
	bl ov70_0225CDEC
	b _02263D7A
_02263D66:
	adds r0, r6, #0
	bl ov70_0225CE3C
	cmp r0, #0
	beq _02263D7A
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0
	bl ov70_0225CDEC
_02263D7A:
	adds r0, r4, #0
	bl ov70_0225CCAC
	str r0, [sp, #0x28]
	movs r1, #5
	bl ov70_0225CD60
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	movs r1, #6
	bl ov70_0225CD60
	str r0, [sp, #8]
	ldr r0, [sp, #0x28]
	bl ov70_0225CD34
	add r1, sp, #0x40
	strh r0, [r1, #4]
	lsrs r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	mov r2, sp
	subs r2, r2, #4
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldrh r0, [r1, #0xc]
	strh r0, [r2]
	ldrh r0, [r1, #0xe]
	ldr r1, [sp, #8]
	strh r0, [r2, #2]
	ldr r0, [r2]
	bl FUN_0222C078
	add r2, sp, #0x40
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #0xc
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	ldrsh r1, [r2, r1]
	ldr r0, [sp, #0x1c]
	asrs r3, r1, #3
	lsrs r3, r3, #0x1c
	adds r3, r1, r3
	lsls r1, r3, #0xc
	movs r3, #0xe
	ldrsh r2, [r2, r3]
	lsrs r1, r1, #0x10
	asrs r3, r2, #3
	lsrs r3, r3, #0x1c
	adds r3, r2, r3
	lsls r2, r3, #0xc
	lsrs r2, r2, #0x10
	bl ov70_0225C8C4
	str r0, [sp, #0x24]
	add r0, sp, #0x40
	movs r1, #0xa
	ldrsh r2, [r0, r1]
	asrs r1, r2, #3
	lsrs r1, r1, #0x1c
	adds r1, r2, r1
	asrs r1, r1, #4
	str r1, [sp, #0x10]
	movs r1, #8
	ldrsh r1, [r0, r1]
	ldr r2, [sp, #0x10]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	str r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsls r2, r2, #0x10
	lsls r1, r1, #0x10
	ldr r0, [sp, #0x1c]
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl ov70_0225C8C4
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov70_0225E3E0
	adds r1, r0, #0
	cmp r1, r7
	beq _02263E44
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov70_0225DF84
	cmp r0, #0
	beq _02263E44
	adds r0, r5, #0
	bl ov70_0225E3D0
_02263E44:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	beq _02263E90
	adds r0, r5, #0
	bl ov70_0225E400
	cmp r0, #1
	bne _02263E5C
	ldr r0, [sp, #0x2c]
	subs r0, r0, #1
	cmp r0, #2
	bls _02263E5E
_02263E5C:
	b _02264106
_02263E5E:
	adds r0, r5, #0
	bl ov70_0225E3E0
	adds r1, r0, #0
	cmp r1, r7
	beq _02263E88
	adds r0, r4, #0
	bl ov70_0225CC70
	adds r6, r0, #0
	beq _02263E88
	bl ov70_0225CE3C
	cmp r0, #0
	bne _02263E88
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	ldr r2, [r2]
	adds r1, r6, #0
	bl ov70_0225CDEC
_02263E88:
	adds r0, r5, #0
	bl ov70_0225E3D0
	b _02264106
_02263E90:
	adds r0, r5, #0
	movs r1, #0
	bl ov70_0225E43C
	ldr r0, [sp, #0x24]
	bl ov70_0225C930
	cmp r0, #1
	bne _02263ED6
	ldr r0, [sp, #0x24]
	ldr r3, _0226410C @ =0x0226DBB8
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r7, #0
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225CDEC
	ldr r1, [sp, #0x24]
	adds r0, r5, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov70_0225DF3C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263ED6:
	adds r0, r5, #0
	bl ov70_0225E45C
	cmp r0, #1
	bne _02263F04
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225CDEC
	ldr r0, [sp, #0x14]
	ldr r2, _02264110 @ =0x0226DA18
	adds r1, r7, #0
	movs r3, #0
	bl ov70_02262EC0
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263F04:
	ldr r0, [sp, #0x18]
	bl FUN_0222EE08
	cmp r0, #0
	beq _02263F32
	ldr r0, [sp, #0x14]
	ldr r2, _02264114 @ =0x0226DA08
	adds r1, r7, #0
	movs r3, #0
	bl ov70_02262EC0
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225CDEC
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263F32:
	ldr r0, _02264118 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0226401C
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	bl ov70_0225CE40
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02263FA2
	movs r1, #5
	bl ov70_0225CD60
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	movs r1, #4
	bl ov70_0225CD60
	adds r1, r0, #0
	cmp r1, #0xfe
	beq _02263FA2
	lsls r1, r1, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov70_0225DF64
	ldr r1, [sp, #0x38]
	cmp r1, #0
	bne _02263FA2
	cmp r0, #0
	bne _02263FA2
	ldr r0, [sp, #0x14]
	ldr r2, _0226411C @ =0x0226D9F8
	adds r1, r7, #0
	movs r3, #0
	bl ov70_02262EC0
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225CDEC
	ldr r1, [sp, #0x34]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225CDEC
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263FA2:
	adds r0, r6, #0
	bl ov70_0225C990
	cmp r0, #1
	bne _02263FE2
	ldr r0, [sp, #0x28]
	movs r1, #6
	bl ov70_0225CD60
	cmp r0, #0
	bne _02263FE2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	lsls r1, r1, #0x18
	lsls r2, r2, #0x18
	ldr r0, [sp, #0x20]
	lsrs r1, r1, #0x18
	lsrs r2, r2, #0x18
	bl ov70_02262484
	lsls r1, r6, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov70_0225DF3C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02263FE2:
	adds r0, r6, #0
	bl ov70_0225C970
	cmp r0, #1
	bne _0226401C
	ldr r0, [sp, #4]
	ldr r3, _02264120 @ =0x0226DB28
	adds r1, r5, #0
	adds r2, r7, #0
	str r6, [sp]
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225CDEC
	lsls r1, r6, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov70_0225DF3C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226401C:
	ldr r0, [sp, #8]
	bl ov70_02263120
	cmp r0, #1
	bne _022640BC
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02264066
	adds r0, r6, #0
	bl ov70_0225C950
	cmp r0, #1
	bne _02264066
	ldr r0, [sp, #4]
	ldr r3, _02264124 @ =0x0226DAF8
	adds r1, r5, #0
	adds r2, r7, #0
	str r6, [sp]
	bl ov70_0226315C
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225CDEC
	lsls r1, r6, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov70_0225DF3C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225E43C
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264066:
	ldr r1, [sp, #0x28]
	adds r0, r4, #0
	bl ov70_0225CE40
	str r0, [sp, #0x3c]
	cmp r0, #0
	beq _022640BC
	movs r1, #4
	bl ov70_0225CD60
	adds r6, r0, #0
	cmp r6, #0xfe
	beq _022640BC
	adds r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #0
	bne _022640BC
	lsls r1, r6, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	bl ov70_0225DF84
	cmp r0, #0
	bne _022640BC
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	bl ov70_0225E328
	ldr r0, [sp, #0x3c]
	bl ov70_0225CE3C
	ldr r1, [sp, #0x30]
	movs r2, #0
	str r0, [r1]
	ldr r1, [sp, #0x3c]
	adds r0, r4, #0
	bl ov70_0225CDEC
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022640BC:
	ldr r0, _02264118 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	lsls r0, r0, #0xa
	tst r0, r1
	beq _02264106
	adds r0, r5, #0
	bl ov70_0225E3F0
	cmp r0, #0
	bne _022640EA
	ldr r0, [sp, #0x18]
	bl FUN_0222E338
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E328
	ldr r0, _02264128 @ =0x000005DC
	bl FUN_02005748
	b _02264100
_022640EA:
	adds r0, r5, #0
	bl ov70_0225E3E0
	cmp r0, r7
	bne _02264100
	adds r0, r5, #0
	bl ov70_0225E3D0
	ldr r0, _02264128 @ =0x000005DC
	bl FUN_02005748
_02264100:
	add sp, #0x50
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02264106:
	movs r0, #0
	add sp, #0x50
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226410C: .4byte 0x0226DBB8
_02264110: .4byte 0x0226DA18
_02264114: .4byte 0x0226DA08
_02264118: .4byte 0x021BF67C
_0226411C: .4byte 0x0226D9F8
_02264120: .4byte 0x0226DB28
_02264124: .4byte 0x0226DAF8
_02264128: .4byte 0x000005DC
	thumb_func_end ov70_02263CC8

	thumb_func_start ov70_0226412C
ov70_0226412C: @ 0x0226412C
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl ov70_0225DEF0
	bl ov70_0225CCAC
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	beq _0226414C
	adds r0, r4, #0
	movs r1, #1
	bl ov70_0225E43C
_0226414C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov70_0226412C

	thumb_func_start ov70_02264150
ov70_02264150: @ 0x02264150
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r7, r2, #0
	bl ov70_02262E84
	cmp r0, #9
	bhi _022641F8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226416C: @ jump table
	.2byte _02264180 - _0226416C - 2 @ case 0
	.2byte _022641C2 - _0226416C - 2 @ case 1
	.2byte _022641D4 - _0226416C - 2 @ case 2
	.2byte _022641EE - _0226416C - 2 @ case 3
	.2byte _02264202 - _0226416C - 2 @ case 4
	.2byte _02264210 - _0226416C - 2 @ case 5
	.2byte _0226424C - _0226416C - 2 @ case 6
	.2byte _02264280 - _0226416C - 2 @ case 7
	.2byte _022642B2 - _0226416C - 2 @ case 8
	.2byte _022642D2 - _0226416C - 2 @ case 9
_02264180:
	adds r0, r4, #0
	bl ov70_0225DEF0
	adds r6, r0, #0
	bl ov70_0225CCAC
	adds r1, r0, #0
	adds r0, r6, #0
	movs r2, #0
	bl ov70_0225CDEC
	adds r0, r4, #0
	bl ov70_0225DEE8
	movs r1, #0xb
	bl FUN_0222E3E4
	ldr r0, _0226431C @ =0x000005DD
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x41
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641C2:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022641F8
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641D4:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x19
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022641EE:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	beq _022641FA
_022641F8:
	b _02264316
_022641FA:
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_02264202:
	adds r0, r4, #0
	bl ov70_0225E194
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_02264210:
	adds r0, r4, #0
	movs r6, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _02264224
	cmp r0, #1
	beq _02264230
	cmp r0, #2
	b _0226423A
_02264224:
	adds r0, r5, #0
	movs r1, #6
	bl ov70_02262E88
	movs r6, #1
	b _0226423A
_02264230:
	adds r0, r5, #0
	movs r1, #8
	bl ov70_02262E88
	movs r6, #1
_0226423A:
	cmp r6, #1
	bne _02264316
	adds r0, r4, #0
	bl ov70_0225E1F8
	adds r0, r4, #0
	bl ov70_0225DFEC
	b _02264316
_0226424C:
	adds r0, r4, #0
	movs r1, #0
	bl ov70_0225DF18
	adds r0, r4, #0
	bl ov70_0225DEF0
	adds r6, r0, #0
	bl ov70_0225CCAC
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF08
	bl ov70_02260B3C
	adds r0, r6, #0
	adds r1, r7, #0
	movs r2, #3
	bl ov70_0225CDEC
	adds r0, r5, #0
	movs r1, #7
	bl ov70_02262E88
	b _02264316
_02264280:
	adds r0, r4, #0
	bl ov70_0225DEF0
	bl ov70_0225CCAC
	bl ov70_0225CE38
	cmp r0, #1
	bne _02264316
	adds r0, r4, #0
	movs r1, #1
	bl ov70_0225DF34
	adds r0, r4, #0
	movs r1, #0
	bl ov70_0225DF38
	adds r0, r4, #0
	bl ov70_0225DEE8
	movs r1, #0xb
	bl FUN_0222E3E4
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022642B2:
	adds r0, r4, #0
	bl ov70_0225DEF0
	adds r4, r0, #0
	bl ov70_0225CCAC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl ov70_0225CDAC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264316
_022642D2:
	adds r0, r4, #0
	bl ov70_0225DEE8
	movs r1, #1
	bl FUN_0222E3E4
	adds r0, r4, #0
	bl ov70_0225DEF0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF10
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_0225CCAC
	movs r1, #5
	adds r6, r0, #0
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264316
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	bl ov70_0225CDEC
	ldr r2, _02264320 @ =0x0226D9D0
	adds r0, r4, #0
	adds r1, r7, #0
	movs r3, #0
	bl ov70_02262E94
_02264316:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226431C: .4byte 0x000005DD
_02264320: .4byte 0x0226D9D0
	thumb_func_end ov70_02264150

	thumb_func_start ov70_02264324
ov70_02264324: @ 0x02264324
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	adds r4, r1, #0
	adds r5, r0, #0
	str r2, [sp, #0x10]
	adds r0, r4, #0
	bl ov70_0225DEF0
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x28]
	bl ov70_0225CC70
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF40
	str r0, [sp, #0x20]
	adds r0, r5, #0
	bl ov70_02262E80
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x24]
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #8
	bls _02264362
	b _022646BC
_02264362:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226436E: @ jump table
	.2byte _02264380 - _0226436E - 2 @ case 0
	.2byte _02264440 - _0226436E - 2 @ case 1
	.2byte _022644DE - _0226436E - 2 @ case 2
	.2byte _022645B4 - _0226436E - 2 @ case 3
	.2byte _02264606 - _0226436E - 2 @ case 4
	.2byte _0226461E - _0226436E - 2 @ case 5
	.2byte _02264644 - _0226436E - 2 @ case 6
	.2byte _0226465E - _0226436E - 2 @ case 7
	.2byte _0226468C - _0226436E - 2 @ case 8
_02264380:
	adds r0, r5, #0
	movs r1, #0xc
	bl ov70_02262E3C
	adds r4, r0, #0
	ldr r0, [sp, #0x20]
	bl ov70_02264B64
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _022643C4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022643A4: @ jump table
	.2byte _022643AC - _022643A4 - 2 @ case 0
	.2byte _022643B2 - _022643A4 - 2 @ case 1
	.2byte _022643B8 - _022643A4 - 2 @ case 2
	.2byte _022643BE - _022643A4 - 2 @ case 3
_022643AC:
	movs r0, #3
	str r0, [r4, #8]
	b _022643CC
_022643B2:
	movs r0, #4
	str r0, [r4, #8]
	b _022643CC
_022643B8:
	movs r0, #5
	str r0, [r4, #8]
	b _022643CC
_022643BE:
	movs r0, #6
	str r0, [r4, #8]
	b _022643CC
_022643C4:
	bl FUN_02022974
	movs r0, #5
	str r0, [r4, #8]
_022643CC:
	ldr r0, [sp, #0x24]
	bl FUN_0222E12C
	cmp r0, #1
	bne _022643E8
	movs r0, #0x16
	strh r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #6]
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _022646BC
_022643E8:
	ldr r0, [sp, #0x24]
	bl FUN_0222E004
	cmp r0, #1
	bne _02264404
	movs r0, #0x48
	strh r0, [r4, #4]
	movs r0, #1
	strh r0, [r4, #6]
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _022646BC
_02264404:
	ldr r0, [sp, #0x20]
	bl ov70_02264B64
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r0, r6, #0
	bl FUN_02232B00
	cmp r0, #0
	bne _0226442A
	movs r0, #0x14
	strh r0, [r4, #4]
	movs r0, #0
	strh r0, [r4, #6]
	adds r0, r5, #0
	movs r1, #3
	bl ov70_02262E88
	b _022646BC
_0226442A:
	adds r0, r6, #0
	bl FUN_02232A48
	cmp r0, #0
	bne _02264438
	bl FUN_02022974
_02264438:
	adds r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264440:
	bl FUN_02232A84
	cmp r0, #1
	bne _022644C6
	adds r0, r5, #0
	movs r1, #2
	bl ov70_02262E88
	add r1, sp, #0x40
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	adds r0, r4, #0
	bl ov70_0225DEE8
	adds r7, r0, #0
	bl FUN_0222E964
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [r6, #8]
	subs r0, r0, #5
	cmp r0, #1
	bhi _022644A0
	movs r5, #0
	adds r4, r5, #0
_0226447A:
	adds r0, r7, #0
	adds r1, r4, #0
	bl FUN_0222E974
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _02264498
	cmp r5, #4
	bhs _02264492
	add r1, sp, #0x40
	strb r0, [r1, r5]
_02264492:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_02264498:
	adds r4, r4, #1
	cmp r4, #4
	blt _0226447A
	b _022644A6
_022644A0:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x38
	strb r0, [r1, #8]
_022644A6:
	add r3, sp, #0x38
	ldrb r0, [r3, #9]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	str r0, [sp, #4]
	ldrb r0, [r3, #0xb]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #8]
	ldr r1, [r6, #8]
	ldr r2, [sp, #0x1c]
	adds r0, r7, #0
	bl FUN_0222EA10
	b _022646BC
_022644C6:
	cmp r0, #2
	beq _022644CC
	b _022646BC
_022644CC:
	movs r0, #0x14
	strh r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #6]
	adds r0, r5, #0
	movs r1, #3
	bl ov70_02262E88
	b _022646BC
_022644DE:
	ldr r0, [sp, #0x20]
	bl ov70_02264BCC
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	bl ov70_02264C34
	str r0, [sp, #0x30]
	adds r0, r4, #0
	movs r1, #1
	bl ov70_0225DF34
	ldr r1, [sp, #0x2c]
	adds r0, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov70_0225DF38
	adds r0, r4, #0
	bl ov70_0225DEE8
	ldr r1, [sp, #0x30]
	bl FUN_0222E3E4
	ldr r0, [sp, #0x24]
	ldr r1, [r6, #8]
	bl FUN_0222EF94
	ldr r0, [r6, #8]
	cmp r0, #6
	bhi _02264548
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02264528: @ jump table
	.2byte _02264548 - _02264528 - 2 @ case 0
	.2byte _02264548 - _02264528 - 2 @ case 1
	.2byte _02264548 - _02264528 - 2 @ case 2
	.2byte _02264536 - _02264528 - 2 @ case 3
	.2byte _02264536 - _02264528 - 2 @ case 4
	.2byte _0226453C - _02264528 - 2 @ case 5
	.2byte _02264542 - _02264528 - 2 @ case 6
_02264536:
	movs r0, #5
	str r0, [sp, #0x18]
	b _0226454C
_0226453C:
	movs r0, #3
	str r0, [sp, #0x18]
	b _0226454C
_02264542:
	movs r0, #4
	str r0, [sp, #0x18]
	b _0226454C
_02264548:
	bl FUN_02022974
_0226454C:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	bl FUN_0222F040
	adds r0, r7, #0
	movs r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	str r0, [sp, #0x34]
	adds r0, r4, #0
	bl ov70_0225DEEC
	adds r4, r0, #0
	adds r0, r7, #0
	bl ov70_0225CD34
	add r1, sp, #0x38
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #1
	strh r0, [r4, #6]
	movs r0, #4
	ldrsh r2, [r1, r0]
	asrs r0, r2, #3
	lsrs r0, r0, #0x1c
	adds r0, r2, r0
	asrs r0, r0, #4
	strh r0, [r4]
	movs r0, #6
	ldrsh r1, [r1, r0]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	strh r0, [r4, #2]
	ldr r0, [sp, #0x34]
	strh r0, [r4, #4]
	ldr r0, [r6, #8]
	strh r0, [r4, #8]
	adds r0, r5, #0
	bl ov70_02262E64
	add sp, #0x44
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022645B4:
	adds r0, r7, #0
	movs r1, #6
	bl ov70_0225CD60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _022645F0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022645D0: @ jump table
	.2byte _022645D8 - _022645D0 - 2 @ case 0
	.2byte _022645DE - _022645D0 - 2 @ case 1
	.2byte _022645E4 - _022645D0 - 2 @ case 2
	.2byte _022645EA - _022645D0 - 2 @ case 3
_022645D8:
	movs r0, #6
	str r0, [sp, #0x14]
	b _022645F4
_022645DE:
	movs r0, #5
	str r0, [sp, #0x14]
	b _022645F4
_022645E4:
	movs r0, #8
	str r0, [sp, #0x14]
	b _022645F4
_022645EA:
	movs r0, #7
	str r0, [sp, #0x14]
	b _022645F4
_022645F0:
	bl FUN_02022974
_022645F4:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x14]
	adds r1, r7, #0
	bl ov70_0225CDEC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264606:
	adds r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _022646BC
	movs r0, #8
	str r0, [r6]
	adds r0, r5, #0
	movs r1, #7
	bl ov70_02262E88
	b _022646BC
_0226461E:
	adds r0, r7, #0
	movs r1, #6
	bl ov70_0225CD60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0222C0AC
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r0, [sp, #0x28]
	adds r1, r7, #0
	movs r2, #2
	bl ov70_0225CDAC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_02264644:
	adds r0, r7, #0
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _022646BC
	movs r0, #8
	str r0, [r6]
	adds r0, r5, #0
	movs r1, #7
	bl ov70_02262E88
	b _022646BC
_0226465E:
	ldr r0, [r6]
	subs r0, r0, #1
	str r0, [r6]
	cmp r0, #0
	bgt _022646BC
	ldr r1, [r6, #8]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225E27C
	ldrh r1, [r6, #6]
	ldrh r2, [r6, #4]
	adds r0, r4, #0
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _022646BC
_0226468C:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _022646BC
	adds r0, r5, #0
	bl ov70_02262E64
	ldr r0, [sp, #0x28]
	adds r1, r7, #0
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp, #0x10]
	ldr r2, _022646C4 @ =0x0226D9D0
	movs r3, #0
	bl ov70_02262E94
_022646BC:
	movs r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_022646C4: .4byte 0x0226D9D0
	thumb_func_end ov70_02264324

	thumb_func_start ov70_022646C8
ov70_022646C8: @ 0x022646C8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r4, r1, #0
	adds r7, r0, #0
	str r2, [sp]
	bl ov70_02262E80
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	adds r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x18]
	bl ov70_0225CCAC
	str r0, [sp, #0x10]
	adds r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp, #0xc]
	adds r0, r7, #0
	bl ov70_02262E84
	cmp r0, #7
	bls _02264702
	b _02264966
_02264702:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226470E: @ jump table
	.2byte _0226471E - _0226470E - 2 @ case 0
	.2byte _02264792 - _0226470E - 2 @ case 1
	.2byte _022647AC - _0226470E - 2 @ case 2
	.2byte _0226486A - _0226470E - 2 @ case 3
	.2byte _0226488A - _0226470E - 2 @ case 4
	.2byte _0226489E - _0226470E - 2 @ case 5
	.2byte _02264922 - _0226470E - 2 @ case 6
	.2byte _0226493A - _0226470E - 2 @ case 7
_0226471E:
	adds r0, r7, #0
	movs r1, #4
	bl ov70_02262E3C
	adds r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	movs r2, #0
	bl ov70_0225CDEC
	adds r0, r7, #0
	bl ov70_02262E8C
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	bl ov70_0225DF40
	cmp r0, #0x1e
	beq _02264750
	cmp r0, #0x1f
	beq _0226475C
	cmp r0, #0x20
	beq _02264768
	b _02264774
_02264750:
	movs r0, #0
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #3]
	b _02264778
_0226475C:
	movs r0, #1
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	movs r0, #3
	strb r0, [r5, #3]
	b _02264778
_02264768:
	movs r0, #2
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	movs r0, #4
	strb r0, [r5, #3]
	b _02264778
_02264774:
	bl FUN_02022974
_02264778:
	adds r0, r4, #0
	bl ov70_0225DEE8
	movs r1, #0xc
	bl FUN_0222E3E4
	ldr r0, [sp, #0x14]
	ldr r1, [sp]
	ldr r2, _0226496C @ =0x0226DA20
	adds r3, r5, #0
	bl ov70_02262EC0
	b _02264966
_02264792:
	ldrb r0, [r5]
	cmp r0, #8
	bne _022647A2
	adds r0, r7, #0
	movs r1, #2
	bl ov70_02262E88
	b _02264966
_022647A2:
	adds r0, r7, #0
	movs r1, #3
	bl ov70_02262E88
	b _02264966
_022647AC:
	adds r0, r4, #0
	bl ov70_0225DF40
	cmp r0, #0x1e
	beq _022647C0
	cmp r0, #0x1f
	beq _022647C8
	cmp r0, #0x20
	beq _022647D0
	b _022647D6
_022647C0:
	movs r0, #0
	movs r6, #3
	str r0, [sp, #8]
	b _022647D6
_022647C8:
	movs r0, #1
	movs r6, #4
	str r0, [sp, #8]
	b _022647D6
_022647D0:
	movs r0, #2
	movs r6, #5
	str r0, [sp, #8]
_022647D6:
	adds r0, r4, #0
	movs r1, #1
	bl ov70_0225DF34
	lsls r1, r6, #0x18
	adds r0, r4, #0
	lsrs r1, r1, #0x18
	bl ov70_0225DF38
	ldrb r1, [r5, #2]
	ldr r0, [sp, #0xc]
	bl FUN_0222EF94
	ldr r0, [sp, #0xc]
	bl FUN_0222F030
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl FUN_0222F040
	ldr r0, [sp, #0x10]
	movs r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	str r0, [sp, #0x1c]
	adds r0, r4, #0
	bl ov70_0225DEEC
	adds r6, r0, #0
	ldr r0, [sp, #0x10]
	bl ov70_0225CD34
	add r1, sp, #0x20
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #2
	strh r0, [r6, #6]
	movs r0, #4
	ldrsh r0, [r1, r0]
	asrs r2, r0, #3
	lsrs r2, r2, #0x1c
	adds r2, r0, r2
	asrs r0, r2, #4
	strh r0, [r6]
	movs r0, #6
	ldrsh r1, [r1, r0]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	strh r0, [r6, #2]
	ldr r0, [sp, #0x1c]
	strh r0, [r6, #4]
	ldrb r0, [r5, #2]
	strh r0, [r6, #8]
	adds r0, r4, #0
	bl ov70_0225DEE8
	movs r1, #1
	bl FUN_0222E2C4
	adds r0, r7, #0
	bl ov70_02262E64
	add sp, #0x28
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226486A:
	ldr r0, [sp, #0x10]
	movs r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	adds r3, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	movs r2, #2
	bl ov70_0225CDAC
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226488A:
	ldr r0, [sp, #0x10]
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264966
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226489E:
	movs r0, #1
	str r0, [sp, #4]
	ldrb r0, [r5]
	cmp r0, #7
	bhi _022648F4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022648B4: @ jump table
	.2byte _022648C4 - _022648B4 - 2 @ case 0
	.2byte _022648D2 - _022648B4 - 2 @ case 1
	.2byte _022648D6 - _022648B4 - 2 @ case 2
	.2byte _022648E4 - _022648B4 - 2 @ case 3
	.2byte _022648E8 - _022648B4 - 2 @ case 4
	.2byte _022648F4 - _022648B4 - 2 @ case 5
	.2byte _022648EC - _022648B4 - 2 @ case 6
	.2byte _022648F0 - _022648B4 - 2 @ case 7
_022648C4:
	ldrb r1, [r5, #2]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225E27C
	movs r6, #4
	b _022648F8
_022648D2:
	movs r6, #5
	b _022648F8
_022648D6:
	ldrb r1, [r5, #2]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225E27C
	movs r6, #6
	b _022648F8
_022648E4:
	movs r6, #0x13
	b _022648F8
_022648E8:
	movs r6, #0x11
	b _022648F8
_022648EC:
	movs r6, #0x1d
	b _022648F8
_022648F0:
	movs r6, #7
	b _022648F8
_022648F4:
	movs r0, #0
	str r0, [sp, #4]
_022648F8:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02264918
	adds r0, r4, #0
	movs r1, #0
	adds r2, r6, #0
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_02264918:
	adds r0, r7, #0
	movs r1, #7
	bl ov70_02262E88
	b _02264966
_02264922:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02264966
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02264966
_0226493A:
	adds r0, r7, #0
	bl ov70_02262E64
	adds r0, r4, #0
	bl ov70_0225DEE8
	movs r1, #1
	bl FUN_0222E3E4
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _02264970 @ =0x0226D9D0
	movs r3, #0
	bl ov70_02262E94
_02264966:
	movs r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226496C: .4byte 0x0226DA20
_02264970: .4byte 0x0226D9D0
	thumb_func_end ov70_022646C8

	thumb_func_start ov70_02264974
ov70_02264974: @ 0x02264974
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r4, r1, #0
	adds r5, r0, #0
	str r2, [sp]
	bl ov70_02262E80
	str r0, [sp, #8]
	adds r0, r4, #0
	bl ov70_0225DF10
	adds r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	bl ov70_0225CCAC
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEE8
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #6
	bls _022649AC
	b _02264B56
_022649AC:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022649B8: @ jump table
	.2byte _022649C6 - _022649B8 - 2 @ case 0
	.2byte _02264A2A - _022649B8 - 2 @ case 1
	.2byte _02264AC0 - _022649B8 - 2 @ case 2
	.2byte _02264AE0 - _022649B8 - 2 @ case 3
	.2byte _02264AF4 - _022649B8 - 2 @ case 4
	.2byte _02264B10 - _022649B8 - 2 @ case 5
	.2byte _02264B28 - _022649B8 - 2 @ case 6
_022649C6:
	adds r0, r5, #0
	movs r1, #0xc
	bl ov70_02262E3C
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEE8
	movs r1, #0xd
	bl FUN_0222E3E4
	adds r0, r7, #0
	bl FUN_0222E12C
	cmp r0, #1
	bne _022649F4
	movs r0, #0x7a
	strh r0, [r6]
	adds r0, r5, #0
	movs r1, #2
	bl ov70_02262E88
	b _02264B5A
_022649F4:
	adds r0, r7, #0
	bl FUN_0222E19C
	cmp r0, #1
	bne _02264A04
	movs r0, #0xa
	strh r0, [r6, #2]
	b _02264A20
_02264A04:
	adds r0, r7, #0
	bl FUN_0222E0DC
	cmp r0, #1
	bne _02264A1C
	movs r0, #0x62
	strh r0, [r6]
	adds r0, r5, #0
	movs r1, #2
	bl ov70_02262E88
	b _02264B5A
_02264A1C:
	movs r0, #9
	strh r0, [r6, #2]
_02264A20:
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02262E88
	b _02264B5A
_02264A2A:
	ldr r0, [sp, #8]
	ldrh r0, [r0, #2]
	cmp r0, #9
	bne _02264A38
	movs r0, #9
	str r0, [sp, #4]
	b _02264A42
_02264A38:
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl FUN_0222E10C
_02264A42:
	adds r0, r4, #0
	movs r1, #1
	bl ov70_0225DF34
	ldr r1, [sp, #4]
	adds r0, r4, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov70_0225DF38
	movs r1, #0x17
	adds r2, r1, #0
	adds r0, r7, #0
	subs r2, #0x18
	bl FUN_0222E500
	adds r0, r6, #0
	movs r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	adds r7, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEEC
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov70_0225CD34
	add r1, sp, #0x10
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	movs r0, #3
	strh r0, [r4, #6]
	movs r0, #4
	ldrsh r2, [r1, r0]
	asrs r0, r2, #3
	lsrs r0, r0, #0x1c
	adds r0, r2, r0
	asrs r0, r0, #4
	strh r0, [r4]
	movs r0, #6
	ldrsh r1, [r1, r0]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	strh r0, [r4, #2]
	strh r7, [r4, #4]
	movs r0, #0
	strh r0, [r4, #8]
	adds r0, r5, #0
	bl ov70_02262E64
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02264AC0:
	adds r0, r6, #0
	movs r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	adds r3, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #2
	bl ov70_0225CDAC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264AE0:
	adds r0, r6, #0
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	bne _02264B5A
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264AF4:
	ldr r2, [sp, #8]
	adds r0, r4, #0
	ldrh r2, [r2]
	movs r1, #1
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264B10:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _02264B5A
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264B5A
_02264B28:
	adds r0, r5, #0
	bl ov70_02262E64
	adds r0, r4, #0
	bl ov70_0225DEE8
	movs r1, #1
	bl FUN_0222E3E4
	ldr r0, [sp, #0xc]
	adds r1, r6, #0
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r4, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _02264B60 @ =0x0226D9D0
	movs r3, #0
	bl ov70_02262E94
	b _02264B5A
_02264B56:
	bl FUN_02022974
_02264B5A:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02264B60: .4byte 0x0226D9D0
	thumb_func_end ov70_02264974

	thumb_func_start ov70_02264B64
ov70_02264B64: @ 0x02264B64
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264BC2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02264B76: @ jump table
	.2byte _02264BC2 - _02264B76 - 2 @ case 0
	.2byte _02264BC2 - _02264B76 - 2 @ case 1
	.2byte _02264BC2 - _02264B76 - 2 @ case 2
	.2byte _02264BC2 - _02264B76 - 2 @ case 3
	.2byte _02264BC2 - _02264B76 - 2 @ case 4
	.2byte _02264BC2 - _02264B76 - 2 @ case 5
	.2byte _02264BBA - _02264B76 - 2 @ case 6
	.2byte _02264BBA - _02264B76 - 2 @ case 7
	.2byte _02264BBA - _02264B76 - 2 @ case 8
	.2byte _02264BBA - _02264B76 - 2 @ case 9
	.2byte _02264BBA - _02264B76 - 2 @ case 10
	.2byte _02264BBA - _02264B76 - 2 @ case 11
	.2byte _02264BBA - _02264B76 - 2 @ case 12
	.2byte _02264BBA - _02264B76 - 2 @ case 13
	.2byte _02264BBE - _02264B76 - 2 @ case 14
	.2byte _02264BBE - _02264B76 - 2 @ case 15
	.2byte _02264BBE - _02264B76 - 2 @ case 16
	.2byte _02264BBE - _02264B76 - 2 @ case 17
	.2byte _02264BBE - _02264B76 - 2 @ case 18
	.2byte _02264BBE - _02264B76 - 2 @ case 19
	.2byte _02264BBE - _02264B76 - 2 @ case 20
	.2byte _02264BBE - _02264B76 - 2 @ case 21
	.2byte _02264BB2 - _02264B76 - 2 @ case 22
	.2byte _02264BB2 - _02264B76 - 2 @ case 23
	.2byte _02264BB2 - _02264B76 - 2 @ case 24
	.2byte _02264BB2 - _02264B76 - 2 @ case 25
	.2byte _02264BB6 - _02264B76 - 2 @ case 26
	.2byte _02264BB6 - _02264B76 - 2 @ case 27
	.2byte _02264BB6 - _02264B76 - 2 @ case 28
	.2byte _02264BB6 - _02264B76 - 2 @ case 29
_02264BB2:
	movs r0, #2
	pop {r3, pc}
_02264BB6:
	movs r0, #3
	pop {r3, pc}
_02264BBA:
	movs r0, #0
	pop {r3, pc}
_02264BBE:
	movs r0, #1
	pop {r3, pc}
_02264BC2:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_02264B64

	thumb_func_start ov70_02264BCC
ov70_02264BCC: @ 0x02264BCC
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264C2A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02264BDE: @ jump table
	.2byte _02264C2A - _02264BDE - 2 @ case 0
	.2byte _02264C2A - _02264BDE - 2 @ case 1
	.2byte _02264C2A - _02264BDE - 2 @ case 2
	.2byte _02264C2A - _02264BDE - 2 @ case 3
	.2byte _02264C2A - _02264BDE - 2 @ case 4
	.2byte _02264C2A - _02264BDE - 2 @ case 5
	.2byte _02264C22 - _02264BDE - 2 @ case 6
	.2byte _02264C22 - _02264BDE - 2 @ case 7
	.2byte _02264C22 - _02264BDE - 2 @ case 8
	.2byte _02264C22 - _02264BDE - 2 @ case 9
	.2byte _02264C22 - _02264BDE - 2 @ case 10
	.2byte _02264C22 - _02264BDE - 2 @ case 11
	.2byte _02264C22 - _02264BDE - 2 @ case 12
	.2byte _02264C22 - _02264BDE - 2 @ case 13
	.2byte _02264C26 - _02264BDE - 2 @ case 14
	.2byte _02264C26 - _02264BDE - 2 @ case 15
	.2byte _02264C26 - _02264BDE - 2 @ case 16
	.2byte _02264C26 - _02264BDE - 2 @ case 17
	.2byte _02264C26 - _02264BDE - 2 @ case 18
	.2byte _02264C26 - _02264BDE - 2 @ case 19
	.2byte _02264C26 - _02264BDE - 2 @ case 20
	.2byte _02264C26 - _02264BDE - 2 @ case 21
	.2byte _02264C1A - _02264BDE - 2 @ case 22
	.2byte _02264C1A - _02264BDE - 2 @ case 23
	.2byte _02264C1A - _02264BDE - 2 @ case 24
	.2byte _02264C1A - _02264BDE - 2 @ case 25
	.2byte _02264C1E - _02264BDE - 2 @ case 26
	.2byte _02264C1E - _02264BDE - 2 @ case 27
	.2byte _02264C1E - _02264BDE - 2 @ case 28
	.2byte _02264C1E - _02264BDE - 2 @ case 29
_02264C1A:
	movs r0, #1
	pop {r3, pc}
_02264C1E:
	movs r0, #2
	pop {r3, pc}
_02264C22:
	movs r0, #6
	pop {r3, pc}
_02264C26:
	movs r0, #7
	pop {r3, pc}
_02264C2A:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_02264BCC

	thumb_func_start ov70_02264C34
ov70_02264C34: @ 0x02264C34
	push {r3, lr}
	cmp r0, #0x1d
	bhi _02264C92
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02264C46: @ jump table
	.2byte _02264C92 - _02264C46 - 2 @ case 0
	.2byte _02264C92 - _02264C46 - 2 @ case 1
	.2byte _02264C92 - _02264C46 - 2 @ case 2
	.2byte _02264C92 - _02264C46 - 2 @ case 3
	.2byte _02264C92 - _02264C46 - 2 @ case 4
	.2byte _02264C92 - _02264C46 - 2 @ case 5
	.2byte _02264C8A - _02264C46 - 2 @ case 6
	.2byte _02264C8A - _02264C46 - 2 @ case 7
	.2byte _02264C8A - _02264C46 - 2 @ case 8
	.2byte _02264C8A - _02264C46 - 2 @ case 9
	.2byte _02264C8A - _02264C46 - 2 @ case 10
	.2byte _02264C8A - _02264C46 - 2 @ case 11
	.2byte _02264C8A - _02264C46 - 2 @ case 12
	.2byte _02264C8A - _02264C46 - 2 @ case 13
	.2byte _02264C8E - _02264C46 - 2 @ case 14
	.2byte _02264C8E - _02264C46 - 2 @ case 15
	.2byte _02264C8E - _02264C46 - 2 @ case 16
	.2byte _02264C8E - _02264C46 - 2 @ case 17
	.2byte _02264C8E - _02264C46 - 2 @ case 18
	.2byte _02264C8E - _02264C46 - 2 @ case 19
	.2byte _02264C8E - _02264C46 - 2 @ case 20
	.2byte _02264C8E - _02264C46 - 2 @ case 21
	.2byte _02264C82 - _02264C46 - 2 @ case 22
	.2byte _02264C82 - _02264C46 - 2 @ case 23
	.2byte _02264C82 - _02264C46 - 2 @ case 24
	.2byte _02264C82 - _02264C46 - 2 @ case 25
	.2byte _02264C86 - _02264C46 - 2 @ case 26
	.2byte _02264C86 - _02264C46 - 2 @ case 27
	.2byte _02264C86 - _02264C46 - 2 @ case 28
	.2byte _02264C86 - _02264C46 - 2 @ case 29
_02264C82:
	movs r0, #7
	pop {r3, pc}
_02264C86:
	movs r0, #8
	pop {r3, pc}
_02264C8A:
	movs r0, #5
	pop {r3, pc}
_02264C8E:
	movs r0, #6
	pop {r3, pc}
_02264C92:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_02264C34

	thumb_func_start ov70_02264C9C
ov70_02264C9C: @ 0x02264C9C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02264CB0
	cmp r0, #1
	beq _02264D06
	b _02264D30
_02264CB0:
	adds r0, r4, #0
	bl ov70_0225DEE8
	adds r6, r0, #0
	bl FUN_0222E12C
	cmp r0, #1
	bne _02264CCE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl ov70_0225E20C
	adds r1, r0, #0
	b _02264CF2
_02264CCE:
	adds r0, r6, #0
	bl FUN_0222E170
	cmp r0, #1
	bne _02264CE6
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4e
	bl ov70_0225E20C
	adds r1, r0, #0
	b _02264CF2
_02264CE6:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #2
	bl ov70_0225E20C
	adds r1, r0, #0
_02264CF2:
	adds r0, r4, #0
	bl ov70_0225DF8C
	ldr r0, _02264D34 @ =0x000005DC
	bl FUN_02005748
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02264D30
_02264D06:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02264D30
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r4, #0
	bl ov70_0225DEF0
	adds r4, r0, #0
	bl ov70_0225CCAC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl ov70_0225CDEC
	movs r0, #1
	pop {r4, r5, r6, pc}
_02264D30:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02264D34: .4byte 0x000005DC
	thumb_func_end ov70_02264C9C

	thumb_func_start ov70_02264D38
ov70_02264D38: @ 0x02264D38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	str r2, [sp]
	bl ov70_0225DEF0
	str r0, [sp, #8]
	adds r0, r5, #0
	bl ov70_0225DEF8
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF08
	str r0, [sp, #0xc]
	adds r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #4]
	adds r0, r6, #0
	bl ov70_02262E80
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0xf
	bls _02264D76
	b _022650D2
_02264D76:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02264D82: @ jump table
	.2byte _02264DA2 - _02264D82 - 2 @ case 0
	.2byte _02264DEA - _02264D82 - 2 @ case 1
	.2byte _02264E5E - _02264D82 - 2 @ case 2
	.2byte _02264EF4 - _02264D82 - 2 @ case 3
	.2byte _02264F28 - _02264D82 - 2 @ case 4
	.2byte _02264F58 - _02264D82 - 2 @ case 5
	.2byte _02264F94 - _02264D82 - 2 @ case 6
	.2byte _02264FAA - _02264D82 - 2 @ case 7
	.2byte _02264FC2 - _02264D82 - 2 @ case 8
	.2byte _02264FE2 - _02264D82 - 2 @ case 9
	.2byte _02265002 - _02264D82 - 2 @ case 10
	.2byte _02265022 - _02264D82 - 2 @ case 11
	.2byte _02265036 - _02264D82 - 2 @ case 12
	.2byte _02265046 - _02264D82 - 2 @ case 13
	.2byte _02265092 - _02264D82 - 2 @ case 14
	.2byte _022650A8 - _02264D82 - 2 @ case 15
_02264DA2:
	adds r0, r6, #0
	movs r1, #0x18
	bl ov70_02262E3C
	adds r4, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl ov70_0225CC70
	str r0, [r4, #0xc]
	adds r0, r5, #0
	bl ov70_0225DF40
	cmp r0, #0x21
	beq _02264DCA
	cmp r0, #0x22
	beq _02264DD0
	cmp r0, #0x23
	beq _02264DD6
	b _02264DDC
_02264DCA:
	movs r0, #2
	strh r0, [r4, #6]
	b _02264DE0
_02264DD0:
	movs r0, #1
	strh r0, [r4, #6]
	b _02264DE0
_02264DD6:
	movs r0, #0
	strh r0, [r4, #6]
	b _02264DE0
_02264DDC:
	bl FUN_02022974
_02264DE0:
	adds r0, r6, #0
	movs r1, #1
	bl ov70_02262E88
	b _022650D2
_02264DEA:
	ldr r0, [sp, #4]
	bl FUN_0222E170
	cmp r0, #0
	bne _02264E02
	movs r0, #8
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E02:
	ldr r0, [sp, #4]
	bl FUN_0222E12C
	cmp r0, #1
	bne _02264E1A
	movs r0, #0xa
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E1A:
	ldrh r2, [r4, #6]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl FUN_0222EBB4
	movs r1, #0
	mvns r1, r1
	str r0, [r4]
	cmp r0, r1
	beq _02264E50
	adds r0, r6, #0
	movs r1, #2
	bl ov70_02262E88
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x1f
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225DFBC
	b _022650D2
_02264E50:
	movs r0, #9
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #6
	bl ov70_02262E88
	b _022650D2
_02264E5E:
	ldr r0, _022650D8 @ =0x021BF67C
	movs r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	bne _02264E6E
	movs r1, #0x80
	tst r0, r1
	beq _02264E8E
_02264E6E:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl FUN_0222EBC4
	adds r0, r5, #0
	bl ov70_0225DFCC
	movs r0, #6
	strb r0, [r4, #0xa]
	movs r0, #0xf
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #0xc
	bl ov70_02262E88
	b _022650D2
_02264E8E:
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov70_02265104
	cmp r0, #1
	beq _02264E9C
	b _022650D2
_02264E9C:
	adds r0, r5, #0
	bl ov70_0225DFCC
	ldr r0, [sp, #4]
	bl FUN_0222EC40
	movs r0, #0
	strh r0, [r4, #8]
	adds r0, r5, #0
	bl ov70_0225DEE8
	movs r1, #0xa
	bl FUN_0222E3E4
	adds r0, r5, #0
	bl ov70_0225DF44
	ldr r0, [sp, #0xc]
	bl ov70_02260B3C
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl ov70_0225D030
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl ov70_0225D06C
	ldr r0, _022650DC @ =0x000005AA
	bl FUN_02005748
	adds r0, r5, #0
	bl ov70_0225E410
	movs r0, #3
	strb r0, [r4, #0xa]
	adds r0, r6, #0
	movs r1, #0xc
	bl ov70_02262E88
	ldr r0, [sp, #4]
	bl FUN_0222F000
	b _022650D2
_02264EF4:
	ldr r2, [sp, #0xc]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov70_02265144
	cmp r0, #1
	bne _02264FB6
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl ov70_0225D06C
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl ov70_0225D060
	ldr r0, [r4, #0xc]
	movs r1, #8
	bl ov70_0225D0B4
	adds r0, r6, #0
	movs r1, #4
	bl ov70_02262E88
	movs r0, #0
	strh r0, [r4, #8]
	b _022650D2
_02264F28:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02265344
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl ov70_022650E4
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov70_022652BC
	cmp r0, #1
	bne _02264FB6
	adds r0, r6, #0
	movs r1, #5
	bl ov70_02262E88
	adds r0, r5, #0
	movs r1, #0
	bl ov70_0225E43C
	b _022650D2
_02264F58:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02265344
	ldr r1, [sp, #0xc]
	adds r0, r4, #0
	bl ov70_022650E4
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	bl ov70_0225D054
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02265370
	movs r0, #6
	ldr r1, [sp, #0x10]
	lsls r0, r0, #0x10
	cmp r1, r0
	bge _02264FB6
	movs r0, #0
	strb r0, [r4, #0xb]
	adds r0, r6, #0
	movs r1, #0xd
	bl ov70_02262E88
	b _022650D2
_02264F94:
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	movs r2, #2
	movs r3, #1
	bl ov70_0225CDAC
	adds r0, r6, #0
	movs r1, #7
	bl ov70_02262E88
	b _022650D2
_02264FAA:
	ldr r0, [r4, #0xc]
	movs r1, #5
	bl ov70_0225CD60
	cmp r0, #0
	beq _02264FB8
_02264FB6:
	b _022650D2
_02264FB8:
	ldrh r1, [r4, #4]
	adds r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02264FC2:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x1e
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0xf
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02264FE2:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0xf
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02265002:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x21
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0xf
	strh r0, [r4, #4]
	adds r0, r6, #0
	movs r1, #0xb
	bl ov70_02262E88
	b _022650D2
_02265022:
	adds r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022650D2
	ldrh r1, [r4, #4]
	adds r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02265036:
	adds r0, r5, #0
	bl ov70_0225DFEC
	ldrb r1, [r4, #0xa]
	adds r0, r6, #0
	bl ov70_02262E88
	b _022650D2
_02265046:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02265344
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02265370
	ldrb r0, [r4, #0xb]
	adds r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0x78
	bls _022650D2
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225DF34
	adds r0, r5, #0
	movs r1, #0
	bl ov70_0225DF38
	adds r0, r5, #0
	bl ov70_0225DFEC
	adds r0, r5, #0
	bl ov70_0225DEE8
	movs r1, #0xb
	bl FUN_0222E3E4
	adds r0, r6, #0
	movs r1, #0xe
	bl ov70_02262E88
	b _022650D2
_02265092:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02265344
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02265370
	b _022650D2
_022650A8:
	adds r0, r5, #0
	bl ov70_0225DF10
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov70_0225DFEC
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r6, #0
	bl ov70_02262E64
	ldr r1, [sp]
	ldr r2, _022650E0 @ =0x0226D9D0
	adds r0, r7, #0
	movs r3, #0
	bl ov70_02262E94
_022650D2:
	movs r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022650D8: .4byte 0x021BF67C
_022650DC: .4byte 0x000005AA
_022650E0: .4byte 0x0226D9D0
	thumb_func_end ov70_02264D38

	thumb_func_start ov70_022650E4
ov70_022650E4: @ 0x022650E4
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r0, [r0, #0xc]
	adds r4, r1, #0
	add r1, sp, #0
	bl ov70_0225D054
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r4, #0
	bl ov70_02260B18
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov70_022650E4

	thumb_func_start ov70_02265104
ov70_02265104: @ 0x02265104
	push {r3, r4, r5, lr}
	sub sp, #0x20
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_0222EC04
	ldr r1, [sp, #4]
	ldr r2, [sp]
	adds r0, r4, #0
	add r3, sp, #8
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	add r1, sp, #0x14
	bl ov70_0225D054
	movs r0, #1
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0x10
	adds r1, r1, r0
	ldr r0, [sp, #8]
	cmp r1, r0
	blt _0226513E
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, pc}
_0226513E:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02265104

	thumb_func_start ov70_02265144
ov70_02265144: @ 0x02265144
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	adds r5, r0, #0
	movs r0, #8
	adds r6, r1, #0
	ldrsh r1, [r5, r0]
	adds r7, r2, #0
	adds r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0x18
	bge _02265160
	movs r4, #0
	b _02265166
_02265160:
	movs r0, #0x18
	strh r0, [r5, #8]
	movs r4, #1
_02265166:
	ldr r0, [r5]
	add r1, sp, #0xc
	add r2, sp, #8
	bl FUN_0222EC04
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #8]
	adds r0, r6, #0
	add r3, sp, #0x1c
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	bl ov70_0225CD34
	add r1, sp, #0
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r2, [r1]
	add r0, sp, #4
	strh r2, [r1, #4]
	ldrh r2, [r1, #2]
	strh r2, [r1, #6]
	add r1, sp, #0x28
	bl ov70_0225C700
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x2c]
	subs r6, r1, r0
	movs r0, #8
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _022651BE
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _022651CC
_022651BE:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_022651CC:
	blx FUN_020E1740
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	movs r1, #6
	lsls r1, r1, #0xe
	blx FUN_020BCFD0
	str r0, [sp, #0x14]
	movs r0, #8
	ldrsh r2, [r5, r0]
	cmp r2, #4
	blt _02265252
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x30]
	subs r6, r1, r0
	subs r0, r2, #4
	cmp r0, #0
	ble _0226521A
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _02265228
_0226521A:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_02265228:
	blx FUN_020E1740
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	movs r1, #5
	lsls r1, r1, #0xe
	blx FUN_020BCFD0
	str r0, [sp, #0x18]
	b _02265256
_02265252:
	movs r0, #0
	str r0, [sp, #0x18]
_02265256:
	add r0, sp, #0x10
	add r1, sp, #0x28
	adds r2, r0, #0
	blx FUN_020BD17C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	ldr r3, [sp, #0x18]
	adds r0, r7, #0
	bl ov70_02260B18
	movs r0, #8
	ldrsh r1, [r5, r0]
	ldr r0, _022652B4 @ =0x00007FFF
	muls r0, r1, r0
	movs r1, #0x18
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r2, r0, #2
	ldr r0, _022652B8 @ =0x020F983C
	ldr r1, [sp, #0x14]
	ldrsh r3, [r0, r2]
	asrs r0, r3, #0x1f
	lsrs r2, r3, #0x10
	lsls r0, r0, #0x10
	orrs r0, r2
	movs r2, #2
	lsls r6, r3, #0x10
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r6, r2
	adcs r0, r3
	lsls r0, r0, #0x14
	lsrs r2, r2, #0xc
	orrs r2, r0
	adds r0, r1, r2
	str r0, [sp, #0x14]
	ldr r0, [r5, #0xc]
	add r1, sp, #0x10
	bl ov70_0225D048
	adds r0, r4, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022652B4: .4byte 0x00007FFF
_022652B8: .4byte 0x020F983C
	thumb_func_end ov70_02265144

	thumb_func_start ov70_022652BC
ov70_022652BC: @ 0x022652BC
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #8
	ldrsh r1, [r5, r0]
	adds r1, r1, #1
	strh r1, [r5, #8]
	ldrsh r0, [r5, r0]
	cmp r0, #0x10
	bge _022652D4
	movs r6, #0
	b _022652DA
_022652D4:
	movs r0, #0x10
	strh r0, [r5, #8]
	movs r6, #1
_022652DA:
	movs r0, #8
	ldrsh r0, [r5, r0]
	movs r3, #0
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1d
	subs r1, r1, r2
	movs r0, #0x1d
	rors r1, r0
	adds r1, r2, r1
	ldr r0, _0226533C @ =0x00007FFF
	adds r2, r1, #0
	muls r2, r0, r2
	asrs r0, r2, #2
	lsrs r0, r0, #0x1d
	adds r0, r2, r0
	lsls r0, r0, #0xd
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _02265340 @ =0x020F983C
	movs r2, #3
	ldrsh r0, [r0, r1]
	lsls r2, r2, #0xc
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r4, r2, #0xc
	orrs r4, r0
	ldr r0, [r5, #0xc]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, [sp, #4]
	add r1, sp, #0
	adds r0, r0, r4
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	bl ov70_0225D048
	adds r0, r6, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226533C: .4byte 0x00007FFF
_02265340: .4byte 0x020F983C
	thumb_func_end ov70_022652BC

	thumb_func_start ov70_02265344
ov70_02265344: @ 0x02265344
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	add r1, sp, #0
	add r2, sp, #4
	bl FUN_0222EC04
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r0, r4, #0
	add r3, sp, #8
	bl ov70_02262318
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	bl ov70_0225D048
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_02265344

	thumb_func_start ov70_02265370
ov70_02265370: @ 0x02265370
	push {r4, r5, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl FUN_0222EC04
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov70_0225E420
	cmp r0, #1
	bne _022653A4
	adds r0, r5, #0
	adds r0, #0x10
	bl ov70_02263334
	cmp r0, #0
	bne _022653B8
	adds r0, r5, #0
	adds r0, #0x10
	bl ov70_02263270
	b _022653B8
_022653A4:
	adds r0, r5, #0
	adds r0, #0x10
	bl ov70_02263334
	cmp r0, #1
	bne _022653B8
	adds r0, r5, #0
	adds r0, #0x10
	bl ov70_0226332C
_022653B8:
	adds r0, r5, #0
	adds r0, #0x10
	bl ov70_02263290
	adds r4, r0, #0
	ldr r0, [r5, #0xc]
	add r1, sp, #8
	bl ov70_0225D054
	ldr r0, [sp, #0xc]
	add r1, sp, #8
	adds r0, r0, r4
	str r0, [sp, #0xc]
	ldr r0, [r5, #0xc]
	bl ov70_0225D048
	add sp, #0x14
	pop {r4, r5, pc}
	thumb_func_end ov70_02265370

	thumb_func_start ov70_022653DC
ov70_022653DC: @ 0x022653DC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0x12
	bl ov70_0225E00C
	movs r4, #1
	movs r6, #0
	adds r7, r4, #0
_022653F0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov70_0225E30C
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #6
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov70_0225E044
	adds r4, r4, #1
	cmp r4, #0x12
	blt _022653F0
	adds r0, r5, #0
	movs r1, #1
	movs r2, #7
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E044
	ldr r2, [sp]
	ldr r3, _0226544C @ =0x0226DA98
	adds r2, #8
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	adds r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226544C: .4byte 0x0226DA98
	thumb_func_end ov70_022653DC

	thumb_func_start ov70_02265450
ov70_02265450: @ 0x02265450
	ldr r3, _02265458 @ =ov70_0225E034
	adds r0, r1, #0
	bx r3
	nop
_02265458: .4byte ov70_0225E034
	thumb_func_end ov70_02265450

	thumb_func_start ov70_0226545C
ov70_0226545C: @ 0x0226545C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r4, r2, #0
	bl ov70_0225DEE8
	str r0, [sp, #8]
	adds r0, r6, #0
	bl ov70_0225DEF0
	adds r1, r4, #0
	str r0, [sp, #0xc]
	bl ov70_0225CC70
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov70_02262E80
	str r0, [sp, #0x10]
	adds r0, r6, #0
	bl ov70_0225DF10
	str r0, [sp, #0x14]
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bhi _02265516
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022654A4: @ jump table
	.2byte _022654B0 - _022654A4 - 2 @ case 0
	.2byte _022654C0 - _022654A4 - 2 @ case 1
	.2byte _022654E4 - _022654A4 - 2 @ case 2
	.2byte _02265528 - _022654A4 - 2 @ case 3
	.2byte _022655DA - _022654A4 - 2 @ case 4
	.2byte _022655EC - _022654A4 - 2 @ case 5
_022654B0:
	adds r0, r5, #0
	movs r1, #8
	bl ov70_02262E3C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02262E88
_022654C0:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl FUN_0222E02C
	adds r6, r0, #0
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl FUN_0222E34C
	cmp r6, #1
	beq _022654DA
	cmp r0, #1
	bne _02265516
_022654DA:
	adds r0, r5, #0
	movs r1, #2
	bl ov70_02262E88
	b _02265620
_022654E4:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl FUN_0222E374
	adds r6, r0, #0
	bne _022654FA
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02262E88
	b _02265620
_022654FA:
	bl FUN_0222E8D8
	cmp r0, #1
	bne _02265516
	adds r0, r6, #0
	bl FUN_0222E858
	adds r2, r0, #0
	ldr r0, [sp, #0xc]
	adds r1, r4, #0
	bl ov70_0225CBB8
	cmp r0, #0
	bne _02265518
_02265516:
	b _02265620
_02265518:
	movs r1, #0
	bl ov70_0225D0C0
	adds r0, r5, #0
	movs r1, #3
	bl ov70_02262E88
	b _02265620
_02265528:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl FUN_0222E374
	cmp r0, #0
	bne _02265548
	cmp r7, #0
	beq _0226553E
	adds r0, r7, #0
	bl ov70_0225CC54
_0226553E:
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02262E88
	b _02265620
_02265548:
	bl FUN_0222E71C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov70_02265CCC
	cmp r0, #0
	beq _022655A6
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_0225CDEC
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF6C
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF4C
	adds r0, r7, #0
	movs r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #0x14]
	ldr r2, _02265628 @ =0x0226D9F0
	ldr r3, [sp, #0x10]
	adds r1, r4, #0
	bl ov70_02262EC0
	b _02265620
_022655A6:
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #4
	bl ov70_0225CDEC
	adds r0, r5, #0
	movs r1, #4
	bl ov70_02262E88
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF4C
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF6C
	adds r0, r7, #0
	movs r1, #1
	bl ov70_0225D0C0
	b _02265620
_022655DA:
	adds r0, r7, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _02265620
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02265620
_022655EC:
	adds r0, r5, #0
	bl ov70_02262E64
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	movs r2, #2
	bl ov70_0225CDEC
	ldr r0, [sp, #0x14]
	ldr r2, _0226562C @ =0x0226D9D8
	adds r1, r4, #0
	movs r3, #0
	bl ov70_02262E94
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov70_0225DF4C
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov70_0225DF6C
_02265620:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265628: .4byte 0x0226D9F0
_0226562C: .4byte 0x0226D9D8
	thumb_func_end ov70_0226545C

	thumb_func_start ov70_02265630
ov70_02265630: @ 0x02265630
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r1, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r4, r2, #0
	bl ov70_0225DEE8
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x10]
	adds r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r1, r4, #0
	bl ov70_0225CC70
	adds r7, r0, #0
	ldr r0, [sp, #0x10]
	bl ov70_0225CCAC
	ldr r0, [sp, #8]
	bl ov70_02262E80
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	bl ov70_02262E84
	cmp r0, #0
	beq _0226567A
	cmp r0, #1
	beq _0226568C
	b _022657BA
_0226567A:
	ldr r0, [sp, #8]
	movs r1, #8
	bl ov70_02262E3C
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	movs r1, #1
	bl ov70_02262E88
_0226568C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0222E058
	cmp r0, #0
	beq _022656CE
	ldr r0, [sp, #8]
	bl ov70_02262E64
	ldr r0, [sp, #0x10]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_0225CDEC
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF6C
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF4C
	ldr r0, [sp, #0xc]
	ldr r2, _022657C0 @ =0x0226D9E0
	adds r1, r4, #0
	movs r3, #0
	bl ov70_02262E94
	b _022657BA
_022656CE:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0222E09C
	adds r0, r6, #0
	bl FUN_0222E170
	cmp r0, #1
	bne _0226572E
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0222EBA4
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _0226572E
	ldr r0, [sp, #0x10]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_0225CDEC
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF6C
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF4C
	adds r0, r7, #0
	movs r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #8]
	bl ov70_02262E64
	ldr r0, [sp, #0xc]
	ldr r2, _022657C4 @ =0x0226D9E8
	ldr r3, [sp, #0x14]
	adds r1, r4, #0
	bl ov70_02262E94
	b _022657BA
_0226572E:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0222E374
	bl FUN_0222E71C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	adds r1, r6, #0
	adds r2, r5, #0
	adds r3, r7, #0
	bl ov70_02265CCC
	cmp r0, #0
	beq _0226578C
	ldr r0, [sp, #0x10]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_0225CDEC
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF6C
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF4C
	adds r0, r7, #0
	movs r1, #0
	bl ov70_0225D030
	ldr r0, [sp, #0xc]
	ldr r2, _022657C8 @ =0x0226D9F0
	ldr r3, [sp, #0x14]
	adds r1, r4, #0
	bl ov70_02262EC0
	b _022657BA
_0226578C:
	adds r0, r6, #0
	adds r1, r4, #0
	bl FUN_0222EB54
	cmp r0, #1
	bne _022657BA
	ldr r0, [sp, #0x10]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_0225CDEC
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF4C
	ldr r0, [sp, #0xc]
	ldr r2, _022657CC @ =0x0226DA18
	adds r1, r4, #0
	movs r3, #0
	bl ov70_02262EC0
_022657BA:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022657C0: .4byte 0x0226D9E0
_022657C4: .4byte 0x0226D9E8
_022657C8: .4byte 0x0226D9F0
_022657CC: .4byte 0x0226DA18
	thumb_func_end ov70_02265630

	thumb_func_start ov70_022657D0
ov70_022657D0: @ 0x022657D0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	str r2, [sp]
	adds r0, r6, #0
	bl ov70_0225DEF0
	ldr r1, [sp]
	adds r7, r0, #0
	bl ov70_0225CC70
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022657FC
	cmp r0, #1
	beq _0226580E
	cmp r0, #2
	beq _02265820
	b _02265836
_022657FC:
	adds r0, r7, #0
	adds r1, r4, #0
	movs r2, #3
	bl ov70_0225CDEC
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02265836
_0226580E:
	adds r0, r4, #0
	bl ov70_0225CE38
	cmp r0, #0
	beq _02265836
	adds r0, r5, #0
	bl ov70_02262E8C
	b _02265836
_02265820:
	adds r0, r4, #0
	bl ov70_0225CC54
	adds r0, r6, #0
	bl ov70_0225DF10
	ldr r1, [sp]
	ldr r2, _0226583C @ =0x0226DA10
	movs r3, #0
	bl ov70_02262E94
_02265836:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226583C: .4byte 0x0226DA10
	thumb_func_end ov70_022657D0

	thumb_func_start ov70_02265840
ov70_02265840: @ 0x02265840
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r7, r2, #0
	bl ov70_0225DEE8
	str r0, [sp]
	adds r0, r6, #0
	bl ov70_0225DEF0
	str r0, [sp, #8]
	adds r0, r6, #0
	bl ov70_0225DEF8
	str r0, [sp, #4]
	adds r0, r5, #0
	bl ov70_02262E80
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #4
	bhi _022658DE
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02265880: @ jump table
	.2byte _0226588A - _02265880 - 2 @ case 0
	.2byte _022658D4 - _02265880 - 2 @ case 1
	.2byte _0226593A - _02265880 - 2 @ case 2
	.2byte _022659E8 - _02265880 - 2 @ case 3
	.2byte _02265A58 - _02265880 - 2 @ case 4
_0226588A:
	adds r0, r5, #0
	movs r1, #0x20
	bl ov70_02262E3C
	adds r4, r0, #0
	ldr r0, [sp, #8]
	adds r1, r7, #0
	bl ov70_0225CC70
	str r0, [r4]
	ldr r0, [sp]
	adds r1, r7, #0
	bl FUN_0222EBA4
	movs r1, #0
	mvns r1, r1
	str r0, [r4, #4]
	cmp r0, r1
	bne _022658B4
	bl FUN_02022974
_022658B4:
	adds r2, r4, #0
	ldr r0, [r4, #4]
	adds r1, r4, #4
	adds r2, #8
	bl FUN_0222EC04
	ldr r0, [sp, #8]
	ldr r1, [r4]
	movs r2, #3
	bl ov70_0225CDEC
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02262E88
	b _02265A74
_022658D4:
	ldr r0, [r4]
	bl ov70_0225CE38
	cmp r0, #0
	bne _022658E0
_022658DE:
	b _02265A74
_022658E0:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x34
	bl ov70_02262318
	movs r0, #1
	ldr r1, [sp, #0x34]
	lsls r0, r0, #0x10
	subs r0, r1, r0
	str r0, [r4, #0x10]
	ldr r0, [r4]
	add r1, sp, #0x34
	bl ov70_0225D054
	ldr r0, [sp, #0x38]
	mov r3, sp
	str r0, [r4, #0xc]
	movs r1, #0
	str r1, [r4, #0x14]
	add r0, sp, #0xc
	strh r1, [r0]
	strh r1, [r0, #2]
	add r1, sp, #0xc
	ldrh r2, [r1]
	ldr r0, [r4]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov70_0225CCB4
	ldr r0, _02265A7C @ =0x0000064F
	bl FUN_02005748
	ldr r0, [r4]
	movs r1, #1
	bl ov70_0225D084
	adds r0, r5, #0
	movs r1, #2
	bl ov70_02262E88
	b _02265A74
_0226593A:
	ldr r0, [r4, #0x14]
	movs r6, #0
	adds r0, r0, #1
	str r0, [r4, #0x14]
	cmp r0, #0x18
	blt _0226594C
	movs r0, #0x18
	str r0, [r4, #0x14]
	movs r6, #1
_0226594C:
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x28
	bl ov70_02262318
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	str r0, [sp, #0x24]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0xc]
	subs r7, r1, r0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	ble _0226597E
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226598C
_0226597E:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226598C:
	blx FUN_020E1740
	asrs r1, r0, #0x1f
	asrs r3, r7, #0x1f
	adds r2, r7, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r0, r0, r2
	adcs r1, r3
	lsls r1, r1, #0x14
	lsrs r0, r0, #0xc
	orrs r0, r1
	movs r1, #6
	lsls r1, r1, #0xe
	blx FUN_020BCFD0
	str r0, [sp, #0x20]
	ldr r1, [r4, #0xc]
	adds r0, r0, r1
	str r0, [sp, #0x20]
	ldr r0, [r4]
	add r1, sp, #0x1c
	bl ov70_0225D048
	cmp r6, #1
	bne _02265A74
	ldr r0, [r4]
	movs r1, #0
	bl ov70_0225D084
	ldr r0, [r4]
	movs r1, #8
	bl ov70_0225D0B4
	ldr r0, [r4]
	movs r1, #2
	bl ov70_0225D060
	adds r0, r5, #0
	movs r1, #3
	bl ov70_02262E88
	b _02265A74
_022659E8:
	ldr r1, [r4, #4]
	adds r0, r6, #0
	bl ov70_0225E420
	cmp r0, #1
	bne _02265A0A
	adds r0, r4, #0
	adds r0, #0x18
	bl ov70_02263334
	cmp r0, #0
	bne _02265A1E
	adds r0, r4, #0
	adds r0, #0x18
	bl ov70_02263270
	b _02265A1E
_02265A0A:
	adds r0, r4, #0
	adds r0, #0x18
	bl ov70_02263334
	cmp r0, #1
	bne _02265A1E
	adds r0, r4, #0
	adds r0, #0x18
	bl ov70_0226332C
_02265A1E:
	adds r0, r4, #0
	adds r0, #0x18
	bl ov70_02263290
	adds r6, r0, #0
	ldr r0, [sp, #4]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	add r3, sp, #0x10
	bl ov70_02262318
	ldr r0, [sp, #0x14]
	add r1, sp, #0x10
	adds r0, r0, r6
	str r0, [sp, #0x14]
	ldr r0, [r4]
	bl ov70_0225D048
	ldr r0, [sp]
	ldr r1, [r4, #4]
	bl FUN_0222EB7C
	cmp r0, #2
	bne _02265A74
	adds r0, r5, #0
	movs r1, #4
	bl ov70_02262E88
	b _02265A74
_02265A58:
	ldr r0, [r4]
	bl ov70_0225CC54
	adds r0, r5, #0
	bl ov70_02262E64
	adds r0, r6, #0
	bl ov70_0225DF10
	ldr r2, _02265A80 @ =0x0226DA10
	adds r1, r7, #0
	movs r3, #0
	bl ov70_02262E94
_02265A74:
	movs r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02265A7C: .4byte 0x0000064F
_02265A80: .4byte 0x0226DA10
	thumb_func_end ov70_02265840

	thumb_func_start ov70_02265A84
ov70_02265A84: @ 0x02265A84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r1, [sp]
	adds r7, r0, #0
	adds r4, r2, #0
	bl ov70_02262E38
	adds r6, r0, #0
	ldr r0, [sp]
	bl ov70_0225DEE8
	str r0, [sp, #8]
	ldr r0, [sp]
	bl ov70_0225DEF0
	str r0, [sp, #0xc]
	adds r1, r4, #0
	bl ov70_0225CC70
	adds r5, r0, #0
	ldr r0, [sp, #0xc]
	bl ov70_0225CCAC
	str r0, [sp, #0x10]
	adds r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0xa
	bhi _02265B68
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02265ACA: @ jump table
	.2byte _02265AE0 - _02265ACA - 2 @ case 0
	.2byte _02265AF8 - _02265ACA - 2 @ case 1
	.2byte _02265B0A - _02265ACA - 2 @ case 2
	.2byte _02265B1C - _02265ACA - 2 @ case 3
	.2byte _02265B5E - _02265ACA - 2 @ case 4
	.2byte _02265B94 - _02265ACA - 2 @ case 5
	.2byte _02265C3E - _02265ACA - 2 @ case 6
	.2byte _02265B0A - _02265ACA - 2 @ case 7
	.2byte _02265C50 - _02265ACA - 2 @ case 8
	.2byte _02265B0A - _02265ACA - 2 @ case 9
	.2byte _02265C9E - _02265ACA - 2 @ case 10
_02265AE0:
	ldrb r0, [r6, #4]
	cmp r0, #0
	bne _02265AEE
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265AEE:
	adds r0, r7, #0
	movs r1, #3
	bl ov70_02262E88
	b _02265CC6
_02265AF8:
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	movs r2, #3
	bl ov70_0225CDEC
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B0A:
	adds r0, r5, #0
	bl ov70_0225CE38
	cmp r0, #1
	bne _02265B68
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B1C:
	adds r0, r5, #0
	bl ov70_0225CD34
	add r2, sp, #0x14
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	add r1, sp, #0x1c
	strh r0, [r2, #8]
	ldrh r0, [r2, #2]
	strh r0, [r2, #0xa]
	adds r0, r5, #0
	bl ov70_0225D03C
	adds r0, r5, #0
	bl ov70_0225D0CC
	cmp r0, #0
	bne _02265B4C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_0225D0C0
_02265B4C:
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	movs r2, #4
	bl ov70_0225CDEC
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265B5E:
	adds r0, r5, #0
	bl ov70_0225CE38
	cmp r0, #1
	beq _02265B6A
_02265B68:
	b _02265CC6
_02265B6A:
	adds r0, r7, #0
	bl ov70_02262E8C
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	movs r2, #0
	bl ov70_0225CDEC
	lsls r1, r4, #0x18
	ldr r0, [sp]
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov70_0225DF4C
	lsls r1, r4, #0x18
	ldr r0, [sp]
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov70_0225DF6C
	b _02265CC6
_02265B94:
	movs r0, #0
	str r0, [sp, #4]
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _02265BD4
	ldr r0, [sp, #8]
	bl FUN_0222EEAC
	cmp r0, #0
	bne _02265BD4
	ldr r0, [sp, #8]
	bl FUN_0222E3BC
	bl FUN_0222E71C
	cmp r0, #9
	bne _02265BD4
	ldr r0, [sp, #8]
	bl FUN_0222EEA0
	adds r0, r5, #0
	movs r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	adds r3, r0, #0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	movs r2, #0
	bl ov70_0225CDAC
_02265BD4:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl FUN_0222E374
	adds r5, r0, #0
	bne _02265BE6
	movs r0, #1
	str r0, [sp, #4]
	b _02265C18
_02265BE6:
	ldrb r0, [r6, #3]
	cmp r0, #1
	bne _02265BFC
	ldr r0, [sp, #8]
	bl FUN_0222EDF4
	cmp r0, #0
	bne _02265BFC
	movs r0, #1
	str r0, [sp, #4]
	b _02265C18
_02265BFC:
	ldr r0, [sp, #8]
	adds r1, r4, #0
	bl FUN_0222E09C
	cmp r0, #0
	beq _02265C18
	adds r0, r5, #0
	bl FUN_0222E71C
	ldrb r1, [r6, #2]
	cmp r0, r1
	beq _02265C18
	movs r0, #1
	str r0, [sp, #4]
_02265C18:
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02265CC6
	adds r0, r7, #0
	bl ov70_02262E8C
	lsls r1, r4, #0x18
	ldr r0, [sp]
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF4C
	lsls r1, r4, #0x18
	ldr r0, [sp]
	lsrs r1, r1, #0x18
	movs r2, #1
	bl ov70_0225DF6C
	b _02265CC6
_02265C3E:
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	movs r2, #3
	bl ov70_0225CDEC
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265C50:
	ldr r0, [sp, #0xc]
	bl ov70_0225CCAC
	ldrb r1, [r6]
	ldrb r2, [r6, #1]
	bl ov70_0225CEDC
	cmp r0, #0
	bne _02265CC6
	ldrb r0, [r6]
	mov r3, sp
	add r1, sp, #0x14
	lsls r0, r0, #4
	strh r0, [r1, #4]
	ldrb r0, [r6, #1]
	subs r3, r3, #4
	lsls r0, r0, #4
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	strh r2, [r3]
	ldrh r1, [r1, #6]
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov70_0225CCB4
	adds r0, r5, #0
	add r1, sp, #0x18
	bl ov70_0225D03C
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	movs r2, #4
	bl ov70_0225CDEC
	adds r0, r7, #0
	bl ov70_02262E8C
	b _02265CC6
_02265C9E:
	ldr r0, [sp, #0xc]
	adds r1, r5, #0
	movs r2, #2
	bl ov70_0225CDEC
	lsls r1, r4, #0x18
	ldr r0, [sp]
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov70_0225DF4C
	lsls r1, r4, #0x18
	ldr r0, [sp]
	lsrs r1, r1, #0x18
	movs r2, #0
	bl ov70_0225DF6C
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02265CC6:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02265A84

	thumb_func_start ov70_02265CCC
ov70_02265CCC: @ 0x02265CCC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r6, r2, #0
	adds r4, r0, #0
	adds r0, r6, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r7, #0
	bl ov70_0225DEF0
	adds r5, r0, #0
	bl ov70_0225CCAC
	str r0, [sp, #0xc]
	adds r0, r6, #0
	bl ov70_0225DF00
	adds r6, r0, #0
	ldr r0, [sp, #8]
	movs r1, #4
	bl ov70_0225CD60
	str r0, [sp, #0x10]
	movs r0, #1
	str r0, [sp, #0x20]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	cmp r0, #0xe
	bhi _02265D44
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02265D12: @ jump table
	.2byte _02265E50 - _02265D12 - 2 @ case 0
	.2byte _02265E50 - _02265D12 - 2 @ case 1
	.2byte _02265D30 - _02265D12 - 2 @ case 2
	.2byte _02265D4C - _02265D12 - 2 @ case 3
	.2byte _02265D66 - _02265D12 - 2 @ case 4
	.2byte _02265D80 - _02265D12 - 2 @ case 5
	.2byte _02265D9E - _02265D12 - 2 @ case 6
	.2byte _02265DBC - _02265D12 - 2 @ case 7
	.2byte _02265DDA - _02265D12 - 2 @ case 8
	.2byte _02265DFE - _02265D12 - 2 @ case 9
	.2byte _02265DF8 - _02265D12 - 2 @ case 10
	.2byte _02265E50 - _02265D12 - 2 @ case 11
	.2byte _02265E50 - _02265D12 - 2 @ case 12
	.2byte _02265E50 - _02265D12 - 2 @ case 13
	.2byte _02265E50 - _02265D12 - 2 @ case 14
_02265D30:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EB4 @ =0x0226DA28
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	beq _02265D46
_02265D44:
	b _02265E56
_02265D46:
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D4C:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EB8 @ =0x0226DA58
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D66:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EBC @ =0x0226DA38
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D80:
	adds r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC0 @ =0x0226DAB8
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #8
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265D9E:
	adds r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC4 @ =0x0226DAD8
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #8
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DBC:
	movs r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265EC8 @ =0x0226DA48
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DDA:
	adds r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02265ECC @ =0x0226DA68
	adds r0, r6, #0
	adds r1, r5, #0
	movs r3, #4
	bl ov70_02265ED0
	cmp r0, #0
	bne _02265E56
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DF8:
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265DFE:
	ldr r0, [sp, #4]
	bl FUN_0222EDF4
	cmp r0, #0
	bne _02265E0E
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E0E:
	ldr r0, [sp, #4]
	bl FUN_0222EE08
	cmp r0, #0
	bne _02265E1E
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E1E:
	ldr r0, [sp, #4]
	bl FUN_0222EE1C
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _02265E30
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E30:
	ldr r1, [sp, #0xc]
	adds r0, r5, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov70_0225CF4C
	cmp r0, #1
	beq _02265E44
	bl FUN_02022974
_02265E44:
	ldr r0, [sp, #0x20]
	bl FUN_0222C0AC
	str r0, [sp, #0x20]
	movs r7, #1
	b _02265E56
_02265E50:
	add sp, #0x24
	adds r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02265E56:
	ldr r0, [sp, #8]
	bl ov70_0225CD34
	add r1, sp, #0x14
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	subs r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	ldr r0, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #0xa]
	strh r1, [r3, #2]
	ldr r1, [r3]
	ldr r2, [sp, #0x20]
	bl ov70_0225CD04
	add r1, sp, #0x14
	movs r0, #4
	ldrsh r2, [r1, r0]
	asrs r0, r2, #3
	lsrs r0, r0, #0x1c
	adds r0, r2, r0
	asrs r0, r0, #4
	strb r0, [r4]
	movs r0, #6
	ldrsh r1, [r1, r0]
	asrs r0, r1, #3
	lsrs r0, r0, #0x1c
	adds r0, r1, r0
	asrs r0, r0, #4
	strb r0, [r4, #1]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	strb r0, [r4, #2]
	ldr r0, [sp, #0x3c]
	strb r7, [r4, #3]
	strb r0, [r4, #4]
	movs r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	nop
_02265EB4: .4byte 0x0226DA28
_02265EB8: .4byte 0x0226DA58
_02265EBC: .4byte 0x0226DA38
_02265EC0: .4byte 0x0226DAB8
_02265EC4: .4byte 0x0226DAD8
_02265EC8: .4byte 0x0226DA48
_02265ECC: .4byte 0x0226DA68
	thumb_func_end ov70_02265CCC

	thumb_func_start ov70_02265ED0
ov70_02265ED0: @ 0x02265ED0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r0, #0
	ldr r0, [sp, #0x20]
	adds r5, r2, #0
	str r1, [sp, #4]
	adds r6, r3, #0
	str r0, [sp, #0x20]
	ldr r4, _02265F34 @ =0x00000000
	beq _02265F2C
_02265EE4:
	movs r0, #0
	str r0, [sp]
	add r2, sp, #8
	ldr r1, [r5]
	adds r0, r7, #0
	adds r2, #2
	add r3, sp, #8
	bl ov70_0225C8D8
	cmp r0, #1
	bne _02265F24
	add r1, sp, #8
	add r2, sp, #8
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	ldr r0, [sp, #4]
	bl ov70_0225CE7C
	cmp r0, #0
	bne _02265F24
	add r1, sp, #8
	ldrh r0, [r1, #2]
	lsls r2, r0, #4
	ldr r0, [sp, #0x20]
	strh r2, [r0]
	ldrh r0, [r1]
	lsls r1, r0, #4
	ldr r0, [sp, #0x20]
	add sp, #0xc
	strh r1, [r0, #2]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02265F24:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r6
	blo _02265EE4
_02265F2C:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02265F34: .4byte 0x00000000
	thumb_func_end ov70_02265ED0

	thumb_func_start ov70_02265F38
ov70_02265F38: @ 0x02265F38
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r7, r0, #0
	adds r5, r1, #0
	str r2, [sp, #0x10]
	bl ov70_02262E38
	adds r6, r0, #0
	adds r0, r7, #0
	bl ov70_02262E80
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x34]
	adds r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0x1b
	bhi _02266050
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02265F6E: @ jump table
	.2byte _02266050 - _02265F6E - 2 @ case 0
	.2byte _02266050 - _02265F6E - 2 @ case 1
	.2byte _02266050 - _02265F6E - 2 @ case 2
	.2byte _02266050 - _02265F6E - 2 @ case 3
	.2byte _02266050 - _02265F6E - 2 @ case 4
	.2byte _02266050 - _02265F6E - 2 @ case 5
	.2byte _02266050 - _02265F6E - 2 @ case 6
	.2byte _02266024 - _02265F6E - 2 @ case 7
	.2byte _02265FEE - _02265F6E - 2 @ case 8
	.2byte _02265FA6 - _02265F6E - 2 @ case 9
	.2byte _02265FA6 - _02265F6E - 2 @ case 10
	.2byte _02265FA6 - _02265F6E - 2 @ case 11
	.2byte _02265FA6 - _02265F6E - 2 @ case 12
	.2byte _02265FA6 - _02265F6E - 2 @ case 13
	.2byte _02265FA6 - _02265F6E - 2 @ case 14
	.2byte _02266050 - _02265F6E - 2 @ case 15
	.2byte _02266050 - _02265F6E - 2 @ case 16
	.2byte _02266024 - _02265F6E - 2 @ case 17
	.2byte _02266024 - _02265F6E - 2 @ case 18
	.2byte _02266024 - _02265F6E - 2 @ case 19
	.2byte _02266024 - _02265F6E - 2 @ case 20
	.2byte _02266024 - _02265F6E - 2 @ case 21
	.2byte _02266024 - _02265F6E - 2 @ case 22
	.2byte _02266050 - _02265F6E - 2 @ case 23
	.2byte _02266050 - _02265F6E - 2 @ case 24
	.2byte _02266050 - _02265F6E - 2 @ case 25
	.2byte _02265FA6 - _02265F6E - 2 @ case 26
	.2byte _02265FA6 - _02265F6E - 2 @ case 27
_02265FA6:
	ldrb r0, [r6, #1]
	bl FUN_02233224
	ldrh r1, [r4, #8]
	cmp r1, r0
	bls _02265FC0
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FC0:
	bl FUN_02035E18
	ldrh r1, [r4, #8]
	cmp r1, r0
	ble _02265FD8
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FD8:
	bl FUN_020388AC
	cmp r0, #0
	bne _02265FEE
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02266050
_02265FEE:
	bl FUN_02233374
	cmp r0, #1
	bne _0226600E
	ldrb r0, [r6, #1]
	bl FUN_02233224
	cmp r0, #1
	bhi _0226600E
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02266050
_0226600E:
	ldr r0, [r4, #0x10]
	subs r0, r0, #1
	str r0, [r4, #0x10]
	bpl _02266024
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02266050
_02266024:
	bl FUN_020380E4
	cmp r0, #5
	bhi _02266050
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02266038: @ jump table
	.2byte _02266050 - _02266038 - 2 @ case 0
	.2byte _02266050 - _02266038 - 2 @ case 1
	.2byte _02266044 - _02266038 - 2 @ case 2
	.2byte _02266044 - _02266038 - 2 @ case 3
	.2byte _02266044 - _02266038 - 2 @ case 4
	.2byte _02266044 - _02266038 - 2 @ case 5
_02266044:
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
_02266050:
	adds r0, r7, #0
	bl ov70_02262E84
	cmp r0, #0x1c
	bls _0226605E
	bl _022669AC
_0226605E:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226606A: @ jump table
	.2byte _022660A4 - _0226606A - 2 @ case 0
	.2byte _022660B6 - _0226606A - 2 @ case 1
	.2byte _022660FA - _0226606A - 2 @ case 2
	.2byte _02266118 - _0226606A - 2 @ case 3
	.2byte _0226613E - _0226606A - 2 @ case 4
	.2byte _022661AC - _0226606A - 2 @ case 5
	.2byte _022661CA - _0226606A - 2 @ case 6
	.2byte _022662B4 - _0226606A - 2 @ case 7
	.2byte _02266472 - _0226606A - 2 @ case 8
	.2byte _022664FA - _0226606A - 2 @ case 9
	.2byte _0226654E - _0226606A - 2 @ case 10
	.2byte _0226657A - _0226606A - 2 @ case 11
	.2byte _022665F2 - _0226606A - 2 @ case 12
	.2byte _02266620 - _0226606A - 2 @ case 13
	.2byte _0226665A - _0226606A - 2 @ case 14
	.2byte _02266700 - _0226606A - 2 @ case 15
	.2byte _02266750 - _0226606A - 2 @ case 16
	.2byte _02266776 - _0226606A - 2 @ case 17
	.2byte _0226679E - _0226606A - 2 @ case 18
	.2byte _022667AE - _0226606A - 2 @ case 19
	.2byte _02266806 - _0226606A - 2 @ case 20
	.2byte _02266866 - _0226606A - 2 @ case 21
	.2byte _022668B8 - _0226606A - 2 @ case 22
	.2byte _02266902 - _0226606A - 2 @ case 23
	.2byte _02266914 - _0226606A - 2 @ case 24
	.2byte _02266926 - _0226606A - 2 @ case 25
	.2byte _0226693A - _0226606A - 2 @ case 26
	.2byte _0226695E - _0226606A - 2 @ case 27
	.2byte _02266988 - _0226606A - 2 @ case 28
_022660A4:
	adds r0, r7, #0
	movs r1, #0x44
	bl ov70_02262E3C
	adds r0, r7, #0
	bl ov70_02262E8C
	bl _022669AC
_022660B6:
	ldr r0, [sp, #0x34]
	bl FUN_0222E210
	cmp r0, #0
	beq _022660D0
	movs r0, #7
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x1c
	bl ov70_02262E88
	bl _022669AC
_022660D0:
	ldr r0, [sp, #0x34]
	bl FUN_0222E190
	cmp r0, #0
	beq _022660EA
	movs r0, #2
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x1c
	bl ov70_02262E88
	bl _022669AC
_022660EA:
	ldr r0, _022663C4 @ =0x000005DD
	bl FUN_02005748
	adds r0, r7, #0
	bl ov70_02262E8C
	bl _022669AC
_022660FA:
	ldrb r1, [r6, #2]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E27C
	movs r0, #3
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #0
	bl ov70_02266AF0
	bl _022669AC
_02266118:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	movs r3, #1
	bl ov70_02266B30
	adds r4, #0x18
	movs r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r7, #0
	movs r1, #4
	bl ov70_02262E88
	bl _022669AC
_0226613E:
	movs r0, #0
	str r0, [sp, #0x30]
	adds r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #2
	bhi _0226615A
	cmp r0, #0
	beq _02266182
	cmp r0, #1
	beq _02266174
	cmp r0, #2
	beq _02266162
	b _0226618E
_0226615A:
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bne _0226618E
_02266162:
	movs r0, #5
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x1c
	bl ov70_02262E88
	movs r0, #1
	str r0, [sp, #0x30]
	b _0226618E
_02266174:
	adds r0, r7, #0
	movs r1, #5
	bl ov70_02262E88
	movs r0, #1
	str r0, [sp, #0x30]
	b _0226618E
_02266182:
	adds r0, r7, #0
	movs r1, #6
	bl ov70_02262E88
	movs r0, #1
	str r0, [sp, #0x30]
_0226618E:
	ldr r0, [sp, #0x30]
	cmp r0, #1
	beq _02266198
	bl _022669AC
_02266198:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02266BA0
	b _022669AC
_022661AC:
	ldrb r1, [r6, #2]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E27C
	movs r0, #2
	str r0, [sp]
	ldrb r3, [r6, #2]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	adds r3, #0x22
	bl ov70_02266AF0
	b _022669AC
_022661CA:
	ldr r0, [sp, #0x34]
	bl FUN_0222E190
	cmp r0, #0
	beq _022661E2
	movs r0, #2
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_022661E2:
	ldrb r0, [r6, #1]
	bl FUN_02233184
	cmp r0, #1
	bne _02266226
	ldrb r0, [r6, #1]
	bl FUN_022331E4
	cmp r0, #0
	beq _02266200
	ldrb r0, [r6, #1]
	bl FUN_022331A4
	cmp r0, #0
	bne _0226620E
_02266200:
	movs r0, #1
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_0226620E:
	ldrb r0, [r6, #1]
	bl FUN_022332F8
	cmp r0, #0
	bne _02266226
	movs r0, #7
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_02266226:
	ldrb r0, [r6, #1]
	bl FUN_022332F8
	strh r0, [r4]
	movs r0, #0xe1
	lsls r0, r0, #2
	str r0, [r4, #0x10]
	movs r1, #0
	ldrsh r2, [r4, r1]
	ldr r0, _022663C8 @ =0x0000014A
	cmp r2, r0
	ble _02266248
	adds r0, r5, #0
	movs r2, #0xa
	bl ov70_0225E20C
	b _02266254
_02266248:
	movs r0, #1
	str r0, [r4, #0x14]
	adds r0, r5, #0
	movs r2, #0xb
	bl ov70_0225E20C
_02266254:
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225DFBC
	ldrb r0, [r6, #1]
	bl FUN_0203883C
	bl FUN_02233374
	cmp r0, #1
	bne _0226628A
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #0x34]
	ldr r3, [sp, #0x10]
	movs r2, #1
	bl FUN_0222EA10
	movs r0, #1
	strb r0, [r4, #7]
_0226628A:
	movs r0, #0
	ldrsh r0, [r4, r0]
	adds r1, r5, #0
	movs r3, #1
	str r0, [sp]
	ldrb r2, [r6, #2]
	adds r0, r4, #0
	adds r0, #0x3c
	bl ov70_02266C68
	adds r4, #0x3c
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov70_02266CFC
	adds r0, r7, #0
	movs r1, #7
	bl ov70_02262E88
	b _022669AC
_022662B4:
	bl FUN_020388AC
	str r0, [sp, #0x2c]
	ldrb r0, [r6, #1]
	bl FUN_02233224
	str r0, [sp, #0x28]
	ldrb r0, [r6, #1]
	bl FUN_022332F8
	strh r0, [r4]
	movs r1, #0
	adds r0, r4, #0
	ldrsh r1, [r4, r1]
	adds r0, #0x3c
	bl ov70_02266CCC
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, _022663C8 @ =0x0000014A
	cmp r1, r0
	bgt _02266308
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _02266308
	adds r0, r5, #0
	bl ov70_0225DFCC
	movs r0, #1
	str r0, [r4, #0x14]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0xb
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225DFBC
_02266308:
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02266328
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266328:
	cmp r0, #2
	bne _0226637E
	movs r0, #8
	strb r0, [r6]
	ldr r0, [sp, #0x28]
	cmp r0, #4
	bne _0226633A
	movs r6, #0x10
	b _0226633C
_0226633A:
	movs r6, #0x12
_0226633C:
	adds r0, r5, #0
	bl ov70_0225DFCC
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225DFBC
	adds r0, r7, #0
	movs r1, #9
	bl ov70_02262E88
	ldr r0, [sp, #0x28]
	movs r1, #0
	strh r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x3c
	bl ov70_02266CCC
	adds r4, #0x3c
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	b _022669AC
_0226637E:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bne _022663D4
	ldr r0, _022663CC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #2
	tst r0, r1
	beq _022663D4
	ldr r0, _022663D0 @ =0x000005DC
	bl FUN_02005748
	bl FUN_02233374
	cmp r0, #0
	bne _022663B0
	movs r0, #6
	strb r0, [r6]
	adds r0, r5, #0
	bl ov70_0225DFCC
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022663B0:
	movs r0, #6
	strb r0, [r6]
	adds r0, r5, #0
	bl ov70_0225DFCC
	adds r0, r7, #0
	movs r1, #0x10
	bl ov70_02262E88
	b _022669AC
	.align 2, 0
_022663C4: .4byte 0x000005DD
_022663C8: .4byte 0x0000014A
_022663CC: .4byte 0x021BF67C
_022663D0: .4byte 0x000005DC
_022663D4:
	bl FUN_02233374
	cmp r0, #1
	bne _02266420
	ldrb r1, [r4, #7]
	ldr r0, [sp, #0x28]
	cmp r1, r0
	beq _02266400
	strb r0, [r4, #7]
	cmp r0, #4
	beq _02266400
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x10]
	bl FUN_0222EA10
_02266400:
	movs r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _02266420
	ldrb r0, [r6, #1]
	bl FUN_02233224
	cmp r0, #1
	bhi _02266420
	movs r0, #3
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266420:
	ldrb r0, [r6, #1]
	bl FUN_02233184
	cmp r0, #1
	bne _02266442
	ldrb r0, [r6, #1]
	bl FUN_022331A4
	cmp r0, #0
	bne _02266442
	movs r0, #0
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266442:
	movs r0, #0
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022664EA
	adds r0, r7, #0
	movs r1, #8
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x12
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225DFBC
	b _022669AC
_02266472:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	bl ov70_02266CCC
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	bl FUN_020388AC
	adds r5, r0, #0
	ldrb r0, [r6, #1]
	bl FUN_02233224
	str r0, [sp, #0x24]
	bl FUN_020380E4
	cmp r0, #3
	beq _022664A2
	cmp r0, #4
	bne _022664AE
_022664A2:
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
_022664AE:
	cmp r5, #0
	bne _022664C0
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022664C0:
	cmp r5, #2
	bne _022664D6
	movs r0, #8
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #9
	bl ov70_02262E88
	ldr r0, [sp, #0x24]
	strh r0, [r4, #8]
	b _022669AC
_022664D6:
	ldrb r0, [r6, #1]
	bl FUN_02233184
	cmp r0, #1
	bne _022664EA
	ldrb r0, [r6, #1]
	bl FUN_022331A4
	cmp r0, #0
	beq _022664EC
_022664EA:
	b _022669AC
_022664EC:
	movs r0, #0
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022664FA:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	bl ov70_02266CCC
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	adds r0, r5, #0
	bl ov70_0225DEE8
	ldrb r1, [r6, #3]
	bl FUN_0222E3E4
	bl FUN_02038B40
	adds r0, r5, #0
	bl ov70_0225DEE8
	bl FUN_0222E0C4
	movs r1, #0
	bl FUN_020329E0
	ldr r0, [sp, #0x34]
	bl FUN_0222E918
	bl FUN_020331F4
	movs r0, #0
	bl FUN_0203632C
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0xa
	movs r3, #0x11
	bl ov70_02266B18
	b _022669AC
_0226654E:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	bl ov70_02266CCC
	adds r4, #0x3c
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	bl FUN_02032AC0
	bl FUN_0203608C
	bl FUN_02032E1C
	adds r0, r7, #0
	movs r1, #0xb
	bl ov70_02262E88
	b _022669AC
_0226657A:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	bl ov70_02266CCC
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	bl FUN_02032E44
	cmp r0, #0xff
	beq _022665A4
_02266598:
	bl FUN_02032E1C
	bl FUN_02032E44
	cmp r0, #0xff
	bne _02266598
_022665A4:
	bl FUN_02032E64
	adds r5, r0, #0
	ldrb r0, [r6, #1]
	bl FUN_02233224
	cmp r5, r0
	blo _022665DC
	bl FUN_02233374
	cmp r0, #1
	bne _022665CA
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _022665CA
	bl FUN_022330CC
	movs r0, #1
	strh r0, [r4, #2]
_022665CA:
	bl FUN_02233128
	cmp r0, #1
	bne _0226664E
	adds r0, r7, #0
	movs r1, #0xc
	bl ov70_02262E88
	b _022669AC
_022665DC:
	bl FUN_02233128
	cmp r0, #1
	bne _0226664E
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _022669AC
_022665F2:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	bl ov70_02266CCC
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	bl FUN_020365F4
	ldr r0, [sp, #0x34]
	bl FUN_0222E238
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0xd
	movs r3, #0xe
	bl ov70_02266B18
	b _022669AC
_02266620:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	bl ov70_02266CCC
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	ldr r0, [sp, #0x34]
	bl FUN_0222E344
	str r0, [r4, #0xc]
	bl FUN_0203608C
	adds r4, #0xc
	adds r1, r4, #0
	bl FUN_02036614
	cmp r0, #1
	beq _02266650
_0226664E:
	b _022669AC
_02266650:
	adds r0, r7, #0
	movs r1, #0xe
	bl ov70_02262E88
	b _022669AC
_0226665A:
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	bl ov70_02266CCC
	adds r4, #0x3c
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CF0
	bl FUN_02032E64
	str r0, [sp, #0x20]
	bl FUN_0203608C
	movs r5, #0
	str r0, [sp, #0x1c]
	str r5, [sp, #0x18]
	bl FUN_02233340
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x20]
	adds r4, r5, #0
	cmp r0, #0
	ble _022666DC
_0226668E:
	ldr r0, [sp, #0x1c]
	cmp r0, r4
	beq _022666BE
	adds r0, r4, #0
	bl FUN_0203664C
	str r0, [sp, #0x38]
	cmp r0, #0
	beq _022666D4
	ldr r1, [sp, #0x38]
	ldr r0, [sp, #0x34]
	ldr r1, [r1]
	adds r2, r4, #0
	bl FUN_0222E24C
	ldr r0, [sp, #0x38]
	ldr r1, [r0]
	ldr r0, [sp, #0x14]
	cmp r1, r0
	bne _022666BA
	movs r0, #1
	str r0, [sp, #0x18]
_022666BA:
	adds r5, r5, #1
	b _022666D4
_022666BE:
	ldr r0, [sp, #0x34]
	adds r1, r4, #0
	bl FUN_0222E27C
	bl FUN_02233374
	cmp r0, #1
	bne _022666D2
	movs r0, #1
	str r0, [sp, #0x18]
_022666D2:
	adds r5, r5, #1
_022666D4:
	ldr r0, [sp, #0x20]
	adds r4, r4, #1
	cmp r4, r0
	blt _0226668E
_022666DC:
	ldr r0, [sp, #0x20]
	cmp r5, r0
	bne _022667C0
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _022666F2
	adds r0, r7, #0
	movs r1, #0xf
	bl ov70_02262E88
	b _022669AC
_022666F2:
	movs r0, #4
	strb r0, [r6]
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _022669AC
_02266700:
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	bl FUN_02233374
	cmp r0, #1
	bne _0226673C
	ldr r0, [sp, #0x34]
	add r1, sp, #0x3c
	bl FUN_0222E294
	ldrb r0, [r6, #1]
	bl FUN_02233224
	add r3, sp, #0x3c
	adds r2, r0, #0
	ldrb r0, [r3, #1]
	str r0, [sp]
	ldrb r0, [r3, #2]
	str r0, [sp, #4]
	ldrb r0, [r3, #3]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	ldrb r1, [r6, #2]
	ldrb r3, [r3]
	ldr r0, [sp, #0x34]
	bl FUN_0222EA10
_0226673C:
	adds r0, r5, #0
	bl ov70_0225DFCC
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0x1c
	movs r3, #0x12
	bl ov70_02266B18
	b _022669AC
_02266750:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x1a
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	adds r0, r7, #0
	movs r1, #0x11
	bl ov70_02262E88
	adds r4, #0x3c
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02266CB0
	b _022669AC
_02266776:
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov70_02266BAC
	cmp r0, #0
	bne _022667C0
	adds r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022667C0
	adds r0, r7, #0
	movs r1, #0x12
	bl ov70_02262E88
	b _022669AC
_0226679E:
	adds r0, r5, #0
	bl ov70_0225E194
	adds r0, r7, #0
	movs r1, #0x13
	bl ov70_02262E88
	b _022669AC
_022667AE:
	adds r0, r5, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _022667C2
	cmp r0, #1
	beq _022667D8
	cmp r0, #2
	beq _022667E8
_022667C0:
	b _022669AC
_022667C2:
	adds r0, r5, #0
	bl ov70_0225E1F8
	adds r0, r7, #0
	movs r1, #0x17
	bl ov70_02262E88
	ldr r0, [sp, #0x34]
	bl FUN_0222E200
	b _022669AC
_022667D8:
	adds r0, r5, #0
	bl ov70_0225E1F8
	adds r0, r7, #0
	movs r1, #0x14
	bl ov70_02262E88
	b _022669AC
_022667E8:
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov70_02266BAC
	cmp r0, #1
	beq _022667FE
	b _022669AC
_022667FE:
	adds r0, r5, #0
	bl ov70_0225E1F8
	b _022669AC
_02266806:
	ldrb r0, [r6, #1]
	bl FUN_022332F8
	strh r0, [r4]
	movs r0, #0
	ldrsh r0, [r4, r0]
	adds r1, r5, #0
	movs r3, #1
	str r0, [sp]
	adds r0, r4, #0
	ldrb r2, [r6, #2]
	adds r0, #0x3c
	bl ov70_02266C68
	adds r0, r4, #0
	adds r0, #0x3c
	adds r1, r5, #0
	movs r2, #1
	bl ov70_02266CFC
	movs r1, #0
	ldrsh r2, [r4, r1]
	ldr r0, _022669B4 @ =0x0000014A
	cmp r2, r0
	ble _02266842
	adds r0, r5, #0
	movs r2, #0xa
	bl ov70_0225E20C
	b _0226684E
_02266842:
	movs r0, #1
	str r0, [r4, #0x14]
	adds r0, r5, #0
	movs r2, #0xb
	bl ov70_0225E20C
_0226684E:
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225DFBC
	adds r0, r7, #0
	movs r1, #7
	bl ov70_02262E88
	b _022669AC
_02266866:
	ldrb r0, [r6, #1]
	bl FUN_02233224
	movs r1, #8
	strb r1, [r6]
	cmp r0, #4
	bne _02266878
	movs r2, #0x10
	b _0226687A
_02266878:
	movs r2, #0x12
_0226687A:
	adds r0, r5, #0
	movs r1, #0
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225DFBC
	adds r0, r7, #0
	movs r1, #9
	bl ov70_02262E88
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	ldrb r2, [r6, #2]
	adds r0, #0x3c
	adds r1, r5, #0
	movs r3, #1
	bl ov70_02266C68
	adds r4, #0x3c
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov70_02266CFC
	b _022669AC
_022668B8:
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x12
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF9C
	adds r0, r5, #0
	bl ov70_0225DFBC
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	ldrb r2, [r6, #2]
	adds r0, #0x3c
	adds r1, r5, #0
	movs r3, #1
	bl ov70_02266C68
	adds r0, r4, #0
	adds r0, #0x3c
	movs r1, #0
	bl ov70_02266CCC
	adds r4, #0x3c
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov70_02266CF0
	adds r0, r7, #0
	movs r1, #8
	bl ov70_02262E88
	b _022669AC
_02266902:
	bl FUN_02032A70
	bl FUN_0203888C
	adds r0, r7, #0
	movs r1, #0x18
	bl ov70_02262E88
	b _022669AC
_02266914:
	bl FUN_020388AC
	cmp r0, #0
	bne _022669AC
	adds r0, r7, #0
	movs r1, #0x1c
	bl ov70_02262E88
	b _022669AC
_02266926:
	adds r0, r5, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _022669AC
	ldrb r1, [r4, #4]
	adds r0, r7, #0
	bl ov70_02262E88
	b _022669AC
_0226693A:
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _02266946
	subs r0, r0, #1
	strb r0, [r4, #5]
_02266946:
	movs r0, #5
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _022669AC
	ldrb r0, [r4, #6]
	bl FUN_020364F0
	adds r0, r7, #0
	movs r1, #0x1b
	bl ov70_02262E88
	b _022669AC
_0226695E:
	ldrh r0, [r4, #0xa]
	adds r0, r0, #1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0x96
	blo _02266974
	ldrb r0, [r4, #6]
	bl FUN_020364F0
	movs r0, #0
	strh r0, [r4, #0xa]
_02266974:
	ldrb r0, [r4, #6]
	bl FUN_02036540
	cmp r0, #0
	beq _022669AC
	ldrb r1, [r4, #4]
	adds r0, r7, #0
	bl ov70_02262E88
	b _022669AC
_02266988:
	adds r0, r5, #0
	bl ov70_0225DFEC
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02266BA0
	adds r4, #0x3c
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02266CB0
	adds r0, r7, #0
	bl ov70_02262E64
	add sp, #0x40
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022669AC:
	movs r0, #0
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022669B4: .4byte 0x0000014A
	thumb_func_end ov70_02265F38

	thumb_func_start ov70_022669B8
ov70_022669B8: @ 0x022669B8
	push {r4, lr}
	adds r4, r0, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022669CA
	cmp r0, #1
	beq _022669EC
	b _022669F8
_022669CA:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020388F4
	bl FUN_020382C0
	cmp r0, #0
	bne _022669E2
	bl FUN_02032A70
	bl FUN_0203888C
_022669E2:
	adds r0, r4, #0
	movs r1, #1
	bl ov70_02262E88
	b _022669F8
_022669EC:
	bl FUN_020382C0
	cmp r0, #1
	bne _022669F8
	movs r0, #1
	pop {r4, pc}
_022669F8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov70_022669B8

	thumb_func_start ov70_022669FC
ov70_022669FC: @ 0x022669FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	bl ov70_02262E80
	adds r4, r0, #0
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02266A1A
	cmp r0, #1
	beq _02266A90
	b _02266AE6
_02266A1A:
	adds r0, r6, #0
	movs r1, #8
	bl ov70_02262E3C
	str r0, [sp, #4]
	adds r0, r5, #0
	bl ov70_0225DF40
	cmp r0, #0x27
	beq _02266A38
	cmp r0, #0x28
	beq _02266A3E
	cmp r0, #0x29
	beq _02266A44
	b _02266A4A
_02266A38:
	movs r7, #0x2a
	movs r4, #0
	b _02266A54
_02266A3E:
	movs r7, #0x29
	movs r4, #1
	b _02266A54
_02266A44:
	movs r7, #0x2b
	movs r4, #2
	b _02266A54
_02266A4A:
	bl FUN_02022974
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266A54:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r5, #0
	movs r1, #1
	adds r2, r7, #0
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DFFC
	movs r3, #0
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	str r3, [sp]
	bl ov70_02266C68
	ldr r0, [sp, #4]
	adds r1, r5, #0
	movs r2, #1
	bl ov70_02266CFC
	adds r0, r6, #0
	bl ov70_02262E8C
	b _02266AE6
_02266A90:
	ldr r0, _02266AEC @ =0x021BF67C
	movs r1, #1
	ldr r0, [r0, #0x48]
	tst r1, r0
	bne _02266AAC
	movs r1, #0x10
	tst r1, r0
	bne _02266AAC
	movs r1, #0x20
	tst r1, r0
	bne _02266AAC
	movs r1, #0x80
	tst r0, r1
	beq _02266ADC
_02266AAC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02266CB0
	adds r0, r5, #0
	bl ov70_0225DFEC
	adds r0, r5, #0
	bl ov70_0225DEF0
	adds r4, r0, #0
	bl ov70_0225CCAC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r6, #0
	bl ov70_02262E64
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02266ADC:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov70_02266CFC
_02266AE6:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02266AEC: .4byte 0x021BF67C
	thumb_func_end ov70_022669FC

	thumb_func_start ov70_02266AF0
ov70_02266AF0: @ 0x02266AF0
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r6, #0
	movs r1, #0
	adds r2, r3, #0
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r6, #0
	bl ov70_0225DF8C
	ldr r0, [sp, #0x10]
	movs r1, #0x19
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl ov70_02262E88
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02266AF0

	thumb_func_start ov70_02266B18
ov70_02266B18: @ 0x02266B18
	strb r2, [r0, #4]
	strb r3, [r0, #6]
	movs r2, #0
	strb r2, [r0, #5]
	strh r2, [r0, #0xa]
	adds r0, r1, #0
	ldr r3, _02266B2C @ =ov70_02262E88
	movs r1, #0x1a
	bx r3
	nop
_02266B2C: .4byte ov70_02262E88
	thumb_func_end ov70_02266B18

	thumb_func_start ov70_02266B30
ov70_02266B30: @ 0x02266B30
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r6, r2, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r7, r3, #0
	bl ov70_0225E00C
	ldr r0, [sp]
	movs r4, #0
	str r6, [r0, #0x38]
	cmp r6, #0
	bls _02266B66
_02266B4C:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r7, r4
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov70_0225E044
	adds r4, r4, #1
	cmp r4, r6
	blo _02266B4C
_02266B66:
	ldr r2, [sp]
	ldr r3, _02266B9C @ =0x0226DC94
	adds r2, #0x18
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x38]
	strh r1, [r0, #0x28]
	ldr r1, [r0, #0x38]
	ldrh r0, [r0, #0x2a]
	cmp r0, r1
	bls _02266B8E
	ldr r0, [sp]
	strh r1, [r0, #0x2a]
_02266B8E:
	adds r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02266B9C: .4byte 0x0226DC94
	thumb_func_end ov70_02266B30

	thumb_func_start ov70_02266BA0
ov70_02266BA0: @ 0x02266BA0
	ldr r3, _02266BA8 @ =ov70_0225E034
	adds r0, r1, #0
	bx r3
	nop
_02266BA8: .4byte ov70_0225E034
	thumb_func_end ov70_02266BA0

	thumb_func_start ov70_02266BAC
ov70_02266BAC: @ 0x02266BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	adds r4, r2, #0
	adds r0, r1, #0
	adds r6, r3, #0
	bl ov70_0225DEE8
	str r0, [sp, #0x10]
	bl FUN_020388AC
	adds r7, r0, #0
	ldrb r0, [r4, #1]
	bl FUN_02233224
	adds r2, r0, #0
	cmp r7, #0
	bne _02266BE2
	movs r0, #4
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02266BE2:
	cmp r7, #2
	bne _02266BF6
	adds r0, r6, #0
	movs r1, #0x15
	strh r2, [r5, #8]
	bl ov70_02262E88
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02266BF6:
	ldrb r0, [r5, #7]
	cmp r0, r2
	beq _02266C16
	strb r2, [r5, #7]
	cmp r2, #4
	beq _02266C16
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldrb r1, [r4, #2]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl FUN_0222EA10
_02266C16:
	ldrb r0, [r4, #1]
	bl FUN_022332F8
	strh r0, [r5]
	movs r0, #0
	ldrsh r2, [r5, r0]
	cmp r2, #0
	bne _02266C50
	ldrb r0, [r4, #1]
	bl FUN_02233224
	cmp r0, #1
	bhi _02266C42
	movs r0, #3
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02266C42:
	adds r0, r6, #0
	movs r1, #0x16
	bl ov70_02262E88
	add sp, #0x14
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02266C50:
	ldr r1, _02266C64 @ =0x0000014A
	cmp r2, r1
	bgt _02266C60
	adds r0, r6, #0
	movs r1, #0x14
	bl ov70_02262E88
	movs r0, #1
_02266C60:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02266C64: .4byte 0x0000014A
	thumb_func_end ov70_02266BAC

	thumb_func_start ov70_02266C68
ov70_02266C68: @ 0x02266C68
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r3, #0
	adds r5, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	cmp r4, #2
	blo _02266C7A
	bl FUN_02022974
_02266C7A:
	movs r0, #0
	strb r0, [r5]
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	strb r0, [r5, #5]
	strb r0, [r5, #6]
	strb r0, [r5, #7]
	strb r4, [r5, #6]
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	strb r6, [r5, #3]
	bl ov70_02266CCC
	ldr r0, _02266CAC @ =0x0226DC90
	movs r1, #0x12
	ldrb r0, [r0, r4]
	movs r2, #3
	movs r3, #0xd
	str r0, [sp]
	adds r0, r7, #0
	bl ov70_0225E104
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02266CAC: .4byte 0x0226DC90
	thumb_func_end ov70_02266C68

	thumb_func_start ov70_02266CB0
ov70_02266CB0: @ 0x02266CB0
	movs r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	ldr r3, _02266CC8 @ =ov70_0225E12C
	adds r0, r1, #0
	bx r3
	.align 2, 0
_02266CC8: .4byte ov70_0225E12C
	thumb_func_end ov70_02266CB0

	thumb_func_start ov70_02266CCC
ov70_02266CCC: @ 0x02266CCC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	movs r1, #0x1e
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	movs r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	beq _02266CEE
	strh r1, [r4, #4]
	ldrb r1, [r4, #7]
	movs r0, #8
	orrs r0, r1
	strb r0, [r4, #7]
_02266CEE:
	pop {r4, pc}
	thumb_func_end ov70_02266CCC

	thumb_func_start ov70_02266CF0
ov70_02266CF0: @ 0x02266CF0
	push {r3, lr}
	movs r3, #0
	bl ov70_02266D08
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_02266CF0

	thumb_func_start ov70_02266CFC
ov70_02266CFC: @ 0x02266CFC
	push {r3, lr}
	movs r3, #1
	bl ov70_02266D08
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_02266CFC

	thumb_func_start ov70_02266D08
ov70_02266D08: @ 0x02266D08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r1, #0
	str r3, [sp, #4]
	cmp r2, #0
	beq _02266D1A
	movs r0, #0xff
	strb r0, [r5, #7]
_02266D1A:
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _02266D2A
	cmp r0, #1
	beq _02266D2E
	cmp r0, #2
	beq _02266D32
	b _02266D36
_02266D2A:
	movs r6, #0
	b _02266D3C
_02266D2E:
	movs r6, #1
	b _02266D3C
_02266D32:
	movs r6, #2
	b _02266D3C
_02266D36:
	bl FUN_02022974
	movs r6, #2
_02266D3C:
	adds r0, r6, #0
	bl FUN_02233184
	adds r7, r0, #0
	ldrb r0, [r5]
	cmp r0, r7
	beq _02266D52
	ldrb r1, [r5, #7]
	movs r0, #4
	orrs r0, r1
	strb r0, [r5, #7]
_02266D52:
	strb r7, [r5]
	adds r0, r6, #0
	bl FUN_022331A4
	ldrb r1, [r5, #2]
	cmp r1, r0
	beq _02266D68
	ldrb r2, [r5, #7]
	movs r1, #4
	orrs r1, r2
	strb r1, [r5, #7]
_02266D68:
	strb r0, [r5, #2]
	cmp r7, #1
	bne _02266D76
	adds r0, r6, #0
	bl FUN_022331E4
	b _02266D78
_02266D76:
	movs r0, #4
_02266D78:
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _02266D86
	ldrb r2, [r5, #7]
	movs r1, #2
	orrs r1, r2
	strb r1, [r5, #7]
_02266D86:
	strb r0, [r5, #1]
	ldrb r1, [r5, #7]
	movs r0, #1
	tst r0, r1
	beq _02266DC0
	movs r0, #0x10
	movs r1, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x68
	bl ov70_0225E14C
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x36
	bl ov70_0225E20C
	movs r2, #0
	adds r1, r0, #0
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov70_0225E13C
_02266DC0:
	ldrb r1, [r5, #7]
	movs r0, #4
	tst r0, r1
	beq _02266DFE
	movs r2, #0x10
	adds r0, r4, #0
	movs r1, #0x24
	movs r3, #0x68
	str r2, [sp]
	bl ov70_0225E14C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02266DFE
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _02266DFE
	ldrb r0, [r5]
	cmp r0, #1
	bne _02266DFE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x45
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0x24
	movs r3, #0x10
	bl ov70_0225E13C
_02266DFE:
	ldrb r1, [r5, #7]
	movs r0, #2
	tst r0, r1
	beq _02266E4E
	movs r2, #0x20
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x68
	str r2, [sp]
	bl ov70_0225E14C
	movs r0, #2
	str r0, [sp]
	movs r2, #1
	ldrb r1, [r5, #1]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov70_0225E21C
	movs r0, #2
	str r0, [sp]
	ldrb r2, [r5, #1]
	movs r1, #4
	adds r0, r4, #0
	subs r1, r1, r2
	movs r2, #1
	movs r3, #0
	bl ov70_0225E21C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x44
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0x20
	bl ov70_0225E13C
_02266E4E:
	ldrb r0, [r5, #6]
	cmp r0, #1
	bne _02266E92
	ldrb r1, [r5, #7]
	movs r0, #8
	tst r0, r1
	beq _02266E92
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x40
	movs r3, #0x68
	bl ov70_0225E14C
	movs r2, #2
	str r2, [sp]
	movs r1, #4
	ldrsh r1, [r5, r1]
	adds r0, r4, #0
	movs r3, #0
	bl ov70_0225E21C
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xf
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0x40
	bl ov70_0225E13C
_02266E92:
	movs r0, #0
	strb r0, [r5, #7]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02266D08

	thumb_func_start ov70_02266E9C
ov70_02266E9C: @ 0x02266E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	str r2, [sp, #0xc]
	bl ov70_0225DEE8
	adds r7, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF10
	str r0, [sp, #0x24]
	adds r0, r6, #0
	bl ov70_02262E80
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_0222EE30
	str r0, [sp, #0x20]
	adds r0, r7, #0
	bl FUN_0222EE3C
	str r0, [sp, #0x1c]
	adds r0, r7, #0
	bl FUN_0222EE68
	cmp r0, #0
	beq _02266EF4
	cmp r4, #0
	beq _02266EF4
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02266EF4
	adds r0, r6, #0
	movs r1, #0x20
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	movs r0, #0
	strh r0, [r4, #0xa]
_02266EF4:
	cmp r4, #0
	beq _02266F16
	adds r0, r7, #0
	bl FUN_0222E3BC
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02266F12
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	bl FUN_0222E374
	str r0, [sp, #0x14]
	b _02266F16
_02266F12:
	movs r0, #0
	str r0, [sp, #0x14]
_02266F16:
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02266F3E
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02266F3E
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02266F3E
	adds r0, r6, #0
	movs r1, #0x20
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	movs r0, #0
	strh r0, [r4, #0xa]
_02266F3E:
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x26
	bls _02266F4C
	bl _02267A2E
_02266F4C:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02266F58: @ jump table
	.2byte _02266FA6 - _02266F58 - 2 @ case 0
	.2byte _0226706C - _02266F58 - 2 @ case 1
	.2byte _02267090 - _02266F58 - 2 @ case 2
	.2byte _022670D8 - _02266F58 - 2 @ case 3
	.2byte _02267116 - _02266F58 - 2 @ case 4
	.2byte _02267146 - _02266F58 - 2 @ case 5
	.2byte _022671B8 - _02266F58 - 2 @ case 6
	.2byte _022671E6 - _02266F58 - 2 @ case 7
	.2byte _02267216 - _02266F58 - 2 @ case 8
	.2byte _0226724E - _02266F58 - 2 @ case 9
	.2byte _0226727C - _02266F58 - 2 @ case 10
	.2byte _022672AA - _02266F58 - 2 @ case 11
	.2byte _022672DA - _02266F58 - 2 @ case 12
	.2byte _02267356 - _02266F58 - 2 @ case 13
	.2byte _02267414 - _02266F58 - 2 @ case 14
	.2byte _02267444 - _02266F58 - 2 @ case 15
	.2byte _022674C4 - _02266F58 - 2 @ case 16
	.2byte _02267510 - _02266F58 - 2 @ case 17
	.2byte _02267520 - _02266F58 - 2 @ case 18
	.2byte _0226758E - _02266F58 - 2 @ case 19
	.2byte _022675A0 - _02266F58 - 2 @ case 20
	.2byte _022675E0 - _02266F58 - 2 @ case 21
	.2byte _02267622 - _02266F58 - 2 @ case 22
	.2byte _02267654 - _02266F58 - 2 @ case 23
	.2byte _02267682 - _02266F58 - 2 @ case 24
	.2byte _022676DA - _02266F58 - 2 @ case 25
	.2byte _02267720 - _02266F58 - 2 @ case 26
	.2byte _02267768 - _02266F58 - 2 @ case 27
	.2byte _022677AE - _02266F58 - 2 @ case 28
	.2byte _0226780C - _02266F58 - 2 @ case 29
	.2byte _02267874 - _02266F58 - 2 @ case 30
	.2byte _022678A2 - _02266F58 - 2 @ case 31
	.2byte _022678D0 - _02266F58 - 2 @ case 32
	.2byte _02267912 - _02266F58 - 2 @ case 33
	.2byte _02267944 - _02266F58 - 2 @ case 34
	.2byte _0226796C - _02266F58 - 2 @ case 35
	.2byte _022679A0 - _02266F58 - 2 @ case 36
	.2byte _022679AA - _02266F58 - 2 @ case 37
	.2byte _022679B6 - _02266F58 - 2 @ case 38
_02266FA6:
	adds r0, r6, #0
	movs r1, #0x50
	bl ov70_02262E3C
	adds r4, r0, #0
	movs r1, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x38
	str r1, [r4, #0x48]
	bl ov70_02269114
	adds r0, r5, #0
	bl ov70_0225DEF0
	str r0, [sp, #0x28]
	bl ov70_0225CCAC
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	bl ov70_0225CE40
	str r0, [sp, #0x30]
	cmp r0, #0
	bne _02266FF2
	movs r0, #0
	strh r0, [r4, #0xa]
	adds r0, r6, #0
	movs r1, #0x26
	bl ov70_02262E88
	bl _02267A2E
_02266FF2:
	movs r1, #4
	bl ov70_0225CD60
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	movs r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	str r0, [sp, #0x38]
	adds r0, r7, #0
	bl FUN_0222EC60
	ldr r2, [sp, #0x34]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov70_02268B50
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	movs r1, #0
	str r0, [r4, #0x10]
	bl ov70_0225D030
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	bl ov70_0225D060
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x34]
	movs r2, #0
	bl ov70_02262EEC
	ldr r0, _02267390 @ =0x000005E4
	bl FUN_02005748
	adds r0, r7, #0
	movs r1, #9
	bl FUN_0222E3E4
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne _02267060
	ldr r1, [sp, #0x34]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E328
	adds r0, r6, #0
	movs r1, #1
	bl ov70_02262E88
	bl _02267A2E
_02267060:
	adds r0, r6, #0
	movs r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_0226706C:
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	bl FUN_0222EC70
	cmp r0, #1
	bne _02267084
	adds r0, r6, #0
	movs r1, #2
	bl ov70_02262E88
	bl _02267A2E
_02267084:
	adds r0, r6, #0
	movs r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_02267090:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022670CC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022670A2: @ jump table
	.2byte _022670C0 - _022670A2 - 2 @ case 0
	.2byte _02267A2E - _022670A2 - 2 @ case 1
	.2byte _022670AC - _022670A2 - 2 @ case 2
	.2byte _022670CC - _022670A2 - 2 @ case 3
	.2byte _022670CC - _022670A2 - 2 @ case 4
_022670AC:
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	bl FUN_0222EEE4
	adds r0, r6, #0
	movs r1, #3
	bl ov70_02262E88
	bl _02267A2E
_022670C0:
	adds r0, r6, #0
	movs r1, #0x22
	bl ov70_02262E88
	bl _02267A2E
_022670CC:
	adds r0, r6, #0
	movs r1, #0x20
	bl ov70_02262E88
	bl _02267A2E
_022670D8:
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	bl FUN_0222EEF4
	adds r0, r7, #0
	bl FUN_0222F020
	adds r0, r7, #0
	movs r1, #7
	bl FUN_0222F040
	ldr r0, [sp, #0x18]
	adds r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	adds r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #4]
	adds r0, r4, #0
	bl ov70_02268BF4
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #4
	adds r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_02267116:
	ldr r0, [sp, #0x14]
	adds r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #5]
	adds r0, r4, #0
	bl ov70_02268BF4
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #5
	adds r3, r6, #0
	bl ov70_02268BA4
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0222ECD4
	bl _02267A2E
_02267146:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022671A6
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02267158: @ jump table
	.2byte _022671A6 - _02267158 - 2 @ case 0
	.2byte _022671A6 - _02267158 - 2 @ case 1
	.2byte _02267162 - _02267158 - 2 @ case 2
	.2byte _0226718A - _02267158 - 2 @ case 3
	.2byte _022671A6 - _02267158 - 2 @ case 4
_02267162:
	adds r0, r5, #0
	bl ov70_0225DFCC
	adds r0, r7, #0
	bl FUN_0222EE24
	cmp r0, #0
	beq _0226717E
	adds r0, r6, #0
	movs r1, #6
	bl ov70_02262E88
	bl _02267A2E
_0226717E:
	adds r0, r6, #0
	movs r1, #8
	bl ov70_02262E88
	bl _02267A2E
_0226718A:
	adds r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _0226719A
	adds r0, r5, #0
	bl ov70_0225DFBC
_0226719A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268D70
	bl _02267A2E
_022671A6:
	adds r0, r6, #0
	movs r1, #0x20
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	bl _02267A2E
_022671B8:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02268CC8
	cmp r0, #1
	bne _022671DA
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #7
	adds r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_022671DA:
	adds r0, r6, #0
	movs r1, #7
	bl ov70_02262E88
	bl _02267A2E
_022671E6:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x28
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #9
	adds r3, r6, #0
	bl ov70_02268BA4
	bl _02267A2E
_02267216:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #8]
	adds r0, r5, #0
	movs r2, #1
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	bl ov70_02268AF8
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #9
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226724E:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x2e
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0xb
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226727C:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x36
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0xb
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022672AA:
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	ldr r3, _02267394 @ =0x00000203
	adds r0, #0x14
	adds r1, r5, #0
	movs r2, #3
	bl ov70_02268E44
	adds r1, r4, #0
	movs r2, #0
	adds r0, r5, #0
	adds r1, #0x14
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r4, #0
	bl ov70_02268DB8
	adds r0, r6, #0
	movs r1, #0xc
	bl ov70_02262E88
	b _02267A2E
_022672DA:
	adds r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #0
	beq _022672EE
	cmp r0, #1
	beq _022672FA
	cmp r0, #2
	beq _02267318
	b _0226732A
_022672EE:
	adds r0, r6, #0
	movs r1, #0xd
	bl ov70_02262E88
	movs r0, #1
	b _02267334
_022672FA:
	adds r0, r6, #0
	movs r1, #0x13
	bl ov70_02262E88
	ldr r0, [r4, #0x10]
	movs r1, #4
	bl ov70_0225CD60
	adds r2, r0, #0
	ldr r1, [sp, #0xc]
	adds r0, r7, #0
	bl FUN_0222E990
	movs r0, #1
	b _02267334
_02267318:
	adds r0, r7, #0
	bl FUN_0222ED7C
	adds r0, r6, #0
	movs r1, #0x21
	bl ov70_02262E88
	movs r0, #1
	b _02267334
_0226732A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268DCC
	movs r0, #0
_02267334:
	cmp r0, #1
	beq _0226733A
	b _02267A2E
_0226733A:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r5, #0
	bl ov70_02269108
	adds r0, r4, #0
	bl ov70_02268DC4
	b _02267A2E
_02267356:
	ldr r0, [sp, #0x18]
	bl FUN_0222E8C4
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x14]
	bl FUN_0222E8C4
	ldr r1, [sp, #0x40]
	cmp r1, r0
	bne _022673C4
	movs r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #1
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267398 @ =0x000001FB
	b _0226739C
	nop
_02267390: .4byte 0x000005E4
_02267394: .4byte 0x00000203
_02267398: .4byte 0x000001FB
_0226739C:
	adds r0, r5, #0
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x12
	adds r3, r6, #0
	bl ov70_02268BA4
	adds r0, r7, #0
	movs r1, #4
	bl FUN_0222ECD4
	b _02267A2E
_022673C4:
	movs r2, #0
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	bl ov70_0225E234
	movs r3, #1
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	str r3, [sp]
	bl ov70_02268D38
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #2
	bl ov70_02268D38
	movs r2, #0x7f
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	lsls r2, r2, #2
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0xe
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267414:
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	ldr r3, _02267750 @ =0x00000206
	adds r0, #0x14
	adds r1, r5, #0
	movs r2, #2
	bl ov70_02268E44
	adds r1, r4, #0
	movs r2, #0
	adds r0, r5, #0
	adds r1, #0x14
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r4, #0
	bl ov70_02268DB8
	adds r0, r6, #0
	movs r1, #0xf
	bl ov70_02262E88
	b _02267A2E
_02267444:
	adds r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #0
	beq _02267454
	cmp r0, #1
	beq _0226748C
	b _02267498
_02267454:
	adds r0, r7, #0
	movs r1, #3
	bl FUN_0222ECD4
	adds r0, r6, #0
	movs r1, #0x10
	bl ov70_02262E88
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	bl FUN_0222EF44
	ldr r0, [r4, #0x10]
	movs r1, #4
	bl ov70_0225CD60
	adds r6, r0, #0
	ldr r0, [sp, #0x14]
	bl FUN_0222E8C4
	adds r3, r0, #0
	ldr r1, [sp, #0xc]
	adds r0, r7, #0
	adds r2, r6, #0
	bl FUN_0222E9CC
	movs r0, #1
	b _022674A2
_0226748C:
	adds r0, r6, #0
	movs r1, #0xa
	bl ov70_02262E88
	movs r0, #1
	b _022674A2
_02267498:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268DCC
	movs r0, #0
_022674A2:
	cmp r0, #1
	beq _022674A8
	b _02267A2E
_022674A8:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r5, #0
	bl ov70_02269108
	adds r0, r4, #0
	bl ov70_02268DC4
	b _02267A2E
_022674C4:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	movs r3, #1
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267754 @ =0x000001FE
	adds r0, r5, #0
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x11
	adds r3, r6, #0
	bl ov70_02268BA4
	ldr r0, [sp, #0x14]
	bl FUN_0222E8C4
	adds r1, r0, #0
	adds r0, r7, #0
	bl FUN_0222E528
	b _02267A2E
_02267510:
	ldr r0, _02267758 @ =0x000005A8
	bl FUN_02005748
	adds r0, r6, #0
	movs r1, #0x12
	bl ov70_02262E88
	b _02267A2E
_02267520:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _0226757E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02267532: @ jump table
	.2byte _0226757E - _02267532 - 2 @ case 0
	.2byte _0226757E - _02267532 - 2 @ case 1
	.2byte _0226753C - _02267532 - 2 @ case 2
	.2byte _02267564 - _02267532 - 2 @ case 3
	.2byte _0226757E - _02267532 - 2 @ case 4
_0226753C:
	ldr r1, [sp, #0x14]
	adds r0, r4, #0
	bl ov70_02268E20
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _02267554
	adds r0, r6, #0
	movs r1, #0x21
	bl ov70_02262E88
	b _0226755C
_02267554:
	adds r0, r6, #0
	movs r1, #0xa
	bl ov70_02262E88
_0226755C:
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_02267564:
	adds r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267574
	adds r0, r5, #0
	bl ov70_0225DFBC
_02267574:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268D70
	b _02267A2E
_0226757E:
	adds r0, r6, #0
	movs r1, #0x20
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226758E:
	adds r0, r7, #0
	movs r1, #5
	bl FUN_0222ECD4
	adds r0, r6, #0
	movs r1, #0x14
	bl ov70_02262E88
	b _02267A2E
_022675A0:
	ldr r0, _0226775C @ =0x00000207
	adds r1, r5, #0
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r0, #0x14
	movs r2, #0x1e
	movs r3, #4
	bl ov70_02268EEC
	movs r0, #8
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x17
	adds r1, r4, #0
	movs r2, #0
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, #0x14
	adds r3, r2, #0
	bl ov70_0225E0A4
	adds r0, r6, #0
	movs r1, #0x15
	bl ov70_02262E88
	adds r0, r4, #0
	bl ov70_02268DB8
	b _02267A2E
_022675E0:
	adds r0, r5, #0
	bl ov70_0225E0D4
	movs r1, #1
	mvns r1, r1
	str r0, [sp, #0x44]
	cmp r0, r1
	beq _022675F6
	adds r1, r1, #1
	cmp r0, r1
	bne _02267600
_022675F6:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268DCC
	b _02267A2E
_02267600:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r5, #0
	bl ov70_02269108
	ldr r0, [sp, #0x44]
	movs r1, #0x16
	strb r0, [r4]
	adds r0, r6, #0
	bl ov70_02262E88
	b _02267A2E
_02267622:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r3, [r4]
	ldr r2, _02267760 @ =0x000001DD
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, r3, r2
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x17
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267654:
	movs r0, #0
	str r0, [sp]
	ldrb r3, [r4]
	adds r0, r4, #0
	adds r0, #0x14
	lsls r3, r3, #2
	adds r1, r5, #0
	movs r2, #4
	adds r3, #0x73
	bl ov70_02268E44
	adds r1, r4, #0
	movs r2, #0
	adds r0, r5, #0
	adds r1, #0x14
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r6, #0
	movs r1, #0x18
	bl ov70_02262E88
	b _02267A2E
_02267682:
	adds r0, r5, #0
	bl ov70_0225E0D4
	str r0, [sp, #0x48]
	cmp r0, #3
	bhi _022676D0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226769A: @ jump table
	.2byte _022676A2 - _0226769A - 2 @ case 0
	.2byte _022676A2 - _0226769A - 2 @ case 1
	.2byte _022676A2 - _0226769A - 2 @ case 2
	.2byte _022676A2 - _0226769A - 2 @ case 3
_022676A2:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r5, #0
	bl ov70_02269108
	adds r0, r4, #0
	bl ov70_02268DC4
	ldrb r0, [r4]
	lsls r1, r0, #2
	ldr r0, [sp, #0x48]
	adds r0, r0, r1
	strb r0, [r4, #1]
	adds r0, r6, #0
	movs r1, #0x19
	bl ov70_02262E88
	b _02267A2E
_022676D0:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268DCC
	b _02267A2E
_022676DA:
	ldrb r2, [r4, #1]
	adds r0, r4, #0
	adds r0, #0x38
	adds r2, r2, #6
	lsls r2, r2, #0x10
	adds r1, r7, #0
	lsrs r2, r2, #0x10
	movs r3, #2
	bl ov70_0226911C
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r3, [r4, #1]
	ldr r2, _02267764 @ =0x00000165
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, r3, r2
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x1a
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267720:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, #0x55
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x1b
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
	.align 2, 0
_02267750: .4byte 0x00000206
_02267754: .4byte 0x000001FE
_02267758: .4byte 0x000005A8
_0226775C: .4byte 0x00000207
_02267760: .4byte 0x000001DD
_02267764: .4byte 0x00000165
_02267768:
	adds r0, r4, #0
	adds r0, #0x38
	bl ov70_02269178
	cmp r0, #1
	bne _0226779A
	adds r0, r4, #0
	adds r0, #0x38
	bl ov70_02269188
	cmp r0, #2
	bne _0226778A
	adds r0, r6, #0
	movs r1, #0x1c
	bl ov70_02262E88
	b _02267A2E
_0226778A:
	adds r0, r6, #0
	movs r1, #0x20
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226779A:
	adds r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	beq _022677A6
	b _02267A2E
_022677A6:
	adds r0, r5, #0
	bl ov70_0225DFBC
	b _02267A2E
_022677AE:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022677FC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022677C0: @ jump table
	.2byte _022677FC - _022677C0 - 2 @ case 0
	.2byte _022677FC - _022677C0 - 2 @ case 1
	.2byte _022677CA - _022677C0 - 2 @ case 2
	.2byte _022677E2 - _022677C0 - 2 @ case 3
	.2byte _022677FC - _022677C0 - 2 @ case 4
_022677CA:
	ldr r1, [sp, #0x14]
	adds r0, r4, #0
	bl ov70_02268E20
	adds r0, r6, #0
	movs r1, #0x1d
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_022677E2:
	adds r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _022677F2
	adds r0, r5, #0
	bl ov70_0225DFBC
_022677F2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268D70
	b _02267A2E
_022677FC:
	adds r0, r6, #0
	movs r1, #0x20
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02267A2E
_0226780C:
	ldr r0, [sp, #0x1c]
	subs r0, r0, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	cmp r0, #0x7e
	bhs _02267820
	cmp r0, #6
	bhs _0226782A
_02267820:
	adds r0, r6, #0
	movs r1, #0x23
	bl ov70_02262E88
	b _02267A2E
_0226782A:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldr r2, [sp, #0x10]
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, #0xec
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _02267862
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x1e
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267862:
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x1f
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267874:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x33
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0xa
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022678A2:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x32
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x25
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0xa
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022678D0:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r5, #0
	bl ov70_02269108
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x2d
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #0x24
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x26
	adds r3, r6, #0
	bl ov70_02268BA4
	adds r0, r7, #0
	bl FUN_0222EDC0
	b _02267A2E
_02267912:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x2b
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #0x24
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x26
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_02267944:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x2a
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #0x24
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x26
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_0226796C:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	movs r2, #0x59
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	lsls r2, r2, #2
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #0x24
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x26
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02267A2E
_022679A0:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov70_02268BBC
	b _02267A2E
_022679AA:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov70_02268BD8
	b _02267A2E
_022679B6:
	adds r0, r4, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #1
	bne _022679CE
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r2, [r4, #0x48]
	adds r0, r7, #0
	bl FUN_0222E500
_022679CE:
	adds r0, r7, #0
	bl FUN_0222EC60
	adds r0, r5, #0
	bl ov70_0225DFEC
	adds r0, r7, #0
	movs r1, #1
	bl FUN_0222E3E4
	adds r0, r5, #0
	bl ov70_0225DEF0
	adds r7, r0, #0
	bl ov70_0225CCAC
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #1
	bl ov70_0225CDEC
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02267A1C
	movs r1, #1
	bl ov70_0225D030
	ldr r0, [r4, #0x10]
	movs r1, #4
	bl ov70_0225CD60
	adds r1, r0, #0
	ldr r0, [sp, #0x24]
	movs r2, #1
	bl ov70_02262EEC
	adds r0, r5, #0
	bl ov70_0225E3D0
_02267A1C:
	adds r0, r4, #0
	bl ov70_02268BA0
	adds r0, r6, #0
	bl ov70_02262E64
	add sp, #0x4c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02267A2E:
	adds r0, r4, #0
	bl ov70_02268E08
	adds r4, #0x38
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov70_02269144
	movs r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02266E9C

	thumb_func_start ov70_02267A44
ov70_02267A44: @ 0x02267A44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov70_0225DEE8
	adds r7, r0, #0
	adds r0, r6, #0
	bl ov70_02262E80
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_0222EE30
	str r0, [sp, #0x14]
	adds r0, r7, #0
	bl FUN_0222EE3C
	str r0, [sp, #0x10]
	adds r0, r7, #0
	bl FUN_0222EE68
	cmp r0, #0
	beq _02267A92
	cmp r4, #0
	beq _02267A92
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _02267A92
	adds r0, r6, #0
	movs r1, #0x1a
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	movs r0, #0
	strh r0, [r4, #0xa]
_02267A92:
	cmp r4, #0
	beq _02267AA8
	adds r0, r7, #0
	bl FUN_0222E3BC
	str r0, [sp, #0xc]
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	bl FUN_0222E374
	str r0, [sp, #8]
_02267AA8:
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _02267AD0
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _02267AD0
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02267AD0
	adds r0, r6, #0
	movs r1, #0x1a
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	movs r0, #0
	strh r0, [r4, #0xa]
_02267AD0:
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x1f
	bhi _02267B96
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02267AE6: @ jump table
	.2byte _02267B26 - _02267AE6 - 2 @ case 0
	.2byte _02267B8C - _02267AE6 - 2 @ case 1
	.2byte _02267BBE - _02267AE6 - 2 @ case 2
	.2byte _02267BFA - _02267AE6 - 2 @ case 3
	.2byte _02267C6C - _02267AE6 - 2 @ case 4
	.2byte _02267C96 - _02267AE6 - 2 @ case 5
	.2byte _02267CC4 - _02267AE6 - 2 @ case 6
	.2byte _02267CFC - _02267AE6 - 2 @ case 7
	.2byte _02267D2A - _02267AE6 - 2 @ case 8
	.2byte _02267D58 - _02267AE6 - 2 @ case 9
	.2byte _02267E1E - _02267AE6 - 2 @ case 10
	.2byte _02267E5A - _02267AE6 - 2 @ case 11
	.2byte _02267EA0 - _02267AE6 - 2 @ case 12
	.2byte _02267EDC - _02267AE6 - 2 @ case 13
	.2byte _02267F2A - _02267AE6 - 2 @ case 14
	.2byte _02267F6E - _02267AE6 - 2 @ case 15
	.2byte _02267F9C - _02267AE6 - 2 @ case 16
	.2byte _02267FFC - _02267AE6 - 2 @ case 17
	.2byte _0226804A - _02267AE6 - 2 @ case 18
	.2byte _0226807A - _02267AE6 - 2 @ case 19
	.2byte _022680AA - _02267AE6 - 2 @ case 20
	.2byte _022680DC - _02267AE6 - 2 @ case 21
	.2byte _02268110 - _02267AE6 - 2 @ case 22
	.2byte _0226819E - _02267AE6 - 2 @ case 23
	.2byte _022681EA - _02267AE6 - 2 @ case 24
	.2byte _02268234 - _02267AE6 - 2 @ case 25
	.2byte _02268262 - _02267AE6 - 2 @ case 26
	.2byte _022682A4 - _02267AE6 - 2 @ case 27
	.2byte _022682D6 - _02267AE6 - 2 @ case 28
	.2byte _02268304 - _02267AE6 - 2 @ case 29
	.2byte _0226830E - _02267AE6 - 2 @ case 30
	.2byte _0226831A - _02267AE6 - 2 @ case 31
_02267B26:
	adds r0, r6, #0
	movs r1, #0x50
	bl ov70_02262E3C
	adds r4, r0, #0
	movs r1, #0
	adds r0, #0x44
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x46
	strh r1, [r0]
	adds r0, r7, #0
	str r1, [r4, #0x48]
	bl FUN_0222EE1C
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x18]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov70_02268B50
	str r0, [sp, #0x1c]
	ldr r0, _02267E98 @ =0x000005E4
	bl FUN_02005748
	adds r0, r7, #0
	movs r1, #9
	bl FUN_0222E3E4
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _02267B82
	ldr r1, [sp, #0x18]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E328
	ldr r1, [sp, #0x18]
	adds r0, r7, #0
	bl FUN_0222EEE4
	adds r0, r6, #0
	movs r1, #1
	bl ov70_02262E88
	b _02268382
_02267B82:
	adds r0, r6, #0
	movs r1, #0x1a
	bl ov70_02262E88
	b _02268382
_02267B8C:
	adds r0, r7, #0
	bl FUN_0222EEAC
	cmp r0, #0
	bne _02267B98
_02267B96:
	b _02268382
_02267B98:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	adds r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #5]
	adds r0, r4, #0
	bl ov70_02268BF4
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #2
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267BBE:
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	bl FUN_0222EEF4
	adds r0, r7, #0
	bl FUN_0222F020
	adds r0, r7, #0
	movs r1, #7
	bl FUN_0222F040
	ldr r0, [sp, #0xc]
	adds r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #4]
	adds r0, r4, #0
	bl ov70_02268BF4
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #3
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267BFA:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267C5C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02267C0C: @ jump table
	.2byte _02267C5C - _02267C0C - 2 @ case 0
	.2byte _02267C5C - _02267C0C - 2 @ case 1
	.2byte _02267C42 - _02267C0C - 2 @ case 2
	.2byte _02267C16 - _02267C0C - 2 @ case 3
	.2byte _02267C5C - _02267C0C - 2 @ case 4
_02267C16:
	adds r0, r5, #0
	bl ov70_0225DFCC
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0222ECD4
	adds r0, r7, #0
	bl FUN_0222EE24
	cmp r0, #0
	beq _02267C38
	adds r0, r6, #0
	movs r1, #4
	bl ov70_02262E88
	b _02268382
_02267C38:
	adds r0, r6, #0
	movs r1, #6
	bl ov70_02262E88
	b _02268382
_02267C42:
	adds r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267C52
	adds r0, r5, #0
	bl ov70_0225DFBC
_02267C52:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267C5C:
	adds r0, r6, #0
	movs r1, #0x1a
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267C6C:
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02268CC8
	cmp r0, #1
	bne _02267C8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #5
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267C8C:
	adds r0, r6, #0
	movs r1, #5
	bl ov70_02262E88
	b _02268382
_02267C96:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x28
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #7
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267CC4:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrh r1, [r4, #8]
	adds r0, r5, #0
	movs r2, #1
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldrh r2, [r4, #8]
	adds r0, r5, #0
	bl ov70_02268AF8
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #7
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267CFC:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x2f
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #9
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267D2A:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x35
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #9
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267D58:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267E0E
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02267D6A: @ jump table
	.2byte _02267DFE - _02267D6A - 2 @ case 0
	.2byte _02267E0E - _02267D6A - 2 @ case 1
	.2byte _02267DE4 - _02267D6A - 2 @ case 2
	.2byte _02267D74 - _02267D6A - 2 @ case 3
	.2byte _02267E0E - _02267D6A - 2 @ case 4
_02267D74:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	beq _02267D84
	cmp r0, #4
	beq _02267DA0
	cmp r0, #5
	beq _02267DBC
	b _02267DCE
_02267D84:
	adds r0, r6, #0
	movs r1, #0xa
	bl ov70_02262E88
	adds r0, r7, #0
	bl FUN_0222EEB8
	movs r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl ov70_02268E20
	b _02267DDC
_02267DA0:
	adds r0, r6, #0
	movs r1, #0xe
	bl ov70_02262E88
	adds r0, r7, #0
	bl FUN_0222EEB8
	movs r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl ov70_02268E20
	b _02267DDC
_02267DBC:
	adds r0, r7, #0
	movs r1, #1
	bl FUN_0222ECD4
	adds r0, r6, #0
	movs r1, #0xf
	bl ov70_02262E88
	b _02267DDC
_02267DCE:
	adds r0, r6, #0
	movs r1, #0x1a
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
_02267DDC:
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267DE4:
	adds r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267DF4
	adds r0, r5, #0
	bl ov70_0225DFBC
_02267DF4:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267DFE:
	adds r0, r6, #0
	movs r1, #0x1b
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267E0E:
	adds r0, r6, #0
	movs r1, #0x1a
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267E1E:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	movs r3, #1
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02267E9C @ =0x000001FF
	adds r0, r5, #0
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0xb
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267E5A:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	movs r3, #1
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02268D38
	movs r2, #2
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	lsls r2, r2, #8
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0xc
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
	.align 2, 0
_02267E98: .4byte 0x000005E4
_02267E9C: .4byte 0x000001FF
_02267EA0:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	movs r3, #1
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02268218 @ =0x00000201
	adds r0, r5, #0
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0xd
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267EDC:
	ldr r0, _0226821C @ =0x000005A8
	bl FUN_02005748
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldr r2, _02268220 @ =0x00000202
	adds r0, r5, #0
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #8
	adds r3, r6, #0
	bl ov70_02268BA4
	adds r0, r7, #0
	movs r1, #2
	bl FUN_0222ECD4
	adds r0, r7, #0
	bl FUN_0222E3BC
	bl FUN_0222E8C4
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225E378
	b _02268382
_02267F2A:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	movs r3, #1
	str r3, [sp]
	adds r0, r4, #0
	adds r1, r7, #0
	adds r2, r5, #0
	bl ov70_02268D38
	ldrb r1, [r4, #3]
	ldr r2, _02268224 @ =0x000001FB
	adds r0, r5, #0
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x1b
	adds r3, r6, #0
	bl ov70_02268BA4
	adds r0, r7, #0
	movs r1, #2
	bl FUN_0222ECD4
	b _02268382
_02267F6E:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	ldr r2, _02268228 @ =0x000002AF
	adds r0, r5, #0
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x10
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02267F9C:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02267FEC
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02267FAE: @ jump table
	.2byte _02267FEC - _02267FAE - 2 @ case 0
	.2byte _02267FEC - _02267FAE - 2 @ case 1
	.2byte _02267FD2 - _02267FAE - 2 @ case 2
	.2byte _02267FB8 - _02267FAE - 2 @ case 3
	.2byte _02267FEC - _02267FAE - 2 @ case 4
_02267FB8:
	adds r0, r6, #0
	movs r1, #0x11
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	adds r0, r7, #0
	bl FUN_0222EEB8
	movs r0, #1
	str r0, [r4, #0x4c]
	b _02268382
_02267FD2:
	adds r0, r5, #0
	bl ov70_0225DFDC
	cmp r0, #0
	bne _02267FE2
	adds r0, r5, #0
	bl ov70_0225DFBC
_02267FE2:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268D70
	b _02268382
_02267FEC:
	adds r0, r6, #0
	movs r1, #0x1a
	bl ov70_02262E88
	adds r0, r5, #0
	bl ov70_0225DFCC
	b _02268382
_02267FFC:
	ldr r0, [sp, #0x10]
	cmp r0, #6
	blo _02268006
	cmp r0, #0x7e
	blo _02268010
_02268006:
	adds r0, r6, #0
	movs r1, #0x1a
	bl ov70_02262E88
	b _02268382
_02268010:
	subs r0, r0, #6
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	movs r2, #0
	lsrs r0, r0, #2
	strb r0, [r4]
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, #0x37
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x12
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_0226804A:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, #0x55
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x13
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_0226807A:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, #0xec
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x14
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022680AA:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r3, [r4]
	ldr r2, _0226822C @ =0x000001DD
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, r3, r2
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x15
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022680DC:
	movs r0, #2
	str r0, [sp]
	ldrb r3, [r4]
	adds r0, r4, #0
	adds r0, #0x14
	lsls r3, r3, #2
	adds r1, r5, #0
	movs r2, #5
	adds r3, #0x73
	bl ov70_02268E44
	adds r1, r4, #0
	movs r2, #0
	adds r0, r5, #0
	adds r1, #0x14
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r4, #0
	bl ov70_02268DB8
	adds r0, r6, #0
	movs r1, #0x16
	bl ov70_02262E88
	b _02268382
_02268110:
	adds r0, r5, #0
	bl ov70_0225E0D4
	cmp r0, #4
	bhi _0226816A
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02268126: @ jump table
	.2byte _02268130 - _02268126 - 2 @ case 0
	.2byte _02268130 - _02268126 - 2 @ case 1
	.2byte _02268130 - _02268126 - 2 @ case 2
	.2byte _02268130 - _02268126 - 2 @ case 3
	.2byte _02268152 - _02268126 - 2 @ case 4
_02268130:
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	adds r0, r7, #0
	adds r1, r1, #6
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl FUN_0222ECD4
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	movs r0, #1
	b _02268174
_02268152:
	movs r0, #0x7e
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	adds r0, r7, #0
	bl FUN_0222ECD4
	adds r0, r6, #0
	movs r1, #0x1c
	bl ov70_02262E88
	movs r0, #1
	b _02268174
_0226816A:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_02268DCC
	movs r0, #0
_02268174:
	cmp r0, #0
	bne _0226817A
	b _02268382
_0226817A:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r5, #0
	bl ov70_02269108
	adds r0, r4, #0
	bl ov70_02268DC4
	ldr r1, [sp, #8]
	adds r0, r4, #0
	bl ov70_02268E20
	b _02268382
_0226819E:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r3, [r4, #1]
	ldr r2, _02268230 @ =0x00000165
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	adds r2, r3, r2
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #1]
	cmp r1, r0
	bne _022681D8
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x18
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022681D8:
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x19
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022681EA:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x33
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x19
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
	.align 2, 0
_02268218: .4byte 0x00000201
_0226821C: .4byte 0x000005A8
_02268220: .4byte 0x00000202
_02268224: .4byte 0x000001FB
_02268228: .4byte 0x000002AF
_0226822C: .4byte 0x000001DD
_02268230: .4byte 0x00000165
_02268234:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x34
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #8
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02268262:
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r4, #0
	adds r0, #0x14
	adds r1, r5, #0
	bl ov70_02269108
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x2d
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #0x1d
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x1f
	adds r3, r6, #0
	bl ov70_02268BA4
	adds r0, r7, #0
	bl FUN_0222EDC0
	b _02268382
_022682A4:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x2b
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0
	strh r0, [r4, #0xa]
	movs r0, #0x1d
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x1f
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_022682D6:
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r4, #3]
	adds r0, r5, #0
	movs r2, #0x31
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	movs r0, #0x1e
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x80
	movs r2, #0x1b
	adds r3, r6, #0
	bl ov70_02268BA4
	b _02268382
_02268304:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov70_02268BBC
	b _02268382
_0226830E:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov70_02268BD8
	b _02268382
_0226831A:
	adds r0, r4, #0
	adds r0, #0x44
	ldrh r0, [r0]
	cmp r0, #1
	bne _02268332
	adds r1, r4, #0
	adds r1, #0x46
	ldrh r1, [r1]
	ldr r2, [r4, #0x48]
	adds r0, r7, #0
	bl FUN_0222E500
_02268332:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _02268340
	ldrb r1, [r4, #3]
	adds r0, r7, #0
	bl FUN_0222EED4
_02268340:
	adds r0, r7, #0
	bl FUN_0222EC60
	adds r0, r5, #0
	bl ov70_0225DFEC
	adds r0, r4, #0
	bl ov70_02268BA0
	adds r0, r6, #0
	bl ov70_02262E64
	adds r0, r7, #0
	movs r1, #1
	bl FUN_0222E3E4
	adds r0, r5, #0
	bl ov70_0225DEF0
	adds r4, r0, #0
	bl ov70_0225CCAC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r5, #0
	bl ov70_0225E3D0
	add sp, #0x20
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02268382:
	adds r0, r4, #0
	bl ov70_02268E08
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02267A44

	thumb_func_start ov70_02268390
ov70_02268390: @ 0x02268390
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r6, r0, #0
	bl ov70_02262E80
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEE8
	adds r7, r0, #0
	adds r0, r6, #0
	bl ov70_02262E84
	cmp r0, #0x18
	bls _022683B2
	b _02268892
_022683B2:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022683BE: @ jump table
	.2byte _022683F0 - _022683BE - 2 @ case 0
	.2byte _02268430 - _022683BE - 2 @ case 1
	.2byte _02268450 - _022683BE - 2 @ case 2
	.2byte _02268470 - _022683BE - 2 @ case 3
	.2byte _02268490 - _022683BE - 2 @ case 4
	.2byte _022684B0 - _022683BE - 2 @ case 5
	.2byte _022684DA - _022683BE - 2 @ case 6
	.2byte _02268588 - _022683BE - 2 @ case 7
	.2byte _022685A8 - _022683BE - 2 @ case 8
	.2byte _022685C6 - _022683BE - 2 @ case 9
	.2byte _0226863E - _022683BE - 2 @ case 10
	.2byte _02268668 - _022683BE - 2 @ case 11
	.2byte _02268692 - _022683BE - 2 @ case 12
	.2byte _022686BC - _022683BE - 2 @ case 13
	.2byte _022686DC - _022683BE - 2 @ case 14
	.2byte _022686FC - _022683BE - 2 @ case 15
	.2byte _0226871C - _022683BE - 2 @ case 16
	.2byte _02268740 - _022683BE - 2 @ case 17
	.2byte _022687B6 - _022683BE - 2 @ case 18
	.2byte _022687D6 - _022683BE - 2 @ case 19
	.2byte _022687F6 - _022683BE - 2 @ case 20
	.2byte _02268816 - _022683BE - 2 @ case 21
	.2byte _02268836 - _022683BE - 2 @ case 22
	.2byte _02268856 - _022683BE - 2 @ case 23
	.2byte _0226886A - _022683BE - 2 @ case 24
_022683F0:
	adds r0, r6, #0
	movs r1, #0x28
	bl ov70_02262E3C
	ldr r0, _0226873C @ =0x000005DC
	bl FUN_02005748
	adds r0, r7, #0
	bl FUN_0222E12C
	cmp r0, #1
	bne _02268412
	adds r0, r6, #0
	movs r1, #2
	bl ov70_02262E88
	b _02268892
_02268412:
	adds r0, r7, #0
	bl FUN_0222E170
	cmp r0, #1
	bne _02268426
	adds r0, r6, #0
	movs r1, #1
	bl ov70_02262E88
	b _02268892
_02268426:
	adds r0, r6, #0
	movs r1, #3
	bl ov70_02262E88
	b _02268892
_02268430:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4e
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #0x18
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268450:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #0x18
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268470:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0xf
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268490:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x10
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #5
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_022684B0:
	adds r0, r5, #4
	adds r1, r4, #0
	bl ov70_02268FB8
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0xf
	movs r2, #0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov70_0225E0A4
	adds r0, r6, #0
	movs r1, #6
	bl ov70_02262E88
	b _02268892
_022684DA:
	adds r0, r4, #0
	movs r7, #0
	bl ov70_0225E0D4
	cmp r0, #7
	bhi _02268502
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022684F2: @ jump table
	.2byte _0226850C - _022684F2 - 2 @ case 0
	.2byte _02268518 - _022684F2 - 2 @ case 1
	.2byte _02268524 - _022684F2 - 2 @ case 2
	.2byte _02268530 - _022684F2 - 2 @ case 3
	.2byte _0226853C - _022684F2 - 2 @ case 4
	.2byte _02268548 - _022684F2 - 2 @ case 5
	.2byte _02268554 - _022684F2 - 2 @ case 6
	.2byte _02268566 - _022684F2 - 2 @ case 7
_02268502:
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _02268560
	b _02268570
_0226850C:
	adds r0, r6, #0
	movs r1, #7
	bl ov70_02262E88
	movs r7, #1
	b _02268570
_02268518:
	adds r0, r6, #0
	movs r1, #8
	bl ov70_02262E88
	movs r7, #1
	b _02268570
_02268524:
	adds r0, r6, #0
	movs r1, #0xd
	bl ov70_02262E88
	movs r7, #1
	b _02268570
_02268530:
	adds r0, r6, #0
	movs r1, #0xe
	bl ov70_02262E88
	movs r7, #1
	b _02268570
_0226853C:
	adds r0, r6, #0
	movs r1, #0xf
	bl ov70_02262E88
	movs r7, #1
	b _02268570
_02268548:
	adds r0, r6, #0
	movs r1, #0x15
	bl ov70_02262E88
	movs r7, #1
	b _02268570
_02268554:
	adds r0, r6, #0
	movs r1, #0x10
	bl ov70_02262E88
	movs r7, #1
	b _02268570
_02268560:
	ldr r0, _0226873C @ =0x000005DC
	bl FUN_02005748
_02268566:
	adds r0, r6, #0
	movs r1, #0x16
	bl ov70_02262E88
	movs r7, #1
_02268570:
	cmp r7, #1
	bne _02268628
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r5, #4
	adds r1, r4, #0
	bl ov70_02269108
	b _02268892
_02268588:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x17
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_022685A8:
	adds r0, r5, #4
	adds r1, r4, #0
	bl ov70_02269090
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r6, #0
	movs r1, #9
	bl ov70_02262E88
	b _02268892
_022685C6:
	adds r0, r4, #0
	movs r7, #0
	bl ov70_0225E0D4
	cmp r0, #3
	bhi _022685E6
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022685DE: @ jump table
	.2byte _022685F0 - _022685DE - 2 @ case 0
	.2byte _022685FC - _022685DE - 2 @ case 1
	.2byte _02268608 - _022685DE - 2 @ case 2
	.2byte _0226861A - _022685DE - 2 @ case 3
_022685E6:
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _02268614
	b _02268624
_022685F0:
	adds r0, r6, #0
	movs r1, #0xa
	bl ov70_02262E88
	movs r7, #1
	b _02268624
_022685FC:
	adds r0, r6, #0
	movs r1, #0xb
	bl ov70_02262E88
	movs r7, #1
	b _02268624
_02268608:
	adds r0, r6, #0
	movs r1, #0xc
	bl ov70_02262E88
	movs r7, #1
	b _02268624
_02268614:
	ldr r0, _0226873C @ =0x000005DC
	bl FUN_02005748
_0226861A:
	adds r0, r6, #0
	movs r1, #4
	bl ov70_02262E88
	movs r7, #1
_02268624:
	cmp r7, #1
	beq _0226862A
_02268628:
	b _02268892
_0226862A:
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r5, #4
	adds r1, r4, #0
	bl ov70_02269108
	b _02268892
_0226863E:
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x18
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268668:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x19
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268692:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1a
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686BC:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x12
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686DC:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x13
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_022686FC:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x14
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_0226871C:
	adds r0, r5, #4
	adds r1, r4, #0
	bl ov70_02269018
	movs r2, #0
	adds r0, r4, #0
	adds r1, r5, #4
	adds r3, r2, #0
	bl ov70_0225E074
	adds r0, r6, #0
	movs r1, #0x11
	bl ov70_02262E88
	b _02268892
	nop
_0226873C: .4byte 0x000005DC
_02268740:
	adds r0, r4, #0
	movs r7, #0
	bl ov70_0225E0D4
	cmp r0, #3
	bhi _02268760
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02268758: @ jump table
	.2byte _0226876A - _02268758 - 2 @ case 0
	.2byte _02268776 - _02268758 - 2 @ case 1
	.2byte _02268782 - _02268758 - 2 @ case 2
	.2byte _02268794 - _02268758 - 2 @ case 3
_02268760:
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0226878E
	b _0226879E
_0226876A:
	adds r0, r6, #0
	movs r1, #0x12
	bl ov70_02262E88
	movs r7, #1
	b _0226879E
_02268776:
	adds r0, r6, #0
	movs r1, #0x13
	bl ov70_02262E88
	movs r7, #1
	b _0226879E
_02268782:
	adds r0, r6, #0
	movs r1, #0x14
	bl ov70_02262E88
	movs r7, #1
	b _0226879E
_0226878E:
	ldr r0, _02268898 @ =0x000005DC
	bl FUN_02005748
_02268794:
	adds r0, r6, #0
	movs r1, #4
	bl ov70_02262E88
	movs r7, #1
_0226879E:
	cmp r7, #1
	bne _02268892
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov70_0225E0E4
	adds r0, r5, #4
	adds r1, r4, #0
	bl ov70_02269108
	b _02268892
_022687B6:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1b
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_022687D6:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1c
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_022687F6:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1d
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268816:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x1e
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #4
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268836:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x16
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	movs r0, #0x18
	str r0, [r5]
	adds r0, r6, #0
	movs r1, #0x17
	bl ov70_02262E88
	b _02268892
_02268856:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268892
	ldr r1, [r5]
	adds r0, r6, #0
	bl ov70_02262E88
	b _02268892
_0226886A:
	adds r0, r6, #0
	bl ov70_02262E64
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r4, #0
	bl ov70_0225DEF0
	adds r4, r0, #0
	bl ov70_0225CCAC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl ov70_0225CDEC
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02268892:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02268898: .4byte 0x000005DC
	thumb_func_end ov70_02268390

	thumb_func_start ov70_0226889C
ov70_0226889C: @ 0x0226889C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	bl ov70_02262E80
	adds r0, r4, #0
	bl ov70_0225DEE8
	adds r6, r0, #0
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #0
	beq _022688C6
	cmp r0, #1
	bne _022688BE
	b _022689FE
_022688BE:
	cmp r0, #2
	bne _022688C4
	b _02268A12
_022688C4:
	b _02268A32
_022688C6:
	ldr r0, _02268A38 @ =0x000005DC
	bl FUN_02005748
	adds r0, r6, #0
	bl FUN_0222E12C
	cmp r0, #0
	bne _022688FC
	adds r0, r6, #0
	bl FUN_0222E170
	cmp r0, #1
	bne _02268918
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4e
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02262E88
	b _02268A32
_022688FC:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02262E88
	b _02268A32
_02268918:
	adds r0, r6, #0
	bl FUN_0222F05C
	cmp r0, #8
	bhi _022689E2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226892E: @ jump table
	.2byte _02268940 - _0226892E - 2 @ case 0
	.2byte _02268958 - _0226892E - 2 @ case 1
	.2byte _02268970 - _0226892E - 2 @ case 2
	.2byte _02268988 - _0226892E - 2 @ case 3
	.2byte _022689A0 - _0226892E - 2 @ case 4
	.2byte _022689B8 - _0226892E - 2 @ case 5
	.2byte _022689C6 - _0226892E - 2 @ case 6
	.2byte _022689D4 - _0226892E - 2 @ case 7
	.2byte _022689E2 - _0226892E - 2 @ case 8
_02268940:
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x49
	bl ov70_0225E20C
	adds r1, r0, #0
	b _022689EE
_02268958:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x49
	bl ov70_0225E20C
	adds r1, r0, #0
	b _022689EE
_02268970:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x49
	bl ov70_0225E20C
	adds r1, r0, #0
	b _022689EE
_02268988:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4d
	bl ov70_0225E20C
	adds r1, r0, #0
	b _022689EE
_022689A0:
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	bl ov70_0225E27C
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4d
	bl ov70_0225E20C
	adds r1, r0, #0
	b _022689EE
_022689B8:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4a
	bl ov70_0225E20C
	adds r1, r0, #0
	b _022689EE
_022689C6:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4f
	bl ov70_0225E20C
	adds r1, r0, #0
	b _022689EE
_022689D4:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4b
	bl ov70_0225E20C
	adds r1, r0, #0
	b _022689EE
_022689E2:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x4c
	bl ov70_0225E20C
	adds r1, r0, #0
_022689EE:
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	movs r1, #1
	bl ov70_02262E88
	b _02268A32
_022689FE:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268A32
	adds r0, r5, #0
	movs r1, #2
	bl ov70_02262E88
	b _02268A32
_02268A12:
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r4, #0
	bl ov70_0225DEF0
	adds r4, r0, #0
	bl ov70_0225CCAC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #1
	bl ov70_0225CDEC
	movs r0, #1
	pop {r4, r5, r6, pc}
_02268A32:
	movs r0, #0
	pop {r4, r5, r6, pc}
	nop
_02268A38: .4byte 0x000005DC
	thumb_func_end ov70_0226889C

	thumb_func_start ov70_02268A3C
ov70_02268A3C: @ 0x02268A3C
	push {r3, lr}
	sub sp, #8
	bl FUN_0222E7C4
	str r0, [sp]
	str r0, [sp, #4]
	add r0, sp, #0
	ldrb r0, [r0, #4]
	cmp r0, #0x18
	bhi _02268AA0
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02268A5C: @ jump table
	.2byte _02268A9A - _02268A5C - 2 @ case 0
	.2byte _02268A9A - _02268A5C - 2 @ case 1
	.2byte _02268A9A - _02268A5C - 2 @ case 2
	.2byte _02268A9A - _02268A5C - 2 @ case 3
	.2byte _02268A8E - _02268A5C - 2 @ case 4
	.2byte _02268A8E - _02268A5C - 2 @ case 5
	.2byte _02268A8E - _02268A5C - 2 @ case 6
	.2byte _02268A8E - _02268A5C - 2 @ case 7
	.2byte _02268A8E - _02268A5C - 2 @ case 8
	.2byte _02268A8E - _02268A5C - 2 @ case 9
	.2byte _02268A8E - _02268A5C - 2 @ case 10
	.2byte _02268A94 - _02268A5C - 2 @ case 11
	.2byte _02268A94 - _02268A5C - 2 @ case 12
	.2byte _02268A94 - _02268A5C - 2 @ case 13
	.2byte _02268A94 - _02268A5C - 2 @ case 14
	.2byte _02268A94 - _02268A5C - 2 @ case 15
	.2byte _02268A94 - _02268A5C - 2 @ case 16
	.2byte _02268A94 - _02268A5C - 2 @ case 17
	.2byte _02268A94 - _02268A5C - 2 @ case 18
	.2byte _02268A9A - _02268A5C - 2 @ case 19
	.2byte _02268A9A - _02268A5C - 2 @ case 20
	.2byte _02268A9A - _02268A5C - 2 @ case 21
	.2byte _02268A9A - _02268A5C - 2 @ case 22
	.2byte _02268A9A - _02268A5C - 2 @ case 23
	.2byte _02268A9A - _02268A5C - 2 @ case 24
_02268A8E:
	add sp, #8
	movs r0, #0
	pop {r3, pc}
_02268A94:
	add sp, #8
	movs r0, #1
	pop {r3, pc}
_02268A9A:
	add sp, #8
	movs r0, #2
	pop {r3, pc}
_02268AA0:
	bl FUN_02022974
	movs r0, #1
	add sp, #8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_02268A3C

	thumb_func_start ov70_02268AAC
ov70_02268AAC: @ 0x02268AAC
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r4, r2, #0
	bl ov70_0225DEE8
	adds r1, r6, #0
	bl FUN_0222E924
	cmp r0, #1
	bne _02268ADE
	ldr r3, _02268AEC @ =0x0226DD5C
	ldr r0, _02268AF0 @ =0x00000163
	movs r2, #0
_02268AC8:
	ldrh r1, [r3]
	cmp r4, r1
	bne _02268AD6
	ldr r0, _02268AF4 @ =0x0226DD5E
	lsls r1, r2, #2
	ldrh r4, [r0, r1]
	b _02268ADE
_02268AD6:
	adds r2, r2, #1
	adds r3, r3, #4
	cmp r2, r0
	blo _02268AC8
_02268ADE:
	adds r0, r5, #0
	movs r1, #3
	adds r2, r4, #0
	bl ov70_0225E20C
	pop {r4, r5, r6, pc}
	nop
_02268AEC: .4byte 0x0226DD5C
_02268AF0: .4byte 0x00000163
_02268AF4: .4byte 0x0226DD5E
	thumb_func_end ov70_02268AAC

	thumb_func_start ov70_02268AF8
ov70_02268AF8: @ 0x02268AF8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, r2, #0
	bl ov70_0225DEE8
	adds r7, r0, #0
	adds r1, r5, #0
	bl FUN_0222E924
	adds r5, r0, #0
	adds r0, r7, #0
	adds r1, r6, #0
	bl FUN_0222E924
	movs r2, #0x29
	cmp r5, #1
	bne _02268B24
	cmp r0, #1
	bne _02268B24
	ldr r2, _02268B44 @ =0x000002AA
	b _02268B3A
_02268B24:
	cmp r5, #1
	bne _02268B30
	cmp r0, #0
	bne _02268B30
	ldr r2, _02268B48 @ =0x00000226
	b _02268B3A
_02268B30:
	cmp r5, #0
	bne _02268B3A
	cmp r0, #1
	bne _02268B3A
	ldr r2, _02268B4C @ =0x000002A9
_02268B3A:
	adds r0, r4, #0
	movs r1, #3
	bl ov70_0225E20C
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02268B44: .4byte 0x000002AA
_02268B48: .4byte 0x00000226
_02268B4C: .4byte 0x000002A9
	thumb_func_end ov70_02268AF8

	thumb_func_start ov70_02268B50
ov70_02268B50: @ 0x02268B50
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r6, r2, #0
	mvns r0, r0
	adds r4, r1, #0
	cmp r6, r0
	bne _02268B64
	bl FUN_02022974
_02268B64:
	strb r6, [r5, #3]
	adds r0, r4, #0
	bl FUN_0222E338
	strh r0, [r5, #8]
	movs r0, #1
	strh r0, [r5, #0xa]
	adds r0, r4, #0
	bl FUN_0222E3BC
	adds r6, r0, #0
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	bl FUN_0222E374
	adds r4, r0, #0
	bne _02268B8A
	movs r0, #0
	pop {r4, r5, r6, pc}
_02268B8A:
	adds r0, r6, #0
	bl ov70_02268A3C
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl ov70_02268A3C
	strb r0, [r5, #5]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02268B50

	thumb_func_start ov70_02268BA0
ov70_02268BA0: @ 0x02268BA0
	bx lr
	.align 2, 0
	thumb_func_end ov70_02268BA0

	thumb_func_start ov70_02268BA4
ov70_02268BA4: @ 0x02268BA4
	strb r1, [r0, #6]
	ldr r1, _02268BB4 @ =0xFFFFFFF0
	strb r2, [r0, #7]
	adds r0, r3, #0
	add r1, sp
	ldr r3, _02268BB8 @ =ov70_02262E88
	ldrb r1, [r1, #0x10]
	bx r3
	.align 2, 0
_02268BB4: .4byte 0xFFFFFFF0
_02268BB8: .4byte ov70_02262E88
	thumb_func_end ov70_02268BA4

	thumb_func_start ov70_02268BBC
ov70_02268BBC: @ 0x02268BBC
	push {r3, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #6]
	cmp r0, #0
	beq _02268BCC
	subs r0, r0, #1
	strb r0, [r2, #6]
	pop {r3, pc}
_02268BCC:
	adds r0, r1, #0
	ldrb r1, [r2, #7]
	bl ov70_02262E88
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_02268BBC

	thumb_func_start ov70_02268BD8
ov70_02268BD8: @ 0x02268BD8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, r2, #0
	adds r4, r1, #0
	bl ov70_0225DFAC
	cmp r0, #0
	beq _02268BF0
	ldrb r1, [r5, #7]
	adds r0, r4, #0
	bl ov70_02262E88
_02268BF0:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov70_02268BD8

	thumb_func_start ov70_02268BF4
ov70_02268BF4: @ 0x02268BF4
	push {r3, r4, r5, lr}
	adds r5, r2, #0
	adds r4, r3, #0
	ldr r3, [sp, #0x10]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl ov70_02268C44
	ldr r3, [sp, #0x14]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl ov70_02268C44
	ldr r0, [sp, #0x10]
	bl FUN_0222E80C
	adds r4, r0, #0
	ldr r0, [sp, #0x14]
	bl FUN_0222E80C
	adds r3, r0, #0
	ldr r2, _02268C40 @ =0x0226DCDC
	lsls r4, r4, #4
	lsls r3, r3, #1
	adds r2, r2, r4
	ldrh r2, [r3, r2]
	adds r0, r5, #0
	movs r1, #3
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov70_0225DF8C
	pop {r3, r4, r5, pc}
	nop
_02268C40: .4byte 0x0226DCDC
	thumb_func_end ov70_02268BF4

	thumb_func_start ov70_02268C44
ov70_02268C44: @ 0x02268C44
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, r3, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl FUN_0222E80C
	cmp r0, #7
	bhi _02268CBA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02268C62: @ jump table
	.2byte _02268CBA - _02268C62 - 2 @ case 0
	.2byte _02268C72 - _02268C62 - 2 @ case 1
	.2byte _02268C7E - _02268C62 - 2 @ case 2
	.2byte _02268C8A - _02268C62 - 2 @ case 3
	.2byte _02268C96 - _02268C62 - 2 @ case 4
	.2byte _02268CA2 - _02268C62 - 2 @ case 5
	.2byte _02268CBA - _02268C62 - 2 @ case 6
	.2byte _02268CAE - _02268C62 - 2 @ case 7
_02268C72:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0225E2AC
	pop {r4, r5, r6, pc}
_02268C7E:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0225E2BC
	pop {r4, r5, r6, pc}
_02268C8A:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0225E2CC
	pop {r4, r5, r6, pc}
_02268C96:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0225E2DC
	pop {r4, r5, r6, pc}
_02268CA2:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0225E2EC
	pop {r4, r5, r6, pc}
_02268CAE:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0225E2FC
	pop {r4, r5, r6, pc}
_02268CBA:
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0225E2BC
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_02268C44

	thumb_func_start ov70_02268CC8
ov70_02268CC8: @ 0x02268CC8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	adds r0, r6, #0
	adds r7, r2, #0
	bl FUN_0222E3BC
	str r0, [sp]
	ldrb r1, [r5, #3]
	adds r0, r6, #0
	bl FUN_0222E374
	adds r6, r0, #0
	ldr r0, [sp]
	bl FUN_0222E824
	cmp r0, #0
	bne _02268CF0
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02268CF0:
	adds r0, r6, #0
	bl FUN_0222E824
	cmp r0, #0
	bne _02268CFE
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02268CFE:
	ldrb r1, [r5, #5]
	ldrb r0, [r5, #4]
	cmp r0, r1
	beq _02268D34
	cmp r1, #0
	beq _02268D14
	cmp r1, #1
	beq _02268D18
	cmp r1, #2
	beq _02268D1C
	b _02268D1E
_02268D14:
	movs r4, #0x27
	b _02268D1E
_02268D18:
	movs r4, #0x25
	b _02268D1E
_02268D1C:
	movs r4, #0x26
_02268D1E:
	adds r0, r7, #0
	movs r1, #3
	adds r2, r4, #0
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r7, #0
	bl ov70_0225DF8C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02268D34:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02268CC8

	thumb_func_start ov70_02268D38
ov70_02268D38: @ 0x02268D38
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0222E3BC
	str r0, [sp]
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	bl FUN_0222E374
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _02268D5E
	bl FUN_0222E8C4
	b _02268D64
_02268D5E:
	ldr r0, [sp]
	bl FUN_0222E8C4
_02268D64:
	adds r1, r0, #0
	adds r0, r6, #0
	adds r2, r7, #0
	bl ov70_0225E29C
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02268D38

	thumb_func_start ov70_02268D70
ov70_02268D70: @ 0x02268D70
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEE8
	bl FUN_0222EE90
	ldr r1, _02268DB4 @ =0x000001C2
	cmp r0, r1
	bne _02268DB0
	adds r0, r4, #0
	bl ov70_0225DFCC
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225E234
	movs r2, #0xab
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	lsls r2, r2, #2
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r4, #0
	bl ov70_0225DFBC
_02268DB0:
	pop {r3, r4, r5, pc}
	nop
_02268DB4: .4byte 0x000001C2
	thumb_func_end ov70_02268D70

	thumb_func_start ov70_02268DB8
ov70_02268DB8: @ 0x02268DB8
	movs r1, #0
	strh r1, [r0, #0xe]
	movs r1, #1
	strb r1, [r0, #0xd]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02268DB8

	thumb_func_start ov70_02268DC4
ov70_02268DC4: @ 0x02268DC4
	movs r1, #0
	strh r1, [r0, #0xe]
	strb r1, [r0, #0xd]
	bx lr
	thumb_func_end ov70_02268DC4

	thumb_func_start ov70_02268DCC
ov70_02268DCC: @ 0x02268DCC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0xd]
	adds r4, r1, #0
	cmp r0, #1
	bne _02268DFE
	movs r0, #0xe
	ldrsh r1, [r5, r0]
	ldr r0, _02268E00 @ =0x000001C2
	cmp r1, r0
	bne _02268DFE
	ldrb r1, [r5, #3]
	adds r0, r4, #0
	movs r2, #0
	bl ov70_0225E234
	ldrb r1, [r5, #3]
	ldr r2, _02268E04 @ =0x000002AB
	adds r0, r4, #0
	bl ov70_02268AAC
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov70_0225DF8C
_02268DFE:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02268E00: .4byte 0x000001C2
_02268E04: .4byte 0x000002AB
	thumb_func_end ov70_02268DCC

	thumb_func_start ov70_02268E08
ov70_02268E08: @ 0x02268E08
	ldrb r1, [r0, #0xd]
	cmp r1, #1
	bne _02268E1E
	movs r1, #0xe
	ldrsh r2, [r0, r1]
	movs r1, #0xe1
	lsls r1, r1, #2
	cmp r2, r1
	bgt _02268E1E
	adds r1, r2, #1
	strh r1, [r0, #0xe]
_02268E1E:
	bx lr
	thumb_func_end ov70_02268E08

	thumb_func_start ov70_02268E20
ov70_02268E20: @ 0x02268E20
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0222E7A0
	adds r1, r5, #0
	movs r2, #1
	adds r1, #0x44
	strh r2, [r1]
	adds r1, r5, #0
	adds r1, #0x46
	strh r0, [r1]
	adds r0, r4, #0
	bl FUN_0222E798
	str r0, [r5, #0x48]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02268E20

	thumb_func_start ov70_02268E44
ov70_02268E44: @ 0x02268E44
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r7, r2, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r7, #0
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	bl ov70_0225E00C
	ldr r0, [sp]
	movs r4, #0
	str r7, [r0, #0x20]
	cmp r7, #0
	bls _02268EAE
	subs r0, r7, #1
	str r0, [sp, #8]
_02268E68:
	cmp r6, #0
	beq _02268E92
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _02268E92
	cmp r6, #1
	bne _02268E84
	ldr r2, _02268EE4 @ =0x00000205
	adds r0, r5, #0
	movs r1, #3
	bl ov70_0225E20C
	adds r1, r0, #0
	b _02268EA0
_02268E84:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xeb
	bl ov70_0225E20C
	adds r1, r0, #0
	b _02268EA0
_02268E92:
	ldr r2, [sp, #4]
	adds r0, r5, #0
	movs r1, #3
	adds r2, r2, r4
	bl ov70_0225E20C
	adds r1, r0, #0
_02268EA0:
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov70_0225E044
	adds r4, r4, #1
	cmp r4, r7
	blo _02268E68
_02268EAE:
	ldr r3, _02268EE8 @ =0x0226DCBC
	ldr r2, [sp]
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _02268ED4
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_02268ED4:
	adds r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02268EE4: .4byte 0x00000205
_02268EE8: .4byte 0x0226DCBC
	thumb_func_end ov70_02268E44

	thumb_func_start ov70_02268EEC
ov70_02268EEC: @ 0x02268EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x20]
	adds r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r3, [sp, #4]
	str r0, [sp, #0x24]
	adds r0, r5, #0
	adds r1, r3, #0
	adds r4, r2, #0
	bl ov70_0225E020
	ldr r1, [sp, #4]
	ldr r0, [sp]
	movs r7, #0
	str r1, [r0, #0x20]
	adds r0, r1, #0
	beq _02268F7C
	subs r0, r0, #1
	str r0, [sp, #8]
_02268F18:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02268F48
	ldr r0, [sp, #8]
	cmp r7, r0
	bne _02268F48
	ldr r0, [sp, #0x24]
	adds r6, r4, #0
	cmp r0, #1
	bne _02268F3A
	ldr r2, _02268FB0 @ =0x00000205
	adds r0, r5, #0
	movs r1, #3
	bl ov70_0225E20C
	adds r1, r0, #0
	b _02268F6C
_02268F3A:
	adds r0, r5, #0
	movs r1, #3
	movs r2, #0xeb
	bl ov70_0225E20C
	adds r1, r0, #0
	b _02268F6C
_02268F48:
	bl FUN_0201D35C
	adds r1, r4, #0
	blx FUN_020E2178
	adds r0, r5, #0
	adds r6, r1, #0
	bl ov70_0225E064
	cmp r0, #1
	beq _02268F48
	ldr r2, [sp, #0x20]
	adds r0, r5, #0
	movs r1, #3
	adds r2, r2, r6
	bl ov70_0225E20C
	adds r1, r0, #0
_02268F6C:
	adds r0, r5, #0
	adds r2, r6, #0
	bl ov70_0225E044
	ldr r0, [sp, #4]
	adds r7, r7, #1
	cmp r7, r0
	blo _02268F18
_02268F7C:
	ldr r3, _02268FB4 @ =0x0226DCBC
	ldr r2, [sp]
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _02268FA2
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_02268FA2:
	adds r0, r5, #0
	bl ov70_0225E054
	ldr r1, [sp]
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02268FB0: .4byte 0x00000205
_02268FB4: .4byte 0x0226DCBC
	thumb_func_end ov70_02268EEC

	thumb_func_start ov70_02268FB8
ov70_02268FB8: @ 0x02268FB8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	adds r7, r0, #0
	adds r0, r6, #0
	movs r1, #8
	bl ov70_0225E00C
	movs r0, #8
	ldr r5, _02269010 @ =0x0226DCB4
	str r0, [r7, #0x20]
	movs r4, #0
_02268FCE:
	ldrb r2, [r5]
	adds r0, r6, #0
	movs r1, #1
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r6, #0
	adds r2, r4, #0
	bl ov70_0225E044
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #8
	blt _02268FCE
	ldr r3, _02269014 @ =0x0226DCBC
	adds r2, r7, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x12]
	adds r0, r6, #0
	bl ov70_0225E054
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02269010: .4byte 0x0226DCB4
_02269014: .4byte 0x0226DCBC
	thumb_func_end ov70_02268FB8

	thumb_func_start ov70_02269018
ov70_02269018: @ 0x02269018
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #4
	bl ov70_0225E00C
	movs r0, #4
	movs r4, #0
	str r0, [r6, #0x20]
	adds r7, r4, #0
_0226902E:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov70_0225E28C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x27
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov70_0225E044
	adds r4, r4, #1
	cmp r4, #3
	blt _0226902E
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x25
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #3
	bl ov70_0225E044
	ldr r3, _0226908C @ =0x0226DCBC
	adds r2, r6, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	adds r0, r5, #0
	bl ov70_0225E054
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226908C: .4byte 0x0226DCBC
	thumb_func_end ov70_02269018

	thumb_func_start ov70_02269090
ov70_02269090: @ 0x02269090
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #4
	bl ov70_0225E00C
	movs r0, #4
	movs r4, #0
	str r0, [r6, #0x20]
	adds r7, r4, #0
_022690A6:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov70_0225E27C
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x26
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	adds r2, r4, #0
	bl ov70_0225E044
	adds r4, r4, #1
	cmp r4, #3
	blt _022690A6
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0x25
	bl ov70_0225E20C
	adds r1, r0, #0
	adds r0, r5, #0
	movs r2, #3
	bl ov70_0225E044
	ldr r3, _02269104 @ =0x0226DCBC
	adds r2, r6, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	adds r0, r5, #0
	bl ov70_0225E054
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02269104: .4byte 0x0226DCBC
	thumb_func_end ov70_02269090

	thumb_func_start ov70_02269108
ov70_02269108: @ 0x02269108
	ldr r3, _02269110 @ =ov70_0225E034
	adds r0, r1, #0
	bx r3
	nop
_02269110: .4byte ov70_0225E034
	thumb_func_end ov70_02269108

	thumb_func_start ov70_02269114
ov70_02269114: @ 0x02269114
	movs r1, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02269114

	thumb_func_start ov70_0226911C
ov70_0226911C: @ 0x0226911C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5]
	adds r7, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r0, #0
	beq _02269130
	bl FUN_02022974
_02269130:
	movs r0, #1
	strh r0, [r5]
	strh r4, [r5, #2]
	adds r0, r7, #0
	strh r6, [r5, #4]
	bl FUN_0222EE30
	strh r0, [r5, #6]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226911C

	thumb_func_start ov70_02269144
ov70_02269144: @ 0x02269144
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5]
	adds r4, r1, #0
	cmp r0, #0
	beq _02269176
	adds r0, r4, #0
	bl FUN_0222EE30
	str r0, [r5, #8]
	ldrh r1, [r5, #4]
	cmp r0, r1
	bne _0226916C
	ldrh r1, [r5, #2]
	adds r0, r4, #0
	bl FUN_0222ECD4
	movs r0, #0
	strh r0, [r5]
	pop {r3, r4, r5, pc}
_0226916C:
	ldrh r1, [r5, #6]
	cmp r0, r1
	beq _02269176
	movs r0, #0
	strh r0, [r5]
_02269176:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02269144

	thumb_func_start ov70_02269178
ov70_02269178: @ 0x02269178
	ldrh r0, [r0]
	cmp r0, #1
	beq _02269182
	movs r0, #1
	bx lr
_02269182:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_02269178

	thumb_func_start ov70_02269188
ov70_02269188: @ 0x02269188
	ldr r0, [r0, #8]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	thumb_func_end ov70_02269188

	thumb_func_start ov70_02269190
ov70_02269190: @ 0x02269190
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x20]
	ldr r1, _022691FC @ =0x0001082C
	str r2, [sp]
	str r3, [sp, #4]
	ldr r5, [sp, #0x24]
	bl FUN_02018144
	ldr r2, _022691FC @ =0x0001082C
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, [sp, #4]
	str r6, [r4]
	str r0, [r4, #4]
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	str r0, [r4, #8]
	movs r0, #0xba
	str r7, [r4, #0xc]
	bl FUN_02006C24
	adds r6, r0, #0
	ldr r0, _02269200 @ =0x0001081C
	adds r1, r5, #0
	adds r0, r4, r0
	movs r2, #4
	bl FUN_020182CC
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov70_02269540
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov70_022695E0
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl ov70_0226965C
	adds r0, r6, #0
	bl FUN_02006CA8
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022691FC: .4byte 0x0001082C
_02269200: .4byte 0x0001081C
	thumb_func_end ov70_02269190

	thumb_func_start ov70_02269204
ov70_02269204: @ 0x02269204
	push {r4, lr}
	adds r4, r0, #0
	bl ov70_022695C4
	adds r0, r4, #0
	bl ov70_02269608
	adds r0, r4, #0
	bl ov70_02269700
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov70_02269204

	thumb_func_start ov70_02269220
ov70_02269220: @ 0x02269220
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	movs r7, #0xd1
	movs r4, #0
	adds r5, #0x10
	lsls r7, r7, #4
_0226922E:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov70_0226978C
	adds r4, r4, #1
	adds r5, r5, r7
	cmp r4, #0x14
	blt _0226922E
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02269220

	thumb_func_start ov70_02269240
ov70_02269240: @ 0x02269240
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldr r0, [r6, #4]
	bl ov70_0225CCAC
	adds r5, r6, #0
	movs r7, #0xd1
	movs r4, #0
	adds r5, #0x10
	lsls r7, r7, #4
_02269254:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov70_022697C8
	adds r4, r4, #1
	adds r5, r5, r7
	cmp r4, #0x14
	blt _02269254
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_02269240

	thumb_func_start ov70_02269268
ov70_02269268: @ 0x02269268
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #0x14
	blo _02269278
	bl FUN_02022974
_02269278:
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl ov70_0225CC70
	adds r2, r0, #0
	beq _02269296
	movs r1, #0xd1
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r5, #0x10
	muls r1, r4, r1
	adds r1, r5, r1
	adds r3, r6, #0
	bl ov70_02269738
_02269296:
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_02269268

	thumb_func_start ov70_02269298
ov70_02269298: @ 0x02269298
	push {r3, lr}
	movs r2, #0xd1
	lsls r2, r2, #4
	adds r0, #0x10
	muls r2, r1, r2
	adds r0, r0, r2
	bl ov70_02269800
	cmp r0, #1
	beq _022692B0
	movs r0, #1
	pop {r3, pc}
_022692B0:
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov70_02269298

	thumb_func_start ov70_022692B4
ov70_022692B4: @ 0x022692B4
	push {r3, r4}
	ldr r4, [sp, #0x14]
	subs r2, r2, r1
	str r4, [r0]
	str r1, [r0, #4]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	str r3, [r0, #8]
	subs r1, r1, r3
	str r1, [r0, #0x18]
	ldr r2, [sp, #0xc]
	ldr r1, [sp, #0x10]
	str r3, [r0, #0x1c]
	str r2, [r0, #0xc]
	subs r1, r1, r2
	str r1, [r0, #0x20]
	str r2, [r0, #0x24]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_022692B4

	thumb_func_start ov70_022692DC
ov70_022692DC: @ 0x022692DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	movs r7, #0
	cmp r4, r0
	ble _022692F0
	adds r4, r0, #0
	movs r7, #1
_022692F0:
	ldr r6, [r5, #0x10]
	cmp r6, #0
	beq _02269374
	cmp r0, #0
	ble _0226930E
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	str r0, [sp, #8]
	b _0226931E
_0226930E:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	str r0, [sp, #8]
_0226931E:
	cmp r4, #0
	ble _02269334
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _02269342
_02269334:
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_02269342:
	blx FUN_020E1740
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r6, r2, #0xc
	orrs r6, r0
	ldr r0, [sp, #8]
	blx FUN_020E1740
	adds r1, r0, #0
	adds r0, r6, #0
	blx FUN_020BCFD0
	ldr r1, [r5, #0x14]
	adds r0, r1, r0
	str r0, [r5, #4]
_02269374:
	ldr r6, [r5, #0x18]
	cmp r6, #0
	beq _022693FA
	ldr r0, [r5]
	cmp r0, #0
	ble _02269394
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	str r0, [sp, #4]
	b _022693A4
_02269394:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	str r0, [sp, #4]
_022693A4:
	cmp r4, #0
	ble _022693BA
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _022693C8
_022693BA:
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_022693C8:
	blx FUN_020E1740
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r6, r2, #0xc
	orrs r6, r0
	ldr r0, [sp, #4]
	blx FUN_020E1740
	adds r1, r0, #0
	adds r0, r6, #0
	blx FUN_020BCFD0
	ldr r1, [r5, #0x1c]
	adds r0, r1, r0
	str r0, [r5, #8]
_022693FA:
	ldr r6, [r5, #0x20]
	cmp r6, #0
	beq _02269480
	ldr r0, [r5]
	cmp r0, #0
	ble _0226941A
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	str r0, [sp]
	b _0226942A
_0226941A:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
	str r0, [sp]
_0226942A:
	cmp r4, #0
	ble _02269440
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226944E
_02269440:
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226944E:
	blx FUN_020E1740
	asrs r1, r0, #0x1f
	asrs r3, r6, #0x1f
	adds r2, r6, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r4, r2, #0xc
	orrs r4, r0
	ldr r0, [sp]
	blx FUN_020E1740
	adds r1, r0, #0
	adds r0, r4, #0
	blx FUN_020BCFD0
	ldr r1, [r5, #0x24]
	adds r0, r1, r0
	str r0, [r5, #0xc]
_02269480:
	adds r0, r7, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_022692DC

	thumb_func_start ov70_02269488
ov70_02269488: @ 0x02269488
	push {r3, r4}
	ldr r4, [r0, #4]
	str r4, [r1]
	ldr r1, [r0, #8]
	str r1, [r2]
	ldr r0, [r0, #0xc]
	str r0, [r3]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov70_02269488

	thumb_func_start ov70_0226949C
ov70_0226949C: @ 0x0226949C
	push {r4, lr}
	adds r4, r0, #0
	strh r1, [r4]
	asrs r0, r1, #4
	lsls r1, r0, #2
	ldr r0, _022694CC @ =0x020F983C
	strh r2, [r4, #2]
	ldrsh r0, [r0, r1]
	adds r2, r3, #0
	str r3, [r4, #4]
	asrs r1, r0, #0x1f
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	.align 2, 0
_022694CC: .4byte 0x020F983C
	thumb_func_end ov70_0226949C

	thumb_func_start ov70_022694D0
ov70_022694D0: @ 0x022694D0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	adds r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, [r4, #4]
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _02269504 @ =0x020F983C
	asrs r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asrs r1, r0, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	.align 2, 0
_02269504: .4byte 0x020F983C
	thumb_func_end ov70_022694D0

	thumb_func_start ov70_02269508
ov70_02269508: @ 0x02269508
	ldr r0, [r0, #8]
	str r0, [r1]
	bx lr
	.align 2, 0
	thumb_func_end ov70_02269508

	thumb_func_start ov70_02269510
ov70_02269510: @ 0x02269510
	push {r3, r4, r5, lr}
	ldr r0, [r0, #4]
	ldr r4, [r1, #8]
	adds r5, r2, #0
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226952C
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	movs r1, #5
	bl FUN_02005770
	pop {r3, r4, r5, pc}
_0226952C:
	adds r0, r4, #0
	bl ov70_0225CE70
	cmp r0, #0
	bne _0226953E
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
_0226953E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02269510

	thumb_func_start ov70_02269540
ov70_02269540: @ 0x02269540
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	movs r4, #0
_0226954A:
	movs r0, #0
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r6, #0
	adds r1, #0x81
	movs r2, #0
	adds r3, r7, #0
	bl FUN_0200723C
	ldr r1, _022695B4 @ =0x00010550
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	blx FUN_020B3C0C
	ldr r1, _022695B8 @ =0x00010554
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r1, [r5, r0]
	cmp r1, #0
	beq _02269594
	adds r0, r1, #0
	adds r0, #8
	beq _02269588
	ldrb r2, [r1, #9]
	cmp r2, #0
	bls _02269588
	ldrh r2, [r1, #0xe]
	adds r0, r0, r2
	adds r0, r0, #4
	b _0226958A
_02269588:
	movs r0, #0
_0226958A:
	cmp r0, #0
	beq _02269594
	ldr r0, [r0]
	adds r1, r1, r0
	b _02269596
_02269594:
	movs r1, #0
_02269596:
	ldr r0, _022695BC @ =0x00010558
	str r1, [r5, r0]
	movs r1, #0
	adds r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _022695BC @ =0x00010558
	ldr r1, _022695C0 @ =0x00007FFF
	ldr r0, [r5, r0]
	blx FUN_020B3624
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #0xf
	blt _0226954A
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022695B4: .4byte 0x00010550
_022695B8: .4byte 0x00010554
_022695BC: .4byte 0x00010558
_022695C0: .4byte 0x00007FFF
	thumb_func_end ov70_02269540

	thumb_func_start ov70_022695C4
ov70_022695C4: @ 0x022695C4
	push {r4, r5, r6, lr}
	ldr r6, _022695DC @ =0x00010550
	adds r5, r0, #0
	movs r4, #0
_022695CC:
	ldr r0, [r5, r6]
	bl FUN_020181C4
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #0xf
	blt _022695CC
	pop {r4, r5, r6, pc}
	.align 2, 0
_022695DC: .4byte 0x00010550
	thumb_func_end ov70_022695C4

	thumb_func_start ov70_022695E0
ov70_022695E0: @ 0x022695E0
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r1, _02269604 @ =0x00010640
	adds r7, r2, #0
	movs r4, #0
	adds r5, r0, r1
_022695EC:
	adds r2, r4, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, #0x90
	adds r3, r7, #0
	bl ov70_0225C730
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x27
	blt _022695EC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02269604: .4byte 0x00010640
	thumb_func_end ov70_022695E0

	thumb_func_start ov70_02269608
ov70_02269608: @ 0x02269608
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, _02269650 @ =0x02100DF0
	adds r5, r0, #0
	movs r4, #0
_02269612:
	ldr r0, _02269654 @ =0x00010640
	ldr r0, [r5, r0]
	blx FUN_020B3C1C
	add r1, sp, #4
	add r2, sp, #0
	adds r6, r0, #0
	blx FUN_020AE9B8
	ldr r0, [sp, #4]
	ldr r1, [r7]
	blx r1
	ldr r0, [sp]
	ldr r1, [r7]
	blx r1
	adds r0, r6, #0
	blx FUN_020AEA70
	ldr r1, _02269658 @ =0x02100DF8
	ldr r1, [r1]
	blx r1
	ldr r0, _02269654 @ =0x00010640
	ldr r0, [r5, r0]
	bl FUN_020181C4
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #0x27
	blt _02269612
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02269650: .4byte 0x02100DF0
_02269654: .4byte 0x00010640
_02269658: .4byte 0x02100DF8
	thumb_func_end ov70_02269608

	thumb_func_start ov70_0226965C
ov70_0226965C: @ 0x0226965C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	movs r0, #0
	ldr r4, _022696E8 @ =0x0226E5A4
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r0, [sp, #0x10]
_0226966C:
	ldr r0, _022696EC @ =0x0001081C
	movs r6, #0
	adds r0, r5, r0
	str r0, [sp, #0x14]
	ldr r0, _022696F0 @ =0x000106DC
	adds r0, r5, r0
	str r0, [sp, #0x18]
	ldr r0, _022696F4 @ =0x00010550
	adds r0, r5, r0
	str r0, [sp, #0x1c]
_02269680:
	adds r7, r4, r6
	ldrb r1, [r7, #2]
	cmp r1, #0x11
	beq _022696D2
	movs r0, #0x14
	muls r0, r1, r0
	adds r1, r5, r0
	ldr r0, _022696F0 @ =0x000106DC
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _022696D2
	ldrb r0, [r4, #1]
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _022696F8 @ =0x00010640
	ldr r0, [r1, r0]
	blx FUN_020B3C1C
	ldrb r1, [r4]
	lsls r1, r1, #4
	adds r2, r5, r1
	ldr r1, _022696FC @ =0x0001055C
	str r0, [r2, r1]
	ldrb r3, [r7, #2]
	ldr r0, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	adds r1, r3, #0
	str r0, [sp, #4]
	movs r0, #0x14
	muls r1, r0, r1
	ldr r0, [sp, #0x18]
	adds r3, #0xb7
	adds r0, r0, r1
	ldrb r1, [r4]
	lsls r2, r1, #4
	ldr r1, [sp, #0x1c]
	adds r1, r1, r2
	ldr r2, [sp, #8]
	bl FUN_02017164
_022696D2:
	adds r6, r6, #1
	cmp r6, #2
	blt _02269680
	ldr r0, [sp, #0x10]
	adds r4, r4, #4
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #0x27
	blt _0226966C
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022696E8: .4byte 0x0226E5A4
_022696EC: .4byte 0x0001081C
_022696F0: .4byte 0x000106DC
_022696F4: .4byte 0x00010550
_022696F8: .4byte 0x00010640
_022696FC: .4byte 0x0001055C
	thumb_func_end ov70_0226965C

	thumb_func_start ov70_02269700
ov70_02269700: @ 0x02269700
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, _02269730 @ =0x000106DC
	movs r6, #0
	adds r4, r5, r0
	ldr r0, _02269734 @ =0x0001081C
	adds r7, r5, r0
_0226970E:
	ldr r0, _02269730 @ =0x000106DC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02269724
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_020171A0
	ldr r0, _02269730 @ =0x000106DC
	movs r1, #0
	str r1, [r5, r0]
_02269724:
	adds r6, r6, #1
	adds r5, #0x14
	adds r4, #0x14
	cmp r6, #0x10
	blt _0226970E
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02269730: .4byte 0x000106DC
_02269734: .4byte 0x0001081C
	thumb_func_end ov70_02269700

	thumb_func_start ov70_02269738
ov70_02269738: @ 0x02269738
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r3, #0
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r7, #0x1b
	blo _0226974A
	bl FUN_02022974
_0226974A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_022697F0
	str r6, [r4, #8]
	adds r0, r6, #0
	movs r1, #5
	strb r7, [r4]
	bl ov70_0225CD60
	adds r0, #0x28
	str r0, [r4, #4]
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r4, #0
	lsls r3, r2, #2
	ldr r2, _02269784 @ =0x0226E43C
	ldr r2, [r2, r3]
	blx r2
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r4, #0
	lsls r3, r2, #2
	ldr r2, _02269788 @ =0x0226E4A8
	ldr r2, [r2, r3]
	bl ov70_02269510
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269784: .4byte 0x0226E43C
_02269788: .4byte 0x0226E4A8
	thumb_func_end ov70_02269738

	thumb_func_start ov70_0226978C
ov70_0226978C: @ 0x0226978C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_02269800
	cmp r0, #0
	beq _022697C0
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _022697A6
	bl FUN_02022974
_022697A6:
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r4, #0
	lsls r3, r2, #2
	ldr r2, _022697C4 @ =0x0226E3D0
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _022697C0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_022697F0
_022697C0:
	pop {r3, r4, r5, pc}
	nop
_022697C4: .4byte 0x0226E3D0
	thumb_func_end ov70_0226978C

	thumb_func_start ov70_022697C8
ov70_022697C8: @ 0x022697C8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov70_02269800
	cmp r0, #0
	bne _022697DC
	movs r0, #0
	pop {r3, r4, r5, pc}
_022697DC:
	ldrb r0, [r4]
	cmp r0, #0x1b
	blo _022697E6
	bl FUN_02022974
_022697E6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0226A998
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022697C8

	thumb_func_start ov70_022697F0
ov70_022697F0: @ 0x022697F0
	ldr r3, _022697FC @ =FUN_020D5124
	movs r2, #0xd1
	adds r0, r1, #0
	movs r1, #0
	lsls r2, r2, #4
	bx r3
	.align 2, 0
_022697FC: .4byte FUN_020D5124
	thumb_func_end ov70_022697F0

	thumb_func_start ov70_02269800
ov70_02269800: @ 0x02269800
	ldr r0, [r0, #8]
	cmp r0, #0
	beq _0226980A
	movs r0, #1
	bx lr
_0226980A:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov70_02269800

	thumb_func_start ov70_02269810
ov70_02269810: @ 0x02269810
	lsls r1, r1, #2
	adds r1, r0, r1
	ldr r0, _02269824 @ =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02269820
	movs r0, #1
	bx lr
_02269820:
	movs r0, #0
	bx lr
	.align 2, 0
_02269824: .4byte 0x0000087C
	thumb_func_end ov70_02269810

	thumb_func_start ov70_02269828
ov70_02269828: @ 0x02269828
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r2, #0
	str r0, [sp]
	adds r5, r1, #0
	adds r6, r3, #0
	cmp r4, #0x12
	blo _0226983C
	bl FUN_02022974
_0226983C:
	ldr r0, _02269870 @ =0x0000087C
	adds r7, r5, r0
	lsls r0, r4, #2
	str r0, [sp, #4]
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _0226984E
	bl FUN_02022974
_0226984E:
	ldr r0, [sp, #4]
	ldr r2, _02269874 @ =0x00010550
	ldr r1, [sp]
	str r6, [r7, r0]
	adds r2, r1, r2
	ldrb r1, [r6]
	movs r0, #0x78
	adds r5, #0xc
	muls r0, r4, r0
	lsls r1, r1, #4
	adds r0, r5, r0
	adds r1, r2, r1
	bl FUN_02017258
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269870: .4byte 0x0000087C
_02269874: .4byte 0x00010550
	thumb_func_end ov70_02269828

	thumb_func_start ov70_02269878
ov70_02269878: @ 0x02269878
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r2, #0
	str r0, [sp]
	lsls r7, r5, #2
	adds r0, r1, #0
	str r1, [sp, #4]
	adds r1, r0, r7
	ldr r0, _022699AC @ =0x0000087C
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02269894
	bl FUN_02022974
_02269894:
	movs r0, #0x78
	adds r6, r5, #0
	muls r6, r0, r6
	ldr r0, [sp, #4]
	adds r0, #0xc
	adds r0, r0, r6
	bl FUN_0201734C
	cmp r0, #0
	beq _022699A6
	ldr r0, [sp, #4]
	adds r1, r0, r7
	ldr r0, _022699AC @ =0x0000087C
	ldr r2, [r1, r0]
	ldr r0, _022699B0 @ =0x00010550
	ldrb r3, [r2]
	ldr r1, [sp]
	adds r1, r1, r0
	lsls r3, r3, #4
	adds r1, r1, r3
	str r1, [sp, #0xc]
	ldrb r1, [r2, #1]
	adds r0, #0xf0
	lsls r2, r1, #2
	ldr r1, [sp]
	adds r1, r1, r2
	ldr r0, [r1, r0]
	blx FUN_020B3C1C
	ldr r1, [sp, #0xc]
	movs r2, #0
	str r0, [r1, #0xc]
	adds r0, r1, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	adds r3, r2, #0
	blx FUN_020AED78
	cmp r0, #0
	bne _022698E8
	bl FUN_02022974
_022698E8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	movs r2, #0
	ldr r0, [r0, #8]
	ldr r1, [r1, #0xc]
	adds r3, r2, #0
	blx FUN_020AF09C
	cmp r0, #0
	bne _02269900
	bl FUN_02022974
_02269900:
	ldr r0, [sp, #4]
	lsls r1, r5, #3
	adds r5, r0, r1
	adds r0, r0, r7
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	ldr r1, _022699B4 @ =0x000106DC
	str r0, [sp, #0x10]
	adds r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp]
	movs r4, #0
	adds r7, r0, r1
_0226991A:
	ldr r1, [sp, #8]
	ldr r0, _022699AC @ =0x0000087C
	ldr r0, [r1, r0]
	adds r0, r0, r4
	ldrb r1, [r0, #2]
	cmp r1, #0x11
	beq _0226994E
	movs r0, #0x14
	muls r0, r1, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	adds r0, r0, r6
	adds r1, r7, r1
	bl FUN_0201727C
	ldr r1, _022699B8 @ =0x000008C4
	ldr r0, [sp, #0x14]
	ldr r1, [r5, r1]
	adds r0, r7, r0
	bl FUN_02017240
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0226991A
_0226994E:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r0, [r0, #8]
	ldr r1, [r1, #4]
	blx FUN_020B3724
	ldr r0, [sp, #4]
	adds r0, #0xc
	str r0, [sp, #4]
	adds r0, r0, r6
	bl FUN_02017294
	ldr r1, _022699B4 @ =0x000106DC
	ldr r0, [sp]
	ldr r7, _022699AC @ =0x0000087C
	movs r4, #0
	adds r5, r0, r1
_02269970:
	ldr r0, [sp, #8]
	ldr r0, [r0, r7]
	adds r0, r0, r4
	ldrb r1, [r0, #2]
	cmp r1, #0x11
	beq _02269990
	ldr r0, [sp, #4]
	movs r2, #0x14
	muls r2, r1, r2
	adds r0, r0, r6
	adds r1, r5, r2
	bl FUN_02017288
	adds r4, r4, #1
	cmp r4, #2
	blt _02269970
_02269990:
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	blx FUN_020AEE28
	ldr r0, [sp, #0xc]
	ldr r0, [r0, #8]
	blx FUN_020AF164
	ldr r0, [sp, #0xc]
	movs r1, #0
	str r1, [r0, #0xc]
_022699A6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022699AC: .4byte 0x0000087C
_022699B0: .4byte 0x00010550
_022699B4: .4byte 0x000106DC
_022699B8: .4byte 0x000008C4
	thumb_func_end ov70_02269878

	thumb_func_start ov70_022699BC
ov70_022699BC: @ 0x022699BC
	push {r3, r4, lr}
	sub sp, #4
	movs r4, #2
	lsls r4, r4, #0xc
	str r4, [sp]
	bl ov70_022699E4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov70_022699BC

	thumb_func_start ov70_022699D0
ov70_022699D0: @ 0x022699D0
	push {r3, r4, lr}
	sub sp, #4
	movs r4, #2
	lsls r4, r4, #0xc
	str r4, [sp]
	bl ov70_02269A3C
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov70_022699D0

	thumb_func_start ov70_022699E4
ov70_022699E4: @ 0x022699E4
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	ldr r1, _02269A30 @ =0x000106DC
	adds r6, r2, #0
	adds r0, r0, r1
	lsls r1, r6, #2
	adds r2, r4, r1
	ldr r1, _02269A34 @ =0x0000087C
	adds r5, r3, #0
	ldr r1, [r2, r1]
	adds r1, r1, r5
	ldrb r2, [r1, #2]
	movs r1, #0x14
	muls r1, r2, r1
	adds r0, r0, r1
	bl FUN_0201724C
	adds r1, r0, #0
	ldr r0, _02269A38 @ =0x000008C4
	lsls r2, r6, #3
	adds r0, r4, r0
	adds r4, r0, r2
	lsls r5, r5, #2
	ldr r2, [r4, r5]
	ldr r0, [sp, #0x10]
	adds r0, r0, r2
	cmp r0, r1
	bge _02269A20
	str r0, [r4, r5]
	pop {r4, r5, r6, pc}
_02269A20:
	movs r0, #2
	lsls r0, r0, #0xc
	adds r0, r2, r0
	blx FUN_020E1F6C
	str r1, [r4, r5]
	pop {r4, r5, r6, pc}
	nop
_02269A30: .4byte 0x000106DC
_02269A34: .4byte 0x0000087C
_02269A38: .4byte 0x000008C4
	thumb_func_end ov70_022699E4

	thumb_func_start ov70_02269A3C
ov70_02269A3C: @ 0x02269A3C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _02269A84 @ =0x000106DC
	adds r4, r2, #0
	adds r0, r0, r1
	lsls r1, r4, #2
	adds r2, r5, r1
	ldr r1, _02269A88 @ =0x0000087C
	adds r6, r3, #0
	ldr r1, [r2, r1]
	adds r1, r1, r6
	ldrb r2, [r1, #2]
	movs r1, #0x14
	muls r1, r2, r1
	adds r0, r0, r1
	bl FUN_0201724C
	ldr r3, _02269A8C @ =0x000008C4
	lsls r1, r4, #3
	adds r2, r5, r3
	adds r2, r2, r1
	lsls r1, r6, #2
	ldr r5, [sp, #0x10]
	ldr r4, [r2, r1]
	adds r4, r5, r4
	cmp r4, r0
	bge _02269A78
	str r4, [r2, r1]
	movs r0, #0
	pop {r4, r5, r6, pc}
_02269A78:
	subs r3, #0xc4
	subs r0, r0, r3
	str r0, [r2, r1]
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_02269A84: .4byte 0x000106DC
_02269A88: .4byte 0x0000087C
_02269A8C: .4byte 0x000008C4
	thumb_func_end ov70_02269A3C

	thumb_func_start ov70_02269A90
ov70_02269A90: @ 0x02269A90
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, _02269ADC @ =0x000106DC
	adds r4, r2, #0
	adds r0, r0, r1
	lsls r1, r4, #2
	adds r2, r5, r1
	ldr r1, _02269AE0 @ =0x0000087C
	adds r6, r3, #0
	ldr r1, [r2, r1]
	adds r1, r1, r6
	ldrb r2, [r1, #2]
	movs r1, #0x14
	muls r1, r2, r1
	adds r0, r0, r1
	bl FUN_0201724C
	ldr r1, [sp, #0x10]
	cmp r0, r1
	bge _02269ACC
	movs r1, #2
	lsls r2, r4, #3
	lsls r1, r1, #0xa
	adds r3, r5, r2
	lsls r2, r6, #2
	subs r0, r0, r1
	adds r2, r3, r2
	adds r1, #0xc4
	str r0, [r2, r1]
	pop {r4, r5, r6, pc}
_02269ACC:
	lsls r0, r4, #3
	adds r2, r5, r0
	lsls r0, r6, #2
	adds r2, r2, r0
	ldr r0, _02269AE4 @ =0x000008C4
	str r1, [r2, r0]
	pop {r4, r5, r6, pc}
	nop
_02269ADC: .4byte 0x000106DC
_02269AE0: .4byte 0x0000087C
_02269AE4: .4byte 0x000008C4
	thumb_func_end ov70_02269A90

	thumb_func_start ov70_02269AE8
ov70_02269AE8: @ 0x02269AE8
	push {r4, lr}
	lsls r2, r2, #2
	adds r2, r1, r2
	ldr r1, _02269B08 @ =0x0000087C
	ldr r4, _02269B0C @ =0x000106DC
	ldr r1, [r2, r1]
	adds r0, r0, r4
	adds r1, r1, r3
	ldrb r2, [r1, #2]
	movs r1, #0x14
	muls r1, r2, r1
	adds r0, r0, r1
	bl FUN_02017248
	pop {r4, pc}
	nop
_02269B08: .4byte 0x0000087C
_02269B0C: .4byte 0x000106DC
	thumb_func_end ov70_02269AE8

	thumb_func_start ov70_02269B10
ov70_02269B10: @ 0x02269B10
	ldr r3, _02269B18 @ =ov70_0226B92C
	movs r2, #1
	bx r3
	nop
_02269B18: .4byte ov70_0226B92C
	thumb_func_end ov70_02269B10

	thumb_func_start ov70_02269B1C
ov70_02269B1C: @ 0x02269B1C
	ldr r3, _02269B24 @ =ov70_0226B92C
	movs r2, #2
	bx r3
	nop
_02269B24: .4byte ov70_0226B92C
	thumb_func_end ov70_02269B1C

	thumb_func_start ov70_02269B28
ov70_02269B28: @ 0x02269B28
	ldr r3, _02269B30 @ =ov70_0226B92C
	movs r2, #3
	bx r3
	nop
_02269B30: .4byte ov70_0226B92C
	thumb_func_end ov70_02269B28

	thumb_func_start ov70_02269B34
ov70_02269B34: @ 0x02269B34
	ldr r3, _02269B3C @ =ov70_0226BAC8
	movs r2, #1
	bx r3
	nop
_02269B3C: .4byte ov70_0226BAC8
	thumb_func_end ov70_02269B34

	thumb_func_start ov70_02269B40
ov70_02269B40: @ 0x02269B40
	ldr r3, _02269B48 @ =ov70_0226BAC8
	movs r2, #2
	bx r3
	nop
_02269B48: .4byte ov70_0226BAC8
	thumb_func_end ov70_02269B40

	thumb_func_start ov70_02269B4C
ov70_02269B4C: @ 0x02269B4C
	ldr r3, _02269B54 @ =ov70_0226BAC8
	movs r2, #3
	bx r3
	nop
_02269B54: .4byte ov70_0226BAC8
	thumb_func_end ov70_02269B4C

	thumb_func_start ov70_02269B58
ov70_02269B58: @ 0x02269B58
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r1, #0
	adds r5, r7, #0
	str r0, [sp]
	movs r4, #0
	adds r5, #0xc
_02269B66:
	adds r3, r4, #3
	lsls r6, r3, #2
	ldr r3, _02269BB0 @ =0x0226E5A4
	ldr r0, [sp]
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #4
	bl ov70_0225D054
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r2, r1, r0
	ldr r1, [sp, #4]
	ldr r3, [sp, #0xc]
	adds r0, r5, #0
	str r2, [sp, #8]
	bl FUN_02017350
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02017348
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, #3
	blt _02269B66
	ldr r0, _02269BB4 @ =0x00000954
	movs r1, #0xff
	str r1, [r7, r0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02269BB0: .4byte 0x0226E5A4
_02269BB4: .4byte 0x00000954
	thumb_func_end ov70_02269B58

	thumb_func_start ov70_02269BB8
ov70_02269BB8: @ 0x02269BB8
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02269CE8 @ =0x0226E5C8
	movs r2, #1
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov70_02269828
	ldr r3, _02269CEC @ =0x0226E5D4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov70_02269828
	adds r0, r4, #0
	adds r0, #0x84
	movs r1, #0
	bl FUN_02017348
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	movs r2, #1
	ldr r0, [sp, #0x10]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsrs r0, r2, #1
	adds r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldm r5!, {r0, r1}
	add r3, sp, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #8
	str r0, [r3]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02269CF0 @ =0x00000958
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	movs r1, #6
	bl ov70_0225CD60
	cmp r0, #3
	bhi _02269CC8
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02269C28: @ jump table
	.2byte _02269C30 - _02269C28 - 2 @ case 0
	.2byte _02269C50 - _02269C28 - 2 @ case 1
	.2byte _02269C72 - _02269C28 - 2 @ case 2
	.2byte _02269C9E - _02269C28 - 2 @ case 3
_02269C30:
	movs r0, #7
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xe
	subs r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsrs r0, r0, #1
	subs r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _02269CF4 @ =0x0000BFFF
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	b _02269CC8
_02269C50:
	movs r0, #6
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x14]
	movs r0, #0xb
	ldr r1, [sp, #8]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _02269CF8 @ =0x00003FFF
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	b _02269CC8
_02269C72:
	movs r0, #0x17
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0xc]
	movs r0, #7
	ldr r1, [sp]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp]
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x84
	movs r1, #0
	movs r2, #1
	bl FUN_02017388
	b _02269CC8
_02269C9E:
	movs r0, #0x17
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #0xc]
	movs r0, #7
	ldr r1, [sp]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	movs r1, #2
	ldr r0, [sp, #8]
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [sp, #8]
	adds r0, r4, #0
	adds r0, #0x84
	subs r1, r1, #1
	movs r2, #1
	bl FUN_02017388
_02269CC8:
	adds r0, r4, #0
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0x84
	bl FUN_02017350
	adds r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r4, #0
	bl FUN_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_02269CE8: .4byte 0x0226E5C8
_02269CEC: .4byte 0x0226E5D4
_02269CF0: .4byte 0x00000958
_02269CF4: .4byte 0x0000BFFF
_02269CF8: .4byte 0x00003FFF
	thumb_func_end ov70_02269BB8

	thumb_func_start ov70_02269CFC
ov70_02269CFC: @ 0x02269CFC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _02269F00 @ =0x0226E5C8
	movs r2, #1
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov70_02269828
	ldr r3, _02269F04 @ =0x0226E5D4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov70_02269828
	ldr r3, _02269F08 @ =0x0226E5CC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov70_02269828
	adds r0, r4, #0
	adds r0, #0x84
	movs r1, #0
	bl FUN_02017348
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	movs r2, #1
	ldr r0, [sp, #0x10]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsrs r0, r2, #1
	adds r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldm r5!, {r0, r1}
	add r3, sp, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #8
	str r0, [r3]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	ldr r0, _02269F0C @ =0x00000958
	str r1, [r4, r0]
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r0, [r4, #8]
	movs r1, #6
	bl ov70_0225CD60
	cmp r0, #3
	bls _02269D72
	b _02269EEE
_02269D72:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02269D7E: @ jump table
	.2byte _02269D86 - _02269D7E - 2 @ case 0
	.2byte _02269DDA - _02269D7E - 2 @ case 1
	.2byte _02269E30 - _02269D7E - 2 @ case 2
	.2byte _02269E90 - _02269D7E - 2 @ case 3
_02269D86:
	movs r0, #7
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xe
	subs r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsrs r0, r0, #1
	subs r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _02269F10 @ =0x0000A38D
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	adds r0, r4, #0
	ldr r1, _02269F14 @ =0x0000DC70
	adds r0, #0xfc
	movs r2, #1
	bl FUN_02017388
	movs r1, #2
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xe
	adds r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0x84
	bl FUN_02017350
	movs r1, #2
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xe
	subs r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0xfc
	bl FUN_02017350
	b _02269EEE
_02269DDA:
	movs r0, #6
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x14]
	movs r0, #0xb
	ldr r1, [sp, #8]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _02269F18 @ =0x0000238E
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	adds r0, r4, #0
	ldr r1, _02269F1C @ =0x00005C71
	adds r0, #0xfc
	movs r2, #1
	bl FUN_02017388
	movs r1, #2
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xe
	subs r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0x84
	bl FUN_02017350
	movs r1, #2
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xe
	adds r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0xfc
	bl FUN_02017350
	b _02269EEE
_02269E30:
	movs r0, #0x17
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0xc]
	movs r0, #7
	ldr r1, [sp]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp]
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _02269F20 @ =0x0000E38F
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	adds r0, r4, #0
	ldr r1, _02269F24 @ =0x00001C71
	adds r0, #0xfc
	movs r2, #1
	bl FUN_02017388
	movs r3, #2
	adds r0, r4, #0
	ldr r5, [sp, #0x14]
	lsls r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, #0x84
	subs r3, r5, r3
	bl FUN_02017350
	movs r3, #2
	adds r0, r4, #0
	ldr r5, [sp, #0x14]
	lsls r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, #0xfc
	adds r3, r5, r3
	bl FUN_02017350
	b _02269EEE
_02269E90:
	movs r0, #0x17
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #0xc]
	movs r0, #7
	ldr r1, [sp]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _02269F28 @ =0x0000638D
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	adds r0, r4, #0
	ldr r1, _02269F2C @ =0x00009C71
	adds r0, #0xfc
	movs r2, #1
	bl FUN_02017388
	movs r3, #2
	adds r0, r4, #0
	ldr r5, [sp, #0x14]
	lsls r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, #0x84
	adds r3, r5, r3
	bl FUN_02017350
	movs r3, #2
	adds r0, r4, #0
	ldr r5, [sp, #0x14]
	lsls r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, #0xfc
	subs r3, r5, r3
	bl FUN_02017350
_02269EEE:
	adds r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r4, #0
	bl FUN_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_02269F00: .4byte 0x0226E5C8
_02269F04: .4byte 0x0226E5D4
_02269F08: .4byte 0x0226E5CC
_02269F0C: .4byte 0x00000958
_02269F10: .4byte 0x0000A38D
_02269F14: .4byte 0x0000DC70
_02269F18: .4byte 0x0000238E
_02269F1C: .4byte 0x00005C71
_02269F20: .4byte 0x0000E38F
_02269F24: .4byte 0x00001C71
_02269F28: .4byte 0x0000638D
_02269F2C: .4byte 0x00009C71
	thumb_func_end ov70_02269CFC

	thumb_func_start ov70_02269F30
ov70_02269F30: @ 0x02269F30
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r3, _0226A1BC @ =0x0226E5C8
	movs r2, #1
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov70_02269828
	ldr r3, _0226A1C0 @ =0x0226E5D4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov70_02269828
	ldr r3, _0226A1C4 @ =0x0226E5CC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov70_02269828
	ldr r3, _0226A1C8 @ =0x0226E5D0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #3
	bl ov70_02269828
	adds r0, r4, #0
	adds r0, #0x84
	movs r1, #0
	bl FUN_02017348
	ldr r1, _0226A1CC @ =0x00000958
	movs r2, #8
	str r2, [r4, r1]
	adds r0, r1, #4
	str r2, [r4, r0]
	adds r1, #8
	str r2, [r4, r1]
	ldr r0, [r4, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	movs r2, #1
	ldr r0, [sp, #0x10]
	lsls r2, r2, #0x10
	adds r0, r0, r2
	str r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	lsrs r0, r2, #1
	adds r0, r1, r0
	add r5, sp, #0xc
	str r0, [sp, #0xc]
	ldm r5!, {r0, r1}
	add r3, sp, #0
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #6
	str r0, [r3]
	ldr r0, [sp, #4]
	adds r0, r0, r2
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	bl ov70_0225CD60
	cmp r0, #3
	bls _02269FB6
	b _0226A1AA
_02269FB6:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02269FC2: @ jump table
	.2byte _02269FCA - _02269FC2 - 2 @ case 0
	.2byte _0226A03C - _02269FC2 - 2 @ case 1
	.2byte _0226A0B0 - _02269FC2 - 2 @ case 2
	.2byte _0226A12E - _02269FC2 - 2 @ case 3
_02269FCA:
	movs r0, #7
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xe
	subs r1, r1, r0
	str r1, [sp, #0x14]
	ldr r1, [sp, #8]
	lsrs r0, r0, #1
	subs r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _0226A1D0 @ =0x0000A38D
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	adds r0, r4, #0
	ldr r1, _0226A1D4 @ =0x0000DC70
	adds r0, #0xfc
	movs r2, #1
	bl FUN_02017388
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, _0226A1D8 @ =0x0000BFFF
	adds r0, r4, r0
	movs r2, #1
	bl FUN_02017388
	movs r1, #2
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xe
	adds r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0x84
	bl FUN_02017350
	movs r1, #2
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xe
	subs r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0xfc
	bl FUN_02017350
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r4, r0
	bl FUN_02017350
	b _0226A1AA
_0226A03C:
	movs r0, #6
	ldr r1, [sp, #0x14]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x14]
	movs r0, #0xb
	ldr r1, [sp, #8]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _0226A1DC @ =0x0000238E
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	adds r0, r4, #0
	ldr r1, _0226A1E0 @ =0x00005C71
	adds r0, #0xfc
	movs r2, #1
	bl FUN_02017388
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, _0226A1E4 @ =0x00003FFF
	adds r0, r4, r0
	movs r2, #1
	bl FUN_02017388
	movs r1, #2
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xe
	subs r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0x84
	bl FUN_02017350
	movs r1, #2
	adds r0, r4, #0
	ldr r2, [sp, #0xc]
	lsls r1, r1, #0xe
	adds r1, r2, r1
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, #0xfc
	bl FUN_02017350
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r4, r0
	bl FUN_02017350
	b _0226A1AA
_0226A0B0:
	movs r0, #0x17
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0xc]
	movs r0, #7
	ldr r1, [sp]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp]
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _0226A1E8 @ =0x0000E38F
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	adds r0, r4, #0
	ldr r1, _0226A1EC @ =0x00001C71
	adds r0, #0xfc
	movs r2, #1
	bl FUN_02017388
	movs r0, #0x5d
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	movs r2, #1
	bl FUN_02017388
	movs r3, #2
	adds r0, r4, #0
	ldr r5, [sp, #0x14]
	lsls r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, #0x84
	subs r3, r5, r3
	bl FUN_02017350
	movs r3, #2
	adds r0, r4, #0
	ldr r5, [sp, #0x14]
	lsls r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, #0xfc
	adds r3, r5, r3
	bl FUN_02017350
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r4, r0
	bl FUN_02017350
	b _0226A1AA
_0226A12E:
	movs r0, #0x17
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #0xc]
	movs r0, #7
	ldr r1, [sp]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp]
	movs r0, #2
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #8]
	adds r0, r4, #0
	ldr r1, _0226A1F0 @ =0x0000638D
	adds r0, #0x84
	movs r2, #1
	bl FUN_02017388
	adds r0, r4, #0
	ldr r1, _0226A1F4 @ =0x00009C71
	adds r0, #0xfc
	movs r2, #1
	bl FUN_02017388
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, _0226A1F8 @ =0x00007FFF
	adds r0, r4, r0
	movs r2, #1
	bl FUN_02017388
	movs r3, #2
	adds r0, r4, #0
	ldr r5, [sp, #0x14]
	lsls r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, #0x84
	adds r3, r5, r3
	bl FUN_02017350
	movs r3, #2
	adds r0, r4, #0
	ldr r5, [sp, #0x14]
	lsls r3, r3, #0xe
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	adds r0, #0xfc
	subs r3, r5, r3
	bl FUN_02017350
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x14]
	adds r0, r4, r0
	bl FUN_02017350
_0226A1AA:
	adds r4, #0xc
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	adds r0, r4, #0
	bl FUN_02017350
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_0226A1BC: .4byte 0x0226E5C8
_0226A1C0: .4byte 0x0226E5D4
_0226A1C4: .4byte 0x0226E5CC
_0226A1C8: .4byte 0x0226E5D0
_0226A1CC: .4byte 0x00000958
_0226A1D0: .4byte 0x0000A38D
_0226A1D4: .4byte 0x0000DC70
_0226A1D8: .4byte 0x0000BFFF
_0226A1DC: .4byte 0x0000238E
_0226A1E0: .4byte 0x00005C71
_0226A1E4: .4byte 0x00003FFF
_0226A1E8: .4byte 0x0000E38F
_0226A1EC: .4byte 0x00001C71
_0226A1F0: .4byte 0x0000638D
_0226A1F4: .4byte 0x00009C71
_0226A1F8: .4byte 0x00007FFF
	thumb_func_end ov70_02269F30

	thumb_func_start ov70_0226A1FC
ov70_0226A1FC: @ 0x0226A1FC
	ldr r3, _0226A204 @ =ov70_0226A9D0
	movs r2, #1
	bx r3
	nop
_0226A204: .4byte ov70_0226A9D0
	thumb_func_end ov70_0226A1FC

	thumb_func_start ov70_0226A208
ov70_0226A208: @ 0x0226A208
	ldr r3, _0226A210 @ =ov70_0226A9D0
	movs r2, #2
	bx r3
	nop
_0226A210: .4byte ov70_0226A9D0
	thumb_func_end ov70_0226A208

	thumb_func_start ov70_0226A214
ov70_0226A214: @ 0x0226A214
	ldr r3, _0226A21C @ =ov70_0226A9D0
	movs r2, #3
	bx r3
	nop
_0226A21C: .4byte ov70_0226A9D0
	thumb_func_end ov70_0226A214

	thumb_func_start ov70_0226A220
ov70_0226A220: @ 0x0226A220
	ldr r3, _0226A228 @ =ov70_0226B7B0
	movs r2, #1
	bx r3
	nop
_0226A228: .4byte ov70_0226B7B0
	thumb_func_end ov70_0226A220

	thumb_func_start ov70_0226A22C
ov70_0226A22C: @ 0x0226A22C
	ldr r3, _0226A234 @ =ov70_0226B7B0
	movs r2, #2
	bx r3
	nop
_0226A234: .4byte ov70_0226B7B0
	thumb_func_end ov70_0226A22C

	thumb_func_start ov70_0226A238
ov70_0226A238: @ 0x0226A238
	ldr r3, _0226A240 @ =ov70_0226B7B0
	movs r2, #4
	bx r3
	nop
_0226A240: .4byte ov70_0226B7B0
	thumb_func_end ov70_0226A238

	thumb_func_start ov70_0226A244
ov70_0226A244: @ 0x0226A244
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A284 @ =0x0226E640
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A250:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A288 @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A250
	movs r0, #0
	str r0, [sp]
	ldr r0, _0226A28C @ =0x00000954
	ldr r1, _0226A290 @ =0x0226E2EC
	adds r0, r7, r0
	movs r2, #2
	movs r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A284: .4byte 0x0226E640
_0226A288: .4byte 0x0226E5A4
_0226A28C: .4byte 0x00000954
_0226A290: .4byte 0x0226E2EC
	thumb_func_end ov70_0226A244

	thumb_func_start ov70_0226A294
ov70_0226A294: @ 0x0226A294
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A2D4 @ =0x0226E650
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A2A0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A2D8 @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A2A0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0226A2DC @ =0x00000954
	ldr r1, _0226A2E0 @ =0x0226E304
	adds r0, r7, r0
	movs r2, #2
	movs r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A2D4: .4byte 0x0226E650
_0226A2D8: .4byte 0x0226E5A4
_0226A2DC: .4byte 0x00000954
_0226A2E0: .4byte 0x0226E304
	thumb_func_end ov70_0226A294

	thumb_func_start ov70_0226A2E4
ov70_0226A2E4: @ 0x0226A2E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A324 @ =0x0226E660
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A2F0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A328 @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A2F0
	movs r0, #0
	str r0, [sp]
	ldr r0, _0226A32C @ =0x00000954
	ldr r1, _0226A330 @ =0x0226E34C
	adds r0, r7, r0
	movs r2, #3
	movs r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A324: .4byte 0x0226E660
_0226A328: .4byte 0x0226E5A4
_0226A32C: .4byte 0x00000954
_0226A330: .4byte 0x0226E34C
	thumb_func_end ov70_0226A2E4

	thumb_func_start ov70_0226A334
ov70_0226A334: @ 0x0226A334
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A374 @ =0x0226E640
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A340:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A378 @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A340
	movs r0, #1
	str r0, [sp]
	ldr r0, _0226A37C @ =0x00000954
	ldr r1, _0226A380 @ =0x0226E2FC
	adds r0, r7, r0
	movs r2, #2
	movs r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A374: .4byte 0x0226E640
_0226A378: .4byte 0x0226E5A4
_0226A37C: .4byte 0x00000954
_0226A380: .4byte 0x0226E2FC
	thumb_func_end ov70_0226A334

	thumb_func_start ov70_0226A384
ov70_0226A384: @ 0x0226A384
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A3C4 @ =0x0226E650
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A390:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A3C8 @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A390
	movs r0, #1
	str r0, [sp]
	ldr r0, _0226A3CC @ =0x00000954
	ldr r1, _0226A3D0 @ =0x0226E334
	adds r0, r7, r0
	movs r2, #3
	movs r3, #0x29
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A3C4: .4byte 0x0226E650
_0226A3C8: .4byte 0x0226E5A4
_0226A3CC: .4byte 0x00000954
_0226A3D0: .4byte 0x0226E334
	thumb_func_end ov70_0226A384

	thumb_func_start ov70_0226A3D4
ov70_0226A3D4: @ 0x0226A3D4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A414 @ =0x0226E660
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A3E0:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A418 @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A3E0
	movs r0, #1
	str r0, [sp]
	ldr r0, _0226A41C @ =0x00000954
	ldr r1, _0226A420 @ =0x0226E358
	adds r0, r7, r0
	movs r2, #3
	movs r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A414: .4byte 0x0226E660
_0226A418: .4byte 0x0226E5A4
_0226A41C: .4byte 0x00000954
_0226A420: .4byte 0x0226E358
	thumb_func_end ov70_0226A3D4

	thumb_func_start ov70_0226A424
ov70_0226A424: @ 0x0226A424
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A468 @ =0x0226E640
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A430:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A46C @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A430
	ldr r0, _0226A470 @ =0x00000954
	movs r2, #2
	str r2, [sp]
	ldr r1, _0226A474 @ =0x0226E314
	adds r0, r7, r0
	movs r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	adds r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226A468: .4byte 0x0226E640
_0226A46C: .4byte 0x0226E5A4
_0226A470: .4byte 0x00000954
_0226A474: .4byte 0x0226E314
	thumb_func_end ov70_0226A424

	thumb_func_start ov70_0226A478
ov70_0226A478: @ 0x0226A478
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A4BC @ =0x0226E650
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A484:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A4C0 @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A484
	ldr r0, _0226A4C4 @ =0x00000954
	movs r2, #2
	str r2, [sp]
	ldr r1, _0226A4C8 @ =0x0226E2F4
	adds r0, r7, r0
	movs r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	adds r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226A4BC: .4byte 0x0226E650
_0226A4C0: .4byte 0x0226E5A4
_0226A4C4: .4byte 0x00000954
_0226A4C8: .4byte 0x0226E2F4
	thumb_func_end ov70_0226A478

	thumb_func_start ov70_0226A4CC
ov70_0226A4CC: @ 0x0226A4CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r5, _0226A510 @ =0x0226E660
	str r0, [sp, #8]
	adds r7, r1, #0
	movs r4, #0
_0226A4D8:
	ldrb r3, [r5]
	ldr r0, [sp, #8]
	adds r1, r7, #0
	lsls r6, r3, #2
	ldr r3, _0226A514 @ =0x0226E5A4
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	adds r4, r4, #1
	adds r5, r5, #1
	cmp r4, #0x10
	blt _0226A4D8
	ldr r0, _0226A518 @ =0x00000954
	movs r2, #2
	str r2, [sp]
	ldr r1, _0226A51C @ =0x0226E30C
	adds r0, r7, r0
	movs r3, #0x21
	str r7, [sp, #4]
	bl ov70_0226BC40
	ldr r0, [sp, #8]
	adds r1, r7, #0
	bl ov70_0226BB34
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226A510: .4byte 0x0226E660
_0226A514: .4byte 0x0226E5A4
_0226A518: .4byte 0x00000954
_0226A51C: .4byte 0x0226E30C
	thumb_func_end ov70_0226A4CC

	thumb_func_start ov70_0226A520
ov70_0226A520: @ 0x0226A520
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	adds r5, r1, #0
	movs r0, #2
	ldrsh r0, [r5, r0]
	adds r0, r0, #1
	cmp r0, #0x36
	bgt _0226A534
	strh r0, [r5, #2]
_0226A534:
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r0, #6
	muls r0, r1, r0
	movs r1, #0x36
	blx FUN_020E1F6C
	adds r6, r0, #0
	ldr r0, _0226A5E8 @ =0x00000955
	ldrsb r4, [r5, r0]
	cmp r4, r6
	bhs _0226A572
	adds r7, r5, #0
	adds r7, #0xc
_0226A550:
	adds r0, r4, #0
	movs r1, #3
	blx FUN_020E1F6C
	ldr r0, _0226A5EC @ =0x00000954
	ldrsb r0, [r5, r0]
	cmp r1, r0
	bhs _0226A56C
	movs r0, #0x78
	muls r0, r1, r0
	adds r0, r7, r0
	movs r1, #1
	bl FUN_02017348
_0226A56C:
	adds r4, r4, #1
	cmp r4, r6
	blo _0226A550
_0226A572:
	ldr r1, _0226A5E8 @ =0x00000955
	movs r0, #1
	str r0, [sp, #8]
	strb r6, [r5, r1]
	subs r0, r1, #1
	ldrsb r0, [r5, r0]
	movs r4, #0
	cmp r0, #0
	ble _0226A5CC
	adds r7, r5, #0
	adds r7, #0xc
	adds r6, r7, #0
_0226A58A:
	adds r0, r7, #0
	bl FUN_0201734C
	cmp r0, #1
	bne _0226A5BE
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov70_022699D0
	str r0, [sp, #8]
	cmp r0, #0
	beq _0226A5BE
	adds r0, r6, #0
	movs r1, #0
	bl FUN_02017348
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov70_02269A90
_0226A5BE:
	ldr r0, _0226A5EC @ =0x00000954
	adds r4, r4, #1
	ldrsb r0, [r5, r0]
	adds r7, #0x78
	adds r6, #0x78
	cmp r4, r0
	blt _0226A58A
_0226A5CC:
	ldr r0, _0226A5E8 @ =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #6
	blt _0226A5E0
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _0226A5E0
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0226A5E0:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A5E8: .4byte 0x00000955
_0226A5EC: .4byte 0x00000954
	thumb_func_end ov70_0226A520

	thumb_func_start ov70_0226A5F0
ov70_0226A5F0: @ 0x0226A5F0
	ldr r3, _0226A5F8 @ =ov70_0226B998
	movs r2, #0
	bx r3
	nop
_0226A5F8: .4byte ov70_0226B998
	thumb_func_end ov70_0226A5F0

	thumb_func_start ov70_0226A5FC
ov70_0226A5FC: @ 0x0226A5FC
	ldr r3, _0226A604 @ =ov70_0226B998
	movs r2, #1
	bx r3
	nop
_0226A604: .4byte ov70_0226B998
	thumb_func_end ov70_0226A5FC

	thumb_func_start ov70_0226A608
ov70_0226A608: @ 0x0226A608
	ldr r3, _0226A610 @ =ov70_0226B998
	movs r2, #2
	bx r3
	nop
_0226A610: .4byte ov70_0226B998
	thumb_func_end ov70_0226A608

	thumb_func_start ov70_0226A614
ov70_0226A614: @ 0x0226A614
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	movs r0, #2
	ldrsh r1, [r5, r0]
	lsls r0, r1, #1
	adds r1, r1, r0
	asrs r0, r1, #4
	lsrs r0, r0, #0x1b
	adds r0, r1, r0
	asrs r4, r0, #5
	ldr r0, _0226A6C0 @ =0x00000954
	ldrsh r1, [r5, r0]
	cmp r4, r1
	beq _0226A662
	strh r4, [r5, r0]
	adds r0, r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, r4
	bls _0226A662
	cmp r4, #0
	beq _0226A652
	adds r2, r5, #0
	subs r1, r4, #1
	movs r0, #0x78
	muls r0, r1, r0
	adds r2, #0xc
	adds r0, r2, r0
	movs r1, #0
	bl FUN_02017348
_0226A652:
	adds r1, r5, #0
	movs r0, #0x78
	adds r1, #0xc
	muls r0, r4, r0
	adds r0, r1, r0
	movs r1, #1
	bl FUN_02017348
_0226A662:
	movs r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x20
	bge _0226A66E
	adds r0, r0, #1
	strh r0, [r5, #2]
_0226A66E:
	ldr r0, _0226A6C4 @ =0x00000956
	movs r4, #0
	ldrsh r0, [r5, r0]
	str r4, [sp]
	cmp r0, #0
	ble _0226A6BA
	adds r6, r5, #0
	adds r6, #0xc
_0226A67E:
	adds r0, r6, #0
	bl FUN_0201734C
	cmp r0, #0
	beq _0226A6AE
	ldr r0, _0226A6C4 @ =0x00000956
	ldrsh r0, [r5, r0]
	subs r0, r0, #1
	cmp r4, r0
	bne _0226A6A2
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov70_022699D0
	str r0, [sp]
	b _0226A6AE
_0226A6A2:
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov70_022699BC
_0226A6AE:
	ldr r0, _0226A6C4 @ =0x00000956
	adds r4, r4, #1
	ldrsh r0, [r5, r0]
	adds r6, #0x78
	cmp r4, r0
	blt _0226A67E
_0226A6BA:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226A6C0: .4byte 0x00000954
_0226A6C4: .4byte 0x00000956
	thumb_func_end ov70_0226A614

	thumb_func_start ov70_0226A6C8
ov70_0226A6C8: @ 0x0226A6C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r0, _0226A810 @ =0x0000087C
	adds r5, r1, #0
	ldr r0, [r5, r0]
	ldrb r0, [r0, #2]
	cmp r0, #0x11
	bne _0226A6DE
	bl FUN_02022974
_0226A6DE:
	ldr r0, _0226A814 @ =0x00000954
	ldr r1, [r5, r0]
	cmp r1, #0
	ble _0226A6F6
	subs r1, r1, #1
	str r1, [r5, r0]
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0
	bl FUN_02017348
	b _0226A752
_0226A6F6:
	movs r0, #2
	ldrsh r1, [r5, r0]
	cmp r1, #3
	bge _0226A752
	adds r0, r5, #0
	adds r1, r1, #1
	bl ov70_02269810
	cmp r0, #1
	bne _0226A752
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #1
	bl FUN_02017348
	movs r2, #0
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r3, r2, #0
	bl ov70_022699D0
	cmp r0, #1
	bne _0226A752
	movs r1, #2
	ldrsh r0, [r5, r1]
	movs r2, #3
	adds r0, r0, #1
	strh r0, [r5, #2]
	ldr r0, _0226A814 @ =0x00000954
	str r2, [r5, r0]
	ldrsh r0, [r5, r1]
	cmp r0, #3
	bge _0226A748
	movs r2, #0
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r3, r2, #0
	str r2, [sp]
	bl ov70_02269A90
	b _0226A752
_0226A748:
	adds r0, r5, #0
	adds r0, #0xc
	movs r1, #0
	bl FUN_02017348
_0226A752:
	adds r7, r5, #0
	movs r4, #1
	adds r7, #0xc
	str r4, [sp, #8]
	adds r7, #0x78
	adds r6, r5, #4
_0226A75E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02269810
	cmp r0, #1
	bne _0226A7FE
	movs r0, #2
	ldrsh r1, [r5, r0]
	subs r0, r4, #1
	cmp r1, r0
	ble _0226A7FA
	adds r0, r7, #0
	movs r1, #1
	bl FUN_02017348
	movs r0, #0xa
	lsls r0, r0, #0xa
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov70_02269A3C
	cmp r0, #0
	bne _0226A798
	movs r0, #0
	str r0, [sp, #8]
	b _0226A7FE
_0226A798:
	subs r0, r4, #1
	lsls r0, r0, #2
	adds r1, r5, r0
	ldr r0, _0226A818 @ =0x00000958
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _0226A7C6
	adds r0, r7, #0
	movs r1, #0
	bl FUN_02017348
	ldr r0, _0226A810 @ =0x0000087C
	ldr r0, [r6, r0]
	ldrb r0, [r0]
	lsls r1, r0, #4
	ldr r0, [sp, #4]
	adds r1, r0, r1
	ldr r0, _0226A81C @ =0x00010558
	ldr r0, [r1, r0]
	movs r1, #0x1f
	blx FUN_020B3764
	b _0226A7FE
_0226A7C6:
	ldr r0, _0226A818 @ =0x00000958
	ldr r0, [r1, r0]
	subs r2, r0, #1
	ldr r0, _0226A818 @ =0x00000958
	str r2, [r1, r0]
	subs r0, #0xdc
	ldr r0, [r6, r0]
	ldrb r0, [r0]
	lsls r2, r0, #4
	ldr r0, [sp, #4]
	adds r2, r0, r2
	ldr r0, _0226A81C @ =0x00010558
	ldr r0, [r2, r0]
	ldr r2, _0226A818 @ =0x00000958
	ldr r1, [r1, r2]
	movs r2, #0x14
	muls r2, r1, r2
	asrs r1, r2, #2
	lsrs r1, r1, #0x1d
	adds r1, r2, r1
	asrs r1, r1, #3
	blx FUN_020B3764
	movs r0, #0
	str r0, [sp, #8]
	b _0226A7FE
_0226A7FA:
	movs r0, #0
	str r0, [sp, #8]
_0226A7FE:
	adds r4, r4, #1
	adds r7, #0x78
	adds r6, r6, #4
	cmp r4, #3
	ble _0226A75E
	ldr r0, [sp, #8]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226A810: .4byte 0x0000087C
_0226A814: .4byte 0x00000954
_0226A818: .4byte 0x00000958
_0226A81C: .4byte 0x00010558
	thumb_func_end ov70_0226A6C8

	thumb_func_start ov70_0226A820
ov70_0226A820: @ 0x0226A820
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrb r2, [r4, #1]
	adds r5, r0, #0
	cmp r2, #0
	beq _0226A832
	cmp r2, #1
	beq _0226A848
	b _0226A854
_0226A832:
	bl ov70_0226AC08
	cmp r0, #0
	beq _0226A854
	movs r0, #1
	strb r0, [r4, #1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0226ADA0
	b _0226A854
_0226A848:
	bl ov70_0226AF60
	cmp r0, #0
	beq _0226A854
	movs r0, #1
	pop {r3, r4, r5, pc}
_0226A854:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0226A820

	thumb_func_start ov70_0226A858
ov70_0226A858: @ 0x0226A858
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	ldr r1, _0226A924 @ =0x00000955
	str r0, [sp]
	adds r0, r1, #1
	ldrsb r2, [r5, r1]
	ldrb r0, [r5, r0]
	cmp r2, r0
	bge _0226A8C4
	subs r0, r1, #1
	ldrsb r0, [r5, r0]
	adds r2, r0, #1
	subs r0, r1, #1
	strb r2, [r5, r0]
	ldrsb r0, [r5, r0]
	cmp r0, #8
	blt _0226A888
	movs r2, #0
	subs r0, r1, #1
	strb r2, [r5, r0]
	ldrsb r0, [r5, r1]
	adds r0, r0, #1
	strb r0, [r5, r1]
_0226A888:
	ldr r0, _0226A928 @ =0x00000954
	ldrsb r1, [r5, r0]
	lsls r2, r1, #2
	asrs r1, r2, #2
	lsrs r1, r1, #0x1d
	adds r1, r2, r1
	asrs r2, r1, #3
	adds r1, r0, #1
	ldrsb r1, [r5, r1]
	adds r0, r0, #3
	ldrb r6, [r5, r0]
	lsls r1, r1, #2
	adds r7, r2, r1
	cmp r6, r7
	bhs _0226A8C0
	adds r1, r5, #0
	movs r0, #0x78
	adds r1, #0xc
	muls r0, r6, r0
	adds r4, r1, r0
_0226A8B0:
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02017348
	adds r6, r6, #1
	adds r4, #0x78
	cmp r6, r7
	blo _0226A8B0
_0226A8C0:
	ldr r0, _0226A92C @ =0x00000957
	strb r7, [r5, r0]
_0226A8C4:
	ldr r0, _0226A92C @ =0x00000957
	movs r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _0226A904
	adds r7, r5, #0
	adds r7, #0xc
	adds r6, r7, #0
_0226A8D4:
	adds r0, r7, #0
	bl FUN_0201734C
	cmp r0, #1
	bne _0226A8F6
	ldr r0, [sp]
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov70_0226B8C4
	str r0, [sp, #4]
	cmp r0, #1
	bne _0226A8F6
	adds r0, r6, #0
	movs r1, #0
	bl FUN_02017348
_0226A8F6:
	ldr r0, _0226A92C @ =0x00000957
	adds r4, r4, #1
	ldrb r0, [r5, r0]
	adds r7, #0x78
	adds r6, #0x78
	cmp r4, r0
	blt _0226A8D4
_0226A904:
	ldr r0, _0226A924 @ =0x00000955
	ldrsb r1, [r5, r0]
	adds r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r1, r0
	bne _0226A91C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _0226A91C
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226A91C:
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226A924: .4byte 0x00000955
_0226A928: .4byte 0x00000954
_0226A92C: .4byte 0x00000957
	thumb_func_end ov70_0226A858

	thumb_func_start ov70_0226A930
ov70_0226A930: @ 0x0226A930
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #2
	ldr r0, _0226A954 @ =0x00000954
	ldrsh r1, [r4, r1]
	adds r0, r4, r0
	bl ov70_0226BCC0
	movs r1, #2
	ldrsh r1, [r4, r1]
	adds r1, r1, #1
	strh r1, [r4, #2]
	cmp r0, #2
	bne _0226A950
	movs r0, #1
	pop {r4, pc}
_0226A950:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0226A954: .4byte 0x00000954
	thumb_func_end ov70_0226A930

	thumb_func_start ov70_0226A958
ov70_0226A958: @ 0x0226A958
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #2
	adds r6, r0, #0
	ldr r0, _0226A994 @ =0x00000954
	ldrsh r1, [r5, r1]
	adds r0, r5, r0
	bl ov70_0226BCC0
	adds r4, r0, #0
	movs r0, #2
	ldrsh r0, [r5, r0]
	adds r0, r0, #1
	strh r0, [r5, #2]
	cmp r4, #1
	bne _0226A980
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov70_0226BBA8
_0226A980:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov70_0226BBDC
	cmp r4, #2
	bne _0226A990
	movs r0, #1
	pop {r4, r5, r6, pc}
_0226A990:
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0226A994: .4byte 0x00000954
	thumb_func_end ov70_0226A958

	thumb_func_start ov70_0226A998
ov70_0226A998: @ 0x0226A998
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5, #8]
	bl ov70_0225CE70
	cmp r0, #1
	bne _0226A9AC
	movs r0, #0
	pop {r4, r5, r6, pc}
_0226A9AC:
	movs r4, #0
_0226A9AE:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_02269810
	cmp r0, #1
	bne _0226A9C4
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov70_02269878
_0226A9C4:
	adds r4, r4, #1
	cmp r4, #0x12
	blt _0226A9AE
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov70_0226A998

	thumb_func_start ov70_0226A9D0
ov70_0226A9D0: @ 0x0226A9D0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov70_0225CCAC
	ldr r1, [r4, #8]
	cmp r1, r0
	bne _0226A9EC
	ldr r0, [r5, #8]
	bl ov70_02260B3C
_0226A9EC:
	ldr r0, [r4, #8]
	bl ov70_0225CD34
	add r2, sp, #0
	strh r0, [r2]
	lsrs r0, r0, #0x10
	strh r0, [r2, #2]
	ldrh r0, [r2]
	movs r1, #4
	strh r0, [r2, #4]
	ldrh r0, [r2, #2]
	strh r0, [r2, #6]
	ldrsh r1, [r2, r1]
	ldr r0, [r5, #0xc]
	asrs r3, r1, #3
	lsrs r3, r3, #0x1c
	adds r3, r1, r3
	lsls r1, r3, #0xc
	movs r3, #6
	ldrsh r2, [r2, r3]
	lsrs r1, r1, #0x10
	asrs r3, r2, #3
	lsrs r3, r3, #0x1c
	adds r3, r2, r3
	lsls r2, r3, #0xc
	lsrs r2, r2, #0x10
	bl ov70_0225C8C4
	cmp r0, #0x2a
	bne _0226AA2C
	movs r1, #1
	b _0226AA2E
_0226AA2C:
	movs r1, #0
_0226AA2E:
	ldr r0, _0226AB00 @ =0x00000965
	cmp r6, #1
	strb r1, [r4, r0]
	beq _0226AA3E
	cmp r6, #2
	beq _0226AA58
	cmp r6, #3
	b _0226AA8A
_0226AA3E:
	ldr r3, _0226AB04 @ =0x0226E5E4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov70_02269828
	movs r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov70_0226B714
	b _0226AAD2
_0226AA58:
	ldr r3, _0226AB04 @ =0x0226E5E4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov70_02269828
	ldr r3, _0226AB08 @ =0x0226E5E8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov70_02269828
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #2
	bl ov70_0226B714
	movs r2, #1
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov70_0226B714
	b _0226AAD2
_0226AA8A:
	ldr r3, _0226AB04 @ =0x0226E5E4
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl ov70_02269828
	ldr r3, _0226AB08 @ =0x0226E5E8
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl ov70_02269828
	ldr r3, _0226AB0C @ =0x0226E5EC
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	bl ov70_02269828
	movs r2, #0
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov70_0226B714
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	movs r3, #2
	bl ov70_0226B714
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #2
	movs r3, #1
	bl ov70_0226B714
_0226AAD2:
	ldr r0, _0226AB10 @ =0x00000955
	movs r1, #0
	strb r6, [r4, r0]
	ldr r0, [r4, #8]
	bl ov70_0225D030
	ldr r0, _0226AB00 @ =0x00000965
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0226AAF2
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0226AB14
	add sp, #8
	pop {r4, r5, r6, pc}
_0226AAF2:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0226ABAC
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0226AB00: .4byte 0x00000965
_0226AB04: .4byte 0x0226E5E4
_0226AB08: .4byte 0x0226E5E8
_0226AB0C: .4byte 0x0226E5EC
_0226AB10: .4byte 0x00000955
	thumb_func_end ov70_0226A9D0

	thumb_func_start ov70_0226AB14
ov70_0226AB14: @ 0x0226AB14
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r1, #0
	ldr r0, [r5, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	ldr r0, _0226AB94 @ =0x00000955
	ldrsb r0, [r5, r0]
	subs r1, r0, #1
	ldr r0, _0226AB98 @ =0x0226E2E8
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0226AB42
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226AB50
_0226AB42:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226AB50:
	ldr r6, [sp, #0x14]
	ldr r4, [sp, #0x18]
	ldr r7, [sp, #0x10]
	blx FUN_020E1740
	adds r0, r6, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0x6c
	str r0, [sp, #0xc]
	ldr r0, _0226AB9C @ =0x00000A04
	adds r1, r7, #0
	adds r0, r5, r0
	adds r2, r7, #0
	adds r3, r6, #0
	bl ov70_022692B4
	ldr r0, _0226ABA0 @ =0x00000A2C
	movs r3, #2
	ldr r2, _0226ABA4 @ =0x0000071C
	adds r0, r5, r0
	movs r1, #0
	lsls r3, r3, #0xe
	bl ov70_0226949C
	adds r0, r5, #0
	bl ov70_0226B324
	ldr r0, _0226ABA8 @ =0x00000956
	movs r1, #0
	strh r1, [r5, r0]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226AB94: .4byte 0x00000955
_0226AB98: .4byte 0x0226E2E8
_0226AB9C: .4byte 0x00000A04
_0226ABA0: .4byte 0x00000A2C
_0226ABA4: .4byte 0x0000071C
_0226ABA8: .4byte 0x00000956
	thumb_func_end ov70_0226AB14

	thumb_func_start ov70_0226ABAC
ov70_0226ABAC: @ 0x0226ABAC
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	movs r0, #2
	ldr r3, [sp, #0x14]
	lsls r0, r0, #0xc
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	adds r0, r3, r0
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	ldr r0, _0226ABF8 @ =0x00000A04
	adds r2, r1, #0
	adds r0, r4, r0
	bl ov70_022692B4
	ldr r0, _0226ABFC @ =0x00000A2C
	movs r1, #0
	ldr r2, _0226AC00 @ =0x0000071C
	adds r0, r4, r0
	adds r3, r1, #0
	bl ov70_0226949C
	adds r0, r4, #0
	bl ov70_0226B51C
	ldr r0, _0226AC04 @ =0x00000956
	movs r1, #0
	strh r1, [r4, r0]
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_0226ABF8: .4byte 0x00000A04
_0226ABFC: .4byte 0x00000A2C
_0226AC00: .4byte 0x0000071C
_0226AC04: .4byte 0x00000956
	thumb_func_end ov70_0226ABAC

	thumb_func_start ov70_0226AC08
ov70_0226AC08: @ 0x0226AC08
	push {r3, lr}
	ldr r2, _0226AC20 @ =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226AC18
	bl ov70_0226AC24
	pop {r3, pc}
_0226AC18:
	bl ov70_0226AD20
	pop {r3, pc}
	nop
_0226AC20: .4byte 0x00000965
	thumb_func_end ov70_0226AC08

	thumb_func_start ov70_0226AC24
ov70_0226AC24: @ 0x0226AC24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r1, #0
	ldr r1, _0226AD0C @ =0x00000A04
	adds r6, r0, #0
	adds r0, r5, r1
	subs r1, #0xae
	ldrsh r1, [r5, r1]
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226AD10 @ =0x00000A2C
	adds r0, r5, r0
	bl ov70_022694D0
	ldr r0, _0226AD14 @ =0x00000956
	ldrsh r1, [r5, r0]
	adds r1, r1, #1
	strh r1, [r5, r0]
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl ov70_0225D054
	ldr r0, _0226AD0C @ =0x00000A04
	add r1, sp, #0xc
	adds r0, r5, r0
	add r2, sp, #0x10
	add r3, sp, #0x14
	bl ov70_02269488
	ldr r0, _0226AD10 @ =0x00000A2C
	add r1, sp, #8
	adds r0, r5, r0
	bl ov70_02269508
	ldr r0, [sp]
	cmp r0, #0
	bne _0226AC78
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #0xc]
_0226AC78:
	ldr r0, [r5, #8]
	add r1, sp, #0xc
	bl ov70_0225D048
	adds r0, r5, #0
	bl ov70_0226B324
	ldr r0, _0226AD18 @ =0x00000955
	movs r4, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226ACA4
	ldr r7, _0226AD18 @ =0x00000955
_0226AC92:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov70_0226B744
	ldrsb r0, [r5, r7]
	adds r4, r4, #1
	cmp r4, r0
	blt _0226AC92
_0226ACA4:
	ldr r0, [r6, #4]
	ldr r7, [r5, #8]
	bl ov70_0225CCAC
	cmp r7, r0
	bne _0226AD06
	ldr r0, _0226AD1C @ =0x021BF67C
	movs r1, #0x40
	ldr r0, [r0, #0x48]
	movs r4, #4
	tst r1, r0
	beq _0226ACBE
	movs r4, #0
_0226ACBE:
	movs r1, #0x80
	tst r1, r0
	beq _0226ACC6
	movs r4, #1
_0226ACC6:
	movs r1, #0x10
	tst r1, r0
	beq _0226ACCE
	movs r4, #3
_0226ACCE:
	movs r1, #0x20
	tst r0, r1
	beq _0226ACD6
	movs r4, #2
_0226ACD6:
	cmp r4, #4
	beq _0226AD06
	adds r0, r7, #0
	adds r1, r4, #0
	bl ov70_0225D060
	ldr r0, [r5, #8]
	bl ov70_0225CD34
	add r1, sp, #4
	strh r0, [r1]
	lsrs r0, r0, #0x10
	strh r0, [r1, #2]
	mov r3, sp
	ldrh r2, [r1]
	ldr r0, [r5, #8]
	subs r3, r3, #4
	strh r2, [r3]
	ldrh r1, [r1, #2]
	adds r2, r4, #0
	strh r1, [r3, #2]
	ldr r1, [r3]
	bl ov70_0225CD04
_0226AD06:
	ldr r0, [sp]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226AD0C: .4byte 0x00000A04
_0226AD10: .4byte 0x00000A2C
_0226AD14: .4byte 0x00000956
_0226AD18: .4byte 0x00000955
_0226AD1C: .4byte 0x021BF67C
	thumb_func_end ov70_0226AC24

	thumb_func_start ov70_0226AD20
ov70_0226AD20: @ 0x0226AD20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	ldr r1, _0226AD90 @ =0x00000A04
	adds r6, r0, #0
	adds r0, r5, r1
	subs r1, #0xae
	ldrsh r1, [r5, r1]
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226AD94 @ =0x00000A2C
	adds r0, r5, r0
	bl ov70_022694D0
	ldr r0, _0226AD98 @ =0x00000956
	ldrsh r1, [r5, r0]
	adds r1, r1, #1
	strh r1, [r5, r0]
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl ov70_0225D054
	ldr r0, _0226AD90 @ =0x00000A04
	add r1, sp, #4
	adds r0, r5, r0
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov70_02269488
	ldr r0, [r5, #8]
	add r1, sp, #4
	bl ov70_0225D048
	adds r0, r5, #0
	bl ov70_0226B51C
	ldr r0, _0226AD9C @ =0x00000955
	movs r4, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226AD88
	ldr r7, _0226AD9C @ =0x00000955
_0226AD76:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl ov70_0226B744
	ldrsb r0, [r5, r7]
	adds r4, r4, #1
	cmp r4, r0
	blt _0226AD76
_0226AD88:
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226AD90: .4byte 0x00000A04
_0226AD94: .4byte 0x00000A2C
_0226AD98: .4byte 0x00000956
_0226AD9C: .4byte 0x00000955
	thumb_func_end ov70_0226AD20

	thumb_func_start ov70_0226ADA0
ov70_0226ADA0: @ 0x0226ADA0
	push {r3, lr}
	ldr r2, _0226ADB8 @ =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226ADB0
	bl ov70_0226ADBC
	pop {r3, pc}
_0226ADB0:
	bl ov70_0226AF1C
	pop {r3, pc}
	nop
_0226ADB8: .4byte 0x00000965
	thumb_func_end ov70_0226ADA0

	thumb_func_start ov70_0226ADBC
ov70_0226ADBC: @ 0x0226ADBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r5, r1, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #8]
	add r1, sp, #0x24
	bl ov70_0225D054
	ldr r0, _0226AF04 @ =0x00000955
	ldrsb r0, [r5, r0]
	subs r1, r0, #1
	ldr r0, _0226AF08 @ =0x0226E2E8
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0226ADEC
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226ADFA
_0226ADEC:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226ADFA:
	ldr r6, [sp, #0x28]
	ldr r4, [sp, #0x2c]
	ldr r7, [sp, #0x24]
	blx FUN_020E1740
	subs r0, r6, r0
	str r0, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r0, #0xa
	str r0, [sp, #0xc]
	ldr r0, _0226AF0C @ =0x00000A04
	adds r1, r7, #0
	adds r0, r5, r0
	adds r2, r7, #0
	adds r3, r6, #0
	bl ov70_022692B4
	ldr r1, _0226AF10 @ =0x00000956
	movs r4, #0
	strh r4, [r5, r1]
	subs r0, r1, #2
	strb r4, [r5, r0]
	subs r0, r1, #1
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226AEFA
	adds r0, r5, #0
	str r0, [sp, #0x14]
	adds r0, #0xc
	str r0, [sp, #0x14]
	adds r0, r1, #0
	adds r0, #0x36
	adds r1, #0x12
	adds r7, r5, r0
	adds r6, r5, r1
_0226AE42:
	ldr r0, [sp, #0x14]
	add r1, sp, #0x24
	add r2, sp, #0x28
	add r3, sp, #0x2c
	bl FUN_02017358
	movs r0, #0x96
	adds r1, r5, r4
	lsls r0, r0, #4
	ldrb r0, [r1, r0]
	cmp r0, #0
	beq _0226AE64
	cmp r0, #1
	beq _0226AE7E
	cmp r0, #2
	beq _0226AE98
	b _0226AEB0
_0226AE64:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x20]
	movs r0, #1
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	movs r0, #1
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #0x12
	subs r0, r1, r0
	str r0, [sp, #0x18]
	b _0226AEB0
_0226AE7E:
	movs r0, #1
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x20]
	movs r0, #1
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
	b _0226AEB0
_0226AE98:
	movs r0, #1
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0x12
	subs r0, r1, r0
	str r0, [sp, #0x20]
	movs r0, #1
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x18]
_0226AEB0:
	ldr r0, [sp, #0x1c]
	ldr r2, [sp, #0x20]
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x18]
	str r0, [sp, #8]
	movs r0, #0x1a
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	adds r0, r7, #0
	bl ov70_022692B4
	movs r3, #6
	ldr r2, _0226AF14 @ =0x00000AAA
	adds r0, r6, #0
	movs r1, #0
	lsls r3, r3, #0xc
	bl ov70_0226949C
	ldr r0, [sp, #0x10]
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #3
	bl ov70_0226B714
	ldr r0, [sp, #0x14]
	adds r4, r4, #1
	adds r0, #0x78
	str r0, [sp, #0x14]
	ldr r0, _0226AF04 @ =0x00000955
	adds r7, #0x28
	ldrsb r0, [r5, r0]
	adds r6, #0xc
	cmp r4, r0
	blt _0226AE42
_0226AEFA:
	ldr r0, _0226AF18 @ =0x00000964
	movs r1, #0
	strb r1, [r5, r0]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226AF04: .4byte 0x00000955
_0226AF08: .4byte 0x0226E2E8
_0226AF0C: .4byte 0x00000A04
_0226AF10: .4byte 0x00000956
_0226AF14: .4byte 0x00000AAA
_0226AF18: .4byte 0x00000964
	thumb_func_end ov70_0226ADBC

	thumb_func_start ov70_0226AF1C
ov70_0226AF1C: @ 0x0226AF1C
	push {r3, r4, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	ldr r0, [r4, #8]
	add r1, sp, #0x10
	bl ov70_0225D054
	movs r0, #2
	ldr r3, [sp, #0x14]
	lsls r0, r0, #0xc
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x10]
	subs r0, r3, r0
	str r0, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	ldr r0, _0226AF58 @ =0x00000A04
	adds r2, r1, #0
	adds r0, r4, r0
	bl ov70_022692B4
	ldr r0, _0226AF5C @ =0x00000956
	movs r1, #0
	strh r1, [r4, r0]
	subs r0, r0, #2
	strb r1, [r4, r0]
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
_0226AF58: .4byte 0x00000A04
_0226AF5C: .4byte 0x00000956
	thumb_func_end ov70_0226AF1C

	thumb_func_start ov70_0226AF60
ov70_0226AF60: @ 0x0226AF60
	push {r3, lr}
	ldr r2, _0226AF78 @ =0x00000965
	ldrb r2, [r1, r2]
	cmp r2, #0
	bne _0226AF70
	bl ov70_0226AF7C
	pop {r3, pc}
_0226AF70:
	bl ov70_0226B1D0
	pop {r3, pc}
	nop
_0226AF78: .4byte 0x00000965
	thumb_func_end ov70_0226AF60

	thumb_func_start ov70_0226AF7C
ov70_0226AF7C: @ 0x0226AF7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r1, #0
	ldr r1, _0226B1A8 @ =0x00000954
	adds r6, r0, #0
	ldrsb r0, [r4, r1]
	cmp r0, #4
	bhi _0226AFB2
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226AF98: @ jump table
	.2byte _0226AFA2 - _0226AF98 - 2 @ case 0
	.2byte _0226AFBA - _0226AF98 - 2 @ case 1
	.2byte _0226AFD0 - _0226AF98 - 2 @ case 2
	.2byte _0226B006 - _0226AF98 - 2 @ case 3
	.2byte _0226B05E - _0226AF98 - 2 @ case 4
_0226AFA2:
	adds r0, r1, #2
	ldrsh r0, [r4, r0]
	adds r2, r0, #1
	adds r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #8
	bge _0226AFB4
_0226AFB2:
	b _0226B0D8
_0226AFB4:
	movs r0, #1
	strb r0, [r4, r1]
	b _0226B0D8
_0226AFBA:
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov70_0225D09C
	ldr r0, _0226B1AC @ =0x00000956
	movs r1, #0x10
	strh r1, [r4, r0]
	movs r1, #2
	subs r0, r0, #2
	strb r1, [r4, r0]
	b _0226B0D8
_0226AFD0:
	adds r0, r1, #2
	ldrsh r0, [r4, r0]
	subs r2, r0, #1
	adds r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0226B0D8
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov70_0225D09C
	ldr r0, _0226B1A8 @ =0x00000954
	movs r1, #3
	strb r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	movs r1, #6
	bl ov70_0225CD60
	adds r1, r0, #0
	ldr r0, [r4, #8]
	bl ov70_0225D060
	b _0226B0D8
_0226B006:
	adds r0, r1, #0
	adds r1, r1, #2
	adds r0, #0xb0
	ldrsh r1, [r4, r1]
	adds r0, r4, r0
	bl ov70_022692DC
	adds r5, r0, #0
	ldr r0, _0226B1AC @ =0x00000956
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	bl ov70_0225D054
	ldr r0, _0226B1B0 @ =0x00000A04
	add r1, sp, #0x30
	adds r0, r4, r0
	add r2, sp, #0x34
	add r3, sp, #0x38
	bl ov70_02269488
	ldr r0, [r4, #8]
	add r1, sp, #0x30
	bl ov70_0225D048
	cmp r5, #1
	bne _0226B0D8
	ldr r0, _0226B1A8 @ =0x00000954
	movs r1, #4
	strb r1, [r4, r0]
	adds r1, r0, #2
	movs r2, #0
	strh r2, [r4, r1]
	ldr r1, [sp, #0x34]
	adds r0, r0, #4
	str r1, [r4, r0]
	ldr r2, _0226B1B4 @ =0x000005AB
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov70_02269510
	b _0226B0D8
_0226B05E:
	adds r0, r1, #2
	ldrsh r1, [r4, r0]
	ldr r0, _0226B1B8 @ =0x00007FFF
	muls r0, r1, r0
	movs r1, #0xa
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	asrs r0, r0, #4
	lsls r1, r0, #2
	ldr r0, _0226B1BC @ =0x020F983C
	ldrsh r2, [r0, r1]
	asrs r0, r2, #0x1f
	lsrs r1, r2, #0x11
	lsls r0, r0, #0xf
	orrs r0, r1
	movs r1, #2
	lsls r3, r2, #0xf
	movs r2, #0
	lsls r1, r1, #0xa
	adds r1, r3, r1
	adcs r0, r2
	lsrs r5, r1, #0xc
	lsls r0, r0, #0x14
	orrs r5, r0
	ldr r0, [r4, #8]
	add r1, sp, #0x24
	bl ov70_0225D054
	ldr r0, _0226B1C0 @ =0x00000958
	add r1, sp, #0x24
	ldr r0, [r4, r0]
	adds r0, r0, r5
	str r0, [sp, #0x28]
	ldr r0, [r4, #8]
	bl ov70_0225D048
	ldr r0, _0226B1AC @ =0x00000956
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	cmp r1, #0xa
	ble _0226B0D6
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov70_0225D030
	ldr r0, [r6, #4]
	ldr r4, [r4, #8]
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226B0D0
	ldr r0, [r6, #8]
	adds r1, r4, #0
	bl ov70_02260B38
_0226B0D0:
	add sp, #0x3c
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0226B0D6:
	strh r1, [r4, r0]
_0226B0D8:
	ldr r1, _0226B1C4 @ =0x00000964
	movs r5, #0
	ldrb r0, [r4, r1]
	adds r0, r0, #1
	strb r0, [r4, r1]
	adds r0, r1, #0
	subs r0, #0xf
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0226B1A0
	adds r0, r1, #0
	adds r0, #0x28
	adds r7, r4, r0
	adds r0, r1, #4
	adds r0, r4, r0
	str r0, [sp, #0x10]
	adds r0, r4, #0
	str r0, [sp, #0xc]
	adds r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	str r7, [sp, #8]
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	str r0, [sp]
_0226B10A:
	ldr r1, _0226B1C4 @ =0x00000964
	adds r0, r7, #0
	ldrb r1, [r4, r1]
	bl ov70_022692DC
	cmp r0, #0
	bne _0226B152
	ldr r0, [sp, #0x10]
	bl ov70_022694D0
	ldr r0, [sp, #0xc]
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl FUN_02017358
	ldr r0, [sp, #8]
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl ov70_02269488
	ldr r0, [sp, #4]
	add r1, sp, #0x14
	bl ov70_02269508
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x1c]
	adds r1, r1, r0
	ldr r0, [sp]
	ldr r3, [sp, #0x20]
	str r1, [sp, #0x18]
	bl FUN_02017350
	b _0226B16C
_0226B152:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #4
	bl ov70_0226B714
	cmp r0, #1
	bne _0226B16C
	ldr r2, _0226B1C8 @ =0x00000591
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov70_02269510
_0226B16C:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov70_0226B744
	ldr r0, [sp, #0x10]
	adds r5, r5, #1
	adds r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r7, #0x28
	adds r0, #0x78
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r0, #0x28
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r0, #0x78
	str r0, [sp]
	ldr r0, _0226B1CC @ =0x00000955
	ldrsb r0, [r4, r0]
	cmp r5, r0
	blt _0226B10A
_0226B1A0:
	movs r0, #0
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_0226B1A8: .4byte 0x00000954
_0226B1AC: .4byte 0x00000956
_0226B1B0: .4byte 0x00000A04
_0226B1B4: .4byte 0x000005AB
_0226B1B8: .4byte 0x00007FFF
_0226B1BC: .4byte 0x020F983C
_0226B1C0: .4byte 0x00000958
_0226B1C4: .4byte 0x00000964
_0226B1C8: .4byte 0x00000591
_0226B1CC: .4byte 0x00000955
	thumb_func_end ov70_0226AF7C

	thumb_func_start ov70_0226B1D0
ov70_0226B1D0: @ 0x0226B1D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _0226B30C @ =0x00000955
	adds r4, r1, #0
	ldrsb r0, [r4, r0]
	movs r5, #0
	cmp r0, #0
	ble _0226B1F6
	ldr r7, _0226B30C @ =0x00000955
_0226B1E4:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl ov70_0226B744
	ldrsb r0, [r4, r7]
	adds r5, r5, #1
	cmp r5, r0
	blt _0226B1E4
_0226B1F6:
	ldr r1, _0226B310 @ =0x00000954
	ldrsb r0, [r4, r1]
	cmp r0, #3
	bls _0226B200
	b _0226B304
_0226B200:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226B20C: @ jump table
	.2byte _0226B214 - _0226B20C - 2 @ case 0
	.2byte _0226B246 - _0226B20C - 2 @ case 1
	.2byte _0226B25C - _0226B20C - 2 @ case 2
	.2byte _0226B292 - _0226B20C - 2 @ case 3
_0226B214:
	ldr r2, _0226B314 @ =0x00000591
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov70_02269510
	ldr r0, _0226B30C @ =0x00000955
	movs r5, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble _0226B23E
	ldr r7, _0226B30C @ =0x00000955
_0226B22A:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #4
	bl ov70_0226B714
	ldrsb r0, [r4, r7]
	adds r5, r5, #1
	cmp r5, r0
	blt _0226B22A
_0226B23E:
	ldr r0, _0226B310 @ =0x00000954
	movs r1, #1
	strb r1, [r4, r0]
	b _0226B304
_0226B246:
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov70_0225D09C
	ldr r0, _0226B318 @ =0x00000956
	movs r1, #8
	strh r1, [r4, r0]
	movs r1, #2
	subs r0, r0, #2
	strb r1, [r4, r0]
	b _0226B304
_0226B25C:
	adds r0, r1, #2
	ldrsh r0, [r4, r0]
	subs r2, r0, #1
	adds r0, r1, #2
	strh r2, [r4, r0]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bgt _0226B304
	ldr r0, [r4, #8]
	movs r1, #0
	bl ov70_0225D09C
	ldr r0, _0226B310 @ =0x00000954
	movs r1, #3
	strb r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #2
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	movs r1, #6
	bl ov70_0225CD60
	adds r1, r0, #0
	ldr r0, [r4, #8]
	bl ov70_0225D060
	b _0226B304
_0226B292:
	adds r0, r1, #0
	adds r1, r1, #2
	adds r0, #0xb0
	ldrsh r1, [r4, r1]
	adds r0, r4, r0
	bl ov70_022692DC
	adds r5, r0, #0
	ldr r0, _0226B318 @ =0x00000956
	ldrsh r1, [r4, r0]
	adds r1, r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B31C @ =0x00000A04
	add r1, sp, #0
	adds r0, r4, r0
	add r2, sp, #4
	add r3, sp, #8
	bl ov70_02269488
	ldr r0, [r4, #8]
	add r1, sp, #0
	bl ov70_0225D048
	cmp r5, #1
	bne _0226B304
	ldr r0, _0226B318 @ =0x00000956
	movs r1, #0
	strh r1, [r4, r0]
	ldr r1, [sp, #4]
	adds r0, r0, #2
	str r1, [r4, r0]
	ldr r2, _0226B320 @ =0x000005AB
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov70_02269510
	ldr r0, [r4, #8]
	movs r1, #1
	bl ov70_0225D030
	ldr r0, [r6, #4]
	ldr r4, [r4, #8]
	bl ov70_0225CCAC
	cmp r4, r0
	bne _0226B2FE
	ldr r0, [r6, #8]
	adds r1, r4, #0
	bl ov70_02260B38
_0226B2FE:
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0226B304:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226B30C: .4byte 0x00000955
_0226B310: .4byte 0x00000954
_0226B314: .4byte 0x00000591
_0226B318: .4byte 0x00000956
_0226B31C: .4byte 0x00000A04
_0226B320: .4byte 0x000005AB
	thumb_func_end ov70_0226B1D0

	thumb_func_start ov70_0226B324
ov70_0226B324: @ 0x0226B324
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B518 @ =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0226B342
	cmp r0, #2
	beq _0226B392
	cmp r0, #3
	b _0226B42E
_0226B342:
	movs r0, #0xf
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r3, r0, #0
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #1
	adds r5, #0xc
	ldr r4, [sp, #8]
	lsls r3, r3, #0xc
	adds r0, r5, #0
	adds r3, r4, r3
	bl FUN_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B392:
	movs r0, #0xe
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	adds r3, r0, #0
	ldr r2, [sp, #4]
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #1
	adds r0, r5, #0
	ldr r4, [sp, #8]
	lsls r3, r3, #0xc
	adds r0, #0xc
	adds r3, r4, r3
	bl FUN_02017350
	movs r0, #0xe
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #0xe
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r3, r0, #0
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #1
	adds r5, #0x84
	ldr r4, [sp, #8]
	lsls r3, r3, #0xc
	adds r0, r5, #0
	adds r3, r4, r3
	bl FUN_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B42E:
	movs r0, #0xf
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	adds r3, r0, #0
	ldr r2, [sp, #4]
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #1
	adds r0, r5, #0
	ldr r4, [sp, #8]
	lsls r3, r3, #0xc
	adds r0, #0xc
	adds r3, r4, r3
	bl FUN_02017350
	movs r0, #0xe
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	adds r3, r0, #0
	ldr r2, [sp, #4]
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #1
	adds r0, r5, #0
	ldr r4, [sp, #8]
	lsls r3, r3, #0xc
	adds r0, #0x84
	adds r3, r4, r3
	bl FUN_02017350
	movs r0, #0xe
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #0xe
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r3, r0, #0
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #1
	adds r5, #0xfc
	ldr r4, [sp, #8]
	lsls r3, r3, #0xc
	adds r0, r5, #0
	adds r3, r4, r3
	bl FUN_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226B518: .4byte 0x00000955
	thumb_func_end ov70_0226B324

	thumb_func_start ov70_0226B51C
ov70_0226B51C: @ 0x0226B51C
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #8]
	add r1, sp, #0
	bl ov70_0225D054
	ldr r0, _0226B710 @ =0x00000955
	ldrsb r0, [r5, r0]
	cmp r0, #1
	beq _0226B53A
	cmp r0, #2
	beq _0226B58A
	cmp r0, #3
	b _0226B626
_0226B53A:
	movs r0, #3
	lsls r0, r0, #0x10
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r3, r0, #0
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #2
	adds r5, #0xc
	ldr r4, [sp, #8]
	lsls r3, r3, #0xe
	adds r0, r5, #0
	subs r3, r4, r3
	bl FUN_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B58A:
	movs r0, #0xb
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	adds r3, r0, #0
	ldr r2, [sp, #4]
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #2
	adds r0, r5, #0
	ldr r4, [sp, #8]
	lsls r3, r3, #0xe
	adds r0, #0xc
	subs r3, r4, r3
	bl FUN_02017350
	movs r0, #0xb
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #0xe
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r3, r0, #0
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #2
	adds r5, #0x84
	ldr r4, [sp, #8]
	lsls r3, r3, #0xe
	adds r0, r5, #0
	subs r3, r4, r3
	bl FUN_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_0226B626:
	movs r0, #3
	lsls r0, r0, #0x10
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	adds r3, r0, #0
	ldr r2, [sp, #4]
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #2
	adds r0, r5, #0
	ldr r4, [sp, #8]
	lsls r3, r3, #0xe
	adds r0, #0xc
	subs r3, r4, r3
	bl FUN_02017350
	movs r0, #0xb
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #2
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	adds r3, r0, #0
	ldr r2, [sp, #4]
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #2
	adds r0, r5, #0
	ldr r4, [sp, #8]
	lsls r3, r3, #0xe
	adds r0, #0x84
	subs r3, r4, r3
	bl FUN_02017350
	movs r0, #0xb
	lsls r0, r0, #0xe
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	adds r6, r0, #0
	movs r0, #0xe
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	blx FUN_020E1740
	adds r4, r0, #0
	adds r0, r6, #0
	blx FUN_020E1740
	ldr r1, [sp]
	ldr r2, [sp, #4]
	adds r3, r0, #0
	adds r1, r1, r4
	adds r2, r2, r3
	movs r3, #2
	adds r5, #0xfc
	ldr r4, [sp, #8]
	lsls r3, r3, #0xe
	adds r0, r5, #0
	subs r3, r4, r3
	bl FUN_02017350
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_0226B710: .4byte 0x00000955
	thumb_func_end ov70_0226B51C

	thumb_func_start ov70_0226B714
ov70_0226B714: @ 0x0226B714
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	movs r6, #0x96
	lsls r6, r6, #4
	adds r5, r1, r6
	adds r4, r3, #0
	ldrb r3, [r5, r2]
	cmp r4, r3
	beq _0226B73E
	strb r4, [r5, r2]
	movs r3, #0
	adds r5, r1, r2
	subs r6, r6, #4
	strb r3, [r5, r6]
	lsls r4, r4, #0xd
	str r4, [sp]
	bl ov70_02269A90
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_0226B73E:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov70_0226B714

	thumb_func_start ov70_0226B744
ov70_0226B744: @ 0x0226B744
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	movs r3, #0x96
	adds r7, r1, #0
	adds r5, r2, #0
	adds r4, r7, r5
	lsls r3, r3, #4
	ldrb r6, [r4, r3]
	subs r3, r3, #4
	adds r4, r7, r3
	ldrb r3, [r4, r5]
	str r0, [sp, #4]
	cmp r3, #0
	bne _0226B7A4
	movs r3, #0
	bl ov70_02269AE8
	lsls r1, r6, #0xd
	str r0, [sp, #8]
	cmp r0, r1
	bne _0226B778
	movs r0, #1
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [sp, #8]
	b _0226B790
_0226B778:
	cmp r6, #4
	beq _0226B780
	str r1, [sp, #8]
	b _0226B790
_0226B780:
	adds r1, r7, #0
	movs r0, #0x78
	adds r1, #0xc
	muls r0, r5, r0
	adds r0, r1, r0
	movs r1, #0
	bl FUN_02017348
_0226B790:
	ldr r0, [sp, #8]
	adds r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r2, r5, #0
	movs r3, #0
	bl ov70_02269A90
	movs r0, #8
	strb r0, [r4, r5]
_0226B7A4:
	ldrb r0, [r4, r5]
	subs r0, r0, #1
	strb r0, [r4, r5]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226B744

	thumb_func_start ov70_0226B7B0
ov70_0226B7B0: @ 0x0226B7B0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	str r0, [sp, #0x10]
	adds r0, r1, #0
	str r1, [sp, #0x14]
	ldr r0, [r0, #8]
	add r1, sp, #0x50
	str r2, [sp, #0x18]
	bl ov70_0225D054
	movs r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bls _0226B88E
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x1c]
_0226B7D2:
	ldr r1, [sp, #0x20]
	adds r1, #0xd
	cmp r1, #0xf
	bls _0226B7DC
	movs r1, #0xf
_0226B7DC:
	ldr r0, _0226B8AC @ =0x0226E370
	ldr r7, _0226B8B0 @ =0x0226E3A0
	str r0, [sp, #0x34]
	lsls r0, r1, #2
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	ldr r1, _0226B8B4 @ =0x00000968
	str r0, [sp, #0x28]
	adds r0, #0xc
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x14]
	movs r4, #0
	adds r0, r0, r1
	str r0, [sp, #0x30]
_0226B7F8:
	ldr r0, [sp, #0x1c]
	ldr r6, _0226B8B8 @ =0x0226E5A4
	adds r5, r4, r0
	ldr r3, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0x14]
	adds r2, r5, #0
	adds r3, r6, r3
	bl ov70_02269828
	ldr r1, [sp, #0x34]
	add r0, sp, #0x50
	add r2, sp, #0x44
	blx FUN_020BD17C
	add r0, sp, #0x44
	adds r1, r7, #0
	add r2, sp, #0x38
	blx FUN_020BD17C
	movs r0, #0x78
	muls r0, r5, r0
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	adds r0, r1, r0
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	bl FUN_02017350
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	adds r0, r1, r0
	movs r1, #0
	bl FUN_02017348
	ldr r0, [sp, #0x14]
	movs r1, #0
	adds r2, r0, r5
	ldr r0, _0226B8BC @ =0x00000958
	strb r1, [r2, r0]
	ldr r0, [sp, #0x3c]
	adds r1, r5, #0
	str r0, [sp]
	ldr r0, [sp, #0x4c]
	str r0, [sp, #4]
	ldr r0, [sp, #0x40]
	str r0, [sp, #8]
	movs r0, #0xe
	str r0, [sp, #0xc]
	movs r0, #0x28
	muls r1, r0, r1
	ldr r0, [sp, #0x30]
	ldr r2, [sp, #0x38]
	adds r0, r0, r1
	ldr r1, [sp, #0x44]
	ldr r3, [sp, #0x48]
	bl ov70_022692B4
	ldr r0, [sp, #0x34]
	adds r4, r4, #1
	adds r0, #0xc
	adds r7, #0xc
	str r0, [sp, #0x34]
	cmp r4, #4
	blt _0226B7F8
	ldr r0, [sp, #0x1c]
	adds r0, r0, #4
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	adds r1, r0, #1
	ldr r0, [sp, #0x18]
	str r1, [sp, #0x20]
	cmp r1, r0
	blo _0226B7D2
_0226B88E:
	ldr r2, _0226B8C0 @ =0x00000956
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x14]
	subs r3, r2, #1
	strb r1, [r0, r2]
	ldr r1, [sp, #0x14]
	movs r0, #0
	strb r0, [r1, r3]
	subs r3, r2, #2
	strb r0, [r1, r3]
	adds r2, r2, #1
	strb r0, [r1, r2]
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	nop
_0226B8AC: .4byte 0x0226E370
_0226B8B0: .4byte 0x0226E3A0
_0226B8B4: .4byte 0x00000968
_0226B8B8: .4byte 0x0226E5A4
_0226B8BC: .4byte 0x00000958
_0226B8C0: .4byte 0x00000956
	thumb_func_end ov70_0226B7B0

	thumb_func_start ov70_0226B8C4
ov70_0226B8C4: @ 0x0226B8C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r2, #0
	ldr r2, _0226B924 @ =0x00000958
	adds r5, r1, #0
	adds r1, r5, r2
	adds r7, r0, #0
	ldrsb r0, [r1, r4]
	adds r6, r4, #0
	adds r2, #0x10
	adds r0, r0, #1
	strb r0, [r1, r4]
	movs r0, #0x28
	muls r6, r0, r6
	adds r0, r5, r2
	ldrsb r1, [r1, r4]
	adds r0, r0, r6
	bl ov70_022692DC
	str r0, [sp]
	ldr r0, _0226B928 @ =0x00000968
	add r1, sp, #4
	adds r0, r5, r0
	adds r0, r0, r6
	add r2, sp, #8
	add r3, sp, #0xc
	bl ov70_02269488
	adds r1, r5, #0
	movs r0, #0x78
	adds r1, #0xc
	muls r0, r4, r0
	adds r0, r1, r0
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	bl FUN_02017350
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl ov70_022699BC
	ldr r0, [sp]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226B924: .4byte 0x00000958
_0226B928: .4byte 0x00000968
	thumb_func_end ov70_0226B8C4

	thumb_func_start ov70_0226B92C
ov70_0226B92C: @ 0x0226B92C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	adds r7, r1, #0
	movs r6, #0
	str r2, [sp, #4]
	adds r0, r2, #0
	beq _0226B986
	adds r5, r7, #0
	ldr r4, _0226B990 @ =0x0226E5A4
	adds r5, #0xc
_0226B942:
	ldr r0, [sp]
	adds r1, r7, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #8
	bl ov70_0225D054
	movs r0, #2
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xe
	adds r2, r1, r0
	movs r0, #6
	ldr r1, [sp, #0x10]
	lsls r0, r0, #0xc
	adds r3, r1, r0
	ldr r1, [sp, #8]
	adds r0, r5, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl FUN_02017350
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02017348
	ldr r0, [sp, #4]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #0x78
	cmp r6, r0
	blo _0226B942
_0226B986:
	ldr r1, _0226B994 @ =0x00000954
	ldr r0, [sp, #4]
	strb r0, [r7, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226B990: .4byte 0x0226E5A4
_0226B994: .4byte 0x00000954
	thumb_func_end ov70_0226B92C

	thumb_func_start ov70_0226B998
ov70_0226B998: @ 0x0226B998
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp, #4]
	adds r5, r1, #0
	movs r0, #2
	ldrsh r1, [r5, r0]
	movs r0, #0xc
	adds r6, r2, #0
	muls r0, r1, r0
	movs r1, #0x30
	blx FUN_020E1F6C
	adds r4, r0, #0
	ldr r0, _0226BABC @ =0x00000954
	ldr r1, [r5, r0]
	cmp r4, r1
	beq _0226BA9C
	str r4, [r5, r0]
	cmp r4, #0
	beq _0226B9EA
	movs r0, #0x30
	adds r2, r6, #0
	muls r2, r0, r2
	ldr r0, _0226BAC0 @ =0x0226E510
	lsls r1, r4, #2
	adds r0, r0, r2
	adds r2, r1, r0
	ldrh r0, [r1, r0]
	add r1, sp, #8
	strh r0, [r1, #4]
	ldrh r0, [r2, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #4]
	adds r0, r5, #0
	movs r1, #0x78
	adds r0, #0xc
	muls r1, r2, r1
	adds r0, r0, r1
	movs r1, #0
	bl FUN_02017348
_0226B9EA:
	movs r0, #0x30
	adds r2, r6, #0
	muls r2, r0, r2
	ldr r0, _0226BAC4 @ =0x0226E514
	lsls r1, r4, #2
	adds r0, r0, r2
	adds r2, r1, r0
	ldrh r1, [r1, r0]
	add r0, sp, #8
	strh r1, [r0]
	ldrh r4, [r2, #2]
	strh r4, [r0, #2]
	cmp r4, #0
	beq _0226BA8A
	beq _0226BA1C
	lsls r7, r4, #0xc
	adds r0, r7, #0
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226BA2C
_0226BA1C:
	lsls r7, r4, #0xc
	adds r0, r7, #0
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226BA2C:
	add r1, sp, #8
	ldrh r6, [r1]
	blx FUN_020E1740
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #0
	bl ov70_02269A90
	cmp r4, #0
	beq _0226BA58
	adds r0, r7, #0
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226BA66
_0226BA58:
	adds r0, r7, #0
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226BA66:
	blx FUN_020E1740
	str r0, [sp]
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl ov70_02269A90
	adds r1, r5, #0
	movs r0, #0x78
	adds r1, #0xc
	muls r0, r6, r0
	adds r0, r1, r0
	movs r1, #1
	bl FUN_02017348
	b _0226BA9C
_0226BA8A:
	ldrh r1, [r0]
	adds r2, r5, #0
	movs r0, #0x78
	muls r0, r1, r0
	adds r2, #0xc
	adds r0, r2, r0
	movs r1, #0
	bl FUN_02017348
_0226BA9C:
	movs r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	bge _0226BAA8
	adds r0, r0, #1
	strh r0, [r5, #2]
_0226BAA8:
	movs r0, #2
	ldrsh r0, [r5, r0]
	cmp r0, #0x30
	blt _0226BAB6
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226BAB6:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226BABC: .4byte 0x00000954
_0226BAC0: .4byte 0x0226E510
_0226BAC4: .4byte 0x0226E514
	thumb_func_end ov70_0226B998

	thumb_func_start ov70_0226BAC8
ov70_0226BAC8: @ 0x0226BAC8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	adds r7, r1, #0
	movs r4, #0
	str r2, [sp, #4]
	adds r0, r2, #0
	beq _0226BB1C
	adds r5, r7, #0
	adds r5, #0xc
_0226BADC:
	adds r3, r4, #6
	lsls r6, r3, #2
	ldr r3, _0226BB2C @ =0x0226E5A4
	ldr r0, [sp]
	adds r1, r7, #0
	adds r2, r4, #0
	adds r3, r3, r6
	bl ov70_02269828
	ldr r0, [r7, #8]
	add r1, sp, #8
	bl ov70_0225D054
	movs r0, #2
	ldr r1, [sp, #0xc]
	lsls r0, r0, #0xe
	adds r2, r1, r0
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x10]
	adds r0, r5, #0
	str r2, [sp, #0xc]
	bl FUN_02017350
	adds r0, r5, #0
	movs r1, #0
	bl FUN_02017348
	ldr r0, [sp, #4]
	adds r4, r4, #1
	adds r5, #0x78
	cmp r4, r0
	blo _0226BADC
_0226BB1C:
	ldr r0, _0226BB30 @ =0x00000954
	movs r1, #0xff
	strh r1, [r7, r0]
	adds r1, r0, #2
	ldr r0, [sp, #4]
	strh r0, [r7, r1]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226BB2C: .4byte 0x0226E5A4
_0226BB30: .4byte 0x00000954
	thumb_func_end ov70_0226BAC8

	thumb_func_start ov70_0226BB34
ov70_0226BB34: @ 0x0226BB34
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [r1, #8]
	str r1, [sp, #4]
	add r1, sp, #8
	bl ov70_0225D054
	movs r0, #0xa
	ldr r7, [sp, #4]
	movs r4, #0
	ldr r1, [sp, #0x10]
	lsls r0, r0, #0xc
	subs r0, r1, r0
	str r0, [sp, #0x10]
	movs r0, #1
	ldr r1, [sp, #8]
	lsls r0, r0, #0xe
	subs r1, r1, r0
	str r1, [sp, #8]
	ldr r1, [sp, #0xc]
	lsls r0, r0, #2
	adds r0, r1, r0
	str r0, [sp, #0xc]
	adds r5, r4, #0
	adds r7, #0xc
_0226BB68:
	adds r3, r4, #0
	adds r3, #0x25
	lsls r6, r3, #2
	ldr r3, _0226BBA4 @ =0x0226E5A4
	adds r2, r4, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, #0x10
	adds r3, r3, r6
	bl ov70_02269828
	adds r1, r4, #0
	adds r1, #0x10
	movs r0, #0x78
	muls r0, r1, r0
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	adds r0, r7, r0
	adds r1, r1, r5
	bl FUN_02017350
	movs r0, #6
	lsls r0, r0, #0xe
	adds r4, r4, #1
	adds r5, r5, r0
	cmp r4, #2
	blt _0226BB68
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226BBA4: .4byte 0x0226E5A4
	thumb_func_end ov70_0226BB34

	thumb_func_start ov70_0226BBA8
ov70_0226BBA8: @ 0x0226BBA8
	push {r3, r4, r5, r6, r7, lr}
	ldr r0, _0226BBD8 @ =0x00000D0C
	movs r2, #1
	strh r2, [r1, r0]
	adds r4, r1, #0
	movs r5, #0
	adds r0, r0, #2
	strh r5, [r1, r0]
	adds r4, #0xc
	adds r7, r2, #0
	movs r6, #0x78
_0226BBBE:
	adds r0, r5, #0
	adds r0, #0x10
	adds r1, r0, #0
	muls r1, r6, r1
	adds r0, r4, r1
	adds r1, r7, #0
	bl FUN_02017348
	adds r5, r5, #1
	cmp r5, #2
	blt _0226BBBE
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226BBD8: .4byte 0x00000D0C
	thumb_func_end ov70_0226BBA8

	thumb_func_start ov70_0226BBDC
ov70_0226BBDC: @ 0x0226BBDC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	ldr r1, _0226BC38 @ =0x00000D0C
	adds r7, r0, #0
	ldrh r0, [r5, r1]
	cmp r0, #0
	beq _0226BC36
	adds r0, r1, #2
	ldrh r0, [r5, r0]
	cmp r0, #0xd
	bhs _0226BBFE
	adds r0, r1, #2
	ldrh r0, [r5, r0]
	adds r2, r0, #1
	adds r0, r1, #2
	strh r2, [r5, r0]
	b _0226BC02
_0226BBFE:
	movs r0, #0
	strh r0, [r5, r1]
_0226BC02:
	adds r6, r5, #0
	movs r4, #0
	adds r6, #0xc
_0226BC08:
	ldr r0, _0226BC3C @ =0x00000D0E
	ldrh r0, [r5, r0]
	cmp r0, #0xd
	bhs _0226BC20
	adds r2, r4, #0
	adds r0, r7, #0
	adds r1, r5, #0
	adds r2, #0x10
	movs r3, #0
	bl ov70_022699BC
	b _0226BC30
_0226BC20:
	adds r1, r4, #0
	adds r1, #0x10
	movs r0, #0x78
	muls r0, r1, r0
	adds r0, r6, r0
	movs r1, #0
	bl FUN_02017348
_0226BC30:
	adds r4, r4, #1
	cmp r4, #2
	blt _0226BC08
_0226BC36:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226BC38: .4byte 0x00000D0C
_0226BC3C: .4byte 0x00000D0E
	thumb_func_end ov70_0226BBDC

	thumb_func_start ov70_0226BC40
ov70_0226BC40: @ 0x0226BC40
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, [sp, #0x30]
	movs r7, #2
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x34]
	movs r6, #1
	str r0, [sp, #0x34]
	movs r0, #0x3b
	lsls r0, r0, #4
	str r1, [r5, r0]
	adds r1, r0, #4
	ldr r4, [sp, #0x34]
	strh r2, [r5, r1]
	adds r0, r0, #6
	strh r3, [r5, r0]
	movs r0, #0
	str r0, [sp, #0x14]
	movs r0, #3
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x14]
	adds r4, #0xc
	str r0, [sp, #0xc]
_0226BC70:
	ldr r1, [sp, #0x10]
	movs r0, #0x78
	muls r0, r1, r0
	adds r0, r4, r0
	str r0, [sp]
	ldr r0, [sp, #0x34]
	ldr r2, [sp, #0xc]
	ldr r0, [r0, #8]
	movs r1, #0x78
	muls r1, r2, r1
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	movs r2, #0x78
	movs r3, #0x78
	muls r2, r6, r2
	muls r3, r7, r3
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r1, r4, r1
	adds r2, r4, r2
	adds r3, r4, r3
	bl ov70_0226BD64
	ldr r0, [sp, #0x10]
	adds r7, r7, #4
	adds r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r6, r6, #4
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	adds r5, #0xec
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _0226BC70
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226BC40

	thumb_func_start ov70_0226BCC0
ov70_0226BCC0: @ 0x0226BCC0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	movs r0, #0xed
	lsls r0, r0, #2
	ldrh r0, [r5, r0]
	str r1, [sp]
	cmp r0, #0
	ble _0226BD2E
	ldr r4, [sp, #8]
	add r6, sp, #0x10
_0226BCDC:
	movs r0, #0x3b
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	adds r1, r0, r4
	ldrh r0, [r0, r4]
	strh r0, [r6]
	ldrh r0, [r1, #2]
	strh r0, [r6, #2]
	ldrh r1, [r6]
	ldr r0, [sp]
	cmp r1, r0
	bne _0226BD1A
	ldrb r7, [r6, #2]
	cmp r7, #4
	blo _0226BCFE
	bl FUN_02022974
_0226BCFE:
	ldrb r0, [r6, #3]
	str r0, [sp, #4]
	cmp r0, #4
	bls _0226BD0A
	bl FUN_02022974
_0226BD0A:
	movs r0, #0xec
	muls r0, r7, r0
	ldr r1, [sp, #4]
	adds r0, r5, r0
	bl ov70_0226BDA0
	movs r0, #1
	str r0, [sp, #8]
_0226BD1A:
	ldr r0, [sp, #0xc]
	adds r4, r4, #4
	adds r0, r0, #1
	str r0, [sp, #0xc]
	movs r0, #0xed
	lsls r0, r0, #2
	ldrh r1, [r5, r0]
	ldr r0, [sp, #0xc]
	cmp r0, r1
	blt _0226BCDC
_0226BD2E:
	movs r7, #1
	movs r6, #0
	adds r4, r5, #0
_0226BD34:
	adds r0, r4, #0
	bl ov70_0226BDE8
	cmp r0, #0
	bne _0226BD40
	movs r7, #0
_0226BD40:
	adds r6, r6, #1
	adds r4, #0xec
	cmp r6, #4
	blt _0226BD34
	ldr r0, _0226BD60 @ =0x000003B6
	ldrh r1, [r5, r0]
	ldr r0, [sp]
	cmp r1, r0
	bhi _0226BD5A
	cmp r7, #1
	bne _0226BD5A
	movs r0, #2
	str r0, [sp, #8]
_0226BD5A:
	ldr r0, [sp, #8]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226BD60: .4byte 0x000003B6
	thumb_func_end ov70_0226BCC0

	thumb_func_start ov70_0226BD64
ov70_0226BD64: @ 0x0226BD64
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [sp, #0x20]
	adds r4, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r0, #3
	blo _0226BD78
	bl FUN_02022974
_0226BD78:
	adds r0, r5, #0
	adds r0, #0xd8
	str r4, [r0]
	adds r0, r5, #0
	adds r0, #0xdc
	str r6, [r0]
	adds r0, r5, #0
	adds r0, #0xe0
	str r7, [r0]
	adds r0, r5, #0
	ldr r1, [sp, #0x18]
	adds r0, #0xe4
	str r1, [r0]
	adds r0, r5, #0
	ldr r1, [sp, #0x1c]
	adds r0, #0xe8
	str r1, [r0]
	ldr r0, [sp, #0x20]
	strh r0, [r5, #2]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226BD64

	thumb_func_start ov70_0226BDA0
ov70_0226BDA0: @ 0x0226BDA0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r4, _0226BDE0 @ =0x00000000
	beq _0226BDC0
	adds r5, r7, #0
_0226BDAC:
	adds r0, r5, #0
	adds r0, #0xd8
	ldr r0, [r0]
	movs r1, #1
	bl FUN_02017348
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r6
	blo _0226BDAC
_0226BDC0:
	movs r0, #0
	strh r0, [r7]
	movs r0, #1
	strb r0, [r7, #6]
	strh r6, [r7, #4]
	ldrh r2, [r7, #2]
	adds r1, r7, #0
	adds r1, #0xe8
	lsls r3, r2, #2
	ldr r2, _0226BDE4 @ =0x0226E364
	ldr r1, [r1]
	ldr r2, [r2, r3]
	adds r0, r7, #0
	blx r2
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226BDE0: .4byte 0x00000000
_0226BDE4: .4byte 0x0226E364
	thumb_func_end ov70_0226BDA0

	thumb_func_start ov70_0226BDE8
ov70_0226BDE8: @ 0x0226BDE8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r1, [r5, #6]
	cmp r1, #0
	bne _0226BDF6
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226BDF6:
	ldrh r1, [r5, #2]
	lsls r2, r1, #2
	ldr r1, _0226BE38 @ =0x0226E31C
	ldr r1, [r1, r2]
	blx r1
	movs r6, #0
	str r0, [sp]
	ldrsh r0, [r5, r6]
	adds r0, r0, #1
	strh r0, [r5]
	ldr r0, [sp]
	cmp r0, #1
	bne _0226BE34
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226BE30
	adds r4, r5, #0
	adds r7, r6, #0
_0226BE1A:
	adds r0, r4, #0
	adds r0, #0xd8
	ldr r0, [r0]
	adds r1, r7, #0
	bl FUN_02017348
	ldrh r0, [r5, #4]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r0
	blt _0226BE1A
_0226BE30:
	movs r0, #0
	strb r0, [r5, #6]
_0226BE34:
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226BE38: .4byte 0x0226E31C
	thumb_func_end ov70_0226BDE8

	thumb_func_start ov70_0226BE3C
ov70_0226BE3C: @ 0x0226BE3C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp, #0x10]
	adds r0, r1, #0
	add r1, sp, #0x24
	bl ov70_0225D054
	movs r1, #2
	ldr r0, [sp, #0x24]
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	lsls r0, r1, #1
	adds r0, r2, r0
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	movs r4, #0
	subs r0, r0, r1
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226BF50
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x1c]
	adds r0, #8
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x18]
	adds r0, #0xa8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	str r0, [sp, #0x14]
_0226BE80:
	cmp r4, #3
	bhi _0226BEFE
	adds r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226BE90: @ jump table
	.2byte _0226BE98 - _0226BE90 - 2 @ case 0
	.2byte _0226BEB0 - _0226BE90 - 2 @ case 1
	.2byte _0226BEC8 - _0226BE90 - 2 @ case 2
	.2byte _0226BEE4 - _0226BE90 - 2 @ case 3
_0226BE98:
	movs r0, #3
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0xe
	subs r7, r1, r0
	movs r0, #1
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x10
	adds r6, r1, r0
	ldr r5, [sp, #0x2c]
	movs r0, #0
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEB0:
	movs r0, #3
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0xe
	adds r7, r1, r0
	movs r0, #1
	ldr r1, [sp, #0x28]
	lsls r0, r0, #0x10
	adds r6, r1, r0
	ldr r5, [sp, #0x2c]
	ldr r0, _0226BF54 @ =0x00007FFF
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEC8:
	movs r0, #2
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0xe
	subs r7, r1, r0
	ldr r1, [sp, #0x28]
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r0, #6
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #0xc
	subs r5, r1, r0
	ldr r0, _0226BF54 @ =0x00007FFF
	str r0, [sp, #0x20]
	b _0226BEFE
_0226BEE4:
	movs r0, #2
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0xe
	adds r7, r1, r0
	ldr r1, [sp, #0x28]
	lsls r0, r0, #1
	adds r6, r1, r0
	movs r0, #6
	ldr r1, [sp, #0x2c]
	lsls r0, r0, #0xc
	subs r5, r1, r0
	movs r0, #0
	str r0, [sp, #0x20]
_0226BEFE:
	str r6, [sp]
	ldr r0, [sp, #0x2c]
	adds r2, r7, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #0x12
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x24]
	ldr r3, [sp, #0x28]
	bl ov70_022692B4
	movs r3, #6
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x20]
	ldr r2, _0226BF58 @ =0x00000CCC
	lsls r3, r3, #0xc
	bl ov70_0226949C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x24]
	adds r0, #0xd8
	ldr r0, [r0]
	ldr r2, [sp, #0x28]
	ldr r3, [sp, #0x2c]
	bl FUN_02017350
	ldr r0, [sp, #0x1c]
	adds r4, r4, #1
	adds r0, #0x28
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, r0, #4
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0226BE80
_0226BF50:
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226BF54: .4byte 0x00007FFF
_0226BF58: .4byte 0x00000CCC
	thumb_func_end ov70_0226BE3C

	thumb_func_start ov70_0226BF5C
ov70_0226BF5C: @ 0x0226BF5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226BFDC
	ldr r0, [sp]
	ldr r6, [sp]
	str r0, [sp, #4]
	adds r0, #0xa8
	adds r6, #8
	ldr r5, [sp]
	str r0, [sp, #4]
	adds r4, r0, #0
	adds r7, r6, #0
_0226BF80:
	ldr r0, [sp, #4]
	bl ov70_022694D0
	ldr r2, [sp]
	movs r1, #0
	ldrsh r1, [r2, r1]
	adds r0, r6, #0
	bl ov70_022692DC
	str r0, [sp, #8]
	adds r0, r4, #0
	add r1, sp, #0x10
	bl ov70_02269508
	adds r0, r7, #0
	add r1, sp, #0x14
	add r2, sp, #0x18
	add r3, sp, #0x1c
	bl ov70_02269488
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	adds r1, r1, r0
	adds r0, r5, #0
	str r1, [sp, #0x14]
	adds r0, #0xd8
	ldr r0, [r0]
	ldr r3, [sp, #0x1c]
	bl FUN_02017350
	ldr r0, [sp, #4]
	adds r6, #0x28
	adds r0, #0xc
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r4, #0xc
	adds r0, r0, #1
	str r0, [sp, #0xc]
	ldr r0, [sp]
	adds r7, #0x28
	ldrh r1, [r0, #4]
	ldr r0, [sp, #0xc]
	adds r5, r5, #4
	cmp r0, r1
	blt _0226BF80
_0226BFDC:
	ldr r0, [sp, #8]
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226BF5C

	thumb_func_start ov70_0226BFE4
ov70_0226BFE4: @ 0x0226BFE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r0, [sp, #0x10]
	adds r0, r1, #0
	add r1, sp, #0x1c
	bl ov70_0225D054
	movs r0, #2
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0xe
	adds r1, r1, r0
	str r1, [sp, #0x1c]
	ldr r1, [sp, #0x20]
	movs r4, #0
	adds r1, r1, r0
	str r1, [sp, #0x20]
	ldr r1, [sp, #0x24]
	subs r0, r1, r0
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ble _0226C0C6
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x18]
	adds r1, #8
	str r1, [sp, #0x18]
	ldr r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r1, #0xa8
	str r1, [sp, #0x14]
_0226C022:
	cmp r4, #3
	bhi _0226C08A
	adds r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0226C032: @ jump table
	.2byte _0226C03A - _0226C032 - 2 @ case 0
	.2byte _0226C04A - _0226C032 - 2 @ case 1
	.2byte _0226C05A - _0226C032 - 2 @ case 2
	.2byte _0226C07C - _0226C032 - 2 @ case 3
_0226C03A:
	movs r0, #1
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0x10
	subs r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	adds r5, r1, r0
	b _0226C08A
_0226C04A:
	movs r0, #1
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0x10
	adds r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	adds r5, r1, r0
	b _0226C08A
_0226C05A:
	cmp r0, #3
	bne _0226C06C
	movs r0, #2
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0x10
	ldr r7, [sp, #0x1c]
	ldr r6, [sp, #0x20]
	subs r5, r1, r0
	b _0226C08A
_0226C06C:
	movs r0, #1
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0x10
	subs r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	subs r5, r1, r0
	b _0226C08A
_0226C07C:
	movs r0, #1
	ldr r1, [sp, #0x1c]
	lsls r0, r0, #0x10
	adds r7, r1, r0
	ldr r1, [sp, #0x24]
	ldr r6, [sp, #0x20]
	subs r5, r1, r0
_0226C08A:
	str r6, [sp]
	ldr r0, [sp, #0x24]
	adds r2, r7, #0
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #0x13
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl ov70_022692B4
	movs r3, #2
	ldr r0, [sp, #0x14]
	ldr r1, _0226C0D0 @ =0x00001555
	ldr r2, _0226C0D4 @ =0x0000071C
	lsls r3, r3, #0x10
	bl ov70_0226949C
	ldr r0, [sp, #0x18]
	adds r4, r4, #1
	adds r0, #0x28
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r0, #0xc
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldrh r0, [r0, #4]
	cmp r4, r0
	blt _0226C022
_0226C0C6:
	ldr r0, [sp, #0x10]
	bl ov70_0226C0D8
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226C0D0: .4byte 0x00001555
_0226C0D4: .4byte 0x0000071C
	thumb_func_end ov70_0226BFE4

	thumb_func_start ov70_0226C0D8
ov70_0226C0D8: @ 0x0226C0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226C16A
	adds r4, r5, #0
	adds r0, r5, #0
	adds r4, #0xa8
	str r0, [sp, #4]
	adds r0, #8
	str r0, [sp, #4]
	str r4, [sp]
	adds r6, r0, #0
	adds r7, r5, #0
_0226C0FA:
	movs r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0xe
	bne _0226C112
	movs r3, #3
	ldr r2, _0226C178 @ =0x00000E38
	adds r0, r4, #0
	movs r1, #0
	lsls r3, r3, #0xe
	bl ov70_0226949C
	b _0226C118
_0226C112:
	adds r0, r4, #0
	bl ov70_022694D0
_0226C118:
	movs r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [sp, #4]
	bl ov70_022692DC
	ldr r0, [sp]
	add r1, sp, #0xc
	bl ov70_02269508
	adds r0, r6, #0
	add r1, sp, #0x10
	add r2, sp, #0x14
	add r3, sp, #0x18
	bl ov70_02269488
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0xc]
	ldr r3, [sp, #0x18]
	adds r2, r1, r0
	adds r0, r7, #0
	str r2, [sp, #0x14]
	adds r0, #0xd8
	ldr r0, [r0]
	ldr r1, [sp, #0x10]
	bl FUN_02017350
	ldr r0, [sp, #4]
	ldrh r1, [r5, #4]
	adds r0, #0x28
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r4, #0xc
	adds r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #8]
	adds r6, #0x28
	adds r0, r0, #1
	adds r7, r7, #4
	str r0, [sp, #8]
	cmp r0, r1
	blt _0226C0FA
_0226C16A:
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0x16
	blt _0226C174
	movs r0, #1
_0226C174:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226C178: .4byte 0x00000E38
	thumb_func_end ov70_0226C0D8

	thumb_func_start ov70_0226C17C
ov70_0226C17C: @ 0x0226C17C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	adds r0, r1, #0
	add r1, sp, #0x10
	bl ov70_0225D054
	movs r1, #2
	ldr r0, [sp, #0x10]
	lsls r1, r1, #0xe
	adds r0, r0, r1
	str r0, [sp, #0x10]
	movs r0, #5
	ldr r2, [sp, #0x14]
	lsls r0, r0, #0xe
	adds r0, r2, r0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	movs r4, #0
	subs r0, r0, r1
	str r0, [sp, #0x18]
	ldrh r0, [r5, #4]
	cmp r0, #0
	ble _0226C1D8
	movs r6, #5
	movs r7, #7
	lsls r6, r6, #0xc
	lsls r7, r7, #0xc
_0226C1B4:
	str r6, [sp]
	movs r0, #0xe
	movs r3, #0xd
	str r7, [sp, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r4, #0
	add r2, sp, #0x10
	lsls r3, r3, #0xc
	bl ov70_0226C2A4
	ldrh r0, [r5, #4]
	adds r4, r4, #1
	cmp r4, r0
	blt _0226C1B4
_0226C1D8:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C17C

	thumb_func_start ov70_0226C1DC
ov70_0226C1DC: @ 0x0226C1DC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	movs r6, #0
	cmp r0, #0
	ble _0226C27E
	adds r4, r5, #0
	str r4, [sp, #0x10]
	adds r4, #8
	str r4, [sp, #0x10]
	adds r7, r5, #0
_0226C1F4:
	movs r1, #0
	ldrsh r1, [r5, r1]
	ldr r0, [sp, #0x10]
	bl ov70_022692DC
	str r0, [sp, #0x14]
	adds r0, r4, #0
	add r1, sp, #0x18
	add r2, sp, #0x1c
	add r3, sp, #0x20
	bl ov70_02269488
	adds r0, r7, #0
	adds r0, #0xd8
	ldr r0, [r0]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x20]
	bl FUN_02017350
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0226C26C
	ldrb r0, [r5, #7]
	add r2, sp, #0x18
	cmp r0, #0
	bne _0226C24A
	movs r0, #1
	lsls r0, r0, #0xe
	str r0, [sp]
	ldr r0, _0226C2A0 @ =0xFFFFD000
	ldr r3, _0226C2A0 @ =0xFFFFD000
	str r0, [sp, #4]
	movs r0, #3
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov70_0226C2A4
	b _0226C26C
_0226C24A:
	movs r0, #5
	lsls r0, r0, #0xc
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r0, #0xa
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	movs r0, #4
	movs r3, #0xa
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r6, #0
	lsls r3, r3, #0xc
	bl ov70_0226C2A4
_0226C26C:
	ldr r0, [sp, #0x10]
	adds r6, r6, #1
	adds r0, #0x28
	str r0, [sp, #0x10]
	ldrh r0, [r5, #4]
	adds r4, #0x28
	adds r7, r7, #4
	cmp r6, r0
	blt _0226C1F4
_0226C27E:
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bne _0226C29A
	ldrb r0, [r5, #7]
	adds r0, r0, #1
	cmp r0, #3
	bge _0226C294
	strb r0, [r5, #7]
	movs r0, #0
	strh r0, [r5]
	b _0226C29A
_0226C294:
	add sp, #0x24
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0226C29A:
	movs r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226C2A0: .4byte 0xFFFFD000
	thumb_func_end ov70_0226C1DC

	thumb_func_start ov70_0226C2A4
ov70_0226C2A4: @ 0x0226C2A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r1, #0
	adds r7, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	cmp r5, #3
	bhi _0226C302
	adds r3, r5, r5
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_0226C2C0: @ jump table
	.2byte _0226C2C8 - _0226C2C0 - 2 @ case 0
	.2byte _0226C2D6 - _0226C2C0 - 2 @ case 1
	.2byte _0226C2E4 - _0226C2C0 - 2 @ case 2
	.2byte _0226C2F4 - _0226C2C0 - 2 @ case 3
_0226C2C8:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	subs r2, r0, r6
	ldr r0, [sp, #0x28]
	adds r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2D6:
	ldr r0, [r4]
	ldr r1, [r4, #4]
	adds r2, r0, r6
	ldr r0, [sp, #0x28]
	adds r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2E4:
	ldr r1, [r4]
	ldr r0, [sp, #0x2c]
	subs r2, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	adds r0, r1, r0
	ldr r1, [r4, #8]
	b _0226C302
_0226C2F4:
	ldr r1, [r4]
	ldr r0, [sp, #0x2c]
	adds r2, r1, r0
	ldr r1, [r4, #4]
	ldr r0, [sp, #0x30]
	adds r0, r1, r0
	ldr r1, [r4, #8]
_0226C302:
	str r0, [sp]
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [sp, #0x34]
	adds r1, r7, #0
	str r0, [sp, #0xc]
	movs r0, #0x28
	adds r1, #8
	muls r0, r5, r0
	adds r0, r1, r0
	ldr r1, [r4]
	ldr r3, [r4, #4]
	bl ov70_022692B4
	lsls r0, r5, #2
	adds r0, r7, r0
	adds r0, #0xd8
	ldr r0, [r0]
	ldr r1, [r4]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl FUN_02017350
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226C2A4

	thumb_func_start ov70_0226C338
ov70_0226C338: @ 0x0226C338
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x60
	adds r6, r2, #0
	bl FUN_02018144
	movs r1, #0
	movs r2, #0x60
	adds r4, r0, #0
	blx FUN_020D5124
	movs r1, #0xa
	ldr r2, _0226C394 @ =0x0226E678
	muls r1, r5, r1
	adds r0, r4, #0
	adds r1, r2, r1
	bl ov70_0226C568
	ldr r2, _0226C398 @ =0x0226E670
	lsls r1, r6, #1
	adds r0, r4, #0
	adds r1, r2, r1
	bl ov70_0226C58C
	movs r1, #0
	adds r2, r4, #0
	movs r0, #0x3c
_0226C36E:
	adds r1, r1, #1
	str r0, [r2, #0x48]
	adds r2, r2, #4
	cmp r1, #2
	blt _0226C36E
	movs r2, #0
	adds r1, r4, #0
	movs r0, #0x3c
_0226C37E:
	adds r2, r2, #1
	str r0, [r1, #0x50]
	adds r1, r1, #4
	cmp r2, #4
	blt _0226C37E
	adds r0, r4, #0
	bl ov70_0226C598
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	nop
_0226C394: .4byte 0x0226E678
_0226C398: .4byte 0x0226E670
	thumb_func_end ov70_0226C338

	thumb_func_start ov70_0226C39C
ov70_0226C39C: @ 0x0226C39C
	ldr r3, _0226C3A0 @ =FUN_020181C4
	bx r3
	.align 2, 0
_0226C3A0: .4byte FUN_020181C4
	thumb_func_end ov70_0226C39C

	thumb_func_start ov70_0226C3A4
ov70_0226C3A4: @ 0x0226C3A4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp, #4]
	ldr r4, [sp, #4]
	movs r0, #0
	adds r6, r4, #0
	adds r5, r4, #0
	adds r7, r0, #0
	adds r6, #0x30
	adds r5, #0x18
_0226C3B8:
	ldr r1, [r4, #0x48]
	adds r1, r1, #1
	cmp r1, #0x3c
	bgt _0226C3D4
	str r1, [r4, #0x48]
	movs r0, #0x3c
	str r0, [sp]
	ldr r3, [r4, #0x48]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl ov70_0226C50C
	movs r0, #1
_0226C3D4:
	adds r7, r7, #1
	adds r4, r4, #4
	adds r6, r6, #4
	adds r5, r5, #4
	cmp r7, #2
	blt _0226C3B8
	ldr r4, [sp, #4]
	movs r1, #0
	adds r7, r4, #0
	adds r6, r4, #0
	adds r5, r4, #0
	str r1, [sp, #8]
	adds r7, #8
	adds r6, #0x38
	adds r5, #0x20
_0226C3F2:
	ldr r1, [r4, #0x50]
	adds r1, r1, #1
	cmp r1, #0x3c
	bgt _0226C40E
	str r1, [r4, #0x50]
	movs r0, #0x3c
	str r0, [sp]
	ldr r3, [r4, #0x50]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov70_0226C50C
	movs r0, #1
_0226C40E:
	ldr r1, [sp, #8]
	adds r4, r4, #4
	adds r1, r1, #1
	adds r7, r7, #4
	adds r6, r6, #4
	adds r5, r5, #4
	str r1, [sp, #8]
	cmp r1, #4
	blt _0226C3F2
	cmp r0, #0
	beq _0226C42A
	ldr r0, [sp, #4]
	bl ov70_0226C598
_0226C42A:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226C3A4

	thumb_func_start ov70_0226C430
ov70_0226C430: @ 0x0226C430
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5]
	ldr r2, _0226C49C @ =0x0226E678
	strb r0, [r5, #0x18]
	ldrb r0, [r5, #1]
	strb r0, [r5, #0x19]
	ldrb r0, [r5, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #3]
	strb r0, [r5, #0x1b]
	movs r0, #0
	str r0, [r5, #0x48]
	movs r0, #0xa
	muls r0, r1, r0
	adds r4, r2, r0
	adds r0, r5, #0
	adds r0, #0x30
	adds r1, r4, #0
	bl ov70_0226C4E8
	adds r6, r4, #2
	adds r4, r5, #0
	movs r7, #0
	adds r4, #0x38
_0226C462:
	ldrb r1, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x20
	strb r1, [r0]
	adds r0, r5, #0
	ldrb r1, [r5, #9]
	adds r0, #0x21
	strb r1, [r0]
	adds r0, r5, #0
	ldrb r1, [r5, #0xa]
	adds r0, #0x22
	strb r1, [r0]
	adds r0, r5, #0
	ldrb r1, [r5, #0xb]
	adds r0, #0x23
	strb r1, [r0]
	movs r0, #0
	str r0, [r5, #0x50]
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov70_0226C4E8
	adds r7, r7, #1
	adds r5, r5, #4
	adds r6, r6, #2
	adds r4, r4, #4
	cmp r7, #4
	blt _0226C462
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226C49C: .4byte 0x0226E678
	thumb_func_end ov70_0226C430

	thumb_func_start ov70_0226C4A0
ov70_0226C4A0: @ 0x0226C4A0
	ldrb r2, [r0, #4]
	ldr r3, _0226C4C0 @ =ov70_0226C4E8
	lsls r1, r1, #1
	strb r2, [r0, #0x1c]
	ldrb r2, [r0, #5]
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #6]
	strb r2, [r0, #0x1e]
	ldrb r2, [r0, #7]
	strb r2, [r0, #0x1f]
	movs r2, #0
	str r2, [r0, #0x4c]
	ldr r2, _0226C4C4 @ =0x0226E670
	adds r0, #0x34
	adds r1, r2, r1
	bx r3
	.align 2, 0
_0226C4C0: .4byte ov70_0226C4E8
_0226C4C4: .4byte 0x0226E670
	thumb_func_end ov70_0226C4A0

	thumb_func_start ov70_0226C4C8
ov70_0226C4C8: @ 0x0226C4C8
	bx lr
	.align 2, 0
	thumb_func_end ov70_0226C4C8

	thumb_func_start ov70_0226C4CC
ov70_0226C4CC: @ 0x0226C4CC
	push {r3, r4}
	movs r3, #0
	movs r2, #2
	ldrsb r4, [r0, r3]
	ldrsb r2, [r0, r2]
	movs r3, #1
	ldrsb r0, [r0, r3]
	lsls r2, r2, #0xa
	lsls r0, r0, #5
	orrs r0, r4
	orrs r0, r2
	strh r0, [r1]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_0226C4CC

	thumb_func_start ov70_0226C4E8
ov70_0226C4E8: @ 0x0226C4E8
	push {r3, r4}
	ldrh r3, [r1]
	movs r2, #0x1f
	ands r3, r2
	strb r3, [r0]
	ldrh r4, [r1]
	lsls r3, r2, #5
	ands r3, r4
	asrs r3, r3, #5
	strb r3, [r0, #1]
	ldrh r3, [r1]
	lsls r1, r2, #0xa
	ands r1, r3
	asrs r1, r1, #0xa
	strb r1, [r0, #2]
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov70_0226C4E8

	thumb_func_start ov70_0226C50C
ov70_0226C50C: @ 0x0226C50C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #1
	adds r4, r2, #0
	ldrsb r2, [r1, r0]
	ldrsb r0, [r5, r0]
	adds r6, r3, #0
	subs r0, r2, r0
	str r0, [sp, #4]
	movs r0, #2
	ldrsb r2, [r1, r0]
	ldrsb r0, [r5, r0]
	subs r0, r2, r0
	str r0, [sp]
	movs r0, #0
	ldrsb r7, [r5, r0]
	ldrsb r0, [r1, r0]
	ldr r1, [sp, #0x20]
	subs r0, r0, r7
	muls r0, r6, r0
	blx FUN_020E1F6C
	adds r0, r7, r0
	strb r0, [r4]
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x20]
	muls r0, r6, r0
	blx FUN_020E1F6C
	movs r1, #1
	ldrsb r1, [r5, r1]
	adds r0, r1, r0
	strb r0, [r4, #1]
	ldr r0, [sp]
	ldr r1, [sp, #0x20]
	muls r0, r6, r0
	blx FUN_020E1F6C
	movs r1, #2
	ldrsb r1, [r5, r1]
	adds r0, r1, r0
	strb r0, [r4, #2]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226C50C

	thumb_func_start ov70_0226C568
ov70_0226C568: @ 0x0226C568
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov70_0226C4E8
	movs r6, #0
	adds r4, r4, #2
	adds r5, #8
_0226C578:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0226C4E8
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #4
	cmp r6, #4
	blt _0226C578
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0226C568

	thumb_func_start ov70_0226C58C
ov70_0226C58C: @ 0x0226C58C
	ldr r3, _0226C594 @ =ov70_0226C4E8
	adds r0, r0, #4
	bx r3
	nop
_0226C594: .4byte ov70_0226C4E8
	thumb_func_end ov70_0226C58C

	thumb_func_start ov70_0226C598
ov70_0226C598: @ 0x0226C598
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r7, sp, #4
	str r0, [sp]
	movs r4, #0
	adds r5, r0, #0
	adds r7, #2
	add r6, sp, #4
_0226C5A8:
	adds r0, r5, #0
	adds r1, r7, #0
	bl ov70_0226C4CC
	ldrh r1, [r6, #2]
	adds r0, r4, #0
	blx FUN_020AF558
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _0226C5A8
	ldr r0, [sp]
	add r1, sp, #4
	adds r0, #8
	adds r1, #2
	bl ov70_0226C4CC
	ldr r0, [sp]
	add r1, sp, #4
	adds r0, #0xc
	bl ov70_0226C4CC
	add r1, sp, #4
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	movs r2, #0
	blx FUN_020AF56C
	ldr r0, [sp]
	add r1, sp, #4
	adds r0, #0x10
	adds r1, #2
	bl ov70_0226C4CC
	ldr r0, [sp]
	add r1, sp, #4
	adds r0, #0x14
	str r0, [sp]
	bl ov70_0226C4CC
	add r1, sp, #4
	ldrh r0, [r1, #2]
	ldrh r1, [r1]
	movs r2, #0
	blx FUN_020AF590
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226C598

	thumb_func_start ov70_0226C60C
ov70_0226C60C: @ 0x0226C60C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r1, #0
	movs r1, #0x1c
	adds r6, r0, #0
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x1c
	movs r0, #0
_0226C622:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0226C622
	str r5, [r4]
	adds r0, r5, #0
	bl ov70_0225DEE8
	str r0, [r4, #4]
	adds r0, r5, #0
	bl ov70_0225DEF8
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov70_0225DEF0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	bl FUN_0222E1B8
	bl ov70_0226C81C
	adds r7, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222E1D0
	bl ov70_0226C848
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	bl FUN_0222E1E8
	bl ov70_0226C87C
	adds r3, r0, #0
	ldr r2, [sp, #4]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov70_0226C338
	str r0, [r4, #0x10]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov70_0226CE54
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	adds r2, r6, #0
	bl ov70_0226C8B4
	str r0, [r4, #0x18]
	ldr r0, [r4, #0xc]
	adds r1, r7, #0
	bl ov70_0225CAEC
	ldr r0, [r4, #4]
	bl FUN_0222E158
	adds r5, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222E120
	ldr r0, [r4, #4]
	bl FUN_0222E170
	str r0, [sp]
	ldr r0, [r4, #4]
	bl FUN_0222E19C
	adds r7, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222E12C
	adds r6, r0, #0
	ldr r0, [r4, #4]
	bl FUN_0222E190
	cmp r5, #2
	bne _0226C6C8
	ldr r0, [r4, #8]
	bl ov70_0226260C
_0226C6C8:
	cmp r5, #1
	beq _0226C6DC
	cmp r5, #0
	bne _0226C6DC
	cmp r7, #1
	bne _0226C6DC
	ldr r0, [r4, #8]
	movs r1, #3
	bl ov70_02262658
_0226C6DC:
	ldr r0, [sp]
	cmp r0, #1
	bne _0226C6E8
	ldr r0, [r4, #8]
	bl ov70_0226246C
_0226C6E8:
	cmp r6, #1
	bne _0226C6F2
	adds r0, r4, #0
	bl ov70_0226C8A8
_0226C6F2:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C60C

	thumb_func_start ov70_0226C6F8
ov70_0226C6F8: @ 0x0226C6F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	bl ov70_0226C914
	ldr r0, [r4, #0x14]
	bl ov70_0226CF38
	ldr r0, [r4, #0x10]
	bl ov70_0226C39C
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0226C6F8

	thumb_func_start ov70_0226C718
ov70_0226C718: @ 0x0226C718
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	movs r1, #1
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C744
	ldr r0, [r5, #4]
	bl FUN_0222E1B8
	bl ov70_0226C81C
	adds r4, r0, #0
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl ov70_0226C430
	ldr r0, [r5, #0xc]
	adds r1, r4, #0
	bl ov70_0225CB08
_0226C744:
	ldr r0, [r5, #4]
	movs r1, #2
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C762
	ldr r0, [r5, #4]
	bl FUN_0222E1D0
	bl ov70_0226C848
	adds r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov70_0226C4A0
_0226C762:
	ldr r0, [r5, #4]
	movs r1, #3
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C780
	ldr r0, [r5, #4]
	bl FUN_0222E1E8
	bl ov70_0226C87C
	adds r1, r0, #0
	ldr r0, [r5, #0x10]
	bl ov70_0226C4C8
_0226C780:
	ldr r0, [r5, #4]
	bl FUN_0222E19C
	cmp r0, #1
	bne _0226C7A6
	ldr r0, [r5, #4]
	bl FUN_0222E158
	cmp r0, #0
	bne _0226C7A6
	ldr r0, [r5, #8]
	bl ov70_0226271C
	cmp r0, #0
	bne _0226C7A6
	ldr r0, [r5, #8]
	movs r1, #1
	bl ov70_02262658
_0226C7A6:
	ldr r0, [r5, #4]
	movs r1, #5
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C7CA
	ldr r0, [r5, #4]
	bl FUN_0222E158
	cmp r0, #1
	bne _0226C7CA
	ldr r0, [r5, #8]
	bl ov70_0226260C
	ldr r0, [r5, #8]
	movs r1, #2
	bl ov70_02262658
_0226C7CA:
	ldr r0, [r5, #4]
	movs r1, #6
	bl FUN_0222E084
	cmp r0, #0
	beq _0226C7E6
	ldr r0, [r5, #4]
	bl FUN_0222E170
	cmp r0, #1
	bne _0226C7E6
	ldr r0, [r5, #8]
	bl ov70_0226246C
_0226C7E6:
	ldr r0, [r5, #4]
	bl FUN_0222E12C
	cmp r0, #1
	bne _0226C7FC
	ldr r0, [r5, #8]
	bl ov70_02262478
	adds r0, r5, #0
	bl ov70_0226C8A8
_0226C7FC:
	ldr r0, [r5, #0x10]
	bl ov70_0226C3A4
	ldr r0, [r5, #0x14]
	bl ov70_0226CF40
	ldr r0, [r5, #0x18]
	bl ov70_0226C924
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_0226C718

	thumb_func_start ov70_0226C810
ov70_0226C810: @ 0x0226C810
	ldr r3, _0226C818 @ =ov70_0226CFFC
	ldr r0, [r0, #0x14]
	bx r3
	nop
_0226C818: .4byte ov70_0226CFFC
	thumb_func_end ov70_0226C810

	thumb_func_start ov70_0226C81C
ov70_0226C81C: @ 0x0226C81C
	push {r3, lr}
	cmp r0, #6
	bhi _0226C840
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0226C82E: @ jump table
	.2byte _0226C840 - _0226C82E - 2 @ case 0
	.2byte _0226C83C - _0226C82E - 2 @ case 1
	.2byte _0226C83C - _0226C82E - 2 @ case 2
	.2byte _0226C83C - _0226C82E - 2 @ case 3
	.2byte _0226C83C - _0226C82E - 2 @ case 4
	.2byte _0226C83C - _0226C82E - 2 @ case 5
	.2byte _0226C83C - _0226C82E - 2 @ case 6
_0226C83C:
	subs r0, r0, #1
	pop {r3, pc}
_0226C840:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0226C81C

	thumb_func_start ov70_0226C848
ov70_0226C848: @ 0x0226C848
	push {r3, lr}
	cmp r0, #0xa
	bhi _0226C874
	adds r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0226C85A: @ jump table
	.2byte _0226C874 - _0226C85A - 2 @ case 0
	.2byte _0226C874 - _0226C85A - 2 @ case 1
	.2byte _0226C874 - _0226C85A - 2 @ case 2
	.2byte _0226C874 - _0226C85A - 2 @ case 3
	.2byte _0226C874 - _0226C85A - 2 @ case 4
	.2byte _0226C874 - _0226C85A - 2 @ case 5
	.2byte _0226C874 - _0226C85A - 2 @ case 6
	.2byte _0226C870 - _0226C85A - 2 @ case 7
	.2byte _0226C870 - _0226C85A - 2 @ case 8
	.2byte _0226C870 - _0226C85A - 2 @ case 9
	.2byte _0226C870 - _0226C85A - 2 @ case 10
_0226C870:
	subs r0, r0, #7
	pop {r3, pc}
_0226C874:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	thumb_func_end ov70_0226C848

	thumb_func_start ov70_0226C87C
ov70_0226C87C: @ 0x0226C87C
	push {r3, lr}
	adds r1, r0, #0
	subs r1, #0xb
	cmp r1, #3
	bhi _0226C89E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0226C892: @ jump table
	.2byte _0226C89A - _0226C892 - 2 @ case 0
	.2byte _0226C89A - _0226C892 - 2 @ case 1
	.2byte _0226C89A - _0226C892 - 2 @ case 2
	.2byte _0226C89A - _0226C892 - 2 @ case 3
_0226C89A:
	subs r0, #0xb
	pop {r3, pc}
_0226C89E:
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0226C87C

	thumb_func_start ov70_0226C8A8
ov70_0226C8A8: @ 0x0226C8A8
	ldr r3, _0226C8B0 @ =FUN_020AF558
	movs r0, #2
	movs r1, #0
	bx r3
	.align 2, 0
_0226C8B0: .4byte FUN_020AF558
	thumb_func_end ov70_0226C8A8

	thumb_func_start ov70_0226C8B4
ov70_0226C8B4: @ 0x0226C8B4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, r2, #0
	movs r1, #0x10
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x10
	movs r0, #0
_0226C8CA:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _0226C8CA
	str r5, [r4]
	adds r0, r5, #0
	str r6, [r4, #4]
	bl FUN_0222F104
	adds r7, r0, #0
	adds r0, r5, #0
	bl FUN_0222E158
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _0226C90E
	cmp r7, #0
	beq _0226C90E
	adds r0, r6, #0
	movs r1, #1
	bl ov70_0226251C
	adds r0, r4, #0
	bl ov70_0226CC3C
	adds r0, r5, #0
	bl FUN_0222F114
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov70_0226CB1C
_0226C90E:
	adds r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226C8B4

	thumb_func_start ov70_0226C914
ov70_0226C914: @ 0x0226C914
	push {r4, lr}
	adds r4, r0, #0
	bl ov70_0226CC58
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov70_0226C914

	thumb_func_start ov70_0226C924
ov70_0226C924: @ 0x0226C924
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5]
	bl FUN_0222F104
	adds r4, r0, #0
	ldr r0, [r5]
	bl FUN_0222F114
	adds r7, r0, #0
	ldr r0, [r5]
	bl FUN_0222E158
	adds r6, r0, #0
	ldrh r0, [r5, #0xa]
	cmp r0, r6
	beq _0226C964
	strh r6, [r5, #0xa]
	cmp r6, #1
	bne _0226C964
	ldr r0, [r5, #4]
	movs r1, #1
	bl ov70_0226251C
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov70_0226CB1C
	adds r0, r5, #0
	bl ov70_0226CC3C
_0226C964:
	cmp r6, #0
	beq _0226C982
	ldrb r0, [r5, #8]
	cmp r0, r4
	beq _0226C978
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov70_0226CB1C
_0226C978:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	bl ov70_0226C984
_0226C982:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226C924

	thumb_func_start ov70_0226C984
ov70_0226C984: @ 0x0226C984
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #6
	blo _0226C994
	bl FUN_02022974
_0226C994:
	cmp r4, #6
	bhs _0226C9A4
	ldr r2, _0226C9A8 @ =0x0226E6E4
	lsls r3, r4, #2
	ldr r2, [r2, r3]
	adds r0, r5, #0
	adds r1, r6, #0
	blx r2
_0226C9A4:
	pop {r4, r5, r6, pc}
	nop
_0226C9A8: .4byte 0x0226E6E4
	thumb_func_end ov70_0226C984

	thumb_func_start ov70_0226C9AC
ov70_0226C9AC: @ 0x0226C9AC
	bx lr
	.align 2, 0
	thumb_func_end ov70_0226C9AC

	thumb_func_start ov70_0226C9B0
ov70_0226C9B0: @ 0x0226C9B0
	bx lr
	.align 2, 0
	thumb_func_end ov70_0226C9B0

	thumb_func_start ov70_0226C9B4
ov70_0226C9B4: @ 0x0226C9B4
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r0, r1, #0
	movs r1, #0xe
	blx FUN_020E2178
	cmp r1, #0
	bne _0226CA2E
	ldr r5, _0226CA30 @ =0x0226E74C
	movs r4, #0
_0226C9C8:
	ldr r0, [r7, #0xc]
	adds r1, r4, #0
	lsls r2, r0, #3
	ldr r0, _0226CA34 @ =0x0226E72C
	movs r6, #0
	adds r3, r0, r2
	movs r0, #3
	ands r1, r0
	ldr r0, _0226CA34 @ =0x0226E72C
	ldr r0, [r0, r2]
	cmp r1, r0
	bne _0226C9E8
	movs r0, #1
	str r0, [sp]
	adds r6, r0, #0
	b _0226C9F4
_0226C9E8:
	ldr r0, [r3, #4]
	cmp r1, r0
	bne _0226C9F4
	adds r0, r6, #0
	str r0, [sp]
	movs r6, #1
_0226C9F4:
	cmp r6, #1
	bne _0226CA1A
	cmp r4, #0x11
	bhs _0226CA16
	ldrb r1, [r5]
	movs r3, #1
	ldr r0, [r7, #4]
	ldr r2, [sp]
	lsls r3, r3, #0xc
	bl ov70_02262754
	adds r6, r0, #0
	cmp r6, #1
	beq _0226CA1C
	bl FUN_02022974
	b _0226CA1C
_0226CA16:
	movs r6, #0
	b _0226CA1C
_0226CA1A:
	movs r6, #1
_0226CA1C:
	adds r5, r5, #1
	adds r4, r4, #1
	cmp r6, #1
	beq _0226C9C8
	ldr r0, [r7, #0xc]
	adds r1, r0, #1
	movs r0, #3
	ands r0, r1
	str r0, [r7, #0xc]
_0226CA2E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226CA30: .4byte 0x0226E74C
_0226CA34: .4byte 0x0226E72C
	thumb_func_end ov70_0226C9B4

	thumb_func_start ov70_0226CA38
ov70_0226CA38: @ 0x0226CA38
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, r1, #0
	movs r1, #6
	blx FUN_020E2178
	cmp r1, #0
	bne _0226CAC8
	ldr r0, [r5, #0xc]
	lsls r1, r0, #1
	ldr r0, _0226CACC @ =0x0226E6D4
	ldrb r0, [r0, r1]
	str r0, [sp]
	ldr r0, _0226CAD0 @ =0x0226E6D5
	ldrb r0, [r0, r1]
	add r1, sp, #4
	bl ov70_0226CBB4
	ldr r0, [sp, #8]
	movs r4, #0
	cmp r0, #0
	bls _0226CA8A
	movs r7, #1
	adds r6, r4, #0
	lsls r7, r7, #0xc
_0226CA6C:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov70_02262754
	cmp r0, #1
	beq _0226CA82
	bl FUN_02022974
_0226CA82:
	ldr r0, [sp, #8]
	adds r4, r4, #1
	cmp r4, r0
	blo _0226CA6C
_0226CA8A:
	ldr r0, [sp]
	add r1, sp, #4
	bl ov70_0226CBB4
	ldr r0, [sp, #8]
	movs r4, #0
	cmp r0, #0
	bls _0226CABC
	movs r6, #1
	lsls r7, r6, #0xc
_0226CA9E:
	ldr r1, [sp, #4]
	ldr r0, [r5, #4]
	ldrb r1, [r1, r4]
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov70_02262754
	cmp r0, #1
	beq _0226CAB4
	bl FUN_02022974
_0226CAB4:
	ldr r0, [sp, #8]
	adds r4, r4, #1
	cmp r4, r0
	blo _0226CA9E
_0226CABC:
	ldr r0, [r5, #0xc]
	movs r1, #7
	adds r0, r0, #1
	blx FUN_020E2178
	str r1, [r5, #0xc]
_0226CAC8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0226CACC: .4byte 0x0226E6D4
_0226CAD0: .4byte 0x0226E6D5
	thumb_func_end ov70_0226CA38

	thumb_func_start ov70_0226CAD4
ov70_0226CAD4: @ 0x0226CAD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #3
	bhs _0226CB0C
	lsls r2, r0, #3
	ldr r0, _0226CB10 @ =0x0226E6FC
	ldr r0, [r0, r2]
	cmp r0, r1
	bhs _0226CB0C
	ldr r1, _0226CB14 @ =0x0226E700
	ldr r0, [r4, #4]
	ldr r1, [r1, r2]
	bl ov70_0226278C
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #4]
	lsls r2, r1, #3
	ldr r1, _0226CB14 @ =0x0226E700
	ldr r1, [r1, r2]
	bl ov70_022625D8
	ldr r0, _0226CB18 @ =0x0000059D
	bl FUN_02005748
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
_0226CB0C:
	pop {r4, pc}
	nop
_0226CB10: .4byte 0x0226E6FC
_0226CB14: .4byte 0x0226E700
_0226CB18: .4byte 0x0000059D
	thumb_func_end ov70_0226CAD4

	thumb_func_start ov70_0226CB1C
ov70_0226CB1C: @ 0x0226CB1C
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #6
	blo _0226CB2C
	bl FUN_02022974
_0226CB2C:
	cmp r4, #6
	bhs _0226CB4C
	adds r1, r5, #0
	movs r0, #0
	adds r1, #0xc
	strb r0, [r5, #0xc]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	ldr r2, _0226CB50 @ =0x0226E714
	lsls r3, r4, #2
	ldr r2, [r2, r3]
	adds r0, r5, #0
	adds r1, r6, #0
	blx r2
	strb r4, [r5, #8]
_0226CB4C:
	pop {r4, r5, r6, pc}
	nop
_0226CB50: .4byte 0x0226E714
	thumb_func_end ov70_0226CB1C

	thumb_func_start ov70_0226CB54
ov70_0226CB54: @ 0x0226CB54
	ldr r3, _0226CB60 @ =ov70_02262724
	movs r2, #1
	ldr r0, [r0, #4]
	movs r1, #0
	lsls r2, r2, #0xc
	bx r3
	.align 2, 0
_0226CB60: .4byte ov70_02262724
	thumb_func_end ov70_0226CB54

	thumb_func_start ov70_0226CB64
ov70_0226CB64: @ 0x0226CB64
	ldr r3, _0226CB70 @ =ov70_02262724
	movs r1, #1
	ldr r0, [r0, #4]
	lsls r2, r1, #0xc
	bx r3
	nop
_0226CB70: .4byte ov70_02262724
	thumb_func_end ov70_0226CB64

	thumb_func_start ov70_0226CB74
ov70_0226CB74: @ 0x0226CB74
	ldr r3, _0226CB80 @ =ov70_02262724
	movs r2, #1
	ldr r0, [r0, #4]
	movs r1, #0
	lsls r2, r2, #0xc
	bx r3
	.align 2, 0
_0226CB80: .4byte ov70_02262724
	thumb_func_end ov70_0226CB74

	thumb_func_start ov70_0226CB84
ov70_0226CB84: @ 0x0226CB84
	ldr r3, _0226CB90 @ =ov70_02262724
	movs r2, #1
	ldr r0, [r0, #4]
	movs r1, #0
	lsls r2, r2, #0xc
	bx r3
	.align 2, 0
_0226CB90: .4byte ov70_02262724
	thumb_func_end ov70_0226CB84

	thumb_func_start ov70_0226CB94
ov70_0226CB94: @ 0x0226CB94
	push {r4, lr}
	adds r4, r0, #0
	bl ov70_0226CC58
	movs r2, #1
	ldr r0, [r4, #4]
	movs r1, #0
	lsls r2, r2, #0xc
	bl ov70_02262724
	ldr r0, [r4, #4]
	movs r1, #0
	bl ov70_0226251C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0226CB94

	thumb_func_start ov70_0226CBB4
ov70_0226CBB4: @ 0x0226CBB4
	push {r3, lr}
	cmp r0, #6
	bhi _0226CC1A
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226CBC6: @ jump table
	.2byte _0226CBD4 - _0226CBC6 - 2 @ case 0
	.2byte _0226CBDE - _0226CBC6 - 2 @ case 1
	.2byte _0226CBE8 - _0226CBC6 - 2 @ case 2
	.2byte _0226CBF2 - _0226CBC6 - 2 @ case 3
	.2byte _0226CBFC - _0226CBC6 - 2 @ case 4
	.2byte _0226CC06 - _0226CBC6 - 2 @ case 5
	.2byte _0226CC10 - _0226CBC6 - 2 @ case 6
_0226CBD4:
	movs r0, #6
	str r0, [r1, #4]
	ldr r0, _0226CC20 @ =0x0226E6CC
	str r0, [r1]
	pop {r3, pc}
_0226CBDE:
	movs r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC24 @ =0x0226E6C4
	str r0, [r1]
	pop {r3, pc}
_0226CBE8:
	movs r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC28 @ =0x0226E6BC
	str r0, [r1]
	pop {r3, pc}
_0226CBF2:
	movs r0, #1
	str r0, [r1, #4]
	ldr r0, _0226CC2C @ =0x0226E6B4
	str r0, [r1]
	pop {r3, pc}
_0226CBFC:
	movs r0, #1
	str r0, [r1, #4]
	ldr r0, _0226CC30 @ =0x0226E6B8
	str r0, [r1]
	pop {r3, pc}
_0226CC06:
	movs r0, #2
	str r0, [r1, #4]
	ldr r0, _0226CC34 @ =0x0226E6C0
	str r0, [r1]
	pop {r3, pc}
_0226CC10:
	movs r0, #3
	str r0, [r1, #4]
	ldr r0, _0226CC38 @ =0x0226E6C8
	str r0, [r1]
	pop {r3, pc}
_0226CC1A:
	bl FUN_02022974
	pop {r3, pc}
	.align 2, 0
_0226CC20: .4byte 0x0226E6CC
_0226CC24: .4byte 0x0226E6C4
_0226CC28: .4byte 0x0226E6BC
_0226CC2C: .4byte 0x0226E6B4
_0226CC30: .4byte 0x0226E6B8
_0226CC34: .4byte 0x0226E6C0
_0226CC38: .4byte 0x0226E6C8
	thumb_func_end ov70_0226CBB4

	thumb_func_start ov70_0226CC3C
ov70_0226CC3C: @ 0x0226CC3C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _0226CC50
	ldr r0, _0226CC54 @ =0x0000059E
	bl FUN_02005748
	movs r0, #1
	strb r0, [r4, #9]
_0226CC50:
	pop {r4, pc}
	nop
_0226CC54: .4byte 0x0000059E
	thumb_func_end ov70_0226CC3C

	thumb_func_start ov70_0226CC58
ov70_0226CC58: @ 0x0226CC58
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _0226CC6E
	ldr r0, _0226CC70 @ =0x0000059E
	movs r1, #0
	bl FUN_020057A4
	movs r0, #0
	strb r0, [r4, #9]
_0226CC6E:
	pop {r4, pc}
	.align 2, 0
_0226CC70: .4byte 0x0000059E
	thumb_func_end ov70_0226CC58

	thumb_func_start ov70_0226CC74
ov70_0226CC74: @ 0x0226CC74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	bl ov70_02262E80
	adds r6, r0, #0
	adds r0, r4, #0
	bl ov70_0225DEE8
	str r0, [sp]
	adds r0, r4, #0
	bl ov70_0225DEF0
	str r0, [sp, #4]
	bl ov70_0225CCB0
	adds r7, r0, #0
	ldr r0, [sp, #4]
	bl ov70_0225CCAC
	str r0, [sp, #8]
	adds r0, r5, #0
	bl ov70_02262E84
	cmp r0, #5
	bls _0226CCAC
	b _0226CE46
_0226CCAC:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0226CCB8: @ jump table
	.2byte _0226CCC4 - _0226CCB8 - 2 @ case 0
	.2byte _0226CD9A - _0226CCB8 - 2 @ case 1
	.2byte _0226CDAA - _0226CCB8 - 2 @ case 2
	.2byte _0226CDDC - _0226CCB8 - 2 @ case 3
	.2byte _0226CDFC - _0226CCB8 - 2 @ case 4
	.2byte _0226CE32 - _0226CCB8 - 2 @ case 5
_0226CCC4:
	adds r0, r5, #0
	movs r1, #4
	bl ov70_02262E3C
	adds r6, r0, #0
	ldr r0, _0226CE50 @ =0x000005DC
	bl FUN_02005748
	ldr r0, [sp, #8]
	movs r1, #6
	bl ov70_0225CD60
	bl FUN_0222C0AC
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	adds r1, r7, #0
	movs r2, #0
	bl ov70_0225CDEC
	adds r0, r7, #0
	movs r1, #0
	bl ov70_0225D030
	ldr r1, [sp, #0xc]
	adds r0, r7, #0
	bl ov70_0225D060
	ldr r0, [sp]
	bl FUN_0222E12C
	cmp r0, #0
	beq _0226CD26
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl ov70_0225E20C
	adds r1, r0, #0
	movs r0, #4
	str r0, [r6]
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD26:
	ldr r0, [sp]
	bl FUN_0222E19C
	cmp r0, #1
	bne _0226CD50
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x58
	bl ov70_0225E20C
	adds r1, r0, #0
	movs r0, #4
	str r0, [r6]
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD50:
	ldr r0, [sp]
	bl FUN_0222E0DC
	cmp r0, #1
	bne _0226CD7A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x57
	bl ov70_0225E20C
	adds r1, r0, #0
	movs r0, #4
	str r0, [r6]
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD7A:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x51
	bl ov70_0225E20C
	adds r1, r0, #0
	movs r0, #1
	str r0, [r6]
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CD9A:
	adds r0, r4, #0
	bl ov70_0225E164
	adds r0, r5, #0
	movs r1, #2
	bl ov70_02262E88
	b _0226CE4A
_0226CDAA:
	adds r0, r4, #0
	bl ov70_0225E1C4
	cmp r0, #0
	beq _0226CDBC
	cmp r0, #1
	beq _0226CDCC
	cmp r0, #2
	b _0226CE4A
_0226CDBC:
	adds r0, r5, #0
	movs r1, #3
	bl ov70_02262E88
	adds r0, r4, #0
	bl ov70_0225E1F8
	b _0226CE4A
_0226CDCC:
	adds r0, r5, #0
	movs r1, #4
	bl ov70_02262E88
	adds r0, r4, #0
	bl ov70_0225E1F8
	b _0226CE4A
_0226CDDC:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0x55
	bl ov70_0225E20C
	adds r1, r0, #0
	movs r0, #4
	str r0, [r6]
	adds r0, r4, #0
	bl ov70_0225DF8C
	adds r0, r5, #0
	movs r1, #5
	bl ov70_02262E88
	b _0226CE4A
_0226CDFC:
	adds r0, r4, #0
	bl ov70_0225DFEC
	adds r0, r4, #0
	bl ov70_0225E1F8
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	movs r2, #1
	bl ov70_0225CDEC
	adds r0, r5, #0
	bl ov70_02262E64
	adds r0, r7, #0
	movs r1, #1
	bl ov70_0225D030
	ldr r0, [sp, #4]
	adds r1, r7, #0
	movs r2, #0
	movs r3, #1
	bl ov70_0225CDAC
	add sp, #0x10
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226CE32:
	adds r0, r4, #0
	bl ov70_0225DFAC
	cmp r0, #1
	bne _0226CE4A
	ldr r1, [r6]
	adds r0, r5, #0
	bl ov70_02262E88
	b _0226CE4A
_0226CE46:
	bl FUN_02022974
_0226CE4A:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226CE50: .4byte 0x000005DC
	thumb_func_end ov70_0226CC74

	thumb_func_start ov70_0226CE54
ov70_0226CE54: @ 0x0226CE54
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r0, r1, #0
	movs r1, #0xc4
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	movs r2, #0xc4
	blx FUN_020D5124
	str r5, [r4]
	adds r0, r5, #0
	bl ov70_0225DEE8
	str r0, [r4, #4]
	adds r0, r5, #0
	bl ov70_0225DEF8
	str r0, [r4, #8]
	adds r0, r5, #0
	bl ov70_0225DF00
	str r0, [r4, #0xc]
	bl ov70_0225C8A8
	adds r1, r0, #6
	adds r0, r4, #0
	adds r0, #0xbc
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r1, [r0]
	movs r0, #7
	mvns r0, r0
	subs r1, r0, r1
	adds r0, r4, #0
	adds r0, #0xc0
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r6, _0226CF34 @ =0x0226E760
	lsls r1, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xbc
	str r1, [r0]
	adds r0, r4, #0
	adds r0, #0xc0
	ldr r0, [r0]
	movs r7, #0
	lsls r1, r0, #0x10
	adds r0, r4, #0
	adds r0, #0xc0
	str r1, [r0]
	adds r5, r4, #0
_0226CEC6:
	movs r0, #0
	str r0, [sp]
	ldrb r1, [r6]
	add r2, sp, #4
	ldr r0, [r4, #0xc]
	adds r2, #2
	add r3, sp, #4
	bl ov70_0225C8D8
	add r0, sp, #4
	ldrh r0, [r0, #2]
	adds r7, r7, #1
	adds r6, r6, #1
	lsls r1, r0, #4
	adds r0, r5, #0
	adds r0, #0xaa
	strh r1, [r0]
	add r0, sp, #4
	ldrh r0, [r0]
	lsls r1, r0, #4
	adds r0, r5, #0
	adds r0, #0xac
	adds r5, r5, #4
	strh r1, [r0]
	cmp r7, #3
	blt _0226CEC6
	movs r5, #0
_0226CEFC:
	adds r2, r4, #0
	adds r2, #0xbc
	ldr r0, [r4, #8]
	ldr r2, [r2]
	adds r1, r5, #0
	bl ov70_022622B0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_0222EB7C
	cmp r0, #1
	bne _0226CF26
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_0226D020
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov70_0226D46C
_0226CF26:
	adds r5, r5, #1
	cmp r5, #9
	blt _0226CEFC
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226CF34: .4byte 0x0226E760
	thumb_func_end ov70_0226CE54

	thumb_func_start ov70_0226CF38
ov70_0226CF38: @ 0x0226CF38
	ldr r3, _0226CF3C @ =FUN_020181C4
	bx r3
	.align 2, 0
_0226CF3C: .4byte FUN_020181C4
	thumb_func_end ov70_0226CF38

	thumb_func_start ov70_0226CF40
ov70_0226CF40: @ 0x0226CF40
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #4]
	bl FUN_0222E338
	adds r1, r0, #0
	ldr r0, [r5, #4]
	bl FUN_0222EBA4
	movs r1, #0
	mvns r1, r1
	str r0, [sp, #8]
	cmp r0, r1
	bne _0226CF62
	movs r6, #0
	b _0226CF6C
_0226CF62:
	add r1, sp, #8
	add r2, sp, #4
	bl FUN_0222EC04
	movs r6, #1
_0226CF6C:
	movs r4, #0
_0226CF6E:
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_0222EB7C
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _0226CFB6
	adds r1, r4, #0
	movs r2, #1
	bl ov70_022623C4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0226D020
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov70_0226D46C
	cmp r6, #0
	beq _0226CFA4
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _0226CFA2
	movs r7, #1
	b _0226CFA4
_0226CFA2:
	movs r7, #0
_0226CFA4:
	ldr r0, [sp, #4]
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl ov70_0226D0E8
	b _0226CFBE
_0226CFB6:
	adds r1, r4, #0
	movs r2, #0
	bl ov70_022623C4
_0226CFBE:
	adds r4, r4, #1
	cmp r4, #9
	blt _0226CF6E
	adds r7, r5, #0
	movs r6, #0
	adds r4, r5, #0
	adds r7, #0x2c
_0226CFCC:
	ldr r0, [r5, #8]
	adds r1, r6, #0
	bl ov70_0226241C
	strb r0, [r4, #0x10]
	ldr r1, [r5, #8]
	adds r0, r7, #0
	adds r2, r6, #0
	bl ov70_0226D2D8
	strb r0, [r4, #0x11]
	ldr r0, [r5, #8]
	adds r1, r6, #0
	bl ov70_02262444
	strb r0, [r4, #0x12]
	adds r6, r6, #1
	adds r4, r4, #3
	adds r7, #0xe
	cmp r6, #9
	blt _0226CFCC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov70_0226CF40

	thumb_func_start ov70_0226CFFC
ov70_0226CFFC: @ 0x0226CFFC
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	adds r4, r2, #0
	cmp r5, #9
	blo _0226D00C
	bl FUN_02022974
_0226D00C:
	cmp r4, #3
	blt _0226D014
	bl FUN_02022974
_0226D014:
	lsls r0, r5, #1
	adds r0, r5, r0
	adds r0, r6, r0
	adds r0, r0, r4
	ldrb r0, [r0, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_0226CFFC

	thumb_func_start ov70_0226D020
ov70_0226D020: @ 0x0226D020
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	str r1, [sp]
	bl FUN_0222EB8C
	adds r4, r0, #0
	ldr r0, [r5, #4]
	bl FUN_0222EB9C
	adds r6, r0, #0
	adds r0, r5, #0
	adds r0, #0xc0
	movs r1, #2
	ldr r0, [r0]
	lsls r1, r1, #0xc
	blx FUN_020BCFD0
	adds r7, r0, #0
	cmp r6, #0
	ble _0226D05C
	lsls r0, r6, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226D06A
_0226D05C:
	lsls r0, r6, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226D06A:
	adds r6, r0, #0
	cmp r4, #0
	ble _0226D082
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226D090
_0226D082:
	lsls r0, r4, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226D090:
	blx FUN_020E1740
	asrs r1, r0, #0x1f
	asrs r3, r7, #0x1f
	adds r2, r7, #0
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r4, r2, #0xc
	orrs r4, r0
	adds r0, r6, #0
	blx FUN_020E1740
	adds r1, r0, #0
	adds r0, r4, #0
	blx FUN_020BCFD0
	asrs r2, r0, #0x1f
	lsls r3, r2, #0xd
	lsrs r1, r0, #0x13
	lsls r2, r0, #0xd
	movs r0, #2
	orrs r3, r1
	movs r1, #0
	lsls r0, r0, #0xa
	adds r2, r2, r0
	adcs r3, r1
	lsls r0, r3, #0x14
	lsrs r3, r2, #0xc
	orrs r3, r0
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r2, [r0]
	ldr r0, [r5, #8]
	ldr r1, [sp]
	adds r2, r3, r2
	bl ov70_022622B0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226D020

	thumb_func_start ov70_0226D0E8
ov70_0226D0E8: @ 0x0226D0E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r7, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp]
	str r0, [sp, #0x30]
	ldr r0, [r7, #4]
	str r2, [sp, #4]
	adds r5, r3, #0
	bl FUN_0222EB38
	adds r6, r0, #0
	ldr r0, [r7, #4]
	bl FUN_0222EB28
	ldr r0, [sp]
	movs r4, #0
	lsls r1, r0, #1
	adds r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp]
	movs r1, #3
	blx FUN_020E2178
	str r1, [sp, #8]
	movs r0, #0xc
	ldr r1, _0226D240 @ =0x0226E774
	muls r0, r6, r0
	adds r0, r1, r0
	str r0, [sp, #0xc]
	adds r0, r7, #0
	str r0, [sp, #0x14]
	adds r0, #0x2c
	str r0, [sp, #0x14]
	ldr r0, [sp]
	movs r1, #0xe
	muls r1, r0, r1
	str r1, [sp, #0x18]
_0226D134:
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	adds r1, r4, r1
	bl FUN_0222EBE4
	movs r6, #0
	cmp r5, #1
	bne _0226D14C
	ldr r1, [sp, #0x30]
	cmp r4, r1
	bne _0226D14C
	movs r6, #1
_0226D14C:
	cmp r0, #1
	bne _0226D232
	cmp r4, #0
	beq _0226D15E
	cmp r4, #1
	beq _0226D1C2
	cmp r4, #2
	beq _0226D1F8
	b _0226D232
_0226D15E:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov70_02262374
	cmp r0, #1
	bne _0226D232
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D194
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #2]
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0226D27C
	ldr r0, [sp, #0xc]
	ldrh r3, [r0, #8]
	ldr r0, _0226D244 @ =0x0000FFFE
	cmp r3, r0
	beq _0226D1B6
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0226D24C
	b _0226D1B6
_0226D194:
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3]
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0226D27C
	ldr r0, [sp, #0xc]
	ldrh r3, [r0, #4]
	ldr r0, _0226D244 @ =0x0000FFFE
	cmp r3, r0
	beq _0226D1B6
	ldr r0, [sp, #4]
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0226D24C
_0226D1B6:
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	adds r1, r4, r1
	bl FUN_0222EBF4
	b _0226D232
_0226D1C2:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D1CC
	movs r1, #1
	b _0226D1CE
_0226D1CC:
	movs r1, #0
_0226D1CE:
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r3, [sp]
	adds r0, r2, r0
	ldr r2, [r7, #8]
	bl ov70_0226D2A0
	cmp r0, #1
	bne _0226D232
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	adds r1, r4, r1
	bl FUN_0222EBF4
	ldr r0, [sp, #4]
	ldr r3, _0226D248 @ =0x000005AF
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0226D24C
	b _0226D232
_0226D1F8:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov70_0226239C
	cmp r0, #1
	bne _0226D232
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	adds r1, r4, r1
	bl FUN_0222EBF4
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226D224
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #0xa]
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0226D24C
	b _0226D232
_0226D224:
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #6]
	adds r1, r5, #0
	adds r2, r6, #0
	bl ov70_0226D24C
_0226D232:
	adds r4, r4, #1
	cmp r4, #3
	bge _0226D23A
	b _0226D134
_0226D23A:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0226D240: .4byte 0x0226E774
_0226D244: .4byte 0x0000FFFE
_0226D248: .4byte 0x000005AF
	thumb_func_end ov70_0226D0E8

	thumb_func_start ov70_0226D24C
ov70_0226D24C: @ 0x0226D24C
	push {r3, lr}
	cmp r0, #0
	beq _0226D270
	cmp r1, #0
	beq _0226D278
	cmp r2, #0
	beq _0226D266
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	movs r1, #5
	bl FUN_02005770
	pop {r3, pc}
_0226D266:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
	pop {r3, pc}
_0226D270:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
_0226D278:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0226D24C

	thumb_func_start ov70_0226D27C
ov70_0226D27C: @ 0x0226D27C
	push {r3, lr}
	cmp r0, #0
	beq _0226D292
	cmp r1, #0
	beq _0226D29C
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl FUN_02005844
	pop {r3, pc}
_0226D292:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	bl FUN_02005844
_0226D29C:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov70_0226D27C

	thumb_func_start ov70_0226D2A0
ov70_0226D2A0: @ 0x0226D2A0
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	adds r7, r3, #0
	cmp r4, #2
	blo _0226D2B2
	bl FUN_02022974
_0226D2B2:
	ldrh r0, [r5]
	cmp r0, #1
	bne _0226D2BC
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0226D2BC:
	ldr r3, _0226D2D4 @ =0x0226E76C
	strh r4, [r5, #2]
	lsls r4, r4, #2
	movs r0, #1
	strh r0, [r5]
	ldr r3, [r3, r4]
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r7, #0
	blx r3
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0226D2D4: .4byte 0x0226E76C
	thumb_func_end ov70_0226D2A0

	thumb_func_start ov70_0226D2D8
ov70_0226D2D8: @ 0x0226D2D8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrh r3, [r4]
	cmp r3, #0
	beq _0226D312
	ldrh r3, [r4, #2]
	lsls r5, r3, #2
	ldr r3, _0226D318 @ =0x0226E764
	ldr r3, [r3, r5]
	blx r3
	cmp r0, #1
	bne _0226D30E
	movs r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
_0226D30E:
	movs r0, #1
	pop {r3, r4, r5, pc}
_0226D312:
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0226D318: .4byte 0x0226E764
	thumb_func_end ov70_0226D2D8

	thumb_func_start ov70_0226D31C
ov70_0226D31C: @ 0x0226D31C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #4]
	movs r0, #8
	strh r0, [r4, #6]
	movs r0, #5
	bl FUN_0201D2A4
	strh r0, [r4, #8]
	movs r0, #2
	strh r0, [r4, #0xa]
	movs r0, #4
	strh r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0226D31C

	thumb_func_start ov70_0226D33C
ov70_0226D33C: @ 0x0226D33C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #4]
	movs r0, #0x10
	strh r0, [r4, #6]
	movs r0, #0xa
	bl FUN_0201D2A4
	strh r0, [r4, #8]
	movs r0, #4
	strh r0, [r4, #0xa]
	movs r0, #2
	strh r0, [r4, #0xc]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov70_0226D33C

	thumb_func_start ov70_0226D35C
ov70_0226D35C: @ 0x0226D35C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	add r0, sp, #0x10
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	movs r0, #4
	ldrsh r0, [r5, r0]
	str r1, [sp]
	str r2, [sp, #4]
	adds r1, r0, #1
	movs r0, #6
	ldrsh r0, [r5, r0]
	cmp r1, r0
	bge _0226D382
	strh r1, [r5, #4]
	b _0226D394
_0226D382:
	strh r4, [r5, #4]
	movs r0, #0xc
	ldrsh r0, [r5, r0]
	subs r0, r0, #1
	cmp r0, #0
	ble _0226D392
	strh r0, [r5, #0xc]
	b _0226D394
_0226D392:
	movs r4, #1
_0226D394:
	movs r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, _0226D464 @ =0x0000FFFF
	muls r0, r1, r0
	movs r1, #6
	ldrsh r1, [r5, r1]
	blx FUN_020E1F6C
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _0226D3C0
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226D3CE
_0226D3C0:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226D3CE:
	blx FUN_020E1740
	adds r2, r0, #0
	asrs r0, r6, #4
	lsls r1, r0, #2
	ldr r0, _0226D468 @ =0x020F983C
	asrs r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	asrs r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	lsls r0, r1, #4
	lsrs r6, r0, #0x10
	movs r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _0226D41A
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	adds r1, r0, #0
	movs r0, #0x3f
	lsls r0, r0, #0x18
	blx FUN_020E0B00
	b _0226D428
_0226D41A:
	lsls r0, r0, #0xc
	blx FUN_020E17B4
	movs r1, #0x3f
	lsls r1, r1, #0x18
	blx FUN_020E1A9C
_0226D428:
	blx FUN_020E1740
	adds r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asrs r3, r2, #0x1f
	blx FUN_020E1F1C
	movs r2, #2
	movs r3, #0
	lsls r2, r2, #0xa
	adds r2, r0, r2
	adcs r1, r3
	lsls r0, r1, #0x14
	lsrs r1, r2, #0xc
	orrs r1, r0
	str r1, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	adds r2, r6, #0
	bl ov70_022623F0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	bl ov70_022622EC
	adds r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_0226D464: .4byte 0x0000FFFF
_0226D468: .4byte 0x020F983C
	thumb_func_end ov70_0226D35C

	thumb_func_start ov70_0226D46C
ov70_0226D46C: @ 0x0226D46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	str r1, [sp]
	adds r0, r1, #0
	lsls r1, r0, #1
	ldr r0, [sp]
	movs r6, #0
	adds r0, r0, r1
	str r0, [sp, #4]
_0226D480:
	ldr r1, [sp, #4]
	ldr r0, [r7, #4]
	adds r1, r6, r1
	bl FUN_0222EC30
	adds r4, r0, #0
	ldr r0, [r7, #8]
	ldr r1, [sp]
	adds r2, r6, #0
	add r3, sp, #8
	bl ov70_02262318
	cmp r4, #3
	bge _0226D4C2
	lsls r0, r4, #2
	adds r5, r7, r0
_0226D4A0:
	movs r0, #0xaa
	ldrsh r0, [r5, r0]
	adds r0, #0x10
	lsls r1, r0, #0xc
	ldr r0, [sp, #8]
	cmp r1, r0
	ble _0226D4BA
	ldr r1, [sp, #4]
	ldr r0, [r7, #4]
	adds r1, r6, r1
	adds r2, r4, #0
	bl FUN_0222EC20
_0226D4BA:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #3
	blt _0226D4A0
_0226D4C2:
	adds r6, r6, #1
	cmp r6, #3
	blt _0226D480
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226D46C
	@ 0x0226D4CC
