	.include "macros/function.inc"


	.data


	.global Unk_ov60_02229B20
Unk_ov60_02229B20: ; 0x02229B20
	.incbin "incbin/overlay60_data.bin", 0xCE0, 0xCE4 - 0xCE0

	.global Unk_ov60_02229B24
Unk_ov60_02229B24: ; 0x02229B24
	.incbin "incbin/overlay60_data.bin", 0xCE4, 0xCF8 - 0xCE4

	.global Unk_ov60_02229B38
Unk_ov60_02229B38: ; 0x02229B38
	.incbin "incbin/overlay60_data.bin", 0xCF8, 0xD48 - 0xCF8

	.global Unk_ov60_02229B88
Unk_ov60_02229B88: ; 0x02229B88
	.incbin "incbin/overlay60_data.bin", 0xD48, 0x80

