	.include "macros/function.inc"
	.include "include/list_dwcutil.inc"

	

	.text


	arm_func_start ov18_02245974
ov18_02245974: ; 0x02245974
	stmfd sp!, {r3, lr}
	mov r0, #0x10
	mov r1, #4
	bl ov18_02245068
	mov r2, #0
	str r2, [r0, #0]
	add r1, r0, #8
	str r1, [r0, #4]
	str r0, [r0, #8]
	str r2, [r0, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02245974

	arm_func_start ov18_022459A0
ov18_022459A0: ; 0x022459A0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r0, sp, #8
	bl ov18_0224508C
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov18_022459A0

	arm_func_start ov18_022459BC
ov18_022459BC: ; 0x022459BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	bl OS_DisableIrqMask
	ldmia r4, {r2, r3}
	str r3, [r2, #4]
	ldr r3, [r4, #0]
	ldr r2, [r4, #4]
	mov r1, #0
	str r3, [r2, #0]
	str r1, [r4, #4]
	str r1, [r4, #0]
	bl OS_EnableIrqMask
	ldmia sp!, {r4, pc}
	arm_func_end ov18_022459BC

	arm_func_start ov18_022459F4
ov18_022459F4: ; 0x022459F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl OS_DisableIrqMask
	ldr r1, [r5, #0]
	str r4, [r1, #4]
	ldr r1, [r5, #0]
	stmia r4, {r1, r5}
	str r4, [r5, #0]
	bl OS_EnableIrqMask
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov18_022459F4

	arm_func_start ov18_02245A24
ov18_02245A24: ; 0x02245A24
	ldr ip, _02245A30 ; =ov18_022459F4
	add r0, r0, #8
	bx ip
	; .align 2, 0
_02245A30: .word ov18_022459F4
	arm_func_end ov18_02245A24

	arm_func_start ov18_02245A34
ov18_02245A34: ; 0x02245A34
	ldr ip, _02245A40 ; =ov18_022459F4
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_02245A40: .word ov18_022459F4
	arm_func_end ov18_02245A34