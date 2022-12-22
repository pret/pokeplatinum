	.include "macros/function.inc"
	.include "include/unk_020A7920.inc"

	

	.text


	arm_func_start CpuLoadOAMSub_
CpuLoadOAMSub_: ; 0x020A7920
	ldr ip, _020A7930 ; =MIi_CpuCopy16
	add r1, r1, #0x400
	add r1, r1, #0x7000000
	bx ip
	; .align 2, 0
_020A7930: .word MIi_CpuCopy16
	arm_func_end CpuLoadOAMSub_

	arm_func_start CpuLoadOAMMain_
CpuLoadOAMMain_: ; 0x020A7934
	ldr ip, _020A7940 ; =MIi_CpuCopy16
	add r1, r1, #0x7000000
	bx ip
	; .align 2, 0
_020A7940: .word MIi_CpuCopy16
	arm_func_end CpuLoadOAMMain_

	arm_func_start NNS_G2dInitOamManagerModule
NNS_G2dInitOamManagerModule: ; 0x020A7944
	stmfd sp!, {r3, lr}
	ldr r1, _020A79DC ; =0x021C3C08
	mov r0, #0xc0
	mov r2, #0x400
	bl MIi_CpuClear16
	ldr r1, _020A79E0 ; =0x021C4148
	mov r0, #0xc0
	mov r2, #0x400
	bl MIi_CpuClear16
	ldr r1, _020A79E4 ; =0x021C4688
	mov r0, #0xc0
	mov r2, #0x400
	bl MIi_CpuClear16
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79EC ; =0x021C3B08
	mov r2, #0x100
	bl MIi_CpuClear16
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79F0 ; =0x021C4048
	mov r2, #0x100
	bl MIi_CpuClear16
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79F4 ; =0x021C4588
	mov r2, #0x100
	bl MIi_CpuClear16
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79F8 ; =0x021C4008
	mov r2, #0x40
	bl MIi_CpuClear16
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A79FC ; =0x021C4548
	mov r2, #0x40
	bl MIi_CpuClear16
	ldr r0, _020A79E8 ; =0x0000FFFF
	ldr r1, _020A7A00 ; =0x021C4A88
	mov r2, #0x40
	bl MIi_CpuClear16
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A79DC: .word 0x021C3C08
_020A79E0: .word 0x021C4148
_020A79E4: .word 0x021C4688
_020A79E8: .word 0x0000FFFF
_020A79EC: .word 0x021C3B08
_020A79F0: .word 0x021C4048
_020A79F4: .word 0x021C4588
_020A79F8: .word 0x021C4008
_020A79FC: .word 0x021C4548
_020A7A00: .word 0x021C4A88
	arm_func_end NNS_G2dInitOamManagerModule

	arm_func_start NNS_G2dGetNewOamManagerInstance
