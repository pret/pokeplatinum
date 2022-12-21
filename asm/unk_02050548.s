	.include "macros/function.inc"
	.include "include/unk_02050548.inc"

	

	.text


	thumb_func_start sub_02050548
sub_02050548: ; 0x02050548
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r6, r0, #0
	ldrb r0, [r4, #1]
	add r5, r2, #0
	add r0, r0, #1
	strb r0, [r4, #1]
	bl sub_0203608C
	cmp r6, r0
	beq _02050566
	ldrh r0, [r5, #4]
	strh r0, [r4, #8]
	ldrh r0, [r5, #6]
	strh r0, [r4, #0xa]
_02050566:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02050548