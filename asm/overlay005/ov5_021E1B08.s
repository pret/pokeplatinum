	.include "macros/function.inc"
	.include "overlay005/ov5_021E1B08.inc"

	

	.text


	thumb_func_start ov5_021E1B08
ov5_021E1B08: ; 0x021E1B08
	push {r3, lr}
	mov r1, #0x14
	bl sub_02018144
	add r3, r0, #0
	mov r2, #0x14
	mov r1, #0
_021E1B16:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _021E1B16
	pop {r3, pc}
	thumb_func_end ov5_021E1B08

	thumb_func_start ov5_021E1B20
ov5_021E1B20: ; 0x021E1B20
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x13]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E1B30
	bl sub_0201A8FC
_021E1B30:
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	thumb_func_end ov5_021E1B20

	thumb_func_start ov5_021E1B38
ov5_021E1B38: ; 0x021E1B38
	strb r1, [r0, #0x12]
	strh r2, [r0, #0x10]
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E1B38

	thumb_func_start ov5_021E1B40
ov5_021E1B40: ; 0x021E1B40
	ldrb r3, [r0, #0x13]
	mov r2, #0x7f
	bic r3, r2
	mov r2, #0x7f
	and r1, r2
	orr r1, r3
	strb r1, [r0, #0x13]
	bx lr
	thumb_func_end ov5_021E1B40

	thumb_func_start ov5_021E1B50
ov5_021E1B50: ; 0x021E1B50
	bx lr
	; .align 2, 0
	thumb_func_end ov5_021E1B50

	thumb_func_start ov5_021E1B54
ov5_021E1B54: ; 0x021E1B54
	ldrb r0, [r0, #0x12]
	bx lr
	thumb_func_end ov5_021E1B54

	thumb_func_start ov5_021E1B58
ov5_021E1B58: ; 0x021E1B58
	ldrb r0, [r0, #0x13]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x19
	bne _021E1B64
	mov r0, #1
	bx lr
_021E1B64:
	mov r0, #0
	bx lr
	thumb_func_end ov5_021E1B58

	thumb_func_start ov5_021E1B68
ov5_021E1B68: ; 0x021E1B68
	push {r4, lr}
	ldr r4, [r0, #0x64]
	ldrb r1, [r4, #0x13]
	lsl r1, r1, #0x19
	lsr r1, r1, #0x19
	cmp r1, #4
	bhi _021E1BCA
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021E1B82: ; jump table
	.short _021E1BCA - _021E1B82 - 2 ; case 0
	.short _021E1B8C - _021E1B82 - 2 ; case 1
	.short _021E1B9A - _021E1B82 - 2 ; case 2
	.short _021E1BAC - _021E1B82 - 2 ; case 3
	.short _021E1BBE - _021E1B82 - 2 ; case 4
_021E1B8C:
	bl ov5_021E1BE0
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021E1B9A:
	bl ov5_021E1CB0
	cmp r0, #1
	bne _021E1BCA
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021E1BAC:
	bl ov5_021E1C70
	cmp r0, #1
	bne _021E1BCA
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
	pop {r4, pc}
_021E1BBE:
	bl ov5_021E1C1C
	ldrb r1, [r4, #0x13]
	mov r0, #0x7f
	bic r1, r0
	strb r1, [r4, #0x13]
_021E1BCA:
	pop {r4, pc}
	thumb_func_end ov5_021E1B68

	thumb_func_start ov5_021E1BCC
ov5_021E1BCC: ; 0x021E1BCC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	bl ov5_021E1B40
	add r0, r4, #0
	bl ov5_021E1B68
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E1BCC

	thumb_func_start ov5_021E1BE0
ov5_021E1BE0: ; 0x021E1BE0
	push {r4, lr}
	mov r1, #3
	add r4, r0, #0
	add r3, r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	sub r3, #0x33
	bl sub_02019184
	ldr r1, [r4, #0x64]
	ldrb r0, [r1, #0x13]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bne _021E1C10
	ldrb r2, [r1, #0x12]
	ldr r0, [r4, #8]
	mov r3, #3
	bl sub_0205DA1C
	ldr r2, [r4, #0x64]
	mov r0, #0x80
	ldrb r1, [r2, #0x13]
	orr r0, r1
	strb r0, [r2, #0x13]
_021E1C10:
	ldr r0, [r4, #0x64]
	ldrb r1, [r0, #0x12]
	ldrh r2, [r0, #0x10]
	bl sub_0205DA80
	pop {r4, pc}
	thumb_func_end ov5_021E1BE0

	thumb_func_start ov5_021E1C1C
ov5_021E1C1C: ; 0x021E1C1C
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #0x64]
	ldrb r1, [r0, #0x13]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x1f
	beq _021E1C6A
	bl sub_0201A8FC
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02019448
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	ldr r2, [r4, #0x64]
	mov r0, #0x80
	ldrb r1, [r2, #0x13]
	bic r1, r0
	strb r1, [r2, #0x13]
_021E1C6A:
	add sp, #0x10
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E1C1C

	thumb_func_start ov5_021E1C70
ov5_021E1C70: ; 0x021E1C70
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_020192F8
	cmp r0, #0
	bne _021E1C84
	mov r0, #1
	pop {r4, pc}
_021E1C84:
	mov r1, #0x2f
	mvn r1, r1
	cmp r0, r1
	ble _021E1C90
	cmp r0, #0
	blt _021E1C9E
_021E1C90:
	mov r1, #3
	add r3, r1, #0
	ldr r0, [r4, #8]
	add r2, r1, #0
	sub r3, #0x33
	bl sub_02019184
_021E1C9E:
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #4
	mov r3, #0x10
	bl sub_02019184
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov5_021E1C70

	thumb_func_start ov5_021E1CB0
ov5_021E1CB0: ; 0x021E1CB0
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_020192F8
	mov r1, #0x2f
	mvn r1, r1
	cmp r0, r1
	bne _021E1CFC
	mov r0, #0x12
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #6
	str r0, [sp, #8]
	mov r0, #0x10
	str r0, [sp, #0xc]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #3
	add r3, r2, #0
	bl sub_02019CB8
	ldr r0, [r4, #8]
	mov r1, #3
	bl sub_02019448
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
	add sp, #0x10
	mov r0, #1
	pop {r4, pc}
_021E1CFC:
	ble _021E1D02
	cmp r0, #0
	blt _021E1D0E
_021E1D02:
	mov r1, #3
	ldr r0, [r4, #8]
	add r2, r1, #0
	mov r3, #0
	bl sub_02019184
_021E1D0E:
	ldr r0, [r4, #8]
	mov r1, #3
	mov r2, #5
	mov r3, #0x10
	bl sub_02019184
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	thumb_func_end ov5_021E1CB0