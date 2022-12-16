	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov65_02236474
ov65_02236474: ; 0x02236474
	lsl r1, r0, #2
	ldr r0, _0223647C ; =0x02238BF8
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_0223647C: .word 0x02238BF8
	thumb_func_end ov65_02236474

	thumb_func_start ov65_02236480
ov65_02236480: ; 0x02236480
	lsl r1, r0, #2
	ldr r0, _02236488 ; =0x02239E4C
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_02236488: .word 0x02239E4C
	thumb_func_end ov65_02236480

	.rodata


	.global Unk_ov65_02238BF8
Unk_ov65_02238BF8: ; 0x02238BF8
	.incbin "incbin/overlay65_rodata.bin", 0x2CC, 0x2DC - 0x2CC

	.global Unk_ov65_02238C08
Unk_ov65_02238C08: ; 0x02238C08
	.incbin "incbin/overlay65_rodata.bin", 0x2DC, 0x59C - 0x2DC

	.global Unk_ov65_02238EC8
Unk_ov65_02238EC8: ; 0x02238EC8
	.incbin "incbin/overlay65_rodata.bin", 0x59C, 0x85C - 0x59C

	.global Unk_ov65_02239188
Unk_ov65_02239188: ; 0x02239188
	.incbin "incbin/overlay65_rodata.bin", 0x85C, 0xC24 - 0x85C

	.global Unk_ov65_02239550
Unk_ov65_02239550: ; 0x02239550
	.incbin "incbin/overlay65_rodata.bin", 0xC24, 0x4D0


	.data


	.global Unk_ov65_02239E4C
Unk_ov65_02239E4C: ; 0x02239E4C
	.incbin "incbin/overlay65_data.bin", 0x22C, 0x10

