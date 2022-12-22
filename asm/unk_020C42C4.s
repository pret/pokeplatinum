	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020C42C4
sub_020C42C4: ; 0x020C42C4
	ldr r1, _020C42D0 ; =0x04000247
	strb r0, [r1]
	bx lr
	; .align 2, 0
_020C42D0: .word 0x04000247
	arm_func_end sub_020C42C4