	.include "macros/function.inc"

	

	.data


	.global Unk_021015BC
Unk_021015BC: ; 0x021015BC
	.incbin "incbin/arm9_data.bin", 0x28DC, 0x28E0 - 0x28DC

	.global Unk_021015C0
Unk_021015C0: ; 0x021015C0
	.incbin "incbin/arm9_data.bin", 0x28E0, 0x28E4 - 0x28E0

	.global Unk_021015C4
Unk_021015C4: ; 0x021015C4
	.incbin "incbin/arm9_data.bin", 0x28E4, 0x28EC - 0x28E4

	.global Unk_021015CC
Unk_021015CC: ; 0x021015CC
	.incbin "incbin/arm9_data.bin", 0x28EC, 0x28F4 - 0x28EC

	.global Unk_021015D4
Unk_021015D4: ; 0x021015D4
	.incbin "incbin/arm9_data.bin", 0x28F4, 0x2900 - 0x28F4
	.word Unk_02101604

	.global Unk_021015E4
Unk_021015E4: ; 0x021015E4
	.word Unk_021015C4
	.word Unk_021016E8
	.word Unk_021016DC
	.word Unk_021016C4
	.word Unk_021015C0
	.word Unk_021016F8
	.word Unk_02101750
	.word Unk_021015BC

	.global Unk_02101604
Unk_02101604: ; 0x02101604
	.incbin "incbin/arm9_data.bin", 0x2924, 0x29E4 - 0x2924

	.global Unk_021016C4
Unk_021016C4: ; 0x021016C4
	.incbin "incbin/arm9_data.bin", 0x29E4, 0x29F0 - 0x29E4

	.global Unk_021016D0
Unk_021016D0: ; 0x021016D0
	.word Unk_021015E4
	.word Unk_021015D4
	.word Unk_021015CC

	.global Unk_021016DC
Unk_021016DC: ; 0x021016DC
	.incbin "incbin/arm9_data.bin", 0x29FC, 0x2A08 - 0x29FC

	.global Unk_021016E8
Unk_021016E8: ; 0x021016E8
	.incbin "incbin/arm9_data.bin", 0x2A08, 0x2A18 - 0x2A08

	.global Unk_021016F8
Unk_021016F8: ; 0x021016F8
	.incbin "incbin/arm9_data.bin", 0x2A18, 0x2A70 - 0x2A18

	.global Unk_02101750
Unk_02101750: ; 0x02101750
	.incbin "incbin/arm9_data.bin", 0x2A70, 0x86

