
	.include "macros/function.inc"
	.include "include/arm9_11_thumb4.inc"

	.text

	thumb_func_start sub_020BBC30
sub_020BBC30: ; 0x020BBC30
	str r1, [r0, #0x14]
	neg r1, r1
	str r1, [r0, #0x1c]
	mov r1, #1
	lsl r1, r1, #0xc
	stmia r0!, {r1}
	mov r3, #0
	mov r1, #0
	stmia r0!, {r1, r3}
	stmia r0!, {r1, r2}
	str r1, [r0, #4]
	add r0, #0xc
	stmia r0!, {r2, r3}
	stmia r0!, {r1, r3}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020BBC30

	thumb_func_start sub_020BBC50
sub_020BBC50: ; 0x020BBC50
	str r1, [r0, #0x18]
	mov r3, #0
	stmia r0!, {r2, r3}
	neg r1, r1
	stmia r0!, {r1, r3}
	mov r1, #1
	lsl r1, r1, #0xc
	stmia r0!, {r1, r3}
	add r0, #4
	mov r1, #0
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r3}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020BBC50
