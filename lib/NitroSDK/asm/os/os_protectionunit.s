	.include "macros/function.inc"

	

	.text


	arm_func_start OS_EnableProtectionUnit
OS_EnableProtectionUnit: ; 0x020C351C
	mrc p15, 0, r0, c1, c0, 0
	orr r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end OS_EnableProtectionUnit

	arm_func_start OS_DisableProtectionUnit
OS_DisableProtectionUnit: ; 0x020C352C
	mrc p15, 0, r0, c1, c0, 0
	bic r0, r0, #1
	mcr p15, 0, r0, c1, c0, 0
	bx lr
	arm_func_end OS_DisableProtectionUnit