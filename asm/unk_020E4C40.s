	.include "macros/function.inc"
	.include "include/unk_020E4C40.inc"

	

	.rodata


	.global Unk_020E4C40
Unk_020E4C40: ; 0x020E4C40
	.incbin "incbin/arm9_rodata.bin", 0x0, 0x4 - 0x0

	.global Unk_020E4C44
Unk_020E4C44: ; 0x020E4C44
	.incbin "incbin/arm9_rodata.bin", 0x4, 0x1

