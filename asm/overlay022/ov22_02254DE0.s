	.include "macros/function.inc"
	.include "overlay022/ov22_02254DE0.inc"

	

	.text


	thumb_func_start ov22_02254DE0
ov22_02254DE0: ; 0x02254DE0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #8
	bl sub_02018144
	lsl r6, r5, #3
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl sub_02018144
	mov r1, #0
	add r2, r6, #0
	str r0, [r4, #0]
	bl memset
	str r5, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov22_02254DE0

	thumb_func_start ov22_02254E0C
ov22_02254E0C: ; 0x02254E0C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov22_02254E0C

	thumb_func_start ov22_02254E20
ov22_02254E20: ; 0x02254E20
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0]
	bl ov22_02254FE0
	add r4, r0, #0
	bne _02254E32
	bl GF_AssertFail
_02254E32:
	ldr r0, [r5, #0x18]
	str r0, [r4, #0]
	add r0, r5, #0
	bl ov22_0225500C
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02254E20

	thumb_func_start ov22_02254E44
ov22_02254E44: ; 0x02254E44
	push {r3, lr}
	add r1, sp, #0
	bl ov22_02255040
	add r0, sp, #0
	bl sub_02022734
	pop {r3, pc}
	thumb_func_end ov22_02254E44

	thumb_func_start ov22_02254E54
ov22_02254E54: ; 0x02254E54
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov22_02254E44
	cmp r0, #0
	bne _02254E6E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02254E6E:
	add r0, r4, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov22_02254F00
	ldr r0, _02254ED8 ; =0x021BF6BC
	ldr r1, [sp, #8]
	ldrh r2, [r0, #0x1c]
	sub r1, r2, r1
	str r1, [r6, #0]
	ldrh r1, [r0, #0x1e]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	ldr r0, [sp]
	sub r4, r1, #4
	str r1, [r0, #0]
	add r0, r1, #4
	cmp r4, r0
	bge _02254ED2
_02254E94:
	cmp r4, #0
	blt _02254EC6
	ldr r0, [r6, #0]
	sub r5, r0, #4
	add r0, r0, #4
	cmp r5, r0
	bge _02254EC6
_02254EA2:
	cmp r5, #0
	blt _02254EBC
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov22_02255420
	cmp r0, #0
	bne _02254EBC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02254EBC:
	ldr r0, [r6, #0]
	add r5, r5, #1
	add r0, r0, #4
	cmp r5, r0
	blt _02254EA2
_02254EC6:
	ldr r0, [sp]
	add r4, r4, #1
	ldr r0, [r0, #0]
	add r0, r0, #4
	cmp r4, r0
	blt _02254E94
_02254ED2:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02254ED8: .word 0x021BF6BC
	thumb_func_end ov22_02254E54

	thumb_func_start ov22_02254EDC
ov22_02254EDC: ; 0x02254EDC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #0
	bl ov22_02255040
	add r0, sp, #0
	add r1, r5, #0
	add r2, r4, #0
	bl sub_02022830
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02254EDC

	thumb_func_start ov22_02254EF4
ov22_02254EF4: ; 0x02254EF4
	ldr r3, _02254EFC ; =sub_02015254
	ldr r0, [r0, #4]
	bx r3
	nop
_02254EFC: .word sub_02015254
	thumb_func_end ov22_02254EF4

	thumb_func_start ov22_02254F00
ov22_02254F00: ; 0x02254F00
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_0201525C
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r5, #0]
	mov r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02254F00

	thumb_func_start ov22_02254F30
ov22_02254F30: ; 0x02254F30
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02015280
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r5, #0]
	mov r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02254F30

	thumb_func_start ov22_02254F60
ov22_02254F60: ; 0x02254F60
	ldr r3, _02254F68 ; =sub_02015240
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F68: .word sub_02015240
	thumb_func_end ov22_02254F60

	thumb_func_start ov22_02254F6C
ov22_02254F6C: ; 0x02254F6C
	ldr r3, _02254F74 ; =sub_0201528C
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F74: .word sub_0201528C
	thumb_func_end ov22_02254F6C

	thumb_func_start ov22_02254F78
ov22_02254F78: ; 0x02254F78
	ldr r3, _02254F80 ; =sub_02015290
	ldr r0, [r0, #4]
	bx r3
	nop
_02254F80: .word sub_02015290
	thumb_func_end ov22_02254F78

	thumb_func_start ov22_02254F84
ov22_02254F84: ; 0x02254F84
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov22_02254F30
	ldr r0, [sp, #4]
	cmp r0, #0x10
	beq _02254FA4
	cmp r0, #0x20
	beq _02254FAA
	cmp r0, #0x40
	beq _02254FB0
	b _02254FB4
_02254FA4:
	mov r0, #0
	str r0, [r5, #0]
	b _02254FB4
_02254FAA:
	mov r0, #0xa
	str r0, [r5, #0]
	b _02254FB4
_02254FB0:
	mov r0, #0x14
	str r0, [r5, #0]
_02254FB4:
	ldr r0, [sp]
	cmp r0, #0x10
	beq _02254FC6
	cmp r0, #0x20
	beq _02254FCE
	cmp r0, #0x40
	beq _02254FD6
	add sp, #8
	pop {r3, r4, r5, pc}
_02254FC6:
	mov r0, #0
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02254FCE:
	mov r0, #0xa
	add sp, #8
	str r0, [r4, #0]
	pop {r3, r4, r5, pc}
_02254FD6:
	mov r0, #0x14
	str r0, [r4, #0]
	add sp, #8
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov22_02254F84

	thumb_func_start ov22_02254FE0
ov22_02254FE0: ; 0x02254FE0
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _02255004
	ldr r3, [r0, #0]
	add r2, r3, #0
_02254FEE:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _02254FFC
	lsl r0, r1, #3
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02254FFC:
	add r1, r1, #1
	add r2, #8
	cmp r1, r4
	blt _02254FEE
_02255004:
	mov r0, #0
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end ov22_02254FE0

	thumb_func_start ov22_0225500C
ov22_0225500C: ; 0x0225500C
	push {r3, lr}
	sub sp, #0x20
	ldr r1, [r0, #4]
	mov r3, #0
	str r1, [sp]
	ldr r1, [r0, #8]
	str r1, [sp, #4]
	ldr r1, [r0, #0xc]
	str r1, [sp, #8]
	ldr r2, [r0, #0x10]
	add r1, sp, #0
	strh r2, [r1, #0xc]
	ldr r2, [r0, #0x14]
	strh r2, [r1, #0xe]
	strh r3, [r1, #0x10]
	mov r2, #0x1f
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r0, #0x1c]
	strh r0, [r1, #0x1c]
	add r0, sp, #0
	bl sub_02015214
	add sp, #0x20
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov22_0225500C

	thumb_func_start ov22_02255040
ov22_02255040: ; 0x02255040
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl sub_0201525C
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #4]
	bl sub_02015280
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	mov r0, #0xe
	ldrsh r2, [r1, r0]
	mov r0, #0xa
	strb r2, [r4]
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strb r0, [r4, #1]
	mov r0, #0xc
	ldrsh r2, [r1, r0]
	mov r0, #8
	strb r2, [r4, #2]
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strb r0, [r4, #3]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov22_02255040