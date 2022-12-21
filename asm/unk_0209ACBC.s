	.include "macros/function.inc"
	.include "include/unk_0209ACBC.inc"

	

	.text


	thumb_func_start sub_0209ACBC
sub_0209ACBC: ; 0x0209ACBC
	push {r3, lr}
	mov r1, #8
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
	mov r1, #2
	str r1, [r0, #4]
	pop {r3, pc}
	thumb_func_end sub_0209ACBC

	thumb_func_start sub_0209ACDC
sub_0209ACDC: ; 0x0209ACDC
	ldr r3, _0209ACE0 ; =sub_020181C4
	bx r3
	; .align 2, 0
_0209ACE0: .word sub_020181C4
	thumb_func_end sub_0209ACDC

	thumb_func_start sub_0209ACE4
sub_0209ACE4: ; 0x0209ACE4
	ldr r0, [r0, #0]
	bx lr
	thumb_func_end sub_0209ACE4

	thumb_func_start sub_0209ACE8
sub_0209ACE8: ; 0x0209ACE8
	str r1, [r0, #0]
	bx lr
	thumb_func_end sub_0209ACE8

	thumb_func_start sub_0209ACEC
sub_0209ACEC: ; 0x0209ACEC
	ldr r0, [r0, #4]
	bx lr
	thumb_func_end sub_0209ACEC

	thumb_func_start sub_0209ACF0
sub_0209ACF0: ; 0x0209ACF0
	str r1, [r0, #4]
	bx lr
	thumb_func_end sub_0209ACF0