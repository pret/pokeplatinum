	.include "macros/function.inc"

	

	.text


	arm_func_start AllocTexVram_
AllocTexVram_: ; 0x020A5A2C
	mov r0, #0
	bx lr
	arm_func_end AllocTexVram_

	arm_func_start FreeTexVram_
FreeTexVram_: ; 0x020A5A34
	mvn r0, #0
	bx lr
	arm_func_end FreeTexVram_

	.data


	.global Unk_02100DEC
Unk_02100DEC: ; 0x02100DEC
	.incbin "incbin/arm9_data.bin", 0x210C, 0x2110 - 0x210C

	.global Unk_02100DF0
Unk_02100DF0: ; 0x02100DF0
	.incbin "incbin/arm9_data.bin", 0x2110, 0x4

