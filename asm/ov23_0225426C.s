	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	thumb_func_start ov23_0225426C
ov23_0225426C: ; 0x0225426C
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _02254278 ; =0x02256A00
	ldrb r0, [r0, r1]
	bx lr
	nop
_02254278: .word 0x02256A00
	thumb_func_end ov23_0225426C

	thumb_func_start ov23_0225427C
ov23_0225427C: ; 0x0225427C
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _02254288 ; =0x02256A01
	ldrb r0, [r0, r1]
	bx lr
	nop
_02254288: .word 0x02256A01
	thumb_func_end ov23_0225427C

	thumb_func_start ov23_0225428C
ov23_0225428C: ; 0x0225428C
	lsl r1, r0, #1
	add r1, r0, r1
	ldr r0, _02254298 ; =0x02256A02
	ldrb r0, [r0, r1]
	bx lr
	nop
_02254298: .word 0x02256A02
	thumb_func_end ov23_0225428C

	.rodata


	.global Unk_ov23_02256A00
Unk_ov23_02256A00: ; 0x02256A00
	.incbin "incbin/overlay23_rodata.bin", 0x6F4, 0xB4

