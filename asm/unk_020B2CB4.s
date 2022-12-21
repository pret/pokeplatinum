	.include "macros/function.inc"
	.include "include/unk_020B2CB4.inc"

	

	.text


	arm_func_start sub_020B2CB4
sub_020B2CB4: ; 0x020B2CB4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r2
	bl sub_020AE490
	mov r1, r0
	mov r0, r4
	bl sub_020A59EC
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B2CB4

	arm_func_start sub_020B2CD8
sub_020B2CD8: ; 0x020B2CD8
	ldr ip, _020B2CE0 ; =sub_020A5A00
	bx ip
	; .align 2, 0
_020B2CE0: .word sub_020A5A00
	arm_func_end sub_020B2CD8