	.include "macros/function.inc"
	.include "include/ov99_021D4134.inc"

	

	.text


	thumb_func_start ov99_021D4134
ov99_021D4134: ; 0x021D4134
	push {r4, r5, r6, r7}
	add r4, r0, #0
	mov r0, #0x38
	ldr r3, _021D4168 ; =0x021D5434
	mul r0, r1
	ldr r5, _021D416C ; =0x00000F6C
	mov r2, #0
	add r3, r3, r0
_021D4144:
	add r7, r3, #0
	ldmia r7!, {r0, r1}
	add r6, r4, r5
	stmia r6!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldmia r7!, {r0, r1}
	stmia r6!, {r0, r1}
	ldr r0, [r7, #0]
	add r2, r2, #1
	str r0, [r6, #0]
	add r3, #0x1c
	add r4, #0x1c
	cmp r2, #2
	blt _021D4144
	pop {r4, r5, r6, r7}
	bx lr
	nop
_021D4168: .word 0x021D5434
_021D416C: .word 0x00000F6C
	thumb_func_end ov99_021D4134

	thumb_func_start ov99_021D4170
ov99_021D4170: ; 0x021D4170
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #8]
	ldr r1, _021D424C ; =0x00001104
	ldr r0, [sp]
	ldrb r0, [r0, r1]
	cmp r0, #0
	ble _021D4248
	ldr r0, [sp]
	ldr r1, _021D4250 ; =0x00000F6C
	str r0, [sp, #4]
	add r5, r0, r1
	add r0, #0x6c
	str r0, [sp, #4]
_021D4190:
	mov r0, #0
	ldrsh r0, [r5, r0]
	cmp r0, #0x10
	ble _021D419C
	bl sub_02022974
_021D419C:
	mov r4, #0
	ldrsh r0, [r5, r4]
	cmp r0, #0
	ble _021D41F0
	ldr r6, [sp, #4]
_021D41A6:
	ldr r1, [r5, #8]
	ldr r3, [r5, #4]
	add r2, r1, #0
	mul r2, r4
	sub r1, r3, r2
	ldr r2, [r5, #0x10]
	ldr r7, [r5, #0xc]
	add r3, r2, #0
	mul r3, r4
	sub r2, r7, r3
	ldr r3, [r5, #0x14]
	add r0, r6, #0
	mov ip, r3
	ldr r3, [r5, #0x18]
	add r7, r3, #0
	mul r7, r4
	mov r3, ip
	sub r3, r3, r7
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r6, #0
	mov r1, #1
	bl sub_02017348
	mov r0, #0
	ldrsh r0, [r5, r0]
	add r4, r4, #1
	add r6, #0x78
	cmp r4, r0
	blt _021D41A6
_021D41F0:
	cmp r4, #0x10
	bge _021D422A
	mov r0, #0x78
	add r1, r4, #0
	mul r1, r0
	ldr r0, [sp, #4]
	mov r7, #0
	add r6, r0, r1
_021D4200:
	ldr r2, _021D4254 ; =0xFFFC0000
	ldr r3, _021D4258 ; =0xFFFCE000
	add r0, r6, #0
	add r1, r7, #0
	bl sub_02017350
	mov r1, #1
	lsl r1, r1, #0xc
	add r0, r6, #0
	add r2, r1, #0
	add r3, r1, #0
	bl sub_0201736C
	add r0, r6, #0
	mov r1, #0
	bl sub_02017348
	add r4, r4, #1
	add r6, #0x78
	cmp r4, #0x10
	blt _021D4200
_021D422A:
	mov r1, #0x1e
	ldr r0, [sp, #4]
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, _021D424C ; =0x00001104
	add r0, r0, #1
	str r0, [sp, #8]
	ldr r0, [sp]
	add r5, #0x1c
	ldrb r1, [r0, r1]
	ldr r0, [sp, #8]
	cmp r0, r1
	blt _021D4190
_021D4248:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_021D424C: .word 0x00001104
_021D4250: .word 0x00000F6C
_021D4254: .word 0xFFFC0000
_021D4258: .word 0xFFFCE000
	thumb_func_end ov99_021D4170

	thumb_func_start ov99_021D425C
ov99_021D425C: ; 0x021D425C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r1, [sp, #4]
	ldr r1, _021D4394 ; =0x00001104
	str r0, [sp]
	ldrb r0, [r0, r1]
	mov r7, #0
	str r7, [sp, #0x18]
	cmp r0, #0
	bgt _021D4272
	b _021D438C
_021D4272:
	ldr r0, [sp]
	ldr r1, _021D4398 ; =0x00000F6C
	str r0, [sp, #0x10]
	add r4, r0, r1
	add r0, #0x6c
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	lsl r1, r0, #4
	ldr r0, [sp]
	add r0, r0, r1
	str r0, [sp, #0xc]
_021D4288:
	mov r0, #0
	ldrsh r5, [r4, r0]
	mov r0, #2
	ldrsh r6, [r4, r0]
	ldr r1, [r4, #8]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, [r4, #0x10]
	str r0, [sp, #0x24]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	ldr r1, [r4, #0x18]
	str r0, [sp, #0x20]
	add r0, r1, #0
	mul r0, r5
	add r1, r6, #0
	bl sub_020E1F6C
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x14]
	cmp r5, #0
	ble _021D436C
	ldr r0, [sp, #0x10]
	str r0, [sp, #8]
	add r5, r0, #0
_021D42C8:
	ldr r0, [sp, #8]
	add r1, sp, #0x30
	add r2, sp, #0x2c
	add r3, sp, #0x28
	bl sub_02017358
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #0x24]
	add r1, r1, r0
	ldr r0, [r4, #4]
	cmp r1, r0
	blt _021D433A
	mov r0, #0
	ldrsh r7, [r4, r0]
	ldr r2, [r4, #8]
	add r0, r5, #0
	add r3, r2, #0
	mul r3, r7
	sub r1, r1, r3
	ldr r3, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	add r6, r3, r2
	ldr r2, [r4, #0x10]
	add r3, r2, #0
	mul r3, r7
	sub r2, r6, r3
	ldr r6, [sp, #0x28]
	ldr r3, [sp, #0x1c]
	add r3, r6, r3
	mov ip, r3
	ldr r3, [r4, #0x18]
	add r6, r3, #0
	mul r6, r7
	mov r3, ip
	sub r3, r3, r6
	bl sub_02017350
	mov r0, #0
	ldr r1, [sp, #4]
	mvn r0, r0
	cmp r1, r0
	beq _021D4336
	ldr r0, [sp, #0x18]
	cmp r0, #0
	bne _021D4336
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x54
	bl sub_020C4CF4
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	ldr r1, [r1, #0x34]
	bl sub_020AE608
_021D4336:
	mov r7, #1
	b _021D434C
_021D433A:
	ldr r3, [sp, #0x2c]
	ldr r2, [sp, #0x20]
	ldr r6, [sp, #0x28]
	add r2, r3, r2
	ldr r3, [sp, #0x1c]
	add r0, r5, #0
	add r3, r6, r3
	bl sub_02017350
_021D434C:
	add r0, r5, #0
	mov r1, #1
	bl sub_02017348
	ldr r0, [sp, #8]
	add r5, #0x78
	add r0, #0x78
	str r0, [sp, #8]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [sp, #0x14]
	cmp r0, r1
	blt _021D42C8
_021D436C:
	mov r1, #0x1e
	ldr r0, [sp, #0x10]
	lsl r1, r1, #6
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldr r1, _021D4394 ; =0x00001104
	add r0, r0, #1
	str r0, [sp, #0x18]
	ldr r0, [sp]
	add r4, #0x1c
	ldrb r1, [r0, r1]
	ldr r0, [sp, #0x18]
	cmp r0, r1
	bge _021D438C
	b _021D4288
_021D438C:
	add r0, r7, #0
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_021D4394: .word 0x00001104
_021D4398: .word 0x00000F6C
	thumb_func_end ov99_021D425C

	thumb_func_start ov99_021D439C
ov99_021D439C: ; 0x021D439C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r5, r0, #0
	ldr r0, [r5, #8]
	add r6, r1, #0
	add r7, r2, #0
	str r0, [sp, #0x10]
	cmp r3, #0
	beq _021D43B4
	cmp r3, #1
	beq _021D43D4
	b _021D43F2
_021D43B4:
	cmp r6, #0xa
	blo _021D43BC
	bl sub_02022974
_021D43BC:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D43CC
	ldr r1, _021D44B8 ; =0x021D5394
	lsl r0, r6, #4
	add r4, r1, r0
	b _021D43F2
_021D43CC:
	ldr r1, _021D44BC ; =0x021D52F4
	lsl r0, r6, #4
	add r4, r1, r0
	b _021D43F2
_021D43D4:
	cmp r6, #0xa
	blo _021D43DC
	bl sub_02022974
_021D43DC:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D43EC
	ldr r1, _021D44C0 ; =0x021D5274
	lsl r0, r6, #4
	add r4, r1, r0
	b _021D43F2
_021D43EC:
	ldr r1, _021D44C4 ; =0x021D52B4
	lsl r0, r6, #4
	add r4, r1, r0
_021D43F2:
	ldr r0, _021D44C8 ; =0x000010F8
	ldrh r1, [r4, #4]
	ldr r0, [r5, r0]
	add r2, sp, #0x14
	mov r3, #0x4b
	bl sub_020071EC
	ldr r1, [sp, #0x14]
	add r6, r0, #0
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #8]
	bl sub_020C2C54
	bl sub_020C096C
	cmp r7, #3
	bne _021D4426
	ldr r0, [sp, #0x14]
	mov r1, #6
	mov r2, #2
	ldr r0, [r0, #0xc]
	lsl r1, r1, #0xc
	lsl r2, r2, #0xc
	bl sub_020C0A0C
	b _021D4434
_021D4426:
	ldr r0, [sp, #0x14]
	mov r1, #1
	lsl r1, r1, #0xe
	ldr r0, [r0, #0xc]
	lsr r2, r1, #1
	bl sub_020C0A0C
_021D4434:
	bl sub_020C0A7C
	add r0, r6, #0
	bl sub_020181C4
	mov r1, #0
	str r1, [sp]
	mov r0, #1
	str r0, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r2, #2
	add r3, r1, #0
	bl sub_020038B0
	mov r3, #0
	str r3, [sp]
	mov r1, #1
	str r1, [sp, #4]
	ldr r0, [r5, #0xc]
	mov r2, #2
	bl sub_020038B0
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D44C8 ; =0x000010F8
	ldrh r1, [r4]
	ldr r0, [r5, r0]
	ldr r2, [r5, #8]
	add r3, r7, #0
	bl sub_020070E8
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x4b
	str r0, [sp, #0xc]
	ldr r0, _021D44C8 ; =0x000010F8
	ldrh r1, [r4, #2]
	ldr r0, [r5, r0]
	ldr r2, [r5, #8]
	add r3, r7, #0
	bl sub_0200710C
	mov r3, #6
	lsl r1, r7, #0x18
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x18
	mov r2, #0
	bl sub_02019184
	mov r3, #8
	lsl r1, r7, #0x18
	ldrsh r3, [r4, r3]
	ldr r0, [sp, #0x10]
	lsr r1, r1, #0x18
	mov r2, #3
	bl sub_02019184
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D44B8: .word 0x021D5394
_021D44BC: .word 0x021D52F4
_021D44C0: .word 0x021D5274
_021D44C4: .word 0x021D52B4
_021D44C8: .word 0x000010F8
	thumb_func_end ov99_021D439C

	thumb_func_start ov99_021D44CC
ov99_021D44CC: ; 0x021D44CC
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _021D46BC ; =0x000010F4
	add r5, r0, #0
	ldr r0, [r5, r1]
	cmp r0, #0
	bne _021D44DC
	b _021D46B8
_021D44DC:
	add r0, r1, #0
	add r0, #0x24
	ldrsh r2, [r5, r0]
	mov r0, #0
	mvn r0, r0
	cmp r2, r0
	beq _021D44EC
	b _021D466C
_021D44EC:
	add r0, r1, #0
	add r0, #0x20
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _021D4504
	add r0, r1, #0
	add r0, #0x20
	ldrsh r0, [r5, r0]
	add r1, #0x20
	sub r0, r0, #1
	strh r0, [r5, r1]
	b _021D466C
_021D4504:
	ldr r0, [r6, #0]
	bl sub_02021F98
	add r4, r0, #0
	ldr r0, [r5, #0]
	ldr r1, _021D46BC ; =0x000010F4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _021D4590
	ldr r0, [r5, r1]
	add r1, #0x22
	ldrsh r1, [r5, r1]
	mov r7, #0x19
	lsl r7, r7, #0x16
	lsl r1, r1, #7
	add r0, r0, r1
	mov r1, #0x3a
	lsl r1, r1, #4
	add r2, r7, r1
	ldr r1, [r4, #4]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B68
	ldr r1, _021D46BC ; =0x000010F4
	ldr r0, [r5, r1]
	add r1, #0x22
	ldrsh r1, [r5, r1]
	lsl r1, r1, #7
	add r1, #0x20
	add r0, r0, r1
	mov r1, #0xf
	lsl r1, r1, #6
	add r2, r7, r1
	ldr r1, [r4, #4]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B68
	ldr r1, _021D46BC ; =0x000010F4
	ldr r0, [r5, r1]
	add r1, #0x22
	ldrsh r1, [r5, r1]
	lsl r1, r1, #7
	add r1, #0x40
	add r0, r0, r1
	mov r1, #0x4a
	lsl r1, r1, #4
	add r2, r7, r1
	ldr r1, [r4, #4]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B68
	ldr r1, _021D46BC ; =0x000010F4
	ldr r0, [r5, r1]
	add r1, #0x22
	ldrsh r1, [r5, r1]
	lsl r1, r1, #7
	add r1, #0x60
	add r0, r0, r1
	mov r1, #0x13
	lsl r1, r1, #6
	add r2, r7, r1
	ldr r1, [r4, #4]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B68
	b _021D4608
_021D4590:
	ldr r0, [r5, r1]
	add r1, #0x22
	ldrsh r1, [r5, r1]
	mov r7, #0x19
	lsl r7, r7, #0x16
	lsl r1, r1, #7
	add r0, r0, r1
	mov r1, #0x8a
	lsl r1, r1, #4
	add r2, r7, r1
	ldr r1, [r4, #4]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B68
	ldr r1, _021D46BC ; =0x000010F4
	ldr r0, [r5, r1]
	add r1, #0x22
	ldrsh r1, [r5, r1]
	lsl r1, r1, #7
	add r1, #0x20
	add r0, r0, r1
	mov r1, #0x23
	lsl r1, r1, #6
	add r2, r7, r1
	ldr r1, [r4, #4]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B68
	ldr r1, _021D46BC ; =0x000010F4
	ldr r0, [r5, r1]
	add r1, #0x22
	ldrsh r1, [r5, r1]
	lsl r1, r1, #7
	add r1, #0x40
	add r0, r0, r1
	mov r1, #0x9a
	lsl r1, r1, #4
	add r2, r7, r1
	ldr r1, [r4, #4]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B68
	ldr r1, _021D46BC ; =0x000010F4
	ldr r0, [r5, r1]
	add r1, #0x22
	ldrsh r1, [r5, r1]
	lsl r1, r1, #7
	add r1, #0x60
	add r0, r0, r1
	mov r1, #0x27
	lsl r1, r1, #6
	add r2, r7, r1
	ldr r1, [r4, #4]
	add r1, r2, r1
	mov r2, #0x20
	bl sub_020C4B68
_021D4608:
	ldr r0, _021D46C0 ; =0x00001116
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bne _021D465C
	add r0, r0, #4
	ldrsh r0, [r5, r0]
	mov r1, #3
	bl sub_020E1F6C
	cmp r1, #0
	bne _021D464A
	bl sub_0201D2E8
	mov r1, #1
	tst r0, r1
	beq _021D4642
	bl sub_0201D2E8
	mov r1, #0xa
	bl sub_020E1F6C
	ldr r0, _021D46C4 ; =0x00001114
	strh r1, [r5, r0]
	add r1, r0, #6
	ldrsh r1, [r5, r1]
	add r0, r0, #6
	add r1, r1, #1
	strh r1, [r5, r0]
	b _021D4662
_021D4642:
	ldr r0, _021D46C4 ; =0x00001114
	mov r1, #0x28
	strh r1, [r5, r0]
	b _021D4662
_021D464A:
	ldr r0, _021D46C4 ; =0x00001114
	mov r1, #0x28
	strh r1, [r5, r0]
	add r1, r0, #6
	ldrsh r1, [r5, r1]
	add r0, r0, #6
	add r1, r1, #1
	strh r1, [r5, r0]
	b _021D4662
_021D465C:
	mov r1, #1
	sub r0, r0, #2
	strh r1, [r5, r0]
_021D4662:
	ldr r1, _021D46C0 ; =0x00001116
	mov r0, #1
	ldrsh r2, [r5, r1]
	eor r0, r2
	strh r0, [r5, r1]
_021D466C:
	add r0, r6, #0
	bl sub_0200D3B8
	cmp r0, #0
	bne _021D46B8
	ldr r0, _021D46C8 ; =0x00001118
	mov r1, #0
	ldrsh r2, [r5, r0]
	mvn r1, r1
	cmp r2, r1
	beq _021D46AE
	add r1, r2, #1
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0x10
	ble _021D46A4
	bl sub_0201D2E8
	mov r1, #5
	bl sub_020E1F6C
	cmp r1, #0
	bne _021D46A4
	mov r1, #1
	ldr r0, _021D46C8 ; =0x00001118
	sub r2, r1, #2
	strh r2, [r5, r0]
	b _021D46A6
_021D46A4:
	mov r1, #0
_021D46A6:
	add r0, r6, #0
	bl sub_0200D364
	pop {r3, r4, r5, r6, r7, pc}
_021D46AE:
	mov r1, #0
	strh r1, [r5, r0]
	add r0, r6, #0
	bl sub_0200D364
_021D46B8:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021D46BC: .word 0x000010F4
_021D46C0: .word 0x00001116
_021D46C4: .word 0x00001114
_021D46C8: .word 0x00001118
	thumb_func_end ov99_021D44CC

	.rodata


	.global Unk_ov99_021D5274
Unk_ov99_021D5274: ; 0x021D5274
	.incbin "incbin/overlay99_rodata.bin", 0xBA8, 0xBE8 - 0xBA8

	.global Unk_ov99_021D52B4
Unk_ov99_021D52B4: ; 0x021D52B4
	.incbin "incbin/overlay99_rodata.bin", 0xBE8, 0xC28 - 0xBE8

	.global Unk_ov99_021D52F4
Unk_ov99_021D52F4: ; 0x021D52F4
	.incbin "incbin/overlay99_rodata.bin", 0xC28, 0xCC8 - 0xC28

	.global Unk_ov99_021D5394
Unk_ov99_021D5394: ; 0x021D5394
	.incbin "incbin/overlay99_rodata.bin", 0xCC8, 0xD68 - 0xCC8

	.global Unk_ov99_021D5434
Unk_ov99_021D5434: ; 0x021D5434
	.incbin "incbin/overlay99_rodata.bin", 0xD68, 0xA8

