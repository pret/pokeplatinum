	.include "macros/function.inc"
	.include "include/unk_020B2CE4.inc"

	

	.text


	arm_func_start NNSi_G3dModifyMatFlag
NNSi_G3dModifyMatFlag: ; 0x020B2CE4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r0, #0
	ldrne r4, [r0, #8]
	ldrb r3, [r0, #0x18]
	cmpne r4, #0
	addne lr, r0, r4
	moveq lr, #0
	cmp r3, #0
	mov ip, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	mvn r4, r2
	add r0, lr, #4
	mov r7, ip
	mov r6, ip
_020B2D1C:
	cmp lr, #0
	beq _020B2D64
	cmp r0, #0
	beq _020B2D50
	ldrb r5, [lr, #5]
	cmp ip, r5
	bhs _020B2D50
	ldrh r8, [lr, #0xa]
	ldrh r5, [r0, r8]
	add r8, r0, r8
	add r8, r8, #4
	mla r8, r5, ip, r8
	b _020B2D54
_020B2D50:
	mov r8, r7
_020B2D54:
	cmp r8, #0
	ldrne r5, [r8]
	addne r8, lr, r5
	bne _020B2D68
_020B2D64:
	mov r8, r6
_020B2D68:
	ldrh r5, [r8, #0x1e]
	cmp r1, #0
	add ip, ip, #1
	orrne r5, r5, r2
	andeq r5, r5, r4
	strh r5, [r8, #0x1e]
	cmp ip, r3
	blo _020B2D1C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G3dModifyMatFlag

	arm_func_start NNSi_G3dModifyPolygonAttrMask
NNSi_G3dModifyPolygonAttrMask: ; 0x020B2D8C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	cmp r0, #0
	ldrne r4, [r0, #8]
	ldrb r3, [r0, #0x18]
	cmpne r4, #0
	addne lr, r0, r4
	moveq lr, #0
	cmp r3, #0
	mov ip, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, pc}
	mvn r4, r2
	add r0, lr, #4
	mov r7, ip
	mov r6, ip
_020B2DC4:
	cmp lr, #0
	beq _020B2E0C
	cmp r0, #0
	beq _020B2DF8
	ldrb r5, [lr, #5]
	cmp ip, r5
	bhs _020B2DF8
	ldrh r8, [lr, #0xa]
	ldrh r5, [r0, r8]
	add r8, r0, r8
	add r8, r8, #4
	mla r8, r5, ip, r8
	b _020B2DFC
_020B2DF8:
	mov r8, r7
_020B2DFC:
	cmp r8, #0
	ldrne r5, [r8]
	addne r8, lr, r5
	bne _020B2E10
_020B2E0C:
	mov r8, r6
_020B2E10:
	ldr r5, [r8, #0x10]
	cmp r1, #0
	orrne r5, r5, r2
	andeq r5, r5, r4
	add ip, ip, #1
	str r5, [r8, #0x10]
	cmp ip, r3
	blo _020B2DC4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G3dModifyPolygonAttrMask

	arm_func_start NNS_G3dMdlSetMdlDiff
NNS_G3dMdlSetMdlDiff: ; 0x020B2E34
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B2E94
	adds ip, lr, #4
	beq _020B2E80
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B2E80
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B2E84
_020B2E80:
	mov r1, #0
_020B2E84:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _020B2E98
_020B2E94:
	mov r3, #0
_020B2E98:
	mov r0, #0x8000
	ldr r1, [r3, #4]
	rsb r0, r0, #0
	and r0, r1, r0
	orr r0, r0, r2
	str r0, [r3, #4]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlDiff

	arm_func_start NNS_G3dMdlSetMdlAmb
NNS_G3dMdlSetMdlAmb: ; 0x020B2EB4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B2F14
	adds ip, lr, #4
	beq _020B2F00
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B2F00
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B2F04
_020B2F00:
	mov r1, #0
_020B2F04:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _020B2F18
_020B2F14:
	mov r3, #0
_020B2F18:
	ldr r1, [r3, #4]
	ldr r0, _020B2F30 ; =0x8000FFFF
	and r0, r1, r0
	orr r0, r0, r2, lsl #16
	str r0, [r3, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B2F30: .word 0x8000FFFF
	arm_func_end NNS_G3dMdlSetMdlAmb

	arm_func_start NNS_G3dMdlSetMdlSpec
NNS_G3dMdlSetMdlSpec: ; 0x020B2F34
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B2F94
	adds ip, lr, #4
	beq _020B2F80
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B2F80
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B2F84
_020B2F80:
	mov r1, #0
_020B2F84:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _020B2F98
_020B2F94:
	mov r3, #0
_020B2F98:
	mov r0, #0x8000
	ldr r1, [r3, #8]
	rsb r0, r0, #0
	and r0, r1, r0
	orr r0, r0, r2
	str r0, [r3, #8]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlSpec

	arm_func_start NNS_G3dMdlSetMdlEmi
NNS_G3dMdlSetMdlEmi: ; 0x020B2FB4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3014
	adds ip, lr, #4
	beq _020B3000
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3000
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3004
_020B3000:
	mov r1, #0
_020B3004:
	cmp r1, #0
	ldrne r0, [r1]
	addne r3, lr, r0
	bne _020B3018
_020B3014:
	mov r3, #0
_020B3018:
	ldr r1, [r3, #8]
	ldr r0, _020B3030 ; =0x8000FFFF
	and r0, r1, r0
	orr r0, r0, r2, lsl #16
	str r0, [r3, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020B3030: .word 0x8000FFFF
	arm_func_end NNS_G3dMdlSetMdlEmi

	arm_func_start NNS_G3dMdlSetMdlLightEnableFlag
NNS_G3dMdlSetMdlLightEnableFlag: ; 0x020B3034
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3094
	adds ip, lr, #4
	beq _020B3080
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3080
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3084
_020B3080:
	mov r1, #0
_020B3084:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3098
_020B3094:
	mov r1, #0
_020B3098:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0xf
	orr r0, r0, r2
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlLightEnableFlag

	arm_func_start NNS_G3dMdlSetMdlPolygonMode
NNS_G3dMdlSetMdlPolygonMode: ; 0x020B30AC
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B310C
	adds ip, lr, #4
	beq _020B30F8
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B30F8
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B30FC
_020B30F8:
	mov r1, #0
_020B30FC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3110
_020B310C:
	mov r1, #0
_020B3110:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x30
	orr r0, r0, r2, lsl #4
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlPolygonMode

	arm_func_start NNS_G3dMdlSetMdlCullMode
NNS_G3dMdlSetMdlCullMode: ; 0x020B3124
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3184
	adds ip, lr, #4
	beq _020B3170
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3170
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3174
_020B3170:
	mov r1, #0
_020B3174:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3188
_020B3184:
	mov r1, #0
_020B3188:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0xc0
	orr r0, r0, r2, lsl #6
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlCullMode

	arm_func_start NNS_G3dMdlSetMdlPolygonID
NNS_G3dMdlSetMdlPolygonID: ; 0x020B319C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B31FC
	adds ip, lr, #4
	beq _020B31E8
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B31E8
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B31EC
_020B31E8:
	mov r1, #0
_020B31EC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3200
_020B31FC:
	mov r1, #0
_020B3200:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x3f000000
	orr r0, r0, r2, lsl #24
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlPolygonID

	arm_func_start NNS_G3dMdlSetMdlAlpha
NNS_G3dMdlSetMdlAlpha: ; 0x020B3214
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3274
	adds ip, lr, #4
	beq _020B3260
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3260
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3264
_020B3260:
	mov r1, #0
_020B3264:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3278
_020B3274:
	mov r1, #0
_020B3278:
	ldr r0, [r1, #0xc]
	bic r0, r0, #0x1f0000
	orr r0, r0, r2, lsl #16
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlAlpha

	arm_func_start NNS_G3dMdlSetMdlFogEnableFlag
NNS_G3dMdlSetMdlFogEnableFlag: ; 0x020B328C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B32EC
	adds ip, lr, #4
	beq _020B32D8
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B32D8
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B32DC
_020B32D8:
	mov r1, #0
_020B32DC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B32F0
_020B32EC:
	mov r1, #0
_020B32F0:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x8000
	biceq r0, r0, #0x8000
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlFogEnableFlag

	arm_func_start NNS_G3dMdlSetMdlDepthTestCond
NNS_G3dMdlSetMdlDepthTestCond: ; 0x020B3308
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3368
	adds ip, lr, #4
	beq _020B3354
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B3354
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3358
_020B3354:
	mov r1, #0
_020B3358:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B336C
_020B3368:
	mov r1, #0
_020B336C:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x4000
	biceq r0, r0, #0x4000
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlDepthTestCond

	arm_func_start NNS_G3dMdlSetMdl1Dot
NNS_G3dMdlSetMdl1Dot: ; 0x020B3384
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B33E4
	adds ip, lr, #4
	beq _020B33D0
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B33D0
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B33D4
_020B33D0:
	mov r1, #0
_020B33D4:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B33E8
_020B33E4:
	mov r1, #0
_020B33E8:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x2000
	biceq r0, r0, #0x2000
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdl1Dot

	arm_func_start NNS_G3dMdlSetMdlFarClip
NNS_G3dMdlSetMdlFarClip: ; 0x020B3400
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B3460
	adds ip, lr, #4
	beq _020B344C
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B344C
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B3450
_020B344C:
	mov r1, #0
_020B3450:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B3464
_020B3460:
	mov r1, #0
_020B3464:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x1000
	biceq r0, r0, #0x1000
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlFarClip

	arm_func_start NNS_G3dMdlSetMdlXLDepthUpdate
NNS_G3dMdlSetMdlXLDepthUpdate: ; 0x020B347C
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0, #8]
	cmpne r3, #0
	addne lr, r0, r3
	moveq lr, #0
	cmp lr, #0
	beq _020B34DC
	adds ip, lr, #4
	beq _020B34C8
	ldrb r0, [lr, #5]
	cmp r1, r0
	bhs _020B34C8
	ldrh r3, [lr, #0xa]
	ldrh r0, [ip, r3]
	add r3, ip, r3
	add r3, r3, #4
	mla r1, r0, r1, r3
	b _020B34CC
_020B34C8:
	mov r1, #0
_020B34CC:
	cmp r1, #0
	ldrne r0, [r1]
	addne r1, lr, r0
	bne _020B34E0
_020B34DC:
	mov r1, #0
_020B34E0:
	ldr r0, [r1, #0xc]
	cmp r2, #0
	orrne r0, r0, #0x800
	biceq r0, r0, #0x800
	str r0, [r1, #0xc]
	ldmia sp!, {r3, pc}
	arm_func_end NNS_G3dMdlSetMdlXLDepthUpdate

	arm_func_start NNS_G3dMdlGetMdlLightEnableFlag
NNS_G3dMdlGetMdlLightEnableFlag: ; 0x020B34F8
	cmp r0, #0
	ldrne r2, [r0, #8]
	cmpne r2, #0
	addne ip, r0, r2
	moveq ip, #0
	cmp ip, #0
	beq _020B3554
	adds r3, ip, #4
	beq _020B3540
	ldrb r0, [ip, #5]
	cmp r1, r0
	bhs _020B3540
	ldrh r2, [ip, #0xa]
	ldrh r0, [r3, r2]
	add r2, r3, r2
	add r2, r2, #4
	mla r1, r0, r1, r2
	b _020B3544
_020B3540:
	mov r1, #0
_020B3544:
	cmp r1, #0
	ldrne r0, [r1]
	addne r0, ip, r0
	bne _020B3558
_020B3554:
	mov r0, #0
_020B3558:
	ldr r0, [r0, #0xc]
	and r0, r0, #0xf
	bx lr
	arm_func_end NNS_G3dMdlGetMdlLightEnableFlag

	arm_func_start NNS_G3dMdlSetMdlDiffAll
NNS_G3dMdlSetMdlDiffAll: ; 0x020B3564
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3580:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlDiff
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3580
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlDiffAll

	arm_func_start NNS_G3dMdlSetMdlAmbAll
NNS_G3dMdlSetMdlAmbAll: ; 0x020B35A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B35C0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlAmb
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B35C0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlAmbAll

	arm_func_start NNS_G3dMdlSetMdlSpecAll
NNS_G3dMdlSetMdlSpecAll: ; 0x020B35E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3600:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlSpec
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3600
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlSpecAll

	arm_func_start NNS_G3dMdlSetMdlEmiAll
NNS_G3dMdlSetMdlEmiAll: ; 0x020B3624
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3640:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlEmi
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3640
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlEmiAll

	arm_func_start NNS_G3dMdlSetMdlLightEnableFlagAll
NNS_G3dMdlSetMdlLightEnableFlagAll: ; 0x020B3664
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3680:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlLightEnableFlag
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3680
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlLightEnableFlagAll

	arm_func_start NNS_G3dMdlSetMdlPolygonModeAll
NNS_G3dMdlSetMdlPolygonModeAll: ; 0x020B36A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B36C0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlPolygonMode
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B36C0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlPolygonModeAll

	arm_func_start NNS_G3dMdlSetMdlCullModeAll
NNS_G3dMdlSetMdlCullModeAll: ; 0x020B36E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3700:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlCullMode
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3700
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlCullModeAll

	arm_func_start NNS_G3dMdlSetMdlPolygonIDAll
NNS_G3dMdlSetMdlPolygonIDAll: ; 0x020B3724
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3740:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlPolygonID
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3740
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlPolygonIDAll

	arm_func_start NNS_G3dMdlSetMdlAlphaAll
NNS_G3dMdlSetMdlAlphaAll: ; 0x020B3764
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3780:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlAlpha
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3780
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlAlphaAll

	arm_func_start NNS_G3dMdlSetMdlFogEnableFlagAll
NNS_G3dMdlSetMdlFogEnableFlagAll: ; 0x020B37A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B37C0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlFogEnableFlag
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B37C0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlFogEnableFlagAll

	arm_func_start NNS_G3dMdlSetMdlDepthTestCondAll
NNS_G3dMdlSetMdlDepthTestCondAll: ; 0x020B37E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3800:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlDepthTestCond
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3800
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlDepthTestCondAll

	arm_func_start NNS_G3dMdlSetMdl1DotAll
NNS_G3dMdlSetMdl1DotAll: ; 0x020B3824
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3840:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdl1Dot
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3840
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdl1DotAll

	arm_func_start NNS_G3dMdlSetMdlFarClipAll
NNS_G3dMdlSetMdlFarClipAll: ; 0x020B3864
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B3880:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlFarClip
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B3880
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlFarClipAll

	arm_func_start NNS_G3dMdlSetMdlXLDepthUpdateAll
NNS_G3dMdlSetMdlXLDepthUpdateAll: ; 0x020B38A4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldrb r0, [r6, #0x18]
	mov r5, r1
	mov r4, #0
	cmp r0, #0
	ldmlsia sp!, {r4, r5, r6, pc}
_020B38C0:
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl NNS_G3dMdlSetMdlXLDepthUpdate
	ldrb r0, [r6, #0x18]
	add r4, r4, #1
	cmp r4, r0
	blo _020B38C0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_G3dMdlSetMdlXLDepthUpdateAll