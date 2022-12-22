	.include "macros/function.inc"

	

	.text


	arm_func_start OS_IsRunOnEmulator
OS_IsRunOnEmulator: ; 0x020C2728
	mov r0, #0
	bx lr
	arm_func_end OS_IsRunOnEmulator

	arm_func_start OS_GetConsoleType
OS_GetConsoleType: ; 0x020C2730
	ldr r0, _020C2740 ; =0x82000001
	ldr r1, _020C2744 ; =0x0210115C
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020C2740: .word 0x82000001
_020C2744: .word 0x0210115C
	arm_func_end OS_GetConsoleType

	.data


	.global Unk_0210115C
Unk_0210115C: ; 0x0210115C
	.incbin "incbin/arm9_data.bin", 0x247C, 0x4

