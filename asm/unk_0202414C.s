	.include "macros/function.inc"
	.include "include/unk_0202414C.inc"

	

	.text


	thumb_func_start sub_0202414C
sub_0202414C: ; 0x0202414C
	push {r3, r4}
	ldr r3, [r0, #0xc]
	mov r2, #0
	sub r3, r3, #1
	beq _0202416A
	ldr r4, [r0, #0]
_02024158:
	ldrh r3, [r4, #2]
	cmp r3, r1
	bhi _0202416A
	ldr r3, [r0, #0xc]
	add r2, r2, #1
	sub r3, r3, #1
	add r4, r4, #2
	cmp r2, r3
	blo _02024158
_0202416A:
	ldr r1, [r0, #4]
	ldrb r3, [r1, r2]
	add r1, sp, #0
	strb r3, [r1]
	ldr r0, [r0, #8]
	ldrb r2, [r0, r2]
	strb r2, [r1, #1]
	ldrb r0, [r1]
	lsl r1, r2, #8
	orr r0, r1
	pop {r3, r4}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202414C

	thumb_func_start sub_02024184
sub_02024184: ; 0x02024184
	ldr r2, [r0, #0]
	str r2, [r1, #0xc]
	add r2, r0, #4
	str r2, [r1, #0]
	ldr r0, [r1, #0xc]
	lsl r0, r0, #1
	add r2, r2, r0
	str r2, [r1, #4]
	ldr r0, [r1, #0xc]
	add r0, r2, r0
	str r0, [r1, #8]
	bx lr
	thumb_func_end sub_02024184