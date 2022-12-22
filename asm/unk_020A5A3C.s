	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020A5A3C
sub_020A5A3C: ; 0x020A5A3C
	mov r0, #0
	bx lr
	arm_func_end sub_020A5A3C

	arm_func_start sub_020A5A44
sub_020A5A44: ; 0x020A5A44
	mvn r0, #0
	bx lr
	arm_func_end sub_020A5A44

	.data


	.global Unk_02100DF4
Unk_02100DF4: ; 0x02100DF4
	.incbin "incbin/arm9_data.bin", 0x2114, 0x2118 - 0x2114

	.global Unk_02100DF8
Unk_02100DF8: ; 0x02100DF8
	.incbin "incbin/arm9_data.bin", 0x2118, 0x4

