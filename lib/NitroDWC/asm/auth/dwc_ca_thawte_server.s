	.include "macros/function.inc"

	

	.data


	.global Unk_ov4_02216CC0
Unk_ov4_02216CC0: ; 0x02216CC0
	.short 0x1
	.short 0x1

	.global Unk_ov4_02216CC4
Unk_ov4_02216CC4: ; 0x02216CC4
	.word Unk_ov4_02216CD8
	.word 0x80
	.word Unk_ov4_02216D58
	.word 0x3
	.word Unk_ov4_02216CC0

	.global Unk_ov4_02216CD8
Unk_ov4_02216CD8: ; 0x02216CD8
	.asciz "ZA, Western Cape, Cape Town, Thawte Consulting cc, Certification Services Division, Thawte Server CA, server-certs@thawte.com"
	.short 0x0

	.global Unk_ov4_02216D58
Unk_ov4_02216D58: ; 0x02216D58
	.incbin "incbin/dwc_ca_thawte_server.bin", 0x0, 0x80

