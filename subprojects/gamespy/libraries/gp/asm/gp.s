	.include "macros/function.inc"
	.include "include/gp.inc"

	.extern Unk_ov4_0221AE50

	.text


	arm_func_start gpInitialize
gpInitialize: ; 0x021EB228
	stmfd sp!, {r3, lr}
	ldr r3, _021EB254 ; =0x0221AE50
	ldr r3, [r3, #0]
	cmp r3, #1
	movne r0, #2
	ldmneia sp!, {r3, pc}
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	bl gpiInitialize
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EB254: .word Unk_ov4_0221AE50
	arm_func_end gpInitialize

	arm_func_start gpDestroy
gpDestroy: ; 0x021EB258
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	ldmeqia sp!, {r3, pc}
	bl gpiDestroy
	ldmia sp!, {r3, pc}
	arm_func_end gpDestroy

	arm_func_start gpProcess
gpProcess: ; 0x021EB274
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	ldr r1, [r1, #0x108]
	cmp r1, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	mov r1, #0
	bl gpiProcess
	ldmia sp!, {r3, pc}
	arm_func_end gpProcess

	arm_func_start gpSetCallback
gpSetCallback: ; 0x021EB2A8
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne ip, [r0]
	cmpne ip, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	cmp r1, #0
	blt _021EB2D0
	cmp r1, #6
	blt _021EB2E0
_021EB2D0:
	ldr r1, _021EB2F4 ; =0x02217940
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r3, pc}
_021EB2E0:
	add r0, ip, r1, lsl #3
	str r2, [r0, #0x1a4]
	str r3, [r0, #0x1a8]
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EB2F4: .word Unk_ov4_02217940
	arm_func_end gpSetCallback

	arm_func_start gpConnectPreAuthenticatedA
gpConnectPreAuthenticatedA: ; 0x021EB2F8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x44
	movs lr, r0
	ldrne ip, [lr]
	cmpne ip, #0
	addeq sp, sp, #0x44
	moveq r0, #2
	ldmeqia sp!, {r3, r4, pc}
	cmp r1, #0
	ldrnesb r4, [r1]
	cmpne r4, #0
	addeq sp, sp, #0x44
	moveq r0, #2
	ldmeqia sp!, {r3, r4, pc}
	cmp r2, #0
	ldrnesb r4, [r2]
	cmpne r4, #0
	addeq sp, sp, #0x44
	moveq r0, #2
	ldmeqia sp!, {r3, r4, pc}
	ldr r4, [sp, #0x54]
	cmp r4, #0
	bne _021EB368
	ldr r1, _021EB3F4 ; =0x02217950
	bl gpiSetErrorString
	add sp, sp, #0x44
	mov r0, #2
	ldmia sp!, {r3, r4, pc}
_021EB368:
	ldr ip, [ip, #0x108]
	cmp ip, #0
	beq _021EB3B0
	add r3, sp, #0x24
	mov r0, #0
	mov r2, r3
	mov r1, r0
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2!, {r0, r1}
	stmia r2, {r0, r1}
	ldr r2, [sp, #0x58]
	mov r0, lr
	mov r1, r3
	blx r4
	add sp, sp, #0x44
	mov r0, #0
	ldmia sp!, {r3, r4, pc}
_021EB3B0:
	ldr lr, _021EB3F8 ; =0x02217960
	mov ip, #0
	str lr, [sp]
	stmib sp, {r1, r2, ip}
	str r3, [sp, #0x10]
	str ip, [sp, #0x14]
	ldr r1, [sp, #0x50]
	ldr ip, [sp, #0x58]
	str r1, [sp, #0x18]
	str r4, [sp, #0x1c]
	mov r1, lr
	mov r2, lr
	mov r3, lr
	str ip, [sp, #0x20]
	bl gpiConnect
	add sp, sp, #0x44
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_021EB3F4: .word Unk_ov4_02217950
_021EB3F8: .word Unk_ov4_02217960
	arm_func_end gpConnectPreAuthenticatedA

	arm_func_start gpDisconnect
gpDisconnect: ; 0x021EB3FC
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldrne r1, [r4]
	cmpne r1, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x108]
	cmp r1, #0
	ldmneia sp!, {r4, pc}
	mov r1, #1
	bl gpiDisconnect
	mov r0, r4
	bl gpiReset
	ldmia sp!, {r4, pc}
	arm_func_end gpDisconnect

	arm_func_start gpProfileSearchA
gpProfileSearchA: ; 0x021EB430
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x2c
	cmp r0, #0
	ldrne r4, [r0]
	cmpne r4, #0
	addeq sp, sp, #0x2c
	moveq r0, #2
	ldmeqia sp!, {r3, r4, pc}
	ldr ip, [sp, #0x48]
	cmp ip, #0
	bne _021EB470
	ldr r1, _021EB4F0 ; =0x02217950
	bl gpiSetErrorString
	add sp, sp, #0x2c
	mov r0, #2
	ldmia sp!, {r3, r4, pc}
_021EB470:
	ldr r4, [r4, #0x108]
	cmp r4, #0
	beq _021EB4B0
	add r1, sp, #0x1c
	mov r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, _021EB4F4 ; =0x00000601
	str r4, [r1, #8]
	str r4, [r1, #0]
	str r4, [r1, #4]
	str r4, [r1, #0xc]
	str r3, [sp, #0x24]
	blx ip
	add sp, sp, #0x2c
	mov r0, r4
	ldmia sp!, {r3, r4, pc}
_021EB4B0:
	ldr r4, [sp, #0x38]
	ldr lr, [sp, #0x3c]
	str r4, [sp]
	ldr r4, [sp, #0x40]
	str lr, [sp, #4]
	str r4, [sp, #8]
	mov r4, #0
	ldr lr, [sp, #0x44]
	str r4, [sp, #0xc]
	str lr, [sp, #0x10]
	ldr lr, [sp, #0x4c]
	str ip, [sp, #0x14]
	str lr, [sp, #0x18]
	bl gpiProfileSearch
	add sp, sp, #0x2c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_021EB4F0: .word Unk_ov4_02217950
_021EB4F4: .word 0x00000601
	arm_func_end gpProfileSearchA

	arm_func_start gpGetInfo
gpGetInfo: ; 0x021EB4F8
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x20c
	movs r5, r0
	ldrne r4, [r5]
	cmpne r4, #0
	cmpne r1, #0
	addeq sp, sp, #0x20c
	moveq r0, #2
	ldmeqia sp!, {r4, r5, pc}
	ldr lr, [sp, #0x218]
	cmp lr, #0
	bne _021EB53C
	ldr r1, _021EB5CC ; =0x02217950
	bl gpiSetErrorString
	add sp, sp, #0x20c
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021EB53C:
	ldr ip, [r4, #0x108]
	cmp ip, #0
	beq _021EB594
	mov r0, #0
	add lr, sp, #8
	mov r1, r0
	mov r2, r0
	mov r3, r0
	mov ip, #0x10
_021EB560:
	stmia lr!, {r0, r1, r2, r3}
	stmia lr!, {r0, r1, r2, r3}
	subs ip, ip, #1
	bne _021EB560
	ldr r2, [sp, #0x21c]
	str r0, [lr]
	ldr r3, [sp, #0x218]
	add r1, sp, #8
	mov r0, r5
	blx r3
	add sp, sp, #0x20c
	mov r0, #0
	ldmia sp!, {r4, r5, pc}
_021EB594:
	ldr ip, [r4, #0x1d8]
	cmp ip, #4
	bne _021EB5B4
	ldr r1, _021EB5D0 ; =0x02217964
	bl gpiSetErrorString
	add sp, sp, #0x20c
	mov r0, #2
	ldmia sp!, {r4, r5, pc}
_021EB5B4:
	ldr ip, [sp, #0x21c]
	str lr, [sp]
	str ip, [sp, #4]
	bl gpiGetInfo
	add sp, sp, #0x20c
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_021EB5CC: .word Unk_ov4_02217950
_021EB5D0: .word Unk_ov4_02217964
	arm_func_end gpGetInfo

	arm_func_start gpSetInfosA
gpSetInfosA: ; 0x021EB5D4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne ip, [r0]
	cmpne ip, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	ldr r3, [ip, #0x108]
	cmp r3, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r3, [ip, #0x1d8]
	cmp r3, #4
	bne _021EB618
	ldr r1, _021EB620 ; =0x02217964
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r3, pc}
_021EB618:
	bl gpiSetInfos
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EB620: .word Unk_ov4_02217964
	arm_func_end gpSetInfosA

	arm_func_start gpSendBuddyRequestA
gpSendBuddyRequestA: ; 0x021EB624
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	sub sp, sp, #0x400
	movs r6, r0
	ldrne r4, [r6]
	mov r5, r1
	cmpne r4, #0
	addeq sp, sp, #4
	addeq sp, sp, #0x400
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x108]
	cmp r1, #0
	addne sp, sp, #4
	addne sp, sp, #0x400
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r4, #0x1d8]
	cmp r1, #4
	bne _021EB68C
	ldr r1, _021EB778 ; =0x02217964
	bl gpiSetErrorString
	add sp, sp, #4
	add sp, sp, #0x400
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EB68C:
	cmp r2, #0
	bne _021EB6AC
	ldr r1, _021EB77C ; =0x02217994
	bl gpiSetErrorString
	add sp, sp, #4
	add sp, sp, #0x400
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, pc}
_021EB6AC:
	mov r1, r2
	ldr r2, _021EB780 ; =0x00000401
	add r0, sp, #0
	bl strzcpy
	ldrsb r0, [sp]
	cmp r0, #0
	beq _021EB6E8
	add r2, sp, #0
	mov r1, #0x2f
_021EB6D0:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021EB6D0
_021EB6E8:
	ldr r2, _021EB784 ; =0x022179A4
	mov r0, r6
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	ldr r2, _021EB788 ; =0x022179B0
	mov r0, r6
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	ldr r2, [r4, #0x198]
	mov r0, r6
	add r1, r4, #0x1f4
	bl gpiAppendIntToBuffer
	ldr r2, _021EB78C ; =0x022179BC
	mov r0, r6
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	mov r2, r5
	mov r0, r6
	add r1, r4, #0x1f4
	bl gpiAppendIntToBuffer
	ldr r2, _021EB790 ; =0x022179CC
	mov r0, r6
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	mov r0, r6
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl gpiAppendStringToBuffer
	ldr r2, _021EB794 ; =0x022179D8
	mov r0, r6
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	mov r0, #0
	add sp, sp, #4
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021EB778: .word Unk_ov4_02217964
_021EB77C: .word Unk_ov4_02217994
_021EB780: .word 0x00000401
_021EB784: .word Unk_ov4_022179A4
_021EB788: .word Unk_ov4_022179B0
_021EB78C: .word Unk_ov4_022179BC
_021EB790: .word Unk_ov4_022179CC
_021EB794: .word Unk_ov4_022179D8
	arm_func_end gpSendBuddyRequestA

	arm_func_start gpAuthBuddyRequest
gpAuthBuddyRequest: ; 0x021EB798
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	ldr r2, [r3, #0x108]
	cmp r2, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r2, [r3, #0x1d8]
	cmp r2, #4
	bne _021EB7DC
	ldr r1, _021EB7E4 ; =0x02217964
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r3, pc}
_021EB7DC:
	bl gpiAuthBuddyRequest
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EB7E4: .word Unk_ov4_02217964
	arm_func_end gpAuthBuddyRequest

	arm_func_start gpDenyBuddyRequest
gpDenyBuddyRequest: ; 0x021EB7E8
	stmfd sp!, {r3, r4, r5, lr}
	movs r4, r0
	ldrne r5, [r4]
	cmpne r5, #0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x108]
	cmp r2, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r2, [r5, #0x1d8]
	cmp r2, #4
	bne _021EB82C
	ldr r1, _021EB8A4 ; =0x02217964
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r3, r4, r5, pc}
_021EB82C:
	add r2, sp, #0
	bl gpiGetProfile
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	sub r0, r0, #1
	str r0, [r1, #0x14]
	ldr r0, [r5, #0x100]
	cmp r0, #0
	bne _021EB89C
	ldr r1, [sp]
	ldr r0, [r1, #0x14]
	cmp r0, #0
	bgt _021EB89C
	ldr r0, [r1, #0x10]
	bl DWCi_GsFree
	ldr r0, [sp]
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r0, [sp]
	bl gpiCanFreeProfile
	cmp r0, #0
	beq _021EB89C
	ldr r1, [sp]
	mov r0, r4
	bl gpiRemoveProfile
_021EB89C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021EB8A4: .word Unk_ov4_02217964
	arm_func_end gpDenyBuddyRequest

	arm_func_start gpGetNumBuddies
gpGetNumBuddies: ; 0x021EB8A8
	cmp r0, #0
	ldrne r2, [r0]
	cmpne r2, #0
	moveq r0, #2
	bxeq lr
	ldr r0, [r2, #0x108]
	cmp r0, #0
	mov r0, #0
	strne r0, [r1]
	ldreq r2, [r2, #0x430]
	streq r2, [r1]
	bx lr
	arm_func_end gpGetNumBuddies

	arm_func_start gpGetBuddyStatus
gpGetBuddyStatus: ; 0x021EB8D8
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r0
	ldrne r3, [r4]
	mov r5, r2
	cmpne r3, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r3, #0x108]
	cmp r2, #0
	beq _021EB918
	mov r0, r5
	mov r1, #0
	mov r2, #0x210
	bl memset
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021EB918:
	cmp r5, #0
	bne _021EB930
	ldr r1, _021EBA00 ; =0x022179E0
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021EB930:
	cmp r1, #0
	ldr r2, [r3, #0x430]
	blt _021EB944
	cmp r1, r2
	blt _021EB958
_021EB944:
	ldr r1, _021EBA04 ; =0x022179F0
	mov r0, r4
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021EB958:
	bl gpiFindBuddy
	movs r6, r0
	bne _021EB978
	ldr r1, _021EBA04 ; =0x022179F0
	mov r0, r4
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_021EB978:
	ldr r4, [r6, #8]
	cmp r4, #0
	bne _021EB998
	ldr r0, _021EBA08 ; =0x02217A00
	ldr r1, _021EBA0C ; =0x02217A0C
	ldr r2, _021EBA10 ; =0x0221792C
	ldr r3, _021EBA14 ; =0x000005CF
	bl __msl_assertion_failed
_021EB998:
	ldr r0, [r6, #0]
	str r0, [r5, #0]
	ldr r0, [r4, #4]
	str r0, [r5, #4]
	ldr r1, [r4, #8]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r1]
	beq _021EB9C8
	add r0, r5, #8
	mov r2, #0x100
	bl strzcpy
_021EB9C8:
	ldr r1, [r4, #0xc]
	cmp r1, #0
	moveq r0, #0
	streqb r0, [r1]
	beq _021EB9E8
	add r0, r5, #0x108
	mov r2, #0x100
	bl strzcpy
_021EB9E8:
	ldr r1, [r4, #0x10]
	mov r0, #0
	str r1, [r5, #0x208]
	ldr r1, [r4, #0x14]
	str r1, [r5, #0x20c]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021EBA00: .word Unk_ov4_022179E0
_021EBA04: .word Unk_ov4_022179F0
_021EBA08: .word Unk_ov4_02217A00
_021EBA0C: .word Unk_ov4_02217A0C
_021EBA10: .word Unk_ov4_0221792C
_021EBA14: .word 0x000005CF
	arm_func_end gpGetBuddyStatus

	arm_func_start gpGetBuddyIndex
gpGetBuddyIndex: ; 0x021EBA18
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r2
	cmp r0, #0
	ldrne r2, [r0]
	cmpne r2, #0
	addeq sp, sp, #4
	moveq r0, #2
	ldmeqia sp!, {r3, r4, pc}
	ldr r2, [r2, #0x108]
	cmp r2, #0
	movne r0, #0
	addne sp, sp, #4
	strne r0, [r4]
	ldmneia sp!, {r3, r4, pc}
	add r2, sp, #0
	bl gpiGetProfile
	cmp r0, #0
	ldrne r0, [sp]
	ldrne r0, [r0, #8]
	cmpne r0, #0
	ldrne r0, [r0]
	strne r0, [r4]
	mvneq r0, #0
	streq r0, [r4]
	mov r0, #0
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end gpGetBuddyIndex

	arm_func_start gpIsBuddy
gpIsBuddy: ; 0x021EBA88
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r2, [r0]
	cmpne r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r2, #0x108]
	cmp r2, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	add r2, sp, #0
	bl gpiGetProfile
	cmp r0, #0
	ldrne r0, [sp]
	ldrne r0, [r0, #8]
	cmpne r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end gpIsBuddy

	arm_func_start gpDeleteBuddy
gpDeleteBuddy: ; 0x021EBAD4
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne r3, [r0]
	cmpne r3, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	ldr r2, [r3, #0x108]
	cmp r2, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r2, [r3, #0x1d8]
	cmp r2, #4
	bne _021EBB18
	ldr r1, _021EBB28 ; =0x02217964
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r3, pc}
_021EBB18:
	bl gpiDeleteBuddy
	cmp r0, #0
	moveq r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EBB28: .word Unk_ov4_02217964
	arm_func_end gpDeleteBuddy

	arm_func_start gpSetStatusA
gpSetStatusA: ; 0x021EBB2C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x200
	movs r7, r0
	ldrne r4, [r7]
	mov r6, r1
	cmpne r4, #0
	mov r5, r3
	addeq sp, sp, #0x200
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x108]
	cmp r1, #0
	addne sp, sp, #0x200
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r4, #0x1d8]
	cmp r1, #4
	bne _021EBB88
	ldr r1, _021EBD38 ; =0x02217964
	bl gpiSetErrorString
	add sp, sp, #0x200
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021EBB88:
	cmp r2, #0
	bne _021EBBA4
	ldr r1, _021EBD3C ; =0x02217A14
	bl gpiSetErrorString
	add sp, sp, #0x200
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021EBBA4:
	cmp r5, #0
	bne _021EBBC0
	ldr r1, _021EBD40 ; =0x02217A2C
	bl gpiSetErrorString
	add sp, sp, #0x200
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021EBBC0:
	mov r1, r2
	add r0, sp, #0x100
	mov r2, #0x100
	bl strzcpy
	add r0, sp, #0x100
	ldrsb r0, [r0]
	cmp r0, #0
	beq _021EBC00
	add r2, sp, #0x100
	mov r1, #0x2f
_021EBBE8:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021EBBE8
_021EBC00:
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x100
	bl strzcpy
	ldrsb r0, [sp]
	cmp r0, #0
	beq _021EBC3C
	add r2, sp, #0
	mov r1, #0x2f
_021EBC24:
	ldrsb r0, [r2]
	cmp r0, #0x5c
	streqb r1, [r2]
	ldrsb r0, [r2, #1]!
	cmp r0, #0
	bne _021EBC24
_021EBC3C:
	ldr r0, [r4, #0x214]
	cmp r6, r0
	bne _021EBC78
	add r0, sp, #0x100
	add r1, r4, #0x218
	bl strcmp
	cmp r0, #0
	bne _021EBC78
	add r0, sp, #0
	add r1, r4, #0x318
	bl strcmp
	cmp r0, #0
	addeq sp, sp, #0x200
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021EBC78:
	add r1, sp, #0x100
	add r0, r4, #0x218
	mov r2, #0x100
	str r6, [r4, #0x214]
	bl strzcpy
	add r1, sp, #0
	add r0, r4, #0x318
	mov r2, #0x100
	bl strzcpy
	ldr r2, _021EBD44 ; =0x02217A44
	mov r0, r7
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	mov r0, r7
	mov r2, r6
	add r1, r4, #0x1f4
	bl gpiAppendIntToBuffer
	ldr r2, _021EBD48 ; =0x022179B0
	mov r0, r7
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	ldr r2, [r4, #0x198]
	mov r0, r7
	add r1, r4, #0x1f4
	bl gpiAppendIntToBuffer
	ldr r2, _021EBD4C ; =0x02217A50
	mov r0, r7
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0x100
	bl gpiAppendStringToBuffer
	ldr r2, _021EBD50 ; =0x02217A60
	mov r0, r7
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	mov r0, r7
	add r1, r4, #0x1f4
	add r2, sp, #0
	bl gpiAppendStringToBuffer
	ldr r2, _021EBD54 ; =0x022179D8
	mov r0, r7
	add r1, r4, #0x1f4
	bl gpiAppendStringToBuffer
	mov r0, #0
	add sp, sp, #0x200
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EBD38: .word Unk_ov4_02217964
_021EBD3C: .word Unk_ov4_02217A14
_021EBD40: .word Unk_ov4_02217A2C
_021EBD44: .word Unk_ov4_02217A44
_021EBD48: .word Unk_ov4_022179B0
_021EBD4C: .word Unk_ov4_02217A50
_021EBD50: .word Unk_ov4_02217A60
_021EBD54: .word Unk_ov4_022179D8
	arm_func_end gpSetStatusA

	arm_func_start gpSendBuddyMessageA
gpSendBuddyMessageA: ; 0x021EBD58
	stmfd sp!, {r3, lr}
	cmp r0, #0
	ldrne ip, [r0]
	mov r3, r2
	cmpne ip, #0
	moveq r0, #2
	ldmeqia sp!, {r3, pc}
	ldr r2, [ip, #0x108]
	cmp r2, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldr r2, [ip, #0x1d8]
	cmp r2, #4
	bne _021EBDA0
	ldr r1, _021EBDC4 ; =0x02217964
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r3, pc}
_021EBDA0:
	cmp r3, #0
	bne _021EBDB8
	ldr r1, _021EBDC8 ; =0x02217A6C
	bl gpiSetErrorString
	mov r0, #2
	ldmia sp!, {r3, pc}
_021EBDB8:
	mov r2, #1
	bl gpiSendBuddyMessage
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021EBDC4: .word Unk_ov4_02217964
_021EBDC8: .word Unk_ov4_02217A6C
	arm_func_end gpSendBuddyMessageA

	.data


	.global Unk_ov4_0221792C
Unk_ov4_0221792C: ; 0x0221792C
	.incbin "incbin/overlay4_data.bin", 0x1AAC, 0x1AC0 - 0x1AAC

	.global Unk_ov4_02217940
Unk_ov4_02217940: ; 0x02217940
	.incbin "incbin/overlay4_data.bin", 0x1AC0, 0x1AD0 - 0x1AC0

	.global Unk_ov4_02217950
Unk_ov4_02217950: ; 0x02217950
	.incbin "incbin/overlay4_data.bin", 0x1AD0, 0x1AE0 - 0x1AD0

	.global Unk_ov4_02217960
Unk_ov4_02217960: ; 0x02217960
	.incbin "incbin/overlay4_data.bin", 0x1AE0, 0x1AE4 - 0x1AE0

	.global Unk_ov4_02217964
Unk_ov4_02217964: ; 0x02217964
	.incbin "incbin/overlay4_data.bin", 0x1AE4, 0x1B14 - 0x1AE4

	.global Unk_ov4_02217994
Unk_ov4_02217994: ; 0x02217994
	.incbin "incbin/overlay4_data.bin", 0x1B14, 0x1B24 - 0x1B14

	.global Unk_ov4_022179A4
Unk_ov4_022179A4: ; 0x022179A4
	.incbin "incbin/overlay4_data.bin", 0x1B24, 0x1B30 - 0x1B24

	.global Unk_ov4_022179B0
Unk_ov4_022179B0: ; 0x022179B0
	.incbin "incbin/overlay4_data.bin", 0x1B30, 0x1B3C - 0x1B30

	.global Unk_ov4_022179BC
Unk_ov4_022179BC: ; 0x022179BC
	.incbin "incbin/overlay4_data.bin", 0x1B3C, 0x1B4C - 0x1B3C

	.global Unk_ov4_022179CC
Unk_ov4_022179CC: ; 0x022179CC
	.incbin "incbin/overlay4_data.bin", 0x1B4C, 0x1B58 - 0x1B4C

	.global Unk_ov4_022179D8
Unk_ov4_022179D8: ; 0x022179D8
	.incbin "incbin/overlay4_data.bin", 0x1B58, 0x1B60 - 0x1B58

	.global Unk_ov4_022179E0
Unk_ov4_022179E0: ; 0x022179E0
	.incbin "incbin/overlay4_data.bin", 0x1B60, 0x1B70 - 0x1B60

	.global Unk_ov4_022179F0
Unk_ov4_022179F0: ; 0x022179F0
	.incbin "incbin/overlay4_data.bin", 0x1B70, 0x1B80 - 0x1B70

	.global Unk_ov4_02217A00
Unk_ov4_02217A00: ; 0x02217A00
	.incbin "incbin/overlay4_data.bin", 0x1B80, 0x1B8C - 0x1B80

	.global Unk_ov4_02217A0C
Unk_ov4_02217A0C: ; 0x02217A0C
	.incbin "incbin/overlay4_data.bin", 0x1B8C, 0x1B94 - 0x1B8C

	.global Unk_ov4_02217A14
Unk_ov4_02217A14: ; 0x02217A14
	.incbin "incbin/overlay4_data.bin", 0x1B94, 0x1BAC - 0x1B94

	.global Unk_ov4_02217A2C
Unk_ov4_02217A2C: ; 0x02217A2C
	.incbin "incbin/overlay4_data.bin", 0x1BAC, 0x1BC4 - 0x1BAC

	.global Unk_ov4_02217A44
Unk_ov4_02217A44: ; 0x02217A44
	.incbin "incbin/overlay4_data.bin", 0x1BC4, 0x1BD0 - 0x1BC4

	.global Unk_ov4_02217A50
Unk_ov4_02217A50: ; 0x02217A50
	.incbin "incbin/overlay4_data.bin", 0x1BD0, 0x1BE0 - 0x1BD0

	.global Unk_ov4_02217A60
Unk_ov4_02217A60: ; 0x02217A60
	.incbin "incbin/overlay4_data.bin", 0x1BE0, 0x1BEC - 0x1BE0

	.global Unk_ov4_02217A6C
Unk_ov4_02217A6C: ; 0x02217A6C
	.incbin "incbin/overlay4_data.bin", 0x1BEC, 0x11

