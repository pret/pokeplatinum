	.include "macros/function.inc"
	.include "include/unk_020711C8.inc"

	

	.text


	thumb_func_start sub_020711C8
sub_020711C8: ; 0x020711C8
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r2, #0
	mov r1, #8
	bl sub_02018184
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0207A268
	add r1, r5, #0
	bl sub_0207A0FC
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r4, r5, r6, pc}
	thumb_func_end sub_020711C8