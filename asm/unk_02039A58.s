	.include "macros/function.inc"

	

	.text


	thumb_func_start sub_02039A58
sub_02039A58: ; 0x02039A58
	ldr r0, _02039A5C ; =0x020E5F24
	bx lr
	; .align 2, 0
_02039A5C: .word 0x020E5F24
	thumb_func_end sub_02039A58

	thumb_func_start sub_02039A60
sub_02039A60: ; 0x02039A60
	mov r0, #3
	bx lr
	thumb_func_end sub_02039A60

	.rodata


	.global Unk_020E5F24
Unk_020E5F24: ; 0x020E5F24
	.incbin "incbin/arm9_rodata.bin", 0x12E4, 0x24

