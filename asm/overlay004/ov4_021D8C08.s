	.include "macros/function.inc"
	.include "overlay004/ov4_021D8C08.inc"

	.extern Unk_ov4_0221B1B0
	.extern Unk_ov4_0221B2B0

	.text


	arm_func_start DWC_InitFriendsMatch
DWC_InitFriendsMatch: ; 0x021D8C08
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	ldr ip, _021D8E6C ; =0x0221A504
	mov r6, r1
	mov r5, r2
	mov r4, r3
	str r0, [ip]
	bl DWC_ClearError
	ldr r0, _021D8E6C ; =0x0221A504
	mov r2, #0
	ldr r1, [r0, #0]
	ldr r3, _021D8E70 ; =ov4_021DE094
	str r2, [r1, #0]
	ldr r1, [r0, #0]
	ldr r2, _021D8E74 ; =ov4_021DA30C
	str r3, [r1, #4]
	ldr r1, [r0, #0]
	ldr ip, [sp, #0x24]
	str r2, [r1, #8]
	cmp ip, #0
	ldr r2, [r0, #0]
	ldr r3, _021D8E78 ; =ov4_021DA318
	ldr r1, _021D8E7C ; =ov4_021DA680
	str r3, [r2, #0xc]
	ldr r0, [r0, #0]
	ldr r3, [sp, #0x28]
	str r1, [r0, #0x10]
	ldr r0, _021D8E6C ; =0x0221A504
	moveq ip, #0x2000
	ldr r0, [r0, #0]
	cmp r3, #0
	str ip, [r0, #0x14]
	moveq r3, #0x2000
	ldr r1, _021D8E6C ; =0x0221A504
	mov r0, #0
	ldr r2, [r1, #0]
	ldr ip, _021D8E80 ; =0x0221B1B0
	str r3, [r2, #0x18]
	ldr r2, [r1, #0]
	ldr r3, _021D8E84 ; =0x0221B2B0
	str r0, [r2, #0x1c]
	ldr r2, [r1, #0]
	str r6, [r2, #0x20]
	ldr r2, [r1, #0]
	str r0, [r2, #0x24]
	ldr r2, [r1, #0]
	str r0, [r2, #0x28]
	ldr r2, [r1, #0]
	strb r0, [r2, #0x2c]
	ldr r2, [r1, #0]
	strb r0, [r2, #0x2d]
	ldr r2, [r1, #0]
	str r0, [r2, #0x64]
	ldr r2, [r1, #0]
	str ip, [r2, #0x68]
	ldr r2, [r1, #0]
	str r3, [r2, #0x6c]
	ldr r2, [r1, #0]
	str r0, [r2, #0x70]
	ldr r2, [r1, #0]
	str r0, [r2, #0x74]
	ldr r2, [r1, #0]
	str r0, [r2, #0x78]
	ldr r2, [r1, #0]
	str r0, [r2, #0x7c]
	ldr r2, [r1, #0]
	str r0, [r2, #0x80]
	ldr r2, [r1, #0]
	str r0, [r2, #0x84]
	ldr r2, [r1, #0]
	str r0, [r2, #0x88]
	ldr r2, [r1, #0]
	str r0, [r2, #0x8c]
	ldr r2, [r1, #0]
	str r0, [r2, #0x90]
	ldr r1, [r1, #0]
	str r0, [r1, #0x94]
	bl ov4_021D9BD4
	ldr r0, _021D8E6C ; =0x0221A504
	ldr r1, [r6, #0x24]
	ldr r2, [r0, #0]
	ldr r0, _021D8E88 ; =ov4_021D9F4C
	str r1, [sp]
	add r1, r2, #0x2e
	str r1, [sp, #4]
	mov r1, r6
	mov r3, r5
	str r0, [sp, #8]
	mov r5, #0
	add r0, r2, #0x98
	add r2, r2, #0x1c
	str r5, [sp, #0xc]
	bl ov4_021DA6C8
	ldr r0, _021D8E6C ; =0x0221A504
	ldr r2, [sp, #0x30]
	ldr r5, [r0, #0]
	ldr r3, [sp, #0x2c]
	add r0, r5, #0x318
	add r1, r5, #0x1c
	str r2, [sp]
	add r2, r5, #0x2e
	bl ov4_021DB420
	ldr r0, _021D8E6C ; =0x0221A504
	ldr r1, _021D8E80 ; =0x0221B1B0
	ldr r2, [r0, #0]
	ldr r0, _021D8E84 ; =0x0221B2B0
	str r1, [sp]
	str r0, [sp, #4]
	ldr r1, [sp, #0x2c]
	ldr r0, [sp, #0x30]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, r2, #0x374
	add r1, r2, #0x1c
	add r3, r2, #4
	bl ov4_021DCAF8
	ldr r0, _021D8E6C ; =0x0221A504
	ldr r0, [r0, #0]
	add r0, r0, #0x3f8
	add r0, r0, #0x400
	bl ov4_021E4EAC
	mov r0, r4
	bl strlen
	cmp r0, #0x100
	movhs r5, #0xff
	bhs _021D8E0C
	mov r0, r4
	bl strlen
	mov r5, r0
_021D8E0C:
	ldr r1, _021D8E80 ; =0x0221B1B0
	mov r0, r4
	mov r2, r5
	bl MI_CpuCopy8
	ldr r0, [sp, #0x20]
	ldr r1, _021D8E80 ; =0x0221B1B0
	mov r2, #0
	strb r2, [r1, r5]
	bl strlen
	cmp r0, #0x100
	movhs r4, #0xff
	bhs _021D8E48
	ldr r0, [sp, #0x20]
	bl strlen
	mov r4, r0
_021D8E48:
	ldr r0, [sp, #0x20]
	ldr r1, _021D8E84 ; =0x0221B2B0
	mov r2, r4
	bl MI_CpuCopy8
	ldr r0, _021D8E84 ; =0x0221B2B0
	mov r1, #0
	strb r1, [r0, r4]
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D8E6C: .word Unk_ov4_0221A504
_021D8E70: .word ov4_021DE094
_021D8E74: .word ov4_021DA30C
_021D8E78: .word ov4_021DA318
_021D8E7C: .word ov4_021DA680
_021D8E80: .word Unk_ov4_0221B1B0
_021D8E84: .word Unk_ov4_0221B2B0
_021D8E88: .word ov4_021D9F4C
	arm_func_end DWC_InitFriendsMatch

	arm_func_start DWC_ShutdownFriendsMatch
DWC_ShutdownFriendsMatch: ; 0x021D8E8C
	stmfd sp!, {r3, lr}
	ldr r0, _021D8FF0 ; =0x0221A504
	ldr r0, [r0, #0]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x384]
	cmp r0, #0
	beq _021D8EC0
	bl ov4_021FC1F0
	ldr r0, _021D8FF0 ; =0x0221A504
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x384]
_021D8EC0:
	ldr r0, _021D8FF0 ; =0x0221A504
	mov r2, #0
	ldr r1, [r0, #0]
	strb r2, [r1, #0x38c]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x458]
	cmp r0, #0
	beq _021D8EF4
	bl ov4_021FEBBC
	ldr r0, _021D8FF0 ; =0x0221A504
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x458]
_021D8EF4:
	bl ov4_021DC734
	bl ov4_021F6338
	ldr r0, _021D8FF0 ; =0x0221A504
	ldr ip, [r0]
	ldr r0, [ip, #0x1c]
	cmp r0, #0
	beq _021D8FA8
	mov r1, #0
	mov r2, r1
	mov r3, r1
	add r0, ip, #0x1c
	bl ov4_021EB2A8
	ldr r0, _021D8FF0 ; =0x0221A504
	mov r2, #0
	ldr r0, [r0, #0]
	mov r3, r2
	add r0, r0, #0x1c
	mov r1, #3
	bl ov4_021EB2A8
	ldr r0, _021D8FF0 ; =0x0221A504
	mov r2, #0
	ldr r0, [r0, #0]
	mov r3, r2
	add r0, r0, #0x1c
	mov r1, #1
	bl ov4_021EB2A8
	ldr r0, _021D8FF0 ; =0x0221A504
	mov r2, #0
	ldr r0, [r0, #0]
	mov r1, #2
	add r0, r0, #0x1c
	mov r3, r2
	bl ov4_021EB2A8
	ldr r0, _021D8FF0 ; =0x0221A504
	ldr r0, [r0, #0]
	add r0, r0, #0x1c
	bl ov4_021EB274
	ldr r0, _021D8FF0 ; =0x0221A504
	ldr r0, [r0, #0]
	add r0, r0, #0x1c
	bl ov4_021EB258
	mov r1, #0
	ldr r0, _021D8FF0 ; =0x0221A504
	ldr r0, [r0, #0]
	str r1, [r0, #0x1c]
_021D8FA8:
	bl ov4_021DA8E8
	bl ov4_021DBAB0
	bl ov4_021DEC64
	bl ov4_021E5180
	ldr r0, _021D8FF0 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D8FE0
	bl ov4_021F8484
	ldr r0, _021D8FF0 ; =0x0221A504
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0]
_021D8FE0:
	ldr r0, _021D8FF0 ; =0x0221A504
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D8FF0: .word Unk_ov4_0221A504
	arm_func_end DWC_ShutdownFriendsMatch

	arm_func_start DWC_ProcessFriendsMatch
DWC_ProcessFriendsMatch: ; 0x021D8FF4
	stmfd sp!, {r3, lr}
	bl DWC_UpdateConnection
	cmp r0, #0
	beq _021D9008
	bl ov4_021D9CD4
_021D9008:
	ldr r0, _021D9228 ; =0x0221A504
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	cmpne r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021D7708
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021D9228 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #6
	addls pc, pc, r0, lsl #2
	b _021D91E0
_021D9044: ; jump table
	b _021D91E0 ; case 0
	b _021D9060 ; case 1
	b _021D9174 ; case 2
	b _021D917C ; case 3
	b _021D917C ; case 4
	b _021D918C ; case 5
	b _021D919C ; case 6
_021D9060:
	bl ov4_021E98B0
	cmp r0, #1
	beq _021D9080
	cmp r0, #2
	beq _021D9154
	cmp r0, #3
	beq _021D9164
	b _021D91E0
_021D9080:
	ldr r0, _021D9228 ; =0x0221A504
	mov r2, #0
	ldr r0, [r0, #0]
	ldr r1, [r0, #0xa0]
	add r0, r0, #0x1c
	bl ov4_021EB228
	bl ov4_021D9D8C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021D9228 ; =0x0221A504
	mov r1, #0
	ldr r0, [r0, #0]
	ldr r2, _021D922C ; =ov4_021DA16C
	mov r3, r1
	add r0, r0, #0x1c
	bl ov4_021EB2A8
	bl ov4_021D9D8C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021D9228 ; =0x0221A504
	ldr r2, _021D9230 ; =ov4_021DA1A4
	ldr r0, [r0, #0]
	mov r1, #3
	add r0, r0, #0x1c
	mov r3, #0
	bl ov4_021EB2A8
	bl ov4_021D9D8C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021D9228 ; =0x0221A504
	ldr r2, _021D9234 ; =ov4_021DB768
	ldr r0, [r0, #0]
	mov r1, #1
	add r0, r0, #0x1c
	mov r3, #0
	bl ov4_021EB2A8
	bl ov4_021D9D8C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021D9228 ; =0x0221A504
	ldr r2, _021D9238 ; =ov4_021DB810
	ldr r0, [r0, #0]
	mov r1, #2
	add r0, r0, #0x1c
	mov r3, #0
	bl ov4_021EB2A8
	bl ov4_021D9D8C
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #2
	bl ov4_021D9CD8
	bl ov4_021DA74C
	b _021D91E0
_021D9154:
	ldr r1, _021D923C ; =0xFFFFB172
	mov r0, #3
	bl ov4_021DA898
	ldmia sp!, {r3, pc}
_021D9164:
	ldr r1, _021D9240 ; =0xFFFFB17B
	mov r0, #4
	bl ov4_021DA898
	ldmia sp!, {r3, pc}
_021D9174:
	bl ov4_021DA784
	b _021D91E0
_021D917C:
	bl ov4_021DB500
	mov r0, #0
	bl ov4_021DD2BC
	b _021D91E0
_021D918C:
	mov r0, #1
	bl ov4_021DD2BC
	bl ov4_021DB500
	b _021D91E0
_021D919C:
	bl ov4_021E4F64
	bl ov4_021DB500
	ldr r0, _021D9228 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x389]
	cmp r0, #2
	ldrneb r0, [r1, #0x389]
	cmpne r0, #3
	bne _021D91CC
	mov r0, #1
	bl ov4_021DD2BC
	b _021D91E0
_021D91CC:
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _021D91E0
	mov r0, #0
	bl ov4_021DD2BC
_021D91E0:
	ldr r0, _021D9228 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x38c]
	cmp r0, #1
	ldmneia sp!, {r3, pc}
	ldr r0, [r1, #0x384]
	cmp r0, #0
	beq _021D9214
	bl ov4_021FC1F0
	ldr r0, _021D9228 ; =0x0221A504
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0x384]
_021D9214:
	ldr r0, _021D9228 ; =0x0221A504
	mov r1, #0
	ldr r0, [r0, #0]
	strb r1, [r0, #0x38c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D9228: .word Unk_ov4_0221A504
_021D922C: .word ov4_021DA16C
_021D9230: .word ov4_021DA1A4
_021D9234: .word ov4_021DB768
_021D9238: .word ov4_021DB810
_021D923C: .word 0xFFFFB172
_021D9240: .word 0xFFFFB17B
	arm_func_end DWC_ProcessFriendsMatch

	arm_func_start DWC_LoginAsync
DWC_LoginAsync: ; 0x021D9244
	stmfd sp!, {r4, r5, r6, lr}
	movs r4, r0
	mov r6, r2
	mov r5, r3
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl ov4_021D7708
	cmp r0, #0
	bne _021D927C
	ldr r0, _021D9344 ; =0x0221A504
	ldr r2, [r0, #0]
	ldr r1, [r2, #0x24]
	cmp r1, #0
	beq _021D9284
_021D927C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021D9284:
	str r6, [r2, #0x70]
	ldr r1, [r0, #0]
	cmp r4, #0
	str r5, [r1, #0x74]
	ldrneh r1, [r4]
	cmpne r1, #0
	moveq r5, #0
	beq _021D92F0
	ldr r1, [r0, #0]
	mov r0, #0
	add r1, r1, #0x2e
	mov r2, #0x34
	bl MIi_CpuClear16
	mov r0, r4
	bl ov4_021D8BDC
	cmp r0, #0x19
	movhi r5, #0x19
	bhi _021D92D8
	mov r0, r4
	bl ov4_021D8BDC
	mov r5, r0
_021D92D8:
	ldr r1, _021D9344 ; =0x0221A504
	mov r0, r4
	ldr r1, [r1, #0]
	mov r2, r5, lsl #1
	add r1, r1, #0x2e
	bl MIi_CpuCopy16
_021D92F0:
	ldr r0, _021D9344 ; =0x0221A504
	mov r1, #0
	ldr r0, [r0, #0]
	add r0, r0, r5, lsl #1
	strh r1, [r0, #0x2e]
	bl DWC_GetInetStatus
	cmp r0, #4
	beq _021D9324
	ldr r1, _021D9348 ; =0xFFFF1596
	mov r0, #2
	bl ov4_021DA898
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_021D9324:
	mov r0, #1
	bl ov4_021D9CD8
	ldr r0, _021D9344 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x68]
	bl ov4_021E9700
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D9344: .word Unk_ov4_0221A504
_021D9348: .word 0xFFFF1596
	arm_func_end DWC_LoginAsync

	arm_func_start DWC_UpdateServersAsync
DWC_UpdateServersAsync: ; 0x021D934C
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x10
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021D7708
	cmp r0, #0
	bne _021D9388
	ldr r0, _021D93EC ; =0x0221A504
	ldr r2, [r0, #0]
	ldr r1, [r2, #0x24]
	cmp r1, #3
	blt _021D9388
	cmp r1, #4
	bne _021D9394
_021D9388:
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021D9394:
	str r6, [r2, #0x78]
	ldr r1, [r0, #0]
	mov r0, #4
	str r5, [r1, #0x7c]
	bl ov4_021D9CD8
	ldr r0, _021D93EC ; =0x0221A504
	ldr r1, [sp, #0x20]
	ldr r3, [r0, #0]
	ldr r0, [sp, #0x24]
	str r4, [sp]
	str r1, [sp, #4]
	ldr r4, [sp, #0x28]
	str r0, [sp, #8]
	ldr r2, _021D93F0 ; =ov4_021D9FAC
	add r0, r3, #0xe0
	add r1, r3, #0x1e0
	mov r3, #0
	str r4, [sp, #0xc]
	bl ov4_021DB664
	mov r0, #1
	add sp, sp, #0x10
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D93EC: .word Unk_ov4_0221A504
_021D93F0: .word ov4_021D9FAC
	arm_func_end DWC_UpdateServersAsync

	arm_func_start DWC_ConnectToAnybodyAsync
DWC_ConnectToAnybodyAsync: ; 0x021D93F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021D7708
	cmp r0, #0
	bne _021D942C
	ldr r0, _021D948C ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #3
	beq _021D9438
_021D942C:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D9438:
	bl ov4_021D9BD4
	ldr r1, _021D948C ; =0x0221A504
	mov r0, #5
	ldr r2, [r1, #0]
	str r5, [r2, #0x80]
	ldr r1, [r1, #0]
	str r4, [r1, #0x84]
	bl ov4_021D9CD8
	ldr r1, [sp, #0x20]
	sub r0, r7, #1
	ldr r4, [sp, #0x24]
	str r1, [sp]
	ldr r2, _021D9490 ; =ov4_021D9FF4
	mov r1, r6
	and r0, r0, #0xff
	mov r3, #0
	str r4, [sp, #4]
	bl ov4_021DCE10
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D948C: .word Unk_ov4_0221A504
_021D9490: .word ov4_021D9FF4
	arm_func_end DWC_ConnectToAnybodyAsync

	arm_func_start DWC_SetupGameServer
DWC_SetupGameServer: ; 0x021D9494
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021D7708
	cmp r0, #0
	bne _021D94C8
	ldr r0, _021D9524 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #3
	beq _021D94D0
_021D94C8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D94D0:
	bl ov4_021D9BD4
	ldr r1, _021D9524 ; =0x0221A504
	mov r2, #0
	ldr r3, [r1, #0]
	mov r0, #5
	str r6, [r3, #0x88]
	ldr r3, [r1, #0]
	str r5, [r3, #0x8c]
	ldr r1, [r1, #0]
	strb r2, [r1, #0x2c]
	bl ov4_021D9CD8
	sub r0, r7, #1
	ldr r5, [sp, #0x18]
	ldr r1, _021D9528 ; =ov4_021D9FF4
	mov r3, r4
	and r0, r0, #0xff
	mov r2, #0
	str r5, [sp]
	bl ov4_021DCFFC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D9524: .word Unk_ov4_0221A504
_021D9528: .word ov4_021D9FF4
	arm_func_end DWC_SetupGameServer

	arm_func_start DWC_ConnectToGameServerAsync
DWC_ConnectToGameServerAsync: ; 0x021D952C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x220
	mvn ip, #0
	mov r7, r0
	mov r6, r1
	mov r4, r2
	mov r5, r3
	str ip, [sp, #0xc]
	bl ov4_021D7708
	cmp r0, #0
	bne _021D956C
	ldr r0, _021D9710 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #3
	beq _021D9578
_021D956C:
	add sp, sp, #0x220
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D9578:
	bl ov4_021D9BD4
	ldr r1, _021D9710 ; =0x0221A504
	mov r0, #5
	ldr r2, [r1, #0]
	str r6, [r2, #0x88]
	ldr r1, [r1, #0]
	str r4, [r1, #0x8c]
	bl ov4_021D9CD8
	mov r0, r7
	bl ov4_021DB894
	movs r4, r0
	beq _021D95C4
	ldr r0, _021D9710 ; =0x0221A504
	mov r1, r4
	ldr r0, [r0, #0]
	add r0, r0, #0x1c
	bl ov4_021EBA88
	cmp r0, #0
	bne _021D95CC
_021D95C4:
	mov r5, #0xb
	b _021D9698
_021D95CC:
	ldr r0, _021D9710 ; =0x0221A504
	add r2, sp, #0xc
	ldr r0, [r0, #0]
	mov r1, r4
	add r0, r0, #0x1c
	bl ov4_021EBA18
	ldr r0, _021D9710 ; =0x0221A504
	ldr r1, [sp, #0xc]
	ldr r0, [r0, #0]
	add r2, sp, #0x10
	add r0, r0, #0x1c
	bl ov4_021EB8D8
	ldr r0, [sp, #0x14]
	cmp r0, #6
	movne r5, #0xb
	bne _021D9698
	ldr r0, _021D9714 ; =0x0221746C
	mov r6, #0x30
	add r1, sp, #8
	add r2, sp, #0x18
	mov r3, #0x2f
	strb r6, [sp, #8]
	bl ov4_021D89C0
	add r0, sp, #8
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	and r6, r0, #0xff
	ldr r0, _021D9718 ; =0x02217470
	add r1, sp, #8
	add r2, sp, #0x18
	mov r3, #0x2f
	bl ov4_021D89C0
	add r0, sp, #8
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	and r0, r0, #0xff
	cmp r0, r6
	moveq r5, #0xd
	beq _021D9698
	ldr r6, [sp, #0x238]
	ldr r1, _021D971C ; =ov4_021D9FF4
	mov r0, r4
	mov r3, r5
	mov r2, #0
	str r6, [sp]
	bl ov4_021DD0A4
	add sp, sp, #0x220
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D9698:
	mov r0, r5
	mov r1, #0
	bl ov4_021D7724
	ldr r0, _021D9710 ; =0x0221A504
	mov r1, #0
	ldr r4, [r0, #0]
	mov r0, r5
	str r1, [sp]
	ldr r2, [r4, #0x8c]
	mov r3, r1
	str r2, [sp, #4]
	ldr r4, [r4, #0x88]
	mov r2, #1
	blx r4
	ldr r0, _021D9710 ; =0x0221A504
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D9704
	ldr r0, [r0, #0x24]
	cmp r0, #5
	bne _021D9704
	mov r0, #3
	bl ov4_021D9CD8
	ldr r1, _021D9720 ; =0x02217474
	mov r0, #1
	mov r2, #0
	bl ov4_021DB978
_021D9704:
	mov r0, #1
	add sp, sp, #0x220
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021D9710: .word Unk_ov4_0221A504
_021D9714: .word 0x0221746C
_021D9718: .word 0x02217470
_021D971C: .word ov4_021D9FF4
_021D9720: .word 0x02217474
	arm_func_end DWC_ConnectToGameServerAsync

	arm_func_start DWC_SetConnectionClosedCallback
DWC_SetConnectionClosedCallback: ; 0x021D9724
	ldr r2, _021D974C ; =0x0221A504
	ldr r3, [r2, #0]
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	str r0, [r3, #0x90]
	ldr r2, [r2, #0]
	mov r0, #1
	str r1, [r2, #0x94]
	bx lr
	; .align 2, 0
_021D974C: .word Unk_ov4_0221A504
	arm_func_end DWC_SetConnectionClosedCallback

	arm_func_start DWC_CloseAllConnectionsHard
DWC_CloseAllConnectionsHard: ; 0x021D9750
	stmfd sp!, {r3, lr}
	ldr r0, _021D97EC ; =0x0221A504
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021D9788
	bl ov4_021D7708
	cmp r0, #0
	bne _021D9788
	ldr r0, _021D97EC ; =0x0221A504
	ldr r2, [r0, #0]
	ldr r0, [r2, #0x24]
	cmp r0, #5
	cmpne r0, #6
	beq _021D9790
_021D9788:
	mvn r0, #0
	ldmia sp!, {r3, pc}
_021D9790:
	ldrb r0, [r2, #0x381]
	cmp r0, #0
	bne _021D97C0
	ldr r1, _021D97F0 ; =0x02217474
	mov r0, #1
	mov r2, #0
	bl ov4_021DB978
	bl ov4_021DC734
	mov r0, #3
	bl ov4_021D9CD8
	mov r0, #1
	ldmia sp!, {r3, pc}
_021D97C0:
	mov r1, #1
	ldr r0, _021D97EC ; =0x0221A504
	strb r1, [r2, #0x2d]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov4_021F8710
	ldr r1, _021D97EC ; =0x0221A504
	mov r0, #0
	ldr r1, [r1, #0]
	strb r0, [r1, #0x2d]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D97EC: .word Unk_ov4_0221A504
_021D97F0: .word 0x02217474
	arm_func_end DWC_CloseAllConnectionsHard

	arm_func_start ov4_021D97F4
ov4_021D97F4: ; 0x021D97F4
	stmfd sp!, {r4, lr}
	ldr r1, _021D9858 ; =0x0221A504
	mov r4, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	beq _021D9830
	bl ov4_021D7708
	cmp r0, #0
	bne _021D9830
	ldr r0, _021D9858 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #5
	cmpne r0, #6
	beq _021D9838
_021D9830:
	mvn r0, #0
	ldmia sp!, {r4, pc}
_021D9838:
	mov r0, r4
	bl ov4_021D9B24
	cmp r0, #0
	mvneq r0, #1
	ldmeqia sp!, {r4, pc}
	bl ov4_021F86F0
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D9858: .word Unk_ov4_0221A504
	arm_func_end ov4_021D97F4

	arm_func_start DWC_CloseConnectionHardBitmap
DWC_CloseConnectionHardBitmap: ; 0x021D985C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _021D991C ; =0x0221A504
	mov r6, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	cmpne r6, #0
	beq _021D989C
	bl ov4_021D7708
	cmp r0, #0
	bne _021D989C
	ldr r0, _021D991C ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x24]
	cmp r0, #5
	cmpne r0, #6
	beq _021D98A4
_021D989C:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_021D98A4:
	mov r5, #0
	mov r4, #1
_021D98AC:
	ldr r0, [r6, #0]
	tst r0, r4, lsl r5
	beq _021D98F8
	bl DWC_GetMyAID
	cmp r5, r0
	bne _021D98D8
	mvn r0, r4, lsl r5
	ldr r1, [r6, #0]
	and r0, r1, r0
	str r0, [r6, #0]
	b _021D98F8
_021D98D8:
	mov r0, r5
	bl ov4_021D97F4
	cmp r0, #0
	beq _021D98F8
	mvn r0, r4, lsl r5
	ldr r1, [r6, #0]
	and r0, r1, r0
	str r0, [r6, #0]
_021D98F8:
	add r0, r5, #1
	and r5, r0, #0xff
	cmp r5, #0x20
	blo _021D98AC
	ldr r0, [r6, #0]
	cmp r0, #0
	movne r0, #0
	mvneq r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D991C: .word Unk_ov4_0221A504
	arm_func_end DWC_CloseConnectionHardBitmap

	arm_func_start DWC_GetNumConnectionHost
DWC_GetNumConnectionHost: ; 0x021D9920
	stmfd sp!, {r3, lr}
	ldr r0, _021D9964 ; =0x0221A504
	ldr r1, [r0, #0]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r1, #0x389]
	cmp r0, #2
	ldrneb r0, [r1, #0x389]
	cmpne r0, #3
	bne _021D9958
	bl ov4_021DEA48
	add r0, r0, #1
	ldmia sp!, {r3, pc}
_021D9958:
	bl ov4_021DEA28
	add r0, r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D9964: .word Unk_ov4_0221A504
	arm_func_end DWC_GetNumConnectionHost

	arm_func_start DWC_GetMyAID
DWC_GetMyAID: ; 0x021D9968
	ldr r0, _021D9980 ; =0x0221A504
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrneb r0, [r0, #0x2c]
	moveq r0, #0
	bx lr
	; .align 2, 0
_021D9980: .word Unk_ov4_0221A504
	arm_func_end DWC_GetMyAID

	arm_func_start ov4_021D9984
ov4_021D9984: ; 0x021D9984
	stmfd sp!, {r3, lr}
	ldr r2, _021D99D0 ; =0x0221A504
	ldr r1, [r2, #0]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r1, r1, #0x244
	add r1, r1, #0x400
	str r1, [r0, #0]
	ldr r2, [r2, #0]
	ldrb r1, [r2, #0x389]
	cmp r1, #2
	ldrneb r1, [r2, #0x389]
	cmpne r1, #3
	bne _021D99C8
	bl ov4_021DEAF0
	ldmia sp!, {r3, pc}
_021D99C8:
	bl ov4_021DEABC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D99D0: .word Unk_ov4_0221A504
	arm_func_end ov4_021D9984

	arm_func_start DWC_GetAIDBitmap
DWC_GetAIDBitmap: ; 0x021D99D4
	stmfd sp!, {r3, lr}
	ldr r0, _021D9A04 ; =0x0221A504
	ldr r0, [r0, #0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, sp, #0
	bl ov4_021D9984
	mov r1, r0
	ldr r0, [sp]
	bl ov4_021D9D58
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D9A04: .word Unk_ov4_0221A504
	arm_func_end DWC_GetAIDBitmap

	arm_func_start DWC_IsValidAID
DWC_IsValidAID: ; 0x021D9A08
	stmfd sp!, {r3, lr}
	ldr r1, _021D9A3C ; =0x0221A504
	ldr r1, [r1, #0]
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r2, [r1, #0x664]
	mov r1, #1
	tst r2, r1, lsl r0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021D9C8C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D9A3C: .word Unk_ov4_0221A504
	arm_func_end DWC_IsValidAID

	arm_func_start ov4_021D9A40
ov4_021D9A40: ; 0x021D9A40
	ldr r0, _021D9A58 ; =0x0221A504
	ldr r0, [r0, #0]
	cmp r0, #0
	ldrne r0, [r0, #0x24]
	moveq r0, #0
	bx lr
	; .align 2, 0
_021D9A58: .word Unk_ov4_0221A504
	arm_func_end ov4_021D9A40

	arm_func_start ov4_021D9A5C
ov4_021D9A5C: ; 0x021D9A5C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	ldr r0, _021D9B14 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, pc}
	mov r0, #0x4000
	bl ov4_021D8ABC
	add r0, r0, #0xc000
	mov r1, r0, lsl #0x10
	ldr r3, _021D9B14 ; =0x0221A504
	mov r0, #0
	mov r2, r0
	mov r1, r1, lsr #0x10
	ldr r4, [r3, #0]
	bl ov4_021FABFC
	ldr r1, _021D9B18 ; =ov4_021DA68C
	ldr r2, _021D9B14 ; =0x0221A504
	str r1, [sp]
	mov r1, r0
	ldr r0, [r2, #0]
	ldr r2, [r4, #0x14]
	ldr r3, [r4, #0x18]
	bl ov4_021F8470
	mov r4, r0
	bl ov4_021D9EA8
	cmp r0, #0
	addne sp, sp, #4
	movne r0, r4
	ldmneia sp!, {r3, r4, pc}
	ldr r0, _021D9B14 ; =0x0221A504
	ldr r1, _021D9B1C ; =ov4_021DDE4C
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov4_021F84CC
	ldr r0, _021D9B14 ; =0x0221A504
	ldr r1, _021D9B20 ; =ov4_021DDD58
	ldr r0, [r0, #0]
	ldr r0, [r0, #0]
	bl ov4_021F8774
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_021D9B14: .word Unk_ov4_0221A504
_021D9B18: .word ov4_021DA68C
_021D9B1C: .word ov4_021DDE4C
_021D9B20: .word ov4_021DDD58
	arm_func_end ov4_021D9A5C

	arm_func_start ov4_021D9B24
ov4_021D9B24: ; 0x021D9B24
	stmfd sp!, {r4, r5, r6, lr}
	ldr r1, _021D9B80 ; =0x0221A504
	mov r6, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r4, _021D9B84 ; =0x0221A50C
	mov r5, #0
_021D9B48:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _021D9B6C
	bl ov4_021F87B8
	ldrb r0, [r0, #1]
	cmp r6, r0
	ldreq r0, _021D9B84 ; =0x0221A50C
	ldreq r0, [r0, r5, lsl #2]
	ldmeqia sp!, {r4, r5, r6, pc}
_021D9B6C:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021D9B48
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D9B80: .word Unk_ov4_0221A504
_021D9B84: .word Unk_ov4_0221A50C
	arm_func_end ov4_021D9B24

	arm_func_start ov4_021D9B88
ov4_021D9B88: ; 0x021D9B88
	stmfd sp!, {r3, lr}
	bl ov4_021F87B8
	ldrb r0, [r0, #1]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021D9B88

	arm_func_start ov4_021D9B98
ov4_021D9B98: ; 0x021D9B98
	stmfd sp!, {r3, lr}
	bl ov4_021F87B8
	ldrb r0, [r0]
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021D9B98

	arm_func_start ov4_021D9BA8
ov4_021D9BA8: ; 0x021D9BA8
	ldr r2, _021D9BD0 ; =0x0221A50C
	mov r0, #0
_021D9BB0:
	ldr r1, [r2, r0, lsl #2]
	cmp r1, #0
	bxeq lr
	add r0, r0, #1
	cmp r0, #0x20
	blt _021D9BB0
	mvn r0, #0
	bx lr
	; .align 2, 0
_021D9BD0: .word Unk_ov4_0221A50C
	arm_func_end ov4_021D9BA8

	arm_func_start ov4_021D9BD4
ov4_021D9BD4: ; 0x021D9BD4
	stmfd sp!, {r3, lr}
	ldr r1, _021D9BFC ; =0x0221A50C
	mov r0, #0
	mov r2, #0x80
	bl MIi_CpuClear32
	ldr r1, _021D9C00 ; =0x0221A58C
	mov r0, #0
	mov r2, #0x100
	bl MIi_CpuClear32
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D9BFC: .word Unk_ov4_0221A50C
_021D9C00: .word Unk_ov4_0221A58C
	arm_func_end ov4_021D9BD4

	arm_func_start ov4_021D9C04
ov4_021D9C04: ; 0x021D9C04
	ldr r1, _021D9C10 ; =0x0221A50C
	add r0, r1, r0, lsl #2
	bx lr
	; .align 2, 0
_021D9C10: .word Unk_ov4_0221A50C
	arm_func_end ov4_021D9C04

	arm_func_start ov4_021D9C14
ov4_021D9C14: ; 0x021D9C14
	stmfd sp!, {r3, lr}
	cmp r1, #0
	mov r3, #0
	ble _021D9C4C
	ldr r2, _021D9C78 ; =0x0221A504
	ldr ip, [r2]
_021D9C2C:
	add r2, ip, r3, lsl #2
	ldr r2, [r2, #0x468]
	cmp r0, r2
	beq _021D9C4C
	add r2, r3, #1
	and r3, r2, #0xff
	cmp r3, r1
	blt _021D9C2C
_021D9C4C:
	cmp r3, r1
	movge r0, #0
	ldmgeia sp!, {r3, pc}
	ldr r0, _021D9C78 ; =0x0221A504
	ldr r0, [r0, #0]
	add r0, r0, r3
	ldrb r0, [r0, #0x644]
	bl ov4_021D9B24
	bl ov4_021D9B98
	bl ov4_021D9C04
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D9C78: .word Unk_ov4_0221A504
	arm_func_end ov4_021D9C14

	arm_func_start ov4_021D9C7C
ov4_021D9C7C: ; 0x021D9C7C
	ldr r1, _021D9C88 ; =0x0221A58C
	add r0, r1, r0, lsl #3
	bx lr
	; .align 2, 0
_021D9C88: .word Unk_ov4_0221A58C
	arm_func_end ov4_021D9C7C

	arm_func_start ov4_021D9C8C
ov4_021D9C8C: ; 0x021D9C8C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, _021D9CD0 ; =0x0221A50C
	mov r6, r0
	mov r5, #0
_021D9C9C:
	ldr r0, [r4, r5, lsl #2]
	cmp r0, #0
	beq _021D9CBC
	bl ov4_021F87B8
	ldrb r0, [r0, #1]
	cmp r6, r0
	moveq r0, #1
	ldmeqia sp!, {r4, r5, r6, pc}
_021D9CBC:
	add r5, r5, #1
	cmp r5, #0x20
	blt _021D9C9C
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D9CD0: .word Unk_ov4_0221A50C
	arm_func_end ov4_021D9C8C

	arm_func_start ov4_021D9CD4
ov4_021D9CD4: ; 0x021D9CD4
	bx lr
	arm_func_end ov4_021D9CD4

	arm_func_start ov4_021D9CD8
ov4_021D9CD8: ; 0x021D9CD8
	ldr r1, _021D9CF4 ; =0x0221A504
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x24]
	str r2, [r3, #0x28]
	ldr r1, [r1, #0]
	str r0, [r1, #0x24]
	bx lr
	; .align 2, 0
_021D9CF4: .word Unk_ov4_0221A504
	arm_func_end ov4_021D9CD8

	arm_func_start ov4_021D9CF8
ov4_021D9CF8: ; 0x021D9CF8
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	add r0, sp, #0
	bl ov4_021DEABC
	mov r1, r0
	cmp r1, #0
	mov r0, #0
	ble _021D9D3C
	ldr r3, [sp]
_021D9D20:
	ldrb r2, [r3]
	cmp r4, r2
	beq _021D9D3C
	add r0, r0, #1
	cmp r0, r1
	add r3, r3, #1
	blt _021D9D20
_021D9D3C:
	cmp r0, r1
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	bl ov4_021DE870
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	arm_func_end ov4_021D9CF8

	arm_func_start ov4_021D9D58
ov4_021D9D58: ; 0x021D9D58
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov lr, ip
	cmp r1, #0
	ble _021D9D84
	mov r3, #1
_021D9D70:
	ldrb r2, [r0, lr]
	add lr, lr, #1
	cmp lr, r1
	orr ip, ip, r3, lsl r2
	blt _021D9D70
_021D9D84:
	mov r0, ip
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021D9D58

	arm_func_start ov4_021D9D8C
ov4_021D9D8C: ; 0x021D9D8C
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r6, #4
	addls pc, pc, r6, lsl #2
	b _021D9DE8
_021D9DA8: ; jump table
	b _021D9DE8 ; case 0
	b _021D9DBC ; case 1
	b _021D9DC8 ; case 2
	b _021D9DD4 ; case 3
	b _021D9DE0 ; case 4
_021D9DBC:
	mov r5, #9
	sub r4, r5, #0xa
	b _021D9DE8
_021D9DC8:
	mov r5, #9
	sub r4, r5, #0xb
	b _021D9DE8
_021D9DD4:
	mov r5, #6
	sub r4, r5, #0x10
	b _021D9DE8
_021D9DE0:
	mov r5, #6
	sub r4, r5, #0x1a
_021D9DE8:
	ldr r0, _021D9E94 ; =0x0221A504
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x24]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _021D9E78
_021D9E00: ; jump table
	b _021D9E78 ; case 0
	b _021D9E18 ; case 1
	b _021D9E30 ; case 2
	b _021D9E78 ; case 3
	b _021D9E6C ; case 4
	b _021D9E54 ; case 5
_021D9E18:
	ldr r1, _021D9E98 ; =0xFFFF11B8
	mov r0, r5
	add r4, r4, r1
	mov r1, r4
	bl ov4_021DA898
	b _021D9E80
_021D9E30:
	ldr r1, [r1, #0x9c]
	ldr r0, _021D9E98 ; =0xFFFF11B8
	cmp r1, #1
	add r4, r4, r0
	bge _021D9E80
	mov r0, r5
	mov r1, r4
	bl ov4_021DA898
	b _021D9E80
_021D9E54:
	ldr r1, _021D9E9C ; =0xFFFEC398
	mov r0, r5
	add r4, r4, r1
	mov r1, r4
	bl ov4_021DE3BC
	b _021D9E80
_021D9E6C:
	ldr r0, _021D9EA0 ; =0xFFFEEAA8
	add r4, r4, r0
	b _021D9E80
_021D9E78:
	ldr r0, _021D9EA4 ; =0xFFFE9C88
	add r4, r4, r0
_021D9E80:
	mov r0, r5
	mov r1, r4
	bl ov4_021DB710
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D9E94: .word Unk_ov4_0221A504
_021D9E98: .word 0xFFFF11B8
_021D9E9C: .word 0xFFFEC398
_021D9EA0: .word 0xFFFEEAA8
_021D9EA4: .word 0xFFFE9C88
	arm_func_end ov4_021D9D8C

	arm_func_start ov4_021D9EA8
ov4_021D9EA8: ; 0x021D9EA8
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #7
	addls pc, pc, r4, lsl #2
	b _021D9F2C
_021D9EC4: ; jump table
	b _021D9F2C ; case 0
	b _021D9EE4 ; case 1
	b _021D9EF0 ; case 2
	b _021D9F00 ; case 3
	b _021D9F0C ; case 4
	b _021D9EF0 ; case 5
	b _021D9F18 ; case 6
	b _021D9F24 ; case 7
_021D9EE4:
	mov r0, #9
	sub r2, r0, #0xa
	b _021D9F2C
_021D9EF0:
	mov r0, #0
	mov r2, r0
	mov r4, r0
	b _021D9F2C
_021D9F00:
	mov r0, #6
	sub r2, r0, #0x10
	b _021D9F2C
_021D9F0C:
	mov r0, #6
	sub r2, r0, #0x24
	b _021D9F2C
_021D9F18:
	mov r0, #6
	sub r2, r0, #0x4c
	b _021D9F2C
_021D9F24:
	mov r0, #6
	sub r2, r0, #0x56
_021D9F2C:
	cmp r0, #0
	beq _021D9F40
	ldr r1, _021D9F48 ; =0xFFFEFA48
	add r1, r2, r1
	bl ov4_021DA898
_021D9F40:
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D9F48: .word 0xFFFEFA48
	arm_func_end ov4_021D9EA8

	arm_func_start ov4_021D9F4C
ov4_021D9F4C: ; 0x021D9F4C
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	bne _021D9F78
	ldr r1, _021D9FA8 ; =0x0221A504
	mov r0, #3
	ldr r1, [r1, #0]
	str r4, [r1, #0x64]
	bl ov4_021D9CD8
	bl ov4_021DB940
	b _021D9F80
_021D9F78:
	mov r0, #0
	bl ov4_021D9CD8
_021D9F80:
	ldr r0, _021D9FA8 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r3, [r0, #0x70]
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, [r0, #0x74]
	mov r0, r5
	mov r1, r4
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021D9FA8: .word Unk_ov4_0221A504
	arm_func_end ov4_021D9F4C

	arm_func_start ov4_021D9FAC
ov4_021D9FAC: ; 0x021D9FAC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _021D9FF0 ; =0x0221A504
	mov r5, r0
	ldr r0, [r2, #0]
	mov r4, r1
	ldr r0, [r0, #0x28]
	cmp r0, #4
	beq _021D9FD0
	bl ov4_021D9CD8
_021D9FD0:
	ldr r1, _021D9FF0 ; =0x0221A504
	mov r0, r5
	ldr r3, [r1, #0]
	mov r1, r4
	ldr r2, [r3, #0x7c]
	ldr r3, [r3, #0x78]
	blx r3
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021D9FF0: .word Unk_ov4_0221A504
	arm_func_end ov4_021D9FAC

	arm_func_start ov4_021D9FF4
ov4_021D9FF4: ; 0x021D9FF4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	movs r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bne _021DA03C
	cmp r6, #0
	beq _021DA03C
	ldr r0, _021DA168 ; =0x0221A504
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x514]
	cmp r0, #0
	bne _021DA0A0
	bl ov4_021DE478
	mov r0, #3
	bl ov4_021D9CD8
	b _021DA0A0
_021DA03C:
	cmp r7, #0
	bne _021DA0A0
	mov r0, #6
	bl ov4_021D9CD8
	ldr r0, _021DA168 ; =0x0221A504
	mov r2, #0
	ldr r3, [r0, #0]
	ldrb r0, [r3, #0x381]
	cmp r0, #0
	blt _021DA0A0
	ldr r1, [r3, #0x64]
_021DA068:
	add r0, r3, r2, lsl #2
	ldr r0, [r0, #0x468]
	cmp r1, r0
	bne _021DA090
	ldr r0, _021DA168 ; =0x0221A504
	ldr r1, [r0, #0]
	add r0, r1, r2
	ldrb r0, [r0, #0x644]
	strb r0, [r1, #0x2c]
	b _021DA0A0
_021DA090:
	ldrb r0, [r3, #0x381]
	add r2, r2, #1
	cmp r2, r0
	ble _021DA068
_021DA0A0:
	ldr r0, _021DA168 ; =0x0221A504
	ldr r0, [r0, #0]
	ldrb r1, [r0, #0x381]
	add r0, r0, #0x244
	add r0, r0, #0x400
	add r1, r1, #1
	bl ov4_021D9D58
	ldr r1, _021DA168 ; =0x0221A504
	ldr r1, [r1, #0]
	str r0, [r1, #0x664]
	bl ov4_021DEA68
	ldr r0, _021DA168 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x389]
	cmp r0, #2
	ldrneb r0, [r1, #0x389]
	cmpne r0, #3
	bne _021DA11C
	ldr r0, _021DA168 ; =0x0221A504
	ldr r1, [sp, #0x20]
	ldr r3, [r0, #0]
	mov r0, r7
	str r1, [sp]
	ldr r2, [r3, #0x8c]
	mov r1, r6
	str r2, [sp, #4]
	ldr r6, [r3, #0x88]
	mov r2, r5
	mov r3, r4
	blx r6
	b _021DA130
_021DA11C:
	ldr r2, [r1, #0x84]
	ldr r3, [r1, #0x80]
	mov r0, r7
	mov r1, r6
	blx r3
_021DA130:
	cmp r7, #0
	ldrne r0, _021DA168 ; =0x0221A504
	ldrne r0, [r0]
	cmpne r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r0, #0x24]
	cmp r0, #5
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #3
	bl ov4_021D9CD8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DA168: .word Unk_ov4_0221A504
	arm_func_end ov4_021D9FF4

	arm_func_start ov4_021DA16C
ov4_021DA16C: ; 0x021DA16C
	stmfd sp!, {r3, lr}
	ldr r1, [r1, #4]
	ldr r0, _021DA19C ; =0x00000603
	cmp r1, r0
	ldrne r0, _021DA1A0 ; =0x00000901
	cmpne r1, r0
	addne r0, r0, #0x200
	cmpne r1, r0
	ldmeqia sp!, {r3, pc}
	mov r0, #3
	bl ov4_021D9D8C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DA19C: .word 0x00000603
_021DA1A0: .word 0x00000901
	arm_func_end ov4_021DA16C

	arm_func_start ov4_021DA1A4
ov4_021DA1A4: ; 0x021DA1A4
	stmfd sp!, {r4, r5, r6, r7, lr}
	sub sp, sp, #0xc
	add r4, sp, #0
	mov r3, #0
	mov r5, r1
	strb r3, [r4]
	strb r3, [r4, #1]
	strb r3, [r4, #2]
	strb r3, [r4, #3]
	strb r3, [r4, #4]
	strb r3, [r4, #5]
	strb r3, [r4, #6]
	strb r3, [r4, #7]
	strb r3, [r4, #8]
	strb r3, [r4, #9]
	strb r3, [r4, #0xa]
	strb r3, [r4, #0xb]
	ldr r4, [r5, #8]
	mov r6, r0
	bl ov4_021DB7B4
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DA300 ; =0x02217478
	bl strlen
	mov r2, r0
	ldr r1, _021DA300 ; =0x02217478
	mov r0, r4
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DA300 ; =0x02217478
	bl strlen
	add r4, r4, r0
	mov r0, r4
	mov r1, #0x76
	bl strchr
	sub r7, r0, r4
	add r0, sp, #0
	mov r1, r4
	mov r2, r7
	bl strncpy
	cmp r7, #0xa
	addhi sp, sp, #0xc
	ldmhiia sp!, {r4, r5, r6, r7, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0xa
	bl strtoul
	cmp r0, #3
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DA304 ; =0x02217480
	add r1, r7, #1
	add r4, r4, r1
	bl strlen
	mov r2, r0
	ldr r1, _021DA304 ; =0x02217480
	mov r0, r4
	bl memcmp
	cmp r0, #0
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldr r0, _021DA308 ; =0x0221A504
	ldr r1, [r0, #0]
	ldr r0, [r1, #0x24]
	cmp r0, #5
	beq _021DA2DC
	cmp r0, #6
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
	ldrb r0, [r1, #0x389]
	cmp r0, #2
	ldrneb r0, [r1, #0x389]
	cmpne r0, #3
	addne sp, sp, #0xc
	ldmneia sp!, {r4, r5, r6, r7, pc}
_021DA2DC:
	ldr r0, _021DA304 ; =0x02217480
	bl strlen
	mov r2, r0
	ldr r1, [r5, #0]
	mov r0, r6
	add r2, r4, r2
	bl ov4_021DE318
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, pc}
	; .align 2, 0
_021DA300: .word 0x02217478
_021DA304: .word 0x02217480
_021DA308: .word Unk_ov4_0221A504
	arm_func_end ov4_021DA1A4

	arm_func_start ov4_021DA30C
ov4_021DA30C: ; 0x021DA30C
	ldr ip, _021DA314 ; =ov4_021E4EE8
	bx ip
	; .align 2, 0
_021DA314: .word ov4_021E4EE8
	arm_func_end ov4_021DA30C

	arm_func_start ov4_021DA318
ov4_021DA318: ; 0x021DA318
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r5, #0
	mov fp, r0
	mov sb, r1
	mov sl, r5
	bl ov4_021DECDC
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp sb, #4
	addls pc, pc, sb, lsl #2
	b _021DA37C
_021DA34C: ; jump table
	b _021DA360 ; case 0
	b _021DA360 ; case 1
	b _021DA368 ; case 2
	b _021DA368 ; case 3
	b _021DA374 ; case 4
_021DA360:
	mov r8, r5
	b _021DA37C
_021DA368:
	mov r8, #6
	ldr r6, _021DA668 ; =0xFFFFE250
	b _021DA37C
_021DA374:
	ldr r6, _021DA66C ; =0xFFFFE24F
	mov r8, #9
_021DA37C:
	cmp r8, #0
	bne _021DA438
	mov r0, fp
	bl ov4_021F87B8
	movs r5, r0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, _021DA670 ; =0x0221A504
	ldrb r4, [r5, #1]
	ldr r0, [r0, #0]
	mov r7, #1
	ldr r0, [r0, #0x664]
	tst r0, r7, lsl r4
	mov r0, r4
	moveq r7, #0
	bl ov4_021E50F8
	ldr r0, _021DA670 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x389]
	cmp r0, #2
	cmpeq sb, #0
	beq _021DA3E4
	ldrb r0, [r1, #0x389]
	cmp r0, #3
	cmpeq r4, #0
	bne _021DA3E8
_021DA3E4:
	mov sl, #1
_021DA3E8:
	mov r0, r4
	bl ov4_021D9CF8
	ldr r1, _021DA670 ; =0x0221A504
	ldrb r5, [r5]
	ldr r3, _021DA674 ; =0x0221A50C
	mov fp, #0
	str fp, [r3, r5, lsl #2]
	ldr r2, [r1, #0]
	mov r5, r0
	ldrb r1, [r2, #0x381]
	cmp r1, #0
	subne r0, r1, #1
	strneb r0, [r2, #0x381]
	ldr r0, _021DA670 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x388]
	cmp r0, #0
	ldrneb r0, [r1, #0x388]
	subne r0, r0, #1
	strneb r0, [r1, #0x388]
_021DA438:
	ldr r0, _021DA670 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	ldreq r0, [r1, #0x24]
	cmpeq r0, #6
	cmpeq r7, #0
	bne _021DA480
	ldrb r0, [r1, #0x389]
	cmp r0, #2
	cmpeq r8, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov4_021DEB94
	mov r0, r5
	bl ov4_021DE7E8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DA480:
	mov r0, r8
	mov r1, r6
	mov r2, r5
	bl ov4_021DE66C
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	cmp r8, #0
	beq _021DA4BC
	ldr r1, _021DA678 ; =0xFFFEC780
	mov r0, r8
	add r1, r6, r1
	bl ov4_021D7724
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021DA4BC:
	ldr r0, _021DA670 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	bne _021DA52C
	ldrb r0, [r1, #0x389]
	cmp r0, #2
	ldrneb r0, [r1, #0x389]
	cmpne r0, #3
	bne _021DA52C
	ldr r2, _021DA670 ; =0x0221A504
	ldr r1, [r2, #0]
	ldrb r0, [r1, #0x381]
	add r6, r0, #2
	add r3, r1, r6, lsl #2
	ldr r3, [r3, #0x468]
	cmp r3, #0
	beq _021DA52C
	add r3, r1, r6
	ldrb r3, [r3, #0x644]
	add r0, r0, #1
	add r0, r1, r0
	strb r3, [r0, #0x644]
	ldr r0, [r2, #0]
	ldrb r1, [r0, #0x381]
	add r0, r1, #1
	add r1, r1, #3
	bl ov4_021DE870
_021DA52C:
	ldr r0, _021DA670 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x389]
	cmp r0, #2
	bne _021DA574
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	bne _021DA554
	bl ov4_021DEB94
	b _021DA590
_021DA554:
	ldrb r0, [r1, #0x381]
	cmp r0, #0
	bne _021DA590
	ldr r1, _021DA67C ; =0x02217474
	mov r0, #1
	mov r2, #0
	bl ov4_021DB978
	b _021DA590
_021DA574:
	ldrb r0, [r1, #0x381]
	cmp r0, #0
	bne _021DA590
	ldr r1, _021DA67C ; =0x02217474
	mov r0, #1
	mov r2, #0
	bl ov4_021DB978
_021DA590:
	ldr r0, _021DA670 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x389]
	cmp r0, #0
	ldrneb r0, [r1, #0x389]
	cmpne r0, #1
	bne _021DA5C8
	ldr r0, _021DA670 ; =0x0221A504
	ldr r2, [r0, #0]
	ldrb r1, [r2, #0x388]
	strb r1, [r2, #0x38a]
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x384]
	bl ov4_021FC194
_021DA5C8:
	ldr r0, _021DA670 ; =0x0221A504
	ldr r6, [r0, #0]
	ldr r0, [r6, #0x90]
	cmp r0, #0
	cmpne r7, #0
	beq _021DA620
	cmp sb, #0
	moveq r7, #1
	mov r0, r5
	movne r7, #0
	bl ov4_021DB8DC
	str r0, [sp]
	ldr r1, [r6, #0x94]
	ldr r0, _021DA670 ; =0x0221A504
	str r1, [sp, #4]
	ldr r1, [r0, #0]
	mov r0, r8
	ldr r5, [r1, #0x90]
	mov r1, r7
	mov r2, sl
	mov r3, r4
	blx r5
_021DA620:
	ldr r0, _021DA670 ; =0x0221A504
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0x2d]
	cmp r0, #0
	ldreqb r0, [r1, #0x389]
	cmpeq r0, #2
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrb r0, [r1, #0x381]
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	bl ov4_021DC734
	bl ov4_021DE478
	mov r0, #3
	bl ov4_021D9CD8
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021DA668: .word 0xFFFFE250
_021DA66C: .word 0xFFFFE24F
_021DA670: .word Unk_ov4_0221A504
_021DA674: .word Unk_ov4_0221A50C
_021DA678: .word 0xFFFEC780
_021DA67C: .word 0x02217474
	arm_func_end ov4_021DA318

	arm_func_start ov4_021DA680
ov4_021DA680: ; 0x021DA680
	ldr ip, _021DA688 ; =ov4_021E4F24
	bx ip
	; .align 2, 0
_021DA688: .word ov4_021E4F24
	arm_func_end ov4_021DA680

	arm_func_start ov4_021DA68C
ov4_021DA68C: ; 0x021DA68C
	stmfd sp!, {r3, lr}
	bl ov4_021F876C
	bl ov4_021EAF38
	ldr r2, _021DA6C0 ; =0x0221A504
	ldr r1, _021DA6C4 ; =0xFFFE8515
	str r0, [r2, #4]
	mov r0, #9
	bl ov4_021D7724
	ldr r0, _021DA6C0 ; =0x0221A504
	mov r1, #0
	ldr r0, [r0, #0]
	str r1, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DA6C0: .word Unk_ov4_0221A504
_021DA6C4: .word 0xFFFE8515
	arm_func_end ov4_021DA68C

	.data


	.global Unk_ov4_0221746C
Unk_ov4_0221746C: ; 0x0221746C
	.incbin "incbin/overlay4_data.bin", 0x15EC, 0x15F0 - 0x15EC

	.global Unk_ov4_02217470
Unk_ov4_02217470: ; 0x02217470
	.incbin "incbin/overlay4_data.bin", 0x15F0, 0x15F4 - 0x15F0

	.global Unk_ov4_02217474
Unk_ov4_02217474: ; 0x02217474
	.incbin "incbin/overlay4_data.bin", 0x15F4, 0x15F8 - 0x15F4

	.global Unk_ov4_02217478
Unk_ov4_02217478: ; 0x02217478
	.incbin "incbin/overlay4_data.bin", 0x15F8, 0x1600 - 0x15F8

	.global Unk_ov4_02217480
Unk_ov4_02217480: ; 0x02217480
	.incbin "incbin/overlay4_data.bin", 0x1600, 0x4



	.bss


	.global Unk_ov4_0221A504
Unk_ov4_0221A504: ; 0x0221A504
	.space 0x4

	.global Unk_ov4_0221A508
Unk_ov4_0221A508: ; 0x0221A508
	.space 0x4

	.global Unk_ov4_0221A50C
Unk_ov4_0221A50C: ; 0x0221A50C
	.space 0x80

	.global Unk_ov4_0221A58C
Unk_ov4_0221A58C: ; 0x0221A58C
	.space 0x100

