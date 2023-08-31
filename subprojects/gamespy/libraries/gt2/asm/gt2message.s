	.include "macros/function.inc"
	.include "include/gt2message.inc"

	

	.text


	arm_func_start gti2UShortFromBuffer
gti2UShortFromBuffer: ; 0x021F87F0
	ldrb r2, [r0, r1]
	add r1, r1, #1
	ldrb r1, [r0, r1]
	mov r0, r2, lsl #8
	and r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	orr r0, r1, r0, lsr #16
	bx lr
	arm_func_end gti2UShortFromBuffer

	arm_func_start gti2UShortToBuffer
gti2UShortToBuffer: ; 0x021F8810
	mov r3, r2, asr #8
	strb r3, [r0, r1]
	add r1, r1, #1
	strb r2, [r0, r1]
	bx lr
	arm_func_end gti2UShortToBuffer

	arm_func_start gti2SNDiff
gti2SNDiff: ; 0x021F8824
	sub r0, r0, r1
	mov r0, r0, lsl #0x10
	mov r0, r0, asr #0x10
	bx lr
	arm_func_end gti2SNDiff

	arm_func_start gti2ConnectionError
gti2ConnectionError: ; 0x021F8834
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #5
	bge _021F889C
	ldr r1, [r6, #0x10]
	cmp r1, #0
	beq _021F8884
	bl gti2ConnectionClosed
	mov r2, #0
	mov r0, r6
	mov r1, r5
	mov r3, r2
	bl gti2ConnectedCallback
	cmp r0, #0
	bne _021F88C0
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F8884:
	cmp r3, #4
	moveq r0, #1
	streq r0, [r6, #0x14]
	mov r0, r6
	bl gti2ConnectionClosed
	b _021F88C0
_021F889C:
	cmp r3, #7
	beq _021F88C0
	bl gti2ConnectionClosed
	mov r0, r6
	mov r1, r4
	bl gti2ClosedCallback
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
_021F88C0:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end gti2ConnectionError

	arm_func_start gti2ConnectionCommunicationError
gti2ConnectionCommunicationError: ; 0x021F88C8
	ldr ip, _021F88D8 ; =gti2ConnectionError
	mov r1, #7
	mov r2, #2
	bx ip
	; .align 2, 0
_021F88D8: .word gti2ConnectionError
	arm_func_end gti2ConnectionCommunicationError

	arm_func_start gti2ConnectionMemoryError
gti2ConnectionMemoryError: ; 0x021F88DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl gti2SendClosed
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	mov r1, #1
	mov r2, #4
	bl gti2ConnectionError
	ldmia sp!, {r4, pc}
	arm_func_end gti2ConnectionMemoryError

	arm_func_start gti2HandleESN
gti2HandleESN: ; 0x021F8908
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	ldr r0, [r4, #0x60]
	mov r7, r1
	bl ArrayLength
	movs r5, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #0
	mov r6, #0
	ble _021F895C
_021F8934:
	ldr r0, [r4, #0x60]
	mov r1, r6
	bl ArrayNth
	ldrh r0, [r0, #8]
	mov r1, r7
	bl gti2SNDiff
	cmp r0, #0
	addlt r6, r6, #1
	cmplt r6, r5
	blt _021F8934
_021F895C:
	cmp r6, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	sub r6, r6, #1
	beq _021F898C
_021F8974:
	ldr r0, [r4, #0x60]
	mov r1, r6
	bl ArrayDeleteAt
	cmp r6, #0
	sub r6, r6, #1
	bne _021F8974
_021F898C:
	ldr r0, [r4, #0x60]
	bl ArrayLength
	movs r6, r0
	bne _021F89AC
	mov r0, #0
	str r0, [r4, #0x58]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F89AC:
	ldr r0, [r4, #0x60]
	mov r1, #0
	bl ArrayNth
	cmp r6, #0
	ldr r5, [r0, #0]
	mov r7, #0
	ble _021F89EC
_021F89C8:
	ldr r0, [r4, #0x60]
	mov r1, r7
	bl ArrayNth
	ldr r1, [r0, #0]
	add r7, r7, #1
	sub r1, r1, r5
	str r1, [r0, #0]
	cmp r7, r6
	blt _021F89C8
_021F89EC:
	mov r2, r5
	add r0, r4, #0x50
	mov r1, #0
	bl gti2BufferShorten
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end gti2HandleESN

	arm_func_start gti2HandleAppUnreliable
gti2HandleAppUnreliable: ; 0x021F8A04
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r0, [r6, #0xc]
	mov r5, r1
	cmp r0, #5
	cmpne r0, #6
	mov r4, r2
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [r6, #0x9c]
	bl ArrayLength
	cmp r0, #0
	beq _021F8A6C
	mov r1, #0
	mov r0, r6
	mov r2, r5
	mov r3, r4
	str r1, [sp]
	bl gti2ReceiveFilterCallback
	cmp r0, #0
	movne r0, #1
	add sp, sp, #4
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021F8A6C:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #0
	bl gti2ReceivedCallback
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end gti2HandleAppUnreliable

	arm_func_start gti2HandleAppReliable
gti2HandleAppReliable: ; 0x021F8A94
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	cmp r3, #5
	mov r4, r2
	cmpne r3, #6
	beq _021F8AD0
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	bne _021F8B34
	add sp, sp, #4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021F8AD0:
	ldr r0, [r6, #0x9c]
	bl ArrayLength
	cmp r0, #0
	beq _021F8B10
	mov ip, #1
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #0
	str ip, [sp]
	bl gti2ReceiveFilterCallback
	cmp r0, #0
	movne r0, #1
	add sp, sp, #4
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021F8B10:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	mov r3, #1
	bl gti2ReceivedCallback
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
_021F8B34:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end gti2HandleAppReliable

	arm_func_start gti2HandleClientChallenge
gti2HandleClientChallenge: ; 0x021F8B40
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x40
	mov r4, r0
	ldr r3, [r4, #0xc]
	cmp r3, #2
	beq _021F8B70
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x40
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021F8B70:
	cmp r2, #0x20
	bge _021F8B90
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x40
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021F8B90:
	add r0, sp, #0x20
	bl gti2GetResponse
	add r0, sp, #0
	bl gti2GetChallenge
	add r1, sp, #0
	add r0, r4, #0x68
	bl gti2GetResponse
	add r1, sp, #0x20
	add r2, sp, #0
	mov r0, r4
	bl gti2SendServerChallenge
	cmp r0, #0
	moveq r0, #0
	movne r0, #3
	strne r0, [r4, #0xc]
	movne r0, #1
	add sp, sp, #0x40
	ldmia sp!, {r4, pc}
	arm_func_end gti2HandleClientChallenge

	arm_func_start gti2HandleServerChallenge
gti2HandleServerChallenge: ; 0x021F8BD8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x20
	mov r5, r0
	ldr r3, [r5, #0xc]
	mov r4, r1
	cmp r3, #0
	beq _021F8C0C
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x20
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021F8C0C:
	cmp r2, #0x40
	bge _021F8C2C
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x20
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021F8C2C:
	mov r0, r4
	add r1, r5, #0x68
	bl gti2CheckResponse
	cmp r0, #0
	bne _021F8C5C
	mov r0, r5
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x20
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021F8C5C:
	add r0, sp, #0
	add r1, r4, #0x20
	bl gti2GetResponse
	ldr r2, [r5, #0x38]
	ldr r3, [r5, #0x3c]
	add r1, sp, #0
	mov r0, r5
	bl gti2SendClientResponse
	cmp r0, #0
	addeq sp, sp, #0x20
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0x38]
	cmp r0, #0
	beq _021F8CA4
	bl DWCi_GsFree
	mov r0, #0
	str r0, [r5, #0x38]
_021F8CA4:
	mov r0, #1
	str r0, [r5, #0xc]
	add sp, sp, #0x20
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end gti2HandleServerChallenge

	arm_func_start gti2HandleClientResponse
gti2HandleClientResponse: ; 0x021F8CB4
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #3
	beq _021F8CEC
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0xc
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021F8CEC:
	cmp r4, #0x20
	bge _021F8D0C
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0xc
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021F8D0C:
	mov r0, r5
	add r1, r6, #0x68
	bl gti2CheckResponse
	cmp r0, #0
	bne _021F8D3C
	mov r0, r6
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0xc
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, pc}
_021F8D3C:
	ldr r0, [r6, #8]
	ldr r0, [r0, #0x20]
	cmp r0, #0
	bne _021F8D78
	mov r0, r6
	bl gti2SendClosed
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl gti2ConnectionClosed
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, pc}
_021F8D78:
	mov r0, #4
	str r0, [r6, #0xc]
	bl current_time
	ldr r2, [r6, #0x8c]
	add r1, r5, #0x20
	sub r0, r0, r2
	stmia sp, {r0, r1}
	sub r0, r4, #0x20
	str r0, [sp, #8]
	ldrh r3, [r6, #4]
	ldr r0, [r6, #8]
	ldr r2, [r6, #0]
	mov r1, r6
	bl gti2ConnectAttemptCallback
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end gti2HandleClientResponse

	arm_func_start gti2HandleAccept
gti2HandleAccept: ; 0x021F8DC4
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #1
	beq _021F8DE8
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
_021F8DE8:
	mov r1, #0
	mov ip, #5
	mov r2, r1
	mov r3, r1
	str ip, [r0, #0xc]
	bl gti2ConnectedCallback
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end gti2HandleAccept

	arm_func_start gti2HandleReject
gti2HandleReject: ; 0x021F8E10
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r3, [r6, #0xc]
	mov r5, r1
	mov r4, r2
	cmp r3, #1
	beq _021F8E40
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021F8E40:
	bl gti2ConnectionClosed
	mov r0, r6
	bl gti2SendClosed
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r2, r5
	mov r3, r4
	mov r1, #2
	bl gti2ConnectedCallback
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end gti2HandleReject

	arm_func_start gti2HandleClose
gti2HandleClose: ; 0x021F8E7C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl gti2SendClosed
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0xc]
	mov r1, #2
	cmp r0, #6
	moveq r2, #0
	movne r2, #1
	mov r0, r4
	bl gti2ConnectionError
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, pc}
	arm_func_end gti2HandleClose

	arm_func_start gti2DeliverReliableMessage
gti2DeliverReliableMessage: ; 0x021F8EC0
	stmfd sp!, {r3, lr}
	ldrh ip, [r0, #0x66]
	cmp r1, #0
	add ip, ip, #1
	strh ip, [r0, #0x66]
	bne _021F8EF4
	mov r1, r2
	mov r2, r3
	bl gti2HandleAppReliable
	cmp r0, #0
	bne _021F8FB8
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F8EF4:
	cmp r1, #1
	bne _021F8F18
	mov r1, r2
	mov r2, r3
	bl gti2HandleClientChallenge
	cmp r0, #0
	bne _021F8FB8
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F8F18:
	cmp r1, #2
	bne _021F8F3C
	mov r1, r2
	mov r2, r3
	bl gti2HandleServerChallenge
	cmp r0, #0
	bne _021F8FB8
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F8F3C:
	cmp r1, #3
	bne _021F8F60
	mov r1, r2
	mov r2, r3
	bl gti2HandleClientResponse
	cmp r0, #0
	bne _021F8FB8
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F8F60:
	cmp r1, #4
	bne _021F8F7C
	bl gti2HandleAccept
	cmp r0, #0
	bne _021F8FB8
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F8F7C:
	cmp r1, #5
	bne _021F8FA0
	mov r1, r2
	mov r2, r3
	bl gti2HandleReject
	cmp r0, #0
	bne _021F8FB8
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F8FA0:
	cmp r1, #6
	bne _021F8FB8
	bl gti2HandleClose
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_021F8FB8:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end gti2DeliverReliableMessage

	arm_func_start gti2IncomingBufferMessageCompare
gti2IncomingBufferMessageCompare: ; 0x021F8FC0
	ldr ip, _021F8FD0 ; =gti2SNDiff
	ldrh r0, [r0, #0xc]
	ldrh r1, [r1, #0xc]
	bx ip
	; .align 2, 0
_021F8FD0: .word gti2SNDiff
	arm_func_end gti2IncomingBufferMessageCompare

	arm_func_start gti2BufferIncomingMessage
gti2BufferIncomingMessage: ; 0x021F8FD4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x10
	mov sb, r0
	ldr r0, [sb, #0x5c]
	mov r8, r1
	mov r7, r2
	mov r6, r3
	ldr r5, [sp, #0x34]
	bl ArrayLength
	mov r4, r0
	cmp r4, #0
	mov sl, #0
	ble _021F9050
_021F9008:
	ldr r0, [sb, #0x5c]
	mov r1, sl
	bl ArrayNth
	ldrh r0, [r0, #0xc]
	cmp r0, r7
	bne _021F9034
	mov r0, #0
	str r0, [r5, #0]
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F9034:
	mov r1, r7
	bl gti2SNDiff
	cmp r0, #0
	bgt _021F9050
	add sl, sl, #1
	cmp sl, r4
	blt _021F9008
_021F9050:
	add r0, sb, #0x44
	bl gti2GetBufferFreeSpace
	ldr r2, [sp, #0x30]
	cmp r0, r2
	movlt r0, #1
	addlt sp, sp, #0x10
	strlt r0, [r5]
	ldmltia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r0, [sb, #0x4c]
	add r1, sp, #0
	str r2, [sp, #4]
	str r8, [sp, #8]
	strh r7, [sp, #0xc]
	str r0, [sp]
	ldr r0, [sb, #0x5c]
	ldr r2, _021F9184 ; =gti2IncomingBufferMessageCompare
	bl ArrayInsertSorted
	ldr r0, [sb, #0x5c]
	bl ArrayLength
	add r1, r4, #1
	cmp r1, r0
	movne r0, #1
	addne sp, sp, #0x10
	strne r0, [r5]
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r2, [sp, #0x30]
	mov r1, r6
	add r0, sb, #0x44
	bl gti2BufferWriteData
	cmp r4, #0
	bne _021F90F8
	sub r0, r7, #1
	mov r2, r0, lsl #0x10
	ldrh r1, [sb, #0x66]
	mov r0, sb
	mov r2, r2, lsr #0x10
	bl gti2SendNack
	cmp r0, #0
	bne _021F9170
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F90F8:
	ldr r0, [sb, #0x5c]
	mov r1, r4
	bl ArrayNth
	ldrh r0, [r0, #0xc]
	cmp r0, r7
	bne _021F9170
	ldr r0, [sb, #0x5c]
	sub r1, r4, #1
	bl ArrayNth
	mov r4, r0
	ldrh r1, [r4, #0xc]
	mov r0, r7
	bl gti2SNDiff
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bls _021F9170
	ldrh r1, [r4, #0xc]
	sub r0, r7, #1
	mov r2, r0, lsl #0x10
	add r0, r1, #1
	mov r1, r0, lsl #0x10
	mov r0, sb
	mov r1, r1, lsr #0x10
	mov r2, r2, lsr #0x10
	bl gti2SendNack
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F9170:
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021F9184: .word gti2IncomingBufferMessageCompare
	arm_func_end gti2BufferIncomingMessage

	arm_func_start gti2RemoveHoldMessage
gti2RemoveHoldMessage: ; 0x021F9188
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	ldr r0, [sb, #0x5c]
	ldmia r1, {r4, r5}
	mov r1, r2
	mov r8, #0
	bl ArrayDeleteAt
	ldr r0, [sb, #0x5c]
	bl ArrayLength
	mov r6, r0
	cmp r6, #0
	mov r7, r8
	ble _021F91F8
_021F91BC:
	ldr r0, [sb, #0x5c]
	mov r1, r7
	bl ArrayNth
	ldr r1, [r0, #0]
	cmp r1, r4
	ble _021F91EC
	sub r1, r1, r5
	str r1, [r0, #0]
	ldr r0, [r0, #4]
	add r0, r1, r0
	cmp r8, r0
	movle r8, r0
_021F91EC:
	add r7, r7, #1
	cmp r7, r6
	blt _021F91BC
_021F91F8:
	mov r1, r4
	mov r2, r5
	add r0, sb, #0x44
	bl gti2BufferShorten
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end gti2RemoveHoldMessage

	arm_func_start gti2DeliverHoldMessages
gti2DeliverHoldMessages: ; 0x021F920C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
_021F9214:
	ldr r0, [r6, #0x5c]
	bl ArrayLength
	subs r5, r0, #1
	bmi _021F9284
_021F9224:
	ldr r0, [r6, #0x5c]
	mov r1, r5
	bl ArrayNth
	mov r4, r0
	ldrh r1, [r4, #0xc]
	ldrh r0, [r6, #0x66]
	cmp r1, r0
	bne _021F927C
	ldr ip, [r6, #0x44]
	ldr r1, [r4, #8]
	ldmia r4, {r2, r3}
	mov r0, r6
	add r2, ip, r2
	bl gti2DeliverReliableMessage
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r0, r6
	mov r1, r4
	mov r2, r5
	bl gti2RemoveHoldMessage
	b _021F9214
_021F927C:
	subs r5, r5, #1
	bpl _021F9224
_021F9284:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end gti2DeliverHoldMessages

	arm_func_start gti2SetPendingAck
gti2SetPendingAck: ; 0x021F928C
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x90]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, #1
	str r0, [r4, #0x90]
	bl current_time
	str r0, [r4, #0x94]
	ldmia sp!, {r4, pc}
	arm_func_end gti2SetPendingAck

	arm_func_start gti2HandleReliableMessage
gti2HandleReliableMessage: ; 0x021F92B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r6, r3
	mov r4, r0
	mov r8, r1
	mov r7, r2
	cmp r6, #7
	bge _021F92EC
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0xc
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021F92EC:
	mov r0, r7
	mov r1, #3
	bl gti2UShortFromBuffer
	mov r5, r0
	mov r0, r7
	mov r1, #5
	bl gti2UShortFromBuffer
	mov r1, r0
	mov r0, r4
	bl gti2HandleESN
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldrh r1, [r4, #0x66]
	cmp r5, r1
	bne _021F9378
	mov r0, r4
	bl gti2SetPendingAck
	mov r0, r4
	mov r1, r8
	add r2, r7, #7
	sub r3, r6, #7
	bl gti2DeliverReliableMessage
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	bl gti2DeliverHoldMessages
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0xc
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021F9378:
	mov r0, r5
	bl gti2SNDiff
	cmp r0, #0
	bge _021F939C
	mov r0, r4
	bl gti2SetPendingAck
	add sp, sp, #0xc
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021F939C:
	sub r0, r6, #7
	str r0, [sp]
	add ip, sp, #8
	mov r0, r4
	mov r1, r8
	mov r2, r5
	add r3, r7, #7
	str ip, [sp, #4]
	bl gti2BufferIncomingMessage
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _021F93F4
	mov r0, r4
	bl gti2ConnectionMemoryError
	cmp r0, #0
	addeq sp, sp, #0xc
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
_021F93F4:
	mov r0, #1
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end gti2HandleReliableMessage

	arm_func_start gti2HandleAck
gti2HandleAck: ; 0x021F9400
	stmfd sp!, {r4, lr}
	mov r4, r0
	cmp r2, #2
	beq _021F9424
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
_021F9424:
	mov r0, r1
	mov r1, #0
	bl gti2UShortFromBuffer
	mov r1, r0
	mov r0, r4
	bl gti2HandleESN
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end gti2HandleAck

	arm_func_start gti2HandleNack
gti2HandleNack: ; 0x021F944C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r1
	mov r4, r0
	mov r0, r7
	mov r1, #0
	mov r5, r2
	bl gti2UShortFromBuffer
	mov r6, r0
	cmp r5, #2
	moveq r7, r6
	beq _021F94AC
	cmp r5, #4
	bne _021F9494
	mov r0, r7
	mov r1, #2
	bl gti2UShortFromBuffer
	mov r7, r0
	b _021F94AC
_021F9494:
	mov r0, r4
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F94AC:
	ldr r0, [r4, #0x60]
	bl ArrayLength
	mov r8, r0
	cmp r8, #0
	mov sb, #0
	ble _021F9520
_021F94C4:
	ldr r0, [r4, #0x60]
	mov r1, sb
	bl ArrayNth
	mov r5, r0
	ldrh r0, [r5, #8]
	mov r1, r6
	bl gti2SNDiff
	cmp r0, #0
	blt _021F9514
	ldrh r0, [r5, #8]
	mov r1, r7
	bl gti2SNDiff
	cmp r0, #0
	bgt _021F9514
	mov r0, r4
	mov r1, r5
	bl gti2ResendMessage
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F9514:
	add sb, sb, #1
	cmp sb, r8
	blt _021F94C4
_021F9520:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end gti2HandleNack

	arm_func_start gti2HandlePing
gti2HandlePing: ; 0x021F9528
	ldr ip, _021F9530 ; =gti2SendPong
	bx ip
	; .align 2, 0
_021F9530: .word gti2SendPong
	arm_func_end gti2HandlePing

	arm_func_start gti2HandlePong
gti2HandlePong: ; 0x021F9534
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	mov r5, r1
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r2, #8
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, _021F95C4 ; =0x0221972C
	mov r0, r5
	mov r2, #4
	bl memcmp
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #4]
	ldrb r0, [r5, #5]
	add r2, sp, #0
	strb r1, [r2]
	strb r0, [r2, #1]
	ldrb r1, [r5, #6]
	ldrb r0, [r5, #7]
	strb r1, [r2, #2]
	strb r0, [r2, #3]
	bl current_time
	mov r2, r0
	ldr r1, [sp]
	mov r0, r4
	sub r1, r2, r1
	bl gti2PingCallback
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F95C4: .word Unk_ov4_0221972C
	arm_func_end gti2HandlePong

	arm_func_start gti2HandleClosed
gti2HandleClosed: ; 0x021F95C8
	stmfd sp!, {r3, lr}
	ldr r1, [r0, #0xc]
	cmp r1, #7
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
	cmp r1, #6
	moveq r2, #0
	movne r2, #1
	mov r1, #2
	bl gti2ConnectionError
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end gti2HandleClosed

	arm_func_start gti2HandleUnreliableMessage
gti2HandleUnreliableMessage: ; 0x021F9600
	stmfd sp!, {r3, lr}
	cmp r1, #0x64
	sub ip, r3, #3
	bne _021F962C
	add r1, r2, #3
	mov r2, ip
	bl gti2HandleAck
	cmp r0, #0
	bne _021F96B0
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F962C:
	cmp r1, #0x65
	bne _021F9650
	add r1, r2, #3
	mov r2, ip
	bl gti2HandleNack
	cmp r0, #0
	bne _021F96B0
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F9650:
	cmp r1, #0x66
	bne _021F9674
	mov r1, r2
	mov r2, r3
	bl gti2HandlePing
	cmp r0, #0
	bne _021F96B0
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F9674:
	cmp r1, #0x67
	bne _021F9698
	add r1, r2, #3
	mov r2, ip
	bl gti2HandlePong
	cmp r0, #0
	bne _021F96B0
	mov r0, #0
	ldmia sp!, {r3, pc}
_021F9698:
	cmp r1, #0x68
	bne _021F96B0
	bl gti2HandleClosed
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_021F96B0:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end gti2HandleUnreliableMessage

	arm_func_start gti2HandleMessage
gti2HandleMessage: ; 0x021F96B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x18
	ldr r5, [sp, #0x38]
	mov r6, r3
	mov r8, r1
	mov r7, r2
	mov r1, r6
	mov r2, r5
	mov sb, r0
	bl gti2SocketFindConnection
	str r0, [sp, #0x14]
	ldr r0, [sb, #0x2c]
	cmp r0, #0
	beq _021F9724
	mov r0, #0
	stmia sp, {r0, r8}
	str r7, [sp, #8]
	str r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	mov r0, sb
	mov r2, r6
	mov r3, r5
	bl gti2DumpCallback
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F9724:
	cmp r7, #2
	ble _021F9748
	ldr r1, _021F9964 ; =0x02219734
	mov r0, r8
	mov r2, #2
	bl memcmp
	cmp r0, #0
	moveq r4, #1
	beq _021F974C
_021F9748:
	mov r4, #0
_021F974C:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _021F9850
	add ip, sp, #0x10
	mov r0, sb
	mov r1, r6
	mov r2, r5
	mov r3, r8
	stmia sp, {r7, ip}
	bl gti2UnrecognizedMessageCallback
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addne sp, sp, #0x18
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r4, #0
	beq _021F97AC
	ldrb r0, [r8, #2]
	cmp r0, #1
	beq _021F97EC
_021F97AC:
	cmp r4, #0
	beq _021F97C0
	ldrb r0, [r8, #2]
	cmp r0, #0x68
	beq _021F97E0
_021F97C0:
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl gti2SendClosedOnSocket
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F97E0:
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F97EC:
	ldr r0, [sb, #0x20]
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	add r1, sp, #0x14
	mov r0, sb
	mov r2, r6
	mov r3, r5
	bl gti2NewIncomingConnection
	cmp r0, #0
	beq _021F9850
	cmp r0, #5
	beq _021F9844
	mov r0, sb
	mov r1, r6
	mov r2, r5
	bl gti2SendClosedOnSocket
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F9844:
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F9850:
	ldr r5, [sp, #0x14]
	ldr r0, [r5, #0xc]
	cmp r0, #7
	bne _021F9898
	cmp r4, #0
	beq _021F9874
	ldrb r0, [r8, #2]
	cmp r0, #0x68
	beq _021F988C
_021F9874:
	mov r0, r5
	bl gti2SendClosed
	cmp r0, #0
	addeq sp, sp, #0x18
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F988C:
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F9898:
	cmp r4, #0
	beq _021F98C8
	cmp r7, #4
	blt _021F98C8
	ldr r1, _021F9964 ; =0x02219734
	add r0, r8, #2
	mov r2, #2
	bl memcmp
	cmp r0, #0
	addeq r8, r8, #2
	subeq r7, r7, #2
	moveq r4, #0
_021F98C8:
	cmp r4, #0
	bne _021F98F4
	mov r0, r5
	mov r1, r8
	mov r2, r7
	bl gti2HandleAppUnreliable
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x18
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F98F4:
	ldrb r1, [r8, #2]
	cmp r1, #0
	bge _021F991C
	mov r0, r5
	bl gti2ConnectionCommunicationError
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x18
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F991C:
	cmp r1, #8
	mov r0, r5
	mov r2, r8
	bge _021F9948
	mov r3, r7
	bl gti2HandleReliableMessage
	cmp r0, #0
	movne r0, #1
	add sp, sp, #0x18
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021F9948:
	mov r3, r7
	bl gti2HandleUnreliableMessage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021F9964: .word Unk_ov4_02219734
	arm_func_end gti2HandleMessage

	arm_func_start gti2HandleConnectionReset
gti2HandleConnectionReset: ; 0x021F9968
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl gti2SocketFindConnection
	ldr r1, [r7, #0x2c]
	mov r4, r0
	cmp r1, #0
	beq _021F99CC
	mov r0, #1
	str r0, [sp]
	mov ip, #0
	str ip, [sp, #4]
	str ip, [sp, #8]
	mov r0, r7
	mov r1, r4
	mov r2, r6
	mov r3, r5
	str ip, [sp, #0xc]
	bl gti2DumpCallback
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021F99CC:
	cmp r4, #0
	addeq sp, sp, #0x10
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _021F9A3C
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _021F9A0C
	bl current_time
	ldr r2, [r4, #0x1c]
	ldr r1, [r4, #0x20]
	sub r0, r0, r2
	cmp r0, r1
	bhs _021F9A18
_021F9A0C:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F9A18:
	mov r0, r4
	mov r1, #6
	mov r2, #1
	bl gti2ConnectionError
	cmp r0, #0
	bne _021F9A5C
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F9A3C:
	mov r0, r4
	mov r1, #2
	mov r2, #1
	bl gti2ConnectionError
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021F9A5C:
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end gti2HandleConnectionReset

	arm_func_start gti2ReceiveMessages
gti2ReceiveMessages: ; 0x021F9A68
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x5f0
	mov sl, r0
	ldr r0, [sl]
	bl CanReceiveOnSocket
	cmp r0, #0
	beq _021F9B88
	mvn r5, #0xe
	sub r4, r5, #0x14
	add r6, r5, #0xe
	add r7, sp, #0x14
	mov sb, #8
	add r8, sp, #0xc
	add fp, sp, #8
_021F9AA0:
	str sb, [sp, #8]
	stmia sp, {r8, fp}
	ldr r0, [sl]
	ldr r2, _021F9B94 ; =0x000005DC
	mov r1, r7
	mov r3, #0
	bl recvfrom
	mov r2, r0
	cmp r2, r6
	bne _021F9B34
	ldr r0, [sl]
	bl GOAGetLastError
	cmp r0, r5
	bne _021F9B18
	ldrh ip, [sp, #0xe]
	ldr r1, [sp, #0x10]
	mov r0, sl
	mov r2, ip, asr #8
	and r3, r2, #0xff
	mov r2, ip, lsl #8
	and r2, r2, #0xff00
	orr r2, r3, r2
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	bl gti2HandleConnectionReset
	cmp r0, #0
	bne _021F9B78
	add sp, sp, #0x5f0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9B18:
	cmp r0, r4
	beq _021F9B78
	mov r0, sl
	bl gti2SocketError
	add sp, sp, #0x5f0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9B34:
	ldrh ip, [sp, #0xe]
	mov r0, sl
	mov r1, r7
	mov r3, ip, asr #8
	mov ip, ip, lsl #8
	and r3, r3, #0xff
	and ip, ip, #0xff00
	orr r3, r3, ip
	mov r3, r3, lsl #0x10
	mov r3, r3, lsr #0x10
	str r3, [sp]
	ldr r3, [sp, #0x10]
	bl gti2HandleMessage
	cmp r0, #0
	addeq sp, sp, #0x5f0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021F9B78:
	ldr r0, [sl]
	bl CanReceiveOnSocket
	cmp r0, #0
	bne _021F9AA0
_021F9B88:
	mov r0, #1
	add sp, sp, #0x5f0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021F9B94: .word 0x000005DC
	arm_func_end gti2ReceiveMessages

	arm_func_start gti2StoreOutgoingReliableMessageInfo
gti2StoreOutgoingReliableMessageInfo: ; 0x021F9B98
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	add r4, sp, #0
	mov r3, #0
	mov r5, r0
	str r3, [r4, #0]
	str r3, [r4, #4]
	str r3, [r4, #8]
	str r3, [r4, #0xc]
	ldr r0, [r5, #0x58]
	str r0, [sp]
	str r2, [sp, #4]
	strh r1, [sp, #8]
	bl current_time
	str r0, [sp, #0xc]
	ldr r0, [r5, #0x60]
	bl ArrayLength
	mov r4, r0
	ldr r0, [r5, #0x60]
	add r1, sp, #0
	bl ArrayAppend
	ldr r0, [r5, #0x60]
	bl ArrayLength
	add r1, r4, #1
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end gti2StoreOutgoingReliableMessageInfo

	arm_func_start gti2BeginReliableMessage
gti2BeginReliableMessage: ; 0x021F9C0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r2
	add r0, r7, #0x50
	mov r6, r1
	mov r4, r3
	bl gti2GetBufferFreeSpace
	cmp r0, r5
	bge _021F9C4C
	mov r0, r7
	bl gti2ConnectionMemoryError
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	strne r0, [r4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F9C4C:
	ldrh r1, [r7, #0x64]
	mov r0, r7
	mov r2, r5
	bl gti2StoreOutgoingReliableMessageInfo
	cmp r0, #0
	bne _021F9C80
	mov r0, r7
	bl gti2ConnectionMemoryError
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	strne r0, [r4]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F9C80:
	ldr r1, _021F9CCC ; =0x02219734
	add r0, r7, #0x50
	mov r2, #2
	bl gti2BufferWriteData
	add r0, r7, #0x50
	and r1, r6, #0xff
	bl gti2BufferWriteByte
	ldrh r1, [r7, #0x64]
	add r0, r7, #0x50
	add r2, r1, #1
	strh r2, [r7, #0x64]
	bl gti2BufferWriteUShort
	ldrh r1, [r7, #0x66]
	add r0, r7, #0x50
	bl gti2BufferWriteUShort
	mov r0, #0
	str r0, [r4, #0]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F9CCC: .word Unk_ov4_02219734
	arm_func_end gti2BeginReliableMessage

	arm_func_start gti2EndReliableMessage
gti2EndReliableMessage: ; 0x021F9CD0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0x60]
	bl ArrayLength
	mov r4, r0
	cmp r4, #0
	bgt _021F9D00
	ldr r0, _021F9D34 ; =0x02219738
	ldr r1, _021F9D38 ; =0x02219740
	ldr r2, _021F9D3C ; =0x02219714
	ldr r3, _021F9D40 ; =0x00000475
	bl __msl_assertion_failed
_021F9D00:
	ldr r0, [r5, #0x60]
	sub r1, r4, #1
	bl ArrayNth
	ldmia r0, {r1, r2}
	ldr r3, [r5, #0x50]
	mov r0, r5
	add r1, r3, r1
	bl gti2ConnectionSendData
	cmp r0, #0
	mov r0, #0
	strne r0, [r5, #0x90]
	movne r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F9D34: .word Unk_ov4_02219738
_021F9D38: .word Unk_ov4_02219740
_021F9D3C: .word Unk_ov4_02219714
_021F9D40: .word 0x00000475
	arm_func_end gti2EndReliableMessage

	arm_func_start gti2SendAppReliable
gti2SendAppReliable: ; 0x021F9D44
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	mov r5, r1
	add r3, sp, #0
	add r2, r4, #7
	mov r1, #0
	mov r6, r0
	bl gti2BeginReliableMessage
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x50
	bl gti2BufferWriteData
	mov r0, r6
	bl gti2EndReliableMessage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end gti2SendAppReliable

	arm_func_start gti2SendClientChallenge
gti2SendClientChallenge: ; 0x021F9DB8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	add r3, sp, #0
	mov r1, #1
	mov r2, #0x27
	mov r5, r0
	bl gti2BeginReliableMessage
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [sp]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r5, #0x50
	mov r2, #0x20
	bl gti2BufferWriteData
	mov r0, r5
	bl gti2EndReliableMessage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end gti2SendClientChallenge

	arm_func_start gti2SendServerChallenge
gti2SendServerChallenge: ; 0x021F9E18
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r1
	mov r4, r2
	add r3, sp, #0
	mov r1, #2
	mov r2, #0x47
	mov r6, r0
	bl gti2BeginReliableMessage
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r6, #0x50
	mov r2, #0x20
	bl gti2BufferWriteData
	mov r1, r4
	add r0, r6, #0x50
	mov r2, #0x20
	bl gti2BufferWriteData
	mov r0, r6
	bl gti2EndReliableMessage
	cmp r0, #0
	ldrne r1, [r6, #0x88]
	moveq r0, #0
	movne r0, #1
	strne r1, [r6, #0x8c]
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end gti2SendServerChallenge

	arm_func_start gti2SendClientResponse
gti2SendClientResponse: ; 0x021F9EA4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r3
	mov r6, r1
	mov r5, r2
	add r3, sp, #0
	add r2, r4, #0x27
	mov r1, #3
	mov r7, r0
	bl gti2BeginReliableMessage
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [sp]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r7, #0x50
	mov r2, #0x20
	bl gti2BufferWriteData
	mov r1, r5
	mov r2, r4
	add r0, r7, #0x50
	bl gti2BufferWriteData
	mov r0, r7
	bl gti2EndReliableMessage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end gti2SendClientResponse

	arm_func_start gti2SendAccept
gti2SendAccept: ; 0x021F9F1C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add r3, sp, #0
	mov r1, #4
	mov r2, #7
	mov r4, r0
	bl gti2BeginReliableMessage
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, pc}
	mov r0, r4
	bl gti2EndReliableMessage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end gti2SendAccept

	arm_func_start gti2SendReject
gti2SendReject: ; 0x021F9F78
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r4, r2
	mov r5, r1
	add r3, sp, #0
	add r2, r4, #7
	mov r1, #5
	mov r6, r0
	bl gti2BeginReliableMessage
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	mov r2, r4
	add r0, r6, #0x50
	bl gti2BufferWriteData
	mov r0, r6
	bl gti2EndReliableMessage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end gti2SendReject

	arm_func_start gti2SendClose
gti2SendClose: ; 0x021F9FEC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	add r3, sp, #0
	mov r1, #6
	mov r2, #7
	mov r4, r0
	bl gti2BeginReliableMessage
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, pc}
	mov r0, r4
	bl gti2EndReliableMessage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end gti2SendClose

	arm_func_start gti2SendKeepAlive
gti2SendKeepAlive: ; 0x021FA048
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r1, #7
	add r3, sp, #0
	mov r2, r1
	mov r4, r0
	bl gti2BeginReliableMessage
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [sp]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #1
	ldmneia sp!, {r3, r4, pc}
	mov r0, r4
	bl gti2EndReliableMessage
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end gti2SendKeepAlive

	arm_func_start gti2SendAppUnreliable
gti2SendAppUnreliable: ; 0x021FA0A4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r2
	mov sb, r0
	mov r8, r1
	cmp r7, #2
	blt _021FA0D4
	ldr r1, _021FA168 ; =0x02219734
	mov r0, r8
	mov r2, #2
	bl memcmp
	cmp r0, #0
	beq _021FA0F4
_021FA0D4:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl gti2ConnectionSendData
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_021FA0F4:
	add r6, r7, #2
	add r0, sb, #0x50
	bl gti2GetBufferFreeSpace
	cmp r0, r6
	movlt r0, #1
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, _021FA168 ; =0x02219734
	add r0, sb, #0x50
	ldr r5, [sb, #0x50]
	ldr r4, [sb, #0x58]
	mov r2, #2
	bl gti2BufferWriteData
	mov r1, r8
	mov r2, r7
	add r0, sb, #0x50
	bl gti2BufferWriteData
	mov r0, sb
	mov r2, r6
	add r1, r5, r4
	bl gti2ConnectionSendData
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r2, r6
	add r0, sb, #0x50
	mvn r1, #0
	bl gti2BufferShorten
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021FA168: .word Unk_ov4_02219734
	arm_func_end gti2SendAppUnreliable

	arm_func_start gti2SendAck
gti2SendAck: ; 0x021FA16C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _021FA1CC ; =0x02219734
	mov r4, r0
	ldrb r3, [r1]
	ldrb r2, [r1, #1]
	add r0, sp, #0
	mov r1, #0x64
	strb r1, [sp, #2]
	strb r3, [r0]
	strb r2, [r0, #1]
	ldrh r2, [r4, #0x66]
	mov r1, #3
	bl gti2UShortToBuffer
	add r1, sp, #0
	mov r0, r4
	mov r2, #5
	bl gti2ConnectionSendData
	cmp r0, #0
	mov r0, #0
	strne r0, [r4, #0x90]
	movne r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FA1CC: .word Unk_ov4_02219734
	arm_func_end gti2SendAck

	arm_func_start gti2SendNack
gti2SendNack: ; 0x021FA1D0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r3, _021FA258 ; =0x02219734
	mov r4, r1
	ldrb lr, [r3]
	ldrb ip, [r3, #1]
	mov r5, r0
	add r0, sp, #0
	mov r7, r2
	mov r3, #0x65
	mov r2, r4
	mov r6, #0
	mov r1, #3
	strb lr, [r0]
	strb ip, [r0, #1]
	strb r3, [sp, #2]
	bl gti2UShortToBuffer
	cmp r4, r7
	add r6, r6, #5
	beq _021FA234
	add r0, sp, #0
	mov r1, r6
	mov r2, r7
	bl gti2UShortToBuffer
	add r6, r6, #2
_021FA234:
	add r1, sp, #0
	mov r0, r5
	mov r2, r6
	bl gti2ConnectionSendData
	cmp r0, #0
	moveq r0, #0
	movne r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021FA258: .word Unk_ov4_02219734
	arm_func_end gti2SendNack

	arm_func_start gti2SendPong
gti2SendPong: ; 0x021FA25C
	ldr ip, _021FA26C ; =gti2ConnectionSendData
	mov r3, #0x67
	strb r3, [r1, #2]
	bx ip
	; .align 2, 0
_021FA26C: .word gti2ConnectionSendData
	arm_func_end gti2SendPong

	arm_func_start gti2SendClosed
gti2SendClosed: ; 0x021FA270
	ldr ip, _021FA288 ; =gti2SendClosedOnSocket
	mov r1, r0
	ldrh r2, [r1, #4]
	ldr r0, [r1, #8]
	ldr r1, [r1, #0]
	bx ip
	; .align 2, 0
_021FA288: .word gti2SendClosedOnSocket
	arm_func_end gti2SendClosed

	arm_func_start gti2SendClosedOnSocket
gti2SendClosedOnSocket: ; 0x021FA28C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr lr, _021FA2D4 ; =0x02219734
	mov ip, #0x68
	ldrb r4, [lr]
	ldrb lr, [lr, #1]
	add r3, sp, #4
	strb ip, [sp, #6]
	strb r4, [r3]
	strb lr, [r3, #1]
	mov ip, #3
	str ip, [sp]
	bl gti2SocketSend
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021FA2D4: .word Unk_ov4_02219734
	arm_func_end gti2SendClosedOnSocket

	arm_func_start gti2ResendMessage
gti2ResendMessage: ; 0x021FA2D8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	ldr r1, [r5, #0]
	ldrh r2, [r4, #0x66]
	ldr r0, [r4, #0x50]
	add r1, r1, #5
	bl gti2UShortToBuffer
	ldr r3, [r4, #0x50]
	ldmia r5, {r1, r2}
	mov r0, r4
	add r1, r3, r1
	bl gti2ConnectionSendData
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0x88]
	str r0, [r5, #0xc]
	ldr r0, [r5, #0]
	ldr r1, [r4, #0x50]
	add r0, r0, #2
	ldrb r0, [r1, r0]
	cmp r0, #2
	ldreq r0, [r4, #0x88]
	streq r0, [r4, #0x8c]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end gti2ResendMessage

	arm_func_start gti2Send
gti2Send: ; 0x021FA344
	stmfd sp!, {r3, lr}
	cmp r3, #0
	beq _021FA358
	bl gti2SendAppReliable
	ldmia sp!, {r3, pc}
_021FA358:
	bl gti2SendAppUnreliable
	ldmia sp!, {r3, pc}
	arm_func_end gti2Send

	.data


	.global Unk_ov4_02219714
Unk_ov4_02219714: ; 0x02219714
	.ascii "gti2EndReliableMessage"
	.space 0x2

	.global Unk_ov4_0221972C
Unk_ov4_0221972C: ; 0x0221972C
	.ascii "time"
	.space 0x4

	.global Unk_ov4_02219734
Unk_ov4_02219734: ; 0x02219734
	.byte 0xFE, 0xFE, 0x0, 0x0

	.global Unk_ov4_02219738
Unk_ov4_02219738: ; 0x02219738
	.asciz "len > 0"

	.global Unk_ov4_02219740
Unk_ov4_02219740: ; 0x02219740
	.ascii "gt2Message.c"
	.space 0x4

