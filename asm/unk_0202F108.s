	.include "macros/function.inc"
	.include "include/unk_0202F108.inc"

	

	.text


	thumb_func_start sub_0202F108
sub_0202F108: ; 0x0202F108
	mov r0, #0x28
	bx lr
	thumb_func_end sub_0202F108

	thumb_func_start sub_0202F10C
sub_0202F10C: ; 0x0202F10C
	push {r3, r4, r5, lr}
	mov r4, #0
	add r1, r4, #0
	add r2, r4, #0
_0202F114:
	add r3, r2, #0
	add r5, r0, #0
_0202F118:
	add r3, r3, #1
	strh r1, [r5]
	add r5, r5, #2
	cmp r3, #4
	blt _0202F118
	add r4, r4, #1
	add r0, #8
	cmp r4, #5
	blt _0202F114
	mov r0, #0x21
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_0202F10C

	thumb_func_start sub_0202F134
sub_0202F134: ; 0x0202F134
	push {r3, r4, r5, lr}
	add r5, r1, #0
	mov r1, #0x21
	add r4, r2, #0
	bl sub_020245BC
	lsl r1, r5, #3
	add r3, r0, r1
	lsl r2, r4, #1
	ldrh r1, [r3, r2]
	ldr r0, _0202F15C ; =0x0000270F
	cmp r1, r0
	bhs _0202F152
	add r0, r1, #1
	strh r0, [r3, r2]
_0202F152:
	mov r0, #0x21
	bl sub_02025C84
	pop {r3, r4, r5, pc}
	nop
_0202F15C: .word 0x0000270F
	thumb_func_end sub_0202F134

	thumb_func_start sub_0202F160
sub_0202F160: ; 0x0202F160
	push {r4, r5, r6, lr}
	add r5, r1, #0
	mov r1, #0x21
	add r4, r2, #0
	bl sub_020245BC
	add r6, r0, #0
	mov r0, #0x21
	bl sub_02025C48
	lsl r0, r5, #3
	lsl r1, r4, #1
	add r0, r6, r0
	ldrh r0, [r1, r0]
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202F160