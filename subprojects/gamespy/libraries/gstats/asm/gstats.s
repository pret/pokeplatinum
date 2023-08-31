	.include "macros/function.inc"
	.include "include/gstats.inc"

	

	.text


	arm_func_start CloseStatsConnection
CloseStatsConnection: ; 0x021F6338
	stmfd sp!, {r3, lr}
	ldr r0, _021F63A0 ; =0x02219358
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	beq _021F6364
	mov r1, #2
	bl shutdown
	ldr r0, _021F63A0 ; =0x02219358
	ldr r0, [r0, #0]
	bl closesocket
_021F6364:
	ldr r0, _021F63A0 ; =0x02219358
	mvn r1, #0
	str r1, [r0, #0]
	bl ClosePendingCallbacks
	ldr r0, _021F63A4 ; =0x0221AF80
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl DWCi_GsFree
	ldr r0, _021F63A4 ; =0x0221AF80
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x2c]
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F63A0: .word Unk_ov4_02219358
_021F63A4: .word Unk_ov4_0221AF80
	arm_func_end CloseStatsConnection

	arm_func_start IsStatsConnected
IsStatsConnected: ; 0x021F63A8
	ldr r1, _021F63C4 ; =0x02219358
	mvn r0, #0
	ldr r1, [r1, #0]
	cmp r1, r0
	movne r0, #1
	moveq r0, #0
	bx lr
	; .align 2, 0
_021F63C4: .word Unk_ov4_02219358
	arm_func_end IsStatsConnected

	arm_func_start PersistThink
PersistThink: ; 0x021F63C8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _021F6510 ; =0x02219358
	mvn r1, #0
	ldr r0, [r0, #0]
	cmp r0, r1
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, _021F6514 ; =0x0221AF80
	ldr r1, [r1, #0x10]
	cmp r1, #5
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	bl SocketReadable
	cmp r0, #0
	beq _021F64F4
	mov r7, #0
	ldr sl, _021F6514 ; =0x0221AF80
	ldr sb, _021F6510 ; =0x02219358
	mov r8, #0x100
	mov r6, r7
	mov r4, r7
_021F641C:
	ldr r1, [sl, #0x2c]
	ldr r0, [sl]
	sub r0, r1, r0
	cmp r0, #0x80
	bge _021F6460
	cmp r1, #0x100
	strlt r8, [sl, #0x2c]
	movge r0, r1, lsl #1
	strge r0, [sl, #0x2c]
	ldr r1, [sl, #0x2c]
	ldr r0, [sl, #0xc]
	add r1, r1, #1
	bl DWCi_GsRealloc
	str r0, [sl, #0xc]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F6460:
	ldr r5, [sl]
	ldr r1, [sl, #0xc]
	ldr r2, [sl, #0x2c]
	ldr r0, [sb]
	mov r3, r7
	add r1, r1, r5
	sub r2, r2, r5
	bl recv
	cmp r0, #0
	bgt _021F6494
	bl CloseStatsConnection
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021F6494:
	ldr r1, [sl]
	add r1, r1, r0
	str r1, [sl]
	ldr r0, [sl, #0xc]
	strb r6, [r0, r1]
	ldr r0, [sl, #0xc]
	ldr r1, [sl]
	bl ProcessInBuffer
	ldr r1, [sl]
	mov r5, r0
	cmp r5, r1
	streq r4, [sl]
	beq _021F64E4
	ldr r0, [sl, #0xc]
	sub r2, r1, r5
	add r1, r0, r5
	bl memmove
	ldr r0, [sl]
	sub r0, r0, r5
	str r0, [sl]
_021F64E4:
	ldr r0, [sb]
	bl SocketReadable
	cmp r0, #0
	bne _021F641C
_021F64F4:
	ldr r1, _021F6510 ; =0x02219358
	mvn r0, #0
	ldr r1, [r1, #0]
	cmp r1, r0
	moveq r0, #0
	movne r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021F6510: .word Unk_ov4_02219358
_021F6514: .word Unk_ov4_0221AF80
	arm_func_end PersistThink

	arm_func_start xcode_buf
xcode_buf: ; 0x021F6518
	stmfd sp!, {r4, lr}
	ldr r2, _021F655C ; =0x02219358
	cmp r1, #0
	ldr r4, [r2, #8]
	mov lr, #0
	ldmleia sp!, {r4, pc}
_021F6530:
	ldrsb ip, [r0, lr]
	ldrsb r3, [r4]
	eor r3, ip, r3
	strb r3, [r0, lr]
	ldrsb r3, [r4, #1]!
	add lr, lr, #1
	cmp r3, #0
	ldreq r4, [r2, #8]
	cmp lr, r1
	blt _021F6530
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F655C: .word Unk_ov4_02219358
	arm_func_end xcode_buf

	arm_func_start value_for_key
value_for_key: ; 0x021F6560
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x100
	ldr lr, _021F6624 ; =0x02215B27
	add ip, sp, #0
	mov r4, r0
	mov r3, #0x80
_021F6578:
	ldrb r2, [lr]
	ldrb r0, [lr, #1]
	add lr, lr, #2
	strb r2, [ip]
	strb r0, [ip, #1]
	add ip, ip, #2
	subs r3, r3, #1
	bne _021F6578
	ldr r2, _021F6628 ; =0x0221AF80
	add r0, sp, #0
	ldr r3, [r2, #0x24]
	eor r3, r3, #1
	str r3, [r2, #0x24]
	bl strcat
	ldr r1, _021F662C ; =0x022193C8
	add r0, sp, #0
	bl strcat
	add r1, sp, #0
	mov r0, r4
	bl strstr
	movs r4, r0
	addeq sp, sp, #0x100
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, sp, #0
	bl strlen
	ldr r1, _021F6628 ; =0x0221AF80
	ldr r2, _021F6630 ; =0x0221AFB0
	ldr r1, [r1, #0x24]
	add r3, r4, r0
	add r0, r2, r1, lsl #8
	mov r2, r0
	b _021F6604
_021F65FC:
	ldrsb r1, [r3], #1
	strb r1, [r2], #1
_021F6604:
	ldrsb r1, [r3]
	cmp r1, #0
	cmpne r1, #0x5c
	bne _021F65FC
	mov r1, #0
	strb r1, [r2]
	add sp, sp, #0x100
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021F6624: .word Unk_ov4_02215B27
_021F6628: .word Unk_ov4_0221AF80
_021F662C: .word Unk_ov4_022193C8
_021F6630: .word Unk_ov4_0221AFB0
	arm_func_end value_for_key

	arm_func_start value_for_key_safe
value_for_key_safe: ; 0x021F6634
	stmfd sp!, {r3, lr}
	bl value_for_key
	cmp r0, #0
	ldreq r0, _021F6648 ; =0x022193C4
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F6648: .word Unk_ov4_022193C4
	arm_func_end value_for_key_safe

	arm_func_start SocketReadable
SocketReadable: ; 0x021F664C
	ldr ip, _021F6654 ; =CanReceiveOnSocket
	bx ip
	; .align 2, 0
_021F6654: .word CanReceiveOnSocket
	arm_func_end SocketReadable

	arm_func_start FindFinal
FindFinal: ; 0x021F6658
	sub r3, r1, #6
	mov r2, r0
	cmp r3, #0
	ble _021F66B8
_021F6668:
	ldrsb r1, [r2]
	cmp r1, #0x5c
	ldreqsb r1, [r2, #1]
	cmpeq r1, #0x66
	ldreqsb r1, [r2, #2]
	cmpeq r1, #0x69
	ldreqsb r1, [r2, #3]
	cmpeq r1, #0x6e
	ldreqsb r1, [r2, #4]
	cmpeq r1, #0x61
	ldreqsb r1, [r2, #5]
	cmpeq r1, #0x6c
	ldreqsb r1, [r2, #6]
	cmpeq r1, #0x5c
	moveq r0, r2
	bxeq lr
	add r2, r2, #1
	sub r1, r2, r0
	cmp r1, r3
	blt _021F6668
_021F66B8:
	mov r0, #0
	bx lr
	arm_func_end FindFinal

	arm_func_start FindRequest
FindRequest: ; 0x021F66C0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, _021F6740 ; =0x0221AF80
	mov r7, r0
	ldr r0, [r3, #4]
	mov r6, r1
	cmp r0, #0
	mov r5, r2
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	mov r4, #0
	bl ArrayLength
	cmp r0, #0
	ble _021F6738
	ldr r8, _021F6740 ; =0x0221AF80
_021F66F8:
	ldr r0, [r8, #4]
	mov r1, r4
	bl ArrayNth
	ldr r1, [r0, #0]
	cmp r1, r7
	ldreq r1, [r0, #4]
	cmpeq r1, r6
	ldreq r0, [r0, #8]
	cmpeq r0, r5
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r0, [r8, #4]
	add r4, r4, #1
	bl ArrayLength
	cmp r4, r0
	blt _021F66F8
_021F6738:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F6740: .word Unk_ov4_0221AF80
	arm_func_end FindRequest

	arm_func_start ProcessPlayerAuth
ProcessPlayerAuth: ; 0x021F6744
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	ldr r1, _021F67E4 ; =0x022193CC
	mov r6, r0
	bl value_for_key_safe
	bl atoi
	mov r5, r0
	ldr r1, _021F67E8 ; =0x022193D4
	mov r0, r6
	bl value_for_key_safe
	bl atoi
	mov r4, r0
	ldr r1, _021F67EC ; =0x022193D8
	mov r0, r6
	bl value_for_key_safe
	mov r6, r0
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl FindRequest
	mov r4, r0
	mvn r0, #0
	cmp r4, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _021F67F0 ; =0x0221AF80
	mov r1, r4
	ldr r0, [r0, #4]
	bl ArrayNth
	cmp r5, #0
	movgt r1, #1
	str r5, [r0, #8]
	mov r2, #0
	movle r1, #0
	mov r0, r4
	mov r3, r6
	str r2, [sp]
	bl CallReqCallback
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021F67E4: .word Unk_ov4_022193CC
_021F67E8: .word Unk_ov4_022193D4
_021F67EC: .word Unk_ov4_022193D8
_021F67F0: .word Unk_ov4_0221AF80
	arm_func_end ProcessPlayerAuth

	arm_func_start ProcessGetPid
ProcessGetPid: ; 0x021F67F4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021F6874 ; =0x022193E0
	mov r5, r0
	bl value_for_key_safe
	bl atoi
	mov r4, r0
	ldr r1, _021F6878 ; =0x022193D4
	mov r0, r5
	bl value_for_key_safe
	bl atoi
	mov r1, r0
	mov r0, #3
	mov r2, #0
	bl FindRequest
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, _021F687C ; =0x0221AF80
	mov r1, r5
	ldr r0, [r0, #4]
	bl ArrayNth
	cmp r4, #0
	movgt r1, #1
	mov r2, #0
	str r4, [r0, #8]
	movle r1, #0
	mov r0, r5
	mov r3, r2
	str r2, [sp]
	bl CallReqCallback
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F6874: .word Unk_ov4_022193E0
_021F6878: .word Unk_ov4_022193D4
_021F687C: .word Unk_ov4_0221AF80
	arm_func_end ProcessGetPid

	arm_func_start ProcessGetData
ProcessGetData: ; 0x021F6880
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	ldr r1, _021F6948 ; =0x022193E8
	mov r4, r0
	bl value_for_key_safe
	bl atoi
	mov r7, r0
	ldr r1, _021F694C ; =0x022193D4
	mov r0, r4
	bl value_for_key_safe
	bl atoi
	mov r6, r0
	ldr r1, _021F6950 ; =0x022193F0
	mov r0, r4
	bl value_for_key_safe
	bl atoi
	mov r5, r0
	ldr r1, _021F6954 ; =0x022193F4
	mov r0, r4
	bl value_for_key_safe
	bl atoi
	mov r8, r0
	mov r1, r6
	mov r2, r5
	mov r0, #1
	bl FindRequest
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	addeq sp, sp, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r1, _021F6958 ; =0x022193F8
	mov r0, r4
	bl value_for_key_safe
	bl atoi
	mov r6, r0
	ldr r1, _021F695C ; =0x02219400
	mov r0, r4
	bl strstr
	cmp r0, #0
	ldreq r3, _021F6960 ; =0x022193C4
	moveq r6, #0
	addne r3, r0, #6
	mov r0, r5
	mov r1, r7
	mov r2, r8
	str r6, [sp]
	bl CallReqCallback
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F6948: .word Unk_ov4_022193E8
_021F694C: .word Unk_ov4_022193D4
_021F6950: .word Unk_ov4_022193F0
_021F6954: .word Unk_ov4_022193F4
_021F6958: .word Unk_ov4_022193F8
_021F695C: .word Unk_ov4_02219400
_021F6960: .word Unk_ov4_022193C4
	arm_func_end ProcessGetData

	arm_func_start ProcessSetData
ProcessSetData: ; 0x021F6964
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r1, _021F69EC ; =0x02219408
	mov r7, r0
	bl value_for_key_safe
	bl atoi
	mov r6, r0
	ldr r1, _021F69F0 ; =0x022193F0
	mov r0, r7
	bl value_for_key_safe
	bl atoi
	mov r5, r0
	ldr r1, _021F69F4 ; =0x022193D4
	mov r0, r7
	bl value_for_key_safe
	bl atoi
	mov r4, r0
	ldr r1, _021F69F8 ; =0x022193F4
	mov r0, r7
	bl value_for_key_safe
	bl atoi
	mov r1, r4
	mov r4, r0
	mov r2, r5
	mov r0, #2
	bl FindRequest
	mvn r1, #0
	cmp r0, r1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r3, #0
	mov r1, r6
	mov r2, r4
	str r3, [sp]
	bl CallReqCallback
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F69EC: .word Unk_ov4_02219408
_021F69F0: .word Unk_ov4_022193F0
_021F69F4: .word Unk_ov4_022193D4
_021F69F8: .word Unk_ov4_022193F4
	arm_func_end ProcessSetData

	arm_func_start ProcessStatement
ProcessStatement: ; 0x021F69FC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, _021F6AD4 ; =0x02219410
	mov r5, r0
	mov r3, #0
	mov r2, #8
	strb r3, [r5, r4]
	bl strncmp
	cmp r0, #0
	bne _021F6A34
	mov r0, r5
	mov r1, r4
	bl ProcessPlayerAuth
	ldmia sp!, {r3, r4, r5, pc}
_021F6A34:
	ldr r1, _021F6AD8 ; =0x0221941C
	mov r0, r5
	mov r2, #9
	bl strncmp
	cmp r0, #0
	bne _021F6A5C
	mov r0, r5
	mov r1, r4
	bl ProcessGetPid
	ldmia sp!, {r3, r4, r5, pc}
_021F6A5C:
	ldr r1, _021F6AD8 ; =0x0221941C
	mov r0, r5
	mov r2, #9
	bl strncmp
	cmp r0, #0
	bne _021F6A84
	mov r0, r5
	mov r1, r4
	bl ProcessGetPid
	ldmia sp!, {r3, r4, r5, pc}
_021F6A84:
	ldr r1, _021F6ADC ; =0x02219428
	mov r0, r5
	mov r2, #8
	bl strncmp
	cmp r0, #0
	bne _021F6AAC
	mov r0, r5
	mov r1, r4
	bl ProcessGetData
	ldmia sp!, {r3, r4, r5, pc}
_021F6AAC:
	ldr r1, _021F6AE0 ; =0x02219434
	mov r0, r5
	mov r2, #8
	bl strncmp
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl ProcessSetData
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F6AD4: .word Unk_ov4_02219410
_021F6AD8: .word Unk_ov4_0221941C
_021F6ADC: .word Unk_ov4_02219428
_021F6AE0: .word Unk_ov4_02219434
	arm_func_end ProcessStatement

	arm_func_start ProcessInBuffer
ProcessInBuffer: ; 0x021F6AE4
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sb, r1
	mov sl, r0
	mov r7, sb
	bl FindFinal
	mov r6, r0
	ldr r5, _021F6B64 ; =0x022193A4
	ldr r4, _021F6B68 ; =0x02219358
	b _021F6B4C
_021F6B08:
	sub r8, r6, sl
	mov r0, sl
	mov r1, r8
	str r5, [r4, #8]
	bl xcode_buf
	mov r0, sl
	mov r1, r8
	bl ProcessStatement
	add r0, r8, #7
	sub sb, sb, r0
	cmp sb, #0
	add sl, r6, #7
	ble _021F6B4C
	mov r0, sl
	mov r1, sb
	bl FindFinal
	mov r6, r0
_021F6B4C:
	cmp sb, #0
	ble _021F6B5C
	cmp r6, #0
	bne _021F6B08
_021F6B5C:
	sub r0, r7, sb
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021F6B64: .word Unk_ov4_022193A4
_021F6B68: .word Unk_ov4_02219358
	arm_func_end ProcessInBuffer

	arm_func_start CallReqCallback
CallReqCallback: ; 0x021F6B6C
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x14
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	addmi sp, sp, #0x14
	ldmmiia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021F6C6C ; =0x0221AF80
	ldr r0, [r0, #4]
	bl ArrayLength
	cmp r7, r0
	addge sp, sp, #0x14
	ldmgeia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021F6C6C ; =0x0221AF80
	mov r1, r7
	ldr r0, [r0, #4]
	bl ArrayNth
	mov r3, r0
	ldr ip, [r3, #0x18]
	cmp ip, #0
	beq _021F6C54
	ldr r0, [r3, #0]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _021F6C54
_021F6BD4: ; jump table
	b _021F6BE4 ; case 0
	b _021F6C00 ; case 1
	b _021F6C28 ; case 2
	b _021F6C44 ; case 3
_021F6BE4:
	ldr r0, [r3, #0x14]
	mov r2, r6
	str r0, [sp]
	ldmib r3, {r0, r1}
	mov r3, r4
	blx ip
	b _021F6C54
_021F6C00:
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [sp, #0x28]
	str r4, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r3, #0x14]
	str r0, [sp, #0x10]
	ldmib r3, {r0, r1, r2, r3}
	blx ip
	b _021F6C54
_021F6C28:
	str r6, [sp]
	str r5, [sp, #4]
	ldr r0, [r3, #0x14]
	str r0, [sp, #8]
	ldmib r3, {r0, r1, r2, r3}
	blx ip
	b _021F6C54
_021F6C44:
	ldmib r3, {r0, r1}
	ldr r3, [r3, #0x14]
	mov r2, r6
	blx ip
_021F6C54:
	ldr r0, _021F6C6C ; =0x0221AF80
	mov r1, r7
	ldr r0, [r0, #4]
	bl ArrayDeleteAt
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F6C6C: .word Unk_ov4_0221AF80
	arm_func_end CallReqCallback

	arm_func_start ClosePendingCallbacks
ClosePendingCallbacks: ; 0x021F6C70
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x24
	ldr r0, _021F6D54 ; =0x0221AF80
	ldr r0, [r0, #4]
	cmp r0, #0
	addeq sp, sp, #0x24
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	bl ArrayLength
	subs r4, r0, #1
	bmi _021F6D34
	ldr r5, _021F6D58 ; =0x022159A4
	add r3, sp, #4
	mov r2, #8
_021F6CA4:
	ldrb r1, [r5]
	ldrb r0, [r5, #1]
	add r5, r5, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _021F6CA4
	ldr sb, _021F6D5C ; =0x022193B4
	ldr r5, _021F6D60 ; =0x02219358
	add r8, sp, #0x14
	mov r7, #0xf
	mov r6, #0
_021F6CD8:
	add ip, sp, #4
	add r3, sp, #0x14
	mov r2, #8
_021F6CE4:
	ldrb r1, [ip]
	ldrb r0, [ip, #1]
	add ip, ip, #2
	strb r1, [r3]
	strb r0, [r3, #1]
	add r3, r3, #2
	subs r2, r2, #1
	bne _021F6CE4
	mov r0, r8
	mov r1, r7
	str sb, [r5, #8]
	bl xcode_buf
	mov r0, r4
	mov r1, r6
	mov r2, r6
	mov r3, r8
	str r6, [sp]
	bl CallReqCallback
	subs r4, r4, #1
	bpl _021F6CD8
_021F6D34:
	ldr r0, _021F6D54 ; =0x0221AF80
	ldr r0, [r0, #4]
	bl ArrayFree
	ldr r0, _021F6D54 ; =0x0221AF80
	mov r1, #0
	str r1, [r0, #4]
	add sp, sp, #0x24
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021F6D54: .word Unk_ov4_0221AF80
_021F6D58: .word Unk_ov4_022159A4
_021F6D5C: .word Unk_ov4_022193B4
_021F6D60: .word Unk_ov4_02219358
	arm_func_end ClosePendingCallbacks

	arm_func_start GetTeamIndex
GetTeamIndex: ; 0x021F6D64
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldreq r0, _021F6D90 ; =0x0221AF80
	ldreq r0, [r0, #0x28]
	cmp r0, #0
	moveq r0, r1
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x20]
	bl ArrayNth
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F6D90: .word Unk_ov4_0221AF80
	arm_func_end GetTeamIndex

	arm_func_start GetPlayerIndex
GetPlayerIndex: ; 0x021F6D94
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldreq r0, _021F6DC0 ; =0x0221AF80
	ldreq r0, [r0, #0x28]
	cmp r0, #0
	moveq r0, r1
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x1c]
	bl ArrayNth
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021F6DC0: .word Unk_ov4_0221AF80
	arm_func_end GetPlayerIndex

	arm_func_start ServerOpInt
ServerOpInt: ; 0x021F6DC4
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldreq r0, _021F6E28 ; =0x0221AF80
	mov r4, r1
	ldreq r5, [r0, #0x28]
	mov r3, r2
	cmp r5, #0
	addeq r0, sp, #0x1c
	beq _021F6E18
	ldr r0, [r5, #0xc]
	add r2, sp, #0x1c
	mov r1, r4
	blx r3
	cmp r0, #0
	bne _021F6E18
	ldr r0, [r5, #0xc]
	add r3, sp, #0x1c
	mov r1, r4
	mov r2, #0
	bl BucketNew
_021F6E18:
	ldr r0, [r0, #0]
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_021F6E28: .word Unk_ov4_0221AF80
	arm_func_end ServerOpInt

	arm_func_start ServerOpFloat
ServerOpFloat: ; 0x021F6E2C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	ldreq r0, _021F6E98 ; =0x0221AF80
	mov r4, r1
	ldreq r5, [r0, #0x28]
	mov r3, r2
	cmp r5, #0
	addeq r0, sp, #0x1c
	beq _021F6E80
	ldr r0, [r5, #0xc]
	add r2, sp, #0x1c
	mov r1, r4
	blx r3
	cmp r0, #0
	bne _021F6E80
	ldr r0, [r5, #0xc]
	add r3, sp, #0x1c
	mov r1, r4
	mov r2, #1
	bl BucketNew
_021F6E80:
	ldr r2, [r0, #0]
	ldr r1, [r0, #4]
	mov r0, r2
	ldmia sp!, {r3, r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_021F6E98: .word Unk_ov4_0221AF80
	arm_func_end ServerOpFloat

	arm_func_start ServerOpString
ServerOpString: ; 0x021F6E9C
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	ldreq r0, _021F6EF4 ; =0x0221AF80
	mov r5, r1
	ldreq r6, [r0, #0x28]
	mov r4, r3
	cmp r6, #0
	mov ip, r2
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r1, r5
	mov r2, r4
	blx ip
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r6, #0xc]
	mov r1, r5
	mov r3, r4
	mov r2, #2
	bl BucketNew
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021F6EF4: .word Unk_ov4_0221AF80
	arm_func_end ServerOpString

	arm_func_start TeamOpInt
TeamOpInt: ; 0x021F6EF8
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldr r1, [sp, #0x58]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl GetTeamIndex
	mov r3, r0
	ldr r1, _021F6F50 ; =0x02219440
	add r0, sp, #4
	mov r2, r6
	bl sprintf
	ldr ip, [sp, #0x58]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	add r1, sp, #4
	str ip, [sp]
	bl ServerOpInt
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F6F50: .word Unk_ov4_02219440
	arm_func_end TeamOpInt

	arm_func_start TeamOpFloat
TeamOpFloat: ; 0x021F6F54
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	mov r7, r1
	ldr r1, [sp, #0x64]
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x60]
	bl GetTeamIndex
	mov r3, r0
	ldr r1, _021F6FB0 ; =0x02219440
	add r0, sp, #8
	mov r2, r7
	bl sprintf
	ldr ip, [sp, #0x64]
	mov r3, r5
	mov r0, r8
	mov r2, r6
	add r1, sp, #8
	stmia sp, {r4, ip}
	bl ServerOpFloat
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F6FB0: .word Unk_ov4_02219440
	arm_func_end TeamOpFloat

	arm_func_start TeamOpString
TeamOpString: ; 0x021F6FB4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldr r1, [sp, #0x58]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl GetTeamIndex
	mov r3, r0
	ldr r1, _021F700C ; =0x02219440
	add r0, sp, #4
	mov r2, r6
	bl sprintf
	ldr ip, [sp, #0x58]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	add r1, sp, #4
	str ip, [sp]
	bl ServerOpString
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F700C: .word Unk_ov4_02219440
	arm_func_end TeamOpString

	arm_func_start PlayerOpInt
PlayerOpInt: ; 0x021F7010
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldr r1, [sp, #0x58]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl GetPlayerIndex
	mov r3, r0
	ldr r1, _021F7068 ; =0x02219448
	add r0, sp, #4
	mov r2, r6
	bl sprintf
	ldr ip, [sp, #0x58]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	add r1, sp, #4
	str ip, [sp]
	bl ServerOpInt
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F7068: .word Unk_ov4_02219448
	arm_func_end PlayerOpInt

	arm_func_start PlayerOpFloat
PlayerOpFloat: ; 0x021F706C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x48
	mov r7, r1
	ldr r1, [sp, #0x64]
	mov r8, r0
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x60]
	bl GetPlayerIndex
	mov r3, r0
	ldr r1, _021F70C8 ; =0x02219448
	add r0, sp, #8
	mov r2, r7
	bl sprintf
	ldr ip, [sp, #0x64]
	mov r3, r5
	mov r0, r8
	mov r2, r6
	add r1, sp, #8
	stmia sp, {r4, ip}
	bl ServerOpFloat
	add sp, sp, #0x48
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F70C8: .word Unk_ov4_02219448
	arm_func_end PlayerOpFloat

	arm_func_start PlayerOpString
PlayerOpString: ; 0x021F70CC
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0x44
	mov r6, r1
	ldr r1, [sp, #0x58]
	mov r7, r0
	mov r5, r2
	mov r4, r3
	bl GetPlayerIndex
	mov r3, r0
	ldr r1, _021F7124 ; =0x02219448
	add r0, sp, #4
	mov r2, r6
	bl sprintf
	ldr ip, [sp, #0x58]
	mov r0, r7
	mov r2, r5
	mov r3, r4
	add r1, sp, #4
	str ip, [sp]
	bl ServerOpString
	add sp, sp, #0x44
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021F7124: .word Unk_ov4_02219448
	arm_func_end PlayerOpString

	.rodata


	.global Unk_ov4_0221598C
Unk_ov4_0221598C: ; 0x0221598C
	.incbin "incbin/gstats.bin", 0x0, 0x8

	.global Unk_ov4_02215994
Unk_ov4_02215994: ; 0x02215994
	.incbin "incbin/gstats.bin", 0x8, 0x18 - 0x8

	.global Unk_ov4_022159A4
Unk_ov4_022159A4: ; 0x022159A4
	.incbin "incbin/gstats.bin", 0x18, 0x28 - 0x18

	.global Unk_ov4_022159B4
Unk_ov4_022159B4: ; 0x022159B4
	.incbin "incbin/gstats.bin", 0x28, 0x46 - 0x28

	.global Unk_ov4_022159D2
Unk_ov4_022159D2: ; 0x022159D2
	.incbin "incbin/gstats.bin", 0x46, 0x65 - 0x46

	.global Unk_ov4_022159F1
Unk_ov4_022159F1: ; 0x022159F1
	.incbin "incbin/gstats.bin", 0x65, 0x88 - 0x65

	.global Unk_ov4_02215A14
Unk_ov4_02215A14: ; 0x02215A14
	.incbin "incbin/gstats.bin", 0x88, 0xAC - 0x88

	.global Unk_ov4_02215A38
Unk_ov4_02215A38: ; 0x02215A38
	.incbin "incbin/gstats.bin", 0xAC, 0xD5 - 0xAC

	.global Unk_ov4_02215A61
Unk_ov4_02215A61: ; 0x02215A61
	.incbin "incbin/gstats.bin", 0xD5, 0xFF - 0xD5

	.global Unk_ov4_02215A8B
Unk_ov4_02215A8B: ; 0x02215A8B
	.incbin "incbin/gstats.bin", 0xFF, 0x12B - 0xFF

	.global Unk_ov4_02215AB7
Unk_ov4_02215AB7: ; 0x02215AB7
	.incbin "incbin/gstats.bin", 0x12B, 0x15C - 0x12B

	.global Unk_ov4_02215AE8
Unk_ov4_02215AE8: ; 0x02215AE8
	.incbin "incbin/gstats.bin", 0x15C, 0x19B - 0x15C

	.global Unk_ov4_02215B27
Unk_ov4_02215B27: ; 0x02215B27
	.incbin "incbin/gstats.bin", 0x19B, 0x101



	.data


	.global Unk_ov4_02219358
Unk_ov4_02219358: ; 0x02219358
	.word 0xFFFFFFFF

	.global Unk_ov4_0221935C
Unk_ov4_0221935C: ; 0x0221935C
	.ascii " N"
	.space 0x2

	.global Unk_ov4_02219360
Unk_ov4_02219360: ; 0x02219360
	.word Unk_ov4_022193A4

	.global Unk_ov4_02219364
Unk_ov4_02219364: ; 0x02219364
	.word BucketSet
	.word BucketAdd
	.word BucketSub
	.word BucketMult
	.word BucketDiv
	.word BucketConcat
	.word BucketAvg

	.global Unk_ov4_02219380
Unk_ov4_02219380: ; 0x02219380
	.word ServerOpInt
	.word ServerOpFloat
	.word ServerOpString
	.word TeamOpInt
	.word TeamOpFloat
	.word TeamOpString
	.word PlayerOpInt
	.word PlayerOpFloat
	.word PlayerOpString

	.global Unk_ov4_022193A4
Unk_ov4_022193A4: ; 0x022193A4
	.space 0x1
	.asciz "ameSpy3D"
	.space 0x6

	.global Unk_ov4_022193B4
Unk_ov4_022193B4: ; 0x022193B4
	.space 0x1
	.ascii "rojectAphex"
	.space 0x4

	.global Unk_ov4_022193C4
Unk_ov4_022193C4: ; 0x022193C4
	.space 0x4

	.global Unk_ov4_022193C8
Unk_ov4_022193C8: ; 0x022193C8
	.word 0x5C

	.global Unk_ov4_022193CC
Unk_ov4_022193CC: ; 0x022193CC
	.ascii "pauthr"
	.space 0x2

	.global Unk_ov4_022193D4
Unk_ov4_022193D4: ; 0x022193D4
	.asciz "lid"

	.global Unk_ov4_022193D8
Unk_ov4_022193D8: ; 0x022193D8
	.ascii "errmsg"
	.space 0x2

	.global Unk_ov4_022193E0
Unk_ov4_022193E0: ; 0x022193E0
	.asciz "getpidr"

	.global Unk_ov4_022193E8
Unk_ov4_022193E8: ; 0x022193E8
	.ascii "getpdr"
	.space 0x2

	.global Unk_ov4_022193F0
Unk_ov4_022193F0: ; 0x022193F0
	.asciz "pid"

	.global Unk_ov4_022193F4
Unk_ov4_022193F4: ; 0x022193F4
	.asciz "mod"

	.global Unk_ov4_022193F8
Unk_ov4_022193F8: ; 0x022193F8
	.ascii "length"
	.space 0x2

	.global Unk_ov4_02219400
Unk_ov4_02219400: ; 0x02219400
	.ascii "\\data\\"
	.space 0x2

	.global Unk_ov4_02219408
Unk_ov4_02219408: ; 0x02219408
	.ascii "setpdr"
	.space 0x2

	.global Unk_ov4_02219410
Unk_ov4_02219410: ; 0x02219410
	.ascii "\\pauthr\\"
	.space 0x4

	.global Unk_ov4_0221941C
Unk_ov4_0221941C: ; 0x0221941C
	.asciz "\\getpidr\\"
	.space 0x2

	.global Unk_ov4_02219428
Unk_ov4_02219428: ; 0x02219428
	.ascii "\\getpdr\\"
	.space 0x4

	.global Unk_ov4_02219434
Unk_ov4_02219434: ; 0x02219434
	.ascii "\\setpdr\\"
	.space 0x4

	.global Unk_ov4_02219440
Unk_ov4_02219440: ; 0x02219440
	.ascii "%s_t%d"
	.space 0x2

	.global Unk_ov4_02219448
Unk_ov4_02219448: ; 0x02219448
	.asciz "%s_%d"
	.space 0x2



	.bss


	.global Unk_ov4_0221AF80
Unk_ov4_0221AF80: ; 0x0221AF80
	.space 0x4

	.global Unk_ov4_0221AF84
Unk_ov4_0221AF84: ; 0x0221AF84
	.space 0x4

	.global Unk_ov4_0221AF88
Unk_ov4_0221AF88: ; 0x0221AF88
	.space 0x4

	.global Unk_ov4_0221AF8C
Unk_ov4_0221AF8C: ; 0x0221AF8C
	.space 0x4

	.global Unk_ov4_0221AF90
Unk_ov4_0221AF90: ; 0x0221AF90
	.space 0x4

	.global Unk_ov4_0221AF94
Unk_ov4_0221AF94: ; 0x0221AF94
	.space 0x4

	.global Unk_ov4_0221AF98
Unk_ov4_0221AF98: ; 0x0221AF98
	.space 0x4

	.global Unk_ov4_0221AF9C
Unk_ov4_0221AF9C: ; 0x0221AF9C
	.space 0x4

	.global Unk_ov4_0221AFA0
Unk_ov4_0221AFA0: ; 0x0221AFA0
	.space 0x4

	.global Unk_ov4_0221AFA4
Unk_ov4_0221AFA4: ; 0x0221AFA4
	.space 0x4

	.global Unk_ov4_0221AFA8
Unk_ov4_0221AFA8: ; 0x0221AFA8
	.space 0x4

	.global Unk_ov4_0221AFAC
Unk_ov4_0221AFAC: ; 0x0221AFAC
	.space 0x4

	.global Unk_ov4_0221AFB0
Unk_ov4_0221AFB0: ; 0x0221AFB0
	.space 0x200

	.global gcd_gamename
gcd_gamename: ; 0x0221B1B0
	.space 0x100

	.global gcd_secret_key
gcd_secret_key: ; 0x0221B2B0
	.space 0x100

