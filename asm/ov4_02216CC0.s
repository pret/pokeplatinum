	.include "macros/function.inc"

	

	.data


	.global Unk_ov4_02216CC0
Unk_ov4_02216CC0: ; 0x02216CC0
	.incbin "incbin/overlay4_data.bin", 0xE40, 0xE44 - 0xE40

	.global Unk_ov4_02216CC4
Unk_ov4_02216CC4: ; 0x02216CC4
	.incbin "incbin/overlay4_data.bin", 0xE44, 0xE58 - 0xE44

	.global Unk_ov4_02216CD8
Unk_ov4_02216CD8: ; 0x02216CD8
	.incbin "incbin/overlay4_data.bin", 0xE58, 0xED8 - 0xE58

	.global Unk_ov4_02216D58
Unk_ov4_02216D58: ; 0x02216D58
	.incbin "incbin/overlay4_data.bin", 0xED8, 0x80

