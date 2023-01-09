	.include "macros/function.inc"
	.include "include/dwc_auth.inc"

	.extern OSi_ThreadInfo
	.extern Unk_021D0D40
	.extern Unk_ov4_0221A43C

	.text


	arm_func_start DWC_Auth_SetCustomNas
DWC_Auth_SetCustomNas: ; 0x021D3038
	ldr r1, _021D3044 ; =0x02215EA0
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_021D3044: .word Unk_ov4_02215EA0
	arm_func_end DWC_Auth_SetCustomNas

	arm_func_start DWC_Auth_Create
DWC_Auth_Create: ; 0x021D3048
	stmfd sp!, {r3, r4, r5, lr}
	ldr r2, _021D315C ; =0x0221A414
	mov r5, r0
	ldr r0, [r2, #8]
	mov r4, r1
	cmp r0, #0
	ldr r2, [r5, #0x40]
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _021D3160 ; =0x02215EE4
	ldr r1, _021D3164 ; =0x000013F4
	blx r2
	ldr r1, _021D315C ; =0x0221A414
	cmp r0, #0
	str r0, [r1, #8]
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _021D3164 ; =0x000013F4
	mov r1, #0
	bl MI_CpuFill8
	ldr r3, _021D315C ; =0x0221A414
	mov r1, #0
	ldr r0, [r3, #8]
	mov r2, #0x1c4
	add r0, r0, #0x1000
	str r4, [r0, #0x314]
	str r1, [r3, #0]
	ldr r0, [r3, #8]
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuFill8
	ldr r1, _021D315C ; =0x0221A414
	ldr r2, _021D3168 ; =0x00004E84
	ldr r0, [r1, #8]
	mov r4, #4
	add r0, r0, #0x1000
	str r2, [r0, #8]
	ldr lr, [r1, #8]
	add r0, lr, #0x1cc
	add ip, r0, #0x1000
_021D30E8:
	ldmia r5!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	subs r4, r4, #1
	bne _021D30E8
	ldmia r5, {r0, r1}
	stmia ip, {r0, r1}
	add r0, lr, #0x1100
	mov r2, #0
	strh r2, [r0, #0xfe]
	ldr r1, _021D315C ; =0x0221A414
	mov r0, #1
	ldr r1, [r1, #8]
	add r1, r1, #0x1000
	strb r2, [r1, #0x20b]
	bl ov4_021D3410
	ldr r2, _021D315C ; =0x0221A414
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, #0
	str r0, [r2, #4]
	bl ov4_021D316C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021D315C: .word Unk_ov4_0221A414
_021D3160: .word Unk_ov4_02215EE4
_021D3164: .word 0x000013F4
_021D3168: .word 0x00004E84
	arm_func_end DWC_Auth_Create

	arm_func_start ov4_021D316C
ov4_021D316C: ; 0x021D316C
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	ldr r0, _021D3214 ; =0x0221A414
	ldr r0, [r0, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_InitMutex
	ldr r1, _021D3214 ; =0x0221A414
	mov r2, #0
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r1, [r1, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	beq _021D31C8
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_IsThreadTerminated
	cmp r0, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, pc}
_021D31C8:
	ldr r0, _021D3214 ; =0x0221A414
	mov r3, #0x1000
	ldr lr, [r0, #8]
	ldr r1, _021D3218 ; =ov4_021D3520
	add r0, lr, #0x318
	ldr r2, _021D321C ; =0x0221A41C
	str r3, [sp]
	mov ip, #0x10
	add r0, r0, #0x1000
	add r3, lr, #0x1000
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _021D3214 ; =0x0221A414
	ldr r0, [r0, #8]
	add r0, r0, #0x318
	add r0, r0, #0x1000
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D3214: .word Unk_ov4_0221A414
_021D3218: .word ov4_021D3520
_021D321C: .word Unk_ov4_0221A41C
	arm_func_end ov4_021D316C

	arm_func_start DWC_Auth_Abort
DWC_Auth_Abort: ; 0x021D3220
	stmfd sp!, {r3, lr}
	ldr r0, _021D32A8 ; =0x0221A414
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _021D32A8 ; =0x0221A414
	mov r2, #1
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r2, [r0, #0x3f0]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldr r0, _021D32A8 ; =0x0221A414
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	cmp r0, #0
	beq _021D3280
	bl DWC_Http_Abort
_021D3280:
	ldr r0, _021D32A8 ; =0x0221A414
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D32A8: .word Unk_ov4_0221A414
	arm_func_end DWC_Auth_Abort

	arm_func_start DWC_Auth_Destroy
DWC_Auth_Destroy: ; 0x021D32AC
	stmfd sp!, {r4, lr}
	ldr r0, _021D32FC ; =0x0221A414
	ldr r0, [r0, #8]
	cmp r0, #0
	ldmeqia sp!, {r4, pc}
	add r1, r0, #0x1000
	ldr r0, [r1, #0x314]
	ldr r4, [r1, #0x210]
	cmp r0, #0
	beq _021D32D8
	bl DWC_Http_Destroy
_021D32D8:
	ldr r1, _021D32FC ; =0x0221A414
	ldr r0, _021D3300 ; =0x02215EF4
	ldr r1, [r1, #8]
	mov r2, #0
	blx r4
	ldr r0, _021D32FC ; =0x0221A414
	mov r1, #0
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D32FC: .word Unk_ov4_0221A414
_021D3300: .word Unk_ov4_02215EF4
	arm_func_end DWC_Auth_Destroy

	arm_func_start DWC_Auth_Join
DWC_Auth_Join: ; 0x021D3304
	stmfd sp!, {r3, lr}
	ldr r0, _021D3330 ; =0x0221A414
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x384]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	add r0, r1, #0x318
	add r0, r0, #0x1000
	bl OS_JoinThread
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021D3330: .word Unk_ov4_0221A414
	arm_func_end DWC_Auth_Join

	arm_func_start DWC_Auth_GetError
DWC_Auth_GetError: ; 0x021D3334
	stmfd sp!, {r4, lr}
	ldr r0, _021D337C ; =0x0221A414
	ldr r0, [r0, #8]
	cmp r0, #0
	moveq r0, #0x16
	ldmeqia sp!, {r4, pc}
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, _021D337C ; =0x0221A414
	ldr r1, [r0, #8]
	add r0, r1, #0x3d8
	add r1, r1, #0x1000
	add r0, r0, #0x1000
	ldr r4, [r1, #4]
	bl OS_UnlockMutex
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D337C: .word Unk_ov4_0221A414
	arm_func_end DWC_Auth_GetError

	arm_func_start DWC_Auth_GetResult
DWC_Auth_GetResult: ; 0x021D3380
	stmfd sp!, {r4, lr}
	ldr r1, _021D33FC ; =0x0221A414
	mov r4, r0
	ldr r1, [r1, #8]
	cmp r1, #0
	bne _021D33A4
	mov r1, #0
	mov r2, #0x1c4
	bl MI_CpuFill8
_021D33A4:
	ldr r0, _021D33FC ; =0x0221A414
	mov r1, r4
	ldr r0, [r0, #8]
	mov r2, #0x1c4
	add r0, r0, #8
	add r0, r0, #0x1000
	bl MI_CpuCopy8
	ldr r1, [r4, #0]
	ldr r0, _021D3400 ; =0x00004E20
	cmp r1, r0
	blt _021D33DC
	ldr r0, _021D3404 ; =0x00007530
	cmp r1, r0
	blt _021D33E4
_021D33DC:
	ldr r0, _021D3408 ; =0x00005206
	str r0, [r4, #0]
_021D33E4:
	ldr r1, [r4, #0]
	ldr r0, _021D340C ; =0x00004E84
	cmp r1, r0
	rsbge r0, r1, #0
	strge r0, [r4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D33FC: .word Unk_ov4_0221A414
_021D3400: .word 0x00004E20
_021D3404: .word 0x00007530
_021D3408: .word 0x00005206
_021D340C: .word 0x00004E84
	arm_func_end DWC_Auth_GetResult

	arm_func_start ov4_021D3410
ov4_021D3410: ; 0x021D3410
	stmfd sp!, {r4, lr}
	ldr r1, _021D3508 ; =0x02215EA0
	mov r4, r0
	ldr r0, [r1, #0]
	ldr r1, _021D350C ; =0x02215F04
	bl strcmp
	cmp r0, #0
	ldrne r0, _021D3508 ; =0x02215EA0
	movne r1, #1
	strne r1, [r0, #0x14]
	ldr r0, _021D3510 ; =0x0221A414
	ldr r2, _021D3508 ; =0x02215EA0
	ldr r0, [r0, #8]
	ldr r1, _021D3514 ; =0x02215EA0
	add r0, r0, #0x1000
	ldr r3, [r0, #0x20c]
	str r3, [r2, #0xc]
	ldr r3, [r0, #0x210]
	str r3, [r2, #0x10]
	ldr r0, [r0, #0x314]
	bl DWC_Http_Create
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	cmp r4, #1
	bne _021D3480
	ldr r0, _021D3518 ; =0x0221A420
	bl sub_020A283C
_021D3480:
	ldr r0, _021D3510 ; =0x0221A414
	ldr r1, [r0, #8]
	add r0, r1, #0x1000
	add r2, r1, #0x1cc
	ldr r0, [r0, #0x314]
	add r1, r1, #0x1200
	add r2, r2, #0x1000
	bl ov4_021D3C74
	ldr r2, _021D3510 ; =0x0221A414
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	ldr r0, [r0, #0x314]
	bl DWC_Http_FinishHeader
	cmp r0, #0
	movne r0, #4
	ldmneia sp!, {r4, pc}
	ldr r0, _021D351C ; =0x021CCC80
	ldr r0, [r0, #4]
	bl OS_GetThreadPriority
	ldr r1, _021D3510 ; =0x0221A414
	ldr r2, [r1, #8]
	sub r1, r0, #1
	add r0, r2, #0x1000
	ldr r0, [r0, #0x314]
	bl DWC_Http_StartThread
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D3508: .word Unk_ov4_02215EA0
_021D350C: .word Unk_ov4_02215F04
_021D3510: .word Unk_ov4_0221A414
_021D3514: .word Unk_ov4_02215EA0
_021D3518: .word Unk_ov4_0221A420
_021D351C: .word OSi_ThreadInfo
	arm_func_end ov4_021D3410

	arm_func_start ov4_021D3520
ov4_021D3520: ; 0x021D3520
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r8, #0
_021D3528:
	ldr r0, _021D37C4 ; =0x0221A414
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r0, r1, #0x1000
	ldr r0, [r0, #0xba4]
	cmp r0, #0
	beq _021D3554
	add r0, r1, #0x338
	add r0, r0, #0x1800
	bl OS_JoinThread
_021D3554:
	ldr r2, _021D37C4 ; =0x0221A414
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r1, [r0, #0x314]
	add r1, r1, #0x1000
	ldr r1, [r1, #0x20]
	cmp r1, #8
	beq _021D35F0
	ldr r1, _021D37C8 ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x20]
	cmp r0, #7
	bne _021D35A4
	mov r0, #0x14
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D35A4:
	cmp r8, #2
	ble _021D35E0
	cmp r0, #2
	bne _021D35C0
	mov r0, #9
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D35C0:
	cmp r0, #3
	bne _021D35D4
	mov r0, #0xb
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D35D4:
	mov r0, #0xd
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D35E0:
	mov r0, #1
	add r8, r8, #1
	str r0, [sp]
	b _021D3660
_021D35F0:
	bl ov4_021D37D4
	cmp r0, #0x10
	beq _021D3618
	cmp r0, #0x11
	beq _021D363C
	cmp r0, #0x15
	bne _021D3644
	mov r0, #0x15
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D3618:
	cmp r8, #2
	ble _021D362C
	mov r0, #0x10
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D362C:
	mov r0, #0
	add r8, r8, #1
	str r0, [sp]
	b _021D3660
_021D363C:
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D3644:
	cmp r8, #2
	blt _021D3654
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D3654:
	mov r0, #1
	add r8, r8, #1
	str r0, [sp]
_021D3660:
	bl OS_GetTick
	mov sb, r0
	mov sl, r1
	bl OS_GetTick
	subs r2, r0, sb
	sbc r0, r1, sl
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	ldr r2, _021D37CC ; =0x000082EA
	mov r3, #0
	bl _ull_div
	cmp r1, #0
	ldr r7, _021D37D0 ; =0x00001388
	cmpeq r0, r7
	bhs _021D3740
	mov fp, #0
	ldr r6, _021D37CC ; =0x000082EA
	ldr r5, _021D37C4 ; =0x0221A414
	mov r4, fp
_021D36B0:
	ldr r0, [r5, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r2, [r5, #8]
	add r0, r2, #0x1000
	ldr r1, [r0, #0x3f0]
	cmp r1, #1
	bne _021D36FC
	ldr r2, _021D37C8 ; =0x00004E84
	ldr r1, _021D37C4 ; =0x0221A414
	str r2, [r0, #8]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, #0x14
	bl ov4_021D3E18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D36FC:
	add r0, r2, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	mov r0, r7
	bl OS_Sleep
	bl OS_GetTick
	subs r2, r0, sb
	sbc r0, r1, sl
	mov r1, r0, lsl #6
	orr r1, r1, r2, lsr #26
	mov r0, r2, lsl #6
	mov r2, r6
	mov r3, fp
	bl _ull_div
	cmp r1, r4
	cmpeq r0, r7
	blo _021D36B0
_021D3740:
	ldr r0, _021D37C4 ; =0x0221A414
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	bl DWC_Http_Destroy
	ldr r0, _021D37C4 ; =0x0221A414
	ldr r0, [r0, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r0, [sp]
	bl ov4_021D3410
	ldr r2, _021D37C4 ; =0x0221A414
	ldr r1, [r2, #8]
	add r1, r1, #0x1000
	str r0, [r1, #4]
	ldr r3, [r2, #8]
	add r0, r3, #0x1000
	ldr r1, [r0, #4]
	cmp r1, #0
	beq _021D37B0
	ldr r1, _021D37C8 ; =0x00004E84
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021D37B0:
	add r0, r3, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	b _021D3528
_021D37C0:
	.byte 0xF8, 0x8F, 0xBD, 0xE8
_021D37C4: .word Unk_ov4_0221A414
_021D37C8: .word 0x00004E84
_021D37CC: .word 0x000082EA
_021D37D0: .word 0x00001388
	arm_func_end ov4_021D3520

	arm_func_start ov4_021D37D4
ov4_021D37D4: ; 0x021D37D4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _021D398C ; =0x0221A414
	mov r1, #0
	ldr r0, [r0, #8]
	add r2, r0, #0x1000
	ldr r0, [r2, #0x314]
	ldr r4, [r2, #0x20c]
	ldr r5, [r2, #0x210]
	bl DWC_Http_ParseResult
	cmp r0, #1
	beq _021D381C
	ldr r0, _021D398C ; =0x0221A414
	ldr r2, _021D3990 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #0xe
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_021D381C:
	bl ov4_021D39AC
	cmp r0, #0
	movne r0, #0xe
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _021D398C ; =0x0221A414
	ldr r1, _021D3990 ; =0x00004E84
	ldr r0, [r0, #8]
	add r0, r0, #0x1000
	ldr r2, [r0, #8]
	cmp r2, r1
	bge _021D38DC
	sub r0, r1, #0x62
	cmp r2, r0
	bne _021D38D4
	ldr r0, _021D3994 ; =0x02215F24
	ldr r1, _021D3998 ; =0x0000071F
	blx r4
	movs r4, r0
	bne _021D3884
	ldr r0, _021D398C ; =0x0221A414
	ldr r2, _021D3990 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #2
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_021D3884:
	add r1, r4, #0x1f
	ldr r0, _021D399C ; =0x0221A420
	bic r1, r1, #0x1f
	bl sub_020A3C5C
	cmp r0, #1
	mov r2, #0
	beq _021D38C8
	ldr r0, _021D39A0 ; =0x02215F34
	mov r1, r4
	blx r5
	ldr r0, _021D398C ; =0x0221A414
	ldr r2, _021D3990 ; =0x00004E84
	ldr r1, [r0, #8]
	mov r0, #0xf
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_021D38C8:
	ldr r0, _021D39A0 ; =0x02215F34
	mov r1, r4
	blx r5
_021D38D4:
	mov r0, #0x15
	ldmia sp!, {r3, r4, r5, pc}
_021D38DC:
	add r0, r1, #4
	cmp r2, r0
	beq _021D38F8
	add r0, r1, #8
	cmp r2, r0
	beq _021D391C
	b _021D3984
_021D38F8:
	ldr r0, _021D399C ; =0x0221A420
	bl sub_020A3CAC
	ldr r0, _021D398C ; =0x0221A414
	ldr r2, _021D39A4 ; =0x00004E88
	ldr r1, [r0, #8]
	mov r0, #0x10
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_021D391C:
	ldr r0, _021D3994 ; =0x02215F24
	mov r1, #0x700
	blx r4
	movs r4, r0
	bne _021D394C
	ldr r0, _021D398C ; =0x0221A414
	ldr r2, _021D39A8 ; =0x00004E8C
	ldr r1, [r0, #8]
	mov r0, #0x11
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_021D394C:
	add r0, r4, #0x1f
	bic r0, r0, #0x1f
	bl sub_020A3C18
	ldr r0, _021D39A0 ; =0x02215F34
	mov r1, r4
	mov r2, #0
	blx r5
	ldr r0, _021D398C ; =0x0221A414
	ldr r2, _021D39A8 ; =0x00004E8C
	ldr r1, [r0, #8]
	mov r0, #0x11
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_021D3984:
	mov r0, #0x12
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021D398C: .word Unk_ov4_0221A414
_021D3990: .word 0x00004E84
_021D3994: .word Unk_ov4_02215F24
_021D3998: .word 0x0000071F
_021D399C: .word Unk_ov4_0221A420
_021D39A0: .word Unk_ov4_02215F34
_021D39A4: .word 0x00004E88
_021D39A8: .word 0x00004E8C
	arm_func_end ov4_021D37D4

	arm_func_start ov4_021D39AC
ov4_021D39AC: ; 0x021D39AC
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _021D3C44 ; =0x0221A414
	mov r1, #0
	ldr r0, [r0, #8]
	str r1, [sp]
	add r0, r0, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _021D3C48 ; =0x02215F40
	bl DWC_Http_GetResult
	str r0, [sp]
	cmp r0, #0
	beq _021D39E0
	bl DWC_Auth_SetNasTimeDiff
_021D39E0:
	ldr r0, _021D3C44 ; =0x0221A414
	mov r2, #0
	ldr r1, [r0, #8]
	ldr r0, _021D3C4C ; =0x021D0D40
	str r2, [sp]
	str r2, [r0, #0]
	add r0, r1, #0x1000
	ldr r0, [r0, #0x314]
	ldr r1, _021D3C50 ; =0x02215F48
	bl DWC_Http_GetResult
	bl atoi
	ldr r1, _021D3C4C ; =0x021D0D40
	ldr r1, [r1, #0]
	cmp r1, #0x22
	bne _021D3A38
	ldr r0, _021D3C44 ; =0x0221A414
	ldr r2, _021D3C54 ; =0x00004E85
	ldr r1, [r0, #8]
	mov r0, #0xc
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_021D3A38:
	cmp r0, #0xc8
	beq _021D3A60
	ldr r1, _021D3C44 ; =0x0221A414
	add r0, r0, #0x1d8
	ldr r1, [r1, #8]
	add r2, r0, #0x5800
	add r0, r1, #0x1000
	str r2, [r0, #8]
	mov r0, #0x12
	ldmia sp!, {r3, r4, r5, pc}
_021D3A60:
	ldr r0, _021D3C44 ; =0x0221A414
	ldr r1, _021D3C58 ; =0x02215F54
	ldr r2, [r0, #8]
	mov r3, #4
	add r0, r2, #0x1000
	add r2, r2, #0xc
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl DWC_Http_GetBase64DecodedResult
	cmp r0, #0
	bgt _021D3AA8
	ldr r0, _021D3C44 ; =0x0221A414
	ldr r2, _021D3C54 ; =0x00004E85
	ldr r1, [r0, #8]
	mov r0, #0xe
	add r1, r1, #0x1000
	str r2, [r1, #8]
	ldmia sp!, {r3, r4, r5, pc}
_021D3AA8:
	ldr r0, _021D3C44 ; =0x0221A414
	add r1, sp, #0
	ldr r0, [r0, #8]
	mov r2, #0xa
	add r0, r0, #0xc
	add r0, r0, #0x1000
	bl strtol
	ldr r1, _021D3C44 ; =0x0221A414
	mov r4, r0
	ldr r5, [r1, #8]
	add r0, r5, #0xc
	add r0, r0, #0x1000
	bl strlen
	add r1, r5, #0xc
	add r1, r1, #0x1000
	ldr r2, [sp]
	add r0, r1, r0
	cmp r2, r0
	beq _021D3B08
	ldr r1, _021D3C54 ; =0x00004E85
	add r0, r5, #0x1000
	str r1, [r0, #8]
	mov r0, #0xc
	ldmia sp!, {r3, r4, r5, pc}
_021D3B08:
	add r0, r4, #0xe20
	add r1, r0, #0x4000
	add r0, r5, #0x1000
	str r1, [r0, #8]
	cmp r4, #0x64
	bge _021D3C3C
	ldr r5, _021D3C44 ; =0x0221A414
	mov r0, #0
	ldr r2, [r5, #8]
	ldr r1, _021D3C5C ; =0x02215F60
	add r2, r2, #0x1000
	strb r0, [r2, #0x52]
	ldr r2, [r5, #8]
	ldr r3, _021D3C60 ; =0x0000012D
	add r2, r2, #0x1000
	strb r0, [r2, #0x1f]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x17f]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x10]
	ldr r2, [r5, #8]
	add r2, r2, #0x1000
	strb r0, [r2, #0x188]
	ldr r2, [r5, #8]
	add r0, r2, #0x1000
	add r2, r2, #0x52
	ldr r0, [r0, #0x314]
	add r2, r2, #0x1000
	bl DWC_Http_GetBase64DecodedResult
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _021D3C64 ; =0x02215F68
	add r0, r2, #0x1000
	add r2, r2, #0x1f
	ldr r0, [r0, #0x314]
	mov r3, #0x33
	add r2, r2, #0x1000
	bl DWC_Http_GetBase64DecodedResult
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _021D3C68 ; =0x02215F70
	add r0, r2, #0x1000
	add r2, r2, #0x7f
	ldr r0, [r0, #0x314]
	mov r3, #9
	add r2, r2, #0x1100
	bl DWC_Http_GetBase64DecodedResult
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _021D3C6C ; =0x02215F7C
	add r0, r2, #0x1000
	add r2, r2, #0x10
	ldr r0, [r0, #0x314]
	mov r3, #0xf
	add r2, r2, #0x1000
	bl DWC_Http_GetBase64DecodedResult
	mov r0, r5
	ldr r2, [r0, #8]
	ldr r1, _021D3C70 ; =0x02215F88
	add r0, r2, #0x1000
	add r2, r2, #0x188
	ldr r0, [r0, #0x314]
	mov r3, #0x41
	add r2, r2, #0x1000
	bl DWC_Http_GetRawResult
	mov r1, r5
	ldr r0, [r1, #8]
	mov r2, #0
	add r0, r0, #0x1000
	cmp r4, #0x28
	strb r2, [r0, #0x1b3]
	movne r0, #1
	strne r0, [r1]
	moveq r0, #2
	streq r0, [r1]
_021D3C3C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021D3C44: .word Unk_ov4_0221A414
_021D3C48: .word Unk_ov4_02215F40
_021D3C4C: .word Unk_021D0D40
_021D3C50: .word Unk_ov4_02215F48
_021D3C54: .word 0x00004E85
_021D3C58: .word Unk_ov4_02215F54
_021D3C5C: .word Unk_ov4_02215F60
_021D3C60: .word 0x0000012D
_021D3C64: .word Unk_ov4_02215F68
_021D3C68: .word Unk_ov4_02215F70
_021D3C6C: .word Unk_ov4_02215F7C
_021D3C70: .word Unk_ov4_02215F88
	arm_func_end ov4_021D39AC

	arm_func_start ov4_021D3C74
ov4_021D3C74: ; 0x021D3C74
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x94
	ldr r3, _021D3DF0 ; =0x0221A414
	mov r4, r0
	ldr r0, [r3, #0x10]
	ldr r3, [r3, #0xc]
	cmp r0, #0
	mov r6, r1
	mov r5, r2
	cmpeq r3, #0
	bne _021D3CD0
	ldr r0, _021D3DF4 ; =0x02215F94
	bl strlen
	mov r3, r0
	ldr r1, _021D3DF8 ; =0x02215FA0
	ldr r2, _021D3DF4 ; =0x02215F94
	mov r0, r4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	beq _021D3D28
	add sp, sp, #0x94
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, pc}
_021D3CD0:
	ldr r0, _021D3DFC ; =0x02215FA8
	bl strlen
	mov r3, r0
	ldr r1, _021D3DF8 ; =0x02215FA0
	ldr r2, _021D3DFC ; =0x02215FA8
	mov r0, r4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
	mov r0, r6
	bl strlen
	mov r3, r0
	ldr r1, _021D3E00 ; =0x02215FB0
	mov r0, r4
	mov r2, r6
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021D3D28:
	ldr r1, _021D3E04 ; =0x0221A420
	add r0, sp, #0
	bl DWC_Auth_GetCalInfoFromWiFiInfo
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _021D3E08 ; =0x0221A43C
	add r1, sp, #0
	ldr r2, [r0, #0]
	mov r0, r4
	bl DWC_Auth_SetCalInfoToHttp
	cmp r0, #0
	addeq sp, sp, #0x94
	moveq r0, #8
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r0, _021D3DF0 ; =0x0221A414
	ldr r0, [r0, #4]
	cmp r0, #1
	bne _021D3DA4
	ldr r0, _021D3E0C ; =0x02215FB8
	bl strlen
	mov r3, r0
	ldr r1, _021D3E10 ; =0x02215FBC
	ldr r2, _021D3E0C ; =0x02215FB8
	mov r0, r4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021D3DA4:
	mov r0, r5
	bl wcslen
	cmp r0, #0
	beq _021D3DE4
	mov r0, r5
	bl wcslen
	mov r3, r0
	ldr r1, _021D3E14 ; =0x02215FC4
	mov r0, r4
	mov r2, r5
	mov r3, r3, lsl #1
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x94
	movne r0, #8
	ldmneia sp!, {r3, r4, r5, r6, pc}
_021D3DE4:
	mov r0, #0
	add sp, sp, #0x94
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021D3DF0: .word Unk_ov4_0221A414
_021D3DF4: .word Unk_ov4_02215F94
_021D3DF8: .word Unk_ov4_02215FA0
_021D3DFC: .word Unk_ov4_02215FA8
_021D3E00: .word Unk_ov4_02215FB0
_021D3E04: .word Unk_ov4_0221A420
_021D3E08: .word Unk_ov4_0221A43C
_021D3E0C: .word Unk_ov4_02215FB8
_021D3E10: .word Unk_ov4_02215FBC
_021D3E14: .word Unk_ov4_02215FC4
	arm_func_end ov4_021D3C74

	arm_func_start ov4_021D3E18
ov4_021D3E18: ; 0x021D3E18
	stmfd sp!, {r4, lr}
	ldr r1, _021D3E58 ; =0x0221A414
	mov r4, r0
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_LockMutex
	ldr r1, _021D3E58 ; =0x0221A414
	ldr r0, [r1, #8]
	add r0, r0, #0x1000
	str r4, [r0, #4]
	ldr r0, [r1, #8]
	add r0, r0, #0x3d8
	add r0, r0, #0x1000
	bl OS_UnlockMutex
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D3E58: .word Unk_ov4_0221A414
	arm_func_end ov4_021D3E18

	.data


	.global Unk_ov4_02215EA0
Unk_ov4_02215EA0: ; 0x02215EA0
	.incbin "incbin/overlay4_data.bin", 0x20, 0x3C - 0x20

	.global Unk_ov4_02215EBC
Unk_ov4_02215EBC: ; 0x02215EBC
	.incbin "incbin/overlay4_data.bin", 0x3C, 0x64 - 0x3C

	.global Unk_ov4_02215EE4
Unk_ov4_02215EE4: ; 0x02215EE4
	.incbin "incbin/overlay4_data.bin", 0x64, 0x74 - 0x64

	.global Unk_ov4_02215EF4
Unk_ov4_02215EF4: ; 0x02215EF4
	.incbin "incbin/overlay4_data.bin", 0x74, 0x84 - 0x74

	.global Unk_ov4_02215F04
Unk_ov4_02215F04: ; 0x02215F04
	.incbin "incbin/overlay4_data.bin", 0x84, 0xA4 - 0x84

	.global Unk_ov4_02215F24
Unk_ov4_02215F24: ; 0x02215F24
	.incbin "incbin/overlay4_data.bin", 0xA4, 0xB4 - 0xA4

	.global Unk_ov4_02215F34
Unk_ov4_02215F34: ; 0x02215F34
	.incbin "incbin/overlay4_data.bin", 0xB4, 0xC0 - 0xB4

	.global Unk_ov4_02215F40
Unk_ov4_02215F40: ; 0x02215F40
	.incbin "incbin/overlay4_data.bin", 0xC0, 0xC8 - 0xC0

	.global Unk_ov4_02215F48
Unk_ov4_02215F48: ; 0x02215F48
	.incbin "incbin/overlay4_data.bin", 0xC8, 0xD4 - 0xC8

	.global Unk_ov4_02215F54
Unk_ov4_02215F54: ; 0x02215F54
	.incbin "incbin/overlay4_data.bin", 0xD4, 0xE0 - 0xD4

	.global Unk_ov4_02215F60
Unk_ov4_02215F60: ; 0x02215F60
	.incbin "incbin/overlay4_data.bin", 0xE0, 0xE8 - 0xE0

	.global Unk_ov4_02215F68
Unk_ov4_02215F68: ; 0x02215F68
	.incbin "incbin/overlay4_data.bin", 0xE8, 0xF0 - 0xE8

	.global Unk_ov4_02215F70
Unk_ov4_02215F70: ; 0x02215F70
	.incbin "incbin/overlay4_data.bin", 0xF0, 0xFC - 0xF0

	.global Unk_ov4_02215F7C
Unk_ov4_02215F7C: ; 0x02215F7C
	.incbin "incbin/overlay4_data.bin", 0xFC, 0x108 - 0xFC

	.global Unk_ov4_02215F88
Unk_ov4_02215F88: ; 0x02215F88
	.incbin "incbin/overlay4_data.bin", 0x108, 0x114 - 0x108

	.global Unk_ov4_02215F94
Unk_ov4_02215F94: ; 0x02215F94
	.incbin "incbin/overlay4_data.bin", 0x114, 0x120 - 0x114

	.global Unk_ov4_02215FA0
Unk_ov4_02215FA0: ; 0x02215FA0
	.incbin "incbin/overlay4_data.bin", 0x120, 0x128 - 0x120

	.global Unk_ov4_02215FA8
Unk_ov4_02215FA8: ; 0x02215FA8
	.incbin "incbin/overlay4_data.bin", 0x128, 0x130 - 0x128

	.global Unk_ov4_02215FB0
Unk_ov4_02215FB0: ; 0x02215FB0
	.incbin "incbin/overlay4_data.bin", 0x130, 0x138 - 0x130

	.global Unk_ov4_02215FB8
Unk_ov4_02215FB8: ; 0x02215FB8
	.incbin "incbin/overlay4_data.bin", 0x138, 0x13C - 0x138

	.global Unk_ov4_02215FBC
Unk_ov4_02215FBC: ; 0x02215FBC
	.incbin "incbin/overlay4_data.bin", 0x13C, 0x144 - 0x13C

	.global Unk_ov4_02215FC4
Unk_ov4_02215FC4: ; 0x02215FC4
	.incbin "incbin/overlay4_data.bin", 0x144, 0x9



	.bss


	.global Unk_ov4_0221A414
Unk_ov4_0221A414: ; 0x0221A414
	.space 0x4

	.global Unk_ov4_0221A418
Unk_ov4_0221A418: ; 0x0221A418
	.space 0x4

	.global Unk_ov4_0221A41C
Unk_ov4_0221A41C: ; 0x0221A41C
	.space 0x4

	.global Unk_ov4_0221A420
Unk_ov4_0221A420: ; 0x0221A420
	.space 0x14

