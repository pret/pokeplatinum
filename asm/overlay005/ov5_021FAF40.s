	.include "macros/function.inc"

	
		.extern ov5_021EBA0C
    .extern ov5_021EC3F0
    .extern ov5_021EBA34
    .extern ov5_021EBA60
    .extern ov5_021EBA8C
	.extern sub_02067870
    .extern sub_02067890
    .extern sub_02067950
    .extern sub_02067968
    .extern sub_02067998
	.extern ov5_021EBA0C
    .extern ov5_021EBF50
    .extern ov5_021EBA34
    .extern ov5_021EBA60
    .extern ov5_021EBA8C
	.extern ov5_021ECA70
    .extern ov5_021ECA90
    .extern ov5_021ECABC
    .extern ov5_021ECAC4
    .extern ov5_021ECAF0
	.extern ov5_021EBA0C
    .extern ov5_021EC454
    .extern ov5_021EBA34
    .extern ov5_021EBA60
    .extern ov5_021EBA8C
	.extern ov5_021EC824
    .extern ov5_021EC8EC
    .extern ov5_021EC858
    .extern ov5_021EC86C
    .extern ov5_021EC898
	.extern ov5_021EB2EC
    .extern ov5_021EB398
    .extern ov5_021EB314
    .extern ov5_021EB328
    .extern ov5_021EB354
	.extern ov5_021EBA0C
    .extern ov5_021EC4BC
    .extern ov5_021EBA34
    .extern ov5_021EBA60
    .extern ov5_021EBA8C
	.extern ov5_021EC734
    .extern ov5_021EC75C
    .extern ov5_021EC760
    .extern ov5_021EC778
    .extern ov5_021EC790
	.extern ov5_021EBA0C
    .extern ov5_021EC15C
    .extern ov5_021EBA34
    .extern ov5_021EBA60
    .extern ov5_021EBA8C
	.extern ov5_021EC938
    .extern ov5_021EC9E8
    .extern ov5_021EC95C
    .extern ov5_021EC970
    .extern ov5_021EC9A0
	.extern ov5_021EB2EC
    .extern ov5_021EB438
    .extern ov5_021EB314
    .extern ov5_021EB328
    .extern ov5_021EB354
	.extern ov5_021EC7B8
    .extern ov5_021EC75C
    .extern ov5_021EC760
    .extern ov5_021EC778
    .extern ov5_021EC7D0
	.extern ov5_021EB7F8
    .extern ov5_021EB8B8
    .extern ov5_021EB834
    .extern ov5_021EB848
    .extern ov5_021EB874
	.extern ov5_021EB2EC
    .extern ov5_021EB944
    .extern ov5_021EB314
    .extern ov5_021EB328
    .extern ov5_021EB354
	.extern ov5_021EB2EC
    .extern ov5_021EB720
    .extern ov5_021EB314
    .extern ov5_021EB328
    .extern ov5_021EB354
	.extern ov5_021EB2EC
    .extern ov5_021EB40C
    .extern ov5_021EB314
    .extern ov5_021EB328
    .extern ov5_021EB354
	.extern ov5_021ECB34
    .extern ov5_021ECB58
    .extern ov5_021ECB78
    .extern ov5_021ECAC4
    .extern ov5_021ECAF0
	.extern ov5_021EBA0C
    .extern ov5_021EC5C0
    .extern ov5_021EBA34
    .extern ov5_021EBA60
    .extern ov5_021EBA8C
	.extern ov5_021EBA0C
    .extern ov5_021EC554
    .extern ov5_021EBA34
    .extern ov5_021EBA60
    .extern ov5_021EBA8C
	.extern ov5_021EBA0C
    .extern ov5_021EBAD0
    .extern ov5_021EBA34
    .extern ov5_021EBA60
    .extern ov5_021EBA8C
	.extern ov5_021ECE18
    .extern ov5_021ECE30
    .extern ov5_021ECE34
    .extern ov5_021ECE38
    .extern ov5_021ECE3C

	.rodata

	.global Unk_ov5_021FAF40
