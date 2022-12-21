	.include "macros/function.inc"
	.include "include/unk_0202CBE4.inc"

	

	.text


	thumb_func_start sub_0202CBE4
sub_0202CBE4: ; 0x0202CBE4
	mov r1, #0
	strh r1, [r0]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CBE4

	thumb_func_start sub_0202CBF0
sub_0202CBF0: ; 0x0202CBF0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldrh r6, [r5]
	ldr r0, _0202CC54 ; =0x000003E7
	cmp r6, r0
	bne _0202CC08
	ldrb r0, [r5, #2]
	cmp r0, #0x3b
	bne _0202CC08
	ldrb r0, [r5, #3]
	cmp r0, #0x3b
	beq _0202CC50
_0202CC08:
	ldrb r0, [r5, #3]
	ldrb r4, [r5, #2]
	add r7, r0, r1
	cmp r7, #0x3b
	bls _0202CC4A
	add r0, r7, #0
	mov r1, #0x3c
	bl sub_020E2178
	add r4, r4, r0
	add r0, r7, #0
	mov r1, #0x3c
	bl sub_020E2178
	add r7, r1, #0
	cmp r4, #0x3b
	bls _0202CC4A
	add r0, r4, #0
	mov r1, #0x3c
	bl sub_020E2178
	add r6, r6, r0
	add r0, r4, #0
	mov r1, #0x3c
	bl sub_020E2178
	ldr r0, _0202CC54 ; =0x000003E7
	add r4, r1, #0
	cmp r6, r0
	blo _0202CC4A
	mov r4, #0x3b
	add r6, r0, #0
	add r7, r4, #0
_0202CC4A:
	strh r6, [r5]
	strb r4, [r5, #2]
	strb r7, [r5, #3]
_0202CC50:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0202CC54: .word 0x000003E7
	thumb_func_end sub_0202CBF0

	thumb_func_start sub_0202CC58
sub_0202CC58: ; 0x0202CC58
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0202CC58

	thumb_func_start sub_0202CC5C
sub_0202CC5C: ; 0x0202CC5C
	ldrb r0, [r0, #2]
	bx lr
	thumb_func_end sub_0202CC5C

	thumb_func_start sub_0202CC60
sub_0202CC60: ; 0x0202CC60
	ldrb r0, [r0, #3]
	bx lr
	thumb_func_end sub_0202CC60