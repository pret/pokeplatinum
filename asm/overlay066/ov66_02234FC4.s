	.include "macros/function.inc"
	.include "overlay066/ov66_02234FC4.inc"

	

	.text


	arm_func_start ov66_02234FC4
ov66_02234FC4: ; 0x02234FC4
	ldr r0, _02234FD0 ; =0x0225B6C4
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_02234FD0: .word 0x0225B6C4
	arm_func_end ov66_02234FC4

	arm_func_start ov66_02234FD4
ov66_02234FD4: ; 0x02234FD4
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r8, [sp, #0x28]
	mov r7, r0
	mov r0, r8
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl DWC_CheckUserData
	cmp r0, #0
	beq _02235010
	mov r0, r8
	bl DWC_CheckHasProfile
	cmp r0, #0
	bne _0223501C
_02235010:
	add sp, sp, #0x10
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_0223501C:
	ldr r1, [r8, #0x1c]
	ldr r0, [sp, #0x2c]
	str r1, [sp]
	ldr ip, [sp, #0x30]
	str r0, [sp, #4]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl ov66_02235058
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_02234FD4

	arm_func_start ov66_02235058
ov66_02235058: ; 0x02235058
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x30
	ldr r4, _02235344 ; =0x0225B6C4
	mov r8, r0
	ldr r0, [r4, #0]
	mov r7, r1
	cmp r0, #0
	mov r6, r2
	mov r5, r3
	addne sp, sp, #0x30
	movne r0, #4
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r3, _02235348 ; =ov66_02239F84
	ldr r2, _0223534C ; =ov66_0223A1C8
	mov r1, #5
	ldr r0, _02235350 ; =0x0000047C
	str r3, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	bl ov66_02246290
	movs r4, r0
	beq _022351EC
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	add lr, r4, #8
	mov ip, #4
_022350C4:
	ldmia r5!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _022350C4
	ldr r1, [r5, #0]
	ldr r0, [sp, #0x48]
	str r1, [lr]
	str r0, [r4, #0x4c]
	ldr r0, [sp, #0x54]
	str r6, [r4, #0x50]
	str r0, [r4, #0x54]
	mov r0, #0
	add r2, r4, #0x58
	mov r1, r0
_022350FC:
	str r1, [r2, r0, lsl #2]
	add r0, r0, #1
	cmp r0, #3
	blo _022350FC
	str r1, [r4, #0x64]
	str r1, [r4, #0x68]
	str r1, [r4, #0x6c]
	str r1, [r4, #0x70]
	mov r0, #5
	str r0, [r4, #0xb8]
	add r0, r4, #0xbc
	mov r3, #0
_0223512C:
	str r3, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _0223512C
	mov r0, #5
	str r0, [r4, #0xd0]
	add r0, r4, #0xd4
	mov r2, #0
_0223514C:
	str r2, [r0, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #3
	blo _0223514C
	ldr r0, _02235354 ; =0x02258EA0
	add r1, r4, #0xf0
	str r0, [r4, #0xe8]
	str r2, [r4, #0xec]
	str r2, [r4, #0xf0]
	str r1, [r4, #0xf4]
	ldr r0, _02235358 ; =0x02258EB0
	add r1, sp, #8
	str r0, [r4, #0xf8]
	mov r0, #5
	str r0, [r4, #0xfc]
	str r2, [r4, #0x100]
	str r2, [r4, #0x104]
	add r0, sp, #0x14
	str r2, [r4, #0x108]
	bl ov4_021D806C
	add r0, sp, #0x14
	add r1, sp, #8
	bl RTC_ConvertDateTimeToSecond
	str r0, [r4, #0x100]
	str r1, [r4, #0x104]
	mov r0, #1
	mov r2, #0
	str r0, [r4, #0x10c]
	str r2, [r4, #0x110]
	str r2, [r4, #0x114]
	str r2, [r4, #0x118]
	str r0, [r4, #0x11c]
	sub r0, r2, #1
	str r0, [r4, #0x124]
	str r2, [r4, #0x134]
	str r2, [r4, #0x138]
	add r1, r4, #0x138
	add r0, r4, #0x144
	str r1, [r4, #0x140]
	bl ov66_0223CA1C
_022351EC:
	ldr r0, _02235344 ; =0x0225B6C4
	cmp r4, #0
	str r4, [r0, #0]
	addeq sp, sp, #0x30
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r4, [sp, #0x48]
	add r3, sp, #0x24
	mov r0, r8
	mov r1, r7
	mov r2, r6
	str r4, [sp]
	bl ov66_02244A18
	mov r4, r0
	ldr r1, _02235344 ; =0x0225B6C4
	mov r0, #0
	strb r0, [sp, #4]
	cmp r4, #1
	ldr r1, [r1, #0]
	beq _02235248
	cmp r4, #2
	moveq r0, #3
	b _0223524C
_02235248:
	mov r0, #2
_0223524C:
	cmp r0, #0
	strne r0, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
	cmp r4, #0
	beq _02235308
	ldr r0, _02235344 ; =0x0225B6C4
	ldr r5, [r0, #0]
	cmp r5, #0
	beq _022352FC
	beq _022352F0
	add r0, r5, #0x194
	bl ov66_0223B620
	add r0, r5, #0x17c
	bl ov66_0223A9FC
	add r0, r5, #0x170
	bl ov66_0223B670
	add r0, r5, #0x134
	bl ov66_0223ABC4
	add r0, r5, #0x134
	bl ov66_0223AD4C
	ldr r1, _02235354 ; =0x02258EA0
	add r0, r5, #0xe8
	str r1, [r5, #0xe8]
	bl ov66_02241E54
	add r0, r5, #0x110
	bl ov66_0223B8E8
	add r0, r5, #0xec
	bl ov66_0223AA9C
	add r0, r5, #0xd4
	bl ov66_0223BADC
	add r0, r5, #0xbc
	bl ov66_0223BADC
	add r0, r5, #0x58
	bl ov66_0223BADC
	cmp r5, #0
	beq _022352F0
	mov r0, #0
	mov r1, r5
	mov r2, r0
	bl ov4_021D77C4
_022352F0:
	ldr r0, _02235344 ; =0x0225B6C4
	mov r1, #0
	str r1, [r0, #0]
_022352FC:
	add sp, sp, #0x30
	mov r0, r4
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02235308:
	ldr r0, _02235344 ; =0x0225B6C4
	ldr r1, [sp, #0x48]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	add r0, r0, #0xe8
	bl ov66_02242008
	bl ov66_022374B4
	ldr r0, _02235344 ; =0x0225B6C4
	mov r2, #1
	ldr r1, [r0, #0]
	mov r0, #0
	str r2, [r1, #0]
	add sp, sp, #0x30
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02235344: .word 0x0225B6C4
_02235348: .word ov66_02239F84
_0223534C: .word ov66_0223A1C8
_02235350: .word 0x0000047C
_02235354: .word 0x02258EA0
_02235358: .word 0x02258EB0
	arm_func_end ov66_02235058

	arm_func_start ov66_0223535C
ov66_0223535C: ; 0x0223535C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	bl ov66_0223B8E8
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223535C

	arm_func_start ov66_02235374
ov66_02235374: ; 0x02235374
	stmfd sp!, {r4, lr}
	ldr r1, _022353A0 ; =0x02258EA0
	mov r4, r0
	str r1, [r4, #0]
	bl ov66_02241E54
	add r0, r4, #0x28
	bl ov66_0223B8E8
	add r0, r4, #4
	bl ov66_0223AA9C
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022353A0: .word 0x02258EA0
	arm_func_end ov66_02235374

	arm_func_start ov66_022353A4
ov66_022353A4: ; 0x022353A4
	stmfd sp!, {r3, lr}
	ldr r0, _02235424 ; =0x0225B6C4
	ldr r1, [r0, #0]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r1, #0]
	cmp r0, #9
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x134
	bl ov66_0223ABC4
	ldr r0, _02235424 ; =0x0225B6C4
	mov r1, #9
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	bl ov66_02244E98
	ldr r1, _02235424 ; =0x0225B6C4
	mov r2, #0
	strb r2, [sp]
	cmp r0, #1
	ldr r3, [r1, #0]
	beq _0223540C
	cmp r0, #2
	moveq r2, #3
	b _02235410
_0223540C:
	mov r2, #2
_02235410:
	cmp r2, #0
	strne r2, [r3, #4]
	movne r1, #0xa
	strne r1, [r3]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02235424: .word 0x0225B6C4
	arm_func_end ov66_022353A4

	arm_func_start ov66_02235428
ov66_02235428: ; 0x02235428
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x6c
	ldr r0, _02235B34 ; =0x0225B6D4
	ldr r7, [r0, #0]
	mov r0, #0
	cmp r7, #0
	beq _022356C4
	str r0, [sp, #0x10]
	bl ov66_022584EC
	cmp r0, #0
	beq _02235648
	cmp r0, #1
	beq _02235534
	cmp r0, #8
	bne _0223568C
	add r0, sp, #0x10
	bl ov66_02258664
	mov r5, r0
	ldr r1, [sp, #0x10]
	mov r0, #0
	bl ov4_021D7780
	movs r4, r0
	beq _02235494
	ldr r2, [sp, #0x10]
	mov r0, r5
	mov r1, r4
	bl MI_CpuCopy8
_02235494:
	cmp r4, #0
	beq _022354DC
	ldr r6, [r7, #0x38]
	ldr r5, [sp, #0x10]
	bl ov66_022585F4
	ldr r2, _02235B38 ; =0x0225B6D8
	ldr r0, _02235B34 ; =0x0225B6D4
	ldr r8, [r2]
	ldr r3, [r0, #0]
	mov r1, r4
	str r3, [r2, #0]
	str r8, [r0]
	ldr r7, [r7, #0x34]
	mov r2, r5
	mov r3, r6
	mov r0, #1
	blx r7
	b _02235514
_022354DC:
	ldr r5, [r7, #0x38]
	bl ov66_022585F4
	ldr r3, _02235B38 ; =0x0225B6D8
	mov r0, #0
	ldr r2, _02235B34 ; =0x0225B6D4
	ldr r8, [r3]
	ldr r6, [r2, #0]
	mov r1, r0
	str r6, [r3, #0]
	str r8, [r2]
	ldr r6, [r7, #0x34]
	mov r2, r0
	mov r3, r5
	blx r6
_02235514:
	cmp r4, #0
	beq _0223552C
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
_0223552C:
	mov r0, #1
	b _02235690
_02235534:
	bl DWC_ClearError
	ldr r0, [r7, #4]
	subs r0, r0, #1
	str r0, [r7, #4]
	beq _02235608
	bl ov66_022585F4
	ldr r0, [r7, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r7, #0xd
	ldrne r1, [r7, #0x14]
	ldr r0, [r7, #8]
	bl ov66_02258338
	ldr r0, [r7, #0x3c]
	ldr r4, [r7, #0x2c]
	cmp r0, #0
	ldr r0, [r7, #0x18]
	beq _022355B4
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r7, #0x19
	ldrne r5, [r7, #0x20]
	add r0, r7, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r7, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588F4
	b _022355E8
_022355B4:
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r7, #0x19
	ldrne r5, [r7, #0x20]
	add r0, r7, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r7, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588D0
_022355E8:
	cmp r0, #0
	moveq r0, #1
	beq _022355FC
	bl ov66_022585F4
	mov r0, #0
_022355FC:
	cmp r0, #0
	movne r0, #0
	bne _02235690
_02235608:
	ldr r4, [r7, #0x38]
	bl ov66_022585F4
	ldr r3, _02235B38 ; =0x0225B6D8
	mov r0, #0
	ldr r2, _02235B34 ; =0x0225B6D4
	ldr r6, [r3, #0]
	ldr r5, [r2, #0]
	mov r1, r0
	str r5, [r3, #0]
	str r6, [r2, #0]
	ldr r5, [r7, #0x34]
	mov r2, r0
	mov r3, r4
	blx r5
	mov r0, #1
	b _02235690
_02235648:
	bl DWC_ClearError
	ldr r5, [r7, #0x38]
	bl ov66_022585F4
	mov r0, #0
	ldr r4, _02235B38 ; =0x0225B6D8
	ldr r2, _02235B34 ; =0x0225B6D4
	ldr r6, [r4, #0]
	mov r3, r5
	ldr r5, [r2, #0]
	mov r1, r0
	str r5, [r4, #0]
	str r6, [r2, #0]
	ldr r4, [r7, #0x34]
	mov r2, r0
	blx r4
	mov r0, #1
	b _02235690
_0223568C:
	mov r0, #0
_02235690:
	cmp r0, #0
	ldrne r0, _02235B38 ; =0x0225B6D8
	ldrne r0, [r0]
	cmpne r0, #0
	beq _022356C0
	beq _022356B4
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_022356B4:
	ldr r0, _02235B38 ; =0x0225B6D8
	mov r1, #0
	str r1, [r0, #0]
_022356C0:
	mov r0, #1
_022356C4:
	cmp r0, #0
	beq _022356E8
	ldr r0, _02235B3C ; =0x0225B6C4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _02235700
	add sp, sp, #0x6c
	mov r0, #9
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022356E8:
	ldr r0, _02235B3C ; =0x0225B6C4
	ldr r0, [r0, #0]
	cmp r0, #0
	addeq sp, sp, #0x6c
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02235700:
	cmp r0, #0
	beq _02235724
	ldr r0, _02235B3C ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0xa
	addeq sp, sp, #0x6c
	moveq r0, #0xa
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02235724:
	bl ov66_0224477C
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _0223582C
_02235734: ; jump table
	b _0223574C ; case 0
	b _0223582C ; case 1
	b _0223582C ; case 2
	b _022357F4 ; case 3
	b _0223582C ; case 4
	b _02235810 ; case 5
_0223574C:
	bl ov66_022353A4
	ldr r0, _02235B3C ; =0x0225B6C4
	ldr r4, [r0, #0]
	cmp r4, #0
	beq _022357E8
	beq _022357DC
	add r0, r4, #0x194
	bl ov66_0223B620
	add r0, r4, #0x17c
	bl ov66_0223A9FC
	add r0, r4, #0x170
	bl ov66_0223B670
	add r0, r4, #0x134
	bl ov66_0223ABC4
	add r0, r4, #0x134
	bl ov66_0223AD4C
	ldr r1, _02235B40 ; =0x02258EA0
	add r0, r4, #0xe8
	str r1, [r4, #0xe8]
	bl ov66_02241E54
	add r0, r4, #0x110
	bl ov66_0223B8E8
	add r0, r4, #0xec
	bl ov66_0223AA9C
	add r0, r4, #0xd4
	bl ov66_0223BADC
	add r0, r4, #0xbc
	bl ov66_0223BADC
	add r0, r4, #0x58
	bl ov66_0223BADC
	cmp r4, #0
	beq _022357DC
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
_022357DC:
	ldr r0, _02235B3C ; =0x0225B6C4
	mov r1, #0
	str r1, [r0, #0]
_022357E8:
	add sp, sp, #0x6c
	mov r0, #9
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022357F4:
	ldr r0, _02235B3C ; =0x0225B6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #1
	moveq r0, #2
	streq r0, [r1]
	b _0223582C
_02235810:
	bl ov66_02244960
	ldr r1, _02235B3C ; =0x0225B6C4
	cmp r0, #0
	ldr r1, [r1, #0]
	strne r0, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
_0223582C:
	ldr r2, _02235B3C ; =0x0225B6C4
	add r0, sp, #0x28
	add r1, sp, #0x38
	ldr r5, [r2, #0]
	bl ov4_021D806C
	add r0, sp, #0x28
	add r1, sp, #0x38
	bl RTC_ConvertDateTimeToSecond
	ldr r2, [r5, #0x140]
	add r7, r5, #0x138
	mov r6, r0
	mov sb, r1
	str r2, [sp, #0xc]
	cmp r2, r7
	beq _022358FC
	mov fp, #1
	mov sl, #0
	add r4, sp, #0xc
_02235874:
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	subs r1, r6, r1
	ldr r8, [r2, #0x18]
	sbc r0, sb, r0
	ldr r3, [r2, #0x1c]
	subs r1, r8, r1
	sbcs r1, r3, r0
	bge _022358B8
	str r6, [r2, #0x10]
	str sb, [r2, #0x14]
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	blx r1
	cmp r0, #0
	moveq r0, sl
	beq _022358BC
_022358B8:
	mov r0, fp
_022358BC:
	cmp r0, #0
	bne _022358E8
	ldr r8, [sp, #0xc]
	mov r0, r4
	bl ov66_0223AD6C
	add r0, sp, #8
	mov r2, r8
	add r1, r5, #0x134
	str r8, [sp, #4]
	bl ov66_0223AB54
	b _022358F0
_022358E8:
	mov r0, r4
	bl ov66_0223AD6C
_022358F0:
	ldr r2, [sp, #0xc]
	cmp r2, r7
	bne _02235874
_022358FC:
	add r0, r5, #0xe8
	bl ov66_02242460
	add r0, r5, #0x144
	bl ov66_0223EE30
	ldr r0, _02235B3C ; =0x0225B6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _02235B20
_02235924: ; jump table
	b _02235950 ; case 0
	b _02235B20 ; case 1
	b _0223595C ; case 2
	b _02235968 ; case 3
	b _02235988 ; case 4
	b _02235B20 ; case 5
	b _022359E8 ; case 6
	b _02235A50 ; case 7
	b _02235B20 ; case 8
	b _02235B20 ; case 9
	b _02235B20 ; case 10
_02235950:
	add sp, sp, #0x6c
	mov r0, #9
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223595C:
	mov r0, #3
	str r0, [r1, #0]
	b _02235B20
_02235968:
	ldr r0, [r1, #0x144]
	cmp r0, #2
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	movne r0, #4
	strne r0, [r1]
	b _02235B20
_02235988:
	ldr r1, _02235B44 ; =0x02258FB0
	add r0, sp, #0x50
	bl ov66_0223BA6C
	add r0, sp, #0x44
	add r2, sp, #0x50
	mov r1, #0
	bl ov66_022378A8
	ldr r0, [sp, #0x44]
	ldr r1, _02235B48 ; =ov66_0223A250
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0x45
	ldrne r0, [sp, #0x4c]
	mov r2, #0
	bl ov66_0224591C
	add r0, sp, #0x44
	bl ov66_0223BADC
	add r0, sp, #0x50
	bl ov66_0223BADC
	ldr r0, _02235B3C ; =0x0225B6C4
	mov r1, #5
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	b _02235B20
_022359E8:
	bl ov66_02237BB4
	cmp r0, #0
	beq _02235A3C
	ldr r1, _02235B3C ; =0x0225B6C4
	cmp r0, #1
	ldr r1, [r1, #0]
	beq _02235A10
	cmp r0, #2
	beq _02235A18
	b _02235A20
_02235A10:
	mov r0, #2
	b _02235A24
_02235A18:
	mov r0, #3
	b _02235A24
_02235A20:
	mov r0, #0
_02235A24:
	cmp r0, #0
	beq _02235B20
	str r0, [r1, #4]
	mov r0, #0xa
	str r0, [r1, #0]
	b _02235B20
_02235A3C:
	ldr r0, _02235B3C ; =0x0225B6C4
	mov r1, #7
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	b _02235B20
_02235A50:
	bl ov66_0223859C
	cmp r0, #0
	beq _02235B20
	ldr r0, _02235B3C ; =0x0225B6C4
	add r7, sp, #0x60
	ldr r4, [r0, #0]
	mov r0, #0
	str r0, [r4, #0x10c]
	ldr r0, [r4, #0xfc]
	mov r6, #1
	str r0, [sp, #0x5c]
	add r0, r4, #0x100
	ldmia r0, {r2, r3}
	stmia r7, {r2, r3}
	ldr r1, [sp, #0x5c]
	str r6, [sp, #0x68]
	add r0, sp, #0x18
	str r1, [sp, #0x14]
	add r5, sp, #0x14
	ldmia r7, {r2, r3}
	stmia r0, {r2, r3}
	mov r1, r5
	add r0, r4, #0xfc
	mov r2, #0x10
	str r6, [sp, #0x20]
	str r6, [sp, #0x24]
	bl memcmp
	cmp r0, #0
	moveq r0, r6
	movne r0, #0
	cmp r0, #0
	bne _02235AF8
	ldr r0, [r5, #0]
	add r1, r5, #4
	str r0, [r4, #0xfc]
	add r0, r4, #0x100
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r5, #0xc]
	mov r0, #1
	str r1, [r4, #0x108]
	str r0, [r4, #0x10c]
_02235AF8:
	mov r0, #1
	ldr r1, _02235B3C ; =0x0225B6C4
	str r0, [r4, #0x128]
	ldr r2, [r1, #0]
	mov r3, #8
	str r3, [r2, #0]
	ldr r2, [r1, #0]
	mov r1, #0
	ldr r2, [r2, #8]
	blx r2
_02235B20:
	ldr r0, _02235B3C ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	add sp, sp, #0x6c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02235B34: .word 0x0225B6D4
_02235B38: .word 0x0225B6D8
_02235B3C: .word 0x0225B6C4
_02235B40: .word 0x02258EA0
_02235B44: .word 0x02258FB0
_02235B48: .word ov66_0223A250
	arm_func_end ov66_02235428

	arm_func_start ov66_02235B4C
ov66_02235B4C: ; 0x02235B4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x28
	bl ov66_0223B8E8
	add r0, r4, #0x18
	bl ov66_0223BADC
	add r0, r4, #0xc
	bl ov66_0223BADC
	cmp r4, #0
	beq _02235B84
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
_02235B84:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_02235B4C

	arm_func_start ov66_02235B8C
ov66_02235B8C: ; 0x02235B8C
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldrne r0, [r0]
	bx lr
	arm_func_end ov66_02235B8C

	arm_func_start ov66_02235BA0
ov66_02235BA0: ; 0x02235BA0
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x54
	ldr r1, _02235D9C ; =0x0225B6C4
	mov r4, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	addeq sp, sp, #0x54
	moveq r0, #4
	ldmeqia sp!, {r4, r5, pc}
	beq _02235BDC
	ldr r0, [r1, #0]
	cmp r0, #0xa
	addeq sp, sp, #0x54
	moveq r0, #7
	ldmeqia sp!, {r4, r5, pc}
_02235BDC:
	cmp r1, #0
	beq _02235C00
	ldr r0, _02235D9C ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #8
	addne sp, sp, #0x54
	movne r0, #4
	ldmneia sp!, {r4, r5, pc}
_02235C00:
	cmp r1, #0
	beq _02235C28
	ldr r0, [r1, #0xd0]
	cmp r0, #5
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addne sp, sp, #0x54
	movne r0, #4
	ldmneia sp!, {r4, r5, pc}
_02235C28:
	ldr r5, _02235DA0 ; =ov66_02239B54
	ldr lr, _02235DA4 ; =ov66_02239D60
	ldr ip, _02235DA8 ; =ov66_02239FA4
	ldr r3, _02235DAC ; =ov66_0223A1E4
	ldr r2, _02235DB0 ; =ov66_0223A958
	add r0, sp, #0x24
	str r5, [sp, #0x3c]
	str lr, [sp, #0x40]
	str ip, [sp, #0x44]
	str r3, [sp, #0x48]
	str r2, [sp, #0x4c]
	str r4, [sp, #0x50]
	bl ov66_02235DC4
	add r0, sp, #0x30
	add r2, sp, #0x24
	mov r1, r4
	bl ov66_022378A8
	add r0, sp, #0x24
	bl ov66_0223BADC
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _02235CAC
_02235C80: ; jump table
	b _02235CAC ; case 0
	b _02235C94 ; case 1
	b _02235C94 ; case 2
	b _02235C9C ; case 3
	b _02235CA4 ; case 4
_02235C94:
	ldr r2, _02235DB4 ; =0x02258C4C
	b _02235CB0
_02235C9C:
	ldr r2, _02235DB8 ; =0x02258C0C
	b _02235CB0
_02235CA4:
	ldr r2, _02235DBC ; =0x02258C2C
	b _02235CB0
_02235CAC:
	mov r2, #0
_02235CB0:
	ldr r0, [sp, #0x30]
	ldr r1, _02235DC0 ; =ov66_022399A8
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0x31
	ldrne r0, [sp, #0x38]
	add r3, sp, #0x3c
	stmia sp, {r1, r4}
	ldr r2, [r2, #0x1c]
	mov r1, #0
	bl ov66_02244F44
	mov r5, r0
	ldr r1, _02235D9C ; =0x0225B6C4
	mov r0, #0
	strb r0, [sp, #8]
	cmp r5, #1
	ldr r1, [r1, #0]
	beq _02235D04
	cmp r5, #2
	moveq r0, #3
	b _02235D08
_02235D04:
	mov r0, #2
_02235D08:
	cmp r0, #0
	strne r0, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
	cmp r5, #0
	beq _02235D34
	add r0, sp, #0x30
	bl ov66_0223BADC
	add sp, sp, #0x54
	mov r0, r5
	ldmia sp!, {r4, r5, pc}
_02235D34:
	add r0, sp, #0x10
	str r4, [sp, #0xc]
	add r1, sp, #0x30
	add r4, sp, #0xc
	bl ov66_0223B938
	mov r1, #0
	ldr r0, _02235D9C ; =0x0225B6C4
	ldr r2, [sp, #0xc]
	ldr r5, [r0, #0]
	str r1, [r4, #0x10]
	str r1, [r4, #0x14]
	add r1, sp, #0x10
	str r2, [r5, #0xd0]
	add r0, r5, #0xd4
	bl ov66_0223BC5C
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x10
	str r1, [r5, #0xe0]
	ldr r1, [sp, #0x20]
	str r1, [r5, #0xe4]
	bl ov66_0223BADC
	add r0, sp, #0x30
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x54
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02235D9C: .word 0x0225B6C4
_02235DA0: .word ov66_02239B54
_02235DA4: .word ov66_02239D60
_02235DA8: .word ov66_02239FA4
_02235DAC: .word ov66_0223A1E4
_02235DB0: .word ov66_0223A958
_02235DB4: .word 0x02258C4C
_02235DB8: .word 0x02258C0C
_02235DBC: .word 0x02258C2C
_02235DC0: .word ov66_022399A8
	arm_func_end ov66_02235BA0

	arm_func_start ov66_02235DC4
ov66_02235DC4: ; 0x02235DC4
	ldr ip, _02235DD0 ; =ov66_0223B938
	add r1, r1, #0x58
	bx ip
	; .align 2, 0
_02235DD0: .word ov66_0223B938
	arm_func_end ov66_02235DC4

	arm_func_start ov66_02235DD4
ov66_02235DD4: ; 0x02235DD4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x40
	ldr r0, _02235FC4 ; =0x0225B6C4
	ldr r1, [r0, #0]
	cmp r1, #0
	addeq sp, sp, #0x40
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	beq _02235E0C
	ldr r0, [r1, #0]
	cmp r0, #0xa
	addeq sp, sp, #0x40
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, pc}
_02235E0C:
	cmp r1, #0
	beq _02235E30
	ldr r0, _02235FC4 ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #8
	addne sp, sp, #0x40
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
_02235E30:
	cmp r1, #0
	beq _02235E50
	ldr r0, [r1, #0xd0]
	cmp r0, #5
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02235E5C
_02235E50:
	add sp, sp, #0x40
	mov r0, #4
	ldmia sp!, {r3, r4, r5, pc}
_02235E5C:
	add r0, sp, #0x24
	add r1, r1, #0xd0
	bl ov66_02235FC8
	ldr r0, [sp, #0x24]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0x25
	ldrne r0, [sp, #0x2c]
	bl ov66_022451C8
	ldr r1, _02235FC4 ; =0x0225B6C4
	mov r2, #0
	strb r2, [sp]
	cmp r0, #1
	ldr r1, [r1, #0]
	beq _02235EA4
	cmp r0, #2
	moveq r2, #3
	b _02235EA8
_02235EA4:
	mov r2, #2
_02235EA8:
	cmp r2, #0
	strne r2, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
	add r0, sp, #0x24
	bl ov66_0223BADC
	ldr r0, _02235FC4 ; =0x0225B6C4
	mov r1, #0
	ldr r4, [r0, #0]
	add r2, sp, #0x18
	mov r0, r1
_02235ED4:
	str r0, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _02235ED4
	mov r2, #5
	add r1, sp, #0x18
	add r0, r4, #0xd4
	str r2, [r4, #0xd0]
	bl ov66_0223BC5C
	mov r1, #0
	str r1, [r4, #0xe0]
	add r0, sp, #0x18
	str r1, [r4, #0xe4]
	bl ov66_0223BADC
	ldr r0, _02235FC4 ; =0x0225B6C4
	mov r1, #0
	ldr r4, [r0, #0]
	add r5, sp, #4
	str r1, [r4, #0x10c]
	ldr r0, [r4, #0xfc]
	add r1, sp, #0x34
	str r0, [sp, #0x30]
	add r0, r4, #0x100
	ldmia r0, {r2, r3}
	stmia r1, {r2, r3}
	ldr ip, [r4, #0x108]
	mov r0, #5
	str ip, [sp, #0x3c]
	str r0, [sp, #0x30]
	str r0, [sp, #4]
	ldmia r1, {r2, r3}
	add r1, sp, #8
	stmia r1, {r2, r3}
	mov r0, #1
	str r0, [sp, #0x14]
	mov r1, r5
	add r0, r4, #0xfc
	mov r2, #0x10
	str ip, [sp, #0x10]
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _02235FB0
	ldr r0, [r5, #0]
	add r1, r5, #4
	str r0, [r4, #0xfc]
	add r0, r4, #0x100
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r5, #0xc]
	mov r0, #1
	str r1, [r4, #0x108]
	str r0, [r4, #0x10c]
_02235FB0:
	mov r0, #1
	str r0, [r4, #0x128]
	mov r0, #0
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02235FC4: .word 0x0225B6C4
	arm_func_end ov66_02235DD4

	arm_func_start ov66_02235FC8
ov66_02235FC8: ; 0x02235FC8
	ldr ip, _02235FD4 ; =ov66_0223B938
	add r1, r1, #4
	bx ip
	; .align 2, 0
_02235FD4: .word ov66_0223B938
	arm_func_end ov66_02235FC8

	arm_func_start ov66_02235FD8
ov66_02235FD8: ; 0x02235FD8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x1c
	ldr r1, _02236080 ; =0x0225B6C4
	mov r5, r0
	ldr r4, [r1, #0]
	cmp r4, #0
	addeq sp, sp, #0x1c
	moveq r0, #4
	ldmeqia sp!, {r4, r5, pc}
	beq _02236014
	ldr r0, [r4, #0]
	cmp r0, #0xa
	addeq sp, sp, #0x1c
	moveq r0, #7
	ldmeqia sp!, {r4, r5, pc}
_02236014:
	cmp r4, #0
	beq _02236038
	ldr r0, _02236080 ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #8
	addne sp, sp, #0x1c
	movne r0, #4
	ldmneia sp!, {r4, r5, pc}
_02236038:
	add r0, sp, #0xc
	add r1, sp, #0
	bl ov4_021D806C
	add r0, sp, #0xc
	add r1, sp, #0
	bl RTC_ConvertDateTimeToSecond
	stmia r5, {r0, r1}
	ldr r2, [r4, #0x14c]
	ldr r1, [r4, #0x150]
	mov r0, #0
	str r2, [r5, #8]
	str r1, [r5, #0xc]
	ldr r2, [r4, #0x154]
	ldr r1, [r4, #0x158]
	str r2, [r5, #0x10]
	str r1, [r5, #0x14]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02236080: .word 0x0225B6C4
	arm_func_end ov66_02235FD8

	arm_func_start ov66_02236084
ov66_02236084: ; 0x02236084
	stmfd sp!, {r3, lr}
	ldr r2, _022360F0 ; =0x0225B6C4
	ldr r3, [r2, #0]
	mov r2, r1
	cmp r3, #0
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	beq _022360B4
	ldr r1, [r3, #0]
	cmp r1, #0xa
	moveq r0, #7
	ldmeqia sp!, {r3, pc}
_022360B4:
	cmp r3, #0
	beq _022360D4
	ldr r1, _022360F0 ; =0x0225B6C4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0]
	cmp r1, #8
	movne r0, #4
	ldmneia sp!, {r3, pc}
_022360D4:
	mov r1, r0
	add r0, r3, #0x144
	bl ov66_0223CA80
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022360F0: .word 0x0225B6C4
	arm_func_end ov66_02236084

	arm_func_start ov66_022360F4
ov66_022360F4: ; 0x022360F4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r0, _022361B4 ; =0x0225B6C4
	ldr r1, [r0, #0]
	cmp r1, #0
	addeq sp, sp, #0xc
	moveq r0, #3
	ldmeqia sp!, {r3, r4, pc}
	beq _0223612C
	ldr r0, [r1, #0]
	cmp r0, #0xa
	addeq sp, sp, #0xc
	moveq r0, #3
	ldmeqia sp!, {r3, r4, pc}
_0223612C:
	cmp r1, #0
	beq _02236150
	ldr r0, _022361B4 ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #8
	addne sp, sp, #0xc
	movne r0, #3
	ldmneia sp!, {r3, r4, pc}
_02236150:
	ldr r0, [r1, #0xd0]
	cmp r0, #5
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	add r1, r1, #0xd0
	bl ov66_02235FC8
	ldr r0, [sp]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #1
	ldrne r0, [sp, #8]
	bl ov66_02244988
	mov r4, r0
	add r0, sp, #0
	bl ov66_0223BADC
	cmp r4, #0
	movne r0, #2
	moveq r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_022361B4: .word 0x0225B6C4
	arm_func_end ov66_022360F4

	arm_func_start ov66_022361B8
ov66_022361B8: ; 0x022361B8
	stmfd sp!, {r3, lr}
	ldr ip, _02236214 ; =0x0225B6C4
	ldr lr, [ip]
	cmp lr, #0
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	beq _022361E4
	ldr ip, [lr]
	cmp ip, #0xa
	moveq r0, #7
	ldmeqia sp!, {r3, pc}
_022361E4:
	cmp lr, #0
	beq _02236204
	ldr ip, _02236214 ; =0x0225B6C4
	ldr ip, [ip]
	ldr ip, [ip]
	cmp ip, #8
	movne r0, #4
	ldmneia sp!, {r3, pc}
_02236204:
	ldr ip, [sp, #8]
	str ip, [sp]
	bl ov66_02237348
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236214: .word 0x0225B6C4
	arm_func_end ov66_022361B8

	arm_func_start ov66_02236218
ov66_02236218: ; 0x02236218
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x14
	ldr r4, _0223633C ; =0x0225B6C4
	mov r6, r0
	ldr ip, [r4]
	mov r5, r2
	cmp ip, #0
	mov r4, r3
	addeq sp, sp, #0x14
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	beq _0223625C
	ldr r0, [ip]
	cmp r0, #0xa
	addeq sp, sp, #0x14
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_0223625C:
	cmp ip, #0
	beq _02236280
	ldr r0, _0223633C ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #8
	addne sp, sp, #0x14
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, r6, pc}
_02236280:
	mov r2, r1
	add r0, sp, #8
	add r1, ip, #0xb8
	bl ov66_02236348
	ldr r1, _02236340 ; =0x02258FB4
	add r0, sp, #8
	bl ov66_0223BEEC
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _022362C4
	add r0, sp, #8
	bl ov66_0223BADC
	add sp, sp, #0x14
	mov r0, #5
	ldmia sp!, {r3, r4, r5, r6, pc}
_022362C4:
	ldr r0, [sp, #8]
	ldr r3, _02236344 ; =ov66_0223A21C
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #9
	ldrne r0, [sp, #0x10]
	mov r1, r6
	mov r2, r5
	str r4, [sp]
	bl ov66_022456B0
	mov r4, r0
	ldr r1, _0223633C ; =0x0225B6C4
	mov r0, #0
	strb r0, [sp, #4]
	cmp r4, #1
	ldr r1, [r1, #0]
	beq _02236314
	cmp r4, #2
	moveq r0, #3
	b _02236318
_02236314:
	mov r0, #2
_02236318:
	cmp r0, #0
	strne r0, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
	add r0, sp, #8
	bl ov66_0223BADC
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223633C: .word 0x0225B6C4
_02236340: .word 0x02258FB4
_02236344: .word ov66_0223A21C
	arm_func_end ov66_02236218

	arm_func_start ov66_02236348
ov66_02236348: ; 0x02236348
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	cmp r2, #0
	bne _02236374
	bl ov66_02235FC8
	add r3, sp, #0
	ldmia r4, {r0, r1, r2}
	add sp, sp, #0xc
	stmia r3, {r0, r1, r2}
	ldmia sp!, {r3, r4, pc}
_02236374:
	add r1, r1, #0x18
	bl ov66_02235FC8
	add r3, sp, #0
	ldmia r4, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_02236348

	arm_func_start ov66_02236390
ov66_02236390: ; 0x02236390
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, _02236410 ; =0x0225B6C4
	ldr lr, [ip]
	cmp lr, #0
	addeq sp, sp, #0xc
	moveq r0, #4
	ldmeqia sp!, {pc}
	beq _022363C8
	ldr ip, [lr]
	cmp ip, #0xa
	addeq sp, sp, #0xc
	moveq r0, #7
	ldmeqia sp!, {pc}
_022363C8:
	cmp lr, #0
	beq _022363EC
	ldr ip, _02236410 ; =0x0225B6C4
	ldr ip, [ip]
	ldr ip, [ip]
	cmp ip, #8
	addne sp, sp, #0xc
	movne r0, #4
	ldmneia sp!, {pc}
_022363EC:
	stmia sp, {r1, r2}
	mov r1, r0
	mov r2, #1
	str r3, [sp, #8]
	mov r3, r2
	mvn r0, #0
	bl ov66_02237170
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_02236410: .word 0x0225B6C4
	arm_func_end ov66_02236390

	arm_func_start ov66_02236414
ov66_02236414: ; 0x02236414
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, _02236490 ; =0x0225B6C4
	ldr lr, [ip]
	cmp lr, #0
	addeq sp, sp, #0xc
	moveq r0, #4
	ldmeqia sp!, {pc}
	beq _0223644C
	ldr ip, [lr]
	cmp ip, #0xa
	addeq sp, sp, #0xc
	moveq r0, #7
	ldmeqia sp!, {pc}
_0223644C:
	cmp lr, #0
	beq _02236470
	ldr ip, _02236490 ; =0x0225B6C4
	ldr ip, [ip]
	ldr ip, [ip]
	cmp ip, #8
	addne sp, sp, #0xc
	movne r0, #4
	ldmneia sp!, {pc}
_02236470:
	stmia sp, {r1, r2}
	mov r2, #1
	str r3, [sp, #8]
	mov r3, r2
	mov r1, #5
	bl ov66_02237170
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_02236490: .word 0x0225B6C4
	arm_func_end ov66_02236414

	arm_func_start ov66_02236494
ov66_02236494: ; 0x02236494
	ldr r0, _022364AC ; =0x0225B6C4
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #0x4c]
	mvneq r0, #0
	bx lr
	; .align 2, 0
_022364AC: .word 0x0225B6C4
	arm_func_end ov66_02236494

	arm_func_start ov66_022364B0
ov66_022364B0: ; 0x022364B0
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldrne r0, [r0]
	bx lr
	arm_func_end ov66_022364B0

	arm_func_start ov66_022364C4
ov66_022364C4: ; 0x022364C4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x3c
	ldr r3, _02236670 ; =0x0225B6C4
	mov r6, r2
	ldr r5, [r3, #0]
	cmp r5, #0
	addeq sp, sp, #0x3c
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	beq _02236500
	ldr r2, [r5, #0]
	cmp r2, #0xa
	addeq sp, sp, #0x3c
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02236500:
	cmp r5, #0
	beq _02236524
	ldr r2, _02236670 ; =0x0225B6C4
	ldr r2, [r2, #0]
	ldr r2, [r2, #0]
	cmp r2, #8
	addne sp, sp, #0x3c
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02236524:
	mov r2, #0
	str r2, [sp, #0x20]
	add r4, r0, r1
	str r2, [sp, #0x24]
	str r2, [sp, #0x28]
	strb r2, [sp, #9]
	strb r2, [sp, #0xa]
	strb r2, [sp, #8]
	strb r2, [sp, #4]
	sub r2, sp, #4
	ldr r1, [sp, #0x1c]
	str r4, [r2, #0]
	str r1, [r2, #4]
	add ip, sp, #0x20
	str r0, [sp, #0x10]
	ldr r3, [r2, #0]
	add r1, sp, #0x10
	mov r0, ip
	str r4, [sp, #0x18]
	ldmia r1, {r1, r2}
	bl ov66_022366CC
	mov r2, #0
	ldrb r0, [sp, #0xc]
	ldr r1, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r2, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r2, [sp, #0x34]
	sub r2, sp, #4
	strb r0, [r2]
	add r4, sp, #0x2c
	ldr r3, [r2, #0]
	mov r0, r4
	add r2, r1, ip
	bl ov66_0223C2F4
	mov r0, #1
	cmp r6, #0
	str r0, [r4, #0xc]
	strne r0, [r5, #0x11c]
	mov r6, r4
	ldr r8, [r5, #0x114]
	ldr r0, [r6, #4]
	mov r7, #0
	cmp r8, r0
	bne _02236610
	cmp r8, #0
	beq _0223660C
	add r0, r5, #0x110
	bl ov66_02235B8C
	mov r4, r0
	mov r0, r6
	bl ov66_02235B8C
	mov r1, r0
	mov r0, r4
	mov r2, r8
	bl memcmp
	cmp r0, #0
	bne _02236610
_0223660C:
	mov r7, #1
_02236610:
	cmp r7, #0
	bne _0223664C
	add r0, r5, #0x110
	cmp r0, r6
	beq _02236644
	mov r3, #0
	ldmia r6, {r1, r4}
	strb r3, [sp, #0xb]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r3, [r2, #0]
	add r2, r1, r4
	bl ov66_02236674
_02236644:
	mov r0, #1
	str r0, [r5, #0x11c]
_0223664C:
	add r0, sp, #0x2c
	bl ov66_0223B8E8
	mov r1, #1
	add r0, sp, #0x20
	str r1, [r5, #0x12c]
	bl ov66_0223B8E8
	mov r0, #0
	add sp, sp, #0x3c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02236670: .word 0x0225B6C4
	arm_func_end ov66_022364C4

	arm_func_start ov66_02236674
ov66_02236674: ; 0x02236674
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r1, [r7, #8]
	sub r4, r5, r6
	cmp r4, r1
	bls _022366B4
	mov r2, #0
	sub r1, r4, r1
	strb r2, [sp]
	bl ov66_0223B7A4
	mov r2, r0
	mov r0, r7
	mov r1, r4
	bl ov66_0223B734
_022366B4:
	ldr r0, [r7, #0]
	mov r1, r6
	sub r2, r5, r6
	bl memmove
	str r4, [r7, #4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02236674

	arm_func_start ov66_022366CC
ov66_022366CC: ; 0x022366CC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r3, [sp, #0x24]
	ldr r2, [sp, #0x1c]
	ldr r1, [r5, #8]
	sub r4, r3, r2
	cmp r4, r1
	bls _02236714
	mov r2, #0
	sub r1, r4, r1
	strb r2, [sp, #2]
	bl ov66_0223B7A4
	mov r2, r0
	mov r0, r5
	mov r1, r4
	bl ov66_0223B734
_02236714:
	ldr r1, [sp, #0x1c]
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #0x24]
	str r1, [sp, #4]
	str r0, [sp, #8]
	cmp r1, r3
	ldr ip, [r5]
	beq _0223675C
	mov r2, #0
_02236738:
	ldr r0, [sp, #4]
	strb r2, [sp]
	ldrb r1, [r0], #1
	str r0, [sp, #4]
	cmp r0, r3
	strb r1, [sp, #1]
	ldrsb r1, [sp, #1]
	strb r1, [ip], #1
	bne _02236738
_0223675C:
	str r4, [r5, #4]
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_022366CC

	arm_func_start ov66_02236770
ov66_02236770: ; 0x02236770
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x94
	ldr r1, _022369EC ; =0x0225B6C4
	mov r5, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	addeq sp, sp, #0x94
	moveq r0, #4
	ldmeqia sp!, {r4, r5, pc}
	beq _022367AC
	ldr r0, [r1, #0]
	cmp r0, #0xa
	addeq sp, sp, #0x94
	moveq r0, #7
	ldmeqia sp!, {r4, r5, pc}
_022367AC:
	cmp r1, #0
	beq _022367D0
	ldr r0, _022369EC ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #8
	addne sp, sp, #0x94
	movne r0, #4
	ldmneia sp!, {r4, r5, pc}
_022367D0:
	mov r1, #0
	add r0, sp, #0x88
	mov r2, r1
_022367DC:
	str r2, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _022367DC
	ldr r0, _022369EC ; =0x0225B6C4
	ldr r4, [r0, #0]
	ldr r0, [r4, #0x68]
	cmp r0, #0
	bne _022368EC
	mov r0, #1
	str r0, [r4, #0x68]
	ldr r0, [r5, #0]
	add ip, r5, #0x10
	str r0, [r4, #0x74]
	ldr r0, [r5, #4]
	add r3, r4, #0x84
	str r0, [r4, #0x78]
	ldr r0, [r5, #8]
	mov r2, #0x10
	str r0, [r4, #0x7c]
	ldr r0, [r5, #0xc]
	str r0, [r4, #0x80]
_02236834:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _02236834
	add ip, r5, #0x30
	add r3, r4, #0xa4
	mov r2, #0xa
_02236860:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _02236860
	bl ov4_021EA840
	ldr r1, _022369F0 ; =0x10624DD3
	mov r3, #0x3e8
	umull r1, r2, r0, r1
	mov r2, r2, lsr #6
	umull r1, r2, r3, r2
	sub r2, r0, r1
	str r2, [sp]
	ldr r3, [r4, #0x4c]
	ldr r2, _022369F4 ; =0x02258E88
	add r0, sp, #0x7c
	mov r1, #0x14
	bl ov66_02236A38
	add r0, sp, #0x88
	add r1, sp, #0x7c
	bl ov66_0223BC5C
	add r0, sp, #0x7c
	bl ov66_0223BADC
	ldr r0, [sp, #0x88]
	mov r2, #0x13
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x89
	ldrne r1, [sp, #0x90]
	add r0, r4, #0xa4
	bl strncpy
	mov r2, #1
_022368EC:
	cmp r2, #0
	bne _02236908
	add r0, sp, #0x88
	bl ov66_0223BADC
	add sp, sp, #0x94
	mov r0, #4
	ldmia sp!, {r4, r5, pc}
_02236908:
	ldr r0, [sp, #0x88]
	mov r2, #0x13
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x89
	ldrne r1, [sp, #0x90]
	add r0, r5, #0x30
	bl strncpy
	ldr r2, _022369EC ; =0x0225B6C4
	add r0, sp, #0x6c
	add r1, sp, #0x60
	ldr r4, [r2, #0]
	bl ov4_021D806C
	add r0, sp, #0x6c
	add r1, sp, #0x60
	bl RTC_ConvertDateTimeToSecond
	mov r2, #0
	subs r0, r0, #5
	str r0, [sp, #0x10]
	sbc r0, r1, #0
	str r0, [sp, #0x14]
	ldr r0, _022369F8 ; =ov66_02238728
	mov r1, #5
	str r1, [sp, #0x18]
	str r0, [sp, #0x24]
	str r2, [sp, #0x1c]
	str r2, [sp, #0x20]
	add r0, sp, #0x28
	mov r1, #3
	add r2, sp, #0x10
	bl ov66_022369FC
	mov r0, #0
	add r2, sp, #0x2c
	add lr, sp, #0x48
	add r1, r4, #0x134
	strb r0, [sp, #5]
	strb r0, [sp, #4]
	ldr r0, [sp, #0x28]
	add ip, r2, #8
	str r0, [sp, #0x44]
	ldr r4, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldmia r2, {r2, r3}
	stmia lr, {r2, r3}
	add r5, lr, #8
	ldmia ip, {r2, r3}
	stmia r5, {r2, r3}
	str r0, [lr, #0x14]
	add r0, sp, #8
	add r2, sp, #0x44
	str r4, [lr, #0x10]
	bl ov66_0223AABC
	add r0, sp, #0x88
	bl ov66_0223BADC
	mov r0, #0
	add sp, sp, #0x94
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_022369EC: .word 0x0225B6C4
_022369F0: .word 0x10624DD3
_022369F4: .word 0x02258E88
_022369F8: .word ov66_02238728
	arm_func_end ov66_02236770

	arm_func_start ov66_022369FC
ov66_022369FC: ; 0x022369FC
	stmfd sp!, {r3, lr}
	mov lr, r2
	str r1, [r0, #0]
	add ip, r0, #4
	ldmia lr, {r2, r3}
	stmia ip, {r2, r3}
	add r1, lr, #8
	add r0, ip, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r0, [lr, #0x10]
	str r0, [ip, #0x10]
	ldr r0, [lr, #0x14]
	str r0, [ip, #0x14]
	ldmia sp!, {r3, pc}
	arm_func_end ov66_022369FC

	arm_func_start ov66_02236A38
ov66_02236A38: ; 0x02236A38
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r2, #0
	mov r5, r0
	add r0, sp, #0
	mov r4, r1
	str r2, [sp]
	str r2, [sp, #4]
	str r2, [sp, #8]
	bl ov66_0223B6C0
	add r0, sp, #0
	bl ov66_02236AB0
	add r1, sp, #0x20
	bic r3, r1, #3
	ldr r2, [sp, #0x20]
	mov r1, r4
	add r3, r3, #4
	bl OS_VSNPrintf
	add r0, sp, #0
	bl ov66_02236AB0
	mov r1, r0
	mov r0, r5
	bl ov66_0223BA6C
	add r0, sp, #0
	bl ov66_0223B8E8
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_02236A38

	arm_func_start ov66_02236AB0
ov66_02236AB0: ; 0x02236AB0
	ldr r1, [r0, #4]
	cmp r1, #0
	moveq r0, #0
	ldrne r0, [r0]
	bx lr
	arm_func_end ov66_02236AB0

	arm_func_start ov66_02236AC4
ov66_02236AC4: ; 0x02236AC4
	stmfd sp!, {r4, lr}
	ldr r1, _02236BB4 ; =0x0225B6C4
	ldr r2, [r1, #0]
	cmp r2, #0
	moveq r0, #4
	ldmeqia sp!, {r4, pc}
	beq _02236AF0
	ldr r1, [r2, #0]
	cmp r1, #0xa
	moveq r0, #7
	ldmeqia sp!, {r4, pc}
_02236AF0:
	cmp r2, #0
	beq _02236B10
	ldr r1, _02236BB4 ; =0x0225B6C4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0]
	cmp r1, #8
	movne r0, #4
	ldmneia sp!, {r4, pc}
_02236B10:
	ldr r1, _02236BB4 ; =0x0225B6C4
	ldr r4, [r1, #0]
	ldr r1, [r4, #0x68]
	cmp r1, #0
	moveq r0, #0
	beq _02236BA4
	ldr r1, [r0, #0]
	add lr, r0, #0x10
	str r1, [r4, #0x74]
	ldr r1, [r0, #4]
	add ip, r4, #0x84
	str r1, [r4, #0x78]
	ldr r1, [r0, #8]
	mov r3, #0x10
	str r1, [r4, #0x7c]
	ldr r1, [r0, #0xc]
	str r1, [r4, #0x80]
_02236B54:
	ldrb r2, [lr]
	ldrb r1, [lr, #1]
	add lr, lr, #2
	subs r3, r3, #1
	strb r2, [ip]
	strb r1, [ip, #1]
	add ip, ip, #2
	bne _02236B54
	add ip, r0, #0x30
	add r3, r4, #0xa4
	mov r2, #0xa
_02236B80:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _02236B80
	mov r0, #1
_02236BA4:
	cmp r0, #0
	moveq r0, #4
	movne r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02236BB4: .word 0x0225B6C4
	arm_func_end ov66_02236AC4

	arm_func_start ov66_02236BB8
ov66_02236BB8: ; 0x02236BB8
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r0, _02236C9C ; =0x0225B6C4
	ldr r1, [r0, #0]
	cmp r1, #0
	addeq sp, sp, #0x10
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	beq _02236BF0
	ldr r0, [r1, #0]
	cmp r0, #0xa
	addeq sp, sp, #0x10
	moveq r0, #7
	ldmeqia sp!, {r3, pc}
_02236BF0:
	cmp r1, #0
	beq _02236C14
	ldr r0, _02236C9C ; =0x0225B6C4
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #8
	addne sp, sp, #0x10
	movne r0, #4
	ldmneia sp!, {r3, pc}
_02236C14:
	ldr r0, _02236C9C ; =0x0225B6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x68]
	cmp r0, #0
	mov r0, #0
	strne r0, [r1, #0x68]
	movne r0, #1
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	ldr r0, _02236C9C ; =0x0225B6C4
	mov r1, #0
	ldr r2, [r0, #0]
	mov r0, #2
	str r0, [sp]
	add r0, r2, #0x74
	str r0, [sp, #4]
	mov r0, #0x44
	str r0, [sp, #8]
	ldr r0, [r2, #0x4c]
	mov r3, r1
	mov r2, #1
	bl ov66_02237170
	ldr r0, _02236C9C ; =0x0225B6C4
	mov r2, #3
	ldr r0, [r0, #0]
	add r1, sp, #0xc
	add r0, r0, #0x134
	str r2, [sp, #0xc]
	bl ov66_02236CA0
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02236C9C: .word 0x0225B6C4
	arm_func_end ov66_02236BB8

	arm_func_start ov66_02236CA0
ov66_02236CA0: ; 0x02236CA0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	mov r2, r1
	add r0, sp, #8
	mov r1, r4
	bl ov66_02236CF0
	ldr r2, [sp, #8]
	add r0, r4, #4
	cmp r2, r0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #4
	mov r1, r4
	str r2, [sp]
	bl ov66_0223AB54
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_02236CA0

	arm_func_start ov66_02236CF0
ov66_02236CF0: ; 0x02236CF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	ldr r2, [r5, #4]
	mov r0, r5
	mov r1, r4
	add r3, r5, #4
	bl ov66_02236D44
	add r1, r5, #4
	cmp r0, r1
	beq _02236D30
	ldr r2, [r4, #0]
	ldr r1, [r0, #0xc]
	cmp r2, r1
	bhs _02236D3C
_02236D30:
	add r0, r5, #4
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
_02236D3C:
	str r0, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_02236CF0

	arm_func_start ov66_02236D44
ov66_02236D44: ; 0x02236D44
	cmp r2, #0
	beq _02236D6C
	ldr r1, [r1, #0]
_02236D50:
	ldr r0, [r2, #0xc]
	cmp r0, r1
	movhs r3, r2
	ldrhs r2, [r2]
	ldrlo r2, [r2, #4]
	cmp r2, #0
	bne _02236D50
_02236D6C:
	mov r0, r3
	bx lr
	arm_func_end ov66_02236D44

	arm_func_start ov66_02236D74
ov66_02236D74: ; 0x02236D74
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x334
	ldr r1, _022370E8 ; =0x0225B6C4
	mov r5, r0
	ldr r2, [r1, #0]
	cmp r2, #0
	addeq sp, sp, #0x334
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	beq _02236DB0
	ldr r0, [r2, #0]
	cmp r0, #0xa
	addeq sp, sp, #0x334
	moveq r0, #7
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02236DB0:
	cmp r5, #0
	blt _02236DC0
	cmp r5, #2
	ble _02236DCC
_02236DC0:
	add sp, sp, #0x334
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02236DCC:
	add r1, sp, #0x5c
	add r0, r2, #0x144
	bl ov66_0223EDE4
	cmp r0, #0
	beq _02236DF4
	ldr r0, _022370E8 ; =0x0225B6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x6c]
	cmp r0, #0
	beq _02236E00
_02236DF4:
	add sp, sp, #0x334
	mov r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_02236E00:
	add r0, r1, #0x110
	bl ov66_02235B8C
	mov r4, r0
	mov r0, #0
	add r3, sp, #0x30
	mov r1, r0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r2, _022370E8 ; =0x0225B6C4
	str r0, [r3, #0]
	ldr r1, [r2, #0]
	add r0, r1, #0x110
	bl ov66_02235B8C
	ldr r1, _022370E8 ; =0x0225B6C4
	mov r2, #1
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x4c]
	strh r2, [sp, #0x20]
	str r1, [sp, #0x1c]
	ldrb r1, [r0, #0x42]
	strb r1, [sp, #0x22]
	ldrb r1, [r0, #0x39]
	add r0, sp, #0x24
	strb r1, [sp, #0x23]
	bl OS_GetMacAddress
	ldrh r8, [sp, #0x20]
	ldrb r7, [sp, #0x22]
	ldrb r6, [sp, #0x23]
	ldrb r2, [sp, #0x25]
	ldrb r3, [sp, #0x24]
	ldrb r1, [sp, #0x26]
	ldrb r0, [sp, #0x27]
	ldrb ip, [sp, #0x28]
	strh r8, [sp, #0x34]
	ldrb r8, [sp, #0x29]
	strb r7, [sp, #0x36]
	ldrh r7, [sp, #0x2a]
	strb r6, [sp, #0x37]
	ldr lr, [sp, #0x1c]
	ldr r6, [sp, #0x2c]
	strb r2, [sp, #0x39]
	ldr r2, [sp, #0x60]
	strb r3, [sp, #0x38]
	ldr r3, [sp, #0x5c]
	strb r1, [sp, #0x3a]
	strb r0, [sp, #0x3b]
	str lr, [sp, #0x30]
	strb ip, [sp, #0x3c]
	strb r8, [sp, #0x3d]
	strh r7, [sp, #0x3e]
	str r6, [sp, #0x40]
	str r2, [sp, #0x48]
	ldr r1, _022370E8 ; =0x0225B6C4
	str r5, [sp, #0x4c]
	str r3, [sp, #0x44]
	ldr r3, [r4, #4]
	ldr r0, _022370EC ; =0x02258E58
	str r3, [sp, #0x50]
	ldr r2, [r1, #0]
	ldrb r1, [r4, #0x38]
	ldr r5, [r0, #4]
	str r1, [sp, #0x54]
	ldrh r1, [r4, #0x3c]
	strh r1, [sp, #0x58]
	ldrb r1, [r4, #0x3e]
	strh r1, [sp, #0x5a]
	ldr r4, [r0, #0xc]
	ldr r0, _022370F0 ; =0x0225B6D4
	ldr r1, [r2, #0x50]
	ldr r0, [r0, #0]
	cmp r1, #0
	moveq r8, #0
	movne r8, #1
	ldr r7, [r2, #0x4c]
	cmp r0, #0
	bne _022370CC
	mov r0, #0x40
	bl ov66_02246290
	movs r6, r0
	beq _02236FE0
	ldr r1, _022370F4 ; =0x02258EC0
	mov r0, #3
	str r1, [r6, #0]
	str r0, [r6, #4]
	mov r1, r4
	add r0, r6, #0xc
	str r8, [r6, #8]
	bl ov66_0223BA6C
	mov r1, r5
	add r0, r6, #0x18
	bl ov66_0223BA6C
	add r2, sp, #0x30
	add r4, r2, #0x2c
	mov r1, #0
	str r7, [r6, #0x24]
	str r1, [r6, #0x28]
	str r1, [r6, #0x2c]
	ldr r0, _022370F8 ; =ov66_022393C0
	str r1, [r6, #0x30]
	str r0, [r6, #0x34]
	str r1, [r6, #0x38]
	str r1, [r6, #0x3c]
	strb r1, [sp, #9]
	strb r1, [sp, #0xa]
	strb r1, [sp, #8]
	strb r1, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x18]
	str r4, [r1, #0]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	add r0, r6, #0x28
	str r4, [sp, #0x14]
	ldmia r1, {r1, r2}
	bl ov66_022366CC
_02236FE0:
	ldr r0, _022370F0 ; =0x0225B6D4
	str r6, [r0, #0]
	ldr r0, [r6, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r6, #0xd
	ldrne r1, [r6, #0x14]
	ldr r0, [r6, #8]
	bl ov66_02258338
	ldr r0, [r6, #0x3c]
	ldr r4, [r6, #0x2c]
	cmp r0, #0
	ldr r0, [r6, #0x18]
	beq _02237050
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588F4
	b _02237084
_02237050:
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588D0
_02237084:
	cmp r0, #0
	moveq r0, #1
	beq _02237098
	bl ov66_022585F4
	mov r0, #0
_02237098:
	cmp r0, #0
	bne _022370CC
	ldr r0, _022370F0 ; =0x0225B6D4
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _022370CC
	beq _022370C0
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_022370C0:
	ldr r0, _022370F0 ; =0x0225B6D4
	mov r1, #0
	str r1, [r0, #0]
_022370CC:
	ldr r0, _022370E8 ; =0x0225B6C4
	mov r2, #1
	ldr r1, [r0, #0]
	mov r0, #0
	str r2, [r1, #0x6c]
	add sp, sp, #0x334
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022370E8: .word 0x0225B6C4
_022370EC: .word 0x02258E58
_022370F0: .word 0x0225B6D4
_022370F4: .word 0x02258EC0
_022370F8: .word ov66_022393C0
	arm_func_end ov66_02236D74

	arm_func_start ov66_022370FC
ov66_022370FC: ; 0x022370FC
	ldr r0, _02237114 ; =0x0225B6C4
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #4]
	moveq r0, #0
	bx lr
	; .align 2, 0
_02237114: .word 0x0225B6C4
	arm_func_end ov66_022370FC

	arm_func_start ov66_02237118
ov66_02237118: ; 0x02237118
	stmfd sp!, {r3, lr}
	cmp r0, #4
	addge r0, r0, #0x17c
	addge r0, r0, #0x2800
	ldmgeia sp!, {r3, pc}
	bl ov66_0224497C
	ldmia sp!, {r3, pc}
	arm_func_end ov66_02237118

	arm_func_start ov66_02237134
ov66_02237134: ; 0x02237134
	cmp r0, #0
	beq _02237150
	cmp r0, #1
	beq _02237158
	cmp r0, #2
	beq _02237160
	b _02237168
_02237150:
	mov r0, #0
	bx lr
_02237158:
	mov r0, #2
	bx lr
_02237160:
	mov r0, #3
	bx lr
_02237168:
	mov r0, #1
	bx lr
	arm_func_end ov66_02237134

	arm_func_start ov66_02237170
ov66_02237170: ; 0x02237170
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x24
	mov r5, r0
	mvn r0, #0
	mov r4, r1
	cmp r5, r0
	cmpeq r4, #5
	addeq sp, sp, #0x24
	moveq r0, #3
	ldmeqia sp!, {r4, r5, pc}
	mov ip, #0
	add r1, sp, #0x18
	mov r0, ip
_022371A4:
	str r0, [r1, ip, lsl #2]
	add ip, ip, #1
	cmp ip, #3
	blo _022371A4
	ldr lr, [sp, #0x38]
	mov r0, r2
	mov r1, r3
	ldr r2, [sp, #0x30]
	ldr r3, [sp, #0x34]
	add ip, sp, #0x18
	str lr, [sp]
	str ip, [sp, #4]
	bl ov66_022416DC
	cmp r0, #0
	bne _022371F4
	add r0, sp, #0x18
	bl ov66_0223BADC
	add sp, sp, #0x24
	mov r0, #3
	ldmia sp!, {r4, r5, pc}
_022371F4:
	cmp r4, #5
	bne _02237268
	ldr r0, [sp, #0x18]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, sp, #0x19
	ldrne r1, [sp, #0x20]
	mov r0, r5
	bl ov66_022453BC
	mov r4, r0
	ldr r1, _02237340 ; =0x0225B6C4
	mov r0, #0
	strb r0, [sp, #9]
	cmp r4, #1
	ldr r1, [r1, #0]
	beq _02237240
	cmp r4, #2
	moveq r0, #3
	b _02237244
_02237240:
	mov r0, #2
_02237244:
	cmp r0, #0
	strne r0, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
	add r0, sp, #0x18
	bl ov66_0223BADC
	add sp, sp, #0x24
	mov r0, r4
	ldmia sp!, {r4, r5, pc}
_02237268:
	ldr r1, _02237340 ; =0x0225B6C4
	add r0, sp, #0xc
	ldr r1, [r1, #0]
	mov r2, r4
	add r1, r1, #0xb8
	bl ov66_02236348
	ldr r1, _02237344 ; =0x02258FB4
	add r0, sp, #0xc
	bl ov66_0223BEEC
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _022372BC
	add r0, sp, #0xc
	bl ov66_0223BADC
	add r0, sp, #0x18
	bl ov66_0223BADC
	add sp, sp, #0x24
	mov r0, #5
	ldmia sp!, {r4, r5, pc}
_022372BC:
	ldr r0, [sp, #0x18]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldr r0, [sp, #0xc]
	addeq r1, sp, #0x19
	mov r0, r0, lsl #0x1f
	ldrne r1, [sp, #0x20]
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0xd
	ldrne r0, [sp, #0x14]
	bl ov66_022452D0
	mov r4, r0
	ldr r1, _02237340 ; =0x0225B6C4
	mov r0, #0
	strb r0, [sp, #8]
	cmp r4, #1
	ldr r1, [r1, #0]
	beq _02237310
	cmp r4, #2
	moveq r0, #3
	b _02237314
_02237310:
	mov r0, #2
_02237314:
	cmp r0, #0
	strne r0, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
	add r0, sp, #0xc
	bl ov66_0223BADC
	add r0, sp, #0x18
	bl ov66_0223BADC
	mov r0, r4
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02237340: .word 0x0225B6C4
_02237344: .word 0x02258FB4
	arm_func_end ov66_02237170

	arm_func_start ov66_02237348
ov66_02237348: ; 0x02237348
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	ldr r4, _022374A8 ; =0x0225B6C4
	mov r6, r0
	ldr r4, [r4, #0]
	mov r5, r2
	mov r2, r1
	add r1, r4, #0xb8
	add r0, sp, #0x10
	mov r4, r3
	bl ov66_02236348
	ldr r1, _022374AC ; =0x02258FB4
	add r0, sp, #0x10
	bl ov66_0223BEEC
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _022373A8
	add r0, sp, #0x10
	bl ov66_0223BADC
	add sp, sp, #0x1c
	mov r0, #5
	ldmia sp!, {r3, r4, r5, r6, pc}
_022373A8:
	ldr r1, [sp, #0x30]
	cmp r1, #0x12c
	bls _022373C8
	add r0, sp, #0x10
	bl ov66_0223BADC
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, pc}
_022373C8:
	ldr r0, _022374B0 ; =0xAAAAAAAB
	add r1, r1, #2
	umull r0, r2, r1, r0
	mov r3, #0
	mov r2, r2, lsr #1
	mov r1, r2, lsl #2
	add r0, sp, #4
	add r1, r1, #1
	str r3, [sp, #4]
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	bl ov66_0223B6C0
	add r0, sp, #4
	bl ov66_02236AB0
	mov r2, r0
	ldr r1, [sp, #0x30]
	ldr r3, [sp, #8]
	mov r0, r4
	bl ov4_021DB408
	ldr r1, [sp, #4]
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [sp, #0x10]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r4, sp, #0x11
	ldrne r4, [sp, #0x18]
	add r0, sp, #4
	bl ov66_02236AB0
	mov r3, r0
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov66_022454C8
	mov r4, r0
	ldr r1, _022374A8 ; =0x0225B6C4
	mov r0, #0
	strb r0, [sp]
	cmp r4, #1
	ldr r1, [r1, #0]
	beq _02237478
	cmp r4, #2
	moveq r0, #3
	b _0223747C
_02237478:
	mov r0, #2
_0223747C:
	cmp r0, #0
	strne r0, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
	add r0, sp, #4
	bl ov66_0223B8E8
	add r0, sp, #0x10
	bl ov66_0223BADC
	mov r0, r4
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_022374A8: .word 0x0225B6C4
_022374AC: .word 0x02258FB4
_022374B0: .word 0xAAAAAAAB
	arm_func_end ov66_02237348

	arm_func_start ov66_022374B4
ov66_022374B4: ; 0x022374B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc4
	ldr r0, _02237894 ; =0x0225B6C4
	ldr r0, [r0, #0]
	add r0, r0, #0x110
	bl ov66_02235B8C
	ldr r1, _02237894 ; =0x0225B6C4
	mov r4, r0
	ldr r0, [r1, #0]
	add r0, r0, #0x110
	bl ov66_02235B8C
	ldr r1, _02237894 ; =0x0225B6C4
	mov r2, #1
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x4c]
	strh r2, [sp, #0x20]
	str r1, [sp, #0x1c]
	ldrb r1, [r0, #0x42]
	strb r1, [sp, #0x22]
	ldrb r1, [r0, #0x39]
	add r0, sp, #0x24
	strb r1, [sp, #0x23]
	bl OS_GetMacAddress
	ldr r0, [r4, #0]
	add r3, sp, #0x38
	str r0, [sp, #0x30]
	ldr r0, [r4, #4]
	add r5, r4, #8
	str r0, [sp, #0x34]
	mov r2, #4
_0223752C:
	ldrh r1, [r5]
	ldrh r0, [r5, #2]
	add r5, r5, #4
	subs r2, r2, #1
	strh r1, [r3]
	strh r0, [r3, #2]
	add r3, r3, #4
	bne _0223752C
	ldr r1, [r4, #0x18]
	add r0, sp, #0x74
	str r1, [sp, #0x48]
	ldr r2, [r4, #0x1c]
	add r1, r4, #0x44
	str r2, [sp, #0x4c]
	ldrh r3, [r4, #0x20]
	ldrh r2, [r4, #0x22]
	add r6, sp, #0x7c
	add r7, r4, #0x4c
	strh r3, [sp, #0x50]
	strh r2, [sp, #0x52]
	ldrh r3, [r4, #0x24]
	ldrh r2, [r4, #0x26]
	mov r5, #6
	strh r3, [sp, #0x54]
	strh r2, [sp, #0x56]
	ldrh r3, [r4, #0x28]
	ldrh r2, [r4, #0x2a]
	strh r3, [sp, #0x58]
	strh r2, [sp, #0x5a]
	ldrb r3, [r4, #0x2c]
	ldrb r2, [r4, #0x2d]
	strb r3, [sp, #0x5c]
	strb r2, [sp, #0x5d]
	ldrb r3, [r4, #0x2e]
	ldrb r2, [r4, #0x2f]
	strb r3, [sp, #0x5e]
	strb r2, [sp, #0x5f]
	ldrb r3, [r4, #0x30]
	ldrb r2, [r4, #0x31]
	strb r3, [sp, #0x60]
	strb r2, [sp, #0x61]
	ldrb r3, [r4, #0x32]
	ldrb r2, [r4, #0x33]
	strb r3, [sp, #0x62]
	strb r2, [sp, #0x63]
	ldrb r3, [r4, #0x34]
	ldrb r2, [r4, #0x35]
	strb r3, [sp, #0x64]
	strb r2, [sp, #0x65]
	ldrb r3, [r4, #0x36]
	ldrb r2, [r4, #0x37]
	strb r3, [sp, #0x66]
	strb r2, [sp, #0x67]
	ldrb r2, [r4, #0x38]
	strb r2, [sp, #0x68]
	ldrb r2, [r4, #0x39]
	strb r2, [sp, #0x69]
	ldrh r2, [r4, #0x3a]
	strh r2, [sp, #0x6a]
	ldrh r2, [r4, #0x3c]
	strh r2, [sp, #0x6c]
	ldrb r2, [r4, #0x3e]
	strb r2, [sp, #0x6e]
	ldrb r2, [r4, #0x3f]
	strb r2, [sp, #0x6f]
	ldrb r2, [r4, #0x40]
	strb r2, [sp, #0x70]
	ldrb r2, [r4, #0x41]
	strb r2, [sp, #0x71]
	ldrb r2, [r4, #0x42]
	strb r2, [sp, #0x72]
	ldrb r2, [r4, #0x43]
	strb r2, [sp, #0x73]
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
_02237658:
	ldrb r1, [r7]
	ldrb r0, [r7, #1]
	add r7, r7, #2
	subs r5, r5, #1
	strb r1, [r6]
	strb r0, [r6, #1]
	add r6, r6, #2
	bne _02237658
	add r6, r4, #0x58
	add r5, sp, #0x88
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r1, _02237894 ; =0x0225B6C4
	ldr r0, _02237898 ; =0x02258E58
	ldrh r6, [r4, #0x88]
	ldrh r3, [r4, #0x8a]
	ldr r2, [r1, #0]
	ldr r5, [r0, #0x18]
	strh r6, [sp, #0xb8]
	strh r3, [sp, #0xba]
	ldr r3, [r4, #0x8c]
	ldr r1, [r4, #0x90]
	str r3, [sp, #0xbc]
	str r1, [sp, #0xc0]
	ldr r4, [r0, #0xc]
	ldr r0, _0223789C ; =0x0225B6D4
	ldr r1, [r2, #0x50]
	ldr r0, [r0, #0]
	cmp r1, #0
	moveq r8, #0
	movne r8, #1
	cmp r0, #0
	ldr r7, [r2, #0x4c]
	addne sp, sp, #0xc4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, #0x40
	bl ov66_02246290
	movs r6, r0
	beq _02237798
	ldr r1, _022378A0 ; =0x02258EC0
	mov r0, #3
	str r1, [r6, #0]
	str r0, [r6, #4]
	mov r1, r4
	add r0, r6, #0xc
	str r8, [r6, #8]
	bl ov66_0223BA6C
	mov r1, r5
	add r0, r6, #0x18
	bl ov66_0223BA6C
	add r2, sp, #0x1c
	add r4, r2, #0xa8
	mov r1, #0
	str r7, [r6, #0x24]
	str r1, [r6, #0x28]
	str r1, [r6, #0x2c]
	ldr r0, _022378A4 ; =ov66_0223899C
	str r1, [r6, #0x30]
	str r0, [r6, #0x34]
	str r1, [r6, #0x38]
	str r1, [r6, #0x3c]
	strb r1, [sp, #9]
	strb r1, [sp, #0xa]
	strb r1, [sp, #8]
	strb r1, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x18]
	str r4, [r1, #0]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	add r0, r6, #0x28
	str r4, [sp, #0x14]
	ldmia r1, {r1, r2}
	bl ov66_022366CC
_02237798:
	ldr r0, _0223789C ; =0x0225B6D4
	str r6, [r0, #0]
	ldr r0, [r6, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r6, #0xd
	ldrne r1, [r6, #0x14]
	ldr r0, [r6, #8]
	bl ov66_02258338
	ldr r0, [r6, #0x3c]
	ldr r4, [r6, #0x2c]
	cmp r0, #0
	ldr r0, [r6, #0x18]
	beq _02237808
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588F4
	b _0223783C
_02237808:
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588D0
_0223783C:
	cmp r0, #0
	moveq r0, #1
	beq _02237850
	bl ov66_022585F4
	mov r0, #0
_02237850:
	cmp r0, #0
	addne sp, sp, #0xc4
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, _0223789C ; =0x0225B6D4
	ldr r0, [r0, #0]
	cmp r0, #0
	addeq sp, sp, #0xc4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	beq _02237880
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_02237880:
	ldr r0, _0223789C ; =0x0225B6D4
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #0xc4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02237894: .word 0x0225B6C4
_02237898: .word 0x02258E58
_0223789C: .word 0x0225B6D4
_022378A0: .word 0x02258EC0
_022378A4: .word ov66_0223899C
	arm_func_end ov66_022374B4

	arm_func_start ov66_022378A8
ov66_022378A8: ; 0x022378A8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x18
	ldr r3, _02237900 ; =0x02258BF4
	mov r5, r0
	ldr r1, [r3, r1, lsl #2]
	add r0, sp, #0xc
	mov r4, r2
	bl ov66_0223BA6C
	ldr r2, _02237904 ; =0x02258FB8
	add r0, sp, #0
	add r1, sp, #0xc
	bl ov66_022379D0
	add r1, sp, #0
	mov r0, r5
	mov r2, r4
	bl ov66_02237908
	add r0, sp, #0
	bl ov66_0223BADC
	add r0, sp, #0xc
	bl ov66_0223BADC
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02237900: .word 0x02258BF4
_02237904: .word 0x02258FB8
	arm_func_end ov66_022378A8

	arm_func_start ov66_02237908
ov66_02237908: ; 0x02237908
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r3, #0
	mov r7, r0
	mov r0, r3
_0223791C:
	str r0, [r7, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #3
	blo _0223791C
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldmneib r1, {r4, r5}
	bne _02237950
	ldrb r0, [r1]
	add r5, r1, #1
	mov r0, r0, lsl #0x18
	mov r4, r0, lsr #0x19
_02237950:
	ldr r0, [r2, #0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r6, [r2, #8]
	ldrne r8, [r2, #4]
	bne _02237978
	ldrb r0, [r2]
	add r6, r2, #1
	mov r0, r0, lsl #0x18
	mov r8, r0, lsr #0x19
_02237978:
	mov r0, r7
	add r1, r4, r8
	bl ov66_0223BB10
	add r0, r5, r4
	mov r1, #0
	ldrb ip, [sp, #9]
	str r0, [sp]
	mov r0, r7
	mov r2, r1
	mov r3, r5
	strb ip, [sp, #4]
	bl ov66_0223C018
	add r1, r6, r8
	ldrb r5, [sp, #8]
	str r1, [sp]
	mov r1, r4
	mov r3, r6
	mov r2, #0
	strb r5, [sp, #4]
	bl ov66_0223C018
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_02237908

	arm_func_start ov66_022379D0
ov66_022379D0: ; 0x022379D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r4, r1
	mov r1, #0
	mov r8, r0
	mov r7, r2
	mov r0, r1
_022379EC:
	str r0, [r8, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _022379EC
	mov r0, r7
	bl strlen
	ldr r1, [r4, #0]
	mov r6, r0
	mov r0, r1, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r5, [r4, #8]
	ldrne r4, [r4, #4]
	bne _02237A30
	ldrb r0, [r4]
	add r5, r4, #1
	mov r0, r0, lsl #0x18
	mov r4, r0, lsr #0x19
_02237A30:
	mov r0, r8
	add r1, r4, r6
	bl ov66_0223BB10
	add r0, r5, r4
	mov r1, #0
	ldrb ip, [sp, #9]
	str r0, [sp]
	mov r0, r8
	mov r2, r1
	mov r3, r5
	strb ip, [sp, #4]
	bl ov66_0223C018
	add r1, r7, r6
	ldrb r5, [sp, #8]
	str r1, [sp]
	mov r1, r4
	mov r3, r7
	mov r2, #0
	strb r5, [sp, #4]
	bl ov66_0223C018
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_022379D0

	arm_func_start ov66_02237A88
ov66_02237A88: ; 0x02237A88
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02237AD0 ; =0x0225B6C4
	mov r5, r0
	ldr r0, [r1, #0]
	ldr r4, [r0, #0x4c]
	bl ov4_021EA840
	mov ip, r0
	ldr r0, _02237AD4 ; =0x10624DD3
	mov r1, #0x3e8
	umull r0, r3, ip, r0
	mov r3, r3, lsr #6
	umull r3, r0, r1, r3
	ldr r1, _02237AD8 ; =0x02258FBC
	mov r0, r5
	mov r2, r4
	sub r3, ip, r3
	bl ov66_02237ADC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02237AD0: .word 0x0225B6C4
_02237AD4: .word 0x10624DD3
_02237AD8: .word 0x02258FBC
	arm_func_end ov66_02237A88

	arm_func_start ov66_02237ADC
ov66_02237ADC: ; 0x02237ADC
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	add r1, sp, #0x24
	mov r6, r0
	mov r0, #0
	bic r4, r1, #3
	ldr r2, [sp, #0x24]
	mov r1, r0
	str r0, [sp, #8]
	add r3, r4, #4
	str r0, [sp, #4]
	str r0, [sp, #0xc]
	bl OS_VSNPrintf
	ldr r3, [sp, #8]
	add r5, r0, #1
	cmp r5, r3
	bls _02237B48
	mov r1, #0
	strb r1, [sp]
	sub r0, sp, #4
	strb r1, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #4
	sub r1, r5, r3
	bl ov66_0223B870
	b _02237B60
_02237B48:
	bhs _02237B60
	sub r0, r3, r5
	sub r0, r3, r0
	mov r1, #0
	strb r1, [sp, #1]
	str r0, [sp, #8]
_02237B60:
	add r0, sp, #4
	bl ov66_02236AB0
	ldr r2, [sp, #0x24]
	mov r1, r5
	add r3, r4, #4
	bl OS_VSNPrintf
	ldr r1, [sp, #4]
	add r0, sp, #4
	add r1, r1, r5
	mov r2, #0
	strb r2, [r1, #-1]
	bl ov66_02236AB0
	mov r1, r0
	mov r0, r6
	bl ov66_0223BA6C
	add r0, sp, #4
	bl ov66_0223B8E8
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_02237ADC

	arm_func_start ov66_02237BB4
ov66_02237BB4: ; 0x02237BB4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x54
	ldr r0, _02237D08 ; =0x0225B6C4
	ldr r5, _02237D0C ; =ov66_02239B54
	ldr lr, _02237D10 ; =ov66_02239D60
	ldr ip, _02237D14 ; =ov66_02239FA4
	ldr r4, _02237D18 ; =ov66_0223A1E4
	ldr r3, _02237D1C ; =ov66_0223A958
	ldr r1, [r0, #0]
	mov r2, #0
	add r0, sp, #0x24
	str r5, [sp, #0x3c]
	str lr, [sp, #0x40]
	str ip, [sp, #0x44]
	str r4, [sp, #0x48]
	str r3, [sp, #0x4c]
	str r2, [sp, #0x50]
	bl ov66_02235DC4
	add r0, sp, #0x30
	add r2, sp, #0x24
	mov r1, #0
	bl ov66_022378A8
	add r0, sp, #0x24
	bl ov66_0223BADC
	ldr r0, [sp, #0x30]
	ldr r1, _02237D20 ; =ov66_02239408
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #0x31
	ldrne r0, [sp, #0x38]
	add r3, sp, #0x3c
	str r1, [sp]
	mov r1, #0
	mov r2, #0x14
	str r1, [sp, #4]
	bl ov66_02244F44
	mov r4, r0
	ldr r1, _02237D08 ; =0x0225B6C4
	mov r0, #0
	strb r0, [sp, #8]
	cmp r4, #1
	ldr r1, [r1, #0]
	beq _02237C6C
	cmp r4, #2
	moveq r0, #3
	b _02237C70
_02237C6C:
	mov r0, #2
_02237C70:
	cmp r0, #0
	strne r0, [r1, #4]
	movne r0, #0xa
	strne r0, [r1]
	cmp r4, #0
	beq _02237C9C
	add r0, sp, #0x30
	bl ov66_0223BADC
	add sp, sp, #0x54
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, pc}
_02237C9C:
	mov r2, #0
	add r0, sp, #0x10
	add r1, sp, #0x30
	str r2, [sp, #0xc]
	add r5, sp, #0xc
	bl ov66_0223B938
	mov r1, #0
	ldr r0, _02237D08 ; =0x0225B6C4
	ldr r2, [sp, #0xc]
	ldr r6, [r0, #0]
	str r1, [r5, #0x10]
	str r1, [r5, #0x14]
	add r1, sp, #0x10
	str r2, [r6, #0xb8]
	add r0, r6, #0xbc
	bl ov66_0223BC5C
	ldr r1, [sp, #0x1c]
	add r0, sp, #0x10
	str r1, [r6, #0xc8]
	ldr r1, [sp, #0x20]
	str r1, [r6, #0xcc]
	bl ov66_0223BADC
	add r0, sp, #0x30
	bl ov66_0223BADC
	mov r0, r4
	add sp, sp, #0x54
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_02237D08: .word 0x0225B6C4
_02237D0C: .word ov66_02239B54
_02237D10: .word ov66_02239D60
_02237D14: .word ov66_02239FA4
_02237D18: .word ov66_0223A1E4
_02237D1C: .word ov66_0223A958
_02237D20: .word ov66_02239408
	arm_func_end ov66_02237BB4

	arm_func_start ov66_02237D24
ov66_02237D24: ; 0x02237D24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x40
	mov r8, r0
	mov r7, r1
	add r0, sp, #0x28
	mov r1, r2
	mov r6, r3
	bl ov66_0223BA6C
	ldr r1, _02237EF4 ; =0x0225B6C4
	add r0, sp, #0x10
	ldr r5, [r1, #0]
	add sb, sp, #0x28
	add r1, r5, #0xb8
	bl ov66_02235FC8
	add r0, sp, #0x10
	mov r1, sb
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #0x10
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r5, [r5, #0xb8]
	bne _02237DB0
	add r0, sp, #0x1c
	add r1, r5, #0xd0
	bl ov66_02235FC8
	add r0, sp, #0x1c
	mov r1, sb
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #0x1c
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r5, [r5, #0xd0]
	moveq r5, #5
_02237DB0:
	add r0, sp, #0x28
	bl ov66_0223BADC
	cmp r5, #5
	addeq sp, sp, #0x40
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x64]
	mov r2, #0
	add r1, sp, #0x34
	str r2, [sp, #0x34]
	str r2, [sp, #0x38]
	str r2, [sp, #0x3c]
	bl ov66_02237EF8
	cmp r0, #0
	add r0, sp, #0x34
	bne _02237DF8
	bl ov66_0223B8E8
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02237DF8:
	ldr sb, [sp, #0x38]
	cmp sb, #0
	bne _02237E10
	bl ov66_0223B8E8
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02237E10:
	bl ov66_02235B8C
	ldr r1, [sp, #0x60]
	ldr r4, [sp, #0x68]
	str r1, [sp]
	stmib sp, {r0, sb}
	mov r0, r8
	mov r1, r7
	mov r2, r5
	mov r3, r6
	str r4, [sp, #0xc]
	bl ov66_02238070
	cmp r0, #0
	beq _02237E54
	add r0, sp, #0x34
	bl ov66_0223B8E8
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02237E54:
	mvn r0, #0
	cmp r6, r0
	beq _02237EA0
	ldr r0, _02237EF4 ; =0x0225B6C4
	mov r1, r6
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241DCC
	cmp r0, #0
	ldrne r0, [r0, #0x38]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _02237EA0
	add r0, sp, #0x34
	bl ov66_0223B8E8
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02237EA0:
	ldr r1, _02237EF4 ; =0x0225B6C4
	add r0, sp, #0x34
	ldr r4, [r1, #0]
	bl ov66_02235B8C
	ldr r2, [sp, #0x60]
	ldr r1, [sp, #0x68]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r2, [sp, #0x38]
	mov r0, r8
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	ldr r4, [r4, #0x1c]
	mov r1, r7
	mov r2, r5
	mov r3, r6
	blx r4
	add r0, sp, #0x34
	bl ov66_0223B8E8
	add sp, sp, #0x40
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02237EF4: .word 0x0225B6C4
	arm_func_end ov66_02237D24

	arm_func_start ov66_02237EF8
ov66_02237EF8: ; 0x02237EF8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r2, #0
	mov r5, r1
	strb r2, [sp, #4]
	mov r6, r0
	bl strlen
	ldr r3, [r5, #4]
	mov r4, r0
	cmp r4, r3
	bls _02237F48
	mov r1, #0
	strb r1, [sp, #2]
	sub r0, sp, #4
	strb r1, [r0]
	ldr r2, [r0, #0]
	mov r0, r5
	sub r1, r4, r3
	bl ov66_0223B870
	b _02237F64
_02237F48:
	bhs _02237F64
	mov r0, #0
	strb r0, [sp, #3]
	ldr r1, [r5, #4]
	sub r0, r3, r4
	sub r0, r1, r0
	str r0, [r5, #4]
_02237F64:
	cmp r4, #0
	addeq sp, sp, #8
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	bl strlen
	mov r4, r0
	mov r0, r5
	bl ov66_02235B8C
	mov r2, r0
	ldr r3, [r5, #4]
	mov r0, r6
	mov r1, r4
	bl ov4_021DB414
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r3, [r5, #4]
	cmp r4, r3
	bls _02237FE4
	mov r1, #0
	strb r1, [sp]
	sub r0, sp, #4
	strb r1, [r0]
	ldr r2, [r0, #0]
	mov r0, r5
	sub r1, r4, r3
	bl ov66_0223B870
	b _02238000
_02237FE4:
	bhs _02238000
	mov r0, #0
	strb r0, [sp, #1]
	ldr r1, [r5, #4]
	sub r0, r3, r4
	sub r0, r1, r0
	str r0, [r5, #4]
_02238000:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_02237EF8

	arm_func_start ov66_0223800C
ov66_0223800C: ; 0x0223800C
	stmfd sp!, {r4, lr}
	ldr r2, [r1, #0]
	mov r4, #0
	mov r2, r2, lsl #0x1f
	movs r2, r2, lsr #0x1f
	ldrne r3, [r1, #4]
	bne _02238034
	ldrb r2, [r1]
	mov r2, r2, lsl #0x18
	mov r3, r2, lsr #0x19
_02238034:
	ldr r2, [r0, #0]
	mov r2, r2, lsl #0x1f
	movs r2, r2, lsr #0x1f
	ldrne r2, [r0, #4]
	bne _02238054
	ldrb r2, [r0]
	mov r2, r2, lsl #0x18
	mov r2, r2, lsr #0x19
_02238054:
	cmp r2, r3
	bne _02238068
	bl ov66_0223BE90
	cmp r0, #0
	moveq r4, #1
_02238068:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223800C

	arm_func_start ov66_02238070
ov66_02238070: ; 0x02238070
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x70
	ldr r4, [sp, #0x98]
	cmp r2, #0
	ldr sb, [sp, #0x9c]
	ldr r8, [sp, #0xa0]
	mov sl, r3
	addne sp, sp, #0x70
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, _0223844C ; =0x02258FC4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _02238248
	ldr r0, _02238450 ; =0x0225B6C4
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x4c]
	cmp sl, r0
	addeq sp, sp, #0x70
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, sl
	add r0, r2, #0xe8
	bl ov66_02241DCC
	movs r4, r0
	addeq sp, sp, #0x70
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, #0
	str r0, [sp, #0x48]
	add r2, sb, r8
	str r0, [sp, #0x4c]
	str r0, [sp, #0x50]
	strb r0, [sp, #9]
	strb r0, [sp, #0xa]
	strb r0, [sp, #8]
	strb r0, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x24]
	str r2, [r1, #0]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r0, sp, #0x48
	add r1, sp, #0x18
	str sb, [sp, #0x18]
	str r2, [sp, #0x20]
	ldmia r1, {r1, r2}
	bl ov66_022366CC
	mov r2, #0
	ldrb r0, [sp, #0xc]
	ldr r1, [sp, #0x48]
	ldr r6, [sp, #0x4c]
	str r2, [sp, #0x54]
	str r2, [sp, #0x58]
	str r2, [sp, #0x5c]
	sub r2, sp, #4
	strb r0, [r2]
	add r5, sp, #0x54
	ldr r3, [r2, #0]
	mov r0, r5
	add r2, r1, r6
	bl ov66_0223C2F4
	mov r0, #1
	str r0, [r5, #0xc]
	ldr r7, [r4, #0x1c]
	ldr r0, [sp, #0x58]
	mov r6, #0
	cmp r7, r0
	bne _022381C0
	cmp r7, #0
	beq _022381BC
	add r0, r4, #0x18
	bl ov66_02235B8C
	mov fp, r0
	mov r0, r5
	bl ov66_02235B8C
	mov r2, r7
	mov r1, r0
	mov r0, fp
	bl memcmp
	cmp r0, #0
	bne _022381C0
_022381BC:
	mov r6, #1
_022381C0:
	cmp r6, #0
	bne _022381FC
	add r0, r4, #0x18
	cmp r0, r5
	beq _022381F4
	mov r3, #0
	ldmia r5, {r1, r5}
	strb r3, [sp, #0xb]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r3, [r2, #0]
	add r2, r1, r5
	bl ov66_02236674
_022381F4:
	mov r0, #1
	str r0, [r4, #0x24]
_022381FC:
	add r0, sp, #0x54
	bl ov66_0223B8E8
	mov r1, #1
	add r0, sp, #0x48
	str r1, [r4, #0x34]
	bl ov66_0223B8E8
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _0223823C
	ldr r1, _02238450 ; =0x0225B6C4
	mov r0, sl
	ldr r2, [r1, #0]
	mov r1, sb
	ldr r3, [r2, #0x24]
	mov r2, r8
	blx r3
_0223823C:
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02238248:
	ldr r1, _02238454 ; =0x02258FD4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _0223838C
	ldr r0, _02238450 ; =0x0225B6C4
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x4c]
	cmp sl, r0
	addeq sp, sp, #0x70
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r8, #0x10
	addne sp, sp, #0x70
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, sl
	add r0, r2, #0xe8
	bl ov66_02241DCC
	movs r4, r0
	addeq sp, sp, #0x70
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb]
	add r0, sp, #0x38
	str r1, [sp, #0x34]
	add r1, sb, #4
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	add r5, sp, #0x34
	ldr r6, [sb, #0xc]
	mov r3, #1
	mov r1, r5
	add r0, r4, #4
	mov r2, #0x10
	str r6, [sp, #0x40]
	str r3, [sp, #0x44]
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _0223831C
	ldr r0, [r5, #0]
	add r1, r5, #4
	str r0, [r4, #4]
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r5, #0xc]
	mov r0, #1
	str r1, [r4, #0x10]
	str r0, [r4, #0x14]
_0223831C:
	mov r0, #1
	str r0, [r4, #0x30]
	ldr r0, [r4, #0x38]
	cmp r0, #0
	ldrne r0, [r4, #0x14]
	cmpne r0, #0
	beq _02238380
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r5, [r4, #4]
	ldr r2, [r4, #8]
	ldr r1, [r4, #0xc]
	ldr r3, _02238450 ; =0x0225B6C4
	add r0, sp, #0x28
	add r4, sp, #0x64
	str r5, [sp, #0x30]
	str r2, [sp, #0x28]
	str r1, [sp, #0x2c]
	ldmia r0, {r0, r1, r2}
	stmia r4, {r0, r1, r2}
	ldr r1, [r3, #0]
	mov r0, sl
	ldr r2, [r1, #0x20]
	mov r1, r4
	blx r2
_02238380:
	add sp, sp, #0x70
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223838C:
	ldr r1, _02238458 ; =0x02258FE4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _022383E8
	cmp r8, #8
	addne sp, sp, #0x70
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _02238450 ; =0x0225B6C4
	ldr r4, [sb]
	ldr r3, [sb, #4]
	ldr r1, [r0, #0]
	mov r0, #1
	str r0, [r1, #0x148]
	add r2, sp, #0x10
	str r4, [sp, #0x10]
	str r3, [sp, #0x14]
	add r1, r1, #0x14c
	ldmia r2, {r2, r3}
	add sp, sp, #0x70
	stmia r1, {r2, r3}
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022383E8:
	ldr r1, _0223845C ; =0x02258FF4
	mov r0, r4
	bl strcmp
	cmp r0, #0
	bne _02238440
	ldr r0, _02238450 ; =0x0225B6C4
	mov r1, sb
	ldr r0, [r0, #0]
	mov r2, r8
	add r0, r0, #0x144
	bl ov66_0223CB84
	cmp r0, #0
	addeq sp, sp, #0x70
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _02238450 ; =0x0225B6C4
	mov r2, #4
	ldr r1, [r0, #0]
	add sp, sp, #0x70
	str r2, [r1, #0x144]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02238440:
	mov r0, #0
	add sp, sp, #0x70
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223844C: .word 0x02258FC4
_02238450: .word 0x0225B6C4
_02238454: .word 0x02258FD4
_02238458: .word 0x02258FE4
_0223845C: .word 0x02258FF4
	arm_func_end ov66_02238070

	arm_func_start ov66_02238460
ov66_02238460: ; 0x02238460
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	cmp r2, #0
	mov r5, r1
	mov r4, r3
	movne r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0x10]
	cmp r0, #0
	beq _0223856C
	cmp r0, #1
	beq _0223849C
	cmp r0, #2
	beq _02238504
	b _02238590
_0223849C:
	ldr r0, _02238598 ; =0x0225B6C4
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x4c]
	cmp r5, r0
	beq _02238590
	add r0, r2, #0xe8
	bl ov66_02241DCC
	cmp r0, #0
	ldrne r0, [r0, #0x38]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02238590
	ldr r0, [r6, #8]
	cmp r0, #1
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0x44
	bne _02238590
	ldr r1, _02238598 ; =0x0225B6C4
	mov r0, r5
	ldr r2, [r1, #0]
	mov r1, r4
	ldr r2, [r2, #0x28]
	blx r2
	b _02238590
_02238504:
	ldr r0, _02238598 ; =0x0225B6C4
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x4c]
	cmp r5, r0
	beq _02238590
	add r0, r2, #0xe8
	bl ov66_02241DCC
	cmp r0, #0
	ldrne r0, [r0, #0x38]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _02238590
	ldr r0, [r6, #8]
	cmp r0, #1
	ldreq r0, [sp, #0x10]
	cmpeq r0, #0x44
	bne _02238590
	ldr r1, _02238598 ; =0x0225B6C4
	mov r0, r5
	ldr r2, [r1, #0]
	mov r1, r4
	ldr r2, [r2, #0x2c]
	blx r2
	b _02238590
_0223856C:
	ldr r0, [r6, #8]
	cmp r0, #1
	ldreq r0, [sp, #0x10]
	cmpeq r0, #4
	bne _02238590
	ldr r0, _02238598 ; =0x0225B6C4
	ldr r0, [r0, #0]
	add r0, r0, #0x144
	bl ov66_0223F0D0
_02238590:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02238598: .word 0x0225B6C4
	arm_func_end ov66_02238460

	arm_func_start ov66_0223859C
ov66_0223859C: ; 0x0223859C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r1, _02238674 ; =0x0225B6C4
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r1, r1, #0xb8
	bl ov66_02235FC8
	ldr r0, [sp]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #1
	ldrne r0, [sp, #8]
	bl ov66_02244988
	cmp r0, #0
	moveq r4, #1
	movne r4, #0
	add r0, sp, #0
	bl ov66_0223BADC
	cmp r4, #0
	addne sp, sp, #0xc
	movne r0, #0
	ldmneia sp!, {r3, r4, pc}
	ldr r0, _02238674 ; =0x0225B6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc8]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r1, #0xcc]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r1, #0x148]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r1, #0x144]
	cmp r0, #4
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, r1, #0xe8
	bl ov66_022423B0
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02238674: .word 0x0225B6C4
	arm_func_end ov66_0223859C

	arm_func_start ov66_02238678
ov66_02238678: ; 0x02238678
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _022386D0 ; =0x0225B6C4
	ldr r4, [r0, #0]
	ldr r1, [r4, #0x11c]
	cmp r1, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [r4, #0x11c]
	ldr r1, [r0, #0]
	add r0, r4, #0x110
	ldr r5, [r1, #0x4c]
	bl ov66_02235B8C
	ldr ip, [r4, #0x114]
	mov r3, r0
	ldr r2, _022386D4 ; =0x02258FC4
	mov r0, r5
	mov r1, #0
	str ip, [sp]
	bl ov66_02237348
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022386D0: .word 0x0225B6C4
_022386D4: .word 0x02258FC4
	arm_func_end ov66_02238678

	arm_func_start ov66_022386D8
ov66_022386D8: ; 0x022386D8
	stmfd sp!, {r3, lr}
	ldr r0, _02238720 ; =0x0225B6C4
	ldr r3, [r0, #0]
	ldr r1, [r3, #0x10c]
	cmp r1, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	mov r1, #0
	str r1, [r3, #0x10c]
	mov r2, #0x10
	str r2, [sp]
	ldr r0, [r0, #0]
	ldr r2, _02238724 ; =0x02258FD4
	ldr r0, [r0, #0x4c]
	add r3, r3, #0xfc
	bl ov66_02237348
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02238720: .word 0x0225B6C4
_02238724: .word 0x02258FD4
	arm_func_end ov66_022386D8

	arm_func_start ov66_02238728
ov66_02238728: ; 0x02238728
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r0, _02238780 ; =0x0225B6C4
	ldr r3, [r0, #0]
	ldr r0, [r3, #0x68]
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {pc}
	mov r2, #1
	str r2, [sp]
	add r0, r3, #0x74
	str r0, [sp, #4]
	mov r0, #0x44
	str r0, [sp, #8]
	mov r1, #0
	ldr r0, [r3, #0x4c]
	mov r3, r1
	bl ov66_02237170
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_02238780: .word 0x0225B6C4
	arm_func_end ov66_02238728

	arm_func_start ov66_02238784
ov66_02238784: ; 0x02238784
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _022387D4 ; =0x0225B6C4
	add r0, sp, #0
	ldr r1, [r1, #0]
	add r1, r1, #0xb8
	bl ov66_02235FC8
	ldr r0, [sp]
	ldr r1, _022387D8 ; =ov66_0223A6F4
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #1
	ldrne r0, [sp, #8]
	mov r2, #0
	bl ov66_02245D20
	add r0, sp, #0
	bl ov66_0223BADC
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_022387D4: .word 0x0225B6C4
_022387D8: .word ov66_0223A6F4
	arm_func_end ov66_02238784

	arm_func_start ov66_022387DC
ov66_022387DC: ; 0x022387DC
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r0, _0223884C ; =0x0225B6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x148]
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, sp, #4
	add r1, r1, #0xb8
	bl ov66_02235FC8
	ldr r0, [sp, #4]
	mov ip, #0
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #5
	ldrne r0, [sp, #0xc]
	ldr r2, _02238850 ; =0x02258FE4
	ldr r3, _02238854 ; =ov66_0223A750
	sub r1, ip, #1
	str ip, [sp]
	bl ov66_022456B0
	add r0, sp, #4
	bl ov66_0223BADC
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223884C: .word 0x0225B6C4
_02238850: .word 0x02258FE4
_02238854: .word ov66_0223A750
	arm_func_end ov66_022387DC

	arm_func_start ov66_02238858
ov66_02238858: ; 0x02238858
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	ldr r0, _022388D4 ; =0x0225B6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x144]
	cmp r0, #4
	movge r0, #1
	movlt r0, #0
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r0, sp, #4
	add r1, r1, #0xb8
	bl ov66_02235FC8
	ldr r0, [sp, #4]
	mov ip, #0
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r0, sp, #5
	ldrne r0, [sp, #0xc]
	ldr r2, _022388D8 ; =0x02258FF4
	ldr r3, _022388DC ; =ov66_0223A860
	sub r1, ip, #1
	str ip, [sp]
	bl ov66_022456B0
	add r0, sp, #4
	bl ov66_0223BADC
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022388D4: .word 0x0225B6C4
_022388D8: .word 0x02258FF4
_022388DC: .word ov66_0223A860
	arm_func_end ov66_02238858

	arm_func_start ov66_022388E0
ov66_022388E0: ; 0x022388E0
	cmp r0, #0xa
	addls pc, pc, r0, lsl #2
	b _02238930
_022388EC: ; jump table
	b _02238918 ; case 0
	b _02238930 ; case 1
	b _02238930 ; case 2
	b _02238930 ; case 3
	b _02238930 ; case 4
	b _02238930 ; case 5
	b _02238920 ; case 6
	b _02238928 ; case 7
	b _02238928 ; case 8
	b _02238928 ; case 9
	b _02238928 ; case 10
_02238918:
	mov r0, #0
	bx lr
_02238920:
	mov r0, #1
	bx lr
_02238928:
	mov r0, #2
	bx lr
_02238930:
	mov r0, #2
	bx lr
	arm_func_end ov66_022388E0

	arm_func_start ov66_02238938
ov66_02238938: ; 0x02238938
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r3
	mov r3, #0
	cmp r0, #0
	ldr r4, [sp, #0x18]
	str r3, [r5, #0]
	mov r7, r1
	mov r6, r2
	str r3, [r4, #0]
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #4
	movlo r0, #2
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r7]
	bl ov66_022388E0
	cmp r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r1, r7, #4
	str r1, [r5, #0]
	sub r1, r6, #4
	str r1, [r4, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_02238938

	arm_func_start ov66_0223899C
ov66_0223899C: ; 0x0223899C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x38
	ldr r3, _02238C68 ; =0x0225B6C4
	ldr r3, [r3, #0]
	cmp r3, #0
	ldrne r3, [r3]
	cmpne r3, #9
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, #0
	add r4, sp, #0x1c
	add r3, sp, #0x20
	str r5, [sp, #0x20]
	str r5, [sp, #0x1c]
	str r4, [sp]
	bl ov66_02238938
	movs r4, r0
	bne _022389F0
	ldr r0, [sp, #0x1c]
	cmp r0, #0x94
	movne r4, #2
_022389F0:
	cmp r4, #0
	bne _02238A08
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	mov r2, #0
	bl ov66_022364C4
_02238A08:
	ldr r0, _02238C68 ; =0x0225B6C4
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x1c]
	ldr r3, [r0, #0x34]
	mov r0, r4
	blx r3
	cmp r4, #0
	beq _02238A48
	ldr r0, _02238C68 ; =0x0225B6C4
	mov r1, #6
	ldr r2, [r0, #0]
	mov r0, #0xa
	stmia r2, {r0, r1}
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02238A48:
	ldr r0, _02238C68 ; =0x0225B6C4
	ldr r0, [r0, #0]
	add r0, r0, #0x110
	bl ov66_02235B8C
	ldr r1, _02238C68 ; =0x0225B6C4
	mov r2, #1
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x4c]
	strh r2, [sp, #0x28]
	str r1, [sp, #0x24]
	ldrb r1, [r0, #0x42]
	strb r1, [sp, #0x2a]
	ldrb r1, [r0, #0x39]
	add r0, sp, #0x2c
	strb r1, [sp, #0x2b]
	bl OS_GetMacAddress
	ldr r0, _02238C6C ; =0x02258E58
	ldr r1, _02238C68 ; =0x0225B6C4
	ldr r5, [r0, #0x10]
	ldr r1, [r1, #0]
	ldr r4, [r0, #0xc]
	ldr r0, [r1, #0x50]
	ldr r7, [r1, #0x4c]
	cmp r0, #0
	ldr r0, _02238C70 ; =0x0225B6D4
	moveq r8, #0
	ldr r0, [r0, #0]
	movne r8, #1
	cmp r0, #0
	addne sp, sp, #0x38
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0x40
	bl ov66_02246290
	movs r6, r0
	beq _02238B6C
	ldr r1, _02238C74 ; =0x02258EC0
	mov r0, #3
	str r1, [r6, #0]
	str r0, [r6, #4]
	mov r1, r4
	add r0, r6, #0xc
	str r8, [r6, #8]
	bl ov66_0223BA6C
	mov r1, r5
	add r0, r6, #0x18
	bl ov66_0223BA6C
	add r2, sp, #0x24
	add r4, r2, #0x14
	mov r1, #0
	str r7, [r6, #0x24]
	str r1, [r6, #0x28]
	str r1, [r6, #0x2c]
	ldr r0, _02238C78 ; =ov66_02238C7C
	str r1, [r6, #0x30]
	str r0, [r6, #0x34]
	str r1, [r6, #0x38]
	mov r0, #1
	str r0, [r6, #0x3c]
	strb r1, [sp, #9]
	strb r1, [sp, #0xa]
	strb r1, [sp, #8]
	strb r1, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x18]
	str r4, [r1, #0]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	add r0, r6, #0x28
	str r4, [sp, #0x14]
	ldmia r1, {r1, r2}
	bl ov66_022366CC
_02238B6C:
	ldr r0, _02238C70 ; =0x0225B6D4
	str r6, [r0, #0]
	ldr r0, [r6, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r6, #0xd
	ldrne r1, [r6, #0x14]
	ldr r0, [r6, #8]
	bl ov66_02258338
	ldr r0, [r6, #0x3c]
	ldr r4, [r6, #0x2c]
	cmp r0, #0
	ldr r0, [r6, #0x18]
	beq _02238BDC
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588F4
	b _02238C10
_02238BDC:
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588D0
_02238C10:
	cmp r0, #0
	moveq r0, #1
	beq _02238C24
	bl ov66_022585F4
	mov r0, #0
_02238C24:
	cmp r0, #0
	addne sp, sp, #0x38
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _02238C70 ; =0x0225B6D4
	ldr r0, [r0, #0]
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	beq _02238C54
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_02238C54:
	ldr r0, _02238C70 ; =0x0225B6D4
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_02238C68: .word 0x0225B6C4
_02238C6C: .word 0x02258E58
_02238C70: .word 0x0225B6D4
_02238C74: .word 0x02258EC0
_02238C78: .word ov66_02238C7C
	arm_func_end ov66_0223899C

	arm_func_start ov66_02238C7C
ov66_02238C7C: ; 0x02238C7C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x50
	ldr r3, _02238FFC ; =0x0225B6C4
	ldr r3, [r3, #0]
	cmp r3, #0
	ldrne r3, [r3]
	cmpne r3, #9
	addeq sp, sp, #0x50
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r5, #0
	add r4, sp, #0x1c
	add r3, sp, #0x20
	str r5, [sp, #0x20]
	str r5, [sp, #0x1c]
	str r4, [sp]
	bl ov66_02238938
	movs r4, r0
	bne _02238CE4
	ldr r0, _02238FFC ; =0x0225B6C4
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x1c]
	add r0, r0, #0x144
	bl ov66_0223EB80
	cmp r0, #0
	moveq r4, #2
_02238CE4:
	ldr r0, _02238FFC ; =0x0225B6C4
	ldr r1, [sp, #0x20]
	ldr r2, [r0, #0]
	mov r0, r4
	ldr r2, [r2, #0x38]
	blx r2
	cmp r4, #0
	beq _02238D20
	ldr r0, _02238FFC ; =0x0225B6C4
	mov r1, #4
	ldr r2, [r0, #0]
	mov r0, #0xa
	stmia r2, {r0, r1}
	add sp, sp, #0x50
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_02238D20:
	cmp r0, #0
	beq _02238D40
	ldr r0, _02238FFC ; =0x0225B6C4
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x1c]
	add r0, r0, #0x144
	bl ov66_0223CB84
_02238D40:
	ldr r0, _02238FFC ; =0x0225B6C4
	ldr r0, [r0, #0]
	add r0, r0, #0x110
	bl ov66_02235B8C
	ldr r1, _02238FFC ; =0x0225B6C4
	add r2, sp, #0x38
	mov r3, #0
	ldr r1, [r1, #0]
	mov r4, r0
	add r0, r1, #0x110
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	str r3, [r2, #0xc]
	str r3, [r2, #0x10]
	str r3, [r2, #0x14]
	bl ov66_02235B8C
	ldr r1, _02238FFC ; =0x0225B6C4
	mov r2, #1
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x4c]
	strh r2, [sp, #0x28]
	str r1, [sp, #0x24]
	ldrb r1, [r0, #0x42]
	strb r1, [sp, #0x2a]
	ldrb r1, [r0, #0x39]
	add r0, sp, #0x2c
	strb r1, [sp, #0x2b]
	bl OS_GetMacAddress
	ldrh r1, [sp, #0x28]
	ldrb r0, [sp, #0x2a]
	ldrb sb, [sp, #0x2b]
	ldrb lr, [sp, #0x2c]
	ldrb ip, [sp, #0x2d]
	ldrb r8, [sp, #0x2e]
	ldrb r7, [sp, #0x2f]
	ldrb r6, [sp, #0x30]
	ldrb r5, [sp, #0x31]
	ldrh r3, [sp, #0x32]
	ldr sl, [sp, #0x24]
	ldr r2, [sp, #0x34]
	strh r1, [sp, #0x3c]
	strb r0, [sp, #0x3e]
	str sl, [sp, #0x38]
	strb sb, [sp, #0x3f]
	strb lr, [sp, #0x40]
	strb ip, [sp, #0x41]
	strb r8, [sp, #0x42]
	strb r7, [sp, #0x43]
	strb r6, [sp, #0x44]
	strb r5, [sp, #0x45]
	ldr r0, _02239000 ; =0x02258E58
	str r2, [sp, #0x48]
	ldr r1, _02238FFC ; =0x0225B6C4
	strh r3, [sp, #0x46]
	ldr r3, [r4, #4]
	ldr r2, [r1, #0]
	str r3, [sp, #0x4c]
	ldr r1, [r2, #0x50]
	ldr r5, [r0, #0x14]
	ldr r4, [r0, #0xc]
	ldr r0, _02239004 ; =0x0225B6D4
	cmp r1, #0
	moveq r8, #0
	ldr r0, [r0, #0]
	movne r8, #1
	cmp r0, #0
	ldr r7, [r2, #0x4c]
	addne sp, sp, #0x50
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, #0x40
	bl ov66_02246290
	movs r6, r0
	beq _02238F00
	ldr r1, _02239008 ; =0x02258EC0
	mov r0, #3
	str r1, [r6, #0]
	str r0, [r6, #4]
	mov r1, r4
	add r0, r6, #0xc
	str r8, [r6, #8]
	bl ov66_0223BA6C
	mov r1, r5
	add r0, r6, #0x18
	bl ov66_0223BA6C
	add r2, sp, #0x38
	add r4, r2, #0x18
	mov r1, #0
	str r7, [r6, #0x24]
	str r1, [r6, #0x28]
	str r1, [r6, #0x2c]
	ldr r0, _0223900C ; =ov66_02239010
	str r1, [r6, #0x30]
	str r0, [r6, #0x34]
	str r1, [r6, #0x38]
	mov r0, #1
	str r0, [r6, #0x3c]
	strb r1, [sp, #9]
	strb r1, [sp, #0xa]
	strb r1, [sp, #8]
	strb r1, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x18]
	str r4, [r1, #0]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	add r0, r6, #0x28
	str r4, [sp, #0x14]
	ldmia r1, {r1, r2}
	bl ov66_022366CC
_02238F00:
	ldr r0, _02239004 ; =0x0225B6D4
	str r6, [r0, #0]
	ldr r0, [r6, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r6, #0xd
	ldrne r1, [r6, #0x14]
	ldr r0, [r6, #8]
	bl ov66_02258338
	ldr r0, [r6, #0x3c]
	ldr r4, [r6, #0x2c]
	cmp r0, #0
	ldr r0, [r6, #0x18]
	beq _02238F70
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588F4
	b _02238FA4
_02238F70:
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588D0
_02238FA4:
	cmp r0, #0
	moveq r0, #1
	beq _02238FB8
	bl ov66_022585F4
	mov r0, #0
_02238FB8:
	cmp r0, #0
	addne sp, sp, #0x50
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, _02239004 ; =0x0225B6D4
	ldr r0, [r0, #0]
	cmp r0, #0
	addeq sp, sp, #0x50
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	beq _02238FE8
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_02238FE8:
	ldr r0, _02239004 ; =0x0225B6D4
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x50
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02238FFC: .word 0x0225B6C4
_02239000: .word 0x02258E58
_02239004: .word 0x0225B6D4
_02239008: .word 0x02258EC0
_0223900C: .word ov66_02239010
	arm_func_end ov66_02238C7C

	arm_func_start ov66_02239010
ov66_02239010: ; 0x02239010
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x38
	ldr r3, _022392F0 ; =0x0225B6C4
	ldr r3, [r3, #0]
	cmp r3, #0
	ldrne r3, [r3]
	cmpne r3, #9
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r5, #0
	add r4, sp, #0x1c
	add r3, sp, #0x20
	str r5, [sp, #0x20]
	str r5, [sp, #0x1c]
	str r4, [sp]
	bl ov66_02238938
	ldr r2, _022392F0 ; =0x0225B6C4
	ldr r1, [sp, #0x20]
	ldr r3, [r2, #0]
	mov r4, r0
	ldr r2, [sp, #0x1c]
	add r0, r3, #0x144
	bl ov66_0223ED8C
	cmp r0, #0
	moveq r4, #2
	cmp r4, #0
	beq _02239098
	ldr r0, _022392F0 ; =0x0225B6C4
	mov r1, #5
	ldr r2, [r0, #0]
	mov r0, #0xa
	stmia r2, {r0, r1}
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02239098:
	ldr r0, _022392F0 ; =0x0225B6C4
	ldr r1, [sp, #0x20]
	ldr r0, [r0, #0]
	ldr r2, [sp, #0x1c]
	add r0, r0, #0x144
	bl ov66_0223EBAC
	ldr r0, _022392F0 ; =0x0225B6C4
	ldr r2, [sp, #0x1c]
	ldr r0, [r0, #0]
	ldr r1, [sp, #0x20]
	ldr r3, [r0, #0x3c]
	mov r0, r4
	mov r2, r2, lsr #3
	blx r3
	ldr r0, _022392F0 ; =0x0225B6C4
	ldr r0, [r0, #0]
	add r0, r0, #0x110
	bl ov66_02235B8C
	ldr r1, _022392F0 ; =0x0225B6C4
	mov r2, #1
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x4c]
	strh r2, [sp, #0x28]
	str r1, [sp, #0x24]
	ldrb r1, [r0, #0x42]
	strb r1, [sp, #0x2a]
	ldrb r1, [r0, #0x39]
	add r0, sp, #0x2c
	strb r1, [sp, #0x2b]
	bl OS_GetMacAddress
	ldr r0, _022392F4 ; =0x02258E58
	ldr r1, _022392F0 ; =0x0225B6C4
	ldr r5, [r0, #8]
	ldr r1, [r1, #0]
	ldr r4, [r0, #0xc]
	ldr r0, [r1, #0x50]
	ldr r7, [r1, #0x4c]
	cmp r0, #0
	ldr r0, _022392F8 ; =0x0225B6D4
	moveq r8, #0
	ldr r0, [r0, #0]
	movne r8, #1
	cmp r0, #0
	addne sp, sp, #0x38
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	mov r0, #0x40
	bl ov66_02246290
	movs r6, r0
	beq _022391F4
	ldr r1, _022392FC ; =0x02258EC0
	mov r0, #3
	str r1, [r6, #0]
	str r0, [r6, #4]
	mov r1, r4
	add r0, r6, #0xc
	str r8, [r6, #8]
	bl ov66_0223BA6C
	mov r1, r5
	add r0, r6, #0x18
	bl ov66_0223BA6C
	add r2, sp, #0x24
	add r4, r2, #0x14
	mov r1, #0
	str r7, [r6, #0x24]
	str r1, [r6, #0x28]
	str r1, [r6, #0x2c]
	ldr r0, _02239300 ; =ov66_02239304
	str r1, [r6, #0x30]
	str r0, [r6, #0x34]
	str r1, [r6, #0x38]
	mov r0, #1
	str r0, [r6, #0x3c]
	strb r1, [sp, #9]
	strb r1, [sp, #0xa]
	strb r1, [sp, #8]
	strb r1, [sp, #4]
	sub r1, sp, #4
	ldr r0, [sp, #0x18]
	str r4, [r1, #0]
	str r0, [r1, #4]
	ldr r3, [r1, #0]
	add r1, sp, #0xc
	str r2, [sp, #0xc]
	add r0, r6, #0x28
	str r4, [sp, #0x14]
	ldmia r1, {r1, r2}
	bl ov66_022366CC
_022391F4:
	ldr r0, _022392F8 ; =0x0225B6D4
	str r6, [r0, #0]
	ldr r0, [r6, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r6, #0xd
	ldrne r1, [r6, #0x14]
	ldr r0, [r6, #8]
	bl ov66_02258338
	ldr r0, [r6, #0x3c]
	ldr r4, [r6, #0x2c]
	cmp r0, #0
	ldr r0, [r6, #0x18]
	beq _02239264
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588F4
	b _02239298
_02239264:
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r5, r6, #0x19
	ldrne r5, [r6, #0x20]
	add r0, r6, #0x28
	bl ov66_02235B8C
	mov r1, #0
	str r1, [sp]
	mov r2, r0
	ldr r1, [r6, #0x24]
	mov r0, r5
	mov r3, r4
	bl ov66_022588D0
_02239298:
	cmp r0, #0
	moveq r0, #1
	beq _022392AC
	bl ov66_022585F4
	mov r0, #0
_022392AC:
	cmp r0, #0
	addne sp, sp, #0x38
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, _022392F8 ; =0x0225B6D4
	ldr r0, [r0, #0]
	cmp r0, #0
	addeq sp, sp, #0x38
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	beq _022392DC
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_022392DC:
	ldr r0, _022392F8 ; =0x0225B6D4
	mov r1, #0
	str r1, [r0, #0]
	add sp, sp, #0x38
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022392F0: .word 0x0225B6C4
_022392F4: .word 0x02258E58
_022392F8: .word 0x0225B6D4
_022392FC: .word 0x02258EC0
_02239300: .word ov66_02239304
	arm_func_end ov66_02239010

	arm_func_start ov66_02239304
ov66_02239304: ; 0x02239304
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr r3, _022393BC ; =0x0225B6C4
	ldr r3, [r3, #0]
	cmp r3, #0
	ldrne r3, [r3]
	cmpne r3, #9
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, pc}
	mov r3, #0
	add ip, sp, #4
	str r3, [sp, #8]
	str r3, [sp, #4]
	add r3, sp, #8
	str ip, [sp]
	bl ov66_02238938
	ldr r1, [sp, #4]
	mov r4, r0
	cmp r1, #0x2d8
	movne r4, #2
	cmp r4, #0
	beq _02239378
	ldr r0, _022393BC ; =0x0225B6C4
	mov r1, #7
	ldr r2, [r0, #0]
	mov r0, #0xa
	stmia r2, {r0, r1}
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
_02239378:
	ldr r0, _022393BC ; =0x0225B6C4
	ldr r1, [sp, #8]
	ldr r0, [r0, #0]
	add r0, r0, #0x144
	bl ov66_0223EE0C
	ldr r0, _022393BC ; =0x0225B6C4
	ldr r1, [sp, #8]
	ldr r2, [r0, #0]
	mov r0, r4
	ldr r2, [r2, #0x40]
	blx r2
	ldr r0, _022393BC ; =0x0225B6C4
	mov r1, #2
	ldr r0, [r0, #0]
	str r1, [r0, #0x144]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_022393BC: .word 0x0225B6C4
	arm_func_end ov66_02239304

	arm_func_start ov66_022393C0
ov66_022393C0: ; 0x022393C0
	stmfd sp!, {r3, lr}
	ldr r1, _02239404 ; =0x0225B6C4
	ldr r2, [r1, #0]
	cmp r2, #0
	ldrne r1, [r2]
	cmpne r1, #9
	ldmeqia sp!, {r3, pc}
	mov r3, #0
	ldr r1, _02239404 ; =0x0225B6C4
	str r3, [r2, #0x6c]
	ldr r1, [r1, #0]
	cmp r0, #0
	moveq r3, #2
	ldr r1, [r1, #0x44]
	mov r0, r3
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02239404: .word 0x0225B6C4
	arm_func_end ov66_022393C0

	arm_func_start ov66_02239408
ov66_02239408: ; 0x02239408
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2b4
	mov r6, r3
	cmp r6, #5
	mov r7, r2
	addeq sp, sp, #0x2b4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r0, #0
	beq _022398E4
	ldr r0, _0223998C ; =0x0225B6C4
	mov r4, #0
	ldr r3, [r0, #0]
	mov r2, #5
	add r0, sp, #0x288
	add r1, sp, #0x27c
	str r4, [r3, #0x70]
	str r2, [sp, #0x298]
	str r4, [sp, #0x29c]
	str r4, [sp, #0x2a0]
	str r4, [sp, #0x2a4]
	bl ov4_021D806C
	add r0, sp, #0x288
	add r1, sp, #0x27c
	bl RTC_ConvertDateTimeToSecond
	ldr r4, [sp, #0x298]
	str r0, [sp, #0x29c]
	str r1, [sp, #0x2a0]
	ldr r2, _0223998C ; =0x0225B6C4
	str r4, [sp, #0x268]
	add r3, sp, #0x29c
	ldr r4, [r2, #0]
	add ip, sp, #0x26c
	ldmia r3, {r2, r3}
	stmia ip, {r2, r3}
	ldr r1, [sp, #0x2a4]
	mov r0, #1
	str r0, [sp, #0x278]
	add r5, sp, #0x268
	str r1, [sp, #0x274]
	mov r1, r5
	add r0, r4, #0xfc
	mov r2, #0x10
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _022394F0
	ldr r0, [r5, #0]
	add r1, r5, #4
	str r0, [r4, #0xfc]
	add r0, r4, #0x100
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r5, #0xc]
	mov r0, #1
	str r1, [r4, #0x108]
	str r0, [r4, #0x10c]
_022394F0:
	ldr r1, _02239990 ; =ov66_0223A5A4
	mov r3, #1
	mov r0, r7
	mov r2, r6
	str r3, [r4, #0x128]
	bl ov66_02245A80
	ldr r2, _0223998C ; =0x0225B6C4
	add r0, sp, #0x258
	add r1, sp, #0x24c
	ldr r4, [r2, #0]
	bl ov4_021D806C
	add r0, sp, #0x258
	add r1, sp, #0x24c
	bl RTC_ConvertDateTimeToSecond
	mov r2, #0
	subs r0, r0, #3
	str r0, [sp, #0x1fc]
	sbc r0, r1, #0
	str r0, [sp, #0x200]
	ldr r0, _02239994 ; =ov66_022386D8
	mov r1, #3
	str r1, [sp, #0x204]
	str r0, [sp, #0x210]
	str r2, [sp, #0x208]
	str r2, [sp, #0x20c]
	add r0, sp, #0x214
	mov r1, #1
	add r2, sp, #0x1fc
	bl ov66_022369FC
	mov r0, #0
	add r2, sp, #0x218
	add r7, sp, #0x234
	add r1, r4, #0x134
	strb r0, [sp, #9]
	strb r0, [sp, #8]
	ldr r0, [sp, #0x214]
	add r6, r2, #8
	str r0, [sp, #0x230]
	ldr r4, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldmia r2, {r2, r3}
	stmia r7, {r2, r3}
	add r5, r7, #8
	ldmia r6, {r2, r3}
	stmia r5, {r2, r3}
	str r0, [r7, #0x14]
	add r0, sp, #0x2c
	add r2, sp, #0x230
	str r4, [r7, #0x10]
	bl ov66_0223AABC
	ldr r1, _0223998C ; =0x0225B6C4
	add r0, sp, #0x1ec
	ldr r4, [r1, #0]
	add r1, sp, #0x1e0
	bl ov4_021D806C
	add r0, sp, #0x1ec
	add r1, sp, #0x1e0
	bl RTC_ConvertDateTimeToSecond
	ldr r6, _02239998 ; =ov66_02238678
	mov r7, #0
	subs r5, r0, #4
	str r0, [sp, #0x190]
	sbc r3, r1, #0
	mov ip, #4
	add r0, sp, #0x1a8
	add r2, sp, #0x190
	mov r1, #2
	str ip, [sp, #0x198]
	str r7, [sp, #0x19c]
	str r7, [sp, #0x1a0]
	str r6, [sp, #0x1a4]
	str r5, [sp, #0x190]
	str r3, [sp, #0x194]
	bl ov66_022369FC
	ldr r0, [sp, #0x1a8]
	add r6, sp, #0x1ac
	add r5, sp, #0x1c8
	str r0, [sp, #0x1c4]
	ldmia r6, {r2, r3}
	stmia r5, {r2, r3}
	add r2, r6, #8
	add r0, r5, #8
	ldmia r2, {r2, r3}
	stmia r0, {r2, r3}
	ldr r2, [r6, #0x10]
	ldr r3, [r6, #0x14]
	str r2, [r5, #0x10]
	add r1, r4, #0x134
	add r0, sp, #0x24
	add r2, sp, #0x1c4
	strb r7, [sp, #7]
	strb r7, [sp, #6]
	str r3, [r5, #0x14]
	bl ov66_0223AABC
	ldr r1, _0223998C ; =0x0225B6C4
	add r0, sp, #0x180
	ldr r4, [r1, #0]
	add r1, sp, #0x174
	bl ov4_021D806C
	add r0, sp, #0x180
	add r1, sp, #0x174
	bl RTC_ConvertDateTimeToSecond
	mov r2, #4
	str r2, [sp, #0x12c]
	mov r2, r7
	str r0, [sp, #0x124]
	subs r0, r0, #4
	str r0, [sp, #0x124]
	str r2, [sp, #0x130]
	str r2, [sp, #0x134]
	ldr r2, _0223999C ; =ov66_022387DC
	str r1, [sp, #0x128]
	sbc r0, r1, #0
	str r2, [sp, #0x138]
	str r0, [sp, #0x128]
	add r0, sp, #0x13c
	mov r1, #5
	add r2, sp, #0x124
	bl ov66_022369FC
	ldr r0, [sp, #0x13c]
	add r7, sp, #0x140
	add r6, sp, #0x15c
	str r0, [sp, #0x158]
	ldmia r7, {r2, r3}
	mov ip, #0
	stmia r6, {r2, r3}
	add r1, r7, #8
	ldmia r1, {r2, r3}
	add r0, r6, #8
	stmia r0, {r2, r3}
	ldr r5, [r7, #0x10]
	ldr r3, [r7, #0x14]
	add r0, sp, #0x1c
	add r2, sp, #0x158
	add r1, r4, #0x134
	strb ip, [sp, #5]
	strb ip, [sp, #4]
	str r5, [r6, #0x10]
	str r3, [r6, #0x14]
	bl ov66_0223AABC
	ldr r2, _0223998C ; =0x0225B6C4
	add r0, sp, #0x114
	add r1, sp, #0x108
	ldr r4, [r2, #0]
	bl ov4_021D806C
	add r0, sp, #0x114
	add r1, sp, #0x108
	bl RTC_ConvertDateTimeToSecond
	mov r2, #3
	str r2, [sp, #0xc0]
	mov r2, #0
	str r0, [sp, #0xb8]
	subs r0, r0, #3
	str r0, [sp, #0xb8]
	str r2, [sp, #0xc4]
	str r2, [sp, #0xc8]
	ldr r2, _022399A0 ; =ov66_02238784
	str r1, [sp, #0xbc]
	sbc r0, r1, #0
	str r2, [sp, #0xcc]
	str r0, [sp, #0xbc]
	add r0, sp, #0xd0
	mov r1, #4
	add r2, sp, #0xb8
	bl ov66_022369FC
	mov r0, #0
	add r2, sp, #0xd4
	add r7, sp, #0xf0
	strb r0, [sp, #3]
	strb r0, [sp, #2]
	ldr r0, [sp, #0xd0]
	add r6, r2, #8
	str r0, [sp, #0xec]
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldmia r2, {r2, r3}
	stmia r7, {r2, r3}
	add r5, r7, #8
	ldmia r6, {r2, r3}
	stmia r5, {r2, r3}
	str r1, [r7, #0x10]
	str r0, [r7, #0x14]
	add r0, sp, #0x14
	add r2, sp, #0xec
	add r1, r4, #0x134
	bl ov66_0223AABC
	ldr r2, _0223998C ; =0x0225B6C4
	add r0, sp, #0xa8
	add r1, sp, #0x9c
	ldr r4, [r2, #0]
	bl ov4_021D806C
	add r0, sp, #0xa8
	add r1, sp, #0x9c
	bl RTC_ConvertDateTimeToSecond
	mov r2, #0
	subs r0, r0, #4
	str r0, [sp, #0x4c]
	sbc r0, r1, #0
	str r0, [sp, #0x50]
	ldr r0, _022399A4 ; =ov66_02238858
	mov r1, #4
	str r1, [sp, #0x54]
	str r0, [sp, #0x60]
	str r2, [sp, #0x58]
	str r2, [sp, #0x5c]
	add r0, sp, #0x64
	mov r1, #6
	add r2, sp, #0x4c
	bl ov66_022369FC
	mov r0, #0
	add r2, sp, #0x68
	add r7, sp, #0x84
	add r1, r4, #0x134
	strb r0, [sp, #1]
	strb r0, [sp]
	ldr r0, [sp, #0x64]
	add r6, r2, #8
	str r0, [sp, #0x80]
	ldr r4, [r2, #0x10]
	ldr r0, [r2, #0x14]
	ldmia r2, {r2, r3}
	stmia r7, {r2, r3}
	add r5, r7, #8
	ldmia r6, {r2, r3}
	stmia r5, {r2, r3}
	str r0, [r7, #0x14]
	add r0, sp, #0xc
	add r2, sp, #0x80
	str r4, [r7, #0x10]
	bl ov66_0223AABC
	ldr r0, _0223998C ; =0x0225B6C4
	add r1, sp, #0x40
	ldr r4, [r0, #0]
	add r3, sp, #0x2a8
	ldr r0, [r4, #0x100]
	ldr r2, [r4, #0xfc]
	str r0, [sp, #0x40]
	ldr r0, [r4, #0x104]
	str r2, [sp, #0x48]
	str r0, [sp, #0x44]
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r5, [r4, #0x124]
	add r0, r4, #0x110
	bl ov66_02235B8C
	ldr r3, [r4, #0x114]
	mov r2, r0
	ldr r4, [r4, #0xc]
	add r1, sp, #0x2a8
	mov r0, r5
	blx r4
	add sp, sp, #0x2b4
	ldmia sp!, {r4, r5, r6, r7, pc}
_022398E4:
	ldr r0, _0223998C ; =0x0225B6C4
	mov r1, #0
	ldr r4, [r0, #0]
	add r2, sp, #0x34
	mov r0, r1
_022398F8:
	str r0, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _022398F8
	mov r2, #5
	add r1, sp, #0x34
	add r0, r4, #0xbc
	str r2, [r4, #0xb8]
	bl ov66_0223BC5C
	mov r1, #0
	str r1, [r4, #0xc8]
	add r0, sp, #0x34
	str r1, [r4, #0xcc]
	bl ov66_0223BADC
	ldr r0, _0223998C ; =0x0225B6C4
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x70]
	cmp r0, #3
	movge r0, #0
	addlt r0, r0, #1
	strlt r0, [r1, #0x70]
	movlt r0, #1
	cmp r0, #0
	beq _02239970
	ldr r0, _0223998C ; =0x0225B6C4
	mov r1, #4
	ldr r0, [r0, #0]
	add sp, sp, #0x2b4
	str r1, [r0, #0]
	ldmia sp!, {r4, r5, r6, r7, pc}
_02239970:
	ldr r0, _0223998C ; =0x0225B6C4
	mov r1, #3
	ldr r2, [r0, #0]
	mov r0, #0xa
	stmia r2, {r0, r1}
	add sp, sp, #0x2b4
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_0223998C: .word 0x0225B6C4
_02239990: .word ov66_0223A5A4
_02239994: .word ov66_022386D8
_02239998: .word ov66_02238678
_0223999C: .word ov66_022387DC
_022399A0: .word ov66_02238784
_022399A4: .word ov66_02238858
	arm_func_end ov66_02239408

	arm_func_start ov66_022399A8
ov66_022399A8: ; 0x022399A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x30
	mov r6, r3
	cmp r6, #5
	mov r7, r0
	addeq sp, sp, #0x30
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r7, #0
	beq _02239AD8
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _02239A04
_022399D8: ; jump table
	b _02239A04 ; case 0
	b _022399EC ; case 1
	b _022399EC ; case 2
	b _022399F4 ; case 3
	b _022399FC ; case 4
_022399EC:
	ldr r1, _02239B44 ; =0x02258C4C
	b _02239A08
_022399F4:
	ldr r1, _02239B48 ; =0x02258C0C
	b _02239A08
_022399FC:
	ldr r1, _02239B4C ; =0x02258C2C
	b _02239A08
_02239A04:
	mov r1, #0
_02239A08:
	cmp r1, #0
	bne _02239A24
	ldr r0, _02239B50 ; =0x0225B6C4
	mov r3, #1
	ldr r4, [r0, #0]
	mov r0, #0xa
	stmia r4, {r0, r3}
_02239A24:
	mov r0, r2
	bl ov66_02245C54
	ldr r0, _02239B50 ; =0x0225B6C4
	mov r1, #0
	ldr r4, [r0, #0]
	add ip, sp, #0x24
	str r1, [r4, #0x10c]
	ldr r1, [r4, #0xfc]
	add r0, r4, #0x100
	str r1, [sp, #0x20]
	ldmia r0, {r2, r3}
	stmia ip, {r2, r3}
	ldr r1, [r4, #0x108]
	add r0, sp, #0x10
	str r1, [sp, #0x2c]
	str r6, [sp, #0x20]
	str r6, [sp, #0xc]
	ldmia ip, {r2, r3}
	stmia r0, {r2, r3}
	mov r0, #1
	str r0, [sp, #0x1c]
	add r5, sp, #0xc
	str r1, [sp, #0x18]
	mov r1, r5
	add r0, r4, #0xfc
	mov r2, #0x10
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _02239ACC
	ldr r0, [r5, #0]
	add r1, r5, #4
	str r0, [r4, #0xfc]
	add r0, r4, #0x100
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r5, #0xc]
	mov r0, #1
	str r1, [r4, #0x108]
	str r0, [r4, #0x10c]
_02239ACC:
	mov r0, #1
	str r0, [r4, #0x128]
	b _02239B24
_02239AD8:
	ldr r0, _02239B50 ; =0x0225B6C4
	mov r1, #0
	ldr r4, [r0, #0]
	add r2, sp, #0
	mov r0, r1
_02239AEC:
	str r0, [r2, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _02239AEC
	mov r2, #5
	add r1, sp, #0
	add r0, r4, #0xd4
	str r2, [r4, #0xd0]
	bl ov66_0223BC5C
	mov r1, #0
	str r1, [r4, #0xe0]
	add r0, sp, #0
	str r1, [r4, #0xe4]
	bl ov66_0223BADC
_02239B24:
	ldr r1, _02239B50 ; =0x0225B6C4
	mov r0, r7
	ldr r2, [r1, #0]
	mov r1, r6
	ldr r2, [r2, #8]
	blx r2
	add sp, sp, #0x30
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02239B44: .word 0x02258C4C
_02239B48: .word 0x02258C0C
_02239B4C: .word 0x02258C2C
_02239B50: .word 0x0225B6C4
	arm_func_end ov66_022399A8

	arm_func_start ov66_02239B54
ov66_02239B54: ; 0x02239B54
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	mov r2, r0
	mov r7, r1
	add r0, sp, #0x38
	mov r1, r2
	bl ov66_0223BA6C
	ldr r1, _02239D5C ; =0x0225B6C4
	add r0, sp, #0x20
	ldr r5, [r1, #0]
	add r6, sp, #0x38
	add r1, r5, #0xb8
	bl ov66_02235FC8
	add r0, sp, #0x20
	mov r1, r6
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #0x20
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r5, [r5, #0xb8]
	bne _02239BDC
	add r0, sp, #0x2c
	add r1, r5, #0xd0
	bl ov66_02235FC8
	add r0, sp, #0x2c
	mov r1, r6
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #0x2c
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r5, [r5, #0xd0]
	moveq r5, #5
_02239BDC:
	add r0, sp, #0x38
	bl ov66_0223BADC
	cmp r5, #5
	addeq sp, sp, #0x60
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	bne _02239C14
	ldr r0, _02239D5C ; =0x0225B6C4
	mov r1, r7
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241C44
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02239C14:
	ldr r0, _02239D5C ; =0x0225B6C4
	mov r1, r7
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241DCC
	movs r4, r0
	bne _02239C5C
	ldr r0, _02239D5C ; =0x0225B6C4
	mov r1, r7
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241C44
	ldr r0, _02239D5C ; =0x0225B6C4
	mov r1, r7
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241DCC
	mov r4, r0
_02239C5C:
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	add r1, sp, #0x54
	str r0, [sp, #0x50]
	add r0, r4, #8
	ldmia r0, {r2, r3}
	stmia r1, {r2, r3}
	ldr ip, [r4, #0x10]
	add r0, sp, #0x10
	str ip, [sp, #0x5c]
	str r5, [sp, #0x50]
	str r5, [sp, #0xc]
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	add r6, sp, #0xc
	mov r3, #1
	mov r1, r6
	add r0, r4, #4
	mov r2, #0x10
	str ip, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _02239CF4
	ldr r0, [r6, #0]
	add r1, r6, #4
	str r0, [r4, #4]
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r6, #0xc]
	mov r0, #1
	str r1, [r4, #0x10]
	str r0, [r4, #0x14]
_02239CF4:
	mov r0, #1
	str r0, [r4, #0x30]
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r5, [r4, #4]
	ldr r2, [r4, #8]
	ldr r1, [r4, #0xc]
	add r0, sp, #0
	add r3, sp, #0x44
	str r5, [sp, #8]
	str r2, [sp]
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r4, #0x38]
	cmp r0, #0
	addeq sp, sp, #0x60
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _02239D5C ; =0x0225B6C4
	mov r0, r7
	ldr r2, [r1, #0]
	mov r1, r3
	ldr r2, [r2, #0x20]
	blx r2
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02239D5C: .word 0x0225B6C4
	arm_func_end ov66_02239B54

	arm_func_start ov66_02239D60
ov66_02239D60: ; 0x02239D60
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x60
	mov r2, r0
	mov r6, r1
	add r0, sp, #0x38
	mov r1, r2
	bl ov66_0223BA6C
	ldr r1, _02239F80 ; =0x0225B6C4
	add r0, sp, #0x20
	ldr r5, [r1, #0]
	add r7, sp, #0x38
	add r1, r5, #0xb8
	bl ov66_02235FC8
	add r0, sp, #0x20
	mov r1, r7
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #0x20
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r4, [r5, #0xb8]
	bne _02239DE8
	add r0, sp, #0x2c
	add r1, r5, #0xd0
	bl ov66_02235FC8
	add r0, sp, #0x2c
	mov r1, r7
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #0x2c
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r4, [r5, #0xd0]
	moveq r4, #5
_02239DE8:
	add r0, sp, #0x38
	bl ov66_0223BADC
	cmp r4, #5
	addeq sp, sp, #0x60
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r4, #0
	bne _02239E5C
	ldr r0, _02239F80 ; =0x0225B6C4
	mov r1, r6
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241DCC
	cmp r0, #0
	ldrne r0, [r0, #0x38]
	cmpne r0, #0
	addeq sp, sp, #0x60
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _02239F80 ; =0x0225B6C4
	mov r0, r6
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x10]
	blx r1
	ldr r0, _02239F80 ; =0x0225B6C4
	mov r1, r6
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241D40
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02239E5C:
	ldr r0, _02239F80 ; =0x0225B6C4
	mov r1, r6
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241DCC
	movs r4, r0
	addeq sp, sp, #0x60
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #4]
	add lr, sp, #0x54
	str r0, [sp, #0x50]
	add r0, r4, #8
	ldmia r0, {r2, r3}
	stmia lr, {r2, r3}
	ldr ip, [r4, #0x10]
	mov r1, #5
	add r0, sp, #0x10
	str ip, [sp, #0x5c]
	str r1, [sp, #0x50]
	str r1, [sp, #0xc]
	add r5, sp, #0xc
	ldmia lr, {r2, r3}
	stmia r0, {r2, r3}
	mov r3, #1
	mov r1, r5
	add r0, r4, #4
	mov r2, #0x10
	str ip, [sp, #0x18]
	str r3, [sp, #0x1c]
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	bne _02239F18
	ldr r0, [r5, #0]
	add r1, r5, #4
	str r0, [r4, #4]
	add r0, r4, #8
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, [r5, #0xc]
	mov r0, #1
	str r1, [r4, #0x10]
	str r0, [r4, #0x14]
_02239F18:
	mov r0, #1
	str r0, [r4, #0x30]
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r5, [r4, #4]
	ldr r2, [r4, #8]
	ldr r1, [r4, #0xc]
	add r0, sp, #0
	add r3, sp, #0x44
	str r5, [sp, #8]
	str r2, [sp]
	str r1, [sp, #4]
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r0, [r4, #0x38]
	cmp r0, #0
	addeq sp, sp, #0x60
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _02239F80 ; =0x0225B6C4
	mov r0, r6
	ldr r2, [r1, #0]
	mov r1, r3
	ldr r2, [r2, #0x20]
	blx r2
	add sp, sp, #0x60
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02239F80: .word 0x0225B6C4
	arm_func_end ov66_02239D60

	arm_func_start ov66_02239F84
ov66_02239F84: ; 0x02239F84
	stmfd sp!, {r3, lr}
	mov ip, r1
	mov r3, r2
	mov r1, r0
	mov r2, ip
	mov r0, #0
	bl ov66_02239FA4
	ldmia sp!, {r3, pc}
	arm_func_end ov66_02239F84

	arm_func_start ov66_02239FA4
ov66_02239FA4: ; 0x02239FA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x58
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, #5
	beq _0223A040
	add r0, sp, #0x28
	mov r1, r7
	bl ov66_0223BA6C
	ldr r1, _0223A1C4 ; =0x0225B6C4
	add r0, sp, #4
	ldr r8, [r1]
	add sb, sp, #0x28
	add r1, r8, #0xb8
	bl ov66_02235FC8
	add r0, sp, #4
	mov r1, sb
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #4
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r4, [r8, #0xb8]
	bne _0223A038
	add r0, sp, #0x10
	add r1, r8, #0xd0
	bl ov66_02235FC8
	add r0, sp, #0x10
	mov r1, sb
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #0x10
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r4, [r8, #0xd0]
	moveq r4, #5
_0223A038:
	add r0, sp, #0x28
	bl ov66_0223BADC
_0223A040:
	cmp r7, #0
	beq _0223A054
	cmp r4, #5
	addeq sp, sp, #0x58
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0223A054:
	mov r7, #0
	add r2, sp, #0x4c
	mov r3, #6
	add r0, sp, #0x1c
	mov r1, r5
	str r7, [sp, #0x34]
	str r3, [sp, #0x38]
	str r7, [sp, #0x3c]
	str r7, [sp, #0x40]
	str r7, [sp, #0x44]
	str r7, [sp, #0x48]
	str r7, [r2, #0]
	str r7, [r2, #4]
	str r7, [r2, #8]
	bl ov66_0223BA6C
	add r0, sp, #0x1c
	add r1, sp, #0x34
	bl ov66_02241184
	cmp r0, #0
	moveq r5, #1
	movne r5, r7
	add r0, sp, #0x1c
	bl ov66_0223BADC
	cmp r5, #0
	beq _0223A0C8
	add r0, sp, #0x4c
	bl ov66_0223B8E8
	add sp, sp, #0x58
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0223A0C8:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _0223A190
	cmp r0, #1
	bne _0223A1B4
	ldr r0, _0223A1C4 ; =0x0225B6C4
	mov r1, r6
	ldr r0, [r0, #0]
	add r0, r0, #0xe8
	bl ov66_02241DCC
	cmp r0, #0
	ldrne r0, [r0, #0x38]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	bne _0223A11C
	add r0, sp, #0x4c
	bl ov66_0223B8E8
	add sp, sp, #0x58
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_0223A11C:
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _0223A164
	cmp r0, #1
	bne _0223A1B4
	ldr r1, _0223A1C4 ; =0x0225B6C4
	add r0, sp, #0x4c
	ldr r5, [r1, #0]
	bl ov66_02235B8C
	ldr r1, [sp, #0x50]
	mov r3, r0
	str r1, [sp]
	ldr r2, [sp, #0x44]
	ldr r5, [r5, #0x18]
	mov r0, r6
	mov r1, r4
	blx r5
	b _0223A1B4
_0223A164:
	ldr r1, _0223A1C4 ; =0x0225B6C4
	add r0, sp, #0x4c
	ldr r5, [r1, #0]
	bl ov66_02235B8C
	mov r3, r0
	ldr r2, [sp, #0x44]
	ldr r5, [r5, #0x14]
	mov r0, r6
	mov r1, r4
	blx r5
	b _0223A1B4
_0223A190:
	add r0, sp, #0x4c
	bl ov66_02235B8C
	ldr r5, [sp, #0x50]
	mov r3, r0
	add r0, sp, #0x34
	mov r1, r6
	mov r2, r4
	str r5, [sp]
	bl ov66_02238460
_0223A1B4:
	add r0, sp, #0x4c
	bl ov66_0223B8E8
	add sp, sp, #0x58
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0223A1C4: .word 0x0225B6C4
	arm_func_end ov66_02239FA4

	arm_func_start ov66_0223A1C8
ov66_0223A1C8: ; 0x0223A1C8
	stmfd sp!, {r3, lr}
	ldr r1, _0223A1E0 ; =0x0225B6C4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x48]
	blx r1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A1E0: .word 0x0225B6C4
	arm_func_end ov66_0223A1C8

	arm_func_start ov66_0223A1E4
ov66_0223A1E4: ; 0x0223A1E4
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r4, r0
	stmia sp, {r2, r3}
	mov lr, r1
	mov r0, #1
	mov ip, #0
	mov r1, r0
	mov r2, r4
	mov r3, lr
	str ip, [sp, #8]
	bl ov66_02237D24
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223A1E4

	arm_func_start ov66_0223A21C
ov66_0223A21C: ; 0x0223A21C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	ldr lr, [sp, #0x18]
	mov r4, r2
	stmia sp, {r3, lr}
	ldr ip, [sp, #0x1c]
	mov r2, r1
	mov r3, r4
	mov r1, #0
	str ip, [sp, #8]
	bl ov66_02237D24
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223A21C

	arm_func_start ov66_0223A250
ov66_0223A250: ; 0x0223A250
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x3c
	ldr r8, [sp, #0x60]
	cmp r0, #0
	mov sl, r1
	mov sb, r2
	addeq sp, sp, #0x3c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sl, #0
	mov r7, #0
	ble _0223A360
	ldr fp, _0223A3A8 ; =0x02258FB8
	add r6, sp, #0x24
	add r5, sp, #0x18
	add r4, sp, #0x30
_0223A28C:
	ldr r0, [r8, r7, lsl #2]
	cmp r0, #0x14
	bge _0223A354
	ldr r1, [sb, r7, lsl #2]
	mov r0, r6
	bl ov66_0223BA6C
	mov r0, r5
	mov r1, fp
	bl ov66_0223BA6C
	mov r0, r4
	mov r1, r6
	mov r2, r5
	mov r3, #0
	bl ov66_0223A3B0
	mov r0, r5
	bl ov66_0223BADC
	mov r0, r6
	bl ov66_0223BADC
	ldr r0, [sp, #0x34]
	cmp r0, #2
	bhs _0223A2EC
	mov r0, r4
	bl ov66_0223B578
	b _0223A354
_0223A2EC:
	ldr r1, [sp, #0x30]
	ldr r0, [r1, #0xc]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq r1, r1, #0xd
	ldrne r1, [r1, #0x14]
	add r0, sp, #0xc
	bl ov66_0223BA6C
	ldr r0, _0223A3AC ; =0x0225B6C4
	add r1, sp, #0xc
	ldr r0, [r0, #0]
	add r0, r0, #0x58
	bl ov66_0223BC5C
	add r0, sp, #0xc
	bl ov66_0223BADC
	ldr r1, _0223A3AC ; =0x0225B6C4
	mov r3, #0
	ldr r2, [r1, #0]
	add r0, sp, #0x30
	str r3, [r2, #0x64]
	ldr r1, [r1, #0]
	mov r2, #6
	str r2, [r1, #0]
	bl ov66_0223B578
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0223A354:
	add r7, r7, #1
	cmp r7, sl
	blt _0223A28C
_0223A360:
	add r0, sp, #0
	bl ov66_02237A88
	ldr r0, _0223A3AC ; =0x0225B6C4
	add r1, sp, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x58
	bl ov66_0223BC5C
	add r0, sp, #0
	bl ov66_0223BADC
	ldr r0, _0223A3AC ; =0x0225B6C4
	mov r3, #1
	ldr r2, [r0, #0]
	mov r1, #6
	str r3, [r2, #0x64]
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223A3A8: .word 0x02258FB8
_0223A3AC: .word 0x0225B6C4
	arm_func_end ov66_0223A250

	arm_func_start ov66_0223A3B0
ov66_0223A3B0: ; 0x0223A3B0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x2c
	mov sl, r0
	mov r4, #0
	str r4, [sl]
	str r4, [sl, #4]
	add r0, sp, #0x20
	mov sb, r2
	str r3, [sp]
	str r4, [sl, #8]
	mov r7, #1
	bl ov66_0223B938
	sub r5, sp, #4
	add fp, sp, #0x20
	add r6, sp, #0x14
	mvn r4, #0
	b _0223A4D0
_0223A3F4:
	cmp r8, #0
	beq _0223A488
	mov r0, r6
	mov r1, fp
	mov r2, #0
	mov r3, r8
	bl ov66_0223A594
	mov r1, #0
	add r0, sp, #7
	strb r1, [r0]
	ldr r1, [sl, #4]
	ldr r0, [sl, #8]
	cmp r1, r0
	bhs _0223A458
	mov r0, #0xc
	mul r0, r1, r0
	ldr r1, [sl]
	adds r0, r1, r0
	beq _0223A448
	mov r1, r6
	bl ov66_0223B938
_0223A448:
	ldr r0, [sl, #4]
	add r0, r0, #1
	str r0, [sl, #4]
	b _0223A47C
_0223A458:
	mov r0, #0
	mov r2, #0
	strb r0, [sp, #6]
	mov r2, r2
	strb r2, [r5]
	ldr r2, [r5, #0]
	mov r0, sl
	mov r1, r6
	bl ov66_0223B548
_0223A47C:
	mov r0, r6
	bl ov66_0223BADC
	add r7, r7, #1
_0223A488:
	ldr r0, [sb]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r0, [sb, #4]
	bne _0223A4A8
	ldrb r0, [sb]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x19
_0223A4A8:
	add r2, r8, r0
	add r0, sp, #8
	mov r1, fp
	mov r3, r4
	bl ov66_0223A594
	mov r0, fp
	add r1, sp, #8
	bl ov66_0223BC5C
	add r0, sp, #8
	bl ov66_0223BADC
_0223A4D0:
	ldr r0, [sp]
	cmp r7, r0
	beq _0223A4F8
	mov r0, fp
	mov r1, sb
	mov r2, #0
	bl ov66_0223BDC4
	mov r8, r0
	cmp r8, r4
	bne _0223A3F4
_0223A4F8:
	ldr r0, [sp, #0x20]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r0, [sp, #0x24]
	bne _0223A518
	ldrb r0, [sp, #0x20]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x19
_0223A518:
	cmp r0, #0
	beq _0223A584
	mov r2, #0
	strb r2, [sp, #5]
	ldr r1, [sl, #4]
	ldr r0, [sl, #8]
	cmp r1, r0
	bhs _0223A564
	mov r0, #0xc
	mul r0, r1, r0
	ldr r1, [sl]
	adds r0, r1, r0
	beq _0223A554
	add r1, sp, #0x20
	bl ov66_0223B938
_0223A554:
	ldr r0, [sl, #4]
	add r0, r0, #1
	str r0, [sl, #4]
	b _0223A584
_0223A564:
	strb r2, [sp, #4]
	sub r1, sp, #4
	and r0, r2, #0xff
	strb r0, [r1]
	ldr r2, [r1, #0]
	add r1, sp, #0x20
	mov r0, sl
	bl ov66_0223B548
_0223A584:
	add r0, sp, #0x20
	bl ov66_0223BADC
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov66_0223A3B0

	arm_func_start ov66_0223A594
ov66_0223A594: ; 0x0223A594
	stmfd sp!, {r3, lr}
	str r1, [sp]
	bl ov66_0223B9B4
	ldmia sp!, {r3, pc}
	arm_func_end ov66_0223A594

	arm_func_start ov66_0223A5A4
ov66_0223A5A4: ; 0x0223A5A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	cmp r0, #0
	mov sl, r1
	mov sb, r2
	mov r8, r3
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0x1c
	bl ov66_0223BA6C
	ldr r1, _0223A6E4 ; =0x0225B6C4
	add r0, sp, #4
	ldr r5, [r1, #0]
	add r6, sp, #0x1c
	add r1, r5, #0xb8
	bl ov66_02235FC8
	add r0, sp, #4
	mov r1, r6
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #4
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r4, [r5, #0xb8]
	bne _0223A638
	add r0, sp, #0x10
	add r1, r5, #0xd0
	bl ov66_02235FC8
	add r0, sp, #0x10
	mov r1, r6
	bl ov66_0223800C
	mov r4, r0
	add r0, sp, #0x10
	bl ov66_0223BADC
	cmp r4, #0
	ldrne r4, [r5, #0xd0]
	moveq r4, #5
_0223A638:
	add r0, sp, #0x1c
	bl ov66_0223BADC
	cmp r4, #5
	addeq sp, sp, #0x28
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r4, #0
	addne sp, sp, #0x28
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #0
	mov r7, #0
	ble _0223A6CC
	ldr r5, _0223A6E8 ; =ov66_0223A21C
	ldr fp, _0223A6E4 ; =0x0225B6C4
	mov r6, r7
	mov r4, r7
_0223A674:
	ldr r2, [fp]
	ldr r1, [r8, r7, lsl #2]
	ldr r0, [r2, #0x4c]
	cmp r1, r0
	beq _0223A6C0
	add r0, r2, #0xe8
	bl ov66_02241C44
	str r6, [sp]
	ldr r1, [r8, r7, lsl #2]
	ldr r2, _0223A6EC ; =0x02258FC4
	mov r0, sl
	mov r3, r5
	bl ov66_022456B0
	str r4, [sp]
	ldr r1, [r8, r7, lsl #2]
	ldr r2, _0223A6F0 ; =0x02258FD4
	mov r0, sl
	mov r3, r5
	bl ov66_022456B0
_0223A6C0:
	add r7, r7, #1
	cmp r7, sb
	blt _0223A674
_0223A6CC:
	ldr r0, _0223A6E4 ; =0x0225B6C4
	mov r1, #1
	ldr r0, [r0, #0]
	str r1, [r0, #0xc8]
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0223A6E4: .word 0x0225B6C4
_0223A6E8: .word ov66_0223A21C
_0223A6EC: .word 0x02258FC4
_0223A6F0: .word 0x02258FD4
	arm_func_end ov66_0223A5A4

	arm_func_start ov66_0223A6F4
ov66_0223A6F4: ; 0x0223A6F4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r2, #0x1c]
	cmp r0, #0x14
	bne _0223A738
	ldr r0, _0223A748 ; =0x0225B6C4
	mov r3, #1
	ldr r2, [r0, #0]
	add r1, sp, #0
	str r3, [r2, #0xcc]
	ldr r0, [r0, #0]
	mov r2, #4
	add r0, r0, #0x134
	str r2, [sp]
	bl ov66_02236CA0
	ldmia sp!, {r3, pc}
_0223A738:
	mov r0, r1
	ldr r1, _0223A74C ; =0x02258C6C
	bl ov66_02245C54
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0223A748: .word 0x0225B6C4
_0223A74C: .word 0x02258C6C
	arm_func_end ov66_0223A6F4

	arm_func_start ov66_0223A750
ov66_0223A750: ; 0x0223A750
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x40
	cmp r0, #0
	addeq sp, sp, #0x40
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #0x48]
	mov r2, #0
	add r1, sp, #0x34
	str r2, [sp, #0x34]
	str r2, [sp, #0x38]
	str r2, [sp, #0x3c]
	bl ov66_02237EF8
	cmp r0, #0
	beq _0223A794
	ldr r0, [sp, #0x38]
	cmp r0, #8
	beq _0223A7F8
_0223A794:
	ldr r2, _0223A858 ; =0x0225B6C4
	add r0, sp, #0x18
	add r1, sp, #0x28
	ldr r4, [r2, #0]
	bl ov4_021D806C
	add r0, sp, #0x18
	add r1, sp, #0x28
	bl RTC_ConvertDateTimeToSecond
	str r0, [r4, #0x14c]
	str r1, [r4, #0x150]
	add r2, r4, #0x14c
	add r0, sp, #0x10
	ldmia r2, {r2, r3}
	stmia r0, {r2, r3}
	mov r1, #8
	mov r3, r0
	ldr r2, _0223A85C ; =0x02258FE4
	sub r0, r1, #9
	str r1, [sp]
	mov r1, #0
	bl ov66_02237348
	add r0, sp, #0x34
	bl ov66_0223B8E8
	add sp, sp, #0x40
	ldmia sp!, {r4, pc}
_0223A7F8:
	add r0, sp, #0x34
	bl ov66_02235B8C
	ldr r1, _0223A858 ; =0x0225B6C4
	ldr lr, [r0]
	ldr ip, [r0, #4]
	ldr r2, [r1, #0]
	mov r0, #1
	str r0, [r2, #0x148]
	add r3, sp, #8
	str lr, [sp, #8]
	str ip, [sp, #0xc]
	add r0, r2, #0x14c
	ldmia r3, {r2, r3}
	stmia r0, {r2, r3}
	ldr r0, [r1, #0]
	mov r2, #5
	add r1, sp, #4
	add r0, r0, #0x134
	str r2, [sp, #4]
	bl ov66_02236CA0
	add r0, sp, #0x34
	bl ov66_0223B8E8
	add sp, sp, #0x40
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223A858: .word 0x0225B6C4
_0223A85C: .word 0x02258FE4
	arm_func_end ov66_0223A750

	arm_func_start ov66_0223A860
ov66_0223A860: ; 0x0223A860
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	cmp r0, #0
	addeq sp, sp, #0x20
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r2, #0
	ldr r0, [sp, #0x30]
	add r1, sp, #0x14
	str r2, [sp, #0x18]
	str r2, [sp, #0x14]
	str r2, [sp, #0x1c]
	bl ov66_02237EF8
	cmp r0, #0
	ldrne r5, [sp, #0x18]
	cmpne r5, #0
	beq _0223A8C8
	ldr r1, _0223A950 ; =0x0225B6C4
	add r0, sp, #0x14
	ldr r4, [r1, #0]
	bl ov66_02235B8C
	mov r1, r0
	mov r2, r5
	add r0, r4, #0x144
	bl ov66_0223CB84
	cmp r0, #0
	bne _0223A918
_0223A8C8:
	ldr r1, _0223A950 ; =0x0225B6C4
	add r0, sp, #8
	ldr r1, [r1, #0]
	add r1, r1, #0x144
	bl ov66_0223CB2C
	add r0, sp, #8
	bl ov66_02235B8C
	ldr ip, [sp, #0xc]
	mov r3, r0
	ldr r2, _0223A954 ; =0x02258FF4
	mvn r0, #0
	mov r1, #0
	str ip, [sp]
	bl ov66_02237348
	add r0, sp, #8
	bl ov66_0223B8E8
	add r0, sp, #0x14
	bl ov66_0223B8E8
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
_0223A918:
	ldr r0, _0223A950 ; =0x0225B6C4
	mov r3, #4
	ldr r2, [r0, #0]
	add r1, sp, #4
	str r3, [r2, #0x144]
	ldr r0, [r0, #0]
	mov r2, #6
	add r0, r0, #0x134
	str r2, [sp, #4]
	bl ov66_02236CA0
	add r0, sp, #0x14
	bl ov66_0223B8E8
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223A950: .word 0x0225B6C4
_0223A954: .word 0x02258FF4
	arm_func_end ov66_0223A860

	arm_func_start ov66_0223A958
ov66_0223A958: ; 0x0223A958
	bx lr
	arm_func_end ov66_0223A958

	arm_func_start ov66_0223A95C
ov66_0223A95C: ; 0x0223A95C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x28
	bl ov66_0223B8E8
	add r0, r4, #0x18
	bl ov66_0223BADC
	add r0, r4, #0xc
	bl ov66_0223BADC
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223A95C

	arm_func_start ov66_0223A984
ov66_0223A984: ; 0x0223A984
	stmfd sp!, {r4, lr}
	ldr r1, _0223A9C8 ; =0x02258EA0
	mov r4, r0
	str r1, [r4, #0]
	bl ov66_02241E54
	add r0, r4, #0x28
	bl ov66_0223B8E8
	add r0, r4, #4
	bl ov66_0223AA9C
	cmp r4, #0
	beq _0223A9C0
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
_0223A9C0:
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0223A9C8: .word 0x02258EA0
	arm_func_end ov66_0223A984

	arm_func_start ov66_0223A9CC
ov66_0223A9CC: ; 0x0223A9CC
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x18
	bl ov66_0223B8E8
	cmp r4, #0
	beq _0223A9F4
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
_0223A9F4:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223A9CC

	arm_func_start ov66_0223A9FC
ov66_0223A9FC: ; 0x0223A9FC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r2, #0
	mov r4, r0
	strb r2, [sp]
	str r2, [r4, #4]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0223AA8C
	ldr r1, [r4, #0x14]
	cmp r1, #0
	beq _0223AA3C
	ldr r2, [r4, #0xc]
	ldr r0, [r4, #0x10]
	add r0, r2, r0
	bl _u32_div_f
	mov r2, r1
_0223AA3C:
	ldr r8, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x14]
	add r6, r8, r2, lsl #2
	add r7, r8, r0, lsl #2
	cmp r7, r6
	add sb, r8, r1, lsl #2
	beq _0223AA8C
	mov r5, #0
_0223AA60:
	ldr r1, [r7, #0]
	cmp r1, #0
	beq _0223AA78
	mov r0, r5
	mov r2, r5
	bl ov4_021D77C4
_0223AA78:
	add r7, r7, #4
	cmp r7, sb
	moveq r7, r8
	cmp r7, r6
	bne _0223AA60
_0223AA8C:
	add r0, r4, #8
	bl ov66_0223C41C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov66_0223A9FC

	arm_func_start ov66_0223AA9C
ov66_0223AA9C: ; 0x0223AA9C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0223AAB4
	bl ov66_0223C46C
_0223AAB4:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223AA9C

	arm_func_start ov66_0223AABC
ov66_0223AABC: ; 0x0223AABC
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	add ip, sp, #4
	mov r5, r2
	mov r6, r1
	mov r4, r0
	add r2, sp, #8
	add r3, sp, #5
	mov r0, r6
	mov r1, r5
	str ip, [sp]
	bl ov66_0223C364
	ldr r3, [sp, #8]
	mov r1, r0
	cmp r3, #0
	beq _0223AB0C
	ldr r2, [r3, #0xc]
	ldr r0, [r5, #0]
	cmp r2, r0
	bhs _0223AB38
_0223AB0C:
	str r5, [sp]
	ldrb r2, [sp, #5]
	ldrb r3, [sp, #4]
	mov r0, r6
	bl ov66_0223ABF4
	ldr r1, _0223AB50 ; =0x02258E58
	str r0, [r4, #0]
	ldrb r0, [r1, #2]
	add sp, sp, #0xc
	strb r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, r6, pc}
_0223AB38:
	ldr r0, _0223AB50 ; =0x02258E58
	str r3, [r4, #0]
	ldrb r0, [r0]
	strb r0, [r4, #4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_0223AB50: .word 0x02258E58
	arm_func_end ov66_0223AABC

	arm_func_start ov66_0223AB54
ov66_0223AB54: ; 0x0223AB54
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [sp, #0x18]
	ldr r1, [r5, #0xc]
	mov r6, r0
	cmp r4, r1
	bne _0223AB84
	add r0, sp, #0x18
	bl ov66_0223AD6C
	ldr r0, [sp, #0x18]
	str r0, [r5, #0xc]
_0223AB84:
	ldr r1, [r5, #4]
	mov r0, r4
	bl ov66_0223AFE4
	str r0, [r6, #0]
	cmp r4, #0
	beq _0223ABAC
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
_0223ABAC:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223AB54

	arm_func_start ov66_0223ABC4
ov66_0223ABC4: ; 0x0223ABC4
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl ov66_0223AD00
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	add r0, r4, #4
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223ABC4

	arm_func_start ov66_0223ABF4
ov66_0223ABF4: ; 0x0223ABF4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	ldr r4, [sb]
	mvn r0, #0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	cmp r4, r0
	ldr r5, [sp, #0x30]
	bne _0223AC2C
	ldr r0, _0223ACFC ; =0x02259004
	bl printf
	bl abort
_0223AC2C:
	mov r1, #0
	mov r0, #0x28
	strb r1, [sp]
	bl ov66_02246290
	mov r4, r0
	add r0, sb, #4
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	str r4, [sp, #0x10]
	adds r2, r4, #0xc
	beq _0223AC94
	ldr r1, [r5, #0]
	add r0, r2, #4
	str r1, [r2, #0]
	add r1, r5, #4
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	add r2, r5, #0xc
	add r1, r0, #8
	ldmia r2, {r2, r3}
	stmia r1, {r2, r3}
	ldr r1, [r5, #0x14]
	str r1, [r0, #0x10]
	ldr r1, [r5, #0x18]
	str r1, [r0, #0x14]
_0223AC94:
	mov r0, #0
	str r0, [r4, #4]
	str r0, [sp, #0x10]
	str r0, [r4, #0]
	adds r0, r4, #8
	strne r8, [r0]
	cmp r7, #0
	strne r4, [r8]
	streq r4, [r8, #4]
	ldr r1, [sb]
	mov r0, r4
	add r1, r1, #1
	str r1, [sb]
	ldr r1, [sb, #4]
	bl ov66_0223ADD8
	cmp r6, #0
	ldr r1, [sp, #0x10]
	strne r4, [sb, #0xc]
	cmp r1, #0
	beq _0223ACF0
	mov r0, #0
	mov r2, r0
	bl ov4_021D77C4
_0223ACF0:
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_0223ACFC: .word 0x02259004
	arm_func_end ov66_0223ABF4

	arm_func_start ov66_0223AD00
ov66_0223AD00: ; 0x0223AD00
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	mov r5, r0
	cmp r1, #0
	beq _0223AD1C
	bl ov66_0223AD00
_0223AD1C:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0223AD30
	mov r0, r5
	bl ov66_0223AD00
_0223AD30:
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223AD00

	arm_func_start ov66_0223AD4C
ov66_0223AD4C: ; 0x0223AD4C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0223AD64
	bl ov66_0223AD00
_0223AD64:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223AD4C

	arm_func_start ov66_0223AD6C
ov66_0223AD6C: ; 0x0223AD6C
	ldr r2, [r0, #0]
	ldr r1, [r2, #4]
	cmp r1, #0
	beq _0223ADA0
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _0223AD98
_0223AD88:
	mov r1, r2
	ldr r2, [r2, #0]
	cmp r2, #0
	bne _0223AD88
_0223AD98:
	str r1, [r0, #0]
	bx lr
_0223ADA0:
	ldr r1, [r2, #8]
	bic r3, r1, #1
	ldr r1, [r3, #0]
	cmp r2, r1
	beq _0223ADD0
_0223ADB4:
	mov r2, r3
	str r3, [r0, #0]
	ldr r1, [r2, #8]
	bic r3, r1, #1
	ldr r1, [r3, #0]
	cmp r2, r1
	bne _0223ADB4
_0223ADD0:
	str r3, [r0, #0]
	bx lr
	arm_func_end ov66_0223AD6C

	arm_func_start ov66_0223ADD8
ov66_0223ADD8: ; 0x0223ADD8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	ldr r0, [sl, #8]
	mov r8, #0
	mov sb, #1
	orr r0, r0, #1
	str r0, [sl, #8]
	add r7, sp, #0x2c
	mov fp, r8
	mov r4, sb
	mov r5, r8
	mov r6, sb
	b _0223AF9C
_0223AE10:
	ldr r1, [r0, #8]
	bic r2, r1, #1
	ldr r1, [r2, #0]
	cmp r0, r1
	bne _0223AEE4
	ldr r1, [r2, #4]
	cmp r1, #0
	beq _0223AE80
	ldr r2, [r1, #8]
	tst r2, #1
	movne r2, sb
	moveq r2, r8
	cmp r2, #1
	bne _0223AE80
	ldr r2, [r0, #8]
	bic r2, r2, #1
	str r2, [r0, #8]
	ldr r0, [r1, #8]
	bic r0, r0, #1
	str r0, [r1, #8]
	ldr r0, [sl, #8]
	bic r0, r0, #1
	ldr r0, [r0, #8]
	bic sl, r0, #1
	ldr r0, [sl, #8]
	orr r0, r0, #1
	str r0, [sl, #8]
	b _0223AF9C
_0223AE80:
	ldr r1, [r0, #4]
	cmp sl, r1
	bne _0223AE98
	mov r1, r7
	mov sl, r0
	bl ov66_0223B450
_0223AE98:
	ldr r0, [sl, #8]
	mov r1, r7
	bic r2, r0, #1
	ldr r0, [r2, #8]
	bic r0, r0, #1
	str r0, [r2, #8]
	ldr r0, [sl, #8]
	bic r0, r0, #1
	ldr r0, [r0, #8]
	bic r2, r0, #1
	ldr r0, [r2, #8]
	orr r0, r0, #1
	str r0, [r2, #8]
	ldr r0, [sl, #8]
	bic r0, r0, #1
	ldr r0, [r0, #8]
	bic r0, r0, #1
	bl ov66_0223B4CC
	b _0223AF9C
_0223AEE4:
	cmp r1, #0
	beq _0223AF3C
	ldr r2, [r1, #8]
	tst r2, #1
	movne r2, r6
	moveq r2, r5
	cmp r2, #1
	bne _0223AF3C
	ldr r2, [r0, #8]
	bic r2, r2, #1
	str r2, [r0, #8]
	ldr r0, [r1, #8]
	bic r0, r0, #1
	str r0, [r1, #8]
	ldr r0, [sl, #8]
	bic r0, r0, #1
	ldr r0, [r0, #8]
	bic sl, r0, #1
	ldr r0, [sl, #8]
	orr r0, r0, #1
	str r0, [sl, #8]
	b _0223AF9C
_0223AF3C:
	ldr r1, [r0, #0]
	cmp sl, r1
	bne _0223AF54
	mov r1, r7
	mov sl, r0
	bl ov66_0223B4CC
_0223AF54:
	ldr r0, [sl, #8]
	mov r1, r7
	bic r2, r0, #1
	ldr r0, [r2, #8]
	bic r0, r0, #1
	str r0, [r2, #8]
	ldr r0, [sl, #8]
	bic r0, r0, #1
	ldr r0, [r0, #8]
	bic r2, r0, #1
	ldr r0, [r2, #8]
	orr r0, r0, #1
	str r0, [r2, #8]
	ldr r0, [sl, #8]
	bic r0, r0, #1
	ldr r0, [r0, #8]
	bic r0, r0, #1
	bl ov66_0223B450
_0223AF9C:
	ldr r0, [sp, #0x2c]
	cmp sl, r0
	beq _0223AFC8
	ldr r0, [sl, #8]
	bic r0, r0, #1
	ldr r1, [r0, #8]
	tst r1, #1
	movne r1, r4
	moveq r1, fp
	cmp r1, #1
	beq _0223AE10
_0223AFC8:
	ldr r1, [sp, #0x2c]
	ldr r0, [r1, #8]
	bic r0, r0, #1
	str r0, [r1, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223ADD8

	arm_func_start ov66_0223AFE4
ov66_0223AFE4: ; 0x0223AFE4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r4, r0
	add r0, sp, #0
	str r4, [sp]
	bl ov66_0223AD6C
	ldr r1, [r4, #0]
	mov r0, r4
	cmp r1, #0
	ldrne r1, [r4, #4]
	cmpne r1, #0
	ldrne r0, [sp]
	ldr r1, [r0, #0]
	ldr r2, [r0, #8]
	cmp r1, #0
	ldreq r1, [r0, #4]
	bic sb, r2, #1
	cmp r1, #0
	beq _0223B040
	ldr r2, [r1, #8]
	and r2, r2, #1
	orr r2, sb, r2
	str r2, [r1, #8]
_0223B040:
	ldr r2, [r0, #8]
	bic r3, r2, #1
	ldr r2, [r3, #0]
	cmp r0, r2
	streq r1, [r3]
	strne r1, [r3, #4]
	moveq sl, #1
	ldr r2, [r0, #8]
	movne sl, #0
	tst r2, #1
	movne r2, #1
	moveq r2, #0
	cmp r2, #0
	moveq r2, #1
	movne r2, #0
	cmp r0, r4
	beq _0223B12C
	ldr r5, [r4, #8]
	ldr r3, [r0, #8]
	bic r5, r5, #1
	and r3, r3, #1
	orr r3, r5, r3
	bic r5, r3, #1
	str r3, [r0, #8]
	ldr r3, [r5, #0]
	cmp r4, r3
	streq r0, [r5]
	strne r0, [r5, #4]
	ldr r5, [r4, #0]
	cmp r5, #0
	str r5, [r0, #0]
	moveq sb, r0
	beq _0223B0D4
	ldr r3, [r5, #8]
	and r3, r3, #1
	orr r3, r0, r3
	str r3, [r5, #8]
_0223B0D4:
	ldr r5, [r4, #4]
	cmp r5, #0
	str r5, [r0, #4]
	moveq sb, r0
	beq _0223B0F8
	ldr r3, [r5, #8]
	and r3, r3, #1
	orr r3, r0, r3
	str r3, [r5, #8]
_0223B0F8:
	ldr r3, [r4, #8]
	tst r3, #1
	movne r3, #1
	moveq r3, #0
	cmp r3, #0
	ldr r3, [r0, #8]
	orrne r3, r3, #1
	biceq r3, r3, #1
	str r3, [r0, #8]
	ldr r3, [sp, #0x2c]
	cmp r3, r4
	streq r0, [sp, #0x2c]
	b _0223B13C
_0223B12C:
	cmp r1, #0
	ldreq r0, [sp, #0x2c]
	cmpeq r4, r0
	moveq r2, #0
_0223B13C:
	cmp r2, #0
	beq _0223B440
	mov r5, #1
	mov r4, #0
	mov r7, r4
	mov r8, r5
	add r6, sp, #0x2c
	mov fp, r5
	b _0223B404
_0223B160:
	cmp sl, #0
	beq _0223B2B8
	ldr r0, [sb, #4]
	ldr r1, [r0, #8]
	tst r1, #1
	movne r2, r8
	moveq r2, r7
	cmp r2, #1
	bne _0223B1A8
	bic r1, r1, #1
	str r1, [r0, #8]
	ldr r1, [sb, #8]
	mov r0, sb
	orr r1, r1, #1
	str r1, [sb, #8]
	mov r1, r6
	bl ov66_0223B450
	ldr r0, [sb, #4]
_0223B1A8:
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0223B1CC
	ldr r1, [r2, #8]
	tst r1, #1
	movne r1, r5
	moveq r1, r4
	cmp r1, #0
	bne _0223B21C
_0223B1CC:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0223B1F0
	ldr r1, [r1, #8]
	tst r1, #1
	movne r1, fp
	moveq r1, #0
	cmp r1, #0
	bne _0223B21C
_0223B1F0:
	ldr r2, [r0, #8]
	mov r1, sb
	orr r2, r2, #1
	str r2, [r0, #8]
	ldr r0, [sb, #8]
	bic sb, r0, #1
	ldr r0, [sb]
	cmp r1, r0
	moveq sl, #1
	movne sl, #0
	b _0223B404
_0223B21C:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0223B240
	ldr r1, [r1, #8]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _0223B264
_0223B240:
	ldr r3, [r2, #8]
	mov r1, r6
	bic r3, r3, #1
	str r3, [r2, #8]
	ldr r2, [r0, #8]
	orr r2, r2, #1
	str r2, [r0, #8]
	bl ov66_0223B4CC
	ldr r0, [sb, #4]
_0223B264:
	ldr r1, [sb, #8]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	ldr r1, [r0, #8]
	orrne r1, r1, #1
	biceq r1, r1, #1
	str r1, [r0, #8]
	ldr r2, [sb, #8]
	mov r1, r6
	bic r2, r2, #1
	str r2, [sb, #8]
	ldr r3, [r0, #4]
	mov r0, sb
	ldr r2, [r3, #8]
	bic r2, r2, #1
	str r2, [r3, #8]
	bl ov66_0223B450
	ldr r1, [sp, #0x2c]
	b _0223B404
_0223B2B8:
	ldr r0, [sb]
	ldr r1, [r0, #8]
	tst r1, #1
	movne r2, #1
	moveq r2, #0
	cmp r2, #1
	bne _0223B2F8
	bic r1, r1, #1
	str r1, [r0, #8]
	ldr r1, [sb, #8]
	mov r0, sb
	orr r1, r1, #1
	str r1, [sb, #8]
	mov r1, r6
	bl ov66_0223B4CC
	ldr r0, [sb]
_0223B2F8:
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _0223B31C
	ldr r1, [r2, #8]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _0223B36C
_0223B31C:
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _0223B340
	ldr r1, [r1, #8]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _0223B36C
_0223B340:
	ldr r2, [r0, #8]
	mov r1, sb
	orr r2, r2, #1
	str r2, [r0, #8]
	ldr r0, [sb, #8]
	bic sb, r0, #1
	ldr r0, [sb]
	cmp r1, r0
	moveq sl, #1
	movne sl, #0
	b _0223B404
_0223B36C:
	cmp r2, #0
	beq _0223B38C
	ldr r1, [r2, #8]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _0223B3B4
_0223B38C:
	ldr r3, [r0, #4]
	mov r1, r6
	ldr r2, [r3, #8]
	bic r2, r2, #1
	str r2, [r3, #8]
	ldr r2, [r0, #8]
	orr r2, r2, #1
	str r2, [r0, #8]
	bl ov66_0223B450
	ldr r0, [sb]
_0223B3B4:
	ldr r1, [sb, #8]
	tst r1, #1
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	ldr r1, [r0, #8]
	orrne r1, r1, #1
	biceq r1, r1, #1
	str r1, [r0, #8]
	ldr r2, [sb, #8]
	mov r1, r6
	bic r2, r2, #1
	str r2, [sb, #8]
	ldr r3, [r0, #0]
	mov r0, sb
	ldr r2, [r3, #8]
	bic r2, r2, #1
	str r2, [r3, #8]
	bl ov66_0223B4CC
	ldr r1, [sp, #0x2c]
_0223B404:
	ldr r0, [sp, #0x2c]
	cmp r1, r0
	beq _0223B430
	cmp r1, #0
	beq _0223B160
	ldr r0, [r1, #8]
	tst r0, #1
	movne r0, #1
	moveq r0, #0
	cmp r0, #0
	beq _0223B160
_0223B430:
	cmp r1, #0
	ldrne r0, [r1, #8]
	bicne r0, r0, #1
	strne r0, [r1, #8]
_0223B440:
	ldr r0, [sp]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223AFE4

	arm_func_start ov66_0223B450
ov66_0223B450: ; 0x0223B450
	ldr r3, [r1, #0]
	ldr r2, [r0, #4]
	cmp r3, r0
	streq r2, [r1]
	ldr r1, [r2, #0]
	str r1, [r0, #4]
	ldr r3, [r2, #0]
	cmp r3, #0
	beq _0223B484
	ldr r1, [r3, #8]
	and r1, r1, #1
	orr r1, r0, r1
	str r1, [r3, #8]
_0223B484:
	ldr r3, [r0, #8]
	ldr r1, [r2, #8]
	bic r3, r3, #1
	and r1, r1, #1
	orr r1, r3, r1
	str r1, [r2, #8]
	ldr r1, [r0, #8]
	bic r3, r1, #1
	ldr r1, [r3, #0]
	cmp r0, r1
	streq r2, [r3]
	strne r2, [r3, #4]
	str r0, [r2, #0]
	ldr r1, [r0, #8]
	and r1, r1, #1
	orr r1, r2, r1
	str r1, [r0, #8]
	bx lr
	arm_func_end ov66_0223B450

	arm_func_start ov66_0223B4CC
ov66_0223B4CC: ; 0x0223B4CC
	ldr r3, [r1, #0]
	ldr r2, [r0, #0]
	cmp r3, r0
	streq r2, [r1]
	ldr r1, [r2, #4]
	str r1, [r0, #0]
	ldr r3, [r2, #4]
	cmp r3, #0
	beq _0223B500
	ldr r1, [r3, #8]
	and r1, r1, #1
	orr r1, r0, r1
	str r1, [r3, #8]
_0223B500:
	ldr r3, [r0, #8]
	ldr r1, [r2, #8]
	bic r3, r3, #1
	and r1, r1, #1
	orr r1, r3, r1
	str r1, [r2, #8]
	ldr r1, [r0, #8]
	bic r3, r1, #1
	ldr r1, [r3, #0]
	cmp r0, r1
	streq r2, [r3]
	strne r2, [r3, #4]
	str r0, [r2, #4]
	ldr r1, [r0, #8]
	and r1, r1, #1
	orr r1, r2, r1
	str r1, [r0, #8]
	bx lr
	arm_func_end ov66_0223B4CC

	arm_func_start ov66_0223B548
ov66_0223B548: ; 0x0223B548
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r2, #0
	mov r5, r0
	mov r1, #1
	strb r2, [sp]
	bl ov66_0223C4B8
	mov r0, r5
	mov r2, r4
	mov r1, #1
	bl ov66_0223C588
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223B548

	arm_func_start ov66_0223B578
ov66_0223B578: ; 0x0223B578
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223B5C4
	ldr r1, [r4, #4]
	mov r3, #0
	strb r3, [sp]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r2, [r2, #0]
	bl ov66_0223C6F8
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223B5C4
	mov r0, #0
	mov r2, r0
	bl ov4_021D77C4
_0223B5C4:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223B578

	arm_func_start ov66_0223B5D0
ov66_0223B5D0: ; 0x0223B5D0
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223B614
	ldr r2, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #4]
	sub r1, r1, r2
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223B614
	mov r2, r0
	bl ov4_021D77C4
_0223B614:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223B5D0

	arm_func_start ov66_0223B620
ov66_0223B620: ; 0x0223B620
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223B664
	ldr r2, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #4]
	sub r1, r1, r2
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223B664
	mov r2, r0
	bl ov4_021D77C4
_0223B664:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223B620

	arm_func_start ov66_0223B670
ov66_0223B670: ; 0x0223B670
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223B6B4
	ldr r2, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #4]
	sub r1, r1, r2
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223B6B4
	mov r2, r0
	bl ov4_021D77C4
_0223B6B4:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223B670

	arm_func_start ov66_0223B6C0
ov66_0223B6C0: ; 0x0223B6C0
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r1
	mov r4, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r3, #0
	strb r3, [sp, #1]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r2, [r2, #0]
	bl ov66_0223B714
	mov r1, #0
	strb r1, [sp]
	ldr r3, [r4, #0]
	ldr r0, [r4, #4]
	mov r2, r5
	add r0, r3, r0
	bl memset
	ldr r0, [r4, #4]
	add r0, r0, r5
	str r0, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223B6C0

	arm_func_start ov66_0223B714
ov66_0223B714: ; 0x0223B714
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl ov66_02246290
	str r0, [r5, #0]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223B714

	arm_func_start ov66_0223B734
ov66_0223B734: ; 0x0223B734
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #4]
	mov r0, #0
	strb r0, [sp, #2]
	ldr r1, [r5, #4]
	mov r4, r2
	sub r1, r1, r3
	str r1, [r5, #4]
	ldr r1, [r5, #0]
	cmp r1, #0
	beq _0223B77C
	beq _0223B770
	mov r2, r0
	bl ov4_021D77C4
_0223B770:
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r5, #8]
_0223B77C:
	mov r3, #0
	strb r3, [sp]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	mov r0, r5
	mov r1, r4
	strb r3, [sp, #1]
	bl ov66_0223B714
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223B734

	arm_func_start ov66_0223B7A4
ov66_0223B7A4: ; 0x0223B7A4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0, #8]
	mvn r0, #0
	ldr r1, [sp, #0x14]
	sub r0, r0, r4
	cmp r1, r0
	bls _0223B7CC
	bl sub_020DFBDC
_0223B7CC:
	ldr r0, _0223B868 ; =0x55555555
	cmp r4, r0
	bhs _0223B818
	add r1, r4, #1
	ldr r0, _0223B86C ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x14
	addls r0, sp, #4
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0223B818:
	cmp r4, r0, lsl #1
	bhs _0223B854
	ldr r0, [sp, #0x14]
	add r1, r4, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x14
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0223B854:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_0223B868: .word 0x55555555
_0223B86C: .word 0xCCCCCCCD
	arm_func_end ov66_0223B7A4

	arm_func_start ov66_0223B870
ov66_0223B870: ; 0x0223B870
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #8]
	mov r4, r1
	cmp r4, r3
	ldrls r1, [r5, #4]
	subls r0, r3, r4
	cmpls r1, r0
	bls _0223B8B4
	ldr r0, [r5, #4]
	mov r2, #0
	add r1, r0, r4
	mov r0, r5
	sub r1, r1, r3
	strb r2, [sp]
	bl ov66_0223B7A4
	b _0223B8D8
_0223B8B4:
	ldr r0, [r5, #0]
	mov r2, r4
	add r0, r0, r1
	mov r1, #0
	bl memset
	ldr r0, [r5, #4]
	add r0, r0, r4
	str r0, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
_0223B8D8:
	mov r0, r5
	mov r1, r4
	bl ov66_0223C734
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223B870

	arm_func_start ov66_0223B8E8
ov66_0223B8E8: ; 0x0223B8E8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223B92C
	ldr r2, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #4]
	sub r1, r1, r2
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223B92C
	mov r2, r0
	bl ov4_021D77C4
_0223B92C:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223B8E8

	arm_func_start ov66_0223B938
ov66_0223B938: ; 0x0223B938
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0xc
	mov r5, r1
	ldr r1, [r5, #0]
	mov r4, r0
	mov r0, r1, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldmeqia r5, {r0, r1, r2}
	stmeqia r4, {r0, r1, r2}
	beq _0223B9A8
	mov r1, #0
	mov r0, r1
_0223B968:
	str r0, [r4, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _0223B968
	ldr r1, [r5, #4]
	mov r0, r4
	bl ov66_0223BB10
	ldmib r5, {r0, r3}
	mov r1, #0
	add r0, r3, r0
	str r0, [sp]
	ldrb ip, [sp, #8]
	mov r0, r4
	mov r2, r1
	strb ip, [sp, #4]
	bl ov66_0223C018
_0223B9A8:
	mov r0, r4
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, pc}
	arm_func_end ov66_0223B938

	arm_func_start ov66_0223B9B4
ov66_0223B9B4: ; 0x0223B9B4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	mov r1, #0
	mov r6, r0
	mov r4, r2
	mov r0, r1
_0223B9D4:
	str r0, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _0223B9D4
	ldr r0, [r5, #0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r1, [r5, #4]
	bne _0223BA04
	ldrb r0, [r5]
	mov r0, r0, lsl #0x18
	mov r1, r0, lsr #0x19
_0223BA04:
	cmp r4, r1
	bhi _0223BA2C
	ldr r0, [sp, #0x2c]
	sub r1, r1, r4
	cmp r1, r0
	addlo r0, sp, #8
	addhs r0, sp, #0x2c
	str r1, [sp, #8]
	ldr r1, [r0, #0]
	b _0223BA30
_0223BA2C:
	mov r1, #0
_0223BA30:
	mov r0, r6
	bl ov66_0223BB10
	str r4, [sp]
	ldr r4, [sp, #0x2c]
	mov r1, #0
	mov r0, r6
	mov r2, r1
	mov r3, r5
	str r4, [sp, #4]
	bl ov66_0223BD18
	mov r0, r6
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_0223B9B4

	arm_func_start ov66_0223BA6C
ov66_0223BA6C: ; 0x0223BA6C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r5, r1
	mov r1, #0
	mov r6, r0
	mov r0, r1
_0223BA84:
	str r0, [r6, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _0223BA84
	mov r0, r5
	bl strlen
	mov r4, r0
	mov r0, r6
	mov r1, r4
	bl ov66_0223BB10
	add r0, r5, r4
	mov r1, #0
	ldrb r3, [sp, #8]
	str r0, [sp]
	mov r0, r6
	mov r2, r1
	strb r3, [sp, #4]
	mov r3, r5
	bl ov66_0223C018
	mov r0, r6
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_0223BA6C

	arm_func_start ov66_0223BADC
ov66_0223BADC: ; 0x0223BADC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldrne r1, [r4, #8]
	cmpne r1, #0
	beq _0223BB08
	mov r0, #0
	mov r2, r0
	bl ov4_021D77C4
_0223BB08:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223BADC

	arm_func_start ov66_0223BB10
ov66_0223BB10: ; 0x0223BB10
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r1
	mvn r1, #0x80000001
	mov sb, r0
	cmp r8, r1
	bls _0223BB34
	ldr r0, _0223BC58 ; =0x02259020
	bl printf
	bl abort
_0223BB34:
	ldr r0, [sb]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r7, #1
	moveq r7, #0
	cmp r7, #0
	ldmneia sb, {r0, r4}
	movne r1, r0, lsr #1
	bne _0223BB68
	ldrb r0, [sb]
	mov r1, #0xb
	mov r0, r0, lsl #0x18
	mov r4, r0, lsr #0x19
_0223BB68:
	cmp r8, r4
	movlo r8, r4
	add r0, r8, #1
	cmp r0, #0xb
	movls r8, #0xb
	addhi r0, r8, #0x10
	bichi r8, r0, #0xf
	cmp r8, r1
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	cmp r8, #0xb
	bne _0223BBA4
	add r5, sb, #1
	ldr sl, [sb, #8]
	mov r6, #0
	b _0223BBD8
_0223BBA4:
	cmp r8, r1
	mov r0, r8
	bls _0223BBBC
	bl ov66_02246290
	mov r5, r0
	b _0223BBC8
_0223BBBC:
	bl ov66_02246290
	movs r5, r0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0223BBC8:
	cmp r7, #0
	ldrne sl, [sb, #8]
	mov r6, #1
	addeq sl, sb, #1
_0223BBD8:
	mov r0, r5
	mov r1, sl
	mov r2, r4
	bl memmove
	mov r0, #0
	cmp r7, #0
	strb r0, [r5, r4]
	cmpne sl, #0
	beq _0223BC08
	mov r1, sl
	mov r2, r0
	bl ov4_021D77C4
_0223BC08:
	ldr r1, [sb]
	and r0, r6, #1
	bic r1, r1, #1
	orr r0, r1, r0
	str r0, [sb]
	cmp r6, #0
	bne _0223BC40
	ldrb r1, [sb]
	and r0, r4, #0xff
	mov r0, r0, lsl #0x19
	bic r1, r1, #0xfe
	orr r0, r1, r0, lsr #24
	strb r0, [sb]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_0223BC40:
	stmib sb, {r4, r5}
	ldr r0, [sb]
	and r0, r0, #1
	orr r0, r0, r8, lsl #1
	str r0, [sb]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_0223BC58: .word 0x02259020
	arm_func_end ov66_0223BB10

	arm_func_start ov66_0223BC5C
ov66_0223BC5C: ; 0x0223BC5C
	stmfd sp!, {r3, lr}
	mov ip, r0
	ldr r0, [ip]
	mov r3, r1
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r1, #1
	moveq r1, #0
	cmp r1, #0
	bne _0223BCA4
	ldr r0, [r3, #0]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	bne _0223BCA4
	ldmia r3, {r0, r1, r2}
	stmia ip, {r0, r1, r2}
	mov r0, ip
	ldmia sp!, {r3, pc}
_0223BCA4:
	cmp r1, #0
	ldreqb r0, [ip]
	ldrne r2, [ip, #4]
	mov r1, #0
	moveq r0, r0, lsl #0x18
	moveq r2, r0, lsr #0x19
	mov r0, ip
	bl ov66_0223BCC8
	ldmia sp!, {r3, pc}
	arm_func_end ov66_0223BC5C

	arm_func_start ov66_0223BCC8
ov66_0223BCC8: ; 0x0223BCC8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [r3]
	mov ip, ip, lsl #0x1f
	movs ip, ip, lsr #0x1f
	ldrne lr, [r3, #8]
	ldrne r3, [r3, #4]
	bne _0223BCF8
	ldrb ip, [r3]
	add lr, r3, #1
	mov r3, ip, lsl #0x18
	mov r3, r3, lsr #0x19
_0223BCF8:
	ldrb ip, [sp, #8]
	add r3, lr, r3
	str r3, [sp]
	mov r3, lr
	strb ip, [sp, #4]
	bl ov66_0223C018
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end ov66_0223BCC8

	arm_func_start ov66_0223BD18
ov66_0223BD18: ; 0x0223BD18
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x10
	ldr r4, [r3, #0]
	mov r8, r0
	mov r0, r4, lsl #0x1f
	movs r0, r0, lsr #0x1f
	mov r7, r1
	mov r6, r2
	ldrne r4, [r3, #8]
	ldrne r5, [r3, #4]
	bne _0223BD54
	ldrb r0, [r3]
	add r4, r3, #1
	mov r0, r0, lsl #0x18
	mov r5, r0, lsr #0x19
_0223BD54:
	ldr r0, [sp, #0x28]
	cmp r0, r5
	bls _0223BD6C
	ldr r0, _0223BDC0 ; =0x02259044
	bl printf
	bl abort
_0223BD6C:
	ldr r2, [sp, #0x28]
	ldr r0, [sp, #0x2c]
	sub r1, r5, r2
	cmp r1, r0
	addlo r0, sp, #0xc
	str r1, [sp, #0xc]
	add r4, r4, r2
	addhs r0, sp, #0x2c
	ldr r0, [r0, #0]
	ldrb r5, [sp, #8]
	str r0, [sp, #0x2c]
	add r0, r4, r0
	str r0, [sp]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	mov r3, r4
	strb r5, [sp, #4]
	bl ov66_0223C018
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_0223BDC0: .word 0x02259044
	arm_func_end ov66_0223BD18

	arm_func_start ov66_0223BDC4
ov66_0223BDC4: ; 0x0223BDC4
	stmfd sp!, {r3, lr}
	ldr r3, [r1, #0]
	mov r3, r3, lsl #0x1f
	movs r3, r3, lsr #0x1f
	ldmneib r1, {r3, ip}
	bne _0223BDEC
	ldrb r3, [r1]
	add ip, r1, #1
	mov r1, r3, lsl #0x18
	mov r3, r1, lsr #0x19
_0223BDEC:
	mov r1, ip
	bl ov66_0223BDF8
	ldmia sp!, {r3, pc}
	arm_func_end ov66_0223BDC4

	arm_func_start ov66_0223BDF8
ov66_0223BDF8: ; 0x0223BDF8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr ip, [r0]
	mov ip, ip, lsl #0x1f
	movs ip, ip, lsr #0x1f
	ldrne lr, [r0, #8]
	ldrne r0, [r0, #4]
	bne _0223BE24
	ldrb ip, [r0]
	add lr, r0, #1
	mov r0, ip, lsl #0x18
	mov r0, r0, lsr #0x19
_0223BE24:
	cmp r2, r0
	bhi _0223BE88
	sub ip, r0, r2
	cmp ip, r3
	add r4, r1, r3
	add r5, lr, r2
	blo _0223BE88
_0223BE40:
	mov r6, r5
	mov r7, r1
	cmp r1, r4
	bhs _0223BE70
_0223BE50:
	ldrsb r2, [r7]
	ldrsb r0, [r6]
	cmp r2, r0
	bne _0223BE78
	add r7, r7, #1
	cmp r7, r4
	add r6, r6, #1
	blo _0223BE50
_0223BE70:
	sub r0, r5, lr
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_0223BE78:
	sub ip, ip, #1
	cmp ip, r3
	add r5, r5, #1
	bhs _0223BE40
_0223BE88:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_0223BDF8

	arm_func_start ov66_0223BE90
ov66_0223BE90: ; 0x0223BE90
	stmfd sp!, {r3, lr}
	ldr r2, [r1, #0]
	mov r2, r2, lsl #0x1f
	movs r2, r2, lsr #0x1f
	ldrne r3, [r1, #8]
	ldrne ip, [r1, #4]
	bne _0223BEBC
	ldrb r2, [r1]
	add r3, r1, #1
	mov r1, r2, lsl #0x18
	mov ip, r1, lsr #0x19
_0223BEBC:
	ldr r1, [r0, #0]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrne r2, [r0, #4]
	bne _0223BEDC
	ldrb r1, [r0]
	mov r1, r1, lsl #0x18
	mov r2, r1, lsr #0x19
_0223BEDC:
	mov r1, #0
	str ip, [sp]
	bl ov66_0223BF38
	ldmia sp!, {r3, pc}
	arm_func_end ov66_0223BE90

	arm_func_start ov66_0223BEEC
ov66_0223BEEC: ; 0x0223BEEC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl strlen
	ldr r1, [r5, #0]
	mov r1, r1, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrne r2, [r5, #4]
	bne _0223BF20
	ldrb r1, [r5]
	mov r1, r1, lsl #0x18
	mov r2, r1, lsr #0x19
_0223BF20:
	str r0, [sp]
	mov r0, r5
	mov r3, r4
	mov r1, #0
	bl ov66_0223BF38
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223BEEC

	arm_func_start ov66_0223BF38
ov66_0223BF38: ; 0x0223BF38
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r2, [r0, #0]
	mov r6, r1
	mov r1, r2, lsl #0x1f
	movs r1, r1, lsr #0x1f
	mov r5, r3
	ldrne r4, [r0, #8]
	ldrne r7, [r0, #4]
	bne _0223BF74
	ldrb r1, [r0]
	add r4, r0, #1
	mov r0, r1, lsl #0x18
	mov r7, r0, lsr #0x19
_0223BF74:
	cmp r6, r7
	bls _0223BF88
	ldr r0, _0223C014 ; =0x02259060
	bl printf
	bl abort
_0223BF88:
	ldr r0, [sp, #0x28]
	sub r1, r7, r6
	cmp r0, r1
	addlo r0, sp, #0x28
	addhs r0, sp, #0
	str r1, [sp]
	ldr r1, [r0, #0]
	ldr r0, [sp, #0x30]
	str r1, [sp, #4]
	cmp r0, r1
	addlo r0, sp, #0x30
	addhs r0, sp, #4
	ldr r2, [r0, #0]
	mov r1, r5
	add r0, r4, r6
	bl memcmp
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r1, [sp, #0x30]
	ldr r0, [sp, #4]
	cmp r0, r1
	addlo sp, sp, #8
	mvnlo r0, #0
	ldmloia sp!, {r3, r4, r5, r6, r7, lr}
	addlo sp, sp, #0x10
	bxlo lr
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_0223C014: .word 0x02259060
	arm_func_end ov66_0223BF38

	arm_func_start ov66_0223C018
ov66_0223C018: ; 0x0223C018
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x28
	mov r6, r0
	ldr r0, [r6, #0]
	mov r5, r1
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r0, #1
	strne r0, [sp]
	moveq r0, #0
	streq r0, [sp]
	ldr r0, [sp]
	mov fp, r3
	ldr r4, [sp, #0x60]
	cmp r0, #0
	bne _0223C078
	ldrb r1, [r6]
	mov r0, #0xb
	str r0, [sp, #0x14]
	mov r0, r1, lsl #0x18
	add r7, r6, #1
	mov r8, r0, lsr #0x19
	b _0223C088
_0223C078:
	ldmia r6, {r0, r8}
	mov r0, r0, lsr #1
	ldr r7, [r6, #8]
	str r0, [sp, #0x14]
_0223C088:
	cmp r5, r8
	bls _0223C09C
	ldr r0, _0223C2E8 ; =0x02259044
	bl printf
	bl abort
_0223C09C:
	ldr r0, [sp, #0x58]
	sub r1, r8, r5
	cmp r1, r0
	addlo r0, sp, #0x18
	str r1, [sp, #0x18]
	addhs r0, sp, #0x58
	ldr r0, [r0, #0]
	sub sb, r4, fp
	mvn r1, #0x80000001
	cmp sb, r1
	str r0, [sp, #0x10]
	subls sl, r8, r0
	subls r0, r1, sb
	cmpls sl, r0
	bls _0223C0E4
	ldr r0, _0223C2EC ; =0x0225907C
	bl printf
	bl abort
_0223C0E4:
	ldr r0, [sp, #0x10]
	add sl, sb, sl
	add r1, r5, r0
	ldr r0, [sp, #0x14]
	cmp sl, r0
	sub r0, r8, r1
	str r0, [sp, #0xc]
	blo _0223C1F8
	ldr r0, [sp, #0x14]
	add r1, sl, #1
	add r0, r0, #0xf
	bic r8, r0, #0xf
	cmp r8, r1
	bhs _0223C130
_0223C11C:
	mov r0, r8, lsl #1
	add r0, r0, #0xf
	bic r8, r0, #0xf
	cmp r8, r1
	blo _0223C11C
_0223C130:
	mov r0, r8
	bl ov66_02246290
	str r0, [sp, #8]
	cmp r5, #0
	beq _0223C150
	mov r1, r7
	mov r2, r5
	bl memcpy
_0223C150:
	ldr r0, [sp, #8]
	sub r2, r4, fp
	add r0, r0, r5
	mov r1, fp
	str r0, [sp, #4]
	bl memmove
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0223C190
	mov r2, r0
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	add r3, r7, r5
	add r0, r0, sb
	add r1, r3, r1
	bl memcpy
_0223C190:
	ldr r1, _0223C2F0 ; =0x02258E58
	ldr r0, [sp]
	ldrsb r1, [r1, #3]
	cmp r0, #0
	ldr r0, [sp, #8]
	strb r1, [r0, sl]
	beq _0223C1C8
	cmp r7, #0
	beq _0223C1D8
	mov r0, #0
	mov r1, r7
	mov r2, r0
	bl ov4_021D77C4
	b _0223C1D8
_0223C1C8:
	ldr r0, [r6, #0]
	bic r0, r0, #1
	orr r0, r0, #1
	str r0, [r6, #0]
_0223C1D8:
	ldr r0, [sp, #8]
	str r0, [r6, #8]
	str sl, [r6, #4]
	ldr r0, [r6, #0]
	and r0, r0, #1
	orr r0, r0, r8, lsl #1
	str r0, [r6, #0]
	b _0223C2D4
_0223C1F8:
	mov r1, #0
	add r0, sp, #0x1c
	mov r3, r1
_0223C204:
	str r3, [r0, r1, lsl #2]
	add r1, r1, #1
	cmp r1, #3
	blo _0223C204
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0223C264
	add r0, r7, r5
	add r0, r0, sb
	cmp r0, r4
	bhs _0223C264
	add r0, r7, r8
	cmp r4, r0
	bhi _0223C264
	add r0, sp, #0x1c
	mov r1, fp
	mov r2, r4
	bl ov66_0223C3D0
	ldr r0, [sp, #0x1c]
	add r1, sp, #0x1c
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	addeq fp, r1, #1
	ldrne fp, [r1, #8]
_0223C264:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _0223C288
	ldr r1, [sp, #0x10]
	add r3, r7, r5
	mov r2, r0
	add r0, r3, sb
	add r1, r3, r1
	bl memmove
_0223C288:
	mov r1, fp
	mov r2, sb
	add r0, r7, r5
	bl memmove
	ldr r0, [sp]
	ldr r1, _0223C2F0 ; =0x02258E58
	cmp r0, #0
	ldrsb r0, [r1, #1]
	strb r0, [r7, sl]
	strne sl, [r6, #4]
	bne _0223C2CC
	ldrb r1, [r6]
	and r0, sl, #0xff
	mov r0, r0, lsl #0x19
	bic r1, r1, #0xfe
	orr r0, r1, r0, lsr #24
	strb r0, [r6]
_0223C2CC:
	add r0, sp, #0x1c
	bl ov66_0223BADC
_0223C2D4:
	mov r0, r6
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_0223C2E8: .word 0x02259044
_0223C2EC: .word 0x0225907C
_0223C2F0: .word 0x02258E58
	arm_func_end ov66_0223C018

	arm_func_start ov66_0223C2F4
ov66_0223C2F4: ; 0x0223C2F4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r4, r2
	subs r1, r4, r5
	mov r6, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r3, #0
	strb r3, [sp, #1]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r2, [r2, #0]
	bl ov66_0223B714
	mov r0, #0
	strb r0, [sp]
	ldr r2, [r6, #0]
	ldr r0, [r6, #4]
	mov r1, r5
	add r0, r2, r0
	sub r2, r4, r5
	bl memmove
	ldr r1, [r6, #4]
	sub r0, r4, r5
	add r0, r1, r0
	str r0, [r6, #4]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_0223C2F4

	arm_func_start ov66_0223C364
ov66_0223C364: ; 0x0223C364
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, #0
	str r4, [r2, #0]
	ldr r6, [r0, #4]
	mov r4, #1
	ldr r7, [sp, #0x18]
	strb r4, [r3]
	strb r4, [r7]
	cmp r6, #0
	add r0, r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov ip, #0
	mov lr, r4
_0223C398:
	ldr r5, [r1, #0]
	ldr r4, [r6, #0xc]
	mov r0, r6
	cmp r5, r4
	ldrlo r6, [r6]
	strlob lr, [r3]
	blo _0223C3C4
	str r6, [r2, #0]
	ldr r6, [r6, #4]
	strb ip, [r3]
	strb ip, [r7]
_0223C3C4:
	cmp r6, #0
	bne _0223C398
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov66_0223C364

	arm_func_start ov66_0223C3D0
ov66_0223C3D0: ; 0x0223C3D0
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr ip, [r0]
	mov r3, r1
	mov r1, ip, lsl #0x1f
	movs r1, r1, lsr #0x1f
	ldrne r1, [r0, #4]
	bne _0223C3FC
	ldrb r1, [r0]
	mov r1, r1, lsl #0x18
	mov r1, r1, lsr #0x19
_0223C3FC:
	ldrb ip, [sp, #8]
	str r2, [sp]
	mov r2, r1
	mov r1, #0
	strb ip, [sp, #4]
	bl ov66_0223C018
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end ov66_0223C3D0

	arm_func_start ov66_0223C41C
ov66_0223C41C: ; 0x0223C41C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223C460
	ldr r2, [r4, #8]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #8]
	sub r1, r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223C460
	mov r2, r0
	bl ov4_021D77C4
_0223C460:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223C41C

	arm_func_start ov66_0223C46C
ov66_0223C46C: ; 0x0223C46C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	mov r5, r0
	cmp r1, #0
	beq _0223C488
	bl ov66_0223C46C
_0223C488:
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _0223C49C
	mov r0, r5
	bl ov66_0223C46C
_0223C49C:
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl ov4_021D77C4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223C46C

	arm_func_start ov66_0223C4B8
ov66_0223C4B8: ; 0x0223C4B8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [r0, #8]
	ldr r0, _0223C57C ; =0x15555555
	ldr r1, [sp, #0x14]
	sub r0, r0, r4
	cmp r1, r0
	bls _0223C4E0
	bl sub_020DFBDC
_0223C4E0:
	ldr r0, _0223C580 ; =0x071C71C7
	cmp r4, r0
	bhs _0223C52C
	add r1, r4, #1
	ldr r0, _0223C584 ; =0xCCCCCCCD
	add r1, r1, r1, lsl #1
	umull r0, r2, r1, r0
	mov r2, r2, lsr #2
	ldr r0, [sp, #0x14]
	str r2, [sp, #4]
	cmp r0, r2
	addhi r0, sp, #0x14
	addls r0, sp, #4
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0223C52C:
	cmp r4, r0, lsl #1
	bhs _0223C568
	ldr r0, [sp, #0x14]
	add r1, r4, #1
	mov r2, r1, lsr #1
	cmp r0, r1, lsr #1
	addhi r0, sp, #0x14
	str r2, [sp]
	addls r0, sp, #0
	ldr r0, [r0, #0]
	add sp, sp, #8
	add r0, r4, r0
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
_0223C568:
	ldr r0, _0223C57C ; =0x15555555
	add sp, sp, #8
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_0223C57C: .word 0x15555555
_0223C580: .word 0x071C71C7
_0223C584: .word 0xCCCCCCCD
	arm_func_end ov66_0223C4B8

	arm_func_start ov66_0223C588
ov66_0223C588: ; 0x0223C588
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, #0
	mov r7, r0
	add r3, r7, #8
	str r4, [sp, #8]
	str r4, [sp, #0xc]
	str r4, [sp, #0x10]
	str r4, [sp, #0x18]
	str r3, [sp, #0x14]
	mov r6, r1
	ldr r3, [r7, #4]
	ldr r1, [r7, #8]
	add r3, r3, r6
	sub r1, r3, r1
	mov r5, r2
	bl ov66_0223C4B8
	mov r3, r4
	mov r1, r0
	strb r3, [sp, #3]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #8
	strb r3, [sp, #4]
	bl ov66_0223C950
	ldr r4, [r7, #4]
	mov r3, #0
	ldr r1, [sp, #8]
	mov r0, #0xc
	mla r2, r4, r0, r1
	ldr r1, [sp, #0xc]
	str r4, [sp, #0x18]
	mla r4, r1, r0, r2
	strb r3, [sp, #2]
	cmp r6, #0
	beq _0223C648
_0223C61C:
	cmp r4, #0
	beq _0223C630
	mov r0, r4
	mov r1, r5
	bl ov66_0223B938
_0223C630:
	ldr r0, [sp, #0xc]
	subs r6, r6, #1
	add r0, r0, #1
	str r0, [sp, #0xc]
	add r4, r4, #0xc
	bne _0223C61C
_0223C648:
	ldr r6, [r7, #0]
	ldr r1, [r7, #4]
	mov r0, #0xc
	mla r5, r1, r0, r6
	mov r3, #0
	ldr r2, [sp, #8]
	ldr r1, [sp, #0x18]
	strb r3, [sp, #1]
	mla r4, r1, r0, r2
	cmp r5, r6
	bls _0223C6AC
_0223C674:
	sub r5, r5, #0xc
	subs r4, r4, #0xc
	beq _0223C68C
	mov r0, r4
	mov r1, r5
	bl ov66_0223B938
_0223C68C:
	ldr r1, [sp, #0x18]
	ldr r0, [sp, #0xc]
	sub r1, r1, #1
	add r0, r0, #1
	str r1, [sp, #0x18]
	str r0, [sp, #0xc]
	cmp r5, r6
	bhi _0223C674
_0223C6AC:
	mov r0, #0
	strb r0, [sp]
	add r3, sp, #0x10
	ldr r2, [r7, #8]
	ldr r1, [r3, #0]
	add r0, sp, #8
	str r1, [r7, #8]
	str r2, [r3, #0]
	ldr r2, [r7, #0]
	ldr r1, [sp, #8]
	str r1, [r7, #0]
	str r2, [sp, #8]
	ldr r2, [r7, #4]
	ldr r1, [sp, #0xc]
	str r1, [r7, #4]
	str r2, [sp, #0xc]
	bl ov66_0223C870
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end ov66_0223C588

	arm_func_start ov66_0223C6F8
ov66_0223C6F8: ; 0x0223C6F8
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, [r0]
	ldr r3, [r0, #4]
	mov r2, #0xc
	mla r4, r3, r2, ip
	movs r5, r1
	sub r1, r3, r5
	str r1, [r0, #4]
	ldmeqia sp!, {r3, r4, r5, pc}
_0223C71C:
	sub r4, r4, #0xc
	mov r0, r4
	bl ov66_0223BADC
	subs r5, r5, #1
	bne _0223C71C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223C6F8

	arm_func_start ov66_0223C734
ov66_0223C734: ; 0x0223C734
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x1c
	mov r3, #0
	mov r6, r0
	add r2, r6, #8
	str r3, [sp, #8]
	str r3, [sp, #0xc]
	str r3, [sp, #0x10]
	str r3, [sp, #0x18]
	str r2, [sp, #0x14]
	mov r4, r1
	ldr r2, [r6, #4]
	ldr r1, [r6, #8]
	add r2, r2, r4
	sub r1, r2, r1
	bl ov66_0223B7A4
	mov r3, #0
	mov r1, r0
	strb r3, [sp, #3]
	sub r0, sp, #4
	strb r3, [r0]
	ldr r2, [r0, #0]
	add r0, sp, #8
	strb r3, [sp, #4]
	bl ov66_0223C8E0
	ldr r5, [r6, #4]
	ldr r2, [sp, #8]
	mov r1, #0
	add r3, r2, r5
	ldr r0, [sp, #0xc]
	mov r2, r4
	add r0, r3, r0
	str r5, [sp, #0x18]
	strb r1, [sp, #2]
	bl memset
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #0x18]
	add r1, r1, r4
	str r1, [sp, #0xc]
	ldr r5, [r6, #0]
	ldr r2, [r6, #4]
	mov r1, #0
	strb r1, [sp, #1]
	add r1, r5, r2
	sub r4, r1, r5
	sub r2, r0, r4
	ldr r0, [sp, #8]
	str r2, [sp, #0x18]
	add r0, r0, r2
	mov r1, r5
	mov r2, r4
	bl memcpy
	mov r0, r5
	mov r1, #0
	mov r2, r4
	bl memset
	ldr r1, [sp, #0xc]
	mov r0, #0
	add r1, r1, r4
	str r1, [sp, #0xc]
	strb r0, [sp]
	str r0, [r6, #4]
	add r3, sp, #0x10
	ldr r2, [r6, #8]
	ldr r1, [r3, #0]
	add r0, sp, #8
	str r1, [r6, #8]
	str r2, [r3, #0]
	ldr r2, [r6, #0]
	ldr r1, [sp, #8]
	str r1, [r6, #0]
	str r2, [sp, #8]
	ldr r2, [r6, #4]
	ldr r1, [sp, #0xc]
	str r1, [r6, #4]
	str r2, [sp, #0xc]
	bl ov66_0223C8C4
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov66_0223C734

	arm_func_start ov66_0223C870
ov66_0223C870: ; 0x0223C870
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r2, [r4, #0]
	ldr r1, [r4, #0x10]
	mov r0, #0xc
	mla r5, r1, r0, r2
	ldr r1, [r4, #4]
	mla r6, r1, r0, r5
	cmp r6, r5
	bls _0223C8AC
_0223C898:
	sub r6, r6, #0xc
	mov r0, r6
	bl ov66_0223BADC
	cmp r6, r5
	bhi _0223C898
_0223C8AC:
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl ov66_0223C988
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_0223C870

	arm_func_start ov66_0223C8C4
ov66_0223C8C4: ; 0x0223C8C4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r1, #0
	str r1, [r4, #4]
	bl ov66_0223C900
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0223C8C4

	arm_func_start ov66_0223C8E0
ov66_0223C8E0: ; 0x0223C8E0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	bl ov66_02246290
	str r0, [r5, #0]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223C8E0

	arm_func_start ov66_0223C900
ov66_0223C900: ; 0x0223C900
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq _0223C944
	ldr r2, [r4, #4]
	mov r0, #0
	strb r0, [sp]
	ldr r1, [r4, #4]
	sub r1, r1, r2
	str r1, [r4, #4]
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223C944
	mov r2, r0
	bl ov4_021D77C4
_0223C944:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223C900

	arm_func_start ov66_0223C950
ov66_0223C950: ; 0x0223C950
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _0223C984 ; =0x15555555
	mov r4, r1
	mov r5, r0
	cmp r4, r2
	bls _0223C96C
	bl sub_020DFBDC
_0223C96C:
	mov r0, #0xc
	mul r0, r4, r0
	bl ov66_02246290
	str r0, [r5, #0]
	str r4, [r5, #8]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0223C984: .word 0x15555555
	arm_func_end ov66_0223C950

	arm_func_start ov66_0223C988
ov66_0223C988: ; 0x0223C988
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223C9D4
	ldr r1, [r4, #4]
	mov r3, #0
	strb r3, [sp]
	sub r2, sp, #4
	strb r3, [r2]
	ldr r2, [r2, #0]
	bl ov66_0223C9E0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _0223C9D4
	mov r0, #0
	mov r2, r0
	bl ov4_021D77C4
_0223C9D4:
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov66_0223C988

	arm_func_start ov66_0223C9E0
ov66_0223C9E0: ; 0x0223C9E0
	stmfd sp!, {r3, r4, r5, lr}
	ldr ip, [r0]
	ldr r3, [r0, #4]
	mov r2, #0xc
	mla r4, r3, r2, ip
	movs r5, r1
	sub r1, r3, r5
	str r1, [r0, #4]
	ldmeqia sp!, {r3, r4, r5, pc}
_0223CA04:
	sub r4, r4, #0xc
	mov r0, r4
	bl ov66_0223BADC
	subs r5, r5, #1
	bne _0223CA04
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov66_0223C9E0

	.rodata


	.global Unk_ov66_02258BF4
Unk_ov66_02258BF4: ; 0x02258BF4
	.incbin "incbin/overlay66_rodata.bin", 0x2DC, 0x2F4 - 0x2DC

	.global Unk_ov66_02258C0C
Unk_ov66_02258C0C: ; 0x02258C0C
	.incbin "incbin/overlay66_rodata.bin", 0x2F4, 0x314 - 0x2F4

	.global Unk_ov66_02258C2C
Unk_ov66_02258C2C: ; 0x02258C2C
	.incbin "incbin/overlay66_rodata.bin", 0x314, 0x334 - 0x314

	.global Unk_ov66_02258C4C
Unk_ov66_02258C4C: ; 0x02258C4C
	.incbin "incbin/overlay66_rodata.bin", 0x334, 0x354 - 0x334

	.global Unk_ov66_02258C6C
Unk_ov66_02258C6C: ; 0x02258C6C
	.incbin "incbin/overlay66_rodata.bin", 0x354, 0x20


	.data


	.global Unk_ov66_02258E58
Unk_ov66_02258E58: ; 0x02258E58
	.incbin "incbin/overlay66_data.bin", 0x138, 0x139 - 0x138

	.global Unk_ov66_02258E59
Unk_ov66_02258E59: ; 0x02258E59
	.incbin "incbin/overlay66_data.bin", 0x139, 0x13A - 0x139

	.global Unk_ov66_02258E5A
Unk_ov66_02258E5A: ; 0x02258E5A
	.incbin "incbin/overlay66_data.bin", 0x13A, 0x13B - 0x13A

	.global Unk_ov66_02258E5B
Unk_ov66_02258E5B: ; 0x02258E5B
	.incbin "incbin/overlay66_data.bin", 0x13B, 0x13C - 0x13B

	.global Unk_ov66_02258E5C
Unk_ov66_02258E5C: ; 0x02258E5C
	.incbin "incbin/overlay66_data.bin", 0x13C, 0x140 - 0x13C

	.global Unk_ov66_02258E60
Unk_ov66_02258E60: ; 0x02258E60
	.incbin "incbin/overlay66_data.bin", 0x140, 0x144 - 0x140

	.global Unk_ov66_02258E64
Unk_ov66_02258E64: ; 0x02258E64
	.incbin "incbin/overlay66_data.bin", 0x144, 0x148 - 0x144

	.global Unk_ov66_02258E68
Unk_ov66_02258E68: ; 0x02258E68
	.incbin "incbin/overlay66_data.bin", 0x148, 0x14C - 0x148

	.global Unk_ov66_02258E6C
Unk_ov66_02258E6C: ; 0x02258E6C
	.incbin "incbin/overlay66_data.bin", 0x14C, 0x150 - 0x14C

	.global Unk_ov66_02258E70
Unk_ov66_02258E70: ; 0x02258E70
	.incbin "incbin/overlay66_data.bin", 0x150, 0x154 - 0x150

	.global Unk_ov66_02258E74
Unk_ov66_02258E74: ; 0x02258E74
	.incbin "incbin/overlay66_data.bin", 0x154, 0x158 - 0x154

	.global Unk_ov66_02258E78
Unk_ov66_02258E78: ; 0x02258E78
	.incbin "incbin/overlay66_data.bin", 0x158, 0x15C - 0x158

	.global Unk_ov66_02258E7C
Unk_ov66_02258E7C: ; 0x02258E7C
	.incbin "incbin/overlay66_data.bin", 0x15C, 0x160 - 0x15C

	.global Unk_ov66_02258E80
Unk_ov66_02258E80: ; 0x02258E80
	.incbin "incbin/overlay66_data.bin", 0x160, 0x164 - 0x160

	.global Unk_ov66_02258E84
Unk_ov66_02258E84: ; 0x02258E84
	.incbin "incbin/overlay66_data.bin", 0x164, 0x168 - 0x164

	.global Unk_ov66_02258E88
Unk_ov66_02258E88: ; 0x02258E88
	.incbin "incbin/overlay66_data.bin", 0x168, 0x170 - 0x168

	.global Unk_ov66_02258E90
Unk_ov66_02258E90: ; 0x02258E90
	.incbin "incbin/overlay66_data.bin", 0x170, 0x178 - 0x170

	.global Unk_ov66_02258E98
Unk_ov66_02258E98: ; 0x02258E98
	.incbin "incbin/overlay66_data.bin", 0x178, 0x188 - 0x178

	.global Unk_ov66_02258EA8
Unk_ov66_02258EA8: ; 0x02258EA8
	.incbin "incbin/overlay66_data.bin", 0x188, 0x198 - 0x188

	.global Unk_ov66_02258EB8
Unk_ov66_02258EB8: ; 0x02258EB8
	.incbin "incbin/overlay66_data.bin", 0x198, 0x1A8 - 0x198

	.global Unk_ov66_02258EC8
Unk_ov66_02258EC8: ; 0x02258EC8
	.incbin "incbin/overlay66_data.bin", 0x1A8, 0x1C4 - 0x1A8

	.global Unk_ov66_02258EE4
Unk_ov66_02258EE4: ; 0x02258EE4
	.incbin "incbin/overlay66_data.bin", 0x1C4, 0x1E4 - 0x1C4

	.global Unk_ov66_02258F04
Unk_ov66_02258F04: ; 0x02258F04
	.incbin "incbin/overlay66_data.bin", 0x1E4, 0x204 - 0x1E4

	.global Unk_ov66_02258F24
Unk_ov66_02258F24: ; 0x02258F24
	.incbin "incbin/overlay66_data.bin", 0x204, 0x228 - 0x204

	.global Unk_ov66_02258F48
Unk_ov66_02258F48: ; 0x02258F48
	.incbin "incbin/overlay66_data.bin", 0x228, 0x250 - 0x228

	.global Unk_ov66_02258F70
Unk_ov66_02258F70: ; 0x02258F70
	.incbin "incbin/overlay66_data.bin", 0x250, 0x290 - 0x250

	.global Unk_ov66_02258FB0
Unk_ov66_02258FB0: ; 0x02258FB0
	.incbin "incbin/overlay66_data.bin", 0x290, 0x294 - 0x290

	.global Unk_ov66_02258FB4
Unk_ov66_02258FB4: ; 0x02258FB4
	.incbin "incbin/overlay66_data.bin", 0x294, 0x298 - 0x294

	.global Unk_ov66_02258FB8
Unk_ov66_02258FB8: ; 0x02258FB8
	.incbin "incbin/overlay66_data.bin", 0x298, 0x29C - 0x298

	.global Unk_ov66_02258FBC
Unk_ov66_02258FBC: ; 0x02258FBC
	.incbin "incbin/overlay66_data.bin", 0x29C, 0x2A4 - 0x29C

	.global Unk_ov66_02258FC4
Unk_ov66_02258FC4: ; 0x02258FC4
	.incbin "incbin/overlay66_data.bin", 0x2A4, 0x2B4 - 0x2A4

	.global Unk_ov66_02258FD4
Unk_ov66_02258FD4: ; 0x02258FD4
	.incbin "incbin/overlay66_data.bin", 0x2B4, 0x2C4 - 0x2B4

	.global Unk_ov66_02258FE4
Unk_ov66_02258FE4: ; 0x02258FE4
	.incbin "incbin/overlay66_data.bin", 0x2C4, 0x2D4 - 0x2C4

	.global Unk_ov66_02258FF4
Unk_ov66_02258FF4: ; 0x02258FF4
	.incbin "incbin/overlay66_data.bin", 0x2D4, 0x2E4 - 0x2D4

	.global Unk_ov66_02259004
Unk_ov66_02259004: ; 0x02259004
	.incbin "incbin/overlay66_data.bin", 0x2E4, 0x300 - 0x2E4

	.global Unk_ov66_02259020
Unk_ov66_02259020: ; 0x02259020
	.incbin "incbin/overlay66_data.bin", 0x300, 0x324 - 0x300

	.global Unk_ov66_02259044
Unk_ov66_02259044: ; 0x02259044
	.incbin "incbin/overlay66_data.bin", 0x324, 0x340 - 0x324

	.global Unk_ov66_02259060
Unk_ov66_02259060: ; 0x02259060
	.incbin "incbin/overlay66_data.bin", 0x340, 0x35C - 0x340

	.global Unk_ov66_0225907C
Unk_ov66_0225907C: ; 0x0225907C
	.incbin "incbin/overlay66_data.bin", 0x35C, 0x1B


	.bss


	.global Unk_ov66_0225B6C4
Unk_ov66_0225B6C4: ; 0x0225B6C4
	.space 0x4

