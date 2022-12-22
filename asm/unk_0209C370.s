	.include "macros/function.inc"
	.include "include/unk_0209C370.inc"

	

	.text


	thumb_func_start sub_0209C370
sub_0209C370: ; 0x0209C370
	push {r4, lr}
	mov r1, #4
	bl sub_02018144
	mov r1, #0
	mov r2, #4
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r4, #0
	pop {r4, pc}
	; .align 2, 0
	thumb_func_end sub_0209C370

	thumb_func_start sub_0209C388
sub_0209C388: ; 0x0209C388
	ldr r3, _0209C38C ; =sub_020181C4
	bx r3
	; .align 2, 0
_0209C38C: .word sub_020181C4
	thumb_func_end sub_0209C388