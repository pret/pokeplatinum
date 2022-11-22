	.include "macros/function.inc"


	.text

	thumb_func_start ov60_0221F800
ov60_0221F800: ; 0x0221F800
	lsl r1, r0, #0x10
	orr r1, r0
	ldr r0, _0221F80C ; =0x02229E20
	str r1, [r0, #0]
	bx lr
	nop
_0221F80C: .word 0x02229E20
	thumb_func_end ov60_0221F800

	thumb_func_start ov60_0221F810
ov60_0221F810: ; 0x0221F810
	ldr r1, _0221F82C ; =0x02229E20
	mov r0, #0x45
	ldr r2, [r1, #0]
	add r3, r2, #0
	mul r3, r0
	ldr r0, _0221F830 ; =0x00001111
	add r2, r3, r0
	ldr r0, _0221F834 ; =0x7FFFFFFF
	and r0, r2
	str r0, [r1, #0]
	asr r0, r0, #0x10
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	; .align 2, 0
_0221F82C: .word 0x02229E20
_0221F830: .word 0x00001111
_0221F834: .word 0x7FFFFFFF
	thumb_func_end ov60_0221F810

	thumb_func_start ov60_0221F838
ov60_0221F838: ; 0x0221F838
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r0, #0
	mov r0, #0
	add r5, r2, #0
	str r0, [sp, #0x14]
	add r0, r5, #0
	str r0, [sp, #0x10]
	add r0, #8
	add r7, r1, #0
	str r3, [sp]
	str r0, [sp, #0x10]
	bl ov60_0221F944
	ldr r1, [sp, #0x30]
	add r0, r0, #1
	cmp r1, r0
	bge _0221F862
	add sp, #0x18
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0221F862:
	ldr r1, [sp, #0x10]
	mov r0, #0xa
	bl FUN_021D7780
	add r6, r0, #0
	bne _0221F874
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221F874:
	lsr r0, r4, #0x18
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x14]
	add r0, r0, r1
	lsr r1, r4, #0x10
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #8]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r0, r0, r1
	lsr r1, r4, #8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	str r1, [sp, #0xc]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r0, r0, r1
	lsl r1, r4, #0x18
	lsr r4, r1, #0x18
	lsl r1, r4, #0x18
	lsr r1, r1, #0x18
	add r0, r0, r1
	str r0, [sp, #0x14]
	mov r0, #0
	cmp r5, #0
	ble _0221F8C0
_0221F8B2:
	ldrb r2, [r7, r0]
	ldr r1, [sp, #0x14]
	add r0, r0, #1
	add r1, r1, r2
	str r1, [sp, #0x14]
	cmp r0, r5
	blt _0221F8B2
_0221F8C0:
	ldr r0, [sp, #0x14]
	bl ov60_0221F800
	bl ov60_0221F810
	eor r0, r4
	strb r0, [r6, #4]
	bl ov60_0221F810
	ldr r1, [sp, #0xc]
	eor r0, r1
	strb r0, [r6, #5]
	bl ov60_0221F810
	ldr r1, [sp, #8]
	eor r0, r1
	strb r0, [r6, #6]
	bl ov60_0221F810
	ldr r1, [sp, #4]
	mov r4, #0
	eor r0, r1
	strb r0, [r6, #7]
	cmp r5, #0
	ble _0221F904
_0221F8F2:
	bl ov60_0221F810
	ldrb r1, [r7, r4]
	eor r1, r0
	add r0, r6, r4
	add r4, r4, #1
	strb r1, [r0, #8]
	cmp r4, r5
	blt _0221F8F2
_0221F904:
	ldr r1, _0221F940 ; =0x4A3B2C1D
	ldr r0, [sp, #0x14]
	add r5, #8
	eor r1, r0
	lsr r0, r1, #0x18
	strb r0, [r6]
	lsr r0, r1, #0x10
	strb r0, [r6, #1]
	lsr r0, r1, #8
	strb r0, [r6, #2]
	strb r1, [r6, #3]
	ldr r1, [sp]
	add r0, r6, #0
	add r2, r5, #0
	mov r3, #2
	bl FUN_021EB0F0
	ldr r0, [sp, #0x10]
	bl ov60_0221F944
	ldr r1, [sp]
	mov r2, #0
	strb r2, [r1, r0]
	mov r0, #0xa
	add r1, r6, #0
	bl FUN_021D77C4
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0221F940: .word 0x4A3B2C1D
	thumb_func_end ov60_0221F838

	thumb_func_start ov60_0221F944
ov60_0221F944: ; 0x0221F944
	push {r3, r4, r5, lr}
	mov r1, #3
	add r5, r0, #0
	bl sub_020E2178
	cmp r1, #0
	beq _0221F956
	mov r4, #1
	b _0221F958
_0221F956:
	mov r4, #0
_0221F958:
	add r0, r5, #0
	mov r1, #3
	bl sub_020E2178
	add r0, r0, r4
	lsl r0, r0, #2
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov60_0221F944

	thumb_func_start ov60_0221F968
ov60_0221F968: ; 0x0221F968
	add r0, #8
	cmp r0, #7
	bhi _0221F9C2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221F97A: ; jump table
	.short _0221F98A - _0221F97A - 2 ; case 0
	.short _0221F9C2 - _0221F97A - 2 ; case 1
	.short _0221F992 - _0221F97A - 2 ; case 2
	.short _0221F99A - _0221F97A - 2 ; case 3
	.short _0221F9A2 - _0221F97A - 2 ; case 4
	.short _0221F9AA - _0221F97A - 2 ; case 5
	.short _0221F9B2 - _0221F97A - 2 ; case 6
	.short _0221F9BA - _0221F97A - 2 ; case 7
_0221F98A:
	ldr r0, _0221F9CC ; =0x02228E40
	mov r1, #0
	str r1, [r0, #8]
	bx lr
_0221F992:
	ldr r0, _0221F9CC ; =0x02228E40
	mov r1, #1
	str r1, [r0, #8]
	bx lr
_0221F99A:
	ldr r0, _0221F9CC ; =0x02228E40
	mov r1, #2
	str r1, [r0, #8]
	bx lr
_0221F9A2:
	ldr r0, _0221F9CC ; =0x02228E40
	mov r1, #3
	str r1, [r0, #8]
	bx lr
_0221F9AA:
	ldr r0, _0221F9CC ; =0x02228E40
	mov r1, #4
	str r1, [r0, #8]
	bx lr
_0221F9B2:
	ldr r0, _0221F9CC ; =0x02228E40
	mov r1, #5
	str r1, [r0, #8]
	bx lr
_0221F9BA:
	ldr r0, _0221F9CC ; =0x02228E40
	mov r1, #6
	str r1, [r0, #8]
	bx lr
_0221F9C2:
	ldr r0, _0221F9CC ; =0x02228E40
	mov r1, #0
	str r1, [r0, #8]
	bx lr
	nop
_0221F9CC: .word 0x02228E40
	thumb_func_end ov60_0221F968

	thumb_func_start ov60_0221F9D0
ov60_0221F9D0: ; 0x0221F9D0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r1, #0
	mov r3, #0
	ldr r1, _0221FC58 ; =0x02228E40
	mvn r3, r3
	str r3, [r1, #4]
	ldr r3, [r1, #0]
	add r6, r0, #0
	cmp r3, #1
	bne _0221F9E8
	b _0221FC52
_0221F9E8:
	cmp r2, #0
	beq _0221F9EE
	b _0221FBA2
_0221F9EE:
	cmp r3, #4
	beq _0221F9FA
	cmp r3, #6
	beq _0221FAC6
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221F9FA:
	cmp r4, #0x20
	bne _0221FABE
	ldr r5, [r1, #0x28]
	ldr r3, _0221FC5C ; =0x02228C4C
	add r5, #0x14
	add r2, sp, #4
	mov r1, #0x11
_0221FA08:
	ldrb r0, [r3]
	add r3, r3, #1
	strb r0, [r2]
	add r2, r2, #1
	sub r1, r1, #1
	bne _0221FA08
	add r3, sp, #0x14
	ldr r2, _0221FC60 ; =0x02228E74
	add r3, #1
	mov r1, #0x15
_0221FA1C:
	ldrb r0, [r2]
	add r2, r2, #1
	strb r0, [r3]
	add r3, r3, #1
	sub r1, r1, #1
	bne _0221FA1C
	add r0, sp, #0x14
	add r0, #1
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020D8CC4
	add r0, sp, #0x14
	add r0, #1
	bl sub_020D8B60
	add r1, sp, #0x14
	add r2, r0, #0
	add r0, r5, #0
	add r1, #1
	bl sub_020D3068
	ldr r0, _0221FC58 ; =0x02228E40
	ldr r1, _0221FC64 ; =0x02228E8C
	ldr r0, [r0, #0x24]
	bl sub_020D8C94
	mov r2, #0
	ldr r4, _0221FC58 ; =0x02228E40
	add r3, r2, #0
	add r1, sp, #4
	mov r7, #0xf
_0221FA5C:
	ldrb r0, [r5, r2]
	asr r0, r0, #4
	ldrsb r6, [r1, r0]
	ldr r0, [r4, #0x28]
	strb r6, [r0, r3]
	ldrb r0, [r5, r2]
	ldr r6, [r4, #0x28]
	add r2, r2, #1
	and r0, r7
	ldrsb r0, [r1, r0]
	add r6, r6, r3
	add r3, r3, #2
	strb r0, [r6, #1]
	cmp r2, #0x14
	blt _0221FA5C
	ldr r0, _0221FC58 ; =0x02228E40
	mov r2, #0
	ldr r1, [r0, #0x28]
	add r1, #0x28
	strb r2, [r1]
	ldr r0, [r0, #0x24]
	ldr r1, _0221FC68 ; =0x02228E94
	bl sub_020D8C94
	ldr r3, _0221FC58 ; =0x02228E40
	ldr r0, [r3, #0x30]
	str r0, [sp]
	ldr r0, [r3, #0x10]
	ldr r1, [r3, #0x14]
	ldr r2, [r3, #0x18]
	ldr r3, [r3, #0x2c]
	bl ov60_0221F838
	cmp r0, #0
	beq _0221FAB4
	cmp r0, #1
	beq _0221FAAA
	cmp r0, #2
	bne _0221FAB4
_0221FAAA:
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FAB4:
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #5
	str r1, [r0, #0]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FABE:
	mov r0, #1
	str r0, [r1, #0]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FAC6:
	cmp r4, #0x16
	bne _0221FB70
	ldr r1, _0221FC6C ; =0x02228E9C
	mov r2, #0x16
	bl sub_020D8E28
	cmp r0, #0
	bne _0221FAE4
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0x1a
	str r1, [r0, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FAE4:
	ldr r1, _0221FC70 ; =0x02228EB4
	add r0, r6, #0
	mov r2, #0x16
	bl sub_020D8E28
	cmp r0, #0
	bne _0221FB00
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0x1b
	str r1, [r0, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FB00:
	ldr r1, _0221FC74 ; =0x02228ECC
	add r0, r6, #0
	mov r2, #0x16
	bl sub_020D8E28
	cmp r0, #0
	bne _0221FB1C
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0x1c
	str r1, [r0, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FB1C:
	ldr r1, _0221FC78 ; =0x02228EE4
	add r0, r6, #0
	mov r2, #0x16
	bl sub_020D8E28
	cmp r0, #0
	bne _0221FB38
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0x1d
	str r1, [r0, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FB38:
	ldr r1, _0221FC7C ; =0x02228EFC
	add r0, r6, #0
	mov r2, #0x16
	bl sub_020D8E28
	cmp r0, #0
	bne _0221FB54
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0x1e
	str r1, [r0, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FB54:
	ldr r1, _0221FC80 ; =0x02228F14
	add r0, r6, #0
	mov r2, #0x16
	bl sub_020D8E28
	cmp r0, #0
	bne _0221FB70
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0x1f
	str r1, [r0, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FB70:
	ldr r0, _0221FC58 ; =0x02228E40
	ldr r2, [r0, #0x20]
	cmp r4, r2
	ldr r0, [r0, #0x1c]
	bgt _0221FB8A
	add r1, r6, #0
	add r2, r4, #0
	bl sub_020D50B8
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #7
	str r1, [r0, #0]
	b _0221FB9A
_0221FB8A:
	add r1, r6, #0
	bl sub_020D50B8
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	mov r1, #0x20
	str r1, [r0, #8]
_0221FB9A:
	ldr r0, _0221FC58 ; =0x02228E40
	add sp, #0x4c
	str r4, [r0, #0xc]
	pop {r4, r5, r6, r7, pc}
_0221FBA2:
	mov r0, #1
	str r0, [r1, #0]
	cmp r2, #0x13
	bhi _0221FC52
	add r0, r2, r2
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221FBB6: ; jump table
	.short _0221FC52 - _0221FBB6 - 2 ; case 0
	.short _0221FBDE - _0221FBB6 - 2 ; case 1
	.short _0221FBE6 - _0221FBB6 - 2 ; case 2
	.short _0221FBEE - _0221FBB6 - 2 ; case 3
	.short _0221FBF6 - _0221FBB6 - 2 ; case 4
	.short _0221FBFE - _0221FBB6 - 2 ; case 5
	.short _0221FC06 - _0221FBB6 - 2 ; case 6
	.short _0221FC0E - _0221FBB6 - 2 ; case 7
	.short _0221FC16 - _0221FBB6 - 2 ; case 8
	.short _0221FC1E - _0221FBB6 - 2 ; case 9
	.short _0221FC26 - _0221FBB6 - 2 ; case 10
	.short _0221FC2E - _0221FBB6 - 2 ; case 11
	.short _0221FC36 - _0221FBB6 - 2 ; case 12
	.short _0221FC52 - _0221FBB6 - 2 ; case 13
	.short _0221FC52 - _0221FBB6 - 2 ; case 14
	.short _0221FC3E - _0221FBB6 - 2 ; case 15
	.short _0221FC46 - _0221FBB6 - 2 ; case 16
	.short _0221FC52 - _0221FBB6 - 2 ; case 17
	.short _0221FC52 - _0221FBB6 - 2 ; case 18
	.short _0221FC4E - _0221FBB6 - 2 ; case 19
_0221FBDE:
	mov r0, #8
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FBE6:
	mov r0, #9
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FBEE:
	mov r0, #0xa
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FBF6:
	mov r0, #0xb
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FBFE:
	mov r0, #0xc
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC06:
	mov r0, #0xd
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC0E:
	mov r0, #0xe
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC16:
	mov r0, #0xf
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC1E:
	mov r0, #0x10
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC26:
	mov r0, #0x11
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC2E:
	mov r0, #0x12
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC36:
	mov r0, #0x13
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC3E:
	mov r0, #0x16
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC46:
	mov r0, #0x17
	str r0, [r1, #8]
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
_0221FC4E:
	mov r0, #0x19
	str r0, [r1, #8]
_0221FC52:
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	nop
_0221FC58: .word 0x02228E40
_0221FC5C: .word 0x02228C4C
_0221FC60: .word 0x02228E74
_0221FC64: .word 0x02228E8C
_0221FC68: .word 0x02228E94
_0221FC6C: .word 0x02228E9C
_0221FC70: .word 0x02228EB4
_0221FC74: .word 0x02228ECC
_0221FC78: .word 0x02228EE4
_0221FC7C: .word 0x02228EFC
_0221FC80: .word 0x02228F14
	thumb_func_end ov60_0221F9D0

	thumb_func_start ov60_0221FC84
ov60_0221FC84: ; 0x0221FC84
	push {r3, lr}
	ldr r0, _0221FCA4 ; =0x02228E40
	mov r1, #2
	str r1, [r0, #0]
	sub r1, r1, #3
	str r1, [r0, #4]
	mov r0, #0
	bl FUN_021E558C
	cmp r0, #0
	bne _0221FCA0
	ldr r0, _0221FCA4 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
_0221FCA0:
	pop {r3, pc}
	nop
_0221FCA4: .word 0x02228E40
	thumb_func_end ov60_0221FC84

	thumb_func_start ov60_0221FCA8
ov60_0221FCA8: ; 0x0221FCA8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r1, _0221FD38 ; =0x02228E40
	add r4, r3, #0
	ldr r3, [r1, #0]
	add r7, r0, #0
	cmp r3, #2
	beq _0221FCBC
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FCBC:
	str r5, [r1, #0x10]
	str r2, [r1, #0x14]
	str r4, [r1, #0x18]
	ldr r2, [sp, #0x18]
	add r4, #8
	str r2, [r1, #0x1c]
	ldr r2, [sp, #0x1c]
	str r2, [r1, #0x20]
	bl sub_020D8B60
	add r6, r0, #0
	add r0, r4, #0
	bl ov60_0221F944
	add r1, r0, #0
	add r6, #0x45
	mov r0, #0xa
	add r1, r6, r1
	bl FUN_021D7780
	ldr r1, _0221FD38 ; =0x02228E40
	cmp r0, #0
	str r0, [r1, #0x24]
	bne _0221FCF0
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0221FCF0:
	ldr r1, _0221FD3C ; =0x02228F2C
	add r2, r7, #0
	add r3, r5, #0
	bl sub_020D7510
	ldr r0, _0221FD38 ; =0x02228E40
	ldr r6, [r0, #0x24]
	add r0, r6, #0
	bl sub_020D8B60
	add r5, r0, #0
	ldr r0, _0221FD40 ; =0x02228E8C
	bl sub_020D8B60
	add r1, r6, r5
	add r1, r1, r0
	ldr r0, _0221FD38 ; =0x02228E40
	str r1, [r0, #0x28]
	ldr r0, _0221FD44 ; =0x02228E94
	bl sub_020D8B60
	ldr r1, _0221FD38 ; =0x02228E40
	ldr r2, [r1, #0x28]
	add r2, #0x28
	add r0, r2, r0
	str r0, [r1, #0x2c]
	add r0, r4, #0
	bl ov60_0221F944
	add r1, r0, #1
	ldr r0, _0221FD38 ; =0x02228E40
	str r1, [r0, #0x30]
	mov r1, #3
	str r1, [r0, #0]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0221FD38: .word 0x02228E40
_0221FD3C: .word 0x02228F2C
_0221FD40: .word 0x02228E8C
_0221FD44: .word 0x02228E94
	thumb_func_end ov60_0221FCA8

	thumb_func_start ov60_0221FD48
ov60_0221FD48: ; 0x0221FD48
	push {r3, lr}
	ldr r1, _0221FDE0 ; =0x02228E40
	ldr r0, [r1, #0]
	cmp r0, #7
	bhi _0221FDD8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221FD5E: ; jump table
	.short _0221FDD8 - _0221FD5E - 2 ; case 0
	.short _0221FDD8 - _0221FD5E - 2 ; case 1
	.short _0221FDD8 - _0221FD5E - 2 ; case 2
	.short _0221FD6E - _0221FD5E - 2 ; case 3
	.short _0221FD94 - _0221FD5E - 2 ; case 4
	.short _0221FDA4 - _0221FD5E - 2 ; case 5
	.short _0221FDCA - _0221FD5E - 2 ; case 6
	.short _0221FDD8 - _0221FD5E - 2 ; case 7
_0221FD6E:
	ldr r0, [r1, #0x24]
	ldr r1, _0221FDE4 ; =ov60_0221F9D0
	ldr r2, _0221FDE8 ; =0x02228E40
	bl FUN_021E56F4
	ldr r1, _0221FDE0 ; =0x02228E40
	str r0, [r1, #4]
	bl ov60_0221F968
	ldr r0, _0221FDE0 ; =0x02228E40
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _0221FD8E
	mov r1, #4
	str r1, [r0, #0]
	b _0221FDD8
_0221FD8E:
	mov r1, #1
	str r1, [r0, #0]
	b _0221FDD8
_0221FD94:
	bl FUN_021E55F0
	cmp r0, #0
	bne _0221FDD8
	ldr r0, _0221FDE0 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	b _0221FDD8
_0221FDA4:
	ldr r0, [r1, #0x24]
	ldr r1, _0221FDE4 ; =ov60_0221F9D0
	ldr r2, _0221FDE8 ; =0x02228E40
	bl FUN_021E56F4
	ldr r1, _0221FDE0 ; =0x02228E40
	str r0, [r1, #4]
	bl ov60_0221F968
	ldr r0, _0221FDE0 ; =0x02228E40
	ldr r1, [r0, #4]
	cmp r1, #0
	blt _0221FDC4
	mov r1, #6
	str r1, [r0, #0]
	b _0221FDD8
_0221FDC4:
	mov r1, #1
	str r1, [r0, #0]
	b _0221FDD8
_0221FDCA:
	bl FUN_021E55F0
	cmp r0, #0
	bne _0221FDD8
	ldr r0, _0221FDE0 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
_0221FDD8:
	ldr r0, _0221FDE0 ; =0x02228E40
	ldr r0, [r0, #0]
	pop {r3, pc}
	nop
_0221FDE0: .word 0x02228E40
_0221FDE4: .word ov60_0221F9D0
_0221FDE8: .word 0x02228E40
	thumb_func_end ov60_0221FD48

	thumb_func_start ov60_0221FDEC
ov60_0221FDEC: ; 0x0221FDEC
	push {r3, lr}
	ldr r0, _0221FE10 ; =0x02228E40
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _0221FE04
	mov r0, #0xa
	mov r2, #0
	bl FUN_021D77C4
	ldr r0, _0221FE10 ; =0x02228E40
	mov r1, #0
	str r1, [r0, #0x24]
_0221FE04:
	bl FUN_021E55B0
	ldr r0, _0221FE10 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0221FE10: .word 0x02228E40
	thumb_func_end ov60_0221FDEC

	thumb_func_start ov60_0221FE14
ov60_0221FE14: ; 0x0221FE14
	ldr r0, _0221FE1C ; =0x02228E40
	ldr r0, [r0, #8]
	bx lr
	nop
_0221FE1C: .word 0x02228E40
	thumb_func_end ov60_0221FE14

	thumb_func_start ov60_0221FE20
ov60_0221FE20: ; 0x0221FE20
	ldr r0, _0221FE28 ; =0x02228E40
	ldr r0, [r0, #0xc]
	bx lr
	nop
_0221FE28: .word 0x02228E40
	thumb_func_end ov60_0221FE20

	arm_func_start ov60_0221FE2C
ov60_0221FE2C: ; 0x0221FE2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bne _0221FE50
	ldr r0, _0221FEA8 ; =0x02228FD4
	ldr r1, _0221FEAC ; =0x02228FDC
	ldr r2, _0221FEB0 ; =0x02228F68
	mov r3, #0x20
	bl sub_020D407C
_0221FE50:
	cmp r4, #0
	bgt _0221FE6C
	ldr r0, _0221FEB4 ; =0x02228FEC
	ldr r1, _0221FEAC ; =0x02228FDC
	ldr r2, _0221FEB0 ; =0x02228F68
	mov r3, #0x21
	bl sub_020D407C
_0221FE6C:
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	movle r0, #0
	ldmia sp!,le {r3, r4, r5, pc}
	ldmib r5, {r0, r1}
	add r4, r1, r4
	mov r1, r4
	bl FUN_021D7894
	cmp r0, #0
	moveq r0, #0
	stmibne r5, {r0, r4}
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0221FEA8: .word 0x02228FD4
_0221FEAC: .word 0x02228FDC
_0221FEB0: .word 0x02228F68
_0221FEB4: .word 0x02228FEC
	arm_func_end ov60_0221FE2C

	arm_func_start ov60_0221FEB8
ov60_0221FEB8: ; 0x0221FEB8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _0221FEE4
	ldr r0, _0221FFBC ; =0x02229000
	ldr r1, _0221FFC0 ; =0x02228FDC
	ldr r2, _0221FFC4 ; =0x02228F48
	mov r3, #0x43
	bl sub_020D407C
_0221FEE4:
	cmp r6, #0
	bne _0221FF00
	ldr r0, _0221FFC8 ; =0x02228FD4
	ldr r1, _0221FFC0 ; =0x02228FDC
	ldr r2, _0221FFC4 ; =0x02228F48
	mov r3, #0x44
	bl sub_020D407C
_0221FF00:
	cmp r5, #0
	bgt _0221FF1C
	ldr r0, _0221FFCC ; =0x0222900C
	ldr r1, _0221FFC0 ; =0x02228FDC
	ldr r2, _0221FFC4 ; =0x02228F48
	mov r3, #0x45
	bl sub_020D407C
_0221FF1C:
	cmp r4, #0
	bgt _0221FF38
	ldr r0, _0221FFD0 ; =0x02228FEC
	ldr r1, _0221FFC0 ; =0x02228FDC
	ldr r2, _0221FFC4 ; =0x02228F48
	mov r3, #0x46
	bl sub_020D407C
_0221FF38:
	cmp r7, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	movle r0, #0
	ldmia sp!,le {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	movle r0, #0
	ldmia sp!,le {r3, r4, r5, r6, r7, pc}
	str r7, [r6, #0]
	mov r2, #0
	str r2, [r6, #4]
	str r2, [r6, #8]
	str r2, [r6, #0xc]
	str r2, [r6, #0x10]
	str r4, [r6, #0x14]
	str r2, [r6, #0x18]
	str r2, [r6, #0x1c]
	mov r0, r6
	mov r1, r5
	str r2, [r6, #0x20]
	bl ov60_0221FE2C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	mov r1, #0
	strb r1, [r0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0221FFBC: .word 0x02229000
_0221FFC0: .word 0x02228FDC
_0221FFC4: .word 0x02228F48
_0221FFC8: .word 0x02228FD4
_0221FFCC: .word 0x0222900C
_0221FFD0: .word 0x02228FEC
	arm_func_end ov60_0221FEB8

	arm_func_start ov60_0221FFD4
ov60_0221FFD4: ; 0x0221FFD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _02220000
	ldr r0, _022200B8 ; =0x02229000
	ldr r1, _022200BC ; =0x02228FDC
	ldr r2, _022200C0 ; =0x02228F78
	mov r3, #0x74
	bl sub_020D407C
_02220000:
	cmp r6, #0
	bne _0222001C
	ldr r0, _022200C4 ; =0x02228FD4
	ldr r1, _022200BC ; =0x02228FDC
	ldr r2, _022200C0 ; =0x02228F78
	mov r3, #0x75
	bl sub_020D407C
_0222001C:
	cmp r5, #0
	bne _02220038
	ldr r0, _022200C8 ; =0x0222901C
	ldr r1, _022200BC ; =0x02228FDC
	ldr r2, _022200C0 ; =0x02228F78
	mov r3, #0x76
	bl sub_020D407C
_02220038:
	cmp r4, #0
	bgt _02220054
	ldr r0, _022200CC ; =0x02229028
	ldr r1, _022200BC ; =0x02228FDC
	ldr r2, _022200C0 ; =0x02228F78
	mov r3, #0x77
	bl sub_020D407C
_02220054:
	cmp r7, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	movle r0, #0
	ldmia sp!,le {r3, r4, r5, r6, r7, pc}
	str r7, [r6, #0]
	str r5, [r6, #4]
	str r4, [r6, #8]
	mov r2, #0
	str r2, [r6, #0xc]
	str r2, [r6, #0x14]
	mov r0, #1
	str r0, [r6, #0x18]
	str r0, [r6, #0x1c]
	str r2, [r6, #0x20]
	ldr r1, [r6, #4]
	strb r2, [r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022200B8: .word 0x02229000
_022200BC: .word 0x02228FDC
_022200C0: .word 0x02228F78
_022200C4: .word 0x02228FD4
_022200C8: .word 0x0222901C
_022200CC: .word 0x02229028
	arm_func_end ov60_0221FFD4

	arm_func_start ov60_022200D0
ov60_022200D0: ; 0x022200D0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bne _022200F0
	ldr r0, _02220124 ; =0x02228FD4
	ldr r1, _02220128 ; =0x02228FDC
	ldr r2, _0222012C ; =0x02228F38
	mov r3, #0x9b
	bl sub_020D407C
_022200F0:
	cmp r4, #0
	ldrne r0, [r4, #4]
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x1c]
	cmp r1, #0
	bne _02220110
	bl FUN_021D78B0
_02220110:
	mov r0, r4
	mov r1, #0
	mov r2, #0x24
	bl sub_020D5124
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02220124: .word 0x02228FD4
_02220128: .word 0x02228FDC
_0222012C: .word 0x02228F38
	arm_func_end ov60_022200D0

	arm_func_start ov60_02220130
ov60_02220130: ; 0x02220130
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov sb, r0
	mov r8, r1
	ldr r6, [sb]
	bne _02220160
	ldr r0, _022203D4 ; =0x02228FD4
	ldr r1, _022203D8 ; =0x02228FDC
	ldr r2, _022203DC ; =0x02228FA4
	mov r3, #0xb7
	bl sub_020D407C
_02220160:
	cmp r8, #0
	bne _0222017C
	ldr r0, _022203E0 ; =0x02229034
	ldr r1, _022203D8 ; =0x02228FDC
	ldr r2, _022203DC ; =0x02228FA4
	mov r3, #0xb8
	bl sub_020D407C
_0222017C:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bge _0222019C
	ldr r0, _022203E4 ; =0x0222903C
	ldr r1, _022203D8 ; =0x02228FDC
	ldr r2, _022203DC ; =0x02228FA4
	mov r3, #0xb9
	bl sub_020D407C
_0222019C:
	cmp sb, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	addeq sp, sp, #0x10
	bxeq lr
	cmp r8, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r0, [sp, #0x30]
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, #0
	ldmia sp!,lt {r4, r5, r6, r7, r8, sb, lr}
	addlt sp, sp, #0x10
	bxlt lr
	bne _022201F8
	mov r0, r8
	bl sub_020D8B60
	str r0, [sp, #0x30]
_022201F8:
	ldr r0, [sb, #0x20]
	cmp r0, #1
	bne _02220300
	ldr r0, [r6, #0x168]
	cmp r0, #0
	bne _02220224
	ldr r0, _022203E8 ; =0x0222904C
	ldr r1, _022203D8 ; =0x02228FDC
	ldr r2, _022203DC ; =0x02228FA4
	mov r3, #0xce
	bl sub_020D407C
_02220224:
	add r5, sp, #8
	add r4, sp, #0x30
_0222022C:
	ldr r2, [sb, #8]
	ldr r1, [sb, #0xc]
	mov r0, r6
	sub r1, r2, r1
	str r1, [sp, #8]
	ldr r3, [sb, #4]
	ldr r1, [sb, #0xc]
	mov r2, r8
	add r1, r3, r1
	stmia sp, {r1, r5}
	ldr r7, [r6, #0x17c]
	mov r3, r4
	add r1, r6, #0x164
	blx r7
	mov r7, r0
	cmp r7, #2
	bne _022202E4
	ldr r0, [sb, #0x18]
	cmp r0, #0
	beq _022202A8
	ldr r0, [sb]
	mov r1, #1
	str r1, [r0, #0xfc]
	ldr r0, [sb]
	mov r1, #2
	str r1, [r0, #0x38]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_022202A8:
	ldr r1, [sb, #0x14]
	mov r0, sb
	bl ov60_0221FE2C
	cmp r0, #0
	beq _022202F4
	ldr r0, [sb]
	mov r2, #1
	str r2, [r0, #0xfc]
	ldr r1, [sb]
	add sp, sp, #0xc
	str r2, [r1, #0x38]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_022202E4:
	ldr r1, [sb, #0xc]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sb, #0xc]
_022202F4:
	cmp r7, #2
	beq _0222022C
	b _022203C0
_02220300:
	ldr r2, [sb, #0xc]
	ldr r1, [sp, #0x30]
	ldr r0, [sb, #8]
	add r4, r2, r1
	cmp r4, r0
	blt _02220398
_02220318:
	ldr r0, [sb, #0x18]
	cmp r0, #0
	beq _02220350
	ldr r0, [sb]
	mov r1, #1
	str r1, [r0, #0xfc]
	ldr r0, [sb]
	mov r1, #2
	str r1, [r0, #0x38]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_02220350:
	ldr r1, [sb, #0x14]
	mov r0, sb
	bl ov60_0221FE2C
	cmp r0, #0
	bne _0222038C
	ldr r0, [sb]
	mov r2, #1
	str r2, [r0, #0xfc]
	ldr r1, [sb]
	add sp, sp, #0xc
	str r2, [r1, #0x38]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
_0222038C:
	ldr r0, [sb, #8]
	cmp r4, r0
	bge _02220318
_02220398:
	ldr r3, [sb, #4]
	ldr r0, [sb, #0xc]
	ldr r2, [sp, #0x30]
	mov r1, r8
	add r0, r3, r0
	bl sub_020D50B8
	str r4, [sb, #0xc]
	ldr r0, [sb, #4]
	mov r1, #0
	strb r1, [r0, r4]
_022203C0:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_022203D4: .word 0x02228FD4
_022203D8: .word 0x02228FDC
_022203DC: .word 0x02228FA4
_022203E0: .word 0x02229034
_022203E4: .word 0x0222903C
_022203E8: .word 0x0222904C
	arm_func_end ov60_02220130

	arm_func_start ov60_022203EC
ov60_022203EC: ; 0x022203EC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	mov r2, #0
	mov r5, r0
	bl ov60_02220130
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _02220464 ; =0x02229088
	mov r0, r5
	mov r2, #2
	bl ov60_02220130
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl ov60_02220130
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _02220468 ; =0x0222908C
	mov r0, r5
	mov r2, #2
	bl ov60_02220130
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02220464: .word 0x02229088
_02220468: .word 0x0222908C
	arm_func_end ov60_022203EC

	arm_func_start ov60_0222046C
ov60_0222046C: ; 0x0222046C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	strb r1, [sp]
	bne _02220494
	ldr r0, _022204BC ; =0x02228FD4
	ldr r1, _022204C0 ; =0x02228FDC
	ldr r2, _022204C4 ; =0x02228F8C
	ldr r3, _022204C8 ; =0x00000131
	bl sub_020D407C
_02220494:
	cmp r4, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r1, sp, #0
	mov r0, r4
	mov r2, #1
	bl ov60_02220130
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_022204BC: .word 0x02228FD4
_022204C0: .word 0x02228FDC
_022204C4: .word 0x02228F8C
_022204C8: .word 0x00000131
	arm_func_end ov60_0222046C

	arm_func_start ov60_022204CC
ov60_022204CC: ; 0x022204CC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r2, r1
	mov r4, r0
	ldr r1, _02220500 ; =0x02229090
	add r0, sp, #0
	bl sub_020D7510
	add r1, sp, #0
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02220500: .word 0x02229090
	arm_func_end ov60_022204CC

	arm_func_start ov60_02220504
ov60_02220504: ; 0x02220504
	stmfd sp!, {r4, lr}
	mov r4, r0
	bne _02220524
	ldr r0, _0222053C ; =0x02228FD4
	ldr r1, _02220540 ; =0x02228FDC
	ldr r2, _02220544 ; =0x02228F58
	mov r3, #0x16c
	bl sub_020D407C
_02220524:
	mov r1, #0
	str r1, [r4, #0xc]
	str r1, [r4, #0x10]
	ldr r0, [r4, #4]
	strb r1, [r0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222053C: .word 0x02228FD4
_02220540: .word 0x02228FDC
_02220544: .word 0x02228F58
	arm_func_end ov60_02220504

	arm_func_start ov60_02220548
ov60_02220548: ; 0x02220548
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, #0
	add r5, sp, #4
	add r4, sp, #0
	mvn r8, #0
_02220564:
	ldr r0, [r7, #0x48]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl FUN_021EAA74
	cmp r0, r8
	beq _0222058C
	ldr r0, [sp]
	cmp r0, #0
	beq _022205B4
_0222058C:
	mov r0, #1
	str r0, [r7, #0xfc]
	mov r0, #5
	str r0, [r7, #0x38]
	ldr r0, [r7, #0x48]
	bl FUN_021EAF38
	str r0, [r7, #0x4c]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022205B4:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, [r7, #0x60]
	ldr r1, [r7, #0x54]
	ldr r2, [r7, #0x5c]
	mov r0, r7
	add r1, r1, r3
	sub r2, r2, r3
	bl ov60_02220B90
	cmp r0, r8
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, [r7, #0x60]
	add r1, r1, r0
	str r1, [r7, #0x60]
	ldr r0, [r7, #0x5c]
	cmp r1, r0
	blt _02220564
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_02220548

	arm_func_start ov60_02220618
ov60_02220618: ; 0x02220618
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bne _02220640
	ldr r0, _022206C0 ; =0x02229094
	ldr r1, _022206C4 ; =0x02228FDC
	ldr r2, _022206C8 ; =0x02228FBC
	ldr r3, _022206CC ; =0x000001B7
	bl sub_020D407C
_02220640:
	cmp r5, #0
	bne _0222065C
	ldr r0, _022206D0 ; =0x022290A8
	ldr r1, _022206C4 ; =0x02228FDC
	ldr r2, _022206C8 ; =0x02228FBC
	mov r3, #0x1b8
	bl sub_020D407C
_0222065C:
	ldr r4, [r5, #0]
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r7, #0x10]
	ldr r0, [r7, #0xc]
	sub r0, r0, r3
	cmp r0, #0
	movle r0, #0
	ldmia sp!,le {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #4]
	cmp r4, r0
	movge r4, r0
	mov r0, r6
	mov r2, r4
	add r1, r1, r3
	bl sub_020D50B8
	mov r0, #0
	strb r0, [r6, r4]
	str r4, [r5, #0]
	ldr r1, [r7, #0x10]
	mov r0, #1
	add r1, r1, r4
	str r1, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022206C0: .word 0x02229094
_022206C4: .word 0x02228FDC
_022206C8: .word 0x02228FBC
_022206CC: .word 0x000001B7
_022206D0: .word 0x022290A8
	arm_func_end ov60_02220618

	arm_func_start ov60_022206D4
ov60_022206D4: ; 0x022206D4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bne _022206F4
	ldr r0, _02220748 ; =0x022290FC
	ldr r1, _0222074C ; =0x02229108
	ldr r2, _02220750 ; =0x022290E0
	mov r3, #0x1b
	bl sub_020D407C
_022206F4:
	ldr ip, [r5, #0x40]
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #0
	movne r4, #0
	movne r3, r4
	ldreq r4, [r5, #0xc0]
	ldreq r3, [r5, #0x100]
	ldr r0, [r5, #0x44]
	mov r2, r4
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r5, #0x38]
	bl ip
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	moveq r0, #1
	streq r0, [r5, #0xd8]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02220748: .word 0x022290FC
_0222074C: .word 0x02229108
_02220750: .word 0x022290E0
	arm_func_end ov60_022206D4

	arm_func_start ov60_02220754
ov60_02220754: ; 0x02220754
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bne _02220780
	ldr r0, _022207C4 ; =0x022290FC
	ldr r1, _022207C8 ; =0x02229108
	ldr r2, _022207CC ; =0x022290C8
	mov r3, #0x45
	bl sub_020D407C
_02220780:
	ldr ip, [r6, #0x3c]
	cmp ip, #0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6, #0x100]
	mov r2, r5
	str r0, [sp]
	ldr r0, [r6, #0x104]
	mov r3, r4
	str r0, [sp, #4]
	ldr r0, [r6, #0x44]
	str r0, [sp, #8]
	ldr r0, [r6, #4]
	ldr r1, [r6, #0x10]
	bl ip
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_022207C4: .word 0x022290FC
_022207C8: .word 0x02229108
_022207CC: .word 0x022290C8
	arm_func_end ov60_02220754

	arm_func_start ov60_022207D0
ov60_022207D0: ; 0x022207D0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	bne _022207F4
	ldr r0, _02220838 ; =0x022290FC
	ldr r1, _0222083C ; =0x02229108
	ldr r2, _02220840 ; =0x022290B4
	mov r3, #0x5e
	bl sub_020D407C
_022207F4:
	ldr r0, [r4, #0x150]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x140]
	bl FUN_021E9BBC
	str r0, [sp]
	ldr r0, [r4, #0x44]
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	ldr r1, [r4, #0x148]
	ldr r2, [r4, #0x14c]
	ldr r3, [r4, #0x144]
	ldr ip, [r4, #0x150]
	bl ip
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02220838: .word 0x022290FC
_0222083C: .word 0x02229108
_02220840: .word 0x022290B4
	arm_func_end ov60_022207D0

	arm_func_start ov60_02220844
ov60_02220844: ; 0x02220844
	bx lr
	arm_func_end ov60_02220844

	arm_func_start ov60_02220848
ov60_02220848: ; 0x02220848
	bx lr
	arm_func_end ov60_02220848

	arm_func_start ov60_0222084C
ov60_0222084C: ; 0x0222084C
	bx lr
	arm_func_end ov60_0222084C

	arm_func_start ov60_02220850
ov60_02220850: ; 0x02220850
	bx lr
	arm_func_end ov60_02220850

	arm_func_start ov60_02220854
ov60_02220854: ; 0x02220854
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r1, #0
	mov r7, r0
	str r1, [sp, #0xc]
	str r1, [sp, #8]
	add r5, sp, #8
	add r4, sp, #0xc
_02220874:
	ldr ip, [r7, #0xa8]
	ldr r0, [r7, #0xa4]
	ldr r2, [r7, #0x9c]
	sub r0, r0, ip
	str r0, [sp, #0xc]
	ldr r3, [r7, #0x80]
	ldr r0, [r7, #0x7c]
	ldr r1, [r7, #0x78]
	sub r0, r0, r3
	str r0, [sp, #8]
	add r0, r1, r3
	stmia sp, {r0, r5}
	ldr r6, [r7, #0x180]
	mov r0, r7
	mov r3, r4
	add r1, r7, #0x164
	add r2, r2, ip
	blx r6
	mov r6, r0
	cmp r6, #2
	bne _022208E4
	ldr r1, [r7, #0x88]
	add r0, r7, #0x74
	bl ov60_0221FE2C
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_022208E4:
	cmp r6, #2
	ldreq r0, [sp, #8]
	cmpeq r0, #0
	beq _02220874
	ldr r1, [r7, #0xa8]
	ldr r0, [sp, #0xc]
	add r0, r1, r0
	str r0, [r7, #0xa8]
	ldr r1, [r7, #0x80]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [r7, #0x80]
	ldr r1, [r7, #0xa8]
	cmp r1, #0xff
	ble _02220954
	ldr r0, [r7, #0xa4]
	sub r4, r0, r1
	bne _02220938
	add r0, r7, #0x98
	bl ov60_02220504
	b _02220954
_02220938:
	ldr r0, [r7, #0x9c]
	mov r2, r4
	add r1, r0, r1
	bl sub_020D50D8
	mov r0, #0
	str r0, [r7, #0xa8]
	str r4, [r7, #0xa4]
_02220954:
	cmp r6, #3
	addne sp, sp, #0x10
	mov r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	str r0, [r7, #0xfc]
	mov r0, #0x11
	str r0, [r7, #0x38]
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov60_02220854

	arm_func_start ov60_0222097C
ov60_0222097C: ; 0x0222097C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r2
	ldr r2, [r5, #0]
	ldr r0, [r7, #0x134]
	mov r6, r1
	cmp r0, #0
	sub r4, r2, #1
	beq _022209D0
	bl FUN_021EA840
	ldr r1, _02220B8C ; =0x0222911C
	ldr r3, [r7, #0x138]
	ldr r2, [r1, #0]
	add r2, r3, r2
	cmp r0, r2
	movlo r0, #1
	ldmia sp!,lo {r3, r4, r5, r6, r7, pc}
	str r0, [r7, #0x138]
	ldr r0, [r1, #4]
	cmp r4, r0
	movge r4, r0
_022209D0:
	ldr r1, [r7, #0x84]
	ldr r0, [r7, #0x80]
	cmp r1, r0
	bge _02220A18
	mov r1, r6
	mov r2, r5
	add r0, r7, #0x74
	bl ov60_02220618
	ldr r1, [r7, #0x84]
	ldr r0, [r7, #0x80]
	cmp r1, r0
	bne _02220A10
	ldr r0, [r7, #0xf8]
	str r0, [r7, #0x80]
	ldr r0, [r7, #0xf8]
	str r0, [r7, #0x84]
_02220A10:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02220A18:
	ldr r0, [r7, #0x48]
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl FUN_021EAE04
	mov r2, r0
	mvn r0, #0
	str r2, [sp]
	cmp r2, r0
	bne _02220A88
	ldr r0, [r7, #0x48]
	bl FUN_021EAF38
	mvn r2, #5
	cmp r0, r2
	subne r1, r2, #0x14
	cmpne r0, r1
	subne r1, r2, #0x46
	cmpne r0, r1
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #1
	str r2, [r7, #0xfc]
	mov r1, #5
	str r1, [r7, #0x38]
	str r0, [r7, #0x4c]
	str r2, [r7, #0x130]
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02220A88:
	cmp r2, #0
	bne _02220AA0
	mov r0, #1
	str r0, [r7, #0x130]
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02220AA0:
	ldr r0, [r7, #0x168]
	cmp r0, #0
	beq _02220B6C
	mov r1, r6
	add r0, r7, #0x98
	bl ov60_02220130
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl ov60_02220854
	cmp r0, #0
	bne _02220AEC
	mov r0, #1
	str r0, [r7, #0xfc]
	mov r0, #0x11
	str r0, [r7, #0x38]
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02220AEC:
	ldr r1, [r7, #0x80]
	ldr r0, [r7, #0x84]
	sub r0, r1, r0
	cmp r0, #0
	bgt _02220B14
	mov r0, #0
	strb r0, [r6]
	str r0, [r5, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02220B14:
	ldr r0, [r5, #0]
	add r2, sp, #0
	sub r3, r0, #1
	mov r1, r6
	add r0, r7, #0x74
	str r3, [sp]
	bl ov60_02220618
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #0x84]
	ldr r0, [r7, #0x80]
	cmp r1, r0
	bne _02220B5C
	ldr r0, [r7, #0xf8]
	str r0, [r7, #0x80]
	ldr r0, [r7, #0xf8]
	str r0, [r7, #0x84]
_02220B5C:
	ldr r2, [sp]
	cmp r2, #0
	movle r0, #1
	ldmia sp!,le {r3, r4, r5, r6, r7, pc}
_02220B6C:
	mov r0, #0
	strb r0, [r6, r2]
	ldr r1, [sp]
	str r1, [r5, #0]
	ldr r1, [sp]
	cmp r1, #0
	movle r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02220B8C: .word 0x0222911C
	arm_func_end ov60_0222097C

	arm_func_start ov60_02220B90
ov60_02220B90: ; 0x02220B90
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x48]
	mov r3, #0
	bl FUN_021EAE48
	mvn r1, #0
	cmp r0, r1
	bne _02220BF4
	ldr r0, [r4, #0x48]
	bl FUN_021EAF38
	mvn r2, #5
	cmp r0, r2
	subne r1, r2, #0x14
	cmpne r0, r1
	subne r1, r2, #0x46
	cmpne r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #1
	str r1, [r4, #0xfc]
	mov r1, #5
	str r1, [r4, #0x38]
	str r0, [r4, #0x4c]
	sub r0, r1, #6
	ldmia sp!, {r4, pc}
_02220BF4:
	ldr r1, [r4, #0x10]
	cmp r1, #4
	ldreq r1, [r4, #0x148]
	addeq r1, r1, r0
	streq r1, [r4, #0x148]
	ldmia sp!, {r4, pc}
	arm_func_end ov60_02220B90

	arm_func_start ov60_02220C0C
ov60_02220C0C: ; 0x02220C0C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0x5c]
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	mov r3, #0
	bne _02220C50
	bl ov60_02220B90
	mov r3, r0
	mvn r0, #0
	cmp r3, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r3, r4
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
_02220C50:
	add r0, r6, #0x50
	add r1, r5, r3
	sub r2, r4, r3
	bl ov60_02220130
	cmp r0, #0
	moveq r0, #0
	movne r0, #2
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov60_02220C0C

	arm_func_start ov60_02220C70
ov60_02220C70: ; 0x02220C70
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r1, _02220D7C ; =0x02229E2C
	mov r0, #0
	ldr r3, [r1, #0xc]
	cmp r3, #0
	ble _02220CA8
	ldr r2, [r1, #4]
_02220C8C:
	ldr r1, [r2, r0, lsl #2]
	ldr r1, [r1, #0]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r0, r0, #1
	cmp r0, r3
	blt _02220C8C
_02220CA8:
	ldr r0, _02220D7C ; =0x02229E2C
	ldr r0, [r0, #0]
	cmp r0, r3
	beq _02220CCC
	ldr r0, _02220D80 ; =0x02229178
	ldr r1, _02220D84 ; =0x022291A0
	ldr r2, _02220D88 ; =0x02229124
	mov r3, #0x33
	bl sub_020D407C
_02220CCC:
	ldr r0, _02220D7C ; =0x02229E2C
	ldr r6, [r0, #0xc]
	ldr r0, [r0, #4]
	add r5, r6, #4
	lsl r1, r5, #2
	bl FUN_021D7894
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r8, _02220D7C ; =0x02229E2C
	mov r7, r6
	str r0, [r8, #4]
	cmp r6, r5
	bge _02220D6C
	mov sb, #0
	mov r4, #0x184
_02220D0C:
	mov r0, r4
	bl FUN_021D7880
	ldr r1, [r8, #4]
	str r0, [r1, r7, lsl #2]
	ldr r0, [r8, #4]
	ldr r0, [r0, r7, lsl #2]
	cmp r0, #0
	bne _02220D5C
	sub r7, r7, #1
	cmp r7, r6
	blt _02220D54
	ldr r4, _02220D7C ; =0x02229E2C
_02220D3C:
	ldr r0, [r4, #4]
	ldr r0, [r0, r7, lsl #2]
	bl FUN_021D78B0
	sub r7, r7, #1
	cmp r7, r6
	bge _02220D3C
_02220D54:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02220D5C:
	add r7, r7, #1
	str sb, [r0]
	cmp r7, r5
	blt _02220D0C
_02220D6C:
	ldr r1, _02220D7C ; =0x02229E2C
	mov r0, r6
	str r5, [r1, #0xc]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02220D7C: .word 0x02229E2C
_02220D80: .word 0x02229178
_02220D84: .word 0x022291A0
_02220D88: .word 0x02229124
	arm_func_end ov60_02220C70

	arm_func_start ov60_02220D8C
ov60_02220D8C: ; 0x02220D8C
	stmfd sp!, {r3, r4, r5, lr}
	bl ov60_0222084C
	bl ov60_02220C70
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	bne _02220DB4
	bl ov60_02220850
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02220DB4:
	ldr r0, _02220F20 ; =0x02229E2C
	mov r1, #0
	ldr r0, [r0, #4]
	mov r2, #0x184
	ldr r4, [r0, r5, lsl #2]
	mov r0, r4
	bl sub_020D5124
	mov r0, #1
	str r0, [r4, #0]
	ldr r0, _02220F20 ; =0x02229E2C
	str r5, [r4, #4]
	ldr r2, [r0, #8]
	mov ip, #0
	add r1, r2, #1
	str r1, [r0, #8]
	str r2, [r4, #8]
	str ip, [r4, #0xc]
	str ip, [r4, #0x10]
	str ip, [r4, #0x14]
	str ip, [r4, #0x18]
	str ip, [r4, #0x1c]
	strh ip, [r4, #0x20]
	str ip, [r4, #0x24]
	str ip, [r4, #0x28]
	str ip, [r4, #0x2c]
	str ip, [r4, #0x30]
	str ip, [r4, #0x34]
	str ip, [r4, #0x38]
	str ip, [r4, #0x3c]
	str ip, [r4, #0x40]
	str ip, [r4, #0x44]
	sub r0, ip, #1
	str r0, [r4, #0x48]
	str ip, [r4, #0x4c]
	str ip, [r4, #0xe0]
	str ip, [r4, #0xe4]
	str ip, [r4, #0xe8]
	str ip, [r4, #0xec]
	str ip, [r4, #0xf0]
	str ip, [r4, #0xf4]
	str ip, [r4, #0xf8]
	str ip, [r4, #0xfc]
	str ip, [r4, #0x100]
	str r0, [r4, #0x104]
	str ip, [r4, #0x108]
	str ip, [r4, #0x10c]
	str ip, [r4, #0x110]
	str ip, [r4, #0x12c]
	str ip, [r4, #0x134]
	str ip, [r4, #0x138]
	str ip, [r4, #0x13c]
	mov r0, #0x1f4
	str r0, [r4, #0x158]
	add r0, r4, #0x100
	mov r1, #0x50
	strh r1, [r0, #0x60]
	str ip, [r4, #0x15c]
	mov r0, r4
	add r1, r4, #0x50
	mov r2, #0x800
	mov r3, #0x1000
	str ip, [r4, #0x164]
	bl ov60_0221FEB8
	cmp r0, #0
	beq _02220ECC
	mov r2, #0x800
	mov r0, r4
	mov r3, r2
	add r1, r4, #0x74
	bl ov60_0221FEB8
_02220ECC:
	cmp r0, #0
	beq _02220EE8
	mov r0, r4
	add r1, r4, #0x98
	mov r2, #0x800
	mov r3, #0x400
	bl ov60_0221FEB8
_02220EE8:
	cmp r0, #0
	bne _02220F04
	mov r0, r4
	bl ov60_02220F24
	bl ov60_02220850
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02220F04:
	ldr r0, _02220F20 ; =0x02229E2C
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	bl ov60_02220850
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02220F20: .word 0x02229E2C
	arm_func_end ov60_02220D8C

	arm_func_start ov60_02220F24
ov60_02220F24: ; 0x02220F24
	stmfd sp!, {r4, lr}
	mov r4, r0
	bne _02220F44
	ldr r0, _022210EC ; =0x022291B4
	ldr r1, _022210F0 ; =0x022291A0
	ldr r2, _022210F4 ; =0x02229134
	mov r3, #0xb3
	bl sub_020D407C
_02220F44:
	ldr r0, [r4, #4]
	cmp r0, #0
	bge _02220F64
	ldr r0, _022210F8 ; =0x022291C0
	ldr r1, _022210F0 ; =0x022291A0
	ldr r2, _022210F4 ; =0x02229134
	mov r3, #0xb4
	bl sub_020D407C
_02220F64:
	ldr r0, _022210FC ; =0x02229E2C
	ldr r1, [r4, #4]
	ldr r0, [r0, #0xc]
	cmp r1, r0
	blt _02220F8C
	ldr r0, _02221100 ; =0x022291DC
	ldr r1, _022210F0 ; =0x022291A0
	ldr r2, _022210F4 ; =0x02229134
	mov r3, #0xb5
	bl sub_020D407C
_02220F8C:
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02220FAC
	ldr r0, _02221104 ; =0x02229204
	ldr r1, _022210F0 ; =0x022291A0
	ldr r2, _022210F4 ; =0x02229134
	mov r3, #0xb6
	bl sub_020D407C
_02220FAC:
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	movlt r0, #0
	ldmia sp!,lt {r4, pc}
	ldr r0, _022210FC ; =0x02229E2C
	ldr r0, [r0, #0xc]
	cmp r1, r0
	movge r0, #0
	ldmia sp!,ge {r4, pc}
	bl ov60_0222084C
	ldr r0, [r4, #0x14]
	bl FUN_021D78B0
	ldr r0, [r4, #0x18]
	bl FUN_021D78B0
	ldr r0, [r4, #0x24]
	bl FUN_021D78B0
	ldr r0, [r4, #0x28]
	bl FUN_021D78B0
	ldr r0, [r4, #0x108]
	bl FUN_021D78B0
	ldr r0, [r4, #0x15c]
	bl FUN_021D78B0
	ldr r0, [r4, #0x48]
	mvn r1, #0
	cmp r0, r1
	beq _02221040
	mov r1, #2
	bl FUN_021EAD04
	ldr r0, [r4, #0x48]
	bl FUN_021EACF0
_02221040:
	add r0, r4, #0x50
	bl ov60_022200D0
	add r0, r4, #0x74
	bl ov60_022200D0
	add r0, r4, #0x98
	bl ov60_022200D0
	add r0, r4, #0xbc
	bl ov60_022200D0
	ldr r0, [r4, #0x140]
	cmp r0, #0
	beq _02221074
	mov r0, r4
	bl ov60_02221EDC
_02221074:
	ldr r0, [r4, #0x13c]
	cmp r0, #0
	beq _0222109C
	bl ov60_02221900
	cmp r0, #0
	beq _0222109C
	ldr r0, [r4, #0x13c]
	bl ov60_02221908
	mov r0, #0
	str r0, [r4, #0x13c]
_0222109C:
	ldr r0, [r4, #0x16c]
	cmp r0, #0
	beq _022210C8
	ldr r2, [r4, #0x178]
	cmp r2, #0
	beq _022210C0
	mov r0, r4
	add r1, r4, #0x164
	blx r2
_022210C0:
	mov r0, #0
	str r0, [r4, #0x16c]
_022210C8:
	mov r1, #0
	ldr r0, _022210FC ; =0x02229E2C
	str r1, [r4, #0]
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	bl ov60_02220850
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022210EC: .word 0x022291B4
_022210F0: .word 0x022291A0
_022210F4: .word 0x02229134
_022210F8: .word 0x022291C0
_022210FC: .word 0x02229E2C
_02221100: .word 0x022291DC
_02221104: .word 0x02229204
	arm_func_end ov60_02220F24

	arm_func_start ov60_02221108
ov60_02221108: ; 0x02221108
	stmfd sp!, {r4, lr}
	mov r4, r0
	bpl _02221128
	ldr r0, _02221194 ; =0x02229218
	ldr r1, _02221198 ; =0x022291A0
	ldr r2, _0222119C ; =0x02229160
	ldr r3, _022211A0 ; =0x00000101
	bl sub_020D407C
_02221128:
	ldr r0, _022211A4 ; =0x02229E2C
	ldr r0, [r0, #0xc]
	cmp r4, r0
	blt _0222114C
	ldr r0, _022211A8 ; =0x02229228
	ldr r1, _02221198 ; =0x022291A0
	ldr r2, _0222119C ; =0x02229160
	ldr r3, _022211AC ; =0x00000102
	bl sub_020D407C
_0222114C:
	bl ov60_0222084C
	cmp r4, #0
	blt _02221168
	ldr r0, _022211A4 ; =0x02229E2C
	ldr r1, [r0, #0xc]
	cmp r4, r1
	blt _02221174
_02221168:
	bl ov60_02220850
	mov r0, #0
	ldmia sp!, {r4, pc}
_02221174:
	ldr r0, [r0, #4]
	ldr r4, [r0, r4, lsl #2]
	ldr r0, [r4, #0]
	cmp r0, #0
	moveq r4, #0
	bl ov60_02220850
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221194: .word 0x02229218
_02221198: .word 0x022291A0
_0222119C: .word 0x02229160
_022211A0: .word 0x00000101
_022211A4: .word 0x02229E2C
_022211A8: .word 0x02229228
_022211AC: .word 0x00000102
	arm_func_end ov60_02221108

	arm_func_start ov60_022211B0
ov60_022211B0: ; 0x022211B0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _02221210 ; =0x02229E2C
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmia sp!,le {r4, r5, r6, pc}
	bl ov60_0222084C
	ldr r5, _02221210 ; =0x02229E2C
	mov r6, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	ble _02221208
_022211E0:
	ldr r0, [r5, #4]
	ldr r0, [r0, r6, lsl #2]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _022211F8
	blx r4
_022211F8:
	ldr r0, [r5, #0xc]
	add r6, r6, #1
	cmp r6, r0
	blt _022211E0
_02221208:
	bl ov60_02220850
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02221210: .word 0x02229E2C
	arm_func_end ov60_022211B0

	arm_func_start ov60_02221214
ov60_02221214: ; 0x02221214
	stmfd sp!, {r4, lr}
	mov r4, r0
	bne _02221234
	ldr r0, _02221300 ; =0x022291B4
	ldr r1, _02221304 ; =0x022291A0
	ldr r2, _02221308 ; =0x02229148
	ldr r3, _0222130C ; =0x00000132
	bl sub_020D407C
_02221234:
	ldr r0, [r4, #0x108]
	cmp r0, #0
	bne _02221254
	ldr r0, _02221310 ; =0x02229244
	ldr r1, _02221304 ; =0x022291A0
	ldr r2, _02221308 ; =0x02229148
	ldr r3, _02221314 ; =0x00000133
	bl sub_020D407C
_02221254:
	mov r0, #0
	str r0, [r4, #0x10]
	ldr r0, [r4, #0x14]
	bl FUN_021D78B0
	ldr r1, [r4, #0x108]
	mov r0, #0
	str r1, [r4, #0x14]
	str r0, [r4, #0x108]
	ldr r0, [r4, #0x18]
	bl FUN_021D78B0
	mov r0, #0
	str r0, [r4, #0x18]
	str r0, [r4, #0x1c]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x24]
	bl FUN_021D78B0
	mov r0, #0
	str r0, [r4, #0x24]
	ldr r0, [r4, #0x48]
	mov r1, #2
	bl FUN_021EAD04
	ldr r0, [r4, #0x48]
	bl FUN_021EACF0
	mvn r1, #0
	add r0, r4, #0x50
	str r1, [r4, #0x48]
	bl ov60_02220504
	add r0, r4, #0x74
	bl ov60_02220504
	add r0, r4, #0x98
	bl ov60_02220504
	mov r0, #0
	str r0, [r4, #0xe4]
	str r0, [r4, #0xe8]
	str r0, [r4, #0xec]
	str r0, [r4, #0xf0]
	str r0, [r4, #0xf4]
	str r0, [r4, #0xf8]
	str r0, [r4, #0x130]
	ldr r0, [r4, #0x10c]
	add r0, r0, #1
	str r0, [r4, #0x10c]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221300: .word 0x022291B4
_02221304: .word 0x022291A0
_02221308: .word 0x02229148
_0222130C: .word 0x00000132
_02221310: .word 0x02229244
_02221314: .word 0x00000133
	arm_func_end ov60_02221214

	arm_func_start ov60_02221318
ov60_02221318: ; 0x02221318
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _02221388 ; =0x02229E2C
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _0222138C ; =ov60_02220F24
	bl ov60_022211B0
	ldr r4, _02221388 ; =0x02229E2C
	mov r5, #0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ble _02221364
_02221348:
	ldr r0, [r4, #4]
	ldr r0, [r0, r5, lsl #2]
	bl FUN_021D78B0
	ldr r0, [r4, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _02221348
_02221364:
	ldr r0, _02221388 ; =0x02229E2C
	ldr r0, [r0, #4]
	bl FUN_021D78B0
	ldr r0, _02221388 ; =0x02229E2C
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0xc]
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02221388: .word 0x02229E2C
_0222138C: .word ov60_02220F24
	arm_func_end ov60_02221318

	arm_func_start ov60_02221390
ov60_02221390: ; 0x02221390
	stmfd sp!, {r3, lr}
	ldr lr, [r0, #0xec]
	ldr r3, _02221448 ; =0x51EB851F
	lsr r1, lr, #0x1f
	smull r2, ip, r3, lr
	add ip, r1, ip, asr #5
	cmp ip, #5
	addls pc, pc, ip, lsl #2
	ldmia sp!, {r3, pc}
_022213B4: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _022213CC ; case 1
	b _022213CC ; case 2
	b _022213CC ; case 3
	b _022213D0 ; case 4
	b _0222143C ; case 5
_022213CC:
	ldmia sp!, {r3, pc}
_022213D0:
	sub r1, lr, #0x91
	sub r1, r1, #0x100
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _02221430
_022213E4: ; jump table
	b _0222140C ; case 0
	b _02221430 ; case 1
	b _02221418 ; case 2
	b _02221424 ; case 3
	b _02221430 ; case 4
	b _02221430 ; case 5
	b _02221430 ; case 6
	b _02221430 ; case 7
	b _02221430 ; case 8
	b _02221424 ; case 9
_0222140C:
	mov r1, #9
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
_02221418:
	mov r1, #0xa
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
_02221424:
	mov r1, #0xb
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
_02221430:
	mov r1, #8
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
_0222143C:
	mov r1, #0xc
	str r1, [r0, #0x38]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02221448: .word 0x51EB851F
	arm_func_end ov60_02221390

	arm_func_start ov60_0222144C
ov60_0222144C: ; 0x0222144C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bne _0222146C
	ldr r0, _022215A4 ; =0x02229280
	ldr r1, _022215A8 ; =0x0222928C
	ldr r2, _022215AC ; =0x02229268
	mov r3, #0x5b
	bl sub_020D407C
_0222146C:
	ldr r0, [r4, #4]
	bl ov60_02221108
	cmp r0, r4
	beq _02221490
	ldr r0, _022215B0 ; =0x02229298
	ldr r1, _022215A8 ; =0x0222928C
	ldr r2, _022215AC ; =0x02229268
	mov r3, #0x5c
	bl sub_020D407C
_02221490:
	ldr r0, [r4, #0x12c]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #1
	str r0, [r4, #0x12c]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _022214BC
	mov r0, r4
	bl ov60_022229B0
_022214BC:
	ldr r0, [r4, #0x10]
	cmp r0, #1
	bne _022214D0
	mov r0, r4
	bl ov60_02222A74
_022214D0:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	bne _022214E4
	mov r0, r4
	bl ov60_02222CC4
_022214E4:
	ldr r0, [r4, #0x10]
	cmp r0, #3
	bne _022214F8
	mov r0, r4
	bl ov60_02222E24
_022214F8:
	ldr r0, [r4, #0x10]
	cmp r0, #4
	bne _0222150C
	mov r0, r4
	bl ov60_02223098
_0222150C:
	ldr r0, [r4, #0x10]
	cmp r0, #5
	bne _02221520
	mov r0, r4
	bl ov60_02223130
_02221520:
	ldr r0, [r4, #0x10]
	cmp r0, #6
	bne _02221534
	mov r0, r4
	bl ov60_022232FC
_02221534:
	ldr r0, [r4, #0x10]
	cmp r0, #7
	bne _02221548
	mov r0, r4
	bl ov60_02223838
_02221548:
	ldr r0, [r4, #0x10]
	cmp r0, #8
	bne _0222155C
	mov r0, r4
	bl ov60_02223CA8
_0222155C:
	ldr r0, [r4, #0x108]
	cmp r0, #0
	beq _02221570
	mov r0, r4
	bl ov60_02221214
_02221570:
	ldr r5, [r4, #0xfc]
	cmp r5, #0
	moveq r0, #0
	streq r0, [r4, #0x12c]
	beq _0222159C
	mov r0, r4
	bl ov60_02221390
	mov r0, r4
	bl ov60_022206D4
	mov r0, r4
	bl ov60_02220F24
_0222159C:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022215A4: .word 0x02229280
_022215A8: .word 0x0222928C
_022215AC: .word 0x02229268
_022215B0: .word 0x02229298
	arm_func_end ov60_0222144C

	arm_func_start ov60_022215B4
ov60_022215B4: ; 0x022215B4
	stmfd sp!, {r3, lr}
	bl ov60_0222084C
	ldr r0, _022215FC ; =0x02229E3C
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	cmp r1, #1
	bne _022215F4
	bl ov60_02220844
	ldr r0, _02221600 ; =0x0222911C
	mov r2, #0xfa
	ldr r1, _02221604 ; =0x02229120
	mov r3, #0x7d
	str r2, [r0, #0]
	str r3, [r1, #0]
	ldmia sp!, {r3, pc}
_022215F4:
	bl ov60_02220850
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022215FC: .word 0x02229E3C
_02221600: .word 0x0222911C
_02221604: .word 0x02229120
	arm_func_end ov60_022215B4

	arm_func_start ov60_02221608
ov60_02221608: ; 0x02221608
	stmfd sp!, {r3, lr}
	bl ov60_0222084C
	ldr r0, _0222165C ; =0x02229E3C
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	bne _02221654
	bl ov60_02221318
	ldr r0, _02221660 ; =0x02229E28
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02221648
	bl FUN_021D78B0
	ldr r0, _02221660 ; =0x02229E28
	mov r1, #0
	str r1, [r0, #0]
_02221648:
	bl ov60_02220850
	bl ov60_02220848
	ldmia sp!, {r3, pc}
_02221654:
	bl ov60_02220850
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222165C: .word 0x02229E3C
_02221660: .word 0x02229E28
	arm_func_end ov60_02221608

	arm_func_start ov60_02221664
ov60_02221664: ; 0x02221664
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	mov ip, #0
	str ip, [sp]
	str ip, [sp, #4]
	str r1, [sp, #8]
	str ip, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	mov r1, ip
	mov r2, ip
	mov r3, ip
	bl ov60_022216A0
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	arm_func_end ov60_02221664

	arm_func_start ov60_022216A0
ov60_022216A0: ; 0x022216A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldrsbne r0, [r8]
	mov r7, r1
	mov r6, r2
	mov r5, r3
	cmpne r0, #0
	bne _022216D4
	ldr r0, _022218CC ; =0x022292D4
	ldr r1, _022218D0 ; =0x0222928C
	ldr r2, _022218D4 ; =0x0222925C
	mov r3, #0x128
	bl sub_020D407C
_022216D4:
	cmp r5, #0
	bge _022216F0
	ldr r0, _022218D8 ; =0x022292E4
	ldr r1, _022218D0 ; =0x0222928C
	ldr r2, _022218D4 ; =0x0222925C
	ldr r3, _022218DC ; =0x00000129
	bl sub_020D407C
_022216F0:
	cmp r6, #0
	beq _02221714
	cmp r5, #0
	bne _02221714
	ldr r0, _022218E0 ; =0x022292F4
	ldr r1, _022218D0 ; =0x0222928C
	ldr r2, _022218D4 ; =0x0222925C
	ldr r3, _022218E4 ; =0x0000012A
	bl sub_020D407C
_02221714:
	cmp r8, #0
	ldrsbne r0, [r8]
	cmpne r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r5, #0
	mvnlt r0, #0
	ldmia sp!,lt {r4, r5, r6, r7, r8, pc}
	cmp r6, #0
	beq _02221748
	cmp r5, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02221748:
	ldr r0, _022218E8 ; =0x02229E3C
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _0222175C
	bl ov60_022215B4
_0222175C:
	bl ov60_02220D8C
	mov r4, r0
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r1, #0
	mov r0, r8
	str r1, [r4, #0xc]
	bl FUN_021EA8AC
	str r0, [r4, #0x14]
	cmp r0, #0
	bne _02221798
	mov r0, r4
	bl ov60_02220F24
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02221798:
	cmp r7, #0
	ldrsbne r0, [r7]
	cmpne r0, #0
	beq _022217CC
	mov r0, r7
	bl FUN_021EA8AC
	str r0, [r4, #0x28]
	cmp r0, #0
	bne _022217CC
	mov r0, r4
	bl ov60_02220F24
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022217CC:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0x20]
	str r1, [r4, #0x13c]
	str r0, [r4, #0x30]
	ldr r1, [sp, #0x24]
	ldr r0, [sp, #0x28]
	str r1, [r4, #0x3c]
	str r0, [r4, #0x40]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	str r1, [r4, #0x44]
	str r0, [r4, #0x134]
	cmp r6, #0
	movne r0, #1
	moveq r0, #0
	str r0, [r4, #0xe0]
	cmp r0, #0
	beq _0222182C
	mov r0, r4
	mov r2, r6
	mov r3, r5
	add r1, r4, #0xbc
	bl ov60_0221FFD4
	b _02221840
_0222182C:
	mov r2, #0x800
	mov r0, r4
	mov r3, r2
	add r1, r4, #0xbc
	bl ov60_0221FEB8
_02221840:
	cmp r0, #0
	bne _02221858
	mov r0, r4
	bl ov60_02220F24
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02221858:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	beq _02221884
	mov r0, r4
	bl ov60_02221D4C
	cmp r0, #0
	bne _02221884
	mov r0, r4
	bl ov60_02220F24
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02221884:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _022218C4
	mov r0, r4
	bl ov60_0222144C
	cmp r0, #0
	bne _022218BC
	mov r5, #0xa
_022218A4:
	mov r0, r5
	bl FUN_021EA898
	mov r0, r4
	bl ov60_0222144C
	cmp r0, #0
	beq _022218A4
_022218BC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022218C4:
	ldr r0, [r4, #4]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022218CC: .word 0x022292D4
_022218D0: .word 0x0222928C
_022218D4: .word 0x0222925C
_022218D8: .word 0x022292E4
_022218DC: .word 0x00000129
_022218E0: .word 0x022292F4
_022218E4: .word 0x0000012A
_022218E8: .word 0x02229E3C
	arm_func_end ov60_022216A0

	arm_func_start ov60_022218EC
ov60_022218EC: ; 0x022218EC
	ldr ip, _022218F8 ; =ov60_022211B0
	ldr r0, _022218FC ; =ov60_0222144C
	bx ip
	; .align 2, 0
_022218F8: .word ov60_022211B0
_022218FC: .word ov60_0222144C
	arm_func_end ov60_022218EC

	arm_func_start ov60_02221900
ov60_02221900: ; 0x02221900
	ldr r0, [r0, #0x10]
	bx lr
	arm_func_end ov60_02221900

	arm_func_start ov60_02221908
ov60_02221908: ; 0x02221908
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	bl FUN_021E9B50
	mov r0, r4
	bl FUN_021D78B0
	ldmia sp!, {r4, pc}
	arm_func_end ov60_02221908

	arm_func_start ov60_02221924
ov60_02221924: ; 0x02221924
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0x13c]
	cmp r4, #0
	bne _02221948
	ldr r0, _02221968 ; =0x02229494
	ldr r1, _0222196C ; =0x02229444
	ldr r2, _02221970 ; =0x02229374
	ldr r3, _02221974 ; =0x00000192
	bl sub_020D407C
_02221948:
	cmp r4, #0
	ldreq r0, _02221978 ; =0x0222949C
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	ldrne r0, _0222197C ; =0x022294A0
	ldreq r0, _02221980 ; =0x022294E4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221968: .word 0x02229494
_0222196C: .word 0x02229444
_02221970: .word 0x02229374
_02221974: .word 0x00000192
_02221978: .word 0x0222949C
_0222197C: .word 0x022294A0
_02221980: .word 0x022294E4
	arm_func_end ov60_02221924

	arm_func_start ov60_02221984
ov60_02221984: ; 0x02221984
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r6, [r0, #0x13c]
	mov sl, #0
	ldr r0, [r6, #0]
	bl FUN_021E9BBC
	mov sb, r0
	moveq r0, sl
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #0
	mov r8, sl
	ble _02221A18
	ldr r5, _02221A24 ; =0x02229508
	ldr r4, _02221A28 ; =0x02229444
	ldr fp, _02221A2C ; =0x022293E0
_022219BC:
	ldr r0, [r6, #0]
	mov r1, r8
	bl FUN_021E9BC4
	mov r7, r0
	ldr r0, [r7, #0]
	cmp r0, #0
	beq _022219EC
	mov r0, r5
	mov r1, r4
	mov r2, fp
	mov r3, #0x1b0
	bl sub_020D407C
_022219EC:
	ldr r0, [r7, #4]
	bl sub_020D8B60
	add r8, r8, #1
	ldr r1, [r7, #0xc]
	add r2, sl, r0
	ldr r0, [r7, #0x14]
	add r1, r2, r1
	add r0, r1, r0, lsl #1
	cmp r8, sb
	add sl, r0, #1
	blt _022219BC
_02221A18:
	sub r0, sb, #1
	add r0, sl, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02221A24: .word 0x02229508
_02221A28: .word 0x02229444
_02221A2C: .word 0x022293E0
	arm_func_end ov60_02221984

	arm_func_start ov60_02221A30
ov60_02221A30: ; 0x02221A30
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r1, _02221BB4 ; =0x02229E40
	mov r4, r0
	ldr r0, [r1, #8]
	ldr r7, [r4, #0x13c]
	cmp r0, #0
	mov sl, #0
	bne _02221A78
	ldr r0, _02221BB8 ; =0x02229520
	bl sub_020D8B60
	ldr r1, _02221BB4 ; =0x02229E40
	add r2, r0, #0x2f
	str r0, [r1, #8]
	str r2, [r1, #4]
	add r2, r0, #0x4c
	str r2, [r1, #0xc]
	add r0, r0, #4
	str r0, [r1, #0]
_02221A78:
	ldr r0, [r7, #0]
	bl FUN_021E9BBC
	mov sb, r0
	cmp sb, #0
	mov r8, #0
	ble _02221BA4
	ldr fp, _02221BBC ; =0x02229548
	ldr r5, _02221BB4 ; =0x02229E40
_02221A98:
	ldr r0, [r7, #0]
	mov r1, r8
	bl FUN_021E9BC4
	mov r6, r0
	ldr r0, [r6, #0]
	cmp r0, #0
	bne _02221AD4
	ldr r1, [r5, #4]
	ldr r0, [r6, #4]
	add sl, sl, r1
	bl sub_020D8B60
	ldr r1, [r6, #0xc]
	add r0, sl, r0
	add sl, r0, r1
	b _02221B98
_02221AD4:
	cmp r0, #1
	bne _02221B3C
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #4]
	add sl, sl, r1
	bl sub_020D8B60
	add sl, sl, r0
	ldr r0, [r6, #0xc]
	bl sub_020D8B60
	add sl, sl, r0
	ldr r0, [r6, #0x10]
	bl sub_020D8B60
	add sl, sl, r0
	ldr r0, [r4, #0x140]
	mov r1, r8
	bl FUN_021E9BC4
	mov r6, r0
	bne _02221B30
	ldr r1, _02221BC0 ; =0x02229444
	ldr r2, _02221BC4 ; =0x02229420
	mov r0, fp
	mov r3, #0x1ec
	bl sub_020D407C
_02221B30:
	ldr r0, [r6, #0xc]
	add sl, sl, r0
	b _02221B98
_02221B3C:
	cmp r0, #2
	bne _02221B7C
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #4]
	add sl, sl, r1
	bl sub_020D8B60
	add sl, sl, r0
	ldr r0, [r6, #0x10]
	bl sub_020D8B60
	add sl, sl, r0
	ldr r0, [r6, #0x14]
	bl sub_020D8B60
	add r1, sl, r0
	ldr r0, [r6, #0xc]
	add sl, r1, r0
	b _02221B98
_02221B7C:
	ldr r0, _02221BC8 ; =0x02229440
	ldr r1, _02221BC0 ; =0x02229444
	ldr r2, _02221BC4 ; =0x02229420
	ldr r3, _02221BCC ; =0x000001F9
	bl sub_020D407C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02221B98:
	add r8, r8, #1
	cmp r8, sb
	blt _02221A98
_02221BA4:
	ldr r0, _02221BB4 ; =0x02229E40
	ldr r0, [r0, #0]
	add r0, sl, r0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02221BB4: .word 0x02229E40
_02221BB8: .word 0x02229520
_02221BBC: .word 0x02229548
_02221BC0: .word 0x02229444
_02221BC4: .word 0x02229420
_02221BC8: .word 0x02229440
_02221BCC: .word 0x000001F9
	arm_func_end ov60_02221A30

	arm_func_start ov60_02221BD0
ov60_02221BD0: ; 0x02221BD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r4, [r5, #0x13c]
	cmp r4, #0
	bne _02221BF8
	ldr r0, _02221C24 ; =0x02229494
	ldr r1, _02221C28 ; =0x02229444
	ldr r2, _02221C2C ; =0x0222938C
	mov r3, #0x20c
	bl sub_020D407C
_02221BF8:
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	mov r0, r5
	beq _02221C1C
	bl ov60_02221A30
	ldmia sp!, {r3, r4, r5, pc}
_02221C1C:
	bl ov60_02221984
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02221C24: .word 0x02229494
_02221C28: .word 0x02229444
_02221C2C: .word 0x0222938C
	arm_func_end ov60_02221BD0

	arm_func_start ov60_02221C30
ov60_02221C30: ; 0x02221C30
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0]
	mvn r0, #0
	ldr r1, [r1, #0]
	str r0, [r4, #4]
	cmp r1, #0
	beq _02221CCC
	cmp r1, #1
	bne _02221CA8
	ldr r0, [r4, #8]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	mov r2, #2
	bl sub_020D4DE4
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #8]
	bl sub_020D4AE0
	mvn r1, #0
	str r0, [r4, #0xc]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	bl sub_020D4F10
	b _02221CCC
_02221CA8:
	cmp r1, #2
	beq _02221CCC
	ldr r0, _02221CD4 ; =0x02229440
	ldr r1, _02221CD8 ; =0x02229444
	ldr r2, _02221CDC ; =0x02229334
	mov r3, #0x244
	bl sub_020D407C
	mov r0, #0
	ldmia sp!, {r4, pc}
_02221CCC:
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221CD4: .word 0x02229440
_02221CD8: .word 0x02229444
_02221CDC: .word 0x02229334
	arm_func_end ov60_02221C30

	arm_func_start ov60_02221CE0
ov60_02221CE0: ; 0x02221CE0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r0, #1
	bne _02221D1C
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _02221D10
	bl sub_020D4908
_02221D10:
	mov r0, #0
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
_02221D1C:
	cmp r0, #2
	ldmeqia sp!, {r4, pc}
	ldr r0, _02221D3C ; =0x02229440
	ldr r1, _02221D40 ; =0x02229444
	ldr r2, _02221D44 ; =0x02229348
	ldr r3, _02221D48 ; =0x00000269
	bl sub_020D407C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02221D3C: .word 0x02229440
_02221D40: .word 0x02229444
_02221D44: .word 0x02229348
_02221D48: .word 0x00000269
	arm_func_end ov60_02221CE0

	arm_func_start ov60_02221D4C
ov60_02221D4C: ; 0x02221D4C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r0, [r4, #0x13c]
	cmp r0, #0
	bne _02221D78
	ldr r0, _02221EC8 ; =0x02229550
	ldr r1, _02221ECC ; =0x02229444
	ldr r2, _02221ED0 ; =0x0222930C
	mov r3, #0x278
	bl sub_020D407C
_02221D78:
	ldr r0, [r4, #0x13c]
	cmp r0, #0
	addeq sp, sp, #0x10
	mov r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r0, [r4, #0x144]
	str r0, [r4, #0x148]
	str r0, [r4, #0x14c]
	ldr r0, [r4, #0x13c]
	ldr r0, [r0, #4]
	str r0, [r4, #0x150]
	ldr r0, [r4, #0x13c]
	ldr r0, [r0, #8]
	str r0, [r4, #0x154]
	ldr r0, [r4, #0x13c]
	ldr r0, [r0, #0]
	bl FUN_021E9BBC
	mov r8, r0
	mov r1, r8
	mov r0, #0x10
	mov r2, #0
	bl FUN_021E9A8C
	cmp r0, #0
	str r0, [r4, #0x140]
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	mov r7, #0
	ble _02221E7C
	add r6, sp, #0
	mov r5, r7
_02221DF8:
	ldr r0, [r4, #0x13c]
	mov r1, r7
	ldr r0, [r0, #0]
	bl FUN_021E9BC4
	str r5, [r6, #0]
	str r0, [sp]
	mov r0, r6
	str r5, [r6, #4]
	str r5, [r6, #8]
	str r5, [r6, #0xc]
	bl ov60_02221C30
	cmp r0, #0
	bne _02221E64
	sub r7, r7, #1
	bmi _02221E4C
_02221E34:
	ldr r0, [r4, #0x140]
	mov r1, r7
	bl FUN_021E9BC4
	bl ov60_02221CE0
	sub r7, r7, #1
	bpl _02221E34
_02221E4C:
	ldr r0, [r4, #0x140]
	bl FUN_021E9B50
	mov r0, #0
	add sp, sp, #0x10
	str r0, [r4, #0x140]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02221E64:
	ldr r0, [r4, #0x140]
	mov r1, r6
	bl FUN_021E9C2C
	add r7, r7, #1
	cmp r7, r8
	blt _02221DF8
_02221E7C:
	ldr r0, [r4, #0x13c]
	ldr r0, [r0, #0]
	bl FUN_021E9BBC
	mov r5, r0
	ldr r0, [r4, #0x140]
	bl FUN_021E9BBC
	cmp r5, r0
	beq _02221EB0
	ldr r0, _02221ED4 ; =0x02229564
	ldr r1, _02221ECC ; =0x02229444
	ldr r2, _02221ED0 ; =0x0222930C
	ldr r3, _02221ED8 ; =0x000002B1
	bl sub_020D407C
_02221EB0:
	mov r0, r4
	bl ov60_02221BD0
	str r0, [r4, #0x14c]
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02221EC8: .word 0x02229550
_02221ECC: .word 0x02229444
_02221ED0: .word 0x0222930C
_02221ED4: .word 0x02229564
_02221ED8: .word 0x000002B1
	arm_func_end ov60_02221D4C

	arm_func_start ov60_02221EDC
ov60_02221EDC: ; 0x02221EDC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #0x140]
	cmp r0, #0
	beq _02221F30
	bl FUN_021E9BBC
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _02221F20
_02221F04:
	ldr r0, [r6, #0x140]
	mov r1, r4
	bl FUN_021E9BC4
	bl ov60_02221CE0
	add r4, r4, #1
	cmp r4, r5
	blt _02221F04
_02221F20:
	ldr r0, [r6, #0x140]
	bl FUN_021E9B50
	mov r0, #0
	str r0, [r6, #0x140]
_02221F30:
	ldr r0, [r6, #0x13c]
	cmp r0, #0
	ldrne r1, [r0, #0x10]
	cmpne r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ov60_02221908
	mov r0, #0
	str r0, [r6, #0x13c]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov60_02221EDC

	arm_func_start ov60_02221F54
ov60_02221F54: ; 0x02221F54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	ldr r0, [r4, #4]
	mov sl, r1
	cmp r0, #0
	bge _02221F80
	ldr r0, _0222210C ; =0x022295B8
	ldr r1, _02222110 ; =0x02229444
	ldr r2, _02222114 ; =0x022293A4
	ldr r3, _02222118 ; =0x000002E7
	bl sub_020D407C
_02221F80:
	ldr r0, [r4, #0]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _02221FB4
	ldr r0, _0222211C ; =0x022295C8
	ldr r1, _02222110 ; =0x02229444
	ldr r2, _02222114 ; =0x022293A4
	ldr r3, _02222120 ; =0x000002EE
	bl sub_020D407C
_02221FB4:
	ldr r0, [sl, #0x13c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _022220C0
	ldr r1, [r4, #0]
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _022220C0
	ldr r0, _02222124 ; =0x02228C60
	ldr r8, [r1, #8]
	ldrb r2, [r0]
	ldrb r1, [r0, #1]
	add r5, sp, #0
	strb r2, [sp]
	strb r1, [sp, #1]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	mov r6, #0
	strb r1, [sp, #2]
	strb r0, [sp, #3]
	ldrsb r7, [r8]
	cmp r7, #0
	beq _022220B8
	ldr r4, _02222128 ; =0x02229604
	ldr fp, _0222212C ; =0x02229450
_02222018:
	mov r0, fp
	mov r1, r7
	bl sub_020D8E5C
	cmp r0, #0
	beq _0222203C
	mov r1, r7
	add r0, sl, #0x50
	bl ov60_0222046C
	b _022220A8
_0222203C:
	cmp r7, #0x20
	bne _02222054
	mov r1, #0x2b
	add r0, sl, #0x50
	bl ov60_0222046C
	b _022220A8
_02222054:
	asr r0, r7, #3
	add r0, r7, r0, lsr #28
	asr sb, r0, #4
	cmp sb, #0x10
	blt _0222207C
	ldr r0, _02222130 ; =0x022295F4
	ldr r1, _02222110 ; =0x02229444
	ldr r2, _02222114 ; =0x022293A4
	ldr r3, _02222134 ; =0x0000030D
	bl sub_020D407C
_0222207C:
	ldrsb r2, [r4, sb]
	lsr r1, r7, #0x1f
	rsb r0, r1, r7, lsl #28
	add r0, r1, r0, ror #28
	strb r2, [sp, #1]
	ldrsb r2, [r4, r0]
	mov r1, r5
	add r0, sl, #0x50
	strb r2, [sp, #2]
	mov r2, #3
	bl ov60_02220130
_022220A8:
	add r6, r6, #1
	ldrsb r7, [r8, r6]
	cmp r7, #0
	bne _02222018
_022220B8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022220C0:
	ldr r1, [r4, #0]
	ldr r0, [r4, #4]
	ldr r2, [r1, #0xc]
	ldr r1, [r1, #8]
	sub r5, r2, r0
	mov r0, sl
	mov r2, r5
	bl ov60_02220B90
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r4, #4]
	cmp r0, r5
	add r0, r1, r0
	str r0, [r4, #4]
	moveq r0, #1
	movne r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222210C: .word 0x022295B8
_02222110: .word 0x02229444
_02222114: .word 0x022293A4
_02222118: .word 0x000002E7
_0222211C: .word 0x022295C8
_02222120: .word 0x000002EE
_02222124: .word 0x02228C60
_02222128: .word 0x02229604
_0222212C: .word 0x02229450
_02222130: .word 0x022295F4
_02222134: .word 0x0000030D
	arm_func_end ov60_02221F54

	arm_func_start ov60_02222138
ov60_02222138: ; 0x02222138
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1000
	mov r8, r0
	ldr r0, [r8, #4]
	mov r7, r1
	cmp r0, #0
	bge _02222168
	ldr r0, _02222278 ; =0x022295B8
	ldr r1, _0222227C ; =0x02229444
	ldr r2, _02222280 ; =0x022293C0
	ldr r3, _02222284 ; =0x00000336
	bl sub_020D407C
_02222168:
	ldr r1, [r8, #4]
	ldr r0, [r8, #0xc]
	cmp r1, r0
	blt _0222218C
	ldr r0, _02222288 ; =0x02229618
	ldr r1, _0222227C ; =0x02229444
	ldr r2, _02222280 ; =0x022293C0
	ldr r3, _0222228C ; =0x00000337
	bl sub_020D407C
_0222218C:
	ldr r0, [r8, #8]
	bl sub_020D4AE0
	ldr r1, [r8, #4]
	cmp r1, r0
	beq _022221B4
	ldr r0, _02222290 ; =0x02229640
	ldr r1, _0222227C ; =0x02229444
	ldr r2, _02222280 ; =0x022293C0
	mov r3, #0x338
	bl sub_020D407C
_022221B4:
	add r6, sp, #0
	mov r5, #1
	mov r4, #0x1000
_022221C0:
	ldr r3, [r8, #8]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl sub_020D4204
	mov r2, r0
	cmp r2, #0
	bgt _022221FC
	mov r0, #1
	str r0, [r7, #0xfc]
	mov r0, #0xe
	str r0, [r7, #0x38]
	add sp, sp, #0x1000
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022221FC:
	ldr r0, [r8, #4]
	add r1, r0, r2
	str r1, [r8, #4]
	ldr r0, [r8, #0xc]
	cmp r1, r0
	ble _02222230
	mov r0, #1
	str r0, [r7, #0xfc]
	mov r0, #0xe
	str r0, [r7, #0x38]
	add sp, sp, #0x1000
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02222230:
	mov r0, r7
	mov r1, r6
	bl ov60_02220C0C
	cmp r0, #0
	addeq sp, sp, #0x1000
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, [r8, #4]
	ldr r1, [r8, #0xc]
	cmp r2, r1
	addeq sp, sp, #0x1000
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r0, #1
	beq _022221C0
	mov r0, #2
	add sp, sp, #0x1000
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02222278: .word 0x022295B8
_0222227C: .word 0x02229444
_02222280: .word 0x022293C0
_02222284: .word 0x00000336
_02222288: .word 0x02229618
_0222228C: .word 0x00000337
_02222290: .word 0x02229640
	arm_func_end ov60_02222138

	arm_func_start ov60_02222294
ov60_02222294: ; 0x02222294
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r0, [r6, #4]
	mov r5, r1
	cmp r0, #0
	bge _022222C0
	ldr r0, _0222235C ; =0x022295B8
	ldr r1, _02222360 ; =0x02229444
	ldr r2, _02222364 ; =0x02229400
	ldr r3, _02222368 ; =0x0000036E
	bl sub_020D407C
_022222C0:
	ldr r0, [r6, #0]
	ldr r1, [r0, #0xc]
	cmp r1, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	cmp r0, r1
	blt _022222F4
	ldr r0, _0222236C ; =0x02229678
	ldr r1, _02222360 ; =0x02229444
	ldr r2, _02222364 ; =0x02229400
	ldr r3, _02222370 ; =0x00000375
	bl sub_020D407C
_022222F4:
	mov r4, #0x8000
	mvn r7, #0
_022222FC:
	ldmia r6, {r1, r3}
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	sub r2, r0, r3
	cmp r2, #0x8000
	movge r2, r4
	mov r0, r5
	add r1, r1, r3
	bl ov60_02220B90
	cmp r0, r7
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #4]
	add r2, r1, r0
	str r2, [r6, #4]
	ldr r1, [r6, #0]
	ldr r1, [r1, #0xc]
	cmp r1, r2
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0
	bne _022222FC
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222235C: .word 0x022295B8
_02222360: .word 0x02229444
_02222364: .word 0x02229400
_02222368: .word 0x0000036E
_0222236C: .word 0x02229678
_02222370: .word 0x00000375
	arm_func_end ov60_02222294

	arm_func_start ov60_02222374
ov60_02222374: ; 0x02222374
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	sub sp, sp, #0x800
	mov r6, r0
	ldr r0, [r6, #4]
	mvn r3, #0
	mov r5, r1
	mov r4, r2
	cmp r0, r3
	bne _022224CC
	mov r0, #0
	str r0, [r6, #4]
	ldr r0, [r5, #0x13c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	bne _02222404
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022223D8
	ldr r0, _02222548 ; =0x022296A8
	ldr r1, _0222254C ; =0x02229444
	ldr r2, _02222550 ; =0x0222935C
	neg r3, r3x3a8
	bl sub_020D407C
_022223D8:
	ldr r1, [r6, #0]
	cmp r4, #0
	add r0, sp, #8
	ldr r2, [r1, #4]
	beq _022223F8
	ldr r1, _02222554 ; =0x022296C8
	bl sub_020D7510
	b _0222248C
_022223F8:
	ldr r1, _02222558 ; =0x022296CC
	bl sub_020D7510
	b _0222248C
_02222404:
	ldr r3, [r6, #0]
	ldr r1, [r3, #0]
	cmp r1, #0
	bne _02222434
	cmp r4, #0
	ldrne r2, _0222255C ; =0x022296D4
	ldr r3, [r3, #4]
	ldreq r2, _02222560 ; =0x022296FC
	ldr r1, _02222564 ; =0x02229728
	add r0, sp, #8
	bl sub_020D7510
	b _0222248C
_02222434:
	sub r0, r1, #1
	cmp r0, #1
	bhi _02222478
	cmp r1, #1
	ldreq r0, [r3, #0xc]
	ldreq r1, [r3, #0x10]
	ldrne r0, [r3, #0x10]
	ldrne r1, [r3, #0x14]
	cmp r4, #0
	stmia sp, {r0, r1}
	ldrne r2, _0222255C ; =0x022296D4
	ldr r3, [r3, #4]
	ldreq r2, _02222560 ; =0x022296FC
	ldr r1, _02222568 ; =0x02229758
	add r0, sp, #8
	bl sub_020D7510
	b _0222248C
_02222478:
	ldr r0, _0222256C ; =0x02229440
	ldr r1, _0222254C ; =0x02229444
	ldr r2, _02222550 ; =0x0222935C
	mov r3, #0x3dc
	bl sub_020D407C
_0222248C:
	add r0, sp, #8
	bl sub_020D8B60
	mov r2, r0
	add r1, sp, #8
	mov r0, r5
	bl ov60_02220C0C
	cmp r0, #0
	addeq sp, sp, #8
	addeq sp, sp, #0x800
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, #2
	addeq sp, sp, #8
	addeq sp, sp, #0x800
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
_022224CC:
	ldr r0, [r6, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022224F4
	mov r0, r6
	mov r1, r5
	bl ov60_02221F54
	add sp, sp, #8
	add sp, sp, #0x800
	ldmia sp!, {r4, r5, r6, pc}
_022224F4:
	cmp r0, #1
	bne _02222514
	mov r0, r6
	mov r1, r5
	bl ov60_02222138
	add sp, sp, #8
	add sp, sp, #0x800
	ldmia sp!, {r4, r5, r6, pc}
_02222514:
	cmp r0, #2
	beq _02222530
	ldr r0, _02222570 ; =0x022297AC
	ldr r1, _0222254C ; =0x02229444
	ldr r2, _02222550 ; =0x0222935C
	ldr r3, _02222574 ; =0x000003F5
	bl sub_020D407C
_02222530:
	mov r0, r6
	mov r1, r5
	bl ov60_02222294
	add sp, sp, #8
	add sp, sp, #0x800
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02222548: .word 0x022296A8
_0222254C: .word 0x02229444
_02222550: .word 0x0222935C
_02222554: .word 0x022296C8
_02222558: .word 0x022296CC
_0222255C: .word 0x022296D4
_02222560: .word 0x022296FC
_02222564: .word 0x02229728
_02222568: .word 0x02229758
_0222256C: .word 0x02229440
_02222570: .word 0x022297AC
_02222574: .word 0x000003F5
	arm_func_end ov60_02222374

	arm_func_start ov60_02222578
ov60_02222578: ; 0x02222578
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	bne _02222598
	ldr r0, _022227AC ; =0x022297D0
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227B8 ; =0x00000404
	bl sub_020D407C
_02222598:
	ldr r0, [sl, #0x13c]
	cmp r0, #0
	bne _022225B8
	ldr r0, _022227BC ; =0x02229550
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227C0 ; =0x00000405
	bl sub_020D407C
_022225B8:
	ldr r0, [sl, #0x140]
	cmp r0, #0
	bne _022225D8
	ldr r0, _022227C4 ; =0x022297DC
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227C8 ; =0x00000406
	bl sub_020D407C
_022225D8:
	ldr r0, [sl, #0x13c]
	ldr r0, [r0, #0]
	bl FUN_021E9BBC
	mov r4, r0
	ldr r0, [sl, #0x140]
	bl FUN_021E9BBC
	cmp r4, r0
	beq _0222260C
	ldr r0, _022227CC ; =0x02229564
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227D0 ; =0x00000407
	bl sub_020D407C
_0222260C:
	ldr r0, [sl, #0x144]
	cmp r0, #0
	bge _0222262C
	ldr r0, _022227D4 ; =0x022297FC
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227D8 ; =0x00000408
	bl sub_020D407C
_0222262C:
	ldr r0, [sl, #0x140]
	bl FUN_021E9BBC
	ldr r1, [sl, #0x144]
	cmp r1, r0
	ble _02222654
	ldr r0, _022227DC ; =0x02229820
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227E0 ; =0x00000409
	bl sub_020D407C
_02222654:
	ldr r0, [sl, #0x140]
	bl FUN_021E9BBC
	ldr r1, [sl, #0x5c]
	mov sb, r0
	cmp r1, #0
	beq _022226AC
	mov r0, sl
	bl ov60_02220548
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sl, #0x60]
	ldr r0, [sl, #0x5c]
	cmp r1, r0
	movlt r0, #2
	ldmia sp!,lt {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sl, #0x50
	bl ov60_02220504
	ldr r0, [sl, #0x144]
	cmp r0, sb
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022226AC:
	ldr r1, [sl, #0x144]
	cmp r1, sb
	bge _02222764
	ldr r7, _022227E4 ; =0x02229870
	ldr r6, _022227B0 ; =0x02229444
	ldr r5, _022227B4 ; =0x02229320
	ldr r4, _022227E8 ; =0x0000042F
	mov fp, #1
_022226CC:
	ldr r0, [sl, #0x140]
	bl FUN_021E9BC4
	mov r8, r0
	bne _022226F0
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl sub_020D407C
_022226F0:
	ldr r0, [sl, #0x144]
	mov r1, sl
	cmp r0, #0
	moveq r2, fp
	movne r2, #0
	mov r0, r8
	bl ov60_02222374
	cmp r0, #0
	bne _02222744
	ldr r0, [sl, #0xfc]
	cmp r0, #0
	ldrne r0, [sl, #0x38]
	cmpne r0, #0
	bne _0222273C
	ldr r0, _022227EC ; =0x0222987C
	ldr r1, _022227B0 ; =0x02229444
	ldr r2, _022227B4 ; =0x02229320
	ldr r3, _022227F0 ; =0x0000043B
	bl sub_020D407C
_0222273C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222744:
	cmp r0, #2
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x144]
	add r1, r0, #1
	str r1, [sl, #0x144]
	cmp r1, sb
	blt _022226CC
_02222764:
	ldr r0, [sl, #0x13c]
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _02222798
	ldr r0, _022227F4 ; =0x022298A8
	bl sub_020D8B60
	mov r2, r0
	ldr r1, _022227F4 ; =0x022298A8
	mov r0, sl
	bl ov60_02220C0C
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02222798:
	ldr r0, [sl, #0x5c]
	cmp r0, #0
	movne r0, #2
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022227AC: .word 0x022297D0
_022227B0: .word 0x02229444
_022227B4: .word 0x02229320
_022227B8: .word 0x00000404
_022227BC: .word 0x02229550
_022227C0: .word 0x00000405
_022227C4: .word 0x022297DC
_022227C8: .word 0x00000406
_022227CC: .word 0x02229564
_022227D0: .word 0x00000407
_022227D4: .word 0x022297FC
_022227D8: .word 0x00000408
_022227DC: .word 0x02229820
_022227E0: .word 0x00000409
_022227E4: .word 0x02229870
_022227E8: .word 0x0000042F
_022227EC: .word 0x0222987C
_022227F0: .word 0x0000043B
_022227F4: .word 0x022298A8
	arm_func_end ov60_02222578

	arm_func_start ov60_022227F8
ov60_022227F8: ; 0x022227F8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r5, r0
	bne _02222818
	ldr r0, _0222298C ; =0x02229968
	ldr r1, _02222990 ; =0x02229974
	ldr r2, _02222994 ; =0x022298D4
	mov r3, #0x25
	bl sub_020D407C
_02222818:
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _02222844
	ldr r0, _02222998 ; =0x02229984
	ldr r1, _02222990 ; =0x02229974
	ldr r2, _02222994 ; =0x022298D4
	mov r3, #0x2b
	bl sub_020D407C
_02222844:
	ldr r4, [r5, #0x14]
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r1, _0222299C ; =0x02229994
	mov r0, r4
	mov r2, #7
	bl sub_020D8E28
	cmp r0, #0
	addeq r4, r4, #7
	moveq r8, #0
	beq _0222289C
	ldr r1, _022229A0 ; =0x0222999C
	mov r0, r4
	mov r2, #8
	bl sub_020D8E28
	cmp r0, #0
	addeq r4, r4, #8
	moveq r8, #1
	beq _0222289C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0222289C:
	ldr r1, _022229A4 ; =0x022299A8
	mov r0, r4
	bl sub_020D8E98
	mov r6, r0
	ldrsb r7, [r4, r6]
	mov r1, #0
	mov r0, r4
	strb r1, [r4, r6]
	bl FUN_021EA8AC
	str r0, [r5, #0x18]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	strb r7, [r4, r6]
	ldrsb r0, [r4, r6]!
	cmp r0, #0x3a
	bne _02222918
	add r4, r4, #1
	mov r0, r4
	bl sub_020DAE0C
	strh r0, [r5, #0x20]
	ldrh r0, [r5, #0x20]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02222900:
	ldrsb r0, [r4, #1]!
	cmp r0, #0
	beq _0222292C
	cmp r0, #0x2f
	bne _02222900
	b _0222292C
_02222918:
	cmp r8, #0
	ldrne r0, _022229A8 ; =0x000001BB
	strhne r0, [r5, #0x20]
	moveq r0, #0x50
	strheq r0, [r5, #0x20]
_0222292C:
	ldrsb r0, [r4]
	cmp r0, #0
	ldreq r4, _022229AC ; =0x022299AC
	mov r0, r4
	bl FUN_021EA8AC
	mov r1, #0x20
	mov r7, r0
	str r0, [r5, #0x24]
	bl sub_020D8E5C
	cmp r0, #0
	beq _0222297C
	mov r6, #0x2b
	mov r4, #0x20
_02222960:
	strb r6, [r0]
	ldr r7, [r5, #0x24]
	mov r1, r4
	mov r0, r7
	bl sub_020D8E5C
	cmp r0, #0
	bne _02222960
_0222297C:
	cmp r7, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0222298C: .word 0x02229968
_02222990: .word 0x02229974
_02222994: .word 0x022298D4
_02222998: .word 0x02229984
_0222299C: .word 0x02229994
_022229A0: .word 0x0222999C
_022229A4: .word 0x022299A8
_022229A8: .word 0x000001BB
_022229AC: .word 0x022299AC
	arm_func_end ov60_022227F8

	arm_func_start ov60_022229B0
ov60_022229B0: ; 0x022229B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0
	mov r4, r0
	mov r2, r1
	bl ov60_02220754
	bl FUN_021EA8A4
	mov r0, r4
	bl ov60_022227F8
	cmp r0, #0
	bne _022229EC
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #3
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, r5, pc}
_022229EC:
	ldr r5, [r4, #0x15c]
	cmp r5, #0
	bne _02222A08
	ldr r0, _02222A70 ; =0x02229E28
	ldr r5, [r0, #0]
	cmp r5, #0
	ldreq r5, [r4, #0x18]
_02222A08:
	mov r0, r5
	bl FUN_021EAF1C
	mvn r1, #0
	str r0, [r4, #0x1c]
	cmp r0, r1
	bne _02222A54
	mov r0, r5
	bl FUN_0220854C
	cmp r0, #0
	bne _02222A44
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #4
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, r5, pc}
_02222A44:
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	str r0, [r4, #0x1c]
_02222A54:
	mov r1, #0
	mov r3, #1
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02222A70: .word 0x02229E28
	arm_func_end ov60_022229B0

	arm_func_start ov60_02222A74
ov60_02222A74: ; 0x02222A74
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r1, [r4, #0x48]
	mvn r0, #0
	cmp r1, r0
	bne _02222C20
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl FUN_021EACDC
	mvn r1, #0
	str r0, [r4, #0x48]
	cmp r0, r1
	bne _02222AD4
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #5
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x48]
	bl FUN_021EAF38
	add sp, sp, #0x10
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
_02222AD4:
	mov r1, #0
	bl FUN_021EA924
	cmp r0, #0
	bne _02222B08
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #5
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x48]
	bl FUN_021EAF38
	add sp, sp, #0x10
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
_02222B08:
	ldr r0, [r4, #0x134]
	cmp r0, #0
	beq _02222B24
	ldr r1, _02222CB8 ; =0x02229120
	ldr r0, [r4, #0x48]
	ldr r1, [r1, #0]
	bl FUN_021EA964
_02222B24:
	add r2, sp, #8
	mov r1, #0
	str r1, [r2, #0]
	mov r0, #2
	str r1, [r2, #4]
	strb r0, [sp, #9]
	ldr r0, [r4, #0x15c]
	cmp r0, #0
	beq _02222B6C
	add r0, r4, #0x100
	ldrh r0, [r0, #0x60]
	asr r1, r0, #8
	lsl r0, r0, #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0xa]
	b _02222BBC
_02222B6C:
	ldr r0, _02222CBC ; =0x02229E28
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02222BA0
	ldr r0, _02222CC0 ; =0x02229E24
	ldrh r0, [r0]
	asr r1, r0, #8
	lsl r0, r0, #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0xa]
	b _02222BBC
_02222BA0:
	ldrh r0, [r4, #0x20]
	asr r1, r0, #8
	lsl r0, r0, #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0xa]
_02222BBC:
	ldr r0, [r4, #0x1c]
	add r1, sp, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x48]
	mov r2, #8
	bl FUN_021EAD78
	mvn r1, #0
	cmp r0, r1
	bne _02222C20
	ldr r0, [r4, #0x48]
	bl FUN_021EAF38
	mvn r2, #5
	cmp r0, r2
	subne r1, r2, #0x14
	cmpne r0, r1
	subne r1, r2, #0x46
	cmpne r0, r1
	beq _02222C20
	mov r1, #1
	str r1, [r4, #0xfc]
	mov r1, #6
	str r1, [r4, #0x38]
	add sp, sp, #0x10
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
_02222C20:
	ldr r0, [r4, #0x48]
	add r2, sp, #4
	add r3, sp, #0
	mov r1, #0
	bl FUN_021EAA74
	cmp r0, #0
	movgt r1, #1
	movle r1, #0
	mvn r0, #0
	cmp r1, r0
	beq _02222C58
	ldr r0, [sp]
	cmp r0, #0
	beq _02222C88
_02222C58:
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #6
	cmp r1, #0
	addne sp, sp, #0x10
	str r0, [r4, #0x38]
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x48]
	bl FUN_021EAF38
	add sp, sp, #0x10
	str r0, [r4, #0x4c]
	ldmia sp!, {r4, pc}
_02222C88:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	mov r3, #2
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02222CB8: .word 0x02229120
_02222CBC: .word 0x02229E28
_02222CC0: .word 0x02229E24
	arm_func_end ov60_02222A74

	arm_func_start ov60_02222CC4
ov60_02222CC4: ; 0x02222CC4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	sub sp, sp, #0x400
	mov r4, r0
	ldr r1, [r4, #0x168]
	cmp r1, #0
	bne _02222D38
	ldr r0, [r4, #0x14]
	ldr r1, _02222E10 ; =0x0222999C
	mov r2, #8
	bl sub_020D8E28
	cmp r0, #0
	bne _02222D14
	mov r0, #1
	add sp, sp, #4
	str r0, [r4, #0xfc]
	mov r0, #0x11
	add sp, sp, #0x400
	str r0, [r4, #0x38]
	ldmia sp!, {r3, r4, pc}
_02222D14:
	mov r1, #0
	mov r3, #3
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, pc}
_02222D38:
	ldr r1, [r4, #0x170]
	cmp r1, #0
	beq _02222D64
	mov r1, #0
	mov r3, #3
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, pc}
_02222D64:
	ldr r1, [r4, #0x16c]
	cmp r1, #0
	bne _02222DA4
	ldr r2, [r4, #0x174]
	add r1, r4, #0x164
	blx r2
	cmp r0, #3
	bne _02222DA4
	ldr r0, _02222E14 ; =0x022299B0
	ldr r1, _02222E18 ; =0x02229974
	ldr r2, _02222E1C ; =0x02229914
	ldr r3, _02222E20 ; =0x00000146
	bl sub_020D407C
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, pc}
_02222DA4:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	cmp r1, r0
	bge _02222DEC
	mov r0, r4
	bl ov60_02220548
	cmp r0, #0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x5c]
	cmp r1, r0
	addlt sp, sp, #4
	addlt sp, sp, #0x400
	ldmia sp!,lt {r3, r4, pc}
	add r0, r4, #0x50
	bl ov60_02220504
_02222DEC:
	mov r3, #0x400
	add r1, sp, #4
	add r2, sp, #0
	mov r0, r4
	str r3, [sp]
	bl ov60_0222097C
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02222E10: .word 0x0222999C
_02222E14: .word 0x022299B0
_02222E18: .word 0x02229974
_02222E1C: .word 0x02229914
_02222E20: .word 0x00000146
	arm_func_end ov60_02222CC4

	arm_func_start ov60_02222E24
ov60_02222E24: ; 0x02222E24
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	ldr r0, [r5, #0x5c]
	cmp r0, #0
	bne _02222FFC
	ldr r0, [r5, #0x13c]
	add r4, r5, #0x50
	cmp r0, #0
	ldrne r1, _02223058 ; =0x022299B4
	bne _02222E60
	ldr r0, [r5, #0xc]
	cmp r0, #3
	ldreq r1, _0222305C ; =0x022299BC
	ldrne r1, _02223060 ; =0x022299C4
_02222E60:
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	ldr r0, [r5, #0x15c]
	mov r2, #0
	cmp r0, #0
	ldreq r0, _02223064 ; =0x02229E28
	ldreq r0, [r0]
	cmpeq r0, #0
	beq _02222E98
	ldr r1, [r5, #0x14]
	mov r0, r4
	bl ov60_02220130
	b _02222EA4
_02222E98:
	ldr r1, [r5, #0x24]
	mov r0, r4
	bl ov60_02220130
_02222EA4:
	ldr r1, _02223068 ; =0x022299CC
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	ldrh r0, [r5, #0x20]
	cmp r0, #0x50
	bne _02222ED4
	ldr r2, [r5, #0x18]
	ldr r1, _0222306C ; =0x022299D8
	mov r0, r4
	bl ov60_022203EC
	b _02222F1C
_02222ED4:
	ldr r1, _02223070 ; =0x022299E0
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	ldr r1, [r5, #0x18]
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
	mov r0, r4
	mov r1, #0x3a
	bl ov60_0222046C
	ldrh r1, [r5, #0x20]
	mov r0, r4
	bl ov60_022204CC
	mov r0, r4
	ldr r1, _02223074 ; =0x022299E8
	mov r2, #2
	bl ov60_02220130
_02222F1C:
	ldr r0, [r5, #0x28]
	cmp r0, #0
	beq _02222F38
	ldr r1, _02223078 ; =0x022299EC
	bl sub_020D90B0
	cmp r0, #0
	bne _02222F48
_02222F38:
	ldr r1, _02223078 ; =0x022299EC
	ldr r2, _0222307C ; =0x022299F8
	mov r0, r4
	bl ov60_022203EC
_02222F48:
	ldr r0, [r5, #0x34]
	cmp r0, #0
	beq _02222F68
	ldr r1, _02223080 ; =0x02229A08
	ldr r2, _02223084 ; =0x02229A14
	mov r0, r4
	bl ov60_022203EC
	b _02222F78
_02222F68:
	ldr r1, _02223080 ; =0x02229A08
	ldr r2, _02223088 ; =0x02229A20
	mov r0, r4
	bl ov60_022203EC
_02222F78:
	ldr r0, [r5, #0x13c]
	cmp r0, #0
	beq _02222FBC
	ldr r2, [r5, #0x14c]
	ldr r1, _0222308C ; =0x02229A28
	add r0, sp, #0
	bl sub_020D7510
	ldr r1, _02223090 ; =0x02229A2C
	add r2, sp, #0
	mov r0, r4
	bl ov60_022203EC
	mov r0, r5
	bl ov60_02221924
	mov r2, r0
	ldr r1, _02223094 ; =0x02229A3C
	mov r0, r4
	bl ov60_022203EC
_02222FBC:
	ldr r1, [r5, #0x28]
	cmp r1, #0
	beq _02222FD4
	mov r0, r4
	mov r2, #0
	bl ov60_02220130
_02222FD4:
	ldr r1, _02223074 ; =0x022299E8
	mov r0, r4
	mov r2, #2
	bl ov60_02220130
	add r0, r5, #0x50
	cmp r4, r0
	beq _02222FFC
	ldr r1, [r4, #4]
	ldr r2, [r4, #0xc]
	bl ov60_02220130
_02222FFC:
	mov r0, r5
	bl ov60_02220548
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x60]
	ldr r0, [r5, #0x5c]
	cmp r1, r0
	addlt sp, sp, #0x10
	ldmia sp!,lt {r3, r4, r5, pc}
	add r0, r5, #0x50
	bl ov60_02220504
	ldr r0, [r5, #0x13c]
	mov r1, #0
	cmp r0, #0
	movne r0, #4
	moveq r0, #5
	str r0, [r5, #0x10]
	mov r0, r5
	mov r2, r1
	bl ov60_02220754
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02223058: .word 0x022299B4
_0222305C: .word 0x022299BC
_02223060: .word 0x022299C4
_02223064: .word 0x02229E28
_02223068: .word 0x022299CC
_0222306C: .word 0x022299D8
_02223070: .word 0x022299E0
_02223074: .word 0x022299E8
_02223078: .word 0x022299EC
_0222307C: .word 0x022299F8
_02223080: .word 0x02229A08
_02223084: .word 0x02229A14
_02223088: .word 0x02229A20
_0222308C: .word 0x02229A28
_02223090: .word 0x02229A2C
_02223094: .word 0x02229A3C
	arm_func_end ov60_02222E24

	arm_func_start ov60_02223098
ov60_02223098: ; 0x02223098
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r5, [r6, #0x148]
	bl ov60_02222578
	mov r4, r0
	bne _022230E4
	ldr r0, [r6, #0xfc]
	cmp r0, #0
	ldrne r0, [r6, #0x38]
	cmpne r0, #0
	bne _022230D8
	ldr r0, _02223124 ; =0x02229A4C
	ldr r1, _02223128 ; =0x02229974
	ldr r2, _0222312C ; =0x022298E0
	mov r3, #0x200
	bl sub_020D407C
_022230D8:
	mov r0, r6
	bl ov60_02221EDC
	ldmia sp!, {r4, r5, r6, pc}
_022230E4:
	ldr r0, [r6, #0x148]
	cmp r5, r0
	beq _022230F8
	mov r0, r6
	bl ov60_022207D0
_022230F8:
	cmp r4, #1
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl ov60_02221EDC
	mov r1, #0
	mov r3, #5
	mov r0, r6
	mov r2, r1
	str r3, [r6, #0x10]
	bl ov60_02220754
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02223124: .word 0x02229A4C
_02223128: .word 0x02229974
_0222312C: .word 0x022298E0
	arm_func_end ov60_02223098

	arm_func_start ov60_02223130
ov60_02223130: ; 0x02223130
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r2, #0
	ldr r0, [r4, #0x48]
	add r1, sp, #0
	mov r3, r2
	bl FUN_021EAA74
	mvn r1, #0
	cmp r0, r1
	bne _02223180
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #5
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x48]
	bl FUN_021EAF38
	add sp, sp, #4
	str r0, [r4, #0x4c]
	ldmia sp!, {r3, r4, pc}
_02223180:
	ldr r0, [sp]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	mov r1, #0
	mov r3, #6
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov60_02223130

	arm_func_start ov60_022231B0
ov60_022231B0: ; 0x022231B0
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r4, r0
	bne _022231D4
	ldr r0, _022232DC ; =0x02229968
	ldr r1, _022232E0 ; =0x02229974
	ldr r2, _022232E4 ; =0x022298F0
	ldr r3, _022232E8 ; =0x0000024E
	bl sub_020D407C
_022231D4:
	ldr r0, [r4, #0x80]
	cmp r0, #0
	bgt _022231F4
	ldr r0, _022232EC ; =0x02229A78
	ldr r1, _022232E0 ; =0x02229974
	ldr r2, _022232E4 ; =0x022298F0
	ldr r3, _022232F0 ; =0x0000024F
	bl sub_020D407C
_022231F4:
	add r1, sp, #0xc
	str r1, [sp]
	add r0, sp, #8
	str r0, [sp, #4]
	ldr r0, [r4, #0x78]
	ldr r1, _022232F4 ; =0x02229A98
	add r2, sp, #0x14
	add r3, sp, #0x10
	bl sub_020D8A08
	mov ip, #0
	ldr r5, [sp, #8]
	mov lr, #1
	ldr r2, _022232F8 ; =0x020FE864
	mov r3, ip
	b _02223238
_02223230:
	add r5, r5, #1
	str r5, [sp, #8]
_02223238:
	ldr r1, [r4, #0x78]
	ldrsb r1, [r1, r5]
	cmp r1, #0
	beq _02223274
	mov r6, lr
	blt _02223258
	cmp r1, #0x80
	movlt r6, ip
_02223258:
	cmp r6, #0
	movne r1, r3
	lsleq r1, r1, #1
	ldrheq r1, [r2, r1]
	andeq r1, r1, #0x100
	cmp r1, #0
	bne _02223230
_02223274:
	cmp r0, #3
	bne _02223298
	ldr r1, [sp, #0x14]
	cmp r1, #1
	ldrge r0, [sp, #0xc]
	cmpge r0, #0x64
	blt _02223298
	cmp r0, #0x258
	blt _022232B4
_02223298:
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #7
	str r0, [r4, #0x38]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_022232B4:
	str r1, [r4, #0xe4]
	ldr r1, [sp, #0x10]
	mov r0, #1
	str r1, [r4, #0xe8]
	ldr r1, [sp, #0xc]
	str r1, [r4, #0xec]
	ldr r1, [sp, #8]
	str r1, [r4, #0xf0]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022232DC: .word 0x02229968
_022232E0: .word 0x02229974
_022232E4: .word 0x022298F0
_022232E8: .word 0x0000024E
_022232EC: .word 0x02229A78
_022232F0: .word 0x0000024F
_022232F4: .word 0x02229A98
_022232F8: .word 0x020FE864
	arm_func_end ov60_022231B0

	arm_func_start ov60_022232FC
ov60_022232FC: ; 0x022232FC
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #4
	sub sp, sp, #0x400
	mov r3, #0x400
	add r1, sp, #4
	add r2, sp, #0
	mov r4, r0
	str r3, [sp]
	bl ov60_0222097C
	mov r5, r0
	cmp r5, #3
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r4, r5, pc}
	cmp r5, #1
	ldreq r1, [r4, #0x84]
	ldreq r0, [r4, #0x80]
	cmpeq r1, r0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r4, r5, pc}
	cmp r5, #0
	bne _02223378
	ldr r2, [sp]
	add r1, sp, #4
	add r0, r4, #0x74
	bl ov60_02220130
	cmp r0, #0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r4, r5, pc}
_02223378:
	ldr r0, [r4, #0x78]
	ldr r1, _02223420 ; =0x022299E8
	bl sub_020D90B0
	cmp r0, #0
	beq _022233E8
	mov r1, #0
	strb r1, [r0]
	ldr r1, [r4, #0x78]
	sub r5, r0, r1
	add r1, r5, #1
	mov r0, r4
	str r1, [r4, #0xf8]
	bl ov60_022231B0
	cmp r0, #0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	ldmeqia sp!, {r4, r5, pc}
	add r3, r5, #2
	mov r1, #0
	str r3, [r4, #0x84]
	mov r3, #7
	mov r0, r4
	mov r2, r1
	str r3, [r4, #0x10]
	bl ov60_02220754
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r4, r5, pc}
_022233E8:
	cmp r5, #2
	addne sp, sp, #4
	addne sp, sp, #0x400
	ldmneia sp!, {r4, r5, pc}
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #7
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x48]
	bl FUN_021EAF38
	str r0, [r4, #0x4c]
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02223420: .word 0x022299E8
	arm_func_end ov60_022232FC

	arm_func_start ov60_02223424
ov60_02223424: ; 0x02223424
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x100]
	mov ip, #0
	add r3, r0, r2
	str r3, [r4, #0x100]
	ldr r0, [r4, #0x104]
	mov lr, ip
	cmp r3, r0
	beq _02223458
	ldr r0, [r4, #0x130]
	cmp r0, #0
	beq _02223460
_02223458:
	mov r0, #1
	str r0, [r4, #0xfc]
_02223460:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _0222348C
	add r0, r4, #0xbc
	bl ov60_02220130
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr ip, [r4, #0xc0]
	ldr lr, [r4, #0xc8]
	b _022234CC
_0222348C:
	cmp r0, #1
	bne _022234C0
	cmp r2, #0
	beq _022234B4
	mov r0, #1
	str r0, [r4, #0xfc]
	mov r0, #0xd
	str r0, [r4, #0x38]
	mov r0, #0
	ldmia sp!, {r4, pc}
_022234B4:
	mov ip, r1
	mov lr, r2
	b _022234CC
_022234C0:
	cmp r0, #2
	moveq ip, r1
	moveq lr, r2
_022234CC:
	mov r0, r4
	mov r1, ip
	mov r2, lr
	bl ov60_02220754
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end ov60_02223424

	arm_func_start ov60_022234E4
ov60_022234E4: ; 0x022234E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0x120]
	cmp r0, #0
	bne _02223510
	ldr r0, _02223534 ; =0x02229AA8
	ldr r1, _02223538 ; =0x02229974
	ldr r2, _0222353C ; =0x02229900
	ldr r3, _02223540 ; =0x00000321
	bl sub_020D407C
_02223510:
	ldr r1, _02223544 ; =0x02229AAC
	add r2, sp, #0
	add r0, r4, #0x114
	bl sub_020D8A08
	cmp r0, #1
	mvnne r0, #0
	ldreq r0, [sp]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02223534: .word 0x02229AA8
_02223538: .word 0x02229974
_0222353C: .word 0x02229900
_02223540: .word 0x00000321
_02223544: .word 0x02229AAC
	arm_func_end ov60_022234E4

	arm_func_start ov60_02223548
ov60_02223548: ; 0x02223548
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r7, r1
	mov r6, r2
	bne _02223570
	ldr r0, _022235F8 ; =0x02229968
	ldr r1, _022235FC ; =0x02229974
	ldr r2, _02223600 ; =0x02229948
	ldr r3, _02223604 ; =0x00000333
	bl sub_020D407C
_02223570:
	cmp r7, #0
	bne _0222358C
	ldr r0, _02223608 ; =0x02229AB0
	ldr r1, _022235FC ; =0x02229974
	ldr r2, _02223600 ; =0x02229948
	mov r3, #0x334
	bl sub_020D407C
_0222358C:
	cmp r6, #0
	bge _022235A8
	ldr r0, _0222360C ; =0x02229AB8
	ldr r1, _022235FC ; =0x02229974
	ldr r2, _02223600 ; =0x02229948
	ldr r3, _02223610 ; =0x00000335
	bl sub_020D407C
_022235A8:
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r4, #0x120]
	cmp r3, #0xa
	ldmia sp!,ge {r3, r4, r5, r6, r7, pc}
	neg r5, r3xa
	cmp r5, r6
	movge r5, r6
	add r0, r4, #0x114
	mov r1, r7
	mov r2, r5
	add r0, r0, r3
	bl sub_020D50B8
	ldr r0, [r4, #0x120]
	mov r1, #0
	add r0, r0, r5
	str r0, [r4, #0x120]
	add r0, r4, r0
	strb r1, [r0, #0x114]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022235F8: .word 0x02229968
_022235FC: .word 0x02229974
_02223600: .word 0x02229948
_02223604: .word 0x00000333
_02223608: .word 0x02229AB0
_0222360C: .word 0x02229AB8
_02223610: .word 0x00000335
	arm_func_end ov60_02223548

	arm_func_start ov60_02223614
ov60_02223614: ; 0x02223614
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bne _0222363C
	ldr r0, _02223810 ; =0x02229968
	ldr r1, _02223814 ; =0x02229974
	ldr r2, _02223818 ; =0x0222992C
	ldr r3, _0222381C ; =0x0000035D
	bl sub_020D407C
_0222363C:
	cmp r5, #0
	bne _02223658
	ldr r0, _02223820 ; =0x02229AB0
	ldr r1, _02223814 ; =0x02229974
	ldr r2, _02223818 ; =0x0222992C
	ldr r3, _02223824 ; =0x0000035E
	bl sub_020D407C
_02223658:
	cmp r4, #0
	bgt _02223674
	ldr r0, _02223828 ; =0x02229AC4
	ldr r1, _02223814 ; =0x02229974
	ldr r2, _02223818 ; =0x0222992C
	ldr r3, _0222382C ; =0x0000035F
	bl sub_020D407C
_02223674:
	ldr r0, [r6, #0x110]
	cmp r0, #0
	beq _022237FC
	cmp r4, #0
	ble _022237F4
	mov r8, #0
	mov fp, #1
	mov sb, #3
	mvn r7, #0
_02223698:
	ldr r0, [r6, #0x128]
	cmp r0, #0
	bne _0222372C
	mov r0, r5
	mov r1, #0xa
	bl sub_020D8E5C
	mov sl, r0
	beq _02223714
	mov r0, r6
	mov r1, r5
	sub r2, sl, r5
	bl ov60_02223548
	add r1, sl, #1
	sub r2, r1, r5
	mov r0, r6
	sub r4, r4, r2
	mov r5, r1
	bl ov60_022234E4
	str r0, [r6, #0x124]
	cmp r0, r7
	bne _02223704
	mov r0, #1
	str r0, [r6, #0xfc]
	mov r0, #7
	str r0, [r6, #0x38]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02223704:
	cmp r0, #0
	streq sb, [r6, #0x128]
	strne fp, [r6, #0x128]
	b _022237EC
_02223714:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov60_02223548
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222372C:
	cmp r0, #1
	bne _0222377C
	ldr sl, [r6, #0x124]
	mov r0, r6
	cmp sl, r4
	movge sl, r4
	mov r1, r5
	mov r2, sl
	bl ov60_02223424
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0x124]
	add r5, r5, sl
	sub r0, r0, sl
	str r0, [r6, #0x124]
	moveq r0, #2
	sub r4, r4, sl
	streq r0, [r6, #0x128]
	b _022237EC
_0222377C:
	cmp r0, #2
	bne _022237C0
	mov r0, r5
	mov r1, #0xa
	bl sub_020D8E5C
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	strb r8, [r6, #0x114]
	str r8, [r6, #0x120]
	add r0, r0, #1
	sub r1, r0, r5
	str r8, [r6, #0x124]
	mov r5, r0
	str r8, [r6, #0x128]
	sub r4, r4, r1
	b _022237EC
_022237C0:
	cmp r0, #3
	moveq r0, #1
	streq r0, [r6, #0xfc]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _02223830 ; =0x022299B0
	ldr r1, _02223814 ; =0x02229974
	ldr r2, _02223818 ; =0x0222992C
	ldr r3, _02223834 ; =0x000003E3
	bl sub_020D407C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022237EC:
	cmp r4, #0
	bgt _02223698
_022237F4:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022237FC:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov60_02223424
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02223810: .word 0x02229968
_02223814: .word 0x02229974
_02223818: .word 0x0222992C
_0222381C: .word 0x0000035D
_02223820: .word 0x02229AB0
_02223824: .word 0x0000035E
_02223828: .word 0x02229AC4
_0222382C: .word 0x0000035F
_02223830: .word 0x022299B0
_02223834: .word 0x000003E3
	arm_func_end ov60_02223614

	arm_func_start ov60_02223838
ov60_02223838: ; 0x02223838
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r0
	mov r0, #0x1000
	bl FUN_021D7880
	str r0, [sp, #4]
	cmp r0, #0
	bne _0222386C
	mov r0, #1
	str r0, [sl, #0xfc]
	add sp, sp, #0x18
	str r0, [sl, #0x38]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222386C:
	ldr r1, [sp, #4]
	mov r3, #0x1000
	add r2, sp, #8
	mov r0, sl
	str r3, [sp, #8]
	bl ov60_0222097C
	mov r6, r0
	cmp r6, #3
	beq _02223C74
	cmp r6, #1
	ldreq r1, [sl, #0x84]
	ldreq r0, [sl, #0x80]
	cmpeq r1, r0
	beq _02223C74
	cmp r6, #0
	bne _022238C4
	ldr r2, [sp, #8]
	ldr r1, [sp, #4]
	add r0, sl, #0x74
	bl ov60_02220130
	cmp r0, #0
	beq _02223C74
_022238C4:
	ldr r5, [sl, #0x84]
	ldr r4, [sl, #0x78]
	ldr r1, _02223C84 ; =0x02229ACC
	add r0, r4, r5
	str r5, [sl, #0xf4]
	bl sub_020D90B0
	cmp r0, #0
	bne _022238F0
	ldr r1, _02223C88 ; =0x02229AD4
	add r0, r4, r5
	bl sub_020D90B0
_022238F0:
	cmp r0, #0
	beq _02223C50
	mov r1, #0
	strb r1, [r0, #2]
	ldr r2, [sl, #0x78]
	add r7, r0, #2
	ldr r1, [sl, #0x80]
	sub r3, r7, r2
	str r3, [sl, #0x80]
	add r6, r0, #4
	ldr r3, [sl, #0x78]
	sub r2, r6, r2
	sub r0, r7, r3
	str r0, [sl, #0xf8]
	str r0, [sl, #0x84]
	ldr r3, [sl, #0xec]
	ldr r7, _02223C8C ; =0x51EB851F
	lsr r0, r3, #0x1f
	smull r3, r8, r7, r3
	add r8, r0, r8, asr #5
	cmp r8, #1
	sub r7, r1, r2
	bne _02223998
	cmp r7, #0
	beq _02223974
	ldr r0, [sl, #0x78]
	mov r1, r6
	add r2, r7, #1
	bl sub_020D50D8
	str r7, [sl, #0x80]
	mov r0, #0
	str r0, [sl, #0x84]
	b _0222397C
_02223974:
	add r0, sl, #0x74
	bl ov60_02220504
_0222397C:
	mov r1, #0
	mov r3, #6
	mov r0, sl
	mov r2, r1
	str r3, [sl, #0x10]
	bl ov60_02220754
	b _02223C74
_02223998:
	cmp r8, #3
	bne _02223AE8
	ldr r0, [sl, #0x10c]
	cmp r0, #0xa
	ble _022239C0
	mov r0, #1
	str r0, [sl, #0xfc]
	mov r0, #0xb
	str r0, [sl, #0x38]
	b _02223C74
_022239C0:
	ldr r1, _02223C90 ; =0x02229AD8
	add r0, r4, r5
	bl sub_020D90B0
	cmp r0, #0
	beq _02223AE8
	add r4, r0, #9
	ldr r1, _02223C94 ; =0x020FE864
	mov r2, #0
	b _022239E8
_022239E4:
	add r4, r4, #1
_022239E8:
	ldrsb r0, [r4]
	cmp r0, #0
	blt _022239FC
	cmp r0, #0x80
	blt _02223A04
_022239FC:
	mov r0, r2
	b _02223A10
_02223A04:
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	and r0, r0, #0x100
_02223A10:
	cmp r0, #0
	bne _022239E4
	mov r3, r4
	ldr r1, _02223C94 ; =0x020FE864
	mov r2, #0
	b _02223A2C
_02223A28:
	add r3, r3, #1
_02223A2C:
	ldrsb r0, [r3]
	cmp r0, #0
	beq _02223A60
	blt _02223A44
	cmp r0, #0x80
	blt _02223A4C
_02223A44:
	mov r0, r2
	b _02223A58
_02223A4C:
	lsl r0, r0, #1
	ldrh r0, [r1, r0]
	and r0, r0, #0x100
_02223A58:
	cmp r0, #0
	beq _02223A28
_02223A60:
	mov r0, #0
	strb r0, [r3]
	ldrsb r0, [r4]
	cmp r0, #0x2f
	bne _02223AC4
	ldr r0, [sl, #0x18]
	bl sub_020D8B60
	mov r5, r0
	mov r0, r4
	bl sub_020D8B60
	add r1, r5, #0xe
	add r0, r1, r0
	bl FUN_021D7880
	str r0, [sl, #0x108]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sl, #0xfc]
	streq r0, [sl, #0x38]
	str r4, [sp]
	ldrh r3, [sl, #0x20]
	ldr r0, [sl, #0x108]
	ldr r2, [sl, #0x18]
	ldr r1, _02223C98 ; =0x02229AE4
	bl sub_020D7510
	b _02223C74
_02223AC4:
	mov r0, r4
	bl FUN_021EA8AC
	str r0, [sl, #0x108]
	cmp r0, #0
	bne _02223C74
	mov r0, #1
	str r0, [sl, #0xfc]
	str r0, [sl, #0x38]
	b _02223C74
_02223AE8:
	ldr r1, _02223C9C ; =0x02229AF4
	add r0, r4, r5
	bl sub_020D90B0
	mov fp, r0
	beq _02223BC0
	ldr r8, _02223CA0 ; =0x02228C6C
	add r1, sp, #0xc
	mov r3, #5
_02223B08:
	ldrb r2, [r8]
	ldrb r0, [r8, #1]
	add r8, r8, #2
	strb r2, [r1]
	strb r0, [r1, #1]
	add r1, r1, #2
	sub r3, r3, #1
	bne _02223B08
	ldrb r2, [r8]
	add r8, fp, #0x10
	add r0, sp, #0xc
	mov sb, r8
	strb r2, [r1]
	bl sub_020D8B60
	b _02223B48
_02223B44:
	add sb, sb, #1
_02223B48:
	cmp sb, #0
	ldrsbne r1, [sb]
	cmpne r1, #0
	cmpne r1, #0xa
	cmpne r1, #0xd
	cmpne r1, #0x20
	bne _02223B44
	sub r2, sb, r8
	cmp r2, r0
	ble _02223B84
	mov r0, #1
	str r0, [sl, #0xfc]
	mov r0, #0x10
	str r0, [sl, #0x38]
	b _02223C74
_02223B84:
	cmp r0, r2
	bne _02223BB4
	add r1, sp, #0xc
	mov r0, r8
	bl sub_020D8E28
	cmp r0, #0
	blt _02223BB4
	mov r0, #1
	str r0, [sl, #0xfc]
	mov r0, #0x10
	str r0, [sl, #0x38]
	b _02223C74
_02223BB4:
	mov r0, r8
	bl sub_020DAE0C
	str r0, [sl, #0x104]
_02223BC0:
	ldr r1, _02223CA4 ; =0x02229B04
	add r0, r4, r5
	bl sub_020D90B0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	str r0, [sl, #0x110]
	cmp r0, #0
	beq _02223BF8
	mov r0, #0
	strb r0, [sl, #0x114]
	str r0, [sl, #0x120]
	str r0, [sl, #0x124]
	str r0, [sl, #0x128]
_02223BF8:
	ldr r0, [sl, #0xc]
	sub r0, r0, #3
	cmp r0, #1
	movls r0, #1
	strls r0, [sl, #0xfc]
	bls _02223C74
	mov r0, #8
	str r0, [sl, #0x10]
	cmp fp, #0
	beq _02223C34
	ldr r0, [sl, #0x104]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sl, #0xfc]
	beq _02223C74
_02223C34:
	cmp r7, #0
	ble _02223C74
	mov r0, sl
	mov r1, r6
	mov r2, r7
	bl ov60_02223614
	b _02223C74
_02223C50:
	cmp r6, #2
	bne _02223C74
	mov r0, #1
	str r0, [sl, #0xfc]
	mov r0, #7
	str r0, [sl, #0x38]
	ldr r0, [sl, #0x48]
	bl FUN_021EAF38
	str r0, [sl, #0x4c]
_02223C74:
	ldr r0, [sp, #4]
	bl FUN_021D78B0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02223C84: .word 0x02229ACC
_02223C88: .word 0x02229AD4
_02223C8C: .word 0x51EB851F
_02223C90: .word 0x02229AD8
_02223C94: .word 0x020FE864
_02223C98: .word 0x02229AE4
_02223C9C: .word 0x02229AF4
_02223CA0: .word 0x02228C6C
_02223CA4: .word 0x02229B04
	arm_func_end ov60_02223838

	arm_func_start ov60_02223CA8
ov60_02223CA8: ; 0x02223CA8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	bl FUN_021EA840
	mov r7, r0
	mov r0, #0x2000
	mov r8, #0
	bl FUN_021D7880
	mov r6, r0
	bne _02223CDC
	mov r0, #1
	str r0, [sb, #0xfc]
	str r0, [sb, #0x38]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02223CDC:
	mov r5, #0x2000
	add r4, sp, #0
	b _02223D58
_02223CE8:
	mov r0, sb
	mov r1, r6
	mov r2, r4
	str r5, [sp]
	bl ov60_0222097C
	cmp r0, #3
	cmpne r0, #1
	beq _02223D70
	cmp r0, #2
	bne _02223D38
	mov r0, #1
	str r0, [sb, #0xfc]
	ldr r1, [sb, #0x104]
	cmp r1, #0
	ble _02223D70
	ldr r0, [sb, #0x100]
	cmp r0, r1
	movlt r0, #0xf
	strlt r0, [sb, #0x38]
	b _02223D70
_02223D38:
	ldr r2, [sp]
	mov r0, sb
	mov r1, r6
	bl ov60_02223614
	cmp r0, #0
	beq _02223D70
	bl FUN_021EA840
	sub r8, r0, r7
_02223D58:
	ldr r0, [sb, #0xfc]
	cmp r0, #0
	bne _02223D70
	ldr r0, [sb, #0x158]
	cmp r8, r0
	blo _02223CE8
_02223D70:
	mov r0, r6
	bl FUN_021D78B0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov60_02223CA8

	arm_func_start ov60_02223D7C
ov60_02223D7C: ; 0x02223D7C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	ldr r6, _02223DB8 ; =0x02229E78
	ldr r4, _02223DBC ; =0x02229E70
	mov r5, r7
_02223D90:
	ldr r0, [r6, r7, lsl #2]
	cmp r0, #0
	beq _02223DA8
	ldr r1, [r4, #0]
	blx r1
	str r5, [r6, r7, lsl #2]
_02223DA8:
	add r7, r7, #1
	cmp r7, #3
	blt _02223D90
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02223DB8: .word 0x02229E78
_02223DBC: .word 0x02229E70
	arm_func_end ov60_02223D7C

	arm_func_start ov60_02223DC0
ov60_02223DC0: ; 0x02223DC0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	ldrsb r1, [r6]
	mov r4, r0
	cmp r1, #0
	beq _02223E7C
	mov r0, r6
	bl ov60_02225670
	cmp r0, #0xa
	ble _02223DFC
	ldr r0, _02223E84 ; =0x02229E6C
	mov r1, #7
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02223DFC:
	mov r0, r6
	bl ov60_02225670
	mov r5, r0
	cmp r5, #0xa
	ble _02223E24
	ldr r0, _02223E84 ; =0x02229E6C
	mov r1, #7
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02223E24:
	bl ov60_02223FAC
	ldr r1, _02223E88 ; =0x02229E5C
	add r0, r0, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	ldr r1, _02223E8C ; =0x02229E78
	cmp r0, #0
	str r0, [r1, r4, lsl #2]
	bne _02223E60
	ldr r0, _02223E84 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02223E60:
	mov r1, r6
	mov r2, r5
	bl ov60_02223FC8
	ldr r1, _02223E8C ; =0x02229E78
	mov r2, #0
	ldr r1, [r1, r4, lsl #2]
	strb r2, [r1, r0]
_02223E7C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02223E84: .word 0x02229E6C
_02223E88: .word 0x02229E5C
_02223E8C: .word 0x02229E78
	arm_func_end ov60_02223DC0

	arm_func_start ov60_02223E90
ov60_02223E90: ; 0x02223E90
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov60_02225534
	bl ov60_02223D7C
	mov r1, r6
	mov r0, #0
	bl ov60_02223DC0
	cmp r0, #0
	beq _02223EF0
	mov r1, r5
	mov r0, #1
	bl ov60_02223DC0
	cmp r0, #0
	beq _02223EF0
	mov r1, r4
	mov r0, #2
	bl ov60_02223DC0
	cmp r0, #0
	beq _02223EF0
	bl ov60_02225548
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02223EF0:
	bl ov60_02223D7C
	bl ov60_02225548
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov60_02223E90

	arm_func_start ov60_02223F00
ov60_02223F00: ; 0x02223F00
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov lr, r4
	cmp r2, #0
	ble _02223F40
	mov r3, r4
_02223F18:
	ldrsb ip, [r1]
	cmp ip, #0
	strbeq r3, [r0], #1
	beq _02223F34
	add r4, r4, #1
	add r1, r1, #1
	strb ip, [r0], #1
_02223F34:
	add lr, lr, #1
	cmp lr, r2
	blt _02223F18
_02223F40:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov60_02223F00

	arm_func_start ov60_02223F48
ov60_02223F48: ; 0x02223F48
	cmp r0, #0x41
	blo _02223F5C
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_02223F5C:
	cmp r0, #0x61
	blo _02223F70
	cmp r0, #0x7a
	subls r0, r0, #0x47
	bxls lr
_02223F70:
	cmp r0, #0x30
	blo _02223F84
	cmp r0, #0x39
	addls r0, r0, #4
	bxls lr
_02223F84:
	cmp r0, #0x2e
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2d
	moveq r0, #0x3f
	mvnne r0, #0
	bx lr
	arm_func_end ov60_02223F48

	arm_func_start ov60_02223FA0
ov60_02223FA0: ; 0x02223FA0
	asr r0, r0, #2
	add r0, r0, r0, lsl #1
	bx lr
	arm_func_end ov60_02223FA0

	arm_func_start ov60_02223FAC
ov60_02223FAC: ; 0x02223FAC
	ldr r1, _02223FC4 ; =0x55555556
	add r2, r0, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	lsl r0, r3, #2
	bx lr
	; .align 2, 0
_02223FC4: .word 0x55555556
	arm_func_end ov60_02223FAC

	arm_func_start ov60_02223FC8
ov60_02223FC8: ; 0x02223FC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r2
	mov r8, r1
	mov sb, r0
	cmp r7, #3
	movgt r2, #3
	add r0, sp, #0
	mov r1, r8
	mov r6, #0
	bl ov60_02223F00
	cmp r0, #0
	ble _022240AC
	mov r5, #0
	ldr sl, _022240BC ; =0x02228C78
	mov r4, r5
	mov fp, #0x2a
_02224008:
	cmp r7, #3
	strblt r5, [sp, #2]
	cmp r7, #2
	strblt r4, [sp, #1]
	ldrb r1, [sp, #2]
	ldrb r2, [sp]
	ldrb r3, [sp, #1]
	asr lr, r1, #6
	asr ip, r2, #2
	orr lr, lr, r3, lsl #2
	asr r3, r3, #4
	and ip, ip, #0xff
	orr r2, r3, r2, lsl #4
	ldrsb ip, [sl, ip]
	and r2, r2, #0x3f
	ldrsb r2, [sl, r2]
	strb ip, [sb]
	and ip, lr, #0x3f
	cmp r0, #1
	strb r2, [sb, #1]
	ldrsbgt r2, [sl, ip]
	and r1, r1, #0x3f
	add r8, r8, r0
	movle r2, fp
	cmp r0, #2
	ldrsbgt r1, [sl, r1]
	strb r2, [sb, #2]
	add r6, r6, #4
	movle r1, #0x2a
	strb r1, [sb, #3]
	add sb, sb, #4
	sub r7, r7, r0
	beq _022240AC
	cmp r7, #3
	movgt r2, #3
	movle r2, r7
	add r0, sp, #0
	mov r1, r8
	bl ov60_02223F00
	cmp r0, #0
	bgt _02224008
_022240AC:
	mov r1, #0
	mov r0, r6
	strb r1, [sb]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022240BC: .word 0x02228C78
	arm_func_end ov60_02223FC8

	arm_func_start ov60_022240C0
ov60_022240C0: ; 0x022240C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov sb, r0
	mov r7, r2
	add r0, sp, #3
	mov r2, #4
	mov r6, #0
	mov r8, r1
	bl ov60_02223F00
	mov r5, r0
	mov r4, r6
	b _022241CC
_022240F0:
	ldrb r0, [sp, #3]
	mov r1, #0
	strb r1, [sp]
	strb r1, [sp, #1]
	strb r1, [sp, #2]
	bl ov60_02223F48
	mov r4, r0
	bmi _02224178
	ldrb r0, [sp, #4]
	lsl r1, r4, #2
	strb r1, [sp]
	bl ov60_02223F48
	mov r4, r0
	bmi _02224178
	ldrsb r2, [sp]
	ldrb r0, [sp, #5]
	lsl r1, r4, #4
	orr r2, r2, r4, asr #4
	strb r2, [sp]
	strb r1, [sp, #1]
	bl ov60_02223F48
	mov r4, r0
	bmi _02224178
	ldrsb r2, [sp, #1]
	ldrb r0, [sp, #6]
	lsl r1, r4, #6
	orr r2, r2, r4, asr #2
	strb r1, [sp, #2]
	strb r2, [sp, #1]
	bl ov60_02223F48
	mov r4, r0
	ldrsbpl r0, [sp, #2]
	orrpl r0, r0, r4
	strbpl r0, [sp, #2]
_02224178:
	sub r1, r5, #1
	cmp r1, #0
	mov r2, #0
	ble _022241A0
	add r3, sp, #0
_0222418C:
	ldrsb r0, [r3], #1
	add r2, r2, #1
	cmp r2, r1
	strb r0, [sb], #1
	blt _0222418C
_022241A0:
	sub r0, r5, #1
	sub r7, r7, #4
	cmp r7, #0
	add r8, r8, r5
	add r6, r6, r0
	ble _022241DC
	add r0, sp, #3
	mov r1, r8
	mov r2, #4
	bl ov60_02223F00
	mov r5, r0
_022241CC:
	cmp r5, #0
	ble _022241DC
	cmp r4, #0
	bge _022240F0
_022241DC:
	mov r0, r6
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov60_022240C0

	arm_func_start ov60_022241E8
ov60_022241E8: ; 0x022241E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl ov60_02225670
	ldr r1, _02224230 ; =0x02229E50
	mov r4, r0
	ldr r2, [r1, #0xc]
	add r0, r4, #1
	mov r1, #4
	blx r2
	mov r5, r0
	beq _02224228
	mov r1, r6
	mov r2, r4
	bl ov60_0222569C
	mov r0, #0
	strb r0, [r5, r4]
_02224228:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02224230: .word 0x02229E50
	arm_func_end ov60_022241E8

	arm_func_start ov60_02224234
ov60_02224234: ; 0x02224234
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, _022243C4 ; =0x02229E50
	mov r5, r0
	mov r4, r1
	str r5, [ip, #0xc]
	mov r1, #0
	ldr r0, [sp, #0x20]
	str r4, [ip, #0x20]
	str r0, [ip, #0x18]
	str r1, [ip, #0x1c]
	str r1, [ip, #0x28]
	str r1, [ip, #0x2c]
	str r1, [ip, #0x30]
	str r1, [ip, #4]
	sub r0, r1, #1
	str r0, [ip, #0x24]
	str r1, [ip, #8]
	ldr r0, _022243C8 ; =0x02229E90
	mov r7, r2
	mov r6, r3
	str r1, [ip, #0x10]
	bl ov60_02225610
	ldr r0, _022243CC ; =0x02229ED8
	bl ov60_02224610
	mov r0, r7
	bl ov60_022241E8
	ldr r1, _022243C4 ; =0x02229E50
	cmp r0, #0
	str r0, [r1, #0x10]
	beq _02224380
	mov r0, r6
	bl ov60_022241E8
	ldr r1, _022243C4 ; =0x02229E50
	cmp r0, #0
	str r0, [r1, #8]
	beq _02224380
	ldr r1, [sp, #0x18]
	ldr r0, _022243D0 ; =0x02229E84
	mov r2, #4
	bl ov60_02223FC8
	ldr r1, _022243D0 ; =0x02229E84
	mov r2, #0
	strb r2, [r1, r0]
	ldr r1, [sp, #0x1c]
	ldr r0, _022243D4 ; =0x02229EBC
	mov r2, #0x10
	bl ov60_02223FC8
	ldr r1, _022243D4 ; =0x02229EBC
	mov r2, #0
	strb r2, [r1, r0]
	bl ov60_0222555C
	cmp r0, #0
	beq _0222434C
	bl ov60_02225518
	cmp r0, #0
	beq _0222434C
	mov r0, r5
	mov r1, r4
	mov r2, #0xa
	bl ov60_022257FC
	cmp r0, #0
	beq _02224348
	ldr r0, _022243D8 ; =0x02229EA4
	bl ov60_02224484
	ldr r1, _022243C4 ; =0x02229E50
	str r0, [r1, #4]
	mov r0, #1
	str r0, [r1, #0x14]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02224348:
	bl ov60_02225530
_0222434C:
	ldr r1, _022243C4 ; =0x02229E50
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _022243C4 ; =0x02229E50
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, _022243C4 ; =0x02229E50
	mov r1, #8
	str r1, [r0, #0x1c]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02224380:
	ldr r1, _022243C4 ; =0x02229E50
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _02224398
	ldr r1, [r1, #0x20]
	blx r1
_02224398:
	ldr r1, _022243C4 ; =0x02229E50
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _022243B0
	ldr r1, [r1, #0x20]
	blx r1
_022243B0:
	ldr r0, _022243C4 ; =0x02229E50
	mov r1, #1
	str r1, [r0, #0x1c]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022243C4: .word 0x02229E50
_022243C8: .word 0x02229E90
_022243CC: .word 0x02229ED8
_022243D0: .word 0x02229E84
_022243D4: .word 0x02229EBC
_022243D8: .word 0x02229EA4
	arm_func_end ov60_02224234

	arm_func_start ov60_022243DC
ov60_022243DC: ; 0x022243DC
	stmfd sp!, {r3, lr}
	bl ov60_02223D7C
	bl ov60_02225530
	bl ov60_02225584
	ldr r1, _0222441C ; =0x02229E50
	ldr r0, [r1, #8]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r1, _0222441C ; =0x02229E50
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #0x20]
	blx r1
	ldr r0, _0222441C ; =0x02229E50
	ldr r0, [r0, #0]
	blx r0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222441C: .word 0x02229E50
	arm_func_end ov60_022243DC

	arm_func_start ov60_02224420
ov60_02224420: ; 0x02224420
	ldr r1, _0222443C ; =0x02229E50
	mov r2, #0
	str r2, [r1, #0x14]
	str r0, [r1, #0]
	ldr ip, _02224440 ; =ov60_022258C4
	ldr r0, _02224444 ; =ov60_022243DC
	bx ip
	; .align 2, 0
_0222443C: .word 0x02229E50
_02224440: .word ov60_022258C4
_02224444: .word ov60_022243DC
	arm_func_end ov60_02224420

	arm_func_start ov60_02224448
ov60_02224448: ; 0x02224448
	stmfd sp!, {r4, lr}
	bl ov60_02225588
	cmp r0, #0
	bne _02224474
	bl ov60_02225534
	ldr r0, _02224480 ; =0x02229E74
	ldr r4, [r0, #0]
	bl ov60_02225548
	mov r0, r4
	bl ov60_02226A9C
	ldmia sp!, {r4, pc}
_02224474:
	bl ov60_022255D0
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02224480: .word 0x02229E74
	arm_func_end ov60_02224448

	arm_func_start ov60_02224484
ov60_02224484: ; 0x02224484
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr ip, _02224574 ; =0x02228CBC
	add r3, sp, #0
	mov r4, r0
	mov r2, #6
_0222449C:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	sub r2, r2, #1
	bne _0222449C
	ldrb r1, [ip]
	ldr r0, _02224578 ; =0x02229EFC
	strb r1, [r3]
	bl FUN_021D7EB8
	cmp r0, #0
	beq _02224568
	ldr r0, _0222457C ; =0x02229EFC
	ldr r1, [r0, #0]
	cmp r1, #0
	blt _022244F4
	cmp r1, #0xa
	addlt r0, r1, #0x30
	strblt r0, [sp, #1]
	blt _0222450C
_022244F4:
	cmp r1, #0xa
	blt _0222450C
	cmp r1, #0x64
	bge _0222450C
	add r0, sp, #0
	bl ov60_022256C0
_0222450C:
	ldr r0, _0222457C ; =0x02229EFC
	ldr r0, [r0, #0]
	cmp r0, #4
	cmpne r0, #8
	bne _0222454C
	ldr r0, _0222457C ; =0x02229EFC
	ldr r0, [r0, #4]
	cmp r0, #0
	blt _0222453C
	cmp r0, #0xa
	addlt r0, r0, #0x30
	strblt r0, [sp, #3]
_0222453C:
	ldr r1, _02224580 ; =0x02229F04
	add r0, sp, #4
	mov r2, #9
	bl ov60_0222569C
_0222454C:
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl ov60_02223FC8
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_02224568:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02224574: .word 0x02228CBC
_02224578: .word 0x02229EFC
_0222457C: .word 0x02229EFC
_02224580: .word 0x02229F04
	arm_func_end ov60_02224484

	arm_func_start ov60_02224584
ov60_02224584: ; 0x02224584
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r4, r1
	add r0, sp, #0x10
	mov r1, #0x14
	bl ov60_02225688
	add r0, sp, #0x10
	bl sub_020A283C
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0x14]
	mov r0, #0
	cmp r2, r0
	cmpeq r1, r0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, pc}
	add r0, sp, #0
	mov r3, #0xd
	bl ov60_022256CC
	cmp r0, #0
	addlt sp, sp, #0x24
	movlt r0, #0
	ldmia sp!,lt {r4, r5, pc}
	add r1, sp, #0
	mov r0, r4
	mov r2, #0xd
	bl ov60_02223FC8
	ldr r1, _0222460C ; =0x027FFE0C
	mov r0, r5
	mov r2, #4
	bl ov60_02223FC8
	mov r0, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0222460C: .word 0x027FFE0C
	arm_func_end ov60_02224584

	arm_func_start ov60_02224610
ov60_02224610: ; 0x02224610
	stmfd sp!, {r3, lr}
	ldr r2, _0222462C ; =0x02229C08
	mov r3, #2
	mov r1, #0x21
	str r3, [sp]
	bl sub_020C1AF0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222462C: .word 0x02229C08
	arm_func_end ov60_02224610

	arm_func_start ov60_02224630
ov60_02224630: ; 0x02224630
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sb, r2
	mov sl, r1
	ldr r1, [sb, #8]
	cmp r0, #0
	str r1, [sp, #8]
	ldr r1, [sb, #0xc]
	ldr r5, [sb, #4]
	str r1, [sp, #4]
	mvn r1, #0
	str r1, [sp]
	beq _02224678
	cmp r0, #6
	beq _02224854
	cmp r0, #8
	beq _0222484C
	b _0222485C
_02224678:
	ldr r1, _02224948 ; =0x02229C24
	add r2, sp, #0x14
	mov r0, sl
	bl ov60_02226D88
	cmp r0, #3
	movne r4, #3
	bne _02224860
	ldr r0, [sp, #0x14]
	mov r1, #3
	bl ov60_022256B4
	ldr r1, _0222494C ; =0x0000012E
	cmp r0, r1
	bne _022247C4
	add r1, sp, #0x10
	mov r0, sl
	mov r8, #0
	bl ov60_02226E8C
	mov r6, r0
	movmi r4, #3
	bmi _02224860
	cmp r6, #0
	mov r7, r8
	ble _022247B0
	ldr r4, _02224950 ; =0x02229C34
	mov fp, #8
_022246DC:
	ldr r3, [sp, #0x10]
	mov r1, r7
	add r2, r3, r7
	b _022246F4
_022246EC:
	add r2, r2, #1
	add r7, r7, #1
_022246F4:
	ldrsb r0, [r2]
	cmp r0, #0x3d
	beq _02224708
	cmp r7, r6
	blt _022246EC
_02224708:
	sub r0, r7, r1
	cmp r0, #8
	add r7, r7, #1
	bne _02224734
	add r0, r3, r1
	mov r1, r4
	mov r2, fp
	bl ov60_0222567C
	cmp r0, #0
	moveq r8, #1
	movne r8, #0
_02224734:
	ldr r1, [sp, #0x10]
	mov r3, r7
	add r2, r1, r7
	b _0222474C
_02224744:
	add r2, r2, #1
	add r7, r7, #1
_0222474C:
	ldrsb r0, [r2]
	cmp r0, #0x26
	cmpne r0, #0xd
	cmpne r0, #0
	beq _02224768
	cmp r7, r6
	blt _02224744
_02224768:
	cmp r8, #0
	sub r2, r7, r3
	add r7, r7, #1
	beq _022247A8
	cmp r2, #4
	bne _022247B0
	add r0, sp, #0xc
	add r1, r1, r3
	bl ov60_022240C0
	mov r1, r0
	add r0, sp, #0xc
	mov r2, #0
	strb r2, [r0, r1]
	bl ov60_022256B4
	str r0, [sp]
	b _022247B0
_022247A8:
	cmp r7, r6
	blt _022246DC
_022247B0:
	ldr r0, [sp]
	cmp r0, #0
	movlt r4, #3
	movge r4, #5
	b _02224860
_022247C4:
	cmp r0, #0
	ble _022247D4
	cmp r0, #0xc8
	beq _022247DC
_022247D4:
	mov r4, #3
	b _02224860
_022247DC:
	cmp r5, #1
	beq _022247F8
	cmp r5, #2
	beq _02224814
	cmp r5, #3
	beq _02224830
	b _02224860
_022247F8:
	mov r0, sl
	mov r1, sb
	bl ov60_02225214
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02224860
_02224814:
	mov r0, sl
	mov r1, sb
	bl ov60_02225294
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02224860
_02224830:
	mov r0, sl
	mov r1, sb
	bl ov60_02225268
	cmp r0, #0
	movne r4, #0
	moveq r4, #3
	b _02224860
_0222484C:
	mov r4, #6
	b _02224860
_02224854:
	mov r4, #4
	b _02224860
_0222485C:
	mov r4, #3
_02224860:
	cmp r5, #1
	beq _022248D0
	cmp r5, #2
	beq _0222487C
	cmp r5, #3
	beq _022248C0
	b _022248D0
_0222487C:
	ldr r0, [sb, #0x20]
	cmp r0, #0
	beq _02224894
	ldr r1, _02224954 ; =0x02229E70
	ldr r1, [r1, #0]
	blx r1
_02224894:
	ldr r0, [sb, #0x1c]
	cmp r0, #0
	beq _022248AC
	ldr r1, _02224954 ; =0x02229E70
	ldr r1, [r1, #0]
	blx r1
_022248AC:
	ldr r1, _02224954 ; =0x02229E70
	ldr r0, [sb, #0x18]
	ldr r1, [r1, #0]
	blx r1
	b _022248D0
_022248C0:
	ldr r1, _02224954 ; =0x02229E70
	ldr r0, [sb, #0x10]
	ldr r1, [r1, #0]
	blx r1
_022248D0:
	bl ov60_02225534
	ldr r0, _02224958 ; =0x02229E74
	mvn r1, #0
	str r1, [r0, #0]
	bl ov60_02225548
	mov r0, sl
	bl ov60_02226C04
	ldr r1, _02224954 ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	bl ov60_022255D0
	cmp r4, #0
	ldrne r0, _0222495C ; =0x02229E6C
	strne r4, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0222492C
	ldr r2, [sp]
	ldr r3, [sp, #8]
	mov r0, r5
	mov r1, r4
	blx r3
_0222492C:
	ldr r0, [sp, #4]
	cmp r0, #0
	addeq sp, sp, #0x18
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov60_022255FC
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02224948: .word 0x02229C24
_0222494C: .word 0x0000012E
_02224950: .word 0x02229C34
_02224954: .word 0x02229E70
_02224958: .word 0x02229E74
_0222495C: .word 0x02229E6C
	arm_func_end ov60_02224630

	arm_func_start ov60_02224960
ov60_02224960: ; 0x02224960
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	bl ov60_0222691C
	bl ov60_022255D0
	ldr r1, _02224988 ; =0x02229E70
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02224988: .word 0x02229E70
	arm_func_end ov60_02224960

	arm_func_start ov60_0222498C
ov60_0222498C: ; 0x0222498C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	ldr r0, _02224C44 ; =0x02229F38
	ldr r1, _02224C48 ; =0x02229F44
	mov r6, r2
	mov r5, r3
	bl ov60_02224584
	cmp r0, #0
	bne _022249D0
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #8
	str r1, [r0, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_022249D0:
	ldr r1, _02224C50 ; =0x02229E5C
	mov r0, #0x24
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	mov r4, r0
	bne _02224A04
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02224A04:
	ldr r0, _02224C54 ; =0x02229E68
	mov r1, #0
	ldr r0, [r0, #0]
	str r0, [r4, #8]
	str r1, [r4, #0xc]
	bl ov60_02225588
	cmp r0, #0
	bne _02224A4C
	ldr r1, _02224C58 ; =0x02229E70
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #2
	str r1, [r0, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02224A4C:
	ldr r1, _02224C5C ; =ov60_02224630
	ldr r0, _02224C60 ; =0x02229E60
	stmia sp, {r1, r4}
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x20]
	mov r2, r5
	mov r1, #1
	bl ov60_022263B8
	mov r5, r0
	bne _02224AA0
	bl ov60_022255D0
	ldr r1, _02224C58 ; =0x02229E70
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #3
	str r1, [r0, #0]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02224AA0:
	ldr r1, _02224C64 ; =0x02229C20
	str r4, [r8]
	mov r2, #1
	str r5, [r7, #0]
	bl ov60_02225C10
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C68 ; =0x02229C40
	ldr r2, _02224C6C ; =0x02229ED8
	mov r0, r5
	bl ov60_02225B78
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C70 ; =0x02229C4C
	ldr r2, _02224C74 ; =0x02229E84
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C78 ; =0x02229C54
	ldr r2, _02224C44 ; =0x02229F38
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C7C ; =0x02229C60
	ldr r2, _02224C80 ; =0x02229EBC
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r0, _02224C84 ; =0x02229E58
	ldr r1, _02224C88 ; =0x02229C68
	ldr r2, [r0, #0]
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C8C ; =0x02229C70
	ldr r2, _02224C48 ; =0x02229F44
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C90 ; =0x02229C78
	ldr r2, _02224C94 ; =0x02229E90
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r1, _02224C98 ; =0x02229C80
	mov r0, r5
	mov r2, r6
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
	ldr r0, _02224C9C ; =0x02229E78
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02224BA4
	ldr r1, _02224CA0 ; =0x02229C88
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
_02224BA4:
	ldr r0, _02224C9C ; =0x02229E78
	ldr r2, [r0, #4]
	cmp r2, #0
	beq _02224BC8
	ldr r1, _02224CA4 ; =0x02229C90
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
_02224BC8:
	ldr r0, _02224C9C ; =0x02229E78
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _02224BEC
	ldr r1, _02224CA8 ; =0x02229C98
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
_02224BEC:
	ldr r0, _02224CAC ; =0x02229E54
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02224C14
	ldr r1, _02224CB0 ; =0x02229CA0
	ldr r2, _02224CB4 ; =0x02229EA4
	mov r0, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224C20
_02224C14:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02224C20:
	mov r0, r4
	mov r1, r5
	bl ov60_02224960
	ldr r0, _02224C4C ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02224C44: .word 0x02229F38
_02224C48: .word 0x02229F44
_02224C4C: .word 0x02229E6C
_02224C50: .word 0x02229E5C
_02224C54: .word 0x02229E68
_02224C58: .word 0x02229E70
_02224C5C: .word ov60_02224630
_02224C60: .word 0x02229E60
_02224C64: .word 0x02229C20
_02224C68: .word 0x02229C40
_02224C6C: .word 0x02229ED8
_02224C70: .word 0x02229C4C
_02224C74: .word 0x02229E84
_02224C78: .word 0x02229C54
_02224C7C: .word 0x02229C60
_02224C80: .word 0x02229EBC
_02224C84: .word 0x02229E58
_02224C88: .word 0x02229C68
_02224C8C: .word 0x02229C70
_02224C90: .word 0x02229C78
_02224C94: .word 0x02229E90
_02224C98: .word 0x02229C80
_02224C9C: .word 0x02229E78
_02224CA0: .word 0x02229C88
_02224CA4: .word 0x02229C90
_02224CA8: .word 0x02229C98
_02224CAC: .word 0x02229E54
_02224CB0: .word 0x02229CA0
_02224CB4: .word 0x02229EA4
	arm_func_end ov60_0222498C

	arm_func_start ov60_02224CB8
ov60_02224CB8: ; 0x02224CB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	bl ov60_02225534
	mov r0, r4
	bl ov60_02226A10
	ldr r1, _02224D10 ; =0x02229E74
	str r0, [r5, #0]
	str r0, [r1, #0]
	bl ov60_02225548
	ldr r0, [r5, #0]
	cmp r0, #0
	movge r0, #1
	ldmia sp!,ge {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov60_02224960
	ldr r0, _02224D14 ; =0x02229E6C
	mov r1, #3
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02224D10: .word 0x02229E74
_02224D14: .word 0x02229E6C
	arm_func_end ov60_02224CB8

	arm_func_start ov60_02224D18
ov60_02224D18: ; 0x02224D18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r2, _02224D84 ; =0x02228CD8
	mov r4, r0
	mov ip, #0x80
	ldr r3, _02224D88 ; =0x02229F5C
	add r0, sp, #8
	add r1, sp, #4
	str ip, [sp]
	bl ov60_0222498C
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [sp, #8]
	mov r1, #1
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r4, [r0, #0x10]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224CB8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02224D84: .word 0x02228CD8
_02224D88: .word 0x02229F5C
	arm_func_end ov60_02224D18

	arm_func_start ov60_02224D8C
ov60_02224D8C: ; 0x02224D8C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x18
	mov r4, r2
	mov r6, r1
	ldr r1, _02225034 ; =0x02229E5C
	lsl r7, r4, #8
	cmp r7, #0x80
	ldr r2, [r1, #0]
	movlt r7, #0x80
	mov r5, r0
	mov r0, r7
	mov r1, #4
	blx r2
	mov r8, r0
	bne _02224DE0
	ldr r0, _02225038 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224DE0:
	add r0, sp, #0xc
	mov r1, r6
	bl ov60_022256C0
	mov r6, r0
	bl ov60_02223FAC
	ldr r1, _02225034 ; =0x02229E5C
	add r0, r0, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	mov sb, r0
	bne _02224E38
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02225038 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224E38:
	add r1, sp, #0xc
	mov r2, r6
	bl ov60_02223FC8
	mov r1, #0
	strb r1, [sb, r0]
	add r0, sp, #0xc
	mov r1, r4
	bl ov60_022256C0
	mov r6, r0
	bl ov60_02223FAC
	ldr r1, _02225034 ; =0x02229E5C
	add r0, r0, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	mov sl, r0
	bne _02224EB4
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _02225038 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224EB4:
	add r1, sp, #0xc
	mov r2, r6
	bl ov60_02223FC8
	mov r1, #0
	strb r1, [sl, r0]
	ldr r2, _02225040 ; =0x02228CCC
	add r0, sp, #8
	add r1, sp, #4
	mov r3, r8
	str r7, [sp]
	bl ov60_0222498C
	cmp r0, #0
	bne _02224F24
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sl
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224F24:
	ldr r0, [sp, #4]
	ldr r1, _02225044 ; =0x02229CA8
	mov r2, sb
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224FE0
	ldr r0, [sp, #4]
	ldr r1, _02225048 ; =0x02229CB0
	mov r2, sl
	bl ov60_02225B9C
	cmp r0, #0
	beq _02224FE0
	ldr r0, [sp, #8]
	mov r1, #2
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r5, [r0, #0x10]
	ldr r0, [sp, #8]
	str sb, [r0, #0x1c]
	ldr r0, [sp, #8]
	str sl, [r0, #0x20]
	ldr r0, [sp, #8]
	str r4, [r0, #0x14]
	ldr r0, [sp, #8]
	str r8, [r0, #0x18]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224CB8
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sl
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02224FE0:
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sl
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _0222503C ; =0x02229E70
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224960
	ldr r0, _02225038 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02225034: .word 0x02229E5C
_02225038: .word 0x02229E6C
_0222503C: .word 0x02229E70
_02225040: .word 0x02228CCC
_02225044: .word 0x02229CA8
_02225048: .word 0x02229CB0
	arm_func_end ov60_02224D8C

	arm_func_start ov60_0222504C
ov60_0222504C: ; 0x0222504C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r0
	ldr r3, [r8, #0xac]
	mov r7, r1
	cmp r2, r3
	bhs _02225080
	ldr r0, _022251F4 ; =0x02229E6C
	mov r1, #7
	str r1, [r0, #0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02225080:
	bl ov60_02225670
	mov r4, r0
	cmp r4, #0x20
	ble _022250A8
	ldr r0, _022251F4 ; =0x02229E6C
	mov r1, #7
	str r1, [r0, #0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022250A8:
	cmp r4, #0
	movle r6, #0
	ble _022250BC
	bl ov60_02223FAC
	mov r6, r0
_022250BC:
	ldr r1, _022251F8 ; =0x02229E5C
	add r0, r6, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	mov r5, r0
	bne _022250F0
	ldr r0, _022251F4 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022250F0:
	ldr ip, [r8, #0xac]
	ldr r2, _022251FC ; =0x02228CE4
	add r0, sp, #8
	add r1, sp, #4
	mov r3, r7
	str ip, [sp]
	bl ov60_0222498C
	cmp r0, #0
	bne _02225130
	ldr r1, _02225200 ; =0x02229E70
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02225130:
	cmp r6, #0
	ble _02225168
	mov r0, r5
	mov r1, r8
	mov r2, r4
	bl ov60_02223FC8
	mov r1, #0
	strb r1, [r5, r0]
	ldr r0, [sp, #4]
	ldr r1, _02225204 ; =0x02229CB4
	mov r2, r5
	bl ov60_02225B9C
	cmp r0, #0
	beq _022251C0
_02225168:
	ldr r0, [sp, #8]
	mov r1, #3
	str r1, [r0, #4]
	ldr r0, [sp, #8]
	str r5, [r0, #0x10]
	ldr r1, [r8, #0xac]
	ldr r0, [sp, #8]
	str r1, [r0, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224CB8
	cmp r0, #0
	addne sp, sp, #0xc
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _02225200 ; =0x02229E70
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_022251C0:
	ldr r0, [sp, #8]
	ldr r1, [sp, #4]
	bl ov60_02224960
	ldr r1, _02225200 ; =0x02229E70
	mov r0, r5
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _022251F4 ; =0x02229E6C
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022251F4: .word 0x02229E6C
_022251F8: .word 0x02229E5C
_022251FC: .word 0x02228CE4
_02225200: .word 0x02229E70
_02225204: .word 0x02229CB4
	arm_func_end ov60_0222504C

	arm_func_start ov60_02225208
ov60_02225208: ; 0x02225208
	ldr ip, _02225210 ; =ov60_02227184
	bx ip
	; .align 2, 0
_02225210: .word ov60_02227184
	arm_func_end ov60_02225208

	arm_func_start ov60_02225214
ov60_02225214: ; 0x02225214
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	add r1, sp, #0
	bl ov60_02226E8C
	mov r1, r0
	bmi _0222525C
	ldr r0, [sp]
	bl ov60_022256B4
	ldr r1, [r4, #0x10]
	add sp, sp, #4
	str r0, [r1, #0]
	ldr r0, [r4, #0x10]
	ldr r0, [r0, #0]
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, r4, pc}
_0222525C:
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov60_02225214

	arm_func_start ov60_02225268
ov60_02225268: ; 0x02225268
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r1
	add r1, sp, #0
	bl ov60_02226E8C
	ldr r1, [r4, #0x14]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov60_02225268

	arm_func_start ov60_02225294
ov60_02225294: ; 0x02225294
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r2, [r1, #0x14]
	str r1, [sp]
	mov r1, #0xb0
	mul r1, r2
	mov r4, r0
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0x10]
	str r2, [sp, #4]
	bl ov60_02225688
	ldr r1, _02225514 ; =0x02229CC0
	add r2, sp, #0x10
	mov r0, r4
	bl ov60_02226D88
	cmp r0, #0
	ble _022252FC
	ldr r1, [sp, #0x10]
	ldrsb r0, [r1]
	cmp r0, #0x30
	ldrsbeq r0, [r1, #1]
	cmpeq r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022252FC:
	add r1, sp, #0x14
	mov r0, r4
	bl ov60_02226E8C
	mov r4, r0
	cmp r4, #0
	ble _02225508
	ldr r0, [sp]
	mov r5, #0
	ldr r0, [r0, #0x14]
	str r5, [sp, #0xc]
	cmp r0, #0
	ble _02225508
	str r5, [sp, #8]
_02225330:
	cmp r5, r4
	movge r0, #1
	strge r0, [sp, #4]
	bge _02225508
	ldr r0, [sp]
	mov r6, #0
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #8]
	mov r7, r5
	mov r2, r6
	str r6, [sp, #4]
	cmp r5, r4
	add r8, r1, r0
	bge _022254E0
	mov sl, r6
	mov fp, #1
_02225370:
	ldr r3, [sp, #0x14]
	ldrsb r0, [r3, r5]
	cmp r0, #0xd
	moveq r2, fp
	beq _022254D4
	cmp r2, #0
	beq _022253DC
	cmp r0, #0xa
	bne _022254D0
	cmp r6, #5
	bne _022253C0
	sub r0, r5, #1
	sub r1, r0, r7
	cmp r1, #8
	bgt _02225508
	add r0, r3, r7
	bl ov60_022256B4
	cmp r0, #0
	blt _02225508
	str r0, [r8, #0xac]
_022253C0:
	cmp r6, #5
	movge r0, #1
	strge r0, [sp, #4]
	movlt r0, #0
	add r5, r5, #1
	strlt r0, [sp, #4]
	b _022254E0
_022253DC:
	cmp r0, #9
	bne _022254D0
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _022254C8
_022253F0: ; jump table
	b _02225408 ; case 0
	b _02225424 ; case 1
	b _02225454 ; case 2
	b _02225470 ; case 3
	b _0222548C ; case 4
	b _022254A8 ; case 5
_02225408:
	sub r2, r5, r7
	cmp r2, #0x20
	bhi _02225508
	add r1, r3, r7
	mov r0, r8
	bl ov60_0222569C
	b _022254C8
_02225424:
	sub sb, r5, r7
	mov r0, sb
	bl ov60_02223FA0
	cmp r0, #0x66
	bhi _02225508
	ldr r0, [sp, #0x14]
	mov r2, sb
	add r1, r0, r7
	add r0, r8, #0x22
	bl ov60_022240C0
	strh sl, [r8, #0x86]
	b _022254C8
_02225454:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _02225508
	add r1, r3, r7
	add r0, r8, #0x88
	bl ov60_0222569C
	b _022254C8
_02225470:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _02225508
	add r1, r3, r7
	add r0, r8, #0x93
	bl ov60_0222569C
	b _022254C8
_0222548C:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _02225508
	add r1, r3, r7
	add r0, r8, #0x9e
	bl ov60_0222569C
	b _022254C8
_022254A8:
	sub r1, r5, r7
	cmp r1, #8
	bgt _02225508
	add r0, r3, r7
	bl ov60_022256B4
	cmp r0, #0
	blt _02225508
	str r0, [r8, #0xac]
_022254C8:
	add r6, r6, #1
	add r7, r5, #1
_022254D0:
	mov r2, #0
_022254D4:
	add r5, r5, #1
	cmp r5, r4
	blt _02225370
_022254E0:
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	ldr r0, [sp, #8]
	add r0, r0, #0xb0
	str r0, [sp, #8]
	blt _02225330
_02225508:
	ldr r0, [sp, #4]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02225514: .word 0x02229CC0
	arm_func_end ov60_02225294

	arm_func_start ov60_02225518
ov60_02225518: ; 0x02225518
	stmfd sp!, {r3, lr}
	ldr r0, _0222552C ; =0x02229FF8
	bl sub_020C29C0
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222552C: .word 0x02229FF8
	arm_func_end ov60_02225518

	arm_func_start ov60_02225530
ov60_02225530: ; 0x02225530
	bx lr
	arm_func_end ov60_02225530

	arm_func_start ov60_02225534
ov60_02225534: ; 0x02225534
	ldr ip, _02225540 ; =sub_020C29D8
	ldr r0, _02225544 ; =0x02229FF8
	bx ip
	; .align 2, 0
_02225540: .word sub_020C29D8
_02225544: .word 0x02229FF8
	arm_func_end ov60_02225534

	arm_func_start ov60_02225548
ov60_02225548: ; 0x02225548
	ldr ip, _02225554 ; =sub_020C2A5C
	ldr r0, _02225558 ; =0x02229FF8
	bx ip
	; .align 2, 0
_02225554: .word sub_020C2A5C
_02225558: .word 0x02229FF8
	arm_func_end ov60_02225548

	arm_func_start ov60_0222555C
ov60_0222555C: ; 0x0222555C
	stmfd sp!, {r3, lr}
	ldr r0, _0222557C ; =0x02229FE0
	bl sub_020C29C0
	ldr r0, _02225580 ; =0x02229FDC
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222557C: .word 0x02229FE0
_02225580: .word 0x02229FDC
	arm_func_end ov60_0222555C

	arm_func_start ov60_02225584
ov60_02225584: ; 0x02225584
	bx lr
	arm_func_end ov60_02225584

	arm_func_start ov60_02225588
ov60_02225588: ; 0x02225588
	stmfd sp!, {r4, lr}
	ldr r0, _022255C8 ; =0x02229FE0
	bl sub_020C29D8
	ldr r0, _022255CC ; =0x02229FDC
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	ldrne r0, _022255CC ; =0x02229FDC
	movne r1, #1
	strne r1, [r0]
	ldr r0, _022255C8 ; =0x02229FE0
	bl sub_020C2A5C
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022255C8: .word 0x02229FE0
_022255CC: .word 0x02229FDC
	arm_func_end ov60_02225588

	arm_func_start ov60_022255D0
ov60_022255D0: ; 0x022255D0
	stmfd sp!, {r3, lr}
	ldr r0, _022255F4 ; =0x02229FE0
	bl sub_020C29D8
	ldr r1, _022255F8 ; =0x02229FDC
	mov r2, #0
	ldr r0, _022255F4 ; =0x02229FE0
	str r2, [r1, #0]
	bl sub_020C2A5C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022255F4: .word 0x02229FE0
_022255F8: .word 0x02229FDC
	arm_func_end ov60_022255D0

	arm_func_start ov60_022255FC
ov60_022255FC: ; 0x022255FC
	ldr ip, _0222560C ; =sub_020C2770
	mov r1, #0
	mov r2, r1
	bx ip
	; .align 2, 0
_0222560C: .word sub_020C2770
	arm_func_end ov60_022255FC

	arm_func_start ov60_02225610
ov60_02225610: ; 0x02225610
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	add r0, sp, #0
	bl sub_020C3FA0
	mov r6, #0
	add r7, sp, #0
	mov r8, r6
	add r5, sp, #6
	mov r4, #2
_02225638:
	ldrb r1, [r7], #1
	mov r2, r4
	add r0, r5, r8
	bl ov60_022257A4
	add r6, r6, #1
	cmp r6, #6
	add r8, r8, #2
	blt _02225638
	add r1, sp, #6
	mov r0, sb
	mov r2, #0xc
	bl ov60_02223FC8
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov60_02225610

	arm_func_start ov60_02225670
ov60_02225670: ; 0x02225670
	ldr ip, _02225678 ; =sub_020D33B4
	bx ip
	; .align 2, 0
_02225678: .word sub_020D33B4
	arm_func_end ov60_02225670

	arm_func_start ov60_0222567C
ov60_0222567C: ; 0x0222567C
	ldr ip, _02225684 ; =sub_020D3408
	bx ip
	; .align 2, 0
_02225684: .word sub_020D3408
	arm_func_end ov60_0222567C

	arm_func_start ov60_02225688
ov60_02225688: ; 0x02225688
	ldr ip, _02225698 ; =sub_020C4CF4
	mov r2, r1
	mov r1, #0
	bx ip
	; .align 2, 0
_02225698: .word sub_020C4CF4
	arm_func_end ov60_02225688

	arm_func_start ov60_0222569C
ov60_0222569C: ; 0x0222569C
	ldr ip, _022256B0 ; =sub_020C4DB0
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	; .align 2, 0
_022256B0: .word sub_020C4DB0
	arm_func_end ov60_0222569C

	arm_func_start ov60_022256B4
ov60_022256B4: ; 0x022256B4
	ldr ip, _022256BC ; =ov60_02228980
	bx ip
	; .align 2, 0
_022256BC: .word ov60_02228980
	arm_func_end ov60_022256B4

	arm_func_start ov60_022256C0
ov60_022256C0: ; 0x022256C0
	ldr ip, _022256C8 ; =ov60_02228A18
	bx ip
	; .align 2, 0
_022256C8: .word ov60_02228A18
	arm_func_end ov60_022256C0

	arm_func_start ov60_022256CC
ov60_022256CC: ; 0x022256CC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, r2
	ldr r4, _02225798 ; =0x01634578
	ldr r2, _0222579C ; =0x5D8A0000
	mov sb, r1
	cmp r8, r4
	mov sl, r0
	mov fp, r3
	mov r5, #0
	cmpeq sb, r2
	subhs r0, r5, #1
	ldmia sp!,hs {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, r5
	mov r0, r5
_02225704:
	ldr r1, _022257A0 ; =0x02228CF4
	add r1, r1, r4, lsl #3
	ldr r6, [r1, #4]
	ldr r1, _022257A0 ; =0x02228CF4
	cmp r8, r6
	ldr r7, [r1, r4, lsl #3]
	cmpeq sb, r7
	blo _0222575C
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl sub_020E1ED4
	umull r3, r2, r0, r7
	mla r2, r0, r6, r2
	add r0, r0, #0x30
	strb r0, [sl, r5]
	sub sb, sb, r3
	sbc r8, r8, r2
	mov r0, #1
	add r5, r5, #1
	b _0222577C
_0222575C:
	cmp r0, #0
	bne _02225770
	neg r1, r4x11
	cmp r1, fp
	bgt _0222577C
_02225770:
	mov r1, #0x30
	strb r1, [sl, r5]
	add r5, r5, #1
_0222577C:
	add r4, r4, #1
	cmp r4, #0x10
	blt _02225704
	add r0, sb, #0x30
	strb r0, [sl, r5]
	add r0, r5, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02225798: .word 0x01634578
_0222579C: .word 0x5D8A0000
_022257A0: .word 0x02228CF4
	arm_func_end ov60_022256CC

	arm_func_start ov60_022257A4
ov60_022257A4: ; 0x022257A4
	stmfd sp!, {r3, lr}
	mov lr, #0
	cmp r2, #8
	subgt r0, lr, #1
	ldmia sp!,gt {r3, pc}
	cmp r2, #1
	mov ip, #1
	blt _022257F4
_022257C4:
	sub r3, r2, ip
	lsl r3, r3, #2
	lsr r3, r1, r3
	and r3, r3, #0xf
	cmp r3, #0xa
	addlo r3, r3, #0x30
	addhs r3, r3, #0x57
	add ip, ip, #1
	strb r3, [r0, lr]
	add lr, lr, #1
	cmp ip, r2
	ble _022257C4
_022257F4:
	mov r0, lr
	ldmia sp!, {r3, pc}
	arm_func_end ov60_022257A4

	arm_func_start ov60_022257FC
ov60_022257FC: ; 0x022257FC
	stmfd sp!, {r4, lr}
	ldr r3, _022258C0 ; =0x0222A010
	mov ip, #0
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	str ip, [r3, #4]
	str ip, [r3, #0x1c]
	str ip, [r3, #0x20]
	str ip, [r3, #0x10]
	mov r4, r2
	str ip, [r3, #0x14]
	bl ov60_02225E1C
	cmp r0, #0
	bne _02225848
	ldr r0, _022258C0 ; =0x0222A010
	mov r1, #9
	str r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r4, pc}
_02225848:
	ldr r1, _022258C0 ; =0x0222A010
	mov r0, #0x2000
	ldr r2, [r1, #8]
	mov r1, #8
	blx r2
	mov r1, r0
	ldr r0, _022258C0 ; =0x0222A010
	str r1, [r0, #0x18]
	bne _02225880
	mov r1, #1
	str r1, [r0, #4]
	bl ov60_02225E34
	mov r0, #0
	ldmia sp!, {r4, pc}
_02225880:
	mov r0, r4
	bl ov60_02225E60
	cmp r0, #0
	ldrne r1, _022258C0 ; =0x0222A010
	movne r0, #1
	strne r0, [r1]
	ldmneia sp!, {r4, pc}
	ldr r1, _022258C0 ; =0x0222A010
	mov r0, #9
	str r0, [r1, #4]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0xc]
	blx r1
	bl ov60_02225E34
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022258C0: .word 0x0222A010
	arm_func_end ov60_022257FC

	arm_func_start ov60_022258C4
ov60_022258C4: ; 0x022258C4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r2, r0
	mov ip, #0x800
	ldr r0, _02225900 ; =0x0222A034
	ldr r1, _02225904 ; =ov60_0222590C
	ldr r3, _02225908 ; =0x0222A8F4
	str ip, [sp]
	mov ip, #0x10
	str ip, [sp, #4]
	bl sub_020C1F34
	ldr r0, _02225900 ; =0x0222A034
	bl sub_020C22D0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225900: .word 0x0222A034
_02225904: .word ov60_0222590C
_02225908: .word 0x0222A8F4
	arm_func_end ov60_022258C4

	arm_func_start ov60_0222590C
ov60_0222590C: ; 0x0222590C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov60_02226B18
	bl ov60_02225ED8
	ldr r1, _02225944 ; =0x0222A010
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0xc]
	blx r1
	bl ov60_02225E34
	ldr r0, _02225944 ; =0x0222A010
	mov r1, #0
	str r1, [r0, #0]
	blx r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02225944: .word 0x0222A010
	arm_func_end ov60_0222590C

	arm_func_start ov60_02225948
ov60_02225948: ; 0x02225948
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr sl, [sb]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp sl, #0
	mov r4, #0
	beq _022259C4
	ldr r1, [sl, #8]
	mov r0, r8
	mov r5, sl
	bl ov60_02228AD4
	cmp r0, #0
	beq _022259C0
	ldr r5, [sl, #4]
	ldr r0, [sb]
	cmp r5, r0
	beq _022259C4
_02225994:
	ldr r1, [r5, #8]
	mov r0, r8
	bl ov60_02228AD4
	cmp r0, #0
	moveq r4, #1
	beq _022259C4
	ldr r5, [r5, #4]
	ldr r0, [sb]
	cmp r5, r0
	bne _02225994
	b _022259C4
_022259C0:
	mov r4, #1
_022259C4:
	cmp r4, #0
	strne r7, [r5, #0xc]
	bne _02225A50
	ldr r1, _02225A58 ; =0x0222A018
	mov r0, r6
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	cmp r0, #0
	bne _02225A00
	ldr r0, _02225A5C ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02225A00:
	str r8, [r0, #8]
	str r7, [r0, #0xc]
	mov r1, #0
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	ldr r1, [sb]
	cmp r1, #0
	streq r0, [r0, #4]
	streq r0, [r0]
	streq r0, [sb]
	beq _02225A50
	ldr r1, [r1, #0]
	str r1, [r0, #0]
	ldr r1, [sb]
	str r1, [r0, #4]
	ldr r1, [sb]
	ldr r1, [r1, #0]
	str r0, [r1, #4]
	ldr r1, [sb]
	str r0, [r1, #0]
_02225A50:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02225A58: .word 0x0222A018
_02225A5C: .word 0x0222A014
	arm_func_end ov60_02225948

	arm_func_start ov60_02225A60
ov60_02225A60: ; 0x02225A60
	ldr r3, [r0, #0]
	cmp r3, #0
	beq _02225A9C
	ldr r2, [r3, #0]
	cmp r3, r2
	moveq r1, #0
	streq r1, [r0]
	beq _02225A9C
	ldr r1, [r3, #4]
	str r1, [r2, #4]
	ldr r2, [r3, #0]
	ldr r1, [r3, #4]
	str r2, [r1, #0]
	ldr r1, [r3, #4]
	str r1, [r0, #0]
_02225A9C:
	mov r0, r3
	bx lr
	arm_func_end ov60_02225A60

	arm_func_start ov60_02225AA4
ov60_02225AA4: ; 0x02225AA4
	add r0, r0, #1
	and r0, r0, #0xff
	cmp r0, #0x7b
	moveq r0, #0x30
	beq _02225ACC
	cmp r0, #0x5b
	moveq r0, #0x61
	beq _02225ACC
	cmp r0, #0x3a
	moveq r0, #0x41
_02225ACC:
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	bx lr
	arm_func_end ov60_02225AA4

	arm_func_start ov60_02225AD8
ov60_02225AD8: ; 0x02225AD8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r0, sb
	mov r1, r8
	add r2, sl, #0x46
	mov r3, #0x12
	bl ov60_02228BC8
	cmp r0, #0
	movlt r0, #1
	ldmia sp!,lt {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r6, _02225B74 ; =0x02228D87
	mov fp, #0x13
	mov r4, #0x12
_02225B14:
	add r7, sl, fp
	ldrsb r5, [r7, #0x44]
_02225B1C:
	and r0, r5, #0xff
	bl ov60_02225AA4
	mov r5, r0
	strb r5, [r7, #0x44]
	ldrsb r0, [r6]
	cmp r5, r0
	beq _02225B5C
	mov r0, sb
	mov r1, r8
	mov r3, r4
	add r2, sl, #0x46
	bl ov60_02228BC8
	cmp r0, #0
	bge _02225B1C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02225B5C:
	sub fp, fp, #1
	cmp fp, #2
	sub r6, r6, #1
	bge _02225B14
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02225B74: .word 0x02228D87
	arm_func_end ov60_02225AD8

	arm_func_start ov60_02225B78
ov60_02225B78: ; 0x02225B78
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	cmp r3, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, r0, #0x34
	mov r3, #0x18
	bl ov60_02225948
	ldmia sp!, {r3, pc}
	arm_func_end ov60_02225B78

	arm_func_start ov60_02225B9C
ov60_02225B9C: ; 0x02225B9C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	ldr r0, [r8]
	mov r7, r1
	mov r6, r2
	mov r5, #0
	cmp r0, #0
	movne r0, r5
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r6
	bl ov60_0222714C
	mov r4, r0
	mov r0, r8
	mov r1, r6
	mov r2, r4
	bl ov60_02225AD8
	cmp r0, #0
	beq _02225C08
	mov r1, r7
	mov r2, r6
	add r0, r8, #0x38
	mov r3, #0x18
	bl ov60_02225948
	mov r5, r0
	ldrne r0, [r8, #0x38]
	ldrne r0, [r0]
	strne r4, [r0, #0x10]
_02225C08:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_02225B9C

	arm_func_start ov60_02225C10
ov60_02225C10: ; 0x02225C10
	ldr r3, [r0, #0]
	cmp r3, #0
	movne r0, #0
	streq r1, [r0, #0x1c]
	streq r2, [r0, #0x18]
	moveq r0, #1
	bx lr
	arm_func_end ov60_02225C10

	arm_func_start ov60_02225C2C
ov60_02225C2C: ; 0x02225C2C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02225CD4 ; =0x0222A018
	mov r4, r0
	ldr r2, [r1, #0]
	mov r0, #0x14
	mov r1, #4
	mvn r5, #0
	blx r2
	cmp r0, #0
	beq _02225CCC
	ldr r1, _02225CD8 ; =0x0222A030
	ldr r2, [r1, #0]
	cmp r2, #0
	streq r0, [r0]
	streq r0, [r0, #4]
	streq r0, [r1]
	beq _02225C94
	ldr r2, [r2, #0]
	str r2, [r0, #0]
	ldr r2, [r1, #0]
	str r2, [r0, #4]
	ldr r2, [r1, #0]
	ldr r2, [r2, #0]
	str r0, [r2, #4]
	ldr r1, [r1, #0]
	str r0, [r1, #0]
_02225C94:
	ldr r1, _02225CDC ; =0x0222A02C
	mvn r2, #0
	ldr ip, [r1]
	ldr r3, [r1, #0]
	add r3, r3, #1
	str r3, [r1, #0]
	str ip, [r0, #8]
	str r4, [r0, #0xc]
	str r2, [r0, #0x10]
	ldr r2, [r1, #0]
	ldr r5, [r0, #8]
	cmp r2, #0
	movlt r0, #0
	strlt r0, [r1]
_02225CCC:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02225CD4: .word 0x0222A018
_02225CD8: .word 0x0222A030
_02225CDC: .word 0x0222A02C
	arm_func_end ov60_02225C2C

	arm_func_start ov60_02225CE0
ov60_02225CE0: ; 0x02225CE0
	ldr r1, _02225D34 ; =0x0222A030
	mov r2, #0
	ldr r3, [r1, #0]
	cmp r3, #0
	beq _02225D2C
	ldr r1, [r3, #8]
	cmp r1, r0
	moveq r2, r3
	beq _02225D2C
	ldr ip, [r3, #4]
	cmp ip, r3
	beq _02225D2C
_02225D10:
	ldr r1, [ip, #8]
	cmp r1, r0
	moveq r2, ip
	beq _02225D2C
	ldr ip, [ip, #4]
	cmp ip, r3
	bne _02225D10
_02225D2C:
	mov r0, r2
	bx lr
	; .align 2, 0
_02225D34: .word 0x0222A030
	arm_func_end ov60_02225CE0

	arm_func_start ov60_02225D38
ov60_02225D38: ; 0x02225D38
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, #0
	bl ov60_02225CE0
	mov r4, r0
	beq _02225DC8
	ldr r0, _02225DD0 ; =0x0222A030
	ldr r2, [r0, #0]
	ldr r1, [r2, #0]
	cmp r2, r1
	beq _02225D88
	ldmia r4, {r1, r2}
	str r2, [r1, #4]
	ldr r2, [r4, #0]
	ldr r1, [r4, #4]
	str r2, [r1, #0]
	ldr r1, [r0, #0]
	cmp r1, r4
	ldreq r1, [r4, #4]
	streq r1, [r0]
	b _02225D90
_02225D88:
	mov r1, r5
	str r1, [r0, #0]
_02225D90:
	ldr r0, [r4, #0xc]
	ldr r5, [r0, #0x3c]
	ldr r6, [r0, #0x30]
	ldr r7, [r0, #0x2c]
	bl ov60_02226998
	ldr r1, _02225DD4 ; =0x0222A01C
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	mov r1, r6
	mov r2, r7
	mov r0, #8
	blx r5
	mov r5, #1
_02225DC8:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02225DD0: .word 0x0222A030
_02225DD4: .word 0x0222A01C
	arm_func_end ov60_02225D38

	arm_func_start ov60_02225DD8
ov60_02225DD8: ; 0x02225DD8
	stmfd sp!, {r4, lr}
	ldr r4, _02225E04 ; =0x0222A030
	ldr r0, [r4, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_02225DEC:
	ldr r0, [r0, #8]
	bl ov60_02225D38
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02225DEC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02225E04: .word 0x0222A030
	arm_func_end ov60_02225DD8

	arm_func_start ov60_02225E08
ov60_02225E08: ; 0x02225E08
	ldr ip, _02225E14 ; =ov60_02225A60
	ldr r0, _02225E18 ; =0x0222A030
	bx ip
	; .align 2, 0
_02225E14: .word ov60_02225A60
_02225E18: .word 0x0222A030
	arm_func_end ov60_02225E08

	arm_func_start ov60_02225E1C
ov60_02225E1C: ; 0x02225E1C
	stmfd sp!, {r3, lr}
	ldr r0, _02225E30 ; =0x0222A8F8
	bl sub_020C29C0
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225E30: .word 0x0222A8F8
	arm_func_end ov60_02225E1C

	arm_func_start ov60_02225E34
ov60_02225E34: ; 0x02225E34
	bx lr
	arm_func_end ov60_02225E34

	arm_func_start ov60_02225E38
ov60_02225E38: ; 0x02225E38
	ldr ip, _02225E44 ; =sub_020C29D8
	ldr r0, _02225E48 ; =0x0222A8F8
	bx ip
	; .align 2, 0
_02225E44: .word sub_020C29D8
_02225E48: .word 0x0222A8F8
	arm_func_end ov60_02225E38

	arm_func_start ov60_02225E4C
ov60_02225E4C: ; 0x02225E4C
	ldr ip, _02225E58 ; =sub_020C2A5C
	ldr r0, _02225E5C ; =0x0222A8F8
	bx ip
	; .align 2, 0
_02225E58: .word sub_020C2A5C
_02225E5C: .word 0x0222A8F8
	arm_func_end ov60_02225E4C

	arm_func_start ov60_02225E60
ov60_02225E60: ; 0x02225E60
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl sub_020C1F24
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _02225EC8 ; =0x0222A910
	ldr r1, _02225ECC ; =0x0222A8F4
	mov r2, #1
	bl sub_020C2748
	mov r0, #0x2000
	str r0, [sp]
	ldr r0, _02225ED0 ; =0x0222A930
	ldr r1, _02225ED4 ; =ov60_022274A0
	add r3, r4, #0x2000
	mov r2, #0
	str r5, [sp, #4]
	bl sub_020C1F34
	ldr r0, _02225ED0 ; =0x0222A930
	bl sub_020C22D0
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02225EC8: .word 0x0222A910
_02225ECC: .word 0x0222A8F4
_02225ED0: .word 0x0222A930
_02225ED4: .word ov60_022274A0
	arm_func_end ov60_02225E60

	arm_func_start ov60_02225ED8
ov60_02225ED8: ; 0x02225ED8
	stmfd sp!, {r3, lr}
	ldr r0, _02225EF8 ; =0x0222A024
	mov r1, #1
	str r1, [r0, #0]
	bl ov60_02225F1C
	ldr r0, _02225EFC ; =0x0222A930
	bl sub_020C21D4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225EF8: .word 0x0222A024
_02225EFC: .word 0x0222A930
	arm_func_end ov60_02225ED8

	arm_func_start ov60_02225F00
ov60_02225F00: ; 0x02225F00
	stmfd sp!, {r3, lr}
	ldr r0, _02225F18 ; =0x0222A910
	add r1, sp, #0
	mov r2, #1
	bl sub_020C2804
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225F18: .word 0x0222A910
	arm_func_end ov60_02225F00

	arm_func_start ov60_02225F1C
ov60_02225F1C: ; 0x02225F1C
	ldr ip, _02225F30 ; =sub_020C2770
	mov r1, #0
	ldr r0, _02225F34 ; =0x0222A910
	mov r2, r1
	bx ip
	; .align 2, 0
_02225F30: .word sub_020C2770
_02225F34: .word 0x0222A910
	arm_func_end ov60_02225F1C

	arm_func_start ov60_02225F38
ov60_02225F38: ; 0x02225F38
	stmfd sp!, {r3, lr}
	cmp r1, #0x400
	bge _02225F54
	mov r0, #0
	str r0, [r2, #0]
	str r1, [r3, #0]
	ldmia sp!, {r3, pc}
_02225F54:
	sub ip, r1, #0x400
	asr ip, ip, #9
	sub lr, ip, #1
	ldr ip, [r0, #0x1c]
	beq _02225F78
_02225F68:
	cmp lr, #0
	sub lr, lr, #1
	ldr ip, [ip]
	bne _02225F68
_02225F78:
	ldr r0, _02225F90 ; =0x000001FF
	sub r1, r1, #0x400
	str ip, [r2]
	and r0, r1, r0
	str r0, [r3, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225F90: .word 0x000001FF
	arm_func_end ov60_02225F38

	arm_func_start ov60_02225F94
ov60_02225F94: ; 0x02225F94
	ldr r3, [r1, #0]
	cmp r3, #0
	bne _02225FD4
	ldr r3, [r2, #0]
	cmp r3, #0x400
	bge _02225FC0
	add r1, r3, #1
	str r1, [r2, #0]
	add r0, r0, r3
	ldrsb r0, [r0, #0x20]
	bx lr
_02225FC0:
	mov r3, #0
	str r3, [r2, #0]
	ldr r0, [r0, #0x1c]
	str r0, [r1, #0]
	b _02225FF4
_02225FD4:
	ldr r0, [r2, #0]
	cmp r0, #0x200
	bne _02225FF4
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_02225FF4:
	ldr r3, [r2, #0]
	add r0, r3, #1
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	add r0, r0, r3
	ldrsb r0, [r0, #4]
	bx lr
	arm_func_end ov60_02225F94

	arm_func_start ov60_02226010
ov60_02226010: ; 0x02226010
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r6, #0
	mov r7, r3
	mov sl, r0
	subne r0, r6, #1
	mov sb, r1
	mov r8, r2
	strne r0, [r7]
	cmp sb, r8
	bge _022260D4
	add r2, sp, #4
	add r3, sp, #0
	mov r0, sl
	mov r1, sb
	bl ov60_02225F38
	cmp sb, r8
	bge _022260D4
	mov fp, #1
	add r5, sp, #4
	add r4, sp, #0
_02226064:
	mov r0, sl
	mov r1, r5
	mov r2, r4
	bl ov60_02225F94
	cmp r0, #0x3a
	bne _02226090
	cmp r7, #0
	beq _02226090
	ldr r1, [r7, #0]
	cmp r1, #0
	strlt sb, [r7]
_02226090:
	cmp r6, #0
	bne _022260A4
	cmp r0, #0xd
	moveq r6, fp
	b _022260C8
_022260A4:
	cmp r0, #0xa
	bne _022260C4
	sub r0, r8, #1
	cmp sb, r0
	moveq r0, #0
	add sp, sp, #8
	addne r0, sb, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022260C4:
	mov r6, #0
_022260C8:
	add sb, sb, #1
	cmp sb, r8
	blt _02226064
_022260D4:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov60_02226010

	arm_func_start ov60_022260E0
ov60_022260E0: ; 0x022260E0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r6, r2
	mov r8, r0
	cmp r7, r6
	bge _02226144
	add r2, sp, #4
	add r3, sp, #0
	bl ov60_02225F38
	cmp r7, r6
	bge _02226144
	add r5, sp, #4
	add r4, sp, #0
_02226118:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl ov60_02225F94
	cmp r0, #0x20
	addne sp, sp, #8
	movne r0, r7
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r7, r7, #1
	cmp r7, r6
	blt _02226118
_02226144:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_022260E0

	arm_func_start ov60_02226150
ov60_02226150: ; 0x02226150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r1
	mov r4, r2
	mov sl, r0
	mov r8, r3
	cmp sb, r4
	ldr r7, [sp, #0x30]
	bge _02226214
	add r2, sp, #4
	add r3, sp, #0
	bl ov60_02225F38
	add r1, sp, #4
	add r2, sp, #0
	mov r0, sl
	bl ov60_02225F94
	sub r6, r4, #1
	add r5, sp, #4
	add r4, sp, #0
	mov fp, #0
	b _022261D8
_022261A4:
	cmp r2, #0
	cmpne r2, #0x20
	cmpne r2, r7
	cmpne sb, r6
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, r5
	mov r2, r4
	bl ov60_02225F94
	add sb, sb, #1
	add r8, r8, #1
_022261D8:
	ldrsb r2, [r8]
	mov r1, fp
	cmp r2, #0x41
	blt _022261F0
	cmp r2, #0x5a
	movle r1, #1
_022261F0:
	cmp r1, #0
	addne r1, r2, #0x20
	moveq r1, r2
	cmp r0, #0x41
	blt _0222620C
	cmp r0, #0x5a
	addle r0, r0, #0x20
_0222620C:
	cmp r0, r1
	beq _022261A4
_02226214:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov60_02226150

	arm_func_start ov60_02226220
ov60_02226220: ; 0x02226220
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov r7, r2
	mov r6, r3
	ldr r0, [r4, #0]
	add r2, r7, r6
	mov r8, r1
	cmp r2, r0
	bgt _02226300
	cmp r6, #0
	beq _022262F8
	cmp r7, #0x400
	bge _02226280
	neg r5, r7x400
	cmp r6, r5
	movle r5, r6
	add r1, r4, #0x20
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl ov60_0222716C
	add r7, r7, r5
	sub r6, r6, r5
	add r8, r8, r5
_02226280:
	cmp r6, #0
	beq _022262F8
	sub r2, r7, #0x400
	ldr r0, _02226308 ; =0x000001FF
	asr r1, r2, #9
	and r7, r2, r0
	sub r0, r1, #1
	ldr r4, [r4, #0x1c]
	beq _022262B4
_022262A4:
	cmp r0, #0
	sub r0, r0, #1
	ldr r4, [r4, #0]
	bne _022262A4
_022262B4:
	cmp r6, #0
	beq _022262F8
	ldr sb, _02226308 ; =0x000001FF
_022262C0:
	neg r5, r7x200
	cmp r6, r5
	movle r5, r6
	add r1, r4, #4
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl ov60_0222716C
	add r0, r7, r5
	and r7, r0, sb
	sub r6, r6, r5
	add r8, r8, r5
	ldr r4, [r4, #0]
	bne _022262C0
_022262F8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02226300:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02226308: .word 0x000001FF
	arm_func_end ov60_02226220

	arm_func_start ov60_0222630C
ov60_0222630C: ; 0x0222630C
	ldr r0, [r0, #0xc]
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end ov60_0222630C

	arm_func_start ov60_02226320
ov60_02226320: ; 0x02226320
	stmfd sp!, {r3, lr}
	ldr ip, [r0, #0x30]
	mov lr, r2
	str r3, [sp]
	ldr r2, [ip, #0x18]
	ldr r3, [ip, #0xc]
	add r2, r2, lr
	sub r3, r3, lr
	bl ov60_02227024
	ldmia sp!, {r3, pc}
	arm_func_end ov60_02226320

	arm_func_start ov60_02226348
ov60_02226348: ; 0x02226348
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r4, [r8, #0x30]
	mov r6, r2
	mov r7, r1
	mov r0, r4
	mov r1, r6
	mov r5, r3
	bl ov60_0222630C
	cmp r0, #0
	addne sp, sp, #4
	ldrne r0, _022263B4 ; =0xFFFFFC15
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x20]
	sub r3, r0, r6
	str r1, [sp]
	ldr r2, [r4, #0x18]
	cmp r5, r3
	movle r3, r5
	mov r0, r8
	mov r1, r7
	add r2, r2, r6
	bl ov60_02227024
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022263B4: .word 0xFFFFFC15
	arm_func_end ov60_02226348

	arm_func_start ov60_022263B8
ov60_022263B8: ; 0x022263B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
	mov r0, r1
	cmpne r0, #1
	str r1, [sp]
	mov r5, r2
	mov r4, r3
	mov r7, #0
	cmpne r0, #2
	beq _022263F0
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #0xb
	str r1, [r0, #0]
	b _0222687C
_022263F0:
	cmp r4, #0
	bne _02226408
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #0xb
	str r1, [r0, #0]
	b _0222687C
_02226408:
	ldr r1, _02226904 ; =0x0222A018
	mov r0, #0x58
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	mov r7, r0
	bne _02226434
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_02226434:
	mov r1, #0x58
	bl ov60_02227158
	ldr r1, _02226904 ; =0x0222A018
	mov r0, #0x420
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	str r0, [r7, #0x30]
	cmp r0, #0
	bne _0222646C
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_0222646C:
	mov r1, #0x420
	bl ov60_02227158
	ldr r1, [r7, #0x30]
	mov r0, fp
	str r5, [r1, #0x18]
	ldr r1, [r7, #0x30]
	str r4, [r1, #0xc]
	bl ov60_0222714C
	mov r4, r0
	cmp r4, #7
	bgt _022264A8
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_022264A8:
	mov r8, #7
	mov r3, #0x50
	ldr r1, _02226908 ; =0x02229CD0
	mov r0, fp
	mov r2, r8
	str r3, [r7, #0x28]
	bl ov60_022270E4
	cmp r0, #0
	beq _02226508
	ldr r1, _0222690C ; =0x02229CD8
	mov r0, fp
	mov r2, #8
	bl ov60_022270E4
	cmp r0, #0
	beq _022264F4
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_022264F4:
	mov r0, #1
	str r0, [r7, #8]
	neg r0, r0x1bc
	str r0, [r7, #0x28]
	mov r8, #8
_02226508:
	sub r4, r4, r8
	cmp r4, #0
	add r6, fp, r8
	bgt _02226528
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_02226528:
	mov r5, #0
	mov sb, r5
	mov sl, r5
	b _0222659C
_02226538:
	cmp sl, #2
	subeq sl, sl, #1
	beq _02226598
	cmp sl, #1
	bne _0222658C
	sub r0, r5, #1
	mov r1, #2
	add r0, r6, r0
	bl ov60_02228898
	lsl r0, r0, #0x18
	asr r0, r0, #0x18
	sub sl, sl, #1
	bpl _0222657C
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_0222657C:
	cmp r0, #0x2f
	bne _02226598
	sub sb, sb, #1
	b _022265B0
_0222658C:
	cmp r0, #0x25
	moveq sl, #2
	addeq sb, sb, #1
_02226598:
	add r5, r5, #1
_0222659C:
	cmp r5, r4
	bge _022265B0
	ldrsb r0, [r6, r5]
	cmp r0, #0x2f
	bne _02226538
_022265B0:
	cmp sl, #0
	beq _022265C8
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_022265C8:
	ldr r0, _02226904 ; =0x0222A018
	add r1, r8, r4
	sub r1, r1, sb, lsl #1
	ldr r2, [r0, #0]
	add r0, r1, #1
	mov r1, #4
	blx r2
	str r0, [r7, #0x24]
	cmp r0, #0
	bne _02226600
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_02226600:
	mov r1, fp
	mov r2, r8
	bl ov60_0222716C
	mov sb, #0
	mov r5, sb
	mov sl, sb
	mov fp, sb
	cmp r4, #0
	ble _022266A4
_02226624:
	cmp sl, #2
	subeq sl, sl, #1
	beq _02226698
	cmp sl, #1
	bne _02226670
	sub r0, sb, #1
	add r0, r6, r0
	mov r1, #2
	bl ov60_02228898
	lsl r0, r0, #0x18
	asr r1, r0, #0x18
	ldr r0, [r7, #0x24]
	cmp r1, #0x2f
	add r0, r8, r0
	add r0, r5, r0
	sub sl, sl, #1
	strb r1, [r0, #-1]
	moveq fp, #1
	b _02226698
_02226670:
	ldrsb r1, [r6, sb]
	cmp r1, #0x2f
	moveq fp, #1
	cmp fp, #0
	cmpeq r1, #0x25
	ldrne r0, [r7, #0x24]
	moveq sl, #2
	addne r0, r8, r0
	strbne r1, [r5, r0]
	add r5, r5, #1
_02226698:
	add sb, sb, #1
	cmp sb, r4
	blt _02226624
_022266A4:
	ldr r1, [r7, #0x24]
	add r0, r8, r5
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r7, #0x24]
	cmp r5, #0
	add r1, r0, r8
	ble _022266E8
_022266C4:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	cmpne r0, #0x3a
	addeq r0, r2, r8
	streq r0, [r7, #0xc]
	beq _022266E8
	add r2, r2, #1
	cmp r2, r5
	blt _022266C4
_022266E8:
	cmp r2, r5
	bne _02226700
	add r0, r2, r8
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	b _022267A4
_02226700:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	ldreq r0, [r7, #0xc]
	streq r0, [r7, #0x10]
	beq _022267A4
	cmp r0, #0x3a
	bne _022267A4
	cmp r2, r5
	bge _02226744
_02226724:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	addeq r0, r2, r8
	streq r0, [r7, #0x10]
	beq _02226744
	add r2, r2, #1
	cmp r2, r5
	blt _02226724
_02226744:
	cmp r2, r5
	addeq r0, r2, r8
	streq r0, [r7, #0x10]
	beq _022267A4
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x24]
	add r2, r1, #1
	ldr r1, [r7, #0x10]
	add r0, r0, r2
	sub r1, r1, r2
	bl ov60_02228B58
	cmp r0, #0
	ldrlt r0, [r7, #0x28]
	blt _02226798
	ldr r1, _02226910 ; =0x0000FFFF
	cmp r0, r1
	ble _02226798
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_02226798:
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [r7, #0x28]
_022267A4:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0222684C
	ldr r0, _02226904 ; =0x0222A018
	ldr r3, [r7, #0xc]
	ldr r2, [r0, #0]
	mov r0, #0x830
	mov r1, #4
	sub r4, r3, r8
	blx r2
	str r0, [r7, #0x20]
	cmp r0, #0
	bne _022267E8
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_022267E8:
	mov r1, #0x830
	bl ov60_02227158
	ldr r1, _02226904 ; =0x0222A018
	add r0, r4, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	ldr r1, [r7, #0x20]
	str r0, [r1, #0x800]
	ldr r0, [r7, #0x20]
	ldr r0, [r0, #0x800]
	cmp r0, #0
	bne _0222682C
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_0222682C:
	ldr r1, [r7, #0x24]
	mov r2, r4
	add r1, r1, r8
	bl ov60_0222716C
	ldr r0, [r7, #0x20]
	mov r1, #0
	ldr r0, [r0, #0x800]
	strb r1, [r0, r4]
_0222684C:
	ldr r1, _02226914 ; =0x02228D74
	add r0, r7, #0x44
	mov r2, #0x14
	bl ov60_0222716C
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r0, [r7, #0x2c]
	ldr r0, [sp]
	str r0, [r7, #0x40]
	mov r0, r7
	str r1, [r7, #0x3c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222687C:
	cmp r7, #0
	beq _022268F8
	ldr r0, [r7, #0x20]
	cmp r0, #0
	beq _022268B8
	ldr r0, [r0, #0x800]
	cmp r0, #0
	beq _022268A8
	ldr r1, _02226918 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_022268A8:
	ldr r1, _02226918 ; =0x0222A01C
	ldr r0, [r7, #0x20]
	ldr r1, [r1, #0]
	blx r1
_022268B8:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _022268D0
	ldr r1, _02226918 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_022268D0:
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _022268E8
	ldr r1, _02226918 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_022268E8:
	ldr r1, _02226918 ; =0x0222A01C
	mov r0, r7
	ldr r1, [r1, #0]
	blx r1
_022268F8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02226900: .word 0x0222A014
_02226904: .word 0x0222A018
_02226908: .word 0x02229CD0
_0222690C: .word 0x02229CD8
_02226910: .word 0x0000FFFF
_02226914: .word 0x02228D74
_02226918: .word 0x0222A01C
	arm_func_end ov60_022263B8

	arm_func_start ov60_0222691C
ov60_0222691C: ; 0x0222691C
	stmfd sp!, {r4, lr}
	ldr r1, _02226940 ; =0x0222A01C
	mov r4, r0
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #0]
	blx r1
	mov r0, r4
	bl ov60_02226998
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02226940: .word 0x0222A01C
	arm_func_end ov60_0222691C

	arm_func_start ov60_02226944
ov60_02226944: ; 0x02226944
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _02226994 ; =0x0222A01C
	mov r5, #0
_02226958:
	ldr r0, [r7, #0]
	cmp r7, r0
	beq _02226978
	ldr r6, [r0, #0]
	ldr r1, [r4, #0]
	blx r1
	str r6, [r7, #0]
	b _02226988
_02226978:
	ldr r1, [r4, #0]
	mov r0, r7
	blx r1
	mov r7, r5
_02226988:
	cmp r7, #0
	bne _02226958
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226994: .word 0x0222A01C
	arm_func_end ov60_02226944

	arm_func_start ov60_02226998
ov60_02226998: ; 0x02226998
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	bl ov60_02226944
	ldr r0, [r4, #0x38]
	bl ov60_02226944
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _022269E4
	ldr r0, [r0, #0x800]
	cmp r0, #0
	beq _022269D4
	ldr r1, _02226A0C ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_022269D4:
	ldr r1, _02226A0C ; =0x0222A01C
	ldr r0, [r4, #0x20]
	ldr r1, [r1, #0]
	blx r1
_022269E4:
	ldr r1, _02226A0C ; =0x0222A01C
	ldr r0, [r4, #0x24]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _02226A0C ; =0x0222A01C
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02226A0C: .word 0x0222A01C
	arm_func_end ov60_02226998

	arm_func_start ov60_02226A10
ov60_02226A10: ; 0x02226A10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02226A38
	ldr r0, _02226A98 ; =0x0222A014
	mov r1, #0xb
	str r1, [r0, #0]
	sub r0, r1, #0xc
	ldmia sp!, {r3, r4, r5, pc}
_02226A38:
	ldr r0, [r5, #0x40]
	cmp r0, #1
	ldreq r0, [r5, #0x38]
	cmpeq r0, #0
	bne _02226A60
	ldr r0, _02226A98 ; =0x0222A014
	mov r1, #0xb
	str r1, [r0, #0]
	sub r0, r1, #0xc
	ldmia sp!, {r3, r4, r5, pc}
_02226A60:
	bl ov60_02225E38
	mov r0, r5
	bl ov60_02225C2C
	mov r4, r0
	ldrmi r0, _02226A98 ; =0x0222A014
	movmi r1, #1
	strmi r1, [r0]
	bmi _02226A8C
	mov r0, #1
	str r0, [r5, #0]
	bl ov60_02225F1C
_02226A8C:
	bl ov60_02225E4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02226A98: .word 0x0222A014
	arm_func_end ov60_02226A10

	arm_func_start ov60_02226A9C
ov60_02226A9C: ; 0x02226A9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	bl ov60_02225E38
	ldr r0, _02226B14 ; =0x0222A020
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02226AF4
	ldr r1, [r2, #8]
	cmp r1, r4
	ldreq r1, [r2, #0xc]
	ldreq r1, [r1, #4]
	cmpeq r1, #0
	bne _02226AF4
	ldr r1, [r2, #0xc]
	mov r2, #1
	str r2, [r1, #4]
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl ov60_022270BC
	mov r5, #1
_02226AF4:
	cmp r5, #0
	bne _02226B08
	mov r0, r4
	bl ov60_02225D38
	mov r5, r0
_02226B08:
	bl ov60_02225E4C
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02226B14: .word 0x0222A020
	arm_func_end ov60_02226A9C

	arm_func_start ov60_02226B18
ov60_02226B18: ; 0x02226B18
	stmfd sp!, {r3, lr}
	bl ov60_02225E38
	ldr r0, _02226B68 ; =0x0222A020
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02226B5C
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02226B5C
	ldr r1, [r2, #0xc]
	mov r2, #1
	str r2, [r1, #4]
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl ov60_022270BC
_02226B5C:
	bl ov60_02225DD8
	bl ov60_02225E4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02226B68: .word 0x0222A020
	arm_func_end ov60_02226B18

	arm_func_start ov60_02226B6C
ov60_02226B6C: ; 0x02226B6C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0xc]
	mov r0, #0
	ldrsb r4, [r2, r1]
	strb r0, [r2, r1]
	ldr r0, [r5, #8]
	ldr r6, [r5, #0x24]
	cmp r0, #0
	movne r7, #8
	moveq r7, #7
	add r1, sp, #0
	add r0, r6, r7
	bl FUN_02208A24
	cmp r0, #0
	ldrne r0, [sp]
	bne _02226BF4
	add r0, r6, r7
	bl FUN_02207F58
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	lsr r2, r0, #0x18
	lsr r1, r0, #8
	lsl r3, r0, #8
	lsl ip, r0, #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, ip, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
_02226BF4:
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0xc]
	strb r4, [r2, r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov60_02226B6C

	arm_func_start ov60_02226C04
ov60_02226C04: ; 0x02226C04
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02226C34
	ldr r5, _02226C78 ; =0x0222A01C
_02226C1C:
	ldr r6, [r0, #0]
	ldr r1, [r5, #0]
	blx r1
	mov r0, r6
	str r6, [r4, #0x1c]
	bne _02226C1C
_02226C34:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02226C4C
	ldr r1, _02226C78 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_02226C4C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02226C64
	ldr r1, _02226C78 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_02226C64:
	ldr r1, _02226C78 ; =0x0222A01C
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02226C78: .word 0x0222A01C
	arm_func_end ov60_02226C04

	arm_func_start ov60_02226C7C
ov60_02226C7C: ; 0x02226C7C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r2
	mov sl, r1
	ldr r2, [r5, #0]
	add r3, sp, #4
	mov r1, #0xc
	bl ov60_02226010
	mov r8, r0
	cmp r8, #0
	ble _02226D7C
	mov r6, #0
	add r7, sp, #4
_02226CB4:
	ldr r2, [r5, #0]
	mov r0, r5
	mov r1, r8
	mov r3, r7
	bl ov60_02226010
	ldr r2, [sp, #4]
	mov sb, r0
	cmp r2, #0
	ble _02226D70
	mov r0, r5
	mov r1, r8
	mov r3, sl
	str r6, [sp]
	bl ov60_02226150
	cmp r0, #0
	bne _02226D70
	ldr r1, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r1, #1
	cmp r1, r0
	bge _02226D64
	ldr r2, [r5, #0]
	mov r0, r5
	mov r3, #0
	bl ov60_02226010
	cmp r0, #0
	ldrle r6, [r5]
	ble _02226D38
	cmp r0, #2
	addlt sp, sp, #8
	mvnlt r0, #0
	ldmia sp!,lt {r4, r5, r6, r7, r8, sb, sl, pc}
	sub r6, r0, #2
_02226D38:
	ldr r1, [sp, #4]
	mov r0, r5
	mov r2, r6
	add r1, r1, #1
	bl ov60_022260E0
	cmp r0, #0
	movlt r0, r6
	str r0, [r4, #0]
	add sp, sp, #8
	sub r0, r6, r0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02226D64:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02226D70:
	mov r8, sb
	cmp sb, #0
	bgt _02226CB4
_02226D7C:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov60_02226C7C

	arm_func_start ov60_02226D88
ov60_02226D88: ; 0x02226D88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _02226DC8
	ldr r1, _02226E80 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
	mov r0, #0
	str r0, [r7, #0x14]
_02226DC8:
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl ov60_02226C7C
	mov r4, r0
	bmi _02226E24
	ldr r1, _02226E84 ; =0x0222A018
	add r0, r4, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	str r0, [r7, #0x14]
	mov r1, #0
	strb r1, [r0, r4]
	ldr r1, [r7, #0x14]
	ldr r2, [sp]
	mov r0, r7
	mov r3, r4
	bl ov60_02226220
	ldr r1, [r7, #0x14]
	mov r0, r4
	str r1, [r5, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02226E24:
	ldr r0, _02226E88 ; =0x02229CE4
	mov r1, r6
	bl ov60_022270D8
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _02226E84 ; =0x0222A018
	mov r0, #4
	ldr r2, [r1, #0]
	mov r1, r0
	blx r2
	str r0, [r7, #0x14]
	mov r1, #0
	strb r1, [r0, #3]
	ldr r1, [r7, #0x14]
	mov r0, r7
	mov r2, #9
	mov r3, #3
	bl ov60_02226220
	ldr r1, [r7, #0x14]
	mov r0, #3
	str r1, [r5, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226E80: .word 0x0222A01C
_02226E84: .word 0x0222A018
_02226E88: .word 0x02229CE4
	arm_func_end ov60_02226D88

	arm_func_start ov60_02226E8C
ov60_02226E8C: ; 0x02226E8C
	ldr r2, [r0, #8]
	cmp r2, #0
	ldrne r2, [r0, #4]
	cmpne r2, #0
	mvneq r0, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end ov60_02226E8C

	arm_func_start ov60_02226EB0
ov60_02226EB0: ; 0x02226EB0
	tst r0, #0x8000
	bicne r0, r0, #0x8000
	bx lr
	arm_func_end ov60_02226EB0

	arm_func_start ov60_02226EBC
ov60_02226EBC: ; 0x02226EBC
	stmfd sp!, {r3, lr}
	ldr r0, _02226ED8 ; =0x0222A9F0
	bl sub_020C41D8
	ldr r0, _02226ED8 ; =0x0222A9F0
	mov r1, #0x20
	bl FUN_0220FE28
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02226ED8: .word 0x0222A9F0
	arm_func_end ov60_02226EBC

	arm_func_start ov60_02226EDC
ov60_02226EDC: ; 0x02226EDC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl FUN_02208324
	mov r4, r0
	bmi _02226F50
	ldr r0, [r5, #8]
	cmp r0, #0
	beq _02226F50
	bl ov60_02226EBC
	ldr r1, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	ldr r2, _02226F58 ; =ov60_02226EB0
	str r1, [r0, #0x814]
	ldr r3, [r5, #0x18]
	ldr r1, [r5, #0x20]
	mov r0, r4
	str r3, [r1, #0x818]
	ldr r1, [r5, #0x20]
	str r2, [r1, #0x810]
	ldr r1, [r5, #0x20]
	bl FUN_02208BCC
	cmp r0, #0
	bge _02226F50
	mov r0, r4
	bl FUN_02208540
	mvn r4, #0
_02226F50:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02226F58: .word ov60_02226EB0
	arm_func_end ov60_02226EDC

	arm_func_start ov60_02226F5C
ov60_02226F5C: ; 0x02226F5C
	ldr ip, _02226F68 ; =FUN_02208540
	mov r0, r1
	bx ip
	; .align 2, 0
_02226F68: .word FUN_02208540
	arm_func_end ov60_02226F5C

	arm_func_start ov60_02226F6C
ov60_02226F6C: ; 0x02226F6C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r0, r6
	bl FUN_02208540
	mvn r4, #0x19
	cmp r0, r4
	ldmneia sp!, {r4, r5, r6, pc}
	mov r5, #0x1f4
_02226F8C:
	mov r0, r5
	bl sub_020C24A4
	mov r0, r6
	bl FUN_02208540
	cmp r0, r4
	beq _02226F8C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov60_02226F6C

	arm_func_start ov60_02226FA8
ov60_02226FA8: ; 0x02226FA8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	lsl r3, r3, #0x10
	lsr r3, r3, #0x10
	asr ip, r3, #8
	mov r4, r0
	mov r5, #8
	mov lr, #2
	lsl r3, r3, #8
	mov r0, r1
	and ip, ip, #0xff
	and r1, r3, #0xff00
	orr r3, ip, r1
	add r1, sp, #0
	strb r5, [sp]
	strb lr, [sp, #1]
	strh r3, [sp, #2]
	str r2, [sp, #4]
	bl FUN_0220837C
	cmp r0, #0
	bge _02227014
	ldr r0, [r4, #4]
	add sp, sp, #8
	cmp r0, #0
	ldrne r0, _02227020 ; =0xFFFFFC16
	mvneq r0, #0x3e8
	ldmia sp!, {r3, r4, r5, pc}
_02227014:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02227020: .word 0xFFFFFC16
	arm_func_end ov60_02226FA8

	arm_func_start ov60_02227024
ov60_02227024: ; 0x02227024
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_022083D8
	cmp r0, #0
	ldmia sp!,ge {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, _0222706C ; =0xFFFFFC16
	ldmneia sp!, {r4, pc}
	mvn r1, #0x37
	cmp r0, r1
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222706C: .word 0xFFFFFC16
	arm_func_end ov60_02227024

	arm_func_start ov60_02227070
ov60_02227070: ; 0x02227070
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	mov r2, r3
	ldr r3, [sp, #8]
	bl FUN_0220848C
	cmp r0, #0
	ldmia sp!,ge {r4, pc}
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, _022270B8 ; =0xFFFFFC16
	ldmneia sp!, {r4, pc}
	mvn r1, #0x37
	cmp r0, r1
	moveq r0, #0
	mvnne r0, #0x3e8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022270B8: .word 0xFFFFFC16
	arm_func_end ov60_02227070

	arm_func_start ov60_022270BC
ov60_022270BC: ; 0x022270BC
	stmfd sp!, {r3, lr}
	cmp r1, #0
	ldmia sp!,lt {r3, pc}
	mov r0, r1
	mov r1, #2
	bl FUN_02208534
	ldmia sp!, {r3, pc}
	arm_func_end ov60_022270BC

	arm_func_start ov60_022270D8
ov60_022270D8: ; 0x022270D8
	ldr ip, _022270E0 ; =sub_020D33DC
	bx ip
	; .align 2, 0
_022270E0: .word sub_020D33DC
	arm_func_end ov60_022270D8

	arm_func_start ov60_022270E4
ov60_022270E4: ; 0x022270E4
	cmp r2, #0
	ble _02227144
_022270EC:
	ldrsb ip, [r0], #1
	ldrsb r3, [r1], #1
	cmp ip, #0
	cmpne r3, #0
	bne _02227110
	cmp ip, #0
	cmpeq r3, #0
	moveq r2, #0
	b _02227144
_02227110:
	cmp r3, #0x41
	blt _02227120
	cmp r3, #0x5a
	addle r3, r3, #0x20
_02227120:
	cmp ip, #0x41
	blt _02227130
	cmp ip, #0x5a
	addle ip, ip, #0x20
_02227130:
	cmp ip, r3
	bne _02227144
	sub r2, r2, #1
	cmp r2, #0
	bgt _022270EC
_02227144:
	mov r0, r2
	bx lr
	arm_func_end ov60_022270E4

	arm_func_start ov60_0222714C
ov60_0222714C: ; 0x0222714C
	ldr ip, _02227154 ; =sub_020D33B4
	bx ip
	; .align 2, 0
_02227154: .word sub_020D33B4
	arm_func_end ov60_0222714C

	arm_func_start ov60_02227158
ov60_02227158: ; 0x02227158
	ldr ip, _02227168 ; =sub_020C4CF4
	mov r2, r1
	mov r1, #0
	bx ip
	; .align 2, 0
_02227168: .word sub_020C4CF4
	arm_func_end ov60_02227158

	arm_func_start ov60_0222716C
ov60_0222716C: ; 0x0222716C
	ldr ip, _02227180 ; =sub_020C4DB0
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	; .align 2, 0
_02227180: .word sub_020C4DB0
	arm_func_end ov60_0222716C

	arm_func_start ov60_02227184
ov60_02227184: ; 0x02227184
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	mov r4, r1
	str r0, [r5, #0]
	str r0, [r4, #0]
	bl ov60_02225E38
	ldr r1, _0222721C ; =0x0222A020
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _022271FC
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022271F4
	ldr r2, [r2, #0xc]
	mvn r0, #0
	ldr r2, [r2, #0x30]
	ldr r2, [r2, #4]
	str r2, [r5, #0]
	ldr r2, [r1, #0]
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #0x14]
	cmp r1, r0
	moveq r0, #0
	ldrne r0, [r2, #0xc]
	ldrne r0, [r0, #0x14]
	str r0, [r4, #0]
_022271F4:
	mov r4, #1
	b _02227210
_022271FC:
	ldr r0, _02227220 ; =0x0222A030
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r4, #1
	moveq r4, #0
_02227210:
	bl ov60_02225E4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222721C: .word 0x0222A020
_02227220: .word 0x0222A030
	arm_func_end ov60_02227184

	arm_func_start ov60_02227224
ov60_02227224: ; 0x02227224
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [sp, #0x28]
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	cmp r5, #0
	ble _022272CC
	ldr r4, _022272D4 ; =0x0222AA58
	mov fp, #0
_0222724C:
	ldr r0, [sl, #4]
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r8]
	mov r1, r7
	neg r6, r0x400
	cmp r5, r6
	movle r6, r5
	mov r2, r6
	add r0, r4, r0
	bl ov60_0222716C
	ldr r0, [r8]
	add r7, r7, r6
	add r0, r0, r6
	str r0, [r8]
	cmp r0, #0x400
	sub r5, r5, r6
	bne _022272C4
	mov r0, sl
	mov r1, sb
	mov r2, r4
	mov r3, #0x400
	str fp, [sp]
	bl ov60_02227070
	cmp r0, #0
	ldmia sp!,le {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r8]
	sub r0, r1, r0
	str r0, [r8]
_022272C4:
	cmp r5, #0
	bgt _0222724C
_022272CC:
	ldr r0, [sp, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022272D4: .word 0x0222AA58
	arm_func_end ov60_02227224

	arm_func_start ov60_022272D8
ov60_022272D8: ; 0x022272D8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r8, #0
	mov sl, r0
	mov sb, r1
	mov r7, r8
	strb r8, [sp, #4]
	strb r8, [sp, #5]
	mov r6, r8
	mov r5, #1
	add r4, sp, #4
	b _02227334
_02227308:
	mov r0, sl
	mov r1, sb
	mov r3, r5
	add r2, r4, r2
	str r6, [sp]
	bl ov60_02227024
	cmp r0, #0
	addle sp, sp, #8
	ldmia sp!,le {r4, r5, r6, r7, r8, sb, sl, pc}
	add r8, r8, r0
	add r7, r7, #1
_02227334:
	and r2, r7, #1
	ldrsb r0, [r4, r2]
	cmp r0, #0xd
	bne _02227308
	sub r0, r7, #1
	and r0, r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0xa
	bne _02227308
	mov r0, r8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov60_022272D8

	arm_func_start ov60_02227364
ov60_02227364: ; 0x02227364
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x800]
	cmp r0, #0
	beq _02227388
	ldr r1, _0222739C ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_02227388:
	ldr r1, _0222739C ; =0x0222A01C
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222739C: .word 0x0222A01C
	arm_func_end ov60_02227364

	arm_func_start ov60_022273A0
ov60_022273A0: ; 0x022273A0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02227434 ; =0x0222AA10
	mov r6, r0
	ldmia r2, {r0, r2}
	add r0, r0, #1
	and r4, r0, #7
	mov r5, r1
	cmp r4, r2
	bne _022273FC
	ldr r1, _02227438 ; =0x0222AA18
	mov r0, #0
	ldr r1, [r1, r2, lsl #3]
	bl ov60_02226F6C
	ldr r0, _02227434 ; =0x0222AA10
	ldr r1, _0222743C ; =0x0222AA1C
	ldr r0, [r0, #4]
	ldr r0, [r1, r0, lsl #3]
	bl ov60_02227364
	ldr r0, _02227434 ; =0x0222AA10
	ldr r1, [r0, #4]
	add r1, r1, #1
	and r1, r1, #7
	str r1, [r0, #4]
_022273FC:
	ldr r0, [r5, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _02227434 ; =0x0222AA10
	ldr r1, _02227438 ; =0x0222AA18
	ldr ip, [r0]
	ldr r2, _0222743C ; =0x0222AA1C
	str r6, [r1, ip, lsl #3]
	ldr r3, [r5, #0]
	mov r1, #0
	str r3, [r2, ip, lsl #3]
	str r1, [r5, #0]
	str r4, [r0, #0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02227434: .word 0x0222AA10
_02227438: .word 0x0222AA18
_0222743C: .word 0x0222AA1C
	arm_func_end ov60_022273A0

	arm_func_start ov60_02227440
ov60_02227440: ; 0x02227440
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _02227498 ; =0x0222AA10
	ldmia r6, {r0, r1}
	cmp r0, r1
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, _0222749C ; =0x0222AA18
	mov r5, #0
_0222745C:
	ldr r1, [r4, r1, lsl #3]
	mov r0, r5
	bl ov60_02226F6C
	ldr r0, [r6, #4]
	add r0, r4, r0, lsl #3
	ldr r0, [r0, #4]
	bl ov60_02227364
	ldr r0, [r6, #4]
	add r0, r0, #1
	and r1, r0, #7
	str r1, [r6, #4]
	ldr r0, [r6, #0]
	cmp r0, r1
	bne _0222745C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02227498: .word 0x0222AA10
_0222749C: .word 0x0222AA18
	arm_func_end ov60_02227440

	arm_func_start ov60_022274A0
ov60_022274A0: ; 0x022274A0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	ldr r2, _022283C0 ; =0x0222AA10
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [r2, #0]
	ldr r1, _022283C4 ; =0x0222A024
	mvn r6, #0
	str r0, [r2, #4]
	ldr r1, [r1, #0]
	str r0, [sp, #0x10]
	str r6, [sp, #0x18]
	str r6, [sp, #0x14]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	bne _02228770
_022274E4:
	bl ov60_02225E38
	bl ov60_02225E08
	cmp r0, #0
	mvneq r4, #0
	beq _02227508
	ldr r4, [r0, #8]
	ldr r8, [r0, #0xc]
	ldr r1, _022283C8 ; =0x0222A020
	str r0, [r1, #0]
_02227508:
	bl ov60_02225E4C
	cmp r4, #0
	bge _0222751C
	bl ov60_02225F00
	b _02228760
_0222751C:
	ldr r0, [r8, #4]
	ldr sb, [r8, #0x30]
	cmp r0, #0
	bne _02228690
	mov r0, r8
	bl ov60_02226B6C
	str r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #4
	streq r0, [sp, #4]
	beq _02228690
	mov r1, r0
	ldr r0, [sp, #0x18]
	mov r2, #0
	cmp r1, r0
	ldreq r1, [r8, #0x28]
	ldreq r0, [sp, #0x14]
	add r5, sp, #0x38
	cmpeq r1, r0
	ldreq r1, [r8, #8]
	ldreq r0, [sp, #0xc]
	add r4, sp, #0x40
	cmpeq r1, r0
	ldr r0, [r8, #0x28]
	moveq r2, #1
	str r0, [sp, #0x14]
	ldr r0, [r8, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	and r0, r0, r2
	str r0, [sp, #8]
	mvn r0, #0
	str r0, [sp, #0x20]
_022275A8:
	mov r0, #0
	cmp r6, #0
	str r0, [sp, #4]
	blt _022275F8
	mov r0, #9
	strh r0, [sp, #0x2c]
	ldr r2, _022283CC ; =0x0000CC8D
	add r0, sp, #0x28
	mov r1, #1
	mov r3, #0
	str r6, [sp, #0x28]
	bl FUN_02208B18
	cmp r0, #0
	movle r0, #0
	strle r0, [sp, #8]
	ble _022275F8
	ldrsh r0, [sp, #0x2e]
	tst r0, #0xe0
	movne r0, #0
	strne r0, [sp, #8]
_022275F8:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _022276C0
	cmp r6, #0
	blt _02227640
	mov r0, r8
	mov r1, r6
	bl ov60_02226F5C
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [sp, #4]
	mov r0, r6
	add r1, sp, #0x3c
	bl ov60_022273A0
	ldr r0, [sp, #4]
	ldr r6, [sp, #0x20]
	cmp r0, #0
	bne _02228690
_02227640:
	mov r0, r8
	bl ov60_02226EDC
	mov r6, r0
	movmi r0, #3
	strmi r0, [sp, #4]
	bmi _02228690
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _02227674
	ldr r0, [r8, #0x20]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [r8, #0x20]
_02227674:
	bl ov60_02225E38
	ldr r0, _022283C8 ; =0x0222A020
	ldr r0, [r0, #0]
	str r6, [r0, #0x10]
	bl ov60_02225E4C
	ldr r0, [r8, #4]
	cmp r0, #0
	bne _02228690
	ldr r2, [sp, #0x1c]
	ldr r3, [r8, #0x28]
	mov r0, r8
	mov r1, r6
	bl ov60_02226FA8
	cmp r0, #0
	movge r0, #1
	strge r0, [sp, #8]
	movlt r0, #0
	strlt r0, [sp, #8]
	b _022276F4
_022276C0:
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _022276DC
	ldr r0, [r8, #0x20]
	bl ov60_02227364
	mov r0, #0
	str r0, [r8, #0x20]
_022276DC:
	bl ov60_02226EBC
	bl ov60_02225E38
	ldr r0, _022283C8 ; =0x0222A020
	ldr r0, [r0, #0]
	str r6, [r0, #0x10]
	bl ov60_02225E4C
_022276F4:
	ldr r0, [r8, #4]
	cmp r0, #0
	bne _02228690
	ldr r0, [sp, #8]
	cmp r0, #0
	moveq r0, #5
	streq r0, [sp, #4]
	beq _02228690
	mov r0, #0
	str r0, [sp, #0x38]
	str r0, [sp, #8]
	ldr r0, [r8, #0x24]
	bl ov60_0222714C
	mov r7, r0
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, [r8, #0x40]
	cmp r0, #0
	beq _02227754
	cmp r0, #1
	beq _02227780
	cmp r0, #2
	beq _022277AC
	b _022277D4
_02227754:
	mov r0, #4
	str r0, [sp]
	ldr r3, _022283D0 ; =0x02229CF4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _022277D4
_02227780:
	mov r0, #5
	str r0, [sp]
	ldr r3, _022283D4 ; =0x02229CFC
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _022277D4
_022277AC:
	mov r0, #5
	str r0, [sp]
	ldr r3, _022283D8 ; =0x02229D04
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_022277D4:
	ldr sl, [r8, #0x10]
	cmp r7, sl
	ble _02227814
	sub r0, r7, sl
	beq _0222783C
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r8, #0x24]
	add r3, r3, sl
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _0222783C
_02227814:
	mov r0, #1
	str r0, [sp]
	ldr r3, _022283DC ; =0x02229D0C
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_0222783C:
	mov r0, #0xb
	str r0, [sp]
	ldr r3, _022283E0 ; =0x02229D10
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r8, #8]
	ldr r3, _022283E4 ; =0x02229D1C
	cmp r0, #0
	movne r0, #8
	moveq r0, #7
	str r0, [sp, #0x34]
	mov r0, #6
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r7, [sp, #0x34]
	ldr r0, [r8, #0xc]
	sub r0, r0, r7
	beq _022278D8
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r8, #0x24]
	add r3, r3, r7
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_022278D8:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	add r0, r8, #0x34
	bl ov60_02225A60
	mov r7, r0
	beq _022279E8
_02227910:
	ldr r0, [r7, #8]
	bl ov60_0222714C
	cmp r0, #0
	beq _02227944
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #8]
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227944:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283EC ; =0x02229D28
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r7, #0xc]
	bl ov60_0222714C
	cmp r0, #0
	beq _022279A0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #0xc]
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_022279A0:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r1, _022283F0 ; =0x0222A01C
	mov r0, r7
	ldr r1, [r1, #0]
	blx r1
	add r0, r8, #0x34
	bl ov60_02225A60
	mov r7, r0
	bne _02227910
_022279E8:
	ldr r0, [r8, #0x40]
	cmp r0, #1
	bne _02227C08
	ldr sl, [r8, #0x38]
	mov r7, #0
	mov r0, r7
	str r0, [sp, #0x10]
	cmp sl, #0
	mov r1, sl
	beq _02227A38
_02227A10:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x10]
	bne _02227A38
	ldr r0, [sl]
	cmp r1, r0
	ldrne r1, [r1, #4]
	cmpne r1, #0
	bne _02227A10
_02227A38:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02227B14
	cmp sl, #0
	beq _02227A94
_02227A4C:
	ldr r0, [sl, #8]
	add r7, r7, #0x16
	bl ov60_0222714C
	add r0, r0, #0x29
	add r7, r7, r0
	ldr r0, [sl, #0x14]
	ldr r1, [sl, #0x10]
	cmp r0, #0
	ldr r0, [r8, #0x38]
	addne r7, r7, #0x4b
	ldr r0, [r0, #0]
	add r2, r7, #2
	cmp sl, r0
	ldrne sl, [sl, #4]
	add r1, r2, r1
	add r7, r1, #2
	cmpne sl, #0
	bne _02227A4C
_02227A94:
	mov r0, #0x2c
	str r0, [sp]
	ldr r3, _022283F4 ; =0x02229D2C
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r7, r7, #0x18
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #0x12
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x46
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _02227B7C
_02227B14:
	cmp sl, #0
	beq _02227B54
_02227B1C:
	ldr r0, [sl, #8]
	bl ov60_022287A0
	add r0, r7, r0
	add r7, r0, #1
	ldr r0, [sl, #0xc]
	bl ov60_022287A0
	add r7, r7, r0
	ldr r0, [r8, #0x38]
	ldr r0, [r0, #0]
	cmp sl, r0
	ldrne sl, [sl, #4]
	addne r7, r7, #1
	cmpne sl, #0
	bne _02227B1C
_02227B54:
	mov r0, #0x31
	str r0, [sp]
	ldr r3, _022283F8 ; =0x02229D5C
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227B7C:
	mov r0, #0x10
	str r0, [sp]
	ldr r3, _022283FC ; =0x02229D90
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r1, r7
	mov r0, r4
	bl ov60_02228A18
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02227BE0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227BE0:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227C08:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r8, #0x40]
	cmp r0, #1
	bne _02227F88
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02227E48
	ldr r7, [r8, #0x38]
	cmp r7, #0
	beq _02227DF4
_02227C54:
	mov r0, #0x14
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x44
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #0x26
	str r0, [sp]
	ldr r3, _02228400 ; =0x02228D8C
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r7, #8]
	bl ov60_0222714C
	cmp r0, #0
	beq _02227D00
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #8]
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227D00:
	mov r0, #3
	str r0, [sp]
	ldr r3, _02228404 ; =0x02229DA4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _02227D5C
	mov r0, #0x4b
	str r0, [sp]
	ldr r3, _02228408 ; =0x02228DB4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227D5C:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _02227DB4
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #0xc]
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227DB4:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r8, #0x38]
	ldr r0, [r0, #0]
	cmp r7, r0
	ldrne r7, [r7, #4]
	cmpne r7, #0
	bne _02227C54
_02227DF4:
	mov r0, #0x14
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x44
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #4
	str r0, [sp]
	ldr r3, _0222840C ; =0x02229DA8
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _02227F88
_02227E48:
	ldr sl, [r8, #0x38]
	cmp sl, #0
	beq _02227F88
_02227E54:
	ldr r1, [sl, #8]
	mov r7, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _02227EB8
_02227E68:
	ldrsb r1, [r1, r7]
	mov r0, r4
	bl ov60_02228808
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02227EA4
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227EA4:
	add r7, r7, #1
	ldr r1, [sl, #8]
	ldrsb r0, [r1, r7]
	cmp r0, #0
	bne _02227E68
_02227EB8:
	mov r0, #1
	str r0, [sp]
	ldr r3, _02228410 ; =0x02229DB0
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r1, [sl, #0xc]
	mov r7, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _02227F44
_02227EF4:
	ldrsb r1, [r1, r7]
	mov r0, r4
	bl ov60_02228808
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02227F30
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227F30:
	add r7, r7, #1
	ldr r1, [sl, #0xc]
	ldrsb r0, [r1, r7]
	cmp r0, #0
	bne _02227EF4
_02227F44:
	ldr r0, [r8, #0x38]
	ldr r0, [r0, #0]
	cmp sl, r0
	beq _02227F88
	mov r0, #1
	str r0, [sp]
	ldr r3, _02228414 ; =0x02229DB4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr sl, [sl, #4]
	cmp sl, #0
	bne _02227E54
_02227F88:
	ldr r3, [sp, #0x38]
	cmp r3, #0
	ble _02227FB8
	mov r0, #0
	str r0, [sp]
	ldr r2, _02228418 ; =0x0222AA58
	mov r0, r8
	mov r1, r6
	bl ov60_02227070
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227FB8:
	mov r0, #0
	str r0, [sb]
	strb r0, [sp, #0x40]
	strb r0, [sp, #0x41]
	mov r1, #7
	strb r0, [sp, #0x42]
	strb r0, [sp, #0x43]
	ldr r5, [sb, #0x1c]
	str r1, [sp, #4]
	str r0, [sp, #0x38]
	add sl, sb, #0x20
	add r4, sp, #0x40
_02227FE8:
	ldr r1, [r8, #4]
	cmp r1, #0
	bne _02228690
	cmp r0, #0x400
	bge _02228030
	add r2, sl, r0
	mov r0, #0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r3, #1
	bl ov60_02227024
	ldr r3, [sp, #0x38]
	add r1, sb, r3
	ldrsb r2, [r1, #0x20]
	and r1, r3, #3
	strb r2, [r4, r1]
	b _022280C4
_02228030:
	ldr r1, _0222841C ; =0x000001FF
	and r7, r0, r1
	bne _02228090
	cmp r5, #0
	mov r0, #0x204
	mov r1, #4
	beq _02228064
	ldr r2, _02228420 ; =0x0222A018
	ldr r2, [r2, #0]
	blx r2
	str r0, [r5, #0]
	mov r5, r0
	b _02228078
_02228064:
	ldr r2, _02228420 ; =0x0222A018
	ldr r2, [r2, #0]
	blx r2
	mov r5, r0
	str r5, [sb, #0x1c]
_02228078:
	cmp r5, #0
	moveq r0, #1
	streq r0, [sp, #4]
	beq _02228690
	mov r0, #0
	str r0, [r5, #0]
_02228090:
	mov r0, #0
	add r2, r5, #4
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	add r2, r2, r7
	mov r3, #1
	bl ov60_02227024
	add r1, r5, r7
	ldrsb r2, [r1, #4]
	ldr r1, [sp, #0x38]
	and r1, r1, #3
	strb r2, [r4, r1]
_022280C4:
	cmp r0, #0
	movle r0, #0xa
	strle r0, [sp, #4]
	ble _02228690
	ldr r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	sub r1, r0, #4
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xd
	bne _02227FE8
	sub r1, r0, #3
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xa
	bne _02227FE8
	sub r1, r0, #2
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xd
	bne _02227FE8
	sub r1, r0, #1
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xa
	bne _02227FE8
	str r0, [sb]
	ldr r0, [sb]
	cmp r0, #0
	beq _02228690
	ldr r1, _02228418 ; =0x0222AA58
	mov r0, sb
	mov r2, #0
	mov r3, #0xe
	bl ov60_02226220
	cmp r0, #0
	beq _02228690
	ldr r0, _02228418 ; =0x0222AA58
	ldr r1, _02228424 ; =0x02229DB8
	mov r2, #5
	bl ov60_022270E4
	cmp r0, #0
	ldreq r0, _02228418 ; =0x0222AA58
	ldrsbeq r0, [r0, #8]
	cmpeq r0, #0x20
	bne _02228690
	ldr r0, _02228428 ; =0x0222AA61
	mov r1, #3
	bl ov60_02228980
	cmp r0, #0
	blt _02228690
	ldr r2, [sb]
	add r3, sp, #0x30
	mov r0, sb
	mov r1, #0xc
	bl ov60_02226010
	cmp r0, #0
	blt _02228690
	ldr r1, _0222842C ; =0x02229DC0
	add r2, sp, #0x34
	mov r0, sb
	bl ov60_02226C7C
	mov r5, r0
	moveq r0, #0
	streq r0, [sp, #4]
	beq _02228690
	cmp r5, #0x400
	bgt _02228690
	cmp r5, #0
	ble _02228218
	ldr r2, [sp, #0x34]
	ldr r1, _02228418 ; =0x0222AA58
	mov r0, sb
	mov r3, r5
	bl ov60_02226220
	cmp r0, #0
	beq _02228690
	ldr r0, _02228418 ; =0x0222AA58
	mov r1, r5
	bl ov60_02228980
	mov r5, r0
	bmi _02228690
	str r5, [r8, #0x14]
	b _02228220
_02228218:
	mvn r0, #0
	str r0, [r8, #0x14]
_02228220:
	ldr r1, _02228430 ; =0x02229DD0
	add r2, sp, #0x34
	mov r0, sb
	bl ov60_02226C7C
	str r0, [sp, #8]
	cmp r0, #0
	beq _02228690
	bge _02228280
	ldr r0, _02228418 ; =0x0222AA58
	mov r2, #0
	ldrsb r1, [r0, #5]
	ldrsb r3, [r0, #7]
	add r0, sp, #0x24
	strb r1, [sp, #0x24]
	mov r1, #2
	strb r3, [sp, #0x25]
	strb r2, [sp, #0x26]
	bl ov60_02228980
	cmp r0, #0xb
	movge r0, #1
	strge r0, [sp, #8]
	movlt r0, #0
	strlt r0, [sp, #8]
	b _022282C0
_02228280:
	cmp r0, #0x400
	mov r0, #0
	strgt r0, [sp, #8]
	bgt _022282C0
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r3, _02228434 ; =0x02229DDC
	mov r0, sb
	add r2, r1, r2
	bl ov60_02226150
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #8]
	movne r0, #0
	strne r0, [sp, #8]
_022282C0:
	ldr r1, _02228438 ; =0x02229DE8
	add r2, sp, #0x34
	mov r0, sb
	bl ov60_02226C7C
	cmp r0, #0
	beq _02228690
	cmp r0, #0x400
	movgt r1, #0
	bgt _0222831C
	cmp r0, #0
	ble _02228318
	ldr r1, [sp, #0x34]
	ldr r3, _0222843C ; =0x02229DFC
	add r2, r1, r0
	mov r0, #0x3b
	str r0, [sp]
	mov r0, sb
	bl ov60_02226150
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	b _0222831C
_02228318:
	mov r1, #0
_0222831C:
	ldr r0, [r8, #0x40]
	cmp r0, #2
	beq _02228690
	cmp r5, #0
	blt _02228440
	mov r4, #0
	b _0222836C
_02228338:
	str r4, [sp]
	ldr r2, [sb, #4]
	mov r0, r8
	mov r1, r6
	mov r3, r5
	bl ov60_02226348
	cmp r0, #0
	blt _02228690
	beq _02228388
	ldr r1, [sb, #4]
	sub r5, r5, r0
	add r0, r1, r0
	str r0, [sb, #4]
_0222836C:
	cmp r5, #0
	ble _02228388
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov60_0222630C
	cmp r0, #0
	beq _02228338
_02228388:
	cmp r5, #0
	beq _022283B4
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov60_0222630C
	cmp r0, #0
	movne r0, #6
	strne r0, [sp, #4]
	moveq r0, #0xa
	streq r0, [sp, #4]
	b _02228690
_022283B4:
	mov r0, #0
	str r0, [sp, #4]
	b _02228690
	; .align 2, 0
_022283C0: .word 0x0222AA10
_022283C4: .word 0x0222A024
_022283C8: .word 0x0222A020
_022283CC: .word 0x0000CC8D
_022283D0: .word 0x02229CF4
_022283D4: .word 0x02229CFC
_022283D8: .word 0x02229D04
_022283DC: .word 0x02229D0C
_022283E0: .word 0x02229D10
_022283E4: .word 0x02229D1C
_022283E8: .word 0x02229D24
_022283EC: .word 0x02229D28
_022283F0: .word 0x0222A01C
_022283F4: .word 0x02229D2C
_022283F8: .word 0x02229D5C
_022283FC: .word 0x02229D90
_02228400: .word 0x02228D8C
_02228404: .word 0x02229DA4
_02228408: .word 0x02228DB4
_0222840C: .word 0x02229DA8
_02228410: .word 0x02229DB0
_02228414: .word 0x02229DB4
_02228418: .word 0x0222AA58
_0222841C: .word 0x000001FF
_02228420: .word 0x0222A018
_02228424: .word 0x02229DB8
_02228428: .word 0x0222AA61
_0222842C: .word 0x02229DC0
_02228430: .word 0x02229DD0
_02228434: .word 0x02229DDC
_02228438: .word 0x02229DE8
_0222843C: .word 0x02229DFC
_02228440:
	mov r0, #0xa
	cmp r1, #0
	str r0, [sp, #4]
	beq _022285E4
	mov r7, #0
	ldr r5, _02228418 ; =0x0222AA58
	add r4, sp, #0x40
	mov sl, r7
_02228460:
	mov r0, #0
	strb r0, [sp, #0x40]
	strb r0, [sp, #0x41]
	str r0, [sp, #0x38]
_02228470:
	str r7, [sp]
	ldr r2, [sp, #0x38]
	mov r0, r8
	mov r1, r6
	mov r3, #1
	add r2, r5, r2
	bl ov60_02227024
	cmp r0, #0
	blt _02228690
	ldr r1, [sp, #0x38]
	ldrsb r0, [r5, r1]
	and r2, r1, #1
	strb r0, [r4, r2]
	cmp r0, #0x3b
	beq _022284C8
	cmp r0, #0xa
	bne _02228510
	sub r2, r1, #1
	and r2, r2, #1
	ldrsb r2, [r4, r2]
	cmp r2, #0xd
	bne _02228510
_022284C8:
	cmp r0, #0xa
	subeq r0, r1, #1
	streq r0, [sp, #0x34]
	beq _022284F0
	str r1, [sp, #0x34]
	mov r0, r8
	mov r1, r6
	bl ov60_022272D8
	cmp r0, #0
	ble _02228690
_022284F0:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _02228690
	mov r0, r5
	bl ov60_02228898
	mov fp, r0
	bmi _02228690
	b _02228524
_02228510:
	ldr r0, [sp, #0x38]
	add r0, r0, #1
	str r0, [sp, #0x38]
	cmp r0, #0x400
	blt _02228470
_02228524:
	ldr r0, [sp, #0x38]
	cmp r0, #0x400
	moveq r0, #7
	streq r0, [sp, #4]
	beq _02228690
	cmp fp, #0
	ble _022285CC
	ble _02228460
_02228544:
	str sl, [sp]
	mov r0, r8
	mov r1, r6
	ldr r2, [sb, #4]
	mov r3, fp
	bl ov60_02226348
	cmp r0, #0
	ble _02228690
	ldr r1, [sb, #4]
	sub fp, fp, r0
	add r0, r1, r0
	str r0, [sb, #4]
	bne _022285C0
	mov r0, #0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, #1
	bl ov60_02227024
	cmp r0, #0
	ble _02228690
	mov r0, #0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, #1
	bl ov60_02227024
	cmp r0, #0
	ble _02228690
_022285C0:
	cmp fp, #0
	bgt _02228544
	b _02228460
_022285CC:
	mov r0, r8
	mov r1, r6
	bl ov60_022272D8
	mov r0, #0
	str r0, [sp, #4]
	b _02228690
_022285E4:
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov60_0222630C
	cmp r0, #0
	bne _02228690
	mov r5, #0
	ldr r4, _02228418 ; =0x0222AA58
	mov sl, #1
	mov r7, r5
_02228608:
	mov r0, r8
	mov r1, r6
	ldr r2, [sb, #4]
	mov r3, r7
	bl ov60_02226320
	cmp r0, #0
	blt _02228690
	moveq r0, #0
	streq r0, [sp, #4]
	beq _02228690
	ldr r1, [sb, #4]
	add r0, r1, r0
	str r0, [sb, #4]
	mov r0, sb
	ldr r1, [sb, #4]
	bl ov60_0222630C
	cmp r0, #0
	beq _0222867C
	str r5, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	mov r3, sl
	bl ov60_02227024
	cmp r0, #0
	blt _02228690
	movne r0, #6
	strne r0, [sp, #4]
	bne _02228690
_0222867C:
	mov r0, sb
	ldr r1, [sb, #4]
	bl ov60_0222630C
	cmp r0, #0
	beq _02228608
_02228690:
	bl ov60_02225E38
	ldr r0, _022283C8 ; =0x0222A020
	ldr r1, _022283F0 ; =0x0222A01C
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _022283C8 ; =0x0222A020
	mov r1, #0
	str r1, [r0, #0]
	bl ov60_02225E4C
	ldr r0, [r8, #4]
	cmp r0, #0
	movne r0, #8
	strne r0, [sp, #4]
	cmp r6, #0
	blt _02228718
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022286E8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02228718
_022286E8:
	mov r0, r8
	mov r1, r6
	bl ov60_02226F5C
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [sp, #4]
	add r1, sp, #0x3c
	mov r0, r6
	bl ov60_022273A0
	mov r0, #0
	mvn r6, #0
	str r0, [sp, #8]
_02228718:
	ldr r0, [sp, #4]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sb, #8]
	beq _02228740
	mov r0, #0
	str r0, [sb, #8]
	ldr r1, _0222879C ; =0x0222A014
	ldr r0, [sp, #4]
	str r0, [r1, #0]
_02228740:
	ldr r4, [r8, #0x2c]
	mov r0, r8
	ldr r5, [r8, #0x3c]
	bl ov60_02226998
	ldr r0, [sp, #4]
	mov r1, sb
	mov r2, r4
	blx r5
_02228760:
	ldr r0, _022283C4 ; =0x0222A024
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022274E4
_02228770:
	cmp r6, #0
	blt _02228790
	mov r0, r8
	mov r1, r6
	bl ov60_02226F5C
	add r1, sp, #0x3c
	mov r0, r6
	bl ov60_022273A0
_02228790:
	bl ov60_02227440
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222879C: .word 0x0222A014
	arm_func_end ov60_022274A0

	arm_func_start ov60_022287A0
ov60_022287A0: ; 0x022287A0
	ldrsb r2, [r0], #1
	mov r1, #0
	cmp r2, #0
	beq _02228800
_022287B0:
	cmp r2, #0x30
	blt _022287C0
	cmp r2, #0x39
	ble _022287E8
_022287C0:
	cmp r2, #0x41
	blt _022287D0
	cmp r2, #0x5a
	ble _022287E8
_022287D0:
	cmp r2, #0x61
	blt _022287E0
	cmp r2, #0x7a
	ble _022287E8
_022287E0:
	cmp r2, #0x20
	bne _022287F0
_022287E8:
	add r1, r1, #1
	b _022287F4
_022287F0:
	add r1, r1, #3
_022287F4:
	ldrsb r2, [r0], #1
	cmp r2, #0
	bne _022287B0
_02228800:
	mov r0, r1
	bx lr
	arm_func_end ov60_022287A0

	arm_func_start ov60_02228808
ov60_02228808: ; 0x02228808
	cmp r1, #0x20
	bne _02228820
	mov r1, #0x2b
	strb r1, [r0]
	mov r0, #1
	bx lr
_02228820:
	cmp r1, #0x30
	blt _02228830
	cmp r1, #0x39
	ble _02228850
_02228830:
	cmp r1, #0x41
	blt _02228840
	cmp r1, #0x5a
	ble _02228850
_02228840:
	cmp r1, #0x61
	blt _0222885C
	cmp r1, #0x7a
	bgt _0222885C
_02228850:
	strb r1, [r0]
	mov r0, #1
	bx lr
_0222885C:
	asr r2, r1, #4
	and r3, r2, #0xf
	mov r2, #0x25
	strb r2, [r0]
	cmp r3, #0xa
	addlt r2, r3, #0x30
	addge r2, r3, #0x37
	and r1, r1, #0xf
	cmp r1, #0xa
	addlt r1, r1, #0x30
	strb r2, [r0, #1]
	addge r1, r1, #0x37
	strb r1, [r0, #2]
	mov r0, #3
	bx lr
	arm_func_end ov60_02228808

	arm_func_start ov60_02228898
ov60_02228898: ; 0x02228898
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, #8
	mvngt r0, #0
	ldmia sp!,gt {r4, r5, r6, r7, r8, pc}
	bne _022288BC
	ldrsb r2, [r0]
	cmp r2, #0x37
	mvngt r0, #0
	ldmia sp!,gt {r4, r5, r6, r7, r8, pc}
_022288BC:
	mov r5, #0
	mov r6, r5
	mov r7, r5
	cmp r1, #0
	ble _02228978
	mov lr, #1
	mov r3, lr
	mov ip, lr
	mov r4, r5
_022288E0:
	ldrsb r8, [r0, r5]
	mov r2, r4
	cmp r8, #0x41
	blt _022288F8
	cmp r8, #0x5a
	movle r2, lr
_022288F8:
	cmp r2, #0
	addne r8, r8, #0x20
	lsl r2, r8, #0x18
	asr r2, r2, #0x18
	cmp r2, #0x30
	blt _02228928
	cmp r2, #0x39
	bgt _02228928
	add r2, r2, r6, lsl #4
	mov r7, ip
	sub r6, r2, #0x30
	b _0222896C
_02228928:
	cmp r2, #0x61
	blt _02228948
	cmp r2, #0x66
	bgt _02228948
	add r2, r2, r6, lsl #4
	mov r7, r3
	sub r6, r2, #0x57
	b _0222896C
_02228948:
	cmp r7, #0
	beq _0222895C
	cmp r2, #0x20
	cmpne r2, #0
	beq _02228978
_0222895C:
	cmp r7, #0
	cmpeq r2, #0x20
	mvnne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
_0222896C:
	add r5, r5, #1
	cmp r5, r1
	blt _022288E0
_02228978:
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_02228898

	arm_func_start ov60_02228980
ov60_02228980: ; 0x02228980
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0xa
	mvngt r0, #0
	ldmia sp!,gt {r3, r4, r5, pc}
	mov lr, #0
	mov r4, lr
	mov r3, lr
	cmp r1, #0
	ble _02228A10
	mov ip, #1
	mov r2, #0xa
_022289AC:
	cmp r3, #0
	ldrsb r5, [r0, lr]
	beq _022289C4
	cmp r5, #0x20
	cmpne r5, #0
	beq _02228A10
_022289C4:
	cmp r3, #0
	cmpeq r5, #0x20
	beq _02228A04
	cmp r5, #0x30
	blt _022289E0
	cmp r5, #0x39
	ble _022289E8
_022289E0:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_022289E8:
	mla r3, r4, r2, r5
	mov r5, r4
	sub r4, r3, #0x30
	cmp r5, r4
	mov r3, ip
	mvngt r0, #0
	ldmia sp!,gt {r3, r4, r5, pc}
_02228A04:
	add lr, lr, #1
	cmp lr, r1
	blt _022289AC
_02228A10:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov60_02228980

	arm_func_start ov60_02228A18
ov60_02228A18: ; 0x02228A18
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	ldr r6, _02228AD0 ; =0x02228E00
	add r4, sp, #0
	mov sl, r0
	mov sb, r1
	ldmia r6!, {r0, r1, r2, r3}
	mov r5, r4
	stmia r4!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r4!, {r0, r1, r2, r3}
	ldr r0, [r6, #0]
	mov r7, #0
	str r0, [r4, #0]
	mov r6, r7
	mov r1, r7
	mov fp, #1
	mov r4, #0x30
_02228A60:
	ldr r8, [r5, r6, lsl #2]
	cmp sb, r8
	blo _02228A98
	mov r0, sb
	mov r1, r8
	bl sub_020E2178
	mul r2, r0
	cmp sl, #0
	addne r0, r0, #0x30
	strbne r0, [sl, r7]
	mov r1, fp
	sub sb, sb, r2
	add r7, r7, #1
	b _02228AAC
_02228A98:
	cmp r1, #0
	beq _02228AAC
	cmp sl, #0
	strbne r4, [sl, r7]
	add r7, r7, #1
_02228AAC:
	add r6, r6, #1
	cmp r6, #9
	blt _02228A60
	cmp sl, #0
	addne r0, sb, #0x30
	strbne r0, [sl, r7]
	add r0, r7, #1
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02228AD0: .word 0x02228E00
	arm_func_end ov60_02228A18

	arm_func_start ov60_02228AD4
ov60_02228AD4: ; 0x02228AD4
	stmfd sp!, {r4, r5, r6, lr}
	mov ip, #1
	mov r3, #0
	mov r2, ip
	mov lr, r3
	b _02228B04
_02228AEC:
	cmp r5, #0
	cmpne r5, #0x20
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r0, #1
	add r1, r1, #1
_02228B04:
	ldrsb r6, [r1]
	mov r4, lr
	cmp r6, #0x41
	blt _02228B1C
	cmp r6, #0x5a
	movle r4, ip
_02228B1C:
	ldrsb r5, [r0]
	cmp r4, #0
	addne r6, r6, #0x20
	mov r4, r3
	cmp r5, #0x41
	blt _02228B3C
	cmp r5, #0x5a
	movle r4, r2
_02228B3C:
	cmp r4, #0
	addne r4, r5, #0x20
	moveq r4, r5
	cmp r4, r6
	beq _02228AEC
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov60_02228AD4

	arm_func_start ov60_02228B58
ov60_02228B58: ; 0x02228B58
	stmfd sp!, {r3, lr}
	mov ip, #0
	cmp r1, #0
	mov lr, ip
	sub r1, r1, #1
	beq _02228BB8
	mov r2, #0xa
_02228B74:
	ldrsb r3, [r0]
	cmp r3, #0x20
	beq _02228BA8
	cmp r3, #0x30
	blt _02228BA8
	cmp r3, #0x39
	bgt _02228BA8
	mla r3, lr, r2, r3
	add ip, ip, #1
	cmp ip, #9
	sub lr, r3, #0x30
	mvngt r0, #0
	ldmia sp!,gt {r3, pc}
_02228BA8:
	cmp r1, #0
	add r0, r0, #1
	sub r1, r1, #1
	bne _02228B74
_02228BB8:
	cmp ip, #0
	mvneq lr, #0
	mov r0, lr
	ldmia sp!, {r3, pc}
	arm_func_end ov60_02228B58

	arm_func_start ov60_02228BC8
ov60_02228BC8: ; 0x02228BC8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r1, r3
	mvnlt r0, #0
	ldmia sp!,lt {r4, r5, r6, r7, r8, pc}
	sub r1, r1, r3
	add r8, r1, #1
	cmp r8, #0
	mov r4, #0
	ble _02228C44
	ldrsb r7, [r2]
	mov lr, #1
_02228BF4:
	ldrsb r1, [r0, r4]
	cmp r7, r1
	bne _02228C38
	mov r5, lr
	cmp r3, #1
	add r6, r0, r4
	ble _02228C2C
_02228C10:
	ldrsb ip, [r6, r5]
	ldrsb r1, [r2, r5]
	cmp ip, r1
	bne _02228C2C
	add r5, r5, #1
	cmp r5, r3
	blt _02228C10
_02228C2C:
	cmp r5, r3
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
_02228C38:
	add r4, r4, #1
	cmp r4, r8
	blt _02228BF4
_02228C44:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_02228BC8
	; 0x02228C4C

	.incbin "data/overlay60.bin"
