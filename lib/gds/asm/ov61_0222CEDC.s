	.include "macros/function.inc"
	.include "include/ov61_0222CEDC.inc"

	.extern Unk_ov61_0222E764

	.text


	arm_func_start ov61_0222CEDC
ov61_0222CEDC: ; 0x0222CEDC
	stmfd sp!, {r3, lr}
	bl ov61_0222CFD4
	mov r0, #0
	ldr lr, _0222CF38 ; =0x0222E764
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov ip, #9
_0222CEFC:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222CEFC
	stmia lr!, {r0, r1, r2, r3}
	stmia lr, {r0, r1}
	ldr r1, _0222CF38 ; =0x0222E764
	mov r2, #0
	str r2, [r1, #0x138]
	ldr r0, _0222CF3C ; =0x0222E964
	strb r2, [r1, #0x140]
	strh r2, [r0, #0x40]
	bl ov61_0222D508
	bl ov61_0222D53C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222CF38: .word Unk_ov61_0222E764
_0222CF3C: .word Unk_ov61_0222E764 + 0x200
	arm_func_end ov61_0222CEDC

	arm_func_start ov61_0222CF40
ov61_0222CF40: ; 0x0222CF40
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r2
	mov r6, r0
	mov r4, r1
	beq _0222CF80
	ldr lr, _0222CFC8 ; =0x0222E764
	mov ip, #0x13
_0222CF5C:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222CF5C
	ldmia r5, {r0, r1}
	stmia lr, {r0, r1}
	ldr r0, _0222CFC8 ; =0x0222E764
	mov r1, #0
	str r1, [r0, #0x138]
_0222CF80:
	bl ov61_0222D510
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ov61_0222D4F0
	ldr r0, _0222CFCC ; =0x0222E8A4
	mov r1, r6
	bl strcpy
	ldr r1, _0222CFD0 ; =0x0222E964
	mov r2, #0
	ldr r0, _0222CFC8 ; =0x0222E764
	strh r4, [r1, #0x40]
	str r2, [r0, #0x258]
	sub r1, r2, #1
	str r1, [r0, #0x26c]
	bl ov61_0222CFD4
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222CFC8: .word Unk_ov61_0222E764
_0222CFCC: .word Unk_ov61_0222E764 + 0x140
_0222CFD0: .word Unk_ov61_0222E764 + 0x200
	arm_func_end ov61_0222CF40

	arm_func_start ov61_0222CFD4
ov61_0222CFD4: ; 0x0222CFD4
	stmfd sp!, {r3, lr}
	bl ov61_0222D770
	ldr r0, _0222D03C ; =0x0222E764
	ldr r0, [r0, #0x258]
	cmp r0, #0
	beq _0222CFFC
	bl ov61_0222D4AC
	ldr r0, _0222D03C ; =0x0222E764
	mov r1, #0
	str r1, [r0, #0x258]
_0222CFFC:
	ldr r0, _0222D03C ; =0x0222E764
	mov r1, #0xf
	str r1, [r0, #0x244]
	mov r1, #0x1e
	str r1, [r0, #0x248]
	str r1, [r0, #0x24c]
	mov r2, #0
	str r2, [r0, #0x254]
	str r2, [r0, #0x25c]
	str r2, [r0, #0x260]
	str r2, [r0, #0x264]
	str r2, [r0, #0x268]
	mov r1, #1
	str r1, [r0, #0x13c]
	str r2, [r0, #0x250]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D03C: .word Unk_ov61_0222E764
	arm_func_end ov61_0222CFD4

	arm_func_start ov61_0222D040
ov61_0222D040: ; 0x0222D040
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r5, #0
	ldr r4, _0222D1F8 ; =0x0222E764
	mov fp, #9
	mov sl, #7
	mov r6, #1
	mov r7, r5
_0222D05C:
	ldr r0, [r4, #0x13c]
	mov r8, r7
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0222D1B4
_0222D070: ; jump table
	b _0222D098 ; case 0
	b _0222D098 ; case 1
	b _0222D0A0 ; case 2
	b _0222D0D4 ; case 3
	b _0222D108 ; case 4
	b _0222D13C ; case 5
	b _0222D184 ; case 6
	b _0222D098 ; case 7
	b _0222D098 ; case 8
	b _0222D098 ; case 9
_0222D098:
	mov r8, r6
	b _0222D1B4
_0222D0A0:
	bl ov61_0222DB98
	cmp r0, #0
	bne _0222D0C4
	ldr r0, [r4, #0x250]
	mov r8, #1
	cmp r0, #0xd
	moveq sb, sl
	movne sb, fp
	b _0222D0C8
_0222D0C4:
	mov sb, #3
_0222D0C8:
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
	b _0222D1B4
_0222D0D4:
	bl ov61_0222D6A0
	cmp r0, #0
	bne _0222D0F8
	ldr r0, [r4, #0x250]
	mov r8, #1
	cmp r0, #0xd
	moveq sb, #7
	movne sb, #9
	b _0222D0FC
_0222D0F8:
	mov sb, #4
_0222D0FC:
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
	b _0222D1B4
_0222D108:
	bl ov61_0222D7B0
	cmp r0, #0
	bne _0222D12C
	ldr r0, [r4, #0x250]
	mov r8, #1
	cmp r0, #0xd
	moveq sb, #7
	movne sb, #9
	b _0222D130
_0222D12C:
	mov sb, #5
_0222D130:
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
	b _0222D1B4
_0222D13C:
	bl ov61_0222D8F8
	cmp r0, #0
	bne _0222D160
	ldr r0, [r4, #0x250]
	mov r8, #1
	cmp r0, #0xd
	moveq sb, #7
	movne sb, #9
	b _0222D164
_0222D160:
	mov sb, #6
_0222D164:
	ldr r0, [r4, #0x258]
	cmp r0, #0
	beq _0222D178
	bl ov61_0222D4AC
	str r5, [r4, #0x258]
_0222D178:
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
	b _0222D1B4
_0222D184:
	bl ov61_0222DA0C
	cmp r0, #0
	bne _0222D1A4
	ldr r0, [r4, #0x250]
	cmp r0, #0xd
	moveq sb, #7
	movne sb, #9
	b _0222D1A8
_0222D1A4:
	mov sb, #8
_0222D1A8:
	mov r8, #1
	bl ov61_0222D4C8
	str sb, [r4, #0x13c]
_0222D1B4:
	cmp r8, #0
	bne _0222D1F0
	ldr r0, [r4, #0x268]
	cmp r0, #1
	bne _0222D1E0
	ldr r0, _0222D1F8 ; =0x0222E764
	mov r1, #7
	str r1, [r0, #0x13c]
	mov r1, #0xd
	str r1, [r0, #0x250]
	b _0222D1F0
_0222D1E0:
	bl ov61_0222D4DC
	mov r0, #1
	bl ov61_0222DB8C
	b _0222D05C
_0222D1F0:
	bl ov61_0222D4DC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222D1F8: .word Unk_ov61_0222E764
	arm_func_end ov61_0222D040

	arm_func_start ov61_0222D1FC
ov61_0222D1FC: ; 0x0222D1FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov61_0222D4C8
	ldr r0, _0222D3E4 ; =0x0222E764
	ldr r0, [r0, #0x13c]
	cmp r0, #9
	addls pc, pc, r0, lsl #2
	b _0222D274
_0222D228: ; jump table
	b _0222D250 ; case 0
	b _0222D274 ; case 1
	b _0222D250 ; case 2
	b _0222D250 ; case 3
	b _0222D250 ; case 4
	b _0222D250 ; case 5
	b _0222D250 ; case 6
	b _0222D270 ; case 7
	b _0222D270 ; case 8
	b _0222D270 ; case 9
_0222D250:
	bl ov61_0222D4DC
	ldr r0, _0222D3E4 ; =0x0222E764
	mov r1, #9
	str r1, [r0, #0x13c]
	mov r1, #1
	str r1, [r0, #0x250]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222D270:
	bl ov61_0222CFD4
_0222D274:
	bl ov61_0222D4DC
	mov r0, r7
	bl ov61_0222E2A8
	ldr r2, _0222D3E4 ; =0x0222E764
	mvn r1, #0
	str r0, [r2, #0x25c]
	cmp r0, r1
	bne _0222D2AC
	mov r0, #9
	str r0, [r2, #0x13c]
	mov r0, #2
	str r0, [r2, #0x250]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222D2AC:
	cmp r4, r1
	str r5, [r2, #0x260]
	addne r0, r4, #0x140
	strne r0, [sp]
	bne _0222D2F4
	mov r0, r7
	bl ov61_0222E168
	mvn r1, #0
	str r0, [sp]
	cmp r0, r1
	bne _0222D2F4
	ldr r0, _0222D3E4 ; =0x0222E764
	mov r1, #9
	str r1, [r0, #0x13c]
	mov r1, #2
	str r1, [r0, #0x250]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222D2F4:
	ldr r0, [sp]
	bl ov61_0222D498
	ldr ip, _0222D3E4 ; =0x0222E764
	cmp r0, #0
	str r0, [ip, #0x258]
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp]
	add r3, sp, #0
	str r1, [ip, #0x254]
	ldrb r2, [r3]
	ldrb r1, [r3, #1]
	mov r4, #0x13
	strb r2, [r0]
	strb r1, [r0, #1]
	ldrb r2, [r3, #2]
	ldrb r1, [r3, #3]
	strb r2, [r0, #2]
	strb r1, [r0, #3]
	ldr lr, [ip, #0x258]
	strh r7, [lr, #4]
	add r5, lr, #8
_0222D34C:
	ldmia ip!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _0222D34C
	ldmia ip, {r0, r1}
	stmia r5, {r0, r1}
	mov r0, #0
	strh r0, [lr, #6]
	ldr r2, [sp]
	mov r1, r6
	add r0, lr, #0x140
	sub r2, r2, #0x140
	bl memcpy
	ldr r0, _0222D3E4 ; =0x0222E764
	ldr r2, [r0, #0x258]
	ldr r1, [r0, #0x254]
	add r0, r2, #4
	sub r1, r1, #4
	add r2, r2, #4
	bl ov61_0222E0B8
	ldr r0, _0222D3E4 ; =0x0222E764
	mov r1, #2
	str r1, [r0, #0x13c]
	bl ov61_0222D4C8
	bl ov61_0222D54C
	cmp r0, #0
	bne _0222D3D8
	ldr r0, _0222D3E4 ; =0x0222E764
	mov r1, #9
	str r1, [r0, #0x13c]
	mov r1, #6
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222D3D8:
	bl ov61_0222D4DC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222D3E4: .word Unk_ov61_0222E764
	arm_func_end ov61_0222D1FC

	arm_func_start ov61_0222D3E8
ov61_0222D3E8: ; 0x0222D3E8
	ldr r0, _0222D3F4 ; =0x0222E764
	ldr r0, [r0, #0x13c]
	bx lr
	; .align 2, 0
_0222D3F4: .word Unk_ov61_0222E764
	arm_func_end ov61_0222D3E8

	arm_func_start ov61_0222D3F8
ov61_0222D3F8: ; 0x0222D3F8
	stmfd sp!, {r3, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	cmp r0, #8
	beq _0222D418
	bl ov61_0222D4DC
	mov r0, #0
	ldmia sp!, {r3, pc}
_0222D418:
	bl ov61_0222D4DC
	ldr r0, _0222D42C ; =0x0222E764
	ldr r0, [r0, #0x260]
	add r0, r0, #4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D42C: .word Unk_ov61_0222E764
	arm_func_end ov61_0222D3F8

	arm_func_start ov61_0222D430
ov61_0222D430: ; 0x0222D430
	stmfd sp!, {r3, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	cmp r0, #8
	beq _0222D450
	bl ov61_0222D4DC
	mvn r0, #0
	ldmia sp!, {r3, pc}
_0222D450:
	bl ov61_0222D4DC
	ldr r0, _0222D460 ; =0x0222E764
	ldr r0, [r0, #0x25c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D460: .word Unk_ov61_0222E764
	arm_func_end ov61_0222D430

	arm_func_start ov61_0222D464
ov61_0222D464: ; 0x0222D464
	stmfd sp!, {r3, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	cmp r0, #9
	beq _0222D484
	bl ov61_0222D4DC
	mov r0, #0
	ldmia sp!, {r3, pc}
_0222D484:
	bl ov61_0222D4DC
	ldr r0, _0222D494 ; =0x0222E764
	ldr r0, [r0, #0x250]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D494: .word Unk_ov61_0222E764
	arm_func_end ov61_0222D464