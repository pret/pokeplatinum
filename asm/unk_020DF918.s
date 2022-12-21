	.include "macros/function.inc"
	.include "include/unk_020DF918.inc"

	

	.text


	arm_func_start sub_020DF918
sub_020DF918: ; 0x020DF918
	ldr ip, _020DF92C ; =sub_020C3214
	mov r2, r0
	mov r0, #0
	sub r1, r0, #1
	bx ip
	; .align 2, 0
_020DF92C: .word sub_020C3214
	arm_func_end sub_020DF918

	arm_func_start sub_020DF930
sub_020DF930: ; 0x020DF930
	ldr ip, _020DF944 ; =sub_020C331C
	mov r2, r0
	mov r0, #0
	sub r1, r0, #1
	bx ip
	; .align 2, 0
_020DF944: .word sub_020C331C
	arm_func_end sub_020DF930