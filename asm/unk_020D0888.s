	.include "macros/function.inc"
	.include "include/unk_020D0888.inc"

	.extern Unk_021D01C0
	.extern Unk_021D01C4
	

	.text


	arm_func_start CTRDGi_InitCommon
CTRDGi_InitCommon: ; 0x020D0888
	stmfd sp!, {r3, lr}
	ldr r1, _020D08B4 ; =0x021D01C4
	mov r3, #0
	ldr r2, _020D08B8 ; =0x05000001
	add r0, sp, #0
	str r3, [sp]
	bl SVC_CpuSet
	bl OS_GetLockID
	ldr r1, _020D08BC ; =0x021D01C0
	strh r0, [r1, #6]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D08B4: .word Unk_021D01C4
_020D08B8: .word 0x05000001
_020D08BC: .word Unk_021D01C0
	arm_func_end CTRDGi_InitCommon

	arm_func_start CTRDG_IsAgbCartridge
CTRDG_IsAgbCartridge: ; 0x020D08C0
	stmfd sp!, {r3, lr}
	bl CTRDG_IsExisting
	cmp r0, #0
	beq _020D08E0
	bl CTRDGi_IsAgbCartridgeAtInit
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, pc}
_020D08E0:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end CTRDG_IsAgbCartridge

	arm_func_start CTRDG_IsOptionCartridge
CTRDG_IsOptionCartridge: ; 0x020D08E8
	stmfd sp!, {r3, lr}
	bl CTRDG_IsExisting
	cmp r0, #0
	beq _020D0908
	bl CTRDGi_IsAgbCartridgeAtInit
	cmp r0, #0
	moveq r0, #1
	ldmeqia sp!, {r3, pc}
_020D0908:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end CTRDG_IsOptionCartridge

	arm_func_start CTRDGi_IsAgbCartridgeAtInit
