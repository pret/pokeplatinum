	.include "macros/function.inc"
	.include "include/ov4_02211E7C.inc"

	

	.text


	arm_func_start ov4_02211E7C
ov4_02211E7C: ; 0x02211E7C
	b _02211E84
_02211E80:
	sub r1, r1, #1
_02211E84:
	cmp r1, #0
	beq _02211E9C
	add r2, r0, r1, lsl #1
	ldrh r2, [r2, #-2]
	cmp r2, #0
	beq _02211E80
_02211E9C:
	mov r0, r1
	bx lr
	arm_func_end ov4_02211E7C

	arm_func_start ov4_02211EA4
ov4_02211EA4: ; 0x02211EA4
	stmfd sp!, {r3, lr}
	sub r2, r1, #1
	mov r2, r2, lsl #1
	ldrh r2, [r0, r2]
	tst r2, #0x8000
	mvnne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov4_02211E7C
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_02211EA4

	arm_func_start ov4_02211ED4
ov4_02211ED4: ; 0x02211ED4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl ov4_02211E7C
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl ov4_02211E7C
	cmp r4, r0
	movlt r4, r0
	cmp r4, r5
	addne r4, r4, #1
	mov ip, #0
	mov r3, ip
	cmp r4, #0
	ble _02211F4C
_02211F24:
	mov r2, r3, lsl #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	cmp r3, r4
	add r0, r1, r0
	add r0, ip, r0
	strh r0, [r8, r2]
	mov ip, r0, lsr #0x10
	blt _02211F24
_02211F4C:
	cmp r8, r7
	cmpne r8, r6
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_02211ED4

	arm_func_start ov4_02211F70
ov4_02211F70: ; 0x02211F70
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _02211FA4
_02211F80:
	mov lr, r4, lsl #1
	ldrh ip, [r1, lr]
	add r2, r2, ip
	strh r2, [r0, lr]
	movs r2, r2, lsr #0x10
	beq _02211FA4
	add r4, r4, #1
	cmp r4, r3
	blt _02211F80
_02211FA4:
	cmp r0, r1
	ldmeqia sp!, {r4, pc}
	add r4, r4, #1
	cmp r4, r3
	ldmgeia sp!, {r4, pc}
_02211FB8:
	mov ip, r4, lsl #1
	ldrh r2, [r1, ip]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, ip]
	blt _02211FB8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02211F70

	arm_func_start ov4_02211FD4
ov4_02211FD4: ; 0x02211FD4
	stmfd sp!, {r3, lr}
	mov r3, r1
	cmp r3, #0
	mov ip, #0
	ble _02212004
_02211FE8:
	mov r2, ip, lsl #1
	ldrh r1, [r0, r2]
	add ip, ip, #1
	cmp ip, r3
	mvn r1, r1
	strh r1, [r0, r2]
	blt _02211FE8
_02212004:
	mov r1, r0
	mov r2, #1
	bl ov4_02211F70
	ldmia sp!, {r3, pc}
	arm_func_end ov4_02211FD4

	arm_func_start ov4_02212014
ov4_02212014: ; 0x02212014
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r5, r3
	mov r8, r0
	mov r6, r2
	mov r0, r7
	mov r1, r5
	bl ov4_02211E7C
	mov r4, r0
	mov r0, r6
	mov r1, r5
	bl ov4_02211E7C
	cmp r4, r0
	movlt r4, r0
	mov ip, #0
	cmp r4, r5
	addne r4, r4, #1
	mov r3, ip
	b _02212080
_02212060:
	mov r2, r3, lsl #1
	ldrh r1, [r7, r2]
	ldrh r0, [r6, r2]
	add r3, r3, #1
	sub r0, r1, r0
	add r0, ip, r0
	strh r0, [r8, r2]
	mov ip, r0, asr #0x10
_02212080:
	cmp r3, r4
	blt _02212060
	cmp r3, r5
	bge _02212098
	cmp ip, #0
	bne _02212060
_02212098:
	cmp r8, r7
	cmpne r8, r6
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	sub r1, r5, r3
	add r0, r8, r3, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_02212014

	arm_func_start ov4_022120BC
ov4_022120BC: ; 0x022120BC
	stmfd sp!, {r4, lr}
	cmp r3, #0
	mov r4, #0
	ble _022120F4
_022120CC:
	mov lr, r4, lsl #1
	ldrh ip, [r1, lr]
	sub ip, ip, r2
	mov r2, ip, lsr #0x10
	strh ip, [r0, lr]
	ands r2, r2, #1
	beq _022120F4
	add r4, r4, #1
	cmp r4, r3
	blt _022120CC
