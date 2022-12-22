	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020A5A2C
sub_020A5A2C: ; 0x020A5A2C
	mov r0, #0
	bx lr
	arm_func_end sub_020A5A2C

	arm_func_start sub_020A5A34
sub_020A5A34: ; 0x020A5A34
	mvn r0, #0
	bx lr
	arm_func_end sub_020A5A34

	.data


	.global Unk_02100DEC
Unk_02100DEC: ; 0x02100DEC
	.incbin "incbin/arm9_data.bin", 0x210C, 0x2110 - 0x210C

	.global Unk_02100DF0
Unk_02100DF0: ; 0x02100DF0
	.incbin "incbin/arm9_data.bin", 0x2110, 0x4

