	.include "macros/function.inc"
	.include "overlay099/ov99_021D3C18.inc"

	

	.text


	thumb_func_start ov99_021D3C18
ov99_021D3C18: ; 0x021D3C18
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r1, #0
	ldr r1, [r5, #0]
	add r4, r5, #0
	add r6, r0, #0
	add r4, #8
	cmp r1, #4
	bhi _021D3CEC
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3C36: ; jump table
	.short _021D3C40 - _021D3C36 - 2 ; case 0
	.short _021D3C5A - _021D3C36 - 2 ; case 1
	.short _021D3C70 - _021D3C36 - 2 ; case 2
	.short _021D3CCC - _021D3C36 - 2 ; case 3
	.short _021D3CDC - _021D3C36 - 2 ; case 4
_021D3C40:
	mov r1, #0
	mov r0, #3
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x18
	sub r2, #0x10
	mov r3, #0x3d
	bl sub_0200AAE0
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D3CEC
_021D3C5A:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	cmp r0, #0x1b
	bls _021D3CEC
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r5, #0]
	add r0, r0, #1
	str r0, [r5, #0]
	b _021D3CEC
_021D3C70:
	ldrb r1, [r4, #4]
	cmp r1, #3
	blo _021D3C8E
	mov r0, #3
	str r0, [sp]
	mov r0, #0x20
	add r1, r0, #0
	sub r1, #0x30
	mov r2, #0
	mov r3, #0x3d
	bl sub_0200AAE0
	mov r0, #4
	str r0, [r5, #0]
	b _021D3CEC
_021D3C8E:
	mov r3, #1
	tst r1, r3
	ldr r1, _021D3CF4 ; =0x00001105
	beq _021D3CA8
	ldrb r1, [r6, r1]
	mov r2, #2
	bl ov99_021D439C
	add r0, r4, #0
	mov r1, #8
	bl ov99_021D3CF8
	b _021D3CB8
_021D3CA8:
	ldrb r1, [r6, r1]
	mov r2, #3
	bl ov99_021D439C
	add r0, r4, #0
	mov r1, #4
	bl ov99_021D3CF8
_021D3CB8:
	ldr r0, _021D3CF4 ; =0x00001105
	ldrb r1, [r6, r0]
	add r1, r1, #1
	strb r1, [r6, r0]
	ldrb r0, [r4, #4]
	add r0, r0, #1
	strb r0, [r4, #4]
	mov r0, #3
	str r0, [r5, #0]
	b _021D3CEC
_021D3CCC:
	add r0, r4, #0
	bl ov99_021D3D50
	cmp r0, #1
	bne _021D3CEC
	mov r0, #1
	str r0, [r5, #0]
	b _021D3CEC
_021D3CDC:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D3CEC
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D3CEC:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_021D3CF4: .word 0x00001105
	thumb_func_end ov99_021D3C18

	thumb_func_start ov99_021D3CF8
ov99_021D3CF8: ; 0x021D3CF8
	push {r3, r4, lr}
	sub sp, #4
	add r3, r0, #0
	str r1, [r3, #8]
	mov r0, #0x10
	strb r0, [r3, #5]
	mov r0, #0
	strb r0, [r3, #6]
	cmp r1, #4
	bne _021D3D2C
	mov r0, #6
	ldrsb r0, [r3, r0]
	mov r4, #5
	mov r1, #4
	str r0, [sp]
	ldrsb r3, [r3, r4]
	ldr r0, _021D3D4C ; =0x04000050
	mov r2, #0x28
	bl G2x_SetBlendAlpha_
	mov r0, #3
	mov r1, #1
	bl sub_02019120
	add sp, #4
	pop {r3, r4, pc}
_021D3D2C:
	mov r0, #6
	ldrsb r0, [r3, r0]
	mov r4, #5
	mov r1, #8
	str r0, [sp]
	ldrsb r3, [r3, r4]
	ldr r0, _021D3D4C ; =0x04000050
	mov r2, #0x24
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #1
	bl sub_02019120
	add sp, #4
	pop {r3, r4, pc}
	; .align 2, 0
_021D3D4C: .word 0x04000050
	thumb_func_end ov99_021D3CF8

	thumb_func_start ov99_021D3D50
ov99_021D3D50: ; 0x021D3D50
	push {r4, lr}
	mov r1, #5
	ldrsb r2, [r0, r1]
	sub r2, r2, #1
	strb r2, [r0, #5]
	ldrsb r1, [r0, r1]
	cmp r1, #0x10
	bge _021D3D68
	mov r1, #6
	ldrsb r1, [r0, r1]
	add r1, r1, #1
	strb r1, [r0, #6]
_021D3D68:
	mov r1, #5
	ldrsb r1, [r0, r1]
	cmp r1, #0
	bge _021D3D74
	mov r1, #0
	strb r1, [r0, #5]
_021D3D74:
	mov r1, #6
	ldrsb r1, [r0, r1]
	cmp r1, #0x10
	ble _021D3D80
	mov r1, #0x10
	strb r1, [r0, #6]
_021D3D80:
	mov r1, #6
	mov r2, #5
	ldrsb r3, [r0, r1]
	ldrsb r4, [r0, r2]
	lsl r3, r3, #8
	orr r4, r3
	ldr r3, _021D3DDC ; =0x04000052
	strh r4, [r3]
	ldrsb r2, [r0, r2]
	cmp r2, #0
	bne _021D3DD8
	ldrsb r1, [r0, r1]
	cmp r1, #0x10
	bne _021D3DD8
	ldr r0, [r0, #8]
	cmp r0, #4
	bne _021D3DBC
	mov r0, #2
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	mov r1, #3
	bl sub_02019060
	mov r0, #3
	mov r1, #2
	bl sub_02019060
	b _021D3DD4
_021D3DBC:
	mov r0, #3
	mov r1, #0
	bl sub_02019120
	mov r0, #2
	add r1, r0, #0
	bl sub_02019060
	mov r0, #3
	add r1, r0, #0
	bl sub_02019060
_021D3DD4:
	mov r0, #1
	pop {r4, pc}
_021D3DD8:
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_021D3DDC: .word 0x04000052
	thumb_func_end ov99_021D3D50