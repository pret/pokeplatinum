	.include "macros/function.inc"
	.include "include/os_terminate_proc.inc"

	

	.text


	arm_func_start OS_Terminate
OS_Terminate: ; 0x020C42A8
	stmfd sp!, {r3, lr}
_020C42AC:
	bl OS_DisableInterrupts
	bl OS_Halt
	b _020C42AC
	arm_func_end OS_Terminate

	arm_func_start OS_Halt
OS_Halt: ; 0x020C42B8
	mov r0, #0
	mcr p15, 0, r0, c7, c0, 4
	bx lr
	arm_func_end OS_Halt