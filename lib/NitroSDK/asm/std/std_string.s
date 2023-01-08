	.include "macros/function.inc"
	.include "include/std_string.inc"

	

	.text


	arm_func_start STD_CopyLString
STD_CopyLString: ; 0x020D3354
	stmfd sp!, {r4, lr}
	sub ip, r2, #1
	mov r4, r1
	cmp ip, #0
	mov lr, #0
	ble _020D3390
_020D336C:
	ldrsb r3, [r4]
	strb r3, [r0, lr]
	ldrsb r3, [r4]
	cmp r3, #0
	beq _020D3390
	add lr, lr, #1
	cmp lr, ip
	add r4, r4, #1
	blt _020D336C
_020D3390:
	sub r3, r2, #1
	cmp lr, r3
	blt _020D33A8
	cmp r2, #0
	movne r2, #0
	strneb r2, [r0, lr]
_020D33A8:
	mov r0, r1
	bl STD_GetStringLength
	ldmia sp!, {r4, pc}
	arm_func_end STD_CopyLString

	arm_func_start STD_GetStringLength
STD_GetStringLength: ; 0x020D33B4
	ldrsb r1, [r0]
	mov r2, #0
	cmp r1, #0
	beq _020D33D4
_020D33C4:
	add r2, r2, #1
	ldrsb r1, [r0, r2]
	cmp r1, #0
	bne _020D33C4
_020D33D4:
	mov r0, r2
	bx lr
	arm_func_end STD_GetStringLength

	arm_func_start STD_CompareString
STD_CompareString: ; 0x020D33DC
	b _020D33E8
_020D33E0:
	add r0, r0, #1
	add r1, r1, #1
_020D33E8:
	ldrsb r3, [r1]
	ldrsb r2, [r0]
	cmp r2, r3
	bne _020D3400
	cmp r2, #0
	bne _020D33E0
_020D3400:
	sub r0, r2, r3
	bx lr
	arm_func_end STD_CompareString

	arm_func_start STD_CompareNString
STD_CompareNString: ; 0x020D3408
	stmfd sp!, {r3, lr}
	cmp r2, #0
	beq _020D3440
	cmp r2, #0
	mov lr, #0
	ble _020D3440
_020D3420:
	ldrb ip, [r0, lr]
	ldrb r3, [r1, lr]
	cmp ip, r3
	subne r0, ip, r3
	ldmneia sp!, {r3, pc}
	add lr, lr, #1
	cmp lr, r2
	blt _020D3420
_020D3440:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end STD_CompareNString