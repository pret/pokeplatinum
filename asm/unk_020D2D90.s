	.include "macros/function.inc"
	.include "include/unk_020D2D90.inc"

	

	.text


	arm_func_start CTRDGi_InitTaskThread
CTRDGi_InitTaskThread: ; 0x020D2D90
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020D2E0C ; =0x021D03E8
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne _020D2DFC
	add r0, r5, #0xc4
	str r5, [r1, #0]
	bl CTRDGi_InitTaskInfo
	ldr r0, _020D2E10 ; =0x021D03EC
	bl CTRDGi_InitTaskInfo
	mov r0, #0
	str r0, [r5, #0xc0]
	mov r2, #0x400
	ldr r1, _020D2E14 ; =CTRDGi_TaskThread
	ldr r3, _020D2E18 ; =0x021D0810
	mov r0, r5
	str r2, [sp]
	mov r2, #0x14
	str r2, [sp, #4]
	mov r2, r5
	bl OS_CreateThread
	mov r0, r5
	bl OS_WakeupThreadDirect
_020D2DFC:
	mov r0, r4
	bl OS_RestoreInterrupts
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D2E0C: .word 0x021D03E8
_020D2E10: .word 0x021D03EC
_020D2E14: .word CTRDGi_TaskThread
_020D2E18: .word 0x021D0810
	arm_func_end CTRDGi_InitTaskThread

	arm_func_start CTRDGi_IsTaskAvailable
CTRDGi_IsTaskAvailable: ; 0x020D2E1C
	ldr r0, _020D2E34 ; =0x021D03E8
	ldr r0, [r0, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_020D2E34: .word 0x021D03E8
	arm_func_end CTRDGi_IsTaskAvailable

	arm_func_start CTRDGi_InitTaskInfo
CTRDGi_InitTaskInfo: ; 0x020D2E38
	ldr ip, _020D2E48 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x24
	bx ip
	; .align 2, 0
_020D2E48: .word MI_CpuFill8
	arm_func_end CTRDGi_InitTaskInfo

	arm_func_start CTRDGi_TaskThread
CTRDGi_TaskThread: ; 0x020D2E4C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x24
	mov r4, #0
	mov r8, r0
	add r6, sp, #0
	mov sl, r4
	mov sb, r4
	mov r5, r4
	mov fp, #0x24
_020D2E70:
	mov r0, r6
	mov r1, r5
	mov r2, fp
	bl MI_CpuFill8
	bl OS_DisableInterrupts
	ldr r1, [r8, #0xc0]
	mov r7, r0
	cmp r1, #0
	bne _020D2EA8
_020D2E94:
	mov r0, r4
	bl OS_SleepThread
	ldr r0, [r8, #0xc0]
	cmp r0, #0
	beq _020D2E94
_020D2EA8:
	ldr lr, [r8, #0xc0]
	add ip, sp, #0
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r1, [lr]
	mov r0, r7
	str r1, [ip]
	bl OS_RestoreInterrupts
	ldr r1, [sp]
	cmp r1, #0
	beq _020D2EE8
	mov r0, r6
	blx r1
	str r0, [sp, #8]
_020D2EE8:
	bl OS_DisableInterrupts
	ldr r2, [sp, #4]
	ldr r1, _020D2F38 ; =0x021D03E8
	mov r7, r0
	strb sl, [r1, #0x26]
	cmp r2, #0
	beq _020D2F0C
	mov r0, r6
	blx r2
_020D2F0C:
	ldr r0, _020D2F38 ; =0x021D03E8
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _020D2F2C
	mov r0, r7
	str sb, [r8, #0xc0]
	bl OS_RestoreInterrupts
	b _020D2E70
_020D2F2C:
	bl OS_ExitThread
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020D2F38: .word 0x021D03E8
	arm_func_end CTRDGi_TaskThread

	arm_func_start CTRDGi_SetTask
CTRDGi_SetTask: ; 0x020D2F3C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _020D2FDC ; =0x021D03E8
	mov r7, r0
	mov r5, r1
	mov r6, r2
	ldr r4, [r3, #0]
	bl CTRDGi_IsTaskAvailable
	cmp r0, #0
	bne _020D2F64
	bl OS_Terminate
_020D2F64:
	ldr r0, _020D2FDC ; =0x021D03E8
	ldrb r0, [r0, #0x26]
	cmp r0, #0
	beq _020D2F78
	bl OS_Terminate
_020D2F78:
	bl OS_DisableInterrupts
	mov r1, #1
	strb r1, [r7, #0x22]
	str r5, [r7, #0]
	add r1, r4, #0xc4
	cmp r7, r1
	mov r5, r0
	ldreq r0, _020D2FDC ; =0x021D03E8
	str r6, [r7, #4]
	moveq r1, #0
	streq r1, [r0]
	ldr ip, _020D2FE0 ; =0x021D03EC
	ldmia r7!, {r0, r1, r2, r3}
	mov r6, ip
	stmia ip!, {r0, r1, r2, r3}
	ldmia r7!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldr r1, [r7, #0]
	mov r0, r4
	str r1, [ip]
	str r6, [r4, #0xc0]
	bl OS_WakeupThreadDirect
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D2FDC: .word 0x021D03E8
_020D2FE0: .word 0x021D03EC
	arm_func_end CTRDGi_SetTask

	.bss


	.global Unk_021D03E8
Unk_021D03E8: ; 0x021D03E8
	.space 0x4

	.global Unk_021D03EC
Unk_021D03EC: ; 0x021D03EC
	.space 0x24

	.global Unk_021D0410
Unk_021D0410: ; 0x021D0410
	.space 0x400

