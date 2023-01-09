	.include "macros/function.inc"
	.include "include/snd_bank.inc"

	

	.text


	arm_func_start SND_AssignWaveArc
SND_AssignWaveArc: ; 0x020C5F5C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl SNDi_LockMutex
	add r3, r6, r5, lsl #3
	ldr r2, [r3, #0x18]
	cmp r2, #0
	beq _020C5FEC
	cmp r4, r2
	bne _020C5F90
	bl SNDi_UnlockMutex
	ldmia sp!, {r4, r5, r6, pc}
_020C5F90:
	add r1, r6, #0x18
	ldr r0, [r2, #0x18]
	add ip, r1, r5, lsl #3
	cmp ip, r0
	bne _020C5FBC
	ldr r0, [r3, #0x1c]
	mov r1, #0x3c
	str r0, [r2, #0x18]
	ldr r0, [r3, #0x18]
	bl DC_StoreRange
	b _020C5FEC
_020C5FBC:
	cmp r0, #0
	beq _020C5FD8
_020C5FC4:
	ldr r1, [r0, #4]
	cmp ip, r1
	movne r0, r1
	cmpne r1, #0
	bne _020C5FC4
_020C5FD8:
	add r1, r6, r5, lsl #3
	ldr r2, [r1, #0x1c]
	mov r1, #8
	str r2, [r0, #4]
	bl DC_StoreRange
_020C5FEC:
	add r0, r6, #0x18
	ldr r1, [r4, #0x18]
	add r0, r0, r5, lsl #3
	str r0, [r4, #0x18]
	add r0, r6, r5, lsl #3
	str r1, [r0, #0x1c]
	str r4, [r0, #0x18]
	bl SNDi_UnlockMutex
	mov r0, r6
	mov r1, #0x3c
	bl DC_StoreRange
	mov r0, r4
	mov r1, #0x3c
	bl DC_StoreRange
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end SND_AssignWaveArc

	arm_func_start SND_DestroyBank
SND_DestroyBank: ; 0x020C6028
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r0
	bl SNDi_LockMutex
	add r5, r7, #0x18
	mov r6, #0
	mov r8, #8
	mov r4, #0x3c
_020C6044:
	add r1, r7, r6, lsl #3
	ldr r0, [r1, #0x18]
	cmp r0, #0
	beq _020C60A8
	ldr r3, [r0, #0x18]
	cmp r5, r3
	bne _020C6074
	ldr r2, [r1, #0x1c]
	mov r1, r4
	str r2, [r0, #0x18]
	bl DC_StoreRange
	b _020C60A8
_020C6074:
	cmp r3, #0
	beq _020C6090
_020C607C:
	ldr r0, [r3, #4]
	cmp r5, r0
	movne r3, r0
	cmpne r0, #0
	bne _020C607C
_020C6090:
	add r0, r7, r6, lsl #3
	ldr r2, [r0, #0x1c]
	mov r0, r3
	mov r1, r8
	str r2, [r3, #4]
	bl DC_StoreRange
_020C60A8:
	add r6, r6, #1
	cmp r6, #4
	add r5, r5, #8
	blt _020C6044
	bl SNDi_UnlockMutex
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end SND_DestroyBank

	arm_func_start SND_DestroyWaveArc
SND_DestroyWaveArc: ; 0x020C60C0
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	bl SNDi_LockMutex
	ldr r0, [r4, #0x18]
	cmp r0, #0
	beq _020C6100
	mov r5, #0
	mov r4, #8
_020C60E0:
	ldr r6, [r0, #4]
	mov r1, r4
	str r5, [r0, #0]
	str r5, [r0, #4]
	bl DC_StoreRange
	mov r0, r6
	cmp r6, #0
	bne _020C60E0
_020C6100:
	bl SNDi_UnlockMutex
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end SND_DestroyWaveArc

	arm_func_start SND_GetFirstInstDataPos
SND_GetFirstInstDataPos: ; 0x020C6108
	sub sp, sp, #8
	mov r1, #0
	str r1, [r0, #0]
	str r1, [sp]
	str r1, [sp, #4]
	str r1, [r0, #4]
	add sp, sp, #8
	bx lr
	arm_func_end SND_GetFirstInstDataPos

	arm_func_start SND_GetNextInstData
SND_GetNextInstData: ; 0x020C6128
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [r2, #0]
	ldr r3, [r0, #0x38]
	cmp r4, r3
	bhs _020C62D0
	mov ip, #0
_020C6140:
	add r3, r0, r4, lsl #2
	ldr r4, [r3, #0x3c]
	and r3, r4, #0xff
	strb r4, [r1]
	cmp r3, #0x10
	mov r4, r4, lsr #8
	bgt _020C6188
	cmp r3, #0x10
	bge _020C61D4
	cmp r3, #5
	addls pc, pc, r3, lsl #2
	b _020C62B4
_020C6170: ; jump table
	b _020C62B4 ; case 0
	b _020C6194 ; case 1
	b _020C6194 ; case 2
	b _020C6194 ; case 3
	b _020C6194 ; case 4
	b _020C6194 ; case 5
_020C6188:
	cmp r3, #0x11
	beq _020C6248
	b _020C62B4
_020C6194:
	add r5, r0, r4
	ldrh r4, [r0, r4]
	ldrh r3, [r5, #2]
	mov r0, #1
	strh r4, [r1, #2]
	strh r3, [r1, #4]
	ldrh r4, [r5, #4]
	ldrh r3, [r5, #6]
	strh r4, [r1, #6]
	strh r3, [r1, #8]
	ldrh r3, [r5, #8]
	strh r3, [r1, #0xa]
	ldr r1, [r2, #0]
	add r1, r1, #1
	str r1, [r2, #0]
	ldmia sp!, {r3, r4, r5, pc}
_020C61D4:
	add r5, r0, r4
	b _020C6228
_020C61DC:
	mov r0, #0xc
	mla ip, lr, r0, r5
	ldrh r4, [ip, #2]
	ldrh r3, [ip, #4]
	mov r0, #1
	strh r4, [r1]
	strh r3, [r1, #2]
	ldrh r4, [ip, #6]
	ldrh r3, [ip, #8]
	strh r4, [r1, #4]
	strh r3, [r1, #6]
	ldrh r4, [ip, #0xa]
	ldrh r3, [ip, #0xc]
	strh r4, [r1, #8]
	strh r3, [r1, #0xa]
	ldr r1, [r2, #4]
	add r1, r1, #1
	str r1, [r2, #4]
	ldmia sp!, {r3, r4, r5, pc}
_020C6228:
	ldrb r4, [r5, #1]
	ldrb r3, [r5]
	ldr lr, [r2, #4]
	sub r3, r4, r3
	add r3, r3, #1
	cmp lr, r3
	blo _020C61DC
	b _020C62B4
_020C6248:
	add r4, r0, r4
	b _020C62A8
_020C6250:
	ldrb lr, [r4, r3]
	cmp lr, #0
	beq _020C62B4
	mov r0, #0xc
	mla lr, r3, r0, r4
	ldrh ip, [lr, #8]
	ldrh r3, [lr, #0xa]
	mov r0, #1
	strh ip, [r1]
	strh r3, [r1, #2]
	ldrh ip, [lr, #0xc]
	ldrh r3, [lr, #0xe]
	strh ip, [r1, #4]
	strh r3, [r1, #6]
	ldrh ip, [lr, #0x10]
	ldrh r3, [lr, #0x12]
	strh ip, [r1, #8]
	strh r3, [r1, #0xa]
	ldr r1, [r2, #4]
	add r1, r1, #1
	str r1, [r2, #4]
	ldmia sp!, {r3, r4, r5, pc}
_020C62A8:
	ldr r3, [r2, #4]
	cmp r3, #8
	blo _020C6250
_020C62B4:
	ldr r3, [r2, #0]
	add r3, r3, #1
	stmia r2, {r3, ip}
	ldr r4, [r2, #0]
	ldr r3, [r0, #0x38]
	cmp r4, r3
	blo _020C6140
_020C62D0:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SND_GetNextInstData

	arm_func_start SND_GetWaveDataCount
SND_GetWaveDataCount: ; 0x020C62D8
	ldr r0, [r0, #0x38]
	bx lr
	arm_func_end SND_GetWaveDataCount

	arm_func_start SND_SetWaveDataAddress
SND_SetWaveDataAddress: ; 0x020C62E0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl SNDi_LockMutex
	add r0, r6, #0x3c
	add r2, r6, r5, lsl #2
	add r0, r0, r5, lsl #2
	mov r1, #4
	str r4, [r2, #0x3c]
	bl DC_StoreRange
	bl SNDi_UnlockMutex
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end SND_SetWaveDataAddress

	arm_func_start SND_GetWaveDataAddress
SND_GetWaveDataAddress: ; 0x020C6314
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl SNDi_LockMutex
	add r0, r5, r4, lsl #2
	ldr r4, [r0, #0x3c]
	cmp r4, #0
	beq _020C6340
	cmp r4, #0x2000000
	addlo r4, r5, r4
	b _020C6344
_020C6340:
	mov r4, #0
_020C6344:
	bl SNDi_UnlockMutex
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SND_GetWaveDataAddress