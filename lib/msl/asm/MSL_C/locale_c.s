	.include "macros/function.inc"
	.include "include/locale_c.inc"
	

	.data


	.global Unk_021015BC
Unk_021015BC: ; 0x021015BC
	.space 0x4

	.global Unk_021015C0
Unk_021015C0: ; 0x021015C0
	.byte 0x25, 0x54
	.space 0x2

	.global Unk_021015C4
Unk_021015C4: ; 0x021015C4
	.asciz "AM|PM"
	.space 0x2

	.global Unk_021015CC
Unk_021015CC: ; 0x021015CC
	.word __mbtowc_noconv
	.word __wctomb_noconv

	.global Unk_021015D4
Unk_021015D4: ; 0x021015D4
	.word 0x20
	.word 0x6E
	.space 0x4
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
	.incbin "incbin/locale_c.bin", 0x0, 0xC0

	.global Unk_021016C4
Unk_021016C4: ; 0x021016C4
	.ascii "%m/%d/%y"
	.space 0x4

	.global Unk_021016D0
Unk_021016D0: ; 0x021016D0
	.word Unk_021015E4
	.word Unk_021015D4
	.word Unk_021015CC

	.global Unk_021016DC
Unk_021016DC: ; 0x021016DC
	.asciz "%I:%M:%S %p"

	.global Unk_021016E8
Unk_021016E8: ; 0x021016E8
	.ascii "%a %b %e %T %Y"
	.space 0x2

	.global Unk_021016F8
Unk_021016F8: ; 0x021016F8
	.ascii "Sun|Sunday|Mon|Monday|Tue|Tuesday|Wed|Wednesday|Thu|Thursday|Fri|Friday|Sat|Saturday"
	.space 0x4

	.global Unk_02101750
Unk_02101750: ; 0x02101750
	.asciz "Jan|January|Feb|February|Mar|March|Apr|April|May|May|Jun|June|Jul|July|Aug|August|Sep|September|Oct|October|Nov|November|Dec|December"
	.space 0x2

