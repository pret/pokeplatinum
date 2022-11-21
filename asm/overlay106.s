	.include "macros/function.inc"


	.text

	thumb_func_start ov106_02241AE0
ov106_02241AE0: @ 0x02241AE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _02241B98 @ =0x00000068
	movs r1, #2
	bl FUN_02006590
	bl ov106_022424C8
	movs r2, #2
	movs r0, #3
	movs r1, #0x62
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0xa7
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0x62
	bl FUN_0200681C
	movs r2, #0xa7
	movs r1, #0
	lsls r2, r2, #2
	adds r5, r0, #0
	blx FUN_020D5124
	movs r0, #0x62
	bl FUN_02018340
	str r0, [r5, #0x48]
	adds r0, r4, #0
	str r4, [r5]
	bl FUN_02006840
	adds r4, r0, #0
	adds r0, r5, #0
	ldr r1, [r4]
	adds r0, #0xb8
	str r1, [r0]
	ldrb r0, [r4, #4]
	adds r1, r4, #6
	strb r0, [r5, #9]
	movs r0, #0x8a
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_02025E44
	adds r1, r5, #0
	adds r1, #0xb4
	str r0, [r1]
	movs r1, #0x8b
	ldr r0, [r4, #0xc]
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r2, [r4, #8]
	adds r0, r1, #4
	str r2, [r5, r0]
	adds r0, r1, #0
	ldr r2, [r4, #0x14]
	adds r0, #8
	str r2, [r5, r0]
	ldrh r0, [r4, #0x18]
	adds r1, #0x68
	adds r0, r0, #1
	strh r0, [r5, #0x1c]
	ldrb r0, [r4, #5]
	strb r0, [r5, #0xd]
	movs r0, #0xff
	strb r0, [r5, r1]
	strb r0, [r5, #0x18]
	movs r0, #0x75
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl ov106_02242500
	ldrb r0, [r5, #9]
	bl FUN_0223B5B0
	cmp r0, #1
	bne _02241B8E
	adds r0, r5, #0
	bl FUN_0209BA80
_02241B8E:
	movs r0, #0
	str r0, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_02241B98: .4byte 0x00000068
	thumb_func_end ov106_02241AE0

	thumb_func_start ov106_02241B9C
ov106_02241B9C: @ 0x02241B9C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	adds r4, r0, #0
	ldrb r1, [r4, #0x18]
	cmp r1, #0xff
	beq _02241BC6
	ldr r1, [r5]
	cmp r1, #2
	bne _02241BC6
	ldrh r1, [r4, #0x10]
	cmp r1, #0
	bne _02241BC6
	bl ov106_02243200
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov106_02242D5C
_02241BC6:
	ldr r0, [r5]
	cmp r0, #6
	bls _02241BCE
	b _02241CE4
_02241BCE:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02241BDA: @ jump table
	.2byte _02241C02 - _02241BDA - 2 @ case 0
	.2byte _02241BE8 - _02241BDA - 2 @ case 1
	.2byte _02241C18 - _02241BDA - 2 @ case 2
	.2byte _02241C6A - _02241BDA - 2 @ case 3
	.2byte _02241CAC - _02241BDA - 2 @ case 4
	.2byte _02241CC2 - _02241BDA - 2 @ case 5
	.2byte _02241CD0 - _02241BDA - 2 @ case 6
_02241BE8:
	adds r0, r4, #0
	bl ov106_02241E14
	cmp r0, #1
	bne _02241BFE
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl ov106_02242D5C
	b _02241C02
_02241BFE:
	movs r0, #0
	pop {r3, r4, r5, pc}
_02241C02:
	adds r0, r4, #0
	bl ov106_02241D28
	cmp r0, #1
	bne _02241CE4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov106_02242D5C
	b _02241CE4
_02241C18:
	adds r0, r4, #0
	bl ov106_02241E5C
	cmp r0, #1
	bne _02241CE4
	ldrb r0, [r4, #0x17]
	cmp r0, #1
	bne _02241C34
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov106_02242D5C
	b _02241CE4
_02241C34:
	ldrb r0, [r4, #0xb]
	cmp r0, #1
	bne _02241C48
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov106_02242D5C
	movs r0, #0
	pop {r3, r4, r5, pc}
_02241C48:
	ldrb r0, [r4, #9]
	bl FUN_0223B5B0
	cmp r0, #1
	bne _02241C5E
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov106_02242D5C
	b _02241CE4
_02241C5E:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	bl ov106_02242D5C
	b _02241CE4
_02241C6A:
	adds r0, r4, #0
	bl ov106_02242108
	cmp r0, #1
	bne _02241CE4
	ldrb r0, [r4, #0x19]
	cmp r0, #1
	bne _02241C8A
	movs r0, #0
	strb r0, [r4, #0x19]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov106_02242D5C
	b _02241CE4
_02241C8A:
	ldrb r0, [r4, #9]
	bl FUN_0223B5B0
	cmp r0, #1
	bne _02241CA0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov106_02242D5C
	b _02241CE4
_02241CA0:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	bl ov106_02242D5C
	b _02241CE4
_02241CAC:
	adds r0, r4, #0
	bl ov106_0224230C
	cmp r0, #1
	bne _02241CE4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #5
	bl ov106_02242D5C
	b _02241CE4
_02241CC2:
	adds r0, r4, #0
	bl ov106_02242344
	cmp r0, #1
	bne _02241CE4
	movs r0, #1
	pop {r3, r4, r5, pc}
_02241CD0:
	adds r0, r4, #0
	bl ov106_022423AC
	cmp r0, #1
	bne _02241CE4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov106_02242D5C
_02241CE4:
	adds r4, #0xc0
	ldr r0, [r4]
	bl FUN_020219F8
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_02241B9C

	thumb_func_start ov106_02241CF0
ov106_02241CF0: @ 0x02241CF0
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200682C
	movs r1, #0x8a
	lsls r1, r1, #2
	ldrb r2, [r0, #0xd]
	ldr r1, [r0, r1]
	strh r2, [r1]
	bl ov106_022423E8
	adds r0, r4, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x62
	bl FUN_0201807C
	ldr r0, _02241D24 @ =0x00000068
	bl FUN_02006514
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_02241D24: .4byte 0x00000068
	thumb_func_end ov106_02241CF0

	thumb_func_start ov106_02241D28
ov106_02241D28: @ 0x02241D28
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #3
	bhi _02241DCE
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02241D40: @ jump table
	.2byte _02241D48 - _02241D40 - 2 @ case 0
	.2byte _02241D6A - _02241D40 - 2 @ case 1
	.2byte _02241D9C - _02241D40 - 2 @ case 2
	.2byte _02241DC0 - _02241D40 - 2 @ case 3
_02241D48:
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _02241D62
	ldrb r0, [r4, #9]
	bl FUN_0223B5B0
	cmp r0, #1
	bne _02241D62
	bl FUN_020365F4
	movs r0, #0x70
	bl FUN_020364F0
_02241D62:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241DCE
_02241D6A:
	ldrh r0, [r4, #0x12]
	cmp r0, #0
	bne _02241D94
	ldrb r0, [r4, #9]
	bl FUN_0223B5B0
	cmp r0, #1
	bne _02241D94
	movs r0, #0x70
	bl FUN_02036540
	cmp r0, #1
	bne _02241DCE
	bl FUN_020365F4
	movs r0, #1
	strh r0, [r4, #0x12]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241DCE
_02241D94:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241DCE
_02241D9C:
	bl ov106_02241DD4
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241DCE
_02241DC0:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02241DCE
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02241DCE:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov106_02241D28

	thumb_func_start ov106_02241DD4
ov106_02241DD4: @ 0x02241DD4
	push {r4, lr}
	sub sp, #0x10
	movs r1, #0
	str r1, [sp]
	adds r4, r0, #0
	str r1, [sp, #4]
	adds r1, r4, #0
	adds r1, #0x7c
	movs r2, #1
	movs r3, #2
	bl ov106_02242B38
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x7c
	bl ov106_02242C2C
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r2, #0
	adds r0, r4, #0
	adds r4, #0x6c
	str r2, [sp, #8]
	adds r1, r4, #0
	adds r3, r2, #0
	str r2, [sp, #0xc]
	bl ov106_02242AC4
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov106_02241DD4

	thumb_func_start ov106_02241E14
ov106_02241E14: @ 0x02241E14
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	bne _02241E58
	ldr r0, [r4, #4]
	bl FUN_02006844
	cmp r0, #1
	bne _02241E58
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	ldrb r1, [r0, #0x14]
	movs r0, #0x89
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	bl FUN_020181C4
	ldr r0, [r4, #4]
	bl FUN_020181C4
	movs r0, #0
	str r0, [r4, #4]
	adds r0, r4, #0
	bl ov106_0224248C
	movs r0, #0
	strh r0, [r4, #0x10]
	movs r0, #1
	pop {r4, pc}
_02241E58:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov106_02241E14

	thumb_func_start ov106_02241E5C
ov106_02241E5C: @ 0x02241E5C
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #6
	bhi _02241E9E
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02241E74: @ jump table
	.2byte _02241E82 - _02241E74 - 2 @ case 0
	.2byte _02241E8C - _02241E74 - 2 @ case 1
	.2byte _02241F52 - _02241E74 - 2 @ case 2
	.2byte _02241FA0 - _02241E74 - 2 @ case 3
	.2byte _02242018 - _02241E74 - 2 @ case 4
	.2byte _02242066 - _02241E74 - 2 @ case 5
	.2byte _022420BE - _02241E74 - 2 @ case 6
_02241E82:
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #8]
	b _022420EA
_02241E8C:
	ldr r1, _022420F0 @ =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov106_02242D64
	ldr r0, _022420F0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _02241EA0
_02241E9E:
	b _022420EA
_02241EA0:
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	cmp r0, #0xfe
	bne _02241ED2
	ldr r0, _022420F4 @ =0x000005DD
	bl FUN_02005748
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	strh r0, [r4, #0x10]
	movs r0, #6
	strb r0, [r4, #8]
	b _022420EA
_02241ED2:
	adds r0, r4, #0
	bl ov106_022430B0
	cmp r0, #1
	ldrb r0, [r4, #0xd]
	bne _02241EF2
	bl FUN_0223B5A4
	cmp r0, #9
	beq _02241F26
	ldr r0, _022420F8 @ =0x000005F3
	bl FUN_02005748
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, pc}
_02241EF2:
	bl ov106_02243090
	movs r1, #0x23
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_020301E0
	cmp r0, #0xa
	blo _02241F10
	ldr r0, _022420F8 @ =0x000005F3
	bl FUN_02005748
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, pc}
_02241F10:
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	cmp r0, #9
	bne _02241F26
	ldr r0, _022420F8 @ =0x000005F3
	bl FUN_02005748
	add sp, #0x18
	movs r0, #0
	pop {r3, r4, r5, pc}
_02241F26:
	ldr r0, _022420F4 @ =0x000005DD
	bl FUN_02005748
	ldrb r0, [r4, #9]
	bl FUN_0223B5B0
	cmp r0, #0
	bne _02241F48
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x48]
	movs r2, #1
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	movs r1, #3
	bl FUN_0201C3C0
_02241F48:
	movs r0, #8
	strh r0, [r4, #0x14]
	movs r0, #2
	strb r0, [r4, #8]
	b _022420EA
_02241F52:
	ldrh r0, [r4, #0x14]
	subs r0, r0, #1
	strh r0, [r4, #0x14]
	ldrh r0, [r4, #0x14]
	cmp r0, #0
	bne _02241FBE
	ldrb r0, [r4, #9]
	bl FUN_0223B5B0
	cmp r0, #0
	bne _02241F74
	adds r0, r4, #0
	bl ov106_02243224
	movs r0, #3
	strb r0, [r4, #8]
	b _022420EA
_02241F74:
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x4c
	bl ov106_02243758
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	bl ov106_02242978
	strb r0, [r4, #0xa]
	ldrb r0, [r4, #0xd]
	add sp, #0x18
	strb r0, [r4, #0x1a]
	movs r0, #1
	strb r0, [r4, #0x17]
	pop {r3, r4, r5, pc}
_02241FA0:
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02241FC0
	bhs _02242006
	cmp r0, #1
	bhi _02241FBE
	cmp r0, #0
	beq _02241FC6
	cmp r0, #1
	beq _02242006
_02241FBE:
	b _022420EA
_02241FC0:
	adds r1, r1, #1
	cmp r0, r1
	b _022420EA
_02241FC6:
	adds r0, r4, #0
	bl ov106_02243200
	adds r0, r4, #0
	bl ov106_02243098
	cmp r0, #1
	bne _02241FEA
	adds r0, r4, #0
	bl ov106_022430B0
	cmp r0, #0
	bne _02241FEA
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0x1f]
	movs r0, #4
	strb r0, [r4, #8]
	b _022420EA
_02241FEA:
	ldr r0, _022420FC @ =0x000005DC
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _02242100 @ =0x00000624
	bl FUN_02005748
	ldrb r0, [r4, #0x1f]
	cmp r0, #0x75
	beq _02242000
	strb r0, [r4, #0xd]
_02242000:
	add sp, #0x18
	movs r0, #1
	pop {r3, r4, r5, pc}
_02242006:
	adds r0, r4, #0
	bl ov106_02243200
	adds r0, r4, #0
	bl ov106_022432AC
	movs r0, #1
	strb r0, [r4, #8]
	b _022420EA
_02242018:
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x4c
	bl ov106_02243758
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_02025E44
	bl FUN_02027AC0
	movs r3, #1
	str r3, [sp]
	str r0, [sp, #4]
	adds r1, r4, #0
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0x4c
	movs r2, #0x20
	bl ov106_02242918
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	adds r0, #0x4c
	bl FUN_0201A954
	movs r0, #5
	strb r0, [r4, #8]
	b _022420EA
_02242066:
	ldrb r0, [r4, #0xa]
	bl FUN_0201D724
	cmp r0, #0
	bne _022420EA
	movs r0, #1
	strb r0, [r4, #0x1e]
	adds r0, r4, #0
	bl ov106_022432D4
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov106_022436B0
	ldr r0, [r4, #0x48]
	movs r1, #0x13
	movs r2, #0
	bl ov106_02242FAC
	ldr r1, [r4, #0x48]
	adds r0, r4, #0
	bl ov106_02242F4C
	movs r0, #0x13
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl ov106_02242F24
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov106_02242F3C
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r5, #0
	bl ov106_02243670
	movs r0, #0
	strb r0, [r4, #8]
	b _022420EA
_022420BE:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022420EA
	adds r0, r4, #0
	bl ov106_02242CA4
	adds r0, r4, #0
	bl ov106_022423E8
	adds r1, r4, #0
	adds r1, #0xbc
	ldr r0, _02242104 @ =0x020F410C
	ldr r1, [r1]
	movs r2, #0x62
	bl FUN_020067E8
	str r0, [r4, #4]
	movs r0, #1
	add sp, #0x18
	strb r0, [r4, #0xb]
	pop {r3, r4, r5, pc}
_022420EA:
	movs r0, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_022420F0: .4byte 0x021BF67C
_022420F4: .4byte 0x000005DD
_022420F8: .4byte 0x000005F3
_022420FC: .4byte 0x000005DC
_02242100: .4byte 0x00000624
_02242104: .4byte 0x020F410C
	thumb_func_end ov106_02241E5C

	thumb_func_start ov106_02242108
ov106_02242108: @ 0x02242108
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #9
	bhi _02242166
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224211E: @ jump table
	.2byte _02242132 - _0224211E - 2 @ case 0
	.2byte _02242154 - _0224211E - 2 @ case 1
	.2byte _02242234 - _0224211E - 2 @ case 2
	.2byte _0224219A - _0224211E - 2 @ case 3
	.2byte _022421EE - _0224211E - 2 @ case 4
	.2byte _02242252 - _0224211E - 2 @ case 5
	.2byte _0224229E - _0224211E - 2 @ case 6
	.2byte _022422AE - _0224211E - 2 @ case 7
	.2byte _022422D0 - _0224211E - 2 @ case 8
	.2byte _022422E0 - _0224211E - 2 @ case 9
_02242132:
	ldrb r0, [r4, #0x1a]
	bl ov106_02243090
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #5
	bl ov106_022430B4
	cmp r0, #1
	bne _02242166
	movs r0, #0
	strb r0, [r4, #0x1b]
	strb r0, [r4, #0x1a]
	strb r0, [r4, #0x17]
	movs r0, #1
	strb r0, [r4, #8]
	b _022422FC
_02242154:
	ldrb r0, [r4, #0x1b]
	cmp r0, #0
	beq _02242160
	subs r0, r0, #1
	strb r0, [r4, #0x1b]
	b _022422FC
_02242160:
	ldrb r0, [r4, #0x16]
	cmp r0, #2
	bhs _02242168
_02242166:
	b _022422FC
_02242168:
	movs r0, #0
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x18]
	cmp r0, #0x14
	bhs _02242186
	bl FUN_0203608C
	cmp r0, #0
	bne _02242180
	movs r0, #2
	strb r0, [r4, #8]
	b _022422FC
_02242180:
	movs r0, #3
	strb r0, [r4, #8]
	b _022422FC
_02242186:
	bl FUN_0203608C
	cmp r0, #0
	bne _02242194
	movs r0, #3
	strb r0, [r4, #8]
	b _022422FC
_02242194:
	movs r0, #2
	strb r0, [r4, #8]
	b _022422FC
_0224219A:
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov106_02243664
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x4c
	bl ov106_02243758
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl FUN_0222E5D0
	adds r0, r4, #0
	movs r1, #0xb
	movs r2, #1
	bl ov106_02242978
	strb r0, [r4, #0xa]
	movs r0, #0xa
	movs r1, #0xa5
	strb r0, [r4, #0x1b]
	lsls r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x48]
	movs r2, #2
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	movs r1, #3
	bl FUN_0201C3C0
	movs r0, #4
	strb r0, [r4, #8]
	b _022422FC
_022421EE:
	ldr r1, _02242300 @ =0x00000295
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _02242270
	cmp r2, #1
	bne _02242204
	subs r0, r1, #1
	ldrb r0, [r4, r0]
	strb r0, [r4, #0xd]
	movs r0, #1
	pop {r4, pc}
_02242204:
	bl ov106_022432D4
	movs r1, #0xa5
	lsls r1, r1, #2
	ldrb r1, [r4, r1]
	ldr r0, [r4, #0x48]
	movs r2, #0
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	movs r1, #3
	bl FUN_0201C3C0
	movs r0, #0xa5
	movs r2, #0xff
	lsls r0, r0, #2
	strb r2, [r4, r0]
	movs r1, #0
	adds r0, r0, #1
	strb r1, [r4, r0]
	strb r2, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0x19]
	pop {r4, pc}
_02242234:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x48]
	movs r2, #1
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	movs r1, #3
	bl FUN_0201C3C0
	adds r0, r4, #0
	bl ov106_02243224
	movs r0, #5
	strb r0, [r4, #8]
	b _022422FC
_02242252:
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02242272
	bhs _02242292
	cmp r0, #1
	bhi _022422FC
	cmp r0, #0
	beq _02242278
	cmp r0, #1
	beq _02242292
_02242270:
	b _022422FC
_02242272:
	adds r1, r1, #1
	cmp r0, r1
	b _022422FC
_02242278:
	ldr r0, _02242304 @ =0x000005DC
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _02242308 @ =0x00000624
	bl FUN_02005748
	adds r0, r4, #0
	bl ov106_02243200
	movs r0, #6
	strb r0, [r4, #8]
	b _022422FC
_02242292:
	adds r0, r4, #0
	bl ov106_02243200
	movs r0, #7
	strb r0, [r4, #8]
	b _022422FC
_0224229E:
	movs r1, #6
	movs r2, #1
	bl ov106_022430B4
	cmp r0, #1
	bne _022422FC
	movs r0, #1
	pop {r4, pc}
_022422AE:
	movs r1, #6
	movs r2, #2
	bl ov106_022430B4
	cmp r0, #1
	bne _022422FC
	adds r0, r4, #0
	bl ov106_022432AC
	movs r0, #0xa5
	movs r1, #0xff
	lsls r0, r0, #2
	strb r1, [r4, r0]
	strb r1, [r4, #0x18]
	movs r0, #1
	strb r0, [r4, #0x19]
	pop {r4, pc}
_022422D0:
	bl FUN_020365F4
	movs r0, #0x68
	bl FUN_020364F0
	movs r0, #9
	strb r0, [r4, #8]
	b _022422FC
_022422E0:
	movs r0, #0x68
	bl FUN_02036540
	cmp r0, #1
	bne _022422FC
	bl FUN_020365F4
	movs r0, #0x62
	bl FUN_020363E8
	movs r0, #0xff
	strb r0, [r4, #0x18]
	movs r0, #1
	pop {r4, pc}
_022422FC:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02242300: .4byte 0x00000295
_02242304: .4byte 0x000005DC
_02242308: .4byte 0x00000624
	thumb_func_end ov106_02242108

	thumb_func_start ov106_0224230C
ov106_0224230C: @ 0x0224230C
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _0224231C
	cmp r0, #1
	beq _0224232E
	b _02242340
_0224231C:
	bl FUN_020365F4
	movs r0, #0x68
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242340
_0224232E:
	movs r0, #0x68
	bl FUN_02036540
	cmp r0, #1
	bne _02242340
	bl FUN_020365F4
	movs r0, #1
	pop {r4, pc}
_02242340:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov106_0224230C

	thumb_func_start ov106_02242344
ov106_02242344: @ 0x02242344
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _0224235A
	cmp r1, #1
	beq _02242366
	cmp r1, #2
	beq _02242396
	b _022423A4
_0224235A:
	movs r0, #0xa
	strb r0, [r4, #0x1b]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022423A4
_02242366:
	ldrb r1, [r4, #0x1b]
	subs r1, r1, #1
	strb r1, [r4, #0x1b]
	ldrb r1, [r4, #0x1b]
	cmp r1, #0
	bne _022423A4
	bl ov106_022432D4
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022423A4
_02242396:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _022423A4
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_022423A4:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov106_02242344

	thumb_func_start ov106_022423AC
ov106_022423AC: @ 0x022423AC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _022423BC
	cmp r1, #1
	beq _022423DE
	b _022423E2
_022423BC:
	bl ov106_02243200
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov106_02243664
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	bl FUN_0200E084
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _022423E2
_022423DE:
	movs r0, #1
	pop {r4, pc}
_022423E2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov106_022423AC

	thumb_func_start ov106_022423E8
ov106_022423E8: @ 0x022423E8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _022423FA
	bl ov106_02243650
_022423FA:
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _02242408
	bl ov106_02243650
_02242408:
	bl FUN_02039794
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #2
	bl FUN_02002FA0
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0
	bl FUN_02002FA0
	adds r0, r6, #0
	adds r0, #0xac
	ldr r0, [r0]
	bl FUN_02002F54
	adds r0, r6, #0
	movs r1, #0
	adds r0, #0xac
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0xc0
	bl ov106_02243570
	ldr r0, [r6, #0x20]
	bl FUN_0200B190
	ldr r0, [r6, #0x24]
	bl FUN_0200B3F0
	ldr r0, [r6, #0x28]
	bl FUN_020237BC
	ldr r0, [r6, #0x2c]
	bl FUN_020237BC
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	bl FUN_0200C560
	movs r4, #0
	adds r5, r6, #0
_02242464:
	ldr r0, [r5, #0x30]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _02242464
	adds r0, r6, #0
	adds r0, #0x4c
	bl ov106_02243710
	ldr r0, [r6, #0x48]
	bl ov106_022426A4
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02006CA8
	pop {r4, r5, r6, pc}
	thumb_func_end ov106_022423E8

	thumb_func_start ov106_0224248C
ov106_0224248C: @ 0x0224248C
	push {r4, lr}
	adds r4, r0, #0
	bl ov106_022424C8
	movs r0, #0x62
	bl FUN_02018340
	str r0, [r4, #0x48]
	adds r0, r4, #0
	bl ov106_02242500
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	cmp r0, #0xfe
	bne _022424C6
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov106_022436B0
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0xa8
	bl ov106_02243670
_022424C6:
	pop {r4, pc}
	thumb_func_end ov106_0224248C

	thumb_func_start ov106_022424C8
ov106_022424C8: @ 0x022424C8
	push {r3, lr}
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020177BC
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _022424F8 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _022424FC @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_022424F8: .4byte 0xFFFFE0FF
_022424FC: .4byte 0x04001000
	thumb_func_end ov106_022424C8

	thumb_func_start ov106_02242500
ov106_02242500: @ 0x02242500
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x96
	movs r1, #0x62
	bl FUN_02006C24
	movs r1, #0x8e
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov106_0224262C
	adds r0, r5, #0
	bl ov106_02242688
	ldr r2, _02242624 @ =0x00000225
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x62
	bl FUN_0200B144
	str r0, [r5, #0x20]
	movs r0, #0x62
	bl FUN_0200B358
	str r0, [r5, #0x24]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x62
	bl FUN_02023790
	str r0, [r5, #0x28]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x62
	bl FUN_02023790
	str r0, [r5, #0x2c]
	movs r6, #0
	adds r4, r5, #0
	movs r7, #0x20
_02242554:
	adds r0, r7, #0
	movs r1, #0x62
	bl FUN_02023790
	str r0, [r4, #0x30]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #2
	blt _02242554
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x62
	bl FUN_02002E7C
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x62
	bl FUN_02002E98
	movs r0, #0xf
	movs r1, #0xe
	movs r2, #0
	movs r3, #0x62
	bl FUN_0200C440
	adds r1, r5, #0
	adds r1, #0xb0
	str r0, [r1]
	adds r1, r5, #0
	ldr r0, [r5, #0x48]
	adds r1, #0x4c
	bl ov106_022436E0
	ldr r1, [r5, #0x48]
	adds r0, r5, #0
	bl ov106_02242F4C
	bl FUN_0201FFD0
	adds r0, r5, #0
	bl ov106_02242F24
	adds r4, r0, #0
	adds r0, r5, #0
	bl ov106_02242F3C
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r0, #0xc0
	movs r2, #1
	adds r3, r4, #0
	str r1, [sp, #4]
	bl ov106_022435FC
	movs r1, #0x87
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #0xa0
	movs r1, #1
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r0, #0xc0
	adds r2, r1, #0
	bl ov106_022435FC
	movs r1, #0x22
	lsls r1, r1, #4
	str r0, [r5, r1]
	adds r1, #0xc
	ldr r0, [r5, r1]
	movs r1, #0
	bl FUN_0207A0FC
	adds r1, r0, #0
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov106_022436CC
	bl FUN_02035E38
	cmp r0, #0
	beq _02242616
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	bl FUN_02039734
_02242616:
	ldr r0, _02242628 @ =ov106_022426E0
	adds r1, r5, #0
	bl FUN_02017798
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02242624: .4byte 0x00000225
_02242628: .4byte ov106_022426E0
	thumb_func_end ov106_02242500

	thumb_func_start ov106_0224262C
ov106_0224262C: @ 0x0224262C
	push {r4, lr}
	adds r4, r0, #0
	bl ov106_0224271C
	ldr r0, [r4, #0x48]
	bl ov106_0224273C
	movs r0, #0x62
	bl FUN_02002F38
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	movs r1, #2
	ldr r0, [r0]
	lsls r2, r1, #8
	movs r3, #0x62
	bl FUN_02002F70
	adds r0, r4, #0
	adds r0, #0xac
	movs r2, #2
	ldr r0, [r0]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x62
	bl FUN_02002F70
	adds r0, r4, #0
	movs r1, #3
	bl ov106_0224283C
	bl ov106_02242884
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #4
	bl ov106_022428B8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov106_0224262C

	thumb_func_start ov106_02242688
ov106_02242688: @ 0x02242688
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x8b
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0207A0FC
	adds r4, #0xc0
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov106_02243310
	pop {r4, pc}
	thumb_func_end ov106_02242688

	thumb_func_start ov106_022426A4
ov106_022426A4: @ 0x022426A4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF74
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov106_022426A4

	thumb_func_start ov106_022426E0
ov106_022426E0: @ 0x022426E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _02242712
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _022426F8
	bl FUN_02003694
_022426F8:
	ldr r0, [r4, #0x48]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _02242714 @ =0x027E0000
	ldr r1, _02242718 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
_02242712:
	pop {r4, pc}
	.align 2, 0
_02242714: .4byte 0x027E0000
_02242718: .4byte 0x00003FF8
	thumb_func_end ov106_022426E0

	thumb_func_start ov106_0224271C
ov106_0224271C: @ 0x0224271C
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02242738 @ =0x02243824
	add r3, sp, #0
	movs r2, #5
_02242726:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _02242726
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_02242738: .4byte 0x02243824
	thumb_func_end ov106_0224271C

	thumb_func_start ov106_0224273C
ov106_0224273C: @ 0x0224273C
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02242824 @ =0x022437A4
	add r3, sp, #0x70
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _02242828 @ =0x022437D0
	add r3, sp, #0x54
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
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x62
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _0224282C @ =0x022437EC
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
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x62
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _02242830 @ =0x02243808
	add r3, sp, #0x1c
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
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r5, _02242834 @ =0x022437B4
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
	movs r1, #4
	movs r3, #0
	bl FUN_020183C4
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019EBC
	ldr r1, _02242838 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	movs r0, #1
	strh r2, [r1]
	adds r1, r0, #0
	bl FUN_0201FF0C
	add sp, #0x80
	pop {r3, r4, r5, pc}
	.align 2, 0
_02242824: .4byte 0x022437A4
_02242828: .4byte 0x022437D0
_0224282C: .4byte 0x022437EC
_02242830: .4byte 0x02243808
_02242834: .4byte 0x022437B4
_02242838: .4byte 0x04000008
	thumb_func_end ov106_0224273C

	thumb_func_start ov106_0224283C
ov106_0224283C: @ 0x0224283C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x62
	str r0, [sp, #0xc]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	movs r1, #0x17
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x62
	str r0, [sp, #0xc]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	movs r1, #0x18
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_0224283C

	thumb_func_start ov106_02242884
ov106_02242884: @ 0x02242884
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0x96
	movs r1, #0x86
	add r2, sp, #0
	movs r3, #0x62
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0xc0
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0xc0
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov106_02242884

	thumb_func_start ov106_022428B8
ov106_022428B8: @ 0x022428B8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x62
	str r0, [sp, #0xc]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	movs r1, #0x7d
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x62
	str r0, [sp, #0xc]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x48]
	movs r1, #0x7e
	adds r3, r4, #0
	bl FUN_0200710C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x62
	str r0, [sp, #4]
	movs r0, #0x8e
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xab
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov106_022428B8

	thumb_func_start ov106_02242918
ov106_02242918: @ 0x02242918
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	adds r5, r0, #0
	adds r0, r4, #0
	adds r6, r2, #0
	adds r7, r3, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	adds r1, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl FUN_0200C388
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r3, r7, #0
	str r0, [sp, #4]
	add r0, sp, #0x38
	ldrb r1, [r0]
	ldrb r0, [r2, #0x18]
	ldrb r2, [r2, #0x1c]
	lsls r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r0, r0, #8
	lsrs r2, r2, #0x10
	orrs r0, r2
	orrs r0, r1
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x3c
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	adds r0, r4, #0
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242918

	thumb_func_start ov106_02242978
ov106_02242978: @ 0x02242978
	push {r3, r4, r5, lr}
	sub sp, #0x18
	movs r3, #1
	adds r4, r1, #0
	str r3, [sp]
	movs r1, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0xf
	str r1, [sp, #0x10]
	adds r5, r0, #0
	adds r1, r5, #0
	str r2, [sp, #0x14]
	adds r1, #0x4c
	adds r2, r4, #0
	bl ov106_02242918
	adds r5, #0x4c
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0201A954
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov106_02242978

	thumb_func_start ov106_022429B0
ov106_022429B0: @ 0x022429B0
	push {r3, r4, r5, r6}
	movs r5, #0
	adds r6, r0, #0
	adds r3, r5, #0
_022429B8:
	adds r4, r6, #0
	adds r4, #0x9c
	str r3, [r4]
	adds r4, r6, #0
	adds r4, #0xa0
	adds r5, r5, #1
	adds r6, #8
	str r3, [r4]
	cmp r5, #2
	blt _022429B8
	adds r5, r0, #0
	adds r4, r0, #0
	adds r5, #0x9c
	adds r4, #0x8c
	str r5, [r4]
	adds r4, r0, #0
	adds r4, #0x90
	str r1, [r4]
	adds r1, r0, #0
	adds r1, #0x94
	strb r3, [r1]
	adds r1, r0, #0
	movs r3, #1
	adds r1, #0x95
	strb r3, [r1]
	adds r1, r0, #0
	adds r1, #0x96
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x97
	ldrb r2, [r1]
	movs r1, #0xf
	bics r2, r1
	adds r1, r0, #0
	adds r1, #0x97
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x97
	ldrb r2, [r1]
	movs r1, #0x30
	bics r2, r1
	adds r1, r0, #0
	adds r1, #0x97
	strb r2, [r1]
	adds r1, r0, #0
	adds r1, #0x97
	ldrb r2, [r1]
	movs r1, #0xc0
	adds r0, #0x97
	bics r2, r1
	movs r1, #0x40
	orrs r1, r2
	strb r1, [r0]
	pop {r3, r4, r5, r6}
	bx lr
	.align 2, 0
	thumb_func_end ov106_022429B0

	thumb_func_start ov106_02242A28
ov106_02242A28: @ 0x02242A28
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r7, r1, #0
	adds r4, r5, #0
	str r2, [sp]
	adds r4, #0x30
	lsls r6, r7, #2
	ldr r0, [r5, #0x20]
	ldr r2, [r4, r6]
	adds r1, r3, #0
	bl FUN_0200B1B8
	lsls r2, r7, #3
	adds r0, r5, r2
	ldr r1, [r4, r6]
	adds r0, #0x9c
	str r1, [r0]
	adds r1, r5, r2
	ldr r0, [sp]
	adds r1, #0xa0
	str r0, [r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242A28

	thumb_func_start ov106_02242A54
ov106_02242A54: @ 0x02242A54
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #0xf]
	adds r1, r4, #0
	ldr r0, [r4, #0x48]
	adds r1, #0x5c
	bl ov106_0224372C
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x5c
	movs r2, #2
	bl ov106_022429B0
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x1b
	bl ov106_02242A28
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x1c
	bl ov106_02242A28
	movs r0, #0x62
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0
	adds r0, #0x8c
	movs r1, #8
	adds r3, r2, #0
	bl FUN_02001B7C
	adds r4, #0x98
	str r0, [r4]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov106_02242A54

	thumb_func_start ov106_02242AAC
ov106_02242AAC: @ 0x02242AAC
	push {r3, lr}
	sub sp, #8
	movs r3, #0
	str r3, [sp]
	movs r3, #1
	str r3, [sp, #4]
	ldr r0, [r0, #0x24]
	movs r3, #2
	bl FUN_0200B60C
	add sp, #8
	pop {r3, pc}
	thumb_func_end ov106_02242AAC

	thumb_func_start ov106_02242AC4
ov106_02242AC4: @ 0x02242AC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	adds r5, r1, #0
	movs r1, #0x8b
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	movs r1, #0
	adds r7, r2, #0
	adds r4, r3, #0
	bl FUN_0207A0FC
	movs r1, #0xb3
	add r2, sp, #0x10
	bl FUN_02074470
	add r1, sp, #0x30
	ldrb r1, [r1, #0x18]
	adds r0, r5, #0
	bl FUN_0201ADA4
	movs r0, #0xb
	movs r1, #0x62
	bl FUN_02023790
	add r1, sp, #0x10
	adds r6, r0, #0
	bl FUN_02023D28
	str r4, [sp]
	movs r4, #0
	str r4, [sp, #4]
	add r2, sp, #0x30
	ldrb r0, [r2, #0x10]
	ldrb r3, [r2, #0x14]
	ldrb r1, [r2, #0x18]
	lsls r0, r0, #0x18
	lsls r3, r3, #0x18
	lsrs r0, r0, #8
	lsrs r3, r3, #0x10
	orrs r0, r3
	orrs r0, r1
	str r0, [sp, #8]
	str r4, [sp, #0xc]
	ldrb r1, [r2, #0x1c]
	adds r0, r5, #0
	adds r2, r6, #0
	adds r3, r7, #0
	bl FUN_0201D78C
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	bl FUN_0201A954
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov106_02242AC4

	thumb_func_start ov106_02242B38
ov106_02242B38: @ 0x02242B38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	str r1, [sp, #0x10]
	adds r0, r1, #0
	add r1, sp, #0x30
	ldrb r1, [r1, #0x10]
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0201ADA4
	movs r2, #0x27
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #4
	movs r3, #0x62
	bl FUN_0200B144
	str r0, [sp, #0x24]
	movs r0, #0xb
	movs r1, #0x62
	bl FUN_02023790
	adds r5, r0, #0
	movs r0, #0
	lsls r2, r4, #0x18
	lsrs r3, r2, #8
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x10
	str r0, [sp, #0x28]
	str r0, [sp, #0x20]
	movs r0, #0x10
	add r1, sp, #0x30
	str r0, [sp, #0x14]
	ldrb r0, [r1, #0x10]
	orrs r2, r3
	orrs r0, r2
	str r0, [sp, #0x1c]
	ldrb r0, [r1, #0x14]
	str r0, [sp, #0x18]
_02242B86:
	movs r4, #0
	movs r6, #1
_02242B8A:
	ldr r0, [sp, #0x20]
	adds r7, r4, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0223B5A4
	cmp r0, #0xfe
	beq _02242BCE
	adds r0, r5, #0
	bl FUN_020237E8
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0223B5A4
	adds r1, r0, #0
	ldr r0, [sp, #0x24]
	adds r2, r5, #0
	bl FUN_0200B1B8
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	adds r2, r5, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	adds r3, r6, #0
	bl FUN_0201D78C
_02242BCE:
	adds r4, r4, #1
	adds r6, #0x40
	cmp r4, #4
	blt _02242B8A
	ldr r0, [sp, #0x20]
	adds r0, r0, #4
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x14]
	adds r0, #0x24
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x28]
	adds r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #5
	blt _02242B86
	adds r0, r5, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x24]
	bl FUN_0200B190
	ldr r0, [sp, #0x10]
	bl FUN_0201A954
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov106_02242B38

	thumb_func_start ov106_02242C04
ov106_02242C04: @ 0x02242C04
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r1, #0
	str r4, [sp]
	str r3, [sp, #4]
	ldr r1, [sp, #0x18]
	adds r0, #0xb0
	str r1, [sp, #8]
	adds r1, r2, #0
	ldr r0, [r0]
	movs r2, #2
	movs r3, #0
	bl FUN_0200C5BC
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov106_02242C04

	thumb_func_start ov106_02242C2C
ov106_02242C2C: @ 0x02242C2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0xc]
	movs r0, #4
	str r1, [sp, #4]
	str r0, [sp, #8]
_02242C3E:
	movs r4, #0
	movs r5, #0x12
_02242C42:
	ldr r0, [sp, #0xc]
	adds r7, r4, r0
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0223B5A4
	cmp r0, #0xfe
	beq _02242C82
	cmp r0, #9
	beq _02242C82
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	bl ov106_02243090
	movs r1, #0x23
	lsls r1, r1, #4
	ldr r1, [r6, r1]
	bl FUN_020301E0
	adds r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa
	bls _02242C74
	movs r2, #0xa
_02242C74:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	str r0, [sp]
	adds r0, r6, #0
	adds r3, r5, #0
	bl ov106_02242C04
_02242C82:
	adds r4, r4, #1
	adds r5, #0x40
	cmp r4, #4
	blt _02242C42
	ldr r0, [sp, #0xc]
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r0, #0x24
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	adds r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _02242C3E
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242C2C

	thumb_func_start ov106_02242CA4
ov106_02242CA4: @ 0x02242CA4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x62
	movs r1, #0x30
	bl FUN_02018144
	adds r1, r4, #0
	adds r1, #0xbc
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	movs r2, #0x30
	blx FUN_020D5124
	movs r0, #0x8b
	adds r1, r4, #0
	lsls r0, r0, #2
	adds r1, #0xbc
	ldr r2, [r4, r0]
	ldr r1, [r1]
	str r2, [r1]
	adds r2, r4, #0
	adds r2, #0xbc
	ldr r2, [r2]
	movs r1, #1
	strb r1, [r2, #0x11]
	adds r2, r4, #0
	adds r2, #0xb4
	ldr r3, [r2]
	adds r2, r4, #0
	adds r2, #0xbc
	ldr r2, [r2]
	str r3, [r2, #4]
	adds r2, r4, #0
	adds r2, #0xbc
	ldr r2, [r2]
	strb r1, [r2, #0x12]
	ldr r0, [r4, r0]
	bl FUN_0207A0F8
	adds r1, r4, #0
	adds r1, #0xbc
	ldr r1, [r1]
	strb r0, [r1, #0x13]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #0
	strb r1, [r0, #0x14]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	strh r1, [r0, #0x18]
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_0207A274
	adds r1, r4, #0
	adds r1, #0xbc
	ldr r1, [r1]
	str r0, [r1, #0x1c]
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_0208C324
	adds r1, r4, #0
	adds r1, #0xbc
	ldr r1, [r1]
	str r0, [r1, #0x2c]
	adds r0, r4, #0
	adds r0, #0xbc
	ldr r0, [r0]
	ldr r1, _02242D58 @ =0x02243798
	bl FUN_0208D720
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r0, [r0]
	bl FUN_02025E38
	adds r4, #0xbc
	adds r1, r0, #0
	ldr r0, [r4]
	bl FUN_0208E9C0
	pop {r4, pc}
	.align 2, 0
_02242D58: .4byte 0x02243798
	thumb_func_end ov106_02242CA4

	thumb_func_start ov106_02242D5C
ov106_02242D5C: @ 0x02242D5C
	movs r3, #0
	strb r3, [r0, #8]
	str r2, [r1]
	bx lr
	thumb_func_end ov106_02242D5C

	thumb_func_start ov106_02242D64
ov106_02242D64: @ 0x02242D64
	push {r3, r4, r5, lr}
	ldr r1, _02242F1C @ =0x021BF67C
	adds r4, r0, #0
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	movs r0, #0
	tst r1, r2
	beq _02242DAE
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	cmp r0, #0xfe
	beq _02242D82
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_02242D82:
	ldrb r0, [r4, #0xd]
	movs r1, #0x1e
	lsrs r3, r0, #0x1f
	lsls r2, r0, #0x1e
	subs r2, r2, r3
	rors r2, r1
	adds r1, r3, r2
	bne _02242D98
	adds r0, r0, #3
	strb r0, [r4, #0xd]
	b _02242DAC
_02242D98:
	bl FUN_0223B5A4
	cmp r0, #0xfe
	bne _02242DA6
	movs r0, #0x10
	strb r0, [r4, #0xd]
	b _02242DAC
_02242DA6:
	ldrb r0, [r4, #0xd]
	subs r0, r0, #1
	strb r0, [r4, #0xd]
_02242DAC:
	movs r0, #1
_02242DAE:
	ldr r1, _02242F1C @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x10
	tst r1, r2
	beq _02242DF4
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	cmp r0, #0xfe
	beq _02242DC6
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_02242DC6:
	ldrb r0, [r4, #0xd]
	movs r1, #0x1e
	lsrs r3, r0, #0x1f
	lsls r2, r0, #0x1e
	subs r2, r2, r3
	rors r2, r1
	adds r1, r3, r2
	cmp r1, #3
	bne _02242DDE
	subs r0, r0, #3
	strb r0, [r4, #0xd]
	b _02242DF2
_02242DDE:
	bl FUN_0223B5A4
	cmp r0, #0xfe
	bne _02242DEC
	movs r0, #0x13
	strb r0, [r4, #0xd]
	b _02242DF2
_02242DEC:
	ldrb r0, [r4, #0xd]
	adds r0, r0, #1
	strb r0, [r4, #0xd]
_02242DF2:
	movs r0, #1
_02242DF4:
	ldr r1, _02242F1C @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x40
	tst r1, r2
	beq _02242E5A
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	cmp r0, #0xfe
	beq _02242E0C
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_02242E0C:
	ldrb r0, [r4, #0xd]
	cmp r0, #4
	bhs _02242E18
	adds r0, #0x10
	strb r0, [r4, #0xd]
	b _02242E58
_02242E18:
	bl FUN_0223B5A4
	cmp r0, #0xfe
	bne _02242E52
	ldrb r0, [r4, #0xc]
	cmp r0, #0x10
	bne _02242E2C
	movs r0, #0xd
	strb r0, [r4, #0xd]
	b _02242E58
_02242E2C:
	cmp r0, #0x13
	bne _02242E36
	movs r0, #0xe
	strb r0, [r4, #0xd]
	b _02242E58
_02242E36:
	cmp r0, #0xd
	beq _02242E3E
	cmp r0, #1
	bne _02242E44
_02242E3E:
	movs r0, #0xd
	strb r0, [r4, #0xd]
	b _02242E58
_02242E44:
	cmp r0, #0xe
	beq _02242E4C
	cmp r0, #2
	bne _02242E58
_02242E4C:
	movs r0, #0xe
	strb r0, [r4, #0xd]
	b _02242E58
_02242E52:
	ldrb r0, [r4, #0xd]
	subs r0, r0, #4
	strb r0, [r4, #0xd]
_02242E58:
	movs r0, #1
_02242E5A:
	ldr r1, _02242F1C @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x80
	tst r1, r2
	beq _02242EC0
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	cmp r0, #0xfe
	beq _02242E72
	ldrb r0, [r4, #0xd]
	strb r0, [r4, #0xc]
_02242E72:
	ldrb r0, [r4, #0xd]
	cmp r0, #0x10
	blo _02242E7E
	subs r0, #0x10
	strb r0, [r4, #0xd]
	b _02242EBE
_02242E7E:
	bl FUN_0223B5A4
	cmp r0, #0xfe
	bne _02242EB8
	ldrb r0, [r4, #0xc]
	cmp r0, #0x10
	bne _02242E92
	movs r0, #1
	strb r0, [r4, #0xd]
	b _02242EBE
_02242E92:
	cmp r0, #0x13
	bne _02242E9C
	movs r0, #2
	strb r0, [r4, #0xd]
	b _02242EBE
_02242E9C:
	cmp r0, #0xd
	beq _02242EA4
	cmp r0, #1
	bne _02242EAA
_02242EA4:
	movs r0, #1
	strb r0, [r4, #0xd]
	b _02242EBE
_02242EAA:
	cmp r0, #0xe
	beq _02242EB2
	cmp r0, #2
	bne _02242EBE
_02242EB2:
	movs r0, #2
	strb r0, [r4, #0xd]
	b _02242EBE
_02242EB8:
	ldrb r0, [r4, #0xd]
	adds r0, r0, #4
	strb r0, [r4, #0xd]
_02242EBE:
	movs r0, #1
_02242EC0:
	cmp r0, #1
	bne _02242EE6
	ldr r0, _02242F20 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov106_02242F24
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov106_02242F3C
	adds r2, r0, #0
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r5, #0
	bl ov106_02243670
_02242EE6:
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	cmp r0, #0xfe
	bne _02242F0C
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl ov106_022436B0
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0xa8
	bl ov106_02243670
	pop {r3, r4, r5, pc}
_02242F0C:
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov106_022436B0
	pop {r3, r4, r5, pc}
	nop
_02242F1C: .4byte 0x021BF67C
_02242F20: .4byte 0x000005DC
	thumb_func_end ov106_02242D64

	thumb_func_start ov106_02242F24
ov106_02242F24: @ 0x02242F24
	ldrb r0, [r0, #0xd]
	lsrs r2, r0, #0x1f
	lsls r1, r0, #0x1e
	subs r1, r1, r2
	movs r0, #0x1e
	rors r1, r0
	adds r0, r2, r1
	lsls r0, r0, #6
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	thumb_func_end ov106_02242F24

	thumb_func_start ov106_02242F3C
ov106_02242F3C: @ 0x02242F3C
	ldrb r0, [r0, #0xd]
	lsrs r1, r0, #2
	movs r0, #0x24
	muls r0, r1, r0
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bx lr
	thumb_func_end ov106_02242F3C

	thumb_func_start ov106_02242F4C
ov106_02242F4C: @ 0x02242F4C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	bl ov106_022430B0
	cmp r0, #1
	bne _02242F72
	movs r4, #0
	movs r6, #3
_02242F5E:
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	adds r2, r6, #0
	bl ov106_02242FAC
	adds r4, r4, #1
	cmp r4, #0x11
	blt _02242F5E
	b _02242FA2
_02242F72:
	movs r7, #0x23
	movs r4, #0
	lsls r7, r7, #4
_02242F78:
	lsls r0, r4, #0x18
	ldr r1, [r6, r7]
	lsrs r0, r0, #0x18
	bl FUN_020301E0
	cmp r0, #0xa
	blo _02242F92
	lsls r1, r4, #0x18
	adds r0, r5, #0
	lsrs r1, r1, #0x18
	movs r2, #3
	bl ov106_02242FAC
_02242F92:
	adds r4, r4, #1
	cmp r4, #0x11
	blt _02242F78
	adds r0, r5, #0
	movs r1, #0x13
	movs r2, #3
	bl ov106_02242FAC
_02242FA2:
	adds r0, r5, #0
	movs r1, #3
	bl FUN_0201C3C0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242F4C

	thumb_func_start ov106_02242FAC
ov106_02242FAC: @ 0x02242FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	bne _02242FBC
	movs r1, #0
	b _02242FCE
_02242FBC:
	cmp r5, #1
	bne _02242FC4
	movs r1, #5
	b _02242FCE
_02242FC4:
	cmp r5, #2
	bne _02242FCC
	movs r1, #4
	b _02242FCE
_02242FCC:
	movs r1, #3
_02242FCE:
	lsrs r3, r4, #0x1f
	lsls r2, r4, #0x1e
	subs r2, r2, r3
	movs r0, #0x1e
	rors r2, r0
	adds r0, r3, r2
	lsls r0, r0, #3
	str r0, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r4, #0x1d
	mov ip, r0
	subs r2, r2, r3
	movs r0, #0x1d
	rors r2, r0
	adds r6, r3, r2
	cmp r6, #4
	bge _02242FF6
	movs r2, #5
	b _02242FF8
_02242FF6:
	movs r2, #4
_02242FF8:
	cmp r4, #4
	bhs _02243000
	movs r3, #0
	b _0224301A
_02243000:
	cmp r4, #8
	bhs _02243008
	movs r3, #5
	b _0224301A
_02243008:
	cmp r4, #0xc
	bhs _02243010
	movs r3, #9
	b _0224301A
_02243010:
	cmp r4, #0x10
	bhs _02243018
	movs r3, #0xe
	b _0224301A
_02243018:
	movs r3, #0x12
_0224301A:
	movs r0, #8
	str r0, [sp]
	str r2, [sp, #4]
	str r1, [sp, #8]
	adds r0, r7, #0
	movs r1, #3
	mov r2, ip
	bl FUN_02019E2C
	cmp r5, #0
	bne _0224308C
	ldr r0, [sp, #0xc]
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r6, #4
	bge _0224303E
	movs r1, #2
	b _02243040
_0224303E:
	movs r1, #3
_02243040:
	cmp r4, #4
	bhs _02243048
	movs r3, #2
	b _02243062
_02243048:
	cmp r4, #8
	bhs _02243050
	movs r3, #6
	b _02243062
_02243050:
	cmp r4, #0xc
	bhs _02243058
	movs r3, #0xb
	b _02243062
_02243058:
	cmp r4, #0x10
	bhs _02243060
	movs r3, #0xf
	b _02243062
_02243060:
	movs r3, #0x14
_02243062:
	cmp r4, #9
	bhs _0224307A
	movs r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r1, #3
	bl FUN_02019E2C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0224307A:
	movs r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	adds r0, r7, #0
	movs r1, #3
	bl FUN_02019E2C
_0224308C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_02242FAC

	thumb_func_start ov106_02243090
ov106_02243090: @ 0x02243090
	cmp r0, #0x11
	blo _02243096
	movs r0, #0x11
_02243096:
	bx lr
	thumb_func_end ov106_02243090

	thumb_func_start ov106_02243098
ov106_02243098: @ 0x02243098
	ldrb r1, [r0, #9]
	cmp r1, #0
	bne _022430AC
	ldrh r0, [r0, #0x1c]
	cmp r0, #0x32
	beq _022430A8
	cmp r0, #0xaa
	bne _022430AC
_022430A8:
	movs r0, #1
	bx lr
_022430AC:
	movs r0, #0
	bx lr
	thumb_func_end ov106_02243098

	thumb_func_start ov106_022430B0
ov106_022430B0: @ 0x022430B0
	ldrb r0, [r0, #0x1e]
	bx lr
	thumb_func_end ov106_022430B0

	thumb_func_start ov106_022430B4
ov106_022430B4: @ 0x022430B4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	adds r4, r1, #0
	adds r7, r2, #0
	bl FUN_0223B5B0
	cmp r0, #0
	bne _022430CA
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022430CA:
	cmp r4, #4
	beq _022430D8
	cmp r4, #5
	beq _022430E4
	cmp r4, #6
	beq _022430F2
	b _022430FE
_022430D8:
	adds r0, r5, #0
	adds r1, r4, #0
	movs r6, #0x27
	bl ov106_02243118
	b _022430FE
_022430E4:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r6, #0x28
	bl ov106_0224313C
	b _022430FE
_022430F2:
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r7, #0
	movs r6, #0x29
	bl ov106_022431D4
_022430FE:
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r6, #0
	adds r1, r5, r1
	movs r2, #0x2c
	bl FUN_020359DC
	cmp r0, #1
	bne _02243114
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02243114:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov106_022430B4

	thumb_func_start ov106_02243118
ov106_02243118: @ 0x02243118
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r4, r1, #0
	bl FUN_02025E38
	movs r0, #0x8f
	lsls r0, r0, #2
	strh r4, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov106_02243118

	thumb_func_start ov106_02243130
ov106_02243130: @ 0x02243130
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0203608C
	cmp r4, r0
	pop {r4, pc}
	thumb_func_end ov106_02243130

	thumb_func_start ov106_0224313C
ov106_0224313C: @ 0x0224313C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x8f
	lsls r0, r0, #2
	strh r1, [r5, r0]
	adds r4, r2, #0
	adds r0, r0, #2
	strh r4, [r5, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _0224315C
	ldrb r0, [r5, #0x18]
	cmp r0, #0xff
	bne _0224315C
	strb r4, [r5, #0x18]
_0224315C:
	ldrb r1, [r5, #0x18]
	movs r0, #9
	lsls r0, r0, #6
	strh r1, [r5, r0]
	subs r0, #0x14
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_0207A0FC
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	ldr r1, _0224317C @ =0x00000242
	strh r0, [r5, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224317C: .4byte 0x00000242
	thumb_func_end ov106_0224313C

	thumb_func_start ov106_02243180
ov106_02243180: @ 0x02243180
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	ldrb r0, [r4, #0x16]
	adds r5, r2, #0
	adds r0, r0, #1
	strb r0, [r4, #0x16]
	bl FUN_0203608C
	cmp r6, r0
	beq _022431D0
	ldrh r1, [r5, #2]
	movs r0, #0xa5
	lsls r0, r0, #2
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _022431C2
	ldrb r0, [r4, #0x18]
	cmp r0, #0xff
	beq _022431B6
	movs r0, #0xa5
	movs r1, #0
	lsls r0, r0, #2
	strb r1, [r4, r0]
	b _022431C6
_022431B6:
	movs r0, #0xa5
	lsls r0, r0, #2
	ldrb r0, [r4, r0]
	adds r0, #0x14
	strb r0, [r4, #0x18]
	b _022431C6
_022431C2:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x18]
_022431C6:
	movs r0, #0x8d
	lsls r0, r0, #2
	ldrh r1, [r5, #6]
	ldr r0, [r4, r0]
	strh r1, [r0]
_022431D0:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov106_02243180

	thumb_func_start ov106_022431D4
ov106_022431D4: @ 0x022431D4
	movs r3, #0x8f
	lsls r3, r3, #2
	strh r1, [r0, r3]
	adds r1, r3, #2
	strh r2, [r0, r1]
	bx lr
	thumb_func_end ov106_022431D4

	thumb_func_start ov106_022431E0
ov106_022431E0: @ 0x022431E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0203608C
	cmp r5, r0
	beq _022431FA
	ldrh r1, [r4, #2]
	cmp r1, #0
	beq _022431FA
	ldr r0, _022431FC @ =0x00000295
	strb r1, [r6, r0]
_022431FA:
	pop {r4, r5, r6, pc}
	.align 2, 0
_022431FC: .4byte 0x00000295
	thumb_func_end ov106_022431E0

	thumb_func_start ov106_02243200
ov106_02243200: @ 0x02243200
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0xf]
	cmp r0, #1
	bne _02243222
	movs r1, #0
	adds r0, r4, #0
	strb r1, [r4, #0xf]
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_02001BC4
	adds r4, #0x90
	ldr r0, [r4]
	movs r1, #0
	bl FUN_0200DC9C
_02243222:
	pop {r4, pc}
	thumb_func_end ov106_02243200

	thumb_func_start ov106_02243224
ov106_02243224: @ 0x02243224
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov106_02243664
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0x4c
	bl ov106_02243758
	ldrb r0, [r4, #0xd]
	bl FUN_0223B5A4
	adds r2, r0, #0
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl FUN_0200B7EC
	ldrb r0, [r4, #0xd]
	bl ov106_02243090
	movs r1, #0x23
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_020301E0
	adds r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xa
	bls _02243274
	movs r2, #0xa
_02243274:
	adds r0, r4, #0
	movs r1, #1
	bl ov106_02242AAC
	adds r0, r4, #0
	bl ov106_022430B0
	cmp r0, #1
	bne _0224328A
	movs r1, #0x1f
	b _0224328C
_0224328A:
	movs r1, #0x18
_0224328C:
	adds r0, r4, #0
	movs r2, #1
	bl ov106_02242978
	strb r0, [r4, #0xa]
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov106_022436B0
	adds r0, r4, #0
	bl ov106_02242A54
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov106_02243224

	thumb_func_start ov106_022432AC
ov106_022432AC: @ 0x022432AC
	push {r4, lr}
	adds r4, r0, #0
	bl ov106_022432D4
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, #0x48]
	movs r2, #0
	bl ov106_02242FAC
	ldr r0, [r4, #0x48]
	movs r1, #3
	bl FUN_0201C3C0
	movs r0, #0x87
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov106_022436B0
	pop {r4, pc}
	thumb_func_end ov106_022432AC

	thumb_func_start ov106_022432D4
ov106_022432D4: @ 0x022432D4
	push {r4, lr}
	sub sp, #0x10
	adds r4, r0, #0
	movs r0, #0x22
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov106_02243664
	adds r0, r4, #0
	adds r0, #0x4c
	movs r1, #0
	bl FUN_0200E084
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r2, #0
	adds r0, r4, #0
	adds r4, #0x6c
	str r2, [sp, #8]
	adds r1, r4, #0
	adds r3, r2, #0
	str r2, [sp, #0xc]
	bl ov106_02242AC4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov106_022432D4

	thumb_func_start ov106_02243310
ov106_02243310: @ 0x02243310
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	str r1, [sp, #0x14]
	bl ov106_022435C8
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x62
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #2
	adds r1, r5, #4
	movs r2, #0x62
	bl FUN_020095C4
	ldr r4, _022434B8 @ =0x0224384C
	str r0, [r5]
	movs r7, #0
	adds r6, r5, #0
_0224334A:
	ldrb r0, [r4]
	adds r1, r7, #0
	movs r2, #0x62
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r7, r7, #1
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r7, #4
	blt _0224334A
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	adds r0, #0xca
	ldr r0, [r5, r0]
	movs r1, #0x97
	movs r2, #0xc
	bl FUN_0200985C
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x62
	str r0, [sp, #0xc]
	adds r0, #0xce
	ldr r0, [r5, r0]
	movs r1, #0x97
	movs r2, #0x26
	bl FUN_020098B8
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	adds r0, #0xd2
	ldr r0, [r5, r0]
	movs r1, #0x97
	movs r2, #0xe
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	adds r0, #0xd6
	ldr r0, [r5, r0]
	movs r1, #0x97
	movs r2, #0xd
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x13
	movs r1, #0x62
	bl FUN_02006C24
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	bl FUN_02079D80
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	adds r0, #0xca
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_02079FD0
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x62
	str r0, [sp, #0xc]
	adds r0, #0xce
	ldr r0, [r5, r0]
	movs r1, #0x13
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r5, r1]
	bl FUN_02079FD8
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	adds r0, #0xd2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_02079FE4
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x62
	str r0, [sp, #8]
	adds r0, #0xd6
	ldr r0, [r5, r0]
	ldr r1, [sp, #0x18]
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x56
	lsls r1, r1, #2
	adds r7, r1, #0
	adds r6, r1, #0
	str r0, [r5, r1]
	movs r4, #0
	subs r7, #0x1c
	subs r6, #0x18
_02243488:
	ldr r0, [r5, r7]
	bl FUN_0200A328
	ldr r0, [r5, r6]
	bl FUN_0200A5C8
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #2
	blt _02243488
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	ldr r0, [sp, #0x18]
	bl FUN_02006CA8
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022434B8: .4byte 0x0224384C
	thumb_func_end ov106_02243310

	thumb_func_start ov106_022434BC
ov106_022434BC: @ 0x022434BC
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r5, r0, #0
	movs r0, #0
	str r1, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	adds r4, r3, #0
	str r0, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #0x4b
	lsls r0, r0, #2
	adds r6, r2, #0
	ldr r2, [r5, r0]
	str r2, [sp, #0x14]
	adds r2, r0, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r0, #0
	adds r2, #8
	ldr r2, [r5, r2]
	adds r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r5, r0]
	adds r2, r1, #0
	str r0, [sp, #0x20]
	str r3, [sp, #0x24]
	str r3, [sp, #0x28]
	add r0, sp, #0x5c
	adds r3, r1, #0
	bl FUN_020093B4
	ldr r0, [r5]
	movs r1, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x5c
	str r0, [sp, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	str r1, [sp, #0x34]
	str r1, [sp, #0x38]
	str r1, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r1, [r0, #0x20]
	str r4, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x10]
	cmp r0, #0
	bne _02243530
	movs r0, #1
	str r0, [sp, #0x54]
	b _02243534
_02243530:
	movs r0, #2
	str r0, [sp, #0x54]
_02243534:
	movs r0, #0x62
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x10]
	cmp r0, #1
	bne _0224354A
	movs r0, #3
	ldr r1, [sp, #0x38]
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x38]
_0224354A:
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #1
	adds r4, r0, #0
	bl FUN_02021CC8
	movs r1, #1
	adds r0, r4, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	adds r0, r4, #0
	adds r1, r6, #0
	bl FUN_02021D6C
	adds r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	thumb_func_end ov106_022434BC

	thumb_func_start ov106_02243570
ov106_02243570: @ 0x02243570
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #5
	adds r5, r0, #0
	movs r4, #0
	lsls r7, r7, #6
_0224357A:
	lsls r0, r4, #4
	adds r6, r5, r0
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	ldr r0, [r6, r7]
	bl FUN_0200A6DC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	blo _0224357A
	movs r6, #0x4b
	movs r4, #0
	lsls r6, r6, #2
_0224359E:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_02009754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _0224359E
	ldr r0, [r5]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov106_02243570

	thumb_func_start ov106_022435C8
ov106_022435C8: @ 0x022435C8
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _022435F8 @ =0x02243850
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	movs r1, #0x10
	adds r0, r2, #0
	adds r2, r1, #0
	bl FUN_0201E88C
	movs r0, #4
	movs r1, #0x62
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_022435F8: .4byte 0x02243850
	thumb_func_end ov106_022435C8

	thumb_func_start ov106_022435FC
ov106_022435FC: @ 0x022435FC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	adds r7, r1, #0
	movs r0, #0x62
	movs r1, #0x14
	str r2, [sp, #4]
	adds r5, r3, #0
	bl FUN_02018144
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x14
	movs r0, #0
_02243618:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _02243618
	ldr r0, [sp, #0x2c]
	movs r3, #0
	str r0, [r4, #0xc]
	ldr r2, [sp, #4]
	str r3, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	bl ov106_022434BC
	str r0, [r4, #0x10]
	lsls r0, r5, #0xc
	str r0, [sp, #8]
	add r0, sp, #0x18
	ldrh r0, [r0, #0x10]
	add r1, sp, #8
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x10]
	bl FUN_02021C50
	adds r0, r4, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov106_022435FC

	thumb_func_start ov106_02243650
ov106_02243650: @ 0x02243650
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02021BD4
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov106_02243650

	thumb_func_start ov106_02243664
ov106_02243664: @ 0x02243664
	ldr r3, _0224366C @ =FUN_02021CAC
	ldr r0, [r0, #0x10]
	bx r3
	nop
_0224366C: .4byte FUN_02021CAC
	thumb_func_end ov106_02243664

	thumb_func_start ov106_02243670
ov106_02243670: @ 0x02243670
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r1, [r5, #0xc]
	adds r6, r2, #0
	cmp r1, #0
	beq _02243688
	ldrb r1, [r1]
	ldr r0, [r5, #0x10]
	bl FUN_02021DCC
_02243688:
	ldr r0, [r5, #0x10]
	bl FUN_02021D28
	adds r3, r0, #0
	add r2, sp, #0
	ldm r3!, {r0, r1}
	adds r7, r2, #0
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r1, r7, #0
	str r0, [r2]
	lsls r0, r4, #0xc
	str r0, [sp]
	lsls r0, r6, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov106_02243670

	thumb_func_start ov106_022436B0
ov106_022436B0: @ 0x022436B0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [r5, #0x10]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r5, #0x10]
	adds r1, r4, #0
	bl FUN_02021DCC
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov106_022436B0

	thumb_func_start ov106_022436CC
ov106_022436CC: @ 0x022436CC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_02079FC4
	adds r1, r0, #0
	ldr r0, [r4, #0x10]
	bl FUN_02021F24
	pop {r4, pc}
	thumb_func_end ov106_022436CC

	thumb_func_start ov106_022436E0
ov106_022436E0: @ 0x022436E0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r1, #0
	movs r4, #0
_022436E8:
	ldr r2, _0224370C @ =0x02243860
	lsls r6, r4, #4
	lsls r3, r4, #3
	adds r0, r7, #0
	adds r1, r5, r6
	adds r2, r2, r3
	bl FUN_0201A8D4
	adds r0, r5, r6
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _022436E8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224370C: .4byte 0x02243860
	thumb_func_end ov106_022436E0

	thumb_func_start ov106_02243710
ov106_02243710: @ 0x02243710
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_02243716:
	lsls r0, r4, #4
	adds r0, r5, r0
	bl FUN_0201A8FC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #4
	blo _02243716
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov106_02243710

	thumb_func_start ov106_0224372C
ov106_0224372C: @ 0x0224372C
	push {r4, lr}
	sub sp, #8
	adds r4, r1, #0
	movs r1, #0
	str r1, [sp]
	movs r2, #0x62
	str r2, [sp, #4]
	ldr r2, _02243754 @ =0x000003F7
	movs r3, #0xb
	bl FUN_0200DAA4
	ldr r2, _02243754 @ =0x000003F7
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DC48
	add sp, #8
	pop {r4, pc}
	nop
_02243754: .4byte 0x000003F7
	thumb_func_end ov106_0224372C

	thumb_func_start ov106_02243758
ov106_02243758: @ 0x02243758
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	bl FUN_0201C290
	adds r1, r0, #0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x62
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _02243794 @ =0x000003D9
	movs r3, #0xa
	bl FUN_0200DD0C
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r2, _02243794 @ =0x000003D9
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xa
	bl FUN_0200E060
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02243794: .4byte 0x000003D9
	thumb_func_end ov106_02243758
	@ 0x02243798
