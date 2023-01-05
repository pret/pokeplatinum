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


	.global NNS_GfdDefaultFuncAllocTexVram
NNS_GfdDefaultFuncAllocTexVram: ; 0x02100DEC
	.word AllocTexVram_

	.global NNS_GfdDefaultFuncFreeTexVram
NNS_GfdDefaultFuncFreeTexVram: ; 0x02100DF0
	.word FreeTexVram_