NNS_G2dGetNewOamManagerInstance: ; 0x020A7A04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, [sp, #0x1c]
	ldr r6, _020A7B74 ; =0x021C3B08
	mov r4, #0x540
	mla r4, r5, r4, r6
	mov ip, r1
	sub r1, r2, #1
	add r1, ip, r1
	mov r1, r1, lsl #0x10
	mov r2, r1, lsr #0x10
	add lr, r4, ip, lsl #1
	add r7, r4, r2, lsl #1
	mov r6, r0
	mov r5, r3
	cmp lr, r7
	bhi _020A7A64
	ldr r0, _020A7B78 ; =0x0000FFFF
_020A7A48:
	ldrh r1, [lr]
	cmp r1, r0
	movne r0, #0
	bne _020A7A68
	add lr, lr, #2
	cmp lr, r7
	bls _020A7A48
_020A7A64:
	mov r0, #1
_020A7A68:
	cmp r0, #0
	beq _020A7AAC
	ldr r0, _020A7B7C ; =0x021C3B04
	sub r1, r2, ip
	ldrh r7, [r0]
	add r3, r1, #1
	add r1, r4, ip, lsl #1
	add lr, r7, #1
	strh lr, [r0]
	strh r7, [r6, #0x10]
	strh ip, [r6, #4]
	strh r2, [r6, #6]
	strh ip, [r6, #8]
	ldrh r0, [r6, #0x10]
	mov r2, r3, lsl #1
	bl MIi_CpuClear16
	b _020A7AB4
_020A7AAC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A7AB4:
	ldrh r0, [sp, #0x18]
	add r3, r4, #0x500
	cmp r0, #0
	bne _020A7AE0
	mov r0, #0x20
	strh r0, [r6, #0xa]
	mov r0, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r6, #0xa]
	strh r0, [r6, #0xe]
	b _020A7B5C
_020A7AE0:
	sub r0, r0, #1
	add r0, r5, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	add r7, r3, r5, lsl #1
	add r4, r3, r2, lsl #1
	cmp r7, r4
	bhi _020A7B20
	ldr r0, _020A7B78 ; =0x0000FFFF
_020A7B04:
	ldrh r1, [r7]
	cmp r1, r0
	movne r0, #0
	bne _020A7B24
	add r7, r7, #2
	cmp r7, r4
	bls _020A7B04
_020A7B20:
	mov r0, #1
_020A7B24:
	cmp r0, #0
	beq _020A7B54
	strh r5, [r6, #0xa]
	strh r2, [r6, #0xc]
	strh r5, [r6, #0xe]
	sub r0, r2, r5
	add r2, r0, #1
	ldrh r0, [r6, #0x10]
	add r1, r3, r5, lsl #1
	mov r2, r2, lsl #1
	bl MIi_CpuClear16
	b _020A7B5C
_020A7B54:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A7B5C:
	mov r1, #0
	ldr r0, [sp, #0x1c]
	str r1, [r6, #0x14]
	str r0, [r6, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A7B74: .word 0x021C3B08
_020A7B78: .word 0x0000FFFF
_020A7B7C: .word 0x021C3B04
	arm_func_end NNS_G2dGetNewOamManagerInstance

	arm_func_start NNS_G2dEntryOamManagerOam
NNS_G2dEntryOamManagerOam: ; 0x020A7B80
	stmfd sp!, {r3, r4, r5, lr}
	ldrh ip, [r0, #6]
	ldrh r5, [r0, #8]
	mov r4, #0
	add r3, ip, #1
	cmp r5, r3
	bgt _020A7BA8
	ldrh r3, [r0, #4]
	cmp r3, ip
	movls r4, #1
_020A7BA8:
	cmp r4, #0
	moveq r3, #0
	beq _020A7BC4
	sub r3, ip, r5
	add r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
_020A7BC4:
	cmp r3, r2
	movhs r3, #1
	movlo r3, #0
	cmp r3, #0
	beq _020A7C44
	ldr lr, [r0]
	ldr ip, _020A7C4C ; =0x021C3B08
	mov r3, #0x540
	mla ip, lr, r3, ip
	ldrh r3, [r0, #8]
	add ip, ip, #0x100
	cmp r2, #0
	add r5, ip, r3, lsl #3
	mov r4, #0
	ble _020A7C3C
_020A7C00:
	ldrh lr, [r1]
	mov r3, r4, lsl #3
	add ip, r5, r4, lsl #3
	strh lr, [r5, r3]
	ldrh r3, [r1, #2]
	add r4, r4, #1
	cmp r4, r2
	strh r3, [ip, #2]
	ldrh r3, [r1, #4]
	add r1, r1, #8
	strh r3, [ip, #4]
	ldrh r3, [r0, #8]
	add r3, r3, #1
	strh r3, [r0, #8]
	blt _020A7C00
_020A7C3C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020A7C44:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A7C4C: .word 0x021C3B08
	arm_func_end NNS_G2dEntryOamManagerOam

	arm_func_start NNS_G2dEntryOamManagerOamWithAffineIdx
NNS_G2dEntryOamManagerOamWithAffineIdx: ; 0x020A7C50
	stmfd sp!, {r4, lr}
	ldrh lr, [r0, #6]
	ldrh ip, [r0, #8]
	mov r4, #0
	add r3, lr, #1
	cmp ip, r3
	bgt _020A7C78
	ldrh r3, [r0, #4]
	cmp r3, lr
	movls r4, #1
_020A7C78:
	cmp r4, #0
	moveq r3, #0
	beq _020A7C94
	sub r3, lr, ip
	add r3, r3, #1
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
_020A7C94:
	cmp r3, #1
	movhs r3, #1
	movlo r3, #0
	cmp r3, #0
	beq _020A7D24
	ldr r4, [r0, #0]
	ldr ip, _020A7D2C ; =0x021C3B08
	mov r3, #0x540
	mla ip, r4, r3, ip
	ldrh r3, [r0, #8]
	add r4, ip, #0x100
	ldrh ip, [r1]
	mov lr, r3, lsl #3
	add r3, r4, r3, lsl #3
	strh ip, [r4, lr]
	ldrh lr, [r1, #2]
	ldr ip, _020A7D30 ; =0x0000FFFE
	strh lr, [r3, #2]
	ldrh r1, [r1, #4]
	cmp r2, ip
	strh r1, [r3, #4]
	beq _020A7D10
	ldr r1, [r3, #0]
	mov ip, r1, lsl #0x16
	mov ip, ip, lsr #0x1e
	tst ip, #1
	beq _020A7D10
	bic ip, r1, #0x3e000000
	mov r1, r2, lsl #0x1b
	orr r1, ip, r1, lsr #2
	str r1, [r3, #0]
_020A7D10:
	ldrh r1, [r0, #8]
	add r1, r1, #1
	strh r1, [r0, #8]
	mov r0, #1
	ldmia sp!, {r4, pc}
_020A7D24:
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A7D2C: .word 0x021C3B08
_020A7D30: .word 0x0000FFFE
	arm_func_end NNS_G2dEntryOamManagerOamWithAffineIdx

	arm_func_start NNS_G2dEntryOamManagerAffine
NNS_G2dEntryOamManagerAffine: ; 0x020A7D34
	stmfd sp!, {r3, lr}
	ldrh lr, [r0, #0xc]
	ldrh ip, [r0, #0xe]
	mov r3, #0
	add r2, lr, #1
	cmp ip, r2
	bgt _020A7D5C
	ldrh r2, [r0, #0xa]
	cmp r2, lr
	movls r3, #1
_020A7D5C:
	cmp r3, #0
	moveq r2, #0
	beq _020A7D78
	sub r2, lr, ip
	add r2, r2, #1
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
_020A7D78:
	cmp r2, #1
	movhs r2, #1
	movlo r2, #0
	cmp r2, #0
	ldreq r0, _020A7DF0 ; =0x0000FFFE
	ldmeqia sp!, {r3, pc}
	ldr lr, [r0]
	ldr r3, _020A7DF4 ; =0x021C3B08
	mov r2, #0x540
	mla ip, lr, r2, r3
	ldr r3, [r1, #0]
	ldrh r2, [r0, #0xe]
	add ip, ip, #0x100
	mov r3, r3, asr #4
	add ip, ip, r2, lsl #5
	strh r3, [ip, #6]
	ldr r3, [r1, #4]
	mov r3, r3, asr #4
	strh r3, [ip, #0xe]
	ldr r3, [r1, #8]
	mov r3, r3, asr #4
	strh r3, [ip, #0x16]
	ldr r1, [r1, #0xc]
	mov r1, r1, asr #4
	strh r1, [ip, #0x1e]
	ldrh r1, [r0, #0xe]
	add r1, r1, #1
	strh r1, [r0, #0xe]
	mov r0, r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A7DF0: .word 0x0000FFFE
_020A7DF4: .word 0x021C3B08
	arm_func_end NNS_G2dEntryOamManagerAffine

	arm_func_start NNS_G2dApplyOamManagerToHW
NNS_G2dApplyOamManagerToHW: ; 0x020A7DF8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r0
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _020A7E8C
	ldr r6, [r7, #0]
	ldr r1, _020A7FF4 ; =0x021C3B08
	mov r0, #0x540
	mla r1, r6, r0, r1
	ldrh r3, [r7, #4]
	ldrh r0, [r7, #6]
	add r5, r1, #0x100
	mov r4, r3, lsl #3
	sub r0, r0, r3
	add r0, r0, #1
	mov r0, r0, lsl #0x13
	mov r8, r0, lsr #0x10
	mov r2, r4, lsl #0x10
	mov r1, r8
	add r0, r5, r3, lsl #3
	mov r7, r2, lsr #0x10
	bl DC_FlushRange
	cmp r6, #0
	beq _020A7E64
	cmp r6, #1
	beq _020A7E78
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A7E64:
	mov r1, r7
	mov r2, r8
	add r0, r5, r4
	bl GX_LoadOAM
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A7E78:
	mov r1, r7
	mov r2, r8
	add r0, r5, r4
	bl GXS_LoadOAM
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A7E8C:
	ldr r0, [r7, #0]
	ldr r2, _020A7FF4 ; =0x021C3B08
	mov r1, #0x540
	mla r2, r0, r1, r2
	ldrh r5, [r7, #4]
	ldrh r1, [r7, #6]
	ldr r3, _020A7FF8 ; =0x02100E90
	add r4, r2, #0x100
	sub r1, r1, r5
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	mov r2, r5, lsl #0x13
	add r6, r4, r5, lsl #3
	movs r5, r1, lsr #0x10
	mov r4, r2, lsr #0x10
	ldr sb, [r3, r0, lsl #2]
	mov sl, #0
	beq _020A7F0C
	mov r8, #6
_020A7ED8:
	mov r0, r6
	mov r1, r4
	mov r2, r8
	blx sb
	add r2, r4, #8
	add r0, sl, #1
	mov r1, r0, lsl #0x10
	mov r0, r2, lsl #0x10
	cmp r5, r1, lsr #16
	mov r4, r0, lsr #0x10
	add r6, r6, #8
	mov sl, r1, lsr #0x10
	bhi _020A7ED8
_020A7F0C:
	ldrh r2, [r7, #0xc]
	ldrh r1, [r7, #0xe]
	mov r3, #0
	add r0, r2, #1
	cmp r1, r0
	bgt _020A7F30
	ldrh r0, [r7, #0xa]
	cmp r0, r2
	movls r3, #1
_020A7F30:
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r7, #0]
	ldr r2, _020A7FF4 ; =0x021C3B08
	mov r1, #0x540
	mla r2, r0, r1, r2
	ldr r3, _020A7FF8 ; =0x02100E90
	ldrh r5, [r7, #0xa]
	ldrh r1, [r7, #0xc]
	add r4, r2, #0x100
	mov r2, r5, lsl #0x15
	sub r1, r1, r5
	add r1, r1, #1
	mov r1, r1, lsl #0x10
	ldr r6, [r3, r0, lsl #2]
	add sl, r4, r5, lsl #5
	movs sb, r1, lsr #0x10
	mov r8, r2, lsr #0x10
	mov r7, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r5, #2
	mov r4, r5
	mov fp, r5
_020A7F8C:
	mov r2, r5
	add r0, sl, #6
	add r1, r8, #6
	blx r6
	mov r2, r4
	add r0, sl, #0xe
	add r1, r8, #0xe
	blx r6
	add r0, sl, #0x16
	add r1, r8, #0x16
	mov r2, fp
	blx r6
	add r0, sl, #0x1e
	add r1, r8, #0x1e
	mov r2, #2
	blx r6
	add r0, r8, #0x20
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	add r0, r7, #1
	mov r0, r0, lsl #0x10
	add sl, sl, #0x20
	cmp sb, r0, lsr #16
	mov r7, r0, lsr #0x10
	bhi _020A7F8C
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020A7FF4: .word 0x021C3B08
_020A7FF8: .word 0x02100E90
	arm_func_end NNS_G2dApplyOamManagerToHW

	arm_func_start NNS_G2dResetOamManagerBuffer
NNS_G2dResetOamManagerBuffer: ; 0x020A7FFC
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x14]
	cmp r0, #0
	beq _020A80B4
	ldrh r3, [r5, #6]
	ldrh r1, [r5, #8]
	mov r2, #0
	add r0, r3, #1
	cmp r1, r0
	bgt _020A8034
	ldrh r0, [r5, #4]
	cmp r0, r3
	movls r2, #1
_020A8034:
	cmp r2, #0
	moveq r4, #0
	beq _020A8054
	ldrh r0, [r5, #4]
	sub r0, r3, r0
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0xd
_020A8054:
	ldr r2, [r5, #0]
	ldr r1, _020A811C ; =0x021C3B08
	mov r0, #0x540
	mla r1, r2, r0, r1
	add r2, r1, #0x100
	ldrh r0, [r5, #4]
	mov r1, r4
	add r6, r2, r0, lsl #3
	mov r0, r6
	bl DC_InvalidateRange
	ldr r0, _020A8120 ; =0x02101148
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	mov r1, r6
	beq _020A80A4
	mov r3, r4
	mov r2, #0xc0
	bl MI_DmaFill32
	b _020A8108
_020A80A4:
	mov r2, r4
	mov r0, #0xc0
	bl MIi_CpuClear32
	b _020A8108
_020A80B4:
	ldr r2, [r5, #0]
	ldr r1, _020A811C ; =0x021C3B08
	mov r0, #0x540
	mla r1, r2, r0, r1
	ldrh r2, [r5, #4]
	ldrh r0, [r5, #6]
	add r1, r1, #0x100
	add r3, r1, r2, lsl #3
	sub r0, r0, r2
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	movs r2, r0, lsr #0x10
	mov r0, #0
	beq _020A8108
	mov r1, #0xc0
_020A80F0:
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	cmp r2, r0, lsr #16
	strh r1, [r3], #8
	mov r0, r0, lsr #0x10
	bhi _020A80F0
_020A8108:
	ldrh r0, [r5, #4]
	strh r0, [r5, #8]
	ldrh r0, [r5, #0xa]
	strh r0, [r5, #0xe]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A811C: .word 0x021C3B08
_020A8120: .word 0x02101148
	arm_func_end NNS_G2dResetOamManagerBuffer

	arm_func_start NNS_G2dApplyAndResetOamManagerBuffer
NNS_G2dApplyAndResetOamManagerBuffer: ; 0x020A8124
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NNS_G2dApplyOamManagerToHW
	mov r0, r4
	bl NNS_G2dResetOamManagerBuffer
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G2dApplyAndResetOamManagerBuffer

	arm_func_start NNS_G2dGetOamManagerOamCapacity
NNS_G2dGetOamManagerOamCapacity: ; 0x020A813C
	ldrh ip, [r0, #6]
	ldrh r3, [r0, #8]
	mov r2, #0
	add r1, ip, #1
	cmp r3, r1
	bgt _020A8160
	ldrh r0, [r0, #4]
	cmp r0, ip
	movls r2, #1
_020A8160:
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	sub r0, ip, r3
	add r0, r0, #1
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	arm_func_end NNS_G2dGetOamManagerOamCapacity

	.rodata


	.global Unk_020F9658
Unk_020F9658: ; 0x020F9658
	.incbin "incbin/arm9_rodata.bin", 0x14A18, 0x14A30 - 0x14A18

	.global Unk_020F9670
Unk_020F9670: ; 0x020F9670
	.incbin "incbin/arm9_rodata.bin", 0x14A30, 0x18



	.data


	.global Unk_02100E90
Unk_02100E90: ; 0x02100E90
	.incbin "incbin/arm9_data.bin", 0x21B0, 0x14



	.bss


	.global Unk_021C3B04
Unk_021C3B04: ; 0x021C3B04
	.space 0x2

	.global Unk_021C3B08
Unk_021C3B08: ; 0x021C3B08
	.space 0xFC0

