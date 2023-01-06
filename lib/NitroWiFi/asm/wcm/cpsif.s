	.include "macros/function.inc"
	.include "include/cpsif.inc"

	

	.text


	arm_func_start ov4_022152B4
ov4_022152B4: ; 0x022152B4
	stmfd sp!, {r3, lr}
	ldr r1, _022152EC ; =0x0221F7B0
	ldrb r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	strb r0, [r1]
	mov r2, #0
	str r2, [r1, #0x24]
	str r2, [r1, #8]
	ldr r0, _022152F0 ; =0x0221F7BC
	str r2, [r1, #4]
	bl OS_InitMutex
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022152EC: .word Unk_ov4_0221F7B0
_022152F0: .word 0x0221F7BC
	arm_func_end ov4_022152B4

	arm_func_start ov4_022152F4
ov4_022152F4: ; 0x022152F4
	stmfd sp!, {r3, lr}
	ldr r1, _02215324 ; =0x0221F7B0
	mov r2, r0
	ldr ip, [r1, #0x28]
	cmp ip, #0
	ldmeqia sp!, {r3, pc}
	ldrh r3, [r2, #6]
	add r0, r2, #0x1e
	add r1, r2, #0x18
	add r2, r2, #0x2c
	blx ip
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02215324: .word Unk_ov4_0221F7B0
	arm_func_end ov4_022152F4

	arm_func_start ov4_02215328
ov4_02215328: ; 0x02215328
	stmfd sp!, {r4, lr}
	bl ov4_02213964
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	add r0, r4, #0x2000
	ldr r1, [r0, #0x260]
	cmp r1, #9
	ldmneia sp!, {r4, pc}
	ldrb r0, [r0, #0x26b]
	cmp r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r0, _02215390 ; =0x0221F7BC
	bl ov4_02215638
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r1, r4, #0x144
	ldr r0, _02215394 ; =ov4_02215624
	add r1, r1, #0x2000
	add r2, r4, #0xf00
	mov r3, #0
	bl WM_SetDCFData
	cmp r0, #2
	ldmeqia sp!, {r4, pc}
	ldr r0, _02215390 ; =0x0221F7BC
	bl ov4_02215688
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02215390: .word 0x0221F7BC
_02215394: .word ov4_02215624
	arm_func_end ov4_02215328

	arm_func_start ov4_02215398
ov4_02215398: ; 0x02215398
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, #0
	bl ov4_02213964
	mov r4, r0
	bl OS_DisableInterrupts
	cmp r4, #0
	beq _022153D0
	add r1, r4, #0x2000
	ldr r2, [r1, #0x260]
	cmp r2, #9
	ldreqb r1, [r1, #0x26b]
	cmpeq r1, #0
	addeq r1, r4, #0x144
	addeq r5, r1, #0x2000
_022153D0:
	bl OS_RestoreInterrupts
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02215398

	arm_func_start ov4_022153DC
ov4_022153DC: ; 0x022153DC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	mov r5, r0
	mov r4, r7
	bl ov4_02213964
	mov r6, r0
	bl OS_DisableInterrupts
	cmp r6, #0
	beq _02215428
	add r1, r6, #0x2000
	ldr r2, [r1, #0x260]
	cmp r2, #9
	ldreqb r1, [r1, #0x26b]
	cmpeq r1, #0
	bne _02215428
	add r1, r6, #0x2100
	ldrh r4, [r1, #0x4a]
	add r1, r6, #0x14c
	add r7, r1, #0x2000
_02215428:
	bl OS_RestoreInterrupts
	cmp r5, #0
	strneh r4, [r5]
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_022153DC

	arm_func_start ov4_0221543C
ov4_0221543C: ; 0x0221543C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _02215458 ; =0x0221F7B0
	str r4, [r1, #0x28]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02215458: .word Unk_ov4_0221F7B0
	arm_func_end ov4_0221543C

	arm_func_start ov4_0221545C
ov4_0221545C: ; 0x0221545C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	mov r8, r2
	mov r6, r3
	bl OS_DisableInterrupts
	mov r5, r0
	bl ov4_02213964
	cmp r0, #0
	bne _02215494
	mov r0, r5
	bl OS_RestoreInterrupts
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02215494:
	ldr r0, _022155D4 ; =0x0221F7BC
	bl OS_LockMutex
	bl ov4_02213964
	movs r7, r0
	bne _022154C0
	ldr r0, _022155D4 ; =0x0221F7BC
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022154C0:
	add r0, r7, #0x2000
	ldr r1, [r0, #0x260]
	cmp r1, #9
	bne _022154DC
	ldrb r0, [r0, #0x26b]
	cmp r0, #1
	bne _022154F4
_022154DC:
	ldr r0, _022155D4 ; =0x0221F7BC
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	mvn r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022154F4:
	mov r0, sb
	mov r2, r8
	add r1, r7, #0xf00
	bl MI_CpuCopy8
	ldr r2, [sp, #0x20]
	cmp r2, #0
	ble _02215520
	add r1, r7, #0xf00
	mov r0, r6
	add r1, r1, r8
	bl MI_CpuCopy8
_02215520:
	ldr r1, [sp, #0x20]
	ldr r0, _022155D8 ; =ov4_022155E4
	add r6, r8, r1
	mov r3, r6, lsl #0x10
	mov r1, r4
	add r2, r7, #0xf00
	mov r3, r3, lsr #0x10
	bl WM_SetDCFData
	cmp r0, #8
	addls pc, pc, r0, lsl #2
	b _02215570
_0221554C: ; jump table
	b _02215570 ; case 0
	b _02215570 ; case 1
	b _02215588 ; case 2
	b _02215570 ; case 3
	b _02215570 ; case 4
	b _02215570 ; case 5
	b _02215570 ; case 6
	b _02215570 ; case 7
	b _02215570 ; case 8
_02215570:
	ldr r0, _022155D4 ; =0x0221F7BC
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	mvn r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02215588:
	ldr r0, _022155DC ; =0x0221F7B4
	bl OS_SleepThread
	ldr r0, _022155E0 ; =0x0221F7B0
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _022155BC
	cmp r0, #1
	ldr r0, _022155D4 ; =0x0221F7BC
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	mvn r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_022155BC:
	ldr r0, _022155D4 ; =0x0221F7BC
	bl OS_UnlockMutex
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_022155D4: .word 0x0221F7BC
_022155D8: .word ov4_022155E4
_022155DC: .word 0x0221F7B4
_022155E0: .word Unk_ov4_0221F7B0
	arm_func_end ov4_0221545C

	arm_func_start ov4_022155E4
ov4_022155E4: ; 0x022155E4
	stmfd sp!, {r3, lr}
	ldrh r1, [r0]
	cmp r1, #0x12
	ldmneia sp!, {r3, pc}
	ldrh r2, [r0, #2]
	ldr r1, _0221561C ; =0x0221F7B0
	str r2, [r1, #0x24]
	ldrh r0, [r0, #2]
	cmp r0, #0
	bne _02215610
	bl ov4_02213E0C
_02215610:
	ldr r0, _02215620 ; =0x0221F7B4
	bl OS_WakeupThread
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0221561C: .word Unk_ov4_0221F7B0
_02215620: .word 0x0221F7B4
	arm_func_end ov4_022155E4

	arm_func_start ov4_02215624
ov4_02215624: ; 0x02215624
	ldr ip, _02215630 ; =ov4_02215688
	ldr r0, _02215634 ; =0x0221F7BC
	bx ip
	; .align 2, 0
_02215630: .word ov4_02215688
_02215634: .word 0x0221F7BC
	arm_func_end ov4_02215624

	arm_func_start ov4_02215638
ov4_02215638: ; 0x02215638
	ldr r2, [r0, #8]
	cmp r2, #0
	bne _02215660
	ldr r1, _02215684 ; =0x01FF8000
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	mov r0, #1
	bx lr
_02215660:
	ldr r1, _02215684 ; =0x01FF8000
	cmp r2, r1
	movne r0, #0
	bxne lr
	ldr r1, [r0, #0xc]
	add r1, r1, #1
	str r1, [r0, #0xc]
	mov r0, #1
	bx lr
	; .align 2, 0
_02215684: .word 0x01FF8000
	arm_func_end ov4_02215638

	arm_func_start ov4_02215688
ov4_02215688: ; 0x02215688
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #8]
	ldr r1, _022156BC ; =0x01FF8000
	cmp r2, r1
	ldmneia sp!, {r3, pc}
	ldr r1, [r0, #0xc]
	subs r1, r1, #1
	str r1, [r0, #0xc]
	ldmneia sp!, {r3, pc}
	mov r1, #0
	str r1, [r0, #8]
	bl OS_WakeupThread
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022156BC: .word 0x01FF8000
	arm_func_end ov4_02215688

	.bss


	.global Unk_ov4_0221F7B0
Unk_ov4_0221F7B0: ; 0x0221F7B0
	.space 0x2C

