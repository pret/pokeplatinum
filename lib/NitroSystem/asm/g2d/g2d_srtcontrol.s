	.include "macros/function.inc"
	.include "include/g2d_srtcontrol.inc"

	

	.text


	arm_func_start NNSi_G2dSrtcSetTrans
NNSi_G2dSrtcSetTrans: ; 0x020A8AD8
	ldr r3, [r0, #0]
	cmp r3, #1
	bxne lr
	ldrh r3, [r0, #0x12]
	orr r3, r3, #8
	strh r3, [r0, #0x12]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	bx lr
	arm_func_end NNSi_G2dSrtcSetTrans

	arm_func_start NNSi_G2dSrtcSetSRTRotZ
NNSi_G2dSrtcSetSRTRotZ: ; 0x020A8AFC
	ldr r2, [r0, #0]
	cmp r2, #1
	bxne lr
	ldrh r2, [r0, #0x12]
	orr r2, r2, #4
	strh r2, [r0, #0x12]
	strh r1, [r0, #0x10]
	bx lr
	arm_func_end NNSi_G2dSrtcSetSRTRotZ

	arm_func_start NNSi_G2dSrtcSetSRTScale
NNSi_G2dSrtcSetSRTScale: ; 0x020A8B1C
	ldr r3, [r0, #0]
	cmp r3, #1
	bxne lr
	ldrh r3, [r0, #0x12]
	orr r3, r3, #2
	strh r3, [r0, #0x12]
	stmib r0, {r1, r2}
	bx lr
	arm_func_end NNSi_G2dSrtcSetSRTScale

	arm_func_start NNSi_G2dSrtcInitControl
NNSi_G2dSrtcInitControl: ; 0x020A8B3C
	ldr ip, _020A8B48 ; =NNSi_G2dSrtcSetInitialValue
	str r1, [r0, #0]
	bx ip
	; .align 2, 0
_020A8B48: .word NNSi_G2dSrtcSetInitialValue
	arm_func_end NNSi_G2dSrtcInitControl

	arm_func_start NNSi_G2dSrtcSetInitialValue
NNSi_G2dSrtcSetInitialValue: ; 0x020A8B4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r1, r4, #4
	mov r0, #0
	mov r2, #0x18
	bl MIi_CpuClear16
	mov r0, #0x1000
	str r0, [r4, #4]
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end NNSi_G2dSrtcSetInitialValue