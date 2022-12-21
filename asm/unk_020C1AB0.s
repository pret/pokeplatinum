	.include "macros/function.inc"
	.include "include/unk_020C1AB0.inc"

	

	.text


	arm_func_start sub_020C1AB0
sub_020C1AB0: ; 0x020C1AB0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl sub_020C1AD8
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020C1AB0

	arm_func_start sub_020C1AD8
sub_020C1AD8: ; 0x020C1AD8
	ldr ip, _020C1AEC ; =sub_020C1B18
	mov r3, r2
	mov r2, r1
	mvn r1, #0x80000000
	bx ip
	; .align 2, 0
_020C1AEC: .word sub_020C1B18
	arm_func_end sub_020C1AD8

	arm_func_start sub_020C1AF0
sub_020C1AF0: ; 0x020C1AF0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r3, sp, #0x10
	bic r3, r3, #3
	ldr r2, [sp, #0x10]
	add r3, r3, #4
	bl sub_020C1B18
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020C1AF0

	arm_func_start sub_020C1B18
sub_020C1B18: ; 0x020C1B18
	ldr ip, _020C1B20 ; =sub_020D3524
	bx ip
	; .align 2, 0
_020C1B20: .word sub_020D3524
	arm_func_end sub_020C1B18