	.include "macros/function.inc"
	.include "include/ov83_0223D144.inc"

	

	.text


	thumb_func_start ov83_0223D144
ov83_0223D144: ; 0x0223D144
	ldr r0, _0223D148 ; =0x02240390
	bx lr
	; .align 2, 0
_0223D148: .word 0x02240390
	thumb_func_end ov83_0223D144

	thumb_func_start ov83_0223D14C
ov83_0223D14C: ; 0x0223D14C
	mov r0, #0xb
	bx lr
	thumb_func_end ov83_0223D14C

	.rodata


	.global Unk_ov83_02240390
Unk_ov83_02240390: ; 0x02240390
	.incbin "incbin/overlay83_rodata.bin", 0x188, 0x84

