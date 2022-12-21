	.include "macros/function.inc"
	.include "include/unk_020C7D68.inc"

	

	.text


	arm_func_start sub_020C7D68
sub_020C7D68: ; 0x020C7D68
	stmfd sp!, {r3, lr}
	ldr r1, _020C7D8C ; =0x021CEC18
	ldr r2, [r1, #0]
	cmp r2, #0
	ldmneia sp!, {r3, pc}
	mov r2, #1
	str r2, [r1, #0]
	bl sub_020C8398
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C7D8C: .word 0x021CEC18
	arm_func_end sub_020C7D68

	arm_func_start sub_020C7D90
sub_020C7D90: ; 0x020C7D90
	ldr r0, _020C7D9C ; =0x021CEC18
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020C7D9C: .word 0x021CEC18
	arm_func_end sub_020C7D90

	arm_func_start sub_020C7DA0
sub_020C7DA0: ; 0x020C7DA0
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r0, #4]
	str r2, [r0, #0x1c]
	str r2, [r0, #0x18]
	str r2, [r0, #8]
	mov r1, #0xe
	str r1, [r0, #0x10]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end sub_020C7DA0

	arm_func_start sub_020C7DC8
sub_020C7DC8: ; 0x020C7DC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r7, r1
	ldrb r1, [r7]
	mov r8, r0
	mov r6, r2
	cmp r1, #0x2f
	mov r5, r3
	cmpne r1, #0x5c
	bne _020C7E14
	ldr r0, _020C7F08 ; =0x021CEC0C
	mov r1, #0
	ldr r0, [r0, #0]
	strh r1, [sp, #4]
	str r0, [sp]
	str r1, [sp, #8]
	strh r1, [sp, #6]
	add r7, r7, #1
	b _020C7EB8
_020C7E14:
	ldr r0, _020C7F08 ; =0x021CEC0C
	add r3, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r4, #0
_020C7E28:
	ldrb r0, [r7, r4]
	cmp r0, #0
	cmpne r0, #0x2f
	cmpne r0, #0x5c
	beq _020C7EB8
	cmp r0, #0x3a
	bne _020C7EAC
	mov r0, r7
	mov r1, r4
	bl sub_020C7760
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r0, #0x1c]
	tst r1, #2
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r1, #0
	str r0, [sp]
	str r1, [sp, #8]
	strh r1, [sp, #6]
	strh r1, [sp, #4]
	add r0, r4, #1
	ldrb r0, [r7, r0]!
	cmp r0, #0x2f
	cmpne r0, #0x5c
	addeq r7, r7, #1
	b _020C7EB8
_020C7EAC:
	add r4, r4, #1
	cmp r4, #3
	ble _020C7E28
_020C7EB8:
	ldr r1, [sp]
	add r0, sp, #0
	str r1, [r8, #8]
	str r7, [r8, #0x3c]
	add r3, r8, #0x30
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	cmp r5, #0
	moveq r0, #0
	streq r0, [r8, #0x40]
	streq r6, [r8, #0x44]
	beq _020C7EF4
	mov r0, #1
	str r0, [r8, #0x40]
	str r5, [r8, #0x44]
_020C7EF4:
	mov r0, r8
	mov r1, #4
	bl sub_020C7590
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C7F08: .word 0x021CEC0C
	arm_func_end sub_020C7DC8

	arm_func_start sub_020C7F0C
sub_020C7F0C: ; 0x020C7F0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r4, [r7, #0x2c]
	ldr r0, [r7, #0x28]
	mov r6, r2
	str r1, [r7, #0x30]
	sub r0, r0, r4
	cmp r6, r0
	movgt r6, r0
	cmp r6, #0
	movlt r6, #0
	str r2, [r7, #0x34]
	mov r5, r3
	str r6, [r7, #0x38]
	cmp r5, #0
	ldreq r0, [r7, #0xc]
	mov r1, #0
	orreq r0, r0, #4
	streq r0, [r7, #0xc]
	mov r0, r7
	bl sub_020C7590
	cmp r5, #0
	bne _020C7F80
	mov r0, r7
	bl sub_020C8104
	cmp r0, #0
	ldrne r0, [r7, #0x2c]
	subne r6, r0, r4
	mvneq r6, #0
_020C7F80:
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C7F0C

	arm_func_start sub_020C7F88
sub_020C7F88: ; 0x020C7F88
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	bl sub_020C7DA0
	add r0, sp, #0
	mov r1, r4
	mov r2, r5
	mov r3, #0
	bl sub_020C7DC8
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C7F88

	arm_func_start sub_020C7FC8
sub_020C7FC8: ; 0x020C7FC8
	stmfd sp!, {r4, lr}
	mov r4, r0
	str r1, [r4, #8]
	ldr ip, [sp, #8]
	mov r1, #7
	str ip, [r4, #0x38]
	str r2, [r4, #0x30]
	str r3, [r4, #0x34]
	bl sub_020C7590
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0xc]
	mov r0, #1
	orr r1, r1, #0x10
	bic r1, r1, #0x20
	str r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C7FC8

	arm_func_start sub_020C8010
sub_020C8010: ; 0x020C8010
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	ldr r1, [sp, #0xc]
	mov r4, r0
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	str r1, [r4, #8]
	str r1, [r4, #0x30]
	ldr r2, [sp, #0x10]
	mov r1, #6
	str r2, [r4, #0x34]
	bl sub_020C7590
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [r4, #0xc]
	mov r0, #1
	orr r1, r1, #0x10
	bic r1, r1, #0x20
	str r1, [r4, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020C8010

	arm_func_start sub_020C8080
sub_020C8080: ; 0x020C8080
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	mov r4, r0
	add r0, sp, #0
	bl sub_020C7F88
	cmp r0, #0
	beq _020C80BC
	add r1, sp, #0
	mov r0, r4
	ldmia r1, {r1, r2}
	bl sub_020C8010
	cmp r0, #0
	addne sp, sp, #8
	movne r0, #1
	ldmneia sp!, {r4, pc}
_020C80BC:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C8080

	arm_func_start sub_020C80C8
sub_020C80C8: ; 0x020C80C8
	stmfd sp!, {r4, lr}
	mov r1, #8
	mov r4, r0
	bl sub_020C7590
	cmp r0, #0
	mov r0, #0
	ldmeqia sp!, {r4, pc}
	str r0, [r4, #8]
	mov r0, #0xe
	str r0, [r4, #0x10]
	ldr r1, [r4, #0xc]
	mov r0, #1
	bic r1, r1, #0x30
	str r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C80C8

	arm_func_start sub_020C8104
sub_020C8104: ; 0x020C8104
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	mov r5, #0
	bl sub_020C3D98
	ldr r1, [r6, #0xc]
	mov r4, r0
	tst r1, #1
	movne r0, #1
	moveq r0, r5
	cmp r0, #0
	beq _020C8194
	ldr r0, [r6, #0xc]
	tst r0, #0x44
	moveq r5, #1
	movne r5, #0
	cmp r5, #0
	beq _020C816C
	ldr r0, [r6, #0xc]
	orr r0, r0, #4
	str r0, [r6, #0xc]
_020C8154:
	add r0, r6, #0x18
	bl sub_020C2218
	ldr r0, [r6, #0xc]
	tst r0, #0x40
	beq _020C8154
	b _020C8194
_020C816C:
	mov r7, #0
	mov r8, #1
_020C8174:
	add r0, r6, #0x18
	bl sub_020C2218
	ldr r0, [r6, #0xc]
	tst r0, #1
	movne r0, r8
	moveq r0, r7
	cmp r0, #0
	bne _020C8174
_020C8194:
	mov r0, r4
	bl sub_020C3DAC
	cmp r5, #0
	beq _020C81B0
	mov r0, r6
	bl sub_020C754C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C81B0:
	ldr r0, [r6, #0x14]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C8104

	arm_func_start sub_020C81C4
sub_020C81C4: ; 0x020C81C4
	ldr ip, _020C81D0 ; =sub_020C7F0C
	mov r3, #1
	bx ip
	; .align 2, 0
_020C81D0: .word sub_020C7F0C
	arm_func_end sub_020C81C4

	arm_func_start sub_020C81D4
sub_020C81D4: ; 0x020C81D4
	ldr ip, _020C81E0 ; =sub_020C7F0C
	mov r3, #0
	bx ip
	; .align 2, 0
_020C81E0: .word sub_020C7F0C
	arm_func_end sub_020C81D4

	arm_func_start sub_020C81E4
sub_020C81E4: ; 0x020C81E4
	cmp r2, #0
	beq _020C8200
	cmp r2, #1
	beq _020C820C
	cmp r2, #2
	beq _020C8218
	b _020C8224
_020C8200:
	ldr r2, [r0, #0x24]
	add r1, r1, r2
	b _020C822C
_020C820C:
	ldr r2, [r0, #0x2c]
	add r1, r1, r2
	b _020C822C
_020C8218:
	ldr r2, [r0, #0x28]
	add r1, r1, r2
	b _020C822C
_020C8224:
	mov r0, #0
	bx lr
_020C822C:
	ldr r2, [r0, #0x24]
	cmp r1, r2
	movlt r1, r2
	ldr r2, [r0, #0x28]
	cmp r1, r2
	movgt r1, r2
	str r1, [r0, #0x2c]
	mov r0, #1
	bx lr
	arm_func_end sub_020C81E4

	arm_func_start sub_020C8250
sub_020C8250: ; 0x020C8250
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x54
	mov r4, r0
	add r0, sp, #0xc
	bl sub_020C7DA0
	add r0, sp, #0xc
	add r3, sp, #0
	mov r1, r4
	mov r2, #0
	bl sub_020C7DC8
	cmp r0, #0
	addeq sp, sp, #0x54
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r3, _020C82A4 ; =0x021CEC0C
	add r0, sp, #0
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	mov r0, #1
	add sp, sp, #0x54
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020C82A4: .word 0x021CEC0C
	arm_func_end sub_020C8250

	.bss


	.global Unk_021CEC18
Unk_021CEC18: ; 0x021CEC18
	.space 0x4

