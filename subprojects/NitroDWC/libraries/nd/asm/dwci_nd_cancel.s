	.include "macros/function.inc"
	.include "include/dwci_nd_cancel.inc"

	.extern Unk_ov60_02229E74

	.text


	arm_func_start DWCi_NdCancelAsync
DWCi_NdCancelAsync: ; 0x02224448
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
_02224480: .word Unk_ov60_02229E74
	arm_func_end DWCi_NdCancelAsync