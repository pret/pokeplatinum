	.include "macros/function.inc"
	.include "include/unk_0202C858.inc"

	

	.text


	thumb_func_start sub_0202C858
sub_0202C858: ; 0x0202C858
	ldr r0, _0202C85C ; =0x00000FF8
	bx lr
	; .align 2, 0
_0202C85C: .word 0x00000FF8
	thumb_func_end sub_0202C858

	thumb_func_start sub_0202C860
sub_0202C860: ; 0x0202C860
	push {r3, lr}
	ldr r2, _0202C874 ; =0x00000FF8
	add r1, r0, #0
	mov r0, #0
	bl MIi_CpuClear32
	mov r0, #0x1e
	bl sub_02025C84
	pop {r3, pc}
	; .align 2, 0
_0202C874: .word 0x00000FF8
	thumb_func_end sub_0202C860

	thumb_func_start sub_0202C878
sub_0202C878: ; 0x0202C878
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1e
	bl sub_02025C48
	add r0, r4, #0
	mov r1, #0x1e
	bl sub_020245BC
	pop {r4, pc}
	thumb_func_end sub_0202C878

	thumb_func_start sub_0202C88C
sub_0202C88C: ; 0x0202C88C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #1
	add r5, r1, #0
	lsl r0, r0, #8
	add r4, r2, #0
	cmp r5, r0
	blt _0202C8A0
	bl GF_AssertFail
_0202C8A0:
	cmp r4, #0x40
	blt _0202C8A8
	bl GF_AssertFail
_0202C8A8:
	strb r5, [r6, #5]
	add r0, r6, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #3
	strb r4, [r6, #6]
	bl sub_0202C918
	mov r0, #0x1e
	bl sub_02025C84
	pop {r4, r5, r6, pc}
	thumb_func_end sub_0202C88C

	thumb_func_start sub_0202C8C0
sub_0202C8C0: ; 0x0202C8C0
	ldrb r0, [r0, #5]
	bx lr
	thumb_func_end sub_0202C8C0

	thumb_func_start sub_0202C8C4
sub_0202C8C4: ; 0x0202C8C4
	ldrb r0, [r0, #6]
	bx lr
	thumb_func_end sub_0202C8C4

	thumb_func_start sub_0202C8C8
sub_0202C8C8: ; 0x0202C8C8
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r0, #1
	add r5, r1, #0
	lsl r0, r0, #8
	add r4, r2, #0
	cmp r5, r0
	blt _0202C8DC
	bl GF_AssertFail
_0202C8DC:
	cmp r4, #0x40
	blt _0202C8E4
	bl GF_AssertFail
_0202C8E4:
	cmp r5, #0
	bne _0202C8EC
	mov r0, #0
	pop {r4, r5, r6, pc}
_0202C8EC:
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	asr r1, r0, #2
	sub r0, r5, #1
	lsl r0, r0, #4
	add r0, r1, r0
	add r0, r6, r0
	ldrb r3, [r0, #7]
	lsr r2, r4, #0x1f
	lsl r1, r4, #0x1e
	sub r1, r1, r2
	mov r0, #0x1e
	ror r1, r0
	add r0, r2, r1
	lsl r0, r0, #1
	add r1, r3, #0
	asr r1, r0
	mov r0, #3
	and r0, r1
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202C8C8

	thumb_func_start sub_0202C918
sub_0202C918: ; 0x0202C918
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	str r3, [sp]
	cmp r3, #4
	blt _0202C92A
	bl GF_AssertFail
_0202C92A:
	mov r0, #1
	lsl r0, r0, #8
	cmp r5, r0
	blt _0202C936
	bl GF_AssertFail
_0202C936:
	cmp r4, #0x40
	blt _0202C93E
	bl GF_AssertFail
_0202C93E:
	cmp r5, #0
	beq _0202C98C
	asr r0, r4, #1
	lsr r0, r0, #0x1e
	add r0, r4, r0
	asr r2, r0, #2
	sub r0, r5, #1
	lsl r0, r0, #4
	add r0, r2, r0
	lsr r2, r4, #0x1f
	lsl r4, r4, #0x1e
	sub r4, r4, r2
	mov r3, #0x1e
	ror r4, r3
	add r2, r2, r4
	lsl r6, r2, #1
	mov r2, #3
	add r3, r2, #0
	add r1, r7, #7
	ldrb r4, [r1, r0]
	lsl r3, r6
	mov r2, #0xff
	eor r2, r3
	and r2, r4
	ldr r3, [sp]
	strb r2, [r1, r0]
	ldrb r2, [r1, r0]
	lsl r3, r6
	orr r2, r3
	strb r2, [r1, r0]
	cmp r5, #0x67
	beq _0202C986
	add r0, r7, #0
	mov r1, #1
	bl sub_0202C994
_0202C986:
	mov r0, #0x1e
	bl sub_02025C84
_0202C98C:
	pop {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
	thumb_func_end sub_0202C918

	thumb_func_start sub_0202C990
sub_0202C990: ; 0x0202C990
	ldrb r0, [r0, #4]
	bx lr
	thumb_func_end sub_0202C990

	thumb_func_start sub_0202C994
sub_0202C994: ; 0x0202C994
	ldr r3, _0202C99C ; =sub_02025C84
	strb r1, [r0, #4]
	mov r0, #0x1e
	bx r3
	; .align 2, 0
_0202C99C: .word sub_02025C84
	thumb_func_end sub_0202C994

	thumb_func_start sub_0202C9A0
sub_0202C9A0: ; 0x0202C9A0
	push {r3, r4, r5, r6, r7, lr}
	str r0, [sp]
	mov r0, #3
	mov r7, #0
	mov r4, #2
	mov r6, #0xff
	add r3, r0, #0
_0202C9AE:
	ldr r1, [sp]
	add r1, r1, r7
	ldrb r2, [r1, #7]
	mov ip, r1
	mov r1, #0
_0202C9B8:
	add r5, r2, #0
	asr r5, r1
	and r5, r3
	cmp r5, #1
	bne _0202C9D8
	add r5, r0, #0
	lsl r5, r1
	eor r5, r6
	and r2, r5
	lsl r2, r2, #0x18
	lsr r5, r2, #0x18
	add r2, r4, #0
	lsl r2, r1
	orr r2, r5
	lsl r2, r2, #0x18
	lsr r2, r2, #0x18
_0202C9D8:
	add r1, r1, #2
	cmp r1, #8
	blt _0202C9B8
	mov r1, ip
	strb r2, [r1, #7]
	mov r1, #0xff
	add r7, r7, #1
	lsl r1, r1, #4
	cmp r7, r1
	blt _0202C9AE
	mov r0, #0x1e
	bl sub_02025C84
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_0202C9A0