Unk_ov5_021FAF40: ; 0x021FAF40
	.incbin "incbin/overlay5_rodata.bin", 0x262C, 0x2634 - 0x262C

	.global Unk_ov5_021FAF48
Unk_ov5_021FAF48: ; 0x021FAF48
	.incbin "incbin/overlay5_rodata.bin", 0x2634, 0x263C - 0x2634

	.global Unk_ov5_021FAF50
Unk_ov5_021FAF50: ; 0x021FAF50
	.incbin "incbin/overlay5_rodata.bin", 0x263C, 0x264C - 0x263C

	.global Unk_ov5_021FAF60
Unk_ov5_021FAF60: ; 0x021FAF60
	.word ov5_021EBA0C
    .word ov5_021EC3F0
    .word ov5_021EBA34
    .word ov5_021EBA60
    .word ov5_021EBA8C

	.global Unk_ov5_021FAF74
Unk_ov5_021FAF74: ; 0x021FAF74
	.word sub_02067870
    .word sub_02067890
    .word sub_02067950
    .word sub_02067968
    .word sub_02067998

	.global Unk_ov5_021FAF88
Unk_ov5_021FAF88: ; 0x021FAF88
	.word ov5_021EBA0C
    .word ov5_021EBF50
    .word ov5_021EBA34
    .word ov5_021EBA60
    .word ov5_021EBA8C

	.global Unk_ov5_021FAF9C
Unk_ov5_021FAF9C: ; 0x021FAF9C
	.word ov5_021ECA70
    .word ov5_021ECA90
    .word ov5_021ECABC
    .word ov5_021ECAC4
    .word ov5_021ECAF0

	.global Unk_ov5_021FAFB0
Unk_ov5_021FAFB0: ; 0x021FAFB0
	.word ov5_021EBA0C
    .word ov5_021EC454
    .word ov5_021EBA34
    .word ov5_021EBA60
    .word ov5_021EBA8C

	.global Unk_ov5_021FAFC4
Unk_ov5_021FAFC4: ; 0x021FAFC4
	.word ov5_021EC824
    .word ov5_021EC8EC
    .word ov5_021EC858
    .word ov5_021EC86C
    .word ov5_021EC898

	.global Unk_ov5_021FAFD8
Unk_ov5_021FAFD8: ; 0x021FAFD8
	.word ov5_021EB2EC
    .word ov5_021EB398
    .word ov5_021EB314
    .word ov5_021EB328
    .word ov5_021EB354

	.global Unk_ov5_021FAFEC
Unk_ov5_021FAFEC: ; 0x021FAFEC
	.word ov5_021EBA0C
    .word ov5_021EC4BC
    .word ov5_021EBA34
    .word ov5_021EBA60
    .word ov5_021EBA8C

	.global Unk_ov5_021FB000
Unk_ov5_021FB000: ; 0x021FB000
	.word ov5_021EC734
    .word ov5_021EC75C
    .word ov5_021EC760
    .word ov5_021EC778
    .word ov5_021EC790

	.global Unk_ov5_021FB014
Unk_ov5_021FB014: ; 0x021FB014
	.word ov5_021EBA0C
    .word ov5_021EC15C
    .word ov5_021EBA34
    .word ov5_021EBA60
    .word ov5_021EBA8C

	.global Unk_ov5_021FB028
Unk_ov5_021FB028: ; 0x021FB028
	.word ov5_021EC938
    .word ov5_021EC9E8
    .word ov5_021EC95C
    .word ov5_021EC970
    .word ov5_021EC9A0

	.global Unk_ov5_021FB03C
Unk_ov5_021FB03C: ; 0x021FB03C
	.word ov5_021EB2EC
    .word ov5_021EB438
    .word ov5_021EB314
    .word ov5_021EB328
    .word ov5_021EB354

	.global Unk_ov5_021FB050
Unk_ov5_021FB050: ; 0x021FB050
	.word ov5_021EC7B8
    .word ov5_021EC75C
    .word ov5_021EC760
    .word ov5_021EC778
    .word ov5_021EC7D0

	.global Unk_ov5_021FB064
