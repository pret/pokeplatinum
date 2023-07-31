	.include "macros/function.inc"
	.include "include/interrupt.inc"

	.extern OS_IRQTable

	.text


	arm_func_start ov18_0224589C
ov18_0224589C: ; 0x0224589C
	stmfd sp!, {r3, lr}
	ldr r0, _022458FC ; =0x04000210
	ldr r1, _02245900 ; =0x022533E0
	ldr r2, [r0, #0]
	ldr r0, _02245904 ; =0x00040018
	str r2, [r1, #4]
	bl OS_SetIrqMask
	mov r0, #1
	bl OS_EnableIrqMask
	mov r0, #1
	bl OS_GetIrqFunction
	ldr r2, _02245900 ; =0x022533E0
	ldr r1, _02245908 ; =ov18_0224594C
	str r0, [r2, #0]
	mov r0, #1
	bl OS_SetIrqFunction
	mov r0, #1
	bl OS_ResetRequestIrqMask
	ldr r2, _0224590C ; =0x04000208
	mov r0, #1
	ldrh r1, [r2]
	strh r0, [r2]
	bl OS_EnableInterrupts
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022458FC: .word 0x04000210
_02245900: .word Unk_ov18_022533E0
_02245904: .word 0x00040018
_02245908: .word ov18_0224594C
_0224590C: .word 0x04000208
	arm_func_end ov18_0224589C

	arm_func_start ov18_02245910
ov18_02245910: ; 0x02245910
	stmfd sp!, {r3, lr}
	ldr r2, _02245944 ; =0x04000208
	mov r1, #0
	ldrh r0, [r2]
	ldr r0, _02245948 ; =0x022533E0
	strh r1, [r2]
	ldr r0, [r0, #4]
	bl OS_SetIrqMask
	ldr r1, _02245948 ; =0x022533E0
	mov r0, #1
	ldr r1, [r1, #0]
	bl OS_SetIrqFunction
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02245944: .word 0x04000208
_02245948: .word Unk_ov18_022533E0
	arm_func_end ov18_02245910

	arm_func_start ov18_0224594C
ov18_0224594C: ; 0x0224594C
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02246254
	ldr r0, _02245970 ; =0x027E0000
	add r0, r0, #0x3000
	ldr r1, [r0, #0xff8]
	orr r1, r1, #1
	str r1, [r0, #0xff8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02245970: .word OS_IRQTable
	arm_func_end ov18_0224594C

	.bss


	.global Unk_ov18_022533E0
Unk_ov18_022533E0: ; 0x022533E0
	.space 0x4

	.global Unk_ov18_022533E4
Unk_ov18_022533E4: ; 0x022533E4
	.space 0x4

