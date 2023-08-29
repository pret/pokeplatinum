	.include "macros/function.inc"
	.include "include/nonport.inc"

	.extern __lower_mapC

	.text


	arm_func_start current_time
current_time: ; 0x021EA840
	stmfd sp!, {r3, lr}
	bl OS_IsTickAvailable
	cmp r0, #1
	beq _021EA864
	ldr r0, _021EA884 ; =0x022178F4
	ldr r1, _021EA888 ; =0x02217914
	ldr r2, _021EA88C ; =0x022178E4
	ldr r3, _021EA890 ; =0x00000109
	bl __msl_assertion_failed
_021EA864:
	bl OS_GetTick
	mov r1, r1, lsl #6
	orr r1, r1, r0, lsr #26
	ldr r2, _021EA894 ; =0x000082EA
	mov r0, r0, lsl #6
	mov r3, #0
	bl _ull_div
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EA884: .word Unk_ov4_022178F4
_021EA888: .word Unk_ov4_02217914
_021EA88C: .word Unk_ov4_022178E4
_021EA890: .word 0x00000109
_021EA894: .word 0x000082EA
	arm_func_end current_time

	arm_func_start ov4_021EA898
ov4_021EA898: ; 0x021EA898
	ldr ip, _021EA8A0 ; =OS_Sleep
	bx ip
	; .align 2, 0
_021EA8A0: .word OS_Sleep
	arm_func_end ov4_021EA898

	arm_func_start ov4_021EA8A4
ov4_021EA8A4: ; 0x021EA8A4
	bx lr
	arm_func_end ov4_021EA8A4

	arm_func_start ov4_021EA8A8
ov4_021EA8A8: ; 0x021EA8A8
	bx lr
	arm_func_end ov4_021EA8A8

	arm_func_start ov4_021EA8AC
ov4_021EA8AC: ; 0x021EA8AC
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl strlen
	add r0, r0, #1
	bl DWCi_GsMalloc
	movs r4, r0
	beq _021EA8D8
	mov r1, r5
	bl strcpy
_021EA8D8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EA8AC

	arm_func_start ov4_021EA8E0
ov4_021EA8E0: ; 0x021EA8E0
	ldrsb r3, [r0]
	mov r2, r0
	cmp r3, #0
	beq _021EA918
	ldr r1, _021EA920 ; =0x020FE764
_021EA8F4:
	cmp r3, #0
	blt _021EA908
	cmp r3, #0x80
	bge _021EA908
	ldrb r3, [r1, r3]
_021EA908:
	strb r3, [r0]
	ldrsb r3, [r0, #1]!
	cmp r3, #0
	bne _021EA8F4
_021EA918:
	mov r0, r2
	bx lr
	; .align 2, 0
_021EA920: .word __lower_mapC
	arm_func_end ov4_021EA8E0

	arm_func_start ov4_021EA924
ov4_021EA924: ; 0x021EA924
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, #3
	mov r2, #0
	mov r5, r0
	bl SOC_Fcntl
	cmp r4, #0
	bicne r2, r0, #4
	orreq r2, r0, #4
	mov r0, r5
	mov r1, #4
	bl SOC_Fcntl
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EA924

	arm_func_start ov4_021EA964
ov4_021EA964: ; 0x021EA964
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	ldr r1, _021EA9A0 ; =0x0000FFFF
	mov ip, #4
	ldr r2, _021EA9A4 ; =0x00001002
	add r3, sp, #0xc
	str ip, [sp]
	bl ov4_021EAEDC
	mvn r1, #0
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_021EA9A0: .word 0x0000FFFF
_021EA9A4: .word 0x00001002
	arm_func_end ov4_021EA964

	arm_func_start ov4_021EA9A8
ov4_021EA9A8: ; 0x021EA9A8
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r3, lr}
	ldr r1, _021EA9E4 ; =0x0000FFFF
	mov ip, #4
	add r3, sp, #0xc
	rsb r2, r1, #0x11000
	str ip, [sp]
	bl ov4_021EAEDC
	mvn r1, #0
	cmp r0, r1
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_021EA9E4: .word 0x0000FFFF
	arm_func_end ov4_021EA9A8

	arm_func_start ov4_021EA9E8
