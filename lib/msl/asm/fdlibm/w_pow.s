	.include "macros/function.inc"
	.include "include/w_pow.inc"

	

	.text


	arm_func_start pow
pow: ; 0x020DE3AC
	ldr ip, _020DE3B4 ; =__ieee754_pow
	bx ip
	; .align 2, 0
_020DE3B4: .word __ieee754_pow
	arm_func_end pow