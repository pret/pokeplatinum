	.include "macros/function.inc"

	

	.rodata


	.global Unk_ov5_021FF6B8
Unk_ov5_021FF6B8: ; 0x021FF6B8
	.incbin "incbin/overlay5_rodata.bin", 0x6DA4, 0x6E30 - 0x6DA4

	.global Unk_ov5_021FF744
Unk_ov5_021FF744: ; 0x021FF744
	.incbin "incbin/overlay5_rodata.bin", 0x6E30, 0x6EBC - 0x6E30

	.global Unk_ov5_021FF7D0
Unk_ov5_021FF7D0: ; 0x021FF7D0
	.incbin "incbin/overlay5_rodata.bin", 0x6EBC, 0x6F48 - 0x6EBC

	.global Unk_ov5_021FF85C
Unk_ov5_021FF85C: ; 0x021FF85C
	.incbin "incbin/overlay5_rodata.bin", 0x6F48, 0x1A4

