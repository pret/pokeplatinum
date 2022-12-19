	.include "macros/function.inc"
	.include "include/ov4_0221A13C.inc"

	

	.data


	.global Unk_ov4_0221A13C
Unk_ov4_0221A13C: ; 0x0221A13C
	.incbin "incbin/overlay4_data.bin", 0x42BC, 0x42D4 - 0x42BC

	.global Unk_ov4_0221A154
Unk_ov4_0221A154: ; 0x0221A154
	.incbin "incbin/overlay4_data.bin", 0x42D4, 0x42EC - 0x42D4

	.global Unk_ov4_0221A16C
Unk_ov4_0221A16C: ; 0x0221A16C
	.incbin "incbin/overlay4_data.bin", 0x42EC, 0x18

