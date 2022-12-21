	.include "macros/function.inc"
	.include "include/unk_0203C954.inc"

	

	.text


	thumb_func_start sub_0203C954
sub_0203C954: ; 0x0203C954
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x3c]
	add r4, r1, #0
	add r5, r2, #0
	bl sub_0205EA78
	add r7, r0, #0
	ldr r0, [r6, #0x3c]
	bl sub_0205EABC
	str r0, [r4, #0]
	ldr r0, [r6, #0x3c]
	bl sub_0205EAC8
	str r0, [r5, #0]
	cmp r7, #3
	bhi _0203C9AA
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203C984: ; jump table
	.short _0203C98C - _0203C984 - 2 ; case 0
	.short _0203C994 - _0203C984 - 2 ; case 1
	.short _0203C99C - _0203C984 - 2 ; case 2
	.short _0203C9A4 - _0203C984 - 2 ; case 3
_0203C98C:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	b _0203C9AA
_0203C994:
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _0203C9AA
_0203C99C:
	ldr r0, [r4, #0]
	sub r0, r0, #1
	str r0, [r4, #0]
	b _0203C9AA
_0203C9A4:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
_0203C9AA:
	add r0, r7, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0203C954

	thumb_func_start sub_0203C9B0
sub_0203C9B0: ; 0x0203C9B0
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl sub_0205EB3C
	bl sub_020630DC
	add r4, r0, #0
	add r0, r5, #0
	bl sub_020630DC
	cmp r4, r0
	bne _0203C9CC
	mov r0, #1
	b _0203C9CE
_0203C9CC:
	mov r0, #0
_0203C9CE:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203C9B0

	thumb_func_start sub_0203C9D4
sub_0203C9D4: ; 0x0203C9D4
	push {r4, r5, r6, lr}
	sub sp, #8
	add r6, r1, #0
	add r1, sp, #4
	add r2, sp, #0
	add r5, r0, #0
	bl sub_0203C954
	add r4, r0, #0
	ldr r1, [sp, #4]
	ldr r2, [sp]
	add r0, r5, #0
	bl sub_02054F94
	bl sub_0205DAE0
	cmp r0, #1
	bne _0203CA2E
	cmp r4, #3
	bhi _0203CA2E
	add r0, r4, r4
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203CA08: ; jump table
	.short _0203CA10 - _0203CA08 - 2 ; case 0
	.short _0203CA18 - _0203CA08 - 2 ; case 1
	.short _0203CA20 - _0203CA08 - 2 ; case 2
	.short _0203CA28 - _0203CA08 - 2 ; case 3
_0203CA10:
	ldr r0, [sp]
	sub r0, r0, #1
	str r0, [sp]
	b _0203CA2E
_0203CA18:
	ldr r0, [sp]
	add r0, r0, #1
	str r0, [sp]
	b _0203CA2E
_0203CA20:
	ldr r0, [sp, #4]
	sub r0, r0, #1
	str r0, [sp, #4]
	b _0203CA2E
_0203CA28:
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
_0203CA2E:
	ldr r0, [r5, #0x38]
	ldr r1, [sp, #4]
	ldr r2, [sp]
	mov r3, #0
	bl sub_0206326C
	str r0, [r6, #0]
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0203C9D4

	thumb_func_start sub_0203CA40
sub_0203CA40: ; 0x0203CA40
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	bl sub_0203C9D4
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0203CA68
	bl sub_02062D9C
	cmp r0, #1
	bne _0203CA68
	ldr r0, [r5, #0x3c]
	ldr r1, [r4, #0]
	bl sub_0203C9B0
	cmp r0, #1
	bne _0203CA68
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203CA68:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203CA40

	thumb_func_start sub_0203CA6C
sub_0203CA6C: ; 0x0203CA6C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r1, [sp]
	str r2, [sp, #4]
	add r1, sp, #0xc
	add r2, sp, #8
	add r6, r0, #0
	bl sub_0203C954
	ldr r0, [sp, #4]
	mov r7, #0
	cmp r0, #0
	ble _0203CAE0
	ldr r4, [sp]
	add r5, r4, #0
_0203CA8A:
	ldr r1, [sp, #0xc]
	ldr r0, [r4, #4]
	cmp r1, r0
	bne _0203CAD4
	ldr r1, [sp, #8]
	ldr r0, [r4, #8]
	cmp r1, r0
	bne _0203CAD4
	ldrh r0, [r4, #2]
	cmp r0, #2
	bne _0203CABA
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203CAEC
	cmp r0, #1
	bne _0203CAD4
	mov r0, #0x14
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add sp, #0x10
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0203CABA:
	add r0, r6, #0
	add r1, r5, #0
	bl sub_0203CB18
	cmp r0, #1
	bne _0203CAD4
	mov r0, #0x14
	add r1, r7, #0
	mul r1, r0
	ldr r0, [sp]
	add sp, #0x10
	ldrh r0, [r0, r1]
	pop {r3, r4, r5, r6, r7, pc}
_0203CAD4:
	ldr r0, [sp, #4]
	add r7, r7, #1
	add r4, #0x14
	add r5, #0x14
	cmp r7, r0
	blt _0203CA8A
_0203CAE0:
	ldr r0, _0203CAE8 ; =0x0000FFFF
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0203CAE8: .word 0x0000FFFF
	thumb_func_end sub_0203CA6C

	thumb_func_start sub_0203CAEC
sub_0203CAEC: ; 0x0203CAEC
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r1, #2]
	cmp r0, #2
	beq _0203CAFA
	mov r0, #0
	pop {r4, pc}
_0203CAFA:
	ldrh r0, [r1]
	bl sub_0203F2F4
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0203F188
	cmp r0, #1
	beq _0203CB10
	mov r0, #1
	b _0203CB12
_0203CB10:
	mov r0, #0
_0203CB12:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r4, pc}
	thumb_func_end sub_0203CAEC

	thumb_func_start sub_0203CB18
sub_0203CB18: ; 0x0203CB18
	push {r4, lr}
	add r4, r1, #0
	ldrh r1, [r4, #0x10]
	cmp r1, #4
	bne _0203CB26
	mov r0, #1
	pop {r4, pc}
_0203CB26:
	ldr r0, [r0, #0x3c]
	bl sub_0205EA78
	cmp r0, #3
	bhi _0203CB7C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0203CB3C: ; jump table
	.short _0203CB44 - _0203CB3C - 2 ; case 0
	.short _0203CB52 - _0203CB3C - 2 ; case 1
	.short _0203CB60 - _0203CB3C - 2 ; case 2
	.short _0203CB6E - _0203CB3C - 2 ; case 3
_0203CB44:
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	beq _0203CB4E
	cmp r0, #6
	bne _0203CB7C
_0203CB4E:
	mov r0, #1
	pop {r4, pc}
_0203CB52:
	ldrh r0, [r4, #0x10]
	cmp r0, #3
	beq _0203CB5C
	cmp r0, #6
	bne _0203CB7C
_0203CB5C:
	mov r0, #1
	pop {r4, pc}
_0203CB60:
	ldrh r0, [r4, #0x10]
	cmp r0, #2
	beq _0203CB6A
	cmp r0, #5
	bne _0203CB7C
_0203CB6A:
	mov r0, #1
	pop {r4, pc}
_0203CB6E:
	ldrh r0, [r4, #0x10]
	cmp r0, #1
	beq _0203CB78
	cmp r0, #5
	bne _0203CB7C
_0203CB78:
	mov r0, #1
	pop {r4, pc}
_0203CB7C:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_0203CB18

	thumb_func_start sub_0203CB80
sub_0203CB80: ; 0x0203CB80
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r6, r1, #0
	add r4, r2, #0
	bl sub_0205EA78
	cmp r0, #0
	beq _0203CB9A
	add sp, #8
	ldr r0, _0203CBDC ; =0x0000FFFF
	pop {r4, r5, r6, pc}
_0203CB9A:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl sub_0203C954
	mov r0, #0
	cmp r4, #0
	ble _0203CBD4
	ldr r2, [sp, #4]
	ldr r3, [sp]
	add r1, r6, #0
_0203CBB0:
	ldr r5, [r1, #4]
	cmp r2, r5
	bne _0203CBCC
	ldr r5, [r1, #8]
	cmp r3, r5
	bne _0203CBCC
	ldrh r5, [r1, #2]
	cmp r5, #1
	bne _0203CBCC
	mov r1, #0x14
	mul r1, r0
	add sp, #8
	ldrh r0, [r6, r1]
	pop {r4, r5, r6, pc}
_0203CBCC:
	add r0, r0, #1
	add r1, #0x14
	cmp r0, r4
	blt _0203CBB0
_0203CBD4:
	ldr r0, _0203CBDC ; =0x0000FFFF
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_0203CBDC: .word 0x0000FFFF
	thumb_func_end sub_0203CB80

	thumb_func_start sub_0203CBE0
sub_0203CBE0: ; 0x0203CBE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x3c]
	add r4, r1, #0
	bl sub_0205EA78
	cmp r0, #0
	beq _0203CBF4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0203CBF4:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_0203CA40
	cmp r0, #1
	bne _0203CC10
	ldr r0, [r4, #0]
	bl sub_02062920
	sub r0, #0x5b
	cmp r0, #5
	bhi _0203CC10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0203CC10:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0203CBE0

	thumb_func_start sub_0203CC14
sub_0203CC14: ; 0x0203CC14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x3c]
	str r1, [sp, #4]
	str r2, [sp, #8]
	bl sub_0205EABC
	add r6, r0, #0
	ldr r0, [sp]
	ldr r0, [r0, #0x3c]
	bl sub_0205EAC8
	add r4, r0, #0
	ldr r0, [sp, #8]
	mov r7, #0
	cmp r0, #0
	ble _0203CC78
	ldr r5, [sp, #4]
_0203CC3A:
	ldrh r1, [r5, #2]
	cmp r6, r1
	blt _0203CC6E
	ldrh r0, [r5, #6]
	add r0, r1, r0
	cmp r6, r0
	bge _0203CC6E
	ldrh r1, [r5, #4]
	cmp r4, r1
	blt _0203CC6E
	ldrh r0, [r5, #8]
	add r0, r1, r0
	cmp r4, r0
	bge _0203CC6E
	ldrh r1, [r5, #0xe]
	ldr r0, [sp]
	bl sub_0203F150
	ldrh r1, [r5, #0xc]
	cmp r1, r0
	bne _0203CC6E
	ldr r0, [sp, #4]
	lsl r1, r7, #4
	add sp, #0xc
	ldrh r0, [r0, r1]
	pop {r4, r5, r6, r7, pc}
_0203CC6E:
	ldr r0, [sp, #8]
	add r7, r7, #1
	add r5, #0x10
	cmp r7, r0
	blt _0203CC3A
_0203CC78:
	ldr r0, _0203CC80 ; =0x0000FFFF
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0203CC80: .word 0x0000FFFF
	thumb_func_end sub_0203CC14