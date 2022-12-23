	.include "macros/function.inc"
	.include "overlay097/ov97_0222D2F8.inc"

	

	.text


	thumb_func_start ov97_0222D2F8
ov97_0222D2F8: ; 0x0222D2F8
	ldr r3, _0222D304 ; =sub_02032798
	add r2, r0, #0
	ldr r0, _0222D308 ; =0x0223D704
	mov r1, #2
	bx r3
	nop
_0222D304: .word sub_02032798
_0222D308: .word 0x0223D704
	thumb_func_end ov97_0222D2F8

	.rodata


	.global Unk_ov97_0223D704
Unk_ov97_0223D704: ; 0x0223D704
	.incbin "incbin/overlay97_rodata.bin", 0x90, 0x18

