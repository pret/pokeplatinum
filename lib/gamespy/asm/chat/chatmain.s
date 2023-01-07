	.include "macros/function.inc"
	.include "include/chatmain.inc"

	

	.extern Unk_ov66_02259CA0
	.extern Unk_ov66_0225A310
	.text


	arm_func_start ov66_022534B8
ov66_022534B8: ; 0x022534B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r5, r1
	mov r6, r0
	bne _022534DC
	ldr r0, _02253544 ; =0x0225AA84
	ldr r1, _02253548 ; =0x0225AA94
	ldr r2, _0225354C ; =0x0225AA24
	mov r3, #0x4f
	bl __msl_assertion_failed
_022534DC:
	ldr r7, _02253550 ; =0x02259CA0
	mov r4, #0
	ldr r0, [r7, #0]
	cmp r0, #0
	ble _0225353C
	ldr r8, _02253554 ; =0x0225A310
_022534F4:
	ldr r0, [r5, #0x14]
	ldr r1, [r8, r4, lsl #3]
	bl strcasecmp
	cmp r0, #0
	bne _0225352C
	ldr r0, _02253558 ; =0x0225A314
	ldr r2, [r0, r4, lsl #3]
	cmp r2, #0
	beq _02253524
	mov r0, r6
	mov r1, r5
	blx r2
_02253524:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0225352C:
	ldr r0, [r7, #0]
	add r4, r4, #1
	cmp r4, r0
	blt _022534F4
_0225353C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02253544: .word Unk_ov66_0225AA84
_02253548: .word Unk_ov66_0225AA94
_0225354C: .word Unk_ov66_0225AA24
_02253550: .word Unk_ov66_02259CA0
_02253554: .word Unk_ov66_0225A310
_02253558: .word 0x0225A314
	arm_func_end ov66_022534B8

	arm_func_start ov66_0225355C
ov66_0225355C: ; 0x0225355C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov66_0224E52C
	cmp r0, #0
	bne _02253588
	mov r0, r5
	mov r1, r4
	bl ov66_0224B3F8
	cmp r0, #0
	beq _02253590
_02253588:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02253590:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0225355C

	arm_func_start ov66_02253598
ov66_02253598: ; 0x02253598
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	movs r4, r0
	mov r5, r1
	bne _022535C0
	ldr r0, _02253660 ; =0x0225AAA0
	ldr r1, _02253664 ; =0x0225AA94
	ldr r2, _02253668 ; =0x0225A954
	mov r3, #0x73
	bl __msl_assertion_failed
_022535C0:
	ldr r0, [r4, #8]
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, pc}
	mov r1, #0
	str r1, [r4, #0]
	str r1, [r4, #4]
	mov ip, #1
	str ip, [r4, #8]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02253618
	ldr ip, [r4, #0x14]
	cmp ip, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, pc}
	ldr r3, [r4, #0x18]
	mov r0, r4
	mov r2, r1
	blx ip
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
_02253618:
	ldr r0, [r4, #0x7fc]
	cmp r0, #0
	addeq sp, sp, #0x14
	ldmeqia sp!, {r4, r5, pc}
	str r5, [sp, #0x10]
	ldr r2, [r4, #0x808]
	mov r0, #4
	str r2, [sp]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x7fc]
	add r3, sp, #0x10
	mov r0, r4
	mov r1, ip
	bl ov66_02248C2C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02253660: .word Unk_ov66_0225AAA0
_02253664: .word Unk_ov66_0225AA94
_02253668: .word Unk_ov66_0225A954
	arm_func_end ov66_02253598

	arm_func_start ov66_0225366C
ov66_0225366C: ; 0x0225366C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	movs r6, r0
	mov r5, r1
	bne _02253694
	ldr r0, _0225374C ; =0x0225AAA0
	ldr r1, _02253750 ; =0x0225AA94
	ldr r2, _02253754 ; =0x0225A8A0
	mov r3, #0x9a
	bl __msl_assertion_failed
_02253694:
	ldr r0, [r6, #0x20]
	cmp r0, #1
	bne _02253730
	add r0, r6, #0x1c
	bl ov66_0225699C
	add r0, r6, #0x1c
	bl ov66_02257A58
	movs r4, r0
	beq _02253718
	mov sb, #0
	mov r8, #4
	add r7, sp, #0x10
_022536C4:
	ldr r0, [r6, #0x7f8]
	cmp r0, #0
	beq _022536FC
	ldr r1, [r4, #0]
	mov r0, r6
	str r1, [sp, #0x10]
	ldr r2, [r6, #0x808]
	mov r1, sb
	stmia sp, {r2, sb}
	str sb, [sp, #8]
	str r8, [sp, #0xc]
	ldr r2, [r6, #0x7f8]
	mov r3, r7
	bl ov66_02248C2C
_022536FC:
	mov r0, r6
	mov r1, r4
	bl ov66_022534B8
	add r0, r6, #0x1c
	bl ov66_02257A58
	movs r4, r0
	bne _022536C4
_02253718:
	ldr r0, [r6, #0x20]
	cmp r0, #2
	bne _02253730
	ldr r1, _02253758 ; =0x0225AAB0
	mov r0, r6
	bl ov66_02253598
_02253730:
	mov r0, r6
	bl ov66_0224E474
	mov r0, r6
	mov r1, r5
	bl ov66_0224B09C
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0225374C: .word Unk_ov66_0225AAA0
_02253750: .word Unk_ov66_0225AA94
_02253754: .word Unk_ov66_0225A8A0
_02253758: .word Unk_ov66_0225AAB0
	arm_func_end ov66_0225366C

	arm_func_start ov66_0225375C
ov66_0225375C: ; 0x0225375C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	movs r4, r0
	bne _02253780
	ldr r0, _0225381C ; =0x0225AAA0
	ldr r1, _02253820 ; =0x0225AA94
	ldr r2, _02253824 ; =0x0225A8A8
	mov r3, #0xce
	bl __msl_assertion_failed
_02253780:
	ldr r0, [r4, #0x8a8]
	cmp r0, #0
	bne _022537C0
	add r0, r4, #0x36c
	bl ov66_02255988
	movs r1, r0
	beq _022537B8
	mov r3, #0
	mov r0, r4
	add r2, r4, #0x36c
	str r3, [sp]
	bl ov66_02255A08
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_022537B8:
	add r2, r4, #0x36c
	b _02253808
_022537C0:
	cmp r0, #2
	ldreq r0, [r4, #0x4ac]
	cmpeq r0, #0
	bne _02253804
	add r0, r4, #0x4f0
	bl ov66_02255988
	movs r1, r0
	beq _022537FC
	mov r3, #0
	mov r0, r4
	add r2, r4, #0x4f0
	str r3, [sp]
	bl ov66_02255A08
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_022537FC:
	add r2, r4, #0x4f0
	b _02253808
_02253804:
	ldr r2, _02253828 ; =0x0225AAC0
_02253808:
	ldr r1, _0225382C ; =0x0225AAC4
	add r0, r4, #0x1c
	bl ov66_02256E70
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0225381C: .word Unk_ov66_0225AAA0
_02253820: .word Unk_ov66_0225AA94
_02253824: .word Unk_ov66_0225A8A8
_02253828: .word Unk_ov66_0225AAC0
_0225382C: .word Unk_ov66_0225AAC4
	arm_func_end ov66_0225375C

	arm_func_start ov66_02253830
ov66_02253830: ; 0x02253830
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	movs r4, r0
	bne _02253854
	ldr r0, _02253888 ; =0x0225AAA0
	ldr r1, _0225388C ; =0x0225AA94
	ldr r2, _02253890 ; =0x0225A8B4
	mov r3, #0x104
	bl __msl_assertion_failed
_02253854:
	add r0, r4, #0x374
	add r0, r0, #0x400
	add r2, r4, #0x2c
	ldr r1, _02253894 ; =0x0225AACC
	ldr r3, _02253898 ; =0x0225AAE0
	str r0, [sp]
	add ip, r4, #0x3ac
	add r0, r4, #0x1c
	add r2, r2, #0x400
	str ip, [sp, #4]
	bl ov66_02256E70
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02253888: .word Unk_ov66_0225AAA0
_0225388C: .word Unk_ov66_0225AA94
_02253890: .word Unk_ov66_0225A8B4
_02253894: .word Unk_ov66_0225AACC
_02253898: .word Unk_ov66_0225AAE0
	arm_func_end ov66_02253830

	arm_func_start ov66_0225389C
ov66_0225389C: ; 0x0225389C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov66_02253830
	mov r0, r4
	bl ov66_0225375C
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0225389C

	arm_func_start ov66_022538B4
ov66_022538B4: ; 0x022538B4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	movs r4, r0
	bne _022538D8
	ldr r0, _02253998 ; =0x0225AAA0
	ldr r1, _0225399C ; =0x0225AA94
	ldr r2, _022539A0 ; =0x0225A8CC
	mov r3, #0x118
	bl __msl_assertion_failed
_022538D8:
	ldr r0, [r4, #0x8a8]
	cmp r0, #3
	bne _02253900
	ldr r1, _022539A4 ; =0x0225AAEC
	add r0, r4, #0x1c
	add r2, r4, #0x570
	add r3, r4, #0x670
	bl ov66_02256E70
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, pc}
_02253900:
	add r0, r4, #0x550
	bl strlen
	mov r1, r0
	add r2, sp, #8
	add r0, r4, #0x550
	bl ov4_021EA7F4
	ldr r0, [r4, #0x8a8]
	cmp r0, #1
	bne _02253948
	add r0, sp, #8
	str r0, [sp]
	ldr r1, _022539A8 ; =0x0225AB00
	ldr r2, [r4, #0x4ac]
	add r0, r4, #0x1c
	add r3, r4, #0x510
	bl ov66_02256E70
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, pc}
_02253948:
	cmp r0, #2
	bne _0225397C
	add r0, r4, #0x4f0
	str r0, [sp]
	add r0, r4, #0x4b0
	str r0, [sp, #4]
	ldr r2, [r4, #0x4ac]
	ldr r1, _022539AC ; =0x0225AB10
	add r3, sp, #8
	add r0, r4, #0x1c
	bl ov66_02256E70
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, pc}
_0225397C:
	ldr r0, _022539B0 ; =0x0225AB28
	ldr r1, _0225399C ; =0x0225AA94
	ldr r2, _022539A0 ; =0x0225A8CC
	ldr r3, _022539B4 ; =0x0000013E
	bl __msl_assertion_failed
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02253998: .word Unk_ov66_0225AAA0
_0225399C: .word Unk_ov66_0225AA94
_022539A0: .word Unk_ov66_0225A8CC
_022539A4: .word Unk_ov66_0225AAEC
_022539A8: .word Unk_ov66_0225AB00
_022539AC: .word Unk_ov66_0225AB10
_022539B0: .word Unk_ov66_0225AB28
_022539B4: .word 0x0000013E
	arm_func_end ov66_022538B4

	arm_func_start ov66_022539B8
ov66_022539B8: ; 0x022539B8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov fp, r0
	movs r0, r1
	ldr r0, [sp, #0x38]
	str r1, [sp]
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x3c]
	str r2, [sp, #4]
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x4c]
	mov sl, r3
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x50]
	ldr sb, [sp, #0x40]
	str r0, [sp, #0x50]
	ldr r0, _02254140 ; =0x0225AB2C
	ldr r8, [sp, #0x44]
	ldr r7, [sp, #0x48]
	ldr r6, [sp, #0x54]
	ldr r5, [sp, #0x58]
	str r0, [sp, #8]
	bne _02253A28
	ldr r0, _02254144 ; =0x0225AB30
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _02254150 ; =0x0000015B
	bl __msl_assertion_failed
_02253A28:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _02253A48
	ldr r0, _02254154 ; =0x0225AB48
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	mov r3, #0x15c
	bl __msl_assertion_failed
_02253A48:
	ldr r0, [sp, #0x68]
	cmp r0, #0
	bne _02253A68
	ldr r0, _02254158 ; =0x0225AB5C
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _0225415C ; =0x0000015D
	bl __msl_assertion_failed
_02253A68:
	cmp fp, #0
	bne _02253AF0
	cmp sl, #0
	bne _02253A8C
	ldr r0, _02254160 ; =0x0225AB74
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _02254164 ; =0x00000163
	bl __msl_assertion_failed
_02253A8C:
	ldrsb r0, [sl]
	cmp r0, #0
	bne _02253AAC
	ldr r0, _02254168 ; =0x0225AB84
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _02254164 ; =0x00000163
	bl __msl_assertion_failed
_02253AAC:
	mov r0, sl
	bl strlen
	cmp r0, #0x40
	blo _02253AD0
	ldr r0, _0225416C ; =0x0225AB94
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _02254164 ; =0x00000163
	bl __msl_assertion_failed
_02253AD0:
	cmp sl, #0
	ldrnesb r0, [sl]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str sl, [sp, #8]
	b _02253D44
_02253AF0:
	cmp fp, #1
	bne _02253BAC
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bgt _02253B18
	ldr r0, _02254170 ; =0x0225ABAC
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _02254174 ; =0x0000016A
	bl __msl_assertion_failed
_02253B18:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	addle sp, sp, #0xc
	movle r0, #0
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r8, #0
	ldrnesb r0, [r8]
	cmpne r0, #0
	bne _02253B50
	ldr r0, _02254178 ; =0x0225ABBC
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _0225417C ; =0x0000016D
	bl __msl_assertion_failed
_02253B50:
	cmp r8, #0
	ldrnesb r0, [r8]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, #0
	ldrnesb r0, [r7]
	cmpne r0, #0
	bne _02253B8C
	ldr r0, _02254180 ; =0x0225ABD8
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	mov r3, #0x170
	bl __msl_assertion_failed
_02253B8C:
	cmp r7, #0
	ldrnesb r0, [r7]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r8, [sp, #8]
	b _02253D44
_02253BAC:
	cmp fp, #2
	bne _02253CAC
	ldr r0, [sp, #0x38]
	cmp r0, #0
	bge _02253BD4
	ldr r0, _02254184 ; =0x0225ABF0
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _02254188 ; =0x00000177
	bl __msl_assertion_failed
_02253BD4:
	ldr r0, [sp, #0x38]
	cmp r0, #0
	addlt sp, sp, #0xc
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	ldrnesb r0, [r0]
	cmpne r0, #0
	bne _02253C10
	ldr r0, _0225418C ; =0x0225AC04
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _02254190 ; =0x0000017A
	bl __msl_assertion_failed
_02253C10:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	ldrnesb r0, [r0]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #0
	ldrnesb r0, [sb]
	cmpne r0, #0
	bne _02253C50
	ldr r0, _02254194 ; =0x0225AC18
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _02254198 ; =0x0000017D
	bl __msl_assertion_failed
_02253C50:
	cmp sb, #0
	ldrnesb r0, [sb]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r7, #0
	ldrnesb r0, [r7]
	cmpne r0, #0
	bne _02253C8C
	ldr r0, _02254180 ; =0x0225ABD8
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	mov r3, #0x180
	bl __msl_assertion_failed
_02253C8C:
	cmp r7, #0
	ldrnesb r0, [r7]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str sb, [sp, #8]
	b _02253D44
_02253CAC:
	cmp fp, #3
	bne _02253D44
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	ldrnesb r0, [r0]
	cmpne r0, #0
	bne _02253CDC
	ldr r0, _0225419C ; =0x0225AC38
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _022541A0 ; =0x00000187
	bl __msl_assertion_failed
_02253CDC:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	ldrnesb r0, [r0]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x50]
	cmp r0, #0
	ldrnesb r0, [r0]
	cmpne r0, #0
	bne _02253D20
	ldr r0, _022541A4 ; =0x0225AC54
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _022541A8 ; =0x0000018A
	bl __msl_assertion_failed
_02253D20:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	ldrnesb r0, [r0]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _022541AC ; =0x0225AC7C
	str r0, [sp, #8]
_02253D44:
	cmp fp, #0
	beq _02253DC4
	cmp r6, #0
	ldrnesb r0, [r6]
	cmpne r0, #0
	bne _02253D70
	ldr r0, _022541B0 ; =0x0225AC84
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	ldr r3, _022541B4 ; =0x00000191
	bl __msl_assertion_failed
_02253D70:
	cmp r6, #0
	ldrnesb r0, [r6]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r5, #0
	ldrnesb r0, [r5]
	cmpne r0, #0
	bne _02253DAC
	ldr r0, _022541B8 ; =0x0225AC9C
	ldr r1, _02254148 ; =0x0225AA94
	ldr r2, _0225414C ; =0x0225A908
	mov r3, #0x194
	bl __msl_assertion_failed
_02253DAC:
	cmp r5, #0
	ldrnesb r0, [r5]
	cmpne r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02253DC4:
	bl ov4_021EA8A4
	ldr r0, _022541BC ; =0x000008B4
	bl ov4_021D7880
	movs r4, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, #0
	ldr r2, _022541BC ; =0x000008B4
	bl memset
	str fp, [r4, #0x8a8]
	cmp sl, #0
	beq _02253E10
	mov r1, sl
	add r0, r4, #0x36c
	mov r2, #0x40
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x3ab]
_02253E10:
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _02253E34
	add r0, r4, #0x2c
	add r0, r0, #0x400
	mov r2, #0x80
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x4ab]
_02253E34:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _02253E54
	add r0, r4, #0x3ac
	mov r2, #0x80
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x42b]
_02253E54:
	ldr r0, [sp, #0x38]
	str r0, [r4, #0x4ac]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02253E80
	mov r1, r0
	add r0, r4, #0x4b0
	mov r2, #0x40
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x4ef]
_02253E80:
	cmp sb, #0
	beq _02253EA0
	mov r1, sb
	add r0, r4, #0x4f0
	mov r2, #0x20
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x50f]
_02253EA0:
	cmp r8, #0
	beq _02253EC0
	mov r1, r8
	add r0, r4, #0x510
	mov r2, #0x40
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x54f]
_02253EC0:
	cmp r7, #0
	beq _02253EE0
	mov r1, r7
	add r0, r4, #0x550
	mov r2, #0x20
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x56f]
_02253EE0:
	ldr r0, [sp, #0x4c]
	cmp r0, #0
	beq _02253F04
	mov r1, r0
	add r0, r4, #0x570
	mov r2, #0x100
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x66f]
_02253F04:
	ldr r0, [sp, #0x50]
	cmp r0, #0
	beq _02253F28
	mov r1, r0
	add r0, r4, #0x670
	mov r2, #0x100
	bl strncpy
	mov r0, #0
	strb r0, [r4, #0x76f]
_02253F28:
	add r0, r4, #0x374
	ldr r1, [sp]
	add r0, r0, #0x400
	mov r2, #0x80
	bl strncpy
	mov r7, #0
	add r1, r4, #0x3f8
	ldr sb, [sp, #0x5c]
	ldr r0, [sp, #4]
	strb r7, [r4, #0x7f3]
	str r0, [r4, #0x7f4]
	add r8, r1, #0x400
	ldmia sb!, {r0, r1, r2, r3}
	stmia r8!, {r0, r1, r2, r3}
	ldr r1, [sb]
	mov r0, #1
	str r1, [r8]
	str r0, [r4, #0x81c]
	str r0, [r4, #4]
	mov r0, r4
	str r7, [r4, #0x824]
	bl ov66_0224B864
	cmp r0, #0
	mov r0, r4
	bne _02253FA0
	bl ov4_021D78B0
	bl ov4_021EA8A8
	add sp, sp, #0xc
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02253FA0:
	bl ov66_02248A98
	cmp r0, #0
	bne _02253FCC
	mov r0, r4
	bl ov66_0224B8EC
	mov r0, r4
	bl ov4_021D78B0
	bl ov4_021EA8A8
	add sp, sp, #0xc
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02253FCC:
	ldr r1, [sp, #8]
	add r0, r4, #0x1c
	bl ov66_02255DEC
	cmp r0, #0
	bne _02254008
	mov r0, r4
	bl ov66_02248AC8
	mov r0, r4
	bl ov66_0224B8EC
	mov r0, r4
	bl ov4_021D78B0
	bl ov4_021EA8A8
	add sp, sp, #0xc
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02254008:
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r4, #0x1c
	bl ov66_02255E68
	cmp r0, #0
	bne _02254050
	add r0, r4, #0x1c
	bl ov66_022561B0
	mov r0, r4
	bl ov66_02248AC8
	mov r0, r4
	bl ov66_0224B8EC
	mov r0, r4
	bl ov4_021D78B0
	bl ov4_021EA8A8
	add sp, sp, #0xc
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02254050:
	ldr r1, [sp, #0x60]
	ldr r0, [sp, #0x64]
	str r1, [r4, #0xc]
	str r0, [r4, #0x10]
	ldr r1, [sp, #0x68]
	ldr r0, [sp, #0x6c]
	str r1, [r4, #0x14]
	str r0, [r4, #0x18]
	cmp r6, #0
	ldrnesb r0, [r6]
	cmpne r0, #0
	cmpne r5, #0
	ldrnesb r0, [r5]
	cmpne r0, #0
	beq _022540C4
	add r0, r4, #0x28
	mov r1, r5
	add r0, r0, #0x800
	mov r2, #0x80
	bl strncpy
	mov r1, r7
	strb r1, [r4, #0x8a7]
	ldr r0, _022541C0 ; =0x0225A89C
	ldr r1, _022541C4 ; =0x0225ACB8
	ldr r2, [r0, #0]
	mov r3, r6
	add r0, r4, #0x1c
	bl ov66_02256E70
	b _022540E8
_022540C4:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _022540E0
	ldr r1, _022541C8 ; =0x0225ACC8
	add r0, r4, #0x1c
	bl ov66_02256BB0
	b _022540E8
_022540E0:
	mov r0, r4
	bl ov66_0225389C
_022540E8:
	ldr r0, [sp, #0x70]
	cmp r0, #0
	beq _02254134
	mov r6, #0
	mov r5, #0xa
_022540FC:
	mov r0, r4
	mov r1, r6
	bl ov66_0225366C
	mov r0, r5
	bl ov4_021EA898
	ldr r0, [r4, #4]
	cmp r0, #0
	bne _022540FC
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _02254134
	mov r0, r4
	bl ov66_022543DC
	mov r4, #0
_02254134:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02254140: .word Unk_ov66_0225AB2C
_02254144: .word Unk_ov66_0225AB30
_02254148: .word Unk_ov66_0225AA94
_0225414C: .word Unk_ov66_0225A908
_02254150: .word 0x0000015B
_02254154: .word Unk_ov66_0225AB48
_02254158: .word Unk_ov66_0225AB5C
_0225415C: .word 0x0000015D
_02254160: .word Unk_ov66_0225AB74
_02254164: .word 0x00000163
_02254168: .word Unk_ov66_0225AB84
_0225416C: .word Unk_ov66_0225AB94
_02254170: .word Unk_ov66_0225ABAC
_02254174: .word 0x0000016A
_02254178: .word Unk_ov66_0225ABBC
_0225417C: .word 0x0000016D
_02254180: .word Unk_ov66_0225ABD8
_02254184: .word Unk_ov66_0225ABF0
_02254188: .word 0x00000177
_0225418C: .word Unk_ov66_0225AC04
_02254190: .word 0x0000017A
_02254194: .word Unk_ov66_0225AC18
_02254198: .word 0x0000017D
_0225419C: .word Unk_ov66_0225AC38
_022541A0: .word 0x00000187
_022541A4: .word Unk_ov66_0225AC54
_022541A8: .word 0x0000018A
_022541AC: .word Unk_ov66_0225AC7C
_022541B0: .word Unk_ov66_0225AC84
_022541B4: .word 0x00000191
_022541B8: .word Unk_ov66_0225AC9C
_022541BC: .word 0x000008B4
_022541C0: .word Unk_ov66_0225A89C
_022541C4: .word Unk_ov66_0225ACB8
_022541C8: .word Unk_ov66_0225ACC8
	arm_func_end ov66_022539B8

	arm_func_start ov66_022541CC
ov66_022541CC: ; 0x022541CC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x44
	mov ip, r0
	mov r0, #0
	stmia sp, {r0, r3}
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	str r0, [sp, #0x14]
	str r0, [sp, #0x18]
	str r0, [sp, #0x1c]
	ldr lr, [sp, #0x50]
	str r0, [sp, #0x20]
	str lr, [sp, #0x24]
	ldr r3, [sp, #0x54]
	mov r4, r1
	str r3, [sp, #0x28]
	ldr lr, [sp, #0x58]
	mov r3, r2
	str lr, [sp, #0x2c]
	ldr r2, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	str r2, [sp, #0x30]
	str r1, [sp, #0x34]
	ldr r2, [sp, #0x64]
	ldr r1, [sp, #0x68]
	str r2, [sp, #0x38]
	str r1, [sp, #0x3c]
	ldr lr, [sp, #0x6c]
	mov r1, ip
	mov r2, r4
	str lr, [sp, #0x40]
	bl ov66_022539B8
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_022541CC

	arm_func_start ov66_02254258
ov66_02254258: ; 0x02254258
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _0225427C
	ldr r0, _0225430C ; =0x0225AAA0
	ldr r1, _02254310 ; =0x0225AA94
	ldr r2, _02254314 ; =0x0225A968
	ldr r3, _02254318 ; =0x00000385
	bl __msl_assertion_failed
_0225427C:
	ldr r0, [r5, #0]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	bne _022542B8
	mov r1, #0
	str r1, [r5, #4]
	ldr ip, [r5, #0x14]
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0x18]
	mov r0, r5
	mov r2, #1
	blx ip
	ldmia sp!, {r3, r4, r5, pc}
_022542B8:
	mov r1, r4
	add r0, r5, #0x36c
	mov r2, #0x40
	bl strncpy
	mov r1, #0
	mov r0, r4
	strb r1, [r5, #0x3ab]
	bl ov66_02255988
	movs r1, r0
	beq _022542F8
	mov r3, #0
	mov r0, r5
	mov r2, r4
	str r3, [sp]
	bl ov66_02255A08
	ldmia sp!, {r3, r4, r5, pc}
_022542F8:
	ldr r1, _0225431C ; =0x0225ACD0
	mov r2, r4
	add r0, r5, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0225430C: .word Unk_ov66_0225AAA0
_02254310: .word Unk_ov66_0225AA94
_02254314: .word Unk_ov66_0225A968
_02254318: .word 0x00000385
_0225431C: .word Unk_ov66_0225ACD0
	arm_func_end ov66_02254258

	arm_func_start ov66_02254320
ov66_02254320: ; 0x02254320
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _0225434C
	ldr r0, _022543C4 ; =0x0225AAA0
	ldr r1, _022543C8 ; =0x0225AA94
	ldr r2, _022543CC ; =0x0225AA3C
	ldr r3, _022543D0 ; =0x000003BD
	bl __msl_assertion_failed
_0225434C:
	ldr r0, [r7, #0]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	bne _02254388
	mov r1, #0
	str r1, [r7, #4]
	ldr ip, [r7, #0x14]
	cmp ip, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r7, #0x18]
	mov r0, r7
	mov r2, #1
	blx ip
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02254388:
	cmp r4, #0
	ldreq r4, _022543D4 ; =0x0225AB2C
	ldr r1, _022543D8 ; =0x0225ACDC
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	str r4, [sp]
	bl ov66_02256E70
	mov r1, r5
	add r0, r7, #0x510
	mov r2, #0x40
	bl strncpy
	mov r0, #0
	strb r0, [r7, #0x54f]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022543C4: .word Unk_ov66_0225AAA0
_022543C8: .word Unk_ov66_0225AA94
_022543CC: .word Unk_ov66_0225AA3C
_022543D0: .word 0x000003BD
_022543D4: .word Unk_ov66_0225AB2C
_022543D8: .word Unk_ov66_0225ACDC
	arm_func_end ov66_02254320

	arm_func_start ov66_022543DC
ov66_022543DC: ; 0x022543DC
	stmfd sp!, {r4, lr}
	movs r4, r0
	bne _022543FC
	ldr r0, _02254474 ; =0x0225AAA0
	ldr r1, _02254478 ; =0x0225AA94
	ldr r2, _0225447C ; =0x0225A8E8
	ldr r3, _02254480 ; =0x000003EF
	bl __msl_assertion_failed
_022543FC:
	mov r0, r4
	bl ov66_0224E5B0
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0225442C
	ldr r3, [r4, #0x7fc]
	cmp r3, #0
	beq _0225442C
	ldr r2, [r4, #0x808]
	ldr r1, _02254484 ; =0x0225AB2C
	mov r0, r4
	blx r3
_0225442C:
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0225444C
	ldr r1, _02254488 ; =0x0225ACF4
	add r0, r4, #0x1c
	bl ov66_02256BB0
	add r0, r4, #0x1c
	bl ov66_0225699C
_0225444C:
	mov r0, r4
	bl ov66_0224B8EC
	mov r0, r4
	bl ov66_02248AC8
	add r0, r4, #0x1c
	bl ov66_022561B0
	mov r0, r4
	bl ov4_021D78B0
	bl ov4_021EA8A8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02254474: .word Unk_ov66_0225AAA0
_02254478: .word Unk_ov66_0225AA94
_0225447C: .word Unk_ov66_0225A8E8
_02254480: .word 0x000003EF
_02254484: .word Unk_ov66_0225AB2C
_02254488: .word Unk_ov66_0225ACF4
	arm_func_end ov66_022543DC

	arm_func_start ov66_0225448C
ov66_0225448C: ; 0x0225448C
	ldr ip, _02254498 ; =ov66_0225366C
	mov r1, #0
	bx ip
	; .align 2, 0
_02254498: .word ov66_0225366C
	arm_func_end ov66_0225448C

	arm_func_start ov66_0225449C
ov66_0225449C: ; 0x0225449C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bne _022544C8
	ldr r0, _02254564 ; =0x0225AAA0
	ldr r1, _02254568 ; =0x0225AA94
	ldr r2, _0225456C ; =0x0225A918
	ldr r3, _02254570 ; =0x0000058E
	bl __msl_assertion_failed
_022544C8:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	cmpeq r6, #0
	bne _022544F8
	ldr r0, _02254574 ; =0x0225AD64
	ldr r1, _02254568 ; =0x0225AA94
	ldr r2, _0225456C ; =0x0225A918
	ldr r3, _02254578 ; =0x00000591
	bl __msl_assertion_failed
_022544F8:
	cmp r7, #0
	ldreq r7, _0225457C ; =0x0225AB2C
	ldr r1, _02254580 ; =0x0225AD94
	mov r2, r7
	add r0, r4, #0x1c
	bl ov66_02256E70
	ldr r3, [sp, #0x18]
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov66_0224E6EC
	ldr r1, [sp, #0x1c]
	mov r6, r0
	cmp r1, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0xa
_02254538:
	mov r0, r4
	mov r1, r6
	bl ov66_0225366C
	mov r0, r5
	bl ov4_021EA898
	mov r0, r4
	mov r1, r6
	bl ov66_0225355C
	cmp r0, #0
	bne _02254538
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02254564: .word Unk_ov66_0225AAA0
_02254568: .word Unk_ov66_0225AA94
_0225456C: .word Unk_ov66_0225A918
_02254570: .word 0x0000058E
_02254574: .word Unk_ov66_0225AD64
_02254578: .word 0x00000591
_0225457C: .word Unk_ov66_0225AB2C
_02254580: .word Unk_ov66_0225AD94
	arm_func_end ov66_0225449C

	arm_func_start ov66_02254584
ov66_02254584: ; 0x02254584
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	movs r4, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bne _022545B4
	ldr r0, _022546A8 ; =0x0225AAA0
	ldr r1, _022546AC ; =0x0225AA94
	ldr r2, _022546B0 ; =0x0225A92C
	ldr r3, _022546B4 ; =0x000005B3
	bl __msl_assertion_failed
_022545B4:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	bne _022545E4
	ldr r0, _022546B8 ; =0x0225AD9C
	ldr r1, _022546AC ; =0x0225AA94
	ldr r2, _022546B0 ; =0x0225A92C
	ldr r3, _022546BC ; =0x000005B6
	bl __msl_assertion_failed
_022545E4:
	ldrsb r0, [r7]
	cmp r0, #0
	bne _02254604
	ldr r0, _022546C0 ; =0x0225ADAC
	ldr r1, _022546AC ; =0x0225AA94
	ldr r2, _022546B0 ; =0x0225A92C
	ldr r3, _022546BC ; =0x000005B6
	bl __msl_assertion_failed
_02254604:
	cmp r5, #0
	bne _02254620
	ldr r0, _022546C4 ; =0x0225AB48
	ldr r1, _022546AC ; =0x0225AA94
	ldr r2, _022546B0 ; =0x0225A92C
	ldr r3, _022546C8 ; =0x000005B7
	bl __msl_assertion_failed
_02254620:
	cmp r6, #0
	ldreq r6, _022546CC ; =0x0225AB2C
	ldr r1, _022546D0 ; =0x0225ADC0
	mov r2, r7
	mov r3, r6
	add r0, r4, #0x1c
	bl ov66_02256E70
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x24]
	mov r0, r4
	mov r1, r7
	stmia sp, {r5, r6}
	bl ov66_0224E770
	mov r6, r0
	mov r0, r4
	mov r1, r7
	bl ov66_0224B940
	ldr r0, [sp, #0x28]
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0xa
_02254678:
	mov r0, r4
	mov r1, r6
	bl ov66_0225366C
	mov r0, r5
	bl ov4_021EA898
	mov r0, r4
	mov r1, r6
	bl ov66_0225355C
	cmp r0, #0
	bne _02254678
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022546A8: .word Unk_ov66_0225AAA0
_022546AC: .word Unk_ov66_0225AA94
_022546B0: .word Unk_ov66_0225A92C
_022546B4: .word 0x000005B3
_022546B8: .word Unk_ov66_0225AD9C
_022546BC: .word 0x000005B6
_022546C0: .word Unk_ov66_0225ADAC
_022546C4: .word Unk_ov66_0225AB48
_022546C8: .word 0x000005B7
_022546CC: .word Unk_ov66_0225AB2C
_022546D0: .word Unk_ov66_0225ADC0
	arm_func_end ov66_02254584

	arm_func_start ov66_022546D4
ov66_022546D4: ; 0x022546D4
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _022546FC
	ldr r0, _02254774 ; =0x0225AAA0
	ldr r1, _02254778 ; =0x0225AA94
	ldr r2, _0225477C ; =0x0225A940
	ldr r3, _02254780 ; =0x000005DB
	bl __msl_assertion_failed
_022546FC:
	cmp r6, #0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	bne _02254728
	ldr r0, _02254784 ; =0x0225AD9C
	ldr r1, _02254778 ; =0x0225AA94
	ldr r2, _0225477C ; =0x0225A940
	ldr r3, _02254788 ; =0x000005DE
	bl __msl_assertion_failed
_02254728:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _02254748
	ldr r0, _0225478C ; =0x0225ADAC
	ldr r1, _02254778 ; =0x0225AA94
	ldr r2, _0225477C ; =0x0225A940
	ldr r3, _02254788 ; =0x000005DE
	bl __msl_assertion_failed
_02254748:
	cmp r4, #0
	ldreq r4, _02254790 ; =0x0225AB2C
	ldr r1, _02254794 ; =0x0225ADCC
	mov r2, r5
	mov r3, r4
	add r0, r6, #0x1c
	bl ov66_02256E70
	mov r0, r6
	mov r1, r5
	bl ov66_0224BC80
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02254774: .word Unk_ov66_0225AAA0
_02254778: .word Unk_ov66_0225AA94
_0225477C: .word Unk_ov66_0225A940
_02254780: .word 0x000005DB
_02254784: .word Unk_ov66_0225AD9C
_02254788: .word 0x000005DE
_0225478C: .word Unk_ov66_0225ADAC
_02254790: .word Unk_ov66_0225AB2C
_02254794: .word Unk_ov66_0225ADCC
	arm_func_end ov66_022546D4

	arm_func_start ov66_02254798
ov66_02254798: ; 0x02254798
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _022547C8
	ldr r0, _02254948 ; =0x0225AAA0
	ldr r1, _0225494C ; =0x0225AA94
	ldr r2, _02254950 ; =0x0225AA6C
	ldr r3, _02254954 ; =0x000005FC
	bl __msl_assertion_failed
_022547C8:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	bne _022547F8
	ldr r0, _02254958 ; =0x0225AD9C
	ldr r1, _0225494C ; =0x0225AA94
	ldr r2, _02254950 ; =0x0225AA6C
	ldr r3, _0225495C ; =0x000005FF
	bl __msl_assertion_failed
_022547F8:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _02254818
	ldr r0, _02254960 ; =0x0225ADAC
	ldr r1, _0225494C ; =0x0225AA94
	ldr r2, _02254950 ; =0x0225AA6C
	ldr r3, _0225495C ; =0x000005FF
	bl __msl_assertion_failed
_02254818:
	cmp r4, #4
	bls _02254834
	ldr r0, _02254964 ; =0x0225ADD8
	ldr r1, _0225494C ; =0x0225AA94
	ldr r2, _02254950 ; =0x0225AA6C
	mov r3, #0x600
	bl __msl_assertion_failed
_02254834:
	cmp r5, #0
	ldrnesb r0, [r5]
	cmpne r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	bne _02254868
	ldr r1, _02254968 ; =0x0225AE50
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	b _022548E8
_02254868:
	cmp r4, #1
	bne _02254888
	ldr r1, _0225496C ; =0x0225AE60
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	b _022548E8
_02254888:
	cmp r4, #2
	bne _022548A8
	ldr r1, _02254970 ; =0x0225AE78
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	b _022548E8
_022548A8:
	cmp r4, #3
	bne _022548C8
	ldr r1, _02254974 ; =0x0225AE88
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	b _022548E8
_022548C8:
	cmp r4, #4
	addne sp, sp, #0x20
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _02254978 ; =0x0225AE94
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
_022548E8:
	mov r0, r7
	mov r1, r6
	bl ov66_0224BD94
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r7, #0x36c
	str r1, [sp, #0x14]
	str r6, [sp, #0x10]
	str r5, [sp, #0x18]
	str r4, [sp, #0x1c]
	ldr r2, [r0, #0x2c]
	mov r1, #0
	str r2, [sp]
	stmib sp, {r1, r6}
	mov r1, #0x10
	str r1, [sp, #0xc]
	ldr r2, [r0, #0]
	add r3, sp, #0x10
	mov r0, r7
	mov r1, #4
	bl ov66_02248C2C
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02254948: .word Unk_ov66_0225AAA0
_0225494C: .word Unk_ov66_0225AA94
_02254950: .word Unk_ov66_0225AA6C
_02254954: .word 0x000005FC
_02254958: .word Unk_ov66_0225AD9C
_0225495C: .word 0x000005FF
_02254960: .word Unk_ov66_0225ADAC
_02254964: .word Unk_ov66_0225ADD8
_02254968: .word Unk_ov66_0225AE50
_0225496C: .word Unk_ov66_0225AE60
_02254970: .word Unk_ov66_0225AE78
_02254974: .word Unk_ov66_0225AE88
_02254978: .word Unk_ov66_0225AE94
	arm_func_end ov66_02254798

	arm_func_start ov66_0225497C
ov66_0225497C: ; 0x0225497C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x40
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _022549A8
	ldr r0, _02254B4C ; =0x0225AAA0
	ldr r1, _02254B50 ; =0x0225AA94
	ldr r2, _02254B54 ; =0x0225A9CC
	ldr r3, _02254B58 ; =0x0000067F
	bl __msl_assertion_failed
_022549A8:
	cmp r6, #0
	ldrne r0, [r6]
	cmpne r0, #0
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	bne _022549D8
	ldr r0, _02254B5C ; =0x0225AD9C
	ldr r1, _02254B50 ; =0x0225AA94
	ldr r2, _02254B54 ; =0x0225A9CC
	ldr r3, _02254B60 ; =0x00000682
	bl __msl_assertion_failed
_022549D8:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _022549F8
	ldr r0, _02254B64 ; =0x0225ADAC
	ldr r1, _02254B50 ; =0x0225AA94
	ldr r2, _02254B54 ; =0x0225A9CC
	ldr r3, _02254B60 ; =0x00000682
	bl __msl_assertion_failed
_022549F8:
	cmp r4, #0
	bne _02254A14
	ldr r0, _02254B68 ; =0x0225AEB4
	ldr r1, _02254B50 ; =0x0225AA94
	ldr r2, _02254B54 ; =0x0225A9CC
	ldr r3, _02254B6C ; =0x00000683
	bl __msl_assertion_failed
_02254A14:
	ldr r3, _02254B70 ; =0x0225AEC4
	add ip, sp, #0
	mov r2, #8
_02254A20:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [ip]
	strb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	bne _02254A20
	ldrb r0, [r3]
	strb r0, [ip]
	ldr r0, [r4, #0]
	cmp r0, #0
	movne r0, #0x2b
	strneb r0, [sp]
	moveq r0, #0x2d
	streqb r0, [sp]
	ldr r0, [r4, #4]
	cmp r0, #0
	movne r0, #0x2b
	strneb r0, [sp, #2]
	moveq r0, #0x2d
	streqb r0, [sp, #2]
	ldr r0, [r4, #8]
	cmp r0, #0
	movne r0, #0x2b
	strneb r0, [sp, #4]
	moveq r0, #0x2d
	streqb r0, [sp, #4]
	ldr r0, [r4, #0xc]
	cmp r0, #0
	movne r0, #0x2b
	strneb r0, [sp, #6]
	moveq r0, #0x2d
	streqb r0, [sp, #6]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	movne r0, #0x2b
	strneb r0, [sp, #8]
	moveq r0, #0x2d
	streqb r0, [sp, #8]
	ldr r0, [r4, #0x14]
	cmp r0, #0
	movne r0, #0x2b
	strneb r0, [sp, #0xa]
	moveq r0, #0x2d
	streqb r0, [sp, #0xa]
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movgt r0, #0x2b
	strgtb r0, [sp, #0xc]
	movle r0, #0x2d
	strleb r0, [sp, #0xc]
	ldr r0, [r4, #0x18]
	cmp r0, #0
	movne r0, #0x2b
	strneb r0, [sp, #0xe]
	moveq r0, #0x2d
	streqb r0, [sp, #0xe]
	ldr r4, [r4, #0x1c]
	cmp r4, #0
	ble _02254B30
	add r0, sp, #0
	bl strlen
	add r3, sp, #0
	ldr r1, _02254B74 ; =0x0225AED8
	mov r2, r4
	add r0, r3, r0
	bl sprintf
_02254B30:
	ldr r1, _02254B78 ; =0x0225AEDC
	add r3, sp, #0
	mov r2, r5
	add r0, r6, #0x1c
	bl ov66_02256E70
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02254B4C: .word Unk_ov66_0225AAA0
_02254B50: .word Unk_ov66_0225AA94
_02254B54: .word Unk_ov66_0225A9CC
_02254B58: .word 0x0000067F
_02254B5C: .word Unk_ov66_0225AD9C
_02254B60: .word 0x00000682
_02254B64: .word Unk_ov66_0225ADAC
_02254B68: .word Unk_ov66_0225AEB4
_02254B6C: .word 0x00000683
_02254B70: .word Unk_ov66_0225AEC4
_02254B74: .word Unk_ov66_0225AED8
_02254B78: .word Unk_ov66_0225AEDC
	arm_func_end ov66_0225497C

	arm_func_start ov66_02254B7C
ov66_02254B7C: ; 0x02254B7C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	movs r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bne _02254BAC
	ldr r0, _02254D40 ; =0x0225AAA0
	ldr r1, _02254D44 ; =0x0225AA94
	ldr r2, _02254D48 ; =0x0225A9E0
	ldr r3, _02254D4C ; =0x000006C2
	bl __msl_assertion_failed
_02254BAC:
	cmp r8, #0
	ldrne r0, [r8]
	cmpne r0, #0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	cmp r7, #0
	bne _02254BDC
	ldr r0, _02254D50 ; =0x0225AD9C
	ldr r1, _02254D44 ; =0x0225AA94
	ldr r2, _02254D48 ; =0x0225A9E0
	ldr r3, _02254D54 ; =0x000006C5
	bl __msl_assertion_failed
_02254BDC:
	ldrsb r0, [r7]
	cmp r0, #0
	bne _02254BFC
	ldr r0, _02254D58 ; =0x0225ADAC
	ldr r1, _02254D44 ; =0x0225AA94
	ldr r2, _02254D48 ; =0x0225A9E0
	ldr r3, _02254D54 ; =0x000006C5
	bl __msl_assertion_failed
_02254BFC:
	cmp r6, #0
	bne _02254C18
	ldr r0, _02254D5C ; =0x0225AEA0
	ldr r1, _02254D44 ; =0x0225AA94
	ldr r2, _02254D48 ; =0x0225A9E0
	ldr r3, _02254D60 ; =0x000006C6
	bl __msl_assertion_failed
_02254C18:
	mov r0, r8
	mov r1, r7
	bl ov66_0224C134
	cmp r0, #0
	beq _02254CD4
	add r2, sp, #0x1c
	mov r0, r8
	mov r1, r7
	bl ov66_0224C184
	cmp r0, #0
	beq _02254CD4
	mov r0, r8
	bl ov66_0224E4E0
	add r1, sp, #0x1c
	mov r2, #1
	str r2, [sp, #0x10]
	str r1, [sp, #0x18]
	str r7, [sp, #0x14]
	mov r4, r0
	str r5, [sp]
	str r4, [sp, #4]
	mov r1, #0
	str r1, [sp, #8]
	mov r5, #0xc
	add r3, sp, #0x10
	mov r0, r8
	mov r2, r6
	mov r1, #0x11
	str r5, [sp, #0xc]
	bl ov66_02248C2C
	ldr r0, [sp, #0x58]
	cmp r0, #0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r5, #0xa
_02254CA4:
	mov r0, r8
	mov r1, r4
	bl ov66_0225366C
	mov r0, r5
	bl ov4_021EA898
	mov r0, r8
	mov r1, r4
	bl ov66_0225355C
	cmp r0, #0
	bne _02254CA4
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02254CD4:
	ldr r1, _02254D64 ; =0x0225AEE8
	mov r2, r7
	add r0, r8, #0x1c
	bl ov66_02256E70
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl ov66_0224E8F4
	ldr r1, [sp, #0x58]
	mov r5, r0
	cmp r1, #0
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r4, #0xa
_02254D10:
	mov r0, r8
	mov r1, r5
	bl ov66_0225366C
	mov r0, r4
	bl ov4_021EA898
	mov r0, r8
	mov r1, r5
	bl ov66_0225355C
	cmp r0, #0
	bne _02254D10
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02254D40: .word Unk_ov66_0225AAA0
_02254D44: .word Unk_ov66_0225AA94
_02254D48: .word Unk_ov66_0225A9E0
_02254D4C: .word 0x000006C2
_02254D50: .word Unk_ov66_0225AD9C
_02254D54: .word 0x000006C5
_02254D58: .word Unk_ov66_0225ADAC
_02254D5C: .word Unk_ov66_0225AEA0
_02254D60: .word 0x000006C6
_02254D64: .word Unk_ov66_0225AEE8
	arm_func_end ov66_02254B7C

	arm_func_start ov66_02254D68
ov66_02254D68: ; 0x02254D68
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	mov r5, r1
	mov r4, r2
	bne _02254D90
	ldr r0, _02254E2C ; =0x0225AAA0
	ldr r1, _02254E30 ; =0x0225AA94
	ldr r2, _02254E34 ; =0x0225A9F4
	ldr r3, _02254E38 ; =0x0000074E
	bl __msl_assertion_failed
_02254D90:
	cmp r6, #0
	ldrne r0, [r6]
	cmpne r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r5, #0
	bne _02254DBC
	ldr r0, _02254E3C ; =0x0225AD9C
	ldr r1, _02254E30 ; =0x0225AA94
	ldr r2, _02254E34 ; =0x0225A9F4
	ldr r3, _02254E40 ; =0x00000751
	bl __msl_assertion_failed
_02254DBC:
	ldrsb r0, [r5]
	cmp r0, #0
	bne _02254DDC
	ldr r0, _02254E44 ; =0x0225ADAC
	ldr r1, _02254E30 ; =0x0225AA94
	ldr r2, _02254E34 ; =0x0225A9F4
	ldr r3, _02254E40 ; =0x00000751
	bl __msl_assertion_failed
_02254DDC:
	cmp r4, #0
	bge _02254DF8
	ldr r0, _02254E48 ; =0x0225AEF0
	ldr r1, _02254E30 ; =0x0225AA94
	ldr r2, _02254E34 ; =0x0225A9F4
	ldr r3, _02254E4C ; =0x00000752
	bl __msl_assertion_failed
_02254DF8:
	cmp r4, #0
	beq _02254E18
	ldr r1, _02254E50 ; =0x0225AEFC
	mov r2, r5
	mov r3, r4
	add r0, r6, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r4, r5, r6, pc}
_02254E18:
	ldr r1, _02254E54 ; =0x0225AF0C
	mov r2, r5
	add r0, r6, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02254E2C: .word Unk_ov66_0225AAA0
_02254E30: .word Unk_ov66_0225AA94
_02254E34: .word Unk_ov66_0225A9F4
_02254E38: .word 0x0000074E
_02254E3C: .word Unk_ov66_0225AD9C
_02254E40: .word 0x00000751
_02254E44: .word Unk_ov66_0225ADAC
_02254E48: .word Unk_ov66_0225AEF0
_02254E4C: .word 0x00000752
_02254E50: .word Unk_ov66_0225AEFC
_02254E54: .word Unk_ov66_0225AF0C
	arm_func_end ov66_02254D68

	arm_func_start ov66_02254E58
ov66_02254E58: ; 0x02254E58
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _02254E7C
	ldr r0, _02254F04 ; =0x0225AAA0
	ldr r1, _02254F08 ; =0x0225AA94
	ldr r2, _02254F0C ; =0x0225AA54
	ldr r3, _02254F10 ; =0x000007D6
	bl __msl_assertion_failed
_02254E7C:
	ldr r0, [r5, #0]
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	bne _02254EA8
	ldr r0, _02254F14 ; =0x0225AD9C
	ldr r1, _02254F08 ; =0x0225AA94
	ldr r2, _02254F0C ; =0x0225AA54
	ldr r3, _02254F18 ; =0x000007DA
	bl __msl_assertion_failed
_02254EA8:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _02254EC8
	ldr r0, _02254F1C ; =0x0225ADAC
	ldr r1, _02254F08 ; =0x0225AA94
	ldr r2, _02254F0C ; =0x0225AA54
	ldr r3, _02254F18 ; =0x000007DA
	bl __msl_assertion_failed
_02254EC8:
	cmp r4, #0
	ldrnesb r0, [r4]
	cmpne r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov66_0224C134
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov66_0224C6B8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02254F04: .word Unk_ov66_0225AAA0
_02254F08: .word Unk_ov66_0225AA94
_02254F0C: .word Unk_ov66_0225AA54
_02254F10: .word 0x000007D6
_02254F14: .word Unk_ov66_0225AD9C
_02254F18: .word 0x000007DA
_02254F1C: .word Unk_ov66_0225ADAC
	arm_func_end ov66_02254E58

	arm_func_start ov66_02254F20
ov66_02254F20: ; 0x02254F20
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _02254F44
	ldr r0, _02254FB4 ; =0x0225AAA0
	ldr r1, _02254FB8 ; =0x0225AA94
	ldr r2, _02254FBC ; =0x0225A8D8
	ldr r3, _02254FC0 ; =0x000007F4
	bl __msl_assertion_failed
_02254F44:
	ldr r0, [r5, #0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	bne _02254F70
	ldr r0, _02254FC4 ; =0x0225AD9C
	ldr r1, _02254FB8 ; =0x0225AA94
	ldr r2, _02254FBC ; =0x0225A8D8
	ldr r3, _02254FC8 ; =0x000007F8
	bl __msl_assertion_failed
_02254F70:
	ldrsb r0, [r4]
	cmp r0, #0
	bne _02254F90
	ldr r0, _02254FCC ; =0x0225ADAC
	ldr r1, _02254FB8 ; =0x0225AA94
	ldr r2, _02254FBC ; =0x0225A8D8
	ldr r3, _02254FC8 ; =0x000007F8
	bl __msl_assertion_failed
_02254F90:
	cmp r4, #0
	ldrnesb r0, [r4]
	cmpne r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ov66_0224C134
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02254FB4: .word Unk_ov66_0225AAA0
_02254FB8: .word Unk_ov66_0225AA94
_02254FBC: .word Unk_ov66_0225A8D8
_02254FC0: .word 0x000007F4
_02254FC4: .word Unk_ov66_0225AD9C
_02254FC8: .word 0x000007F8
_02254FCC: .word Unk_ov66_0225ADAC
	arm_func_end ov66_02254F20

	arm_func_start ov66_02254FD0
ov66_02254FD0: ; 0x02254FD0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	movs r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bne _02255000
	ldr r0, _022550D0 ; =0x0225AAA0
	ldr r1, _022550D4 ; =0x0225AA94
	ldr r2, _022550D8 ; =0x0225A990
	ldr r3, _022550DC ; =0x00000812
	bl __msl_assertion_failed
_02255000:
	cmp r7, #0
	bne _0225501C
	ldr r0, _022550E0 ; =0x0225AD9C
	ldr r1, _022550D4 ; =0x0225AA94
	ldr r2, _022550D8 ; =0x0225A990
	ldr r3, _022550E4 ; =0x00000816
	bl __msl_assertion_failed
_0225501C:
	ldrsb r0, [r7]
	cmp r0, #0
	bne _0225503C
	ldr r0, _022550E8 ; =0x0225ADAC
	ldr r1, _022550D4 ; =0x0225AA94
	ldr r2, _022550D8 ; =0x0225A990
	ldr r3, _022550E4 ; =0x00000816
	bl __msl_assertion_failed
_0225503C:
	cmp r6, #0
	bge _02255058
	ldr r0, _022550EC ; =0x0225AF18
	ldr r1, _022550D4 ; =0x0225AA94
	ldr r2, _022550D8 ; =0x0225A990
	ldr r3, _022550F0 ; =0x00000817
	bl __msl_assertion_failed
_02255058:
	ldr r0, [sp, #0x2c]
	cmp r0, #0
	bne _02255078
	ldr r0, _022550F4 ; =0x0225AF28
	ldr r1, _022550D4 ; =0x0225AA94
	ldr r2, _022550D8 ; =0x0225A990
	ldr r3, _022550F8 ; =0x00000827
	bl __msl_assertion_failed
_02255078:
	ldr r4, [sp, #0x2c]
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _0225509C
	ldr r0, _022550FC ; =0x0225AF38
	ldr r1, _022550D4 ; =0x0225AA94
	ldr r2, _022550D8 ; =0x0225A990
	ldr r3, _02255100 ; =0x0000082C
	bl __msl_assertion_failed
_0225509C:
	ldr r0, [sp, #0x28]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r1, [r4, #4]
	mov r0, r8
	str r1, [sp, #8]
	ldr r4, [r4, #0]
	mov r2, r7
	mov r3, r6
	mov r1, #1
	blx r4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022550D0: .word Unk_ov66_0225AAA0
_022550D4: .word Unk_ov66_0225AA94
_022550D8: .word Unk_ov66_0225A990
_022550DC: .word 0x00000812
_022550E0: .word Unk_ov66_0225AD9C
_022550E4: .word 0x00000816
_022550E8: .word Unk_ov66_0225ADAC
_022550EC: .word Unk_ov66_0225AF18
_022550F0: .word 0x00000817
_022550F4: .word Unk_ov66_0225AF28
_022550F8: .word 0x00000827
_022550FC: .word Unk_ov66_0225AF38
_02255100: .word 0x0000082C
	arm_func_end ov66_02254FD0

	arm_func_start ov66_02255104
ov66_02255104: ; 0x02255104
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	movs r4, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bne _02255134
	ldr r0, _02255228 ; =0x0225AAA0
	ldr r1, _0225522C ; =0x0225AA94
	ldr r2, _02255230 ; =0x0225A8F8
	ldr r3, _02255234 ; =0x00000847
	bl __msl_assertion_failed
_02255134:
	cmp r4, #0
	ldrne r0, [r4]
	cmpne r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	bne _02255164
	ldr r0, _02255238 ; =0x0225AEA0
	ldr r1, _0225522C ; =0x0225AA94
	ldr r2, _02255230 ; =0x0225A8F8
	ldr r3, _0225523C ; =0x0000084B
	bl __msl_assertion_failed
_02255164:
	cmp r7, #0
	ldreq r7, _02255240 ; =0x0225AB2C
	ldrsb r0, [r7]
	cmp r0, #0
	beq _022551B0
	mov r0, r4
	mov r1, r7
	bl ov66_0224C134
	cmp r0, #0
	beq _022551B0
	ldr r2, _02255244 ; =ov66_02254FD0
	add r3, sp, #0
	mov r0, r4
	mov r1, r7
	str r6, [sp]
	str r5, [sp, #4]
	bl ov66_0224BFE8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_022551B0:
	ldr r1, _02255248 ; =0x0225AF50
	mov r2, r7
	add r0, r4, #0x1c
	bl ov66_02256E70
	ldrsb r0, [r7]
	mov r2, r6
	mov r3, r5
	cmp r0, #0
	moveq r7, #0
	mov r0, r4
	mov r1, r7
	bl ov66_0224E874
	ldr r1, [sp, #0x20]
	mov r6, r0
	cmp r1, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r5, #0xa
_022551F8:
	mov r0, r4
	mov r1, r6
	bl ov66_0225366C
	mov r0, r5
	bl ov4_021EA898
	mov r0, r4
	mov r1, r6
	bl ov66_0225355C
	cmp r0, #0
	bne _022551F8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02255228: .word Unk_ov66_0225AAA0
_0225522C: .word Unk_ov66_0225AA94
_02255230: .word Unk_ov66_0225A8F8
_02255234: .word 0x00000847
_02255238: .word Unk_ov66_0225AEA0
_0225523C: .word 0x0000084B
_02255240: .word Unk_ov66_0225AB2C
_02255244: .word ov66_02254FD0
_02255248: .word Unk_ov66_0225AF50
	arm_func_end ov66_02255104

	arm_func_start ov66_0225524C
ov66_0225524C: ; 0x0225524C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _02255278
	ldr r0, _022553B4 ; =0x0225AAA0
	ldr r1, _022553B8 ; =0x0225AA94
	ldr r2, _022553BC ; =0x0225AA0C
	ldr r3, _022553C0 ; =0x00000889
	bl __msl_assertion_failed
_02255278:
	cmp r7, #0
	ldrne r0, [r7]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	bne _022552A4
	ldr r0, _022553C4 ; =0x0225AF5C
	ldr r1, _022553B8 ; =0x0225AA94
	ldr r2, _022553BC ; =0x0225AA0C
	ldr r3, _022553C8 ; =0x0000088C
	bl __msl_assertion_failed
_022552A4:
	ldrsb r0, [r6]
	cmp r0, #0
	bne _022552C4
	ldr r0, _022553CC ; =0x0225AF6C
	ldr r1, _022553B8 ; =0x0225AA94
	ldr r2, _022553BC ; =0x0225AA0C
	ldr r3, _022553C8 ; =0x0000088C
	bl __msl_assertion_failed
_022552C4:
	mov r0, r6
	bl strlen
	cmp r0, #0x80
	blo _022552E8
	ldr r0, _022553D0 ; =0x0225AF7C
	ldr r1, _022553B8 ; =0x0225AA94
	ldr r2, _022553BC ; =0x0225AA0C
	ldr r3, _022553C8 ; =0x0000088C
	bl __msl_assertion_failed
_022552E8:
	cmp r4, #4
	bls _02255304
	ldr r0, _022553D4 ; =0x0225ADD8
	ldr r1, _022553B8 ; =0x0225AA94
	ldr r2, _022553BC ; =0x0225AA0C
	ldr r3, _022553D8 ; =0x0000088D
	bl __msl_assertion_failed
_02255304:
	cmp r5, #0
	ldrnesb r0, [r5]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	bne _02255334
	ldr r1, _022553DC ; =0x0225AE50
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02255334:
	cmp r4, #1
	bne _02255354
	ldr r1, _022553E0 ; =0x0225AE60
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02255354:
	cmp r4, #2
	bne _02255374
	ldr r1, _022553E4 ; =0x0225AE78
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02255374:
	cmp r4, #3
	bne _02255394
	ldr r1, _022553E8 ; =0x0225AE88
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02255394:
	cmp r4, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _022553EC ; =0x0225AE94
	mov r2, r6
	mov r3, r5
	add r0, r7, #0x1c
	bl ov66_02256E70
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022553B4: .word Unk_ov66_0225AAA0
_022553B8: .word Unk_ov66_0225AA94
_022553BC: .word Unk_ov66_0225AA0C
_022553C0: .word 0x00000889
_022553C4: .word Unk_ov66_0225AF5C
_022553C8: .word 0x0000088C
_022553CC: .word Unk_ov66_0225AF6C
_022553D0: .word Unk_ov66_0225AF7C
_022553D4: .word Unk_ov66_0225ADD8
_022553D8: .word 0x0000088D
_022553DC: .word Unk_ov66_0225AE50
_022553E0: .word Unk_ov66_0225AE60
_022553E4: .word Unk_ov66_0225AE78
_022553E8: .word Unk_ov66_0225AE88
_022553EC: .word Unk_ov66_0225AE94
	arm_func_end ov66_0225524C

	arm_func_start ov66_022553F0
ov66_022553F0: ; 0x022553F0
	stmfd sp!, {r4, lr}
	ldr r3, _02255440 ; =0x0225B6F4
	ldr r0, _02255444 ; =0x0225B6F0
	ldr r2, [r3, #0]
	ldr r1, _02255448 ; =0x0225AF9C
	add r4, r2, #1
	str r4, [r3, #0]
	bl sprintf
	ldr ip, _02255440 ; =0x0225B6F4
	ldr r3, _0225544C ; =0x10624DD3
	ldr lr, [ip]
	mov r2, #0x3e8
	mov r0, lr, lsr #0x1f
	smull r1, r4, r3, lr
	add r4, r0, r4, asr #6
	smull r0, r1, r2, r4
	sub r4, lr, r0
	ldr r0, _02255444 ; =0x0225B6F0
	str r4, [ip]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02255440: .word Unk_ov66_0225B6F4
_02255444: .word Unk_ov66_0225B6F0
_02255448: .word Unk_ov66_0225AF9C
_0225544C: .word 0x10624DD3
	arm_func_end ov66_022553F0

	arm_func_start ov66_02255450
ov66_02255450: ; 0x02255450
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x200
	movs sl, r0
	mov r5, r1
	mov r4, r2
	mov sb, r3
	ldr r8, [sp, #0x228]
	ldr r7, [sp, #0x22c]
	bne _02255488
	ldr r0, _0225552C ; =0x0225AAA0
	ldr r1, _02255530 ; =0x0225AA94
	ldr r2, _02255534 ; =0x0225A9B8
	ldr r3, _02255538 ; =0x00000AD7
	bl __msl_assertion_failed
_02255488:
	cmp sl, #0
	ldrne r0, [sl]
	cmpne r0, #0
	addeq sp, sp, #0x200
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r4, #0
	ldrnesb r0, [r4]
	cmpne r0, #0
	add r0, sp, #0
	bne _022554C0
	ldr r1, _0225553C ; =0x0225AFC4
	mov r2, r5
	bl sprintf
	b _022554D0
_022554C0:
	ldr r1, _02255540 ; =0x0225AFD4
	mov r2, r5
	mov r3, r4
	bl sprintf
_022554D0:
	cmp sb, #0
	mov r6, #0
	ble _02255518
	ldr fp, _02255544 ; =0x0225AB2C
	add r4, sp, #0
_022554E4:
	ldr r5, [r7, r6, lsl #2]
	mov r0, r4
	cmp r5, #0
	moveq r5, fp
	bl strlen
	ldr r2, [r8, r6, lsl #2]
	ldr r1, _02255548 ; =0x0225AF94
	mov r3, r5
	add r0, r4, r0
	bl sprintf
	add r6, r6, #1
	cmp r6, sb
	blt _022554E4
_02255518:
	add r1, sp, #0
	add r0, sl, #0x1c
	bl ov66_02256BB0
	add sp, sp, #0x200
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0225552C: .word Unk_ov66_0225AAA0
_02255530: .word Unk_ov66_0225AA94
_02255534: .word Unk_ov66_0225A9B8
_02255538: .word 0x00000AD7
_0225553C: .word Unk_ov66_0225AFC4
_02255540: .word Unk_ov66_0225AFD4
_02255544: .word Unk_ov66_0225AB2C
_02255548: .word Unk_ov66_0225AF94
	arm_func_end ov66_02255450

	arm_func_start ov66_0225554C
ov66_0225554C: ; 0x0225554C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x210
	str r0, [sp, #4]
	cmp r0, #0
	mov r0, #0
	mov r5, r1
	str r2, [sp, #8]
	mov r4, r3
	ldr sl, [sp, #0x238]
	ldr sb, [sp, #0x23c]
	str r0, [sp, #0xc]
	bne _02255590
	ldr r0, _022557B0 ; =0x0225AAA0
	ldr r1, _022557B4 ; =0x0225AA94
	ldr r2, _022557B8 ; =0x0225A97C
	ldr r3, _022557BC ; =0x00000B19
	bl __msl_assertion_failed
_02255590:
	cmp r5, #0
	ldrnesb r0, [r5]
	cmpne r0, #0
	bne _022555B4
	ldr r0, _022557C0 ; =0x0225AFE4
	ldr r1, _022557B4 ; =0x0225AA94
	ldr r2, _022557B8 ; =0x0225A97C
	ldr r3, _022557C4 ; =0x00000B1B
	bl __msl_assertion_failed
_022555B4:
	cmp r4, #0
	ldrnesb r0, [r4]
	cmpne r0, #0
	bne _022555D8
	ldr r0, _022557C8 ; =0x0225AFA4
	ldr r1, _022557B4 ; =0x0225AA94
	ldr r2, _022557B8 ; =0x0225A97C
	ldr r3, _022557CC ; =0x00000B1C
	bl __msl_assertion_failed
_022555D8:
	cmp sl, #0
	beq _022555FC
	cmp sb, #0
	bne _022555FC
	ldr r0, _022557D0 ; =0x0225AFFC
	ldr r1, _022557B4 ; =0x0225AA94
	ldr r2, _022557B8 ; =0x0225A97C
	ldr r3, _022557D4 ; =0x00000B1D
	bl __msl_assertion_failed
_022555FC:
	ldr r0, [sp, #8]
	cmp r0, #0
	ldrnesb r0, [r0]
	cmpne r0, #0
	add r0, sp, #0x10
	bne _02255628
	ldr r1, _022557D8 ; =0x0225B00C
	mov r2, r5
	mov r3, r4
	bl sprintf
	b _0225563C
_02255628:
	ldr r1, _022557DC ; =0x0225B024
	ldr r3, [sp, #8]
	mov r2, r5
	str r4, [sp]
	bl sprintf
_0225563C:
	add r0, sp, #0x10
	bl strlen
	mov r7, r0
	cmp sl, #0
	mov r5, #0
	ble _0225570C
	mov r4, #0x2f
	add fp, sp, #0x10
_0225565C:
	ldr r6, [sb, r5, lsl #2]
	cmp r6, #0
	ldrnesb r0, [r6]
	cmpne r0, #0
	beq _02255700
	ldr r1, _022557E0 ; =0x0225B03C
	mov r0, r6
	bl strcmp
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0xc]
	beq _02255700
	mov r0, r6
	bl strlen
	mov r6, r0
	add r0, r7, r6
	add r0, r0, #1
	cmp r0, #0x200
	bge _02255700
	mov r0, #0x5c
	strb r0, [fp, r7]
	add r7, r7, #1
	add r8, fp, r7
	ldr r1, [sb, r5, lsl #2]
	mov r0, r8
	mov r2, r6
	bl memcpy
	add r2, r7, r6
	mov r1, r7
	cmp r7, r2
	bge _022556F4
_022556D8:
	ldrsb r0, [r8]
	add r1, r1, #1
	cmp r0, #0x5c
	streqb r4, [r8]
	add r8, r8, #1
	cmp r1, r2
	blt _022556D8
_022556F4:
	add r7, r7, r6
	mov r0, #0
	strb r0, [fp, r7]
_02255700:
	add r5, r5, #1
	cmp r5, sl
	blt _0225565C
_0225570C:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0225575C
	add r5, r7, #4
	cmp r5, #0x200
	bge _0225575C
	ldr r3, _022557E4 ; =0x0225B040
	add r4, sp, #0x10
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	ldrb r0, [r3, #2]
	strb r2, [r4, r7]
	add r2, r4, r7
	strb r1, [r2, #1]
	strb r0, [r2, #2]
	ldrb r1, [r3, #3]
	ldrb r0, [r3, #4]
	mov r7, r5
	strb r1, [r2, #3]
	strb r0, [r2, #4]
_0225575C:
	cmp sl, #0
	bne _02255794
	ldr r0, [sp, #8]
	cmp r0, #0
	ldrnesb r0, [r0]
	cmpne r0, #0
	bne _02255794
	ldr r0, _022557E8 ; =0x0225AAC0
	add r2, sp, #0x10
	ldrb r1, [r0]
	ldrb r0, [r0, #1]
	add r3, r2, r7
	strb r1, [r2, r7]
	strb r0, [r3, #1]
_02255794:
	ldr r0, [sp, #4]
	add r1, sp, #0x10
	add r0, r0, #0x1c
	bl ov66_02256BB0
	ldr r0, [sp, #0xc]
	add sp, sp, #0x210
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022557B0: .word Unk_ov66_0225AAA0
_022557B4: .word Unk_ov66_0225AA94
_022557B8: .word Unk_ov66_0225A97C
_022557BC: .word 0x00000B19
_022557C0: .word Unk_ov66_0225AFE4
_022557C4: .word 0x00000B1B
_022557C8: .word Unk_ov66_0225AFA4
_022557CC: .word 0x00000B1C
_022557D0: .word Unk_ov66_0225AFFC
_022557D4: .word 0x00000B1D
_022557D8: .word Unk_ov66_0225B00C
_022557DC: .word Unk_ov66_0225B024
_022557E0: .word Unk_ov66_0225B03C
_022557E4: .word Unk_ov66_0225B040
_022557E8: .word Unk_ov66_0225AAC0
	arm_func_end ov66_0225554C

	arm_func_start ov66_022557EC
ov66_022557EC: ; 0x022557EC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	movs sb, r0
	mov r5, r1
	mov r8, r2
	mov r7, r3
	ldr r6, [sp, #0x30]
	bne _02255820
	ldr r0, _02255964 ; =0x0225AAA0
	ldr r1, _02255968 ; =0x0225AA94
	ldr r2, _0225596C ; =0x0225A9A4
	ldr r3, _02255970 ; =0x00000B6F
	bl __msl_assertion_failed
_02255820:
	cmp sb, #0
	ldrne r0, [sb]
	cmpne r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r7, #0
	bge _02255850
	ldr r0, _02255974 ; =0x0225AFB8
	ldr r1, _02255968 ; =0x0225AA94
	ldr r2, _0225596C ; =0x0225A9A4
	ldr r3, _02255978 ; =0x00000B72
	bl __msl_assertion_failed
_02255850:
	cmp r7, #0
	beq _02255874
	cmp r6, #0
	bne _02255874
	ldr r0, _0225597C ; =0x0225AFFC
	ldr r1, _02255968 ; =0x0225AA94
	ldr r2, _0225596C ; =0x0225A9A4
	ldr r3, _02255980 ; =0x00000B73
	bl __msl_assertion_failed
_02255874:
	bl ov66_022553F0
	mov r4, r0
	str r7, [sp]
	mov r0, sb
	mov r1, r5
	mov r2, r8
	mov r3, r4
	str r6, [sp, #4]
	bl ov66_0225554C
	mov r5, r0
	cmp r8, #0
	ldrnesb r0, [r8]
	cmpne r0, #0
	bne _022558D8
	ldr r0, [sp, #0x34]
	str r5, [sp]
	str r0, [sp, #4]
	ldr r5, [sp, #0x38]
	mov r0, sb
	mov r1, r4
	mov r2, r7
	mov r3, r6
	str r5, [sp, #8]
	bl ov66_0224EA9C
	b _0225591C
_022558D8:
	ldr r1, _02255984 ; =0x0225AAC0
	mov r0, r8
	bl strcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	str r0, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x34]
	ldr r5, [sp, #0x38]
	str r0, [sp, #8]
	mov r0, sb
	mov r1, r4
	mov r2, r7
	mov r3, r6
	str r5, [sp, #0xc]
	bl ov66_0224E928
_0225591C:
	mov r5, r0
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r4, #0xa
_02255934:
	mov r0, sb
	mov r1, r5
	bl ov66_0225366C
	mov r0, r4
	bl ov4_021EA898
	mov r0, sb
	mov r1, r5
	bl ov66_0225355C
	cmp r0, #0
	bne _02255934
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02255964: .word Unk_ov66_0225AAA0
_02255968: .word Unk_ov66_0225AA94
_0225596C: .word Unk_ov66_0225A9A4
_02255970: .word 0x00000B6F
_02255974: .word Unk_ov66_0225AFB8
_02255978: .word 0x00000B72
_0225597C: .word Unk_ov66_0225AFFC
_02255980: .word 0x00000B73
_02255984: .word Unk_ov66_0225AAC0
	arm_func_end ov66_022557EC

	arm_func_start ov66_02255988
ov66_02255988: ; 0x02255988
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl strlen
	cmp r0, #0x15
	movhs r0, #6
	ldmhsia sp!, {r3, r4, r5, pc}
	cmp r5, #0
	ldrnesb r0, [r5]
	cmpne r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0x40
	cmpne r0, #0x23
	cmpne r0, #0x2b
	cmpne r0, #0x3a
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r0, #0
	beq _022559FC
	ldr r4, _02255A04 ; =0x0225AD04
_022559D8:
	ldrsb r1, [r5], #1
	mov r0, r4
	bl strchr
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrsb r0, [r5]
	cmp r0, #0
	bne _022559D8
_022559FC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02255A04: .word Unk_ov66_0225AD04
	arm_func_end ov66_02255988

	arm_func_start ov66_02255A08
ov66_02255A08: ; 0x02255A08
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x20
	movs r4, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bne _02255A38
	ldr r0, _02255ACC ; =0x0225AAA0
	ldr r1, _02255AD0 ; =0x0225AA94
	ldr r2, _02255AD4 ; =0x0225A8C0
	ldr r3, _02255AD8 ; =0x00000BC9
	bl __msl_assertion_failed
_02255A38:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _02255A9C
	add r3, sp, #0x10
	mov r2, #0
	str r2, [r3, #0]
	str r2, [r3, #4]
	str r2, [r3, #8]
	ldr r0, [sp, #0x38]
	str r2, [r3, #0xc]
	str r0, [sp, #0x1c]
	str r7, [sp, #0x10]
	str r6, [sp, #0x14]
	str r5, [sp, #0x18]
	ldr r1, [r4, #0x18]
	mov r0, #0x10
	stmia sp, {r1, r2}
	str r2, [sp, #8]
	str r0, [sp, #0xc]
	ldr r2, [r4, #0xc]
	mov r0, r4
	mov r1, #0x19
	bl ov66_02248C2C
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02255A9C:
	mov r1, #0
	str r1, [r4, #4]
	ldr ip, [r4, #0x14]
	cmp ip, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r3, [r4, #0x18]
	mov r0, r4
	mov r2, #1
	blx ip
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02255ACC: .word Unk_ov66_0225AAA0
_02255AD0: .word Unk_ov66_0225AA94
_02255AD4: .word Unk_ov66_0225A8C0
_02255AD8: .word 0x00000BC9
	arm_func_end ov66_02255A08
	.data


	.global Unk_ov66_0225A89C
Unk_ov66_0225A89C: ; 0x0225A89C
	.incbin "incbin/overlay66_data.bin", 0x1B7C, 0x1B80 - 0x1B7C

	.global Unk_ov66_0225A8A0
Unk_ov66_0225A8A0: ; 0x0225A8A0
	.incbin "incbin/overlay66_data.bin", 0x1B80, 0x1B88 - 0x1B80

	.global Unk_ov66_0225A8A8
Unk_ov66_0225A8A8: ; 0x0225A8A8
	.incbin "incbin/overlay66_data.bin", 0x1B88, 0x1B94 - 0x1B88

	.global Unk_ov66_0225A8B4
Unk_ov66_0225A8B4: ; 0x0225A8B4
	.incbin "incbin/overlay66_data.bin", 0x1B94, 0x1BA0 - 0x1B94

	.global Unk_ov66_0225A8C0
Unk_ov66_0225A8C0: ; 0x0225A8C0
	.incbin "incbin/overlay66_data.bin", 0x1BA0, 0x1BAC - 0x1BA0

	.global Unk_ov66_0225A8CC
Unk_ov66_0225A8CC: ; 0x0225A8CC
	.incbin "incbin/overlay66_data.bin", 0x1BAC, 0x1BB8 - 0x1BAC

	.global Unk_ov66_0225A8D8
Unk_ov66_0225A8D8: ; 0x0225A8D8
	.incbin "incbin/overlay66_data.bin", 0x1BB8, 0x1BC8 - 0x1BB8

	.global Unk_ov66_0225A8E8
Unk_ov66_0225A8E8: ; 0x0225A8E8
	.incbin "incbin/overlay66_data.bin", 0x1BC8, 0x1BD8 - 0x1BC8

	.global Unk_ov66_0225A8F8
Unk_ov66_0225A8F8: ; 0x0225A8F8
	.incbin "incbin/overlay66_data.bin", 0x1BD8, 0x1BE8 - 0x1BD8

	.global Unk_ov66_0225A908
Unk_ov66_0225A908: ; 0x0225A908
	.incbin "incbin/overlay66_data.bin", 0x1BE8, 0x1BF8 - 0x1BE8

	.global Unk_ov66_0225A918
Unk_ov66_0225A918: ; 0x0225A918
	.incbin "incbin/overlay66_data.bin", 0x1BF8, 0x1C0C - 0x1BF8

	.global Unk_ov66_0225A92C
Unk_ov66_0225A92C: ; 0x0225A92C
	.incbin "incbin/overlay66_data.bin", 0x1C0C, 0x1C20 - 0x1C0C

	.global Unk_ov66_0225A940
Unk_ov66_0225A940: ; 0x0225A940
	.incbin "incbin/overlay66_data.bin", 0x1C20, 0x1C34 - 0x1C20

	.global Unk_ov66_0225A954
Unk_ov66_0225A954: ; 0x0225A954
	.incbin "incbin/overlay66_data.bin", 0x1C34, 0x1C48 - 0x1C34

	.global Unk_ov66_0225A968
Unk_ov66_0225A968: ; 0x0225A968
	.incbin "incbin/overlay66_data.bin", 0x1C48, 0x1C5C - 0x1C48

	.global Unk_ov66_0225A97C
Unk_ov66_0225A97C: ; 0x0225A97C
	.incbin "incbin/overlay66_data.bin", 0x1C5C, 0x1C70 - 0x1C5C

	.global Unk_ov66_0225A990
Unk_ov66_0225A990: ; 0x0225A990
	.incbin "incbin/overlay66_data.bin", 0x1C70, 0x1C84 - 0x1C70

	.global Unk_ov66_0225A9A4
Unk_ov66_0225A9A4: ; 0x0225A9A4
	.incbin "incbin/overlay66_data.bin", 0x1C84, 0x1C98 - 0x1C84

	.global Unk_ov66_0225A9B8
Unk_ov66_0225A9B8: ; 0x0225A9B8
	.incbin "incbin/overlay66_data.bin", 0x1C98, 0x1CAC - 0x1C98

	.global Unk_ov66_0225A9CC
Unk_ov66_0225A9CC: ; 0x0225A9CC
	.incbin "incbin/overlay66_data.bin", 0x1CAC, 0x1CC0 - 0x1CAC

	.global Unk_ov66_0225A9E0
Unk_ov66_0225A9E0: ; 0x0225A9E0
	.incbin "incbin/overlay66_data.bin", 0x1CC0, 0x1CD4 - 0x1CC0

	.global Unk_ov66_0225A9F4
Unk_ov66_0225A9F4: ; 0x0225A9F4
	.incbin "incbin/overlay66_data.bin", 0x1CD4, 0x1CEC - 0x1CD4

	.global Unk_ov66_0225AA0C
Unk_ov66_0225AA0C: ; 0x0225AA0C
	.incbin "incbin/overlay66_data.bin", 0x1CEC, 0x1D04 - 0x1CEC

	.global Unk_ov66_0225AA24
Unk_ov66_0225AA24: ; 0x0225AA24
	.incbin "incbin/overlay66_data.bin", 0x1D04, 0x1D1C - 0x1D04

	.global Unk_ov66_0225AA3C
Unk_ov66_0225AA3C: ; 0x0225AA3C
	.incbin "incbin/overlay66_data.bin", 0x1D1C, 0x1D34 - 0x1D1C

	.global Unk_ov66_0225AA54
Unk_ov66_0225AA54: ; 0x0225AA54
	.incbin "incbin/overlay66_data.bin", 0x1D34, 0x1D4C - 0x1D34

	.global Unk_ov66_0225AA6C
Unk_ov66_0225AA6C: ; 0x0225AA6C
	.incbin "incbin/overlay66_data.bin", 0x1D4C, 0x1D64 - 0x1D4C

	.global Unk_ov66_0225AA84
Unk_ov66_0225AA84: ; 0x0225AA84
	.incbin "incbin/overlay66_data.bin", 0x1D64, 0x1D74 - 0x1D64

	.global Unk_ov66_0225AA94
Unk_ov66_0225AA94: ; 0x0225AA94
	.incbin "incbin/overlay66_data.bin", 0x1D74, 0x1D80 - 0x1D74

	.global Unk_ov66_0225AAA0
Unk_ov66_0225AAA0: ; 0x0225AAA0
	.incbin "incbin/overlay66_data.bin", 0x1D80, 0x1D90 - 0x1D80

	.global Unk_ov66_0225AAB0
Unk_ov66_0225AAB0: ; 0x0225AAB0
	.incbin "incbin/overlay66_data.bin", 0x1D90, 0x1DA0 - 0x1D90

	.global Unk_ov66_0225AAC0
Unk_ov66_0225AAC0: ; 0x0225AAC0
	.incbin "incbin/overlay66_data.bin", 0x1DA0, 0x1DA4 - 0x1DA0

	.global Unk_ov66_0225AAC4
Unk_ov66_0225AAC4: ; 0x0225AAC4
	.incbin "incbin/overlay66_data.bin", 0x1DA4, 0x1DAC - 0x1DA4

	.global Unk_ov66_0225AACC
Unk_ov66_0225AACC: ; 0x0225AACC
	.incbin "incbin/overlay66_data.bin", 0x1DAC, 0x1DC0 - 0x1DAC

	.global Unk_ov66_0225AAE0
Unk_ov66_0225AAE0: ; 0x0225AAE0
	.incbin "incbin/overlay66_data.bin", 0x1DC0, 0x1DCC - 0x1DC0

	.global Unk_ov66_0225AAEC
Unk_ov66_0225AAEC: ; 0x0225AAEC
	.incbin "incbin/overlay66_data.bin", 0x1DCC, 0x1DE0 - 0x1DCC

	.global Unk_ov66_0225AB00
Unk_ov66_0225AB00: ; 0x0225AB00
	.incbin "incbin/overlay66_data.bin", 0x1DE0, 0x1DF0 - 0x1DE0

	.global Unk_ov66_0225AB10
Unk_ov66_0225AB10: ; 0x0225AB10
	.incbin "incbin/overlay66_data.bin", 0x1DF0, 0x1E08 - 0x1DF0

	.global Unk_ov66_0225AB28
Unk_ov66_0225AB28: ; 0x0225AB28
	.incbin "incbin/overlay66_data.bin", 0x1E08, 0x1E0C - 0x1E08

	.global Unk_ov66_0225AB2C
Unk_ov66_0225AB2C: ; 0x0225AB2C
	.incbin "incbin/overlay66_data.bin", 0x1E0C, 0x1E10 - 0x1E0C

	.global Unk_ov66_0225AB30
Unk_ov66_0225AB30: ; 0x0225AB30
	.incbin "incbin/overlay66_data.bin", 0x1E10, 0x1E28 - 0x1E10

	.global Unk_ov66_0225AB48
Unk_ov66_0225AB48: ; 0x0225AB48
	.incbin "incbin/overlay66_data.bin", 0x1E28, 0x1E3C - 0x1E28

	.global Unk_ov66_0225AB5C
Unk_ov66_0225AB5C: ; 0x0225AB5C
	.incbin "incbin/overlay66_data.bin", 0x1E3C, 0x1E54 - 0x1E3C

	.global Unk_ov66_0225AB74
Unk_ov66_0225AB74: ; 0x0225AB74
	.incbin "incbin/overlay66_data.bin", 0x1E54, 0x1E64 - 0x1E54

	.global Unk_ov66_0225AB84
Unk_ov66_0225AB84: ; 0x0225AB84
	.incbin "incbin/overlay66_data.bin", 0x1E64, 0x1E74 - 0x1E64

	.global Unk_ov66_0225AB94
Unk_ov66_0225AB94: ; 0x0225AB94
	.incbin "incbin/overlay66_data.bin", 0x1E74, 0x1E8C - 0x1E74

	.global Unk_ov66_0225ABAC
Unk_ov66_0225ABAC: ; 0x0225ABAC
	.incbin "incbin/overlay66_data.bin", 0x1E8C, 0x1E9C - 0x1E8C

	.global Unk_ov66_0225ABBC
Unk_ov66_0225ABBC: ; 0x0225ABBC
	.incbin "incbin/overlay66_data.bin", 0x1E9C, 0x1EB8 - 0x1E9C

	.global Unk_ov66_0225ABD8
Unk_ov66_0225ABD8: ; 0x0225ABD8
	.incbin "incbin/overlay66_data.bin", 0x1EB8, 0x1ED0 - 0x1EB8

	.global Unk_ov66_0225ABF0
Unk_ov66_0225ABF0: ; 0x0225ABF0
	.incbin "incbin/overlay66_data.bin", 0x1ED0, 0x1EE4 - 0x1ED0

	.global Unk_ov66_0225AC04
Unk_ov66_0225AC04: ; 0x0225AC04
	.incbin "incbin/overlay66_data.bin", 0x1EE4, 0x1EF8 - 0x1EE4

	.global Unk_ov66_0225AC18
Unk_ov66_0225AC18: ; 0x0225AC18
	.incbin "incbin/overlay66_data.bin", 0x1EF8, 0x1F18 - 0x1EF8

	.global Unk_ov66_0225AC38
Unk_ov66_0225AC38: ; 0x0225AC38
	.incbin "incbin/overlay66_data.bin", 0x1F18, 0x1F34 - 0x1F18

	.global Unk_ov66_0225AC54
Unk_ov66_0225AC54: ; 0x0225AC54
	.incbin "incbin/overlay66_data.bin", 0x1F34, 0x1F5C - 0x1F34

	.global Unk_ov66_0225AC7C
Unk_ov66_0225AC7C: ; 0x0225AC7C
	.incbin "incbin/overlay66_data.bin", 0x1F5C, 0x1F64 - 0x1F5C

	.global Unk_ov66_0225AC84
Unk_ov66_0225AC84: ; 0x0225AC84
	.incbin "incbin/overlay66_data.bin", 0x1F64, 0x1F7C - 0x1F64

	.global Unk_ov66_0225AC9C
Unk_ov66_0225AC9C: ; 0x0225AC9C
	.incbin "incbin/overlay66_data.bin", 0x1F7C, 0x1F98 - 0x1F7C

	.global Unk_ov66_0225ACB8
Unk_ov66_0225ACB8: ; 0x0225ACB8
	.incbin "incbin/overlay66_data.bin", 0x1F98, 0x1FA8 - 0x1F98

	.global Unk_ov66_0225ACC8
Unk_ov66_0225ACC8: ; 0x0225ACC8
	.incbin "incbin/overlay66_data.bin", 0x1FA8, 0x1FB0 - 0x1FA8

	.global Unk_ov66_0225ACD0
Unk_ov66_0225ACD0: ; 0x0225ACD0
	.incbin "incbin/overlay66_data.bin", 0x1FB0, 0x1FBC - 0x1FB0

	.global Unk_ov66_0225ACDC
Unk_ov66_0225ACDC: ; 0x0225ACDC
	.incbin "incbin/overlay66_data.bin", 0x1FBC, 0x1FD4 - 0x1FBC

	.global Unk_ov66_0225ACF4
Unk_ov66_0225ACF4: ; 0x0225ACF4
	.incbin "incbin/overlay66_data.bin", 0x1FD4, 0x1FE4 - 0x1FD4

	.global Unk_ov66_0225AD04
Unk_ov66_0225AD04: ; 0x0225AD04
	.incbin "incbin/overlay66_data.bin", 0x1FE4, 0x2044 - 0x1FE4

	.global Unk_ov66_0225AD64
Unk_ov66_0225AD64: ; 0x0225AD64
	.incbin "incbin/overlay66_data.bin", 0x2044, 0x2074 - 0x2044

	.global Unk_ov66_0225AD94
Unk_ov66_0225AD94: ; 0x0225AD94
	.incbin "incbin/overlay66_data.bin", 0x2074, 0x207C - 0x2074

	.global Unk_ov66_0225AD9C
Unk_ov66_0225AD9C: ; 0x0225AD9C
	.incbin "incbin/overlay66_data.bin", 0x207C, 0x208C - 0x207C

	.global Unk_ov66_0225ADAC
Unk_ov66_0225ADAC: ; 0x0225ADAC
	.incbin "incbin/overlay66_data.bin", 0x208C, 0x20A0 - 0x208C

	.global Unk_ov66_0225ADC0
Unk_ov66_0225ADC0: ; 0x0225ADC0
	.incbin "incbin/overlay66_data.bin", 0x20A0, 0x20AC - 0x20A0

	.global Unk_ov66_0225ADCC
Unk_ov66_0225ADCC: ; 0x0225ADCC
	.incbin "incbin/overlay66_data.bin", 0x20AC, 0x20B8 - 0x20AC

	.global Unk_ov66_0225ADD8
Unk_ov66_0225ADD8: ; 0x0225ADD8
	.incbin "incbin/overlay66_data.bin", 0x20B8, 0x2130 - 0x20B8

	.global Unk_ov66_0225AE50
Unk_ov66_0225AE50: ; 0x0225AE50
	.incbin "incbin/overlay66_data.bin", 0x2130, 0x2140 - 0x2130

	.global Unk_ov66_0225AE60
Unk_ov66_0225AE60: ; 0x0225AE60
	.incbin "incbin/overlay66_data.bin", 0x2140, 0x2158 - 0x2140

	.global Unk_ov66_0225AE78
Unk_ov66_0225AE78: ; 0x0225AE78
	.incbin "incbin/overlay66_data.bin", 0x2158, 0x2168 - 0x2158

	.global Unk_ov66_0225AE88
Unk_ov66_0225AE88: ; 0x0225AE88
	.incbin "incbin/overlay66_data.bin", 0x2168, 0x2174 - 0x2168

	.global Unk_ov66_0225AE94
Unk_ov66_0225AE94: ; 0x0225AE94
	.incbin "incbin/overlay66_data.bin", 0x2174, 0x2180 - 0x2174

	.global Unk_ov66_0225AEA0
Unk_ov66_0225AEA0: ; 0x0225AEA0
	.incbin "incbin/overlay66_data.bin", 0x2180, 0x2194 - 0x2180

	.global Unk_ov66_0225AEB4
Unk_ov66_0225AEB4: ; 0x0225AEB4
	.incbin "incbin/overlay66_data.bin", 0x2194, 0x21A4 - 0x2194

	.global Unk_ov66_0225AEC4
Unk_ov66_0225AEC4: ; 0x0225AEC4
	.incbin "incbin/overlay66_data.bin", 0x21A4, 0x21B8 - 0x21A4

	.global Unk_ov66_0225AED8
Unk_ov66_0225AED8: ; 0x0225AED8
	.incbin "incbin/overlay66_data.bin", 0x21B8, 0x21BC - 0x21B8

	.global Unk_ov66_0225AEDC
Unk_ov66_0225AEDC: ; 0x0225AEDC
	.incbin "incbin/overlay66_data.bin", 0x21BC, 0x21C8 - 0x21BC

	.global Unk_ov66_0225AEE8
Unk_ov66_0225AEE8: ; 0x0225AEE8
	.incbin "incbin/overlay66_data.bin", 0x21C8, 0x21D0 - 0x21C8

	.global Unk_ov66_0225AEF0
Unk_ov66_0225AEF0: ; 0x0225AEF0
	.incbin "incbin/overlay66_data.bin", 0x21D0, 0x21DC - 0x21D0

	.global Unk_ov66_0225AEFC
Unk_ov66_0225AEFC: ; 0x0225AEFC
	.incbin "incbin/overlay66_data.bin", 0x21DC, 0x21EC - 0x21DC

	.global Unk_ov66_0225AF0C
Unk_ov66_0225AF0C: ; 0x0225AF0C
	.incbin "incbin/overlay66_data.bin", 0x21EC, 0x21F8 - 0x21EC

	.global Unk_ov66_0225AF18
Unk_ov66_0225AF18: ; 0x0225AF18
	.incbin "incbin/overlay66_data.bin", 0x21F8, 0x2208 - 0x21F8

	.global Unk_ov66_0225AF28
Unk_ov66_0225AF28: ; 0x0225AF28
	.incbin "incbin/overlay66_data.bin", 0x2208, 0x2218 - 0x2208

	.global Unk_ov66_0225AF38
Unk_ov66_0225AF38: ; 0x0225AF38
	.incbin "incbin/overlay66_data.bin", 0x2218, 0x2230 - 0x2218

	.global Unk_ov66_0225AF50
Unk_ov66_0225AF50: ; 0x0225AF50
	.incbin "incbin/overlay66_data.bin", 0x2230, 0x223C - 0x2230

	.global Unk_ov66_0225AF5C
Unk_ov66_0225AF5C: ; 0x0225AF5C
	.incbin "incbin/overlay66_data.bin", 0x223C, 0x224C - 0x223C

	.global Unk_ov66_0225AF6C
Unk_ov66_0225AF6C: ; 0x0225AF6C
	.incbin "incbin/overlay66_data.bin", 0x224C, 0x225C - 0x224C

	.global Unk_ov66_0225AF7C
Unk_ov66_0225AF7C: ; 0x0225AF7C
	.incbin "incbin/overlay66_data.bin", 0x225C, 0x2274 - 0x225C

	.global Unk_ov66_0225AF94
Unk_ov66_0225AF94: ; 0x0225AF94
	.incbin "incbin/overlay66_data.bin", 0x2274, 0x227C - 0x2274

	.global Unk_ov66_0225AF9C
Unk_ov66_0225AF9C: ; 0x0225AF9C
	.incbin "incbin/overlay66_data.bin", 0x227C, 0x2284 - 0x227C

	.global Unk_ov66_0225AFA4
Unk_ov66_0225AFA4: ; 0x0225AFA4
	.incbin "incbin/overlay66_data.bin", 0x2284, 0x2298 - 0x2284

	.global Unk_ov66_0225AFB8
Unk_ov66_0225AFB8: ; 0x0225AFB8
	.incbin "incbin/overlay66_data.bin", 0x2298, 0x22A4 - 0x2298

	.global Unk_ov66_0225AFC4
Unk_ov66_0225AFC4: ; 0x0225AFC4
	.incbin "incbin/overlay66_data.bin", 0x22A4, 0x22B4 - 0x22A4

	.global Unk_ov66_0225AFD4
Unk_ov66_0225AFD4: ; 0x0225AFD4
	.incbin "incbin/overlay66_data.bin", 0x22B4, 0x22C4 - 0x22B4

	.global Unk_ov66_0225AFE4
Unk_ov66_0225AFE4: ; 0x0225AFE4
	.incbin "incbin/overlay66_data.bin", 0x22C4, 0x22DC - 0x22C4

	.global Unk_ov66_0225AFFC
Unk_ov66_0225AFFC: ; 0x0225AFFC
	.incbin "incbin/overlay66_data.bin", 0x22DC, 0x22EC - 0x22DC

	.global Unk_ov66_0225B00C
Unk_ov66_0225B00C: ; 0x0225B00C
	.incbin "incbin/overlay66_data.bin", 0x22EC, 0x2304 - 0x22EC

	.global Unk_ov66_0225B024
Unk_ov66_0225B024: ; 0x0225B024
	.incbin "incbin/overlay66_data.bin", 0x2304, 0x231C - 0x2304

	.global Unk_ov66_0225B03C
Unk_ov66_0225B03C: ; 0x0225B03C
	.incbin "incbin/overlay66_data.bin", 0x231C, 0x2320 - 0x231C

	.global Unk_ov66_0225B040
Unk_ov66_0225B040: ; 0x0225B040
	.incbin "incbin/overlay66_data.bin", 0x2320, 0x5


	.bss


	.global Unk_ov66_0225B6F0
Unk_ov66_0225B6F0: ; 0x0225B6F0
	.space 0x4

	.global Unk_ov66_0225B6F4
Unk_ov66_0225B6F4: ; 0x0225B6F4
	.space 0x4

