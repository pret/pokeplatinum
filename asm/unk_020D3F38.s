	.include "macros/function.inc"
	.include "include/unk_020D3F38.inc"

	

	.text


	arm_func_start sub_020D3F38
sub_020D3F38: ; 0x020D3F38
	ldr r0, _020D3F48 ; =0x021015B0
	ldr ip, _020D3F4C ; =sub_020E16BC
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_020D3F48: .word 0x021015B0
_020D3F4C: .word sub_020E16BC
	arm_func_end sub_020D3F38