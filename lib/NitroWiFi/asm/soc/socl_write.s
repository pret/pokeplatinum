	.include "macros/function.inc"
	.include "include/socl_write.inc"

	.extern OSi_ThreadInfo
	.extern Unk_ov4_0221DC00

	.text


	arm_func_start ov4_0220729C
ov4_0220729C: ; 0x0220729C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl ov4_022082CC
	cmp r0, #0
	addne sp, sp, #8
	mvnne r0, #0x1b
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	cmp r8, #0
	mov r1, #0
	beq _022072E0
	ldrsh r0, [r8, #0x70]
	tst r0, #1
	movne r1, #1
_022072E0:
	cmp r1, #0
	addeq sp, sp, #8
	mvneq r0, #0x26
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldrsb r0, [r8, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _02207330
	ldrsh r0, [r8, #0x70]
	tst r0, #4
	beq _02207324
	ldrsh r0, [r8, #0x70]
	tst r0, #8
	beq _02207330
_02207324:
	add sp, sp, #8
	mvn r0, #0x37
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_02207330:
	ldr r0, [sp, #0x24]
	ldr r4, [r8, #0x68]
	tst r0, #4
	bne _0220734C
	ldrsb r0, [r8, #0x72]
	cmp r0, #0
	bne _0220736C
_0220734C:
	add r0, r4, #0xe0
	bl OS_TryLockMutex
	cmp r0, #0
	addeq sp, sp, #8
	mvneq r0, #5
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov ip, #0
	b _02207378
_0220736C:
	add r0, r4, #0xe0
	bl OS_LockMutex
	mov ip, #1
_02207378:
	ldr r1, [sp, #0x20]
	mov r0, r8
	str r1, [sp]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	str ip, [sp, #4]
	bl ov4_022073B0
	mov r5, r0
	add r0, r4, #0xe0
	bl OS_UnlockMutex
	mov r0, r5
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_0220729C

	arm_func_start ov4_022073B0
ov4_022073B0: ; 0x022073B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	mov sl, r0
	ldr r4, [sl, #0x68]
	ldrsb r0, [sl, #0x73]
	ldr r4, [r4, #0x10c]
	mov sb, r1
	str r3, [sp, #0xc]
	cmp r0, #1
	mov r8, r2
	ldr r7, [sp, #0x40]
	ldr r6, [sp, #0x44]
	ldr r0, [r4, #0x48]
	mov r5, #0
	bne _02207408
	sub r0, r0, #0x2a
	cmp r8, r0
	addgt sp, sp, #0x18
	subgt r0, r5, #0x23
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	str r8, [sp, #0x10]
	b _02207418
_02207408:
	sub r0, r0, #0x36
	str r0, [sp, #0x10]
	cmp r8, r0
	strle r8, [sp, #0x10]
_02207418:
	cmp r8, #0
	ble _022074A8
	and fp, r6, #1
_02207424:
	ldr r2, [sp, #0x10]
	mov r0, sl
	mov r1, r8
	add r3, sp, #0x14
	str r6, [sp]
	bl ov4_022074B4
	mov r4, r0
	cmp r4, #0
	ble _02207484
	ldr r0, [sp, #0xc]
	mov r1, sb
	stmia sp, {r0, r7}
	str r6, [sp, #8]
	ldr r3, [sp, #0x14]
	mov r0, sl
	mov r2, r4
	bl ov4_0220755C
	cmp r0, #0
	addle sp, sp, #0x18
	mvnle r0, #5
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add sb, sb, r4
	sub r8, r8, r4
	add r5, r5, r4
_02207484:
	cmp fp, #0
	bne _022074A0
	cmp r4, #0
	bgt _022074A8
	add sp, sp, #0x18
	mvn r0, #5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022074A0:
	cmp r8, #0
	bgt _02207424
_022074A8:
	mov r0, r5
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_022073B0

	arm_func_start ov4_022074B4
ov4_022074B4: ; 0x022074B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sl, r0
	mov sb, r1
	mov r8, r2
	cmp r8, sb
	mov r7, r3
	ldr r4, [sl, #0x68]
	movgt r8, sb
	bl OS_DisableInterrupts
	ldr r1, [sp, #0x28]
	mov fp, r0
	and r6, r1, #1
_022074E4:
	mov r0, sl
	bl ov4_02207538
	mov r5, r0
	cmp r5, r8
	blt _02207510
	add r0, r4, #0x100
	ldrh r0, [r0]
	cmp r5, sb
	movge r5, sb
	str r0, [r7, #0]
	b _02207528
_02207510:
	cmp r6, #0
	moveq r5, #0
	beq _02207528
	add r0, r4, #0x104
	bl OS_SleepThread
	b _022074E4
_02207528:
	mov r0, fp
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_022074B4

	arm_func_start ov4_02207538
ov4_02207538: ; 0x02207538
	ldr r2, [r0, #0x68]
	add r0, r2, #0x100
	ldrh r1, [r0]
	ldrh r0, [r0, #2]
	ldr r2, [r2, #0xf8]
	sub r0, r0, r1
	subs r0, r0, #1
	addmi r0, r0, r2
	bx lr
	arm_func_end ov4_02207538

	arm_func_start ov4_0220755C
ov4_0220755C: ; 0x0220755C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r4, [sb, #0x68]
	mov r6, r1
	mov r8, r2
	ldr r1, [r4, #0x10c]
	ldr r2, [sp, #0x28]
	ldr r0, _022076CC ; =ov4_022076D0
	mov r7, r3
	bl ov4_02205FF4
	movs r5, r0
	mvneq r0, #0x20
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x28]
	add r1, r7, r8
	tst r0, #1
	ldrnesb r0, [sb, #0x73]
	cmpne r0, #1
	movne r0, #3
	strneb r0, [r5, #0xd]
	moveq r0, #0
	streqb r0, [r5, #0xd]
	ldr r3, [r4, #0xfc]
	ldr r2, [r4, #0xf8]
	add r0, r3, r7
	cmp r1, r2
	str r0, [r5, #0x10]
	bge _022075E4
	str r8, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r7, r1
	str r0, [r5, #0x1c]
	b _02207610
_022075E4:
	sub r0, r2, r7
	str r0, [r5, #0x14]
	str r3, [r5, #0x18]
	ldr r0, [r5, #0x14]
	sub r7, r8, r0
	str r7, [r5, #0x1c]
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0x18]
	mov r2, r7
	add r0, r6, r0
	bl MI_CpuCopy8
_02207610:
	ldr r1, [r5, #0x10]
	ldr r2, [r5, #0x14]
	mov r0, r6
	bl MI_CpuCopy8
	add r0, r4, #0x100
	ldrh r6, [r0]
	strh r7, [r5, #0x20]
	ldrh r1, [r5, #0x20]
	strh r1, [r0]
	ldrsb r0, [sb, #0x73]
	cmp r0, #1
	bne _022076A0
	ldrh r0, [sb, #0x74]
	cmp r0, #0
	bne _0220765C
	bl ov4_0220BC04
	strh r0, [sb, #0x74]
	ldrh r0, [sb, #0x74]
	strh r0, [sb, #0xa]
_0220765C:
	ldrh r0, [sb, #0x74]
	strh r0, [r5, #0x24]
	ldr r1, [sb, #0x78]
	cmp r1, #0
	beq _0220767C
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _02207690
_0220767C:
	ldr r1, [sp, #0x24]
	ldrh r0, [sp, #0x20]
	str r1, [r5, #0x28]
	strh r0, [r5, #0x26]
	b _022076A8
_02207690:
	str r1, [r5, #0x28]
	ldrh r0, [sb, #0x76]
	strh r0, [r5, #0x26]
	b _022076A8
_022076A0:
	mov r0, #0
	str r0, [r5, #0x28]
_022076A8:
	ldr r0, [r4, #0x10c]
	mov r1, r5
	bl ov4_0220614C
	cmp r0, #0
	addne r0, r4, #0x100
	movne r8, #0
	strneh r6, [r0]
	mov r0, r8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_022076CC: .word ov4_022076D0
	arm_func_end ov4_0220755C

	arm_func_start ov4_022076D0
ov4_022076D0: ; 0x022076D0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r0
	ldr r5, [sb, #4]
	mov r7, #0
	ldrsb r0, [r5, #0x73]
	mov r1, #1
	ldr r6, [r5, #0x68]
	cmp r0, #0
	cmpne r0, #4
	movne r1, r7
	cmp r1, #0
	beq _0220770C
	ldrsh r0, [r5, #0x70]
	tst r0, #4
	beq _022077E0
_0220770C:
	ldr r2, [sb, #0x28]
	cmp r2, #0
	beq _02207724
	ldrh r0, [sb, #0x24]
	ldrh r1, [sb, #0x26]
	bl ov4_0220BD48
_02207724:
	ldrsb r1, [r5, #0x73]
	mov r0, #1
	ldr r4, [r5, #0x4c]
	cmp r1, #0
	cmpne r1, #4
	movne r0, #0
	cmp r0, #0
	movne r8, #0x36
	moveq r8, #0x2a
	cmp r1, #0
	cmpne r1, #4
	ldrne r0, [r5, #0x48]
	subne sl, r0, r8
	bne _0220776C
	ldr r0, [r5, #0x48]
	sub r0, r0, r8
	bl ov4_02207800
	mov sl, r0
_0220776C:
	mov r1, sl
	mov r2, sb
	add r0, r4, r8
	bl ov4_022078A4
	mov r1, r0
	cmp r1, #0
	ble _022077E4
	add r0, r4, r8
	bl ov4_0220C6D8
	cmp r0, #0
	bgt _022077D8
	ldrsb r0, [r5, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _022077D0
	ldrsh r0, [r5, #0x70]
	bic r0, r0, #0xe
	strh r0, [r5, #0x70]
	ldrsh r0, [r5, #0x70]
	orr r0, r0, #0x80
	strh r0, [r5, #0x70]
	bl ov4_0220C078
_022077D0:
	mvn r7, #0x4b
	b _022077E4
_022077D8:
	add r7, r7, r0
	b _0220776C
_022077E0:
	mvn r7, #0x4b
_022077E4:
	ldrh r2, [sb, #0x20]
	add r1, r6, #0x100
	add r0, r6, #0x104
	strh r2, [r1, #2]
	bl OS_WakeupThread
	mov r0, r7
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov4_022076D0

	arm_func_start ov4_02207800
ov4_02207800: ; 0x02207800
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _0220789C ; =0x021CCC80
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r5, [r0, #0xa4]
	bl OS_DisableInterrupts
	cmp r5, #0
	beq _02207864
	ldrh r3, [r5, #0x2e]
	cmp r3, #0
	ldrneh r2, [r5, #0x2c]
	cmpne r2, #0
	beq _02207854
	ldr r1, _022078A0 ; =0x0221DC00
	cmp r3, r2
	ldr r1, [r1, #0x24]
	movgt r3, r2
	cmp r3, r1
	movgt r3, r1
	mov r5, r3, lsl #1
	b _02207870
_02207854:
	ldr r1, _022078A0 ; =0x0221DC00
	ldr r1, [r1, #0x24]
	mov r5, r1, lsl #1
	b _02207870
_02207864:
	ldr r1, _022078A0 ; =0x0221DC00
	ldr r1, [r1, #0x24]
	mov r5, r1, lsl #1
_02207870:
	bl OS_RestoreInterrupts
	cmp r5, #0
	ble _02207894
	mov r0, r4
	mov r1, r5
	bl _s32_div_f
	cmp r0, #0
	mulgt r0, r5, r0
	ldmgtia sp!, {r3, r4, r5, pc}
_02207894:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_0220789C: .word OSi_ThreadInfo
_022078A0: .word Unk_ov4_0221DC00
	arm_func_end ov4_02207800

	arm_func_start ov4_022078A4
ov4_022078A4: ; 0x022078A4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r2
	ldr r4, [r6, #0x14]
	ldr r5, [r6, #0x1c]
	cmp r4, r1
	mov r7, r0
	movgt r4, r1
	movgt r5, #0
	bgt _022078D4
	sub r0, r1, r4
	cmp r5, r0
	movgt r5, r0
_022078D4:
	cmp r4, #0
	ble _02207904
	ldr r0, [r6, #0x10]
	mov r1, r7
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, [r6, #0x10]
	add r0, r0, r4
	str r0, [r6, #0x10]
	ldr r0, [r6, #0x14]
	sub r0, r0, r4
	str r0, [r6, #0x14]
_02207904:
	cmp r5, #0
	ble _02207934
	ldr r0, [r6, #0x18]
	mov r2, r5
	add r1, r7, r4
	bl MI_CpuCopy8
	ldr r0, [r6, #0x18]
	add r0, r0, r5
	str r0, [r6, #0x18]
	ldr r0, [r6, #0x1c]
	sub r0, r0, r5
	str r0, [r6, #0x1c]
_02207934:
	add r0, r4, r5
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_022078A4
