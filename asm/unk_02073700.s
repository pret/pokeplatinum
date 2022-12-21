	.include "macros/function.inc"
	.include "include/unk_02073700.inc"

	

	.text


	thumb_func_start sub_02073700
sub_02073700: ; 0x02073700
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	str r1, [sp]
	add r7, r2, #0
	bl sub_02025E38
	add r4, r0, #0
	add r0, r6, #0
	bl sub_0202C878
	add r5, r0, #0
	add r0, r6, #0
	bl sub_0202D750
	str r0, [sp, #4]
	add r0, r7, #0
	mov r1, #0
	mov r2, #0xe4
	bl sub_020C4CF4
	add r0, r4, #0
	bl sub_02025EF0
	add r1, r7, #0
	add r1, #0xa8
	mov r2, #0x10
	bl sub_020C4DB0
	add r0, r4, #0
	bl sub_02025F20
	add r1, r7, #0
	add r1, #0xbc
	str r0, [r1, #0]
	ldr r0, _02073830 ; =0x020E4C40
	ldrb r1, [r0]
	add r0, r7, #0
	add r0, #0xb8
	strb r1, [r0]
	ldr r0, _02073834 ; =0x020E4C44
	ldrb r1, [r0]
	add r0, r7, #0
	add r0, #0xb9
	strb r1, [r0]
	add r0, r5, #0
	bl sub_0202C8C0
	add r1, r7, #0
	add r1, #0xba
	strb r0, [r1]
	add r0, r5, #0
	bl sub_0202C8C4
	add r1, r7, #0
	add r1, #0xbb
	strb r0, [r1]
	add r0, r4, #0
	bl sub_02025F30
	add r1, r7, #0
	add r1, #0xc8
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	lsl r0, r0, #0x1f
	ldrb r1, [r1]
	mov r2, #2
	lsr r0, r0, #0x1e
	bic r1, r2
	orr r1, r0
	add r0, r7, #0
	add r0, #0xc8
	strb r1, [r0]
	add r0, r4, #0
	bl sub_02025F8C
	add r1, r0, #0
	add r0, r7, #0
	add r0, #0xc8
	ldrb r0, [r0]
	mov r2, #1
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	bl sub_0205CA14
	add r1, r7, #0
	add r1, #0xc9
	strb r0, [r1]
	add r0, r7, #0
	mov r4, #0
	str r0, [sp, #8]
	add r0, #0xca
	add r5, r4, #0
	str r0, [sp, #8]
_020737BC:
	add r0, r6, #0
	add r1, r4, #0
	bl sub_0202D498
	ldr r1, [sp, #8]
	mov r2, #8
	add r1, r1, r5
	bl sub_020C4DB0
	add r4, r4, #1
	add r5, #8
	cmp r4, #3
	blt _020737BC
	add r0, r6, #0
	mov r1, #3
	bl sub_0202D498
	add r1, r7, #0
	add r1, #0xc0
	mov r2, #8
	bl sub_020C4DB0
	ldr r0, [sp]
	cmp r0, #0
	bne _02073816
	ldr r0, [sp, #4]
	mov r1, #7
	mov r2, #0
	bl sub_0202D414
	add r1, r7, #0
	add r1, #0xe2
	strh r0, [r1]
	add r0, r7, #0
	add r0, #0xe2
	ldrh r0, [r0]
	cmp r0, #0
	beq _0207382C
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r7, #0
	bl sub_0202D314
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02073816:
	ldr r0, [sp, #4]
	bl sub_0202D39C
	add r1, r7, #0
	add r1, #0xe2
	strh r0, [r1]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	add r2, r7, #0
	bl sub_0202D314
_0207382C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	; .align 2, 0
_02073830: .word 0x020E4C40
_02073834: .word 0x020E4C44
	thumb_func_end sub_02073700