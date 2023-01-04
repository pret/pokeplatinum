	.include "macros/function.inc"
	.include "overlay018/ov18_022392CC.inc"

	

	.text


	arm_func_start ov18_022392CC
ov18_022392CC: ; 0x022392CC
	ldr r0, _022392E8 ; =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_022392E8: .word 0x027FFFA8
	arm_func_end ov18_022392CC

	arm_func_start ov18_022392EC
ov18_022392EC: ; 0x022392EC
	stmfd sp!, {r3, lr}
	ldr r0, _02239320 ; =0x02253338
	mov r1, #0
	strb r1, [r0]
	bl ov18_02239328
	bl ov18_0222BC1C
	mov r0, #0x25
	bl ov18_0222B7C8
	mov r0, #1
	bl ov18_0222AD34
	ldr r0, _02239324 ; =ov18_022393A8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239320: .word Unk_ov18_02253338
_02239324: .word ov18_022393A8
	arm_func_end ov18_022392EC

	arm_func_start ov18_02239328
ov18_02239328: ; 0x02239328
	stmfd sp!, {r3, lr}
	ldr r0, _02239398 ; =0x0224A328
	ldr r1, _0223939C ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _022393A0 ; =0x04001008
	ldr r1, _022393A4 ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239398: .word 0x0224A328
_0223939C: .word GX_LoadBG2Scr
_022393A0: .word 0x04001008
_022393A4: .word 0x0400000A
	arm_func_end ov18_02239328

	arm_func_start ov18_022393A8
ov18_022393A8: ; 0x022393A8
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022393D8 ; =ov18_022393DC
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022393D8: .word ov18_022393DC
	arm_func_end ov18_022393A8

	arm_func_start ov18_022393DC
ov18_022393DC: ; 0x022393DC
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _02239404 ; =ov18_02239408
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239404: .word ov18_02239408
	arm_func_end ov18_022393DC

	arm_func_start ov18_02239408
ov18_02239408: ; 0x02239408
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _0223942C ; =ov18_02239430
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223942C: .word ov18_02239430
	arm_func_end ov18_02239408

	arm_func_start ov18_02239430
ov18_02239430: ; 0x02239430
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl OS_Sleep
	bl ov18_02239614
	bl ov18_02239450
	bl ov18_02239488
	bl ov18_0223948C
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02239430

	arm_func_start ov18_02239450
ov18_02239450: ; 0x02239450
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02239470
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
_02239470:
	bl ov18_022392CC
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02239450

	arm_func_start ov18_02239488
ov18_02239488: ; 0x02239488
	bx lr
	arm_func_end ov18_02239488

	arm_func_start ov18_0223948C
ov18_0223948C: ; 0x0223948C
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _022394B4 ; =ov18_022394B8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022394B4: .word ov18_022394B8
	arm_func_end ov18_0223948C

	arm_func_start ov18_022394B8
ov18_022394B8: ; 0x022394B8
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022394D4 ; =ov18_022394D8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022394D4: .word ov18_022394D8
	arm_func_end ov18_022394B8

	arm_func_start ov18_022394D8
ov18_022394D8: ; 0x022394D8
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02239544 ; =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239500
	bl ov18_0222B004
_02239500:
	ldr r0, _02239544 ; =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239524
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_02239524:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02239548 ; =ov18_0223954C
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239544: .word Unk_ov18_02253338
_02239548: .word ov18_0223954C
	arm_func_end ov18_022394D8

	arm_func_start ov18_0223954C
ov18_0223954C: ; 0x0223954C
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02239608 ; =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239580
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_02239580:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02239608 ; =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _022395B8
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_022395B8:
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244CD8
	ldr r0, _02239608 ; =0x02253338
	ldrb r0, [r0]
	cmp r0, #0
	bne _022395F0
	bl ov18_0222FDA8
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _0223960C ; =ov18_0223B3F4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_022395F0:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _02239610 ; =ov18_02239704
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239608: .word Unk_ov18_02253338
_0223960C: .word ov18_0223B3F4
_02239610: .word ov18_02239704
	arm_func_end ov18_0223954C

	arm_func_start ov18_02239614
ov18_02239614: ; 0x02239614
	stmfd sp!, {r3, lr}
	bl ov18_0222FDCC
	cmp r0, #2
	beq _02239630
	cmp r0, #4
	beq _02239648
	ldmia sp!, {r3, pc}
_02239630:
	ldr r1, _0223968C ; =0x02253338
	mov r2, #1
	ldr r0, _02239690 ; =ov18_022394B8
	strb r2, [r1]
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02239648:
	ldr r0, _0223968C ; =0x02253338
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #9
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _02239694 ; =ov18_02239698
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223968C: .word Unk_ov18_02253338
_02239690: .word ov18_022394B8
_02239694: .word ov18_02239698
	arm_func_end ov18_02239614

	arm_func_start ov18_02239698
