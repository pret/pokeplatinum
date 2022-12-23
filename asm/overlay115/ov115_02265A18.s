	.include "macros/function.inc"

	

	.text


	thumb_func_start ov115_02265A18
ov115_02265A18: ; 0x02265A18
	ldr r0, _02265A1C ; =0x0226664C
	bx lr
	; .align 2, 0
_02265A1C: .word 0x0226664C
	thumb_func_end ov115_02265A18

	thumb_func_start ov115_02265A20
ov115_02265A20: ; 0x02265A20
	mov r0, #8
	bx lr
	thumb_func_end ov115_02265A20

	.rodata


	.global Unk_ov115_0226664C
Unk_ov115_0226664C: ; 0x0226664C
	.incbin "incbin/overlay115_rodata.bin", 0xB6C, 0x60

