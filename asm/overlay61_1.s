	.include "macros/function.inc"
	.include "global.inc"

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
_0222CF38: .word 0x0222E764
_0222CF3C: .word 0x0222E964
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
	bl sub_020D8B7C
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
_0222CFC8: .word 0x0222E764
_0222CFCC: .word 0x0222E8A4
_0222CFD0: .word 0x0222E964
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
_0222D03C: .word 0x0222E764
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
_0222D1F8: .word 0x0222E764
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
	bl sub_020D50B8
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
_0222D3E4: .word 0x0222E764
	arm_func_end ov61_0222D1FC

	arm_func_start ov61_0222D3E8
ov61_0222D3E8: ; 0x0222D3E8
	ldr r0, _0222D3F4 ; =0x0222E764
	ldr r0, [r0, #0x13c]
	bx lr
	; .align 2, 0
_0222D3F4: .word 0x0222E764
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
_0222D42C: .word 0x0222E764
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
_0222D460: .word 0x0222E764
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
_0222D494: .word 0x0222E764
	arm_func_end ov61_0222D464

	arm_func_start ov61_0222D498
ov61_0222D498: ; 0x0222D498
	ldr ip, _0222D4A8 ; =FUN_021D7780
	mov r1, r0
	mov r0, #0
	bx ip
	; .align 2, 0
_0222D4A8: .word ov4_021D7780
	arm_func_end ov61_0222D498

	arm_func_start ov61_0222D4AC
ov61_0222D4AC: ; 0x0222D4AC
	stmfd sp!, {r3, lr}
	movs r1, r0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	mov r2, r0
	bl ov4_021D77C4
	ldmia sp!, {r3, pc}
	arm_func_end ov61_0222D4AC

	arm_func_start ov61_0222D4C8
ov61_0222D4C8: ; 0x0222D4C8
	ldr ip, _0222D4D4 ; =FUN_020C29D8
	ldr r0, _0222D4D8 ; =0x0222EA98
	bx ip
	; .align 2, 0
_0222D4D4: .word sub_020C29D8
_0222D4D8: .word 0x0222EA98
	arm_func_end ov61_0222D4C8

	arm_func_start ov61_0222D4DC
ov61_0222D4DC: ; 0x0222D4DC
	ldr ip, _0222D4E8 ; =FUN_020C2A5C
	ldr r0, _0222D4EC ; =0x0222EA98
	bx ip
	; .align 2, 0
_0222D4E8: .word sub_020C2A5C
_0222D4EC: .word 0x0222EA98
	arm_func_end ov61_0222D4DC

	arm_func_start ov61_0222D4F0
ov61_0222D4F0: ; 0x0222D4F0
	stmfd sp!, {r3, lr}
	ldr r0, _0222D504 ; =0x0222EA98
	bl sub_020C29C0
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D504: .word 0x0222EA98
	arm_func_end ov61_0222D4F0

	arm_func_start ov61_0222D508
ov61_0222D508: ; 0x0222D508
	mov r0, #1
	bx lr
	arm_func_end ov61_0222D508

	arm_func_start ov61_0222D510
ov61_0222D510: ; 0x0222D510
	stmfd sp!, {r3, lr}
	bl sub_020C3808
	cmp r0, #0
	bne _0222D524
	bl sub_020C3790
_0222D524:
	ldr r0, _0222D538 ; =0x0222E764
	mov r1, #0x10
	str r1, [r0, #0x270]
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D538: .word 0x0222E764
	arm_func_end ov61_0222D510

	arm_func_start ov61_0222D53C
ov61_0222D53C: ; 0x0222D53C
	bx lr
	arm_func_end ov61_0222D53C

	arm_func_start ov61_0222D540
ov61_0222D540: ; 0x0222D540
	ldr ip, _0222D548 ; =ov61_0222D040
	bx ip
	; .align 2, 0
_0222D548: .word ov61_0222D040
	arm_func_end ov61_0222D540

	arm_func_start ov61_0222D54C
ov61_0222D54C: ; 0x0222D54C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r1, #0x800
	ldr r0, _0222D590 ; =0x0222E764
	str r1, [sp]
	ldr ip, [r0, #0x270]
	ldr r0, _0222D594 ; =0x0222E9D8
	ldr r1, _0222D598 ; =ov61_0222D540
	ldr r3, _0222D59C ; =0x0222F2B0
	mov r2, #0
	str ip, [sp, #4]
	bl sub_020C1F34
	ldr r0, _0222D594 ; =0x0222E9D8
	bl sub_020C22D0
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D590: .word 0x0222E764
_0222D594: .word 0x0222E9D8
_0222D598: .word ov61_0222D540
_0222D59C: .word 0x0222F2B0
	arm_func_end ov61_0222D54C

	arm_func_start ov61_0222D5A0
ov61_0222D5A0: ; 0x0222D5A0
	ldrsb ip, [r0]
	mov r2, #0
	mov r3, r2
	cmp ip, #0
	beq _0222D61C
	mov r1, r2
_0222D5B8:
	cmp ip, #0x30
	blt _0222D5DC
	cmp ip, #0x39
	bgt _0222D5DC
	add r2, r2, #1
	cmp r2, #4
	blt _0222D610
	mov r0, #0
	bx lr
_0222D5DC:
	cmp ip, #0x2e
	bne _0222D608
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	add r3, r3, #1
	mov r2, r1
	cmp r3, #4
	blt _0222D610
	mov r0, r1
	bx lr
_0222D608:
	mov r0, #0
	bx lr
_0222D610:
	ldrsb ip, [r0, #1]!
	cmp ip, #0
	bne _0222D5B8
_0222D61C:
	cmp r3, #3
	bne _0222D630
	cmp r2, #0
	movne r0, #1
	bxne lr
_0222D630:
	mov r0, #0
	bx lr
	arm_func_end ov61_0222D5A0

	arm_func_start ov61_0222D638
ov61_0222D638: ; 0x0222D638
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov61_0222D5A0
	cmp r0, #0
	bne _0222D68C
	mov r0, r5
	bl ov4_0220854C
	cmp r0, #0
	beq _0222D684
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	str r0, [sp]
	bl ov4_022089F4
	mov r1, r0
	mov r0, r4
	bl sub_020D8B7C
	b _0222D698
_0222D684:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_0222D68C:
	mov r0, r4
	mov r1, r5
	bl sub_020D8B7C
_0222D698:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov61_0222D638

	arm_func_start ov61_0222D6A0
ov61_0222D6A0: ; 0x0222D6A0
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov r0, #2
	mov r1, #1
	mov r2, #0
	bl ov4_02208324
	ldr r2, _0222D768 ; =0x0222E764
	mvn r1, #0
	str r0, [r2, #0x26c]
	cmp r0, r1
	bne _0222D6E0
	mov r0, #3
	str r0, [r2, #0x250]
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r3, pc}
_0222D6E0:
	mov r1, #3
	mov r2, #0
	bl ov4_022087CC
	ldr r1, _0222D768 ; =0x0222E764
	orr r2, r0, #4
	ldr r0, [r1, #0x26c]
	mov r1, #4
	bl ov4_022087CC
	cmp r0, #0
	bge _0222D720
	ldr r0, _0222D768 ; =0x0222E764
	mov r1, #4
	str r1, [r0, #0x250]
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r3, pc}
_0222D720:
	ldr r0, _0222D76C ; =0x0222E8A4
	add r1, sp, #0
	bl ov61_0222D638
	cmp r0, #0
	bne _0222D74C
	ldr r0, _0222D768 ; =0x0222E764
	mov r1, #5
	str r1, [r0, #0x250]
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r3, pc}
_0222D74C:
	add r0, sp, #0
	bl ov4_021EAF1C
	ldr r1, _0222D768 ; =0x0222E764
	str r0, [r1, #0x264]
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D768: .word 0x0222E764
_0222D76C: .word 0x0222E8A4
	arm_func_end ov61_0222D6A0

	arm_func_start ov61_0222D770
ov61_0222D770: ; 0x0222D770
	stmfd sp!, {r3, lr}
	ldr r0, _0222D7AC ; =0x0222E764
	mvn r1, #0
	ldr r0, [r0, #0x26c]
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	mov r1, #2
	bl ov4_02208534
	ldr r0, _0222D7AC ; =0x0222E764
	ldr r0, [r0, #0x26c]
	bl ov4_02208540
	ldr r0, _0222D7AC ; =0x0222E764
	mvn r1, #0
	str r1, [r0, #0x26c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222D7AC: .word 0x0222E764
	arm_func_end ov61_0222D770

	arm_func_start ov61_0222D7B0
ov61_0222D7B0: ; 0x0222D7B0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r2, #8
	mov r1, #2
	ldr r0, _0222D8EC ; =0x0222E964
	strb r2, [sp]
	strb r1, [sp, #1]
	ldrh r1, [r0, #0x40]
	ldr r0, _0222D8F0 ; =0x0222E764
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	strh r1, [sp, #2]
	ldr r0, [r0, #0x264]
	str r0, [sp, #4]
	bl sub_020C3880
	ldr r2, _0222D8F4 ; =0x0007FD88
	mov r3, #0
	bl sub_020E1ED4
	ldr r5, _0222D8F4 ; =0x0007FD88
	ldr sb, _0222D8F0 ; =0x0222E764
	mov r7, r0
	mov r4, #0
	mov sl, #1
	add r6, sp, #0
	mvn r8, #0x19
_0222D820:
	ldr r0, [sb, #0x26c]
	mov r1, r6
	bl ov4_0220837C
	cmp r0, #0
	bge _0222D8E0
	cmp r0, r8
	bne _0222D880
	ldr r0, [sb, #0x244]
	cmp r0, #0
	beq _0222D8A4
	bl sub_020C3880
	mov r2, r5
	mov r3, r4
	bl sub_020E1ED4
	ldr r1, [sb, #0x244]
	subs r0, r0, r7
	cmp r0, r1
	blt _0222D8A4
	ldr r0, _0222D8F0 ; =0x0222E764
	mov r1, #0xa
	str r1, [r0, #0x250]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0222D880:
	mvn r1, #0x1d
	cmp r0, r1
	beq _0222D8E0
	ldr r0, _0222D8F0 ; =0x0222E764
	mov r1, #7
	str r1, [r0, #0x250]
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0222D8A4:
	bl ov61_0222D4C8
	ldr r0, [sb, #0x268]
	cmp r0, #1
	bne _0222D8D0
	ldr r0, _0222D8F0 ; =0x0222E764
	mov r1, #0xd
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0222D8D0:
	bl ov61_0222D4DC
	mov r0, sl
	bl ov61_0222DB8C
	b _0222D820
_0222D8E0:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0222D8EC: .word 0x0222E964
_0222D8F0: .word 0x0222E764
_0222D8F4: .word 0x0007FD88
	arm_func_end ov61_0222D7B0

	arm_func_start ov61_0222D8F8
ov61_0222D8F8: ; 0x0222D8F8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, #0
	bl sub_020C3880
	ldr r2, _0222DA04 ; =0x0007FD88
	mov r3, sb
	bl sub_020E1ED4
	ldr r7, _0222DA04 ; =0x0007FD88
	ldr r5, _0222DA08 ; =0x0222E764
	mov sl, r0
	mov r8, sb
	mov r6, sb
	mov fp, #1
	mvn r4, #5
_0222D92C:
	ldr r0, [r5, #0x254]
	ldr r1, [r5, #0x258]
	sub r2, r0, sb
	cmp r2, r0
	movgt r2, r0
	ldr r0, [r5, #0x26c]
	mov r3, r8
	add r1, r1, sb
	bl ov4_0220848C
	cmp r0, r4
	beq _0222D984
	cmp r0, #0
	bge _0222D974
	ldr r0, _0222DA08 ; =0x0222E764
	mov r1, #0xb
	str r1, [r0, #0x250]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222D974:
	ldr r1, [r5, #0x254]
	add sb, sb, r0
	cmp sb, r1
	beq _0222D9FC
_0222D984:
	ldr r0, [r5, #0x248]
	cmp r0, #0
	beq _0222D9C4
	bl sub_020C3880
	mov r2, r7
	mov r3, r6
	bl sub_020E1ED4
	ldr r1, [r5, #0x248]
	subs r0, r0, sl
	cmp r0, r1
	blt _0222D9C4
	ldr r0, _0222DA08 ; =0x0222E764
	mov r1, #0xb
	str r1, [r0, #0x250]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222D9C4:
	bl ov61_0222D4C8
	ldr r0, [r5, #0x268]
	cmp r0, #1
	bne _0222D9EC
	ldr r0, _0222DA08 ; =0x0222E764
	mov r1, #0xd
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222D9EC:
	bl ov61_0222D4DC
	mov r0, fp
	bl ov61_0222DB8C
	b _0222D92C
_0222D9FC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222DA04: .word 0x0007FD88
_0222DA08: .word 0x0222E764
	arm_func_end ov61_0222D8F8

	arm_func_start ov61_0222DA0C
ov61_0222DA0C: ; 0x0222DA0C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, #0
	sub r0, sl, #1
	str r0, [sp]
	bl sub_020C3880
	ldr r2, _0222DB84 ; =0x0007FD88
	mov r3, sl
	bl sub_020E1ED4
	mvn r4, #0
	ldr fp, _0222DB84 ; =0x0007FD88
	ldr r6, _0222DB88 ; =0x0222E764
	mov sb, r0
	sub r5, r4, #5
	add r7, sp, #0
	mov r8, sl
_0222DA48:
	ldr r1, [r6, #0x260]
	ldr r2, [r6, #0x25c]
	ldr r0, [r6, #0x26c]
	mov r3, r8
	add r1, r1, sl
	sub r2, r2, sl
	bl ov4_022083D8
	cmp r0, r5
	beq _0222DB04
	cmp r0, #0
	bgt _0222DA88
	ldr r0, _0222DB88 ; =0x0222E764
	mov r1, #9
	str r1, [r0, #0x250]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222DA88:
	add sl, sl, r0
	cmp sl, #4
	blo _0222DAC4
	ldr r0, [sp]
	cmp r0, r4
	bne _0222DAC4
	ldr r2, [r6, #0x260]
	ldrb r1, [r2]
	ldrb r0, [r2, #1]
	strb r1, [r7]
	strb r0, [r7, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	strb r1, [r7, #2]
	strb r0, [r7, #3]
_0222DAC4:
	ldr r0, [sp]
	cmp sl, r0
	bne _0222DB04
	cmp r0, r4
	beq _0222DB04
	ldr r0, _0222DB88 ; =0x0222E764
	sub r1, sl, #4
	ldr r2, [r0, #0x260]
	add r0, r2, #4
	add r2, r2, #4
	bl ov61_0222E110
	ldr r1, [sp]
	ldr r0, _0222DB88 ; =0x0222E764
	sub r1, r1, #4
	str r1, [r0, #0x25c]
	b _0222DB7C
_0222DB04:
	ldr r0, [r6, #0x24c]
	cmp r0, #0
	beq _0222DB44
	bl sub_020C3880
	mov r2, fp
	mov r3, #0
	bl sub_020E1ED4
	ldr r1, [r6, #0x24c]
	subs r0, r0, sb
	cmp r0, r1
	blt _0222DB44
	ldr r0, _0222DB88 ; =0x0222E764
	mov r1, #0xc
	str r1, [r0, #0x250]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222DB44:
	bl ov61_0222D4C8
	ldr r0, [r6, #0x268]
	cmp r0, #1
	bne _0222DB6C
	ldr r0, _0222DB88 ; =0x0222E764
	mov r1, #0xd
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222DB6C:
	bl ov61_0222D4DC
	mov r0, #1
	bl ov61_0222DB8C
	b _0222DA48
_0222DB7C:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222DB84: .word 0x0007FD88
_0222DB88: .word 0x0222E764
	arm_func_end ov61_0222DA0C

	arm_func_start ov61_0222DB8C
ov61_0222DB8C: ; 0x0222DB8C
	ldr ip, _0222DB94 ; =FUN_020C24A4
	bx ip
	; .align 2, 0
_0222DB94: .word sub_020C24A4
	arm_func_end ov61_0222DB8C

	arm_func_start ov61_0222DB98
ov61_0222DB98: ; 0x0222DB98
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x17c
	ldr r0, _0222DCD0 ; =0x0222E764
	ldr r0, [r0, #0x138]
	cmp r0, #1
	addeq sp, sp, #0x17c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, _0222DCD4 ; =0x0222E638
	add r1, sp, #8
	bl ov4_021D8144
	cmp r0, #0
	bne _0222DBE4
	ldr r0, _0222DCD0 ; =0x0222E764
	mov r1, #0xe
	str r1, [r0, #0x250]
	add sp, sp, #0x17c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_0222DBE4:
	ldr r4, _0222DCD0 ; =0x0222E764
	mov r5, #1
_0222DBEC:
	bl ov4_021D81B8
	cmp r0, #3
	bne _0222DC40
	ldr r4, _0222DCD8 ; =0x0222E76A
	add r3, sp, #0x4d
	mov r2, #0x96
_0222DC04:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [r4]
	strb r0, [r4, #1]
	add r4, r4, #2
	subs r2, r2, #1
	bne _0222DC04
	ldrb r2, [r3]
	ldr r1, _0222DCD0 ; =0x0222E764
	mov r0, #1
	strb r2, [r4]
	str r0, [r1, #0x138]
	add sp, sp, #0x17c
	ldmia sp!, {r4, r5, pc}
_0222DC40:
	cmp r0, #4
	bne _0222DC6C
	add r0, sp, #0
	add r1, sp, #4
	bl ov4_021D75F4
	ldr r0, _0222DCD0 ; =0x0222E764
	mov r1, #0xe
	str r1, [r0, #0x250]
	add sp, sp, #0x17c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_0222DC6C:
	cmp r0, #5
	bne _0222DC8C
	ldr r0, _0222DCD0 ; =0x0222E764
	mov r1, #0xe
	str r1, [r0, #0x250]
	add sp, sp, #0x17c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_0222DC8C:
	bl ov61_0222D4C8
	ldr r0, [r4, #0x268]
	cmp r0, #1
	bne _0222DCB8
	ldr r0, _0222DCD0 ; =0x0222E764
	mov r1, #0xd
	str r1, [r0, #0x250]
	bl ov61_0222D4DC
	add sp, sp, #0x17c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_0222DCB8:
	bl ov61_0222D4DC
	mov r0, r5
	bl ov61_0222DB8C
	b _0222DBEC
_0222DCC8:
	.byte 0x5F, 0xDF, 0x8D, 0xE2, 0x30, 0x80, 0xBD, 0xE8
_0222DCD0: .word 0x0222E764
_0222DCD4: .word 0x0222E638
_0222DCD8: .word 0x0222E76A
	arm_func_end ov61_0222DB98

	arm_func_start ov61_0222DCDC
ov61_0222DCDC: ; 0x0222DCDC
	ldr ip, _0222DCF0 ; =ov61_0222CF40
	mov r2, r0
	ldr r0, _0222DCF4 ; =0x0222E63C
	ldr r1, _0222DCF8 ; =0x00003070
	bx ip
	; .align 2, 0
_0222DCF0: .word ov61_0222CF40
_0222DCF4: .word 0x0222E63C
_0222DCF8: .word 0x00003070
	arm_func_end ov61_0222DCDC

	arm_func_start ov61_0222DCFC
ov61_0222DCFC: ; 0x0222DCFC
	ldr ip, _0222DD04 ; =ov61_0222CEDC
	bx ip
	; .align 2, 0
_0222DD04: .word ov61_0222CEDC
	arm_func_end ov61_0222DCFC

	arm_func_start ov61_0222DD08
ov61_0222DD08: ; 0x0222DD08
	stmfd sp!, {r4, lr}
	bl ov61_0222D4C8
	bl ov61_0222D3E8
	mov r4, r0
	bl ov61_0222D4DC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov61_0222DD08

	arm_func_start ov61_0222DD24
ov61_0222DD24: ; 0x0222DD24
	ldr ip, _0222DD2C ; =ov61_0222D464
	bx ip
	; .align 2, 0
_0222DD2C: .word ov61_0222D464
	arm_func_end ov61_0222DD24

	arm_func_start ov61_0222DD30
ov61_0222DD30: ; 0x0222DD30
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0xe0
	mov r6, r0
	add lr, sp, #0
	mov r5, r1
	mov r4, r6
	mov ip, #0xe
_0222DD4C:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DD4C
	ldr r1, _0222DD84 ; =0x0222E658
	mov r0, r6
	bl ov61_0222E478
	ldr r0, _0222DD88 ; =0x00004E20
	add r1, sp, #0
	mov r2, r5
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0xe0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222DD84: .word 0x0222E658
_0222DD88: .word 0x00004E20
	arm_func_end ov61_0222DD30

	arm_func_start ov61_0222DD8C
ov61_0222DD8C: ; 0x0222DD8C
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov lr, #0
	mov ip, r0, asr #0x1f
	str r0, [sp, #4]
	mov r2, r1
	ldr r0, _0222DDC8 ; =0x00004E21
	add r1, sp, #0
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	str ip, [sp, #8]
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_0222DDC8: .word 0x00004E21
	arm_func_end ov61_0222DD8C

	arm_func_start ov61_0222DDCC
ov61_0222DDCC: ; 0x0222DDCC
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x220
	mov r6, r1
	add lr, sp, #4
	mov r5, r2
	mov r4, r6
	str r0, [sp]
	mov ip, #0x21
_0222DDEC:
	ldmia r4!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DDEC
	ldmia r4, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	ldr r1, _0222DE2C ; =0x0222E658
	mov r0, r6
	bl ov61_0222E478
	ldr r0, _0222DE30 ; =0x00005208
	add r1, sp, #0
	mov r2, r5
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x220
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0222DE2C: .word 0x0222E658
_0222DE30: .word 0x00005208
	arm_func_end ov61_0222DDCC

	arm_func_start ov61_0222DE34
ov61_0222DE34: ; 0x0222DE34
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov lr, #0
	mov ip, r0, asr #0x1f
	str r0, [sp, #4]
	mov r2, r1
	ldr r0, _0222DE70 ; =0x00005209
	add r1, sp, #0
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	str ip, [sp, #8]
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_0222DE70: .word 0x00005209
	arm_func_end ov61_0222DE34

	arm_func_start ov61_0222DE74
ov61_0222DE74: ; 0x0222DE74
	ldr ip, _0222DE7C ; =ov61_0222D430
	bx ip
	; .align 2, 0
_0222DE7C: .word ov61_0222D430
	arm_func_end ov61_0222DE74

	arm_func_start ov61_0222DE80
ov61_0222DE80: ; 0x0222DE80
	ldr ip, _0222DE88 ; =ov61_0222D3F8
	bx ip
	; .align 2, 0
_0222DE88: .word ov61_0222D3F8
	arm_func_end ov61_0222DE80

	arm_func_start ov61_0222DE8C
ov61_0222DE8C: ; 0x0222DE8C
	ldr ip, _0222DE94 ; =ov61_0222E2A8
	bx ip
	; .align 2, 0
_0222DE94: .word ov61_0222E2A8
	arm_func_end ov61_0222DE8C

	arm_func_start ov61_0222DE98
ov61_0222DE98: ; 0x0222DE98
	ldr ip, _0222DEB0 ; =ov61_0222D1FC
	mov r1, #0
	mov r2, r0
	ldr r0, _0222DEB4 ; =0x000055F0
	sub r3, r1, #1
	bx ip
	; .align 2, 0
_0222DEB0: .word ov61_0222D1FC
_0222DEB4: .word 0x000055F0
	arm_func_end ov61_0222DE98

	arm_func_start ov61_0222DEB8
ov61_0222DEB8: ; 0x0222DEB8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mov r4, r1
	add lr, sp, #0
	ldmia r5!, {r0, r1, r2, r3}
	mov ip, lr
	stmia lr!, {r0, r1, r2, r3}
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r0, [r5, #0]
	mov r1, ip
	str r0, [lr]
	ldr r0, _0222DF04 ; =0x000055F1
	mov r2, r4
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0222DF04: .word 0x000055F1
	arm_func_end ov61_0222DEB8

	arm_func_start ov61_0222DF08
ov61_0222DF08: ; 0x0222DF08
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14c
	sub sp, sp, #0x1c00
	add lr, sp, #0
	mov r5, r0
	mov r4, r1
	mov ip, #0x1d4
_0222DF24:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _0222DF24
	ldmia r5, {r0, r1, r2}
	stmia lr, {r0, r1, r2}
	ldr r0, _0222DF5C ; =0x000059D8
	add r1, sp, #0
	mov r2, r4
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0x14c
	add sp, sp, #0x1c00
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_0222DF5C: .word 0x000059D8
	arm_func_end ov61_0222DF08

	arm_func_start ov61_0222DF60
ov61_0222DF60: ; 0x0222DF60
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov lr, #0
	add ip, sp, #4
	strh lr, [sp]
	mov r4, r1
	ldmia r0, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	ldr r0, _0222DFA4 ; =0x000059D9
	add r1, sp, #0
	mov r2, r4
	sub r3, lr, #1
	strh lr, [sp]
	strh lr, [sp, #2]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_0222DFA4: .word 0x000059D9
	arm_func_end ov61_0222DF60

	arm_func_start ov61_0222DFA8
ov61_0222DFA8: ; 0x0222DFA8
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	mov r2, r1
	add r1, sp, #0
	mov ip, #0
	mov r3, #1
	str ip, [r1]
	strh r3, [sp]
	str ip, [r1, #4]
	str ip, [r1, #8]
	str ip, [r1, #0xc]
	str ip, [r1, #0x10]
	str ip, [r1, #0x14]
	str ip, [r1, #0x18]
	ldr ip, [r0]
	ldr r0, _0222DFFC ; =0x000059D9
	sub r3, r3, #2
	str ip, [sp, #0xc]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	; .align 2, 0
_0222DFFC: .word 0x000059D9
	arm_func_end ov61_0222DFA8

	arm_func_start ov61_0222E000
ov61_0222E000: ; 0x0222E000
	stmdb sp!, {lr}
	sub sp, sp, #0x1c
	mov r2, r1
	add r1, sp, #0
	mov ip, #0
	mov r3, #2
	str ip, [r1]
	strh r3, [sp]
	str ip, [r1, #4]
	str ip, [r1, #8]
	str ip, [r1, #0xc]
	str ip, [r1, #0x10]
	str ip, [r1, #0x14]
	str ip, [r1, #0x18]
	ldr ip, [r0]
	ldr r0, _0222E054 ; =0x000059D9
	sub r3, r3, #3
	str ip, [sp, #0xc]
	bl ov61_0222D1FC
	add sp, sp, #0x1c
	ldmia sp!, {pc}
	; .align 2, 0
_0222E054: .word 0x000059D9
	arm_func_end ov61_0222E000

	arm_func_start ov61_0222E058
ov61_0222E058: ; 0x0222E058
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	mov r2, r3
	ldr r0, _0222E088 ; =0x000059DA
	add r1, sp, #0
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_0222E088: .word 0x000059DA
	arm_func_end ov61_0222E058

	arm_func_start ov61_0222E08C
ov61_0222E08C: ; 0x0222E08C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, _0222E0B4 ; =0x000059DB
	add r1, sp, #0
	mvn r3, #0
	bl ov61_0222D1FC
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222E0B4: .word 0x000059DB
	arm_func_end ov61_0222E08C

	arm_func_start ov61_0222E0B8
ov61_0222E0B8: ; 0x0222E0B8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr lr, _0222E10C ; =0x0222E65C
	mov ip, r5
_0222E0D0:
	cmp r5, #0
	moveq r4, ip
	beq _0222E0F0
	ldrb r4, [r0]
	add r3, r5, r1
	add r3, r4, r3
	and r3, r3, #0xff
	ldrb r4, [lr, r3]
_0222E0F0:
	ldrb r3, [r0, r5]
	add r5, r5, #1
	cmp r5, r1
	eor r3, r4, r3
	strb r3, [r2], #1
	blt _0222E0D0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222E10C: .word 0x0222E65C
	arm_func_end ov61_0222E0B8

	arm_func_start ov61_0222E110
ov61_0222E110: ; 0x0222E110
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	cmp r1, #0
	ldmleia sp!, {r3, r4, r5, pc}
	ldr lr, _0222E164 ; =0x0222E65C
	mov ip, r5
_0222E128:
	cmp r5, #0
	moveq r4, ip
	beq _0222E148
	ldrb r4, [r0]
	add r3, r5, r1
	add r3, r4, r3
	and r3, r3, #0xff
	ldrb r4, [lr, r3]
_0222E148:
	ldrb r3, [r2, r5]
	eor r3, r3, r4
	strb r3, [r2, r5]
	add r5, r5, #1
	cmp r5, r1
	blt _0222E128
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222E164: .word 0x0222E65C
	arm_func_end ov61_0222E110

	arm_func_start ov61_0222E168
ov61_0222E168: ; 0x0222E168
	ldr r2, _0222E294 ; =0x00005209
	cmp r0, r2
	bgt _0222E1C0
	bge _0222E24C
	sub r1, r2, #0x3e8
	cmp r0, r1
	bgt _0222E1B0
	ldr r1, _0222E298 ; =0x00004E20
	cmp r0, r1
	blt _0222E1A4
	beq _0222E234
	add r1, r1, #1
	cmp r0, r1
	beq _0222E23C
	b _0222E284
_0222E1A4:
	cmp r0, #0
	beq _0222E22C
	b _0222E284
_0222E1B0:
	sub r1, r2, #1
	cmp r0, r1
	beq _0222E244
	b _0222E284
_0222E1C0:
	add r1, r2, #0x3e8
	cmp r0, r1
	bgt _0222E1E0
	bge _0222E25C
	ldr r1, _0222E29C ; =0x000055F0
	cmp r0, r1
	beq _0222E254
	b _0222E284
_0222E1E0:
	ldr r2, _0222E2A0 ; =0x000059D8
	cmp r0, r2
	bgt _0222E1F4
	beq _0222E264
	b _0222E284
_0222E1F4:
	add r1, r2, #3
	cmp r0, r1
	bgt _0222E284
	add r1, r2, #1
	cmp r0, r1
	blt _0222E284
	beq _0222E26C
	add r1, r2, #2
	cmp r0, r1
	beq _0222E274
	add r1, r2, #3
	cmp r0, r1
	beq _0222E27C
	b _0222E284
_0222E22C:
	mov r0, #0x400
	b _0222E28C
_0222E234:
	mov r0, #0xe0
	b _0222E28C
_0222E23C:
	mov r0, #0xc
	b _0222E28C
_0222E244:
	mov r0, #0x220
	b _0222E28C
_0222E24C:
	mov r0, #0xc
	b _0222E28C
_0222E254:
	mov r0, #0
	b _0222E28C
_0222E25C:
	mov r0, #0x24
	b _0222E28C
_0222E264:
	ldr r0, _0222E2A4 ; =0x00001D4C
	b _0222E28C
_0222E26C:
	mov r0, #0x1c
	b _0222E28C
_0222E274:
	mov r0, #0xc
	b _0222E28C
_0222E27C:
	mov r0, #8
	b _0222E28C
_0222E284:
	mvn r0, #0
	bx lr
_0222E28C:
	add r0, r0, #0x140
	bx lr
	; .align 2, 0
_0222E294: .word 0x00005209
_0222E298: .word 0x00004E20
_0222E29C: .word 0x000055F0
_0222E2A0: .word 0x000059D8
_0222E2A4: .word 0x00001D4C
	arm_func_end ov61_0222E168

	arm_func_start ov61_0222E2A8
ov61_0222E2A8: ; 0x0222E2A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	ldr r6, _0222E458 ; =0x0222E580
	add lr, sp, #0
	mov ip, r0
	mov r5, lr
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	ldr r4, _0222E45C ; =0x00005209
	ldmia r6, {r0, r1, r2, r3}
	stmia lr, {r0, r1, r2, r3}
	cmp ip, r4
	bgt _0222E340
	bge _0222E408
	ldr r1, _0222E460 ; =0x00004E20
	cmp ip, r1
	bgt _0222E31C
	bge _0222E3F0
	cmp ip, #0
	bgt _0222E440
	mvn r6, #0
	cmp ip, r6
	blt _0222E440
	beq _0222E3AC
	cmp ip, #0
	beq _0222E3E8
	b _0222E440
_0222E31C:
	add r0, r1, #1
	cmp ip, r0
	bgt _0222E330
	beq _0222E3F8
	b _0222E440
_0222E330:
	add r0, r1, #0x3e8
	cmp ip, r0
	beq _0222E400
	b _0222E440
_0222E340:
	add r0, r4, #0x3e8
	cmp ip, r0
	bgt _0222E360
	bge _0222E418
	ldr r0, _0222E464 ; =0x000055F0
	cmp ip, r0
	beq _0222E410
	b _0222E440
_0222E360:
	ldr r1, _0222E468 ; =0x000059D8
	cmp ip, r1
	bgt _0222E374
	beq _0222E420
	b _0222E440
_0222E374:
	add r0, r1, #3
	cmp ip, r0
	bgt _0222E440
	add r0, r1, #1
	cmp ip, r0
	blt _0222E440
	beq _0222E428
	add r0, r1, #2
	cmp ip, r0
	beq _0222E430
	add r0, r1, #3
	cmp ip, r0
	beq _0222E438
	b _0222E440
_0222E3AC:
	mov r7, #0
	mov r4, r6
_0222E3B4:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, r4
	beq _0222E3D4
	bl ov61_0222E2A8
	cmp r0, r6
	movgt r6, r0
	add r7, r7, #1
	b _0222E3B4
_0222E3D4:
	mvn r0, #0
	cmp r6, r0
	bne _0222E44C
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E3E8:
	mov r6, #0x400
	b _0222E44C
_0222E3F0:
	mov r6, #8
	b _0222E44C
_0222E3F8:
	ldr r6, _0222E46C ; =0x0000093C
	b _0222E44C
_0222E400:
	mov r6, #8
	b _0222E44C
_0222E408:
	ldr r6, _0222E470 ; =0x00002B74
	b _0222E44C
_0222E410:
	mov r6, #4
	b _0222E44C
_0222E418:
	mov r6, #0x630
	b _0222E44C
_0222E420:
	mov r6, #8
	b _0222E44C
_0222E428:
	ldr r6, _0222E474 ; =0x00001C24
	b _0222E44C
_0222E430:
	sub r6, r1, #0x3c80
	b _0222E44C
_0222E438:
	mov r6, #0
	b _0222E44C
_0222E440:
	add sp, sp, #0x30
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0222E44C:
	add r0, r6, #8
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_0222E458: .word 0x0222E580
_0222E45C: .word 0x00005209
_0222E460: .word 0x00004E20
_0222E464: .word 0x000055F0
_0222E468: .word 0x000059D8
_0222E46C: .word 0x0000093C
_0222E470: .word 0x00002B74
_0222E474: .word 0x00001C24
	arm_func_end ov61_0222E2A8

	arm_func_start ov61_0222E478
ov61_0222E478: ; 0x0222E478
	bx lr
	arm_func_end ov61_0222E478
	; 0x0222E47C


	.rodata
	.incbin "incbin/overlay61_rodata.bin"

	.data
	.incbin "incbin/overlay61_data.bin"

	.bss
	.space 0xB60

