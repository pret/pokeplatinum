	.include "macros/function.inc"
	.include "include/ov12_02226998.inc"

	

	.text


	thumb_func_start ov12_02226998
ov12_02226998: ; 0x02226998
	cmp r0, #0x54
	blo _022269A0
	mov r0, #0
	bx lr
_022269A0:
	lsl r1, r0, #2
	ldr r0, _022269A8 ; =0x02239EEC
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_022269A8: .word 0x02239EEC
	thumb_func_end ov12_02226998

	thumb_func_start ov12_022269AC
ov12_022269AC: ; 0x022269AC
	cmp r0, #0x21
	blo _022269B4
	mov r0, #0
	bx lr
_022269B4:
	lsl r1, r0, #2
	ldr r0, _022269BC ; =0x02239E68
	ldr r0, [r0, r1]
	bx lr
	; .align 2, 0
_022269BC: .word 0x02239E68
	thumb_func_end ov12_022269AC

	.rodata


	.global Unk_ov12_02239E64
Unk_ov12_02239E64: ; 0x02239E64
	.incbin "incbin/overlay12_rodata.bin", 0x18D0, 0x18D4 - 0x18D0

	.global Unk_ov12_02239E68
Unk_ov12_02239E68: ; 0x02239E68
	.incbin "incbin/overlay12_rodata.bin", 0x18D4, 0x1958 - 0x18D4

	.global Unk_ov12_02239EEC
Unk_ov12_02239EEC: ; 0x02239EEC
	.incbin "incbin/overlay12_rodata.bin", 0x1958, 0x150

