	.include "macros/function.inc"
	.include "include/ov4_021E6B90.inc"

	

	.text


	arm_func_start ov4_021E6B90
ov4_021E6B90: ; 0x021E6B90
	stmfd sp!, {r4, lr}
	bl ov4_021E63A4
	mov r4, r0
	mov r0, #0x10
	bl ov4_021E62EC
	cmp r4, #7
	beq _021E6BB8
	cmp r4, #8
	beq _021E6BC4
	b _021E6BCC
_021E6BB8:
	bl ov4_021E6BD4
	mov r4, r0
	b _021E6BCC
_021E6BC4:
	bl ov4_021E6CCC
	mov r4, r0
_021E6BCC:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E6B90

	arm_func_start ov4_021E6BD4
ov4_021E6BD4: ; 0x021E6BD4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r2, [r5, #0xd13]
	add r3, r5, #0x470
	mov r1, #0xc0
	mla r4, r2, r1, r3
	bl ov4_021E6E08
	add r1, r5, #0xb8
	strb r0, [r5, #0xd0d]
	add r0, r1, #0xc00
	mov r1, #0
	mov r2, #0x52
	bl MI_CpuFill8
	add r2, r5, #0xb8
	ldrb r1, [r5, #0xd0d]
	mov r0, r5
	add r2, r2, #0xc00
	bl ov4_021E6FDC
	cmp r0, #0
	ldrb r0, [r5, #0xd0b]
	bic r0, r0, #0xc
	beq _021E6C88
	orr r0, r0, #4
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	tst r0, #1
	bne _021E6C5C
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
_021E6C5C:
	ldrb r0, [r5, #0xd0d]
	cmp r0, #6
	ldreqb r0, [r4, #0x15]
	cmpeq r0, #0
	bne _021E6CB8
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
_021E6C88:
	strb r0, [r5, #0xd0b]
	ldrh r0, [r4, #0x2c]
	mov r0, r0, asr #4
	and r0, r0, #1
	cmp r0, #1
	bne _021E6CB8
	ldrb r1, [r5, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r5, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, pc}
_021E6CB8:
	mov r0, #0
	strb r0, [r5, #0xd15]
	strb r0, [r5, #0xd14]
	mov r0, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E6BD4

	arm_func_start ov4_021E6CCC
ov4_021E6CCC: ; 0x021E6CCC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	bl ov4_02213898
	ldrb r2, [r7, #0xd13]
	mov r1, #0xc0
	cmp r0, #3
	add r5, r7, #0x470
	smulbb r4, r2, r1
	bne _021E6DDC
	mov r0, r7
	bl ov4_021E6FA4
	ldrb r1, [r7, #0xd15]
	mov r6, r0
	add r0, r1, #1
	and r1, r0, #0xff
	strb r0, [r7, #0xd15]
	cmp r1, #3
	bls _021E6D34
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #1
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E6D34:
	cmp r1, #1
	beq _021E6DB8
	ldrb r0, [r7, #0xd14]
	cmp r0, #1
	bne _021E6D58
	ldrb r0, [r7, #0xd0b]
	bic r0, r0, #0xc
	strb r0, [r7, #0xd0b]
	b _021E6DB8
_021E6D58:
	cmp r0, #2
	bne _021E6D80
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #3
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E6D80:
	cmp r0, #3
	bne _021E6DA8
	mov r0, #0
	strb r0, [r7, #0xd15]
	ldrb r1, [r7, #0xd13]
	mov r2, #4
	mov r0, #9
	add r1, r7, r1, lsl #2
	strb r2, [r1, #0x444]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E6DA8:
	cmp r1, #3
	ldreqb r0, [r7, #0xd0b]
	biceq r0, r0, #0xc
	streqb r0, [r7, #0xd0b]
_021E6DB8:
	mov r0, r7
	bl ov4_021E6FC0
	mov r2, r0
	add r1, r7, #0xb8
	add r0, r5, r4
	add r1, r1, #0xc00
	orr r2, r6, r2
	bl ov4_02213368
	b _021E6E00
_021E6DDC:
	cmp r0, #9
	bne _021E6E00
	mov r0, #0
	strb r0, [r7, #0xd15]
	bl OS_GetTick
	str r0, [r7, #0xcb0]
	str r1, [r7, #0xcb4]
	mov r0, #0xa
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E6E00:
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021E6CCC

	arm_func_start ov4_021E6E08
ov4_021E6E08: ; 0x021E6E08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldrb r2, [sl, #0xd13]
	ldrb r1, [sl, #0xd0c]
	add r3, sl, #0x470
	mov r0, #0xc0
	mla r4, r2, r0, r3
	mov r0, r1, lsl #0x18
	movs r0, r0, lsr #0x1e
	mov r0, #0
	str r0, [sp]
	bne _021E6F24
	ldrh r0, [r4, #0xa]
	ldr r6, [sp]
	cmp r0, #0x20
	bne _021E6E68
	mov r0, r4
	bl ov4_021E66F4
	cmp r0, #0
	str r0, [sp]
	movle r0, #0
	addgt r6, r6, #1
	strle r0, [sp]
	b _021E6E8C
_021E6E68:
	cmp r0, #8
	bne _021E6E8C
	mov r0, r4
	bl ov4_021E7490
	cmp r0, #0
	str r0, [sp]
	moveq r0, #0
	addne r6, r6, #1
	streq r0, [sp]
_021E6E8C:
	ldrb r0, [sl, #0xd10]
	mov r5, #0
	cmp r0, #0
	ble _021E6F98
	mov r7, sl
	add r8, sl, #0x304
	add sb, sl, #0x300
	add fp, sl, #0x10c
_021E6EAC:
	ldrh r2, [r4, #0xa]
	ldrb r0, [r7, #0x303]
	cmp r2, r0
	bne _021E6F04
	mov r1, r8
	add r0, r4, #0xc
	bl strncmp
	cmp r0, #0
	bne _021E6F04
	cmp r6, #0
	ldreqb r0, [r7, #0x301]
	streq r0, [sp]
	beq _021E6F00
	ldrb r0, [sb]
	bic r0, r0, #0xf0
	orr r0, r0, #0x10
	strb r0, [sb]
	ldrb r0, [fp, #0xc00]
	bic r0, r0, #0xc0
	orr r0, r0, #0x40
	strb r0, [fp, #0xc00]
_021E6F00:
	add r6, r6, #1
_021E6F04:
	ldrb r0, [sl, #0xd10]
	add r5, r5, #1
	add r7, r7, #0x24
	cmp r5, r0
	add r8, r8, #0x24
	add sb, sb, #0x24
	blt _021E6EAC
	b _021E6F98
_021E6F24:
	ldrb r0, [sl, #0xd10]
	ldr r5, [sp]
	mov r4, r5
	cmp r0, #0
	ble _021E6F88
	mov r3, sl
	add r2, sl, #0x300
_021E6F40:
	ldrb r0, [r2]
	mov r1, r0, lsl #0x18
	mov r1, r1, lsr #0x1c
	cmp r1, #1
	bne _021E6F70
	cmp r4, #0
	bne _021E6F6C
	bic r0, r0, #0xf0
	strb r0, [r2]
	ldrb r0, [r3, #0x301]
	str r0, [sp]
_021E6F6C:
	add r4, r4, #1
_021E6F70:
	ldrb r0, [sl, #0xd10]
	add r5, r5, #1
	add r2, r2, #0x24
	cmp r5, r0
	add r3, r3, #0x24
	blt _021E6F40
_021E6F88:
	cmp r4, #1
	ldreqb r0, [sl, #0xd0c]
	biceq r0, r0, #0xc0
	streqb r0, [sl, #0xd0c]
_021E6F98:
	ldr r0, [sp]
	and r0, r0, #0xff
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_021E6E08

	arm_func_start ov4_021E6FA4
ov4_021E6FA4: ; 0x021E6FA4
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0x30000
	movne r0, #0x20000
	bx lr
	arm_func_end ov4_021E6FA4

	arm_func_start ov4_021E6FC0
ov4_021E6FC0: ; 0x021E6FC0
	ldrb r0, [r0, #0xd0b]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1e
	cmp r0, #1
	moveq r0, #0xc0000
	movne r0, #0x80000
	bx lr
	arm_func_end ov4_021E6FC0

	arm_func_start ov4_021E6FDC
ov4_021E6FDC: ; 0x021E6FDC
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #9
	addls pc, pc, r1, lsl #2
	b _021E70B4
_021E6FF0: ; jump table
	b _021E7020 ; case 0
	b _021E701C ; case 1
	b _021E7018 ; case 2
	b _021E704C ; case 3
	b _021E7048 ; case 4
	b _021E7044 ; case 5
	b _021E7068 ; case 6
	b _021E7090 ; case 7
	b _021E70B4 ; case 8
	b _021E70B4 ; case 9
_021E7018:
	add r0, r0, #0x100
_021E701C:
	add r0, r0, #0x100
_021E7020:
	ldrb r2, [r0, #0xe6]
	add r0, r0, #0x80
	add r1, r4, #2
	mov r2, r2, lsl #0x1e
	mov r3, r2, lsr #0x1e
	mov r2, #0x10
	strb r3, [r4]
	bl MI_CpuCopy8
	b _021E70B4
_021E7044:
	add r0, r0, #0x100
_021E7048:
	add r0, r0, #0x100
_021E704C:
	mov r3, #1
	add r0, r0, #0xd1
	add r1, r4, #2
	mov r2, #5
	strb r3, [r4]
	bl MI_CpuCopy8
	b _021E70B4
_021E7068:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl ov4_021E86C4
	b _021E70B4
_021E7090:
	mov r1, #2
	strb r1, [r4]
	ldrb r1, [r0, #0xd13]
	add r0, r0, #0x7c
	add r2, r0, #0x400
	mov r0, #0xc0
	mla r0, r1, r0, r2
	add r1, r4, #2
	bl ov4_021E862C
_021E70B4:
	ldrb r0, [r4]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E6FDC