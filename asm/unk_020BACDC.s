	.include "macros/function.inc"
	.include "include/unk_020BACDC.inc"

	

	.text


	arm_func_start sub_020BACDC
sub_020BACDC: ; 0x020BACDC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r4, r0
	bl sub_020B9AFC
	mov r6, #0
	mov r5, r6
_020BACF0:
	mov r0, r6
	bl sub_020B9CB4
	movs r7, r0
	beq _020BAD64
	ldrb r1, [r7]
	mov r0, r6
	bl sub_020B7EFC
	ldrh r1, [r7, #2]
	mov r0, r6
	bl sub_020B7F1C
	ldr r0, [r7, #4]
	cmp r0, #0
	cmpne r4, #0
	beq _020BAD64
	ldrb r0, [r7]
	mov r8, r5
	cmp r0, #0
	ble _020BAD64
_020BAD38:
	ldr r2, [r7, #4]
	mov r0, r6
	mov r1, r4
	bl sub_020B7F34
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrb r0, [r7]
	add r8, r8, #1
	cmp r8, r0
	blt _020BAD38
_020BAD64:
	add r6, r6, #1
	cmp r6, #0x20
	blt _020BACF0
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BACDC

	arm_func_start sub_020BAD78
sub_020BAD78: ; 0x020BAD78
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl sub_020B9B24
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	stmia sp, {r0, r4}
	ldrb r1, [r0, #9]
	ldrh r2, [r0, #4]
	ldrb r3, [r0, #8]
	mov r0, r5
	bl sub_020BAEB0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BAD78

	arm_func_start sub_020BADC0
sub_020BADC0: ; 0x020BADC0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r0, [sp, #0x20]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020B9B24
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	ldrltb r4, [r0, #8]
	cmp r5, #0
	ldrlth r5, [r0, #4]
	cmp r6, #0
	ldrltb r6, [r0, #9]
	ldr ip, [sp, #0x20]
	mov r2, r5
	str r0, [sp]
	mov r0, r7
	mov r1, r6
	mov r3, r4
	str ip, [sp, #4]
	bl sub_020BAEB0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020BADC0

	arm_func_start sub_020BAE30
sub_020BAE30: ; 0x020BAE30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r7, r0
	mov r0, r6
	mov r5, r2
	bl sub_020B9B88
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r0, #0]
	bl sub_020B9E6C
	movs r4, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r5
	bl sub_020BB368
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	stmia sp, {r0, r4, r6}
	str r5, [sp, #0xc]
	ldrb r1, [r0, #9]
	ldrh r2, [r0, #4]
	ldrb r3, [r0, #8]
	mov r0, r7
	bl sub_020BAFAC
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020BAE30

	arm_func_start sub_020BAEB0
sub_020BAEB0: ; 0x020BAEB0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r8, r2
	mov r2, r3
	ldr r5, [sp, #0x28]
	mov r6, r0
	mov r7, r1
	bl sub_020B84B8
	movs r4, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r7
	mov r1, r4
	bl sub_020B8620
	mov r7, r0
	add ip, sp, #4
	mov r0, r8
	mov r2, r7
	mov r1, #6
	mov r3, #0
	str ip, [sp]
	bl sub_020BA4E8
	cmp r0, #0
	beq _020BAF28
	mov r0, r4
	bl sub_020B8550
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BAF28:
	ldr r0, [sp, #0x2c]
	add ip, sp, #8
	mov r2, r7
	mov r1, #1
	mov r3, #0
	str ip, [sp]
	bl sub_020BA404
	cmp r0, #0
	beq _020BAF60
	mov r0, r4
	bl sub_020B8550
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020BAF60:
	ldr r2, [sp, #8]
	ldr r3, [sp, #4]
	ldr r1, [r2, #0x18]
	mov r0, r4
	add r1, r2, r1
	mov r2, #0
	bl sub_020B855C
	ldrb r1, [r5, #6]
	mov r0, r6
	bl sub_020B8134
	ldrb r1, [r5, #7]
	mov r0, r6
	bl sub_020B8174
	ldr r1, [sp, #0x2c]
	mov r0, r6
	bl sub_020B81F4
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BAEB0

	arm_func_start sub_020BAFAC
sub_020BAFAC: ; 0x020BAFAC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r2
	mov r2, r3
	ldr r6, [sp, #0x20]
	mov r4, r0
	mov r8, r1
	bl sub_020B84B8
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r5
	bl sub_020B8620
	add ip, sp, #4
	mov r2, r0
	mov r0, r7
	mov r1, #6
	mov r3, #0
	str ip, [sp]
	bl sub_020BA4E8
	cmp r0, #0
	beq _020BB020
	mov r0, r5
	bl sub_020B8550
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020BB020:
	ldr ip, [sp, #0x24]
	ldr r2, [r6, #0]
	ldr r1, [ip, #0x18]
	ldr r3, [sp, #4]
	mov r0, r5
	add r1, ip, r1
	bl sub_020B855C
	ldrb r1, [r6, #6]
	mov r0, r4
	bl sub_020B8134
	ldrb r1, [r6, #7]
	mov r0, r4
	bl sub_020B8174
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r0, r4
	bl sub_020B8218
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020BAFAC