	.include "macros/function.inc"

	

	.text


	arm_func_start NNS_G2dGetPaletteTableValue
NNS_G2dGetPaletteTableValue: ; 0x020A8180
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bx lr
	arm_func_end NNS_G2dGetPaletteTableValue