ov4_021EA9E8: ; 0x021EA9E8
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	mov r1, #4
	str r1, [sp, #4]
	add ip, sp, #4
	ldr r1, _021EAA28 ; =0x0000FFFF
	ldr r2, _021EAA2C ; =0x00001002
	add r3, sp, #8
	str ip, [sp]
	bl ov4_021EAEB4
	mvn r1, #0
	cmp r0, r1
	ldrne r1, [sp, #8]
	mov r0, r1
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_021EAA28: .word 0x0000FFFF
_021EAA2C: .word 0x00001002
	arm_func_end ov4_021EA9E8

	arm_func_start ov4_021EAA30
ov4_021EAA30: ; 0x021EAA30
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr r1, _021EAA70 ; =0x0000FFFF
	mov r2, #4
	str r2, [sp, #4]
	add ip, sp, #4
	add r3, sp, #8
	rsb r2, r1, #0x11000
	str ip, [sp]
	bl ov4_021EAEB4
	mvn r1, #0
	cmp r0, r1
	ldrne r1, [sp, #8]
	mov r0, r1
	add sp, sp, #0xc
	ldmia sp!, {pc}
	; .align 2, 0
_021EAA70: .word 0x0000FFFF
	arm_func_end ov4_021EAA30

	arm_func_start ov4_021EAA74
ov4_021EAA74: ; 0x021EAA74
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	movs r6, r1
	mov r1, #0
	strh r1, [sp, #4]
	str r0, [sp]
	ldrnesh r0, [sp, #4]
	mov r5, r2
	mov r2, #0
	orrne r0, r0, #1
	strneh r0, [sp, #4]
	cmp r5, #0
	ldrnesh r0, [sp, #4]
	mov r4, r3
	mov r3, r2
	orrne r0, r0, #8
	strneh r0, [sp, #4]
	add r0, sp, #0
	mov r1, #1
	strh r2, [sp, #6]
	bl SOC_Poll
	cmp r0, #0
	addlt sp, sp, #8
	mvnlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	cmp r6, #0
	beq _021EAB04
	cmp r0, #0
	ble _021EAAFC
	ldrsh r1, [sp, #6]
	tst r1, #0x41
	movne r1, #1
	strne r1, [r6]
	bne _021EAB04
_021EAAFC:
	mov r1, #0
	str r1, [r6, #0]
_021EAB04:
	cmp r5, #0
	beq _021EAB30
	cmp r0, #0
	ble _021EAB28
	ldrsh r1, [sp, #6]
	tst r1, #8
	movne r1, #1
	strne r1, [r5]
	bne _021EAB30
_021EAB28:
	mov r1, #0
	str r1, [r5, #0]
_021EAB30:
	cmp r4, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r0, #0
	ble _021EAB5C
	ldrsh r1, [sp, #6]
	tst r1, #0x20
	movne r1, #1
	addne sp, sp, #8
	strne r1, [r4]
	ldmneia sp!, {r4, r5, r6, pc}
_021EAB5C:
	mov r1, #0
	str r1, [r4, #0]
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021EAA74

	arm_func_start ov4_021EAB6C
ov4_021EAB6C: ; 0x021EAB6C
	stmfd sp!, {r3, lr}
	mov r2, #0
	add r1, sp, #0
	mov r3, r2
	str r2, [sp]
	bl ov4_021EAA74
	cmp r0, #1
	ldreq r0, [sp]
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EAB6C

	arm_func_start ov4_021EAB94
ov4_021EAB94: ; 0x021EAB94
	stmfd sp!, {r3, lr}
	mov r1, #0
	add r2, sp, #0
	mov r3, r1
	str r1, [sp]
	bl ov4_021EAA74
	cmp r0, #1
	ldreq r0, [sp]
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EAB94

	arm_func_start ov4_021EABBC
ov4_021EABBC: ; 0x021EABBC
	stmfd sp!, {r3, lr}
	ldr r2, _021EAC30 ; =0x02217920
	ldr r0, _021EAC34 ; =0x0221AF2C
	ldr r1, _021EAC38 ; =0x0221AF2C
	str r2, [r0, #8]
	str r1, [r0, #0xc]
	mov r1, #2
	strh r1, [r0, #0x10]
	mov r2, #0
	ldr r1, _021EAC3C ; =0x0221AF58
	strh r2, [r0, #0x12]
	str r1, [r0, #0x14]
	str r2, [r0, #0x18]
	bl SOCL_GetHostID
	ldr r1, _021EAC40 ; =0x0221AF44
	bl SOC_U32to4U8
	ldr r1, _021EAC34 ; =0x0221AF2C
	ldr r0, [r1, #0x18]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, _021EAC40 ; =0x0221AF44
	mov r0, #4
	str r2, [r1, #0x2c]
	strh r0, [r1, #0x12]
	mov r2, #0
	ldr r0, _021EAC44 ; =0x0221AF34
	str r2, [r1, #0x30]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EAC30: .word Unk_ov4_02217920
_021EAC34: .word Unk_ov4_0221AF2C
_021EAC38: .word Unk_ov4_0221AF2C
_021EAC3C: .word Unk_ov4_0221AF58
_021EAC40: .word Unk_ov4_0221AF44
_021EAC44: .word Unk_ov4_0221AF34
	arm_func_end ov4_021EABBC

	arm_func_start ov4_021EAC48
ov4_021EAC48: ; 0x021EAC48
	ldr r3, [r0, #0]
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
	orr r1, r1, r0
	mov r0, r1, lsr #0x18
	and r2, r0, #0xff
	mov r0, r1, lsr #0x10
	and r0, r0, #0xff
	cmp r2, #0xa
	moveq r0, #1
	bxeq lr
	cmp r2, #0xac
	bne _021EACB0
	cmp r0, #0x10
	blt _021EACB0
	cmp r0, #0x1f
	movle r0, #1
	bxle lr
_021EACB0:
	cmp r2, #0xc0
	cmpeq r0, #0xa8
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end ov4_021EAC48

	arm_func_start ov4_021EACC4
ov4_021EACC4: ; 0x021EACC4
	cmp r0, #0
	ldrlt r2, _021EACD8 ; =0x0221AF2C
	strlt r0, [r2, #4]
	movlt r0, r1
	bx lr
	; .align 2, 0
_021EACD8: .word Unk_ov4_0221AF2C
	arm_func_end ov4_021EACC4

	arm_func_start ov4_021EACDC
ov4_021EACDC: ; 0x021EACDC
	stmfd sp!, {r3, lr}
	bl SOC_Socket
	mvn r1, #0
	bl ov4_021EACC4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EACDC

	arm_func_start ov4_021EACF0
ov4_021EACF0: ; 0x021EACF0
	stmfd sp!, {r3, lr}
	bl SOC_Close
	mvn r1, #0
	bl ov4_021EACC4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EACF0

	arm_func_start ov4_021EAD04
ov4_021EAD04: ; 0x021EAD04
	stmfd sp!, {r3, lr}
	bl SOC_Shutdown
	mvn r1, #0
	bl ov4_021EACC4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EAD04

	arm_func_start ov4_021EAD18
ov4_021EAD18: ; 0x021EAD18
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldrh r3, [r1, #2]
	cmp r3, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r4, sp, #0
	mov lr, #4
_021EAD3C:
	ldrb ip, [r1]
	ldrb r3, [r1, #1]
	add r1, r1, #2
	subs lr, lr, #1
	strb ip, [r4]
	strb r3, [r4, #1]
	add r4, r4, #2
	bne _021EAD3C
	add r1, sp, #0
	strb r2, [sp]
	bl SOC_Bind
	mvn r1, #0
	bl ov4_021EACC4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021EAD18

	arm_func_start ov4_021EAD78
ov4_021EAD78: ; 0x021EAD78
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	add r4, sp, #0
	mov lr, #4
_021EAD88:
	ldrb ip, [r1]
	ldrb r3, [r1, #1]
	add r1, r1, #2
	subs lr, lr, #1
	strb ip, [r4]
	strb r3, [r4, #1]
	add r4, r4, #2
	bne _021EAD88
	add r1, sp, #0
	strb r2, [sp]
	bl SOC_Connect
	mvn r1, #0
	bl ov4_021EACC4
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021EAD78

	arm_func_start ov4_021EADC4
ov4_021EADC4: ; 0x021EADC4
	stmfd sp!, {r3, lr}
	bl SOC_Listen
	mvn r1, #0
	bl ov4_021EACC4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EADC4

	arm_func_start ov4_021EADD8
ov4_021EADD8: ; 0x021EADD8
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	ldr r2, [r4, #0]
	mov r5, r1
	strb r2, [r5]
	bl SOC_Accept
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4, #0]
	bl ov4_021EACC4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EADD8

	arm_func_start ov4_021EAE04
ov4_021EAE04: ; 0x021EAE04
	stmfd sp!, {r3, lr}
	bl SOC_Recv
	mvn r1, #0
	bl ov4_021EACC4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EAE04

	arm_func_start ov4_021EAE18
ov4_021EAE18: ; 0x021EAE18
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, [sp, #0x14]
	ldr r5, [sp, #0x10]
	ldr ip, [r4]
	strb ip, [r5]
	str r5, [sp]
	bl SOC_RecvFrom
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4, #0]
	bl ov4_021EACC4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EAE18

	arm_func_start ov4_021EAE48
ov4_021EAE48: ; 0x021EAE48
	stmfd sp!, {r3, lr}
	bl SOC_Send
	mvn r1, #0
	bl ov4_021EACC4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EAE48

	arm_func_start ov4_021EAE5C
ov4_021EAE5C: ; 0x021EAE5C
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r5, [sp, #0x20]
	add r6, sp, #4
	mov r4, #4
_021EAE70:
	ldrb lr, [r5]
	ldrb ip, [r5, #1]
	add r5, r5, #2
	subs r4, r4, #1
	strb lr, [r6]
	strb ip, [r6, #1]
	add r6, r6, #2
	bne _021EAE70
	ldr lr, [sp, #0x24]
	add ip, sp, #4
	strb lr, [sp, #4]
	str ip, [sp]
	bl SOC_SendTo
	mvn r1, #0
	bl ov4_021EACC4
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	arm_func_end ov4_021EAE5C

	arm_func_start ov4_021EAEB4
ov4_021EAEB4: ; 0x021EAEB4
	stmfd sp!, {r3, lr}
	ldr r1, [sp, #8]
	mov r0, r3
	ldr r2, [r1, #0]
	mov r1, #0
	bl MI_CpuFill8
	mov r0, #0
	sub r1, r0, #1
	bl ov4_021EACC4
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EAEB4

	arm_func_start ov4_021EAEDC
ov4_021EAEDC: ; 0x021EAEDC
	ldr ip, _021EAEEC ; =ov4_021EACC4
	mov r0, #0
	sub r1, r0, #1
	bx ip
	; .align 2, 0
_021EAEEC: .word ov4_021EACC4
	arm_func_end ov4_021EAEDC

	arm_func_start ov4_021EAEF0
ov4_021EAEF0: ; 0x021EAEF0
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r2
	ldr r2, [r4, #0]
	mov r5, r1
	strb r2, [r5]
	bl SOC_GetSockName
	ldrb r2, [r5]
	mvn r1, #0
	str r2, [r4, #0]
	bl ov4_021EACC4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EAEF0

	arm_func_start inet_addr
inet_addr: ; 0x021EAF1C
	stmfd sp!, {r3, lr}
	add r1, sp, #0
	bl SOC_InetAtoN
	cmp r0, #0
	mvneq r0, #0
	ldrne r0, [sp]
	ldmia sp!, {r3, pc}
	arm_func_end inet_addr

	arm_func_start GOAGetLastError
GOAGetLastError: ; 0x021EAF38
	ldr r0, _021EAF44 ; =0x0221AF2C
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
_021EAF44: .word Unk_ov4_0221AF2C
	arm_func_end GOAGetLastError

	arm_func_start ov4_021EAF48
ov4_021EAF48: ; 0x021EAF48
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_IsTickAvailable
	cmp r0, #1
	beq _021EAF70
	ldr r0, _021EAF98 ; =0x022178F4
	ldr r1, _021EAF9C ; =0x02217914
	ldr r2, _021EAFA0 ; =0x022178DC
	ldr r3, _021EAFA4 ; =0x00000667
	bl __msl_assertion_failed
_021EAF70:
	bl OS_GetTick
	mov r1, r1, lsl #6
	orr r1, r1, r0, lsr #26
	ldr r2, _021EAFA8 ; =0x01FF6210
	mov r0, r0, lsl #6
	mov r3, #0
	bl _ull_div
	cmp r4, #0
	strne r0, [r4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021EAF98: .word Unk_ov4_022178F4
_021EAF9C: .word Unk_ov4_02217914
_021EAFA0: .word Unk_ov4_022178DC
_021EAFA4: .word 0x00000667
_021EAFA8: .word 0x01FF6210
	arm_func_end ov4_021EAF48

	arm_func_start ov4_021EAFAC
ov4_021EAFAC: ; 0x021EAFAC
	ldr r2, _021EAFF4 ; =0x000041A7
	mov r1, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	mul r3, r0, r2
	mov r1, r1, lsr #0x10
	mul r2, r1, r2
	mov r0, r3, lsl #0x11
	add r0, r2, r0, lsr #1
	mvn r1, #0x80000000
	cmp r0, r1
	bichi r0, r0, #0x80000000
	addhi r0, r0, #1
	add r0, r0, r3, lsr #15
	mvn r1, #0x80000000
	cmp r0, r1
	bichi r0, r0, #0x80000000
	addhi r0, r0, #1
	bx lr
	; .align 2, 0
_021EAFF4: .word 0x000041A7
	arm_func_end ov4_021EAFAC

	arm_func_start ov4_021EAFF8
ov4_021EAFF8: ; 0x021EAFF8
	stmfd sp!, {r3, lr}
	ldr r0, _021EB014 ; =0x022178D8
	ldr r0, [r0, #0]
	bl ov4_021EAFAC
	ldr r1, _021EB014 ; =0x022178D8
	str r0, [r1, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EB014: .word Unk_ov4_022178D8
	arm_func_end ov4_021EAFF8

	arm_func_start ov4_021EB018
ov4_021EB018: ; 0x021EB018
	cmp r0, #0
	bicne r1, r0, #0x80000000
	ldr r0, _021EB030 ; =0x022178D8
	moveq r1, #1
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_021EB030: .word Unk_ov4_022178D8
	arm_func_end ov4_021EB018

	arm_func_start ov4_021EB034
ov4_021EB034: ; 0x021EB034
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	subs r4, r1, r5
	ldmeqia sp!, {r3, r4, r5, pc}
	bl ov4_021EAFF8
	mov r1, r4
	bl _s32_div_f
	add r0, r1, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021EB034

	arm_func_start ov4_021EB058
ov4_021EB058: ; 0x021EB058
	stmfd sp!, {r3, lr}
	cmp r2, #0
	mov ip, #0
	ble _021EB080
	add lr, sp, #0
_021EB06C:
	ldrsb r3, [r0, ip]
	add ip, ip, #1
	cmp ip, r2
	strb r3, [lr], #1
	blt _021EB06C
_021EB080:
	cmp ip, #3
	bge _021EB0A4
	add r0, sp, #0
	add r2, r0, ip
	mov r0, #0
_021EB094:
	add ip, ip, #1
	cmp ip, #3
	strb r0, [r2], #1
	blt _021EB094
_021EB0A4:
	ldrb r0, [sp]
	mov r0, r0, asr #2
	strb r0, [r1]
	ldrb r2, [sp]
	ldrb r0, [sp, #1]
	mov r2, r2, lsl #0x1e
	mov r0, r0, asr #4
	orr r0, r0, r2, lsr #26
	strb r0, [r1, #1]
	ldrb r2, [sp, #1]
	ldrb r0, [sp, #2]
	mov r2, r2, lsl #0x1c
	mov r0, r0, asr #6
	orr r0, r0, r2, lsr #26
	strb r0, [r1, #2]
	ldrb r0, [sp, #2]
	and r0, r0, #0x3f
	strb r0, [r1, #3]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021EB058

	arm_func_start B64Encode
B64Encode: ; 0x021EB0F0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, r1
	mov r6, r2
	mov sl, r0
	mov r5, r7
	mov sb, r6
	cmp r3, #1
	beq _021EB11C
	cmp r3, #2
	beq _021EB124
	b _021EB12C
_021EB11C:
	ldr r4, _021EB218 ; =0x02215980
	b _021EB130
_021EB124:
	ldr r4, _021EB21C ; =0x02215984
	b _021EB130
_021EB12C:
	ldr r4, _021EB220 ; =0x02215988
_021EB130:
	cmp r6, #0
	ble _021EB168
	mov r8, #3
_021EB13C:
	cmp sb, #3
	movlt r2, sb
	movge r2, r8
	mov r0, sl
	mov r1, r7
	bl ov4_021EB058
	sub sb, sb, #3
	cmp sb, #0
	add r7, r7, #4
	add sl, sl, #3
	bgt _021EB13C
_021EB168:
	ldr r1, _021EB224 ; =0x55555556
	mov r2, #3
	smull r0, r3, r1, r6
	add r3, r3, r6, lsr #31
	smull r0, r1, r2, r3
	sub r3, r6, r0
	mov r1, r7
	cmp r3, #1
	subeq r1, r7, #2
	beq _021EB198
	cmp r3, #2
	subeq r1, r7, #1
_021EB198:
	mov r0, #0
	strb r0, [r7]
	cmp r7, r5
	ldmlsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EB1A8:
	sub r7, r7, #1
	cmp r7, r1
	ldrhssb r0, [r4, #2]
	strhsb r0, [r7]
	bhs _021EB20C
	ldrsb r0, [r7]
	cmp r0, #0x19
	addle r0, r0, #0x41
	strleb r0, [r7]
	ble _021EB20C
	cmp r0, #0x33
	addle r0, r0, #0x47
	strleb r0, [r7]
	ble _021EB20C
	cmp r0, #0x3d
	suble r0, r0, #4
	strleb r0, [r7]
	ble _021EB20C
	cmp r0, #0x3e
	ldreqsb r0, [r4]
	streqb r0, [r7]
	beq _021EB20C
	cmp r0, #0x3f
	ldreqsb r0, [r4, #1]
	streqb r0, [r7]
_021EB20C:
	cmp r7, r5
	bhi _021EB1A8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021EB218: .word Unk_ov4_02215980
_021EB21C: .word Unk_ov4_02215984
_021EB220: .word Unk_ov4_02215988
_021EB224: .word 0x55555556
	arm_func_end B64Encode

	.rodata


	.global Unk_ov4_02215980
Unk_ov4_02215980: ; 0x02215980
	.asciz "[]_"

	.global Unk_ov4_02215984
Unk_ov4_02215984: ; 0x02215984
	.asciz "-_="

	.global Unk_ov4_02215988
Unk_ov4_02215988: ; 0x02215988
	.asciz "+/="



	.data


	.global Unk_ov4_022178D8
Unk_ov4_022178D8: ; 0x022178D8
	.word 0x1

	.global Unk_ov4_022178DC
Unk_ov4_022178DC: ; 0x022178DC
	.ascii "time"
	.space 0x4

	.global Unk_ov4_022178E4
Unk_ov4_022178E4: ; 0x022178E4
	.ascii "current_time"
	.space 0x4

	.global Unk_ov4_022178F4
Unk_ov4_022178F4: ; 0x022178F4
	.ascii "OS_IsTickAvailable() == TRUE"
	.space 0x4

	.global Unk_ov4_02217914
Unk_ov4_02217914: ; 0x02217914
	.asciz "nonport.c"
	.space 0x2

	.global Unk_ov4_02217920
Unk_ov4_02217920: ; 0x02217920
	.asciz "localhost"
	.space 0x2


	.bss


	.global Unk_ov4_0221AF2C
Unk_ov4_0221AF2C: ; 0x0221AF2C
	.space 0x4

	.global Unk_ov4_0221AF30
Unk_ov4_0221AF30: ; 0x0221AF30
	.space 0x4

	.global Unk_ov4_0221AF34
Unk_ov4_0221AF34: ; 0x0221AF34
	.space 0x10

	.global Unk_ov4_0221AF44
Unk_ov4_0221AF44: ; 0x0221AF44
	.space 0x14

	.global Unk_ov4_0221AF58
Unk_ov4_0221AF58: ; 0x0221AF58
	.space 0x18

