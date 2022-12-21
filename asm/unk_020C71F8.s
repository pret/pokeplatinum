	.include "macros/function.inc"
	.include "include/unk_020C71F8.inc"

	

	.text


	arm_func_start sub_020C71F8
sub_020C71F8: ; 0x020C71F8
	stmfd sp!, {r3, lr}
	cmp r1, #3
	mov r3, #0
	bgt _020C7248
	mov ip, r3
	cmp r1, #0
	ble _020C7248
	mov lr, r3
_020C7218:
	ldrb r2, [r0, ip]
	cmp r2, #0
	beq _020C7248
	sub r2, r2, #0x41
	cmp r2, #0x19
	addls r2, r2, #0x61
	addhi r2, r2, #0x41
	add ip, ip, #1
	orr r3, r3, r2, lsl lr
	cmp ip, r1
	add lr, lr, #8
	blt _020C7218
_020C7248:
	mov r0, r3
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C71F8

	arm_func_start sub_020C7250
sub_020C7250: ; 0x020C7250
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #0x28]
	add r0, r0, r2
	mov r2, r3
	bl sub_020C4DB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C7250

	arm_func_start sub_020C726C
sub_020C726C: ; 0x020C726C
	stmfd sp!, {r3, lr}
	ldr ip, [r0, #0x28]
	mov r0, r1
	add r1, ip, r2
	mov r2, r3
	bl sub_020C4DB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C726C

	arm_func_start sub_020C728C
sub_020C728C: ; 0x020C728C
	stmfd sp!, {r3, lr}
	mov r0, r2
	mov r2, r3
	bl sub_020C4DB0
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end sub_020C728C

	arm_func_start sub_020C72A4
sub_020C72A4: ; 0x020C72A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x48
	mov r6, r0
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	tst r1, #0x20
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C7338
	ldr r0, [r6, #0x1c]
	bic r0, r0, #0x20
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _020C7338
	mov r8, #0
	mov sb, #1
	mov r7, #3
_020C72F4:
	ldr r1, [r0, #0xc]
	ldr r5, [r0, #4]
	tst r1, #2
	movne r1, sb
	moveq r1, r8
	cmp r1, #0
	beq _020C732C
	ldr r1, [r6, #0x24]
	cmp r1, r0
	mov r1, r7
	streq r5, [r6, #0x24]
	bl sub_020C666C
	cmp r5, #0
	ldreq r5, [r6, #0x24]
_020C732C:
	mov r0, r5
	cmp r5, #0
	bne _020C72F4
_020C7338:
	ldr r0, [r6, #0x1c]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C7428
	ldr r0, [r6, #0x1c]
	tst r0, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C7428
	ldr r5, [r6, #0x24]
	cmp r5, #0
	beq _020C7428
	ldr r0, [r6, #0x1c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	cmp r7, #0
	ldrne r0, [r6, #0x1c]
	orrne r0, r0, #0x10
	strne r0, [r6, #0x1c]
	mov r0, r4
	bl sub_020C3DAC
	cmp r7, #0
	beq _020C73CC
	ldr r0, [r6, #0x58]
	tst r0, #0x200
	beq _020C73CC
	ldr r2, [r6, #0x54]
	mov r0, r5
	mov r1, #9
	blx r2
_020C73CC:
	bl sub_020C3D98
	ldr r1, [r5, #0xc]
	mov r4, r0
	orr r0, r1, #0x40
	str r0, [r5, #0xc]
	ldr r0, [r5, #0xc]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C7414
	add r0, r5, #0x18
	bl sub_020C2268
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #0x48
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020C7414:
	mov r0, r4
	bl sub_020C3DAC
	add sp, sp, #0x48
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020C7428:
	ldr r0, [r6, #0x1c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C7474
	ldr r0, [r6, #0x1c]
	bic r0, r0, #0x10
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x58]
	tst r0, #0x400
	beq _020C7474
	add r0, sp, #0
	bl sub_020C7DA0
	str r6, [sp, #8]
	ldr r2, [r6, #0x54]
	add r0, sp, #0
	mov r1, #0xa
	blx r2
_020C7474:
	ldr r0, [r6, #0x1c]
	tst r0, #0x40
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C74A4
	ldr r1, [r6, #0x1c]
	add r0, r6, #0x14
	bic r1, r1, #0x40
	orr r1, r1, #8
	str r1, [r6, #0x1c]
	bl sub_020C2268
_020C74A4:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #0
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end sub_020C72A4

	arm_func_start sub_020C74B8
sub_020C74B8: ; 0x020C74B8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r6, r0
	ldr r4, [r6, #8]
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r7, #0
	mov r8, #1
_020C74D0:
	bl sub_020C3D98
	ldr r1, [r6, #0xc]
	mov r5, r0
	orr r0, r1, #0x40
	str r0, [r6, #0xc]
	ldr r0, [r6, #0xc]
	tst r0, #4
	movne r0, r8
	moveq r0, r7
	cmp r0, #0
	beq _020C7510
	add r0, r6, #0x18
	bl sub_020C2268
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_020C7510:
	ldr r1, [r6, #0xc]
	mov r0, r5
	orr r1, r1, #8
	str r1, [r6, #0xc]
	bl sub_020C3DAC
	ldr r1, [r6, #0x10]
	mov r0, r6
	bl sub_020C66C8
	cmp r0, #6
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl sub_020C72A4
	movs r6, r0
	bne _020C74D0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C74B8

	arm_func_start sub_020C754C
sub_020C754C: ; 0x020C754C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	bl sub_020C66C8
	mov r1, r0
	mov r0, r4
	bl sub_020C666C
	ldr r0, [r4, #8]
	bl sub_020C72A4
	cmp r0, #0
	beq _020C757C
	bl sub_020C74B8
_020C757C:
	ldr r0, [r4, #0x14]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C754C

	arm_func_start sub_020C7590
sub_020C7590: ; 0x020C7590
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldr r4, [r6, #8]
	mov r2, #1
	str r1, [r6, #0x10]
	mov r0, #2
	str r0, [r6, #0x14]
	ldr r0, [r6, #0xc]
	mov r7, r2, lsl r1
	orr r0, r0, #1
	str r0, [r6, #0xc]
	bl sub_020C3D98
	ldr r1, [r4, #0x1c]
	mov r5, r0
	tst r1, #0x80
	beq _020C75EC
	mov r0, r6
	mov r1, #3
	bl sub_020C666C
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C75EC:
	tst r7, #0x1fc
	ldrne r0, [r6, #0xc]
	orrne r0, r0, #4
	strne r0, [r6, #0xc]
	ldr r1, [r6, #0]
	ldr r2, [r6, #4]
	cmp r1, #0
	strne r2, [r1, #4]
	cmp r2, #0
	add r0, r4, #0x20
	strne r1, [r2]
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _020C7634
_020C7624:
	mov r0, r1
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _020C7624
_020C7634:
	str r6, [r0, #4]
	str r0, [r6, #0]
	mov r1, #0
	str r1, [r6, #4]
	ldr r0, [r4, #0x1c]
	tst r0, #8
	movne r1, #1
	cmp r1, #0
	bne _020C76E4
	ldr r0, [r4, #0x1c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C76E4
	ldr r1, [r4, #0x1c]
	mov r0, r5
	orr r1, r1, #0x10
	str r1, [r4, #0x1c]
	bl sub_020C3DAC
	ldr r0, [r4, #0x58]
	tst r0, #0x200
	beq _020C76A0
	ldr r2, [r4, #0x54]
	mov r0, r6
	mov r1, #9
	blx r2
_020C76A0:
	bl sub_020C3D98
	ldr r1, [r6, #0xc]
	orr r1, r1, #0x40
	str r1, [r6, #0xc]
	ldr r1, [r6, #0xc]
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _020C76DC
	bl sub_020C3DAC
	mov r0, r6
	bl sub_020C74B8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C76DC:
	bl sub_020C3DAC
	b _020C7728
_020C76E4:
	ldr r0, [r6, #0xc]
	tst r0, #4
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _020C770C
	mov r0, r5
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C770C:
	add r0, r6, #0x18
	bl sub_020C2218
	ldr r0, [r6, #0xc]
	tst r0, #0x40
	beq _020C770C
	mov r0, r5
	bl sub_020C3DAC
_020C7728:
	mov r0, r6
	bl sub_020C754C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C7590

	arm_func_start sub_020C7734
sub_020C7734: ; 0x020C7734
	stmfd sp!, {r4, lr}
	mov r1, #0
	mov r2, #0x5c
	mov r4, r0
	bl sub_020C4CF4
	mov r0, #0
	str r0, [r4, #0x10]
	str r0, [r4, #0xc]
	str r0, [r4, #0x18]
	str r0, [r4, #0x14]
	ldmia sp!, {r4, pc}
	arm_func_end sub_020C7734

	arm_func_start sub_020C7760
sub_020C7760: ; 0x020C7760
	stmfd sp!, {r3, r4, r5, lr}
	bl sub_020C71F8
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _020C779C ; =0x021CEC08
	ldr r5, [r1, #0]
	b _020C7780
_020C777C:
	ldr r5, [r5, #4]
_020C7780:
	cmp r5, #0
	ldrne r1, [r5]
	cmpne r1, r4
	bne _020C777C
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C779C: .word 0x021CEC08
	arm_func_end sub_020C7760

	arm_func_start sub_020C77A0
sub_020C77A0: ; 0x020C77A0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r1
	mov r5, r2
	mov r7, r0
	mov r8, #0
	bl sub_020C3D98
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl sub_020C7760
	cmp r0, #0
	bne _020C7840
	ldr r0, _020C7850 ; =0x021CEC08
	ldr r1, [r0, #0]
	cmp r1, #0
	bne _020C77FC
	str r7, [r0, #0]
	str r7, [r0, #4]
	mov r1, r8
	str r1, [r0, #0xc]
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	b _020C7820
_020C77FC:
	ldr r0, [r1, #4]
	cmp r0, #0
	beq _020C7818
_020C7808:
	mov r1, r0
	ldr r0, [r0, #4]
	cmp r0, #0
	bne _020C7808
_020C7818:
	str r7, [r1, #4]
	str r1, [r7, #8]
_020C7820:
	mov r0, r6
	mov r1, r5
	bl sub_020C71F8
	str r0, [r7, #0]
	ldr r0, [r7, #0x1c]
	mov r8, #1
	orr r0, r0, #1
	str r0, [r7, #0x1c]
_020C7840:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020C7850: .word 0x021CEC08
	arm_func_end sub_020C77A0

	arm_func_start sub_020C7854
sub_020C7854: ; 0x020C7854
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	bl sub_020C3D98
	ldr r2, [r4, #4]
	mov r3, #0
	cmp r2, #0
	ldrne r1, [r4, #8]
	strne r1, [r2, #8]
	ldr r2, [r4, #8]
	cmp r2, #0
	ldrne r1, [r4, #4]
	strne r1, [r2, #4]
	str r3, [r4, #0]
	str r3, [r4, #8]
	str r3, [r4, #4]
	ldr r2, [r4, #0x1c]
	ldr r1, _020C78D4 ; =0x021CEC08
	bic r2, r2, #1
	str r2, [r4, #0x1c]
	ldr r2, [r1, #4]
	cmp r2, r4
	bne _020C78CC
	ldr r2, [r1, #0]
	str r2, [r1, #4]
	str r3, [r1, #0xc]
	strh r3, [r1, #0xa]
	strh r3, [r1, #8]
_020C78CC:
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C78D4: .word 0x021CEC08
	arm_func_end sub_020C7854

	arm_func_start sub_020C78D8
sub_020C78D8: ; 0x020C78D8
	str r1, [r0, #0x28]
	str r3, [r0, #0x30]
	str r2, [r0, #0x3c]
	ldr r3, [sp, #4]
	str r2, [r0, #0x2c]
	ldr ip, [sp, #8]
	ldr r1, [sp]
	str r3, [r0, #0x38]
	str r1, [r0, #0x40]
	str r1, [r0, #0x34]
	cmp ip, #0
	ldreq ip, _020C7940 ; =sub_020C7250
	ldr r1, [sp, #0xc]
	str ip, [r0, #0x48]
	cmp r1, #0
	ldreq r1, _020C7944 ; =sub_020C726C
	str r1, [r0, #0x4c]
	ldr r2, [r0, #0x48]
	mov r1, #0
	str r2, [r0, #0x50]
	str r1, [r0, #0x44]
	ldr r1, [r0, #0x1c]
	orr r1, r1, #2
	str r1, [r0, #0x1c]
	mov r0, #1
	bx lr
	; .align 2, 0
_020C7940: .word sub_020C7250
_020C7944: .word sub_020C726C
	arm_func_end sub_020C78D8

	arm_func_start sub_020C7948
sub_020C7948: ; 0x020C7948
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	tst r1, #2
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C79F8
	mov r0, r6
	ldr r1, [r6, #0x1c]
	bl sub_020C7BB8
	ldr r1, [r6, #0x1c]
	mov r5, r0
	orr r0, r1, #0x80
	str r0, [r6, #0x1c]
	ldr r0, [r6, #0x24]
	cmp r0, #0
	beq _020C79B4
	mov r7, #3
_020C799C:
	ldr r8, [r0, #4]
	mov r1, r7
	bl sub_020C666C
	mov r0, r8
	cmp r8, #0
	bne _020C799C
_020C79B4:
	mov r0, #0
	str r0, [r6, #0x24]
	cmp r5, #0
	beq _020C79CC
	mov r0, r6
	bl sub_020C7C54
_020C79CC:
	mov r0, #0
	str r0, [r6, #0x28]
	str r0, [r6, #0x2c]
	str r0, [r6, #0x30]
	str r0, [r6, #0x34]
	str r0, [r6, #0x38]
	str r0, [r6, #0x40]
	str r0, [r6, #0x3c]
	ldr r0, [r6, #0x1c]
	bic r0, r0, #0xa2
	str r0, [r6, #0x1c]
_020C79F8:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C7948

	arm_func_start sub_020C7A08
sub_020C7A08: ; 0x020C7A08
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x4c
	mov r7, r0
	ldr r3, [r7, #0x30]
	ldr r0, [r7, #0x38]
	mov r6, r1
	add r0, r3, r0
	add r0, r0, #0x3f
	bic r4, r0, #0x1f
	cmp r4, r2
	bhi _020C7B1C
	add r1, r6, #0x1f
	add r0, sp, #4
	bic r5, r1, #0x1f
	bl sub_020C7DA0
	ldr r2, [r7, #0x2c]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r7, #0x30]
	add r0, sp, #4
	mov r1, r7
	add r3, r2, r3
	bl sub_020C7FC8
	cmp r0, #0
	beq _020C7A9C
	ldr r2, [r7, #0x30]
	add r0, sp, #4
	mov r1, r5
	bl sub_020C81D4
	cmp r0, #0
	bge _020C7A94
	ldr r2, [r7, #0x30]
	mov r0, r5
	mov r1, #0
	bl sub_020C4CF4
_020C7A94:
	add r0, sp, #4
	bl sub_020C80C8
_020C7A9C:
	str r5, [r7, #0x2c]
	ldr ip, [r7, #0x30]
	ldr r2, [r7, #0x34]
	mvn r0, #0
	str r0, [sp]
	ldr r3, [r7, #0x38]
	add r0, sp, #4
	mov r1, r7
	add r3, r2, r3
	add r5, r5, ip
	bl sub_020C7FC8
	cmp r0, #0
	beq _020C7B00
	ldr r2, [r7, #0x38]
	add r0, sp, #4
	mov r1, r5
	bl sub_020C81D4
	cmp r0, #0
	bge _020C7AF8
	ldr r2, [r7, #0x38]
	mov r0, r5
	mov r1, #0
	bl sub_020C4CF4
_020C7AF8:
	add r0, sp, #4
	bl sub_020C80C8
_020C7B00:
	str r5, [r7, #0x34]
	ldr r0, _020C7B28 ; =sub_020C728C
	str r6, [r7, #0x44]
	str r0, [r7, #0x50]
	ldr r0, [r7, #0x1c]
	orr r0, r0, #4
	str r0, [r7, #0x1c]
_020C7B1C:
	mov r0, r4
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_020C7B28: .word sub_020C728C
	arm_func_end sub_020C7A08

	arm_func_start sub_020C7B2C
sub_020C7B2C: ; 0x020C7B2C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x1c]
	mov r4, #0
	tst r0, #2
	movne r0, #1
	moveq r0, r4
	cmp r0, #0
	beq _020C7BB0
	mov r0, r5
	bl sub_020C7BB8
	ldr r1, [r5, #0x1c]
	tst r1, #4
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	beq _020C7BA0
	ldr r2, [r5, #0x1c]
	mov r1, #0
	bic r2, r2, #4
	str r2, [r5, #0x1c]
	ldr r4, [r5, #0x44]
	str r1, [r5, #0x44]
	ldr r1, [r5, #0x3c]
	str r1, [r5, #0x2c]
	ldr r1, [r5, #0x40]
	str r1, [r5, #0x34]
	ldr r1, [r5, #0x48]
	str r1, [r5, #0x50]
_020C7BA0:
	cmp r0, #0
	beq _020C7BB0
	mov r0, r5
	bl sub_020C7C54
_020C7BB0:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020C7B2C

	arm_func_start sub_020C7BB8
sub_020C7BB8: ; 0x020C7BB8
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r6, r0
	bl sub_020C3D98
	ldr r1, [r6, #0x1c]
	mov r4, r0
	tst r1, #8
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	moveq r5, #1
	movne r5, #0
	cmp r5, #0
	beq _020C7C44
	ldr r0, [r6, #0x1c]
	tst r0, #0x10
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	ldr r0, [r6, #0x1c]
	beq _020C7C3C
	orr r0, r0, #0x40
	str r0, [r6, #0x1c]
	mov r7, #0
	mov r8, #1
_020C7C18:
	add r0, r6, #0x14
	bl sub_020C2218
	ldr r0, [r6, #0x1c]
	tst r0, #0x40
	movne r0, r8
	moveq r0, r7
	cmp r0, #0
	bne _020C7C18
	b _020C7C44
_020C7C3C:
	orr r0, r0, #8
	str r0, [r6, #0x1c]
_020C7C44:
	mov r0, r4
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end sub_020C7BB8

	arm_func_start sub_020C7C54
sub_020C7C54: ; 0x020C7C54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, #0
	bl sub_020C3D98
	ldr r1, [r4, #0x1c]
	mov r6, r0
	tst r1, #8
	movne r0, #1
	moveq r0, r5
	cmp r0, #0
	moveq r7, #1
	movne r7, #0
	cmp r7, #0
	bne _020C7CA4
	ldr r1, [r4, #0x1c]
	mov r0, r4
	bic r1, r1, #8
	str r1, [r4, #0x1c]
	bl sub_020C72A4
	mov r5, r0
_020C7CA4:
	mov r0, r6
	bl sub_020C3DAC
	cmp r5, #0
	beq _020C7CBC
	mov r0, r5
	bl sub_020C74B8
_020C7CBC:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020C7C54

	arm_func_start sub_020C7CC4
sub_020C7CC4: ; 0x020C7CC4
	cmp r2, #0
	moveq r1, #0
	beq _020C7CD8
	cmp r1, #0
	moveq r2, #0
_020C7CD8:
	str r1, [r0, #0x54]
	str r2, [r0, #0x58]
	bx lr
	arm_func_end sub_020C7CC4

	arm_func_start sub_020C7CE4
sub_020C7CE4: ; 0x020C7CE4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	mov r6, r1
	tst r0, #0x100
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _020C7D38
	ldr r1, [r4, #0x1c]
	ldr r0, [r4, #0x24]
	bic r2, r1, #0x100
	mov r1, r6
	str r2, [r4, #0x1c]
	bl sub_020C666C
	mov r0, r4
	bl sub_020C72A4
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_020C74B8
	ldmia sp!, {r4, r5, r6, pc}
_020C7D38:
	ldr r5, [r4, #0x24]
	bl sub_020C3D98
	str r6, [r5, #0x14]
	ldr r1, [r4, #0x1c]
	mov r5, r0
	bic r1, r1, #0x200
	add r0, r4, #0xc
	str r1, [r4, #0x1c]
	bl sub_020C2268
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C7CE4

	.bss


	.global Unk_021CEC08
Unk_021CEC08: ; 0x021CEC08
	.space 0x4

	.global Unk_021CEC0C
Unk_021CEC0C: ; 0x021CEC0C
	.space 0xC

