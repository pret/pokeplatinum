	.include "macros/function.inc"
	.include "overlay060/ov60_0221F968.inc"

	

	.text


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
_0221F9CC: .word Unk_ov60_02228E40
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
	bl strncat
	add r0, sp, #0x14
	add r0, #1
	bl strlen
	add r1, sp, #0x14
	add r2, r0, #0
	add r0, r5, #0
	add r1, #1
	bl MATH_CalcSHA1
	ldr r0, _0221FC58 ; =0x02228E40
	ldr r1, _0221FC64 ; =0x02228E8C
	ldr r0, [r0, #0x24]
	bl strcat
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
	bl strcat
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
	bl strncmp
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
	bl strncmp
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
	bl strncmp
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
	bl strncmp
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
	bl strncmp
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
	bl strncmp
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
	bl memcpy
	ldr r0, _0221FC58 ; =0x02228E40
	mov r1, #7
	str r1, [r0, #0]
	b _0221FB9A
_0221FB8A:
	add r1, r6, #0
	bl memcpy
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
_0221FC58: .word Unk_ov60_02228E40
_0221FC5C: .word Unk_ov60_02228C4C
_0221FC60: .word Unk_ov60_02228E74
_0221FC64: .word Unk_ov60_02228E8C
_0221FC68: .word Unk_ov60_02228E94
_0221FC6C: .word Unk_ov60_02228E9C
_0221FC70: .word Unk_ov60_02228EB4
_0221FC74: .word Unk_ov60_02228ECC
_0221FC78: .word Unk_ov60_02228EE4
_0221FC7C: .word Unk_ov60_02228EFC
_0221FC80: .word Unk_ov60_02228F14
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
	bl DWC_InitGHTTP
	cmp r0, #0
	bne _0221FCA0
	ldr r0, _0221FCA4 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
_0221FCA0:
	pop {r3, pc}
	nop
_0221FCA4: .word Unk_ov60_02228E40
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
	bl strlen
	add r6, r0, #0
	add r0, r4, #0
	bl ov60_0221F944
	add r1, r0, #0
	add r6, #0x45
	mov r0, #0xa
	add r1, r6, r1
	bl DWC_Alloc
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
	bl sprintf
	ldr r0, _0221FD38 ; =0x02228E40
	ldr r6, [r0, #0x24]
	add r0, r6, #0
	bl strlen
	add r5, r0, #0
	ldr r0, _0221FD40 ; =0x02228E8C
	bl strlen
	add r1, r6, r5
	add r1, r1, r0
	ldr r0, _0221FD38 ; =0x02228E40
	str r1, [r0, #0x28]
	ldr r0, _0221FD44 ; =0x02228E94
	bl strlen
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
_0221FD38: .word Unk_ov60_02228E40
_0221FD3C: .word Unk_ov60_02228F2C
_0221FD40: .word Unk_ov60_02228E8C
_0221FD44: .word Unk_ov60_02228E94
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
	bl DWC_GetGHTTPData
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
	bl DWC_ProcessGHTTP
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
	bl DWC_GetGHTTPData
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
	bl DWC_ProcessGHTTP
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
_0221FDE0: .word Unk_ov60_02228E40
_0221FDE4: .word ov60_0221F9D0
_0221FDE8: .word Unk_ov60_02228E40
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
	bl DWC_Free
	ldr r0, _0221FE10 ; =0x02228E40
	mov r1, #0
	str r1, [r0, #0x24]
_0221FE04:
	bl DWC_ShutdownGHTTP
	ldr r0, _0221FE10 ; =0x02228E40
	mov r1, #1
	str r1, [r0, #0]
	pop {r3, pc}
	; .align 2, 0
_0221FE10: .word Unk_ov60_02228E40
	thumb_func_end ov60_0221FDEC

	thumb_func_start ov60_0221FE14
ov60_0221FE14: ; 0x0221FE14
	ldr r0, _0221FE1C ; =0x02228E40
	ldr r0, [r0, #8]
	bx lr
	nop
_0221FE1C: .word Unk_ov60_02228E40
	thumb_func_end ov60_0221FE14

	thumb_func_start ov60_0221FE20
ov60_0221FE20: ; 0x0221FE20
	ldr r0, _0221FE28 ; =0x02228E40
	ldr r0, [r0, #0xc]
	bx lr
	nop
_0221FE28: .word Unk_ov60_02228E40
	thumb_func_end ov60_0221FE20

	.rodata


	.global Unk_ov60_02228C4C
Unk_ov60_02228C4C: ; 0x02228C4C
	.incbin "incbin/overlay60_rodata.bin", 0x0, 0x11



	.data


	.global Unk_ov60_02228E40
Unk_ov60_02228E40: ; 0x02228E40
	.incbin "incbin/overlay60_data.bin", 0x0, 0x34 - 0x0

	.global Unk_ov60_02228E74
Unk_ov60_02228E74: ; 0x02228E74
	.incbin "incbin/overlay60_data.bin", 0x34, 0x4C - 0x34

	.global Unk_ov60_02228E8C
Unk_ov60_02228E8C: ; 0x02228E8C
	.incbin "incbin/overlay60_data.bin", 0x4C, 0x54 - 0x4C

	.global Unk_ov60_02228E94
Unk_ov60_02228E94: ; 0x02228E94
	.incbin "incbin/overlay60_data.bin", 0x54, 0x5C - 0x54

	.global Unk_ov60_02228E9C
Unk_ov60_02228E9C: ; 0x02228E9C
	.incbin "incbin/overlay60_data.bin", 0x5C, 0x74 - 0x5C

	.global Unk_ov60_02228EB4
Unk_ov60_02228EB4: ; 0x02228EB4
	.incbin "incbin/overlay60_data.bin", 0x74, 0x8C - 0x74

	.global Unk_ov60_02228ECC
Unk_ov60_02228ECC: ; 0x02228ECC
	.incbin "incbin/overlay60_data.bin", 0x8C, 0xA4 - 0x8C

	.global Unk_ov60_02228EE4
Unk_ov60_02228EE4: ; 0x02228EE4
	.incbin "incbin/overlay60_data.bin", 0xA4, 0xBC - 0xA4

	.global Unk_ov60_02228EFC
Unk_ov60_02228EFC: ; 0x02228EFC
	.incbin "incbin/overlay60_data.bin", 0xBC, 0xD4 - 0xBC

	.global Unk_ov60_02228F14
Unk_ov60_02228F14: ; 0x02228F14
	.incbin "incbin/overlay60_data.bin", 0xD4, 0xEC - 0xD4

	.global Unk_ov60_02228F2C
Unk_ov60_02228F2C: ; 0x02228F2C
	.incbin "incbin/overlay60_data.bin", 0xEC, 0xA