ov18_02239698: ; 0x02239698
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _022396C0 ; =ov18_022396C4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022396C0: .word ov18_022396C4
	arm_func_end ov18_02239698

	arm_func_start ov18_022396C4
ov18_022396C4: ; 0x022396C4
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _022396E0 ; =ov18_022394B8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022396E0: .word ov18_022394B8
	arm_func_end ov18_022396C4

	arm_func_start ov18_022396E4
ov18_022396E4: ; 0x022396E4
	ldr r0, _02239700 ; =0x027FFFA8
	ldrh r0, [r0]
	and r0, r0, #0x8000
	movs r0, r0, asr #0xf
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_02239700: .word 0x027FFFA8
	arm_func_end ov18_022396E4

	arm_func_start ov18_02239704
ov18_02239704: ; 0x02239704
	stmfd sp!, {r3, lr}
	ldr r0, _02239738 ; =0x0225333C
	mov r1, #0
	strb r1, [r0]
	bl ov18_02239740
	bl ov18_0222BC1C
	mov r0, #0x2a
	bl ov18_0222B7C8
	mov r0, #2
	bl ov18_0222AD34
	ldr r0, _0223973C ; =ov18_022397C0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239738: .word Unk_ov18_0225333C
_0223973C: .word ov18_022397C0
	arm_func_end ov18_02239704

	arm_func_start ov18_02239740
