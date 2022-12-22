	.include "macros/function.inc"
	.include "include/unk_020CEB94.inc"

	

	.text


	arm_func_start WM_Enable
WM_Enable: ; 0x020CEB94
	ldr ip, _020CEBA0 ; =WMi_EnableEx
	mov r1, #0
	bx ip
	; .align 2, 0
_020CEBA0: .word WMi_EnableEx
	arm_func_end WM_Enable

	arm_func_start WMi_EnableEx
WMi_EnableEx: ; 0x020CEBA4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #0
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #3
	bl WMi_SetCallbackTable
	bl WMi_GetSystemWork
	mov r3, r0
	ldr r1, [r3, #0x10]
	mov r0, #3
	stmia sp, {r1, r4}
	mov r1, #4
	ldmia r3, {r2, r3}
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end WMi_EnableEx

	arm_func_start WM_Disable
WM_Disable: ; 0x020CEC08
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, r0
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #4
	bl WMi_SetCallbackTable
	mov r0, #4
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end WM_Disable

	arm_func_start WM_PowerOn
WM_PowerOn: ; 0x020CEC48
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, r0
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #5
	bl WMi_SetCallbackTable
	mov r0, #5
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end WM_PowerOn

	arm_func_start WM_PowerOff
WM_PowerOff: ; 0x020CEC88
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #2
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #6
	bl WMi_SetCallbackTable
	mov r0, #6
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end WM_PowerOff

	arm_func_start WM_Initialize
WM_Initialize: ; 0x020CECC8
	ldr ip, _020CECD4 ; =WMi_InitializeEx
	mov r3, #0
	bx ip
	; .align 2, 0
_020CECD4: .word WMi_InitializeEx
	arm_func_end WM_Initialize

	arm_func_start WM_InitializeForListening
WM_InitializeForListening: ; 0x020CECD8
	ldr ip, _020CECEC ; =WMi_InitializeEx
	cmp r3, #0
	mov r3, #1
	orreq r3, r3, #2
	bx ip
	; .align 2, 0
_020CECEC: .word WMi_InitializeEx
	arm_func_end WM_InitializeForListening

	arm_func_start WMi_InitializeEx
WMi_InitializeEx: ; 0x020CECF0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	mov r5, r1
	mov r1, r2
	mov r4, r3
	bl WM_Init
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r5
	mov r0, #0
	bl WMi_SetCallbackTable
	bl WMi_GetSystemWork
	mov r3, r0
	ldr r1, [r3, #0x10]
	mov r0, #0
	stmia sp, {r1, r4}
	mov r1, #4
	ldmia r3, {r2, r3}
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end WMi_InitializeEx

	arm_func_start WM_Reset
WM_Reset: ; 0x020CED50
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl WMi_CheckIdle
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #1
	bl WMi_SetCallbackTable
	mov r0, #1
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end WM_Reset

	arm_func_start WM_End
WM_End: ; 0x020CED88
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #2
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #2
	bl WMi_SetCallbackTable
	mov r0, #2
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end WM_End

	arm_func_start WM_SetParentParameter
WM_SetParentParameter: ; 0x020CEDC8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _020CEE10
	ldr r0, [r4, #0]
	cmp r0, #0
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
_020CEE10:
	ldrh r1, [r4, #0x14]
	ldrh r0, [r4, #0x34]
	cmp r1, #0
	movne r2, #0x2a
	moveq r2, #0
	add r0, r0, r2
	cmp r0, #0x200
	bgt _020CEE4C
	ldrh r0, [r4, #0x36]
	cmp r1, #0
	movne r1, #6
	moveq r1, #0
	add r0, r0, r1
	cmp r0, #0x200
	ble _020CEE54
_020CEE4C:
	mov r0, #6
	ldmia sp!, {r3, r4, r5, pc}
_020CEE54:
	mov r0, r4
	bl WmCheckParentParameter
	mov r1, r5
	mov r0, #7
	bl WMi_SetCallbackTable
	mov r0, r4
	mov r1, #0x40
	bl DC_StoreRange
	ldrh r1, [r4, #4]
	cmp r1, #0
	beq _020CEE88
	ldr r0, [r4, #0]
	bl DC_StoreRange
_020CEE88:
	mov r2, r4
	mov r0, #7
	mov r1, #1
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end WM_SetParentParameter

	arm_func_start WmCheckParentParameter
WmCheckParentParameter: ; 0x020CEEA4
	ldrh r1, [r0, #4]
	cmp r1, #0x70
	movhi r0, #0
	bxhi lr
	ldrh r1, [r0, #0x18]
	cmp r1, #0xa
	blo _020CEEC8
	cmp r1, #0x3e8
	bls _020CEED0
_020CEEC8:
	mov r0, #0
	bx lr
_020CEED0:
	ldrh r0, [r0, #0x32]
	cmp r0, #1
	blo _020CEEE4
	cmp r0, #0xe
	bls _020CEEEC
_020CEEE4:
	mov r0, #0
	bx lr
_020CEEEC:
	mov r0, #1
	bx lr
	arm_func_end WmCheckParentParameter

	arm_func_start WMi_StartParentEx
WMi_StartParentEx: ; 0x020CEEF4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, #1
	mov r1, #2
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl WMi_GetSystemWork
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	str r2, [r0, #0x14c]
	mov r1, r5
	mov r0, #8
	bl WMi_SetCallbackTable
	mov r2, r4
	mov r0, #8
	mov r1, #1
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end WMi_StartParentEx

	arm_func_start WM_StartParent
WM_StartParent: ; 0x020CEF50
	ldr ip, _020CEF5C ; =WMi_StartParentEx
	mov r1, #1
	bx ip
	; .align 2, 0
_020CEF5C: .word WMi_StartParentEx
	arm_func_end WM_StartParent

	arm_func_start WM_EndParent
WM_EndParent: ; 0x020CEF60
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #7
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #9
	bl WMi_SetCallbackTable
	mov r0, #9
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end WM_EndParent

	arm_func_start WM_StartScan
WM_StartScan: ; 0x020CEFA0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r5, r0
	mov r0, #3
	mov r4, r1
	mov r2, r0
	mov r1, #2
	mov r3, #5
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r3, r4, r5, pc}
	cmp r4, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #0]
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #1
	blo _020CF008
	cmp r0, #0xe
	bls _020CF014
_020CF008:
	add sp, sp, #0x10
	mov r0, #6
	ldmia sp!, {r3, r4, r5, pc}
_020CF014:
	mov r1, r5
	mov r0, #0xa
	bl WMi_SetCallbackTable
	mov r0, #0xa
	strh r0, [sp]
	ldrh r2, [r4, #4]
	add r0, sp, #0
	mov r1, #0x10
	strh r2, [sp, #2]
	ldr r2, [r4, #0]
	str r2, [sp, #4]
	ldrh r2, [r4, #6]
	strh r2, [sp, #8]
	ldrb r2, [r4, #8]
	strb r2, [sp, #0xa]
	ldrb r2, [r4, #9]
	strb r2, [sp, #0xb]
	ldrb r2, [r4, #0xa]
	strb r2, [sp, #0xc]
	ldrb r2, [r4, #0xb]
	strb r2, [sp, #0xd]
	ldrb r2, [r4, #0xc]
	strb r2, [sp, #0xe]
	ldrb r2, [r4, #0xd]
	strb r2, [sp, #0xf]
	bl WMi_SendCommandDirect
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end WM_StartScan

	arm_func_start WM_StartScanEx
WM_StartScanEx: ; 0x020CF08C
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x3c
	mov r5, r0
	mov r0, #3
	mov r4, r1
	mov r2, r0
	mov r1, #2
	mov r3, #5
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x3c
	ldmneia sp!, {r4, r5, pc}
	cmp r4, #0
	addeq sp, sp, #0x3c
	moveq r0, #6
	ldmeqia sp!, {r4, r5, pc}
	ldr r0, [r4, #0]
	cmp r0, #0
	addeq sp, sp, #0x3c
	moveq r0, #6
	ldmeqia sp!, {r4, r5, pc}
	ldrh r0, [r4, #4]
	cmp r0, #0x400
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, pc}
	ldrh r0, [r4, #0x12]
	cmp r0, #0x20
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, pc}
	ldrh r0, [r4, #0x10]
	cmp r0, #0
	cmpne r0, #1
	cmpne r0, #2
	cmpne r0, #3
	addne sp, sp, #0x3c
	movne r0, #6
	ldmneia sp!, {r4, r5, pc}
	add r0, r0, #0xfe
	add r0, r0, #0xff00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	cmp r0, #1
	bhi _020CF154
	ldrh r0, [r4, #0x34]
	cmp r0, #0x20
	addhi sp, sp, #0x3c
	movhi r0, #6
	ldmhiia sp!, {r4, r5, pc}
_020CF154:
	mov r1, r5
	mov r0, #0x26
	bl WMi_SetCallbackTable
	mov r0, #0x26
	strh r0, [sp]
	ldrh r2, [r4, #6]
	add r1, sp, #0xc
	add r0, r4, #0xa
	strh r2, [sp, #2]
	ldr r3, [r4, #0]
	mov r2, #6
	str r3, [sp, #4]
	ldrh r3, [r4, #4]
	strh r3, [sp, #8]
	ldrh r3, [r4, #8]
	strh r3, [sp, #0xa]
	bl MI_CpuCopy8
	ldrh r2, [r4, #0x10]
	add r1, sp, #0x16
	add r0, r4, #0x14
	strh r2, [sp, #0x12]
	ldrh r3, [r4, #0x34]
	mov r2, #0x20
	strh r3, [sp, #0x36]
	ldrh r3, [r4, #0x12]
	strh r3, [sp, #0x14]
	bl MI_CpuCopy8
	add r0, sp, #0
	mov r1, #0x3c
	bl WMi_SendCommandDirect
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x3c
	ldmia sp!, {r4, r5, pc}
	arm_func_end WM_StartScanEx

	arm_func_start WM_EndScan
WM_EndScan: ; 0x020CF1DC
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #1
	mov r1, #5
	bl WMi_CheckStateEx
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, r4
	mov r0, #0xb
	bl WMi_SetCallbackTable
	mov r0, #0xb
	mov r1, #0
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	ldmia sp!, {r4, pc}
	arm_func_end WM_EndScan

	arm_func_start WM_StartConnectEx
WM_StartConnectEx: ; 0x020CF21C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x28
	mov r7, r0
	mov r6, r1
	mov r0, #1
	mov r1, #2
	mov r5, r2
	mov r4, r3
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #0x28
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r6, #0
	addeq sp, sp, #0x28
	moveq r0, #6
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrh r1, [r6]
	mov r0, r6
	mov r1, r1, lsl #1
	bl DC_StoreRange
	bl WMi_GetSystemWork
	add r1, r0, #0x100
	mov r2, #0
	strh r2, [r1, #0x50]
	str r2, [r0, #0x14c]
	mov r1, r7
	mov r0, #0xc
	bl WMi_SetCallbackTable
	mov r0, #0xc
	strh r0, [sp]
	str r6, [sp, #4]
	cmp r5, #0
	mov r2, #0x18
	beq _020CF2B4
	add r1, sp, #8
	mov r0, r5
	bl MI_CpuCopy8
	b _020CF2C0
_020CF2B4:
	add r0, sp, #8
	mov r1, #0
	bl MI_CpuFill8
_020CF2C0:
	ldrh r2, [sp, #0x40]
	add r0, sp, #0
	mov r1, #0x28
	str r4, [sp, #0x20]
	strh r2, [sp, #0x26]
	bl WMi_SendCommandDirect
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #0x28
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end WM_StartConnectEx

	arm_func_start WM_Disconnect
WM_Disconnect: ; 0x020CF2E8
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r0
	mov r4, r1
	bl WMi_GetSystemWork
	mov r1, #0xa
	mov r6, r0
	str r1, [sp]
	mov ip, #0xb
	mov r0, #5
	mov r1, #7
	mov r2, #9
	mov r3, #8
	str ip, [sp, #4]
	bl WMi_CheckStateEx
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, [r6, #4]
	ldrh r0, [r1]
	cmp r0, #7
	cmpne r0, #9
	bne _020CF394
	cmp r4, #1
	blo _020CF354
	cmp r4, #0xf
	bls _020CF360
_020CF354:
	add sp, sp, #8
	mov r0, #6
	ldmia sp!, {r4, r5, r6, pc}
_020CF360:
	add r0, r1, #0x82
	add r0, r0, #0x100
	mov r1, #2
	bl DC_InvalidateRange
	ldr r0, [r6, #4]
	mov r1, #1
	add r0, r0, #0x100
	ldrh r0, [r0, #0x82]
	tst r0, r1, lsl r4
	bne _020CF3A4
	add sp, sp, #8
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_020CF394:
	cmp r4, #0
	addne sp, sp, #8
	movne r0, #6
	ldmneia sp!, {r4, r5, r6, pc}
_020CF3A4:
	mov r1, r5
	mov r0, #0xd
	bl WMi_SetCallbackTable
	mov r1, #1
	mov r2, r1, lsl r4
	mov r0, #0xd
	bl WMi_SendCommand
	cmp r0, #0
	moveq r0, #2
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end WM_Disconnect