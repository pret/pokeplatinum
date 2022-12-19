	.include "macros/function.inc"
	.include "include/ov4_02216BA0.inc"

	

	.data


	.global Unk_ov4_02216BA0
Unk_ov4_02216BA0: ; 0x02216BA0
	.incbin "incbin/overlay4_data.bin", 0xD20, 0xD24 - 0xD20

	.global Unk_ov4_02216BA4
Unk_ov4_02216BA4: ; 0x02216BA4
	.incbin "incbin/overlay4_data.bin", 0xD24, 0xD38 - 0xD24

	.global Unk_ov4_02216BB8
Unk_ov4_02216BB8: ; 0x02216BB8
	.incbin "incbin/overlay4_data.bin", 0xD38, 0xDB8 - 0xD38

	.global Unk_ov4_02216C38
Unk_ov4_02216C38: ; 0x02216C38
	.incbin "incbin/overlay4_data.bin", 0xDB8, 0x88

