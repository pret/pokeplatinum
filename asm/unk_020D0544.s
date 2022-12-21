	.include "macros/function.inc"
	.include "include/unk_020D0544.inc"

	

	.text


	arm_func_start sub_020D0544
sub_020D0544: ; 0x020D0544
	stmfd sp!, {r3, lr}
	mov ip, #1
	rsb r2, ip, #0x10000
	mov r3, #2
	str ip, [sp]
	bl sub_020CF9C4
	ldmia sp!, {r3, pc}
	arm_func_end sub_020D0544

	arm_func_start sub_020D0560
sub_020D0560: ; 0x020D0560
	ldr ip, _020D0568 ; =sub_020CFC18
	bx ip
	; .align 2, 0
_020D0568: .word sub_020CFC18
	arm_func_end sub_020D0560