ov18_02239740: ; 0x02239740
	stmfd sp!, {r3, lr}
	ldr r0, _022397B0 ; =0x0224A33C
	ldr r1, _022397B4 ; =GX_LoadBG2Scr
	bl ov18_0222B700
	ldr r3, _022397B8 ; =0x04001008
	ldr r1, _022397BC ; =0x0400000A
	ldrh r0, [r3]
	sub r2, r3, #0x1000
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3]
	ldrh r0, [r3, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r3, #2]
	ldrh r0, [r2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r2]
	ldrh r0, [r1]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1]
	ldrh r0, [r1, #2]
	bic r0, r0, #3
	orr r0, r0, #3
	strh r0, [r1, #2]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022397B0: .word 0x0224A33C
_022397B4: .word GX_LoadBG2Scr
_022397B8: .word 0x04001008
_022397BC: .word 0x0400000A
	arm_func_end ov18_02239740

	arm_func_start ov18_022397C0
ov18_022397C0: ; 0x022397C0
	stmfd sp!, {r3, lr}
	mov r0, #2
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	mov r0, #0
	mov r1, #0x15
	bl ov18_02244C84
	ldr r0, _022397F0 ; =ov18_022397F4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022397F0: .word ov18_022397F4
	arm_func_end ov18_022397C0

	arm_func_start ov18_022397F4
ov18_022397F4: ; 0x022397F4
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	bl ov18_0222B790
	ldr r0, _0223981C ; =ov18_02239820
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223981C: .word ov18_02239820
	arm_func_end ov18_022397F4

	arm_func_start ov18_02239820
ov18_02239820: ; 0x02239820
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	mvn r1, #1
	cmp r0, r1
	ldmeqia sp!, {r3, pc}
	bl ov18_0222B0A8
	ldr r0, _02239844 ; =ov18_02239848
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239844: .word ov18_02239848
	arm_func_end ov18_02239820

	arm_func_start ov18_02239848
ov18_02239848: ; 0x02239848
	stmfd sp!, {r3, lr}
	mov r0, #0xa
	bl OS_Sleep
	bl ov18_02239A10
	bl ov18_02239868
	bl ov18_022398A0
	bl ov18_022398A4
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02239848

	arm_func_start ov18_02239868
ov18_02239868: ; 0x02239868
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl ov18_02245470
	cmp r0, #0
	beq _02239888
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
_02239888:
	bl ov18_022396E4
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	mov r0, #0
	bl ov18_0222B048
	ldmia sp!, {r3, pc}
	arm_func_end ov18_02239868

	arm_func_start ov18_022398A0
ov18_022398A0: ; 0x022398A0
	bx lr
	arm_func_end ov18_022398A0

	arm_func_start ov18_022398A4
ov18_022398A4: ; 0x022398A4
	stmfd sp!, {r3, lr}
	bl ov18_0222B034
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0223E9FC
	mov r0, #7
	bl ov18_0223E994
	ldr r0, _022398CC ; =ov18_022398D0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022398CC: .word ov18_022398D0
	arm_func_end ov18_022398A4

	arm_func_start ov18_022398D0
ov18_022398D0: ; 0x022398D0
	stmfd sp!, {r3, lr}
	bl ov18_0222B0C0
	mov r0, #8
	bl ov18_02244394
	ldr r0, _022398EC ; =ov18_022398F0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022398EC: .word ov18_022398F0
	arm_func_end ov18_022398D0

	arm_func_start ov18_022398F0
ov18_022398F0: ; 0x022398F0
	stmfd sp!, {r3, lr}
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl ov18_0222B004
	ldr r0, _0223994C ; =0x0225333C
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223992C
	mov r1, #1
	mov r2, r1
	mov r0, #3
	mov r3, #8
	bl ov18_02244194
_0223992C:
	mov r0, #3
	mov r1, #0
	mov r2, #0x15
	mov r3, #8
	bl ov18_02244194
	ldr r0, _02239950 ; =ov18_02239954
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223994C: .word Unk_ov18_0225333C
_02239950: .word ov18_02239954
	arm_func_end ov18_022398F0

	arm_func_start ov18_02239954
ov18_02239954: ; 0x02239954
	stmfd sp!, {r3, lr}
	mov r0, #0
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02239A04 ; =0x0225333C
	ldrb r0, [r0]
	cmp r0, #0
	bne _02239988
	mov r0, #1
	bl ov18_02244170
	cmp r0, #0
	ldmneia sp!, {r3, pc}
_02239988:
	bl ov18_0222B07C
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov18_0222AE04
	mov r0, #0
	bl ov18_022448E0
	ldr r0, _02239A04 ; =0x0225333C
	ldrb r0, [r0]
	cmp r0, #0
	bne _022399C0
	bl ov18_0222B668
	mov r0, #1
	mov r1, r0
	bl ov18_02244CD8
_022399C0:
	bl ov18_0222FDA8
	ldr r0, _02239A04 ; =0x0225333C
	ldrb r0, [r0]
	cmp r0, #0
	bne _022399EC
	mov r0, #2
	mov r1, #1
	bl ov18_0222F6D4
	ldr r0, _02239A08 ; =ov18_0223B3F4
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_022399EC:
	mov r0, #0
	mov r1, r0
	bl ov18_0222F6D4
	ldr r0, _02239A0C ; =ov18_02239B34
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239A04: .word Unk_ov18_0225333C
_02239A08: .word ov18_0223B3F4
_02239A0C: .word ov18_02239B34
	arm_func_end ov18_02239954

	arm_func_start ov18_02239A10
ov18_02239A10: ; 0x02239A10
	stmfd sp!, {r3, lr}
	bl ov18_0222FDCC
	cmp r0, #3
	beq _02239A34
	cmp r0, #4
	beq _02239A54
	cmp r0, #5
	beq _02239A98
	ldmia sp!, {r3, pc}
_02239A34:
	ldr r0, _02239ADC ; =0x0225333C
	mov r1, #1
	strb r1, [r0]
	bl ov18_0223E9FC
	bl ov18_0222FE88
	ldr r0, _02239AE0 ; =ov18_022398D0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02239A54:
	ldr r0, _02239ADC ; =0x0225333C
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #9
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xd
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _02239AE4 ; =ov18_02239AE8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
_02239A98:
	ldr r0, _02239ADC ; =0x0225333C
	mov r1, #0
	strb r1, [r0]
	bl ov18_0223E9FC
	mov r0, #0x12
	bl ov18_0223E994
	mov r1, #1
	mov ip, #0
	mov r2, r1
	sub r3, r1, #2
	mov r0, #0xe
	str ip, [sp]
	bl ov18_0223FC48
	bl ov18_0222B0C0
	ldr r0, _02239AE4 ; =ov18_02239AE8
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239ADC: .word Unk_ov18_0225333C
_02239AE0: .word ov18_022398D0
_02239AE4: .word ov18_02239AE8
	arm_func_end ov18_02239A10

	arm_func_start ov18_02239AE8
ov18_02239AE8: ; 0x02239AE8
	stmfd sp!, {r3, lr}
	bl ov18_0223FFB8
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #6
	bl ov18_0223E994
	bl ov18_0223FF74
	ldr r0, _02239B10 ; =ov18_02239B14
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239B10: .word ov18_02239B14
	arm_func_end ov18_02239AE8

	arm_func_start ov18_02239B14
ov18_02239B14: ; 0x02239B14
	stmfd sp!, {r3, lr}
	bl ov18_0223FFCC
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _02239B30 ; =ov18_022398D0
	bl ov18_0222F6C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239B30: .word ov18_022398D0
	arm_func_end ov18_02239B14

	.data


	.global Unk_ov18_0224A328
Unk_ov18_0224A328: ; 0x0224A328
	.incbin "incbin/overlay18_data.bin", 0xBC8, 0xBDC - 0xBC8

	.global Unk_ov18_0224A33C
Unk_ov18_0224A33C: ; 0x0224A33C
	.incbin "incbin/overlay18_data.bin", 0xBDC, 0x14



	.bss


	.global Unk_ov18_02253338
Unk_ov18_02253338: ; 0x02253338
	.space 0x4

	.global Unk_ov18_0225333C
Unk_ov18_0225333C: ; 0x0225333C
	.space 0x4

