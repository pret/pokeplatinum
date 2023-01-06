	.include "macros/function.inc"
	.include "include/unk_020A9778.inc"


	.text


	arm_func_start NNSi_G2dIdentity
NNSi_G2dIdentity: ; 0x020A9778
	stmfd sp!, {r4, lr}
	ldr r0, _020A9800 ; =0x021C4AC8
	ldr ip, [r0, #0xc]
	ldr r1, [r0, #4]
	mov r0, #0x18
	mul r3, ip, r0
	cmp r1, #0
	beq _020A97B0
	ldr r1, _020A9804 ; =0x021C4C68
	mov r2, #0
	ldr r0, _020A9808 ; =0x021C4C6C
	str r2, [r1, r3]
	str r2, [r0, r3]
	b _020A97F0
_020A97B0:
	ldr r1, _020A980C ; =0x021C4C58
	mov r2, #0x1000
	str r2, [r1, r3]
	add r4, r1, r3
	mov r1, #0
	str r1, [r4, #4]
	ldr r0, _020A9810 ; =0x021C4F58
	str r1, [r4, #8]
	str r2, [r4, #0xc]
	str r1, [r4, #0x10]
	add lr, r0, r3
	str r1, [r4, #0x14]
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
_020A97F0:
	ldr r0, _020A9814 ; =0x021C4AD8
	mov r1, #0
	str r1, [r0, ip, lsl #2]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A9800: .word Unk_021C4AC8
_020A9804: .word 0x021C4C68
_020A9808: .word 0x021C4C6C
_020A980C: .word Unk_021C4C58
_020A9810: .word Unk_021C4F58
_020A9814: .word Unk_021C4AD8
	arm_func_end NNSi_G2dIdentity

	arm_func_start NNSi_G2dMCMStoreCurrentMtxToMtxCache
NNSi_G2dMCMStoreCurrentMtxToMtxCache: ; 0x020A9818
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020A993C ; =0x021C4AC8
	ldr r1, _020A9940 ; =0x021C4B58
	ldr r0, [r0, #0xc]
	mov r2, #1
	mov r0, r0, lsl #0x10
	add r3, r1, r0, lsr #13
	ldrh r0, [r3, #4]
	cmp r0, #1
	cmpne r0, #2
	movne r2, #0
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020A993C ; =0x021C4AC8
	ldrh r4, [r3, #2]
	ldrh r5, [r0]
	mov r2, #0x10
	cmp r5, #0x1f
	addlo r1, r5, #1
	strloh r1, [r0]
	ldr r0, _020A9944 ; =0x021C5258
	strh r5, [r3]
	add r0, r0, r5, lsl #5
	add r1, r0, #0x10
	mvn r0, #0
	bl MIi_CpuClearFast
	ldr r0, _020A993C ; =0x021C4AC8
	ldr r1, [r0, #4]
	ldr ip, [r0, #0xc]
	cmp r1, #0
	ldreq r1, _020A9948 ; =0x021C4F58
	mov r0, #0x18
	mlaeq r1, ip, r0, r1
	beq _020A98C4
	mul r3, ip, r0
	ldr r1, _020A994C ; =0x021C4C68
	ldr r0, _020A9950 ; =0x02100EA4
	ldr r2, [r1, r3]
	ldr r1, _020A9954 ; =0x021C4C6C
	str r2, [r0, #0x18]
	ldr r2, [r1, r3]
	ldr r1, _020A9958 ; =0x02100EAC
	str r2, [r0, #0x1c]
_020A98C4:
	mov r2, ip, lsl #0x10
	ldr r0, _020A9940 ; =0x021C4B58
	mov r2, r2, lsr #0xd
	ldrh ip, [r0, r2]
	ldr lr, _020A9944 ; =0x021C5258
	ldr r3, [r1, #0]
	ldr r2, _020A993C ; =0x021C4AC8
	str r3, [lr, ip, lsl #5]
	ldr r3, [r1, #4]
	add ip, lr, ip, lsl #5
	str r3, [ip, #4]
	ldr r3, [r1, #8]
	ldr r2, [r2, #0xc]
	str r3, [ip, #8]
	ldr r3, [r1, #0xc]
	mov r1, r2, lsl #0x10
	str r3, [ip, #0xc]
	movs lr, r1, lsr #0x10
	ldmmiia sp!, {r3, r4, r5, pc}
	mov r1, #3
_020A9914:
	add r3, r0, lr, lsl #3
	ldrh r2, [r3, #2]
	mov ip, lr, lsl #3
	cmp r4, r2
	ldmneia sp!, {r3, r4, r5, pc}
	strh r1, [r3, #4]
	strh r5, [r0, ip]
	subs lr, lr, #1
	bpl _020A9914
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A993C: .word Unk_021C4AC8
_020A9940: .word Unk_021C4B58
_020A9944: .word Unk_021C5258
_020A9948: .word Unk_021C4F58
_020A994C: .word 0x021C4C68
_020A9950: .word Unk_02100EA4
_020A9954: .word 0x021C4C6C
_020A9958: .word Unk_02100EAC
	arm_func_end NNSi_G2dMCMStoreCurrentMtxToMtxCache

	arm_func_start RndCoreCBFuncBeforeCell_
RndCoreCBFuncBeforeCell_: ; 0x020A995C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020A9A58 ; =0x021C4AC8
	mov r6, r0
	ldr r0, [r2, #8]
	mov r5, r1
	ldr r4, [r0, #0x74]
	ldr r0, [r4, #0x34]
	cmp r0, #0
	beq _020A99EC
	ldr r0, [r2, #4]
	cmp r0, #0
	ldreq r2, [r2, #0xc]
	ldreq r1, _020A9A5C ; =0x021C4C58
	mov r0, #0x18
	mlaeq r1, r2, r0, r1
	beq _020A99C4
	ldr r1, [r2, #0xc]
	mul r3, r1, r0
	ldr r1, _020A9A60 ; =0x021C4C68
	ldr r0, _020A9A64 ; =0x02100EA4
	ldr r2, [r1, r3]
	ldr r1, _020A9A68 ; =0x021C4C6C
	str r2, [r0, #0x18]
	ldr r2, [r1, r3]
	ldr r1, _020A9A6C ; =0x02100EAC
	str r2, [r0, #0x1c]
_020A99C4:
	ldr r3, [r4, #0x34]
	mov r0, r5
	mov r2, r4
	blx r3
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6, #0x30]
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #1
	str r0, [r6, #0x30]
_020A99EC:
	ldr r0, [r4, #0x38]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020A9A58 ; =0x021C4AC8
	ldr r1, [r0, #4]
	cmp r1, #0
	ldr r1, [r0, #0xc]
	ldreq r2, _020A9A5C ; =0x021C4C58
	mov r0, #0x18
	mlaeq r3, r1, r0, r2
	beq _020A9A3C
	mul r3, r1, r0
	ldr r1, _020A9A60 ; =0x021C4C68
	ldr r0, _020A9A64 ; =0x02100EA4
	ldr r2, [r1, r3]
	ldr r1, _020A9A68 ; =0x021C4C6C
	str r2, [r0, #0x18]
	ldr r1, [r1, r3]
	ldr r3, _020A9A6C ; =0x02100EAC
	str r1, [r0, #0x1c]
_020A9A3C:
	ldr r0, _020A9A58 ; =0x021C4AC8
	ldr r6, [r4, #0x38]
	ldr r0, [r0, #8]
	mov r1, r4
	mov r2, r5
	blx r6
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A9A58: .word Unk_021C4AC8
_020A9A5C: .word Unk_021C4C58
_020A9A60: .word 0x021C4C68
_020A9A64: .word Unk_02100EA4
_020A9A68: .word 0x021C4C6C
_020A9A6C: .word Unk_02100EAC
	arm_func_end RndCoreCBFuncBeforeCell_

	arm_func_start RndCoreCBFuncAfterCell_
RndCoreCBFuncAfterCell_: ; 0x020A9A70
	stmfd sp!, {r4, lr}
	ldr r3, _020A9ADC ; =0x021C4AC8
	mov r2, r1
	ldr r0, [r3, #8]
	ldr r1, [r0, #0x74]
	ldr r4, [r1, #0x3c]
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r4, [r3, #4]
	ldr ip, [r3, #0xc]
	cmp r4, #0
	ldreq lr, _020A9AE0 ; =0x021C4C58
	mov r3, #0x18
	mlaeq r3, ip, r3, lr
	beq _020A9AD0
	mul r4, ip, r3
	ldr r3, _020A9AE4 ; =0x021C4C68
	ldr ip, _020A9AE8 ; =0x02100EA4
	ldr lr, [r3, r4]
	ldr r3, _020A9AEC ; =0x021C4C6C
	str lr, [ip, #0x18]
	ldr lr, [r3, r4]
	ldr r3, _020A9AF0 ; =0x02100EAC
	str lr, [ip, #0x1c]
_020A9AD0:
	ldr ip, [r1, #0x3c]
	blx ip
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A9ADC: .word Unk_021C4AC8
_020A9AE0: .word Unk_021C4C58
_020A9AE4: .word 0x021C4C68
_020A9AE8: .word Unk_02100EA4
_020A9AEC: .word 0x021C4C6C
_020A9AF0: .word Unk_02100EAC
	arm_func_end RndCoreCBFuncAfterCell_

	arm_func_start RndCoreCBFuncBeforeOBJ_
RndCoreCBFuncBeforeOBJ_: ; 0x020A9AF4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r3, _020A9CC8 ; =0x021C4AC8
	mov r6, r0
	ldr r0, [r3, #8]
	mov r5, r1
	mov r4, r2
	bl NNS_G2dGetRendererPaletteTbl
	cmp r0, #0
	beq _020A9B44
	ldrh r1, [r6, #0x3c]
	and r1, r1, #0xf000
	mov r1, r1, lsl #4
	mov r1, r1, lsr #0x10
	bl NNS_G2dGetPaletteTableValue
	ldr r1, [r6, #0x3c]
	mov r0, r0, lsl #0x1c
	bic r1, r1, #0xf000
	orr r0, r1, r0, lsr #16
	str r0, [r6, #0x3c]
_020A9B44:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	cmp r0, #0
	beq _020A9C50
	ldr r0, [r1, #0x84]
	tst r0, #1
	beq _020A9B7C
	ldrh r0, [r1, #0x88]
	ldr r1, [r6, #0x3c]
	bic r1, r1, #0xc00
	mov r0, r0, lsl #0x1e
	orr r0, r1, r0, lsr #20
	str r0, [r6, #0x3c]
_020A9B7C:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	tst r0, #2
	beq _020A9BA8
	ldrh r0, [r1, #0x8a]
	ldr r1, [r6, #0x3c]
	bic r1, r1, #0xf000
	mov r0, r0, lsl #0x1c
	orr r0, r1, r0, lsr #16
	str r0, [r6, #0x3c]
_020A9BA8:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	tst r0, #0x10
	beq _020A9BDC
	ldr r2, [r6, #0x3c]
	ldrh r0, [r1, #0x94]
	mov r1, r2, lsl #0x10
	bic r2, r2, #0xf000
	add r0, r0, r1, lsr #28
	mov r0, r0, lsl #0x1c
	orr r0, r2, r0, lsr #16
	str r0, [r6, #0x3c]
_020A9BDC:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	tst r0, #4
	beq _020A9C0C
	ldr r0, [r1, #0x90]
	cmp r0, #0
	ldr r0, [r6, #0x38]
	orrne r0, r0, #0x1000
	strne r0, [r6, #0x38]
	biceq r0, r0, #0x1000
	streq r0, [r6, #0x38]
_020A9C0C:
	ldr r0, _020A9CC8 ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r0, [r1, #0x84]
	tst r0, #8
	beq _020A9C50
	ldr r0, [r6, #0x38]
	ldrh r2, [r6, #0x3c]
	ldr r1, [r1, #0x8c]
	bic r0, r0, #0xc00
	orr r0, r0, r1, lsl #10
	str r0, [r6, #0x38]
	ldrh r0, [r6, #0x3c]
	and r1, r2, #0xf000
	mov r1, r1, asr #0xc
	bic r0, r0, #0xf000
	orr r0, r0, r1, lsl #12
	strh r0, [r6, #0x3c]
_020A9C50:
	ldr r2, _020A9CC8 ; =0x021C4AC8
	ldr r0, [r2, #8]
	ldr r1, [r0, #0x74]
	ldr r3, [r1, #0x40]
	cmp r3, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r3, [r2, #4]
	cmp r3, #0
	ldr r3, [r2, #0xc]
	ldreq r6, _020A9CCC ; =0x021C4C58
	mov r2, #0x18
	mlaeq r6, r3, r2, r6
	beq _020A9CAC
	mul ip, r3, r2
	ldr r3, _020A9CD0 ; =0x021C4C68
	ldr r2, _020A9CD4 ; =0x02100EA4
	ldr r6, [r3, ip]
	ldr r3, _020A9CD8 ; =0x021C4C6C
	str r6, [r2, #0x18]
	ldr r3, [r3, ip]
	ldr r6, _020A9CDC ; =0x02100EAC
	str r3, [r2, #0x1c]
_020A9CAC:
	str r6, [sp]
	ldr r6, [r1, #0x40]
	mov r2, r5
	mov r3, r4
	blx r6
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020A9CC8: .word Unk_021C4AC8
_020A9CCC: .word Unk_021C4C58
_020A9CD0: .word 0x021C4C68
_020A9CD4: .word Unk_02100EA4
_020A9CD8: .word 0x021C4C6C
_020A9CDC: .word Unk_02100EAC
	arm_func_end RndCoreCBFuncBeforeOBJ_

	arm_func_start RndCoreCBFuncAfterOBJ_
RndCoreCBFuncAfterOBJ_: ; 0x020A9CE0
	stmfd sp!, {r3, r4, r5, lr}
	ldr lr, _020A9D5C ; =0x021C4AC8
	mov ip, r1
	ldr r0, [lr, #8]
	mov r3, r2
	ldr r1, [r0, #0x74]
	ldr r2, [r1, #0x44]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [lr, #4]
	cmp r2, #0
	ldreq lr, [lr, #0xc]
	ldreq r4, _020A9D60 ; =0x021C4C58
	mov r2, #0x18
	mlaeq r5, lr, r2, r4
	beq _020A9D48
	ldr r4, [lr, #0xc]
	mul r5, r4, r2
	ldr r4, _020A9D64 ; =0x021C4C68
	ldr r2, _020A9D68 ; =0x02100EA4
	ldr lr, [r4, r5]
	ldr r4, _020A9D6C ; =0x021C4C6C
	str lr, [r2, #0x18]
	ldr r4, [r4, r5]
	ldr r5, _020A9D70 ; =0x02100EAC
	str r4, [r2, #0x1c]
_020A9D48:
	str r5, [sp]
	ldr lr, [r1, #0x44]
	mov r2, ip
	blx lr
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A9D5C: .word Unk_021C4AC8
_020A9D60: .word Unk_021C4C58
_020A9D64: .word 0x021C4C68
_020A9D68: .word Unk_02100EA4
_020A9D6C: .word 0x021C4C6C
_020A9D70: .word Unk_02100EAC
	arm_func_end RndCoreCBFuncAfterOBJ_

	arm_func_start DrawCellImpl_
DrawCellImpl_: ; 0x020A9D74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, _020AA190 ; =0x021C4AC8
	mov r4, r0
	ldr fp, [r7, #8]
	ldr r0, [fp, #0x7c]
	ldr sb, [fp, #0x70]
	tst r0, #2
	beq _020A9F64
	ldr r0, [sb, #0x14]
	cmp r0, #0
	beq _020A9ED4
	ldr r0, [r7, #4]
	mov r1, #0
	cmp r0, #0
	bne _020A9DC8
	ldr r2, _020AA194 ; =0x02100EA4
	ldr r0, _020AA198 ; =0x0000FFFE
	ldrh r2, [r2]
	cmp r2, r0
	movne r0, #1
	bne _020A9DCC
_020A9DC8:
	mov r0, #0
_020A9DCC:
	cmp r0, #0
	beq _020A9E58
	ldr r0, _020AA190 ; =0x021C4AC8
	ldr r0, [r0, #0xf94]
	cmp r0, #0
	beq _020A9E34
	ldr r0, _020AA19C ; =0x021C55C8
	ldr r1, _020AA1A0 ; =0x021C565C
	ldrh r0, [r0, #0x90]
	ldr r1, [r1, r0, lsl #2]
	cmp r1, #0
	bne _020A9E58
	bl NNSi_G2dMCMStoreCurrentMtxToMtxCache
	ldr r0, _020AA190 ; =0x021C4AC8
	ldr r2, _020AA1A4 ; =0x021C4B58
	ldr r0, [r0, #0xc]
	ldr r1, _020AA19C ; =0x021C55C8
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	ldrh r3, [r2, r0]
	ldr r5, _020AA1A8 ; =0x021C5258
	ldrh r2, [r1, #0x90]
	ldr r0, _020AA1A0 ; =0x021C565C
	add r1, r5, r3, lsl #5
	str r1, [r0, r2, lsl #2]
	b _020A9E58
_020A9E34:
	bl NNSi_G2dMCMStoreCurrentMtxToMtxCache
	ldr r0, _020AA190 ; =0x021C4AC8
	ldr r1, _020AA1A4 ; =0x021C4B58
	ldr r0, [r0, #0xc]
	ldr r2, _020AA1A8 ; =0x021C5258
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0xd
	ldrh r0, [r1, r0]
	add r1, r2, r0, lsl #5
_020A9E58:
	ldr r0, _020AA190 ; =0x021C4AC8
	ldr r2, [r0, #4]
	cmp r2, #0
	ldr r2, [r0, #0xc]
	ldreq r3, _020AA1AC ; =0x021C4C58
	mov r0, #0x18
	mlaeq r0, r2, r0, r3
	beq _020A9E9C
	mul r5, r2, r0
	ldr r0, _020AA1B0 ; =0x021C4C68
	ldr r2, _020AA194 ; =0x02100EA4
	ldr r3, [r0, r5]
	ldr r0, _020AA1B4 ; =0x021C4C6C
	str r3, [r2, #0x18]
	ldr r3, [r0, r5]
	ldr r0, _020AA1B8 ; =0x02100EAC
	str r3, [r2, #0x1c]
_020A9E9C:
	bl NNS_G2dSetRndCoreCurrentMtx2D
	ldr r1, _020AA194 ; =0x02100EA4
	mvn r0, #0
	ldr r1, [r1, #4]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	beq _020A9ECC
	bl NNS_G2dRndCoreDrawCellVramTransfer
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9ECC:
	bl NNS_G2dRndCoreDrawCell
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9ED4:
	ldr r2, [r7, #0xc]
	ldr r1, _020AA1BC ; =0x021C4AD8
	mov r0, fp
	ldr r1, [r1, r2, lsl #2]
	bl NNS_G2dSetRndCore3DSoftSpriteZvalue
	mov r0, r7
	ldr r1, [r0, #4]
	cmp r1, #0
	ldr r1, [r0, #0xc]
	ldreq r2, _020AA1AC ; =0x021C4C58
	mov r0, #0x18
	mlaeq r0, r1, r0, r2
	beq _020A9F2C
	mul r3, r1, r0
	ldr r0, _020AA1B0 ; =0x021C4C68
	ldr r1, _020AA194 ; =0x02100EA4
	ldr r2, [r0, r3]
	ldr r0, _020AA1B4 ; =0x021C4C6C
	str r2, [r1, #0x18]
	ldr r2, [r0, r3]
	ldr r0, _020AA1B8 ; =0x02100EAC
	str r2, [r1, #0x1c]
_020A9F2C:
	bl NNS_G2dSetRndCoreCurrentMtx3D
	ldr r1, _020AA194 ; =0x02100EA4
	mvn r0, #0
	ldr r1, [r1, #4]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	beq _020A9F5C
	bl NNS_G2dRndCoreDrawCellVramTransfer
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9F5C:
	bl NNS_G2dRndCoreDrawCell
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A9F64:
	cmp sb, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r8, _020AA1AC ; =0x021C4C58
	ldr r6, _020AA194 ; =0x02100EA4
	mvn r5, #0
_020A9F78:
	ldr r0, [sb, #0x10]
	cmp r0, #0
	beq _020AA180
	ldr r0, [sb, #0x14]
	ldr sl, [r7, #8]
	cmp r0, #0
	mov r1, sb
	beq _020AA0E4
	str sb, [sl, #0x74]
	mov r0, sl
	bl NNS_G2dSetRndCoreSurface
	ldr r1, [sb, #0x28]
	ldr r2, [sb, #0x2c]
	mov r0, sl
	bl NNS_G2dSetRndCoreOamRegisterFunc
	mov r0, sl
	bl NNS_G2dRndCoreBeginRendering
	ldr r0, [r7, #4]
	mov r1, #0
	cmp r0, #0
	bne _020A9FE0
	ldrh r2, [r6]
	ldr r0, _020AA198 ; =0x0000FFFE
	cmp r2, r0
	movne r0, #1
	bne _020A9FE4
_020A9FE0:
	mov r0, #0
_020A9FE4:
	cmp r0, #0
	beq _020AA06C
	ldr r0, [r7, #0xf94]
	cmp r0, #0
	beq _020AA04C
	ldr r0, _020AA19C ; =0x021C55C8
	ldrh r1, [r0, #0x90]
	ldr r0, _020AA1C0 ; =0x021C5658
	add r0, r0, r1, lsl #2
	ldr r1, [r0, #4]
	cmp r1, #0
	bne _020AA06C
	bl NNSi_G2dMCMStoreCurrentMtxToMtxCache
	ldr r0, _020AA19C ; =0x021C55C8
	ldr r2, [r7, #0xc]
	ldrh r1, [r0, #0x90]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0xd
	ldr r0, _020AA1A4 ; =0x021C4B58
	ldrh r3, [r0, r2]
	ldr r0, _020AA1C0 ; =0x021C5658
	add r2, r0, r1, lsl #2
	ldr r0, _020AA1A8 ; =0x021C5258
	add r1, r0, r3, lsl #5
	str r1, [r2, #4]
	b _020AA06C
_020AA04C:
	bl NNSi_G2dMCMStoreCurrentMtxToMtxCache
	ldr r0, [r7, #0xc]
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0xd
	ldr r0, _020AA1A4 ; =0x021C4B58
	ldrh r1, [r0, r1]
	ldr r0, _020AA1A8 ; =0x021C5258
	add r1, r0, r1, lsl #5
_020AA06C:
	ldr r0, [r7, #4]
	cmp r0, #0
	ldreq r2, [r7, #0xc]
	moveq r0, #0x18
	mlaeq r0, r2, r0, r8
	beq _020AA0A4
	ldr r3, [r7, #0xc]
	mov r2, #0x18
	mla sl, r3, r2, r8
	ldr r2, [sl, #0x10]
	ldr r0, _020AA1B8 ; =0x02100EAC
	str r2, [r6, #0x18]
	ldr r2, [sl, #0x14]
	str r2, [r6, #0x1c]
_020AA0A4:
	bl NNS_G2dSetRndCoreCurrentMtx2D
	ldr r1, [r6, #4]
	cmp r1, r5
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	beq _020AA0CC
	bl NNS_G2dRndCoreDrawCellVramTransfer
	b _020AA0D0
_020AA0CC:
	bl NNS_G2dRndCoreDrawCell
_020AA0D0:
	ldr r1, [r7, #8]
	mov r0, #0
	str r0, [r1, #0x74]
	bl NNS_G2dRndCoreEndRendering
	b _020AA180
_020AA0E4:
	mov r0, sl
	str sb, [sl, #0x74]
	bl NNS_G2dSetRndCoreSurface
	mov r0, sl
	bl NNS_G2dRndCoreBeginRendering
	ldr r2, [r7, #0xc]
	ldr r1, _020AA1BC ; =0x021C4AD8
	mov r0, fp
	ldr r1, [r1, r2, lsl #2]
	bl NNS_G2dSetRndCore3DSoftSpriteZvalue
	ldr r0, [r7, #4]
	cmp r0, #0
	ldreq r1, [r7, #0xc]
	moveq r0, #0x18
	mlaeq r0, r1, r0, r8
	beq _020AA144
	ldr r2, [r7, #0xc]
	mov r1, #0x18
	mla r3, r2, r1, r8
	ldr r1, [r3, #0x10]
	ldr r0, _020AA1B8 ; =0x02100EAC
	str r1, [r6, #0x18]
	ldr r1, [r3, #0x14]
	str r1, [r6, #0x1c]
_020AA144:
	bl NNS_G2dSetRndCoreCurrentMtx3D
	ldr r1, [r6, #4]
	cmp r1, r5
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	mov r0, r4
	beq _020AA16C
	bl NNS_G2dRndCoreDrawCellVramTransfer
	b _020AA170
_020AA16C:
	bl NNS_G2dRndCoreDrawCell
_020AA170:
	ldr r1, [r7, #8]
	mov r0, #0
	str r0, [r1, #0x74]
	bl NNS_G2dRndCoreEndRendering
_020AA180:
	ldr sb, [sb, #0x30]
	cmp sb, #0
	bne _020A9F78
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AA190: .word Unk_021C4AC8
_020AA194: .word Unk_02100EA4
_020AA198: .word 0x0000FFFE
_020AA19C: .word 0x021C55C8
_020AA1A0: .word 0x021C565C
_020AA1A4: .word Unk_021C4B58
_020AA1A8: .word Unk_021C5258
_020AA1AC: .word Unk_021C4C58
_020AA1B0: .word 0x021C4C68
_020AA1B4: .word 0x021C4C6C
_020AA1B8: .word Unk_02100EAC
_020AA1BC: .word Unk_021C4AD8
_020AA1C0: .word Unk_021C5658
	arm_func_end DrawCellImpl_

	arm_func_start DrawCellAnimationImpl_
DrawCellAnimationImpl_: ; 0x020AA1C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldrh r0, [r5, #0x4e]
	ldr r4, [r5, #0x30]
	cmp r0, #0
	bne _020AA224
	ldr r2, [r5, #0x38]
	mvn r0, #0
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020AA218
	ldr r1, _020AA314 ; =0x02100EA4
	mov r0, r4
	str r2, [r1, #4]
	bl DrawCellImpl_
	ldr r0, _020AA314 ; =0x02100EA4
	mvn r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020AA218:
	mov r0, r4
	bl DrawCellImpl_
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020AA224:
	bl NNS_G2dPushMtx
	ldrh r0, [r5, #0x4e]
	tst r0, #8
	beq _020AA274
	ldr r0, _020AA318 ; =0x021C4AC8
	ldrsh r7, [r5, #0x4a]
	ldr r0, [r0, #8]
	ldrsh r6, [r5, #0x48]
	bl NNS_G2dIsRndCoreFlipH
	cmp r0, #0
	ldr r0, _020AA318 ; =0x021C4AC8
	rsbne r6, r6, #0
	ldr r0, [r0, #8]
	bl NNS_G2dIsRndCoreFlipV
	cmp r0, #0
	rsbne r7, r7, #0
	mov r0, r6, lsl #0xc
	mov r1, r7, lsl #0xc
	mov r2, #0
	bl NNS_G2dTranslate
_020AA274:
	ldrh r0, [r5, #0x4e]
	tst r0, #4
	beq _020AA2A8
	ldrh r0, [r5, #0x4c]
	ldr r2, _020AA31C ; =0x020F983C
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r3, r1, lsl #1
	mov r1, r0, lsl #1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl NNS_G2dRotZ
_020AA2A8:
	ldrh r0, [r5, #0x4e]
	tst r0, #2
	beq _020AA2C4
	ldr r0, [r5, #0x40]
	ldr r1, [r5, #0x44]
	mov r2, #0x1000
	bl NNS_G2dScale
_020AA2C4:
	ldr r2, [r5, #0x38]
	mvn r0, #0
	cmp r2, r0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020AA300
	ldr r1, _020AA314 ; =0x02100EA4
	mov r0, r4
	str r2, [r1, #4]
	bl DrawCellImpl_
	ldr r0, _020AA314 ; =0x02100EA4
	mvn r1, #0
	str r1, [r0, #4]
	b _020AA308
_020AA300:
	mov r0, r4
	bl DrawCellImpl_
_020AA308:
	mov r0, #1
	bl NNS_G2dPopMtx
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AA314: .word Unk_02100EA4
_020AA318: .word Unk_021C4AC8
_020AA31C: .word 0x020F983C
	arm_func_end DrawCellAnimationImpl_

	arm_func_start DrawNode_
DrawNode_: ; 0x020AA320
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, [r5, #0]
	bl NNS_G2dPushMtx
	ldrh r0, [r5, #0x1e]
	tst r0, #8
	beq _020AA388
	ldr r0, _020AA3EC ; =0x021C4AC8
	ldrsh r7, [r5, #0x1a]
	ldr r0, [r0, #8]
	ldrsh r6, [r5, #0x18]
	bl NNS_G2dIsRndCoreFlipH
	cmp r0, #0
	ldr r0, _020AA3EC ; =0x021C4AC8
	rsbne r6, r6, #0
	ldr r0, [r0, #8]
	bl NNS_G2dIsRndCoreFlipV
	cmp r0, #0
	rsbne r7, r7, #0
	mov r0, r6, lsl #0xc
	mov r1, r7, lsl #0xc
	mov r2, #0
	bl NNS_G2dTranslate
_020AA388:
	ldrh r0, [r5, #0x1e]
	tst r0, #4
	beq _020AA3BC
	ldrh r0, [r5, #0x1c]
	ldr r2, _020AA3F0 ; =0x020F983C
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r3, r1, lsl #1
	mov r1, r0, lsl #1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl NNS_G2dRotZ
_020AA3BC:
	ldrh r0, [r5, #0x1e]
	tst r0, #2
	beq _020AA3D8
	ldr r0, [r5, #0x10]
	ldr r1, [r5, #0x14]
	mov r2, #0x1000
	bl NNS_G2dScale
_020AA3D8:
	mov r0, r4
	bl DrawCellAnimationImpl_
	mov r0, #1
	bl NNS_G2dPopMtx
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AA3EC: .word Unk_021C4AC8
_020AA3F0: .word 0x020F983C
	arm_func_end DrawNode_

	arm_func_start NNS_G2dInitRenderer
NNS_G2dInitRenderer: ; 0x020AA3F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl NNS_G2dInitRndCore
	mov r6, #0
	str r6, [r4, #0x70]
	str r6, [r4, #0x74]
	str r6, [r4, #0x78]
	str r6, [r4, #0x7c]
	str r6, [r4, #0x80]
	str r6, [r4, #0x84]
	strh r6, [r4, #0x88]
	strh r6, [r4, #0x8a]
	str r6, [r4, #0x8c]
	str r6, [r4, #0x90]
	strh r6, [r4, #0x94]
	ldr r1, _020AA49C ; =0x021C4AC8
	ldr r2, _020AA4A0 ; =0x0000FFFE
	ldr r0, _020AA4A4 ; =0x02100EA4
	ldr r7, _020AA4A8 ; =0x021C5258
	str r6, [r1, #0xc]
	strh r2, [r0]
	mvn r5, #0
	mov r4, #0x10
_020AA450:
	mov r0, r5
	mov r2, r4
	add r1, r7, #0x10
	bl MIi_CpuClearFast
	add r6, r6, #1
	cmp r6, #0x20
	add r7, r7, #0x20
	blt _020AA450
	ldr r3, _020AA49C ; =0x021C4AC8
	mov r0, #0
	strh r0, [r3]
	ldr r1, _020AA4AC ; =0x021C4B58
	mov r2, #0x100
	strh r0, [r3, #2]
	bl MIi_CpuClearFast
	ldr r0, _020AA49C ; =0x021C4AC8
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AA49C: .word Unk_021C4AC8
_020AA4A0: .word 0x0000FFFE
_020AA4A4: .word Unk_02100EA4
_020AA4A8: .word Unk_021C5258
_020AA4AC: .word Unk_021C4B58
	arm_func_end NNS_G2dInitRenderer

	arm_func_start NNS_G2dAddRendererTargetSurface
NNS_G2dAddRendererTargetSurface: ; 0x020AA4B0
	ldr r2, [r0, #0x70]
	str r2, [r1, #0x30]
	str r1, [r0, #0x70]
	bx lr
	arm_func_end NNS_G2dAddRendererTargetSurface

	arm_func_start NNS_G2dInitRenderSurface
NNS_G2dInitRenderSurface: ; 0x020AA4C0
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	mov r2, #0x48
	bl MIi_CpuClear16
	mov r0, #1
	str r0, [r4, #0x10]
	mov r0, #3
	ldr r1, _020AA50C ; =RndCoreCBFuncBeforeCell_
	str r0, [r4, #0x14]
	ldr r0, _020AA510 ; =RndCoreCBFuncAfterCell_
	str r1, [r4, #0x18]
	ldr r1, _020AA514 ; =RndCoreCBFuncBeforeOBJ_
	str r0, [r4, #0x1c]
	ldr r0, _020AA518 ; =RndCoreCBFuncAfterOBJ_
	str r1, [r4, #0x20]
	str r0, [r4, #0x24]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020AA50C: .word RndCoreCBFuncBeforeCell_
_020AA510: .word RndCoreCBFuncAfterCell_
_020AA514: .word RndCoreCBFuncBeforeOBJ_
_020AA518: .word RndCoreCBFuncAfterOBJ_
	arm_func_end NNS_G2dInitRenderSurface

	arm_func_start NNS_G2dBeginRendering
NNS_G2dBeginRendering: ; 0x020AA51C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r5, _020AA5AC ; =0x021C4AC8
	mov r4, #0
	str r0, [r5, #8]
	ldr r1, _020AA5B0 ; =0x0000FFFE
	ldr r0, _020AA5B4 ; =0x02100EA4
	str r4, [r5, #0xc]
	strh r1, [r0]
	ldrh r0, [r5]
	cmp r0, #0
	ble _020AA578
	ldr r8, _020AA5B8 ; =0x021C5258
	mvn r7, #0
	mov r6, #0x10
_020AA554:
	mov r0, r7
	mov r2, r6
	add r1, r8, #0x10
	bl MIi_CpuClearFast
	ldrh r0, [r5]
	add r4, r4, #1
	add r8, r8, #0x20
	cmp r4, r0
	blt _020AA554
_020AA578:
	ldr r3, _020AA5AC ; =0x021C4AC8
	mov r0, #0
	strh r0, [r3]
	ldr r1, _020AA5BC ; =0x021C4B58
	mov r2, #0x100
	strh r0, [r3, #2]
	bl MIi_CpuClearFast
	ldr r0, _020AA5C0 ; =0x04000444
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #0x10]
	bl NNSi_G2dIdentity
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020AA5AC: .word Unk_021C4AC8
_020AA5B0: .word 0x0000FFFE
_020AA5B4: .word Unk_02100EA4
_020AA5B8: .word Unk_021C5258
_020AA5BC: .word Unk_021C4B58
_020AA5C0: .word 0x04000444
	arm_func_end NNS_G2dBeginRendering

	arm_func_start NNS_G2dEndRendering
NNS_G2dEndRendering: ; 0x020AA5C4
	stmfd sp!, {r3, lr}
	ldr r1, _020AA628 ; =0x04000448
	mov r2, #1
	ldr r0, _020AA62C ; =0x021C4AC8
	str r2, [r1, #0]
	ldr r3, [r0, #8]
	ldr r2, [r3, #0x7c]
	cmp r2, #0
	beq _020AA618
	tst r2, #1
	movne r1, #0
	strne r1, [r0, #4]
	tst r2, #2
	beq _020AA608
	mov r0, #0
	str r0, [r3, #0x74]
	bl NNS_G2dRndCoreEndRendering
_020AA608:
	ldr r0, _020AA62C ; =0x021C4AC8
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [r0, #0x7c]
_020AA618:
	ldr r0, _020AA62C ; =0x021C4AC8
	mov r1, #0
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AA628: .word 0x04000448
_020AA62C: .word Unk_021C4AC8
	arm_func_end NNS_G2dEndRendering

	arm_func_start NNS_G2dDrawCellAnimation
NNS_G2dDrawCellAnimation: ; 0x020AA630
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020AA694 ; =0x021C4AC8
	mov r5, r0
	ldr r1, [r1, #8]
	ldr r1, [r1, #0x80]
	cmp r1, #0
	beq _020AA68C
	bl NNSi_G2dGetOamSoftEmuAutoZOffsetStep
	mov r4, r0
	mov r0, #1
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetFlag
	ldr r0, _020AA694 ; =0x021C4AC8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x80]
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetStep
	mov r0, r5
	bl DrawCellAnimationImpl_
	mov r0, #0
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetFlag
	mov r0, r4
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetStep
	bl NNSi_G2dResetOamSoftEmuAutoZOffset
	ldmia sp!, {r3, r4, r5, pc}
_020AA68C:
	bl DrawCellAnimationImpl_
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AA694: .word Unk_021C4AC8
	arm_func_end NNS_G2dDrawCellAnimation

	arm_func_start NNS_G2dDrawMultiCell
NNS_G2dDrawMultiCell: ; 0x020AA698
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, r0
	ldr r0, [r5, #8]
	cmp r0, #1
	bne _020AA894
	ldr r0, [r5, #0]
	mov r2, #0
	ldrh r0, [r0, #2]
	cmp r0, #0
	bls _020AA6EC
	ldr r3, _020AA960 ; =0x021C5658
	mov r4, r2
_020AA6C8:
	add r0, r3, r2, lsl #2
	str r4, [r0, #4]
	ldr r0, [r5, #0]
	add r2, r2, #1
	ldrh r1, [r0, #2]
	mov r0, r2, lsl #0x10
	mov r2, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA6C8
_020AA6EC:
	ldr r6, _020AA964 ; =0x021C4AC8
	mov r0, #1
	str r0, [r6, #0xf94]
	ldr r0, [r6, #8]
	mov sl, #0
	ldr r0, [r0, #0x80]
	cmp r0, #0
	beq _020AA7E4
	bl NNSi_G2dGetOamSoftEmuAutoZOffsetStep
	str r0, [sp]
	mov r0, #1
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetFlag
	mov r0, r6
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x80]
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetStep
	ldr r2, [r5, #0]
	ldrh r0, [r2]
	cmp r0, #0
	bls _020AA7CC
	ldr fp, _020AA968 ; =0x021C55C8
_020AA740:
	ldr r0, [r2, #4]
	ldr r8, [r5, #0xc]
	add r7, r0, sl, lsl #3
	ldrh r0, [r7, #6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #8
	mov sb, r0, lsr #0x10
	strh sb, [fp, #0x90]
	bl NNS_G2dPushMtx
	ldrsh r4, [r7, #4]
	ldr r0, [r6, #8]
	ldrsh r7, [r7, #2]
	bl NNS_G2dIsRndCoreFlipH
	cmp r0, #0
	ldr r0, [r6, #8]
	rsbne r7, r7, #0
	bl NNS_G2dIsRndCoreFlipV
	cmp r0, #0
	rsbne r4, r4, #0
	mov r2, #0
	mov r0, r7, lsl #0xc
	mov r1, r4, lsl #0xc
	bl NNS_G2dTranslate
	mov r0, #0x5c
	mla r0, sb, r0, r8
	bl DrawCellAnimationImpl_
	mov r0, #1
	bl NNS_G2dPopMtx
	ldr r2, [r5, #0]
	add r0, sl, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r2]
	mov sl, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA740
_020AA7CC:
	mov r0, #0
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetFlag
	ldr r0, [sp]
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetStep
	bl NNSi_G2dResetOamSoftEmuAutoZOffset
	b _020AA884
_020AA7E4:
	ldr r2, [r5, #0]
	ldrh r0, [r2]
	cmp r0, #0
	bls _020AA884
	ldr fp, _020AA968 ; =0x021C55C8
_020AA7F8:
	ldr r0, [r2, #4]
	ldr r8, [r5, #0xc]
	add r7, r0, sl, lsl #3
	ldrh r0, [r7, #6]
	and r0, r0, #0xff00
	mov r0, r0, lsl #8
	mov sb, r0, lsr #0x10
	strh sb, [fp, #0x90]
	bl NNS_G2dPushMtx
	ldrsh r4, [r7, #4]
	ldr r0, [r6, #8]
	ldrsh r7, [r7, #2]
	bl NNS_G2dIsRndCoreFlipH
	cmp r0, #0
	ldr r0, [r6, #8]
	rsbne r7, r7, #0
	bl NNS_G2dIsRndCoreFlipV
	cmp r0, #0
	rsbne r4, r4, #0
	mov r2, #0
	mov r0, r7, lsl #0xc
	mov r1, r4, lsl #0xc
	bl NNS_G2dTranslate
	mov r0, #0x5c
	mla r0, sb, r0, r8
	bl DrawCellAnimationImpl_
	mov r0, #1
	bl NNS_G2dPopMtx
	ldr r2, [r5, #0]
	add r0, sl, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r2]
	mov sl, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA7F8
_020AA884:
	ldr r0, _020AA964 ; =0x021C4AC8
	mov r1, #0
	str r1, [r0, #0xf94]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AA894:
	ldr r0, _020AA964 ; =0x021C4AC8
	ldr r4, [r5, #0xc]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x80]
	cmp r0, #0
	beq _020AA920
	bl NNSi_G2dGetOamSoftEmuAutoZOffsetStep
	mov r6, r0
	mov r0, #1
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetFlag
	ldr r0, _020AA964 ; =0x021C4AC8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x80]
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetStep
	ldr r0, [r5, #0]
	mov r7, #0
	ldrh r0, [r0]
	cmp r0, #0
	bls _020AA908
	mov r8, #0x28
_020AA8E4:
	mla r0, r7, r8, r4
	bl DrawNode_
	ldr r1, [r5, #0]
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1]
	mov r7, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA8E4
_020AA908:
	mov r0, #0
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetFlag
	mov r0, r6
	bl NNSi_G2dSetOamSoftEmuAutoZOffsetStep
	bl NNSi_G2dResetOamSoftEmuAutoZOffset
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020AA920:
	ldr r0, [r5, #0]
	mov r6, #0
	ldrh r0, [r0]
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r7, #0x28
_020AA938:
	mla r0, r6, r7, r4
	bl DrawNode_
	ldr r1, [r5, #0]
	add r0, r6, #1
	mov r0, r0, lsl #0x10
	ldrh r1, [r1]
	mov r6, r0, lsr #0x10
	cmp r1, r0, lsr #16
	bhi _020AA938
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AA960: .word Unk_021C5658
_020AA964: .word Unk_021C4AC8
_020AA968: .word 0x021C55C8
	arm_func_end NNS_G2dDrawMultiCell

	arm_func_start NNS_G2dDrawMultiCellAnimation
NNS_G2dDrawMultiCellAnimation: ; 0x020AA96C
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldrh r0, [r4, #0x5a]
	cmp r0, #0
	bne _020AA98C
	add r0, r4, #0x34
	bl NNS_G2dDrawMultiCell
	ldmia sp!, {r4, r5, r6, pc}
_020AA98C:
	bl NNS_G2dPushMtx
	ldrh r0, [r4, #0x5a]
	tst r0, #8
	beq _020AA9DC
	ldr r0, _020AAA40 ; =0x021C4AC8
	ldrsh r6, [r4, #0x56]
	ldr r0, [r0, #8]
	ldrsh r5, [r4, #0x54]
	bl NNS_G2dIsRndCoreFlipH
	cmp r0, #0
	ldr r0, _020AAA40 ; =0x021C4AC8
	rsbne r5, r5, #0
	ldr r0, [r0, #8]
	bl NNS_G2dIsRndCoreFlipV
	cmp r0, #0
	rsbne r6, r6, #0
	mov r0, r5, lsl #0xc
	mov r1, r6, lsl #0xc
	mov r2, #0
	bl NNS_G2dTranslate
_020AA9DC:
	ldrh r0, [r4, #0x5a]
	tst r0, #4
	beq _020AAA10
	ldrh r0, [r4, #0x58]
	ldr r2, _020AAA44 ; =0x020F983C
	mov r0, r0, asr #4
	mov r1, r0, lsl #1
	add r0, r1, #1
	mov r3, r1, lsl #1
	mov r1, r0, lsl #1
	ldrsh r0, [r2, r3]
	ldrsh r1, [r2, r1]
	bl NNS_G2dRotZ
_020AAA10:
	ldrh r0, [r4, #0x5a]
	tst r0, #2
	beq _020AAA2C
	ldr r0, [r4, #0x4c]
	ldr r1, [r4, #0x50]
	mov r2, #0x1000
	bl NNS_G2dScale
_020AAA2C:
	add r0, r4, #0x34
	bl NNS_G2dDrawMultiCell
	mov r0, #1
	bl NNS_G2dPopMtx
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AAA40: .word Unk_021C4AC8
_020AAA44: .word 0x020F983C
	arm_func_end NNS_G2dDrawMultiCellAnimation

	arm_func_start NNS_G2dPushMtx
NNS_G2dPushMtx: ; 0x020AAA48
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _020AAC4C ; =0x021C4AC8
	ldr r1, [r0, #8]
	ldr r1, [r1, #0x7c]
	tst r1, #1
	bne _020AAB88
	ldr r1, [r0, #0xc]
	mov r0, r1, lsl #0x10
	add r6, r1, #1
	cmp r6, #0x20
	mov r5, r0, lsr #0x10
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	beq _020AAB28
	ldr r0, _020AAC4C ; =0x021C4AC8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020AAACC
	ldr r3, [r0, #0xc]
	mov r0, #0x18
	mul r8, r3, r0
	ldr r4, _020AAC50 ; =0x021C4C68
	ldr r1, _020AAC54 ; =0x021C4AD8
	mul r7, r6, r0
	ldr r2, [r4, r8]
	ldr r0, [r1, r3, lsl #2]
	ldr r3, _020AAC58 ; =0x021C4C6C
	str r2, [r4, r7]
	ldr r2, [r3, r8]
	str r0, [r1, r6, lsl #2]
	str r2, [r3, r7]
	b _020AAB20
_020AAACC:
	ldr r4, [r0, #0xc]
	mov r0, #0x18
	mul lr, r4, r0
	ldr r1, _020AAC5C ; =0x021C4C58
	mul ip, r6, r0
	ldr r8, _020AAC60 ; =0x021C4F58
	add sl, r1, lr
	ldr r7, _020AAC54 ; =0x021C4AD8
	add sb, r1, ip
	ldmia sl!, {r0, r1, r2, r3}
	stmia sb!, {r0, r1, r2, r3}
	ldmia sl, {r0, r1}
	stmia sb, {r0, r1}
	add sb, r8, lr
	ldr r4, [r7, r4, lsl #2]
	add r8, r8, ip
	ldmia sb!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	str r4, [r7, r6, lsl #2]
	ldmia sb, {r0, r1}
	stmia r8, {r0, r1}
_020AAB20:
	ldr r0, _020AAC4C ; =0x021C4AC8
	str r6, [r0, #0xc]
_020AAB28:
	ldr r0, _020AAC4C ; =0x021C4AC8
	ldr r2, _020AAC64 ; =0x021C4B58
	ldr r0, [r0, #0xc]
	mov r6, r5, lsl #3
	mov r0, r0, lsl #0x10
	add r4, r2, r5, lsl #3
	mov r3, r0, lsr #0x10
	mov r5, r3, lsl #3
	ldrh r1, [r2, r6]
	ldrh r0, [r4, #2]
	add r3, r2, r3, lsl #3
	strh r1, [r2, r5]
	strh r0, [r3, #2]
	ldrh r2, [r4, #4]
	ldrh r0, [r4, #6]
	ldr r1, _020AAC68 ; =0x021C4B5C
	strh r2, [r3, #4]
	strh r0, [r3, #6]
	ldrh r0, [r1, r6]
	cmp r0, #1
	moveq r0, #2
	streqh r0, [r1, r5]
	strneh r0, [r1, r5]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020AAB88:
	ldr r0, [r0, #0xc]
	add r4, r0, #1
	cmp r4, #0x20
	movlt r0, #1
	movge r0, #0
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _020AAC4C ; =0x021C4AC8
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020AABEC
	ldr r3, [r0, #0xc]
	mov r0, #0x18
	mul r7, r3, r0
	ldr r5, _020AAC50 ; =0x021C4C68
	ldr r1, _020AAC54 ; =0x021C4AD8
	mul r6, r4, r0
	ldr r2, [r5, r7]
	ldr r0, [r1, r3, lsl #2]
	ldr r3, _020AAC58 ; =0x021C4C6C
	str r2, [r5, r6]
	ldr r2, [r3, r7]
	str r0, [r1, r4, lsl #2]
	str r2, [r3, r6]
	b _020AAC40
_020AABEC:
	ldr sb, [r0, #0xc]
	mov r0, #0x18
	mul lr, sb, r0
	ldr r1, _020AAC5C ; =0x021C4C58
	mul r8, r4, r0
	ldr ip, _020AAC60 ; =0x021C4F58
	add r5, r1, lr
	ldr r6, _020AAC54 ; =0x021C4AD8
	add r7, r1, r8
	ldmia r5!, {r0, r1, r2, r3}
	stmia r7!, {r0, r1, r2, r3}
	ldmia r5, {r0, r1}
	ldr r5, [r6, sb, lsl #2]
	add lr, ip, lr
	stmia r7, {r0, r1}
	add ip, ip, r8
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	str r5, [r6, r4, lsl #2]
_020AAC40:
	ldr r0, _020AAC4C ; =0x021C4AC8
	str r4, [r0, #0xc]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020AAC4C: .word Unk_021C4AC8
_020AAC50: .word 0x021C4C68
_020AAC54: .word Unk_021C4AD8
_020AAC58: .word 0x021C4C6C
_020AAC5C: .word Unk_021C4C58
_020AAC60: .word Unk_021C4F58
_020AAC64: .word Unk_021C4B58
_020AAC68: .word 0x021C4B5C
	arm_func_end NNS_G2dPushMtx

	arm_func_start NNS_G2dPopMtx
NNS_G2dPopMtx: ; 0x020AAC6C
	ldr r0, _020AACB0 ; =0x021C4AC8
	ldr r0, [r0, #0xc]
	cmp r0, #0
	movle r0, #1
	movgt r0, #0
	cmp r0, #0
	bxne lr
	ldr r1, _020AACB0 ; =0x021C4AC8
	ldr r0, _020AACB4 ; =0x02100EA4
	ldr r3, [r1, #0xc]
	ldrh r2, [r0]
	sub r3, r3, #1
	str r3, [r1, #0xc]
	cmp r2, r3
	ldrgt r1, _020AACB8 ; =0x0000FFFE
	strgth r1, [r0]
	bx lr
	; .align 2, 0
_020AACB0: .word Unk_021C4AC8
_020AACB4: .word Unk_02100EA4
_020AACB8: .word 0x0000FFFE
	arm_func_end NNS_G2dPopMtx

	arm_func_start NNS_G2dTranslate
NNS_G2dTranslate: ; 0x020AACBC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	ldr r3, _020AADA0 ; =0x021C4AC8
	mov r4, r2
	ldr r2, [r3, #4]
	cmp r2, #0
	beq _020AAD1C
	ldr r2, [r3, #0xc]
	mov r3, #0x18
	mul r6, r2, r3
	ldr r5, _020AADA4 ; =0x021C4C68
	ldr r3, _020AADA8 ; =0x021C4AD8
	ldr ip, [r5, r6]
	ldr lr, _020AADAC ; =0x021C4C6C
	add r0, ip, r0
	str r0, [r5, r6]
	ldr r0, [r3, r2, lsl #2]
	ldr ip, [lr, r6]
	add r0, r0, r4
	add r1, ip, r1
	str r0, [r3, r2, lsl #2]
	add sp, sp, #0x18
	str r1, [lr, r6]
	ldmia sp!, {r4, r5, r6, pc}
_020AAD1C:
	mov ip, #0x1000
	mov r2, #0
	str r0, [sp, #0x10]
	str ip, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	str ip, [sp, #0xc]
	str r1, [sp, #0x14]
	ldr r1, [r3, #0xc]
	mov r0, #0x18
	mul r3, r1, r0
	ldr r2, _020AADB0 ; =0x021C4C58
	add r0, sp, #0
	add r1, r2, r3
	add r2, r2, r3
	bl NNSi_G2dMtxConcat32
	ldr r1, _020AADA0 ; =0x021C4AC8
	mov r0, #0x18
	ldr r1, [r1, #0xc]
	ldr r2, _020AADB4 ; =0x021C4F58
	mul r3, r1, r0
	add r1, r2, r3
	add r0, sp, #0
	add r2, r2, r3
	bl NNSi_G2dMtxConcat32
	ldr r0, _020AADA0 ; =0x021C4AC8
	ldr r2, _020AADA8 ; =0x021C4AD8
	ldr r1, [r0, #0xc]
	ldr r0, [r2, r1, lsl #2]
	add r0, r0, r4
	str r0, [r2, r1, lsl #2]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AADA0: .word Unk_021C4AC8
_020AADA4: .word 0x021C4C68
_020AADA8: .word Unk_021C4AD8
_020AADAC: .word 0x021C4C6C
_020AADB0: .word Unk_021C4C58
_020AADB4: .word Unk_021C4F58
	arm_func_end NNS_G2dTranslate

	arm_func_start NNS_G2dScale
NNS_G2dScale: ; 0x020AADB8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r2, _020AAEF4 ; =0x021C4AC8
	mov lr, #0
	ldr r3, [r2, #0xc]
	mov r2, #0x18
	mul ip, r3, r2
	mov r5, r0
	mov r4, r1
	ldr r2, _020AAEF8 ; =0x021C4C58
	add r0, sp, #0
	add r1, r2, ip
	add r2, r2, ip
	str r5, [sp]
	str lr, [sp, #4]
	str lr, [sp, #8]
	str r4, [sp, #0xc]
	str lr, [sp, #0x10]
	str lr, [sp, #0x14]
	bl NNSi_G2dMtxConcat32
	mov r0, r5
	bl FX_Inv
	mov r1, #0
	str r0, [sp]
	mov r0, r4
	str r1, [sp, #4]
	str r1, [sp, #8]
	bl FX_Inv
	mov ip, #0
	ldr r1, _020AAEF4 ; =0x021C4AC8
	str r0, [sp, #0xc]
	ldr r1, [r1, #0xc]
	mov r0, #0x18
	mul r3, r1, r0
	ldr r2, _020AAEFC ; =0x021C4F58
	add r0, sp, #0
	add r1, r2, r3
	add r2, r2, r3
	str ip, [sp, #0x10]
	str ip, [sp, #0x14]
	bl NNSi_G2dMtxConcat32
	ldr r0, _020AAEF4 ; =0x021C4AC8
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020AAE84
	ldr r1, _020AAF00 ; =0x02100EA4
	ldr r0, _020AAF04 ; =0x0000FFFE
	ldrh r1, [r1]
	cmp r1, r0
	movne r0, #1
	bne _020AAE88
_020AAE84:
	mov r0, #0
_020AAE88:
	cmp r0, #0
	bne _020AAEA0
	ldr r1, _020AAEF4 ; =0x021C4AC8
	ldr r0, _020AAF00 ; =0x02100EA4
	ldr r1, [r1, #0xc]
	strh r1, [r0]
_020AAEA0:
	ldr r1, _020AAEF4 ; =0x021C4AC8
	ldr r2, _020AAF08 ; =0x021C4B58
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x10
	add ip, r2, r0, lsr #13
	ldrh r0, [ip, #4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020AAEEC
_020AAEC4: ; jump table
	b _020AAED4 ; case 0
	b _020AAEEC ; case 1
	b _020AAED4 ; case 2
	b _020AAED4 ; case 3
_020AAED4:
	ldrh r3, [r1, #2]
	mov r0, #1
	add r2, r3, #1
	strh r2, [r1, #2]
	strh r3, [ip, #2]
	strh r0, [ip, #4]
_020AAEEC:
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AAEF4: .word Unk_021C4AC8
_020AAEF8: .word Unk_021C4C58
_020AAEFC: .word Unk_021C4F58
_020AAF00: .word Unk_02100EA4
_020AAF04: .word 0x0000FFFE
_020AAF08: .word Unk_021C4B58
	arm_func_end NNS_G2dScale

	arm_func_start NNS_G2dRotZ
NNS_G2dRotZ: ; 0x020AAF0C
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x18
	ldr r2, _020AB014 ; =0x021C4AC8
	mov lr, #0
	ldr r3, [r2, #0xc]
	mov r2, #0x18
	mul ip, r3, r2
	rsb r3, r0, #0
	str r0, [sp, #4]
	ldr r2, _020AB018 ; =0x021C4C58
	add r0, sp, #0
	str r1, [sp]
	str r1, [sp, #0xc]
	add r1, r2, ip
	add r2, r2, ip
	str r3, [sp, #8]
	str lr, [sp, #0x10]
	str lr, [sp, #0x14]
	bl NNSi_G2dMtxConcat32
	ldr r1, _020AB014 ; =0x021C4AC8
	mov r0, #0x18
	ldr r1, [r1, #0xc]
	ldr r2, _020AB01C ; =0x021C4F58
	mul r3, r1, r0
	add r1, r2, r3
	add r0, sp, #0
	add r2, r2, r3
	bl NNSi_G2dMtxConcat32
	ldr r0, _020AB014 ; =0x021C4AC8
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020AAFA4
	ldr r1, _020AB020 ; =0x02100EA4
	ldr r0, _020AB024 ; =0x0000FFFE
	ldrh r1, [r1]
	cmp r1, r0
	movne r0, #1
	bne _020AAFA8
_020AAFA4:
	mov r0, #0
_020AAFA8:
	cmp r0, #0
	bne _020AAFC0
	ldr r1, _020AB014 ; =0x021C4AC8
	ldr r0, _020AB020 ; =0x02100EA4
	ldr r1, [r1, #0xc]
	strh r1, [r0]
_020AAFC0:
	ldr r1, _020AB014 ; =0x021C4AC8
	ldr r2, _020AB028 ; =0x021C4B58
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x10
	add ip, r2, r0, lsr #13
	ldrh r0, [ip, #4]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020AB00C
_020AAFE4: ; jump table
	b _020AAFF4 ; case 0
	b _020AB00C ; case 1
	b _020AAFF4 ; case 2
	b _020AAFF4 ; case 3
_020AAFF4:
	ldrh r3, [r1, #2]
	mov r0, #1
	add r2, r3, #1
	strh r2, [r1, #2]
	strh r3, [ip, #2]
	strh r0, [ip, #4]
_020AB00C:
	add sp, sp, #0x18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AB014: .word Unk_021C4AC8
_020AB018: .word Unk_021C4C58
_020AB01C: .word Unk_021C4F58
_020AB020: .word Unk_02100EA4
_020AB024: .word 0x0000FFFE
_020AB028: .word Unk_021C4B58
	arm_func_end NNS_G2dRotZ

	arm_func_start NNS_G2dGetRendererPaletteTbl
NNS_G2dGetRendererPaletteTbl: ; 0x020AB02C
	ldr r0, [r0, #0x78]
	bx lr
	arm_func_end NNS_G2dGetRendererPaletteTbl

	arm_func_start NNS_G2dSetRendererImageProxy
NNS_G2dSetRendererImageProxy: ; 0x020AB034
	ldr ip, _020AB03C ; =NNS_G2dSetRndCoreImageProxy
	bx ip
	; .align 2, 0
_020AB03C: .word NNS_G2dSetRndCoreImageProxy
	arm_func_end NNS_G2dSetRendererImageProxy

	.data


	.global Unk_02100EA4
Unk_02100EA4: ; 0x02100EA4
	.incbin "incbin/arm9_data.bin", 0x21C4, 0x21C8 - 0x21C4

	.global Unk_02100EA8
Unk_02100EA8: ; 0x02100EA8
	.incbin "incbin/arm9_data.bin", 0x21C8, 0x21CC - 0x21C8

	.global Unk_02100EAC
Unk_02100EAC: ; 0x02100EAC
	.incbin "incbin/arm9_data.bin", 0x21CC, 0x18



	.bss


	.global Unk_021C4AC8
Unk_021C4AC8: ; 0x021C4AC8
	.space 0x2

	.global Unk_021C4ACA
Unk_021C4ACA: ; 0x021C4ACA
	.space 0x2

	.global Unk_021C4ACC
Unk_021C4ACC: ; 0x021C4ACC
	.space 0x4

	.global Unk_021C4AD0
Unk_021C4AD0: ; 0x021C4AD0
	.space 0x4

	.global Unk_021C4AD4
Unk_021C4AD4: ; 0x021C4AD4
	.space 0x4

	.global Unk_021C4AD8
Unk_021C4AD8: ; 0x021C4AD8
	.space 0x80

	.global Unk_021C4B58
Unk_021C4B58: ; 0x021C4B58
	.space 0x100

	.global Unk_021C4C58
Unk_021C4C58: ; 0x021C4C58
	.space 0x300

	.global Unk_021C4F58
Unk_021C4F58: ; 0x021C4F58
	.space 0x300

	.global Unk_021C5258
Unk_021C5258: ; 0x021C5258
	.space 0x400

	.global Unk_021C5658
Unk_021C5658: ; 0x021C5658
	.space 0x408

