	.include "macros/function.inc"
	.include "include/gt2callback.inc"

	

	.text


	arm_func_start ov4_021F763C
ov4_021F763C: ; 0x021F763C
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _021F765C
	ldr r0, _021F76CC ; =0x02219690
	ldr r1, _021F76D0 ; =0x02219698
	ldr r2, _021F76D4 ; =0x02219620
	mov r3, #0x1b
	bl __msl_assertion_failed
_021F765C:
	cmp r4, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x24]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r1, [r4, #0x1c]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x1c]
	ldr r1, [r4, #0x24]
	blx r1
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _021F76C4
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bne _021F76C4
	mov r0, r4
	bl ov4_021FA61C
	mov r0, #0
	ldmia sp!, {r4, pc}
_021F76C4:
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F76CC: .word Unk_ov4_02219690
_021F76D0: .word Unk_ov4_02219698
_021F76D4: .word Unk_ov4_02219620
	arm_func_end ov4_021F763C

	arm_func_start ov4_021F76D8
ov4_021F76D8: ; 0x021F76D8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	mov r6, r1
	movs r7, r0
	mov r5, r2
	mov r4, r3
	cmpne r6, #0
	bne _021F770C
	ldr r0, _021F77E8 ; =0x022196A8
	ldr r1, _021F77EC ; =0x02219698
	ldr r2, _021F77F0 ; =0x02219654
	mov r3, #0x3d
	bl __msl_assertion_failed
_021F770C:
	cmp r7, #0
	cmpne r6, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x20]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r1, [r7, #0x1c]
	ldr r0, [sp, #0x28]
	add r1, r1, #1
	cmp r0, #0
	ldrne r0, [sp, #0x24]
	str r1, [r7, #0x1c]
	ldr r2, [r6, #0x24]
	cmpne r0, #0
	moveq r0, #0
	streq r0, [sp, #0x24]
	streq r0, [sp, #0x28]
	add r2, r2, #1
	str r2, [r6, #0x24]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp, #0x28]
	mov r1, r6
	str r0, [sp, #8]
	ldr ip, [r7, #0x20]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	blx ip
	ldr r0, [r7, #0x1c]
	sub r0, r0, #1
	str r0, [r7, #0x1c]
	ldr r0, [r6, #0x24]
	sub r0, r0, #1
	str r0, [r6, #0x24]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021F77DC
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bne _021F77DC
	mov r0, r7
	bl ov4_021FA61C
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F77DC:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F77E8: .word Unk_ov4_022196A8
_021F77EC: .word Unk_ov4_02219698
_021F77F0: .word Unk_ov4_02219654
	arm_func_end ov4_021F76D8

	arm_func_start ov4_021F77F4
ov4_021F77F4: ; 0x021F77F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021F7820
	ldr r0, _021F78D0 ; =0x022196C0
	ldr r1, _021F78D4 ; =0x02219698
	ldr r2, _021F78D8 ; =0x022195F0
	mov r3, #0x69
	bl __msl_assertion_failed
_021F7820:
	cmp r7, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	str r6, [r7, #0x18]
	ldr r0, [r7, #0x28]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #0x24]
	cmp r4, #0
	add r1, r1, #1
	str r1, [r7, #0x24]
	ldr ip, [r7, #8]
	cmpne r5, #0
	ldr r3, [ip, #0x1c]
	moveq r5, #0
	add r3, r3, #1
	str r3, [ip, #0x1c]
	moveq r4, r5
	mov r2, r5
	ldr r5, [r7, #0x28]
	mov r0, r7
	mov r1, r6
	mov r3, r4
	blx r5
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021F78C8
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021F78C8
	bl ov4_021FA61C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F78C8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F78D0: .word Unk_ov4_022196C0
_021F78D4: .word Unk_ov4_02219698
_021F78D8: .word Unk_ov4_022195F0
	arm_func_end ov4_021F77F4

	arm_func_start ov4_021F78DC
ov4_021F78DC: ; 0x021F78DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021F7908
	ldr r0, _021F79B4 ; =0x022196C0
	ldr r1, _021F79B8 ; =0x02219698
	ldr r2, _021F79BC ; =0x022195D8
	mov r3, #0x94
	bl __msl_assertion_failed
_021F7908:
	cmp r7, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x2c]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r7, #0x24]
	cmp r5, #0
	add r1, r1, #1
	str r1, [r7, #0x24]
	ldr ip, [r7, #8]
	cmpne r6, #0
	ldr r3, [ip, #0x1c]
	moveq r6, #0
	add r3, r3, #1
	moveq r5, r6
	str r3, [ip, #0x1c]
	mov r2, r5
	ldr r5, [r7, #0x2c]
	mov r0, r7
	mov r1, r6
	mov r3, r4
	blx r5
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021F79AC
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021F79AC
	bl ov4_021FA61C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F79AC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F79B4: .word Unk_ov4_022196C0
_021F79B8: .word Unk_ov4_02219698
_021F79BC: .word Unk_ov4_022195D8
	arm_func_end ov4_021F78DC

	arm_func_start ov4_021F79C0
ov4_021F79C0: ; 0x021F79C0
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	mov r5, r1
	bne _021F79E4
	ldr r0, _021F7A78 ; =0x022196C0
	ldr r1, _021F7A7C ; =0x02219698
	ldr r2, _021F7A80 ; =0x022195C4
	mov r3, #0xba
	bl __msl_assertion_failed
_021F79E4:
	cmp r4, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x30]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x24]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldr r3, [r4, #8]
	mov r1, r5
	ldr r2, [r3, #0x1c]
	add r2, r2, #1
	str r2, [r3, #0x1c]
	ldr r2, [r4, #0x30]
	blx r2
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021F7A70
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021F7A70
	bl ov4_021FA61C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021F7A70:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F7A78: .word Unk_ov4_022196C0
_021F7A7C: .word Unk_ov4_02219698
_021F7A80: .word Unk_ov4_022195C4
	arm_func_end ov4_021F79C0

	arm_func_start ov4_021F7A84
ov4_021F7A84: ; 0x021F7A84
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	mov r5, r1
	bne _021F7AA8
	ldr r0, _021F7B3C ; =0x022196C0
	ldr r1, _021F7B40 ; =0x02219698
	ldr r2, _021F7B44 ; =0x022195B0
	mov r3, #0xd9
	bl __msl_assertion_failed
_021F7AA8:
	cmp r4, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x34]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r4, #0x24]
	mov r0, r4
	add r1, r1, #1
	str r1, [r4, #0x24]
	ldr r3, [r4, #8]
	mov r1, r5
	ldr r2, [r3, #0x1c]
	add r2, r2, #1
	str r2, [r3, #0x1c]
	ldr r2, [r4, #0x34]
	blx r2
	ldr r0, [r4, #0x24]
	sub r0, r0, #1
	str r0, [r4, #0x24]
	ldr r1, [r4, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r4, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021F7B34
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021F7B34
	bl ov4_021FA61C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021F7B34:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F7B3C: .word Unk_ov4_022196C0
_021F7B40: .word Unk_ov4_02219698
_021F7B44: .word Unk_ov4_022195B0
	arm_func_end ov4_021F7A84

	arm_func_start ov4_021F7B48
ov4_021F7B48: ; 0x021F7B48
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021F7B74
	ldr r0, _021F7C30 ; =0x022196C0
	ldr r1, _021F7C34 ; =0x02219698
	ldr r2, _021F7C38 ; =0x02219608
	ldr r3, _021F7C3C ; =0x00000101
	bl __msl_assertion_failed
_021F7B74:
	cmp r7, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x98]
	mov r1, r6
	bl ArrayNth
	movs lr, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x24]
	cmp r4, #0
	add r0, r0, #1
	str r0, [r7, #0x24]
	ldr ip, [r7, #8]
	cmpne r5, #0
	ldr r3, [ip, #0x1c]
	moveq r5, #0
	add r3, r3, #1
	ldr r2, [sp, #0x18]
	str r3, [ip, #0x1c]
	str r2, [sp]
	moveq r4, r5
	mov r1, r6
	ldr r6, [lr]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	blx r6
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021F7C28
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021F7C28
	bl ov4_021FA61C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F7C28:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F7C30: .word Unk_ov4_022196C0
_021F7C34: .word Unk_ov4_02219698
_021F7C38: .word Unk_ov4_02219608
_021F7C3C: .word 0x00000101
	arm_func_end ov4_021F7B48

	arm_func_start ov4_021F7C40
ov4_021F7C40: ; 0x021F7C40
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021F7C6C
	ldr r0, _021F7D28 ; =0x022196C0
	ldr r1, _021F7D2C ; =0x02219698
	ldr r2, _021F7D30 ; =0x02219638
	ldr r3, _021F7D34 ; =0x0000012D
	bl __msl_assertion_failed
_021F7C6C:
	cmp r7, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x9c]
	mov r1, r6
	bl ArrayNth
	movs lr, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x24]
	cmp r4, #0
	add r0, r0, #1
	str r0, [r7, #0x24]
	ldr ip, [r7, #8]
	cmpne r5, #0
	ldr r3, [ip, #0x1c]
	moveq r5, #0
	add r3, r3, #1
	ldr r2, [sp, #0x18]
	str r3, [ip, #0x1c]
	str r2, [sp]
	moveq r4, r5
	mov r1, r6
	ldr r6, [lr]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	blx r6
	ldr r0, [r7, #0x24]
	sub r0, r0, #1
	str r0, [r7, #0x24]
	ldr r1, [r7, #8]
	ldr r0, [r1, #0x1c]
	sub r0, r0, #1
	str r0, [r1, #0x1c]
	ldr r0, [r7, #8]
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _021F7D20
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	bne _021F7D20
	bl ov4_021FA61C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F7D20:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F7D28: .word Unk_ov4_022196C0
_021F7D2C: .word Unk_ov4_02219698
_021F7D30: .word Unk_ov4_02219638
_021F7D34: .word 0x0000012D
	arm_func_end ov4_021F7C40

	arm_func_start ov4_021F7D38
ov4_021F7D38: ; 0x021F7D38
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021F7D68
	ldr r0, _021F7E50 ; =0x02219690
	ldr r1, _021F7E54 ; =0x02219698
	ldr r2, _021F7E58 ; =0x0221959C
	mov r3, #0x160
	bl __msl_assertion_failed
_021F7D68:
	cmp r7, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	ldrne ip, [r7, #0x28]
	ldreq ip, [r7, #0x2c]
	cmp ip, #0
	addeq sp, sp, #0xc
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x20]
	cmp r0, #0
	ldrne r0, [sp, #0x24]
	mov r2, r5
	cmpne r0, #0
	moveq r0, #0
	streq r0, [sp, #0x28]
	streq r0, [sp, #0x24]
	ldr r0, [r7, #0x1c]
	cmp r6, #0
	add r0, r0, #1
	str r0, [r7, #0x1c]
	ldrne r0, [r6, #0x24]
	ldr lr, [sp, #0x28]
	addne r0, r0, #1
	strne r0, [r6, #0x24]
	str r1, [sp]
	ldr r0, [sp, #0x24]
	mov r1, r6
	str r0, [sp, #4]
	mov r0, r7
	mov r3, r4
	str lr, [sp, #8]
	blx ip
	ldr r0, [r7, #0x1c]
	cmp r6, #0
	sub r0, r0, #1
	str r0, [r7, #0x1c]
	ldrne r0, [r6, #0x24]
	subne r0, r0, #1
	strne r0, [r6, #0x24]
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _021F7E44
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	bne _021F7E44
	mov r0, r7
	bl ov4_021FA61C
	add sp, sp, #0xc
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, pc}
_021F7E44:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F7E50: .word Unk_ov4_02219690
_021F7E54: .word Unk_ov4_02219698
_021F7E58: .word Unk_ov4_0221959C
	arm_func_end ov4_021F7D38

	arm_func_start ov4_021F7E5C
ov4_021F7E5C: ; 0x021F7E5C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r4, [sp, #0x24]
	movs r8, r0
	mov r0, #0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	str r0, [r4, #0]
	bne _021F7E98
	ldr r0, _021F7F44 ; =0x02219690
	ldr r1, _021F7F48 ; =0x02219698
	ldr r2, _021F7F4C ; =0x02219670
	ldr r3, _021F7F50 ; =0x00000197
	bl __msl_assertion_failed
_021F7E98:
	cmp r8, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #0x30]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x20]
	ldr r1, [r8, #0x1c]
	cmp r0, #0
	cmpne r5, #0
	moveq r5, #0
	streq r5, [sp, #0x20]
	add r1, r1, #1
	str r1, [r8, #0x1c]
	ldr r0, [sp, #0x20]
	mov r1, r7
	str r0, [sp]
	ldr ip, [r8, #0x30]
	mov r0, r8
	mov r2, r6
	mov r3, r5
	blx ip
	str r0, [r4, #0]
	ldr r0, [r8, #0x1c]
	sub r0, r0, #1
	str r0, [r8, #0x1c]
	ldr r0, [r8, #0x14]
	cmp r0, #0
	beq _021F7F38
	ldr r0, [r8, #0x1c]
	cmp r0, #0
	bne _021F7F38
	mov r0, r8
	bl ov4_021FA61C
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021F7F38:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F7F44: .word Unk_ov4_02219690
_021F7F48: .word Unk_ov4_02219698
_021F7F4C: .word Unk_ov4_02219670
_021F7F50: .word 0x00000197
	arm_func_end ov4_021F7E5C

	.data


	.global Unk_ov4_0221959C
Unk_ov4_0221959C: ; 0x0221959C
	.ascii "gti2DumpCallback"
	.space 0x4

	.global Unk_ov4_022195B0
Unk_ov4_022195B0: ; 0x022195B0
	.ascii "gti2PingCallback"
	.space 0x4

	.global Unk_ov4_022195C4
Unk_ov4_022195C4: ; 0x022195C4
	.ascii "gti2ClosedCallback"
	.space 0x2

	.global Unk_ov4_022195D8
Unk_ov4_022195D8: ; 0x022195D8
	.ascii "gti2ReceivedCallback"
	.space 0x4

	.global Unk_ov4_022195F0
Unk_ov4_022195F0: ; 0x022195F0
	.asciz "gti2ConnectedCallback"
	.space 0x2

	.global Unk_ov4_02219608
Unk_ov4_02219608: ; 0x02219608
	.ascii "gti2SendFilterCallback"
	.space 0x2

	.global Unk_ov4_02219620
Unk_ov4_02219620: ; 0x02219620
	.asciz "gti2SocketErrorCallback"

	.global Unk_ov4_02219638
Unk_ov4_02219638: ; 0x02219638
	.asciz "gti2ReceiveFilterCallback"
	.space 0x2

	.global Unk_ov4_02219654
Unk_ov4_02219654: ; 0x02219654
	.ascii "gti2ConnectAttemptCallback"
	.space 0x2

	.global Unk_ov4_02219670
Unk_ov4_02219670: ; 0x02219670
	.asciz "gti2UnrecognizedMessageCallback"

	.global Unk_ov4_02219690
Unk_ov4_02219690: ; 0x02219690
	.ascii "socket"
	.space 0x2

	.global Unk_ov4_02219698
Unk_ov4_02219698: ; 0x02219698
	.asciz "gt2Callback.c"
	.space 0x2

	.global Unk_ov4_022196A8
Unk_ov4_022196A8: ; 0x022196A8
	.ascii "socket && connection"
	.space 0x4

	.global Unk_ov4_022196C0
Unk_ov4_022196C0: ; 0x022196C0
	.ascii "connection"
	.space 0x2

