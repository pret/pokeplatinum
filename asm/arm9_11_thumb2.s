
	.include "macros/function.inc"
	.include "global.inc"

	.text

	thumb_func_start sub_020BB5AC
sub_020BB5AC: ; 0x020BB5AC
	mov r3, #1
	lsl r3, r3, #0xc
	str r3, [r0, #0]
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r2, [r0, #0x10]
	str r1, [r0, #0x14]
	str r3, [r0, #0x18]
	neg r1, r1
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	thumb_func_end sub_020BB5AC

	thumb_func_start sub_020BB5C8
sub_020BB5C8: ; 0x020BB5C8
	str r2, [r0, #0]
	str r2, [r0, #0x20]
	mov r3, #0
	str r3, [r0, #4]
	str r3, [r0, #0xc]
	str r3, [r0, #0x14]
	str r3, [r0, #0x1c]
	neg r2, r1
	mov r3, #1
	lsl r3, r3, #0xc
	str r1, [r0, #0x18]
	str r2, [r0, #8]
	str r3, [r0, #0x10]
	bx lr
	thumb_func_end sub_020BB5C8

	thumb_func_start sub_020BB5E4
sub_020BB5E4: ; 0x020BB5E4
	stmia r0!, {r2}
	mov r3, #0
	stmia r0!, {r1, r3}
	neg r1, r1
	stmia r0!, {r1, r2}
	mov r1, #1
	lsl r1, r1, #0xc
	str r3, [r0, #0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	thumb_func_end sub_020BB5E4
