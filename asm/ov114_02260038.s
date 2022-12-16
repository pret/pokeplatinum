	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov114_02260038
ov114_02260038: ; 0x02260038
	ldr r0, _0226003C ; =0x022603E4
	bx lr
	; .align 2, 0
_0226003C: .word 0x022603E4
	thumb_func_end ov114_02260038

	thumb_func_start ov114_02260040
ov114_02260040: ; 0x02260040
	mov r0, #5
	bx lr
	thumb_func_end ov114_02260040

	.rodata


	.global Unk_ov114_022603E4
Unk_ov114_022603E4: ; 0x022603E4
	.incbin "incbin/overlay114_rodata.bin", 0x31C, 0x3C

