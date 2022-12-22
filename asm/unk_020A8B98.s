	.include "macros/function.inc"
	.include "include/unk_020A8B98.inc"

	

	.text


	arm_func_start ApplyCurrentAnimResult_
ApplyCurrentAnimResult_: ; 0x020A8B98
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	ldrh r1, [r1, #4]
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl NNS_G2dGetAnimCtrlCurrentElement
	mov r0, r4
	bl NNS_G2dGetAnimCtrlCurrentElement
	mov r5, r0
	ldr r6, [r4, #0x34]
	ldrh r1, [r5]
	mov r0, r6
	bl NNS_G2dGetCellDataByIdx
	str r0, [r4, #0x30]
	ldr r1, [r4, #0x1c]
	add r0, r4, #0x3c
	ldr r2, [r1, #4]
	mov r1, #1
	and r7, r2, #0xff
	bl NNSi_G2dSrtcInitControl
	cmp r7, #0
	beq _020A8C38
	cmp r7, #2
	bne _020A8C10
	ldrsh r1, [r5, #4]
	ldrsh r2, [r5, #6]
	add r0, r4, #0x3c
	bl NNSi_G2dSrtcSetTrans
	b _020A8C38
_020A8C10:
	add r0, r4, #0x3c
	ldmib r5, {r1, r2}
	bl NNSi_G2dSrtcSetSRTScale
	ldrh r1, [r5, #2]
	add r0, r4, #0x3c
	bl NNSi_G2dSrtcSetSRTRotZ
	ldrsh r1, [r5, #0xc]
	ldrsh r2, [r5, #0xe]
	add r0, r4, #0x3c
	bl NNSi_G2dSrtcSetTrans
_020A8C38:
	ldr r2, [r6, #0xc]
	cmp r2, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x38]
	mvn r0, #0
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r5]
	ldr r2, [r2, #4]
	ldr r0, [r4, #0x38]
	add r3, r2, r1, lsl #3
	ldmia r3, {r1, r2}
	bl NNS_G2dSetCellTransferStateRequested
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ApplyCurrentAnimResult_

	arm_func_start NNS_G2dInitCellAnimation
NNS_G2dInitCellAnimation: ; 0x020A8C88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	str r2, [r5, #0x34]
	mvn r2, #0
	add r0, r5, #0x3c
	mov r1, #1
	str r2, [r5, #0x38]
	bl NNSi_G2dSrtcInitControl
	mov r0, r5
	bl NNS_G2dInitAnimCtrl
	mov r0, r5
	mov r1, r4
	bl NNS_G2dSetCellAnimationSequence
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G2dInitCellAnimation

	arm_func_start NNS_G2dInitCellAnimationVramTransfered
NNS_G2dInitCellAnimationVramTransfered: ; 0x020A8CC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r2
	ldr r2, [r4, #0xc]
	mov r5, r1
	ldr r1, [r2, #0]
	ldr r2, [sp, #0x34]
	str r1, [sp]
	ldr r1, [sp, #0x38]
	str r2, [sp, #4]
	mov r6, r3
	mov r7, r0
	ldr ip, [sp, #0x3c]
	str r1, [sp, #8]
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	ldr r3, [sp, #0x30]
	mov r0, r6
	str ip, [sp, #0xc]
	bl NNSi_G2dInitCellTransferState
	str r6, [r7, #0x38]
	str r4, [r7, #0x34]
	add r0, r7, #0x3c
	mov r1, #1
	str r6, [r7, #0x38]
	bl NNSi_G2dSrtcInitControl
	mov r0, r7
	bl NNS_G2dInitAnimCtrl
	mov r0, r7
	mov r1, r5
	bl NNS_G2dSetCellAnimationSequence
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_G2dInitCellAnimationVramTransfered

	arm_func_start NNS_G2dSetCellAnimationSequence
NNS_G2dSetCellAnimationSequence: ; 0x020A8D48
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NNS_G2dBindAnimCtrl
	mov r0, r4
	bl ApplyCurrentAnimResult_
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G2dSetCellAnimationSequence

	arm_func_start NNS_G2dTickCellAnimation
NNS_G2dTickCellAnimation: ; 0x020A8D60
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NNS_G2dTickAnimCtrl
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ApplyCurrentAnimResult_
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G2dTickCellAnimation

	arm_func_start NNS_G2dSetCellAnimationCurrentFrame
NNS_G2dSetCellAnimationCurrentFrame: ; 0x020A8D80
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NNS_G2dSetAnimCtrlCurrentFrame
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ApplyCurrentAnimResult_
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G2dSetCellAnimationCurrentFrame

	arm_func_start NNS_G2dMakeCellToOams
NNS_G2dMakeCellToOams: ; 0x020A8DA0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldrh r5, [r2]
	ldr r4, [sp, #0x50]
	ldr sb, [sp, #0x48]
	str r4, [sp, #0x50]
	cmp r1, r5
	movhs r1, r5
	mov r4, #0
	cmp r1, #0
	str r4, [sp]
	bls _020A90E0
	ldrh r4, [sp, #0x4c]
	str r4, [sp, #4]
_020A8DD8:
	ldr r5, [sp]
	ldr r4, [sp]
	add r8, r0, r5, lsl #3
	mov r6, r5
	mov r5, #6
	mul r5, r6, r5
	ldr r7, [r2, #4]
	mov r4, r4, lsl #3
	add r6, r7, r5
	ldrh r5, [r7, r5]
	cmp r3, #0
	cmpeq sb, #0
	strh r5, [r0, r4]
	ldrh r4, [r6, #2]
	strh r4, [r8, #2]
	ldrh r4, [r6, #4]
	strh r4, [r8, #4]
	beq _020A90C4
	ldr r5, [r8]
	ldr r4, _020A90EC ; =0x01FF0000
	and r4, r5, r4
	mov r4, r4, lsr #0x10
	mov r4, r4, lsl #0x10
	mov r4, r4, asr #0x10
	cmp r4, #0xff
	orrgt r4, r4, #0xff00
	movgt r4, r4, lsl #0x10
	movgt r4, r4, asr #0x10
	mov r4, r4, lsl #0xc
	str r4, [sp, #0x18]
	ldr r4, [r8]
	and r4, r4, #0xff
	cmp r4, #0x7f
	orrgt r4, r4, #0xff00
	movgt r4, r4, lsl #0x10
	movgt r4, r4, asr #0x10
	mov r4, r4, lsl #0xc
	str r4, [sp, #0x1c]
	cmp r3, #0
	beq _020A9064
	ldr r6, [r8]
	and r5, r6, #0x300
	cmp r5, #0x100
	cmpne r5, #0x300
	andne r4, r6, #0x30000000
	orrne r5, r5, r4
	cmp r5, #0x300
	bne _020A8EE4
	ldr r4, _020A90F0 ; =0xC000C000
	ldr r7, _020A90F4 ; =0x020F9670
	and r5, r6, r4
	and r4, r5, #0xc000
	mov r6, r4, asr #0xe
	and r4, r5, #0xc0000000
	mov r4, r4, lsr #0x1e
	mov r4, r4, lsl #1
	add r7, r7, r6, lsl #3
	ldrh sl, [r4, r7]
	ldr r7, _020A90F8 ; =0x020F9658
	ldr r5, [sp, #0x18]
	add r6, r7, r6, lsl #3
	add r5, r5, sl, lsl #11
	str r5, [sp, #0x18]
	ldrh r4, [r4, r6]
	ldr r5, [sp, #0x1c]
	add r4, r5, r4, lsl #11
	str r4, [sp, #0x1c]
_020A8EE4:
	ldr sl, [r3, #8]
	ldr fp, [sp, #0x1c]
	ldr r4, [sp, #0x50]
	smull ip, fp, sl, fp
	cmp r4, #0
	movne r5, #0x300
	moveq r5, #0x100
	cmp r5, #0x300
	moveq r6, #1
	add r4, sp, #0x18
	movne r6, #0
	cmp r4, r4
	addeq r4, sp, #0x10
	adds sl, ip, #0x1000
	adc ip, fp, #0
	ldr r7, [r3, #0]
	ldr fp, [sp, #0x18]
	smlal sl, ip, r7, fp
	mov r7, sl, lsr #0xc
	orr r7, r7, ip, lsl #20
	str r7, [r4, #0]
	ldr sl, [r3, #0xc]
	ldr fp, [sp, #0x1c]
	ldr r7, [r3, #4]
	smull ip, fp, sl, fp
	adds ip, ip, #0x1000
	adc sl, fp, #0
	add fp, sp, #0x10
	cmp r4, fp
	ldr fp, [sp, #0x18]
	smlal ip, sl, r7, fp
	mov r7, ip, lsr #0xc
	orr r7, r7, sl, lsl #20
	str r7, [r4, #4]
	bne _020A8F80
	ldr r7, [sp, #0x10]
	ldr r4, [sp, #0x14]
	str r7, [sp, #0x18]
	str r4, [sp, #0x1c]
_020A8F80:
	cmp r5, #0x100
	cmpne r5, #0x300
	ldr r7, [r8]
	ldr r4, _020A90FC ; =0xC1FFFCFF
	beq _020A8FA0
	and r4, r7, r4
	orr r4, r4, r5
	b _020A8FB0
_020A8FA0:
	and r4, r7, r4
	orr r5, r4, r5
	ldr r4, [sp, #4]
	orr r4, r5, r4, lsl #25
_020A8FB0:
	str r4, [r8]
	cmp r6, #0
	ldr r6, [r8]
	ldr r5, _020A90F0 ; =0xC000C000
	ldr fp, [r3]
	and r7, r6, r5
	and r5, r7, #0xc000
	mov r6, r5, asr #0xe
	and r5, r7, #0xc0000000
	ldr r7, _020A90F4 ; =0x020F9670
	mov r5, r5, lsr #0x1e
	mov r5, r5, lsl #1
	add r7, r7, r6, lsl #3
	ldrh sl, [r5, r7]
	ldr r7, _020A90F8 ; =0x020F9658
	ldr r4, [sp, #0x18]
	add r6, r7, r6, lsl #3
	mov r7, sl, asr #1
	ldrh r6, [r5, r6]
	mov r5, r7, lsl #0xc
	rsb ip, r5, #0
	mov r6, r6, asr #1
	mla ip, fp, r7, ip
	ldr sl, [r3, #8]
	mov lr, r6, lsl #0xc
	mla fp, sl, r6, ip
	add r4, r4, fp
	str r4, [sp, #0x18]
	ldr sl, [r3, #4]
	rsb fp, lr, #0
	str sl, [sp, #0xc]
	ldr sl, [r3, #0xc]
	ldr ip, [sp, #0x1c]
	str sl, [sp, #8]
	ldr sl, [sp, #0xc]
	mla r7, sl, r7, fp
	ldr sl, [sp, #8]
	mla r6, sl, r6, r7
	add r6, ip, r6
	str r6, [sp, #0x1c]
	beq _020A9064
	sub r5, r4, r5
	sub r4, r6, lr
	str r5, [sp, #0x18]
	str r4, [sp, #0x1c]
_020A9064:
	cmp sb, #0
	beq _020A908C
	ldr r6, [sp, #0x18]
	ldr r4, [sb]
	ldr r5, [sp, #0x1c]
	add r4, r6, r4
	str r4, [sp, #0x18]
	ldr r4, [sb, #4]
	add r4, r5, r4
	str r4, [sp, #0x1c]
_020A908C:
	ldr r6, [r8]
	ldr r5, _020A9100 ; =0xFE00FF00
	ldr r4, [sp, #0x18]
	and r6, r6, r5
	ldr r5, [sp, #0x1c]
	add r4, r4, #0x800
	add r5, r5, #0x800
	mov r5, r5, asr #0xc
	mov r4, r4, asr #0xc
	and r5, r5, #0xff
	mov r4, r4, lsl #0x17
	orr r5, r6, r5
	orr r4, r5, r4, lsr #7
	str r4, [r8]
_020A90C4:
	ldr r4, [sp]
	add r4, r4, #1
	mov r4, r4, lsl #0x10
	cmp r1, r4, lsr #16
	mov r4, r4, lsr #0x10
	str r4, [sp]
	bhi _020A8DD8
_020A90E0:
	mov r0, r1
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A90EC: .word 0x01FF0000
_020A90F0: .word 0xC000C000
_020A90F4: .word 0x020F9670
_020A90F8: .word 0x020F9658
_020A90FC: .word 0xC1FFFCFF
_020A9100: .word 0xFE00FF00
	arm_func_end NNS_G2dMakeCellToOams