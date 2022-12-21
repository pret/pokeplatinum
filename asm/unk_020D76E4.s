	.include "macros/function.inc"
	.include "include/unk_020D76E4.inc"

	

	.text


	arm_func_start sub_020D76E4
sub_020D76E4: ; 0x020D76E4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	ldr r6, _020D7BD4 ; =0x020FE964
	add r5, sp, #0
	mov r7, r0
	mov lr, r1
	mov r4, r5
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1}
	stmia r5, {r0, r1}
	ldrsb r0, [r7, #1]
	add ip, r7, #1
	cmp r0, #0x25
	bne _020D7750
	strb r0, [sp, #3]
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	add sp, sp, #0x28
	add r0, ip, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020D7750:
	cmp r0, #0x2a
	moveq r0, #1
	streqb r0, [sp]
	ldreqsb r0, [ip, #1]!
	cmp r0, #0
	blt _020D7770
	cmp r0, #0x80
	blt _020D7778
_020D7770:
	mov r1, #0
	b _020D7788
_020D7778:
	ldr r1, _020D7BD8 ; =0x020FE864
	mov r2, r0, lsl #1
	ldrh r1, [r1, r2]
	and r1, r1, #8
_020D7788:
	cmp r1, #0
	beq _020D7828
	mov r1, #0
	ldr r3, _020D7BD8 ; =0x020FE864
	str r1, [sp, #4]
	mov r4, r1
	mov r1, #0xa
_020D77A4:
	ldr r2, [sp, #4]
	sub r0, r0, #0x30
	mla r0, r2, r1, r0
	str r0, [sp, #4]
	ldrsb r0, [ip, #1]!
	cmp r0, #0
	blt _020D77C8
	cmp r0, #0x80
	blt _020D77D0
_020D77C8:
	mov r2, r4
	b _020D77DC
_020D77D0:
	mov r2, r0, lsl #1
	ldrh r2, [r3, r2]
	and r2, r2, #8
_020D77DC:
	cmp r2, #0
	bne _020D77A4
	ldr r1, [sp, #4]
	cmp r1, #0
	bne _020D7820
	mov r0, #0xff
	add r4, sp, #0
	strb r0, [sp, #3]
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	add sp, sp, #0x28
	add r0, ip, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020D7820:
	mov r1, #1
	strb r1, [sp, #1]
_020D7828:
	cmp r0, #0x6c
	mov r1, #1
	bgt _020D7860
	cmp r0, #0x68
	blt _020D7854
	beq _020D787C
	cmp r0, #0x6a
	beq _020D78C8
	cmp r0, #0x6c
	beq _020D7898
	b _020D78EC
_020D7854:
	cmp r0, #0x4c
	beq _020D78BC
	b _020D78EC
_020D7860:
	cmp r0, #0x74
	bgt _020D7870
	beq _020D78E0
	b _020D78EC
_020D7870:
	cmp r0, #0x7a
	beq _020D78D4
	b _020D78EC
_020D787C:
	mov r2, #2
	strb r2, [sp, #2]
	ldrsb r2, [ip, #1]
	cmp r2, #0x68
	streqb r1, [sp, #2]
	ldreqsb r0, [ip, #1]!
	b _020D78F0
_020D7898:
	mov r2, #3
	strb r2, [sp, #2]
	ldrsb r2, [ip, #1]
	cmp r2, #0x6c
	bne _020D78F0
	mov r0, #7
	strb r0, [sp, #2]
	ldrsb r0, [ip, #1]!
	b _020D78F0
_020D78BC:
	mov r2, #9
	strb r2, [sp, #2]
	b _020D78F0
_020D78C8:
	mov r2, #4
	strb r2, [sp, #2]
	b _020D78F0
_020D78D4:
	mov r2, #5
	strb r2, [sp, #2]
	b _020D78F0
_020D78E0:
	mov r2, #6
	strb r2, [sp, #2]
	b _020D78F0
_020D78EC:
	mov r1, #0
_020D78F0:
	cmp r1, #0
	ldrnesb r0, [ip, #1]!
	strb r0, [sp, #3]
	cmp r0, #0x5b
	bgt _020D7944
	bge _020D7A94
	cmp r0, #0x47
	bgt _020D7938
	subs r1, r0, #0x41
	addpl pc, pc, r1, lsl #2
	b _020D7BA4
_020D791C: ; jump table
	b _020D79D0 ; case 0
	b _020D7BA4 ; case 1
	b _020D7BA4 ; case 2
	b _020D7BA4 ; case 3
	b _020D79D0 ; case 4
	b _020D79D0 ; case 5
	b _020D79D0 ; case 6
_020D7938:
	cmp r0, #0x58
	beq _020D79BC
	b _020D7BA4
_020D7944:
	cmp r0, #0x61
	bgt _020D7954
	beq _020D79D0
	b _020D7BA4
_020D7954:
	sub r0, r0, #0x63
	cmp r0, #0x15
	addls pc, pc, r0, lsl #2
	b _020D7BA4
_020D7964: ; jump table
	b _020D7A20 ; case 0
	b _020D79BC ; case 1
	b _020D79D0 ; case 2
	b _020D79D0 ; case 3
	b _020D79D0 ; case 4
	b _020D7BA4 ; case 5
	b _020D79BC ; case 6
	b _020D7BA4 ; case 7
	b _020D7BA4 ; case 8
	b _020D7BA4 ; case 9
	b _020D7BA4 ; case 10
	b _020D7BAC ; case 11
	b _020D79BC ; case 12
	b _020D7A0C ; case 13
	b _020D7BA4 ; case 14
	b _020D7BA4 ; case 15
	b _020D7A44 ; case 16
	b _020D7BA4 ; case 17
	b _020D79BC ; case 18
	b _020D7BA4 ; case 19
	b _020D7BA4 ; case 20
	b _020D79BC ; case 21
_020D79BC:
	ldrb r0, [sp, #2]
	cmp r0, #9
	moveq r0, #0xff
	streqb r0, [sp, #3]
	b _020D7BAC
_020D79D0:
	ldrb r1, [sp, #2]
	cmp r1, #1
	cmpne r1, #2
	beq _020D79F0
	add r0, r1, #0xfc
	and r0, r0, #0xff
	cmp r0, #3
	bhi _020D79FC
_020D79F0:
	mov r0, #0xff
	strb r0, [sp, #3]
	b _020D7BAC
_020D79FC:
	cmp r1, #3
	moveq r0, #8
	streqb r0, [sp, #2]
	b _020D7BAC
_020D7A0C:
	mov r1, #3
	mov r0, #0x78
	strb r1, [sp, #2]
	strb r0, [sp, #3]
	b _020D7BAC
_020D7A20:
	ldrb r0, [sp, #2]
	cmp r0, #3
	moveq r0, #0xa
	streqb r0, [sp, #2]
	beq _020D7BAC
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sp, #3]
	b _020D7BAC
_020D7A44:
	ldrb r0, [sp, #2]
	cmp r0, #3
	moveq r0, #0xa
	streqb r0, [sp, #2]
	beq _020D7A64
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sp, #3]
_020D7A64:
	add r2, sp, #8
	mov r1, #0x20
	mov r0, #0xff
_020D7A70:
	sub r1, r1, #1
	cmp r1, #0
	strb r0, [r2], #1
	bgt _020D7A70
	mov r1, #0xc1
	mov r0, #0xfe
	strb r1, [sp, #9]
	strb r0, [sp, #0xc]
	b _020D7BAC
_020D7A94:
	ldrb r0, [sp, #2]
	cmp r0, #3
	moveq r0, #0xa
	streqb r0, [sp, #2]
	beq _020D7AB4
	cmp r0, #0
	movne r0, #0xff
	strneb r0, [sp, #3]
_020D7AB4:
	ldrsb r2, [ip, #1]!
	mov r1, #0
	cmp r2, #0x5e
	ldreqsb r2, [ip, #1]!
	moveq r1, #1
	cmp r2, #0x5d
	bne _020D7B5C
	ldrb r0, [sp, #0x13]
	orr r0, r0, #0x20
	strb r0, [sp, #0x13]
	ldrsb r2, [ip, #1]!
	b _020D7B5C
_020D7AE4:
	add r0, sp, #0
	and r3, r2, #0xff
	add r6, r0, r3, asr #3
	ldrb r5, [r6, #8]
	and r3, r2, #7
	mov r4, #1
	orr r3, r5, r4, lsl r3
	strb r3, [r6, #8]
	ldrsb r3, [ip, #1]
	cmp r3, #0x2d
	bne _020D7B58
	ldrsb r7, [ip, #2]
	cmp r7, #0
	cmpne r7, #0x5d
	beq _020D7B58
	add r2, r2, #1
	cmp r2, r7
	bgt _020D7B50
_020D7B2C:
	and r3, r2, #0xff
	add r6, r0, r3, asr #3
	ldrb r5, [r6, #8]
	and r3, r2, #7
	add r2, r2, #1
	orr r3, r5, r4, lsl r3
	strb r3, [r6, #8]
	cmp r2, r7
	ble _020D7B2C
_020D7B50:
	ldrsb r2, [ip, #3]!
	b _020D7B5C
_020D7B58:
	ldrsb r2, [ip, #1]!
_020D7B5C:
	cmp r2, #0
	cmpne r2, #0x5d
	bne _020D7AE4
	cmp r2, #0
	moveq r0, #0xff
	streqb r0, [sp, #3]
	beq _020D7BAC
	cmp r1, #0
	beq _020D7BAC
	add r2, sp, #8
	mov r1, #0x20
_020D7B88:
	ldrb r0, [r2]
	sub r1, r1, #1
	cmp r1, #0
	mvn r0, r0
	strb r0, [r2], #1
	bgt _020D7B88
	b _020D7BAC
_020D7BA4:
	mov r0, #0xff
	strb r0, [sp, #3]
_020D7BAC:
	add r4, sp, #0
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r4, {r0, r1}
	stmia lr, {r0, r1}
	add r0, ip, #1
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D7BD4: .word 0x020FE964
_020D7BD8: .word 0x020FE864
	arm_func_end sub_020D76E4

	arm_func_start sub_020D7BDC
sub_020D7BDC: ; 0x020D7BDC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x88
	ldrsb r5, [r2]
	str r2, [sp, #0xc]
	mov r2, #0
	mov sb, r0
	mov r0, r2
	str r2, [sp, #0x20]
	mov r8, r1
	str r3, [sp, #0x10]
	str r0, [sp, #0x24]
	cmp r5, #0
	ldr sl, [sp, #0xb0]
	str r0, [sp, #0x30]
	mov r4, r2
	str r0, [sp, #0x44]
	str r0, [sp, #0x40]
	beq _020D88F0
_020D7C24:
	cmp r5, #0
	mov r0, #1
	blt _020D7C38
	cmp r5, #0x80
	movlt r0, #0
_020D7C38:
	cmp r0, #0
	movne r0, #0
	bne _020D7C54
	mov r1, r5, lsl #1
	ldr r0, _020D8928 ; =0x020FE864
	ldrh r0, [r0, r1]
	and r0, r0, #0x100
_020D7C54:
	cmp r0, #0
	beq _020D7D14
	mov r2, #0
	ldr r1, _020D8928 ; =0x020FE864
	mov ip, r2
	mov r3, #1
_020D7C6C:
	ldr r0, [sp, #0xc]
	ldrsb r5, [r0, #1]!
	str r0, [sp, #0xc]
	mov r0, r3
	cmp r5, #0
	blt _020D7C8C
	cmp r5, #0x80
	movlt r0, r2
_020D7C8C:
	cmp r0, #0
	movne r0, ip
	moveq r0, r5, lsl #1
	ldreqh r0, [r1, r0]
	andeq r0, r0, #0x100
	cmp r0, #0
	bne _020D7C6C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D88E0
	ldr r5, _020D8928 ; =0x020FE864
	b _020D7CC0
_020D7CBC:
	add r4, r4, #1
_020D7CC0:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	strb r0, [sp, #0x50]
	ldrsb r1, [sp, #0x50]
	cmp r1, #0
	blt _020D7CE8
	cmp r1, #0x80
	blt _020D7CF0
_020D7CE8:
	mov r0, #0
	b _020D7CFC
_020D7CF0:
	mov r0, r1, lsl #1
	ldrh r0, [r5, r0]
	and r0, r0, #0x100
_020D7CFC:
	cmp r0, #0
	bne _020D7CBC
	mov r0, r8
	mov r2, #1
	blx sb
	b _020D88E0
_020D7D14:
	cmp r5, #0x25
	beq _020D7D8C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D7D8C
	mov r0, r8
	mov r1, #0
	mov r2, r1
	blx sb
	strb r0, [sp, #0x50]
	and r0, r5, #0xff
	ldrsb r1, [sp, #0x50]
	cmp r0, r1
	beq _020D7D78
	mov r0, r8
	mov r2, #1
	blx sb
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _020D88E0
_020D7D78:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	add r0, r0, #1
	str r0, [sp, #0xc]
	b _020D88E0
_020D7D8C:
	ldr r0, [sp, #0xc]
	add r1, sp, #0x60
	bl sub_020D76E4
	str r0, [sp, #0xc]
	ldrb r0, [sp, #0x60]
	cmp r0, #0
	bne _020D7DC8
	ldrb r0, [sp, #0x63]
	cmp r0, #0x25
	beq _020D7DC8
	ldr r0, [sp, #0x10]
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r5, [r0, #-4]
	b _020D7DCC
_020D7DC8:
	mov r5, #0
_020D7DCC:
	ldrb r0, [sp, #0x63]
	cmp r0, #0x6e
	beq _020D7E0C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D7E0C
	mov r0, r8
	mov r1, #0
	mov r2, #2
	blx sb
	cmp r0, #0
	beq _020D7E0C
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
_020D7E0C:
	ldrb r1, [sp, #0x63]
	cmp r1, #0x5b
	bgt _020D7E64
	bge _020D8638
	cmp r1, #0x47
	bgt _020D7E58
	subs r0, r1, #0x41
	addpl pc, pc, r0, lsl #2
	b _020D7E4C
_020D7E30: ; jump table
	b _020D82B4 ; case 0
	b _020D88F0 ; case 1
	b _020D88F0 ; case 2
	b _020D88F0 ; case 3
	b _020D82B4 ; case 4
	b _020D82B4 ; case 5
	b _020D82B4 ; case 6
_020D7E4C:
	cmp r1, #0x25
	beq _020D8530
	b _020D88F0
_020D7E58:
	cmp r1, #0x58
	beq _020D80F0
	b _020D88F0
_020D7E64:
	cmp r1, #0x78
	bgt _020D7EDC
	subs r0, r1, #0x63
	addpl pc, pc, r0, lsl #2
	b _020D7ED0
_020D7E78: ; jump table
	b _020D8378 ; case 0
	b _020D7EE4 ; case 1
	b _020D82B4 ; case 2
	b _020D82B4 ; case 3
	b _020D82B4 ; case 4
	b _020D88F0 ; case 5
	b _020D7EEC ; case 6
	b _020D88F0 ; case 7
	b _020D88F0 ; case 8
	b _020D88F0 ; case 9
	b _020D88F0 ; case 10
	b _020D887C ; case 11
	b _020D80E0 ; case 12
	b _020D88F0 ; case 13
	b _020D88F0 ; case 14
	b _020D88F0 ; case 15
	b _020D85BC ; case 16
	b _020D88F0 ; case 17
	b _020D80E8 ; case 18
	b _020D88F0 ; case 19
	b _020D88F0 ; case 20
	b _020D80F0 ; case 21
_020D7ED0:
	cmp r1, #0x61
	beq _020D82B4
	b _020D88F0
_020D7EDC:
	cmp r1, #0xff
	b _020D88F0
_020D7EE4:
	mov r0, #0xa
	b _020D7EF0
_020D7EEC:
	mov r0, #0
_020D7EF0:
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _020D7F10
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	b _020D8018
_020D7F10:
	ldrb r1, [sp, #0x62]
	add r2, sp, #0x5c
	cmp r1, #7
	cmpne r1, #4
	add r1, sp, #0x58
	bne _020D7F54
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x54
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	mov r2, sb
	mov r3, r8
	bl sub_020DA840
	str r0, [sp, #0x34]
	str r1, [sp, #0x18]
	b _020D7F78
_020D7F54:
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x54
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	mov r2, sb
	mov r3, r8
	bl sub_020DA458
	str r0, [sp, #0x3c]
_020D7F78:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _020D7FA8
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x1c]
	str r0, [sp, #0x20]
	str r0, [sp, #0x24]
	b _020D8018
_020D7FA8:
	add r4, r4, r0
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	cmpne r0, #4
	bne _020D7FF8
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _020D7FE4
	ldr r0, [sp, #0x34]
	rsbs r0, r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	rsc r0, r0, #0
	str r0, [sp, #0x24]
	b _020D8018
_020D7FE4:
	ldr r0, [sp, #0x34]
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x18]
	str r0, [sp, #0x24]
	b _020D8018
_020D7FF8:
	ldr r0, [sp, #0x58]
	cmp r0, #0
	ldreq r0, [sp, #0x3c]
	streq r0, [sp, #0x1c]
	beq _020D8018
	ldr r0, [sp, #0x3c]
	rsb r0, r0, #0
	str r0, [sp, #0x1c]
_020D8018:
	cmp r5, #0
	beq _020D80D0
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020D80BC
_020D8030: ; jump table
	b _020D8050 ; case 0
	b _020D805C ; case 1
	b _020D8068 ; case 2
	b _020D8074 ; case 3
	b _020D8080 ; case 4
	b _020D8094 ; case 5
	b _020D80A0 ; case 6
	b _020D80AC ; case 7
_020D8050:
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0]
	b _020D80BC
_020D805C:
	ldr r0, [sp, #0x1c]
	strb r0, [r5]
	b _020D80BC
_020D8068:
	ldr r0, [sp, #0x1c]
	strh r0, [r5]
	b _020D80BC
_020D8074:
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0]
	b _020D80BC
_020D8080:
	ldr r0, [sp, #0x20]
	str r0, [r5, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #4]
	b _020D80BC
_020D8094:
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0]
	b _020D80BC
_020D80A0:
	ldr r0, [sp, #0x1c]
	str r0, [r5, #0]
	b _020D80BC
_020D80AC:
	ldr r0, [sp, #0x20]
	str r0, [r5, #0]
	ldr r0, [sp, #0x24]
	str r0, [r5, #4]
_020D80BC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ldreq r0, [sp, #0x44]
	addeq r0, r0, #1
	streq r0, [sp, #0x44]
_020D80D0:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D80E0:
	mov r0, #8
	b _020D80F4
_020D80E8:
	mov r0, #0xa
	b _020D80F4
_020D80F0:
	mov r0, #0x10
_020D80F4:
	ldr r1, [sp, #0x30]
	cmp r1, #0
	beq _020D8114
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x34]
	str r0, [sp, #0x18]
	b _020D81EC
_020D8114:
	ldrb r1, [sp, #0x62]
	add r2, sp, #0x5c
	cmp r1, #7
	cmpne r1, #4
	add r1, sp, #0x58
	bne _020D8158
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x54
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	mov r2, sb
	mov r3, r8
	bl sub_020DA840
	str r0, [sp, #0x34]
	str r1, [sp, #0x18]
	b _020D817C
_020D8158:
	str r2, [sp]
	str r1, [sp, #4]
	add r1, sp, #0x54
	str r1, [sp, #8]
	ldr r1, [sp, #0x64]
	mov r2, sb
	mov r3, r8
	bl sub_020DA458
	str r0, [sp, #0x3c]
_020D817C:
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _020D81AC
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [sp, #0x34]
	str r0, [sp, #0x18]
	b _020D81EC
_020D81AC:
	add r4, r4, r0
	ldr r0, [sp, #0x58]
	cmp r0, #0
	beq _020D81EC
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	ldrne r0, [sp, #0x3c]
	rsbne r0, r0, #0
	strne r0, [sp, #0x3c]
	bne _020D81EC
	ldr r0, [sp, #0x34]
	rsbs r0, r0, #0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	rsc r0, r0, #0
	str r0, [sp, #0x18]
_020D81EC:
	cmp r5, #0
	beq _020D82A4
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020D8290
_020D8204: ; jump table
	b _020D8224 ; case 0
	b _020D8230 ; case 1
	b _020D823C ; case 2
	b _020D8248 ; case 3
	b _020D8254 ; case 4
	b _020D8268 ; case 5
	b _020D8274 ; case 6
	b _020D8280 ; case 7
_020D8224:
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0]
	b _020D8290
_020D8230:
	ldr r0, [sp, #0x3c]
	strb r0, [r5]
	b _020D8290
_020D823C:
	ldr r0, [sp, #0x3c]
	strh r0, [r5]
	b _020D8290
_020D8248:
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0]
	b _020D8290
_020D8254:
	ldr r0, [sp, #0x34]
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	str r0, [r5, #4]
	b _020D8290
_020D8268:
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0]
	b _020D8290
_020D8274:
	ldr r0, [sp, #0x3c]
	str r0, [r5, #0]
	b _020D8290
_020D8280:
	ldr r0, [sp, #0x34]
	str r0, [r5, #0]
	ldr r0, [sp, #0x18]
	str r0, [r5, #4]
_020D8290:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ldreq r0, [sp, #0x44]
	addeq r0, r0, #1
	streq r0, [sp, #0x44]
_020D82A4:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D82B4:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _020D82D0
	ldr r0, _020D892C ; =0x021015B0
	ldr r0, [r0, #0]
	bl sub_020E16BC
	b _020D831C
_020D82D0:
	add r0, sp, #0x54
	str r0, [sp]
	ldr r0, [sp, #0x64]
	mov r1, sb
	mov r2, r8
	add r3, sp, #0x5c
	bl sub_020D911C
	ldr r2, [sp, #0x5c]
	cmp r2, #0
	bne _020D8318
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	ldr r0, _020D892C ; =0x021015B0
	ldr r0, [r0, #0]
	bl sub_020E16BC
	b _020D831C
_020D8318:
	add r4, r4, r2
_020D831C:
	cmp r5, #0
	beq _020D8368
	ldrb r2, [sp, #0x62]
	cmp r2, #0
	beq _020D8344
	cmp r2, #8
	beq _020D8350
	cmp r2, #9
	stmeqia r5, {r0, r1}
	b _020D8354
_020D8344:
	bl sub_020DFF84
	str r0, [r5, #0]
	b _020D8354
_020D8350:
	stmia r5, {r0, r1}
_020D8354:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	ldreq r0, [sp, #0x44]
	addeq r0, r0, #1
	streq r0, [sp, #0x44]
_020D8368:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D8378:
	ldrb r0, [sp, #0x61]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #0x64]
	cmp r5, #0
	beq _020D84C0
	cmp sl, #0
	beq _020D83AC
	ldr r0, [sp, #0x10]
	mov r7, #1
	add r0, r0, #4
	ldr fp, [r0, #-4]
	str r0, [sp, #0x10]
_020D83AC:
	ldr r0, [sp, #0x30]
	mov r1, #0
	cmp r0, #0
	str r1, [sp, #0x5c]
	beq _020D83CC
	cmp fp, #0
	strneb r1, [r5]
	b _020D88E0
_020D83CC:
	mvn r0, #0
	str r5, [sp, #0x2c]
	str r0, [sp, #0x48]
	b _020D8414
_020D83DC:
	ldrb r0, [sp, #0x62]
	strb r6, [sp, #0x50]
	cmp r0, #0xa
	ldrnesb r0, [sp, #0x50]
	strneb r0, [r5], #1
	bne _020D8408
	mov r0, r5
	add r1, sp, #0x50
	mov r2, #1
	bl sub_020D4F34
	add r5, r5, #1
_020D8408:
	ldr r0, [sp, #0x5c]
	add r1, r0, #1
	str r1, [sp, #0x5c]
_020D8414:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	sub r0, r0, #1
	str r0, [sp, #0x64]
	beq _020D8464
	cmp sl, #0
	beq _020D8444
	cmp fp, r1
	movhi r7, #1
	movls r7, #0
	cmp r7, #0
	beq _020D8464
_020D8444:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r6, r0
	ldr r0, [sp, #0x48]
	cmp r6, r0
	bne _020D83DC
_020D8464:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _020D8484
	cmp sl, #0
	beq _020D84AC
	cmp r7, #0
	bne _020D84AC
_020D8484:
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	cmp fp, #0
	str r0, [sp, #0x30]
	beq _020D88E0
	ldr r0, [sp, #0x2c]
	mov r1, #0
	strb r1, [r0]
	b _020D88E0
_020D84AC:
	add r4, r4, r0
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	b _020D8520
_020D84C0:
	mov r0, #0
	str r0, [sp, #0x5c]
	mvn r5, #0
	b _020D84E0
_020D84D0:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	add r0, r0, #1
	str r0, [sp, #0x5c]
_020D84E0:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	sub r0, r0, #1
	str r0, [sp, #0x64]
	beq _020D8510
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r6, r0
	cmp r6, r5
	bne _020D84D0
_020D8510:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _020D88F0
_020D8520:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D8530:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D88E0
	ldr r5, _020D8928 ; =0x020FE864
	b _020D8548
_020D8544:
	add r4, r4, #1
_020D8548:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	strb r0, [sp, #0x50]
	ldrsb r1, [sp, #0x50]
	cmp r1, #0
	blt _020D8570
	cmp r1, #0x80
	blt _020D8578
_020D8570:
	mov r0, #0
	b _020D8584
_020D8578:
	mov r0, r1, lsl #1
	ldrh r0, [r5, r0]
	and r0, r0, #0x100
_020D8584:
	cmp r0, #0
	bne _020D8544
	cmp r1, #0x25
	beq _020D85B4
	mov r0, r8
	mov r2, #1
	blx sb
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	str r0, [sp, #0x30]
	b _020D88E0
_020D85B4:
	add r4, r4, #1
	b _020D88E0
_020D85BC:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _020D8638
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	strb r0, [sp, #0x50]
	b _020D85F8
_020D85E0:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	add r4, r4, #1
	blx sb
	strb r0, [sp, #0x50]
_020D85F8:
	ldrsb r1, [sp, #0x50]
	cmp r1, #0
	blt _020D860C
	cmp r1, #0x80
	blt _020D8614
_020D860C:
	mov r0, #0
	b _020D8624
_020D8614:
	ldr r0, _020D8928 ; =0x020FE864
	mov r2, r1, lsl #1
	ldrh r0, [r0, r2]
	and r0, r0, #0x100
_020D8624:
	cmp r0, #0
	bne _020D85E0
	mov r0, r8
	mov r2, #1
	blx sb
_020D8638:
	cmp r5, #0
	beq _020D87B4
	cmp sl, #0
	beq _020D8660
	ldr r0, [sp, #0x10]
	mov r7, #1
	add r0, r0, #4
	str r0, [sp, #0x10]
	ldr r0, [r0, #-4]
	sub fp, r0, #1
_020D8660:
	ldr r0, [sp, #0x30]
	mov r1, #0
	cmp r0, #0
	str r1, [sp, #0x5c]
	beq _020D8680
	cmp fp, #0
	strneb r1, [r5]
	b _020D88E0
_020D8680:
	mvn r0, #0
	str r5, [sp, #0x28]
	str r0, [sp, #0x4c]
	b _020D86E4
_020D8690:
	strb r6, [sp, #0x50]
	ldrsb r1, [sp, #0x50]
	add r2, sp, #0x60
	and r3, r1, #0xff
	add r2, r2, r3, asr #3
	ldrb r3, [r2, #8]
	and r0, r1, #7
	mov r2, #1
	tst r3, r2, lsl r0
	beq _020D8734
	ldrb r0, [sp, #0x62]
	cmp r0, #0xa
	strneb r1, [r5], #1
	bne _020D86D8
	mov r0, r5
	add r1, sp, #0x50
	bl sub_020D4F34
	add r5, r5, #2
_020D86D8:
	ldr r0, [sp, #0x5c]
	add r1, r0, #1
	str r1, [sp, #0x5c]
_020D86E4:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	sub r0, r0, #1
	str r0, [sp, #0x64]
	beq _020D8734
	cmp sl, #0
	beq _020D8714
	cmp fp, r1
	movhs r7, #1
	movlo r7, #0
	cmp r7, #0
	beq _020D8734
_020D8714:
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r6, r0
	ldr r0, [sp, #0x4c]
	cmp r6, r0
	bne _020D8690
_020D8734:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	beq _020D8754
	cmp sl, #0
	beq _020D878C
	cmp r7, #0
	bne _020D878C
_020D8754:
	mov r0, r8
	ldrsb r1, [sp, #0x50]
	mov r2, #1
	blx sb
	cmp sl, #0
	beq _020D88F0
	mov r0, #1
	cmp fp, #0
	str r0, [sp, #0x30]
	beq _020D88E0
	ldr r0, [sp, #0x28]
	mov r1, #0
	strb r1, [r0]
	b _020D88E0
_020D878C:
	add r4, r4, r0
	ldrb r0, [sp, #0x62]
	cmp r0, #0xa
	mov r0, #0
	streqh r0, [r5]
	strneb r0, [r5]
	ldr r0, [sp, #0x44]
	add r0, r0, #1
	str r0, [sp, #0x44]
	b _020D8850
_020D87B4:
	mov r0, #0
	str r0, [sp, #0x5c]
	mvn r5, #0
	b _020D87F8
_020D87C4:
	strb r6, [sp, #0x50]
	ldrsb r1, [sp, #0x50]
	and r0, r1, #7
	and r2, r1, #0xff
	add r1, sp, #0x60
	add r1, r1, r2, asr #3
	ldrb r2, [r1, #8]
	mov r1, #1
	tst r2, r1, lsl r0
	beq _020D8828
	ldr r0, [sp, #0x5c]
	add r0, r0, #1
	str r0, [sp, #0x5c]
_020D87F8:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	sub r0, r0, #1
	str r0, [sp, #0x64]
	beq _020D8828
	mov r1, #0
	mov r0, r8
	mov r2, r1
	blx sb
	mov r6, r0
	cmp r6, r5
	bne _020D87C4
_020D8828:
	strb r6, [sp, #0x50]
	ldr r0, [sp, #0x5c]
	cmp r0, #0
	bne _020D884C
	mov r0, r8
	ldrsb r1, [sp, #0x50]
	mov r2, #1
	blx sb
	b _020D88E0
_020D884C:
	add r4, r4, r0
_020D8850:
	ldr r0, [sp, #0x64]
	cmp r0, #0
	blt _020D886C
	mov r0, r8
	ldrsb r1, [sp, #0x50]
	mov r2, #1
	blx sb
_020D886C:
	ldr r0, [sp, #0x40]
	add r0, r0, #1
	str r0, [sp, #0x40]
	b _020D88E0
_020D887C:
	cmp r5, #0
	beq _020D88E0
	ldrb r0, [sp, #0x62]
	cmp r0, #7
	addls pc, pc, r0, lsl #2
	b _020D88E0
_020D8894: ; jump table
	b _020D88B4 ; case 0
	b _020D88CC ; case 1
	b _020D88BC ; case 2
	b _020D88C4 ; case 3
	b _020D88E0 ; case 4
	b _020D88E0 ; case 5
	b _020D88E0 ; case 6
	b _020D88D4 ; case 7
_020D88B4:
	str r4, [r5, #0]
	b _020D88E0
_020D88BC:
	strh r4, [r5]
	b _020D88E0
_020D88C4:
	str r4, [r5, #0]
	b _020D88E0
_020D88CC:
	strb r4, [r5]
	b _020D88E0
_020D88D4:
	str r4, [r5, #0]
	mov r0, r4, asr #0x1f
	str r0, [r5, #4]
_020D88E0:
	ldr r0, [sp, #0xc]
	ldrsb r5, [r0]
	cmp r5, #0
	bne _020D7C24
_020D88F0:
	mov r0, r8
	mov r1, #0
	mov r2, #2
	blx sb
	cmp r0, #0
	beq _020D891C
	ldr r0, [sp, #0x40]
	cmp r0, #0
	addeq sp, sp, #0x88
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020D891C:
	ldr r0, [sp, #0x44]
	add sp, sp, #0x88
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020D8928: .word 0x020FE864
_020D892C: .word 0x021015B0
	arm_func_end sub_020D7BDC

	arm_func_start sub_020D8930
sub_020D8930: ; 0x020D8930
	cmp r2, #0
	beq _020D894C
	cmp r2, #1
	beq _020D897C
	cmp r2, #2
	beq _020D89A4
	b _020D89AC
_020D894C:
	ldr r1, [r0, #0]
	ldrsb r2, [r1]
	cmp r2, #0
	bne _020D896C
	mov r1, #1
	str r1, [r0, #4]
	sub r0, r1, #2
	bx lr
_020D896C:
	add r1, r1, #1
	str r1, [r0, #0]
	and r0, r2, #0xff
	bx lr
_020D897C:
	ldr r2, [r0, #4]
	cmp r2, #0
	movne r2, #0
	strne r2, [r0, #4]
	bne _020D899C
	ldr r2, [r0, #0]
	sub r2, r2, #1
	str r2, [r0, #0]
_020D899C:
	mov r0, r1
	bx lr
_020D89A4:
	ldr r0, [r0, #4]
	bx lr
_020D89AC:
	mov r0, #0
	bx lr
	arm_func_end sub_020D8930

	arm_func_start sub_020D89B4
sub_020D89B4: ; 0x020D89B4
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r0, [sp, #4]
	cmp r0, #0
	ldrnesb r0, [r0]
	mov lr, r1
	mov r3, r2
	cmpne r0, #0
	addeq sp, sp, #0xc
	mvneq r0, #0
	ldmeqia sp!, {pc}
	mov ip, #0
	str ip, [sp, #8]
	ldr r0, _020D8A04 ; =sub_020D8930
	add r1, sp, #4
	mov r2, lr
	str ip, [sp]
	bl sub_020D7BDC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_020D8A04: .word sub_020D8930
	arm_func_end sub_020D89B4

	arm_func_start sub_020D8A08
sub_020D8A08: ; 0x020D8A08
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	add r2, sp, #0xc
	bic r2, r2, #3
	ldr r1, [sp, #0xc]
	add r2, r2, #4
	bl sub_020D89B4
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end sub_020D8A08


	.section .exception, 4

	.global Unk_020E4560
Unk_020E4560: ; 0x020E4560
	.incbin "incbin/arm9_exception.bin", 0x8, 0x8


	.rodata

	.global Unk_020FE964
Unk_020FE964: ; 0x020FE964
	.incbin "incbin/arm9_rodata.bin", 0x19D24, 0x28

