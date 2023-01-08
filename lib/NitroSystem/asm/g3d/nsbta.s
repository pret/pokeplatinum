	.include "macros/function.inc"
	.include "include/nsbta.inc"

	

	.text


	arm_func_start GetTexSRTAnmVectorVal_
GetTexSRTAnmVectorVal_: ; 0x020B57F0
	tst r1, #0x20000000
	movne r0, r2
	bxne lr
	tst r1, #-0x40000000
	add r0, r0, r2
	beq _020B58AC
	mov r2, r1, lsl #0x10
	tst r1, #0x40000000
	mov ip, r2, lsr #0x10
	beq _020B5840
	tst r3, #1
	beq _020B5838
	cmp r3, ip
	movhi r2, ip, lsr #1
	addhi r3, r2, #1
	bhi _020B58AC
	mov r3, r3, lsr #1
	b _020B58C0
_020B5838:
	mov r3, r3, lsr #1
	b _020B58AC
_020B5840:
	ands r2, r3, #3
	beq _020B58A8
	cmp r3, ip
	addhi r3, r2, ip, lsr #2
	bhi _020B58AC
	tst r3, #1
	beq _020B58A0
	tst r3, #2
	movne r3, r3, lsr #2
	addne r2, r3, #1
	moveq r2, r3, lsr #2
	addeq r3, r2, #1
	tst r1, #0x10000000
	ldreq r2, [r0, r2, lsl #2]
	ldreq r1, [r0, r3, lsl #2]
	beq _020B5890
	mov r2, r2, lsl #1
	mov r1, r3, lsl #1
	ldrsh r2, [r0, r2]
	ldrsh r1, [r0, r1]
_020B5890:
	add r0, r2, r2, lsl #1
	add r0, r0, r1
	mov r0, r0, asr #2
	bx lr
_020B58A0:
	mov r3, r3, lsr #2
	b _020B58C0
_020B58A8:
	mov r3, r3, lsr #2
_020B58AC:
	tst r1, #0x10000000
	movne r1, r3, lsl #1
	ldrnesh r0, [r0, r1]
	ldreq r0, [r0, r3, lsl #2]
	bx lr
_020B58C0:
	tst r1, #0x10000000
	addeq r1, r0, r3, lsl #2
	ldreq r0, [r0, r3, lsl #2]
	ldreq r1, [r1, #4]
	beq _020B58E4
	add r1, r0, r3, lsl #1
	mov r2, r3, lsl #1
	ldrsh r0, [r0, r2]
	ldrsh r1, [r1, #2]
_020B58E4:
	add r0, r0, r1
	mov r0, r0, asr #1
	bx lr
	arm_func_end GetTexSRTAnmVectorVal_

	arm_func_start GetTexSRTAnmSinCosVal_
GetTexSRTAnmSinCosVal_: ; 0x020B58F0
	tst r1, #0x20000000
	movne r0, r2
	bxne lr
	tst r1, #-0x40000000
	add r0, r0, r2
	beq _020B59C0
	mov r2, r1, lsl #0x10
	tst r1, #0x40000000
	mov r2, r2, lsr #0x10
	beq _020B5940
	tst r3, #1
	beq _020B5938
	cmp r3, r2
	movhi r1, r2, lsr #1
	addhi r3, r1, #1
	bhi _020B59C0
	mov r1, r3, lsr #1
	b _020B59C8
_020B5938:
	mov r3, r3, lsr #1
	b _020B59C0
_020B5940:
	ands r1, r3, #3
	beq _020B59BC
	cmp r3, r2
	addhi r3, r1, r2, lsr #2
	bhi _020B59C0
	tst r3, #1
	beq _020B59B4
	tst r3, #2
	movne r3, r3, lsr #2
	addne r1, r3, #1
	moveq r1, r3, lsr #2
	add r2, r0, r1, lsl #2
	mov ip, r1, lsl #2
	addeq r3, r1, #1
	add r1, r0, r3, lsl #2
	ldrsh r2, [r2, #2]
	mov r3, r3, lsl #2
	ldrsh ip, [r0, ip]
	ldrsh r1, [r1, #2]
	ldrsh r3, [r0, r3]
	add r2, r2, r2, lsl #1
	add r0, r2, r1
	add ip, ip, ip, lsl #1
	mov r1, r0, asr #2
	add r2, ip, r3
	mov r0, r2, lsl #0xe
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr
_020B59B4:
	mov r1, r3, lsr #2
	b _020B59C8
_020B59BC:
	mov r3, r3, lsr #2
_020B59C0:
	ldr r0, [r0, r3, lsl #2]
	bx lr
_020B59C8:
	add r3, r0, r1, lsl #2
	mov ip, r1, lsl #2
	ldrsh r2, [r3, #2]
	ldrsh r1, [r3, #6]
	ldrsh ip, [r0, ip]
	ldrsh r3, [r3, #4]
	add r0, r2, r1
	mov r1, r0, asr #1
	add r0, ip, r3
	mov r0, r0, lsl #0xf
	mov r1, r1, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr
	arm_func_end GetTexSRTAnmSinCosVal_

	arm_func_start GetTexSRTAnm_
GetTexSRTAnm_: ; 0x020B59FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r6, r2
	mov r5, r3
	adds r3, r7, #8
	beq _020B5A38
	ldrb r0, [r7, #9]
	cmp r1, r0
	bhs _020B5A38
	ldrh r2, [r7, #0xe]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r4, r0, r1, r2
	b _020B5A3C
_020B5A38:
	mov r4, #0
_020B5A3C:
	ldr r1, [r4, #0x18]
	ldr r2, [r4, #0x1c]
	mov r0, r7
	mov r3, r6
	ldr r8, [r5]
	bl GetTexSRTAnmVectorVal_
	mov sb, r0
	ldr r1, [r4, #0x20]
	ldr r2, [r4, #0x24]
	mov r0, r7
	mov r3, r6
	bl GetTexSRTAnmVectorVal_
	cmp sb, #0
	cmpeq r0, #0
	strne sb, [r5, #0x24]
	strne r0, [r5, #0x28]
	orreq r8, r8, #4
	ldr r1, [r4, #0x10]
	ldr r2, [r4, #0x14]
	bicne r8, r8, #4
	mov r0, r7
	mov r3, r6
	bl GetTexSRTAnmSinCosVal_
	cmp r0, #0x10000000
	orreq r8, r8, #2
	beq _020B5AB4
	strh r0, [r5, #0x20]
	mov r0, r0, lsr #0x10
	strh r0, [r5, #0x22]
	bic r8, r8, #2
_020B5AB4:
	mov r0, r7
	mov r3, r6
	ldmia r4, {r1, r2}
	bl GetTexSRTAnmVectorVal_
	mov sb, r0
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	mov r0, r7
	mov r3, r6
	bl GetTexSRTAnmVectorVal_
	cmp sb, #0x1000
	cmpeq r0, #0x1000
	orreq r8, r8, #1
	strne sb, [r5, #0x18]
	strne r0, [r5, #0x1c]
	bicne r8, r8, #1
	str r8, [r5]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end GetTexSRTAnm_

	arm_func_start NNSi_G3dAnmObjInitNsBta
NNSi_G3dAnmObjInitNsBta: ; 0x020B5AFC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov sb, r1
	cmpne r0, #0
	addne r7, r2, r0
	ldr r0, _020B5BCC ; =0x02100ED4
	add r1, sl, #0x1a
	ldr r3, [r0, #0]
	mov r0, #0
	str r3, [sl, #0xc]
	ldrb r2, [r2, #0x18]
	moveq r7, #0
	strb r2, [sl, #0x19]
	mov r2, r2, lsl #1
	bl MIi_CpuClear16
	ldrb r0, [sb, #9]
	mov r6, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r8, r6
	add r5, sb, #8
	mov fp, r6
	mvn r4, #0
_020B5B60:
	cmp r5, #0
	beq _020B5B8C
	ldrb r0, [sb, #9]
	cmp r6, r0
	bhs _020B5B8C
	ldrh r0, [sb, #0xe]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r8
	b _020B5B90
_020B5B8C:
	mov r1, fp
_020B5B90:
	cmp r7, #0
	moveq r0, r4
	beq _020B5BA4
	add r0, r7, #4
	bl NNS_G3dGetResDictIdxByName
_020B5BA4:
	cmp r0, #0
	orrge r1, r6, #0x100
	addge r0, sl, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [sb, #9]
	add r6, r6, #1
	add r8, r8, #0x10
	cmp r6, r0
	blo _020B5B60
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B5BCC: .word 0x02100ED4
	arm_func_end NNSi_G3dAnmObjInitNsBta

	arm_func_start NNSi_G3dAnmCalcNsBta
NNSi_G3dAnmCalcNsBta: ; 0x020B5BD0
	stmfd sp!, {r4, lr}
	ldr ip, [r1]
	mov r4, r0
	mov r2, r2, lsl #0x10
	ldr r0, [r1, #8]
	mov r1, r2, lsr #0x10
	mov r3, r4
	mov r2, ip, asr #0xc
	bl GetTexSRTAnm_
	ldr r0, [r4, #0x10]
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x40000000
	str r0, [r4, #0x10]
	ldr r0, [r4, #0]
	orr r0, r0, #8
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	arm_func_end NNSi_G3dAnmCalcNsBta