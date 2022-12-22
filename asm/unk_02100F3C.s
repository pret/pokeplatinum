	.include "macros/function.inc"

	

	.data


	.global Unk_02100F3C
Unk_02100F3C: ; 0x02100F3C
	.incbin "incbin/arm9_data.bin", 0x225C, 0x2268 - 0x225C

	.global Unk_02100F48
Unk_02100F48: ; 0x02100F48
	.incbin "incbin/arm9_data.bin", 0x2268, 0x2274 - 0x2268

	.global Unk_02100F54
Unk_02100F54: ; 0x02100F54
	.incbin "incbin/arm9_data.bin", 0x2274, 0x10