_022120F4:
	cmp r0, r1
	ldmeqia sp!, {r4, pc}
	add r4, r4, #1
	cmp r4, r3
	ldmgeia sp!, {r4, pc}
_02212108:
	mov ip, r4, lsl #1
	ldrh r2, [r1, ip]
	add r4, r4, #1
	cmp r4, r3
	strh r2, [r0, ip]
	blt _02212108
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022120BC

	arm_func_start ov4_02212124
ov4_02212124: ; 0x02212124
	subs ip, r2, #1
	bmi _02212154
_0221212C:
	mov r2, ip, lsl #1
	ldrh r3, [r1, r2]
	ldrh r2, [r0, r2]
	cmp r2, r3
	movhi r0, #1
	bxhi lr
	mvnlo r0, #0
	bxlo lr
	subs ip, ip, #1
	bpl _0221212C
_02212154:
	mov r0, #0
	bx lr
	arm_func_end ov4_02212124

	arm_func_start ov4_0221215C
ov4_0221215C: ; 0x0221215C
	stmfd sp!, {r3, lr}
	b _0221217C
_02212164:
	mov lr, r2, lsl #1
	ldrh ip, [r0, lr]
	add r2, r2, #1
	add r1, r1, ip
	strh r1, [r0, lr]
	mov r1, r1, lsr #0x10
_0221217C:
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	cmp r2, r3
	blt _02212164
	ldmia sp!, {r3, pc}
	arm_func_end ov4_0221215C

	arm_func_start ov4_02212190
