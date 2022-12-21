	.include "macros/function.inc"
	.include "include/unk_0201E3BC.inc"

	

	.text


	thumb_func_start sub_0201E3BC
sub_0201E3BC: ; 0x0201E3BC
	push {r3, lr}
	sub r0, r0, r2
	sub r2, r1, r3
	add r1, r0, #0
	mul r1, r0
	add r0, r2, #0
	mul r0, r2
	add r0, r1, r0
	lsl r0, r0, #0xc
	bl sub_020BCFF0
	asr r0, r0, #0xc
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0201E3BC