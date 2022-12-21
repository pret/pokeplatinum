	.include "macros/function.inc"
	.include "include/unk_02071CD0.inc"

	

	.text


	thumb_func_start sub_02071CD0
sub_02071CD0: ; 0x02071CD0
	push {r4, lr}
	bl sub_0203D174
	bl sub_02027860
	add r4, r0, #0
	bl sub_02027F80
	cmp r0, #6
	beq _02071CF8
	add r0, r4, #0
	mov r1, #6
	bl sub_02027F5C
	add r0, r4, #0
	mov r1, #6
	bl sub_02027F6C
	mov r1, #2
	strh r1, [r0]
_02071CF8:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_02071CD0