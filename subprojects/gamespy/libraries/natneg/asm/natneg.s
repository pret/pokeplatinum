	.include "macros/function.inc"
	.include "include/natneg.inc"

	.extern __GSIACResult

	.text


	arm_func_start FindNegotiatorForCookie
FindNegotiatorForCookie: ; 0x021FAE80
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _021FAEE4 ; =0x0221B3E4
	mov r6, r0
	ldr r0, [r1, #0x10]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r5, #0
	bl ArrayLength
	cmp r0, #0
	ble _021FAEDC
	ldr r4, _021FAEE4 ; =0x0221B3E4
_021FAEB0:
	ldr r0, [r4, #0x10]
	mov r1, r5
	bl ArrayNth
	ldr r1, [r0, #8]
	cmp r1, r6
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0x10]
	add r5, r5, #1
	bl ArrayLength
	cmp r5, r0
	blt _021FAEB0
_021FAEDC:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FAEE4: .word Matchup2Hostname
	arm_func_end FindNegotiatorForCookie

	arm_func_start NegotiatorFree
NegotiatorFree: ; 0x021FAEE8
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	mvn r1, #0
	cmp r0, r1
	beq _021FAF04
	bl closesocket
_021FAF04:
	mvn r0, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end NegotiatorFree

	arm_func_start AddNegotiator
AddNegotiator: ; 0x021FAF18
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x40
	mov r0, #0
	add r3, sp, #0
	mov r1, r0
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r2, _021FAFA8 ; =0x0221B3E4
	stmia r3!, {r0, r1}
	ldr r2, [r2, #0x10]
	stmia r3, {r0, r1}
	cmp r2, #0
	bne _021FAF74
	ldr r2, _021FAFAC ; =NegotiatorFree
	mov r0, #0x40
	mov r1, #4
	bl ArrayNew
	ldr r1, _021FAFA8 ; =0x0221B3E4
	str r0, [r1, #0x10]
_021FAF74:
	ldr r0, _021FAFA8 ; =0x0221B3E4
	add r1, sp, #0
	ldr r0, [r0, #0x10]
	bl ArrayAppend
	ldr r0, _021FAFA8 ; =0x0221B3E4
	ldr r0, [r0, #0x10]
	bl ArrayLength
	ldr r2, _021FAFA8 ; =0x0221B3E4
	sub r1, r0, #1
	ldr r0, [r2, #0x10]
	bl ArrayNth
	add sp, sp, #0x40
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021FAFA8: .word Matchup2Hostname
_021FAFAC: .word NegotiatorFree
	arm_func_end AddNegotiator

	arm_func_start RemoveNegotiator
RemoveNegotiator: ; 0x021FAFB0
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _021FB014 ; =0x0221B3E4
	mov r6, r0
	ldr r0, [r1, #0x10]
	mov r5, #0
	bl ArrayLength
	cmp r0, #0
	ldmleia sp!, {r4, r5, r6, pc}
	ldr r4, _021FB014 ; =0x0221B3E4
_021FAFD4:
	ldr r0, [r4, #0x10]
	mov r1, r5
	bl ArrayNth
	cmp r6, r0
	bne _021FAFFC
	ldr r0, _021FB014 ; =0x0221B3E4
	mov r1, r5
	ldr r0, [r0, #0x10]
	bl ArrayRemoveAt
	ldmia sp!, {r4, r5, r6, pc}
_021FAFFC:
	ldr r0, [r4, #0x10]
	add r5, r5, #1
	bl ArrayLength
	cmp r5, r0
	blt _021FAFD4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FB014: .word Matchup2Hostname
	arm_func_end RemoveNegotiator

	arm_func_start NNFreeNegotiateList
NNFreeNegotiateList: ; 0x021FB018
	stmfd sp!, {r3, lr}
	ldr r0, _021FB040 ; =0x0221B3E4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ArrayFree
	ldr r0, _021FB040 ; =0x0221B3E4
	mov r1, #0
	str r1, [r0, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021FB040: .word Matchup2Hostname
	arm_func_end NNFreeNegotiateList

	arm_func_start CheckMagic
CheckMagic: ; 0x021FB044
	stmfd sp!, {r3, lr}
	ldr r1, _021FB064 ; =0x022197A8
	mov r2, #6
	bl memcmp
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021FB064: .word NNMagicData
	arm_func_end CheckMagic

	arm_func_start SendPacket
SendPacket: ; 0x021FB068
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x10
	mov ip, r2, asr #8
	mov r2, r2, lsl #8
	str r1, [sp, #0xc]
	mov r1, r3
	and r3, ip, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	mov lr, #2
	strh r2, [sp, #0xa]
	add r3, sp, #8
	strb lr, [sp, #9]
	str r3, [sp]
	mov ip, #8
	ldr r2, [sp, #0x18]
	mov r3, #0
	str ip, [sp, #4]
	bl sendto
	add sp, sp, #0x10
	ldmia sp!, {r3, pc}
	arm_func_end SendPacket

	arm_func_start GetLocalIP
GetLocalIP: ; 0x021FB0BC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, #0
	bl getlocalhost
	movs r6, r0
	moveq r0, r7
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _021FB11C ; =0x0100007F
	mov r5, r7
_021FB0DC:
	ldr r0, [r6, #0xc]
	ldr r0, [r0, r5, lsl #2]
	cmp r0, #0
	beq _021FB114
	ldr r1, [r0, #0]
	cmp r1, r4
	beq _021FB10C
	mov r7, r1
	bl IsPrivateIP
	cmp r0, #0
	movne r0, r7
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
_021FB10C:
	add r5, r5, #1
	b _021FB0DC
_021FB114:
	mov r0, r7
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021FB11C: .word 0x0100007F
	arm_func_end GetLocalIP

	arm_func_start GetLocalPort
GetLocalPort: ; 0x021FB120
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r3, #8
	add r1, sp, #4
	add r2, sp, #0
	str r3, [sp]
	bl getsockname
	mvn r1, #0
	cmp r0, r1
	moveq r0, #0
	ldrneh r0, [sp, #6]
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end GetLocalPort

	arm_func_start SendInitPackets
SendInitPackets: ; 0x021FB154
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x5c
	ldr r2, _021FB38C ; =0x022197A8
	mov r1, #0
	ldrb lr, [r2]
	ldrb ip, [r2, #1]
	add r5, sp, #4
	ldrb r8, [r2, #2]
	ldrb r7, [r2, #3]
	ldrb r4, [r2, #4]
	ldrb r3, [r2, #5]
	mov r2, #2
	mov r6, r0
	strb lr, [r5]
	strb ip, [r5, #1]
	strb r8, [r5, #2]
	strb r7, [r5, #3]
	strb r4, [r5, #4]
	strb r3, [r5, #5]
	strb r1, [r5, #7]
	strb r2, [r5, #6]
	ldr r2, [r6, #0xc]
	sub r0, r1, #1
	strb r2, [r5, #0xd]
	ldr r7, [r6, #8]
	mov r3, r7, lsr #0x18
	mov r2, r7, lsr #8
	mov r4, r7, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	mov r7, r7, lsl #0x18
	orr r2, r3, r2
	and r4, r4, #0xff0000
	and r3, r7, #0xff000000
	orr r2, r4, r2
	orr r2, r3, r2
	str r2, [r5, #8]
	ldr r2, [r6, #4]
	cmp r2, r0
	movne r1, #1
	strb r1, [r5, #0xe]
	bl GetLocalIP
	mov r7, r0
	bl GetLocalIP
	mov r8, r0
	bl GetLocalIP
	mov r4, r0
	bl GetLocalIP
	mov r2, #0
	mov r1, r7, lsl #0x18
	and r7, r1, #0xff000000
	mov r1, r8, lsl #8
	mov r0, r0, lsr #8
	and r3, r1, #0xff0000
	mov r1, r4, lsr #0x18
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	orr r0, r3, r0
	orr r3, r7, r0
	mov r1, r3, lsr #0x18
	strb r1, [sp, #0x13]
	mov r1, r3, lsr #8
	mov r0, r3, lsr #0x10
	strb r1, [sp, #0x15]
	strb r0, [sp, #0x14]
	ldr r1, _021FB390 ; =0x0221AEEC
	add r0, sp, #0x19
	strb r3, [sp, #0x16]
	strb r2, [sp, #0x17]
	strb r2, [sp, #0x18]
	bl strcpy
	ldr r0, _021FB390 ; =0x0221AEEC
	bl strlen
	ldrb r1, [r5, #0xe]
	add r4, r0, #0x16
	cmp r1, #0
	beq _021FB2BC
	ldr r0, [r6, #0x14]
	cmp r0, #0
	bne _021FB2BC
	mov r0, #0
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _021FB394 ; =0x0221B3E4
	ldr r0, [r6, #4]
	ldr r1, [r1, #0xc]
	ldr r2, _021FB398 ; =0x00006CFD
	mov r3, r5
	bl SendPacket
_021FB2BC:
	ldr r0, [r6, #0x18]
	cmp r0, #0
	bne _021FB2EC
	mov r0, #1
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _021FB394 ; =0x0221B3E4
	ldr r0, [r6, #0]
	ldr r1, [r1, #0xc]
	ldr r2, _021FB398 ; =0x00006CFD
	mov r3, r5
	bl SendPacket
_021FB2EC:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	ldrne r8, [r6, #4]
	ldreq r8, [r6]
	cmp r0, #0
	ldrne r0, [r6, #4]
	ldreq r0, [r6]
	bl GetLocalPort
	mov r7, r0
	mov r0, r8
	bl GetLocalPort
	mov r1, r7, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r1, r0, lsr #0x10
	mov r0, r1, asr #8
	strb r1, [sp, #0x18]
	strb r0, [sp, #0x17]
	ldr r0, [r6, #0x1c]
	cmp r0, #0
	bne _021FB370
	mov r0, #2
	strb r0, [r5, #0xc]
	str r4, [sp]
	ldr r1, _021FB394 ; =0x0221B3E4
	ldr r0, [r6, #0]
	ldr r1, [r1, #8]
	ldr r2, _021FB398 ; =0x00006CFD
	mov r3, r5
	bl SendPacket
_021FB370:
	bl current_time
	add r0, r0, #0x1f4
	str r0, [r6, #0x28]
	mov r0, #0x1e
	str r0, [r6, #0x24]
	add sp, sp, #0x5c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021FB38C: .word NNMagicData
_021FB390: .word 0x0221AEEC
_021FB394: .word Matchup2Hostname
_021FB398: .word 0x00006CFD
	arm_func_end SendInitPackets

	arm_func_start SendPingPacket
SendPingPacket: ; 0x021FB39C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	ldr r1, _021FB4B8 ; =0x022197A8
	mov r2, #2
	ldrb r7, [r1]
	ldrb r6, [r1, #1]
	add r8, sp, #4
	ldrb r5, [r1, #2]
	ldrb lr, [r1, #3]
	ldrb ip, [r1, #4]
	ldrb r3, [r1, #5]
	mov r1, #7
	mov r4, r0
	strb r7, [r8]
	strb r6, [r8, #1]
	strb r5, [r8, #2]
	strb lr, [r8, #3]
	strb ip, [r8, #4]
	strb r2, [sp, #0xa]
	strb r1, [sp, #0xb]
	strb r3, [r8, #5]
	ldr r3, [r4, #8]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x2c]
	add r3, sp, #4
	str r0, [sp, #0x10]
	ldrh r0, [r4, #0x30]
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	strh r0, [sp, #0x14]
	ldrb r0, [r4, #0x32]
	mvn r1, #0
	strb r0, [sp, #0x16]
	ldr r0, [r4, #0x10]
	cmp r0, #2
	movne r0, #1
	moveq r0, #0
	strb r0, [sp, #0x17]
	ldr r0, [r4, #4]
	cmp r0, r1
	ldreq r0, [r4]
	mov r1, #0x14
	str r1, [sp]
	ldrh r2, [r4, #0x30]
	ldr r1, [r4, #0x2c]
	bl SendPacket
	bl current_time
	add r0, r0, #0x2bc
	str r0, [r4, #0x28]
	mov r0, #0xc
	str r0, [r4, #0x24]
	ldrb r0, [r4, #0x32]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r4, #0x33]
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021FB4B8: .word NNMagicData
	arm_func_end SendPingPacket

	arm_func_start NameToIp
NameToIp: ; 0x021FB4BC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl inet_addr
	mvn r1, #0
	cmp r0, r1
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl SOC_GetHostByName
	cmp r0, #0
	moveq r0, #0
	ldrne r0, [r0, #0xc]
	ldrne r0, [r0]
	ldrne r0, [r0]
	ldmia sp!, {r4, pc}
	arm_func_end NameToIp

	arm_func_start ResolveServer
ResolveServer: ; 0x021FB4F4
	stmdb sp!, {lr}
	sub sp, sp, #0x84
	cmp r0, #0
	bne _021FB520
	ldr r2, _021FB52C ; =0x022197B0
	str r1, [sp]
	ldr r3, _021FB530 ; =0x0221AEEC
	add r0, sp, #4
	mov r1, #0x80
	bl snprintf
	add r0, sp, #4
_021FB520:
	bl NameToIp
	add sp, sp, #0x84
	ldmia sp!, {pc}
	; .align 2, 0
_021FB52C: .word Unk_ov4_022197B0
_021FB530: .word 0x0221AEEC
	arm_func_end ResolveServer

	arm_func_start ResolveServers
ResolveServers: ; 0x021FB534
	stmfd sp!, {r3, lr}
	ldr r0, _021FB5A0 ; =0x0221B3E4
	ldr r1, [r0, #0xc]
	cmp r1, #0
	bne _021FB55C
	ldr r0, [r0, #4]
	ldr r1, _021FB5A4 ; =0x022197B8
	bl ResolveServer
	ldr r1, _021FB5A0 ; =0x0221B3E4
	str r0, [r1, #0xc]
_021FB55C:
	ldr r0, _021FB5A0 ; =0x0221B3E4
	ldr r1, [r0, #8]
	cmp r1, #0
	bne _021FB580
	ldr r0, [r0, #0]
	ldr r1, _021FB5A8 ; =0x022197D4
	bl ResolveServer
	ldr r1, _021FB5A0 ; =0x0221B3E4
	str r0, [r1, #8]
_021FB580:
	ldr r0, _021FB5A0 ; =0x0221B3E4
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021FB5A0: .word Matchup2Hostname
_021FB5A4: .word Unk_ov4_022197B8
_021FB5A8: .word Unk_ov4_022197D4
	arm_func_end ResolveServers

	arm_func_start NNBeginNegotiationWithSocket
NNBeginNegotiationWithSocket: ; 0x021FB5AC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr ip, _021FB670 ; =0x0221AE50
	mov r8, r0
	ldr r0, [ip]
	mov r7, r1
	cmp r0, #1
	mov r6, r2
	mov r5, r3
	movne r0, #2
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	bl ResolveServers
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	bl AddNegotiator
	movs r4, r0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	str r8, [r4, #4]
	str r6, [r4, #0xc]
	str r7, [r4, #8]
	ldr r1, [sp, #0x18]
	str r5, [r4, #0x34]
	ldr r2, [sp, #0x1c]
	str r1, [r4, #0x38]
	mov r0, #2
	str r2, [r4, #0x3c]
	mov r1, r0
	mov r2, #0
	bl socket
	mov r2, #0
	str r0, [r4, #0]
	str r2, [r4, #0x20]
	strb r2, [r4, #0x32]
	strb r2, [r4, #0x33]
	str r2, [r4, #0x2c]
	strh r2, [r4, #0x30]
	str r2, [r4, #0x24]
	ldr r1, [r4, #0]
	sub r0, r2, #1
	cmp r1, r0
	mov r0, r4
	bne _021FB664
	bl RemoveNegotiator
	mov r0, #2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021FB664:
	bl SendInitPackets
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021FB670: .word __GSIACResult
	arm_func_end NNBeginNegotiationWithSocket

	arm_func_start NNCancel
NNCancel: ; 0x021FB674
	stmfd sp!, {r4, lr}
	bl FindNegotiatorForCookie
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #0]
	mvn r1, #0
	cmp r0, r1
	beq _021FB698
	bl closesocket
_021FB698:
	mvn r0, #0
	str r0, [r4, #0]
	mov r0, #4
	str r0, [r4, #0x10]
	ldmia sp!, {r4, pc}
	arm_func_end NNCancel

	arm_func_start NegotiateThink
NegotiateThink: ; 0x021FB6AC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x1c
	mov r2, #8
	mov sb, r0
	str r2, [sp, #0x10]
	ldr r1, [sb, #0x10]
	cmp r1, #4
	bne _021FB6D8
	bl RemoveNegotiator
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_021FB6D8:
	ldr r0, [sb]
	sub r1, r2, #9
	cmp r0, r1
	beq _021FB754
	ldr r6, _021FB898 ; =0x0221B3F8
	add r8, sp, #0x14
	add r7, sp, #0x10
	mov r5, #0x200
	mov r4, #0
	mvn sl, #0
_021FB700:
	bl CanReceiveOnSocket
	cmp r0, #0
	beq _021FB754
	str r8, [sp]
	str r7, [sp, #4]
	ldr r0, [sb]
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl recvfrom
	mov r1, r0
	cmp r1, sl
	beq _021FB754
	mov r0, r6
	mov r2, r8
	bl NNProcessData
	ldr r0, [sb, #0x10]
	cmp r0, #4
	ldrne r0, [sb]
	cmpne r0, sl
	bne _021FB700
_021FB754:
	ldr r0, [sb, #0x10]
	cmp r0, #0
	cmpne r0, #2
	bne _021FB7CC
	bl current_time
	ldr r1, [sb, #0x28]
	cmp r0, r1
	bls _021FB7CC
	ldr r1, [sb, #0x20]
	ldr r0, [sb, #0x24]
	cmp r1, r0
	ble _021FB7A8
	mov r0, #2
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	sub r1, r0, #3
	mov r2, #0
	blx r4
	ldr r0, [sb, #8]
	bl NNCancel
	b _021FB7CC
_021FB7A8:
	add r0, r1, #1
	str r0, [sb, #0x20]
	ldr r0, [sb, #0x10]
	cmp r0, #0
	mov r0, sb
	bne _021FB7C8
	bl SendInitPackets
	b _021FB7CC
_021FB7C8:
	bl SendPingPacket
_021FB7CC:
	ldr r0, [sb, #0x10]
	cmp r0, #3
	bne _021FB84C
	bl current_time
	ldr r1, [sb, #0x28]
	cmp r0, r1
	bls _021FB84C
	ldr r1, [sb, #4]
	mvn r0, #0
	cmp r1, r0
	bne _021FB844
	mov r0, #2
	strb r0, [sp, #9]
	ldrh r1, [sb, #0x30]
	add r2, sp, #8
	mov r0, #0
	mov r3, r1, asr #8
	mov r1, r1, lsl #8
	and r3, r3, #0xff
	and r1, r1, #0xff00
	orr r1, r3, r1
	strh r1, [sp, #0xa]
	ldr r1, [sb, #0x2c]
	str r1, [sp, #0xc]
	ldr r1, [sb]
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	blx r4
	mvn r0, #0
	str r0, [sb]
_021FB844:
	ldr r0, [sb, #8]
	bl NNCancel
_021FB84C:
	ldr r0, [sb, #0x10]
	cmp r0, #1
	addne sp, sp, #0x1c
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	bl current_time
	ldr r1, [sb, #0x28]
	cmp r0, r1
	addls sp, sp, #0x1c
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	mov r0, #1
	ldr r3, [sb, #0x3c]
	ldr r4, [sb, #0x38]
	sub r1, r0, #2
	mov r2, #0
	blx r4
	ldr r0, [sb, #8]
	bl NNCancel
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021FB898: .word Unk_ov4_0221B3F8
	arm_func_end NegotiateThink

	arm_func_start NNThink
NNThink: ; 0x021FB89C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _021FB8DC ; =0x0221B3E4
	ldr r0, [r0, #0x10]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ArrayLength
	subs r5, r0, #1
	ldmmiia sp!, {r3, r4, r5, pc}
	ldr r4, _021FB8DC ; =0x0221B3E4
_021FB8C0:
	ldr r0, [r4, #0x10]
	mov r1, r5
	bl ArrayNth
	bl NegotiateThink
	subs r5, r5, #1
	bpl _021FB8C0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FB8DC: .word Matchup2Hostname
	arm_func_end NNThink

	arm_func_start SendConnectAck
SendConnectAck: ; 0x021FB8E0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x1c
	ldr r2, _021FB9A8 ; =0x022197A8
	mov r4, #2
	ldrb r8, [r2]
	ldrb r7, [r2, #1]
	add r3, sp, #4
	ldrb r6, [r2, #2]
	ldrb lr, [r2, #3]
	ldrb ip, [r2, #4]
	ldrb r5, [r2, #5]
	mov r2, #6
	strb r2, [sp, #0xb]
	strb r8, [r3]
	strb r7, [r3, #1]
	strb r6, [r3, #2]
	strb lr, [r3, #3]
	strb ip, [r3, #4]
	strb r5, [r3, #5]
	strb r4, [sp, #0xa]
	ldr r4, [r0, #0xc]
	mov r2, #0x15
	strb r4, [sp, #0x11]
	ldr r5, [r0, #8]
	mov lr, r5, lsr #0x18
	mov ip, r5, lsr #8
	mov r4, r5, lsl #8
	mov r5, r5, lsl #0x18
	and lr, lr, #0xff
	and ip, ip, #0xff00
	and r4, r4, #0xff0000
	orr ip, lr, ip
	and r5, r5, #0xff000000
	orr r4, r4, ip
	orr r4, r5, r4
	str r4, [sp, #0xc]
	ldrh lr, [r1, #2]
	str r2, [sp]
	mov ip, lr, asr #8
	mov r2, lr, lsl #8
	and ip, ip, #0xff
	and r2, r2, #0xff00
	orr r2, ip, r2
	mov r2, r2, lsl #0x10
	ldr r0, [r0, #0]
	ldr r1, [r1, #4]
	mov r2, r2, lsr #0x10
	bl SendPacket
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021FB9A8: .word NNMagicData
	arm_func_end SendConnectAck

	arm_func_start ProcessConnectPacket
ProcessConnectPacket: ; 0x021FB9AC
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldrb r1, [r5, #0x13]
	mov r4, r0
	cmp r1, #0
	bne _021FB9CC
	mov r1, r2
	bl SendConnectAck
_021FB9CC:
	ldr r0, [r4, #0x10]
	cmp r0, #2
	ldmgeia sp!, {r3, r4, r5, pc}
	ldrb r1, [r5, #0x13]
	cmp r1, #0
	beq _021FBA1C
	mov r0, #3
	cmp r1, #1
	moveq r0, #1
	beq _021FB9FC
	cmp r1, #2
	moveq r0, #2
_021FB9FC:
	ldr r3, [r4, #0x3c]
	ldr ip, [r4, #0x38]
	mvn r1, #0
	mov r2, #0
	blx ip
	ldr r0, [r4, #8]
	bl NNCancel
	ldmia sp!, {r3, r4, r5, pc}
_021FBA1C:
	ldr r1, [r5, #0xc]
	mov r0, #2
	str r1, [r4, #0x2c]
	ldrh r2, [r5, #0x10]
	mov r1, #0
	mov r3, r2, asr #8
	mov r2, r2, lsl #8
	and r3, r3, #0xff
	and r2, r2, #0xff00
	orr r2, r3, r2
	strh r2, [r4, #0x30]
	str r1, [r4, #0x20]
	str r0, [r4, #0x10]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x34]
	blx r2
	mov r0, r4
	bl SendPingPacket
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ProcessConnectPacket

	arm_func_start ProcessPingPacket
ProcessPingPacket: ; 0x021FBA68
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #0x10]
	mov r4, r2
	cmp r3, #2
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r3, [r4, #4]
	mov r2, #1
	str r3, [r5, #0x2c]
	ldrh r3, [r4, #2]
	mov ip, r3, asr #8
	mov r3, r3, lsl #8
	and ip, ip, #0xff
	and r3, r3, #0xff00
	orr r3, ip, r3
	strh r3, [r5, #0x30]
	strb r2, [r5, #0x32]
	ldrb r2, [r1, #0x12]
	cmp r2, #0
	bne _021FBAC0
	bl SendPingPacket
	ldmia sp!, {r3, r4, r5, pc}
_021FBAC0:
	ldr r2, [r5, #0x10]
	cmp r2, #2
	bne _021FBB1C
	ldrb r1, [r5, #0x33]
	cmp r1, #0
	bne _021FBADC
	bl SendPingPacket
_021FBADC:
	mov r0, #3
	str r0, [r5, #0x10]
	bl current_time
	add r0, r0, #0x388
	add r0, r0, #0x1000
	str r0, [r5, #0x28]
	ldr r1, [r5, #4]
	mvn r0, #0
	cmp r1, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, [r5, #0x3c]
	ldr r5, [r5, #0x38]
	mov r2, r4
	mov r0, #0
	blx r5
	ldmia sp!, {r3, r4, r5, pc}
_021FBB1C:
	ldrb r1, [r1, #0x13]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl SendPingPacket
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ProcessPingPacket

	arm_func_start ProcessInitPacket
ProcessInitPacket: ; 0x021FBB30
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, r1
	ldrb r1, [r3, #7]
	mov r4, r0
	cmp r1, #1
	beq _021FBB5C
	cmp r1, #2
	beq _021FBBF0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_021FBB5C:
	ldrb r0, [r3, #0xc]
	cmp r0, #2
	addhi sp, sp, #4
	ldmhiia sp!, {r3, r4, pc}
	add r0, r4, r0, lsl #2
	mov r2, #1
	str r2, [r0, #0x14]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	addne sp, sp, #4
	ldmneia sp!, {r3, r4, pc}
	ldr r0, [r4, #0x18]
	cmp r0, #0
	ldrne r0, [r4, #0x1c]
	cmpne r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
	ldr r1, [r4, #4]
	sub r0, r2, #2
	cmp r1, r0
	beq _021FBBC0
	ldr r0, [r4, #0x14]
	cmp r0, #0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, pc}
_021FBBC0:
	mov r0, #1
	str r0, [r4, #0x10]
	bl current_time
	add r0, r0, #0x710
	add r0, r0, #0x2000
	str r0, [r4, #0x28]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x3c]
	ldr r2, [r4, #0x34]
	blx r2
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
_021FBBF0:
	mov r0, #3
	strb r0, [r3, #7]
	ldrh r0, [r2, #2]
	mov ip, #0x15
	mov r1, r0, asr #8
	mov r0, r0, lsl #8
	str ip, [sp]
	and r1, r1, #0xff
	and r0, r0, #0xff00
	orr r0, r1, r0
	mov ip, r0, lsl #0x10
	ldr r1, [r2, #4]
	ldr r0, [r4, #0]
	mov r2, ip, lsr #0x10
	bl SendPacket
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ProcessInitPacket

	arm_func_start NNProcessData
NNProcessData: ; 0x021FBC34
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x2c
	mov r6, r0
	mov r7, r1
	mov r5, r2
	bl CheckMagic
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	ldrb r4, [r6, #7]
	cmp r4, #5
	cmpne r4, #7
	bne _021FBD04
	cmp r7, #0x14
	addlt sp, sp, #0x2c
	ldmltia sp!, {r4, r5, r6, r7, pc}
	add r3, sp, #0x18
	mov r2, #0xa
_021FBC7C:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _021FBC7C
	ldr r3, [sp, #0x20]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bl FindNegotiatorForCookie
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	cmp r4, #5
	add r1, sp, #0x18
	mov r2, r5
	bne _021FBCF8
	bl ProcessConnectPacket
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FBCF8:
	bl ProcessPingPacket
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
_021FBD04:
	cmp r7, #0x15
	addlt sp, sp, #0x2c
	ldmltia sp!, {r4, r5, r6, r7, pc}
	add r3, sp, #0
	mov r2, #0xa
_021FBD18:
	ldrb r1, [r6]
	ldrb r0, [r6, #1]
	add r6, r6, #2
	subs r2, r2, #1
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	bne _021FBD18
	ldrb r0, [r6]
	strb r0, [r3]
	ldr r3, [sp, #8]
	mov r1, r3, lsr #0x18
	mov r0, r3, lsr #8
	mov r2, r3, lsl #8
	and r1, r1, #0xff
	and r0, r0, #0xff00
	mov r3, r3, lsl #0x18
	orr r0, r1, r0
	and r2, r2, #0xff0000
	and r1, r3, #0xff000000
	orr r0, r2, r0
	orr r0, r1, r0
	bl FindNegotiatorForCookie
	cmp r0, #0
	addeq sp, sp, #0x2c
	ldmeqia sp!, {r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r2, r5
	bl ProcessInitPacket
	add sp, sp, #0x2c
	ldmia sp!, {r4, r5, r6, r7, pc}
	arm_func_end NNProcessData

	.data


	.global NNMagicData
NNMagicData: ; 0x022197A8
	.byte 0xFD, 0xFC, 0x1E, 0x66, 0x6A, 0xB2
	.space 0x2

	.global Unk_ov4_022197B0
Unk_ov4_022197B0: ; 0x022197B0
	.asciz "%s.%s"
	.space 0x2

	.global Unk_ov4_022197B8
Unk_ov4_022197B8: ; 0x022197B8
	.asciz "natneg1.gs.nintendowifi.net"

	.global Unk_ov4_022197D4
Unk_ov4_022197D4: ; 0x022197D4
	.asciz "natneg2.gs.nintendowifi.net"



	.bss


	.global Matchup2Hostname
Matchup2Hostname: ; 0x0221B3E4
	.space 0x4

	.global Matchup1Hostname
Matchup1Hostname: ; 0x0221B3E8
	.space 0x4

	.global matchup2ip
matchup2ip: ; 0x0221B3EC
	.space 0x4

	.global matchup1ip
matchup1ip: ; 0x0221B3F0
	.space 0x4

	.global negotiateList
negotiateList: ; 0x0221B3F4
	.space 0x4

	.global Unk_ov4_0221B3F8
Unk_ov4_0221B3F8: ; 0x0221B3F8
	.space 0x200

