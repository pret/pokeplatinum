	.include "macros/function.inc"
	.include "include/unk_0207A2A8.inc"

	

	.text


	thumb_func_start sub_0207A2A8
sub_0207A2A8: ; 0x0207A2A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_02098700
	mov r1, #0
	add r2, r5, #0
	add r4, r0, #0
	bl sub_0209872C
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0207A2A8

	thumb_func_start sub_0207A2C0
sub_0207A2C0: ; 0x0207A2C0
	push {r4, lr}
	add r4, r0, #0
	bl sub_020987BC
	add r0, r4, #0
	bl sub_02098718
	pop {r4, pc}
	thumb_func_end sub_0207A2C0

	thumb_func_start sub_0207A2D0
sub_0207A2D0: ; 0x0207A2D0
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r4, r0, #0
	str r2, [sp]
	add r0, r6, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	lsl r0, r0, #0x10
	lsr r7, r0, #0x10
	cmp r4, #0
	bne _0207A2EE
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207A2EE:
	add r0, r4, #0
	mov r1, #2
	bl sub_02026074
	add r5, r0, #0
	add r0, r6, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	cmp r0, r5
	bls _0207A30A
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A30A:
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl sub_02074470
	cmp r0, #0
	beq _0207A31C
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A31C:
	add r0, r4, #0
	mov r1, #4
	bl sub_02026074
	cmp r0, #0
	bne _0207A336
	add r0, r7, #0
	bl sub_02076FD4
	cmp r7, r0
	beq _0207A336
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A336:
	add r0, r4, #0
	mov r1, #5
	bl sub_02026074
	add r5, r0, #0
	beq _0207A360
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02098808
	cmp r5, #0
	ble _0207A356
	cmp r0, r5
	bge _0207A360
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A356:
	neg r1, r5
	cmp r0, r1
	ble _0207A360
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A360:
	add r0, r4, #0
	mov r1, #7
	bl sub_02026074
	mov r1, #0xa
	add r5, r0, #0
	mul r5, r1
	beq _0207A38E
	ldr r0, [sp]
	add r1, r7, #0
	bl sub_02098828
	cmp r5, #0
	ble _0207A384
	cmp r0, r5
	bge _0207A38E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A384:
	neg r1, r5
	cmp r0, r1
	ble _0207A38E
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A38E:
	add r0, r4, #0
	mov r1, #0xb
	bl sub_02026074
	cmp r0, #0
	bne _0207A3A8
	add r0, r6, #0
	bl sub_02078838
	cmp r0, #0
	beq _0207A3A8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0207A3A8:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0207A2D0

	thumb_func_start sub_0207A3AC
