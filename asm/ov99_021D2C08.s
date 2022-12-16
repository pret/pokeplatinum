	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov99_021D2C08
ov99_021D2C08: ; 0x021D2C08
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r6, r4, #0
	add r5, r0, #0
	add r6, #8
	cmp r1, #0
	beq _021D2C24
	cmp r1, #1
	beq _021D2C44
	cmp r1, #2
	beq _021D2C68
	b _021D2C78
_021D2C24:
	add r1, r6, #0
	bl ov99_021D2CB0
	mov r1, #0
	mov r0, #3
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x18
	sub r2, #0x10
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2C78
_021D2C44:
	ldr r0, _021D2CA4 ; =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D2CA8 ; =0x00000726
	cmp r1, r0
	blo _021D2C78
	mov r0, #3
	str r0, [sp]
	mov r0, #0x18
	add r1, r0, #0
	sub r1, #0x28
	mov r2, #0
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D2C78
_021D2C68:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D2C78
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D2C78:
	ldr r1, _021D2CAC ; =0x000010E0
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov99_021D44CC
	add r0, r5, #0
	add r1, r6, #0
	bl ov99_021D2CEC
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	bl ov99_021D425C
	add r0, r5, #0
	add r1, r6, #0
	bl ov99_021D2DF4
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D2CA4: .word 0x000010FC
_021D2CA8: .word 0x00000726
_021D2CAC: .word 0x000010E0
	thumb_func_end ov99_021D2C08

	thumb_func_start ov99_021D2CB0
ov99_021D2CB0: ; 0x021D2CB0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r4, _021D2CE4 ; =0x021D4B70
	add r5, r1, #0
	mov r7, #2
	add r6, #8
_021D2CBC:
	ldr r0, _021D2CE8 ; =0x000010E0
	mov r3, #0x11
	ldr r0, [r6, r0]
	ldr r1, [r4, #4]
	ldr r2, [r4, #8]
	lsl r3, r3, #0x10
	bl sub_0200D650
	ldr r0, [r4, #4]
	add r7, r7, #1
	str r0, [r5, #8]
	ldr r0, [r4, #8]
	add r6, r6, #4
	str r0, [r5, #0xc]
	add r4, #0x24
	add r5, #0x14
	cmp r7, #4
	ble _021D2CBC
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2CE4: .word 0x021D4B70
_021D2CE8: .word 0x000010E0
	thumb_func_end ov99_021D2CB0

	thumb_func_start ov99_021D2CEC
ov99_021D2CEC: ; 0x021D2CEC
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r7, #0
	str r1, [sp]
	mov r6, #0
	mov r4, #2
	add r5, #8
_021D2CFA:
	ldr r2, _021D2D14 ; =0x000010E0
	ldr r1, [sp]
	ldr r2, [r5, r2]
	add r0, r7, #0
	add r3, r6, #0
	bl ov99_021D2D18
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #1
	cmp r4, #4
	ble _021D2CFA
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D2D14: .word 0x000010E0
	thumb_func_end ov99_021D2CEC

	thumb_func_start ov99_021D2D18
ov99_021D2D18: ; 0x021D2D18
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x14
	add r1, #8
	mul r0, r3
	add r4, r1, r0
	str r2, [sp]
	mov r0, #0x24
	ldr r2, _021D2DEC ; =0x021D4B70
	mul r0, r3
	add r5, r2, r0
	ldr r1, [r4, #0xc]
	ldr r0, [r2, r0]
	cmp r1, r0
	bge _021D2D3A
	add r0, r1, #1
	str r0, [r4, #0xc]
	pop {r3, r4, r5, r6, r7, pc}
_021D2D3A:
	ldr r2, [r4, #8]
	ldr r1, [r5, #0x14]
	add r0, r4, #0
	add r2, r2, r1
	mov r1, #0x5a
	lsl r1, r1, #0xe
	add r0, #8
	str r2, [r4, #8]
	cmp r2, r1
	blt _021D2D54
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
_021D2D54:
	ldr r0, [r4, #8]
	ldr r6, [r5, #0x18]
	bl sub_0201D2B8
	ldr r2, [r4, #0]
	ldr r1, [r5, #0xc]
	asr r3, r6, #0x1f
	add r1, r2, r1
	str r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r1, [r5, #0x10]
	add r1, r2, r1
	str r1, [r4, #4]
	asr r1, r0, #0x1f
	add r2, r6, #0
	bl sub_020E1F1C
	mov r2, #2
	add r7, r0, #0
	add r6, r1, #0
	lsl r2, r2, #0xa
	add r7, r7, r2
	ldr r2, _021D2DF0 ; =0x00000000
	ldr r3, [r4, #4]
	adc r6, r2
	lsl r2, r6, #0x14
	lsr r6, r7, #0xc
	orr r6, r2
	add r2, r3, r6
	mov r3, #0x11
	ldr r0, [sp]
	ldr r1, [r4, #0]
	lsl r3, r3, #0x10
	bl sub_0200D650
	mov r0, #0x12
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021D2DAE
	ldr r1, [r5, #0x1c]
	ldr r0, [sp]
	add r2, r1, #0
	bl sub_0200D74C
	b _021D2DCA
_021D2DAE:
	ldr r1, [r5, #0x1c]
	mov r0, #0
	bl sub_020E1A9C
	add r6, r0, #0
	ldr r1, [r5, #0x1c]
	mov r0, #0
	bl sub_020E1A9C
	add r2, r0, #0
	ldr r0, [sp]
	add r1, r6, #0
	bl sub_0200D74C
_021D2DCA:
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0x10]
	ldrsh r1, [r4, r0]
	ldrh r0, [r5, #0x20]
	cmp r1, r0
	blt _021D2DE8
	mov r0, #0
	strh r0, [r4, #0x10]
	mov r0, #0x12
	ldrsb r1, [r4, r0]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #0x12]
_021D2DE8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D2DEC: .word 0x021D4B70
_021D2DF0: .word 0x00000000
	thumb_func_end ov99_021D2D18

	thumb_func_start ov99_021D2DF4
ov99_021D2DF4: ; 0x021D2DF4
	push {r4, r5, r6, lr}
	add r4, r1, #0
	ldr r3, [r4, #0]
	add r5, r0, #0
	sub r3, #0x40
	asr r6, r3, #0xb
	str r3, [r4, #0]
	lsr r6, r6, #0x14
	add r6, r3, r6
	ldr r0, [r5, #8]
	mov r1, #2
	mov r2, #0
	asr r3, r6, #0xc
	bl sub_02019184
	ldr r4, [r4, #0]
	ldr r0, [r5, #8]
	asr r3, r4, #0xb
	lsr r3, r3, #0x14
	add r3, r4, r3
	mov r1, #7
	mov r2, #0
	asr r3, r3, #0xc
	bl sub_02019184
	pop {r4, r5, r6, pc}
	thumb_func_end ov99_021D2DF4

	.rodata


	.global Unk_ov99_021D4B70
Unk_ov99_021D4B70: ; 0x021D4B70
	.incbin "incbin/overlay99_rodata.bin", 0x4A4, 0x6C

