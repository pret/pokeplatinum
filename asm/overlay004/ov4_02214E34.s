	.include "macros/function.inc"
	.include "overlay004/ov4_02214E34.inc"

	

	.text


	arm_func_start ov4_02214E34
ov4_02214E34: ; 0x02214E34
	stmfd sp!, {r4, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl ov4_02213964
	cmp r0, #0
	bne _02214E58
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
_02214E58:
	add r1, r0, #0x2000
	ldr r0, [r1, #0x270]
	cmp r0, #0
	beq _02214E7C
	ldr r2, [r1, #0x274]
	cmp r2, #0
	ble _02214E7C
	mov r1, #0
	bl MI_CpuFill8
_02214E7C:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02214E34

	arm_func_start ov4_02214E88
ov4_02214E88: ; 0x02214E88
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_DisableInterrupts
	mov r4, r0
	bl ov4_02213964
	cmp r0, #0
	mov r5, #0
	bne _02214EB4
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
_02214EB4:
	add r0, r0, #0x2000
	ldr r1, [r0, #0x270]
	cmp r1, #0
	beq _02214ED0
	ldr r0, [r0, #0x274]
	cmp r0, #0xc
	ldrhi r5, [r1]
_02214ED0:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02214E88

	arm_func_start ov4_02214EE0
ov4_02214EE0: ; 0x02214EE0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	bl ov4_02213964
	cmp r0, #0
	bne _02214F0C
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02214F0C:
	add r1, r0, #0x2000
	cmp r5, #0
	ldrb r1, [r1, #0x26a]
	beq _02214F34
	cmp r1, #0
	movne r5, #1
	moveq r5, #0
	add r0, r0, #0x2000
	mov r1, #1
	b _02214F48
_02214F34:
	cmp r1, #0
	movne r5, #1
	moveq r5, #0
	add r0, r0, #0x2000
	mov r1, #0
_02214F48:
	strb r1, [r0, #0x26a]
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02214EE0

	arm_func_start ov4_02214F5C
ov4_02214F5C: ; 0x02214F5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	mov r5, r0
	bl ov4_02213964
	cmp r0, #0
	bne _02214F88
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02214F88:
	mov r0, r4
	bl ov4_022151A8
	movs r4, r0
	mov r0, r5
	bne _02214FA8
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02214FA8:
	bl OS_RestoreInterrupts
	add r0, r4, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02214F5C

	arm_func_start ov4_02214FB4
ov4_02214FB4: ; 0x02214FB4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_02213964
	movs r6, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r6, #0x2000
	ldrb r0, [r0, #0x26a]
	cmp r0, #0
	ldreqh r0, [r5, #0x3c]
	cmpeq r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, r5, #4
	bl ov4_0221513C
	movs r7, r0
	bne _02214FFC
	bl ov4_02215040
	mov r7, r0
_02214FFC:
	cmp r7, #0
	addeq r0, r6, #0x2000
	ldreq r0, [r0, #0x278]
	cmpeq r0, #1
	bne _02215018
	bl ov4_0221510C
	mov r7, r0
_02215018:
	cmp r7, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r5
	add r1, r7, #0x10
	mov r2, #0xc0
	strh r4, [r7, #2]
	bl MIi_CpuCopyFast
	mov r0, r7
	bl ov4_022151F8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_02214FB4

	arm_func_start ov4_02215040
ov4_02215040: ; 0x02215040
	stmfd sp!, {r4, lr}
	bl ov4_02213964
	add r2, r0, #0x2000
	ldr r1, [r2, #0x270]
	mov r0, #0
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r2, #0x274]
	cmp r3, #0xc
	ldmlsia sp!, {r4, pc}
	ldr r2, _02215108 ; =0x4EC4EC4F
	sub r3, r3, #0xc
	umull r2, ip, r3, r2
	movs ip, ip, lsr #6
	ldmeqia sp!, {r4, pc}
	ldr r2, [r1, #0]
	cmp ip, r2
	ldmlsia sp!, {r4, pc}
	mov lr, r0
	cmp ip, #0
	bls _022150BC
	add r4, r1, #0xc
	mov r2, #0xd0
_0221509C:
	mul r0, lr, r2
	ldrb r3, [r4, r0]
	add r0, r4, r0
	cmp r3, #0
	beq _022150BC
	add lr, lr, #1
	cmp lr, ip
	blo _0221509C
_022150BC:
	cmp lr, ip
	ldmhsia sp!, {r4, pc}
	mov r2, #1
	strb r2, [r0]
	ldr r3, [r1, #0]
	mov r2, #0
	str r3, [r0, #4]
	str r2, [r0, #0xc]
	ldr r2, [r1, #8]
	str r2, [r0, #8]
	str r0, [r1, #8]
	ldr r2, [r0, #8]
	cmp r2, #0
	strne r0, [r2, #0xc]
	streq r0, [r1, #4]
	ldr r2, [r1, #0]
	add r2, r2, #1
	str r2, [r1, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02215108: .word 0x4EC4EC4F
	arm_func_end ov4_02215040

	arm_func_start ov4_0221510C
ov4_0221510C: ; 0x0221510C
	stmfd sp!, {r3, lr}
	bl ov4_02213964
	add r0, r0, #0x2000
	ldr r1, [r0, #0x270]
	cmp r1, #0
	beq _02215134
	ldr r0, [r0, #0x274]
	cmp r0, #0xc
	ldrhi r0, [r1, #4]
	ldmhiia sp!, {r3, pc}
_02215134:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_0221510C

	arm_func_start ov4_0221513C
ov4_0221513C: ; 0x0221513C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl ov4_02213964
	add r0, r0, #0x2000
	mov r4, #0
	cmp r5, #0
	ldr r1, [r0, #0x270]
	moveq r0, r4
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r1, #0
	beq _022151A0
	ldr r0, [r0, #0x274]
	cmp r0, #0xc
	bls _022151A0
	ldr r4, [r1, #4]
	cmp r4, #0
	beq _022151A0
_02215180:
	mov r1, r5
	add r0, r4, #0x14
	bl ov4_022156C0
	cmp r0, #0
	bne _022151A0
	ldr r4, [r4, #0xc]
	cmp r4, #0
	bne _02215180
_022151A0:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_0221513C

	arm_func_start ov4_022151A8
ov4_022151A8: ; 0x022151A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_02213964
	add r1, r0, #0x2000
	ldr r2, [r1, #0x270]
	mov r0, #0
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x274]
	cmp r1, #0xc
	ldmlsia sp!, {r4, pc}
	ldr r0, [r2, #4]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
_022151E0:
	ldr r1, [r0, #4]
	cmp r1, r4
	ldrne r0, [r0, #0xc]
	cmpne r0, #0
	bne _022151E0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022151A8

	arm_func_start ov4_022151F8
ov4_022151F8: ; 0x022151F8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov4_02213964
	add r1, r0, #0x2000
	ldr r0, [r1, #0x270]
	cmp r4, #0
	cmpne r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x274]
	cmp r1, #0xc
	ldmlsia sp!, {r4, pc}
	ldr r3, [r0, #4]
	cmp r3, #0
	beq _02215270
_02215230:
	cmp r3, r4
	bne _02215264
	ldr r2, [r3, #8]
	ldr r1, [r3, #0xc]
	cmp r2, #0
	strne r1, [r2, #0xc]
	streq r1, [r0, #4]
	ldr r2, [r3, #0xc]
	ldr r1, [r3, #8]
	cmp r2, #0
	strne r1, [r2, #8]
	streq r1, [r0, #8]
	b _02215270
_02215264:
	ldr r3, [r3, #0xc]
	cmp r3, #0
	bne _02215230
_02215270:
	mov r1, #0
	str r1, [r4, #0xc]
	ldr r1, [r0, #8]
	str r1, [r4, #8]
	str r4, [r0, #8]
	ldr r1, [r4, #8]
	cmp r1, #0
	strne r4, [r1, #0xc]
	streq r4, [r0, #4]
	cmp r3, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r0, #0]
	str r1, [r4, #4]
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022151F8