sub_0207A3AC: ; 0x0207A3AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	cmp r0, #0
	bne _0207A3CA
	ldr r0, [sp, #0x14]
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
_0207A3CA:
	ldr r1, [sp, #0x14]
	add r2, sp, #0x24
	add r3, sp, #0x18
	mov r0, #0
_0207A3D2:
	ldr r4, [sp, #0xc]
	strh r0, [r2]
	strh r0, [r3]
	ldrb r4, [r4, r1]
	cmp r4, #0
	beq _0207A3E4
	ldr r4, [sp, #0x14]
	add r4, r4, #1
	str r4, [sp, #0x14]
_0207A3E4:
	add r1, r1, #1
	add r2, r2, #2
	add r3, r3, #2
	cmp r1, #6
	blt _0207A3D2
	ldr r0, [sp]
	mov r1, #1
	bl sub_02026074
	ldr r1, [sp, #0x14]
	cmp r1, r0
	beq _0207A402
	add sp, #0x30
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_0207A402:
	mov r5, #0
	add r7, sp, #0x24
	add r6, sp, #0x18
_0207A408:
	ldr r0, [sp, #0xc]
	ldrb r1, [r0, r5]
	cmp r1, #0
	beq _0207A456
	ldr r0, [sp, #4]
	sub r1, r1, #1
	bl sub_0207A0FC
	add r4, r0, #0
	ldr r0, [sp]
	ldr r2, [sp, #8]
	add r1, r4, #0
	bl sub_0207A2D0
	cmp r0, #0
	bne _0207A42E
	add sp, #0x30
	mov r0, #5
	pop {r3, r4, r5, r6, r7, pc}
_0207A42E:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r7]
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl sub_02074470
	strh r0, [r6]
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	ldr r1, [sp, #0x10]
	add r0, r1, r0
	str r0, [sp, #0x10]
_0207A456:
	add r5, r5, #1
	add r7, r7, #2
	add r6, r6, #2
	cmp r5, #6
	blt _0207A408
	ldr r0, [sp]
	mov r1, #3
	bl sub_02026074
	ldr r1, [sp, #0x10]
	cmp r1, r0
	ble _0207A478
	cmp r0, #0
	beq _0207A478
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0207A478:
	ldr r0, [sp]
	mov r1, #0xa
	bl sub_02026074
	cmp r0, #0
	bne _0207A4BC
	ldr r0, [sp, #0x14]
	cmp r0, #1
	ble _0207A4BC
	add r4, sp, #0x24
	mov r0, #0
	add r2, r4, #0
_0207A490:
	add r3, r0, #1
	cmp r3, #6
	bge _0207A4B4
	ldrh r6, [r4]
	lsl r1, r3, #1
	add r5, r2, r1
_0207A49C:
	ldrh r1, [r5]
	cmp r6, r1
	bne _0207A4AC
	cmp r6, #0
	beq _0207A4AC
	add sp, #0x30
	mov r0, #2
	pop {r3, r4, r5, r6, r7, pc}
_0207A4AC:
	add r3, r3, #1
	add r5, r5, #2
	cmp r3, #6
	blt _0207A49C
_0207A4B4:
	add r0, r0, #1
	add r4, r4, #2
	cmp r0, #5
	blt _0207A490
_0207A4BC:
	ldr r0, [sp]
	mov r1, #9
	bl sub_02026074
	cmp r0, #0
	bne _0207A50C
	ldr r0, [sp, #0x14]
	cmp r0, #1
	ble _0207A50C
	add r2, sp, #0x18
	mov r5, #0
	add r7, sp, #0x24
	mov ip, r2
_0207A4D6:
	add r6, r5, #1
	cmp r6, #6
	bge _0207A502
	lsl r1, r6, #1
	mov r0, ip
	add r3, r0, r1
	ldrh r4, [r2]
	ldrh r0, [r7]
_0207A4E6:
	ldrh r1, [r3]
	cmp r4, r1
	bne _0207A4FA
	cmp r0, #0
	beq _0207A4FA
	cmp r4, #0
	beq _0207A4FA
	add sp, #0x30
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_0207A4FA:
	add r6, r6, #1
	add r3, r3, #2
	cmp r6, #6
	blt _0207A4E6
_0207A502:
	add r5, r5, #1
	add r2, r2, #2
	add r7, r7, #2
	cmp r5, #5
	blt _0207A4D6
_0207A50C:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207A3AC

	thumb_func_start sub_0207A514
sub_0207A514: ; 0x0207A514
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x30]
	str r1, [sp, #0x10]
	lsl r0, r0, #1
	ldr r1, [sp, #0xc]
	str r0, [sp, #0x18]
	ldrh r0, [r1, r0]
	add r6, r2, #0
	str r3, [sp, #0x14]
	ldr r5, [sp, #0x38]
	ldr r7, [sp, #0x34]
	cmp r0, #0
	beq _0207A55E
	ldr r0, [sp, #0x18]
	ldrh r0, [r6, r0]
	cmp r0, #0
	bne _0207A55E
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x18]
	ldrh r1, [r1, r0]
	add r0, r3, #0
	sub r0, r0, r1
	str r0, [sp, #0x14]
	bpl _0207A54E
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207A54E:
	sub r7, r7, #1
	bne _0207A558
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207A558:
	ldr r0, [sp, #0x18]
	mov r1, #1
	strh r1, [r6, r0]
_0207A55E:
	ldr r0, [sp, #0x30]
	add r4, r0, #1
	cmp r4, r5
	bge _0207A588
_0207A566:
	str r4, [sp]
	str r7, [sp, #4]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	ldr r3, [sp, #0x14]
	add r2, r6, #0
	str r5, [sp, #8]
	bl sub_0207A514
	cmp r0, #0
	beq _0207A582
	add sp, #0x1c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0207A582:
	add r4, r4, #1
	cmp r4, r5
	blt _0207A566
_0207A588:
	ldr r1, [sp, #0x18]
	mov r0, #0
	strh r0, [r6, r1]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207A514

	thumb_func_start sub_0207A594
sub_0207A594: ; 0x0207A594
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	str r0, [sp, #0xc]
	add r0, r1, #0
	str r1, [sp, #0x10]
	str r2, [sp, #0x14]
	bl sub_0207A0F8
	str r0, [sp, #0x20]
	add r6, r0, #0
	add r0, sp, #0x30
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	ldr r0, [sp, #0x20]
	mov r7, #0
	cmp r0, #0
	ble _0207A5FE
	add r4, sp, #0x48
	add r5, sp, #0x3c
_0207A5BE:
	ldr r0, [sp, #0x10]
	add r1, r7, #0
	bl sub_0207A0FC
	str r0, [sp, #0x24]
	mov r1, #5
	mov r2, #0
	bl sub_02074470
	strh r0, [r4]
	ldr r0, [sp, #0x24]
	mov r1, #0xa1
	mov r2, #0
	bl sub_02074470
	strh r0, [r5]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x14]
	bl sub_0207A2D0
	cmp r0, #0
	bne _0207A5F2
	mov r0, #0
	strh r0, [r4]
	sub r6, r6, #1
_0207A5F2:
	ldr r0, [sp, #0x20]
	add r7, r7, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r7, r0
	blt _0207A5BE
_0207A5FE:
	ldr r0, [sp, #0xc]
	mov r1, #0xa
	bl sub_02026074
	cmp r0, #0
	bne _0207A67E
	ldr r0, [sp, #0x20]
	cmp r0, #1
	ble _0207A67E
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #0
	ble _0207A67E
	add r0, sp, #0x3c
	add r3, sp, #0x48
	str r0, [sp, #0x1c]
	str r3, [sp, #0x2c]
	mov ip, r0
_0207A628:
	ldr r0, [sp, #0x18]
	add r2, r0, #1
	ldr r0, [sp, #0x20]
	cmp r2, r0
	bge _0207A66A
	ldr r1, [sp, #0x2c]
	lsl r0, r2, #1
	add r4, r1, r0
	mov r1, ip
	add r5, r1, r0
	ldr r0, [sp, #0x1c]
	ldrh r7, [r0]
_0207A640:
	ldrh r1, [r3]
	ldrh r0, [r4]
	cmp r1, r0
	bne _0207A65E
	cmp r1, #0
	beq _0207A65E
	ldrh r0, [r5]
	cmp r7, r0
	bls _0207A658
	mov r0, #0
	strh r0, [r3]
	b _0207A65C
_0207A658:
	mov r0, #0
	strh r0, [r4]
_0207A65C:
	sub r6, r6, #1
_0207A65E:
	ldr r0, [sp, #0x20]
	add r2, r2, #1
	add r4, r4, #2
	add r5, r5, #2
	cmp r2, r0
	blt _0207A640
_0207A66A:
	ldr r0, [sp, #0x1c]
	add r3, r3, #2
	add r0, r0, #2
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x18]
	add r1, r0, #1
	ldr r0, [sp, #0x28]
	str r1, [sp, #0x18]
	cmp r1, r0
	blt _0207A628
_0207A67E:
	ldr r0, [sp, #0xc]
	mov r1, #1
	bl sub_02026074
	add r7, r0, #0
	cmp r6, r7
	bge _0207A692
	add sp, #0x54
	mov r0, #4
	pop {r4, r5, r6, r7, pc}
_0207A692:
	ldr r0, [sp, #0xc]
	mov r1, #3
	bl sub_02026074
	add r5, r0, #0
	bne _0207A6A4
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207A6A4:
	ldr r0, [sp, #0x20]
	mov r4, #0
	cmp r0, #0
	ble _0207A6D4
	add r6, sp, #0x48
_0207A6AE:
	str r4, [sp]
	ldr r0, [sp, #0x20]
	str r7, [sp, #4]
	str r0, [sp, #8]
	add r0, r6, #0
	add r1, sp, #0x3c
	add r2, sp, #0x30
	add r3, r5, #0
	bl sub_0207A514
	cmp r0, #0
	beq _0207A6CC
	add sp, #0x54
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0207A6CC:
	ldr r0, [sp, #0x20]
	add r4, r4, #1
	cmp r4, r0
	blt _0207A6AE
_0207A6D4:
	mov r0, #1
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0207A594