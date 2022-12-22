	.include "macros/function.inc"
	.include "include/unk_020C6350.inc"

	

	.text


	arm_func_start PXI_Init
PXI_Init: ; 0x020C6350
	ldr ip, _020C6358 ; =PXI_InitFifo
	bx ip
	; .align 2, 0
_020C6358: .word PXI_InitFifo
	arm_func_end PXI_Init