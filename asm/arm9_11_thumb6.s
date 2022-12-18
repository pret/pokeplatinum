
	.include "macros/function.inc"
	.include "include/arm9_11_thumb6.inc"

	.text

	thumb_func_start sub_020C4F30
sub_020C4F30: ; 0x020C4F30
	mov r1, #0
	mov r2, #0
	mov r3, #0
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r2, r3}
	stmia r0!, {r1, r2, r3}
	bx lr
	; .align 2, 0
	thumb_func_end sub_020C4F30
