	.include "macros/function.inc"
	.include "include/unk_020AFCB0.inc"

	.extern Unk_021C5CF0
	.extern Unk_021C5CF4
	.extern Unk_02100F3C
	.extern Unk_02100F48


	.text


	arm_func_start G3dDrawInternal_Loop_
G3dDrawInternal_Loop_: ; 0x020AFCB0
	stmfd sp!, {r3, r4, r5, lr}
	ldr r5, _020AFCF4 ; =0x02101064
	mov r4, r0
_020AFCBC:
	ldr r1, [r4, #8]
	mov r0, r4
	bic r1, r1, #0x40
	str r1, [r4, #8]
	ldr r1, [r4, #0]
	ldrb r3, [r1]
	and r1, r3, #0x1f
	ldr r2, [r5, r1, lsl #2]
	and r1, r3, #0xe0
	blx r2
	ldr r0, [r4, #8]
	tst r0, #0x20
	beq _020AFCBC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AFCF4: .word 0x02101064
	arm_func_end G3dDrawInternal_Loop_

	arm_func_start G3dDrawInternal_
G3dDrawInternal_: ; 0x020AFCF8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0
	mov r2, #0x188
	bl MIi_CpuClearFast
	mov r0, #1
	str r0, [r5, #0xc4]
	str r0, [r5, #8]
	ldr r0, [r4, #0x30]
	ldr r2, _020AFE88 ; =0x02100F48
	cmp r0, #0
	ldreq r1, [r4, #4]
	ldreq r0, [r1, #4]
	addeq r0, r1, r0
	str r0, [r5, #0]
	str r4, [r5, #4]
	ldr r0, [r4, #4]
	cmp r0, #0
	addne r0, r0, #0x40
	moveq r0, #0
	str r0, [r5, #0xd4]
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r1, #8]
	cmpne r0, #0
	addne r0, r1, r0
	moveq r0, #0
	str r0, [r5, #0xd8]
	ldr r1, [r4, #4]
	cmp r1, #0
	ldrne r0, [r1, #0xc]
	cmpne r0, #0
	addne r0, r1, r0
	moveq r0, #0
	str r0, [r5, #0xdc]
	ldr r0, [r4, #4]
	ldr r1, _020AFE8C ; =0x02100F3C
	ldrb r3, [r0, #0x15]
	ldr r0, _020AFE90 ; =0x02100F54
	ldr r2, [r2, r3, lsl #2]
	str r2, [r5, #0xe8]
	ldr r2, [r4, #4]
	ldrb r2, [r2, #0x15]
	ldr r1, [r1, r2, lsl #2]
	str r1, [r5, #0xec]
	ldr r1, [r4, #4]
	ldrb r1, [r1, #0x16]
	ldr r0, [r0, r1, lsl #2]
	str r0, [r5, #0xf0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x1c]
	str r0, [r5, #0xe0]
	ldr r0, [r4, #4]
	ldr r0, [r0, #0x20]
	str r0, [r5, #0xe4]
	ldr r1, [r4, #0x20]
	cmp r1, #0
	beq _020AFE0C
	ldrb r0, [r4, #0x24]
	cmp r0, #0x20
	bhs _020AFE0C
	add r0, r5, r0, lsl #2
	str r1, [r0, #0xc]
	ldrb r0, [r4, #0x24]
	ldrb r1, [r4, #0x25]
	add r0, r5, r0
	strb r1, [r0, #0x8c]
_020AFE0C:
	ldr r0, [r4, #0]
	tst r0, #1
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x80
	strne r0, [r5, #8]
	ldr r0, [r4, #0]
	tst r0, #2
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x100
	strne r0, [r5, #8]
	ldr r0, [r4, #0]
	tst r0, #4
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x200
	strne r0, [r5, #8]
	ldr r0, [r4, #0]
	tst r0, #8
	ldrne r0, [r5, #8]
	orrne r0, r0, #0x400
	strne r0, [r5, #8]
	ldr r1, [r4, #0x28]
	cmp r1, #0
	beq _020AFE70
	mov r0, r5
	blx r1
_020AFE70:
	mov r0, r5
	bl G3dDrawInternal_Loop_
	ldr r0, [r4, #0]
	bic r0, r0, #1
	str r0, [r4, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AFE88: .word Unk_02100F48
_020AFE8C: .word Unk_02100F3C
_020AFE90: .word 0x02100F54
	arm_func_end G3dDrawInternal_

	arm_func_start updateHintVec__dup2
updateHintVec__dup2: ; 0x020AFE94
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r3, #1
	mov r4, #0
_020AFEA8:
	ldrb r2, [r1, #0x19]
	mov r5, r4
	cmp r2, #0
	ble _020AFEEC
_020AFEB8:
	add r2, r1, r5, lsl #1
	ldrh r2, [r2, #0x1a]
	tst r2, #0x100
	beq _020AFEDC
	mov lr, r5, asr #5
	ldr ip, [r0, lr, lsl #2]
	and r2, r5, #0x1f
	orr r2, ip, r3, lsl r2
	str r2, [r0, lr, lsl #2]
_020AFEDC:
	ldrb r2, [r1, #0x19]
	add r5, r5, #1
	cmp r5, r2
	blt _020AFEB8
_020AFEEC:
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _020AFEA8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end updateHintVec__dup2

	arm_func_start NNS_G3dDraw
NNS_G3dDraw: ; 0x020AFEFC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x188
	mov r4, r0
	ldr r0, [r4, #0]
	and r0, r0, #0x10
	cmp r0, #0x10
	bne _020AFF90
	add r1, r4, #0x3c
	mov r0, #0
	mov r2, #8
	bl MIi_CpuClear32
	add r1, r4, #0x44
	mov r0, #0
	mov r2, #8
	bl MIi_CpuClear32
	add r1, r4, #0x4c
	mov r0, #0
	mov r2, #8
	bl MIi_CpuClear32
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _020AFF5C
	add r0, r4, #0x3c
	bl updateHintVec__dup2
_020AFF5C:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _020AFF70
	add r0, r4, #0x44
	bl updateHintVec__dup2
_020AFF70:
	ldr r1, [r4, #0x18]
	cmp r1, #0
	beq _020AFF84
	add r0, r4, #0x4c
	bl updateHintVec__dup2
_020AFF84:
	ldr r0, [r4, #0]
	bic r0, r0, #0x10
	str r0, [r4, #0]
_020AFF90:
	ldr r2, _020AFFD4 ; =0x021C5CF0
	ldr r0, [r2, #0]
	cmp r0, #0
	beq _020AFFB0
	mov r1, r4
	bl G3dDrawInternal_
	add sp, sp, #0x188
	ldmia sp!, {r4, pc}
_020AFFB0:
	add r0, sp, #0
	mov r1, r4
	str r0, [r2, #0]
	bl G3dDrawInternal_
	ldr r0, _020AFFD4 ; =0x021C5CF0
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x188
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020AFFD4: .word Unk_021C5CF0
	arm_func_end NNS_G3dDraw

	arm_func_start NNSi_G3dFuncSbc_NOP
NNSi_G3dFuncSbc_NOP: ; 0x020AFFD8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _020AFFF0
	blx r1
_020AFFF0:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	arm_func_end NNSi_G3dFuncSbc_NOP

	arm_func_start NNSi_G3dFuncSbc_RET
NNSi_G3dFuncSbc_RET: ; 0x020B0000
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	beq _020B0018
	blx r1
_020B0018:
	ldr r0, [r4, #8]
	orr r0, r0, #0x20
	str r0, [r4, #8]
	ldmia sp!, {r4, pc}
	arm_func_end NNSi_G3dFuncSbc_RET

	arm_func_start NNSi_G3dFuncSbc_NODE
NNSi_G3dFuncSbc_NODE: ; 0x020B0028
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, [r6, #8]
	tst r0, #0x200
	bne _020B0194
	ldr r1, [r6, #0]
	add r0, r6, #0x184
	ldrb r4, [r1, #1]
	strb r4, [r6, #0xac]
	ldr r1, [r6, #8]
	orr r1, r1, #4
	str r1, [r6, #8]
	str r0, [r6, #0xb8]
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldrneb r5, [r6, #0x8e]
	moveq r5, #0
	cmp r5, #1
	bne _020B00A8
	ldr r1, [r6, #8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #8]
	ldr r1, [r6, #0x14]
	blx r1
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldrneb r5, [r6, #0x8e]
	ldr r0, [r6, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _020B00AC
_020B00A8:
	mov r0, #0
_020B00AC:
	cmp r0, #0
	bne _020B010C
	ldr ip, [r6, #4]
	ldr r1, [ip, #0x18]
	cmp r1, #0
	beq _020B00F8
	mov r0, r4, lsr #5
	add r0, ip, r0, lsl #2
	ldr r0, [r0, #0x4c]
	and r2, r4, #0x1f
	mov r3, #1
	tst r0, r3, lsl r2
	beq _020B00F8
	ldr r0, [r6, #0xb8]
	ldr r3, [ip, #0x1c]
	mov r2, r4
	blx r3
	cmp r0, #0
	bne _020B010C
_020B00F8:
	ldr r1, [r6, #0]
	ldr r0, [r6, #0xb8]
	ldrb r1, [r1, #2]
	and r1, r1, #1
	str r1, [r0, #0]
_020B010C:
	cmp r5, #2
	bne _020B0148
	ldr r1, [r6, #8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #8]
	ldr r1, [r6, #0x14]
	blx r1
	ldr r0, [r6, #0x14]
	cmp r0, #0
	ldrneb r5, [r6, #0x8e]
	ldr r0, [r6, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _020B014C
_020B0148:
	mov r0, #0
_020B014C:
	cmp r0, #0
	bne _020B0174
	ldr r0, [r6, #0xb8]
	ldr r0, [r0, #0]
	cmp r0, #0
	ldr r0, [r6, #8]
	orrne r0, r0, #1
	strne r0, [r6, #8]
	biceq r0, r0, #1
	streq r0, [r6, #8]
_020B0174:
	cmp r5, #3
	bne _020B0194
	ldr r1, [r6, #8]
	mov r0, r6
	bic r1, r1, #0x40
	str r1, [r6, #8]
	ldr r1, [r6, #0x14]
	blx r1
_020B0194:
	ldr r0, [r6, #0]
	add r0, r0, #3
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_G3dFuncSbc_NODE

	arm_func_start NNSi_G3dFuncSbc_MTX
NNSi_G3dFuncSbc_MTX: ; 0x020B01A4
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x200
	bne _020B0260
	tst r0, #1
	beq _020B0260
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldrneb r5, [r4, #0x8f]
	moveq r5, #0
	cmp r5, #1
	bne _020B020C
	ldr r1, [r4, #8]
	mov r0, r4
	bic r1, r1, #0x40
	str r1, [r4, #8]
	ldr r1, [r4, #0x18]
	blx r1
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldrneb r5, [r4, #0x8f]
	ldr r0, [r4, #8]
	moveq r5, #0
	and r0, r0, #0x40
	b _020B0210
_020B020C:
	mov r0, #0
_020B0210:
	cmp r0, #0
	bne _020B0240
	ldr r0, [r4, #0]
	ldrb r0, [r0, #1]
	str r0, [sp]
	ldr r0, [r4, #8]
	tst r0, #0x100
	bne _020B0240
	add r1, sp, #0
	mov r0, #0x14
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_020B0240:
	cmp r5, #3
	bne _020B0260
	ldr r1, [r4, #8]
	mov r0, r4
	bic r1, r1, #0x40
	str r1, [r4, #8]
	ldr r1, [r4, #0x18]
	blx r1
_020B0260:
	ldr r0, [r4, #0]
	add r0, r0, #2
	str r0, [r4, #0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_G3dFuncSbc_MTX

	arm_func_start NNSi_G3dFuncSbc_MAT_InternalDefault
NNSi_G3dFuncSbc_MAT_InternalDefault: ; 0x020B0270
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	mov r7, r0
	mov r5, r3
	strb r5, [r7, #0xad]
	ldr r3, [r7, #8]
	add r0, r7, #0xf4
	orr r3, r3, #8
	str r3, [r7, #8]
	str r0, [r7, #0xb0]
	ldr r0, [r7, #0x1c]
	mov r8, r1
	cmp r0, #0
	ldrneb r4, [r7, #0x90]
	mov r6, r2
	moveq r4, #0
	cmp r4, #1
	bne _020B02EC
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x1c]
	blx r1
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	ldrneb r4, [r7, #0x90]
	ldr r0, [r7, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _020B02F0
_020B02EC:
	mov r0, #0
_020B02F0:
	cmp r0, #0
	bne _020B05D0
	ldr r0, [r7, #4]
	ldr r0, [r0, #0x38]
	cmp r0, #0
	beq _020B031C
	ldr r1, [r7, #8]
	tst r1, #0x80
	moveq r1, #0x38
	mlaeq r8, r5, r1, r0
	beq _020B05CC
_020B031C:
	cmp r8, #0x20
	cmpne r8, #0x40
	bne _020B0364
	mov r1, r5, lsr #5
	add r1, r7, r1, lsl #2
	ldr r1, [r1, #0xbc]
	and r2, r5, #0x1f
	mov r3, #1
	tst r1, r3, lsl r2
	beq _020B0364
	cmp r0, #0
	movne r1, #0x38
	mlane r8, r5, r1, r0
	bne _020B05CC
	ldr r1, _020B06E4 ; =0x021C5CF4
	mov r0, #0x38
	mla r8, r5, r0, r1
	b _020B05CC
_020B0364:
	cmp r0, #0
	beq _020B039C
	add r8, r7, #0xbc
	mov r3, r5, lsr #5
	ldr r2, [r8, r3, lsl #2]
	and r0, r5, #0x1f
	mov r1, #1
	orr r0, r2, r1, lsl r0
	str r0, [r8, r3, lsl #2]
	ldr r1, [r7, #4]
	mov r0, #0x38
	ldr r1, [r1, #0x38]
	mla r8, r5, r0, r1
	b _020B03D0
_020B039C:
	cmp r8, #0x40
	addne r8, r7, #0xf4
	bne _020B03D0
	add lr, r7, #0xbc
	mov ip, r5, lsr #5
	ldr r1, _020B06E4 ; =0x021C5CF4
	ldr r8, [lr, ip, lsl #2]
	mov r0, #0x38
	and r2, r5, #0x1f
	mov r3, #1
	orr r2, r8, r3, lsl r2
	mla r8, r5, r0, r1
	str r2, [lr, ip, lsl #2]
_020B03D0:
	mov r0, #0
	str r0, [r8]
	ldr r3, [r7, #0xd8]
	cmp r3, #0
	beq _020B0424
	adds r2, r3, #4
	beq _020B0410
	ldrb r0, [r3, #5]
	cmp r5, r0
	bhs _020B0410
	ldrh r1, [r3, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _020B0414
_020B0410:
	mov r1, #0
_020B0414:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, r3, r0
	bne _020B0428
_020B0424:
	mov r0, #0
_020B0428:
	ldrh r0, [r0, #0x1e]
	ldr r1, _020B06E8 ; =0x021C5A8C
	tst r0, #0x20
	ldrne r0, [r8]
	orrne r0, r0, #0x20
	strne r0, [r8]
	ldrh r2, [r6, #0x1e]
	ldr r0, _020B06EC ; =0x020F97D4
	ldr ip, [r1, #0x94]
	mov r2, r2, asr #6
	and r2, r2, #7
	ldr lr, [r0, r2, lsl #2]
	ldr r2, [r6, #4]
	mvn r3, lr
	and r3, ip, r3
	and r2, r2, lr
	orr r2, r3, r2
	str r2, [r8, #4]
	ldrh ip, [r6, #0x1e]
	ldr r3, [r1, #0x98]
	ldr r2, [r6, #8]
	mov ip, ip, asr #9
	and ip, ip, #7
	ldr ip, [r0, ip, lsl #2]
	mvn r0, ip
	and r3, r3, r0
	and r0, r2, ip
	orr r0, r3, r0
	str r0, [r8, #8]
	ldr r3, [r6, #0x10]
	ldr r0, [r6, #0xc]
	ldr r2, [r1, #0x9c]
	mvn r1, r3
	and r1, r2, r1
	and r0, r0, r3
	orr r0, r1, r0
	str r0, [r8, #0xc]
	ldr r0, [r6, #0x14]
	str r0, [r8, #0x10]
	ldrh r0, [r6, #0x1c]
	str r0, [r8, #0x14]
	ldrh r0, [r6, #0x1e]
	tst r0, #1
	beq _020B0564
	tst r0, #2
	ldrne r1, [r8]
	add r0, r6, #0x2c
	orrne r1, r1, #1
	strne r1, [r8]
	bne _020B0504
	ldr r1, [r0, #0]
	str r1, [r8, #0x18]
	ldr r1, [r0, #4]
	add r0, r0, #8
	str r1, [r8, #0x1c]
_020B0504:
	ldrh r1, [r6, #0x1e]
	tst r1, #4
	ldrne r1, [r8]
	orrne r1, r1, #2
	strne r1, [r8]
	bne _020B0530
	ldrsh r1, [r0]
	strh r1, [r8, #0x20]
	ldrsh r1, [r0, #2]
	add r0, r0, #4
	strh r1, [r8, #0x22]
_020B0530:
	ldrh r1, [r6, #0x1e]
	tst r1, #8
	ldrne r0, [r8]
	orrne r0, r0, #4
	strne r0, [r8]
	bne _020B0558
	ldr r1, [r0, #0]
	str r1, [r8, #0x24]
	ldr r0, [r0, #4]
	str r0, [r8, #0x28]
_020B0558:
	ldr r0, [r8]
	orr r0, r0, #8
	str r0, [r8]
_020B0564:
	ldr ip, [r7, #4]
	ldr r1, [ip, #8]
	cmp r1, #0
	beq _020B05A0
	mov r0, r5, lsr #5
	add r0, ip, r0, lsl #2
	ldr r0, [r0, #0x3c]
	and r2, r5, #0x1f
	mov r3, #1
	tst r0, r3, lsl r2
	beq _020B05A0
	ldr r3, [ip, #0xc]
	mov r0, r8
	mov r2, r5
	blx r3
_020B05A0:
	ldr r0, [r8]
	tst r0, #0x18
	beq _020B05CC
	ldrh r0, [r6, #0x20]
	strh r0, [r8, #0x2c]
	ldrh r0, [r6, #0x22]
	strh r0, [r8, #0x2e]
	ldr r0, [r6, #0x24]
	str r0, [r8, #0x30]
	ldr r0, [r6, #0x28]
	str r0, [r8, #0x34]
_020B05CC:
	str r8, [r7, #0xb0]
_020B05D0:
	cmp r4, #2
	bne _020B060C
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x1c]
	blx r1
	ldr r0, [r7, #0x1c]
	cmp r0, #0
	ldrneb r4, [r7, #0x90]
	ldr r0, [r7, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _020B0610
_020B060C:
	mov r0, #0
_020B0610:
	cmp r0, #0
	bne _020B06B8
	ldr r5, [r7, #0xb0]
	ldr r1, [r5, #0xc]
	tst r1, #0x1f0000
	beq _020B06AC
	ldr r0, [r5, #0]
	tst r0, #0x20
	bicne r0, r1, #0x1f0000
	strne r0, [r5, #0xc]
	ldr r0, [r7, #8]
	bic r0, r0, #2
	str r0, [r7, #8]
	tst r0, #0x100
	bne _020B06B8
	ldr r0, _020B06F0 ; =0x00293130
	ldr r3, _020B06F4 ; =0x00002B2A
	str r0, [sp]
	ldr r2, [r5, #4]
	add r1, sp, #4
	str r2, [sp, #4]
	ldr r6, [r5, #8]
	mov r2, #6
	str r6, [sp, #8]
	ldr r6, [r5, #0xc]
	str r6, [sp, #0xc]
	str r3, [sp, #0x10]
	ldr r3, [r5, #0x10]
	str r3, [sp, #0x14]
	ldr r3, [r5, #0x14]
	str r3, [sp, #0x18]
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r5, #0]
	tst r0, #0x18
	beq _020B06B8
	ldr r1, [r7, #0xf0]
	mov r0, r5
	blx r1
	b _020B06B8
_020B06AC:
	ldr r0, [r7, #8]
	orr r0, r0, #2
	str r0, [r7, #8]
_020B06B8:
	cmp r4, #3
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x1c]
	blx r1
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020B06E4: .word Unk_021C5CF4
_020B06E8: .word 0x021C5A8C
_020B06EC: .word 0x020F97D4
_020B06F0: .word 0x00293130
_020B06F4: .word 0x00002B2A
	arm_func_end NNSi_G3dFuncSbc_MAT_InternalDefault

	arm_func_start NNSi_G3dFuncSbc_MAT
NNSi_G3dFuncSbc_MAT: ; 0x020B06F8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #8]
	tst r2, #0x200
	bne _020B0794
	ldr r0, [r4, #0]
	tst r2, #1
	ldrb r3, [r0, #1]
	bne _020B0730
	tst r2, #8
	beq _020B0730
	ldrb r0, [r4, #0xad]
	cmp r3, r0
	beq _020B0794
_020B0730:
	ldr lr, [r4, #0xd8]
	cmp lr, #0
	beq _020B077C
	adds ip, lr, #4
	beq _020B0768
	ldrb r0, [lr, #5]
	cmp r3, r0
	bhs _020B0768
	ldrh r2, [lr, #0xa]
	ldrh r0, [ip, r2]
	add r2, ip, r2
	add r2, r2, #4
	mla r2, r0, r3, r2
	b _020B076C
_020B0768:
	mov r2, #0
_020B076C:
	cmp r2, #0
	ldrne r0, [r2]
	addne r2, lr, r0
	bne _020B0780
_020B077C:
	mov r2, #0
_020B0780:
	ldrh lr, [r2]
	ldr ip, _020B07A4 ; =0x02100F74
	mov r0, r4
	ldr ip, [ip, lr, lsl #2]
	blx ip
_020B0794:
	ldr r0, [r4, #0]
	add r0, r0, #2
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B07A4: .word 0x02100F74
	arm_func_end NNSi_G3dFuncSbc_MAT

	arm_func_start NNSi_G3dFuncSbc_SHP_InternalDefault
NNSi_G3dFuncSbc_SHP_InternalDefault: ; 0x020B07A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x20]
	mov r4, r2
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	moveq r6, #0
	cmp r6, #1
	bne _020B0800
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	blx r1
	ldr r0, [r5, #0x20]
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	ldr r0, [r5, #8]
	moveq r6, #0
	and r0, r0, #0x40
	b _020B0804
_020B0800:
	mov r0, #0
_020B0804:
	cmp r0, #0
	bne _020B0828
	ldr r0, [r5, #8]
	tst r0, #0x100
	bne _020B0828
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r0, r4, r0
	bl NNS_G3dGeSendDL
_020B0828:
	cmp r6, #2
	bne _020B0858
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	blx r1
	ldr r0, [r5, #0x20]
	cmp r0, #0
	ldrneb r6, [r5, #0x91]
	moveq r6, #0
_020B0858:
	cmp r6, #3
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x20]
	blx r1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_G3dFuncSbc_SHP_InternalDefault

	arm_func_start NNSi_G3dFuncSbc_SHP
NNSi_G3dFuncSbc_SHP: ; 0x020B087C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x200
	bne _020B0908
	tst r0, #1
	beq _020B0908
	tst r0, #2
	bne _020B0908
	ldr r0, [r4, #0]
	ldr ip, [r4, #0xdc]
	ldrb r3, [r0, #1]
	cmp ip, #0
	beq _020B08F0
	beq _020B08DC
	ldrb r0, [ip, #1]
	cmp r3, r0
	bhs _020B08DC
	ldrh r2, [ip, #6]
	ldrh r0, [ip, r2]
	add r2, ip, r2
	add r2, r2, #4
	mla r2, r0, r3, r2
	b _020B08E0
_020B08DC:
	mov r2, #0
_020B08E0:
	cmp r2, #0
	ldrne r0, [r2]
	addne r2, ip, r0
	bne _020B08F4
_020B08F0:
	mov r2, #0
_020B08F4:
	ldrh lr, [r2]
	ldr ip, _020B0918 ; =0x02100F84
	mov r0, r4
	ldr ip, [ip, lr, lsl #2]
	blx ip
_020B0908:
	ldr r0, [r4, #0]
	add r0, r0, #2
	str r0, [r4, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B0918: .word 0x02100F84
	arm_func_end NNSi_G3dFuncSbc_SHP

	arm_func_start NNSi_G3dFuncSbc_NODEDESC
NNSi_G3dFuncSbc_NODEDESC: ; 0x020B091C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sl, r0
	ldr r0, [sl]
	mov sb, r1
	ldrb r6, [r0, #1]
	mov r4, #4
	strb r6, [sl, #0xae]
	ldr r0, [sl, #8]
	orr r0, r0, #0x10
	str r0, [sl, #8]
	tst r0, #0x400
	beq _020B09A4
	cmp sb, #0x40
	cmpne sb, #0x60
	addeq r4, r4, #1
	cmp sb, #0x20
	cmpne sb, #0x60
	bne _020B0990
	tst r0, #0x100
	add r4, r4, #1
	bne _020B0990
	ldr r0, [sl]
	add r1, sp, #0x10
	ldrb r3, [r0, #4]
	mov r0, #0x14
	mov r2, #1
	str r3, [sp, #0x10]
	bl NNS_G3dGeBufferOP_N
_020B0990:
	ldr r0, [sl]
	add sp, sp, #0x14
	add r0, r0, r4
	str r0, [sl]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B09A4:
	cmp sb, #0x40
	cmpne sb, #0x60
	bne _020B09E8
	ldr r0, [sl]
	cmp sb, #0x40
	ldreqb r0, [r0, #4]
	add r4, r4, #1
	streq r0, [sp, #0xc]
	ldrneb r0, [r0, #5]
	strne r0, [sp, #0xc]
	ldr r0, [sl, #8]
	tst r0, #0x100
	bne _020B09E8
	add r1, sp, #0xc
	mov r0, #0x14
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
_020B09E8:
	add r0, sl, #0x12c
	str r0, [sl, #0xb4]
	ldr r0, [sl, #0x24]
	cmp r0, #0
	ldrneb r8, [sl, #0x92]
	moveq r8, #0
	cmp r8, #1
	bne _020B0A3C
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x24]
	blx r1
	ldr r0, [sl, #0x24]
	cmp r0, #0
	ldrneb r8, [sl, #0x92]
	ldr r0, [sl, #8]
	moveq r8, #0
	and r0, r0, #0x40
	b _020B0A40
_020B0A3C:
	mov r0, #0
_020B0A40:
	cmp r0, #0
	bne _020B0C88
	ldr r0, [sl, #4]
	ldr r1, [r0, #0x34]
	cmp r1, #0
	beq _020B0A74
	mov r0, #0x58
	mla r5, r6, r0, r1
	ldr r0, [sl, #8]
	tst r0, #0x80
	moveq r0, #1
	movne r0, #0
	b _020B0A7C
_020B0A74:
	add r5, sl, #0x12c
	mov r0, #0
_020B0A7C:
	cmp r0, #0
	bne _020B0C84
	mov r0, #0
	str r0, [r5, #0]
	ldr r0, [sl, #4]
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _020B0AB4
	ldr r3, [r0, #0x14]
	mov r0, r5
	mov r2, r6
	blx r3
	cmp r0, #0
	bne _020B0C84
_020B0AB4:
	ldr r2, [sl, #0xd4]
	cmp r2, #0
	beq _020B0AFC
	beq _020B0AE8
	ldrb r0, [r2, #1]
	cmp r6, r0
	bhs _020B0AE8
	ldrh r1, [r2, #6]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _020B0AEC
_020B0AE8:
	mov r1, #0
_020B0AEC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r7, r2, r0
	bne _020B0B00
_020B0AFC:
	mov r7, #0
_020B0B00:
	ldrh r0, [r7]
	add r6, r7, #4
	tst r0, #1
	beq _020B0B20
	ldr r0, [r5, #0]
	orr r0, r0, #4
	str r0, [r5, #0]
	b _020B0B3C
_020B0B20:
	ldr r0, [r6, #0]
	str r0, [r5, #0x4c]
	ldr r0, [r6, #4]
	str r0, [r5, #0x50]
	ldr r0, [r6, #8]
	add r6, r6, #0xc
	str r0, [r5, #0x54]
_020B0B3C:
	ldrh r0, [r7]
	tst r0, #2
	beq _020B0B58
	ldr r0, [r5, #0]
	orr r0, r0, #2
	str r0, [r5, #0]
	b _020B0C6C
_020B0B58:
	tst r0, #8
	beq _020B0C20
	and r1, r0, #0xf0
	mov fp, r1, asr #4
	ldrsh r1, [r6]
	add r0, r5, #0x28
	str r1, [sp]
	ldrsh r1, [r6, #2]
	str r1, [sp, #4]
	bl MI_Zero36B
	ldrh r0, [r7]
	ldr r2, _020B0D6C ; =0x020F97F4
	ldr r1, _020B0D70 ; =0x020F97F5
	tst r0, #0x100
	mov r0, #0x1000
	ldrb r2, [r2, fp, lsl #2]
	ldrb r1, [r1, fp, lsl #2]
	rsbne r0, r0, #0
	add r3, r5, fp, lsl #2
	str r0, [r3, #0x28]
	ldr r0, [sp]
	add r2, r5, r2, lsl #2
	str r0, [r2, #0x28]
	ldr r0, [sp, #4]
	add r1, r5, r1, lsl #2
	str r0, [r1, #0x28]
	ldrh r0, [r7]
	tst r0, #0x200
	beq _020B0BD8
	ldr r0, [sp, #4]
	rsb r0, r0, #0
	str r0, [sp, #4]
_020B0BD8:
	ldr r0, _020B0D74 ; =0x020F97F6
	ldrb r0, [r0, fp, lsl #2]
	add r1, r5, r0, lsl #2
	ldr r0, [sp, #4]
	str r0, [r1, #0x28]
	ldrh r0, [r7]
	tst r0, #0x400
	beq _020B0C04
	ldr r0, [sp]
	rsb r0, r0, #0
	str r0, [sp]
_020B0C04:
	ldr r0, _020B0D78 ; =0x020F97F7
	add r6, r6, #4
	ldrb r0, [r0, fp, lsl #2]
	add r1, r5, r0, lsl #2
	ldr r0, [sp]
	str r0, [r1, #0x28]
	b _020B0C6C
_020B0C20:
	ldrsh r0, [r7, #2]
	str r0, [r5, #0x28]
	ldrsh r0, [r6]
	str r0, [r5, #0x2c]
	ldrsh r0, [r6, #2]
	str r0, [r5, #0x30]
	ldrsh r0, [r6, #4]
	str r0, [r5, #0x34]
	ldrsh r0, [r6, #6]
	str r0, [r5, #0x38]
	ldrsh r0, [r6, #8]
	str r0, [r5, #0x3c]
	ldrsh r0, [r6, #0xa]
	str r0, [r5, #0x40]
	ldrsh r0, [r6, #0xc]
	str r0, [r5, #0x44]
	ldrsh r0, [r6, #0xe]
	add r6, r6, #0x10
	str r0, [r5, #0x48]
_020B0C6C:
	ldrh r3, [r7]
	ldr r2, [sl]
	ldr r7, [sl, #0xe8]
	mov r0, r5
	mov r1, r6
	blx r7
_020B0C84:
	str r5, [sl, #0xb4]
_020B0C88:
	cmp r8, #2
	bne _020B0CC4
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x24]
	blx r1
	ldr r0, [sl, #0x24]
	cmp r0, #0
	ldrneb r8, [sl, #0x92]
	ldr r0, [sl, #8]
	moveq r8, #0
	and r0, r0, #0x40
	b _020B0CC8
_020B0CC4:
	mov r0, #0
_020B0CC8:
	cmp r0, #0
	bne _020B0CE8
	ldr r0, [sl, #8]
	tst r0, #0x100
	bne _020B0CE8
	ldr r0, [sl, #0xb4]
	ldr r1, [sl, #0xec]
	blx r1
_020B0CE8:
	mov r0, #0
	str r0, [sl, #0xb4]
	cmp r8, #3
	bne _020B0D18
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x24]
	blx r1
	ldr r0, [sl, #8]
	and r0, r0, #0x40
_020B0D18:
	cmp sb, #0x20
	cmpne sb, #0x60
	bne _020B0D58
	cmp r0, #0
	add r4, r4, #1
	bne _020B0D58
	ldr r0, [sl, #8]
	tst r0, #0x100
	bne _020B0D58
	ldr r0, [sl]
	add r1, sp, #8
	ldrb r3, [r0, #4]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp, #8]
	bl NNS_G3dGeBufferOP_N
_020B0D58:
	ldr r0, [sl]
	add r0, r0, r4
	str r0, [sl]
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B0D6C: .word 0x020F97F4
_020B0D70: .word 0x020F97F5
_020B0D74: .word 0x020F97F6
_020B0D78: .word 0x020F97F7
	arm_func_end NNSi_G3dFuncSbc_NODEDESC

	arm_func_start NNSi_G3dFuncSbc_BB
NNSi_G3dFuncSbc_BB: ; 0x020B0D7C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0xc8
	mov sb, r0
	ldr r0, [sb, #8]
	mov r8, r1
	tst r0, #0x200
	mov r4, #2
	ldr r5, _020B1058 ; =0x02101004
	ldr r6, _020B105C ; =0x02101010
	beq _020B0DD0
	cmp r8, #0x40
	cmpne r8, #0x60
	addeq r4, r4, #1
	cmp r8, #0x20
	cmpne r8, #0x60
	ldr r0, [sb]
	addeq r4, r4, #1
	add r0, r0, r4
	add sp, sp, #0xc8
	str r0, [sb]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020B0DD0:
	cmp r8, #0x40
	cmpne r8, #0x60
	bne _020B0E10
	tst r0, #0x100
	add r4, r4, #1
	bne _020B0E10
	ldr r0, [sb]
	cmp r8, #0x40
	ldreqb r0, [r0, #2]
	add r1, sp, #4
	mov r2, #1
	streq r0, [sp, #4]
	ldrneb r0, [r0, #3]
	strne r0, [sp, #4]
	mov r0, #0x14
	bl NNS_G3dGeBufferOP_N
_020B0E10:
	ldr r0, [sb, #0x28]
	cmp r0, #0
	ldrneb r7, [sb, #0x93]
	moveq r7, #0
	cmp r7, #1
	bne _020B0E5C
	ldr r1, [sb, #8]
	mov r0, sb
	bic r1, r1, #0x40
	str r1, [sb, #8]
	ldr r1, [sb, #0x28]
	blx r1
	ldr r0, [sb, #0x28]
	cmp r0, #0
	ldrneb r7, [sb, #0x93]
	ldr r0, [sb, #8]
	moveq r7, #0
	and r1, r0, #0x40
	b _020B0E60
_020B0E5C:
	mov r1, #0
_020B0E60:
	ldr r0, [sb, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _020B0FD8
	bl NNS_G3dGeFlushBuffer
	ldr r2, _020B1060 ; =0x00151110
	ldr r1, _020B1064 ; =0x04000400
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #0]
	str r0, [r1, #0]
	add sl, sp, #0x88
_020B0E90:
	mov r0, sl
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _020B0E90
	ldr r0, _020B1068 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B0ED0
	bl NNS_G3dGlbGetWV
	add r1, sp, #0x48
	bl MTX_Copy43To44_
	add r0, sp, #0x88
	add r1, sp, #0x48
	mov r2, r0
	bl MTX_Concat44
	b _020B0EF4
_020B0ED0:
	tst r0, #2
	beq _020B0EF4
	ldr r0, _020B106C ; =0x021C5AD8
	add r1, sp, #8
	bl MTX_Copy43To44_
	add r0, sp, #0x88
	add r1, sp, #8
	mov r2, r0
	bl MTX_Concat44
_020B0EF4:
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #0xbc]
	ldr r1, [sp, #0xc0]
	add r0, sp, #0x88
	str r3, [r5, #0]
	str r2, [r5, #4]
	str r1, [r5, #8]
	bl VEC_Mag
	str r0, [r6, #0]
	add r0, sp, #0x98
	bl VEC_Mag
	str r0, [r6, #4]
	add r0, sp, #0xa8
	bl VEC_Mag
	ldr r1, _020B1068 ; =0x021C5A8C
	str r0, [r6, #8]
	ldr r0, [r1, #0xfc]
	ldr r1, _020B1064 ; =0x04000400
	tst r0, #1
	beq _020B0F84
	ldr r3, _020B1070 ; =0x00171012
	ldr r0, _020B1074 ; =0x02100FD8
	mov r2, #8
	str r3, [r1, #0]
	bl MIi_CpuSend32
	bl NNS_G3dGlbGetInvWV
	ldr r1, _020B1064 ; =0x04000400
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r2, _020B1078 ; =0x00001B19
	ldr r1, _020B1064 ; =0x04000400
	ldr r0, _020B107C ; =0x02100FE0
	str r2, [r1, #0]
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _020B0FD8
_020B0F84:
	tst r0, #2
	beq _020B0FCC
	ldr r3, _020B1070 ; =0x00171012
	ldr r0, _020B1074 ; =0x02100FD8
	mov r2, #8
	str r3, [r1, #0]
	bl MIi_CpuSend32
	bl NNS_G3dGlbGetInvV
	ldr r1, _020B1064 ; =0x04000400
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r2, _020B1078 ; =0x00001B19
	ldr r1, _020B1064 ; =0x04000400
	ldr r0, _020B107C ; =0x02100FE0
	str r2, [r1, #0]
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _020B0FD8
_020B0FCC:
	ldr r0, _020B1080 ; =0x02100FD4
	mov r2, #0x48
	bl MIi_CpuSend32
_020B0FD8:
	cmp r7, #3
	movne r0, #0
	bne _020B1004
	ldr r1, [sb, #8]
	mov r0, sb
	bic r1, r1, #0x40
	str r1, [sb, #8]
	ldr r1, [sb, #0x28]
	blx r1
	ldr r0, [sb, #8]
	and r0, r0, #0x40
_020B1004:
	cmp r8, #0x20
	cmpne r8, #0x60
	bne _020B1044
	cmp r0, #0
	add r4, r4, #1
	bne _020B1044
	ldr r0, [sb, #8]
	tst r0, #0x100
	bne _020B1044
	ldr r0, [sb]
	add r1, sp, #0
	ldrb r3, [r0, #2]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
_020B1044:
	ldr r0, [sb]
	add r0, r0, r4
	str r0, [sb]
	add sp, sp, #0xc8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020B1058: .word 0x02101004
_020B105C: .word 0x02101010
_020B1060: .word 0x00151110
_020B1064: .word 0x04000400
_020B1068: .word 0x021C5A8C
_020B106C: .word 0x021C5AD8
_020B1070: .word 0x00171012
_020B1074: .word 0x02100FD8
_020B1078: .word 0x00001B19
_020B107C: .word 0x02100FE0
_020B1080: .word 0x02100FD4
	arm_func_end NNSi_G3dFuncSbc_BB

	arm_func_start NNSi_G3dFuncSbc_BBY
NNSi_G3dFuncSbc_BBY: ; 0x020B1084
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc8
	mov sl, r0
	ldr r0, [sl, #8]
	mov sb, r1
	tst r0, #0x200
	mov r5, #2
	ldr fp, _020B13BC ; =0x0210104C
	ldr r6, _020B13C0 ; =0x02101058
	ldr r7, _020B13C4 ; =0x02101028
	beq _020B10DC
	cmp sb, #0x40
	cmpne sb, #0x60
	addeq r5, r5, #1
	cmp sb, #0x20
	cmpne sb, #0x60
	ldr r0, [sl]
	addeq r5, r5, #1
	add r0, r0, r5
	add sp, sp, #0xc8
	str r0, [sl]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020B10DC:
	cmp sb, #0x40
	cmpne sb, #0x60
	bne _020B111C
	tst r0, #0x100
	add r5, r5, #1
	bne _020B111C
	ldr r0, [sl]
	cmp sb, #0x40
	ldreqb r0, [r0, #2]
	add r1, sp, #4
	mov r2, #1
	streq r0, [sp, #4]
	ldrneb r0, [r0, #3]
	strne r0, [sp, #4]
	mov r0, #0x14
	bl NNS_G3dGeBufferOP_N
_020B111C:
	ldr r0, [sl, #0x2c]
	cmp r0, #0
	ldrneb r8, [sl, #0x94]
	moveq r8, #0
	cmp r8, #1
	bne _020B1168
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x2c]
	blx r1
	ldr r0, [sl, #0x2c]
	cmp r0, #0
	ldrneb r8, [sl, #0x94]
	ldr r0, [sl, #8]
	moveq r8, #0
	and r1, r0, #0x40
	b _020B116C
_020B1168:
	mov r1, #0
_020B116C:
	ldr r0, [sl, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _020B133C
	bl NNS_G3dGeFlushBuffer
	ldr r2, _020B13C8 ; =0x00151110
	ldr r1, _020B13CC ; =0x04000400
	mov r0, #0
	str r2, [r1, #0]
	str r0, [r1, #0]
	str r0, [r1, #0]
	add r4, sp, #0x88
_020B119C:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _020B119C
	ldr r0, _020B13D0 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B11DC
	bl NNS_G3dGlbGetWV
	add r1, sp, #0x48
	bl MTX_Copy43To44_
	add r0, sp, #0x88
	add r1, sp, #0x48
	mov r2, r0
	bl MTX_Concat44
	b _020B1200
_020B11DC:
	tst r0, #2
	beq _020B1200
	ldr r0, _020B13D4 ; =0x021C5AD8
	add r1, sp, #8
	bl MTX_Copy43To44_
	add r0, sp, #0x88
	add r1, sp, #8
	mov r2, r0
	bl MTX_Concat44
_020B1200:
	ldr r3, [sp, #0xb8]
	ldr r2, [sp, #0xbc]
	ldr r1, [sp, #0xc0]
	add r0, sp, #0x88
	str r3, [fp]
	str r2, [fp, #4]
	str r1, [fp, #8]
	bl VEC_Mag
	str r0, [r6, #0]
	add r0, sp, #0x98
	bl VEC_Mag
	str r0, [r6, #4]
	add r0, sp, #0xa8
	bl VEC_Mag
	ldr r1, [sp, #0x9c]
	str r0, [r6, #8]
	cmp r1, #0
	ldreq r0, [sp, #0xa0]
	cmpeq r0, #0
	beq _020B1274
	add r0, sp, #0x98
	add r1, r7, #0xc
	bl VEC_Normalize
	ldr r1, [r7, #0x14]
	ldr r0, [r7, #0x10]
	rsb r1, r1, #0
	str r1, [r7, #0x1c]
	str r0, [r7, #0x20]
	b _020B1294
_020B1274:
	add r0, sp, #0xa8
	add r1, r7, #0x18
	bl VEC_Normalize
	ldr r1, [r7, #0x1c]
	ldr r0, [r7, #0x20]
	rsb r1, r1, #0
	str r1, [r7, #0x14]
	str r0, [r7, #0x10]
_020B1294:
	ldr r0, _020B13D0 ; =0x021C5A8C
	ldr r1, _020B13CC ; =0x04000400
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B12E8
	ldr r3, _020B13D8 ; =0x00171012
	ldr r0, _020B13DC ; =0x02101020
	mov r2, #8
	str r3, [r1, #0]
	bl MIi_CpuSend32
	bl NNS_G3dGlbGetInvWV
	ldr r1, _020B13CC ; =0x04000400
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r2, _020B13E0 ; =0x00001B19
	ldr r1, _020B13CC ; =0x04000400
	ldr r0, _020B13C4 ; =0x02101028
	str r2, [r1, #0]
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _020B133C
_020B12E8:
	tst r0, #2
	beq _020B1330
	ldr r3, _020B13D8 ; =0x00171012
	ldr r0, _020B13DC ; =0x02101020
	mov r2, #8
	str r3, [r1, #0]
	bl MIi_CpuSend32
	bl NNS_G3dGlbGetInvV
	ldr r1, _020B13CC ; =0x04000400
	mov r2, #0x30
	bl MIi_CpuSend32
	ldr r2, _020B13E0 ; =0x00001B19
	ldr r1, _020B13CC ; =0x04000400
	ldr r0, _020B13C4 ; =0x02101028
	str r2, [r1, #0]
	mov r2, #0x3c
	bl MIi_CpuSend32
	b _020B133C
_020B1330:
	ldr r0, _020B13E4 ; =0x0210101C
	mov r2, #0x48
	bl MIi_CpuSend32
_020B133C:
	cmp r8, #3
	movne r0, #0
	bne _020B1368
	ldr r1, [sl, #8]
	mov r0, sl
	bic r1, r1, #0x40
	str r1, [sl, #8]
	ldr r1, [sl, #0x2c]
	blx r1
	ldr r0, [sl, #8]
	and r0, r0, #0x40
_020B1368:
	cmp sb, #0x20
	cmpne sb, #0x60
	bne _020B13A8
	cmp r0, #0
	add r5, r5, #1
	bne _020B13A8
	ldr r0, [sl, #8]
	tst r0, #0x100
	bne _020B13A8
	ldr r0, [sl]
	add r1, sp, #0
	ldrb r3, [r0, #2]
	mov r0, #0x13
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
_020B13A8:
	ldr r0, [sl]
	add r0, r0, r5
	str r0, [sl]
	add sp, sp, #0xc8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B13BC: .word 0x0210104C
_020B13C0: .word 0x02101058
_020B13C4: .word 0x02101028
_020B13C8: .word 0x00151110
_020B13CC: .word 0x04000400
_020B13D0: .word 0x021C5A8C
_020B13D4: .word 0x021C5AD8
_020B13D8: .word 0x00171012
_020B13DC: .word 0x02101020
_020B13E0: .word 0x00001B19
_020B13E4: .word 0x0210101C
	arm_func_end NNSi_G3dFuncSbc_BBY

	arm_func_start NNSi_G3dFuncSbc_NODEMIX
NNSi_G3dFuncSbc_NODEMIX: ; 0x020B13E8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x104
	ldr r1, [r0, #4]
	ldr r6, [r0, #0]
	ldr r7, [r1, #4]
	ldrb r2, [r6, #2]
	ldr r3, [r7, #0x10]
	mov r5, #0
	str r0, [sp]
	str r2, [sp, #0x10]
	add r3, r7, r3
	add r1, sp, #0xb0
	mov r0, r5
	mov r2, #0x54
	mov r4, r5
	str r3, [sp, #0x14]
	add r6, r6, #3
	bl MIi_CpuClearFast
	bl NNS_G3dGeFlushBuffer
	mov r0, r5
	ldr r1, _020B1B34 ; =0x04000440
	str r0, [sp, #0xc]
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r1, #0xc]
	ldr r0, [sp, #0xc]
	str r0, [r1, #0x14]
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	bls _020B18D8
_020B1468:
	ldrb fp, [r6, #1]
	mov r1, #0x64
	ldr r0, [sp]
	smulbb r1, fp, r1
	mov r2, fp, lsr #5
	str r1, [sp, #4]
	add r0, r0, r2, lsl #2
	ldr r3, _020B1B38 ; =0x021C70F4
	ldr r2, [sp, #4]
	ldr sb, [r0, #0xcc]
	add r7, r3, r2
	and r1, fp, #0x1f
	mov r2, #1
	ands r3, sb, r2, lsl r1
	str r3, [sp, #8]
	bne _020B14D4
	ldr sb, [r0, #0xcc]
	ldr r3, _020B1B3C ; =0x04000450
	orr r1, sb, r2, lsl r1
	str r1, [r0, #0xcc]
	ldr r0, [sp, #0x14]
	mov r1, #0x54
	mla r0, fp, r1, r0
	ldrb sb, [r6]
	str sb, [r3]
	str r2, [r3, #-0x10]
	bl G3_MultMtx43
_020B14D4:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _020B16FC
	ldr r0, [sp, #0xe0]
	ldmia r8, {sb, lr}
	str r0, [sp, #0x18]
	mov r0, sb, asr #0x1f
	str r0, [sp, #0x20]
	ldr r0, [sp, #0xe4]
	ldr ip, [r8, #8]
	str r0, [sp, #0x24]
	mov r0, lr, asr #0x1f
	str r0, [sp, #0x28]
	ldr r0, [sp, #0xe8]
	ldr r3, [r8, #0xc]
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0xec]
	ldr r2, [r8, #0x10]
	str r0, [sp, #0x34]
	mov r0, ip, asr #0x1f
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xf0]
	ldr r1, [r8, #0x14]
	str r0, [sp, #0x3c]
	mov r0, r3, asr #0x1f
	str r0, [sp, #0x38]
	ldr r0, [sp, #0xf4]
	str r0, [sp, #0x44]
	mov r0, r2, asr #0x1f
	str r0, [sp, #0x40]
	ldr r0, [sp, #0xf8]
	str r0, [sp, #0x4c]
	mov r0, r1, asr #0x1f
	str r0, [sp, #0x48]
	ldr r0, [r8, #0x18]
	str r0, [sp, #0x50]
	ldr r0, [sp, #0xfc]
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x50]
	mov r0, r0, asr #0x1f
	str r0, [sp, #0x54]
	ldr r0, [r8, #0x1c]
	str r0, [sp, #0xa8]
	ldr r0, [r8, #0x20]
	ldr r8, [sp, #0xa8]
	mov r8, r8, asr #0x1f
	str r8, [sp, #0x5c]
	ldr r8, [sp, #0x100]
	str r8, [sp, #0x60]
	mov r8, r0, asr #0x1f
	str r8, [sp, #0x64]
	umull sl, r8, r5, sb
	str sl, [sp, #0x1c]
	ldr sl, [sp, #0x20]
	mla r8, r5, sl, r8
	mla r8, r4, sb, r8
	ldr sb, [sp, #0x1c]
	mov sb, sb, lsr #0xc
	orr sb, sb, r8, lsl #20
	ldr r8, [sp, #0x18]
	adds r8, r8, sb
	str r8, [sp, #0xe0]
	umull sl, sb, r5, lr
	ldr r8, [sp, #0x28]
	mov sl, sl, lsr #0xc
	mla sb, r5, r8, sb
	mla sb, r4, lr, sb
	ldr r8, [sp, #0x24]
	orr sl, sl, sb, lsl #20
	adds r8, r8, sl
	str r8, [sp, #0xe4]
	umull sl, sb, r5, ip
	ldr r8, [sp, #0x30]
	mov sl, sl, lsr #0xc
	mla sb, r5, r8, sb
	mla sb, r4, ip, sb
	ldr r8, [sp, #0x2c]
	orr sl, sl, sb, lsl #20
	adds r8, r8, sl
	str r8, [sp, #0xe8]
	ldr r8, [sp, #0x38]
	umull sl, sb, r5, r3
	mla sb, r5, r8, sb
	mla sb, r4, r3, sb
	mov r8, sl, lsr #0xc
	ldr r3, [sp, #0x34]
	orr r8, r8, sb, lsl #20
	adds r3, r3, r8
	str r3, [sp, #0xec]
	ldr r3, [sp, #0x40]
	umull sb, r8, r5, r2
	mla r8, r5, r3, r8
	mla r8, r4, r2, r8
	mov r3, sb, lsr #0xc
	ldr r2, [sp, #0x3c]
	orr r3, r3, r8, lsl #20
	adds r2, r2, r3
	str r2, [sp, #0xf0]
	ldr r2, [sp, #0x48]
	umull r8, r3, r5, r1
	mla r3, r5, r2, r3
	mla r3, r4, r1, r3
	mov r2, r8, lsr #0xc
	ldr r1, [sp, #0x44]
	orr r2, r2, r3, lsl #20
	adds r1, r1, r2
	str r1, [sp, #0xf4]
	ldr r1, [sp, #0x50]
	umull r3, r2, r5, r1
	ldr r1, [sp, #0x54]
	mov r3, r3, lsr #0xc
	mla r2, r5, r1, r2
	ldr r1, [sp, #0x50]
	mla r2, r4, r1, r2
	ldr r1, [sp, #0x4c]
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xf8]
	ldr r1, [sp, #0xa8]
	umull r3, r2, r5, r1
	ldr r1, [sp, #0x5c]
	mov r3, r3, lsr #0xc
	mla r2, r5, r1, r2
	ldr r1, [sp, #0xa8]
	mla r2, r4, r1, r2
	ldr r1, [sp, #0x58]
	orr r3, r3, r2, lsl #20
	adds r1, r1, r3
	str r1, [sp, #0xfc]
	ldr r1, [sp, #0x64]
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	mla r2, r4, r0, r2
	mov r1, r3, lsr #0xc
	ldr r0, [sp, #0x60]
	orr r1, r1, r2, lsl #20
	adds r0, r0, r1
	str r0, [sp, #0x100]
_020B16FC:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _020B1738
_020B1708:
	mov r0, r7
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _020B1708
	ldr r0, [sp, #0x14]
	mov r1, #0x54
	mla r0, fp, r1, r0
	ldr r1, _020B1B34 ; =0x04000440
	mov r2, #2
	add r0, r0, #0x30
	str r2, [r1, #0]
	bl G3_MultMtx33
_020B1738:
	ldrb r0, [r6, #2]
	ldr r2, [r7, #0]
	ldr r1, [r7, #4]
	mov r5, r0, lsl #4
	ldr r0, [r7, #8]
	ldr r4, [r7, #0x10]
	ldr r3, [r7, #0x14]
	smull r2, r8, r5, r2
	mov r2, r2, lsr #0xc
	orr r2, r2, r8, lsl #20
	smull r1, r8, r5, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, r8, lsl #20
	smull r0, r8, r5, r0
	mov r0, r0, lsr #0xc
	orr r0, r0, r8, lsl #20
	smull r8, r4, r5, r4
	mov sb, r8, lsr #0xc
	orr sb, sb, r4, lsl #20
	smull r4, r3, r5, r3
	mov r8, r4, lsr #0xc
	orr r8, r8, r3, lsl #20
	mov r4, r5, asr #0x1f
	ldr sl, [sp, #0xb0]
	ldr r3, [sp, #0xb4]
	adds r2, sl, r2
	adds r1, r3, r1
	str r2, [sp, #0xb0]
	str r1, [sp, #0xb4]
	ldr r2, [sp, #0xb8]
	ldr r1, [sp, #0xbc]
	adds r2, r2, r0
	adds r0, r1, sb
	str r2, [sp, #0xb8]
	str r0, [sp, #0xbc]
	ldr r0, [sp, #0xc0]
	ldr r2, [sp, #0xc4]
	adds r0, r0, r8
	str r0, [sp, #0xc0]
	ldr r0, [r7, #0x18]
	ldr r3, [sp, #0xc8]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	str r0, [sp, #0xc4]
	ldr r0, [r7, #0x20]
	ldr r2, [sp, #0xcc]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r3, r1
	str r0, [sp, #0xc8]
	ldr r0, [r7, #0x24]
	ldr r3, [sp, #0xd0]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	str r0, [sp, #0xcc]
	ldr r0, [r7, #0x28]
	ldr r2, [sp, #0xd4]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r3, r1
	str r0, [sp, #0xd0]
	ldr r0, [r7, #0x30]
	ldr r3, [sp, #0xd8]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	adds r0, r2, r1
	str r0, [sp, #0xd4]
	ldr r1, [r7, #0x34]
	ldr r0, [r7, #0x38]
	smull r2, r1, r5, r1
	mov r2, r2, lsr #0xc
	orr r2, r2, r1, lsl #20
	adds r1, r3, r2
	str r1, [sp, #0xd8]
	smull r1, r0, r5, r0
	mov r1, r1, lsr #0xc
	orr r1, r1, r0, lsl #20
	ldr r0, [sp, #0xdc]
	adds r0, r0, r1
	str r0, [sp, #0xdc]
	ldr r1, _020B1B40 ; =0x021C7134
	ldr r0, [sp, #8]
	cmp r0, #0
	add r6, r6, #3
	ldr r0, [sp, #4]
	add r8, r1, r0
	bne _020B18C0
_020B18B0:
	mov r0, r8
	bl G3X_GetVectorMtx
	cmp r0, #0
	bne _020B18B0
_020B18C0:
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	ldr r0, [sp, #0x10]
	str r1, [sp, #0xc]
	cmp r1, r0
	blo _020B1468
_020B18D8:
	ldmia r8, {r0, fp}
	ldr sl, [r8, #8]
	ldr sb, [r8, #0xc]
	ldr r7, [r8, #0x10]
	ldr r6, [r8, #0x14]
	ldr r3, [r8, #0x18]
	ldr r2, [r8, #0x1c]
	ldr r1, [r8, #0x20]
	umull ip, r8, r5, r0
	mov lr, ip, lsr #0xc
	ldr ip, [sp, #0xe0]
	str ip, [sp, #0x68]
	mov ip, r0, asr #0x1f
	mla r8, r5, ip, r8
	mla r8, r4, r0, r8
	orr lr, lr, r8, lsl #20
	umull ip, r8, r5, fp
	ldr r0, [sp, #0x68]
	str ip, [sp, #0x6c]
	adds r0, r0, lr
	str r0, [sp, #0xe0]
	mov r0, fp, asr #0x1f
	str r0, [sp, #0xac]
	ldr ip, [sp, #0xac]
	ldr r0, [sp, #0xe8]
	mla r8, r5, ip, r8
	mla r8, r4, fp, r8
	ldr fp, [sp, #0x6c]
	str r0, [sp, #0x70]
	mov fp, fp, lsr #0xc
	mov r0, sl, asr #0x1f
	str r0, [sp, #0x74]
	ldr r0, [sp, #0xec]
	ldr lr, [sp, #0xe4]
	orr fp, fp, r8, lsl #20
	adds r8, lr, fp
	str r8, [sp, #0xe4]
	str r0, [sp, #0x78]
	mov r0, sb, asr #0x1f
	str r0, [sp, #0x7c]
	ldr r0, [sp, #0xf0]
	ldr r8, [sp, #0x74]
	umull ip, fp, r5, sl
	mla fp, r5, r8, fp
	mla fp, r4, sl, fp
	mov sl, ip, lsr #0xc
	str r0, [sp, #0x80]
	mov r0, r7, asr #0x1f
	str r0, [sp, #0x84]
	ldr r0, [sp, #0xf4]
	ldr r8, [sp, #0x70]
	orr sl, sl, fp, lsl #20
	adds r8, r8, sl
	str r8, [sp, #0xe8]
	str r0, [sp, #0x88]
	mov r0, r6, asr #0x1f
	str r0, [sp, #0x8c]
	ldr r0, [sp, #0xf8]
	ldr r8, [sp, #0x7c]
	umull fp, sl, r5, sb
	mla sl, r5, r8, sl
	mla sl, r4, sb, sl
	mov sb, fp, lsr #0xc
	str r0, [sp, #0x90]
	mov r0, r3, asr #0x1f
	str r0, [sp, #0x94]
	ldr r0, [sp, #0xfc]
	ldr r8, [sp, #0x78]
	orr sb, sb, sl, lsl #20
	adds r8, r8, sb
	str r8, [sp, #0xec]
	str r0, [sp, #0x98]
	mov r0, r2, asr #0x1f
	str r0, [sp, #0x9c]
	ldr r0, [sp, #0x100]
	ldr r8, [sp, #0x84]
	umull sl, sb, r5, r7
	mla sb, r5, r8, sb
	mla sb, r4, r7, sb
	mov r8, sl, lsr #0xc
	str r0, [sp, #0xa0]
	mov r0, r1, asr #0x1f
	str r0, [sp, #0xa4]
	ldr r7, [sp, #0x80]
	orr r8, r8, sb, lsl #20
	adds r7, r7, r8
	str r7, [sp, #0xf0]
	ldr r7, [sp, #0x8c]
	umull sb, r8, r5, r6
	mla r8, r5, r7, r8
	mla r8, r4, r6, r8
	mov r7, sb, lsr #0xc
	ldr r6, [sp, #0x88]
	orr r7, r7, r8, lsl #20
	adds r6, r6, r7
	str r6, [sp, #0xf4]
	ldr r6, [sp, #0x94]
	umull r8, r7, r5, r3
	mla r7, r5, r6, r7
	mla r7, r4, r3, r7
	mov r6, r8, lsr #0xc
	ldr r3, [sp, #0x90]
	orr r6, r6, r7, lsl #20
	adds r3, r3, r6
	str r3, [sp, #0xf8]
	ldr r3, [sp, #0x9c]
	umull r7, r6, r5, r2
	mla r6, r5, r3, r6
	mla r6, r4, r2, r6
	mov r3, r7, lsr #0xc
	ldr r2, [sp, #0x98]
	orr r3, r3, r6, lsl #20
	adds r2, r2, r3
	str r2, [sp, #0xfc]
	ldr r2, [sp, #0xa4]
	umull r6, r3, r5, r1
	mla r3, r5, r2, r3
	mla r3, r4, r1, r3
	mov r2, r6, lsr #0xc
	ldr r1, [sp, #0xa0]
	orr r2, r2, r3, lsl #20
	adds r1, r1, r2
	add r0, sp, #0xe0
	str r1, [sp, #0x100]
	bl G3_LoadMtx43
	ldr r1, _020B1B34 ; =0x04000440
	mov r2, #1
	add r0, sp, #0xb0
	str r2, [r1, #0]
	bl G3_LoadMtx43
	ldr r1, _020B1B34 ; =0x04000440
	mov r2, #0
	mov r0, #1
	str r2, [r1, #0]
	str r0, [r1, #0x10]
	mov r0, #2
	str r0, [r1, #0]
	ldr r0, [sp]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #1]
	str r0, [r1, #0xc]
	ldr r0, [sp]
	ldr r1, [r0, #0]
	ldrb r0, [r1, #2]
	add r0, r0, #1
	add r0, r0, r0, lsl #1
	add r1, r1, r0
	ldr r0, [sp]
	str r1, [r0, #0]
	add sp, sp, #0x104
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B1B34: .word 0x04000440
_020B1B38: .word 0x021C70F4
_020B1B3C: .word 0x04000450
_020B1B40: .word 0x021C7134
	arm_func_end NNSi_G3dFuncSbc_NODEMIX

	arm_func_start NNSi_G3dFuncSbc_CALLDL
NNSi_G3dFuncSbc_CALLDL: ; 0x020B1B44
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	ldr r0, [r5, #0x34]
	cmp r0, #0
	ldrneb r4, [r5, #0x96]
	moveq r4, #0
	cmp r4, #1
	bne _020B1B98
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x34]
	blx r1
	ldr r0, [r5, #0x34]
	cmp r0, #0
	ldrneb r4, [r5, #0x96]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r1, r0, #0x40
	b _020B1B9C
_020B1B98:
	mov r1, #0
_020B1B9C:
	ldr r0, [r5, #8]
	tst r0, #0x100
	cmpeq r1, #0
	bne _020B1BF0
	ldr r0, [r5, #0]
	ldrb ip, [r0, #1]
	ldrb r3, [r0, #2]
	ldrb lr, [r0, #3]
	ldrb r2, [r0, #5]
	ldrb r1, [r0, #6]
	orr r3, ip, r3, lsl #8
	ldrb r6, [r0, #4]
	orr ip, r3, lr, lsl #16
	ldrb r3, [r0, #7]
	orr r1, r2, r1, lsl #8
	orr r6, ip, r6, lsl #24
	ldrb r2, [r0, #8]
	orr r1, r1, r3, lsl #16
	add r0, r0, r6
	orr r1, r1, r2, lsl #24
	bl NNS_G3dGeSendDL
_020B1BF0:
	cmp r4, #3
	bne _020B1C10
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x34]
	blx r1
_020B1C10:
	ldr r0, [r5, #0]
	add r0, r0, #9
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_G3dFuncSbc_CALLDL

	arm_func_start NNSi_G3dFuncSbc_POSSCALE
NNSi_G3dFuncSbc_POSSCALE: ; 0x020B1C20
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	ldr r0, [r4, #8]
	tst r0, #0x100
	bne _020B1C7C
	tst r0, #0x200
	bne _020B1C7C
	cmp r1, #0
	bne _020B1C5C
	ldr r0, [r4, #0xe0]
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
	b _020B1C6C
_020B1C5C:
	ldr r0, [r4, #0xe4]
	str r0, [sp, #8]
	str r0, [sp, #4]
	str r0, [sp]
_020B1C6C:
	add r1, sp, #0
	mov r0, #0x1b
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
_020B1C7C:
	ldr r0, [r4, #0]
	add r0, r0, #1
	str r0, [r4, #0]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end NNSi_G3dFuncSbc_POSSCALE

	arm_func_start NNSi_G3dFuncSbc_ENVMAP
NNSi_G3dFuncSbc_ENVMAP: ; 0x020B1C90
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r7, r0
	ldr r0, [r7, #8]
	tst r0, #0x200
	bne _020B1FAC
	tst r0, #1
	beq _020B1FAC
	ldr r2, [r7, #0xb0]
	ldr r0, [r2, #0x10]
	and r1, r0, #0xc0000000
	cmp r1, #-0x80000000
	beq _020B1CFC
	bic r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r3, [r7, #0xb0]
	ldr r0, _020B1FC0 ; =0x02100F64
	ldr r2, [r3, #0x10]
	ldr r1, _020B1FC4 ; =0x02100F70
	orr r2, r2, #0x80000000
	str r2, [r3, #0x10]
	ldr r3, [r7, #0xb0]
	mov r2, #1
	ldr r3, [r3, #0x10]
	str r3, [r0, #0xc]
	ldr r0, [r0, #8]
	bl NNS_G3dGeBufferOP_N
_020B1CFC:
	mov r0, #3
	str r0, [sp, #0x10]
	add r1, sp, #0x10
	mov r0, #0x10
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	ldrneb r6, [r7, #0x98]
	moveq r6, #0
	cmp r6, #1
	bne _020B1D60
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	ldrneb r6, [r7, #0x98]
	ldr r0, [r7, #8]
	moveq r6, #0
	and r0, r0, #0x40
	b _020B1D64
_020B1D60:
	mov r0, #0
_020B1D64:
	cmp r0, #0
	bne _020B1DDC
	ldr r0, [r7, #0xb0]
	add r1, sp, #0x14
	ldrh r5, [r0, #0x2e]
	ldrh r4, [r0, #0x2c]
	mov r3, #0x10000
	rsb r0, r5, #0
	mov ip, r0, lsl #0xf
	mov lr, r4, lsl #0xf
	mov r0, #0x1b
	mov r2, #3
	str lr, [sp, #0x14]
	str ip, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl NNS_G3dGeBufferOP_N
	mov r0, r5, lsl #0x13
	mov r1, r0, asr #0x10
	mov r0, r4, lsl #0x13
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r3, r1, r0, lsr #16
	add r1, sp, #0xc
	mov r0, #0x22
	mov r2, #1
	str r3, [sp, #0xc]
	bl NNS_G3dGeBufferOP_N
_020B1DDC:
	cmp r6, #2
	bne _020B1E18
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #0x3c]
	cmp r0, #0
	ldrneb r6, [r7, #0x98]
	ldr r0, [r7, #8]
	moveq r6, #0
	and r0, r0, #0x40
	b _020B1E1C
_020B1E18:
	mov r0, #0
_020B1E1C:
	cmp r0, #0
	bne _020B1EB0
	ldr r0, [r7, #0]
	ldr r4, [r7, #0xd8]
	ldrb r3, [r0, #1]
	cmp r4, #0
	beq _020B1E78
	adds r2, r4, #4
	beq _020B1E64
	ldrb r0, [r4, #5]
	cmp r3, r0
	bhs _020B1E64
	ldrh r1, [r4, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r3, r1
	b _020B1E68
_020B1E64:
	mov r1, #0
_020B1E68:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, r4, r0
	bne _020B1E7C
_020B1E78:
	mov r0, #0
_020B1E7C:
	ldrh r2, [r0, #0x1e]
	tst r2, #0x2000
	beq _020B1EB0
	add r1, r0, #0x2c
	tst r2, #2
	addeq r1, r1, #8
	tst r2, #4
	addeq r1, r1, #4
	tst r2, #8
	addeq r1, r1, #8
	mov r0, #0x18
	mov r2, #0x10
	bl NNS_G3dGeBufferOP_N
_020B1EB0:
	cmp r6, #3
	movne r0, #0
	bne _020B1EDC
	ldr r1, [r7, #8]
	mov r0, r7
	bic r1, r1, #0x40
	str r1, [r7, #8]
	ldr r1, [r7, #0x3c]
	blx r1
	ldr r0, [r7, #8]
	and r0, r0, #0x40
_020B1EDC:
	cmp r0, #0
	bne _020B1F94
	mov r3, #2
	add r1, sp, #8
	mov r0, #0x10
	mov r2, #1
	str r3, [sp, #8]
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x20
	mov r0, #0
	bl NNS_G3dGetCurrentMtx
	mov r3, #3
	add r1, sp, #4
	mov r0, #0x10
	mov r2, #1
	str r3, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	ldr r0, _020B1FC8 ; =0x021C5A8C
	mov r2, #9
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B1F64
	ldr r1, _020B1FCC ; =0x021C5AD8
	mov r0, #0x1a
	bl NNS_G3dGeBufferOP_N
	ldr r1, _020B1FD0 ; =0x021C5B48
	mov r0, #0x1a
	mov r2, #9
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x20
	mov r0, #0x1a
	mov r2, #9
	bl NNS_G3dGeBufferOP_N
	b _020B1F94
_020B1F64:
	tst r0, #2
	mov r0, #0x1a
	beq _020B1F8C
	ldr r1, _020B1FCC ; =0x021C5AD8
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x20
	mov r0, #0x1a
	mov r2, #9
	bl NNS_G3dGeBufferOP_N
	b _020B1F94
_020B1F8C:
	add r1, sp, #0x20
	bl NNS_G3dGeBufferOP_N
_020B1F94:
	mov r3, #2
	add r1, sp, #0
	mov r0, #0x10
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
_020B1FAC:
	ldr r0, [r7, #0]
	add r0, r0, #3
	str r0, [r7, #0]
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020B1FC0: .word 0x02100F64
_020B1FC4: .word 0x02100F70
_020B1FC8: .word 0x021C5A8C
_020B1FCC: .word 0x021C5AD8
_020B1FD0: .word 0x021C5B48
	arm_func_end NNSi_G3dFuncSbc_ENVMAP

	arm_func_start NNSi_G3dFuncSbc_PRJMAP
NNSi_G3dFuncSbc_PRJMAP: ; 0x020B1FD4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x80
	mov r5, r0
	ldr r0, [r5, #8]
	tst r0, #0x200
	bne _020B2350
	tst r0, #1
	beq _020B2350
	add r0, sp, #0x50
	mov r1, #0
	bl NNS_G3dGetCurrentMtx
	mov r0, #0x1e
	str r0, [sp, #0xc]
	add r1, sp, #0xc
	mov r0, #0x13
	mov r2, #1
	bl NNS_G3dGeBufferOP_N
	ldr r2, [r5, #0xb0]
	ldr r0, [r2, #0x10]
	and r1, r0, #0xc0000000
	cmp r1, #-0x40000000
	beq _020B2064
	bic r0, r0, #0xc0000000
	str r0, [r2, #0x10]
	ldr r3, [r5, #0xb0]
	ldr r0, _020B2364 ; =0x02100F64
	ldr r2, [r3, #0x10]
	ldr r1, _020B2368 ; =0x02100F68
	orr r2, r2, #0xc0000000
	str r2, [r3, #0x10]
	ldr r3, [r5, #0xb0]
	mov r2, #1
	ldr r3, [r3, #0x10]
	str r3, [r0, #4]
	ldr r0, [r0, #0]
	bl NNS_G3dGeBufferOP_N
_020B2064:
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	moveq r4, #0
	cmp r4, #1
	bne _020B20B0
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _020B20B4
_020B20B0:
	mov r0, #0
_020B20B4:
	cmp r0, #0
	bne _020B20FC
	ldr r0, [r5, #0xb0]
	ldr r3, _020B2364 ; =0x02100F64
	ldrh ip, [r0, #0x2e]
	ldrh r2, [r0, #0x2c]
	ldr r1, _020B236C ; =0x02100F94
	rsb r0, ip, #0
	mov r2, r2, lsl #0xf
	str r2, [r3, #0x30]
	mov r0, r0, lsl #0xf
	str r0, [r3, #0x44]
	str r2, [r3, #0x60]
	mov ip, ip, lsl #0xf
	mov r0, #0x16
	mov r2, #0x10
	str ip, [r3, #0x64]
	bl NNS_G3dGeBufferOP_N
_020B20FC:
	cmp r4, #2
	bne _020B2138
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #0x40]
	cmp r0, #0
	ldrneb r4, [r5, #0x99]
	ldr r0, [r5, #8]
	moveq r4, #0
	and r0, r0, #0x40
	b _020B213C
_020B2138:
	mov r0, #0
_020B213C:
	cmp r0, #0
	bne _020B21D0
	ldr r0, [r5, #0]
	ldr ip, [r5, #0xd8]
	ldrb r3, [r0, #1]
	cmp ip, #0
	beq _020B2198
	adds r2, ip, #4
	beq _020B2184
	ldrb r0, [ip, #5]
	cmp r3, r0
	bhs _020B2184
	ldrh r1, [ip, #0xa]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	add r1, r1, #4
	mla r1, r0, r3, r1
	b _020B2188
_020B2184:
	mov r1, #0
_020B2188:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, ip, r0
	bne _020B219C
_020B2198:
	mov r0, #0
_020B219C:
	ldrh r2, [r0, #0x1e]
	tst r2, #0x2000
	beq _020B21D0
	add r1, r0, #0x2c
	tst r2, #2
	addeq r1, r1, #8
	tst r2, #4
	addeq r1, r1, #4
	tst r2, #8
	addeq r1, r1, #8
	mov r0, #0x18
	mov r2, #0x10
	bl NNS_G3dGeBufferOP_N
_020B21D0:
	cmp r4, #3
	movne r0, #0
	bne _020B21FC
	ldr r1, [r5, #8]
	mov r0, r5
	bic r1, r1, #0x40
	str r1, [r5, #8]
	ldr r1, [r5, #0x40]
	blx r1
	ldr r0, [r5, #8]
	and r0, r0, #0x40
_020B21FC:
	cmp r0, #0
	bne _020B2320
	ldr r0, _020B2370 ; =0x021C5A8C
	ldr r0, [r0, #0xfc]
	tst r0, #1
	beq _020B2248
	ldr r1, _020B2374 ; =0x021C5B6C
	mov r0, #0x1c
	mov r2, #3
	bl NNS_G3dGeBufferOP_N
	ldr r1, _020B2378 ; =0x021C5B48
	mov r0, #0x1a
	mov r2, #9
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	b _020B2288
_020B2248:
	tst r0, #2
	beq _020B2264
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	b _020B2288
_020B2264:
	bl NNS_G3dGlbGetInvV
	mov r1, r0
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
	add r1, sp, #0x50
	mov r0, #0x19
	mov r2, #0xc
	bl NNS_G3dGeBufferOP_N
_020B2288:
	bl NNS_G3dGeFlushBuffer
	ldr r0, _020B237C ; =0x04000440
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	str r1, [r0, #0x14]
	add r4, sp, #0x10
_020B22A4:
	mov r0, r4
	bl G3X_GetClipMtx
	cmp r0, #0
	bne _020B22A4
	ldr r2, _020B2380 ; =0x04000448
	mov r0, #1
	str r0, [r2, #0]
	mov r0, #3
	str r0, [r2, #-8]
	add r1, sp, #0x10
	mov r0, #0x16
	mov r2, #0x10
	bl NNS_G3dGeBufferOP_N
	ldr r0, [sp, #0x44]
	ldr r1, [sp, #0x40]
	mov r0, r0, asr #4
	mov r0, r0, lsl #8
	mov r2, r1, asr #4
	mov r1, r0, asr #0x10
	mov r0, r2, lsl #8
	mov r1, r1, lsl #0x10
	mov r0, r0, asr #0x10
	mov r1, r1, lsr #0x10
	mov r0, r0, lsl #0x10
	mov r1, r1, lsl #0x10
	orr r3, r1, r0, lsr #16
	add r1, sp, #8
	mov r0, #0x22
	mov r2, #1
	str r3, [sp, #8]
	bl NNS_G3dGeBufferOP_N
_020B2320:
	mov r3, #2
	add r1, sp, #4
	mov r0, #0x10
	mov r2, #1
	str r3, [sp, #4]
	bl NNS_G3dGeBufferOP_N
	mov r3, #0x1e
	add r1, sp, #0
	mov r0, #0x14
	mov r2, #1
	str r3, [sp]
	bl NNS_G3dGeBufferOP_N
_020B2350:
	ldr r0, [r5, #0]
	add r0, r0, #3
	str r0, [r5, #0]
	add sp, sp, #0x80
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B2364: .word 0x02100F64
_020B2368: .word 0x02100F68
_020B236C: .word 0x02100F94
_020B2370: .word 0x021C5A8C
_020B2374: .word 0x021C5B6C
_020B2378: .word 0x021C5B48
_020B237C: .word 0x04000440
_020B2380: .word 0x04000448
	arm_func_end NNSi_G3dFuncSbc_PRJMAP

	.rodata


	.global Unk_020F97D4
Unk_020F97D4: ; 0x020F97D4
	.incbin "incbin/arm9_rodata.bin", 0x14B94, 0x14BB4 - 0x14B94

	.global Unk_020F97F4
Unk_020F97F4: ; 0x020F97F4
	.incbin "incbin/arm9_rodata.bin", 0x14BB4, 0x24



	.data


	.global Unk_02100F64
Unk_02100F64: ; 0x02100F64
	.incbin "incbin/arm9_data.bin", 0x2284, 0x228C - 0x2284

	.global Unk_02100F6C
Unk_02100F6C: ; 0x02100F6C
	.incbin "incbin/arm9_data.bin", 0x228C, 0x2294 - 0x228C

	.global Unk_02100F74
Unk_02100F74: ; 0x02100F74
	.incbin "incbin/arm9_data.bin", 0x2294, 0x22A4 - 0x2294

	.global Unk_02100F84
Unk_02100F84: ; 0x02100F84
	.incbin "incbin/arm9_data.bin", 0x22A4, 0x22B4 - 0x22A4

	.global Unk_02100F94
Unk_02100F94: ; 0x02100F94
	.incbin "incbin/arm9_data.bin", 0x22B4, 0x22F4 - 0x22B4

	.global Unk_02100FD4
Unk_02100FD4: ; 0x02100FD4
	.incbin "incbin/arm9_data.bin", 0x22F4, 0x233C - 0x22F4

	.global Unk_0210101C
Unk_0210101C: ; 0x0210101C
	.incbin "incbin/arm9_data.bin", 0x233C, 0x2384 - 0x233C

	.global Unk_02101064
Unk_02101064: ; 0x02101064
	.incbin "incbin/arm9_data.bin", 0x2384, 0x80



	.bss


	.global Unk_021C5CF0
Unk_021C5CF0: ; 0x021C5CF0
	.space 0x4

	.global Unk_021C5CF4
Unk_021C5CF4: ; 0x021C5CF4
	.space 0x2D00

