	.include "macros/function.inc"
	.include "include/ov104_0222E63C.inc"

	

	.text


	thumb_func_start ov104_0222E63C
ov104_0222E63C: ; 0x0222E63C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #0xbc
	add r6, r2, #0
	bl sub_02018144
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xbc
	bl sub_020C4CF4
	str r7, [r4, #0]
	add r0, r4, #0
	add r1, r4, #0
	str r5, [r4, #0x34]
	add r0, #0x52
	strh r6, [r0]
	add r0, r4, #0
	add r0, #0x40
	add r1, #0x3c
	add r2, r6, #0
	add r3, r5, #0
	bl ov104_0222E830
	mov r0, #8
	mov r1, #0x40
	add r2, r5, #0
	bl sub_0200B368
	str r0, [r4, #0x44]
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r5, #0
	bl sub_02023790
	str r0, [r4, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r5, #0
	bl sub_02023790
	lsl r1, r6, #0x10
	mov r2, #0
	str r0, [r4, #0x4c]
	add r0, r4, #0
	lsr r1, r1, #0x10
	add r3, r2, #0
	bl ov104_0222E82C
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E63C

	thumb_func_start ov104_0222E6A8
ov104_0222E6A8: ; 0x0222E6A8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x51
	str r0, [sp]
	ldrsb r0, [r0, r1]
	cmp r0, #0
	bne _0222E6B8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222E6B8:
	ldr r0, [sp]
	add r0, #0x38
	ldrb r0, [r0]
	cmp r0, #0
	bne _0222E6FC
	ldr r5, [sp]
	mov r7, #0
	add r6, r5, #0
	add r6, #0x51
_0222E6CA:
	ldr r4, [r5, #4]
	cmp r4, #0
	beq _0222E6EC
	add r0, r4, #0
	bl ov104_0222E988
	cmp r0, #0
	bne _0222E6EC
	ldr r0, [sp]
	add r1, r4, #0
	bl ov104_0222E7FC
	mov r0, #0
	str r0, [r5, #4]
	ldrsb r0, [r6, r0]
	sub r0, r0, #1
	strb r0, [r6]
_0222E6EC:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #8
	blt _0222E6CA
	ldr r0, [sp]
	ldr r0, [r0, #0]
	bl ov104_0223D8C4
_0222E6FC:
	ldr r0, [sp]
	mov r1, #0x51
	ldrsb r0, [r0, r1]
	cmp r0, #0
	bne _0222E70A
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222E70A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E6A8

	thumb_func_start ov104_0222E710
ov104_0222E710: ; 0x0222E710
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x51
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _0222E720
	bl sub_02022974
_0222E720:
	ldr r0, [r4, #0x44]
	bl sub_0200B3F0
	ldr r0, [r4, #0x48]
	bl sub_020237BC
	ldr r0, [r4, #0x4c]
	bl sub_020237BC
	ldr r0, [r4, #0x40]
	bl sub_020181C4
	ldr r0, [r4, #0x3c]
	bl sub_0200B190
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E710

	thumb_func_start ov104_0222E748
ov104_0222E748: ; 0x0222E748
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x34]
	add r6, r1, #0
	mov r1, #0x90
	add r7, r2, #0
	bl sub_02018144
	mov r1, #0
	mov r2, #0x90
	add r4, r0, #0
	bl sub_020C4CF4
	ldr r2, _0222E7C0 ; =0x0223F63C
	ldr r1, _0222E7C4 ; =0x0223F674
	ldr r2, [r2, #0]
	add r0, r4, #0
	bl ov104_0222E930
	ldr r0, _0222E7C8 ; =0x0000FFFF
	str r5, [r4, #0]
	cmp r6, r0
	beq _0222E780
	add r0, r5, #0
	add r0, #0x52
	ldrh r0, [r0]
	cmp r0, r6
	bne _0222E792
_0222E780:
	add r0, r4, #0
	ldr r1, [r5, #0x40]
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	ldr r1, [r5, #0x3c]
	add r0, #0x80
	str r1, [r0, #0]
	b _0222E7A2
_0222E792:
	add r0, r4, #0
	add r1, r4, #0
	ldr r3, [r5, #0x34]
	add r0, #0x84
	add r1, #0x80
	add r2, r6, #0
	bl ov104_0222E830
_0222E7A2:
	add r1, r4, #0
	add r1, #0x84
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov104_0222E968
	add r0, r4, #0
	add r1, r7, #0
	bl ov104_0222E904
	add r0, r5, #0
	add r1, r4, #0
	bl ov104_0222E7CC
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E7C0: .word 0x0223F63C
_0222E7C4: .word 0x0223F674
_0222E7C8: .word 0x0000FFFF
	thumb_func_end ov104_0222E748

	thumb_func_start ov104_0222E7CC
ov104_0222E7CC: ; 0x0222E7CC
	push {r4, lr}
	mov r3, #0
	add r4, r0, #0
_0222E7D2:
	ldr r2, [r4, #4]
	cmp r2, #0
	bne _0222E7EC
	lsl r2, r3, #2
	add r2, r0, r2
	str r1, [r2, #4]
	mov r1, #0x51
	ldrsb r1, [r0, r1]
	add r0, #0x51
	add r1, r1, #1
	strb r1, [r0]
	mov r0, #1
	pop {r4, pc}
_0222E7EC:
	add r3, r3, #1
	add r4, r4, #4
	cmp r3, #8
	blt _0222E7D2
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov104_0222E7CC

	thumb_func_start ov104_0222E7FC
ov104_0222E7FC: ; 0x0222E7FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x3c]
	cmp r0, r1
	beq _0222E812
	bl sub_0200B190
_0222E812:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	ldr r1, [r5, #0x40]
	cmp r0, r1
	beq _0222E822
	bl sub_020181C4
_0222E822:
	add r0, r4, #0
	bl sub_020181C4
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E7FC

	thumb_func_start ov104_0222E82C
ov104_0222E82C: ; 0x0222E82C
	bx lr
	; .align 2, 0
	thumb_func_end ov104_0222E82C

	thumb_func_start ov104_0222E830
ov104_0222E830: ; 0x0222E830
	push {r3, r4, r5, r6, r7, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #1
	add r7, r3, #0
	bl ov104_0222EA90
	str r0, [sp]
	add r0, r6, #0
	mov r1, #2
	bl ov104_0222EA90
	add r6, r0, #0
	ldr r1, [sp]
	mov r0, #0x95
	add r2, r7, #0
	bl sub_02006AC0
	str r0, [r5, #0]
	mov r0, #1
	mov r1, #0x1a
	add r2, r6, #0
	add r3, r7, #0
	bl sub_0200B144
	str r0, [r4, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E830

	thumb_func_start ov104_0222E86C
ov104_0222E86C: ; 0x0222E86C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x52
	ldrh r0, [r0]
	add r6, r1, #0
	mov r1, #2
	add r7, r2, #0
	bl ov104_0222EA90
	add r4, r0, #0
	add r0, r6, #0
	mov r1, #2
	bl ov104_0222EA90
	add r2, r0, #0
	cmp r4, r2
	beq _0222E8C4
	mov r0, #1
	mov r1, #0x1a
	add r3, r7, #0
	bl sub_0200B144
	add r4, r0, #0
	mov r1, #0
	add r2, r5, #0
_0222E89E:
	ldr r0, [r2, #4]
	cmp r0, #0
	beq _0222E8B4
	add r3, r0, #0
	add r3, #0x80
	ldr r6, [r3, #0]
	ldr r3, [r5, #0x3c]
	cmp r6, r3
	bne _0222E8B4
	add r0, #0x80
	str r4, [r0, #0]
_0222E8B4:
	add r1, r1, #1
	add r2, r2, #4
	cmp r1, #8
	blt _0222E89E
	ldr r0, [r5, #0x3c]
	bl sub_0200B190
	str r4, [r5, #0x3c]
_0222E8C4:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov104_0222E86C

	thumb_func_start ov104_0222E8C8
ov104_0222E8C8: ; 0x0222E8C8
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x10
	bl sub_02018144
	add r4, #0x24
	add r3, r0, #0
	mov r2, #8
_0222E8DA:
	ldrh r1, [r4]
	add r4, r4, #2
	strh r1, [r3]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0222E8DA
	pop {r4, pc}
	thumb_func_end ov104_0222E8C8

	thumb_func_start ov104_0222E8E8
ov104_0222E8E8: ; 0x0222E8E8
	push {r4, lr}
	add r4, r1, #0
	add r0, #0x24
	mov r3, #8
_0222E8F0:
	ldrh r2, [r4]
	add r4, r4, #2
	strh r2, [r0]
	add r0, r0, #2
	sub r3, r3, #1
	bne _0222E8F0
	add r0, r1, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov104_0222E8E8

	thumb_func_start ov104_0222E904
ov104_0222E904: ; 0x0222E904
	push {r4, lr}
	add r4, r0, #0
	ldr r2, [r4, #0x1c]
	lsl r1, r1, #2
	add r1, r2, r1
	str r1, [r4, #0x1c]
	bl ov104_0222EA60
	ldr r1, [r4, #0x1c]
	add r0, r1, r0
	str r0, [r4, #0x1c]
	pop {r4, pc}
	thumb_func_end ov104_0222E904

	thumb_func_start ov104_0222E91C
ov104_0222E91C: ; 0x0222E91C
	add r0, #0x24
	lsl r1, r1, #1
	add r0, r0, r1
	bx lr
	thumb_func_end ov104_0222E91C

	thumb_func_start ov104_0222E924
ov104_0222E924: ; 0x0222E924
	ldr r3, _0222E92C ; =sub_0209B974
	ldr r0, [r0, #0]
	bx r3
	nop
_0222E92C: .word sub_0209B974
	thumb_func_end ov104_0222E924