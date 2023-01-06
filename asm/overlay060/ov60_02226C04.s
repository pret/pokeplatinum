	.include "macros/function.inc"
	.include "overlay060/ov60_02226C04.inc"

	.extern Unk_ov60_0222A018
	.extern Unk_ov60_0222A01C

	.text


	arm_func_start ov60_02226C04
ov60_02226C04: ; 0x02226C04
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02226C34
	ldr r5, _02226C78 ; =0x0222A01C
_02226C1C:
	ldr r6, [r0, #0]
	ldr r1, [r5, #0]
	blx r1
	movs r0, r6
	str r6, [r4, #0x1c]
	bne _02226C1C
_02226C34:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02226C4C
	ldr r1, _02226C78 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_02226C4C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	beq _02226C64
	ldr r1, _02226C78 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_02226C64:
	ldr r1, _02226C78 ; =0x0222A01C
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02226C78: .word Unk_ov60_0222A01C
	arm_func_end ov60_02226C04

	arm_func_start ov60_02226C7C
ov60_02226C7C: ; 0x02226C7C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r2
	mov sl, r1
	ldr r2, [r5, #0]
	add r3, sp, #4
	mov r1, #0xc
	bl ov60_02226010
	mov r8, r0
	cmp r8, #0
	ble _02226D7C
	mov r6, #0
	add r7, sp, #4
_02226CB4:
	ldr r2, [r5, #0]
	mov r0, r5
	mov r1, r8
	mov r3, r7
	bl ov60_02226010
	ldr r2, [sp, #4]
	mov sb, r0
	cmp r2, #0
	ble _02226D70
	mov r0, r5
	mov r1, r8
	mov r3, sl
	str r6, [sp]
	bl ov60_02226150
	cmp r0, #0
	bne _02226D70
	ldr r1, [sp, #4]
	ldr r0, [r5, #0]
	add r1, r1, #1
	cmp r1, r0
	bge _02226D64
	ldr r2, [r5, #0]
	mov r0, r5
	mov r3, #0
	bl ov60_02226010
	cmp r0, #0
	ldrle r6, [r5]
	ble _02226D38
	cmp r0, #2
	addlt sp, sp, #8
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	sub r6, r0, #2
_02226D38:
	ldr r1, [sp, #4]
	mov r0, r5
	mov r2, r6
	add r1, r1, #1
	bl ov60_022260E0
	cmp r0, #0
	movlt r0, r6
	str r0, [r4, #0]
	add sp, sp, #8
	sub r0, r6, r0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02226D64:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02226D70:
	mov r8, sb
	cmp sb, #0
	bgt _02226CB4
_02226D7C:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov60_02226C7C

	arm_func_start ov60_02226D88
ov60_02226D88: ; 0x02226D88
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _02226DC8
	ldr r1, _02226E80 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
	mov r0, #0
	str r0, [r7, #0x14]
_02226DC8:
	add r2, sp, #0
	mov r0, r7
	mov r1, r6
	bl ov60_02226C7C
	movs r4, r0
	bmi _02226E24
	ldr r1, _02226E84 ; =0x0222A018
	add r0, r4, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	str r0, [r7, #0x14]
	mov r1, #0
	strb r1, [r0, r4]
	ldr r1, [r7, #0x14]
	ldr r2, [sp]
	mov r0, r7
	mov r3, r4
	bl ov60_02226220
	ldr r1, [r7, #0x14]
	mov r0, r4
	str r1, [r5, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02226E24:
	ldr r0, _02226E88 ; =0x02229CE4
	mov r1, r6
	bl ov60_022270D8
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _02226E84 ; =0x0222A018
	mov r0, #4
	ldr r2, [r1, #0]
	mov r1, r0
	blx r2
	str r0, [r7, #0x14]
	mov r1, #0
	strb r1, [r0, #3]
	ldr r1, [r7, #0x14]
	mov r0, r7
	mov r2, #9
	mov r3, #3
	bl ov60_02226220
	ldr r1, [r7, #0x14]
	mov r0, #3
	str r1, [r5, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226E80: .word Unk_ov60_0222A01C
_02226E84: .word Unk_ov60_0222A018
_02226E88: .word Unk_ov60_02229CE4
	arm_func_end ov60_02226D88

	arm_func_start ov60_02226E8C
ov60_02226E8C: ; 0x02226E8C
	ldr r2, [r0, #8]
	cmp r2, #0
	ldrne r2, [r0, #4]
	cmpne r2, #0
	mvneq r0, #0
	ldrne r2, [r0, #0x18]
	strne r2, [r1]
	ldrne r0, [r0, #4]
	bx lr
	arm_func_end ov60_02226E8C

	.data


	.global Unk_ov60_02229CE4
Unk_ov60_02229CE4: ; 0x02229CE4
	.incbin "incbin/overlay60_data.bin", 0xEA4, 0x10

