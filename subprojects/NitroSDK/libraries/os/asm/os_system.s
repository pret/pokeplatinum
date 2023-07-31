	.include "macros/function.inc"
	.include "include/os_system.inc"

	

	.text


	arm_func_start OS_EnableInterrupts
OS_EnableInterrupts: ; 0x020C3D84
	mrs r0, cpsr
	bic r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_EnableInterrupts

	arm_func_start OS_DisableInterrupts
OS_DisableInterrupts: ; 0x020C3D98
	mrs r0, cpsr
	orr r1, r0, #0x80
	msr cpsr_c, r1
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_DisableInterrupts

	arm_func_start OS_RestoreInterrupts
OS_RestoreInterrupts: ; 0x020C3DAC
	mrs r1, cpsr
	bic r2, r1, #0x80
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0x80
	bx lr
	arm_func_end OS_RestoreInterrupts

	arm_func_start OS_DisableInterrupts_IrqAndFiq
OS_DisableInterrupts_IrqAndFiq: ; 0x020C3DC4
	mrs r0, cpsr
	orr r1, r0, #0xc0
	msr cpsr_c, r1
	and r0, r0, #0xc0
	bx lr
	arm_func_end OS_DisableInterrupts_IrqAndFiq

	arm_func_start OS_RestoreInterrupts_IrqAndFiq
OS_RestoreInterrupts_IrqAndFiq: ; 0x020C3DD8
	mrs r1, cpsr
	bic r2, r1, #0xc0
	orr r2, r2, r0
	msr cpsr_c, r2
	and r0, r1, #0xc0
	bx lr
	arm_func_end OS_RestoreInterrupts_IrqAndFiq

	arm_func_start OS_GetCpsrIrq
OS_GetCpsrIrq: ; 0x020C3DF0
	mrs r0, cpsr
	and r0, r0, #0x80
	bx lr
	arm_func_end OS_GetCpsrIrq

	arm_func_start OS_GetProcMode
OS_GetProcMode: ; 0x020C3DFC
	mrs r0, cpsr
	and r0, r0, #0x1f
	bx lr
	arm_func_end OS_GetProcMode

	arm_func_start OS_SpinWait
OS_SpinWait:
	subs r0, r0, #4
	bhs OS_SpinWait
	bx lr
	arm_func_end OS_SpinWait

	arm_func_start OS_WaitVBlankIntr
OS_WaitVBlankIntr: ; 0x020C3E14
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl SVC_WaitByLoop
	mov r0, #1
	mov r1, r0
	bl OS_WaitIrq
	ldmia sp!, {r3, pc}
	arm_func_end OS_WaitVBlankIntr