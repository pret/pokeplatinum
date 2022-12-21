	.include "macros/function.inc"
	.include "include/unk_020A8B74.inc"

	

	.text


	arm_func_start sub_020A8B74
sub_020A8B74: ; 0x020A8B74
	mov r2, #0
	str r2, [r0, #0]
	str r1, [r0, #4]
	mov r1, #1
	str r1, [r0, #8]
	ldr ip, _020A8B94 ; =sub_020A8B3C
	add r0, r0, #0xc
	bx ip
	; .align 2, 0
_020A8B94: .word sub_020A8B3C
	arm_func_end sub_020A8B74