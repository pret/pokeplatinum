	.include "macros/function.inc"
	.include "include/unk_02017728.inc"

	

	.text


	thumb_func_start sub_02017728
sub_02017728: ; 0x02017728
	push {r3, lr}
	ldr r3, _02017750 ; =0x027E0000
	ldr r1, _02017754 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	mov r0, #3
	bl MI_WaitDma
	ldr r0, _02017758 ; =0x021BF67C
	ldr r0, [r0, #0x1c]
	bl sub_0201CDD4
	ldr r0, _02017758 ; =0x021BF67C
	ldr r1, [r0, #0x30]
	add r1, r1, #1
	str r1, [r0, #0x30]
	pop {r3, pc}
	nop
_02017750: .word 0x027E0000
_02017754: .word 0x00003FF8
_02017758: .word 0x021BF67C
	thumb_func_end sub_02017728

	thumb_func_start sub_0201775C
sub_0201775C: ; 0x0201775C
	ldr r3, _02017770 ; =0x027E0000
	ldr r1, _02017774 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	ldr r3, _02017778 ; =MI_WaitDma
	mov r0, #3
	bx r3
	nop
_02017770: .word 0x027E0000
_02017774: .word 0x00003FF8
_02017778: .word MI_WaitDma
	thumb_func_end sub_0201775C

	thumb_func_start sub_0201777C
sub_0201777C: ; 0x0201777C
	push {r3, lr}
	mov r0, #1
	bl OS_DisableIrqMask
	ldr r1, _02017794 ; =sub_0201775C
	mov r0, #1
	bl OS_SetIrqFunction
	mov r0, #1
	bl OS_EnableIrqMask
	pop {r3, pc}
	; .align 2, 0
_02017794: .word sub_0201775C
	thumb_func_end sub_0201777C

	thumb_func_start sub_02017798
sub_02017798: ; 0x02017798
	ldr r2, _020177A0 ; =0x021BF67C
	str r0, [r2, #0]
	str r1, [r2, #4]
	bx lr
	; .align 2, 0
_020177A0: .word 0x021BF67C
	thumb_func_end sub_02017798

	thumb_func_start sub_020177A4
sub_020177A4: ; 0x020177A4
	push {r3, lr}
	mov r0, #0
	bl sub_02017808
	ldr r0, _020177B8 ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	pop {r3, pc}
	nop
_020177B8: .word 0x021BF67C
	thumb_func_end sub_020177A4

	thumb_func_start sub_020177BC
sub_020177BC: ; 0x020177BC
	push {r3, lr}
	cmp r0, #0
	bne _020177D4
	mov r0, #0
	bl sub_02017808
	ldr r0, _020177F0 ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	mov r0, #1
	pop {r3, pc}
_020177D4:
	ldr r2, _020177F0 ; =0x021BF67C
	ldr r3, [r2, #8]
	cmp r3, #0
	bne _020177EA
	str r1, [r2, #0xc]
	str r0, [r2, #8]
	mov r0, #1
	bl sub_02017808
	mov r0, #1
	pop {r3, pc}
_020177EA:
	mov r0, #0
	pop {r3, pc}
	nop
_020177F0: .word 0x021BF67C
	thumb_func_end sub_020177BC

	thumb_func_start sub_020177F4
sub_020177F4: ; 0x020177F4
	push {r3, lr}
	ldr r0, _02017804 ; =0x021BF67C
	ldr r1, [r0, #8]
	cmp r1, #0
	beq _02017802
	ldr r0, [r0, #0xc]
	blx r1
_02017802:
	pop {r3, pc}
	; .align 2, 0
_02017804: .word 0x021BF67C
	thumb_func_end sub_020177F4

	thumb_func_start sub_02017808
sub_02017808: ; 0x02017808
	push {r3, lr}
	ldr r2, _02017848 ; =0x04000208
	ldrh r1, [r2]
	mov r1, #0
	strh r1, [r2]
	cmp r0, #0
	bne _02017826
	ldr r0, [r2, #8]
	mov r0, #2
	bl OS_DisableIrqMask
	mov r0, #0
	bl GX_HBlankIntr
	b _0201783C
_02017826:
	ldr r0, [r2, #8]
	ldr r1, _0201784C ; =sub_020177F4
	mov r0, #2
	bl OS_SetIrqFunction
	mov r0, #2
	bl OS_EnableIrqMask
	mov r0, #1
	bl GX_HBlankIntr
_0201783C:
	ldr r1, _02017848 ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	pop {r3, pc}
	nop
_02017848: .word 0x04000208
_0201784C: .word sub_020177F4
	thumb_func_end sub_02017808

	thumb_func_start sub_02017850
sub_02017850: ; 0x02017850
	push {r3, lr}
	sub sp, #0x30
	add r0, sp, #0x10
	bl OS_GetLowEntropyData
	add r0, sp, #0
	add r1, sp, #0x10
	mov r2, #0x20
	bl MATH_CalcMD5
	mov r3, #0
	add r1, r3, #0
	add r2, sp, #0
_0201786A:
	ldrb r0, [r2]
	add r1, r1, #1
	add r2, r2, #1
	add r3, r3, r0
	cmp r1, #0x10
	blo _0201786A
	lsl r0, r3, #0x18
	lsr r3, r0, #0x18
	mov r0, #3
	tst r0, r3
	beq _0201788A
	mov r0, #3
_02017882:
	add r3, r3, #1
	add r1, r3, #0
	tst r1, r0
	bne _02017882
_0201788A:
	ldr r0, _02017898 ; =0x020E5674
	mov r1, #4
	mov r2, #0x7b
	bl sub_02017E74
	add sp, #0x30
	pop {r3, pc}
	; .align 2, 0
_02017898: .word 0x020E5674
	thumb_func_end sub_02017850

	thumb_func_start sub_0201789C
sub_0201789C: ; 0x0201789C
	push {r3, r4, r5, lr}
	bl OS_Init
	bl FX_Init
	ldr r2, _020179C0 ; =0x04000304
	ldr r0, _020179C4 ; =0xFFFFFDF1
	ldrh r1, [r2]
	and r1, r0
	ldr r0, _020179C8 ; =0x0000020E
	orr r0, r1
	strh r0, [r2]
	bl GX_Init
	bl OS_InitTick
	bl sub_02017850
	mov r0, #0xa0
	bl sub_0201CD80
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl OS_AllocFromArenaLo
	add r1, r0, #0
	mov r0, #0xa0
	bl sub_0201CD88
	ldr r1, _020179CC ; =0x021BF67C
	str r0, [r1, #0x18]
	mov r0, #0x20
	bl sub_0201CD80
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl OS_AllocFromArenaLo
	add r1, r0, #0
	mov r0, #0x20
	bl sub_0201CD88
	ldr r1, _020179CC ; =0x021BF67C
	str r0, [r1, #0x1c]
	mov r0, #0x20
	bl sub_0201CD80
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl OS_AllocFromArenaLo
	add r1, r0, #0
	mov r0, #0x20
	bl sub_0201CD88
	ldr r1, _020179CC ; =0x021BF67C
	str r0, [r1, #0x20]
	mov r0, #4
	bl sub_0201CD80
	add r1, r0, #0
	mov r0, #0
	mov r2, #4
	bl OS_AllocFromArenaLo
	add r1, r0, #0
	mov r0, #4
	bl sub_0201CD88
	ldr r1, _020179CC ; =0x021BF67C
	str r0, [r1, #0x24]
	bl GX_DispOff
	ldr r2, _020179D0 ; =0x04001000
	ldr r0, _020179D4 ; =0xFFFEFFFF
	ldr r1, [r2, #0]
	and r0, r1
	str r0, [r2, #0]
	ldr r2, _020179C0 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	ldr r1, _020179D8 ; =sub_02017728
	mov r0, #1
	bl OS_SetIrqFunction
	mov r0, #1
	bl OS_EnableIrqMask
	mov r0, #1
	lsl r0, r0, #0x12
	bl OS_EnableIrqMask
	ldr r1, _020179DC ; =0x04000208
	ldrh r0, [r1]
	mov r0, #1
	strh r0, [r1]
	bl GX_VBlankIntr
	mov r0, #1
	bl FS_Init
	bl sub_02024358
	mov r0, #0
	add r1, r0, #0
	bl FS_TryLoadTable
	add r4, r0, #0
	mov r0, #0
	add r1, r4, #0
	mov r2, #4
	bl OS_AllocFromArenaLo
	add r5, r0, #0
	bne _02017990
	bl sub_02022974
_02017990:
	add r0, r5, #0
	add r1, r4, #0
	bl FS_TryLoadTable
	ldr r0, _020179CC ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #8]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x70]
	str r1, [r0, #0x2c]
	ldr r0, _020179E0 ; =0x021BF6DC
	strb r1, [r0, #5]
	mov r0, #5
	mov r1, #9
	lsl r0, r0, #8
	lsl r1, r1, #0xa
	bl CARD_SetCacheFlushThreshold
	mov r0, #0
	bl sub_0201D640
	pop {r3, r4, r5, pc}
	; .align 2, 0
_020179C0: .word 0x04000304
_020179C4: .word 0xFFFFFDF1
_020179C8: .word 0x0000020E
_020179CC: .word 0x021BF67C
_020179D0: .word 0x04001000
_020179D4: .word 0xFFFEFFFF
_020179D8: .word sub_02017728
_020179DC: .word 0x04000208
_020179E0: .word 0x021BF6DC
	thumb_func_end sub_0201789C

	thumb_func_start sub_020179E4
sub_020179E4: ; 0x020179E4
	push {r3, lr}
	ldr r0, _02017A34 ; =0x000001FF
	bl GX_SetBankForLCDC
	mov r1, #0x1a
	mov r2, #0x29
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0xe
	bl MIi_CpuClearFast
	bl GX_DisableBankForLCDC
	mov r1, #7
	mov r2, #1
	mov r0, #0xc0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	bl MIi_CpuClearFast
	mov r2, #1
	ldr r1, _02017A38 ; =0x07000400
	mov r0, #0xc0
	lsl r2, r2, #0xa
	bl MIi_CpuClearFast
	mov r1, #5
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0xa
	bl MIi_CpuClearFast
	mov r2, #1
	ldr r1, _02017A3C ; =0x05000400
	mov r0, #0
	lsl r2, r2, #0xa
	bl MIi_CpuClearFast
	pop {r3, pc}
	; .align 2, 0
_02017A34: .word 0x000001FF
_02017A38: .word 0x07000400
_02017A3C: .word 0x05000400
	thumb_func_end sub_020179E4

	thumb_func_start sub_02017A40
sub_02017A40: ; 0x02017A40
	push {r4, r5, r6, lr}
	sub sp, #0x48
	add r6, r0, #0
	add r4, r1, #0
	add r0, sp, #0
	bl FS_InitFile
	add r0, sp, #0
	add r1, r4, #0
	bl FS_OpenFile
	cmp r0, #0
	beq _02017A8C
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r5, r1, r0
	add r0, r6, #0
	add r1, r5, #0
	bl sub_02018144
	add r4, r0, #0
	beq _02017A84
	add r0, sp, #0
	add r1, r4, #0
	add r2, r5, #0
	bl FS_ReadFile
	cmp r5, r0
	beq _02017A84
	add r0, r6, #0
	add r1, r4, #0
	bl sub_02018238
	mov r4, #0
_02017A84:
	add r0, sp, #0
	bl FS_CloseFile
	b _02017A8E
_02017A8C:
	mov r4, #0
_02017A8E:
	add r0, r4, #0
	add sp, #0x48
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02017A40

	thumb_func_start sub_02017A94
sub_02017A94: ; 0x02017A94
	push {r3, r4, r5, lr}
	sub sp, #0x48
	add r5, r0, #0
	add r0, sp, #0
	add r4, r1, #0
	bl FS_InitFile
	add r0, sp, #0
	add r1, r5, #0
	bl FS_OpenFile
	cmp r0, #0
	beq _02017AC6
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x24]
	sub r2, r1, r0
	ldr r1, [r4, #0]
	cmp r1, #0
	beq _02017AC0
	add r0, sp, #0
	bl FS_ReadFile
_02017AC0:
	add r0, sp, #0
	bl FS_CloseFile
_02017AC6:
	add sp, #0x48
	pop {r3, r4, r5, pc}
	; .align 2, 0
	thumb_func_end sub_02017A94

	thumb_func_start sub_02017ACC
sub_02017ACC: ; 0x02017ACC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	ldr r5, _02017AF0 ; =0x021BFAE8
	mov r4, #0x7f
	sub r7, r6, #1
_02017AD6:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02017AE4
	bl sub_020181C4
	str r6, [r5, #0]
	str r6, [r5, #4]
_02017AE4:
	sub r4, r4, #1
	sub r5, #8
	cmp r4, r7
	bgt _02017AD6
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02017AF0: .word 0x021BFAE8
	thumb_func_end sub_02017ACC

	thumb_func_start sub_02017AF4
sub_02017AF4: ; 0x02017AF4
	push {r3, lr}
	sub sp, #8
	ldr r0, _02017B54 ; =0x021BF67C
	mov r2, #0
	str r2, [r0, #0x34]
	str r2, [r0, #0x38]
	str r2, [r0, #0x3c]
	str r2, [r0, #0x40]
	str r2, [r0, #0x44]
	str r2, [r0, #0x48]
	str r2, [r0, #0x4c]
	str r2, [r0, #0x50]
	mov r1, #4
	str r1, [r0, #0x54]
	mov r1, #8
	str r1, [r0, #0x58]
	ldr r0, _02017B58 ; =0x021BF6BC
	strh r2, [r0, #0x1c]
	strh r2, [r0, #0x1e]
	strh r2, [r0, #0x20]
	strh r2, [r0, #0x22]
	ldr r0, _02017B5C ; =0x021BF6DC
	strb r2, [r0, #4]
	bl TP_Init
	add r0, sp, #0
	bl TP_GetUserInfo
	cmp r0, #1
	add r0, sp, #0
	bne _02017B3A
	bl TP_SetCalibrateParam
	add sp, #8
	pop {r3, pc}
_02017B3A:
	ldr r1, _02017B60 ; =0x000002AE
	strh r1, [r0]
	ldr r1, _02017B64 ; =0x0000058C
	strh r1, [r0, #2]
	ldr r1, _02017B68 ; =0x00000E25
	strh r1, [r0, #4]
	ldr r1, _02017B6C ; =0x00001208
	strh r1, [r0, #6]
	add r0, sp, #0
	bl TP_SetCalibrateParam
	add sp, #8
	pop {r3, pc}
	; .align 2, 0
_02017B54: .word 0x021BF67C
_02017B58: .word 0x021BF6BC
_02017B5C: .word 0x021BF6DC
_02017B60: .word 0x000002AE
_02017B64: .word 0x0000058C
_02017B68: .word 0x00000E25
_02017B6C: .word 0x00001208
	thumb_func_end sub_02017AF4

	thumb_func_start sub_02017B70
sub_02017B70: ; 0x02017B70
	ldr r1, _02017B78 ; =0x021BF6DC
	strb r0, [r1, #6]
	bx lr
	nop
_02017B78: .word 0x021BF6DC
	thumb_func_end sub_02017B70

	thumb_func_start sub_02017B7C
sub_02017B7C: ; 0x02017B7C
	ldr r1, _02017B88 ; =0x021BF6DC
	ldrb r2, [r1, #7]
	orr r0, r2
	strb r0, [r1, #7]
	bx lr
	nop
_02017B88: .word 0x021BF6DC
	thumb_func_end sub_02017B7C

	thumb_func_start sub_02017B8C
sub_02017B8C: ; 0x02017B8C
	ldr r1, _02017B98 ; =0x021BF6DC
	mvn r0, r0
	ldrb r2, [r1, #7]
	and r0, r2
	strb r0, [r1, #7]
	bx lr
	; .align 2, 0
_02017B98: .word 0x021BF6DC
	thumb_func_end sub_02017B8C

	thumb_func_start sub_02017B9C
sub_02017B9C: ; 0x02017B9C
	push {r4, lr}
	sub sp, #0x10
	ldr r2, _02017C88 ; =0x027FFFA8
	mov r0, #2
	ldrh r1, [r2]
	lsl r0, r0, #0xe
	and r0, r1
	asr r0, r0, #0xf
	beq _02017BC2
	ldr r0, _02017C8C ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #0x48]
	str r1, [r0, #0x44]
	str r1, [r0, #0x4c]
	ldr r0, _02017C90 ; =0x021BF6BC
	add sp, #0x10
	strh r1, [r0, #0x20]
	strh r1, [r0, #0x22]
	pop {r4, pc}
_02017BC2:
	ldr r0, _02017C94 ; =0x04000130
	ldrh r1, [r0]
	ldrh r0, [r2]
	orr r1, r0
	ldr r0, _02017C98 ; =0x00002FFF
	eor r1, r0
	and r0, r1
	ldr r1, _02017C8C ; =0x021BF67C
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	ldr r2, [r1, #0x38]
	add r3, r0, #0
	eor r3, r2
	and r3, r0
	str r3, [r1, #0x3c]
	str r3, [r1, #0x40]
	cmp r0, #0
	beq _02017BFA
	cmp r2, r0
	bne _02017BFA
	ldr r2, [r1, #0x50]
	sub r2, r2, #1
	str r2, [r1, #0x50]
	bne _02017C00
	str r0, [r1, #0x40]
	ldr r2, [r1, #0x54]
	str r2, [r1, #0x50]
	b _02017C00
_02017BFA:
	ldr r1, _02017C8C ; =0x021BF67C
	ldr r2, [r1, #0x58]
	str r2, [r1, #0x50]
_02017C00:
	ldr r1, _02017C8C ; =0x021BF67C
	str r0, [r1, #0x38]
	ldr r2, [r1, #0x3c]
	str r2, [r1, #0x48]
	str r0, [r1, #0x44]
	ldr r0, [r1, #0x40]
	str r0, [r1, #0x4c]
	bl sub_02017CA0
	ldr r0, _02017C9C ; =0x021BF6DC
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _02017C2C
	add r4, sp, #8
_02017C1C:
	bl TP_RequestSamplingAsync
	add r0, r4, #0
	bl TP_WaitRawResult
	cmp r0, #0
	bne _02017C1C
	b _02017C32
_02017C2C:
	add r0, sp, #8
	bl TP_GetLatestRawPointInAuto
_02017C32:
	add r0, sp, #0
	add r1, sp, #8
	bl TP_GetCalibratedPoint
	add r1, sp, #0
	ldrh r3, [r1, #6]
	cmp r3, #0
	bne _02017C4E
	ldrh r2, [r1]
	ldr r0, _02017C90 ; =0x021BF6BC
	strh r2, [r0, #0x1c]
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x1e]
	b _02017C72
_02017C4E:
	ldr r0, _02017C90 ; =0x021BF6BC
	ldrh r2, [r0, #0x22]
	cmp r2, #0
	beq _02017C6E
	cmp r3, #1
	beq _02017C62
	cmp r3, #2
	beq _02017C68
	cmp r3, #3
	b _02017C72
_02017C62:
	ldrh r1, [r1, #2]
	strh r1, [r0, #0x1e]
	b _02017C72
_02017C68:
	ldrh r1, [r1]
	strh r1, [r0, #0x1c]
	b _02017C72
_02017C6E:
	mov r0, #0
	strh r0, [r1, #4]
_02017C72:
	add r0, sp, #0
	ldrh r2, [r0, #4]
	ldr r0, _02017C90 ; =0x021BF6BC
	ldrh r1, [r0, #0x22]
	eor r1, r2
	and r1, r2
	strh r1, [r0, #0x20]
	strh r2, [r0, #0x22]
	add sp, #0x10
	pop {r4, pc}
	nop
_02017C88: .word 0x027FFFA8
_02017C8C: .word 0x021BF67C
_02017C90: .word 0x021BF6BC
_02017C94: .word 0x04000130
_02017C98: .word 0x00002FFF
_02017C9C: .word 0x021BF6DC
	thumb_func_end sub_02017B9C

	thumb_func_start sub_02017CA0
sub_02017CA0: ; 0x02017CA0
	ldr r0, _02017DC8 ; =0x021BF67C
	ldr r1, [r0, #0x34]
	cmp r1, #3
	bls _02017CAA
	b _02017DC4
_02017CAA:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02017CB6: ; jump table
	.short _02017DC4 - _02017CB6 - 2 ; case 0
	.short _02017CBE - _02017CB6 - 2 ; case 1
	.short _02017CF4 - _02017CB6 - 2 ; case 2
	.short _02017D7A - _02017CB6 - 2 ; case 3
_02017CBE:
	ldr r2, [r0, #0x48]
	mov r1, #8
	add r3, r2, #0
	tst r3, r1
	beq _02017CCE
	lsl r1, r1, #7
	orr r1, r2
	str r1, [r0, #0x48]
_02017CCE:
	ldr r1, _02017DC8 ; =0x021BF67C
	mov r0, #8
	ldr r2, [r1, #0x44]
	add r3, r2, #0
	tst r3, r0
	beq _02017CE0
	lsl r0, r0, #7
	orr r0, r2
	str r0, [r1, #0x44]
_02017CE0:
	ldr r1, _02017DC8 ; =0x021BF67C
	mov r0, #8
	ldr r2, [r1, #0x4c]
	add r3, r2, #0
	tst r3, r0
	beq _02017DC4
	lsl r0, r0, #7
	orr r0, r2
	str r0, [r1, #0x4c]
	bx lr
_02017CF4:
	ldr r3, [r0, #0x48]
	mov r0, #1
	lsl r0, r0, #0xa
	add r2, r3, #0
	mov r1, #0
	tst r2, r0
	beq _02017D06
	lsl r0, r0, #1
	orr r1, r0
_02017D06:
	mov r0, #2
	lsl r0, r0, #0xa
	add r2, r3, #0
	tst r2, r0
	beq _02017D14
	lsr r0, r0, #1
	orr r1, r0
_02017D14:
	ldr r2, _02017DC8 ; =0x021BF67C
	ldr r0, _02017DCC ; =0x0000F3FF
	ldr r3, [r2, #0x48]
	and r0, r3
	orr r0, r1
	str r0, [r2, #0x48]
	ldr r3, [r2, #0x44]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, #0
	mov r0, #0
	tst r2, r1
	beq _02017D32
	lsl r1, r1, #1
	orr r0, r1
_02017D32:
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r3, #0
	tst r2, r1
	beq _02017D40
	lsr r1, r1, #1
	orr r0, r1
_02017D40:
	ldr r2, _02017DC8 ; =0x021BF67C
	ldr r1, _02017DCC ; =0x0000F3FF
	ldr r3, [r2, #0x44]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x44]
	ldr r3, [r2, #0x4c]
	mov r1, #1
	lsl r1, r1, #0xa
	add r2, r3, #0
	mov r0, #0
	tst r2, r1
	beq _02017D5E
	lsl r1, r1, #1
	orr r0, r1
_02017D5E:
	mov r1, #2
	lsl r1, r1, #0xa
	add r2, r3, #0
	tst r2, r1
	beq _02017D6C
	lsr r1, r1, #1
	orr r0, r1
_02017D6C:
	ldr r2, _02017DC8 ; =0x021BF67C
	ldr r1, _02017DCC ; =0x0000F3FF
	ldr r3, [r2, #0x4c]
	and r1, r3
	orr r0, r1
	str r0, [r2, #0x4c]
	bx lr
_02017D7A:
	mov r1, #2
	ldr r2, [r0, #0x48]
	lsl r1, r1, #8
	tst r1, r2
	beq _02017D8A
	mov r1, #1
	orr r1, r2
	str r1, [r0, #0x48]
_02017D8A:
	ldr r1, _02017DC8 ; =0x021BF67C
	mov r0, #2
	ldr r2, [r1, #0x44]
	lsl r0, r0, #8
	tst r0, r2
	beq _02017D9C
	mov r0, #1
	orr r0, r2
	str r0, [r1, #0x44]
_02017D9C:
	ldr r1, _02017DC8 ; =0x021BF67C
	mov r0, #2
	ldr r2, [r1, #0x4c]
	lsl r0, r0, #8
	tst r0, r2
	beq _02017DAE
	mov r0, #1
	orr r0, r2
	str r0, [r1, #0x4c]
_02017DAE:
	ldr r1, _02017DC8 ; =0x021BF67C
	ldr r0, _02017DD0 ; =0x0000FCFF
	ldr r2, [r1, #0x48]
	and r2, r0
	str r2, [r1, #0x48]
	ldr r2, [r1, #0x44]
	and r2, r0
	str r2, [r1, #0x44]
	ldr r2, [r1, #0x4c]
	and r0, r2
	str r0, [r1, #0x4c]
_02017DC4:
	bx lr
	nop
_02017DC8: .word 0x021BF67C
_02017DCC: .word 0x0000F3FF
_02017DD0: .word 0x0000FCFF
	thumb_func_end sub_02017CA0

	thumb_func_start sub_02017DD4
sub_02017DD4: ; 0x02017DD4
	ldr r2, _02017DDC ; =0x021BF67C
	str r0, [r2, #0x54]
	str r1, [r2, #0x58]
	bx lr
	; .align 2, 0
_02017DDC: .word 0x021BF67C
	thumb_func_end sub_02017DD4

	thumb_func_start sub_02017DE0
sub_02017DE0: ; 0x02017DE0
	ldr r1, _02017DEC ; =0x021BF6DC
	ldrb r2, [r1, #8]
	orr r0, r2
	strb r0, [r1, #8]
	bx lr
	nop
_02017DEC: .word 0x021BF6DC
	thumb_func_end sub_02017DE0

	thumb_func_start sub_02017DF0
sub_02017DF0: ; 0x02017DF0
	ldr r1, _02017DFC ; =0x021BF6DC
	mvn r0, r0
	ldrb r2, [r1, #8]
	and r0, r2
	strb r0, [r1, #8]
	bx lr
	; .align 2, 0
_02017DFC: .word 0x021BF6DC
	thumb_func_end sub_02017DF0

	thumb_func_start sub_02017E00
sub_02017E00: ; 0x02017E00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _02017E24 ; =0x021BF67C
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _02017E10
	bl sub_02022974
_02017E10:
	add r0, r4, #0
	mov r1, #4
	bl sub_02018184
	ldr r1, _02017E24 ; =0x021BF67C
	str r0, [r1, #0x70]
	ldr r1, _02017E28 ; =0x2F93A1BC
	str r1, [r0, #0]
	pop {r4, pc}
	nop
_02017E24: .word 0x021BF67C
_02017E28: .word 0x2F93A1BC
	thumb_func_end sub_02017E00

	thumb_func_start sub_02017E2C
sub_02017E2C: ; 0x02017E2C
	push {r3, lr}
	ldr r0, _02017E50 ; =0x021BF67C
	ldr r0, [r0, #0x70]
	cmp r0, #0
	bne _02017E3A
	bl sub_02022974
_02017E3A:
	ldr r0, _02017E50 ; =0x021BF67C
	mov r2, #0
	ldr r1, [r0, #0x70]
	str r2, [r1, #0]
	ldr r0, [r0, #0x70]
	bl sub_020181C4
	ldr r0, _02017E50 ; =0x021BF67C
	mov r1, #0
	str r1, [r0, #0x70]
	pop {r3, pc}
	; .align 2, 0
_02017E50: .word 0x021BF67C
	thumb_func_end sub_02017E2C

	thumb_func_start sub_02017E54
sub_02017E54: ; 0x02017E54
	ldr r0, _02017E6C ; =0x021BF67C
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _02017E68
	ldr r1, [r0, #0]
	ldr r0, _02017E70 ; =0x2F93A1BC
	cmp r1, r0
	bne _02017E68
	mov r0, #1
	bx lr
_02017E68:
	mov r0, #0
	bx lr
	; .align 2, 0
_02017E6C: .word 0x021BF67C
_02017E70: .word 0x2F93A1BC
	thumb_func_end sub_02017E54

	.rodata


	.global Unk_020E5674
Unk_020E5674: ; 0x020E5674
	.incbin "incbin/arm9_rodata.bin", 0xA34, 0x20



	.bss


	.global Unk_021BF67C
Unk_021BF67C: ; 0x021BF67C
	.space 0x74

	.global Unk_021BF6F0
Unk_021BF6F0: ; 0x021BF6F0
	.space 0x400

