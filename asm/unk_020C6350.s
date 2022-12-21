	.include "macros/function.inc"
	.include "include/unk_020C6350.inc"

	

	.text


	arm_func_start sub_020C6350
sub_020C6350: ; 0x020C6350
	ldr ip, _020C6358 ; =sub_020C635C
	bx ip
	; .align 2, 0
_020C6358: .word sub_020C635C
	arm_func_end sub_020C6350