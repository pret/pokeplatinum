	.include "macros/function.inc"
	.include "overlay087/ov87_021D0D80.inc"

	

	.text


	thumb_func_start ov87_021D0D80
ov87_021D0D80: ; 0x021D0D80
	push {r3, r4, r5, lr}
	mov r2, #1
	add r5, r0, #0
	mov r0, #3
	mov r1, #0x3c
	lsl r2, r2, #0xe
	bl sub_02017FC8
	mov r2, #7
	mov r0, #3
	mov r1, #0x3d
	lsl r2, r2, #0xe
	bl sub_02017FC8
	add r0, r5, #0
	mov r1, #0xdc
	mov r2, #0x3c
	bl sub_0200681C
	add r4, r0, #0
	beq _021D0DF8
	add r0, r5, #0
	bl sub_02006840
	add r1, r4, #0
	add r1, #0xcc
	str r0, [r1, #0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd4
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0xcc
	ldr r0, [r0, #0]
	bl sub_0202E148
	add r1, r4, #0
	add r1, #0xd0
	str r0, [r1, #0]
	add r1, r4, #0
	add r1, #0xcc
	ldr r1, [r1, #0]
	add r0, r4, #0
	bl ov87_021D0FC4
	add r0, r4, #0
	add r1, r4, #0
	bl ov87_021D106C
	add r1, r4, #0
	add r1, #0xc8
	str r0, [r1, #0]
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	mov r1, #0
	bl ov87_021D11D0
	add r4, #0xd8
	str r0, [r4, #0]
_021D0DF8:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov87_021D0D80

	thumb_func_start ov87_021D0DFC
ov87_021D0DFC: ; 0x021D0DFC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl ov87_021D1140
	add r0, r4, #0
	bl ov87_021D1000
	add r0, r5, #0
	bl sub_02006830
	mov r0, #0x3d
	bl sub_0201807C
	mov r0, #0x3c
	bl sub_0201807C
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov87_021D0DFC

	thumb_func_start ov87_021D0E2C
ov87_021D0E2C: ; 0x021D0E2C
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0200682C
	add r4, r0, #0
	add r0, #0xd8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D0E58
	add r0, r4, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl ov87_021D11F8
	cmp r0, #0
	bne _021D0E50
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D0E50:
	add r0, r4, #0
	mov r1, #0
	add r0, #0xd8
	str r1, [r0, #0]
_021D0E58:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _021D0E64
	cmp r0, #1
	beq _021D0F2A
	b _021D0F2E
_021D0E64:
	ldr r0, _021D0F34 ; =0x021BF67C
	mov r1, #2
	ldr r0, [r0, #0x48]
	add r2, r0, #0
	tst r2, r1
	beq _021D0E80
	add r0, r4, #0
	mov r1, #1
	bl ov87_021D0F38
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D0F2E
_021D0E80:
	mov r2, #1
	add r3, r0, #0
	tst r3, r2
	beq _021D0E98
	ldr r0, [r4, #0x1c]
	mov r1, #4
	eor r0, r2
	str r0, [r4, #0x1c]
	add r0, r4, #0
	bl ov87_021D0F38
	b _021D0F2E
_021D0E98:
	mov r2, #0x20
	tst r2, r0
	beq _021D0EB2
	add r0, r4, #0
	bl ov87_021D0F4C
	cmp r0, #0
	beq _021D0F2E
	add r0, r4, #0
	mov r1, #3
	bl ov87_021D0F38
	b _021D0F2E
_021D0EB2:
	mov r2, #0x10
	tst r2, r0
	beq _021D0ECC
	add r0, r4, #0
	bl ov87_021D0F88
	cmp r0, #0
	beq _021D0F2E
	add r0, r4, #0
	mov r1, #3
	bl ov87_021D0F38
	b _021D0F2E
_021D0ECC:
	mov r2, #0x40
	tst r2, r0
	beq _021D0EFC
	ldr r0, [r4, #0x18]
	sub r0, r0, #1
	str r0, [r4, #0x18]
	bpl _021D0EF4
	add r0, r4, #0
	bl ov87_021D0F4C
	cmp r0, #0
	beq _021D0F2E
	ldr r0, [r4, #0x14]
	mov r1, #3
	sub r0, r0, #1
	str r0, [r4, #0x18]
	add r0, r4, #0
	bl ov87_021D0F38
	b _021D0F2E
_021D0EF4:
	add r0, r4, #0
	bl ov87_021D0F38
	b _021D0F2E
_021D0EFC:
	mov r2, #0x80
	tst r0, r2
	beq _021D0F2E
	ldr r0, [r4, #0x18]
	add r2, r0, #1
	str r2, [r4, #0x18]
	ldr r0, [r4, #0x14]
	cmp r2, r0
	blt _021D0F22
	add r0, r4, #0
	bl ov87_021D0F88
	cmp r0, #0
	beq _021D0F2E
	add r0, r4, #0
	mov r1, #3
	bl ov87_021D0F38
	b _021D0F2E
_021D0F22:
	add r0, r4, #0
	bl ov87_021D0F38
	b _021D0F2E
_021D0F2A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D0F2E:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_021D0F34: .word 0x021BF67C
	thumb_func_end ov87_021D0E2C

	thumb_func_start ov87_021D0F38
ov87_021D0F38: ; 0x021D0F38
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xc8
	ldr r0, [r0, #0]
	bl ov87_021D11D0
	add r4, #0xd8
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov87_021D0F38

	thumb_func_start ov87_021D0F4C
ov87_021D0F4C: ; 0x021D0F4C
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	add r2, r1, #1
	add r1, r0, #0
	add r1, #0xd4
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xd4
	ldr r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xd0
	ldr r1, [r1, #0]
	cmp r2, r1
	blt _021D0F74
	add r1, r0, #0
	mov r2, #0
	add r1, #0xd4
	str r2, [r1, #0]
_021D0F74:
	add r1, r0, #0
	add r2, r0, #0
	add r1, #0xcc
	add r2, #0xd4
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov87_021D101C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov87_021D0F4C

	thumb_func_start ov87_021D0F88
ov87_021D0F88: ; 0x021D0F88
	push {r3, lr}
	add r1, r0, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	sub r2, r1, #1
	add r1, r0, #0
	add r1, #0xd4
	str r2, [r1, #0]
	add r1, r0, #0
	add r1, #0xd4
	ldr r1, [r1, #0]
	cmp r1, #0
	bge _021D0FB0
	add r1, r0, #0
	add r1, #0xd0
	ldr r1, [r1, #0]
	sub r2, r1, #1
	add r1, r0, #0
	add r1, #0xd4
	str r2, [r1, #0]
_021D0FB0:
	add r1, r0, #0
	add r2, r0, #0
	add r1, #0xcc
	add r2, #0xd4
	ldr r1, [r1, #0]
	ldr r2, [r2, #0]
	bl ov87_021D101C
	mov r0, #1
	pop {r3, pc}
	thumb_func_end ov87_021D0F88

	thumb_func_start ov87_021D0FC4
ov87_021D0FC4: ; 0x021D0FC4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	mov r4, #0
	add r5, r0, #0
	mov r6, #0xc
	mov r7, #0x3c
_021D0FD4:
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02023790
	str r0, [r5, #0x20]
	mov r0, #8
	mov r1, #0x3c
	bl sub_02023790
	str r0, [r5, #0x24]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #6
	blt _021D0FD4
	ldr r0, [sp]
	mov r2, #0
	ldr r1, [sp, #4]
	str r2, [r0, #0x1c]
	bl ov87_021D101C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov87_021D0FC4

	thumb_func_start ov87_021D1000
ov87_021D1000: ; 0x021D1000
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D1006:
	ldr r0, [r5, #0x20]
	bl sub_020237BC
	ldr r0, [r5, #0x24]
	bl sub_020237BC
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, #6
	blt _021D1006
	pop {r3, r4, r5, pc}
	thumb_func_end ov87_021D1000

	thumb_func_start ov87_021D101C
ov87_021D101C: ; 0x021D101C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r6, r0, #0
	str r2, [sp]
	add r0, r7, #0
	add r1, r2, #0
	bl sub_0202E174
	str r0, [r6, #0]
	ldr r1, [sp]
	add r0, r7, #0
	bl sub_0202E1A8
	str r0, [r6, #0x14]
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r6, #4
	bl sub_0202E274
	ldr r0, [r6, #0x14]
	mov r4, #0
	cmp r0, #0
	ble _021D1064
	add r5, r6, #0
	add r5, #0x20
_021D104E:
	ldr r1, [sp]
	add r0, r7, #0
	add r2, r4, #0
	add r3, r5, #0
	bl sub_0202E1F4
	ldr r0, [r6, #0x14]
	add r4, r4, #1
	add r5, #0x1c
	cmp r4, r0
	blt _021D104E
_021D1064:
	mov r0, #0
	str r0, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov87_021D101C