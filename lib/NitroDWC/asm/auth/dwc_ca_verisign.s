	.include "macros/function.inc"

	

	.data


	.global Unk_ov4_02216DD8
Unk_ov4_02216DD8: ; 0x02216DD8
	.short 0x1
	.short 0x1

	.global Unk_ov4_02216DDC
Unk_ov4_02216DDC: ; 0x02216DDC
	.word Unk_ov4_02216E70
	.word 0x80
	.word Unk_ov4_02216DF0
	.word 0x3
	.word Unk_ov4_02216DD8

	.global Unk_ov4_02216DF0
Unk_ov4_02216DF0: ; 0x02216DF0
	.incbin "incbin/dwc_ca_verisign.bin", 0x0, 0x80

	.global Unk_ov4_02216E70
Unk_ov4_02216E70: ; 0x02216E70
	.asciz "US, VeriSign, Inc., Class 3 Public Primary Certification Authority - G2, (c) 1998 VeriSign, Inc. - For authorized use only, VeriSign Trust Network"
	.byte 0x0

	.global Unk_ov4_02216F04
Unk_ov4_02216F04: ; 0x02216F04
	.short 0x1
	.short 0x1

	.global Unk_ov4_02216F08
Unk_ov4_02216F08: ; 0x02216F08
	.word Unk_ov4_02216F1C
	.word 0x100
	.word Unk_ov4_02216FB8
	.word 0x3
	.word Unk_ov4_02216F04


	.global Unk_ov4_02216F1C
Unk_ov4_02216F1C: ; 0x02216F1C
	.asciz "US, VeriSign, Inc., VeriSign Trust Network, (c) 1999 VeriSign, Inc. - For authorized use only, VeriSign Class 3 Public Primary Certification Authority - G3"

	.global Unk_ov4_02216FB8
Unk_ov4_02216FB8: ; 0x02216FB8
	.incbin "incbin/dwc_ca_verisign.bin", 0x80, 0x100

	.global Unk_ov4_022170B8
Unk_ov4_022170B8: ; 0x022170B8
	.short 0x1
	.short 0x1

	.global Unk_ov4_022170BC
Unk_ov4_022170BC: ; 0x022170BC
	.word Unk_ov4_022170D0
	.word 0x80
	.word Unk_ov4_02217114
	.word 0x3
	.word Unk_ov4_022170B8

	.global Unk_ov4_022170D0
Unk_ov4_022170D0: ; 0x022170D0
	.asciz "US, VeriSign, Inc., Class 3 Public Primary Certification Authority"
	.byte 0x0

	.global Unk_ov4_02217114
Unk_ov4_02217114: ; 0x02217114
	.incbin "incbin/dwc_ca_verisign.bin", 0x180, 0x80

	.global Unk_ov4_02217194
Unk_ov4_02217194: ; 0x02217194
	.short 0x1
	.short 0x1

	.global Unk_ov4_02217198
Unk_ov4_02217198: ; 0x02217198
	.word Unk_ov4_022171AC
	.word 0x7D
	.word Unk_ov4_022171F0
	.word 0x3
	.word Unk_ov4_02217194

	.global Unk_ov4_022171AC
Unk_ov4_022171AC: ; 0x022171AC
	.asciz "US, RSA Data Security, Inc., Secure Server Certification Authority"
	.byte 0x0

	.global Unk_ov4_022171F0
Unk_ov4_022171F0: ; 0x022171F0
	.incbin "incbin/dwc_ca_verisign.bin", 0x200, 0x7D

