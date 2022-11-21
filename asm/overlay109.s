	.include "macros/function.inc"


	.text

	thumb_func_start ov109_021D0D80
ov109_021D0D80: @ 0x021D0D80
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl FUN_02006840
	adds r4, r0, #0
	movs r0, #1
	adds r1, r0, #0
	bl FUN_020388F4
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	movs r0, #2
	bl FUN_02017DE0
	movs r2, #2
	movs r0, #3
	movs r1, #0x5f
	lsls r2, r2, #0x12
	bl FUN_02017FC8
	ldr r1, _021D0EA8 @ =0x00000DCC
	adds r0, r5, #0
	movs r2, #0x5f
	bl FUN_0200681C
	ldr r2, _021D0EA8 @ =0x00000DCC
	adds r6, r0, #0
	movs r1, #0
	blx FUN_020D5124
	adds r0, r6, #0
	str r6, [r4, #0x38]
	adds r0, #0xcc
	str r4, [r0]
	adds r0, r6, #0
	ldr r1, [r4, #0x34]
	adds r0, #0xd0
	str r1, [r0]
	adds r0, r6, #0
	adds r0, #0xcc
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bl FUN_0207A268
	str r0, [r6, #0x24]
	movs r0, #0x9a
	movs r1, #0x5f
	bl FUN_02006C24
	movs r1, #0x36
	lsls r1, r1, #6
	str r0, [r6, r1]
	movs r0, #8
	movs r1, #0x5f
	bl FUN_0201DBEC
	bl FUN_0201E3D8
	movs r0, #4
	bl FUN_0201E450
	adds r0, r6, #0
	bl ov109_021D1C28
	ldr r0, _021D0EAC @ =ov109_021D1C00
	adds r1, r6, #0
	bl FUN_02017798
	adds r0, r6, #0
	bl ov109_021D29CC
	adds r0, r6, #0
	bl ov109_021D2AF0
	movs r4, #0
	adds r5, r4, #0
	bl FUN_0203608C
	adds r1, r6, #0
	adds r1, #0xd4
	mov ip, r1
	adds r1, r6, #0
	adds r1, #0xcc
	ldr r7, [r1]
	movs r3, #1
	ldr r1, [r7, #0xc]
_021D0E36:
	adds r2, r3, #0
	lsls r2, r4
	tst r2, r1
	beq _021D0E44
	cmp r4, r0
	beq _021D0E4A
	adds r5, r5, #1
_021D0E44:
	adds r4, r4, #1
	cmp r4, #5
	blt _021D0E36
_021D0E4A:
	ldr r1, [r7, #8]
	movs r0, #0xa
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _021D0EB0 @ =0x021D5C44
	lsls r1, r5, #1
	adds r0, r0, r2
	ldrh r0, [r1, r0]
	lsls r1, r0, #0xc
	mov r0, ip
	str r1, [r0, #0x40]
	bl FUN_020041FC
	str r0, [r6, #0x1c]
	adds r0, r6, #0
	bl ov109_021D31A8
	adds r0, r6, #0
	bl ov109_021D32DC
	adds r0, r6, #0
	bl ov109_021D3414
	adds r0, r6, #0
	bl ov109_021D3584
	adds r0, r6, #0
	bl ov109_021D379C
	adds r0, r6, #0
	bl ov109_021D3884
	movs r0, #8
	str r0, [sp]
	movs r1, #1
	str r1, [sp, #4]
	movs r0, #0x5f
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D0EA8: .4byte 0x00000DCC
_021D0EAC: .4byte ov109_021D1C00
_021D0EB0: .4byte 0x021D5C44
	thumb_func_end ov109_021D0D80

	thumb_func_start ov109_021D0EB4
ov109_021D0EB4: @ 0x021D0EB4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	bl FUN_0201E530
	cmp r0, #1
	beq _021D0ECA
	bl FUN_02022974
_021D0ECA:
	adds r0, r4, #0
	bl ov109_021D31E0
	adds r0, r4, #0
	bl ov109_021D3318
	adds r0, r4, #0
	bl ov109_021D3450
	adds r0, r4, #0
	bl ov109_021D35BC
	adds r0, r4, #0
	bl ov109_021D37E0
	adds r0, r4, #0
	bl ov109_021D38BC
	adds r0, r4, #0
	bl ov109_021D2A58
	adds r0, r4, #0
	bl ov109_021D2AF8
	adds r0, r4, #0
	bl ov109_021D1C68
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_0201DC3C
	movs r0, #0x36
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	bl FUN_02006CA8
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0x5f
	bl FUN_0201807C
	movs r0, #2
	bl FUN_02017DF0
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D0EB4

	thumb_func_start ov109_021D0F2C
ov109_021D0F2C: @ 0x021D0F2C
	push {r3, r4, r5, lr}
	bl FUN_0200682C
	adds r5, r0, #0
	bl ov109_021D294C
	ldr r4, _021D0F6C @ =0x021D5CBC
_021D0F3A:
	ldr r1, [r5]
	adds r0, r5, #0
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021D0F3A
	cmp r0, #2
	bne _021D0F50
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D0F50:
	adds r0, r5, #0
	bl ov109_021D2A68
	adds r0, r5, #0
	bl ov109_021D2C38
	adds r0, r5, #0
	bl ov109_021D1C90
	adds r0, r5, #0
	bl ov109_021D0F70
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D0F6C: .4byte 0x021D5CBC
	thumb_func_end ov109_021D0F2C

	thumb_func_start ov109_021D0F70
ov109_021D0F70: @ 0x021D0F70
	movs r1, #0
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	bx lr
	thumb_func_end ov109_021D0F70

	thumb_func_start ov109_021D0F78
ov109_021D0F78: @ 0x021D0F78
	push {r4, lr}
	movs r1, #0
	adds r4, r0, #0
	bl ov109_021D2634
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D0F78

	thumb_func_start ov109_021D0F8C
ov109_021D0F8C: @ 0x021D0F8C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D0FAC
	bl FUN_0203608C
	cmp r0, #0
	bne _021D0FA4
	movs r0, #2
	b _021D0FA6
_021D0FA4:
	movs r0, #8
_021D0FA6:
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D0FAC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D0F8C

	thumb_func_start ov109_021D0FB0
ov109_021D0FB0: @ 0x021D0FB0
	push {r4, lr}
	adds r4, r0, #0
	bl ov109_021D3ACC
	cmp r0, #0
	beq _021D0FC4
	movs r0, #3
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D0FC4:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D0FB0

	thumb_func_start ov109_021D0FC8
ov109_021D0FC8: @ 0x021D0FC8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #1
	add r0, sp, #0
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #8
	add r2, sp, #0
	movs r3, #2
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D0FF2
	movs r0, #4
	str r0, [r4]
	add sp, #4
	movs r0, #1
	pop {r3, r4, pc}
_021D0FF2:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov109_021D0FC8

	thumb_func_start ov109_021D0FF8
ov109_021D0FF8: @ 0x021D0FF8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	bl ov109_021D3B04
	adds r5, r0, #1
	bl FUN_02035E18
	cmp r5, r0
	beq _021D100E
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D100E:
	movs r0, #5
	str r0, [r4]
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D0FF8

	thumb_func_start ov109_021D1018
ov109_021D1018: @ 0x021D1018
	push {r4, lr}
	adds r4, r0, #0
	bl ov109_021D3B04
	adds r0, r0, #1
	str r0, [r4, #0x30]
	adds r0, r4, #0
	adds r0, #0xd0
	adds r2, r4, #0
	ldr r0, [r0]
	movs r1, #0xd
	adds r2, #0x30
	movs r3, #4
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D1042
	movs r0, #0
	str r0, [r4, #0x14]
	movs r0, #6
	str r0, [r4]
_021D1042:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1018

	thumb_func_start ov109_021D1048
ov109_021D1048: @ 0x021D1048
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r3, [r4, #0x14]
	cmp r3, #0
	bne _021D107C
	movs r1, #0
	add r0, sp, #0
	strh r1, [r0, #2]
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0xc
	add r2, sp, #0
	movs r3, #4
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D1076
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
_021D1076:
	add sp, #4
	movs r0, #0
	pop {r3, r4, r5, r6, pc}
_021D107C:
	adds r2, r4, #0
	adds r2, #0xd0
	ldr r2, [r2]
	movs r0, #1
	adds r2, #0x42
	ldrh r2, [r2]
	adds r1, r0, #0
	adds r5, r0, #0
_021D108C:
	adds r6, r5, #0
	lsls r6, r0
	tst r6, r2
	beq _021D10BE
	cmp r1, r3
	blt _021D10BC
	add r1, sp, #0
	strh r0, [r1, #2]
	ldr r0, [r4, #0x14]
	add r2, sp, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0xc
	movs r3, #4
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D10C4
	ldr r0, [r4, #0x14]
	adds r0, r0, #1
	str r0, [r4, #0x14]
	b _021D10C4
_021D10BC:
	adds r1, r1, #1
_021D10BE:
	adds r0, r0, #1
	cmp r0, #5
	blt _021D108C
_021D10C4:
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x30]
	cmp r1, r0
	blt _021D10D0
	movs r0, #7
	str r0, [r4]
_021D10D0:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov109_021D1048

	thumb_func_start ov109_021D10D8
ov109_021D10D8: @ 0x021D10D8
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #8
	add r0, sp, #0
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	add r2, sp, #0
	movs r3, #2
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D10FA
	movs r0, #0xa
	str r0, [r4]
_021D10FA:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov109_021D10D8

	thumb_func_start ov109_021D1100
ov109_021D1100: @ 0x021D1100
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xd0
	movs r2, #0
	ldr r0, [r0]
	movs r1, #9
	adds r3, r2, #0
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D1120
	movs r0, #0
	str r0, [r4, #0x10]
	movs r1, #9
	str r1, [r4]
	pop {r4, pc}
_021D1120:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1100

	thumb_func_start ov109_021D1124
ov109_021D1124: @ 0x021D1124
	push {r4, lr}
	movs r1, #8
	adds r4, r0, #0
	bl ov109_021D3AB8
	cmp r0, #1
	bne _021D114A
	ldr r0, [r4, #0x30]
	cmp r0, #2
	bge _021D113C
	bl FUN_02022974
_021D113C:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	bne _021D1146
	bl FUN_02022974
_021D1146:
	movs r0, #0xa
	str r0, [r4]
_021D114A:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1124

	thumb_func_start ov109_021D1150
ov109_021D1150: @ 0x021D1150
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xca
	bl FUN_020364F0
	movs r0, #0xb
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1150

	thumb_func_start ov109_021D1164
ov109_021D1164: @ 0x021D1164
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xca
	bl FUN_02036540
	cmp r0, #0
	beq _021D1176
	movs r0, #0xc
	str r0, [r4]
_021D1176:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1164

	thumb_func_start ov109_021D117C
ov109_021D117C: @ 0x021D117C
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xcc
	adds r0, #0xd0
	ldr r2, [r2]
	ldr r0, [r0]
	movs r1, #0xe
	adds r2, r2, #4
	movs r3, #4
	bl FUN_0209BEBC
	cmp r0, #0
	beq _021D119C
	movs r0, #0xd
	str r0, [r4]
_021D119C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D117C

	thumb_func_start ov109_021D11A0
ov109_021D11A0: @ 0x021D11A0
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0x59
	ldr r1, [r4, #0x24]
	movs r0, #0x83
	lsls r2, r2, #4
	bl FUN_0203597C
	cmp r0, #0
	beq _021D11B8
	movs r0, #0xe
	str r0, [r4]
_021D11B8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D11A0

	thumb_func_start ov109_021D11BC
ov109_021D11BC: @ 0x021D11BC
	push {r4, lr}
	adds r4, r0, #0
	bl ov109_021D3BC4
	ldr r1, [r4, #0x30]
	cmp r1, r0
	bne _021D11FE
	adds r0, r4, #0
	bl ov109_021D3CD8
	cmp r0, #1
	bne _021D11EA
	adds r0, r4, #0
	adds r0, #0xd0
	movs r2, #0
	ldr r0, [r0]
	movs r1, #0x10
	adds r3, r2, #0
	bl FUN_0209BEBC
	movs r0, #0x2e
	str r0, [r4]
	b _021D11FE
_021D11EA:
	adds r0, r4, #0
	adds r0, #0xd0
	movs r2, #0
	ldr r0, [r0]
	movs r1, #0x11
	adds r3, r2, #0
	bl FUN_0209BEBC
	movs r0, #0xf
	str r0, [r4]
_021D11FE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D11BC

	thumb_func_start ov109_021D1204
ov109_021D1204: @ 0x021D1204
	push {r4, lr}
	adds r4, r0, #0
	bl ov109_021D3D3C
	cmp r0, #1
	bne _021D1216
	movs r0, #0x2e
	str r0, [r4]
	b _021D1226
_021D1216:
	adds r0, r4, #0
	bl ov109_021D3D1C
	ldr r1, [r4, #0x30]
	cmp r1, r0
	bne _021D1226
	movs r0, #0x10
	str r0, [r4]
_021D1226:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1204

	thumb_func_start ov109_021D122C
ov109_021D122C: @ 0x021D122C
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r1, #0x18
	bl ov109_021D3A94
	adds r7, r0, #0
	ldr r0, [r6, #0x2c]
	ldr r2, _021D12A8 @ =0x021D5C44
	str r0, [r7, #0x10]
	ldr r1, [r6, #0x30]
	movs r0, #0xa
	adds r3, r1, #0
	str r1, [r7, #0x14]
	muls r3, r0, r3
	ldr r0, [r6, #0x2c]
	movs r4, #0
	lsls r1, r0, #1
	adds r0, r2, r3
	ldrh r0, [r1, r0]
	adds r5, r6, #0
	str r0, [r7, #4]
_021D1256:
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov109_021D3B54
	cmp r0, #0
	beq _021D127E
	adds r0, r4, #0
	bl FUN_02032EE8
	adds r1, r5, #0
	adds r1, #0x84
	str r0, [r1]
	adds r0, r5, #0
	adds r1, r5, #0
	adds r0, #0x84
	adds r1, #0x98
	ldr r0, [r0]
	ldr r1, [r1]
	bl FUN_02025EF4
_021D127E:
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #8
	blt _021D1256
	ldr r0, [r7, #4]
	movs r2, #1
	lsls r1, r0, #0xc
	movs r0, #0x45
	lsls r0, r0, #2
	str r1, [r6, r0]
	movs r0, #0x11
	str r0, [r6]
	ldr r1, _021D12AC @ =0x000004BA
	movs r0, #0xf
	bl FUN_02004550
	adds r0, r6, #0
	bl ov109_021D2788
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D12A8: .4byte 0x021D5C44
_021D12AC: .4byte 0x000004BA
	thumb_func_end ov109_021D122C

	thumb_func_start ov109_021D12B0
ov109_021D12B0: @ 0x021D12B0
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r1, [r5, #0xc]
	subs r1, r1, #1
	str r1, [r5, #0xc]
	cmp r1, #0
	ble _021D12C6
	add sp, #0xc
	movs r0, #0
	pop {r4, r5, pc}
_021D12C6:
	movs r1, #0xf
	str r1, [r5, #0xc]
	bl ov109_021D3AB4
	adds r4, r0, #0
	ldr r1, [r4, #0x14]
	movs r0, #0xa
	adds r3, r1, #0
	ldr r2, [r4, #0x10]
	muls r3, r0, r3
	ldr r0, _021D1330 @ =0x021D5C80
	lsls r1, r2, #1
	adds r0, r0, r3
	ldrh r0, [r1, r0]
	str r0, [sp]
	ldr r0, [r4, #4]
	str r0, [sp, #4]
	movs r0, #0x2d
	lsls r0, r0, #4
	adds r1, r5, r0
	movs r0, #0xb0
	muls r0, r2, r0
	adds r0, r1, r0
	str r0, [sp, #8]
	lsls r1, r2, #2
	adds r1, r5, r1
	adds r1, #0x72
	ldrh r1, [r1]
	ldr r3, [r4]
	adds r0, r5, #0
	bl ov109_021D2FE0
	ldr r0, [r4, #0x10]
	adds r0, r0, #1
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	blx FUN_020E1F6C
	str r1, [r4, #0x10]
	ldr r0, [r4]
	adds r1, r0, #1
	str r1, [r4]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021D1328
	movs r0, #0
	str r0, [r5, #0xc]
	movs r0, #0x12
	str r0, [r5]
_021D1328:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021D1330: .4byte 0x021D5C80
	thumb_func_end ov109_021D12B0

	thumb_func_start ov109_021D1334
ov109_021D1334: @ 0x021D1334
	push {r3, r4, r5, r6}
	movs r1, #0x19
	movs r3, #0
	lsls r1, r1, #4
	adds r6, r0, r1
	ldr r5, [r0, #0x30]
	adds r4, r3, #0
	subs r1, #0x48
_021D1344:
	ldr r2, [r6, r1]
	cmp r2, #1
	bne _021D134C
	adds r4, r4, #1
_021D134C:
	adds r3, r3, #1
	adds r6, #0xb0
	cmp r3, r5
	blt _021D1344
	cmp r4, r5
	bne _021D1362
	movs r1, #0x13
	str r1, [r0]
	movs r0, #1
	pop {r3, r4, r5, r6}
	bx lr
_021D1362:
	movs r0, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov109_021D1334

	thumb_func_start ov109_021D1368
ov109_021D1368: @ 0x021D1368
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x1e
	ble _021D138C
	movs r0, #0
	str r0, [r4, #0xc]
	bl FUN_0203608C
	cmp r0, #0
	bne _021D1388
	movs r0, #0x14
	str r0, [r4]
	b _021D138C
_021D1388:
	movs r0, #0x15
	str r0, [r4]
_021D138C:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1368

	thumb_func_start ov109_021D1390
ov109_021D1390: @ 0x021D1390
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r1, #4
	add r0, sp, #0
	strh r1, [r0]
	adds r0, r4, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #8
	add r2, sp, #0
	movs r3, #2
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D13B4
	movs r0, #0x16
	str r0, [r4]
_021D13B4:
	movs r0, #0
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1390

	thumb_func_start ov109_021D13BC
ov109_021D13BC: @ 0x021D13BC
	push {r4, lr}
	movs r1, #4
	adds r4, r0, #0
	bl ov109_021D3AB8
	cmp r0, #1
	bne _021D13D2
	movs r0, #0x16
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D13D2:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D13BC

	thumb_func_start ov109_021D13D8
ov109_021D13D8: @ 0x021D13D8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xca
	bl FUN_020364F0
	movs r0, #0x17
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D13D8

	thumb_func_start ov109_021D13EC
ov109_021D13EC: @ 0x021D13EC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xca
	bl FUN_02036540
	cmp r0, #0
	beq _021D13FE
	movs r0, #0x18
	str r0, [r4]
_021D13FE:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D13EC

	thumb_func_start ov109_021D1404
ov109_021D1404: @ 0x021D1404
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl ov109_021D3990
	adds r0, r4, #0
	bl ov109_021D3684
	movs r0, #0x19
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1404

	thumb_func_start ov109_021D141C
ov109_021D141C: @ 0x021D141C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x5f
	bge _021D142E
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D142E:
	ldr r0, [r5, #0x30]
	movs r4, #0
	cmp r0, #0
	ble _021D1446
_021D1436:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov109_021D28A0
	ldr r0, [r5, #0x30]
	adds r4, r4, #1
	cmp r4, r0
	blt _021D1436
_021D1446:
	movs r0, #0
	str r0, [r5, #0xc]
	movs r1, #0x1a
	str r1, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D141C

	thumb_func_start ov109_021D1450
ov109_021D1450: @ 0x021D1450
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0203608C
	movs r0, #0x1b
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1450

	thumb_func_start ov109_021D1460
ov109_021D1460: @ 0x021D1460
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	bl ov109_021D3A14
	cmp r0, #1
	bne _021D1482
	adds r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D1482
	movs r0, #0x1d
	str r0, [r4]
	add sp, #8
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D1482:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D1498
	adds r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D1498
	adds r0, r4, #0
	bl ov109_021D35CC
_021D1498:
	adds r0, r4, #0
	bl ov109_021D37F0
	cmp r0, #0
	bne _021D14C6
	adds r0, r4, #0
	bl ov109_021D29AC
	cmp r0, #1
	bne _021D14C6
	adds r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D14C0
	adds r0, r4, #0
	bl ov109_021D35CC
	movs r0, #1
	str r0, [r4, #0x38]
_021D14C0:
	adds r0, r4, #0
	bl ov109_021D37FC
_021D14C6:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021D14E8
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	adds r2, r4, #0
	ldr r0, [r0, #0x34]
	movs r1, #0xa
	adds r2, #0x38
	movs r3, #1
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D14E8
	movs r0, #0
	str r0, [r4, #0x38]
_021D14E8:
	adds r0, r4, #0
	movs r1, #0x4b
	ldr r2, [r4, #8]
	adds r0, #0xd4
	lsls r1, r1, #2
	cmp r2, r1
	ldr r2, [r0, #0x48]
	bge _021D1508
	movs r1, #0xe
	adds r2, #0xbf
	lsls r1, r1, #0xc
	str r2, [r0, #0x48]
	cmp r2, r1
	blt _021D1516
	str r1, [r0, #0x48]
	b _021D1516
_021D1508:
	movs r1, #1
	subs r2, #0xbf
	lsls r1, r1, #0xe
	str r2, [r0, #0x48]
	cmp r2, r1
	bge _021D1516
	str r1, [r0, #0x48]
_021D1516:
	ldr r5, [r0, #0x48]
	adds r0, r4, #0
	bl ov109_021D35E8
	cmp r0, #1
	bne _021D152E
	adds r0, r4, #0
	adds r0, #0xd4
	lsls r1, r5, #1
	bl ov109_021D2AE4
	b _021D1536
_021D152E:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov109_021D39FC
_021D1536:
	ldr r0, [r4, #8]
	add r2, sp, #0
	movs r1, #0x47
	strh r0, [r2, #2]
	lsls r1, r1, #2
	ldr r3, [r4, r1]
	subs r1, #0xc
	asrs r0, r3, #0xb
	lsrs r0, r0, #0x14
	adds r0, r3, r0
	asrs r0, r0, #0xc
	strh r0, [r2, #4]
	ldr r1, [r4, r1]
	adds r4, #0xd0
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	strh r0, [r2, #6]
	ldr r0, [r4]
	movs r1, #0xb
	add r2, sp, #0
	movs r3, #8
	bl FUN_0209BEBC
	movs r0, #0
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D1460

	thumb_func_start ov109_021D1570
ov109_021D1570: @ 0x021D1570
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x3c]
	cmp r0, #1
	bne _021D159A
	adds r0, r4, #0
	adds r0, #0x5e
	ldrh r0, [r0]
	lsls r1, r0, #0xc
	movs r0, #0x11
	lsls r0, r0, #4
	str r1, [r4, r0]
	movs r0, #0x5c
	ldrsh r1, [r4, r0]
	adds r0, #0xc0
	lsls r1, r1, #0xc
	str r1, [r4, r0]
	adds r0, r4, #0
	adds r0, #0x5a
	ldrh r0, [r0]
	str r0, [r4, #8]
_021D159A:
	adds r0, r4, #0
	bl ov109_021D3A14
	cmp r0, #1
	bne _021D15B6
	adds r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D15B6
	movs r0, #0x1d
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D15B6:
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _021D15CC
	adds r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D15CC
	adds r0, r4, #0
	bl ov109_021D35CC
_021D15CC:
	adds r0, r4, #0
	bl ov109_021D37F0
	cmp r0, #0
	bne _021D15FA
	adds r0, r4, #0
	bl ov109_021D29AC
	cmp r0, #1
	bne _021D15FA
	adds r0, r4, #0
	bl ov109_021D35F4
	cmp r0, #0
	bne _021D15F4
	adds r0, r4, #0
	bl ov109_021D35CC
	movs r0, #1
	str r0, [r4, #0x38]
_021D15F4:
	adds r0, r4, #0
	bl ov109_021D37FC
_021D15FA:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021D161C
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	adds r2, r4, #0
	ldr r0, [r0, #0x34]
	movs r1, #0xa
	adds r2, #0x38
	movs r3, #1
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D161C
	movs r0, #0
	str r0, [r4, #0x38]
_021D161C:
	adds r0, r4, #0
	bl ov109_021D35E8
	cmp r0, #1
	bne _021D1638
	movs r1, #0x47
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	adds r0, #0xd4
	lsls r1, r1, #1
	bl ov109_021D2AE4
	b _021D1644
_021D1638:
	movs r1, #0x47
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	adds r0, r4, #0
	bl ov109_021D39FC
_021D1644:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1570

	thumb_func_start ov109_021D1648
ov109_021D1648: @ 0x021D1648
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl ov109_021D3990
	adds r0, r4, #0
	bl ov109_021D2DF8
	str r0, [r4, #0x28]
	bl FUN_0203608C
	ldr r1, [r4, #0x28]
	ldr r1, [r1, #0xc]
	cmp r1, r0
	bne _021D166A
	movs r0, #0x1e
	b _021D166C
_021D166A:
	movs r0, #0x1f
_021D166C:
	str r0, [r4]
	ldr r0, _021D1678 @ =0x000005F1
	bl FUN_02005748
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_021D1678: .4byte 0x000005F1
	thumb_func_end ov109_021D1648

	thumb_func_start ov109_021D167C
ov109_021D167C: @ 0x021D167C
	push {r4, lr}
	movs r1, #1
	adds r4, r0, #0
	lsls r1, r1, #0xe
	bl ov109_021D39FC
	adds r0, r4, #0
	bl ov109_021D2DF8
	str r0, [r4, #0x28]
	bl FUN_0203608C
	ldr r1, [r4, #0x28]
	ldr r1, [r1, #0xc]
	cmp r1, r0
	beq _021D16A0
	movs r0, #0x1f
	str r0, [r4]
_021D16A0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D167C

	thumb_func_start ov109_021D16A4
ov109_021D16A4: @ 0x021D16A4
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, [r6, #0x28]
	ldr r2, [r6, #0x30]
	ldr r1, [r0, #0x1c]
	ldr r3, [r6, #0x2c]
	movs r0, #0xa
	muls r0, r2, r0
	ldr r4, _021D171C @ =0x021D5C80
	lsls r2, r3, #1
	adds r0, r4, r0
	ldrh r0, [r2, r0]
	movs r5, #1
	lsls r5, r5, #0xe
	lsls r4, r0, #0xc
	str r1, [sp]
	subs r2, r4, r1
	bpl _021D16D2
	movs r0, #0x5a
	lsls r0, r0, #0xe
	adds r0, r4, r0
	subs r2, r0, r1
_021D16D2:
	movs r0, #1
	lsls r0, r0, #0x10
	cmp r2, r0
	bgt _021D16DC
	asrs r5, r5, #1
_021D16DC:
	cmp r2, r5
	bge _021D16E2
	adds r5, r2, #0
_021D16E2:
	adds r0, r6, #0
	adds r0, #0xd4
	adds r1, r5, #0
	bl ov109_021D2AE4
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov109_021D2D44
	add r0, sp, #0
	adds r1, r5, #0
	bl ov109_021D39D4
	ldr r1, [sp]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r1, r0, #0xc
	asrs r0, r4, #0xb
	lsrs r0, r0, #0x14
	adds r0, r4, r0
	asrs r0, r0, #0xc
	cmp r1, r0
	bne _021D1716
	movs r0, #0x20
	str r0, [r6]
_021D1716:
	movs r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D171C: .4byte 0x021D5C80
	thumb_func_end ov109_021D16A4

	thumb_func_start ov109_021D1720
ov109_021D1720: @ 0x021D1720
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xca
	bl FUN_020364F0
	movs r0, #0x21
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1720

	thumb_func_start ov109_021D1734
ov109_021D1734: @ 0x021D1734
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xca
	bl FUN_02036540
	cmp r0, #0
	beq _021D1754
	bl FUN_0203608C
	cmp r0, #0
	bne _021D1750
	movs r0, #0x22
	str r0, [r4]
	b _021D1754
_021D1750:
	movs r0, #0x23
	str r0, [r4]
_021D1754:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1734

	thumb_func_start ov109_021D1758
ov109_021D1758: @ 0x021D1758
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x11
	lsls r0, r0, #4
	ldr r1, [r5, r0]
	movs r7, #0
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r1, r0, #0xc
	add r0, sp, #0
	strh r1, [r0]
	str r7, [r5, #0x20]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ble _021D17C6
	movs r0, #0x2d
	lsls r0, r0, #4
	adds r6, r5, #0
	adds r4, r5, r0
	adds r6, #0x20
_021D1784:
	ldr r0, [r4]
	cmp r0, #0
	bne _021D178E
	bl FUN_02022974
_021D178E:
	ldr r1, [r4, #0x1c]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	ldr r1, [r4, #0x10]
	asrs r0, r0, #0xc
	lsls r2, r1, #1
	add r1, sp, #0
	adds r1, r1, r2
	strh r0, [r1, #4]
	ldr r1, [r4, #0x1c]
	ldr r2, [r5, #0x30]
	adds r0, r5, #0
	bl ov109_021D3C08
	cmp r0, #1
	bne _021D17BC
	ldr r2, [r4, #0xc]
	movs r1, #1
	ldr r0, [r6]
	lsls r1, r2
	orrs r0, r1
	str r0, [r6]
_021D17BC:
	ldr r0, [r5, #0x30]
	adds r7, r7, #1
	adds r4, #0xb0
	cmp r7, r0
	blt _021D1784
_021D17C6:
	ldr r1, [r5, #0x20]
	add r0, sp, #0
	strh r1, [r0, #2]
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	movs r1, #0xf
	add r2, sp, #0
	movs r3, #0x10
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D17E4
	movs r0, #0x24
	str r0, [r5]
_021D17E4:
	movs r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov109_021D1758

	thumb_func_start ov109_021D17EC
ov109_021D17EC: @ 0x021D17EC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	cmp r0, #1
	bne _021D1852
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r5, #0
	adds r7, #0x60
	lsls r1, r0, #0xc
	movs r0, #0x11
	lsls r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r5, #0x30]
	movs r6, #0
	cmp r0, #0
	ble _021D1836
	movs r0, #0x2d
	lsls r0, r0, #4
	adds r4, r5, r0
_021D1816:
	ldr r0, [r4]
	cmp r0, #0
	bne _021D1820
	bl FUN_02022974
_021D1820:
	ldr r0, [r4, #0x10]
	adds r6, r6, #1
	lsls r0, r0, #1
	adds r0, r7, r0
	ldrh r0, [r0, #4]
	lsls r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x30]
	adds r4, #0xb0
	cmp r6, r0
	blt _021D1816
_021D1836:
	ldrh r0, [r7, #2]
	str r0, [r5, #0x20]
	adds r0, r5, #0
	bl ov109_021D2A68
	adds r0, r5, #0
	bl ov109_021D2C38
	adds r0, r5, #0
	bl ov109_021D2DF8
	str r0, [r5, #0x28]
	movs r0, #0x24
	str r0, [r5]
_021D1852:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov109_021D17EC

	thumb_func_start ov109_021D1858
ov109_021D1858: @ 0x021D1858
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x28]
	movs r6, #0
	ldr r4, [r0, #0x10]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ble _021D1896
_021D1868:
	movs r0, #0xb0
	muls r0, r4, r0
	adds r1, r5, r0
	movs r0, #0xb7
	lsls r0, r0, #2
	ldr r3, [r1, r0]
	adds r0, r5, #0
	lsls r1, r3, #2
	adds r1, r5, r1
	adds r1, #0x98
	ldr r1, [r1]
	adds r2, r6, #0
	bl ov109_021D2874
	ldr r7, [r5, #0x30]
	adds r0, r4, #1
	adds r1, r7, #0
	blx FUN_020E1F6C
	adds r6, r6, #1
	adds r4, r1, #0
	cmp r6, r7
	blt _021D1868
_021D1896:
	movs r0, #0
	str r0, [r5, #0xc]
	movs r1, #0x25
	str r1, [r5]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D1858

	thumb_func_start ov109_021D18A0
ov109_021D18A0: @ 0x021D18A0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r0, r0, #1
	str r0, [r5, #0xc]
	cmp r0, #0x78
	bge _021D18B2
	movs r0, #0
	pop {r3, r4, r5, pc}
_021D18B2:
	movs r4, #0
	str r4, [r5, #0xc]
	ldr r0, [r5, #0x30]
	cmp r0, #0
	ble _021D18CC
_021D18BC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov109_021D28A0
	ldr r0, [r5, #0x30]
	adds r4, r4, #1
	cmp r4, r0
	blt _021D18BC
_021D18CC:
	ldr r2, [r5, #0x28]
	adds r0, r5, #0
	ldr r2, [r2, #0xc]
	movs r1, #2
	lsls r2, r2, #2
	adds r2, r5, r2
	adds r2, #0x84
	ldr r2, [r2]
	bl ov109_021D268C
	ldr r0, _021D18F0 @ =0x00000486
	bl FUN_02006150
	movs r0, #0x26
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D18F0: .4byte 0x00000486
	thumb_func_end ov109_021D18A0

	thumb_func_start ov109_021D18F4
ov109_021D18F4: @ 0x021D18F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x78
	bge _021D1904
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _021D1914
_021D1904:
	bl FUN_020061E4
	cmp r0, #0
	bne _021D1914
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #0x27
	str r0, [r4]
_021D1914:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D18F4

	thumb_func_start ov109_021D1918
ov109_021D1918: @ 0x021D1918
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl ov109_021D38F8
	ldr r0, [r5, #0x28]
	ldr r2, [r5, #0x20]
	ldr r0, [r0, #0xc]
	movs r1, #1
	lsls r1, r0
	adds r0, r2, #0
	tst r0, r1
	bne _021D1938
	movs r0, #0x2b
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D1938:
	ldr r0, [r5, #0x30]
	lsls r6, r0, #3
	ldr r0, _021D19A0 @ =0x021D5BE4
	ldr r4, [r0, r6]
	ldr r0, _021D19A4 @ =0x021D5BE8
	ldr r7, [r0, r6]
	bl FUN_0201D2E8
	subs r1, r7, r4
	adds r1, r1, #1
	blx FUN_020E2178
	ldr r0, _021D19A0 @ =0x021D5BE4
	adds r4, r4, r1
	ldr r0, [r0, r6]
	cmp r4, r0
	bhs _021D195E
	adds r4, r0, #0
	b _021D1964
_021D195E:
	cmp r4, r7
	bls _021D1964
	adds r4, r7, #0
_021D1964:
	adds r0, r5, #0
	movs r1, #3
	adds r2, r4, #0
	bl ov109_021D2714
	adds r0, r5, #0
	adds r0, #0xcc
	ldr r0, [r0]
	ldr r0, [r0, #0x1c]
	bl FUN_0207D990
	lsls r1, r4, #0x10
	lsrs r1, r1, #0x10
	movs r2, #1
	movs r3, #0x5f
	bl FUN_0207D570
	adds r4, r0, #0
	ldr r0, _021D19A8 @ =0x00000486
	bl FUN_02006150
	cmp r4, #1
	bne _021D1996
	movs r0, #0x28
	b _021D1998
_021D1996:
	movs r0, #0x29
_021D1998:
	str r0, [r5]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D19A0: .4byte 0x021D5BE4
_021D19A4: .4byte 0x021D5BE8
_021D19A8: .4byte 0x00000486
	thumb_func_end ov109_021D1918

	thumb_func_start ov109_021D19AC
ov109_021D19AC: @ 0x021D19AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x78
	bge _021D19BC
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _021D19CC
_021D19BC:
	bl FUN_020061E4
	cmp r0, #0
	bne _021D19CC
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #0x2b
	str r0, [r4]
_021D19CC:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D19AC

	thumb_func_start ov109_021D19D0
ov109_021D19D0: @ 0x021D19D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0x78
	bge _021D19E0
	adds r0, r0, #1
	str r0, [r4, #0xc]
	b _021D19F8
_021D19E0:
	bl FUN_020061E4
	cmp r0, #0
	bne _021D19F8
	movs r0, #0
	str r0, [r4, #0xc]
	movs r0, #0x28
	str r0, [r4]
	adds r0, r4, #0
	movs r1, #4
	bl ov109_021D2634
_021D19F8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D19D0

	thumb_func_start ov109_021D19FC
ov109_021D19FC: @ 0x021D19FC
	ldr r1, [r0, #0xc]
	cmp r1, #0x78
	bge _021D1A08
	adds r1, r1, #1
	str r1, [r0, #0xc]
	b _021D1A10
_021D1A08:
	movs r1, #0
	str r1, [r0, #0xc]
	movs r1, #0x2b
	str r1, [r0]
_021D1A10:
	movs r0, #0
	bx lr
	thumb_func_end ov109_021D19FC

	thumb_func_start ov109_021D1A14
ov109_021D1A14: @ 0x021D1A14
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5f
	movs r1, #0x11
	bl FUN_0202C244
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r2, #4
	ldr r0, [r0, #0x2c]
	bl FUN_0202B758
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r1, #0x77
	ldr r0, [r0, #0x28]
	bl FUN_0202CF28
	adds r0, r4, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r1, #0x2d
	ldr r0, [r0, #0x28]
	bl FUN_0202CFEC
	adds r0, r4, #0
	movs r1, #0xb
	bl ov109_021D2634
	movs r0, #0xca
	bl FUN_020364F0
	ldr r0, _021D1A68 @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #8]
	movs r0, #0x2c
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D1A68: .4byte 0x021BF6DC
	thumb_func_end ov109_021D1A14

	thumb_func_start ov109_021D1A6C
ov109_021D1A6C: @ 0x021D1A6C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xca
	bl FUN_02036540
	cmp r0, #0
	beq _021D1A9C
	ldr r1, [r4, #0x28]
	adds r0, r4, #0
	ldr r1, [r1, #0xc]
	bl ov109_021D3B70
	adds r0, r4, #4
	bl FUN_02038ED4
	ldr r0, _021D1AA0 @ =0x00000CA8
	movs r1, #0xa
	adds r0, r4, r0
	bl FUN_0200E7FC
	ldr r1, _021D1AA4 @ =0x00000DC8
	str r0, [r4, r1]
	movs r0, #0x2d
	str r0, [r4]
_021D1A9C:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D1AA0: .4byte 0x00000CA8
_021D1AA4: .4byte 0x00000DC8
	thumb_func_end ov109_021D1A6C

	thumb_func_start ov109_021D1AA8
ov109_021D1AA8: @ 0x021D1AA8
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r1, #2
	ldr r0, [r0, #0x1c]
	adds r2, r4, #4
	bl FUN_02038EDC
	cmp r0, #0
	beq _021D1AD0
	ldr r0, _021D1AD4 @ =0x021BF6DC
	movs r1, #0
	strb r1, [r0, #8]
	ldr r0, _021D1AD8 @ =0x00000DC8
	ldr r0, [r4, r0]
	bl FUN_0200EBA0
	movs r0, #0x30
	str r0, [r4]
_021D1AD0:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D1AD4: .4byte 0x021BF6DC
_021D1AD8: .4byte 0x00000DC8
	thumb_func_end ov109_021D1AA8

	thumb_func_start ov109_021D1ADC
ov109_021D1ADC: @ 0x021D1ADC
	push {r4, lr}
	movs r1, #0xc
	adds r4, r0, #0
	bl ov109_021D2634
	movs r0, #0x2f
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1ADC

	thumb_func_start ov109_021D1AF0
ov109_021D1AF0: @ 0x021D1AF0
	ldr r1, [r0, #0xc]
	adds r1, r1, #1
	str r1, [r0, #0xc]
	cmp r1, #0x78
	blt _021D1B06
	movs r1, #0
	str r1, [r0, #0xc]
	movs r1, #0x30
	str r1, [r0]
	movs r0, #1
	bx lr
_021D1B06:
	movs r0, #0
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D1AF0

	thumb_func_start ov109_021D1B0C
ov109_021D1B0C: @ 0x021D1B0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D1B1C
	movs r0, #0xca
	bl FUN_020364F0
_021D1B1C:
	adds r0, r4, #0
	movs r1, #0xa
	bl ov109_021D2634
	movs r0, #0x31
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1B0C

	thumb_func_start ov109_021D1B2C
ov109_021D1B2C: @ 0x021D1B2C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	bne _021D1B58
	movs r0, #0xca
	bl FUN_02036540
	cmp r0, #0
	beq _021D1B86
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020388F4
	movs r0, #1
	bl FUN_02037B58
	bl FUN_02036AC4
	movs r0, #0x32
	str r0, [r4]
	b _021D1B86
_021D1B58:
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x78
	blt _021D1B86
	movs r0, #0
	adds r1, r4, #0
	str r0, [r4, #0xc]
	adds r1, #0xd0
	ldr r1, [r1]
	ldr r1, [r1, #0x3c]
	cmp r1, #0
	bne _021D1B82
	adds r1, r0, #0
	bl FUN_020388F4
	movs r0, #1
	bl FUN_02037B58
	bl FUN_02036AC4
_021D1B82:
	movs r0, #0x32
	str r0, [r4]
_021D1B86:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D1B2C

	thumb_func_start ov109_021D1B8C
ov109_021D1B8C: @ 0x021D1B8C
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_02035E18
	cmp r0, #1
	bgt _021D1BA0
	movs r0, #0x33
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1BA0:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1B8C

	thumb_func_start ov109_021D1BA4
ov109_021D1BA4: @ 0x021D1BA4
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #8
	movs r1, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x5f
	str r0, [sp, #8]
	movs r0, #2
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_0200F174
	ldr r5, [r4, #0x1c]
	bl FUN_020041FC
	cmp r5, r0
	beq _021D1BD8
	lsls r1, r5, #0x10
	movs r0, #4
	lsrs r1, r1, #0x10
	movs r2, #1
	bl FUN_02004550
_021D1BD8:
	movs r0, #0x34
	str r0, [r4]
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D1BA4

	thumb_func_start ov109_021D1BE4
ov109_021D1BE4: @ 0x021D1BE4
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D1BF8
	movs r0, #0x35
	str r0, [r4]
	movs r0, #1
	pop {r4, pc}
_021D1BF8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov109_021D1BE4

	thumb_func_start ov109_021D1BFC
ov109_021D1BFC: @ 0x021D1BFC
	movs r0, #2
	bx lr
	thumb_func_end ov109_021D1BFC

	thumb_func_start ov109_021D1C00
ov109_021D1C00: @ 0x021D1C00
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r0, _021D1C20 @ =0x00000D9C
	ldr r0, [r4, r0]
	bl FUN_02003694
	ldr r0, _021D1C24 @ =0x00000D84
	ldr r0, [r4, r0]
	bl FUN_0201C2B8
	pop {r4, pc}
	nop
_021D1C20: .4byte 0x00000D9C
_021D1C24: .4byte 0x00000D84
	thumb_func_end ov109_021D1C00

	thumb_func_start ov109_021D1C28
ov109_021D1C28: @ 0x021D1C28
	push {r4, lr}
	adds r4, r0, #0
	bl ov109_021D1CF0
	adds r0, r4, #0
	bl ov109_021D1E1C
	adds r0, r4, #0
	bl ov109_021D28C4
	adds r0, r4, #0
	bl ov109_021D1EC8
	adds r0, r4, #0
	bl ov109_021D22B0
	adds r0, r4, #0
	bl ov109_021D2368
	adds r0, r4, #0
	bl ov109_021D2004
	adds r0, r4, #0
	bl ov109_021D24F8
	adds r0, r4, #0
	bl ov109_021D2408
	adds r0, r4, #0
	bl ov109_021D1D10
	pop {r4, pc}
	thumb_func_end ov109_021D1C28

	thumb_func_start ov109_021D1C68
ov109_021D1C68: @ 0x021D1C68
	push {r4, lr}
	adds r4, r0, #0
	bl ov109_021D1DC8
	adds r0, r4, #0
	bl ov109_021D24C0
	adds r0, r4, #0
	bl ov109_021D25E8
	adds r0, r4, #0
	bl ov109_021D2204
	adds r0, r4, #0
	bl ov109_021D2308
	adds r0, r4, #0
	bl ov109_021D293C
	pop {r4, pc}
	thumb_func_end ov109_021D1C68

	thumb_func_start ov109_021D1C90
ov109_021D1C90: @ 0x021D1C90
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_020241B4
	bl FUN_020203EC
	movs r0, #0
	ldr r2, _021D1CE4 @ =0xFFFFF000
	adds r1, r0, #0
	adds r3, r0, #0
	blx FUN_020AF51C
	ldr r1, _021D1CE8 @ =0x00007FFF
	movs r0, #0
	blx FUN_020AF558
	ldr r0, _021D1CE8 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF56C
	ldr r0, _021D1CE8 @ =0x00007FFF
	movs r2, #0
	adds r1, r0, #0
	blx FUN_020AF590
	adds r0, r4, #0
	bl ov109_021D2AC8
	adds r0, r4, #0
	bl ov109_021D2CCC
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020241BC
	ldr r0, _021D1CEC @ =0x00000D98
	ldr r0, [r4, r0]
	bl FUN_0200C7EC
	pop {r4, pc}
	nop
_021D1CE4: .4byte 0xFFFFF000
_021D1CE8: .4byte 0x00007FFF
_021D1CEC: .4byte 0x00000D98
	thumb_func_end ov109_021D1C90

	thumb_func_start ov109_021D1CF0
ov109_021D1CF0: @ 0x021D1CF0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D1D0C @ =0x021D5BBC
	add r3, sp, #0
	movs r2, #5
_021D1CFA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D1CFA
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D1D0C: .4byte 0x021D5BBC
	thumb_func_end ov109_021D1CF0

	thumb_func_start ov109_021D1D10
ov109_021D1D10: @ 0x021D1D10
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF74
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #8
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	ldr r0, _021D1DC0 @ =0x04000008
	movs r4, #3
	ldrh r1, [r0]
	movs r2, #1
	movs r3, #2
	bics r1, r4
	orrs r1, r2
	strh r1, [r0]
	ldrh r1, [r0, #2]
	movs r5, #3
	bics r1, r4
	strh r1, [r0, #2]
	ldrh r1, [r0, #4]
	bics r1, r4
	orrs r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bics r1, r4
	orrs r1, r5
	strh r1, [r0, #6]
	ldr r1, _021D1DC4 @ =0x04001008
	ldrh r6, [r1]
	bics r6, r4
	strh r6, [r1]
	ldrh r6, [r1, #2]
	bics r6, r4
	orrs r2, r6
	strh r2, [r1, #2]
	ldrh r2, [r1, #4]
	bics r2, r4
	orrs r2, r3
	strh r2, [r1, #4]
	ldrh r2, [r1, #6]
	bics r2, r4
	orrs r2, r5
	strh r2, [r1, #6]
	movs r1, #0xa
	str r1, [sp]
	adds r0, #0x48
	movs r1, #4
	movs r2, #0x28
	movs r3, #0xb
	blx FUN_020BF55C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D1DC0: .4byte 0x04000008
_021D1DC4: .4byte 0x04001008
	thumb_func_end ov109_021D1D10

	thumb_func_start ov109_021D1DC8
ov109_021D1DC8: @ 0x021D1DC8
	push {r3, lr}
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
	movs r0, #0x10
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
	movs r0, #0x10
	movs r1, #0
	bl FUN_0201FF74
	pop {r3, pc}
	thumb_func_end ov109_021D1DC8

	thumb_func_start ov109_021D1E1C
ov109_021D1E1C: @ 0x021D1E1C
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	blx FUN_020B28CC
	blx FUN_020BFB4C
	ldr r0, _021D1EAC @ =0x04000060
	ldr r1, _021D1EB0 @ =0xFFFFCFFD
	ldrh r2, [r0]
	ands r2, r1
	strh r2, [r0]
	ldrh r3, [r0]
	adds r2, r1, #2
	ands r3, r2
	movs r2, #0x10
	orrs r2, r3
	strh r2, [r0]
	ldrh r3, [r0]
	ldr r2, _021D1EB4 @ =0x0000CFFB
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
	adds r3, r4, #0
	ands r2, r1
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	movs r0, #0xda
	ldr r1, _021D1EB8 @ =0x00001084
	movs r2, #0
	lsls r0, r0, #4
_021D1E6A:
	adds r2, r2, #1
	strh r1, [r3, r0]
	adds r3, r3, #2
	cmp r2, #8
	blt _021D1E6A
	movs r0, #0xda
	lsls r0, r0, #4
	adds r0, r4, r0
	blx FUN_020BFD2C
	ldr r0, _021D1EBC @ =0x00007FFF
	movs r1, #0
	adds r2, r0, #0
	movs r3, #0x3f
	str r1, [sp]
	blx FUN_020BFD58
	ldr r1, _021D1EC0 @ =0x04000540
	movs r0, #2
	str r0, [r1]
	ldr r0, _021D1EC4 @ =0xBFFF0000
	str r0, [r1, #0x40]
	movs r0, #1
	adds r1, r0, #0
	blx FUN_020A5A94
	movs r0, #1
	lsls r0, r0, #0xe
	movs r1, #1
	blx FUN_020A5D88
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
_021D1EAC: .4byte 0x04000060
_021D1EB0: .4byte 0xFFFFCFFD
_021D1EB4: .4byte 0x0000CFFB
_021D1EB8: .4byte 0x00001084
_021D1EBC: .4byte 0x00007FFF
_021D1EC0: .4byte 0x04000540
_021D1EC4: .4byte 0xBFFF0000
	thumb_func_end ov109_021D1E1C

	thumb_func_start ov109_021D1EC8
ov109_021D1EC8: @ 0x021D1EC8
	push {r4, r5, lr}
	sub sp, #0x9c
	adds r4, r0, #0
	movs r0, #0x5f
	bl FUN_02018340
	ldr r1, _021D1FE4 @ =0x00000D84
	ldr r2, _021D1FE8 @ =0x04000304
	str r0, [r4, r1]
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	ldr r5, _021D1FEC @ =0x021D59F4
	orrs r0, r1
	strh r0, [r2]
	add r3, sp, #0x8c
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D1FF0 @ =0x021D5AC8
	add r3, sp, #0x70
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
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r3, #0
	ldr r0, [r4, r0]
	bl FUN_020183C4
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02019EBC
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x5f
	bl FUN_02019690
	ldr r5, _021D1FF4 @ =0x021D5AE4
	add r3, sp, #0x54
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
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r3, #0
	ldr r0, [r4, r0]
	bl FUN_020183C4
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02019EBC
	ldr r5, _021D1FF8 @ =0x021D5B00
	add r3, sp, #0x38
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
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r3, #0
	ldr r0, [r4, r0]
	bl FUN_020183C4
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_02019EBC
	ldr r5, _021D1FFC @ =0x021D5B1C
	add r3, sp, #0x1c
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #6
	str r0, [r3]
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r3, #0
	ldr r0, [r4, r0]
	bl FUN_020183C4
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r1, #6
	ldr r0, [r4, r0]
	bl FUN_02019EBC
	ldr r5, _021D2000 @ =0x021D5B38
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
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r3, #0
	ldr r0, [r4, r0]
	bl FUN_020183C4
	ldr r0, _021D1FE4 @ =0x00000D84
	movs r1, #7
	ldr r0, [r4, r0]
	bl FUN_02019EBC
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021D1FE4: .4byte 0x00000D84
_021D1FE8: .4byte 0x04000304
_021D1FEC: .4byte 0x021D59F4
_021D1FF0: .4byte 0x021D5AC8
_021D1FF4: .4byte 0x021D5AE4
_021D1FF8: .4byte 0x021D5B00
_021D1FFC: .4byte 0x021D5B1C
_021D2000: .4byte 0x021D5B38
	thumb_func_end ov109_021D1EC8

	thumb_func_start ov109_021D2004
ov109_021D2004: @ 0x021D2004
	push {r3, r4, r5, lr}
	movs r1, #0x11
	movs r2, #0
	adds r4, r0, #0
	bl ov109_021D3A2C
	movs r1, #0xd9
	lsls r1, r1, #4
	adds r1, r4, r1
	adds r5, r0, #0
	blx FUN_020A71B0
	movs r0, #0x40
	movs r2, #0
	ldr r1, _021D21F0 @ =0x00000D9C
	str r0, [sp]
	ldr r0, [r4, r1]
	subs r1, #0xc
	ldr r1, [r4, r1]
	adds r3, r2, #0
	ldr r1, [r1, #0xc]
	bl FUN_02002FBC
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	bl ov109_021D3A2C
	movs r1, #0xd9
	lsls r1, r1, #4
	adds r1, r4, r1
	adds r5, r0, #0
	blx FUN_020A71B0
	movs r0, #0x40
	ldr r1, _021D21F0 @ =0x00000D9C
	str r0, [sp]
	ldr r0, [r4, r1]
	subs r1, #0xc
	ldr r1, [r4, r1]
	movs r2, #1
	ldr r1, [r1, #0xc]
	movs r3, #0
	bl FUN_02002FBC
	adds r0, r5, #0
	bl FUN_020181C4
	movs r0, #0
	str r0, [sp]
	ldr r0, _021D21F0 @ =0x00000D9C
	ldr r2, _021D21F4 @ =0x0000FFFF
	ldr r0, [r4, r0]
	movs r1, #1
	movs r3, #8
	bl FUN_02003A2C
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21F8 @ =0x00000D8C
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7118
	ldr r0, _021D21F8 @ =0x00000D8C
	movs r1, #0
	ldr r3, [r4, r0]
	subs r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	movs r1, #3
	bl FUN_0201958C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0x16
	movs r2, #0
	bl ov109_021D3A2C
	adds r5, r0, #0
	ldr r1, _021D21F8 @ =0x00000D8C
	adds r1, r4, r1
	blx FUN_020A7118
	ldr r0, _021D21F8 @ =0x00000D8C
	movs r1, #0
	ldr r3, [r4, r0]
	subs r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	movs r1, #6
	bl FUN_0201958C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21F8 @ =0x00000D8C
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7118
	ldr r0, _021D21F8 @ =0x00000D8C
	movs r1, #0
	ldr r3, [r4, r0]
	subs r0, #8
	str r1, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4, r0]
	ldr r3, [r3, #0x10]
	movs r1, #7
	bl FUN_0201958C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0x13
	movs r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21FC @ =0x00000D88
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7248
	ldr r0, _021D21FC @ =0x00000D88
	movs r1, #2
	ldr r3, [r4, r0]
	subs r0, r0, #4
	adds r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	adds r2, #0xc
	bl FUN_02019574
	ldr r0, _021D2200 @ =0x00000D84
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02019448
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0x12
	movs r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21FC @ =0x00000D88
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7248
	ldr r0, _021D21FC @ =0x00000D88
	movs r1, #3
	ldr r3, [r4, r0]
	subs r0, r0, #4
	adds r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	adds r2, #0xc
	bl FUN_02019574
	ldr r0, _021D2200 @ =0x00000D84
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_02019448
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21FC @ =0x00000D88
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7248
	ldr r0, _021D21FC @ =0x00000D88
	movs r1, #6
	ldr r3, [r4, r0]
	subs r0, r0, #4
	adds r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	adds r2, #0xc
	bl FUN_02019574
	ldr r0, _021D2200 @ =0x00000D84
	movs r1, #6
	ldr r0, [r4, r0]
	bl FUN_02019448
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r4, #0
	movs r1, #0x17
	movs r2, #0
	bl ov109_021D3A2C
	ldr r1, _021D21FC @ =0x00000D88
	adds r5, r0, #0
	adds r1, r4, r1
	blx FUN_020A7248
	ldr r0, _021D21FC @ =0x00000D88
	movs r1, #7
	ldr r3, [r4, r0]
	subs r0, r0, #4
	adds r2, r3, #0
	ldr r0, [r4, r0]
	ldr r3, [r3, #8]
	adds r2, #0xc
	bl FUN_02019574
	ldr r0, _021D2200 @ =0x00000D84
	movs r1, #7
	ldr r0, [r4, r0]
	bl FUN_02019448
	adds r0, r5, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	nop
_021D21F0: .4byte 0x00000D9C
_021D21F4: .4byte 0x0000FFFF
_021D21F8: .4byte 0x00000D8C
_021D21FC: .4byte 0x00000D88
_021D2200: .4byte 0x00000D84
	thumb_func_end ov109_021D2004

	thumb_func_start ov109_021D2204
ov109_021D2204: @ 0x021D2204
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D2244 @ =0x00000D84
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02019044
	ldr r0, _021D2244 @ =0x00000D84
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02019044
	ldr r0, _021D2244 @ =0x00000D84
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_02019044
	ldr r0, _021D2244 @ =0x00000D84
	movs r1, #6
	ldr r0, [r4, r0]
	bl FUN_02019044
	ldr r0, _021D2244 @ =0x00000D84
	movs r1, #7
	ldr r0, [r4, r0]
	bl FUN_02019044
	ldr r0, _021D2244 @ =0x00000D84
	ldr r0, [r4, r0]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
_021D2244: .4byte 0x00000D84
	thumb_func_end ov109_021D2204

	thumb_func_start ov109_021D2248
ov109_021D2248: @ 0x021D2248
	push {r3, r4, r5, lr}
	movs r2, #0
	adds r5, r0, #0
	bl ov109_021D3A2C
	ldr r1, _021D2284 @ =0x00000D88
	adds r4, r0, #0
	adds r1, r5, r1
	blx FUN_020A7248
	ldr r0, _021D2284 @ =0x00000D88
	movs r1, #6
	ldr r3, [r5, r0]
	subs r0, r0, #4
	adds r2, r3, #0
	ldr r0, [r5, r0]
	ldr r3, [r3, #8]
	adds r2, #0xc
	bl FUN_02019574
	ldr r0, _021D2288 @ =0x00000D84
	movs r1, #6
	ldr r0, [r5, r0]
	bl FUN_02019448
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r3, r4, r5, pc}
	nop
_021D2284: .4byte 0x00000D88
_021D2288: .4byte 0x00000D84
	thumb_func_end ov109_021D2248

	thumb_func_start ov109_021D228C
ov109_021D228C: @ 0x021D228C
	ldr r3, _021D2294 @ =ov109_021D2248
	movs r1, #0x1a
	bx r3
	nop
_021D2294: .4byte ov109_021D2248
	thumb_func_end ov109_021D228C

	thumb_func_start ov109_021D2298
ov109_021D2298: @ 0x021D2298
	ldr r3, _021D22A0 @ =ov109_021D2248
	movs r1, #0x18
	bx r3
	nop
_021D22A0: .4byte ov109_021D2248
	thumb_func_end ov109_021D2298

	thumb_func_start ov109_021D22A4
ov109_021D22A4: @ 0x021D22A4
	ldr r3, _021D22AC @ =ov109_021D2248
	movs r1, #0x19
	bx r3
	nop
_021D22AC: .4byte ov109_021D2248
	thumb_func_end ov109_021D22A4

	thumb_func_start ov109_021D22B0
ov109_021D22B0: @ 0x021D22B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x5f
	bl FUN_02002F38
	ldr r1, _021D2304 @ =0x00000D9C
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #1
	bl FUN_02003858
	ldr r0, _021D2304 @ =0x00000D9C
	movs r2, #2
	ldr r0, [r4, r0]
	movs r1, #0
	lsls r2, r2, #8
	movs r3, #0x5f
	bl FUN_02002F70
	ldr r0, _021D2304 @ =0x00000D9C
	movs r1, #2
	ldr r0, [r4, r0]
	lsls r2, r1, #8
	movs r3, #0x5f
	bl FUN_02002F70
	ldr r0, _021D2304 @ =0x00000D9C
	movs r1, #1
	ldr r0, [r4, r0]
	lsls r2, r1, #9
	movs r3, #0x5f
	bl FUN_02002F70
	ldr r0, _021D2304 @ =0x00000D9C
	movs r2, #2
	ldr r0, [r4, r0]
	movs r1, #3
	lsls r2, r2, #8
	movs r3, #0x5f
	bl FUN_02002F70
	pop {r4, pc}
	.align 2, 0
_021D2304: .4byte 0x00000D9C
	thumb_func_end ov109_021D22B0

	thumb_func_start ov109_021D2308
ov109_021D2308: @ 0x021D2308
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D2340 @ =0x00000D9C
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_02002FA0
	ldr r0, _021D2340 @ =0x00000D9C
	movs r1, #2
	ldr r0, [r4, r0]
	bl FUN_02002FA0
	ldr r0, _021D2340 @ =0x00000D9C
	movs r1, #1
	ldr r0, [r4, r0]
	bl FUN_02002FA0
	ldr r0, _021D2340 @ =0x00000D9C
	movs r1, #3
	ldr r0, [r4, r0]
	bl FUN_02002FA0
	ldr r0, _021D2340 @ =0x00000D9C
	ldr r0, [r4, r0]
	bl FUN_02002F54
	pop {r4, pc}
	nop
_021D2340: .4byte 0x00000D9C
	thumb_func_end ov109_021D2308

	thumb_func_start ov109_021D2344
ov109_021D2344: @ 0x021D2344
	push {r3, lr}
	adds r3, r1, #0
	movs r1, #0
	str r1, [sp]
	ldr r1, _021D2360 @ =0x00000D9C
	lsls r3, r3, #0x18
	ldr r0, [r0, r1]
	ldr r2, _021D2364 @ =0x0000FFFF
	movs r1, #1
	lsrs r3, r3, #0x18
	bl FUN_02003A2C
	pop {r3, pc}
	nop
_021D2360: .4byte 0x00000D9C
_021D2364: .4byte 0x0000FFFF
	thumb_func_end ov109_021D2344

	thumb_func_start ov109_021D2368
ov109_021D2368: @ 0x021D2368
	push {r3, r4, lr}
	sub sp, #0x4c
	ldr r3, _021D23F4 @ =0x021D5B74
	adds r4, r0, #0
	ldm r3!, {r0, r1}
	add r2, sp, #0x2c
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r3, _021D23F8 @ =0x021D5A28
	add r2, sp, #0x18
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	str r0, [r2]
	movs r0, #0x5f
	bl FUN_0200C6E4
	ldr r1, _021D23FC @ =0x00000D94
	add r2, sp, #0x18
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	add r1, sp, #0x2c
	movs r3, #0x20
	bl FUN_0200C73C
	ldr r3, _021D2400 @ =0x021D5A50
	add r2, sp, #0
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, _021D23FC @ =0x00000D94
	ldr r0, [r4, r0]
	bl FUN_0200C704
	ldr r1, _021D2404 @ =0x00000D98
	movs r2, #0xff
	str r0, [r4, r1]
	subs r0, r1, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, r1]
	bl FUN_0200C7C0
	cmp r0, #0
	bne _021D23D8
	bl FUN_02022974
_021D23D8:
	ldr r1, _021D23FC @ =0x00000D94
	add r2, sp, #0
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0200CB30
	cmp r0, #0
	bne _021D23EE
	bl FUN_02022974
_021D23EE:
	add sp, #0x4c
	pop {r3, r4, pc}
	nop
_021D23F4: .4byte 0x021D5B74
_021D23F8: .4byte 0x021D5A28
_021D23FC: .4byte 0x00000D94
_021D2400: .4byte 0x021D5A50
_021D2404: .4byte 0x00000D98
	thumb_func_end ov109_021D2368

	thumb_func_start ov109_021D2408
ov109_021D2408: @ 0x021D2408
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	ldr r2, _021D24BC @ =0x00000D94
	adds r1, r2, #4
	ldr r6, [r0, r2]
	adds r2, #8
	ldr r5, [r0, r1]
	ldr r7, [r0, r2]
	movs r0, #1
	bl FUN_02009704
	movs r0, #0x7a
	movs r1, #0x5f
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0xe
	bl FUN_0200CC3C
	str r4, [sp]
	movs r0, #8
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #5
	str r0, [sp, #0x14]
	adds r0, r7, #0
	movs r1, #2
	adds r2, r6, #0
	adds r3, r5, #0
	bl FUN_0200CDC4
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0xd
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	movs r0, #7
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0xc
	bl FUN_0200CE54
	adds r0, r4, #0
	bl FUN_02006CA8
	bl FUN_02039734
	movs r0, #0x5f
	bl FUN_020394A8
	add r1, sp, #0x18
	adds r4, r0, #0
	blx FUN_020A71B0
	movs r0, #0x20
	str r0, [sp]
	ldr r1, [sp, #0x18]
	adds r0, r7, #0
	ldr r1, [r1, #0xc]
	movs r2, #2
	movs r3, #0xe0
	bl FUN_02002FBC
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D24BC: .4byte 0x00000D94
	thumb_func_end ov109_021D2408

	thumb_func_start ov109_021D24C0
ov109_021D24C0: @ 0x021D24C0
	push {r4, lr}
	ldr r1, _021D24DC @ =0x00000D94
	adds r4, r0, #0
	ldr r0, [r4, r1]
	adds r1, r1, #4
	ldr r1, [r4, r1]
	bl FUN_0200D0B0
	ldr r0, _021D24DC @ =0x00000D94
	ldr r0, [r4, r0]
	bl FUN_0200C8D4
	pop {r4, pc}
	nop
_021D24DC: .4byte 0x00000D94
	thumb_func_end ov109_021D24C0

	thumb_func_start ov109_021D24E0
ov109_021D24E0: @ 0x021D24E0
	adds r2, r1, #0
	ldr r1, _021D24F0 @ =0x00000D94
	adds r3, r0, #0
	ldr r0, [r3, r1]
	adds r1, r1, #4
	ldr r1, [r3, r1]
	ldr r3, _021D24F4 @ =FUN_0200CE6C
	bx r3
	.align 2, 0
_021D24F0: .4byte 0x00000D94
_021D24F4: .4byte FUN_0200CE6C
	thumb_func_end ov109_021D24E0

	thumb_func_start ov109_021D24F8
ov109_021D24F8: @ 0x021D24F8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	ldr r0, _021D25D8 @ =0x00000C9C
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5f
	adds r4, r6, r0
	str r1, [sp, #4]
	adds r0, #0xe8
	movs r1, #1
	ldr r0, [r6, r0]
	adds r2, r1, #0
	movs r3, #0xf
	bl FUN_0200DAA4
	adds r0, r6, #0
	adds r0, #0xcc
	ldr r0, [r0]
	movs r1, #1
	ldr r0, [r0, #0x18]
	movs r2, #0xa
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x5f
	str r0, [sp, #4]
	ldr r0, _021D25DC @ =0x00000D84
	movs r3, #0xe
	ldr r0, [r6, r0]
	bl FUN_0200DD0C
	adds r0, r6, #0
	adds r0, #0xcc
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	bl FUN_0200DD08
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xe0
	str r0, [sp, #8]
	ldr r0, _021D25E0 @ =0x00000D9C
	movs r1, #0x26
	ldr r0, [r6, r0]
	movs r3, #0x5f
	bl FUN_02003050
	movs r0, #0
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #0xf0
	str r0, [sp, #8]
	ldr r0, _021D25E0 @ =0x00000D9C
	movs r1, #0xe
	ldr r0, [r6, r0]
	movs r2, #7
	movs r3, #0x5f
	bl FUN_02003050
	movs r2, #0x5e
	movs r0, #0
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x5f
	bl FUN_0200B144
	str r0, [r4, #4]
	movs r0, #0x5f
	bl FUN_0200B358
	str r0, [r4, #8]
	ldr r0, _021D25DC @ =0x00000D84
	adds r1, r4, #0
	ldr r0, [r6, r0]
	ldr r2, _021D25E4 @ =0x021D59B8
	adds r1, #0xc
	bl FUN_0201A8D4
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x5f
	bl FUN_02023790
	str r0, [r4, #0x6c]
	movs r4, #0
	adds r5, r6, #0
	movs r7, #8
_021D25B0:
	adds r0, r7, #0
	movs r1, #0x5f
	bl FUN_02023790
	adds r1, r5, #0
	adds r1, #0x98
	adds r4, r4, #1
	adds r5, r5, #4
	str r0, [r1]
	cmp r4, #5
	blt _021D25B0
	adds r0, r6, #0
	adds r6, #0xcc
	ldr r1, [r6]
	ldr r1, [r1, #8]
	bl ov109_021D27AC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D25D8: .4byte 0x00000C9C
_021D25DC: .4byte 0x00000D84
_021D25E0: .4byte 0x00000D9C
_021D25E4: .4byte 0x021D59B8
	thumb_func_end ov109_021D24F8

	thumb_func_start ov109_021D25E8
ov109_021D25E8: @ 0x021D25E8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _021D2630 @ =0x00000C9C
	adds r4, r5, r0
	adds r6, r4, #0
	adds r6, #0xc
	adds r0, r6, #0
	bl FUN_0201ACF4
	adds r0, r6, #0
	bl FUN_0201A8FC
	adds r0, r5, #0
	bl ov109_021D27F0
	ldr r0, [r4, #4]
	bl FUN_0200B190
	ldr r0, [r4, #8]
	bl FUN_0200B3F0
	ldr r0, [r4, #0x6c]
	bl FUN_020237BC
	movs r4, #0
_021D261A:
	adds r0, r5, #0
	adds r0, #0x98
	ldr r0, [r0]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021D261A
	pop {r4, r5, r6, pc}
	nop
_021D2630: .4byte 0x00000C9C
	thumb_func_end ov109_021D25E8

	thumb_func_start ov109_021D2634
ov109_021D2634: @ 0x021D2634
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	adds r6, r1, #0
	ldr r1, _021D2688 @ =0x00000C9C
	adds r4, r0, r1
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xa
	movs r3, #0xe
	bl FUN_0200E060
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r0, [r4, #4]
	ldr r2, [r4, #0x6c]
	adds r1, r6, #0
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r4, #0x6c]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0201D738
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_021D2688: .4byte 0x00000C9C
	thumb_func_end ov109_021D2634

	thumb_func_start ov109_021D268C
ov109_021D268C: @ 0x021D268C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r1, #0
	ldr r1, _021D2710 @ =0x00000C9C
	adds r6, r2, #0
	adds r4, r0, r1
	adds r5, r4, #0
	adds r5, #0xc
	bl FUN_0203608C
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_0200B498
	ldr r0, [r4, #8]
	movs r1, #2
	adds r2, r6, #0
	bl FUN_0200B498
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x5f
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [r4, #4]
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x6c]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xa
	movs r3, #0xe
	bl FUN_0200E060
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r4, #0x6c]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0201D738
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D2710: .4byte 0x00000C9C
	thumb_func_end ov109_021D268C

	thumb_func_start ov109_021D2714
ov109_021D2714: @ 0x021D2714
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r7, r1, #0
	ldr r1, _021D2784 @ =0x00000C9C
	adds r4, r0, r1
	adds r5, r4, #0
	ldr r0, [r4, #8]
	movs r1, #0
	adds r5, #0xc
	bl FUN_0200B70C
	movs r0, #1
	lsls r0, r0, #8
	movs r1, #0x5f
	bl FUN_02023790
	adds r6, r0, #0
	ldr r0, [r4, #4]
	adds r1, r7, #0
	adds r2, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r4, #8]
	ldr r1, [r4, #0x6c]
	adds r2, r6, #0
	bl FUN_0200C388
	adds r0, r6, #0
	bl FUN_020237BC
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0xa
	movs r3, #0xe
	bl FUN_0200E060
	adds r0, r5, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r3, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	ldr r2, [r4, #0x6c]
	adds r0, r5, #0
	movs r1, #1
	bl FUN_0201D738
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_021D2784: .4byte 0x00000C9C
	thumb_func_end ov109_021D2714

	thumb_func_start ov109_021D2788
ov109_021D2788: @ 0x021D2788
	push {r3, r4, r5, lr}
	ldr r4, _021D27A8 @ =0x00000CA8
	adds r5, r0, #0
	adds r0, r5, r4
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, r4
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, r4
	bl FUN_0201A9A4
	pop {r3, r4, r5, pc}
	nop
_021D27A8: .4byte 0x00000CA8
	thumb_func_end ov109_021D2788

	thumb_func_start ov109_021D27AC
ov109_021D27AC: @ 0x021D27AC
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	adds r7, r0, #0
	ldr r0, [sp]
	ldr r1, _021D27E4 @ =0x00000C9C
	lsls r2, r0, #2
	ldr r0, _021D27E8 @ =0x021D5A68
	movs r6, #0
	ldr r4, [r0, r2]
	ldr r0, [sp]
	str r0, [r7, r1]
	cmp r0, #0
	ble _021D27E2
	adds r5, r7, r1
	adds r5, #0x1c
_021D27CA:
	ldr r0, _021D27EC @ =0x00000D84
	adds r1, r5, #0
	ldr r0, [r7, r0]
	adds r2, r4, #0
	bl FUN_0201A8D4
	ldr r0, [sp]
	adds r6, r6, #1
	adds r4, #8
	adds r5, #0x10
	cmp r6, r0
	blt _021D27CA
_021D27E2:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D27E4: .4byte 0x00000C9C
_021D27E8: .4byte 0x021D5A68
_021D27EC: .4byte 0x00000D84
	thumb_func_end ov109_021D27AC

	thumb_func_start ov109_021D27F0
ov109_021D27F0: @ 0x021D27F0
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _021D281C @ =0x00000C9C
	adds r6, r0, #0
	ldr r0, [r6, r7]
	movs r4, #0
	cmp r0, #0
	ble _021D2818
	adds r5, r6, r7
	adds r5, #0x1c
_021D2802:
	adds r0, r5, #0
	bl FUN_0201ACF4
	adds r0, r5, #0
	bl FUN_0201A8FC
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, r0
	blt _021D2802
_021D2818:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D281C: .4byte 0x00000C9C
	thumb_func_end ov109_021D27F0

	thumb_func_start ov109_021D2820
ov109_021D2820: @ 0x021D2820
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	ldr r1, _021D2870 @ =0x00000CB8
	lsls r4, r2, #4
	adds r5, r0, r1
	movs r1, #1
	adds r7, r3, #0
	adds r0, r5, r4
	adds r2, r1, #0
	movs r3, #0xe
	bl FUN_0200DC48
	adds r0, r5, r4
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0
	adds r1, r6, #0
	adds r2, r0, #0
	movs r3, #0x40
	bl FUN_02002EEC
	movs r1, #0
	adds r3, r0, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r7, [sp, #8]
	adds r0, r5, r4
	adds r2, r6, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	adds r0, r5, r4
	bl FUN_0201A9A4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2870: .4byte 0x00000CB8
	thumb_func_end ov109_021D2820

	thumb_func_start ov109_021D2874
ov109_021D2874: @ 0x021D2874
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r7, r1, #0
	str r2, [sp]
	adds r5, r3, #0
	ldr r4, _021D289C @ =0x00010200
	bl FUN_0203608C
	cmp r5, r0
	bne _021D288C
	movs r4, #0xc1
	lsls r4, r4, #0xa
_021D288C:
	ldr r2, [sp]
	adds r0, r6, #0
	adds r1, r7, #0
	adds r3, r4, #0
	bl ov109_021D2820
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D289C: .4byte 0x00010200
	thumb_func_end ov109_021D2874

	thumb_func_start ov109_021D28A0
ov109_021D28A0: @ 0x021D28A0
	push {r3, r4, r5, lr}
	ldr r2, _021D28C0 @ =0x00000CB8
	lsls r4, r1, #4
	adds r5, r0, r2
	adds r0, r5, r4
	movs r1, #1
	bl FUN_0200E084
	adds r0, r5, r4
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, r4
	bl FUN_0201A9A4
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D28C0: .4byte 0x00000CB8
	thumb_func_end ov109_021D28A0

	thumb_func_start ov109_021D28C4
ov109_021D28C4: @ 0x021D28C4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldr r0, _021D292C @ =0x00000D0C
	adds r4, r5, r0
	movs r0, #0x5f
	bl FUN_020203AC
	str r0, [r4, #0x1c]
	movs r2, #0
	str r2, [r4, #8]
	str r2, [r4, #0xc]
	ldr r0, _021D2930 @ =0x0000E93F
	str r2, [r4, #0x10]
	strh r0, [r4, #0x14]
	strh r2, [r4, #0x16]
	ldr r0, _021D2934 @ =0x00143000
	ldr r1, _021D292C @ =0x00000D0C
	strh r2, [r4, #0x18]
	str r0, [r5, r1]
	ldr r0, _021D2938 @ =0x00000444
	str r0, [r4, #4]
	str r2, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	adds r2, r4, #0
	str r0, [sp, #8]
	ldr r3, [r4, #4]
	adds r0, r4, #0
	lsls r3, r3, #0x10
	ldr r1, [r5, r1]
	adds r0, #8
	adds r2, #0x14
	lsrs r3, r3, #0x10
	bl FUN_020206D0
	movs r1, #0
	movs r0, #1
	lsls r0, r0, #0xc
	str r0, [sp, #0x10]
	str r1, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [r4, #0x1c]
	add r0, sp, #0xc
	bl FUN_02020680
	ldr r0, [r4, #0x1c]
	bl FUN_020203D4
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D292C: .4byte 0x00000D0C
_021D2930: .4byte 0x0000E93F
_021D2934: .4byte 0x00143000
_021D2938: .4byte 0x00000444
	thumb_func_end ov109_021D28C4

	thumb_func_start ov109_021D293C
ov109_021D293C: @ 0x021D293C
	ldr r1, _021D2944 @ =0x00000D28
	ldr r3, _021D2948 @ =FUN_020203B8
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D2944: .4byte 0x00000D28
_021D2948: .4byte FUN_020203B8
	thumb_func_end ov109_021D293C

	thumb_func_start ov109_021D294C
ov109_021D294C: @ 0x021D294C
	push {r4, r5, r6, lr}
	ldr r1, _021D298C @ =0x00000D2C
	movs r6, #0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x10
	movs r1, #2
	adds r2, r6, #0
	movs r4, #3
	bl FUN_0201E564
	adds r2, r5, #0
	adds r2, #0x18
	movs r0, #1
_021D2968:
	ldrh r1, [r2, #0x16]
	cmp r1, #1
	bne _021D2978
	ldrh r1, [r2, #0x12]
	adds r6, r0, #0
	str r1, [r5]
	ldrh r1, [r2, #0x14]
	str r1, [r5, #4]
_021D2978:
	subs r2, #8
	subs r4, r4, #1
	bpl _021D2968
	ldr r0, [r5, #0xc]
	eors r0, r6
	ands r0, r6
	str r0, [r5, #8]
	str r6, [r5, #0xc]
	pop {r4, r5, r6, pc}
	nop
_021D298C: .4byte 0x00000D2C
	thumb_func_end ov109_021D294C

	thumb_func_start ov109_021D2990
ov109_021D2990: @ 0x021D2990
	ldr r1, [r0]
	ldr r0, [r0, #4]
	cmp r0, #0x20
	blt _021D29A8
	cmp r0, #0x9f
	bgt _021D29A8
	cmp r1, #0x40
	blt _021D29A8
	cmp r1, #0xbf
	bgt _021D29A8
	movs r0, #1
	bx lr
_021D29A8:
	movs r0, #0
	bx lr
	thumb_func_end ov109_021D2990

	thumb_func_start ov109_021D29AC
ov109_021D29AC: @ 0x021D29AC
	push {r3, lr}
	ldr r1, _021D29C8 @ =0x00000D2C
	adds r0, r0, r1
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _021D29C4
	bl ov109_021D2990
	cmp r0, #1
	bne _021D29C4
	movs r0, #1
	pop {r3, pc}
_021D29C4:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
_021D29C8: .4byte 0x00000D2C
	thumb_func_end ov109_021D29AC

	thumb_func_start ov109_021D29CC
ov109_021D29CC: @ 0x021D29CC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	adds r0, #0xcc
	ldr r0, [r0]
	adds r4, r6, #0
	ldr r0, [r0, #8]
	movs r2, #0x36
	lsls r5, r0, #2
	movs r0, #0x5f
	ldr r3, _021D2A4C @ =0x021D5A80
	str r0, [sp]
	movs r1, #0
	adds r4, #0xd4
	adds r0, r4, #0
	str r1, [sp, #4]
	lsls r2, r2, #6
	ldr r2, [r6, r2]
	ldr r3, [r3, r5]
	adds r0, #0x54
	bl FUN_0207389C
	adds r0, r4, #0
	adds r0, #0x54
	bl FUN_020738EC
	adds r0, r4, #0
	adds r1, r4, #0
	adds r0, #0x68
	adds r1, #0x54
	bl FUN_02073B70
	ldr r1, _021D2A50 @ =0x021D5A98
	movs r0, #0
	adds r2, r4, #0
	ldr r1, [r1, r5]
	str r0, [r4, #0x3c]
	str r1, [r4, #0x44]
	movs r1, #1
	lsls r1, r1, #0xc
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	str r1, [r4, #0x20]
	adds r1, r4, #0
	adds r1, #0x4c
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x4e
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r6, #0xd4
	ldr r1, _021D2A54 @ =0xFFFDC000
	str r0, [r6]
	str r1, [r4, #4]
	str r0, [r4, #8]
	ldm r4!, {r0, r1}
	adds r2, #0xc
	stm r2!, {r0, r1}
	ldr r0, [r4]
	str r0, [r2]
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D2A4C: .4byte 0x021D5A80
_021D2A50: .4byte 0x021D5A98
_021D2A54: .4byte 0xFFFDC000
	thumb_func_end ov109_021D29CC

	thumb_func_start ov109_021D2A58
ov109_021D2A58: @ 0x021D2A58
	movs r1, #0x4a
	lsls r1, r1, #2
	ldr r3, _021D2A64 @ =FUN_0207395C
	adds r0, r0, r1
	bx r3
	nop
_021D2A64: .4byte FUN_0207395C
	thumb_func_end ov109_021D2A58

	thumb_func_start ov109_021D2A68
ov109_021D2A68: @ 0x021D2A68
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xd4
	ldr r0, [r4, #0x3c]
	str r0, [sp]
	ldr r1, [r4, #0x40]
	add r0, sp, #0
	bl ov109_021D39D4
	ldr r1, [r4, #0x44]
	add r0, sp, #0
	bl ov109_021D39D4
	ldr r1, [sp]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	movs r1, #0x5a
	asrs r0, r0, #0xc
	lsls r1, r1, #2
	subs r0, r1, r0
	blx FUN_020E1F6C
	adds r0, r4, #0
	adds r0, #0x4e
	strh r1, [r0]
	adds r5, #0xd4
	ldr r1, [r5]
	ldr r0, [r4, #0x30]
	ldr r2, [r4, #0x24]
	adds r0, r1, r0
	adds r0, r2, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #4]
	ldr r0, [r4, #0x34]
	ldr r2, [r4, #0x28]
	adds r0, r1, r0
	adds r0, r2, r0
	str r0, [r4, #0x10]
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x38]
	ldr r2, [r4, #0x2c]
	adds r0, r1, r0
	adds r0, r2, r0
	str r0, [r4, #0x14]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D2A68

	thumb_func_start ov109_021D2AC8
ov109_021D2AC8: @ 0x021D2AC8
	push {r3, lr}
	adds r3, r0, #0
	adds r3, #0xd4
	adds r0, r3, #0
	adds r1, r3, #0
	adds r2, r3, #0
	adds r0, #0x68
	adds r1, #0xc
	adds r2, #0x18
	adds r3, #0x4c
	bl FUN_02073BC8
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov109_021D2AC8

	thumb_func_start ov109_021D2AE4
ov109_021D2AE4: @ 0x021D2AE4
	ldr r3, _021D2AEC @ =ov109_021D39D4
	adds r0, #0x3c
	bx r3
	nop
_021D2AEC: .4byte ov109_021D39D4
	thumb_func_end ov109_021D2AE4

	thumb_func_start ov109_021D2AF0
ov109_021D2AF0: @ 0x021D2AF0
	ldr r3, _021D2AF4 @ =ov109_021D2B00
	bx r3
	.align 2, 0
_021D2AF4: .4byte ov109_021D2B00
	thumb_func_end ov109_021D2AF0

	thumb_func_start ov109_021D2AF8
ov109_021D2AF8: @ 0x021D2AF8
	ldr r3, _021D2AFC @ =ov109_021D2BD4
	bx r3
	.align 2, 0
_021D2AFC: .4byte ov109_021D2BD4
	thumb_func_end ov109_021D2AF8

	thumb_func_start ov109_021D2B00
ov109_021D2B00: @ 0x021D2B00
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	movs r0, #0x5f
	movs r1, #0
	str r0, [sp]
	movs r2, #0x36
	movs r5, #0x19
	lsls r5, r5, #4
	str r1, [sp, #4]
	lsls r2, r2, #6
	ldr r2, [r7, r2]
	adds r0, r7, r5
	adds r3, r1, #0
	bl FUN_0207389C
	adds r0, r7, r5
	bl FUN_020738EC
	movs r0, #0x5f
	str r0, [sp]
	movs r1, #0
	movs r2, #0x36
	adds r0, r7, r5
	str r1, [sp, #4]
	lsls r2, r2, #6
	ldr r2, [r7, r2]
	adds r0, #0x14
	movs r3, #5
	bl FUN_0207389C
	adds r0, r7, r5
	adds r0, #0x14
	bl FUN_020738EC
	adds r4, r7, r5
	ldr r0, _021D2BCC @ =0x021D5A14
	adds r4, #0x28
	str r0, [sp, #0xc]
	ldr r0, _021D2BD0 @ =0x021D5A3C
	adds r5, r7, r5
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0x10]
	adds r5, #0x8c
	adds r6, r4, #0
_021D2B5C:
	movs r0, #0x5f
	str r0, [sp]
	movs r0, #0
	movs r2, #0x36
	str r0, [sp, #4]
	ldr r3, [sp, #0xc]
	lsls r2, r2, #6
	ldr r2, [r7, r2]
	ldr r3, [r3]
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0207389C
	adds r0, r4, #0
	bl FUN_020738EC
	movs r0, #0x5f
	str r0, [sp]
	movs r0, #0
	movs r2, #0x36
	str r0, [sp, #4]
	ldr r3, [sp, #8]
	lsls r2, r2, #6
	ldr r2, [r7, r2]
	ldr r3, [r3]
	adds r0, r5, #0
	movs r1, #0
	bl FUN_020739B4
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #0x5f
	bl FUN_02073A3C
	adds r0, r5, #0
	adds r1, r6, #0
	bl FUN_02073A5C
	ldr r0, [sp, #0x10]
	adds r4, #0x14
	adds r0, r0, #1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	adds r5, #0x24
	adds r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	adds r6, #0x14
	adds r0, r0, #4
	str r0, [sp, #8]
	ldr r0, [sp, #0x10]
	cmp r0, #5
	blt _021D2B5C
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D2BCC: .4byte 0x021D5A14
_021D2BD0: .4byte 0x021D5A3C
	thumb_func_end ov109_021D2B00

	thumb_func_start ov109_021D2BD4
ov109_021D2BD4: @ 0x021D2BD4
	push {r3, r4, r5, r6, r7, lr}
	movs r7, #0x19
	adds r5, r0, #0
	lsls r7, r7, #4
	adds r0, r5, r7
	bl FUN_0207395C
	adds r0, r5, r7
	adds r0, #0x14
	bl FUN_0207395C
	adds r4, r5, r7
	adds r5, r5, r7
	movs r6, #0
	adds r4, #0x28
	adds r5, #0x8c
_021D2BF4:
	adds r0, r4, #0
	bl FUN_0207395C
	adds r0, r5, #0
	bl FUN_020739F0
	adds r6, r6, #1
	adds r4, #0x14
	adds r5, #0x24
	cmp r6, #5
	blt _021D2BF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D2BD4

	thumb_func_start ov109_021D2C0C
ov109_021D2C0C: @ 0x021D2C0C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0x19
	adds r5, r0, #0
	adds r0, r4, #0
	lsls r1, r1, #4
	adds r0, #0x5c
	adds r1, r5, r1
	bl FUN_02073B70
	movs r0, #1
	str r0, [r4, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov109_021D2EC0
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov109_021D2F68
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D2C0C

	thumb_func_start ov109_021D2C38
ov109_021D2C38: @ 0x021D2C38
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x30]
	movs r1, #0x19
	lsls r1, r1, #4
	adds r4, r5, r1
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _021D2CC4
	subs r1, #0x50
	adds r0, r4, r1
	str r0, [sp, #8]
	movs r0, #0x4b
	lsls r0, r0, #4
	adds r0, r4, r0
	str r0, [sp]
	ldr r0, _021D2CC8 @ =0x0000071C
	str r4, [sp, #4]
	adds r7, r4, #0
	adds r6, r4, r0
_021D2C66:
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2C7C
	movs r1, #0x41
	lsls r1, r1, #2
	ldr r0, [sp, #8]
	adds r1, r5, r1
	bl ov109_021D2D78
_021D2C7C:
	movs r0, #0x4b
	ldr r1, [sp, #4]
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021D2C90
	ldr r1, [sp]
	adds r0, r5, #0
	bl ov109_021D2EF4
_021D2C90:
	ldr r0, _021D2CC8 @ =0x0000071C
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021D2CA0
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov109_021D2FA4
_021D2CA0:
	ldr r0, [sp, #8]
	adds r4, #0xb0
	adds r0, #0xb0
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	adds r7, #0x68
	adds r0, #0x7c
	str r0, [sp, #4]
	ldr r0, [sp]
	adds r6, #0x68
	adds r0, #0x7c
	str r0, [sp]
	ldr r0, [sp, #0x10]
	adds r1, r0, #1
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x10]
	cmp r1, r0
	blt _021D2C66
_021D2CC4:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D2CC8: .4byte 0x0000071C
	thumb_func_end ov109_021D2C38

	thumb_func_start ov109_021D2CCC
ov109_021D2CCC: @ 0x021D2CCC
	push {r3, r4, r5, r6, r7, lr}
	ldr r1, [r0, #0x30]
	movs r7, #0
	str r1, [sp]
	movs r1, #0x19
	lsls r1, r1, #4
	adds r2, r0, r1
	movs r0, #0x4b
	lsls r0, r0, #4
	adds r4, r2, r0
	ldr r0, _021D2D40 @ =0x0000071C
	subs r1, #0x50
	adds r5, r2, r0
	ldr r0, [sp]
	adds r6, r2, r1
	cmp r0, #0
	ble _021D2D3E
_021D2CEE:
	ldr r0, [r6, #4]
	cmp r0, #0
	beq _021D2D08
	adds r0, r6, #0
	adds r1, r6, #0
	adds r2, r6, #0
	adds r3, r6, #0
	adds r0, #0x5c
	adds r1, #0x44
	adds r2, #0x38
	adds r3, #0x24
	bl FUN_02073BC8
_021D2D08:
	ldr r0, [r4]
	cmp r0, #0
	beq _021D2D20
	adds r0, r4, #0
	adds r1, r4, #0
	adds r2, r4, #0
	adds r0, #0x24
	adds r1, #0x18
	adds r2, #0xc
	adds r3, r4, #4
	bl FUN_02073BC8
_021D2D20:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D2D30
	adds r0, r5, #0
	adds r0, #0x10
	adds r1, r5, #4
	bl FUN_02073BB4
_021D2D30:
	ldr r0, [sp]
	adds r7, r7, #1
	adds r6, #0xb0
	adds r4, #0x7c
	adds r5, #0x68
	cmp r7, r0
	blt _021D2CEE
_021D2D3E:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D2D40: .4byte 0x0000071C
	thumb_func_end ov109_021D2CCC

	thumb_func_start ov109_021D2D44
ov109_021D2D44: @ 0x021D2D44
	push {r3, r4, r5, r6, r7, lr}
	str r1, [sp]
	movs r1, #0x19
	lsls r1, r1, #4
	ldr r7, [r0, #0x30]
	movs r6, #0
	adds r4, r0, r1
	cmp r7, #0
	ble _021D2D76
	subs r1, #0x34
	adds r5, r4, r1
_021D2D5A:
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D2D6C
	ldr r1, [sp]
	adds r0, r5, #0
	bl ov109_021D39D4
_021D2D6C:
	adds r6, r6, #1
	adds r4, #0xb0
	adds r5, #0xb0
	cmp r6, r7
	blt _021D2D5A
_021D2D76:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D2D44

	thumb_func_start ov109_021D2D78
ov109_021D2D78: @ 0x021D2D78
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #0x1c]
	adds r4, r1, #0
	str r0, [sp]
	ldr r1, [r5, #0x20]
	add r0, sp, #0
	bl ov109_021D39D4
	ldr r1, [sp]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	lsls r0, r0, #4
	lsrs r6, r0, #0x10
	adds r0, r6, #0
	bl FUN_0201D1D4
	ldr r2, [r5, #0x50]
	ldr r1, [r4]
	adds r2, r2, r1
	movs r1, #0x16
	muls r1, r0, r1
	adds r0, r2, r1
	str r0, [r5, #0x44]
	movs r0, #6
	ldr r1, [r5, #0x54]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	ldr r0, [r4, #4]
	adds r0, r1, r0
	str r0, [r5, #0x48]
	adds r0, r6, #0
	bl FUN_0201D15C
	ldr r2, [r5, #0x58]
	ldr r1, [r4, #8]
	adds r2, r2, r1
	movs r1, #0x16
	muls r1, r0, r1
	adds r0, r2, r1
	str r0, [r5, #0x4c]
	ldr r1, [r5, #0x2c]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	strh r0, [r5, #0x24]
	ldr r1, [r5, #0x30]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	strh r0, [r5, #0x26]
	ldr r1, [r5, #0x34]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r0, r0, #0xc
	strh r0, [r5, #0x28]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov109_021D2D78

	thumb_func_start ov109_021D2DF8
ov109_021D2DF8: @ 0x021D2DF8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x2c
	movs r1, #0x19
	ldr r6, [r0, #0x30]
	lsls r1, r1, #4
	adds r1, r0, r1
	mov lr, r1
	ldr r0, [r0, #0x2c]
	movs r1, #0xa
	adds r2, r6, #0
	muls r2, r1, r2
	ldr r1, _021D2EB8 @ =0x021D5C80
	lsls r4, r0, #1
	adds r0, r1, r2
	ldrh r0, [r4, r0]
	movs r3, #0
	add r1, sp, #4
	lsls r5, r0, #0xc
	ldr r0, _021D2EBC @ =0x0000FFFF
	add r2, sp, #0x18
_021D2E20:
	stm r1!, {r3}
	adds r3, r3, #1
	stm r2!, {r0}
	cmp r3, r6
	blt _021D2E20
	movs r3, #0
	cmp r6, #0
	ble _021D2E58
	movs r0, #0x5a
	lsls r0, r0, #0xe
	mov r1, lr
	add r2, sp, #0x18
	adds r7, r5, r0
_021D2E3A:
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r4, [r1, r0]
	subs r0, r5, r4
	bpl _021D2E46
	subs r0, r7, r4
_021D2E46:
	asrs r4, r0, #0xb
	lsrs r4, r4, #0x14
	adds r4, r0, r4
	asrs r0, r4, #0xc
	adds r3, r3, #1
	stm r2!, {r0}
	adds r1, #0xb0
	cmp r3, r6
	blt _021D2E3A
_021D2E58:
	movs r7, #1
	cmp r6, #1
	ble _021D2EA2
	add r0, sp, #8
	str r0, [sp]
	add r5, sp, #0x18
_021D2E64:
	ldr r0, [sp]
	add r2, sp, #4
	ldr r0, [r0]
	mov ip, r0
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	subs r0, r7, #1
	lsls r3, r0, #2
	adds r2, r2, r3
	b _021D2E7E
_021D2E78:
	str r3, [r2, #4]
	subs r2, r2, #4
	subs r0, r0, #1
_021D2E7E:
	cmp r0, #0
	blt _021D2E8C
	ldr r3, [r2]
	lsls r4, r3, #2
	ldr r4, [r5, r4]
	cmp r4, r1
	bgt _021D2E78
_021D2E8C:
	lsls r1, r0, #2
	add r0, sp, #4
	adds r1, r0, r1
	mov r0, ip
	str r0, [r1, #4]
	ldr r0, [sp]
	adds r7, r7, #1
	adds r0, r0, #4
	str r0, [sp]
	cmp r7, r6
	blt _021D2E64
_021D2EA2:
	movs r1, #5
	lsls r1, r1, #6
	mov r0, lr
	adds r2, r0, r1
	ldr r1, [sp, #4]
	movs r0, #0xb0
	muls r0, r1, r0
	adds r0, r2, r0
	add sp, #0x2c
	pop {r4, r5, r6, r7, pc}
	nop
_021D2EB8: .4byte 0x021D5C80
_021D2EBC: .4byte 0x0000FFFF
	thumb_func_end ov109_021D2DF8

	thumb_func_start ov109_021D2EC0
ov109_021D2EC0: @ 0x021D2EC0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x19
	lsls r0, r0, #4
	adds r3, r5, r0
	movs r0, #0x4b
	lsls r0, r0, #4
	adds r2, r3, r0
	ldr r4, [r1, #0x10]
	movs r0, #0x7c
	muls r0, r4, r0
	movs r6, #1
	adds r4, r2, r0
	str r6, [r2, r0]
	adds r0, r4, #0
	adds r3, #0x14
	str r1, [r4, #0x78]
	adds r0, #0x24
	adds r1, r3, #0
	bl FUN_02073B70
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov109_021D2EF4
	pop {r4, r5, r6, pc}
	thumb_func_end ov109_021D2EC0

	thumb_func_start ov109_021D2EF4
ov109_021D2EF4: @ 0x021D2EF4
	push {r4, r5}
	adds r3, r1, #0
	movs r0, #0
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	strh r0, [r3, #8]
	ldr r5, [r3, #0x78]
	adds r4, r3, #0
	adds r5, #0x44
	adds r4, #0x18
	ldm r5!, {r0, r1}
	adds r2, r4, #0
	stm r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	ldr r0, [r3, #0x78]
	ldr r1, [r2]
	ldr r0, [r0, #0x50]
	subs r0, r1, r0
	str r0, [r2]
	ldr r0, [r3, #0x78]
	ldr r1, [r3, #0x1c]
	ldr r0, [r0, #0x54]
	subs r0, r1, r0
	str r0, [r3, #0x1c]
	ldr r0, [r3, #0x78]
	ldr r1, [r3, #0x20]
	ldr r0, [r0, #0x58]
	subs r0, r1, r0
	str r0, [r3, #0x20]
	movs r0, #2
	ldr r1, [r3, #0x1c]
	lsls r0, r0, #0xc
	adds r0, r1, r0
	str r0, [r3, #0x1c]
	ldr r0, [r3, #0x78]
	ldr r1, [r0, #0x54]
	cmp r1, #0
	bge _021D2F44
	rsbs r1, r1, #0
_021D2F44:
	asrs r0, r1, #6
	lsrs r0, r0, #0x19
	adds r0, r1, r0
	asrs r1, r0, #7
	movs r0, #2
	lsls r0, r0, #0xa
	cmp r1, r0
	ble _021D2F56
	adds r1, r0, #0
_021D2F56:
	movs r0, #1
	lsls r0, r0, #0xc
	subs r0, r0, r1
	str r0, [r3, #0xc]
	str r0, [r3, #0x10]
	str r0, [r3, #0x14]
	pop {r4, r5}
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D2EF4

	thumb_func_start ov109_021D2F68
ov109_021D2F68: @ 0x021D2F68
	push {r3, r4, r5, lr}
	movs r2, #0x19
	lsls r2, r2, #4
	adds r3, r0, r2
	ldr r0, _021D2FA0 @ =0x0000071C
	ldr r4, [r1, #0x10]
	adds r2, r3, r0
	adds r5, r4, #0
	movs r0, #0x68
	muls r5, r0, r5
	movs r4, #1
	str r4, [r2, r5]
	adds r4, r3, #0
	adds r0, r2, r5
	str r1, [r0, #0x64]
	ldr r2, [r1, #0x10]
	movs r1, #0x14
	adds r4, #0x28
	muls r1, r2, r1
	adds r1, r4, r1
	movs r4, #0x24
	adds r3, #0x8c
	muls r4, r2, r4
	adds r0, #0x10
	adds r2, r3, r4
	bl FUN_02073B90
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D2FA0: .4byte 0x0000071C
	thumb_func_end ov109_021D2F68

	thumb_func_start ov109_021D2FA4
ov109_021D2FA4: @ 0x021D2FA4
	push {r3, r4, r5, lr}
	adds r2, r1, #0
	ldr r5, [r2, #0x64]
	adds r3, r0, #0
	adds r5, #0x44
	ldm r5!, {r0, r1}
	adds r4, r2, #4
	stm r4!, {r0, r1}
	ldr r0, [r5]
	str r0, [r4]
	movs r0, #5
	ldr r1, [r2, #8]
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [r2, #8]
	movs r0, #0x87
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, [r2, #0x64]
	movs r2, #1
	ldr r1, [r0, #0x10]
	movs r0, #0x24
	muls r0, r1, r0
	movs r1, #1
	adds r0, r3, r0
	lsls r1, r1, #0xc
	bl FUN_02073AC0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D2FA4

	thumb_func_start ov109_021D2FE0
ov109_021D2FE0: @ 0x021D2FE0
	push {r3, r4, r5, lr}
	ldr r4, [sp, #0x18]
	adds r5, r0, #0
	str r1, [r4, #0xc]
	str r2, [r4, #0x10]
	ldr r0, [sp, #0x10]
	str r3, [r4, #0x14]
	str r2, [r4, #0x18]
	lsls r0, r0, #0xc
	str r0, [r4, #0x1c]
	ldr r0, [sp, #0x14]
	movs r1, #0x18
	lsls r0, r0, #0xc
	str r0, [r4, #0x20]
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	str r0, [r4, #8]
	movs r0, #0x5f
	bl FUN_02018184
	adds r1, r0, #0
	adds r3, r1, #0
	movs r2, #0x18
	movs r0, #0
_021D3012:
	strb r0, [r3]
	adds r3, r3, #1
	subs r2, r2, #1
	bne _021D3012
	ldr r0, _021D3028 @ =ov109_021D302C
	str r5, [r1, #0x14]
	movs r2, #0
	str r4, [r1, #0x10]
	bl FUN_0200D9E8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D3028: .4byte ov109_021D302C
	thumb_func_end ov109_021D2FE0

	thumb_func_start ov109_021D302C
ov109_021D302C: @ 0x021D302C
	push {r4, r5, r6, lr}
	ldr r4, _021D305C @ =0x021D59D8
	adds r6, r0, #0
	adds r5, r1, #0
_021D3034:
	ldr r1, [r5]
	adds r0, r5, #0
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021D3034
	cmp r0, #2
	bne _021D3058
	ldr r0, [r5, #0x10]
	movs r1, #1
	str r1, [r0, #8]
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_0200DA58
_021D3058:
	pop {r4, r5, r6, pc}
	nop
_021D305C: .4byte 0x021D59D8
	thumb_func_end ov109_021D302C

	thumb_func_start ov109_021D3060
ov109_021D3060: @ 0x021D3060
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	ldr r1, [r4, #0x10]
	lsls r0, r0, #0xc
	str r0, [r1, #0x38]
	str r0, [r1, #0x3c]
	str r0, [r1, #0x40]
	movs r0, #3
	lsls r0, r0, #0x12
	str r0, [r1, #0x54]
	ldr r0, [r4, #0x14]
	bl ov109_021D2C0C
	movs r0, #2
	lsls r0, r0, #0xe
	str r0, [r4, #0xc]
	movs r0, #1
	str r0, [r4]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D3060

	thumb_func_start ov109_021D308C
ov109_021D308C: @ 0x021D308C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [r5, #0x10]
	ldr r0, [r5, #0xc]
	ldr r1, [r4, #0x54]
	subs r0, r1, r0
	str r0, [r4, #0x54]
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _021D30B6
	movs r0, #0x1a
	ldr r1, [r4, #0x54]
	lsls r0, r0, #0xe
	cmp r1, r0
	bgt _021D30B6
	movs r0, #1
	str r0, [r5, #8]
	movs r0, #0x65
	lsls r0, r0, #4
	bl FUN_02005748
_021D30B6:
	movs r0, #2
	ldr r1, [r4, #0x54]
	lsls r0, r0, #0x10
	cmp r1, r0
	bgt _021D30C6
	str r0, [r4, #0x54]
	movs r0, #2
	str r0, [r5]
_021D30C6:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D308C

	thumb_func_start ov109_021D30CC
ov109_021D30CC: @ 0x021D30CC
	push {r3, lr}
	movs r1, #1
	ldr r3, [r0, #0xc]
	lsls r1, r1, #0xc
	ldr r2, [r0, #0x10]
	cmp r3, r1
	ble _021D30E4
	subs r3, r3, r1
	str r3, [r0, #0xc]
	cmp r3, r1
	bge _021D30E4
	str r1, [r0, #0xc]
_021D30E4:
	ldr r3, [r2, #0x54]
	ldr r1, [r0, #0xc]
	subs r1, r3, r1
	str r1, [r2, #0x54]
	cmp r1, #0
	bgt _021D310A
	movs r1, #0
	str r1, [r2, #0x54]
	ldr r3, [r2, #0xc]
	ldr r0, [r0, #0x14]
	lsls r1, r3, #2
	adds r1, r0, r1
	adds r1, #0x98
	ldr r1, [r1]
	ldr r2, [r2, #0x14]
	bl ov109_021D2874
	movs r0, #2
	pop {r3, pc}
_021D310A:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov109_021D30CC

	thumb_func_start ov109_021D3110
ov109_021D3110: @ 0x021D3110
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	ldr r1, [r5, #4]
	adds r6, r0, #0
	ldr r4, [r5, #0x1c]
	cmp r1, #0
	beq _021D3124
	cmp r1, #1
	beq _021D313A
	pop {r4, r5, r6, pc}
_021D3124:
	adds r1, r4, #0
	bl ov109_021D3328
	movs r0, #1
	lsls r0, r0, #0xe
	str r0, [r5, #0x10]
	ldr r0, _021D317C @ =0xFFFFFBBC
	str r0, [r5, #0x14]
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
_021D313A:
	ldr r1, [r4, #0x54]
	ldr r0, [r5, #0x10]
	adds r0, r1, r0
	str r0, [r4, #0x54]
	ldr r1, [r5, #0x10]
	ldr r0, [r5, #0x14]
	adds r0, r1, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #8]
	adds r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0xf
	blt _021D317A
	movs r1, #0
	str r1, [r5, #8]
	str r1, [r5, #0x10]
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021D3166
	movs r0, #1
	str r0, [r5, #0xc]
	pop {r4, r5, r6, pc}
_021D3166:
	str r1, [r4, #0x54]
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov109_021D3460
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
_021D317A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D317C: .4byte 0xFFFFFBBC
	thumb_func_end ov109_021D3110

	thumb_func_start ov109_021D3180
ov109_021D3180: @ 0x021D3180
	push {r4, r5, r6, lr}
	ldr r0, _021D31A4 @ =0x00000AB4
	adds r6, r1, #0
	adds r5, r6, r0
	movs r4, #0
_021D318A:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D3198
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov109_021D3110
_021D3198:
	adds r4, r4, #1
	adds r5, #0x20
	cmp r4, #5
	blt _021D318A
	pop {r4, r5, r6, pc}
	nop
_021D31A4: .4byte 0x00000AB4
	thumb_func_end ov109_021D3180

	thumb_func_start ov109_021D31A8
ov109_021D31A8: @ 0x021D31A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D31D8 @ =0x00000AB4
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0xa0
	blx FUN_020D5124
	movs r2, #1
	ldr r0, _021D31DC @ =ov109_021D3180
	adds r1, r4, #0
	lsls r2, r2, #8
	bl FUN_0200D9E8
	movs r1, #0xdb
	lsls r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D31D4
	bl FUN_02022974
_021D31D4:
	pop {r4, pc}
	nop
_021D31D8: .4byte 0x00000AB4
_021D31DC: .4byte ov109_021D3180
	thumb_func_end ov109_021D31A8

	thumb_func_start ov109_021D31E0
ov109_021D31E0: @ 0x021D31E0
	movs r1, #0xdb
	lsls r1, r1, #4
	ldr r3, _021D31EC @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D31EC: .4byte FUN_0200DA58
	thumb_func_end ov109_021D31E0

	thumb_func_start ov109_021D31F0
ov109_021D31F0: @ 0x021D31F0
	push {r3, lr}
	ldr r2, _021D3214 @ =0x00000AB4
	adds r3, r0, r2
	movs r2, #0
_021D31F8:
	ldr r0, [r3]
	cmp r0, #0
	bne _021D3206
	movs r0, #1
	str r0, [r3]
	str r1, [r3, #0x1c]
	pop {r3, pc}
_021D3206:
	adds r2, r2, #1
	adds r3, #0x20
	cmp r2, #5
	blt _021D31F8
	bl FUN_02022974
	pop {r3, pc}
	.align 2, 0
_021D3214: .4byte 0x00000AB4
	thumb_func_end ov109_021D31F0

	thumb_func_start ov109_021D3218
ov109_021D3218: @ 0x021D3218
	push {r3, r4, r5, r6, r7, lr}
	movs r1, #0x19
	lsls r1, r1, #4
	adds r4, r0, r1
	subs r1, #0x50
	ldr r7, [r0, #0x30]
	str r0, [sp]
	movs r6, #0
	adds r5, r4, r1
_021D322A:
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D323C
	ldr r0, [sp]
	adds r1, r5, #0
	bl ov109_021D31F0
_021D323C:
	adds r6, r6, #1
	adds r4, #0xb0
	adds r5, #0xb0
	cmp r6, r7
	blt _021D322A
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D3218

	thumb_func_start ov109_021D3248
ov109_021D3248: @ 0x021D3248
	ldr r1, _021D3264 @ =0x00000AB4
	adds r2, r0, r1
	movs r1, #0
_021D324E:
	ldr r0, [r2]
	cmp r0, #0
	beq _021D3258
	movs r0, #1
	bx lr
_021D3258:
	adds r1, r1, #1
	adds r2, #0x20
	cmp r1, #5
	blt _021D324E
	movs r0, #0
	bx lr
	.align 2, 0
_021D3264: .4byte 0x00000AB4
	thumb_func_end ov109_021D3248

	thumb_func_start ov109_021D3268
ov109_021D3268: @ 0x021D3268
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x10]
	cmp r0, #0
	beq _021D327A
	cmp r0, #1
	beq _021D328A
	pop {r3, r4, r5, pc}
_021D327A:
	movs r0, #6
	lsls r0, r0, #0xe
	str r0, [r5, #0xc]
	movs r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
_021D328A:
	adds r0, r4, #0
	ldr r1, [r5, #0xc]
	adds r0, #0x30
	bl ov109_021D39D4
	movs r0, #1
	ldr r1, [r4, #0x30]
	lsls r0, r0, #0xe
	cmp r1, r0
	bge _021D32B6
	ldr r1, [r5, #0xc]
	lsrs r1, r1, #1
	str r1, [r5, #0xc]
	cmp r1, r0
	bge _021D32B6
	movs r1, #0
	str r1, [r4, #0x30]
	movs r0, #0x14
_021D32AE:
	strb r1, [r5]
	adds r5, r5, #1
	subs r0, r0, #1
	bne _021D32AE
_021D32B6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D3268

	thumb_func_start ov109_021D32B8
ov109_021D32B8: @ 0x021D32B8
	push {r3, r4, r5, lr}
	ldr r0, _021D32D8 @ =0x00000B54
	movs r4, #0
	adds r5, r1, r0
_021D32C0:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D32CC
	adds r0, r5, #0
	bl ov109_021D3268
_021D32CC:
	adds r4, r4, #1
	adds r5, #0x14
	cmp r4, #5
	blt _021D32C0
	pop {r3, r4, r5, pc}
	nop
_021D32D8: .4byte 0x00000B54
	thumb_func_end ov109_021D32B8

	thumb_func_start ov109_021D32DC
ov109_021D32DC: @ 0x021D32DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D3308 @ =0x00000B54
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x64
	blx FUN_020D5124
	ldr r0, _021D330C @ =ov109_021D32B8
	ldr r2, _021D3310 @ =0x00000101
	adds r1, r4, #0
	bl FUN_0200D9E8
	ldr r1, _021D3314 @ =0x00000DB4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D3304
	bl FUN_02022974
_021D3304:
	pop {r4, pc}
	nop
_021D3308: .4byte 0x00000B54
_021D330C: .4byte ov109_021D32B8
_021D3310: .4byte 0x00000101
_021D3314: .4byte 0x00000DB4
	thumb_func_end ov109_021D32DC

	thumb_func_start ov109_021D3318
ov109_021D3318: @ 0x021D3318
	ldr r1, _021D3320 @ =0x00000DB4
	ldr r3, _021D3324 @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D3320: .4byte 0x00000DB4
_021D3324: .4byte FUN_0200DA58
	thumb_func_end ov109_021D3318

	thumb_func_start ov109_021D3328
ov109_021D3328: @ 0x021D3328
	push {r4, lr}
	ldr r2, _021D336C @ =0x00000B54
	movs r3, #0
	adds r0, r0, r2
	adds r4, r0, #0
_021D3332:
	ldr r2, [r4]
	cmp r2, #1
	bne _021D3344
	ldr r2, [r4, #0x10]
	cmp r2, r1
	bne _021D3344
	movs r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
_021D3344:
	adds r3, r3, #1
	adds r4, #0x14
	cmp r3, #5
	blt _021D3332
	movs r3, #0
_021D334E:
	ldr r2, [r0]
	cmp r2, #0
	bne _021D335C
	movs r2, #1
	str r2, [r0]
	str r1, [r0, #0x10]
	pop {r4, pc}
_021D335C:
	adds r3, r3, #1
	adds r0, #0x14
	cmp r3, #5
	blt _021D334E
	bl FUN_02022974
	pop {r4, pc}
	nop
_021D336C: .4byte 0x00000B54
	thumb_func_end ov109_021D3328

	thumb_func_start ov109_021D3370
ov109_021D3370: @ 0x021D3370
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #4]
	ldr r4, [r5, #0x14]
	cmp r0, #0
	beq _021D3382
	cmp r0, #1
	beq _021D339A
	pop {r4, r5, r6, pc}
_021D3382:
	movs r0, #0
	str r0, [r4, #0x34]
	str r0, [r5, #0x10]
	movs r0, #0x1e
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	movs r0, #5
	lsls r0, r0, #0xe
	str r0, [r5, #0xc]
	ldr r0, [r5, #4]
	adds r0, r0, #1
	str r0, [r5, #4]
_021D339A:
	ldr r1, [r5, #0x10]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	bl FUN_0201D15C
	ldr r2, [r5, #8]
	asrs r1, r2, #0xb
	lsrs r1, r1, #0x14
	adds r1, r2, r1
	asrs r2, r1, #0xc
	adds r1, r2, #0
	muls r1, r0, r1
	movs r0, #0
	str r0, [r4, #0x34]
	adds r0, r4, #0
	adds r0, #0x34
	bl ov109_021D39D4
	adds r0, r5, #0
	ldr r1, [r5, #0xc]
	adds r0, #0x10
	ldr r6, [r5, #0x10]
	bl ov109_021D39D4
	ldr r0, [r5, #0x10]
	cmp r0, r6
	bge _021D33EC
	ldr r0, [r5, #8]
	lsrs r0, r0, #1
	str r0, [r5, #8]
	bne _021D33EC
	movs r1, #0
	str r1, [r4, #0x34]
	movs r0, #0x18
_021D33E4:
	strb r1, [r5]
	adds r5, r5, #1
	subs r0, r0, #1
	bne _021D33E4
_021D33EC:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov109_021D3370

	thumb_func_start ov109_021D33F0
ov109_021D33F0: @ 0x021D33F0
	push {r3, r4, r5, lr}
	ldr r0, _021D3410 @ =0x00000BB8
	movs r4, #0
	adds r5, r1, r0
_021D33F8:
	ldr r0, [r5]
	cmp r0, #0
	beq _021D3404
	adds r0, r5, #0
	bl ov109_021D3370
_021D3404:
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #5
	blt _021D33F8
	pop {r3, r4, r5, pc}
	nop
_021D3410: .4byte 0x00000BB8
	thumb_func_end ov109_021D33F0

	thumb_func_start ov109_021D3414
ov109_021D3414: @ 0x021D3414
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D3440 @ =0x00000BB8
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x78
	blx FUN_020D5124
	ldr r0, _021D3444 @ =ov109_021D33F0
	ldr r2, _021D3448 @ =0x00000102
	adds r1, r4, #0
	bl FUN_0200D9E8
	ldr r1, _021D344C @ =0x00000DB8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D343C
	bl FUN_02022974
_021D343C:
	pop {r4, pc}
	nop
_021D3440: .4byte 0x00000BB8
_021D3444: .4byte ov109_021D33F0
_021D3448: .4byte 0x00000102
_021D344C: .4byte 0x00000DB8
	thumb_func_end ov109_021D3414

	thumb_func_start ov109_021D3450
ov109_021D3450: @ 0x021D3450
	ldr r1, _021D3458 @ =0x00000DB8
	ldr r3, _021D345C @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D3458: .4byte 0x00000DB8
_021D345C: .4byte FUN_0200DA58
	thumb_func_end ov109_021D3450

	thumb_func_start ov109_021D3460
ov109_021D3460: @ 0x021D3460
	push {r4, lr}
	ldr r2, _021D34A4 @ =0x00000BB8
	movs r3, #0
	adds r0, r0, r2
	adds r4, r0, #0
_021D346A:
	ldr r2, [r4]
	cmp r2, #1
	bne _021D347C
	ldr r2, [r4, #0x14]
	cmp r2, r1
	bne _021D347C
	movs r0, #0
	str r0, [r4, #4]
	pop {r4, pc}
_021D347C:
	adds r3, r3, #1
	adds r4, #0x18
	cmp r3, #5
	blt _021D346A
	movs r3, #0
_021D3486:
	ldr r2, [r0]
	cmp r2, #0
	bne _021D3494
	movs r2, #1
	str r2, [r0]
	str r1, [r0, #0x14]
	pop {r4, pc}
_021D3494:
	adds r3, r3, #1
	adds r0, #0x18
	cmp r3, #5
	blt _021D3486
	bl FUN_02022974
	pop {r4, pc}
	nop
_021D34A4: .4byte 0x00000BB8
	thumb_func_end ov109_021D3460

	thumb_func_start ov109_021D34A8
ov109_021D34A8: @ 0x021D34A8
	push {r4, lr}
	adds r4, r1, #0
	ldr r2, [r4]
	adds r1, r0, #0
	adds r1, #0xd4
	cmp r2, #5
	bhi _021D3564
	adds r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	add pc, r2
_021D34C2: @ jump table
	.2byte _021D3564 - _021D34C2 - 2 @ case 0
	.2byte _021D34CE - _021D34C2 - 2 @ case 1
	.2byte _021D34DE - _021D34C2 - 2 @ case 2
	.2byte _021D34F6 - _021D34C2 - 2 @ case 3
	.2byte _021D351C - _021D34C2 - 2 @ case 4
	.2byte _021D354E - _021D34C2 - 2 @ case 5
_021D34CE:
	movs r0, #1
	lsls r0, r0, #0xe
	str r0, [r4, #0x10]
	movs r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
_021D34DE:
	movs r0, #1
	ldr r2, [r1, #0x34]
	lsls r0, r0, #0xc
	subs r2, r2, r0
	ldr r0, _021D3568 @ =0xFFFF8000
	str r2, [r1, #0x34]
	cmp r2, r0
	bgt _021D3564
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021D34F6:
	movs r2, #2
	ldr r3, [r1, #0x34]
	lsls r2, r2, #0xc
	adds r2, r3, r2
	str r2, [r1, #0x34]
	bmi _021D3564
	movs r2, #0
	str r2, [r1, #0x34]
	bl ov109_021D3218
	movs r0, #1
	str r0, [r4, #4]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	ldr r0, _021D356C @ =0x00000657
	bl FUN_02005748
	pop {r4, pc}
_021D351C:
	ldr r0, [r4, #0x10]
	str r0, [r1, #0x28]
	ldr r0, [r4, #0x10]
	rsbs r0, r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	adds r2, r0, #1
	movs r0, #3
	str r2, [r4, #0xc]
	tst r0, r2
	bne _021D3564
	movs r0, #1
	ldr r2, [r4, #0x10]
	lsls r0, r0, #0xc
	cmp r2, r0
	bgt _021D3548
	movs r0, #0
	str r0, [r1, #0x28]
	ldr r0, [r4]
	adds r0, r0, #1
	str r0, [r4]
	pop {r4, pc}
_021D3548:
	asrs r0, r2, #1
	str r0, [r4, #0x10]
	pop {r4, pc}
_021D354E:
	bl ov109_021D3248
	cmp r0, #0
	bne _021D3564
	movs r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	str r0, [r4]
	ldr r0, _021D3570 @ =0x00000631
	bl FUN_02005748
_021D3564:
	pop {r4, pc}
	nop
_021D3568: .4byte 0xFFFF8000
_021D356C: .4byte 0x00000657
_021D3570: .4byte 0x00000631
	thumb_func_end ov109_021D34A8

	thumb_func_start ov109_021D3574
ov109_021D3574: @ 0x021D3574
	movs r2, #0xc3
	ldr r3, _021D3580 @ =ov109_021D34A8
	lsls r2, r2, #4
	adds r0, r1, #0
	adds r1, r1, r2
	bx r3
	.align 2, 0
_021D3580: .4byte ov109_021D34A8
	thumb_func_end ov109_021D3574

	thumb_func_start ov109_021D3584
ov109_021D3584: @ 0x021D3584
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xc3
	lsls r0, r0, #4
	adds r2, r4, r0
	movs r1, #0x14
	movs r0, #0
_021D3592:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D3592
	ldr r0, _021D35B4 @ =ov109_021D3574
	adds r1, r4, #0
	movs r2, #0xff
	bl FUN_0200D9E8
	ldr r1, _021D35B8 @ =0x00000DBC
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D35B2
	bl FUN_02022974
_021D35B2:
	pop {r4, pc}
	.align 2, 0
_021D35B4: .4byte ov109_021D3574
_021D35B8: .4byte 0x00000DBC
	thumb_func_end ov109_021D3584

	thumb_func_start ov109_021D35BC
ov109_021D35BC: @ 0x021D35BC
	ldr r1, _021D35C4 @ =0x00000DBC
	ldr r3, _021D35C8 @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D35C4: .4byte 0x00000DBC
_021D35C8: .4byte FUN_0200DA58
	thumb_func_end ov109_021D35BC

	thumb_func_start ov109_021D35CC
ov109_021D35CC: @ 0x021D35CC
	push {r4, lr}
	movs r1, #0xc3
	lsls r1, r1, #4
	adds r4, r0, r1
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D35DE
	bl FUN_02022974
_021D35DE:
	movs r0, #1
	str r0, [r4, #8]
	str r0, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D35CC

	thumb_func_start ov109_021D35E8
ov109_021D35E8: @ 0x021D35E8
	ldr r1, _021D35F0 @ =0x00000C34
	ldr r0, [r0, r1]
	bx lr
	nop
_021D35F0: .4byte 0x00000C34
	thumb_func_end ov109_021D35E8

	thumb_func_start ov109_021D35F4
ov109_021D35F4: @ 0x021D35F4
	ldr r1, _021D35FC @ =0x00000C38
	ldr r0, [r0, r1]
	bx lr
	nop
_021D35FC: .4byte 0x00000C38
	thumb_func_end ov109_021D35F4

	thumb_func_start ov109_021D3600
ov109_021D3600: @ 0x021D3600
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _021D3616
	cmp r0, #1
	beq _021D366A
	add sp, #0x10
	pop {r3, r4, r5, pc}
_021D3616:
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bge _021D364C
	ldr r5, _021D3680 @ =0x021D59E4
	add r3, sp, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4, #4]
	subs r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0
	bgt _021D364C
	movs r0, #0x1e
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	lsls r0, r0, #2
	ldr r0, [r2, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl FUN_02005748
	ldr r0, [r4, #0xc]
	adds r0, r0, #1
	str r0, [r4, #0xc]
_021D364C:
	movs r1, #6
	ldr r0, [r4, #0x14]
	lsls r1, r1, #0xa
	bl FUN_0200D34C
	ldr r0, [r4, #0x14]
	bl FUN_0200D3B8
	cmp r0, #0
	bne _021D367C
	ldr r0, [r4]
	add sp, #0x10
	adds r0, r0, #1
	str r0, [r4]
	pop {r3, r4, r5, pc}
_021D366A:
	ldr r0, [r4, #0x14]
	bl FUN_0200D0F4
	adds r0, r4, #0
	bl FUN_020181C4
	adds r0, r5, #0
	bl FUN_0200DA58
_021D367C:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D3680: .4byte 0x021D59E4
	thumb_func_end ov109_021D3600

	thumb_func_start ov109_021D3684
ov109_021D3684: @ 0x021D3684
	push {r4, r5, lr}
	sub sp, #0x34
	adds r5, r0, #0
	movs r0, #0x5f
	movs r1, #0x18
	bl FUN_02018184
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0x18
	movs r0, #0
_021D369A:
	strb r0, [r2]
	adds r2, r2, #1
	subs r1, r1, #1
	bne _021D369A
	movs r1, #0x80
	add r0, sp, #0
	strh r1, [r0]
	movs r1, #0x64
	strh r1, [r0, #2]
	movs r1, #0
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	movs r0, #1
	str r0, [sp, #0x10]
	movs r0, #4
	str r0, [sp, #0x14]
	movs r0, #5
	str r0, [sp, #0x18]
	movs r0, #6
	str r0, [sp, #0x1c]
	movs r0, #7
	str r0, [sp, #0x20]
	subs r0, #8
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x30]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, #0
	add r1, sp, #0
	bl ov109_021D24E0
	str r0, [r4, #0x14]
	bl FUN_0200D330
	ldr r0, _021D36FC @ =ov109_021D3600
	adds r1, r4, #0
	movs r2, #0
	str r5, [r4, #0x10]
	bl FUN_0200D9E8
	adds r4, r0, #0
	bne _021D36F6
	bl FUN_02022974
_021D36F6:
	adds r0, r4, #0
	add sp, #0x34
	pop {r4, r5, pc}
	.align 2, 0
_021D36FC: .4byte ov109_021D3600
	thumb_func_end ov109_021D3684

	thumb_func_start ov109_021D3700
ov109_021D3700: @ 0x021D3700
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	ldrh r1, [r4]
	adds r5, r0, #0
	cmp r1, #4
	bhi _021D3780
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_021D3718: @ jump table
	.2byte _021D3780 - _021D3718 - 2 @ case 0
	.2byte _021D3722 - _021D3718 - 2 @ case 1
	.2byte _021D3736 - _021D3718 - 2 @ case 2
	.2byte _021D3752 - _021D3718 - 2 @ case 3
	.2byte _021D376C - _021D3718 - 2 @ case 4
_021D3722:
	bl ov109_021D228C
	ldr r0, _021D3784 @ =0x000005E4
	bl FUN_02005748
	movs r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
_021D3736:
	ldr r0, [r4, #4]
	adds r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #2
	blt _021D3780
	movs r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	adds r0, r5, #0
	bl ov109_021D22A4
	pop {r3, r4, r5, pc}
_021D3752:
	ldr r1, [r4, #4]
	adds r1, r1, #1
	str r1, [r4, #4]
	cmp r1, #4
	blt _021D3780
	bl ov109_021D228C
	movs r0, #0
	str r0, [r4, #4]
	ldrh r0, [r4]
	adds r0, r0, #1
	strh r0, [r4]
	pop {r3, r4, r5, pc}
_021D376C:
	ldr r1, [r4, #4]
	adds r1, r1, #1
	str r1, [r4, #4]
	cmp r1, #2
	blt _021D3780
	bl ov109_021D2298
	movs r0, #0
	strh r0, [r4, #2]
	strh r0, [r4]
_021D3780:
	pop {r3, r4, r5, pc}
	nop
_021D3784: .4byte 0x000005E4
	thumb_func_end ov109_021D3700

	thumb_func_start ov109_021D3788
ov109_021D3788: @ 0x021D3788
	ldr r2, _021D3794 @ =0x00000C44
	ldr r3, _021D3798 @ =ov109_021D3700
	adds r0, r1, #0
	adds r1, r1, r2
	bx r3
	nop
_021D3794: .4byte 0x00000C44
_021D3798: .4byte ov109_021D3700
	thumb_func_end ov109_021D3788

	thumb_func_start ov109_021D379C
ov109_021D379C: @ 0x021D379C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D37D4 @ =0x00000C44
	ldr r2, _021D37D8 @ =0x00000103
	adds r1, r4, r0
	movs r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	strb r0, [r1, #4]
	strb r0, [r1, #5]
	strb r0, [r1, #6]
	strb r0, [r1, #7]
	ldr r0, _021D37DC @ =ov109_021D3788
	adds r1, r4, #0
	bl FUN_0200D9E8
	movs r1, #0x37
	lsls r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D37D0
	bl FUN_02022974
_021D37D0:
	pop {r4, pc}
	nop
_021D37D4: .4byte 0x00000C44
_021D37D8: .4byte 0x00000103
_021D37DC: .4byte ov109_021D3788
	thumb_func_end ov109_021D379C

	thumb_func_start ov109_021D37E0
ov109_021D37E0: @ 0x021D37E0
	movs r1, #0x37
	lsls r1, r1, #6
	ldr r3, _021D37EC @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D37EC: .4byte FUN_0200DA58
	thumb_func_end ov109_021D37E0

	thumb_func_start ov109_021D37F0
ov109_021D37F0: @ 0x021D37F0
	ldr r1, _021D37F8 @ =0x00000C46
	ldrh r0, [r0, r1]
	bx lr
	nop
_021D37F8: .4byte 0x00000C46
	thumb_func_end ov109_021D37F0

	thumb_func_start ov109_021D37FC
ov109_021D37FC: @ 0x021D37FC
	push {r4, lr}
	ldr r1, _021D3814 @ =0x00000C44
	adds r4, r0, r1
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _021D380C
	bl FUN_02022974
_021D380C:
	movs r0, #1
	strh r0, [r4, #2]
	strh r0, [r4]
	pop {r4, pc}
	.align 2, 0
_021D3814: .4byte 0x00000C44
	thumb_func_end ov109_021D37FC

	thumb_func_start ov109_021D3818
ov109_021D3818: @ 0x021D3818
	ldr r0, [r1]
	cmp r0, #0
	beq _021D385E
	cmp r0, #1
	beq _021D3828
	cmp r0, #2
	beq _021D384C
	bx lr
_021D3828:
	ldr r0, [r1, #4]
	lsls r2, r0, #2
	ldr r0, _021D3860 @ =0x021D5F20
	ldr r0, [r0, r2]
	lsls r2, r0, #0xc
	ldr r0, [r1, #0xc]
	str r2, [r0, #0x54]
	ldr r0, [r1, #4]
	adds r0, r0, #1
	str r0, [r1, #4]
	cmp r0, #0x10
	blt _021D385E
	movs r0, #0
	str r0, [r1, #4]
	ldr r0, [r1]
	adds r0, r0, #1
	str r0, [r1]
	bx lr
_021D384C:
	ldr r0, [r1, #8]
	adds r0, r0, #1
	str r0, [r1, #8]
	cmp r0, #0xf
	blt _021D385E
	movs r0, #0
	str r0, [r1, #8]
	movs r0, #1
	str r0, [r1]
_021D385E:
	bx lr
	.align 2, 0
_021D3860: .4byte 0x021D5F20
	thumb_func_end ov109_021D3818

	thumb_func_start ov109_021D3864
ov109_021D3864: @ 0x021D3864
	push {r4, r5, r6, lr}
	ldr r0, _021D3880 @ =0x00000C4C
	adds r6, r1, #0
	adds r5, r6, r0
	movs r4, #0
_021D386E:
	adds r0, r6, #0
	adds r1, r5, #0
	bl ov109_021D3818
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #5
	blt _021D386E
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D3880: .4byte 0x00000C4C
	thumb_func_end ov109_021D3864

	thumb_func_start ov109_021D3884
ov109_021D3884: @ 0x021D3884
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _021D38B0 @ =0x00000C4C
	movs r1, #0
	adds r0, r4, r0
	movs r2, #0x50
	blx FUN_020D5124
	movs r2, #0x41
	ldr r0, _021D38B4 @ =ov109_021D3864
	adds r1, r4, #0
	lsls r2, r2, #2
	bl FUN_0200D9E8
	ldr r1, _021D38B8 @ =0x00000DC4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021D38AE
	bl FUN_02022974
_021D38AE:
	pop {r4, pc}
	.align 2, 0
_021D38B0: .4byte 0x00000C4C
_021D38B4: .4byte ov109_021D3864
_021D38B8: .4byte 0x00000DC4
	thumb_func_end ov109_021D3884

	thumb_func_start ov109_021D38BC
ov109_021D38BC: @ 0x021D38BC
	ldr r1, _021D38C4 @ =0x00000DC4
	ldr r3, _021D38C8 @ =FUN_0200DA58
	ldr r0, [r0, r1]
	bx r3
	.align 2, 0
_021D38C4: .4byte 0x00000DC4
_021D38C8: .4byte FUN_0200DA58
	thumb_func_end ov109_021D38BC

	thumb_func_start ov109_021D38CC
ov109_021D38CC: @ 0x021D38CC
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	ldr r1, _021D38F4 @ =0x00000C4C
	ldr r2, [r5, #0xc]
	adds r1, r0, r1
	lsls r0, r2, #4
	adds r4, r1, r0
	cmp r2, #5
	blt _021D38E2
	bl FUN_02022974
_021D38E2:
	ldr r0, [r4]
	cmp r0, #0
	beq _021D38EC
	bl FUN_02022974
_021D38EC:
	movs r0, #1
	str r0, [r4]
	str r5, [r4, #0xc]
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D38F4: .4byte 0x00000C4C
	thumb_func_end ov109_021D38CC

	thumb_func_start ov109_021D38F8
ov109_021D38F8: @ 0x021D38F8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r0, #0x20]
	movs r1, #0x19
	str r0, [sp, #4]
	ldr r0, [sp]
	lsls r1, r1, #4
	ldr r7, [r0, #0x30]
	movs r6, #0
	adds r4, r0, r1
	cmp r7, #0
	ble _021D3944
	subs r1, #0x50
	adds r5, r4, r1
_021D3916:
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D393A
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r1, [r4, r0]
	movs r0, #1
	adds r2, r0, #0
	lsls r2, r1
	ldr r0, [sp, #4]
	tst r0, r2
	beq _021D393A
	ldr r0, [sp]
	adds r1, r5, #0
	bl ov109_021D38CC
_021D393A:
	adds r6, r6, #1
	adds r4, #0xb0
	adds r5, #0xb0
	cmp r6, r7
	blt _021D3916
_021D3944:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov109_021D38F8

	thumb_func_start ov109_021D3948
ov109_021D3948: @ 0x021D3948
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	adds r6, r0, #0
	ldr r0, [r5, #4]
	movs r4, #0
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _021D3966
	subs r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #0
	bgt _021D3974
	str r4, [r5, #8]
	movs r4, #1
	b _021D3974
_021D3966:
	adds r0, r0, #1
	str r0, [r5, #8]
	cmp r0, #8
	blt _021D3974
	movs r0, #8
	str r0, [r5, #8]
	movs r4, #1
_021D3974:
	ldr r0, [r5]
	ldr r1, [r5, #8]
	bl ov109_021D2344
	cmp r4, #1
	bne _021D398C
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r6, #0
	bl FUN_0200DA58
_021D398C:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov109_021D3948

	thumb_func_start ov109_021D3990
ov109_021D3990: @ 0x021D3990
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _021D39CC @ =0x021D59AC
	adds r4, r1, #0
	ldr r1, [r0, #0x1c]
	ldr r0, [r0, #0x20]
	str r1, [sp]
	str r0, [sp, #4]
	movs r0, #0x5f
	movs r1, #0xc
	bl FUN_02018184
	adds r1, r0, #0
	str r5, [r1]
	lsls r2, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r2]
	str r4, [r1, #4]
	str r0, [r1, #8]
	ldr r0, _021D39D0 @ =ov109_021D3948
	movs r2, #0
	bl FUN_0200D9E8
	cmp r0, #0
	bne _021D39C8
	bl FUN_02022974
_021D39C8:
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D39CC: .4byte 0x021D59AC
_021D39D0: .4byte ov109_021D3948
	thumb_func_end ov109_021D3990

	thumb_func_start ov109_021D39D4
ov109_021D39D4: @ 0x021D39D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r4]
	bpl _021D39EC
	movs r0, #0x5a
	lsls r0, r0, #0xe
_021D39E4:
	ldr r1, [r4]
	adds r1, r1, r0
	str r1, [r4]
	bmi _021D39E4
_021D39EC:
	movs r1, #0x5a
	ldr r0, [r4]
	lsls r1, r1, #0xe
	blx FUN_020E1F6C
	str r1, [r4]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D39D4

	thumb_func_start ov109_021D39FC
ov109_021D39FC: @ 0x021D39FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, #0xd4
	bl ov109_021D2AE4
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov109_021D2D44
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D39FC

	thumb_func_start ov109_021D3A14
ov109_021D3A14: @ 0x021D3A14
	ldr r1, [r0, #8]
	adds r2, r1, #1
	movs r1, #0x96
	lsls r1, r1, #2
	str r2, [r0, #8]
	cmp r2, r1
	bge _021D3A26
	movs r0, #0
	bx lr
_021D3A26:
	str r1, [r0, #8]
	movs r0, #1
	bx lr
	thumb_func_end ov109_021D3A14

	thumb_func_start ov109_021D3A2C
ov109_021D3A2C: @ 0x021D3A2C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x36
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	adds r6, r1, #0
	adds r5, r2, #0
	bl FUN_02006D84
	adds r1, r0, #0
	cmp r5, #1
	bne _021D3A4C
	movs r0, #0x5f
	bl FUN_02018144
	b _021D3A52
_021D3A4C:
	movs r0, #0x5f
	bl FUN_02018184
_021D3A52:
	adds r5, r0, #0
	movs r0, #0x36
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl FUN_02006D28
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov109_021D3A2C

	thumb_func_start ov109_021D3A68
ov109_021D3A68: @ 0x021D3A68
	cmp r1, #0
	beq _021D3A6E
	str r1, [r0, #0x34]
_021D3A6E:
	bx lr
	thumb_func_end ov109_021D3A68

	thumb_func_start ov109_021D3A70
ov109_021D3A70: @ 0x021D3A70
	movs r2, #1
	str r2, [r0, #0x3c]
	ldrh r3, [r1]
	adds r2, r0, #0
	adds r2, #0x58
	strh r3, [r2]
	adds r2, r0, #0
	ldrh r3, [r1, #2]
	adds r2, #0x5a
	strh r3, [r2]
	adds r2, r0, #0
	ldrh r3, [r1, #4]
	adds r2, #0x5c
	adds r0, #0x5e
	strh r3, [r2]
	ldrh r1, [r1, #6]
	strh r1, [r0]
	bx lr
	thumb_func_end ov109_021D3A70

	thumb_func_start ov109_021D3A94
ov109_021D3A94: @ 0x021D3A94
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0x20
	blo _021D3AA0
	bl FUN_02022974
_021D3AA0:
	adds r0, r4, #0
	adds r0, #0xac
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
	adds r4, #0xac
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D3A94

	thumb_func_start ov109_021D3AB4
ov109_021D3AB4: @ 0x021D3AB4
	adds r0, #0xac
	bx lr
	thumb_func_end ov109_021D3AB4

	thumb_func_start ov109_021D3AB8
ov109_021D3AB8: @ 0x021D3AB8
	adds r0, #0xd0
	ldr r0, [r0]
	adds r0, #0x40
	ldrh r0, [r0]
	tst r0, r1
	beq _021D3AC8
	movs r0, #1
	bx lr
_021D3AC8:
	movs r0, #0
	bx lr
	thumb_func_end ov109_021D3AB8

	thumb_func_start ov109_021D3ACC
ov109_021D3ACC: @ 0x021D3ACC
	push {r3, r4}
	adds r1, r0, #0
	adds r0, #0xd0
	ldr r0, [r0]
	adds r1, #0xcc
	ldr r1, [r1]
	adds r0, #0x42
	ldr r1, [r1, #8]
	ldrh r4, [r0]
	movs r2, #0
	subs r3, r1, #1
	cmp r4, #0
	beq _021D3AF2
	movs r0, #1
_021D3AE8:
	adds r1, r4, #0
	ands r1, r0
	adds r2, r2, r1
	lsrs r4, r4, #1
	bne _021D3AE8
_021D3AF2:
	cmp r2, r3
	blt _021D3AFC
	movs r0, #1
	pop {r3, r4}
	bx lr
_021D3AFC:
	movs r0, #0
	pop {r3, r4}
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D3ACC

	thumb_func_start ov109_021D3B04
ov109_021D3B04: @ 0x021D3B04
	adds r0, #0xd0
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0x42
	ldrh r3, [r0]
	cmp r3, #0
	beq _021D3B1E
	movs r0, #1
_021D3B14:
	adds r1, r3, #0
	ands r1, r0
	adds r2, r2, r1
	lsrs r3, r3, #1
	bne _021D3B14
_021D3B1E:
	adds r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D3B04

	thumb_func_start ov109_021D3B24
ov109_021D3B24: @ 0x021D3B24
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r4]
	lsls r2, r0, #2
	adds r0, r5, r2
	adds r0, #0x70
	strh r1, [r0]
	adds r0, r5, r2
	ldrh r1, [r4, #2]
	adds r0, #0x72
	strh r1, [r0]
	bl FUN_0203608C
	ldrh r1, [r4, #2]
	cmp r1, r0
	bne _021D3B4C
	ldrh r0, [r4]
	str r0, [r5, #0x2c]
_021D3B4C:
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D3B24

	thumb_func_start ov109_021D3B50
ov109_021D3B50: @ 0x021D3B50
	str r1, [r0, #0x30]
	bx lr
	thumb_func_end ov109_021D3B50

	thumb_func_start ov109_021D3B54
ov109_021D3B54: @ 0x021D3B54
	cmp r1, #0
	beq _021D3B6C
	adds r0, #0xd0
	ldr r0, [r0]
	adds r0, #0x42
	ldrh r2, [r0]
	movs r0, #1
	lsls r0, r1
	tst r0, r2
	bne _021D3B6C
	movs r0, #0
	bx lr
_021D3B6C:
	movs r0, #1
	bx lr
	thumb_func_end ov109_021D3B54

	thumb_func_start ov109_021D3B70
ov109_021D3B70: @ 0x021D3B70
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xd0
	ldr r0, [r0]
	adds r5, r1, #0
	ldr r6, [r4, #0x24]
	bl FUN_0209C188
	adds r7, r0, #0
	lsls r0, r5, #2
	adds r0, r4, r0
	adds r4, #0xcc
	ldr r1, [r4]
	ldr r5, [r0, #0x44]
	ldr r1, [r1, #4]
	adds r0, r6, #0
	bl FUN_0207A0FC
	adds r4, r0, #0
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0207A0FC
	adds r5, r0, #0
	bl FUN_0203608C
	bl FUN_02032EE8
	adds r1, r0, #0
	movs r0, #0xb
	str r0, [sp]
	adds r0, r5, #0
	movs r2, #5
	movs r3, #0
	bl FUN_0209304C
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_020775EC
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov109_021D3B70

	thumb_func_start ov109_021D3BC4
ov109_021D3BC4: @ 0x021D3BC4
	adds r0, #0xd0
	ldr r1, [r0]
	movs r0, #0x46
	ldrsh r3, [r1, r0]
	movs r2, #0
	cmp r3, #0
	beq _021D3BDE
	movs r0, #1
_021D3BD4:
	adds r1, r3, #0
	ands r1, r0
	adds r2, r2, r1
	lsrs r3, r3, #1
	bne _021D3BD4
_021D3BDE:
	adds r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D3BC4

	thumb_func_start ov109_021D3BE4
ov109_021D3BE4: @ 0x021D3BE4
	lsls r1, r1, #2
	adds r0, r0, r1
	str r2, [r0, #0x44]
	bx lr
	thumb_func_end ov109_021D3BE4

	thumb_func_start ov109_021D3BEC
ov109_021D3BEC: @ 0x021D3BEC
	push {r3, r4}
	adds r4, r0, #0
	adds r4, #0x60
	movs r3, #8
_021D3BF4:
	ldrh r2, [r1]
	adds r1, r1, #2
	strh r2, [r4]
	adds r4, r4, #2
	subs r3, r3, #1
	bne _021D3BF4
	movs r1, #1
	str r1, [r0, #0x40]
	pop {r3, r4}
	bx lr
	thumb_func_end ov109_021D3BEC

	thumb_func_start ov109_021D3C08
ov109_021D3C08: @ 0x021D3C08
	push {r0, r1, r2, r3}
	push {r3, r4, r5, lr}
	movs r1, #0x11
	adds r3, r0, #0
	lsls r1, r1, #4
	ldr r1, [r3, r1]
	add r0, sp, #0x14
	rsbs r1, r1, #0
	adds r4, r2, #0
	bl ov109_021D39D4
	ldr r0, [sp, #0x14]
	ldr r1, _021D3C8C @ =0xFFFFC000
	str r0, [sp]
	add r0, sp, #0
	bl ov109_021D39D4
	ldr r1, [sp]
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	asrs r5, r0, #0xc
	ldr r0, [sp, #0x14]
	movs r1, #5
	str r0, [sp]
	add r0, sp, #0
	lsls r1, r1, #0xc
	bl ov109_021D39D4
	ldr r1, [sp]
	ldr r2, _021D3C90 @ =0x021D5C14
	asrs r0, r1, #0xb
	lsrs r0, r0, #0x14
	adds r0, r1, r0
	lsls r1, r4, #3
	adds r3, r2, r1
	ldr r2, [r2, r1]
	asrs r0, r0, #0xc
	ldr r3, [r3, #4]
	cmp r2, #0
	beq _021D3C80
_021D3C5A:
	ldrh r4, [r3]
	cmp r5, r4
	blo _021D3C66
	ldrh r1, [r3, #2]
	cmp r5, r1
	bls _021D3C70
_021D3C66:
	cmp r0, r4
	blo _021D3C7A
	ldrh r1, [r3, #2]
	cmp r0, r1
	bhi _021D3C7A
_021D3C70:
	movs r0, #1
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
_021D3C7A:
	adds r3, r3, #4
	subs r2, r2, #1
	bne _021D3C5A
_021D3C80:
	movs r0, #0
	pop {r3, r4, r5}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_021D3C8C: .4byte 0xFFFFC000
_021D3C90: .4byte 0x021D5C14
	thumb_func_end ov109_021D3C08

	thumb_func_start ov109_021D3C94
ov109_021D3C94: @ 0x021D3C94
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl FUN_0207A0F8
	adds r6, r0, #0
	movs r5, #0
	cmp r6, #0
	ble _021D3CD2
_021D3CA4:
	adds r0, r7, #0
	adds r1, r5, #0
	bl FUN_0207A0FC
	movs r1, #0x4c
	movs r2, #0
	adds r4, r0, #0
	bl FUN_02074470
	cmp r0, #0
	beq _021D3CCC
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	beq _021D3CCC
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3CCC:
	adds r5, r5, #1
	cmp r5, r6
	blt _021D3CA4
_021D3CD2:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov109_021D3C94

	thumb_func_start ov109_021D3CD8
ov109_021D3CD8: @ 0x021D3CD8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x24]
	bl ov109_021D3C94
	cmp r0, #1
	bne _021D3CEA
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D3CEA:
	movs r4, #0
_021D3CEC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov109_021D3B54
	cmp r0, #0
	beq _021D3D10
	adds r0, r5, #0
	adds r0, #0xd0
	ldr r0, [r0]
	adds r1, r4, #0
	bl FUN_0209C188
	bl ov109_021D3C94
	cmp r0, #1
	bne _021D3D10
	movs r0, #1
	pop {r3, r4, r5, pc}
_021D3D10:
	adds r4, r4, #1
	cmp r4, #5
	blt _021D3CEC
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D3CD8

	thumb_func_start ov109_021D3D1C
ov109_021D3D1C: @ 0x021D3D1C
	adds r0, #0xd0
	ldr r0, [r0]
	movs r2, #0
	adds r0, #0x4a
	ldrh r3, [r0]
	cmp r3, #0
	beq _021D3D36
	movs r0, #1
_021D3D2C:
	adds r1, r3, #0
	ands r1, r0
	adds r2, r2, r1
	lsrs r3, r3, #1
	bne _021D3D2C
_021D3D36:
	adds r0, r2, #0
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D3D1C

	thumb_func_start ov109_021D3D3C
ov109_021D3D3C: @ 0x021D3D3C
	adds r0, #0xd0
	ldr r0, [r0]
	adds r0, #0x48
	ldrh r0, [r0]
	cmp r0, #0
	beq _021D3D4C
	movs r0, #1
	bx lr
_021D3D4C:
	movs r0, #0
	bx lr
	thumb_func_end ov109_021D3D3C

	thumb_func_start ov109_021D3D50
ov109_021D3D50: @ 0x021D3D50
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r1, #0
	adds r4, r0, #0
	bl FUN_02006840
	adds r6, r0, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _021D3D6C
	cmp r0, #1
	bne _021D3D6A
	b _021D3E88
_021D3D6A:
	b _021D3E92
_021D3D6C:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r2, #1
	lsls r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _021D3E98 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _021D3E9C @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	movs r0, #3
	movs r1, #0x5f
	lsls r2, r2, #7
	bl FUN_02017FC8
	movs r0, #0x56
	movs r1, #0x5f
	bl FUN_02006C24
	adds r7, r0, #0
	bne _021D3DAE
	bl FUN_02022974
_021D3DAE:
	ldr r1, _021D3EA0 @ =0x00004AB0
	adds r0, r4, #0
	movs r2, #0x5f
	bl FUN_0200681C
	ldr r2, _021D3EA0 @ =0x00004AB0
	adds r4, r0, #0
	movs r1, #0
	blx FUN_020D5124
	str r4, [r6, #0x3c]
	str r6, [r4, #0xc]
	ldr r0, [r6, #0x34]
	str r0, [r4, #0x10]
	movs r0, #0x5f
	bl FUN_02018340
	str r0, [r4, #0x14]
	movs r0, #0x5f
	bl FUN_0200B358
	str r0, [r4, #0x34]
	ldr r2, _021D3EA4 @ =0x00000179
	movs r0, #0
	movs r1, #0x1a
	movs r3, #0x5f
	bl FUN_0200B144
	str r0, [r4, #0x38]
	movs r0, #4
	movs r1, #8
	bl FUN_02017DD4
	bl ov109_021D40D0
	ldr r0, [r4, #0x14]
	bl ov109_021D40F0
	movs r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x5f
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #0x11
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov109_021D4300
	ldr r0, _021D3EA8 @ =ov109_021D40A8
	adds r1, r4, #0
	bl FUN_02017798
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov109_021D41F8
	bl ov109_021D43EC
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov109_021D441C
	adds r0, r4, #0
	bl ov109_021D4518
	adds r0, r4, #0
	bl ov109_021D45F4
	movs r1, #0
	movs r0, #0x34
	adds r2, r1, #0
	bl FUN_02004550
	ldr r0, [r6, #0x34]
	bl FUN_0209BE50
	bl FUN_020378B8
	movs r0, #3
	bl FUN_02037B58
	bl FUN_0203608C
	cmp r0, #0
	bne _021D3E6A
	movs r0, #0xd
	bl FUN_0205BEA8
_021D3E6A:
	bl FUN_02039734
	ldr r0, _021D3EAC @ =ov109_021D4044
	adds r1, r4, #0
	movs r2, #5
	bl FUN_0200DA04
	str r0, [r4, #0x30]
	adds r0, r7, #0
	bl FUN_02006CA8
	ldr r0, [r5]
	adds r0, r0, #1
	str r0, [r5]
	b _021D3E92
_021D3E88:
	movs r0, #0
	str r0, [r5]
	add sp, #0xc
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3E92:
	movs r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D3E98: .4byte 0xFFFFE0FF
_021D3E9C: .4byte 0x04001000
_021D3EA0: .4byte 0x00004AB0
_021D3EA4: .4byte 0x00000179
_021D3EA8: .4byte ov109_021D40A8
_021D3EAC: .4byte ov109_021D4044
	thumb_func_end ov109_021D3D50

	thumb_func_start ov109_021D3EB0
ov109_021D3EB0: @ 0x021D3EB0
	push {r4, lr}
	bl FUN_0200682C
	adds r4, r0, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D3ED4
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021D3ED4
	bl FUN_020318EC
	ldr r2, [r4, #0x10]
	ldr r1, [r2, #0x30]
	ands r0, r1
	str r0, [r2, #0x30]
_021D3ED4:
	ldr r1, [r4]
	cmp r1, #3
	bhi _021D3F8A
	adds r0, r1, r1
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D3EE6: @ jump table
	.2byte _021D3EEE - _021D3EE6 - 2 @ case 0
	.2byte _021D3F18 - _021D3EE6 - 2 @ case 1
	.2byte _021D3F66 - _021D3EE6 - 2 @ case 2
	.2byte _021D3F7E - _021D3EE6 - 2 @ case 3
_021D3EEE:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D3F8A
	movs r0, #1
	str r0, [r4]
	bl FUN_0203608C
	cmp r0, #0
	beq _021D3F8A
	bl ov109_021D548C
	cmp r0, #2
	ble _021D3F8A
	movs r2, #0
	ldr r0, [r4, #0x10]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_0209BEBC
	b _021D3F8A
_021D3F18:
	movs r0, #0xd5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	lsls r2, r0, #2
	ldr r0, _021D3F94 @ =0x021D5E9C
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021D3F2E
	adds r0, r4, #0
	blx r2
	str r0, [r4]
_021D3F2E:
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	bne _021D3F46
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r2, _021D3F98 @ =0x00010300
	adds r0, r4, r0
	movs r1, #0
	adds r3, r4, #0
	bl ov109_021D537C
_021D3F46:
	adds r0, r4, #0
	bl ov109_021D5668
	bl FUN_0203608C
	cmp r0, #0
	bne _021D3F8A
	adds r0, r4, #0
	movs r1, #1
	bl ov109_021D58AC
	ldr r1, [r4]
	cmp r1, #1
	bne _021D3F8A
	str r0, [r4]
	b _021D3F8A
_021D3F66:
	movs r0, #0xd5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	lsls r2, r0, #2
	ldr r0, _021D3F94 @ =0x021D5E9C
	ldr r2, [r0, r2]
	cmp r2, #0
	beq _021D3F8A
	adds r0, r4, #0
	blx r2
	str r0, [r4]
	b _021D3F8A
_021D3F7E:
	bl FUN_0200F2AC
	cmp r0, #0
	beq _021D3F8A
	movs r0, #1
	pop {r4, pc}
_021D3F8A:
	ldr r0, [r4, #0x60]
	bl FUN_020219F8
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_021D3F94: .4byte 0x021D5E9C
_021D3F98: .4byte 0x00010300
	thumb_func_end ov109_021D3EB0

	thumb_func_start ov109_021D3F9C
ov109_021D3F9C: @ 0x021D3F9C
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	bl FUN_0200682C
	adds r6, r0, #0
	ldr r0, [r6, #0x30]
	bl FUN_0200DA58
	movs r0, #0x6f
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_0200A4E4
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	bl FUN_0200A6DC
	movs r7, #0x63
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_021D3FC8:
	ldr r0, [r5, r7]
	bl FUN_02009754
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D3FC8
	ldr r0, [r6, #0x60]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	adds r0, r6, #0
	bl ov109_021D471C
	ldr r0, [r6, #0x14]
	bl ov109_021D42CC
	ldr r0, [r6, #0x38]
	bl FUN_0200B190
	ldr r0, [r6, #0x34]
	bl FUN_0200B3F0
	ldr r2, _021D4040 @ =0x04000304
	ldrh r1, [r2]
	lsrs r0, r2, #0xb
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	ldr r1, [r6, #8]
	ldr r0, [r6, #0xc]
	str r1, [r0, #0x10]
	bl ov109_021D548C
	ldr r1, [r6, #0xc]
	str r0, [r1, #8]
	bl ov109_021D54A8
	ldr r1, [r6, #0xc]
	str r0, [r1, #0xc]
	adds r0, r6, #0
	bl ov109_021D4294
	ldr r0, [sp]
	bl FUN_02006830
	movs r0, #0x5f
	bl FUN_0201807C
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4040: .4byte 0x04000304
	thumb_func_end ov109_021D3F9C

	thumb_func_start ov109_021D4044
ov109_021D4044: @ 0x021D4044
	push {r4, lr}
	adds r4, r1, #0
	ldr r0, [r4, #0x1c]
	adds r1, #0x1c
	cmp r0, #0
	beq _021D409E
	ldr r0, [r1, #4]
	ldr r3, [r1, #8]
	lsls r2, r0, #1
	ldr r0, _021D40A0 @ =0x021D5DA6
	ldrb r0, [r0, r2]
	cmp r3, r0
	ble _021D408E
	movs r0, #0
	str r0, [r1, #8]
	ldr r2, [r1, #4]
	adds r2, r2, #1
	str r2, [r1, #4]
	lsls r3, r2, #1
	ldr r2, _021D40A4 @ =0x021D5DA7
	ldrb r2, [r2, r3]
	cmp r2, #0xff
	bne _021D4074
	str r0, [r1, #4]
_021D4074:
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #4]
	ldr r0, [r0, #0xc]
	lsls r2, r1, #1
	ldr r1, _021D40A4 @ =0x021D5DA7
	ldrb r1, [r1, r2]
	movs r2, #0x20
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #0
	blx FUN_020C0160
	b _021D4094
_021D408E:
	ldr r0, [r4, #0x24]
	adds r0, r0, #1
	str r0, [r4, #0x24]
_021D4094:
	movs r0, #0xed
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov109_021D5314
_021D409E:
	pop {r4, pc}
	.align 2, 0
_021D40A0: .4byte 0x021D5DA6
_021D40A4: .4byte 0x021D5DA7
	thumb_func_end ov109_021D4044

	thumb_func_start ov109_021D40A8
ov109_021D40A8: @ 0x021D40A8
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0201DCAC
	bl FUN_0200A858
	adds r0, r4, #0
	bl FUN_0201C2B8
	ldr r3, _021D40C8 @ =0x027E0000
	ldr r1, _021D40CC @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.align 2, 0
_021D40C8: .4byte 0x027E0000
_021D40CC: .4byte 0x00003FF8
	thumb_func_end ov109_021D40A8

	thumb_func_start ov109_021D40D0
ov109_021D40D0: @ 0x021D40D0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021D40EC @ =0x021D5E74
	add r3, sp, #0
	movs r2, #5
_021D40DA:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _021D40DA
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_021D40EC: .4byte 0x021D5E74
	thumb_func_end ov109_021D40D0

	thumb_func_start ov109_021D40F0
ov109_021D40F0: @ 0x021D40F0
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _021D41E0 @ =0x021D5DB0
	add r3, sp, #0x8c
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _021D41E4 @ =0x021D5E3C
	add r3, sp, #0x70
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
	ldr r5, _021D41E8 @ =0x021D5E58
	add r3, sp, #0x54
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
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019EBC
	ldr r5, _021D41EC @ =0x021D5DE8
	add r3, sp, #0x38
	ldm r5!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r5]
	movs r1, #6
	str r0, [r3]
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	ldr r5, _021D41F0 @ =0x021D5E04
	add r3, sp, #0x1c
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
	ldr r5, _021D41F4 @ =0x021D5E20
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
	movs r1, #1
	movs r3, #0
	bl FUN_020183C4
	movs r0, #0
	movs r1, #0x20
	adds r2, r0, #0
	movs r3, #0x5f
	bl FUN_02019690
	movs r0, #4
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x5f
	bl FUN_02019690
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021D41E0: .4byte 0x021D5DB0
_021D41E4: .4byte 0x021D5E3C
_021D41E8: .4byte 0x021D5E58
_021D41EC: .4byte 0x021D5DE8
_021D41F0: .4byte 0x021D5E04
_021D41F4: .4byte 0x021D5E20
	thumb_func_end ov109_021D40F0

	thumb_func_start ov109_021D41F8
ov109_021D41F8: @ 0x021D41F8
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	str r1, [sp]
	movs r6, #0
	adds r4, r7, #0
	adds r5, r7, #0
_021D4204:
	movs r0, #8
	movs r1, #0x5f
	bl FUN_02023790
	str r0, [r4, #0x3c]
	movs r0, #0xdd
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r0, #4
	str r1, [r5, r0]
	movs r0, #0xe7
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, #8
	cmp r6, #5
	blt _021D4204
	movs r0, #0xb4
	movs r1, #0x5f
	bl FUN_02023790
	str r0, [r7, #0x54]
	movs r0, #0x28
	movs r1, #0x5f
	bl FUN_02023790
	str r0, [r7, #0x58]
	movs r0, #0xd5
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r7, r0]
	ldr r0, [r7, #0x38]
	ldr r2, [r7, #0x58]
	movs r1, #0x11
	bl FUN_0200B1B8
	ldr r1, [sp]
	adds r0, r7, #0
	bl ov109_021D577C
	movs r0, #0x5f
	bl FUN_0205CA4C
	movs r1, #0xee
	lsls r1, r1, #2
	str r0, [r7, r1]
	movs r0, #0
	str r0, [r7, #0x1c]
	str r0, [r7, #0x24]
	str r0, [r7, #0x20]
	adds r2, r7, #0
	ldr r0, [sp]
	movs r1, #1
	adds r2, #0x2c
	movs r3, #0x5f
	bl FUN_020071EC
	str r0, [r7, #0x28]
	ldr r0, _021D4290 @ =0x00004A44
	movs r1, #0
	str r1, [r7, r0]
	movs r0, #0x33
	lsls r0, r0, #4
	str r1, [r7, r0]
	ldr r0, [r7, #0x10]
	movs r1, #2
	str r1, [r0, #0x2c]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D4290: .4byte 0x00004A44
	thumb_func_end ov109_021D41F8

	thumb_func_start ov109_021D4294
ov109_021D4294: @ 0x021D4294
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl ov109_021D5824
	ldr r0, [r6, #0x28]
	bl FUN_020181C4
	movs r0, #0xee
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_020181C4
	movs r4, #0
	adds r5, r6, #0
_021D42B0:
	ldr r0, [r5, #0x3c]
	bl FUN_020237BC
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #5
	blt _021D42B0
	ldr r0, [r6, #0x58]
	bl FUN_020237BC
	ldr r0, [r6, #0x54]
	bl FUN_020237BC
	pop {r4, r5, r6, pc}
	thumb_func_end ov109_021D4294

	thumb_func_start ov109_021D42CC
ov109_021D42CC: @ 0x021D42CC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #6
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #5
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
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
	thumb_func_end ov109_021D42CC

	thumb_func_start ov109_021D4300
ov109_021D4300: @ 0x021D4300
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #2
	ldr r4, [r5, #0x14]
	lsls r0, r0, #8
	adds r6, r1, #0
	movs r1, #0
	str r0, [sp]
	movs r0, #0x5f
	str r0, [sp, #4]
	adds r0, r6, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_02007130
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x5f
	str r0, [sp, #4]
	movs r0, #0xc
	adds r1, r0, #0
	movs r2, #4
	movs r3, #0
	bl FUN_02006E84
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x5f
	bl FUN_02002E98
	movs r1, #0x1a
	movs r0, #4
	lsls r1, r1, #4
	movs r2, #0x5f
	bl FUN_02002E98
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5f
	str r0, [sp, #0xc]
	movs r0, #0xc
	movs r1, #0xa
	adds r2, r4, #0
	movs r3, #6
	bl FUN_02006E3C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x5f
	str r0, [sp, #0xc]
	movs r0, #0xc
	movs r1, #0xb
	adds r2, r4, #0
	movs r3, #6
	bl FUN_02006E60
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	lsls r0, r0, #0xc
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x5f
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #2
	adds r2, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	movs r0, #6
	lsls r0, r0, #8
	str r0, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r0, #0x5f
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #3
	adds r2, r4, #0
	bl FUN_0200710C
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0x24]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x5f
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200DD0C
	movs r1, #0
	str r1, [sp]
	movs r0, #0x5f
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_0200DAA4
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov109_021D4300

	thumb_func_start ov109_021D43EC
ov109_021D43EC: @ 0x021D43EC
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _021D4418 @ =0x021D5DC0
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_0201E86C
	movs r0, #0x14
	movs r1, #0x5f
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_021D4418: .4byte 0x021D5DC0
	thumb_func_end ov109_021D43EC

	thumb_func_start ov109_021D441C
ov109_021D441C: @ 0x021D441C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r6, r0, #0
	str r1, [sp, #0x14]
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x7e
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x5f
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	adds r1, r6, #0
	movs r0, #0x1e
	adds r1, #0x64
	movs r2, #0x5f
	bl FUN_020095C4
	str r0, [r6, #0x60]
	cmp r0, #0
	bne _021D4456
	bl FUN_02022974
_021D4456:
	adds r0, r6, #0
	movs r2, #1
	adds r0, #0x64
	movs r1, #0
	lsls r2, r2, #0x14
	bl FUN_0200964C
	movs r7, #0x63
	movs r4, #0
	adds r5, r6, #0
	lsls r7, r7, #2
_021D446C:
	movs r0, #3
	adds r1, r4, #0
	movs r2, #0x5f
	bl FUN_02009714
	str r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blt _021D446C
	movs r0, #2
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x5f
	str r0, [sp, #8]
	movs r0, #0x63
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x14]
	movs r2, #0xc
	bl FUN_02009A4C
	movs r1, #0x6f
	lsls r1, r1, #2
	str r0, [r6, r1]
	movs r0, #2
	str r0, [sp]
	movs r2, #1
	str r2, [sp, #4]
	movs r0, #0xf
	str r0, [sp, #8]
	movs r0, #0x5f
	subs r1, #0x2c
	str r0, [sp, #0xc]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r3, #0
	bl FUN_02009B04
	movs r1, #7
	lsls r1, r1, #6
	str r0, [r6, r1]
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x5f
	subs r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r2, #0xd
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0x71
	lsls r1, r1, #2
	str r0, [r6, r1]
	movs r0, #2
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x5f
	subs r1, #0x2c
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	ldr r1, [sp, #0x14]
	movs r2, #0xe
	movs r3, #1
	bl FUN_02009BC4
	movs r1, #0x72
	lsls r1, r1, #2
	str r0, [r6, r1]
	subs r1, #0xc
	ldr r0, [r6, r1]
	bl FUN_0200A328
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r6, r0]
	bl FUN_0200A5C8
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov109_021D441C

	thumb_func_start ov109_021D4518
ov109_021D4518: @ 0x021D4518
	push {r4, r5, r6, r7, lr}
	sub sp, #0x5c
	movs r1, #2
	adds r5, r0, #0
	str r1, [sp]
	subs r0, r1, #3
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0
	movs r3, #0x63
	str r0, [sp, #0xc]
	movs r2, #1
	lsls r3, r3, #2
	str r2, [sp, #0x10]
	ldr r2, [r5, r3]
	str r2, [sp, #0x14]
	adds r2, r3, #4
	ldr r2, [r5, r2]
	str r2, [sp, #0x18]
	adds r2, r3, #0
	adds r2, #8
	ldr r2, [r5, r2]
	str r2, [sp, #0x1c]
	adds r2, r3, #0
	adds r2, #0xc
	ldr r2, [r5, r2]
	adds r3, #0x88
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	adds r0, r5, r3
	adds r2, r1, #0
	adds r3, r1, #0
	bl FUN_020093B4
	ldr r0, [r5, #0x60]
	movs r6, #0
	str r0, [sp, #0x2c]
	movs r0, #0x85
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x30]
	movs r0, #1
	lsls r0, r0, #0xc
	movs r7, #0x8f
	str r6, [sp, #0x3c]
	str r0, [sp, #0x40]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	strh r6, [r0, #0x20]
	movs r0, #1
	str r0, [sp, #0x50]
	str r0, [sp, #0x54]
	movs r0, #0x5f
	ldr r4, _021D45F0 @ =0x021D5DD0
	str r0, [sp, #0x58]
	lsls r7, r7, #2
_021D458C:
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	str r0, [sp, #0x34]
	ldrh r0, [r4, #6]
	lsls r0, r0, #0xc
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #0x8f
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CC8
	movs r0, #0x8f
	lsls r0, r0, #2
	subs r1, r6, #1
	lsls r1, r1, #1
	ldr r0, [r5, r0]
	adds r1, #0x1b
	bl FUN_02021D6C
	ldr r0, [r5, r7]
	movs r1, #0
	bl FUN_02021CAC
	adds r6, r6, #1
	adds r4, r4, #4
	adds r5, r5, #4
	cmp r6, #5
	blt _021D458C
	movs r0, #6
	lsls r0, r0, #0xe
	str r0, [sp, #0x34]
	movs r0, #0x1a
	lsls r0, r0, #0x10
	str r0, [sp, #0x38]
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	add sp, #0x5c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D45F0: .4byte 0x021D5DD0
	thumb_func_end ov109_021D4518

	thumb_func_start ov109_021D45F4
ov109_021D45F4: @ 0x021D45F4
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	movs r0, #0x14
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	ldr r0, _021D46D0 @ =0x000001C3
	movs r1, #0xc2
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r4, #0x14]
	adds r1, r4, r1
	movs r2, #5
	movs r3, #0x1a
	bl FUN_0201A7E8
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	movs r1, #0xbe
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r4, #0x14]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0x94
	movs r1, #0xc6
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r4, #0x14]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #3
	bl FUN_0201A7E8
	movs r0, #0xc6
	lsls r0, r0, #2
	ldr r1, [r4, #0x58]
	adds r0, r4, r0
	movs r2, #0
	bl ov109_021D46D8
	movs r0, #6
	str r0, [sp]
	movs r0, #0x10
	str r0, [sp, #4]
	movs r0, #0xb
	str r0, [sp, #8]
	movs r0, #0xf
	str r0, [sp, #0xc]
	movs r0, #0xc8
	movs r1, #0xaa
	str r0, [sp, #0x10]
	lsls r1, r1, #2
	ldr r0, [r4, #0x14]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0xaa
	lsls r0, r0, #2
	ldr r2, _021D46D4 @ =0x00010300
	adds r0, r4, r0
	movs r1, #0
	adds r3, r4, #0
	bl ov109_021D537C
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_021D46D0: .4byte 0x000001C3
_021D46D4: .4byte 0x00010300
	thumb_func_end ov109_021D45F4

	thumb_func_start ov109_021D46D8
ov109_021D46D8: @ 0x021D46D8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r4, r2, #0
	movs r0, #1
	movs r2, #0
	adds r7, r1, #0
	bl FUN_02002D7C
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	movs r1, #1
	str r1, [sp]
	movs r0, #0x41
	movs r3, #0xd0
	str r4, [sp, #4]
	subs r4, r3, r6
	lsls r0, r0, #0xa
	lsrs r3, r4, #0x1f
	str r0, [sp, #8]
	movs r0, #0
	adds r3, r4, r3
	str r0, [sp, #0xc]
	adds r0, r5, #0
	adds r2, r7, #0
	asrs r3, r3, #1
	bl FUN_0201D78C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov109_021D46D8

	thumb_func_start ov109_021D471C
ov109_021D471C: @ 0x021D471C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xaa
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #0xc6
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #0xc2
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r4, r0
	bl FUN_0201A8FC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D471C

	thumb_func_start ov109_021D474C
ov109_021D474C: @ 0x021D474C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r0, #0
	movs r1, #1
	bl FUN_020388F4
	bl FUN_0203608C
	cmp r0, #0
	bne _021D4776
	bl FUN_02035E18
	cmp r0, #2
	blt _021D4780
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	bl ov109_021D55A8
	b _021D4780
_021D4776:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0
	bl ov109_021D55A8
_021D4780:
	adds r0, r5, #0
	movs r1, #3
	bl ov109_021D48EC
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D474C

	thumb_func_start ov109_021D478C
ov109_021D478C: @ 0x021D478C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl ov109_021D47B8
	bl FUN_0203608C
	cmp r0, #0
	bne _021D47AE
	bl ov109_021D5360
	cmp r0, #1
	beq _021D47B4
	adds r0, r5, #0
	bl ov109_021D5488
	b _021D47B4
_021D47AE:
	adds r0, r5, #0
	bl ov109_021D5488
_021D47B4:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D478C

	thumb_func_start ov109_021D47B8
ov109_021D47B8: @ 0x021D47B8
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _021D48C4 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _021D4818
	bl FUN_0203608C
	cmp r0, #0
	bne _021D48C2
	ldr r5, [r4, #0x10]
	bl ov109_021D548C
	ldr r1, [r5, #0x2c]
	cmp r1, r0
	bne _021D4810
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021D4810
	movs r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	bl ov109_021D55A8
	adds r0, r4, #0
	movs r1, #0x16
	bl ov109_021D48EC
	add r2, sp, #0
	ldr r0, [r4, #0x10]
	movs r1, #7
	adds r2, #2
	movs r3, #1
	bl FUN_0209BEBC
	adds r0, r4, #0
	movs r1, #0
	bl ov109_021D5858
	pop {r3, r4, r5, pc}
_021D4810:
	ldr r0, _021D48C8 @ =0x000005F2
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D4818:
	movs r0, #2
	tst r0, r1
	beq _021D4894
	bl FUN_0203608C
	cmp r0, #0
	beq _021D484A
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x28]
	cmp r0, #0
	bne _021D4842
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl ov109_021D55A8
	adds r0, r4, #0
	movs r1, #4
	bl ov109_021D48EC
	pop {r3, r4, r5, pc}
_021D4842:
	ldr r0, _021D48C8 @ =0x000005F2
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D484A:
	ldr r5, [r4, #0x10]
	bl FUN_02035E18
	ldr r1, [r5, #0x2c]
	cmp r1, r0
	bne _021D488C
	ldr r0, [r5, #0x30]
	cmp r0, #0
	bne _021D488C
	movs r1, #1
	add r0, sp, #0
	strb r1, [r0, #1]
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	bl ov109_021D55A8
	adds r0, r4, #0
	movs r1, #4
	bl ov109_021D48EC
	add r2, sp, #0
	ldr r0, [r4, #0x10]
	movs r1, #7
	adds r2, #1
	movs r3, #1
	bl FUN_0209BEBC
	adds r0, r4, #0
	movs r1, #0
	bl ov109_021D5858
	pop {r3, r4, r5, pc}
_021D488C:
	ldr r0, _021D48C8 @ =0x000005F2
	bl FUN_02005748
	pop {r3, r4, r5, pc}
_021D4894:
	ldr r0, _021D48CC @ =0x00004A48
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021D48C2
	bl FUN_0203608C
	cmp r0, #0
	bne _021D48C2
	bl FUN_02035E18
	ldr r1, [r4, #0x10]
	ldr r1, [r1, #0x2c]
	cmp r1, r0
	bne _021D48C2
	movs r1, #0
	add r0, sp, #0
	strb r1, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #7
	add r2, sp, #0
	movs r3, #1
	bl FUN_0209BEBC
_021D48C2:
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D48C4: .4byte 0x021BF67C
_021D48C8: .4byte 0x000005F2
_021D48CC: .4byte 0x00004A48
	thumb_func_end ov109_021D47B8

	thumb_func_start ov109_021D48D0
ov109_021D48D0: @ 0x021D48D0
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D48D0

	thumb_func_start ov109_021D48D4
ov109_021D48D4: @ 0x021D48D4
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #2
	bl ov109_021D48EC
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D48D4

	thumb_func_start ov109_021D48EC
ov109_021D48EC: @ 0x021D48EC
	movs r2, #0xd5
	movs r3, #0x1e
	lsls r2, r2, #2
	str r3, [r0, r2]
	adds r2, r2, #4
	str r1, [r0, r2]
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D48EC

	thumb_func_start ov109_021D48FC
ov109_021D48FC: @ 0x021D48FC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	adds r4, r1, #0
	bl ov109_021D5638
	cmp r0, #0
	beq _021D4916
	movs r0, #0xd6
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	subs r0, r0, #4
	str r1, [r5, r0]
_021D4916:
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D48FC

	thumb_func_start ov109_021D4920
ov109_021D4920: @ 0x021D4920
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D493E
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	movs r1, #7
	add r2, sp, #0
	movs r3, #1
	bl FUN_0209BEBC
_021D493E:
	movs r0, #0xd5
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D4920

	thumb_func_start ov109_021D4950
ov109_021D4950: @ 0x021D4950
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x5f
	adds r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021D497C @ =0x021D5D94
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x33
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #5
	adds r1, #0x24
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D497C: .4byte 0x021D5D94
	thumb_func_end ov109_021D4950

	thumb_func_start ov109_021D4980
ov109_021D4980: @ 0x021D4980
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	bl FUN_0203608C
	cmp r0, #0
	ldr r0, [r5, #0x10]
	beq _021D49B4
	ldr r0, [r0, #0x28]
	cmp r0, #0
	beq _021D49D6
	ldr r0, _021D4A9C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xc3
	tst r0, r1
	beq _021D49A8
	ldr r0, _021D4AA0 @ =0x000005F2
	bl FUN_02005748
_021D49A8:
	adds r0, r5, #0
	bl ov109_021D48D0
	add sp, #8
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_021D49B4:
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _021D49D6
	ldr r0, _021D4A9C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xc3
	tst r0, r1
	beq _021D49CA
	ldr r0, _021D4AA0 @ =0x000005F2
	bl FUN_02005748
_021D49CA:
	adds r0, r5, #0
	bl ov109_021D48D0
	add sp, #8
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_021D49D6:
	bl ov109_021D548C
	adds r4, r0, #0
	bl FUN_02035E18
	cmp r4, r0
	beq _021D49F0
	adds r0, r5, #0
	bl ov109_021D48D0
	add sp, #8
	adds r0, r6, #0
	pop {r4, r5, r6, pc}
_021D49F0:
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x5f
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _021D4A90
	subs r1, r1, #1
	cmp r0, r1
	bne _021D4A34
	bl FUN_0203608C
	cmp r0, #0
	bne _021D4A2A
	movs r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	movs r1, #7
	add r2, sp, #4
	movs r3, #1
	bl FUN_0209BEBC
	adds r0, r5, #0
	movs r1, #1
	bl ov109_021D5858
_021D4A2A:
	adds r0, r5, #0
	movs r1, #0
	bl ov109_021D48EC
	b _021D4A88
_021D4A34:
	bl FUN_0203608C
	cmp r0, #0
	bne _021D4A50
	adds r0, r5, #0
	movs r1, #0xb
	bl ov109_021D48EC
	adds r0, r5, #0
	movs r1, #0xe
	movs r2, #0
	bl ov109_021D55A8
	b _021D4A88
_021D4A50:
	add r0, sp, #0
	movs r1, #0
	movs r2, #4
	blx FUN_020C4CF4
	movs r1, #0
	add r0, sp, #0
	strb r1, [r0, #2]
	bl FUN_0203608C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, _021D4AA4 @ =0x00004A50
	movs r1, #1
	strb r1, [r5, r0]
	movs r1, #0
	adds r0, #0xc
	strh r1, [r5, r0]
	movs r0, #0xd5
	movs r1, #6
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #0x10]
	movs r1, #2
	add r2, sp, #0
	movs r3, #4
	bl FUN_0209BEBC
_021D4A88:
	movs r0, #0x33
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021D4A90:
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r6, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D4A9C: .4byte 0x021BF67C
_021D4AA0: .4byte 0x000005F2
_021D4AA4: .4byte 0x00004A50
	thumb_func_end ov109_021D4980

	thumb_func_start ov109_021D4AA8
ov109_021D4AA8: @ 0x021D4AA8
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, _021D4ABC @ =0x00004A5C
	movs r2, #0
	strh r2, [r0, r1]
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r4, pc}
	nop
_021D4ABC: .4byte 0x00004A5C
	thumb_func_end ov109_021D4AA8

	thumb_func_start ov109_021D4AC0
ov109_021D4AC0: @ 0x021D4AC0
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_02035E18
	ldr r1, [r5, #0x10]
	ldrh r1, [r1, #0x38]
	cmp r1, r0
	bne _021D4ADE
	bl ov109_021D548C
	ldr r1, [r5, #0x10]
	ldrh r1, [r1, #0x38]
	cmp r1, r0
	beq _021D4AF6
_021D4ADE:
	ldr r0, _021D4B40 @ =0x00004A5C
	movs r1, #0
	strh r1, [r5, r0]
	movs r0, #0xd5
	movs r1, #8
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
_021D4AF6:
	ldr r0, _021D4B40 @ =0x00004A5C
	ldrsh r1, [r5, r0]
	adds r1, r1, #1
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x1e
	ble _021D4B36
	add r0, sp, #0
	movs r1, #0
	movs r2, #4
	blx FUN_020C4CF4
	movs r1, #1
	add r0, sp, #0
	strb r1, [r0, #2]
	bl FUN_0203608C
	add r1, sp, #0
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	movs r1, #2
	add r2, sp, #0
	movs r3, #4
	bl FUN_0209BEBC
	ldr r0, _021D4B40 @ =0x00004A5C
	movs r1, #0
	strh r1, [r5, r0]
	movs r0, #0xd5
	movs r1, #9
	lsls r0, r0, #2
	str r1, [r5, r0]
_021D4B36:
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4B40: .4byte 0x00004A5C
	thumb_func_end ov109_021D4AC0

	thumb_func_start ov109_021D4B44
ov109_021D4B44: @ 0x021D4B44
	push {r3, r4, r5, lr}
	ldr r2, _021D4B60 @ =0x00004A50
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #0
	strb r1, [r5, r2]
	bl ov109_021D48EC
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D4B60: .4byte 0x00004A50
	thumb_func_end ov109_021D4B44

	thumb_func_start ov109_021D4B64
ov109_021D4B64: @ 0x021D4B64
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x5f
	adds r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021D4B90 @ =0x021D5D94
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x33
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0x17
	adds r1, #0x24
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4B90: .4byte 0x021D5D94
	thumb_func_end ov109_021D4B64

	thumb_func_start ov109_021D4B94
ov109_021D4B94: @ 0x021D4B94
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x10]
	adds r6, r1, #0
	bl ov109_021D548C
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021D4BAE
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D4BCA
_021D4BAE:
	ldr r0, _021D4C40 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xc3
	tst r0, r1
	beq _021D4BBE
	ldr r0, _021D4C44 @ =0x000005F2
	bl FUN_02005748
_021D4BBE:
	adds r0, r5, #0
	bl ov109_021D48D0
	add sp, #4
	adds r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D4BCA:
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x5f
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _021D4C32
	subs r1, r1, #1
	cmp r0, r1
	bne _021D4C06
	movs r0, #0
	str r0, [sp]
	ldr r0, [r5, #0x10]
	movs r1, #7
	add r2, sp, #0
	movs r3, #1
	bl FUN_0209BEBC
	adds r0, r5, #0
	movs r1, #1
	bl ov109_021D5858
	adds r0, r5, #0
	movs r1, #0
	bl ov109_021D48EC
	b _021D4C2A
_021D4C06:
	bl FUN_0203608C
	cmp r0, #0
	bne _021D4C26
	movs r0, #0xd5
	movs r1, #0x18
	lsls r0, r0, #2
	str r1, [r5, r0]
	bl ov109_021D548C
	ldr r1, _021D4C48 @ =0x00004A52
	strb r0, [r5, r1]
	movs r0, #0xc
	bl FUN_0205BEA8
	b _021D4C2A
_021D4C26:
	bl FUN_02022974
_021D4C2A:
	movs r0, #0x33
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021D4C32:
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D4C40: .4byte 0x021BF67C
_021D4C44: .4byte 0x000005F2
_021D4C48: .4byte 0x00004A52
	thumb_func_end ov109_021D4B94

	thumb_func_start ov109_021D4C4C
ov109_021D4C4C: @ 0x021D4C4C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D4C78 @ =0x00004A53
	adds r4, r1, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021D4C72
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #5
	adds r3, r2, #0
	bl FUN_0209BEBC
	cmp r0, #1
	bne _021D4C72
	movs r0, #0xd5
	movs r1, #0x1f
	lsls r0, r0, #2
	str r1, [r5, r0]
_021D4C72:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D4C78: .4byte 0x00004A53
	thumb_func_end ov109_021D4C4C

	thumb_func_start ov109_021D4C7C
ov109_021D4C7C: @ 0x021D4C7C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D4C8E
	bl FUN_02035E18
_021D4C8E:
	bl FUN_02035E18
	ldr r1, [r5, #0x10]
	ldr r1, [r1, #0x20]
	cmp r1, r0
	bne _021D4CA2
	movs r0, #0xd5
	movs r1, #0x1f
	lsls r0, r0, #2
	str r1, [r5, r0]
_021D4CA2:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D4C7C

	thumb_func_start ov109_021D4CA8
ov109_021D4CA8: @ 0x021D4CA8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r4, r1, #0
	movs r1, #0x3e
	lsls r1, r1, #6
	ldr r0, [r0, #0x1c]
	adds r1, r5, r1
	bl ov109_021D59A8
	movs r0, #0xd5
	movs r1, #0x1b
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D4CA8

	thumb_func_start ov109_021D4CC8
ov109_021D4CC8: @ 0x021D4CC8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r0, _021D4D1C @ =0x021BF6DC
	movs r1, #1
	strb r1, [r0, #8]
	movs r0, #0x5f
	bl FUN_0202C1B4
	adds r1, r0, #0
	ldr r0, [r5, #0xc]
	movs r2, #4
	ldr r0, [r0, #0x2c]
	bl FUN_0202B758
	movs r0, #0x5f
	movs r1, #0x11
	bl FUN_0202C244
	adds r1, r0, #0
	ldr r0, [r5, #0xc]
	movs r2, #4
	ldr r0, [r0, #0x2c]
	bl FUN_0202B758
	ldr r0, [r5, #0xc]
	movs r1, #0x14
	ldr r0, [r0, #0x28]
	bl FUN_0202CFEC
	movs r0, #0x3b
	lsls r0, r0, #4
	adds r0, r5, r0
	bl FUN_02038ED4
	movs r0, #0xd5
	movs r1, #0x1c
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D4D1C: .4byte 0x021BF6DC
	thumb_func_end ov109_021D4CC8

	thumb_func_start ov109_021D4D20
ov109_021D4D20: @ 0x021D4D20
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D4D32
	bl FUN_02035E18
_021D4D32:
	ldr r0, [r5, #0xc]
	movs r2, #0x3b
	lsls r2, r2, #4
	ldr r0, [r0, #0x1c]
	movs r1, #2
	adds r2, r5, r2
	bl FUN_02038EDC
	cmp r0, #0
	beq _021D4D72
	ldr r0, _021D4D78 @ =0x00000658
	movs r1, #8
	bl FUN_020057A4
	adds r0, r5, #0
	movs r1, #0xd
	movs r2, #0
	bl ov109_021D55A8
	adds r0, r5, #0
	movs r1, #0x1d
	bl ov109_021D48EC
	movs r1, #0
	movs r0, #0x36
	str r1, [r5, #0x1c]
	lsls r0, r0, #4
	str r1, [r5, r0]
	ldr r0, _021D4D7C @ =0x021BF6DC
	strb r1, [r0, #8]
	ldr r0, [r5, #0x10]
	str r1, [r0, #0x24]
_021D4D72:
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D4D78: .4byte 0x00000658
_021D4D7C: .4byte 0x021BF6DC
	thumb_func_end ov109_021D4D20

	thumb_func_start ov109_021D4D80
ov109_021D4D80: @ 0x021D4D80
	push {r3, r4}
	movs r2, #0x36
	lsls r2, r2, #4
	ldr r4, [r0, r2]
	adds r3, r4, #1
	str r3, [r0, r2]
	cmp r4, #0x3c
	ble _021D4D96
	movs r3, #0xf
	subs r2, #0xc
	str r3, [r0, r2]
_021D4D96:
	adds r0, r1, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov109_021D4D80

	thumb_func_start ov109_021D4D9C
ov109_021D4D9C: @ 0x021D4D9C
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #5
	movs r2, #0
	bl ov109_021D55A8
	adds r0, r5, #0
	movs r1, #0xa
	bl ov109_021D48EC
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D4D9C

	thumb_func_start ov109_021D4DBC
ov109_021D4DBC: @ 0x021D4DBC
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0x36
	lsls r0, r0, #4
	adds r4, r1, #0
	ldr r1, [r5, r0]
	adds r1, r1, #1
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	cmp r0, #0x3c
	ble _021D4DEC
	movs r1, #0x10
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x5f
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r4, #3
_021D4DEC:
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	add sp, #0xc
	pop {r4, r5, pc}
	thumb_func_end ov109_021D4DBC

	thumb_func_start ov109_021D4DF8
ov109_021D4DF8: @ 0x021D4DF8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x5f
	adds r4, r1, #0
	str r0, [sp]
	ldr r0, [r5, #0x14]
	ldr r1, _021D4E24 @ =0x021D5D94
	movs r2, #0x1f
	movs r3, #0xb
	bl FUN_02002100
	movs r1, #0x33
	lsls r1, r1, #4
	str r0, [r5, r1]
	movs r0, #0xc
	adds r1, #0x24
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_021D4E24: .4byte 0x021D5D94
	thumb_func_end ov109_021D4DF8

	thumb_func_start ov109_021D4E28
ov109_021D4E28: @ 0x021D4E28
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r4, [r5, #0x10]
	adds r6, r1, #0
	bl ov109_021D548C
	ldr r1, [r4, #0x2c]
	cmp r1, r0
	bne _021D4E42
	ldr r0, [r4, #0x30]
	cmp r0, #0
	beq _021D4E5E
_021D4E42:
	ldr r0, _021D4ED0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0xc3
	tst r0, r1
	beq _021D4E52
	ldr r0, _021D4ED4 @ =0x000005F2
	bl FUN_02005748
_021D4E52:
	adds r0, r5, #0
	bl ov109_021D48D0
	add sp, #4
	adds r0, r6, #0
	pop {r3, r4, r5, r6, pc}
_021D4E5E:
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0x5f
	bl FUN_02002114
	movs r1, #0
	mvns r1, r1
	cmp r0, r1
	beq _021D4EC4
	subs r1, r1, #1
	cmp r0, r1
	bne _021D4E98
	movs r1, #0
	movs r0, #0xd5
	str r1, [sp]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, #0x10]
	movs r1, #7
	add r2, sp, #0
	movs r3, #1
	bl FUN_0209BEBC
	adds r0, r5, #0
	movs r1, #1
	bl ov109_021D5858
	b _021D4EBC
_021D4E98:
	movs r0, #0xd5
	movs r1, #0xd
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r2, #0
	ldr r0, [r5, #0x10]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_0209BEBC
	movs r0, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_0200B498
_021D4EBC:
	movs r0, #0x33
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021D4EC4:
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r6, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D4ED0: .4byte 0x021BF67C
_021D4ED4: .4byte 0x000005F2
	thumb_func_end ov109_021D4E28

	thumb_func_start ov109_021D4ED8
ov109_021D4ED8: @ 0x021D4ED8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D4EF2
	adds r0, r5, #0
	movs r1, #5
	movs r2, #0
	bl ov109_021D55A8
	b _021D4F0C
_021D4EF2:
	movs r0, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_0200B498
	adds r0, r5, #0
	movs r1, #0x10
	movs r2, #0
	bl ov109_021D55A8
_021D4F0C:
	adds r0, r5, #0
	movs r1, #0xe
	bl ov109_021D48EC
	movs r0, #0x36
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D4ED8

	thumb_func_start ov109_021D4F28
ov109_021D4F28: @ 0x021D4F28
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #0x36
	lsls r1, r1, #4
	ldr r2, [r0, r1]
	adds r2, r2, #1
	str r2, [r0, r1]
	ldr r2, [r0, r1]
	cmp r2, #0x2d
	ble _021D4F42
	movs r2, #0xf
	subs r1, #0xc
	str r2, [r0, r1]
_021D4F42:
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D4F28

	thumb_func_start ov109_021D4F4C
ov109_021D4F4C: @ 0x021D4F4C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xca
	adds r4, r1, #0
	bl FUN_020364F0
	movs r0, #0xd5
	movs r1, #0x10
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D4F4C

	thumb_func_start ov109_021D4F6C
ov109_021D4F6C: @ 0x021D4F6C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0xca
	adds r5, r1, #0
	bl FUN_02036540
	cmp r0, #0
	beq _021D4F9E
	movs r0, #0
	adds r1, r0, #0
	bl FUN_020388F4
	movs r1, #0x10
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x5f
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r5, #3
_021D4F9E:
	adds r0, r4, #0
	bl ov109_021D48D0
	adds r0, r5, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D4F6C

	thumb_func_start ov109_021D4FAC
ov109_021D4FAC: @ 0x021D4FAC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	adds r4, r1, #0
	bl ov109_021D5638
	cmp r0, #0
	beq _021D4FC6
	adds r0, r5, #0
	movs r1, #9
	movs r2, #0
	bl ov109_021D55A8
_021D4FC6:
	movs r0, #0xd5
	movs r1, #0x12
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D4FAC

	thumb_func_start ov109_021D4FD8
ov109_021D4FD8: @ 0x021D4FD8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	adds r4, r1, #0
	bl ov109_021D5638
	cmp r0, #0
	beq _021D4FF0
	movs r0, #0xd5
	movs r1, #0xa
	lsls r0, r0, #2
	str r1, [r5, r0]
_021D4FF0:
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D4FD8

	thumb_func_start ov109_021D4FFC
ov109_021D4FFC: @ 0x021D4FFC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x5c]
	adds r4, r1, #0
	cmp r0, #0xff
	beq _021D501A
	bl ov109_021D5638
	cmp r0, #0
	bne _021D501A
	ldr r0, [r5, #0x5c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_021D501A:
	adds r0, r5, #0
	movs r1, #0xf
	movs r2, #1
	bl ov109_021D55A8
	movs r0, #0xd5
	movs r1, #0x14
	lsls r0, r0, #2
	str r1, [r5, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _021D503C
	adds r0, r5, #0
	movs r1, #0
	bl ov109_021D5858
_021D503C:
	bl FUN_02035E18
	ldr r1, _021D5058 @ =0x00004A58
	movs r2, #0x4b
	str r0, [r5, r1]
	lsls r2, r2, #2
	subs r0, r1, #4
	str r2, [r5, r0]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D5058: .4byte 0x00004A58
	thumb_func_end ov109_021D4FFC

	thumb_func_start ov109_021D505C
ov109_021D505C: @ 0x021D505C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D5094 @ =0x00004A58
	adds r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D507A
	bl FUN_02035E18
	ldr r1, _021D5094 @ =0x00004A58
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D507A
	movs r0, #0
	str r0, [r5, r1]
_021D507A:
	movs r0, #0xd5
	movs r1, #0x15
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r1, #0
	adds r0, #0xc
	str r1, [r5, r0]
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D5094: .4byte 0x00004A58
	thumb_func_end ov109_021D505C

	thumb_func_start ov109_021D5098
ov109_021D5098: @ 0x021D5098
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _021D5104 @ =0x00004A58
	adds r4, r1, #0
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D50B6
	bl FUN_02035E18
	ldr r1, _021D5104 @ =0x00004A58
	ldr r2, [r5, r1]
	cmp r2, r0
	beq _021D50B6
	movs r0, #0
	str r0, [r5, r1]
_021D50B6:
	ldr r0, _021D5108 @ =0x00004A54
	ldr r1, [r5, r0]
	subs r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0
	bge _021D50CA
	movs r1, #0
	adds r0, r0, #4
	str r1, [r5, r0]
_021D50CA:
	movs r1, #0x36
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r0, r0, #1
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	cmp r0, #0x3c
	ble _021D50F8
	ldr r0, _021D5104 @ =0x00004A58
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021D50F8
	movs r0, #0
	subs r1, #0xc
	str r0, [r5, r1]
	bl FUN_0203608C
	cmp r0, #0
	bne _021D50F8
	adds r0, r5, #0
	movs r1, #1
	bl ov109_021D5858
_021D50F8:
	adds r0, r5, #0
	bl ov109_021D48D0
	adds r0, r4, #0
	pop {r3, r4, r5, pc}
	nop
_021D5104: .4byte 0x00004A58
_021D5108: .4byte 0x00004A54
	thumb_func_end ov109_021D5098

	thumb_func_start ov109_021D510C
ov109_021D510C: @ 0x021D510C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0xc
	bl FUN_0205BEA8
	movs r1, #0x10
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x5f
	str r0, [sp, #8]
	movs r0, #0
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	movs r0, #1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl ov109_021D48D0
	movs r0, #3
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D510C

	thumb_func_start ov109_021D5140
ov109_021D5140: @ 0x021D5140
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	cmp r4, #0x13
	bgt _021D5168
	bge _021D51CE
	cmp r4, #8
	bgt _021D5162
	cmp r4, #2
	blt _021D524E
	beq _021D5176
	cmp r4, #7
	beq _021D5248
	cmp r4, #8
	beq _021D5248
	pop {r4, r5, r6, pc}
_021D5162:
	cmp r4, #0xd
	beq _021D517C
	pop {r4, r5, r6, pc}
_021D5168:
	cmp r4, #0x19
	bgt _021D5170
	beq _021D5196
	pop {r4, r5, r6, pc}
_021D5170:
	cmp r4, #0x1f
	beq _021D521C
	pop {r4, r5, r6, pc}
_021D5176:
	bl ov109_021D5658
	b _021D5248
_021D517C:
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5248
	movs r1, #0x5f
	bl FUN_02002154
	movs r0, #0x33
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	b _021D5248
_021D5196:
	ldr r0, [r5, #0x5c]
	bl ov109_021D5638
	cmp r0, #0
	bne _021D51AA
	ldr r0, [r5, #0x5c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_021D51AA:
	adds r0, r5, #0
	movs r1, #0xc
	movs r2, #0
	bl ov109_021D55A8
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5248
	movs r1, #0x5f
	bl FUN_02002154
	movs r0, #0x33
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
	b _021D5248
_021D51CE:
	ldr r0, _021D5250 @ =0x00004A50
	ldrb r0, [r5, r0]
	cmp r0, #1
	beq _021D524E
	adds r0, r6, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_0200B498
	bl FUN_0203608C
	cmp r6, r0
	beq _021D524E
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5206
	movs r1, #0x5f
	bl FUN_02002154
	movs r0, #0x33
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021D5206:
	bl FUN_0203608C
	cmp r0, #0
	bne _021D5248
	ldr r2, [r5, #0x10]
	ldr r0, _021D5254 @ =0x0000FFFF
	ldr r1, [r2, #0x30]
	eors r0, r6
	ands r0, r1
	str r0, [r2, #0x30]
	b _021D5248
_021D521C:
	ldr r0, [r5, #0x5c]
	bl ov109_021D5638
	cmp r0, #0
	bne _021D5230
	ldr r0, [r5, #0x5c]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D730
_021D5230:
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _021D5248
	movs r1, #0x5f
	bl FUN_02002154
	movs r0, #0x33
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r5, r0]
_021D5248:
	movs r0, #0xd5
	lsls r0, r0, #2
	str r4, [r5, r0]
_021D524E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_021D5250: .4byte 0x00004A50
_021D5254: .4byte 0x0000FFFF
	thumb_func_end ov109_021D5140

	thumb_func_start ov109_021D5258
ov109_021D5258: @ 0x021D5258
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xd5
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	adds r6, r2, #0
	cmp r0, #3
	bne _021D52FA
	cmp r4, #1
	beq _021D5276
	cmp r4, #0x13
	beq _021D52BC
	b _021D52F2
_021D5276:
	adds r0, r6, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_0200B498
	adds r0, r5, #0
	movs r1, #1
	bl ov109_021D5858
	movs r0, #0xd5
	lsls r0, r0, #2
	str r4, [r5, r0]
	bl FUN_02035E18
	ldr r1, [r5, #0x10]
	str r0, [r1, #0x2c]
	ldr r0, [r5, #0x10]
	movs r1, #0
	str r1, [r0, #0x30]
	bl FUN_0203608C
	cmp r0, #0
	bne _021D530C
	movs r3, #1
	str r3, [sp]
	ldr r0, [r5, #0x10]
	movs r1, #7
	add r2, sp, #0
	bl FUN_0209BEBC
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021D52BC:
	adds r0, r6, #0
	bl FUN_02032EE8
	adds r2, r0, #0
	ldr r0, [r5, #0x34]
	movs r1, #0
	bl FUN_0200B498
	bl FUN_0203608C
	cmp r6, r0
	beq _021D530C
	bl FUN_0203608C
	cmp r0, #0
	bne _021D52E8
	ldr r2, [r5, #0x10]
	ldr r0, _021D5310 @ =0x0000FFFF
	ldr r1, [r2, #0x30]
	eors r0, r6
	ands r0, r1
	str r0, [r2, #0x30]
_021D52E8:
	movs r0, #0xd5
	lsls r0, r0, #2
	add sp, #4
	str r4, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_021D52F2:
	bl FUN_02022974
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_021D52FA:
	cmp r4, #1
	bne _021D530C
	ldr r0, [r5, #0x10]
	movs r1, #0
	str r1, [r0, #0x30]
	bl FUN_02035E18
	ldr r1, [r5, #0x10]
	str r0, [r1, #0x2c]
_021D530C:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_021D5310: .4byte 0x0000FFFF
	thumb_func_end ov109_021D5258

	thumb_func_start ov109_021D5314
ov109_021D5314: @ 0x021D5314
	push {r3, lr}
	ldrh r1, [r0]
	adds r1, #0xa
	strh r1, [r0]
	ldrh r2, [r0]
	movs r1, #0x5a
	lsls r1, r1, #2
	cmp r2, r1
	bls _021D532A
	movs r1, #0
	strh r1, [r0]
_021D532A:
	ldrh r0, [r0]
	bl FUN_0201D250
	movs r1, #0xa
	adds r2, r0, #0
	muls r2, r1, r2
	asrs r0, r2, #0xb
	lsrs r0, r0, #0x14
	adds r0, r2, r0
	asrs r0, r0, #0xc
	adds r0, #0xf
	lsls r2, r0, #5
	movs r0, #0x1d
	orrs r2, r0
	add r0, sp, #0
	strh r2, [r0]
	add r0, sp, #0
	movs r2, #2
	blx FUN_020C0160
	add r0, sp, #0
	movs r1, #0x2a
	movs r2, #2
	blx FUN_020C0160
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov109_021D5314

	thumb_func_start ov109_021D5360
ov109_021D5360: @ 0x021D5360
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r5, #0
_021D5366:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _021D5372
	adds r5, r5, #1
_021D5372:
	adds r4, r4, #1
	cmp r4, #5
	blt _021D5366
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D5360

	thumb_func_start ov109_021D537C
ov109_021D537C: @ 0x021D537C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	str r3, [sp, #0x14]
	adds r6, r0, #0
	str r2, [sp, #0x10]
	bl FUN_0203608C
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	bl ov109_021D54CC
	cmp r0, #0
	bne _021D539C
	add sp, #0x28
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D539C:
	adds r0, r6, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldr r7, [sp, #0x14]
	movs r0, #0
	str r0, [sp, #0x20]
	adds r4, r7, #0
	movs r5, #1
_021D53AE:
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	cmp r0, #0
	beq _021D5468
	bl FUN_02025F24
	str r0, [sp, #0x24]
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r0, [r7, r0]
	ldr r1, [r4, #0x3c]
	bl FUN_02025EF4
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x24]
	ldr r0, [r0, #0x34]
	movs r1, #0
	movs r3, #5
	bl FUN_0200B60C
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x14]
	ldr r0, [r0, #0x34]
	ldr r1, [r1, #0x38]
	movs r2, #1
	movs r3, #0x5f
	bl FUN_0200B29C
	str r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	cmp r1, r0
	str r5, [sp]
	bne _021D5430
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D5484 @ =0x00020300
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x3c]
	adds r0, r6, #0
	movs r3, #5
	bl FUN_0201D78C
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D5484 @ =0x00020300
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0x46
	bl FUN_0201D78C
	b _021D5462
_021D5430:
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x3c]
	adds r0, r6, #0
	movs r3, #5
	bl FUN_0201D78C
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x18]
	str r0, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0x46
	bl FUN_0201D78C
_021D5462:
	ldr r0, [sp, #0x18]
	bl FUN_020237BC
_021D5468:
	ldr r0, [sp, #0x20]
	adds r7, #8
	adds r0, r0, #1
	adds r4, r4, #4
	adds r5, #0x12
	str r0, [sp, #0x20]
	cmp r0, #5
	blt _021D53AE
	adds r0, r6, #0
	bl FUN_0201A954
	movs r0, #1
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D5484: .4byte 0x00020300
	thumb_func_end ov109_021D537C

	thumb_func_start ov109_021D5488
ov109_021D5488: @ 0x021D5488
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D5488

	thumb_func_start ov109_021D548C
ov109_021D548C: @ 0x021D548C
	push {r3, r4, r5, lr}
	movs r5, #0
	adds r4, r5, #0
_021D5492:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _021D549E
	adds r5, r5, #1
_021D549E:
	adds r4, r4, #1
	cmp r4, #5
	blt _021D5492
	adds r0, r5, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021D548C

	thumb_func_start ov109_021D54A8
ov109_021D54A8: @ 0x021D54A8
	push {r4, r5, r6, lr}
	movs r5, #0
	adds r4, r5, #0
	movs r6, #1
_021D54B0:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _021D54C0
	adds r0, r6, #0
	lsls r0, r4
	orrs r5, r0
_021D54C0:
	adds r4, r4, #1
	cmp r4, #5
	blt _021D54B0
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov109_021D54A8

	thumb_func_start ov109_021D54CC
ov109_021D54CC: @ 0x021D54CC
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r4, #0
	str r4, [sp]
	adds r6, r7, #0
	adds r5, r7, #0
_021D54D8:
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r1, [r6, r0]
	adds r0, r0, #4
	str r1, [r6, r0]
	adds r0, r4, #0
	bl FUN_02032EE8
	movs r1, #0xdd
	lsls r1, r1, #2
	str r0, [r6, r1]
	ldr r0, _021D559C @ =0x00004A60
	ldr r2, _021D55A0 @ =0x00004A68
	ldr r1, [r5, r0]
	adds r0, r0, #4
	ldr r0, [r5, r0]
	str r1, [r5, r2]
	adds r1, r2, #4
	str r0, [r5, r1]
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D5516
	bl FUN_02025F20
	ldr r1, _021D559C @ =0x00004A60
	str r0, [r5, r1]
	movs r1, #1
	ldr r0, _021D55A4 @ =0x00004A64
	b _021D5520
_021D5516:
	adds r0, r2, #0
	movs r1, #0
	subs r0, #8
	str r1, [r5, r0]
	subs r0, r2, #4
_021D5520:
	adds r4, r4, #1
	str r1, [r5, r0]
	adds r6, #8
	adds r5, #0x10
	cmp r4, #5
	blt _021D54D8
	movs r4, #0
	adds r2, r7, #0
	adds r3, r7, #0
_021D5532:
	movs r0, #0xdd
	movs r1, #0xde
	lsls r0, r0, #2
	lsls r1, r1, #2
	ldr r0, [r7, r0]
	ldr r1, [r7, r1]
	cmp r1, r0
	beq _021D555C
	movs r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021D5554
	movs r0, #0xe7
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r2, r0]
	b _021D558C
_021D5554:
	movs r0, #0xe7
	lsls r0, r0, #2
	str r1, [r2, r0]
	b _021D558C
_021D555C:
	ldr r0, _021D559C @ =0x00004A60
	ldr r5, _021D55A0 @ =0x00004A68
	ldr r1, [r3, r0]
	ldr r6, [r3, r5]
	adds r0, r0, #4
	adds r5, r5, #4
	ldr r0, [r3, r0]
	ldr r5, [r3, r5]
	eors r1, r6
	eors r5, r0
	orrs r1, r5
	beq _021D558C
	movs r1, #1
	str r1, [sp]
	cmp r0, #0
	bne _021D5586
	movs r0, #0xe7
	movs r1, #3
	lsls r0, r0, #2
	str r1, [r2, r0]
	b _021D558C
_021D5586:
	movs r0, #0xe7
	lsls r0, r0, #2
	str r1, [r2, r0]
_021D558C:
	adds r4, r4, #1
	adds r7, #8
	adds r2, r2, #4
	adds r3, #0x10
	cmp r4, #5
	blt _021D5532
	ldr r0, [sp]
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D559C: .4byte 0x00004A60
_021D55A0: .4byte 0x00004A68
_021D55A4: .4byte 0x00004A64
	thumb_func_end ov109_021D54CC

	thumb_func_start ov109_021D55A8
ov109_021D55A8: @ 0x021D55A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r7, r1, #0
	movs r0, #0xb4
	movs r1, #0x5f
	adds r6, r2, #0
	bl FUN_02023790
	adds r4, r0, #0
	ldr r0, [r5, #0x38]
	adds r1, r7, #0
	adds r2, r4, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x34]
	ldr r1, [r5, #0x54]
	adds r2, r4, #0
	bl FUN_0200C388
	adds r0, r4, #0
	bl FUN_020237BC
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0xbe
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0
	movs r2, #1
	movs r3, #0xa
	bl FUN_0200E060
	cmp r6, #0
	bne _021D5618
	adds r0, r5, #0
	bl ov109_021D5854
	movs r3, #0
	str r3, [sp]
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r2, [r5, #0x54]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	add sp, #0xc
	str r0, [r5, #0x5c]
	pop {r4, r5, r6, r7, pc}
_021D5618:
	movs r3, #0
	str r3, [sp]
	str r3, [sp, #4]
	str r3, [sp, #8]
	movs r0, #0xbe
	lsls r0, r0, #2
	ldr r2, [r5, #0x54]
	adds r0, r5, r0
	movs r1, #1
	bl FUN_0201D738
	movs r0, #0xff
	str r0, [r5, #0x5c]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov109_021D55A8

	thumb_func_start ov109_021D5638
ov109_021D5638: @ 0x021D5638
	push {r3, lr}
	cmp r0, #0xff
	bne _021D5642
	movs r0, #1
	pop {r3, pc}
_021D5642:
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl FUN_0201D724
	cmp r0, #0
	bne _021D5652
	movs r0, #1
	pop {r3, pc}
_021D5652:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov109_021D5638

	thumb_func_start ov109_021D5658
ov109_021D5658: @ 0x021D5658
	movs r1, #0xbe
	lsls r1, r1, #2
	adds r0, r0, r1
	ldr r3, _021D5664 @ =FUN_0200E084
	movs r1, #0
	bx r3
	.align 2, 0
_021D5664: .4byte FUN_0200E084
	thumb_func_end ov109_021D5658

	thumb_func_start ov109_021D5668
ov109_021D5668: @ 0x021D5668
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #0xcf
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #0x14]
	movs r0, #0xd3
	lsls r0, r0, #2
	movs r4, #0
	adds r0, r5, r0
	str r4, [sp, #8]
	adds r6, r5, #0
	movs r7, #0x1c
	str r0, [sp, #0x18]
_021D568A:
	movs r0, #0xe7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #3
	bhi _021D5756
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D56A0: @ jump table
	.2byte _021D5756 - _021D56A0 - 2 @ case 0
	.2byte _021D56A8 - _021D56A0 - 2 @ case 1
	.2byte _021D5756 - _021D56A0 - 2 @ case 2
	.2byte _021D571E - _021D56A0 - 2 @ case 3
_021D56A8:
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	cmp r0, #0
	bne _021D56B6
	bl FUN_02022974
_021D56B6:
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02025F30
	str r0, [sp, #0xc]
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02025F8C
	str r0, [sp, #0x10]
	bl FUN_0203608C
	cmp r4, r0
	bne _021D56E8
	movs r0, #0x8f
	ldr r1, [sp, #0xc]
	lsls r0, r0, #2
	lsls r1, r1, #1
	ldr r0, [r5, r0]
	adds r1, #0x26
	bl FUN_02021D6C
	b _021D5704
_021D56E8:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x18]
	str r0, [sp]
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	adds r2, r4, #0
	bl ov109_021D57E0
	movs r0, #0x8f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #4]
	bl FUN_02021D6C
_021D5704:
	movs r0, #0x8f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02021CAC
	movs r0, #0xe7
	movs r1, #2
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r0, #1
	str r0, [sp, #8]
	b _021D5756
_021D571E:
	bl FUN_0203608C
	cmp r4, r0
	bne _021D5742
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	bl FUN_02025F30
	adds r1, r0, #0
	movs r0, #0x8f
	lsls r0, r0, #2
	lsls r1, r1, #1
	ldr r0, [r5, r0]
	adds r1, #0x27
	bl FUN_02021D6C
	b _021D574E
_021D5742:
	movs r0, #0x8f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r7, #0
	bl FUN_02021D6C
_021D574E:
	movs r0, #0xe7
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r5, r0]
_021D5756:
	ldr r0, [sp, #4]
	adds r4, r4, #1
	adds r0, r0, #2
	adds r5, r5, #4
	adds r6, #8
	adds r7, r7, #2
	str r0, [sp, #4]
	cmp r4, #5
	blt _021D568A
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021D5774
	ldr r0, _021D5778 @ =0x0000064F
	bl FUN_02005748
_021D5774:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_021D5778: .4byte 0x0000064F
	thumb_func_end ov109_021D5668

	thumb_func_start ov109_021D577C
ov109_021D577C: @ 0x021D577C
	push {r3, r4, r5, lr}
	movs r2, #0xd3
	adds r5, r0, #0
	lsls r2, r2, #2
	adds r4, r1, #0
	movs r0, #0x68
	movs r1, #8
	adds r2, r5, r2
	movs r3, #0x5f
	bl FUN_02006F88
	movs r2, #0xd1
	lsls r2, r2, #2
	str r0, [r5, r2]
	adds r2, #0xc
	adds r0, r4, #0
	movs r1, #7
	adds r2, r5, r2
	movs r3, #0x5f
	bl FUN_020071EC
	movs r3, #0xd2
	lsls r3, r3, #2
	str r0, [r5, r3]
	movs r0, #0x5f
	subs r3, #0xc
	str r0, [sp]
	movs r0, #0x68
	movs r1, #0x20
	movs r2, #1
	adds r3, r5, r3
	bl FUN_02006F50
	movs r3, #0xcd
	lsls r3, r3, #2
	str r0, [r5, r3]
	movs r0, #0x5f
	adds r3, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #9
	movs r2, #1
	adds r3, r5, r3
	bl FUN_020071B4
	movs r1, #0xce
	lsls r1, r1, #2
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov109_021D577C

	thumb_func_start ov109_021D57E0
ov109_021D57E0: @ 0x021D57E0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x18]
	adds r1, r3, #0
	adds r5, r2, #0
	bl FUN_0205CA0C
	adds r4, r0, #0
	ldr r0, [r6, #4]
	movs r2, #6
	ldr r6, [r0, #0xc]
	ldr r0, [r7, #4]
	lsls r2, r2, #8
	ldr r1, [r0, #0x14]
	adds r0, r4, #0
	muls r0, r2, r0
	adds r0, r1, r0
	ldr r1, _021D5820 @ =0x021D5D9C
	lsls r3, r5, #1
	ldrh r1, [r1, r3]
	blx FUN_020C02BC
	lsls r0, r4, #5
	adds r1, r5, #7
	adds r0, r6, r0
	lsls r1, r1, #5
	movs r2, #0x20
	blx FUN_020C0160
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D5820: .4byte 0x021D5D9C
	thumb_func_end ov109_021D57E0

	thumb_func_start ov109_021D5824
ov109_021D5824: @ 0x021D5824
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0xd2
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0xcd
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	movs r0, #0xce
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov109_021D5824

	thumb_func_start ov109_021D5854
ov109_021D5854: @ 0x021D5854
	movs r0, #1
	bx lr
	thumb_func_end ov109_021D5854

	thumb_func_start ov109_021D5858
ov109_021D5858: @ 0x021D5858
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	cmp r0, #0
	bne _021D58A4
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	bne _021D5876
	movs r0, #1
	bl FUN_02037B58
	b _021D5886
_021D5876:
	bl FUN_02035E18
	adds r0, r4, r0
	cmp r0, #5
	ble _021D5882
	movs r0, #5
_021D5882:
	bl FUN_02037B58
_021D5886:
	movs r0, #0
	mvns r0, r0
	cmp r4, r0
	ldr r0, _021D58A8 @ =0x00004A51
	bne _021D5896
	movs r1, #2
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D5896:
	cmp r4, #0
	bne _021D58A0
	movs r1, #1
	strb r1, [r5, r0]
	pop {r3, r4, r5, pc}
_021D58A0:
	movs r1, #0
	strb r1, [r5, r0]
_021D58A4:
	pop {r3, r4, r5, pc}
	nop
_021D58A8: .4byte 0x00004A51
	thumb_func_end ov109_021D5858

	thumb_func_start ov109_021D58AC
ov109_021D58AC: @ 0x021D58AC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	bl ov109_021D548C
	adds r5, r0, #0
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0x2c]
	cmp r5, r0
	ble _021D58D6
	movs r3, #1
	add r0, sp, #0
	strb r3, [r0]
	ldr r0, [r4, #0x10]
	movs r1, #7
	add r2, sp, #0
	bl FUN_0209BEBC
	movs r1, #1
	b _021D58D8
_021D58D6:
	movs r1, #0
_021D58D8:
	ldr r0, _021D59A0 @ =0x00004A48
	str r1, [r4, r0]
	ldr r0, _021D59A4 @ =0x00004A44
	ldr r0, [r4, r0]
	cmp r5, r0
	bne _021D58EA
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D58EA:
	cmp r5, #5
	bhi _021D5990
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_021D58FA: @ jump table
	.2byte _021D5990 - _021D58FA - 2 @ case 0
	.2byte _021D5906 - _021D58FA - 2 @ case 1
	.2byte _021D594A - _021D58FA - 2 @ case 2
	.2byte _021D594A - _021D58FA - 2 @ case 3
	.2byte _021D594A - _021D58FA - 2 @ case 4
	.2byte _021D5982 - _021D58FA - 2 @ case 5
_021D5906:
	bl FUN_02035E18
	cmp r0, #1
	bgt _021D5916
	bl FUN_020318EC
	cmp r0, #1
	bls _021D591C
_021D5916:
	add sp, #4
	movs r0, #1
	pop {r3, r4, r5, r6, pc}
_021D591C:
	movs r0, #0xd5
	movs r1, #0x11
	lsls r0, r0, #2
	str r1, [r4, r0]
	adds r0, r4, #0
	subs r1, #0x12
	bl ov109_021D5858
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D5944
	movs r1, #0x5f
	bl FUN_02002154
	movs r0, #0x33
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
_021D5944:
	add sp, #4
	movs r0, #2
	pop {r3, r4, r5, r6, pc}
_021D594A:
	movs r0, #0xd
	bl FUN_0205BEA8
	ldr r0, _021D59A4 @ =0x00004A44
	ldr r1, [r4, r0]
	cmp r5, r1
	bge _021D5990
	adds r0, #0xd
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _021D5966
	cmp r0, #1
	beq _021D5970
	b _021D5978
_021D5966:
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov109_021D5858
	b _021D5978
_021D5970:
	adds r0, r4, #0
	movs r1, #0
	bl ov109_021D5858
_021D5978:
	bl FUN_02035E18
	ldr r1, [r4, #0x10]
	str r0, [r1, #0x2c]
	b _021D5990
_021D5982:
	movs r0, #0xc
	bl FUN_0205BEA8
	adds r0, r4, #0
	adds r1, r6, #0
	bl ov109_021D5858
_021D5990:
	bl ov109_021D548C
	ldr r1, _021D59A4 @ =0x00004A44
	str r0, [r4, r1]
	movs r0, #1
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D59A0: .4byte 0x00004A48
_021D59A4: .4byte 0x00004A44
	thumb_func_end ov109_021D58AC

	thumb_func_start ov109_021D59A8
ov109_021D59A8: @ 0x021D59A8
	bx lr
	.align 2, 0
	thumb_func_end ov109_021D59A8
	@ 0x021D59AC
