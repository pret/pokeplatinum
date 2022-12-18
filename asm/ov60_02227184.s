	.include "macros/function.inc"
	.include "include/ov60_02227184.inc"

	

	.text


	arm_func_start ov60_02227184
ov60_02227184: ; 0x02227184
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0
	mov r4, r1
	str r0, [r5, #0]
	str r0, [r4, #0]
	bl ov60_02225E38
	ldr r1, _0222721C ; =0x0222A020
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _022271FC
	ldr r0, [r2, #0xc]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _022271F4
	ldr r2, [r2, #0xc]
	mvn r0, #0
	ldr r2, [r2, #0x30]
	ldr r2, [r2, #4]
	str r2, [r5, #0]
	ldr r2, [r1, #0]
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #0x14]
	cmp r1, r0
	moveq r0, #0
	ldrne r0, [r2, #0xc]
	ldrne r0, [r0, #0x14]
	str r0, [r4, #0]
_022271F4:
	mov r4, #1
	b _02227210
_022271FC:
	ldr r0, _02227220 ; =0x0222A030
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r4, #1
	moveq r4, #0
_02227210:
	bl ov60_02225E4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0222721C: .word 0x0222A020
_02227220: .word 0x0222A030
	arm_func_end ov60_02227184

	arm_func_start ov60_02227224
ov60_02227224: ; 0x02227224
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r5, [sp, #0x28]
	mov sl, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	cmp r5, #0
	ble _022272CC
	ldr r4, _022272D4 ; =0x0222AA58
	mov fp, #0
_0222724C:
	ldr r0, [sl, #4]
	cmp r0, #0
	mvnne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r8]
	mov r1, r7
	rsb r6, r0, #0x400
	cmp r5, r6
	movle r6, r5
	mov r2, r6
	add r0, r4, r0
	bl ov60_0222716C
	ldr r0, [r8]
	add r7, r7, r6
	add r0, r0, r6
	str r0, [r8]
	cmp r0, #0x400
	sub r5, r5, r6
	bne _022272C4
	mov r0, sl
	mov r1, sb
	mov r2, r4
	mov r3, #0x400
	str fp, [sp]
	bl ov60_02227070
	cmp r0, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [r8]
	sub r0, r1, r0
	str r0, [r8]
_022272C4:
	cmp r5, #0
	bgt _0222724C
_022272CC:
	ldr r0, [sp, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022272D4: .word 0x0222AA58
	arm_func_end ov60_02227224

	arm_func_start ov60_022272D8
ov60_022272D8: ; 0x022272D8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	mov r8, #0
	mov sl, r0
	mov sb, r1
	mov r7, r8
	strb r8, [sp, #4]
	strb r8, [sp, #5]
	mov r6, r8
	mov r5, #1
	add r4, sp, #4
	b _02227334
_02227308:
	mov r0, sl
	mov r1, sb
	mov r3, r5
	add r2, r4, r2
	str r6, [sp]
	bl ov60_02227024
	cmp r0, #0
	addle sp, sp, #8
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r8, r8, r0
	add r7, r7, #1
_02227334:
	and r2, r7, #1
	ldrsb r0, [r4, r2]
	cmp r0, #0xd
	bne _02227308
	sub r0, r7, #1
	and r0, r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0xa
	bne _02227308
	mov r0, r8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov60_022272D8

	arm_func_start ov60_02227364
ov60_02227364: ; 0x02227364
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0x800]
	cmp r0, #0
	beq _02227388
	ldr r1, _0222739C ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_02227388:
	ldr r1, _0222739C ; =0x0222A01C
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0222739C: .word 0x0222A01C
	arm_func_end ov60_02227364

	arm_func_start ov60_022273A0
ov60_022273A0: ; 0x022273A0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02227434 ; =0x0222AA10
	mov r6, r0
	ldmia r2, {r0, r2}
	add r0, r0, #1
	and r4, r0, #7
	mov r5, r1
	cmp r4, r2
	bne _022273FC
	ldr r1, _02227438 ; =0x0222AA18
	mov r0, #0
	ldr r1, [r1, r2, lsl #3]
	bl ov60_02226F6C
	ldr r0, _02227434 ; =0x0222AA10
	ldr r1, _0222743C ; =0x0222AA1C
	ldr r0, [r0, #4]
	ldr r0, [r1, r0, lsl #3]
	bl ov60_02227364
	ldr r0, _02227434 ; =0x0222AA10
	ldr r1, [r0, #4]
	add r1, r1, #1
	and r1, r1, #7
	str r1, [r0, #4]
_022273FC:
	ldr r0, [r5, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _02227434 ; =0x0222AA10
	ldr r1, _02227438 ; =0x0222AA18
	ldr ip, [r0]
	ldr r2, _0222743C ; =0x0222AA1C
	str r6, [r1, ip, lsl #3]
	ldr r3, [r5, #0]
	mov r1, #0
	str r3, [r2, ip, lsl #3]
	str r1, [r5, #0]
	str r4, [r0, #0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02227434: .word 0x0222AA10
_02227438: .word 0x0222AA18
_0222743C: .word 0x0222AA1C
	arm_func_end ov60_022273A0

	arm_func_start ov60_02227440
ov60_02227440: ; 0x02227440
	stmfd sp!, {r4, r5, r6, lr}
	ldr r6, _02227498 ; =0x0222AA10
	ldmia r6, {r0, r1}
	cmp r0, r1
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, _0222749C ; =0x0222AA18
	mov r5, #0
_0222745C:
	ldr r1, [r4, r1, lsl #3]
	mov r0, r5
	bl ov60_02226F6C
	ldr r0, [r6, #4]
	add r0, r4, r0, lsl #3
	ldr r0, [r0, #4]
	bl ov60_02227364
	ldr r0, [r6, #4]
	add r0, r0, #1
	and r1, r0, #7
	str r1, [r6, #4]
	ldr r0, [r6, #0]
	cmp r0, r1
	bne _0222745C
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02227498: .word 0x0222AA10
_0222749C: .word 0x0222AA18
	arm_func_end ov60_02227440

	arm_func_start ov60_022274A0
ov60_022274A0: ; 0x022274A0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x4c
	ldr r2, _022283C0 ; =0x0222AA10
	mov r0, #0
	str r0, [sp, #0x3c]
	str r0, [r2, #0]
	ldr r1, _022283C4 ; =0x0222A024
	mvn r6, #0
	str r0, [r2, #4]
	ldr r1, [r1, #0]
	str r0, [sp, #0x10]
	str r6, [sp, #0x18]
	str r6, [sp, #0x14]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	bne _02228770
_022274E4:
	bl ov60_02225E38
	bl ov60_02225E08
	cmp r0, #0
	mvneq r4, #0
	beq _02227508
	ldr r4, [r0, #8]
	ldr r8, [r0, #0xc]
	ldr r1, _022283C8 ; =0x0222A020
	str r0, [r1, #0]
_02227508:
	bl ov60_02225E4C
	cmp r4, #0
	bge _0222751C
	bl ov60_02225F00
	b _02228760
_0222751C:
	ldr r0, [r8, #4]
	ldr sb, [r8, #0x30]
	cmp r0, #0
	bne _02228690
	mov r0, r8
	bl ov60_02226B6C
	str r0, [sp, #0x1c]
	cmp r0, #0
	moveq r0, #4
	streq r0, [sp, #4]
	beq _02228690
	mov r1, r0
	ldr r0, [sp, #0x18]
	mov r2, #0
	cmp r1, r0
	ldreq r1, [r8, #0x28]
	ldreq r0, [sp, #0x14]
	add r5, sp, #0x38
	cmpeq r1, r0
	ldreq r1, [r8, #8]
	ldreq r0, [sp, #0xc]
	add r4, sp, #0x40
	cmpeq r1, r0
	ldr r0, [r8, #0x28]
	moveq r2, #1
	str r0, [sp, #0x14]
	ldr r0, [r8, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
	ldr r0, [sp, #8]
	and r0, r0, r2
	str r0, [sp, #8]
	mvn r0, #0
	str r0, [sp, #0x20]
_022275A8:
	mov r0, #0
	cmp r6, #0
	str r0, [sp, #4]
	blt _022275F8
	mov r0, #9
	strh r0, [sp, #0x2c]
	ldr r2, _022283CC ; =0x0000CC8D
	add r0, sp, #0x28
	mov r1, #1
	mov r3, #0
	str r6, [sp, #0x28]
	bl ov4_02208B18
	cmp r0, #0
	movle r0, #0
	strle r0, [sp, #8]
	ble _022275F8
	ldrsh r0, [sp, #0x2e]
	tst r0, #0xe0
	movne r0, #0
	strne r0, [sp, #8]
_022275F8:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _022276C0
	cmp r6, #0
	blt _02227640
	mov r0, r8
	mov r1, r6
	bl ov60_02226F5C
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [sp, #4]
	mov r0, r6
	add r1, sp, #0x3c
	bl ov60_022273A0
	ldr r0, [sp, #4]
	ldr r6, [sp, #0x20]
	cmp r0, #0
	bne _02228690
_02227640:
	mov r0, r8
	bl ov60_02226EDC
	movs r6, r0
	movmi r0, #3
	strmi r0, [sp, #4]
	bmi _02228690
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _02227674
	ldr r0, [r8, #0x20]
	str r0, [sp, #0x3c]
	mov r0, #0
	str r0, [r8, #0x20]
_02227674:
	bl ov60_02225E38
	ldr r0, _022283C8 ; =0x0222A020
	ldr r0, [r0, #0]
	str r6, [r0, #0x10]
	bl ov60_02225E4C
	ldr r0, [r8, #4]
	cmp r0, #0
	bne _02228690
	ldr r2, [sp, #0x1c]
	ldr r3, [r8, #0x28]
	mov r0, r8
	mov r1, r6
	bl ov60_02226FA8
	cmp r0, #0
	movge r0, #1
	strge r0, [sp, #8]
	movlt r0, #0
	strlt r0, [sp, #8]
	b _022276F4
_022276C0:
	ldr r0, [r8, #8]
	cmp r0, #0
	beq _022276DC
	ldr r0, [r8, #0x20]
	bl ov60_02227364
	mov r0, #0
	str r0, [r8, #0x20]
_022276DC:
	bl ov60_02226EBC
	bl ov60_02225E38
	ldr r0, _022283C8 ; =0x0222A020
	ldr r0, [r0, #0]
	str r6, [r0, #0x10]
	bl ov60_02225E4C
_022276F4:
	ldr r0, [r8, #4]
	cmp r0, #0
	bne _02228690
	ldr r0, [sp, #8]
	cmp r0, #0
	moveq r0, #5
	streq r0, [sp, #4]
	beq _02228690
	mov r0, #0
	str r0, [sp, #0x38]
	str r0, [sp, #8]
	ldr r0, [r8, #0x24]
	bl ov60_0222714C
	mov r7, r0
	mov r0, #0xa
	str r0, [sp, #4]
	ldr r0, [r8, #0x40]
	cmp r0, #0
	beq _02227754
	cmp r0, #1
	beq _02227780
	cmp r0, #2
	beq _022277AC
	b _022277D4
_02227754:
	mov r0, #4
	str r0, [sp]
	ldr r3, _022283D0 ; =0x02229CF4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _022277D4
_02227780:
	mov r0, #5
	str r0, [sp]
	ldr r3, _022283D4 ; =0x02229CFC
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _022277D4
_022277AC:
	mov r0, #5
	str r0, [sp]
	ldr r3, _022283D8 ; =0x02229D04
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_022277D4:
	ldr sl, [r8, #0x10]
	cmp r7, sl
	ble _02227814
	subs r0, r7, sl
	beq _0222783C
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r8, #0x24]
	add r3, r3, sl
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _0222783C
_02227814:
	mov r0, #1
	str r0, [sp]
	ldr r3, _022283DC ; =0x02229D0C
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_0222783C:
	mov r0, #0xb
	str r0, [sp]
	ldr r3, _022283E0 ; =0x02229D10
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r8, #8]
	ldr r3, _022283E4 ; =0x02229D1C
	cmp r0, #0
	movne r0, #8
	moveq r0, #7
	str r0, [sp, #0x34]
	mov r0, #6
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r7, [sp, #0x34]
	ldr r0, [r8, #0xc]
	subs r0, r0, r7
	beq _022278D8
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r8, #0x24]
	add r3, r3, r7
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_022278D8:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	add r0, r8, #0x34
	bl ov60_02225A60
	movs r7, r0
	beq _022279E8
_02227910:
	ldr r0, [r7, #8]
	bl ov60_0222714C
	cmp r0, #0
	beq _02227944
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #8]
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227944:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283EC ; =0x02229D28
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r7, #0xc]
	bl ov60_0222714C
	cmp r0, #0
	beq _022279A0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #0xc]
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_022279A0:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r1, _022283F0 ; =0x0222A01C
	mov r0, r7
	ldr r1, [r1, #0]
	blx r1
	add r0, r8, #0x34
	bl ov60_02225A60
	movs r7, r0
	bne _02227910
_022279E8:
	ldr r0, [r8, #0x40]
	cmp r0, #1
	bne _02227C08
	ldr sl, [r8, #0x38]
	mov r7, #0
	mov r0, r7
	str r0, [sp, #0x10]
	cmp sl, #0
	mov r1, sl
	beq _02227A38
_02227A10:
	ldr r0, [r1, #0x14]
	cmp r0, #0
	movne r0, #1
	strne r0, [sp, #0x10]
	bne _02227A38
	ldr r0, [sl]
	cmp r1, r0
	ldrne r1, [r1, #4]
	cmpne r1, #0
	bne _02227A10
_02227A38:
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02227B14
	cmp sl, #0
	beq _02227A94
_02227A4C:
	ldr r0, [sl, #8]
	add r7, r7, #0x16
	bl ov60_0222714C
	add r0, r0, #0x29
	add r7, r7, r0
	ldr r0, [sl, #0x14]
	ldr r1, [sl, #0x10]
	cmp r0, #0
	ldr r0, [r8, #0x38]
	addne r7, r7, #0x4b
	ldr r0, [r0, #0]
	add r2, r7, #2
	cmp sl, r0
	ldrne sl, [sl, #4]
	add r1, r2, r1
	add r7, r1, #2
	cmpne sl, #0
	bne _02227A4C
_02227A94:
	mov r0, #0x2c
	str r0, [sp]
	ldr r3, _022283F4 ; =0x02229D2C
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r7, r7, #0x18
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #0x12
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x46
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _02227B7C
_02227B14:
	cmp sl, #0
	beq _02227B54
_02227B1C:
	ldr r0, [sl, #8]
	bl ov60_022287A0
	add r0, r7, r0
	add r7, r0, #1
	ldr r0, [sl, #0xc]
	bl ov60_022287A0
	add r7, r7, r0
	ldr r0, [r8, #0x38]
	ldr r0, [r0, #0]
	cmp sl, r0
	ldrne sl, [sl, #4]
	addne r7, r7, #1
	cmpne sl, #0
	bne _02227B1C
_02227B54:
	mov r0, #0x31
	str r0, [sp]
	ldr r3, _022283F8 ; =0x02229D5C
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227B7C:
	mov r0, #0x10
	str r0, [sp]
	ldr r3, _022283FC ; =0x02229D90
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r1, r7
	mov r0, r4
	bl ov60_02228A18
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02227BE0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227BE0:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227C08:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r8, #0x40]
	cmp r0, #1
	bne _02227F88
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _02227E48
	ldr r7, [r8, #0x38]
	cmp r7, #0
	beq _02227DF4
_02227C54:
	mov r0, #0x14
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x44
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #0x26
	str r0, [sp]
	ldr r3, _02228400 ; =0x02228D8C
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r7, #8]
	bl ov60_0222714C
	cmp r0, #0
	beq _02227D00
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #8]
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227D00:
	mov r0, #3
	str r0, [sp]
	ldr r3, _02228404 ; =0x02229DA4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r7, #0x14]
	cmp r0, #0
	beq _02227D5C
	mov r0, #0x4b
	str r0, [sp]
	ldr r3, _02228408 ; =0x02228DB4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227D5C:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r7, #0x10]
	cmp r0, #0
	beq _02227DB4
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	ldr r3, [r7, #0xc]
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227DB4:
	mov r0, #2
	str r0, [sp]
	ldr r3, _022283E8 ; =0x02229D24
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r0, [r8, #0x38]
	ldr r0, [r0, #0]
	cmp r7, r0
	ldrne r7, [r7, #4]
	cmpne r7, #0
	bne _02227C54
_02227DF4:
	mov r0, #0x14
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	add r3, r8, #0x44
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	mov r0, #4
	str r0, [sp]
	ldr r3, _0222840C ; =0x02229DA8
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	b _02227F88
_02227E48:
	ldr sl, [r8, #0x38]
	cmp sl, #0
	beq _02227F88
_02227E54:
	ldr r1, [sl, #8]
	mov r7, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _02227EB8
_02227E68:
	ldrsb r1, [r1, r7]
	mov r0, r4
	bl ov60_02228808
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02227EA4
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227EA4:
	add r7, r7, #1
	ldr r1, [sl, #8]
	ldrsb r0, [r1, r7]
	cmp r0, #0
	bne _02227E68
_02227EB8:
	mov r0, #1
	str r0, [sp]
	ldr r3, _02228410 ; =0x02229DB0
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr r1, [sl, #0xc]
	mov r7, #0
	ldrsb r0, [r1]
	cmp r0, #0
	beq _02227F44
_02227EF4:
	ldrsb r1, [r1, r7]
	mov r0, r4
	bl ov60_02228808
	str r0, [sp, #0x34]
	cmp r0, #0
	beq _02227F30
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227F30:
	add r7, r7, #1
	ldr r1, [sl, #0xc]
	ldrsb r0, [r1, r7]
	cmp r0, #0
	bne _02227EF4
_02227F44:
	ldr r0, [r8, #0x38]
	ldr r0, [r0, #0]
	cmp sl, r0
	beq _02227F88
	mov r0, #1
	str r0, [sp]
	ldr r3, _02228414 ; =0x02229DB4
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov60_02227224
	cmp r0, #0
	blt _02228690
	beq _022275A8
	ldr sl, [sl, #4]
	cmp sl, #0
	bne _02227E54
_02227F88:
	ldr r3, [sp, #0x38]
	cmp r3, #0
	ble _02227FB8
	mov r0, #0
	str r0, [sp]
	ldr r2, _02228418 ; =0x0222AA58
	mov r0, r8
	mov r1, r6
	bl ov60_02227070
	cmp r0, #0
	blt _02228690
	beq _022275A8
_02227FB8:
	mov r0, #0
	str r0, [sb]
	strb r0, [sp, #0x40]
	strb r0, [sp, #0x41]
	mov r1, #7
	strb r0, [sp, #0x42]
	strb r0, [sp, #0x43]
	ldr r5, [sb, #0x1c]
	str r1, [sp, #4]
	str r0, [sp, #0x38]
	add sl, sb, #0x20
	add r4, sp, #0x40
_02227FE8:
	ldr r1, [r8, #4]
	cmp r1, #0
	bne _02228690
	cmp r0, #0x400
	bge _02228030
	add r2, sl, r0
	mov r0, #0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r3, #1
	bl ov60_02227024
	ldr r3, [sp, #0x38]
	add r1, sb, r3
	ldrsb r2, [r1, #0x20]
	and r1, r3, #3
	strb r2, [r4, r1]
	b _022280C4
_02228030:
	ldr r1, _0222841C ; =0x000001FF
	ands r7, r0, r1
	bne _02228090
	cmp r5, #0
	mov r0, #0x204
	mov r1, #4
	beq _02228064
	ldr r2, _02228420 ; =0x0222A018
	ldr r2, [r2, #0]
	blx r2
	str r0, [r5, #0]
	mov r5, r0
	b _02228078
_02228064:
	ldr r2, _02228420 ; =0x0222A018
	ldr r2, [r2, #0]
	blx r2
	mov r5, r0
	str r5, [sb, #0x1c]
_02228078:
	cmp r5, #0
	moveq r0, #1
	streq r0, [sp, #4]
	beq _02228690
	mov r0, #0
	str r0, [r5, #0]
_02228090:
	mov r0, #0
	add r2, r5, #4
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	add r2, r2, r7
	mov r3, #1
	bl ov60_02227024
	add r1, r5, r7
	ldrsb r2, [r1, #4]
	ldr r1, [sp, #0x38]
	and r1, r1, #3
	strb r2, [r4, r1]
_022280C4:
	cmp r0, #0
	movle r0, #0xa
	strle r0, [sp, #4]
	ble _02228690
	ldr r1, [sp, #0x38]
	add r0, r1, r0
	str r0, [sp, #0x38]
	sub r1, r0, #4
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xd
	bne _02227FE8
	sub r1, r0, #3
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xa
	bne _02227FE8
	sub r1, r0, #2
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xd
	bne _02227FE8
	sub r1, r0, #1
	and r1, r1, #3
	ldrsb r1, [r4, r1]
	cmp r1, #0xa
	bne _02227FE8
	str r0, [sb]
	ldr r0, [sb]
	cmp r0, #0
	beq _02228690
	ldr r1, _02228418 ; =0x0222AA58
	mov r0, sb
	mov r2, #0
	mov r3, #0xe
	bl ov60_02226220
	cmp r0, #0
	beq _02228690
	ldr r0, _02228418 ; =0x0222AA58
	ldr r1, _02228424 ; =0x02229DB8
	mov r2, #5
	bl ov60_022270E4
	cmp r0, #0
	ldreq r0, _02228418 ; =0x0222AA58
	ldreqsb r0, [r0, #8]
	cmpeq r0, #0x20
	bne _02228690
	ldr r0, _02228428 ; =0x0222AA61
	mov r1, #3
	bl ov60_02228980
	cmp r0, #0
	blt _02228690
	ldr r2, [sb]
	add r3, sp, #0x30
	mov r0, sb
	mov r1, #0xc
	bl ov60_02226010
	cmp r0, #0
	blt _02228690
	ldr r1, _0222842C ; =0x02229DC0
	add r2, sp, #0x34
	mov r0, sb
	bl ov60_02226C7C
	movs r5, r0
	moveq r0, #0
	streq r0, [sp, #4]
	beq _02228690
	cmp r5, #0x400
	bgt _02228690
	cmp r5, #0
	ble _02228218
	ldr r2, [sp, #0x34]
	ldr r1, _02228418 ; =0x0222AA58
	mov r0, sb
	mov r3, r5
	bl ov60_02226220
	cmp r0, #0
	beq _02228690
	ldr r0, _02228418 ; =0x0222AA58
	mov r1, r5
	bl ov60_02228980
	movs r5, r0
	bmi _02228690
	str r5, [r8, #0x14]
	b _02228220
_02228218:
	mvn r0, #0
	str r0, [r8, #0x14]
_02228220:
	ldr r1, _02228430 ; =0x02229DD0
	add r2, sp, #0x34
	mov r0, sb
	bl ov60_02226C7C
	str r0, [sp, #8]
	cmp r0, #0
	beq _02228690
	bge _02228280
	ldr r0, _02228418 ; =0x0222AA58
	mov r2, #0
	ldrsb r1, [r0, #5]
	ldrsb r3, [r0, #7]
	add r0, sp, #0x24
	strb r1, [sp, #0x24]
	mov r1, #2
	strb r3, [sp, #0x25]
	strb r2, [sp, #0x26]
	bl ov60_02228980
	cmp r0, #0xb
	movge r0, #1
	strge r0, [sp, #8]
	movlt r0, #0
	strlt r0, [sp, #8]
	b _022282C0
_02228280:
	cmp r0, #0x400
	mov r0, #0
	strgt r0, [sp, #8]
	bgt _022282C0
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #8]
	str r0, [sp]
	ldr r3, _02228434 ; =0x02229DDC
	mov r0, sb
	add r2, r1, r2
	bl ov60_02226150
	cmp r0, #0
	moveq r0, #1
	streq r0, [sp, #8]
	movne r0, #0
	strne r0, [sp, #8]
_022282C0:
	ldr r1, _02228438 ; =0x02229DE8
	add r2, sp, #0x34
	mov r0, sb
	bl ov60_02226C7C
	cmp r0, #0
	beq _02228690
	cmp r0, #0x400
	movgt r1, #0
	bgt _0222831C
	cmp r0, #0
	ble _02228318
	ldr r1, [sp, #0x34]
	ldr r3, _0222843C ; =0x02229DFC
	add r2, r1, r0
	mov r0, #0x3b
	str r0, [sp]
	mov r0, sb
	bl ov60_02226150
	cmp r0, #0
	moveq r1, #1
	movne r1, #0
	b _0222831C
_02228318:
	mov r1, #0
_0222831C:
	ldr r0, [r8, #0x40]
	cmp r0, #2
	beq _02228690
	cmp r5, #0
	blt _02228440
	mov r4, #0
	b _0222836C
_02228338:
	str r4, [sp]
	ldr r2, [sb, #4]
	mov r0, r8
	mov r1, r6
	mov r3, r5
	bl ov60_02226348
	cmp r0, #0
	blt _02228690
	beq _02228388
	ldr r1, [sb, #4]
	sub r5, r5, r0
	add r0, r1, r0
	str r0, [sb, #4]
_0222836C:
	cmp r5, #0
	ble _02228388
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov60_0222630C
	cmp r0, #0
	beq _02228338
_02228388:
	cmp r5, #0
	beq _022283B4
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov60_0222630C
	cmp r0, #0
	movne r0, #6
	strne r0, [sp, #4]
	moveq r0, #0xa
	streq r0, [sp, #4]
	b _02228690
_022283B4:
	mov r0, #0
	str r0, [sp, #4]
	b _02228690
	; .align 2, 0
_022283C0: .word 0x0222AA10
_022283C4: .word 0x0222A024
_022283C8: .word 0x0222A020
_022283CC: .word 0x0000CC8D
_022283D0: .word 0x02229CF4
_022283D4: .word 0x02229CFC
_022283D8: .word 0x02229D04
_022283DC: .word 0x02229D0C
_022283E0: .word 0x02229D10
_022283E4: .word 0x02229D1C
_022283E8: .word 0x02229D24
_022283EC: .word 0x02229D28
_022283F0: .word 0x0222A01C
_022283F4: .word 0x02229D2C
_022283F8: .word 0x02229D5C
_022283FC: .word 0x02229D90
_02228400: .word 0x02228D8C
_02228404: .word 0x02229DA4
_02228408: .word 0x02228DB4
_0222840C: .word 0x02229DA8
_02228410: .word 0x02229DB0
_02228414: .word 0x02229DB4
_02228418: .word 0x0222AA58
_0222841C: .word 0x000001FF
_02228420: .word 0x0222A018
_02228424: .word 0x02229DB8
_02228428: .word 0x0222AA61
_0222842C: .word 0x02229DC0
_02228430: .word 0x02229DD0
_02228434: .word 0x02229DDC
_02228438: .word 0x02229DE8
_0222843C: .word 0x02229DFC
_02228440:
	mov r0, #0xa
	cmp r1, #0
	str r0, [sp, #4]
	beq _022285E4
	mov r7, #0
	ldr r5, _02228418 ; =0x0222AA58
	add r4, sp, #0x40
	mov sl, r7
_02228460:
	mov r0, #0
	strb r0, [sp, #0x40]
	strb r0, [sp, #0x41]
	str r0, [sp, #0x38]
_02228470:
	str r7, [sp]
	ldr r2, [sp, #0x38]
	mov r0, r8
	mov r1, r6
	mov r3, #1
	add r2, r5, r2
	bl ov60_02227024
	cmp r0, #0
	blt _02228690
	ldr r1, [sp, #0x38]
	ldrsb r0, [r5, r1]
	and r2, r1, #1
	strb r0, [r4, r2]
	cmp r0, #0x3b
	beq _022284C8
	cmp r0, #0xa
	bne _02228510
	sub r2, r1, #1
	and r2, r2, #1
	ldrsb r2, [r4, r2]
	cmp r2, #0xd
	bne _02228510
_022284C8:
	cmp r0, #0xa
	subeq r0, r1, #1
	streq r0, [sp, #0x34]
	beq _022284F0
	str r1, [sp, #0x34]
	mov r0, r8
	mov r1, r6
	bl ov60_022272D8
	cmp r0, #0
	ble _02228690
_022284F0:
	ldr r1, [sp, #0x34]
	cmp r1, #0
	beq _02228690
	mov r0, r5
	bl ov60_02228898
	movs fp, r0
	bmi _02228690
	b _02228524
_02228510:
	ldr r0, [sp, #0x38]
	add r0, r0, #1
	str r0, [sp, #0x38]
	cmp r0, #0x400
	blt _02228470
_02228524:
	ldr r0, [sp, #0x38]
	cmp r0, #0x400
	moveq r0, #7
	streq r0, [sp, #4]
	beq _02228690
	cmp fp, #0
	ble _022285CC
	ble _02228460
_02228544:
	str sl, [sp]
	mov r0, r8
	mov r1, r6
	ldr r2, [sb, #4]
	mov r3, fp
	bl ov60_02226348
	cmp r0, #0
	ble _02228690
	ldr r1, [sb, #4]
	subs fp, fp, r0
	add r0, r1, r0
	str r0, [sb, #4]
	bne _022285C0
	mov r0, #0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, #1
	bl ov60_02227024
	cmp r0, #0
	ble _02228690
	mov r0, #0
	str r0, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r5
	mov r3, #1
	bl ov60_02227024
	cmp r0, #0
	ble _02228690
_022285C0:
	cmp fp, #0
	bgt _02228544
	b _02228460
_022285CC:
	mov r0, r8
	mov r1, r6
	bl ov60_022272D8
	mov r0, #0
	str r0, [sp, #4]
	b _02228690
_022285E4:
	ldr r1, [sb, #4]
	mov r0, sb
	bl ov60_0222630C
	cmp r0, #0
	bne _02228690
	mov r5, #0
	ldr r4, _02228418 ; =0x0222AA58
	mov sl, #1
	mov r7, r5
_02228608:
	mov r0, r8
	mov r1, r6
	ldr r2, [sb, #4]
	mov r3, r7
	bl ov60_02226320
	cmp r0, #0
	blt _02228690
	moveq r0, #0
	streq r0, [sp, #4]
	beq _02228690
	ldr r1, [sb, #4]
	add r0, r1, r0
	str r0, [sb, #4]
	mov r0, sb
	ldr r1, [sb, #4]
	bl ov60_0222630C
	cmp r0, #0
	beq _0222867C
	str r5, [sp]
	mov r0, r8
	mov r1, r6
	mov r2, r4
	mov r3, sl
	bl ov60_02227024
	cmp r0, #0
	blt _02228690
	movne r0, #6
	strne r0, [sp, #4]
	bne _02228690
_0222867C:
	mov r0, sb
	ldr r1, [sb, #4]
	bl ov60_0222630C
	cmp r0, #0
	beq _02228608
_02228690:
	bl ov60_02225E38
	ldr r0, _022283C8 ; =0x0222A020
	ldr r1, _022283F0 ; =0x0222A01C
	ldr r0, [r0, #0]
	ldr r1, [r1, #0]
	blx r1
	ldr r0, _022283C8 ; =0x0222A020
	mov r1, #0
	str r1, [r0, #0]
	bl ov60_02225E4C
	ldr r0, [r8, #4]
	cmp r0, #0
	movne r0, #8
	strne r0, [sp, #4]
	cmp r6, #0
	blt _02228718
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _022286E8
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02228718
_022286E8:
	mov r0, r8
	mov r1, r6
	bl ov60_02226F5C
	cmp r0, #0
	movlt r0, #0xa
	strlt r0, [sp, #4]
	add r1, sp, #0x3c
	mov r0, r6
	bl ov60_022273A0
	mov r0, #0
	mvn r6, #0
	str r0, [sp, #8]
_02228718:
	ldr r0, [sp, #4]
	cmp r0, #0
	moveq r0, #1
	streq r0, [sb, #8]
	beq _02228740
	mov r0, #0
	str r0, [sb, #8]
	ldr r1, _0222879C ; =0x0222A014
	ldr r0, [sp, #4]
	str r0, [r1, #0]
_02228740:
	ldr r4, [r8, #0x2c]
	mov r0, r8
	ldr r5, [r8, #0x3c]
	bl ov60_02226998
	ldr r0, [sp, #4]
	mov r1, sb
	mov r2, r4
	blx r5
_02228760:
	ldr r0, _022283C4 ; =0x0222A024
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022274E4
_02228770:
	cmp r6, #0
	blt _02228790
	mov r0, r8
	mov r1, r6
	bl ov60_02226F5C
	add r1, sp, #0x3c
	mov r0, r6
	bl ov60_022273A0
_02228790:
	bl ov60_02227440
	add sp, sp, #0x4c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0222879C: .word 0x0222A014
	arm_func_end ov60_022274A0

	.rodata


	.global Unk_ov60_02228D8C
Unk_ov60_02228D8C: ; 0x02228D8C
	.incbin "incbin/overlay60_rodata.bin", 0x140, 0x168 - 0x140

	.global Unk_ov60_02228DB4
Unk_ov60_02228DB4: ; 0x02228DB4
	.incbin "incbin/overlay60_rodata.bin", 0x168, 0x4C



	.data


	.global Unk_ov60_02229CF4
Unk_ov60_02229CF4: ; 0x02229CF4
	.incbin "incbin/overlay60_data.bin", 0xEB4, 0xEBC - 0xEB4

	.global Unk_ov60_02229CFC
Unk_ov60_02229CFC: ; 0x02229CFC
	.incbin "incbin/overlay60_data.bin", 0xEBC, 0xEC4 - 0xEBC

	.global Unk_ov60_02229D04
Unk_ov60_02229D04: ; 0x02229D04
	.incbin "incbin/overlay60_data.bin", 0xEC4, 0xECC - 0xEC4

	.global Unk_ov60_02229D0C
Unk_ov60_02229D0C: ; 0x02229D0C
	.incbin "incbin/overlay60_data.bin", 0xECC, 0xED0 - 0xECC

	.global Unk_ov60_02229D10
Unk_ov60_02229D10: ; 0x02229D10
	.incbin "incbin/overlay60_data.bin", 0xED0, 0xEDC - 0xED0

	.global Unk_ov60_02229D1C
Unk_ov60_02229D1C: ; 0x02229D1C
	.incbin "incbin/overlay60_data.bin", 0xEDC, 0xEE4 - 0xEDC

	.global Unk_ov60_02229D24
Unk_ov60_02229D24: ; 0x02229D24
	.incbin "incbin/overlay60_data.bin", 0xEE4, 0xEE8 - 0xEE4

	.global Unk_ov60_02229D28
Unk_ov60_02229D28: ; 0x02229D28
	.incbin "incbin/overlay60_data.bin", 0xEE8, 0xEEC - 0xEE8

	.global Unk_ov60_02229D2C
Unk_ov60_02229D2C: ; 0x02229D2C
	.incbin "incbin/overlay60_data.bin", 0xEEC, 0xF1C - 0xEEC

	.global Unk_ov60_02229D5C
Unk_ov60_02229D5C: ; 0x02229D5C
	.incbin "incbin/overlay60_data.bin", 0xF1C, 0xF50 - 0xF1C

	.global Unk_ov60_02229D90
Unk_ov60_02229D90: ; 0x02229D90
	.incbin "incbin/overlay60_data.bin", 0xF50, 0xF64 - 0xF50

	.global Unk_ov60_02229DA4
Unk_ov60_02229DA4: ; 0x02229DA4
	.incbin "incbin/overlay60_data.bin", 0xF64, 0xF68 - 0xF64

	.global Unk_ov60_02229DA8
Unk_ov60_02229DA8: ; 0x02229DA8
	.incbin "incbin/overlay60_data.bin", 0xF68, 0xF70 - 0xF68

	.global Unk_ov60_02229DB0
Unk_ov60_02229DB0: ; 0x02229DB0
	.incbin "incbin/overlay60_data.bin", 0xF70, 0xF74 - 0xF70

	.global Unk_ov60_02229DB4
Unk_ov60_02229DB4: ; 0x02229DB4
	.incbin "incbin/overlay60_data.bin", 0xF74, 0xF78 - 0xF74

	.global Unk_ov60_02229DB8
Unk_ov60_02229DB8: ; 0x02229DB8
	.incbin "incbin/overlay60_data.bin", 0xF78, 0xF80 - 0xF78

	.global Unk_ov60_02229DC0
Unk_ov60_02229DC0: ; 0x02229DC0
	.incbin "incbin/overlay60_data.bin", 0xF80, 0xF90 - 0xF80

	.global Unk_ov60_02229DD0
Unk_ov60_02229DD0: ; 0x02229DD0
	.incbin "incbin/overlay60_data.bin", 0xF90, 0xF9C - 0xF90

	.global Unk_ov60_02229DDC
Unk_ov60_02229DDC: ; 0x02229DDC
	.incbin "incbin/overlay60_data.bin", 0xF9C, 0xFA8 - 0xF9C

	.global Unk_ov60_02229DE8
Unk_ov60_02229DE8: ; 0x02229DE8
	.incbin "incbin/overlay60_data.bin", 0xFA8, 0xFBC - 0xFA8

	.global Unk_ov60_02229DFC
Unk_ov60_02229DFC: ; 0x02229DFC
	.incbin "incbin/overlay60_data.bin", 0xFBC, 0x8



	.bss


	.global Unk_ov60_0222AA10
Unk_ov60_0222AA10: ; 0x0222AA10
	.space 0x4

	.global Unk_ov60_0222AA14
Unk_ov60_0222AA14: ; 0x0222AA14
	.space 0x4

	.global Unk_ov60_0222AA18
Unk_ov60_0222AA18: ; 0x0222AA18
	.space 0x40

	.global Unk_ov60_0222AA58
Unk_ov60_0222AA58: ; 0x0222AA58
	.space 0x400

