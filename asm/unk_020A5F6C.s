	.include "macros/function.inc"
	.include "include/unk_020A5F6C.inc"

	

	.text


	arm_func_start GetNextIndex_
GetNextIndex_: ; 0x020A5F6C
	stmfd sp!, {r3, lr}
	mov r2, r0
	add r0, r1, #1
	ldr r1, [r2, #4]
	bl _u32_div_f
	mov r0, r1, lsl #0x10
	mov r0, r0, lsr #0x10
	ldmia sp!, {r3, pc}
	arm_func_end GetNextIndex_

	arm_func_start IsVramTransferTaskQueueFull_
IsVramTransferTaskQueueFull_: ; 0x020A5F8C
	ldrh r1, [r0, #0xc]
	ldr r0, [r0, #4]
	cmp r1, r0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end IsVramTransferTaskQueueFull_

	arm_func_start IsVramTransferTaskQueueEmpty_
IsVramTransferTaskQueueEmpty_: ; 0x020A5FA4
	ldrh r0, [r0, #0xc]
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	bx lr
	arm_func_end IsVramTransferTaskQueueEmpty_

	arm_func_start DoTransfer3dTex
DoTransfer3dTex: ; 0x020A5FB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GX_BeginLoadTex
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GX_LoadTex
	bl GX_EndLoadTex
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DoTransfer3dTex

	arm_func_start DoTransfer3dTexPltt
DoTransfer3dTexPltt: ; 0x020A5FE4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GX_BeginLoadTexPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GX_LoadTexPltt
	bl GX_EndLoadTexPltt
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DoTransfer3dTexPltt

	arm_func_start DoTransfer3dClearImageColor
DoTransfer3dClearImageColor: ; 0x020A6010
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl GX_BeginLoadClearImage
	mov r0, r5
	mov r1, r4
	bl GX_LoadClearImageColor
	bl GX_EndLoadClearImage
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DoTransfer3dClearImageColor

	arm_func_start DoTransfer3dClearImageDepth
DoTransfer3dClearImageDepth: ; 0x020A6034
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r2
	bl GX_BeginLoadClearImage
	mov r0, r5
	mov r1, r4
	bl GX_LoadClearImageDepth
	bl GX_EndLoadClearImage
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DoTransfer3dClearImageDepth

	arm_func_start DoTransfer2dBG0CharMain
DoTransfer2dBG0CharMain: ; 0x020A6058
	ldr ip, _020A6060 ; =GX_LoadBG0Char
	bx ip
	; .align 2, 0
_020A6060: .word GX_LoadBG0Char
	arm_func_end DoTransfer2dBG0CharMain

	arm_func_start DoTransfer2dBG1CharMain
DoTransfer2dBG1CharMain: ; 0x020A6064
	ldr ip, _020A606C ; =GX_LoadBG1Char
	bx ip
	; .align 2, 0
_020A606C: .word GX_LoadBG1Char
	arm_func_end DoTransfer2dBG1CharMain

	arm_func_start DoTransfer2dBG2CharMain
DoTransfer2dBG2CharMain: ; 0x020A6070
	ldr ip, _020A6078 ; =GX_LoadBG2Char
	bx ip
	; .align 2, 0
_020A6078: .word GX_LoadBG2Char
	arm_func_end DoTransfer2dBG2CharMain

	arm_func_start DoTransfer2dBG3CharMain
DoTransfer2dBG3CharMain: ; 0x020A607C
	ldr ip, _020A6084 ; =GX_LoadBG3Char
	bx ip
	; .align 2, 0
_020A6084: .word GX_LoadBG3Char
	arm_func_end DoTransfer2dBG3CharMain

	arm_func_start DoTransfer2dBG0ScrMain
DoTransfer2dBG0ScrMain: ; 0x020A6088
	ldr ip, _020A6090 ; =GX_LoadBG0Scr
	bx ip
	; .align 2, 0
_020A6090: .word GX_LoadBG0Scr
	arm_func_end DoTransfer2dBG0ScrMain

	arm_func_start DoTransfer2dBG1ScrMain
DoTransfer2dBG1ScrMain: ; 0x020A6094
	ldr ip, _020A609C ; =GX_LoadBG1Scr
	bx ip
	; .align 2, 0
_020A609C: .word GX_LoadBG1Scr
	arm_func_end DoTransfer2dBG1ScrMain

	arm_func_start DoTransfer2dBG2ScrMain
DoTransfer2dBG2ScrMain: ; 0x020A60A0
	ldr ip, _020A60A8 ; =GX_LoadBG2Scr
	bx ip
	; .align 2, 0
_020A60A8: .word GX_LoadBG2Scr
	arm_func_end DoTransfer2dBG2ScrMain

	arm_func_start DoTransfer2dBG3ScrMain
DoTransfer2dBG3ScrMain: ; 0x020A60AC
	ldr ip, _020A60B4 ; =GX_LoadBG3Scr
	bx ip
	; .align 2, 0
_020A60B4: .word GX_LoadBG3Scr
	arm_func_end DoTransfer2dBG3ScrMain

	arm_func_start DoTransfer2dBG2BmpMain
DoTransfer2dBG2BmpMain: ; 0x020A60B8
	ldr ip, _020A60C0 ; =GX_LoadBG2Scr
	bx ip
	; .align 2, 0
_020A60C0: .word GX_LoadBG2Scr
	arm_func_end DoTransfer2dBG2BmpMain

	arm_func_start DoTransfer2dBG3BmpMain
DoTransfer2dBG3BmpMain: ; 0x020A60C4
	ldr ip, _020A60CC ; =GX_LoadBG3Scr
	bx ip
	; .align 2, 0
_020A60CC: .word GX_LoadBG3Scr
	arm_func_end DoTransfer2dBG3BmpMain

	arm_func_start DoTransfer2dObjPlttMain
DoTransfer2dObjPlttMain: ; 0x020A60D0
	ldr ip, _020A60D8 ; =GX_LoadOBJPltt
	bx ip
	; .align 2, 0
_020A60D8: .word GX_LoadOBJPltt
	arm_func_end DoTransfer2dObjPlttMain

	arm_func_start DoTransfer2dBGPlttMain
DoTransfer2dBGPlttMain: ; 0x020A60DC
	ldr ip, _020A60E4 ; =GX_LoadBGPltt
	bx ip
	; .align 2, 0
_020A60E4: .word GX_LoadBGPltt
	arm_func_end DoTransfer2dBGPlttMain

	arm_func_start DoTransfer2dObjExtPlttMain
DoTransfer2dObjExtPlttMain: ; 0x020A60E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GX_BeginLoadOBJExtPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GX_LoadOBJExtPltt
	bl GX_EndLoadOBJExtPltt
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DoTransfer2dObjExtPlttMain

	arm_func_start DoTransfer2dBGExtPlttMain
DoTransfer2dBGExtPlttMain: ; 0x020A6114
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GX_BeginLoadBGExtPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GX_LoadBGExtPltt
	bl GX_EndLoadBGExtPltt
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DoTransfer2dBGExtPlttMain

	arm_func_start DoTransfer2dObjOamMain
DoTransfer2dObjOamMain: ; 0x020A6140
	ldr ip, _020A6148 ; =GX_LoadOAM
	bx ip
	; .align 2, 0
_020A6148: .word GX_LoadOAM
	arm_func_end DoTransfer2dObjOamMain

	arm_func_start DoTransfer2dObjCharMain
DoTransfer2dObjCharMain: ; 0x020A614C
	ldr ip, _020A6154 ; =GX_LoadOBJ
	bx ip
	; .align 2, 0
_020A6154: .word GX_LoadOBJ
	arm_func_end DoTransfer2dObjCharMain

	arm_func_start DoTransfer2dBG0CharSub
DoTransfer2dBG0CharSub: ; 0x020A6158
	ldr ip, _020A6160 ; =GXS_LoadBG0Char
	bx ip
	; .align 2, 0
_020A6160: .word GXS_LoadBG0Char
	arm_func_end DoTransfer2dBG0CharSub

	arm_func_start DoTransfer2dBG1CharSub
DoTransfer2dBG1CharSub: ; 0x020A6164
	ldr ip, _020A616C ; =GXS_LoadBG1Char
	bx ip
	; .align 2, 0
_020A616C: .word GXS_LoadBG1Char
	arm_func_end DoTransfer2dBG1CharSub

	arm_func_start DoTransfer2dBG2CharSub
DoTransfer2dBG2CharSub: ; 0x020A6170
	ldr ip, _020A6178 ; =GXS_LoadBG2Char
	bx ip
	; .align 2, 0
_020A6178: .word GXS_LoadBG2Char
	arm_func_end DoTransfer2dBG2CharSub

	arm_func_start DoTransfer2dBG3CharSub
DoTransfer2dBG3CharSub: ; 0x020A617C
	ldr ip, _020A6184 ; =GXS_LoadBG3Char
	bx ip
	; .align 2, 0
_020A6184: .word GXS_LoadBG3Char
	arm_func_end DoTransfer2dBG3CharSub

	arm_func_start DoTransfer2dBG0ScrSub
DoTransfer2dBG0ScrSub: ; 0x020A6188
	ldr ip, _020A6190 ; =GXS_LoadBG0Scr
	bx ip
	; .align 2, 0
_020A6190: .word GXS_LoadBG0Scr
	arm_func_end DoTransfer2dBG0ScrSub

	arm_func_start DoTransfer2dBG1ScrSub
DoTransfer2dBG1ScrSub: ; 0x020A6194
	ldr ip, _020A619C ; =GXS_LoadBG1Scr
	bx ip
	; .align 2, 0
_020A619C: .word GXS_LoadBG1Scr
	arm_func_end DoTransfer2dBG1ScrSub

	arm_func_start DoTransfer2dBG2ScrSub
DoTransfer2dBG2ScrSub: ; 0x020A61A0
	ldr ip, _020A61A8 ; =GXS_LoadBG2Scr
	bx ip
	; .align 2, 0
_020A61A8: .word GXS_LoadBG2Scr
	arm_func_end DoTransfer2dBG2ScrSub

	arm_func_start DoTransfer2dBG3ScrSub
DoTransfer2dBG3ScrSub: ; 0x020A61AC
	ldr ip, _020A61B4 ; =GXS_LoadBG3Scr
	bx ip
	; .align 2, 0
_020A61B4: .word GXS_LoadBG3Scr
	arm_func_end DoTransfer2dBG3ScrSub

	arm_func_start DoTransfer2dBG2BmpSub
DoTransfer2dBG2BmpSub: ; 0x020A61B8
	ldr ip, _020A61C0 ; =GXS_LoadBG2Scr
	bx ip
	; .align 2, 0
_020A61C0: .word GXS_LoadBG2Scr
	arm_func_end DoTransfer2dBG2BmpSub

	arm_func_start DoTransfer2dBG3BmpSub
DoTransfer2dBG3BmpSub: ; 0x020A61C4
	ldr ip, _020A61CC ; =GXS_LoadBG3Scr
	bx ip
	; .align 2, 0
_020A61CC: .word GXS_LoadBG3Scr
	arm_func_end DoTransfer2dBG3BmpSub

	arm_func_start DoTransfer2dObjPlttSub
DoTransfer2dObjPlttSub: ; 0x020A61D0
	ldr ip, _020A61D8 ; =GXS_LoadOBJPltt
	bx ip
	; .align 2, 0
_020A61D8: .word GXS_LoadOBJPltt
	arm_func_end DoTransfer2dObjPlttSub

	arm_func_start DoTransfer2dBGPlttSub
DoTransfer2dBGPlttSub: ; 0x020A61DC
	ldr ip, _020A61E4 ; =GXS_LoadBGPltt
	bx ip
	; .align 2, 0
_020A61E4: .word GXS_LoadBGPltt
	arm_func_end DoTransfer2dBGPlttSub

	arm_func_start DoTransfer2dObjExtPlttSub
DoTransfer2dObjExtPlttSub: ; 0x020A61E8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GXS_BeginLoadOBJExtPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GXS_LoadOBJExtPltt
	bl GXS_EndLoadOBJExtPltt
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DoTransfer2dObjExtPlttSub

	arm_func_start DoTransfer2dBGExtPlttSub
DoTransfer2dBGExtPlttSub: ; 0x020A6214
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl GXS_BeginLoadBGExtPltt
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl GXS_LoadBGExtPltt
	bl GXS_EndLoadBGExtPltt
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end DoTransfer2dBGExtPlttSub

	arm_func_start DoTransfer2dObjOamSub
DoTransfer2dObjOamSub: ; 0x020A6240
	ldr ip, _020A6248 ; =GXS_LoadOAM
	bx ip
	; .align 2, 0
_020A6248: .word GXS_LoadOAM
	arm_func_end DoTransfer2dObjOamSub

	arm_func_start DoTransfer2dObjCharSub
DoTransfer2dObjCharSub: ; 0x020A624C
	ldr ip, _020A6254 ; =GXS_LoadOBJ
	bx ip
	; .align 2, 0
_020A6254: .word GXS_LoadOBJ
	arm_func_end DoTransfer2dObjCharSub

	arm_func_start DoTransfer_
DoTransfer_: ; 0x020A6258
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r3, [r5, #0]
	ldr r2, _020A6284 ; =0x020F9570
	ldr r0, [r5, #4]
	ldr r1, [r5, #0xc]
	ldr r4, [r2, r3, lsl #2]
	bl DC_FlushRange
	ldmib r5, {r0, r1, r2}
	blx r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A6284: .word Unk_020F9570
	arm_func_end DoTransfer_

	arm_func_start ResetTaskQueue_
ResetTaskQueue_: ; 0x020A6288
	mov r1, #0
	strh r1, [r0, #0xa]
	strh r1, [r0, #8]
	strh r1, [r0, #0xc]
	str r1, [r0, #0x10]
	bx lr
	arm_func_end ResetTaskQueue_

	arm_func_start NNSi_GfdPushVramTransferTaskQueue
NNSi_GfdPushVramTransferTaskQueue: ; 0x020A62A0
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl IsVramTransferTaskQueueFull_
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4, #0xa]
	mov r0, r4
	bl GetNextIndex_
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xc]
	mov r0, #1
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end NNSi_GfdPushVramTransferTaskQueue

	arm_func_start NNSi_GfdGetFrontVramTransferTaskQueue
NNSi_GfdGetFrontVramTransferTaskQueue: ; 0x020A62DC
	ldrh r1, [r0, #8]
	ldr r0, [r0, #0]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end NNSi_GfdGetFrontVramTransferTaskQueue

	arm_func_start NNSi_GfdGetEndVramTransferTaskQueue
NNSi_GfdGetEndVramTransferTaskQueue: ; 0x020A62EC
	ldrh r1, [r0, #0xa]
	ldr r0, [r0, #0]
	add r0, r0, r1, lsl #4
	bx lr
	arm_func_end NNSi_GfdGetEndVramTransferTaskQueue

	arm_func_start NNSi_GfdPopVramTransferTaskQueue
NNSi_GfdPopVramTransferTaskQueue: ; 0x020A62FC
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl IsVramTransferTaskQueueEmpty_
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldrh r1, [r4, #8]
	mov r0, r4
	bl GetNextIndex_
	strh r0, [r4, #8]
	ldrh r1, [r4, #0xc]
	mov r0, #1
	sub r1, r1, #1
	strh r1, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end NNSi_GfdPopVramTransferTaskQueue

	arm_func_start NNS_GfdInitVramTransferManager
NNS_GfdInitVramTransferManager: ; 0x020A6338
	ldr r2, _020A6350 ; =0x021C3AC0
	ldr ip, _020A6354 ; =ResetTaskQueue_
	str r0, [r2, #0]
	ldr r0, _020A6358 ; =0x021C3AC0
	str r1, [r2, #4]
	bx ip
	; .align 2, 0
_020A6350: .word Unk_021C3AC0
_020A6354: .word ResetTaskQueue_
_020A6358: .word Unk_021C3AC0
	arm_func_end NNS_GfdInitVramTransferManager

	arm_func_start NNS_GfdDoVramTransfer
NNS_GfdDoVramTransfer: ; 0x020A635C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r4, _020A63B8 ; =0x021C3AC0
	mov r0, r4
	bl NNSi_GfdGetFrontVramTransferTaskQueue
	mov r5, r0
	mov r0, r4
	bl NNSi_GfdPopVramTransferTaskQueue
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
_020A6380:
	mov r0, r5
	bl DoTransfer_
	ldr r2, [r4, #0x10]
	ldr r1, [r5, #0xc]
	mov r0, r4
	sub r1, r2, r1
	str r1, [r4, #0x10]
	bl NNSi_GfdGetFrontVramTransferTaskQueue
	mov r5, r0
	mov r0, r4
	bl NNSi_GfdPopVramTransferTaskQueue
	cmp r0, #0
	bne _020A6380
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A63B8: .word Unk_021C3AC0
	arm_func_end NNS_GfdDoVramTransfer

	arm_func_start NNS_GfdRegisterNewVramTransferTask
NNS_GfdRegisterNewVramTransferTask: ; 0x020A63BC
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r5, _020A6420 ; =0x021C3AC0
	mov sb, r0
	mov r0, r5
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl IsVramTransferTaskQueueFull_
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	bl NNSi_GfdGetEndVramTransferTaskQueue
	mov r4, r0
	str sb, [r4]
	stmib r4, {r7, r8}
	mov r0, r5
	str r6, [r4, #0xc]
	bl NNSi_GfdPushVramTransferTaskQueue
	ldr r2, [r5, #0x10]
	ldr r1, [r4, #0xc]
	mov r0, #1
	add r1, r2, r1
	str r1, [r5, #0x10]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020A6420: .word Unk_021C3AC0
	arm_func_end NNS_GfdRegisterNewVramTransferTask

	.rodata


	.global Unk_020F9570
Unk_020F9570: ; 0x020F9570
	.incbin "incbin/arm9_rodata.bin", 0x14930, 0x90



	.bss


	.global Unk_021C3AC0
Unk_021C3AC0: ; 0x021C3AC0
	.space 0x14

