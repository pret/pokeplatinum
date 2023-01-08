	.include "macros/function.inc"

	

	.text


	arm_func_start MI_SwapWord
MI_SwapWord: ; 0x020C4F40
	.word 0xE1010090
	bx lr
	arm_func_end MI_SwapWord