	.include "macros/function.inc"
	.include "include/unk_020FE99C.inc"

	

	.rodata


	.global Unk_020FE99C
Unk_020FE99C: ; 0x020FE99C
	.incbin "incbin/arm9_rodata.bin", 0x19D5C, 0x19E5C - 0x19D5C

	.global Unk_020FEA9C
Unk_020FEA9C: ; 0x020FEA9C
	.incbin "incbin/arm9_rodata.bin", 0x19E5C, 0x19F5C - 0x19E5C

	.global Unk_020FEB9C
Unk_020FEB9C: ; 0x020FEB9C
	.incbin "incbin/arm9_rodata.bin", 0x19F5C, 0x100

