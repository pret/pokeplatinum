	.include "macros/function.inc"
	.include "include/ov60_02225518.inc"

	

	.text


	arm_func_start ov60_02225518
ov60_02225518: ; 0x02225518
	stmfd sp!, {r3, lr}
	ldr r0, _0222552C ; =0x02229FF8
	bl OS_InitMutex
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222552C: .word 0x02229FF8
	arm_func_end ov60_02225518

	arm_func_start ov60_02225530
ov60_02225530: ; 0x02225530
	bx lr
	arm_func_end ov60_02225530

	arm_func_start ov60_02225534
ov60_02225534: ; 0x02225534
	ldr ip, _02225540 ; =OS_LockMutex
	ldr r0, _02225544 ; =0x02229FF8
	bx ip
	; .align 2, 0
_02225540: .word OS_LockMutex
_02225544: .word 0x02229FF8
	arm_func_end ov60_02225534

	arm_func_start ov60_02225548
ov60_02225548: ; 0x02225548
	ldr ip, _02225554 ; =OS_UnlockMutex
	ldr r0, _02225558 ; =0x02229FF8
	bx ip
	; .align 2, 0
_02225554: .word OS_UnlockMutex
_02225558: .word 0x02229FF8
	arm_func_end ov60_02225548

	arm_func_start ov60_0222555C
ov60_0222555C: ; 0x0222555C
	stmfd sp!, {r3, lr}
	ldr r0, _0222557C ; =0x02229FE0
	bl OS_InitMutex
	ldr r0, _02225580 ; =0x02229FDC
	mov r1, #0
	str r1, [r0, #0]
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0222557C: .word 0x02229FE0
_02225580: .word 0x02229FDC
	arm_func_end ov60_0222555C

	arm_func_start ov60_02225584
ov60_02225584: ; 0x02225584
	bx lr
	arm_func_end ov60_02225584

	arm_func_start ov60_02225588
ov60_02225588: ; 0x02225588
	stmfd sp!, {r4, lr}
	ldr r0, _022255C8 ; =0x02229FE0
	bl OS_LockMutex
	ldr r0, _022255CC ; =0x02229FDC
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r4, #1
	movne r4, #0
	cmp r4, #0
	ldrne r0, _022255CC ; =0x02229FDC
	movne r1, #1
	strne r1, [r0]
	ldr r0, _022255C8 ; =0x02229FE0
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022255C8: .word 0x02229FE0
_022255CC: .word 0x02229FDC
	arm_func_end ov60_02225588

	arm_func_start ov60_022255D0
ov60_022255D0: ; 0x022255D0
	stmfd sp!, {r3, lr}
	ldr r0, _022255F4 ; =0x02229FE0
	bl OS_LockMutex
	ldr r1, _022255F8 ; =0x02229FDC
	mov r2, #0
	ldr r0, _022255F4 ; =0x02229FE0
	str r2, [r1, #0]
	bl OS_UnlockMutex
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022255F4: .word 0x02229FE0
_022255F8: .word 0x02229FDC
	arm_func_end ov60_022255D0

	arm_func_start ov60_022255FC
ov60_022255FC: ; 0x022255FC
	ldr ip, _0222560C ; =OS_SendMessage
	mov r1, #0
	mov r2, r1
	bx ip
	; .align 2, 0
_0222560C: .word OS_SendMessage
	arm_func_end ov60_022255FC

	arm_func_start ov60_02225610
ov60_02225610: ; 0x02225610
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	mov sb, r0
	add r0, sp, #0
	bl OS_GetMacAddress
	mov r6, #0
	add r7, sp, #0
	mov r8, r6
	add r5, sp, #6
	mov r4, #2
_02225638:
	ldrb r1, [r7], #1
	mov r2, r4
	add r0, r5, r8
	bl ov60_022257A4
	add r6, r6, #1
	cmp r6, #6
	add r8, r8, #2
	blt _02225638
	add r1, sp, #6
	mov r0, sb
	mov r2, #0xc
	bl ov60_02223FC8
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov60_02225610

	.bss


	.global Unk_ov60_02229FDC
Unk_ov60_02229FDC: ; 0x02229FDC
	.space 0x4

	.global Unk_ov60_02229FE0
Unk_ov60_02229FE0: ; 0x02229FE0
	.space 0x18

	.global Unk_ov60_02229FF8
Unk_ov60_02229FF8: ; 0x02229FF8
	.space 0x18

