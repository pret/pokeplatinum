	.include "macros/function.inc"
	.include "include/unk_020B53D8.inc"

	

	.text


	arm_func_start GetMatColAnmValue_
GetMatColAnmValue_: ; 0x020B53D8
	tst r1, #0x20000000
	movne r0, r1, lsl #0x10
	movne r0, r0, lsr #0x10
	bxne lr
	mov r3, r1, lsl #0x10
	tst r1, #-0x40000000
	add r0, r0, r3, lsr #16
	moveq r1, r2, lsl #1
	ldreqh r0, [r0, r1]
	bxeq lr
	ldr r3, _020B5538 ; =0x1FFF0000
	tst r1, #0x40000000
	and r1, r1, r3
	mov r3, r1, lsr #0x10
	beq _020B5448
	tst r2, #1
	beq _020B543C
	cmp r2, r3
	bls _020B5434
	bic r1, r3, #1
	add r0, r0, r1
	ldrh r0, [r0, #2]
	bx lr
_020B5434:
	mov r1, r2, lsr #1
	b _020B54F0
_020B543C:
	bic r1, r2, #1
	ldrh r0, [r0, r1]
	bx lr
_020B5448:
	ands r1, r2, #3
	beq _020B54E0
	cmp r2, r3
	bls _020B546C
	mov r2, r3, lsr #2
	mov r1, r1, lsl #1
	add r0, r0, r2, lsl #1
	ldrh r0, [r1, r0]
	bx lr
_020B546C:
	tst r2, #1
	beq _020B54D8
	tst r2, #2
	movne r3, r2, lsr #2
	addne r1, r3, #1
	moveq r1, r2, lsr #2
	mov r2, r1, lsl #1
	addeq r3, r1, #1
	mov r1, r3, lsl #1
	ldrh r2, [r0, r2]
	ldrh ip, [r0, r1]
	ldr r0, _020B553C ; =0x00007C1F
	and r1, r2, #0x3e0
	and r3, r2, r0
	add r2, r1, r1, lsl #1
	and r1, ip, #0x3e0
	add r1, r2, r1
	add r3, r3, r3, lsl #1
	and r2, ip, r0
	add r2, r3, r2
	mov r1, r1, lsr #2
	and r2, r0, r2, lsr #2
	and r0, r1, #0x3e0
	orr r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
_020B54D8:
	mov r1, r2, lsr #2
	b _020B54F0
_020B54E0:
	mov r1, r2, lsr #2
	mov r1, r1, lsl #1
	ldrh r0, [r0, r1]
	bx lr
_020B54F0:
	mov r2, r1, lsl #1
	add r1, r0, r1, lsl #1
	ldrh r3, [r0, r2]
	ldrh ip, [r1, #2]
	ldr r0, _020B553C ; =0x00007C1F
	and r2, r3, #0x3e0
	and r1, ip, #0x3e0
	add r1, r2, r1
	mov r1, r1, lsr #1
	and r3, r3, r0
	and r2, ip, r0
	add r2, r3, r2
	and r2, r0, r2, lsr #1
	and r0, r1, #0x3e0
	orr r0, r2, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	; .align 2, 0
_020B5538: .word 0x1FFF0000
_020B553C: .word 0x00007C1F
	arm_func_end GetMatColAnmValue_

	arm_func_start GetMatColAnmuAlphaValue_
GetMatColAnmuAlphaValue_: ; 0x020B5540
	tst r1, #0x20000000
	movne r0, r1, lsl #0x10
	movne r0, r0, lsr #0x10
	bxne lr
	mov r3, r1, lsl #0x10
	add r3, r0, r3, lsr #16
	tst r1, #-0x40000000
	ldreqb r0, [r3, r2]
	bxeq lr
	ldr r0, _020B5628 ; =0x1FFF0000
	tst r1, #0x40000000
	and r0, r1, r0
	mov r0, r0, lsr #0x10
	beq _020B55B4
	tst r2, #1
	beq _020B55AC
	cmp r2, r0
	addhi r0, r3, r0, lsr #1
	ldrhib r0, [r0, #1]
	bxhi lr
	add r0, r3, r2, lsr #1
	ldrb r1, [r3, r2, lsr #1]
	ldrb r0, [r0, #1]
	add r0, r1, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bx lr
_020B55AC:
	ldrb r0, [r3, r2, lsr #1]
	bx lr
_020B55B4:
	ands r1, r2, #3
	beq _020B5620
	cmp r2, r0
	addhi r0, r3, r0, lsr #2
	ldrhib r0, [r1, r0]
	bxhi lr
	tst r2, #1
	beq _020B5604
	tst r2, #2
	movne r2, r2, lsr #2
	addne r0, r2, #1
	moveq r0, r2, lsr #2
	ldrb r1, [r3, r0]
	addeq r2, r0, #1
	ldrb r0, [r3, r2]
	add r1, r1, r1, lsl #1
	add r0, r1, r0
	mov r0, r0, lsl #0xe
	mov r0, r0, lsr #0x10
	bx lr
_020B5604:
	add r0, r3, r2, lsr #2
	ldrb r1, [r3, r2, lsr #2]
	ldrb r0, [r0, #1]
	add r0, r1, r0
	mov r0, r0, lsl #0xf
	mov r0, r0, lsr #0x10
	bx lr
_020B5620:
	ldrb r0, [r3, r2, lsr #2]
	bx lr
	; .align 2, 0
_020B5628: .word 0x1FFF0000
	arm_func_end GetMatColAnmuAlphaValue_

	arm_func_start NNSi_G3dAnmObjInitNsBma
NNSi_G3dAnmObjInitNsBma: ; 0x020B562C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	cmp r2, #0
	ldrne r0, [r2, #8]
	mov sb, r1
	cmpne r0, #0
	addne r7, r2, r0
	ldr r0, _020B56FC ; =0x02100EDC
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
_020B5690:
	cmp r5, #0
	beq _020B56BC
	ldrb r0, [sb, #9]
	cmp r6, r0
	bhs _020B56BC
	ldrh r0, [sb, #0xe]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, r8
	b _020B56C0
_020B56BC:
	mov r1, fp
_020B56C0:
	cmp r7, #0
	moveq r0, r4
	beq _020B56D4
	add r0, r7, #4
	bl NNS_G3dGetResDictIdxByName
_020B56D4:
	cmp r0, #0
	orrge r1, r6, #0x100
	addge r0, sl, r0, lsl #1
	strgeh r1, [r0, #0x1a]
	ldrb r0, [sb, #9]
	add r6, r6, #1
	add r8, r8, #0x10
	cmp r6, r0
	blo _020B5690
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B56FC: .word 0x02100EDC
	arm_func_end NNSi_G3dAnmObjInitNsBma

	arm_func_start NNSi_G3dAnmCalcNsBma
NNSi_G3dAnmCalcNsBma: ; 0x020B5700
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r4, [r1, #8]
	ldr r1, [r1, #0]
	mov r7, r0
	mov r5, r1, asr #0xc
	adds r3, r4, #8
	beq _020B5748
	ldrb r1, [r4, #9]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bls _020B5748
	ldrh r1, [r4, #0xe]
	ldrh r0, [r3, r1]
	add r1, r3, r1
	add r1, r1, #4
	mla r6, r0, r2, r1
	b _020B574C
_020B5748:
	mov r6, #0
_020B574C:
	ldr r1, [r6, #0]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmValue_
	mov r8, r0
	ldr r1, [r6, #4]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmValue_
	ldr r1, [r7, #4]
	orr r0, r8, r0, lsl #16
	tst r1, #0x8000
	movne r1, #1
	moveq r1, #0
	orr r0, r0, r1, lsl #15
	str r0, [r7, #4]
	ldr r1, [r6, #0xc]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmValue_
	mov r8, r0
	ldr r1, [r6, #8]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmValue_
	ldr r1, [r7, #8]
	orr r0, r0, r8, lsl #16
	tst r1, #0x8000
	movne r1, #1
	moveq r1, #0
	orr r0, r0, r1, lsl #15
	str r0, [r7, #8]
	ldr r1, [r6, #0x10]
	mov r0, r4
	mov r2, r5
	bl GetMatColAnmuAlphaValue_
	ldr r1, [r7, #0xc]
	bic r1, r1, #0x1f0000
	orr r0, r1, r0, lsl #16
	str r0, [r7, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G3dAnmCalcNsBma