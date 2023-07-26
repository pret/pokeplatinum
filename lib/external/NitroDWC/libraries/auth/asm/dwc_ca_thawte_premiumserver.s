	.include "macros/function.inc"

	

	.data


	.global Unk_ov4_02216BA0
Unk_ov4_02216BA0: ; 0x02216BA0
	.short 0x1
	.short 0x1

	.global Unk_ov4_02216BA4
Unk_ov4_02216BA4: ; 0x02216BA4
	.word Unk_ov4_02216C38
	.word 0x80
	.word Unk_ov4_02216BB8
	.word 0x3
	.word Unk_ov4_02216BA0

	.global Unk_ov4_02216BB8
Unk_ov4_02216BB8: ; 0x02216BB8
	.incbin "incbin/dwc_ca_thawte_premiumserver.bin", 0x0, 0x80

	.global Unk_ov4_02216C38
Unk_ov4_02216C38: ; 0x02216C38
	.asciz "ZA, Western Cape, Cape Town, Thawte Consulting cc, Certification Services Division, Thawte Premium Server CA, premium-server@thawte.com"

