	.include "macros/function.inc"
	.include "include/unk_020B7334.inc"

	

	.text


	arm_func_start texmtxCalc_flag__dup3
texmtxCalc_flag__dup3: ; 0x020B7334
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, r1
	ldrh r2, [r6, #0x2c]
	ldrh r1, [r6, #0x2e]
	mov r7, r0
	mov sl, r2, lsl #0xc
	mov fp, r1, lsl #0xc
	mov r0, fp
	mov r1, sl
	bl FX_DivAsync
	ldrsh r3, [r6, #0x22]
	ldr r0, [r6, #0x18]
	ldrsh sb, [r6, #0x20]
	smull r2, r1, r0, r3
	mov r2, r2, lsr #0xc
	ldr r8, [r6, #0x1c]
	orr r2, r2, r1, lsl #20
	str r2, [r7, #0]
	smull r2, r1, r8, r3
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
	smull r2, r1, r0, sb
	mov r5, r2, lsr #0xc
	orr r5, r5, r1, lsl #20
	str r4, [r7, #0x14]
	bl FX_GetDivResult
	smull r2, r1, r8, sb
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [r7, #4]
	mov r0, sl
	mov r1, fp
	bl FX_DivAsync
	ldr lr, [r6, #0x1c]
	ldrsh r2, [r6, #0x20]
	ldr r8, [r6, #0x24]
	ldr r0, [r6, #0x28]
	smull sl, sb, r8, r2
	ldrh r1, [r6, #0x2c]
	smull r3, r2, r0, r2
	ldrsh ip, [r6, #0x22]
	str r1, [sp]
	mov fp, lr, asr #0x1f
	smlal r3, r2, r8, ip
	smull r8, ip, r0, ip
	subs r8, sl, r8
	sbc r0, sb, ip
	mov sb, r8, lsr #0xc
	mov ip, r3, lsr #0xc
	orr sb, sb, r0, lsl #20
	mov r3, r2, asr #0xc
	orr ip, ip, r2, lsl #20
	umull sl, r2, sb, lr
	mla r2, sb, fp, r2
	mov r8, r0, asr #0xc
	mla r2, r8, lr, r2
	ldr r1, [r6, #0x18]
	mov r8, sl, lsr #0xc
	orr r8, r8, r2, lsl #20
	add r2, r4, r8
	mov r0, r1, asr #0x1f
	umull r8, r4, ip, r1
	mla r4, ip, r0, r4
	mla r4, r3, r1, r4
	mov r0, r8, lsr #0xc
	orr r0, r0, r4, lsl #20
	sub r1, r5, r0
	ldr r0, [sp]
	sub r2, r2, #0x1000
	mul r1, r0, r1
	mov r0, r1, lsl #4
	str r0, [r7, #0x30]
	ldrh r0, [r6, #0x2e]
	rsb r0, r0, #0
	mul r1, r0, r2
	mov r0, r1, lsl #4
	str r0, [r7, #0x34]
	bl FX_GetDivResult
	rsb r1, r5, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r7, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end texmtxCalc_flag__dup3

	arm_func_start texmtxCalc_flagS__dup3
texmtxCalc_flagS__dup3: ; 0x020B7488
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrsh lr, [r5, #0x20]
	ldr r4, [r5, #0x28]
	ldrsh r0, [r5, #0x22]
	ldr ip, [r5, #0x24]
	smull r3, r2, r4, lr
	smlal r3, r2, ip, r0
	smull r1, r0, r4, r0
	mov r3, r3, lsr #0xc
	orr r3, r3, r2, lsl #20
	sub r4, lr, r3
	smull r3, r2, ip, lr
	subs r1, r3, r1
	sbc r0, r2, r0
	ldrh r2, [r5, #0x2c]
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	mul r0, r2, r4
	mov r0, r0, lsl #4
	str r0, [r6, #0x30]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2e]
	add r0, r0, r1
	rsb r1, r2, #0
	sub r0, r0, #0x1000
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagS__dup3

	arm_func_start texmtxCalc_flagR__dup3
texmtxCalc_flagR__dup3: ; 0x020B7568
	stmfd sp!, {r4, lr}
	ldr r3, [r1, #0x18]
	mov r2, #0
	str r3, [r0, #0]
	ldr r3, [r1, #0x1c]
	str r3, [r0, #0x14]
	str r2, [r0, #4]
	ldr ip, [r1, #0x24]
	ldr r3, [r1, #0x18]
	ldr r4, [r1, #0x28]
	smull lr, r3, ip, r3
	mov ip, lr, lsr #0xc
	orr ip, ip, r3, lsl #20
	ldrh lr, [r1, #0x2c]
	rsb r3, ip, #0
	ldr ip, [r1, #0x1c]
	rsb r4, r4, #0
	mul r3, lr, r3
	smull lr, ip, r4, ip
	mov r3, r3, lsl #4
	str r3, [r0, #0x30]
	mov r4, lr, lsr #0xc
	ldrh r3, [r1, #0x2e]
	ldr r1, [r1, #0x1c]
	orr r4, r4, ip, lsl #20
	add r1, r1, r4
	rsb r3, r3, #0
	sub r1, r1, #0x1000
	mul r1, r3, r1
	mov r1, r1, lsl #4
	str r1, [r0, #0x34]
	str r2, [r0, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end texmtxCalc_flagR__dup3

	arm_func_start texmtxCalc_flagRS__dup3
texmtxCalc_flagRS__dup3: ; 0x020B75EC
	stmfd sp!, {r3, lr}
	mov r2, #0x1000
	str r2, [r0, #0]
	str r2, [r0, #0x14]
	mov lr, #0
	str lr, [r0, #4]
	ldr r2, [r1, #0x24]
	ldrh r3, [r1, #0x2c]
	rsb r2, r2, #0
	ldr ip, [r1, #0x28]
	mul r2, r3, r2
	mov r2, r2, lsl #4
	str r2, [r0, #0x30]
	ldrh r1, [r1, #0x2e]
	rsb r2, ip, #0
	rsb r1, r1, #0
	mul r2, r1, r2
	mov r1, r2, lsl #4
	str r1, [r0, #0x34]
	str lr, [r0, #0x10]
	ldmia sp!, {r3, pc}
	arm_func_end texmtxCalc_flagRS__dup3

	arm_func_start texmtxCalc_flagT__dup3
texmtxCalc_flagT__dup3: ; 0x020B7640
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	ldrh r2, [sb, #0x2c]
	ldrh r1, [sb, #0x2e]
	mov sl, r0
	mov r8, r2, lsl #0xc
	mov fp, r1, lsl #0xc
	mov r0, fp
	mov r1, r8
	bl FX_DivAsync
	ldrsh r3, [sb, #0x22]
	ldr r0, [sb, #0x18]
	ldrsh r7, [sb, #0x20]
	ldr r5, [sb, #0x1c]
	smull r2, r1, r0, r3
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sl]
	smull r2, r1, r5, r3
	mov r4, r2, lsr #0xc
	orr r4, r4, r1, lsl #20
	smull r2, r1, r0, r7
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	str r4, [sl, #0x14]
	bl FX_GetDivResult
	smull r2, r1, r5, r7
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	mov r1, fp
	bl FX_DivAsync
	sub r0, r4, #0x1000
	ldrh r1, [sb, #0x2c]
	mul r2, r1, r6
	mov r1, r2, lsl #4
	str r1, [sl, #0x30]
	ldrh r1, [sb, #0x2e]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [sl, #0x34]
	bl FX_GetDivResult
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end texmtxCalc_flagT__dup3

	arm_func_start texmtxCalc_flagTS__dup3
texmtxCalc_flagTS__dup3: ; 0x020B770C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r1
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	mov r6, r0
	mov r4, r2, lsl #0xc
	mov r7, r1, lsl #0xc
	mov r0, r7
	mov r1, r4
	bl FX_DivAsync
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0]
	ldrsh r0, [r5, #0x22]
	str r0, [r6, #0x14]
	bl FX_GetDivResult
	ldrsh r2, [r5, #0x20]
	mov r1, r7
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrh r1, [r5, #0x2c]
	ldrsh r0, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [r6, #0x30]
	ldrh r1, [r5, #0x2e]
	ldrsh r0, [r5, #0x22]
	rsb r1, r1, #0
	sub r0, r0, #0x1000
	mul r0, r1, r0
	mov r0, r0, lsl #4
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagTS__dup3

	arm_func_start texmtxCalc_flagTR__dup3
texmtxCalc_flagTR__dup3: ; 0x020B77B0
	ldr r2, [r1, #0x18]
	mov r3, #0
	str r2, [r0, #0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str r3, [r0, #4]
	str r3, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x1c]
	rsb r2, r2, #0
	sub r1, r1, #0x1000
	mul r1, r2, r1
	mov r1, r1, lsl #4
	str r1, [r0, #0x34]
	str r3, [r0, #0x10]
	bx lr
	arm_func_end texmtxCalc_flagTR__dup3

	arm_func_start texmtxCalc_flagTRS__dup3
texmtxCalc_flagTRS__dup3: ; 0x020B77F0
	mov r2, #0x1000
	str r2, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end texmtxCalc_flagTRS__dup3

	arm_func_start NNSi_G3dSendTexSRTXsi
NNSi_G3dSendTexSRTXsi: ; 0x020B7814
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4, #0]
	mov r3, #3
	tst r0, #8
	ldrne r0, _020B7990 ; =0x00101610
	mov r2, #2
	strne r0, [sp]
	ldreq r0, _020B7994 ; =0x00101810
	mov r1, #0x1000
	streq r0, [sp]
	mov r0, #0
	str r3, [sp, #4]
	str r2, [sp, #0x48]
	str r1, [sp, #0x44]
	str r0, [sp, #0x40]
	str r0, [sp, #0x34]
	str r0, [sp, #0x30]
	str r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	str r0, [sp, #0x24]
	str r0, [sp, #0x20]
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	ldr r0, [r4, #0]
	tst r0, #1
	strne r1, [r4, #0x1c]
	strne r1, [r4, #0x18]
	ldr r0, [r4, #0]
	tst r0, #2
	beq _020B78A4
	mov r0, #0x1000
	strh r0, [r4, #0x22]
	mov r0, #0
	strh r0, [r4, #0x20]
_020B78A4:
	ldr r0, [r4, #0]
	tst r0, #4
	movne r0, #0
	strne r0, [r4, #0x28]
	strne r0, [r4, #0x24]
	ldr r1, [r4, #0]
	ldr r0, _020B7998 ; =0x02101124
	and r1, r1, #7
	ldr r2, [r0, r1, lsl #2]
	add r0, sp, #8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020B7924
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #8]
	ldr r2, [r4, #0x30]
	ldr r0, [sp, #0x38]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0xc]
	ldr r1, [r4, #0x30]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x38]
_020B7924:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020B7974
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	smull r2, r0, r3, r0
	mov r2, r2, lsr #0xc
	orr r2, r2, r0, lsl #20
	str r2, [sp, #0x18]
	ldr r2, [r4, #0x34]
	ldr r0, [sp, #0x3c]
	smull r3, r1, r2, r1
	mov r2, r3, lsr #0xc
	orr r2, r2, r1, lsl #20
	str r2, [sp, #0x1c]
	ldr r1, [r4, #0x34]
	smull r2, r0, r1, r0
	mov r1, r2, lsr #0xc
	orr r1, r1, r0, lsl #20
	str r1, [sp, #0x3c]
_020B7974:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020B7990: .word 0x00101610
_020B7994: .word 0x00101810
_020B7998: .word 0x02101124
	arm_func_end NNSi_G3dSendTexSRTXsi

	.data


	.global Unk_02101124
Unk_02101124: ; 0x02101124
	.incbin "incbin/arm9_data.bin", 0x2444, 0x20

