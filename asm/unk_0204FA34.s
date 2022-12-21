	.include "macros/function.inc"
	.include "include/unk_0204FA34.inc"

	

	.text


	thumb_func_start sub_0204FA34
sub_0204FA34: ; 0x0204FA34
	push {r4, r5, r6, lr}
	add r4, r3, #0
	add r5, r0, #0
	ldrb r0, [r4, #1]
	add r6, r2, #0
	add r0, r0, #1
	strb r0, [r4, #1]
	bl sub_0203608C
	cmp r5, r0
	beq _0204FA4E
	ldrh r0, [r6, #4]
	strh r0, [r4, #6]
_0204FA4E:
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0204FA34

	thumb_func_start sub_0204FA50
sub_0204FA50: ; 0x0204FA50
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	mov r3, #0
	add r0, sp, #4
	strb r3, [r0]
	add r0, sp, #4
	str r0, [sp]
	add r0, r1, #0
	mov r1, #5
	add r4, r2, #0
	bl sub_02030280
	cmp r4, #3
	bne _0204FA88
	add r0, r5, #0
	bl sub_0203068C
	add r6, r0, #0
	mov r0, #0x6a
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r6, #0
	mov r1, #0x6a
	mov r3, #0
	bl sub_020306E4
_0204FA88:
	add r0, r5, #0
	bl sub_0203068C
	add r5, r0, #0
	add r0, r4, #0
	bl sub_0205E50C
	add r6, r0, #0
	add r0, r4, #0
	bl sub_0205E50C
	bl sub_0205E6A8
	add r2, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r3, #0
	bl sub_020306E4
	add sp, #8
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0204FA50