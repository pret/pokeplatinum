	.include "macros/function.inc"
	.include "overlay060/ov60_02224448.inc"

	

	.text


	arm_func_start ov60_02224448
ov60_02224448: ; 0x02224448
	stmfd sp!, {r4, lr}
	bl ov60_02225588
	cmp r0, #0
	bne _02224474
	bl ov60_02225534
	ldr r0, _02224480 ; =0x02229E74
	ldr r4, [r0, #0]
	bl ov60_02225548
	mov r0, r4
	bl ov60_02226A9C
	ldmia sp!, {r4, pc}
_02224474:
	bl ov60_022255D0
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02224480: .word 0x02229E74
	arm_func_end ov60_02224448