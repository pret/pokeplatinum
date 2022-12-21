	.include "macros/function.inc"
	.include "include/unk_020C3774.inc"

	

	.text


	arm_func_start sub_020C3774
sub_020C3774: ; 0x020C3774
	ldr r1, _020C378C ; =0x021CCFB0
	mov r2, #1
	ldrh r3, [r1]
	orr r0, r3, r2, lsl r0
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C378C: .word 0x021CCFB0
	arm_func_end sub_020C3774

	.bss


	.global Unk_021CCFB0
Unk_021CCFB0: ; 0x021CCFB0
	.space 0x2

