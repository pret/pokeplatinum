	.include "macros/function.inc"
	.include "overlay018/ov18_02224024.inc"

	

	.text


	arm_func_start ov18_02224024
ov18_02224024: ; 0x02224024
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
_0222402C:
	bl OS_DisableInterrupts
	ldr r1, [r7, #0xc0]
	mov r5, r0
	cmp r1, #0
	bne _02224068
	mov r6, #0
	mov r4, r6
_02224048:
	mov r0, r7
	mov r1, r6
	bl OS_SetThreadPriority
	mov r0, r4
	bl OS_SleepThread
	ldr r0, [r7, #0xc0]
	cmp r0, #0
	beq _02224048
_02224068:
	ldr r4, [r7, #0xc0]
	ldr r1, [r7, #0xc0]
	mov r0, r7
	ldr r1, [r1, #0]
	str r1, [r7, #0xc0]
	ldr r1, [r4, #4]
	mov r1, r1, lsr #1
	bl OS_SetThreadPriority
	mov r0, r5
	bl OS_RestoreInterrupts
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _022240A4
	mov r0, r4
	blx r1
_022240A4:
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r7
	ldr r6, [r4, #0xc]
	bl OS_GetThreadPriority
	ldr r1, [r7, #0xc0]
	cmp r1, #0
	moveq r1, #0
	beq _022240E8
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	cmp r0, r1, lsr #1
	movhs r1, r0
	bhs _022240E8
	ldr r1, [r7, #0xc0]
	ldr r1, [r1, #4]
	mov r1, r1, lsr #1
_022240E8:
	cmp r1, r0
	beq _022240F8
	mov r0, r7
	bl OS_SetThreadPriority
_022240F8:
	mov r0, #0
	str r0, [r4, #0]
	ldr r0, [r4, #4]
	cmp r6, #0
	bic r0, r0, #1
	str r0, [r4, #4]
	beq _0222411C
	mov r0, r4
	blx r6
_0222411C:
	add r0, r7, #0xc4
	cmp r4, r0
	beq _02224134
	mov r0, r5
	bl OS_RestoreInterrupts
	b _0222402C
_02224134:
	bl OS_ExitThread
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov18_02224024

	arm_func_start ov18_0222413C
ov18_0222413C: ; 0x0222413C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r6, r1
	bl OS_DisableInterrupts
	ldr r1, _022241B4 ; =0x02250D60
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _022241A4
	add r0, r5, #0xc4
	str r5, [r1, #0]
	bl ov18_022241D8
	sub r0, r6, #0xe4
	mov lr, #0
	bic ip, r0, #3
	add r3, r5, #0xe4
	str lr, [r5, #0xc0]
	ldr r1, _022241B8 ; =ov18_02224024
	mov r0, r5
	mov r2, r5
	add r3, r3, ip
	stmia sp, {ip, lr}
	bl OS_CreateThread
	mov r0, r5
	bl OS_WakeupThreadDirect
_022241A4:
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022241B4: .word 0x02250D60
_022241B8: .word ov18_02224024
	arm_func_end ov18_0222413C

	arm_func_start ov18_022241BC
ov18_022241BC: ; 0x022241BC
	ldr r0, _022241D4 ; =0x02250D60
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_022241D4: .word 0x02250D60
	arm_func_end ov18_022241BC

	arm_func_start ov18_022241D8
ov18_022241D8: ; 0x022241D8
	ldr ip, _022241E8 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x20
	bx ip
	; .align 2, 0
_022241E8: .word MI_CpuFill8
	arm_func_end ov18_022241D8

	arm_func_start ov18_022241EC
ov18_022241EC: ; 0x022241EC
	ldr r0, [r0, #4]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	movne r0, #1
	moveq r0, #0
	bx lr
	arm_func_end ov18_022241EC

	arm_func_start ov18_02224204
ov18_02224204: ; 0x02224204
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r4, _02224364 ; =0x02250D60
	mov sb, r0
	ldr r4, [r4, #0]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl ov18_022241BC
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sb, #4]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r6, #0x1f
	bls _02224288
	mov r0, r4
	bl OS_GetThreadPriority
	cmp r6, #0x20
	bne _02224264
	cmp r0, #0
	subne r6, r0, #1
	moveq r6, #0
	b _02224288
_02224264:
	cmp r6, #0x21
	bne _0222427C
	cmp r0, #0x1f
	addlo r6, r0, #1
	movhs r6, #0x1f
	b _02224288
_0222427C:
	cmp r6, #0x22
	moveq r6, r0
	movne r6, #0x1f
_02224288:
	bl OS_DisableInterrupts
	ldr r1, [sb, #4]
	mov r5, r0
	bic r0, r1, #1
	orr r1, r0, #1
	and r0, r1, #1
	str r1, [sb, #4]
	orr r0, r0, r6, lsl #1
	stmib sb, {r0, r8}
	str r7, [sb, #0xc]
	ldr r0, [r4, #0xc0]
	cmp r0, #0
	add r0, r4, #0xc4
	bne _022242E0
	cmp sb, r0
	ldreq r0, _02224364 ; =0x02250D60
	moveq r1, #0
	streq r1, [r0]
	mov r0, r4
	str sb, [r4, #0xc0]
	bl OS_WakeupThreadDirect
	b _02224358
_022242E0:
	cmp sb, r0
	ldr r1, [r4, #0xc0]
	bne _0222431C
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _02224308
_022242F8:
	mov r1, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _022242F8
_02224308:
	ldr r0, _02224364 ; =0x02250D60
	str sb, [r1]
	mov r1, #0
	str r1, [r0, #0]
	b _02224358
_0222431C:
	ldr r0, [r1, #4]
	cmp r6, r0, lsr #1
	strlo sb, [r4, #0xc0]
	strlo r1, [sb]
	blo _02224358
	b _02224338
_02224334:
	mov r1, r2
_02224338:
	ldr r2, [r1, #0]
	cmp r2, #0
	beq _02224350
	ldr r0, [r2, #4]
	cmp r6, r0, lsr #1
	bhs _02224334
_02224350:
	str r2, [sb]
	str sb, [r1]
_02224358:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02224364: .word 0x02250D60
	arm_func_end ov18_02224204

	arm_func_start ov18_02224368
ov18_02224368: ; 0x02224368
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	mov r4, r0
	bl ov18_022241BC
	cmp r0, #0
	beq _022243A0
	ldr r0, _022243AC ; =0x02250D60
	mov r1, #0
	ldr r0, [r0, #0]
	mov r2, r5
	mov r3, r1
	add r0, r0, #0xc4
	bl ov18_02224204
_022243A0:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_022243AC: .word 0x02250D60
	arm_func_end ov18_02224368

	.bss


	.global Unk_ov18_02250D60
Unk_ov18_02250D60: ; 0x02250D60
	.space 0x4

