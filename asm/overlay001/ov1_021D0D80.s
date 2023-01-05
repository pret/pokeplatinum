	.include "macros/function.inc"
	.include "overlay001/ov1_021D0D80.inc"

	

	.text


	thumb_func_start ov1_021D0D80
ov1_021D0D80: ; 0x021D0D80
	ldr r0, _021D0D8C ; =0x021D0DA0
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
	bx lr
	nop
_021D0D8C: .word Unk_ov1_021D0DA0
	thumb_func_end ov1_021D0D80

	.section .sinit, 4

	.word ov1_021D0D80

	.bss

	.global Unk_ov1_021D0DA0
Unk_ov1_021D0DA0: ; 0x021D0DA0
	.space 0x4

	.global Unk_ov1_021D0DA4
Unk_ov1_021D0DA4: ; 0x021D0DA4
	.space 0x4