Unk_ov5_021FB064: ; 0x021FB064
	.word ov5_021EB7F8
    .word ov5_021EB8B8
    .word ov5_021EB834
    .word ov5_021EB848
    .word ov5_021EB874

	.global Unk_ov5_021FB078
Unk_ov5_021FB078: ; 0x021FB078
	.word ov5_021EB2EC
    .word ov5_021EB944
    .word ov5_021EB314
    .word ov5_021EB328
    .word ov5_021EB354

	.global Unk_ov5_021FB08C
Unk_ov5_021FB08C: ; 0x021FB08C
	.word ov5_021EB2EC
    .word ov5_021EB720
    .word ov5_021EB314
    .word ov5_021EB328
    .word ov5_021EB354

	.global Unk_ov5_021FB0A0
Unk_ov5_021FB0A0: ; 0x021FB0A0
	.word ov5_021EB2EC
    .word ov5_021EB40C
    .word ov5_021EB314
    .word ov5_021EB328
    .word ov5_021EB354

	.global Unk_ov5_021FB0B4
Unk_ov5_021FB0B4: ; 0x021FB0B4
	.word ov5_021ECB34
    .word ov5_021ECB58
    .word ov5_021ECB78
    .word ov5_021ECAC4
    .word ov5_021ECAF0

	.global Unk_ov5_021FB0C8
Unk_ov5_021FB0C8: ; 0x021FB0C8
	.word ov5_021EBA0C
    .word ov5_021EC5C0
    .word ov5_021EBA34
    .word ov5_021EBA60
    .word ov5_021EBA8C

	.global Unk_ov5_021FB0DC
Unk_ov5_021FB0DC: ; 0x021FB0DC
	.word ov5_021EBA0C
    .word ov5_021EC554
    .word ov5_021EBA34
    .word ov5_021EBA60
    .word ov5_021EBA8C

	.global Unk_ov5_021FB0F0
Unk_ov5_021FB0F0: ; 0x021FB0F0
	.word ov5_021EBA0C
    .word ov5_021EBAD0
    .word ov5_021EBA34
    .word ov5_021EBA60
    .word ov5_021EBA8C

	.global Unk_ov5_021FB104
Unk_ov5_021FB104: ; 0x021FB104
	.incbin "incbin/overlay5_rodata.bin", 0x27F0, 0x2808 - 0x27F0

	.global Unk_ov5_021FB11C
Unk_ov5_021FB11C: ; 0x021FB11C
	.incbin "incbin/overlay5_rodata.bin", 0x2808, 0x2820 - 0x2808

	.global Unk_ov5_021FB134
Unk_ov5_021FB134: ; 0x021FB134
	.incbin "incbin/overlay5_rodata.bin", 0x2820, 0x2838 - 0x2820

	.global Unk_ov5_021FB14C
Unk_ov5_021FB14C: ; 0x021FB14C
	.incbin "incbin/overlay5_rodata.bin", 0x2838, 0x2850 - 0x2838

	.global Unk_ov5_021FB164
Unk_ov5_021FB164: ; 0x021FB164
	.incbin "incbin/overlay5_rodata.bin", 0x2850, 0x2868 - 0x2850

	.global Unk_ov5_021FB17C
Unk_ov5_021FB17C: ; 0x021FB17C
	.incbin "incbin/overlay5_rodata.bin", 0x2868, 0x2880 - 0x2868

	.global Unk_ov5_021FB194
Unk_ov5_021FB194: ; 0x021FB194
	.incbin "incbin/overlay5_rodata.bin", 0x2880, 0x2898 - 0x2880

	.global Unk_ov5_021FB1AC
Unk_ov5_021FB1AC: ; 0x021FB1AC
	.incbin "incbin/overlay5_rodata.bin", 0x2898, 0x28B0 - 0x2898

	.global Unk_ov5_021FB1C4
Unk_ov5_021FB1C4: ; 0x021FB1C4
	.incbin "incbin/overlay5_rodata.bin", 0x28B0, 0x28C8 - 0x28B0

	.global Unk_ov5_021FB1DC
