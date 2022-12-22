	.include "macros/function.inc"
	.include "include/unk_0202B594.inc"

	

	.text


	thumb_func_start sub_0202B594
sub_0202B594: ; 0x0202B594
	mov r1, #0
	strh r1, [r0]
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B594

	thumb_func_start sub_0202B59C
sub_0202B59C: ; 0x0202B59C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _0202B5B0 ; =0x0000C350
	add r4, r1, #0
	cmp r4, r0
	bls _0202B5AC
	bl GF_AssertFail
_0202B5AC:
	strh r4, [r5]
	pop {r3, r4, r5, pc}
	; .align 2, 0
_0202B5B0: .word 0x0000C350
	thumb_func_end sub_0202B59C

	thumb_func_start sub_0202B5B4
sub_0202B5B4: ; 0x0202B5B4
	ldrh r0, [r0]
	bx lr
	thumb_func_end sub_0202B5B4

	thumb_func_start sub_0202B5B8
sub_0202B5B8: ; 0x0202B5B8
	ldrh r3, [r0]
	ldr r2, _0202B5D4 ; =0x0000C350
	cmp r3, r2
	blo _0202B5C4
	mov r0, #0
	bx lr
_0202B5C4:
	add r1, r3, r1
	strh r1, [r0]
	ldrh r1, [r0]
	cmp r1, r2
	bls _0202B5D0
	strh r2, [r0]
_0202B5D0:
	mov r0, #1
	bx lr
	; .align 2, 0
_0202B5D4: .word 0x0000C350
	thumb_func_end sub_0202B5B8

	thumb_func_start sub_0202B5D8
sub_0202B5D8: ; 0x0202B5D8
	ldrh r0, [r0]
	add r1, r1, r0
	ldr r0, _0202B5EC ; =0x0000C350
	cmp r1, r0
	bhi _0202B5E6
	mov r0, #1
	bx lr
_0202B5E6:
	mov r0, #0
	bx lr
	nop
_0202B5EC: .word 0x0000C350
	thumb_func_end sub_0202B5D8

	thumb_func_start sub_0202B5F0
sub_0202B5F0: ; 0x0202B5F0
	ldrh r2, [r0]
	cmp r2, r1
	bhs _0202B5FA
	mov r0, #0
	bx lr
_0202B5FA:
	sub r1, r2, r1
	strh r1, [r0]
	mov r0, #1
	bx lr
	; .align 2, 0
	thumb_func_end sub_0202B5F0