	.include "macros/function.inc"

	

	.data


	.global Unk_ov4_02216AB8
Unk_ov4_02216AB8: ; 0x02216AB8
	.incbin "incbin/overlay4_data.bin", 0xC38, 0xC3C - 0xC38

	.global Unk_ov4_02216ABC
Unk_ov4_02216ABC: ; 0x02216ABC
	.incbin "incbin/overlay4_data.bin", 0xC3C, 0xC50 - 0xC3C

	.global Unk_ov4_02216AD0
Unk_ov4_02216AD0: ; 0x02216AD0
	.incbin "incbin/overlay4_data.bin", 0xC50, 0xCA0 - 0xC50

	.global Unk_ov4_02216B20
Unk_ov4_02216B20: ; 0x02216B20
	.incbin "incbin/overlay4_data.bin", 0xCA0, 0x80

