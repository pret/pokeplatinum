	.include "macros/function.inc"
	.include "overlay018/ov18_02243FD4.inc"

	

	.text


	arm_func_start ov18_02243FD4
ov18_02243FD4: ; 0x02243FD4
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #1
	mov r0, r0, lsl #2
	add r0, r0, #8
	mov r1, #4
	bl ov18_02245068
	add r1, r4, #1
	strh r1, [r0]
	mov r1, #0
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	ldmia sp!, {r4, pc}
	arm_func_end ov18_02243FD4

	arm_func_start ov18_02244008
ov18_02244008: ; 0x02244008
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl ov18_02243FD4
	cmp r6, #0
	mov r2, #0
	ble _02244040
_02244028:
	add r1, r0, r2, lsl #2
	add r2, r2, #1
	str r5, [r1, #4]
	cmp r2, r6
	add r5, r5, r4
	blt _02244028
_02244040:
	strb r6, [r0, #3]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov18_02244008

	arm_func_start ov18_02244048
ov18_02244048: ; 0x02244048
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl ov18_0224508C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov18_02244048

	arm_func_start ov18_02244064
ov18_02244064: ; 0x02244064
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl OS_DisableIrqMask
	ldrb r2, [r5, #3]
	mov r6, r0
	ldrh r1, [r5]
	add r0, r2, #1
	bl FX_ModS32
	ldrb r1, [r5, #2]
	mov r7, r0
	cmp r7, r1
	bne _022440A0
	bl OS_Terminate
_022440A0:
	ldrb r1, [r5, #3]
	mov r0, r6
	add r1, r5, r1, lsl #2
	str r4, [r1, #4]
	strb r7, [r5, #3]
	bl OS_EnableIrqMask
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02244064

	arm_func_start ov18_022440BC
ov18_022440BC: ; 0x022440BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r4, #0
	bl OS_DisableIrqMask
	ldrb r2, [r6, #3]
	ldrb r1, [r6, #2]
	mov r5, r0
	cmp r1, r2
	beq _02244104
	ldrh r1, [r6]
	add r0, r2, r1
	sub r0, r0, #1
	bl FX_ModS32
	and r1, r0, #0xff
	strb r0, [r6, #3]
	add r0, r6, r1, lsl #2
	ldr r4, [r0, #4]
_02244104:
	mov r0, r5
	bl OS_EnableIrqMask
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov18_022440BC