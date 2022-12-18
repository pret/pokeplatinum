	.include "macros/function.inc"
	.include "include/ov5_021F0E84.inc"

	

	.text


	thumb_func_start ov5_021F0E84
ov5_021F0E84: ; 0x021F0E84
	lsl r1, r0, #2
	ldr r0, _021F0E8C ; =0x021FFA54
	ldrh r0, [r0, r1]
	bx lr
	; .align 2, 0
_021F0E8C: .word 0x021FFA54
	thumb_func_end ov5_021F0E84

	thumb_func_start ov5_021F0E90
ov5_021F0E90: ; 0x021F0E90
	ldr r2, _021F0EA8 ; =0x000001E7
	cmp r0, r2
	bne _021F0E9E
	cmp r1, #1
	bne _021F0E9E
	mov r0, #0
	bx lr
_021F0E9E:
	lsl r1, r0, #2
	ldr r0, _021F0EAC ; =0x021FFA56
	ldrh r0, [r0, r1]
	bx lr
	nop
_021F0EA8: .word 0x000001E7
_021F0EAC: .word 0x021FFA56
	thumb_func_end ov5_021F0E90

	.rodata


	.global Unk_ov5_021FFA54
Unk_ov5_021FFA54: ; 0x021FFA54
	.incbin "incbin/overlay5_rodata.bin", 0x7140, 0x7B8

