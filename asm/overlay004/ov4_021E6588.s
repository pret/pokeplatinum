	.include "macros/function.inc"
	.include "overlay004/ov4_021E6588.inc"

	

	.text


	arm_func_start ov4_021E6588
ov4_021E6588: ; 0x021E6588
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x10
	mvn r4, #0
	bl ov4_021E62EC
	mov r6, r0
	mov r0, #1
	bl ov4_021E62EC
	mov r1, #1
	strb r1, [r0, #0xb]
	bl ov4_021E63A4
	cmp r0, #3
	beq _021E65D0
	cmp r0, #4
	beq _021E6638
	cmp r0, #5
	beq _021E6684
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E65D0:
	ldrh r1, [r7, #0xa]
	ldrb r5, [r6, #0xd11]
	cmp r1, #0
	ldrneb r0, [r7, #0xc]
	cmpne r0, #0
	bne _021E65F4
	ldrh r0, [r7, #0x36]
	bl ov4_021E79A4
	b _021E66CC
_021E65F4:
	cmp r1, #1
	cmpeq r0, #0x20
	bne _021E6620
	ldrh r0, [r7, #0x36]
	bl ov4_021E79A4
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl ov4_021E6788
	mov r4, r0
	b _021E66CC
_021E6620:
	ldrb r1, [r6, #0xd10]
	mov r0, r7
	add r2, r6, #0x300
	bl ov4_021E6788
	mov r4, r0
	b _021E66CC
_021E6638:
	ldrb r2, [r6, #0xd0f]
	mov r1, #0xc0
	mov r0, r7
	mla r1, r2, r1, r6
	add r1, r1, #0x400
	ldrh r2, [r1, #0xa6]
	mov r1, r6
	sub r2, r2, #1
	and r5, r2, #0xff
	bl ov4_021E6804
	movs r4, r0
	bmi _021E66CC
	ldrb r1, [r6, #0xd0f]
	add r0, r6, #0x47
	add r2, r0, #0x400
	ldrb r0, [r2, r1, lsl #2]
	orr r0, r0, #0x80
	strb r0, [r2, r1, lsl #2]
	b _021E66CC
_021E6684:
	ldrb r1, [r6, #0xd0f]
	add r2, r6, #0x300
	mov r0, #0x24
	mla r2, r1, r0, r2
	mov r0, r7
	mov r1, #1
	ldrb r5, [r6, #0xd11]
	bl ov4_021E6788
	movs r4, r0
	bmi _021E66CC
	ldrb r1, [r6, #0xd0f]
	mov r0, #0x24
	add r2, r6, #0x300
	smulbb r1, r1, r0
	ldrb r0, [r2, r1]
	bic r0, r0, #0xf
	orr r0, r0, #1
	strb r0, [r2, r1]
_021E66CC:
	cmp r4, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r4
	mov r1, r7
	mov r2, r5
	mov r3, r6
	bl ov4_021E6894
	mov r1, r6
	bl ov4_021E6A14
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021E6588

	arm_func_start ov4_021E66F4
ov4_021E66F4: ; 0x021E66F4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	bl ov4_021E62EC
	mov r4, r0
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #4
	bne _021E6744
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _021E6744
	add r0, r5, #0xc
	bl ov4_021E86A0
	cmp r0, #1
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
_021E6744:
	ldrb r0, [r4, #0xd0c]
	mov r0, r0, lsl #0x1c
	movs r0, r0, lsr #0x1c
	cmpne r0, #5
	bne _021E6780
	ldrh r0, [r5, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _021E6780
	add r0, r5, #0xc
	bl ov4_021E85F4
	cmp r0, #1
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, pc}
_021E6780:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E66F4

	arm_func_start ov4_021E6788
ov4_021E6788: ; 0x021E6788
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r0
	ldrh r3, [r6, #0xa]
	mov r5, r1
	mov r4, r2
	cmp r3, #0x20
	bne _021E67B0
	bl ov4_021E66F4
	cmp r0, #0
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021E67B0:
	cmp r5, #0
	mov r8, #0
	ble _021E67FC
	ldrh sb, [r6, #0xa]
	and r7, sb, #0xff
_021E67C4:
	ldrb r0, [r4, #3]
	cmp r7, r0
	bne _021E67EC
	mov r2, sb
	add r0, r6, #0xc
	add r1, r4, #4
	bl strncmp
	cmp r0, #0
	ldreqb r0, [r4, #1]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021E67EC:
	add r8, r8, #1
	cmp r8, r5
	add r4, r4, #0x24
	blt _021E67C4
_021E67FC:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_021E6788

	arm_func_start ov4_021E6804
ov4_021E6804: ; 0x021E6804
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	ldrh r2, [sl, #0xa]
	mov sb, r1
	cmp r2, #0x20
	bne _021E6828
	bl ov4_021E66F4
	cmp r0, #0
	ldmgtia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6828:
	ldrb r8, [sb, #0xd12]
	mov r4, #0
	cmp r8, #0
	ble _021E688C
	ldrh r7, [sl, #0xa]
	add r0, sb, #0x7c
	mov r5, sb
	add r6, r0, #0x400
_021E6848:
	add r0, r5, #0x400
	ldrh r0, [r0, #0x7a]
	cmp r7, r0
	bne _021E6878
	mov r1, r6
	mov r2, r7
	add r0, sl, #0xc
	bl strncmp
	cmp r0, #0
	addeq r0, sb, r4, lsl #2
	ldreqb r0, [r0, #0x445]
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E6878:
	add r4, r4, #1
	cmp r4, r8
	add r5, r5, #0xc0
	add r6, r6, #0xc0
	blt _021E6848
_021E688C:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov4_021E6804

	arm_func_start ov4_021E6894
ov4_021E6894: ; 0x021E6894
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r3
	ldrb r5, [r6, #0xd12]
	mvn r4, #0
	mov r3, #0
	cmp r5, #0
	ble _021E6918
	ldrb lr, [r1, #4]
	add ip, r6, #0x74
	add ip, ip, #0x400
_021E68BC:
	ldrb r7, [ip]
	cmp lr, r7
	ldreqb r8, [r1, #5]
	ldreqb r7, [ip, #1]
	cmpeq r8, r7
	ldreqb r8, [r1, #6]
	ldreqb r7, [ip, #2]
	cmpeq r8, r7
	ldreqb r8, [r1, #7]
	ldreqb r7, [ip, #3]
	cmpeq r8, r7
	ldreqb r8, [r1, #8]
	ldreqb r7, [ip, #4]
	cmpeq r8, r7
	ldreqb r8, [r1, #9]
	ldreqb r7, [ip, #5]
	cmpeq r8, r7
	moveq r4, r3
	beq _021E6918
	add r3, r3, #1
	cmp r3, r5
	add ip, ip, #0xc0
	blt _021E68BC
_021E6918:
	mvn r3, #0
	cmp r4, r3
	bne _021E6948
	mov r3, r6
	and r0, r0, #0xff
	bl ov4_021E695C
	ldrb r0, [r6, #0xd12]
	mov r4, #0xa
	cmp r0, #0xa
	addlo r0, r0, #1
	strlob r0, [r6, #0xd12]
	b _021E6954
_021E6948:
	mov r0, r4
	mov r3, r6
	bl ov4_021E69A8
_021E6954:
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_021E6894

	arm_func_start ov4_021E695C
ov4_021E695C: ; 0x021E695C
	stmfd sp!, {r3, lr}
	add ip, r3, #0x6c
	strb r0, [ip, #0x401]
	ldrh r0, [r1, #2]
	and r2, r2, #0x7f
	tst r0, #2
	mov r0, r0, asr #2
	addeq r0, r0, #0x19
	and r0, r0, #0xff
	strb r0, [ip, #0x402]
	ldrb lr, [ip, #0x403]
	mov r0, r1
	bic r1, lr, #0x7f
	orr lr, r1, r2
	add r1, r3, #0xbf0
	mov r2, #0xc0
	strb lr, [ip, #0x403]
	bl MIi_CpuCopy32
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E695C

	arm_func_start ov4_021E69A8
ov4_021E69A8: ; 0x021E69A8
	stmfd sp!, {r3, r4, r5, lr}
	ldrh r4, [r1, #2]
	add ip, r3, #0x44
	mov lr, #0xc0
	add r5, ip, #0x400
	mul ip, r0, lr
	tst r4, #2
	add r0, r5, r0, lsl #2
	mov r4, r4, asr #2
	addeq r4, r4, #0x19
	and r4, r4, #0xff
	ldrb lr, [r0, #2]
	and r4, r4, #0xff
	add r3, r3, #0x470
	cmp r4, lr
	bls _021E6A00
	strb r4, [r0, #2]
	ldrb lr, [r0, #3]
	and r2, r2, #0x7f
	bic lr, lr, #0x7f
	orr r2, lr, r2
	strb r2, [r0, #3]
_021E6A00:
	mov r0, r1
	add r1, r3, ip
	mov r2, #0xc0
	bl MIi_CpuCopy32
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E69A8

	arm_func_start ov4_021E6A14
ov4_021E6A14: ; 0x021E6A14
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc4
	mov r4, r0
	add r0, r1, #0x44
	add r7, r0, #0x400
	add r8, r1, #0x470
	subs r6, r4, #1
	bmi _021E6ADC
	mov r0, #0xc0
	mla sl, r6, r0, r8
	add sb, r7, r6, lsl #2
	add fp, sp, #0
_021E6A44:
	add r0, r7, r4, lsl #2
	ldrb r1, [r0, #2]
	add r0, r7, r6, lsl #2
	ldrb r0, [r0, #2]
	cmp r1, r0
	blo _021E6ADC
	mov r0, sb
	mov r1, fp
	mov r2, #4
	bl MIi_CpuCopy32
	add r5, r7, r4, lsl #2
	mov r0, r5
	mov r1, sb
	mov r2, #4
	bl MIi_CpuCopy32
	mov r1, r5
	mov r0, fp
	mov r2, #4
	bl MIi_CpuCopy32
	mov r0, sl
	add r1, sp, #4
	mov r2, #0xc0
	bl MIi_CpuCopy32
	mov r0, #0xc0
	mul r5, r4, r0
	add r0, r8, r5
	mov r1, sl
	mov r2, #0xc0
	bl MIi_CpuCopy32
	add r1, r8, r5
	add r0, sp, #4
	mov r2, #0xc0
	bl MIi_CpuCopy32
	mov r4, r6
	sub sb, sb, #4
	sub sl, sl, #0xc0
	subs r6, r6, #1
	bpl _021E6A44
_021E6ADC:
	add r1, r7, #0x28
	mov r0, #0
	mov r2, #4
	bl MIi_CpuClear32
	add r1, r8, #0x780
	mov r0, #0
	mov r2, #0xc0
	bl MIi_CpuClear32
	add sp, sp, #0xc4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021E6A14