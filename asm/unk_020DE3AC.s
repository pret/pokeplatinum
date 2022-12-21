	.include "macros/function.inc"
	.include "include/unk_020DE3AC.inc"

	

	.text


	arm_func_start sub_020DE3AC
sub_020DE3AC: ; 0x020DE3AC
	ldr ip, _020DE3B4 ; =sub_020DCED4
	bx ip
	; .align 2, 0
_020DE3B4: .word sub_020DCED4
	arm_func_end sub_020DE3AC