CTRDGi_IsAgbCartridgeAtInit: ; 0x020D0910
	ldr r0, _020D0924 ; =0x027FFC30
	ldrb r0, [r0, #5]
	mov r0, r0, lsl #0x1f
	mov r0, r0, lsr #0x1f
	bx lr
	; .align 2, 0
_020D0924: .word 0x027FFC30
	arm_func_end CTRDGi_IsAgbCartridgeAtInit

	arm_func_start CTRDG_GetAgbGameCode
CTRDG_GetAgbGameCode: ; 0x020D0928
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl CTRDG_IsExisting
	cmp r0, #0
	beq _020D0944
	bl CTRDGi_GetAgbGameCodeAtInit
	mov r4, r0
_020D0944:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CTRDG_GetAgbGameCode

	arm_func_start CTRDGi_GetAgbGameCodeAtInit
CTRDGi_GetAgbGameCodeAtInit: ; 0x020D094C
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl CTRDGi_IsAgbCartridgeAtInit
	cmp r0, #0
	ldrne r0, _020D096C ; =0x027FFC30
	ldrne r4, [r0, #8]
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D096C: .word 0x027FFC30
	arm_func_end CTRDGi_GetAgbGameCodeAtInit

	arm_func_start CTRDG_GetAgbMakerCode
CTRDG_GetAgbMakerCode: ; 0x020D0970
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl CTRDG_IsExisting
	cmp r0, #0
	beq _020D098C
	bl CTRDGi_GetAgbMakerCodeAtInit
	mov r4, r0
_020D098C:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end CTRDG_GetAgbMakerCode

	arm_func_start CTRDGi_GetAgbMakerCodeAtInit
CTRDGi_GetAgbMakerCodeAtInit: ; 0x020D0994
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl CTRDGi_IsAgbCartridgeAtInit
	cmp r0, #0
	ldrne r0, _020D09B4 ; =0x027FFC30
	ldrneh r4, [r0, #6]
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D09B4: .word 0x027FFC30
	arm_func_end CTRDGi_GetAgbMakerCodeAtInit

	arm_func_start CTRDG_IsPulledOut
CTRDG_IsPulledOut: ; 0x020D09B8
	stmfd sp!, {r3, lr}
	ldr r2, _020D09FC ; =0x027FFC30
	ldr r0, _020D0A00 ; =0x0000FFFF
	ldrh r1, [r2]
	cmp r1, r0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1e
	movs r0, r0, lsr #0x1f
	bne _020D09E8
	bl CTRDG_IsExisting
_020D09E8:
	ldr r0, _020D09FC ; =0x027FFC30
	ldrb r0, [r0, #5]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D09FC: .word 0x027FFC30
_020D0A00: .word 0x0000FFFF
	arm_func_end CTRDG_IsPulledOut

	arm_func_start CTRDG_IsExisting
CTRDG_IsExisting: ; 0x020D0A04
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	ldr r2, _020D0B04 ; =0x027FFC30
	mov r4, #1
	ldrh r1, [r2]
	rsb r0, r4, #0x10000
	cmp r1, r0
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1e
	mov r0, r0, lsr #0x1f
	cmp r0, #1
	addeq sp, sp, #0x10
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _020D0B08 ; =0x021D01C0
	add r1, sp, #8
	ldrh r0, [r0, #6]
	bl CTRDGi_LockByProcessor
	add r0, sp, #0
	bl CTRDGi_ChangeLatestAccessCycle
	mov r0, #0x8000000
	ldrb r2, [r0, #0xb2]
	cmp r2, #0x96
	bne _020D0A84
	ldr r1, _020D0B04 ; =0x027FFC30
	ldrh r0, [r0, #0xbe]
	ldrh r1, [r1]
	cmp r1, r0
	bne _020D0ACC
_020D0A84:
	cmp r2, #0x96
	beq _020D0AA4
	ldr r1, _020D0B04 ; =0x027FFC30
	ldr r0, _020D0B0C ; =0x0801FFFE
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _020D0ACC
_020D0AA4:
	ldr r2, _020D0B04 ; =0x027FFC30
	mov r0, #0x8000000
	ldr r1, [r2, #8]
	ldr r0, [r0, #0xac]
	cmp r1, r0
	beq _020D0AE0
	ldrb r0, [r2, #5]
	mov r0, r0, lsl #0x1f
	movs r0, r0, lsr #0x1f
	beq _020D0AE0
_020D0ACC:
	ldr r1, _020D0B04 ; =0x027FFC30
	mov r4, #0
	ldrb r0, [r1, #5]
	orr r0, r0, #2
	strb r0, [r1, #5]
_020D0AE0:
	add r0, sp, #0
	bl CTRDGi_RestoreAccessCycle
	ldr r0, _020D0B08 ; =0x021D01C0
	add r1, sp, #8
	ldrh r0, [r0, #6]
	bl CTRDGi_UnlockByProcessor
	mov r0, r4
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020D0B04: .word 0x027FFC30
_020D0B08: .word Unk_021D01C0
_020D0B0C: .word 0x0801FFFE
	arm_func_end CTRDG_IsExisting

	arm_func_start CTRDGi_ChangeLatestAccessCycle
CTRDGi_ChangeLatestAccessCycle: ; 0x020D0B10
	ldr r2, _020D0B54 ; =0x04000204
	ldrh r1, [r2]
	and r1, r1, #0xc
	mov r1, r1, asr #2
	str r1, [r0, #0]
	ldrh r1, [r2]
	and r1, r1, #0x10
	mov r1, r1, asr #4
	str r1, [r0, #4]
	ldrh r0, [r2]
	bic r0, r0, #0xc
	orr r0, r0, #0xc
	strh r0, [r2]
	ldrh r0, [r2]
	bic r0, r0, #0x10
	strh r0, [r2]
	bx lr
	; .align 2, 0
_020D0B54: .word 0x04000204
	arm_func_end CTRDGi_ChangeLatestAccessCycle

	arm_func_start CTRDGi_RestoreAccessCycle
CTRDGi_RestoreAccessCycle: ; 0x020D0B58
	ldr r3, _020D0B88 ; =0x04000204
	ldr r2, [r0, #0]
	ldrh r1, [r3]
	bic r1, r1, #0xc
	orr r1, r1, r2, lsl #2
	strh r1, [r3]
	ldrh r1, [r3]
	ldr r2, [r0, #4]
	bic r0, r1, #0x10
	orr r0, r0, r2, lsl #4
	strh r0, [r3]
	bx lr
	; .align 2, 0
_020D0B88: .word 0x04000204
	arm_func_end CTRDGi_RestoreAccessCycle

	arm_func_start CTRDGi_LockByProcessor
CTRDGi_LockByProcessor: ; 0x020D0B8C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r5, _020D0BE4 ; =0x027FFFE8
	mov r7, r0
	mov r6, r1
	mov r4, #1
_020D0BA0:
	bl OS_DisableInterrupts
	str r0, [r6, #4]
	mov r0, r5
	bl OS_ReadOwnerOfLockWord
	ands r0, r0, #0x40
	str r0, [r6, #0]
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r7
	bl OS_TryLockCartridge
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #4]
	bl OS_RestoreInterrupts
	mov r0, r4
	bl SVC_WaitByLoop
	b _020D0BA0
_020D0BE0:
	.byte 0xF8, 0x80, 0xBD, 0xE8
_020D0BE4: .word 0x027FFFE8
	arm_func_end CTRDGi_LockByProcessor

	arm_func_start CTRDGi_UnlockByProcessor
CTRDGi_UnlockByProcessor: ; 0x020D0BE8
	stmfd sp!, {r4, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	cmp r1, #0
	bne _020D0C00
	bl OS_UnLockCartridge
_020D0C00:
	ldr r0, [r4, #4]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	arm_func_end CTRDGi_UnlockByProcessor

	arm_func_start CTRDGi_SendtoPxi
CTRDGi_SendtoPxi: ; 0x020D0C0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r1, r7
	mov r0, #0xd
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r6, #1
	mov r5, #0xd
	mov r4, #0
_020D0C38:
	mov r0, r6
	bl SVC_WaitByLoop
	mov r0, r5
	mov r1, r7
	mov r2, r4
	bl PXI_SendWordByFifo
	cmp r0, #0
	bne _020D0C38
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end CTRDGi_SendtoPxi

	arm_func_start CTRDG_CpuCopy8
CTRDG_CpuCopy8: ; 0x020D0C5C
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	cmp lr, #0x8000000
	blo _020D0C94
	ldr r2, _020D0CB0 ; =0x0A010000
	cmp lr, r2
	bhs _020D0C94
	mov ip, #1
	mov r2, r0
	mov r0, #0
	str ip, [sp]
	bl CTRDGi_CopyCommon
	ldmia sp!, {r3, pc}
_020D0C94:
	mov ip, #1
	mov r1, r0
	mov r2, lr
	mov r0, #0
	str ip, [sp]
	bl CTRDGi_CopyCommon
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D0CB0: .word 0x0A010000
	arm_func_end CTRDG_CpuCopy8

	arm_func_start CTRDG_CpuCopy16
CTRDG_CpuCopy16: ; 0x020D0CB4
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov ip, #0x11
	mov r1, r0
	mov r2, lr
	mov r0, #0
	str ip, [sp]
	bl CTRDGi_CopyCommon
	ldmia sp!, {r3, pc}
	arm_func_end CTRDG_CpuCopy16

	arm_func_start CTRDG_CpuCopy32
CTRDG_CpuCopy32: ; 0x020D0CDC
	stmfd sp!, {r3, lr}
	mov lr, r1
	mov r3, r2
	mov ip, #0x21
	mov r1, r0
	mov r2, lr
	mov r0, #0
	str ip, [sp]
	bl CTRDGi_CopyCommon
	ldmia sp!, {r3, pc}
	arm_func_end CTRDG_CpuCopy32

	arm_func_start CTRDGi_CopyCommon
CTRDGi_CopyCommon: ; 0x020D0D04
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl CTRDG_IsExisting
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl CTRDG_CheckEnabled
	ldr r0, _020D0E3C ; =0x021D01C0
	ldrh r0, [r0, #6]
	bl OS_LockCartridge
	ldr r0, [sp, #0x18]
	tst r0, #1
	bne _020D0D58
	mov r0, r7
	bl MI_StopDma
	mov r0, r5
	mov r1, r4
	bl DC_FlushRange
_020D0D58:
	ldr r0, [sp, #0x18]
	cmp r0, #0x11
	bhi _020D0D88
	cmp r0, #0x10
	blo _020D0D7C
	beq _020D0DA4
	cmp r0, #0x11
	beq _020D0DD4
	b _020D0E1C
_020D0D7C:
	cmp r0, #1
	beq _020D0DFC
	b _020D0E1C
_020D0D88:
	cmp r0, #0x20
	bhi _020D0D98
	beq _020D0DBC
	b _020D0E1C
_020D0D98:
	cmp r0, #0x21
	beq _020D0DE8
	b _020D0E1C
_020D0DA4:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl MI_DmaCopy16
	b _020D0E1C
_020D0DBC:
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl MI_DmaCopy32
	b _020D0E1C
_020D0DD4:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MIi_CpuCopy16
	b _020D0E1C
_020D0DE8:
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl MIi_CpuCopy32
	b _020D0E1C
_020D0DFC:
	cmp r4, #0
	mov r1, #0
	bls _020D0E1C
_020D0E08:
	ldrb r0, [r6], #1
	add r1, r1, #1
	cmp r1, r4
	strb r0, [r5], #1
	blo _020D0E08
_020D0E1C:
	ldr r0, _020D0E3C ; =0x021D01C0
	ldrh r0, [r0, #6]
	bl OS_UnLockCartridge
	bl CTRDG_IsExisting
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D0E3C: .word Unk_021D01C0
	arm_func_end CTRDGi_CopyCommon

	arm_func_start CTRDG_Read32
CTRDG_Read32: ; 0x020D0E40
	ldr ip, _020D0E54 ; =CTRDGi_AccessCommon
	mov r2, r1
	mov r1, #0
	mov r3, #0x41
	bx ip
	; .align 2, 0
_020D0E54: .word CTRDGi_AccessCommon
	arm_func_end CTRDG_Read32

	arm_func_start CTRDGi_AccessCommon
CTRDGi_AccessCommon: ; 0x020D0E58
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl CTRDG_IsExisting
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl CTRDG_CheckEnabled
	ldr r0, _020D0F34 ; =0x021D01C0
	ldrh r0, [r0, #6]
	bl OS_LockCartridge
	cmp r4, #0x21
	bhi _020D0EC4
	bhs _020D0EF0
	cmp r4, #0x11
	bhi _020D0EB8
	cmp r4, #0x10
	blo _020D0F14
	beq _020D0F10
	cmp r4, #0x11
	beq _020D0EE0
	b _020D0F14
_020D0EB8:
	cmp r4, #0x20
	streqh r6, [r7]
	b _020D0F14
_020D0EC4:
	cmp r4, #0x40
	bhi _020D0ED4
	streq r6, [r7]
	b _020D0F14
_020D0ED4:
	cmp r4, #0x41
	beq _020D0F00
	b _020D0F14
_020D0EE0:
	cmp r5, #0
	ldrneb r0, [r7]
	strneb r0, [r5]
	b _020D0F14
_020D0EF0:
	cmp r5, #0
	ldrneh r0, [r7]
	strneh r0, [r5]
	b _020D0F14
_020D0F00:
	cmp r5, #0
	ldrne r0, [r7]
	strne r0, [r5]
	b _020D0F14
_020D0F10:
	strb r6, [r7]
_020D0F14:
	ldr r0, _020D0F34 ; =0x021D01C0
	ldrh r0, [r0, #6]
	bl OS_UnLockCartridge
	bl CTRDG_IsExisting
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D0F34: .word Unk_021D01C0
	arm_func_end CTRDGi_AccessCommon

	arm_func_start CTRDG_IsEnabled
CTRDG_IsEnabled: ; 0x020D0F38
	ldr r0, _020D0F44 ; =0x021D01C0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020D0F44: .word Unk_021D01C0
	arm_func_end CTRDG_IsEnabled

	arm_func_start CTRDG_Enable
CTRDG_Enable: ; 0x020D0F48
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	bl OS_DisableInterrupts
	ldr r1, _020D0F8C ; =0x021D01C0
	mov r4, r0
	str r5, [r1, #0]
	bl CTRDG_IsOptionCartridge
	cmp r0, #0
	bne _020D0F80
	cmp r5, #0
	movne r1, #0x1000
	moveq r1, #0x5000
	mov r0, #0xf000
	bl OS_SetDPermissionsForProtectionRegion
_020D0F80:
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D0F8C: .word Unk_021D01C0
	arm_func_end CTRDG_Enable

	arm_func_start CTRDG_CheckEnabled
CTRDG_CheckEnabled: ; 0x020D0F90
	stmfd sp!, {r3, lr}
	bl CTRDG_IsOptionCartridge
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl CTRDG_IsEnabled
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	arm_func_end CTRDG_CheckEnabled

	.bss


	.global Unk_021D01C0
Unk_021D01C0: ; 0x021D01C0
	.space 0x4

	.global Unk_021D01C4
Unk_021D01C4: ; 0x021D01C4
	.space 0x1C

