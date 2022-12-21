	.include "macros/function.inc"
	.include "include/unk_020556C4.inc"

	

	.text


	thumb_func_start sub_020556C4
sub_020556C4: ; 0x020556C4
	mov r3, #0
	add r2, r3, #0
_020556C8:
	lsl r1, r3, #2
	add r1, r0, r1
	strb r2, [r1, #6]
	strb r2, [r1, #7]
	strb r2, [r1, #8]
	strb r2, [r1, #9]
	add r1, r3, #1
	lsl r1, r1, #0x18
	lsr r3, r1, #0x18
	cmp r3, #6
	blo _020556C8
	str r2, [r0, #0]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	bx lr
	; .align 2, 0
	thumb_func_end sub_020556C4

	thumb_func_start sub_020556E8
sub_020556E8: ; 0x020556E8
	push {r4, lr}
	add r4, r0, #0
	asr r0, r1, #4
	lsr r0, r0, #0x1b
	add r0, r1, r0
	asr r1, r2, #4
	lsr r1, r1, #0x1b
	add r1, r2, r1
	lsl r0, r0, #0x13
	lsl r1, r1, #0x13
	ldrb r2, [r4, #4]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	cmp r0, r2
	bne _0205570C
	ldrb r2, [r4, #5]
	cmp r1, r2
	beq _0205573C
_0205570C:
	ldr r2, [r4, #0]
	lsl r2, r2, #2
	add r2, r4, r2
	strb r0, [r2, #6]
	ldr r0, [r4, #0]
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #7]
	ldr r0, [r4, #0]
	mov r1, #0xff
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #8]
	ldr r0, [r4, #0]
	mov r1, #1
	lsl r0, r0, #2
	add r0, r4, r0
	strb r1, [r0, #9]
	ldr r0, [r4, #0]
	mov r1, #6
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r4, #0]
_0205573C:
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_020556E8

	thumb_func_start sub_02055740
sub_02055740: ; 0x02055740
	push {r4, lr}
	add r4, r0, #0
	lsl r0, r1, #0x18
	lsl r1, r2, #0x18
	ldrb r2, [r4, #4]
	lsr r0, r0, #0x18
	lsr r1, r1, #0x18
	cmp r0, r2
	bne _02055758
	ldrb r2, [r4, #5]
	cmp r1, r2
	beq _0205578A
_02055758:
	ldr r2, [r4, #0]
	lsl r2, r2, #2
	add r2, r4, r2
	strb r0, [r2, #6]
	ldr r2, [r4, #0]
	lsl r2, r2, #2
	add r2, r4, r2
	strb r1, [r2, #7]
	ldr r2, [r4, #0]
	lsl r2, r2, #2
	add r2, r4, r2
	strb r3, [r2, #8]
	ldr r2, [r4, #0]
	mov r3, #1
	lsl r2, r2, #2
	add r2, r4, r2
	strb r3, [r2, #9]
	strb r0, [r4, #4]
	strb r1, [r4, #5]
	ldr r0, [r4, #0]
	mov r1, #6
	add r0, r0, #1
	bl sub_020E1F6C
	str r1, [r4, #0]
_0205578A:
	pop {r4, pc}
	thumb_func_end sub_02055740