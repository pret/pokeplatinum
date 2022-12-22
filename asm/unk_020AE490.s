	.include "macros/function.inc"
	.include "include/unk_020AE490.inc"

	

	.text


	arm_func_start NNS_G3dAnmObjCalcSizeRequired
NNS_G3dAnmObjCalcSizeRequired: ; 0x020AE490
	cmp r0, #0
	cmpne r1, #0
	moveq r0, #0
	bxeq lr
	ldrb r0, [r0]
	cmp r0, #0x4a
	beq _020AE4D4
	cmp r0, #0x4d
	beq _020AE4C0
	cmp r0, #0x56
	beq _020AE4D4
	b _020AE4E8
_020AE4C0:
	ldrb r0, [r1, #0x18]
	mov r0, r0, lsl #1
	add r0, r0, #0x1c
	bic r0, r0, #3
	bx lr
_020AE4D4:
	ldrb r0, [r1, #0x17]
	mov r0, r0, lsl #1
	add r0, r0, #0x1c
	bic r0, r0, #3
	bx lr
_020AE4E8:
	mov r0, #0
	bx lr
	arm_func_end NNS_G3dAnmObjCalcSizeRequired

	arm_func_start NNS_G3dAnmObjInit
NNS_G3dAnmObjInit: ; 0x020AE4F0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov ip, #0
	str ip, [r0]
	str r1, [r0, #8]
	str ip, [r0, #0x10]
	mov r4, #0x7f
	strb r4, [r0, #0x18]
	mov r4, #0x1000
	str r4, [r0, #4]
	str r3, [r0, #0x14]
	strb ip, [r0, #0x19]
	ldr r3, _020AE584 ; =0x02100EC8
	str ip, [r0, #0xc]
	ldr r7, [r3, #0]
	cmp r7, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r6, [r1]
	ldr r4, _020AE588 ; =0x02100EEC
_020AE538:
	ldrb r3, [r4, ip, lsl #3]
	mov r5, ip, lsl #3
	cmp r6, r3
	bne _020AE574
	add r3, r4, r5
	ldrh lr, [r1, #2]
	ldrh r3, [r3, #2]
	cmp lr, r3
	bne _020AE574
	ldr r3, _020AE58C ; =0x02100EF0
	ldr r3, [r3, r5]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	blx r3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020AE574:
	add ip, ip, #1
	cmp ip, r7
	blo _020AE538
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020AE584: .word 0x02100EC8
_020AE588: .word 0x02100EEC
_020AE58C: .word 0x02100EF0
	arm_func_end NNS_G3dAnmObjInit

	arm_func_start NNS_G3dAnmObjEnableID
NNS_G3dAnmObjEnableID: ; 0x020AE590
	cmp r1, #0
	bxlt lr
	ldrb r2, [r0, #0x19]
	cmp r1, r2
	bxge lr
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #0x1a]
	mov r3, r1, lsl #1
	tst r2, #0x100
	bxeq lr
	add r1, r0, #0x1a
	ldrh r0, [r1, r3]
	bic r0, r0, #0x200
	strh r0, [r1, r3]
	bx lr
	arm_func_end NNS_G3dAnmObjEnableID

	arm_func_start NNS_G3dAnmObjDisableID
NNS_G3dAnmObjDisableID: ; 0x020AE5CC
	cmp r1, #0
	bxlt lr
	ldrb r2, [r0, #0x19]
	cmp r1, r2
	bxge lr
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #0x1a]
	mov r3, r1, lsl #1
	tst r2, #0x100
	bxeq lr
	add r1, r0, #0x1a
	ldrh r0, [r1, r3]
	orr r0, r0, #0x200
	strh r0, [r1, r3]
	bx lr
	arm_func_end NNS_G3dAnmObjDisableID

	arm_func_start NNS_G3dRenderObjInit
NNS_G3dRenderObjInit: ; 0x020AE608
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r1, r5
	mov r0, #0
	mov r2, #0x54
	bl MIi_CpuClear32
	ldr r0, _020AE650 ; =0x02100EE8
	ldr r1, _020AE654 ; =0x02100EE4
	ldr r2, [r0, #0]
	ldr r0, _020AE658 ; =0x02100EE0
	str r2, [r5, #0xc]
	ldr r1, [r1, #0]
	str r1, [r5, #0x14]
	ldr r0, [r0, #0]
	str r0, [r5, #0x1c]
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AE650: .word 0x02100EE8
_020AE654: .word 0x02100EE4
_020AE658: .word 0x02100EE0
	arm_func_end NNS_G3dRenderObjInit

	arm_func_start addLink_
addLink_: ; 0x020AE65C
	ldr ip, [r0]
	cmp ip, #0
	streq r1, [r0]
	bxeq lr
	ldr r2, [ip, #0x10]
	cmp r2, #0
	bne _020AE6BC
	ldrb r3, [ip, #0x18]
	ldrb r2, [r1, #0x18]
	cmp r3, r2
	bls _020AE6B4
	ldr r2, [r1, #0x10]
	mov r3, r1
	cmp r2, #0
	beq _020AE6A8
_020AE698:
	ldr r3, [r3, #0x10]
	ldr r2, [r3, #0x10]
	cmp r2, #0
	bne _020AE698
_020AE6A8:
	str ip, [r3, #0x10]
	str r1, [r0, #0]
	bx lr
_020AE6B4:
	str r1, [ip, #0x10]
	bx lr
_020AE6BC:
	beq _020AE70C
	ldrb r3, [r1, #0x18]
_020AE6C4:
	ldrb r0, [r2, #0x18]
	cmp r0, r3
	blo _020AE6FC
	ldr r0, [r1, #0x10]
	mov r3, r1
	cmp r0, #0
	beq _020AE6F0
_020AE6E0:
	ldr r3, [r3, #0x10]
	ldr r0, [r3, #0x10]
	cmp r0, #0
	bne _020AE6E0
_020AE6F0:
	str r1, [ip, #0x10]
	str r2, [r3, #0x10]
	bx lr
_020AE6FC:
	mov ip, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _020AE6C4
_020AE70C:
	str r1, [ip, #0x10]
	bx lr
	arm_func_end addLink_

	arm_func_start updateHintVec__dup1
updateHintVec__dup1: ; 0x020AE714
	stmfd sp!, {r3, r4, r5, lr}
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r3, #1
	mov r4, #0
_020AE728:
	ldrb r2, [r1, #0x19]
	mov r5, r4
	cmp r2, #0
	ble _020AE76C
_020AE738:
	add r2, r1, r5, lsl #1
	ldrh r2, [r2, #0x1a]
	tst r2, #0x100
	beq _020AE75C
	mov lr, r5, asr #5
	ldr ip, [r0, lr, lsl #2]
	and r2, r5, #0x1f
	orr r2, ip, r3, lsl r2
	str r2, [r0, lr, lsl #2]
_020AE75C:
	ldrb r2, [r1, #0x19]
	add r5, r5, #1
	cmp r5, r2
	blt _020AE738
_020AE76C:
	ldr r1, [r1, #0x10]
	cmp r1, #0
	bne _020AE728
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end updateHintVec__dup1

	arm_func_start NNS_G3dRenderObjAddAnmObj
NNS_G3dRenderObjAddAnmObj: ; 0x020AE77C
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r1
	mov r5, r0
	ldrne r0, [r4, #8]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r0]
	cmp r0, #0x4a
	beq _020AE7CC
	cmp r0, #0x4d
	beq _020AE7B4
	cmp r0, #0x56
	beq _020AE7E4
	ldmia sp!, {r3, r4, r5, pc}
_020AE7B4:
	add r0, r5, #0x3c
	bl updateHintVec__dup1
	mov r1, r4
	add r0, r5, #8
	bl addLink_
	ldmia sp!, {r3, r4, r5, pc}
_020AE7CC:
	add r0, r5, #0x44
	bl updateHintVec__dup1
	mov r1, r4
	add r0, r5, #0x10
	bl addLink_
	ldmia sp!, {r3, r4, r5, pc}
_020AE7E4:
	add r0, r5, #0x4c
	bl updateHintVec__dup1
	mov r1, r4
	add r0, r5, #0x18
	bl addLink_
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G3dRenderObjAddAnmObj

	arm_func_start removeLink_
removeLink_: ; 0x020AE7FC
	ldr r3, [r0, #0]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	cmp r3, r1
	bne _020AE82C
	ldr r3, [r3, #0x10]
	mov r2, #0
	str r3, [r0, #0]
	str r2, [r1, #0x10]
	mov r0, #1
	bx lr
_020AE82C:
	ldr r2, [r3, #0x10]
	cmp r2, #0
	beq _020AE868
_020AE838:
	cmp r2, r1
	bne _020AE858
	ldr r1, [r2, #0x10]
	mov r0, #0
	str r1, [r3, #0x10]
	str r0, [r2, #0x10]
	mov r0, #1
	bx lr
_020AE858:
	mov r3, r2
	ldr r2, [r2, #0x10]
	cmp r2, #0
	bne _020AE838
_020AE868:
	mov r0, #0
	bx lr
	arm_func_end removeLink_

	arm_func_start NNS_G3dRenderObjRemoveAnmObj
NNS_G3dRenderObjRemoveAnmObj: ; 0x020AE870
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl removeLink_
	cmp r0, #0
	bne _020AE8B4
	mov r1, r4
	add r0, r5, #0x10
	bl removeLink_
	cmp r0, #0
	bne _020AE8B4
	mov r1, r4
	add r0, r5, #0x18
	bl removeLink_
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020AE8B4:
	ldr r0, [r5, #0]
	orr r0, r0, #0x10
	str r0, [r5, #0]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G3dRenderObjRemoveAnmObj

	arm_func_start NNS_G3dTexGetRequiredSize
NNS_G3dTexGetRequiredSize: ; 0x020AE8C4
	cmp r0, #0
	ldrneh r0, [r0, #0xc]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end NNS_G3dTexGetRequiredSize

	arm_func_start NNS_G3dTex4x4GetRequiredSize
NNS_G3dTex4x4GetRequiredSize: ; 0x020AE8D8
	cmp r0, #0
	ldrneh r0, [r0, #0x1c]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end NNS_G3dTex4x4GetRequiredSize

	arm_func_start NNS_G3dTexSetTexKey
NNS_G3dTexSetTexKey: ; 0x020AE8EC
	cmp r1, #0
	strne r1, [r0, #8]
	cmp r2, #0
	strne r2, [r0, #0x18]
	bx lr
	arm_func_end NNS_G3dTexSetTexKey

	arm_func_start NNS_G3dTexLoad
NNS_G3dTexLoad: ; 0x020AE900
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r8, r1
	mov sb, r0
	beq _020AE914
	bl GX_BeginLoadTex
_020AE914:
	ldrh r0, [sb, #0xc]
	movs r2, r0, lsl #3
	beq _020AE944
	ldr r0, [sb, #8]
	ldr r3, [sb, #0x14]
	mov r1, r0, lsl #0x10
	add r0, sb, r3
	mov r1, r1, lsr #0xd
	bl GX_LoadTex
	ldrh r0, [sb, #0x10]
	orr r0, r0, #1
	strh r0, [sb, #0x10]
_020AE944:
	ldrh r0, [sb, #0x1c]
	movs r6, r0, lsl #3
	beq _020AE9A4
	ldr r1, [sb, #0x18]
	ldr r0, [sb, #0x24]
	mov r4, r1, lsl #0x10
	mov r7, r4, lsr #0xd
	mov r1, r7
	mov r2, r6
	add r0, sb, r0
	ldr r5, [sb, #0x28]
	bl GX_LoadTex
	ldr r0, _020AE9B4 ; =0x0001FFFF
	and r1, r7, #0x40000
	and r0, r0, r4, lsr #13
	mov r0, r0, lsr #1
	add r2, r0, #0x20000
	add r0, sb, r5
	add r1, r2, r1, lsr #2
	mov r2, r6, lsr #1
	bl GX_LoadTex
	ldrh r0, [sb, #0x20]
	orr r0, r0, #1
	strh r0, [sb, #0x20]
_020AE9A4:
	cmp r8, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bl GX_EndLoadTex
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020AE9B4: .word 0x0001FFFF
	arm_func_end NNS_G3dTexLoad

	arm_func_start NNS_G3dTexReleaseTexKey
NNS_G3dTexReleaseTexKey: ; 0x020AE9B8
	cmp r1, #0
	beq _020AE9DC
	ldrh ip, [r0, #0x10]
	mov r3, #0
	bic ip, ip, #1
	strh ip, [r0, #0x10]
	ldr ip, [r0, #8]
	str ip, [r1]
	str r3, [r0, #8]
_020AE9DC:
	cmp r2, #0
	bxeq lr
	ldrh r3, [r0, #0x20]
	mov r1, #0
	bic r3, r3, #1
	strh r3, [r0, #0x20]
	ldr r3, [r0, #0x18]
	str r3, [r2, #0]
	str r1, [r0, #0x18]
	bx lr
	arm_func_end NNS_G3dTexReleaseTexKey

	arm_func_start NNS_G3dPlttGetRequiredSize
NNS_G3dPlttGetRequiredSize: ; 0x020AEA04
	cmp r0, #0
	ldrneh r0, [r0, #0x30]
	movne r0, r0, lsl #3
	moveq r0, #0
	bx lr
	arm_func_end NNS_G3dPlttGetRequiredSize

	arm_func_start NNS_G3dPlttSetPlttKey
NNS_G3dPlttSetPlttKey: ; 0x020AEA18
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end NNS_G3dPlttSetPlttKey

	arm_func_start NNS_G3dPlttLoad
NNS_G3dPlttLoad: ; 0x020AEA20
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r0
	beq _020AEA34
	bl GX_BeginLoadTexPltt
_020AEA34:
	ldr r0, [r4, #0x2c]
	ldrh r2, [r4, #0x30]
	mov r1, r0, lsl #0x10
	ldr r3, [r4, #0x38]
	mov r1, r1, lsr #0xd
	add r0, r4, r3
	mov r2, r2, lsl #3
	bl GX_LoadTexPltt
	ldrh r0, [r4, #0x32]
	cmp r5, #0
	orr r0, r0, #1
	strh r0, [r4, #0x32]
	ldmeqia sp!, {r3, r4, r5, pc}
	bl GX_EndLoadTexPltt
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G3dPlttLoad

	arm_func_start NNS_G3dPlttReleasePlttKey
NNS_G3dPlttReleasePlttKey: ; 0x020AEA70
	ldrh r2, [r0, #0x32]
	mov r1, #0
	bic r2, r2, #1
	strh r2, [r0, #0x32]
	ldr r2, [r0, #0x2c]
	str r1, [r0, #0x2c]
	mov r0, r2
	bx lr
	arm_func_end NNS_G3dPlttReleasePlttKey

	arm_func_start bindMdlTex_Internal_
bindMdlTex_Internal_: ; 0x020AEA90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov r8, r3
	ldr r1, [r8]
	mov sl, r0
	and r0, r1, #0x1c000000
	ldrh r3, [sb]
	cmp r0, #0x14000000
	mov r5, #0
	add r0, sl, r3
	str r0, [sp]
	ldrne r0, [r2, #8]
	ldreq r0, [r2, #0x18]
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bic fp, r0, #0xe0000000
	ldrb r0, [sb, #2]
	cmp r0, #0
	bls _020AEBAC
	add r4, sl, #4
_020AEAE0:
	ldr r0, [sp]
	cmp sl, #0
	ldrb r2, [r0, r5]
	beq _020AEB30
	cmp r4, #0
	beq _020AEB1C
	ldrb r0, [sl, #5]
	cmp r2, r0
	bhs _020AEB1C
	ldrh r0, [sl, #0xa]
	add r1, r4, r0
	add r1, r1, #4
	ldrh r0, [r4, r0]
	mla r1, r0, r2, r1
	b _020AEB20
_020AEB1C:
	mov r1, #0
_020AEB20:
	cmp r1, #0
	ldrne r0, [r1]
	addne r7, sl, r0
	bne _020AEB34
_020AEB30:
	mov r7, #0
_020AEB34:
	ldr r0, [r8]
	ldr r1, [r7, #0x14]
	add r0, r0, fp
	orr r0, r1, r0
	str r0, [r7, #0x14]
	ldr r3, [r8, #4]
	ldr r0, _020AEBBC ; =0x000007FF
	ldrh r1, [r7, #0x20]
	and r2, r3, r0
	and r0, r3, r0, lsl #11
	mov r6, r0, lsr #0xb
	cmp r2, r1
	moveq r0, #0x1000
	beq _020AEB78
	mov r0, r2, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_020AEB78:
	str r0, [r7, #0x24]
	ldrh r1, [r7, #0x22]
	cmp r6, r1
	moveq r0, #0x1000
	beq _020AEB98
	mov r0, r6, lsl #0xc
	mov r1, r1, lsl #0xc
	bl FX_Div
_020AEB98:
	str r0, [r7, #0x28]
	ldrb r0, [sb, #2]
	add r5, r5, #1
	cmp r5, r0
	blo _020AEAE0
_020AEBAC:
	ldrb r0, [sb, #3]
	orr r0, r0, #1
	strb r0, [sb, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AEBBC: .word 0x000007FF
	arm_func_end bindMdlTex_Internal_

	arm_func_start releaseMdlTex_Internal_
releaseMdlTex_Internal_: ; 0x020AEBC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrh r3, [r1]
	ldrb r2, [r1, #2]
	mov lr, #0
	add ip, r0, r3
	cmp r2, #0
	bls _020AEC64
	ldr r4, _020AEC74 ; =0xC00F0000
	add r2, r0, #4
	mov r7, lr
	mov r6, lr
	mov r5, #0x1000
_020AEBF0:
	cmp r0, #0
	ldrb r3, [ip, lr]
	beq _020AEC3C
	cmp r2, #0
	beq _020AEC28
	ldrb r8, [r0, #5]
	cmp r3, r8
	bhs _020AEC28
	ldrh sb, [r0, #0xa]
	ldrh r8, [r2, sb]
	add sb, r2, sb
	add sb, sb, #4
	mla r3, r8, r3, sb
	b _020AEC2C
_020AEC28:
	mov r3, r7
_020AEC2C:
	cmp r3, #0
	ldrne r3, [r3]
	addne r8, r0, r3
	bne _020AEC40
_020AEC3C:
	mov r8, r6
_020AEC40:
	ldr r3, [r8, #0x14]
	add lr, lr, #1
	and r3, r3, r4
	str r3, [r8, #0x14]
	str r5, [r8, #0x24]
	str r5, [r8, #0x28]
	ldrb r3, [r1, #2]
	cmp lr, r3
	blo _020AEBF0
_020AEC64:
	ldrb r0, [r1, #3]
	bic r0, r0, #1
	strb r0, [r1, #3]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020AEC74: .word 0xC00F0000
	arm_func_end releaseMdlTex_Internal_

	arm_func_start NNS_G3dBindMdlTex
NNS_G3dBindMdlTex: ; 0x020AEC78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r7, #1
	cmpne r1, #0
	addne r8, r0, r1
	moveq r8, #0
	ldrh r0, [r8]
	mov r6, #0
	add r5, r8, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	bls _020AED70
	mov sb, r6
	mov r4, r6
	mov fp, r6
_020AECBC:
	cmp r5, #0
	beq _020AECE8
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _020AECE8
	ldrh r0, [r5, #6]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, sb
	b _020AECEC
_020AECE8:
	mov r1, r4
_020AECEC:
	cmp sl, #0
	moveq r3, fp
	beq _020AED04
	add r0, sl, #0x3c
	bl NNS_G3dGetResDataByName
	mov r3, r0
_020AED04:
	cmp r3, #0
	beq _020AED58
	cmp r5, #0
	beq _020AED38
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _020AED38
	ldrh r1, [r5, #6]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _020AED3C
_020AED38:
	mov r1, #0
_020AED3C:
	ldrb r0, [r1, #3]
	tst r0, #1
	bne _020AED5C
	mov r0, r8
	mov r2, sl
	bl bindMdlTex_Internal_
	b _020AED5C
_020AED58:
	mov r7, #0
_020AED5C:
	ldrb r0, [r5, #1]
	add r6, r6, #1
	add sb, sb, #0x10
	cmp r6, r0
	blo _020AECBC
_020AED70:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNS_G3dBindMdlTex

	arm_func_start NNS_G3dForceBindMdlTex
NNS_G3dForceBindMdlTex: ; 0x020AED78
	stmfd sp!, {r3, r4, r5, lr}
	mov ip, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	cmpne r1, #0
	addne r0, r0, r1
	moveq r0, #0
	ldrh r1, [r0]
	cmp ip, #0
	add r1, r0, r1
	beq _020AEDD8
	adds r5, ip, #0x3c
	beq _020AEDD0
	ldrb r4, [ip, #0x3d]
	cmp r3, r4
	bhs _020AEDD0
	ldrh lr, [ip, #0x42]
	ldrh r4, [r5, lr]
	add lr, r5, lr
	add lr, lr, #4
	mla r3, r4, r3, lr
	b _020AEDDC
_020AEDD0:
	mov r3, #0
	b _020AEDDC
_020AEDD8:
	mov r3, #0
_020AEDDC:
	cmp r1, #0
	beq _020AEE08
	ldrb r4, [r1, #1]
	cmp r2, r4
	bhs _020AEE08
	ldrh r4, [r1, #6]
	ldrh lr, [r1, r4]
	add r1, r1, r4
	add r1, r1, #4
	mla r1, lr, r2, r1
	b _020AEE0C
_020AEE08:
	mov r1, #0
_020AEE0C:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, ip
	bl bindMdlTex_Internal_
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G3dForceBindMdlTex

	arm_func_start NNS_G3dReleaseMdlTex
NNS_G3dReleaseMdlTex: ; 0x020AEE28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r5, #0
	cmpne r1, #0
	addne r6, r0, r1
	moveq r6, #0
	ldrh r0, [r6]
	add r4, r6, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	mov r7, r5
_020AEE5C:
	cmp r4, #0
	beq _020AEE88
	ldrb r0, [r4, #1]
	cmp r5, r0
	bhs _020AEE88
	ldrh r1, [r4, #6]
	ldrh r0, [r4, r1]
	add r1, r4, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _020AEE8C
_020AEE88:
	mov r1, r7
_020AEE8C:
	ldrb r0, [r1, #3]
	tst r0, #1
	beq _020AEEA0
	mov r0, r6
	bl releaseMdlTex_Internal_
_020AEEA0:
	ldrb r0, [r4, #1]
	add r5, r5, #1
	cmp r5, r0
	blo _020AEE5C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNS_G3dReleaseMdlTex

	arm_func_start bindMdlPltt_Internal_
bindMdlPltt_Internal_: ; 0x020AEEB4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r2, [r2, #0x2c]
	ldrh r5, [r1]
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	ldrh r4, [r3, #2]
	bic r2, r2, #0xe0000000
	mov r2, r2, lsl #0x10
	tst r4, #1
	add ip, r0, r5
	mov r5, r2, lsr #0x10
	ldrh r4, [r3]
	bne _020AEEF8
	mov r2, r4, lsl #0xf
	mov r3, r5, lsl #0xf
	mov r4, r2, lsr #0x10
	mov r5, r3, lsr #0x10
_020AEEF8:
	ldrb r2, [r1, #2]
	mov r3, #0
	cmp r2, #0
	bls _020AEF84
	add r2, r4, r5
	mov lr, r2, lsl #0x10
	add r2, r0, #4
	mov r4, lr, lsr #0x10
	mov r6, r3
	mov r5, r3
_020AEF20:
	cmp r0, #0
	ldrb r8, [ip, r3]
	beq _020AEF6C
	cmp r2, #0
	beq _020AEF58
	ldrb r7, [r0, #5]
	cmp r8, r7
	bhs _020AEF58
	ldrh r7, [r0, #0xa]
	ldrh lr, [r2, r7]
	add r7, r2, r7
	add r7, r7, #4
	mla r7, lr, r8, r7
	b _020AEF5C
_020AEF58:
	mov r7, r6
_020AEF5C:
	cmp r7, #0
	ldrne lr, [r7]
	addne r7, r0, lr
	bne _020AEF70
_020AEF6C:
	mov r7, r5
_020AEF70:
	strh r4, [r7, #0x1c]
	ldrb lr, [r1, #2]
	add r3, r3, #1
	cmp r3, lr
	blo _020AEF20
_020AEF84:
	ldrb r0, [r1, #3]
	orr r0, r0, #1
	strb r0, [r1, #3]
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end bindMdlPltt_Internal_

	arm_func_start NNS_G3dBindMdlPltt
NNS_G3dBindMdlPltt: ; 0x020AEF94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov r7, #1
	cmpne r1, #0
	addne r8, r0, r1
	moveq r8, #0
	ldrh r0, [r8, #2]
	mov r6, #0
	add r5, r8, r0
	ldrb r0, [r5, #1]
	cmp r0, #0
	bls _020AF094
	mov sb, r6
	mov r4, r6
	mov fp, r6
_020AEFD8:
	cmp r5, #0
	beq _020AF004
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _020AF004
	ldrh r0, [r5, #6]
	add r1, r5, r0
	ldrh r0, [r1, #2]
	add r0, r1, r0
	add r1, r0, sb
	b _020AF008
_020AF004:
	mov r1, r4
_020AF008:
	cmp sl, #0
	ldrneh r0, [sl, #0x34]
	cmpne r0, #0
	moveq r3, fp
	beq _020AF028
	add r0, sl, r0
	bl NNS_G3dGetResDataByName
	mov r3, r0
_020AF028:
	cmp r3, #0
	beq _020AF07C
	cmp r5, #0
	beq _020AF05C
	ldrb r0, [r5, #1]
	cmp r6, r0
	bhs _020AF05C
	ldrh r1, [r5, #6]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _020AF060
_020AF05C:
	mov r1, #0
_020AF060:
	ldrb r0, [r1, #3]
	tst r0, #1
	bne _020AF080
	mov r0, r8
	mov r2, sl
	bl bindMdlPltt_Internal_
	b _020AF080
_020AF07C:
	mov r7, #0
_020AF080:
	ldrb r0, [r5, #1]
	add r6, r6, #1
	add sb, sb, #0x10
	cmp r6, r0
	blo _020AEFD8
_020AF094:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNS_G3dBindMdlPltt

	arm_func_start NNS_G3dForceBindMdlPltt
NNS_G3dForceBindMdlPltt: ; 0x020AF09C
	stmfd sp!, {r3, r4, r5, lr}
	mov ip, r1
	cmp r0, #0
	ldrne r1, [r0, #8]
	cmpne r1, #0
	addne r0, r0, r1
	moveq r0, #0
	ldrh r1, [r0, #2]
	cmp ip, #0
	ldrneh r4, [ip, #0x34]
	add r1, r0, r1
	cmpne r4, #0
	beq _020AF104
	adds r5, ip, r4
	beq _020AF0FC
	ldrb r4, [r5, #1]
	cmp r3, r4
	bhs _020AF0FC
	ldrh lr, [r5, #6]
	ldrh r4, [r5, lr]
	add lr, r5, lr
	add lr, lr, #4
	mla r3, r4, r3, lr
	b _020AF108
_020AF0FC:
	mov r3, #0
	b _020AF108
_020AF104:
	mov r3, #0
_020AF108:
	cmp r1, #0
	beq _020AF134
	ldrb r4, [r1, #1]
	cmp r2, r4
	bhs _020AF134
	ldrh r4, [r1, #6]
	ldrh lr, [r1, r4]
	add r1, r1, r4
	add r1, r1, #4
	mla r1, lr, r2, r1
	b _020AF138
_020AF134:
	mov r1, #0
_020AF138:
	cmp r1, #0
	beq _020AF15C
	ldrb r2, [r1, #3]
	tst r2, #1
	bne _020AF15C
	mov r2, ip
	bl bindMdlPltt_Internal_
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020AF15C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_G3dForceBindMdlPltt

	arm_func_start NNS_G3dReleaseMdlPltt
NNS_G3dReleaseMdlPltt: ; 0x020AF164
	cmp r0, #0
	ldrne r1, [r0, #8]
	mov ip, #0
	cmpne r1, #0
	addne r1, r0, r1
	moveq r1, #0
	ldrh r0, [r1, #2]
	add r3, r1, r0
	ldrb r0, [r3, #1]
	cmp r0, #0
	bxls lr
	mov r1, ip
_020AF194:
	cmp r3, #0
	beq _020AF1C0
	ldrb r0, [r3, #1]
	cmp ip, r0
	bhs _020AF1C0
	ldrh r2, [r3, #6]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r2, r0, ip, r2
	b _020AF1C4
_020AF1C0:
	mov r2, r1
_020AF1C4:
	ldrb r0, [r2, #3]
	add ip, ip, #1
	tst r0, #1
	bicne r0, r0, #1
	strneb r0, [r2, #3]
	ldrb r0, [r3, #1]
	cmp ip, r0
	blo _020AF194
	bx lr
	arm_func_end NNS_G3dReleaseMdlPltt

	arm_func_start NNS_G3dBindMdlSet
NNS_G3dBindMdlSet: ; 0x020AF1E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldrb r0, [sl, #9]
	mov sb, r1
	mov r7, #1
	cmp r0, #0
	mov r6, #0
	bls _020AF290
	add r5, sl, #8
	mov r4, r6
	mov fp, r6
_020AF214:
	cmp sl, #0
	beq _020AF25C
	cmp r5, #0
	beq _020AF248
	ldrb r0, [sl, #9]
	cmp r6, r0
	bhs _020AF248
	ldrh r1, [sl, #0xe]
	ldrh r0, [r5, r1]
	add r1, r5, r1
	add r1, r1, #4
	mla r1, r0, r6, r1
	b _020AF24C
_020AF248:
	mov r1, r4
_020AF24C:
	cmp r1, #0
	ldrne r0, [r1]
	addne r8, sl, r0
	bne _020AF260
_020AF25C:
	mov r8, fp
_020AF260:
	mov r0, r8
	mov r1, sb
	bl NNS_G3dBindMdlTex
	and r7, r7, r0
	mov r0, r8
	mov r1, sb
	bl NNS_G3dBindMdlPltt
	ldrb r1, [sl, #9]
	add r6, r6, #1
	and r7, r7, r0
	cmp r6, r1
	blo _020AF214
_020AF290:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNS_G3dBindMdlSet

	arm_func_start NNS_G3dReleaseMdlSet
NNS_G3dReleaseMdlSet: ; 0x020AF298
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	ldrb r0, [r6, #9]
	mov r5, #0
	cmp r0, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r4, r6, #8
	mov r8, r5
	mov r7, r5
_020AF2BC:
	cmp r6, #0
	beq _020AF304
	cmp r4, #0
	beq _020AF2F0
	ldrb r0, [r6, #9]
	cmp r5, r0
	bhs _020AF2F0
	ldrh r1, [r6, #0xe]
	ldrh r0, [r4, r1]
	add r1, r4, r1
	add r1, r1, #4
	mla r1, r0, r5, r1
	b _020AF2F4
_020AF2F0:
	mov r1, r8
_020AF2F4:
	cmp r1, #0
	ldrne r0, [r1]
	addne sb, r6, r0
	bne _020AF308
_020AF304:
	mov sb, r7
_020AF308:
	mov r0, sb
	bl NNS_G3dReleaseMdlTex
	mov r0, sb
	bl NNS_G3dReleaseMdlPltt
	ldrb r0, [r6, #9]
	add r5, r5, #1
	cmp r5, r0
	blo _020AF2BC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end NNS_G3dReleaseMdlSet