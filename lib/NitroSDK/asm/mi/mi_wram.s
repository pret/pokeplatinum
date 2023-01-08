	.include "macros/function.inc"

	

	.text


	arm_func_start MI_SetWramBank
MI_SetWramBank: ; 0x020C42C4
	ldr r1, _020C42D0 ; =0x04000247
	strb r0, [r1]
	bx lr
	; .align 2, 0
_020C42D0: .word 0x04000247
	arm_func_end MI_SetWramBank