
	.include "macros/function.inc"
	.include "include/arm9_11_4.inc"

	.text

	arm_func_start sub_020BBBFC
sub_020BBBFC: ; 0x020BBBFC
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, [sp, #0x10]
	mov r5, r0
	str ip, [sp]
	mov r4, r1
	bl sub_020BB4EC
	ldr r0, [r5, #0x24]
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x28]
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x2c]
	str r0, [r4, #0x2c]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020BBBFC
