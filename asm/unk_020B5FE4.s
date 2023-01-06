	.include "macros/function.inc"
	.include "include/unk_020B5FE4.inc"

	.extern Unk_021C5CF0
	

	.text


	arm_func_start NNSi_G3dSendJointSRTMaya
NNSi_G3dSendJointSRTMaya: ; 0x020B5FE4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0]
	mov r4, #0
	tst r0, #4
	moveq r4, #1
	tst r0, #0x20
	beq _020B6038
	tst r0, #8
	bne _020B6038
	cmp r4, #0
	beq _020B6028
	add r1, r5, #0x4c
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	mov r4, #0
_020B6028:
	add r1, r5, #0x10
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
_020B6038:
	ldr r0, [r5, #0]
	tst r0, #2
	bne _020B6070
	cmp r4, #0
	add r1, r5, #0x28
	beq _020B6060
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	b _020B6088
_020B6060:
	mov r0, #0x1a
	mov r2, #9
	bl NNS_G3dGeBufferOP_N
	b _020B6088
_020B6070:
	cmp r4, #0
	beq _020B6088
	add r1, r5, #0x4c
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
_020B6088:
	ldr r0, [r5, #0]
	tst r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	add r1, r5, #4
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_G3dSendJointSRTMaya

	arm_func_start NNSi_G3dGetJointScaleMaya
NNSi_G3dGetJointScaleMaya: ; 0x020B60A8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov ip, r0
	tst r3, #4
	ldrb r0, [r2, #3]
	beq _020B60FC
	ldr r1, [ip]
	tst r0, #2
	orr r1, r1, #1
	str r1, [ip]
	beq _020B6174
	ldr r1, _020B61E8 ; =0x021C5CF0
	ldrb r7, [r2, #1]
	ldr r1, [r1, #0]
	mov r3, #1
	add r6, r1, #0xc4
	mov r5, r7, lsr #5
	ldr r4, [r6, r5, lsl #2]
	and r1, r7, #0x1f
	orr r1, r4, r3, lsl r1
	str r1, [r6, r5, lsl #2]
	b _020B6174
_020B60FC:
	ldr r3, [r1, #0]
	tst r0, #2
	str r3, [ip, #4]
	ldr r3, [r1, #4]
	str r3, [ip, #8]
	ldr r3, [r1, #8]
	str r3, [ip, #0xc]
	beq _020B6174
	ldr r3, _020B61E8 ; =0x021C5CF0
	ldrb r8, [r2, #1]
	ldr r4, [r3, #0]
	mov r3, #0x18
	add r7, r4, #0xc4
	mov r6, r8, lsr #5
	and r4, r8, #0x1f
	mov r5, #1
	mvn r4, r5, lsl r4
	ldr lr, [r7, r6, lsl #2]
	smulbb r5, r8, r3
	and r3, lr, r4
	str r3, [r7, r6, lsl #2]
	ldr r4, [r1, #0xc]
	ldr r3, _020B61EC ; =0x021C6B00
	ldr lr, _020B61F0 ; =0x021C6B04
	str r4, [r3, r5]
	ldr r4, [r1, #0x10]
	ldr r3, _020B61F4 ; =0x021C6B08
	str r4, [lr, r5]
	ldr r1, [r1, #0x14]
	str r1, [r3, r5]
_020B6174:
	tst r0, #1
	beq _020B61D8
	ldrb r3, [r2, #2]
	ldr r1, [ip]
	ldr r0, _020B61E8 ; =0x021C5CF0
	orr r1, r1, #0x20
	str r1, [ip]
	ldr r1, [r0, #0]
	mov r0, r3, lsr #5
	add r0, r1, r0, lsl #2
	ldr r0, [r0, #0xc4]
	and r1, r3, #0x1f
	mov r2, #1
	tst r0, r2, lsl r1
	beq _020B61C0
	ldr r0, [ip]
	orr r0, r0, #8
	str r0, [ip]
	b _020B61D8
_020B61C0:
	ldr r1, _020B61EC ; =0x021C6B00
	mov r0, #0x18
	mla r0, r3, r0, r1
	add r3, ip, #0x10
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
_020B61D8:
	ldr r0, [ip]
	orr r0, r0, #0x10
	str r0, [ip]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B61E8: .word Unk_021C5CF0
_020B61EC: .word 0x021C6B00
_020B61F0: .word 0x021C6B04
_020B61F4: .word 0x021C6B08
	arm_func_end NNSi_G3dGetJointScaleMaya

	arm_func_start texmtxCalc_flag__dup1
texmtxCalc_flag__dup1: ; 0x020B61F8
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
	ldrsh r5, [sb, #0x22]
	ldr r3, [sb, #0x18]
	ldrsh r0, [sb, #0x20]
	ldr r4, [sb, #0x1c]
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r6, [sl]
	str r4, [sl, #0x14]
	bl FX_GetDivResult
	mov r1, fp
	rsb r2, r5, #0
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	bl FX_DivAsync
	sub r0, r5, r4
	add r1, r7, r6
	ldr r5, [sb, #0x18]
	ldrh r4, [sb, #0x2c]
	sub r2, r5, r1
	ldr r1, [sb, #0x24]
	mul r3, r4, r2
	smull r2, r1, r5, r1
	mov r2, r2, lsr #8
	orr r2, r2, r1, lsl #24
	mul r1, r4, r2
	rsb r1, r1, r3, lsl #3
	str r1, [sl, #0x30]
	ldr r4, [sb, #0x1c]
	ldrh r3, [sb, #0x2e]
	sub r0, r0, r4
	add r0, r0, #0x2000
	mul r2, r3, r0
	ldr r0, [sb, #0x28]
	smull r1, r0, r4, r0
	mov r1, r1, lsr #8
	orr r1, r1, r0, lsl #24
	mul r0, r3, r1
	add r0, r0, r2, lsl #3
	str r0, [sl, #0x34]
	bl FX_GetDivResult
	mul r0, r7, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end texmtxCalc_flag__dup1

	arm_func_start texmtxCalc_flagS__dup1
texmtxCalc_flagS__dup1: ; 0x020B6300
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
	rsb r2, r2, #0
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrsh r2, [r5, #0x20]
	ldrsh r1, [r5, #0x22]
	ldrh r3, [r5, #0x2c]
	ldr r0, [r5, #0x24]
	add r1, r2, r1
	rsb r1, r1, #0
	add r2, r1, #0x1000
	mul r1, r0, r3
	mul r2, r3, r2
	mov r0, r1, lsl #4
	rsb r0, r0, r2, lsl #3
	str r0, [r6, #0x30]
	ldrsh r2, [r5, #0x20]
	ldrsh r1, [r5, #0x22]
	ldrh r3, [r5, #0x2e]
	ldr r0, [r5, #0x28]
	sub r1, r2, r1
	add r2, r1, #0x1000
	mul r1, r0, r3
	mul r2, r3, r2
	mov r0, r1, lsl #4
	add r0, r0, r2, lsl #3
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagS__dup1

	arm_func_start texmtxCalc_flagR__dup1
texmtxCalc_flagR__dup1: ; 0x020B63D0
	stmfd sp!, {r4, lr}
	ldr r3, [r1, #0x18]
	mov r2, #0
	str r3, [r0, #0]
	ldr r3, [r1, #0x1c]
	str r3, [r0, #0x14]
	str r2, [r0, #4]
	ldr r4, [r1, #0x18]
	ldr r3, [r1, #0x24]
	ldrh lr, [r1, #0x2c]
	smull ip, r3, r4, r3
	mov r4, ip, lsr #8
	orr r4, r4, r3, lsl #24
	rsb r3, r4, #0
	mul r3, lr, r3
	str r3, [r0, #0x30]
	ldr r4, [r1, #0x1c]
	ldr ip, [r1, #0x28]
	mov r3, r4, lsl #1
	smull lr, ip, r4, ip
	rsb r4, r3, #0
	mov r3, lr, lsr #8
	ldrh lr, [r1, #0x2e]
	add r1, r4, #0x2000
	orr r3, r3, ip, lsl #24
	mul r4, lr, r1
	mul r1, lr, r3
	add r1, r1, r4, lsl #3
	str r1, [r0, #0x34]
	str r2, [r0, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end texmtxCalc_flagR__dup1

	arm_func_start texmtxCalc_flagRS__dup1
texmtxCalc_flagRS__dup1: ; 0x020B644C
	mov r2, #0x1000
	str r2, [r0, #0]
	str r2, [r0, #0x14]
	mov ip, #0
	str ip, [r0, #4]
	ldrh r2, [r1, #0x2c]
	ldr r3, [r1, #0x24]
	mul r2, r3, r2
	rsb r2, r2, #0
	mov r2, r2, lsl #4
	str r2, [r0, #0x30]
	ldrh r2, [r1, #0x2e]
	ldr r1, [r1, #0x28]
	mul r2, r1, r2
	mov r1, r2, lsl #4
	str r1, [r0, #0x34]
	str ip, [r0, #0x10]
	bx lr
	arm_func_end texmtxCalc_flagRS__dup1

	arm_func_start texmtxCalc_flagT__dup1
texmtxCalc_flagT__dup1: ; 0x020B6494
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
	ldrsh r5, [sb, #0x22]
	ldr r3, [sb, #0x18]
	ldrsh r0, [sb, #0x20]
	ldr r4, [sb, #0x1c]
	smull r2, r1, r3, r5
	mov r6, r2, lsr #0xc
	orr r6, r6, r1, lsl #20
	smull r2, r1, r3, r0
	mov r7, r2, lsr #0xc
	orr r7, r7, r1, lsl #20
	smull r3, r2, r4, r0
	smull r1, r0, r4, r5
	mov r5, r3, lsr #0xc
	orr r5, r5, r2, lsl #20
	mov r4, r1, lsr #0xc
	orr r4, r4, r0, lsl #20
	str r6, [sl]
	str r4, [sl, #0x14]
	bl FX_GetDivResult
	mov r1, fp
	rsb r2, r5, #0
	mul r0, r2, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #4]
	mov r0, r8
	bl FX_DivAsync
	sub r1, r5, r4
	add r0, r7, r6
	ldrh r3, [sb, #0x2c]
	ldr r2, [sb, #0x18]
	sub r0, r2, r0
	mul r0, r3, r0
	mov r0, r0, lsl #3
	str r0, [sl, #0x30]
	ldrh r2, [sb, #0x2e]
	ldr r0, [sb, #0x1c]
	sub r0, r1, r0
	add r0, r0, #0x2000
	mul r0, r2, r0
	mov r0, r0, lsl #3
	str r0, [sl, #0x34]
	bl FX_GetDivResult
	mul r0, r7, r0
	mov r0, r0, asr #0xc
	str r0, [sl, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end texmtxCalc_flagT__dup1

	arm_func_start texmtxCalc_flagTS__dup1
texmtxCalc_flagTS__dup1: ; 0x020B6574
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
	rsb r2, r2, #0
	mul r0, r2, r0
	mov r2, r0, asr #0xc
	mov r0, r4
	str r2, [r6, #4]
	bl FX_DivAsync
	ldrsh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2c]
	add r0, r1, r0
	rsb r0, r0, #0
	add r0, r0, #0x1000
	mul r0, r2, r0
	mov r0, r0, lsl #3
	str r0, [r6, #0x30]
	ldrsh r1, [r5, #0x20]
	ldrsh r0, [r5, #0x22]
	ldrh r2, [r5, #0x2e]
	sub r0, r1, r0
	add r0, r0, #0x1000
	mul r0, r2, r0
	mov r0, r0, lsl #3
	str r0, [r6, #0x34]
	bl FX_GetDivResult
	ldrsh r1, [r5, #0x20]
	mul r0, r1, r0
	mov r0, r0, asr #0xc
	str r0, [r6, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end texmtxCalc_flagTS__dup1

	arm_func_start texmtxCalc_flagTR__dup1
texmtxCalc_flagTR__dup1: ; 0x020B662C
	ldr r2, [r1, #0x18]
	mov ip, #0
	str r2, [r0, #0]
	ldr r2, [r1, #0x1c]
	str r2, [r0, #0x14]
	str ip, [r0, #4]
	str ip, [r0, #0x30]
	ldr r2, [r1, #0x1c]
	ldrh r3, [r1, #0x2e]
	mov r1, r2, lsl #1
	rsb r1, r1, #0
	add r1, r1, #0x2000
	mul r1, r3, r1
	mov r1, r1, lsl #3
	str r1, [r0, #0x34]
	str ip, [r0, #0x10]
	bx lr
	arm_func_end texmtxCalc_flagTR__dup1

	arm_func_start texmtxCalc_flagTRS__dup1
texmtxCalc_flagTRS__dup1: ; 0x020B6670
	mov r2, #0x1000
	str r2, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0x10]
	str r2, [r0, #0x14]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	bx lr
	arm_func_end texmtxCalc_flagTRS__dup1

	arm_func_start NNSi_G3dSendTexSRTMaya
NNSi_G3dSendTexSRTMaya: ; 0x020B6694
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x4c
	mov r4, r0
	ldr r0, [r4, #0]
	mov r1, #0
	tst r0, #8
	ldrne r0, _020B67D0 ; =0x00101610
	mov r3, #3
	strne r0, [sp]
	ldreq r0, _020B67D4 ; =0x00101810
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
	ldr r0, _020B67D8 ; =0x021010E4
	and r1, r1, #7
	ldr r2, [r0, r1, lsl #2]
	add r0, sp, #8
	mov r1, r4
	blx r2
	ldr r3, [r4, #0x30]
	cmp r3, #0x1000
	beq _020B6764
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
_020B6764:
	ldr r3, [r4, #0x34]
	cmp r3, #0x1000
	beq _020B67B4
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
_020B67B4:
	add r1, sp, #0
	ldr r0, [sp]
	add r1, r1, #4
	mov r2, #0x12
	bl NNS_G3dGeBufferOP_N
	add sp, sp, #0x4c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020B67D0: .word 0x00101610
_020B67D4: .word 0x00101810
_020B67D8: .word Unk_021010E4
	arm_func_end NNSi_G3dSendTexSRTMaya

	.data


	.global Unk_021010E4
Unk_021010E4: ; 0x021010E4
	.incbin "incbin/arm9_data.bin", 0x2404, 0x20

