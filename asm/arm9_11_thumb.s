
	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_020BB464
sub_020BB464: ; 0x020BB464
	str r2, [r0, #0]
	str r1, [r0, #4]
	neg r1, r1
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	thumb_func_end sub_020BB464
