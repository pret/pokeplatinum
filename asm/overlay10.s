	.include "macros/function.inc"


	.text

	thumb_func_start ov10_0221F800
ov10_0221F800: @ 0x0221F800
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0221F85C @ =ov10_0221F870
	ldr r1, _0221F860 @ =0x00000BD4
	ldr r3, [r5, #0x24]
	movs r2, #0x64
	bl FUN_0200679C
	bl FUN_0201CED0
	ldr r2, _0221F860 @ =0x00000BD4
	movs r1, #0
	adds r4, r0, #0
	blx FUN_020D5124
	ldr r0, _0221F864 @ =0x00000B7F
	str r5, [r4]
	movs r1, #0
	strb r1, [r4, r0]
	bl FUN_0202FAC0
	ldr r1, _0221F868 @ =0x00000BC8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _0221F858
	ldr r0, [r4]
	ldr r1, [r0]
	cmp r1, #0
	beq _0221F858
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0221F858
	bl FUN_0207D990
	ldr r1, _0221F86C @ =0x000001D1
	ldr r3, [r5, #0x24]
	movs r2, #1
	bl FUN_0207D688
	ldr r1, _0221F868 @ =0x00000BC8
	str r0, [r4, r1]
_0221F858:
	pop {r3, r4, r5, pc}
	nop
_0221F85C: .4byte ov10_0221F870
_0221F860: .4byte 0x00000BD4
_0221F864: .4byte 0x00000B7F
_0221F868: .4byte 0x00000BC8
_0221F86C: .4byte 0x000001D1
	thumb_func_end ov10_0221F800

	thumb_func_start ov10_0221F870
ov10_0221F870: @ 0x0221F870
	push {r4, r5, r6, lr}
	ldr r2, _0221F8F8 @ =0x00000B7F
	adds r5, r1, #0
	ldrb r2, [r5, r2]
	cmp r2, #0
	beq _0221F886
	cmp r2, #1
	beq _0221F892
	cmp r2, #2
	beq _0221F8C4
	b _0221F8CC
_0221F886:
	adds r0, r5, #0
	bl ov10_0221FB28
	ldr r1, _0221F8F8 @ =0x00000B7F
	strb r0, [r5, r1]
	b _0221F8CC
_0221F892:
	movs r4, #0x2e
	lsls r4, r4, #6
	adds r6, r4, #0
_0221F898:
	ldrb r1, [r5, r6]
	ldr r2, [r5, #4]
	adds r0, r5, #0
	lsls r1, r1, #2
	ldr r1, [r2, r1]
	blx r1
	cmp r0, #0
	beq _0221F8AE
	ldrb r1, [r5, r4]
	adds r1, r1, #1
	strb r1, [r5, r4]
_0221F8AE:
	cmp r0, #2
	beq _0221F898
	ldr r0, [r5]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #2
	bne _0221F8CC
	adds r0, r5, #0
	bl ov10_0221F930
	b _0221F8CC
_0221F8C4:
	bl ov10_02220A50
	cmp r0, #1
	beq _0221F8F6
_0221F8CC:
	movs r0, #0x2e
	lsls r0, r0, #6
	ldrb r0, [r5, r0]
	cmp r0, #0
	beq _0221F8E6
	adds r0, r5, #0
	bl ov10_02220C2C
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200C7EC
_0221F8E6:
	ldr r0, [r5]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0221F8F6
	ldr r0, _0221F8FC @ =0x04000540
	movs r1, #1
	str r1, [r0]
_0221F8F6:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0221F8F8: .4byte 0x00000B7F
_0221F8FC: .4byte 0x04000540
	thumb_func_end ov10_0221F870

	thumb_func_start ov10_0221F900
ov10_0221F900: @ 0x0221F900
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _0221F92C @ =0x02222C10
	add r3, sp, #0
	movs r2, #5
_0221F90A:
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	subs r2, r2, #1
	bne _0221F90A
	add r0, sp, #0
	bl FUN_0201FE94
	movs r1, #6
	movs r2, #2
	movs r0, #0
	lsls r1, r1, #0x18
	lsls r2, r2, #0x12
	blx FUN_020C4B4C
	add sp, #0x28
	pop {r4, pc}
	nop
_0221F92C: .4byte 0x02222C10
	thumb_func_end ov10_0221F900

	thumb_func_start ov10_0221F930
ov10_0221F930: @ 0x0221F930
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl ov10_02222A08
	cmp r0, #0
	bne _0221F940
	b _0221FB08
_0221F940:
	ldr r2, _0221FB0C @ =0x00000BBC
	ldr r0, [r4, r2]
	cmp r0, #8
	bhi _0221F9BA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_0221F954: @ jump table
	.2byte _0221FB08 - _0221F954 - 2 @ case 0
	.2byte _0221F966 - _0221F954 - 2 @ case 1
	.2byte _0221F9A6 - _0221F954 - 2 @ case 2
	.2byte _0221F9C4 - _0221F954 - 2 @ case 3
	.2byte _0221FA5C - _0221F954 - 2 @ case 4
	.2byte _0221FA98 - _0221F954 - 2 @ case 5
	.2byte _0221FB08 - _0221F954 - 2 @ case 6
	.2byte _0221FAD8 - _0221F954 - 2 @ case 7
	.2byte _0221FB08 - _0221F954 - 2 @ case 8
_0221F966:
	adds r0, r4, #0
	bl ov10_022229D4
	ldr r2, _0221FB10 @ =0x00000BAC
	movs r1, #0
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	ldr r2, _0221FB14 @ =0x00000B88
	str r3, [sp, #4]
	adds r0, r4, r2
	str r3, [sp, #8]
	adds r2, #0x2c
	ldr r2, [r4, r2]
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _0221FB18 @ =0x00000BB8
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0201C3C0
	ldr r0, _0221FB0C @ =0x00000BBC
	movs r1, #2
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221F9A6:
	adds r0, r2, #0
	adds r0, #0xc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0221F9BA
	ldr r0, _0221FB1C @ =0x021BF67C
	ldr r1, [r0, #0x48]
	movs r0, #1
	tst r0, r1
	bne _0221F9BC
_0221F9BA:
	b _0221FB08
_0221F9BC:
	movs r0, #3
	add sp, #0xc
	str r0, [r4, r2]
	pop {r3, r4, pc}
_0221F9C4:
	adds r0, r2, #0
	adds r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _0221F9E0
	adds r0, r2, #0
	subs r0, #0x10
	subs r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	movs r1, #2
	bl FUN_0200B1B8
	b _0221F9F0
_0221F9E0:
	adds r0, r2, #0
	subs r0, #0x10
	subs r2, #8
	ldr r0, [r4, r0]
	ldr r2, [r4, r2]
	movs r1, #1
	bl FUN_0200B1B8
_0221F9F0:
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, _0221FB20 @ =0x00000B98
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _0221FB20 @ =0x00000B98
	movs r1, #0
	adds r0, r4, r0
	movs r2, #1
	movs r3, #0xf
	bl FUN_0200E060
	movs r3, #0
	str r3, [sp]
	ldr r2, _0221FB20 @ =0x00000B98
	str r3, [sp, #4]
	adds r0, r4, r2
	str r3, [sp, #8]
	adds r2, #0x1c
	ldr r2, [r4, r2]
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _0221FB18 @ =0x00000BB8
	movs r2, #0x1f
	str r0, [r4, r1]
	movs r0, #1
	str r0, [sp]
	ldr r0, [r4]
	ldr r1, _0221FB24 @ =0x02222A68
	ldr r0, [r0, #0x24]
	movs r3, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl FUN_02002054
	movs r1, #0x2f
	lsls r1, r1, #6
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0201C3C0
	ldr r0, _0221FB0C @ =0x00000BBC
	movs r1, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221FA5C:
	ldr r1, [r4]
	adds r0, r2, #4
	ldr r0, [r4, r0]
	ldr r1, [r1, #0x24]
	bl FUN_02002114
	cmp r0, #0
	beq _0221FA78
	movs r1, #1
	mvns r1, r1
	cmp r0, r1
	beq _0221FA88
	add sp, #0xc
	pop {r3, r4, pc}
_0221FA78:
	ldr r0, _0221FB0C @ =0x00000BBC
	movs r1, #5
	str r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221FA88:
	ldr r0, _0221FB0C @ =0x00000BBC
	movs r1, #1
	str r1, [r4, r0]
	movs r1, #0
	adds r0, r0, #4
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221FA98:
	adds r0, r4, #0
	bl ov10_022229D4
	ldr r2, _0221FB10 @ =0x00000BAC
	movs r1, #5
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	ldr r2, _0221FB14 @ =0x00000B88
	str r3, [sp, #4]
	adds r0, r4, r2
	str r3, [sp, #8]
	adds r2, #0x2c
	ldr r2, [r4, r2]
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _0221FB18 @ =0x00000BB8
	str r0, [r4, r1]
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0201C3C0
	ldr r0, _0221FB0C @ =0x00000BBC
	movs r1, #6
	add sp, #0xc
	str r1, [r4, r0]
	pop {r3, r4, pc}
_0221FAD8:
	adds r0, r2, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0221FAF0
	ldr r1, [r4]
	ldr r1, [r1, #0x24]
	bl FUN_02002154
	movs r0, #0x2f
	movs r1, #0
	lsls r0, r0, #6
	str r1, [r4, r0]
_0221FAF0:
	ldr r0, _0221FB14 @ =0x00000B88
	movs r1, #0
	adds r0, r4, r0
	bl FUN_0200E084
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0201C3C0
	ldr r0, _0221FB0C @ =0x00000BBC
	movs r1, #8
	str r1, [r4, r0]
_0221FB08:
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_0221FB0C: .4byte 0x00000BBC
_0221FB10: .4byte 0x00000BAC
_0221FB14: .4byte 0x00000B88
_0221FB18: .4byte 0x00000BB8
_0221FB1C: .4byte 0x021BF67C
_0221FB20: .4byte 0x00000B98
_0221FB24: .4byte 0x02222A68
	thumb_func_end ov10_0221F930

	thumb_func_start ov10_0221FB28
ov10_0221FB28: @ 0x0221FB28
	push {r4, lr}
	ldr r1, _0221FBDC @ =0x04000050
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, r0, #0
	bl FUN_02017798
	bl FUN_020177A4
	bl FUN_0201FF00
	bl FUN_0201FF68
	movs r0, #1
	lsls r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _0221FBE0 @ =0xFFFFE0FF
	ldr r3, _0221FBE4 @ =0x04001000
	ands r2, r1
	str r2, [r0]
	ldr r2, [r3]
	adds r0, #0x50
	ands r1, r2
	str r1, [r3]
	movs r1, #0
	strh r1, [r0]
	adds r3, #0x50
	strh r1, [r3]
	bl ov10_0221F900
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl FUN_02018340
	str r0, [r4, #0xc]
	ldr r0, [r4]
	ldr r0, [r0, #0x24]
	bl FUN_02002F38
	str r0, [r4, #8]
	ldr r3, [r4]
	movs r2, #2
	ldr r3, [r3, #0x24]
	movs r1, #0
	lsls r2, r2, #8
	bl FUN_02002F70
	movs r0, #4
	movs r1, #0
	bl FUN_0201975C
	ldr r0, _0221FBE8 @ =0x00000B82
	movs r3, #0
	strb r3, [r4, r0]
	subs r1, r0, #1
	movs r2, #8
	strb r2, [r4, r1]
	subs r0, r0, #2
	strb r3, [r4, r0]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _0221FBB6
	cmp r0, #1
	beq _0221FBBC
	cmp r0, #2
	beq _0221FBC2
	b _0221FBD8
_0221FBB6:
	ldr r0, _0221FBEC @ =0x02222AD0
	str r0, [r4, #4]
	b _0221FBD8
_0221FBBC:
	ldr r0, _0221FBF0 @ =0x02222AA8
	str r0, [r4, #4]
	b _0221FBD8
_0221FBC2:
	adds r1, #0x2a
	ldrb r0, [r1]
	cmp r0, #3
	bne _0221FBCE
	ldr r0, _0221FBF4 @ =0x02222C38
	b _0221FBD0
_0221FBCE:
	ldr r0, _0221FBF8 @ =0x02222CA8
_0221FBD0:
	str r0, [r4, #4]
	ldr r0, [r4]
	bl ov10_022227A4
_0221FBD8:
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_0221FBDC: .4byte 0x04000050
_0221FBE0: .4byte 0xFFFFE0FF
_0221FBE4: .4byte 0x04001000
_0221FBE8: .4byte 0x00000B82
_0221FBEC: .4byte 0x02222AD0
_0221FBF0: .4byte 0x02222AA8
_0221FBF4: .4byte 0x02222C38
_0221FBF8: .4byte 0x02222CA8
	thumb_func_end ov10_0221FB28

	thumb_func_start ov10_0221FBFC
ov10_0221FBFC: @ 0x0221FBFC
	push {r4, lr}
	ldr r1, _0221FC70 @ =0x00000B82
	adds r4, r0, #0
	ldrb r2, [r4, r1]
	cmp r2, #0
	beq _0221FC12
	cmp r2, #1
	beq _0221FC1E
	cmp r2, #2
	beq _0221FC2A
	b _0221FC64
_0221FC12:
	bl ov10_02221970
	adds r0, r4, #0
	bl ov10_02221A3C
	b _0221FC64
_0221FC1E:
	bl ov10_02221E58
	adds r0, r4, #0
	bl ov10_02222050
	b _0221FC64
_0221FC2A:
	movs r2, #0
	strb r2, [r4, r1]
	movs r2, #0x20
	subs r1, r1, #1
	strb r2, [r4, r1]
	bl ov10_02221AE4
	adds r0, r4, #0
	bl ov10_022223C0
	adds r0, r4, #0
	bl ov10_02222720
	adds r0, r4, #0
	bl ov10_02221C14
	bl FUN_02039734
	ldr r1, [r4]
	movs r0, #0
	ldr r1, [r1, #0x24]
	bl FUN_0208C120
	ldr r0, _0221FC74 @ =ov10_02220C64
	adds r1, r4, #0
	bl FUN_02017798
	movs r0, #1
	pop {r4, pc}
_0221FC64:
	ldr r0, _0221FC70 @ =0x00000B82
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0221FC70: .4byte 0x00000B82
_0221FC74: .4byte ov10_02220C64
	thumb_func_end ov10_0221FBFC

	thumb_func_start ov10_0221FC78
ov10_0221FC78: @ 0x0221FC78
	push {r4, lr}
	ldr r1, _0221FCF8 @ =0x00000B82
	adds r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _0221FC8E
	cmp r1, #1
	beq _0221FCA2
	cmp r1, #2
	beq _0221FCBC
	b _0221FCEA
_0221FC8E:
	movs r1, #1
	movs r2, #0
	bl ov10_02220C94
	adds r0, r4, #0
	bl ov10_02220E70
	bl ov10_02221004
	b _0221FCEA
_0221FCA2:
	movs r1, #0
	adds r2, r1, #0
	bl ov10_022214A0
	adds r0, r4, #0
	bl ov10_0222101C
	bl FUN_02039734
	adds r0, r4, #0
	bl ov10_022217CC
	b _0221FCEA
_0221FCBC:
	ldr r1, [r4]
	movs r0, #0
	ldr r1, [r1, #0x24]
	bl FUN_0208C120
	ldr r0, _0221FCFC @ =ov10_02220C64
	adds r1, r4, #0
	bl FUN_02017798
	ldr r1, _0221FCF8 @ =0x00000B82
	movs r0, #0
	strb r0, [r4, r1]
	movs r2, #8
	subs r0, r1, #6
	strb r2, [r4, r0]
	subs r0, r1, #5
	movs r2, #4
	strb r2, [r4, r0]
	movs r0, #0x10
	subs r1, #0xe
	str r0, [r4, r1]
	movs r0, #1
	pop {r4, pc}
_0221FCEA:
	ldr r0, _0221FCF8 @ =0x00000B82
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	movs r0, #0
	pop {r4, pc}
	nop
_0221FCF8: .4byte 0x00000B82
_0221FCFC: .4byte ov10_02220C64
	thumb_func_end ov10_0221FC78

	thumb_func_start ov10_0221FD00
ov10_0221FD00: @ 0x0221FD00
	push {r3, r4, r5, lr}
	ldr r1, _0221FDF8 @ =0x00000B82
	adds r5, r0, #0
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _0221FD16
	cmp r1, #1
	beq _0221FD72
	cmp r1, #2
	beq _0221FD8A
	b _0221FDEA
_0221FD16:
	movs r1, #0
	movs r2, #1
	bl ov10_02220C94
	adds r0, r5, #0
	bl ov10_02220E70
	adds r0, r5, #0
	bl ov10_02220F1C
	bl ov10_02221004
	ldr r2, [r5]
	movs r0, #7
	ldr r1, [r2]
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	ldr r1, [r2, #0x24]
	add r2, sp, #0
	movs r3, #0
	bl FUN_0202F330
	ldr r1, [sp]
	ldr r0, _0221FDFC @ =0x00000BCC
	movs r4, #0
	str r1, [r5, r0]
	adds r0, r0, #4
	str r4, [r5, r0]
_0221FD4E:
	adds r0, r4, #0
	bl FUN_02032EE8
	cmp r0, #0
	beq _0221FD6A
	bl FUN_02025FCC
	cmp r0, #0
	bne _0221FD6A
	movs r0, #0xbd
	movs r1, #1
	lsls r0, r0, #4
	str r1, [r5, r0]
	b _0221FDEA
_0221FD6A:
	adds r4, r4, #1
	cmp r4, #8
	blt _0221FD4E
	b _0221FDEA
_0221FD72:
	movs r1, #0x1f
	mvns r1, r1
	adds r2, r1, #0
	adds r2, #0x10
	bl ov10_022214A0
	adds r0, r5, #0
	bl ov10_02221588
	bl FUN_02039734
	b _0221FDEA
_0221FD8A:
	ldr r1, [r5]
	movs r0, #0
	ldr r1, [r1, #0x24]
	bl FUN_0208C120
	ldr r0, _0221FE00 @ =ov10_02220C64
	adds r1, r5, #0
	bl FUN_02017798
	ldr r2, _0221FDF8 @ =0x00000B82
	movs r0, #0
	strb r0, [r5, r2]
	movs r3, #4
	subs r1, r2, #6
	strb r3, [r5, r1]
	subs r1, r2, #5
	movs r3, #2
	strb r3, [r5, r1]
	movs r1, #0xc
	subs r2, #0xe
	str r1, [r5, r2]
	ldr r3, [r5]
	ldr r2, _0221FE04 @ =0x0000025D
	ldr r3, [r3, #0x24]
	movs r1, #0x1a
	bl FUN_0200B144
	ldr r1, _0221FE08 @ =0x00000BAC
	str r0, [r5, r1]
	ldr r0, [r5]
	ldr r0, [r0, #0x24]
	bl FUN_0200B358
	movs r1, #0xbb
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r1, [r5]
	movs r0, #5
	ldr r1, [r1, #0x24]
	lsls r0, r0, #6
	bl FUN_02023790
	ldr r1, _0221FE0C @ =0x00000BB4
	str r0, [r5, r1]
	movs r0, #1
	adds r1, #8
	str r0, [r5, r1]
	pop {r3, r4, r5, pc}
_0221FDEA:
	ldr r0, _0221FDF8 @ =0x00000B82
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_0221FDF8: .4byte 0x00000B82
_0221FDFC: .4byte 0x00000BCC
_0221FE00: .4byte ov10_02220C64
_0221FE04: .4byte 0x0000025D
_0221FE08: .4byte 0x00000BAC
_0221FE0C: .4byte 0x00000BB4
	thumb_func_end ov10_0221FD00

	thumb_func_start ov10_0221FE10
ov10_0221FE10: @ 0x0221FE10
	push {r4, lr}
	adds r4, r0, #0
	bl FUN_0200F2AC
	cmp r0, #0
	bne _0221FE20
	movs r0, #0
	pop {r4, pc}
_0221FE20:
	ldr r1, _0221FE44 @ =0x00000B81
	adds r0, r1, #1
	ldrb r2, [r4, r1]
	ldrb r0, [r4, r0]
	cmp r2, r0
	bne _0221FE36
	movs r2, #0
	adds r0, r1, #1
	strb r2, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_0221FE36:
	adds r0, r1, #1
	ldrb r0, [r4, r0]
	adds r2, r0, #1
	adds r0, r1, #1
	strb r2, [r4, r0]
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_0221FE44: .4byte 0x00000B81
	thumb_func_end ov10_0221FE10

	thumb_func_start ov10_0221FE48
ov10_0221FE48: @ 0x0221FE48
	push {r3, r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl FUN_020192EC
	cmp r0, #0x18
	bgt _0221FEE4
	ldr r1, _0222000C @ =0x00000B82
	movs r2, #0
	adds r0, r1, #0
	strb r2, [r4, r1]
	subs r0, #0xa
	strh r2, [r4, r0]
	subs r1, #8
	strh r2, [r4, r1]
	ldr r0, [r4, #0xc]
	movs r1, #3
	movs r3, #0x18
	bl FUN_0201C63C
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r4, #0xc]
	movs r1, #2
	subs r3, #0x18
	bl FUN_0201C63C
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov10_02221188
	movs r2, #0
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl ov10_02221188
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl ov10_02221188
	movs r2, #0
	adds r0, r4, #0
	movs r1, #3
	adds r3, r2, #0
	bl ov10_02221188
	movs r1, #0
	adds r0, r4, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov10_02221440
	movs r2, #0
	adds r0, r4, #0
	movs r1, #1
	adds r3, r2, #0
	bl ov10_02221440
	movs r2, #0
	adds r0, r4, #0
	movs r1, #2
	adds r3, r2, #0
	bl ov10_02221440
	movs r2, #0
	adds r0, r4, #0
	movs r1, #3
	adds r3, r2, #0
	bl ov10_02221440
	movs r0, #1
	pop {r3, r4, r5, pc}
_0221FEE4:
	ldr r3, _02220010 @ =0x00000B74
	ldr r0, [r4, #0xc]
	ldr r3, [r4, r3]
	movs r1, #3
	movs r2, #2
	bl FUN_0201C63C
	ldr r3, _02220010 @ =0x00000B74
	ldr r0, [r4, #0xc]
	ldr r3, [r4, r3]
	movs r1, #2
	movs r2, #1
	bl FUN_0201C63C
	ldr r3, _0222000C @ =0x00000B82
	movs r1, #0
	ldrb r0, [r4, r3]
	adds r2, r3, #0
	subs r2, #0xe
	adds r0, r0, #1
	strb r0, [r4, r3]
	ldr r5, [r4, r2]
	ldrb r2, [r4, r3]
	adds r3, r5, #0
	adds r0, r4, #0
	muls r3, r2, r3
	movs r2, #1
	lsls r2, r2, #8
	subs r2, r3, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	adds r3, r1, #0
	bl ov10_02221188
	ldr r2, _02220010 @ =0x00000B74
	movs r1, #1
	ldr r3, [r4, r2]
	adds r2, #0xe
	adds r5, r3, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	movs r3, #0
	muls r5, r2, r5
	adds r2, r1, #0
	adds r2, #0xff
	subs r2, r5, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220010 @ =0x00000B74
	movs r1, #2
	ldr r3, [r4, r2]
	adds r2, #0xe
	adds r5, r3, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	movs r3, #0
	muls r5, r2, r5
	adds r2, r1, #0
	adds r2, #0xfe
	subs r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220010 @ =0x00000B74
	movs r1, #3
	ldr r3, [r4, r2]
	adds r2, #0xe
	adds r5, r3, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	movs r3, #0
	muls r5, r2, r5
	adds r2, r1, #0
	adds r2, #0xfd
	subs r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220010 @ =0x00000B74
	movs r1, #0
	ldr r3, [r4, r2]
	adds r2, #0xe
	adds r5, r3, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	adds r3, r1, #0
	muls r5, r2, r5
	movs r2, #1
	lsls r2, r2, #8
	subs r2, r5, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220010 @ =0x00000B74
	movs r1, #1
	ldr r3, [r4, r2]
	adds r2, #0xe
	adds r5, r3, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	movs r3, #0
	muls r5, r2, r5
	adds r2, r1, #0
	adds r2, #0xff
	subs r2, r5, r2
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220010 @ =0x00000B74
	movs r1, #2
	ldr r3, [r4, r2]
	adds r2, #0xe
	adds r5, r3, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	movs r3, #0
	muls r5, r2, r5
	adds r2, r1, #0
	adds r2, #0xfe
	subs r2, r2, r5
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220010 @ =0x00000B74
	adds r0, r4, #0
	ldr r3, [r4, r2]
	adds r2, #0xe
	ldrb r2, [r4, r2]
	adds r4, r3, #0
	movs r1, #3
	muls r4, r2, r4
	adds r2, r1, #0
	adds r2, #0xfd
	subs r2, r2, r4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	movs r3, #0
	bl ov10_02221440
	movs r0, #0
	pop {r3, r4, r5, pc}
	.align 2, 0
_0222000C: .4byte 0x00000B82
_02220010: .4byte 0x00000B74
	thumb_func_end ov10_0221FE48

	thumb_func_start ov10_02220014
ov10_02220014: @ 0x02220014
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl ov10_022218BC
	cmp r0, #0
	bne _02220030
	ldr r0, _02220210 @ =0x00000B82
	ldrb r1, [r5, r0]
	cmp r1, #0x18
	bls _02220030
	movs r1, #0
	strb r1, [r5, r0]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02220030:
	ldr r0, _02220210 @ =0x00000B82
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _02220050
	ldr r0, [r5]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0222004A
	ldr r0, _02220214 @ =0x00000715
	bl FUN_02005748
	b _02220050
_0222004A:
	ldr r0, _02220218 @ =0x00000852
	bl FUN_02005748
_02220050:
	ldr r0, _02220210 @ =0x00000B82
	ldrb r1, [r5, r0]
	cmp r1, #0x18
	bne _022200EC
	ldr r0, [r5, #0xc]
	movs r1, #3
	movs r2, #0
	movs r3, #0x18
	bl FUN_0201C63C
	movs r2, #0
	adds r3, r2, #0
	ldr r0, [r5, #0xc]
	movs r1, #2
	subs r3, #0x18
	bl FUN_0201C63C
	movs r1, #3
	ldr r0, [r5, #0xc]
	adds r2, r1, #0
	movs r3, #0
	bl FUN_0201C63C
	ldr r0, [r5, #0xc]
	movs r1, #2
	movs r2, #3
	movs r3, #0
	bl FUN_0201C63C
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov10_02221188
	movs r2, #0
	adds r0, r5, #0
	movs r1, #1
	adds r3, r2, #0
	bl ov10_02221188
	movs r2, #0
	adds r0, r5, #0
	movs r1, #2
	adds r3, r2, #0
	bl ov10_02221188
	movs r2, #0
	adds r0, r5, #0
	movs r1, #3
	adds r3, r2, #0
	bl ov10_02221188
	movs r1, #0
	adds r0, r5, #0
	adds r2, r1, #0
	adds r3, r1, #0
	bl ov10_02221440
	movs r2, #0
	adds r0, r5, #0
	movs r1, #1
	adds r3, r2, #0
	bl ov10_02221440
	movs r2, #0
	adds r0, r5, #0
	movs r1, #2
	adds r3, r2, #0
	bl ov10_02221440
	movs r2, #0
	adds r0, r5, #0
	movs r1, #3
	adds r3, r2, #0
	bl ov10_02221440
	b _02220204
_022200EC:
	blo _022200F0
	b _02220204
_022200F0:
	subs r0, r0, #6
	ldrsb r4, [r5, r0]
	bl FUN_0201D2E8
	adds r1, r4, #0
	blx FUN_020E1F6C
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
	ldr r0, _0222021C @ =0x00000B7D
	ldrsb r4, [r5, r0]
	bl FUN_0201D2E8
	adds r1, r4, #0
	blx FUN_020E1F6C
	lsrs r0, r4, #0x1f
	adds r0, r4, r0
	asrs r0, r0, #1
	subs r0, r1, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
	cmp r6, #0
	bge _02220130
	ldr r0, _02220220 @ =0x00000B78
	ldrsh r0, [r5, r0]
	cmp r0, #0
	blt _0222013C
_02220130:
	cmp r6, #0
	ble _02220146
	ldr r0, _02220220 @ =0x00000B78
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02220146
_0222013C:
	movs r0, #0
	mvns r0, r0
	muls r0, r6, r0
	lsls r0, r0, #0x10
	asrs r6, r0, #0x10
_02220146:
	cmp r4, #0
	bge _02220152
	ldr r0, _02220224 @ =0x00000B7A
	ldrsh r0, [r5, r0]
	cmp r0, #0
	blt _0222015E
_02220152:
	cmp r4, #0
	ble _02220168
	ldr r0, _02220224 @ =0x00000B7A
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02220168
_0222015E:
	movs r0, #0
	mvns r0, r0
	muls r0, r4, r0
	lsls r0, r0, #0x10
	asrs r4, r0, #0x10
_02220168:
	adds r3, r6, #0
	ldr r0, [r5, #0xc]
	movs r1, #3
	movs r2, #0
	adds r3, #0x18
	bl FUN_0201C63C
	adds r3, r6, #0
	ldr r0, [r5, #0xc]
	movs r1, #2
	movs r2, #0
	subs r3, #0x18
	bl FUN_0201C63C
	movs r1, #3
	ldr r0, [r5, #0xc]
	adds r2, r1, #0
	adds r3, r4, #0
	bl FUN_0201C63C
	ldr r0, [r5, #0xc]
	movs r1, #2
	movs r2, #3
	adds r3, r4, #0
	bl FUN_0201C63C
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov10_02221188
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov10_02221188
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov10_02221188
	adds r0, r5, #0
	movs r1, #3
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov10_02221188
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov10_02221440
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov10_02221440
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov10_02221440
	adds r0, r5, #0
	movs r1, #3
	adds r2, r6, #0
	adds r3, r4, #0
	bl ov10_02221440
	ldr r0, _02220220 @ =0x00000B78
	strh r6, [r5, r0]
	adds r0, r0, #2
	strh r4, [r5, r0]
_02220204:
	ldr r0, _02220210 @ =0x00000B82
	ldrb r1, [r5, r0]
	adds r1, r1, #1
	strb r1, [r5, r0]
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_02220210: .4byte 0x00000B82
_02220214: .4byte 0x00000715
_02220218: .4byte 0x00000852
_0222021C: .4byte 0x00000B7D
_02220220: .4byte 0x00000B78
_02220224: .4byte 0x00000B7A
	thumb_func_end ov10_02220014

	thumb_func_start ov10_02220228
ov10_02220228: @ 0x02220228
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _02220340 @ =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #8
	bne _02220250
	movs r0, #6
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r3, _02220344 @ =0x00007FFF
	ldr r0, [r0, #0x24]
	str r0, [sp, #8]
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_0200F174
_02220250:
	ldr r0, _02220340 @ =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #8
	blo _0222026C
	bl FUN_0200F2AC
	cmp r0, #1
	bne _0222026C
	ldr r0, _02220348 @ =0x00000B7F
	movs r1, #2
	strb r1, [r4, r0]
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_0222026C:
	ldr r0, _02220340 @ =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _0222027A
	ldr r0, _0222034C @ =0x00000719
	bl FUN_02005748
_0222027A:
	ldr r0, [r4, #0xc]
	movs r1, #3
	movs r2, #1
	movs r3, #0x10
	bl FUN_0201C63C
	movs r1, #2
	ldr r0, [r4, #0xc]
	adds r2, r1, #0
	movs r3, #0x10
	bl FUN_0201C63C
	ldr r2, _02220340 @ =0x00000B82
	movs r1, #0
	ldrb r0, [r4, r2]
	adds r3, r1, #0
	adds r0, r0, #1
	strb r0, [r4, r2]
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	lsls r2, r2, #4
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220340 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #1
	movs r3, #0
	lsls r2, r2, #4
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220340 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #2
	movs r3, #0
	lsls r2, r2, #0x14
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220340 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #3
	movs r3, #0
	lsls r2, r2, #0x14
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _02220340 @ =0x00000B82
	movs r1, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	adds r3, r1, #0
	lsls r2, r2, #4
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220340 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #1
	movs r3, #0
	lsls r2, r2, #4
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220340 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #2
	movs r3, #0
	lsls r2, r2, #0x14
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _02220340 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #3
	movs r3, #0
	lsls r2, r2, #0x14
	asrs r2, r2, #0x10
	bl ov10_02221440
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02220340: .4byte 0x00000B82
_02220344: .4byte 0x00007FFF
_02220348: .4byte 0x00000B7F
_0222034C: .4byte 0x00000719
	thumb_func_end ov10_02220228

	thumb_func_start ov10_02220350
ov10_02220350: @ 0x02220350
	ldr r1, _0222035C @ =0x00000B81
	movs r2, #0x10
	strb r2, [r0, r1]
	movs r0, #2
	bx lr
	nop
_0222035C: .4byte 0x00000B81
	thumb_func_end ov10_02220350

	thumb_func_start ov10_02220360
ov10_02220360: @ 0x02220360
	push {r4, lr}
	adds r4, r0, #0
	bl ov10_02220AD0
	cmp r0, #1
	ldr r0, [r4]
	bne _02220384
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	ldr r0, _0222039C @ =0x00000B7E
	bne _0222037E
	movs r1, #0
	strb r1, [r4, r0]
	b _02220398
_0222037E:
	movs r1, #1
	strb r1, [r4, r0]
	b _02220398
_02220384:
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	ldr r0, _0222039C @ =0x00000B7E
	bne _02220394
	movs r1, #1
	strb r1, [r4, r0]
	b _02220398
_02220394:
	movs r1, #0
	strb r1, [r4, r0]
_02220398:
	movs r0, #2
	pop {r4, pc}
	.align 2, 0
_0222039C: .4byte 0x00000B7E
	thumb_func_end ov10_02220360

	thumb_func_start ov10_022203A0
ov10_022203A0: @ 0x022203A0
	push {r3, lr}
	ldr r1, _022203B8 @ =0x00000B7E
	ldrb r1, [r0, r1]
	cmp r1, #0
	bne _022203B0
	bl ov10_022203BC
	pop {r3, pc}
_022203B0:
	bl ov10_022204C0
	pop {r3, pc}
	nop
_022203B8: .4byte 0x00000B7E
	thumb_func_end ov10_022203A0

	thumb_func_start ov10_022203BC
ov10_022203BC: @ 0x022203BC
	push {r3, r4, r5, lr}
	ldr r3, _022204B0 @ =0x00000B82
	adds r4, r0, #0
	ldrb r3, [r4, r3]
	movs r1, #2
	ldr r0, [r4, #0xc]
	lsls r5, r3, #1
	ldr r3, _022204B4 @ =0x02222A7C
	adds r2, r1, #0
	ldrb r3, [r3, r5]
	bl FUN_0201C63C
	ldr r3, _022204B0 @ =0x00000B82
	ldr r0, [r4, #0xc]
	ldrb r3, [r4, r3]
	movs r1, #3
	movs r2, #2
	lsls r5, r3, #1
	ldr r3, _022204B4 @ =0x02222A7C
	ldrb r3, [r3, r5]
	bl FUN_0201C63C
	ldr r2, _022204B0 @ =0x00000B82
	movs r1, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	lsls r3, r2, #1
	ldr r2, _022204B8 @ =0x02222A7D
	ldrb r2, [r2, r3]
	adds r3, r1, #0
	bl ov10_02221188
	ldr r2, _022204B0 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #1
	lsls r3, r2, #1
	ldr r2, _022204B8 @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	bl ov10_02221188
	ldr r2, _022204B0 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #2
	lsls r3, r2, #1
	ldr r2, _022204B8 @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	bl ov10_02221188
	ldr r2, _022204B0 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #3
	lsls r3, r2, #1
	ldr r2, _022204B8 @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	bl ov10_02221188
	ldr r2, _022204B0 @ =0x00000B82
	movs r1, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	lsls r3, r2, #1
	ldr r2, _022204B8 @ =0x02222A7D
	ldrb r2, [r2, r3]
	adds r3, r1, #0
	bl ov10_02221440
	ldr r2, _022204B0 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #1
	lsls r3, r2, #1
	ldr r2, _022204B8 @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	bl ov10_02221440
	ldr r2, _022204B0 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #2
	lsls r3, r2, #1
	ldr r2, _022204B8 @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	bl ov10_02221440
	ldr r2, _022204B0 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #3
	lsls r3, r2, #1
	ldr r2, _022204B8 @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	bl ov10_02221440
	ldr r0, _022204B0 @ =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02220496
	ldr r0, _022204BC @ =0x00000853
	bl FUN_02005748
_02220496:
	ldr r0, _022204B0 @ =0x00000B82
	ldrb r1, [r4, r0]
	cmp r1, #5
	bne _022204A6
	movs r1, #0
	strb r1, [r4, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_022204A6:
	adds r1, r1, #1
	strb r1, [r4, r0]
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022204B0: .4byte 0x00000B82
_022204B4: .4byte 0x02222A7C
_022204B8: .4byte 0x02222A7D
_022204BC: .4byte 0x00000853
	thumb_func_end ov10_022203BC

	thumb_func_start ov10_022204C0
ov10_022204C0: @ 0x022204C0
	push {r3, r4, r5, lr}
	ldr r3, _022205E4 @ =0x00000B82
	adds r4, r0, #0
	ldrb r3, [r4, r3]
	ldr r0, [r4, #0xc]
	movs r1, #2
	lsls r5, r3, #1
	ldr r3, _022205E8 @ =0x02222A7C
	movs r2, #1
	ldrb r3, [r3, r5]
	bl FUN_0201C63C
	ldr r3, _022205E4 @ =0x00000B82
	ldr r0, [r4, #0xc]
	ldrb r3, [r4, r3]
	movs r1, #3
	movs r2, #1
	lsls r5, r3, #1
	ldr r3, _022205E8 @ =0x02222A7C
	ldrb r3, [r3, r5]
	bl FUN_0201C63C
	ldr r2, _022205E4 @ =0x00000B82
	movs r1, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	lsls r3, r2, #1
	ldr r2, _022205EC @ =0x02222A7D
	ldrb r2, [r2, r3]
	adds r3, r1, #0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _022205E4 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #1
	lsls r3, r2, #1
	ldr r2, _022205EC @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _022205E4 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #2
	lsls r3, r2, #1
	ldr r2, _022205EC @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _022205E4 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #3
	lsls r3, r2, #1
	ldr r2, _022205EC @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221188
	ldr r2, _022205E4 @ =0x00000B82
	movs r1, #0
	ldrb r2, [r4, r2]
	adds r0, r4, #0
	lsls r3, r2, #1
	ldr r2, _022205EC @ =0x02222A7D
	ldrb r2, [r2, r3]
	adds r3, r1, #0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _022205E4 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #1
	lsls r3, r2, #1
	ldr r2, _022205EC @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _022205E4 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #2
	lsls r3, r2, #1
	ldr r2, _022205EC @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r2, _022205E4 @ =0x00000B82
	adds r0, r4, #0
	ldrb r2, [r4, r2]
	movs r1, #3
	lsls r3, r2, #1
	ldr r2, _022205EC @ =0x02222A7D
	ldrb r2, [r2, r3]
	movs r3, #0
	rsbs r2, r2, #0
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl ov10_02221440
	ldr r0, _022205E4 @ =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022205CA
	ldr r0, _022205F0 @ =0x00000853
	bl FUN_02005748
_022205CA:
	ldr r0, _022205E4 @ =0x00000B82
	ldrb r1, [r4, r0]
	cmp r1, #5
	bne _022205DA
	movs r1, #0
	strb r1, [r4, r0]
	movs r0, #1
	pop {r3, r4, r5, pc}
_022205DA:
	adds r1, r1, #1
	strb r1, [r4, r0]
	movs r0, #0
	pop {r3, r4, r5, pc}
	nop
_022205E4: .4byte 0x00000B82
_022205E8: .4byte 0x02222A7C
_022205EC: .4byte 0x02222A7D
_022205F0: .4byte 0x00000853
	thumb_func_end ov10_022204C0

	thumb_func_start ov10_022205F4
ov10_022205F4: @ 0x022205F4
	ldr r1, _02220600 @ =0x00000B81
	movs r2, #0x10
	strb r2, [r0, r1]
	movs r0, #2
	bx lr
	nop
_02220600: .4byte 0x00000B81
	thumb_func_end ov10_022205F4

	thumb_func_start ov10_02220604
ov10_02220604: @ 0x02220604
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, _0222068C @ =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _02220648
	movs r0, #2
	movs r1, #1
	bl FUN_0201FF0C
	movs r0, #1
	lsls r0, r0, #0x1a
	adds r3, r0, #0
	ldr r2, [r0]
	ldr r1, _02220690 @ =0xFFFF1FFF
	adds r3, #0x48
	ands r2, r1
	lsrs r1, r0, #0xd
	orrs r1, r2
	str r1, [r0]
	ldrh r5, [r3]
	movs r2, #0x3f
	movs r1, #0x1f
	bics r5, r2
	orrs r5, r1
	movs r1, #0x20
	orrs r1, r5
	strh r1, [r3]
	adds r0, #0x4a
	ldrh r3, [r0]
	movs r1, #0x1d
	bics r3, r2
	orrs r1, r3
	strh r1, [r0]
_02220648:
	ldr r3, _0222068C @ =0x00000B82
	ldrb r1, [r4, r3]
	cmp r1, #0x10
	bne _02220668
	movs r0, #0
	movs r1, #0x20
	strb r0, [r4, r3]
	subs r0, r3, #1
	strb r1, [r4, r0]
	lsls r2, r1, #0x15
	ldr r1, [r2]
	ldr r0, _02220690 @ =0xFFFF1FFF
	ands r0, r1
	str r0, [r2]
	movs r0, #1
	pop {r4, r5, r6, pc}
_02220668:
	movs r2, #0x47
	subs r2, r2, r1
	adds r1, #0x48
	lsls r1, r1, #0x18
	movs r6, #0xff
	ldr r0, _02220694 @ =0x04000040
	lsls r5, r2, #8
	lsls r2, r6, #8
	ands r2, r5
	lsrs r1, r1, #0x18
	strh r6, [r0]
	orrs r1, r2
	strh r1, [r0, #4]
	ldrb r0, [r4, r3]
	adds r0, r0, #1
	strb r0, [r4, r3]
	movs r0, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_0222068C: .4byte 0x00000B82
_02220690: .4byte 0xFFFF1FFF
_02220694: .4byte 0x04000040
	thumb_func_end ov10_02220604

	thumb_func_start ov10_02220698
ov10_02220698: @ 0x02220698
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022206D0 @ =0x0000071A
	bl FUN_02005748
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D3F4
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, _022206D4 @ =0x00000B81
	movs r1, #0x20
	strb r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_022206D0: .4byte 0x0000071A
_022206D4: .4byte 0x00000B81
	thumb_func_end ov10_02220698

	thumb_func_start ov10_022206D8
ov10_022206D8: @ 0x022206D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _022206F8 @ =0x0000071A
	bl FUN_02005748
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D3F4
	ldr r0, _022206FC @ =0x00000B81
	movs r1, #0x40
	strb r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_022206F8: .4byte 0x0000071A
_022206FC: .4byte 0x00000B81
	thumb_func_end ov10_022206D8

	thumb_func_start ov10_02220700
ov10_02220700: @ 0x02220700
	push {r3, r4, lr}
	sub sp, #0xc
	adds r4, r0, #0
	bl ov10_02222A08
	cmp r0, #0
	bne _02220718
	ldr r1, _02220894 @ =0x00000B81
	movs r0, #1
	add sp, #0xc
	strb r0, [r4, r1]
	pop {r3, r4, pc}
_02220718:
	movs r0, #0xbd
	lsls r0, r0, #4
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02220730
	subs r0, #0x10
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02220730
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_02220730:
	ldr r0, _02220898 @ =0x00000BBC
	ldr r1, [r4, r0]
	cmp r1, #5
	bne _0222073E
	add sp, #0xc
	movs r0, #0
	pop {r3, r4, pc}
_0222073E:
	cmp r1, #6
	beq _02220758
	cmp r1, #5
	beq _02220758
	cmp r1, #7
	beq _02220758
	cmp r1, #8
	beq _02220758
	movs r1, #7
	str r1, [r4, r0]
	movs r1, #0xff
	subs r0, #0x3a
	strb r1, [r4, r0]
_02220758:
	ldr r0, _0222089C @ =0x00000B82
	ldrb r1, [r4, r0]
	cmp r1, #0
	beq _0222076A
	cmp r1, #1
	beq _022207A8
	cmp r1, #2
	beq _02220842
	b _02220860
_0222076A:
	adds r0, r4, #0
	bl ov10_022229D4
	ldr r2, _022208A0 @ =0x00000BAC
	movs r1, #8
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	ldr r2, _022208A4 @ =0x00000B88
	str r3, [sp, #4]
	adds r0, r4, r2
	str r3, [sp, #8]
	adds r2, #0x2c
	ldr r2, [r4, r2]
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _022208A8 @ =0x00000BB8
	str r0, [r4, r1]
	adds r0, r4, #0
	bl ov10_02222A28
	ldr r0, _0222089C @ =0x00000B82
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	b _02220884
_022207A8:
	adds r2, r0, #2
	adds r0, r0, #4
	ldr r1, [r4]
	adds r2, r4, r2
	str r2, [sp]
	adds r0, r4, r0
	str r0, [sp, #4]
	ldr r2, [r1]
	movs r0, #7
	adds r1, #0x2c
	lsls r0, r0, #6
	ldr r0, [r2, r0]
	movs r2, #0
	ldrb r1, [r1]
	adds r3, r2, #0
	bl FUN_0202F41C
	cmp r0, #2
	bne _022207E4
	ldr r2, _022208A0 @ =0x00000BAC
	movs r1, #6
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	bl FUN_0200B1B8
	ldr r0, _022208AC @ =0x0000061B
	bl FUN_02005748
	b _022207F6
_022207E4:
	cmp r0, #3
	bne _02220884
	ldr r2, _022208A0 @ =0x00000BAC
	movs r1, #7
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	bl FUN_0200B1B8
_022207F6:
	adds r0, r4, #0
	bl ov10_02222A48
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, _022208A4 @ =0x00000B88
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	movs r3, #0
	str r3, [sp]
	ldr r2, _022208A4 @ =0x00000B88
	str r3, [sp, #4]
	adds r0, r4, r2
	str r3, [sp, #8]
	adds r2, #0x2c
	ldr r2, [r4, r2]
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _022208A8 @ =0x00000BB8
	movs r2, #0
	str r0, [r4, r1]
	adds r0, r1, #0
	subs r0, #0x37
	strb r2, [r4, r0]
	adds r0, r1, #0
	subs r0, #0x36
	ldrb r0, [r4, r0]
	subs r1, #0x36
	adds r0, r0, #1
	strb r0, [r4, r1]
	b _02220884
_02220842:
	subs r1, r0, #1
	ldrb r1, [r4, r1]
	adds r2, r1, #1
	subs r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r1]
	cmp r1, #0x1e
	bls _02220884
	movs r2, #0
	subs r1, r0, #1
	strb r2, [r4, r1]
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	b _02220884
_02220860:
	adds r0, r0, #6
	adds r0, r4, r0
	movs r1, #0
	bl FUN_0200E084
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0201C3C0
	ldr r0, _0222089C @ =0x00000B82
	movs r1, #0
	strb r1, [r4, r0]
	movs r1, #0x15
	subs r0, r0, #1
	strb r1, [r4, r0]
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02220884:
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0201C3C0
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_02220894: .4byte 0x00000B81
_02220898: .4byte 0x00000BBC
_0222089C: .4byte 0x00000B82
_022208A0: .4byte 0x00000BAC
_022208A4: .4byte 0x00000B88
_022208A8: .4byte 0x00000BB8
_022208AC: .4byte 0x0000061B
	thumb_func_end ov10_02220700

	thumb_func_start ov10_022208B0
ov10_022208B0: @ 0x022208B0
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r1, _02220938 @ =0x00000B82
	adds r4, r0, #0
	ldrb r1, [r4, r1]
	cmp r1, #0
	beq _022208C4
	cmp r1, #1
	beq _02220910
	b _02220926
_022208C4:
	bl ov10_022229D4
	ldr r2, _0222093C @ =0x00000BAC
	movs r1, #9
	ldr r0, [r4, r2]
	adds r2, #8
	ldr r2, [r4, r2]
	bl FUN_0200B1B8
	movs r3, #0
	str r3, [sp]
	ldr r2, _02220940 @ =0x00000B88
	str r3, [sp, #4]
	adds r0, r4, r2
	str r3, [sp, #8]
	adds r2, #0x2c
	ldr r2, [r4, r2]
	movs r1, #1
	bl FUN_0201D738
	ldr r1, _02220944 @ =0x00000BB8
	str r0, [r4, r1]
	movs r0, #0x3e
	bl FUN_020364F0
	ldr r0, _02220948 @ =0x00000BC8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02220906
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
_02220906:
	ldr r0, _02220938 @ =0x00000B82
	ldrb r1, [r4, r0]
	adds r1, r1, #1
	strb r1, [r4, r0]
	b _0222092A
_02220910:
	movs r0, #0x3e
	bl FUN_02036540
	cmp r0, #0
	beq _0222092A
	ldr r0, _02220938 @ =0x00000B82
	movs r1, #0
	strb r1, [r4, r0]
	add sp, #0xc
	movs r0, #1
	pop {r3, r4, pc}
_02220926:
	bl FUN_02022974
_0222092A:
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_0201C3C0
	movs r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.align 2, 0
_02220938: .4byte 0x00000B82
_0222093C: .4byte 0x00000BAC
_02220940: .4byte 0x00000B88
_02220944: .4byte 0x00000BB8
_02220948: .4byte 0x00000BC8
	thumb_func_end ov10_022208B0

	thumb_func_start ov10_0222094C
ov10_0222094C: @ 0x0222094C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	bl ov10_02220AD0
	cmp r0, #1
	ldr r0, [r4]
	bne _0222098E
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0222097A
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [r4, #8]
	movs r2, #0x40
	adds r3, r1, #0
	bl FUN_02003120
	b _022209BE
_0222097A:
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	movs r2, #0x40
	adds r3, r1, #0
	bl FUN_02003120
	b _022209BE
_0222098E:
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _022209AA
	movs r1, #0
	str r1, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, [r4, #8]
	movs r2, #0x40
	adds r3, r1, #0
	bl FUN_02003120
	b _022209BE
_022209AA:
	movs r0, #0x30
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r1, #0
	ldr r0, [r4, #8]
	movs r2, #0x40
	adds r3, r1, #0
	bl FUN_02003120
_022209BE:
	ldr r0, [r4, #8]
	movs r1, #1
	bl FUN_0200387C
	ldr r0, _022209D8 @ =0x0000071B
	bl FUN_02005748
	ldr r0, _022209DC @ =0x00000B81
	movs r1, #0x40
	strb r1, [r4, r0]
	movs r0, #1
	add sp, #8
	pop {r4, pc}
	.align 2, 0
_022209D8: .4byte 0x0000071B
_022209DC: .4byte 0x00000B81
	thumb_func_end ov10_0222094C

	thumb_func_start ov10_022209E0
ov10_022209E0: @ 0x022209E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02220A2C @ =0x00000B82
	ldrb r0, [r4, r0]
	cmp r0, #0
	bne _022209F2
	ldr r0, _02220A30 @ =0x00000719
	bl FUN_02005748
_022209F2:
	ldr r1, _02220A2C @ =0x00000B82
	ldrb r0, [r4, r1]
	cmp r0, #0x10
	bne _02220A08
	movs r0, #0
	strb r0, [r4, r1]
	movs r2, #0x40
	subs r0, r1, #1
	strb r2, [r4, r0]
	movs r0, #1
	pop {r4, pc}
_02220A08:
	adds r0, r0, #1
	strb r0, [r4, r1]
	ldrb r2, [r4, r1]
	movs r1, #0x10
	adds r0, r4, #0
	subs r1, r1, r2
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	bl ov10_02222340
	ldr r1, _02220A2C @ =0x00000B82
	adds r0, r4, #0
	ldrb r1, [r4, r1]
	bl ov10_02221C48
	movs r0, #0
	pop {r4, pc}
	nop
_02220A2C: .4byte 0x00000B82
_02220A30: .4byte 0x00000719
	thumb_func_end ov10_022209E0

	thumb_func_start ov10_02220A34
ov10_02220A34: @ 0x02220A34
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	movs r0, #1
	ldr r1, [r1, #0x24]
	bl FUN_0208C120
	ldr r0, _02220A4C @ =0x00000B7F
	movs r1, #2
	strb r1, [r4, r0]
	movs r0, #1
	pop {r4, pc}
	.align 2, 0
_02220A4C: .4byte 0x00000B7F
	thumb_func_end ov10_02220A34

	thumb_func_start ov10_02220A50
ov10_02220A50: @ 0x02220A50
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl FUN_0200F2AC
	cmp r0, #0
	bne _02220A62
	movs r0, #0
	pop {r3, r4, r5, pc}
_02220A62:
	movs r0, #0
	adds r1, r0, #0
	bl FUN_02017798
	adds r0, r4, #0
	bl ov10_02222A48
	ldr r0, [r4]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _02220A9A
	adds r0, r4, #0
	bl ov10_02220DCC
	adds r0, r4, #0
	bl ov10_02220DFC
	adds r0, r4, #0
	bl ov10_02220E30
	adds r0, r4, #0
	bl ov10_022218F4
	adds r0, r4, #0
	bl ov10_0222146C
	b _02220AA6
_02220A9A:
	adds r0, r4, #0
	bl ov10_02221A10
	adds r0, r4, #0
	bl ov10_022223E8
_02220AA6:
	adds r0, r4, #0
	bl ov10_02220BE8
	bl FUN_0201DC3C
	ldr r0, [r4, #8]
	movs r1, #0
	bl FUN_02002FA0
	ldr r0, [r4, #8]
	bl FUN_02002F54
	ldr r0, [r4]
	movs r1, #1
	adds r0, #0x2b
	strb r1, [r0]
	adds r0, r5, #0
	bl FUN_020067D0
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov10_02220A50

	thumb_func_start ov10_02220AD0
ov10_02220AD0: @ 0x02220AD0
	push {r3, lr}
	bl FUN_0203608C
	bl FUN_020362F4
	cmp r0, #3
	bhi _02220AFA
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02220AEA: @ jump table
	.2byte _02220AF2 - _02220AEA - 2 @ case 0
	.2byte _02220AF6 - _02220AEA - 2 @ case 1
	.2byte _02220AF2 - _02220AEA - 2 @ case 2
	.2byte _02220AF6 - _02220AEA - 2 @ case 3
_02220AF2:
	movs r0, #1
	pop {r3, pc}
_02220AF6:
	movs r0, #0
	pop {r3, pc}
_02220AFA:
	movs r0, #0
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov10_02220AD0

	thumb_func_start ov10_02220B00
ov10_02220B00: @ 0x02220B00
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x38
	adds r5, r0, #0
	str r1, [sp]
	ldr r1, [r5]
	movs r0, #0x40
	ldr r1, [r1, #0x24]
	adds r4, r2, #0
	bl FUN_0201DBEC
	ldr r0, [r5]
	ldr r0, [r0, #0x24]
	bl FUN_0200C6E4
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	bl FUN_0200C704
	movs r1, #0x65
	lsls r1, r1, #2
	add r2, sp, #0x18
	ldr r3, _02220B98 @ =0x02222BF0
	str r0, [r5, r1]
	ldm r3!, {r0, r1}
	adds r6, r2, #0
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r3, _02220B9C @ =0x02222ABC
	add r2, sp, #4
	ldm r3!, {r0, r1}
	adds r7, r2, #0
	stm r2!, {r0, r1}
	ldm r3!, {r0, r1}
	stm r2!, {r0, r1}
	ldr r0, [r3]
	adds r1, r6, #0
	str r0, [r2]
	movs r0, #0x65
	lsls r0, r0, #2
	str r4, [sp, #4]
	subs r0, r0, #4
	ldr r0, [r5, r0]
	adds r2, r7, #0
	movs r3, #0x10
	bl FUN_0200C73C
	movs r1, #0x19
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200C7C0
	movs r1, #0x19
	lsls r1, r1, #4
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	ldr r2, [sp]
	bl FUN_0200CB30
	movs r0, #0x10
	movs r1, #1
	bl FUN_0201FF0C
	add sp, #0x38
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02220B98: .4byte 0x02222BF0
_02220B9C: .4byte 0x02222ABC
	thumb_func_end ov10_02220B00

	thumb_func_start ov10_02220BA0
ov10_02220BA0: @ 0x02220BA0
	push {lr}
	sub sp, #0x34
	adds r2, r0, #0
	movs r0, #0
	add r3, sp, #0
	strh r0, [r3]
	strh r0, [r3, #2]
	strh r0, [r3, #4]
	strh r0, [r3, #6]
	ldr r3, [r1, #0x14]
	str r3, [sp, #8]
	ldr r3, [r1, #0x18]
	str r3, [sp, #0xc]
	movs r3, #1
	str r3, [sp, #0x10]
	ldr r3, [r1]
	str r3, [sp, #0x14]
	ldr r3, [r1, #4]
	str r3, [sp, #0x18]
	ldr r3, [r1, #8]
	str r3, [sp, #0x1c]
	ldr r3, [r1, #0xc]
	str r3, [sp, #0x20]
	ldr r1, [r1, #0x10]
	str r1, [sp, #0x2c]
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #0x30]
	ldr r0, [r2, r1]
	adds r1, r1, #4
	ldr r1, [r2, r1]
	add r2, sp, #0
	bl FUN_0200CE6C
	add sp, #0x34
	pop {pc}
	thumb_func_end ov10_02220BA0

	thumb_func_start ov10_02220BE8
ov10_02220BE8: @ 0x02220BE8
	push {r3, r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	movs r4, #0
	cmp r0, #0
	bls _02220C12
	movs r7, #0x21
	adds r5, r6, #0
	lsls r7, r7, #4
_02220BFE:
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	bl FUN_0200D0F4
	ldr r0, [r6, r7]
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, r0
	blo _02220BFE
_02220C12:
	movs r1, #0x19
	lsls r1, r1, #4
	ldr r0, [r6, r1]
	adds r1, r1, #4
	ldr r1, [r6, r1]
	bl FUN_0200D0B0
	movs r0, #0x19
	lsls r0, r0, #4
	ldr r0, [r6, r0]
	bl FUN_0200C8D4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov10_02220BE8

	thumb_func_start ov10_02220C2C
ov10_02220C2C: @ 0x02220C2C
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r0, #0x21
	lsls r0, r0, #4
	ldr r0, [r5, r0]
	movs r4, #0
	cmp r0, #0
	bls _02220C60
	movs r7, #0x66
	lsls r7, r7, #2
	adds r6, r7, #0
	adds r6, #0x78
_02220C44:
	lsls r0, r4, #2
	adds r0, r5, r0
	ldr r0, [r0, r7]
	movs r1, #1
	ldr r0, [r0]
	lsls r1, r1, #0xc
	bl FUN_02021E2C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, [r5, r6]
	cmp r4, r0
	blo _02220C44
_02220C60:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov10_02220C2C

	thumb_func_start ov10_02220C64
ov10_02220C64: @ 0x02220C64
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl FUN_0201C2B8
	ldr r0, [r4, #8]
	bl FUN_02003694
	bl FUN_0201DCAC
	bl FUN_0200C800
	ldr r3, _02220C8C @ =0x027E0000
	ldr r1, _02220C90 @ =0x00003FF8
	movs r0, #1
	ldr r2, [r3, r1]
	orrs r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02220C8C: .4byte 0x027E0000
_02220C90: .4byte 0x00003FF8
	thumb_func_end ov10_02220C64

	thumb_func_start ov10_02220C94
ov10_02220C94: @ 0x02220C94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r0, #0
	ldr r0, _02220DB0 @ =0x00000BA8
	adds r4, r1, #0
	ldr r6, _02220DB4 @ =0x02222A88
	str r4, [r5, r0]
	add r3, sp, #0x70
	adds r7, r2, #0
	adds r2, r3, #0
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	str r4, [sp, #0x7c]
	bl FUN_02018368
	ldr r6, _02220DB8 @ =0x02222B2C
	add r3, sp, #0x54
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #3
	str r0, [r3]
	ldr r0, [r5, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0xc]
	movs r1, #3
	bl FUN_02019EBC
	movs r1, #3
	adds r3, r1, #0
	ldr r0, [r5, #0xc]
	movs r2, #0
	adds r3, #0xfd
	bl FUN_0201C63C
	ldr r6, _02220DBC @ =0x02222B64
	add r3, sp, #0x38
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #2
	str r0, [r3]
	ldr r0, [r5, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_02019EBC
	movs r3, #0xff
	ldr r0, [r5, #0xc]
	movs r1, #2
	movs r2, #0
	mvns r3, r3
	bl FUN_0201C63C
	ldr r6, _02220DC0 @ =0x02222B80
	add r3, sp, #0x1c
	ldm r6!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r6!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r6]
	movs r1, #1
	str r0, [r3]
	ldr r0, [r5, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_02019EBC
	movs r0, #2
	movs r1, #0
	bl FUN_0201FF0C
	cmp r7, #1
	bne _02220D64
	ldr r0, [r5, #0xc]
	movs r1, #1
	movs r2, #3
	movs r3, #0x18
	bl FUN_02019184
_02220D64:
	cmp r4, #0
	bne _02220DAC
	ldr r4, _02220DC4 @ =0x02222BB8
	add r3, sp, #0
	ldm r4!, {r0, r1}
	adds r2, r3, #0
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldr r0, [r4]
	movs r1, #0
	str r0, [r3]
	ldr r0, [r5, #0xc]
	adds r3, r1, #0
	bl FUN_020183C4
	ldr r0, [r5, #0xc]
	movs r1, #0
	bl FUN_02019EBC
	ldr r0, _02220DC8 @ =0x00000BC8
	ldr r0, [r5, r0]
	cmp r0, #1
	bne _02220DA4
	movs r0, #1
	adds r1, r0, #0
	bl FUN_0201FF0C
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
_02220DA4:
	movs r0, #1
	movs r1, #0
	bl FUN_0201FF0C
_02220DAC:
	add sp, #0x80
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02220DB0: .4byte 0x00000BA8
_02220DB4: .4byte 0x02222A88
_02220DB8: .4byte 0x02222B2C
_02220DBC: .4byte 0x02222B64
_02220DC0: .4byte 0x02222B80
_02220DC4: .4byte 0x02222BB8
_02220DC8: .4byte 0x00000BC8
	thumb_func_end ov10_02220C94

	thumb_func_start ov10_02220DCC
ov10_02220DCC: @ 0x02220DCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02220DF4 @ =0x00000B94
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02220DE0
	subs r0, #0xc
	adds r0, r4, r0
	bl FUN_0201A8FC
_02220DE0:
	ldr r0, _02220DF8 @ =0x00000BA4
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02220DF0
	subs r0, #0xc
	adds r0, r4, r0
	bl FUN_0201A8FC
_02220DF0:
	pop {r4, pc}
	nop
_02220DF4: .4byte 0x00000B94
_02220DF8: .4byte 0x00000BA4
	thumb_func_end ov10_02220DCC

	thumb_func_start ov10_02220DFC
ov10_02220DFC: @ 0x02220DFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02220E28 @ =0x00000BB4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02220E0C
	bl FUN_020237BC
_02220E0C:
	movs r0, #0xbb
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02220E1A
	bl FUN_0200B3F0
_02220E1A:
	ldr r0, _02220E2C @ =0x00000BAC
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02220E26
	bl FUN_0200B190
_02220E26:
	pop {r4, pc}
	.align 2, 0
_02220E28: .4byte 0x00000BB4
_02220E2C: .4byte 0x00000BAC
	thumb_func_end ov10_02220DFC

	thumb_func_start ov10_02220E30
ov10_02220E30: @ 0x02220E30
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1f
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02019044
	ldr r0, _02220E6C @ =0x00000BA8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02220E64
	ldr r0, [r4, #0xc]
	movs r1, #0
	bl FUN_02019044
_02220E64:
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	pop {r4, pc}
	.align 2, 0
_02220E6C: .4byte 0x00000BA8
	thumb_func_end ov10_02220E30

	thumb_func_start ov10_02220E70
ov10_02220E70: @ 0x02220E70
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x6c
	ldr r1, [r1, #0x24]
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r2, [r5]
	movs r3, #1
	ldr r2, [r2, #0x24]
	adds r4, r0, #0
	str r2, [sp, #0xc]
	ldr r2, [r5, #0xc]
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r1, #4
	ldr r0, [r0, #0x24]
	movs r3, #1
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r1, #2
	ldr r0, [r0, #0x24]
	adds r3, r1, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	bl FUN_0200710C
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r1, #3
	ldr r0, [r0, #0x24]
	adds r3, r1, #0
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	bl FUN_0200710C
	movs r2, #0
	str r2, [sp]
	ldr r0, [r5]
	movs r1, #1
	ldr r0, [r0, #0x24]
	adds r3, r2, #0
	str r0, [sp, #4]
	adds r0, r4, #0
	bl FUN_02007130
	movs r1, #0
	ldr r0, [r5, #8]
	adds r2, r1, #0
	movs r3, #0xa0
	bl FUN_02003070
	ldr r1, _02220F18 @ =0x000018C6
	movs r0, #1
	bl FUN_0201975C
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	.align 2, 0
_02220F18: .4byte 0x000018C6
	thumb_func_end ov10_02220E70

	thumb_func_start ov10_02220F1C
ov10_02220F1C: @ 0x02220F1C
	push {r3, r4, lr}
	sub sp, #0x14
	adds r4, r0, #0
	ldr r0, _02220FF8 @ =0x00000BA8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _02220F40
	ldr r0, [r4]
	cmp r0, #0
	beq _02220F40
	ldr r1, [r0]
	cmp r1, #0
	beq _02220F40
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02220F44
_02220F40:
	bl FUN_02022974
_02220F44:
	ldr r0, [r4]
	ldr r1, [r0]
	movs r0, #0x13
	lsls r0, r0, #4
	ldr r0, [r1, r0]
	bl FUN_02027B50
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	ldr r0, [r4]
	movs r1, #0
	ldr r0, [r0, #0x24]
	movs r2, #1
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	movs r3, #0xf
	bl FUN_0200DD0C
	ldr r0, [r4, #8]
	movs r1, #0
	movs r2, #0xf0
	movs r3, #0x20
	bl FUN_02003070
	movs r1, #0
	str r1, [sp]
	ldr r0, [r4]
	movs r2, #0x1f
	ldr r0, [r0, #0x24]
	movs r3, #0xe
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	bl FUN_0200DAA4
	ldr r0, [r4, #8]
	movs r1, #0
	movs r2, #0xe0
	movs r3, #0x20
	bl FUN_02003070
	ldr r2, [r4]
	movs r1, #0x1a
	ldr r2, [r2, #0x24]
	movs r0, #0
	lsls r1, r1, #4
	bl FUN_02002E7C
	ldr r0, [r4, #8]
	movs r1, #0
	movs r2, #0xd0
	movs r3, #0x20
	bl FUN_02003070
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	ldr r1, _02220FFC @ =0x00000B88
	str r0, [sp, #0x10]
	ldr r0, [r4, #0xc]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	movs r0, #0x13
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	movs r0, #4
	str r0, [sp, #8]
	movs r0, #0xd
	str r0, [sp, #0xc]
	movs r0, #0x28
	ldr r1, _02221000 @ =0x00000B98
	str r0, [sp, #0x10]
	ldr r0, [r4, #0xc]
	adds r1, r4, r1
	movs r2, #0
	movs r3, #2
	bl FUN_0201A7E8
	add sp, #0x14
	pop {r3, r4, pc}
	.align 2, 0
_02220FF8: .4byte 0x00000BA8
_02220FFC: .4byte 0x00000B88
_02221000: .4byte 0x00000B98
	thumb_func_end ov10_02220F1C

	thumb_func_start ov10_02221004
ov10_02221004: @ 0x02221004
	push {r3, lr}
	ldr r0, _02221018 @ =0x04000050
	movs r3, #8
	movs r1, #2
	movs r2, #0x1c
	str r3, [sp]
	blx FUN_020BF55C
	pop {r3, pc}
	nop
_02221018: .4byte 0x04000050
	thumb_func_end ov10_02221004

	thumb_func_start ov10_0222101C
ov10_0222101C: @ 0x0222101C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _022210EC @ =0x02222B14
	add r3, sp, #0
	adds r6, r0, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r1, r2, #0
	adds r0, r6, #0
	movs r2, #0x15
	bl ov10_02220B00
	adds r0, r6, #0
	bl ov10_022210F4
	ldr r4, _022210F0 @ =0x02222DB4
	movs r7, #0
	adds r5, r6, #0
_0222104A:
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov10_02220BA0
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r7, r7, #1
	adds r4, #0x1c
	adds r5, r5, #4
	cmp r7, #0xc
	blo _0222104A
	movs r1, #0
	movs r2, #0xff
	adds r0, r6, #0
	mvns r2, r2
	adds r3, r1, #0
	bl ov10_02221188
	movs r2, #0xff
	adds r0, r6, #0
	movs r1, #1
	mvns r2, r2
	movs r3, #0
	bl ov10_02221188
	movs r1, #2
	adds r2, r1, #0
	adds r0, r6, #0
	adds r2, #0xfe
	movs r3, #0
	bl ov10_02221188
	movs r1, #3
	adds r2, r1, #0
	adds r0, r6, #0
	adds r2, #0xfd
	movs r3, #0
	bl ov10_02221188
	adds r0, r6, #0
	bl ov10_022212AC
	movs r0, #0x21
	movs r1, #0xc
	lsls r0, r0, #4
	str r1, [r6, r0]
	adds r0, r6, #0
	bl ov10_022213B8
	movs r1, #0
	movs r2, #0xff
	adds r0, r6, #0
	mvns r2, r2
	adds r3, r1, #0
	bl ov10_02221440
	movs r2, #0xff
	adds r0, r6, #0
	movs r1, #1
	mvns r2, r2
	movs r3, #0
	bl ov10_02221440
	movs r1, #2
	adds r2, r1, #0
	adds r0, r6, #0
	adds r2, #0xfe
	movs r3, #0
	bl ov10_02221440
	movs r1, #3
	adds r2, r1, #0
	adds r0, r6, #0
	adds r2, #0xfd
	movs r3, #0
	bl ov10_02221440
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022210EC: .4byte 0x02222B14
_022210F0: .4byte 0x02222DB4
	thumb_func_end ov10_0222101C

	thumb_func_start ov10_022210F4
ov10_022210F4: @ 0x022210F4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x1b
	ldr r1, [r1, #0x24]
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _02221184 @ =0x0000B807
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0xd0
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, _02221184 @ =0x0000B807
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	movs r2, #0x6c
	movs r3, #8
	bl FUN_0200CC9C
	movs r0, #1
	str r0, [sp]
	ldr r0, _02221184 @ =0x0000B807
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0xcf
	bl FUN_0200CE24
	movs r0, #1
	str r0, [sp]
	ldr r0, _02221184 @ =0x0000B807
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0xd1
	bl FUN_0200CE54
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02221184: .4byte 0x0000B807
	thumb_func_end ov10_022210F4

	thumb_func_start ov10_02221188
ov10_02221188: @ 0x02221188
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, _022211E4 @ =0x02222A64
	str r2, [sp]
	ldrb r5, [r4]
	str r3, [sp, #4]
	add r3, sp, #8
	strb r5, [r3]
	ldrb r5, [r4, #1]
	add r2, sp, #8
	movs r7, #0
	strb r5, [r3, #1]
	ldrb r5, [r4, #2]
	ldrb r4, [r4, #3]
	adds r6, r0, r1
	strb r5, [r3, #2]
	strb r4, [r3, #3]
	ldrb r2, [r2, r1]
	adds r4, r7, #0
	lsls r2, r2, #2
	adds r5, r0, r2
_022211B2:
	ldr r1, _022211E8 @ =0x00000B64
	movs r0, #0x66
	ldrb r1, [r6, r1]
	lsls r0, r0, #2
	ldr r0, [r5, r0]
	adds r2, r1, r4
	ldr r1, [sp]
	adds r1, r1, r2
	ldr r2, _022211EC @ =0x00000B68
	lsls r1, r1, #0x10
	ldrb r3, [r6, r2]
	ldr r2, [sp, #4]
	asrs r1, r1, #0x10
	adds r2, r2, r3
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	bl FUN_0200D4C4
	adds r7, r7, #1
	adds r4, #0x13
	adds r5, r5, #4
	cmp r7, #3
	blo _022211B2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022211E4: .4byte 0x02222A64
_022211E8: .4byte 0x00000B64
_022211EC: .4byte 0x00000B68
	thumb_func_end ov10_02221188

	thumb_func_start ov10_022211F0
ov10_022211F0: @ 0x022211F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r6, r0, #0
	adds r0, r1, #0
	str r1, [sp]
	str r2, [sp, #4]
	adds r7, r3, #0
	bl FUN_0207A0F8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	movs r5, #0
	ldr r0, [sp, #4]
	adds r4, r5, #0
	cmp r0, #0
	ble _022212A8
	lsls r0, r7, #2
	adds r6, r6, r0
_02221216:
	lsls r0, r4, #2
	adds r1, r6, r0
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_0200D364
	ldr r0, [sp, #8]
	cmp r0, r4
	bls _0222129C
	ldr r0, [sp]
	adds r1, r4, #0
	bl FUN_0207A0FC
	movs r1, #5
	movs r2, #0
	adds r7, r0, #0
	bl FUN_02074470
	cmp r0, #0
	beq _0222129C
	adds r0, r7, #0
	movs r1, #0x4c
	movs r2, #0
	bl FUN_02074470
	cmp r0, #0
	bne _0222129C
	adds r0, r7, #0
	bl FUN_0208E9F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bne _02221270
	lsls r0, r5, #2
	adds r1, r6, r0
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #3
	bl FUN_0200D364
	b _02221296
_02221270:
	cmp r0, #7
	beq _02221286
	lsls r0, r5, #2
	adds r1, r6, r0
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_0200D364
	b _02221296
_02221286:
	lsls r0, r5, #2
	adds r1, r6, r0
	movs r0, #0x66
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_0200D364
_02221296:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_0222129C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #4]
	cmp r4, r0
	blt _02221216
_022212A8:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov10_022211F0

	thumb_func_start ov10_022212AC
ov10_022212AC: @ 0x022212AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4]
	adds r1, r2, #0
	adds r1, #0x29
	ldrb r1, [r1]
	cmp r1, #0
	ldr r1, [r2, #4]
	bne _022212D6
	movs r2, #6
	movs r3, #0
	bl ov10_022211F0
	ldr r1, [r4]
	movs r2, #6
	ldr r1, [r1, #8]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov10_022211F0
	pop {r4, pc}
_022212D6:
	movs r2, #3
	movs r3, #0
	bl ov10_022211F0
	ldr r1, [r4]
	movs r2, #3
	ldr r1, [r1, #0xc]
	adds r0, r4, #0
	adds r3, r2, #0
	bl ov10_022211F0
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r1, [r1, #8]
	movs r2, #3
	movs r3, #6
	bl ov10_022211F0
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r1, [r1, #0x10]
	movs r2, #3
	movs r3, #9
	bl ov10_022211F0
	pop {r4, pc}
	.align 2, 0
	thumb_func_end ov10_022212AC

	thumb_func_start ov10_0222130C
ov10_0222130C: @ 0x0222130C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	adds r4, r0, #0
	movs r0, #0
	adds r5, r4, #0
	str r0, [sp]
	str r0, [sp, #4]
	adds r7, r2, #0
	adds r5, #0x10
	adds r6, r1, #0
	ldr r0, [r4, #0xc]
	adds r1, r5, #0
	movs r2, #8
	movs r3, #2
	bl FUN_0201A870
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0xc1
	lsls r0, r0, #0xa
	str r0, [sp, #8]
	adds r0, r5, #0
	adds r2, r7, #0
	adds r3, r1, #0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	ldr r0, _022213AC @ =0x00000B44
	ldr r0, [r4, r0]
	str r0, [sp, #0x10]
	movs r0, #0x65
	str r5, [sp, #0x14]
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	bl FUN_0200D9B0
	str r0, [sp, #0x18]
	movs r0, #0x65
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	ldr r1, _022213B0 @ =0x0000B807
	bl FUN_0200D04C
	movs r1, #0x3e
	lsls r2, r6, #4
	lsls r1, r1, #4
	subs r1, r1, r2
	lsls r1, r1, #5
	str r0, [sp, #0x1c]
	movs r0, #0
	str r1, [sp, #0x24]
	movs r1, #2
	str r0, [sp, #0x20]
	str r0, [sp, #0x28]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x34]
	movs r0, #1
	str r1, [sp, #0x30]
	str r0, [sp, #0x38]
	ldr r0, [r4]
	lsls r6, r6, #2
	ldr r0, [r0, #0x24]
	str r0, [sp, #0x3c]
	ldr r0, _022213B4 @ =0x00000B48
	adds r4, r4, r0
	add r0, sp, #0x10
	bl FUN_020127E8
	str r0, [r4, r6]
	ldr r0, [r4, r6]
	movs r1, #0
	bl FUN_02012A60
	adds r0, r5, #0
	bl FUN_0201A8FC
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022213AC: .4byte 0x00000B44
_022213B0: .4byte 0x0000B807
_022213B4: .4byte 0x00000B48
	thumb_func_end ov10_0222130C

	thumb_func_start ov10_022213B8
ov10_022213B8: @ 0x022213B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4]
	movs r0, #8
	ldr r1, [r1, #0x24]
	bl FUN_02012744
	ldr r1, _02221434 @ =0x00000B44
	str r0, [r4, r1]
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r2, [r2, #0x14]
	movs r1, #0
	bl ov10_0222130C
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r2, [r2, #0x18]
	movs r1, #2
	bl ov10_0222130C
	ldr r2, [r4]
	adds r0, r2, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	bne _02221406
	ldr r2, [r2, #0x1c]
	adds r0, r4, #0
	movs r1, #1
	bl ov10_0222130C
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r2, [r2, #0x20]
	movs r1, #3
	bl ov10_0222130C
	pop {r4, pc}
_02221406:
	ldr r2, [r2, #0x14]
	adds r0, r4, #0
	movs r1, #1
	bl ov10_0222130C
	ldr r2, [r4]
	adds r0, r4, #0
	ldr r2, [r2, #0x18]
	movs r1, #3
	bl ov10_0222130C
	ldr r0, _02221438 @ =0x00000B4C
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_020129D0
	ldr r0, _0222143C @ =0x00000B54
	movs r1, #0
	ldr r0, [r4, r0]
	bl FUN_020129D0
	pop {r4, pc}
	nop
_02221434: .4byte 0x00000B44
_02221438: .4byte 0x00000B4C
_0222143C: .4byte 0x00000B54
	thumb_func_end ov10_022213B8

	thumb_func_start ov10_02221440
ov10_02221440: @ 0x02221440
	push {r3, r4, r5, lr}
	adds r5, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	adds r4, r0, #0
	lsls r0, r5, #2
	adds r0, r4, r0
	ldr r3, _02221468 @ =0x00000B48
	adds r4, r4, r5
	adds r5, r3, #0
	ldr r0, [r0, r3]
	adds r5, #0x24
	adds r3, #0x28
	ldrb r5, [r4, r5]
	ldrb r3, [r4, r3]
	adds r1, r1, r5
	adds r2, r2, r3
	bl FUN_020128C4
	pop {r3, r4, r5, pc}
	.align 2, 0
_02221468: .4byte 0x00000B48
	thumb_func_end ov10_02221440

	thumb_func_start ov10_0222146C
ov10_0222146C: @ 0x0222146C
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, [r7]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	beq _02221496
	ldr r6, _02221498 @ =0x00000B48
	movs r4, #0
	adds r5, r7, #0
_02221480:
	ldr r0, [r5, r6]
	bl FUN_02012870
	adds r4, r4, #1
	adds r5, r5, #4
	cmp r4, #4
	blo _02221480
	ldr r0, _0222149C @ =0x00000B44
	ldr r0, [r7, r0]
	bl FUN_020127BC
_02221496:
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02221498: .4byte 0x00000B48
_0222149C: .4byte 0x00000B44
	thumb_func_end ov10_0222146C

	thumb_func_start ov10_022214A0
ov10_022214A0: @ 0x022214A0
	push {r3, r4, r5, r6}
	ldr r3, [r0]
	adds r3, #0x29
	ldrb r3, [r3]
	cmp r3, #1
	ldr r3, _02221584 @ =0x00000B64
	bne _0222152A
	movs r4, #0x14
	adds r5, r1, #0
	strb r4, [r0, r3]
	adds r5, #0x92
	adds r4, r3, #4
	strb r5, [r0, r4]
	movs r5, #0x51
	adds r4, r3, #1
	strb r5, [r0, r4]
	adds r5, r1, #0
	adds r5, #0xa2
	adds r4, r3, #5
	strb r5, [r0, r4]
	movs r5, #0x80
	adds r4, r3, #2
	strb r5, [r0, r4]
	adds r5, r2, #0
	adds r5, #0x2c
	adds r4, r3, #6
	strb r5, [r0, r4]
	movs r5, #0xbd
	adds r4, r3, #3
	strb r5, [r0, r4]
	adds r5, r2, #0
	adds r5, #0x3c
	adds r4, r3, #7
	strb r5, [r0, r4]
	adds r4, r3, #0
	movs r5, #0xb
	adds r4, #8
	strb r5, [r0, r4]
	adds r5, r1, #0
	adds r4, r3, #0
	adds r5, #0x78
	adds r4, #0xc
	strb r5, [r0, r4]
	adds r4, r3, #0
	movs r5, #0x4c
	adds r4, #9
	strb r5, [r0, r4]
	adds r4, r3, #0
	adds r1, #0x88
	adds r4, #0xd
	strb r1, [r0, r4]
	adds r1, r3, #0
	movs r4, #0x77
	adds r1, #0xa
	strb r4, [r0, r1]
	adds r4, r2, #0
	adds r1, r3, #0
	adds r4, #0x12
	adds r1, #0xe
	strb r4, [r0, r1]
	adds r1, r3, #0
	movs r4, #0xb8
	adds r1, #0xb
	strb r4, [r0, r1]
	adds r2, #0x22
	adds r3, #0xf
	strb r2, [r0, r3]
	pop {r3, r4, r5, r6}
	bx lr
_0222152A:
	movs r4, #0x18
	strb r4, [r0, r3]
	adds r4, r1, #0
	adds r4, #0xa0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r5, r3, #4
	strb r4, [r0, r5]
	movs r6, #0x51
	adds r5, r3, #1
	strb r6, [r0, r5]
	adds r5, r3, #5
	strb r4, [r0, r5]
	movs r5, #0x88
	adds r4, r3, #2
	strb r5, [r0, r4]
	adds r4, r2, #0
	adds r4, #0x30
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	adds r5, r3, #6
	strb r4, [r0, r5]
	movs r6, #0xc1
	adds r5, r3, #3
	strb r6, [r0, r5]
	adds r5, r3, #7
	strb r4, [r0, r5]
	adds r4, r3, #0
	movs r5, #0xf
	adds r4, #8
	strb r5, [r0, r4]
	adds r4, r3, #0
	adds r1, #0x86
	adds r4, #0xc
	strb r1, [r0, r4]
	adds r1, r3, #0
	movs r4, #0x80
	adds r1, #0xa
	strb r4, [r0, r1]
	adds r2, #0x16
	adds r3, #0xe
	strb r2, [r0, r3]
	pop {r3, r4, r5, r6}
	bx lr
	nop
_02221584: .4byte 0x00000B64
	thumb_func_end ov10_022214A0

	thumb_func_start ov10_02221588
ov10_02221588: @ 0x02221588
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r4, _02221664 @ =0x02222AE4
	add r3, sp, #0
	adds r6, r0, #0
	adds r2, r3, #0
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r4!, {r0, r1}
	stm r3!, {r0, r1}
	adds r1, r2, #0
	adds r0, r6, #0
	movs r2, #0x17
	bl ov10_02220B00
	adds r0, r6, #0
	bl ov10_022210F4
	adds r0, r6, #0
	bl ov10_0222166C
	ldr r4, _02221668 @ =0x02222DB4
	movs r7, #0
	adds r5, r6, #0
_022215BC:
	adds r0, r6, #0
	adds r1, r4, #0
	bl ov10_02220BA0
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r5, r1]
	adds r7, r7, #1
	adds r4, #0x1c
	adds r5, r5, #4
	cmp r7, #0xe
	blo _022215BC
	movs r1, #0
	movs r2, #0xff
	adds r0, r6, #0
	mvns r2, r2
	adds r3, r1, #0
	bl ov10_02221188
	movs r2, #0xff
	adds r0, r6, #0
	movs r1, #1
	mvns r2, r2
	movs r3, #0
	bl ov10_02221188
	movs r1, #2
	adds r2, r1, #0
	adds r0, r6, #0
	adds r2, #0xfe
	movs r3, #0
	bl ov10_02221188
	movs r1, #3
	adds r2, r1, #0
	adds r0, r6, #0
	adds r2, #0xfd
	movs r3, #0
	bl ov10_02221188
	adds r0, r6, #0
	bl ov10_022212AC
	adds r0, r6, #0
	bl ov10_022216E0
	adds r0, r6, #0
	bl ov10_022213B8
	movs r1, #0
	movs r2, #0xff
	adds r0, r6, #0
	mvns r2, r2
	adds r3, r1, #0
	bl ov10_02221440
	movs r2, #0xff
	adds r0, r6, #0
	movs r1, #1
	mvns r2, r2
	movs r3, #0
	bl ov10_02221440
	movs r1, #2
	adds r2, r1, #0
	adds r0, r6, #0
	adds r2, #0xfe
	movs r3, #0
	bl ov10_02221440
	movs r1, #3
	adds r2, r1, #0
	adds r0, r6, #0
	adds r2, #0xfd
	movs r3, #0
	bl ov10_02221440
	movs r0, #0x21
	movs r1, #0xe
	lsls r0, r0, #4
	str r1, [r6, r0]
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02221664: .4byte 0x02222AE4
_02221668: .4byte 0x02222DB4
	thumb_func_end ov10_02221588

	thumb_func_start ov10_0222166C
ov10_0222166C: @ 0x0222166C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x6c
	ldr r1, [r1, #0x24]
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022216DC @ =0x0000B808
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #5
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022216DC @ =0x0000B808
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #6
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _022216DC @ =0x0000B808
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #7
	bl FUN_0200CE54
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022216DC: .4byte 0x0000B808
	thumb_func_end ov10_0222166C

	thumb_func_start ov10_022216E0
ov10_022216E0: @ 0x022216E0
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3F4
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D3F4
	ldr r0, [r4]
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #3
	bne _02221722
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x80
	movs r2, #0x48
	bl FUN_0200D4C4
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #2
	bl FUN_0200D364
	pop {r4, pc}
_02221722:
	bl ov10_02220AD0
	cmp r0, #1
	ldr r0, [r4]
	bne _02221770
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _02221752
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x30
	movs r2, #0x48
	bl FUN_0200D4C4
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd0
	movs r2, #0x48
	bl FUN_0200D4C4
	b _022217B2
_02221752:
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd0
	movs r2, #0x48
	bl FUN_0200D4C4
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x30
	movs r2, #0x48
	bl FUN_0200D4C4
	b _022217B2
_02221770:
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _02221796
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd0
	movs r2, #0x48
	bl FUN_0200D4C4
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x30
	movs r2, #0x48
	bl FUN_0200D4C4
	b _022217B2
_02221796:
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0x30
	movs r2, #0x48
	bl FUN_0200D4C4
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0xd0
	movs r2, #0x48
	bl FUN_0200D4C4
_022217B2:
	movs r0, #0x72
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #0
	bl FUN_0200D364
	movs r0, #0x73
	lsls r0, r0, #2
	ldr r0, [r4, r0]
	movs r1, #1
	bl FUN_0200D364
	pop {r4, pc}
	thumb_func_end ov10_022216E0

	thumb_func_start ov10_022217CC
ov10_022217CC: @ 0x022217CC
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #2
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [r4]
	movs r2, #4
	ldr r0, [r0, #0x24]
	adds r3, r1, #0
	bl FUN_02024220
	ldr r1, _022218A4 @ =0x00000B58
	ldr r2, _022218A8 @ =0x04000060
	str r0, [r4, r1]
	ldrh r1, [r2]
	ldr r0, _022218AC @ =0xFFFFCFFF
	ands r1, r0
	movs r0, #8
	orrs r0, r1
	strh r0, [r2]
	bl FUN_02014000
	ldr r0, [r4]
	movs r1, #0x12
	ldr r0, [r0, #0x24]
	lsls r1, r1, #0xa
	bl FUN_02018144
	movs r2, #0xb6
	lsls r2, r2, #4
	str r0, [r4, r2]
	movs r0, #1
	str r0, [sp]
	ldr r0, [r4]
	movs r3, #0x12
	ldr r0, [r0, #0x24]
	ldr r1, _022218B0 @ =ov10_0222194C
	str r0, [sp, #4]
	ldr r0, _022218B4 @ =ov10_02221928
	ldr r2, [r4, r2]
	lsls r3, r3, #0xa
	bl FUN_02014014
	ldr r1, _022218B8 @ =0x00000B5C
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl FUN_02014784
	adds r2, r0, #0
	movs r0, #1
	movs r1, #0xe1
	lsls r0, r0, #0xc
	lsls r1, r1, #0xe
	bl FUN_020206BC
	ldr r2, [r4]
	movs r0, #0x3d
	ldr r2, [r2, #0x24]
	movs r1, #2
	bl FUN_020144C4
	adds r1, r0, #0
	ldr r0, _022218B8 @ =0x00000B5C
	movs r2, #0xa
	ldr r0, [r4, r0]
	movs r3, #1
	bl FUN_020144CC
	movs r1, #0
	ldr r0, _022218B8 @ =0x00000B5C
	adds r2, r1, #0
	ldr r0, [r4, r0]
	adds r3, r1, #0
	bl FUN_020146F4
	ldr r0, _022218B8 @ =0x00000B5C
	movs r2, #0
	ldr r0, [r4, r0]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_020146F4
	ldr r0, _022218B8 @ =0x00000B5C
	movs r2, #0
	ldr r0, [r4, r0]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_020146F4
	ldr r0, _022218B8 @ =0x00000B5C
	movs r2, #0
	ldr r0, [r4, r0]
	movs r1, #3
	adds r3, r2, #0
	bl FUN_020146F4
	ldr r0, _022218B8 @ =0x00000B5C
	movs r2, #0
	ldr r0, [r4, r0]
	movs r1, #4
	adds r3, r2, #0
	bl FUN_020146F4
	add sp, #8
	pop {r4, pc}
	nop
_022218A4: .4byte 0x00000B58
_022218A8: .4byte 0x04000060
_022218AC: .4byte 0xFFFFCFFF
_022218B0: .4byte ov10_0222194C
_022218B4: .4byte ov10_02221928
_022218B8: .4byte 0x00000B5C
	thumb_func_end ov10_022217CC

	thumb_func_start ov10_022218BC
ov10_022218BC: @ 0x022218BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	beq _022218CE
	movs r0, #0
	pop {r4, pc}
_022218CE:
	bl FUN_020241B4
	ldr r0, _022218F0 @ =0x00000B5C
	ldr r0, [r4, r0]
	bl FUN_02014710
	cmp r0, #0
	bne _022218E2
	movs r0, #0
	pop {r4, pc}
_022218E2:
	bl FUN_0201469C
	bl FUN_020146C0
	movs r0, #1
	pop {r4, pc}
	nop
_022218F0: .4byte 0x00000B5C
	thumb_func_end ov10_022218BC

	thumb_func_start ov10_022218F4
ov10_022218F4: @ 0x022218F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4]
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #1
	bne _0222191C
	ldr r0, _02221920 @ =0x00000B5C
	ldr r0, [r4, r0]
	bl FUN_0201411C
	movs r0, #0xb6
	lsls r0, r0, #4
	ldr r0, [r4, r0]
	bl FUN_020181C4
	ldr r0, _02221924 @ =0x00000B58
	ldr r0, [r4, r0]
	bl FUN_020242C4
_0222191C:
	pop {r4, pc}
	nop
_02221920: .4byte 0x00000B5C
_02221924: .4byte 0x00000B58
	thumb_func_end ov10_022218F4

	thumb_func_start ov10_02221928
ov10_02221928: @ 0x02221928
	push {r4, lr}
	ldr r3, _02221948 @ =0x02100DEC
	movs r2, #0
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bl FUN_020145B4
	cmp r4, #0
	bne _02221940
	bl FUN_02022974
_02221940:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_02221948: .4byte 0x02100DEC
	thumb_func_end ov10_02221928

	thumb_func_start ov10_0222194C
ov10_0222194C: @ 0x0222194C
	push {r4, lr}
	ldr r3, _0222196C @ =0x02100DF4
	movs r2, #1
	ldr r3, [r3]
	blx r3
	adds r4, r0, #0
	bl FUN_020145F4
	cmp r4, #0
	bne _02221964
	bl FUN_02022974
_02221964:
	lsls r0, r4, #0x10
	lsrs r0, r0, #0xd
	pop {r4, pc}
	nop
_0222196C: .4byte 0x02100DF4
	thumb_func_end ov10_0222194C

	thumb_func_start ov10_02221970
ov10_02221970: @ 0x02221970
	push {r4, r5, lr}
	sub sp, #0x64
	ldr r5, _02221A00 @ =0x02222A98
	add r3, sp, #0x54
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r0, r2, #0
	bl FUN_02018368
	ldr r5, _02221A04 @ =0x02222B9C
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02019EBC
	ldr r5, _02221A08 @ =0x02222B48
	add r3, sp, #0x1c
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02019EBC
	ldr r5, _02221A0C @ =0x02222BD4
	add r3, sp, #0
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
	ldr r0, [r4, #0xc]
	movs r3, #0
	bl FUN_020183C4
	add sp, #0x64
	pop {r4, r5, pc}
	nop
_02221A00: .4byte 0x02222A98
_02221A04: .4byte 0x02222B9C
_02221A08: .4byte 0x02222B48
_02221A0C: .4byte 0x02222BD4
	thumb_func_end ov10_02221970

	thumb_func_start ov10_02221A10
ov10_02221A10: @ 0x02221A10
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1e
	movs r1, #0
	bl FUN_0201FF0C
	ldr r0, [r4, #0xc]
	movs r1, #3
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_02019044
	ldr r0, [r4, #0xc]
	bl FUN_020181C4
	pop {r4, pc}
	thumb_func_end ov10_02221A10

	thumb_func_start ov10_02221A3C
ov10_02221A3C: @ 0x02221A3C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x14
	ldr r1, [r1, #0x24]
	bl FUN_02006C24
	movs r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, [r5]
	movs r3, #3
	ldr r1, [r1, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0xc]
	ldr r2, [r5, #0xc]
	movs r1, #0xf
	bl FUN_020070E8
	movs r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5]
	movs r1, #0x11
	ldr r0, [r0, #0x24]
	movs r3, #3
	str r0, [sp, #0xc]
	ldr r2, [r5, #0xc]
	adds r0, r4, #0
	bl FUN_0200710C
	ldr r2, [r5]
	adds r0, r4, #0
	ldr r2, [r2, #0x24]
	movs r1, #0x10
	bl FUN_02006CB8
	add r1, sp, #0x10
	adds r6, r0, #0
	blx FUN_020A71B0
	ldr r2, [sp, #0x10]
	movs r0, #3
	ldr r1, [r2, #0xc]
	ldr r2, [r2, #8]
	movs r3, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl FUN_0201972C
	ldr r1, [sp, #0x10]
	ldr r0, _02221ADC @ =0x000004E4
	ldr r1, [r1, #0xc]
	adds r0, r5, r0
	adds r1, #0x60
	movs r2, #0x60
	blx FUN_020D50B8
	adds r0, r6, #0
	bl FUN_020181C4
	ldr r0, [r5]
	movs r2, #0xa9
	lsls r2, r2, #2
	ldr r3, _02221AE0 @ =0x00000424
	adds r1, r5, r2
	adds r2, #0xc0
	ldr r0, [r0, #0x24]
	adds r2, r5, r2
	adds r3, r5, r3
	bl FUN_02081940
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.align 2, 0
_02221ADC: .4byte 0x000004E4
_02221AE0: .4byte 0x00000424
	thumb_func_end ov10_02221A3C

	thumb_func_start ov10_02221AE4
ov10_02221AE4: @ 0x02221AE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r6, _02221BB8 @ =0x02222A70
	movs r4, #0
	adds r7, r5, #0
_02221AF0:
	cmp r4, #0
	beq _02221AF8
	cmp r4, #3
	bne _02221B00
_02221AF8:
	movs r0, #0xa9
	lsls r0, r0, #2
	adds r1, r5, r0
	b _02221B16
_02221B00:
	movs r0, #0x86
	lsls r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #0
	bne _02221B10
	ldr r0, _02221BBC @ =0x00000424
	adds r1, r5, r0
	b _02221B16
_02221B10:
	movs r0, #0xd9
	lsls r0, r0, #2
	adds r1, r5, r0
_02221B16:
	movs r0, #0x10
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp, #0x14]
	movs r0, #6
	str r0, [sp, #0x18]
	ldrb r2, [r6]
	ldrb r3, [r6, #1]
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_020198E8
	movs r0, #0x86
	lsls r0, r0, #2
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02221BA2
	movs r0, #0x10
	str r0, [sp]
	movs r0, #6
	str r0, [sp, #4]
	adds r0, r4, #3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
	ldrb r2, [r6]
	ldrb r3, [r6, #1]
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_02019E2C
	cmp r4, #3
	bhs _02221B6E
	ldr r0, [r5]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #1
	beq _02221B7C
_02221B6E:
	cmp r4, #3
	blo _02221B90
	ldr r0, [r5]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _02221B90
_02221B7C:
	ldr r1, _02221BC0 @ =0x00000504
	adds r3, r4, #3
	lsls r3, r3, #0x15
	movs r0, #2
	adds r1, r5, r1
	movs r2, #0x20
	lsrs r3, r3, #0x10
	bl FUN_0201972C
	b _02221BA2
_02221B90:
	ldr r1, _02221BC4 @ =0x000004E4
	adds r3, r4, #3
	lsls r3, r3, #0x15
	movs r0, #2
	adds r1, r5, r1
	movs r2, #0x20
	lsrs r3, r3, #0x10
	bl FUN_0201972C
_02221BA2:
	adds r4, r4, #1
	adds r7, #0x18
	adds r6, r6, #2
	cmp r4, #6
	blo _02221AF0
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02221BB8: .4byte 0x02222A70
_02221BBC: .4byte 0x00000424
_02221BC0: .4byte 0x00000504
_02221BC4: .4byte 0x000004E4
	thumb_func_end ov10_02221AE4

	thumb_func_start ov10_02221BC8
ov10_02221BC8: @ 0x02221BC8
	push {r3, r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	str r1, [sp]
	adds r1, r2, #0
	bl FUN_02019FE4
	adds r6, r0, #0
	ldr r0, [r4]
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _02221BE6
	movs r7, #0x10
	b _02221BE8
_02221BE6:
	movs r7, #0
_02221BE8:
	movs r5, #0
_02221BEA:
	lsls r0, r5, #5
	adds r0, r7, r0
	lsls r4, r0, #1
	ldr r0, [sp]
	lsls r1, r5, #5
	adds r0, r0, r1
	adds r1, r6, r4
	movs r2, #0x20
	blx FUN_020D50B8
	adds r0, r6, r4
	movs r1, #0
	movs r2, #0x20
	blx FUN_020D5124
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x18
	blo _02221BEA
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov10_02221BC8

	thumb_func_start ov10_02221C14
ov10_02221C14: @ 0x02221C14
	push {r4, lr}
	ldr r1, _02221C40 @ =0x00000544
	adds r4, r0, #0
	adds r1, r4, r1
	movs r2, #1
	bl ov10_02221BC8
	ldr r1, _02221C44 @ =0x00000844
	adds r0, r4, #0
	adds r1, r4, r1
	movs r2, #2
	bl ov10_02221BC8
	ldr r0, [r4, #0xc]
	movs r1, #1
	bl FUN_0201C3C0
	ldr r0, [r4, #0xc]
	movs r1, #2
	bl FUN_0201C3C0
	pop {r4, pc}
	.align 2, 0
_02221C40: .4byte 0x00000544
_02221C44: .4byte 0x00000844
	thumb_func_end ov10_02221C14

	thumb_func_start ov10_02221C48
ov10_02221C48: @ 0x02221C48
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	adds r5, r0, #0
	ldr r0, [r5]
	adds r4, r1, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _02221CA8
	movs r0, #0x20
	subs r6, r0, r4
	ldr r1, _02221D0C @ =0x00000544
	str r4, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r1, r5, r1
	str r1, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	lsls r2, r6, #0x18
	str r3, [sp, #0x10]
	movs r1, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	movs r1, #1
	lsrs r2, r2, #0x18
	bl FUN_020198E8
	ldr r0, _02221D10 @ =0x00000844
	lsls r2, r6, #0x18
	str r4, [sp]
	movs r1, #0x18
	str r1, [sp, #4]
	adds r0, r5, r0
	str r0, [sp, #8]
	movs r3, #0
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	movs r0, #0x10
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	movs r1, #2
	lsrs r2, r2, #0x18
	bl FUN_020198E8
	b _02221CF6
_02221CA8:
	ldr r2, _02221D0C @ =0x00000544
	movs r0, #0x10
	str r4, [sp]
	movs r1, #0x18
	subs r6, r0, r4
	str r1, [sp, #4]
	adds r2, r5, r2
	str r2, [sp, #8]
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #0xc]
	movs r2, #0
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	ldr r0, [r5, #0xc]
	movs r1, #1
	adds r3, r2, #0
	bl FUN_020198E8
	ldr r1, _02221D10 @ =0x00000844
	movs r2, #0
	str r4, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r1, r5, r1
	str r1, [sp, #8]
	lsls r1, r6, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	movs r1, #0x10
	str r1, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r5, #0xc]
	movs r1, #2
	adds r3, r2, #0
	bl FUN_020198E8
_02221CF6:
	ldr r0, [r5, #0xc]
	movs r1, #1
	bl FUN_0201C3C0
	ldr r0, [r5, #0xc]
	movs r1, #2
	bl FUN_0201C3C0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_02221D0C: .4byte 0x00000544
_02221D10: .4byte 0x00000844
	thumb_func_end ov10_02221C48

	thumb_func_start ov10_02221D14
ov10_02221D14: @ 0x02221D14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r4, r0, #0
	adds r0, r1, #0
	str r1, [sp]
	adds r5, r2, #0
	bl FUN_0207A0F8
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #8]
	movs r0, #0x18
	muls r0, r5, r0
	adds r0, r4, r0
	movs r6, #0
	str r0, [sp, #4]
_02221D34:
	ldr r0, [sp, #8]
	cmp r0, r6
	bhi _02221D56
	movs r0, #0
	adds r1, r0, #0
	adds r2, r0, #0
	bl FUN_02079D8C
	movs r1, #0x18
	adds r2, r6, #0
	muls r2, r1, r2
	ldr r1, [sp, #4]
	adds r2, r1, r2
	movs r1, #0x85
	lsls r1, r1, #2
	str r0, [r2, r1]
	b _02221E30
_02221D56:
	ldr r0, [sp]
	adds r1, r6, #0
	bl FUN_0207A0FC
	movs r1, #0x18
	adds r2, r6, #0
	muls r2, r1, r2
	ldr r1, [sp, #4]
	adds r4, r0, #0
	adds r7, r1, r2
	bl FUN_02079D80
	movs r1, #0x85
	lsls r1, r1, #2
	str r0, [r7, r1]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x86
	lsls r1, r1, #2
	strh r0, [r7, r1]
	adds r0, r1, #0
	ldrh r0, [r7, r0]
	cmp r0, #0
	beq _02221E30
	movs r0, #0x18
	adds r1, r6, #0
	muls r1, r0, r1
	ldr r0, [sp, #4]
	movs r2, #0
	adds r5, r0, r1
	adds r0, r4, #0
	movs r1, #0x4c
	bl FUN_02074470
	ldr r1, _02221E40 @ =0x00000223
	movs r2, #0
	strb r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0xa3
	bl FUN_02074470
	ldr r1, _02221E44 @ =0x0000021A
	movs r2, #0
	strh r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0xa4
	bl FUN_02074470
	movs r1, #0x87
	lsls r1, r1, #2
	strh r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0xa1
	movs r2, #0
	bl FUN_02074470
	movs r1, #0x22
	lsls r1, r1, #4
	strb r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #0
	bl FUN_02074470
	ldr r1, _02221E48 @ =0x0000021E
	movs r2, #0
	strh r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0xa2
	bl FUN_02074470
	movs r1, #0x89
	lsls r1, r1, #2
	strb r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0x70
	movs r2, #0
	bl FUN_02074470
	ldr r1, _02221E4C @ =0x00000225
	movs r2, #0
	strb r0, [r5, r1]
	adds r0, r4, #0
	movs r1, #0xb0
	bl FUN_02074470
	cmp r0, #1
	bne _02221E10
	movs r1, #0
	b _02221E12
_02221E10:
	movs r1, #1
_02221E12:
	ldr r0, _02221E50 @ =0x00000222
	strb r1, [r7, r0]
	adds r0, r4, #0
	bl FUN_02075D6C
	ldr r1, _02221E54 @ =0x00000221
	strb r0, [r5, r1]
	adds r0, r4, #0
	bl FUN_0208E9F0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r0, #0x8a
	lsls r0, r0, #2
	str r1, [r5, r0]
_02221E30:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bhs _02221E3C
	b _02221D34
_02221E3C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02221E40: .4byte 0x00000223
_02221E44: .4byte 0x0000021A
_02221E48: .4byte 0x0000021E
_02221E4C: .4byte 0x00000225
_02221E50: .4byte 0x00000222
_02221E54: .4byte 0x00000221
	thumb_func_end ov10_02221D14

	thumb_func_start ov10_02221E58
ov10_02221E58: @ 0x02221E58
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x85
	lsls r0, r0, #2
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x90
	blx FUN_020D5124
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r1, [r1, #4]
	movs r2, #0
	bl ov10_02221D14
	ldr r1, [r4]
	adds r0, r4, #0
	ldr r1, [r1, #0xc]
	movs r2, #3
	bl ov10_02221D14
	pop {r4, pc}
	thumb_func_end ov10_02221E58

	thumb_func_start ov10_02221E84
ov10_02221E84: @ 0x02221E84
	push {r4, lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r0, #0x18
	muls r2, r0, r2
	ldr r1, _02221EE8 @ =0x0000021A
	adds r4, r3, r2
	ldrh r0, [r4, r1]
	cmp r0, #0
	bne _02221E9C
	movs r0, #0
	pop {r4, pc}
_02221E9C:
	adds r1, #0xe
	ldr r1, [r4, r1]
	cmp r1, #7
	beq _02221EAC
	cmp r1, #0
	beq _02221EAC
	movs r0, #5
	pop {r4, pc}
_02221EAC:
	movs r1, #0x87
	adds r2, r3, r2
	lsls r1, r1, #2
	ldrh r1, [r2, r1]
	movs r2, #0x30
	bl FUN_0208C104
	cmp r0, #4
	bhi _02221EE4
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02221ECA: @ jump table
	.2byte _02221EE4 - _02221ECA - 2 @ case 0
	.2byte _02221EE0 - _02221ECA - 2 @ case 1
	.2byte _02221EDC - _02221ECA - 2 @ case 2
	.2byte _02221ED8 - _02221ECA - 2 @ case 3
	.2byte _02221ED4 - _02221ECA - 2 @ case 4
_02221ED4:
	movs r0, #1
	pop {r4, pc}
_02221ED8:
	movs r0, #2
	pop {r4, pc}
_02221EDC:
	movs r0, #3
	pop {r4, pc}
_02221EE0:
	movs r0, #4
	pop {r4, pc}
_02221EE4:
	movs r0, #0
	pop {r4, pc}
	.align 2, 0
_02221EE8: .4byte 0x0000021A
	thumb_func_end ov10_02221E84

	thumb_func_start ov10_02221EEC
ov10_02221EEC: @ 0x02221EEC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #8]
	str r1, [sp]
	adds r0, r1, #0
	lsls r1, r0, #2
	ldr r0, [sp]
	ldr r2, _02222044 @ =0x02222C6C
	adds r7, r0, r1
	lsls r0, r7, #2
	adds r4, r5, r0
	ldr r0, [sp]
	movs r1, #0xa
	muls r1, r0, r1
	str r4, [sp, #4]
	adds r6, r2, r1
_02221F10:
	movs r1, #0x1c
	adds r2, r7, #0
	muls r2, r1, r2
	ldr r1, _02222048 @ =0x02222F3C
	adds r0, r5, #0
	adds r1, r1, r2
	bl ov10_02220BA0
	movs r1, #0x66
	lsls r1, r1, #2
	str r0, [r4, r1]
	adds r0, r1, #0
	ldrb r1, [r6]
	ldrb r2, [r6, #1]
	ldr r0, [r4, r0]
	bl FUN_0200D4C4
	ldr r0, [sp, #8]
	adds r7, r7, #1
	adds r0, r0, #1
	adds r4, r4, #4
	adds r6, r6, #2
	str r0, [sp, #8]
	cmp r0, #5
	blo _02221F10
	ldr r0, [sp]
	movs r2, #0x86
	movs r1, #0x18
	adds r6, r0, #0
	muls r6, r1, r6
	adds r3, r5, r6
	lsls r2, r2, #2
	ldrh r0, [r3, r2]
	cmp r0, #0
	bne _02221F78
	movs r5, #0
	adds r4, r2, #0
	adds r6, r5, #0
	subs r4, #0x80
_02221F5E:
	ldr r0, [sp, #4]
	adds r1, r6, #0
	ldr r0, [r0, r4]
	bl FUN_0200D3F4
	ldr r0, [sp, #4]
	adds r5, r5, #1
	adds r0, r0, #4
	str r0, [sp, #4]
	cmp r5, #5
	blo _02221F5E
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02221F78:
	ldr r1, [sp]
	movs r4, #0x14
	muls r4, r1, r4
	adds r1, r2, #0
	subs r1, #0x80
	adds r7, r5, r1
	adds r1, r2, #0
	adds r1, #0xd
	adds r2, #0xb
	ldrb r1, [r3, r1]
	ldrb r2, [r3, r2]
	bl FUN_02079EDC
	adds r1, r0, #0
	ldr r0, [r7, r4]
	bl FUN_0200D41C
	ldr r1, [sp]
	adds r0, r5, #0
	bl ov10_02221E84
	adds r1, r0, #0
	ldr r0, [r7, r4]
	bl FUN_0200D364
	ldr r1, _0222204C @ =0x0000021E
	adds r0, r5, r6
	ldrh r0, [r0, r1]
	cmp r0, #0
	bne _02221FC2
	adds r0, r5, r4
	subs r1, #0x82
	ldr r0, [r0, r1]
	movs r1, #0
	bl FUN_0200D3F4
	b _02221FE8
_02221FC2:
	bl FUN_0207D2D0
	cmp r0, #1
	bne _02221FDA
	movs r0, #0x67
	adds r1, r5, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #1
	bl FUN_0200D364
	b _02221FE8
_02221FDA:
	movs r0, #0x67
	adds r1, r5, r4
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_0200D364
_02221FE8:
	movs r0, #0x89
	adds r1, r5, r6
	lsls r0, r0, #2
	ldrb r1, [r1, r0]
	cmp r1, #0
	bne _02222002
	adds r1, r5, r4
	subs r0, #0x84
	ldr r0, [r1, r0]
	movs r1, #0
	bl FUN_0200D3F4
	b _0222200E
_02222002:
	adds r1, r5, r4
	subs r0, #0x84
	ldr r0, [r1, r0]
	movs r1, #2
	bl FUN_0200D364
_0222200E:
	movs r3, #0x8a
	adds r0, r5, r6
	lsls r3, r3, #2
	ldr r0, [r0, r3]
	cmp r0, #7
	bne _0222202A
	adds r0, r5, r4
	subs r3, #0x84
	ldr r0, [r0, r3]
	movs r1, #0
	bl FUN_0200D3F4
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0222202A:
	adds r0, r3, #0
	adds r1, r5, r4
	subs r0, #0x84
	ldr r0, [r1, r0]
	ldr r1, [sp, #8]
	movs r2, #0x18
	muls r2, r1, r2
	adds r1, r5, r2
	ldr r1, [r1, r3]
	bl FUN_0200D364
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_02222044: .4byte 0x02222C6C
_02222048: .4byte 0x02222F3C
_0222204C: .4byte 0x0000021E
	thumb_func_end ov10_02221EEC

	thumb_func_start ov10_02222050
ov10_02222050: @ 0x02222050
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r5, _022220B0 @ =0x02222AFC
	add r3, sp, #0
	adds r4, r0, #0
	adds r2, r3, #0
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	ldm r5!, {r0, r1}
	stm r3!, {r0, r1}
	adds r1, r2, #0
	adds r0, r4, #0
	movs r2, #0x1f
	bl ov10_02220B00
	adds r0, r4, #0
	bl ov10_022220B4
	adds r0, r4, #0
	bl ov10_0222216C
	adds r0, r4, #0
	bl ov10_02222208
	adds r0, r4, #0
	bl ov10_022222A4
	movs r5, #0
_0222208C:
	adds r0, r4, #0
	adds r1, r5, #0
	bl ov10_02221EEC
	adds r5, r5, #1
	cmp r5, #6
	blo _0222208C
	adds r0, r4, #0
	movs r1, #0x10
	bl ov10_02222340
	movs r0, #0x21
	movs r1, #0x1e
	lsls r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_022220B0: .4byte 0x02222AFC
	thumb_func_end ov10_02222050

	thumb_func_start ov10_022220B4
ov10_022220B4: @ 0x022220B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x13
	ldr r1, [r1, #0x24]
	bl FUN_02006C24
	adds r7, r0, #0
	bl FUN_02079FD0
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #3
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, _02222164 @ =0x0000B808
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r7, #0
	bl FUN_0200CD0C
	bl FUN_02079FD8
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02222168 @ =0x0000B809
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r7, #0
	bl FUN_0200CE24
	bl FUN_02079FE4
	adds r3, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _02222168 @ =0x0000B809
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r7, #0
	bl FUN_0200CE54
	movs r4, #0
	adds r6, r5, #0
_0222212C:
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02222168 @ =0x0000B809
	movs r1, #0x65
	adds r0, r4, r0
	str r0, [sp, #8]
	movs r0, #0x19
	movs r3, #0x85
	lsls r0, r0, #4
	lsls r1, r1, #2
	lsls r3, r3, #2
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	ldr r3, [r6, r3]
	adds r2, r7, #0
	bl FUN_0200CC3C
	adds r4, r4, #1
	adds r6, #0x18
	cmp r4, #6
	blo _0222212C
	adds r0, r7, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_02222164: .4byte 0x0000B808
_02222168: .4byte 0x0000B809
	thumb_func_end ov10_022220B4

	thumb_func_start ov10_0222216C
ov10_0222216C: @ 0x0222216C
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x14
	ldr r1, [r1, #0x24]
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _022221FC @ =0x0000B80F
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x14
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _02222200 @ =0x0000B809
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x15
	bl FUN_0200CD0C
	movs r0, #0
	str r0, [sp]
	ldr r0, _02222204 @ =0x0000B80A
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x13
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _02222204 @ =0x0000B80A
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x12
	bl FUN_0200CE54
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_022221FC: .4byte 0x0000B80F
_02222200: .4byte 0x0000B809
_02222204: .4byte 0x0000B80A
	thumb_func_end ov10_0222216C

	thumb_func_start ov10_02222208
ov10_02222208: @ 0x02222208
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x27
	ldr r1, [r1, #0x24]
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02222298 @ =0x0000B810
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x40
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, _0222229C @ =0x0000B80A
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x41
	bl FUN_0200CD0C
	movs r0, #0
	str r0, [sp]
	ldr r0, _022222A0 @ =0x0000B80B
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x3f
	bl FUN_0200CE24
	movs r0, #0
	str r0, [sp]
	ldr r0, _022222A0 @ =0x0000B80B
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #0x3e
	bl FUN_0200CE54
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02222298: .4byte 0x0000B810
_0222229C: .4byte 0x0000B80A
_022222A0: .4byte 0x0000B80B
	thumb_func_end ov10_02222208

	thumb_func_start ov10_022222A4
ov10_022222A4: @ 0x022222A4
	push {r3, r4, r5, lr}
	sub sp, #0x10
	adds r5, r0, #0
	ldr r1, [r5]
	movs r0, #0x14
	ldr r1, [r1, #0x24]
	bl FUN_02006C24
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	ldr r0, _02222334 @ =0x0000B811
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #8]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #2
	bl FUN_0200CC3C
	movs r0, #0
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	movs r0, #1
	str r0, [sp, #8]
	ldr r0, _02222338 @ =0x0000B80B
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #0xc]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #8
	bl FUN_0200CD0C
	movs r0, #0
	str r0, [sp]
	ldr r0, _0222233C @ =0x0000B80C
	movs r1, #0x19
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	movs r3, #1
	bl FUN_0200CE24
	movs r3, #0
	movs r1, #0x19
	ldr r0, _0222233C @ =0x0000B80C
	str r3, [sp]
	lsls r1, r1, #4
	str r0, [sp, #4]
	ldr r0, [r5, r1]
	adds r1, r1, #4
	ldr r1, [r5, r1]
	adds r2, r4, #0
	bl FUN_0200CE54
	adds r0, r4, #0
	bl FUN_02006CA8
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02222334: .4byte 0x0000B811
_02222338: .4byte 0x0000B80B
_0222233C: .4byte 0x0000B80C
	thumb_func_end ov10_022222A4

	thumb_func_start ov10_02222340
ov10_02222340: @ 0x02222340
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	ldr r0, [r0]
	adds r7, r1, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222235A
	movs r0, #3
	str r0, [sp, #8]
	lsls r0, r7, #0x13
	b _02222364
_0222235A:
	movs r0, #0
	str r0, [sp, #8]
	lsls r0, r7, #3
	rsbs r0, r0, #0
	lsls r0, r0, #0x10
_02222364:
	asrs r7, r0, #0x10
	movs r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	movs r1, #0xa
	ldr r2, _022223BC @ =0x02222C6C
	muls r1, r0, r1
	adds r0, r2, r1
	str r0, [sp, #4]
_02222376:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	ldr r4, [sp, #4]
	adds r1, r1, r0
	lsls r0, r1, #2
	adds r0, r1, r0
	lsls r1, r0, #2
	ldr r0, [sp]
	movs r6, #0
	adds r5, r0, r1
_0222238A:
	ldrb r1, [r4]
	movs r0, #0x66
	lsls r0, r0, #2
	adds r1, r7, r1
	lsls r1, r1, #0x10
	ldrb r2, [r4, #1]
	ldr r0, [r5, r0]
	asrs r1, r1, #0x10
	bl FUN_0200D4C4
	adds r6, r6, #1
	adds r4, r4, #2
	adds r5, r5, #4
	cmp r6, #5
	blt _0222238A
	ldr r0, [sp, #4]
	adds r0, #0xa
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	adds r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #3
	blt _02222376
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_022223BC: .4byte 0x02222C6C
	thumb_func_end ov10_02222340

	thumb_func_start ov10_022223C0
ov10_022223C0: @ 0x022223C0
	push {r3, r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r5, r7, #0
	ldr r4, _022223E4 @ =0x02222CF4
	movs r6, #0
	adds r5, #0x10
_022223CC:
	ldr r0, [r7, #0xc]
	adds r1, r5, #0
	adds r2, r4, #0
	bl FUN_0201A8D4
	adds r6, r6, #1
	adds r4, #8
	adds r5, #0x10
	cmp r6, #0x18
	blo _022223CC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022223E4: .4byte 0x02222CF4
	thumb_func_end ov10_022223C0

	thumb_func_start ov10_022223E8
ov10_022223E8: @ 0x022223E8
	push {r3, r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	adds r5, #0x10
_022223F0:
	adds r0, r5, #0
	bl FUN_0201A8FC
	adds r4, r4, #1
	adds r5, #0x10
	cmp r4, #0x18
	blo _022223F0
	pop {r3, r4, r5, pc}
	thumb_func_end ov10_022223E8

	thumb_func_start ov10_02222400
ov10_02222400: @ 0x02222400
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	ldr r4, [sp, #0x3c]
	adds r5, r0, #0
	adds r7, r5, #0
	lsls r0, r4, #6
	adds r7, #0x10
	str r0, [sp, #0x1c]
	str r1, [sp, #0x10]
	str r3, [sp, #0x14]
	ldr r6, [sp, #0x38]
	cmp r4, #3
	ldr r0, [r5]
	bhs _02222428
	ldr r0, [r0, #4]
	adds r1, r4, #0
	bl FUN_0207A0FC
	str r0, [sp, #0x18]
	b _02222432
_02222428:
	ldr r0, [r0, #0xc]
	subs r1, r4, #3
	bl FUN_0207A0FC
	str r0, [sp, #0x18]
_02222432:
	adds r1, r4, #0
	ldr r0, [sp, #0x10]
	adds r1, #8
	bl FUN_0200B1EC
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	bl FUN_02076B10
	adds r2, r0, #0
	ldr r0, [sp, #0x14]
	movs r1, #0
	bl FUN_0200B5CC
	ldr r0, [sp, #0x14]
	ldr r2, [sp, #0x20]
	adds r1, r6, #0
	bl FUN_0200C388
	ldr r0, [sp, #0x20]
	bl FUN_020237BC
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022224E4 @ =0x000F0E00
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	adds r3, r1, #0
	adds r0, r7, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	movs r0, #0x18
	muls r0, r4, r0
	adds r2, r5, r0
	ldr r0, _022224E8 @ =0x00000222
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _022224E0
	subs r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0
	bne _022224B8
	ldr r0, [sp, #0x10]
	movs r1, #0x1b
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	movs r0, #0xc1
	lsls r0, r0, #0xa
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r6, #0
	adds r0, r7, r0
	movs r3, #0x40
	str r1, [sp, #0xc]
	bl FUN_0201D78C
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
_022224B8:
	cmp r0, #1
	bne _022224E0
	ldr r0, [sp, #0x10]
	movs r1, #0x1c
	adds r2, r6, #0
	bl FUN_0200B1B8
	movs r1, #0
	str r1, [sp]
	movs r0, #0xff
	str r0, [sp, #4]
	ldr r0, _022224EC @ =0x00050600
	adds r2, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	movs r3, #0x40
	adds r0, r7, r0
	str r1, [sp, #0xc]
	bl FUN_0201D78C
_022224E0:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_022224E4: .4byte 0x000F0E00
_022224E8: .4byte 0x00000222
_022224EC: .4byte 0x00050600
	thumb_func_end ov10_02222400

	thumb_func_start ov10_022224F0
ov10_022224F0: @ 0x022224F0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r3, [sp, #0x24]
	adds r4, r0, #0
	lsls r5, r3, #2
	adds r5, r5, #1
	movs r1, #0
	adds r0, #0x10
	lsls r5, r5, #4
	str r1, [sp]
	adds r0, r0, r5
	str r0, [sp, #4]
	str r1, [sp, #8]
	movs r0, #2
	str r0, [sp, #0xc]
	adds r0, r2, #0
	movs r2, #0x18
	muls r2, r3, r2
	adds r3, r4, r2
	movs r2, #0x22
	lsls r2, r2, #4
	ldrb r2, [r3, r2]
	movs r1, #1
	movs r3, #3
	bl FUN_0200C648
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov10_022224F0

	thumb_func_start ov10_02222528
ov10_02222528: @ 0x02222528
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r1, [sp, #0x24]
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r7, r2, #0
	adds r2, r5, #0
	adds r0, r0, #2
	adds r6, r1, #0
	adds r2, #0x10
	lsls r0, r0, #4
	adds r4, r2, r0
	movs r0, #0x18
	muls r6, r0, r6
	str r4, [sp]
	movs r0, #0
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	ldr r1, _02222590 @ =0x0000021A
	adds r2, r5, r6
	ldrh r1, [r2, r1]
	adds r0, r7, #0
	movs r2, #3
	movs r3, #1
	bl FUN_0200C5BC
	movs r0, #2
	str r0, [sp]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r4, #0
	movs r3, #0x18
	bl FUN_0200C578
	movs r1, #0x87
	str r4, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	movs r0, #2
	str r0, [sp, #8]
	adds r2, r5, r6
	lsls r1, r1, #2
	ldrh r1, [r2, r1]
	adds r0, r7, #0
	movs r2, #3
	movs r3, #0
	bl FUN_0200C5BC
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02222590: .4byte 0x0000021A
	thumb_func_end ov10_02222528

	thumb_func_start ov10_02222594
ov10_02222594: @ 0x02222594
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r0, r1, #2
	adds r2, r5, #0
	adds r0, r0, #3
	adds r2, #0x10
	lsls r0, r0, #4
	adds r4, r2, r0
	movs r0, #0x18
	adds r6, r1, #0
	muls r6, r0, r6
	movs r0, #0x87
	lsls r0, r0, #2
	adds r7, r5, r0
	subs r0, r0, #2
	adds r0, r5, r0
	str r0, [sp, #8]
	ldrh r0, [r0, r6]
	ldrh r1, [r7, r6]
	movs r2, #0x30
	bl FUN_0208C104
	cmp r0, #4
	bhi _02222622
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_022225D2: @ jump table
	.2byte _02222622 - _022225D2 - 2 @ case 0
	.2byte _0222260C - _022225D2 - 2 @ case 1
	.2byte _022225F4 - _022225D2 - 2 @ case 2
	.2byte _022225DC - _022225D2 - 2 @ case 3
	.2byte _022225DC - _022225D2 - 2 @ case 4
_022225DC:
	ldrb r3, [r4, #9]
	ldr r1, _02222678 @ =0x000004F6
	movs r0, #1
	lsls r3, r3, #4
	adds r3, #9
	lsls r3, r3, #0x11
	adds r1, r5, r1
	movs r2, #4
	lsrs r3, r3, #0x10
	bl FUN_0201972C
	b _02222622
_022225F4:
	ldrb r3, [r4, #9]
	ldr r1, _0222267C @ =0x00000516
	movs r0, #1
	lsls r3, r3, #4
	adds r3, #9
	lsls r3, r3, #0x11
	adds r1, r5, r1
	movs r2, #4
	lsrs r3, r3, #0x10
	bl FUN_0201972C
	b _02222622
_0222260C:
	ldrb r3, [r4, #9]
	ldr r1, _02222680 @ =0x00000536
	movs r0, #1
	lsls r3, r3, #4
	adds r3, #9
	lsls r3, r3, #0x11
	adds r1, r5, r1
	movs r2, #4
	lsrs r3, r3, #0x10
	bl FUN_0201972C
_02222622:
	ldr r0, [sp, #8]
	ldrh r1, [r7, r6]
	ldrh r0, [r0, r6]
	movs r2, #0x30
	bl FUN_0208C0BC
	adds r5, r0, #0
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #2
	bl FUN_0201AE78
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #2
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #9
	movs r2, #0
	movs r3, #3
	bl FUN_0201AE78
	lsls r0, r5, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp]
	movs r0, #1
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0xa
	movs r2, #0
	movs r3, #5
	bl FUN_0201AE78
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02222678: .4byte 0x000004F6
_0222267C: .4byte 0x00000516
_02222680: .4byte 0x00000536
	thumb_func_end ov10_02222594

	thumb_func_start ov10_02222684
ov10_02222684: @ 0x02222684
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r7, r0, #0
	ldr r6, [sp, #0x2c]
	adds r5, r7, #0
	str r1, [sp, #8]
	adds r5, #0x10
	lsls r4, r6, #6
	adds r0, r5, r4
	movs r1, #0
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	bl FUN_0201ADA4
	adds r0, r5, r4
	adds r0, #0x10
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, r4
	adds r0, #0x20
	movs r1, #0
	bl FUN_0201ADA4
	adds r0, r5, r4
	adds r0, #0x30
	movs r1, #0
	bl FUN_0201ADA4
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	adds r0, r7, #0
	str r6, [sp, #4]
	bl ov10_02222400
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	adds r0, r7, #0
	str r6, [sp, #4]
	bl ov10_022224F0
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	adds r0, r7, #0
	str r6, [sp, #4]
	bl ov10_02222528
	adds r0, r7, #0
	adds r1, r6, #0
	bl ov10_02222594
	adds r0, r5, r4
	bl FUN_0201A9A4
	adds r0, r5, r4
	adds r0, #0x10
	bl FUN_0201A9A4
	adds r0, r5, r4
	adds r0, #0x20
	bl FUN_0201A9A4
	adds r0, r5, r4
	adds r0, #0x30
	bl FUN_0201A9A4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov10_02222684

	thumb_func_start ov10_02222720
ov10_02222720: @ 0x02222720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	adds r6, r0, #0
	ldr r3, [r6]
	ldr r2, _022227A0 @ =0x000001C5
	ldr r3, [r3, #0x24]
	movs r0, #0
	movs r1, #0x1a
	bl FUN_0200B144
	ldr r3, [r6]
	str r0, [sp, #0x10]
	ldr r3, [r3, #0x24]
	movs r0, #0xf
	movs r1, #0xe
	movs r2, #0
	bl FUN_0200C440
	str r0, [sp, #0xc]
	ldr r0, [r6]
	ldr r0, [r0, #0x24]
	bl FUN_0200B358
	ldr r1, [r6]
	str r0, [sp, #8]
	ldr r1, [r1, #0x24]
	movs r0, #0x20
	bl FUN_02023790
	adds r7, r0, #0
	movs r4, #0
	adds r5, r6, #0
_02222760:
	movs r0, #0x86
	lsls r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r0, #0
	beq _0222277A
	ldr r1, [sp, #0x10]
	str r7, [sp]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	adds r0, r6, #0
	str r4, [sp, #4]
	bl ov10_02222684
_0222277A:
	adds r4, r4, #1
	adds r5, #0x18
	cmp r4, #6
	blo _02222760
	adds r0, r7, #0
	bl FUN_020237BC
	ldr r0, [sp, #0x10]
	bl FUN_0200B190
	ldr r0, [sp, #0xc]
	bl FUN_0200C560
	ldr r0, [sp, #8]
	bl FUN_0200B3F0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022227A0: .4byte 0x000001C5
	thumb_func_end ov10_02222720

	thumb_func_start ov10_022227A4
ov10_022227A4: @ 0x022227A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	adds r4, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _02222828
	bl FUN_0203608C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	ldr r1, [r4]
	subs r0, r0, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	movs r0, #0x57
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	bl FUN_0203A2DC
	cmp r0, #1
	bne _02222820
	movs r0, #1
	adds r7, r5, #0
	eors r7, r0
	movs r0, #0x34
	ldr r1, [r4]
	muls r0, r7, r0
	adds r0, r1, r0
	adds r0, #0x29
	ldrb r0, [r0]
	bl FUN_020793AC
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x24]
	movs r1, #0x10
	bl FUN_02018144
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_020362F4
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	adds r1, r5, #0
	movs r2, #8
	bl FUN_02023DF0
	ldr r1, [sp, #0x10]
	ldr r3, [r4, #0x24]
	adds r0, r5, #0
	adds r2, r6, #0
	bl FUN_0202C174
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_020181C4
	b _022229BE
_02222820:
	bl FUN_0203895C
	cmp r0, #4
	bls _0222282A
_02222828:
	b _022229CE
_0222282A:
	adds r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	add pc, r0
_02222836: @ jump table
	.2byte _022229BA - _02222836 - 2 @ case 0
	.2byte _02222840 - _02222836 - 2 @ case 1
	.2byte _0222288C - _02222836 - 2 @ case 2
	.2byte _022228D8 - _02222836 - 2 @ case 3
	.2byte _02222924 - _02222836 - 2 @ case 4
_02222840:
	movs r0, #1
	adds r7, r5, #0
	eors r7, r0
	movs r0, #0x34
	ldr r1, [r4]
	muls r0, r7, r0
	adds r0, r1, r0
	adds r0, #0x29
	ldrb r0, [r0]
	bl FUN_020793AC
	str r0, [sp, #0x14]
	ldr r0, [r4, #0x24]
	movs r1, #0x10
	bl FUN_02018144
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_020362F4
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	adds r1, r5, #0
	movs r2, #8
	bl FUN_02023DF0
	ldr r1, [sp, #0x14]
	ldr r3, [r4, #0x24]
	adds r0, r5, #0
	adds r2, r6, #0
	bl FUN_0202BFCC
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_020181C4
	b _022229BE
_0222288C:
	movs r0, #1
	adds r7, r5, #0
	eors r7, r0
	movs r0, #0x34
	ldr r1, [r4]
	muls r0, r7, r0
	adds r0, r1, r0
	adds r0, #0x29
	ldrb r0, [r0]
	bl FUN_020793AC
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x24]
	movs r1, #0x10
	bl FUN_02018144
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_020362F4
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	adds r1, r5, #0
	movs r2, #8
	bl FUN_02023DF0
	ldr r1, [sp, #0x18]
	ldr r3, [r4, #0x24]
	adds r0, r5, #0
	adds r2, r6, #0
	bl FUN_0202C00C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_020181C4
	b _022229BE
_022228D8:
	movs r0, #1
	adds r7, r5, #0
	eors r7, r0
	movs r0, #0x34
	ldr r1, [r4]
	muls r0, r7, r0
	adds r0, r1, r0
	adds r0, #0x29
	ldrb r0, [r0]
	bl FUN_020793AC
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x24]
	movs r1, #0x10
	bl FUN_02018144
	adds r5, r0, #0
	adds r0, r7, #0
	bl FUN_020362F4
	lsls r0, r0, #2
	adds r0, r4, r0
	ldr r0, [r0, #0x14]
	adds r1, r5, #0
	movs r2, #8
	bl FUN_02023DF0
	ldr r1, [sp, #0x1c]
	ldr r3, [r4, #0x24]
	adds r0, r5, #0
	adds r2, r6, #0
	bl FUN_0202C0AC
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_020181C4
	b _022229BE
_02222924:
	ldr r0, [r4, #0x24]
	movs r1, #0x10
	bl FUN_02018144
	adds r5, r0, #0
	ldr r0, [r4, #0x24]
	movs r1, #0x10
	bl FUN_02018144
	adds r7, r0, #0
	bl ov10_02220AD0
	cmp r0, #1
	ldr r0, [r4]
	bne _0222296E
	adds r0, #0x5d
	ldrb r0, [r0]
	bl FUN_020793AC
	str r0, [sp, #8]
	ldr r0, [r4]
	adds r0, #0xc5
	ldrb r0, [r0]
	bl FUN_020793AC
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	adds r1, r5, #0
	movs r2, #8
	bl FUN_02023DF0
	ldr r0, [r4, #0x20]
	adds r1, r7, #0
	movs r2, #8
	bl FUN_02023DF0
	b _02222998
_0222296E:
	adds r0, #0x29
	ldrb r0, [r0]
	bl FUN_020793AC
	str r0, [sp, #8]
	ldr r0, [r4]
	adds r0, #0x91
	ldrb r0, [r0]
	bl FUN_020793AC
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x14]
	adds r1, r5, #0
	movs r2, #8
	bl FUN_02023DF0
	ldr r0, [r4, #0x1c]
	adds r1, r7, #0
	movs r2, #8
	bl FUN_02023DF0
_02222998:
	str r6, [sp]
	ldr r0, [r4, #0x24]
	adds r1, r7, #0
	str r0, [sp, #4]
	ldr r2, [sp, #8]
	ldr r3, [sp, #0xc]
	adds r0, r5, #0
	bl FUN_0202C04C
	adds r6, r0, #0
	adds r0, r5, #0
	bl FUN_020181C4
	adds r0, r7, #0
	bl FUN_020181C4
	b _022229BE
_022229BA:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
_022229BE:
	movs r0, #0x52
	ldr r1, [r4]
	lsls r0, r0, #2
	ldr r0, [r1, r0]
	adds r1, r6, #0
	movs r2, #4
	bl FUN_0202B758
_022229CE:
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
	thumb_func_end ov10_022227A4

	thumb_func_start ov10_022229D4
ov10_022229D4: @ 0x022229D4
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0xd8
	str r0, [sp]
	movs r0, #0x20
	str r0, [sp, #4]
	ldr r0, _02222A04 @ =0x00000B88
	movs r2, #0
	adds r0, r4, r0
	movs r1, #0xf
	adds r3, r2, #0
	bl FUN_0201AE78
	ldr r0, _02222A04 @ =0x00000B88
	movs r1, #0
	adds r0, r4, r0
	movs r2, #1
	movs r3, #0xf
	bl FUN_0200E060
	add sp, #8
	pop {r4, pc}
	nop
_02222A04: .4byte 0x00000B88
	thumb_func_end ov10_022229D4

	thumb_func_start ov10_02222A08
ov10_02222A08: @ 0x02222A08
	push {r3, lr}
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #7
	lsls r0, r0, #6
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02222A20
	bl FUN_0202F250
	cmp r0, #0
	bne _02222A24
_02222A20:
	movs r0, #0
	pop {r3, pc}
_02222A24:
	movs r0, #1
	pop {r3, pc}
	thumb_func_end ov10_02222A08

	thumb_func_start ov10_02222A28
ov10_02222A28: @ 0x02222A28
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02222A44 @ =0x00000BC4
	ldr r1, [r4, r0]
	cmp r1, #0
	bne _02222A42
	subs r0, #0x3c
	adds r0, r4, r0
	movs r1, #1
	bl FUN_0200E7FC
	ldr r1, _02222A44 @ =0x00000BC4
	str r0, [r4, r1]
_02222A42:
	pop {r4, pc}
	.align 2, 0
_02222A44: .4byte 0x00000BC4
	thumb_func_end ov10_02222A28

	thumb_func_start ov10_02222A48
ov10_02222A48: @ 0x02222A48
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _02222A60 @ =0x00000BC4
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _02222A5E
	bl FUN_0200EBA0
	ldr r0, _02222A60 @ =0x00000BC4
	movs r1, #0
	str r1, [r4, r0]
_02222A5E:
	pop {r4, pc}
	.align 2, 0
_02222A60: .4byte 0x00000BC4
	thumb_func_end ov10_02222A48
	@ 0x02222A64
