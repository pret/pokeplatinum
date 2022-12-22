	.include "macros/function.inc"
	.include "include/unk_020AC7A4.inc"

	

	.text


	arm_func_start GetGlyphIndex
GetGlyphIndex: ; 0x020AC7A4
	stmfd sp!, {r3, lr}
	ldrh r3, [r0, #4]
	ldr r2, _020AC868 ; =0x0000FFFF
	cmp r3, #0
	beq _020AC7CC
	cmp r3, #1
	beq _020AC7E8
	cmp r3, #2
	beq _020AC7FC
	b _020AC860
_020AC7CC:
	ldrh r2, [r0]
	ldrh r3, [r0, #0xc]
	sub r0, r1, r2
	add r0, r3, r0
	mov r0, r0, lsl #0x10
	mov r2, r0, lsr #0x10
	b _020AC860
_020AC7E8:
	ldrh r2, [r0]
	sub r1, r1, r2
	add r0, r0, r1, lsl #1
	ldrh r2, [r0, #0xc]
	b _020AC860
_020AC7FC:
	ldrh r3, [r0, #0xc]
	add ip, r0, #0xe
	sub r0, r3, #1
	add lr, ip, r0, lsl #2
	cmp ip, lr
	bhi _020AC860
_020AC814:
	sub r3, lr, ip
	mov r0, r3, asr #1
	add r0, r3, r0, lsr #30
	mov r0, r0, asr #2
	add r0, r0, r0, lsr #31
	mov r3, r0, asr #1
	mov r0, r3, lsl #2
	ldrh r0, [ip, r0]
	add r3, ip, r3, lsl #2
	cmp r0, r1
	addlo ip, r3, #4
	blo _020AC858
	cmp r1, r0
	sublo lr, r3, #4
	blo _020AC858
	ldrh r2, [r3, #2]
	b _020AC860
_020AC858:
	cmp ip, lr
	bls _020AC814
_020AC860:
	mov r0, r2
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AC868: .word 0x0000FFFF
	arm_func_end GetGlyphIndex

	arm_func_start NNS_G2dFontInitUTF16
NNS_G2dFontInitUTF16: ; 0x020AC86C
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, r1
	mov r1, r4
	bl NNSi_G2dGetUnpackedFont
	ldr r0, _020AC88C ; =NNSi_G2dSplitCharUTF16
	str r0, [r4, #4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020AC88C: .word NNSi_G2dSplitCharUTF16
	arm_func_end NNS_G2dFontInitUTF16

	arm_func_start NNS_G2dFontFindGlyphIndex
NNS_G2dFontFindGlyphIndex: ; 0x020AC890
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _020AC8CC
_020AC8A4:
	ldrh r2, [r0]
	cmp r2, r1
	ldrlsh r2, [r0, #2]
	cmpls r1, r2
	bhi _020AC8C0
	bl GetGlyphIndex
	ldmia sp!, {r3, pc}
_020AC8C0:
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _020AC8A4
_020AC8CC:
	ldr r0, _020AC8D4 ; =0x0000FFFF
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020AC8D4: .word 0x0000FFFF
	arm_func_end NNS_G2dFontFindGlyphIndex

	arm_func_start NNS_G2dFontGetCharWidthsFromIndex
NNS_G2dFontGetCharWidthsFromIndex: ; 0x020AC8D8
	ldr ip, [r0]
	ldr r3, [ip, #0xc]
	cmp r3, #0
	beq _020AC91C
_020AC8E8:
	ldrh r2, [r3]
	cmp r2, r1
	ldrlsh r0, [r3, #2]
	cmpls r1, r0
	bhi _020AC910
	sub r0, r1, r2
	add r1, r3, #8
	add r0, r0, r0, lsl #1
	add r0, r1, r0
	bx lr
_020AC910:
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _020AC8E8
_020AC91C:
	add r0, ip, #4
	bx lr
	arm_func_end NNS_G2dFontGetCharWidthsFromIndex

	arm_func_start NNSi_G2dFontGetStringWidth
NNSi_G2dFontGetStringWidth: ; 0x020AC924
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #4
	mov r8, r0
	str r2, [sp]
	ldr r5, [r8, #4]
	add r0, sp, #0
	mov r7, r1
	mov r6, r3
	mov r4, #0
	blx r5
	movs r1, r0
	beq _020AC9A0
	ldr sb, _020AC9CC ; =0x0000FFFF
	add sl, sp, #0
_020AC95C:
	cmp r1, #0xa
	beq _020AC9A0
	mov r0, r8
	bl NNS_G2dFontFindGlyphIndex
	mov r1, r0
	cmp r1, sb
	ldreq r0, [r8]
	ldreqh r1, [r0, #2]
	mov r0, r8
	bl NNS_G2dFontGetCharWidthsFromIndex
	ldrsb r1, [r0, #2]
	mov r0, sl
	add r1, r7, r1
	add r4, r4, r1
	blx r5
	movs r1, r0
	bne _020AC95C
_020AC9A0:
	cmp r6, #0
	beq _020AC9B8
	cmp r1, #0xa
	ldreq r0, [sp]
	movne r0, #0
	str r0, [r6, #0]
_020AC9B8:
	cmp r4, #0
	subgt r4, r4, r7
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020AC9CC: .word 0x0000FFFF
	arm_func_end NNSi_G2dFontGetStringWidth

	arm_func_start NNSi_G2dFontGetTextHeight
NNSi_G2dFontGetTextHeight: ; 0x020AC9D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	add r4, sp, #0
	mov r3, #0
	mov r8, r0
	str r2, [sp, #8]
	str r3, [r4, #0]
	str r3, [r4, #4]
	ldr r7, [r8, #4]
	add r0, sp, #8
	mov r4, r1
	mov r6, #1
	blx r7
	cmp r0, #0
	beq _020ACA28
	add r5, sp, #8
_020ACA10:
	cmp r0, #0xa
	mov r0, r5
	addeq r6, r6, #1
	blx r7
	cmp r0, #0
	bne _020ACA10
_020ACA28:
	ldr r0, [r8]
	ldrsb r0, [r0, #1]
	add r0, r4, r0
	mul r0, r6, r0
	sub r0, r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_G2dFontGetTextHeight

	arm_func_start NNSi_G2dFontGetTextRect
NNSi_G2dFontGetTextRect: ; 0x020ACA44
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r6, r2
	ldr r2, [sp, #0x28]
	add sb, sp, #0
	mov r4, #0
	mov r8, r0
	mov r7, r1
	mov r5, r3
	str r4, [sb]
	str r4, [sb, #4]
	cmp r2, #0
	mov r4, #1
	beq _020ACAAC
	add sb, sp, #0x28
_020ACA80:
	mov r0, r7
	mov r1, r6
	mov r3, sb
	bl NNSi_G2dFontGetStringWidth
	ldr r1, [sp]
	ldr r2, [sp, #0x28]
	cmp r0, r1
	strgt r0, [sp]
	add r4, r4, #1
	cmp r2, #0
	bne _020ACA80
_020ACAAC:
	ldr r0, [r7, #0]
	sub r2, r4, #1
	ldrsb r1, [r0, #1]
	ldr r0, [sp]
	add r1, r5, r1
	mul r1, r2, r1
	sub r1, r1, r5
	str r1, [sp, #4]
	stmia r8, {r0, r1}
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end NNSi_G2dFontGetTextRect