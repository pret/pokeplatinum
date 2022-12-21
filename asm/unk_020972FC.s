	.include "macros/function.inc"
	.include "include/unk_020972FC.inc"

	

	.text


	thumb_func_start sub_020972FC
sub_020972FC: ; 0x020972FC
	push {r3, lr}
	mov r1, #0xc
	bl sub_02018144
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	pop {r3, pc}
	thumb_func_end sub_020972FC

	thumb_func_start sub_02097320
sub_02097320: ; 0x02097320
	push {r4, r5, r6, lr}
	sub r1, #0x95
	lsl r1, r1, #0x10
	lsr r6, r1, #0x10
	add r1, r6, #0
	add r5, r0, #0
	add r4, r2, #0
	bl sub_02097344
	cmp r4, #1
	bne _02097338
	strb r6, [r5, #8]
_02097338:
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_02097320

	thumb_func_start sub_0209733C
sub_0209733C: ; 0x0209733C
	strb r1, [r0, #9]
	strb r2, [r0, #0xa]
	strb r3, [r0, #0xb]
	bx lr
	thumb_func_end sub_0209733C

	thumb_func_start sub_02097344
sub_02097344: ; 0x02097344
	push {r3, r4, r5, r6}
	lsr r6, r1, #0x1f
	lsl r5, r1, #0x1b
	lsr r2, r1, #5
	lsl r4, r2, #2
	sub r5, r5, r6
	mov r1, #0x1b
	ror r5, r1
	ldr r3, [r0, r4]
	mov r2, #1
	add r1, r6, r5
	lsl r2, r1
	add r1, r3, #0
	orr r1, r2
	str r1, [r0, r4]
	pop {r3, r4, r5, r6}
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097344

	thumb_func_start sub_02097368
sub_02097368: ; 0x02097368
	push {r4, r5}
	lsr r5, r1, #0x1f
	lsl r4, r1, #0x1b
	lsr r1, r1, #5
	lsl r1, r1, #2
	sub r4, r4, r5
	mov r3, #0x1b
	ror r4, r3
	mov r2, #1
	add r3, r5, r4
	add r4, r2, #0
	lsl r4, r3
	ldr r0, [r0, r1]
	tst r0, r4
	bne _02097388
	mov r2, #0
_02097388:
	lsl r0, r2, #0x18
	lsr r0, r0, #0x18
	pop {r4, r5}
	bx lr
	thumb_func_end sub_02097368

	thumb_func_start sub_02097390
sub_02097390: ; 0x02097390
	ldrb r3, [r0, #9]
	strb r3, [r1]
	ldrb r0, [r0, #0xa]
	strb r0, [r2]
	bx lr
	; .align 2, 0
	thumb_func_end sub_02097390