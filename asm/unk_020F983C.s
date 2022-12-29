	.include "macros/function.inc"

	

	.rodata


	.global FX_SinCosTable_
FX_SinCosTable_: ; 0x020F983C
	.incbin "incbin/arm9_rodata.bin", 0x14BFC, 0x4000

