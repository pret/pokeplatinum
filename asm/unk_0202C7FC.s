	.include "macros/function.inc"
	.include "include/unk_0202C7FC.inc"

	

	.text


	thumb_func_start sub_0202C7FC
sub_0202C7FC: ; 0x0202C7FC
	mov r0, #0x62
	lsl r0, r0, #4
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C7FC

	thumb_func_start sub_0202C804
sub_0202C804: ; 0x0202C804
	push {r4, r5, r6, lr}
	mov r2, #0x62
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #4
	bl sub_020D5124
	add r0, r4, #0
	bl sub_0202C844
	add r5, r0, #0
	mov r4, #0
	mov r6, #0x8c
_0202C81E:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	add r1, r6, #0
	add r2, r5, #0
	bl sub_0202C850
	add r4, r4, #1
	cmp r4, #8
	blt _0202C81E
	pop {r4, r5, r6, pc}
	; .align 2, 0
	thumb_func_end sub_0202C804

	thumb_func_start sub_0202C834
sub_0202C834: ; 0x0202C834
	ldr r3, _0202C83C ; =sub_020245BC
	mov r1, #0x13
	bx r3
	nop
_0202C83C: .word sub_020245BC
	thumb_func_end sub_0202C834

	thumb_func_start sub_0202C840
sub_0202C840: ; 0x0202C840
	add r0, #0x20
	bx lr
	thumb_func_end sub_0202C840

	thumb_func_start sub_0202C844
sub_0202C844: ; 0x0202C844
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C844

	thumb_func_start sub_0202C848
sub_0202C848: ; 0x0202C848
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C848

	thumb_func_start sub_0202C850
sub_0202C850: ; 0x0202C850
	lsl r0, r0, #2
	str r1, [r2, r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202C850