	.include "macros/function.inc"
	.include "include/unk_020A9104.inc"

	

	.text


	arm_func_start SetMCDataToMCInstanceImpl_
SetMCDataToMCInstanceImpl_: ; 0x020A9104
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r1
	str r0, [sp]
	str sl, [r0]
	ldr r0, [r0, #8]
	mov sb, r2
	cmp r0, #1
	bne _020A926C
	ldrh r1, [sl, #2]
	ldr r0, [sp]
	mov r4, #0
	ldr r5, [r0, #0xc]
	cmp r1, #0
	bls _020A9164
	mov r3, r4
	mov r0, #0x5c
_020A9144:
	mla r1, r4, r0, r5
	str r3, [r1, #0x58]
	ldrh r2, [sl, #2]
	add r1, r4, #1
	mov r1, r1, lsl #0x10
	cmp r2, r1, lsr #16
	mov r4, r1, lsr #0x10
	bhi _020A9144
_020A9164:
	ldrh r0, [sl]
	mov r8, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9174:
	ldr r0, [sl, #4]
	mov r1, #0x5c
	add r6, r0, r8, lsl #3
	ldrh r0, [r6, #6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	mla r7, r0, r1, r5
	ldr r0, [r7, #0x58]
	cmp r0, #0
	bne _020A9250
	ldr r0, [sp]
	ldrh r1, [r6]
	ldr r0, [r0, #4]
	bl NNS_G2dGetAnimSequenceByIdx
	mov r4, r0
	mov r0, r7
	mov r1, r4
	bl NNS_G2dSetCellAnimationSequence
	mov r0, #1
	str r0, [r7, #0xc]
	ldrh r0, [r6, #6]
	and r0, r0, #0xf
	cmp r0, #1
	bne _020A9248
	ldrh r3, [r4]
	mov r6, #0
	mov r1, r6
	cmp r3, #0
	bls _020A9208
	ldr r2, [r4, #0xc]
_020A91F0:
	add r0, r2, r1, lsl #3
	ldrh r0, [r0, #4]
	add r1, r1, #1
	cmp r1, r3
	add r6, r6, r0
	blo _020A91F0
_020A9208:
	mov r0, r7
	bl NNSi_G2dIsAnimCtrlLoopAnim
	cmp r0, #0
	beq _020A9234
	mov r0, sb
	mov r1, r6
	bl _u32_div_f
	mov r0, r7
	mov r1, r1, lsl #0xc
	bl NNS_G2dTickCellAnimation
	b _020A9248
_020A9234:
	cmp sb, r6
	movlo r6, sb
	mov r0, r7
	mov r1, r6, lsl #0xc
	bl NNS_G2dTickCellAnimation
_020A9248:
	mov r0, #1
	str r0, [r7, #0x58]
_020A9250:
	ldrh r1, [sl]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r8, r0, lsr #0x10
	bhi _020A9174
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A926C:
	ldr r0, [sp]
	ldrh r1, [sl]
	ldr fp, [r0, #0xc]
	mov r7, #0
	cmp r1, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9284:
	mov r0, #0x28
	mul r2, r7, r0
	ldr r3, [sl, #4]
	mov r0, r7, lsl #3
	ldrh r1, [r3, r0]
	ldr r0, [sp]
	ldr r6, [fp, r2]
	ldr r0, [r0, #4]
	add r5, r3, r7, lsl #3
	bl NNS_G2dGetAnimSequenceByIdx
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl NNS_G2dSetCellAnimationSequence
	mov r0, #1
	str r0, [r6, #0xc]
	ldrh r0, [r5, #6]
	and r0, r0, #0xf
	cmp r0, #1
	bne _020A9344
	ldrh r3, [r4]
	mov r8, #0
	mov r1, r8
	cmp r3, #0
	bls _020A9304
	ldr r2, [r4, #0xc]
_020A92EC:
	add r0, r2, r1, lsl #3
	ldrh r0, [r0, #4]
	add r1, r1, #1
	cmp r1, r3
	add r8, r8, r0
	blo _020A92EC
_020A9304:
	mov r0, r6
	bl NNSi_G2dIsAnimCtrlLoopAnim
	cmp r0, #0
	beq _020A9330
	mov r0, sb
	mov r1, r8
	bl _u32_div_f
	mov r0, r6
	mov r1, r1, lsl #0xc
	bl NNS_G2dTickCellAnimation
	b _020A9344
_020A9330:
	cmp sb, r8
	movlo r8, sb
	mov r0, r6
	mov r1, r8, lsl #0xc
	bl NNS_G2dTickCellAnimation
_020A9344:
	mov r0, #0x28
	mla r3, r7, r0, fp
	mov r0, #1
	str r0, [r3, #8]
	ldrsh r1, [r5, #2]
	ldrsh r2, [r5, #4]
	add r0, r3, #0xc
	bl NNSi_G2dSrtcSetTrans
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [sl]
	mov r7, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020A9284
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end SetMCDataToMCInstanceImpl_

	arm_func_start NNS_G2dSetAnimSequenceToMCAnimation
NNS_G2dSetAnimSequenceToMCAnimation: ; 0x020A9380
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl NNS_G2dBindAnimCtrl
	mov r0, #0
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl NNS_G2dGetAnimCtrlCurrentElement
	mov r5, r0
	ldrh r1, [r5]
	ldr r0, [r4, #0x44]
	bl NNS_G2dGetMultiCellDataByIdx
	ldr r1, [r4, #0x1c]
	mov r7, r0
	ldr r1, [r1, #4]
	add r0, r4, #0x48
	and r6, r1, #0xff
	mov r1, #1
	bl NNSi_G2dSrtcInitControl
	cmp r6, #0
	beq _020A9424
	cmp r6, #2
	bne _020A93FC
	ldrsh r1, [r5, #4]
	ldrsh r2, [r5, #6]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetTrans
	b _020A9424
_020A93FC:
	add r0, r4, #0x48
	ldmib r5, {r1, r2}
	bl NNSi_G2dSrtcSetSRTScale
	ldrh r1, [r5, #2]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetSRTRotZ
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetTrans
_020A9424:
	ldrh r2, [r4, #0x30]
	mov r1, r7
	add r0, r4, #0x34
	bl SetMCDataToMCInstanceImpl_
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_G2dSetAnimSequenceToMCAnimation

	arm_func_start NNS_G2dGetMCBankNumNodesRequired
NNS_G2dGetMCBankNumNodesRequired: ; 0x020A9438
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r0, [r4]
	mov r5, #0
	mov r6, r5
	cmp r0, #0
	bls _020A9484
_020A9454:
	mov r0, r4
	mov r1, r6
	bl NNS_G2dGetMultiCellDataByIdx
	ldrh r0, [r0]
	ldrh r1, [r4]
	cmp r0, r5
	movhi r5, r0
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r6, r0, lsr #0x10
	bhi _020A9454
_020A9484:
	mov r0, r5
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G2dGetMCBankNumNodesRequired

	arm_func_start NNS_G2dTickMCInstance
NNS_G2dTickMCInstance: ; 0x020A948C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	ldr r0, [r7, #8]
	mov r6, r1
	cmp r0, #1
	ldr r0, [r7, #0]
	mov r4, #0
	ldr r5, [r7, #0xc]
	bne _020A94EC
	ldrh r0, [r0, #2]
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x5c
_020A94C0:
	mla r0, r4, r8, r5
	mov r1, r6
	bl NNS_G2dTickCellAnimation
	ldr r1, [r7, #0]
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1, #2]
	mov r4, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020A94C0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020A94EC:
	ldrh r0, [r0]
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	mov r8, #0x28
_020A94FC:
	mul r0, r4, r8
	ldr r0, [r5, r0]
	mov r1, r6
	bl NNS_G2dTickCellAnimation
	ldr r1, [r7, #0]
	add r0, r4, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1]
	mov r4, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020A94FC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNS_G2dTickMCInstance

	arm_func_start NNS_G2dTickMCAnimation
NNS_G2dTickMCAnimation: ; 0x020A952C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r2, [r4, #0]
	mov r6, r1
	ldrh r5, [r2, #4]
	bl NNS_G2dTickAnimCtrl
	cmp r0, #0
	beq _020A95FC
	ldrh r0, [r4, #0x30]
	add r0, r0, r5
	strh r0, [r4, #0x30]
	ldr r0, [r4, #4]
	ldrh r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl NNS_G2dGetAnimCtrlCurrentElement
	mov r5, r0
	ldrh r1, [r5]
	ldr r0, [r4, #0x44]
	bl NNS_G2dGetMultiCellDataByIdx
	ldr r1, [r4, #0x1c]
	mov r7, r0
	ldr r1, [r1, #4]
	add r0, r4, #0x48
	and r6, r1, #0xff
	mov r1, #1
	bl NNSi_G2dSrtcInitControl
	cmp r6, #0
	beq _020A95E8
	cmp r6, #2
	bne _020A95C0
	ldrsh r1, [r5, #4]
	ldrsh r2, [r5, #6]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetTrans
	b _020A95E8
_020A95C0:
	add r0, r4, #0x48
	ldmib r5, {r1, r2}
	bl NNSi_G2dSrtcSetSRTScale
	ldrh r1, [r5, #2]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetSRTRotZ
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetTrans
_020A95E8:
	ldrh r2, [r4, #0x30]
	mov r1, r7
	add r0, r4, #0x34
	bl SetMCDataToMCInstanceImpl_
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A95FC:
	mov r1, r6
	add r0, r4, #0x34
	bl NNS_G2dTickMCInstance
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_G2dTickMCAnimation

	arm_func_start NNS_G2dSetMCAnimationCurrentFrame
NNS_G2dSetMCAnimationCurrentFrame: ; 0x020A960C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl NNS_G2dSetAnimCtrlCurrentFrame
	cmp r0, #0
	ldrne r0, [r4, #4]
	ldrneh r0, [r0, #4]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	bl NNS_G2dGetAnimCtrlCurrentElement
	mov r5, r0
	ldrh r1, [r5]
	ldr r0, [r4, #0x44]
	bl NNS_G2dGetMultiCellDataByIdx
	ldr r1, [r4, #0x1c]
	mov r7, r0
	ldr r1, [r1, #4]
	add r0, r4, #0x48
	and r6, r1, #0xff
	mov r1, #1
	bl NNSi_G2dSrtcInitControl
	cmp r6, #0
	beq _020A96AC
	cmp r6, #2
	bne _020A9684
	ldrsh r1, [r5, #4]
	ldrsh r2, [r5, #6]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetTrans
	b _020A96AC
_020A9684:
	add r0, r4, #0x48
	ldmib r5, {r1, r2}
	bl NNSi_G2dSrtcSetSRTScale
	ldrh r1, [r5, #2]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetSRTRotZ
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x48
	bl NNSi_G2dSrtcSetTrans
_020A96AC:
	ldrh r2, [r4, #0x30]
	mov r1, r7
	add r0, r4, #0x34
	bl SetMCDataToMCInstanceImpl_
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_G2dSetMCAnimationCurrentFrame

	arm_func_start NNS_G2dInitMCAnimation
NNS_G2dInitMCAnimation: ; 0x020A96C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, #0
	str r5, [r0, #0x3c]
	ldr r7, [sp, #0x28]
	str r5, [r0, #0x34]
	mov sl, r1
	str r7, [r0, #0x38]
	str r0, [sp]
	movs r8, r3
	mov sb, r2
	str sl, [r0, #0x40]
	ldr fp, [sp, #0x2c]
	beq _020A9744
_020A96F4:
	mov r0, #0x28
	mul r4, r5, r0
	mov r1, #1
	add r0, sl, r4
	bl NNSi_G2dInitializeNode
	mov r0, #0x58
	mla r6, r5, r0, sb
	mov r0, r7
	mov r1, #0
	str r6, [sl, r4]
	bl NNS_G2dGetAnimSequenceByIdx
	mov r1, r0
	mov r0, r6
	mov r2, fp
	bl NNS_G2dInitCellAnimation
	add r0, r5, #1
	mov r0, r0, lsl #0x10
	cmp r8, r0, lsr #16
	mov r5, r0, lsr #0x10
	bhi _020A96F4
_020A9744:
	ldr r0, [sp]
	bl NNS_G2dInitAnimCtrl
	ldr r0, [sp]
	ldr r3, [sp, #0x30]
	ldr r2, [sp]
	add r0, r0, #0x48
	mov r1, #1
	str r3, [r2, #0x44]
	bl NNSi_G2dSrtcInitControl
	ldr r0, [sp]
	mov r1, #0
	strh r1, [r0, #0x30]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNS_G2dInitMCAnimation