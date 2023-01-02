	.include "macros/function.inc"
	.include "include/unk_020B3DB8.inc"

	.extern Unk_021C5CF0
	

	.text


	arm_func_start NNSi_G3dAnmObjInitNsBca
NNSi_G3dAnmObjInitNsBca: ; 0x020B3DB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	ldr r0, _020B3E30 ; =0x02100ED0
	str r4, [r5, #8]
	ldr r0, [r0, #0]
	add r1, r5, #0x1a
	str r0, [r5, #0xc]
	ldrb r2, [r2, #0x17]
	mov r0, #0
	strb r2, [r5, #0x19]
	mov r2, r2, lsl #1
	bl MIi_CpuClear16
	ldrh r0, [r4, #6]
	add r3, r4, #0x14
	mov r2, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, pc}
_020B3E00:
	mov r0, r2, lsl #1
	ldrh r1, [r3, r0]
	add r0, r5, r2, lsl #1
	add r2, r2, #1
	ldr r1, [r4, r1]
	mov r1, r1, lsr #0x18
	orr r1, r1, #0x100
	strh r1, [r0, #0x1a]
	ldrh r0, [r4, #6]
	cmp r2, r0
	blo _020B3E00
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B3E30: .word 0x02100ED0
	arm_func_end NNSi_G3dAnmObjInitNsBca

	arm_func_start NNSi_G3dAnmCalcNsBca
NNSi_G3dAnmCalcNsBca: ; 0x020B3E34
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r1, #8]
	ldr ip, [r1]
	ldrh r1, [r0, #4]
	cmp ip, r1, lsl #12
	mov r1, r1, lsl #0xc
	subge ip, r1, #1
	bge _020B3E60
	cmp ip, #0
	movlt ip, #0
_020B3E60:
	mov r1, r2
	mov r2, ip
	bl getJntSRTAnmResult_
	ldmia sp!, {r3, pc}
	arm_func_end NNSi_G3dAnmCalcNsBca

	arm_func_start getMdlTrans_
getMdlTrans_: ; 0x020B3E70
	ldr r1, _020B3F04 ; =0x021C5CF0
	ldr r2, [r1, #0]
	ldr r1, [r2, #0]
	ldr ip, [r2, #0xd4]
	ldrb r3, [r1, #1]
	cmp ip, #0
	beq _020B3EC8
	beq _020B3EB4
	ldrb r1, [ip, #1]
	cmp r3, r1
	bhs _020B3EB4
	ldrh r2, [ip, #6]
	ldrh r1, [ip, r2]
	add r2, ip, r2
	add r2, r2, #4
	mla r2, r1, r3, r2
	b _020B3EB8
_020B3EB4:
	mov r2, #0
_020B3EB8:
	cmp r2, #0
	ldrne r1, [r2]
	addne r2, ip, r1
	bne _020B3ECC
_020B3EC8:
	mov r2, #0
_020B3ECC:
	ldrh r1, [r2]
	tst r1, #1
	beq _020B3EE8
	ldr r1, [r0, #0]
	orr r1, r1, #4
	str r1, [r0, #0]
	bx lr
_020B3EE8:
	ldr r1, [r2, #4]
	str r1, [r0, #0x4c]
	ldr r1, [r2, #8]
	str r1, [r0, #0x50]
	ldr r1, [r2, #0xc]
	str r1, [r0, #0x54]
	bx lr
	; .align 2, 0
_020B3F04: .word Unk_021C5CF0
	arm_func_end getMdlTrans_

	arm_func_start getMdlScale_
getMdlScale_: ; 0x020B3F08
	stmfd sp!, {r4, lr}
	ldr r1, _020B3F94 ; =0x021C5CF0
	ldr ip, [r1]
	ldr r2, [ip]
	ldr r4, [ip, #0xd4]
	ldrb lr, [r2, #1]
	cmp r4, #0
	beq _020B3F64
	beq _020B3F50
	ldrb r1, [r4, #1]
	cmp lr, r1
	bhs _020B3F50
	ldrh r3, [r4, #6]
	ldrh r1, [r4, r3]
	add r3, r4, r3
	add r3, r3, #4
	mla r3, r1, lr, r3
	b _020B3F54
_020B3F50:
	mov r3, #0
_020B3F54:
	cmp r3, #0
	ldrne r1, [r3]
	addne r1, r4, r1
	bne _020B3F68
_020B3F64:
	mov r1, #0
_020B3F68:
	ldrh r3, [r1], #4
	tst r3, #1
	addeq r1, r1, #0xc
	tst r3, #2
	bne _020B3F88
	tst r3, #8
	addne r1, r1, #4
	addeq r1, r1, #0x10
_020B3F88:
	ldr ip, [ip, #0xe8]
	blx ip
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B3F94: .word Unk_021C5CF0
	arm_func_end getMdlScale_

	arm_func_start getMdlRot_
getMdlRot_: ; 0x020B3F98
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r1, _020B4104 ; =0x021C5CF0
	mov r8, r0
	ldr r1, [r1, #0]
	ldr r0, [r1, #0]
	ldr r3, [r1, #0xd4]
	ldrb r2, [r0, #1]
	cmp r3, #0
	beq _020B3FF8
	beq _020B3FE4
	ldrb r0, [r3, #1]
	cmp r2, r0
	bhs _020B3FE4
	ldrh r1, [r3, #6]
	ldrh r0, [r3, r1]
	add r1, r3, r1
	add r1, r1, #4
	mla r1, r0, r2, r1
	b _020B3FE8
_020B3FE4:
	mov r1, #0
_020B3FE8:
	cmp r1, #0
	ldrne r0, [r1]
	addne r5, r3, r0
	bne _020B3FFC
_020B3FF8:
	mov r5, #0
_020B3FFC:
	ldrh r0, [r5]
	add r1, r5, #4
	tst r0, #1
	addeq r1, r1, #0xc
	tst r0, #2
	bne _020B40F4
	tst r0, #8
	beq _020B40A8
	and r2, r0, #0xf0
	add r0, r8, #0x28
	mov r4, r2, asr #4
	ldrsh r7, [r1]
	ldrsh r6, [r1, #2]
	bl MI_Zero36B
	ldrh r0, [r5]
	ldr r1, _020B4108 ; =0x020F9818
	mov r3, #0x1000
	tst r0, #0x100
	ldr r0, _020B410C ; =0x020F9819
	ldrb r1, [r1, r4, lsl #2]
	ldrb r0, [r0, r4, lsl #2]
	rsbne r3, r3, #0
	add r2, r8, r4, lsl #2
	str r3, [r2, #0x28]
	add r1, r8, r1, lsl #2
	str r7, [r1, #0x28]
	add r0, r8, r0, lsl #2
	str r6, [r0, #0x28]
	ldrh r0, [r5]
	tst r0, #0x200
	ldr r0, _020B4110 ; =0x020F981A
	rsbne r6, r6, #0
	ldrb r0, [r0, r4, lsl #2]
	add r0, r8, r0, lsl #2
	str r6, [r0, #0x28]
	ldrh r0, [r5]
	tst r0, #0x400
	ldr r0, _020B4114 ; =0x020F981B
	rsbne r7, r7, #0
	ldrb r0, [r0, r4, lsl #2]
	add r0, r8, r0, lsl #2
	str r7, [r0, #0x28]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B40A8:
	ldrsh r0, [r5, #2]
	str r0, [r8, #0x28]
	ldrsh r0, [r1]
	str r0, [r8, #0x2c]
	ldrsh r0, [r1, #2]
	str r0, [r8, #0x30]
	ldrsh r0, [r1, #4]
	str r0, [r8, #0x34]
	ldrsh r0, [r1, #6]
	str r0, [r8, #0x38]
	ldrsh r0, [r1, #8]
	str r0, [r8, #0x3c]
	ldrsh r0, [r1, #0xa]
	str r0, [r8, #0x40]
	ldrsh r0, [r1, #0xc]
	str r0, [r8, #0x44]
	ldrsh r0, [r1, #0xe]
	str r0, [r8, #0x48]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020B40F4:
	ldr r0, [r8]
	orr r0, r0, #2
	str r0, [r8]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B4104: .word Unk_021C5CF0
_020B4108: .word 0x020F9818
_020B410C: .word 0x020F9819
_020B4110: .word 0x020F981A
_020B4114: .word 0x020F981B
	arm_func_end getMdlRot_

	arm_func_start getJntSRTAnmResult_
getJntSRTAnmResult_: ; 0x020B4118
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x30
	mov sb, r0
	add r0, sb, r1, lsl #1
	ldrh r0, [r0, #0x14]
	mov r7, r3
	mov r8, r2
	ldr r4, [sb, r0]
	add r1, sb, r0
	tst r4, #1
	movne r0, #7
	strne r0, [r7]
	bne _020B4490
	ldr r0, _020B44C4 ; =0x00000FFF
	add r5, r1, #4
	tst r8, r0
	beq _020B416C
	ldr r0, [sb, #8]
	tst r0, #1
	movne r6, #1
	bne _020B4170
_020B416C:
	mov r6, #0
_020B4170:
	mov r0, #0
	str r0, [r7, #0]
	tst r4, #6
	bne _020B4250
	tst r4, #8
	bne _020B41BC
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	beq _020B41A8
	mov r3, sb
	add r0, r7, #0x4c
	bl getTransDataEx_
	b _020B41B4
_020B41A8:
	mov r3, sb
	add r0, r7, #0x4c
	bl getTransData_
_020B41B4:
	add r5, r5, #8
	b _020B41C4
_020B41BC:
	ldr r0, [r5, #0], #4
	str r0, [r7, #0x4c]
_020B41C4:
	tst r4, #0x10
	bne _020B4200
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	beq _020B41EC
	mov r3, sb
	add r0, r7, #0x50
	bl getTransDataEx_
	b _020B41F8
_020B41EC:
	mov r3, sb
	add r0, r7, #0x50
	bl getTransData_
_020B41F8:
	add r5, r5, #8
	b _020B4208
_020B4200:
	ldr r0, [r5, #0], #4
	str r0, [r7, #0x50]
_020B4208:
	tst r4, #0x20
	bne _020B4244
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	beq _020B4230
	mov r3, sb
	add r0, r7, #0x54
	bl getTransDataEx_
	b _020B423C
_020B4230:
	mov r3, sb
	add r0, r7, #0x54
	bl getTransData_
_020B423C:
	add r5, r5, #8
	b _020B4270
_020B4244:
	ldr r0, [r5, #0], #4
	str r0, [r7, #0x54]
	b _020B4270
_020B4250:
	tst r4, #2
	beq _020B4268
	ldr r0, [r7, #0]
	orr r0, r0, #4
	str r0, [r7, #0]
	b _020B4270
_020B4268:
	mov r0, r7
	bl getMdlTrans_
_020B4270:
	tst r4, #0xc0
	bne _020B4334
	tst r4, #0x100
	bne _020B42B4
	cmp r6, #0
	mov r1, r8
	mov r2, r5
	beq _020B42A0
	mov r3, sb
	add r0, r7, #0x28
	bl getRotDataEx_
	b _020B42AC
_020B42A0:
	mov r3, sb
	add r0, r7, #0x28
	bl getRotData_
_020B42AC:
	add r5, r5, #8
	b _020B4354
_020B42B4:
	ldr r1, [sb, #0xc]
	ldr r2, [sb, #0x10]
	ldr r3, [r5, #0]
	add r0, r7, #0x28
	add r1, sb, r1
	add r2, sb, r2
	bl getRotDataByIdx_
	cmp r0, #0
	beq _020B432C
	ldr ip, [r7, #0x3c]
	ldr r0, [r7, #0x2c]
	ldr r3, [r7, #0x28]
	ldr fp, [r7, #0x38]
	ldr r1, [r7, #0x30]
	ldr r2, [r7, #0x34]
	mul sl, r0, ip
	mul lr, r1, fp
	sub sl, sl, lr
	mov sl, sl, asr #0xc
	mul lr, r1, r2
	mul r1, r3, ip
	sub r1, lr, r1
	mul fp, r3, fp
	mul r2, r0, r2
	sub r0, fp, r2
	str sl, [r7, #0x40]
	mov r1, r1, asr #0xc
	str r1, [r7, #0x44]
	mov r0, r0, asr #0xc
	str r0, [r7, #0x48]
_020B432C:
	add r5, r5, #4
	b _020B4354
_020B4334:
	tst r4, #0x40
	beq _020B434C
	ldr r0, [r7, #0]
	orr r0, r0, #2
	str r0, [r7, #0]
	b _020B4354
_020B434C:
	mov r0, r7
	bl getMdlRot_
_020B4354:
	tst r4, #0x600
	bne _020B4468
	tst r4, #0x800
	bne _020B43A4
	cmp r6, #0
	add r0, sp, #0x10
	mov r1, r8
	beq _020B4384
	mov r2, r5
	mov r3, sb
	bl getScaleDataEx_
	b _020B4390
_020B4384:
	mov r2, r5
	mov r3, sb
	bl getScaleData_
_020B4390:
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x14]
	str r1, [sp, #0x18]
	str r0, [sp, #0x24]
	b _020B43B4
_020B43A4:
	ldr r0, [r5, #0]
	str r0, [sp, #0x18]
	ldr r0, [r5, #4]
	str r0, [sp, #0x24]
_020B43B4:
	tst r4, #0x1000
	bne _020B43FC
	cmp r6, #0
	add r0, sp, #8
	mov r1, r8
	beq _020B43DC
	mov r3, sb
	add r2, r5, #8
	bl getScaleDataEx_
	b _020B43E8
_020B43DC:
	mov r3, sb
	add r2, r5, #8
	bl getScaleData_
_020B43E8:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0xc]
	str r1, [sp, #0x1c]
	str r0, [sp, #0x28]
	b _020B440C
_020B43FC:
	ldr r0, [r5, #8]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0xc]
	str r0, [sp, #0x28]
_020B440C:
	tst r4, #0x2000
	bne _020B4454
	cmp r6, #0
	add r0, sp, #0
	mov r1, r8
	beq _020B4434
	mov r3, sb
	add r2, r5, #0x10
	bl getScaleDataEx_
	b _020B4440
_020B4434:
	mov r3, sb
	add r2, r5, #0x10
	bl getScaleData_
_020B4440:
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #0x20]
	str r0, [sp, #0x2c]
	b _020B4490
_020B4454:
	ldr r0, [r5, #0x10]
	str r0, [sp, #0x20]
	ldr r0, [r5, #0x14]
	str r0, [sp, #0x2c]
	b _020B4490
_020B4468:
	tst r4, #0x200
	beq _020B4480
	ldr r0, [r7, #0]
	orr r0, r0, #1
	str r0, [r7, #0]
	b _020B4490
_020B4480:
	mov r0, r7
	bl getMdlScale_
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B4490:
	ldr r0, [r7, #0]
	add r1, sp, #0x18
	tst r0, #1
	ldr r0, _020B44C8 ; =0x021C5CF0
	movne r3, #4
	ldr r4, [r0, #0]
	moveq r3, #0
	ldr r2, [r4, #0]
	ldr r4, [r4, #0xe8]
	mov r0, r7
	blx r4
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B44C4: .word 0x00000FFF
_020B44C8: .word Unk_021C5CF0
	arm_func_end getJntSRTAnmResult_

	arm_func_start getTransData_
getTransData_: ; 0x020B44CC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r2, #4]
	ldr ip, [r2]
	mov r5, r1, asr #0xc
	tst ip, #-0x40000000
	add r1, r3, r4
	beq _020B4608
	ldr r2, _020B4628 ; =0x1FFF0000
	tst ip, #0x40000000
	and r2, ip, r2
	mov r3, r2, lsr #0x10
	beq _020B4524
	tst r5, #1
	beq _020B451C
	cmp r5, r3
	movhi r2, r3, lsr #1
	addhi r5, r2, #1
	bhi _020B4608
	mov r4, r5, lsr #1
	b _020B45C8
_020B451C:
	mov r5, r5, lsr #1
	b _020B4608
_020B4524:
	ands r2, r5, #3
	beq _020B45C0
	cmp r5, r3
	addhi r5, r2, r3, lsr #2
	bhi _020B4608
	tst r5, #1
	beq _020B45B8
	tst r5, #2
	movne r5, r5, lsr #2
	addne r2, r5, #1
	moveq r2, r5, lsr #2
	addeq r5, r2, #1
	tst ip, #0x20000000
	beq _020B4580
	mov r3, r2, lsl #1
	mov r2, r5, lsl #1
	ldrsh r3, [r1, r3]
	ldrsh r1, [r1, r2]
	add r2, r3, r3, lsl #1
	add r1, r2, r1
	mov r1, r1, asr #2
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B4580:
	ldr ip, [r1, r2, lsl #2]
	mov r2, #3
	mov r3, #0
	umull r4, lr, ip, r2
	mla lr, ip, r3, lr
	mov r3, ip, asr #0x1f
	mla lr, r3, r2, lr
	ldr r1, [r1, r5, lsl #2]
	adds r2, r4, r1
	adc r1, lr, r1, asr #31
	mov r2, r2, lsr #2
	orr r2, r2, r1, lsl #30
	str r2, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B45B8:
	mov r4, r5, lsr #2
	b _020B45C8
_020B45C0:
	mov r5, r5, lsr #2
	b _020B4608
_020B45C8:
	tst ip, #0x20000000
	beq _020B45EC
	mov r3, r4, lsl #1
	add r2, r1, r4, lsl #1
	ldrsh r3, [r1, r3]
	ldrsh r1, [r2, #2]
	add r1, r3, r1
	mov r1, r1, asr #1
	b _020B4600
_020B45EC:
	add r2, r1, r4, lsl #2
	ldr r2, [r2, #4]
	ldr r3, [r1, r4, lsl #2]
	mov r1, r2, asr #1
	add r1, r1, r3, asr #1
_020B4600:
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B4608:
	tst ip, #0x20000000
	ldreq r1, [r1, r5, lsl #2]
	streq r1, [r0]
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, r5, lsl #1
	ldrsh r1, [r1, r2]
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B4628: .word 0x1FFF0000
	arm_func_end getTransData_

	arm_func_start getTransDataEx_
getTransDataEx_: ; 0x020B462C
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r3, #4]
	ldr ip, [r2, #4]
	mov lr, r1, asr #0xc
	sub r4, r4, #1
	cmp r4, r1, asr #12
	add ip, r3, ip
	ldr r2, [r2, #0]
	bne _020B46C8
	tst r2, #-0x40000000
	beq _020B466C
	tst r2, #0x40000000
	andne r4, lr, #1
	addne lr, r4, lr, lsr #1
	andeq r4, lr, #3
	addeq lr, r4, lr, lsr #2
_020B466C:
	ldr r3, [r3, #8]
	tst r3, #2
	beq _020B46B0
	ldr r3, _020B477C ; =0x00000FFF
	tst r2, #0x20000000
	and r2, r1, r3
	ldreq r3, [ip, lr, lsl #2]
	ldreq r1, [ip]
	beq _020B469C
	mov r1, lr, lsl #1
	ldrsh r3, [ip, r1]
	ldrsh r1, [ip]
_020B469C:
	sub r1, r1, r3
	mul r1, r2, r1
	add r1, r3, r1, asr #12
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B46B0:
	tst r2, #0x20000000
	movne r1, lr, lsl #1
	ldrnesh r1, [ip, r1]
	ldreq r1, [ip, lr, lsl #2]
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020B46C8:
	tst r2, #-0x40000000
	beq _020B472C
	ldr r3, _020B4780 ; =0x1FFF0000
	tst r2, #0x40000000
	and r4, r2, r3
	mov r4, r4, lsr #0x10
	beq _020B4704
	cmp lr, r4
	movhs lr, r4, lsr #1
	bhs _020B472C
	mov lr, lr, lsr #1
	and r1, r1, r3, lsr #16
	mov r4, #2
	mov r5, #1
	b _020B473C
_020B4704:
	cmp lr, r4
	andhs r3, lr, #3
	addhs lr, r3, lr, lsr #2
	bhs _020B472C
	ldr r3, _020B4784 ; =0x00003FFF
	mov lr, lr, lsr #2
	and r1, r1, r3
	mov r4, #4
	mov r5, #2
	b _020B473C
_020B472C:
	ldr r3, _020B477C ; =0x00000FFF
	mov r4, #1
	and r1, r1, r3
	mov r5, #0
_020B473C:
	tst r2, #0x20000000
	addeq r2, ip, lr, lsl #2
	ldreq ip, [ip, lr, lsl #2]
	ldreq r2, [r2, #4]
	beq _020B4760
	add r2, ip, lr, lsl #1
	mov r3, lr, lsl #1
	ldrsh ip, [ip, r3]
	ldrsh r2, [r2, #2]
_020B4760:
	sub r2, r2, ip
	mul r3, ip, r4
	mul r2, r1, r2
	add r1, r3, r2, asr #12
	mov r1, r1, asr r5
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B477C: .word 0x00000FFF
_020B4780: .word 0x1FFF0000
_020B4784: .word 0x00003FFF
	arm_func_end getTransDataEx_

	arm_func_start getScaleData_
getScaleData_: ; 0x020B4788
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [r2, #4]
	ldr r5, [r2, #0]
	mov r6, r1, asr #0xc
	tst r5, #-0x40000000
	add r1, r3, r4
	beq _020B48D4
	ldr r2, _020B4978 ; =0x1FFF0000
	tst r5, #0x40000000
	and r2, r5, r2
	mov r3, r2, lsr #0x10
	beq _020B47E0
	tst r6, #1
	beq _020B47D8
	cmp r6, r3
	movhi r2, r3, lsr #1
	addhi r6, r2, #1
	bhi _020B48D4
	mov r4, r6, lsr #1
	b _020B490C
_020B47D8:
	mov r6, r6, lsr #1
	b _020B48D4
_020B47E0:
	ands r2, r6, #3
	beq _020B48D0
	cmp r6, r3
	addhi r6, r2, r3, lsr #2
	bhi _020B48D4
	tst r6, #1
	beq _020B48C8
	tst r6, #2
	movne r3, r6, lsr #2
	addne r2, r3, #1
	moveq r2, r6, lsr #2
	addeq r3, r2, #1
	tst r5, #0x20000000
	beq _020B485C
	mov r5, r2, lsl #2
	mov r4, r3, lsl #2
	ldrsh r6, [r1, r5]
	ldrsh r5, [r1, r4]
	add r2, r1, r2, lsl #2
	add r4, r6, r6, lsl #1
	add r4, r5, r4
	mov r4, r4, asr #2
	str r4, [r0, #0]
	add r1, r1, r3, lsl #2
	ldrsh r3, [r2, #2]
	ldrsh r2, [r1, #2]
	add r1, r3, r3, lsl #1
	add r1, r2, r1
	mov r1, r1, asr #2
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B485C:
	ldr r4, [r1, r2, lsl #3]
	mov ip, #3
	mov lr, #0
	umull r6, r5, r4, ip
	mla r5, r4, lr, r5
	mov r4, r4, asr #0x1f
	ldr r7, [r1, r3, lsl #3]
	add r2, r1, r2, lsl #3
	mla r5, r4, ip, r5
	adds r6, r6, r7
	adc r4, r5, r7, asr #31
	mov r5, r6, lsr #2
	orr r5, r5, r4, lsl #30
	str r5, [r0, #0]
	add r1, r1, r3, lsl #3
	ldr r2, [r2, #4]
	ldr r1, [r1, #4]
	umull r4, r3, r2, ip
	mla r3, r2, lr, r3
	mov r2, r2, asr #0x1f
	mla r3, r2, ip, r3
	adds r4, r4, r1
	adc r1, r3, r1, asr #31
	mov r2, r4, lsr #2
	orr r2, r2, r1, lsl #30
	str r2, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B48C8:
	mov r4, r6, lsr #2
	b _020B490C
_020B48D0:
	mov r6, r6, lsr #2
_020B48D4:
	tst r5, #0x20000000
	beq _020B48F4
	mov r2, r6, lsl #2
	ldrsh r2, [r1, r2]
	add r1, r1, r6, lsl #2
	str r2, [r0, #0]
	ldrsh r1, [r1, #2]
	b _020B4904
_020B48F4:
	ldr r2, [r1, r6, lsl #3]
	add r1, r1, r6, lsl #3
	str r2, [r0, #0]
	ldr r1, [r1, #4]
_020B4904:
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B490C:
	tst r5, #0x20000000
	beq _020B4948
	mov r2, r4, lsl #2
	add r3, r1, r4, lsl #2
	ldrsh r2, [r1, r2]
	ldrsh r1, [r3, #4]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r0, #0]
	ldrsh r2, [r3, #2]
	ldrsh r1, [r3, #6]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B4948:
	add r3, r1, r4, lsl #3
	ldr r2, [r1, r4, lsl #3]
	ldr r1, [r3, #8]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r0, #0]
	ldr r2, [r3, #4]
	ldr r1, [r3, #0xc]
	add r1, r2, r1
	mov r1, r1, asr #1
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B4978: .word 0x1FFF0000
	arm_func_end getScaleData_

	arm_func_start getScaleDataEx_
getScaleDataEx_: ; 0x020B497C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldrh r4, [r3, #4]
	ldr r5, [r2, #4]
	mov lr, r1, asr #0xc
	sub r4, r4, #1
	cmp r4, r1, asr #12
	add ip, r3, r5
	ldr r2, [r2, #0]
	bne _020B4A04
	tst r2, #-0x40000000
	beq _020B49BC
	tst r2, #0x40000000
	andne r4, lr, #1
	addne lr, r4, lr, lsr #1
	andeq r4, lr, #3
	addeq lr, r4, lr, lsr #2
_020B49BC:
	ldr r3, [r3, #8]
	tst r3, #2
	movne r3, #0
	bne _020B4A80
	tst r2, #0x20000000
	beq _020B49EC
	mov r1, lr, lsl #2
	ldrsh r2, [ip, r1]
	add r1, ip, lr, lsl #2
	str r2, [r0, #0]
	ldrsh r1, [r1, #2]
	b _020B49FC
_020B49EC:
	ldr r2, [ip, lr, lsl #3]
	add r1, ip, lr, lsl #3
	str r2, [r0, #0]
	ldr r1, [r1, #4]
_020B49FC:
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020B4A04:
	tst r2, #-0x40000000
	beq _020B4A7C
	ldr r4, _020B4B04 ; =0x1FFF0000
	tst r2, #0x40000000
	and r3, r2, r4
	mov r3, r3, lsr #0x10
	beq _020B4A48
	cmp lr, r3
	movhs lr, r3, lsr #1
	addhs r3, lr, #1
	bhs _020B4A80
	mov lr, lr, lsr #1
	add r3, lr, #1
	and r1, r1, r4, lsr #16
	mov r4, #2
	mov r5, #1
	b _020B4A90
_020B4A48:
	cmp lr, r3
	blo _020B4A60
	and r3, lr, #3
	add lr, r3, lr, lsr #2
	add r3, lr, #1
	b _020B4A80
_020B4A60:
	ldr r4, _020B4B08 ; =0x00003FFF
	mov lr, lr, lsr #2
	add r3, lr, #1
	and r1, r1, r4
	mov r4, #4
	mov r5, #2
	b _020B4A90
_020B4A7C:
	add r3, lr, #1
_020B4A80:
	ldr r5, _020B4B0C ; =0x00000FFF
	mov r4, #1
	and r1, r1, r5
	mov r5, #0
_020B4A90:
	tst r2, #0x20000000
	beq _020B4ABC
	mov r2, lr, lsl #2
	add r7, ip, lr, lsl #2
	mov r6, r3, lsl #2
	add r3, ip, r3, lsl #2
	ldrsh r2, [ip, r2]
	ldrsh lr, [r7, #2]
	ldrsh r7, [ip, r6]
	ldrsh r3, [r3, #2]
	b _020B4AD0
_020B4ABC:
	add r7, ip, lr, lsl #3
	ldmia r7, {r2, lr}
	add r6, ip, r3, lsl #3
	ldr r7, [ip, r3, lsl #3]
	ldr r3, [r6, #4]
_020B4AD0:
	sub ip, r7, r2
	sub r3, r3, lr
	mul r6, r2, r4
	mul r2, r1, ip
	add r2, r6, r2, asr #12
	mov r6, r2, asr r5
	mul r4, lr, r4
	mul r2, r1, r3
	add r1, r4, r2, asr #12
	mov r1, r1, asr r5
	str r6, [r0, #0]
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020B4B04: .word 0x1FFF0000
_020B4B08: .word 0x00003FFF
_020B4B0C: .word 0x00000FFF
	arm_func_end getScaleDataEx_

	arm_func_start getRotData_
getRotData_: ; 0x020B4B10
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x48
	ldr sb, [r2]
	mov r4, r3
	ldr r2, [r2, #4]
	mov r5, r0
	tst sb, #-0x40000000
	mov r3, r1, asr #0xc
	add r8, r4, r2
	ldr r7, [r4, #0xc]
	ldr r6, [r4, #0x10]
	beq _020B4E94
	ldr r0, _020B4F24 ; =0x1FFF0000
	tst sb, #0x40000000
	and r0, sb, r0
	mov r1, r0, lsr #0x10
	beq _020B4B7C
	tst r3, #1
	beq _020B4B74
	cmp r3, r1
	movhi r0, r1, lsr #1
	addhi r3, r0, #1
	bhi _020B4E94
	mov sb, r3, lsr #1
	b _020B4D3C
_020B4B74:
	mov r3, r3, lsr #1
	b _020B4E94
_020B4B7C:
	ands r0, r3, #3
	beq _020B4D34
	cmp r3, r1
	addhi r3, r0, r1, lsr #2
	bhi _020B4E94
	tst r3, #1
	beq _020B4D2C
	tst r3, #2
	movne sb, r3, lsr #2
	addne r0, sb, #1
	moveq r0, r3, lsr #2
	addeq sb, r0, #1
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	mov sl, #0
	bl getRotDataByIdx_
	mov r1, sb, lsl #1
	ldrh r3, [r8, r1]
	orr sl, sl, r0
	add r0, sp, #0x24
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	ldr r1, [r5, #0]
	ldr r2, [sp, #0x24]
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	str r1, [r5, #0]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x28]
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	str r1, [r5, #4]
	ldr r1, [r5, #8]
	ldr r2, [sp, #0x2c]
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	str r1, [r5, #8]
	ldr r1, [r5, #0xc]
	ldr r2, [sp, #0x30]
	add r1, r1, r1, lsl #1
	add r1, r2, r1
	str r1, [r5, #0xc]
	ldr r1, [r5, #0x10]
	orr sl, sl, r0
	ldr r2, [sp, #0x34]
	add r0, r1, r1, lsl #1
	add r0, r2, r0
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x14]
	ldr r1, [sp, #0x38]
	add r0, r0, r0, lsl #1
	add r2, r1, r0
	mov r0, r5
	mov r1, r5
	str r2, [r5, #0x14]
	bl VEC_Normalize
	add r0, r5, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp sl, #0
	bne _020B4CD0
	ldr r0, [r5, #0x18]
	ldr r1, [sp, #0x3c]
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	str r0, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	ldr r1, [sp, #0x40]
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	str r0, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #0x44]
	add r0, r0, r0, lsl #1
	add r2, r1, r0
	add r0, r5, #0x18
	mov r1, r0
	str r2, [r5, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4CD0:
	ldr sb, [r5, #0x14]
	ldr r6, [r5, #4]
	ldr r4, [r5, #0x10]
	ldr r2, [r5, #8]
	mul r1, r6, sb
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r5, #0xc]
	ldr r8, [r5]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, sb
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r6, r7
	sub r0, r1, r0
	str r3, [r5, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r5, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [r5, #0x20]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4D2C:
	mov sb, r3, lsr #2
	b _020B4D3C
_020B4D34:
	mov r3, r3, lsr #2
	b _020B4E94
_020B4D3C:
	mov r0, sb, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	add r1, r8, sb, lsl #1
	ldrh r3, [r1, #2]
	orr r8, r0, #0
	add r0, sp, #0
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	ldr r2, [r5, #0]
	ldr r1, [sp]
	orr r8, r8, r0
	add r0, r2, r1
	str r0, [r5, #0]
	ldr r2, [r5, #4]
	ldr r1, [sp, #4]
	mov r0, r5
	add r1, r2, r1
	str r1, [r5, #4]
	ldr r3, [r5, #8]
	ldr r2, [sp, #8]
	mov r1, r5
	add r2, r3, r2
	str r2, [r5, #8]
	ldr r3, [r5, #0xc]
	ldr r2, [sp, #0xc]
	add r2, r3, r2
	str r2, [r5, #0xc]
	ldr r3, [r5, #0x10]
	ldr r2, [sp, #0x10]
	add r2, r3, r2
	str r2, [r5, #0x10]
	ldr r3, [r5, #0x14]
	ldr r2, [sp, #0x14]
	add r2, r3, r2
	str r2, [r5, #0x14]
	bl VEC_Normalize
	add r0, r5, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp r8, #0
	bne _020B4E38
	ldr r2, [r5, #0x18]
	ldr r1, [sp, #0x18]
	add r0, r5, #0x18
	add r1, r2, r1
	str r1, [r5, #0x18]
	ldr r3, [r5, #0x1c]
	ldr r2, [sp, #0x1c]
	mov r1, r0
	add r2, r3, r2
	str r2, [r5, #0x1c]
	ldr r3, [r5, #0x20]
	ldr r2, [sp, #0x20]
	add r2, r3, r2
	str r2, [r5, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4E38:
	ldr sb, [r5, #0x14]
	ldr r6, [r5, #4]
	ldr r4, [r5, #0x10]
	ldr r2, [r5, #8]
	mul r1, r6, sb
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r5, #0xc]
	ldr r8, [r5]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r9
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r6, r7
	sub r0, r1, r0
	str r3, [r5, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r5, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [r5, #0x20]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4E94:
	mov r0, r3, lsl #1
	ldrh r3, [r8, r0]
	mov r0, r5
	add r1, r4, r7
	add r2, r4, r6
	bl getRotDataByIdx_
	cmp r0, #0
	beq _020B4F10
	ldr sb, [r5, #0x14]
	ldr r6, [r5, #4]
	ldr r4, [r5, #0x10]
	ldr r2, [r5, #8]
	mul r1, r6, sb
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r7, [r5, #0xc]
	ldr r8, [r5]
	mov r3, r0, asr #0xc
	mul r1, r2, r7
	mul r0, r8, r9
	sub r2, r1, r0
	mul r1, r8, r4
	mul r0, r6, r7
	sub r0, r1, r0
	str r3, [r5, #0x18]
	mov r1, r2, asr #0xc
	str r1, [r5, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [r5, #0x20]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B4F10:
	add r0, r5, #0x18
	mov r1, r0
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020B4F24: .word 0x1FFF0000
	arm_func_end getRotData_

	arm_func_start getRotDataEx_
getRotDataEx_: ; 0x020B4F28
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x48
	mov sb, r3
	ldrh r3, [sb, #4]
	ldr r4, [r2, #4]
	mov sl, r0
	sub r0, r3, #1
	cmp r0, r1, asr #12
	add r8, sb, r4
	mov r0, r1, asr #0xc
	ldr r4, [sb, #0xc]
	ldr fp, [sb, #0x10]
	ldr r3, [r2, #0]
	bne _020B501C
	tst r3, #-0x40000000
	beq _020B4F7C
	tst r3, #0x40000000
	andne r2, r0, #1
	addne r0, r2, r0, lsr #1
	andeq r2, r0, #3
	addeq r0, r2, r0, lsr #2
_020B4F7C:
	ldr r2, [sb, #8]
	tst r2, #2
	movne r5, #0
	bne _020B5090
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	mov r0, sl
	add r1, sb, r4
	add r2, sb, fp
	bl getRotDataByIdx_
	cmp r0, #0
	beq _020B5008
	ldr r8, [sl, #0x14]
	ldr r5, [sl, #4]
	ldr r4, [sl, #0x10]
	ldr r2, [sl, #8]
	mul r1, r5, r8
	mul r0, r2, r4
	sub r0, r1, r0
	ldr r6, [sl, #0xc]
	ldr r7, [sl]
	mov r3, r0, asr #0xc
	mul r1, r2, r6
	mul r0, r7, r8
	sub r2, r1, r0
	mul r1, r7, r4
	mul r0, r5, r6
	sub r0, r1, r0
	str r3, [sl, #0x18]
	mov r1, r2, asr #0xc
	str r1, [sl, #0x1c]
	mov r0, r0, asr #0xc
	add sp, sp, #0x48
	str r0, [sl, #0x20]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B5008:
	add r0, sl, #0x18
	mov r1, r0
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B501C:
	tst r3, #-0x40000000
	beq _020B508C
	ldr r2, _020B5260 ; =0x1FFF0000
	tst r3, #0x40000000
	and r3, r3, r2
	mov r3, r3, lsr #0x10
	beq _020B505C
	cmp r0, r3
	movhs r0, r3, lsr #1
	addhs r5, r0, #1
	bhs _020B5090
	mov r0, r0, lsr #1
	add r5, r0, #1
	and r6, r1, r2, lsr #16
	mov r7, #2
	b _020B509C
_020B505C:
	cmp r0, r3
	blo _020B5074
	and r2, r0, #3
	add r0, r2, r0, lsr #2
	add r5, r0, #1
	b _020B5090
_020B5074:
	ldr r2, _020B5264 ; =0x00003FFF
	mov r0, r0, lsr #2
	add r5, r0, #1
	and r6, r1, r2
	mov r7, #4
	b _020B509C
_020B508C:
	add r5, r0, #1
_020B5090:
	ldr r2, _020B5268 ; =0x00000FFF
	mov r7, #1
	and r6, r1, r2
_020B509C:
	mov r0, r0, lsl #1
	ldrh r3, [r8, r0]
	add r0, sp, #0x24
	add r1, sb, r4
	add r2, sb, fp
	bl getRotDataByIdx_
	mov r1, r5, lsl #1
	ldrh r3, [r8, r1]
	orr r5, r0, #0
	add r0, sp, #0
	add r1, sb, r4
	add r2, sb, fp
	bl getRotDataByIdx_
	ldr r3, [sp, #0x24]
	ldr r1, [sp]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [sl]
	ldr r3, [sp, #0x28]
	ldr r1, [sp, #4]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [sl, #4]
	ldr r3, [sp, #0x2c]
	ldr r1, [sp, #8]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [sl, #8]
	ldr r3, [sp, #0x30]
	ldr r1, [sp, #0xc]
	mul r2, r3, r7
	sub r1, r1, r3
	mul r1, r6, r1
	add r1, r2, r1, asr #12
	str r1, [sl, #0xc]
	ldr r2, [sp, #0x34]
	ldr r1, [sp, #0x10]
	orr r5, r5, r0
	sub r0, r1, r2
	mul r1, r2, r7
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x10]
	ldr r2, [sp, #0x38]
	ldr r0, [sp, #0x14]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r2, r1, r0, asr #12
	mov r0, sl
	mov r1, sl
	str r2, [sl, #0x14]
	bl VEC_Normalize
	add r0, sl, #0xc
	mov r1, r0
	bl VEC_Normalize
	cmp r5, #0
	bne _020B5204
	ldr r2, [sp, #0x3c]
	ldr r0, [sp, #0x18]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x18]
	ldr r2, [sp, #0x40]
	ldr r0, [sp, #0x1c]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r0, r1, r0, asr #12
	str r0, [sl, #0x1c]
	ldr r2, [sp, #0x44]
	ldr r0, [sp, #0x20]
	mul r1, r2, r7
	sub r0, r0, r2
	mul r0, r6, r0
	add r2, r1, r0, asr #12
	add r0, sl, #0x18
	mov r1, r0
	str r2, [sl, #0x20]
	bl VEC_Normalize
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B5204:
	ldr r8, [sl, #0x14]
	ldr r5, [sl, #4]
	ldr r7, [sl]
	ldr r4, [sl, #0x10]
	ldr r2, [sl, #8]
	ldr r6, [sl, #0xc]
	mul r1, r5, r8
	mul r0, r2, r4
	sub r0, r1, r0
	mov r3, r0, asr #0xc
	mul r1, r2, r6
	mul r0, r7, r8
	sub r2, r1, r0
	mul r1, r7, r4
	mul r0, r5, r6
	sub r0, r1, r0
	str r3, [sl, #0x18]
	mov r1, r2, asr #0xc
	str r1, [sl, #0x1c]
	mov r0, r0, asr #0xc
	str r0, [sl, #0x20]
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B5260: .word 0x1FFF0000
_020B5264: .word 0x00003FFF
_020B5268: .word 0x00000FFF
	arm_func_end getRotDataEx_

	arm_func_start getRotDataByIdx_
getRotDataByIdx_: ; 0x020B526C
	stmfd sp!, {r3, r4, r5, lr}
	tst r3, #0x8000
	beq _020B5324
	mov r4, #0
	str r4, [r0, #0x20]
	str r4, [r0, #0x1c]
	str r4, [r0, #0x18]
	str r4, [r0, #0x14]
	str r4, [r0, #0x10]
	ldr r2, _020B53C4 ; =0x00007FFF
	str r4, [r0, #0xc]
	str r4, [r0, #8]
	and r2, r3, r2
	add r3, r2, r2, lsl #1
	str r4, [r0, #4]
	add r2, r1, r3, lsl #1
	str r4, [r0, #0]
	mov r3, r3, lsl #1
	ldrsh r1, [r1, r3]
	ldrsh ip, [r2, #2]
	ldrsh r3, [r2, #4]
	tst r1, #0x10
	subne r5, r4, #0x1000
	ldr r4, _020B53C8 ; =0x020F9818
	and r1, r1, #0xf
	ldr lr, _020B53CC ; =0x020F9819
	moveq r5, #0x1000
	ldrb r4, [r4, r1, lsl #2]
	str r5, [r0, r1, lsl #2]
	ldrb lr, [lr, r1, lsl #2]
	str ip, [r0, r4, lsl #2]
	str r3, [r0, lr, lsl #2]
	ldrsh lr, [r2]
	tst lr, #0x20
	ldr lr, _020B53D0 ; =0x020F981A
	rsbne r3, r3, #0
	ldrb lr, [lr, r1, lsl #2]
	str r3, [r0, lr, lsl #2]
	ldrsh r2, [r2]
	tst r2, #0x40
	ldr r2, _020B53D4 ; =0x020F981B
	rsbne ip, ip, #0
	ldrb r1, [r2, r1, lsl #2]
	str ip, [r0, r1, lsl #2]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020B5324:
	ldr r1, _020B53C4 ; =0x00007FFF
	and r1, r3, r1
	add r3, r1, r1, lsl #2
	add r1, r2, r3, lsl #1
	ldrsh lr, [r1, #8]
	mov ip, r3, lsl #1
	mov r3, lr, asr #3
	str r3, [r0, #0x10]
	ldrsh ip, [r2, ip]
	and r2, lr, #7
	mov r2, r2, lsl #0x10
	mov r3, ip, asr #3
	str r3, [r0, #0]
	ldrsh r3, [r1, #2]
	and ip, ip, #7
	orr lr, ip, r2, asr #13
	mov r2, r3, asr #3
	str r2, [r0, #4]
	ldrsh ip, [r1, #4]
	mov r2, lr, lsl #0x10
	and lr, r3, #7
	mov r3, ip, asr #3
	str r3, [r0, #8]
	ldrsh r3, [r1, #6]
	orr r1, lr, r2, asr #13
	mov r1, r1, lsl #0x10
	and r2, ip, #7
	orr r1, r2, r1, asr #13
	mov r1, r1, lsl #0x10
	and r2, r3, #7
	orr r1, r2, r1, asr #13
	mov r1, r1, lsl #0x10
	mov r1, r1, asr #0x10
	mov r2, r3, asr #3
	mov r1, r1, lsl #0x13
	str r2, [r0, #0xc]
	mov r1, r1, asr #0x13
	str r1, [r0, #0x14]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B53C4: .word 0x00007FFF
_020B53C8: .word 0x020F9818
_020B53CC: .word 0x020F9819
_020B53D0: .word 0x020F981A
_020B53D4: .word 0x020F981B
	arm_func_end getRotDataByIdx_

	.rodata


	.global Unk_020F9818
Unk_020F9818: ; 0x020F9818
	.incbin "incbin/arm9_rodata.bin", 0x14BD8, 0x24

