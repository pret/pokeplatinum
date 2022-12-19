	.include "macros/function.inc"
	.include "include/ov4_02217270.inc"

	

	.data


	.global Unk_ov4_02217270
Unk_ov4_02217270: ; 0x02217270
	.incbin "incbin/overlay4_data.bin", 0x13F0, 0x13F4 - 0x13F0

	.global Unk_ov4_02217274
Unk_ov4_02217274: ; 0x02217274
	.incbin "incbin/overlay4_data.bin", 0x13F4, 0x1408 - 0x13F4

	.global Unk_ov4_02217288
Unk_ov4_02217288: ; 0x02217288
	.incbin "incbin/overlay4_data.bin", 0x1408, 0x1438 - 0x1408

	.global Unk_ov4_022172B8
Unk_ov4_022172B8: ; 0x022172B8
	.incbin "incbin/overlay4_data.bin", 0x1438, 0x100

