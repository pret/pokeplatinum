	.include "macros/function.inc"
	.include "include/ov4_02207D90.inc"

	

	.text


	arm_func_start ov4_02207D90
ov4_02207D90: ; 0x02207D90
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02207E24 ; =0x0221DBF4
	ldr r0, [r1, #0]
	cmp r0, #0
	ldreq r0, _02207E28 ; =0x0221DE40
	ldreq r0, [r0]
	streq r0, [r1]
	bl ov4_02207EDC
	mvn r4, #0x19
	cmp r0, r4
	bne _02207DD4
	mov r5, #0x64
_02207DC0:
	mov r0, r5
	bl sub_020C24A4
	bl ov4_02207EDC
	cmp r0, r4
	beq _02207DC0
_02207DD4:
	bl ov4_02205F84
	movs r4, r0
	bmi _02207E1C
	bl ov4_022090C0
	mov r0, #0
	bl ov4_022090B0
	ldr r0, _02207E2C ; =0x0221A134
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x28]
	cmp r0, #0
	bne _02207E10
	ldr r0, _02207E30 ; =0x0221DC00
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x1c]
	blx r1
_02207E10:
	ldr r0, _02207E2C ; =0x0221A134
	mov r1, #0
	str r1, [r0, #0]
_02207E1C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02207E24: .word 0x0221DBF4
_02207E28: .word 0x0221DE40
_02207E2C: .word 0x0221A134
_02207E30: .word 0x0221DC00
	arm_func_end ov4_02207D90

	arm_func_start ov4_02207E34
ov4_02207E34: ; 0x02207E34
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _02207ED0 ; =0x0221DBFC
	ldr r5, _02207ED4 ; =0x0221DC5C
_02207E40:
	bl sub_020C3D98
	ldr r6, [r5, #0]
	cmp r6, #0
	beq _02207E74
	ldr r2, [r4, #0]
_02207E54:
	cmp r6, r2
	beq _02207E68
	ldrsh r1, [r6, #0x70]
	tst r1, #0x10
	beq _02207E74
_02207E68:
	ldr r6, [r6, #0x7c]
	cmp r6, #0
	bne _02207E54
_02207E74:
	bl sub_020C3DAC
	cmp r6, #0
	beq _02207E8C
	mov r0, r6
	bl ov4_02207A4C
	b _02207E40
_02207E8C:
	ldr r0, _02207ED4 ; =0x0221DC5C
	ldr r1, [r0, #0]
	cmp r1, #0
	beq _02207EB4
	ldr r0, _02207ED0 ; =0x0221DBFC
	ldr r0, [r0, #0]
	cmp r1, r0
	ldreq r0, [r1, #0x7c]
	cmpeq r0, #0
	bne _02207EC8
_02207EB4:
	ldr r0, _02207ED8 ; =0x0221DC60
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_02207EC8:
	mvn r0, #0x19
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02207ED0: .word 0x0221DBFC
_02207ED4: .word 0x0221DC5C
_02207ED8: .word 0x0221DC60
	arm_func_end ov4_02207E34

	arm_func_start ov4_02207EDC
ov4_02207EDC: ; 0x02207EDC
	stmfd sp!, {r4, lr}
	ldr r0, _02207F54 ; =0x0221DBFC
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02207F30
	bl ov4_02207E34
	movs r4, r0
	bne _02207F28
	ldr r0, _02207F54 ; =0x0221DBFC
	ldr r0, [r0, #0]
	bl ov4_02207A4C
	ldr r0, _02207F54 ; =0x0221DBFC
	ldr r0, [r0, #0]
	bl ov4_02207A18
	cmp r0, #0
	ldrne r0, _02207F54 ; =0x0221DBFC
	movne r1, #0
	strne r1, [r0]
	mvn r4, #0x19
_02207F28:
	bl ov4_02207D54
	b _02207F4C
_02207F30:
	bl ov4_02209060
	cmp r0, #0
	mvneq r4, #0x19
	beq _02207F4C
	mov r0, #0
	bl ov4_0221543C
	mov r4, #0
_02207F4C:
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02207F54: .word 0x0221DBFC
	arm_func_end ov4_02207EDC