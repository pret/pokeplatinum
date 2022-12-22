	.include "macros/function.inc"

	

	.text


	arm_func_start OS_SetDPermissionsForProtectionRegion
OS_SetDPermissionsForProtectionRegion: ; 0x020C353C
	mrc p15, 0, r2, c5, c0, 2
	bic r2, r2, r0
	orr r2, r2, r1
	mcr p15, 0, r2, c5, c0, 2
	bx lr
	arm_func_end OS_SetDPermissionsForProtectionRegion

	arm_func_start OS_SetProtectionRegion1
OS_SetProtectionRegion1: ; 0x020C3550
	mcr p15, 0, r0, c6, c1, 0
	bx lr
	arm_func_end OS_SetProtectionRegion1

	arm_func_start OS_SetProtectionRegion2
OS_SetProtectionRegion2: ; 0x020C3558
	mcr p15, 0, r0, c6, c2, 0
	bx lr
	arm_func_end OS_SetProtectionRegion2