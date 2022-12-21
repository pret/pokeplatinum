	.include "macros/function.inc"
	.include "include/unk_0205CA94.inc"

	

	.text


	thumb_func_start sub_0205CA94
sub_0205CA94: ; 0x0205CA94
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0205CAA6
	bl sub_020219F8
_0205CAA6:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #5
	bls _0205CAB2
	b _0205CBF6
_0205CAB2:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205CABE: ; jump table
	.short _0205CACA - _0205CABE - 2 ; case 0
	.short _0205CAEE - _0205CABE - 2 ; case 1
	.short _0205CB1E - _0205CABE - 2 ; case 2
	.short _0205CBA0 - _0205CABE - 2 ; case 3
	.short _0205CBB6 - _0205CABE - 2 ; case 4
	.short _0205CBE6 - _0205CABE - 2 ; case 5
_0205CACA:
	ldr r0, [r4, #0]
	ldr r0, [r0, #0x3c]
	bl sub_0205EB3C
	bl sub_02062DDC
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x18
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CAEE:
	sub r1, #0x24
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #0
	bl sub_0205D274
	mov r1, #0x5b
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #1
	bl sub_0205D274
	mov r0, #0x5f
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	add sp, #0x18
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CB1E:
	mov r0, #0
	str r0, [sp, #0xc]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0205CB54
	sub r1, #0x24
	add r7, r4, r1
	add r6, r4, #0
	add r5, sp, #0x10
_0205CB32:
	mov r1, #0x5a
	lsl r1, r1, #2
	ldr r1, [r6, r1]
	add r0, r7, #0
	blx r1
	stmia r5!, {r0}
	ldr r0, [sp, #0xc]
	add r7, #0x10
	add r0, r0, #1
	str r0, [sp, #0xc]
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldr r0, [sp, #0xc]
	add r6, #0x10
	cmp r0, r1
	blt _0205CB32
_0205CB54:
	ldr r0, [sp, #0x10]
	cmp r0, #2
	bne _0205CB72
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl sub_0200F174
_0205CB72:
	mov r0, #0x5f
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	mov r3, #0
	cmp r2, #0
	ble _0205CB8E
	add r1, sp, #0x10
_0205CB80:
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _0205CB8E
	add r3, r3, #1
	add r1, r1, #4
	cmp r3, r2
	blt _0205CB80
_0205CB8E:
	cmp r3, r2
	bne _0205CBF6
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x18
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CBA0:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205CBF6
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x18
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CBB6:
	sub r0, r1, #4
	ldr r0, [r4, r0]
	mov r6, #0
	cmp r0, #0
	ble _0205CBD8
	sub r1, #0x24
	mov r7, #0x5f
	add r5, r4, r1
	lsl r7, r7, #2
_0205CBC8:
	add r0, r5, #0
	bl sub_0205D3AC
	ldr r0, [r4, r7]
	add r6, r6, #1
	add r5, #0x10
	cmp r6, r0
	blt _0205CBC8
_0205CBD8:
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x18
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0205CBE6:
	add r1, #8
	ldr r0, [r4, r1]
	mov r2, #1
	str r2, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205D080
_0205CBF6:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0205CA94

	thumb_func_start sub_0205CBFC
sub_0205CBFC: ; 0x0205CBFC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	add r4, r1, #0
	mov r1, #0
	add r0, sp, #0xc
	strh r1, [r0]
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #5
	beq _0205CC1A
	ldr r0, [r4, #4]
	bl sub_020219F8
_0205CC1A:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #5
	bls _0205CC26
	b _0205CD2E
_0205CC26:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205CC32: ; jump table
	.short _0205CC3E - _0205CC32 - 2 ; case 0
	.short _0205CC56 - _0205CC32 - 2 ; case 1
	.short _0205CCB2 - _0205CC32 - 2 ; case 2
	.short _0205CCE6 - _0205CC32 - 2 ; case 3
	.short _0205CD08 - _0205CC32 - 2 ; case 4
	.short _0205CD1E - _0205CC32 - 2 ; case 5
_0205CC3E:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x10
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0205CC56:
	mov r0, #4
	add r1, sp, #0xc
	mov r2, #2
	mov r3, #0
	bl sub_0201972C
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r1, #0x57
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #2
	bl sub_0205D274
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl sub_0200F174
	ldr r0, _0205CD34 ; =0x0000062F
	bl sub_02005748
	mov r0, #0x5f
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	add sp, #0x10
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0205CCB2:
	add r0, r1, #0
	sub r1, #0x18
	sub r0, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	blx r1
	cmp r0, #0
	bne _0205CD2E
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205CD2E
	ldr r0, _0205CD38 ; =0x00000631
	bl sub_02005748
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x10
	add r1, r1, #1
	str r1, [r4, r0]
	mov r1, #0xfe
	mvn r1, r1
	add r0, r0, #4
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0205CCE6:
	add r0, r1, #4
	ldr r2, [r4, r0]
	add r2, #0x10
	str r2, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	ble _0205CD2E
	ldr r0, [r4, r1]
	add r0, r0, #1
	str r0, [r4, r1]
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	add sp, #0x10
	pop {r3, r4, r5, pc}
_0205CD08:
	sub r1, #0x24
	add r0, r4, r1
	bl sub_0205D3AC
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0x10
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r3, r4, r5, pc}
_0205CD1E:
	add r1, #8
	ldr r0, [r4, r1]
	mov r2, #1
	str r2, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205D080
_0205CD2E:
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0205CD34: .word 0x0000062F
_0205CD38: .word 0x00000631
	thumb_func_end sub_0205CBFC

	thumb_func_start sub_0205CD3C
sub_0205CD3C: ; 0x0205CD3C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _0205CD54
	ldr r0, [r4, #4]
	bl sub_020219F8
_0205CD54:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #6
	bls _0205CD60
	b _0205CE74
_0205CD60:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205CD6C: ; jump table
	.short _0205CD7A - _0205CD6C - 2 ; case 0
	.short _0205CD92 - _0205CD6C - 2 ; case 1
	.short _0205CDBC - _0205CD6C - 2 ; case 2
	.short _0205CDE4 - _0205CD6C - 2 ; case 3
	.short _0205CE26 - _0205CD6C - 2 ; case 4
	.short _0205CE44 - _0205CD6C - 2 ; case 5
	.short _0205CE5A - _0205CD6C - 2 ; case 6
_0205CD7A:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CD92:
	sub r1, #0x24
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #3
	bl sub_0205D274
	mov r0, #0x63
	lsl r0, r0, #4
	bl sub_02005748
	mov r0, #0x5f
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	add sp, #0xc
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CDBC:
	add r0, r1, #4
	ldr r2, [r4, r0]
	sub r2, #0x20
	str r2, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xfe
	mvn r0, r0
	cmp r1, r0
	bge _0205CE74
	mov r0, #1
	mov r1, #0
	bl sub_0201FF74
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CDE4:
	add r0, r1, #0
	sub r1, #0x18
	sub r0, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	blx r1
	add r5, r0, #0
	cmp r5, #2
	bne _0205CE14
	mov r1, #0x61
	mov r0, #0
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r1, #6
	str r1, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r1, #4
	str r1, [sp, #8]
	ldr r3, _0205CE78 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl sub_0200F174
_0205CE14:
	cmp r5, #0
	bne _0205CE74
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CE26:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205CE74
	mov r0, #0x61
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	add sp, #0xc
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CE44:
	sub r1, #0x24
	add r0, r4, r1
	bl sub_0205D3AC
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CE5A:
	mov r0, #2
	mov r1, #0
	bl sub_0201FF74
	mov r0, #0x62
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	str r1, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205D080
_0205CE74:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0205CE78: .word 0x00007FFF
	thumb_func_end sub_0205CD3C

	thumb_func_start sub_0205CE7C
sub_0205CE7C: ; 0x0205CE7C
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #6
	add r4, r1, #0
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #6
	beq _0205CE94
	ldr r0, [r4, #4]
	bl sub_020219F8
_0205CE94:
	mov r1, #6
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #6
	bls _0205CEA0
	b _0205CFD0
_0205CEA0:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0205CEAC: ; jump table
	.short _0205CEBA - _0205CEAC - 2 ; case 0
	.short _0205CEF6 - _0205CEAC - 2 ; case 1
	.short _0205CF1A - _0205CEAC - 2 ; case 2
	.short _0205CF36 - _0205CEAC - 2 ; case 3
	.short _0205CF66 - _0205CEAC - 2 ; case 4
	.short _0205CFAA - _0205CEAC - 2 ; case 5
	.short _0205CFC0 - _0205CEAC - 2 ; case 6
_0205CEBA:
	ldr r0, [r4, #0]
	mov r1, #0
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r1, #0x57
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #4
	bl sub_0205D274
	mov r1, #0x5b
	lsl r1, r1, #2
	add r0, r4, #0
	add r1, r4, r1
	mov r2, #5
	bl sub_0205D274
	mov r0, #0x5f
	mov r1, #2
	lsl r0, r0, #2
	str r1, [r4, r0]
	add r1, r0, #4
	ldr r1, [r4, r1]
	add r0, r0, #4
	add r1, r1, #1
	add sp, #0xc
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CEF6:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #4
	str r0, [sp, #8]
	ldr r3, _0205CFD4 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl sub_0200F174
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CF1A:
	bl sub_0200F2AC
	cmp r0, #0
	beq _0205CFD0
	ldr r0, _0205CFD8 ; =0x00000632
	bl sub_02005748
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CF36:
	add r0, r1, #0
	sub r1, #0x18
	sub r0, #0x24
	ldr r1, [r4, r1]
	add r0, r4, r0
	blx r1
	cmp r0, #0
	bne _0205CFD0
	ldr r0, [r4, #0]
	mov r1, #1
	ldr r0, [r0, #0x3c]
	bl sub_0205EB18
	mov r0, #0x61
	mov r1, #6
	lsl r0, r0, #2
	str r1, [r4, r0]
	sub r1, r0, #4
	ldr r1, [r4, r1]
	sub r0, r0, #4
	add r1, r1, #1
	add sp, #0xc
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CF66:
	add r0, r1, #0
	sub r1, #8
	sub r0, #0x14
	ldr r1, [r4, r1]
	add r0, r4, r0
	blx r1
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	cmp r1, #0
	bgt _0205CF94
	bne _0205CF98
	sub r0, #0x28
	add r0, r4, r0
	bl sub_0205D3AC
	mov r0, #0x61
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	b _0205CF98
_0205CF94:
	sub r1, r1, #1
	str r1, [r4, r0]
_0205CF98:
	cmp r5, #0
	bne _0205CFD0
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CFAA:
	sub r1, #0x14
	add r0, r4, r1
	bl sub_0205D3AC
	mov r0, #6
	lsl r0, r0, #6
	ldr r1, [r4, r0]
	add sp, #0xc
	add r1, r1, #1
	str r1, [r4, r0]
	pop {r4, r5, pc}
_0205CFC0:
	add r1, #8
	ldr r0, [r4, r1]
	mov r2, #1
	str r2, [r0, #0]
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0205D080
_0205CFD0:
	add sp, #0xc
	pop {r4, r5, pc}
	; .align 2, 0
_0205CFD4: .word 0x00007FFF
_0205CFD8: .word 0x00000632
	thumb_func_end sub_0205CE7C

	thumb_func_start sub_0205CFDC
sub_0205CFDC: ; 0x0205CFDC
	push {r3, r4, r5, lr}
	add r3, r1, #0
	add r4, r0, #0
	add r5, r2, #0
	cmp r3, #3
	bhi _0205D032
	add r1, r3, r3
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205CFF4: ; jump table
	.short _0205CFFC - _0205CFF4 - 2 ; case 0
	.short _0205D00A - _0205CFF4 - 2 ; case 1
	.short _0205D018 - _0205CFF4 - 2 ; case 2
	.short _0205D026 - _0205CFF4 - 2 ; case 3
_0205CFFC:
	ldr r2, _0205D03C ; =0x020ED8B0
	ldr r0, _0205D040 ; =sub_0205CA94
	ldrb r2, [r2, r3]
	add r1, r4, #0
	bl sub_0205D050
	b _0205D032
_0205D00A:
	ldr r2, _0205D03C ; =0x020ED8B0
	ldr r0, _0205D044 ; =sub_0205CBFC
	ldrb r2, [r2, r3]
	add r1, r4, #0
	bl sub_0205D050
	b _0205D032
_0205D018:
	ldr r2, _0205D03C ; =0x020ED8B0
	ldr r0, _0205D048 ; =sub_0205CD3C
	ldrb r2, [r2, r3]
	add r1, r4, #0
	bl sub_0205D050
	b _0205D032
_0205D026:
	ldr r2, _0205D03C ; =0x020ED8B0
	ldr r0, _0205D04C ; =sub_0205CE7C
	ldrb r2, [r2, r3]
	add r1, r4, #0
	bl sub_0205D050
_0205D032:
	mov r1, #0x62
	lsl r1, r1, #2
	str r5, [r0, r1]
	str r4, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205D03C: .word 0x020ED8B0
_0205D040: .word sub_0205CA94
_0205D044: .word sub_0205CBFC
_0205D048: .word sub_0205CD3C
_0205D04C: .word sub_0205CE7C
	thumb_func_end sub_0205CFDC

	thumb_func_start sub_0205D050
sub_0205D050: ; 0x0205D050
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x63
	add r6, r2, #0
	lsl r1, r1, #2
	mov r2, #5
	mov r3, #4
	bl sub_0200679C
	bl sub_0201CED0
	add r4, r0, #0
	ldr r0, [r5, #0xc]
	bl sub_02025E38
	bl sub_02025F30
	add r1, r0, #0
	add r0, r4, #4
	add r2, r6, #0
	bl sub_0205D094
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205D050

	thumb_func_start sub_0205D080
sub_0205D080: ; 0x0205D080
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #4
	bl sub_0205D0AC
	add r0, r4, #0
	bl sub_020067D0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D080

	thumb_func_start sub_0205D094
sub_0205D094: ; 0x0205D094
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	bl sub_0205D0B4
	add r0, r5, #0
	add r1, r4, #0
	add r2, r6, #0
	bl sub_0205D0D8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205D094

	thumb_func_start sub_0205D0AC
sub_0205D0AC: ; 0x0205D0AC
	ldr r3, _0205D0B0 ; =sub_0205D22C
	bx r3
	; .align 2, 0
_0205D0B0: .word sub_0205D22C
	thumb_func_end sub_0205D0AC

	thumb_func_start sub_0205D0B4
sub_0205D0B4: ; 0x0205D0B4
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	mov r0, #2
	add r1, #0x30
	mov r2, #4
	bl sub_020095C4
	str r0, [r4, #0]
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF0C
	mov r0, #0x10
	mov r1, #1
	bl sub_0201FF74
	pop {r4, pc}
	thumb_func_end sub_0205D0B4

	thumb_func_start sub_0205D0D8
sub_0205D0D8: ; 0x0205D0D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r7, r2, #0
	mov r6, #0
	add r4, r5, #0
_0205D0E6:
	mov r0, #2
	add r1, r6, #0
	mov r2, #4
	bl sub_02009714
	str r0, [r4, #8]
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #4
	blt _0205D0E6
	ldr r3, _0205D1BC ; =0x020ED8B4
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	ldrb r2, [r3, r2]
	ldr r0, [r5, #8]
	add r1, #0x18
	bl sub_0205D1C4
	str r0, [r5, #0x20]
	ldr r1, [r5, #0x18]
	mov r6, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	ble _0205D12E
	add r4, r6, #0
_0205D118:
	ldr r0, [r1, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02009F08
	ldr r1, [r5, #0x18]
	add r6, r6, #1
	ldr r0, [r1, #8]
	add r4, r4, #4
	cmp r6, r0
	blt _0205D118
_0205D12E:
	ldr r3, _0205D1C0 ; =0x020ED8B6
	ldr r2, [sp, #0x10]
	add r1, r5, #0
	ldrb r2, [r3, r2]
	ldr r0, [r5, #0xc]
	add r1, #0x1c
	bl sub_0205D1C4
	str r0, [r5, #0x24]
	ldr r1, [r5, #0x1c]
	mov r6, #0
	ldr r0, [r1, #8]
	cmp r0, #0
	ble _0205D162
	add r4, r6, #0
_0205D14C:
	ldr r0, [r1, #0]
	add r1, r7, #0
	ldr r0, [r0, r4]
	bl sub_02009F08
	ldr r1, [r5, #0x1c]
	add r6, r6, #1
	ldr r0, [r1, #8]
	add r4, r4, #4
	cmp r6, r0
	blt _0205D14C
_0205D162:
	mov r1, #0
	ldr r0, [r5, #0x10]
	add r2, r1, #0
	bl sub_0205D1C4
	str r0, [r5, #0x28]
	ldr r0, [r5, #0x14]
	mov r1, #0
	mov r2, #1
	bl sub_0205D1C4
	str r0, [r5, #0x2c]
	ldr r0, [r5, #0x18]
	bl sub_0200A41C
	ldr r0, [r5, #0x1c]
	bl sub_0200A684
	mov r2, #0
	mov r1, #4
	str r2, [sp]
	mov r0, #0xb1
	add r3, r1, #0
	bl sub_02006FE8
	ldr r1, [r5, #0x10]
	add r4, r0, #0
	str r1, [sp]
	ldr r1, [r5, #0x14]
	str r1, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	str r1, [sp, #0xc]
	ldr r2, [r5, #8]
	ldr r3, [r5, #0xc]
	mov r1, #4
	bl sub_02009508
	str r0, [r5, #4]
	add r0, r4, #0
	bl sub_020181C4
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0205D1BC: .word 0x020ED8B4
_0205D1C0: .word 0x020ED8B6
	thumb_func_end sub_0205D0D8

	thumb_func_start sub_0205D1C4
sub_0205D1C4: ; 0x0205D1C4
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl sub_02009F34
	add r1, r0, #0
	mov r0, #4
	bl sub_02018184
	add r4, r0, #0
	mov r2, #0
	mov r0, #0xb1
	add r1, r6, #0
	mov r3, #4
	str r2, [sp]
	bl sub_02006FE8
	add r6, r0, #0
	add r1, r4, #0
	mov r2, #4
	bl sub_02009F40
	add r0, r6, #0
	bl sub_020181C4
	cmp r5, #0
	beq _0205D20E
	add r0, r4, #0
	bl sub_02009FA4
	mov r1, #4
	bl sub_02009CFC
	str r0, [r5, #0]
	add r2, r0, #0
	b _0205D210
_0205D20E:
	mov r2, #0
_0205D210:
	add r0, r7, #0
	add r1, r4, #0
	mov r3, #4
	bl sub_02009C80
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02009F8C
	add r0, r4, #0
	bl sub_020181C4
	add r0, r5, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0205D1C4

	thumb_func_start sub_0205D22C
sub_0205D22C: ; 0x0205D22C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl sub_02021964
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [r5, #4]
	bl sub_020095A8
	mov r0, #0
	str r0, [r5, #4]
	ldr r0, [r5, #0x18]
	bl sub_0200A508
	ldr r0, [r5, #0x1c]
	bl sub_0200A700
	mov r6, #0
	add r4, r5, #0
_0205D254:
	ldr r0, [r4, #0x18]
	bl sub_02009D20
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #2
	blt _0205D254
	mov r4, #0
_0205D264:
	ldr r0, [r5, #8]
	bl sub_02009754
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0205D264
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0205D22C

	thumb_func_start sub_0205D274
sub_0205D274: ; 0x0205D274
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r4, #0x10
	mov r3, #0
_0205D27C:
	strb r3, [r5]
	add r5, r5, #1
	sub r4, r4, #1
	bne _0205D27C
	cmp r2, #5
	bhi _0205D2F2
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0205D294: ; jump table
	.short _0205D2A0 - _0205D294 - 2 ; case 0
	.short _0205D2AE - _0205D294 - 2 ; case 1
	.short _0205D2BC - _0205D294 - 2 ; case 2
	.short _0205D2CA - _0205D294 - 2 ; case 3
	.short _0205D2D8 - _0205D294 - 2 ; case 4
	.short _0205D2E6 - _0205D294 - 2 ; case 5
_0205D2A0:
	ldr r2, _0205D2FC ; =sub_0205D3C4
	str r2, [r1, #4]
	ldr r2, _0205D300 ; =sub_0205D404
	str r2, [r1, #8]
	ldr r2, _0205D304 ; =sub_0205D424
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2AE:
	ldr r2, _0205D308 ; =sub_0205D4A4
	str r2, [r1, #4]
	ldr r2, _0205D30C ; =sub_0205D4E0
	str r2, [r1, #8]
	ldr r2, _0205D310 ; =sub_0205D500
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2BC:
	ldr r2, _0205D314 ; =sub_0205D524
	str r2, [r1, #4]
	ldr r2, _0205D318 ; =sub_0205D564
	str r2, [r1, #8]
	ldr r2, _0205D31C ; =sub_0205D584
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2CA:
	ldr r2, _0205D320 ; =sub_0205D5E0
	str r2, [r1, #4]
	ldr r2, _0205D324 ; =sub_0205D624
	str r2, [r1, #8]
	ldr r2, _0205D328 ; =sub_0205D644
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2D8:
	ldr r2, _0205D32C ; =sub_0205D714
	str r2, [r1, #4]
	ldr r2, _0205D330 ; =sub_0205D768
	str r2, [r1, #8]
	ldr r2, _0205D334 ; =sub_0205D788
	str r2, [r1, #0xc]
	b _0205D2F2
_0205D2E6:
	ldr r2, _0205D338 ; =sub_0205D844
	str r2, [r1, #4]
	ldr r2, _0205D33C ; =sub_0205D888
	str r2, [r1, #8]
	ldr r2, _0205D340 ; =sub_0205D8A8
	str r2, [r1, #0xc]
_0205D2F2:
	ldr r2, [r1, #4]
	add r0, r0, #4
	blx r2
	pop {r3, r4, r5, pc}
	nop
_0205D2FC: .word sub_0205D3C4
_0205D300: .word sub_0205D404
_0205D304: .word sub_0205D424
_0205D308: .word sub_0205D4A4
_0205D30C: .word sub_0205D4E0
_0205D310: .word sub_0205D500
_0205D314: .word sub_0205D524
_0205D318: .word sub_0205D564
_0205D31C: .word sub_0205D584
_0205D320: .word sub_0205D5E0
_0205D324: .word sub_0205D624
_0205D328: .word sub_0205D644
_0205D32C: .word sub_0205D714
_0205D330: .word sub_0205D768
_0205D334: .word sub_0205D788
_0205D338: .word sub_0205D844
_0205D33C: .word sub_0205D888
_0205D340: .word sub_0205D8A8
	thumb_func_end sub_0205D274

	thumb_func_start sub_0205D344
sub_0205D344: ; 0x0205D344
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	add r7, sp, #0
	add r6, r3, #0
	mov r0, #0
	add r4, r1, #0
	add r3, r7, #0
	add r1, r0, #0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	add r3, sp, #8
	str r0, [sp]
	ldr r0, [r5, #4]
	ldr r1, [r0, #0]
	mov r0, #0x24
	mul r0, r4
	add r0, r1, r0
	str r0, [sp, #4]
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2, #0]
	add r2, sp, #0x14
	str r0, [r3, #0]
	ldr r3, _0205D3A8 ; =0x020ED8B8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3, #0]
	str r0, [r2, #0]
	ldr r0, [sp, #0x48]
	str r6, [sp, #0x24]
	str r0, [sp, #0x28]
	mov r0, #4
	str r0, [sp, #0x2c]
	add r0, r7, #0
	bl sub_02021AA0
	add r4, r0, #0
	bne _0205D3A0
	bl sub_02022974
_0205D3A0:
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0205D3A8: .word 0x020ED8B8
	thumb_func_end sub_0205D344

	thumb_func_start sub_0205D3AC
sub_0205D3AC: ; 0x0205D3AC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #8]
	blx r1
	mov r1, #0x10
	mov r0, #0
_0205D3B8:
	strb r0, [r4]
	add r4, r4, #1
	sub r1, r1, #1
	bne _0205D3B8
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D3AC

	thumb_func_start sub_0205D3C4
sub_0205D3C4: ; 0x0205D3C4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x14
	mov r1, #0
_0205D3D8:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D3D8
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #0x45
	lsl r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0205D344
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205D3C4

	thumb_func_start sub_0205D404
sub_0205D404: ; 0x0205D404
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D420
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D420:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D404

	thumb_func_start sub_0205D424
sub_0205D424: ; 0x0205D424
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	ldr r4, [r0, #0]
	mov r2, #2
	ldr r0, [r4, #0x10]
	lsl r2, r2, #0xe
	cmp r0, r2
	bgt _0205D49A
	add r6, r4, #0
	ldmia r6!, {r0, r1}
	add r5, sp, #0
	add r3, r5, #0
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	lsr r2, r2, #4
	str r0, [r5, #0]
	ldr r0, [r4, #0x10]
	ldr r1, [sp, #4]
	asr r0, r0, #4
	lsl r5, r0, #2
	ldr r0, _0205D4A0 ; =0x020F983C
	ldrsh r5, [r0, r5]
	asr r0, r5, #0x1f
	lsr r6, r5, #0x10
	lsl r0, r0, #0x10
	orr r0, r6
	lsl r6, r5, #0x10
	mov r5, #0
	add r2, r6, r2
	adc r0, r5
	lsl r0, r0, #0x14
	lsr r2, r2, #0xc
	orr r2, r0
	sub r0, r1, r2
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r1, r3, #0
	bl sub_02021C50
	mov r1, #2
	ldr r0, [r4, #0x10]
	lsl r1, r1, #0xa
	add r0, r0, r1
	str r0, [r4, #0x10]
	ldr r0, [r4, #0xc]
	lsl r1, r1, #1
	bl sub_02021E2C
	mov r0, #2
	ldr r1, [r4, #0x10]
	lsl r0, r0, #0xe
	cmp r1, r0
	bne _0205D494
	add sp, #0xc
	mov r0, #2
	pop {r3, r4, r5, r6, pc}
_0205D494:
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0205D49A:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_0205D4A0: .word 0x020F983C
	thumb_func_end sub_0205D424

	thumb_func_start sub_0205D4A4
sub_0205D4A4: ; 0x0205D4A4
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x14
	mov r1, #0
_0205D4B8:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D4B8
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #6
	lsl r0, r0, #0x10
	mov r1, #1
	str r0, [r5, #4]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp]
	bl sub_0205D344
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205D4A4

	thumb_func_start sub_0205D4E0
sub_0205D4E0: ; 0x0205D4E0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D4FC
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D4FC:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D4E0

	thumb_func_start sub_0205D500
sub_0205D500: ; 0x0205D500
	push {r4, lr}
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #7
	bge _0205D51E
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
_0205D51E:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D500

	thumb_func_start sub_0205D524
sub_0205D524: ; 0x0205D524
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x14
	mov r1, #0
_0205D538:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D538
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #3
	lsl r0, r0, #0x12
	str r0, [r5, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0205D344
	str r0, [r5, #0xc]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205D524

	thumb_func_start sub_0205D564
sub_0205D564: ; 0x0205D564
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D580
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D580:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D564

	thumb_func_start sub_0205D584
sub_0205D584: ; 0x0205D584
	push {r4, lr}
	ldr r4, [r0, #0]
	mov r0, #2
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	add r0, r1, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #4]
	cmp r0, #0
	bne _0205D5C0
	mov r0, #6
	lsl r0, r0, #0x12
	cmp r1, r0
	blt _0205D5D6
	ldr r0, _0205D5DC ; =0xFFFE0000
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D5D6
_0205D5C0:
	mov r0, #0x45
	lsl r0, r0, #0xc
	cmp r1, r0
	blt _0205D5D6
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	mov r0, #0
	pop {r4, pc}
_0205D5D6:
	mov r0, #1
	pop {r4, pc}
	nop
_0205D5DC: .word 0xFFFE0000
	thumb_func_end sub_0205D584

	thumb_func_start sub_0205D5E0
sub_0205D5E0: ; 0x0205D5E0
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x18
	mov r1, #0
_0205D5F4:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D5F4
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #0x45
	lsl r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0205D344
	mov r1, #1
	str r0, [r5, #0xc]
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0205D5E0

	thumb_func_start sub_0205D624
sub_0205D624: ; 0x0205D624
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D640
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D640:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D624

	thumb_func_start sub_0205D644
sub_0205D644: ; 0x0205D644
	push {r3, r4, r5, lr}
	ldr r4, [r0, #0]
	mov r5, #1
	ldr r0, [r4, #0x10]
	cmp r0, #4
	bhi _0205D708
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205D65C: ; jump table
	.short _0205D666 - _0205D65C - 2 ; case 0
	.short _0205D684 - _0205D65C - 2 ; case 1
	.short _0205D6B2 - _0205D65C - 2 ; case 2
	.short _0205D6DE - _0205D65C - 2 ; case 3
	.short _0205D706 - _0205D65C - 2 ; case 4
_0205D666:
	ldr r1, [r4, #0x14]
	ldr r0, _0205D70C ; =0x00000333
	add r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02021E2C
	ldr r1, [r4, #0x14]
	lsl r0, r5, #0xd
	cmp r1, r0
	blt _0205D708
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D708
_0205D684:
	ldr r1, [r4, #4]
	ldr r0, _0205D710 ; =0xFFFE0000
	cmp r1, r0
	ble _0205D6A4
	lsl r0, r5, #0xf
	sub r0, r1, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_02021E2C
	b _0205D708
_0205D6A4:
	mov r0, #6
	lsl r0, r0, #0x12
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D708
_0205D6B2:
	ldr r1, [r4, #4]
	lsl r0, r5, #0xf
	sub r0, r1, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_02021E2C
	mov r0, #0x4b
	ldr r1, [r4, #4]
	lsl r0, r0, #0xe
	cmp r1, r0
	bge _0205D708
	ldr r0, [r4, #0x10]
	mov r5, #2
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D708
_0205D6DE:
	mov r1, #3
	ldr r2, [r4, #4]
	lsl r1, r1, #0x12
	cmp r2, r1
	ble _0205D700
	lsl r0, r5, #0xf
	sub r0, r2, r0
	str r0, [r4, #4]
	ldr r0, [r4, #0xc]
	add r1, r4, #0
	bl sub_02021C50
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	bl sub_02021E2C
	b _0205D708
_0205D700:
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D708
_0205D706:
	mov r5, #0
_0205D708:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0205D70C: .word 0x00000333
_0205D710: .word 0xFFFE0000
	thumb_func_end sub_0205D644

	thumb_func_start sub_0205D714
sub_0205D714: ; 0x0205D714
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x18
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x18
	mov r1, #0
_0205D728:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D728
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #0x45
	lsl r0, r0, #0xc
	str r0, [r5, #4]
	mov r0, #1
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	bl sub_0205D344
	mov r1, #1
	str r0, [r5, #0xc]
	bl sub_02021D6C
	mov r0, #2
	lsl r0, r0, #0xc
	str r0, [r5, #0x14]
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl sub_02021CAC
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205D714

	thumb_func_start sub_0205D768
sub_0205D768: ; 0x0205D768
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D784
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D784:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D768

	thumb_func_start sub_0205D788
sub_0205D788: ; 0x0205D788
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	ldr r4, [r0, #0]
	mov r5, #1
	ldr r0, [r4, #0x10]
	cmp r0, #3
	bhi _0205D834
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0205D7A2: ; jump table
	.short _0205D7AA - _0205D7A2 - 2 ; case 0
	.short _0205D7BA - _0205D7A2 - 2 ; case 1
	.short _0205D816 - _0205D7A2 - 2 ; case 2
	.short _0205D832 - _0205D7A2 - 2 ; case 3
_0205D7AA:
	ldr r0, [r4, #0xc]
	add r1, r5, #0
	bl sub_02021CAC
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D834
_0205D7BA:
	ldr r2, [r4, #0x14]
	lsl r1, r5, #0xf
	cmp r2, r1
	bgt _0205D810
	add r6, r4, #0
	ldmia r6!, {r0, r1}
	add r3, sp, #0
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldr r0, [r6, #0]
	mov r7, #0
	str r0, [r3, #0]
	ldr r0, [r4, #0x14]
	ldr r6, [sp, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0205D83C ; =0x020F983C
	ldrsh r0, [r0, r1]
	asr r3, r0, #0x1f
	lsr r1, r0, #0xf
	lsl r3, r3, #0x11
	orr r3, r1
	lsl r1, r0, #0x11
	lsl r0, r5, #0xb
	add r0, r1, r0
	adc r3, r7
	lsl r1, r3, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	sub r0, r6, r0
	str r0, [sp, #4]
	ldr r0, [r4, #0xc]
	add r1, r2, #0
	bl sub_02021C50
	ldr r0, [r4, #0x14]
	lsl r1, r5, #0xc
	add r0, r0, r1
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02021E2C
	b _0205D834
_0205D810:
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D834
_0205D816:
	ldr r1, [r4, #0x14]
	ldr r0, _0205D840 ; =0x00000666
	sub r1, r1, r0
	str r1, [r4, #0x14]
	ldr r0, [r4, #0xc]
	bl sub_02021E2C
	ldr r0, [r4, #0x14]
	cmp r0, #0
	bgt _0205D834
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	b _0205D834
_0205D832:
	mov r5, #0
_0205D834:
	add r0, r5, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0205D83C: .word 0x020F983C
_0205D840: .word 0x00000666
	thumb_func_end sub_0205D788

	thumb_func_start sub_0205D844
sub_0205D844: ; 0x0205D844
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	mov r0, #4
	mov r1, #0x14
	bl sub_02018144
	str r0, [r5, #0]
	mov r2, #0x14
	mov r1, #0
_0205D858:
	strb r1, [r0]
	add r0, r0, #1
	sub r2, r2, #1
	bne _0205D858
	ldr r5, [r5, #0]
	mov r0, #7
	lsl r0, r0, #0x10
	str r0, [r5, #0]
	mov r0, #6
	lsl r0, r0, #0x10
	mov r1, #1
	str r0, [r5, #4]
	add r0, r4, #0
	add r2, r5, #0
	add r3, r1, #0
	str r1, [sp]
	bl sub_0205D344
	mov r1, #1
	str r0, [r5, #0xc]
	bl sub_02021D6C
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0205D844

	thumb_func_start sub_0205D888
sub_0205D888: ; 0x0205D888
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0205D8A4
	ldr r0, [r0, #0xc]
	bl sub_02021BD4
	ldr r1, [r4, #0]
	mov r0, #4
	bl sub_02018238
	mov r0, #0
	str r0, [r4, #0]
_0205D8A4:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D888

	thumb_func_start sub_0205D8A8
sub_0205D8A8: ; 0x0205D8A8
	push {r4, lr}
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #8
	bge _0205D8C6
	mov r1, #1
	ldr r0, [r4, #0xc]
	lsl r1, r1, #0xc
	bl sub_02021E2C
	ldr r0, [r4, #0x10]
	add r0, r0, #1
	str r0, [r4, #0x10]
	mov r0, #1
	pop {r4, pc}
_0205D8C6:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0205D8A8

	.rodata


	.global Unk_020ED8B0
Unk_020ED8B0: ; 0x020ED8B0
	.incbin "incbin/arm9_rodata.bin", 0x8C70, 0x8C74 - 0x8C70

	.global Unk_020ED8B4
Unk_020ED8B4: ; 0x020ED8B4
	.incbin "incbin/arm9_rodata.bin", 0x8C74, 0x8C78 - 0x8C74

	.global Unk_020ED8B8
Unk_020ED8B8: ; 0x020ED8B8
	.incbin "incbin/arm9_rodata.bin", 0x8C78, 0xC