Unk_ov5_021FB1DC: ; 0x021FB1DC
	.incbin "incbin/overlay5_rodata.bin", 0x28C8, 0x28EC - 0x28C8

	.global Unk_ov5_021FB200
Unk_ov5_021FB200: ; 0x021FB200
	.incbin "incbin/overlay5_rodata.bin", 0x28EC, 0x2910 - 0x28EC

	.global Unk_ov5_021FB224
Unk_ov5_021FB224: ; 0x021FB224
	.incbin "incbin/overlay5_rodata.bin", 0x2910, 0x2934 - 0x2910

	.global Unk_ov5_021FB248
Unk_ov5_021FB248: ; 0x021FB248
	.incbin "incbin/overlay5_rodata.bin", 0x2934, 0x2970 - 0x2934

	.global Unk_ov5_021FB284
Unk_ov5_021FB284: ; 0x021FB284
	.incbin "incbin/overlay5_rodata.bin", 0x2970, 0x29AC - 0x2970

	.global Unk_ov5_021FB2C0
Unk_ov5_021FB2C0: ; 0x021FB2C0
	.incbin "incbin/overlay5_rodata.bin", 0x29AC, 0x29E8 - 0x29AC

	.global Unk_ov5_021FB2FC
Unk_ov5_021FB2FC: ; 0x021FB2FC
	.incbin "incbin/overlay5_rodata.bin", 0x29E8, 0x2A24 - 0x29E8

	.global Unk_ov5_021FB338
Unk_ov5_021FB338: ; 0x021FB338
	.incbin "incbin/overlay5_rodata.bin", 0x2A24, 0x2A6C - 0x2A24

	.global Unk_ov5_021FB380
Unk_ov5_021FB380: ; 0x021FB380
	.incbin "incbin/overlay5_rodata.bin", 0x2A6C, 0x2AD8 - 0x2A6C

	.global Unk_ov5_021FB3EC
Unk_ov5_021FB3EC: ; 0x021FB3EC
	.incbin "incbin/overlay5_rodata.bin", 0x2AD8, 0x2B5C - 0x2AD8

	.global Unk_ov5_021FB470
Unk_ov5_021FB470: ; 0x021FB470
	.word ov5_021ECE18
    .word ov5_021ECE30
    .word ov5_021ECE34
    .word ov5_021ECE38
    .word ov5_021ECE3C

	.global Unk_ov5_021FB484
Unk_ov5_021FB484: ; 0x021FB484
	.incbin "incbin/overlay5_rodata.bin", 0x2B70, 0x2C08 - 0x2B70

	.global Unk_ov5_021FB51C
Unk_ov5_021FB51C: ; 0x021FB51C
	.incbin "incbin/overlay5_rodata.bin", 0x2C08, 0x2CA8 - 0x2C08

	.global Unk_ov5_021FB5BC
Unk_ov5_021FB5BC: ; 0x021FB5BC
	.incbin "incbin/overlay5_rodata.bin", 0x2CA8, 0x2D68 - 0x2CA8

	.global Unk_ov5_021FB67C
Unk_ov5_021FB67C: ; 0x021FB67C
	.incbin "incbin/overlay5_rodata.bin", 0x2D68, 0x3068 - 0x2D68

	.global Unk_ov5_021FB97C
Unk_ov5_021FB97C: ; 0x021FB97C
	.incbin "incbin/overlay5_rodata.bin", 0x3068, 0x3880 - 0x3068

	.global Unk_ov5_021FC194
Unk_ov5_021FC194: ; 0x021FC194
	.incbin "incbin/overlay5_rodata.bin", 0x3880, 0x40A0 - 0x3880

	.global Unk_ov5_021FC9B4
Unk_ov5_021FC9B4: ; 0x021FC9B4
	.incbin "incbin/overlay5_rodata.bin", 0x40A0, 0x4E68 - 0x40A0

	.global Unk_ov5_021FD77C
Unk_ov5_021FD77C: ; 0x021FD77C
	.incbin "incbin/overlay5_rodata.bin", 0x4E68, 0x1B90

