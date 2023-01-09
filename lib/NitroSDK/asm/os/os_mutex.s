	.include "macros/function.inc"
	.include "include/os_mutex.inc"

	.extern OSi_ThreadInfo
	

	.text


	arm_func_start OS_InitMutex
OS_InitMutex: ; 0x020C29C0
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	bx lr
	arm_func_end OS_InitMutex

	arm_func_start OS_LockMutex
OS_LockMutex: ; 0x020C29D8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020C2A58 ; =0x021CCC80
	mov r4, r0
	ldr r7, [r1, #4]
	mov r6, #0
_020C29F4:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne _020C2A20
	str r7, [r5, #8]
	ldr r1, [r5, #0xc]
	mov r0, r7
	add r2, r1, #1
	mov r1, r5
	str r2, [r5, #0xc]
	bl OSi_EnqueueTail
	b _020C2A4C
_020C2A20:
	cmp r0, r7
	bne _020C2A38
	ldr r0, [r5, #0xc]
	add r0, r0, #1
	str r0, [r5, #0xc]
	b _020C2A4C
_020C2A38:
	mov r0, r5
	str r5, [r7, #0x84]
	bl OS_SleepThread
	str r6, [r7, #0x84]
	b _020C29F4
_020C2A4C:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C2A58: .word OSi_ThreadInfo
	arm_func_end OS_LockMutex

	arm_func_start OS_UnlockMutex
OS_UnlockMutex: ; 0x020C2A5C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020C2AB4 ; =0x021CCC80
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r1, [r5, #8]
	cmp r1, r0
	bne _020C2AA8
	ldr r1, [r5, #0xc]
	subs r1, r1, #1
	str r1, [r5, #0xc]
	bne _020C2AA8
	mov r1, r5
	bl OSi_DequeueItem
	mov r1, #0
	mov r0, r5
	str r1, [r5, #8]
	bl OS_WakeupThread
_020C2AA8:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C2AB4: .word OSi_ThreadInfo
	arm_func_end OS_UnlockMutex

	arm_func_start OSi_UnlockAllMutex
OSi_UnlockAllMutex: ; 0x020C2AB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x88]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r4, #0
_020C2AD0:
	add r0, r5, #0x88
	bl OSi_RemoveMutexLinkFromQueue
	str r4, [r0, #0xc]
	str r4, [r0, #8]
	bl OS_WakeupThread
	ldr r0, [r5, #0x88]
	cmp r0, #0
	bne _020C2AD0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end OSi_UnlockAllMutex

	arm_func_start OS_TryLockMutex
OS_TryLockMutex: ; 0x020C2AF4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r2, [r5, #8]
	ldr r1, _020C2B64 ; =0x021CCC80
	mov r4, r0
	cmp r2, #0
	ldr r0, [r1, #4]
	bne _020C2B38
	str r0, [r5, #8]
	ldr r2, [r5, #0xc]
	mov r1, r5
	add r2, r2, #1
	str r2, [r5, #0xc]
	bl OSi_EnqueueTail
	mov r6, #1
	b _020C2B54
_020C2B38:
	cmp r2, r0
	movne r6, #0
	bne _020C2B54
	ldr r0, [r5, #0xc]
	mov r6, #1
	add r0, r0, #1
	str r0, [r5, #0xc]
_020C2B54:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C2B64: .word OSi_ThreadInfo
	arm_func_end OS_TryLockMutex

	arm_func_start OSi_EnqueueTail
OSi_EnqueueTail: ; 0x020C2B68
	ldr r2, [r0, #0x8c]
	cmp r2, #0
	streq r1, [r0, #0x88]
	strne r1, [r2, #0x10]
	str r2, [r1, #0x14]
	mov r2, #0
	str r2, [r1, #0x10]
	str r1, [r0, #0x8c]
	bx lr
	arm_func_end OSi_EnqueueTail

	arm_func_start OSi_DequeueItem
OSi_DequeueItem: ; 0x020C2B8C
	ldr r2, [r1, #0x10]
	ldr r1, [r1, #0x14]
	cmp r2, #0
	streq r1, [r0, #0x8c]
	strne r1, [r2, #0x14]
	cmp r1, #0
	streq r2, [r0, #0x88]
	strne r2, [r1, #0x10]
	bx lr
	arm_func_end OSi_DequeueItem
