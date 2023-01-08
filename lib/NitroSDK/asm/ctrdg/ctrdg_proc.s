	.include "macros/function.inc"
	.include "include/ctrdg_proc.inc"

	.extern Unk_021D02C0
	.extern Unk_021D0200
	.extern Unk_021D01C4
	.extern Unk_021D01E0
	

	.text


	arm_func_start CTRDG_Init
CTRDG_Init: ; 0x020D0FB4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020D1054 ; =0x021D01E0
	ldr r1, [r0, #8]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	str r1, [r0, #8]
	bl CTRDGi_InitCommon
	ldr r0, _020D1054 ; =0x021D01E0
	mov r1, #0
	str r1, [r0, #0xc]
	bl PXI_Init
	mov r5, #0xd
	mov r4, #1
_020D0FEC:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020D0FEC
	ldr r1, _020D1058 ; =CTRDGi_CallbackForInitModuleInfo
	mov r0, #0xd
	bl PXI_SetFifoRecvCallback
	bl CTRDGi_InitModuleInfo
	mov r0, #0xd
	mov r1, #0
	bl PXI_SetFifoRecvCallback
	ldr r1, _020D105C ; =CTRDGi_PulledOutCallback
	mov r0, #0xd
	bl PXI_SetFifoRecvCallback
	ldr r1, _020D1054 ; =0x021D01E0
	mov r2, #0
	ldr r0, _020D1060 ; =0x021D02C0
	str r2, [r1, #0x18]
	bl CTRDGi_InitTaskThread
	ldr r1, _020D1064 ; =CTRDGi_CallbackForSetPhi
	mov r0, #0x11
	bl PXI_SetFifoRecvCallback
	mov r0, #0
	bl CTRDG_Enable
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D1054: .word Unk_021D01E0
_020D1058: .word CTRDGi_CallbackForInitModuleInfo
_020D105C: .word CTRDGi_PulledOutCallback
_020D1060: .word Unk_021D02C0
_020D1064: .word CTRDGi_CallbackForSetPhi
	arm_func_end CTRDG_Init

	arm_func_start CTRDGi_InitModuleInfo
CTRDGi_InitModuleInfo: ; 0x020D1068
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	ldr r0, _020D1230 ; =0x021D01E0
	ldr r1, [r0, #0]
	cmp r1, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _020D1234 ; =0x04000300
	mov r2, #1
	ldrh r1, [r1]
	str r2, [r0, #0]
	tst r1, #1
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x40000
	bl OS_SetIrqMask
	ldr r3, _020D1238 ; =0x04000208
	mov r2, #1
	ldrh r5, [r3]
	ldr r1, _020D123C ; =0x021D01C4
	mov r4, r0
	strh r2, [r3]
	ldrh r0, [r1, #2]
	add r1, sp, #8
	bl CTRDGi_LockByProcessor
	ldr r1, _020D1240 ; =0x04000204
	add r0, sp, #0
	ldrh r1, [r1]
	and r1, r1, #0x8000
	mov r6, r1, asr #0xf
	bl CTRDGi_ChangeLatestAccessCycle
	ldr r3, _020D1240 ; =0x04000204
	ldr r0, _020D1244 ; =0x021D0200
	ldrh r2, [r3]
	add r0, r0, #0x80
	mov r1, #0x40
	bic r2, r2, #0x8000
	strh r2, [r3]
	bl DC_InvalidateRange
	ldr r2, _020D1244 ; =0x021D0200
	ldr r1, _020D1248 ; =0x08000080
	mov r0, #1
	mov r3, #0x40
	add r2, r2, #0x80
	bl MI_DmaCopy16
	ldr r2, _020D1240 ; =0x04000204
	add r0, sp, #0
	ldrh r1, [r2]
	bic r1, r1, #0x8000
	orr r1, r1, r6, lsl #15
	strh r1, [r2]
	bl CTRDGi_RestoreAccessCycle
	ldr r0, _020D123C ; =0x021D01C4
	add r1, sp, #8
	ldrh r0, [r0, #2]
	bl CTRDGi_UnlockByProcessor
	ldr r1, _020D124C ; =0x027FFF9B
	ldrb r0, [r1]
	cmp r0, #0
	bne _020D1164
	ldrb r0, [r1, #-1]
	cmp r0, #0
	bne _020D11C8
_020D1164:
	ldr r3, _020D1244 ; =0x021D0200
	ldr r6, _020D1250 ; =0x027FFC30
	ldrh r0, [r3, #0xbe]
	mov r2, #0
	strh r0, [r6]
	b _020D1190
_020D117C:
	add r0, r3, r2
	ldrb r1, [r0, #0xb5]
	add r0, r6, r2
	add r2, r2, #1
	strb r1, [r0, #2]
_020D1190:
	cmp r2, #3
	blt _020D117C
	ldrh r0, [r3, #0xb0]
	strh r0, [r6, #6]
	ldr r0, [r3, #0xac]
	str r0, [r6, #8]
	bl CTRDG_IsExisting
	cmp r0, #0
	movne r2, #1
	ldr r1, _020D124C ; =0x027FFF9B
	moveq r2, #0
	mov r0, #1
	strb r2, [r1]
	strb r0, [r1, #-1]
_020D11C8:
	ldr r0, _020D1254 ; =0xFFFF0020
	ldr r1, _020D1258 ; =0x021D0204
	mov r2, #0x9c
	bl MIi_CpuCopy32
	bl DC_FlushAll
	ldr r0, _020D1244 ; =0x021D0200
	add r0, r0, #-0x2000000
	mov r0, r0, lsr #5
	mov r0, r0, lsl #6
	orr r0, r0, #1
	bl CTRDGi_SendtoPxi
	mov r7, #1
	ldr r6, _020D123C ; =0x021D01C4
	b _020D1208
_020D1200:
	mov r0, r7
	bl SVC_WaitByLoop
_020D1208:
	ldrh r0, [r6]
	cmp r0, #1
	bne _020D1200
	ldr r2, _020D1238 ; =0x04000208
	mov r0, r4
	ldrh r1, [r2]
	strh r5, [r2]
	bl OS_SetIrqMask
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020D1230: .word Unk_021D01E0
_020D1234: .word 0x04000300
_020D1238: .word 0x04000208
_020D123C: .word Unk_021D01C4
_020D1240: .word 0x04000204
_020D1244: .word Unk_021D0200
_020D1248: .word 0x08000080
_020D124C: .word 0x027FFF9B
_020D1250: .word 0x027FFC30
_020D1254: .word 0xFFFF0020
_020D1258: .word 0x021D0204
	arm_func_end CTRDGi_InitModuleInfo

	arm_func_start CTRDGi_CallbackForInitModuleInfo
CTRDGi_CallbackForInitModuleInfo: ; 0x020D125C
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #1
	bne _020D127C
	ldr r0, _020D1284 ; =0x021D01C4
	mov r1, #1
	strh r1, [r0]
	ldmia sp!, {r3, pc}
_020D127C:
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D1284: .word Unk_021D01C4
	arm_func_end CTRDGi_CallbackForInitModuleInfo

	arm_func_start CTRDGi_PulledOutCallback
CTRDGi_PulledOutCallback: ; 0x020D1288
	stmfd sp!, {r3, lr}
	and r0, r1, #0x3f
	cmp r0, #0x11
	bne _020D12D8
	ldr r0, _020D12E0 ; =0x021D01E0
	ldr r1, [r0, #0xc]
	cmp r1, #0
	ldmneia sp!, {r3, pc}
	ldr r1, [r0, #0x18]
	mov r0, #0
	cmp r1, #0
	beq _020D12BC
	blx r1
_020D12BC:
	cmp r0, #0
	beq _020D12C8
	bl CTRDG_TerminateForPulledOut
_020D12C8:
	ldr r0, _020D12E0 ; =0x021D01E0
	mov r1, #1
	str r1, [r0, #0xc]
	ldmia sp!, {r3, pc}
_020D12D8:
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020D12E0: .word Unk_021D01E0
	arm_func_end CTRDGi_PulledOutCallback

	arm_func_start CTRDG_TerminateForPulledOut
CTRDG_TerminateForPulledOut: ; 0x020D12E4
	stmfd sp!, {r3, lr}
	mov r0, #2
	bl CTRDGi_SendtoPxi
	bl OS_Terminate
	ldmia sp!, {r3, pc}
	arm_func_end CTRDG_TerminateForPulledOut

	arm_func_start CTRDGi_CallbackForSetPhi
CTRDGi_CallbackForSetPhi: ; 0x020D12F8
	ldr r0, _020D1308 ; =0x021D01E0
	mov r1, #0
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020D1308: .word Unk_021D01E0
	arm_func_end CTRDGi_CallbackForSetPhi

	.bss


	.global Unk_021D01E0
Unk_021D01E0: ; 0x021D01E0
	.space 0x4

	.global Unk_021D01E4
Unk_021D01E4: ; 0x021D01E4
	.space 0x4

	.global Unk_021D01E8
Unk_021D01E8: ; 0x021D01E8
	.space 0x4

	.global Unk_021D01EC
Unk_021D01EC: ; 0x021D01EC
	.space 0x4

	.global Unk_021D01F0
Unk_021D01F0: ; 0x021D01F0
	.space 0x4

	.global Unk_021D01F4
Unk_021D01F4: ; 0x021D01F4
	.space 0x4

	.global Unk_021D01F8
Unk_021D01F8: ; 0x021D01F8
	.space 0x8

	.global Unk_021D0200
Unk_021D0200: ; 0x021D0200
	.space 0xC0

	.global Unk_021D02C0
Unk_021D02C0: ; 0x021D02C0
	.space 0xE8

