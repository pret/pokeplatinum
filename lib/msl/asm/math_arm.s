	.include "macros/function.inc"
	.include "include/math_arm.inc"

	

	.text


	arm_func_start nan
nan: ; 0x020D3F38
	ldr r0, _020D3F48 ; =0x021015B0
	ldr ip, _020D3F4C ; =_f_ftod
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_020D3F48: .word 0x021015B0
_020D3F4C: .word _f_ftod
	arm_func_end nan