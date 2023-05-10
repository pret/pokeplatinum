	.include "macros/function.inc"

	

	.data


	.global Unk_ov4_02216670
Unk_ov4_02216670: ; 0x02216670
	.short 0x1
	.short 0x1

	.global Unk_ov4_02216674
Unk_ov4_02216674: ; 0x02216674
	.word Unk_ov4_02216688
	.short 0x100, 0x0
	.word Unk_ov4_022166BC
	.short 0x3, 0x0
	.word Unk_ov4_02216670

	.global Unk_ov4_02216688
Unk_ov4_02216688: ; 0x02216688
	.asciz "BE, GlobalSign nv-sa, Root CA, GlobalSign Root CA"
	.short 0x0

	.global Unk_ov4_022166BC
Unk_ov4_022166BC: ; 0x022166BC
	.incbin "incbin/dwc_ca_cybertrust.bin", 0x0, 0x100

	.global Unk_ov4_022167BC
Unk_ov4_022167BC: ; 0x022167BC
	.short 0x1
	.short 0x1

	.global Unk_ov4_022167C0
Unk_ov4_022167C0: ; 0x022167C0
	.word Unk_ov4_022167D4
	.word 0x100
	.word Unk_ov4_0221680C
	.word 0x3
	.word Unk_ov4_022167BC

	.global Unk_ov4_022167D4
Unk_ov4_022167D4: ; 0x022167D4
	.ascii "IE, Baltimore, CyberTrust, Baltimore CyberTrust Root"
	.word 0x0

	.global Unk_ov4_0221680C
Unk_ov4_0221680C: ; 0x0221680C
	.incbin "incbin/dwc_ca_cybertrust.bin", 0x100, 0x200 - 0x100

	.global Unk_ov4_0221690C
Unk_ov4_0221690C: ; 0x0221690C
	.short 0x1
	.short 0x1

	.global Unk_ov4_02216910
Unk_ov4_02216910: ; 0x02216910
	.word Unk_ov4_02216924
	.word 0x80
	.word Unk_ov4_02216974
	.word 0x3
	.word Unk_ov4_0221690C

	.global Unk_ov4_02216924
Unk_ov4_02216924: ; 0x02216924
	.asciz "US, GTE Corporation, GTE CyberTrust Solutions, Inc., GTE CyberTrust Global Root"

	.global Unk_ov4_02216974
Unk_ov4_02216974: ; 0x02216974
	.incbin "incbin/dwc_ca_cybertrust.bin", 0x200, 0x280 - 0x200

	.global Unk_ov4_022169F4
Unk_ov4_022169F4: ; 0x022169F4
	.short 0x1
	.short 0x1

	.global Unk_ov4_022169F8
Unk_ov4_022169F8: ; 0x022169F8
	.word Unk_ov4_02216A0C
	.word 0x80
	.word Unk_ov4_02216A38
	.word 0x3
	.word Unk_ov4_022169F4

	.global Unk_ov4_02216A0C
Unk_ov4_02216A0C: ; 0x02216A0C
	.ascii "US, GTE Corporation, GTE CyberTrust Root"
	.word 0x0

	.global Unk_ov4_02216A38
Unk_ov4_02216A38: ; 0x02216A38
	.incbin "incbin/dwc_ca_cybertrust.bin", 0x280, 0x80

