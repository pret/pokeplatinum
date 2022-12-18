	.include "macros/function.inc"
	.include "include/ov70_02260B44.inc"

	

	.text


	thumb_func_start ov70_02260B44
ov70_02260B44: ; 0x02260B44
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r1, #0
	add r5, r0, #0
	ldr r1, _02260BB4 ; =0x000004A4
	add r0, r2, #0
	str r2, [sp]
	bl sub_02018144
	ldr r2, _02260BB4 ; =0x000004A4
	mov r1, #0
	add r4, r0, #0
	bl sub_020D5124
	mov r0, #0xb4
	mul r0, r5
	str r0, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl sub_02018144
	mov r1, #0x47
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xe4
	add r7, r6, #0
	mul r7, r0
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02018144
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r4, r1]
	sub r0, r1, #4
	ldr r0, [r4, r0]
	ldr r2, [sp, #4]
	mov r1, #0
	bl sub_020D5124
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	add r2, r7, #0
	bl sub_020D5124
	mov r0, #0x49
	lsl r0, r0, #2
	strb r5, [r4, r0]
	add r0, r0, #1
	strb r6, [r4, r0]
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260BB4: .word 0x000004A4
	thumb_func_end ov70_02260B44

	thumb_func_start ov70_02260BB8
ov70_02260BB8: ; 0x02260BB8
	push {r4, lr}
	mov r1, #0x4a
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _02260BCA
	bl ov70_02260D80
_02260BCA:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl sub_020181C4
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020181C4
	add r0, r4, #0
	bl sub_020181C4
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260BB8

	thumb_func_start ov70_02260BE8
ov70_02260BE8: ; 0x02260BE8
	push {r3, r4, r5, r6, r7, lr}
	mov r1, #0x4b
	add r5, r0, #0
	lsl r1, r1, #2
	add r1, r5, r1
	bl ov70_022616B0
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _02260C24
	mov r7, #0x71
	add r6, r4, #0
	lsl r7, r7, #2
_02260C08:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r7
	add r0, r0, r6
	bl ov70_02261968
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, #0xb4
	cmp r4, r0
	blt _02260C08
_02260C24:
	ldr r0, _02260C4C ; =0x00000125
	mov r6, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02260C4A
	ldr r7, _02260C4C ; =0x00000125
	add r4, r6, #0
_02260C32:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, #0
	add r1, r1, r4
	bl ov70_02261C60
	ldrb r0, [r5, r7]
	add r6, r6, #1
	add r4, #0xe4
	cmp r6, r0
	blt _02260C32
_02260C4A:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02260C4C: .word 0x00000125
	thumb_func_end ov70_02260BE8

	thumb_func_start ov70_02260C50
ov70_02260C50: ; 0x02260C50
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _02260C5A
	bl sub_02022974
_02260C5A:
	mov r0, #0x12
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02260C68
	bl sub_02022974
_02260C68:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _02260C76
	bl sub_02022974
_02260C76:
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	bl ov70_022616FC
	ldr r0, _02260CDC ; =0x00000125
	mov r4, #0
	ldrb r0, [r5, r0]
	cmp r0, #0
	ble _02260CAC
	mov r7, #0xa7
	add r6, r4, #0
	lsl r7, r7, #2
_02260C92:
	mov r1, #0x12
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r5, r7
	add r1, r1, r6
	bl ov70_02261C04
	ldr r0, _02260CDC ; =0x00000125
	add r4, r4, #1
	ldrb r0, [r5, r0]
	add r6, #0xe4
	cmp r4, r0
	blt _02260C92
_02260CAC:
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	mov r4, #0
	cmp r0, #0
	ble _02260CDA
	mov r7, #0x71
	add r6, r4, #0
	lsl r7, r7, #2
_02260CBE:
	mov r0, #0x47
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r5, r7
	add r0, r0, r6
	bl ov70_022619F4
	mov r0, #0x49
	lsl r0, r0, #2
	ldrb r0, [r5, r0]
	add r4, r4, #1
	add r6, #0xb4
	cmp r4, r0
	blt _02260CBE
_02260CDA:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02260CDC: .word 0x00000125
	thumb_func_end ov70_02260C50

	thumb_func_start ov70_02260CE0
ov70_02260CE0: ; 0x02260CE0
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260CE0

	thumb_func_start ov70_02260CE4
ov70_02260CE4: ; 0x02260CE4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, _02260D78 ; =0x00000127
	add r7, r3, #0
	strb r2, [r5, r0]
	sub r0, r0, #1
	strb r1, [r5, r0]
	add r0, r1, #0
	add r1, r2, #0
	add r2, r7, #0
	ldr r4, [sp, #0x18]
	bl ov70_022613F4
	add r6, r0, #0
	mov r0, #0xaf
	add r1, r7, #0
	bl sub_02006C24
	add r7, r0, #0
	ldr r0, _02260D7C ; =0x00000494
	add r1, r4, #0
	add r0, r5, r0
	mov r2, #4
	bl sub_020182CC
	ldr r0, _02260D7C ; =0x00000494
	add r1, r7, #0
	add r0, r5, r0
	str r0, [sp]
	mov r0, #0x4b
	lsl r0, r0, #2
	add r0, r5, r0
	add r2, r6, #0
	add r3, r4, #0
	bl ov70_022614F4
	mov r0, #0xa7
	ldr r2, _02260D7C ; =0x00000494
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	add r2, r5, r2
	add r3, r6, #0
	str r4, [sp]
	bl ov70_02261B24
	mov r0, #0x71
	ldr r2, _02260D7C ; =0x00000494
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r7, #0
	add r2, r5, r2
	add r3, r6, #0
	str r4, [sp]
	bl ov70_0226174C
	add r0, r7, #0
	bl sub_02006CA8
	add r0, r6, #0
	bl ov70_02261418
	mov r1, #0x4b
	lsl r1, r1, #2
	add r0, r5, #0
	add r1, r5, r1
	bl ov70_022615E8
	mov r0, #0x4a
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02260D78: .word 0x00000127
_02260D7C: .word 0x00000494
	thumb_func_end ov70_02260CE4

	thumb_func_start ov70_02260D80
ov70_02260D80: ; 0x02260D80
	push {r4, lr}
	mov r1, #0x4b
	add r4, r0, #0
	lsl r1, r1, #2
	add r1, r4, r1
	bl ov70_02261664
	mov r0, #0x4b
	ldr r1, _02260DC4 ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov70_022615A4
	mov r0, #0xa7
	ldr r1, _02260DC4 ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov70_02261BB4
	mov r0, #0x71
	ldr r1, _02260DC4 ; =0x00000494
	lsl r0, r0, #2
	add r0, r4, r0
	add r1, r4, r1
	bl ov70_022618C8
	mov r0, #0x4a
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_02260DC4: .word 0x00000494
	thumb_func_end ov70_02260D80

	thumb_func_start ov70_02260DC8
ov70_02260DC8: ; 0x02260DC8
	push {r3, lr}
	mov r2, #7
	add r1, r0, #0
	lsl r2, r2, #6
	ldr r0, [r1, r2]
	cmp r0, #1
	bne _02260DF2
	add r0, r2, #0
	sub r0, #0xbc
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02260DF2
	add r0, r2, #0
	mov r3, #1
	sub r0, #0xbc
	str r3, [r1, r0]
	sub r2, #0x24
	add r0, r1, #4
	add r1, r1, r2
	bl sub_0201727C
_02260DF2:
	pop {r3, pc}
	thumb_func_end ov70_02260DC8

	thumb_func_start ov70_02260DF4
ov70_02260DF4: ; 0x02260DF4
	push {r4, lr}
	mov r1, #7
	add r4, r0, #0
	lsl r1, r1, #6
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _02260E1E
	add r0, r1, #0
	sub r0, #0xbc
	ldr r0, [r4, r0]
	cmp r0, #1
	bne _02260E1E
	sub r1, #0x24
	add r0, r4, #4
	add r1, r4, r1
	bl sub_02017288
	mov r0, #0x41
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
_02260E1E:
	pop {r4, pc}
	thumb_func_end ov70_02260DF4

	thumb_func_start ov70_02260E20
ov70_02260E20: ; 0x02260E20
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r6, r2, #0
	str r3, [sp]
	cmp r5, #2
	ble _02260E34
	bl sub_02022974
_02260E34:
	cmp r6, #3
	ble _02260E3C
	bl sub_02022974
_02260E3C:
	add r0, r7, #0
	bl ov70_02261718
	mov r1, #0x71
	lsl r1, r1, #2
	add r4, r0, #0
	add r2, r7, r1
	lsl r1, r5, #4
	add r0, r4, #4
	add r1, r2, r1
	bl sub_02017258
	add r0, r4, #4
	mov r1, #1
	bl sub_02017348
	ldr r1, [sp]
	add r0, r4, #0
	bl ov70_02260EA0
	add r1, sp, #4
	mov r0, #0
	str r0, [r1, #0]
	str r0, [r1, #4]
	str r0, [r1, #8]
	add r0, r4, #0
	bl ov70_02260EE4
	strb r6, [r4, #1]
	add r0, r4, #0
	strb r5, [r4, #2]
	mov r1, #1
	strb r1, [r4]
	str r1, [r4, #0x7c]
	add r0, #0x84
	str r1, [r0, #0]
	add r0, r4, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02260E20

	thumb_func_start ov70_02260E8C
ov70_02260E8C: ; 0x02260E8C
	push {r4, lr}
	add r4, r0, #0
	add r0, r4, #4
	mov r1, #0
	bl sub_02017348
	mov r0, #0
	strb r0, [r4]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260E8C

	thumb_func_start ov70_02260EA0
ov70_02260EA0: ; 0x02260EA0
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0x9c
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r3, #0
	str r0, [r2, #0]
	add r1, #0x9c
	ldr r2, [r1, #0]
	add r1, r3, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r0, r3, #4
	add r1, r2, r1
	add r2, r3, #0
	add r2, #0xa0
	ldr r4, [r2, #0]
	add r2, r3, #0
	add r2, #0xac
	ldr r2, [r2, #0]
	add r2, r4, r2
	add r4, r3, #0
	add r4, #0xa4
	add r3, #0xb0
	ldr r4, [r4, #0]
	ldr r3, [r3, #0]
	add r3, r4, r3
	bl sub_02017350
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260EA0

	thumb_func_start ov70_02260EE4
ov70_02260EE4: ; 0x02260EE4
	push {r4, lr}
	add r3, r0, #0
	add r4, r1, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	add r2, #0xa8
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0]
	add r1, r3, #0
	str r0, [r2, #0]
	add r1, #0x9c
	ldr r2, [r1, #0]
	add r1, r3, #0
	add r1, #0xa8
	ldr r1, [r1, #0]
	add r0, r3, #4
	add r1, r2, r1
	add r2, r3, #0
	add r2, #0xa0
	ldr r4, [r2, #0]
	add r2, r3, #0
	add r2, #0xac
	ldr r2, [r2, #0]
	add r2, r4, r2
	add r4, r3, #0
	add r4, #0xa4
	add r3, #0xb0
	ldr r4, [r4, #0]
	ldr r3, [r3, #0]
	add r3, r4, r3
	bl sub_02017350
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02260EE4

	thumb_func_start ov70_02260F28
ov70_02260F28: ; 0x02260F28
	push {r3, lr}
	add r3, r1, #0
	add r0, r0, #4
	add r2, r1, #4
	add r3, #8
	bl sub_02017358
	pop {r3, pc}
	thumb_func_end ov70_02260F28

	thumb_func_start ov70_02260F38
ov70_02260F38: ; 0x02260F38
	ldr r3, _02260F40 ; =sub_02017348
	add r0, r0, #4
	bx r3
	nop
_02260F40: .word sub_02017348
	thumb_func_end ov70_02260F38

	thumb_func_start ov70_02260F44
ov70_02260F44: ; 0x02260F44
	add r1, r0, #0
	add r1, #0x80
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02260F58
	mov r1, #1
	add r0, #0x80
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
_02260F58:
	mov r0, #0
	bx lr
	thumb_func_end ov70_02260F44

	thumb_func_start ov70_02260F5C
ov70_02260F5C: ; 0x02260F5C
	add r1, r0, #0
	add r1, #0x88
	ldr r1, [r1, #0]
	cmp r1, #0
	bne _02260F70
	mov r1, #1
	add r0, #0x88
	str r1, [r0, #0]
	add r0, r1, #0
	bx lr
_02260F70:
	mov r0, #0
	bx lr
	thumb_func_end ov70_02260F5C

	thumb_func_start ov70_02260F74
ov70_02260F74: ; 0x02260F74
	ldr r3, _02260F7C ; =sub_02017388
	add r0, r0, #4
	mov r2, #0
	bx r3
	; .align 2, 0
_02260F7C: .word sub_02017388
	thumb_func_end ov70_02260F74

	thumb_func_start ov70_02260F80
ov70_02260F80: ; 0x02260F80
	add r0, #0x80
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260F80

	thumb_func_start ov70_02260F88
ov70_02260F88: ; 0x02260F88
	add r0, #0x88
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_02260F88

	thumb_func_start ov70_02260F90
ov70_02260F90: ; 0x02260F90
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov70_02261AF0
	mov r1, #0xa7
	lsl r1, r1, #2
	add r2, r7, r1
	ldr r1, [sp]
	str r0, [sp, #0xc]
	lsl r1, r1, #4
	add r0, r0, #4
	add r1, r2, r1
	bl sub_02017258
	ldr r5, [sp, #0xc]
	ldr r0, [sp]
	mov r1, #0xc
	mul r1, r0
	mov r0, #0xa7
	lsl r0, r0, #2
	add r0, r7, r0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r6, #0
	lsl r0, r0, #4
	add r4, r7, r1
	add r5, #0x7c
	str r0, [sp, #0x14]
_02260FD0:
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r4, r0]
	cmp r2, #0
	beq _02260FEA
	ldr r3, [sp, #0x10]
	ldr r1, [sp, #0x14]
	add r0, r5, #0
	add r1, r3, r1
	ldr r3, _02261054 ; =0x00000494
	add r3, r7, r3
	bl sub_02017190
_02260FEA:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #3
	blt _02260FD0
	ldr r0, [sp, #0xc]
	mov r1, #1
	add r0, r0, #4
	bl sub_02017348
	ldr r0, [sp, #4]
	add r1, sp, #0x18
	lsl r0, r0, #4
	strh r0, [r1]
	ldr r0, [sp, #8]
	mov r3, sp
	lsl r0, r0, #4
	strh r0, [r1, #2]
	ldrh r2, [r1]
	sub r3, r3, #4
	ldr r0, [sp, #0xc]
	strh r2, [r3]
	ldrh r1, [r1, #2]
	strh r1, [r3, #2]
	ldr r1, [r3, #0]
	bl ov70_022610BC
	ldr r0, [sp, #0xc]
	mov r2, #1
	ldr r1, [sp]
	strh r2, [r0]
	strh r1, [r0, #2]
	mov r1, #0x14
	add r0, #0xcc
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	lsl r1, r2, #0xc
	add r0, #0xdc
	str r1, [r0, #0]
	ldr r0, [sp, #0xc]
	mov r1, #0
	add r0, #0xe0
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	mov r1, #0x1f
	add r0, #0xe1
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add r0, #0xe2
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02261054: .word 0x00000494
	thumb_func_end ov70_02260F90

	thumb_func_start ov70_02261058
ov70_02261058: ; 0x02261058
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r0, #0
	str r1, [sp]
	add r0, r1, #4
	mov r1, #0
	bl sub_02017348
	mov r0, #0xa7
	ldr r5, [sp]
	lsl r0, r0, #2
	mov r7, #0
	add r0, r6, r0
	add r4, r7, #0
	add r5, #0x7c
	str r0, [sp, #4]
_02261078:
	ldr r0, [sp]
	ldrh r1, [r0, #2]
	mov r0, #0xc
	mul r0, r1
	add r0, r6, r0
	add r2, r4, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r2, [r2, r0]
	cmp r2, #0
	beq _0226109E
	lsl r3, r1, #4
	ldr r1, [sp, #4]
	add r0, r5, #0
	add r1, r1, r3
	ldr r3, _022610B4 ; =0x00000494
	add r3, r6, r3
	bl sub_02017190
_0226109E:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r7, #3
	blt _02261078
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022610B4: .word 0x00000494
	thumb_func_end ov70_02261058

	thumb_func_start ov70_022610B8
ov70_022610B8: ; 0x022610B8
	ldrh r0, [r0, #2]
	bx lr
	thumb_func_end ov70_022610B8

	thumb_func_start ov70_022610BC
ov70_022610BC: ; 0x022610BC
	push {r0, r1, r2, r3}
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, sp, #0x1c
	add r1, sp, #0
	bl ov70_0225C700
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	add r0, r4, #4
	bl sub_02017350
	add sp, #0xc
	pop {r3, r4}
	pop {r3}
	add sp, #0x10
	bx r3
	; .align 2, 0
	thumb_func_end ov70_022610BC

	thumb_func_start ov70_022610E4
ov70_022610E4: ; 0x022610E4
	push {r3, lr}
	sub sp, #0x10
	add r0, r0, #4
	add r1, sp, #4
	add r2, sp, #8
	add r3, sp, #0xc
	bl sub_02017358
	add r0, sp, #4
	add r1, sp, #0
	bl ov70_0225C714
	add r0, sp, #0
	ldrh r1, [r0, #2]
	ldrh r0, [r0]
	lsl r1, r1, #0x10
	orr r0, r1
	add sp, #0x10
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_022610E4

	thumb_func_start ov70_0226110C
ov70_0226110C: ; 0x0226110C
	push {r3, r4, lr}
	sub sp, #4
	mov r4, #0
	str r4, [sp]
	bl ov70_0226111C
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov70_0226110C

	thumb_func_start ov70_0226111C
ov70_0226111C: ; 0x0226111C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r2, #0
	str r0, [sp]
	add r4, r1, #0
	add r7, r3, #0
	cmp r5, #3
	blt _02261130
	bl sub_02022974
_02261130:
	cmp r7, #7
	blt _02261138
	bl sub_02022974
_02261138:
	ldrh r0, [r4, #2]
	cmp r0, #0x12
	blo _02261142
	bl sub_02022974
_02261142:
	ldrh r0, [r4, #2]
	mov r1, #0xc
	lsl r6, r5, #2
	mul r1, r0
	ldr r0, [sp]
	add r0, r0, r1
	add r1, r0, r6
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _0226121C
	add r0, r4, #0
	str r0, [sp, #4]
	add r0, #0xb8
	str r0, [sp, #4]
	ldrb r0, [r0, r5]
	cmp r0, #0
	bne _02261178
	add r2, r4, #0
	mov r1, #0x14
	add r2, #0x7c
	mul r1, r5
	add r0, r4, #4
	add r1, r2, r1
	bl sub_0201727C
_02261178:
	ldr r0, [sp, #4]
	mov r1, #1
	strb r1, [r0, r5]
	add r0, r4, r5
	add r0, #0xbc
	strb r7, [r0]
	add r0, r4, r6
	ldr r1, [sp, #0x20]
	add r0, #0xd0
	str r1, [r0, #0]
	add r0, r4, #0
	str r0, [sp, #8]
	add r0, #0xcd
	str r0, [sp, #8]
	mov r0, #0
	ldr r1, [sp, #8]
	cmp r7, #6
	strb r0, [r1, r5]
	bhi _02261208
	add r1, r7, r7
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022611AA: ; jump table
	.short _022611B8 - _022611AA - 2 ; case 0
	.short _022611B8 - _022611AA - 2 ; case 1
	.short _022611B8 - _022611AA - 2 ; case 2
	.short _022611C0 - _022611AA - 2 ; case 3
	.short _022611C0 - _022611AA - 2 ; case 4
	.short _022611D6 - _022611AA - 2 ; case 5
	.short _022611F0 - _022611AA - 2 ; case 6
_022611B8:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1, #0]
	b _02261208
_022611C0:
	add r1, r4, #0
	mov r0, #0x14
	add r1, #0x7c
	mul r0, r5
	add r0, r1, r0
	bl sub_0201724C
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1, #0]
	b _02261208
_022611D6:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1, #0]
	bl sub_0201D35C
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl sub_020E2178
	ldr r0, [sp, #8]
	strb r1, [r0, r5]
	b _02261208
_022611F0:
	add r1, r4, r6
	add r1, #0xc0
	str r0, [r1, #0]
	bl sub_0201D35C
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl sub_020E2178
	ldr r0, [sp, #8]
	strb r1, [r0, r5]
_02261208:
	add r1, r4, #0
	mov r0, #0x14
	add r1, #0x7c
	mul r0, r5
	add r0, r1, r0
	add r1, r4, r6
	add r1, #0xc0
	ldr r1, [r1, #0]
	bl sub_02017240
_0226121C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226111C

	thumb_func_start ov70_02261220
ov70_02261220: ; 0x02261220
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #3
	blt _02261230
	bl sub_02022974
_02261230:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0226123A
	bl sub_02022974
_0226123A:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _02261288
	add r6, r5, #0
	add r6, #0xb8
	ldrb r0, [r6, r4]
	cmp r0, #1
	bne _02261288
	add r2, r5, #0
	mov r1, #0x14
	add r2, #0x7c
	mul r1, r4
	add r0, r5, #4
	add r1, r2, r1
	bl sub_02017288
	lsl r2, r4, #2
	mov r0, #0
	add r1, r5, r2
	strb r0, [r6, r4]
	add r1, #0xc0
	str r0, [r1, #0]
	add r1, r5, r4
	add r1, #0xbc
	strb r0, [r1]
	add r1, r5, r4
	add r1, #0xcd
	strb r0, [r1]
	add r1, r5, r2
	add r1, #0xd0
	str r0, [r1, #0]
_02261288:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02261220

	thumb_func_start ov70_0226128C
ov70_0226128C: ; 0x0226128C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r4, #0
_02261294:
	add r0, r5, #0
	add r1, r4, #0
	bl ov70_02261348
	cmp r0, #1
	bne _022612AA
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov70_02261220
_022612AA:
	add r4, r4, #1
	cmp r4, #3
	blt _02261294
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_0226128C

	thumb_func_start ov70_022612B4
ov70_022612B4: ; 0x022612B4
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	cmp r4, #3
	blt _022612C4
	bl sub_02022974
_022612C4:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _022612CE
	bl sub_02022974
_022612CE:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _022612EC
	add r0, r5, r4
	add r0, #0xb8
	ldrb r0, [r0]
	pop {r4, r5, r6, pc}
_022612EC:
	mov r0, #0
	pop {r4, r5, r6, pc}
	thumb_func_end ov70_022612B4

	thumb_func_start ov70_022612F0
ov70_022612F0: ; 0x022612F0
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r6, r0, #0
	add r5, r1, #0
	add r7, r3, #0
	cmp r4, #3
	blt _02261302
	bl sub_02022974
_02261302:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _0226130C
	bl sub_02022974
_0226130C:
	ldrh r1, [r5, #2]
	mov r0, #0xc
	mul r0, r1
	add r1, r6, r0
	lsl r0, r4, #2
	add r1, r1, r0
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	cmp r0, #0
	bne _02261326
	bl sub_02022974
_02261326:
	add r0, r5, r4
	add r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #2
	bne _02261346
	add r2, r5, #0
	mov r0, #0x14
	add r2, #0xc0
	lsl r1, r4, #2
	str r7, [r2, r1]
	add r5, #0x7c
	mul r0, r4
	ldr r1, [r2, r1]
	add r0, r5, r0
	bl sub_02017240
_02261346:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_022612F0

	thumb_func_start ov70_02261348
ov70_02261348: ; 0x02261348
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _02261356
	bl sub_02022974
_02261356:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _02261360
	bl sub_02022974
_02261360:
	add r0, r5, r4
	add r0, #0xb8
	ldrb r0, [r0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_02261348

	thumb_func_start ov70_02261368
ov70_02261368: ; 0x02261368
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	cmp r4, #3
	blt _02261376
	bl sub_02022974
_02261376:
	ldrh r0, [r5, #2]
	cmp r0, #0x12
	blo _02261380
	bl sub_02022974
_02261380:
	lsl r0, r4, #2
	add r0, r5, r0
	add r0, #0xc0
	ldr r0, [r0, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02261368

	thumb_func_start ov70_0226138C
ov70_0226138C: ; 0x0226138C
	ldr r3, _02261394 ; =sub_02017348
	add r0, r0, #4
	bx r3
	nop
_02261394: .word sub_02017348
	thumb_func_end ov70_0226138C

	thumb_func_start ov70_02261398
ov70_02261398: ; 0x02261398
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4, #2]
	add r6, r2, #0
	cmp r0, #0x12
	blo _022613AA
	bl sub_02022974
_022613AA:
	ldrh r0, [r4, #2]
	lsl r0, r0, #4
	add r1, r5, r0
	mov r0, #0xa9
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, r6, #0
	bl sub_020B3664
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end ov70_02261398

	thumb_func_start ov70_022613C0
ov70_022613C0: ; 0x022613C0
	add r0, #0xdc
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end ov70_022613C0

	thumb_func_start ov70_022613C8
ov70_022613C8: ; 0x022613C8
	push {r3, r4}
	add r3, r0, #0
	mov r4, #1
	add r3, #0xe0
	strb r4, [r3]
	add r3, r0, #0
	add r3, #0xe1
	strb r1, [r3]
	add r0, #0xe2
	strb r2, [r0]
	pop {r3, r4}
	bx lr
	thumb_func_end ov70_022613C8

	thumb_func_start ov70_022613E0
ov70_022613E0: ; 0x022613E0
	mov r1, #0
	add r0, #0xe0
	strb r1, [r0]
	bx lr
	thumb_func_end ov70_022613E0

	thumb_func_start ov70_022613E8
ov70_022613E8: ; 0x022613E8
	push {r3, lr}
	add r0, r0, #4
	bl sub_0201736C
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end ov70_022613E8

	thumb_func_start ov70_022613F4
ov70_022613F4: ; 0x022613F4
	push {r3, r4, r5, lr}
	add r5, r2, #0
	lsl r2, r1, #2
	add r1, r1, r2
	add r4, r0, r1
	cmp r4, #0x19
	blo _02261406
	bl sub_02022974
_02261406:
	mov r0, #1
	str r0, [sp]
	mov r0, #0xae
	add r1, r4, #1
	mov r2, #0
	add r3, r5, #0
	bl sub_02006FE8
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022613F4

	thumb_func_start ov70_02261418
ov70_02261418: ; 0x02261418
	ldr r3, _0226141C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0226141C: .word sub_020181C4
	thumb_func_end ov70_02261418

	thumb_func_start ov70_02261420
ov70_02261420: ; 0x02261420
	push {r4, lr}
	add r4, r0, #0
	bl ov70_0225C730
	ldr r0, [r4, #0]
	bl sub_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _02261454
	add r2, r0, #0
	add r2, #8
	beq _02261448
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02261448
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _0226144A
_02261448:
	mov r1, #0
_0226144A:
	cmp r1, #0
	beq _02261454
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _02261456
_02261454:
	mov r0, #0
_02261456:
	str r0, [r4, #8]
	ldr r0, [r4, #0]
	bl sub_020B3C1C
	str r0, [r4, #0xc]
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	bl sub_0201CBB0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02261420

	thumb_func_start ov70_0226146C
ov70_0226146C: ; 0x0226146C
	ldr r3, _02261470 ; =sub_02017110
	bx r3
	; .align 2, 0
_02261470: .word sub_02017110
	thumb_func_end ov70_0226146C

	thumb_func_start ov70_02261474
ov70_02261474: ; 0x02261474
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0201724C
	add r1, r0, #0
	ldr r0, [r5, #0]
	add r0, r0, r4
	cmp r0, r1
	bge _0226148E
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
_0226148E:
	bl sub_020E1F6C
	str r1, [r5, #0]
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02261474

	thumb_func_start ov70_02261498
ov70_02261498: ; 0x02261498
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0201724C
	ldr r1, [r5, #0]
	add r1, r1, r4
	cmp r1, r0
	bge _022614B2
	str r1, [r5, #0]
	mov r0, #0
	pop {r3, r4, r5, pc}
_022614B2:
	mov r1, #2
	lsl r1, r1, #0xa
	sub r0, r0, r1
	str r0, [r5, #0]
	mov r0, #1
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02261498

	thumb_func_start ov70_022614C0
ov70_022614C0: ; 0x022614C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r1, #0
	add r4, r2, #0
	bl sub_0201724C
	ldr r1, [r5, #0]
	sub r1, r1, r4
	bmi _022614D6
	str r1, [r5, #0]
	pop {r3, r4, r5, pc}
_022614D6:
	add r0, r0, r1
	str r0, [r5, #0]
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022614C0

	thumb_func_start ov70_022614DC
ov70_022614DC: ; 0x022614DC
	ldr r1, [r0, #0]
	sub r1, r1, r2
	cmp r1, #0
	ble _022614EA
	str r1, [r0, #0]
	mov r0, #0
	bx lr
_022614EA:
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end ov70_022614DC

	thumb_func_start ov70_022614F4
ov70_022614F4: ; 0x022614F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #8]
	ldr r0, [sp, #0x30]
	mov r7, #6
	ldr r5, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x30]
	mov r6, #0
	add r4, r2, #0
	lsl r7, r7, #6
_0226150E:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov70_02261420
	ldr r0, [r5, #0]
	bl ov66_02231668
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x10
	cmp r6, #2
	blt _0226150E
	ldr r6, [sp, #8]
	ldr r4, [sp, #0x10]
	add r0, r6, #0
	add r5, r6, #0
	str r0, [sp, #0x18]
	add r0, #0x10
	mov r7, #0
	add r5, #0x20
	str r0, [sp, #0x18]
_0226153C:
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #6
	ldr r1, [r1, r0]
	add r0, #0xc
	ldr r0, [r4, r0]
	cmp r1, r0
	bne _02261556
	add r1, r6, #0
	add r1, #0x84
	mov r0, #0
	str r0, [r1, #0]
	b _02261594
_02261556:
	add r1, r6, #0
	add r1, #0x84
	mov r0, #1
	str r0, [r1, #0]
	cmp r7, #3
	beq _0226157C
	ldr r0, [sp, #0x14]
	mov r3, #0x63
	str r0, [sp]
	ldr r0, [sp, #0x30]
	lsl r3, r3, #2
	str r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl sub_02017164
	b _02261594
_0226157C:
	ldr r0, [sp, #0x14]
	mov r3, #0x63
	str r0, [sp]
	ldr r0, [sp, #0x30]
	lsl r3, r3, #2
	str r0, [sp, #4]
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0xc]
	ldr r3, [r4, r3]
	add r0, r5, #0
	bl sub_02017164
_02261594:
	add r7, r7, #1
	add r4, r4, #4
	add r6, r6, #4
	add r5, #0x14
	cmp r7, #5
	blt _0226153C
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_022614F4

	thumb_func_start ov70_022615A4
ov70_022615A4: ; 0x022615A4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r6, #0
	str r1, [sp]
	mov r7, #0
	add r4, r6, #0
	add r5, #0x20
_022615B2:
	add r0, r4, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022615CC
	ldr r1, [sp]
	add r0, r5, #0
	bl sub_020171A0
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0
	str r0, [r1, #0]
_022615CC:
	add r7, r7, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r7, #5
	blt _022615B2
	mov r4, #0
_022615D8:
	add r0, r6, #0
	bl ov70_0226146C
	add r4, r4, #1
	add r6, #0x10
	cmp r4, #2
	blt _022615D8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_022615A4

	thumb_func_start ov70_022615E8
ov70_022615E8: ; 0x022615E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	mov r0, #1
	add r7, r1, #0
	str r0, [r6, #0]
	mov r0, #0
	str r0, [sp]
	add r4, r7, #0
	add r5, r6, #4
_022615FC:
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02017258
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	ldr r0, [sp]
	add r4, #0x10
	add r0, r0, #1
	add r5, #0x78
	str r0, [sp]
	cmp r0, #2
	blt _022615FC
	add r0, r6, #0
	str r0, [sp, #8]
	add r0, #0x7c
	add r4, r7, #0
	str r0, [sp, #8]
	add r0, r6, #4
	mov r5, #0
	add r4, #0x20
	str r0, [sp, #4]
_0226162C:
	add r0, r7, #0
	add r0, #0x84
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _02261654
	add r1, r6, #0
	add r1, #0xf4
	mov r0, #1
	str r0, [r1, #0]
	cmp r5, #3
	beq _0226164C
	ldr r0, [sp, #4]
	add r1, r4, #0
	bl sub_0201727C
	b _02261654
_0226164C:
	ldr r0, [sp, #8]
	add r1, r4, #0
	bl sub_0201727C
_02261654:
	add r5, r5, #1
	add r7, r7, #4
	add r6, r6, #4
	add r4, #0x14
	cmp r5, #4
	blt _0226162C
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_022615E8

	thumb_func_start ov70_02261664
ov70_02261664: ; 0x02261664
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	str r0, [sp]
	add r0, #0x7c
	mov r6, #0
	add r4, r7, #0
	add r5, #0x20
	str r0, [sp]
_02261676:
	add r0, r4, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #1
	bne _0226169E
	add r1, r4, #0
	add r1, #0xf4
	mov r0, #0
	str r0, [r1, #0]
	cmp r6, #3
	beq _02261696
	add r0, r7, #4
	add r1, r5, #0
	bl sub_02017288
	b _0226169E
_02261696:
	ldr r0, [sp]
	add r1, r5, #0
	bl sub_02017288
_0226169E:
	add r6, r6, #1
	add r4, r4, #4
	add r5, #0x14
	cmp r6, #4
	blt _02261676
	mov r0, #0
	str r0, [r7, #0]
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02261664

	thumb_func_start ov70_022616B0
ov70_022616B0: ; 0x022616B0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0
	str r0, [sp]
	add r4, r1, #0
	mov r0, #0x42
	add r4, #0x20
	lsl r0, r0, #2
	add r6, r5, r0
	add r7, r4, #0
_022616C4:
	add r0, r5, #0
	add r0, #0xf4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022616E6
	mov r2, #1
	add r0, r6, #0
	add r1, r4, #0
	lsl r2, r2, #0xc
	bl ov70_02261474
	mov r1, #0x42
	lsl r1, r1, #2
	ldr r1, [r5, r1]
	add r0, r7, #0
	bl sub_02017240
_022616E6:
	ldr r0, [sp]
	add r5, r5, #4
	add r0, r0, #1
	add r4, #0x14
	add r6, r6, #4
	add r7, #0x14
	str r0, [sp]
	cmp r0, #5
	blt _022616C4
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022616B0

	thumb_func_start ov70_022616FC
ov70_022616FC: ; 0x022616FC
	push {r3, r4, r5, lr}
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02261716
	mov r4, #0
	add r5, r0, #4
_02261708:
	add r0, r5, #0
	bl sub_02017294
	add r4, r4, #1
	add r5, #0x78
	cmp r4, #2
	blt _02261708
_02261716:
	pop {r3, r4, r5, pc}
	thumb_func_end ov70_022616FC

	thumb_func_start ov70_02261718
ov70_02261718: ; 0x02261718
	push {r4, lr}
	mov r1, #0x49
	lsl r1, r1, #2
	ldrb r4, [r0, r1]
	mov r2, #0
	cmp r4, #0
	ble _02261742
	sub r1, #8
	ldr r3, [r0, r1]
	add r1, r3, #0
_0226172C:
	ldrb r0, [r1]
	cmp r0, #0
	bne _0226173A
	mov r0, #0xb4
	mul r0, r2
	add r0, r3, r0
	pop {r4, pc}
_0226173A:
	add r2, r2, #1
	add r1, #0xb4
	cmp r2, r4
	blt _0226172C
_02261742:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end ov70_02261718

	thumb_func_start ov70_0226174C
ov70_0226174C: ; 0x0226174C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	str r0, [sp, #8]
	ldr r0, [sp, #0x58]
	mov r7, #0x4a
	str r0, [sp, #0x58]
	mov r0, #0
	str r0, [sp, #0x40]
	add r0, r3, #0
	str r0, [sp, #0x24]
	ldr r0, [sp, #8]
	str r1, [sp, #0xc]
	str r0, [sp, #0x20]
	add r0, #0x20
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r0, [sp, #0x20]
	lsl r7, r7, #2
_02261770:
	ldr r4, [sp, #0x24]
	ldr r5, [sp, #0x20]
	mov r6, #0
_02261776:
	ldr r1, [sp, #0xc]
	ldr r2, [r4, r7]
	ldr r3, [sp, #0x58]
	add r0, r5, #0
	bl ov70_0225C730
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _02261776
	ldr r0, [sp, #0x24]
	add r0, #0xc
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r0, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	cmp r0, #2
	blt _02261770
	ldr r4, [sp, #8]
	ldr r6, [sp, #0x14]
	mov r7, #0
	add r5, r4, #0
_022617AA:
	mov r0, #0
	mov r1, #0x12
	str r0, [sp]
	lsl r1, r1, #4
	ldr r0, [sp, #0xc]
	ldr r1, [r6, r1]
	ldr r3, [sp, #0x58]
	mov r2, #0
	bl sub_0200723C
	str r0, [r4, #0]
	bl sub_020B3C0C
	str r0, [r4, #4]
	cmp r0, #0
	beq _022617EA
	add r1, r0, #0
	add r1, #8
	beq _022617DE
	ldrb r2, [r0, #9]
	cmp r2, #0
	bls _022617DE
	ldrh r2, [r0, #0xe]
	add r1, r1, r2
	add r1, r1, #4
	b _022617E0
_022617DE:
	mov r1, #0
_022617E0:
	cmp r1, #0
	beq _022617EA
	ldr r1, [r1, #0]
	add r0, r0, r1
	b _022617EC
_022617EA:
	mov r0, #0
_022617EC:
	str r0, [r4, #8]
	ldr r0, [r5, #0x20]
	bl sub_020B3C1C
	str r0, [r4, #0xc]
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x10
	add r5, #0xc
	cmp r7, #2
	blt _022617AA
	mov r0, #0
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	ldr r7, [sp, #0x14]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	str r0, [sp, #0x38]
	add r0, #0x38
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x14]
	str r0, [sp, #0x34]
	ldr r0, [sp, #8]
	str r0, [sp, #0x30]
_0226181C:
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x3c]
	ldr r6, [sp, #0x34]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x38]
	ldr r5, [sp, #0x30]
	str r0, [sp, #0x28]
_0226182C:
	mov r0, #5
	ldr r1, [sp, #0x2c]
	lsl r0, r0, #6
	ldr r3, [r1, r0]
	ldr r1, [sp, #0x14]
	sub r0, #0x20
	ldr r0, [r1, r0]
	cmp r0, r3
	beq _02261880
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #8]
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0xc]
	str r0, [sp, #4]
	ldr r0, [sp, #0x28]
	bl sub_02017164
	ldr r0, [sp, #0x18]
	cmp r0, #1
	blt _02261880
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	mov r4, #0
	cmp r0, #0
	bls _02261880
_02261862:
	mov r0, #0x59
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	cmp r4, r0
	beq _02261874
	ldr r0, [r5, #0x40]
	add r1, r4, #0
	bl sub_020AE5CC
_02261874:
	mov r0, #0x16
	lsl r0, r0, #4
	ldr r0, [r7, r0]
	add r4, r4, #1
	cmp r4, r0
	blo _02261862
_02261880:
	ldr r0, [sp, #0x2c]
	add r6, r6, #4
	add r0, r0, #4
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	add r5, #0x14
	add r0, #0x14
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x18]
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0226182C
	ldr r0, [sp, #0x3c]
	add r7, r7, #4
	add r0, #0x10
	str r0, [sp, #0x3c]
	ldr r0, [sp, #8]
	add r0, #0x10
	str r0, [sp, #8]
	ldr r0, [sp, #0x38]
	add r0, #0x50
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x34]
	add r0, #0xc
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x30]
	add r0, #0x50
	str r0, [sp, #0x30]
	ldr r0, [sp, #0x1c]
	add r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #2
	blt _0226181C
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_0226174C

	thumb_func_start ov70_022618C8
ov70_022618C8: ; 0x022618C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	ldr r7, [sp]
	mov r0, #0
	add r6, r1, #0
	str r0, [sp, #8]
	add r7, #0x38
_022618D8:
	mov r4, #0
	add r5, r7, #0
_022618DC:
	add r0, r5, #0
	add r1, r6, #0
	bl sub_020171A0
	add r4, r4, #1
	add r5, #0x14
	cmp r4, #4
	blt _022618DC
	ldr r0, [sp, #8]
	add r7, #0x50
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #2
	blt _022618D8
	ldr r4, [sp]
	mov r5, #0
_022618FC:
	ldr r0, [r4, #0]
	bl sub_020181C4
	add r5, r5, #1
	add r4, #0x10
	cmp r5, #2
	blt _022618FC
	mov r0, #0
	ldr r7, _02261960 ; =0x02100DF0
	str r0, [sp, #4]
_02261910:
	ldr r4, [sp]
	mov r5, #0
_02261914:
	ldr r0, [r4, #0x20]
	bl sub_020B3C1C
	add r1, sp, #0x10
	add r2, sp, #0xc
	add r6, r0, #0
	bl sub_020AE9B8
	ldr r0, [sp, #0x10]
	ldr r1, [r7, #0]
	blx r1
	ldr r0, [sp, #0xc]
	ldr r1, [r7, #0]
	blx r1
	add r0, r6, #0
	bl sub_020AEA70
	ldr r1, _02261964 ; =0x02100DF8
	ldr r1, [r1, #0]
	blx r1
	ldr r0, [r4, #0x20]
	bl sub_020181C4
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #3
	blt _02261914
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #2
	blt _02261910
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02261960: .word 0x02100DF0
_02261964: .word 0x02100DF8
	thumb_func_end ov70_022618C8

	thumb_func_start ov70_02261968
ov70_02261968: ; 0x02261968
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r7, #0
	str r0, [sp]
	add r4, r0, #0
	add r0, r1, #0
	str r1, [sp, #4]
	add r0, #0x38
	add r6, r7, #0
	add r5, #0x8c
	str r0, [sp, #4]
_02261980:
	ldr r0, [r4, #0x7c]
	cmp r0, #0
	beq _022619E4
	cmp r7, #3
	bhi _022619E0
	add r0, r7, r7
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261996: ; jump table
	.short _0226199E - _02261996 - 2 ; case 0
	.short _022619B8 - _02261996 - 2 ; case 1
	.short _0226199E - _02261996 - 2 ; case 2
	.short _022619B8 - _02261996 - 2 ; case 3
_0226199E:
	ldr r1, [sp]
	mov r2, #0x50
	ldrb r1, [r1, #2]
	add r0, r5, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r1, r1, r2
	mov r2, #1
	add r1, r1, r6
	lsl r2, r2, #0xc
	bl ov70_02261474
	b _022619E4
_022619B8:
	ldr r1, [sp]
	mov r2, #0x50
	ldrb r1, [r1, #2]
	add r0, r5, #0
	mul r2, r1
	ldr r1, [sp, #4]
	add r1, r1, r2
	mov r2, #1
	add r1, r1, r6
	lsl r2, r2, #0xc
	bl ov70_02261498
	cmp r0, #1
	bne _022619E4
	mov r0, #0
	add r1, r4, #0
	str r0, [r4, #0x7c]
	add r1, #0x8c
	str r0, [r1, #0]
	b _022619E4
_022619E0:
	bl sub_02022974
_022619E4:
	add r7, r7, #1
	add r4, r4, #4
	add r6, #0x14
	add r5, r5, #4
	cmp r7, #4
	blt _02261980
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261968

	thumb_func_start ov70_022619F4
ov70_022619F4: ; 0x022619F4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5]
	str r1, [sp]
	cmp r0, #0
	beq _02261AEA
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r0, r0, r1
	add r1, r5, #4
	bl ov70_0225C7A0
	cmp r0, #0
	beq _02261AEA
	ldrb r0, [r5, #1]
	cmp r0, #3
	blo _02261A1E
	bl sub_02022974
_02261A1E:
	ldrb r0, [r5, #2]
	cmp r0, #2
	blo _02261A28
	bl sub_02022974
_02261A28:
	ldrb r1, [r5, #2]
	mov r0, #0xc
	add r2, r1, #0
	mul r2, r0
	ldr r0, [sp]
	add r1, r0, r2
	ldrb r0, [r5, #1]
	lsl r0, r0, #2
	add r0, r1, r0
	ldr r0, [r0, #0x20]
	bl sub_020B3C1C
	ldrb r1, [r5, #2]
	lsl r2, r1, #4
	ldr r1, [sp]
	add r1, r1, r2
	str r0, [r1, #0xc]
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, [r1, #4]
	ldr r1, [r1, #0xc]
	bl sub_020AF1E8
	cmp r0, #0
	bne _02261A62
	bl sub_02022974
_02261A62:
	ldr r7, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r6, r5, #0
	add r4, r0, #0
	add r7, #0x38
_02261A6E:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _02261A98
	ldrb r2, [r5, #2]
	mov r1, #0x50
	add r0, r5, #4
	mul r1, r2
	add r1, r7, r1
	add r1, r1, r4
	bl sub_0201727C
	ldrb r1, [r5, #2]
	mov r0, #0x50
	mul r0, r1
	add r1, r6, #0
	add r1, #0x8c
	add r0, r7, r0
	ldr r1, [r1, #0]
	add r0, r0, r4
	bl sub_02017240
_02261A98:
	ldr r0, [sp, #4]
	add r6, r6, #4
	add r0, r0, #1
	add r4, #0x14
	str r0, [sp, #4]
	cmp r0, #4
	blt _02261A6E
	add r0, r5, #4
	bl sub_02017294
	ldr r0, [sp]
	mov r7, #0
	str r0, [sp, #8]
	add r0, #0x38
	add r6, r5, #0
	add r4, r7, #0
	str r0, [sp, #8]
_02261ABA:
	ldr r0, [r6, #0x7c]
	cmp r0, #0
	beq _02261AD2
	ldrb r1, [r5, #2]
	mov r2, #0x50
	add r0, r5, #4
	mul r2, r1
	ldr r1, [sp, #8]
	add r1, r1, r2
	add r1, r1, r4
	bl sub_02017288
_02261AD2:
	add r7, r7, #1
	add r6, r6, #4
	add r4, #0x14
	cmp r7, #4
	blt _02261ABA
	ldrb r0, [r5, #2]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r0, r0, r1
	ldr r0, [r0, #4]
	bl sub_020AF298
_02261AEA:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_022619F4

	thumb_func_start ov70_02261AF0
ov70_02261AF0: ; 0x02261AF0
	push {r4, lr}
	ldr r3, _02261B20 ; =0x00000125
	mov r1, #0
	ldrb r2, [r0, r3]
	cmp r2, #0
	ble _02261B18
	sub r3, r3, #5
	ldr r4, [r0, r3]
	add r3, r4, #0
_02261B02:
	ldrh r0, [r3]
	cmp r0, #0
	bne _02261B10
	mov r0, #0xe4
	mul r0, r1
	add r0, r4, r0
	pop {r4, pc}
_02261B10:
	add r1, r1, #1
	add r3, #0xe4
	cmp r1, r2
	blt _02261B02
_02261B18:
	bl sub_02022974
	mov r0, #0
	pop {r4, pc}
	; .align 2, 0
_02261B20: .word 0x00000125
	thumb_func_end ov70_02261AF0

	thumb_func_start ov70_02261B24
ov70_02261B24: ; 0x02261B24
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	str r0, [sp, #4]
	ldr r0, [sp, #0x30]
	add r7, r3, #0
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #0x10]
	str r0, [sp, #0xc]
_02261B3C:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [r7, #0]
	ldr r3, [sp, #0x30]
	bl ov70_02261420
	ldr r0, [sp, #0x14]
	cmp r0, #0xb
	beq _02261B5A
	cmp r0, #0xc
	beq _02261B5A
	ldr r0, [sp, #4]
	ldr r0, [r0, #0]
	bl ov66_02231668
_02261B5A:
	ldr r4, [sp, #0x10]
	ldr r5, [sp, #0xc]
	mov r6, #0
_02261B60:
	ldr r1, [r4, #0x48]
	ldr r0, [r7, #0]
	cmp r0, r1
	beq _02261B7E
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	ldr r3, [sp, #0x30]
	mov r2, #0
	bl sub_0200723C
	mov r1, #0x12
	lsl r1, r1, #4
	str r0, [r5, r1]
	b _02261B86
_02261B7E:
	mov r0, #0x12
	mov r1, #0
	lsl r0, r0, #4
	str r1, [r5, r0]
_02261B86:
	add r6, r6, #1
	add r4, r4, #4
	add r5, r5, #4
	cmp r6, #3
	blt _02261B60
	ldr r0, [sp, #4]
	add r7, r7, #4
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #0x10]
	add r0, #0xc
	str r0, [sp, #0x10]
	ldr r0, [sp, #0xc]
	add r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, #0x12
	blt _02261B3C
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end ov70_02261B24

	thumb_func_start ov70_02261BB4
ov70_02261BB4: ; 0x02261BB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, [sp]
	mov r7, #0x12
	str r0, [sp, #4]
	mov r6, #0
	lsl r7, r7, #4
_02261BC8:
	ldr r5, [sp]
	mov r4, #0
_02261BCC:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02261BDC
	bl sub_020181C4
	mov r0, #0x12
	lsl r0, r0, #4
	str r6, [r5, r0]
_02261BDC:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _02261BCC
	ldr r0, [sp, #4]
	bl ov70_0226146C
	ldr r0, [sp]
	add r0, #0xc
	str r0, [sp]
	ldr r0, [sp, #4]
	add r0, #0x10
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #0x12
	blt _02261BC8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261BB4

	thumb_func_start ov70_02261C04
ov70_02261C04: ; 0x02261C04
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldrh r0, [r4]
	cmp r0, #0
	beq _02261C5C
	ldrh r0, [r4, #2]
	add r1, r4, #4
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov70_0225C7A0
	cmp r0, #0
	beq _02261C5C
	add r0, r4, #0
	add r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261C3C
	ldrh r0, [r4, #2]
	add r1, r4, #0
	add r1, #0xe1
	lsl r0, r0, #4
	add r0, r5, r0
	ldrb r1, [r1]
	ldr r0, [r0, #8]
	bl sub_020B3764
_02261C3C:
	add r0, r4, #4
	bl sub_02017294
	add r0, r4, #0
	add r0, #0xe0
	ldrb r0, [r0]
	cmp r0, #1
	bne _02261C5C
	ldrh r0, [r4, #2]
	add r4, #0xe2
	ldrb r1, [r4]
	lsl r0, r0, #4
	add r0, r5, r0
	ldr r0, [r0, #8]
	bl sub_020B3764
_02261C5C:
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end ov70_02261C04

	thumb_func_start ov70_02261C60
ov70_02261C60: ; 0x02261C60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r4, r1, #0
	str r0, [sp]
	add r0, r4, #0
	str r0, [sp, #0xc]
	add r0, #0x7c
	add r7, r4, #0
	mov r5, #0
	str r0, [sp, #0xc]
	add r7, #0xc0
	add r6, r4, #0
	str r0, [sp, #8]
_02261C7A:
	add r0, r4, r5
	add r0, #0xb8
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261CE6
	add r0, r4, r5
	add r0, #0xbc
	ldrb r0, [r0]
	cmp r0, #6
	bhi _02261CE6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261C9A: ; jump table
	.short _02261CA8 - _02261C9A - 2 ; case 0
	.short _02261CC4 - _02261C9A - 2 ; case 1
	.short _02261DF4 - _02261C9A - 2 ; case 2
	.short _02261D0A - _02261C9A - 2 ; case 3
	.short _02261D26 - _02261C9A - 2 ; case 4
	.short _02261D6A - _02261C9A - 2 ; case 5
	.short _02261DC0 - _02261C9A - 2 ; case 6
_02261CA8:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_02261474
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	b _02261DF4
_02261CC4:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_02261498
	add r1, r6, #0
	add r1, #0xc0
	str r0, [sp, #0x14]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	ldr r0, [sp, #0x14]
	cmp r0, #1
	beq _02261CE8
_02261CE6:
	b _02261DF4
_02261CE8:
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	add r2, r5, #0
	bl ov70_02261220
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02261DF4
	ldr r0, [sp]
	ldr r2, [sp, #0x10]
	add r1, r4, #0
	blx r2
	b _02261DF4
_02261D0A:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_022614C0
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	b _02261DF4
_02261D26:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_022614DC
	add r1, r6, #0
	add r1, #0xc0
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	ldr r0, [sp, #0x18]
	cmp r0, #1
	bne _02261DF4
	add r0, r6, #0
	add r0, #0xd0
	ldr r0, [r0, #0]
	add r1, r4, #0
	str r0, [sp, #4]
	ldr r0, [sp]
	add r2, r5, #0
	bl ov70_02261220
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02261DF4
	ldr r0, [sp]
	ldr r2, [sp, #4]
	add r1, r4, #0
	blx r2
	b _02261DF4
_02261D6A:
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261D84
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	b _02261DF4
_02261D84:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_02261498
	cmp r0, #1
	bne _02261DB2
	bl sub_0201D35C
	add r1, r4, #0
	add r1, #0xcc
	ldrb r1, [r1]
	bl sub_020E2178
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	add r1, r6, #0
	add r1, #0xc0
	mov r0, #0
	str r0, [r1, #0]
_02261DB2:
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
	b _02261DF4
_02261DC0:
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	cmp r0, #0
	beq _02261DDA
	add r0, r4, r5
	add r0, #0xcd
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, r5
	add r0, #0xcd
	strb r1, [r0]
	b _02261DF4
_02261DDA:
	add r2, r4, #0
	add r2, #0xdc
	ldr r1, [sp, #0xc]
	ldr r2, [r2, #0]
	add r0, r7, #0
	bl ov70_02261474
	add r1, r6, #0
	add r1, #0xc0
	ldr r0, [sp, #8]
	ldr r1, [r1, #0]
	bl sub_02017240
_02261DF4:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	add r0, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r7, r7, #4
	add r0, #0x14
	add r6, r6, #4
	str r0, [sp, #8]
	cmp r5, #3
	bge _02261E0C
	b _02261C7A
_02261E0C:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov70_02261C60