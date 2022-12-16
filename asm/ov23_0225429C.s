	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov23_0225429C
ov23_0225429C: ; 0x0225429C
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _022542A8 ; =0x02256AB4
	ldrb r0, [r0, r1]
	bx lr
	nop
_022542A8: .word 0x02256AB4
	thumb_func_end ov23_0225429C

	thumb_func_start ov23_022542AC
ov23_022542AC: ; 0x022542AC
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _022542B8 ; =0x02256AB5
	ldrb r0, [r0, r1]
	bx lr
	nop
_022542B8: .word 0x02256AB5
	thumb_func_end ov23_022542AC

	thumb_func_start ov23_022542BC
ov23_022542BC: ; 0x022542BC
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _022542C8 ; =0x02256AB6
	ldrb r0, [r0, r1]
	bx lr
	nop
_022542C8: .word 0x02256AB6
	thumb_func_end ov23_022542BC

	.rodata


	.global Unk_ov23_02256AB4
Unk_ov23_02256AB4: ; 0x02256AB4
	.incbin "incbin/overlay23_rodata.bin", 0x7A8, 0x66

