	.include "macros/function.inc"


	.text

	thumb_func_start ov57_021D0D80
ov57_021D0D80: @ 0x021D0D80
	push {r3, lr}
	movs r2, #2
	movs r0, #3
	movs r1, #0x4d
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	bl FUN_02001028
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov57_021D0D80

	thumb_func_start ov57_021D0D98
ov57_021D0D98: @ 0x021D0D98
	push {r3, lr}
	bl FUN_02006840
	ldr r1, [r0, #8]
	movs r0, #0x4d
	bl ov57_021D0F44
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov57_021D0D98

	thumb_func_start ov57_021D0DAC
ov57_021D0DAC: @ 0x021D0DAC
	push {r3, lr}
	movs r0, #0x4d
	bl FUN_0201807C
	movs r0, #0
	ldr r1, _021D0DC4 @ =0x020F6824
	mvns r0, r0
	bl FUN_02000EC4
	movs r0, #1
	pop {r3, pc}
	nop
_021D0DC4: .4byte 0x020F6824
	thumb_func_end ov57_021D0DAC

	thumb_func_start ov57_021D0DC8
ov57_021D0DC8: @ 0x021D0DC8
	push {r3, lr}
	movs r2, #2
	movs r0, #3
	movs r1, #0x4d
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	bl FUN_02001028
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov57_021D0DC8

	thumb_func_start ov57_021D0DE0
ov57_021D0DE0: @ 0x021D0DE0
	push {r4, lr}
	bl FUN_02006840
	ldr r4, [r0, #8]
	movs r0, #0x4d
	adds r1, r4, #0
	movs r2, #1
	bl ov57_021D0EAC
	adds r0, r4, #0
	bl FUN_02025E5C
	bl FUN_02017434
	movs r0, #1
	pop {r4, pc}
	thumb_func_end ov57_021D0DE0

	thumb_func_start ov57_021D0E00
ov57_021D0E00: @ 0x021D0E00
	push {r3, lr}
	movs r0, #0x4d
	bl FUN_0201807C
	movs r0, #0
	ldr r1, _021D0E18 @ =0x020EA10C
	mvns r0, r0
	bl FUN_02000EC4
	movs r0, #1
	pop {r3, pc}
	nop
_021D0E18: .4byte 0x020EA10C
	thumb_func_end ov57_021D0E00

	thumb_func_start ov57_021D0E1C
ov57_021D0E1C: @ 0x021D0E1C
	push {r3, lr}
	movs r2, #2
	movs r0, #3
	movs r1, #0x4d
	lsls r2, r2, #0x10
	bl FUN_02017FC8
	bl FUN_02001028
	movs r0, #1
	pop {r3, pc}
	.align 2, 0
	thumb_func_end ov57_021D0E1C

	thumb_func_start ov57_021D0E34
ov57_021D0E34: @ 0x021D0E34
	push {r3, r4, r5, lr}
	bl FUN_02006840
	ldr r4, [r0, #8]
	adds r0, r4, #0
	bl FUN_02025CCC
	adds r5, r0, #0
	movs r0, #0x4d
	adds r1, r4, #0
	bl ov57_021D0F30
	adds r0, r4, #0
	movs r1, #0
	bl FUN_02027A68
	adds r0, r5, #0
	bl FUN_02025D10
	cmp r0, #0
	beq _021D0E68
	adds r0, r5, #0
	bl FUN_02025D40
	cmp r0, #0
	bne _021D0E82
_021D0E68:
	adds r0, r4, #0
	bl FUN_02025CD8
	bl FUN_02025DE8
	adds r0, r5, #0
	bl FUN_02025CE4
	adds r0, r4, #0
	bl FUN_0207A268
	bl FUN_02077B8C
_021D0E82:
	adds r0, r4, #0
	bl FUN_02025E5C
	bl FUN_02017434
	movs r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov57_021D0E34

	thumb_func_start ov57_021D0E90
ov57_021D0E90: @ 0x021D0E90
	push {r3, lr}
	movs r0, #0x4d
	bl FUN_0201807C
	movs r0, #0
	ldr r1, _021D0EA8 @ =0x020EA11C
	mvns r0, r0
	bl FUN_02000EC4
	movs r0, #1
	pop {r3, pc}
	nop
_021D0EA8: .4byte 0x020EA11C
	thumb_func_end ov57_021D0E90

	thumb_func_start ov57_021D0EAC
ov57_021D0EAC: @ 0x021D0EAC
	push {r3, r4, r5, r6, r7, lr}
	adds r5, r1, #0
	str r0, [sp]
	adds r0, r5, #0
	adds r6, r2, #0
	bl FUN_02025CCC
	bl FUN_02025CE4
	adds r0, r5, #0
	bl FUN_02025CD8
	bl FUN_02025D84
	adds r0, r5, #0
	bl FUN_0202B4A0
	adds r4, r0, #0
	bl FUN_0201D35C
	adds r2, r0, #0
	adds r0, r4, #0
	movs r1, #1
	bl FUN_0202B40C
	adds r0, r5, #0
	bl FUN_0206C008
	adds r0, r5, #0
	bl FUN_02025E38
	adds r4, r0, #0
	bl FUN_0201D35C
	adds r7, r0, #0
	cmp r6, #0
	beq _021D0EFE
	adds r0, r4, #0
	adds r1, r7, #0
	bl FUN_02025F1C
_021D0EFE:
	adds r0, r4, #0
	bl FUN_02025F30
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	bl FUN_0205C9BC
	adds r1, r0, #0
	lsls r1, r1, #0x18
	adds r0, r4, #0
	lsrs r1, r1, #0x18
	bl FUN_02025F90
	adds r0, r5, #0
	bl FUN_02027854
	ldr r1, [sp]
	ldr r2, _021D0F2C @ =0x021D0FA0
	movs r3, #0x76
	bl FUN_02027B90
	pop {r3, r4, r5, r6, r7, pc}
	.align 2, 0
_021D0F2C: .4byte 0x021D0FA0
	thumb_func_end ov57_021D0EAC

	thumb_func_start ov57_021D0F30
ov57_021D0F30: @ 0x021D0F30
	push {r3, lr}
	adds r0, r1, #0
	bl FUN_020246A8
	cmp r0, #0
	bne _021D0F42
	movs r0, #0
	blx FUN_020C3EE4
_021D0F42:
	pop {r3, pc}
	thumb_func_end ov57_021D0F30

	thumb_func_start ov57_021D0F44
ov57_021D0F44: @ 0x021D0F44
	push {r4, lr}
	adds r4, r1, #0
	adds r0, r4, #0
	bl FUN_0202479C
	adds r0, r4, #0
	bl FUN_0203D1A8
	adds r0, r4, #0
	bl FUN_02025E38
	ldr r1, _021D0F6C @ =0x00000BB8
	bl FUN_02025F78
	adds r0, r4, #0
	bl FUN_020507E4
	bl FUN_0206A92C
	pop {r4, pc}
	.align 2, 0
_021D0F6C: .4byte 0x00000BB8
	thumb_func_end ov57_021D0F44
	@ 0x021D0F70
