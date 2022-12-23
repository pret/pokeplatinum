	.include "macros/function.inc"

	.text


	arm_func_start ov4_021FD4E0
ov4_021FD4E0: ; 0x021FD4E0
	cmp r0, #0x32
	bxlt lr
	cmp r0, #0xfe
	bxgt lr
	ldr r2, _021FD4FC ; =0x02219B38
	str r1, [r2, r0, lsl #2]
	bx lr
	; .align 2, 0
_021FD4FC: .word 0x02219B38
	arm_func_end ov4_021FD4E0

	.data


	.global Unk_ov4_02219A00
Unk_ov4_02219A00: ; 0x02219A00
	.incbin "incbin/overlay4_data.bin", 0x3B80, 0x3B84 - 0x3B80

	.global Unk_ov4_02219A04
Unk_ov4_02219A04: ; 0x02219A04
	.incbin "incbin/overlay4_data.bin", 0x3B84, 0x3B8C - 0x3B84

	.global Unk_ov4_02219A0C
Unk_ov4_02219A0C: ; 0x02219A0C
	.incbin "incbin/overlay4_data.bin", 0x3B8C, 0x3B94 - 0x3B8C

	.global Unk_ov4_02219A14
Unk_ov4_02219A14: ; 0x02219A14
	.incbin "incbin/overlay4_data.bin", 0x3B94, 0x3B9C - 0x3B94

	.global Unk_ov4_02219A1C
Unk_ov4_02219A1C: ; 0x02219A1C
	.incbin "incbin/overlay4_data.bin", 0x3B9C, 0x3BA4 - 0x3B9C

	.global Unk_ov4_02219A24
Unk_ov4_02219A24: ; 0x02219A24
	.incbin "incbin/overlay4_data.bin", 0x3BA4, 0x3BAC - 0x3BA4

	.global Unk_ov4_02219A2C
Unk_ov4_02219A2C: ; 0x02219A2C
	.incbin "incbin/overlay4_data.bin", 0x3BAC, 0x3BB4 - 0x3BAC

	.global Unk_ov4_02219A34
Unk_ov4_02219A34: ; 0x02219A34
	.incbin "incbin/overlay4_data.bin", 0x3BB4, 0x3BBC - 0x3BB4

	.global Unk_ov4_02219A3C
Unk_ov4_02219A3C: ; 0x02219A3C
	.incbin "incbin/overlay4_data.bin", 0x3BBC, 0x3BC4 - 0x3BBC

	.global Unk_ov4_02219A44
Unk_ov4_02219A44: ; 0x02219A44
	.incbin "incbin/overlay4_data.bin", 0x3BC4, 0x3BCC - 0x3BC4

	.global Unk_ov4_02219A4C
Unk_ov4_02219A4C: ; 0x02219A4C
	.incbin "incbin/overlay4_data.bin", 0x3BCC, 0x3BD4 - 0x3BCC

	.global Unk_ov4_02219A54
Unk_ov4_02219A54: ; 0x02219A54
	.incbin "incbin/overlay4_data.bin", 0x3BD4, 0x3BDC - 0x3BD4

	.global Unk_ov4_02219A5C
Unk_ov4_02219A5C: ; 0x02219A5C
	.incbin "incbin/overlay4_data.bin", 0x3BDC, 0x3BE4 - 0x3BDC

	.global Unk_ov4_02219A64
Unk_ov4_02219A64: ; 0x02219A64
	.incbin "incbin/overlay4_data.bin", 0x3BE4, 0x3BF0 - 0x3BE4

	.global Unk_ov4_02219A70
Unk_ov4_02219A70: ; 0x02219A70
	.incbin "incbin/overlay4_data.bin", 0x3BF0, 0x3BFC - 0x3BF0

	.global Unk_ov4_02219A7C
Unk_ov4_02219A7C: ; 0x02219A7C
	.incbin "incbin/overlay4_data.bin", 0x3BFC, 0x3C08 - 0x3BFC

	.global Unk_ov4_02219A88
Unk_ov4_02219A88: ; 0x02219A88
	.incbin "incbin/overlay4_data.bin", 0x3C08, 0x3C14 - 0x3C08

	.global Unk_ov4_02219A94
Unk_ov4_02219A94: ; 0x02219A94
	.incbin "incbin/overlay4_data.bin", 0x3C14, 0x3C20 - 0x3C14

	.global Unk_ov4_02219AA0
Unk_ov4_02219AA0: ; 0x02219AA0
	.incbin "incbin/overlay4_data.bin", 0x3C20, 0x3C2C - 0x3C20

	.global Unk_ov4_02219AAC
Unk_ov4_02219AAC: ; 0x02219AAC
	.incbin "incbin/overlay4_data.bin", 0x3C2C, 0x3C38 - 0x3C2C

	.global Unk_ov4_02219AB8
Unk_ov4_02219AB8: ; 0x02219AB8
	.incbin "incbin/overlay4_data.bin", 0x3C38, 0x3C44 - 0x3C38

	.global Unk_ov4_02219AC4
Unk_ov4_02219AC4: ; 0x02219AC4
	.incbin "incbin/overlay4_data.bin", 0x3C44, 0x3C50 - 0x3C44

	.global Unk_ov4_02219AD0
Unk_ov4_02219AD0: ; 0x02219AD0
	.incbin "incbin/overlay4_data.bin", 0x3C50, 0x3C5C - 0x3C50

	.global Unk_ov4_02219ADC
Unk_ov4_02219ADC: ; 0x02219ADC
	.incbin "incbin/overlay4_data.bin", 0x3C5C, 0x3C68 - 0x3C5C

	.global Unk_ov4_02219AE8
Unk_ov4_02219AE8: ; 0x02219AE8
	.incbin "incbin/overlay4_data.bin", 0x3C68, 0x3C74 - 0x3C68

	.global Unk_ov4_02219AF4
Unk_ov4_02219AF4: ; 0x02219AF4
	.incbin "incbin/overlay4_data.bin", 0x3C74, 0x3C80 - 0x3C74

	.global Unk_ov4_02219B00
Unk_ov4_02219B00: ; 0x02219B00
	.incbin "incbin/overlay4_data.bin", 0x3C80, 0x3C8C - 0x3C80

	.global Unk_ov4_02219B0C
Unk_ov4_02219B0C: ; 0x02219B0C
	.incbin "incbin/overlay4_data.bin", 0x3C8C, 0x3C98 - 0x3C8C

	.global Unk_ov4_02219B18
Unk_ov4_02219B18: ; 0x02219B18
	.incbin "incbin/overlay4_data.bin", 0x3C98, 0x3CA8 - 0x3C98

	.global Unk_ov4_02219B28
Unk_ov4_02219B28: ; 0x02219B28
	.incbin "incbin/overlay4_data.bin", 0x3CA8, 0x3CB8 - 0x3CA8

	.global Unk_ov4_02219B38
Unk_ov4_02219B38: ; 0x02219B38
	.incbin "incbin/overlay4_data.bin", 0x3CB8, 0x1FC
    .incbin "incbin/overlay4_data.bin", 0x3CB8 + 0x1FC, 0x1FC

