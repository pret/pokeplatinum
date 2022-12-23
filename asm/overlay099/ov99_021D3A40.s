	.include "macros/function.inc"
	.include "overlay099/ov99_021D3A40.inc"

	

	.text


	thumb_func_start ov99_021D3A40
ov99_021D3A40: ; 0x021D3A40
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r6, r4, #0
	add r5, r0, #0
	add r6, #8
	cmp r1, #4
	bhi _021D3B14
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3A5E: ; jump table
	.short _021D3A68 - _021D3A5E - 2 ; case 0
	.short _021D3A82 - _021D3A5E - 2 ; case 1
	.short _021D3AAA - _021D3A5E - 2 ; case 2
	.short _021D3AC8 - _021D3A5E - 2 ; case 3
	.short _021D3B04 - _021D3A5E - 2 ; case 4
_021D3A68:
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
	b _021D3B14
_021D3A82:
	mov r0, #0x19
	ldr r1, [r6, #0]
	lsl r0, r0, #4
	cmp r1, r0
	bls _021D3B14
	mov r0, #3
	str r0, [sp]
	mov r0, #0x20
	add r1, r0, #0
	sub r1, #0x30
	mov r2, #0
	mov r3, #0x3d
	bl sub_0200AAE0
	mov r0, #0
	str r0, [r6, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3B14
_021D3AAA:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D3B14
	ldr r0, _021D3B20 ; =0x00001105
	ldrb r0, [r5, r0]
	cmp r0, #7
	bhs _021D3AC2
	mov r0, #3
	str r0, [r4, #0]
	b _021D3B14
_021D3AC2:
	mov r0, #4
	str r0, [r4, #0]
	b _021D3B14
_021D3AC8:
	mov r1, #4
	ldrsh r2, [r4, r1]
	add r2, r2, #1
	strh r2, [r4, #4]
	ldrsh r1, [r4, r1]
	cmp r1, #0x1e
	ble _021D3B14
	mov r3, #0
	ldr r1, _021D3B20 ; =0x00001105
	strh r3, [r4, #4]
	ldrb r1, [r5, r1]
	mov r2, #3
	bl ov99_021D439C
	ldr r0, _021D3B20 ; =0x00001105
	mov r3, #0x3d
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r1, #0
	mov r0, #3
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x20
	sub r2, #0x10
	bl sub_0200AAE0
	mov r0, #1
	str r0, [r4, #0]
	b _021D3B14
_021D3B04:
	ldr r0, _021D3B24 ; =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3B28 ; =0x000012CF
	cmp r1, r0
	blo _021D3B14
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D3B14:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D3B20: .word 0x00001105
_021D3B24: .word 0x000010FC
_021D3B28: .word 0x000012CF
	thumb_func_end ov99_021D3A40

	thumb_func_start ov99_021D3B2C
ov99_021D3B2C: ; 0x021D3B2C
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r1, #0
	ldr r1, [r4, #0]
	add r6, r4, #0
	add r5, r0, #0
	add r6, #8
	cmp r1, #4
	bhi _021D3C00
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021D3B4A: ; jump table
	.short _021D3B54 - _021D3B4A - 2 ; case 0
	.short _021D3B6E - _021D3B4A - 2 ; case 1
	.short _021D3B96 - _021D3B4A - 2 ; case 2
	.short _021D3BB4 - _021D3B4A - 2 ; case 3
	.short _021D3BF0 - _021D3B4A - 2 ; case 4
_021D3B54:
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
	b _021D3C00
_021D3B6E:
	mov r0, #0x4b
	ldr r1, [r6, #0]
	lsl r0, r0, #2
	cmp r1, r0
	bls _021D3C00
	mov r0, #3
	str r0, [sp]
	mov r0, #0x20
	add r1, r0, #0
	sub r1, #0x30
	mov r2, #0
	mov r3, #0x3d
	bl sub_0200AAE0
	mov r0, #0
	str r0, [r6, #0]
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	b _021D3C00
_021D3B96:
	mov r0, #3
	bl sub_0200AC1C
	cmp r0, #1
	bne _021D3C00
	ldr r0, _021D3C0C ; =0x00001105
	ldrb r0, [r5, r0]
	cmp r0, #0xa
	bhs _021D3BAE
	mov r0, #3
	str r0, [r4, #0]
	b _021D3C00
_021D3BAE:
	mov r0, #4
	str r0, [r4, #0]
	b _021D3C00
_021D3BB4:
	mov r1, #4
	ldrsh r2, [r4, r1]
	add r2, r2, #1
	strh r2, [r4, #4]
	ldrsh r1, [r4, r1]
	cmp r1, #0x1e
	ble _021D3C00
	mov r3, #0
	ldr r1, _021D3C0C ; =0x00001105
	strh r3, [r4, #4]
	ldrb r1, [r5, r1]
	mov r2, #3
	bl ov99_021D439C
	ldr r0, _021D3C0C ; =0x00001105
	mov r3, #0x3d
	ldrb r1, [r5, r0]
	add r1, r1, #1
	strb r1, [r5, r0]
	mov r1, #0
	mov r0, #3
	add r2, r1, #0
	str r0, [sp]
	mov r0, #0x20
	sub r2, #0x10
	bl sub_0200AAE0
	mov r0, #1
	str r0, [r4, #0]
	b _021D3C00
_021D3BF0:
	ldr r0, _021D3C10 ; =0x000010FC
	ldr r1, [r5, r0]
	ldr r0, _021D3C14 ; =0x000012CF
	cmp r1, r0
	blo _021D3C00
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_021D3C00:
	ldr r0, [r6, #0]
	add r0, r0, #1
	str r0, [r6, #0]
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D3C0C: .word 0x00001105
_021D3C10: .word 0x000010FC
_021D3C14: .word 0x000012CF
	thumb_func_end ov99_021D3B2C