ov4_02212190: ; 0x02212190
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r8, r3
	mov sl, r1
	mov sb, r2
	mov r2, r8, lsl #1
	mov r1, #0
	str r0, [sp]
	bl MI_CpuFill8
	mov r0, sl
	mov r1, r8
	bl ov4_02211E7C
	mov fp, r0
	mov r0, sb
	mov r1, r8
	bl ov4_02211E7C
	str r0, [sp, #4]
	cmp r0, #0
	mov r5, #0
	addle sp, sp, #8
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022121E4:
	mov r6, #0
	sub r7, r8, r5
	mov r4, r5, lsl #1
	b _02212218
_022121F4:
	mov r0, r6, lsl #1
	ldrh r3, [sl, r0]
	ldrh r1, [sb, r4]
	ldr r0, [sp]
	add r2, r5, r6
	mul r1, r3, r1
	mov r3, r8
	bl ov4_0221215C
	add r6, r6, #1
_02212218:
	cmp r6, fp
	cmplt r6, r7
	blt _022121F4
	ldr r0, [sp, #4]
	add r5, r5, #1
	cmp r5, r0
	blt _022121E4
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_02212190

	arm_func_start ov4_0221223C
ov4_0221223C: ; 0x0221223C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r1
	mov r4, r3
	mov r7, r0
	mov r0, r6
	mov r1, r4
	mov r5, r2
	bl ov4_02211E7C
	mov r3, #0
	mov ip, r3
	cmp r0, #0
	ble _0221228C
_0221226C:
	mov r2, ip, lsl #1
	ldrh r1, [r6, r2]
	add ip, ip, #1
	cmp ip, r0
	mla r1, r5, r1, r3
	strh r1, [r7, r2]
	mov r3, r1, lsr #0x10
	blt _0221226C
_0221228C:
	cmp ip, r4
	movlt r0, ip, lsl #1
	addlt ip, ip, #1
	sub r1, r4, ip
	strlth r3, [r7, r0]
	mov r2, r1, lsl #1
	add r0, r7, ip, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_0221223C

	arm_func_start ov4_022122B4
ov4_022122B4: ; 0x022122B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	mov r8, r2
	mov sl, r0
	mov r0, sb
	mov r1, r8
	bl ov4_02211E7C
	mov fp, r0
	cmp r8, fp, lsl #1
	mov r0, fp, lsl #1
	ble _022122F4
	sub r1, r8, r0
	add r0, sl, r0, lsl #1
	mov r2, r1, lsl #1
	mov r1, #0
	bl MI_CpuFill8
_022122F4:
	cmp fp, #0
	mov r4, #0
	ble _02212348
	mov r5, r4
	sub r2, r8, #1
_02212308:
	cmp r5, r8
	bge _02212348
	mov r0, r4, lsl #1
	ldrh r3, [sb, r0]
	mov r0, r5, lsl #1
	cmp r5, r2
	mul r1, r3, r3
	strh r1, [sl, r0]
	beq _02212348
	add r4, r4, #1
	mov r1, r1, lsr #0x10
	add r0, sl, r0
	strh r1, [r0, #2]
	cmp r4, fp
	add r5, r5, #2
	blt _02212308
_02212348:
	mov r6, #0
	cmp fp, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02212354:
	mov r0, r6, lsl #1
	add r4, r6, #1
	str r0, [sp]
	b _022123C4
_02212364:
	mov r0, r4, lsl #1
	ldrh r1, [sb, r0]
	ldr r0, [sp]
	ldrh r0, [sb, r0]
	mul r7, r1, r0
	ldr r0, _022123E4 ; =0x7FFF8000
	cmp r7, r0
	mov r0, sl
	bhi _0221239C
	mov r2, r5
	mov r3, r8
	mov r1, r7, lsl #1
	bl ov4_0221215C
	b _022123C0
_0221239C:
	mov r1, r7
	mov r2, r5
	mov r3, r8
	bl ov4_0221215C
	mov r1, r7
	mov r2, r5
	mov r0, sl
	mov r3, r8
	bl ov4_0221215C
_022123C0:
	add r4, r4, #1
_022123C4:
	cmp r4, fp
	addlt r5, r6, r4
	cmplt r5, r8
	blt _02212364
	add r6, r6, #1
	cmp r6, fp
	blt _02212354
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022123E4: .word 0x7FFF8000
	arm_func_end ov4_022122B4

	arm_func_start ov4_022123E8
ov4_022123E8: ; 0x022123E8
	ldrh r1, [r0]
	mov r0, #0
	bx lr
	arm_func_end ov4_022123E8

	arm_func_start ov4_022123F4
ov4_022123F4: ; 0x022123F4
	ldrh r1, [r0]
	ldrh r0, [r0, #-2]
	mov r0, r0, lsl #0x10
	bx lr
	arm_func_end ov4_022123F4

	arm_func_start ov4_02212404
ov4_02212404: ; 0x02212404
	ldrh r1, [r0]
	ldrh r2, [r0, #-2]
	ldrh r3, [r0, #-4]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end ov4_02212404

	arm_func_start ov4_02212418
ov4_02212418: ; 0x02212418
	ldrh r2, [r0]
	ldrh r3, [r0, #-2]
	orr r1, r3, r2, lsl #16
	ldrh r2, [r0, #-4]
	ldrh r3, [r0, #-6]
	orr r0, r3, r2, lsl #16
	bx lr
	arm_func_end ov4_02212418

	arm_func_start ov4_02212434
ov4_02212434: ; 0x02212434
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x20
	ldr sb, [sp, #0x48]
	ldr r8, [sp, #0x4c]
	str r1, [sp, #4]
	add r6, r8, sb, lsl #1
	str r0, [sp]
	mov sl, r2
	mov r0, r6
	mov r2, sb, lsl #2
	mov r1, #0
	str r3, [sp, #8]
	add r7, r6, sb, lsl #1
	bl MI_CpuFill8
	ldr r0, [sp, #4]
	mov r1, sb
	bl ov4_02211E7C
	mov fp, r0
	mov r0, sl
	mov r1, sb
	bl ov4_02211E7C
	mov r5, r0
	cmp fp, #0
	cmpgt r5, #0
	ble _022125CC
	sub r0, sb, fp
	add r0, r5, r0
	sub r4, r0, #1
	cmp r4, sb
	blt _022124C0
	ldr r0, [sp, #4]
	mov r1, r7
	mov r2, sb, lsl #1
	bl MI_CpuCopy8
	b _022125CC
_022124C0:
	ldr r0, [sp, #4]
	add r1, r6, r4, lsl #1
	mov r2, fp, lsl #1
	bl MI_CpuCopy8
	cmp r5, #2
	ble _022124F4
	add r0, sl, r5, lsl #1
	sub r0, r0, #2
	mov fp, r5, lsl #1
	bl ov4_02212404
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	b _02212528
_022124F4:
	add r0, sl, r5, lsl #1
	cmp r5, #1
	sub r0, r0, #2
	ble _02212518
	mov fp, r5, lsl #1
	bl ov4_022123F4
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
	b _02212528
_02212518:
	mov fp, r5, lsl #1
	bl ov4_022123E8
	str r0, [sp, #0x18]
	str r1, [sp, #0x10]
_02212528:
	cmp r4, sb
	bge _022125CC
	mov r0, sb, lsl #1
	sub r0, r0, #1
	mov r0, r0, lsl #1
	str r0, [sp, #0x14]
_02212540:
	ldr r2, [sp, #0x14]
	mov r1, r6
	add r0, r6, #2
	bl memmove
	add r0, r7, fp
	bl ov4_02212418
	ldr r2, [sp, #0x18]
	ldr r3, [sp, #0x10]
	bl _ull_div
	mov r5, r0
	ldr r0, _02212610 ; =0x0000FFFF
	cmp r5, r0
	movhi r5, r0
_02212574:
	mov r2, r5, lsl #0x10
	mov r0, r8
	mov r1, sl
	mov r2, r2, lsr #0x10
	mov r3, sb
	bl ov4_0221223C
	mov r0, r7
	mov r1, r8
	mov r2, sb
	bl ov4_02212124
	cmp r0, #0
	sublt r5, r5, #1
	blt _02212574
	mov r0, r7
	mov r1, r7
	mov r2, r8
	mov r3, sb
	bl ov4_02212014
	strh r5, [r6]
	add r4, r4, #1
	cmp r4, sb
	blt _02212540
_022125CC:
	ldr r0, [sp]
	cmp r0, #0
	beq _022125E8
	ldr r1, [sp]
	mov r0, r6
	mov r2, sb, lsl #1
	bl MI_CpuCopy8
_022125E8:
	ldr r0, [sp, #8]
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #8]
	mov r0, r7
	mov r2, sb, lsl #1
	bl MI_CpuCopy8
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02212610: .word 0x0000FFFF
	arm_func_end ov4_02212434

	arm_func_start ov4_02212614
ov4_02212614: ; 0x02212614
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	ldr r4, _022127A0 ; =0x0221DE04
	mov r8, r3
	ldr r3, [r4, #0]
	mov sl, r0
	mov r0, r8, lsl #3
	ldr r7, [sp, #0x30]
	str r1, [sp, #8]
	mov sb, r2
	blx r3
	movs r4, r0
	addeq sp, sp, #0xc
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	sub r1, r8, #1
	add r0, sl, #2
	mov r2, r1, lsl #1
	mov r1, #0
	add r5, r4, r8, lsl #1
	bl MI_CpuFill8
	mov r2, #1
	mov r0, sb
	mov r1, r8
	strh r2, [sl]
	bl ov4_02211E7C
	sub r0, r8, r0
	mov r6, r0, lsl #4
	cmp r6, r8, lsl #4
	bhs _022126C8
	mov r2, #0x8000
_0221268C:
	sub r0, r8, r6, asr #4
	add r0, sb, r0, lsl #1
	ldrh r0, [r0, #-2]
	and r1, r6, #0xf
	tst r0, r2, lsr r1
	beq _022126BC
	ldr r0, [sp, #8]
	mov r1, sl
	mov r2, r8, lsl #1
	bl MI_CpuCopy8
	add r6, r6, #1
	b _022126C8
_022126BC:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _0221268C
_022126C8:
	cmp r6, r8, lsl #4
	bhs _02212788
	mov fp, r8, lsl #1
_022126D4:
	mov r0, r4
	mov r1, sl
	mov r2, r8
	bl ov4_022122B4
	mov r0, r4
	mov r1, sl
	mov r2, fp
	bl MI_CpuCopy8
	cmp r7, #0
	beq _02212718
	str r8, [sp]
	mov r0, #0
	mov r1, sl
	mov r2, r7
	mov r3, sl
	str r5, [sp, #4]
	bl ov4_02212434
_02212718:
	sub r0, r8, r6, asr #4
	add r0, sb, r0, lsl #1
	ldrh r1, [r0, #-2]
	and r2, r6, #0xf
	mov r0, #0x8000
	tst r1, r0, lsr r2
	beq _0221277C
	ldr r2, [sp, #8]
	mov r0, r4
	mov r1, sl
	mov r3, r8
	bl ov4_02212190
	mov r0, r4
	mov r1, sl
	mov r2, fp
	bl MI_CpuCopy8
	cmp r7, #0
	beq _0221277C
	str r8, [sp]
	mov r0, #0
	mov r1, sl
	mov r2, r7
	mov r3, sl
	str r5, [sp, #4]
	bl ov4_02212434
_0221277C:
	add r6, r6, #1
	cmp r6, r8, lsl #4
	blo _022126D4
_02212788:
	ldr r1, _022127A4 ; =0x0221DE30
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022127A0: .word 0x0221DE04
_022127A4: .word 0x0221DE30
	arm_func_end ov4_02212614

	arm_func_start ov4_022127A8
ov4_022127A8: ; 0x022127A8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr sb, [sp, #0x38]
	mov sl, r3
	add fp, sb, sl, lsl #1
	add r4, fp, sl, lsl #1
	add r5, r4, sl, lsl #1
	add r6, r5, sl, lsl #1
	add r7, r6, sl, lsl #1
	str r0, [sp, #8]
	mov r0, r1
	add r1, r7, sl, lsl #1
	str r1, [sp, #0x10]
	mov r8, sl, lsl #1
	str r2, [sp, #0xc]
	mov r1, sb
	mov r2, r8
	bl MI_CpuCopy8
	ldr r0, [sp, #0xc]
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, #1
	strh r0, [r4, r8]
	mov r0, sb
	mov r1, sl
	bl ov4_02211EA4
	cmp r0, #0
	ble _022128B8
_0221281C:
	ldr r3, [sp, #0x10]
	str sl, [sp]
	str r3, [sp, #4]
	mov r0, fp
	mov r1, r4
	mov r2, sb
	mov r3, r7
	bl ov4_02212434
	mov r0, sb
	mov r1, r4
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, sb
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, fp
	mov r2, r5
	mov r3, sl
	bl ov4_02212190
	mov r0, r7
	mov r1, r6
	mov r2, r7
	mov r3, sl
	bl ov4_02212014
	mov r0, r5
	mov r1, r6
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, r7
	mov r1, r5
	mov r2, r8
	bl MI_CpuCopy8
	mov r0, sb
	mov r1, sl
	bl ov4_02211EA4
	cmp r0, #0
	bgt _0221281C
_022128B8:
	ldr r2, [sp, #0xc]
	mov r0, r6
	mov r1, r6
	mov r3, sl
	bl ov4_02211ED4
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	ldr r4, [sp, #0x10]
	str sl, [sp]
	mov r1, r6
	mov r0, #0
	str r4, [sp, #4]
	bl ov4_02212434
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_022127A8

	arm_func_start ov4_022128F4
ov4_022128F4: ; 0x022128F4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r6, r3
	mov r4, r6, lsl #1
	mov r8, r2
	mov r2, r4
	mov r7, r0
	mov sb, r1
	ldr r5, [sp, #0x20]
	bl MI_CpuCopy8
	cmp r8, #1
	bne _02212934
	mov r0, r7
	mov r1, sb
	mov r2, r6
	bl ov4_022122B4
	b _02212950
_02212934:
	cmp r8, #0
	beq _02212950
	mov r0, r7
	mov r1, sb
	mov r2, r8
	mov r3, r6
	bl ov4_02212190
_02212950:
	ldr r0, [sp, #0x2c]
	ldr r2, [sp, #0x28]
	mov r1, r7
	mov r3, r5
	bl ov4_02212190
	sub r1, r6, r5
	ldr r0, [sp, #0x2c]
	mov r8, r1, lsl #1
	mov r2, r8
	add r0, r0, r5, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	mov r3, r6
	bl ov4_02212190
	mov r0, r7
	mov r1, r7
	ldr r2, [sp, #0x30]
	mov r3, r6
	bl ov4_02211ED4
	mov r2, r8
	mov r0, r7
	add r1, r7, r5, lsl #1
	bl memmove
	add r0, r7, r6, lsl #1
	sub r0, r0, r5, lsl #1
	mov r2, r5, lsl #1
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r7
	ldr r1, [sp, #0x24]
	mov r2, r6
	bl ov4_02212124
	cmp r0, #0
	beq _022129F0
	cmp r0, #1
	beq _02212A04
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022129F0:
	mov r0, r7
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02212A04:
	ldr r2, [sp, #0x24]
	mov r0, r7
	mov r1, r7
	mov r3, r6
	bl ov4_02212014
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_022128F4

	arm_func_start ov4_02212A1C
ov4_02212A1C: ; 0x02212A1C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov sl, r3
	mov r3, #0x16
	mul r4, sl, r3
	ldr r3, _02212C20 ; =0x0221DE04
	mov fp, r0
	ldr r3, [r3, #0]
	mov r0, r4
	ldr sb, [sp, #0x50]
	str r1, [sp, #0x14]
	str r2, [sp, #0x18]
	blx r3
	str r0, [sp, #0x28]
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r2, r4
	mov r1, #0
	bl MI_CpuFill8
	ldr r0, [sp, #0x28]
	mov r1, sl
	add r6, r0, sl, lsl #1
	add r0, r6, sl, lsl #1
	add r7, r0, sl, lsl #1
	add r8, r7, sl, lsl #1
	str r0, [sp, #0x24]
	add r0, r8, sl, lsl #1
	str r0, [sp, #0x20]
	add r5, r0, sl, lsl #1
	mov r0, sb
	bl ov4_02211E7C
	mov r4, r0
	ldr r0, [sp, #0x28]
	mov r2, #1
	mov r1, r4, lsl #1
	strh r2, [r0, r1]
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	str r0, [sp]
	mov r0, r6
	mov r2, sb
	mov r3, sl
	bl ov4_022127A8
	ldr r1, [sp, #0x28]
	mov r0, r7
	mov r2, r6
	mov r3, sl
	bl ov4_02212190
	mov r0, r6
	mov r1, r7
	mov r2, #1
	mov r3, sl
	bl ov4_022120BC
	str sl, [sp]
	mov r0, r6
	mov r1, r6
	mov r2, sb
	mov r3, #0
	str r5, [sp, #4]
	bl ov4_02212434
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #0x28]
	mov r3, sl
	bl ov4_02212190
	ldr r1, [sp, #0x24]
	str sl, [sp]
	mov r0, #0
	mov r2, sb
	mov r3, r1
	str r5, [sp, #4]
	bl ov4_02212434
	str sl, [sp]
	ldr r1, [sp, #0x28]
	mov r0, #0
	mov r2, sb
	mov r3, fp
	str r5, [sp, #4]
	bl ov4_02212434
	movs r0, r4, lsl #4
	mov r5, #0
	str r0, [sp, #0x1c]
	beq _02212BE4
_02212B6C:
	stmia sp, {r4, sb}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x20]
	mov r0, fp
	mov r2, #1
	mov r3, sl
	str r8, [sp, #0x10]
	bl ov4_022128F4
	ldr r1, [sp, #0x18]
	sub r2, r4, r5, asr #4
	add r1, r1, r2, lsl #1
	ldrh r2, [r1, #-2]
	and r0, r5, #0xf
	mov r1, #0x8000
	tst r2, r1, lsr r0
	beq _02212BD4
	stmia sp, {r4, sb}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	mov r0, fp
	mov r3, sl
	str r8, [sp, #0x10]
	bl ov4_022128F4
_02212BD4:
	ldr r0, [sp, #0x1c]
	add r5, r5, #1
	cmp r5, r0
	blo _02212B6C
_02212BE4:
	stmia sp, {r4, sb}
	str r6, [sp, #8]
	str r7, [sp, #0xc]
	ldr r1, [sp, #0x20]
	mov r0, fp
	mov r3, sl
	mov r2, #0
	str r8, [sp, #0x10]
	bl ov4_022128F4
	ldr r1, _02212C24 ; =0x0221DE30
	ldr r0, [sp, #0x28]
	ldr r1, [r1, #0]
	blx r1
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02212C20: .word 0x0221DE04
_02212C24: .word 0x0221DE30
	arm_func_end ov4_02212A1C

	arm_func_start ov4_02212C28
ov4_02212C28: ; 0x02212C28
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r2, r3, lsl #1
	mov r1, #0
	mov r4, r0
	bl MI_CpuFill8
	sub r0, r5, #1
	cmp r5, #1
	add r6, r6, r0
	ble _02212C74
_02212C54:
	ldrb r1, [r6]
	ldrb r0, [r6, #-1]
	sub r5, r5, #2
	cmp r5, #1
	add r0, r1, r0, lsl #8
	strh r0, [r4], #2
	sub r6, r6, #2
	bgt _02212C54
_02212C74:
	cmp r5, #0
	ldrgtb r0, [r6]
	strgth r0, [r4]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_02212C28

	arm_func_start ov4_02212C84
ov4_02212C84: ; 0x02212C84
	sub r3, r2, #1
	cmp r2, #1
	add r0, r0, r3
	ble _02212CB8
_02212C94:
	ldrh r3, [r1]
	sub ip, r0, #1
	sub r2, r2, #2
	strb r3, [r0], #-2
	ldrh r3, [r1], #2
	cmp r2, #1
	mov r3, r3, asr #8
	strb r3, [ip]
	bgt _02212C94
_02212CB8:
	cmp r2, #0
	ldrgth r1, [r1]
	strgtb r1, [r0]
	bx lr
	arm_func_end ov4_02212C84