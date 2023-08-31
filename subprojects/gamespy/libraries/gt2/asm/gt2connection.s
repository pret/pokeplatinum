	.include "macros/function.inc"
	.include "include/gt2connection.inc"

	

	.text


	arm_func_start gti2NewOutgoingConnection
gti2NewOutgoingConnection: ; 0x021F7F54
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl gti2NewSocketConnection
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r1, [r4, #0]
	mov r0, #0
	str r0, [r1, #0xc]
	ldr r1, [r4, #0]
	mov r2, #1
	str r2, [r1, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end gti2NewOutgoingConnection

	arm_func_start gti2NewIncomingConnection
gti2NewIncomingConnection: ; 0x021F7F84
	stmfd sp!, {r4, lr}
	mov r4, r1
	bl gti2NewSocketConnection
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0]
	mov r1, #2
	str r1, [r0, #0xc]
	ldr r1, [r4, #0]
	mov r0, #0
	str r0, [r1, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end gti2NewIncomingConnection

	arm_func_start gti2StartConnectionAttempt
gti2StartConnectionAttempt: ; 0x021F7FB4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r4, r3
	bl gti2MessageCheck
	ldr r0, [sp, #0x38]
	cmp r0, #0
	ble _021F8014
	bl DWCi_GsMalloc
	cmp r0, #0
	str r0, [r5, #0x38]
	addeq sp, sp, #0x20
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, lr}
	addeq sp, sp, #0x10
	bxeq lr
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl memcpy
	ldr r0, [sp, #0x38]
	str r0, [r5, #0x3c]
_021F8014:
	cmp r4, #0
	addne ip, r5, #0x28
	ldmneia r4, {r0, r1, r2, r3}
	stmneia ip, {r0, r1, r2, r3}
	add r0, sp, #0
	bl gti2GetChallenge
	add r1, sp, #0
	add r0, r5, #0x68
	bl gti2GetResponse
	add r1, sp, #0
	mov r0, r5
	bl gti2SendClientChallenge
	mov r0, #0
	str r0, [r5, #0xc]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end gti2StartConnectionAttempt

	arm_func_start gti2AcceptConnection
gti2AcceptConnection: ; 0x021F805C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r2, [r5, #0x14]
	mov r4, r1
	cmp r2, #0
	movne r0, #0
	strne r0, [r5, #0x14]
	ldmneia sp!, {r3, r4, r5, pc}
	mov r2, #0
	str r2, [r5, #0x14]
	ldr r1, [r5, #0xc]
	cmp r1, #4
	movne r0, r2
	ldmneia sp!, {r3, r4, r5, pc}
	bl gti2SendAccept
	mov r0, #5
	cmp r4, #0
	str r0, [r5, #0xc]
	addne ip, r5, #0x28
	ldmneia r4, {r0, r1, r2, r3}
	stmneia ip, {r0, r1, r2, r3}
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end gti2AcceptConnection

	arm_func_start gti2RejectConnection
gti2RejectConnection: ; 0x021F80B8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #0
	str r0, [r4, #0x14]
	ldr r0, [r4, #0xc]
	cmp r0, #4
	ldmneia sp!, {r4, lr}
	addne sp, sp, #0x10
	bxne lr
	add r0, sp, #0xc
	add r1, sp, #0x10
	bl gti2MessageCheck
	ldr r1, [sp, #0xc]
	ldr r2, [sp, #0x10]
	mov r0, r4
	bl gti2SendReject
	mov r0, #6
	str r0, [r4, #0xc]
	ldmia sp!, {r4, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end gti2RejectConnection

	arm_func_start gti2ConnectionSendData
gti2ConnectionSendData: ; 0x021F8110
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	str r2, [sp]
	mov r3, r1
	ldrh r2, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0]
	bl gti2SocketSend
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	bl current_time
	str r0, [r4, #0x88]
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end gti2ConnectionSendData

	arm_func_start gti2CheckTimeout
gti2CheckTimeout: ; 0x021F8158
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0xc]
	cmp r2, #5
	bge _021F81F0
	ldr r0, [r4, #0x10]
	mov r3, #0
	cmp r0, #0
	beq _021F819C
	ldr r2, [r4, #0x20]
	cmp r2, #0
	beq _021F81B8
	ldr r0, [r4, #0x1c]
	sub r0, r1, r0
	cmp r0, r2
	movhi r3, #1
	b _021F81B8
_021F819C:
	cmp r2, #4
	bge _021F81B8
	ldr r2, [r4, #0x1c]
	ldr r0, _021F81F8 ; =0x0000EA60
	sub r1, r1, r2
	cmp r1, r0
	movhi r3, #1
_021F81B8:
	cmp r3, #0
	beq _021F81F0
	mov r0, r4
	bl gti2SendClosed
	mov r0, r4
	bl gti2ConnectionClosed
	mov r2, #0
	mov r0, r4
	mov r3, r2
	mov r1, #6
	bl gti2ConnectedCallback
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021F81F0:
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F81F8: .word 0x0000EA60
	arm_func_end gti2CheckTimeout

	arm_func_start gti2SendRetries
gti2SendRetries: ; 0x021F81FC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #0x60]
	mov r6, r1
	bl ArrayLength
	mov r5, r0
	cmp r5, #0
	mov r4, #0
	ble _021F8260
_021F8220:
	ldr r0, [r7, #0x60]
	mov r1, r4
	bl ArrayNth
	mov r1, r0
	ldr r0, [r1, #0xc]
	sub r0, r6, r0
	cmp r0, #0x3e8
	bls _021F8254
	mov r0, r7
	bl gti2ResendMessage
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021F8254:
	add r4, r4, #1
	cmp r4, r5
	blt _021F8220
_021F8260:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end gti2SendRetries

	arm_func_start gti2CheckPendingAck
gti2CheckPendingAck: ; 0x021F8268
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0x90]
	cmp r2, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	ldr r2, [r0, #0x94]
	sub r1, r1, r2
	cmp r1, #0x64
	bls _021F829C
	bl gti2SendAck
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_021F829C:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end gti2CheckPendingAck

	arm_func_start gti2CheckKeepAlive
gti2CheckKeepAlive: ; 0x021F82A4
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0x88]
	ldr r2, _021F82D4 ; =0x00007530
	sub r1, r1, r3
	cmp r1, r2
	bls _021F82CC
	bl gti2SendKeepAlive
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_021F82CC:
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F82D4: .word 0x00007530
	arm_func_end gti2CheckKeepAlive

	arm_func_start gti2ConnectionThink
gti2ConnectionThink: ; 0x021F82D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl gti2CheckTimeout
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl gti2CheckKeepAlive
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl gti2SendRetries
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl gti2CheckPendingAck
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end gti2ConnectionThink

	arm_func_start gti2CloseConnection
gti2CloseConnection: ; 0x021F8340
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r1, #0
	beq _021F8380
	ldr r1, [r4, #0xc]
	cmp r1, #7
	ldmgeia sp!, {r4, pc}
	bl gti2ConnectionClosed
	mov r0, r4
	bl gti2SendClosed
	mov r0, r4
	mov r1, #0
	bl gti2ClosedCallback
	mov r0, r4
	bl gti2FreeSocketConnection
	ldmia sp!, {r4, pc}
_021F8380:
	mov r1, #6
	str r1, [r4, #0xc]
	bl gti2SendClose
	ldmia sp!, {r4, pc}
	arm_func_end gti2CloseConnection

	arm_func_start gti2ConnectionClosed
gti2ConnectionClosed: ; 0x021F8390
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	ldr r1, [sp, #8]
	ldr r0, [r1, #0xc]
	cmp r0, #7
	ldmeqia sp!, {r3, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r0, #7
	str r0, [r1, #0xc]
	ldr r0, [sp, #8]
	add r1, sp, #8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0xc]
	bl TableRemove
	ldr r0, [sp, #8]
	add r1, sp, #8
	ldr r0, [r0, #8]
	ldr r0, [r0, #0x10]
	bl ArrayAppend
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end gti2ConnectionClosed

	arm_func_start gti2ConnectionCleanup
gti2ConnectionCleanup: ; 0x021F83EC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x38]
	cmp r0, #0
	beq _021F8404
	bl DWCi_GsFree
_021F8404:
	ldr r0, [r4, #0x44]
	cmp r0, #0
	beq _021F8414
	bl DWCi_GsFree
_021F8414:
	ldr r0, [r4, #0x50]
	cmp r0, #0
	beq _021F8424
	bl DWCi_GsFree
_021F8424:
	ldr r0, [r4, #0x5c]
	cmp r0, #0
	beq _021F8434
	bl ArrayFree
_021F8434:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	beq _021F8444
	bl ArrayFree
_021F8444:
	ldr r0, [r4, #0x98]
	cmp r0, #0
	beq _021F8454
	bl ArrayFree
_021F8454:
	ldr r0, [r4, #0x9c]
	cmp r0, #0
	beq _021F8464
	bl ArrayFree
_021F8464:
	mov r0, r4
	bl DWCi_GsFree
	ldmia sp!, {r4, pc}
	arm_func_end gti2ConnectionCleanup