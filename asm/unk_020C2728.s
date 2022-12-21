	.include "macros/function.inc"
	.include "include/unk_020C2728.inc"

	

	.text


	arm_func_start sub_020C2728
sub_020C2728: ; 0x020C2728
	mov r0, #0
	bx lr
	arm_func_end sub_020C2728

	arm_func_start sub_020C2730
sub_020C2730: ; 0x020C2730
	ldr r0, _020C2740 ; =0x82000001
	ldr r1, _020C2744 ; =0x0210115C
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020C2740: .word 0x82000001
_020C2744: .word 0x0210115C
	arm_func_end sub_020C2730

	.data


	.global Unk_0210115C
Unk_0210115C: ; 0x0210115C
	.incbin "incbin/arm9_data.bin", 0x247C, 0x4

