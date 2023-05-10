	.include "macros/function.inc"

	

	.data


	.global Unk_ov4_02217270
Unk_ov4_02217270: ; 0x02217270
	.short 0x1
	.short 0x1

	.global Unk_ov4_02217274
Unk_ov4_02217274: ; 0x02217274
	.word Unk_ov4_02217288
	.word 0x100
	.word Unk_ov4_022172B8
	.word 0x3
	.word Unk_ov4_02217270

	.global Unk_ov4_02217288
Unk_ov4_02217288: ; 0x02217288
	.asciz "GlobalSign Root CA - R2, GlobalSign, GlobalSign"

	.global Unk_ov4_022172B8
Unk_ov4_022172B8: ; 0x022172B8
	.incbin "incbin/dwc_ca_globalsign.bin", 0x0, 0x100

