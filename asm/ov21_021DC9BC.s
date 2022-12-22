	.include "macros/function.inc"
	.include "include/ov21_021DC9BC.inc"

	

	.text


	thumb_func_start ov21_021DC9BC
ov21_021DC9BC: ; 0x021DC9BC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r0, r7, #0
	bl ov21_021DCA5C
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl ov21_021DCAA0
	str r4, [r5, #0]
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0x20]
	bl ov21_021DCAF4
	str r0, [r5, #0x24]
	ldr r0, _021DC9FC ; =ov21_021DCAF8
	str r0, [r5, #8]
	ldr r0, _021DCA00 ; =ov21_021DCB6C
	str r0, [r5, #0xc]
	ldr r0, _021DCA04 ; =ov21_021DCBA8
	str r0, [r5, #0x10]
	ldr r0, _021DCA08 ; =ov21_021DCBD8
	str r0, [r5, #0x14]
	ldr r0, _021DCA0C ; =ov21_021DCCD8
	str r0, [r5, #0x18]
	ldr r0, _021DCA10 ; =ov21_021DCD04
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DC9FC: .word ov21_021DCAF8
_021DCA00: .word ov21_021DCB6C
_021DCA04: .word ov21_021DCBA8
_021DCA08: .word ov21_021DCBD8
_021DCA0C: .word ov21_021DCCD8
_021DCA10: .word ov21_021DCD04
	thumb_func_end ov21_021DC9BC

	thumb_func_start ov21_021DCA14
ov21_021DCA14: ; 0x021DCA14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021DCACC
	ldr r0, [r4, #4]
	bl ov21_021DCAE0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DCA14

	thumb_func_start ov21_021DCA28
ov21_021DCA28: ; 0x021DCA28
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021DCA28

	thumb_func_start ov21_021DCA30
ov21_021DCA30: ; 0x021DCA30
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r4, [r0, #0]
	cmp r5, #3
	blt _021DCA3E
	bl sub_02022974
_021DCA3E:
	str r5, [r4, #4]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DCA30

	thumb_func_start ov21_021DCA44
ov21_021DCA44: ; 0x021DCA44
	ldr r0, [r0, #4]
	str r1, [r0, #4]
	str r2, [r0, #8]
	bx lr
	thumb_func_end ov21_021DCA44

	thumb_func_start ov21_021DCA4C
ov21_021DCA4C: ; 0x021DCA4C
	ldr r0, [r0, #4]
	str r1, [r0, #0xc]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021DCA4C

	thumb_func_start ov21_021DCA54
ov21_021DCA54: ; 0x021DCA54
	ldr r0, [r0, #4]
	str r1, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021DCA54

	thumb_func_start ov21_021DCA5C
ov21_021DCA5C: ; 0x021DCA5C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0xc
	bl sub_02018144
	add r4, r0, #0
	bne _021DCA6E
	bl sub_02022974
_021DCA6E:
	mov r0, #0
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
	add r0, r5, #0
	bl ov21_021D13EC
	str r0, [r4, #0]
	add r0, r5, #0
	mov r1, #5
	bl ov21_021D1410
	str r0, [r4, #8]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DCA5C

	thumb_func_start ov21_021DCAA0
ov21_021DCAA0: ; 0x021DCAA0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x14
	bl sub_02018144
	add r4, r0, #0
	bne _021DCAB2
	bl sub_02022974
_021DCAB2:
	add r2, r4, #0
	mov r1, #0x14
	mov r0, #0
_021DCAB8:
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _021DCAB8
	add r0, r5, #0
	bl ov21_021D13FC
	str r0, [r4, #0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DCAA0

	thumb_func_start ov21_021DCACC
ov21_021DCACC: ; 0x021DCACC
	push {r4, lr}
	add r4, r0, #0
	bne _021DCAD6
	bl sub_02022974
_021DCAD6:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DCACC

	thumb_func_start ov21_021DCAE0
ov21_021DCAE0: ; 0x021DCAE0
	push {r4, lr}
	add r4, r0, #0
	bne _021DCAEA
	bl sub_02022974
_021DCAEA:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov21_021DCAE0

	thumb_func_start ov21_021DCAF4
ov21_021DCAF4: ; 0x021DCAF4
	mov r0, #0
	bx lr
	thumb_func_end ov21_021DCAF4

	thumb_func_start ov21_021DCAF8
ov21_021DCAF8: ; 0x021DCAF8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r6, #4]
	add r5, r1, #0
	mov r1, #0x34
	bl sub_02018144
	add r4, r0, #0
	bne _021DCB0E
	bl sub_02022974
_021DCB0E:
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x34
	bl memset
	str r4, [r6, #8]
	ldr r1, [r5, #0]
	ldr r0, _021DCB68 ; =0x00001744
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _021DCB2A
	mov r0, #0
	str r0, [r5, #4]
	b _021DCB3A
_021DCB2A:
	sub r0, r0, #1
	cmp r0, #1
	bhi _021DCB36
	mov r0, #1
	str r0, [r5, #4]
	b _021DCB3A
_021DCB36:
	mov r0, #2
	str r0, [r5, #4]
_021DCB3A:
	add r2, r4, #0
	ldr r0, [r6, #4]
	add r1, r5, #0
	add r2, #0xc
	bl ov21_021DD900
	str r0, [r4, #4]
	add r2, r4, #0
	ldr r0, [r6, #4]
	add r1, r5, #0
	add r2, #0x10
	bl ov21_021DD908
	str r0, [r4, #8]
	ldr r2, [r6, #4]
	add r0, r4, #0
	add r1, r5, #0
	bl ov21_021DDABC
	ldr r0, [r5, #4]
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DCB68: .word 0x00001744
	thumb_func_end ov21_021DCAF8

	thumb_func_start ov21_021DCB6C
ov21_021DCB6C: ; 0x021DCB6C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0xc]
	add r6, r1, #0
	ldr r4, [r5, #8]
	cmp r0, #1
	bne _021DCB7E
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DCB7E:
	ldr r0, [r5, #0x10]
	cmp r0, #1
	bne _021DCB88
	mov r0, #0
	pop {r4, r5, r6, pc}
_021DCB88:
	ldr r1, [r4, #0]
	ldr r0, [r6, #4]
	cmp r1, r0
	beq _021DCBA4
	add r0, r4, #0
	bl ov21_021DDB68
	ldr r2, [r5, #4]
	add r0, r4, #0
	add r1, r6, #0
	bl ov21_021DDABC
	ldr r0, [r6, #4]
	str r0, [r4, #0]
_021DCBA4:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DCB6C

	thumb_func_start ov21_021DCBA8
ov21_021DCBA8: ; 0x021DCBA8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #8]
	ldr r0, [r5, #4]
	cmp r0, #0
	beq _021DCBB8
	bl sub_020181C4
_021DCBB8:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _021DCBC2
	bl sub_020181C4
_021DCBC2:
	add r0, r5, #0
	bl ov21_021DDB68
	add r0, r5, #0
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DCBA8

	thumb_func_start ov21_021DCBD8
ov21_021DCBD8: ; 0x021DCBD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r3, #8]
	add r4, r1, #0
	str r0, [sp, #4]
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r6, [r4, #8]
	cmp r0, #3
	bhi _021DCCC6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DCBFA: ; jump table
	.short _021DCC02 - _021DCBFA - 2 ; case 0
	.short _021DCC3A - _021DCBFA - 2 ; case 1
	.short _021DCC92 - _021DCBFA - 2 ; case 2
	.short _021DCCBA - _021DCBFA - 2 ; case 3
_021DCC02:
	ldr r0, [r4, #4]
	ldr r1, _021DCCCC ; =0x00000844
	bl sub_02018144
	ldr r2, _021DCCCC ; =0x00000844
	str r0, [r4, #8]
	mov r1, #0
	bl memset
	ldr r5, [r4, #8]
	ldr r0, [r7, #4]
	mov r1, #0
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	bl ov21_021D5868
	ldr r1, _021DCCD0 ; =0x00000804
	str r0, [r5, r1]
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov21_021D5890
	ldr r1, _021DCCD4 ; =0x00000808
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DCCC6
_021DCC3A:
	ldr r0, [r4, #4]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021DCDD0
	ldr r0, [r4, #8]
	ldr r2, [sp, #4]
	ldr r3, [r4, #4]
	add r1, r7, #0
	bl ov21_021DD710
	ldr r0, [r4, #8]
	ldr r1, [sp, #4]
	bl ov21_021DD9E8
	add r0, r6, #0
	bl ov21_021DDB8C
	add r0, r6, #0
	add r1, r5, #0
	bl ov21_021DD964
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021DCC7E
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021DD490
	b _021DCC8A
_021DCC7E:
	add r0, r6, #0
	add r1, r5, #0
	add r2, r7, #0
	mov r3, #1
	bl ov21_021DD554
_021DCC8A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DCCC6
_021DCC92:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _021DCCA4
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021DD508
	b _021DCCAE
_021DCCA4:
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #1
	bl ov21_021DD5E4
_021DCCAE:
	cmp r0, #0
	beq _021DCCC6
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DCCC6
_021DCCBA:
	add r0, r6, #0
	bl ov21_021DDBCC
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCCC6:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DCCCC: .word 0x00000844
_021DCCD0: .word 0x00000804
_021DCCD4: .word 0x00000808
	thumb_func_end ov21_021DCBD8

	thumb_func_start ov21_021DCCD8
ov21_021DCCD8: ; 0x021DCCD8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #8]
	add r7, r2, #0
	ldr r4, [r3, #8]
	str r0, [sp, #4]
	bl ov21_021DDC14
	ldr r0, [r5, #4]
	add r1, r6, #0
	str r0, [sp]
	ldr r0, [sp, #4]
	add r2, r7, #0
	add r3, r4, #0
	bl ov21_021DDA80
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DCCD8

	thumb_func_start ov21_021DCD04
ov21_021DCD04: ; 0x021DCD04
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4, #0]
	add r7, r2, #0
	ldr r5, [r4, #8]
	cmp r0, #4
	bhi _021DCDC4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021DCD20: ; jump table
	.short _021DCD2A - _021DCD20 - 2 ; case 0
	.short _021DCD58 - _021DCD20 - 2 ; case 1
	.short _021DCD80 - _021DCD20 - 2 ; case 2
	.short _021DCD96 - _021DCD20 - 2 ; case 3
	.short _021DCDC0 - _021DCD20 - 2 ; case 4
_021DCD2A:
	add r0, r5, #0
	bl ov21_021DDB8C
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _021DCD44
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl ov21_021DD490
	b _021DCD50
_021DCD44:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	mov r3, #0
	bl ov21_021DD554
_021DCD50:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DCDC4
_021DCD58:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _021DCD6A
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl ov21_021DD508
	b _021DCD74
_021DCD6A:
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl ov21_021DD5E4
_021DCD74:
	cmp r0, #0
	beq _021DCDC4
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DCDC4
_021DCD80:
	add r0, r5, #0
	bl ov21_021DD8B4
	add r0, r5, #0
	add r1, r6, #0
	bl ov21_021DCE20
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DCDC4
_021DCD96:
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	ldr r0, _021DCDC8 ; =0x00000804
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r0, _021DCDCC ; =0x00000808
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r0, [r4, #8]
	bl sub_020181C4
	mov r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021DCDC4
_021DCDC0:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DCDC4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DCDC8: .word 0x00000804
_021DCDCC: .word 0x00000808
	thumb_func_end ov21_021DCD04

	thumb_func_start ov21_021DCDD0
ov21_021DCDD0: ; 0x021DCDD0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, [sp, #0x18]
	add r7, r2, #0
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	add r2, r6, #0
	bl ov21_021DCE40
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021DD668
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021DCFC8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov21_021DD1A8
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	add r3, r6, #0
	bl ov21_021DD2E0
	ldr r1, [r7, #4]
	add r0, r5, #0
	bl ov21_021DDA48
	add r0, r4, #0
	add r1, r7, #0
	bl ov21_021DDCF4
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DCDD0

	thumb_func_start ov21_021DCE20
ov21_021DCE20: ; 0x021DCE20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl ov21_021DD6C0
	add r0, r5, #0
	bl ov21_021DD3FC
	add r0, r5, #0
	bl ov21_021DD2B8
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DD114
	pop {r3, r4, r5, pc}
	thumb_func_end ov21_021DCE20

	thumb_func_start ov21_021DCE40
ov21_021DCE40: ; 0x021DCE40
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r6, r1, #0
	mov r1, #0
	str r1, [sp]
	str r1, [sp, #4]
	mov r1, #1
	str r1, [sp, #8]
	add r4, r2, #0
	str r4, [sp, #0xc]
	ldr r2, [r0, #0]
	mov r1, #0x21
	mov r3, #3
	bl ov21_021D2724
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x40
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	ldr r2, [sp, #0x10]
	mov r3, #0
	str r3, [sp]
	add r7, r0, #0
	ldrh r0, [r2]
	mov r1, #3
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r7, #0
	bl sub_020181C4
	ldr r1, [r6, #0]
	ldr r0, _021DCFB8 ; =0x00001764
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DCEDE
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x41
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r7, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0xd
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r7, #0
	bl sub_020181C4
_021DCEDE:
	ldr r1, [r6, #0]
	ldr r0, _021DCFBC ; =0x0000176C
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DCF22
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x42
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r7, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #7
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0x1c
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r7, #0
	bl sub_020181C4
_021DCF22:
	ldr r1, [r6, #0]
	ldr r0, _021DCFC0 ; =0x00001760
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DCF66
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x43
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r7, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #8
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0xb
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r7, #0
	bl sub_020181C4
_021DCF66:
	ldr r1, [r6, #0]
	ldr r0, _021DCFC4 ; =0x00001768
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _021DCFAA
	str r4, [sp]
	ldr r0, [r5, #0]
	mov r1, #0x44
	mov r2, #1
	add r3, sp, #0x10
	bl ov21_021D27B8
	add r4, r0, #0
	ldr r2, [sp, #0x10]
	mov r0, #0x10
	str r0, [sp]
	ldrh r0, [r2]
	mov r1, #3
	mov r3, #0x19
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	ldrh r0, [r2, #2]
	add r2, #0xc
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #8]
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	bl sub_020198C0
	add r0, r4, #0
	bl sub_020181C4
_021DCFAA:
	ldr r0, [r5, #0]
	mov r1, #3
	ldr r0, [r0, #0]
	bl sub_0201C3C0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DCFB8: .word 0x00001764
_021DCFBC: .word 0x0000176C
_021DCFC0: .word 0x00001760
_021DCFC4: .word 0x00001768
	thumb_func_end ov21_021DCE40

	thumb_func_start ov21_021DCFC8
ov21_021DCFC8: ; 0x021DCFC8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	ldr r6, [r1, #0]
	add r5, r0, #0
	add r0, r6, #0
	add r4, r2, #0
	bl ov21_021D26E0
	add r7, r0, #0
	ldr r0, _021DD0F8 ; =0x000017DC
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x6c
	bl sub_02009A4C
	add r1, r5, #0
	add r1, #0xb4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_0200A3DC
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	bl sub_02009D4C
	ldr r0, _021DD0FC ; =0x000017DA
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x6a
	mov r3, #1
	bl sub_02009BC4
	add r1, r5, #0
	add r1, #0xbc
	str r0, [r1, #0]
	ldr r0, _021DD100 ; =0x000017DB
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x6b
	mov r3, #1
	bl sub_02009BC4
	add r1, r5, #0
	add r1, #0xc0
	str r0, [r1, #0]
	ldr r0, _021DD104 ; =0x000017CD
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r0, #5
	str r4, [sp, #8]
	lsl r0, r0, #6
	ldr r0, [r6, r0]
	add r1, r7, #0
	mov r2, #0x5d
	bl sub_02009A4C
	add r1, r5, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200A3DC
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_02009D4C
	ldr r0, _021DD108 ; =0x0000177E
	add r1, r7, #0
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x51
	str r4, [sp, #0xc]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0xe
	mov r3, #0
	bl sub_02009B04
	add r1, r5, #0
	add r1, #0xd4
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl sub_0200A640
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl sub_02009D4C
	ldr r0, _021DD10C ; =0x000017CB
	add r1, r7, #0
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x52
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x5b
	mov r3, #1
	bl sub_02009BC4
	add r1, r5, #0
	add r1, #0xd8
	str r0, [r1, #0]
	ldr r0, _021DD110 ; =0x000017CC
	add r1, r7, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x53
	str r4, [sp, #8]
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	mov r2, #0x5c
	mov r3, #1
	bl sub_02009BC4
	add r5, #0xdc
	str r0, [r5, #0]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DD0F8: .word 0x000017DC
_021DD0FC: .word 0x000017DA
_021DD100: .word 0x000017DB
_021DD104: .word 0x000017CD
_021DD108: .word 0x0000177E
_021DD10C: .word 0x000017CB
_021DD110: .word 0x000017CC
	thumb_func_end ov21_021DCFC8

	thumb_func_start ov21_021DD114
ov21_021DD114: ; 0x021DD114
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xb4
	ldr r0, [r0, #0]
	ldr r4, [r1, #0]
	bl sub_0200A4E4
	mov r0, #5
	add r1, r5, #0
	lsl r0, r0, #6
	add r1, #0xb4
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x52
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xbc
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x53
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xc0
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200A4E4
	add r0, r5, #0
	add r0, #0xd4
	ldr r0, [r0, #0]
	bl sub_0200A6DC
	mov r0, #5
	add r1, r5, #0
	lsl r0, r0, #6
	add r1, #0xd0
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x51
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xd4
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x52
	add r1, r5, #0
	lsl r0, r0, #2
	add r1, #0xd8
	ldr r0, [r4, r0]
	ldr r1, [r1, #0]
	bl sub_02009D68
	mov r0, #0x53
	lsl r0, r0, #2
	add r5, #0xdc
	ldr r0, [r4, r0]
	ldr r1, [r5, #0]
	bl sub_02009D68
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DD114

	thumb_func_start ov21_021DD1A8
ov21_021DD1A8: ; 0x021DD1A8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x70
	ldr r4, [r1, #0]
	ldr r3, _021DD2B0 ; =0x000017CC
	add r5, r0, #0
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #1
	str r0, [sp, #0x10]
	mov r0, #5
	lsl r0, r0, #6
	add r6, r2, #0
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r2, #0x4e
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x1f
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	mov r0, #0xa
	lsl r0, r0, #0x10
	str r0, [sp, #0x34]
	mov r0, #6
	lsl r0, r0, #0x10
	str r0, [sp, #0x38]
	add r0, sp, #0x2c
	str r6, [sp, #0x48]
	bl sub_02021B90
	add r1, r5, #0
	add r1, #0xc8
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #2
	bl sub_02021D6C
	ldr r3, _021DD2B4 ; =0x000017DB
	mov r0, #0
	str r3, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r1, #0
	str r1, [sp, #0xc]
	mov r0, #5
	str r1, [sp, #0x10]
	lsl r0, r0, #6
	ldr r2, [r4, r0]
	str r2, [sp, #0x14]
	add r2, r0, #4
	ldr r2, [r4, r2]
	str r2, [sp, #0x18]
	add r2, r0, #0
	add r2, #8
	ldr r2, [r4, r2]
	add r0, #0xc
	str r2, [sp, #0x1c]
	ldr r0, [r4, r0]
	add r2, r3, #0
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	str r1, [sp, #0x28]
	add r1, r3, #1
	add r0, sp, #0x4c
	sub r2, #0x5d
	sub r3, r3, #1
	bl sub_020093B4
	mov r0, #0x4f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r4, #0
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	mov r0, #0x1f
	str r0, [sp, #0x40]
	mov r0, #1
	str r0, [sp, #0x44]
	str r6, [sp, #0x48]
	str r4, [sp, #0x34]
	str r4, [sp, #0x38]
	add r6, sp, #0x2c
	add r7, r4, #0
_021DD28E:
	add r0, r6, #0
	bl sub_02021B90
	str r0, [r5, #4]
	add r1, r7, #0
	bl sub_02021CAC
	ldr r0, [r5, #4]
	mov r1, #1
	bl sub_02021FE0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x2c
	blt _021DD28E
	add sp, #0x70
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DD2B0: .word 0x000017CC
_021DD2B4: .word 0x000017DB
	thumb_func_end ov21_021DD1A8

	thumb_func_start ov21_021DD2B8
ov21_021DD2B8: ; 0x021DD2B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl sub_02021BD4
	add r0, r5, #0
	mov r4, #0
	add r0, #0xc8
	str r4, [r0, #0]
	add r6, r4, #0
_021DD2CE:
	ldr r0, [r5, #4]
	bl sub_02021BD4
	str r6, [r5, #4]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x2c
	blt _021DD2CE
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DD2B8

	thumb_func_start ov21_021DD2E0
ov21_021DD2E0: ; 0x021DD2E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	add r0, #0xc8
	add r4, r1, #0
	ldr r0, [r0, #0]
	add r6, r3, #0
	ldr r7, [r4, #0]
	cmp r0, #0
	bne _021DD2F8
	bl sub_02022974
_021DD2F8:
	mov r0, #0x51
	ldr r1, [r4, #0]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _021DD3F4 ; =0x0000177E
	bl sub_02009DC8
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r1, [r7, r1]
	str r1, [sp, #0xc]
	mov r1, #0
	bl sub_0200A72C
	mov r1, #1
	mov r2, #0x1e
	str r0, [sp, #0x14]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r6, [sp, #0x30]
	bl sub_0201FAB4
	str r0, [sp, #8]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #0x10
	mov r2, #2
	bl ov21_021D4D6C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	ldr r2, _021DD3F8 ; =0x000002B9
	add r1, r4, #0
	mov r3, #0x23
	bl ov21_021D4DAC
	add r1, r5, #0
	lsr r0, r0, #1
	str r4, [sp, #0x10]
	add r1, #0xc8
	ldr r1, [r1, #0]
	neg r0, r0
	str r0, [sp, #0x1c]
	mov r0, #7
	mvn r0, r0
	str r0, [sp, #0x20]
	add r0, sp, #0xc
	str r1, [sp, #0x18]
	bl ov21_021D4CA0
	add r1, r5, #0
	add r1, #0xcc
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	add r1, r1, #2
	bl sub_02012A60
	add r0, r4, #0
	bl ov21_021D4DA0
	mov r6, #0
_021DD388:
	mov r0, #0x15
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r1, #9
	mov r2, #2
	bl ov21_021D4D6C
	add r4, r0, #0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	mov r0, #0x15
	lsl r0, r0, #4
	add r3, r6, #0
	ldr r0, [r7, r0]
	ldr r2, _021DD3F8 ; =0x000002B9
	add r1, r4, #0
	add r3, #0x24
	bl ov21_021D4DAC
	mov r1, #0
	str r1, [sp, #0x18]
	mov r1, #0x48
	sub r0, r1, r0
	lsr r0, r0, #1
	add r0, #8
	str r0, [sp, #0x1c]
	mov r0, #0x20
	str r0, [sp, #0x20]
	add r0, sp, #0xc
	str r4, [sp, #0x10]
	bl ov21_021D4CA0
	add r1, r5, #0
	add r1, #0xe0
	str r0, [r1, #0]
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	add r1, r1, #2
	bl sub_02012A60
	add r0, r4, #0
	bl ov21_021D4DA0
	add r6, r6, #1
	add r5, r5, #4
	cmp r6, #3
	blt _021DD388
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021DD3F4: .word 0x0000177E
_021DD3F8: .word 0x000002B9
	thumb_func_end ov21_021DD2E0

	thumb_func_start ov21_021DD3FC
ov21_021DD3FC: ; 0x021DD3FC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl ov21_021D4D1C
	mov r4, #0
_021DD40A:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	bl ov21_021D4D1C
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021DD40A
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov21_021DD3FC

	thumb_func_start ov21_021DD420
ov21_021DD420: ; 0x021DD420
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021FE0
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02012AF0
	mov r4, #0
	mov r6, #1
_021DD440:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021DD440
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DD420

	thumb_func_start ov21_021DD458
ov21_021DD458: ; 0x021DD458
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021FE0
	add r0, r5, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	mov r4, #0
	add r6, r4, #0
_021DD478:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	add r1, r6, #0
	ldr r0, [r0, #0]
	bl sub_02012AF0
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021DD478
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DD458

	thumb_func_start ov21_021DD490
ov21_021DD490: ; 0x021DD490
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r1, #0
	add r6, r3, #0
	bl ov21_021DD420
	ldr r0, [r4, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DD4F6
	cmp r6, #0
	beq _021DD4D2
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r2, r1, #0
	sub r2, #0x11
	bl ov21_021D23F8
	b _021DD4F6
_021DD4D2:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r0, #0x2f
	str r0, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	mov r1, #1
	add r3, r1, #0
	sub r3, #0x11
	bl ov21_021D23F8
_021DD4F6:
	mov r1, #0x5b
	ldr r0, [r5, #0]
	lsl r1, r1, #2
	add r1, r0, r1
	bl ov21_021D24FC
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov21_021DD490

	thumb_func_start ov21_021DD508
ov21_021DD508: ; 0x021DD508
	push {r4, r5, r6, lr}
	add r6, r0, #0
	ldr r0, [r2, #8]
	add r5, r1, #0
	add r4, r3, #0
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r5, #0]
	beq _021DD528
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	b _021DD532
_021DD528:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
_021DD532:
	cmp r0, #0
	beq _021DD544
	cmp r4, #0
	beq _021DD540
	add r0, r6, #0
	bl ov21_021DD458
_021DD540:
	mov r0, #1
	pop {r4, r5, r6, pc}
_021DD544:
	mov r1, #0x5b
	ldr r0, [r5, #0]
	lsl r1, r1, #2
	add r1, r0, r1
	bl ov21_021D24FC
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DD508

	thumb_func_start ov21_021DD554
ov21_021DD554: ; 0x021DD554
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	add r4, r3, #0
	bl ov21_021DD420
	cmp r4, #0
	bne _021DD57E
	ldr r0, [r5, #8]
	mov r1, #0x28
	str r0, [sp]
	ldr r0, [r5, #0x10]
	mov r3, #0x78
	str r0, [sp, #4]
	ldr r0, _021DD5E0 ; =0x00000814
	ldr r2, [r5, #4]
	add r0, r6, r0
	bl ov21_021D2648
_021DD57E:
	ldr r0, [r7, #8]
	bl ov21_021E2A54
	cmp r0, #0
	beq _021DD5DC
	cmp r4, #0
	beq _021DD5B6
	mov r3, #0
	str r3, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r2, #0x2f
	str r2, [sp, #0xc]
	str r3, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [r5, #0x10]
	sub r2, #0x3f
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov21_021D23F8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_021DD5B6:
	mov r0, #0x10
	str r0, [sp]
	mov r2, #0
	str r2, [sp, #4]
	mov r0, #0x2a
	str r0, [sp, #8]
	mov r3, #0x2f
	str r3, [sp, #0xc]
	str r2, [sp, #0x10]
	mov r0, #0x5b
	ldr r1, [r5, #0]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r1, [r5, #0x10]
	sub r3, #0x3f
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov21_021D23F8
_021DD5DC:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DD5E0: .word 0x00000814
	thumb_func_end ov21_021DD554

	thumb_func_start ov21_021DD5E4
ov21_021DD5E4: ; 0x021DD5E4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bne _021DD60C
	ldr r0, _021DD664 ; =0x00000814
	add r0, r5, r0
	bl ov21_021D2664
	str r0, [sp]
	ldr r2, _021DD664 ; =0x00000814
	ldr r0, [r4, #0]
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	bl ov21_021D2164
	b _021DD610
_021DD60C:
	mov r0, #1
	str r0, [sp]
_021DD610:
	ldr r0, [r6, #8]
	bl ov21_021E2A54
	cmp r0, #0
	ldr r1, [r4, #0]
	beq _021DD62A
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D2424
	str r0, [sp, #4]
	b _021DD636
_021DD62A:
	mov r0, #0x5b
	lsl r0, r0, #2
	add r0, r1, r0
	bl ov21_021D24EC
	str r0, [sp, #4]
_021DD636:
	mov r1, #0
	add r2, sp, #0
_021DD63A:
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _021DD648
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #2
	blt _021DD63A
_021DD648:
	cmp r1, #2
	bne _021DD65C
	cmp r7, #1
	bne _021DD656
	add r0, r5, #0
	bl ov21_021DD458
_021DD656:
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021DD65C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021DD664: .word 0x00000814
	thumb_func_end ov21_021DD5E4

	thumb_func_start ov21_021DD668
ov21_021DD668: ; 0x021DD668
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r6, r2, #0
	add r0, r0, #4
	mov r1, #0
	bl sub_0201ADA4
	str r6, [sp]
	ldr r3, _021DD6B4 ; =0x000007F8
	ldr r0, [r4, #0]
	mov r1, #0x1e
	mov r2, #1
	add r3, r5, r3
	bl ov21_021D2808
	ldr r1, _021DD6B8 ; =0x000007F4
	mov r2, #1
	str r0, [r5, r1]
	str r6, [sp]
	lsl r3, r2, #0xb
	ldr r0, [r4, #0]
	mov r1, #0x1f
	add r3, r5, r3
	bl ov21_021D2808
	ldr r1, _021DD6BC ; =0x000007FC
	str r0, [r5, r1]
	ldr r0, [r4, #0]
	mov r1, #8
	add r0, r0, #4
	bl sub_0201C2B4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021DD6B4: .word 0x000007F8
_021DD6B8: .word 0x000007F4
_021DD6BC: .word 0x000007FC
	thumb_func_end ov21_021DD668

	thumb_func_start ov21_021DD6C0
ov21_021DD6C0: ; 0x021DD6C0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_02019EBC
	ldr r0, _021DD708 ; =0x000007F4
	ldr r0, [r5, r0]
	bl sub_020181C4
	ldr r1, _021DD708 ; =0x000007F4
	mov r2, #0
	str r2, [r5, r1]
	add r0, r1, #4
	add r1, #8
	str r2, [r5, r0]
	ldr r0, [r5, r1]
	bl sub_020181C4
	ldr r0, _021DD70C ; =0x000007FC
	mov r1, #0
	str r1, [r5, r0]
	add r0, r0, #4
	str r1, [r5, r0]
	ldr r0, [r4, #0]
	add r0, r0, #4
	bl sub_0201C2B4
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DD708: .word 0x000007F4
_021DD70C: .word 0x000007FC
	thumb_func_end ov21_021DD6C0

	thumb_func_start ov21_021DD710
ov21_021DD710: ; 0x021DD710
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	add r4, r2, #0
	add r6, r0, #0
	str r1, [sp, #0x28]
	str r3, [sp, #0x2c]
	bl ov21_021DD8B4
	add r0, r4, #0
	add r0, #0x1c
	str r0, [sp]
	ldr r0, [r4, #4]
	mov r1, #0x1e
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	ldr r3, _021DD8A4 ; =0x00000808
	str r0, [sp, #8]
	add r0, r6, #0
	ldr r3, [r6, r3]
	add r0, #0xec
	add r2, r1, #0
	bl ov21_021D5948
	ldr r1, _021DD8A8 ; =0x00000838
	str r0, [r6, r1]
	ldr r0, [r4, #0x20]
	sub r1, r0, #1
	ldr r0, [r4, #0xc]
	add r7, r1, r0
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	bl sub_02018184
	add r5, r0, #0
	mov r1, #0
	cmp r7, #0
	ble _021DD776
_021DD75A:
	ldr r2, [r4, #0xc]
	cmp r1, r2
	bhs _021DD766
	ldr r0, [r4, #4]
	ldrb r0, [r0, r1]
	b _021DD76E
_021DD766:
	sub r2, r1, r2
	ldr r0, [r4, #0x1c]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
_021DD76E:
	strb r0, [r5, r1]
	add r1, r1, #1
	cmp r1, r7
	blt _021DD75A
_021DD776:
	add r0, r4, #0
	add r0, #0x2c
	str r0, [sp]
	str r5, [sp, #4]
	mov r0, #0x47
	lsl r0, r0, #4
	mov r1, #0x1e
	ldr r3, _021DD8A4 ; =0x00000808
	str r7, [sp, #8]
	ldr r3, [r6, r3]
	add r0, r6, r0
	add r2, r1, #0
	bl ov21_021D5948
	mov r1, #0x21
	lsl r1, r1, #6
	str r0, [r6, r1]
	add r0, r5, #0
	bl sub_020181C4
	add r0, r6, #0
	mov r1, #0x1e
	add r0, #0xec
	add r2, r1, #0
	bl ov21_021D5214
	mov r0, #0x47
	lsl r0, r0, #4
	mov r1, #0x1e
	add r0, r6, r0
	add r2, r1, #0
	bl ov21_021D5214
	ldr r0, [sp, #0x28]
	ldr r0, [r0, #0]
	bl ov21_021D37BC
	ldr r1, _021DD8AC ; =0x0000015D
	cmp r0, r1
	bne _021DD7D6
	mov r1, #5
	str r1, [sp, #0x38]
	mov r1, #0x5c
	str r1, [sp, #0x34]
	mov r1, #0xe
	mov r0, #4
	str r1, [sp, #0x30]
	b _021DD7E4
_021DD7D6:
	mov r1, #1
	str r1, [sp, #0x38]
	mov r1, #0x5c
	str r1, [sp, #0x34]
	mov r1, #0x20
	mov r0, #0
	str r1, [sp, #0x30]
_021DD7E4:
	add r1, r6, #0
	mov r2, #0
	add r1, #0xc4
	str r2, [r1, #0]
	ldr r1, [sp, #0x30]
	ldr r3, [sp, #0x34]
	str r1, [sp]
	mov r1, #5
	str r1, [sp, #4]
	str r1, [sp, #8]
	ldr r1, _021DD8B0 ; =0x00000804
	ldr r2, [r6, r1]
	add r1, #0x30
	str r2, [sp, #0xc]
	add r2, r4, #0
	add r2, #0x14
	str r2, [sp, #0x10]
	mov r2, #2
	str r2, [sp, #0x14]
	str r0, [sp, #0x18]
	ldr r0, [r4, #8]
	mov r2, #0x2c
	str r0, [sp, #0x1c]
	ldr r0, [r4, #0x10]
	str r0, [sp, #0x20]
	add r0, r6, r1
	add r1, r6, #0
	str r0, [sp, #0x24]
	add r1, #0xc4
	ldr r1, [r1, #0]
	add r0, r6, #4
	bl ov21_021D5A20
	add r1, r6, #0
	add r1, #0xc4
	str r0, [r1, #0]
	ldr r0, [r4, #0x18]
	sub r1, r0, #1
	ldr r0, [r4, #0x10]
	add r7, r1, r0
	ldr r0, [sp, #0x2c]
	add r1, r7, #0
	bl sub_02018184
	add r5, r0, #0
	mov r1, #0
	cmp r7, #0
	ble _021DD860
_021DD844:
	ldr r2, [r4, #0x10]
	cmp r1, r2
	bhs _021DD850
	ldr r0, [r4, #8]
	ldrb r0, [r0, r1]
	b _021DD858
_021DD850:
	sub r2, r1, r2
	ldr r0, [r4, #0x14]
	lsl r2, r2, #2
	ldr r0, [r0, r2]
_021DD858:
	strb r0, [r5, r1]
	add r1, r1, #1
	cmp r1, r7
	blt _021DD844
_021DD860:
	ldr r0, [sp, #0x30]
	ldr r1, _021DD8B0 ; =0x00000804
	str r0, [sp]
	mov r0, #5
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r6, r1]
	add r4, #0x24
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, #3
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x38]
	add r1, #0x38
	str r0, [sp, #0x18]
	str r5, [sp, #0x1c]
	add r0, r6, r1
	str r7, [sp, #0x20]
	add r1, r6, #0
	str r0, [sp, #0x24]
	add r1, #0xc4
	ldr r1, [r1, #0]
	ldr r3, [sp, #0x34]
	add r0, r6, #4
	mov r2, #0x2c
	bl ov21_021D5A20
	add r6, #0xc4
	str r0, [r6, #0]
	add r0, r5, #0
	bl sub_020181C4
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DD8A4: .word 0x00000808
_021DD8A8: .word 0x00000838
_021DD8AC: .word 0x0000015D
_021DD8B0: .word 0x00000804
	thumb_func_end ov21_021DD710

	thumb_func_start ov21_021DD8B4
ov21_021DD8B4: ; 0x021DD8B4
	push {r3, r4, r5, r6, r7, lr}
	mov r2, #0xe1
	add r6, r0, #0
	add r0, #0xec
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	mov r2, #0x47
	lsl r2, r2, #4
	add r0, r6, r2
	mov r1, #0
	sub r2, #0xec
	bl memset
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	ble _021DD8F8
	add r5, r6, #0
	add r7, r4, #0
_021DD8E2:
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021DD8E2
_021DD8F8:
	mov r0, #0
	add r6, #0xc4
	str r0, [r6, #0]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov21_021DD8B4

	thumb_func_start ov21_021DD900
ov21_021DD900: ; 0x021DD900
	mov r0, #0
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov21_021DD900

	thumb_func_start ov21_021DD908
ov21_021DD908: ; 0x021DD908
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	ldr r2, [r5, #0]
	ldr r1, _021DD958 ; =0x00001768
	mov r4, #0
	ldr r1, [r2, r1]
	cmp r1, #0
	bne _021DD928
	ldr r3, _021DD95C ; =0x021E9D7A
	ldr r1, _021DD960 ; =0x0000FFFF
_021DD91E:
	add r3, r3, #2
	ldrh r2, [r3]
	add r4, r4, #1
	cmp r2, r1
	bne _021DD91E
_021DD928:
	cmp r4, #0
	beq _021DD934
	add r1, r4, #0
	bl sub_02018144
	b _021DD936
_021DD934:
	mov r0, #0
_021DD936:
	str r4, [r6, #0]
	ldr r3, [r5, #0]
	ldr r2, _021DD958 ; =0x00001768
	mov r1, #0
	ldr r2, [r3, r2]
	cmp r2, #0
	bne _021DD956
	ldr r4, _021DD95C ; =0x021E9D7A
	ldr r2, _021DD960 ; =0x0000FFFF
_021DD948:
	ldrh r3, [r4]
	add r4, r4, #2
	strb r3, [r0, r1]
	ldrh r3, [r4]
	add r1, r1, #1
	cmp r3, r2
	bne _021DD948
_021DD956:
	pop {r4, r5, r6, pc}
	; .align 2, 0
_021DD958: .word 0x00001768
_021DD95C: .word 0x021E9D7A
_021DD960: .word 0x0000FFFF
	thumb_func_end ov21_021DD908

	thumb_func_start ov21_021DD964
ov21_021DD964: ; 0x021DD964
	push {r3, r4, r5, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	mov r1, #0
	add r0, r0, #4
	bl sub_0201ADA4
	mov r0, #2
	lsl r0, r0, #0xa
	ldr r3, [r5, r0]
	mov r0, #5
	str r0, [sp]
	mov r0, #0x47
	lsl r0, r0, #4
	add r0, r5, r0
	str r0, [sp, #4]
	mov r1, #0x1e
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x59
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldrh r2, [r3, #2]
	ldr r1, [r3, #0x14]
	ldrh r3, [r3]
	ldr r0, [r4, #0]
	lsl r2, r2, #0x13
	lsl r3, r3, #0x13
	add r0, r0, #4
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov21_021D517C
	ldr r0, _021DD9E4 ; =0x000007F8
	mov r1, #0x1e
	ldr r3, [r5, r0]
	mov r0, #5
	str r0, [sp]
	add r5, #0xec
	str r5, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	mov r0, #0x59
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldrh r2, [r3, #2]
	ldr r1, [r3, #0x14]
	ldrh r3, [r3]
	ldr r0, [r4, #0]
	lsl r2, r2, #0x13
	lsl r3, r3, #0x13
	add r0, r0, #4
	lsr r2, r2, #0x10
	lsr r3, r3, #0x10
	bl ov21_021D517C
	ldr r0, [r4, #0]
	add r0, r0, #4
	bl sub_0201A954
	add sp, #0x18
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021DD9E4: .word 0x000007F8
	thumb_func_end ov21_021DD964

	thumb_func_start ov21_021DD9E8
ov21_021DD9E8: ; 0x021DD9E8
	push {r4, lr}
	ldr r1, _021DDA44 ; =0x00000834
	add r4, r0, #0
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021DDA28
	add r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021DDA28
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _021DDA28
	add r1, #0xc
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021DDA28
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #1
	bl sub_02021CAC
	add r4, #0xcc
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0]
	bl sub_020129D0
	pop {r4, pc}
_021DDA28:
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #0
	bl sub_02021CAC
	add r4, #0xcc
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
	pop {r4, pc}
	nop
_021DDA44: .word 0x00000834
	thumb_func_end ov21_021DD9E8

	thumb_func_start ov21_021DDA48
ov21_021DDA48: ; 0x021DDA48
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	mov r7, #1
_021DDA52:
	cmp r4, r6
	bne _021DDA66
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	add r1, r7, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
	b _021DDA74
_021DDA66:
	add r0, r5, #0
	add r0, #0xe0
	ldr r0, [r0, #0]
	mov r1, #0
	ldr r0, [r0, #0]
	bl sub_020129D0
_021DDA74:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021DDA52
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DDA48

	thumb_func_start ov21_021DDA80
ov21_021DDA80: ; 0x021DDA80
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r2, #0
	add r4, r3, #0
	add r7, r1, #0
	ldr r2, [r5, #0]
	ldr r1, [r4, #0]
	cmp r2, r1
	beq _021DDAB8
	ldr r3, [sp, #0x18]
	add r1, r6, #0
	add r2, r4, #0
	bl ov21_021DD710
	add r0, r5, #0
	add r1, r7, #0
	bl ov21_021DD964
	ldr r1, [r6, #4]
	add r0, r5, #0
	bl ov21_021DDA48
	add r0, r5, #0
	add r1, r4, #0
	bl ov21_021DD9E8
	ldr r0, [r4, #0]
	str r0, [r5, #0]
_021DDAB8:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DDA80

	thumb_func_start ov21_021DDABC
ov21_021DDABC: ; 0x021DDABC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0]
	add r6, r2, #0
	bl ov21_021D37BC
	add r7, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021DDADE
	cmp r0, #1
	beq _021DDAE8
	cmp r0, #2
	beq _021DDAF2
	b _021DDAFC
_021DDADE:
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp]
	b _021DDB00
_021DDAE8:
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp]
	b _021DDB00
_021DDAF2:
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #7
	str r0, [sp]
	b _021DDB00
_021DDAFC:
	bl sub_02022974
_021DDB00:
	add r0, r5, #0
	ldr r2, [sp, #4]
	add r0, #0x14
	add r1, r7, #0
	add r3, r6, #0
	bl ov21_021D57B4
	add r0, r5, #0
	ldr r2, [sp]
	add r0, #0x1c
	add r1, r7, #0
	add r3, r6, #0
	bl ov21_021D57B4
	ldr r0, [r4, #0]
	bl ov21_021D3428
	cmp r0, #0
	bne _021DDB46
	add r0, r5, #0
	add r0, #0x24
	add r1, r7, #0
	mov r2, #3
	add r3, r6, #0
	bl ov21_021D57B4
	add r5, #0x2c
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #8
	add r3, r6, #0
	bl ov21_021D57B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021DDB46:
	add r0, r5, #0
	add r0, #0x24
	add r1, r7, #0
	mov r2, #4
	add r3, r6, #0
	bl ov21_021D57B4
	add r5, #0x2c
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #9
	add r3, r6, #0
	bl ov21_021D57B4
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov21_021DDABC

	thumb_func_start ov21_021DDB68
ov21_021DDB68: ; 0x021DDB68
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x14
	bl ov21_021D5844
	add r0, r4, #0
	add r0, #0x1c
	bl ov21_021D5844
	add r0, r4, #0
	add r0, #0x24
	bl ov21_021D5844
	add r4, #0x2c
	add r0, r4, #0
	bl ov21_021D5844
	pop {r4, pc}
	thumb_func_end ov21_021DDB68

	thumb_func_start ov21_021DDB8C
ov21_021DDB8C: ; 0x021DDB8C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _021DDBC8 ; =0x0000080C
	mov r1, #0
	str r1, [r6, r0]
	add r0, r0, #4
	str r1, [r6, r0]
	mov r0, #2
	bl sub_0201FF0C
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	ble _021DDBC6
	add r5, r6, #0
	add r7, r4, #0
_021DDBB0:
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021DDBB0
_021DDBC6:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DDBC8: .word 0x0000080C
	thumb_func_end ov21_021DDB8C

	thumb_func_start ov21_021DDBCC
ov21_021DDBCC: ; 0x021DDBCC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021DDC10 ; =0x04000050
	mov r1, #0xa
	mov r2, #8
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	ble _021DDC0E
	add r5, r6, #0
	add r7, r4, #0
_021DDBF8:
	ldr r0, [r5, #4]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r6, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r0
	blt _021DDBF8
_021DDC0E:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DDC10: .word 0x04000050
	thumb_func_end ov21_021DDBCC

	thumb_func_start ov21_021DDC14
ov21_021DDC14: ; 0x021DDC14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _021DDCEC ; =0x0000080C
	ldr r1, [r5, r0]
	cmp r1, #0x20
	blt _021DDC6A
	mov r4, #0
	str r4, [r5, r0]
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021DDC5A
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	cmp r0, #0
	ble _021DDC50
	add r6, r5, #0
	mov r7, #1
_021DDC3A:
	ldr r0, [r6, #4]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r0
	blt _021DDC3A
_021DDC50:
	mov r0, #0x81
	mov r1, #1
	lsl r0, r0, #4
	str r1, [r5, r0]
	b _021DDC6A
_021DDC5A:
	mov r0, #2
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x81
	add r1, r4, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_021DDC6A:
	ldr r0, _021DDCEC ; =0x0000080C
	ldr r1, [r5, r0]
	cmp r1, #0x10
	blt _021DDC76
	mov r0, #0x20
	sub r1, r0, r1
_021DDC76:
	lsl r2, r1, #0xc
	asr r1, r2, #0x1f
	lsr r0, r2, #0x10
	lsl r3, r1, #0x10
	mov r1, #2
	orr r3, r0
	lsl r2, r2, #0x10
	mov r0, #0
	lsl r1, r1, #0xa
	add r4, r2, r1
	adc r3, r0
	lsl r2, r3, #0x14
	lsr r0, r4, #0xc
	orr r0, r2
	lsl r1, r1, #5
	bl FX_Div
	asr r1, r0, #0xc
	mov r0, #1
	lsl r0, r0, #0xc
	orr r1, r0
	ldr r0, _021DDCF0 ; =0x04000052
	strh r1, [r0]
	ldr r0, _021DDCEC ; =0x0000080C
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	ldr r1, [r5, r0]
	cmp r1, #0x20
	blt _021DDCEA
	add r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021DDCC4
	mov r0, #2
	mov r1, #0
	bl sub_0201FF0C
	pop {r3, r4, r5, r6, r7, pc}
_021DDCC4:
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	mov r4, #0
	cmp r0, #0
	ble _021DDCEA
	add r6, r5, #0
	add r7, r4, #0
_021DDCD4:
	ldr r0, [r6, #4]
	add r1, r7, #0
	bl sub_02021CAC
	add r0, r5, #0
	add r0, #0xc4
	ldr r0, [r0, #0]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r0
	blt _021DDCD4
_021DDCEA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DDCEC: .word 0x0000080C
_021DDCF0: .word 0x04000052
	thumb_func_end ov21_021DDC14

	thumb_func_start ov21_021DDCF4
ov21_021DDCF4: ; 0x021DDCF4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0]
	add r4, r1, #0
	bl ov21_021D2170
	add r6, r0, #0
	ldr r0, [r4, #0]
	bl ov21_021D37BC
	add r2, r0, #0
	mov r0, #0x28
	str r0, [sp]
	mov r0, #0x78
	str r0, [sp, #4]
	ldr r0, [r5, #0]
	ldr r1, [r4, #0]
	mov r3, #2
	bl ov21_021D1890
	add r0, r6, #0
	mov r1, #6
	mov r2, #0
	bl sub_02007DEC
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov21_021DDCF4

	.rodata


	.global Unk_ov21_021E9D6C
Unk_ov21_021E9D6C: ; 0x021E9D6C
	.incbin "incbin/overlay21_rodata.bin", 0x248, 0x24A - 0x248

	.global Unk_ov21_021E9D6E
Unk_ov21_021E9D6E: ; 0x021E9D6E
	.incbin "incbin/overlay21_rodata.bin", 0x24A, 0x24C - 0x24A

	.global Unk_ov21_021E9D70
Unk_ov21_021E9D70: ; 0x021E9D70
	.incbin "incbin/overlay21_rodata.bin", 0x24C, 0x24E - 0x24C

	.global Unk_ov21_021E9D72
Unk_ov21_021E9D72: ; 0x021E9D72
	.incbin "incbin/overlay21_rodata.bin", 0x24E, 0x250 - 0x24E

	.global Unk_ov21_021E9D74
Unk_ov21_021E9D74: ; 0x021E9D74
	.incbin "incbin/overlay21_rodata.bin", 0x250, 0x252 - 0x250

	.global Unk_ov21_021E9D76
Unk_ov21_021E9D76: ; 0x021E9D76
	.incbin "incbin/overlay21_rodata.bin", 0x252, 0x254 - 0x252

	.global Unk_ov21_021E9D78
Unk_ov21_021E9D78: ; 0x021E9D78
	.incbin "incbin/overlay21_rodata.bin", 0x254, 0x256 - 0x254

	.global Unk_ov21_021E9D7A
Unk_ov21_021E9D7A: ; 0x021E9D7A
	.incbin "incbin/overlay21_rodata.bin", 0x256, 0x4

