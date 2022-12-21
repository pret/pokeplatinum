	.include "macros/function.inc"
	.include "include/unk_0204F02C.inc"

	

	.text


	thumb_func_start sub_0204F02C
sub_0204F02C: ; 0x0204F02C
	push {r3, lr}
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204F02C

	thumb_func_start sub_0204F038
sub_0204F038: ; 0x0204F038
	push {r3, lr}
	bl sub_02022974
	mov r0, #0
	pop {r3, pc}
	; .align 2, 0
	thumb_func_end sub_0204F038

	thumb_func_start sub_0204F044
sub_0204F044: ; 0x0204F044
	mov r0, #0
	bx lr
	thumb_func_end sub_0204F044

	thumb_func_start sub_0204F048
sub_0204F048: ; 0x0204F048
	mov r0, #0
	bx lr
	thumb_func_end sub_0204F048