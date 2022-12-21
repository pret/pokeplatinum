	.include "macros/function.inc"
	.include "include/unk_0207A274.inc"

	

	.text


	thumb_func_start sub_0207A274
sub_0207A274: ; 0x0207A274
	push {r3, lr}
	bl sub_02027560
	bl sub_0207A280
	pop {r3, pc}
	thumb_func_end sub_0207A274

	thumb_func_start sub_0207A280
sub_0207A280: ; 0x0207A280
	push {r3, lr}
	bl sub_02027474
	cmp r0, #1
	bne _0207A28E
	mov r0, #1
	pop {r3, pc}
_0207A28E:
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0207A280

	thumb_func_start sub_0207A294
sub_0207A294: ; 0x0207A294
	push {r3, lr}
	cmp r0, #0
	bne _0207A2A4
	lsl r0, r1, #0x10
	lsr r0, r0, #0x10
	bl sub_020775A4
	add r1, r0, #0
_0207A2A4:
	add r0, r1, #0
	pop {r3, pc}
	thumb_func_end sub_0207A294