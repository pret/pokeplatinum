	.include "macros/function.inc"
	.include "include/g2d_renderercore.inc"

	.extern Unk_021C5A88
	.extern Unk_020F9658
	.extern Unk_020F9670

	.text


	arm_func_start DoAffineTransforme_
DoAffineTransforme_: ; 0x020AB96C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r4, [r1, #0]
	ldr r3, _020ABC10 ; =0x01FF0000
	and r3, r4, r3
	mov r3, r3, lsr #0x10
	mov r3, r3, lsl #0x10
	mov r3, r3, asr #0x10
	cmp r3, #0xff
	orrgt r3, r3, #0xff00
	movgt r3, r3, lsl #0x10
	movgt r3, r3, asr #0x10
	mov r3, r3, lsl #0xc
	str r3, [sp, #8]
	ldr r3, [r1, #0]
	and r3, r3, #0xff
	cmp r3, #0x7f
	orrgt r3, r3, #0xff00
	movgt r3, r3, lsl #0x10
	movgt r3, r3, asr #0x10
	mov r3, r3, lsl #0xc
	str r3, [sp, #0xc]
	ldr r5, [r1, #0]
	and r4, r5, #0x300
	cmp r4, #0x100
	cmpne r4, #0x300
	andne r3, r5, #0x30000000
	orrne r4, r4, r3
	cmp r4, #0x300
	bne _020ABA30
	ldr r3, _020ABC14 ; =0xC000C000
	ldr r4, _020ABC18 ; =0x020F9670
	and r3, r5, r3
	and r5, r3, #0xc0000000
	and r3, r3, #0xc000
	mov r6, r5, lsr #0x1e
	mov r5, r3, asr #0xe
	ldr r3, _020ABC1C ; =0x020F9658
	mov r6, r6, lsl #1
	add r4, r4, r5, lsl #3
	add r3, r3, r5, lsl #3
	ldrh r5, [r6, r4]
	ldr r7, [sp, #8]
	ldrh r3, [r6, r3]
	ldr r4, [sp, #0xc]
	add r5, r7, r5, lsl #11
	add r3, r4, r3, lsl #11
	str r5, [sp, #8]
	str r3, [sp, #0xc]
_020ABA30:
	ldr r6, [r0, #8]
	ldr r4, [sp, #0xc]
	add r3, sp, #8
	smull r4, r7, r6, r4
	cmp r3, r3
	addeq r3, sp, #0
	adds r8, r4, #0x1000
	ldr r5, [r0, #0]
	ldr r4, [sp, #8]
	adc r6, r7, #0
	smlal r8, r6, r5, r4
	mov r4, r8, lsr #0xc
	orr r4, r4, r6, lsl #20
	str r4, [r3, #0]
	ldr r6, [r0, #0xc]
	ldr r4, [sp, #0xc]
	ldr r5, [r0, #4]
	smull r4, r7, r6, r4
	adds r8, r4, #0x1000
	ldr r4, [sp, #8]
	adc r6, r7, #0
	smlal r8, r6, r5, r4
	mov r5, r8, lsr #0xc
	add r4, sp, #0
	orr r5, r5, r6, lsl #20
	str r5, [r3, #4]
	cmp r3, r4
	bne _020ABAB0
	ldr r4, [sp]
	ldr r3, [sp, #4]
	str r4, [sp, #8]
	str r3, [sp, #0xc]
_020ABAB0:
	ldr r3, _020ABC20 ; =0x021C5A88
	ldr r3, [r3, #0]
	ldr r3, [r3, #4]
	cmp r3, #0
	beq _020ABAF8
	cmp r3, #2
	moveq r5, #0x300
	movne r5, #0x100
	ldr r4, [r1, #0]
	ldr r3, _020ABC24 ; =0xC1FFFCFF
	cmp r5, #0x100
	andeq r3, r4, r3
	orreq r3, r3, r5
	streq r3, [r1]
	beq _020ABAF8
	and r3, r4, r3
	orr r3, r3, r5
	str r3, [r1, #0]
_020ABAF8:
	ldr r6, [r1, #0]
	ldr r5, _020ABC18 ; =0x020F9670
	and r4, r6, #0x300
	cmp r4, #0x100
	cmpne r4, #0x300
	andne r3, r6, #0x30000000
	orrne r4, r4, r3
	ldr r3, _020ABC14 ; =0xC000C000
	ldr r8, _020ABC1C ; =0x020F9658
	and r3, r6, r3
	and r6, r3, #0xc0000000
	and r3, r3, #0xc000
	mov lr, r3, asr #0xe
	mov r6, r6, lsr #0x1e
	mov r3, r6, lsl #1
	add r5, r5, lr, lsl #3
	ldrh r5, [r3, r5]
	add lr, r8, lr, lsl #3
	ldrh r3, [r3, lr]
	mov ip, r5, asr #1
	mov r5, ip, lsl #0xc
	ldr r6, [r0, #0]
	rsb r7, r5, #0
	mla r7, r6, ip, r7
	ldr r6, [r0, #8]
	mov r3, r3, asr #1
	mla r7, r6, r3, r7
	ldr lr, [sp, #8]
	cmp r4, #0x300
	add r6, lr, r7
	str r6, [sp, #8]
	mov lr, r3, lsl #0xc
	ldr r6, [r0, #4]
	rsb r7, lr, #0
	mla r7, r6, ip, r7
	ldr r0, [r0, #0xc]
	ldr r6, [sp, #0xc]
	mla r3, r0, r3, r7
	add r0, r6, r3
	str r0, [sp, #0xc]
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020ABBC0
	ldr r3, [sp, #8]
	ldr r0, [sp, #0xc]
	sub r3, r3, r5
	sub r0, r0, lr
	str r3, [sp, #8]
	str r0, [sp, #0xc]
_020ABBC0:
	ldr r4, [sp, #8]
	ldr r0, [r2, #0]
	ldr r3, [sp, #0xc]
	add r4, r4, r0
	str r4, [sp, #8]
	ldr r0, [r2, #4]
	mov r4, r4, asr #0xc
	add r0, r3, r0
	str r0, [sp, #0xc]
	mov r2, r0, asr #0xc
	ldr r3, [r1, #0]
	ldr r0, _020ABC28 ; =0xFE00FF00
	and r2, r2, #0xff
	and r0, r3, r0
	mov r3, r4, lsl #0x17
	orr r0, r0, r2
	orr r0, r0, r3, lsr #7
	str r0, [r1, #0]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020ABC10: .word 0x01FF0000
_020ABC14: .word 0xC000C000
_020ABC18: .word Unk_020F9670
_020ABC1C: .word Unk_020F9658
_020ABC20: .word Unk_021C5A88
_020ABC24: .word 0xC1FFFCFF
_020ABC28: .word 0xFE00FF00
	arm_func_end DoAffineTransforme_

	arm_func_start DrawCellToSurface2D_
DrawCellToSurface2D_: ; 0x020ABC2C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x40
	ldr r2, _020AC02C ; =0x021C5A88
	mov r6, r0
	ldr r4, [r2, #0]
	ldr r0, _020AC02C ; =0x021C5A88
	ldr r5, [r4, #0x2c]
	mov fp, r1
	cmp r5, #0
	ldreq r5, _020AC030 ; =0x020F972C
	ldr r2, [r0, #0]
	ldr r3, [r5, #0x10]
	str r3, [sp, #0x18]
	ldr r1, [r5, #0x14]
	str r1, [sp, #0x1c]
	ldr r0, [r6, #0]
	sub r0, r3, r0
	str r0, [sp, #0x18]
	ldr r0, [r6, #4]
	sub r0, r1, r0
	str r0, [sp, #0x1c]
	ldr r1, [r2, #0x24]
	ldr r0, [r2, #0x10]
	cmp r1, #0
	str r0, [sp, #0xc]
	bne _020ABCA8
	ldr r0, [r2, #0x28]
	cmp r0, #0
	movne r0, #1
	strne r0, [sp]
	bne _020ABCB0
_020ABCA8:
	mov r0, #0
	str r0, [sp]
_020ABCB0:
	ldrh r0, [fp]
	mov r8, #0
	cmp r0, #0
	addls sp, sp, #0x40
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0x400
	str r0, [sp, #0x10]
	ldr r0, _020AC034 ; =0x0000FFFE
	ldr r7, _020AC02C ; =0x021C5A88
	add r0, r0, #1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	rsb r0, r0, #0
	str r0, [sp, #0x10]
_020ABCE8:
	mov r0, #6
	mul r1, r8, r0
	ldr r2, [r7, #0]
	mov r0, #1
	str r0, [r2, #0x30]
	ldr r0, [fp, #4]
	add r2, r0, r1
	ldrh r0, [r0, r1]
	strh r0, [r4, #0x38]
	ldrh r0, [r2, #2]
	strh r0, [r4, #0x3a]
	ldrh r0, [r2, #4]
	strh r0, [r4, #0x3c]
	ldr r3, [r6, #0x20]
	cmp r3, #0
	beq _020ABD38
	ldr r0, [r7, #0]
	mov r1, fp
	mov r2, r8
	blx r3
_020ABD38:
	ldr r0, [r7, #0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _020AC00C
	ldr r0, [sp]
	ldr r1, [r4, #0x3c]
	cmp r0, #0
	ldr r0, [sp, #0x10]
	and r2, r1, r0
	ldr r0, [sp, #0xc]
	mov r1, r1, lsl #0x16
	add r1, r0, r1, lsr #22
	ldr r0, [sp, #0x10]
	and r0, r1, r0, lsr #22
	orr r0, r2, r0
	str r0, [r4, #0x3c]
	beq _020ABE7C
	ldr r0, [r4, #0x38]
	ldr lr, [r7]
	mov r1, r0, lsl #2
	mov r0, r0, lsl #3
	mov r1, r1, lsr #0x1f
	mov r0, r0, lsr #0x1f
	orr sl, r0, r1, lsl #1
	ldr sb, [lr, #0x28]
	ldr r1, [r6, #0x14]
	add r0, sb, sl, lsl #2
	add r0, r0, r1, lsl #1
	ldrh r1, [r0, #0xe]
	ldr r0, [sp, #0x14]
	str r1, [sp, #8]
	cmp r1, r0
	bne _020ABE48
	cmp sl, #0
	bne _020ABDD8
	ldr r1, [lr, #0x20]
	mov r0, sb
	blx r1
	str r0, [sp, #8]
	b _020ABE34
_020ABDD8:
	add ip, sp, #0x20
	ldmia sb, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	tst sl, #1
	beq _020ABE04
	ldr r1, [sp, #0x20]
	ldr r0, [sp, #0x24]
	rsb r1, r1, #0
	str r1, [sp, #0x20]
	rsb r0, r0, #0
	str r0, [sp, #0x24]
_020ABE04:
	tst sl, #2
	beq _020ABE24
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	rsb r1, r1, #0
	str r1, [sp, #0x28]
	rsb r0, r0, #0
	str r0, [sp, #0x2c]
_020ABE24:
	ldr r1, [lr, #0x20]
	add r0, sp, #0x20
	blx r1
	str r0, [sp, #8]
_020ABE34:
	ldr r1, [r6, #0x14]
	add r0, sb, sl, lsl #2
	add r1, r0, r1, lsl #1
	ldr r0, [sp, #8]
	strh r0, [r1, #0xe]
_020ABE48:
	ldr r1, [r5, #0]
	add r0, sp, #0x30
	str r1, [sp, #0x30]
	ldr r2, [r5, #4]
	add r1, r4, #0x38
	str r2, [sp, #0x34]
	ldr r3, [r5, #8]
	add r2, sp, #0x18
	str r3, [sp, #0x38]
	ldr r3, [r5, #0xc]
	str r3, [sp, #0x3c]
	bl DoAffineTransforme_
	b _020ABFCC
_020ABE7C:
	ldr r0, _020AC034 ; =0x0000FFFE
	str r0, [sp, #8]
	ldr r0, [r7, #0]
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020ABF84
	ldr r2, [r4, #0x38]
	ldr r1, _020AC038 ; =0xC000C000
	mov sl, r2, lsl #3
	and sb, r2, r1
	bl NNS_G2dIsRndCoreFlipH
	eor r0, r0, sl, lsr #31
	ldr r1, [r4, #0x38]
	str r0, [sp, #4]
	ldr r0, [r7, #0]
	mov sl, r1, lsl #2
	bl NNS_G2dIsRndCoreFlipV
	eor r2, r0, sl, lsr #31
	ldr r0, [r4, #0x38]
	bic r1, r0, #0x10000000
	ldr r0, [sp, #4]
	orr r0, r1, r0, lsl #28
	bic r0, r0, #0x20000000
	orr r0, r0, r2, lsl #29
	str r0, [r4, #0x38]
	ldr r0, [r7, #0]
	bl NNS_G2dIsRndCoreFlipH
	cmp r0, #0
	beq _020ABF34
	and r1, sb, #0xc000
	mov r2, r1, asr #0xe
	ldr r1, _020AC03C ; =0x020F9670
	and r3, sb, #0xc0000000
	mov r3, r3, lsr #0x1e
	add r2, r1, r2, lsl #3
	mov r3, r3, lsl #1
	ldr r0, [r4, #0x38]
	ldr r1, _020AC040 ; =0xFE00FFFF
	ldrh r2, [r3, r2]
	and r1, r0, r1
	mov r0, r0, lsl #7
	add r0, r2, r0, lsr #23
	rsb r0, r0, #0
	mov r0, r0, lsl #0x17
	orr r0, r1, r0, lsr #7
	str r0, [r4, #0x38]
_020ABF34:
	ldr r0, [r7, #0]
	bl NNS_G2dIsRndCoreFlipV
	cmp r0, #0
	beq _020ABF84
	and r1, sb, #0xc000
	mov r3, r1, asr #0xe
	and r1, sb, #0xc0000000
	mov r1, r1, lsr #0x1e
	mov r2, r1, lsl #1
	ldr r1, _020AC044 ; =0x020F9658
	ldr r0, [r4, #0x38]
	add r1, r1, r3, lsl #3
	ldrh r1, [r2, r1]
	bic r2, r0, #0xff
	mov r0, r0, lsl #0x18
	add r0, r1, r0, lsr #24
	rsb r0, r0, #0
	and r0, r0, #0xff
	orr r0, r2, r0
	str r0, [r4, #0x38]
_020ABF84:
	ldr r2, [r4, #0x38]
	ldr r0, _020AC040 ; =0xFE00FFFF
	ldr r1, [sp, #0x18]
	and r3, r2, r0
	mov r2, r2, lsl #7
	mov r0, r1, asr #0xc
	add r0, r0, r2, lsr #23
	mov r0, r0, lsl #0x17
	orr r0, r3, r0, lsr #7
	str r0, [r4, #0x38]
	bic r2, r0, #0xff
	mov r1, r0, lsl #0x18
	ldr r0, [sp, #0x1c]
	mov r0, r0, asr #0xc
	add r0, r0, r1, lsr #24
	and r0, r0, #0xff
	orr r0, r2, r0
	str r0, [r4, #0x38]
_020ABFCC:
	ldr r3, [r7, #0]
	ldr r1, [sp, #8]
	ldr r3, [r3, #0x1c]
	add r0, r4, #0x38
	mov r2, #0
	blx r3
	cmp r0, #1
	addne sp, sp, #0x40
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r3, [r6, #0x24]
	cmp r3, #0
	beq _020AC00C
	ldr r0, [r7, #0]
	mov r1, fp
	mov r2, r8
	blx r3
_020AC00C:
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	mov r8, r0, lsr #0x10
	ldrh r1, [fp]
	cmp r1, r0, lsr #16
	bhi _020ABCE8
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020AC02C: .word Unk_021C5A88
_020AC030: .word Unk_020F972C
_020AC034: .word 0x0000FFFE
_020AC038: .word 0xC000C000
_020AC03C: .word Unk_020F9670
_020AC040: .word 0xFE00FFFF
_020AC044: .word Unk_020F9658
	arm_func_end DrawCellToSurface2D_

	arm_func_start DrawOamToSurface3D_
DrawOamToSurface3D_: ; 0x020AC048
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	ldr r1, _020AC27C ; =0x021C5A88
	mov r7, r0
	ldr r0, [r1, #0]
	add r0, r0, #0x40
	bl G3_LoadMtx43
	ldr r0, _020AC27C ; =0x021C5A88
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x24]
	cmp r1, #0
	beq _020AC20C
	ldr r2, [r7, #0]
	ldr r1, _020AC280 ; =0xC000C000
	and r4, r2, r1
	bl NNS_G2dIsRndCoreFlipH
	cmp r0, #0
	ldr r0, [r7, #0]
	beq _020AC0D8
	mov r0, r0, lsl #7
	mov r3, r0, lsr #0x17
	and r2, r4, #0xc000
	and r1, r4, #0xc0000000
	mov r1, r1, lsr #0x1e
	ldr r0, _020AC284 ; =0x020F9670
	mov r2, r2, asr #0xe
	mov r1, r1, lsl #1
	add r0, r0, r2, lsl #3
	cmp r3, #0xff
	ldrh r1, [r1, r0]
	orrgt r0, r3, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r3, r0, asr #0x10
	add r0, r3, r1
	rsb r0, r0, #0
	b _020AC0F0
_020AC0D8:
	mov r0, r0, lsl #7
	mov r0, r0, lsr #0x17
	cmp r0, #0xff
	orrgt r0, r0, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r0, r0, asr #0x10
_020AC0F0:
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	ldr r0, _020AC27C ; =0x021C5A88
	mov r1, r1, lsl #0x10
	ldr r0, [r0, #0]
	mov r5, r1, asr #0x10
	bl NNS_G2dIsRndCoreFlipV
	cmp r0, #0
	ldr r0, [r7, #0]
	beq _020AC15C
	mov r0, r0, lsl #0x18
	mov r3, r0, lsr #0x18
	and r2, r4, #0xc000
	and r1, r4, #0xc0000000
	mov r1, r1, lsr #0x1e
	ldr r0, _020AC288 ; =0x020F9658
	mov r2, r2, asr #0xe
	mov r1, r1, lsl #1
	add r0, r0, r2, lsl #3
	cmp r3, #0x7f
	ldrh r1, [r1, r0]
	orrgt r0, r3, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r3, r0, asr #0x10
	add r0, r3, r1
	rsb r0, r0, #0
	b _020AC174
_020AC15C:
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	cmp r0, #0x7f
	orrgt r0, r0, #0xff00
	movgt r0, r0, lsl #0x10
	movgt r0, r0, asr #0x10
_020AC174:
	mov r0, r0, lsl #0x10
	mov r4, r0, lsr #0x10
	ldr r0, _020AC27C ; =0x021C5A88
	ldr r1, [r7, #0]
	ldr r0, [r0, #0]
	mov r6, r1, lsl #3
	bl NNS_G2dIsRndCoreFlipH
	ldr r2, [r7, #0]
	ldr r1, _020AC27C ; =0x021C5A88
	eor r6, r0, r6, lsr #31
	ldr r0, [r1, #0]
	mov r8, r2, lsl #2
	bl NNS_G2dIsRndCoreFlipV
	ldr r1, [r7, #0]
	eor r3, r0, r8, lsr #31
	bic r2, r1, #0x10000000
	orr r2, r2, r6, lsl #28
	bic r2, r2, #0x20000000
	mov r1, r4, lsl #0x10
	orr r3, r2, r3, lsl #29
	str r2, [r7, #0]
	str r3, [r7, #0]
	ldr r2, _020AC27C ; =0x021C5A88
	mov r0, r5
	ldr r5, [r2, #0]
	mov r1, r1, asr #0x10
	ldr r4, [r5, #8]
	mov r3, r7
	add r4, r4, #0xc
	str r4, [sp]
	ldr r4, [r5, #0x14]
	mvn r2, #0
	str r4, [sp, #4]
	ldr r4, [r5, #0x18]
	str r4, [sp, #8]
	bl NNS_G2dDrawOneOam3DDirectWithPosFast
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_020AC20C:
	ldr r2, _020AC27C ; =0x021C5A88
	ldr r0, [r7, #0]
	ldr r5, [r2, #0]
	mov r0, r0, lsl #7
	ldr r1, [r7, #0]
	ldr r4, [r5, #8]
	mov r0, r0, lsr #0x17
	cmp r0, #0xff
	orrgt r0, r0, #0xff00
	mov r1, r1, lsl #0x18
	add r4, r4, #0xc
	movgt r0, r0, lsl #0x10
	str r4, [sp]
	ldr r4, [r5, #0x14]
	mov r1, r1, lsr #0x18
	movgt r0, r0, asr #0x10
	cmp r1, #0x7f
	orrgt r1, r1, #0xff00
	movgt r1, r1, lsl #0x10
	str r4, [sp, #4]
	ldr r4, [r5, #0x18]
	movgt r1, r1, asr #0x10
	mov r3, r7
	mvn r2, #0
	str r4, [sp, #8]
	bl NNS_G2dDrawOneOam3DDirectWithPosFast
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020AC27C: .word Unk_021C5A88
_020AC280: .word 0xC000C000
_020AC284: .word Unk_020F9670
_020AC288: .word Unk_020F9658
	arm_func_end DrawOamToSurface3D_

	arm_func_start DrawCellToSurface3D_
DrawCellToSurface3D_: ; 0x020AC28C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r1
	ldr r5, _020AC350 ; =0x021C5A88
	ldrh r1, [sb]
	ldr r7, [r5, #0]
	mov sl, r0
	mov r8, #0
	cmp r1, #0
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r6, #1
	mov r4, #6
_020AC2B8:
	mul r1, r8, r4
	ldr r0, [r5, #0]
	str r6, [r0, #0x30]
	ldr r2, [sb, #4]
	ldrh r0, [r2, r1]
	add r1, r2, r1
	strh r0, [r7, #0x38]
	ldrh r0, [r1, #2]
	strh r0, [r7, #0x3a]
	ldrh r0, [r1, #4]
	strh r0, [r7, #0x3c]
	ldr r3, [sl, #0x20]
	cmp r3, #0
	beq _020AC300
	ldr r0, [r5, #0]
	mov r1, sb
	mov r2, r8
	blx r3
_020AC300:
	ldr r0, [r5, #0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _020AC318
	add r0, r7, #0x38
	bl DrawOamToSurface3D_
_020AC318:
	ldr r3, [sl, #0x24]
	cmp r3, #0
	beq _020AC334
	ldr r0, [r5, #0]
	mov r1, sb
	mov r2, r8
	blx r3
_020AC334:
	ldrh r1, [sb]
	add r0, r8, #1
	mov r0, r0, lsl #0x10
	cmp r1, r0, lsr #16
	mov r8, r0, lsr #0x10
	bhi _020AC2B8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020AC350: .word Unk_021C5A88
	arm_func_end DrawCellToSurface3D_

	arm_func_start NNS_G2dInitRndCore
NNS_G2dInitRndCore: ; 0x020AC354
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, r4
	mov r0, #0
	mov r2, #0x70
	bl MIi_CpuClear16
	mov r1, #0
	str r1, [r4, #0]
	mov r0, #2
	stmib r4, {r0, r1}
	str r1, [r4, #0xc]
	str r1, [r4, #0x24]
	mov r0, #1
	str r0, [r4, #0x30]
	str r1, [r4, #0x28]
	ldmia sp!, {r4, pc}
	arm_func_end NNS_G2dInitRndCore

	arm_func_start NNS_G2dSetRndCoreImageProxy
NNS_G2dSetRndCoreImageProxy: ; 0x020AC394
	str r1, [r0, #8]
	str r2, [r0, #0xc]
	bx lr
	arm_func_end NNS_G2dSetRndCoreImageProxy

	arm_func_start NNS_G2dSetRndCoreOamRegisterFunc
NNS_G2dSetRndCoreOamRegisterFunc: ; 0x020AC3A0
	str r1, [r0, #0x1c]
	str r2, [r0, #0x20]
	bx lr
	arm_func_end NNS_G2dSetRndCoreOamRegisterFunc

	arm_func_start NNS_G2dSetRndCoreAffineOverwriteMode
NNS_G2dSetRndCoreAffineOverwriteMode: ; 0x020AC3AC
	str r1, [r0, #4]
	bx lr
	arm_func_end NNS_G2dSetRndCoreAffineOverwriteMode

	arm_func_start NNS_G2dSetRndCoreCurrentMtx3D
NNS_G2dSetRndCoreCurrentMtx3D: ; 0x020AC3B4
	ldr r1, _020AC418 ; =0x021C5A88
	mov r3, #0
	ldr ip, [r1]
	mov r1, #0x1000
	str r0, [ip, #0x2c]
	ldr r2, [r0, #0]
	str r2, [ip, #0x40]
	ldr r2, [r0, #4]
	str r2, [ip, #0x44]
	str r3, [ip, #0x48]
	ldr r2, [r0, #8]
	str r2, [ip, #0x4c]
	ldr r2, [r0, #0xc]
	str r2, [ip, #0x50]
	str r3, [ip, #0x54]
	str r3, [ip, #0x58]
	str r3, [ip, #0x5c]
	str r1, [ip, #0x60]
	ldr r1, [r0, #0x10]
	str r1, [ip, #0x64]
	ldr r0, [r0, #0x14]
	str r0, [ip, #0x68]
	ldr r0, [ip, #0x34]
	str r0, [ip, #0x6c]
	bx lr
	; .align 2, 0
_020AC418: .word Unk_021C5A88
	arm_func_end NNS_G2dSetRndCoreCurrentMtx3D

	arm_func_start NNS_G2dSetRndCoreCurrentMtx2D
NNS_G2dSetRndCoreCurrentMtx2D: ; 0x020AC41C
	ldr r2, _020AC430 ; =0x021C5A88
	ldr r2, [r2, #0]
	str r0, [r2, #0x2c]
	str r1, [r2, #0x28]
	bx lr
	; .align 2, 0
_020AC430: .word Unk_021C5A88
	arm_func_end NNS_G2dSetRndCoreCurrentMtx2D

	arm_func_start NNS_G2dSetRndCore3DSoftSpriteZvalue
NNS_G2dSetRndCore3DSoftSpriteZvalue: ; 0x020AC434
	str r1, [r0, #0x34]
	bx lr
	arm_func_end NNS_G2dSetRndCore3DSoftSpriteZvalue

	arm_func_start NNS_G2dSetRndCoreSurface
NNS_G2dSetRndCoreSurface: ; 0x020AC43C
	str r1, [r0, #0]
	bx lr
	arm_func_end NNS_G2dSetRndCoreSurface

	arm_func_start NNS_G2dIsRndCoreFlipH
NNS_G2dIsRndCoreFlipH: ; 0x020AC444
	ldr r0, [r0, #0x24]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end NNS_G2dIsRndCoreFlipH

	arm_func_start NNS_G2dIsRndCoreFlipV
NNS_G2dIsRndCoreFlipV: ; 0x020AC458
	ldr r0, [r0, #0x24]
	tst r0, #2
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end NNS_G2dIsRndCoreFlipV

	arm_func_start NNS_G2dSetRndCoreFlipMode
NNS_G2dSetRndCoreFlipMode: ; 0x020AC46C
	cmp r1, #0
	ldr r1, [r0, #0x24]
	orrne r1, r1, #1
	biceq r1, r1, #1
	str r1, [r0, #0x24]
	ldr r1, [r0, #0x24]
	cmp r2, #0
	orrne r1, r1, #2
	biceq r1, r1, #2
	str r1, [r0, #0x24]
	bx lr
	arm_func_end NNS_G2dSetRndCoreFlipMode

	arm_func_start NNS_G2dRndCoreBeginRendering
NNS_G2dRndCoreBeginRendering: ; 0x020AC498
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _020AC59C ; =0x021C5A88
	mov r4, r0
	str r4, [r2, #0]
	ldr r0, [r4, #0]
	ldr r5, [r0, #0x14]
	cmp r5, #0
	bne _020AC550
	ldr lr, _020AC5A0 ; =0x04000440
	mov r1, #0
	str r1, [lr]
	str r1, [lr, #4]
	ldr ip, [r4]
	mov r0, #1
	ldmia ip, {r3, ip}
	rsb r3, r3, #0
	str r3, [lr, #0x30]
	rsb r3, ip, #0
	str r3, [lr, #0x30]
	str r1, [lr, #0x30]
	str r0, [lr]
	ldr r0, [r2, #0]
	ldr r5, [r0, #8]
	mov r0, r5
	bl NNS_G2dIsImageReadyToUse
	cmp r0, #0
	moveq r0, #0
	beq _020AC514
	mov r0, r5
	mov r1, #0
	bl NNS_G2dGetImageLocation
_020AC514:
	ldr r1, _020AC59C ; =0x021C5A88
	str r0, [r4, #0x14]
	ldr r0, [r1, #0]
	mov r1, #0
	ldr r5, [r0, #0xc]
	mov r0, r5
	bl NNS_G2dIsImagePaletteReadyToUse
	cmp r0, #0
	moveq r0, #0
	beq _020AC548
	mov r0, r5
	mov r1, #0
	bl NNS_G2dGetImagePaletteLocation
_020AC548:
	str r0, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, pc}
_020AC550:
	ldr r4, [r4, #8]
	mov r1, r5
	mov r0, r4
	bl NNS_G2dIsImageReadyToUse
	cmp r0, #0
	moveq r1, #0
	beq _020AC58C
	mov r0, r4
	mov r1, r5
	bl NNS_G2dGetImageLocation
	ldr r1, [r4, #0x20]
	and r1, r1, #0x700000
	mov r1, r1, asr #0x14
	add r1, r1, #5
	mov r1, r0, lsr r1
_020AC58C:
	ldr r0, _020AC59C ; =0x021C5A88
	ldr r0, [r0, #0]
	str r1, [r0, #0x10]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AC59C: .word Unk_021C5A88
_020AC5A0: .word 0x04000440
	arm_func_end NNS_G2dRndCoreBeginRendering

	arm_func_start NNS_G2dRndCoreEndRendering
NNS_G2dRndCoreEndRendering: ; 0x020AC5A4
	ldr r0, _020AC600 ; =0x021C5A88
	ldr r3, [r0, #0]
	ldr r1, [r3, #0]
	ldr r1, [r1, #0x14]
	cmp r1, #0
	bne _020AC5D8
	ldr r1, _020AC604 ; =0x04000440
	mov r0, #0
	str r0, [r1, #0]
	mov r0, #1
	str r0, [r1, #8]
	str r0, [r1, #0]
	b _020AC5F0
_020AC5D8:
	mov r2, #0
	str r2, [r3, #0x10]
	ldr r1, [r0, #0]
	str r2, [r1, #0x2c]
	ldr r0, [r0, #0]
	str r2, [r0, #0x28]
_020AC5F0:
	ldr r0, _020AC600 ; =0x021C5A88
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020AC600: .word Unk_021C5A88
_020AC604: .word 0x04000440
	arm_func_end NNS_G2dRndCoreEndRendering

	arm_func_start NNS_G2dRndCoreDrawCell
NNS_G2dRndCoreDrawCell: ; 0x020AC608
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _020AC6B8 ; =0x021C5A88
	mov r5, r0
	ldr r2, [r1, #0]
	ldr r4, [r2, #0]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #1
	str r0, [r2, #0x30]
	ldr r2, [r4, #0x18]
	cmp r2, #0
	beq _020AC648
	ldr r0, [r1, #0]
	mov r1, r5
	blx r2
_020AC648:
	ldr r0, _020AC6B8 ; =0x021C5A88
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _020AC698
	ldr r0, [r4, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020AC698
_020AC66C: ; jump table
	b _020AC67C ; case 0
	b _020AC68C ; case 1
	b _020AC68C ; case 2
	b _020AC698 ; case 3
_020AC67C:
	mov r0, r4
	mov r1, r5
	bl DrawCellToSurface3D_
	b _020AC698
_020AC68C:
	mov r0, r4
	mov r1, r5
	bl DrawCellToSurface2D_
_020AC698:
	ldr r2, [r4, #0x1c]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _020AC6B8 ; =0x021C5A88
	mov r1, r5
	ldr r0, [r0, #0]
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020AC6B8: .word Unk_021C5A88
	arm_func_end NNS_G2dRndCoreDrawCell

	arm_func_start NNS_G2dRndCoreDrawCellVramTransfer
NNS_G2dRndCoreDrawCellVramTransfer: ; 0x020AC6BC
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020AC7A0 ; =0x021C5A88
	mov r6, r0
	ldr r3, [r2, #0]
	mov r4, r1
	ldr r5, [r3, #0]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, #1
	str r0, [r3, #0x30]
	ldr r3, [r5, #0x18]
	cmp r3, #0
	beq _020AC700
	ldr r0, [r2, #0]
	mov r1, r6
	blx r3
_020AC700:
	ldr r0, _020AC7A0 ; =0x021C5A88
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	beq _020AC780
	mvn r0, #0
	cmp r4, r0
	beq _020AC744
	mov r0, r4
	ldr r4, [r5, #0x14]
	bl NNSi_G2dGetCellTransferState
	mov r3, #1
	mvn r1, r3, lsl r4
	ldr r2, [r0, #0x20]
	and r1, r2, r1
	orr r1, r1, r3, lsl r4
	str r1, [r0, #0x20]
_020AC744:
	ldr r0, [r5, #0x14]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020AC780
_020AC754: ; jump table
	b _020AC764 ; case 0
	b _020AC774 ; case 1
	b _020AC774 ; case 2
	b _020AC780 ; case 3
_020AC764:
	mov r0, r5
	mov r1, r6
	bl DrawCellToSurface3D_
	b _020AC780
_020AC774:
	mov r0, r5
	mov r1, r6
	bl DrawCellToSurface2D_
_020AC780:
	ldr r2, [r5, #0x1c]
	cmp r2, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _020AC7A0 ; =0x021C5A88
	mov r1, r6
	ldr r0, [r0, #0]
	blx r2
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020AC7A0: .word Unk_021C5A88
	arm_func_end NNS_G2dRndCoreDrawCellVramTransfer

	.rodata


	.global Unk_020F9724
Unk_020F9724: ; 0x020F9724
	.incbin "incbin/arm9_rodata.bin", 0x14AE4, 0x14AE6 - 0x14AE4

	.global Unk_020F9726
Unk_020F9726: ; 0x020F9726
	.incbin "incbin/arm9_rodata.bin", 0x14AE6, 0x14AE8 - 0x14AE6

	.global Unk_020F9728
Unk_020F9728: ; 0x020F9728
	.incbin "incbin/arm9_rodata.bin", 0x14AE8, 0x14AEA - 0x14AE8

	.global Unk_020F972A
Unk_020F972A: ; 0x020F972A
	.incbin "incbin/arm9_rodata.bin", 0x14AEA, 0x14AEC - 0x14AEA

	.global Unk_020F972C
Unk_020F972C: ; 0x020F972C
	.incbin "incbin/arm9_rodata.bin", 0x14AEC, 0x18



	.bss


	.global Unk_021C5A88
Unk_021C5A88: ; 0x021C5A88
	.space 0x4

