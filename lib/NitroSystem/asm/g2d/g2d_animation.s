	.include "macros/function.inc"
	.include "include/g2d_animation.inc"

	

	.text


	arm_func_start SequenceEdgeHandle_
SequenceEdgeHandle_: ; 0x020A74F0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldreq r0, [r4, #0x1c]
	ldreq r0, [r0, #8]
	cmp r0, #3
	cmpne r0, #4
	bne _020A758C
	ldr r0, [r4, #8]
	eor r0, r0, #1
	str r0, [r4, #8]
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0]
	ldrh r0, [r1, #2]
	ldr r1, [r1, #0xc]
	add r0, r1, r0, lsl #3
	sub r0, r0, #8
	cmp r2, r0
	bhi _020A75D4
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _020A755C
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	blx r2
_020A755C:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldreq r0, [r4, #0x1c]
	ldreq r0, [r0, #8]
	cmp r0, #2
	cmpne r0, #4
	movne r0, #0
	strne r0, [r4, #0xc]
	bne _020A75D4
	mov r0, r4
	bl NNS_G2dResetAnimCtrlState
	b _020A75D4
_020A758C:
	ldr r0, [r4, #0x20]
	cmp r0, #1
	bne _020A75A8
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x28]
	blx r2
_020A75A8:
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldreq r0, [r4, #0x1c]
	ldreq r0, [r0, #8]
	cmp r0, #2
	cmpne r0, #4
	movne r0, #0
	strne r0, [r4, #0xc]
	bne _020A75D4
	mov r0, r4
	bl NNS_G2dResetAnimCtrlState
_020A75D4:
	ldr r1, [r4, #0x1c]
	ldr r2, [r4, #0]
	ldrh r0, [r1]
	ldr r1, [r1, #0xc]
	add r0, r1, r0, lsl #3
	sub r0, r0, #8
	cmp r2, r0
	strhi r0, [r4]
	ldmhiia sp!, {r4, pc}
	cmp r2, r1
	strlo r1, [r4]
	ldmia sp!, {r4, pc}
	arm_func_end SequenceEdgeHandle_

	arm_func_start SetAnimCtrlCurrentFrameImpl_
SetAnimCtrlCurrentFrameImpl_: ; 0x020A7604
	ldr r3, [r0, #0x1c]
	ldrh r2, [r3]
	cmp r1, r2
	bhs _020A7634
	ldr r2, [r3, #0xc]
	add r2, r2, r1, lsl #3
	str r2, [r0, #0]
	ldrh r1, [r2, #4]
	cmp r1, #0
	strne r2, [r0, #4]
	mov r0, #1
	bx lr
_020A7634:
	mov r0, #0
	bx lr
	arm_func_end SetAnimCtrlCurrentFrameImpl_

	arm_func_start NNS_G2dGetAnimCtrlCurrentElement
NNS_G2dGetAnimCtrlCurrentElement: ; 0x020A763C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0]
	bx lr
	arm_func_end NNS_G2dGetAnimCtrlCurrentElement

	arm_func_start NNS_G2dTickAnimCtrl
NNS_G2dTickAnimCtrl: ; 0x020A7648
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #0xc]
	mov sb, #0
	cmp r0, #1
	movne r0, sb
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sl, #0x14]
	smull r2, r1, r0, r1
	adds r0, r2, #0x800
	adc r1, r1, sb
	mov r0, r0, lsr #0xc
	orr r0, r0, r1, lsl #20
	bl abs
	mov r4, #1
	ldr r1, [sl, #0x10]
	mov fp, sb
	add r0, r1, r0
	str r0, [sl, #0x10]
	mov r8, r4
	mov r7, sb
	mov r5, sb
	mov r6, r4
	b _020A77C4
_020A76A8:
	ldr r0, [sl]
	ldr r1, [sl, #0x10]
	ldrh r0, [r0, #4]
	mov sb, r8
	sub r0, r1, r0, lsl #12
	str r0, [sl, #0x10]
	ldr r0, [sl, #0x14]
	cmp r0, #0
	movgt r1, r8
	ldr r0, [sl, #8]
	movle r1, r7
	teq r1, r0
	ldr r0, [sl]
	addne r0, r0, #8
	subeq r0, r0, #8
	str r0, [sl]
	ldr r1, [sl, #0x14]
	ldr r0, [sl]
	cmp r1, #0
	movgt r2, r6
	ldr r1, [sl, #8]
	movle r2, r5
	teq r2, r1
	ldr r1, [sl, #0x1c]
	ldr r2, [r1, #0xc]
	beq _020A7728
	ldrh r1, [r1]
	add r1, r2, r1, lsl #3
	cmp r0, r1
	movhs r0, r4
	movlo r0, fp
	b _020A7740
_020A7728:
	ldrh r1, [r1, #2]
	add r1, r2, r1, lsl #3
	sub r1, r1, #8
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
_020A7740:
	cmp r0, #0
	beq _020A7750
	mov r0, sl
	bl SequenceEdgeHandle_
_020A7750:
	ldr r1, [sl]
	ldrh r0, [r1, #4]
	cmp r0, #0
	strne r1, [sl, #4]
	ldr r0, [sl, #0x20]
	cmp r0, #0
	beq _020A77C4
	ldr r0, [sl, #0x1c]
	ldr r2, [sl, #0x20]
	ldr r0, [r0, #0xc]
	cmp r2, #2
	ldr r1, [sl]
	sub r0, r1, r0
	mov r0, r0, lsl #0xd
	mov r1, r0, lsr #0x10
	beq _020A779C
	cmp r2, #3
	beq _020A77B8
	b _020A77C4
_020A779C:
	ldrh r0, [sl, #0x2c]
	cmp r1, r0
	bne _020A77C4
	ldr r0, [sl, #0x24]
	ldr r2, [sl, #0x28]
	blx r2
	b _020A77C4
_020A77B8:
	ldr r0, [sl, #0x24]
	ldr r2, [sl, #0x28]
	blx r2
_020A77C4:
	ldr r0, [sl, #0xc]
	cmp r0, #0
	beq _020A77E8
	ldr r0, [sl]
	ldr r1, [sl, #0x10]
	ldrh r0, [r0, #4]
	cmp r1, r0, lsl #12
	movge r0, #1
	bge _020A77EC
_020A77E8:
	mov r0, #0
_020A77EC:
	cmp r0, #0
	bne _020A76A8
	mov r0, sb
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNS_G2dTickAnimCtrl

	arm_func_start NNS_G2dSetAnimCtrlCurrentFrame
NNS_G2dSetAnimCtrlCurrentFrame: ; 0x020A77FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl SetAnimCtrlCurrentFrameImpl_
	cmp r0, #0
	movne r1, #0
	strne r1, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G2dSetAnimCtrlCurrentFrame

	arm_func_start NNS_G2dGetAnimCtrlCurrentFrame
NNS_G2dGetAnimCtrlCurrentFrame: ; 0x020A7818
	ldr r1, [r0, #0x1c]
	ldr r2, [r0, #0]
	ldr r0, [r1, #0xc]
	sub r0, r2, r0
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end NNS_G2dGetAnimCtrlCurrentFrame

	arm_func_start NNS_G2dInitAnimCtrl
NNS_G2dInitAnimCtrl: ; 0x020A7834
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x20
	bl NNS_G2dInitAnimCallBackFunctor
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #4]
	str r1, [r4, #8]
	mov r0, #1
	str r0, [r4, #0xc]
	str r1, [r4, #0x10]
	mov r0, #0x1000
	str r0, [r4, #0x14]
	str r1, [r4, #0x18]
	str r1, [r4, #0x1c]
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G2dInitAnimCtrl

	arm_func_start NNS_G2dInitAnimCallBackFunctor
NNS_G2dInitAnimCallBackFunctor: ; 0x020A7874
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #8]
	strh r1, [r0, #0xc]
	bx lr
	arm_func_end NNS_G2dInitAnimCallBackFunctor

	arm_func_start NNS_G2dResetAnimCtrlState
NNS_G2dResetAnimCtrlState: ; 0x020A788C
	ldr r1, [r0, #0x14]
	cmp r1, #0
	movgt r2, #1
	ldr r1, [r0, #8]
	movle r2, #0
	teq r2, r1
	ldr r2, [r0, #0x1c]
	beq _020A78BC
	ldrh r1, [r2, #2]
	ldr r2, [r2, #0xc]
	add r1, r2, r1, lsl #3
	b _020A78CC
_020A78BC:
	ldrh r1, [r2]
	ldr r2, [r2, #0xc]
	add r1, r2, r1, lsl #3
	sub r1, r1, #8
_020A78CC:
	str r1, [r0, #0]
	ldr r2, [r0, #0]
	ldr ip, _020A78E8 ; =NNS_G2dTickAnimCtrl
	mov r1, #0
	str r2, [r0, #4]
	str r1, [r0, #0x10]
	bx ip
	; .align 2, 0
_020A78E8: .word NNS_G2dTickAnimCtrl
	arm_func_end NNS_G2dResetAnimCtrlState

	arm_func_start NNS_G2dBindAnimCtrl
NNS_G2dBindAnimCtrl: ; 0x020A78EC
	ldr ip, _020A78F8 ; =NNS_G2dResetAnimCtrlState
	str r1, [r0, #0x1c]
	bx ip
	; .align 2, 0
_020A78F8: .word NNS_G2dResetAnimCtrlState
	arm_func_end NNS_G2dBindAnimCtrl

	arm_func_start NNSi_G2dIsAnimCtrlLoopAnim
NNSi_G2dIsAnimCtrlLoopAnim: ; 0x020A78FC
	ldr r1, [r0, #0x18]
	cmp r1, #0
	ldreq r0, [r0, #0x1c]
	ldreq r1, [r0, #8]
	cmp r1, #2
	cmpne r1, #4
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end NNSi_G2dIsAnimCtrlLoopAnim