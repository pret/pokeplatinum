	.include "macros/function.inc"
	.include "include/os_printf.inc"

	

	.text


	arm_func_start OS_SPrintf
OS_SPrintf: ; 0x020C1AB0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl OS_VSPrintf
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end OS_SPrintf

	arm_func_start OS_VSPrintf
OS_VSPrintf: ; 0x020C1AD8
	ldr ip, _020C1AEC ; =OS_VSNPrintf
	mov r3, r2
	mov r2, r1
	mvn r1, #0x80000000
	bx ip
	; .align 2, 0
_020C1AEC: .word OS_VSNPrintf
	arm_func_end OS_VSPrintf

	arm_func_start OS_SNPrintf
OS_SNPrintf: ; 0x020C1AF0
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r3, sp, #0x10
	bic r3, r3, #3
	ldr r2, [sp, #0x10]
	add r3, r3, #4
	bl OS_VSNPrintf
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end OS_SNPrintf

	arm_func_start OS_VSNPrintf
OS_VSNPrintf: ; 0x020C1B18
	ldr ip, _020C1B20 ; =STD_TVSNPrintf
	bx ip
	; .align 2, 0
_020C1B20: .word STD_TVSNPrintf
	arm_func_end OS_VSNPrintf