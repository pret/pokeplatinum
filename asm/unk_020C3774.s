	.include "macros/function.inc"

	
	.extern Unk_021CCFB0

	.text


	arm_func_start OSi_SetTimerReserved
OSi_SetTimerReserved: ; 0x020C3774
	ldr r1, _020C378C ; =0x021CCFB0
	mov r2, #1
	ldrh r3, [r1]
	orr r0, r3, r2, lsl r0
	strh r0, [r1]
	bx lr
	; .align 2, 0
_020C378C: .word Unk_021CCFB0
	arm_func_end OSi_SetTimerReserved

	.bss


	.global Unk_021CCFB0
Unk_021CCFB0: ; 0x021CCFB0
	.space 0x2

