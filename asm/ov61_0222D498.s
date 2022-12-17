	.include "macros/function.inc"
	.include "global.inc"

	

	.text


	arm_func_start ov61_0222D498
ov61_0222D498: ; 0x0222D498
	ldr ip, _0222D4A8 ; =ov4_021D7780
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
	ldr ip, _0222D4D4 ; =sub_020C29D8
	ldr r0, _0222D4D8 ; =0x0222EA98
	bx ip
	; .align 2, 0
_0222D4D4: .word sub_020C29D8
_0222D4D8: .word 0x0222EA98
	arm_func_end ov61_0222D4C8

	arm_func_start ov61_0222D4DC
ov61_0222D4DC: ; 0x0222D4DC
	ldr ip, _0222D4E8 ; =sub_020C2A5C
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
	ldr ip, _0222DB94 ; =sub_020C24A4
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
	.data


	.global Unk_ov61_0222E638
Unk_ov61_0222E638: ; 0x0222E638
	.incbin "incbin/overlay61_data.bin", 0x38, 0x1


	.bss


	.global Unk_ov61_0222E764
Unk_ov61_0222E764: ; 0x0222E764
	.space 0x34C

	.global Unk_ov61_0222EAB0
Unk_ov61_0222EAB0: ; 0x0222EAB0
	.space 0x800

