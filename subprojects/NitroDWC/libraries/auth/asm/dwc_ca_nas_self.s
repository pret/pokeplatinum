	.include "macros/function.inc"

	

	.data


	.global Unk_ov4_02216AB8
Unk_ov4_02216AB8: ; 0x02216AB8
	.short 0x1
	.short 0x1

	.global Unk_ov4_02216ABC
Unk_ov4_02216ABC: ; 0x02216ABC
	.word Unk_ov4_02216AD0
	.word 0x80
	.word Unk_ov4_02216B20
	.word 0x3
	.word Unk_ov4_02216AB8

	.global Unk_ov4_02216AD0
Unk_ov4_02216AD0: ; 0x02216AD0
	.asciz "US, Washington, Nintendo of America Inc, NOA, Nintendo CA, ca@noa.nintendo.com"
	.byte 0x0

	.global Unk_ov4_02216B20
Unk_ov4_02216B20: ; 0x02216B20
	.incbin "incbin/dwc_ca_nas_self.bin", 0x0, 0x80

