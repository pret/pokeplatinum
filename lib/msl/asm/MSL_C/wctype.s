	.include "macros/function.inc"

	

	.rodata


	.global Unk_020FE99C
Unk_020FE99C: ; 0x020FE99C
	.incbin "incbin/wctype.bin", 0x0, 0x100

	.global Unk_020FEA9C
Unk_020FEA9C: ; 0x020FEA9C
	.incbin "incbin/wctype.bin", 0x100, 0x200 - 0x100

	.global Unk_020FEB9C
Unk_020FEB9C: ; 0x020FEB9C
	.incbin "incbin/wctype.bin", 0x200, 0x100

