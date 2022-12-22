	.include "macros/function.inc"
	.include "include/ov100_021D13E4.inc"

	

	.text


	thumb_func_start ov100_021D13E4
ov100_021D13E4: ; 0x021D13E4
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r1, _021D1494 ; =0x000007D8
	add r5, r0, #0
	mov r0, #0x6f
	bl sub_02018144
	ldr r2, _021D1494 ; =0x000007D8
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r1, r5, #0
	mov r0, #0x7d
	add r1, #0xc
	lsl r0, r0, #4
	str r1, [r4, r0]
	add r5, #0xd0
	ldr r1, [r5, #0]
	add r0, r0, #4
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov100_021D1808
	add r0, r4, #0
	bl ov100_021D1A54
	add r0, r4, #0
	add r0, #0xc
	mov r1, #0x6f
	bl ov100_021D4E3C
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _021D1498 ; =0x04001014
	mov r1, #0
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsr r0, r0, #0xe
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	add r0, r4, #0
	ldr r3, _021D149C ; =0x000002AA
	add r0, #0xc
	mov r2, #0xbf
	bl ov100_021D4E70
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	ldr r0, [r1, #0x18]
	add r1, #0x44
	bl ov100_021D1758
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	mov r0, #0x19
	ldr r1, [r2, #0x48]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [r2, #0x48]
	ldr r0, _021D14A0 ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	mov r0, #8
	str r0, [sp]
	ldr r0, _021D14A4 ; =0x04000050
	mov r1, #4
	mov r2, #0x32
	mov r3, #7
	bl G2x_SetBlendAlpha_
	mov r0, #1
	bl ov100_021D4DC8
	mov r0, #0
	mov r1, #0xa
	bl sub_0200564C
	add r0, r4, #0
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_021D1494: .word 0x000007D8
_021D1498: .word 0x04001014
_021D149C: .word 0x000002AA
_021D14A0: .word 0x04001050
_021D14A4: .word 0x04000050
	thumb_func_end ov100_021D13E4

	thumb_func_start ov100_021D14A8
ov100_021D14A8: ; 0x021D14A8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #6
	bhi _021D14F2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D14C0: ; jump table
	.short _021D14CE - _021D14C0 - 2 ; case 0
	.short _021D14EA - _021D14C0 - 2 ; case 1
	.short _021D150E - _021D14C0 - 2 ; case 2
	.short _021D154C - _021D14C0 - 2 ; case 3
	.short _021D15B0 - _021D14C0 - 2 ; case 4
	.short _021D1614 - _021D14C0 - 2 ; case 5
	.short _021D163C - _021D14C0 - 2 ; case 6
_021D14CE:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_021D14EA:
	bl sub_0200F2AC
	cmp r0, #0
	bne _021D14F4
_021D14F2:
	b _021D1686
_021D14F4:
	ldr r1, _021D16A0 ; =0x00000429
	mov r0, #0x12
	mov r2, #0
	bl sub_02004550
	mov r1, #0
	mov r0, #0x3f
	add r2, r1, #0
	bl sub_02004550
	mov r0, #2
	str r0, [r4, #0]
	b _021D1686
_021D150E:
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r1, [r4, #8]
	sub r0, #0x28
	mul r0, r1
	add r0, r2, r0
	mov r1, #1
	bl sub_02017348
	ldr r1, [r4, #8]
	mov r2, #0x62
	lsl r2, r2, #2
	add r3, r1, #0
	mul r3, r2
	mov r0, #1
	add r3, r4, r3
	lsl r1, r2, #1
	str r0, [r3, r1]
	ldr r1, [r4, #8]
	mul r2, r1
	mov r1, #0xc7
	add r2, r4, r2
	lsl r1, r1, #2
	str r0, [r2, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	b _021D1686
_021D154C:
	ldr r0, [r4, #8]
	ldr r2, [r4, #4]
	lsl r1, r0, #1
	ldr r0, _021D16A4 ; =0x021D523E
	ldrh r0, [r0, r1]
	cmp r2, r0
	bne _021D1560
	ldr r0, _021D16A8 ; =0x000005C7
	bl sub_02005748
_021D1560:
	ldr r1, [r4, #8]
	ldr r0, _021D16AC ; =0x021D522C
	lsl r2, r1, #1
	ldrh r0, [r0, r2]
	ldr r3, [r4, #4]
	cmp r3, r0
	bne _021D1588
	lsl r2, r1, #2
	ldr r1, _021D16B0 ; =0x021D524C
	mov r0, #0x6f
	ldr r1, [r1, r2]
	str r0, [sp]
	mov r0, #0
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	add r2, r0, #0
	mov r3, #0x64
	str r0, [sp, #4]
	bl sub_020059D0
_021D1588:
	ldr r0, [r4, #4]
	add r2, r0, #1
	str r2, [r4, #4]
	ldr r0, [r4, #8]
	lsl r1, r0, #1
	ldr r0, _021D16B4 ; =0x021D5226
	ldrh r0, [r0, r1]
	cmp r2, r0
	blt _021D1686
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x53
	strb r1, [r0]
	str r1, [r4, #4]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D1686
_021D15B0:
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	mov r1, #0x53
	ldrsb r2, [r3, r1]
	add r3, #0x53
	add r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0x10
	beq _021D15D2
	ldr r0, _021D16B8 ; =0x04000050
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	b _021D1686
_021D15D2:
	ldr r1, [r4, #8]
	mov r0, #0x44
	mul r0, r1
	mov r2, #1
	add r0, r4, r0
	str r2, [r0, #0x54]
	mov r0, #0x1b
	lsl r0, r0, #4
	add r2, r4, r0
	ldr r1, [r4, #8]
	sub r0, #0x28
	mul r0, r1
	add r0, r2, r0
	mov r1, #0
	bl sub_02017348
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	cmp r0, #3
	blt _021D1686
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r0, #0x53
	strb r1, [r0]
	mov r0, #6
	str r0, [r4, #0]
	b _021D1686
_021D1614:
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	mov r1, #0x53
	ldrsb r2, [r3, r1]
	add r3, #0x53
	sub r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0
	ble _021D1636
	ldr r0, _021D16B8 ; =0x04000050
	mov r1, #0x31
	bl G2x_SetBlendBrightness_
	b _021D1686
_021D1636:
	mov r0, #2
	str r0, [r4, #0]
	b _021D1686
_021D163C:
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	cmp r0, #0x78
	blt _021D1686
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r4, r0]
	mov r1, #0x53
	ldrsb r2, [r3, r1]
	add r3, #0x53
	add r2, r2, #1
	strb r2, [r3]
	ldr r0, [r4, r0]
	ldrsb r2, [r0, r1]
	cmp r2, #0x10
	beq _021D1668
	ldr r0, _021D16BC ; =0x04001050
	mov r1, #0x33
	bl G2x_SetBlendBrightness_
	b _021D1686
_021D1668:
	mov r0, #1
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x6f
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _021D16C0 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
	mov r0, #0
	add sp, #0xc
	str r0, [r4, #0]
	pop {r3, r4, pc}
_021D1686:
	add r0, r4, #0
	bl ov100_021D17B4
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	ldr r1, [r4, #8]
	bl ov100_021D4C94
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, pc}
	nop
_021D16A0: .word 0x00000429
_021D16A4: .word 0x021D523E
_021D16A8: .word 0x000005C7
_021D16AC: .word 0x021D522C
_021D16B0: .word 0x021D524C
_021D16B4: .word 0x021D5226
_021D16B8: .word 0x04000050
_021D16BC: .word 0x04001050
_021D16C0: .word 0x00007FFF
	thumb_func_end ov100_021D14A8

	thumb_func_start ov100_021D16C4
ov100_021D16C4: ; 0x021D16C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D16D4
	cmp r1, #1
	beq _021D16E8
	b _021D1746
_021D16D4:
	add r0, #0xc
	bl ov100_021D4E58
	add r0, r4, #0
	bl ov100_021D1A24
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D174E
_021D16E8:
	mov r1, #0x7d
	lsl r1, r1, #4
	mov r0, #0x1b
	ldr r1, [r4, r1]
	lsl r0, r0, #4
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	mov r1, #0x7d
	lsl r1, r1, #4
	mov r0, #0xce
	ldr r1, [r4, r1]
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	mov r1, #0x7d
	lsl r1, r1, #4
	mov r0, #0x13
	ldr r1, [r4, r1]
	lsl r0, r0, #6
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #2
	bl ov100_021D4AA4
	mov r1, #0x7d
	lsl r1, r1, #4
	ldr r0, _021D1754 ; =0x00000648
	ldr r1, [r4, r1]
	add r0, r4, r0
	add r1, #0x1c
	mov r2, #0
	bl ov100_021D4AA4
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D174E
_021D1746:
	bl sub_020181C4
	mov r0, #0
	pop {r4, pc}
_021D174E:
	mov r0, #1
	pop {r4, pc}
	nop
_021D1754: .word 0x00000648
	thumb_func_end ov100_021D16C4

	thumb_func_start ov100_021D1758
ov100_021D1758: ; 0x021D1758
	push {r4, r5, lr}
	sub sp, #0x14
	ldr r3, _021D17A8 ; =0x021D5224
	add r4, r0, #0
	ldrh r5, [r3, #0x20]
	add r0, sp, #0xc
	add r2, sp, #0xc
	strh r5, [r0]
	ldrh r5, [r3, #0x22]
	strh r5, [r0, #2]
	ldrh r5, [r3, #0x24]
	ldrh r3, [r3, #0x26]
	strh r5, [r0, #4]
	strh r3, [r0, #6]
	mov r0, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r1, #0
	mov r1, #0x32
	ldr r3, _021D17AC ; =0x00000A66
	lsl r1, r1, #0xe
	str r4, [sp, #8]
	bl sub_020206D0
	mov r0, #0
	add r1, r4, #0
	bl sub_02020854
	add r0, r4, #0
	bl sub_020203D4
	mov r1, #2
	ldr r0, _021D17B0 ; =0x0000019A
	lsl r1, r1, #0x16
	add r2, r4, #0
	bl sub_020206BC
	add sp, #0x14
	pop {r4, r5, pc}
	; .align 2, 0
_021D17A8: .word 0x021D5224
_021D17AC: .word 0x00000A66
_021D17B0: .word 0x0000019A
	thumb_func_end ov100_021D1758

	thumb_func_start ov100_021D17B4
ov100_021D17B4: ; 0x021D17B4
	push {r4, lr}
	add r4, r0, #0
	bl sub_020241B4
	bl sub_020203EC
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov100_021D47A0
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl ov100_021D4844
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r4, r0
	bl ov100_021D49B4
	ldr r0, _021D1804 ; =0x00000648
	add r0, r4, r0
	bl ov100_021D49B4
	mov r0, #0
	mov r1, #1
	bl sub_020241BC
	pop {r4, pc}
	; .align 2, 0
_021D1804: .word 0x00000648
	thumb_func_end ov100_021D17B4

	thumb_func_start ov100_021D1808
ov100_021D1808: ; 0x021D1808
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r3, #5
	ldr r0, [r1, #4]
	ldr r7, [r1, #0xc]
	str r0, [sp, #0x1c]
	ldr r0, [r1, #0x10]
	ldr r4, [r1, #0]
	ldr r6, [r1, #8]
	str r0, [sp, #0x18]
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x46
	add r2, r7, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x48
	add r2, r7, #0
	mov r3, #5
	bl sub_0200710C
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x6f
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #0x49
	add r2, r7, #0
	mov r3, #4
	bl sub_0200710C
	mov r0, #1
	str r0, [sp]
	mov r0, #0x40
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	mov r1, #0xac
	mov r2, #0x47
	mov r3, #0x6f
	bl sub_02003050
	ldr r0, _021D1A18 ; =0x021D5224
	add r1, sp, #0x20
	ldrh r2, [r0]
	add r0, sp, #0x20
	strh r2, [r0]
	mov r0, #2
	str r0, [sp]
	mov r2, #0
	ldr r0, [sp, #0x18]
	add r3, r2, #0
	bl sub_02002FBC
	str r4, [sp]
	mov r0, #0x32
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r1, #3
	str r1, [sp, #0xc]
	mov r0, #2
	str r0, [sp, #0x10]
	ldr r0, _021D1A1C ; =0x0000C350
	ldr r2, [sp, #0x1c]
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x18]
	add r3, r6, #0
	bl sub_0200CDC4
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1A1C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	mov r3, #0x30
	bl sub_0200CE24
	mov r0, #0
	str r0, [sp]
	ldr r0, _021D1A1C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #4]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	mov r3, #0x2f
	bl sub_0200CE54
	mov r0, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, _021D1A1C ; =0x0000C350
	add r1, r6, #0
	str r0, [sp, #8]
	ldr r0, [sp, #0x1c]
	add r2, r4, #0
	mov r3, #0x31
	bl sub_0200CC3C
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	ldr r0, _021D1A20 ; =0x00000648
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x3c
	bl ov100_021D4AC8
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x3b
	bl ov100_021D4AC8
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0x1b
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #4
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x39
	bl ov100_021D4B4C
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0x1b
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #4
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x3a
	bl ov100_021D4B4C
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	mov r0, #0xce
	lsl r0, r0, #2
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x2d
	bl ov100_021D4AC8
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0xce
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #2
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0x2b
	bl ov100_021D4B4C
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0xce
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #2
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x2c
	bl ov100_021D4B4C
	mov r2, #0x7d
	lsl r2, r2, #4
	ldr r2, [r5, r2]
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r2, [r2, #0]
	add r0, r5, r0
	mov r1, #0x11
	bl ov100_021D4AC8
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0x13
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #6
	ldr r3, [r3, #0]
	mov r0, #0
	add r1, r5, r1
	mov r2, #0xf
	bl ov100_021D4B4C
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r3, [r5, r0]
	mov r1, #0x13
	add r0, r3, #0
	add r0, #0x1c
	str r0, [sp]
	lsl r1, r1, #6
	ldr r3, [r3, #0]
	mov r0, #1
	add r1, r5, r1
	mov r2, #0x10
	bl ov100_021D4B4C
	mov r0, #0x1b
	lsl r0, r0, #4
	add r0, r5, r0
	mov r1, #1
	bl sub_02017348
	mov r0, #0xce
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	mov r0, #0x13
	lsl r0, r0, #6
	add r0, r5, r0
	mov r1, #0
	bl sub_02017348
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1A18: .word 0x021D5224
_021D1A1C: .word 0x0000C350
_021D1A20: .word 0x00000648
	thumb_func_end ov100_021D1808

	thumb_func_start ov100_021D1A24
ov100_021D1A24: ; 0x021D1A24
	push {r4, r5, r6, lr}
	mov r6, #0x49
	add r5, r0, #0
	mov r4, #0
	lsl r6, r6, #2
_021D1A2E:
	ldr r0, [r5, #0x58]
	bl sub_0200DA58
	ldr r0, [r5, r6]
	bl sub_0200DA58
	ldr r0, [r5, #0x18]
	bl sub_0200D0F4
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_0200D0F4
	add r4, r4, #1
	add r5, #0x44
	cmp r4, #3
	blt _021D1A2E
	pop {r4, r5, r6, pc}
	thumb_func_end ov100_021D1A24

	thumb_func_start ov100_021D1A54
ov100_021D1A54: ; 0x021D1A54
	push {r4, r5, r6, r7, lr}
	sub sp, #0x64
	add r5, r0, #0
	mov r0, #0x7d
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	mov r6, #0
	ldr r0, [r1, #4]
	add r7, r5, #0
	str r0, [sp, #0x14]
	ldr r0, [r1, #8]
	add r4, r5, #0
	str r0, [sp, #0x10]
	add r0, sp, #0x18
	strh r6, [r0, #0x18]
	strh r6, [r0, #0x1a]
	strh r6, [r0, #0x1c]
	strh r6, [r0, #0x1e]
	mov r0, #2
	str r0, [sp, #0x40]
	str r0, [sp, #0x5c]
	sub r0, r0, #3
	str r0, [sp, #0x54]
	str r0, [sp, #0x58]
	ldr r0, _021D1C30 ; =0x0000C350
	str r6, [sp, #0x38]
	str r6, [sp, #0x3c]
	str r6, [sp, #0x60]
	str r0, [sp, #0x44]
	str r0, [sp, #0x48]
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	str r6, [sp]
	add r7, #0xe4
_021D1A98:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x30
	bl sub_0200CE6C
	add r1, r4, #0
	add r1, #0xe4
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	bl sub_0200D330
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_0200D3F4
	add r0, r4, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	add r1, r6, #0
	bl sub_0200D430
	add r0, r4, #0
	add r0, #0xe4
	mov r1, #0
	ldr r0, [r0, #0]
	add r2, r1, #0
	bl sub_0200D4C4
	add r1, r4, #0
	add r1, #0xf0
	mov r0, #1
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xec
	add r1, r4, #0
	str r6, [r0, #0]
	add r1, #0xf8
	mov r0, #0x32
	strh r0, [r1]
	ldr r1, [sp]
	add r0, #0xce
	str r1, [r4, r0]
	mov r0, #1
	lsl r0, r0, #8
	ldr r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x42
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #1
	add r0, r0, #4
	str r1, [r4, r0]
	mov r0, #0x11
	lsl r0, r0, #4
	str r1, [r4, r0]
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	mov r0, #0x45
	lsl r0, r0, #2
	str r1, [r4, r0]
	mov r1, #0
	add r0, r0, #4
	str r1, [r4, r0]
	ldr r0, _021D1C34 ; =ov100_021D4438
	ldr r2, _021D1C38 ; =0x00000FFF
	add r1, r7, #0
	bl sub_0200D9E8
	mov r1, #0x49
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp]
	add r6, r6, #1
	add r0, #0x78
	add r4, #0x44
	add r7, #0x44
	str r0, [sp]
	cmp r6, #3
	blt _021D1A98
	ldr r1, _021D1C3C ; =0x021D5224
	add r3, sp, #0x24
	ldrh r2, [r1, #0x14]
	add r0, sp, #0x18
	mov r4, #0
	strh r2, [r0, #6]
	ldrh r2, [r1, #0x16]
	add r6, sp, #0x1c
	str r3, [sp, #0xc]
	strh r2, [r0, #8]
	ldrh r2, [r1, #0x18]
	add r6, #2
	add r7, sp, #0x18
	strh r2, [r0, #0xa]
	ldrh r2, [r1, #0xe]
	str r4, [sp, #8]
	strh r2, [r0]
	ldrh r2, [r1, #0x10]
	strh r2, [r0, #2]
	ldrh r1, [r1, #0x12]
	ldr r2, _021D1C40 ; =0x021D5258
	strh r1, [r0, #4]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	str r0, [r3, #0]
	add r0, r5, #0
	str r0, [sp, #4]
	add r0, #0x18
	str r0, [sp, #4]
_021D1B84:
	cmp r4, #1
	bne _021D1B8E
	mov r0, #0
	str r0, [sp, #0x5c]
	b _021D1B92
_021D1B8E:
	mov r0, #2
	str r0, [sp, #0x5c]
_021D1B92:
	ldr r0, [sp, #0x14]
	ldr r1, [sp, #0x10]
	add r2, sp, #0x30
	bl sub_0200CE6C
	str r0, [r5, #0x18]
	add r0, r5, #0
	add r0, #0xe4
	ldr r0, [r0, #0]
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x18]
	bl sub_0200D330
	ldr r0, [r5, #0x18]
	mov r1, #2
	bl sub_0200D6A4
	ldr r1, [sp, #0xc]
	ldr r0, [r5, #0x18]
	ldr r1, [r1, #0]
	add r2, r1, #0
	bl sub_0200D6E8
	ldr r0, [r5, #0x18]
	add r1, r4, #0
	bl sub_0200D430
	mov r1, #0
	mov r2, #0
	ldrsh r1, [r6, r1]
	ldrsh r2, [r7, r2]
	ldr r0, [r5, #0x18]
	bl sub_0200D4C4
	mov r0, #0
	str r0, [r5, #0x24]
	str r4, [r5, #0x20]
	mov r0, #0x32
	strh r0, [r5, #0x2c]
	ldr r0, [sp, #8]
	str r0, [r5, #0x34]
	str r0, [r5, #0x38]
	mov r0, #0
	str r0, [r5, #0x3c]
	mov r0, #1
	str r0, [r5, #0x40]
	str r0, [r5, #0x44]
	bl sub_0201D2E8
	mov r1, #0xa
	bl _s32_div_f
	str r1, [r5, #0x48]
	mov r0, #0
	str r0, [r5, #0x4c]
	mov r2, #1
	ldr r0, _021D1C34 ; =ov100_021D4438
	ldr r1, [sp, #4]
	lsl r2, r2, #0xc
	bl sub_0200D9E8
	str r0, [r5, #0x58]
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r5, #0x44
	add r0, #0x78
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	add r7, r7, #2
	add r0, #0x44
	add r6, r6, #2
	str r0, [sp, #4]
	cmp r4, #3
	blt _021D1B84
	add sp, #0x64
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1C30: .word 0x0000C350
_021D1C34: .word ov100_021D4438
_021D1C38: .word 0x00000FFF
_021D1C3C: .word 0x021D5224
_021D1C40: .word 0x021D5258
	thumb_func_end ov100_021D1A54

	.rodata


	.global Unk_ov100_021D5224
Unk_ov100_021D5224: ; 0x021D5224
	.incbin "incbin/overlay100_rodata.bin", 0x150, 0x152 - 0x150

	.global Unk_ov100_021D5226
Unk_ov100_021D5226: ; 0x021D5226
	.incbin "incbin/overlay100_rodata.bin", 0x152, 0x158 - 0x152

	.global Unk_ov100_021D522C
Unk_ov100_021D522C: ; 0x021D522C
	.incbin "incbin/overlay100_rodata.bin", 0x158, 0x15E - 0x158

	.global Unk_ov100_021D5232
Unk_ov100_021D5232: ; 0x021D5232
	.incbin "incbin/overlay100_rodata.bin", 0x15E, 0x164 - 0x15E

	.global Unk_ov100_021D5238
Unk_ov100_021D5238: ; 0x021D5238
	.incbin "incbin/overlay100_rodata.bin", 0x164, 0x16A - 0x164

	.global Unk_ov100_021D523E
Unk_ov100_021D523E: ; 0x021D523E
	.incbin "incbin/overlay100_rodata.bin", 0x16A, 0x170 - 0x16A

	.global Unk_ov100_021D5244
Unk_ov100_021D5244: ; 0x021D5244
	.incbin "incbin/overlay100_rodata.bin", 0x170, 0x178 - 0x170

	.global Unk_ov100_021D524C
Unk_ov100_021D524C: ; 0x021D524C
	.incbin "incbin/overlay100_rodata.bin", 0x178, 0x184 - 0x178

	.global Unk_ov100_021D5258
Unk_ov100_021D5258: ; 0x021D5258
	.incbin "incbin/overlay100_rodata.bin", 0x184, 0x190 - 0x184

	.global Unk_ov100_021D5264
Unk_ov100_021D5264: ; 0x021D5264
	.incbin "incbin/overlay100_rodata.bin", 0x190, 0x2C

