	.include "macros/function.inc"
	.include "include/dwc_netcheck.inc"

	.extern OSi_ThreadInfo
	.extern Unk_021D0D40

	.extern Unk_ov4_02215EA0
	.text


	arm_func_start DWC_Netcheck_Create
DWC_Netcheck_Create: ; 0x021D5818
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _021D58E0 ; =0x0221A438
	mov r5, r0
	ldr r0, [r1, #0]
	ldr r4, [r5, #0]
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _021D58E4 ; =0x02216384
	ldr r1, _021D58E8 ; =0x000011F4
	blx r4
	ldr r1, _021D58E0 ; =0x0221A438
	cmp r0, #0
	str r0, [r1, #0]
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _021D58E8 ; =0x000011F4
	mov r1, #0
	bl MI_CpuFill8
	ldr ip, _021D58E0 ; =0x0221A438
	ldr r1, _021D58EC ; =0xFFFE7961
	ldr r0, [ip]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldr r3, [ip]
	ldmia r5, {r0, r1, r2}
	add r3, r3, #0x108
	add r3, r3, #0x1000
	stmia r3, {r0, r1, r2}
	ldr r0, [ip, #0x14]
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _021D58F0 ; =0x02216398
	ldr r1, _021D58F4 ; =0x00001C14
	blx r4
	ldr r1, _021D58E0 ; =0x0221A438
	cmp r0, #0
	str r0, [r1, #0x14]
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r1, #4]
	ldr r0, [r1, #0]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_InitMutex
	bl ov4_021D5AB0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021D58E0: .word Unk_ov4_0221A438
_021D58E4: .word Unk_ov4_02216384
_021D58E8: .word 0x000011F4
_021D58EC: .word 0xFFFE7961
_021D58F0: .word Unk_ov4_02216398
_021D58F4: .word 0x00001C14
	arm_func_end DWC_Netcheck_Create

	arm_func_start DWC_Netcheck_Destroy
DWC_Netcheck_Destroy: ; 0x021D58F8
	stmfd sp!, {r4, lr}
	ldr r0, _021D59DC ; =0x0221A438
	ldr r1, [r0, #0]
	ldr r0, [r0, #0x14]
	add r1, r1, #0x1000
	cmp r0, #0
	ldr r4, [r1, #0x10c]
	beq _021D593C
	bl DWC_Http_Destroy
	ldr r1, _021D59DC ; =0x0221A438
	ldr r0, _021D59E0 ; =0x022163A8
	ldr r1, [r1, #0x14]
	mov r2, #0
	blx r4
	ldr r0, _021D59DC ; =0x0221A438
	mov r1, #0
	str r1, [r0, #0x14]
_021D593C:
	bl DWC_Auth_Destroy
	ldr r0, _021D59DC ; =0x0221A438
	ldr r0, [r0, #0]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x1000
	ldr r1, [r0, #0x114]
	cmp r1, #0
	beq _021D5980
	ldr r0, _021D59E4 ; =0x022163B8
	mov r2, #0
	blx r4
	ldr r0, _021D59DC ; =0x0221A438
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #0x114]
_021D5980:
	ldr r0, _021D59DC ; =0x0221A438
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _021D59B8
	ldr r0, _021D59E8 ; =0x022163D4
	mov r2, #0
	blx r4
	ldr r0, _021D59DC ; =0x0221A438
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #0x118]
_021D59B8:
	ldr r1, _021D59DC ; =0x0221A438
	ldr r0, _021D59EC ; =0x022163F4
	ldr r1, [r1, #0]
	mov r2, #0
	blx r4
	ldr r0, _021D59DC ; =0x0221A438
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D59DC: .word Unk_ov4_0221A438
_021D59E0: .word Unk_ov4_022163A8
_021D59E4: .word Unk_ov4_022163B8
_021D59E8: .word Unk_ov4_022163D4
_021D59EC: .word Unk_ov4_022163F4
	arm_func_end DWC_Netcheck_Destroy

	arm_func_start DWC_Netcheck_Abort
DWC_Netcheck_Abort: ; 0x021D59F0
	stmfd sp!, {r3, lr}
	ldr r0, _021D5A54 ; =0x0221A438
	ldr r1, [r0, #0]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _021D5A14
	bl DWC_Http_Abort
_021D5A14:
	bl DWC_Auth_Abort
	ldr r0, _021D5A54 ; =0x0221A438
	ldr r1, [r0, #0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _021D5A3C
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_JoinThread
_021D5A3C:
	ldr r0, _021D5A54 ; =0x0221A438
	mvn r1, #6
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D5A54: .word Unk_ov4_0221A438
	arm_func_end DWC_Netcheck_Abort

	arm_func_start DWC_Netcheck_GetError
DWC_Netcheck_GetError: ; 0x021D5A58
	stmfd sp!, {r4, lr}
	ldr r0, _021D5A94 ; =0x0221A438
	ldr r0, [r0, #0]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, _021D5A94 ; =0x0221A438
	ldr r1, [r0, #0]
	add r0, r1, #0x1dc
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1, #0]
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D5A94: .word Unk_ov4_0221A438
	arm_func_end DWC_Netcheck_GetError

	arm_func_start DWC_Netcheck_GetReturnCode
DWC_Netcheck_GetReturnCode: ; 0x021D5A98
	ldr r0, _021D5AAC ; =0x0221A438
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	bx lr
	; .align 2, 0
_021D5AAC: .word Unk_ov4_0221A438
	arm_func_end DWC_Netcheck_GetReturnCode

	arm_func_start ov4_021D5AB0
ov4_021D5AB0: ; 0x021D5AB0
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _021D5B30 ; =0x0221A438
	ldr r1, [r0, #0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x188]
	cmp r0, #0
	beq _021D5AE8
	add r0, r1, #0x11c
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
_021D5AE8:
	ldr r0, _021D5B30 ; =0x0221A438
	mov r3, #0x1000
	ldr r2, [r0, #0]
	ldr r1, _021D5B34 ; =ov4_021D5B38
	add r0, r2, #0x11c
	str r3, [sp]
	mov ip, #0x10
	add r0, r0, #0x1000
	add r3, r2, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _021D5B30 ; =0x0221A438
	ldr r0, [r0, #0]
	add r0, r0, #0x11c
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D5B30: .word Unk_ov4_0221A438
_021D5B34: .word ov4_021D5B38
	arm_func_end ov4_021D5AB0

	arm_func_start ov4_021D5B38
ov4_021D5B38: ; 0x021D5B38
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x29c
	ldr r5, _021D69BC ; =0x0221A438
	mov sb, #0
	ldr r0, [r5, #0]
	mov fp, sb
	add r0, r0, #0x1000
	ldr r7, [r0, #0x108]
	ldr r8, [r0, #0x10c]
	mvn r0, #2
	str r0, [sp, #0x20]
	sub r0, r0, #1
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	mov sl, sb
	sub r0, r0, #2
	str r0, [sp, #0x28]
	ldr r0, _021D69C0 ; =0x00009C40
	mov r4, sb
	mov r0, r0, lsr #1
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x1c]
_021D5B98:
	ldr r0, _021D69C4 ; =0x0221635C
	ldr r1, _021D69C8 ; =0x0221A450
	ldr r0, [r0, #0]
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	mov r0, #0x1000
	str r0, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r0, [sp, #0x18]
	str r8, [r5, #0x28]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0]
	add r2, r0, #0x1000
	ldr r0, [sp, #0x1c]
	str r0, [r2, #4]
	ldr r0, [r5, #0x14]
	bl DWC_Http_Create
	cmp r0, #0
	beq _021D5C00
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #1
	bl ov4_021D6A44
	b _021D6968
_021D5C00:
	ldr r0, [r5, #0x14]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _021D5C28
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #1
	bl ov4_021D6A44
	b _021D6968
_021D5C28:
	ldr r0, _021D69CC ; =0x021CCC80
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl DWC_Http_StartThread
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021D5C60
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_021D5C60:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021D5C80
	cmp r1, #8
	beq _021D5CAC
	b _021D5C94
_021D5C80:
	ldr r0, _021D69BC ; =0x0221A438
	mvn r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021D5C94:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #3
	bl ov4_021D6A44
	b _021D6968
_021D5CAC:
	mov r1, #0
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _021D5CD4
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #2
	bl ov4_021D6A44
	b _021D6968
_021D5CD4:
	ldr r0, [r5, #0x14]
	ldr r1, _021D69D0 ; =0x02216470
	bl DWC_Http_GetResult
	bl atoi
	mov r6, r0
	ldr r0, _021D69D4 ; =0x021D0D40
	ldr r0, [r0, #0]
	cmp r0, #0x22
	bne _021D5D04
	mov r0, #2
	bl ov4_021D6A44
	b _021D6968
_021D5D04:
	cmp r6, #0xc8
	beq _021D5D1C
	ldr r0, _021D69D8 ; =0x0000012E
	cmp r6, r0
	beq _021D5D30
	b _021D6018
_021D5D1C:
	ldr r0, [r5, #0x14]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x12c]
	str r0, [r5, #8]
	b _021D6030
_021D5D30:
	mov r0, #1
	str r0, [r5, #4]
	ldr r0, [r5, #0]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x118]
	cmp r1, #0
	beq _021D5F80
	ldr r1, _021D69BC ; =0x0221A438
	mvn r2, #5
	str r2, [r0, #4]
	ldr r0, [r1, #0x14]
	bl DWC_Http_Destroy
	ldr r0, _021D69DC ; =0x02215EA0
	ldr r2, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0]
	mov r1, #0
	str r0, [r2, #0x18]
	str r1, [r2, #0x1c]
	mov r1, #0x200
	str r1, [r2, #0x20]
	str r7, [r2, #0x24]
	ldr r3, _021D69E0 ; =0x00004E20
	str r8, [r2, #0x28]
	ldr r1, _021D69E4 ; =0x0221647C
	str r3, [r2, #0x30]
	bl strcmp
	cmp r0, #0
	ldrne r0, _021D69BC ; =0x0221A438
	movne r1, #1
	strne r1, [r0, #0x2c]
	ldr r0, _021D69BC ; =0x0221A438
	ldr r1, _021D69C8 ; =0x0221A450
	ldr r0, [r0, #0x14]
	bl DWC_Http_Create
	cmp r0, #0
	beq _021D5DD8
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #1
	bl ov4_021D6A44
	b _021D6968
_021D5DD8:
	add r0, sp, #0x44
	bl DWC_Auth_GetCalInfoFromNVRAM
	cmp r0, #0
	beq _021D5E04
	ldr r0, _021D69BC ; =0x0221A438
	add r1, sp, #0x44
	ldr r0, [r0, #0x14]
	mov r2, #1
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	bne _021D5E1C
_021D5E04:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #8
	bl ov4_021D6A44
	b _021D6968
_021D5E1C:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r1, _021D69E8 ; =0x0221649C
	ldr r0, [r0, #0x14]
	ldr r2, _021D69EC ; =0x022164A4
	mov r3, #7
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	bne _021D5E74
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	ldr r4, [r0, #0x118]
	mov r0, r4
	bl strlen
	ldr r1, _021D69BC ; =0x0221A438
	mov r3, r0
	ldr r0, [r1, #0x14]
	ldr r1, _021D69F0 ; =0x022164AC
	mov r2, r4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _021D5E8C
_021D5E74:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #8
	bl ov4_021D6A44
	b _021D6968
_021D5E8C:
	ldr r1, _021D69BC ; =0x0221A438
	ldr r0, _021D69F4 ; =0x022163D4
	ldr r1, [r1, #0]
	mov r2, #0
	add r1, r1, #0x1000
	ldr r1, [r1, #0x118]
	blx r8
	ldr r1, _021D69BC ; =0x0221A438
	mov r2, #0
	ldr r0, [r1, #0]
	add r0, r0, #0x1000
	str r2, [r0, #0x118]
	ldr r0, [r1, #0x14]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _021D5EE4
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #1
	bl ov4_021D6A44
	b _021D6968
_021D5EE4:
	ldr r0, _021D69CC ; =0x021CCC80
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r2, _021D69BC ; =0x0221A438
	sub r1, r0, #1
	ldr r0, [r2, #0x14]
	bl DWC_Http_StartThread
	ldr r0, _021D69BC ; =0x0221A438
	ldr r1, [r0, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021D5F24
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_021D5F24:
	ldr r2, _021D69BC ; =0x0221A438
	ldr r0, [r2, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021D5F48
	cmp r1, #8
	beq _021D5F70
	b _021D5F58
_021D5F48:
	ldr r0, [r2, #0]
	mvn r1, #0
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021D5F58:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #3
	bl ov4_021D6A44
	b _021D6968
_021D5F70:
	bl DWC_Http_Destroy
	mov r0, #7
	bl ov4_021D6A44
	b _021D6968
_021D5F80:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0xa08]
	str r1, [sp, #0x14]
	cmp r1, #0
	bne _021D5FA8
	bl DWC_Http_Destroy
	mov r0, #2
	bl ov4_021D6A44
	b _021D6968
_021D5FA8:
	mov r0, r1
	bl strlen
	add r1, r0, #1
	ldr r0, _021D69F8 ; =0x02216408
	blx r7
	ldr r1, [r5, #0]
	add r1, r1, #0x1000
	str r0, [r1, #0x114]
	ldr r0, [r5, #0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x114]
	str r0, [sp, #4]
	cmp r0, #0
	bne _021D5FF8
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #4
	bl ov4_021D6A44
	b _021D6968
_021D5FF8:
	ldr r0, [sp, #0x14]
	bl strlen
	mov r2, r0
	ldr r1, [sp, #0x14]
	ldr r0, [sp, #4]
	add r2, r2, #1
	bl strncpy
	b _021D6030
_021D6018:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #0xa
	bl ov4_021D6A44
	b _021D6968
_021D6030:
	ldr r0, [r5, #0x14]
	bl DWC_Http_Destroy
	add r0, sp, #0x30
	bl sub_020A283C
	ldr r2, [sp, #0x30]
	ldr r1, [sp, #0x34]
	mov r0, #0
	cmp r1, r0
	cmpeq r2, r4
	bne _021D6160
	ldr r1, [r5, #0]
	ldr r0, _021D69FC ; =0x0221A46C
	add r2, r1, #0x1000
	ldr r1, [sp, #0x20]
	str r1, [r2, #4]
	mov r1, #0
	strh r1, [r5, #0x34]
	strb r1, [r5, #0x68]
	ldr r1, [r5, #0]
	add r1, r1, #0x1000
	ldr r2, [r1, #0x108]
	str r2, [r5, #0x74]
	ldr r1, [r1, #0x10c]
	str r1, [r5, #0x78]
	ldr r1, [r5, #0x14]
	bl DWC_Auth_Create
	cmp r0, #0
	beq _021D60AC
	mov r0, #5
	bl ov4_021D6A44
	b _021D6968
_021D60AC:
	bl DWC_Auth_Join
	bl DWC_Auth_GetError
	cmp r0, #0x15
	beq _021D615C
	bl DWC_Auth_GetError
	cmp r0, #9
	bne _021D60E0
	ldr r0, _021D69BC ; =0x0221A438
	mvn r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	b _021D614C
_021D60E0:
	add r0, sp, #0xd8
	bl DWC_Auth_GetResult
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0xc]
	cmp r0, #1
	bne _021D6138
	ldr r1, [sp, #0xd8]
	ldr r0, _021D6A00 ; =0xFFFFA4FA
	cmp r1, r0
	beq _021D6114
	bl DWC_Auth_GetError
	cmp r0, #0xb
	bne _021D6138
_021D6114:
	ldr r0, _021D69BC ; =0x0221A438
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
	bl DWC_Auth_Destroy
	mov r0, #0xb
	bl ov4_021D6A44
	b _021D6968
_021D6138:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r1, [sp, #0xd8]
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021D614C:
	bl DWC_Auth_Destroy
	mov r0, #6
	bl ov4_021D6A44
	b _021D6968
_021D615C:
	bl DWC_Auth_Destroy
_021D6160:
	cmp r6, #0xc8
	bne _021D6188
	ldr r0, _021D69BC ; =0x0221A438
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl ov4_021D6A44
	b _021D6968
_021D6188:
	ldr r0, [r5, #0]
	ldr r1, _021D69E4 ; =0x0221647C
	add r2, r0, #0x1000
	ldr r0, [sp, #0x24]
	str r0, [r2, #4]
	ldr r0, _021D69DC ; =0x02215EA0
	mov r2, #0
	ldr r0, [r0, #0]
	str r0, [r5, #0x18]
	str r2, [r5, #0x1c]
	mov r2, #0x1000
	str r2, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r2, _021D69C0 ; =0x00009C40
	str r8, [r5, #0x28]
	str r2, [r5, #0x30]
	bl strcmp
	cmp r0, #0
	movne r0, #1
	strne r0, [r5, #0x2c]
	ldr r0, [r5, #0x14]
	ldr r1, _021D69C8 ; =0x0221A450
	bl DWC_Http_Create
	cmp r0, #0
	beq _021D6204
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #1
	bl ov4_021D6A44
	b _021D6968
_021D6204:
	add r0, sp, #0x44
	bl DWC_Auth_GetCalInfoFromNVRAM
	cmp r0, #0
	beq _021D622C
	ldr r0, [r5, #0x14]
	add r1, sp, #0x44
	mov r2, #1
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	bne _021D6244
_021D622C:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #8
	bl ov4_021D6A44
	b _021D6968
_021D6244:
	ldr r0, [r5, #0x14]
	ldr r1, _021D69E8 ; =0x0221649C
	ldr r2, _021D6A04 ; =0x022164BC
	mov r3, #5
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	bne _021D6290
	ldr r0, [r5, #0]
	add r0, r0, #0x1000
	ldr r6, [r0, #0x114]
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r0, [r5, #0x14]
	ldr r1, _021D6A08 ; =0x022164C4
	mov r2, r6
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _021D62A8
_021D6290:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #8
	bl ov4_021D6A44
	b _021D6968
_021D62A8:
	ldr r1, [r5, #0]
	ldr r0, _021D6A0C ; =0x022163B8
	add r1, r1, #0x1000
	ldr r1, [r1, #0x114]
	mov r2, #0
	blx r8
	ldr r0, [r5, #0]
	add r1, r0, #0x1000
	mov r0, #0
	str r0, [r1, #0x114]
	ldr r0, [r5, #0x14]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _021D62F8
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #1
	bl ov4_021D6A44
	b _021D6968
_021D62F8:
	ldr r0, _021D69CC ; =0x021CCC80
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl DWC_Http_StartThread
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021D6330
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_021D6330:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021D6394
	cmp r1, #3
	beq _021D6358
	cmp r1, #8
	beq _021D63C0
	b _021D63A8
_021D6358:
	bl DWC_Http_Destroy
	ldr r0, _021D69BC ; =0x0221A438
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bne _021D6388
	ldr r0, [r0, #0]
	mov r2, #0
	add r1, r0, #0x1000
	mov r0, #0xb
	str r2, [r1, #4]
	bl ov4_021D6A44
	b _021D6968
_021D6388:
	mov r0, #3
	bl ov4_021D6A44
	b _021D6968
_021D6394:
	ldr r0, _021D69BC ; =0x0221A438
	mvn r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021D63A8:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #3
	bl ov4_021D6A44
	b _021D6968
_021D63C0:
	mov r1, #0
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _021D63E8
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #2
	bl ov4_021D6A44
	b _021D6968
_021D63E8:
	ldr r0, [r5, #0x14]
	ldr r1, _021D69D0 ; =0x02216470
	bl DWC_Http_GetResult
	bl atoi
	mov r6, r0
	ldr r0, _021D69D4 ; =0x021D0D40
	ldr r0, [r0, #0]
	cmp r0, #0x22
	bne _021D6424
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #2
	bl ov4_021D6A44
	b _021D6968
_021D6424:
	cmp r6, #0xc8
	beq _021D6478
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	ldr r1, _021D69BC ; =0x0221A438
	ldr r0, [r1, #0xc]
	cmp r0, #1
	ldreq r0, _021D69D8 ; =0x0000012E
	cmpeq r6, r0
	bne _021D646C
	ldr r0, [r1, #0]
	mov r2, #0
	add r1, r0, #0x1000
	mov r0, #0xb
	str r2, [r1, #4]
	bl ov4_021D6A44
	b _021D6968
_021D646C:
	mov r0, #2
	bl ov4_021D6A44
	b _021D6968
_021D6478:
	ldr r0, [r5, #0x14]
	ldr r1, _021D6A10 ; =0x022164CC
	add r2, sp, #0x2c
	mov r3, #4
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bgt _021D64AC
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #9
	bl ov4_021D6A44
	b _021D6968
_021D64AC:
	add r0, sp, #0x2c
	bl atoi
	ldr r1, _021D69D4 ; =0x021D0D40
	ldr r1, [r1, #0]
	cmp r1, #0x22
	bne _021D64DC
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #9
	bl ov4_021D6A44
	b _021D6968
_021D64DC:
	ldr r1, [r5, #0xc]
	cmp r1, #1
	cmpeq r0, #0x72
	bne _021D650C
	ldr r0, _021D69BC ; =0x0221A438
	mov r2, #0
	ldr r1, [r0, #0]
	mov r0, #0xb
	add r1, r1, #0x1000
	str r2, [r1, #4]
	bl ov4_021D6A44
	b _021D6968
_021D650C:
	cmp r0, #0x64
	blt _021D652C
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #6
	bl ov4_021D6A44
	b _021D6968
_021D652C:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _021D6A14 ; =0x022164D8
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	str r0, [sp, #0x10]
	cmp r0, #0
	bgt _021D6564
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #9
	bl ov4_021D6A44
	b _021D6968
_021D6564:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _021D6A18 ; =0x022164DC
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	str r0, [sp, #0xc]
	cmp r0, #0
	bgt _021D659C
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #9
	bl ov4_021D6A44
	b _021D6968
_021D659C:
	mov r2, #0
	ldr r0, [r5, #0x14]
	ldr r1, _021D6A1C ; =0x022164E4
	mov r3, r2
	bl DWC_Http_GetBase64DecodedResult
	ldr r1, [sp, #0x10]
	mov r6, r0
	ldr r0, _021D6A20 ; =0x02216424
	add r1, r1, #1
	blx r7
	movs sb, r0
	bne _021D65E4
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #4
	bl ov4_021D6A44
	b _021D6968
_021D65E4:
	ldr r1, [sp, #0xc]
	ldr r0, _021D6A24 ; =0x02216430
	add r1, r1, #1
	blx r7
	movs fp, r0
	bne _021D6614
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #4
	bl ov4_021D6A44
	b _021D6968
_021D6614:
	cmp r6, #0
	ble _021D6648
	ldr r0, _021D6A28 ; =0x02216440
	add r1, r6, #1
	blx r7
	movs sl, r0
	bne _021D6648
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #4
	bl ov4_021D6A44
	b _021D6968
_021D6648:
	ldr r0, [sp, #0x10]
	ldr r1, _021D6A14 ; =0x022164D8
	add r3, r0, #1
	ldr r0, [r5, #0x14]
	mov r2, sb
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _021D6680
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #9
	bl ov4_021D6A44
	b _021D6968
_021D6680:
	ldr r1, [sp, #0xc]
	mov r2, fp
	add r3, r1, #1
	mov r1, #0
	strb r1, [sb, r0]
	ldr r0, [r5, #0x14]
	ldr r1, _021D6A18 ; =0x022164DC
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _021D66C0
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #9
	bl ov4_021D6A44
	b _021D6968
_021D66C0:
	mov r1, #0
	strb r1, [fp, r0]
	mov r0, r1
	cmp r6, #0
	str r0, [sp, #8]
	ble _021D675C
	ldr r0, [r5, #0x14]
	ldr r1, _021D6A1C ; =0x022164E4
	add r3, r6, #1
	mov r2, sl
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bge _021D670C
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #9
	bl ov4_021D6A44
	b _021D6968
_021D670C:
	mov r1, #0
	strb r1, [sl, r0]
	mov r0, sl
	bl atoi
	ldr r1, _021D69D4 ; =0x021D0D40
	ldr r1, [r1, #0]
	cmp r1, #0x22
	bne _021D6744
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #9
	bl ov4_021D6A44
	b _021D6968
_021D6744:
	mov r1, #0x3e8
	mul r1, r0, r1
	ldr r0, _021D6A2C ; =0x0002BF20
	str r1, [sp, #8]
	cmp r1, r0
	strgt r0, [sp, #8]
_021D675C:
	ldr r0, [r5, #0x14]
	bl DWC_Http_Destroy
	ldr r0, [r5, #0]
	ldr r1, _021D69C8 ; =0x0221A450
	add r2, r0, #0x1000
	ldr r0, [sp, #0x28]
	str r0, [r2, #4]
	str sb, [r5, #0x18]
	mov r0, #0
	str r0, [r5, #0x1c]
	mov r0, #0x1000
	str r0, [r5, #0x20]
	str r7, [r5, #0x24]
	ldr r0, _021D6A30 ; =0x0001D4C0
	str r8, [r5, #0x28]
	str r0, [r5, #0x30]
	ldr r0, [r5, #0x14]
	bl DWC_Http_Create
	cmp r0, #0
	beq _021D67C4
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #1
	bl ov4_021D6A44
	b _021D6968
_021D67C4:
	ldr r0, [r5, #0x14]
	mov r1, fp
	bl DWC_Http_Add_Body
	cmp r0, #0
	beq _021D67F0
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #8
	bl ov4_021D6A44
	b _021D6968
_021D67F0:
	ldr r0, [r5, #0x14]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	beq _021D6818
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #1
	bl ov4_021D6A44
	b _021D6968
_021D6818:
	ldr r0, _021D69CC ; =0x021CCC80
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	sub r1, r0, #1
	ldr r0, [r5, #0x14]
	bl DWC_Http_StartThread
	ldr r1, [r5, #0x14]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021D6850
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_021D6850:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #2
	beq _021D6870
	cmp r1, #8
	beq _021D689C
	b _021D6884
_021D6870:
	ldr r0, _021D69BC ; =0x0221A438
	mvn r1, #0
	ldr r0, [r0, #0]
	add r0, r0, #0x1000
	str r1, [r0, #4]
_021D6884:
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #3
	bl ov4_021D6A44
	b _021D6968
_021D689C:
	mov r1, #1
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _021D68C4
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #2
	bl ov4_021D6A44
	b _021D6968
_021D68C4:
	ldr r0, [r5, #0x14]
	add r1, r0, #0x1000
	ldr r6, [r1, #0xa08]
	cmp r6, #0
	bne _021D68E8
	bl DWC_Http_Destroy
	mov r0, #2
	bl ov4_021D6A44
	b _021D6968
_021D68E8:
	mov r0, r6
	bl strlen
	add r1, r0, #1
	ldr r0, _021D6A34 ; =0x02216450
	blx r7
	ldr r1, [r5, #0]
	add r1, r1, #0x1000
	str r0, [r1, #0x118]
	ldr r0, [r5, #0]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x118]
	str r0, [sp]
	cmp r0, #0
	bne _021D6938
	ldr r0, _021D69BC ; =0x0221A438
	ldr r0, [r0, #0x14]
	bl DWC_Http_Destroy
	mov r0, #4
	bl ov4_021D6A44
	b _021D6968
_021D6938:
	mov r0, r6
	bl strlen
	mov r2, r0
	ldr r0, [sp]
	mov r1, r6
	add r2, r2, #1
	bl strncpy
	ldr r0, [r5, #0x14]
	bl DWC_Http_Destroy
	ldr r0, [sp, #8]
	bl OS_Sleep
	b _021D5B98
_021D6968:
	cmp sb, #0
	beq _021D6980
	ldr r0, _021D6A38 ; =0x022164EC
	mov r1, sb
	mov r2, #0
	blx r8
_021D6980:
	cmp fp, #0
	beq _021D6998
	ldr r0, _021D6A3C ; =0x022164F8
	mov r1, fp
	mov r2, #0
	blx r8
_021D6998:
	cmp sl, #0
	addeq sp, sp, #0x29c
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _021D6A40 ; =0x02216504
	mov r1, sl
	mov r2, #0
	blx r8
	add sp, sp, #0x29c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021D69BC: .word Unk_ov4_0221A438
_021D69C0: .word 0x00009C40
_021D69C4: .word Unk_ov4_0221635C
_021D69C8: .word Unk_ov4_0221A450
_021D69CC: .word OSi_ThreadInfo
_021D69D0: .word Unk_ov4_02216470
_021D69D4: .word Unk_021D0D40
_021D69D8: .word 0x0000012E
_021D69DC: .word Unk_ov4_02215EA0
_021D69E0: .word 0x00004E20
_021D69E4: .word Unk_ov4_0221647C
_021D69E8: .word Unk_ov4_0221649C
_021D69EC: .word Unk_ov4_022164A4
_021D69F0: .word Unk_ov4_022164AC
_021D69F4: .word Unk_ov4_022163D4
_021D69F8: .word Unk_ov4_02216408
_021D69FC: .word Unk_ov4_0221A46C
_021D6A00: .word 0xFFFFA4FA
_021D6A04: .word Unk_ov4_022164BC
_021D6A08: .word Unk_ov4_022164C4
_021D6A0C: .word Unk_ov4_022163B8
_021D6A10: .word Unk_ov4_022164CC
_021D6A14: .word Unk_ov4_022164D8
_021D6A18: .word Unk_ov4_022164DC
_021D6A1C: .word Unk_ov4_022164E4
_021D6A20: .word Unk_ov4_02216424
_021D6A24: .word Unk_ov4_02216430
_021D6A28: .word Unk_ov4_02216440
_021D6A2C: .word 0x0002BF20
_021D6A30: .word 0x0001D4C0
_021D6A34: .word Unk_ov4_02216450
_021D6A38: .word Unk_ov4_022164EC
_021D6A3C: .word Unk_ov4_022164F8
_021D6A40: .word Unk_ov4_02216504
	arm_func_end ov4_021D5B38

	arm_func_start ov4_021D6A44
ov4_021D6A44: ; 0x021D6A44
	stmfd sp!, {r4, lr}
	ldr r1, _021D6A84 ; =0x0221A438
	mov r4, r0
	ldr r0, [r1, #0]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _021D6A84 ; =0x0221A438
	ldr r0, [r1, #0]
	add r0, r0, #0x1000
	str r4, [r0, #0]
	ldr r0, [r1, #0]
	add r0, r0, #0x1dc
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D6A84: .word Unk_ov4_0221A438
	arm_func_end ov4_021D6A44

	.data


	.global Unk_ov4_0221635C
Unk_ov4_0221635C: ; 0x0221635C
	.incbin "incbin/overlay4_data.bin", 0x4DC, 0x4E0 - 0x4DC

	.global Unk_ov4_02216360
Unk_ov4_02216360: ; 0x02216360
	.incbin "incbin/overlay4_data.bin", 0x4E0, 0x504 - 0x4E0

	.global Unk_ov4_02216384
Unk_ov4_02216384: ; 0x02216384
	.incbin "incbin/overlay4_data.bin", 0x504, 0x518 - 0x504

	.global Unk_ov4_02216398
Unk_ov4_02216398: ; 0x02216398
	.incbin "incbin/overlay4_data.bin", 0x518, 0x528 - 0x518

	.global Unk_ov4_022163A8
Unk_ov4_022163A8: ; 0x022163A8
	.incbin "incbin/overlay4_data.bin", 0x528, 0x538 - 0x528

	.global Unk_ov4_022163B8
Unk_ov4_022163B8: ; 0x022163B8
	.incbin "incbin/overlay4_data.bin", 0x538, 0x554 - 0x538

	.global Unk_ov4_022163D4
Unk_ov4_022163D4: ; 0x022163D4
	.incbin "incbin/overlay4_data.bin", 0x554, 0x574 - 0x554

	.global Unk_ov4_022163F4
Unk_ov4_022163F4: ; 0x022163F4
	.incbin "incbin/overlay4_data.bin", 0x574, 0x588 - 0x574

	.global Unk_ov4_02216408
Unk_ov4_02216408: ; 0x02216408
	.incbin "incbin/overlay4_data.bin", 0x588, 0x5A4 - 0x588

	.global Unk_ov4_02216424
Unk_ov4_02216424: ; 0x02216424
	.incbin "incbin/overlay4_data.bin", 0x5A4, 0x5B0 - 0x5A4

	.global Unk_ov4_02216430
Unk_ov4_02216430: ; 0x02216430
	.incbin "incbin/overlay4_data.bin", 0x5B0, 0x5C0 - 0x5B0

	.global Unk_ov4_02216440
Unk_ov4_02216440: ; 0x02216440
	.incbin "incbin/overlay4_data.bin", 0x5C0, 0x5D0 - 0x5C0

	.global Unk_ov4_02216450
Unk_ov4_02216450: ; 0x02216450
	.incbin "incbin/overlay4_data.bin", 0x5D0, 0x5F0 - 0x5D0

	.global Unk_ov4_02216470
Unk_ov4_02216470: ; 0x02216470
	.incbin "incbin/overlay4_data.bin", 0x5F0, 0x5FC - 0x5F0

	.global Unk_ov4_0221647C
Unk_ov4_0221647C: ; 0x0221647C
	.incbin "incbin/overlay4_data.bin", 0x5FC, 0x61C - 0x5FC

	.global Unk_ov4_0221649C
Unk_ov4_0221649C: ; 0x0221649C
	.incbin "incbin/overlay4_data.bin", 0x61C, 0x624 - 0x61C

	.global Unk_ov4_022164A4
Unk_ov4_022164A4: ; 0x022164A4
	.incbin "incbin/overlay4_data.bin", 0x624, 0x62C - 0x624

	.global Unk_ov4_022164AC
Unk_ov4_022164AC: ; 0x022164AC
	.incbin "incbin/overlay4_data.bin", 0x62C, 0x63C - 0x62C

	.global Unk_ov4_022164BC
Unk_ov4_022164BC: ; 0x022164BC
	.incbin "incbin/overlay4_data.bin", 0x63C, 0x644 - 0x63C

	.global Unk_ov4_022164C4
Unk_ov4_022164C4: ; 0x022164C4
	.incbin "incbin/overlay4_data.bin", 0x644, 0x64C - 0x644

	.global Unk_ov4_022164CC
Unk_ov4_022164CC: ; 0x022164CC
	.incbin "incbin/overlay4_data.bin", 0x64C, 0x658 - 0x64C

	.global Unk_ov4_022164D8
Unk_ov4_022164D8: ; 0x022164D8
	.incbin "incbin/overlay4_data.bin", 0x658, 0x65C - 0x658

	.global Unk_ov4_022164DC
Unk_ov4_022164DC: ; 0x022164DC
	.incbin "incbin/overlay4_data.bin", 0x65C, 0x664 - 0x65C

	.global Unk_ov4_022164E4
Unk_ov4_022164E4: ; 0x022164E4
	.incbin "incbin/overlay4_data.bin", 0x664, 0x66C - 0x664

	.global Unk_ov4_022164EC
Unk_ov4_022164EC: ; 0x022164EC
	.incbin "incbin/overlay4_data.bin", 0x66C, 0x678 - 0x66C

	.global Unk_ov4_022164F8
Unk_ov4_022164F8: ; 0x022164F8
	.incbin "incbin/overlay4_data.bin", 0x678, 0x684 - 0x678

	.global Unk_ov4_02216504
Unk_ov4_02216504: ; 0x02216504
	.incbin "incbin/overlay4_data.bin", 0x684, 0xA



	.bss


	.global Unk_ov4_0221A438
Unk_ov4_0221A438: ; 0x0221A438
	.space 0x4

	.global Unk_ov4_0221A43C
Unk_ov4_0221A43C: ; 0x0221A43C
	.space 0x4

	.global Unk_ov4_0221A440
Unk_ov4_0221A440: ; 0x0221A440
	.space 0x4

	.global Unk_ov4_0221A444
Unk_ov4_0221A444: ; 0x0221A444
	.space 0x4

	.global Unk_ov4_0221A448
Unk_ov4_0221A448: ; 0x0221A448
	.space 0x4

	.global Unk_ov4_0221A44C
Unk_ov4_0221A44C: ; 0x0221A44C
	.space 0x4

	.global Unk_ov4_0221A450
Unk_ov4_0221A450: ; 0x0221A450
	.space 0x1C

	.global Unk_ov4_0221A46C
Unk_ov4_0221A46C: ; 0x0221A46C
	.space 0x48

