	.include "macros/function.inc"
	.include "include/unk_02098988.inc"

	

	.text


	thumb_func_start sub_02098988
sub_02098988: ; 0x02098988
	cmp r0, #0
	bne _0209899E
	ldr r0, _020989B0 ; =0x02100D90
	mov r1, #0xc2
	str r1, [r0, #4]
	mov r1, #0xb1
	lsl r1, r1, #2
	str r1, [r0, #0]
	add r1, r1, #2
	str r1, [r0, #8]
	bx lr
_0209899E:
	ldr r0, _020989B0 ; =0x02100D90
	mov r1, #0x4b
	str r1, [r0, #4]
	ldr r1, _020989B4 ; =0x000002C3
	str r1, [r0, #0]
	add r1, r1, #2
	str r1, [r0, #8]
	bx lr
	nop
_020989B0: .word 0x02100D90
_020989B4: .word 0x000002C3
	thumb_func_end sub_02098988

	thumb_func_start sub_020989B8
sub_020989B8: ; 0x020989B8
	ldr r0, _020989C0 ; =0x02100D90
	ldr r0, [r0, #4]
	bx lr
	nop
_020989C0: .word 0x02100D90
	thumb_func_end sub_020989B8

	thumb_func_start sub_020989C4
sub_020989C4: ; 0x020989C4
	ldr r0, _020989CC ; =0x02100D90
	ldr r0, [r0, #0]
	bx lr
	nop
_020989CC: .word 0x02100D90
	thumb_func_end sub_020989C4

	thumb_func_start sub_020989D0
sub_020989D0: ; 0x020989D0
	ldr r0, _020989D8 ; =0x02100D90
	ldr r0, [r0, #8]
	bx lr
	nop
_020989D8: .word 0x02100D90
	thumb_func_end sub_020989D0

	.data


	.global Unk_02100D90
Unk_02100D90: ; 0x02100D90
	.incbin "incbin/arm9_data.bin", 0x20B0, 0x20B4 - 0x20B0

	.global Unk_02100D94
Unk_02100D94: ; 0x02100D94
	.incbin "incbin/arm9_data.bin", 0x20B4, 0x20B8 - 0x20B4

	.global Unk_02100D98
Unk_02100D98: ; 0x02100D98
	.incbin "incbin/arm9_data.bin", 0x20B8, 0x4

