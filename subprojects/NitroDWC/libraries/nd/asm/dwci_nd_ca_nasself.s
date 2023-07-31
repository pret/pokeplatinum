	.include "macros/function.inc"


	.data


	.global Unk_ov60_02229B20
Unk_ov60_02229B20: ; 0x02229B20
	.short 0x1
	.short 0x1

	.global Unk_ov60_02229B24
Unk_ov60_02229B24: ; 0x02229B24
	.word Unk_ov60_02229B38
	.word 0x80
	.word Unk_ov60_02229B88
	.word 0x3
	.word Unk_ov60_02229B20

	.global Unk_ov60_02229B38
Unk_ov60_02229B38: ; 0x02229B38
	.ascii "US, Washington, Nintendo of America Inc, NOA, Nintendo CA, ca@noa.nintendo.com"
	.space 0x2

	.global Unk_ov60_02229B88
Unk_ov60_02229B88: ; 0x02229B88
	.incbin "incbin/dwci_nd_ca_nasself.bin", 0x0, 0x80

