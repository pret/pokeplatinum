	.include "macros/function.inc"
	.include "include/unk_0202D778.inc"

	

	.text


	thumb_func_start sub_0202D778
sub_0202D778: ; 0x0202D778
	mov r0, #0xe
	bx lr
	thumb_func_end sub_0202D778

	thumb_func_start sub_0202D77C
sub_0202D77C: ; 0x0202D77C
	mov r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r1, [r0, #3]
	strb r1, [r0, #4]
	strb r1, [r0, #5]
	strb r1, [r0, #6]
	strb r1, [r0, #7]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #0xa]
	strb r1, [r0, #0xb]
	strb r1, [r0, #0xc]
	strb r1, [r0, #0xd]
	bx lr
	thumb_func_end sub_0202D77C

	thumb_func_start sub_0202D79C
sub_0202D79C: ; 0x0202D79C
	ldr r3, _0202D7A4 ; =sub_020245BC
	mov r1, #0x18
	bx r3
	nop
_0202D7A4: .word sub_020245BC
	thumb_func_end sub_0202D79C