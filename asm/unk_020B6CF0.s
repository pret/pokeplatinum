	.include "macros/function.inc"
	.include "include/unk_020B6CF0.inc"

	

	.text


	arm_func_start texmtxCalc_flag__dup2
texmtxCalc_flag__dup2: ; 0x020B6CF0
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
	ldrsh r0, [sb, #0x22]
	ldr r3, [sb, #0x18]
	ldrsh r5, [sb, #0x20]
	ldr r4, [sb, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r7, [sl]
	str r5, [sl, #0x14]
	bl FX_GetDivResult
	mov r1, fp
	mul r0, r4, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	bl FX_DivAsync
	ldrh r1, [sb, #0x2c]
	ldrh r8, [sb, #0x2e]
	ldr r2, [sb, #0x28]
	rsb r0, r1, #0
	mul r3, r2, r8
	rsb r2, r8, #0
	add r8, r3, r2, lsl #11
	smull r3, r2, r5, r8
	smull r8, r5, r6, r8
	ldr fp, [sb, #0x24]
	mul ip, fp, r1
	rsb r0, ip, r0, lsl #11
	smlal r3, r2, r4, r0
	smull r4, r0, r7, r0
	subs r4, r4, r8
	sbc r0, r0, r5
	mov r4, r4, lsr #8
	orr r4, r4, r0, lsl #24
	add r0, r4, r1, lsl #15
	str r0, [sl, #0x30]
	ldrh r1, [sb, #0x2e]
	mov r0, r3, lsr #8
	orr r0, r0, r2, lsl #24
	add r0, r0, r1, lsl #15
	str r0, [sl, #0x34]
	bl FX_GetDivResult
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end texmtxCalc_flag__dup2

	arm_func_start texmtxCalc_flagS__dup2
texmtxCalc_flagS__dup2: ; 0x020B6DF8
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
	ldrh r2, [r5, #0x2c]
	ldrh r4, [r5, #0x2e]
	ldr r1, [r5, #0x28]
	ldr r0, [r5, #0x24]
	mul r3, r1, r4
	rsb r1, r4, #0
	mul r4, r0, r2
	rsb r0, r2, #0
	add r1, r3, r1, lsl #11
	ldrsh r3, [r5, #0x20]
	rsb r0, r4, r0, lsl #11
	ldrsh lr, [r5, #0x22]
	smull ip, r4, r3, r1
	smull r7, r3, lr, r0
	subs r7, r7, ip
	sbc r3, r3, r4
	mov r4, r7, lsr #8
	orr r4, r4, r3, lsl #24
	add r2, r4, r2, lsl #15
	str r2, [r6, #0x30]
	ldrsh r2, [r5, #0x22]
	ldrsh r3, [r5, #0x20]
	ldrh ip, [r5, #0x2e]
	smull r4, r1, r2, r1
	smlal r4, r1, r3, r0
	mov r0, r4, lsr #8
	orr r0, r0, r1, lsl #24
	add r0, r0, ip, lsl #15
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagS__dup2

	arm_func_start texmtxCalc_flagR__dup2
texmtxCalc_flagR__dup2: ; 0x020B6EE0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, [r1, #0x18]
	mov r3, #0
	str r2, [r0, #0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str r3, [r0, #4]
	ldrh r5, [r1, #0x2c]
	ldr ip, [r1, #0x24]
	ldrh r2, [r1, #0x2e]
	mul lr, ip, r5
	rsb ip, r5, #0
	ldr r4, [r1, #0x18]
	rsb ip, lr, ip, lsl #11
	smull lr, ip, r4, ip
	ldr r6, [r1, #0x28]
	mov r4, lr, lsr #8
	orr r4, r4, ip, lsl #24
	add r4, r4, r5, lsl #15
	str r4, [r0, #0x30]
	mul r4, r6, r2
	rsb r5, r2, #0
	ldr r2, [r1, #0x1c]
	add r4, r4, r5, lsl #11
	smull lr, ip, r2, r4
	mov r2, lr, lsr #8
	ldrh r1, [r1, #0x2e]
	orr r2, r2, ip, lsl #24
	add r1, r2, r1, lsl #15
	str r1, [r0, #0x34]
	str r3, [r0, #0x10]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end texmtxCalc_flagR__dup2

	arm_func_start texmtxCalc_flagRS__dup2
texmtxCalc_flagRS__dup2: ; 0x020B6F60
	mov r2, #0x1000
	str r2, [r0, #0]
	str r2, [r0, #0x14]
	mov ip, #0
	str ip, [r0, #4]
	ldr r3, [r1, #0x24]
	ldrh r2, [r1, #0x2c]
	rsb r3, r3, #0
	mul r2, r3, r2
	mov r2, r2, lsl #4
	str r2, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x28]
	mul r2, r1, r2
	mov r1, r2, lsl #4
	str r1, [r0, #0x34]
	str ip, [r0, #0x10]
	bx lr
	arm_func_end texmtxCalc_flagRS__dup2

	arm_func_start texmtxCalc_flagT__dup2
texmtxCalc_flagT__dup2: ; 0x020B6FA8
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
	ldrsh r0, [sb, #0x22]
	ldr r3, [sb, #0x18]
	ldrsh r5, [sb, #0x20]
	ldr r4, [sb, #0x1c]
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r7, [sl]
	str r5, [sl, #0x14]
	bl FX_GetDivResult
	mov r1, fp
	mul r0, r4, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	bl FX_DivAsync
	ldrh r3, [sb, #0x2c]
	ldrh r1, [sb, #0x2e]
	rsb r0, r3, #0
	rsb r1, r1, #0
	mov r2, r1, lsl #0xb
	mov fp, r0, lsl #0xb
	smull r1, r0, r7, fp
	smull r8, r7, r5, r2
	smlal r8, r7, r4, fp
	mov r4, r8, lsr #8
	orr r4, r4, r7, lsl #24
	smull r5, r2, r6, r2
	subs r1, r1, r5
	sbc r0, r0, r2
	mov r1, r1, lsr #8
	orr r1, r1, r0, lsl #24
	add r0, r1, r3, lsl #15
	str r0, [sl, #0x30]
	ldrh r0, [sb, #0x2e]
	add r0, r4, r0, lsl #15
	str r0, [sl, #0x34]
	bl FX_GetDivResult
	rsb r1, r6, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end texmtxCalc_flagT__dup2

	arm_func_start texmtxCalc_flagTS__dup2
texmtxCalc_flagTS__dup2: ; 0x020B70A0
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
	ldrh r2, [r5, #0x2c]
	ldrh r1, [r5, #0x2e]
	ldrsh r4, [r5, #0x22]
	rsb r0, r2, #0
	rsb r1, r1, #0
	mov r0, r0, lsl #0xb
	ldrsh r3, [r5, #0x20]
	mov r1, r1, lsl #0xb
	smull r7, lr, r4, r0
	smull ip, r4, r3, r1
	subs r7, r7, ip
	sbc r3, lr, r4
	mov r4, r7, lsr #8
	orr r4, r4, r3, lsl #24
	add r2, r4, r2, lsl #15
	str r2, [r6, #0x30]
	ldrsh r2, [r5, #0x22]
	ldrsh r3, [r5, #0x20]
	ldrh ip, [r5, #0x2e]
	smull r4, r1, r2, r1
	smlal r4, r1, r3, r0
	mov r0, r4, lsr #8
	orr r0, r0, r1, lsl #24
	add r0, r0, ip, lsl #15
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	rsb r1, r1, #0
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagTS__dup2

	arm_func_start texmtxCalc_flagTR__dup2
texmtxCalc_flagTR__dup2: ; 0x020B7178
	ldr r2, [r1, #0x18]
	mov ip, #0
	str r2, [r0, #0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str ip, [r0, #4]
	ldr r3, [r1, #0x18]
	ldrh r2, [r1, #0x2c]
	rsb r3, r3, #0x1000
	mul r2, r3, r2
	mov r2, r2, lsl #3
	str r2, [r0, #0x30]
	ldr r2, [r1, #0x1c]
	ldrh r1, [r1, #0x2e]
	rsb r2, r2, #0x1000
	mul r1, r2, r1
	mov r1, r1, lsl #3
	str r1, [r0, #0x34]
	str ip, [r0, #0x10]
	bx lr
	arm_func_end texmtxCalc_flagTR__dup2

	arm_func_start texmtxCalc_flagTRS__dup2
texmtxCalc_flagTRS__dup2: ; 0x020B71C8
	mov r2, #0x1000
	str r2, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end texmtxCalc_flagTRS__dup2

	arm_func_start NNSi_G3dSendTexSRT3dsMax
NNSi_G3dSendTexSRT3dsMax: ; 0x020B71EC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4, #0]
	mov r1, #0
	tst r0, #8
	ldrne r0, _020B7328 ; =0x00101610
	mov r3, #3
	strne r0, [sp]
	ldreq r0, _020B732C ; =0x00101810
	mov r2, #2
	streq r0, [sp]
	mov r0, #0x1000
	str r0, [sp, #0x44]
	str r3, [sp, #4]
	str r2, [sp, #0x48]
	str r1, [sp, #0x40]
	str r1, [sp, #0x34]
	str r1, [sp, #0x30]
	str r1, [sp, #0x2c]
	str r1, [sp, #0x28]
	str r1, [sp, #0x24]
	str r1, [sp, #0x20]
	str r1, [sp, #0x14]
	str r1, [sp, #0x10]
	ldr r1, [r4, #0]
	ldr r0, _020B7330 ; =0x02101104
	and r1, r1, #7
	ldr r2, [r0, r1, lsl #2]
	add r0, sp, #8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020B72BC
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
_020B72BC:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020B730C
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
_020B730C:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020B7328: .word 0x00101610
_020B732C: .word 0x00101810
_020B7330: .word 0x02101104
	arm_func_end NNSi_G3dSendTexSRT3dsMax

	.data


	.global Unk_02101104
Unk_02101104: ; 0x02101104
	.incbin "incbin/arm9_data.bin", 0x2424, 0x20

