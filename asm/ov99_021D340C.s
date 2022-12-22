	.include "macros/function.inc"
	.include "include/ov99_021D340C.inc"

	

	.text


	thumb_func_start ov99_021D340C
ov99_021D340C: ; 0x021D340C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	add r0, r1, #0
	add r7, r1, #0
	ldr r0, [r0, #0]
	add r7, #8
	str r1, [sp, #4]
	cmp r0, #3
	bhi _021D3510
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021D342C: ; jump table
	.short _021D3434 - _021D342C - 2 ; case 0
	.short _021D34B4 - _021D342C - 2 ; case 1
	.short _021D34D8 - _021D342C - 2 ; case 2
	.short _021D3500 - _021D342C - 2 ; case 3
_021D3434:
	add r4, r6, #0
	mov r5, #0
	add r4, #0x6c
	b _021D347C
_021D343C:
	mov r0, #0x78
	mul r0, r5
	add r0, r4, r0
	mov r1, #0
	mov r2, #0x54
	bl MI_CpuFill8
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1d
	sub r1, r1, r2
	mov r0, #0x1d
	ror r1, r0
	add r0, r2, r1
	bne _021D345C
	mov r1, #3
	b _021D346A
_021D345C:
	cmp r5, #0x1c
	blo _021D3464
	mov r1, #1
	b _021D346A
_021D3464:
	ldr r0, _021D3574 ; =0x021D4CAC
	lsl r1, r5, #1
	ldrh r1, [r0, r1]
_021D346A:
	lsl r1, r1, #4
	mov r0, #0x78
	add r1, r6, r1
	mul r0, r5
	ldr r1, [r1, #0x34]
	add r0, r4, r0
	bl NNS_G3dRenderObjInit
	add r5, r5, #1
_021D347C:
	cmp r5, #0x10
	blt _021D343C
	mov r0, #0x12
	mov r1, #0x10
	lsl r0, r0, #4
	str r1, [r7, r0]
	add r0, r6, #0
	add r1, r7, #0
	bl ov99_021D3588
	add r0, r6, #0
	bl ov99_021D36B0
	mov r1, #0
	mov r0, #3
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x18
	sub r2, #0x10
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	b _021D3510
_021D34B4:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D3510
	ldr r0, _021D3578 ; =0x04000050
	mov r1, #0
	mov r2, #0x3f
	mov r3, #0x1f
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	b _021D3510
_021D34D8:
	ldr r0, _021D357C ; =0x000010FC
	ldr r1, [r6, r0]
	ldr r0, _021D3580 ; =0x00001F2C
	cmp r1, r0
	blo _021D3510
	mov r0, #3
	str r0, [sp]
	mov r0, #0x18
	add r1, r0, #0
	sub r1, #0x28
	mov r2, #0
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	add r1, r0, #1
	ldr r0, [sp, #4]
	str r1, [r0, #0]
	b _021D3510
_021D3500:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D3510
	add sp, #8
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_021D3510:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r3, [r7, r0]
	mov r0, #0x1d
	lsr r2, r3, #0x1f
	lsl r1, r3, #0x1d
	sub r1, r1, r2
	ror r1, r0
	add r0, r2, r1
	bne _021D3528
	mov r1, #3
	b _021D3536
_021D3528:
	cmp r3, #0x1c
	blo _021D3530
	mov r1, #1
	b _021D3536
_021D3530:
	ldr r0, _021D3574 ; =0x021D4CAC
	lsl r1, r3, #1
	ldrh r1, [r0, r1]
_021D3536:
	add r0, r6, #0
	bl ov99_021D425C
	cmp r0, #1
	bne _021D354A
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r1, [r7, r0]
	add r1, r1, #1
	str r1, [r7, r0]
_021D354A:
	ldr r1, _021D3584 ; =0x000010E0
	add r0, r6, #0
	ldr r1, [r6, r1]
	bl ov99_021D44CC
	add r0, r6, #0
	add r1, r7, #0
	bl ov99_021D35C8
	add r0, r6, #0
	add r1, r7, #0
	bl ov99_021D36D4
	add r0, r6, #0
	add r1, r7, #0
	bl ov99_021D3930
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D3574: .word 0x021D4CAC
_021D3578: .word 0x04000050
_021D357C: .word 0x000010FC
_021D3580: .word 0x00001F2C
_021D3584: .word 0x000010E0
	thumb_func_end ov99_021D340C

	thumb_func_start ov99_021D3588
ov99_021D3588: ; 0x021D3588
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021D35C0 ; =0x000010E0
	add r4, #8
	add r5, r1, #0
	ldr r0, [r4, r0]
	mov r1, #2
	bl sub_0200D6A4
	ldr r0, _021D35C0 ; =0x000010E0
	mov r1, #0x13
	mov r2, #9
	mov r3, #0x11
	ldr r0, [r4, r0]
	lsl r1, r1, #4
	mvn r2, r2
	lsl r3, r3, #0x10
	bl sub_0200D500
	mov r1, #0x13
	mov r0, #0x49
	lsl r1, r1, #0x10
	lsl r0, r0, #2
	str r1, [r5, r0]
	ldr r1, _021D35C4 ; =0xFFFF6000
	add r0, r0, #4
	str r1, [r5, r0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D35C0: .word 0x000010E0
_021D35C4: .word 0xFFFF6000
	thumb_func_end ov99_021D3588

	thumb_func_start ov99_021D35C8
ov99_021D35C8: ; 0x021D35C8
	push {r4, lr}
	ldr r2, _021D35E0 ; =0x000010FC
	ldr r3, _021D35E4 ; =0x00001D10
	ldr r4, [r0, r2]
	cmp r4, r3
	blo _021D35DE
	sub r2, #0x14
	ldr r2, [r0, r2]
	mov r3, #0
	bl ov99_021D35E8
_021D35DE:
	pop {r4, pc}
	; .align 2, 0
_021D35E0: .word 0x000010FC
_021D35E4: .word 0x00001D10
	thumb_func_end ov99_021D35C8

	thumb_func_start ov99_021D35E8
ov99_021D35E8: ; 0x021D35E8
	push {r3, r4, r5, r6, r7, lr}
	mov r0, #0x49
	lsl r0, r0, #2
	add r1, r1, r0
	lsl r0, r3, #4
	str r2, [sp]
	add r4, r1, r0
	mov r2, #0x1c
	ldr r1, [r1, r0]
	ldr r5, _021D36A4 ; =0x021D4C90
	mul r2, r3
	ldr r0, _021D36A8 ; =0xFFFC0000
	add r5, r5, r2
	cmp r1, r0
	blt _021D36A0
	ldr r2, [r4, #8]
	ldr r1, [r5, #0xc]
	add r0, r4, #0
	add r2, r2, r1
	mov r1, #0x5a
	lsl r1, r1, #0xe
	add r0, #8
	str r2, [r4, #8]
	cmp r2, r1
	blt _021D3620
	ldr r2, [r0, #0]
	sub r1, r2, r1
	str r1, [r0, #0]
_021D3620:
	ldr r0, [r4, #8]
	ldr r6, [r5, #0x10]
	bl sub_0201D2B8
	ldr r2, [r4, #0]
	ldr r1, [r5, #4]
	asr r3, r6, #0x1f
	add r1, r2, r1
	str r1, [r4, #0]
	ldr r2, [r4, #4]
	ldr r1, [r5, #8]
	add r1, r2, r1
	str r1, [r4, #4]
	asr r1, r0, #0x1f
	add r2, r6, #0
	bl _ull_mul
	mov r2, #2
	add r7, r0, #0
	add r6, r1, #0
	lsl r2, r2, #0xa
	add r7, r7, r2
	ldr r2, _021D36AC ; =0x00000000
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
	mov r0, #0xe
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021D3678
	ldr r0, [sp]
	ldr r1, [r5, #0x14]
	bl sub_0200D7C0
	b _021D3682
_021D3678:
	ldr r1, [r5, #0x14]
	ldr r0, [sp]
	neg r1, r1
	bl sub_0200D7C0
_021D3682:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r1, [r4, r0]
	ldrh r0, [r5, #0x18]
	cmp r1, r0
	blt _021D36A0
	mov r0, #0
	strh r0, [r4, #0xc]
	mov r0, #0xe
	ldrsb r1, [r4, r0]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #0xe]
_021D36A0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D36A4: .word 0x021D4C90
_021D36A8: .word 0xFFFC0000
_021D36AC: .word 0x00000000
	thumb_func_end ov99_021D35E8

	thumb_func_start ov99_021D36B0
ov99_021D36B0: ; 0x021D36B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021D36CC ; =0x000010EC
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D810
	ldr r0, _021D36D0 ; =0x000010F0
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_0200D810
	pop {r4, pc}
	nop
_021D36CC: .word 0x000010EC
_021D36D0: .word 0x000010F0
	thumb_func_end ov99_021D36B0

	thumb_func_start ov99_021D36D4
ov99_021D36D4: ; 0x021D36D4
	push {r3, r4, r5, lr}
	ldr r2, _021D371C ; =0x000010FC
	add r5, r0, #0
	ldr r3, [r5, r2]
	ldr r2, _021D3720 ; =0x00001C20
	add r4, r1, #0
	cmp r3, r2
	bne _021D36EA
	mov r2, #0
	bl ov99_021D372C
_021D36EA:
	ldr r0, _021D371C ; =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3724 ; =0x00001CD4
	cmp r1, r0
	bne _021D36FE
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov99_021D372C
_021D36FE:
	ldr r0, _021D371C ; =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3728 ; =0x00001D10
	cmp r1, r0
	bne _021D3712
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov99_021D372C
_021D3712:
	add r0, r5, #0
	add r1, r4, #0
	bl ov99_021D37E0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_021D371C: .word 0x000010FC
_021D3720: .word 0x00001C20
_021D3724: .word 0x00001CD4
_021D3728: .word 0x00001D10
	thumb_func_end ov99_021D36D4

	thumb_func_start ov99_021D372C
ov99_021D372C: ; 0x021D372C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0x47
	add r4, r1, #0
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	add r6, r2, #0
	cmp r0, #0
	beq _021D3744
	bl sub_02022974
_021D3744:
	cmp r6, #3
	blo _021D374C
	bl sub_02022974
_021D374C:
	mov r0, #0x47
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r4, r0]
	mov r2, #0
	add r1, r0, #1
	strb r2, [r4, r1]
	add r1, r0, #2
	strb r2, [r4, r1]
	mov r1, #0x1f
	add r0, r0, #3
	strb r1, [r4, r0]
	ldr r0, _021D37C0 ; =0x000010F0
	ldr r1, _021D37C4 ; =0x021D4C84
	lsl r2, r6, #2
	ldr r3, _021D37C8 ; =0x021D4C86
	ldrsh r1, [r1, r2]
	ldrsh r2, [r3, r2]
	mov r3, #0x11
	ldr r0, [r5, r0]
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, _021D37C0 ; =0x000010F0
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	ldr r0, _021D37CC ; =0x000010EC
	mov r1, #0
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	ldr r0, _021D37D0 ; =0x0000011F
	mov r2, #0x3f
	ldrsb r0, [r4, r0]
	add r3, r2, #0
	add r3, #0xdf
	str r0, [sp]
	ldrsb r3, [r4, r3]
	ldr r0, _021D37D4 ; =0x04001050
	mov r1, #0
	bl G2x_SetBlendAlpha_
	ldr r0, _021D37D8 ; =0x0000011E
	mov r2, #0x3f
	ldrsb r0, [r4, r0]
	add r3, r2, #0
	add r3, #0xe0
	str r0, [sp]
	ldrsb r3, [r4, r3]
	ldr r0, _021D37DC ; =0x04000050
	mov r1, #0
	bl G2x_SetBlendAlpha_
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D37C0: .word 0x000010F0
_021D37C4: .word 0x021D4C84
_021D37C8: .word 0x021D4C86
_021D37CC: .word 0x000010EC
_021D37D0: .word 0x0000011F
_021D37D4: .word 0x04001050
_021D37D8: .word 0x0000011E
_021D37DC: .word 0x04000050
	thumb_func_end ov99_021D372C

	thumb_func_start ov99_021D37E0
ov99_021D37E0: ; 0x021D37E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x47
	add r4, r1, #0
	lsl r0, r0, #2
	ldrb r1, [r4, r0]
	cmp r1, #0
	bne _021D37F2
	b _021D390C
_021D37F2:
	add r1, r0, #1
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021D3892
	add r1, r0, #2
	ldrsb r1, [r4, r1]
	add r2, r1, #3
	add r1, r0, #2
	strb r2, [r4, r1]
	add r1, r0, #3
	ldrsb r1, [r4, r1]
	sub r2, r1, #3
	add r1, r0, #3
	strb r2, [r4, r1]
	add r0, r0, #2
	ldrsb r0, [r4, r0]
	cmp r0, #0x1f
	ble _021D381E
	mov r1, #0x1f
	add r0, r1, #0
	add r0, #0xff
	strb r1, [r4, r0]
_021D381E:
	ldr r0, _021D3910 ; =0x0000011F
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bge _021D382A
	mov r1, #0
	strb r1, [r4, r0]
_021D382A:
	ldr r0, _021D3914 ; =0x0000011E
	mov r2, #0xd
	ldrsb r1, [r4, r0]
	add r0, r0, #1
	ldrsb r0, [r4, r0]
	lsl r2, r2, #0xc
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _021D3918 ; =0x04001052
	strh r1, [r0]
	ldr r0, _021D391C ; =0x000010F0
	ldr r1, _021D3920 ; =0xFFFFA000
	ldr r0, [r5, r0]
	bl sub_0200D5E8
	ldr r0, _021D391C ; =0x000010F0
	add r1, sp, #0
	mov r3, #0x11
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r0, sp, #0
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xe0
	ble _021D390C
	ldr r0, _021D391C ; =0x000010F0
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	ldr r0, _021D3924 ; =0x000010EC
	mov r1, #1
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	ldr r0, _021D3924 ; =0x000010EC
	mov r3, #0x11
	add r1, sp, #0
	mov r2, #2
	ldrsh r1, [r1, r2]
	ldr r0, [r5, r0]
	sub r2, #0x22
	lsl r3, r3, #0x10
	bl sub_0200D500
	ldr r0, _021D3928 ; =0x0000011D
	mov r1, #1
	strb r1, [r4, r0]
	pop {r3, r4, r5, pc}
_021D3892:
	add r1, r0, #3
	ldrsb r1, [r4, r1]
	add r2, r1, #3
	add r1, r0, #3
	strb r2, [r4, r1]
	add r1, r0, #2
	ldrsb r1, [r4, r1]
	sub r2, r1, #3
	add r1, r0, #2
	strb r2, [r4, r1]
	add r1, r0, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0x1f
	ble _021D38B4
	mov r1, #0x1f
	add r0, r0, #3
	strb r1, [r4, r0]
_021D38B4:
	ldr r0, _021D3914 ; =0x0000011E
	ldrsb r1, [r4, r0]
	cmp r1, #0
	bge _021D38C0
	mov r1, #0
	strb r1, [r4, r0]
_021D38C0:
	ldr r0, _021D3914 ; =0x0000011E
	mov r2, #0xd
	ldrsb r1, [r4, r0]
	add r0, r0, #1
	ldrsb r0, [r4, r0]
	lsl r2, r2, #0xc
	lsl r0, r0, #8
	orr r1, r0
	ldr r0, _021D392C ; =0x04000052
	strh r1, [r0]
	ldr r0, _021D3924 ; =0x000010EC
	ldr r1, _021D3920 ; =0xFFFFA000
	ldr r0, [r5, r0]
	bl sub_0200D5E8
	ldr r0, _021D3924 ; =0x000010EC
	add r1, sp, #0
	mov r3, #0x11
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl sub_0200D5A0
	add r0, sp, #0
	mov r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0xe0
	ble _021D390C
	ldr r0, _021D3924 ; =0x000010EC
	ldr r0, [r5, r0]
	bl sub_0200D3F4
	ldr r0, _021D3928 ; =0x0000011D
	mov r1, #0
	strb r1, [r4, r0]
	sub r0, r0, #1
	strb r1, [r4, r0]
_021D390C:
	pop {r3, r4, r5, pc}
	nop
_021D3910: .word 0x0000011F
_021D3914: .word 0x0000011E
_021D3918: .word 0x04001052
_021D391C: .word 0x000010F0
_021D3920: .word 0xFFFFA000
_021D3924: .word 0x000010EC
_021D3928: .word 0x0000011D
_021D392C: .word 0x04000052
	thumb_func_end ov99_021D37E0

	thumb_func_start ov99_021D3930
ov99_021D3930: ; 0x021D3930
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	str r1, [sp, #4]
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _021D3948
	cmp r1, #1
	beq _021D3970
	b _021D3A26
_021D3948:
	ldr r2, _021D3A38 ; =0x000010FC
	ldr r3, [r4, r2]
	ldr r2, _021D3A3C ; =0x00001DC4
	cmp r3, r2
	blo _021D3A34
	add r3, r0, #0
	ldr r2, [sp, #4]
	sub r3, #0xc
	ldr r2, [r2, r3]
	cmp r2, #8
	bge _021D3A34
	ldr r2, [sp, #4]
	add r3, r0, #4
	ldr r2, [r2, r3]
	cmp r2, #0
	beq _021D3A26
	add r2, r1, #1
	ldr r1, [sp, #4]
	str r2, [r1, r0]
	b _021D3A26
_021D3970:
	add r2, r0, #0
	ldr r1, [sp, #4]
	sub r2, #0xc
	ldr r5, [r1, r2]
	add r2, r0, #0
	sub r2, #8
	ldr r1, [r1, r2]
	mov r2, #1
	lsl r2, r2, #0xa
	add r6, r1, r2
	add r3, r0, #0
	ldr r1, [sp, #4]
	sub r3, #8
	str r6, [r1, r3]
	add r3, r0, #0
	sub r3, #8
	ldr r3, [r1, r3]
	lsl r1, r2, #2
	cmp r3, r1
	blt _021D39BA
	mov r1, #0x10
	str r1, [sp, #0x10]
	ldr r3, [sp, #0x10]
	ldr r2, [sp, #4]
	mov r1, #0
	add r3, #0xfc
	str r1, [r2, r3]
	ldr r3, [sp, #0x10]
	add r3, #0xf8
	ldr r2, [r2, r3]
	ldr r3, [sp, #0x10]
	add r6, r2, #1
	ldr r2, [sp, #4]
	add r3, #0xf8
	str r6, [r2, r3]
	str r1, [r2, r0]
	b _021D39BE
_021D39BA:
	asr r0, r3, #8
	str r0, [sp, #0x10]
_021D39BE:
	add r6, r5, #1
	cmp r6, #8
	blt _021D39C6
	mov r6, #7
_021D39C6:
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl sub_0200316C
	str r0, [sp, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl sub_0200316C
	str r0, [sp, #8]
	ldr r0, [sp, #4]
	lsl r1, r6, #5
	add r4, r0, r1
	add r1, r0, #0
	add r1, #8
	lsl r0, r5, #5
	add r5, r1, r0
	ldr r0, [sp, #0x10]
	mov r7, #0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x14]
_021D39F2:
	add r0, r7, #0
	add r0, #0x10
	lsl r6, r0, #1
	ldrh r0, [r4, #8]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	add r0, r5, #0
	add r1, r1, r6
	mov r2, #1
	bl sub_0200393C
	ldrh r0, [r4, #8]
	ldr r1, [sp, #8]
	ldr r3, [sp, #0x14]
	str r0, [sp]
	add r0, r5, #0
	add r1, r1, r6
	mov r2, #1
	bl sub_0200393C
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r7, #0x10
	blt _021D39F2
_021D3A26:
	mov r1, #0x46
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r2, r0, #1
	ldr r0, [sp, #4]
	str r2, [r0, r1]
_021D3A34:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D3A38: .word 0x000010FC
_021D3A3C: .word 0x00001DC4
	thumb_func_end ov99_021D3930

	.rodata


	.global Unk_ov99_021D4C84
Unk_ov99_021D4C84: ; 0x021D4C84
	.incbin "incbin/overlay99_rodata.bin", 0x5B8, 0x5C4 - 0x5B8

	.global Unk_ov99_021D4C90
Unk_ov99_021D4C90: ; 0x021D4C90
	.incbin "incbin/overlay99_rodata.bin", 0x5C4, 0x5E0 - 0x5C4

	.global Unk_ov99_021D4CAC
Unk_ov99_021D4CAC: ; 0x021D4CAC
	.incbin "incbin/overlay99_rodata.bin", 0x5E0, 0x38

