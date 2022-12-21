	.include "macros/function.inc"	


	.section .exception, 4

	.global Exception_Table_Index
Exception_Table_Index: ; 0x020E4670
	.incbin "incbin/arm9_exception.bin", 0x118, 0x5D0