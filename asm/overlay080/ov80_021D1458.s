	.include "macros/function.inc"
	.include "overlay080/ov80_021D1458.inc"

	

	.text


	thumb_func_start ov80_021D1458
ov80_021D1458: ; 0x021D1458
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0x11
	ldr r0, [r4, #4]
	lsl r1, r1, #4
	bl sub_02018144
	mov r2, #0x11
	mov r1, #0
	lsl r2, r2, #4
	str r0, [r4, #0x34]
	bl memset
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D1458

	thumb_func_start ov80_021D1478
ov80_021D1478: ; 0x021D1478
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	bl ov80_021D225C
	ldrb r0, [r5]
	cmp r0, #2
	beq _021D148E
	add r0, r5, #0
	bl ov80_021D2700
_021D148E:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov80_021D2C1C
	add r0, r5, #0
	bl ov80_021D1F14
	add r0, r4, #0
	bl sub_020181C4
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1478

	thumb_func_start ov80_021D14A8
ov80_021D14A8: ; 0x021D14A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _021D14BA
	cmp r1, #1
	beq _021D1504
	b _021D1546
_021D14BA:
	ldr r1, [r5, #0x18]
	str r1, [r4, #0x18]
	ldr r1, [r5, #0x1c]
	str r1, [r4, #0x1c]
	mov r1, #0
	mvn r1, r1
	str r1, [r4, #0x20]
	ldr r1, [r4, #0x18]
	lsl r2, r1, #4
	add r1, r4, #0
	sub r2, #0x68
	add r1, #0x8c
	str r2, [r1, #0]
	ldr r1, [r4, #0x1c]
	lsl r2, r1, #4
	add r1, r4, #0
	sub r2, #0x60
	add r1, #0x90
	str r2, [r1, #0]
	add r1, r4, #0
	add r2, r4, #0
	add r1, #0x8c
	add r2, #0x90
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov80_021D24BC
	add r0, r5, #0
	bl ov80_021D1DF8
	ldrb r0, [r5]
	cmp r0, #2
	beq _021D1546
	add r0, r5, #0
	bl ov80_021D259C
	b _021D1546
_021D1504:
	bl ov80_021D20DC
	add r0, r5, #0
	bl ov80_021D2398
	ldr r0, [r5, #4]
	add r1, r5, #0
	str r0, [sp]
	add r0, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	mov r2, #0x49
	ldr r3, [r5, #0x2c]
	lsl r2, r2, #2
	add r2, r3, r2
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	mov r3, #0x14
	bl ov80_021D2AF4
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1, #0]
	add r0, r5, #0
	bl ov80_021D1A30
	add r0, r5, #0
	bl ov80_021D19E4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1546:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D14A8

	thumb_func_start ov80_021D1550
ov80_021D1550: ; 0x021D1550
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r2, #0x25
	str r0, [sp, #8]
	add r0, r1, #0
	mov r1, #0x11
	bl sub_0200F174
	ldr r0, _021D1594 ; =0x0000068F
	bl sub_02005748
	mov r0, #0
	bl sub_0200F338
	mov r0, #1
	bl sub_0200F338
	mov r1, #4
	ldr r0, _021D1598 ; =0x04000050
	mov r2, #8
	mov r3, #0x1c
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0
	add sp, #0xc
	pop {pc}
	; .align 2, 0
_021D1594: .word 0x0000068F
_021D1598: .word 0x04000050
	thumb_func_end ov80_021D1550

	thumb_func_start ov80_021D159C
ov80_021D159C: ; 0x021D159C
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #2
	mov r2, #0x24
	bl sub_0200F174
	mov r0, #0x69
	lsl r0, r0, #4
	bl sub_02005748
	mov r0, #0
	add sp, #0xc
	pop {pc}
	thumb_func_end ov80_021D159C

	thumb_func_start ov80_021D15C8
ov80_021D15C8: ; 0x021D15C8
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r1, #0x11
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	ldr r0, _021D1608 ; =0x0000068F
	bl sub_02005748
	mov r0, #0
	bl sub_0200F338
	mov r1, #4
	ldr r0, _021D160C ; =0x04000050
	mov r2, #8
	mov r3, #0x1c
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	mov r0, #0
	add sp, #0xc
	pop {pc}
	nop
_021D1608: .word 0x0000068F
_021D160C: .word 0x04000050
	thumb_func_end ov80_021D15C8

	thumb_func_start ov80_021D1610
ov80_021D1610: ; 0x021D1610
	push {lr}
	sub sp, #0xc
	mov r3, #0
	str r3, [r0, #0x14]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r0, #4]
	mov r1, #0x10
	str r0, [sp, #8]
	mov r0, #3
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #0x69
	lsl r0, r0, #4
	bl sub_02005748
	mov r0, #0
	add sp, #0xc
	pop {pc}
	thumb_func_end ov80_021D1610

	thumb_func_start ov80_021D163C
ov80_021D163C: ; 0x021D163C
	push {r3, lr}
	ldr r1, [r0, #0x34]
	ldrb r3, [r1, #0x14]
	cmp r3, #1
	bhi _021D165A
	ldr r1, _021D1670 ; =0x021BF67C
	ldr r2, [r1, #0x48]
	mov r1, #2
	tst r1, r2
	beq _021D165A
	ldr r0, _021D1674 ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D165A:
	cmp r3, #1
	bls _021D1662
	mov r0, #0
	pop {r3, pc}
_021D1662:
	ldr r1, _021D1670 ; =0x021BF67C
	ldr r1, [r1, #0x44]
	bl ov80_021D18F8
	mov r0, #0
	pop {r3, pc}
	nop
_021D1670: .word 0x021BF67C
_021D1674: .word 0x000005DD
	thumb_func_end ov80_021D163C

	thumb_func_start ov80_021D1678
ov80_021D1678: ; 0x021D1678
	push {r3, lr}
	ldr r1, [r0, #0x34]
	ldrb r1, [r1, #0x14]
	cmp r1, #1
	bhi _021D16B2
	ldr r2, _021D16C8 ; =0x021BF67C
	ldr r3, [r2, #0x48]
	mov r2, #1
	tst r2, r3
	beq _021D16A2
	bl ov80_021D29BC
	cmp r0, #0
	beq _021D169E
	ldr r0, _021D16CC ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D169E:
	mov r0, #0
	pop {r3, pc}
_021D16A2:
	mov r2, #2
	tst r2, r3
	beq _021D16B2
	ldr r0, _021D16CC ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D16B2:
	cmp r1, #1
	bls _021D16BA
	mov r0, #0
	pop {r3, pc}
_021D16BA:
	ldr r1, _021D16C8 ; =0x021BF67C
	ldr r1, [r1, #0x44]
	bl ov80_021D18F8
	mov r0, #0
	pop {r3, pc}
	nop
_021D16C8: .word 0x021BF67C
_021D16CC: .word 0x000005DD
	thumb_func_end ov80_021D1678

	thumb_func_start ov80_021D16D0
ov80_021D16D0: ; 0x021D16D0
	push {r3, lr}
	ldr r2, _021D16F0 ; =0x021BF67C
	mov r1, #2
	ldr r3, [r2, #0x48]
	tst r1, r3
	beq _021D16E6
	ldr r0, _021D16F4 ; =0x000005DD
	bl sub_02005748
	mov r0, #1
	pop {r3, pc}
_021D16E6:
	ldr r1, [r2, #0x44]
	bl ov80_021D18F8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D16F0: .word 0x021BF67C
_021D16F4: .word 0x000005DD
	thumb_func_end ov80_021D16D0

	thumb_func_start ov80_021D16F8
ov80_021D16F8: ; 0x021D16F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	mov r1, #1
	ldrb r2, [r4, #0x12]
	tst r1, r2
	beq _021D1724
	ldrb r1, [r4, #0x15]
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x1c
	cmp r1, #2
	blo _021D1738
	bl ov80_021D19E4
	mov r0, #0
	strb r0, [r4, #0x12]
	strh r0, [r4, #0x16]
	ldrb r1, [r4, #0x15]
	mov r0, #0xf
	bic r1, r0
	strb r1, [r4, #0x15]
	b _021D1738
_021D1724:
	ldrb r1, [r4, #0x10]
	cmp r1, #1
	bne _021D1738
	ldrh r1, [r4, #0x16]
	cmp r1, #1
	bne _021D1738
	ldr r2, [r4, #0x20]
	mov r1, #0
	bl ov80_021D1D24
_021D1738:
	add r0, r5, #0
	bl ov80_021D1C24
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov80_021D16F8

	thumb_func_start ov80_021D1744
ov80_021D1744: ; 0x021D1744
	push {r3, lr}
	add r1, r0, #0
	ldr r0, [r1, #0x34]
	ldrb r1, [r1]
	add r0, #0x9c
	ldr r0, [r0, #0]
	bl ov80_021D2D28
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov80_021D1744

	thumb_func_start ov80_021D1758
ov80_021D1758: ; 0x021D1758
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r1, r6, #0
	add r1, #0x94
	ldr r5, [r1, #0]
	add r1, r6, #0
	add r1, #0x90
	ldr r7, [r1, #0]
	add r1, r6, #0
	add r1, #0x8c
	ldr r1, [r1, #0]
	ldr r4, [r6, #0x34]
	cmp r1, #0
	bne _021D177C
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D177C:
	add r1, r6, #0
	mov r2, #0
	add r1, #0x8c
	str r2, [r1, #0]
	cmp r5, #0
	bne _021D179C
	add r4, #0x58
	add r1, r4, #0
	bl ov80_021D1B5C
	add r0, r6, #0
	bl ov80_021D1D38
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_021D179C:
	add r1, r4, #0
	add r1, #0x58
	add r2, r5, #0
	bl ov80_021D1B5C
	add r0, r6, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	bl sub_020237E8
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	add r0, r6, #0
	add r1, r7, #0
	bl ov80_021D1A58
	ldrh r0, [r5, #4]
	ldr r2, _021D1844 ; =0x0000013B
	mov r1, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrh r0, [r5, #6]
	mov r3, #0xe
	str r0, [sp, #4]
	ldr r0, [r6, #4]
	str r0, [sp, #8]
	ldr r0, [r6, #0x28]
	bl sub_0200E2A4
	ldrh r0, [r5, #4]
	cmp r0, #1
	bhi _021D17E4
	add r7, r4, #0
	add r7, #0x38
	b _021D17E8
_021D17E4:
	add r7, r4, #0
	add r7, #0x48
_021D17E8:
	str r7, [r4, #0x78]
	ldrb r0, [r4, #0x15]
	mov r1, #0xf0
	ldr r2, _021D1844 ; =0x0000013B
	bic r0, r1
	ldrh r1, [r5, #4]
	mov r3, #0xe
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1c
	lsr r1, r1, #0x18
	orr r0, r1
	strb r0, [r4, #0x15]
	ldrh r0, [r5, #4]
	mov r1, #1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	add r0, r7, #0
	bl sub_0200E69C
	add r0, r7, #0
	mov r1, #0xf
	bl sub_0201ADA4
	mov r3, #0
	str r3, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	str r3, [sp, #8]
	add r6, #0x88
	ldr r2, [r6, #0]
	add r0, r7, #0
	mov r1, #1
	bl sub_0201D738
	add r0, r7, #0
	bl sub_0201A954
	add r4, #0x58
	add r0, r4, #0
	bl sub_0201A954
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1844: .word 0x0000013B
	thumb_func_end ov80_021D1758

	thumb_func_start ov80_021D1848
ov80_021D1848: ; 0x021D1848
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #1
	sub r0, r0, r6
	ldr r1, _021D1898 ; =0x021D2FEC
	lsl r0, r0, #2
	add r0, r1, r0
	bl sub_02022664
	add r4, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	beq _021D186C
	cmp r6, #1
	bne _021D1872
_021D186C:
	add sp, #8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D1872:
	mov r1, #0x12
	add r0, sp, #4
	strh r1, [r0]
	add r0, sp, #4
	str r0, [sp]
	ldr r3, _021D189C ; =0x021BF6BC
	ldr r0, [r5, #0x28]
	ldrh r2, [r3, #0x1c]
	ldrh r3, [r3, #0x1e]
	mov r1, #5
	bl sub_0201C784
	cmp r0, #0
	beq _021D1892
	mov r4, #0
	mvn r4, r4
_021D1892:
	add r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D1898: .word 0x021D2FEC
_021D189C: .word 0x021BF6BC
	thumb_func_end ov80_021D1848

	thumb_func_start ov80_021D18A0
ov80_021D18A0: ; 0x021D18A0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r1, [r5, #0x2c]
	ldr r0, _021D18F4 ; =0x00000139
	ldr r4, [r5, #0x34]
	ldrb r0, [r1, r0]
	cmp r0, #2
	bne _021D18B4
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D18B4:
	bl sub_0202278C
	cmp r0, #0
	ldrb r0, [r4, #0x14]
	beq _021D18E2
	cmp r0, #0
	bne _021D18F0
	ldrb r1, [r4, #0x10]
	add r0, r5, #0
	bl ov80_021D1848
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _021D18F0
	ldrb r1, [r4, #0x10]
	add r0, r5, #0
	bl ov80_021D273C
	mov r0, #3
	strb r0, [r4, #0x14]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D18E2:
	cmp r0, #3
	beq _021D18EA
	cmp r0, #1
	bne _021D18F0
_021D18EA:
	ldrb r0, [r4, #0x14]
	sub r0, r0, #1
	strb r0, [r4, #0x14]
_021D18F0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D18F4: .word 0x00000139
	thumb_func_end ov80_021D18A0

	thumb_func_start ov80_021D18F8
ov80_021D18F8: ; 0x021D18F8
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x34]
	add r5, r1, #0
	ldrb r1, [r4, #0x11]
	cmp r1, #0
	beq _021D1928
	mov r0, #0xf0
	tst r0, r5
	bne _021D19E0
	ldrb r2, [r4, #0x15]
	lsl r0, r2, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #1
	bne _021D19E0
	mov r0, #0xf
	bic r2, r0
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	and r0, r1
	orr r0, r2
	strb r0, [r4, #0x15]
	pop {r3, r4, r5, pc}
_021D1928:
	bl ov80_021D18A0
	cmp r0, #0
	bne _021D19E0
	mov r0, #0xf0
	tst r0, r5
	bne _021D1954
	ldrb r2, [r4, #0x15]
	lsl r0, r2, #0x1c
	lsr r1, r0, #0x1c
	cmp r1, #1
	bne _021D19E0
	mov r0, #0xf
	bic r2, r0
	add r0, r1, #1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	and r0, r1
	orr r0, r2
	strb r0, [r4, #0x15]
	pop {r3, r4, r5, pc}
_021D1954:
	mov r0, #0x40
	tst r0, r5
	beq _021D196C
	ldr r0, [r4, #0x1c]
	cmp r0, #7
	blt _021D196C
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	ldrb r1, [r4, #0x11]
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #0x11]
_021D196C:
	mov r0, #0x80
	tst r0, r5
	beq _021D1984
	ldr r0, [r4, #0x1c]
	cmp r0, #0x1b
	bgt _021D1984
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldrb r1, [r4, #0x11]
	mov r0, #4
	orr r0, r1
	strb r0, [r4, #0x11]
_021D1984:
	mov r0, #0x10
	tst r0, r5
	beq _021D199C
	ldr r0, [r4, #0x18]
	cmp r0, #0x1b
	bgt _021D199C
	add r0, r0, #1
	str r0, [r4, #0x18]
	ldrb r1, [r4, #0x11]
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x11]
_021D199C:
	mov r0, #0x20
	tst r0, r5
	beq _021D19B4
	ldr r0, [r4, #0x18]
	cmp r0, #2
	blt _021D19B4
	sub r0, r0, #1
	str r0, [r4, #0x18]
	ldrb r1, [r4, #0x11]
	mov r0, #2
	orr r0, r1
	strb r0, [r4, #0x11]
_021D19B4:
	mov r0, #3
	strb r0, [r4, #0x13]
	ldrb r1, [r4, #0x11]
	mov r0, #0x80
	orr r0, r1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #0x12]
	cmp r0, #0
	beq _021D19CC
	ldrh r0, [r4, #0x16]
	add r0, r0, #1
	b _021D19CE
_021D19CC:
	mov r0, #0
_021D19CE:
	strh r0, [r4, #0x16]
	mov r0, #0
	strb r0, [r4, #0x12]
	ldrb r1, [r4, #0x15]
	mov r0, #0xf
	bic r1, r0
	mov r0, #1
	orr r0, r1
	strb r0, [r4, #0x15]
_021D19E0:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov80_021D18F8

	thumb_func_start ov80_021D19E4
ov80_021D19E4: ; 0x021D19E4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r1, [r4, #0x1c]
	str r1, [sp]
	add r1, r4, #0
	ldr r2, [r4, #0x20]
	ldr r3, [r4, #0x18]
	add r1, #0x28
	bl ov80_021D1AB0
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl ov80_021D2CC0
	ldrb r0, [r4, #0x10]
	cmp r0, #1
	bne _021D1A2E
	add r1, r4, #0
	add r1, #0xa0
	ldr r1, [r1, #0]
	ldr r2, [r4, #0x20]
	add r0, r5, #0
	bl ov80_021D1D24
	ldr r0, [r5, #0x28]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, [r5, #0x28]
	mov r1, #5
	bl sub_0201C3C0
_021D1A2E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D19E4

	thumb_func_start ov80_021D1A30
ov80_021D1A30: ; 0x021D1A30
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r0, [r4, #0x20]
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x30]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl sub_02039F04
	str r0, [r4, #0x20]
	ldrh r3, [r5, #2]
	ldr r0, [r5, #0x40]
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	bl ov80_021D2E24
	add r4, #0xa0
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1A30

	thumb_func_start ov80_021D1A58
ov80_021D1A58: ; 0x021D1A58
	push {r3, r4, r5, lr}
	add r4, r0, #0
	cmp r1, #0
	beq _021D1A6E
	add r0, r1, #0
	ldr r1, [r4, #4]
	add r4, #0x88
	ldr r2, [r4, #0]
	bl sub_02071D10
	pop {r3, r4, r5, pc}
_021D1A6E:
	ldr r5, _021D1AA8 ; =0x021D3080
	mov r1, #0
_021D1A72:
	ldrh r0, [r5]
	cmp r2, r0
	bne _021D1A90
	ldrh r0, [r5, #2]
	cmp r3, r0
	bne _021D1A90
	ldr r0, _021D1AAC ; =0x021D3084
	lsl r1, r1, #3
	ldr r0, [r0, r1]
	ldr r1, [r4, #4]
	add r4, #0x88
	ldr r2, [r4, #0]
	bl sub_02071D10
	pop {r3, r4, r5, pc}
_021D1A90:
	add r1, r1, #1
	add r5, #8
	cmp r1, #0xd
	blo _021D1A72
	ldr r1, [r4, #4]
	add r4, #0x88
	ldr r2, [r4, #0]
	mov r0, #0
	bl sub_02071D10
	pop {r3, r4, r5, pc}
	nop
_021D1AA8: .word 0x021D3080
_021D1AAC: .word 0x021D3084
	thumb_func_end ov80_021D1A58

	thumb_func_start ov80_021D1AB0
ov80_021D1AB0: ; 0x021D1AB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	add r4, r1, #0
	ldr r6, [r5, #0x34]
	add r7, r2, #0
	str r3, [sp, #0x10]
	bl sub_020237E8
	add r0, r4, #0
	mov r1, #0
	bl sub_0201ADA4
	add r6, #0xa0
	ldr r0, [r6, #0]
	cmp r0, #0
	beq _021D1B1C
	ldr r2, [sp, #0x10]
	ldr r3, [sp, #0x28]
	add r0, r5, #0
	add r1, r7, #0
	bl ov80_021D1A58
	ldrb r0, [r5]
	cmp r0, #1
	bne _021D1AEC
	mov r3, #0x7a
	b _021D1B00
_021D1AEC:
	add r1, r5, #0
	add r1, #0x88
	mov r0, #0
	ldr r1, [r1, #0]
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0xd0
	sub r0, r1, r0
	lsr r3, r0, #1
_021D1B00:
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1B58 ; =0x00010200
	add r2, r5, #0
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	add r2, #0x88
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl sub_0201D78C
_021D1B1C:
	ldrb r0, [r5]
	cmp r0, #1
	bne _021D1B4E
	add r5, #0x84
	ldr r0, [r5, #0]
	mov r1, #0
	bl sub_0200B1EC
	add r5, r0, #0
	mov r0, #6
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1B58 ; =0x00010200
	mov r1, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
_021D1B4E:
	add r0, r4, #0
	bl sub_0201A954
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D1B58: .word 0x00010200
	thumb_func_end ov80_021D1AB0

	thumb_func_start ov80_021D1B5C
ov80_021D1B5C: ; 0x021D1B5C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r6, r1, #0
	add r4, r2, #0
	bne _021D1B80
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	add r0, r6, #0
	bl sub_0201A954
	add r0, r6, #0
	bl sub_0201ACF4
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_021D1B80:
	add r0, r6, #0
	mov r1, #0
	bl sub_0201ADA4
	ldrh r1, [r4, #8]
	ldr r0, _021D1C1C ; =0x0000FFFF
	cmp r1, r0
	beq _021D1BD0
	ldr r2, [r5, #0x2c]
	ldrh r0, [r4, #0x16]
	add r2, #0x5c
	ldrb r0, [r2, r0]
	lsl r2, r0, #0x1e
	lsr r2, r2, #0x1e
	beq _021D1BA4
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	beq _021D1BD0
_021D1BA4:
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	bl sub_0200B1EC
	add r7, r0, #0
	ldrh r0, [r4, #0xe]
	mov r1, #0
	add r2, r7, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1C20 ; =0x00010200
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r3, [r4, #0xc]
	add r0, r6, #0
	bl sub_0201D78C
	add r0, r7, #0
	bl sub_020237BC
_021D1BD0:
	ldrh r1, [r4, #0xa]
	ldr r0, _021D1C1C ; =0x0000FFFF
	cmp r1, r0
	beq _021D1C16
	ldr r2, [r5, #0x2c]
	ldrh r0, [r4, #0x16]
	add r2, #0x5c
	ldrb r0, [r2, r0]
	lsl r2, r0, #0x1a
	lsr r2, r2, #0x1e
	beq _021D1BEC
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	beq _021D1C16
_021D1BEC:
	add r5, #0x84
	ldr r0, [r5, #0]
	bl sub_0200B1EC
	add r5, r0, #0
	ldrh r0, [r4, #0x12]
	mov r1, #0
	add r2, r5, #0
	str r0, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1C20 ; =0x00010200
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldrh r3, [r4, #0x10]
	add r0, r6, #0
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_020237BC
_021D1C16:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D1C1C: .word 0x0000FFFF
_021D1C20: .word 0x00010200
	thumb_func_end ov80_021D1B5C

	thumb_func_start ov80_021D1C24
ov80_021D1C24: ; 0x021D1C24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	ldr r5, [r6, #0x34]
	mov r4, #5
	ldrb r1, [r5, #0x13]
	cmp r1, #0
	beq _021D1D20
	sub r0, r1, #1
	strb r0, [r5, #0x13]
	cmp r1, #3
	bne _021D1C94
	ldr r1, [r5, #0x18]
	add r0, r4, #0
	mov r2, #7
	add r3, r1, #0
	mul r3, r2
	add r3, #0x19
	lsl r1, r3, #0x10
	ldr r3, [r5, #0x1c]
	add r0, #0xff
	mul r2, r3
	sub r2, #0x22
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	add r0, r4, #0
	add r0, #0xff
	mov r1, #1
	ldr r0, [r5, r0]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	add r0, r6, #0
	bl ov80_021D1A30
	ldr r0, [r5, #0x18]
	ldr r7, [r5, #0x1c]
	str r0, [sp, #4]
	ldr r0, [r6, #0x30]
	ldr r1, [sp, #4]
	add r2, r7, #0
	bl sub_02039F04
	add r1, r5, #0
	add r2, r0, #0
	ldr r3, [sp, #4]
	add r0, r6, #0
	add r1, #0x28
	str r7, [sp]
	bl ov80_021D1AB0
	add r4, r4, #1
_021D1C94:
	ldrb r1, [r5, #0x11]
	mov r0, #8
	tst r0, r1
	beq _021D1CAA
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	sub r1, r0, r4
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0, #0]
_021D1CAA:
	ldrb r1, [r5, #0x11]
	mov r0, #4
	tst r0, r1
	beq _021D1CC0
	add r0, r5, #0
	add r0, #0x90
	ldr r0, [r0, #0]
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0, #0]
_021D1CC0:
	ldrb r1, [r5, #0x11]
	mov r0, #1
	tst r0, r1
	beq _021D1CD6
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	add r1, r0, r4
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0, #0]
_021D1CD6:
	ldrb r1, [r5, #0x11]
	mov r0, #2
	tst r0, r1
	beq _021D1CEC
	add r0, r5, #0
	add r0, #0x8c
	ldr r0, [r0, #0]
	sub r1, r0, r4
	add r0, r5, #0
	add r0, #0x8c
	str r1, [r0, #0]
_021D1CEC:
	add r1, r5, #0
	add r2, r5, #0
	add r1, #0x8c
	add r2, #0x90
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	add r0, r6, #0
	bl ov80_021D24BC
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _021D1D20
	mov r0, #1
	strb r0, [r5, #0x12]
	mov r2, #0
	strb r2, [r5, #0x11]
	ldr r1, [r5, #0x24]
	ldr r0, [r5, #0x20]
	cmp r1, r0
	beq _021D1D20
	add r5, #0x9c
	ldr r0, [r5, #0]
	sub r1, r2, #1
	add r3, r2, #0
	bl ov80_021D2CC0
_021D1D20:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov80_021D1C24

	thumb_func_start ov80_021D1D24
ov80_021D1D24: ; 0x021D1D24
	add r3, r0, #0
	add r3, #0x90
	str r2, [r3, #0]
	add r2, r0, #0
	add r2, #0x94
	str r1, [r2, #0]
	mov r1, #1
	add r0, #0x8c
	str r1, [r0, #0]
	bx lr
	thumb_func_end ov80_021D1D24

	thumb_func_start ov80_021D1D38
ov80_021D1D38: ; 0x021D1D38
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r4, [r6, #0x34]
	mov r1, #0
	ldr r5, [r4, #0x78]
	str r1, [r4, #0x78]
	cmp r5, #0
	beq _021D1D6A
	add r0, r5, #0
	bl sub_0201ADA4
	add r0, r5, #0
	bl sub_0201ACF4
	ldrb r1, [r4, #0x15]
	add r0, r5, #0
	mov r2, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1c
	bl sub_0200E744
	ldr r0, [r6, #0x28]
	mov r1, #4
	bl sub_0201C3C0
_021D1D6A:
	pop {r4, r5, r6, pc}
	thumb_func_end ov80_021D1D38

	thumb_func_start ov80_021D1D6C
ov80_021D1D6C: ; 0x021D1D6C
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, #0xcc
	add r5, r1, #0
	ldr r0, [r0, #0]
	mov r1, #0xc
	str r1, [sp]
	mov r1, #2
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	mov r3, #0
	str r3, [sp, #0xc]
	mov r1, #7
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	mov r2, #0xa
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_02019964
	add r4, #0x84
	ldr r0, [r4, #0]
	mov r1, #1
	bl sub_0200B1EC
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl sub_02002D7C
	mov r1, #0x50
	sub r4, r1, r0
	add r0, r5, #0
	mov r1, #0
	bl sub_0201ADA4
	mov r1, #0
	str r1, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _021D1DF4 ; =0x00010200
	add r2, r6, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsr r3, r4, #1
	str r1, [sp, #0xc]
	bl sub_0201D78C
	add r0, r5, #0
	bl sub_0201A954
	add r0, r6, #0
	bl sub_020237BC
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	nop
_021D1DF4: .word 0x00010200
	thumb_func_end ov80_021D1D6C

	thumb_func_start ov80_021D1DF8
ov80_021D1DF8: ; 0x021D1DF8
	push {r4, r5, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	mov r0, #0x15
	str r0, [sp]
	mov r0, #0x1d
	str r0, [sp, #4]
	mov r3, #3
	str r3, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	mov r0, #0xea
	lsl r0, r0, #2
	str r0, [sp, #0x10]
	add r1, r4, #0
	ldr r0, [r5, #0x28]
	add r1, #0x28
	mov r2, #1
	bl sub_0201A7E8
	mov r0, #3
	str r0, [sp]
	mov r0, #0x15
	str r0, [sp, #4]
	mov r2, #4
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _021D1F04 ; =0x000003AB
	add r1, #0x38
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	mov r3, #9
	bl sub_0201A7E8
	mov r0, #3
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r2, #4
	add r1, r4, #0
	str r2, [sp, #8]
	mov r0, #0xe
	str r0, [sp, #0xc]
	ldr r0, _021D1F08 ; =0x0000033B
	add r1, #0x48
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	mov r3, #2
	bl sub_0201A7E8
	mov r0, #8
	str r0, [sp]
	mov r0, #0x1c
	str r0, [sp, #4]
	mov r0, #0xe
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021D1F0C ; =0x000001B3
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	add r1, #0x58
	mov r2, #4
	mov r3, #1
	bl sub_0201A7E8
	mov r0, #0
	str r0, [sp]
	mov r0, #0xa
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	mov r0, #0xf
	str r0, [sp, #0xc]
	ldr r0, _021D1F10 ; =0x0000019F
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [r5, #0x28]
	add r1, #0x68
	mov r2, #4
	mov r3, #0xb
	bl sub_0201A7E8
	add r0, r4, #0
	add r0, #0x28
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x38
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x48
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x58
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x68
	mov r1, #0
	bl sub_0201ADA4
	add r0, r4, #0
	add r0, #0x28
	bl sub_0201A954
	add r0, r4, #0
	add r0, #0x38
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x48
	bl sub_0201ACF4
	add r0, r4, #0
	add r0, #0x58
	bl sub_0201ACF4
	add r4, #0x68
	add r0, r4, #0
	bl sub_0201ACF4
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_021D1F04: .word 0x000003AB
_021D1F08: .word 0x0000033B
_021D1F0C: .word 0x000001B3
_021D1F10: .word 0x0000019F
	thumb_func_end ov80_021D1DF8

	thumb_func_start ov80_021D1F14
ov80_021D1F14: ; 0x021D1F14
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x34]
	mov r5, #0
	add r4, #0x28
_021D1F1C:
	lsl r0, r5, #4
	add r0, r4, r0
	bl sub_0201A8FC
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #5
	blo _021D1F1C
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D1F14

	thumb_func_start ov80_021D1F30
ov80_021D1F30: ; 0x021D1F30
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r4, r1, #0
	cmp r2, #0
	beq _021D1F6E
	add r0, #0xd0
	ldr r0, [r0, #0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	mov r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	bl sub_020198E8
_021D1F6E:
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r2, #6
	str r2, [sp]
	mov r1, #7
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	add r1, r4, #0
	mul r1, r2
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	mov r1, #0
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	mov r2, #0xd
	mov r3, #0xa
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #5
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r5, #0x28]
	bl sub_02019964
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov80_021D1F30

	thumb_func_start ov80_021D1FB0
ov80_021D1FB0: ; 0x021D1FB0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r1, [sp, #0x1c]
	lsl r1, r1, #2
	add r4, r0, #0
	mov r7, #6
	add r2, r1, #0
	ldr r0, _021D20D8 ; =0x021D3020
	mul r2, r7
	add r6, r0, r2
	add r2, r1, #1
	add r0, r2, #0
	mul r0, r7
	ldr r2, _021D20D8 ; =0x021D3020
	mov ip, r0
	add r3, r2, r0
	add r2, r1, #2
	add r0, r2, #0
	ldr r2, _021D20D8 ; =0x021D3020
	mul r0, r7
	add r5, r2, r0
	add r0, r1, #3
	add r1, r0, #0
	mul r1, r7
	add r0, r2, #0
	add r7, r0, r1
	add r0, r4, #0
	add r0, #0xc0
	str r1, [sp, #0x20]
	ldr r1, [r0, #0]
	ldrb r0, [r3, #4]
	str r0, [sp]
	ldrb r0, [r3, #5]
	str r0, [sp, #4]
	add r0, r1, #0
	add r0, #0xc
	str r0, [sp, #8]
	add r0, r2, #0
	mov r2, ip
	ldrb r0, [r0, r2]
	str r0, [sp, #0xc]
	ldrb r0, [r3, #1]
	str r0, [sp, #0x10]
	ldrh r0, [r1]
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
	ldrh r0, [r1, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r3, #2]
	ldrb r3, [r3, #3]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
	add r0, r4, #0
	add r0, #0xd4
	ldrb r1, [r7, #4]
	ldr r0, [r0, #0]
	ldr r2, _021D20D8 ; =0x021D3020
	str r1, [sp]
	ldrb r1, [r7, #5]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	ldr r1, [sp, #0x20]
	ldrb r1, [r2, r1]
	str r1, [sp, #0xc]
	ldrb r1, [r7, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r7, #2]
	ldrb r3, [r7, #3]
	ldr r0, [r4, #0x28]
	bl sub_02019964
	ldr r0, [sp, #0x1c]
	cmp r0, #2
	beq _021D20D4
	add r0, r4, #0
	add r0, #0xc0
	ldrb r1, [r6, #4]
	ldr r0, [r0, #0]
	str r1, [sp]
	ldrb r1, [r6, #5]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	ldrb r1, [r6]
	str r1, [sp, #0xc]
	ldrb r1, [r6, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r6, #2]
	ldrb r3, [r6, #3]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
	add r0, r4, #0
	add r0, #0xd4
	ldrb r1, [r5, #4]
	ldr r0, [r0, #0]
	str r1, [sp]
	ldrb r1, [r5, #5]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	ldrb r1, [r5]
	str r1, [sp, #0xc]
	ldrb r1, [r5, #1]
	str r1, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #7
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldrb r2, [r5, #2]
	ldrb r3, [r5, #3]
	ldr r0, [r4, #0x28]
	bl sub_02019964
_021D20D4:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D20D8: .word 0x021D3020
	thumb_func_end ov80_021D1FB0

	thumb_func_start ov80_021D20DC
ov80_021D20DC: ; 0x021D20DC
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	add r0, #0xb8
	ldr r0, [r0, #0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	mov r2, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #2
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
	add r0, r4, #0
	add r0, #0xbc
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #0x20
	str r1, [sp]
	mov r1, #0x18
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
	ldrb r0, [r4]
	cmp r0, #1
	beq _021D2182
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	mov r1, #2
	str r1, [sp]
	mov r1, #3
	add r2, r0, #0
	str r1, [sp, #4]
	add r2, #0xc
	str r2, [sp, #8]
	mov r2, #0
	str r2, [sp, #0xc]
	mov r3, #0x15
	str r3, [sp, #0x10]
	ldrh r2, [r0]
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r2, #0x10
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_020198E8
_021D2182:
	add r0, r4, #0
	mov r1, #0
	mov r2, #1
	bl ov80_021D1F30
	add r0, r4, #0
	add r0, #0xc8
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #0x40
	str r1, [sp]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #6
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_02019964
	add r0, r4, #0
	add r0, #0xc4
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #0x40
	str r1, [sp]
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r2, [sp, #0x10]
	ldrh r1, [r0]
	add r3, r2, #0
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #7
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x28]
	bl sub_02019964
	ldrh r1, [r4, #2]
	mov r0, #1
	tst r0, r1
	beq _021D2200
	add r0, r4, #0
	mov r1, #0
	bl ov80_021D1FB0
_021D2200:
	ldrh r1, [r4, #2]
	mov r0, #2
	tst r0, r1
	beq _021D2210
	add r0, r4, #0
	mov r1, #1
	bl ov80_021D1FB0
_021D2210:
	ldrh r1, [r4, #2]
	mov r0, #4
	tst r0, r1
	beq _021D2220
	add r0, r4, #0
	mov r1, #2
	bl ov80_021D1FB0
_021D2220:
	ldrh r1, [r4, #2]
	mov r0, #8
	tst r0, r1
	beq _021D2230
	add r0, r4, #0
	mov r1, #3
	bl ov80_021D1FB0
_021D2230:
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #7
	bl sub_0201C3C0
	add sp, #0x1c
	pop {r3, r4, pc}
	thumb_func_end ov80_021D20DC

	thumb_func_start ov80_021D225C
ov80_021D225C: ; 0x021D225C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #6
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	ldr r0, [r4, #0x28]
	mov r1, #7
	mov r2, #3
	mov r3, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x28]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019184
	mov r2, #0
	ldr r0, [r4, #0x28]
	mov r1, #7
	add r3, r2, #0
	bl sub_02019184
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	add r2, r1, #0
	add r3, r1, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #1
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #2
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #6
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x28]
	mov r1, #7
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #6
	bl sub_0201C3C0
	ldr r0, [r4, #0x28]
	mov r1, #7
	bl sub_0201C3C0
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D225C

	thumb_func_start ov80_021D2398
ov80_021D2398: ; 0x021D2398
	push {r4, r5, r6, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	ldr r6, _021D24B0 ; =0x021D3138
	add r3, sp, #0
	mov r2, #5
_021D23A6:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021D23A6
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, _021D24B4 ; =0x021D30E8
	bl sub_0200CA08
	mov r1, #1
	lsl r1, r1, #8
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #0
	bl sub_02021CAC
	mov r1, #1
	lsl r1, r1, #8
	ldr r0, [r4, r1]
	lsl r1, r1, #4
	bl sub_02021CE4
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0x80
	mov r2, #0x6c
	bl sub_0200D494
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, _021D24B8 ; =0x021D3110
	bl sub_0200CA08
	mov r1, #0x41
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #0x41
	lsl r0, r0, #2
	mov r1, #2
	ldr r0, [r4, r0]
	lsl r1, r1, #0xc
	bl sub_02021CE4
	mov r0, #0x41
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	ldr r1, [r4, #0x18]
	mov r0, #0x41
	lsl r0, r0, #2
	mov r2, #7
	add r3, r1, #0
	mul r3, r2
	add r3, #0x19
	lsl r1, r3, #0x10
	ldr r3, [r4, #0x1c]
	ldr r0, [r4, r0]
	mul r2, r3
	sub r2, #0x22
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	ldr r0, [r5, #0x2c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _021D2452
	mov r0, #1
	str r0, [sp, #0x10]
	b _021D2456
_021D2452:
	mov r0, #0
	str r0, [sp, #0x10]
_021D2456:
	add r0, r5, #0
	add r1, r5, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	add r2, sp, #0
	bl sub_0200CA08
	mov r1, #0x42
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	mov r1, #1
	bl sub_02021CAC
	ldr r1, [r5, #0x2c]
	mov r0, #0x42
	ldr r1, [r1, #0xc]
	lsl r0, r0, #2
	lsl r1, r1, #0x10
	ldr r0, [r4, r0]
	lsr r1, r1, #0x10
	bl sub_02021E50
	ldr r1, [r4, #0x18]
	mov r0, #0x42
	lsl r0, r0, #2
	mov r2, #7
	add r3, r1, #0
	mul r3, r2
	add r3, #0x19
	lsl r1, r3, #0x10
	ldr r3, [r4, #0x1c]
	ldr r0, [r4, r0]
	mul r2, r3
	sub r2, #0x22
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	add sp, #0x28
	pop {r4, r5, r6, pc}
	nop
_021D24B0: .word 0x021D3138
_021D24B4: .word 0x021D30E8
_021D24B8: .word 0x021D3110
	thumb_func_end ov80_021D2398

	thumb_func_start ov80_021D24BC
ov80_021D24BC: ; 0x021D24BC
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	cmp r4, #8
	bge _021D24E2
	ldr r0, [r5, #0x28]
	mov r1, #6
	mov r2, #0
	mov r3, #8
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #0
	mov r3, #8
	bl sub_0201C63C
	b _021D2516
_021D24E2:
	cmp r4, #0xf8
	ldr r0, [r5, #0x28]
	ble _021D2500
	mov r1, #6
	mov r2, #0
	mov r3, #0xf8
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #0
	mov r3, #0xf8
	bl sub_0201C63C
	b _021D2516
_021D2500:
	mov r1, #6
	mov r2, #0
	add r3, r4, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #0
	add r3, r4, #0
	bl sub_0201C63C
_021D2516:
	cmp r6, #0x50
	bge _021D2534
	ldr r0, [r5, #0x28]
	mov r1, #6
	mov r2, #3
	mov r3, #0x50
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #3
	mov r3, #0x50
	bl sub_0201C63C
	pop {r4, r5, r6, pc}
_021D2534:
	mov r3, #0x13
	lsl r3, r3, #4
	cmp r6, r3
	ldr r0, [r5, #0x28]
	ble _021D2556
	mov r1, #6
	mov r2, #3
	bl sub_0201C63C
	mov r3, #0x13
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #3
	lsl r3, r3, #4
	bl sub_0201C63C
	pop {r4, r5, r6, pc}
_021D2556:
	mov r1, #6
	mov r2, #3
	add r3, r6, #0
	bl sub_0201C63C
	ldr r0, [r5, #0x28]
	mov r1, #7
	mov r2, #3
	add r3, r6, #0
	bl sub_0201C63C
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov80_021D24BC

	thumb_func_start ov80_021D2570
ov80_021D2570: ; 0x021D2570
	push {r4, r5}
	ldr r5, [r0, #0]
	mov r4, #0
	cmp r5, #0
	ble _021D2594
_021D257A:
	ldr r3, [r0, #0xc]
	cmp r1, r3
	bne _021D258C
	ldr r3, [r0, #0x10]
	cmp r2, r3
	bne _021D258C
	add r0, r4, #0
	pop {r4, r5}
	bx lr
_021D258C:
	add r4, r4, #1
	add r0, #0x10
	cmp r4, r5
	blt _021D257A
_021D2594:
	mov r0, #0
	mvn r0, r0
	pop {r4, r5}
	bx lr
	thumb_func_end ov80_021D2570

	thumb_func_start ov80_021D259C
ov80_021D259C: ; 0x021D259C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r0, #0
	ldr r0, [r6, #0x34]
	mov r1, #0
	str r0, [sp, #8]
	add r0, #0xa4
	mov r2, #0x5c
	bl MI_CpuFill8
	mov r0, #0
	ldr r7, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	ldr r0, [sp, #8]
	add r7, #0xa4
	str r0, [sp, #0xc]
	add r0, #0xb0
	str r0, [sp, #0xc]
_021D25C2:
	ldr r1, [r6, #0x2c]
	ldr r0, [sp]
	add r1, #0x20
	add r4, r1, r0
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _021D2676
	ldr r1, [r4, #0]
	ldr r0, [r6, #0x20]
	cmp r1, r0
	bne _021D25E0
	ldr r2, [r4, #4]
	ldr r0, [r6, #0x24]
	cmp r2, r0
	beq _021D2666
_021D25E0:
	ldr r2, [r4, #4]
	add r0, r7, #0
	bl ov80_021D2570
	cmp r0, #0
	bge _021D25FE
	ldr r0, [sp, #8]
	add r0, #0xa4
	ldr r1, [r0, #0]
	ldr r0, [r7, #0]
	lsl r1, r1, #4
	add r0, r0, #1
	str r0, [r7, #0]
	ldr r0, [sp, #0xc]
	b _021D2602
_021D25FE:
	lsl r1, r0, #4
	ldr r0, [sp, #0xc]
_021D2602:
	add r5, r0, r1
	ldr r0, [r4, #0]
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldrh r0, [r4, #8]
	cmp r0, #3
	bls _021D2616
	mov r0, #0
	b _021D261C
_021D2616:
	lsl r1, r0, #1
	ldr r0, _021D26A0 ; =0x021D2FE4
	ldrh r0, [r0, r1]
_021D261C:
	strh r0, [r5, #8]
	ldr r0, [sp, #4]
	add r1, r6, #0
	strb r0, [r5, #0xa]
	mov r0, #1
	strb r0, [r5, #0xb]
	add r0, r6, #0
	add r0, #0xd8
	add r1, #0xdc
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	ldr r2, _021D26A4 ; =0x021D2FF8
	bl sub_0200CA08
	str r0, [r5, #0xc]
	ldr r2, [r5, #0]
	mov r1, #7
	mul r1, r2
	add r1, #0x19
	lsl r1, r1, #0x10
	ldr r3, [r5, #4]
	mov r2, #7
	mul r2, r3
	sub r2, #0x22
	lsl r2, r2, #0x10
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl sub_0200D494
	ldr r0, [r5, #0xc]
	mov r1, #2
	bl sub_02021F58
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_02021CAC
_021D2666:
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #5
	blt _021D25C2
_021D2676:
	ldr r0, [sp, #8]
	add r0, #0xa4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D269C
	sub r1, r0, #1
	ldr r0, [sp, #8]
	mov r2, #1
	add r0, #0xae
	strb r1, [r0]
	ldr r1, [sp, #8]
	ldr r0, _021D26A8 ; =ov80_021D26AC
	add r1, #0xa4
	bl sub_0200D9E8
	ldr r1, [sp, #8]
	add r1, #0xa8
	str r1, [sp, #8]
	str r0, [r1, #0]
_021D269C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D26A0: .word 0x021D2FE4
_021D26A4: .word 0x021D2FF8
_021D26A8: .word ov80_021D26AC
	thumb_func_end ov80_021D259C

	thumb_func_start ov80_021D26AC
ov80_021D26AC: ; 0x021D26AC
	push {r4, lr}
	add r4, r1, #0
	ldrh r0, [r4, #8]
	add r1, r0, #1
	strh r1, [r4, #8]
	mov r1, #0x1a
	bl _s32_div_f
	cmp r1, #0
	bgt _021D26FC
	ldrb r0, [r4, #0xb]
	mov r1, #0
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, #0x18]
	bl sub_02021CAC
	ldrb r0, [r4, #0xa]
	mov r1, #1
	lsl r0, r0, #4
	add r0, r4, r0
	ldr r0, [r0, #0x18]
	bl sub_02021CAC
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	ldr r1, [r4, #0]
	ldrb r2, [r4, #0xa]
	sub r0, r1, #1
	add r0, r2, r0
	bl _s32_div_f
	strb r1, [r4, #0xa]
	mov r0, #0x41
	ldrh r1, [r4, #8]
	lsl r0, r0, #2
	cmp r1, r0
	bls _021D26FC
	mov r0, #1
	strh r0, [r4, #8]
_021D26FC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov80_021D26AC

	thumb_func_start ov80_021D2700
ov80_021D2700: ; 0x021D2700
	push {r4, r5, r6, lr}
	ldr r6, [r0, #0x34]
	add r0, r6, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D2712
	bl sub_0200DA58
_021D2712:
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	ble _021D2738
	add r5, r6, #0
_021D2720:
	add r0, r5, #0
	add r0, #0xbc
	ldr r0, [r0, #0]
	bl sub_0200C7E4
	add r0, r6, #0
	add r0, #0xa4
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, #0x10
	cmp r4, r0
	blt _021D2720
_021D2738:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov80_021D2700

	thumb_func_start ov80_021D273C
ov80_021D273C: ; 0x021D273C
	push {r4, lr}
	add r3, r0, #0
	ldr r4, [r3, #0x34]
	mov r2, #0
	str r2, [r4, #4]
	str r2, [r4, #8]
	cmp r1, #0
	bne _021D275C
	ldr r0, _021D276C ; =ov80_021D2774
	add r1, r3, #0
	bl sub_0200D9E8
	mov r1, #0x43
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
_021D275C:
	ldr r0, _021D2770 ; =ov80_021D28EC
	add r1, r3, #0
	bl sub_0200D9E8
	mov r1, #0x43
	lsl r1, r1, #2
	str r0, [r4, r1]
	pop {r4, pc}
	; .align 2, 0
_021D276C: .word ov80_021D2774
_021D2770: .word ov80_021D28EC
	thumb_func_end ov80_021D273C

	thumb_func_start ov80_021D2774
ov80_021D2774: ; 0x021D2774
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r4, [r5, #0x34]
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #4
	bls _021D2786
	b _021D28E0
_021D2786:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D2792: ; jump table
	.short _021D279C - _021D2792 - 2 ; case 0
	.short _021D27D0 - _021D2792 - 2 ; case 1
	.short _021D280C - _021D2792 - 2 ; case 2
	.short _021D2848 - _021D2792 - 2 ; case 3
	.short _021D28BE - _021D2792 - 2 ; case 4
_021D279C:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CAC
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021CC8
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_02021E50
	ldr r0, _021D28E4 ; =0x000005E4
	bl sub_02005748
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D27D0:
	ldr r1, [r4, #8]
	mov r0, #0x1f
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1f
	sub r2, r2, r3
	ror r2, r0
	add r0, r3, r2
	beq _021D27F8
	add r3, r1, r3
	ldr r1, _021D28E8 ; =0x021D2FE0
	asr r2, r3, #1
	ldrb r1, [r1, r2]
	add r0, r5, #0
	mov r2, #0
	bl ov80_021D1F30
	ldr r0, [r5, #0x28]
	mov r1, #5
	bl sub_0201C3C0
_021D27F8:
	ldr r1, [r4, #8]
	add r0, r1, #1
	str r0, [r4, #8]
	cmp r1, #7
	ble _021D28E0
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D280C:
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CAC
	mov r0, #1
	lsl r0, r0, #8
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_02021CC8
	mov r3, #0
	str r3, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #2
	bl sub_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2848:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D28E0
	mov r0, #1
	strb r0, [r4, #0x10]
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019CB8
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	mov r1, #5
	add r3, r2, #0
	bl sub_02019CB8
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x68
	bl ov80_021D1D6C
	add r0, r5, #0
	bl ov80_021D1A30
	add r0, r5, #0
	bl ov80_021D19E4
	mov r3, #0
	str r3, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #5
	bl sub_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D28BE:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D28E0
	mov r0, #0
	str r0, [r4, #8]
	str r0, [r4, #4]
	ldrb r0, [r4, #0x14]
	sub r0, r0, #2
	strb r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_0200DA58
	mov r0, #0x43
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D28E0:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D28E4: .word 0x000005E4
_021D28E8: .word 0x021D2FE0
	thumb_func_end ov80_021D2774

	thumb_func_start ov80_021D28EC
ov80_021D28EC: ; 0x021D28EC
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r5, r1, #0
	ldr r4, [r5, #0x34]
	add r6, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021D2908
	cmp r0, #1
	beq _021D2932
	cmp r0, #2
	beq _021D2990
	add sp, #0x10
	pop {r4, r5, r6, pc}
_021D2908:
	mov r3, #0
	str r3, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #2
	bl sub_0200F174
	ldr r0, _021D29B8 ; =0x00000691
	bl sub_02005748
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2932:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D29B4
	mov r2, #0
	str r2, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x28]
	mov r1, #4
	add r3, r2, #0
	bl sub_02019CB8
	add r0, r5, #0
	mov r1, #0
	mov r2, #1
	bl ov80_021D1F30
	ldr r0, [r5, #0x28]
	mov r1, #4
	bl sub_0201C3C0
	ldr r0, [r5, #0x28]
	mov r1, #5
	bl sub_0201C3C0
	mov r3, #0
	str r3, [r5, #0x14]
	mov r0, #8
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	mov r1, #0xd
	str r0, [sp, #8]
	mov r0, #4
	mov r2, #5
	bl sub_0200F174
	ldr r0, [r4, #4]
	add sp, #0x10
	add r0, r0, #1
	str r0, [r4, #4]
	pop {r4, r5, r6, pc}
_021D2990:
	bl sub_0200F2AC
	cmp r0, #0
	beq _021D29B4
	mov r0, #0
	strb r0, [r4, #0x10]
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldrb r0, [r4, #0x14]
	sub r0, r0, #2
	strb r0, [r4, #0x14]
	add r0, r6, #0
	bl sub_0200DA58
	mov r0, #0x43
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D29B4:
	add sp, #0x10
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021D29B8: .word 0x00000691
	thumb_func_end ov80_021D28EC

	thumb_func_start ov80_021D29BC
ov80_021D29BC: ; 0x021D29BC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x34]
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D29D0
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D29D0:
	add r0, r4, #0
	add r0, #0x9c
	ldr r0, [r0, #0]
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x18]
	ldr r3, [r4, #0x1c]
	bl ov80_021D2C5C
	cmp r0, #0
	beq _021D29EA
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021D29EE
_021D29EA:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D29EE:
	ldr r1, [r5, #0x2c]
	mov r0, #1
	str r0, [r1, #0x10]
	ldr r2, [r4, #0x18]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x14]
	ldr r2, [r4, #0x1c]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x18]
	ldr r2, [r4, #0x20]
	ldr r1, [r5, #0x2c]
	str r2, [r1, #0x1c]
	pop {r3, r4, r5, pc}
	thumb_func_end ov80_021D29BC

	.rodata


	.global Unk_ov80_021D2FE0
Unk_ov80_021D2FE0: ; 0x021D2FE0
	.incbin "incbin/overlay80_rodata.bin", 0x184, 0x188 - 0x184

	.global Unk_ov80_021D2FE4
Unk_ov80_021D2FE4: ; 0x021D2FE4
	.incbin "incbin/overlay80_rodata.bin", 0x188, 0x190 - 0x188

	.global Unk_ov80_021D2FEC
Unk_ov80_021D2FEC: ; 0x021D2FEC
	.incbin "incbin/overlay80_rodata.bin", 0x190, 0x19C - 0x190

	.global Unk_ov80_021D2FF8
Unk_ov80_021D2FF8: ; 0x021D2FF8
	.incbin "incbin/overlay80_rodata.bin", 0x19C, 0x1C4 - 0x19C

	.global Unk_ov80_021D3020
Unk_ov80_021D3020: ; 0x021D3020
	.incbin "incbin/overlay80_rodata.bin", 0x1C4, 0x224 - 0x1C4

	.global Unk_ov80_021D3080
Unk_ov80_021D3080: ; 0x021D3080
	.incbin "incbin/overlay80_rodata.bin", 0x224, 0x28C - 0x224

	.global Unk_ov80_021D30E8
Unk_ov80_021D30E8: ; 0x021D30E8
	.incbin "incbin/overlay80_rodata.bin", 0x28C, 0x78

