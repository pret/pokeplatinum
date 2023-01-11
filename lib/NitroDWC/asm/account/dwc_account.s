	.include "macros/function.inc"
	.include "include/dwc_account.inc"

	

	.text


	arm_func_start DWCi_Acc_SetMaskBits
DWCi_Acc_SetMaskBits: ; 0x020A3F54
	mvn ip, r3
	tst r1, ip
	movne r0, #0
	bxne lr
	mvn r3, r3, lsl r2
	ldr ip, [r0]
	and r3, ip, r3
	orr r1, r3, r1, lsl r2
	str r1, [r0, #0]
	mov r0, #1
	bx lr
	arm_func_end DWCi_Acc_SetMaskBits

	arm_func_start DWCi_Acc_GetUserId
DWCi_Acc_GetUserId: ; 0x020A3F80
	ldr r2, [r0, #0]
	ldr r1, _020A3F9C ; =0x000007FF
	ldr r0, [r0, #4]
	and r1, r2, r1
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	; .align 2, 0
_020A3F9C: .word 0x000007FF
	arm_func_end DWCi_Acc_GetUserId

	arm_func_start DWCi_Acc_GetPlayerId
DWCi_Acc_GetPlayerId: ; 0x020A3FA0
	ldr r0, [r0, #8]
	bx lr
	arm_func_end DWCi_Acc_GetPlayerId

	arm_func_start DWCi_Acc_GetFriendKey
DWCi_Acc_GetFriendKey: ; 0x020A3FA8
	ldr r1, [r0, #8]
	ldr r0, [r0, #4]
	orr r1, r1, #0
	orr r0, r0, #0
	bx lr
	arm_func_end DWCi_Acc_GetFriendKey

	arm_func_start DWCi_Acc_GetGsProfileId
DWCi_Acc_GetGsProfileId: ; 0x020A3FBC
	ldr r0, [r0, #4]
	bx lr
	arm_func_end DWCi_Acc_GetGsProfileId

	arm_func_start DWCi_Acc_SetUserId
DWCi_Acc_SetUserId: ; 0x020A3FC4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r3, _020A3FE8 ; =0x000007FF
	mov r4, r1
	mov r1, r2
	mov r2, #0
	mov r5, r0
	bl DWCi_Acc_SetMaskBits
	str r4, [r5, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A3FE8: .word 0x000007FF
	arm_func_end DWCi_Acc_SetUserId

	arm_func_start DWCi_Acc_SetPlayerId
DWCi_Acc_SetPlayerId: ; 0x020A3FEC
	str r1, [r0, #8]
	bx lr
	arm_func_end DWCi_Acc_SetPlayerId

	arm_func_start DWCi_Acc_SetFriendKey
DWCi_Acc_SetFriendKey: ; 0x020A3FF4
	stmib r0, {r1, r2}
	bx lr
	arm_func_end DWCi_Acc_SetFriendKey

	arm_func_start DWCi_Acc_SetGsProfileId
DWCi_Acc_SetGsProfileId: ; 0x020A3FFC
	str r1, [r0, #4]
	bx lr
	arm_func_end DWCi_Acc_SetGsProfileId

	arm_func_start DWCi_Acc_GetFlags
DWCi_Acc_GetFlags: ; 0x020A4004
	ldr r1, [r0, #0]
	ldr r0, _020A4014 ; =0x001FFFFF
	and r0, r0, r1, lsr #11
	bx lr
	; .align 2, 0
_020A4014: .word 0x001FFFFF
	arm_func_end DWCi_Acc_GetFlags

	arm_func_start DWCi_Acc_GetFlag_DataType
DWCi_Acc_GetFlag_DataType: ; 0x020A4018
	stmfd sp!, {r3, lr}
	bl DWCi_Acc_GetFlags
	and r0, r0, #3
	ldmia sp!, {r3, pc}
	arm_func_end DWCi_Acc_GetFlag_DataType

	arm_func_start DWC_IsBuddyFriendData
DWC_IsBuddyFriendData: ; 0x020A4028
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWCi_Acc_GetFlag_DataType
	cmp r0, #3
	bne _020A4058
	mov r0, r4
	bl DWCi_Acc_GetFlags
	and r0, r0, #4
	cmp r0, #4
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r4, pc}
_020A4058:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end DWC_IsBuddyFriendData

	arm_func_start DWC_GetFriendDataType
DWC_GetFriendDataType: ; 0x020A4060
	ldr ip, _020A4068 ; =DWCi_Acc_GetFlag_DataType
	bx ip
	; .align 2, 0
_020A4068: .word DWCi_Acc_GetFlag_DataType
	arm_func_end DWC_GetFriendDataType

	arm_func_start DWCi_Acc_SetFlags
DWCi_Acc_SetFlags: ; 0x020A406C
	ldr ip, _020A407C ; =DWCi_Acc_SetMaskBits
	ldr r3, _020A4080 ; =0x001FFFFF
	mov r2, #0xb
	bx ip
	; .align 2, 0
_020A407C: .word DWCi_Acc_SetMaskBits
_020A4080: .word 0x001FFFFF
	arm_func_end DWCi_Acc_SetFlags

	arm_func_start DWCi_Acc_SetFlag_DataType
DWCi_Acc_SetFlag_DataType: ; 0x020A4084
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl DWCi_Acc_GetFlags
	bic r1, r0, #3
	mov r0, r5
	orr r1, r1, r4
	bl DWCi_Acc_SetFlags
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DWCi_Acc_SetFlag_DataType

	arm_func_start DWCi_SetBuddyFriendData
DWCi_SetBuddyFriendData: ; 0x020A40A8
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWCi_Acc_GetFlag_DataType
	cmp r0, #3
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl DWCi_Acc_GetFlags
	orr r1, r0, #4
	mov r0, r4
	bl DWCi_Acc_SetFlags
	ldmia sp!, {r4, pc}
	arm_func_end DWCi_SetBuddyFriendData

	arm_func_start DWC_Acc_CreateFriendKey
DWC_Acc_CreateFriendKey: ; 0x020A40D4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x108
	mov r4, r0
	str r1, [sp, #4]
	add r0, sp, #8
	mov r1, #7
	str r4, [sp]
	bl MATHi_CRC8InitTable
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl MATH_CalcCRC8
	and r0, r0, #0x7f
	orr r1, r0, #0
	orr r0, r4, #0
	add sp, sp, #0x108
	ldmia sp!, {r4, pc}
	arm_func_end DWC_Acc_CreateFriendKey

	arm_func_start DWC_CheckFriendKey
DWC_CheckFriendKey: ; 0x020A4118
	ldr ip, _020A4130 ; =DWC_Acc_CheckFriendKey
	mov r3, r0
	mov r0, r1
	mov r1, r2
	ldr r2, [r3, #0x24]
	bx ip
	; .align 2, 0
_020A4130: .word DWC_Acc_CheckFriendKey
	arm_func_end DWC_CheckFriendKey

	arm_func_start DWC_Acc_CheckFriendKey
DWC_Acc_CheckFriendKey: ; 0x020A4134
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x108
	mov r4, r1
	and r1, r4, #0
	cmp r1, #0
	and r3, r0, #0x80000000
	cmpeq r3, #0
	mov r1, #0
	addne sp, sp, #0x108
	movne r0, r1
	ldmneia sp!, {r4, pc}
	str r0, [sp]
	add r0, sp, #8
	mov r1, #7
	str r2, [sp, #4]
	bl MATHi_CRC8InitTable
	add r0, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl MATH_CalcCRC8
	and r1, r0, #0x7f
	mov r0, r1, asr #0x1f
	cmp r0, #0
	cmpeq r1, r4
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x108
	ldmia sp!, {r4, pc}
	arm_func_end DWC_Acc_CheckFriendKey

	arm_func_start DWC_Acc_FriendKeyToGsProfileId
DWC_Acc_FriendKeyToGsProfileId: ; 0x020A41A4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWC_Acc_CheckFriendKey
	cmp r0, #0
	mov r0, #0
	subne r0, r0, #1
	andne r0, r4, r0
	ldmia sp!, {r4, pc}
	arm_func_end DWC_Acc_FriendKeyToGsProfileId

	arm_func_start DWCi_Acc_U64ToString32
DWCi_Acc_U64ToString32: ; 0x020A41C4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr lr, _020A422C ; =0x66666667
	add r4, r2, #4
	smull ip, r2, lr, r4
	mov ip, r4, lsr #0x1f
	add r2, ip, r2, asr #1
	cmp r2, #0
	ldr r7, _020A4230 ; =0x02100DB8
	mov r6, #0
	ble _020A4220
	add r4, r3, r2
	sub r4, r4, #1
	mov ip, #0x1f
_020A41F8:
	and r5, r0, ip
	ldrsb r5, [r7, r5]
	mov r0, r0, lsr #5
	mov lr, r1, lsr #5
	strb r5, [r4, -r6]
	add r6, r6, #1
	orr r0, r0, r1, lsl #27
	mov r1, lr
	cmp r6, r2
	blt _020A41F8
_020A4220:
	mov r0, #0
	strb r0, [r3, r2]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A422C: .word 0x66666667
_020A4230: .word Unk_02100DB8
	arm_func_end DWCi_Acc_U64ToString32

	arm_func_start DWCi_Acc_LoginIdToUserName
DWCi_Acc_LoginIdToUserName: ; 0x020A4234
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x40
	mov r6, r0
	mov r4, r1
	mov r5, r2
	bl DWCi_Acc_GetUserId
	add r3, sp, #0x29
	mov r2, #0x2b
	bl DWCi_Acc_U64ToString32
	mov r0, r6
	bl DWCi_Acc_GetPlayerId
	mov r1, #0
	mov r2, #0x20
	add r3, sp, #0x14
	bl DWCi_Acc_U64ToString32
	mov r1, r4, lsr #0x18
	and r1, r1, #0xff
	str r1, [sp]
	mov r1, r4, lsr #0x10
	and r1, r1, #0xff
	str r1, [sp, #4]
	mov r1, r4, lsr #8
	and r1, r1, #0xff
	str r1, [sp, #8]
	and r1, r4, #0xff
	str r1, [sp, #0xc]
	add r2, sp, #0x14
	str r2, [sp, #0x10]
	ldr r2, _020A42C0 ; =0x02100DDC
	mov r0, r5
	mov r1, #0x15
	add r3, sp, #0x29
	bl OS_SNPrintf
	add sp, sp, #0x40
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A42C0: .word Unk_02100DDC
	arm_func_end DWCi_Acc_LoginIdToUserName

	arm_func_start DWCi_Acc_CreateUserData
DWCi_Acc_CreateUserData: ; 0x020A42C4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x400
	mov r4, r1
	mov r1, #0
	mov r2, #0x40
	mov r5, r0
	bl MI_CpuFill8
	mov r0, #0x40
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r5, #0x1c]
	add r0, r5, #4
	str r4, [r5, #0x24]
	bl DWCi_Acc_CreateTempLoginId
	add r0, r5, #0x10
	mov r1, #0
	bl DWCi_Acc_SetFlag_DataType
	ldr r1, _020A433C ; =0xEDB88320
	add r0, sp, #0
	bl MATHi_CRC32InitTableRev
	add r0, sp, #0
	mov r1, r5
	mov r2, #0x3c
	bl MATH_CalcCRC32
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0x20]
	orr r0, r0, #1
	str r0, [r5, #0x20]
	add sp, sp, #0x400
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A433C: .word 0xEDB88320
	arm_func_end DWCi_Acc_CreateUserData

	arm_func_start DWCi_Acc_CreateTempLoginId
DWCi_Acc_CreateTempLoginId: ; 0x020A4340
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0x34
	mov r6, r0
	add r0, sp, #0
	bl OS_GetLowEntropyData
	mov r3, #1
	add r2, sp, #0
_020A435C:
	add r0, r2, r3, lsl #2
	ldr r1, [r2, r3, lsl #2]
	ldr r0, [r0, #-4]
	eor r0, r1, r0
	str r0, [r2, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #8
	blo _020A435C
	add r0, sp, #0x20
	ldr r5, [sp, #0x1c]
	mov r4, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _020A43AC
	ldr r1, [sp, #0x20]
	ldr r2, [sp, #0x24]
	mov r0, r6
	bl DWCi_Acc_SetUserId
	b _020A43BC
_020A43AC:
	ldr r1, [sp, #0x28]
	ldr r2, [sp, #0x2c]
	mov r0, r6
	bl DWCi_Acc_SetUserId
_020A43BC:
	ldr r0, _020A43F8 ; =0x6C078965
	ldr r1, _020A43FC ; =0x5D588B65
	umull r3, r2, r5, r0
	mla r2, r5, r1, r2
	ldr r1, _020A4400 ; =0x00269EC3
	mla r2, r4, r0, r2
	adds r0, r3, r1
	mov r0, r6
	adc r1, r2, #0
	bl DWCi_Acc_SetPlayerId
	mov r0, r6
	mov r1, #1
	bl DWCi_Acc_SetFlag_DataType
	add sp, sp, #0x34
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020A43F8: .word 0x6C078965
_020A43FC: .word 0x5D588B65
_020A4400: .word 0x00269EC3
	arm_func_end DWCi_Acc_CreateTempLoginId

	arm_func_start DWCi_Acc_CheckConsoleUserId
DWCi_Acc_CheckConsoleUserId: ; 0x020A4404
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	mov r0, r4
	beq _020A444C
	bl DWCi_Acc_GetUserId
	ldr r2, [sp, #4]
	ldr r3, [sp]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	add sp, sp, #0x14
	movne r0, #0
	ldmia sp!, {r3, r4, pc}
_020A444C:
	bl DWCi_Acc_GetUserId
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #8]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end DWCi_Acc_CheckConsoleUserId

	arm_func_start DWCi_Acc_IsValidLoginId
DWCi_Acc_IsValidLoginId: ; 0x020A4470
	stmfd sp!, {r3, lr}
	bl DWCi_Acc_GetFlag_DataType
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end DWCi_Acc_IsValidLoginId

	arm_func_start DWCi_Acc_IsAuthentic
DWCi_Acc_IsAuthentic: ; 0x020A4488
	ldr ip, _020A4494 ; =DWCi_Acc_IsValidLoginId
	add r0, r0, #0x10
	bx ip
	; .align 2, 0
_020A4494: .word DWCi_Acc_IsValidLoginId
	arm_func_end DWCi_Acc_IsAuthentic

	arm_func_start DWC_IsValidFriendData
DWC_IsValidFriendData: ; 0x020A4498
	stmfd sp!, {r3, lr}
	bl DWCi_Acc_GetFlag_DataType
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end DWC_IsValidFriendData

	arm_func_start DWCi_Acc_IsValidFriendData
DWCi_Acc_IsValidFriendData: ; 0x020A44B0
	ldr ip, _020A44B8 ; =DWC_IsValidFriendData
	bx ip
	; .align 2, 0
_020A44B8: .word DWC_IsValidFriendData
	arm_func_end DWCi_Acc_IsValidFriendData

	arm_func_start DWC_CreateUserData
DWC_CreateUserData: ; 0x020A44BC
	ldr ip, _020A44C4 ; =DWCi_Acc_CreateUserData
	bx ip
	; .align 2, 0
_020A44C4: .word DWCi_Acc_CreateUserData
	arm_func_end DWC_CreateUserData

	arm_func_start DWC_CheckUserData
DWC_CheckUserData: ; 0x020A44C8
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	ldr r1, _020A4508 ; =0xEDB88320
	mov r4, r0
	add r0, sp, #0
	bl MATHi_CRC32InitTableRev
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl MATH_CalcCRC32
	ldr r1, [r4, #0x3c]
	cmp r0, r1
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A4508: .word 0xEDB88320
	arm_func_end DWC_CheckUserData

	arm_func_start DWC_CheckHasProfile
DWC_CheckHasProfile: ; 0x020A450C
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x10
	bl DWCi_Acc_IsValidLoginId
	cmp r0, #0
	beq _020A4534
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	movgt r0, #1
	ldmgtia sp!, {r4, pc}
_020A4534:
	mov r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end DWC_CheckHasProfile

	arm_func_start DWC_CheckValidConsole
DWC_CheckValidConsole: ; 0x020A453C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, r4, #0x10
	bl DWCi_Acc_GetFlag_DataType
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #1
	ldmeqia sp!, {r3, r4, pc}
	add r0, sp, #0
	bl sub_020A3E4C
	ldr r0, [sp, #0x10]
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	add r0, r4, #0x10
	bl DWCi_Acc_GetUserId
	ldr r2, [sp, #4]
	ldr r3, [sp]
	cmp r2, r1
	cmpeq r3, r0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end DWC_CheckValidConsole

	arm_func_start DWCi_Acc_SetLoginIdToUserData
DWCi_Acc_SetLoginIdToUserData: ; 0x020A45A4
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	mov r4, r0
	add r3, r4, #0x10
	mov ip, r2
	ldmia r1, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	ldr r1, _020A45F8 ; =0xEDB88320
	add r0, sp, #0
	str ip, [r4, #0x1c]
	bl MATHi_CRC32InitTableRev
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl MATH_CalcCRC32
	str r0, [r4, #0x3c]
	ldr r0, [r4, #0x20]
	orr r0, r0, #1
	str r0, [r4, #0x20]
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A45F8: .word 0xEDB88320
	arm_func_end DWCi_Acc_SetLoginIdToUserData

	arm_func_start DWC_CheckDirtyFlag
DWC_CheckDirtyFlag: ; 0x020A45FC
	ldr ip, _020A4604 ; =DWCi_Acc_IsDirty
	bx ip
	; .align 2, 0
_020A4604: .word DWCi_Acc_IsDirty
	arm_func_end DWC_CheckDirtyFlag

	arm_func_start DWCi_Acc_IsDirty
DWCi_Acc_IsDirty: ; 0x020A4608
	ldr r0, [r0, #0x20]
	and r0, r0, #1
	cmp r0, #1
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end DWCi_Acc_IsDirty

	arm_func_start DWC_ClearDirtyFlag
DWC_ClearDirtyFlag: ; 0x020A4620
	ldr ip, _020A4628 ; =DWCi_Acc_ClearDirty
	bx ip
	; .align 2, 0
_020A4628: .word DWCi_Acc_ClearDirty
	arm_func_end DWC_ClearDirtyFlag

	arm_func_start DWCi_Acc_ClearDirty
DWCi_Acc_ClearDirty: ; 0x020A462C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x400
	mov r4, r0
	ldr r1, [r4, #0x20]
	add r0, sp, #0
	bic r2, r1, #1
	ldr r1, _020A466C ; =0xEDB88320
	str r2, [r4, #0x20]
	bl MATHi_CRC32InitTableRev
	add r0, sp, #0
	mov r1, r4
	mov r2, #0x3c
	bl MATH_CalcCRC32
	str r0, [r4, #0x3c]
	add sp, sp, #0x400
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A466C: .word 0xEDB88320
	arm_func_end DWCi_Acc_ClearDirty

	arm_func_start DWC_GetFriendKey
DWC_GetFriendKey: ; 0x020A4670
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl DWCi_Acc_GetFlag_DataType
	cmp r0, #2
	movne r0, #0
	movne r1, r0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl DWCi_Acc_GetFriendKey
	ldmia sp!, {r4, pc}
	arm_func_end DWC_GetFriendKey

	arm_func_start DWC_GetGsProfileId
DWC_GetGsProfileId: ; 0x020A4698
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r1
	mov r6, r0
	mov r0, r4
	bl DWCi_Acc_GetFlag_DataType
	cmp r0, #1
	beq _020A470C
	cmp r0, #2
	beq _020A46C8
	cmp r0, #3
	beq _020A4700
	b _020A4714
_020A46C8:
	mov r0, r4
	bl DWCi_Acc_GetFriendKey
	ldr r2, [r6, #0x24]
	mov r4, r0
	mov r5, r1
	bl DWC_Acc_CheckFriendKey
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r2, [r6, #0x24]
	mov r0, r4
	mov r1, r5
	bl DWC_Acc_FriendKeyToGsProfileId
	ldmia sp!, {r4, r5, r6, pc}
_020A4700:
	mov r0, r4
	bl DWCi_Acc_GetGsProfileId
	ldmia sp!, {r4, r5, r6, pc}
_020A470C:
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_020A4714:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DWC_GetGsProfileId

	arm_func_start DWC_CreateFriendKey
DWC_CreateFriendKey: ; 0x020A471C
	stmfd sp!, {r3, lr}
	mov r3, r0
	ldr r0, [r3, #0x1c]
	mov r2, #0
	mov r1, r2
	cmp r0, #0
	beq _020A4744
	ldr r1, [r3, #0x24]
	bl DWC_Acc_CreateFriendKey
	mov r2, r0
_020A4744:
	mov r0, r2
	ldmia sp!, {r3, pc}
	arm_func_end DWC_CreateFriendKey

	arm_func_start DWC_CreateFriendKeyToken
DWC_CreateFriendKeyToken: ; 0x020A474C
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r4, r2
	mov r6, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl DWCi_Acc_SetFriendKey
	mov r0, r6
	mov r1, #2
	bl DWCi_Acc_SetFlag_DataType
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DWC_CreateFriendKeyToken

	arm_func_start DWC_CreateExchangeToken
DWC_CreateExchangeToken: ; 0x020A4788
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r0, r4
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, r5
	bl DWCi_Acc_IsAuthentic
	cmp r0, #0
	addeq r0, r5, #4
	ldmeqia r0, {r0, r1, r2}
	stmeqia r4, {r0, r1, r2}
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [r5, #0x1c]
	mov r0, r4
	bl DWCi_Acc_SetGsProfileId
	mov r0, r4
	mov r1, #3
	bl DWCi_Acc_SetFlag_DataType
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DWC_CreateExchangeToken

	arm_func_start DWC_SetGsProfileId
DWC_SetGsProfileId: ; 0x020A47DC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	mov r1, #0
	mov r2, #0xc
	bl MI_CpuFill8
	mov r0, r5
	mov r1, r4
	bl DWCi_Acc_SetGsProfileId
	mov r0, r5
	mov r1, #3
	bl DWCi_Acc_SetFlag_DataType
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DWC_SetGsProfileId

	arm_func_start DWC_LoginIdToUserName
DWC_LoginIdToUserName: ; 0x020A4810
	ldr ip, _020A4824 ; =DWCi_Acc_LoginIdToUserName
	mov r3, r0
	mov r0, r1
	ldr r1, [r3, #0x24]
	bx ip
	; .align 2, 0
_020A4824: .word DWCi_Acc_LoginIdToUserName
	arm_func_end DWC_LoginIdToUserName

	arm_func_start DWC_IsEqualFriendData
DWC_IsEqualFriendData: ; 0x020A4828
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r0
	bl DWCi_Acc_GetFlag_DataType
	mov r5, r0
	mov r0, r4
	bl DWCi_Acc_GetFlag_DataType
	cmp r5, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r5, #3
	bne _020A487C
	mov r0, r7
	bl DWCi_Acc_GetGsProfileId
	mov r5, r0
	mov r0, r4
	bl DWCi_Acc_GetGsProfileId
	cmp r5, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A487C:
	cmp r5, #1
	bne _020A48D0
	mov r0, r7
	bl DWCi_Acc_GetUserId
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl DWCi_Acc_GetUserId
	cmp r6, r1
	cmpeq r5, r0
	bne _020A48C8
	mov r0, r7
	bl DWCi_Acc_GetPlayerId
	mov r5, r0
	mov r0, r4
	bl DWCi_Acc_GetPlayerId
	cmp r5, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_020A48C8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A48D0:
	cmp r5, #2
	bne _020A4904
	mov r0, r7
	bl DWCi_Acc_GetFriendKey
	mov r5, r0
	mov r6, r1
	mov r0, r4
	bl DWCi_Acc_GetFriendKey
	cmp r6, r1
	cmpeq r5, r0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020A4904:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWC_IsEqualFriendData

	.data


	.global Unk_02100DB8
Unk_02100DB8: ; 0x02100DB8
	.incbin "incbin/arm9_data.bin", 0x20D8, 0x20FC - 0x20D8

	.global Unk_02100DDC
Unk_02100DDC: ; 0x02100DDC
	.incbin "incbin/arm9_data.bin", 0x20FC, 0xD

