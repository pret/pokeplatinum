	.include "macros/function.inc"
	.include "include/gt2socket.inc"

	

	.text


	arm_func_start gti2ConnectionHash
gti2ConnectionHash: ; 0x021FA360
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	ldrh r0, [r2, #4]
	ldr r2, [r2, #0]
	mul r0, r2, r0
	bl _u32_div_f
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end gti2ConnectionHash

	arm_func_start gti2ConnectionCompare
gti2ConnectionCompare: ; 0x021FA380
	ldr r3, [r0, #0]
	ldr r2, [r1, #0]
	ldr r0, [r3, #0]
	ldr r1, [r2, #0]
	cmp r0, r1
	subne r0, r0, r1
	bxne lr
	ldrh r1, [r3, #4]
	ldrh r0, [r2, #4]
	sub r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
	arm_func_end gti2ConnectionCompare

	arm_func_start gti2ConnectionFree
gti2ConnectionFree: ; 0x021FA3B4
	ldr ip, _021FA3C0 ; =gti2ConnectionCleanup
	ldr r0, [r0, #0]
	bx ip
	; .align 2, 0
_021FA3C0: .word gti2ConnectionCleanup
	arm_func_end gti2ConnectionFree

	arm_func_start gti2SocketFindConnection
gti2SocketFindConnection: ; 0x021FA3C4
	stmdb sp!, {lr}
	sub sp, sp, #0xa4
	add r3, sp, #4
	str r1, [sp, #4]
	strh r2, [sp, #8]
	str r3, [sp]
	ldr r0, [r0, #0xc]
	add r1, sp, #0
	bl TableLookup
	cmp r0, #0
	ldrne r0, [r0]
	moveq r0, #0
	add sp, sp, #0xa4
	ldmia sp!, {pc}
	arm_func_end gti2SocketFindConnection

	arm_func_start gti2CreateSocket
gti2CreateSocket: ; 0x021FA3FC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x1c
	mov r4, r1
	mov r6, r3
	mov r5, r0
	mov r7, r2
	bl SocketStartUp
	cmp r6, #0
	moveq r6, #0x10000
	cmp r7, #0
	add r1, sp, #0x10
	add r2, sp, #8
	mov r0, r4
	moveq r7, #0x10000
	bl gt2StringToAddress
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #4
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r0, #0x44
	bl DWCi_GsMalloc
	movs r4, r0
	addeq sp, sp, #0x1c
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	mov r1, #0
	mov r2, #0x44
	bl memset
	mvn r0, #0
	str r0, [r4, #0]
	str r6, [r4, #0x3c]
	ldr r1, [sp, #0x30]
	str r7, [r4, #0x38]
	str r1, [r4, #0x24]
	ldr r0, _021FA610 ; =gti2ConnectionCompare
	ldr r3, _021FA614 ; =gti2ConnectionHash
	str r0, [sp]
	mov ip, #0
	mov r0, #4
	mov r1, #0x20
	mov r2, #2
	str ip, [sp, #4]
	bl TableNew2
	str r0, [r4, #0xc]
	cmp r0, #0
	bne _021FA4C8
	mov r0, r4
	bl DWCi_GsFree
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FA4C8:
	mov r0, #4
	ldr r2, _021FA618 ; =gti2ConnectionFree
	mov r1, r0
	bl ArrayNew
	str r0, [r4, #0x10]
	cmp r0, #0
	bne _021FA500
	ldr r0, [r4, #0xc]
	bl TableFree
	mov r0, r4
	bl DWCi_GsFree
	add sp, sp, #0x1c
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FA500:
	mov r0, #2
	mov r1, r0
	mov r2, #0
	bl socket
	mvn r1, #0
	str r0, [r4, #0]
	cmp r0, r1
	bne _021FA544
	ldr r0, [r4, #0xc]
	bl TableFree
	ldr r0, [r4, #0x10]
	bl ArrayFree
	mov r0, r4
	bl DWCi_GsFree
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FA544:
	ldrh r0, [sp, #8]
	add r1, sp, #0x14
	mov ip, #0
	mov r2, r0, asr #8
	mov r0, r0, lsl #8
	and r2, r2, #0xff
	and r0, r0, #0xff00
	orr r0, r2, r0
	str ip, [r1]
	mov r2, #2
	strb r2, [sp, #0x15]
	ldr r3, [sp, #0x10]
	str ip, [r1, #4]
	str r3, [sp, #0x18]
	strh r0, [sp, #0x16]
	ldr r0, [r4, #0]
	mov r2, #8
	bl bind
	mvn r1, #0
	cmp r0, r1
	bne _021FA5C4
	ldr r0, [r4, #0]
	bl closesocket
	ldr r0, [r4, #0xc]
	bl TableFree
	ldr r0, [r4, #0x10]
	bl ArrayFree
	mov r0, r4
	bl DWCi_GsFree
	add sp, sp, #0x1c
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FA5C4:
	mov r0, #8
	str r0, [sp, #0xc]
	ldr r0, [r4, #0]
	add r1, sp, #0x14
	add r2, sp, #0xc
	bl getsockname
	ldr r1, [sp, #0x18]
	mov r0, #0
	str r1, [r4, #4]
	ldrh r1, [sp, #0x16]
	mov r2, r1, asr #8
	mov r1, r1, lsl #8
	and r2, r2, #0xff
	and r1, r1, #0xff00
	orr r1, r2, r1
	strh r1, [r4, #8]
	str r4, [r5, #0]
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021FA610: .word gti2ConnectionCompare
_021FA614: .word gti2ConnectionHash
_021FA618: .word gti2ConnectionFree
	arm_func_end gti2CreateSocket

	arm_func_start gti2CloseSocket
gti2CloseSocket: ; 0x021FA61C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movne r0, #1
	strne r0, [r4, #0x14]
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0]
	bl closesocket
	ldr r0, [r4, #0xc]
	bl TableFree
	ldr r0, [r4, #0x10]
	bl ArrayFree
	mov r0, r4
	bl DWCi_GsFree
	bl SocketShutDown
	ldmia sp!, {r4, pc}
	arm_func_end gti2CloseSocket

	arm_func_start gti2Listen
gti2Listen: ; 0x021FA660
	str r1, [r0, #0x20]
	bx lr
	arm_func_end gti2Listen

	arm_func_start gti2CreateConnectionObject
gti2CreateConnectionObject: ; 0x021FA668
	ldr ip, _021FA674 ; =DWCi_GsMalloc
	mov r0, #0xa0
	bx ip
	; .align 2, 0
_021FA674: .word DWCi_GsMalloc
	arm_func_end gti2CreateConnectionObject

	arm_func_start gti2NewSocketConnection
gti2NewSocketConnection: ; 0x021FA678
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r5, r2
	mov r3, #0
	mov r6, r1
	mov r1, r5
	mov r2, r4
	mov r7, r0
	str r3, [sp]
	bl gti2SocketFindConnection
	cmp r0, #0
	movne r0, #5
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	bl gti2CreateConnectionObject
	str r0, [sp]
	cmp r0, #0
	beq _021FA808
	mov r1, #0
	mov r2, #0xa0
	bl memset
	ldr r0, [sp]
	str r5, [r0, #0]
	ldr r0, [sp]
	strh r4, [r0, #4]
	ldr r0, [sp]
	str r7, [r0, #8]
	bl current_time
	ldr r2, [sp]
	mov r1, #0
	str r0, [r2, #0x1c]
	ldr r2, [sp]
	ldr r0, [r2, #0x1c]
	str r0, [r2, #0x88]
	ldr r0, [sp]
	strh r1, [r0, #0x64]
	ldr r0, [sp]
	strh r1, [r0, #0x66]
	ldr r0, [sp]
	ldr r1, [r7, #0x3c]
	add r0, r0, #0x44
	bl gti2AllocateBuffer
	cmp r0, #0
	beq _021FA808
	ldr r0, [sp]
	ldr r1, [r7, #0x38]
	add r0, r0, #0x50
	bl gti2AllocateBuffer
	cmp r0, #0
	beq _021FA808
	mov r0, #0x10
	mov r1, #0x40
	mov r2, #0
	bl ArrayNew
	ldr r1, [sp]
	str r0, [r1, #0x5c]
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _021FA808
	mov r0, #0x10
	mov r1, #0x40
	mov r2, #0
	bl ArrayNew
	ldr r1, [sp]
	str r0, [r1, #0x60]
	ldr r0, [sp]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _021FA808
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl ArrayNew
	ldr r1, [sp]
	str r0, [r1, #0x98]
	ldr r0, [sp]
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _021FA808
	mov r0, #4
	mov r1, #2
	mov r2, #0
	bl ArrayNew
	ldr r1, [sp]
	str r0, [r1, #0x9c]
	ldr r0, [sp]
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _021FA808
	ldr r0, [r7, #0xc]
	add r1, sp, #0
	bl TableEnter
	mov r0, r7
	mov r1, r5
	mov r2, r4
	bl gti2SocketFindConnection
	str r0, [r6, #0]
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_021FA808:
	ldr r0, [sp]
	cmp r0, #0
	beq _021FA880
	ldr r0, [r0, #0x44]
	bl DWCi_GsFree
	ldr r0, [sp]
	ldr r0, [r0, #0x50]
	bl DWCi_GsFree
	ldr r0, [sp]
	ldr r0, [r0, #0x5c]
	cmp r0, #0
	beq _021FA83C
	bl ArrayFree
_021FA83C:
	ldr r0, [sp]
	ldr r0, [r0, #0x60]
	cmp r0, #0
	beq _021FA850
	bl ArrayFree
_021FA850:
	ldr r0, [sp]
	ldr r0, [r0, #0x98]
	cmp r0, #0
	beq _021FA864
	bl ArrayFree
_021FA864:
	ldr r0, [sp]
	ldr r0, [r0, #0x9c]
	cmp r0, #0
	beq _021FA878
	bl ArrayFree
_021FA878:
	ldr r0, [sp]
	bl DWCi_GsFree
_021FA880:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end gti2NewSocketConnection

	arm_func_start gti2FreeSocketConnection
gti2FreeSocketConnection: ; 0x021FA888
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, [sp, #0x10]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	ldreq r0, [r1, #0x24]
	cmpeq r0, #0
	ldmneia sp!, {r4, r5, r6, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [r1, #0xc]
	cmp r0, #7
	ldr r0, [r1, #8]
	bne _021FA934
	ldr r0, [r0, #0x10]
	bl ArrayLength
	mov r4, r0
	mov r5, #0
	cmp r4, #0
	ldmleia sp!, {r4, r5, r6, lr}
	addle sp, sp, #0x10
	bxle lr
_021FA8E0:
	ldr r6, [sp, #0x10]
	mov r1, r5
	ldr r0, [r6, #8]
	ldr r0, [r0, #0x10]
	bl ArrayNth
	ldr r0, [r0, #0]
	cmp r6, r0
	bne _021FA91C
	ldr r0, [r6, #8]
	mov r1, r5
	ldr r0, [r0, #0x10]
	bl ArrayDeleteAt
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FA91C:
	add r5, r5, #1
	cmp r5, r4
	blt _021FA8E0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FA934:
	ldr r0, [r0, #0xc]
	add r1, sp, #0x10
	bl TableRemove
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end gti2FreeSocketConnection

	arm_func_start gti2SocketSend
gti2SocketSend: ; 0x021FA94C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x18
	mov r6, r0
	mov r5, r1
	add r0, sp, #0x34
	add r1, sp, #0x38
	mov r4, r2
	bl gti2MessageCheck
	ldr r0, [r6, #0]
	bl CanSendOnSocket
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	mov r1, r4, asr #8
	mov r0, r4, lsl #8
	add r2, sp, #0x10
	mov r3, #0
	str r3, [r2, #4]
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	str r3, [r2, #0]
	mov r1, #2
	strh r0, [sp, #0x12]
	strb r1, [sp, #0x11]
	str r5, [sp, #0x14]
	str r2, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r6, #0]
	ldr r1, [sp, #0x34]
	ldr r2, [sp, #0x38]
	bl sendto
	mvn r1, #0
	cmp r0, r1
	bne _021FAA78
	ldr r0, [r6, #0]
	bl GOAGetLastError
	mvn r2, #0xe
	cmp r0, r2
	bne _021FAA2C
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl gti2HandleConnectionReset
	cmp r0, #0
	bne _021FAAE0
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FAA2C:
	sub r1, r2, #0x1b
	cmp r0, r1
	addne r1, r2, #9
	cmpne r0, r1
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
	sub r1, r2, #0x14
	cmp r0, r1
	beq _021FAAE0
	mov r0, r6
	bl gti2SocketError
	add sp, sp, #0x18
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021FAA78:
	ldr r0, [r6, #0x28]
	cmp r0, #0
	beq _021FAAE0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl gti2SocketFindConnection
	mov r1, #0
	str r1, [sp]
	ldr r2, [sp, #0x34]
	mov r1, r0
	str r2, [sp, #4]
	ldr ip, [sp, #0x38]
	mov r3, r4
	mov r0, r6
	mov r2, r5
	str ip, [sp, #8]
	mov r4, #1
	str r4, [sp, #0xc]
	bl gti2DumpCallback
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, lr}
	addeq sp, sp, #0x10
	bxeq lr
_021FAAE0:
	mov r0, #1
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end gti2SocketSend

	arm_func_start gti2SocketConnectionsThinkMap
gti2SocketConnectionsThinkMap: ; 0x021FAAF4
	stmfd sp!, {r4, lr}
	ldr r4, [r0, #0]
	ldr r1, [r1, #0]
	ldr r0, [r4, #0xc]
	cmp r0, #7
	beq _021FAB20
	mov r0, r4
	bl gti2ConnectionThink
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
_021FAB20:
	ldr r0, [r4, #0xc]
	cmp r0, #7
	ldreq r0, [r4, #0x14]
	cmpeq r0, #0
	ldreq r0, [r4, #0x24]
	cmpeq r0, #0
	bne _021FAB44
	mov r0, r4
	bl gti2FreeSocketConnection
_021FAB44:
	mov r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end gti2SocketConnectionsThinkMap

	arm_func_start gti2SocketConnectionsThink
gti2SocketConnectionsThink: ; 0x021FAB4C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	bl current_time
	str r0, [sp]
	ldr r0, [r4, #0xc]
	ldr r1, _021FAB84 ; =gti2SocketConnectionsThinkMap
	add r2, sp, #0
	bl TableMapSafe2
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_021FAB84: .word gti2SocketConnectionsThinkMap
	arm_func_end gti2SocketConnectionsThink

	arm_func_start gti2FreeClosedConnections
gti2FreeClosedConnections: ; 0x021FAB88
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x10]
	bl ArrayLength
	subs r4, r0, #1
	ldmmiia sp!, {r3, r4, r5, pc}
_021FABA0:
	ldr r0, [r5, #0x10]
	mov r1, r4
	bl ArrayNth
	ldr r0, [r0, #0]
	bl gti2FreeSocketConnection
	subs r4, r4, #1
	bpl _021FABA0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end gti2FreeClosedConnections

	arm_func_start gti2SocketError
gti2SocketError: ; 0x021FABC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x18]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #1
	str r1, [r4, #0x18]
	bl gt2CloseAllConnectionsHard
	mov r0, r4
	bl gti2SocketErrorCallback
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl gti2CloseSocket
	ldmia sp!, {r4, pc}
	arm_func_end gti2SocketError