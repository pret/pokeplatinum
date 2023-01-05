	.include "macros/function.inc"
	.include "include/unk_020B2840.inc"

	.extern NNS_GfdDefaultFuncAllocTexVram
	.extern NNS_GfdDefaultFuncFreeTexVram
	.extern NNS_GfdDefaultFuncAllocPlttVram
	.extern NNS_GfdDefaultFuncFreePlttVram

	.text


	arm_func_start NNS_G3dGetCurrentMtx
NNS_G3dGetCurrentMtx: ; 0x020B2840
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x40
	mov r6, r0
	mov r5, r1
	bl NNS_G3dGeFlushBuffer
	ldr r0, _020B28C4 ; =0x04000440
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	cmp r6, #0
	beq _020B2890
	add r4, sp, #0
_020B2874:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _020B2874
	add r0, sp, #0
	mov r1, r6
	bl MTX_Copy44To43_
_020B2890:
	cmp r5, #0
	beq _020B28A8
_020B2898:
	mov r0, r5
	bl G3X_GetVectorMtx
	cmp r0, #0
	bne _020B2898
_020B28A8:
	ldr r1, _020B28C8 ; =0x04000448
	mov r0, #1
	str r0, [r1, #0]
	mov r0, #2
	str r0, [r1, #-8]
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B28C4: .word 0x04000440
_020B28C8: .word 0x04000448
	arm_func_end NNS_G3dGetCurrentMtx

	arm_func_start NNS_G3dInit
NNS_G3dInit: ; 0x020B28CC
	stmfd sp!, {r3, lr}
	bl G3X_Init
	bl NNS_G3dGlbInit
	ldr r1, _020B28F0 ; =0x04000600
	ldr r0, [r1, #0]
	bic r0, r0, #0xc0000000
	orr r0, r0, #0x80000000
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B28F0: .word 0x04000600
	arm_func_end NNS_G3dInit

	arm_func_start NNS_G3dResDefaultSetup
NNS_G3dResDefaultSetup: ; 0x020B28F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r2, [sl]
	ldr r1, _020B2B10 ; =0x30415642
	cmp r2, r1
	bhi _020B2940
	bhs _020B2B00
	sub r0, r1, #0x900
	cmp r2, r0
	bhi _020B2930
	bhs _020B2B00
	sub r0, r1, #0x1300
	cmp r2, r0
	beq _020B2B00
	b _020B2B08
_020B2930:
	sub r0, r1, #0x200
	cmp r2, r0
	beq _020B2B00
	b _020B2B08
_020B2940:
	ldr r0, _020B2B14 ; =0x30505442
	cmp r2, r0
	bhi _020B2960
	bhs _020B2B00
	ldr r0, _020B2B18 ; =0x30444D42
	cmp r2, r0
	beq _020B296C
	b _020B2B08
_020B2960:
	add r0, r0, #0x80000
	cmp r2, r0
	bne _020B2B08
_020B296C:
	mov r5, #1
	mov r0, sl
	mov r6, r5
	mov r7, r5
	bl NNS_G3dGetTex
	movs r4, r0
	beq _020B2AD0
	bl NNS_G3dTexGetRequiredSize
	mov sb, r0
	mov r0, r4
	bl NNS_G3dTex4x4GetRequiredSize
	mov r8, r0
	mov r0, r4
	bl NNS_G3dPlttGetRequiredSize
	str r0, [sp]
	cmp sb, #0
	beq _020B29D4
	ldr r0, _020B2B1C ; =0x02100DEC
	mov r1, #0
	ldr r3, [r0, #0]
	mov r0, sb
	mov r2, r1
	blx r3
	movs fp, r0
	moveq r5, #0
	b _020B29D8
_020B29D4:
	mov fp, #0
_020B29D8:
	cmp r8, #0
	beq _020B2A04
	ldr r1, _020B2B1C ; =0x02100DEC
	mov r0, r8
	ldr r3, [r1, #0]
	mov r1, #1
	mov r2, #0
	blx r3
	movs r8, r0
	moveq r6, #0
	b _020B2A08
_020B2A04:
	mov r8, #0
_020B2A08:
	ldr r0, [sp]
	cmp r0, #0
	beq _020B2A38
	ldr r1, _020B2B20 ; =0x02100DF4
	ldrh r2, [r4, #0x20]
	ldr r3, [r1, #0]
	and r1, r2, #0x8000
	mov r2, #0
	blx r3
	movs sb, r0
	moveq r7, #0
	b _020B2A3C
_020B2A38:
	mov sb, #0
_020B2A3C:
	cmp r5, #0
	cmpne r6, #0
	cmpne r7, #0
	bne _020B2A9C
	cmp r7, #0
	beq _020B2A64
	ldr r1, _020B2B24 ; =0x02100DF8
	mov r0, sb
	ldr r1, [r1, #0]
	blx r1
_020B2A64:
	cmp r6, #0
	beq _020B2A7C
	ldr r1, _020B2B28 ; =0x02100DF0
	mov r0, r8
	ldr r1, [r1, #0]
	blx r1
_020B2A7C:
	cmp r5, #0
	beq _020B2A94
	ldr r1, _020B2B28 ; =0x02100DF0
	mov r0, fp
	ldr r1, [r1, #0]
	blx r1
_020B2A94:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B2A9C:
	mov r0, r4
	mov r1, fp
	mov r2, r8
	bl NNS_G3dTexSetTexKey
	mov r0, r4
	mov r1, sb
	bl NNS_G3dPlttSetPlttKey
	mov r0, r4
	mov r1, #1
	bl NNS_G3dTexLoad
	mov r0, r4
	mov r1, #1
	bl NNS_G3dPlttLoad
_020B2AD0:
	ldr r1, [sl]
	ldr r0, _020B2B18 ; =0x30444D42
	cmp r1, r0
	bne _020B2AF8
	mov r0, sl
	bl NNS_G3dGetMdlSet
	cmp r4, #0
	beq _020B2AF8
	mov r1, r4
	bl NNS_G3dBindMdlSet
_020B2AF8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B2B00:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B2B08:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B2B10: .word 0x30415642
_020B2B14: .word 0x30505442
_020B2B18: .word 0x30444D42
_020B2B1C: .word NNS_GfdDefaultFuncAllocTexVram
_020B2B20: .word NNS_GfdDefaultFuncAllocPlttVram
_020B2B24: .word NNS_GfdDefaultFuncFreePlttVram
_020B2B28: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end NNS_G3dResDefaultSetup

	arm_func_start NNS_G3dWorldPosToScrPos
NNS_G3dWorldPosToScrPos: ; 0x020B2B2C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x1c
	mov r5, r1
	mov r4, r2
	ldr r6, _020B2CAC ; =0x021C5A94
	ldr r1, _020B2CB0 ; =0x021C5AD8
	add r2, sp, #0x10
	bl MTX_MultVec43
	ldr r1, [sp, #0x14]
	ldr r0, [r6, #0x1c]
	ldr r2, [sp, #0x10]
	smull r8, r7, r1, r0
	ldr r0, [r6, #0xc]
	ldr r3, [sp, #0x18]
	smlal r8, r7, r2, r0
	ldr r1, [r6, #0x2c]
	ldr r0, [r6, #0x3c]
	smlal r8, r7, r3, r1
	mov r1, r8, lsr #0xc
	orr r1, r1, r7, lsl #20
	add r0, r1, r0
	bl FX_InvAsync
	ldr r2, [sp, #0x14]
	ldr r1, [r6, #0x10]
	ldr r0, [r6, #0x14]
	smull sb, r8, r2, r1
	smull lr, ip, r2, r0
	ldr r1, [sp, #0x10]
	ldr r3, [r6, #0]
	ldr r0, [sp, #0x18]
	smlal sb, r8, r1, r3
	ldr r7, [r6, #0x20]
	ldr r2, [r6, #0x30]
	smlal sb, r8, r0, r7
	mov r3, sb, lsr #0xc
	orr r3, r3, r8, lsl #20
	add r7, r3, r2
	ldr r3, [r6, #4]
	ldr r8, [r6, #0x24]
	smlal lr, ip, r1, r3
	smlal lr, ip, r0, r8
	mov r0, lr, lsr #0xc
	ldr r2, [r6, #0x34]
	orr r0, r0, ip, lsl #20
	add r8, r0, r2
	bl FX_GetDivResultFx64c
	umull lr, ip, r0, r7
	mov r2, r7, asr #0x1f
	mla ip, r0, r2, ip
	mla ip, r1, r7, ip
	adds lr, lr, #-0x80000000
	adc r2, ip, #0
	add r2, r2, #0x1000
	add r2, r2, r2, lsr #31
	mov r7, r2, asr #1
	mov r3, r8, asr #0x1f
	umull ip, r2, r0, r8
	mla r2, r0, r3, r2
	mla r2, r1, r8, r2
	adds r0, ip, #-0x80000000
	adc r0, r2, #0
	add r0, r0, #0x1000
	add r0, r0, r0, lsr #31
	mov r8, r0, asr #1
	cmp r7, #0
	mov r6, #0
	cmpge r8, #0
	blt _020B2C48
	cmp r7, #0x1000
	cmple r8, #0x1000
	ble _020B2C4C
_020B2C48:
	mvn r6, #0
_020B2C4C:
	add r0, sp, #0xc
	add r1, sp, #8
	add r2, sp, #4
	add r3, sp, #0
	bl NNS_G3dGlbGetViewPort
	ldr r2, [sp, #0xc]
	ldr r0, [sp, #4]
	ldr ip, [sp]
	sub r0, r0, r2
	mul r0, r7, r0
	add r1, r0, #0x800
	ldr r3, [sp, #8]
	add r1, r2, r1, asr #12
	sub r0, ip, r3
	mul r0, r8, r0
	str r1, [r5, #0]
	ldr r1, [sp, #8]
	add r0, r0, #0x800
	rsb r1, r1, #0xbf
	sub r1, r1, r0, asr #12
	mov r0, r6
	str r1, [r4, #0]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020B2CAC: .word 0x021C5A94
_020B2CB0: .word 0x021C5AD8
	arm_func_end NNS_G3dWorldPosToScrPos