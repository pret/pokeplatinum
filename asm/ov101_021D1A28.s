	.include "macros/function.inc"
	.include "include/ov101_021D1A28.inc"

	

	.text


	thumb_func_start ov101_021D1A28
ov101_021D1A28: ; 0x021D1A28
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D1A68
	add r0, r4, #0
	bl ov101_021D2B8C
	add r0, r4, #0
	bl ov101_021D45C4
	add r0, r4, #0
	bl ov101_021D4764
	add r0, r4, #0
	bl ov101_021D4D38
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1A28

	thumb_func_start ov101_021D1A4C
ov101_021D1A4C: ; 0x021D1A4C
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D2BC0
	add r0, r4, #0
	bl ov101_021D45E8
	add r0, r4, #0
	bl ov101_021D4788
	add r0, r4, #0
	bl ov101_021D4EA4
	pop {r4, pc}
	thumb_func_end ov101_021D1A4C

	thumb_func_start ov101_021D1A68
ov101_021D1A68: ; 0x021D1A68
	push {r3, r4, r5, r6, r7, lr}
	mov r7, #0x15
	add r5, r0, #0
	mov r4, #0
	lsl r6, r7, #0x11
_021D1A72:
	bl sub_0201D2E8
	add r1, r7, #0
	bl sub_020E1F6C
	add r0, r5, #0
	add r0, #0xa8
	str r1, [r0, #0]
	lsl r0, r1, #0x11
	sub r1, r6, r0
	add r0, r5, #0
	add r0, #0x90
	str r1, [r0, #0]
	add r0, r5, #0
	add r0, #0x90
	mov r1, #0x2a
	ldr r0, [r0, #0]
	lsl r1, r1, #0x10
	bl sub_020E1F6C
	add r0, r5, #0
	add r0, #0x90
	add r4, r4, #1
	add r5, r5, #4
	str r1, [r0, #0]
	cmp r4, #3
	blt _021D1A72
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1A68

	thumb_func_start ov101_021D1AAC
ov101_021D1AAC: ; 0x021D1AAC
	push {r3, r4, r5, lr}
	ldr r4, _021D1ACC ; =0x021D8838
	add r5, r0, #0
_021D1AB2:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _021D1AB2
	cmp r0, #2
	bne _021D1AC8
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D1AC8:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D1ACC: .word 0x021D8838
	thumb_func_end ov101_021D1AAC

	thumb_func_start ov101_021D1AD0
ov101_021D1AD0: ; 0x021D1AD0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x64]
	mov r3, #1
	add r2, r4, #0
	str r1, [r4, #0x68]
	lsl r3, r3, #0x10
	add r2, #0x8c
	str r3, [r2, #0]
	str r1, [r4, #0x74]
	str r1, [r4, #8]
	mov r2, #1
	str r2, [r4, #0]
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D5938
	add r0, r4, #0
	bl ov101_021D4FF8
	add r0, r4, #0
	bl ov101_021D5200
	ldr r1, [r4, #0x60]
	cmp r1, #0
	bne _021D1B1C
	mov r0, #0x3c
	str r0, [r4, #0]
	mov r0, #0x3f
	str r0, [r4, #4]
	b _021D1B38
_021D1B1C:
	cmp r1, #3
	bge _021D1B2A
	mov r0, #0x3b
	str r0, [r4, #0]
	mov r0, #0x3f
	str r0, [r4, #4]
	b _021D1B38
_021D1B2A:
	ldr r0, _021D1B3C ; =0x0000C350
	cmp r1, r0
	blt _021D1B38
	mov r0, #0x3d
	str r0, [r4, #0]
	mov r0, #1
	str r0, [r4, #4]
_021D1B38:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D1B3C: .word 0x0000C350
	thumb_func_end ov101_021D1AD0

	thumb_func_start ov101_021D1B40
ov101_021D1B40: ; 0x021D1B40
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D1B5C
	add r0, r4, #0
	bl ov101_021D5244
	mov r0, #0x3f
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021D1B5C:
	mov r0, #1
	lsl r0, r0, #0xa
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D1B90
	ldr r0, [r4, #0x60]
	sub r0, r0, #3
	str r0, [r4, #0x60]
	ldr r0, _021D1B94 ; =0x0000045C
	ldr r1, [r4, r0]
	add r1, r1, #3
	str r1, [r4, r0]
	mov r0, #2
	str r0, [r4, #0]
	ldr r0, _021D1B98 ; =0x000005ED
	bl sub_02005748
	add r0, r4, #0
	bl ov101_021D5244
	add r0, r4, #0
	bl ov101_021D5010
	mov r0, #0
	pop {r4, pc}
_021D1B90:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D1B94: .word 0x0000045C
_021D1B98: .word 0x000005ED
	thumb_func_end ov101_021D1B40

	thumb_func_start ov101_021D1B9C
ov101_021D1B9C: ; 0x021D1B9C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D1BB8
	ldr r0, [r4, #0x60]
	add r0, r0, #3
	str r0, [r4, #0x60]
	mov r0, #0x3f
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021D1BB8:
	mov r0, #0x12
	lsl r0, r0, #6
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D1BCC
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1BCC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1B9C

	thumb_func_start ov101_021D1BD0
ov101_021D1BD0: ; 0x021D1BD0
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D40A8
	mov r0, #0x46
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	str r1, [r4, r0]
	mov r0, #0
	str r0, [r4, #0x70]
	ldr r1, [r4, #0x74]
	mov r0, #0x33
	tst r0, r1
	beq _021D1BFC
	mov r0, #1
	str r0, [r4, #0x70]
_021D1BFC:
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021D1C38
	add r0, r4, #0
	bl ov101_021D41EC
	cmp r0, #0
	bne _021D1C18
	mov r0, #0x55
	mov r1, #4
	lsl r0, r0, #2
	b _021D1C2C
_021D1C18:
	ldr r0, [r4, #0x74]
	bl ov101_021D5814
	mov r1, #0x55
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x49
	lsl r0, r0, #4
	ldr r1, [r4, r0]
	add r1, r1, #1
_021D1C2C:
	str r1, [r4, r0]
	mov r1, #1
	add r0, r4, #0
	str r1, [r4, #0x30]
	bl ov101_021D4798
_021D1C38:
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D5938
	add r0, r4, #0
	bl ov101_021D5010
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D2BDC
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2BDC
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2BDC
	add r0, r4, #0
	bl ov101_021D5848
	mov r1, #1
	add r0, r4, #0
	str r1, [r4, #0x7c]
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #4
	str r0, [r4, #0]
	ldr r0, _021D1C98 ; =0x000005EE
	bl sub_02005748
	mov r0, #1
	pop {r4, pc}
	nop
_021D1C98: .word 0x000005EE
	thumb_func_end ov101_021D1BD0

	thumb_func_start ov101_021D1C9C
ov101_021D1C9C: ; 0x021D1C9C
	mov r1, #1
	ldr r2, [r0, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	lsl r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D1CB8
	mov r1, #0
	str r1, [r0, #0x6c]
	mov r1, #5
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_021D1CB8:
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D1C9C

	thumb_func_start ov101_021D1CBC
ov101_021D1CBC: ; 0x021D1CBC
	push {r4, lr}
	ldr r1, _021D1DAC ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	ldr r1, [r4, #0x7c]
	cmp r1, #1
	bne _021D1D02
	mov r1, #2
	lsl r1, r1, #0xa
	add r3, r2, #0
	tst r3, r1
	beq _021D1D02
	mov r2, #2
	str r2, [r4, #0x7c]
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D1CEA
	mov r0, #0
	str r0, [r4, #0x70]
_021D1CEA:
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D2BF4
	ldr r0, _021D1DB0 ; =0x00000626
	bl sub_02005748
	b _021D1D8A
_021D1D02:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D1D46
	mov r1, #2
	add r0, r2, #0
	tst r0, r1
	beq _021D1D46
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D1D2E
	mov r0, #0
	str r0, [r4, #0x70]
_021D1D2E:
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2BF4
	ldr r0, _021D1DB0 ; =0x00000626
	bl sub_02005748
	b _021D1D8A
_021D1D46:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D1D8A
	mov r1, #1
	add r0, r2, #0
	tst r0, r1
	beq _021D1D8A
	add r0, r4, #0
	mov r2, #2
	add r0, #0x84
	str r2, [r0, #0]
	add r0, r4, #0
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D1D74
	mov r0, #0
	str r0, [r4, #0x70]
_021D1D74:
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2BF4
	ldr r0, _021D1DB0 ; =0x00000626
	bl sub_02005748
_021D1D8A:
	ldr r0, [r4, #0x7c]
	cmp r0, #2
	bne _021D1DA8
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _021D1DA8
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _021D1DA8
	mov r0, #6
	str r0, [r4, #0]
_021D1DA8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D1DAC: .word 0x021BF67C
_021D1DB0: .word 0x00000626
	thumb_func_end ov101_021D1CBC

	thumb_func_start ov101_021D1DB4
ov101_021D1DB4: ; 0x021D1DB4
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D1DDA
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D1DDA
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2C04
	cmp r0, #1
	bne _021D1DDE
_021D1DDA:
	mov r0, #0
	pop {r4, pc}
_021D1DDE:
	add r0, r4, #0
	bl ov101_021D4FF8
	mov r0, #7
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D1DB4

	thumb_func_start ov101_021D1DEC
ov101_021D1DEC: ; 0x021D1DEC
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	ldr r1, [r4, #0x74]
	add r2, #0x48
	bl ov101_021D5778
	str r0, [r4, #0x44]
	cmp r0, #6
	bne _021D1E24
	ldr r1, [r4, #0x74]
	mov r0, #0xaa
	tst r0, r1
	beq _021D1E10
	mov r0, #0x10
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1E10:
	cmp r1, #0
	beq _021D1E1C
	mov r0, #0xa
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1E1C:
	mov r0, #8
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1E24:
	ldr r2, [r4, #0x74]
	mov r1, #0xaa
	tst r1, r2
	beq _021D1E3E
	mov r0, #2
	tst r0, r2
	beq _021D1E36
	mov r0, #0x15
	b _021D1E38
_021D1E36:
	mov r0, #0x13
_021D1E38:
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1E3E:
	cmp r0, #2
	bne _021D1E4A
	mov r0, #0xe
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1E4A:
	mov r0, #0xc
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1DEC

	thumb_func_start ov101_021D1E54
ov101_021D1E54: ; 0x021D1E54
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D4FF8
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #9
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D1E54

	thumb_func_start ov101_021D1E68
ov101_021D1E68: ; 0x021D1E68
	mov r1, #1
	ldr r2, [r0, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	lsl r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D1E7E
	mov r1, #0
	str r1, [r0, #0x6c]
	str r1, [r0, #0]
_021D1E7E:
	mov r0, #0
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D1E68

	thumb_func_start ov101_021D1E84
ov101_021D1E84: ; 0x021D1E84
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D4FF8
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D4798
	mov r0, #0xb
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1E84

	thumb_func_start ov101_021D1E9C
ov101_021D1E9C: ; 0x021D1E9C
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D1EB8
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D4798
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1EB8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1E9C

	thumb_func_start ov101_021D1EBC
ov101_021D1EBC: ; 0x021D1EBC
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D597C
	ldr r1, _021D1EE8 ; =0x00000458
	str r0, [r4, #0x64]
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0xd
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov101_021D45F8
	add r0, r4, #0
	mov r1, #0xb
	bl ov101_021D4798
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D1EE8: .word 0x00000458
	thumb_func_end ov101_021D1EBC

	thumb_func_start ov101_021D1EEC
ov101_021D1EEC: ; 0x021D1EEC
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r2, [r4, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	mov r1, #0x1e
	lsl r1, r1, #0xc
	str r2, [r4, #0x6c]
	cmp r2, r1
	bne _021D1F0A
	mov r1, #2
	bl ov101_021D4798
	b _021D1F30
_021D1F0A:
	ble _021D1F30
	bl ov101_021D460C
	cmp r0, #1
	bne _021D1F30
	add r0, r4, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D1F30
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D4798
	mov r0, #0
	str r0, [r4, #0x6c]
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1F30:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1EEC

	thumb_func_start ov101_021D1F34
ov101_021D1F34: ; 0x021D1F34
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x64]
	str r1, [r4, #0x6c]
	mov r1, #0xf
	str r1, [r4, #0]
	bl ov101_021D45F8
	add r0, r4, #0
	mov r1, #0xb
	bl ov101_021D4798
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1F34

	thumb_func_start ov101_021D1F54
ov101_021D1F54: ; 0x021D1F54
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r2, [r4, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	mov r1, #0xf
	lsl r1, r1, #0xc
	str r2, [r4, #0x6c]
	cmp r2, r1
	bne _021D1F72
	mov r1, #2
	bl ov101_021D4798
	b _021D1F9A
_021D1F72:
	ble _021D1F9A
	bl ov101_021D460C
	cmp r0, #1
	bne _021D1F9A
	add r0, r4, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D1F9A
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D4798
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #3
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D1F9A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1F54

	thumb_func_start ov101_021D1FA0
ov101_021D1FA0: ; 0x021D1FA0
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D4FF8
	add r0, r4, #0
	bl ov101_021D4210
	add r0, r4, #0
	bl ov101_021D42D0
	add r0, r4, #0
	mov r1, #0xb
	bl ov101_021D4798
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r1, #0x11
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1FA0

	thumb_func_start ov101_021D1FC8
ov101_021D1FC8: ; 0x021D1FC8
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r2, [r4, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	lsl r1, r1, #3
	str r2, [r4, #0x6c]
	cmp r2, r1
	blt _021D1FEE
	mov r1, #3
	bl ov101_021D4798
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D1894
	mov r0, #0x12
	str r0, [r4, #0]
_021D1FEE:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D1FC8

	thumb_func_start ov101_021D1FF4
ov101_021D1FF4: ; 0x021D1FF4
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D2008
	mov r0, #0x17
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D2008:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D1FF4

	thumb_func_start ov101_021D200C
ov101_021D200C: ; 0x021D200C
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D597C
	str r0, [r4, #0x64]
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x14
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov101_021D45F8
	add r0, r4, #0
	bl ov101_021D4210
	add r0, r4, #0
	bl ov101_021D42D0
	add r0, r4, #0
	mov r1, #0xb
	bl ov101_021D4798
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D200C

	thumb_func_start ov101_021D203C
ov101_021D203C: ; 0x021D203C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r2, [r4, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	mov r1, #0x1e
	lsl r1, r1, #0xc
	str r2, [r4, #0x6c]
	cmp r2, r1
	bne _021D2062
	mov r1, #1
	bl ov101_021D1894
	add r0, r4, #0
	mov r1, #3
	bl ov101_021D4798
	b _021D2082
_021D2062:
	blt _021D2082
	bl ov101_021D460C
	cmp r0, #1
	bne _021D2082
	add r0, r4, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D2082
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x17
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D2082:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D203C

	thumb_func_start ov101_021D2088
ov101_021D2088: ; 0x021D2088
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x6c]
	mov r1, #0x16
	str r1, [r4, #0]
	bl ov101_021D45F8
	add r0, r4, #0
	mov r1, #0xb
	bl ov101_021D4798
	add r0, r4, #0
	bl ov101_021D4210
	add r0, r4, #0
	bl ov101_021D42D0
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D2088

	thumb_func_start ov101_021D20B0
ov101_021D20B0: ; 0x021D20B0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r2, [r4, #0x6c]
	lsl r1, r1, #0xc
	add r3, r2, r1
	lsl r2, r1, #3
	str r3, [r4, #0x6c]
	cmp r3, r2
	bne _021D20D4
	mov r1, #3
	bl ov101_021D4798
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D1894
	b _021D20F8
_021D20D4:
	lsl r1, r1, #3
	cmp r3, r1
	blt _021D20F8
	bl ov101_021D460C
	cmp r0, #1
	bne _021D20F8
	add r0, r4, #0
	bl ov101_021D47AC
	cmp r0, #1
	bne _021D20F8
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x18
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D20F8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D20B0

	thumb_func_start ov101_021D20FC
ov101_021D20FC: ; 0x021D20FC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #6
	blt _021D210A
	bl sub_02022974
_021D210A:
	mov r0, #0x19
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D20FC

	thumb_func_start ov101_021D2114
ov101_021D2114: ; 0x021D2114
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	cmp r0, #6
	blt _021D2122
	bl sub_02022974
_021D2122:
	mov r0, #0x1c
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2114

	thumb_func_start ov101_021D212C
ov101_021D212C: ; 0x021D212C
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x64]
	str r1, [r4, #0x68]
	mov r2, #0x1a
	str r2, [r4, #0]
	str r1, [r4, #0x74]
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D5938
	add r0, r4, #0
	bl ov101_021D4FF8
	add r0, r4, #0
	bl ov101_021D5200
	add r0, r4, #0
	mov r1, #7
	bl ov101_021D4798
	ldr r1, [r4, #0x60]
	cmp r1, #0
	bne _021D2174
	mov r0, #0x3c
	str r0, [r4, #0]
	mov r0, #0x3f
	str r0, [r4, #4]
	b _021D2190
_021D2174:
	cmp r1, #3
	bge _021D2182
	mov r0, #0x3b
	str r0, [r4, #0]
	mov r0, #0x3f
	str r0, [r4, #4]
	b _021D2190
_021D2182:
	ldr r0, _021D2194 ; =0x0000C350
	cmp r1, r0
	blt _021D2190
	mov r0, #0x3d
	str r0, [r4, #0]
	mov r0, #0x1a
	str r0, [r4, #4]
_021D2190:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D2194: .word 0x0000C350
	thumb_func_end ov101_021D212C

	thumb_func_start ov101_021D2198
ov101_021D2198: ; 0x021D2198
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D21B4
	mov r0, #0x3f
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov101_021D5244
	mov r0, #0
	pop {r4, pc}
_021D21B4:
	mov r0, #1
	lsl r0, r0, #0xa
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D21E8
	ldr r0, [r4, #0x60]
	sub r0, r0, #3
	str r0, [r4, #0x60]
	ldr r0, _021D21EC ; =0x0000045C
	ldr r1, [r4, r0]
	add r1, r1, #3
	str r1, [r4, r0]
	mov r0, #0x1b
	str r0, [r4, #0]
	ldr r0, _021D21F0 ; =0x000005ED
	bl sub_02005748
	add r0, r4, #0
	bl ov101_021D5244
	add r0, r4, #0
	bl ov101_021D5010
	mov r0, #0
	pop {r4, pc}
_021D21E8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D21EC: .word 0x0000045C
_021D21F0: .word 0x000005ED
	thumb_func_end ov101_021D2198

	thumb_func_start ov101_021D21F4
ov101_021D21F4: ; 0x021D21F4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2210
	ldr r0, [r4, #0x60]
	add r0, r0, #3
	str r0, [r4, #0x60]
	mov r0, #0x3f
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021D2210:
	mov r0, #0x12
	lsl r0, r0, #6
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2224
	mov r0, #0x1c
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D2224:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D21F4

	thumb_func_start ov101_021D2228
ov101_021D2228: ; 0x021D2228
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D4394
	mov r1, #0x46
	lsl r1, r1, #4
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r4, r0]
	add r1, #8
	add r0, r0, #1
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x70]
	ldr r1, [r4, #0x74]
	mov r0, #0x33
	tst r0, r1
	beq _021D2256
	mov r0, #1
	str r0, [r4, #0x70]
_021D2256:
	mov r0, #0
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021D2264
	mov r0, #1
	str r0, [r4, #0x30]
_021D2264:
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D5938
	add r0, r4, #0
	bl ov101_021D5010
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D2BDC
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2BDC
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2BDC
	add r0, r4, #0
	bl ov101_021D5848
	add r0, r4, #0
	mov r1, #9
	bl ov101_021D4798
	mov r1, #1
	add r0, r4, #0
	str r1, [r4, #0x7c]
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x1d
	str r0, [r4, #0]
	ldr r0, _021D22CC ; =0x000005EE
	bl sub_02005748
	mov r0, #1
	pop {r4, pc}
	nop
_021D22CC: .word 0x000005EE
	thumb_func_end ov101_021D2228

	thumb_func_start ov101_021D22D0
ov101_021D22D0: ; 0x021D22D0
	mov r1, #1
	ldr r2, [r0, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	lsl r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D22EC
	mov r1, #0
	str r1, [r0, #0x6c]
	mov r1, #0x1e
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_021D22EC:
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D22D0

	thumb_func_start ov101_021D22F0
ov101_021D22F0: ; 0x021D22F0
	push {r4, lr}
	ldr r1, _021D23E0 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	ldr r1, [r4, #0x7c]
	cmp r1, #1
	bne _021D2336
	mov r1, #2
	lsl r1, r1, #0xa
	add r3, r2, #0
	tst r3, r1
	beq _021D2336
	mov r2, #2
	str r2, [r4, #0x7c]
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D231E
	mov r0, #0
	str r0, [r4, #0x70]
_021D231E:
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D2BF4
	ldr r0, _021D23E4 ; =0x00000626
	bl sub_02005748
	b _021D23BE
_021D2336:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D237A
	mov r1, #2
	add r0, r2, #0
	tst r0, r1
	beq _021D237A
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D2362
	mov r0, #0
	str r0, [r4, #0x70]
_021D2362:
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2BF4
	ldr r0, _021D23E4 ; =0x00000626
	bl sub_02005748
	b _021D23BE
_021D237A:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D23BE
	mov r1, #1
	add r0, r2, #0
	tst r0, r1
	beq _021D23BE
	add r0, r4, #0
	mov r2, #2
	add r0, #0x84
	str r2, [r0, #0]
	add r0, r4, #0
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D5880
	cmp r0, #0
	bne _021D23A8
	mov r0, #0
	str r0, [r4, #0x70]
_021D23A8:
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2BF4
	ldr r0, _021D23E4 ; =0x00000626
	bl sub_02005748
_021D23BE:
	ldr r0, [r4, #0x7c]
	cmp r0, #2
	bne _021D23DC
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _021D23DC
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _021D23DC
	mov r0, #0x1f
	str r0, [r4, #0]
_021D23DC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D23E0: .word 0x021BF67C
_021D23E4: .word 0x00000626
	thumb_func_end ov101_021D22F0

	thumb_func_start ov101_021D23E8
ov101_021D23E8: ; 0x021D23E8
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D240E
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D240E
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2C04
	cmp r0, #1
	bne _021D2412
_021D240E:
	mov r0, #0
	pop {r4, pc}
_021D2412:
	add r0, r4, #0
	bl ov101_021D4FF8
	mov r0, #0x20
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D23E8

	thumb_func_start ov101_021D2420
ov101_021D2420: ; 0x021D2420
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	ldr r1, [r4, #0x74]
	add r2, #0x48
	bl ov101_021D5778
	str r0, [r4, #0x44]
	cmp r0, #6
	bne _021D243C
	mov r0, #0x21
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D243C:
	mov r1, #3
	ldr r2, [r4, #0x74]
	lsl r1, r1, #8
	tst r1, r2
	beq _021D244E
	mov r0, #0x27
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D244E:
	cmp r0, #2
	bne _021D245A
	mov r0, #0x25
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D245A:
	mov r0, #0x23
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2420

	thumb_func_start ov101_021D2464
ov101_021D2464: ; 0x021D2464
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D4FF8
	add r0, r4, #0
	mov r1, #7
	bl ov101_021D4798
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x22
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2464

	thumb_func_start ov101_021D2480
ov101_021D2480: ; 0x021D2480
	mov r1, #1
	ldr r2, [r0, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	lsl r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D249C
	mov r1, #0
	str r1, [r0, #0x6c]
	mov r1, #0x19
	str r1, [r0, #0]
	mov r0, #1
	bx lr
_021D249C:
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D2480

	thumb_func_start ov101_021D24A0
ov101_021D24A0: ; 0x021D24A0
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D597C
	ldr r1, _021D24CC ; =0x00000458
	str r0, [r4, #0x64]
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x24
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov101_021D45F8
	add r0, r4, #0
	mov r1, #0xa
	bl ov101_021D4798
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D24CC: .word 0x00000458
	thumb_func_end ov101_021D24A0

	thumb_func_start ov101_021D24D0
ov101_021D24D0: ; 0x021D24D0
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D460C
	cmp r0, #1
	bne _021D24EC
	add r0, r4, #0
	mov r1, #7
	bl ov101_021D4798
	mov r0, #0x19
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D24EC:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D24D0

	thumb_func_start ov101_021D24F0
ov101_021D24F0: ; 0x021D24F0
	push {r4, lr}
	add r4, r0, #0
	mov r1, #0
	str r1, [r4, #0x64]
	str r1, [r4, #0x6c]
	mov r1, #0x26
	str r1, [r4, #0]
	bl ov101_021D45F8
	add r0, r4, #0
	mov r1, #0xa
	bl ov101_021D4798
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D24F0

	thumb_func_start ov101_021D2510
ov101_021D2510: ; 0x021D2510
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	ldr r2, [r4, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	mov r1, #0xf
	lsl r1, r1, #0xc
	str r2, [r4, #0x6c]
	cmp r2, r1
	ble _021D2548
	bl ov101_021D460C
	cmp r0, #1
	bne _021D2548
	add r0, r4, #0
	mov r1, #7
	bl ov101_021D4798
	add r0, r4, #0
	bl ov101_021D4FF8
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x1c
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D2548:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D2510

	thumb_func_start ov101_021D254C
ov101_021D254C: ; 0x021D254C
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D597C
	ldr r1, _021D2590 ; =0x00000458
	str r0, [r4, #0x64]
	ldr r2, [r4, r1]
	add r0, r2, r0
	str r0, [r4, r1]
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x28
	str r0, [r4, #0]
	add r0, r4, #0
	bl ov101_021D45F8
	add r0, r4, #0
	mov r1, #0xa
	bl ov101_021D4798
	add r0, r4, #0
	bl ov101_021D53B0
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D1894
	add r0, r4, #0
	bl ov101_021D7B08
	ldr r1, _021D2594 ; =0x00000454
	str r0, [r4, r1]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D2590: .word 0x00000458
_021D2594: .word 0x00000454
	thumb_func_end ov101_021D254C

	thumb_func_start ov101_021D2598
ov101_021D2598: ; 0x021D2598
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D460C
	cmp r0, #1
	bne _021D25BC
	ldr r0, _021D25C0 ; =0x00000454
	ldr r0, [r4, r0]
	bl sub_0207136C
	add r0, r4, #0
	mov r1, #7
	bl ov101_021D4798
	mov r0, #0x29
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D25BC:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D25C0: .word 0x00000454
	thumb_func_end ov101_021D2598

	thumb_func_start ov101_021D25C4
ov101_021D25C4: ; 0x021D25C4
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D47B4
	mov r0, #0
	str r0, [r4, #0x1c]
	str r0, [r4, #0x14]
	mov r0, #1
	str r0, [r4, #8]
	mov r1, #0x2a
	str r1, [r4, #0]
	pop {r4, pc}
	thumb_func_end ov101_021D25C4

	thumb_func_start ov101_021D25DC
ov101_021D25DC: ; 0x021D25DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x1c]
	add r1, r0, #1
	ldr r0, _021D2624 ; =0x000003E7
	str r1, [r4, #0x1c]
	cmp r1, r0
	bls _021D25F4
	str r0, [r4, #0x1c]
_021D25F4:
	ldr r1, [r4, #0x1c]
	add r0, r4, #0
	bl ov101_021D79BC
	mov r0, #0x10
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	add r0, r4, #0
	bl ov101_021D44E8
	cmp r0, #0
	bne _021D261A
	mov r0, #1
	str r0, [r4, #0x2c]
_021D261A:
	mov r0, #0x2b
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	nop
_021D2624: .word 0x000003E7
	thumb_func_end ov101_021D25DC

	thumb_func_start ov101_021D2628
ov101_021D2628: ; 0x021D2628
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #1
	bge _021D263A
	bl sub_02022974
_021D263A:
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D5938
	add r0, r4, #0
	bl ov101_021D4FF8
	add r0, r4, #0
	bl ov101_021D5200
	add r0, r4, #0
	mov r1, #7
	bl ov101_021D4798
	mov r2, #0x2c
	str r2, [r4, #0]
	ldr r1, [r4, #0x60]
	cmp r1, #0
	bne _021D267A
	mov r0, #0x3c
	str r0, [r4, #0]
	mov r0, #0x3f
	str r0, [r4, #4]
	b _021D2694
_021D267A:
	cmp r1, #1
	bge _021D2688
	mov r0, #0x3c
	str r0, [r4, #0]
	mov r0, #0x3f
	str r0, [r4, #4]
	b _021D2694
_021D2688:
	ldr r0, _021D2698 ; =0x0000C350
	cmp r1, r0
	blt _021D2694
	mov r0, #0x3d
	str r0, [r4, #0]
	str r2, [r4, #4]
_021D2694:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D2698: .word 0x0000C350
	thumb_func_end ov101_021D2628

	thumb_func_start ov101_021D269C
ov101_021D269C: ; 0x021D269C
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D26B2
	mov r0, #0x3f
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021D26B2:
	mov r0, #1
	lsl r0, r0, #0xa
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D26F8
	ldr r0, [r4, #0x60]
	sub r0, r0, #1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x14]
	sub r0, r0, #1
	str r0, [r4, #0x14]
	ldr r0, _021D26FC ; =0x0000045C
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bge _021D26DC
	mov r0, #0
	str r0, [r4, #0x14]
_021D26DC:
	mov r0, #0x2d
	str r0, [r4, #0]
	ldr r0, _021D2700 ; =0x000005ED
	bl sub_02005748
	add r0, r4, #0
	bl ov101_021D5244
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D4FB8
	mov r0, #0
	pop {r4, pc}
_021D26F8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D26FC: .word 0x0000045C
_021D2700: .word 0x000005ED
	thumb_func_end ov101_021D269C

	thumb_func_start ov101_021D2704
ov101_021D2704: ; 0x021D2704
	push {r4, lr}
	add r4, r0, #0
	mov r0, #8
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2720
	ldr r0, [r4, #0x60]
	add r0, r0, #1
	str r0, [r4, #0x60]
	mov r0, #0x3f
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021D2720:
	mov r0, #0x12
	lsl r0, r0, #6
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2734
	mov r0, #0x2e
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D2734:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D2704

	thumb_func_start ov101_021D2738
ov101_021D2738: ; 0x021D2738
	push {r4, lr}
	mov r2, #0x46
	add r4, r0, #0
	lsl r2, r2, #4
	ldr r1, [r4, r2]
	add r1, r1, #1
	str r1, [r4, r2]
	add r1, r2, #0
	add r1, #0xc
	ldr r1, [r4, r1]
	add r2, #0xc
	add r1, r1, #1
	str r1, [r4, r2]
	mov r1, #1
	str r1, [r4, #0x74]
	str r1, [r4, #0x30]
	str r1, [r4, #0x70]
	mov r1, #0
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D5938
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D4FB8
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D2BDC
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2BDC
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2BDC
	add r0, r4, #0
	bl ov101_021D5848
	add r0, r4, #0
	bl ov101_021D45B0
	mov r1, #1
	add r0, r4, #0
	str r1, [r4, #0x7c]
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	add r0, #0x84
	str r1, [r0, #0]
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r0, #0x2f
	str r0, [r4, #0]
	ldr r0, _021D2820 ; =0x000005EE
	bl sub_02005748
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021D27EC
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021D27EC
	add r0, r4, #0
	bl ov101_021D44C4
	cmp r0, #1
	bne _021D27DE
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_021D27DE:
	ldr r0, [r4, #0x28]
	cmp r0, #1
	bne _021D27EC
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D53F8
_021D27EC:
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021D281C
	ldr r0, [r4, #0x28]
	cmp r0, #0
	bne _021D281C
	add r0, r4, #0
	bl ov101_021D44A0
	cmp r0, #1
	bne _021D280E
	mov r0, #1
	str r0, [r4, #0x24]
	ldr r0, _021D2824 ; =0x000004BC
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
_021D280E:
	ldr r0, [r4, #0x24]
	cmp r0, #1
	bne _021D281C
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D53F8
_021D281C:
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
_021D2820: .word 0x000005EE
_021D2824: .word 0x000004BC
	thumb_func_end ov101_021D2738

	thumb_func_start ov101_021D2828
ov101_021D2828: ; 0x021D2828
	push {r3, lr}
	mov r1, #1
	ldr r2, [r0, #0x6c]
	lsl r1, r1, #0xc
	add r2, r2, r1
	lsl r1, r1, #3
	str r2, [r0, #0x6c]
	cmp r2, r1
	blt _021D284C
	mov r1, #0
	str r1, [r0, #0x6c]
	mov r1, #0x30
	str r1, [r0, #0]
	mov r1, #6
	bl ov101_021D4798
	mov r0, #1
	pop {r3, pc}
_021D284C:
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov101_021D2828

	thumb_func_start ov101_021D2850
ov101_021D2850: ; 0x021D2850
	push {r4, lr}
	ldr r1, _021D2948 ; =0x021BF67C
	add r4, r0, #0
	ldr r2, [r1, #0x48]
	ldr r1, [r4, #0x7c]
	cmp r1, #1
	bne _021D2898
	mov r1, #2
	lsl r1, r1, #0xa
	add r3, r2, #0
	tst r3, r1
	beq _021D2898
	mov r2, #2
	str r2, [r4, #0x7c]
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D58C0
	cmp r0, #0
	bne _021D2880
	mov r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x30]
_021D2880:
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D2BF4
	ldr r0, _021D294C ; =0x000005F5
	bl sub_02005748
	b _021D2924
_021D2898:
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D28DE
	mov r1, #2
	add r0, r2, #0
	tst r0, r1
	beq _021D28DE
	add r0, r4, #0
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r4, #0
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D58C0
	cmp r0, #0
	bne _021D28C6
	mov r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x30]
_021D28C6:
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2BF4
	ldr r0, _021D294C ; =0x000005F5
	bl sub_02005748
	b _021D2924
_021D28DE:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D2924
	mov r1, #1
	add r0, r2, #0
	tst r0, r1
	beq _021D2924
	add r0, r4, #0
	mov r2, #2
	add r0, #0x84
	str r2, [r0, #0]
	add r0, r4, #0
	bl ov101_021D5858
	add r0, r4, #0
	bl ov101_021D58C0
	cmp r0, #0
	bne _021D290E
	mov r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x30]
_021D290E:
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D58F4
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2BF4
	ldr r0, _021D294C ; =0x000005F5
	bl sub_02005748
_021D2924:
	ldr r0, [r4, #0x7c]
	cmp r0, #2
	bne _021D2942
	add r0, r4, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _021D2942
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #2
	bne _021D2942
	mov r0, #0x31
	str r0, [r4, #0]
_021D2942:
	mov r0, #0
	pop {r4, pc}
	nop
_021D2948: .word 0x021BF67C
_021D294C: .word 0x000005F5
	thumb_func_end ov101_021D2850

	thumb_func_start ov101_021D2950
ov101_021D2950: ; 0x021D2950
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D2976
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D2C04
	cmp r0, #1
	beq _021D2976
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D2C04
	cmp r0, #1
	bne _021D297A
_021D2976:
	mov r0, #0
	pop {r4, pc}
_021D297A:
	add r0, r4, #0
	bl ov101_021D4FF8
	mov r0, #0x32
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2950

	thumb_func_start ov101_021D2988
ov101_021D2988: ; 0x021D2988
	push {r4, lr}
	add r4, r0, #0
	add r2, r4, #0
	ldr r1, [r4, #0x74]
	add r2, #0x48
	bl ov101_021D57EC
	str r0, [r4, #0x44]
	cmp r0, #6
	ldr r0, [r4, #0x28]
	bne _021D29AE
	cmp r0, #1
	bne _021D29A6
	mov r0, #3
	str r0, [r4, #0x28]
_021D29A6:
	mov r0, #0x33
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
_021D29AE:
	cmp r0, #1
	bne _021D29B6
	mov r0, #2
	str r0, [r4, #0x28]
_021D29B6:
	mov r0, #0x34
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2988

	thumb_func_start ov101_021D29C0
ov101_021D29C0: ; 0x021D29C0
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D4FF8
	add r0, r4, #0
	mov r1, #7
	bl ov101_021D4798
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bgt _021D29DA
	mov r0, #0x36
	b _021D29DC
_021D29DA:
	mov r0, #0x2b
_021D29DC:
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D29C0

	thumb_func_start ov101_021D29E4
ov101_021D29E4: ; 0x021D29E4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x44]
	lsl r2, r1, #2
	ldr r1, _021D2A10 ; =0x021D94F0
	ldr r3, [r1, r2]
	ldr r1, _021D2A14 ; =0x00000458
	str r3, [r4, #0x64]
	ldr r2, [r4, r1]
	add r2, r2, r3
	str r2, [r4, r1]
	bl ov101_021D45F8
	add r0, r4, #0
	mov r1, #0xa
	bl ov101_021D4798
	mov r0, #0
	str r0, [r4, #0x6c]
	mov r1, #0x35
	str r1, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
_021D2A10: .word 0x021D94F0
_021D2A14: .word 0x00000458
	thumb_func_end ov101_021D29E4

	thumb_func_start ov101_021D2A18
ov101_021D2A18: ; 0x021D2A18
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D460C
	cmp r0, #0
	bne _021D2A28
	mov r0, #0
	pop {r4, pc}
_021D2A28:
	add r0, r4, #0
	mov r1, #7
	bl ov101_021D4798
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bgt _021D2A3A
	mov r0, #0x36
	b _021D2A3C
_021D2A3A:
	mov r0, #0x2b
_021D2A3C:
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2A18

	thumb_func_start ov101_021D2A44
ov101_021D2A44: ; 0x021D2A44
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	sub r0, r0, #1
	str r0, [r4, #0x10]
	beq _021D2A54
	bl sub_02022974
_021D2A54:
	ldr r0, [r4, #0x2c]
	cmp r0, #1
	bne _021D2A70
	ldr r0, [r4, #0x24]
	cmp r0, #0
	bne _021D2A70
	add r0, r4, #0
	mov r1, #8
	bl ov101_021D4798
	mov r0, #0x3a
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021D2A70:
	mov r0, #0x37
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2A44

	thumb_func_start ov101_021D2A78
ov101_021D2A78: ; 0x021D2A78
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D44FC
	add r0, r4, #0
	bl ov101_021D4550
	ldr r1, [r4, #0x24]
	cmp r1, #1
	bne _021D2A8E
	mov r0, #2
_021D2A8E:
	cmp r0, #2
	bne _021D2AA2
	add r0, r4, #0
	mov r1, #5
	bl ov101_021D4798
	mov r0, #0x38
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021D2AA2:
	cmp r0, #1
	bne _021D2AB6
	add r0, r4, #0
	mov r1, #0xc
	bl ov101_021D4798
	mov r0, #0x39
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
_021D2AB6:
	mov r0, #0x23
	mov r1, #0
	bl sub_02005844
	mov r0, #0x2a
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2A78

	thumb_func_start ov101_021D2AC8
ov101_021D2AC8: ; 0x021D2AC8
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #0
	bne _021D2AD8
	mov r0, #0
	pop {r4, pc}
_021D2AD8:
	mov r0, #0x2a
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2AC8

	thumb_func_start ov101_021D2AE0
ov101_021D2AE0: ; 0x021D2AE0
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #0
	bne _021D2AF0
	mov r0, #0
	pop {r4, pc}
_021D2AF0:
	mov r0, #0x2a
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2AE0

	thumb_func_start ov101_021D2AF8
ov101_021D2AF8: ; 0x021D2AF8
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D47AC
	cmp r0, #0
	bne _021D2B08
	mov r0, #0
	pop {r4, pc}
_021D2B08:
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x20]
	cmp r1, r0
	bls _021D2B12
	str r1, [r4, #0x20]
_021D2B12:
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D1894
	add r0, r4, #0
	bl ov101_021D53D4
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end ov101_021D2AF8

	thumb_func_start ov101_021D2B28
ov101_021D2B28: ; 0x021D2B28
	push {r4, lr}
	mov r1, #0
	add r4, r0, #0
	bl ov101_021D148C
	mov r0, #0x3e
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2B28

	thumb_func_start ov101_021D2B3C
ov101_021D2B3C: ; 0x021D2B3C
	push {r4, lr}
	mov r1, #2
	add r4, r0, #0
	bl ov101_021D148C
	mov r0, #0x3e
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2B3C

	thumb_func_start ov101_021D2B50
ov101_021D2B50: ; 0x021D2B50
	push {r4, lr}
	mov r1, #1
	add r4, r0, #0
	bl ov101_021D148C
	mov r0, #0x3e
	str r0, [r4, #0]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2B50

	thumb_func_start ov101_021D2B64
ov101_021D2B64: ; 0x021D2B64
	push {r4, lr}
	add r4, r0, #0
	mov r0, #3
	bl ov101_021D55F8
	cmp r0, #0
	beq _021D2B7C
	add r0, r4, #0
	bl ov101_021D14E4
	ldr r0, [r4, #4]
	str r0, [r4, #0]
_021D2B7C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D2B64

	thumb_func_start ov101_021D2B80
ov101_021D2B80: ; 0x021D2B80
	push {r3, lr}
	bl ov101_021D5244
	mov r0, #2
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2B80

	thumb_func_start ov101_021D2B8C
ov101_021D2B8C: ; 0x021D2B8C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	add r5, #0xb4
	mov r4, #0
	add r6, r5, #0
_021D2B98:
	mov r0, #0
	str r0, [r5, #0]
	add r2, r4, #0
	str r4, [r5, #0x10]
	ldr r0, _021D2BBC ; =ov101_021D2C10
	add r1, r6, #0
	add r2, #0x81
	str r7, [r5, #0x20]
	bl sub_0200D9E8
	str r0, [r5, #0x1c]
	add r4, r4, #1
	add r5, #0x24
	add r6, #0x24
	cmp r4, #3
	blo _021D2B98
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2BBC: .word ov101_021D2C10
	thumb_func_end ov101_021D2B8C

	thumb_func_start ov101_021D2BC0
ov101_021D2BC0: ; 0x021D2BC0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D2BC6:
	add r0, r5, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	bl sub_0200DA58
	add r4, r4, #1
	add r5, #0x24
	cmp r4, #3
	blo _021D2BC6
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2BC0

	thumb_func_start ov101_021D2BDC
ov101_021D2BDC: ; 0x021D2BDC
	mov r2, #0x24
	add r3, r1, #0
	mul r3, r2
	add r1, r0, r3
	add r0, r0, r3
	mov r2, #1
	add r1, #0xb4
	str r2, [r1, #0]
	add r0, #0xb8
	str r2, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D2BDC

	thumb_func_start ov101_021D2BF4
ov101_021D2BF4: ; 0x021D2BF4
	mov r2, #0x24
	mul r2, r1
	add r0, r0, r2
	mov r3, #2
	add r0, #0xb4
	str r3, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D2BF4

	thumb_func_start ov101_021D2C04
ov101_021D2C04: ; 0x021D2C04
	mov r2, #0x24
	mul r2, r1
	add r0, r0, r2
	add r0, #0xb8
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end ov101_021D2C04

	thumb_func_start ov101_021D2C10
ov101_021D2C10: ; 0x021D2C10
	push {r4, r5, r6, lr}
	add r5, r1, #0
	ldr r4, [r5, #0x20]
	ldr r6, _021D2C2C ; =0x021D86C4
_021D2C18:
	ldr r2, [r5, #0]
	add r0, r5, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	add r1, r4, #0
	blx r2
	cmp r0, #1
	beq _021D2C18
	pop {r4, r5, r6, pc}
	nop
_021D2C2C: .word 0x021D86C4
	thumb_func_end ov101_021D2C10

	thumb_func_start ov101_021D2C30
ov101_021D2C30: ; 0x021D2C30
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D2C30

	thumb_func_start ov101_021D2C34
ov101_021D2C34: ; 0x021D2C34
	push {r3, lr}
	add r2, r0, #0
	add r0, r1, #0
	ldr r1, [r2, #0x10]
	add r2, r0, #0
	add r2, #0x8c
	ldr r2, [r2, #0]
	bl ov101_021D3FE8
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2C34

	thumb_func_start ov101_021D2C4C
ov101_021D2C4C: ; 0x021D2C4C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r2, [r5, #0]
	add r4, r1, #0
	add r2, r2, #1
	str r2, [r5, #0]
	mov r2, #0
	str r2, [r5, #0x14]
	str r2, [r5, #0x18]
	ldr r2, [r4, #0x30]
	cmp r2, #1
	ldr r2, [r4, #8]
	bne _021D2C96
	cmp r2, #0
	bne _021D2C80
	bl ov101_021D2D88
	cmp r0, #0
	bne _021D2CA4
	add r0, r5, #0
	add r1, r4, #0
	bl ov101_021D3780
	mov r0, #0
	str r0, [r4, #0x30]
	b _021D2CA4
_021D2C80:
	bl ov101_021D2DC0
	cmp r0, #0
	bne _021D2CA4
	add r0, r5, #0
	add r1, r4, #0
	bl ov101_021D3830
	mov r0, #0
	str r0, [r4, #0x30]
	b _021D2CA4
_021D2C96:
	cmp r2, #0
	bne _021D2CA0
	bl ov101_021D3780
	b _021D2CA4
_021D2CA0:
	bl ov101_021D3830
_021D2CA4:
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D2C4C

	thumb_func_start ov101_021D2CA8
ov101_021D2CA8: ; 0x021D2CA8
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	add r3, r1, #0
	ldr r1, [r5, #0x10]
	add r7, r3, #0
	lsl r0, r1, #2
	add r7, #0x90
	str r0, [sp]
	ldr r0, [r7, r0]
	mov r4, #0
	lsr r6, r0, #0x1f
	lsl r2, r0, #0xf
	sub r2, r2, r6
	mov r0, #0xf
	ror r2, r0
	add r0, r6, r2
	beq _021D2CE2
	add r2, r3, #0
	add r2, #0x8c
	ldr r2, [r2, #0]
	mov r4, #1
	cmp r0, r2
	bge _021D2CDA
	add r2, r0, #0
_021D2CDA:
	add r0, r3, #0
	bl ov101_021D4024
	b _021D2D08
_021D2CE2:
	ldr r2, [r5, #0x18]
	cmp r2, #0
	beq _021D2D08
	sub r0, r2, #1
	str r0, [r5, #0x18]
	add r0, r3, #0
	add r3, #0x8c
	ldr r2, [r3, #0]
	mov r4, #1
	bl ov101_021D3FE8
	ldr r0, [sp]
	ldr r0, [r7, r0]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0xf
	sub r1, r1, r2
	mov r0, #0xf
	ror r1, r0
	add r0, r2, r1
_021D2D08:
	cmp r0, #0
	bne _021D2D44
	ldr r6, [r5, #0x18]
	cmp r6, #0
	bne _021D2D44
	ldr r3, _021D2D4C ; =0x021D86D8
	add r2, sp, #4
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	cmp r6, #4
	str r0, [r2, #0]
	ble _021D2D28
	mov r6, #4
_021D2D28:
	lsl r1, r6, #2
	add r0, sp, #4
	ldr r0, [r0, r1]
	str r0, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	cmp r4, #0
	bne _021D2D44
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2D44:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2D4C: .word 0x021D86D8
	thumb_func_end ov101_021D2CA8

	thumb_func_start ov101_021D2D50
ov101_021D2D50: ; 0x021D2D50
	push {r3, r4}
	ldr r2, [r0, #0x10]
	ldr r3, [r0, #8]
	add r1, #0x9c
	lsl r2, r2, #2
	str r3, [r1, r2]
	ldr r3, [r0, #8]
	neg r3, r3
	str r3, [r0, #8]
	ldr r3, [r0, #0xc]
	add r4, r3, #1
	mov r3, #1
	str r4, [r0, #0xc]
	tst r3, r4
	bne _021D2D74
	ldr r3, [r0, #8]
	asr r3, r3, #2
	str r3, [r0, #8]
_021D2D74:
	ldr r3, [r0, #8]
	cmp r3, #0
	bne _021D2D82
	mov r3, #0
	str r3, [r0, #0]
	str r3, [r0, #4]
	str r3, [r1, r2]
_021D2D82:
	mov r0, #0
	pop {r3, r4}
	bx lr
	thumb_func_end ov101_021D2D50

	thumb_func_start ov101_021D2D88
ov101_021D2D88: ; 0x021D2D88
	push {r3, lr}
	ldr r2, [r1, #0x74]
	cmp r2, #0
	bne _021D2D94
	mov r0, #0
	pop {r3, pc}
_021D2D94:
	ldr r2, [r0, #0x10]
	cmp r2, #0
	beq _021D2DA4
	cmp r2, #1
	beq _021D2DAA
	cmp r2, #2
	beq _021D2DB0
	b _021D2DB6
_021D2DA4:
	bl ov101_021D2DE0
	pop {r3, pc}
_021D2DAA:
	bl ov101_021D2E1C
	pop {r3, pc}
_021D2DB0:
	bl ov101_021D2E58
	pop {r3, pc}
_021D2DB6:
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2D88

	thumb_func_start ov101_021D2DC0
ov101_021D2DC0: ; 0x021D2DC0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	bne _021D2DD0
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D2DD0:
	bl ov101_021D5618
	add r2, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl ov101_021D3738
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D2DC0

	thumb_func_start ov101_021D2DE0
ov101_021D2DE0: ; 0x021D2DE0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x74]
	bl ov101_021D5618
	add r6, r0, #0
	cmp r6, #6
	bne _021D2DF6
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2DF6:
	add r0, r5, #0
	add r1, r4, #0
	bl ov101_021D38FC
	cmp r0, #1
	bne _021D2E0E
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov101_021D2E94
	pop {r4, r5, r6, pc}
_021D2E0E:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov101_021D2FAC
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2DE0

	thumb_func_start ov101_021D2E1C
ov101_021D2E1C: ; 0x021D2E1C
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x74]
	bl ov101_021D5618
	add r6, r0, #0
	cmp r6, #6
	bne _021D2E32
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2E32:
	add r0, r5, #0
	add r1, r4, #0
	bl ov101_021D38FC
	cmp r0, #1
	bne _021D2E4A
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov101_021D32EC
	pop {r4, r5, r6, pc}
_021D2E4A:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov101_021D3394
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2E1C

	thumb_func_start ov101_021D2E58
ov101_021D2E58: ; 0x021D2E58
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #0x74]
	bl ov101_021D5618
	add r6, r0, #0
	cmp r6, #6
	bne _021D2E6E
	mov r0, #0
	pop {r4, r5, r6, pc}
_021D2E6E:
	add r0, r5, #0
	add r1, r4, #0
	bl ov101_021D38FC
	cmp r0, #1
	bne _021D2E86
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov101_021D32EC
	pop {r4, r5, r6, pc}
_021D2E86:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl ov101_021D3394
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2E58

	thumb_func_start ov101_021D2E94
ov101_021D2E94: ; 0x021D2E94
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r0, [r0, #0x10]
	add r4, r1, #0
	add r6, r2, #0
	str r0, [sp, #8]
	mov r7, #1
_021D2EA4:
	ldr r1, [sp, #8]
	add r0, r4, #0
	add r2, r7, #0
	bl ov101_021D55D4
	cmp r6, r0
	bne _021D2EDC
	mov r5, #0
	cmp r7, #3
	bgt _021D2EDC
_021D2EB8:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D2ED4
	ldr r0, [sp]
	add r1, r7, r5
	str r1, [r0, #0x14]
	str r5, [r0, #0x18]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D2ED4:
	add r5, r5, #1
	add r0, r7, r5
	cmp r0, #3
	ble _021D2EB8
_021D2EDC:
	add r7, r7, #1
	cmp r7, #3
	ble _021D2EA4
	mov r0, #4
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x70]
	cmp r0, #1
	bne _021D2EF0
	mov r0, #0x15
	str r0, [sp, #0x10]
_021D2EF0:
	add r0, r4, #0
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r7, #1
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #1
	blt _021D2FA4
_021D2F00:
	mov r2, #1
	ldr r1, [sp, #8]
	add r0, r4, #0
	sub r2, r2, r7
	bl ov101_021D55D4
	cmp r6, r0
	bne _021D2F9C
	mov r5, #0
_021D2F12:
	add r0, r7, r5
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, r4, #0
	add r2, r6, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D2F96
	cmp r5, #0
	bne _021D2F58
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0xc]
	lsr r0, r0, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r0
	mov r1, #0x1e
	ror r2, r1
	add r0, r0, r2
	bne _021D2F86
	add r0, r4, #0
	add r1, r7, #2
	add r2, r6, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D2F86
	ldr r0, [sp]
	mov r1, #3
	str r1, [r0, #0x14]
	add r1, r7, #2
	str r1, [r0, #0x18]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D2F58:
	cmp r5, #1
	bne _021D2F86
	ldr r0, [sp, #0xc]
	mov r1, #6
	bl sub_020E1F6C
	cmp r1, #2
	bge _021D2F86
	add r0, r4, #0
	add r1, r7, #2
	add r2, r6, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D2F86
	ldr r0, [sp]
	mov r1, #3
	str r1, [r0, #0x14]
	add r1, r7, #2
	str r1, [r0, #0x18]
	add sp, #0x14
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D2F86:
	ldr r0, [sp]
	add r1, r5, #1
	str r1, [r0, #0x14]
	ldr r1, [sp, #4]
	add sp, #0x14
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D2F96:
	add r5, r5, #1
	cmp r5, #3
	blt _021D2F12
_021D2F9C:
	ldr r0, [sp, #0x10]
	add r7, r7, #1
	cmp r7, r0
	ble _021D2F00
_021D2FA4:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D2E94

	thumb_func_start ov101_021D2FAC
ov101_021D2FAC: ; 0x021D2FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r2, #0
	add r2, r0, #0
	ldr r7, [r2, #0x10]
	add r2, sp, #0xc
	str r2, [sp]
	add r2, sp, #0x14
	add r3, sp, #0x10
	str r0, [sp, #4]
	add r5, r1, #0
	bl ov101_021D394C
	cmp r0, #0
	bne _021D2FD0
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D2FD0:
	add r0, r5, #0
	mov r1, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D3040
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D2FFC
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D2FFC:
	ldr r2, [sp, #0x10]
	cmp r2, #0
	beq _021D301E
	add r0, r5, #0
	add r1, r7, #0
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D301E
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D301E:
	ldr r2, [sp, #0xc]
	cmp r2, #0
	beq _021D3040
	add r0, r5, #0
	add r1, r7, #0
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D3040
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3040:
	mov r0, #4
	str r0, [sp, #8]
	ldr r0, [r5, #0x70]
	cmp r0, #1
	bne _021D304E
	mov r0, #0x15
	str r0, [sp, #8]
_021D304E:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bne _021D3096
	ldr r0, [sp, #8]
	mov r6, #1
	cmp r0, #1
	blt _021D3090
_021D305C:
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D3088
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D3088
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3088:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	ble _021D305C
_021D3090:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3096:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	bne _021D3168
	ldr r0, [sp, #8]
	mov r6, #1
	cmp r0, #1
	blt _021D3162
_021D30A4:
	mov r0, #1
	tst r0, r6
	beq _021D3102
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D30D6
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D30D6
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D30D6:
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D315A
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D315A
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3102:
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D312E
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D312E
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D312E:
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D315A
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D315A
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D315A:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	ble _021D30A4
_021D3162:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3168:
	ldr r0, [sp, #8]
	mov r6, #1
	cmp r0, #1
	bge _021D3172
	b _021D32E6
_021D3172:
	mov r0, #3
	and r0, r6
	bne _021D31FC
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D31A4
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D31A4
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D31A4:
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D31D0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D31D0
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D31D0:
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D32DC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D32DC
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D31FC:
	cmp r0, #1
	bne _021D3258
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D322C
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D322C
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D322C:
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D32DC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D32DC
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3258:
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D3284
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D3284
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3284:
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D32B0
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D32B0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D32B0:
	ldr r2, [sp, #0x10]
	add r0, r5, #0
	add r1, r7, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	cmp r4, r0
	bne _021D32DC
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov101_021D3B34
	cmp r0, #1
	bne _021D32DC
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #4]
	add sp, #0x18
	str r1, [r0, #0x14]
	str r6, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D32DC:
	ldr r0, [sp, #8]
	add r6, r6, #1
	cmp r6, r0
	bgt _021D32E6
	b _021D3172
_021D32E6:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D2FAC

	thumb_func_start ov101_021D32EC
ov101_021D32EC: ; 0x021D32EC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r7, [r0, #0x10]
	str r0, [sp]
	add r4, r1, #0
	add r6, r2, #0
	mov r5, #1
_021D32FA:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov101_021D55D4
	cmp r6, r0
	bne _021D3316
	ldr r0, [sp]
	mov r1, #0
	str r5, [r0, #0x14]
	str r1, [r0, #0x18]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3316:
	add r5, r5, #1
	cmp r5, #3
	ble _021D32FA
	mov r0, #4
	str r0, [sp, #4]
	ldr r0, [r4, #0x70]
	cmp r0, #1
	bne _021D332A
	mov r0, #0x15
	str r0, [sp, #4]
_021D332A:
	ldr r0, [sp, #4]
	mov r5, #1
	cmp r0, #1
	blt _021D338C
_021D3332:
	mov r2, #1
	add r0, r4, #0
	add r1, r7, #0
	sub r2, r2, r5
	bl ov101_021D55D4
	cmp r6, r0
	bne _021D3384
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	cmp r0, #1
	bne _021D3362
	ldr r0, [sp]
	mov r1, #3
	str r1, [r0, #0x14]
	add r1, r5, #2
	str r1, [r0, #0x18]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3362:
	sub r0, r0, #2
	cmp r0, #1
	bhi _021D3378
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0, #0x14]
	add r1, r5, #1
	str r1, [r0, #0x18]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3378:
	ldr r1, [sp]
	mov r0, #1
	str r0, [r1, #0x14]
	add sp, #8
	str r5, [r1, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D3384:
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	ble _021D3332
_021D338C:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D32EC

	thumb_func_start ov101_021D3394
ov101_021D3394: ; 0x021D3394
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r2, #0
	add r2, r0, #0
	ldr r7, [r2, #0x10]
	add r2, sp, #0x3c
	str r2, [sp]
	add r2, sp, #0x44
	add r3, sp, #0x40
	str r0, [sp, #4]
	add r6, r1, #0
	bl ov101_021D394C
	cmp r0, #0
	bne _021D33B8
	add sp, #0x48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D33B8:
	ldr r2, [sp, #0x44]
	add r0, r6, #0
	add r1, r7, #0
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D33D6
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	add sp, #0x48
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D33D6:
	ldr r2, [sp, #0x40]
	cmp r2, #0
	beq _021D33F8
	add r0, r6, #0
	add r1, r7, #0
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D33F8
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	add sp, #0x48
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D33F8:
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _021D341A
	add r0, r6, #0
	add r1, r7, #0
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D341A
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #4]
	add sp, #0x48
	str r1, [r0, #0x14]
	mov r1, #0
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D341A:
	ldr r0, [r6, #0x70]
	mov r4, #4
	cmp r0, #1
	bne _021D3424
	mov r4, #0x15
_021D3424:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _021D3464
	mov r0, #1
	str r0, [sp, #0x38]
	cmp r4, #1
	blt _021D345E
_021D3432:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x38]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3454
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x38]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3454:
	ldr r0, [sp, #0x38]
	add r0, r0, #1
	str r0, [sp, #0x38]
	cmp r0, r4
	ble _021D3432
_021D345E:
	add sp, #0x48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D3464:
	lsl r0, r7, #2
	add r0, r6, r0
	add r0, #0xa8
	ldr r1, [sp, #0x3c]
	ldr r0, [r0, #0]
	cmp r1, #0
	bne _021D354A
	mov r1, #1
	str r1, [sp, #8]
	tst r0, r1
	beq _021D34E0
	cmp r4, #1
	blt _021D34AA
_021D347E:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D34A0
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D34A0:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r4
	ble _021D347E
_021D34AA:
	mov r0, #1
	str r0, [sp, #0xc]
	cmp r4, #1
	blt _021D3544
_021D34B2:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0xc]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D34D4
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0xc]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D34D4:
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r4
	ble _021D34B2
	b _021D3544
_021D34E0:
	cmp r4, #1
	blt _021D3510
_021D34E4:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #8]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3506
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #8]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3506:
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, r4
	ble _021D34E4
_021D3510:
	mov r0, #1
	str r0, [sp, #0x10]
	cmp r4, #1
	blt _021D3544
_021D3518:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x10]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D353A
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x10]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D353A:
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, r4
	ble _021D3518
_021D3544:
	add sp, #0x48
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021D354A:
	mov r1, #3
	bl sub_020E1F6C
	cmp r1, #0
	bne _021D35F2
	mov r0, #1
	str r0, [sp, #0x14]
	cmp r4, #1
	blt _021D3588
_021D355C:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x14]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D357E
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x14]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D357E:
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r4
	ble _021D355C
_021D3588:
	mov r0, #1
	str r0, [sp, #0x18]
	cmp r4, #1
	blt _021D35BC
_021D3590:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0x18]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D35B2
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x18]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D35B2:
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, r4
	ble _021D3590
_021D35BC:
	mov r0, #1
	str r0, [sp, #0x1c]
	cmp r4, #1
	blt _021D35F0
_021D35C4:
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x1c]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D35E6
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x1c]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D35E6:
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, r4
	ble _021D35C4
_021D35F0:
	b _021D3730
_021D35F2:
	cmp r1, #1
	bne _021D3694
	mov r0, #1
	str r0, [sp, #0x20]
	cmp r4, #1
	blt _021D362A
_021D35FE:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0x20]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3620
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x20]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3620:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, r4
	ble _021D35FE
_021D362A:
	mov r0, #1
	str r0, [sp, #0x24]
	cmp r4, #1
	blt _021D365E
_021D3632:
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x24]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3654
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x24]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3654:
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, r4
	ble _021D3632
_021D365E:
	mov r0, #1
	str r0, [sp, #0x28]
	cmp r4, #1
	blt _021D3730
_021D3666:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x28]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3688
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x28]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3688:
	ldr r0, [sp, #0x28]
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, r4
	ble _021D3666
	b _021D3730
_021D3694:
	mov r0, #1
	str r0, [sp, #0x2c]
	cmp r4, #1
	blt _021D36C8
_021D369C:
	ldr r3, [sp, #0x3c]
	ldr r2, [sp, #0x2c]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D36BE
	ldr r1, [sp, #0x3c]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x2c]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D36BE:
	ldr r0, [sp, #0x2c]
	add r0, r0, #1
	str r0, [sp, #0x2c]
	cmp r0, r4
	ble _021D369C
_021D36C8:
	mov r0, #1
	str r0, [sp, #0x30]
	cmp r4, #1
	blt _021D36FC
_021D36D0:
	ldr r3, [sp, #0x44]
	ldr r2, [sp, #0x30]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D36F2
	ldr r1, [sp, #0x44]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x30]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D36F2:
	ldr r0, [sp, #0x30]
	add r0, r0, #1
	str r0, [sp, #0x30]
	cmp r0, r4
	ble _021D36D0
_021D36FC:
	mov r0, #1
	str r0, [sp, #0x34]
	cmp r4, #1
	blt _021D3730
_021D3704:
	ldr r3, [sp, #0x40]
	ldr r2, [sp, #0x34]
	add r0, r6, #0
	add r1, r7, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	cmp r5, r0
	bne _021D3726
	ldr r1, [sp, #0x40]
	ldr r0, [sp, #4]
	str r1, [r0, #0x14]
	ldr r1, [sp, #0x34]
	add sp, #0x48
	str r1, [r0, #0x18]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3726:
	ldr r0, [sp, #0x34]
	add r0, r0, #1
	str r0, [sp, #0x34]
	cmp r0, r4
	ble _021D3704
_021D3730:
	mov r0, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D3394

	thumb_func_start ov101_021D3738
ov101_021D3738: ; 0x021D3738
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	ldr r0, [r0, #0x10]
	add r6, r1, #0
	str r0, [sp, #4]
	ldr r0, [r6, #0x70]
	add r7, r2, #0
	mov r5, #4
	cmp r0, #1
	bne _021D3750
	mov r5, #0x15
_021D3750:
	mov r4, #0
	cmp r5, #0
	blt _021D377A
_021D3756:
	mov r2, #2
	ldr r1, [sp, #4]
	add r0, r6, #0
	sub r2, r2, r4
	bl ov101_021D55D4
	cmp r7, r0
	bne _021D3774
	ldr r0, [sp]
	mov r1, #2
	str r1, [r0, #0x14]
	str r4, [r0, #0x18]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3774:
	add r4, r4, #1
	cmp r4, r5
	ble _021D3756
_021D377A:
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D3738

	thumb_func_start ov101_021D3780
ov101_021D3780: ; 0x021D3780
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	bl ov101_021D38E4
	ldr r1, [r6, #0x10]
	cmp r1, #0
	beq _021D3796
	cmp r0, #2
	blt _021D382C
_021D3796:
	cmp r1, #0
	bne _021D37BC
	cmp r0, #2
	bge _021D37BC
	mov r5, #0
_021D37A0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov101_021D3AF0
	cmp r0, #0
	bne _021D37B0
	str r5, [r6, #0x18]
	pop {r4, r5, r6, pc}
_021D37B0:
	add r5, r5, #1
	cmp r5, #0x15
	ble _021D37A0
	bl sub_02022974
	pop {r4, r5, r6, pc}
_021D37BC:
	cmp r1, #0
	beq _021D37CA
	cmp r1, #1
	beq _021D37EA
	cmp r1, #2
	beq _021D380A
	b _021D3828
_021D37CA:
	mov r5, #1
_021D37CC:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov101_021D3B50
	cmp r0, #0
	bne _021D37DE
	str r5, [r6, #0x18]
	pop {r4, r5, r6, pc}
_021D37DE:
	add r5, r5, #1
	cmp r5, #0x15
	ble _021D37CC
	bl sub_02022974
	pop {r4, r5, r6, pc}
_021D37EA:
	mov r5, #1
_021D37EC:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov101_021D3C9C
	cmp r0, #0
	bne _021D37FE
	str r5, [r6, #0x18]
	pop {r4, r5, r6, pc}
_021D37FE:
	add r5, r5, #1
	cmp r5, #0x15
	ble _021D37EC
	bl sub_02022974
	b _021D3828
_021D380A:
	mov r5, #1
_021D380C:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov101_021D3DD4
	cmp r0, #0
	bne _021D381E
	str r5, [r6, #0x18]
	pop {r4, r5, r6, pc}
_021D381E:
	add r5, r5, #1
	cmp r5, #0x15
	ble _021D380C
	bl sub_02022974
_021D3828:
	bl sub_02022974
_021D382C:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D3780

	thumb_func_start ov101_021D3830
ov101_021D3830: ; 0x021D3830
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	bl ov101_021D38E4
	ldr r1, [r6, #0x10]
	cmp r1, #0
	beq _021D3846
	cmp r0, #2
	blt _021D38E0
_021D3846:
	cmp r1, #0
	bne _021D386E
	cmp r0, #2
	bge _021D386E
	mov r5, #0
	mov r7, #2
_021D3852:
	add r0, r4, #0
	mov r1, #0
	sub r2, r7, r5
	bl ov101_021D55D4
	cmp r0, #3
	beq _021D3864
	str r5, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D3864:
	add r5, r5, #1
	cmp r5, #0x15
	blt _021D3852
	bl sub_02022974
_021D386E:
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _021D387E
	cmp r0, #1
	beq _021D389E
	cmp r0, #2
	beq _021D38BE
	b _021D38DC
_021D387E:
	mov r5, #0
_021D3880:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov101_021D3F0C
	cmp r0, #0
	bne _021D3892
	str r5, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D3892:
	add r5, r5, #1
	cmp r5, #0x15
	blt _021D3880
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_021D389E:
	mov r5, #0
_021D38A0:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov101_021D3F58
	cmp r0, #0
	bne _021D38B2
	str r5, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D38B2:
	add r5, r5, #1
	cmp r5, #0x15
	ble _021D38A0
	bl sub_02022974
	pop {r3, r4, r5, r6, r7, pc}
_021D38BE:
	mov r5, #0
_021D38C0:
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl ov101_021D3FA0
	cmp r0, #0
	bne _021D38D2
	str r5, [r6, #0x18]
	pop {r3, r4, r5, r6, r7, pc}
_021D38D2:
	add r5, r5, #1
	cmp r5, #0x15
	ble _021D38C0
	bl sub_02022974
_021D38DC:
	bl sub_02022974
_021D38E0:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D3830

	thumb_func_start ov101_021D38E4
ov101_021D38E4: ; 0x021D38E4
	mov r2, #0
	add r3, r2, #0
_021D38E8:
	ldr r1, [r0, #0x7c]
	cmp r1, #1
	beq _021D38F0
	add r3, r3, #1
_021D38F0:
	add r2, r2, #1
	add r0, r0, #4
	cmp r2, #3
	blt _021D38E8
	add r0, r3, #0
	bx lr
	thumb_func_end ov101_021D38E4

	thumb_func_start ov101_021D38FC
ov101_021D38FC: ; 0x021D38FC
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021D390C
	cmp r0, #1
	beq _021D3922
	cmp r0, #2
	beq _021D3934
	b _021D3946
_021D390C:
	add r0, r1, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _021D391E
	add r1, #0x84
	ldr r0, [r1, #0]
	cmp r0, #1
	beq _021D3946
_021D391E:
	mov r0, #0
	bx lr
_021D3922:
	ldr r0, [r1, #0x7c]
	cmp r0, #1
	bne _021D3930
	add r1, #0x84
	ldr r0, [r1, #0]
	cmp r0, #1
	beq _021D3946
_021D3930:
	mov r0, #0
	bx lr
_021D3934:
	ldr r0, [r1, #0x7c]
	cmp r0, #1
	bne _021D3942
	add r1, #0x80
	ldr r0, [r1, #0]
	cmp r0, #1
	beq _021D3946
_021D3942:
	mov r0, #0
	bx lr
_021D3946:
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D38FC

	thumb_func_start ov101_021D394C
ov101_021D394C: ; 0x021D394C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	str r0, [sp]
	add r5, r1, #0
	ldr r0, [sp, #0x20]
	add r1, r3, #0
	str r0, [sp, #0x20]
	add r0, r5, #0
	add r0, #0x80
	ldr r0, [r0, #0]
	ldr r7, [r5, #0x7c]
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	mov r3, #0
	mov ip, r0
	add r0, r5, #0
	add r0, #0xc8
	ldr r4, [r0, #0]
	add r0, r5, #0
	add r0, #0xec
	ldr r6, [r0, #0]
	mov r0, #0x11
	lsl r0, r0, #4
	ldr r5, [r5, r0]
	ldr r0, [sp, #0x20]
	str r3, [r2, #0]
	str r3, [r1, #0]
	str r3, [r0, #0]
	ldr r0, [sp]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021D399A
	cmp r0, #1
	beq _021D3A04
	cmp r0, #2
	beq _021D3A80
	b _021D3AE4
_021D399A:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _021D39C8
	mov r0, ip
	cmp r0, #1
	beq _021D39C8
	cmp r6, r5
	bne _021D39B2
	add sp, #8
	str r6, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D39B2:
	cmp r5, #1
	bne _021D39C0
	mov r0, #3
	str r0, [r2, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D39C0:
	mov r0, #1
	str r0, [r2, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D39C8:
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _021D39EC
	cmp r6, #2
	bne _021D39E4
	mov r0, #1
	str r0, [r2, #0]
	mov r2, #2
	str r2, [r1, #0]
	ldr r1, [sp, #0x20]
	mov r2, #3
	str r2, [r1, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D39E4:
	add sp, #8
	str r6, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D39EC:
	cmp r5, #2
	bne _021D39F8
	add sp, #8
	str r5, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D39F8:
	mov r0, #1
	str r0, [r2, #0]
	mov r2, #3
	str r2, [r1, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3A04:
	cmp r7, #1
	beq _021D3A24
	mov r0, ip
	cmp r0, #1
	beq _021D3A24
	cmp r4, r5
	bne _021D3A1A
	add sp, #8
	str r4, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A1A:
	mov r0, #2
	str r0, [r2, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A24:
	cmp r7, #1
	beq _021D3A54
	cmp r4, #2
	bne _021D3A36
	mov r0, #2
	str r0, [r2, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A36:
	cmp r4, #1
	bne _021D3A46
	mov r0, #1
	str r0, [r2, #0]
	mov r2, #2
	str r2, [r1, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3A46:
	mov r0, #2
	str r0, [r2, #0]
	mov r0, #3
	str r0, [r1, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A54:
	cmp r5, #2
	bne _021D3A62
	mov r0, #2
	str r0, [r2, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A62:
	cmp r5, #1
	bne _021D3A72
	mov r0, #1
	str r0, [r2, #0]
	mov r2, #2
	str r2, [r1, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3A72:
	mov r0, #2
	str r0, [r2, #0]
	mov r0, #3
	str r0, [r1, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A80:
	cmp r7, #1
	beq _021D3AA8
	ldr r0, [sp, #4]
	cmp r0, #1
	beq _021D3AA8
	cmp r4, r6
	bne _021D3A96
	add sp, #8
	str r4, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3A96:
	cmp r4, #1
	bne _021D3A9E
	mov r0, #3
	b _021D3AA0
_021D3A9E:
	mov r0, #1
_021D3AA0:
	str r0, [r2, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3AA8:
	cmp r7, #1
	beq _021D3AC6
	cmp r4, #2
	bne _021D3ABA
	mov r0, #2
	str r0, [r2, #0]
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3ABA:
	mov r0, #1
	str r0, [r2, #0]
	mov r2, #3
	str r2, [r1, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3AC6:
	cmp r6, #2
	bne _021D3ADC
	mov r0, #1
	str r0, [r2, #0]
	mov r2, #2
	str r2, [r1, #0]
	ldr r1, [sp, #0x20]
	mov r2, #3
	str r2, [r1, #0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D3ADC:
	add sp, #8
	str r6, [r2, #0]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3AE4:
	bl sub_02022974
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D394C

	thumb_func_start ov101_021D3AF0
ov101_021D3AF0: ; 0x021D3AF0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	mov r2, #1
	mov r1, #0
	sub r2, r2, r4
	add r5, r0, #0
	bl ov101_021D55D4
	cmp r0, #3
	bne _021D3B08
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D3B08:
	mov r2, #2
	add r0, r5, #0
	mov r1, #0
	sub r2, r2, r4
	bl ov101_021D55D4
	cmp r0, #3
	bne _021D3B1C
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D3B1C:
	mov r2, #3
	add r0, r5, #0
	mov r1, #0
	sub r2, r2, r4
	bl ov101_021D55D4
	cmp r0, #3
	bne _021D3B30
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D3B30:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov101_021D3AF0

	thumb_func_start ov101_021D3B34
ov101_021D3B34: ; 0x021D3B34
	push {r3, lr}
	cmp r2, #3
	bne _021D3B3E
	mov r0, #1
	pop {r3, pc}
_021D3B3E:
	bl ov101_021D3AF0
	cmp r0, #0
	bne _021D3B4A
	mov r0, #1
	pop {r3, pc}
_021D3B4A:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D3B34

	thumb_func_start ov101_021D3B50
ov101_021D3B50: ; 0x021D3B50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r1, #0
	add r0, r4, #0
	add r0, #0xf0
	ldr r7, [r0, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r6, [r4, r0]
	mov r1, #1
	add r0, r2, #0
	sub r0, r1, r0
	str r0, [sp, #0x10]
	str r2, [sp]
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D55D4
	mov r1, #1
	add r5, r0, #0
	add r0, r4, #0
	sub r2, r1, r7
	bl ov101_021D55D4
	str r0, [sp, #0x14]
	mov r0, #1
	sub r0, r0, r6
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3BA2
	ldr r1, [sp, #0x14]
	cmp r5, r1
	bne _021D3BA8
	cmp r5, r0
	bne _021D3BA8
_021D3BA2:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3BA8:
	ldr r2, [sp]
	mov r3, #2
	add r0, r4, #0
	mov r1, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	add r5, r0, #0
	mov r0, #2
	sub r0, r0, r7
	str r0, [sp, #0xc]
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D55D4
	mov r1, #2
	str r0, [sp, #0x18]
	add r0, r4, #0
	sub r2, r1, r6
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3BE2
	ldr r1, [sp, #0x18]
	cmp r5, r1
	bne _021D3BE8
	cmp r5, r0
	bne _021D3BE8
_021D3BE2:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3BE8:
	ldr r0, [sp]
	mov r1, #3
	sub r0, r1, r0
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D55D4
	mov r2, #3
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #1
	sub r2, r2, r7
	bl ov101_021D55D4
	add r7, r0, #0
	mov r0, #3
	sub r0, r0, r6
	str r0, [sp, #0x1c]
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3C26
	cmp r5, r7
	bne _021D3C2C
	cmp r5, r0
	bne _021D3C2C
_021D3C26:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3C2C:
	ldr r2, [sp, #0x10]
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D55D4
	add r5, r0, #0
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D55D4
	add r6, r0, #0
	ldr r2, [sp, #0x1c]
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3C5A
	cmp r5, r6
	bne _021D3C60
	cmp r5, r0
	bne _021D3C60
_021D3C5A:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3C60:
	ldr r2, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	bl ov101_021D55D4
	add r5, r0, #0
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	mov r1, #1
	bl ov101_021D55D4
	add r6, r0, #0
	ldr r2, [sp, #4]
	add r0, r4, #0
	mov r1, #2
	bl ov101_021D55D4
	cmp r5, #3
	beq _021D3C8E
	cmp r5, r6
	bne _021D3C94
	cmp r5, r0
	bne _021D3C94
_021D3C8E:
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3C94:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D3B50

	thumb_func_start ov101_021D3C9C
ov101_021D3C9C: ; 0x021D3C9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xcc
	ldr r6, [r0, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	ldr r4, [r5, r0]
	mov r0, #1
	sub r0, r0, r6
	str r0, [sp, #0xc]
	add r7, r2, #0
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D55D4
	mov r1, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	sub r2, r1, r7
	bl ov101_021D55D4
	str r0, [sp, #0x14]
	mov r0, #1
	sub r0, r0, r4
	str r0, [sp]
	ldr r2, [sp]
	add r0, r5, #0
	mov r1, #2
	bl ov101_021D55D4
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bne _021D3CF2
	add r1, r2, #0
	cmp r1, r0
	bne _021D3CF2
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3CF2:
	mov r2, #2
	add r0, r5, #0
	mov r1, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	str r0, [sp, #0x18]
	mov r0, #2
	sub r0, r0, r7
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov101_021D55D4
	mov r1, #2
	str r0, [sp, #0x1c]
	add r0, r5, #0
	sub r2, r1, r4
	bl ov101_021D55D4
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	cmp r2, r1
	bne _021D3D30
	add r1, r2, #0
	cmp r1, r0
	bne _021D3D30
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3D30:
	mov r0, #3
	sub r0, r0, r6
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D55D4
	mov r2, #3
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	sub r2, r2, r7
	bl ov101_021D55D4
	str r0, [sp, #0x20]
	mov r0, #3
	sub r7, r0, r4
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ov101_021D55D4
	ldr r1, [sp, #0x20]
	cmp r6, r1
	bne _021D3D6E
	cmp r6, r0
	bne _021D3D6E
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3D6E:
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D55D4
	add r4, r0, #0
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov101_021D55D4
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3D9E
	cmp r4, r0
	bne _021D3D9E
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3D9E:
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D55D4
	add r4, r0, #0
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov101_021D55D4
	add r6, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	mov r1, #2
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3DCE
	cmp r4, r0
	bne _021D3DCE
	add sp, #0x24
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_021D3DCE:
	mov r0, #0
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D3C9C

	thumb_func_start ov101_021D3DD4
ov101_021D3DD4: ; 0x021D3DD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xcc
	ldr r6, [r0, #0]
	add r0, r5, #0
	add r0, #0xf0
	ldr r4, [r0, #0]
	mov r0, #1
	sub r0, r0, r6
	str r0, [sp, #0xc]
	add r7, r2, #0
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D55D4
	mov r1, #1
	str r0, [sp, #0x10]
	add r0, r5, #0
	sub r2, r1, r4
	bl ov101_021D55D4
	str r0, [sp, #0x14]
	mov r0, #1
	sub r0, r0, r7
	str r0, [sp]
	ldr r2, [sp]
	add r0, r5, #0
	mov r1, #2
	bl ov101_021D55D4
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	cmp r2, r1
	bne _021D3E2A
	add r1, r2, #0
	cmp r1, r0
	bne _021D3E2A
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3E2A:
	mov r2, #2
	add r0, r5, #0
	mov r1, #0
	sub r2, r2, r6
	bl ov101_021D55D4
	str r0, [sp, #0x18]
	mov r0, #2
	sub r0, r0, r4
	str r0, [sp, #8]
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov101_021D55D4
	mov r1, #2
	str r0, [sp, #0x1c]
	add r0, r5, #0
	sub r2, r1, r7
	bl ov101_021D55D4
	ldr r2, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	cmp r2, r1
	bne _021D3E68
	add r1, r2, #0
	cmp r1, r0
	bne _021D3E68
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3E68:
	mov r0, #3
	sub r0, r0, r6
	str r0, [sp, #4]
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D55D4
	mov r2, #3
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #1
	sub r2, r2, r4
	bl ov101_021D55D4
	add r4, r0, #0
	mov r0, #3
	sub r7, r0, r7
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ov101_021D55D4
	cmp r6, r4
	bne _021D3EA4
	cmp r6, r0
	bne _021D3EA4
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3EA4:
	ldr r2, [sp, #0xc]
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D55D4
	add r4, r0, #0
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov101_021D55D4
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3ED4
	cmp r4, r0
	bne _021D3ED4
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3ED4:
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #0
	bl ov101_021D55D4
	add r4, r0, #0
	ldr r2, [sp, #8]
	add r0, r5, #0
	mov r1, #1
	bl ov101_021D55D4
	add r6, r0, #0
	ldr r2, [sp]
	add r0, r5, #0
	mov r1, #2
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3F04
	cmp r4, r0
	bne _021D3F04
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3F04:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D3DD4

	thumb_func_start ov101_021D3F0C
ov101_021D3F0C: ; 0x021D3F0C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0xf0
	ldr r7, [r0, #0]
	mov r0, #0x45
	lsl r0, r0, #2
	mov r3, #2
	ldr r6, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	sub r2, r3, r2
	bl ov101_021D55D4
	mov r2, #2
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	sub r2, r2, r7
	bl ov101_021D55D4
	mov r1, #2
	add r7, r0, #0
	add r0, r5, #0
	sub r2, r1, r6
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D3F4E
	cmp r4, r7
	bne _021D3F52
	cmp r4, r0
	bne _021D3F52
_021D3F4E:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3F52:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D3F0C

	thumb_func_start ov101_021D3F58
ov101_021D3F58: ; 0x021D3F58
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r2, #0
	add r2, r5, #0
	add r2, #0xcc
	mov r0, #0x45
	ldr r3, [r2, #0]
	lsl r0, r0, #2
	mov r2, #2
	ldr r6, [r5, r0]
	add r0, r5, #0
	mov r1, #0
	sub r2, r2, r3
	bl ov101_021D55D4
	mov r2, #2
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	sub r2, r2, r7
	bl ov101_021D55D4
	mov r1, #2
	add r7, r0, #0
	add r0, r5, #0
	sub r2, r1, r6
	bl ov101_021D55D4
	cmp r4, r7
	bne _021D3F9C
	cmp r4, r0
	bne _021D3F9C
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3F9C:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D3F58

	thumb_func_start ov101_021D3FA0
ov101_021D3FA0: ; 0x021D3FA0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r2, #0
	add r2, r5, #0
	add r2, #0xcc
	add r0, r5, #0
	ldr r3, [r2, #0]
	add r0, #0xf0
	mov r2, #2
	ldr r6, [r0, #0]
	add r0, r5, #0
	mov r1, #0
	sub r2, r2, r3
	bl ov101_021D55D4
	mov r2, #2
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	sub r2, r2, r6
	bl ov101_021D55D4
	mov r1, #2
	add r6, r0, #0
	add r0, r5, #0
	sub r2, r1, r7
	bl ov101_021D55D4
	cmp r4, r6
	bne _021D3FE4
	cmp r4, r0
	bne _021D3FE4
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3FE4:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D3FA0

	thumb_func_start ov101_021D3FE8
ov101_021D3FE8: ; 0x021D3FE8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r4, r6, #0
	lsl r5, r1, #2
	add r4, #0x90
	ldr r0, [r4, r5]
	mov r1, #0x2a
	add r0, r0, r2
	str r0, [r4, r5]
	ldr r0, [r4, r5]
	lsl r1, r1, #0x10
	bl sub_020E1F6C
	str r1, [r4, r5]
	ldr r1, [r4, r5]
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	asr r1, r0, #0xc
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r1, r0, #5
	mov r0, #0x15
	sub r1, r0, r1
	add r0, r6, r5
	add r0, #0xa8
	str r1, [r0, #0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D3FE8

	thumb_func_start ov101_021D4024
ov101_021D4024: ; 0x021D4024
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	add r5, #0x90
	lsl r4, r1, #2
	ldr r0, [r5, r4]
	lsr r6, r0, #0x1f
	lsl r3, r0, #0xf
	sub r3, r3, r6
	mov r0, #0xf
	ror r3, r0
	add r0, r6, r3
	beq _021D4058
	cmp r0, r2
	bge _021D4044
	add r2, r0, #0
_021D4044:
	add r0, r7, #0
	bl ov101_021D3FE8
	ldr r0, [r5, r4]
	lsr r2, r0, #0x1f
	lsl r1, r0, #0xf
	sub r1, r1, r2
	mov r0, #0xf
	ror r1, r0
	add r0, r2, r1
_021D4058:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4024

	thumb_func_start ov101_021D405C
ov101_021D405C: ; 0x021D405C
	push {r3, lr}
	bl sub_0201D2E8
	mov r1, #0x64
	bl sub_020E2178
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end ov101_021D405C

	thumb_func_start ov101_021D406C
ov101_021D406C: ; 0x021D406C
	ldr r3, [r1, #0]
	sub r2, r3, r0
	str r2, [r1, #0]
	bpl _021D4078
	mov r2, #0
	str r2, [r1, #0]
_021D4078:
	cmp r3, r0
	bhs _021D4080
	mov r0, #1
	bx lr
_021D4080:
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D406C

	thumb_func_start ov101_021D4084
ov101_021D4084: ; 0x021D4084
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D405C
	add r4, #0x88
	ldr r1, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _021D40A4 ; =0x021D9520
	ldr r1, [r1, r2]
	cmp r1, r0
	bls _021D409E
	mov r0, #1
	pop {r4, pc}
_021D409E:
	mov r0, #0
	pop {r4, pc}
	nop
_021D40A4: .word 0x021D9520
	thumb_func_end ov101_021D4084

	thumb_func_start ov101_021D40A8
ov101_021D40A8: ; 0x021D40A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #0
	str r1, [r5, #0x74]
	bl ov101_021D4084
	cmp r0, #1
	beq _021D40BA
	b _021D41CC
_021D40BA:
	add r0, r5, #0
	bl ov101_021D405C
	add r1, r5, #0
	str r0, [sp]
	add r1, #0x88
	ldr r1, [r1, #0]
	ldr r0, _021D41D0 ; =0x021D95C8
	lsl r3, r1, #4
	mov r1, #0x47
	lsl r1, r1, #4
	ldr r2, [r5, r1]
	add r4, r0, r3
	add r2, r2, #1
	str r2, [r5, r1]
	ldrh r0, [r0, r3]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D40FA
	ldr r1, [r5, #0x74]
	mov r0, #8
	orr r0, r1
	str r0, [r5, #0x74]
	mov r0, #0x4a
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D40FA:
	ldrh r0, [r4, #2]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D411A
	ldr r1, [r5, #0x74]
	mov r0, #4
	orr r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41D4 ; =0x0000049C
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D411A:
	ldrh r0, [r4, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D413C
	ldr r1, [r5, #0x74]
	mov r0, #0x80
	orr r0, r1
	str r0, [r5, #0x74]
	mov r0, #0x4b
	lsl r0, r0, #4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D413C:
	ldrh r0, [r4, #6]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D415C
	ldr r1, [r5, #0x74]
	mov r0, #0x40
	orr r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41D8 ; =0x000004AC
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D415C:
	ldrh r0, [r4, #8]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D417C
	ldr r1, [r5, #0x74]
	mov r0, #0x20
	orr r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41DC ; =0x000004A8
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D417C:
	ldrh r0, [r4, #0xa]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	beq _021D419C
	ldr r1, [r5, #0x74]
	mov r0, #0x10
	orr r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41E0 ; =0x000004A4
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D419C:
	ldrh r0, [r4, #0xc]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #0
	ldr r1, [r5, #0x74]
	beq _021D41BC
	mov r0, #2
	orr r0, r1
	str r0, [r5, #0x74]
	ldr r0, _021D41E4 ; =0x00000498
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D41BC:
	mov r0, #1
	orr r1, r0
	str r1, [r5, #0x74]
	ldr r1, _021D41E8 ; =0x00000494
	ldr r2, [r5, r1]
	add r2, r2, #1
	str r2, [r5, r1]
	pop {r3, r4, r5, pc}
_021D41CC:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D41D0: .word 0x021D95C8
_021D41D4: .word 0x0000049C
_021D41D8: .word 0x000004AC
_021D41DC: .word 0x000004A8
_021D41E0: .word 0x000004A4
_021D41E4: .word 0x00000498
_021D41E8: .word 0x00000494
	thumb_func_end ov101_021D40A8

	thumb_func_start ov101_021D41EC
ov101_021D41EC: ; 0x021D41EC
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D405C
	add r4, #0x88
	ldr r1, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _021D420C ; =0x021D94D8
	ldr r1, [r1, r2]
	cmp r0, r1
	bhs _021D4206
	mov r0, #1
	pop {r4, pc}
_021D4206:
	mov r0, #0
	pop {r4, pc}
	nop
_021D420C: .word 0x021D94D8
	thumb_func_end ov101_021D41EC

	thumb_func_start ov101_021D4210
ov101_021D4210: ; 0x021D4210
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	bl ov101_021D405C
	str r0, [sp, #4]
	add r0, r5, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	mov r0, #0x48
	ldr r2, _021D42C0 ; =0x021D9934
	mul r0, r1
	add r0, r2, r0
	str r0, [sp]
	mov r6, #0
	add r4, r0, #0
	add r7, sp, #4
_021D4232:
	ldr r0, [r4, #0]
	add r1, r7, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4292
	mov r0, #0xc
	add r1, r6, #0
	mul r1, r0
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, [r1, #4]
	str r0, [r5, #0x50]
	ldr r0, [r1, #8]
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x50]
	lsl r1, r0, #2
	ldr r0, _021D42C4 ; =0x021D9568
	ldr r0, [r0, r1]
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	beq _021D426C
	cmp r0, #1
	beq _021D4278
	cmp r0, #2
	beq _021D4284
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D426C:
	ldr r0, _021D42C8 ; =0x00000478
	add sp, #8
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4278:
	ldr r0, _021D42CC ; =0x0000047C
	add sp, #8
	ldr r1, [r5, r0]
	add r1, r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4284:
	mov r0, #0x12
	lsl r0, r0, #6
	ldr r1, [r5, r0]
	add sp, #8
	add r1, r1, #1
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4292:
	add r6, r6, #1
	add r4, #0xc
	cmp r6, #6
	blt _021D4232
	sub r1, r6, #1
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	ldr r0, [r1, #4]
	str r0, [r5, #0x50]
	ldr r0, [r1, #8]
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x50]
	lsl r1, r0, #2
	ldr r0, _021D42C4 ; =0x021D9568
	ldr r0, [r0, r1]
	str r0, [r5, #0x18]
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D42C0: .word 0x021D9934
_021D42C4: .word 0x021D9568
_021D42C8: .word 0x00000478
_021D42CC: .word 0x0000047C
	thumb_func_end ov101_021D4210

	thumb_func_start ov101_021D42D0
ov101_021D42D0: ; 0x021D42D0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	mov r4, #0
	bl ov101_021D405C
	str r0, [sp, #4]
	add r0, r6, #0
	add r0, #0x88
	ldr r1, [r0, #0]
	mov r0, #0x48
	mul r0, r1
	ldr r2, _021D4360 ; =0x021D9784
	ldr r1, [r6, #0x4c]
	add r2, r2, r0
	mov r0, #0x18
	mul r0, r1
	add r5, r2, r0
	str r5, [sp]
	add r7, sp, #4
_021D42F8:
	ldr r0, [r5, #0]
	add r1, r7, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4348
	ldr r0, [sp]
	lsl r1, r4, #3
	add r0, r0, r1
	ldr r1, [r0, #4]
	mov r0, #0x56
	lsl r0, r0, #2
	str r1, [r6, r0]
	ldr r0, [r6, r0]
	cmp r0, #0
	beq _021D4324
	cmp r0, #1
	beq _021D4330
	cmp r0, #2
	beq _021D433C
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_021D4324:
	ldr r0, _021D4364 ; =0x00000488
	add sp, #8
	ldr r1, [r6, r0]
	add r1, r1, #1
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4330:
	ldr r0, _021D4368 ; =0x00000484
	add sp, #8
	ldr r1, [r6, r0]
	add r1, r1, #1
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D433C:
	ldr r0, _021D436C ; =0x0000048C
	add sp, #8
	ldr r1, [r6, r0]
	add r1, r1, #1
	str r1, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_021D4348:
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blo _021D42F8
	mov r0, #0x56
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r6, r0]
	bl sub_02022974
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D4360: .word 0x021D9784
_021D4364: .word 0x00000488
_021D4368: .word 0x00000484
_021D436C: .word 0x0000048C
	thumb_func_end ov101_021D42D0

	thumb_func_start ov101_021D4370
ov101_021D4370: ; 0x021D4370
	push {r4, lr}
	add r1, r0, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	lsl r2, r1, #2
	ldr r1, _021D4390 ; =0x021D9538
	ldr r4, [r1, r2]
	bl ov101_021D405C
	cmp r0, r4
	bhs _021D438A
	mov r0, #1
	pop {r4, pc}
_021D438A:
	mov r0, #0
	pop {r4, pc}
	nop
_021D4390: .word 0x021D9538
	thumb_func_end ov101_021D4370

	thumb_func_start ov101_021D4394
ov101_021D4394: ; 0x021D4394
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	ldr r2, _021D4488 ; =0x021D9628
	lsl r1, r1, #4
	add r5, r2, r1
	bl ov101_021D405C
	str r0, [sp]
	mov r0, #0
	str r0, [r4, #0x74]
	add r0, r4, #0
	bl ov101_021D4370
	cmp r0, #0
	bne _021D441E
	ldr r0, _021D448C ; =0x00000474
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, #0x50]
	cmp r1, #5
	bhi _021D440E
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D43D2: ; jump table
	.short _021D43DE - _021D43D2 - 2 ; case 0
	.short _021D43DE - _021D43D2 - 2 ; case 1
	.short _021D43DE - _021D43D2 - 2 ; case 2
	.short _021D43F6 - _021D43D2 - 2 ; case 3
	.short _021D43F6 - _021D43D2 - 2 ; case 4
	.short _021D43F6 - _021D43D2 - 2 ; case 5
_021D43DE:
	mov r1, #2
	ldr r2, [r4, #0x74]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r4, #0x74]
	add r1, r0, #0
	add r1, #0x44
	ldr r1, [r4, r1]
	add r0, #0x44
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D43F6:
	mov r1, #1
	ldr r2, [r4, #0x74]
	lsl r1, r1, #8
	orr r1, r2
	str r1, [r4, #0x74]
	add r1, r0, #0
	add r1, #0x40
	ldr r1, [r4, r1]
	add r0, #0x40
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D440E:
	bl sub_02022974
	mov r0, #2
	ldr r1, [r4, #0x74]
	lsl r0, r0, #8
	orr r0, r1
	str r0, [r4, #0x74]
	pop {r3, r4, r5, pc}
_021D441E:
	ldr r0, [r5, #0]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D443C
	ldr r1, [r4, #0x74]
	mov r0, #4
	orr r0, r1
	str r0, [r4, #0x74]
	ldr r0, _021D4490 ; =0x0000049C
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D443C:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D445A
	ldr r1, [r4, #0x74]
	mov r0, #0x40
	orr r0, r1
	str r0, [r4, #0x74]
	ldr r0, _021D4494 ; =0x000004AC
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D445A:
	ldr r0, [r5, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4478
	ldr r1, [r4, #0x74]
	mov r0, #0x10
	orr r0, r1
	str r0, [r4, #0x74]
	ldr r0, _021D4498 ; =0x000004A4
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D4478:
	mov r0, #1
	str r0, [r4, #0x74]
	ldr r0, _021D449C ; =0x00000494
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
	nop
_021D4488: .word 0x021D9628
_021D448C: .word 0x00000474
_021D4490: .word 0x0000049C
_021D4494: .word 0x000004AC
_021D4498: .word 0x000004A4
_021D449C: .word 0x00000494
	thumb_func_end ov101_021D4394

	thumb_func_start ov101_021D44A0
ov101_021D44A0: ; 0x021D44A0
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D405C
	add r4, #0x88
	ldr r1, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _021D44C0 ; =0x021D9580
	ldr r1, [r1, r2]
	cmp r0, r1
	bhs _021D44BA
	mov r0, #1
	pop {r4, pc}
_021D44BA:
	mov r0, #0
	pop {r4, pc}
	nop
_021D44C0: .word 0x021D9580
	thumb_func_end ov101_021D44A0

	thumb_func_start ov101_021D44C4
ov101_021D44C4: ; 0x021D44C4
	push {r4, lr}
	add r4, r0, #0
	bl ov101_021D405C
	add r4, #0x88
	ldr r1, [r4, #0]
	lsl r2, r1, #2
	ldr r1, _021D44E4 ; =0x021D9508
	ldr r1, [r1, r2]
	cmp r0, r1
	bhs _021D44DE
	mov r0, #1
	pop {r4, pc}
_021D44DE:
	mov r0, #0
	pop {r4, pc}
	nop
_021D44E4: .word 0x021D9508
	thumb_func_end ov101_021D44C4

	thumb_func_start ov101_021D44E8
ov101_021D44E8: ; 0x021D44E8
	push {r4, lr}
	ldr r4, [r0, #0x18]
	bl ov101_021D405C
	cmp r0, r4
	bhs _021D44F8
	mov r0, #1
	pop {r4, pc}
_021D44F8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D44E8

	thumb_func_start ov101_021D44FC
ov101_021D44FC: ; 0x021D44FC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	ldr r4, [r5, #0x18]
	bl ov101_021D405C
	str r0, [sp]
	add r0, r5, #0
	add r0, #0x88
	ldr r0, [r0, #0]
	ldr r1, _021D454C ; =0x021D9598
	lsl r0, r0, #3
	add r6, r1, r0
	ldr r0, [r5, #0x28]
	cmp r0, #2
	bne _021D4520
	sub r4, #0xa
	b _021D453E
_021D4520:
	ldr r0, [r6, #0]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4530
	sub r4, #0xa
	b _021D453E
_021D4530:
	ldr r0, [r6, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D453E
	sub r4, r4, #5
_021D453E:
	cmp r4, #0
	bge _021D4544
	mov r4, #0
_021D4544:
	str r4, [r5, #0x18]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D454C: .word 0x021D9598
	thumb_func_end ov101_021D44FC

	thumb_func_start ov101_021D4550
ov101_021D4550: ; 0x021D4550
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x18]
	bl ov101_021D405C
	str r0, [sp]
	add r5, #0x88
	ldr r1, [r5, #0]
	mov r0, #0x90
	mul r0, r1
	ldr r2, _021D45AC ; =0x021D9AE4
	mov r1, #0
	add r5, r2, r0
	add r2, r5, #0
_021D456C:
	ldr r0, [r2, #0]
	cmp r4, r0
	blo _021D459C
	lsl r4, r1, #4
	add r0, r5, r4
	ldr r0, [r0, #4]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4586
	mov r0, #1
	pop {r3, r4, r5, pc}
_021D4586:
	add r0, r5, r4
	ldr r0, [r0, #8]
	add r1, sp, #0
	bl ov101_021D406C
	cmp r0, #1
	bne _021D4598
	mov r0, #0
	pop {r3, r4, r5, pc}
_021D4598:
	mov r0, #2
	pop {r3, r4, r5, pc}
_021D459C:
	add r1, r1, #1
	add r2, #0x10
	cmp r1, #9
	blt _021D456C
	bl sub_02022974
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D45AC: .word 0x021D9AE4
	thumb_func_end ov101_021D4550

	thumb_func_start ov101_021D45B0
ov101_021D45B0: ; 0x021D45B0
	push {r4, lr}
	add r4, r0, #0
	bl sub_0201D2E8
	mov r1, #6
	bl sub_020E1F6C
	str r1, [r4, #0x34]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D45B0

	thumb_func_start ov101_021D45C4
ov101_021D45C4: ; 0x021D45C4
	push {r4, lr}
	mov r1, #0x12
	lsl r1, r1, #4
	add r4, r0, r1
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #4]
	str r0, [r4, #0xc]
	ldr r0, _021D45E4 ; =ov101_021D4614
	add r1, r4, #0
	mov r2, #0x8a
	bl sub_0200D9E8
	str r0, [r4, #0x10]
	pop {r4, pc}
	nop
_021D45E4: .word ov101_021D4614
	thumb_func_end ov101_021D45C4

	thumb_func_start ov101_021D45E8
ov101_021D45E8: ; 0x021D45E8
	mov r1, #0x13
	lsl r1, r1, #4
	ldr r3, _021D45F4 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D45F4: .word sub_0200DA58
	thumb_func_end ov101_021D45E8

	thumb_func_start ov101_021D45F8
ov101_021D45F8: ; 0x021D45F8
	mov r1, #0x49
	lsl r1, r1, #2
	mov r3, #0
	str r3, [r0, r1]
	add r2, r1, #4
	str r3, [r0, r2]
	mov r2, #1
	sub r1, r1, #4
	str r2, [r0, r1]
	bx lr
	thumb_func_end ov101_021D45F8

	thumb_func_start ov101_021D460C
ov101_021D460C: ; 0x021D460C
	mov r1, #0x49
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov101_021D460C

	thumb_func_start ov101_021D4614
ov101_021D4614: ; 0x021D4614
	push {r3, r4, r5, lr}
	add r5, r1, #0
	ldr r0, [r5, #0]
	ldr r4, [r5, #0xc]
	cmp r0, #3
	bhi _021D4702
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D462C: ; jump table
	.short _021D4702 - _021D462C - 2 ; case 0
	.short _021D4634 - _021D462C - 2 ; case 1
	.short _021D4642 - _021D462C - 2 ; case 2
	.short _021D4664 - _021D462C - 2 ; case 3
_021D4634:
	add r0, r5, #0
	bl ov101_021D4714
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D4642:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D4650
	bl ov101_021D505C
	cmp r0, #1
	bne _021D4702
_021D4650:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021D465E
	bl ov101_021D505C
	cmp r0, #1
	bne _021D4702
_021D465E:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
_021D4664:
	mov r0, #1
	lsl r0, r0, #0xa
	bl ov101_021D55F8
	cmp r0, #0
	bne _021D4676
	ldr r0, [r4, #0x64]
	cmp r0, #0
	bne _021D46C4
_021D4676:
	ldr r0, _021D4704 ; =0x0000062D
	bl sub_02005748
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	add r1, r1, r0
	ldr r0, _021D4708 ; =0x0000C350
	str r1, [r4, #0x60]
	cmp r1, r0
	blt _021D468C
	str r0, [r4, #0x60]
_021D468C:
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021D469A
	ldr r1, [r4, #0x14]
	ldr r0, [r4, #0x64]
	add r0, r1, r0
	str r0, [r4, #0x14]
_021D469A:
	mov r0, #0
	str r0, [r4, #0x64]
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _021D46AC
	bl sub_0207136C
	mov r0, #0
	str r0, [r5, #0x14]
_021D46AC:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	beq _021D46BA
	bl sub_0207136C
	mov r0, #0
	str r0, [r5, #0x18]
_021D46BA:
	mov r0, #1
	str r0, [r5, #4]
	mov r0, #0
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_021D46C4:
	ldr r1, _021D470C ; =0x021BF67C
	mov r0, #3
	ldr r2, [r1, #0x44]
	ldr r1, _021D4710 ; =0x00000C03
	tst r1, r2
	beq _021D46D2
	mov r0, #1
_021D46D2:
	ldr r1, [r5, #8]
	add r1, r1, #1
	str r1, [r5, #8]
	tst r0, r1
	bne _021D4702
	ldr r0, [r4, #0x64]
	sub r0, r0, #1
	str r0, [r4, #0x64]
	ldr r0, [r4, #0x60]
	add r1, r0, #1
	ldr r0, _021D4708 ; =0x0000C350
	str r1, [r4, #0x60]
	cmp r1, r0
	blt _021D46F0
	str r0, [r4, #0x60]
_021D46F0:
	ldr r0, _021D4704 ; =0x0000062D
	bl sub_02005748
	ldr r0, [r4, #8]
	cmp r0, #1
	bne _021D4702
	ldr r0, [r4, #0x14]
	add r0, r0, #1
	str r0, [r4, #0x14]
_021D4702:
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4704: .word 0x0000062D
_021D4708: .word 0x0000C350
_021D470C: .word 0x021BF67C
_021D4710: .word 0x00000C03
	thumb_func_end ov101_021D4614

	thumb_func_start ov101_021D4714
ov101_021D4714: ; 0x021D4714
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, [r5, #0xc]
	ldr r6, [r7, #0x48]
	cmp r6, #0
	bne _021D4724
	bl sub_02022974
_021D4724:
	mov r4, #0
_021D4726:
	mov r0, #1
	tst r0, r6
	beq _021D4758
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021D4740
	ldr r2, [r7, #0x64]
	add r0, r7, #0
	add r1, r4, #0
	bl ov101_021D5028
	str r0, [r5, #0x14]
	b _021D4758
_021D4740:
	ldr r0, [r5, #0x18]
	cmp r0, #0
	bne _021D4754
	ldr r2, [r7, #0x64]
	add r0, r7, #0
	add r1, r4, #0
	bl ov101_021D5028
	str r0, [r5, #0x18]
	b _021D4758
_021D4754:
	bl sub_02022974
_021D4758:
	add r4, r4, #1
	lsr r6, r6, #1
	cmp r4, #5
	blt _021D4726
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4714

	thumb_func_start ov101_021D4764
ov101_021D4764: ; 0x021D4764
	push {r4, lr}
	mov r1, #0x4f
	lsl r1, r1, #2
	add r4, r0, r1
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #4]
	str r0, [r4, #0x20]
	ldr r0, _021D4784 ; =ov101_021D4824
	add r1, r4, #0
	mov r2, #0x84
	bl sub_0200D9E8
	str r0, [r4, #0x24]
	pop {r4, pc}
	nop
_021D4784: .word ov101_021D4824
	thumb_func_end ov101_021D4764

	thumb_func_start ov101_021D4788
ov101_021D4788: ; 0x021D4788
	mov r1, #0x16
	lsl r1, r1, #4
	ldr r3, _021D4794 ; =sub_0200DA58
	ldr r0, [r0, r1]
	bx r3
	nop
_021D4794: .word sub_0200DA58
	thumb_func_end ov101_021D4788

	thumb_func_start ov101_021D4798
ov101_021D4798: ; 0x021D4798
	mov r2, #0x4f
	lsl r2, r2, #2
	add r2, r0, r2
	str r1, [r2, #0]
	mov r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D4798

	thumb_func_start ov101_021D47AC
ov101_021D47AC: ; 0x021D47AC
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	bx lr
	thumb_func_end ov101_021D47AC

	thumb_func_start ov101_021D47B4
ov101_021D47B4: ; 0x021D47B4
	push {r4, lr}
	mov r1, #0x52
	add r4, r0, #0
	mov r2, #0
	lsl r1, r1, #2
	str r2, [r4, r1]
	bl ov101_021D7228
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov101_021D73B4
	mov r1, #0x5e
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov101_021D7550
	mov r1, #0x5f
	lsl r1, r1, #2
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov101_021D76B4
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	pop {r4, pc}
	thumb_func_end ov101_021D47B4

	thumb_func_start ov101_021D47F0
ov101_021D47F0: ; 0x021D47F0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x52
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r0, #0x2c
	ldr r0, [r4, r0]
	bl sub_0207136C
	mov r0, #0x5e
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207136C
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_0207136C
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl sub_0207136C
	pop {r4, pc}
	thumb_func_end ov101_021D47F0

	thumb_func_start ov101_021D4824
ov101_021D4824: ; 0x021D4824
	push {r3, r4, r5, lr}
	ldr r4, _021D4840 ; =0x021D8774
	add r5, r1, #0
_021D482A:
	ldr r1, [r5, #0]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r2, [r4, r1]
	ldr r1, [r5, #4]
	lsl r1, r1, #2
	ldr r1, [r2, r1]
	blx r1
	cmp r0, #1
	beq _021D482A
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4840: .word 0x021D8774
	thumb_func_end ov101_021D4824

	thumb_func_start ov101_021D4844
ov101_021D4844: ; 0x021D4844
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x18]
	bl ov101_021D5D58
	str r0, [r4, #0x28]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4844

	thumb_func_start ov101_021D485C
ov101_021D485C: ; 0x021D485C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #0
	bne _021D486E
	mov r0, #0
	pop {r4, pc}
_021D486E:
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D485C

	thumb_func_start ov101_021D4880
ov101_021D4880: ; 0x021D4880
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #0
	bne _021D4892
	mov r0, #0
	pop {r4, pc}
_021D4892:
	ldr r0, [r4, #0x28]
	mov r1, #5
	bl ov101_021D5D90
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4880

	thumb_func_start ov101_021D48A8
ov101_021D48A8: ; 0x021D48A8
	mov r0, #0
	bx lr
	thumb_func_end ov101_021D48A8

	thumb_func_start ov101_021D48AC
ov101_021D48AC: ; 0x021D48AC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D48AC

	thumb_func_start ov101_021D48C4
ov101_021D48C4: ; 0x021D48C4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D48E2
	ldr r0, [r4, #0x28]
	bl sub_0207136C
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D48E2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D48C4

	thumb_func_start ov101_021D48E8
ov101_021D48E8: ; 0x021D48E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #2
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D48E8

	thumb_func_start ov101_021D4900
ov101_021D4900: ; 0x021D4900
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4926
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov101_021D6764
	str r0, [r4, #0x30]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4926:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4900

	thumb_func_start ov101_021D492C
ov101_021D492C: ; 0x021D492C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4950
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ov101_021D679C
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov101_021D5DA4
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4950:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D492C

	thumb_func_start ov101_021D4954
ov101_021D4954: ; 0x021D4954
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4972
	ldr r0, [r4, #0x2c]
	bl sub_0207136C
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4972:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4954

	thumb_func_start ov101_021D4978
ov101_021D4978: ; 0x021D4978
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl ov101_021D679C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4978

	thumb_func_start ov101_021D4998
ov101_021D4998: ; 0x021D4998
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D49C8
	ldr r0, [r4, #0x30]
	bl sub_0207136C
	ldr r0, [r4, #0x2c]
	bl sub_0207136C
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl ov101_021D5DA4
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D49C8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4998

	thumb_func_start ov101_021D49CC
ov101_021D49CC: ; 0x021D49CC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D49E8
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D49E8:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D49CC

	thumb_func_start ov101_021D49EC
ov101_021D49EC: ; 0x021D49EC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4A0A
	ldr r0, [r4, #0x28]
	bl sub_0207136C
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4A0A:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D49EC

	thumb_func_start ov101_021D4A10
ov101_021D4A10: ; 0x021D4A10
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl ov101_021D679C
	ldr r0, [r4, #0x20]
	bl ov101_021D6DF0
	str r0, [r4, #0x34]
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r1, [r4, #4]
	add r1, r1, #1
	str r1, [r4, #4]
	pop {r4, pc}
	thumb_func_end ov101_021D4A10

	thumb_func_start ov101_021D4A30
ov101_021D4A30: ; 0x021D4A30
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0x30
	blt _021D4A56
	mov r1, #0
	str r1, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0x23
	bl sub_02005844
	ldr r0, [r4, #0x30]
	mov r1, #4
	bl ov101_021D679C
_021D4A56:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4A30

	thumb_func_start ov101_021D4A5C
ov101_021D4A5C: ; 0x021D4A5C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	bl ov101_021D6E1C
	cmp r0, #1
	bne _021D4A86
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl ov101_021D679C
	ldr r0, [r4, #0x34]
	bl sub_0207136C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	str r0, [r4, #0x10]
	mov r0, #1
	str r0, [r4, #8]
_021D4A86:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4A5C

	thumb_func_start ov101_021D4A8C
ov101_021D4A8C: ; 0x021D4A8C
	push {r3, lr}
	ldr r1, [r0, #0x20]
	ldr r3, _021D4AB4 ; =0x021D87A8
	ldr r2, [r1, #0x34]
	mov r1, #0x18
	mul r1, r2
	add r2, r3, r1
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0x14]
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r0, [r0, #0x30]
	ldr r1, [r1, #0xc]
	bl ov101_021D679C
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
_021D4AB4: .word 0x021D87A8
	thumb_func_end ov101_021D4A8C

	thumb_func_start ov101_021D4AB8
ov101_021D4AB8: ; 0x021D4AB8
	push {r3, r4, r5, lr}
	ldr r2, [r0, #0x20]
	mov r1, #0
	add r4, r1, #0
	add r5, r2, #0
_021D4AC2:
	ldr r3, [r5, #0x7c]
	cmp r3, #1
	beq _021D4ACA
	add r1, r1, #1
_021D4ACA:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _021D4AC2
	ldr r3, [r0, #0x14]
	cmp r3, #2
	bge _021D4AF4
	cmp r3, r1
	beq _021D4AF4
	ldr r3, [r2, #0x34]
	mov r2, #0x18
	ldr r4, _021D4AF8 ; =0x021D87A8
	str r1, [r0, #0x14]
	mul r2, r3
	add r2, r4, r2
	lsl r1, r1, #2
	add r1, r2, r1
	ldr r0, [r0, #0x30]
	ldr r1, [r1, #0xc]
	bl ov101_021D679C
_021D4AF4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D4AF8: .word 0x021D87A8
	thumb_func_end ov101_021D4AB8

	thumb_func_start ov101_021D4AFC
ov101_021D4AFC: ; 0x021D4AFC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	mov r1, #3
	bl ov101_021D679C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4AFC

	thumb_func_start ov101_021D4B14
ov101_021D4B14: ; 0x021D4B14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov101_021D47F0
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl ov101_021D679C
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4B14

	thumb_func_start ov101_021D4B38
ov101_021D4B38: ; 0x021D4B38
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4B68
	ldr r0, [r4, #0x30]
	bl sub_0207136C
	ldr r0, [r4, #0x2c]
	bl sub_0207136C
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl ov101_021D5DA4
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4B68:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4B38

	thumb_func_start ov101_021D4B6C
ov101_021D4B6C: ; 0x021D4B6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4B9C
	ldr r0, [r4, #0x20]
	bl ov101_021D72D4
	ldr r0, [r4, #0x20]
	bl ov101_021D7460
	ldr r0, [r4, #0x20]
	mov r1, #0
	bl ov101_021D77E4
	ldr r0, [r4, #0x20]
	mov r1, #1
	bl ov101_021D77E4
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4B9C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4B6C

	thumb_func_start ov101_021D4BA0
ov101_021D4BA0: ; 0x021D4BA0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	cmp r0, #0x2d
	blt _021D4BC0
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x28]
	mov r1, #4
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4BC0:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4BA0

	thumb_func_start ov101_021D4BC4
ov101_021D4BC4: ; 0x021D4BC4
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4BE2
	ldr r0, [r4, #0x28]
	bl sub_0207136C
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4BE2:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4BC4

	thumb_func_start ov101_021D4BE8
ov101_021D4BE8: ; 0x021D4BE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	mov r1, #4
	bl ov101_021D679C
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4BE8

	thumb_func_start ov101_021D4C04
ov101_021D4C04: ; 0x021D4C04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	mov r1, #8
	bl ov101_021D679C
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4C04

	thumb_func_start ov101_021D4C20
ov101_021D4C20: ; 0x021D4C20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	mov r1, #6
	bl ov101_021D5D90
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #1
	str r0, [r4, #8]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4C20

	thumb_func_start ov101_021D4C3C
ov101_021D4C3C: ; 0x021D4C3C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x30]
	mov r1, #2
	bl ov101_021D679C
	mov r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4C3C

	thumb_func_start ov101_021D4C60
ov101_021D4C60: ; 0x021D4C60
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4C94
	ldr r0, [r4, #0x2c]
	bl sub_0207136C
	ldr r0, [r4, #0x30]
	bl sub_0207136C
	ldr r0, [r4, #0x28]
	mov r1, #0
	bl ov101_021D5DA4
	ldr r0, [r4, #0x28]
	mov r1, #3
	bl ov101_021D5D90
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4C94:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4C60

	thumb_func_start ov101_021D4C98
ov101_021D4C98: ; 0x021D4C98
	push {r3, lr}
	ldr r1, [r0, #0x10]
	add r1, r1, #1
	str r1, [r0, #0x10]
	cmp r1, #0x1e
	blt _021D4CB6
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	ldr r0, [r0, #0x28]
	mov r1, #2
	bl ov101_021D5D90
_021D4CB6:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4C98

	thumb_func_start ov101_021D4CBC
ov101_021D4CBC: ; 0x021D4CBC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl ov101_021D5DC4
	cmp r0, #1
	bne _021D4CE6
	ldr r0, [r4, #0x20]
	bl ov101_021D6484
	str r0, [r4, #0x2c]
	ldr r0, [r4, #0x20]
	ldr r1, [r4, #0x1c]
	bl ov101_021D6764
	str r0, [r4, #0x30]
	mov r0, #0
	str r0, [r4, #0xc]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4CE6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4CBC

	thumb_func_start ov101_021D4CEC
ov101_021D4CEC: ; 0x021D4CEC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4D10
	ldr r0, [r4, #0x30]
	mov r1, #1
	bl ov101_021D679C
	ldr r0, [r4, #0x28]
	mov r1, #1
	bl ov101_021D5DA4
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4D10:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov101_021D4CEC

	thumb_func_start ov101_021D4D14
ov101_021D4D14: ; 0x021D4D14
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x30]
	bl ov101_021D67B0
	cmp r0, #1
	bne _021D4D32
	ldr r0, [r4, #0x2c]
	bl sub_0207136C
	mov r0, #1
	str r0, [r4, #8]
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
_021D4D32:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4D14

	thumb_func_start ov101_021D4D38
ov101_021D4D38: ; 0x021D4D38
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x61
	add r5, r0, #0
	lsl r1, r1, #2
	add r4, r5, r1
	mov r1, #3
	mov r2, #0
	str r5, [r4, #0]
	bl ov101_021D19E4
	add r1, sp, #0
	add r6, r0, #0
	bl sub_020A71B0
	ldr r0, [sp]
	mov r1, #1
	add r2, r4, #4
	bl ov101_021D4EA8
	add r2, r4, #0
	ldr r0, [sp]
	mov r1, #2
	add r2, #0xa4
	bl ov101_021D4EA8
	add r2, r4, #0
	ldr r0, [sp]
	mov r1, #3
	add r2, #0xc4
	bl ov101_021D4EA8
	add r2, r4, #0
	ldr r0, [sp]
	mov r1, #3
	add r2, #0xe4
	bl ov101_021D4EA8
	mov r2, #0x41
	lsl r2, r2, #2
	ldr r0, [sp]
	mov r1, #4
	add r2, r4, r2
	bl ov101_021D4EA8
	mov r2, #0x49
	lsl r2, r2, #2
	ldr r0, [sp]
	mov r1, #4
	add r2, r4, r2
	bl ov101_021D4EA8
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #5
	mov r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	add r6, r0, #0
	bl sub_020A71B0
	add r2, r4, #0
	ldr r0, [sp]
	mov r1, #0
	add r2, #0x24
	bl ov101_021D4EA8
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #6
	mov r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	add r6, r0, #0
	bl sub_020A71B0
	add r2, r4, #0
	ldr r0, [sp]
	mov r1, #0
	add r2, #0x44
	bl ov101_021D4EA8
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #7
	mov r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	add r6, r0, #0
	bl sub_020A71B0
	add r2, r4, #0
	ldr r0, [sp]
	mov r1, #0
	add r2, #0x64
	bl ov101_021D4EA8
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0x4a
	mov r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	add r6, r0, #0
	bl sub_020A71B0
	mov r2, #0x51
	lsl r2, r2, #2
	ldr r0, [sp]
	mov r1, #0
	add r2, r4, r2
	bl ov101_021D4EA8
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0x4b
	mov r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	add r6, r0, #0
	bl sub_020A71B0
	mov r2, #0x59
	lsl r2, r2, #2
	ldr r0, [sp]
	mov r1, #0
	add r2, r4, r2
	bl ov101_021D4EA8
	mov r2, #0x61
	lsl r2, r2, #2
	ldr r0, [sp]
	mov r1, #0
	add r2, r4, r2
	bl ov101_021D4EA8
	add r0, r6, #0
	bl sub_020181C4
	add r0, r5, #0
	mov r1, #0x4c
	mov r2, #0
	bl ov101_021D19E4
	add r1, sp, #0
	add r5, r0, #0
	bl sub_020A71B0
	mov r2, #0x69
	lsl r2, r2, #2
	ldr r0, [sp]
	mov r1, #0
	add r2, r4, r2
	bl ov101_021D4EA8
	mov r2, #0x71
	lsl r2, r2, #2
	ldr r0, [sp]
	mov r1, #0
	add r2, r4, r2
	bl ov101_021D4EA8
	add r0, r5, #0
	bl sub_020181C4
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov101_021D4D38

	thumb_func_start ov101_021D4EA4
ov101_021D4EA4: ; 0x021D4EA4
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D4EA4

	thumb_func_start ov101_021D4EA8
ov101_021D4EA8: ; 0x021D4EA8
	ldr r3, [r0, #0xc]
	lsl r0, r1, #5
	add r3, r3, r0
	mov r1, #0
_021D4EB0:
	ldrh r0, [r3]
	add r1, r1, #1
	add r3, r3, #2
	strh r0, [r2]
	add r2, r2, #2
	cmp r1, #0x10
	blt _021D4EB0
	bx lr
	thumb_func_end ov101_021D4EA8

	thumb_func_start ov101_021D4EC0
ov101_021D4EC0: ; 0x021D4EC0
	push {r0, r1, r2, r3}
	push {r3, r4, r5, r6}
	add r1, r2, #0
	add r0, r3, #0
	add r2, sp, #0x10
	add r3, sp, #0x14
	cmp r1, #0x10
	bls _021D4ED2
	mov r1, #0x10
_021D4ED2:
	ldrh r4, [r2]
	ldrh r3, [r3]
	lsl r2, r4, #0x16
	lsr r6, r2, #0x1b
	lsl r2, r4, #0x1b
	lsr r5, r2, #0x1b
	lsl r2, r4, #0x11
	lsl r4, r3, #0x11
	lsr r2, r2, #0x1b
	lsr r4, r4, #0x1b
	sub r4, r4, r2
	mul r4, r1
	asr r4, r4, #4
	add r2, r2, r4
	lsl r4, r2, #0xa
	lsl r2, r3, #0x1b
	lsl r3, r3, #0x16
	lsr r3, r3, #0x1b
	lsr r2, r2, #0x1b
	sub r3, r3, r6
	sub r2, r2, r5
	mul r2, r1
	mul r3, r1
	asr r1, r3, #4
	asr r2, r2, #4
	add r1, r6, r1
	add r2, r5, r2
	lsl r1, r1, #5
	orr r1, r2
	orr r1, r4
	strh r1, [r0]
	pop {r3, r4, r5, r6}
	add sp, #0x10
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D4EC0

	thumb_func_start ov101_021D4F18
ov101_021D4F18: ; 0x021D4F18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	str r2, [sp]
	add r6, r3, #0
	mov r7, #0
_021D4F24:
	ldrh r0, [r5]
	ldrh r1, [r4]
	ldr r2, [sp]
	add r3, r6, #0
	bl ov101_021D4EC0
	add r7, r7, #1
	add r6, r6, #2
	add r4, r4, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _021D4F24
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4F18

	thumb_func_start ov101_021D4F40
ov101_021D4F40: ; 0x021D4F40
	push {r4, lr}
	add r4, r2, #0
	lsl r0, r1, #0x18
	add r1, r3, #0
	lsl r3, r4, #0x15
	lsr r0, r0, #0x18
	mov r2, #0x20
	lsr r3, r3, #0x10
	bl sub_0201972C
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4F40

	thumb_func_start ov101_021D4F58
ov101_021D4F58: ; 0x021D4F58
	push {r4, lr}
	add r3, r1, #0
	lsl r4, r3, #2
	ldr r2, _021D4F74 ; =0x021D9E60
	lsl r3, r3, #5
	ldr r2, [r2, r4]
	mov r4, #0x8a
	lsl r4, r4, #2
	add r4, r0, r4
	mov r1, #1
	add r3, r4, r3
	bl ov101_021D4F40
	pop {r4, pc}
	; .align 2, 0
_021D4F74: .word 0x021D9E60
	thumb_func_end ov101_021D4F58

	thumb_func_start ov101_021D4F78
ov101_021D4F78: ; 0x021D4F78
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r2, #0x61
	lsl r2, r2, #2
	ldr r0, _021D4FB4 ; =0x021D9E60
	lsl r4, r1, #2
	ldr r6, [r0, r4]
	add r0, r2, #0
	add r3, r7, r2
	add r0, #0x60
	add r4, r3, r0
	add r0, r3, #0
	sub r2, #0x40
	lsl r5, r1, #5
	add r1, r3, r2
	add r0, #0xa4
	add r0, r0, r5
	add r1, r1, r5
	mov r2, #0xa
	add r3, r4, r5
	bl ov101_021D4F18
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	add r3, r4, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4FB4: .word 0x021D9E60
	thumb_func_end ov101_021D4F78

	thumb_func_start ov101_021D4FB8
ov101_021D4FB8: ; 0x021D4FB8
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	mov r2, #0x61
	lsl r2, r2, #2
	ldr r0, _021D4FF4 ; =0x021D9E60
	lsl r4, r1, #2
	ldr r6, [r0, r4]
	add r0, r2, #0
	add r3, r7, r2
	add r0, #0x60
	add r4, r3, r0
	add r0, r3, #0
	sub r2, #0x40
	lsl r5, r1, #5
	add r1, r3, r2
	add r0, #0xa4
	add r0, r0, r5
	add r1, r1, r5
	mov r2, #0xc
	add r3, r4, r5
	bl ov101_021D4F18
	add r0, r7, #0
	mov r1, #1
	add r2, r6, #0
	add r3, r4, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D4FF4: .word 0x021D9E60
	thumb_func_end ov101_021D4FB8

	thumb_func_start ov101_021D4FF8
ov101_021D4FF8: ; 0x021D4FF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D4FFE:
	add r0, r5, #0
	add r1, r4, #0
	bl ov101_021D4F58
	add r4, r4, #1
	cmp r4, #5
	blt _021D4FFE
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D4FF8

	thumb_func_start ov101_021D5010
ov101_021D5010: ; 0x021D5010
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r4, #0
_021D5016:
	add r0, r5, #0
	add r1, r4, #0
	bl ov101_021D4F78
	add r4, r4, #1
	cmp r4, #5
	blt _021D5016
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5010

	thumb_func_start ov101_021D5028
ov101_021D5028: ; 0x021D5028
	push {r4, lr}
	sub sp, #0x20
	add r4, sp, #0x14
	mov r3, #0
	str r3, [r4, #0]
	str r3, [r4, #4]
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	str r3, [r4, #8]
	str r0, [sp, #0x10]
	add r1, sp, #8
	str r1, [sp]
	mov r1, #0x8f
	str r1, [sp, #4]
	ldr r1, _021D5054 ; =0x0000044C
	add r2, r4, #0
	ldr r0, [r0, r1]
	ldr r1, _021D5058 ; =0x021D86B0
	bl sub_02071330
	add sp, #0x20
	pop {r4, pc}
	; .align 2, 0
_021D5054: .word 0x0000044C
_021D5058: .word 0x021D86B0
	thumb_func_end ov101_021D5028

	thumb_func_start ov101_021D505C
ov101_021D505C: ; 0x021D505C
	push {r3, lr}
	bl sub_02071598
	ldr r0, [r0, #0xc]
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov101_021D505C

	thumb_func_start ov101_021D5068
ov101_021D5068: ; 0x021D5068
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	ldr r1, [r0, #8]
	str r1, [r4, #0x1c]
	ldr r1, [r0, #0]
	str r1, [r4, #0x10]
	ldr r0, [r0, #4]
	str r0, [r4, #0x14]
	mov r0, #0x61
	ldr r1, [r4, #0x1c]
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [r4, #0x20]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5068

	thumb_func_start ov101_021D508C
ov101_021D508C: ; 0x021D508C
	ldr r3, _021D5094 ; =ov101_021D4F58
	ldr r0, [r1, #0x1c]
	ldr r1, [r1, #0x10]
	bx r3
	; .align 2, 0
_021D5094: .word ov101_021D4F58
	thumb_func_end ov101_021D508C

	thumb_func_start ov101_021D5098
ov101_021D5098: ; 0x021D5098
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	ldr r2, [r4, #0x10]
	ldr r0, _021D51FC ; =0x021D9E60
	lsl r1, r2, #2
	ldr r0, [r0, r1]
	lsl r5, r2, #5
	mov r1, #0x79
	ldr r2, [r4, #0x20]
	lsl r1, r1, #2
	add r6, r2, r1
	sub r1, #0xa0
	str r0, [sp]
	add r0, r2, #0
	add r1, r2, r1
	ldr r2, [r4, #0]
	add r0, #0xa4
	cmp r2, #4
	bls _021D50C0
	b _021D51FA
_021D50C0:
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_021D50CC: ; jump table
	.short _021D50D6 - _021D50CC - 2 ; case 0
	.short _021D5118 - _021D50CC - 2 ; case 1
	.short _021D517C - _021D50CC - 2 ; case 2
	.short _021D51BE - _021D50CC - 2 ; case 3
	.short _021D51FA - _021D50CC - 2 ; case 4
_021D50D6:
	mov r7, #1
	ldr r2, [r4, #0x18]
	lsl r7, r7, #0xe
	add r3, r2, r7
	lsl r2, r7, #2
	str r3, [r4, #0x18]
	cmp r3, r2
	ble _021D50E8
	str r2, [r4, #0x18]
_021D50E8:
	ldr r2, [r4, #0x18]
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	cmp r2, #0x10
	bne _021D50FC
	ldr r3, [r4, #0]
	add r3, r3, #1
	str r3, [r4, #0]
_021D50FC:
	lsl r2, r2, #0x10
	add r0, r0, r5
	add r1, r1, r5
	lsr r2, r2, #0x10
	add r3, r6, r5
	bl ov101_021D4F18
	ldr r0, [r4, #0x1c]
	ldr r2, [sp]
	mov r1, #1
	add r3, r6, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
_021D5118:
	mov r2, #1
	ldr r3, [r4, #0x18]
	lsl r2, r2, #0xe
	sub r2, r3, r2
	str r2, [r4, #0x18]
	bpl _021D5128
	mov r2, #0
	str r2, [r4, #0x18]
_021D5128:
	ldr r2, [r4, #0x18]
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	bne _021D5160
	ldr r3, [r4, #4]
	add r3, r3, #1
	str r3, [r4, #4]
	cmp r3, #4
	blt _021D515A
	ldr r3, [r4, #0x14]
	cmp r3, #0
	beq _021D5150
	ldr r3, [r4, #0]
	add r3, r3, #1
	str r3, [r4, #0]
	mov r3, #1
	str r3, [r4, #0xc]
	b _021D5160
_021D5150:
	mov r3, #4
	str r3, [r4, #0]
	mov r3, #1
	str r3, [r4, #0xc]
	b _021D5160
_021D515A:
	ldr r3, [r4, #0]
	sub r3, r3, #1
	str r3, [r4, #0]
_021D5160:
	lsl r2, r2, #0x10
	add r0, r0, r5
	add r1, r1, r5
	lsr r2, r2, #0x10
	add r3, r6, r5
	bl ov101_021D4F18
	ldr r0, [r4, #0x1c]
	ldr r2, [sp]
	mov r1, #1
	add r3, r6, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
_021D517C:
	mov r7, #2
	ldr r2, [r4, #0x18]
	lsl r7, r7, #0xe
	add r3, r2, r7
	lsl r2, r7, #1
	str r3, [r4, #0x18]
	cmp r3, r2
	ble _021D518E
	str r2, [r4, #0x18]
_021D518E:
	ldr r2, [r4, #0x18]
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	cmp r2, #0x10
	bne _021D51A2
	ldr r3, [r4, #0]
	add r3, r3, #1
	str r3, [r4, #0]
_021D51A2:
	lsl r2, r2, #0x10
	add r0, r0, r5
	add r1, r1, r5
	lsr r2, r2, #0x10
	add r3, r6, r5
	bl ov101_021D4F18
	ldr r0, [r4, #0x1c]
	ldr r2, [sp]
	mov r1, #1
	add r3, r6, r5
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
_021D51BE:
	mov r2, #2
	ldr r3, [r4, #0x18]
	lsl r2, r2, #0xe
	sub r2, r3, r2
	str r2, [r4, #0x18]
	bpl _021D51CE
	mov r2, #0
	str r2, [r4, #0x18]
_021D51CE:
	ldr r2, [r4, #0x18]
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	asr r2, r3, #0xc
	bne _021D51E0
	ldr r3, [r4, #0]
	sub r3, r3, #1
	str r3, [r4, #0]
_021D51E0:
	lsl r2, r2, #0x10
	add r0, r0, r5
	add r1, r1, r5
	lsr r2, r2, #0x10
	add r3, r6, r5
	bl ov101_021D4F18
	ldr r0, [r4, #0x1c]
	ldr r2, [sp]
	mov r1, #1
	add r3, r6, r5
	bl ov101_021D4F40
_021D51FA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D51FC: .word 0x021D9E60
	thumb_func_end ov101_021D5098

	thumb_func_start ov101_021D5200
ov101_021D5200: ; 0x021D5200
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	add r1, sp, #8
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D521E
	bl sub_02022974
_021D521E:
	str r4, [sp]
	mov r0, #0x8f
	str r0, [sp, #4]
	ldr r0, _021D523C ; =0x0000044C
	ldr r1, _021D5240 ; =0x021D8700
	ldr r0, [r4, r0]
	add r2, sp, #8
	mov r3, #0
	bl sub_02071330
	mov r1, #0x4d
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x14
	pop {r3, r4, pc}
	; .align 2, 0
_021D523C: .word 0x0000044C
_021D5240: .word 0x021D8700
	thumb_func_end ov101_021D5200

	thumb_func_start ov101_021D5244
ov101_021D5244: ; 0x021D5244
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021D525E
	bl sub_0207136C
	mov r0, #0x4d
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_021D525E:
	add r0, r4, #0
	bl ov101_021D4FF8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5244

	thumb_func_start ov101_021D5268
ov101_021D5268: ; 0x021D5268
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r6, r0, #0
	ldr r0, [r6, #4]
	ldr r1, _021D5380 ; =0x021D8938
	lsl r0, r0, #4
	add r4, r1, r0
	mov r0, #1
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, _021D5384 ; =0x021D9E60
	add r5, r6, #0
	str r0, [sp]
	mov r7, #0
_021D5284:
	ldr r1, [r4, #0]
	ldr r0, [sp, #0xc]
	tst r0, r1
	beq _021D5310
	ldr r0, [r6, #8]
	cmp r0, #0
	bne _021D529C
	ldr r0, [r4, #4]
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [sp, #8]
	b _021D52D0
_021D529C:
	ldr r1, [r4, #4]
	ldr r0, [r4, #8]
	cmp r1, r0
	ldr r1, [r5, #0x14]
	bge _021D52BC
	ldr r0, [r4, #0xc]
	add r1, r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r4, #8]
	cmp r1, r0
	blt _021D52B6
	str r0, [r5, #0x14]
	b _021D52D0
_021D52B6:
	mov r0, #0
	str r0, [sp, #8]
	b _021D52D0
_021D52BC:
	ldr r0, [r4, #0xc]
	sub r1, r1, r0
	str r1, [r5, #0x14]
	ldr r0, [r4, #8]
	cmp r1, r0
	bgt _021D52CC
	str r0, [r5, #0x14]
	b _021D52D0
_021D52CC:
	mov r0, #0
	str r0, [sp, #8]
_021D52D0:
	ldr r0, [sp]
	mov r2, #0x51
	ldr r0, [r0, #0]
	ldr r1, [r6, #0x2c]
	str r0, [sp, #4]
	mov r0, #0x79
	lsl r0, r0, #2
	add r0, r1, r0
	str r0, [sp, #0x10]
	add r0, r1, #0
	lsl r2, r2, #2
	add r1, r1, r2
	ldr r3, [r5, #0x14]
	add r0, #0xa4
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	ldr r3, [sp, #0x10]
	lsl r2, r2, #4
	add r0, r0, r7
	add r1, r1, r7
	lsr r2, r2, #0x10
	add r3, r3, r7
	bl ov101_021D4F18
	ldr r3, [sp, #0x10]
	ldr r0, [r6, #0x28]
	ldr r2, [sp, #4]
	mov r1, #1
	add r3, r3, r7
	bl ov101_021D4F40
_021D5310:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r7, #0x20
	lsl r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, #0x10
	bls _021D5284
	cmp r0, #0x20
	bhi _021D535A
	add r5, r6, #0
	mov r7, #1
	add r5, #0xc
	mov r1, #0
	lsl r7, r7, #0xc
	mov r0, #0x20
_021D5334:
	ldr r2, [r4, #0]
	tst r2, r0
	beq _021D5350
	ldr r2, [r5, #0]
	add r2, r2, r7
	str r2, [r5, #0]
	ldr r3, [r6, #0xc]
	ldr r2, [r4, #4]
	cmp r3, r2
	blt _021D534C
	str r1, [r6, #0xc]
	b _021D5350
_021D534C:
	mov r2, #0
	str r2, [sp, #8]
_021D5350:
	ldr r2, [sp, #0xc]
	lsl r2, r2, #1
	str r2, [sp, #0xc]
	cmp r2, #0x20
	bls _021D5334
_021D535A:
	mov r0, #1
	str r0, [r6, #8]
	ldr r0, [sp, #8]
	cmp r0, #1
	bne _021D537A
	mov r3, #0
	str r3, [r6, #8]
	ldr r0, [r6, #4]
	ldr r1, _021D5380 ; =0x021D8938
	add r0, r0, #1
	str r0, [r6, #4]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	cmp r0, #0x40
	bne _021D537A
	str r3, [r6, #4]
_021D537A:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021D5380: .word 0x021D8938
_021D5384: .word 0x021D9E60
	thumb_func_end ov101_021D5268

	thumb_func_start ov101_021D5388
ov101_021D5388: ; 0x021D5388
	push {r4, lr}
	add r4, r1, #0
	bl sub_020715BC
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [r4, #0x28]
	add r0, r0, r1
	str r0, [r4, #0x2c]
	mov r0, #1
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5388

	thumb_func_start ov101_021D53A0
ov101_021D53A0: ; 0x021D53A0
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D53A0

	thumb_func_start ov101_021D53A4
ov101_021D53A4: ; 0x021D53A4
	ldr r3, _021D53AC ; =ov101_021D5268
	add r0, r1, #0
	bx r3
	nop
_021D53AC: .word ov101_021D5268
	thumb_func_end ov101_021D53A4

	thumb_func_start ov101_021D53B0
ov101_021D53B0: ; 0x021D53B0
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4f
	mov r1, #0x10
	bl sub_02018184
	add r1, r0, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r0, _021D53D0 ; =ov101_021D542C
	mov r2, #0x8f
	str r4, [r1, #0xc]
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_021D53D0: .word ov101_021D542C
	thumb_func_end ov101_021D53B0

	thumb_func_start ov101_021D53D4
ov101_021D53D4: ; 0x021D53D4
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x4f
	mov r1, #0x10
	bl sub_02018184
	add r1, r0, #0
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	ldr r0, _021D53F4 ; =ov101_021D548C
	mov r2, #0x8f
	str r4, [r1, #0xc]
	bl sub_0200D9E8
	pop {r4, pc}
	; .align 2, 0
_021D53F4: .word ov101_021D548C
	thumb_func_end ov101_021D53D4

	thumb_func_start ov101_021D53F8
ov101_021D53F8: ; 0x021D53F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x4f
	mov r1, #0x10
	bl sub_02018184
	add r1, r0, #0
	mov r0, #0
	str r0, [r1, #0]
	mov r0, #2
	str r4, [r1, #8]
	lsl r0, r0, #0xe
	str r0, [r1, #4]
	ldr r0, _021D5428 ; =ov101_021D54EC
	mov r2, #0x8f
	str r5, [r1, #0xc]
	bl sub_0200D9E8
	mov r0, #0x5f
	lsl r0, r0, #4
	bl sub_02005748
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D5428: .word ov101_021D54EC
	thumb_func_end ov101_021D53F8

	thumb_func_start ov101_021D542C
ov101_021D542C: ; 0x021D542C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	mov r0, #0x61
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r2, r1, r0
	mov r0, #2
	ldr r3, [r5, #4]
	lsl r0, r0, #0xa
	add r0, r3, r0
	asr r3, r0, #0xb
	lsr r3, r3, #0x14
	add r1, r2, #0
	add r6, r2, #0
	add r3, r0, r3
	str r0, [r5, #4]
	lsl r0, r3, #4
	lsr r4, r0, #0x10
	add r1, #0x24
	add r6, #0x84
	cmp r4, #0x10
	bls _021D545C
	mov r4, #0x10
_021D545C:
	add r0, r2, #4
	add r2, r4, #0
	add r3, r6, #0
	bl ov101_021D4F18
	ldr r0, [r5, #0xc]
	mov r1, #7
	mov r2, #1
	add r3, r6, #0
	bl ov101_021D4F40
	cmp r4, #0x10
	beq _021D547E
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #0x3f
	bne _021D548A
_021D547E:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
_021D548A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D542C

	thumb_func_start ov101_021D548C
ov101_021D548C: ; 0x021D548C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	mov r0, #0x61
	ldr r1, [r5, #0xc]
	lsl r0, r0, #2
	add r2, r1, r0
	mov r1, #2
	ldr r3, [r5, #4]
	lsl r1, r1, #0xa
	add r1, r3, r1
	asr r3, r1, #0xb
	lsr r3, r3, #0x14
	add r0, r2, #0
	add r6, r2, #0
	add r3, r1, r3
	str r1, [r5, #4]
	lsl r1, r3, #4
	lsr r4, r1, #0x10
	add r0, #0x24
	add r6, #0x84
	cmp r4, #0x10
	bls _021D54BC
	mov r4, #0x10
_021D54BC:
	add r1, r2, #4
	add r2, r4, #0
	add r3, r6, #0
	bl ov101_021D4F18
	ldr r0, [r5, #0xc]
	mov r1, #7
	mov r2, #1
	add r3, r6, #0
	bl ov101_021D4F40
	cmp r4, #0x10
	beq _021D54DE
	ldr r0, [r5, #0xc]
	ldr r0, [r0, #0]
	cmp r0, #0x3f
	bne _021D54EA
_021D54DE:
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
_021D54EA:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D548C

	thumb_func_start ov101_021D54EC
ov101_021D54EC: ; 0x021D54EC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, [r5, #0xc]
	mov r2, #0x61
	lsl r2, r2, #2
	add r7, r0, #0
	add r0, r1, r2
	add r6, r1, r2
	ldr r3, [r1, #0]
	add r0, #0x24
	add r6, #0x84
	cmp r3, #0x3f
	bne _021D5514
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
	pop {r3, r4, r5, r6, r7, pc}
_021D5514:
	ldr r3, [r5, #8]
	cmp r3, #0
	bne _021D5520
	add r1, r1, r2
	add r1, #0x44
	b _021D5524
_021D5520:
	add r1, r1, r2
	add r1, #0x64
_021D5524:
	ldr r2, [r5, #0]
	cmp r2, #0
	beq _021D5530
	cmp r2, #1
	beq _021D5566
	pop {r3, r4, r5, r6, r7, pc}
_021D5530:
	mov r2, #1
	ldr r3, [r5, #4]
	lsl r2, r2, #0xc
	add r3, r3, r2
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	asr r2, r2, #0xc
	str r3, [r5, #4]
	cmp r2, #0x10
	ble _021D554E
	ldr r3, [r5, #0]
	mov r2, #0x10
	add r3, r3, #1
	str r3, [r5, #0]
_021D554E:
	lsl r2, r2, #0x10
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl ov101_021D4F18
	ldr r0, [r5, #0xc]
	mov r1, #7
	mov r2, #1
	add r3, r6, #0
	bl ov101_021D4F40
	pop {r3, r4, r5, r6, r7, pc}
_021D5566:
	mov r2, #1
	ldr r3, [r5, #4]
	lsl r2, r2, #0xa
	sub r2, r3, r2
	asr r3, r2, #0xb
	lsr r3, r3, #0x14
	add r3, r2, r3
	str r2, [r5, #4]
	asr r4, r3, #0xc
	bpl _021D557C
	mov r4, #0
_021D557C:
	lsl r2, r4, #0x10
	lsr r2, r2, #0x10
	add r3, r6, #0
	bl ov101_021D4F18
	ldr r0, [r5, #0xc]
	mov r1, #7
	mov r2, #1
	add r3, r6, #0
	bl ov101_021D4F40
	cmp r4, #0
	bne _021D55A2
	add r0, r5, #0
	bl sub_020181C4
	add r0, r7, #0
	bl sub_0200DA58
_021D55A2:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov101_021D54EC

	thumb_func_start ov101_021D55A4
ov101_021D55A4: ; 0x021D55A4
	push {r4, lr}
	add r4, r1, #0
	lsl r1, r4, #2
	add r0, r0, r1
	add r0, #0xa8
	ldr r0, [r0, #0]
	mov r1, #0x15
	add r0, r2, r0
	bl sub_020E1F6C
	cmp r1, #0
	bge _021D55BE
	add r1, #0x15
_021D55BE:
	mov r0, #0x54
	add r2, r4, #0
	mul r2, r0
	ldr r0, _021D55D0 ; =0x021D9688
	lsl r1, r1, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, pc}
	nop
_021D55D0: .word 0x021D9688
	thumb_func_end ov101_021D55A4

	thumb_func_start ov101_021D55D4
ov101_021D55D4: ; 0x021D55D4
	push {r4, r5, r6, lr}
	lsl r4, r1, #2
	add r4, r0, r4
	add r4, #0x90
	ldr r4, [r4, #0]
	mov r3, #0
	lsr r6, r4, #0x1f
	lsl r5, r4, #0xf
	sub r5, r5, r6
	mov r4, #0xf
	ror r5, r4
	add r4, r6, r5
	beq _021D55F0
	sub r3, r3, #1
_021D55F0:
	add r2, r2, r3
	bl ov101_021D55A4
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D55D4

	thumb_func_start ov101_021D55F8
ov101_021D55F8: ; 0x021D55F8
	ldr r1, _021D5614 ; =0x021BF67C
	ldr r1, [r1, #0x48]
	and r1, r0
	cmp r1, r0
	bne _021D5606
	mov r0, #2
	bx lr
_021D5606:
	tst r0, r1
	beq _021D560E
	mov r0, #1
	bx lr
_021D560E:
	mov r0, #0
	bx lr
	nop
_021D5614: .word 0x021BF67C
	thumb_func_end ov101_021D55F8

	thumb_func_start ov101_021D5618
ov101_021D5618: ; 0x021D5618
	mov r2, #3
	add r1, r0, #0
	tst r1, r2
	beq _021D5624
	mov r0, #2
	bx lr
_021D5624:
	mov r1, #0xc
	tst r1, r0
	beq _021D562E
	add r0, r2, #0
	bx lr
_021D562E:
	mov r1, #0x30
	tst r1, r0
	beq _021D5638
	mov r0, #4
	bx lr
_021D5638:
	mov r1, #0xc0
	add r2, r0, #0
	tst r2, r1
	beq _021D5644
	mov r0, #5
	bx lr
_021D5644:
	add r1, #0x40
	tst r1, r0
	beq _021D564E
	mov r0, #1
	bx lr
_021D564E:
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _021D565A
	mov r0, #0
	bx lr
_021D565A:
	mov r0, #6
	bx lr
	; .align 2, 0
	thumb_func_end ov101_021D5618

	thumb_func_start ov101_021D5660
ov101_021D5660: ; 0x021D5660
	push {r4, r5, r6, lr}
	mov r1, #0
	mov r2, #1
	add r5, r0, #0
	bl ov101_021D55D4
	mov r1, #1
	add r4, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov101_021D55D4
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D5690
	cmp r4, r6
	bne _021D5694
	cmp r4, r0
	bne _021D5694
_021D5690:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D5694:
	mov r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5660

	thumb_func_start ov101_021D5698
ov101_021D5698: ; 0x021D5698
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #2
	bl ov101_021D55D4
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov101_021D55D4
	mov r1, #2
	add r6, r0, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D56C8
	cmp r4, r6
	bne _021D56CC
	cmp r4, r0
	bne _021D56CC
_021D56C8:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D56CC:
	mov r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5698

	thumb_func_start ov101_021D56D0
ov101_021D56D0: ; 0x021D56D0
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #3
	bl ov101_021D55D4
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	bl ov101_021D55D4
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D5700
	cmp r4, r6
	bne _021D5704
	cmp r4, r0
	bne _021D5704
_021D5700:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D5704:
	mov r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D56D0

	thumb_func_start ov101_021D5708
ov101_021D5708: ; 0x021D5708
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #1
	bl ov101_021D55D4
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov101_021D55D4
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D5738
	cmp r4, r6
	bne _021D573C
	cmp r4, r0
	bne _021D573C
_021D5738:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D573C:
	mov r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5708

	thumb_func_start ov101_021D5740
ov101_021D5740: ; 0x021D5740
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #0
	mov r2, #3
	bl ov101_021D55D4
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #1
	mov r2, #2
	bl ov101_021D55D4
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ov101_021D55D4
	cmp r4, #3
	beq _021D5770
	cmp r4, r6
	bne _021D5774
	cmp r4, r0
	bne _021D5774
_021D5770:
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021D5774:
	mov r0, #6
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5740

	thumb_func_start ov101_021D5778
ov101_021D5778: ; 0x021D5778
	push {r4, r5, r6, lr}
	add r4, r2, #0
	mov r1, #0
	add r5, r0, #0
	str r1, [r4, #0]
	mov r6, #6
	bl ov101_021D5660
	cmp r0, #6
	beq _021D5796
	ldr r1, [r4, #0]
	add r6, r0, #0
	mov r0, #2
	orr r0, r1
	str r0, [r4, #0]
_021D5796:
	add r0, r5, #0
	bl ov101_021D5698
	cmp r0, #6
	beq _021D57AA
	ldr r1, [r4, #0]
	add r6, r0, #0
	mov r0, #1
	orr r0, r1
	str r0, [r4, #0]
_021D57AA:
	add r0, r5, #0
	bl ov101_021D56D0
	cmp r0, #6
	beq _021D57BE
	ldr r1, [r4, #0]
	add r6, r0, #0
	mov r0, #4
	orr r0, r1
	str r0, [r4, #0]
_021D57BE:
	add r0, r5, #0
	bl ov101_021D5708
	cmp r0, #6
	beq _021D57D2
	ldr r1, [r4, #0]
	add r6, r0, #0
	mov r0, #8
	orr r0, r1
	str r0, [r4, #0]
_021D57D2:
	add r0, r5, #0
	bl ov101_021D5740
	cmp r0, #6
	beq _021D57E6
	ldr r1, [r4, #0]
	add r6, r0, #0
	mov r0, #0x10
	orr r0, r1
	str r0, [r4, #0]
_021D57E6:
	add r0, r6, #0
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov101_021D5778

	thumb_func_start ov101_021D57EC
ov101_021D57EC: ; 0x021D57EC
	push {r3, r4, r5, lr}
	add r5, r2, #0
	mov r1, #0
	str r1, [r5, #0]
	bl ov101_021D5698
	add r4, r0, #0
	cmp r4, #6
	beq _021D580E
	cmp r4, #2
	beq _021D5806
	bl sub_02022974
_021D5806:
	ldr r1, [r5, #0]
	mov r0, #1
	orr r0, r1
	str r0, [r5, #0]
_021D580E:
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov101_021D57EC

	thumb_func_start ov101_021D5814
ov101_021D5814: ; 0x021D5814
	push {r3, lr}
	mov r2, #3
	add r1, r0, #0
	tst r1, r2
	beq _021D5822
	mov r0, #1
	pop {r3, pc}
_021D5822:
	mov r1, #0xc
	tst r1, r0
	beq _021D582C
	mov r0, #0
	pop {r3, pc}
_021D582C:
	mov r1, #0x30
	tst r1, r0
	beq _021D5836
	mov r0, #2
	pop {r3, pc}
_021D5836:
	mov r1, #0xc0
	tst r0, r1
	beq _021D5840
	add r0, r2, #0
	pop {r3, pc}
_021D5840:
	bl sub_02022974
	mov r0, #4
	pop {r3, pc}
	thumb_func_end ov101_021D5814

	thumb_func_start ov101_021D5848
ov101_021D5848: ; 0x021D5848
	mov r2, #0
	add r1, r2, #0
_021D584C:
	add r2, r2, #1
	str r1, [r0, #0x54]
	add r0, r0, #4
	cmp r2, #3
	blt _021D584C
	bx lr
	thumb_func_end ov101_021D5848

	thumb_func_start ov101_021D5858
ov101_021D5858: ; 0x021D5858
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r1, #0
	mov r4, #0
	add r1, r5, #0
_021D5862:
	ldr r0, [r1, #0x54]
	cmp r0, #0
	beq _021D5870
	add r4, r4, #1
	add r1, r1, #4
	cmp r4, #3
	blt _021D5862
_021D5870:
	cmp r4, #3
	blt _021D5878
	bl sub_02022974
_021D5878:
	lsl r0, r4, #2
	add r0, r5, r0
	str r6, [r0, #0x54]
	pop {r4, r5, r6, pc}
	thumb_func_end ov101_021D5858

	thumb_func_start ov101_021D5880
ov101_021D5880: ; 0x021D5880
	push {r4, r5, r6}
	sub sp, #0xc
	ldr r6, _021D58BC ; =0x021D866C
	add r4, r0, #0
	ldmia r6!, {r0, r1}
	add r5, sp, #0
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	mov r2, #0
	str r0, [r5, #0]
_021D5896:
	ldr r1, [r4, #0x54]
	cmp r1, #0
	beq _021D58AA
	ldr r0, [r3, #0]
	cmp r1, r0
	beq _021D58AA
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6}
	bx lr
_021D58AA:
	add r2, r2, #1
	add r4, r4, #4
	add r3, r3, #4
	cmp r2, #3
	blt _021D5896
	mov r0, #1
	add sp, #0xc
	pop {r4, r5, r6}
	bx lr
	; .align 2, 0
_021D58BC: .word 0x021D866C
	thumb_func_end ov101_021D5880

	thumb_func_start ov101_021D58C0
ov101_021D58C0: ; 0x021D58C0
	push {r3, r4}
	ldr r2, [r0, #0x34]
	mov r1, #0x18
	ldr r3, _021D58F0 ; =0x021D87A8
	mul r1, r2
	mov r4, #0
	add r3, r3, r1
_021D58CE:
	ldr r2, [r0, #0x54]
	cmp r2, #0
	beq _021D58E0
	ldr r1, [r3, #0]
	cmp r2, r1
	beq _021D58E0
	mov r0, #0
	pop {r3, r4}
	bx lr
_021D58E0:
	add r4, r4, #1
	add r0, r0, #4
	add r3, r3, #4
	cmp r4, #3
	blt _021D58CE
	mov r0, #1
	pop {r3, r4}
	bx lr
	; .align 2, 0
_021D58F0: .word 0x021D87A8
	thumb_func_end ov101_021D58C0

	thumb_func_start ov101_021D58F4
ov101_021D58F4: ; 0x021D58F4
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	lsl r2, r1, #3
	ldr r3, _021D5930 ; =0x021D8740
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	add r5, r3, r2
	ldr r2, [r3, r2]
	ldr r0, _021D5934 ; =0x0000043C
	ldr r3, [r5, #4]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r4, r0]
	mov r1, #1
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	ldr r0, _021D5934 ; =0x0000043C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D5930: .word 0x021D8740
_021D5934: .word 0x0000043C
	thumb_func_end ov101_021D58F4

	thumb_func_start ov101_021D5938
ov101_021D5938: ; 0x021D5938
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #3
	str r0, [sp]
	mov r0, #2
	lsl r2, r1, #3
	ldr r3, _021D5974 ; =0x021D8740
	str r0, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	add r5, r3, r2
	ldr r2, [r3, r2]
	ldr r0, _021D5978 ; =0x0000043C
	ldr r3, [r5, #4]
	lsl r2, r2, #0x18
	lsl r3, r3, #0x18
	ldr r0, [r4, r0]
	mov r1, #1
	lsr r2, r2, #0x18
	lsr r3, r3, #0x18
	bl sub_02019E2C
	ldr r0, _021D5978 ; =0x0000043C
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0201C3C0
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_021D5974: .word 0x021D8740
_021D5978: .word 0x0000043C
	thumb_func_end ov101_021D5938

	thumb_func_start ov101_021D597C
ov101_021D597C: ; 0x021D597C
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0x44]
	ldr r5, [r0, #0x48]
	cmp r4, #6
	bne _021D598A
	bl sub_02022974
_021D598A:
	ldr r3, _021D59A8 ; =0x021D9550
	lsl r2, r4, #2
	mov r1, #0
	ldr r3, [r3, r2]
	add r0, r1, #0
	mov r2, #1
_021D5996:
	add r4, r5, #0
	tst r4, r2
	beq _021D599E
	add r0, r0, r3
_021D599E:
	add r1, r1, #1
	lsr r5, r5, #1
	cmp r1, #5
	blt _021D5996
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D59A8: .word 0x021D9550
	thumb_func_end ov101_021D597C

	.rodata


	.global Unk_ov101_021D8648
Unk_ov101_021D8648: ; 0x021D8648
	.incbin "incbin/overlay101_rodata.bin", 0xC0, 0xC4 - 0xC0

	.global Unk_ov101_021D864C
Unk_ov101_021D864C: ; 0x021D864C
	.incbin "incbin/overlay101_rodata.bin", 0xC4, 0xCC - 0xC4

	.global Unk_ov101_021D8654
Unk_ov101_021D8654: ; 0x021D8654
	.incbin "incbin/overlay101_rodata.bin", 0xCC, 0xD4 - 0xCC

	.global Unk_ov101_021D865C
Unk_ov101_021D865C: ; 0x021D865C
	.incbin "incbin/overlay101_rodata.bin", 0xD4, 0xDC - 0xD4

	.global Unk_ov101_021D8664
Unk_ov101_021D8664: ; 0x021D8664
	.incbin "incbin/overlay101_rodata.bin", 0xDC, 0xE4 - 0xDC

	.global Unk_ov101_021D866C
Unk_ov101_021D866C: ; 0x021D866C
	.incbin "incbin/overlay101_rodata.bin", 0xE4, 0xF0 - 0xE4

	.global Unk_ov101_021D8678
Unk_ov101_021D8678: ; 0x021D8678
	.incbin "incbin/overlay101_rodata.bin", 0xF0, 0xFC - 0xF0

	.global Unk_ov101_021D8684
Unk_ov101_021D8684: ; 0x021D8684
	.incbin "incbin/overlay101_rodata.bin", 0xFC, 0x108 - 0xFC

	.global Unk_ov101_021D8690
Unk_ov101_021D8690: ; 0x021D8690
	.incbin "incbin/overlay101_rodata.bin", 0x108, 0x118 - 0x108

	.global Unk_ov101_021D86A0
Unk_ov101_021D86A0: ; 0x021D86A0
	.incbin "incbin/overlay101_rodata.bin", 0x118, 0x128 - 0x118

	.global Unk_ov101_021D86B0
Unk_ov101_021D86B0: ; 0x021D86B0
	.incbin "incbin/overlay101_rodata.bin", 0x128, 0x13C - 0x128

	.global Unk_ov101_021D86C4
Unk_ov101_021D86C4: ; 0x021D86C4
	.incbin "incbin/overlay101_rodata.bin", 0x13C, 0x150 - 0x13C

	.global Unk_ov101_021D86D8
Unk_ov101_021D86D8: ; 0x021D86D8
	.incbin "incbin/overlay101_rodata.bin", 0x150, 0x164 - 0x150

	.global Unk_ov101_021D86EC
Unk_ov101_021D86EC: ; 0x021D86EC
	.incbin "incbin/overlay101_rodata.bin", 0x164, 0x178 - 0x164

	.global Unk_ov101_021D8700
Unk_ov101_021D8700: ; 0x021D8700
	.incbin "incbin/overlay101_rodata.bin", 0x178, 0x18C - 0x178

	.global Unk_ov101_021D8714
Unk_ov101_021D8714: ; 0x021D8714
	.incbin "incbin/overlay101_rodata.bin", 0x18C, 0x1A0 - 0x18C

	.global Unk_ov101_021D8728
Unk_ov101_021D8728: ; 0x021D8728
	.incbin "incbin/overlay101_rodata.bin", 0x1A0, 0x1B8 - 0x1A0

	.global Unk_ov101_021D8740
Unk_ov101_021D8740: ; 0x021D8740
	.incbin "incbin/overlay101_rodata.bin", 0x1B8, 0x1D0 - 0x1B8

	.global Unk_ov101_021D8758
Unk_ov101_021D8758: ; 0x021D8758
	.incbin "incbin/overlay101_rodata.bin", 0x1D0, 0x1EC - 0x1D0

	.global Unk_ov101_021D8774
Unk_ov101_021D8774: ; 0x021D8774
	.incbin "incbin/overlay101_rodata.bin", 0x1EC, 0x220 - 0x1EC

	.global Unk_ov101_021D87A8
Unk_ov101_021D87A8: ; 0x021D87A8
	.incbin "incbin/overlay101_rodata.bin", 0x220, 0x2B0 - 0x220

	.global Unk_ov101_021D8838
Unk_ov101_021D8838: ; 0x021D8838
	.incbin "incbin/overlay101_rodata.bin", 0x2B0, 0x3B0 - 0x2B0

	.global Unk_ov101_021D8938
Unk_ov101_021D8938: ; 0x021D8938
	.incbin "incbin/overlay101_rodata.bin", 0x3B0, 0x520


	.data


	.global Unk_ov101_021D9E60
Unk_ov101_021D9E60: ; 0x021D9E60
	.incbin "incbin/overlay101_data.bin", 0x0, 0x14

