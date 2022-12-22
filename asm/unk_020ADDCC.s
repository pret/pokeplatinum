	.include "macros/function.inc"
	.include "include/unk_020ADDCC.inc"

	

	.text


	arm_func_start NNSi_G2dTextCanvasDrawString
NNSi_G2dTextCanvasDrawString: ; 0x020ADDCC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov fp, r0
	ldr r4, [fp, #8]
	ldr r5, [fp, #4]
	ldr r6, [sp, #0x38]
	add r0, sp, #0xc
	str r6, [sp, #0xc]
	ldr r6, [r5, #4]
	mov sl, r1
	mov sb, r2
	str r3, [sp, #8]
	ldrsb r8, [sp, #0x41]
	blx r6
	cmp r0, #0
	beq _020ADE54
	ldrsb r7, [sp, #0x40]
_020ADE10:
	cmp r0, #0xa
	beq _020ADE54
	ldr r1, [sp, #8]
	mov r2, sl
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [fp]
	mov r1, r5
	mov r3, sb
	bl NNS_G2dCharCanvasDrawChar
	add r0, r4, r0
	mla sl, r0, r7, sl
	mla sb, r0, r8, sb
	add r0, sp, #0xc
	blx r6
	cmp r0, #0
	bne _020ADE10
_020ADE54:
	ldr r1, [sp, #0x3c]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r0, #0xa
	ldreq r1, [sp, #0xc]
	ldr r0, [sp, #0x3c]
	movne r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNSi_G2dTextCanvasDrawString

	arm_func_start NNSi_G2dTextCanvasDrawTextAlign
NNSi_G2dTextCanvasDrawTextAlign: ; 0x020ADE80
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x34
	mov sl, r0
	ldr r0, [sl, #4]
	ldr r4, [sp, #0x60]
	ldr r0, [r0, #0]
	ldrsb r8, [sp, #0x65]
	ldrsb r0, [r0, #1]
	ldr r5, [sl, #0xc]
	ldrsb sb, [sp, #0x64]
	add r5, r5, r0
	rsb r0, r8, #0
	mul r0, r5, r0
	str r0, [sp, #0x20]
	mul r0, r5, r9
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x58]
	str r1, [sp, #0xc]
	str r2, [sp, #0x10]
	mov fp, r3
	str r4, [sp, #0x30]
	cmp r4, #0
	str r0, [sp, #0x58]
	addeq sp, sp, #0x34
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r2, [sp, #0x5c]
	mov r6, #0
	and r0, r2, #0x800
	add r1, fp, #1
	str r0, [sp, #0x18]
	add r0, r1, r1, lsr #31
	str r0, [sp, #0x2c]
	and r0, r2, #0x400
	str r0, [sp, #0x14]
	ldrb r0, [sp, #0x64]
	mov r7, r6
	str r0, [sp, #0x24]
	ldrb r0, [sp, #0x65]
	str r0, [sp, #0x28]
_020ADF1C:
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ldr r0, [sp, #0xc]
	add r4, r0, r6
	ldr r0, [sp, #0x10]
	add r5, r0, r7
	beq _020ADF58
	ldr r2, [sp, #0x30]
	mov r3, #0
	ldmib sl, {r0, r1}
	bl NNSi_G2dFontGetStringWidth
	sub r0, fp, r0
	mla r4, r0, sb, r4
	mla r5, r0, r8, r5
	b _020ADF90
_020ADF58:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _020ADF90
	ldr r2, [sp, #0x30]
	mov r3, #0
	ldmib sl, {r0, r1}
	bl NNSi_G2dFontGetStringWidth
	add r0, r0, #1
	add r0, r0, r0, lsr #31
	mov r1, r0, asr #1
	ldr r0, [sp, #0x2c]
	rsb r0, r1, r0, asr #1
	mla r4, r0, sb, r4
	mla r5, r0, r8, r5
_020ADF90:
	ldr r3, [sp, #0x30]
	mov r1, r4
	str r3, [sp]
	add r3, sp, #0x30
	str r3, [sp, #4]
	ldr r3, [sp, #0x24]
	mov r2, r5
	strb r3, [sp, #8]
	ldr r3, [sp, #0x28]
	mov r0, sl
	strb r3, [sp, #9]
	ldr r3, [sp, #0x58]
	bl NNSi_G2dTextCanvasDrawString
	ldr r0, [sp, #0x20]
	add r6, r6, r0
	ldr r0, [sp, #0x1c]
	add r7, r7, r0
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020ADF1C
	add sp, sp, #0x34
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNSi_G2dTextCanvasDrawTextAlign

	arm_func_start NNSi_G2dTextCanvasDrawText
NNSi_G2dTextCanvasDrawText: ; 0x020ADFE8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x28
	ldr r4, [sp, #0x44]
	mov r8, r0
	str r4, [sp]
	add r0, sp, #0x18
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldmib r8, {r1, r2, r3}
	ldr r4, [sp, #0x40]
	bl NNSi_G2dFontGetTextRect
	ldr r2, [sp, #0x18]
	ldr r0, [sp, #0x1c]
	str r2, [sp, #0x10]
	str r0, [sp, #0x14]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	tst r4, #0x10
	beq _020AE05C
	add r0, r2, #1
	rsb r0, r0, #0
	add r0, r0, r0, lsr #31
	ldrsb r1, [sp, #0x48]
	mov r2, r0, asr #1
	ldrsb r0, [sp, #0x49]
	mla r7, r2, r1, r7
	mla r6, r2, r0, r6
	b _020AE078
_020AE05C:
	tst r4, #0x20
	beq _020AE078
	ldrsb r1, [sp, #0x48]
	ldrsb r0, [sp, #0x49]
	rsb r2, r2, #0
	mla r7, r2, r1, r7
	mla r6, r2, r0, r6
_020AE078:
	tst r4, #2
	beq _020AE0AC
	ldr r0, [sp, #0x24]
	ldrsb r2, [sp, #0x49]
	add r0, r0, #1
	rsb r0, r0, #0
	add r0, r0, r0, lsr #31
	ldrsb r1, [sp, #0x48]
	mov r3, r0, asr #1
	rsb r0, r2, #0
	mla r7, r3, r0, r7
	mla r6, r3, r1, r6
	b _020AE0D0
_020AE0AC:
	tst r4, #4
	beq _020AE0D0
	ldrsb r1, [sp, #0x49]
	ldr r2, [sp, #0x24]
	ldrsb r0, [sp, #0x48]
	rsb r2, r2, #0
	rsb r1, r1, #0
	mla r7, r2, r1, r7
	mla r6, r2, r0, r6
_020AE0D0:
	str r5, [sp]
	ldr r1, [sp, #0x44]
	str r4, [sp, #4]
	ldrb r0, [sp, #0x48]
	str r1, [sp, #8]
	ldrb r4, [sp, #0x49]
	strb r0, [sp, #0xc]
	ldr r3, [sp, #0x20]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	strb r4, [sp, #0xd]
	bl NNSi_G2dTextCanvasDrawTextAlign
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G2dTextCanvasDrawText

	arm_func_start NNSi_G2dTextCanvasDrawTextRect
NNSi_G2dTextCanvasDrawTextRect: ; 0x020AE10C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr ip, [sp, #0x30]
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	tst ip, #0x100
	beq _020AE160
	ldr r0, [r7, #4]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x34]
	bl NNSi_G2dFontGetTextHeight
	ldrsb r2, [sp, #0x39]
	ldr r3, [sp, #0x28]
	ldrsb r1, [sp, #0x38]
	sub r3, r3, r0
	rsb r0, r2, #0
	mla r6, r3, r0, r6
	mla r5, r3, r1, r5
	b _020AE1A8
_020AE160:
	tst ip, #0x80
	beq _020AE1A8
	ldr r0, [r7, #4]
	ldr r1, [r7, #0xc]
	ldr r2, [sp, #0x34]
	bl NNSi_G2dFontGetTextHeight
	ldr r1, [sp, #0x28]
	add r0, r0, #1
	ldrsb r3, [sp, #0x39]
	add ip, r1, #1
	add r1, r0, r0, lsr #31
	ldrsb r2, [sp, #0x38]
	add r0, ip, ip, lsr #31
	mov r1, r1, asr #1
	rsb r1, r1, r0, asr #1
	rsb r0, r3, #0
	mla r6, r1, r0, r6
	mla r5, r1, r2, r5
_020AE1A8:
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r1, [sp]
	ldr r1, [sp, #0x34]
	str r0, [sp, #4]
	ldrb r0, [sp, #0x38]
	str r1, [sp, #8]
	ldrb ip, [sp, #0x39]
	strb r0, [sp, #0xc]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	strb ip, [sp, #0xd]
	bl NNSi_G2dTextCanvasDrawTextAlign
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNSi_G2dTextCanvasDrawTextRect