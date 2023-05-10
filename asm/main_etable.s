	.include "macros/function.inc"	

	.extern Unk_020E4558
	.extern Unk_020E4560
	.extern Unk_020E4568
	.extern Unk_020E4570
	.extern Unk_020E4578
	.extern Unk_020E4580
	.extern Unk_020E4588
	.extern Unk_020E4590
	.extern Unk_020E45A0
	.extern Unk_020E45B4
	.extern Unk_020E45CC
	.extern Unk_020E45D4
	.extern Unk_020E45E4
	.extern Unk_020E45EC
	.extern Unk_020E4600
	.extern Unk_020E4608
	.extern Unk_020E4610
	.extern Unk_020E4628
	.extern Unk_020E4644
	.extern Unk_020E465C

	.section .exception, 4

	.global Exception_Table_Index
Exception_Table_Index: ; 0x020E4670
	.incbin "incbin/main_etable.bin", 0x118, 0x164
	.word Unk_020E4558
	.incbin "incbin/main_etable.bin",0x280,0x68
	.word Unk_020E4560
	.incbin "incbin/main_etable.bin",0x2EC,0x2C
	.word Unk_020E4568
	.incbin "incbin/main_etable.bin",0x31C,0x8C
	.word Unk_020E4570
	.incbin "incbin/main_etable.bin",0x3AC,0x8
	.word Unk_020E4578
	.incbin "incbin/main_etable.bin",0x3B8,0x2C
	.word Unk_020E4580
	.incbin "incbin/main_etable.bin",0x3E8,0x80
	.word Unk_020E4588
	.incbin "incbin/main_etable.bin",0x46C,0x2C
	.word Unk_020E4590
	.incbin "incbin/main_etable.bin",0x49C,0x2C
	.word Unk_020E45A0
	.incbin "incbin/main_etable.bin",0x4CC,0x68
	.word Unk_020E45B4
	.incbin "incbin/main_etable.bin",0x538,0x2C
	.word Unk_020E45CC
	.incbin "incbin/main_etable.bin",0x568,0x8
	.word Unk_020E45D4
	.incbin "incbin/main_etable.bin",0x574,0x8
	.word Unk_020E45E4
	.incbin "incbin/main_etable.bin",0x580,0x14
	.word Unk_020E45EC
	.incbin "incbin/main_etable.bin",0x598,0x8
	.word Unk_020E4600
	.incbin "incbin/main_etable.bin",0x5A4,0x8
	.word Unk_020E4608
	.incbin "incbin/main_etable.bin",0x5B0,0x38
	.word Unk_020E4610
	.incbin "incbin/main_etable.bin",0x5EC,0x8
	.word Unk_020E4628
	.incbin "incbin/main_etable.bin",0x5F8,0x14
	.word Unk_020E4644
	.incbin "incbin/main_etable.bin",0x610,0x8
	.word Unk_020E465C
	.incbin "incbin/main_etable.bin",0x61C,0xCC