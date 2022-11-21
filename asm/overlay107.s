	.include "macros/function.inc"


	.text

	thumb_func_start ov107_02241AE0
ov107_02241AE0: @ 0x02241AE0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _02241BC8 @ =0x00000068
	movs r1, #2
	bl FUN_02006590
	bl ov107_02242F24
	movs r2, #0x25
	movs r0, #3
	movs r1, #0x64
	lsls r2, r2, #0xc
	bl FUN_02017FC8
	ldr r1, _02241BCC @ =0x0000043C
	adds r0, r4, #0
	movs r2, #0x64
	bl FUN_0200681C
	ldr r2, _02241BCC @ =0x0000043C
	movs r1, #0
	adds r5, r0, #0
	blx FUN_020D5124
	movs r0, #0x64
	bl FUN_02018340
	str r0, [r5, #0x4c]
	adds r0, r4, #0
	str r4, [r5]
	bl FUN_02006840
	adds r4, r0, #0
	movs r0, #0x73
	ldr r1, [r4]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl FUN_020302DC
	movs r1, #0x1d
	lsls r1, r1, #4
	str r0, [r5, r1]
	subs r0, r1, #4
	ldr r0, [r5, r0]
	bl FUN_0203041C
	movs r1, #0x75
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x20
	strb r0, [r5, #9]
	movs r0, #0xf5
	lsls r0, r0, #2
	subs r1, #8
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl FUN_02025E44
	movs r1, #0x72
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xf6
	ldr r1, [r4, #0x18]
	lsls r0, r0, #2
	str r1, [r5, r0]
	movs r2, #0xff
	strb r2, [r5, #0x12]
	ldrh r1, [r4, #0x28]
	adds r0, #0x5e
	adds r2, #0xcd
	strh r1, [r5, r0]
	ldr r0, [r5, r2]
	bl FUN_0203068C
	str r0, [r5, #4]
	ldr r0, _02241BD0 @ =0x00000433
	movs r3, #0
	movs r2, #1
_02241B84:
	adds r1, r5, r3
	adds r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02241B84
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02241B9C
	movs r0, #3
	b _02241B9E
_02241B9C:
	movs r0, #4
_02241B9E:
	strb r0, [r5, #0x14]
	ldrb r0, [r5, #0x14]
	strb r0, [r5, #0x15]
	subs r0, r0, #1
	strb r0, [r5, #0xc]
	adds r0, r5, #0
	bl ov107_02242F5C
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241BBE
	adds r0, r5, #0
	bl FUN_0209BA80
_02241BBE:
	movs r0, #0
	str r0, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
	nop
_02241BC8: .4byte 0x00000068
_02241BCC: .4byte 0x0000043C
_02241BD0: .4byte 0x00000433
	thumb_func_end ov107_02241AE0

	thumb_func_start ov107_02241BD4
ov107_02241BD4: @ 0x02241BD4
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, _02241D28 @ =0x00000432
	adds r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #1
	bne _02241C3E
	ldr r2, [r5]
	cmp r2, #1
	bne _02241C64
	movs r2, #0
	strb r2, [r4, r1]
	bl ov107_022451D8
	movs r0, #0x3b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02241C0A
	bl ov107_02249B8C
	ldrb r1, [r4, #0xe]
	movs r0, #4
	bics r1, r0
	strb r1, [r4, #0xe]
_02241C0A:
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl FUN_0222E5D0
	adds r0, r4, #0
	movs r1, #8
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov107_02244BD0
	b _02241C64
_02241C3E:
	ldrb r0, [r4, #0x12]
	cmp r0, #0xff
	beq _02241C64
	ldr r0, [r5]
	cmp r0, #1
	beq _02241C4E
	cmp r0, #3
	bne _02241C64
_02241C4E:
	ldr r0, _02241D28 @ =0x00000432
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov107_022451D8
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov107_02244BD0
_02241C64:
	ldr r0, [r5]
	cmp r0, #4
	bhi _02241D12
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02241C76: @ jump table
	.2byte _02241C80 - _02241C76 - 2 @ case 0
	.2byte _02241C96 - _02241C76 - 2 @ case 1
	.2byte _02241CD8 - _02241C76 - 2 @ case 2
	.2byte _02241CEE - _02241C76 - 2 @ case 3
	.2byte _02241D04 - _02241C76 - 2 @ case 4
_02241C80:
	adds r0, r4, #0
	bl ov107_02241D6C
	cmp r0, #1
	bne _02241D12
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov107_02244BD0
	b _02241D12
_02241C96:
	adds r0, r4, #0
	bl ov107_02241EC8
	cmp r0, #1
	bne _02241D12
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02241CB6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov107_02244BD0
	b _02241D12
_02241CB6:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241CCC
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov107_02244BD0
	b _02241D12
_02241CCC:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov107_02244BD0
	b _02241D12
_02241CD8:
	adds r0, r4, #0
	bl ov107_02242C64
	cmp r0, #1
	bne _02241D12
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov107_02244BD0
	b _02241D12
_02241CEE:
	adds r0, r4, #0
	bl ov107_02242D60
	cmp r0, #1
	bne _02241D12
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov107_02244BD0
	b _02241D12
_02241D04:
	adds r0, r4, #0
	bl ov107_02242DCC
	cmp r0, #1
	bne _02241D12
	movs r0, #1
	pop {r3, r4, r5, pc}
_02241D12:
	adds r0, r4, #0
	bl ov107_02245C00
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020219F8
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_02241D28: .4byte 0x00000432
	thumb_func_end ov107_02241BD4

	thumb_func_start ov107_02241D2C
ov107_02241D2C: @ 0x02241D2C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #0xf5
	lsls r0, r0, #2
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl ov107_02242E14
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x64
	bl FUN_0201807C
	ldr r0, _02241D68 @ =0x00000068
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_02241D68: .4byte 0x00000068
	thumb_func_end ov107_02241D2C

	thumb_func_start ov107_02241D6C
ov107_02241D6C: @ 0x02241D6C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _02241E68
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02241D84: @ jump table
	.2byte _02241D8E - _02241D84 - 2 @ case 0
	.2byte _02241DAA - _02241D84 - 2 @ case 1
	.2byte _02241DD2 - _02241D84 - 2 @ case 2
	.2byte _02241E18 - _02241D84 - 2 @ case 3
	.2byte _02241E5A - _02241D84 - 2 @ case 4
_02241D8E:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241DA2
	bl FUN_020365F4
	movs r0, #0xd7
	bl FUN_020364F0
_02241DA2:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241DAA:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241DCA
	movs r0, #0xd7
	bl FUN_02036540
	cmp r0, #1
	bne _02241E68
	bl FUN_020365F4
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241DCA:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241DD2:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241DF2
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	bl ov107_0224529C
	cmp r0, #1
	bne _02241E68
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241DF2:
	adds r0, r4, #0
	bl ov107_02241E70
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241E18:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02241E52
	ldrb r0, [r4, #0xf]
	cmp r0, #2
	blo _02241E68
	movs r0, #0
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	bl ov107_02241E70
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241E52:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02241E68
_02241E5A:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02241E68
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02241E68:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_02241D6C

	thumb_func_start ov107_02241E70
ov107_02241E70: @ 0x02241E70
	push {r4, r5, lr}
	sub sp, #0xc
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	adds r4, r0, #0
	adds r1, #2
	add r2, sp, #8
	adds r3, #2
	bl ov107_02244E14
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov107_02245464
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov107_02245780
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x80
	bl ov107_02243CC0
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x70
	bl ov107_02243DB0
	adds r0, r4, #0
	bl ov107_02243FA4
	bl FUN_0201FFD0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02241E70

	thumb_func_start ov107_02241EC8
ov107_02241EC8: @ 0x02241EC8
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0x15
	bls _02241ED8
	bl _02242C54
_02241ED8:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02241EE4: @ jump table
	.2byte _02241F10 - _02241EE4 - 2 @ case 0
	.2byte _02241FC2 - _02241EE4 - 2 @ case 1
	.2byte _02242090 - _02241EE4 - 2 @ case 2
	.2byte _022422D8 - _02241EE4 - 2 @ case 3
	.2byte _022424AE - _02241EE4 - 2 @ case 4
	.2byte _02242580 - _02241EE4 - 2 @ case 5
	.2byte _02242592 - _02241EE4 - 2 @ case 6
	.2byte _022425C2 - _02241EE4 - 2 @ case 7
	.2byte _022425E6 - _02241EE4 - 2 @ case 8
	.2byte _02242730 - _02241EE4 - 2 @ case 9
	.2byte _022427CC - _02241EE4 - 2 @ case 10
	.2byte _0224294A - _02241EE4 - 2 @ case 11
	.2byte _02242A28 - _02241EE4 - 2 @ case 12
	.2byte _02242A3A - _02241EE4 - 2 @ case 13
	.2byte _02242A6A - _02241EE4 - 2 @ case 14
	.2byte _02242A8E - _02241EE4 - 2 @ case 15
	.2byte _02242AAA - _02241EE4 - 2 @ case 16
	.2byte _02242AD2 - _02241EE4 - 2 @ case 17
	.2byte _02242B96 - _02241EE4 - 2 @ case 18
	.2byte _02242BB2 - _02241EE4 - 2 @ case 19
	.2byte _02242BD6 - _02241EE4 - 2 @ case 20
	.2byte _02242C16 - _02241EE4 - 2 @ case 21
_02241F10:
	ldrb r1, [r4, #0xe]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1e
	cmp r1, #1
	bne _02241F3E
	bl ov107_02244064
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xcc
	movs r2, #0x64
	bl ov107_02249C60
	movs r0, #2
	strb r0, [r4, #8]
	ldrb r1, [r4, #0xe]
	movs r0, #0x60
	add sp, #0x18
	bics r1, r0
	strb r1, [r4, #0xe]
	movs r0, #0
	pop {r4, r5, r6, pc}
_02241F3E:
	cmp r1, #2
	bne _02241F66
	bl ov107_0224409C
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd3
	movs r2, #0x6a
	bl ov107_02249C60
	movs r0, #8
	strb r0, [r4, #8]
	ldrb r1, [r4, #0xe]
	movs r0, #0x60
	add sp, #0x18
	bics r1, r0
	strb r1, [r4, #0xe]
	movs r0, #0
	pop {r4, r5, r6, pc}
_02241F66:
	ldr r1, _022422C0 @ =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov107_02244BD8
	ldr r0, _022422C0 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _02241FA0
	ldr r0, _022422C4 @ =0x000005DC
	bl FUN_02005748
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	blo _02241F8C
	add sp, #0x18
	movs r0, #1
	pop {r4, r5, r6, pc}
_02241F8C:
	adds r0, r4, #0
	bl ov107_0224400C
	adds r0, r4, #0
	bl ov107_02244018
	movs r0, #1
	strb r0, [r4, #8]
	bl _02242C54
_02241FA0:
	movs r0, #2
	tst r0, r1
	beq _02241FE2
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _02241FE2
	ldr r0, _022422C4 @ =0x000005DC
	bl FUN_02005748
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_02244C70
	bl _02242C54
_02241FC2:
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001288
	ldr r1, _022422C4 @ =0x000005DC
	adds r5, r0, #0
	bl ov107_02249CE0
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _0224200A
	bhs _02242014
	cmp r5, #0xb
	bls _02241FE6
_02241FE2:
	bl _02242C54
_02241FE6:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02241FF2: @ jump table
	.2byte _02242028 - _02241FF2 - 2 @ case 0
	.2byte _02242C54 - _02241FF2 - 2 @ case 1
	.2byte _02242C54 - _02241FF2 - 2 @ case 2
	.2byte _02242C54 - _02241FF2 - 2 @ case 3
	.2byte _02242C54 - _02241FF2 - 2 @ case 4
	.2byte _0224203C - _02241FF2 - 2 @ case 5
	.2byte _02242C54 - _02241FF2 - 2 @ case 6
	.2byte _02242C54 - _02241FF2 - 2 @ case 7
	.2byte _02242C54 - _02241FF2 - 2 @ case 8
	.2byte _02242050 - _02241FF2 - 2 @ case 9
	.2byte _02242066 - _02241FF2 - 2 @ case 10
	.2byte _0224207C - _02241FF2 - 2 @ case 11
_0224200A:
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	bl _02242C54
_02242014:
	adds r0, r4, #0
	bl ov107_0224403C
	adds r0, r4, #0
	bl ov107_02243FA4
	movs r0, #0
	strb r0, [r4, #8]
	bl _02242C54
_02242028:
	adds r0, r4, #0
	bl ov107_0224403C
	adds r0, r4, #0
	bl ov107_02244064
	movs r0, #2
	strb r0, [r4, #8]
	bl _02242C54
_0224203C:
	adds r0, r4, #0
	bl ov107_0224403C
	adds r0, r4, #0
	bl ov107_0224409C
	movs r0, #8
	strb r0, [r4, #8]
	bl _02242C54
_02242050:
	adds r0, r4, #0
	bl ov107_0224403C
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_02245B40
	movs r0, #0x14
	strb r0, [r4, #8]
	bl _02242C54
_02242066:
	adds r0, r4, #0
	bl ov107_0224403C
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_02245B90
	movs r0, #0x15
	strb r0, [r4, #8]
	bl _02242C54
_0224207C:
	adds r0, r4, #0
	bl ov107_0224403C
	adds r0, r4, #0
	bl ov107_02243FA4
	movs r0, #0
	strb r0, [r4, #8]
	bl _02242C54
_02242090:
	movs r0, #0x66
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x16
	bl FUN_020014D0
	ldr r0, _022422C0 @ =0x021BF67C
	movs r1, #0x40
	ldr r2, [r0, #0x48]
	adds r0, r2, #0
	tst r0, r1
	beq _02242104
	ldrh r0, [r4, #0x16]
	cmp r0, #0
	bne _02242162
	movs r0, #1
	str r0, [sp]
	movs r0, #0x80
	movs r1, #0x66
	str r0, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #8
	adds r1, r4, r1
	movs r3, #4
	bl FUN_02001408
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020013AC
	ldr r0, _022422C4 @ =0x000005DC
	bl FUN_02005748
	movs r3, #1
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r4, #0xb0
	adds r1, r4, #0
	movs r2, #0x1c
	str r3, [sp, #0x14]
	bl ov107_0224379C
	add sp, #0x18
	movs r0, #0
	pop {r4, r5, r6, pc}
_02242104:
	movs r0, #0x80
	tst r0, r2
	beq _02242162
	ldrh r0, [r4, #0x16]
	cmp r0, #4
	bne _02242162
	movs r0, #1
	str r0, [sp]
	str r1, [sp, #4]
	movs r2, #0
	str r2, [sp, #8]
	movs r1, #0x66
	str r2, [sp, #0xc]
	lsls r1, r1, #2
	ldr r0, [r4, r1]
	adds r1, #8
	adds r1, r4, r1
	adds r3, r2, #0
	bl FUN_02001408
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020013AC
	ldr r0, _022422C4 @ =0x000005DC
	bl FUN_02005748
	movs r3, #1
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r4, #0xb0
	adds r1, r4, #0
	movs r2, #0x18
	str r3, [sp, #0x14]
	bl ov107_0224379C
	add sp, #0x18
	movs r0, #0
	pop {r4, r5, r6, pc}
_02242162:
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001288
	ldr r1, _022422C4 @ =0x000005DC
	adds r5, r0, #0
	bl ov107_02249CE0
	movs r0, #0x66
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x16
	bl FUN_020014D0
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _022421AA
	bhs _022421B4
	cmp r5, #4
	bls _02242194
	bl _02242C54
_02242194:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022421A0: @ jump table
	.2byte _02242C54 - _022421A0 - 2 @ case 0
	.2byte _022421D0 - _022421A0 - 2 @ case 1
	.2byte _022421D0 - _022421A0 - 2 @ case 2
	.2byte _022421D0 - _022421A0 - 2 @ case 3
	.2byte _0224224A - _022421A0 - 2 @ case 4
_022421AA:
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	bl _02242C54
_022421B4:
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_02244094
	adds r0, r4, #0
	bl ov107_02244018
	movs r0, #1
	strb r0, [r4, #8]
	bl _02242C54
_022421D0:
	adds r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov107_02244094
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #0
	bl ov107_02249CAC
	ldrh r2, [r4, #0x16]
	movs r1, #0xc
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _022422C8 @ =0x02249FF0
	ldr r1, [r1, r3]
	cmp r0, r1
	bhs _0224221E
	adds r0, r4, #0
	movs r1, #0x21
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_0224221E:
	lsls r3, r2, #1
	ldr r2, _022422CC @ =0x02249E0C
	movs r1, #0
	ldrh r2, [r2, r3]
	adds r0, r4, #0
	movs r3, #3
	str r1, [sp]
	bl ov107_02244A74
	adds r0, r4, #0
	movs r1, #0x37
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_022441DC
	movs r0, #3
	strb r0, [r4, #8]
	bl _02242C54
_0224224A:
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #0
	bl ov107_02249CAC
	adds r6, r0, #0
	cmp r6, #3
	bne _02242270
	ldr r0, _022422C4 @ =0x000005DC
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _022422D0 @ =0x000005F3
	bl FUN_02005748
	bl _02242C54
_02242270:
	strb r5, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244094
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	movs r1, #0
	ldr r2, _022422D4 @ =0x02249E46
	lsls r3, r6, #1
	ldrh r2, [r2, r3]
	adds r0, r4, #0
	movs r3, #4
	str r1, [sp]
	bl ov107_02244A74
	adds r0, r4, #0
	movs r1, #0x26
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_022441DC
	movs r0, #4
	strb r0, [r4, #8]
	bl _02242C54
	.align 2, 0
_022422C0: .4byte 0x021BF67C
_022422C4: .4byte 0x000005DC
_022422C8: .4byte 0x02249FF0
_022422CC: .4byte 0x02249E0C
_022422D0: .4byte 0x000005F3
_022422D4: .4byte 0x02249E46
_022422D8:
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02242302
	bhs _022422FC
	cmp r0, #1
	bls _022422F4
	bl _02242C54
_022422F4:
	cmp r0, #0
	beq _0224230A
	cmp r0, #1
	bne _022422FE
_022422FC:
	b _02242494
_022422FE:
	bl _02242C54
_02242302:
	adds r1, r1, #1
	cmp r0, r1
	bl _02242C54
_0224230A:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r6, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl FUN_02030698
	adds r6, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #0
	bl ov107_02249CAC
	ldrh r1, [r4, #0x16]
	movs r2, #0xc
	adds r3, r1, #0
	muls r3, r2, r3
	ldr r2, _0224266C @ =0x02249FF0
	ldr r2, [r2, r3]
	cmp r0, r2
	bhs _0224238A
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	adds r0, r4, #0
	movs r1, #0x21
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_0224238A:
	ldr r0, _02242670 @ =0x02249E0C
	lsls r2, r1, #1
	ldrh r0, [r0, r2]
	cmp r6, r0
	bhs _022423BC
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_022423BC:
	cmp r1, #0
	bne _022423EE
	adds r0, r5, #0
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	cmp r6, r0
	bne _02242448
	adds r0, r4, #0
	movs r1, #0x25
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_022423EE:
	cmp r1, #1
	bne _02242410
	adds r0, r5, #0
	bl ov107_02245210
	cmp r0, #0
	bne _02242448
	adds r0, r4, #0
	movs r1, #0x25
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_02242410:
	adds r0, r5, #0
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	cmp r6, r0
	bne _02242448
	adds r0, r5, #0
	bl ov107_02245210
	cmp r0, #0
	bne _02242448
	adds r0, r4, #0
	movs r1, #0x25
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #7
	strb r0, [r4, #8]
	bl _02242C54
_02242448:
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02242486
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	subs r2, r2, #1
	lsls r3, r2, #1
	ldr r2, _02242670 @ =0x02249E0C
	ldrh r2, [r2, r3]
	bl FUN_0223BC2C
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	bl ov107_02245780
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_022454F8
	movs r0, #0x12
	strb r0, [r4, #8]
	b _02242C54
_02242486:
	ldrb r1, [r4, #0xe]
	movs r0, #2
	add sp, #0x18
	orrs r0, r1
	strb r0, [r4, #0xe]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02242494:
	adds r0, r4, #0
	bl ov107_02245618
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_02244064
	movs r0, #2
	strb r0, [r4, #8]
	b _02242C54
_022424AE:
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _022424D0
	bhs _02242566
	cmp r0, #1
	bhi _022424CE
	cmp r0, #0
	beq _022424D6
	cmp r0, #1
	beq _02242566
_022424CE:
	b _02242C54
_022424D0:
	adds r1, r1, #1
	cmp r0, r1
	b _02242C54
_022424D6:
	adds r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	adds r5, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #0
	bl ov107_02249CAC
	lsls r1, r0, #1
	ldr r0, _02242674 @ =0x02249E46
	ldrh r0, [r0, r1]
	cmp r5, r0
	bhs _0224253E
	adds r0, r4, #0
	bl ov107_02245618
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #7
	strb r0, [r4, #8]
	b _02242C54
_0224253E:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02242558
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r2, #4
	bl ov107_02245C94
	movs r0, #5
	strb r0, [r4, #8]
	b _02242C54
_02242558:
	ldrb r1, [r4, #0xe]
	movs r0, #2
	add sp, #0x18
	orrs r0, r1
	strb r0, [r4, #0xe]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02242566:
	adds r0, r4, #0
	bl ov107_02245618
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_02244064
	movs r0, #2
	strb r0, [r4, #8]
	b _02242C54
_02242580:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_02244E44
	cmp r0, #1
	bne _0224262A
	movs r0, #6
	strb r0, [r4, #8]
	b _02242C54
_02242592:
	ldr r0, _02242678 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0224262A
	ldr r0, _0224267C @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov107_02245618
	adds r0, r4, #0
	bl ov107_02244064
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xcc
	movs r2, #0x64
	bl ov107_02249C60
	movs r0, #2
	strb r0, [r4, #8]
	b _02242C54
_022425C2:
	ldr r0, _02242678 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _0224262A
	ldr r0, _0224267C @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_02244064
	movs r0, #2
	strb r0, [r4, #8]
	b _02242C54
_022425E6:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001288
	ldr r1, _0224267C @ =0x000005DC
	adds r5, r0, #0
	bl ov107_02249CE0
	movs r0, #0x66
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x16
	bl FUN_020014D0
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _0224262C
	bhs _02242632
	cmp r5, #8
	bhi _0224262A
	cmp r5, #6
	blo _0224262A
	beq _0224264C
	cmp r5, #7
	beq _02242680
	cmp r5, #8
	beq _022426DA
_0224262A:
	b _02242C54
_0224262C:
	adds r0, r0, #1
	cmp r5, r0
	b _02242C54
_02242632:
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_022440C0
	adds r0, r4, #0
	bl ov107_02244018
	movs r0, #1
	strb r0, [r4, #8]
	b _02242C54
_0224264C:
	adds r0, r4, #0
	adds r0, #0xb0
	strb r5, [r4, #0x13]
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_022440C0
	adds r0, r4, #0
	movs r1, #6
	bl ov107_022440C8
	movs r0, #9
	strb r0, [r4, #8]
	b _02242C54
	nop
_0224266C: .4byte 0x02249FF0
_02242670: .4byte 0x02249E0C
_02242674: .4byte 0x02249E46
_02242678: .4byte 0x021BF67C
_0224267C: .4byte 0x000005DC
_02242680:
	adds r0, r4, #0
	adds r0, #0xb0
	strb r5, [r4, #0x13]
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_022440C0
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #1
	bl ov107_02249CAC
	cmp r0, #1
	bne _022426CC
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	adds r0, r4, #0
	movs r1, #0x36
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #0xe
	strb r0, [r4, #8]
	add sp, #0x18
	movs r0, #0
	pop {r4, r5, r6, pc}
_022426CC:
	adds r0, r4, #0
	movs r1, #7
	bl ov107_022440C8
	movs r0, #9
	strb r0, [r4, #8]
	b _02242C54
_022426DA:
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #1
	bl ov107_02249CAC
	adds r6, r0, #0
	cmp r6, #3
	bne _022426FE
	ldr r0, _02242A1C @ =0x000005DC
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _02242A20 @ =0x000005F3
	bl FUN_02005748
	b _02242C54
_022426FE:
	adds r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov107_022440C0
	movs r1, #0
	ldr r2, _02242A24 @ =0x02249E4C
	lsls r3, r6, #1
	ldrh r2, [r2, r3]
	adds r0, r4, #0
	movs r3, #4
	str r1, [sp]
	bl ov107_02244A74
	adds r0, r4, #0
	movs r1, #0x26
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_022441DC
	movs r0, #0xb
	strb r0, [r4, #8]
	b _02242C54
_02242730:
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001288
	ldr r1, _02242A1C @ =0x000005DC
	adds r5, r0, #0
	bl ov107_02249CE0
	movs r0, #0x66
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x16
	bl FUN_020014D0
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	beq _02242760
	adds r0, r0, #1
	cmp r5, r0
	beq _02242804
	b _02242772
_02242760:
	adds r0, r4, #0
	bl ov107_02244120
	adds r0, r4, #0
	bl ov107_0224409C
	movs r0, #8
	strb r0, [r4, #8]
	b _02242C54
_02242772:
	movs r0, #0x11
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201AD10
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244D5C
	adds r2, r0, #0
	movs r1, #0
	adds r0, r4, #0
	movs r3, #3
	str r1, [sp]
	bl ov107_02244A74
	adds r0, r4, #0
	movs r1, #0x37
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_022441DC
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0xa
	strb r0, [r4, #8]
	b _02242C54
_022427CC:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r5, r0, #0
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02242806
	bhs _02242802
	cmp r0, #1
	bhi _02242804
	cmp r0, #0
	beq _0224280C
	cmp r0, #1
	bne _02242804
_02242802:
	b _02242938
_02242804:
	b _02242C54
_02242806:
	adds r1, r1, #1
	cmp r0, r1
	b _02242C54
_0224280C:
	adds r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r6, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r6, #0
	bl FUN_02030698
	adds r6, r0, #0
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244D5C
	cmp r6, r0
	bhs _02242870
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0xf
	strb r0, [r4, #8]
	b _02242C54
_02242870:
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _02242902
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022428DA
	adds r0, r4, #0
	bl ov107_02244120
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244D5C
	adds r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl FUN_0223BC2C
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	bl ov107_02245780
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244DE0
	adds r2, r0, #0
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_022455A0
	movs r0, #0x12
	strb r0, [r4, #8]
	b _02242C54
_022428DA:
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244DE0
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl ov107_02244120
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	ldrb r1, [r4, #0xe]
	movs r0, #2
	add sp, #0x18
	orrs r0, r1
	strb r0, [r4, #0xe]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02242902:
	adds r0, r5, #0
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov107_02244A8C
	adds r0, r5, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	ldr r0, [r4, #0x24]
	movs r1, #1
	bl FUN_0200B744
	adds r0, r4, #0
	movs r1, #0x3c
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #0x10
	strb r0, [r4, #8]
	b _02242C54
_02242938:
	adds r0, r4, #0
	bl ov107_02245618
	adds r0, r4, #0
	bl ov107_022456E4
	movs r0, #9
	strb r0, [r4, #8]
	b _02242C54
_0224294A:
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _0224296C
	bhs _02242A02
	cmp r0, #1
	bhi _0224296A
	cmp r0, #0
	beq _02242972
	cmp r0, #1
	beq _02242A02
_0224296A:
	b _02242C54
_0224296C:
	adds r1, r1, #1
	cmp r0, r1
	b _02242C54
_02242972:
	adds r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	adds r5, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #1
	bl ov107_02249CAC
	lsls r1, r0, #1
	ldr r0, _02242A24 @ =0x02249E4C
	ldrh r0, [r0, r1]
	cmp r5, r0
	bhs _022429DA
	adds r0, r4, #0
	bl ov107_02245618
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	adds r0, r4, #0
	movs r1, #0x29
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #0xe
	strb r0, [r4, #8]
	b _02242C54
_022429DA:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022429F4
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r2, #8
	bl ov107_02245C94
	movs r0, #0xc
	strb r0, [r4, #8]
	b _02242C54
_022429F4:
	ldrb r1, [r4, #0xe]
	movs r0, #2
	add sp, #0x18
	orrs r0, r1
	strb r0, [r4, #0xe]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02242A02:
	adds r0, r4, #0
	bl ov107_02245618
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_0224409C
	movs r0, #8
	strb r0, [r4, #8]
	b _02242C54
	.align 2, 0
_02242A1C: .4byte 0x000005DC
_02242A20: .4byte 0x000005F3
_02242A24: .4byte 0x02249E4C
_02242A28:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_02244E44
	cmp r0, #1
	bne _02242AF2
	movs r0, #0xd
	strb r0, [r4, #8]
	b _02242C54
_02242A3A:
	ldr r0, _02242C5C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02242AF2
	ldr r0, _02242C60 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov107_02245618
	adds r0, r4, #0
	bl ov107_0224409C
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd3
	movs r2, #0x6a
	bl ov107_02249C60
	movs r0, #8
	strb r0, [r4, #8]
	b _02242C54
_02242A6A:
	ldr r0, _02242C5C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02242AF2
	ldr r0, _02242C60 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_0224409C
	movs r0, #8
	strb r0, [r4, #8]
	b _02242C54
_02242A8E:
	ldr r0, _02242C5C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02242AF2
	ldr r0, _02242C60 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov107_022456E4
	movs r0, #9
	strb r0, [r4, #8]
	b _02242C54
_02242AAA:
	ldr r0, _02242C5C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02242AF2
	ldr r0, _02242C60 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	movs r1, #0x3d
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_022441DC
	movs r0, #0x11
	strb r0, [r4, #8]
	b _02242C54
_02242AD2:
	movs r0, #0x5f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02242AF4
	bhs _02242B84
	cmp r0, #1
	bhi _02242AF2
	cmp r0, #0
	beq _02242AFA
	cmp r0, #1
	beq _02242B84
_02242AF2:
	b _02242C54
_02242AF4:
	adds r1, r1, #1
	cmp r0, r1
	b _02242C54
_02242AFA:
	adds r0, r4, #0
	bl ov107_02245618
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02242B5C
	adds r0, r4, #0
	bl ov107_02244120
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244D5C
	adds r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl FUN_0223BC2C
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	bl ov107_02245780
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244DE0
	adds r2, r0, #0
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_022455A0
	movs r0, #0x12
	strb r0, [r4, #8]
	b _02242C54
_02242B5C:
	ldrh r1, [r4, #0x16]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244DE0
	strh r0, [r4, #0x10]
	adds r0, r4, #0
	bl ov107_02244120
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	ldrb r1, [r4, #0xe]
	movs r0, #2
	add sp, #0x18
	orrs r0, r1
	strb r0, [r4, #0xe]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02242B84:
	adds r0, r4, #0
	bl ov107_02245618
	adds r0, r4, #0
	bl ov107_022456E4
	movs r0, #9
	strb r0, [r4, #8]
	b _02242C54
_02242B96:
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244E44
	cmp r0, #1
	bne _02242C54
	movs r0, #0x13
	strb r0, [r4, #8]
	b _02242C54
_02242BB2:
	ldr r0, _02242C5C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02242C54
	ldr r0, _02242C60 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_02243FA4
	movs r0, #0
	strb r0, [r4, #8]
	b _02242C54
_02242BD6:
	ldr r1, _02242C5C @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	adds r3, r2, #0
	tst r3, r1
	beq _02242BEA
	subs r1, #0x21
	bl ov107_02245140
	b _02242C54
_02242BEA:
	movs r1, #0x10
	tst r1, r2
	beq _02242BF8
	movs r1, #1
	bl ov107_02245140
	b _02242C54
_02242BF8:
	movs r0, #3
	tst r0, r2
	beq _02242C54
	ldr r0, _02242C60 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov107_02245BE0
	adds r0, r4, #0
	bl ov107_02244018
	movs r0, #1
	strb r0, [r4, #8]
	b _02242C54
_02242C16:
	ldr r1, _02242C5C @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	adds r3, r2, #0
	tst r3, r1
	beq _02242C2A
	subs r1, #0x21
	bl ov107_0224518C
	b _02242C54
_02242C2A:
	movs r1, #0x10
	tst r1, r2
	beq _02242C38
	movs r1, #1
	bl ov107_0224518C
	b _02242C54
_02242C38:
	movs r0, #3
	tst r0, r2
	beq _02242C54
	ldr r0, _02242C60 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov107_02245BE0
	adds r0, r4, #0
	bl ov107_02244018
	movs r0, #1
	strb r0, [r4, #8]
_02242C54:
	movs r0, #0
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02242C5C: .4byte 0x021BF67C
_02242C60: .4byte 0x000005DC
	thumb_func_end ov107_02241EC8

	thumb_func_start ov107_02242C64
ov107_02242C64: @ 0x02242C64
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #4
	bhi _02242D56
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02242C7A: @ jump table
	.2byte _02242C84 - _02242C7A - 2 @ case 0
	.2byte _02242CB2 - _02242C7A - 2 @ case 1
	.2byte _02242CDE - _02242C7A - 2 @ case 2
	.2byte _02242D00 - _02242C7A - 2 @ case 3
	.2byte _02242D1E - _02242C7A - 2 @ case 4
_02242C84:
	ldrb r1, [r4, #0xe]
	movs r0, #0x60
	bics r1, r0
	strb r1, [r4, #0xe]
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	ldrb r2, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xb
	bl ov107_0224529C
	cmp r0, #1
	bne _02242D56
	ldrb r1, [r4, #0xe]
	movs r0, #2
	bics r1, r0
	strb r1, [r4, #0xe]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242D56
_02242CB2:
	ldrb r1, [r4, #0x12]
	cmp r1, #0xff
	beq _02242D56
	movs r1, #0
	strb r1, [r4, #0xf]
	ldrb r2, [r4, #0x13]
	cmp r2, #4
	beq _02242CC6
	cmp r2, #8
	bne _02242CD0
_02242CC6:
	ldrb r1, [r4, #0x12]
	adds r0, r4, #0
	bl ov107_02245C94
	b _02242CD6
_02242CD0:
	ldrb r1, [r4, #0x12]
	bl ov107_022459D0
_02242CD6:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242D56
_02242CDE:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x12]
	bl ov107_02249C9C
	adds r1, r0, #0
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244E44
	cmp r0, #1
	bne _02242D56
	movs r0, #0x1e
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242D56
_02242D00:
	ldrb r0, [r4, #0xb]
	subs r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _02242D56
	bl FUN_020365F4
	movs r0, #0x82
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242D56
_02242D1E:
	movs r0, #0x82
	bl FUN_02036540
	cmp r0, #1
	bne _02242D56
	bl FUN_020365F4
	movs r0, #0x64
	bl FUN_020363E8
	movs r0, #0xff
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #0xe]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1e
	bne _02242D4C
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_02243FA4
_02242D4C:
	ldr r0, _02242D5C @ =0x00000432
	movs r1, #0
	strb r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_02242D56:
	movs r0, #0
	pop {r4, pc}
	nop
_02242D5C: .4byte 0x00000432
	thumb_func_end ov107_02242C64

	thumb_func_start ov107_02242D60
ov107_02242D60: @ 0x02242D60
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02242D74
	cmp r1, #1
	beq _02242D8C
	cmp r1, #2
	beq _02242DAE
	b _02242DC8
_02242D74:
	movs r1, #0xd
	movs r2, #0
	bl ov107_0224529C
	cmp r0, #1
	bne _02242DC8
	movs r0, #0x1e
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242DC8
_02242D8C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _02242D96
	subs r0, r0, #1
	strb r0, [r4, #0xb]
_02242D96:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _02242DC8
	bl FUN_020365F4
	movs r0, #0x83
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242DC8
_02242DAE:
	movs r0, #0x83
	bl FUN_02036540
	cmp r0, #1
	bne _02242DC8
	bl FUN_020365F4
	adds r4, #0xb0
	adds r0, r4, #0
	bl ov107_02245288
	movs r0, #1
	pop {r4, pc}
_02242DC8:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov107_02242D60

	thumb_func_start ov107_02242DCC
ov107_02242DCC: @ 0x02242DCC
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02242DDE
	cmp r0, #1
	beq _02242DFE
	b _02242E0C
_02242DDE:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02242E0C
_02242DFE:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02242E0C
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02242E0C:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_02242DCC

	thumb_func_start ov107_02242E14
ov107_02242E14: @ 0x02242E14
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	movs r0, #0xed
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	movs r0, #0xee
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	bl ov107_02249B8C
	ldrb r0, [r5, #9]
	movs r1, #1
	bl FUN_0223B7A8
	adds r7, r0, #0
	movs r6, #0
	cmp r7, #0
	ble _02242E96
	adds r4, r5, #0
_02242E70:
	movs r0, #0x39
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	movs r0, #0xef
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, r7
	blt _02242E70
_02242E96:
	bl FUN_02039794
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	movs r1, #2
	bl FUN_02002FA0
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	movs r1, #0
	bl FUN_02002FA0
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r5, r0]
	bl FUN_02002F54
	movs r0, #7
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r5, r0]
	adds r0, #0x18
	adds r0, r5, r0
	bl ov107_02249954
	ldr r0, [r5, #0x20]
	bl FUN_0200B190
	ldr r0, [r5, #0x1c]
	bl FUN_0200B190
	ldr r0, [r5, #0x24]
	bl FUN_0200B3F0
	ldr r0, [r5, #0x28]
	bl FUN_020237BC
	ldr r0, [r5, #0x2c]
	bl FUN_020237BC
	movs r0, #0x71
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200C560
	movs r6, #0
	adds r4, r5, #0
_02242EF8:
	ldr r0, [r4, #0x30]
	bl FUN_020237BC
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _02242EF8
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	bl ov107_02249D5C
	ldr r0, [r5, #0x4c]
	bl ov107_022433A8
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02006CA8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02242E14

	thumb_func_start ov107_02242F24
ov107_02242F24: @ 0x02242F24
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
	ldr r0, _02242F54 @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _02242F58 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_02242F54: .4byte 0xFFFFE0FF
_02242F58: .4byte 0x04001000
	thumb_func_end ov107_02242F24

	thumb_func_start ov107_02242F5C
ov107_02242F5C: @ 0x02242F5C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r5, r0, #0
	movs r0, #0x96
	movs r1, #0x64
	bl FUN_02006C24
	movs r1, #0xf7
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov107_02243324
	adds r0, r5, #0
	bl ov107_02243384
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0xc7
	movs r3, #0x64
	bl FUN_0200B144
	str r0, [r5, #0x20]
	ldr r2, _02243310 @ =0x00000187
	movs r0, #1
	movs r1, #0x1a
	movs r3, #0x64
	bl FUN_0200B144
	str r0, [r5, #0x1c]
	movs r0, #0x64
	bl FUN_0200B358
	str r0, [r5, #0x24]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x64
	bl FUN_02023790
	str r0, [r5, #0x28]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x64
	bl FUN_02023790
	str r0, [r5, #0x2c]
	movs r6, #0
	adds r4, r5, #0
	movs r7, #0x20
_02242FBE:
	adds r0, r7, #0
	movs r1, #0x64
	bl FUN_02023790
	str r0, [r4, #0x30]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _02242FBE
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x64
	bl FUN_02002E7C
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x64
	bl FUN_02002E98
	movs r0, #1
	movs r1, #2
	movs r2, #0
	movs r3, #0x64
	bl FUN_0200C440
	movs r1, #0x71
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r1, r5, #0
	ldr r0, [r5, #0x4c]
	adds r1, #0x50
	movs r2, #0
	bl ov107_02249D14
	add r0, sp, #0x2c
	add r1, sp, #0x30
	add r3, sp, #0x2c
	str r0, [sp]
	adds r0, r5, #0
	adds r1, #2
	add r2, sp, #0x30
	adds r3, #2
	bl ov107_02244E14
	movs r1, #0
	movs r0, #4
	str r0, [sp]
	movs r0, #0xa0
	str r0, [sp, #4]
	movs r0, #0xa
	str r0, [sp, #8]
	movs r0, #0x76
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0xe1
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r1, #0
	movs r0, #5
	str r0, [sp]
	movs r0, #0xa0
	str r0, [sp, #4]
	movs r0, #0x7c
	str r0, [sp, #8]
	movs r0, #0x76
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0xe2
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r0, r1, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov107_02249BAC
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224308E
	movs r0, #0x48
	movs r7, #0x40
	str r0, [sp, #0x18]
	b _02243094
_0224308E:
	movs r0, #0x28
	movs r7, #0x20
	str r0, [sp, #0x18]
_02243094:
	ldrb r0, [r5, #9]
	movs r1, #1
	bl FUN_0223B7A8
	movs r6, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	bgt _022430A6
	b _022431CC
_022430A6:
	adds r4, r5, #0
_022430A8:
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	movs r1, #2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x3e
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov107_02249B1C
	movs r1, #0x3a
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x38
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #6
	movs r2, #0
	str r0, [sp, #0x1c]
	bl FUN_02074470
	cmp r0, #0
	bne _022430FC
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
_022430FC:
	ldr r0, [sp, #0x1c]
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x1c]
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x30
	bl FUN_0208C104
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov107_022450E8
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x30
	bl FUN_0208C104
	adds r1, r0, #0
	adds r0, r5, #0
	bl ov107_02245114
	movs r1, #0
	str r0, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x4e
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov107_02249B1C
	movs r1, #0xef
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x28]
	movs r2, #3
	str r0, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x3a
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r1, r6, #3
	adds r3, r2, #0
	bl ov107_02249B1C
	movs r1, #0x39
	lsls r1, r1, #4
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x48
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r1, r0, #0
	movs r0, #0x39
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249C08
	ldr r0, [sp, #0x18]
	adds r6, r6, #1
	adds r0, #0x40
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	adds r4, r4, #4
	adds r7, #0x40
	cmp r6, r0
	bge _022431CC
	b _022430A8
_022431CC:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	movs r0, #0xa2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	movs r0, #0x76
	str r1, [sp, #0x10]
	movs r1, #1
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov107_02249B1C
	movs r1, #0xe3
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0x11
	bl ov107_022499BC
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	movs r1, #0x11
	bl ov107_022499FC
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov107_02249BAC
	adds r0, r5, #0
	add r1, sp, #0x38
	add r2, sp, #0x34
	movs r3, #0
	bl ov107_02244D08
	movs r1, #0
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x38]
	adds r2, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x34]
	adds r3, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0xed
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x38]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	movs r1, #0
	str r0, [sp, #0xc]
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0xee
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02243296
	movs r0, #0xee
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov107_02249BAC
_02243296:
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	movs r1, #0
	str r0, [sp, #8]
	movs r0, #0x76
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0xf3
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl ov107_02249BAC
	movs r1, #0
	movs r0, #3
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0x3d
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl ov107_02249BAC
	bl FUN_02035E38
	cmp r0, #0
	beq _0224330A
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	bl FUN_02039734
_0224330A:
	ldr r0, _02243314 @ =ov107_022433EC
	b _02243318
	nop
_02243310: .4byte 0x00000187
_02243314: .4byte ov107_022433EC
_02243318:
	adds r1, r5, #0
	bl FUN_02017798
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02242F5C

	thumb_func_start ov107_02243324
ov107_02243324: @ 0x02243324
	push {r4, lr}
	adds r4, r0, #0
	bl ov107_02243424
	ldr r0, [r4, #0x4c]
	bl ov107_02243444
	movs r0, #0x64
	bl FUN_02002F38
	movs r1, #7
	lsls r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #2
	lsls r2, r1, #8
	movs r3, #0x64
	bl FUN_02002F70
	movs r2, #7
	lsls r2, r2, #6
	ldr r0, [r4, r2]
	movs r1, #0
	adds r2, #0x40
	movs r3, #0x64
	bl FUN_02002F70
	adds r0, r4, #0
	movs r1, #3
	bl ov107_02243588
	bl ov107_022435FC
	adds r0, r4, #0
	movs r1, #2
	bl ov107_02243630
	bl ov107_02243678
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #4
	bl ov107_0224373C
	pop {r4, pc}
	thumb_func_end ov107_02243324

	thumb_func_start ov107_02243384
ov107_02243384: @ 0x02243384
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	adds r2, r0, #0
	movs r1, #0xf6
	movs r0, #0x76
	lsls r1, r1, #2
	lsls r0, r0, #2
	lsls r2, r2, #0x18
	ldr r1, [r4, r1]
	adds r0, r4, r0
	lsrs r2, r2, #0x18
	bl ov107_02249604
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02243384

	thumb_func_start ov107_022433A8
ov107_022433A8: @ 0x022433A8
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
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov107_022433A8

	thumb_func_start ov107_022433EC
ov107_022433EC: @ 0x022433EC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022433FE
	bl FUN_02003694
_022433FE:
	ldr r0, [r4, #0x4c]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _0224341C @ =0x027E0000
	ldr r1, _02243420 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0224341C: .4byte 0x027E0000
_02243420: .4byte 0x00003FF8
	thumb_func_end ov107_022433EC

	thumb_func_start ov107_02243424
ov107_02243424: @ 0x02243424
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02243440 @ =0x02249F04
	add r3, sp, #0
	movs r2, #5
_0224342E:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224342E
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_02243440: .4byte 0x02249F04
	thumb_func_end ov107_02243424

	thumb_func_start ov107_02243444
ov107_02243444: @ 0x02243444
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _0224356C @ =0x02249E24
	add r3, sp, #0x8c
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _02243570 @ =0x02249EAC
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x64
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _02243574 @ =0x02249EC8
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
	movs r3, #0x64
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _02243578 @ =0x02249E74
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
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x64
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _0224357C @ =0x02249E58
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
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x64
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r5, _02243580 @ =0x02249E90
	add r3, sp, #0
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
	ldr r1, _02243584 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	strh r2, [r1]
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x9c
	pop {r4, r5, pc}
	.align 2, 0
_0224356C: .4byte 0x02249E24
_02243570: .4byte 0x02249EAC
_02243574: .4byte 0x02249EC8
_02243578: .4byte 0x02249E74
_0224357C: .4byte 0x02249E58
_02243580: .4byte 0x02249E90
_02243584: .4byte 0x04000008
	thumb_func_end ov107_02243444

	thumb_func_start ov107_02243588
ov107_02243588: @ 0x02243588
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x22
	adds r3, r4, #0
	bl FUN_020070E8
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022435DA
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x23
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022435DA:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x24
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02243588

	thumb_func_start ov107_022435FC
ov107_022435FC: @ 0x022435FC
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0x96
	movs r1, #0x89
	add r2, sp, #0
	movs r3, #0x64
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0x80
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_022435FC

	thumb_func_start ov107_02243630
ov107_02243630: @ 0x02243630
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x22
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x26
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02243630

	thumb_func_start ov107_02243678
ov107_02243678: @ 0x02243678
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0x96
	movs r1, #0x89
	add r2, sp, #0
	movs r3, #0x64
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0x80
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_02243678

	thumb_func_start ov107_022436AC
ov107_022436AC: @ 0x022436AC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x22
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x27
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022436AC

	thumb_func_start ov107_022436F4
ov107_022436F4: @ 0x022436F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x22
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x25
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022436F4

	thumb_func_start ov107_0224373C
ov107_0224373C: @ 0x0224373C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x7d
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x7e
	adds r3, r4, #0
	bl FUN_0200710C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	movs r0, #0xf7
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xab
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_0224373C

	thumb_func_start ov107_0224379C
ov107_0224379C: @ 0x0224379C
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	movs r4, #0
	str r4, [sp, #0x18]
	bl ov107_022437CC
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_0224379C

	thumb_func_start ov107_022437CC
ov107_022437CC: @ 0x022437CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r7, r2, #0
	adds r4, r3, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	adds r1, r7, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl FUN_0200C388
	ldr r0, [sp, #0x40]
	cmp r0, #1
	beq _02243802
	cmp r0, #2
	beq _02243814
	b _02243820
_02243802:
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	subs r4, r4, r0
	b _02243820
_02243814:
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	subs r4, r4, r0
_02243820:
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r3, r4, #0
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
	adds r0, r6, #0
	bl FUN_0201D78C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022437CC

	thumb_func_start ov107_02243860
ov107_02243860: @ 0x02243860
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	movs r4, #0
	str r4, [sp, #0x18]
	bl ov107_02243890
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02243860

	thumb_func_start ov107_02243890
ov107_02243890: @ 0x02243890
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r1, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	adds r4, r3, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl FUN_0200C388
	ldr r0, [sp, #0x38]
	cmp r0, #1
	beq _022438BA
	cmp r0, #2
	beq _022438CC
	b _022438D8
_022438BA:
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	subs r4, r4, r0
	b _022438D8
_022438CC:
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	subs r4, r4, r0
_022438D8:
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	adds r3, r4, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
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
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	adds r0, r6, #0
	bl FUN_0201D78C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02243890

	thumb_func_start ov107_02243918
ov107_02243918: @ 0x02243918
	push {r3, r4, r5, lr}
	sub sp, #0x18
	movs r3, #1
	adds r4, r1, #0
	str r3, [sp]
	movs r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0xf
	str r1, [sp, #0x10]
	adds r5, r0, #0
	adds r1, r5, #0
	str r2, [sp, #0x14]
	adds r1, #0xb0
	adds r2, r4, #0
	bl ov107_0224379C
	adds r5, #0xb0
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02243918

	thumb_func_start ov107_02243950
ov107_02243950: @ 0x02243950
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200B70C
	movs r0, #8
	str r0, [sp]
	movs r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x46
	str r3, [sp, #4]
	bl ov107_02243B5C
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x47
	movs r3, #0x40
	bl ov107_02243B5C
	adds r0, r6, #0
	bl FUN_02075BCC
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200B6D8
	movs r0, #0x18
	str r0, [sp]
	movs r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x48
	str r3, [sp, #4]
	bl ov107_02243B5C
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x49
	movs r3, #0x40
	bl ov107_02243B5C
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200B6A0
	movs r0, #0x28
	str r0, [sp]
	movs r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x4a
	str r3, [sp, #4]
	bl ov107_02243B5C
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x4b
	movs r3, #0x40
	bl ov107_02243B5C
	adds r0, r6, #0
	movs r1, #0xa5
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_02244A74
	movs r0, #0x38
	str r0, [sp]
	movs r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x4c
	str r3, [sp, #4]
	bl ov107_02243B5C
	movs r0, #0x38
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x4d
	movs r3, #0x50
	bl ov107_02243B5C
	adds r0, r6, #0
	movs r1, #0xa6
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_02244A74
	movs r0, #0x38
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x4e
	movs r3, #0x60
	bl ov107_02243B5C
	movs r0, #0x38
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x4f
	movs r3, #0xb0
	bl ov107_02243B5C
	adds r0, r6, #0
	movs r1, #0xa8
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_02244A74
	movs r0, #0x48
	str r0, [sp]
	movs r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x50
	str r3, [sp, #4]
	bl ov107_02243B5C
	movs r0, #0x48
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x51
	movs r3, #0x50
	bl ov107_02243B5C
	adds r0, r6, #0
	movs r1, #0xa9
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_02244A74
	movs r0, #0x48
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x52
	movs r3, #0x60
	bl ov107_02243B5C
	movs r0, #0x48
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x53
	movs r3, #0xb0
	bl ov107_02243B5C
	adds r0, r6, #0
	movs r1, #0xa7
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_02244A74
	movs r0, #0x58
	str r0, [sp]
	movs r3, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x54
	str r3, [sp, #4]
	bl ov107_02243B5C
	movs r0, #0x58
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x55
	movs r3, #0x50
	bl ov107_02243B5C
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_02243950

	thumb_func_start ov107_02243B5C
ov107_02243B5C: @ 0x02243B5C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	movs r4, #0xff
	str r4, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	movs r4, #0
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x18]
	bl ov107_02243890
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov107_02243B5C

	thumb_func_start ov107_02243B84
ov107_02243B84: @ 0x02243B84
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	adds r4, r2, #0
	bl FUN_0201ADA4
	movs r0, #0x5c
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0x3a
	str r0, [sp, #0xc]
	movs r0, #0x42
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x58
	bl ov107_02243C18
	movs r0, #0x5c
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x37
	str r0, [sp, #8]
	movs r0, #0x3b
	str r0, [sp, #0xc]
	movs r0, #0x43
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0x59
	bl ov107_02243C18
	movs r0, #0x5c
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x38
	str r0, [sp, #8]
	movs r0, #0x3c
	str r0, [sp, #0xc]
	movs r0, #0x44
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #2
	movs r3, #0x5a
	bl ov107_02243C18
	movs r0, #0x5c
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x39
	str r0, [sp, #8]
	movs r0, #0x3d
	str r0, [sp, #0xc]
	movs r0, #0x45
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0x5b
	bl ov107_02243C18
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov107_02243B84

	thumb_func_start ov107_02243C18
ov107_02243C18: @ 0x02243C18
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	movs r2, #0
	adds r7, r3, #0
	bl FUN_02074470
	adds r2, r0, #0
	ldr r0, [r4, #0x24]
	adds r1, r5, #0
	bl FUN_0200B630
	movs r3, #0x18
	adds r0, r5, #0
	muls r0, r3, r0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl ov107_02243860
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #4
	movs r3, #3
	bl ov107_02244A74
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #5
	movs r3, #3
	bl ov107_02244A74
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0x89
	bl ov107_02243890
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov107_02243C18

	thumb_func_start ov107_02243CC0
ov107_02243CC0: @ 0x02243CC0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r5, r0, #0
	adds r0, r7, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldrb r0, [r5, #9]
	movs r1, #1
	bl FUN_0223B7A8
	adds r6, r0, #0
	movs r4, #0
	cmp r6, #0
	ble _02243CF2
_02243CDE:
	lsls r2, r4, #0x18
	adds r0, r5, #0
	adds r1, r7, #0
	lsrs r2, r2, #0x18
	movs r3, #0
	bl ov107_02243CFC
	adds r4, r4, #1
	cmp r4, r6
	blt _02243CDE
_02243CF2:
	adds r0, r7, #0
	bl FUN_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02243CC0

	thumb_func_start ov107_02243CFC
ov107_02243CFC: @ 0x02243CFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r5, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	adds r4, r2, #0
	adds r6, r1, #0
	ldr r0, [r5, r0]
	adds r1, r4, #0
	adds r7, r3, #0
	bl FUN_0207A0FC
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02243D24
	movs r0, #0x24
	b _02243D26
_02243D24:
	movs r0, #4
_02243D26:
	cmp r7, #0
	bne _02243D4C
	lsls r1, r4, #6
	adds r2, r0, r1
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	adds r2, r0, #0
	adds r2, #0x18
	adds r2, r2, r1
	adds r0, #0x20
	lsls r2, r2, #0x10
	adds r0, r0, r1
	lsrs r2, r2, #0x10
	lsls r0, r0, #0x10
	str r2, [sp, #0x10]
	lsrs r0, r0, #0x10
	movs r4, #1
	str r0, [sp, #0x14]
	b _02243D58
_02243D4C:
	movs r0, #0x1c
	str r0, [sp, #0x10]
	movs r0, #0x24
	movs r7, #4
	movs r4, #0
	str r0, [sp, #0x14]
_02243D58:
	ldr r0, [sp, #0xc]
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	str r6, [sp]
	adds r1, r0, #0
	str r7, [sp, #4]
	movs r0, #0x71
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #3
	movs r3, #1
	bl FUN_0200C5BC
	movs r0, #0x71
	str r4, [sp]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x10]
	movs r1, #0
	adds r2, r6, #0
	bl FUN_0200C578
	ldr r0, [sp, #0xc]
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	str r6, [sp]
	adds r1, r0, #0
	ldr r0, [sp, #0x14]
	movs r2, #3
	str r0, [sp, #4]
	movs r0, #0x71
	str r4, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #0
	bl FUN_0200C5BC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02243CFC

	thumb_func_start ov107_02243DB0
ov107_02243DB0: @ 0x02243DB0
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	adds r6, r1, #0
	movs r1, #1
	bl FUN_0223B7A8
	adds r7, r0, #0
	movs r4, #0
	cmp r7, #0
	ble _02243DDA
_02243DC6:
	lsls r2, r4, #0x18
	adds r0, r5, #0
	adds r1, r6, #0
	lsrs r2, r2, #0x18
	movs r3, #0
	bl ov107_02243DE4
	adds r4, r4, #1
	cmp r4, r7
	blt _02243DC6
_02243DDA:
	adds r0, r6, #0
	bl FUN_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02243DB0

	thumb_func_start ov107_02243DE4
ov107_02243DE4: @ 0x02243DE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	str r3, [sp, #0x14]
	ldrb r0, [r5, #9]
	str r1, [sp, #0x10]
	adds r6, r2, #0
	bl FUN_0223BA14
	cmp r0, #0
	bne _02243E00
	movs r4, #0x28
	movs r7, #0x50
	b _02243E04
_02243E00:
	movs r4, #8
	movs r7, #0x30
_02243E04:
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02243E22
	lsls r0, r6, #6
	adds r6, r4, r0
	movs r4, #1
	adds r7, r7, r0
	b _02243E28
_02243E22:
	movs r6, #4
	movs r4, #0
	movs r7, #0x30
_02243E28:
	ldr r0, [sp, #0x18]
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	movs r1, #1
	str r0, [sp, #4]
	str r6, [sp, #8]
	movs r0, #0x71
	str r4, [sp, #0xc]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #3
	bl FUN_0200C648
	ldr r0, [sp, #0x18]
	movs r1, #0x6f
	movs r2, #0
	bl FUN_02074470
	movs r1, #0
	lsls r0, r0, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r4, #0
	bl ov107_02244B8C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02243DE4

	thumb_func_start ov107_02243E74
ov107_02243E74: @ 0x02243E74
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	adds r4, r1, #0
	bl FUN_0205E630
	adds r6, r0, #0
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	adds r1, r6, #0
	bl FUN_02030698
	adds r6, r0, #0
	ldr r0, [r5, #0x4c]
	adds r1, r4, #0
	bl ov107_02249D84
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #0
	movs r2, #1
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r2, #0
	bl ov107_02244AB4
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	movs r3, #4
	bl ov107_02244A74
	movs r3, #0x10
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #4
	bl ov107_02243860
	strb r0, [r5, #0xa]
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x18
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_02243E74

	thumb_func_start ov107_02243EF8
ov107_02243EF8: @ 0x02243EF8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	adds r6, r2, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x1c]
	ldr r2, [r5, #0x2c]
	adds r1, r6, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl FUN_0200C388
	movs r0, #6
	str r0, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _02243F48 @ =0x00010200
	movs r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #0x28]
	adds r0, r4, #0
	adds r3, r1, #0
	bl FUN_0201D78C
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0201A9A4
	adds r0, r5, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	nop
_02243F48: .4byte 0x00010200
	thumb_func_end ov107_02243EF8

	thumb_func_start ov107_02243F4C
ov107_02243F4C: @ 0x02243F4C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	adds r6, r1, #0
	adds r4, r2, #0
	adds r7, r3, #0
	bl FUN_0223BA14
	cmp r0, #0
	bne _02243F66
	movs r1, #0x24
	b _02243F68
_02243F66:
	movs r1, #4
_02243F68:
	lsls r0, r4, #6
	adds r4, r1, r0
	movs r0, #0x18
	str r0, [sp]
	movs r0, #9
	movs r1, #0
	lsls r2, r4, #0x10
	str r0, [sp, #4]
	adds r0, r6, #0
	lsrs r2, r2, #0x10
	adds r3, r1, #0
	bl FUN_0201AE78
	str r6, [sp]
	movs r0, #0x71
	str r4, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r7, #0
	movs r2, #3
	bl FUN_0200C5BC
	adds r0, r6, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02243F4C

	thumb_func_start ov107_02243FA4
ov107_02243FA4: @ 0x02243FA4
	push {r3, r4, lr}
	sub sp, #0x1c
	movs r1, #5
	str r1, [sp]
	movs r1, #0xff
	str r1, [sp, #4]
	movs r2, #1
	str r2, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r4, r0, #0
	adds r1, r4, #0
	str r2, [sp, #0x18]
	adds r1, #0x60
	movs r2, #6
	movs r3, #0x10
	bl ov107_022437CC
	strb r0, [r4, #0xa]
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #5
	str r3, [sp, #0x14]
	bl ov107_0224379C
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_02243FA4

	thumb_func_start ov107_0224400C
ov107_0224400C: @ 0x0224400C
	ldr r3, _02244014 @ =ov107_02245288
	adds r0, #0xc0
	bx r3
	nop
_02244014: .4byte ov107_02245288
	thumb_func_end ov107_0224400C

	thumb_func_start ov107_02244018
ov107_02244018: @ 0x02244018
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xd0
	bl ov107_02249DBC
	movs r0, #0
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl ov107_02244944
	pop {r4, pc}
	thumb_func_end ov107_02244018

	thumb_func_start ov107_0224403C
ov107_0224403C: @ 0x0224403C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x66
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r2, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x18
	adds r2, #0x1a
	bl FUN_020014DC
	adds r0, r4, #0
	adds r0, #0xd0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_02245730
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_0224403C

	thumb_func_start ov107_02244064
ov107_02244064: @ 0x02244064
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	adds r0, r4, #0
	movs r1, #0x18
	movs r2, #1
	bl ov107_02243918
	strb r0, [r4, #0xa]
	movs r0, #0
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl ov107_022445C4
	pop {r4, pc}
	thumb_func_end ov107_02244064

	thumb_func_start ov107_02244094
ov107_02244094: @ 0x02244094
	ldr r3, _02244098 @ =ov107_02245730
	bx r3
	.align 2, 0
_02244098: .4byte ov107_02245730
	thumb_func_end ov107_02244094

	thumb_func_start ov107_0224409C
ov107_0224409C: @ 0x0224409C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	movs r0, #0
	strh r0, [r4, #0x16]
	adds r0, r4, #0
	bl ov107_02244780
	pop {r4, pc}
	thumb_func_end ov107_0224409C

	thumb_func_start ov107_022440C0
ov107_022440C0: @ 0x022440C0
	ldr r3, _022440C4 @ =ov107_02245730
	bx r3
	.align 2, 0
_022440C4: .4byte ov107_02245730
	thumb_func_end ov107_022440C0

	thumb_func_start ov107_022440C8
ov107_022440C8: @ 0x022440C8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldrb r1, [r5, #0xe]
	movs r0, #8
	orrs r0, r1
	strb r0, [r5, #0xe]
	adds r0, r5, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r5, #0
	adds r0, #0xb0
	bl FUN_0201ACF4
	adds r0, r5, #0
	adds r0, #0xe0
	bl FUN_0201ACF4
	adds r0, r5, #0
	movs r1, #2
	bl ov107_022436F4
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	adds r0, r5, #0
	adds r0, #0x90
	bl FUN_0201AD10
	movs r0, #0
	strh r0, [r5, #0x16]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_02244240
	movs r1, #5
	lsls r1, r1, #6
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov107_02243E74
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022440C8

	thumb_func_start ov107_02244120
ov107_02244120: @ 0x02244120
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #0x1c
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224414A
	movs r0, #8
	bics r1, r0
	movs r0, #0x11
	lsls r0, r0, #4
	adds r0, r4, r0
	strb r1, [r4, #0xe]
	bl FUN_0201AD10
	adds r0, r4, #0
	bl ov107_02245730
	adds r0, r4, #0
	bl ov107_02245660
_0224414A:
	pop {r4, pc}
	thumb_func_end ov107_02244120

	thumb_func_start ov107_0224414C
ov107_0224414C: @ 0x0224414C
	push {r4, r5, r6, r7}
	movs r4, #6
	movs r6, #0
	lsls r4, r4, #6
	adds r7, r0, #0
	adds r3, r6, #0
	adds r5, r4, #4
_0224415A:
	str r3, [r7, r4]
	str r3, [r7, r5]
	adds r6, r6, #1
	adds r7, #8
	cmp r6, #3
	blt _0224415A
	movs r4, #6
	lsls r4, r4, #6
	adds r5, r4, #0
	adds r6, r0, r4
	subs r5, #0x10
	str r6, [r0, r5]
	adds r5, r4, #0
	subs r5, #0xc
	str r1, [r0, r5]
	adds r1, r4, #0
	subs r1, #8
	strb r3, [r0, r1]
	movs r3, #1
	subs r1, r4, #7
	strb r3, [r0, r1]
	subs r1, r4, #6
	strb r2, [r0, r1]
	subs r1, r4, #5
	ldrb r2, [r0, r1]
	movs r1, #0xf
	bics r2, r1
	subs r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	movs r1, #0x30
	bics r2, r1
	subs r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	movs r1, #0xc0
	bics r2, r1
	movs r1, #0x40
	orrs r2, r1
	subs r1, r4, #5
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov107_0224414C

	thumb_func_start ov107_022441B0
ov107_022441B0: @ 0x022441B0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r7, #0
	str r2, [sp]
	adds r5, #0x30
	lsls r4, r6, #2
	ldr r0, [r7, #0x20]
	ldr r2, [r5, r4]
	adds r1, r3, #0
	bl FUN_0200B1B8
	lsls r0, r6, #3
	adds r2, r7, r0
	movs r0, #6
	ldr r1, [r5, r4]
	lsls r0, r0, #6
	str r1, [r2, r0]
	adds r1, r0, #4
	ldr r0, [sp]
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022441B0

	thumb_func_start ov107_022441DC
ov107_022441DC: @ 0x022441DC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r1, #0x12
	lsls r1, r1, #4
	ldr r0, [r4, #0x4c]
	adds r1, r4, r1
	bl ov107_02249D84
	movs r1, #0x12
	lsls r1, r1, #4
	adds r0, r4, #0
	adds r1, r4, r1
	movs r2, #2
	bl ov107_0224414C
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x1e
	bl ov107_022441B0
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x1f
	bl ov107_022441B0
	movs r0, #0x64
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x17
	lsls r0, r0, #4
	movs r2, #0
	adds r0, r4, r0
	movs r1, #8
	adds r3, r2, #0
	bl FUN_02001B7C
	movs r1, #0x5f
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r1, [r4, #0xe]
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r4, #0xe]
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_022441DC

	thumb_func_start ov107_02244240
ov107_02244240: @ 0x02244240
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	str r1, [sp]
	ldrb r1, [r5, #0xd]
	movs r2, #1
	bl ov107_0224503C
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	bl ov107_02249C98
	adds r4, r0, #0
	movs r1, #0x16
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r5, r1
	adds r2, r4, #0
	movs r3, #1
	bl ov107_02243CFC
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r5, r0
	bl FUN_0201A9A4
	movs r1, #0x15
	lsls r1, r1, #4
	adds r0, r5, #0
	adds r1, r5, r1
	adds r2, r4, #0
	movs r3, #1
	bl ov107_02243DE4
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r5, r0
	bl FUN_0201A9A4
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r0, #0xe1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r2, #0x62
	movs r0, #1
	movs r1, #0x1a
	lsls r2, r2, #2
	movs r3, #0x64
	bl FUN_0200B144
	str r0, [sp, #0xc]
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	movs r2, #1
	bl ov107_02249CAC
	ldr r1, [sp]
	cmp r1, #6
	bne _022442F2
	subs r0, r0, #1
	lsls r1, r0, #1
	ldr r0, _022443F0 @ =0x02249E12
	ldrh r0, [r0, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	b _02244300
_022442F2:
	subs r0, r0, #1
	lsls r1, r0, #1
	ldr r0, _022443F4 @ =0x02249E06
	ldrh r0, [r0, r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
_02244300:
	ldr r0, [sp, #4]
	movs r1, #0x64
	adds r0, r0, #1
	str r0, [sp, #8]
	bl FUN_02013A04
	movs r1, #0x67
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldr r0, [sp, #4]
	movs r7, #0
	cmp r0, #0
	ble _02244344
	ldr r6, _022443F8 @ =0x0224A02C
	ldr r4, _022443FC @ =0x02249F84
_0224431E:
	ldr r0, [sp]
	cmp r0, #6
	bne _02244328
	ldrh r2, [r6]
	b _0224432A
_02244328:
	ldrh r2, [r4]
_0224432A:
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	bl FUN_02013A4C
	ldr r0, [sp, #4]
	adds r7, r7, #1
	adds r6, r6, #2
	adds r4, r4, #2
	cmp r7, r0
	blt _0224431E
_02244344:
	movs r0, #0x67
	lsls r0, r0, #2
	movs r2, #0xd
	adds r3, r2, #0
	ldr r0, [r5, r0]
	ldr r1, [r5, #0x20]
	subs r3, #0xf
	bl FUN_02013A4C
	movs r2, #0x1a
	ldr r6, _02244400 @ =0x02249EE4
	lsls r2, r2, #4
	adds r4, r5, r2
	adds r3, r4, #0
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r0, r2, #4
	ldr r0, [r5, r0]
	adds r1, r5, #0
	str r0, [r3]
	adds r0, r2, #0
	adds r1, #0xa0
	adds r0, #0xc
	str r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x1c
	str r5, [r5, r0]
	ldr r1, _02244404 @ =ov107_0224440C
	adds r0, r2, #4
	str r1, [r5, r0]
	adds r0, r2, #0
	ldr r1, _02244408 @ =ov107_02244560
	adds r0, #8
	str r1, [r5, r0]
	adds r1, r2, #0
	ldr r0, [sp, #8]
	adds r1, #0x10
	strh r0, [r5, r1]
	adds r0, r2, #0
	adds r0, #0x18
	ldrb r1, [r5, r0]
	movs r0, #0xf
	bics r1, r0
	adds r0, r2, #0
	adds r0, #0x18
	strb r1, [r5, r0]
	adds r0, r2, #0
	movs r1, #6
	adds r0, #0x12
	strh r1, [r5, r0]
	adds r0, r2, #0
	movs r1, #0
	adds r0, #0x15
	strb r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x1a
	ldrh r4, [r5, r0]
	movs r0, #2
	lsls r0, r0, #0xe
	orrs r0, r4
	adds r2, #0x1a
	strh r0, [r5, r2]
	adds r0, r3, #0
	adds r2, r1, #0
	movs r3, #0x64
	bl FUN_0200112C
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r5, #0xa0
	adds r1, r5, #0
	bl ov107_02245650
	ldr r0, [sp, #0xc]
	bl FUN_0200B190
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022443F0: .4byte 0x02249E12
_022443F4: .4byte 0x02249E06
_022443F8: .4byte 0x0224A02C
_022443FC: .4byte 0x02249F84
_02244400: .4byte 0x02249EE4
_02244404: .4byte ov107_0224440C
_02244408: .4byte ov107_02244560
	thumb_func_end ov107_02244240

	thumb_func_start ov107_0224440C
ov107_0224440C: @ 0x0224440C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r1, [sp]
	movs r1, #0x13
	adds r5, r0, #0
	adds r6, r2, #0
	bl FUN_02001504
	adds r4, r0, #0
	cmp r6, #0
	bne _02244436
	ldr r0, _02244558 @ =0x000005DC
	bl FUN_02005748
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #4
	bl FUN_020014D0
	b _0224443C
_02244436:
	movs r1, #0
	add r0, sp, #4
	strh r1, [r0]
_0224443C:
	adds r0, r5, #0
	movs r1, #2
	bl FUN_02001504
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #3
	bl FUN_02001504
	add r2, sp, #4
	adds r7, r0, #0
	adds r0, r5, #0
	add r1, sp, #8
	adds r2, #2
	bl FUN_020014DC
	add r0, sp, #4
	ldrh r1, [r0, #4]
	cmp r1, #0
	bne _0224447E
	movs r0, #0xe1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov107_02249BAC
	b _022444B6
_0224447E:
	subs r0, r6, r7
	cmp r1, r0
	bne _0224449E
	movs r0, #0xe1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	b _022444B6
_0224449E:
	movs r0, #0xe1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov107_02249BAC
_022444B6:
	add r2, sp, #4
	ldrh r2, [r2, #2]
	movs r0, #0x3d
	lsls r0, r0, #4
	lsls r2, r2, #4
	adds r2, #0x18
	lsls r2, r2, #0x10
	ldr r0, [r4, r0]
	movs r1, #0x9e
	lsrs r2, r2, #0x10
	bl ov107_02249BB8
	movs r1, #1
	ldr r0, [sp]
	mvns r1, r1
	cmp r0, r1
	beq _02244526
	add r1, sp, #4
	ldrh r1, [r1]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244DE0
	movs r1, #0x11
	lsls r1, r1, #4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov107_02243EF8
	add r1, sp, #4
	ldrh r1, [r1]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244DE0
	adds r1, r0, #0
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov107_022499BC
	add r1, sp, #4
	ldrh r1, [r1]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244DE0
	adds r1, r0, #0
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r4, r0
	bl ov107_022499FC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02244526:
	movs r0, #0x76
	lsls r0, r0, #2
	adds r0, r4, r0
	lsrs r1, r1, #0x10
	bl ov107_022499BC
	movs r0, #0x76
	lsls r0, r0, #2
	ldr r1, _0224455C @ =0x0000FFFF
	adds r0, r4, r0
	bl ov107_022499FC
	movs r0, #0x11
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x11
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02244558: .4byte 0x000005DC
_0224455C: .4byte 0x0000FFFF
	thumb_func_end ov107_0224440C

	thumb_func_start ov107_02244560
ov107_02244560: @ 0x02244560
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r5, r1, #0
	movs r1, #0x13
	adds r6, r2, #0
	bl FUN_02001504
	movs r1, #1
	mvns r1, r1
	adds r4, r0, #0
	cmp r5, r1
	beq _022445C0
	ldrb r2, [r4, #0x13]
	lsls r1, r5, #0x10
	lsrs r1, r1, #0x10
	bl ov107_02244D5C
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #4
	bl ov107_02244A74
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0xa0
	movs r2, #4
	movs r3, #0x80
	bl ov107_02243890
	strb r0, [r4, #0xa]
	adds r4, #0xa0
	adds r0, r4, #0
	bl FUN_0201A9A4
_022445C0:
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov107_02244560

	thumb_func_start ov107_022445C4
ov107_022445C4: @ 0x022445C4
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	ldr r0, [r5, #0x4c]
	adds r1, #0xf0
	bl ov107_02249D84
	adds r0, r5, #0
	adds r0, #0xf0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #5
	movs r1, #0x64
	bl FUN_02013A04
	movs r1, #0x67
	lsls r1, r1, #2
	ldr r4, _02244680 @ =0x02249FF0
	str r0, [r5, r1]
	movs r6, #0
	adds r7, r1, #0
_022445F0:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, #5
	blo _022445F0
	movs r2, #0x1a
	ldr r6, _02244684 @ =0x02249EE4
	lsls r2, r2, #4
	adds r4, r5, r2
	adds r3, r4, #0
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r0, r2, #4
	ldr r0, [r5, r0]
	adds r1, r5, #0
	str r0, [r3]
	adds r0, r2, #0
	adds r1, #0xf0
	adds r0, #0xc
	str r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x1c
	str r5, [r5, r0]
	ldr r1, _02244688 @ =ov107_02244690
	adds r0, r2, #4
	str r1, [r5, r0]
	adds r0, r2, #0
	ldr r1, _0224468C @ =ov107_02244708
	adds r0, #8
	str r1, [r5, r0]
	adds r0, r2, #0
	movs r1, #5
	adds r0, #0x10
	strh r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x12
	strh r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x18
	ldrb r1, [r5, r0]
	movs r0, #0xf
	adds r2, #0x18
	bics r1, r0
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r5, r2]
	movs r1, #0
	adds r0, r3, #0
	adds r2, r1, #0
	movs r3, #0x64
	bl FUN_0200112C
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	adds r5, #0xf0
	adds r1, r5, #0
	bl ov107_02245650
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02244680: .4byte 0x02249FF0
_02244684: .4byte 0x02249EE4
_02244688: .4byte ov107_02244690
_0224468C: .4byte ov107_02244708
	thumb_func_end ov107_022445C4

	thumb_func_start ov107_02244690
ov107_02244690: @ 0x02244690
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r1, #0
	movs r1, #0x13
	adds r6, r2, #0
	bl FUN_02001504
	adds r4, r0, #0
	cmp r6, #0
	bne _022446AA
	ldr r0, _02244704 @ =0x000005DC
	bl FUN_02005748
_022446AA:
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #0
	bl ov107_02249CAC
	cmp r5, #4
	beq _022446C6
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	beq _022446DA
	b _022446DE
_022446C6:
	cmp r0, #3
	bne _022446CE
	movs r2, #0x1b
	b _022446E0
_022446CE:
	cmp r0, #1
	bne _022446D6
	movs r2, #0x19
	b _022446E0
_022446D6:
	movs r2, #0x1a
	b _022446E0
_022446DA:
	movs r2, #0x1c
	b _022446E0
_022446DE:
	movs r2, #0x18
_022446E0:
	movs r3, #1
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r4, #0xb0
	adds r1, r4, #0
	str r3, [sp, #0x14]
	bl ov107_0224379C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_02244704: .4byte 0x000005DC
	thumb_func_end ov107_02244690

	thumb_func_start ov107_02244708
ov107_02244708: @ 0x02244708
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	adds r4, r1, #0
	adds r6, r0, #0
	movs r1, #0x13
	bl FUN_02001504
	adds r5, r0, #0
	adds r0, r6, #0
	add r1, sp, #0
	bl FUN_020014D0
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	movs r2, #0
	bl ov107_02249CAC
	cmp r4, #4
	bhi _0224476A
	adds r1, r4, r4
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_0224473E: @ jump table
	.2byte _0224476A - _0224473E - 2 @ case 0
	.2byte _02244748 - _0224473E - 2 @ case 1
	.2byte _02244748 - _0224473E - 2 @ case 2
	.2byte _02244748 - _0224473E - 2 @ case 3
	.2byte _0224475E - _0224473E - 2 @ case 4
_02244748:
	movs r1, #0xc
	adds r2, r4, #0
	muls r2, r1, r2
	ldr r1, _0224477C @ =0x02249FE4
	ldr r1, [r1, r2]
	cmp r0, r1
	blo _0224475A
	movs r1, #1
	b _0224476C
_0224475A:
	movs r1, #2
	b _0224476C
_0224475E:
	cmp r0, #3
	bne _02244766
	movs r1, #2
	b _0224476C
_02244766:
	movs r1, #1
	b _0224476C
_0224476A:
	movs r1, #1
_0224476C:
	adds r0, r6, #0
	movs r2, #0xf
	movs r3, #2
	bl FUN_020013D8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224477C: .4byte 0x02249FE4
	thumb_func_end ov107_02244708

	thumb_func_start ov107_02244780
ov107_02244780: @ 0x02244780
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02019120
	movs r1, #1
	lsls r1, r1, #8
	ldr r0, [r5, #0x4c]
	adds r1, r5, r1
	bl ov107_02249D84
	movs r0, #1
	lsls r0, r0, #8
	adds r0, r5, r0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #4
	movs r1, #0x64
	bl FUN_02013A04
	movs r1, #0x67
	lsls r1, r1, #2
	ldr r4, _0224485C @ =0x02249F54
	str r0, [r5, r1]
	movs r6, #0
	adds r7, r1, #0
_022447B8:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4, #4]
	ldr r3, [r4, #8]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r4, #0xc
	cmp r6, #4
	blo _022447B8
	movs r2, #0x1a
	ldr r6, _02244860 @ =0x02249EE4
	lsls r2, r2, #4
	adds r4, r5, r2
	adds r3, r4, #0
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r0, r2, #4
	ldr r0, [r5, r0]
	str r0, [r3]
	adds r0, r2, #0
	subs r0, #0xa0
	adds r1, r5, r0
	adds r0, r2, #0
	adds r0, #0xc
	str r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x1c
	str r5, [r5, r0]
	ldr r1, _02244864 @ =ov107_0224486C
	adds r0, r2, #4
	str r1, [r5, r0]
	adds r0, r2, #0
	ldr r1, _02244868 @ =ov107_022448E8
	adds r0, #8
	str r1, [r5, r0]
	adds r0, r2, #0
	movs r1, #4
	adds r0, #0x10
	strh r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x12
	strh r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x18
	ldrb r1, [r5, r0]
	movs r0, #0xf
	adds r2, #0x18
	bics r1, r0
	movs r0, #0xf
	orrs r0, r1
	strb r0, [r5, r2]
	movs r1, #0
	adds r0, r3, #0
	adds r2, r1, #0
	movs r3, #0x64
	bl FUN_0200112C
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	subs r1, #0x98
	adds r0, r5, #0
	adds r1, r5, r1
	bl ov107_02245650
	movs r0, #1
	lsls r0, r0, #8
	adds r0, r5, r0
	bl FUN_0201A9A4
	movs r0, #0
	movs r1, #1
	bl FUN_02019120
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224485C: .4byte 0x02249F54
_02244860: .4byte 0x02249EE4
_02244864: .4byte ov107_0224486C
_02244868: .4byte ov107_022448E8
	thumb_func_end ov107_02244780

	thumb_func_start ov107_0224486C
ov107_0224486C: @ 0x0224486C
	push {r4, r5, r6, lr}
	sub sp, #0x18
	adds r5, r1, #0
	movs r1, #0x13
	adds r6, r2, #0
	bl FUN_02001504
	adds r4, r0, #0
	cmp r6, #0
	bne _02244886
	ldr r0, _022448E4 @ =0x000005DC
	bl FUN_02005748
_02244886:
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #1
	bl ov107_02249CAC
	cmp r5, #6
	beq _022448A2
	cmp r5, #7
	beq _022448A6
	cmp r5, #8
	beq _022448AA
	b _022448BE
_022448A2:
	movs r2, #0x30
	b _022448C0
_022448A6:
	movs r2, #0x31
	b _022448C0
_022448AA:
	cmp r0, #3
	bne _022448B2
	movs r2, #0x34
	b _022448C0
_022448B2:
	cmp r0, #1
	bne _022448BA
	movs r2, #0x32
	b _022448C0
_022448BA:
	movs r2, #0x33
	b _022448C0
_022448BE:
	movs r2, #0x35
_022448C0:
	movs r3, #1
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r4, #0xb0
	adds r1, r4, #0
	str r3, [sp, #0x14]
	bl ov107_0224379C
	add sp, #0x18
	pop {r4, r5, r6, pc}
	nop
_022448E4: .4byte 0x000005DC
	thumb_func_end ov107_0224486C

	thumb_func_start ov107_022448E8
ov107_022448E8: @ 0x022448E8
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0x13
	adds r5, r0, #0
	bl FUN_02001504
	adds r1, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r1, #9]
	movs r2, #1
	bl ov107_02249CAC
	cmp r4, #7
	beq _0224490E
	cmp r4, #8
	beq _02244924
	b _02244930
_0224490E:
	movs r1, #0xc
	adds r2, r4, #0
	muls r2, r1, r2
	ldr r1, _02244940 @ =0x02249F0C
	ldr r1, [r1, r2]
	cmp r0, r1
	blo _02244920
	movs r1, #1
	b _02244932
_02244920:
	movs r1, #2
	b _02244932
_02244924:
	cmp r0, #3
	bne _0224492C
	movs r1, #2
	b _02244932
_0224492C:
	movs r1, #1
	b _02244932
_02244930:
	movs r1, #1
_02244932:
	adds r0, r5, #0
	movs r2, #0xf
	movs r3, #2
	bl FUN_020013D8
	pop {r3, r4, r5, pc}
	nop
_02244940: .4byte 0x02249F0C
	thumb_func_end ov107_022448E8

	thumb_func_start ov107_02244944
ov107_02244944: @ 0x02244944
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	ldr r0, [r5, #0x4c]
	adds r1, #0xe0
	bl ov107_02249D84
	adds r0, r5, #0
	adds r0, #0xe0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #5
	movs r1, #0x64
	bl FUN_02013A04
	movs r1, #0x67
	lsls r1, r1, #2
	ldr r4, _02244A10 @ =0x02249F2C
	str r0, [r5, r1]
	movs r6, #0
	adds r7, r1, #0
_02244970:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r4, #8
	cmp r6, #5
	blt _02244970
	movs r2, #0x1a
	ldr r6, _02244A14 @ =0x02249EE4
	lsls r2, r2, #4
	adds r4, r5, r2
	adds r3, r4, #0
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r4!, {r0, r1}
	subs r0, r2, #4
	ldr r0, [r5, r0]
	adds r1, r5, #0
	str r0, [r3]
	adds r0, r2, #0
	adds r1, #0xe0
	adds r0, #0xc
	str r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x1c
	str r5, [r5, r0]
	ldr r1, _02244A18 @ =ov107_02244A1C
	adds r0, r2, #4
	str r1, [r5, r0]
	adds r0, r2, #0
	movs r1, #0
	adds r0, #8
	str r1, [r5, r0]
	adds r0, r2, #0
	movs r1, #5
	adds r0, #0x10
	strh r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x12
	strh r1, [r5, r0]
	adds r0, r2, #0
	adds r0, #0x18
	ldrb r1, [r5, r0]
	movs r0, #0xf
	bics r1, r0
	movs r0, #0xf
	orrs r1, r0
	adds r0, r2, #0
	adds r0, #0x18
	strb r1, [r5, r0]
	adds r2, #0x1c
	str r5, [r5, r2]
	adds r0, r3, #0
	ldrh r1, [r5, #0x18]
	ldrh r2, [r5, #0x1a]
	movs r3, #0x64
	bl FUN_0200112C
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0xe0
	bl ov107_02245650
	adds r5, #0xe0
	adds r0, r5, #0
	bl FUN_0201A9A4
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02244A10: .4byte 0x02249F2C
_02244A14: .4byte 0x02249EE4
_02244A18: .4byte ov107_02244A1C
	thumb_func_end ov107_02244944

	thumb_func_start ov107_02244A1C
ov107_02244A1C: @ 0x02244A1C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	movs r1, #0x13
	adds r5, r0, #0
	adds r4, r2, #0
	bl FUN_02001504
	adds r6, r0, #0
	cmp r4, #0
	bne _02244A36
	ldr r0, _02244A6C @ =0x000005DC
	bl FUN_02005748
_02244A36:
	adds r0, r5, #0
	add r1, sp, #0x18
	bl FUN_020014D0
	movs r3, #1
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r6, #0xd0
	str r3, [sp, #0x14]
	add r2, sp, #0x18
	ldrh r2, [r2]
	adds r1, r6, #0
	lsls r4, r2, #1
	ldr r2, _02244A70 @ =0x02249E18
	ldrh r2, [r2, r4]
	bl ov107_0224379C
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02244A6C: .4byte 0x000005DC
_02244A70: .4byte 0x02249E18
	thumb_func_end ov107_02244A1C

	thumb_func_start ov107_02244A74
ov107_02244A74: @ 0x02244A74
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl FUN_0200B60C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02244A74

	thumb_func_start ov107_02244A8C
ov107_02244A8C: @ 0x02244A8C
	ldr r3, _02244A94 @ =FUN_0200B538
	ldr r0, [r0, #0x24]
	bx r3
	nop
_02244A94: .4byte FUN_0200B538
	thumb_func_end ov107_02244A8C

	thumb_func_start ov107_02244A98
ov107_02244A98: @ 0x02244A98
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_02025E38
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	adds r1, r4, #0
	bl FUN_0200B498
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02244A98

	thumb_func_start ov107_02244AB4
ov107_02244AB4: @ 0x02244AB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r1, #0
	movs r1, #0x73
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	str r2, [sp, #0x10]
	adds r6, r3, #0
	bl FUN_02025E38
	adds r7, r0, #0
	movs r0, #8
	movs r1, #0x64
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r7, #0
	bl FUN_02025EF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02023D28
	adds r0, r7, #0
	bl FUN_02025F30
	cmp r0, #0
	bne _02244AF0
	ldr r1, _02244B20 @ =0x00070800
	b _02244AF4
_02244AF0:
	movs r1, #0xc1
	lsls r1, r1, #0xa
_02244AF4:
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	adds r0, r5, #0
	adds r2, r4, #0
	bl FUN_0201D78C
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02244B20: .4byte 0x00070800
	thumb_func_end ov107_02244AB4

	thumb_func_start ov107_02244B24
ov107_02244B24: @ 0x02244B24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r7, r1, #0
	str r2, [sp, #0x18]
	adds r6, r3, #0
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	str r0, [sp, #0x1c]
	bl FUN_02025F30
	cmp r0, #0
	bne _02244B4A
	ldr r4, _02244B88 @ =0x00070800
	b _02244B4E
_02244B4A:
	movs r4, #0xc1
	lsls r4, r4, #0xa
_02244B4E:
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	movs r1, #0
	bl FUN_0200B498
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	lsrs r0, r4, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsrs r0, r4, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #1
	bl ov107_02243860
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02244B88: .4byte 0x00070800
	thumb_func_end ov107_02244B24

	thumb_func_start ov107_02244B8C
ov107_02244B8C: @ 0x02244B8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r2, #0
	adds r2, r3, #0
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	cmp r3, #0
	bne _02244BA6
	movs r3, #0x56
	movs r4, #7
	movs r5, #8
	movs r6, #0
	b _02244BB2
_02244BA6:
	cmp r3, #1
	bne _02244BCC
	movs r3, #0x57
	movs r4, #3
	movs r5, #4
	movs r6, #0
_02244BB2:
	str r2, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	ldrb r2, [r2, #0x10]
	str r2, [sp, #0x14]
	adds r2, r3, #0
	adds r3, r7, #0
	bl ov107_02243860
_02244BCC:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02244B8C

	thumb_func_start ov107_02244BD0
ov107_02244BD0: @ 0x02244BD0
	movs r3, #0
	strb r3, [r0, #8]
	str r2, [r1]
	bx lr
	thumb_func_end ov107_02244BD0

	thumb_func_start ov107_02244BD8
ov107_02244BD8: @ 0x02244BD8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	movs r4, #0
	bl ov107_02249C98
	ldr r1, _02244C6C @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	tst r1, r2
	beq _02244C0A
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _02244C6A
	cmp r0, #0
	bne _02244C04
	ldrb r1, [r5, #0x14]
	subs r1, r1, #1
	adds r1, r2, r1
	b _02244C06
_02244C04:
	subs r1, r2, #1
_02244C06:
	strb r1, [r5, #0xd]
	movs r4, #1
_02244C0A:
	ldr r1, _02244C6C @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x10
	tst r1, r2
	beq _02244C2E
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _02244C6A
	ldrb r1, [r5, #0x14]
	subs r1, r1, #1
	cmp r0, r1
	bne _02244C28
	subs r0, r2, r1
	b _02244C2A
_02244C28:
	adds r0, r2, #1
_02244C2A:
	strb r0, [r5, #0xd]
	movs r4, #1
_02244C2E:
	ldr r0, _02244C6C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x40
	tst r0, r1
	beq _02244C46
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	blo _02244C6A
	ldrb r0, [r5, #0xc]
	movs r4, #1
	strb r0, [r5, #0xd]
_02244C46:
	ldr r0, _02244C6C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x80
	tst r0, r1
	beq _02244C60
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	bhs _02244C6A
	strb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	movs r4, #1
	strb r0, [r5, #0xd]
_02244C60:
	cmp r4, #1
	bne _02244C6A
	adds r0, r5, #0
	bl ov107_02244C70
_02244C6A:
	pop {r3, r4, r5, pc}
	.align 2, 0
_02244C6C: .4byte 0x021BF67C
	thumb_func_end ov107_02244BD8

	thumb_func_start ov107_02244C70
ov107_02244C70: @ 0x02244C70
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02244C9C @ =0x000005DC
	bl FUN_02005748
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02244C8E
	ldrb r2, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0xc
	bl ov107_0224529C
_02244C8E:
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r2, #0
	bl ov107_02244CA0
	pop {r4, pc}
	nop
_02244C9C: .4byte 0x000005DC
	thumb_func_end ov107_02244C70

	thumb_func_start ov107_02244CA0
ov107_02244CA0: @ 0x02244CA0
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r2, #0
	bne _02244CB8
	movs r0, #0xed
	lsls r0, r0, #2
	ldr r4, [r5, r0]
	movs r2, #1
	movs r1, #0
	b _02244CC2
_02244CB8:
	movs r0, #0xee
	lsls r0, r0, #2
	ldr r4, [r5, r0]
	movs r2, #2
	movs r1, #0x11
_02244CC2:
	ldrb r0, [r5, #0x15]
	cmp r6, r0
	blo _02244CDC
	adds r0, r4, #0
	bl ov107_02249BEC
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0xa0
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
_02244CDC:
	adds r0, r4, #0
	adds r1, r2, #0
	bl ov107_02249BEC
	adds r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	adds r3, r6, #0
	bl ov107_02244D08
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	adds r0, r4, #0
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_02244CA0

	thumb_func_start ov107_02244D08
ov107_02244D08: @ 0x02244D08
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_0223BA14
	cmp r0, #1
	bne _02244D3E
	cmp r4, #0
	bne _02244D24
	movs r0, #0x28
	str r0, [r5]
	b _02244D56
_02244D24:
	cmp r4, #1
	bne _02244D2E
	movs r0, #0x68
	str r0, [r5]
	b _02244D56
_02244D2E:
	cmp r4, #2
	bne _02244D38
	movs r0, #0xa8
	str r0, [r5]
	b _02244D56
_02244D38:
	movs r0, #0xe8
	str r0, [r5]
	b _02244D56
_02244D3E:
	cmp r4, #0
	bne _02244D48
	movs r0, #0x48
	str r0, [r5]
	b _02244D56
_02244D48:
	cmp r4, #1
	bne _02244D52
	movs r0, #0x88
	str r0, [r5]
	b _02244D56
_02244D52:
	movs r0, #0xc8
	str r0, [r5]
_02244D56:
	movs r0, #0x58
	str r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02244D08

	thumb_func_start ov107_02244D5C
ov107_02244D5C: @ 0x02244D5C
	push {r3, r4, r5, lr}
	adds r3, r0, #0
	movs r0, #0x73
	adds r5, r1, #0
	lsls r0, r0, #2
	adds r4, r2, #0
	ldrb r1, [r3, #9]
	ldr r0, [r3, r0]
	movs r2, #1
	bl ov107_02249CAC
	cmp r4, #6
	bne _02244D7E
	ldr r0, _02244D88 @ =0x0224A06C
	lsls r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02244D7E:
	ldr r0, _02244D8C @ =0x02249FBA
	lsls r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
	nop
_02244D88: .4byte 0x0224A06C
_02244D8C: .4byte 0x02249FBA
	thumb_func_end ov107_02244D5C

	thumb_func_start ov107_02244D90
ov107_02244D90: @ 0x02244D90
	push {r3, lr}
	ldr r3, _02244DD0 @ =0x02249F84
	movs r2, #0
_02244D96:
	ldrh r1, [r3]
	cmp r0, r1
	bne _02244DA4
	ldr r0, _02244DD4 @ =0x02249FBA
	lsls r1, r2, #1
	ldrh r0, [r0, r1]
	pop {r3, pc}
_02244DA4:
	adds r2, r2, #1
	adds r3, r3, #2
	cmp r2, #0x1b
	blo _02244D96
	ldr r2, _02244DD8 @ =0x0224A02C
	movs r3, #0
_02244DB0:
	ldrh r1, [r2]
	cmp r0, r1
	bne _02244DBE
	ldr r0, _02244DDC @ =0x0224A06C
	lsls r1, r3, #1
	ldrh r0, [r0, r1]
	pop {r3, pc}
_02244DBE:
	adds r3, r3, #1
	adds r2, r2, #2
	cmp r3, #0x20
	blo _02244DB0
	bl FUN_02022974
	movs r0, #0
	pop {r3, pc}
	nop
_02244DD0: .4byte 0x02249F84
_02244DD4: .4byte 0x02249FBA
_02244DD8: .4byte 0x0224A02C
_02244DDC: .4byte 0x0224A06C
	thumb_func_end ov107_02244D90

	thumb_func_start ov107_02244DE0
ov107_02244DE0: @ 0x02244DE0
	push {r3, r4, r5, lr}
	adds r3, r0, #0
	movs r0, #0x73
	adds r5, r1, #0
	lsls r0, r0, #2
	adds r4, r2, #0
	ldrb r1, [r3, #9]
	ldr r0, [r3, r0]
	movs r2, #1
	bl ov107_02249CAC
	cmp r4, #6
	bne _02244E02
	ldr r0, _02244E0C @ =0x0224A02C
	lsls r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
_02244E02:
	ldr r0, _02244E10 @ =0x02249F84
	lsls r1, r5, #1
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, pc}
	nop
_02244E0C: .4byte 0x0224A02C
_02244E10: .4byte 0x02249F84
	thumb_func_end ov107_02244DE0

	thumb_func_start ov107_02244E14
ov107_02244E14: @ 0x02244E14
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #9]
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r4, [sp, #0x18]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02244E36
	movs r0, #0x1c
	strh r0, [r5]
	movs r0, #0
	strh r0, [r6]
	strh r0, [r7]
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_02244E36:
	movs r1, #0
	strh r1, [r5]
	strh r1, [r6]
	movs r0, #0x78
	strh r0, [r7]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02244E14

	thumb_func_start ov107_02244E44
ov107_02244E44: @ 0x02244E44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	adds r6, r2, #0
	bl ov107_02249C98
	adds r5, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r5, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x14]
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	ldr r0, [sp, #0x1c]
	lsls r1, r7, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x30
	bl FUN_0208C104
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov107_022450E8
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	lsls r1, r7, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0x30
	bl FUN_0208C104
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov107_02245114
	adds r7, r0, #0
	cmp r6, #0xa
	bls _02244EB2
	b _02245036
_02244EB2:
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02244EBE: @ jump table
	.2byte _02245036 - _02244EBE - 2 @ case 0
	.2byte _02244EE2 - _02244EBE - 2 @ case 1
	.2byte _02244EE2 - _02244EBE - 2 @ case 2
	.2byte _02244EE2 - _02244EBE - 2 @ case 3
	.2byte _02244ED4 - _02244EBE - 2 @ case 4
	.2byte _02245036 - _02244EBE - 2 @ case 5
	.2byte _02244FA2 - _02244EBE - 2 @ case 6
	.2byte _02244FA2 - _02244EBE - 2 @ case 7
	.2byte _02244ED4 - _02244EBE - 2 @ case 8
	.2byte _0224501A - _02244EBE - 2 @ case 9
	.2byte _02245028 - _02244EBE - 2 @ case 10
_02244ED4:
	ldrb r1, [r4, #0xe]
	movs r0, #4
	add sp, #0x20
	bics r1, r0
	strb r1, [r4, #0xe]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244EE2:
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1f
	bne _02244F2C
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02244EFE
	movs r1, #0x40
	b _02244F00
_02244EFE:
	movs r1, #0x20
_02244F00:
	movs r0, #8
	str r0, [sp]
	lsls r0, r5, #6
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r1, #0
	movs r0, #0x3e
	str r0, [sp, #8]
	movs r0, #0x76
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r4, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0x3b
	lsls r1, r1, #4
	str r0, [r4, r1]
_02244F2C:
	movs r0, #0x3b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02244F50
	bl ov107_02249C40
	cmp r0, #0
	bne _02244F50
	movs r0, #0x3b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	movs r0, #0x3b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
_02244F50:
	movs r0, #0x3b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02245036
	ldr r0, [sp, #0x14]
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	adds r1, r4, #0
	adds r3, r0, #0
	adds r0, r4, #0
	adds r1, #0x80
	adds r2, r5, #0
	bl ov107_02243F4C
	lsls r5, r5, #2
	movs r0, #0xef
	adds r1, r4, r5
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r7, #0
	bl ov107_02249BEC
	movs r0, #0x39
	adds r1, r4, r5
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	ldr r1, [sp, #0x18]
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl ov107_02249C1C
	ldrb r1, [r4, #0xe]
	movs r0, #4
	add sp, #0x20
	bics r1, r0
	strb r1, [r4, #0xe]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02244FA2:
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1f
	bne _02244FEC
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02244FBE
	movs r1, #0x40
	b _02244FC0
_02244FBE:
	movs r1, #0x20
_02244FC0:
	movs r0, #0x10
	str r0, [sp]
	lsls r0, r5, #6
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r1, #0
	movs r0, #0x3e
	str r0, [sp, #8]
	movs r0, #0x76
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r4, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0x3b
	lsls r1, r1, #4
	str r0, [r4, r1]
_02244FEC:
	movs r0, #0x3b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249C40
	cmp r0, #0
	bne _02245036
	movs r0, #0x3b
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	movs r0, #0x3b
	movs r1, #0
	lsls r0, r0, #4
	str r1, [r4, r0]
	ldrb r1, [r4, #0xe]
	movs r0, #4
	add sp, #0x20
	bics r1, r0
	strb r1, [r4, #0xe]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224501A:
	ldrb r1, [r4, #0xe]
	movs r0, #4
	add sp, #0x20
	bics r1, r0
	strb r1, [r4, #0xe]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02245028:
	ldrb r1, [r4, #0xe]
	movs r0, #4
	add sp, #0x20
	bics r1, r0
	strb r1, [r4, #0xe]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02245036:
	movs r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02244E44

	thumb_func_start ov107_0224503C
ov107_0224503C: @ 0x0224503C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldrb r0, [r5, #0x14]
	adds r6, r2, #0
	bl ov107_02249C98
	adds r4, r0, #0
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224505A
	movs r1, #0x40
	b _0224505C
_0224505A:
	movs r1, #0x20
_0224505C:
	cmp r6, #1
	bne _0224506A
	movs r0, #0
	movs r7, #0x28
	movs r6, #0x50
	str r0, [sp, #8]
	b _02245078
_0224506A:
	lsls r0, r4, #6
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r7, r0, #0x10
	movs r0, #2
	movs r6, #0x3a
	str r0, [sp, #8]
_02245078:
	adds r0, r7, #0
	adds r0, #8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r6, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #0x3a
	lsls r0, r0, #4
	adds r0, r5, r0
	lsls r4, r4, #2
	str r0, [sp, #0xc]
	ldr r0, [r0, r4]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	bl ov107_02249C58
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	ldr r0, [r0, r4]
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl ov107_02249BB8
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	ldr r0, [r0, r4]
	bl ov107_02249C4C
	movs r0, #0x39
	lsls r0, r0, #4
	adds r5, r5, r0
	ldr r0, [r5, r4]
	adds r1, r7, #0
	adds r2, r6, #0
	bl ov107_02249C58
	lsls r1, r7, #0x10
	lsls r2, r6, #0x10
	ldr r0, [r5, r4]
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl ov107_02249BB8
	ldr r0, [r5, r4]
	ldr r1, [sp, #8]
	bl ov107_02249C4C
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_0224503C

	thumb_func_start ov107_022450E8
ov107_022450E8: @ 0x022450E8
	cmp r1, #4
	bhi _02245110
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022450F8: @ jump table
	.2byte _02245110 - _022450F8 - 2 @ case 0
	.2byte _0224510E - _022450F8 - 2 @ case 1
	.2byte _0224510A - _022450F8 - 2 @ case 2
	.2byte _02245106 - _022450F8 - 2 @ case 3
	.2byte _02245102 - _022450F8 - 2 @ case 4
_02245102:
	movs r0, #1
	bx lr
_02245106:
	movs r0, #2
	bx lr
_0224510A:
	movs r0, #3
	bx lr
_0224510E:
	movs r0, #4
_02245110:
	bx lr
	.align 2, 0
	thumb_func_end ov107_022450E8

	thumb_func_start ov107_02245114
ov107_02245114: @ 0x02245114
	cmp r1, #4
	bhi _0224513C
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02245124: @ jump table
	.2byte _0224513C - _02245124 - 2 @ case 0
	.2byte _0224513A - _02245124 - 2 @ case 1
	.2byte _02245136 - _02245124 - 2 @ case 2
	.2byte _02245132 - _02245124 - 2 @ case 3
	.2byte _0224512E - _02245124 - 2 @ case 4
_0224512E:
	movs r0, #0xf
	bx lr
_02245132:
	movs r0, #0xf
	bx lr
_02245136:
	movs r0, #0xe
	bx lr
_0224513A:
	movs r0, #0xd
_0224513C:
	bx lr
	.align 2, 0
	thumb_func_end ov107_02245114

	thumb_func_start ov107_02245140
ov107_02245140: @ 0x02245140
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _0224515A
	subs r0, r0, #1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	b _02245160
_0224515A:
	cmp r1, r0
	blt _02245160
	movs r1, #0
_02245160:
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_02244C70
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0x90
	adds r1, r4, #0
	bl ov107_02243950
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02245140

	thumb_func_start ov107_0224518C
ov107_0224518C: @ 0x0224518C
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xd
	ldrsb r0, [r4, r0]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	ldrb r0, [r4, #0x14]
	bpl _022451A6
	subs r0, r0, #1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	b _022451AC
_022451A6:
	cmp r1, r0
	blt _022451AC
	movs r1, #0
_022451AC:
	strb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_02244C70
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0x90
	adds r1, r4, #0
	bl ov107_02243B84
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_0224518C

	thumb_func_start ov107_022451D8
ov107_022451D8: @ 0x022451D8
	push {r4, lr}
	adds r4, r0, #0
	bl ov107_02245618
	adds r0, r4, #0
	bl ov107_02245730
	adds r0, r4, #0
	bl ov107_02244120
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	adds r0, r4, #0
	bl ov107_02245BE0
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	movs r0, #0xf3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	pop {r4, pc}
	thumb_func_end ov107_022451D8

	thumb_func_start ov107_02245210
ov107_02245210: @ 0x02245210
	push {r4, r5, r6, lr}
	movs r4, #0
	adds r5, r0, #0
	movs r1, #0x3a
	adds r2, r4, #0
	bl FUN_02074470
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0x42
	adds r2, r4, #0
	bl FUN_02074470
	cmp r6, r0
	beq _02245230
	movs r4, #1
_02245230:
	adds r0, r5, #0
	movs r1, #0x3b
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0x43
	movs r2, #0
	bl FUN_02074470
	cmp r6, r0
	beq _0224524C
	movs r4, #1
_0224524C:
	adds r0, r5, #0
	movs r1, #0x3c
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0x44
	movs r2, #0
	bl FUN_02074470
	cmp r6, r0
	beq _02245268
	movs r4, #1
_02245268:
	adds r0, r5, #0
	movs r1, #0x3d
	movs r2, #0
	bl FUN_02074470
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0x45
	movs r2, #0
	bl FUN_02074470
	cmp r6, r0
	beq _02245284
	movs r4, #1
_02245284:
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02245210

	thumb_func_start ov107_02245288
ov107_02245288: @ 0x02245288
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl FUN_0200E084
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02245288

	thumb_func_start ov107_0224529C
ov107_0224529C: @ 0x0224529C
	push {r3, r4, r5, lr}
	adds r3, r1, #0
	subs r3, #0xa
	adds r5, r0, #0
	cmp r3, #3
	bhi _022452DA
	adds r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_022452B4: @ jump table
	.2byte _022452BC - _022452B4 - 2 @ case 0
	.2byte _022452C4 - _022452B4 - 2 @ case 1
	.2byte _022452CC - _022452B4 - 2 @ case 2
	.2byte _022452D4 - _022452B4 - 2 @ case 3
_022452BC:
	movs r4, #0x31
	bl ov107_022452F4
	b _022452DA
_022452C4:
	movs r4, #0x32
	bl ov107_02245368
	b _022452DA
_022452CC:
	movs r4, #0x33
	bl ov107_022453F8
	b _022452DA
_022452D4:
	movs r4, #0x34
	bl ov107_0224542C
_022452DA:
	movs r1, #0x3e
	lsls r1, r1, #4
	adds r0, r4, #0
	adds r1, r5, r1
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _022452F0
	movs r0, #1
	pop {r3, r4, r5, pc}
_022452F0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_0224529C

	thumb_func_start ov107_022452F4
ov107_022452F4: @ 0x022452F4
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r4, r1, #0
	bl FUN_02025E38
	movs r1, #0x3e
	lsls r1, r1, #4
	strh r4, [r6, r1]
	bl FUN_02025F30
	ldr r1, _02245334 @ =0x000003E2
	movs r4, #0
	strh r0, [r6, r1]
	adds r5, r6, #4
	subs r7, r1, #2
_02245318:
	movs r0, #0x73
	lsls r0, r0, #2
	lsls r2, r4, #0x18
	ldrb r1, [r6, #9]
	ldr r0, [r6, r0]
	lsrs r2, r2, #0x18
	bl ov107_02249CAC
	strh r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #3
	blt _02245318
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02245334: .4byte 0x000003E2
	thumb_func_end ov107_022452F4

	thumb_func_start ov107_02245338
ov107_02245338: @ 0x02245338
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0xf]
	adds r6, r2, #0
	adds r0, r0, #1
	strb r0, [r4, #0xf]
	bl FUN_0203608C
	cmp r5, r0
	beq _02245362
	ldr r0, _02245364 @ =0x00000433
	movs r3, #0
	adds r5, r6, #4
_02245354:
	ldrh r2, [r5]
	adds r1, r4, r3
	adds r3, r3, #1
	adds r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02245354
_02245362:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02245364: .4byte 0x00000433
	thumb_func_end ov107_02245338

	thumb_func_start ov107_02245368
ov107_02245368: @ 0x02245368
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x3e
	lsls r0, r0, #4
	strh r1, [r5, r0]
	adds r4, r2, #0
	adds r0, r0, #2
	strh r4, [r5, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _02245388
	ldrb r0, [r5, #0x12]
	cmp r0, #0xff
	bne _02245388
	strb r4, [r5, #0x12]
_02245388:
	ldrb r1, [r5, #0x12]
	movs r0, #0xf9
	lsls r0, r0, #2
	strh r1, [r5, r0]
	ldrh r2, [r5, #0x10]
	adds r1, r0, #4
	adds r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02245368

	thumb_func_start ov107_022453A0
ov107_022453A0: @ 0x022453A0
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	ldrb r0, [r4, #0xf]
	adds r5, r2, #0
	adds r0, r0, #1
	strb r0, [r4, #0xf]
	bl FUN_0203608C
	cmp r6, r0
	beq _022453F0
	ldrh r1, [r5, #2]
	ldr r0, _022453F4 @ =0x00000431
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _022453E4
	ldrb r0, [r4, #0x12]
	cmp r0, #0xff
	ldr r0, _022453F4 @ =0x00000431
	beq _022453D2
	movs r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022453D2:
	ldrb r1, [r4, r0]
	ldrb r0, [r4, #0x15]
	adds r0, r1, r0
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, pc}
_022453E4:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #8]
	strh r0, [r4, #0x10]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
_022453F0:
	pop {r4, r5, r6, pc}
	nop
_022453F4: .4byte 0x00000431
	thumb_func_end ov107_022453A0

	thumb_func_start ov107_022453F8
ov107_022453F8: @ 0x022453F8
	movs r2, #0x3e
	lsls r2, r2, #4
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	adds r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov107_022453F8

	thumb_func_start ov107_02245408
ov107_02245408: @ 0x02245408
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_0203608C
	cmp r5, r0
	beq _0224542A
	ldrh r0, [r6, #2]
	movs r1, #0x43
	lsls r1, r1, #4
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #1
	bl ov107_02244CA0
_0224542A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02245408

	thumb_func_start ov107_0224542C
ov107_0224542C: @ 0x0224542C
	movs r1, #0x3e
	movs r2, #1
	lsls r1, r1, #4
	strh r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov107_0224542C

	thumb_func_start ov107_02245438
ov107_02245438: @ 0x02245438
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0203608C
	cmp r5, r0
	beq _0224544E
	ldrh r1, [r4]
	ldr r0, _02245450 @ =0x00000432
	strb r1, [r6, r0]
_0224544E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02245450: .4byte 0x00000432
	thumb_func_end ov107_02245438

	thumb_func_start ov107_02245454
ov107_02245454: @ 0x02245454
	push {r3, lr}
	movs r2, #0x64
	str r2, [sp]
	movs r2, #0
	adds r3, r2, #0
	bl FUN_02096954
	pop {r3, pc}
	thumb_func_end ov107_02245454

	thumb_func_start ov107_02245464
ov107_02245464: @ 0x02245464
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	adds r5, r0, #0
	adds r1, #2
	add r2, sp, #8
	adds r3, #2
	bl ov107_02244E14
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224549C
	movs r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_02244AB4
	b _022454EC
_0224549C:
	bl FUN_0203608C
	cmp r0, #0
	add r0, sp, #4
	bne _022454CA
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	movs r0, #0
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	bl ov107_02244AB4
	movs r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_02244B24
	b _022454EC
_022454CA:
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	movs r0, #0
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	bl ov107_02244B24
	movs r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_02244AB4
_022454EC:
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02245464

	thumb_func_start ov107_022454F8
ov107_022454F8: @ 0x022454F8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x14]
	adds r4, r2, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r6, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	movs r2, #0
	bl ov107_02249CAC
	adds r0, r6, #0
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov107_02244A8C
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	subs r1, r4, #1
	lsls r2, r1, #1
	ldr r1, _02245598 @ =0x02249E00
	adds r0, r5, #0
	ldrh r1, [r1, r2]
	movs r2, #1
	bl ov107_02243918
	strb r0, [r5, #0xa]
	cmp r4, #1
	beq _02245564
	cmp r4, #2
	beq _0224556E
	cmp r4, #3
	beq _02245578
	b _0224558A
_02245564:
	adds r0, r6, #0
	movs r1, #0x18
	bl ov107_02245454
	b _0224558E
_0224556E:
	adds r0, r6, #0
	movs r1, #0x29
	bl ov107_02245454
	b _0224558E
_02245578:
	adds r0, r6, #0
	movs r1, #0x18
	bl ov107_02245454
	adds r0, r6, #0
	movs r1, #0x29
	bl ov107_02245454
	b _0224558E
_0224558A:
	bl FUN_02022974
_0224558E:
	ldr r0, _0224559C @ =0x000005EC
	bl FUN_02005748
	pop {r4, r5, r6, pc}
	nop
_02245598: .4byte 0x02249E00
_0224559C: .4byte 0x000005EC
	thumb_func_end ov107_022454F8

	thumb_func_start ov107_022455A0
ov107_022455A0: @ 0x022455A0
	push {r0, r1, r2, r3}
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x14]
	adds r4, r1, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	movs r1, #6
	add r2, sp, #0x18
	adds r6, r0, #0
	bl FUN_02074B30
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x3a
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov107_02249BAC
	adds r0, r6, #0
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov107_02244A8C
	add r2, sp, #0x10
	ldrh r2, [r2, #8]
	ldr r0, [r5, #0x24]
	movs r1, #1
	bl FUN_0200B70C
	adds r0, r5, #0
	movs r1, #0x3b
	movs r2, #1
	bl ov107_02243918
	strb r0, [r5, #0xa]
	ldr r0, _02245614 @ =0x00000624
	bl FUN_02005748
	pop {r4, r5, r6}
	pop {r3}
	add sp, #0x10
	bx r3
	nop
_02245614: .4byte 0x00000624
	thumb_func_end ov107_022455A0

	thumb_func_start ov107_02245618
ov107_02245618: @ 0x02245618
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #0x1b
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224564E
	movs r0, #0x10
	bics r1, r0
	movs r0, #0x5f
	strb r1, [r4, #0xe]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001BC4
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200DC9C
	movs r0, #0x5d
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201AD10
_0224564E:
	pop {r4, pc}
	thumb_func_end ov107_02245618

	thumb_func_start ov107_02245650
ov107_02245650: @ 0x02245650
	ldrb r2, [r0, #0xe]
	movs r1, #1
	bics r2, r1
	movs r1, #1
	orrs r1, r2
	strb r1, [r0, #0xe]
	bx lr
	.align 2, 0
	thumb_func_end ov107_02245650

	thumb_func_start ov107_02245660
ov107_02245660: @ 0x02245660
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0xe1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0xe2
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0x3d
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #5
	lsls r0, r0, #6
	adds r0, r4, r0
	movs r1, #1
	bl FUN_0200DC9C
	movs r0, #5
	lsls r0, r0, #6
	adds r0, r4, r0
	bl FUN_0201AD10
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r2, #0
	bl ov107_0224503C
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x16
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201AD10
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0201ADA4
	movs r0, #0x15
	lsls r0, r0, #4
	adds r0, r4, r0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02245660

	thumb_func_start ov107_022456E4
ov107_022456E4: @ 0x022456E4
	push {r3, r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb0
	bl ov107_02245288
	movs r0, #0xe3
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020013AC
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	add r1, sp, #0
	bl FUN_020014D0
	add r1, sp, #0
	ldrh r1, [r1]
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02244DE0
	movs r1, #0x11
	lsls r1, r1, #4
	adds r2, r0, #0
	adds r0, r4, #0
	adds r1, r4, r1
	bl ov107_02243EF8
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov107_022456E4

	thumb_func_start ov107_02245730
ov107_02245730: @ 0x02245730
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xe]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _0224577E
	movs r0, #1
	bics r1, r0
	movs r0, #0x66
	strb r1, [r4, #0xe]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x12
	bl FUN_02001504
	adds r5, r0, #0
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201AD10
	movs r0, #0x67
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	movs r0, #0x66
	lsls r0, r0, #2
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_02001384
_0224577E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02245730

	thumb_func_start ov107_02245780
ov107_02245780: @ 0x02245780
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r1, #0
	add r1, sp, #0x28
	str r1, [sp]
	add r1, sp, #0x2c
	add r3, sp, #0x28
	adds r5, r0, #0
	adds r1, #2
	add r2, sp, #0x2c
	adds r3, #2
	bl ov107_02244E14
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224581A
	add r1, sp, #0x28
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x1c]
	bl FUN_02030698
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #4
	bl ov107_02244A74
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02243890
	strb r0, [r5, #0xa]
	b _022459C2
_0224581A:
	bl FUN_0203608C
	cmp r0, #0
	add r1, sp, #0x28
	bne _022458F4
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	str r0, [sp, #0x20]
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	bl FUN_02030698
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #4
	bl ov107_02244A74
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02243890
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	movs r0, #1
	str r0, [sp]
	ldr r2, _022459CC @ =0x00000436
	adds r0, r5, #0
	ldrh r2, [r5, r2]
	movs r1, #0
	movs r3, #4
	bl ov107_02244A74
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #3
	adds r3, r7, #0
	bl ov107_02243890
	strb r0, [r5, #0xa]
	b _022459C2
_022458F4:
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	movs r0, #1
	str r0, [sp]
	ldr r2, _022459CC @ =0x00000436
	adds r0, r5, #0
	ldrh r2, [r5, r2]
	movs r1, #0
	movs r3, #4
	bl ov107_02244A74
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #3
	adds r3, r7, #0
	bl ov107_02243890
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	str r0, [sp, #0x24]
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	bl FUN_02030698
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #4
	bl ov107_02244A74
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02243890
	strb r0, [r5, #0xa]
_022459C2:
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022459CC: .4byte 0x00000436
	thumb_func_end ov107_02245780

	thumb_func_start ov107_022459D0
ov107_022459D0: @ 0x022459D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _02245B34 @ =0x000005E3
	adds r7, r1, #0
	adds r5, r2, #0
	bl FUN_02005748
	ldrb r0, [r4, #0x15]
	adds r1, r7, #0
	str r0, [sp]
	bl ov107_02249C9C
	str r0, [sp, #4]
	cmp r5, #0xa
	bhi _02245A28
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022459FC: @ jump table
	.2byte _02245A28 - _022459FC - 2 @ case 0
	.2byte _02245A12 - _022459FC - 2 @ case 1
	.2byte _02245A12 - _022459FC - 2 @ case 2
	.2byte _02245A12 - _022459FC - 2 @ case 3
	.2byte _02245A28 - _022459FC - 2 @ case 4
	.2byte _02245A28 - _022459FC - 2 @ case 5
	.2byte _02245A1C - _022459FC - 2 @ case 6
	.2byte _02245A1C - _022459FC - 2 @ case 7
	.2byte _02245A28 - _022459FC - 2 @ case 8
	.2byte _02245A26 - _022459FC - 2 @ case 9
	.2byte _02245A26 - _022459FC - 2 @ case 10
_02245A12:
	subs r0, r5, #1
	lsls r1, r0, #1
	ldr r0, _02245B38 @ =0x02249E0C
	ldrh r6, [r0, r1]
	b _02245A28
_02245A1C:
	ldrh r0, [r4, #0x10]
	bl ov107_02244D90
	adds r6, r0, #0
	b _02245A28
_02245A26:
	movs r6, #0
_02245A28:
	bl FUN_0203608C
	cmp r0, #0
	bne _02245A5C
	ldr r0, [sp]
	cmp r7, r0
	bhs _02245A4A
	adds r0, r4, #0
	movs r1, #5
	bl ov107_02244A98
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	adds r2, r6, #0
	bl FUN_0223BC2C
	b _02245A86
_02245A4A:
	ldr r0, [r4, #0x24]
	movs r1, #5
	bl ov107_02249CF4
	ldr r0, _02245B3C @ =0x00000436
	ldrh r1, [r4, r0]
	subs r1, r1, r6
	strh r1, [r4, r0]
	b _02245A86
_02245A5C:
	ldr r0, [sp]
	cmp r7, r0
	bhs _02245A74
	ldr r0, [r4, #0x24]
	movs r1, #5
	bl ov107_02249CF4
	ldr r0, _02245B3C @ =0x00000436
	ldrh r1, [r4, r0]
	subs r1, r1, r6
	strh r1, [r4, r0]
	b _02245A86
_02245A74:
	adds r0, r4, #0
	movs r1, #5
	bl ov107_02244A98
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	adds r2, r6, #0
	bl FUN_0223BC2C
_02245A86:
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	bl ov107_02245780
	adds r0, r4, #0
	bl ov107_02245618
	adds r0, r4, #0
	bl ov107_02245BE0
	adds r0, r4, #0
	bl ov107_02244120
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02245288
	cmp r5, #0xa
	bhi _02245B30
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02245AC2: @ jump table
	.2byte _02245B30 - _02245AC2 - 2 @ case 0
	.2byte _02245AD8 - _02245AC2 - 2 @ case 1
	.2byte _02245AD8 - _02245AC2 - 2 @ case 2
	.2byte _02245AD8 - _02245AC2 - 2 @ case 3
	.2byte _02245B30 - _02245AC2 - 2 @ case 4
	.2byte _02245B30 - _02245AC2 - 2 @ case 5
	.2byte _02245AFA - _02245AC2 - 2 @ case 6
	.2byte _02245AFA - _02245AC2 - 2 @ case 7
	.2byte _02245B30 - _02245AC2 - 2 @ case 8
	.2byte _02245B1C - _02245AC2 - 2 @ case 9
	.2byte _02245B28 - _02245AC2 - 2 @ case 10
_02245AD8:
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	ldr r1, [sp, #4]
	adds r0, r4, #0
	adds r2, r5, #0
	bl ov107_022454F8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245AFA:
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	ldrh r2, [r4, #0x10]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov107_022455A0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245B1C:
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov107_02245B40
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02245B28:
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov107_02245B90
_02245B30:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02245B34: .4byte 0x000005E3
_02245B38: .4byte 0x02249E0C
_02245B3C: .4byte 0x00000436
	thumb_func_end ov107_022459D0

	thumb_func_start ov107_02245B40
ov107_02245B40: @ 0x02245B40
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #2
	bl ov107_02243630
	adds r0, r5, #0
	adds r0, #0xb0
	bl FUN_0201AD10
	adds r0, r5, #0
	adds r0, #0xa0
	bl FUN_0201AD10
	movs r0, #5
	lsls r0, r0, #6
	adds r0, r5, r0
	bl FUN_0201AD10
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	adds r0, r5, #0
	adds r5, #0x90
	adds r1, r5, #0
	bl ov107_02243950
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02245B40

	thumb_func_start ov107_02245B90
ov107_02245B90: @ 0x02245B90
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	movs r1, #2
	bl ov107_022436AC
	adds r0, r5, #0
	adds r0, #0xb0
	bl FUN_0201AD10
	adds r0, r5, #0
	adds r0, #0xa0
	bl FUN_0201AD10
	movs r0, #5
	lsls r0, r0, #6
	adds r0, r5, r0
	bl FUN_0201AD10
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	adds r0, r5, #0
	adds r5, #0x90
	adds r1, r5, #0
	bl ov107_02243B84
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02245B90

	thumb_func_start ov107_02245BE0
ov107_02245BE0: @ 0x02245BE0
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x90
	movs r1, #0
	bl FUN_0201ADA4
	adds r4, #0x90
	adds r0, r4, #0
	bl FUN_0201ACF4
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02245BE0

	thumb_func_start ov107_02245C00
ov107_02245C00: @ 0x02245C00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldrb r0, [r6, #9]
	movs r1, #1
	bl FUN_0223B7A8
	movs r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02245C90
	adds r5, r6, #0
_02245C18:
	movs r0, #0xf6
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r1, r4, #0
	bl FUN_0207A0FC
	str r0, [sp, #4]
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	ldr r0, [sp, #4]
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	lsls r0, r7, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	bl FUN_0222E240
	adds r1, r0, #0
	movs r0, #0x39
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _02245C86
	bl ov107_02249C1C
	ldrb r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	bl ov107_02249C98
	cmp r4, r0
	bne _02245C6C
	ldrb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	cmp r1, r0
	blo _02245C7A
_02245C6C:
	movs r0, #0x39
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov107_02249C28
	b _02245C86
_02245C7A:
	movs r0, #0x39
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov107_02249C28
_02245C86:
	ldr r0, [sp]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _02245C18
_02245C90:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02245C00

	thumb_func_start ov107_02245C94
ov107_02245C94: @ 0x02245C94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r5, r0, #0
	str r2, [sp]
	ldrb r0, [r5, #9]
	adds r6, r1, #0
	movs r1, #0
	bl FUN_0223B7A8
	ldr r0, [sp]
	cmp r0, #4
	beq _02245CB0
	movs r0, #1
	b _02245CB2
_02245CB0:
	movs r0, #0
_02245CB2:
	ldrb r7, [r5, #0x15]
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov107_02249C9C
	bl FUN_0203608C
	cmp r0, #0
	bne _02245D9A
	cmp r6, r7
	bhs _02245D68
	adds r0, r5, #0
	movs r1, #5
	bl ov107_02244A98
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl ov107_02249CAC
	adds r2, r0, #0
	movs r0, #6
	adds r6, r4, #0
	muls r6, r0, r6
	ldr r3, _02245EA4 @ =0x02249E46
	lsls r2, r2, #1
	adds r3, r3, r6
	ldrb r1, [r5, #9]
	ldrh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl FUN_0223BC2C
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl ov107_02249CAC
	adds r7, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0203068C
	str r0, [sp, #4]
	ldrb r0, [r5, #9]
	adds r1, r4, #0
	bl FUN_0205E5B4
	str r0, [sp, #8]
	ldrb r0, [r5, #9]
	adds r1, r4, #0
	bl FUN_0205E5B4
	bl FUN_0205E6A8
	adds r3, r7, #1
	adds r2, r0, #0
	lsls r3, r3, #0x10
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	lsrs r3, r3, #0x10
	bl FUN_020306E4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	beq _02245D48
	b _02245E68
_02245D48:
	ldr r0, [sp]
	ldrb r1, [r5, #0xe]
	cmp r0, #4
	bne _02245D5C
	movs r0, #0x60
	bics r1, r0
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #0xe]
	b _02245E68
_02245D5C:
	movs r0, #0x60
	bics r1, r0
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r5, #0xe]
	b _02245E68
_02245D68:
	ldr r0, [r5, #0x24]
	movs r1, #5
	bl ov107_02249CF4
	ldr r0, _02245EA8 @ =0x00000433
	adds r6, r4, #0
	adds r1, r5, r0
	ldrb r7, [r1, r4]
	movs r0, #6
	muls r6, r0, r6
	ldr r0, _02245EA8 @ =0x00000433
	ldr r2, _02245EA4 @ =0x02249E46
	adds r0, r0, #3
	lsls r3, r7, #1
	adds r2, r2, r6
	ldrh r0, [r5, r0]
	ldrh r2, [r3, r2]
	subs r0, r0, r2
	ldr r2, _02245EA8 @ =0x00000433
	adds r2, r2, #3
	strh r0, [r5, r2]
	ldrb r0, [r1, r4]
	adds r0, r0, #1
	strb r0, [r1, r4]
	b _02245E68
_02245D9A:
	cmp r6, r7
	bhs _02245DD0
	ldr r0, [r5, #0x24]
	movs r1, #5
	bl ov107_02249CF4
	ldr r0, _02245EA8 @ =0x00000433
	adds r6, r4, #0
	adds r1, r5, r0
	ldrb r7, [r1, r4]
	movs r0, #6
	muls r6, r0, r6
	ldr r0, _02245EA8 @ =0x00000433
	ldr r2, _02245EA4 @ =0x02249E46
	adds r0, r0, #3
	lsls r3, r7, #1
	adds r2, r2, r6
	ldrh r0, [r5, r0]
	ldrh r2, [r3, r2]
	subs r0, r0, r2
	ldr r2, _02245EA8 @ =0x00000433
	adds r2, r2, #3
	strh r0, [r5, r2]
	ldrb r0, [r1, r4]
	adds r0, r0, #1
	strb r0, [r1, r4]
	b _02245E68
_02245DD0:
	adds r0, r5, #0
	movs r1, #5
	bl ov107_02244A98
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl ov107_02249CAC
	adds r2, r0, #0
	movs r0, #6
	adds r6, r4, #0
	muls r6, r0, r6
	ldr r3, _02245EA4 @ =0x02249E46
	lsls r2, r2, #1
	adds r3, r3, r6
	ldrb r1, [r5, #9]
	ldrh r2, [r2, r3]
	ldr r0, [r5, #4]
	bl FUN_0223BC2C
	movs r0, #0x73
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	adds r2, r4, #0
	bl ov107_02249CAC
	adds r7, r0, #0
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0203068C
	str r0, [sp, #0xc]
	ldrb r0, [r5, #9]
	adds r1, r4, #0
	bl FUN_0205E5B4
	str r0, [sp, #0x10]
	ldrb r0, [r5, #9]
	adds r1, r4, #0
	bl FUN_0205E5B4
	bl FUN_0205E6A8
	adds r3, r7, #1
	adds r2, r0, #0
	lsls r3, r3, #0x10
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r3, #0x10
	bl FUN_020306E4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02245E68
	ldr r0, [sp]
	ldrb r1, [r5, #0xe]
	cmp r0, #4
	bne _02245E5E
	movs r0, #0x60
	bics r1, r0
	movs r0, #0x20
	orrs r0, r1
	strb r0, [r5, #0xe]
	b _02245E68
_02245E5E:
	movs r0, #0x60
	bics r1, r0
	movs r0, #0x40
	orrs r0, r1
	strb r0, [r5, #0xe]
_02245E68:
	adds r0, r5, #0
	bl ov107_02245618
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x50
	bl ov107_02245780
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xb0
	bl ov107_02249DBC
	ldr r1, _02245EAC @ =0x02249E34
	lsls r2, r7, #1
	adds r1, r1, r6
	ldrh r1, [r2, r1]
	adds r0, r5, #0
	movs r2, #1
	bl ov107_02243918
	strb r0, [r5, #0xa]
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02245EA4: .4byte 0x02249E46
_02245EA8: .4byte 0x00000433
_02245EAC: .4byte 0x02249E34
	thumb_func_end ov107_02245C94

	thumb_func_start ov107_02245EB0
ov107_02245EB0: @ 0x02245EB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _02245FC8 @ =0x00000068
	movs r1, #2
	bl FUN_02006590
	bl ov107_02246EAC
	movs r2, #2
	movs r0, #3
	movs r1, #0x64
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	movs r1, #0xf7
	adds r0, r4, #0
	lsls r1, r1, #2
	movs r2, #0x64
	bl FUN_0200681C
	movs r2, #0xf7
	movs r1, #0
	lsls r2, r2, #2
	adds r5, r0, #0
	blx FUN_020D5124
	movs r0, #0x64
	bl FUN_02018340
	str r0, [r5, #0x4c]
	adds r0, r4, #0
	str r4, [r5]
	bl FUN_02006840
	adds r4, r0, #0
	movs r0, #0x53
	ldr r1, [r4]
	lsls r0, r0, #2
	str r1, [r5, r0]
	ldr r0, [r5, r0]
	bl FUN_020302DC
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r5, r1]
	subs r0, r1, #4
	ldr r0, [r5, r0]
	bl FUN_0203041C
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0x20
	strb r0, [r5, #9]
	movs r0, #0xd9
	lsls r0, r0, #2
	subs r1, #8
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl FUN_02025E44
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0xde
	adds r2, r4, #0
	ldr r1, [r4, #0x1c]
	lsls r0, r0, #2
	str r1, [r5, r0]
	adds r1, r0, #0
	adds r2, #8
	subs r1, #0x10
	str r2, [r5, r1]
	adds r2, r4, #0
	adds r1, r0, #0
	adds r2, #0xc
	subs r1, #0xc
	str r2, [r5, r1]
	adds r2, r4, #0
	adds r1, r0, #0
	adds r2, #0x10
	subs r1, #8
	str r2, [r5, r1]
	adds r2, r4, #0
	subs r1, r0, #4
	adds r2, #0x14
	str r2, [r5, r1]
	movs r2, #0xff
	strb r2, [r5, #0x11]
	ldrh r1, [r4, #0x28]
	adds r0, #0x5e
	adds r2, #0x4d
	strh r1, [r5, r0]
	ldr r0, [r5, r2]
	bl FUN_0203068C
	str r0, [r5, #4]
	ldr r0, _02245FCC @ =0x000003D3
	movs r3, #0
	movs r2, #1
_02245F7E:
	adds r1, r5, r3
	adds r3, r3, #1
	strb r2, [r1, r0]
	cmp r3, #3
	blt _02245F7E
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02245F96
	movs r0, #3
	b _02245F98
_02245F96:
	movs r0, #4
_02245F98:
	strb r0, [r5, #0x14]
	ldrb r0, [r5, #0x14]
	movs r1, #0
	strb r0, [r5, #0x15]
	subs r0, r0, #1
	strb r0, [r5, #0xc]
	movs r0, #0x3d
	lsls r0, r0, #4
	strb r1, [r5, r0]
	adds r0, r5, #0
	bl ov107_02246EE4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02245FC0
	adds r0, r5, #0
	bl FUN_0209BA80
_02245FC0:
	movs r0, #0
	str r0, [r6]
	movs r0, #1
	pop {r4, r5, r6, pc}
	.align 2, 0
_02245FC8: .4byte 0x00000068
_02245FCC: .4byte 0x000003D3
	thumb_func_end ov107_02245EB0

	thumb_func_start ov107_02245FD0
ov107_02245FD0: @ 0x02245FD0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	bl FUN_0200682C
	ldr r1, _0224612C @ =0x000003D2
	adds r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #1
	bne _02246040
	ldr r2, [r5]
	cmp r2, #1
	bne _0224606C
	movs r2, #0
	strb r2, [r4, r1]
	bl ov107_0224883C
	adds r0, r4, #0
	bl ov107_02249238
	movs r0, #0xc9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0224600C
	bl ov107_02249B8C
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bics r1, r0
	strb r1, [r4, #0xf]
_0224600C:
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	ldr r0, [r4, #0x24]
	movs r1, #0
	bl FUN_0222E5D0
	adds r0, r4, #0
	movs r1, #7
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov107_02248350
	b _0224606C
_02246040:
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	beq _0224606C
	ldr r0, [r5]
	cmp r0, #1
	beq _02246050
	cmp r0, #3
	bne _0224606C
_02246050:
	ldr r0, _0224612C @ =0x000003D2
	movs r1, #0
	strb r1, [r4, r0]
	adds r0, r4, #0
	bl ov107_0224883C
	adds r0, r4, #0
	bl ov107_02249238
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov107_02248350
_0224606C:
	ldr r0, [r5]
	cmp r0, #4
	bhi _02246116
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224607E: @ jump table
	.2byte _02246088 - _0224607E - 2 @ case 0
	.2byte _0224609E - _0224607E - 2 @ case 1
	.2byte _022460DC - _0224607E - 2 @ case 2
	.2byte _022460F2 - _0224607E - 2 @ case 3
	.2byte _02246108 - _0224607E - 2 @ case 4
_02246088:
	adds r0, r4, #0
	bl ov107_02246170
	cmp r0, #1
	bne _02246116
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov107_02248350
	b _02246116
_0224609E:
	adds r0, r4, #0
	bl ov107_022462CC
	cmp r0, #1
	bne _02246116
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _022460BA
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #2
	bl ov107_02248350
	b _02246116
_022460BA:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022460D0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #3
	bl ov107_02248350
	b _02246116
_022460D0:
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov107_02248350
	b _02246116
_022460DC:
	adds r0, r4, #0
	bl ov107_02246BDC
	cmp r0, #1
	bne _02246116
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl ov107_02248350
	b _02246116
_022460F2:
	adds r0, r4, #0
	bl ov107_02246CD0
	cmp r0, #1
	bne _02246116
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #4
	bl ov107_02248350
	b _02246116
_02246108:
	adds r0, r4, #0
	bl ov107_02246D3C
	cmp r0, #1
	bne _02246116
	movs r0, #1
	pop {r3, r4, r5, pc}
_02246116:
	adds r0, r4, #0
	bl ov107_022492A8
	movs r0, #0x56
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_020219F8
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0224612C: .4byte 0x000003D2
	thumb_func_end ov107_02245FD0

	thumb_func_start ov107_02246130
ov107_02246130: @ 0x02246130
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	bl FUN_0200682C
	adds r4, r0, #0
	movs r0, #0xd9
	lsls r0, r0, #2
	ldrb r1, [r4, #0xd]
	ldr r0, [r4, r0]
	strh r1, [r0]
	bl FUN_0201DC3C
	adds r0, r4, #0
	bl ov107_02246D84
	adds r0, r5, #0
	bl FUN_02006830
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	movs r0, #0x64
	bl FUN_0201807C
	ldr r0, _0224616C @ =0x00000068
	bl FUN_02006514
	movs r0, #1
	pop {r3, r4, r5, pc}
	.align 2, 0
_0224616C: .4byte 0x00000068
	thumb_func_end ov107_02246130

	thumb_func_start ov107_02246170
ov107_02246170: @ 0x02246170
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	bhi _0224626C
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02246188: @ jump table
	.2byte _02246192 - _02246188 - 2 @ case 0
	.2byte _022461AE - _02246188 - 2 @ case 1
	.2byte _022461D6 - _02246188 - 2 @ case 2
	.2byte _0224621C - _02246188 - 2 @ case 3
	.2byte _0224625E - _02246188 - 2 @ case 4
_02246192:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022461A6
	bl FUN_020365F4
	movs r0, #0xd8
	bl FUN_020364F0
_022461A6:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461AE:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022461CE
	movs r0, #0xd8
	bl FUN_02036540
	cmp r0, #1
	bne _0224626C
	bl FUN_020365F4
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461CE:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461D6:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022461F6
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #0
	bl ov107_02248874
	cmp r0, #1
	bne _0224626C
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_022461F6:
	adds r0, r4, #0
	bl ov107_02246274
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_0224621C:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02246256
	ldrb r0, [r4, #0x17]
	cmp r0, #2
	blo _0224626C
	movs r0, #0
	strb r0, [r4, #0x17]
	adds r0, r4, #0
	bl ov107_02246274
	movs r0, #6
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	movs r0, #0
	movs r1, #1
	adds r2, r1, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_02246256:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _0224626C
_0224625E:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0224626C
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_0224626C:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_02246170

	thumb_func_start ov107_02246274
ov107_02246274: @ 0x02246274
	push {r4, r5, lr}
	sub sp, #0xc
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	adds r4, r0, #0
	adds r1, #2
	add r2, sp, #8
	adds r3, #2
	bl ov107_022484DC
	adds r5, r4, #0
	adds r5, #0x50
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov107_02248E84
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov107_02248C08
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x80
	bl ov107_02247B78
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x70
	bl ov107_02247C64
	adds r0, r4, #0
	bl ov107_02248240
	bl FUN_0201FFD0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02246274

	thumb_func_start ov107_022462CC
ov107_022462CC: @ 0x022462CC
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0x11
	bls _022462DA
	bl _02246BD0
_022462DA:
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_022462E6: @ jump table
	.2byte _0224630A - _022462E6 - 2 @ case 0
	.2byte _02246366 - _022462E6 - 2 @ case 1
	.2byte _022463C0 - _022462E6 - 2 @ case 2
	.2byte _02246520 - _022462E6 - 2 @ case 3
	.2byte _022465DA - _022462E6 - 2 @ case 4
	.2byte _022466E2 - _022462E6 - 2 @ case 5
	.2byte _022467B2 - _022462E6 - 2 @ case 6
	.2byte _0224694E - _022462E6 - 2 @ case 7
	.2byte _0224699A - _022462E6 - 2 @ case 8
	.2byte _022469E6 - _022462E6 - 2 @ case 9
	.2byte _02246AA2 - _022462E6 - 2 @ case 10
	.2byte _02246ADC - _022462E6 - 2 @ case 11
	.2byte _02246AEE - _022462E6 - 2 @ case 12
	.2byte _02246B00 - _022462E6 - 2 @ case 13
	.2byte _02246B12 - _022462E6 - 2 @ case 14
	.2byte _02246B2E - _022462E6 - 2 @ case 15
	.2byte _02246B52 - _022462E6 - 2 @ case 16
	.2byte _02246B92 - _022462E6 - 2 @ case 17
_0224630A:
	movs r0, #0
	strb r0, [r4, #0xb]
	movs r0, #1
	strb r0, [r4, #8]
	ldrb r0, [r4, #0xf]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x1b
	cmp r0, #1
	bne _0224632C
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	bl ov107_02248240
	b _0224635A
_0224632C:
	cmp r0, #2
	bne _02246352
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	bl ov107_022482FC
	movs r0, #0x36
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xd3
	movs r2, #0x69
	bl ov107_02249C60
	movs r0, #6
	strb r0, [r4, #8]
	b _0224635A
_02246352:
	cmp r0, #3
	bne _0224635A
	movs r0, #0xd
	strb r0, [r4, #8]
_0224635A:
	ldrb r1, [r4, #0xf]
	movs r0, #0xf8
	bics r1, r0
	strb r1, [r4, #0xf]
	bl _02246BD0
_02246366:
	ldr r1, _02246664 @ =0x021BF67C
	ldr r1, [r1, #0x48]
	bl ov107_02248358
	ldr r0, _02246664 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	beq _0224639E
	ldr r0, _02246668 @ =0x000005DC
	bl FUN_02005748
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	blo _0224638A
	movs r0, #1
	pop {r3, r4, r5, pc}
_0224638A:
	adds r0, r4, #0
	bl ov107_022482A4
	adds r0, r4, #0
	bl ov107_022482B0
	movs r0, #2
	strb r0, [r4, #8]
	bl _02246BD0
_0224639E:
	movs r0, #2
	tst r0, r1
	beq _022463EE
	ldrb r1, [r4, #0xd]
	ldrb r0, [r4, #0x15]
	cmp r1, r0
	beq _022463EE
	ldr r0, _02246668 @ =0x000005DC
	bl FUN_02005748
	ldrb r0, [r4, #0x15]
	strb r0, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_022483F0
	bl _02246BD0
_022463C0:
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001288
	ldr r1, _02246668 @ =0x000005DC
	adds r5, r0, #0
	bl ov107_02249CE0
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x18
	bl FUN_020014D0
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _0224640A
	bhs _02246412
	cmp r5, #6
	bls _022463F0
_022463EE:
	b _02246BD0
_022463F0:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022463FC: @ jump table
	.2byte _02246424 - _022463FC - 2 @ case 0
	.2byte _022464B0 - _022463FC - 2 @ case 1
	.2byte _022464FC - _022463FC - 2 @ case 2
	.2byte _02246BD0 - _022463FC - 2 @ case 3
	.2byte _02246BD0 - _022463FC - 2 @ case 4
	.2byte _02246BD0 - _022463FC - 2 @ case 5
	.2byte _0224650E - _022463FC - 2 @ case 6
_0224640A:
	movs r0, #0
	mvns r0, r0
	cmp r5, r0
	b _02246BD0
_02246412:
	adds r0, r4, #0
	bl ov107_022482D4
	adds r0, r4, #0
	bl ov107_02248240
	movs r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246424:
	strb r5, [r4, #0x13]
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	movs r1, #0xda
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _0224646C
	adds r0, r4, #0
	bl ov107_022482D4
	adds r0, r4, #0
	bl ov107_02248BEC
	movs r1, #0
	adds r0, r4, #0
	movs r2, #1
	movs r3, #4
	str r1, [sp]
	bl ov107_022480EC
	adds r0, r4, #0
	movs r1, #0x10
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_02247D94
	movs r0, #3
	strb r0, [r4, #8]
	b _02246BD0
_0224646C:
	adds r0, r4, #0
	bl ov107_022482D4
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov107_02248BEC
	adds r0, r5, #0
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov107_02248104
	adds r0, r4, #0
	movs r1, #0x14
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	movs r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_022464B0:
	strb r5, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_022482D4
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov107_02248BEC
	adds r0, r5, #0
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl ov107_02248104
	adds r0, r4, #0
	movs r1, #0x15
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_02247DF0
	movs r0, #4
	strb r0, [r4, #8]
	b _02246BD0
_022464FC:
	adds r0, r4, #0
	bl ov107_022482D4
	adds r0, r4, #0
	bl ov107_022482FC
	movs r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_0224650E:
	adds r0, r4, #0
	bl ov107_022482D4
	adds r0, r4, #0
	bl ov107_02248240
	movs r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246520:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02246542
	bhs _022465C0
	cmp r0, #1
	bhi _02246540
	cmp r0, #0
	beq _02246548
	cmp r0, #1
	beq _022465C0
_02246540:
	b _02246BD0
_02246542:
	adds r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246548:
	adds r0, r4, #0
	bl ov107_02248BB4
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	cmp r0, #1
	bhs _0224658E
	adds r0, r4, #0
	bl ov107_02248BEC
	adds r0, r4, #0
	movs r1, #0x1c
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	movs r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_0224658E:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022465BA
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	movs r2, #1
	bl FUN_0223BC2C
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	bl ov107_02248C08
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_02249024
	movs r0, #0xb
	strb r0, [r4, #8]
	b _02246BD0
_022465BA:
	movs r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_022465C0:
	adds r0, r4, #0
	bl ov107_02248BB4
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	bl ov107_022482B0
	movs r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022465DA:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02246600
	bhs _022466C8
	cmp r0, #2
	bhi _022465FE
	cmp r0, #0
	beq _02246606
	cmp r0, #1
	beq _0224666C
	cmp r0, #2
	beq _022466C8
_022465FE:
	b _02246BD0
_02246600:
	adds r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246606:
	adds r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _02246654
	adds r0, r4, #0
	bl ov107_02248BEC
	adds r0, r4, #0
	movs r1, #0x1d
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	movs r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_02246654:
	adds r0, r4, #0
	movs r1, #1
	bl ov107_02248E54
	movs r0, #5
	strb r0, [r4, #8]
	b _02246BD0
	nop
_02246664: .4byte 0x021BF67C
_02246668: .4byte 0x000005DC
_0224666C:
	adds r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _022466BA
	adds r0, r4, #0
	bl ov107_02248BEC
	adds r0, r4, #0
	movs r1, #0x1e
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	movs r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_022466BA:
	adds r0, r4, #0
	movs r1, #2
	bl ov107_02248E54
	movs r0, #5
	strb r0, [r4, #8]
	b _02246BD0
_022466C8:
	adds r0, r4, #0
	bl ov107_02248BB4
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	bl ov107_022482B0
	movs r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022466E2:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02246704
	bhs _02246798
	cmp r0, #1
	bhi _02246702
	cmp r0, #0
	beq _0224670A
	cmp r0, #1
	beq _02246798
_02246702:
	b _02246BD0
_02246704:
	adds r1, r1, #1
	cmp r0, r1
	b _02246BD0
_0224670A:
	adds r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	adds r5, r0, #0
	ldrb r0, [r4, #0xe]
	bl ov107_02248770
	cmp r5, r0
	bhs _02246752
	adds r0, r4, #0
	bl ov107_02248BEC
	adds r0, r4, #0
	movs r1, #0x1c
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	movs r0, #0xf
	strb r0, [r4, #8]
	movs r0, #0
	pop {r3, r4, r5, pc}
_02246752:
	ldrb r0, [r4, #0xe]
	strb r0, [r4, #0x12]
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02246792
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	ldrb r0, [r4, #0xe]
	bl ov107_02248770
	adds r2, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	bl FUN_0223BC2C
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	bl ov107_02248C08
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xe]
	adds r0, r4, #0
	bl ov107_022490E8
	movs r0, #0xb
	strb r0, [r4, #8]
	b _02246BD0
_02246792:
	movs r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02246798:
	adds r0, r4, #0
	bl ov107_02248BB4
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	bl ov107_022482B0
	movs r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_022467B2:
	movs r0, #0x4e
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001288
	ldr r1, _02246AA8 @ =0x000005DC
	adds r5, r0, #0
	bl ov107_02249CE0
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r1, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x18
	bl FUN_020014D0
	movs r0, #1
	mvns r0, r0
	cmp r5, r0
	bhi _022467F0
	bhs _022467F6
	cmp r5, #5
	bhi _022467EE
	cmp r5, #3
	blo _022467EE
	beq _02246810
	cmp r5, #4
	beq _02246866
	cmp r5, #5
	beq _022468E2
_022467EE:
	b _02246BD0
_022467F0:
	adds r0, r0, #1
	cmp r5, r0
	b _02246BD0
_022467F6:
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	bl ov107_02248348
	adds r0, r4, #0
	bl ov107_022482B0
	movs r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_02246810:
	strb r5, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02248348
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	movs r1, #0x37
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _02246858
	adds r0, r4, #0
	bl ov107_02248BEC
	movs r1, #0
	adds r0, r4, #0
	movs r2, #2
	movs r3, #4
	str r1, [sp]
	bl ov107_022480EC
	adds r0, r4, #0
	movs r1, #0x2b
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_02247D94
	movs r0, #7
	strb r0, [r4, #8]
	b _02246BD0
_02246858:
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_02248A2C
	movs r0, #0x10
	strb r0, [r4, #8]
	b _02246BD0
_02246866:
	adds r0, r4, #0
	strb r5, [r4, #0x13]
	bl ov107_02248348
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #2
	bl ov107_02249CAC
	cmp r0, #1
	bne _02246894
	adds r0, r4, #0
	movs r1, #0x2a
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	movs r0, #0xe
	strb r0, [r4, #8]
	movs r0, #0
	pop {r3, r4, r5, pc}
_02246894:
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	movs r1, #0xdd
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022468D4
	adds r0, r4, #0
	bl ov107_02248BEC
	movs r1, #0
	adds r0, r4, #0
	movs r2, #5
	movs r3, #4
	str r1, [sp]
	bl ov107_022480EC
	adds r0, r4, #0
	movs r1, #0x42
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_02247D94
	movs r0, #8
	strb r0, [r4, #8]
	b _02246BD0
_022468D4:
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_02248AF0
	movs r0, #0x11
	strb r0, [r4, #8]
	b _02246BD0
_022468E2:
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #2
	bl ov107_02249CAC
	cmp r0, #2
	bne _02246904
	ldr r0, _02246AA8 @ =0x000005DC
	movs r1, #0
	bl FUN_020057A4
	ldr r0, _02246AAC @ =0x000005F3
	bl FUN_02005748
	b _02246BD0
_02246904:
	strb r5, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02248348
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	movs r1, #0
	adds r0, r4, #0
	movs r2, #0x32
	movs r3, #4
	str r1, [sp]
	bl ov107_022480EC
	adds r0, r4, #0
	movs r1, #0x4c
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	adds r0, r4, #0
	bl ov107_02247D94
	movs r0, #9
	strb r0, [r4, #8]
	b _02246BD0
_0224694E:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02246970
	bhs _02246988
	cmp r0, #1
	bhi _0224696E
	cmp r0, #0
	beq _02246976
	cmp r0, #1
	beq _02246988
_0224696E:
	b _02246BD0
_02246970:
	adds r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246976:
	adds r0, r4, #0
	movs r1, #2
	movs r2, #0x2e
	bl ov107_0224933C
	cmp r0, #1
	bne _022469BA
	movs r0, #1
	pop {r3, r4, r5, pc}
_02246988:
	adds r0, r4, #0
	bl ov107_02248BB4
	adds r0, r4, #0
	bl ov107_022482FC
	movs r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_0224699A:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _022469BC
	bhs _022469D4
	cmp r0, #1
	bhi _022469BA
	cmp r0, #0
	beq _022469C2
	cmp r0, #1
	beq _022469D4
_022469BA:
	b _02246BD0
_022469BC:
	adds r1, r1, #1
	cmp r0, r1
	b _02246BD0
_022469C2:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0x45
	bl ov107_0224933C
	cmp r0, #1
	bne _02246A06
	movs r0, #1
	pop {r3, r4, r5, pc}
_022469D4:
	adds r0, r4, #0
	bl ov107_02248BB4
	adds r0, r4, #0
	bl ov107_022482FC
	movs r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_022469E6:
	movs r0, #0x47
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02001BE0
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	bhi _02246A08
	bhs _02246A90
	cmp r0, #1
	bhi _02246A06
	cmp r0, #0
	beq _02246A0E
	cmp r0, #1
	beq _02246A90
_02246A06:
	b _02246BD0
_02246A08:
	adds r1, r1, #1
	cmp r0, r1
	b _02246BD0
_02246A0E:
	adds r0, r4, #0
	bl ov107_02248BB4
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	adds r5, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r4, #4]
	adds r1, r5, #0
	bl FUN_02030698
	adds r5, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #2
	bl ov107_02249CAC
	cmp r5, #0x32
	bhs _02246A70
	adds r0, r4, #0
	bl ov107_02248BB4
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	adds r0, r4, #0
	movs r1, #0x45
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r4, #0xa]
	movs r0, #0xe
	strb r0, [r4, #8]
	b _02246BD0
_02246A70:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02246A8A
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r2, #5
	bl ov107_022493CC
	movs r0, #0xa
	strb r0, [r4, #8]
	b _02246BD0
_02246A8A:
	movs r0, #1
	strb r0, [r4, #0x10]
	pop {r3, r4, r5, pc}
_02246A90:
	adds r0, r4, #0
	bl ov107_02248BB4
	adds r0, r4, #0
	bl ov107_022482FC
	movs r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246AA2:
	ldr r1, _02246AB0 @ =0x021BF67C
	b _02246AB4
	nop
_02246AA8: .4byte 0x000005DC
_02246AAC: .4byte 0x000005F3
_02246AB0: .4byte 0x021BF67C
_02246AB4:
	ldr r2, [r1, #0x48]
	movs r1, #3
	tst r1, r2
	bne _02246ABE
	b _02246BD0
_02246ABE:
	bl ov107_02248BB4
	adds r0, r4, #0
	bl ov107_022482FC
	movs r0, #0x36
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0xd3
	movs r2, #0x69
	bl ov107_02249C60
	movs r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246ADC:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_0224850C
	cmp r0, #1
	bne _02246BD0
	movs r0, #0xf
	strb r0, [r4, #8]
	b _02246BD0
_02246AEE:
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0x13]
	bl ov107_0224850C
	cmp r0, #1
	bne _02246BD0
	movs r0, #0xd
	strb r0, [r4, #8]
	b _02246BD0
_02246B00:
	ldrb r0, [r4, #0x13]
	cmp r0, #3
	bne _02246B0C
	movs r0, #0x10
	strb r0, [r4, #8]
	b _02246BD0
_02246B0C:
	movs r0, #0x11
	strb r0, [r4, #8]
	b _02246BD0
_02246B12:
	ldr r0, _02246BD4 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02246BD0
	ldr r0, _02246BD8 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov107_022482FC
	movs r0, #6
	strb r0, [r4, #8]
	b _02246BD0
_02246B2E:
	ldr r0, _02246BD4 @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02246BD0
	ldr r0, _02246BD8 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	bl ov107_02248240
	movs r0, #0
	strb r0, [r4, #8]
	b _02246BD0
_02246B52:
	ldr r1, _02246BD4 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	adds r3, r2, #0
	tst r3, r1
	beq _02246B66
	subs r1, #0x21
	bl ov107_0224877C
	b _02246BD0
_02246B66:
	movs r1, #0x10
	tst r1, r2
	beq _02246B74
	movs r1, #1
	bl ov107_0224877C
	b _02246BD0
_02246B74:
	movs r0, #3
	tst r0, r2
	beq _02246BD0
	ldr r0, _02246BD8 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov107_02249238
	adds r0, r4, #0
	bl ov107_022482B0
	movs r0, #2
	strb r0, [r4, #8]
	b _02246BD0
_02246B92:
	ldr r1, _02246BD4 @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	adds r3, r2, #0
	tst r3, r1
	beq _02246BA6
	subs r1, #0x21
	bl ov107_022487DC
	b _02246BD0
_02246BA6:
	movs r1, #0x10
	tst r1, r2
	beq _02246BB4
	movs r1, #1
	bl ov107_022487DC
	b _02246BD0
_02246BB4:
	movs r0, #3
	tst r0, r2
	beq _02246BD0
	ldr r0, _02246BD8 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	bl ov107_02249238
	adds r0, r4, #0
	bl ov107_022482B0
	movs r0, #2
	strb r0, [r4, #8]
_02246BD0:
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_02246BD4: .4byte 0x021BF67C
_02246BD8: .4byte 0x000005DC
	thumb_func_end ov107_022462CC

	thumb_func_start ov107_02246BDC
ov107_02246BDC: @ 0x02246BDC
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #5
	bhi _02246CC8
	adds r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	add pc, r1
_02246BF2: @ jump table
	.2byte _02246BFE - _02246BF2 - 2 @ case 0
	.2byte _02246C22 - _02246BF2 - 2 @ case 1
	.2byte _02246C48 - _02246BF2 - 2 @ case 2
	.2byte _02246C6A - _02246BF2 - 2 @ case 3
	.2byte _02246C88 - _02246BF2 - 2 @ case 4
	.2byte _02246C9A - _02246BF2 - 2 @ case 5
_02246BFE:
	ldrb r2, [r4, #0xf]
	movs r1, #0xf8
	bics r2, r1
	movs r1, #8
	orrs r1, r2
	strb r1, [r4, #0xf]
	ldrb r2, [r4, #0xd]
	movs r1, #0x15
	bl ov107_02248874
	cmp r0, #1
	bne _02246CC8
	movs r0, #0
	strb r0, [r4, #0x10]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C22:
	ldrb r1, [r4, #0x11]
	cmp r1, #0xff
	beq _02246CC8
	movs r1, #0
	strb r1, [r4, #0x17]
	ldrb r2, [r4, #0x13]
	ldrb r1, [r4, #0x11]
	cmp r2, #5
	bne _02246C3C
	movs r2, #5
	bl ov107_022493CC
	b _02246C40
_02246C3C:
	bl ov107_02248F18
_02246C40:
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C48:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x11]
	bl ov107_02249C9C
	adds r1, r0, #0
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_0224850C
	cmp r0, #1
	bne _02246CC8
	movs r0, #0x1e
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C6A:
	ldrb r0, [r4, #0x16]
	subs r0, r0, #1
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _02246CC8
	bl FUN_020365F4
	movs r0, #0x85
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C88:
	movs r0, #0x85
	bl FUN_02036540
	cmp r0, #1
	bne _02246CC8
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02246CC8
_02246C9A:
	ldrb r0, [r4, #0x15]
	ldrb r1, [r4, #0x11]
	bl ov107_02249C9C
	adds r1, r0, #0
	ldrb r2, [r4, #0x13]
	adds r0, r4, #0
	bl ov107_02248674
	cmp r0, #1
	bne _02246CC8
	bl FUN_020365F4
	movs r0, #0x64
	bl FUN_020363E8
	movs r0, #0xff
	strb r0, [r4, #0x11]
	ldr r0, _02246CCC @ =0x000003D2
	movs r1, #0
	strb r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_02246CC8:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02246CCC: .4byte 0x000003D2
	thumb_func_end ov107_02246BDC

	thumb_func_start ov107_02246CD0
ov107_02246CD0: @ 0x02246CD0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #8]
	cmp r1, #0
	beq _02246CE4
	cmp r1, #1
	beq _02246CFC
	cmp r1, #2
	beq _02246D1E
	b _02246D38
_02246CE4:
	movs r1, #0x17
	movs r2, #0
	bl ov107_02248874
	cmp r0, #1
	bne _02246D38
	movs r0, #0x1e
	strb r0, [r4, #0x16]
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02246D38
_02246CFC:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	beq _02246D06
	subs r0, r0, #1
	strb r0, [r4, #0x16]
_02246D06:
	ldrb r0, [r4, #0x16]
	cmp r0, #0
	bne _02246D38
	bl FUN_020365F4
	movs r0, #0x86
	bl FUN_020364F0
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02246D38
_02246D1E:
	movs r0, #0x86
	bl FUN_02036540
	cmp r0, #1
	bne _02246D38
	bl FUN_020365F4
	adds r4, #0xc0
	adds r0, r4, #0
	bl ov107_02248860
	movs r0, #1
	pop {r4, pc}
_02246D38:
	movs r0, #0
	pop {r4, pc}
	thumb_func_end ov107_02246CD0

	thumb_func_start ov107_02246D3C
ov107_02246D3C: @ 0x02246D3C
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq _02246D4E
	cmp r0, #1
	beq _02246D6E
	b _02246D7C
_02246D4E:
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	adds r3, r0, #0
	bl FUN_0200F174
	ldrb r0, [r4, #8]
	adds r0, r0, #1
	strb r0, [r4, #8]
	b _02246D7C
_02246D6E:
	bl FUN_0200F2AC
	cmp r0, #1
	bne _02246D7C
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02246D7C:
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_02246D3C

	thumb_func_start ov107_02246D84
ov107_02246D84: @ 0x02246D84
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	movs r1, #0xca
	lsls r1, r1, #2
	str r0, [sp]
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	movs r1, #0xcb
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	movs r1, #0x36
	ldr r0, [sp]
	lsls r1, r1, #4
	ldr r0, [r0, r1]
	bl ov107_02249B8C
	movs r0, #0
	movs r6, #0xd
	ldr r7, [sp]
	str r0, [sp, #4]
	lsls r6, r6, #6
_02246DB6:
	movs r4, #0
	adds r5, r7, #0
_02246DBA:
	ldr r0, [r5, r6]
	bl ov107_02249B8C
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #2
	blt _02246DBA
	ldr r0, [sp, #4]
	adds r7, #8
	adds r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #4
	blt _02246DB6
	ldr r0, [sp]
	movs r1, #1
	ldrb r0, [r0, #9]
	bl FUN_0223B7DC
	adds r6, r0, #0
	movs r5, #0
	cmp r6, #0
	ble _02246E0E
	movs r7, #0x33
	ldr r4, [sp]
	lsls r7, r7, #4
_02246DEC:
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	ldr r0, [r4, r7]
	bl ov107_02249B8C
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, r6
	blt _02246DEC
_02246E0E:
	bl FUN_02039794
	movs r1, #5
	ldr r0, [sp]
	lsls r1, r1, #6
	ldr r0, [r0, r1]
	movs r1, #2
	bl FUN_02002FA0
	movs r1, #5
	ldr r0, [sp]
	lsls r1, r1, #6
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_02002FA0
	movs r1, #5
	ldr r0, [sp]
	lsls r1, r1, #6
	ldr r0, [r0, r1]
	bl FUN_02002F54
	movs r1, #5
	ldr r0, [sp]
	movs r2, #0
	lsls r1, r1, #6
	str r2, [r0, r1]
	adds r1, #0x18
	adds r0, r0, r1
	bl ov107_02249954
	ldr r0, [sp]
	ldr r0, [r0, #0x20]
	bl FUN_0200B190
	ldr r0, [sp]
	ldr r0, [r0, #0x24]
	bl FUN_0200B3F0
	ldr r0, [sp]
	ldr r0, [r0, #0x28]
	bl FUN_020237BC
	ldr r0, [sp]
	ldr r0, [r0, #0x2c]
	bl FUN_020237BC
	movs r1, #0x51
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_0200C560
	ldr r4, [sp]
	movs r5, #0
_02246E7C:
	ldr r0, [r4, #0x30]
	bl FUN_020237BC
	adds r5, r5, #1
	adds r4, r4, #4
	cmp r5, #3
	blt _02246E7C
	ldr r0, [sp]
	movs r1, #1
	adds r0, #0x50
	bl ov107_02249D5C
	ldr r0, [sp]
	ldr r0, [r0, #0x4c]
	bl ov107_022472A4
	movs r1, #0xdf
	ldr r0, [sp]
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	bl FUN_02006CA8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02246D84

	thumb_func_start ov107_02246EAC
ov107_02246EAC: @ 0x02246EAC
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
	ldr r0, _02246EDC @ =0xFFFFE0FF
	ands r1, r0
	str r1, [r2]
	ldr r2, _02246EE0 @ =0x04001000
	ldr r1, [r2]
	ands r0, r1
	str r0, [r2]
	pop {r3, pc}
	.align 2, 0
_02246EDC: .4byte 0xFFFFE0FF
_02246EE0: .4byte 0x04001000
	thumb_func_end ov107_02246EAC

	thumb_func_start ov107_02246EE4
ov107_02246EE4: @ 0x02246EE4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r0, #0
	movs r0, #0x96
	movs r1, #0x64
	bl FUN_02006C24
	movs r1, #0xdf
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r5, #0
	bl ov107_02247220
	adds r0, r5, #0
	bl ov107_02247280
	movs r0, #1
	movs r1, #0x1a
	movs r2, #0xc9
	movs r3, #0x64
	bl FUN_0200B144
	str r0, [r5, #0x20]
	movs r0, #0x64
	bl FUN_0200B358
	str r0, [r5, #0x24]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x64
	bl FUN_02023790
	str r0, [r5, #0x28]
	movs r0, #0x96
	lsls r0, r0, #2
	movs r1, #0x64
	bl FUN_02023790
	str r0, [r5, #0x2c]
	movs r6, #0
	adds r4, r5, #0
	movs r7, #0x20
_02246F38:
	adds r0, r7, #0
	movs r1, #0x64
	bl FUN_02023790
	str r0, [r4, #0x30]
	adds r6, r6, #1
	adds r4, r4, #4
	cmp r6, #3
	blt _02246F38
	movs r1, #0x1a
	movs r0, #0
	lsls r1, r1, #4
	movs r2, #0x64
	bl FUN_02002E7C
	movs r1, #6
	movs r0, #0
	lsls r1, r1, #6
	movs r2, #0x64
	bl FUN_02002E98
	movs r0, #1
	movs r1, #2
	movs r2, #0
	movs r3, #0x64
	bl FUN_0200C440
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r1, r5, #0
	ldr r0, [r5, #0x4c]
	adds r1, #0x50
	movs r2, #1
	bl ov107_02249D14
	add r0, sp, #0x28
	add r1, sp, #0x2c
	add r3, sp, #0x28
	str r0, [sp]
	adds r0, r5, #0
	adds r1, #2
	add r2, sp, #0x2c
	adds r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02246FA6
	movs r0, #0x3c
	movs r7, #0x40
	str r0, [sp, #0x1c]
	b _02246FAC
_02246FA6:
	movs r0, #0x1c
	movs r7, #0x20
	str r0, [sp, #0x1c]
_02246FAC:
	ldrb r0, [r5, #9]
	movs r1, #1
	bl FUN_0223B7DC
	movs r6, #0
	str r0, [sp, #0x18]
	cmp r0, #0
	bgt _02246FBE
	b _022470C8
_02246FBE:
	adds r4, r5, #0
_02246FC0:
	movs r0, #7
	str r0, [sp]
	ldr r0, [sp, #0x1c]
	movs r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x3e
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov107_02249B1C
	movs r1, #0xc5
	lsls r1, r1, #2
	str r0, [r4, r1]
	movs r1, #0
	movs r0, #0xf
	str r0, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x4e
	str r0, [sp, #8]
	movs r0, #3
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov107_02249B1C
	movs r1, #0x33
	lsls r1, r1, #4
	str r0, [r4, r1]
	movs r0, #1
	str r0, [sp]
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r0, #0x3a
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x56
	lsls r0, r0, #2
	movs r2, #3
	adds r0, r5, r0
	adds r1, r6, #3
	adds r3, r2, #0
	bl ov107_02249B1C
	movs r1, #0xc1
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	adds r0, #0x74
	ldr r0, [r5, r0]
	adds r1, r6, #0
	bl FUN_0207A0FC
	adds r1, r0, #0
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249C08
	movs r0, #0xda
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, r6]
	cmp r0, #0
	bne _02247090
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	b _022470B4
_02247090:
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov107_02249BAC
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #1
	bl ov107_02249BAC
_022470B4:
	ldr r0, [sp, #0x1c]
	adds r6, r6, #1
	adds r0, #0x40
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	adds r4, r4, #4
	adds r7, #0x40
	cmp r6, r0
	bge _022470C8
	b _02246FC0
_022470C8:
	adds r0, r5, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	movs r3, #0
	bl ov107_02248488
	movs r0, #1
	str r0, [sp]
	ldr r0, [sp, #0x34]
	movs r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	adds r2, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0xca
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #2
	str r0, [sp]
	ldr r1, [sp, #0x34]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r1, [sp, #0x30]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	str r1, [sp, #8]
	movs r1, #0
	str r0, [sp, #0xc]
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0xcb
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02247148
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov107_02249BAC
_02247148:
	movs r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
_02247150:
	movs r7, #0
	ldr r4, [sp, #0x24]
	adds r6, r7, #0
_02247156:
	adds r0, r5, #0
	add r1, sp, #0x34
	add r2, sp, #0x30
	bl ov107_022495E4
	movs r0, #0xc
	str r0, [sp]
	ldr r1, [sp, #0x34]
	ldr r0, [sp, #0x20]
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [sp, #0x30]
	adds r2, r1, #0
	adds r0, r0, r6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	movs r0, #0x56
	lsls r0, r0, #2
	adds r0, r5, r0
	adds r3, r1, #0
	bl ov107_02249B1C
	movs r1, #0xd
	lsls r1, r1, #6
	str r0, [r4, r1]
	adds r0, r1, #0
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	adds r7, r7, #1
	adds r6, #0xc
	adds r4, r4, #4
	cmp r7, #2
	blt _02247156
	ldr r0, [sp, #0x20]
	adds r0, #0x40
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	adds r0, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x14]
	adds r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #4
	blt _02247150
	adds r0, r5, #0
	bl ov107_02249580
	movs r1, #0
	movs r0, #0xb
	str r0, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r0, #0x56
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r5, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0x36
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	movs r1, #0
	bl ov107_02249BAC
	bl FUN_02035E38
	cmp r0, #0
	beq _0224720E
	movs r0, #1
	movs r1, #0x10
	bl FUN_0200966C
	movs r0, #1
	bl FUN_02009704
	bl FUN_02039734
_0224720E:
	ldr r0, _0224721C @ =ov107_022472E8
	adds r1, r5, #0
	bl FUN_02017798
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224721C: .4byte ov107_022472E8
	thumb_func_end ov107_02246EE4

	thumb_func_start ov107_02247220
ov107_02247220: @ 0x02247220
	push {r4, lr}
	adds r4, r0, #0
	bl ov107_02247320
	ldr r0, [r4, #0x4c]
	bl ov107_02247340
	movs r0, #0x64
	bl FUN_02002F38
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	movs r1, #2
	lsls r2, r1, #8
	movs r3, #0x64
	bl FUN_02002F70
	movs r2, #5
	lsls r2, r2, #6
	ldr r0, [r4, r2]
	movs r1, #0
	adds r2, #0xc0
	movs r3, #0x64
	bl FUN_02002F70
	adds r0, r4, #0
	movs r1, #3
	bl ov107_02247484
	bl ov107_022474F8
	adds r0, r4, #0
	movs r1, #2
	bl ov107_0224752C
	bl ov107_02247574
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	adds r0, r4, #0
	movs r1, #4
	bl ov107_022475F0
	pop {r4, pc}
	thumb_func_end ov107_02247220

	thumb_func_start ov107_02247280
ov107_02247280: @ 0x02247280
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	adds r2, r0, #0
	movs r1, #0xde
	movs r0, #0x56
	lsls r1, r1, #2
	lsls r0, r0, #2
	lsls r2, r2, #0x18
	ldr r1, [r4, r1]
	adds r0, r4, r0
	lsrs r2, r2, #0x18
	bl ov107_02249604
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02247280

	thumb_func_start ov107_022472A4
ov107_022472A4: @ 0x022472A4
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
	movs r1, #2
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019044
	adds r0, r4, #0
	movs r1, #4
	bl FUN_02019044
	adds r0, r4, #0
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov107_022472A4

	thumb_func_start ov107_022472E8
ov107_022472E8: @ 0x022472E8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	lsls r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _022472FA
	bl FUN_02003694
_022472FA:
	ldr r0, [r4, #0x4c]
	bl FUN_0201C2B8
	bl FUN_0201DCAC
	bl FUN_0200A858
	ldr r3, _02247318 @ =0x027E0000
	ldr r1, _0224731C @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02247318: .4byte 0x027E0000
_0224731C: .4byte 0x00003FF8
	thumb_func_end ov107_022472E8

	thumb_func_start ov107_02247320
ov107_02247320: @ 0x02247320
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0224733C @ =0x0224A1DC
	add r3, sp, #0
	movs r2, #5
_0224732A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0224732A
	add r0, sp, #0
	bl FUN_0201FE94
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0
_0224733C: .4byte 0x0224A1DC
	thumb_func_end ov107_02247320

	thumb_func_start ov107_02247340
ov107_02247340: @ 0x02247340
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _02247468 @ =0x0224A0BC
	add r3, sp, #0x8c
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _0224746C @ =0x0224A0F0
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
	adds r0, r4, #0
	movs r3, #0
	bl FUN_020183C4
	movs r0, #1
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x64
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _02247470 @ =0x0224A128
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
	movs r3, #0x64
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02019EBC
	ldr r5, _02247474 @ =0x0224A144
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
	movs r0, #2
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x64
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _02247478 @ =0x0224A160
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
	movs r0, #3
	movs r1, #0x20
	movs r2, #0
	movs r3, #0x64
	bl FUN_02019690
	adds r0, r4, #0
	movs r1, #3
	bl FUN_02019EBC
	ldr r5, _0224747C @ =0x0224A10C
	add r3, sp, #0
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
	ldr r1, _02247480 @ =0x04000008
	movs r0, #3
	ldrh r2, [r1]
	bics r2, r0
	strh r2, [r1]
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x9c
	pop {r4, r5, pc}
	.align 2, 0
_02247468: .4byte 0x0224A0BC
_0224746C: .4byte 0x0224A0F0
_02247470: .4byte 0x0224A128
_02247474: .4byte 0x0224A144
_02247478: .4byte 0x0224A160
_0224747C: .4byte 0x0224A10C
_02247480: .4byte 0x04000008
	thumb_func_end ov107_02247340

	thumb_func_start ov107_02247484
ov107_02247484: @ 0x02247484
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x2c
	adds r3, r4, #0
	bl FUN_020070E8
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022474D6
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x28
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
_022474D6:
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x29
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02247484

	thumb_func_start ov107_022474F8
ov107_022474F8: @ 0x022474F8
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0x96
	movs r1, #0x8a
	add r2, sp, #0
	movs r3, #0x64
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0x80
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_022474F8

	thumb_func_start ov107_0224752C
ov107_0224752C: @ 0x0224752C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x2c
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x2a
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_0224752C

	thumb_func_start ov107_02247574
ov107_02247574: @ 0x02247574
	push {r3, r4, lr}
	sub sp, #4
	movs r0, #0x96
	movs r1, #0x8a
	add r2, sp, #0
	movs r3, #0x64
	bl FUN_02006F88
	adds r4, r0, #0
	ldr r0, [sp]
	movs r1, #0x80
	ldr r0, [r0, #0xc]
	blx FUN_020C2C54
	ldr r0, [sp]
	movs r1, #0
	ldr r0, [r0, #0xc]
	movs r2, #0x80
	blx FUN_020C00B4
	adds r0, r4, #0
	bl FUN_020181C4
	add sp, #4
	pop {r3, r4, pc}
	.align 2, 0
	thumb_func_end ov107_02247574

	thumb_func_start ov107_022475A8
ov107_022475A8: @ 0x022475A8
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x2c
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x2b
	adds r3, r4, #0
	bl FUN_0200710C
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022475A8

	thumb_func_start ov107_022475F0
ov107_022475F0: @ 0x022475F0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	adds r4, r1, #0
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x7d
	adds r3, r4, #0
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, [r5, #0x4c]
	movs r1, #0x7e
	adds r3, r4, #0
	bl FUN_0200710C
	movs r0, #0x20
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	movs r0, #0xdf
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0xab
	movs r2, #4
	movs r3, #0
	bl FUN_02007130
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022475F0

	thumb_func_start ov107_02247650
ov107_02247650: @ 0x02247650
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	movs r4, #0
	str r4, [sp, #0x18]
	bl ov107_02247680
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02247650

	thumb_func_start ov107_02247680
ov107_02247680: @ 0x02247680
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r6, r1, #0
	add r1, sp, #0x38
	ldrb r1, [r1]
	adds r5, r0, #0
	adds r0, r6, #0
	adds r7, r2, #0
	adds r4, r3, #0
	bl FUN_0201ADA4
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	adds r1, r7, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl FUN_0200C388
	ldr r0, [sp, #0x40]
	cmp r0, #1
	beq _022476B6
	cmp r0, #2
	beq _022476C8
	b _022476D4
_022476B6:
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	subs r4, r4, r0
	b _022476D4
_022476C8:
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	subs r4, r4, r0
_022476D4:
	ldr r0, [sp, #0x28]
	add r2, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	adds r3, r4, #0
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
	adds r0, r6, #0
	bl FUN_0201D78C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247680

	thumb_func_start ov107_02247714
ov107_02247714: @ 0x02247714
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r4, [sp, #0x28]
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #4]
	add r4, sp, #0x18
	ldrb r5, [r4, #0x18]
	str r5, [sp, #8]
	ldrb r4, [r4, #0x1c]
	str r4, [sp, #0xc]
	add r4, sp, #0x38
	ldrb r4, [r4]
	str r4, [sp, #0x10]
	add r4, sp, #0x3c
	ldrb r4, [r4]
	str r4, [sp, #0x14]
	movs r4, #0
	str r4, [sp, #0x18]
	bl ov107_02247744
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02247714

	thumb_func_start ov107_02247744
ov107_02247744: @ 0x02247744
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r0, #0
	adds r6, r1, #0
	adds r1, r2, #0
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x2c]
	adds r4, r3, #0
	bl FUN_0200B1B8
	ldr r0, [r5, #0x24]
	ldr r1, [r5, #0x28]
	ldr r2, [r5, #0x2c]
	bl FUN_0200C388
	ldr r0, [sp, #0x38]
	cmp r0, #1
	beq _0224776E
	cmp r0, #2
	beq _02247780
	b _0224778C
_0224776E:
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	adds r0, r0, #1
	lsrs r0, r0, #1
	subs r4, r4, r0
	b _0224778C
_02247780:
	movs r0, #0
	ldr r1, [r5, #0x28]
	adds r2, r0, #0
	bl FUN_02002D7C
	subs r4, r4, r0
_0224778C:
	ldr r0, [sp, #0x20]
	add r2, sp, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x24]
	adds r3, r4, #0
	str r0, [sp, #4]
	add r0, sp, #0x30
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
	add r1, sp, #0x34
	ldrb r1, [r1]
	ldr r2, [r5, #0x28]
	adds r0, r6, #0
	bl FUN_0201D78C
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x10
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02247744

	thumb_func_start ov107_022477CC
ov107_022477CC: @ 0x022477CC
	push {r3, r4, r5, lr}
	sub sp, #0x18
	movs r3, #1
	adds r4, r1, #0
	str r3, [sp]
	movs r1, #0xff
	str r1, [sp, #4]
	str r3, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0xf
	str r1, [sp, #0x10]
	adds r5, r0, #0
	adds r1, r5, #0
	str r2, [sp, #0x14]
	adds r1, #0xc0
	adds r2, r4, #0
	bl ov107_02247650
	adds r5, #0xc0
	adds r4, r0, #0
	adds r0, r5, #0
	bl FUN_0201A9A4
	adds r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_022477CC

	thumb_func_start ov107_02247804
ov107_02247804: @ 0x02247804
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r6, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200B70C
	movs r3, #8
	str r3, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x30
	bl ov107_02247A14
	movs r0, #8
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x31
	movs r3, #0x48
	bl ov107_02247A14
	adds r0, r6, #0
	bl FUN_02075BCC
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200B6D8
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x32
	movs r3, #8
	bl ov107_02247A14
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x33
	movs r3, #0x48
	bl ov107_02247A14
	adds r0, r6, #0
	movs r1, #0xa
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	movs r1, #0
	bl FUN_0200B6A0
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x34
	movs r3, #8
	bl ov107_02247A14
	movs r0, #0x28
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x35
	movs r3, #0x48
	bl ov107_02247A14
	adds r0, r6, #0
	movs r1, #0xa5
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_022480EC
	movs r0, #0x38
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x36
	movs r3, #8
	bl ov107_02247A14
	movs r0, #0x38
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x37
	movs r3, #0x58
	bl ov107_02247A14
	adds r0, r6, #0
	movs r1, #0xa6
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_022480EC
	movs r2, #0x38
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #0x68
	bl ov107_02247A14
	movs r0, #0x38
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x39
	movs r3, #0xb8
	bl ov107_02247A14
	adds r0, r6, #0
	movs r1, #0xa8
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_022480EC
	movs r0, #0x48
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x3a
	movs r3, #8
	bl ov107_02247A14
	movs r0, #0x48
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x3b
	movs r3, #0x58
	bl ov107_02247A14
	adds r0, r6, #0
	movs r1, #0xa9
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_022480EC
	movs r0, #0x48
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x3c
	movs r3, #0x68
	bl ov107_02247A14
	movs r0, #0x48
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x3d
	movs r3, #0xb8
	bl ov107_02247A14
	adds r0, r6, #0
	movs r1, #0xa7
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #3
	bl ov107_022480EC
	movs r0, #0x58
	str r0, [sp]
	movs r0, #0
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x3e
	movs r3, #8
	bl ov107_02247A14
	movs r3, #0x58
	str r3, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x3f
	bl ov107_02247A14
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02247804

	thumb_func_start ov107_02247A14
ov107_02247A14: @ 0x02247A14
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, sp, #0x18
	ldrh r4, [r4, #0x10]
	str r4, [sp]
	movs r4, #0xff
	str r4, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r4, #2
	str r4, [sp, #0xc]
	movs r4, #0
	str r4, [sp, #0x10]
	str r4, [sp, #0x14]
	ldr r4, [sp, #0x2c]
	str r4, [sp, #0x18]
	bl ov107_02247744
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov107_02247A14

	thumb_func_start ov107_02247A3C
ov107_02247A3C: @ 0x02247A3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r1, #0
	adds r6, r0, #0
	adds r0, r5, #0
	movs r1, #0
	adds r4, r2, #0
	bl FUN_0201ADA4
	movs r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x36
	str r0, [sp, #8]
	movs r0, #0x3a
	str r0, [sp, #0xc]
	movs r0, #0x42
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0x47
	bl ov107_02247AD0
	movs r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x37
	str r0, [sp, #8]
	movs r0, #0x3b
	str r0, [sp, #0xc]
	movs r0, #0x43
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #1
	movs r3, #0x48
	bl ov107_02247AD0
	movs r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x38
	str r0, [sp, #8]
	movs r0, #0x3c
	str r0, [sp, #0xc]
	movs r0, #0x44
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #2
	movs r3, #0x49
	bl ov107_02247AD0
	movs r0, #0x4b
	str r0, [sp]
	str r4, [sp, #4]
	movs r0, #0x39
	str r0, [sp, #8]
	movs r0, #0x3d
	str r0, [sp, #0xc]
	movs r0, #0x45
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r1, r5, #0
	movs r2, #3
	movs r3, #0x4a
	bl ov107_02247AD0
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov107_02247A3C

	thumb_func_start ov107_02247AD0
ov107_02247AD0: @ 0x02247AD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x38]
	movs r2, #0
	adds r7, r3, #0
	bl FUN_02074470
	adds r2, r0, #0
	ldr r0, [r4, #0x24]
	adds r1, r5, #0
	bl FUN_0200B630
	movs r0, #0x18
	muls r0, r5, r0
	adds r0, #0xc
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	movs r3, #0x20
	bl ov107_02247714
	strb r0, [r4, #0xa]
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x3c]
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #4
	movs r3, #3
	bl ov107_022480EC
	ldr r0, [sp, #0x34]
	ldr r1, [sp, #0x40]
	movs r2, #0
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #5
	movs r3, #3
	bl ov107_022480EC
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r1, #1
	str r1, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x30]
	adds r0, r4, #0
	adds r1, r6, #0
	movs r3, #0x91
	bl ov107_02247744
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247AD0

	thumb_func_start ov107_02247B78
ov107_02247B78: @ 0x02247B78
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02247B96
	movs r6, #0x24
	b _02247B98
_02247B96:
	movs r6, #4
_02247B98:
	ldrb r0, [r5, #9]
	movs r1, #1
	bl FUN_0223B7DC
	movs r7, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _02247C58
	adds r0, r6, #0
	str r0, [sp, #0x14]
	adds r0, #0x18
	str r0, [sp, #0x14]
	adds r0, r6, #0
	str r0, [sp, #0x10]
	adds r0, #0x20
	str r0, [sp, #0x10]
_02247BB8:
	movs r0, #0xda
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldrb r0, [r0, r7]
	cmp r0, #0
	bne _02247BDC
	movs r0, #0x40
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r6, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	lsrs r2, r2, #0x10
	movs r3, #1
	bl FUN_0201AE78
	b _02247C42
_02247BDC:
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r7, #0
	bl FUN_0207A0FC
	movs r1, #0xa3
	movs r2, #0
	str r0, [sp, #0x18]
	bl FUN_02074470
	str r4, [sp]
	adds r1, r0, #0
	str r6, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #3
	movs r3, #1
	bl FUN_0200C5BC
	movs r0, #1
	str r0, [sp]
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	ldr r3, [sp, #0x14]
	movs r1, #0
	adds r2, r4, #0
	bl FUN_0200C578
	ldr r0, [sp, #0x18]
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	ldr r0, [sp, #0x10]
	str r4, [sp]
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r2, #3
	movs r3, #0
	bl FUN_0200C5BC
_02247C42:
	ldr r0, [sp, #0x14]
	adds r7, r7, #1
	adds r0, #0x40
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	adds r6, #0x40
	adds r0, #0x40
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	cmp r7, r0
	blt _02247BB8
_02247C58:
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02247B78

	thumb_func_start ov107_02247C64
ov107_02247C64: @ 0x02247C64
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	str r1, [sp, #0x10]
	adds r0, r1, #0
	movs r1, #0
	bl FUN_0201ADA4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02247C84
	movs r4, #0x28
	movs r6, #0x50
	b _02247C88
_02247C84:
	movs r4, #8
	movs r6, #0x30
_02247C88:
	ldrb r0, [r5, #9]
	movs r1, #1
	bl FUN_0223B7DC
	movs r7, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _02247CF8
_02247C98:
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r1, r7, #0
	bl FUN_0207A0FC
	movs r1, #0xa1
	movs r2, #0
	str r0, [sp, #0x18]
	bl FUN_02074470
	adds r2, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	movs r1, #1
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	str r0, [sp, #0xc]
	movs r0, #0x51
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r3, #3
	bl FUN_0200C648
	ldr r0, [sp, #0x18]
	movs r1, #0x6f
	movs r2, #0
	bl FUN_02074470
	movs r1, #0
	lsls r0, r0, #0x18
	str r1, [sp]
	lsrs r0, r0, #0x18
	str r0, [sp, #4]
	ldr r1, [sp, #0x10]
	adds r0, r5, #0
	adds r2, r6, #0
	movs r3, #1
	bl ov107_022481FC
	ldr r0, [sp, #0x14]
	adds r7, r7, #1
	adds r4, #0x40
	adds r6, #0x40
	cmp r7, r0
	blt _02247C98
_02247CF8:
	ldr r0, [sp, #0x10]
	bl FUN_0201A9A4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02247C64

	thumb_func_start ov107_02247D04
ov107_02247D04: @ 0x02247D04
	push {r4, r5, r6, r7}
	movs r4, #0x12
	movs r6, #0
	lsls r4, r4, #4
	adds r7, r0, #0
	adds r3, r6, #0
	adds r5, r4, #4
_02247D12:
	str r3, [r7, r4]
	str r3, [r7, r5]
	adds r6, r6, #1
	adds r7, #8
	cmp r6, #3
	blt _02247D12
	movs r4, #0x12
	lsls r4, r4, #4
	adds r5, r4, #0
	adds r6, r0, r4
	subs r5, #0x10
	str r6, [r0, r5]
	adds r5, r4, #0
	subs r5, #0xc
	str r1, [r0, r5]
	adds r1, r4, #0
	subs r1, #8
	strb r3, [r0, r1]
	movs r3, #1
	subs r1, r4, #7
	strb r3, [r0, r1]
	subs r1, r4, #6
	strb r2, [r0, r1]
	subs r1, r4, #5
	ldrb r2, [r0, r1]
	movs r1, #0xf
	bics r2, r1
	subs r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	movs r1, #0x30
	bics r2, r1
	subs r1, r4, #5
	strb r2, [r0, r1]
	ldrb r2, [r0, r1]
	movs r1, #0xc0
	bics r2, r1
	movs r1, #0x40
	orrs r2, r1
	adds r1, #0xdb
	strb r2, [r0, r1]
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end ov107_02247D04

	thumb_func_start ov107_02247D68
ov107_02247D68: @ 0x02247D68
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	adds r5, r7, #0
	str r2, [sp]
	adds r5, #0x30
	lsls r4, r6, #2
	ldr r0, [r7, #0x20]
	ldr r2, [r5, r4]
	adds r1, r3, #0
	bl FUN_0200B1B8
	lsls r0, r6, #3
	adds r2, r7, r0
	movs r0, #0x12
	ldr r1, [r5, r4]
	lsls r0, r0, #4
	str r1, [r2, r0]
	adds r1, r0, #4
	ldr r0, [sp]
	str r0, [r2, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02247D68

	thumb_func_start ov107_02247D94
ov107_02247D94: @ 0x02247D94
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r1, r4, #0
	ldr r0, [r4, #0x4c]
	adds r1, #0xf0
	bl ov107_02249D84
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0xf0
	movs r2, #2
	bl ov107_02247D04
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x1a
	bl ov107_02247D68
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x1b
	bl ov107_02247D68
	movs r1, #0x64
	str r1, [sp]
	movs r0, #2
	movs r2, #0
	adds r1, #0xac
	str r0, [sp, #4]
	adds r0, r4, r1
	movs r1, #8
	adds r3, r2, #0
	bl FUN_02001B7C
	movs r1, #0x47
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r1, [r4, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0xf]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov107_02247D94

	thumb_func_start ov107_02247DF0
ov107_02247DF0: @ 0x02247DF0
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #0x4c]
	adds r1, r4, r1
	bl ov107_02249D84
	movs r1, #1
	lsls r1, r1, #8
	adds r0, r4, #0
	adds r1, r4, r1
	movs r2, #3
	bl ov107_02247D04
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x16
	bl ov107_02247D68
	movs r1, #1
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x17
	bl ov107_02247D68
	movs r1, #2
	adds r0, r4, #0
	adds r2, r1, #0
	movs r3, #0x18
	bl ov107_02247D68
	movs r1, #0x64
	str r1, [sp]
	movs r0, #2
	movs r2, #0
	adds r1, #0xac
	str r0, [sp, #4]
	adds r0, r4, r1
	movs r1, #8
	adds r3, r2, #0
	bl FUN_02001B7C
	movs r1, #0x47
	lsls r1, r1, #2
	str r0, [r4, r1]
	ldrb r1, [r4, #0xf]
	movs r0, #4
	orrs r0, r1
	strb r0, [r4, #0xf]
	add sp, #8
	pop {r4, pc}
	thumb_func_end ov107_02247DF0

	thumb_func_start ov107_02247E5C
ov107_02247E5C: @ 0x02247E5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r1, r5, #0
	ldr r0, [r5, #0x4c]
	adds r1, #0xa0
	bl ov107_02249D84
	adds r0, r5, #0
	adds r0, #0xa0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #4
	movs r1, #0x64
	bl FUN_02013A04
	movs r1, #0x4f
	lsls r1, r1, #2
	ldr r4, _02247F08 @ =0x0224A1BC
	str r0, [r5, r1]
	movs r6, #0
	adds r7, r1, #0
_02247E8A:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r4, #8
	cmp r6, #4
	blo _02247E8A
	ldr r4, _02247F0C @ =0x0224A17C
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r3, sp, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xa0
	str r0, [sp, #0xc]
	ldr r0, _02247F10 @ =ov107_02247F14
	str r5, [sp, #0x1c]
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	movs r0, #4
	strh r0, [r3, #0x10]
	ldrb r4, [r3, #0x18]
	movs r1, #0xf
	bics r4, r1
	movs r1, #0xf
	orrs r1, r4
	strb r1, [r3, #0x18]
	strh r0, [r3, #0x12]
	adds r0, r2, #0
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	movs r3, #0x64
	bl FUN_0200112C
	movs r1, #0x4e
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r1, [r5, #0xf]
	movs r0, #2
	orrs r0, r1
	strb r0, [r5, #0xf]
	adds r5, #0xa0
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02247F08: .4byte 0x0224A1BC
_02247F0C: .4byte 0x0224A17C
_02247F10: .4byte ov107_02247F14
	thumb_func_end ov107_02247E5C

	thumb_func_start ov107_02247F14
ov107_02247F14: @ 0x02247F14
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	movs r1, #0x13
	adds r5, r0, #0
	adds r4, r2, #0
	bl FUN_02001504
	adds r6, r0, #0
	cmp r4, #0
	bne _02247F2E
	ldr r0, _02247F64 @ =0x000005DC
	bl FUN_02005748
_02247F2E:
	adds r0, r5, #0
	add r1, sp, #0x18
	bl FUN_020014D0
	movs r3, #1
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r6, #0
	adds r6, #0xe0
	str r3, [sp, #0x14]
	add r2, sp, #0x18
	ldrh r2, [r2]
	adds r1, r6, #0
	lsls r4, r2, #2
	ldr r2, _02247F68 @ =0x0224A0CC
	ldr r2, [r2, r4]
	bl ov107_02247650
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02247F64: .4byte 0x000005DC
_02247F68: .4byte 0x0224A0CC
	thumb_func_end ov107_02247F14

	thumb_func_start ov107_02247F6C
ov107_02247F6C: @ 0x02247F6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r1, r5, #0
	ldr r0, [r5, #0x4c]
	adds r1, #0xb0
	bl ov107_02249D84
	adds r0, r5, #0
	adds r0, #0xb0
	movs r1, #0xf
	bl FUN_0201ADA4
	movs r0, #4
	movs r1, #0x64
	bl FUN_02013A04
	movs r1, #0x4f
	lsls r1, r1, #2
	ldr r4, _02248018 @ =0x0224A19C
	str r0, [r5, r1]
	movs r6, #0
	adds r7, r1, #0
_02247F9A:
	ldr r0, [r5, r7]
	ldr r1, [r5, #0x20]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	bl FUN_02013A4C
	adds r6, r6, #1
	adds r4, #8
	cmp r6, #4
	blo _02247F9A
	ldr r4, _0224801C @ =0x0224A17C
	add r3, sp, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	add r3, sp, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r0, #0xb0
	str r0, [sp, #0xc]
	ldr r0, _02248020 @ =ov107_02248028
	str r5, [sp, #0x1c]
	str r0, [sp, #4]
	ldr r0, _02248024 @ =ov107_022480A0
	movs r1, #0xf
	str r0, [sp, #8]
	movs r0, #4
	strh r0, [r3, #0x10]
	ldrb r4, [r3, #0x18]
	bics r4, r1
	movs r1, #0xf
	orrs r1, r4
	strb r1, [r3, #0x18]
	strh r0, [r3, #0x12]
	movs r1, #0
	adds r0, r2, #0
	adds r2, r1, #0
	movs r3, #0x64
	bl FUN_0200112C
	movs r1, #0x4e
	lsls r1, r1, #2
	str r0, [r5, r1]
	ldrb r1, [r5, #0xf]
	movs r0, #2
	orrs r0, r1
	strb r0, [r5, #0xf]
	adds r5, #0xb0
	adds r0, r5, #0
	bl FUN_0201A9A4
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248018: .4byte 0x0224A19C
_0224801C: .4byte 0x0224A17C
_02248020: .4byte ov107_02248028
_02248024: .4byte ov107_022480A0
	thumb_func_end ov107_02247F6C

	thumb_func_start ov107_02248028
ov107_02248028: @ 0x02248028
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	movs r1, #0x13
	adds r6, r0, #0
	adds r5, r2, #0
	bl FUN_02001504
	adds r4, r0, #0
	cmp r5, #0
	bne _02248042
	ldr r0, _02248098 @ =0x000005DC
	bl FUN_02005748
_02248042:
	adds r0, r6, #0
	add r1, sp, #0x18
	bl FUN_020014D0
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r4, #9]
	ldr r0, [r4, r0]
	movs r2, #2
	bl ov107_02249CAC
	cmp r0, #1
	beq _02248060
	movs r6, #1
	b _02248062
_02248060:
	movs r6, #0
_02248062:
	movs r5, #1
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	str r5, [sp, #0x14]
	add r2, sp, #0x18
	ldrh r2, [r2]
	adds r0, r4, #0
	adds r4, #0xc0
	lsls r3, r2, #2
	ldr r2, _0224809C @ =0x0224A0AC
	adds r1, r4, #0
	lsls r4, r6, #0x18
	adds r2, r2, r3
	lsrs r4, r4, #0x17
	ldrh r2, [r4, r2]
	adds r3, r5, #0
	bl ov107_02247650
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02248098: .4byte 0x000005DC
_0224809C: .4byte 0x0224A0AC
	thumb_func_end ov107_02248028

	thumb_func_start ov107_022480A0
ov107_022480A0: @ 0x022480A0
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	movs r1, #0x13
	adds r5, r0, #0
	bl FUN_02001504
	adds r1, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	ldrb r1, [r1, #9]
	movs r2, #2
	bl ov107_02249CAC
	cmp r4, #4
	beq _022480C6
	cmp r4, #5
	beq _022480D2
	b _022480DE
_022480C6:
	cmp r0, #1
	bne _022480CE
	movs r1, #2
	b _022480E0
_022480CE:
	movs r1, #1
	b _022480E0
_022480D2:
	cmp r0, #2
	bne _022480DA
	movs r1, #2
	b _022480E0
_022480DA:
	movs r1, #1
	b _022480E0
_022480DE:
	movs r1, #1
_022480E0:
	adds r0, r5, #0
	movs r2, #0xf
	movs r3, #2
	bl FUN_020013D8
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022480A0

	thumb_func_start ov107_022480EC
ov107_022480EC: @ 0x022480EC
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	movs r4, #1
	str r4, [sp, #4]
	ldr r0, [r0, #0x24]
	bl FUN_0200B60C
	add sp, #8
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_022480EC

	thumb_func_start ov107_02248104
ov107_02248104: @ 0x02248104
	ldr r3, _0224810C @ =FUN_0200B538
	ldr r0, [r0, #0x24]
	bx r3
	nop
_0224810C: .4byte FUN_0200B538
	thumb_func_end ov107_02248104

	thumb_func_start ov107_02248110
ov107_02248110: @ 0x02248110
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_02025E38
	adds r2, r0, #0
	ldr r0, [r5, #0x24]
	adds r1, r4, #0
	bl FUN_0200B498
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248110

	thumb_func_start ov107_0224812C
ov107_0224812C: @ 0x0224812C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r1, #0
	movs r1, #0x53
	lsls r1, r1, #2
	ldr r0, [r0, r1]
	str r2, [sp, #0x10]
	adds r5, r3, #0
	bl FUN_02025E38
	adds r6, r0, #0
	movs r0, #8
	movs r1, #0x64
	bl FUN_02023790
	adds r4, r0, #0
	adds r0, r6, #0
	bl FUN_02025EF0
	adds r1, r0, #0
	adds r0, r4, #0
	bl FUN_02023D28
	adds r0, r6, #0
	bl FUN_02025F30
	cmp r0, #0
	bne _02248168
	ldr r1, _02248190 @ =0x00070800
	b _0224816C
_02248168:
	movs r1, #0xc1
	lsls r1, r1, #0xa
_0224816C:
	str r5, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	add r1, sp, #0x18
	ldrb r1, [r1, #0x10]
	ldr r3, [sp, #0x10]
	adds r0, r7, #0
	adds r2, r4, #0
	bl FUN_0201D78C
	adds r0, r4, #0
	bl FUN_020237BC
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02248190: .4byte 0x00070800
	thumb_func_end ov107_0224812C

	thumb_func_start ov107_02248194
ov107_02248194: @ 0x02248194
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r7, r1, #0
	str r2, [sp, #0x18]
	adds r6, r3, #0
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	str r0, [sp, #0x1c]
	bl FUN_02025F30
	cmp r0, #0
	bne _022481BA
	ldr r4, _022481F8 @ =0x00070800
	b _022481BE
_022481BA:
	movs r4, #0xc1
	lsls r4, r4, #0xa
_022481BE:
	ldr r0, [r5, #0x24]
	ldr r2, [sp, #0x1c]
	movs r1, #0
	bl FUN_0200B498
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	lsrs r0, r4, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	lsrs r0, r4, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	lsls r0, r4, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	movs r0, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x18]
	adds r0, r5, #0
	adds r1, r7, #0
	movs r2, #1
	bl ov107_02247714
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022481F8: .4byte 0x00070800
	thumb_func_end ov107_02248194

	thumb_func_start ov107_022481FC
ov107_022481FC: @ 0x022481FC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	adds r7, r2, #0
	adds r2, r3, #0
	add r3, sp, #0x20
	ldrb r3, [r3, #0x14]
	cmp r3, #0
	bne _02248216
	movs r3, #0x40
	movs r4, #7
	movs r5, #8
	movs r6, #0
	b _02248222
_02248216:
	cmp r3, #1
	bne _0224823C
	movs r3, #0x41
	movs r4, #3
	movs r5, #4
	movs r6, #0
_02248222:
	str r2, [sp]
	movs r2, #0xff
	str r2, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	str r6, [sp, #0x10]
	add r2, sp, #0x20
	ldrb r2, [r2, #0x10]
	str r2, [sp, #0x14]
	adds r2, r3, #0
	adds r3, r7, #0
	bl ov107_02247714
_0224823C:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022481FC

	thumb_func_start ov107_02248240
ov107_02248240: @ 0x02248240
	push {r3, r4, lr}
	sub sp, #0x1c
	movs r2, #5
	str r2, [sp]
	movs r1, #0xff
	str r1, [sp, #4]
	movs r3, #1
	str r3, [sp, #8]
	movs r1, #2
	str r1, [sp, #0xc]
	movs r1, #0
	str r1, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r4, r0, #0
	adds r1, r4, #0
	str r3, [sp, #0x18]
	adds r1, #0x60
	movs r3, #0x10
	bl ov107_02247680
	strb r0, [r4, #0xa]
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xd0
	bl ov107_02249DBC
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	adds r0, r4, #0
	adds r1, #0xd0
	movs r2, #4
	str r3, [sp, #0x14]
	bl ov107_02247650
	strb r0, [r4, #0xa]
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov107_02248240

	thumb_func_start ov107_022482A4
ov107_022482A4: @ 0x022482A4
	ldr r3, _022482AC @ =ov107_02248860
	adds r0, #0xd0
	bx r3
	nop
_022482AC: .4byte ov107_02248860
	thumb_func_end ov107_022482A4

	thumb_func_start ov107_022482B0
ov107_022482B0: @ 0x022482B0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xe0
	bl ov107_02249DBC
	movs r0, #0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl ov107_02247E5C
	pop {r4, pc}
	thumb_func_end ov107_022482B0

	thumb_func_start ov107_022482D4
ov107_022482D4: @ 0x022482D4
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x4e
	lsls r0, r0, #2
	adds r1, r4, #0
	adds r2, r4, #0
	ldr r0, [r4, r0]
	adds r1, #0x1c
	adds r2, #0x1e
	bl FUN_020014DC
	adds r0, r4, #0
	adds r0, #0xe0
	bl ov107_02248860
	adds r0, r4, #0
	bl ov107_02249258
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_022482D4

	thumb_func_start ov107_022482FC
ov107_022482FC: @ 0x022482FC
	push {r4, lr}
	sub sp, #0x18
	adds r4, r0, #0
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	movs r3, #1
	adds r1, r4, #0
	str r3, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	movs r0, #0xf
	str r0, [sp, #0x10]
	str r3, [sp, #0x14]
	adds r0, r4, #0
	adds r1, #0xc0
	movs r2, #0x25
	bl ov107_02247650
	strb r0, [r4, #0xa]
	movs r0, #0
	strh r0, [r4, #0x18]
	adds r0, r4, #0
	bl ov107_02247F6C
	add sp, #0x18
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_022482FC

	thumb_func_start ov107_02248348
ov107_02248348: @ 0x02248348
	ldr r3, _0224834C @ =ov107_02249258
	bx r3
	.align 2, 0
_0224834C: .4byte ov107_02249258
	thumb_func_end ov107_02248348

	thumb_func_start ov107_02248350
ov107_02248350: @ 0x02248350
	movs r3, #0
	strb r3, [r0, #8]
	str r2, [r1]
	bx lr
	thumb_func_end ov107_02248350

	thumb_func_start ov107_02248358
ov107_02248358: @ 0x02248358
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x14]
	ldrb r1, [r5, #0xd]
	movs r4, #0
	bl ov107_02249C98
	ldr r1, _022483EC @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x20
	tst r1, r2
	beq _0224838A
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _022483EA
	cmp r0, #0
	bne _02248384
	ldrb r1, [r5, #0x14]
	subs r1, r1, #1
	adds r1, r2, r1
	b _02248386
_02248384:
	subs r1, r2, #1
_02248386:
	strb r1, [r5, #0xd]
	movs r4, #1
_0224838A:
	ldr r1, _022483EC @ =0x021BF67C
	ldr r2, [r1, #0x48]
	movs r1, #0x10
	tst r1, r2
	beq _022483AE
	ldrb r2, [r5, #0xd]
	ldrb r1, [r5, #0x15]
	cmp r2, r1
	beq _022483EA
	ldrb r1, [r5, #0x14]
	subs r1, r1, #1
	cmp r0, r1
	bne _022483A8
	subs r0, r2, r1
	b _022483AA
_022483A8:
	adds r0, r2, #1
_022483AA:
	strb r0, [r5, #0xd]
	movs r4, #1
_022483AE:
	ldr r0, _022483EC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x40
	tst r0, r1
	beq _022483C6
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x14]
	cmp r1, r0
	blo _022483EA
	ldrb r0, [r5, #0xc]
	movs r4, #1
	strb r0, [r5, #0xd]
_022483C6:
	ldr r0, _022483EC @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #0x80
	tst r0, r1
	beq _022483E0
	ldrb r1, [r5, #0xd]
	ldrb r0, [r5, #0x15]
	cmp r1, r0
	bhs _022483EA
	strb r1, [r5, #0xc]
	ldrb r0, [r5, #0x15]
	movs r4, #1
	strb r0, [r5, #0xd]
_022483E0:
	cmp r4, #1
	bne _022483EA
	adds r0, r5, #0
	bl ov107_022483F0
_022483EA:
	pop {r3, r4, r5, pc}
	.align 2, 0
_022483EC: .4byte 0x021BF67C
	thumb_func_end ov107_02248358

	thumb_func_start ov107_022483F0
ov107_022483F0: @ 0x022483F0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0224841C @ =0x000005DC
	bl FUN_02005748
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _0224840E
	ldrb r2, [r4, #0xd]
	adds r0, r4, #0
	movs r1, #0x16
	bl ov107_02248874
_0224840E:
	ldrb r1, [r4, #0xd]
	adds r0, r4, #0
	movs r2, #0
	bl ov107_02248420
	pop {r4, pc}
	nop
_0224841C: .4byte 0x000005DC
	thumb_func_end ov107_022483F0

	thumb_func_start ov107_02248420
ov107_02248420: @ 0x02248420
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r2, #0
	bne _02248438
	movs r0, #0xca
	lsls r0, r0, #2
	ldr r4, [r5, r0]
	movs r2, #1
	movs r1, #0
	b _02248442
_02248438:
	movs r0, #0xcb
	lsls r0, r0, #2
	ldr r4, [r5, r0]
	movs r2, #2
	movs r1, #0x11
_02248442:
	ldrb r0, [r5, #0x15]
	cmp r6, r0
	blo _0224845C
	adds r0, r4, #0
	bl ov107_02249BEC
	adds r0, r4, #0
	movs r1, #0xe0
	movs r2, #0xa0
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
_0224845C:
	adds r0, r4, #0
	adds r1, r2, #0
	bl ov107_02249BEC
	adds r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	adds r3, r6, #0
	bl ov107_02248488
	ldr r1, [sp, #4]
	ldr r2, [sp]
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	adds r0, r4, #0
	lsrs r1, r1, #0x10
	lsrs r2, r2, #0x10
	bl ov107_02249BB8
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_02248420

	thumb_func_start ov107_02248488
ov107_02248488: @ 0x02248488
	push {r4, r5, r6, lr}
	ldrb r0, [r0, #9]
	adds r5, r1, #0
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_0223BA14
	cmp r0, #1
	bne _022484BE
	cmp r4, #0
	bne _022484A4
	movs r0, #0x28
	str r0, [r5]
	b _022484D6
_022484A4:
	cmp r4, #1
	bne _022484AE
	movs r0, #0x68
	str r0, [r5]
	b _022484D6
_022484AE:
	cmp r4, #2
	bne _022484B8
	movs r0, #0xa8
	str r0, [r5]
	b _022484D6
_022484B8:
	movs r0, #0xe8
	str r0, [r5]
	b _022484D6
_022484BE:
	cmp r4, #0
	bne _022484C8
	movs r0, #0x48
	str r0, [r5]
	b _022484D6
_022484C8:
	cmp r4, #1
	bne _022484D2
	movs r0, #0x88
	str r0, [r5]
	b _022484D6
_022484D2:
	movs r0, #0xc8
	str r0, [r5]
_022484D6:
	movs r0, #0x58
	str r0, [r6]
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_02248488

	thumb_func_start ov107_022484DC
ov107_022484DC: @ 0x022484DC
	push {r3, r4, r5, r6, r7, lr}
	ldrb r0, [r0, #9]
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r4, [sp, #0x18]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022484FE
	movs r0, #0x20
	strh r0, [r5]
	movs r0, #0
	strh r0, [r6]
	strh r0, [r7]
	strh r0, [r4]
	pop {r3, r4, r5, r6, r7, pc}
_022484FE:
	movs r1, #0
	strh r1, [r5]
	strh r1, [r6]
	movs r0, #0x78
	strh r0, [r7]
	strh r1, [r4]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022484DC

	thumb_func_start ov107_0224850C
ov107_0224850C: @ 0x0224850C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	adds r7, r1, #0
	adds r5, r2, #0
	bl ov107_02249C98
	adds r6, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	adds r1, r6, #0
	bl FUN_0207A0FC
	cmp r5, #5
	bls _02248530
	b _02248666
_02248530:
	adds r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0224853C: @ jump table
	.2byte _02248548 - _0224853C - 2 @ case 0
	.2byte _02248556 - _0224853C - 2 @ case 1
	.2byte _02248666 - _0224853C - 2 @ case 2
	.2byte _022485DC - _0224853C - 2 @ case 3
	.2byte _0224861A - _0224853C - 2 @ case 4
	.2byte _02248658 - _0224853C - 2 @ case 5
_02248548:
	ldrb r1, [r4, #0xf]
	movs r0, #1
	add sp, #0x14
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02248556:
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	bne _022485AE
	movs r0, #1
	bics r1, r0
	movs r0, #1
	orrs r0, r1
	strb r0, [r4, #0xf]
	ldrb r0, [r4, #0x12]
	cmp r0, #1
	bne _02248572
	movs r5, #9
	b _02248574
_02248572:
	movs r5, #0xa
_02248574:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02248582
	movs r1, #0x50
	b _02248584
_02248582:
	movs r1, #0x30
_02248584:
	lsls r0, r6, #6
	adds r0, r1, r0
	lsls r0, r0, #0x10
	str r5, [sp]
	asrs r0, r0, #0x10
	str r0, [sp, #4]
	movs r1, #0
	movs r0, #0x32
	str r0, [sp, #8]
	movs r0, #0x56
	lsls r0, r0, #2
	str r1, [sp, #0xc]
	adds r0, r4, r0
	adds r2, r1, #0
	adds r3, r1, #0
	str r1, [sp, #0x10]
	bl ov107_02249B1C
	movs r1, #0xc9
	lsls r1, r1, #2
	str r0, [r4, r1]
_022485AE:
	movs r0, #0xc9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249C40
	cmp r0, #0
	bne _02248666
	movs r0, #0xc9
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl ov107_02249B8C
	movs r0, #0xc9
	movs r1, #0
	lsls r0, r0, #2
	str r1, [r4, r0]
	ldrb r1, [r4, #0xf]
	movs r0, #1
	add sp, #0x14
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_022485DC:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224860C
	ldr r0, _0224866C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02248666
	ldr r0, _02248670 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov107_02248A2C
	ldrb r1, [r4, #0xf]
	movs r0, #1
	add sp, #0x14
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224860C:
	ldrb r1, [r4, #0xf]
	movs r0, #1
	add sp, #0x14
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224861A:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _0224864A
	ldr r0, _0224866C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #3
	tst r0, r1
	beq _02248666
	ldr r0, _02248670 @ =0x000005DC
	bl FUN_02005748
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov107_02248AF0
	ldrb r1, [r4, #0xf]
	movs r0, #1
	add sp, #0x14
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_0224864A:
	ldrb r1, [r4, #0xf]
	movs r0, #1
	add sp, #0x14
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02248658:
	ldrb r1, [r4, #0xf]
	movs r0, #1
	add sp, #0x14
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r4, r5, r6, r7, pc}
_02248666:
	movs r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0224866C: .4byte 0x021BF67C
_02248670: .4byte 0x000005DC
	thumb_func_end ov107_0224850C

	thumb_func_start ov107_02248674
ov107_02248674: @ 0x02248674
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	adds r7, r1, #0
	adds r6, r2, #0
	ldrb r5, [r4, #0x15]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	cmp r6, #5
	bhi _0224876C
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022486A0: @ jump table
	.2byte _022486AC - _022486A0 - 2 @ case 0
	.2byte _022486AC - _022486A0 - 2 @ case 1
	.2byte _0224876C - _022486A0 - 2 @ case 2
	.2byte _022486B8 - _022486A0 - 2 @ case 3
	.2byte _02248712 - _022486A0 - 2 @ case 4
	.2byte _022486AC - _022486A0 - 2 @ case 5
_022486AC:
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486B8:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _022486EC
	bl FUN_0203608C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _022486DC
	cmp r0, r5
	blo _022486EC
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486DC:
	cmp r0, r5
	bhs _022486EC
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022486EC:
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	bne _0224876C
	movs r0, #0xf8
	bics r1, r0
	movs r0, #0x18
	orrs r0, r1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov107_02248A2C
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248712:
	ldrb r0, [r4, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02248746
	bl FUN_0203608C
	cmp r0, #0
	ldrb r0, [r4, #0x11]
	bne _02248736
	cmp r0, r5
	blo _02248746
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248736:
	cmp r0, r5
	bhs _02248746
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02248746:
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #0x1f
	lsrs r0, r0, #0x1f
	bne _0224876C
	movs r0, #0xf8
	bics r1, r0
	movs r0, #0x18
	orrs r0, r1
	strb r0, [r4, #0xf]
	adds r0, r4, #0
	adds r1, r7, #0
	bl ov107_02248AF0
	ldrb r1, [r4, #0xf]
	movs r0, #1
	bics r1, r0
	strb r1, [r4, #0xf]
	movs r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0224876C:
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02248674

	thumb_func_start ov107_02248770
ov107_02248770: @ 0x02248770
	cmp r0, #1
	bne _02248778
	movs r0, #1
	bx lr
_02248778:
	movs r0, #0xf
	bx lr
	thumb_func_end ov107_02248770

	thumb_func_start ov107_0224877C
ov107_0224877C: @ 0x0224877C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xd]
	movs r5, #0x37
	lsls r5, r5, #4
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	movs r0, #0
_0224878C:
	adds r2, r2, r1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bpl _0224879E
	ldrb r2, [r4, #0x14]
	subs r2, r2, #1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	b _022487A6
_0224879E:
	ldrb r6, [r4, #0x14]
	cmp r2, r6
	blt _022487A6
	adds r2, r0, #0
_022487A6:
	cmp r2, r3
	beq _022487DA
	ldr r6, [r4, r5]
	ldrb r6, [r6, r2]
	cmp r6, #1
	bne _0224878C
	strb r2, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_022483F0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0x90
	adds r1, r4, #0
	bl ov107_02247804
_022487DA:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_0224877C

	thumb_func_start ov107_022487DC
ov107_022487DC: @ 0x022487DC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r3, [r4, #0xd]
	movs r5, #0xdd
	lsls r5, r5, #2
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	movs r0, #0
_022487EC:
	adds r2, r2, r1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	bpl _022487FE
	ldrb r2, [r4, #0x14]
	subs r2, r2, #1
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	b _02248806
_022487FE:
	ldrb r6, [r4, #0x14]
	cmp r2, r6
	blt _02248806
	adds r2, r0, #0
_02248806:
	cmp r2, r3
	beq _0224883A
	ldr r6, [r4, r5]
	ldrb r6, [r6, r2]
	cmp r6, #1
	bne _022487EC
	strb r2, [r4, #0xd]
	adds r0, r4, #0
	bl ov107_022483F0
	ldrb r0, [r4, #0x14]
	ldrb r1, [r4, #0xd]
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0x90
	adds r1, r4, #0
	bl ov107_02247A3C
_0224883A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_022487DC

	thumb_func_start ov107_0224883C
ov107_0224883C: @ 0x0224883C
	push {r4, lr}
	adds r4, r0, #0
	bl ov107_02248BB4
	adds r0, r4, #0
	bl ov107_02249258
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	movs r0, #0x36
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	movs r1, #0
	bl ov107_02249BAC
	pop {r4, pc}
	thumb_func_end ov107_0224883C

	thumb_func_start ov107_02248860
ov107_02248860: @ 0x02248860
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	bl FUN_0200E084
	adds r0, r4, #0
	bl FUN_0201AD10
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02248860

	thumb_func_start ov107_02248874
ov107_02248874: @ 0x02248874
	push {r3, r4, r5, lr}
	adds r3, r1, #0
	subs r3, #0x14
	adds r5, r0, #0
	cmp r3, #3
	bhi _022488B2
	adds r3, r3, r3
	add r3, pc
	ldrh r3, [r3, #6]
	lsls r3, r3, #0x10
	asrs r3, r3, #0x10
	add pc, r3
_0224888C: @ jump table
	.2byte _02248894 - _0224888C - 2 @ case 0
	.2byte _0224889C - _0224888C - 2 @ case 1
	.2byte _022488A4 - _0224888C - 2 @ case 2
	.2byte _022488AC - _0224888C - 2 @ case 3
_02248894:
	movs r4, #0x35
	bl ov107_022488CC
	b _022488B2
_0224889C:
	movs r4, #0x36
	bl ov107_02248940
	b _022488B2
_022488A4:
	movs r4, #0x37
	bl ov107_022489D0
	b _022488B2
_022488AC:
	movs r4, #0x38
	bl ov107_02248A04
_022488B2:
	movs r1, #0xe
	lsls r1, r1, #6
	adds r0, r4, #0
	adds r1, r5, r1
	movs r2, #0x28
	bl FUN_020359DC
	cmp r0, #1
	bne _022488C8
	movs r0, #1
	pop {r3, r4, r5, pc}
_022488C8:
	movs r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248874

	thumb_func_start ov107_022488CC
ov107_022488CC: @ 0x022488CC
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r4, r1, #0
	bl FUN_02025E38
	movs r1, #0xe
	lsls r1, r1, #6
	strh r4, [r6, r1]
	bl FUN_02025F30
	ldr r1, _0224890C @ =0x00000382
	movs r4, #0
	strh r0, [r6, r1]
	adds r5, r6, #4
	subs r7, r1, #2
_022488F0:
	movs r0, #0x53
	lsls r0, r0, #2
	lsls r2, r4, #0x18
	ldrb r1, [r6, #9]
	ldr r0, [r6, r0]
	lsrs r2, r2, #0x18
	bl ov107_02249CAC
	strh r0, [r5, r7]
	adds r4, r4, #1
	adds r5, r5, #2
	cmp r4, #3
	blt _022488F0
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224890C: .4byte 0x00000382
	thumb_func_end ov107_022488CC

	thumb_func_start ov107_02248910
ov107_02248910: @ 0x02248910
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r5, r0, #0
	ldrb r0, [r4, #0x17]
	adds r6, r2, #0
	adds r0, r0, #1
	strb r0, [r4, #0x17]
	bl FUN_0203608C
	cmp r5, r0
	beq _0224893A
	ldr r0, _0224893C @ =0x000003D3
	movs r3, #0
	adds r5, r6, #4
_0224892C:
	ldrh r2, [r5]
	adds r1, r4, r3
	adds r3, r3, #1
	adds r5, r5, #2
	strb r2, [r1, r0]
	cmp r3, #3
	blt _0224892C
_0224893A:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0224893C: .4byte 0x000003D3
	thumb_func_end ov107_02248910

	thumb_func_start ov107_02248940
ov107_02248940: @ 0x02248940
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0xe
	lsls r0, r0, #6
	strh r1, [r5, r0]
	adds r4, r2, #0
	adds r0, r0, #2
	strh r4, [r5, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _02248960
	ldrb r0, [r5, #0x11]
	cmp r0, #0xff
	bne _02248960
	strb r4, [r5, #0x11]
_02248960:
	ldrb r1, [r5, #0x11]
	movs r0, #0xe1
	lsls r0, r0, #2
	strh r1, [r5, r0]
	ldrb r2, [r5, #0x12]
	adds r1, r0, #4
	adds r0, r0, #6
	strh r2, [r5, r1]
	ldrb r1, [r5, #0x13]
	strh r1, [r5, r0]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02248940

	thumb_func_start ov107_02248978
ov107_02248978: @ 0x02248978
	push {r4, r5, r6, lr}
	adds r4, r3, #0
	adds r6, r0, #0
	ldrb r0, [r4, #0x17]
	adds r5, r2, #0
	adds r0, r0, #1
	strb r0, [r4, #0x17]
	bl FUN_0203608C
	cmp r6, r0
	beq _022489C8
	ldrh r1, [r5, #2]
	ldr r0, _022489CC @ =0x000003D1
	strb r1, [r4, r0]
	bl FUN_0203608C
	cmp r0, #0
	bne _022489BC
	ldrb r0, [r4, #0x11]
	cmp r0, #0xff
	ldr r0, _022489CC @ =0x000003D1
	beq _022489AA
	movs r1, #0
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_022489AA:
	ldrb r1, [r4, r0]
	ldrb r0, [r4, #0x15]
	adds r0, r1, r0
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
	pop {r4, r5, r6, pc}
_022489BC:
	ldrh r0, [r5, #4]
	strb r0, [r4, #0x11]
	ldrh r0, [r5, #8]
	strb r0, [r4, #0x12]
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0x13]
_022489C8:
	pop {r4, r5, r6, pc}
	nop
_022489CC: .4byte 0x000003D1
	thumb_func_end ov107_02248978

	thumb_func_start ov107_022489D0
ov107_022489D0: @ 0x022489D0
	movs r2, #0xe
	lsls r2, r2, #6
	strh r1, [r0, r2]
	ldrb r3, [r0, #0xd]
	adds r1, r2, #2
	strh r3, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov107_022489D0

	thumb_func_start ov107_022489E0
ov107_022489E0: @ 0x022489E0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r2, #0
	adds r4, r3, #0
	bl FUN_0203608C
	cmp r5, r0
	beq _02248A02
	ldrh r0, [r6, #2]
	movs r1, #0x3d
	lsls r1, r1, #4
	strb r0, [r4, r1]
	ldrb r1, [r4, r1]
	adds r0, r4, #0
	movs r2, #1
	bl ov107_02248420
_02248A02:
	pop {r4, r5, r6, pc}
	thumb_func_end ov107_022489E0

	thumb_func_start ov107_02248A04
ov107_02248A04: @ 0x02248A04
	movs r1, #0xe
	movs r2, #1
	lsls r1, r1, #6
	strh r2, [r0, r1]
	bx lr
	.align 2, 0
	thumb_func_end ov107_02248A04

	thumb_func_start ov107_02248A10
ov107_02248A10: @ 0x02248A10
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	adds r6, r3, #0
	bl FUN_0203608C
	cmp r5, r0
	beq _02248A26
	ldrh r1, [r4]
	ldr r0, _02248A28 @ =0x000003D2
	strb r1, [r6, r0]
_02248A26:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02248A28: .4byte 0x000003D2
	thumb_func_end ov107_02248A10

	thumb_func_start ov107_02248A2C
ov107_02248A2C: @ 0x02248A2C
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	movs r1, #2
	bl ov107_0224752C
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	adds r0, #0xc0
	bl FUN_0201AD10
	ldrb r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0x90
	adds r1, r4, #0
	bl ov107_02247804
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02248A2C

	thumb_func_start ov107_02248A74
ov107_02248A74: @ 0x02248A74
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	bl ov107_02249C98
	movs r1, #0x37
	lsls r1, r1, #4
	ldr r1, [r4, r1]
	movs r2, #1
	strb r2, [r1, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02248A74

	thumb_func_start ov107_02248A8C
ov107_02248A8C: @ 0x02248A8C
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov107_02248104
	adds r0, r5, #0
	movs r1, #0x2f
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_02248A74
	adds r0, r5, #0
	bl ov107_02249580
	ldr r0, _02248AEC @ =0x00000624
	bl FUN_02005748
	pop {r3, r4, r5, pc}
	nop
_02248AEC: .4byte 0x00000624
	thumb_func_end ov107_02248A8C

	thumb_func_start ov107_02248AF0
ov107_02248AF0: @ 0x02248AF0
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r4, r0, #0
	movs r1, #2
	bl ov107_022475A8
	adds r0, r4, #0
	adds r0, #0xc0
	bl ov107_02248860
	adds r0, r4, #0
	adds r0, #0xc0
	bl FUN_0201AD10
	ldrb r0, [r4, #0x14]
	adds r1, r5, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0207A0FC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r4, #0x90
	adds r1, r4, #0
	bl ov107_02247A3C
	movs r0, #4
	movs r1, #1
	bl FUN_0201FF0C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02248AF0

	thumb_func_start ov107_02248B38
ov107_02248B38: @ 0x02248B38
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0x14]
	bl ov107_02249C98
	movs r1, #0xdd
	lsls r1, r1, #2
	ldr r1, [r4, r1]
	movs r2, #1
	strb r2, [r1, r0]
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02248B38

	thumb_func_start ov107_02248B50
ov107_02248B50: @ 0x02248B50
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r4, r1, #0
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov107_02248104
	adds r0, r5, #0
	movs r1, #0x46
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_02248B38
	adds r0, r5, #0
	bl ov107_02249580
	ldr r0, _02248BB0 @ =0x00000624
	bl FUN_02005748
	pop {r3, r4, r5, pc}
	nop
_02248BB0: .4byte 0x00000624
	thumb_func_end ov107_02248B50

	thumb_func_start ov107_02248BB4
ov107_02248BB4: @ 0x02248BB4
	push {r4, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #0x1d
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _02248BEA
	movs r0, #4
	bics r1, r0
	movs r0, #0x47
	strb r1, [r4, #0xf]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_02001BC4
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200DC9C
	movs r0, #0x45
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0201AD10
_02248BEA:
	pop {r4, pc}
	thumb_func_end ov107_02248BB4

	thumb_func_start ov107_02248BEC
ov107_02248BEC: @ 0x02248BEC
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02027B50
	adds r4, #0xc0
	adds r1, r0, #0
	adds r0, r4, #0
	bl ov107_02249DBC
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02248BEC

	thumb_func_start ov107_02248C08
ov107_02248C08: @ 0x02248C08
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	adds r4, r1, #0
	add r1, sp, #0x28
	str r1, [sp]
	add r1, sp, #0x2c
	add r3, sp, #0x28
	adds r5, r0, #0
	adds r1, #2
	add r2, sp, #0x2c
	adds r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02248CA2
	add r1, sp, #0x28
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	str r0, [sp, #0x1c]
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x1c]
	bl FUN_02030698
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #4
	bl ov107_022480EC
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
	b _02248E46
_02248CA2:
	bl FUN_0203608C
	cmp r0, #0
	add r1, sp, #0x28
	bne _02248D7A
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	str r0, [sp, #0x20]
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x20]
	bl FUN_02030698
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #4
	bl ov107_022480EC
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	movs r0, #1
	str r0, [sp]
	ldr r2, _02248E50 @ =0x000003D6
	adds r0, r5, #0
	ldrh r2, [r5, r2]
	movs r1, #0
	movs r3, #4
	bl ov107_022480EC
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
	b _02248E46
_02248D7A:
	ldrh r0, [r1, #6]
	ldrh r6, [r1, #4]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	movs r0, #1
	str r0, [sp]
	ldr r2, _02248E50 @ =0x000003D6
	adds r0, r5, #0
	ldrh r2, [r5, r2]
	movs r1, #0
	movs r3, #4
	bl ov107_022480EC
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	add r1, sp, #0x28
	strb r0, [r5, #0xa]
	ldrh r0, [r1, #2]
	ldrh r6, [r1]
	movs r1, #0
	adds r0, #0x68
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r2, r7, #0
	movs r0, #0x30
	subs r2, #0x30
	str r0, [sp]
	movs r0, #0x10
	lsls r2, r2, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	lsrs r2, r2, #0x10
	adds r3, r6, #0
	bl FUN_0201AE78
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	str r0, [sp, #0x24]
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	ldr r1, [sp, #0x24]
	bl FUN_02030698
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r3, #4
	bl ov107_022480EC
	str r6, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	movs r2, #2
	str r2, [sp, #0xc]
	movs r0, #0
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	str r2, [sp, #0x18]
	bl ov107_02247744
	strb r0, [r5, #0xa]
_02248E46:
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02248E50: .4byte 0x000003D6
	thumb_func_end ov107_02248C08

	thumb_func_start ov107_02248E54
ov107_02248E54: @ 0x02248E54
	push {r3, r4, r5, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl ov107_02248770
	adds r2, r0, #0
	movs r1, #0
	adds r0, r5, #0
	movs r3, #4
	str r1, [sp]
	bl ov107_022480EC
	adds r0, r5, #0
	movs r1, #0x19
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	adds r0, r5, #0
	bl ov107_02247D94
	strb r4, [r5, #0xe]
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02248E54

	thumb_func_start ov107_02248E84
ov107_02248E84: @ 0x02248E84
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	add r1, sp, #4
	str r1, [sp]
	add r1, sp, #8
	add r3, sp, #4
	adds r5, r0, #0
	adds r1, #2
	add r2, sp, #8
	adds r3, #2
	bl ov107_022484DC
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _02248EBC
	movs r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #6]
	ldrh r3, [r3, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_0224812C
	b _02248F0C
_02248EBC:
	bl FUN_0203608C
	cmp r0, #0
	add r0, sp, #4
	bne _02248EEA
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	movs r0, #0
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	bl ov107_0224812C
	movs r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_02248194
	b _02248F0C
_02248EEA:
	ldrh r2, [r0, #6]
	ldrh r3, [r0, #4]
	movs r0, #0
	adds r1, r4, #0
	str r0, [sp]
	adds r0, r5, #0
	bl ov107_02248194
	movs r0, #0
	str r0, [sp]
	add r3, sp, #4
	ldrh r2, [r3, #2]
	ldrh r3, [r3]
	adds r0, r5, #0
	adds r1, r4, #0
	bl ov107_0224812C
_02248F0C:
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02248E84

	thumb_func_start ov107_02248F18
ov107_02248F18: @ 0x02248F18
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0224901C @ =0x000005E3
	adds r7, r1, #0
	adds r6, r2, #0
	bl FUN_02005748
	ldrb r0, [r4, #0x15]
	adds r1, r7, #0
	str r0, [sp]
	bl ov107_02249C9C
	str r0, [sp, #4]
	cmp r6, #4
	bhi _02248F62
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248F44: @ jump table
	.2byte _02248F4E - _02248F44 - 2 @ case 0
	.2byte _02248F52 - _02248F44 - 2 @ case 1
	.2byte _02248F62 - _02248F44 - 2 @ case 2
	.2byte _02248F5C - _02248F44 - 2 @ case 3
	.2byte _02248F60 - _02248F44 - 2 @ case 4
_02248F4E:
	movs r5, #1
	b _02248F62
_02248F52:
	ldrb r0, [r4, #0x12]
	bl ov107_02248770
	adds r5, r0, #0
	b _02248F62
_02248F5C:
	movs r5, #2
	b _02248F62
_02248F60:
	movs r5, #5
_02248F62:
	bl FUN_0203608C
	cmp r0, #0
	bne _02248F96
	ldr r0, [sp]
	cmp r7, r0
	bhs _02248F84
	adds r0, r4, #0
	movs r1, #5
	bl ov107_02248110
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	adds r2, r5, #0
	bl FUN_0223BC2C
	b _02248FC0
_02248F84:
	ldr r0, [r4, #0x24]
	movs r1, #5
	bl ov107_02249CF4
	ldr r0, _02249020 @ =0x000003D6
	ldrh r1, [r4, r0]
	subs r1, r1, r5
	strh r1, [r4, r0]
	b _02248FC0
_02248F96:
	ldr r0, [sp]
	cmp r7, r0
	bhs _02248FAE
	ldr r0, [r4, #0x24]
	movs r1, #5
	bl ov107_02249CF4
	ldr r0, _02249020 @ =0x000003D6
	ldrh r1, [r4, r0]
	subs r1, r1, r5
	strh r1, [r4, r0]
	b _02248FC0
_02248FAE:
	adds r0, r4, #0
	movs r1, #5
	bl ov107_02248110
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	adds r2, r5, #0
	bl FUN_0223BC2C
_02248FC0:
	adds r1, r4, #0
	adds r0, r4, #0
	adds r1, #0x50
	bl ov107_02248C08
	adds r0, r4, #0
	bl ov107_02248BB4
	cmp r6, #4
	bhi _02249018
	adds r0, r6, r6
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02248FE0: @ jump table
	.2byte _02248FEA - _02248FE0 - 2 @ case 0
	.2byte _02248FF6 - _02248FE0 - 2 @ case 1
	.2byte _02249018 - _02248FE0 - 2 @ case 2
	.2byte _02249004 - _02248FE0 - 2 @ case 3
	.2byte _02249010 - _02248FE0 - 2 @ case 4
_02248FEA:
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov107_02249024
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02248FF6:
	ldrb r2, [r4, #0x12]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov107_022490E8
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02249004:
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov107_02248A8C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02249010:
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl ov107_02248B50
_02249018:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_0224901C: .4byte 0x000005E3
_02249020: .4byte 0x000003D6
	thumb_func_end ov107_02248F18

	thumb_func_start ov107_02249024
ov107_02249024: @ 0x02249024
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #0x14]
	adds r4, r1, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r6, r0, #0
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	adds r0, r6, #0
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov107_02248104
	adds r0, r5, #0
	movs r1, #0x14
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	movs r1, #0xda
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	movs r2, #1
	strb r2, [r1, r0]
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0xc5
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl ov107_02249BAC
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov107_02249BAC
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x80
	bl ov107_02247B78
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x70
	bl ov107_02247C64
	ldrb r0, [r5, #0x14]
	adds r1, r4, #0
	bl ov107_02249C98
	lsls r0, r0, #2
	adds r1, r5, r0
	movs r0, #0x33
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov107_02249BAC
	ldr r0, _022490E4 @ =0x00000624
	bl FUN_02005748
	pop {r4, r5, r6, pc}
	.align 2, 0
_022490E4: .4byte 0x00000624
	thumb_func_end ov107_02249024

	thumb_func_start ov107_022490E8
ov107_022490E8: @ 0x022490E8
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r6, r1, #0
	adds r7, r2, #0
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	ldrb r0, [r5, #0x14]
	adds r1, r6, #0
	bl ov107_02249C98
	adds r1, r0, #0
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0207A0FC
	adds r4, r0, #0
	bl FUN_02076B10
	adds r2, r0, #0
	adds r0, r5, #0
	movs r1, #0
	bl ov107_02248104
	cmp r7, #1
	bne _02249140
	adds r0, r5, #0
	movs r1, #0x1f
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldr r0, _02249230 @ =0x00000633
	bl FUN_02005748
	b _02249152
_02249140:
	adds r0, r5, #0
	movs r1, #0x20
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	ldr r0, _02249234 @ =0x00000634
	bl FUN_02005748
_02249152:
	ldrb r0, [r5, #0x14]
	adds r1, r6, #0
	bl ov107_02249C98
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	ldrb r0, [r5, #0x14]
	bne _02249178
	adds r1, r6, #0
	bl ov107_02249C98
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	strb r7, [r1, r0]
	b _02249188
_02249178:
	adds r1, r6, #0
	bl ov107_02249C98
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	movs r2, #0
	strb r2, [r1, r0]
_02249188:
	ldrb r0, [r5, #0x14]
	adds r1, r6, #0
	bl ov107_02249C98
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #0
	bne _022491C0
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x32
	bl FUN_02075AD0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	add r2, sp, #0
	bl FUN_02074B30
	adds r0, r4, #0
	bl FUN_0207418C
	b _0224921A
_022491C0:
	ldrb r0, [r5, #0x14]
	adds r1, r6, #0
	bl ov107_02249C98
	movs r1, #0xdb
	lsls r1, r1, #2
	ldr r1, [r5, r1]
	ldrb r0, [r1, r0]
	cmp r0, #1
	bne _022491F8
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x37
	bl FUN_02075AD0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	add r2, sp, #0
	bl FUN_02074B30
	adds r0, r4, #0
	bl FUN_0207418C
	b _0224921A
_022491F8:
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x2d
	bl FUN_02075AD0
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	add r2, sp, #0
	bl FUN_02074B30
	adds r0, r4, #0
	bl FUN_0207418C
_0224921A:
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x80
	bl ov107_02247B78
	adds r0, r5, #0
	adds r5, #0x70
	adds r1, r5, #0
	bl ov107_02247C64
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02249230: .4byte 0x00000633
_02249234: .4byte 0x00000634
	thumb_func_end ov107_022490E8

	thumb_func_start ov107_02249238
ov107_02249238: @ 0x02249238
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x90
	movs r1, #0
	bl FUN_0201ADA4
	adds r4, #0x90
	adds r0, r4, #0
	bl FUN_0201ACF4
	movs r0, #4
	movs r1, #0
	bl FUN_0201FF0C
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02249238

	thumb_func_start ov107_02249258
ov107_02249258: @ 0x02249258
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #0xf]
	lsls r0, r1, #0x1e
	lsrs r0, r0, #0x1f
	cmp r0, #1
	bne _022492A6
	movs r0, #2
	bics r1, r0
	movs r0, #0x4e
	strb r1, [r4, #0xf]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x12
	bl FUN_02001504
	adds r5, r0, #0
	movs r1, #1
	bl FUN_0200DC9C
	adds r0, r5, #0
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, #0
	bl FUN_0201AD10
	movs r0, #0x4f
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_02013A3C
	movs r0, #0x4e
	lsls r0, r0, #2
	movs r1, #0
	ldr r0, [r4, r0]
	adds r2, r1, #0
	bl FUN_02001384
_022492A6:
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02249258

	thumb_func_start ov107_022492A8
ov107_022492A8: @ 0x022492A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldrb r0, [r6, #9]
	movs r1, #1
	bl FUN_0223B7A8
	movs r4, #0
	str r0, [sp]
	cmp r0, #0
	ble _02249338
	adds r5, r6, #0
_022492C0:
	movs r0, #0xde
	lsls r0, r0, #2
	ldr r0, [r6, r0]
	adds r1, r4, #0
	bl FUN_0207A0FC
	str r0, [sp, #4]
	movs r1, #0xa3
	movs r2, #0
	bl FUN_02074470
	adds r7, r0, #0
	ldr r0, [sp, #4]
	movs r1, #0xa4
	movs r2, #0
	bl FUN_02074470
	adds r1, r0, #0
	lsls r0, r7, #0x10
	lsls r1, r1, #0x10
	lsrs r0, r0, #0x10
	lsrs r1, r1, #0x10
	bl FUN_0222E240
	adds r1, r0, #0
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224932E
	bl ov107_02249C1C
	ldrb r0, [r6, #0x14]
	ldrb r1, [r6, #0xd]
	bl ov107_02249C98
	cmp r4, r0
	bne _02249314
	ldrb r1, [r6, #0xd]
	ldrb r0, [r6, #0x15]
	cmp r1, r0
	blo _02249322
_02249314:
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #0
	bl ov107_02249C28
	b _0224932E
_02249322:
	movs r0, #0xc1
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	movs r1, #1
	bl ov107_02249C28
_0224932E:
	ldr r0, [sp]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blt _022492C0
_02249338:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_022492A8

	thumb_func_start ov107_0224933C
ov107_0224933C: @ 0x0224933C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	bl ov107_02248BB4
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	adds r7, r0, #0
	ldrb r0, [r5, #9]
	bl FUN_0205E630
	bl FUN_0205E6A8
	adds r2, r0, #0
	ldr r0, [r5, #4]
	adds r1, r7, #0
	bl FUN_02030698
	cmp r0, r4
	bhs _02249382
	adds r0, r5, #0
	bl ov107_02248BEC
	adds r0, r5, #0
	adds r1, r6, #0
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	movs r0, #0xf
	strb r0, [r5, #8]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02249382:
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #0
	bne _022493C6
	adds r0, r5, #0
	adds r0, #0xc0
	bl ov107_02248860
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	adds r2, r4, #0
	bl FUN_0223BC2C
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x50
	bl ov107_02248C08
	cmp r4, #2
	bne _022493B6
	ldrb r1, [r5, #0xd]
	adds r0, r5, #0
	bl ov107_02248A8C
	b _022493BE
_022493B6:
	ldrb r1, [r5, #0xd]
	adds r0, r5, #0
	bl ov107_02248B50
_022493BE:
	movs r0, #0xc
	strb r0, [r5, #8]
	movs r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_022493C6:
	movs r0, #1
	strb r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_0224933C

	thumb_func_start ov107_022493CC
ov107_022493CC: @ 0x022493CC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldrb r0, [r5, #9]
	adds r4, r1, #0
	movs r1, #0
	adds r7, r2, #0
	bl FUN_0223B7A8
	cmp r7, #5
	bne _022493E6
	movs r6, #2
	b _022493EA
_022493E6:
	bl FUN_02022974
_022493EA:
	ldrb r7, [r5, #0x15]
	adds r1, r4, #0
	adds r0, r7, #0
	bl ov107_02249C9C
	bl FUN_0203608C
	cmp r0, #0
	bne _0224949A
	cmp r4, r7
	bhs _0224947A
	adds r0, r5, #0
	movs r1, #5
	bl ov107_02248110
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl ov107_02249CAC
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	movs r2, #0x32
	bl FUN_0223BC2C
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl ov107_02249CAC
	adds r4, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0203068C
	adds r7, r0, #0
	ldrb r0, [r5, #9]
	adds r1, r6, #0
	bl FUN_0205E5B4
	str r0, [sp]
	ldrb r0, [r5, #9]
	adds r1, r6, #0
	bl FUN_0205E5B4
	bl FUN_0205E6A8
	adds r3, r4, #1
	lsls r3, r3, #0x10
	adds r2, r0, #0
	ldr r1, [sp]
	adds r0, r7, #0
	lsrs r3, r3, #0x10
	bl FUN_020306E4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02249536
	ldrb r1, [r5, #0xf]
	movs r0, #0xf8
	bics r1, r0
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r5, #0xf]
	b _02249536
_0224947A:
	ldr r0, [r5, #0x24]
	movs r1, #5
	bl ov107_02249CF4
	ldr r1, _02249578 @ =0x000003D3
	adds r2, r1, #3
	adds r0, r5, r1
	ldrh r2, [r5, r2]
	ldrb r4, [r0, r6]
	adds r1, r1, #3
	subs r2, #0x32
	strh r2, [r5, r1]
	ldrb r1, [r0, r6]
	adds r1, r1, #1
	strb r1, [r0, r6]
	b _02249536
_0224949A:
	cmp r4, r7
	bhs _022494BE
	ldr r0, [r5, #0x24]
	movs r1, #5
	bl ov107_02249CF4
	ldr r1, _02249578 @ =0x000003D3
	adds r2, r1, #3
	adds r0, r5, r1
	ldrh r2, [r5, r2]
	ldrb r4, [r0, r6]
	adds r1, r1, #3
	subs r2, #0x32
	strh r2, [r5, r1]
	ldrb r1, [r0, r6]
	adds r1, r1, #1
	strb r1, [r0, r6]
	b _02249536
_022494BE:
	adds r0, r5, #0
	movs r1, #5
	bl ov107_02248110
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl ov107_02249CAC
	ldrb r1, [r5, #9]
	ldr r0, [r5, #4]
	movs r2, #0x32
	bl FUN_0223BC2C
	movs r0, #0x53
	lsls r0, r0, #2
	ldrb r1, [r5, #9]
	ldr r0, [r5, r0]
	adds r2, r6, #0
	bl ov107_02249CAC
	adds r4, r0, #0
	movs r0, #0x53
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0203068C
	adds r7, r0, #0
	ldrb r0, [r5, #9]
	adds r1, r6, #0
	bl FUN_0205E5B4
	str r0, [sp, #4]
	ldrb r0, [r5, #9]
	adds r1, r6, #0
	bl FUN_0205E5B4
	bl FUN_0205E6A8
	adds r3, r4, #1
	lsls r3, r3, #0x10
	adds r2, r0, #0
	ldr r1, [sp, #4]
	adds r0, r7, #0
	lsrs r3, r3, #0x10
	bl FUN_020306E4
	ldrb r0, [r5, #9]
	bl FUN_0223BA14
	cmp r0, #1
	bne _02249536
	ldrb r1, [r5, #0xf]
	movs r0, #0xf8
	bics r1, r0
	movs r0, #0x10
	orrs r0, r1
	strb r0, [r5, #0xf]
_02249536:
	adds r0, r5, #0
	bl ov107_02248BB4
	adds r1, r5, #0
	adds r0, r5, #0
	adds r1, #0x50
	bl ov107_02248C08
	movs r0, #0x52
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_02027B50
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0xc0
	bl ov107_02249DBC
	movs r1, #6
	adds r3, r6, #0
	muls r3, r1, r3
	ldr r1, _0224957C @ =0x0224A0DC
	lsls r2, r4, #1
	adds r1, r1, r3
	ldrh r1, [r2, r1]
	adds r0, r5, #0
	movs r2, #1
	bl ov107_022477CC
	strb r0, [r5, #0xa]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02249578: .4byte 0x000003D3
_0224957C: .4byte 0x0224A0DC
	thumb_func_end ov107_022493CC

	thumb_func_start ov107_02249580
ov107_02249580: @ 0x02249580
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #9]
	movs r1, #1
	bl FUN_0223B7DC
	adds r5, r0, #0
	movs r4, #0
	cmp r5, #0
	ble _022495A4
_02249594:
	lsls r1, r4, #0x18
	adds r0, r6, #0
	lsrs r1, r1, #0x18
	bl ov107_022495A8
	adds r4, r4, #1
	cmp r4, r5
	blt _02249594
_022495A4:
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_02249580

	thumb_func_start ov107_022495A8
ov107_022495A8: @ 0x022495A8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0x37
	lsls r0, r0, #4
	adds r4, r1, #0
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _022495C8
	lsls r1, r4, #3
	adds r1, r5, r1
	subs r0, #0x30
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov107_02249BAC
_022495C8:
	movs r0, #0xdd
	lsls r0, r0, #2
	ldr r1, [r5, r0]
	ldrb r1, [r1, r4]
	cmp r1, #1
	bne _022495E2
	lsls r1, r4, #3
	adds r1, r5, r1
	subs r0, #0x30
	ldr r0, [r1, r0]
	movs r1, #1
	bl ov107_02249BAC
_022495E2:
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_022495A8

	thumb_func_start ov107_022495E4
ov107_022495E4: @ 0x022495E4
	push {r3, r4, r5, lr}
	ldrb r0, [r0, #9]
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_0223BA14
	cmp r0, #1
	bne _022495F8
	movs r0, #0x40
	b _022495FA
_022495F8:
	movs r0, #0x60
_022495FA:
	str r0, [r5]
	movs r0, #0x3c
	str r0, [r4]
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_022495E4

	thumb_func_start ov107_02249604
ov107_02249604: @ 0x02249604
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	str r1, [sp, #0x14]
	movs r0, #0x20
	movs r1, #0x64
	str r2, [sp, #0x18]
	bl FUN_0201DBEC
	bl ov107_02249A3C
	blx FUN_020A7944
	movs r0, #0
	str r0, [sp]
	movs r1, #0x80
	str r1, [sp, #4]
	str r0, [sp, #8]
	movs r3, #0x20
	str r3, [sp, #0xc]
	movs r2, #0x64
	str r2, [sp, #0x10]
	adds r2, r0, #0
	bl FUN_0200A784
	movs r0, #0x28
	adds r1, r5, #4
	movs r2, #0x64
	bl FUN_020095C4
	ldr r4, _022498A0 @ =0x0224A204
	str r0, [r5]
	movs r7, #0
	adds r6, r5, #0
_02249648:
	ldrb r0, [r4]
	adds r1, r7, #0
	movs r2, #0x64
	bl FUN_02009714
	movs r1, #0x4b
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r7, r7, #1
	adds r4, r4, #1
	adds r6, r6, #4
	cmp r7, #4
	blt _02249648
	movs r0, #0
	str r0, [sp]
	movs r3, #1
	str r3, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xc8
	ldr r0, [r5, r0]
	movs r1, #0x97
	movs r2, #0xf
	bl FUN_0200985C
	movs r1, #0x4f
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r3, #0
	str r3, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	adds r0, #0xcc
	ldr r0, [r5, r0]
	movs r1, #0x97
	movs r2, #0x27
	bl FUN_020098B8
	movs r1, #5
	lsls r1, r1, #6
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xd0
	ldr r0, [r5, r0]
	movs r1, #0x97
	movs r2, #0x11
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x51
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xd4
	ldr r0, [r5, r0]
	movs r1, #0x97
	movs r2, #0x10
	movs r3, #1
	bl FUN_02009918
	movs r1, #0x52
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0x10
	movs r1, #0x64
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0
	movs r1, #1
	bl FUN_0207CE78
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xc8
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x53
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r0, #0
	movs r1, #2
	bl FUN_0207CE78
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	adds r0, #0xcc
	ldr r0, [r5, r0]
	movs r1, #0x10
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x15
	lsls r1, r1, #4
	str r0, [r5, r1]
	bl FUN_0207CF40
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xd0
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x55
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_0207CF44
	adds r2, r0, #0
	movs r0, #1
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xd4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x56
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_02006CA8
	adds r0, r5, #0
	bl ov107_02249A70
	movs r0, #0x13
	movs r1, #0x64
	bl FUN_02006C24
	adds r7, r0, #0
	bl FUN_02079FD0
	movs r1, #3
	adds r2, r0, #0
	str r1, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	adds r0, #0xcc
	ldr r0, [r5, r0]
	movs r1, #0x13
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x17
	lsls r1, r1, #4
	str r0, [r5, r1]
	bl FUN_02079FD8
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xd0
	ldr r0, [r5, r0]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x5d
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_02079FE4
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xd4
	ldr r0, [r5, r0]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x5e
	lsls r1, r1, #2
	str r0, [r5, r1]
	movs r4, #0
	adds r6, r5, #0
_0224980A:
	cmp r4, #3
	bne _02249828
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _0224981E
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl FUN_0207A0FC
	b _02249830
_0224981E:
	ldr r0, [sp, #0x14]
	adds r1, r4, #0
	bl FUN_0207A0FC
	b _02249830
_02249828:
	ldr r0, [sp, #0x14]
	adds r1, r4, #0
	bl FUN_0207A0FC
_02249830:
	bl FUN_02079D80
	adds r2, r0, #0
	adds r0, r4, #3
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xc8
	ldr r0, [r5, r0]
	adds r1, r7, #0
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x5b
	lsls r1, r1, #2
	str r0, [r6, r1]
	adds r4, r4, #1
	adds r6, #0x10
	cmp r4, #4
	blt _0224980A
	adds r0, r7, #0
	bl FUN_02006CA8
	movs r7, #0x4f
	movs r6, #0
	adds r4, r5, #0
	lsls r7, r7, #2
_0224986A:
	ldr r0, [r4, r7]
	bl FUN_0200A328
	adds r6, r6, #1
	adds r4, #0x10
	cmp r6, #7
	blt _0224986A
	movs r6, #5
	movs r4, #0
	lsls r6, r6, #6
_0224987E:
	ldr r0, [r5, r6]
	bl FUN_0200A5C8
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #4
	blt _0224987E
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF74
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022498A0: .4byte 0x0224A204
	thumb_func_end ov107_02249604

	thumb_func_start ov107_022498A4
ov107_022498A4: @ 0x022498A4
	push {r4, r5, r6, lr}
	sub sp, #0x80
	adds r4, r0, #0
	movs r0, #0
	str r3, [sp]
	mvns r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	movs r5, #0
	ldr r0, [sp, #0x98]
	str r5, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0x4b
	lsls r0, r0, #2
	ldr r6, [r4, r0]
	str r6, [sp, #0x14]
	adds r6, r0, #4
	ldr r6, [r4, r6]
	str r6, [sp, #0x18]
	adds r6, r0, #0
	adds r6, #8
	ldr r6, [r4, r6]
	adds r0, #0xc
	str r6, [sp, #0x1c]
	ldr r0, [r4, r0]
	str r0, [sp, #0x20]
	str r5, [sp, #0x24]
	str r5, [sp, #0x28]
	add r0, sp, #0x5c
	bl FUN_020093B4
	ldr r0, [r4]
	adds r1, r5, #0
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
	ldr r0, [sp, #0x94]
	str r0, [sp, #0x50]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x1c]
	cmp r0, #0
	bne _02249912
	movs r0, #1
	str r0, [sp, #0x54]
	b _02249916
_02249912:
	movs r0, #2
	str r0, [sp, #0x54]
_02249916:
	movs r0, #0x64
	str r0, [sp, #0x58]
	add r0, sp, #0x80
	ldrb r0, [r0, #0x1c]
	cmp r0, #1
	bne _0224992C
	movs r0, #3
	ldr r1, [sp, #0x38]
	lsls r0, r0, #0x12
	adds r0, r1, r0
	str r0, [sp, #0x38]
_0224992C:
	add r0, sp, #0x2c
	bl FUN_02021AA0
	movs r1, #1
	adds r4, r0, #0
	bl FUN_02021CC8
	movs r1, #1
	adds r0, r4, #0
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r1, [sp, #0x90]
	adds r0, r4, #0
	bl FUN_02021D6C
	adds r0, r4, #0
	add sp, #0x80
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_022498A4

	thumb_func_start ov107_02249954
ov107_02249954: @ 0x02249954
	push {r4, r5, r6, lr}
	movs r6, #0x4f
	adds r5, r0, #0
	movs r4, #0
	lsls r6, r6, #2
_0224995E:
	lsls r0, r4, #4
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_0200A4E4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	blo _0224995E
	movs r6, #5
	movs r4, #0
	lsls r6, r6, #6
_02249978:
	lsls r0, r4, #4
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_0200A6DC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _02249978
	movs r6, #0x4b
	movs r4, #0
	lsls r6, r6, #2
_02249992:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r6]
	bl FUN_02009754
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #4
	blo _02249992
	ldr r0, [r5]
	bl FUN_02021964
	bl FUN_0200A878
	bl FUN_0201E958
	bl FUN_0201F8B4
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_02249954

	thumb_func_start ov107_022499BC
ov107_022499BC: @ 0x022499BC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x4b
	lsls r0, r0, #2
	adds r6, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02009DC8
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #1
	bl FUN_0207CE78
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	adds r0, #0xc8
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r2, #0x10
	bl FUN_02009968
	adds r0, r4, #0
	bl FUN_0200A4C0
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_022499BC

	thumb_func_start ov107_022499FC
ov107_022499FC: @ 0x022499FC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0x13
	lsls r0, r0, #4
	adds r6, r1, #0
	ldr r0, [r5, r0]
	movs r1, #1
	bl FUN_02009DC8
	adds r4, r0, #0
	adds r0, r6, #0
	movs r1, #2
	bl FUN_0207CE78
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	adds r0, #0xcc
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r2, #0x10
	bl FUN_020099D4
	adds r0, r4, #0
	bl FUN_0200A6B8
	add sp, #8
	pop {r4, r5, r6, pc}
	.align 2, 0
	thumb_func_end ov107_022499FC

	thumb_func_start ov107_02249A3C
ov107_02249A3C: @ 0x02249A3C
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _02249A6C @ =0x0224A208
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
	movs r0, #8
	movs r1, #0x64
	bl FUN_0201F834
	bl FUN_0201E994
	bl FUN_0201F8E4
	add sp, #0x10
	pop {r4, pc}
	.align 2, 0
_02249A6C: .4byte 0x0224A208
	thumb_func_end ov107_02249A3C

	thumb_func_start ov107_02249A70
ov107_02249A70: @ 0x02249A70
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	movs r0, #0x14
	movs r1, #0x64
	bl FUN_02006C24
	adds r4, r0, #0
	bl FUN_02081930
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xc8
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009A4C
	movs r1, #0x57
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_02081934
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	movs r0, #3
	str r0, [sp, #8]
	movs r0, #0x64
	str r0, [sp, #0xc]
	adds r0, #0xcc
	ldr r0, [r5, r0]
	movs r1, #0x14
	movs r3, #0
	bl FUN_020098B8
	movs r1, #0x16
	lsls r1, r1, #4
	str r0, [r5, r1]
	bl FUN_02081938
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xd0
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x59
	lsls r1, r1, #2
	str r0, [r5, r1]
	bl FUN_0208193C
	adds r2, r0, #0
	movs r0, #2
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #0x64
	str r0, [sp, #8]
	adds r0, #0xd4
	ldr r0, [r5, r0]
	adds r1, r4, #0
	movs r3, #0
	bl FUN_02009BC4
	movs r1, #0x5a
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov107_02249A70

	thumb_func_start ov107_02249B1C
ov107_02249B1C: @ 0x02249B1C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0x64
	movs r1, #8
	adds r7, r2, #0
	str r3, [sp, #0x10]
	bl FUN_02018144
	adds r4, r0, #0
	movs r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	add r0, sp, #0x28
	movs r2, #0x14
	ldrsh r2, [r0, r2]
	ldr r3, [sp, #0x10]
	strh r2, [r4]
	movs r2, #0x18
	ldrsh r0, [r0, r2]
	adds r2, r7, #0
	strh r0, [r4, #2]
	ldr r0, [sp, #0x38]
	str r0, [sp]
	ldr r0, [sp, #0x44]
	str r1, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r5, #0
	adds r1, r6, #0
	bl ov107_022498A4
	str r0, [r4, #4]
	add r1, sp, #0x28
	movs r0, #0x14
	ldrsh r0, [r1, r0]
	lsls r0, r0, #0xc
	str r0, [sp, #0x14]
	movs r0, #0x18
	ldrsh r0, [r1, r0]
	add r1, sp, #0x14
	lsls r0, r0, #0xc
	str r0, [sp, #0x18]
	ldr r0, [r4, #4]
	bl FUN_02021C50
	adds r0, r4, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov107_02249B1C

	thumb_func_start ov107_02249B8C
ov107_02249B8C: @ 0x02249B8C
	push {r4, lr}
	adds r4, r0, #0
	bne _02249B9A
	bl FUN_02022974
	movs r0, #0
	pop {r4, pc}
_02249B9A:
	ldr r0, [r4, #4]
	bl FUN_02021BD4
	adds r0, r4, #0
	bl FUN_020181C4
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02249B8C

	thumb_func_start ov107_02249BAC
ov107_02249BAC: @ 0x02249BAC
	ldr r3, _02249BB4 @ =FUN_02021CAC
	ldr r0, [r0, #4]
	bx r3
	nop
_02249BB4: .4byte FUN_02021CAC
	thumb_func_end ov107_02249BAC

	thumb_func_start ov107_02249BB8
ov107_02249BB8: @ 0x02249BB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #4]
	adds r4, r1, #0
	adds r6, r2, #0
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
	ldr r0, [r5, #4]
	bl FUN_02021C50
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02249BB8

	thumb_func_start ov107_02249BEC
ov107_02249BEC: @ 0x02249BEC
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	movs r1, #1
	ldr r0, [r5, #4]
	lsls r1, r1, #0xc
	bl FUN_02021CE4
	ldr r0, [r5, #4]
	adds r1, r4, #0
	bl FUN_02021D6C
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02249BEC

	thumb_func_start ov107_02249C08
ov107_02249C08: @ 0x02249C08
	push {r4, lr}
	adds r4, r0, #0
	adds r0, r1, #0
	bl FUN_02079FC4
	adds r1, r0, #0
	ldr r0, [r4, #4]
	bl FUN_02021F24
	pop {r4, pc}
	thumb_func_end ov107_02249C08

	thumb_func_start ov107_02249C1C
ov107_02249C1C: @ 0x02249C1C
	ldr r3, _02249C24 @ =FUN_0222E1D8
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C24: .4byte FUN_0222E1D8
	thumb_func_end ov107_02249C1C

	thumb_func_start ov107_02249C28
ov107_02249C28: @ 0x02249C28
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	movs r1, #0
	movs r2, #2
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #4]
	bl FUN_0222E204
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov107_02249C28

	thumb_func_start ov107_02249C40
ov107_02249C40: @ 0x02249C40
	ldr r3, _02249C48 @ =FUN_02021FD0
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C48: .4byte FUN_02021FD0
	thumb_func_end ov107_02249C40

	thumb_func_start ov107_02249C4C
ov107_02249C4C: @ 0x02249C4C
	ldr r3, _02249C54 @ =FUN_02021E80
	ldr r0, [r0, #4]
	bx r3
	nop
_02249C54: .4byte FUN_02021E80
	thumb_func_end ov107_02249C4C

	thumb_func_start ov107_02249C58
ov107_02249C58: @ 0x02249C58
	strh r1, [r0]
	strh r2, [r0, #2]
	bx lr
	.align 2, 0
	thumb_func_end ov107_02249C58

	thumb_func_start ov107_02249C60
ov107_02249C60: @ 0x02249C60
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r0, #0
	adds r6, r2, #0
	movs r1, #0xb
	bl ov107_02249BEC
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl ov107_02249BB8
	adds r0, r5, #0
	movs r1, #1
	bl ov107_02249BAC
	ldr r0, _02249C90 @ =0x000005E3
	bl FUN_02005748
	ldr r0, _02249C94 @ =0x00000656
	bl FUN_02005748
	pop {r4, r5, r6, pc}
	nop
_02249C90: .4byte 0x000005E3
_02249C94: .4byte 0x00000656
	thumb_func_end ov107_02249C60

	thumb_func_start ov107_02249C98
ov107_02249C98: @ 0x02249C98
	adds r0, r1, #0
	bx lr
	thumb_func_end ov107_02249C98

	thumb_func_start ov107_02249C9C
ov107_02249C9C: @ 0x02249C9C
	cmp r1, r0
	blo _02249CA6
	subs r0, r1, r0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
_02249CA6:
	adds r0, r1, #0
	bx lr
	.align 2, 0
	thumb_func_end ov107_02249C9C

	thumb_func_start ov107_02249CAC
ov107_02249CAC: @ 0x02249CAC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r4, r2, #0
	bl FUN_0203068C
	adds r6, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0205E5B4
	adds r7, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0205E5B4
	bl FUN_0205E6A8
	adds r2, r0, #0
	adds r0, r6, #0
	adds r1, r7, #0
	bl FUN_02030698
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov107_02249CAC

	thumb_func_start ov107_02249CE0
ov107_02249CE0: @ 0x02249CE0
	push {r3, lr}
	movs r2, #0
	mvns r2, r2
	cmp r0, r2
	beq _02249CF0
	adds r0, r1, #0
	bl FUN_02005748
_02249CF0:
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov107_02249CE0

	thumb_func_start ov107_02249CF4
ov107_02249CF4: @ 0x02249CF4
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0203608C
	movs r1, #1
	eors r0, r1
	bl FUN_02032EE8
	adds r2, r0, #0
	adds r0, r5, #0
	adds r1, r4, #0
	bl FUN_0200B498
	pop {r3, r4, r5, pc}
	.align 2, 0
	thumb_func_end ov107_02249CF4

	thumb_func_start ov107_02249D14
ov107_02249D14: @ 0x02249D14
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	adds r5, r1, #0
	ldr r0, _02249D54 @ =0x0224A218
	lsls r1, r2, #3
	ldr r0, [r0, r1]
	movs r4, #0
	str r0, [sp, #4]
	ldr r0, _02249D58 @ =0x0224A21C
	ldr r7, [r0, r1]
	cmp r7, #0
	bls _02249D50
_02249D2E:
	ldr r2, [sp, #4]
	lsls r6, r4, #4
	lsls r3, r4, #3
	ldr r0, [sp]
	adds r1, r5, r6
	adds r2, r2, r3
	bl FUN_0201A8D4
	adds r0, r5, r6
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r7
	blo _02249D2E
_02249D50:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02249D54: .4byte 0x0224A218
_02249D58: .4byte 0x0224A21C
	thumb_func_end ov107_02249D14

	thumb_func_start ov107_02249D5C
ov107_02249D5C: @ 0x02249D5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, _02249D80 @ =0x0224A21C
	lsls r1, r1, #3
	ldr r5, [r0, r1]
	movs r4, #0
	cmp r5, #0
	bls _02249D7E
_02249D6C:
	lsls r0, r4, #4
	adds r0, r6, r0
	bl FUN_0201A8FC
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _02249D6C
_02249D7E:
	pop {r4, r5, r6, pc}
	.align 2, 0
_02249D80: .4byte 0x0224A21C
	thumb_func_end ov107_02249D5C

	thumb_func_start ov107_02249D84
ov107_02249D84: @ 0x02249D84
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	adds r5, r0, #0
	adds r0, r4, #0
	bl FUN_0201C290
	adds r1, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	ldr r2, _02249DB8 @ =0x000003F7
	adds r0, r5, #0
	movs r3, #0xb
	bl FUN_0200DAA4
	ldr r2, _02249DB8 @ =0x000003F7
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xb
	bl FUN_0200DC48
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_02249DB8: .4byte 0x000003F7
	thumb_func_end ov107_02249D84

	thumb_func_start ov107_02249DBC
ov107_02249DBC: @ 0x02249DBC
	push {r3, r4, r5, lr}
	sub sp, #8
	adds r5, r1, #0
	adds r4, r0, #0
	bl FUN_0201C290
	adds r1, r0, #0
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0x64
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r2, _02249DFC @ =0x000003D9
	movs r3, #0xa
	bl FUN_0200DD0C
	adds r0, r4, #0
	movs r1, #0xf
	bl FUN_0201ADA4
	ldr r2, _02249DFC @ =0x000003D9
	adds r0, r4, #0
	movs r1, #1
	movs r3, #0xa
	bl FUN_0200E060
	adds r0, r4, #0
	bl FUN_0201A9A4
	add sp, #8
	pop {r3, r4, r5, pc}
	.align 2, 0
_02249DFC: .4byte 0x000003D9
	thumb_func_end ov107_02249DBC
	@ 0x02249E00
