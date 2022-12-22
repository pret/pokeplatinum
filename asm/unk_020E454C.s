	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020E454C
sub_020E454C: ; 0x020E454C
	ldr ip, [pc, #0x0] ; =sys_exit
	bx ip
_020E4554:
	.word 0x020E28E4
	arm_func_end sub_020E454C