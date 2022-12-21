	.include "macros/function.inc"
	.include "include/unk_0202CC64.inc"

	

	.text


	thumb_func_start sub_0202CC64
sub_0202CC64: ; 0x0202CC64
	mov r0, #0xfb
	lsl r0, r0, #2
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CC64

	thumb_func_start sub_0202CC6C
sub_0202CC6C: ; 0x0202CC6C
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0xfb
	mov r0, #0
	add r1, r4, #0
	lsl r2, r2, #2
	bl sub_020C4B4C
	mov r0, #0
	str r0, [r4, #0]
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0202CC6C

	thumb_func_start sub_0202CC84
sub_0202CC84: ; 0x0202CC84
	push {r4, lr}
	mov r1, #0xfb
	lsl r1, r1, #2
	bl sub_02018144
	add r4, r0, #0
	bl sub_0202CC6C
	add r0, r4, #0
	pop {r4, pc}
	thumb_func_end sub_0202CC84

	thumb_func_start sub_0202CC98
sub_0202CC98: ; 0x0202CC98
	ldr r3, _0202CCA0 ; =sub_020245BC
	mov r1, #0x16
	bx r3
	nop
_0202CCA0: .word sub_020245BC
	thumb_func_end sub_0202CC98

	thumb_func_start sub_0202CCA4
sub_0202CCA4: ; 0x0202CCA4
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0202CCA4

	thumb_func_start sub_0202CCA8
sub_0202CCA8: ; 0x0202CCA8
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CCA8

	thumb_func_start sub_0202CCB0
sub_0202CCB0: ; 0x0202CCB0
	add r0, r0, #4
	bx lr
	thumb_func_end sub_0202CCB0

	thumb_func_start sub_0202CCB4
sub_0202CCB4: ; 0x0202CCB4
	push {r4, r5, r6, r7}
	mov r5, #0
	mov r2, #0xfa
	add r4, r5, #0
	mov r6, #0xf
	lsl r2, r2, #2
_0202CCC0:
	ldrsb r7, [r1, r4]
	add r3, r0, r5
	and r7, r6
	lsl r7, r7, #0x18
	lsr r7, r7, #0x18
	sub r7, #8
	lsl r7, r7, #0x18
	asr r7, r7, #0x14
	strb r7, [r0, r5]
	ldrsb r7, [r1, r4]
	add r4, r4, #1
	add r5, r5, #2
	lsl r7, r7, #0x14
	lsr r7, r7, #0x18
	sub r7, #8
	lsl r7, r7, #0x18
	asr r7, r7, #0x14
	strb r7, [r3, #1]
	cmp r4, r2
	blt _0202CCC0
	pop {r4, r5, r6, r7}
	bx lr
	thumb_func_end sub_0202CCB4

	thumb_func_start sub_0202CCEC
sub_0202CCEC: ; 0x0202CCEC
	push {r4, r5, r6, r7}
	add r3, r0, #0
	add r2, r1, #0
	mov r0, #1
	mov r1, #0
	str r0, [r3, #0]
	add r0, r1, #0
_0202CCFA:
	ldrsb r4, [r2, r0]
	add r6, r3, r1
	add r7, r2, r0
	asr r5, r4, #3
	lsr r5, r5, #0x1c
	add r5, r4, r5
	lsl r4, r5, #0x14
	asr r4, r4, #0x18
	add r4, #8
	strb r4, [r6, #4]
	mov r4, #4
	ldrsb r5, [r6, r4]
	mov r4, #1
	ldrsb r4, [r7, r4]
	add r0, r0, #2
	add r1, r1, #1
	asr r7, r4, #3
	lsr r7, r7, #0x1c
	add r7, r4, r7
	lsl r4, r7, #0x14
	asr r4, r4, #0x18
	add r4, #8
	lsl r4, r4, #0x18
	lsr r4, r4, #0x14
	orr r4, r5
	strb r4, [r6, #4]
	mov r4, #0x7d
	lsl r4, r4, #4
	cmp r0, r4
	blt _0202CCFA
	pop {r4, r5, r6, r7}
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202CCEC

	thumb_func_start sub_0202CD3C
sub_0202CD3C: ; 0x0202CD3C
	add r2, r0, #0
	add r0, r1, #0
	add r1, r2, #0
	mov r2, #0xfb
	ldr r3, _0202CD4C ; =sub_020C4C14
	lsl r2, r2, #2
	bx r3
	nop
_0202CD4C: .word sub_020C4C14
	thumb_func_end sub_0202CD3C