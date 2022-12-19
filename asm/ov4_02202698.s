	.include "macros/function.inc"
	.include "include/ov4_02202698.inc"

	

	.text


	arm_func_start ov4_02202698
ov4_02202698: ; 0x02202698
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	bl sub_020C3920
	ldr r2, _0220277C ; =0x0221B780
	ldr r1, _02202780 ; =0x0221A0E8
	mov r3, #1
	str r3, [r1, #0]
	strh r0, [r2]
	mov r1, #0
	str r1, [r2, #0x20]
	ldr r0, _02202784 ; =0x0221DBD8
	str r1, [r2, #4]
	ldr r0, [r0, #0x10]
	ldr r3, _02202788 ; =0x02215D08
	cmp r0, #1
	streq r1, [r2, #0x1c]
	movne r0, #4
	strne r0, [r2, #0x1c]
	ldr r1, _0220277C ; =0x0221B780
	mov r0, #0x440
	str r0, [r1, #0x24]
	ldr r5, [r1, #0x1c]
	mov r0, #0x44
	add r2, r3, r5, lsl #1
	ldrb r4, [r2, #1]
	ldrb r3, [r3, r5, lsl #1]
	mov r2, #0
	mla r0, r3, r0, r4
	add r0, r0, #0xc
	str r0, [r1, #0xc]
	str r2, [r1, #0xf00]
	str r2, [r1, #0xf04]
	str r2, [r1, #0xf0c]
	str r2, [r1, #0xf08]
	str r2, [r1, #0xf10]
	str r2, [r1, #0xf14]
	bl ov4_022054BC
	mov sb, #0
	mov r8, sb
	ldr r7, _0220278C ; =0x0221B7AC
	ldr r6, _02202790 ; =0x0221B7B8
	mvn r5, #0
	mov r4, #0x94
	b _02202764
_02202744:
	mov r0, sb
	str r8, [r7, sb, lsl #2]
	bl ov4_022038F4
	mla r0, sb, r4, r6
	mov r1, sb
	mov r2, r5
	bl ov4_02203BD4
	add sb, sb, #1
_02202764:
	cmp sb, #3
	blo _02202744
	bl ov4_02203504
	bl ov4_022055D0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0220277C: .word 0x0221B780
_02202780: .word 0x0221A0E8
_02202784: .word 0x0221DBD8
_02202788: .word 0x02215D08
_0220278C: .word 0x0221B7AC
_02202790: .word 0x0221B7B8
	arm_func_end ov4_02202698

	arm_func_start ov4_02202794
ov4_02202794: ; 0x02202794
	ldr r0, _022027A4 ; =0x0221B780
	mov r1, #0
	str r1, [r0, #0x20]
	bx lr
	; .align 2, 0
_022027A4: .word 0x0221B780
	arm_func_end ov4_02202794

	arm_func_start ov4_022027A8
ov4_022027A8: ; 0x022027A8
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _022028D4 ; =0x0221B780
	ldr r0, [r0, #0x20]
	cmp r0, #3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0xc]
	cmp r0, #2
	cmpne r0, #3
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r4, #0
	ldr r1, _022028D8 ; =0x0221B7AC
	b _02202800
_022027EC:
	ldr r0, [r1, r4, lsl #2]
	cmp r0, r5
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	add r4, r4, #1
_02202800:
	cmp r4, #3
	blo _022027EC
	mov r4, #0
	ldr r1, _022028D8 ; =0x0221B7AC
	b _02202828
_02202814:
	ldr r0, [r1, r4, lsl #2]
	cmp r0, #0
	streq r5, [r1, r4, lsl #2]
	beq _02202830
	add r4, r4, #1
_02202828:
	cmp r4, #3
	blo _02202814
_02202830:
	ldr r1, _022028D4 ; =0x0221B780
	ldr r2, _022028DC ; =0x0221B7B8
	ldr r3, [r1, #0x20]
	mov r0, #0x94
	add r3, r3, #1
	str r3, [r1, #0x20]
	ldr ip, [r1, #4]
	ldr r3, [r5, #8]
	mla r0, r4, r0, r2
	orr r2, ip, r3
	str r2, [r1, #4]
	ldrb r2, [r5, #5]
	mov r1, r4
	bl ov4_02203BD4
	mov r0, r4
	bl ov4_022038F4
	ldr r0, [r5, #0xc]
	cmp r0, #2
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _022028D4 ; =0x0221B780
	ldr r0, [r0, #0x20]
	cmp r0, #1
	bne _022028CC
	bl ov4_02205270
	bl sub_020C3920
	ldr r1, _022028D4 ; =0x0221B780
	mov r2, #0
	strh r0, [r1]
	strh r2, [r1, #0x10]
	strb r2, [r1, #0x12]
	mov r0, #1
	str r0, [r1, #0x14]
	str r2, [r1, #0xf00]
	str r2, [r1, #0xf04]
	str r2, [r1, #0xf0c]
	str r2, [r1, #0xf08]
	str r2, [r1, #0xf10]
	str r2, [r1, #0xf14]
_022028CC:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022028D4: .word 0x0221B780
_022028D8: .word 0x0221B7AC
_022028DC: .word 0x0221B7B8
	arm_func_end ov4_022027A8

	arm_func_start ov4_022028E0
ov4_022028E0: ; 0x022028E0
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, _02202988 ; =0x0221B7AC
	mov r5, r0
	mov r4, #0
_022028F0:
	ldr r0, [ip, r4, lsl #2]
	cmp r0, r5
	bne _02202950
	ldr r1, _0220298C ; =0x0221B7B8
	mov r0, #0x94
	mla r0, r4, r0, r1
	ldr r1, _02202990 ; =0x0221B780
	mov r3, #0
	ldr r2, [r1, #0x20]
	str r3, [ip, r4, lsl #2]
	sub r2, r2, #1
	str r2, [r1, #0x20]
	bl ov4_02203C60
	mov r0, r4
	bl ov4_02203930
	mov r0, r4
	bl ov4_02203544
	ldr r0, _02202990 ; =0x0221B780
	ldr r1, [r5, #8]
	ldr r2, [r0, #4]
	mvn r1, r1
	and r1, r2, r1
	str r1, [r0, #4]
	b _0220295C
_02202950:
	add r4, r4, #1
	cmp r4, #3
	blo _022028F0
_0220295C:
	ldr r0, _02202990 ; =0x0221B780
	ldr r1, [r0, #0x20]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	str r1, [r0, #0x14]
	bl ov4_02205270
	ldr r0, _02202990 ; =0x0221B780
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02202988: .word 0x0221B7AC
_0220298C: .word 0x0221B7B8
_02202990: .word 0x0221B780
	arm_func_end ov4_022028E0

	arm_func_start ov4_02202994
ov4_02202994: ; 0x02202994
	stmfd sp!, {r4, lr}
	ldr r3, _02202A94 ; =0x0221B780
	mov r2, r1
	ldr r1, [r3, #0x24]
	mov ip, #0
	cmp r2, r1
	movne r0, ip
	ldmneia sp!, {r4, pc}
	ldr r1, [r3, #0x20]
	cmp r1, #0
	moveq r0, ip
	ldmeqia sp!, {r4, pc}
	mov r4, ip
	ldr r3, _02202A98 ; =0x0221B7AC
	b _022029F0
_022029D0:
	ldr r1, [r3, r4, lsl #2]
	cmp r1, #0
	beq _022029EC
	ldr r1, [r1, #0xc]
	cmp r1, #2
	moveq ip, #1
	beq _022029F8
_022029EC:
	add r4, r4, #1
_022029F0:
	cmp r4, #3
	blo _022029D0
_022029F8:
	cmp ip, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, _02202A94 ; =0x0221B780
	ldr ip, _02202A9C ; =0x0221BDC0
	ldr r1, [r1, #0xf04]
	ldr r3, _02202AA0 ; =0x5F564354
	tst r1, #1
	ldr r1, _02202A94 ; =0x0221B780
	movne r4, #0
	moveq r4, #0x460
	ldr r1, [r1, #0x1c]
	str r3, [ip, r4]
	cmp r1, #2
	add r4, ip, r4
	blt _02202A44
	add r1, r4, #0x10
	bl sub_020C4C14
	b _02202A4C
_02202A44:
	add r1, r4, #0xc
	bl sub_020C4C14
_02202A4C:
	ldr r0, _02202A94 ; =0x0221B780
	mov r1, #0x40
	ldrh r2, [r0]
	strb r1, [r4, #4]
	add r1, r2, #1
	strh r1, [r0]
	strh r2, [r4, #6]
	bl sub_020C3880
	mov r2, #0x40
	mov r3, #0
	bl sub_020E1ED4
	str r0, [r4, #8]
	ldr r1, _02202A94 ; =0x0221B780
	mov r0, #1
	ldr r2, [r1, #0xf04]
	add r2, r2, #1
	str r2, [r1, #0xf04]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02202A94: .word 0x0221B780
_02202A98: .word 0x0221B7AC
_02202A9C: .word 0x0221BDC0
_02202AA0: .word 0x5F564354
	arm_func_end ov4_02202994

	arm_func_start ov4_02202AA4
ov4_02202AA4: ; 0x02202AA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	ldr r4, _02202CE8 ; =0x0221B7B8
	mov sl, r2
	mov r2, #0x94
	mla r6, sl, r2, r4
	str r0, [sp]
	mov r0, sl
	str r1, [sp, #4]
	mov fp, r3
	mov r7, #1
	bl ov4_02203BC4
	movs r4, r0
	beq _02202CC4
_02202ADC:
	bl sub_020C3880
	mov r8, r0
	mov r0, sl
	mov sb, r1
	bl ov4_02203B20
	movs r5, r0
	beq _02202CAC
	ldr r1, [r5, #0x46c]
	adds r3, r8, #0x34
	ldr r0, [r5, #0x470]
	adc r2, sb, #0
	cmp r0, r2
	cmpeq r1, r3
	bls _02202B90
	ldr r0, [r5, #0x45c]
	cmp r0, #0
	bne _02202B84
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _02202B84
	ldr r0, [r6, #0x20]
	ldr r1, [sp]
	add r0, r0, #1
	str r0, [r6, #0x20]
	ldr r0, [r6, #0x3c]
	ldr r2, [sp, #4]
	ldr r0, [r0, #0x474]
	bl sub_020C4C14
	ldr r0, [r6, #0x3c]
	bl ov4_0220523C
	mov r0, #0
	str r0, [r6, #0x3c]
	cmp fp, #0
	beq _02202B78
	ldrb r0, [r5, #0x10]
	ldr r2, [fp]
	mov r1, #1
	orr r0, r2, r1, lsl r0
	str r0, [fp]
_02202B78:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02202B84:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02202B90:
	ldr r2, _02202CEC ; =0x00008B4C
	adds r2, r1, r2
	adc r0, r0, #0
	cmp sb, r0
	cmpeq r8, r2
	bls _02202BD0
	ldr r2, [r5, #0x18]
	mov r0, r6
	mov r1, r5
	str r2, [r6, #0x58]
	bl ov4_02203C8C
	mov r4, r0
	mov r0, sl
	bl ov4_02203B20
	mov r7, #0
	b _02202CBC
_02202BD0:
	ldr r1, [r6, #0x58]
	ldr r2, [r5, #0x18]
	add r0, r1, #1
	cmp r0, r2
	cmpne r1, #0
	beq _02202C04
	cmp r1, r2
	bhi _02202C04
	ldr r0, [r5, #0x45c]
	cmp r0, #0
	ldreq r0, [r6, #0x14]
	addeq r0, r0, #1
	streq r0, [r6, #0x14]
_02202C04:
	ldr r0, [r5, #0x18]
	cmp r7, #0
	str r0, [r6, #0x58]
	ldrne r0, [r6, #0x70]
	cmpne r0, #0
	beq _02202C44
	mov r0, r6
	mov r1, r5
	bl ov4_02203C8C
	mov r4, r0
	mov r0, sl
	bl ov4_02203B20
	ldr r0, [r6, #0x70]
	sub r0, r0, #1
	str r0, [r6, #0x70]
	b _02202CBC
_02202C44:
	ldr r1, [r5, #0x464]
	ldr r0, [r6, #0x28]
	subs r1, r8, r1
	sub r0, r1, r0
	sub r0, r0, r1
	str r1, [r6, #0x28]
	add r0, r1, r0, lsr #4
	str r0, [r6, #0x2c]
	str r0, [r6, #0]
	ldr r0, [r5, #0x474]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	bl sub_020C4C14
	mov r0, r6
	mov r1, r5
	bl ov4_02203C8C
	cmp fp, #0
	beq _02202CA0
	ldrb r0, [r5, #0x10]
	ldr r2, [fp]
	mov r1, #1
	orr r0, r2, r1, lsl r0
	str r0, [fp]
_02202CA0:
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02202CAC:
	add sp, sp, #8
	str r4, [r6, #8]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02202CBC:
	cmp r4, #0
	bne _02202ADC
_02202CC4:
	ldr r0, [r6, #0x3c]
	cmp r0, #0
	beq _02202CDC
	bl ov4_0220523C
	mov r0, #0
	str r0, [r6, #0x3c]
_02202CDC:
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02202CE8: .word 0x0221B7B8
_02202CEC: .word 0x00008B4C
	arm_func_end ov4_02202AA4

	arm_func_start ov4_02202CF0
ov4_02202CF0: ; 0x02202CF0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	movs r5, r2
	mov r7, r0
	movne r0, #0
	strne r0, [r5]
	ldr r0, _02202E04 ; =0x0221B780
	mov r6, r1
	ldr r1, [r0, #0x24]
	mov r4, #0
	cmp r6, r1
	bne _02202DCC
	ldr r0, [r0, #0x20]
	cmp r0, #0
	beq _02202DCC
	mov r8, r4
_02202D2C:
	mov r0, r7
	mov r1, r6
	mov r2, r8
	mov r3, r5
	bl ov4_02202AA4
	cmp r0, #1
	moveq r4, #1
	beq _02202D58
	add r8, r8, #1
	cmp r8, #3
	blo _02202D2C
_02202D58:
	cmp r4, #0
	beq _02202DB8
	add sb, r8, #1
	cmp sb, #3
	moveq r4, #1
	beq _02202DE0
	bhs _02202DE0
	ldr r8, _02202E08 ; =0x0221B974
_02202D78:
	mov r0, r8
	mov r1, r6
	mov r2, sb
	mov r3, r5
	bl ov4_02202AA4
	cmp r0, #1
	bne _02202DA8
	mov r0, r7
	mov r1, r8
	mov r2, r7
	mov r3, r6
	bl ov4_022058A0
_02202DA8:
	add sb, sb, #1
	cmp sb, #3
	blo _02202D78
	b _02202DE0
_02202DB8:
	mov r1, r7
	mov r2, r6
	mov r0, #0
	bl sub_020C4BB8
	b _02202DE0
_02202DCC:
	mov r1, r7
	mov r2, r6
	mov r0, #0
	bl sub_020C4BB8
	mov r4, #0
_02202DE0:
	ldr r0, _02202E04 ; =0x0221B780
	ldr r0, [r0, #0x18]
	cmp r0, #0
	beq _02202DFC
	mov r0, r7
	mov r1, r6
	bl ov4_0220564C
_02202DFC:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02202E04: .word 0x0221B780
_02202E08: .word 0x0221B974
	arm_func_end ov4_02202CF0

	arm_func_start ov4_02202E0C
ov4_02202E0C: ; 0x02202E0C
	cmp r0, #5
	movge r0, #0
	bxge lr
	ldr r1, _02202E70 ; =0x0221DBD8
	ldr r1, [r1, #0x10]
	cmp r1, #1
	beq _02202E34
	cmp r0, #1
	movls r0, #0
	bxls lr
_02202E34:
	ldr r2, _02202E74 ; =0x02215D09
	ldr r1, _02202E78 ; =0x02215D08
	ldrb ip, [r2, r0, lsl #1]
	ldrb r3, [r1, r0, lsl #1]
	mov r1, #0x44
	ldr r2, _02202E7C ; =0x0221B780
	mla r1, r3, r1, ip
	add r1, r1, #0xc
	str r1, [r2, #0xc]
	str r0, [r2, #0x1c]
	mov r0, #0
	strh r0, [r2, #0x10]
	strb r0, [r2, #0x12]
	mov r0, #1
	bx lr
	; .align 2, 0
_02202E70: .word 0x0221DBD8
_02202E74: .word 0x02215D09
_02202E78: .word 0x02215D08
_02202E7C: .word 0x0221B780
	arm_func_end ov4_02202E0C

	arm_func_start ov4_02202E80
ov4_02202E80: ; 0x02202E80
	stmfd sp!, {r4, lr}
	ldr r1, _02202EA8 ; =0x0221A0E8
	mov r4, r0
	str r4, [r1, #0]
	bl ov4_02205270
	cmp r4, #0
	ldreq r0, _02202EAC ; =0x0221B780
	moveq r1, #1
	streq r1, [r0, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02202EA8: .word 0x0221A0E8
_02202EAC: .word 0x0221B780
	arm_func_end ov4_02202E80

	arm_func_start ov4_02202EB0
ov4_02202EB0: ; 0x02202EB0
	ldr r1, _02202EBC ; =0x0221B780
	str r0, [r1, #0x18]
	bx lr
	; .align 2, 0
_02202EBC: .word 0x0221B780
	arm_func_end ov4_02202EB0

	arm_func_start ov4_02202EC0
ov4_02202EC0: ; 0x02202EC0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r0, _02203120 ; =0x0221B780
	ldr r2, [r0, #0xf04]
	ldr r1, [r0, #0xf00]
	ldr r8, [r0, #0x1c]
	sub r1, r2, r1
	cmp r1, #1
	subhi r1, r2, #1
	strhi r1, [r0, #0xf00]
	movhi r1, #1
	cmp r1, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _02203120 ; =0x0221B780
	ldr r0, [r0, #0xf00]
	tst r0, #1
	movne r1, #0
	moveq r1, #0x460
	ldr r0, _02203124 ; =0x0221BDC0
	cmp r8, #2
	add r5, r0, r1
	ldr r1, _02203120 ; =0x0221B780
	add r4, r5, #0xc
	addge r4, r4, #4
	ldr r1, [r1, #0x24]
	mov r0, r4
	bl ov4_022054E4
	ldr r1, _02203128 ; =0x040002B0
	mov r2, #0
	mov r6, r0
	strh r2, [r1]
	str r6, [r1, #8]
_02202F48:
	ldrh r0, [r1]
	tst r0, #0x8000
	bne _02202F48
	ldr r0, _02203120 ; =0x0221B780
	ldr r2, _0220312C ; =0x040002B4
	ldr r1, [r0, #0x18]
	ldr r7, [r2, #0]
	cmp r1, #0
	beq _02202F7C
	ldr r1, [r0, #0x24]
	mov r0, r4
	mov r2, r7
	bl ov4_02205880
_02202F7C:
	ldr r0, _02203130 ; =0x0221A0E8
	strb r8, [r5, #5]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _02202FEC
	mov r0, r6
	mov r1, r7
	mov r2, #0
	bl ov4_022052DC
	ldr r1, _02203120 ; =0x0221B780
	cmp r0, #0
	str r0, [r1, #0x28]
	beq _02202FC8
	cmp r0, #1
	beq _02202FE0
	cmp r0, #3
	moveq r0, #0x41
	streqb r0, [r5, #4]
	b _02202FEC
_02202FC8:
	ldr r2, [r1, #0xf00]
	add sp, sp, #4
	add r2, r2, #1
	str r2, [r1, #0xf00]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02202FE0:
	ldrb r0, [r5, #5]
	orr r0, r0, #0x80
	strb r0, [r5, #5]
_02202FEC:
	ldr r0, _02203130 ; =0x0221A0E8
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02203020
	ldr r0, _02203120 ; =0x0221B780
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02203020
	ldrb r2, [r5, #5]
	mov r1, #0
	str r1, [r0, #8]
	orr r0, r2, #0x80
	strb r0, [r5, #5]
_02203020:
	ldr r0, _02203120 ; =0x0221B780
	ldr r1, [r0, #0x14]
	cmp r1, #0
	beq _02203044
	ldrb r2, [r5, #5]
	mov r1, #0
	str r1, [r0, #0x14]
	orr r0, r2, #0x80
	strb r0, [r5, #5]
_02203044:
	cmp r8, #2
	blt _0220308C
	ldrb r0, [r5, #5]
	tst r0, #0x80
	beq _02203068
	ldr r0, _02203120 ; =0x0221B780
	mov r1, #0
	strh r1, [r0, #0x10]
	strb r1, [r0, #0x12]
_02203068:
	ldr r0, _02203120 ; =0x0221B780
	str r8, [sp]
	ldr r2, [r0, #0x24]
	ldr r3, _02203134 ; =0x0221B790
	mov r1, r4
	sub r0, r4, #4
	mov r2, r2, lsr #1
	bl ov4_02202638
	b _022030D0
_0220308C:
	cmp r8, #1
	bne _022030B0
	ldr r1, _02203120 ; =0x0221B780
	mov r0, r4
	ldr r2, [r1, #0x24]
	mov r1, r4
	mov r2, r2, lsr #1
	bl ov4_02203798
	b _022030D0
_022030B0:
	cmp r8, #0
	bne _022030D0
	ldr r1, _02203120 ; =0x0221B780
	mov r0, r4
	ldr r2, [r1, #0x24]
	mov r1, r4
	mov r2, r2, lsr #1
	bl ov4_02203898
_022030D0:
	ldr r1, _02203120 ; =0x0221B780
	ldr r0, _02203138 ; =0x0221DBD8
	ldr r3, [r1, #4]
	mov r2, #1
	str r3, [r1, #0xf0c]
	ldrb r0, [r0]
	mvn r0, r2, lsl r0
	and r0, r3, r0
	str r0, [r1, #0xf0c]
	bl sub_020D2FE4
	sub r0, r0, #1
	ldr r1, _02203120 ; =0x0221B780
	cmp r0, #7
	str r0, [r1, #0xf14]
	movgt r0, #0
	movle r2, #0
	movle r0, r5
	strle r2, [r1, #0xf10]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02203120: .word 0x0221B780
_02203124: .word 0x0221BDC0
_02203128: .word 0x040002B0
_0220312C: .word 0x040002B4
_02203130: .word 0x0221A0E8
_02203134: .word 0x0221B790
_02203138: .word 0x0221DBD8
	arm_func_end ov4_02202EC0

	arm_func_start ov4_0220313C
ov4_0220313C: ; 0x0220313C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _02203318 ; =0x0221B780
	mov sl, r0
	ldr r0, [r4, #0x20]
	ldr r7, [sp, #0x28]
	mov sb, r1
	mov r8, r2
	mov fp, r3
	mov r5, #0
	cmp r0, #0
	moveq r0, r5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _0220331C ; =0x0221B7B8
	mov r2, r5
_02203174:
	ldr r0, [r1, #0x38]
	cmp sl, r0
	bne _02203190
	ldr r1, _0220331C ; =0x0221B7B8
	mov r0, #0x94
	mla r5, r2, r0, r1
	b _022031A0
_02203190:
	add r2, r2, #1
	cmp r2, #3
	add r1, r1, #0x94
	blo _02203174
_022031A0:
	cmp r5, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sb, #4]
	cmp r0, #0x41
	bne _022031D4
	ldrh r2, [sb, #6]
	mov r0, #0
	mov r1, #1
	str r2, [r5, #0x30]
	str r0, [r5, #0x4c]
	str r1, [r5, #0x6c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022031D4:
	cmp r0, #0x40
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [sb, #5]
	and r6, r0, #0x7f
	cmp r6, #5
	str r6, [r5, #0x24]
	movge r0, #0
	ldmgeia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _02203320 ; =0x02215D09
	ldr r0, _02203324 ; =0x02215D08
	ldrb r2, [r1, r6, lsl #1]
	ldrb r1, [r0, r6, lsl #1]
	mov r0, #0x44
	mla r0, r1, r0, r2
	add r0, r0, #0xc
	cmp r8, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	movne r0, #1
	movne r1, r0, lsl sl
	ldr r0, _02203318 ; =0x0221B780
	moveq r1, #1
	ldr r0, [r0, #4]
	tst r0, r1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov4_02205208
	movs r4, r0
	bne _02203288
	ldr r0, [r5, #0x34]
	bl ov4_02203930
	ldr r0, [r5, #0x34]
	bl ov4_02203544
	bl ov4_02205208
	movs r4, r0
	bne _0220327C
	bl ov4_022039A0
	bl ov4_022035A0
	bl ov4_02205208
	mov r4, r0
_0220327C:
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02203288:
	add r0, r4, #0x5c
	add r0, r0, #0x400
	sub r2, r8, #0xc
	sub r1, r0, r2
	add r0, sb, #0xc
	str r1, [sp]
	bl sub_020C4DB0
	ldr r0, [r5, #0x34]
	sub r1, r8, #0xc
	strb r0, [r4, #0x11]
	ldr r0, [sp]
	str r6, [r4, #0xc]
	str r0, [r4, #0x474]
	str r1, [r4, #0x14]
	str fp, [r4, #0x464]
	str r7, [r4, #0x468]
	strb sl, [r4, #0x10]
	ldrb r2, [sb, #5]
	mov r0, r5
	mov r1, r4
	and r2, r2, #0x80
	str r2, [r4, #0x45c]
	ldr r2, [sb, #8]
	str r2, [r4, #0x460]
	ldrh r2, [sb, #6]
	str r2, [r4, #0x18]
	bl ov4_02203DB0
	cmp r0, #0
	mov r0, r4
	bne _0220330C
	bl ov4_0220523C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0220330C:
	bl ov4_0220360C
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02203318: .word 0x0221B780
_0220331C: .word 0x0221B7B8
_02203320: .word 0x02215D09
_02203324: .word 0x02215D08
	arm_func_end ov4_0220313C

	arm_func_start ov4_02203328
ov4_02203328: ; 0x02203328
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	bl ov4_02203694
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl sub_020C3D98
	ldrb r6, [r4, #0x11]
	mov r7, r0
	mov r0, r6
	bl ov4_022036A4
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _022033E8
_02203360:
	mov r0, r6
	bl ov4_022036B4
	mov r8, r0
	ldr r3, [r8, #0xc]
	cmp r3, #2
	blt _0220338C
	ldr r0, [r8, #0x474]
	ldr r2, [r8, #0x14]
	add r1, r8, #0x1c
	bl ov4_022025CC
	b _022033B0
_0220338C:
	cmp r3, #1
	ldr r0, [r8, #0x474]
	ldr r2, [r8, #0x14]
	bne _022033A8
	add r1, r8, #0x1c
	bl ov4_02203844
	b _022033B0
_022033A8:
	add r1, r8, #0x1c
	bl ov4_022038C4
_022033B0:
	add r1, r8, #0x1c
	mov r0, r8
	str r1, [r8, #0x474]
	bl ov4_02203704
	ldrb r1, [r8, #0x11]
	mov r0, r8
	bl ov4_02203A20
	cmp r0, #0
	bge _022033DC
	mov r0, r8
	bl ov4_0220523C
_022033DC:
	add r4, r4, #1
	cmp r4, r5
	blt _02203360
_022033E8:
	mov r0, r7
	bl sub_020C3DAC
	mov r0, r5
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_02203328

	arm_func_start ov4_022033F8
ov4_022033F8: ; 0x022033F8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _022034F8 ; =0x0221B780
	ldr r0, [r1, #0x20]
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r1, #0xf08]
	cmp r0, #0
	bne _02203440
	bl ov4_02202EC0
	ldr r1, _022034F8 ; =0x0221B780
	cmp r0, #0
	str r0, [r1, #0xf08]
	ldrne r0, [r1, #0x18]
	cmpne r0, #0
	movne r0, #0
	moveq r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02203440:
	ldr r0, _022034FC ; =0x0221DBD8
	mov r5, #1
	ldr r0, [r0, #0x10]
	cmp r0, #2
	bne _02203474
	ldr r3, [r1, #0xf10]
	ldr r0, _02203500 ; =0x02215D12
	add r2, r3, #1
	str r2, [r1, #0xf10]
	ldr r1, [r1, #0xf14]
	add r1, r1, r1, lsl #1
	add r0, r0, r1
	ldrb r5, [r3, r0]
_02203474:
	mov r4, #0
	mov r7, #-0x80000000
	ldr r6, _022034F8 ; =0x0221B780
	b _022034E8
_02203484:
	ldr r1, [r6, #0xf0c]
	mov r2, r1
	clz r2, r2
	cmp r2, #0x20
	beq _022034F0
	mvn r0, r7, lsr r2
	and r0, r1, r0
	str r0, [r6, #0xf0c]
	rsb r0, r2, #0x1f
	ldr r1, [r6, #0xf08]
	ldr r2, [r6, #0xc]
	and r0, r0, #0xff
	bl ov4_021E4C98
	ldr r0, [r6, #0xf0c]
	cmp r0, #0
	bne _022034E4
	ldr r0, _022034F8 ; =0x0221B780
	mov r1, #0
	ldr r2, [r0, #0xf00]
	add r2, r2, #1
	str r2, [r0, #0xf00]
	str r1, [r0, #0xf08]
	str r1, [r0, #0xf0c]
	b _022034F0
_022034E4:
	add r4, r4, #1
_022034E8:
	cmp r4, r5
	blt _02203484
_022034F0:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_022034F8: .word 0x0221B780
_022034FC: .word 0x0221DBD8
_02203500: .word 0x02215D12
	arm_func_end ov4_022033F8

	.rodata


	.global Unk_ov4_02215D08
Unk_ov4_02215D08: ; 0x02215D08
	.incbin "incbin/overlay4_rodata.bin", 0x4A0, 0x4AA - 0x4A0

	.global Unk_ov4_02215D12
Unk_ov4_02215D12: ; 0x02215D12
	.incbin "incbin/overlay4_rodata.bin", 0x4AA, 0x15



	.data


	.global Unk_ov4_0221A0E8
Unk_ov4_0221A0E8: ; 0x0221A0E8
	.incbin "incbin/overlay4_data.bin", 0x4268, 0x4



	.bss


	.global Unk_ov4_0221B780
Unk_ov4_0221B780: ; 0x0221B780
	.space 0x4

	.global Unk_ov4_0221B784
Unk_ov4_0221B784: ; 0x0221B784
	.space 0x4

	.global Unk_ov4_0221B788
Unk_ov4_0221B788: ; 0x0221B788
	.space 0x4

	.global Unk_ov4_0221B78C
Unk_ov4_0221B78C: ; 0x0221B78C
	.space 0x4

	.global Unk_ov4_0221B790
Unk_ov4_0221B790: ; 0x0221B790
	.space 0x4

	.global Unk_ov4_0221B794
Unk_ov4_0221B794: ; 0x0221B794
	.space 0x4

	.global Unk_ov4_0221B798
Unk_ov4_0221B798: ; 0x0221B798
	.space 0x4

	.global Unk_ov4_0221B79C
Unk_ov4_0221B79C: ; 0x0221B79C
	.space 0x4

	.global Unk_ov4_0221B7A0
Unk_ov4_0221B7A0: ; 0x0221B7A0
	.space 0x4

	.global Unk_ov4_0221B7A4
Unk_ov4_0221B7A4: ; 0x0221B7A4
	.space 0x4

	.global Unk_ov4_0221B7A8
Unk_ov4_0221B7A8: ; 0x0221B7A8
	.space 0x4

	.global Unk_ov4_0221B7AC
Unk_ov4_0221B7AC: ; 0x0221B7AC
	.space 0xC

	.global Unk_ov4_0221B7B8
Unk_ov4_0221B7B8: ; 0x0221B7B8
	.space 0x1BC

	.global Unk_ov4_0221B974
Unk_ov4_0221B974: ; 0x0221B974
	.space 0x44C

	.global Unk_ov4_0221BDC0
Unk_ov4_0221BDC0: ; 0x0221BDC0
	.space 0x8D8

