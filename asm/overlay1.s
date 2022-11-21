	.include "macros/function.inc"


	.text

	thumb_func_start ov1_021D0D80
ov1_021D0D80: ; 0x021D0D80
	ldr r0, _021D0D8C ; =0x021D0DA0
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	nop
_021D0D8C: .word 0x021D0DA0
	thumb_func_end ov1_021D0D80
	; 0x021D0D90
