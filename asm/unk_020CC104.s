	.include "macros/function.inc"
	.include "include/unk_020CC104.inc"

	

	.text


	arm_func_start sub_020CC104
sub_020CC104: ; 0x020CC104
	ldr ip, _020CC110 ; =sub_020CC144
	mov r0, #0x10
	bx ip
	; .align 2, 0
_020CC110: .word sub_020CC144
	arm_func_end sub_020CC104

	arm_func_start sub_020CC114
sub_020CC114: ; 0x020CC114
	ldr ip, _020CC120 ; =sub_020CC144
	mov r0, #0x11
	bx ip
	; .align 2, 0
_020CC120: .word sub_020CC144
	arm_func_end sub_020CC114

	arm_func_start sub_020CC124
sub_020CC124: ; 0x020CC124
	ldr ip, _020CC130 ; =sub_020CC144
	mov r0, #0x12
	bx ip
	; .align 2, 0
_020CC130: .word sub_020CC144
	arm_func_end sub_020CC124

	arm_func_start sub_020CC134
sub_020CC134: ; 0x020CC134
	ldr ip, _020CC140 ; =sub_020CC144
	mov r0, #0x27
	bx ip
	; .align 2, 0
_020CC140: .word sub_020CC144
	arm_func_end sub_020CC134

	arm_func_start sub_020CC144
sub_020CC144: ; 0x020CC144
	stmfd sp!, {r3, lr}
	mov r0, r0, lsl #8
	and r1, r0, #0x7f00
	mov r0, #5
	mov r2, #0
	bl sub_020C64CC
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020CC144