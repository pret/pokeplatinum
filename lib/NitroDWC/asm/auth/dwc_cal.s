	.include "macros/function.inc"
	.include "include/dwc_cal.inc"

	

	.text


	arm_func_start DWC_Auth_GetCalInfoFromNVRAM
DWC_Auth_GetCalInfoFromNVRAM: ; 0x021D3E5C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x14
	mov r4, r0
	add r0, sp, #0
	bl sub_020A283C
	add r1, sp, #0
	mov r0, r4
	bl DWC_Auth_GetCalInfoFromWiFiInfo
	add sp, sp, #0x14
	ldmia sp!, {r3, r4, pc}
	arm_func_end DWC_Auth_GetCalInfoFromNVRAM

	arm_func_start DWC_Auth_GetCalInfoFromWiFiInfo
DWC_Auth_GetCalInfoFromWiFiInfo: ; 0x021D3E84
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x8c
	mov r6, r1
	mov r1, #0
	mov r2, #0x94
	mov r4, r0
	bl MI_CpuFill8
	ldmia r6, {r3, r5}
	cmp r5, #0
	cmpeq r3, #0
	mov r1, #0xe
	beq _021D3EC8
	ldr r2, _021D4114 ; =0x02215FD0
	mov r0, r4
	str r5, [sp]
	bl OS_SNPrintf
	b _021D3EE0
_021D3EC8:
	ldr r3, [r6, #8]
	ldr r5, [r6, #0xc]
	ldr r2, _021D4114 ; =0x02215FD0
	mov r0, r4
	str r5, [sp]
	bl OS_SNPrintf
_021D3EE0:
	ldrh r3, [r6, #0x10]
	ldr r2, _021D4118 ; =0x02215FD8
	add r0, r4, #0xe
	mov r1, #7
	bl OS_SNPrintf
	ldr r0, _021D411C ; =0x027FFE0C
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D3F08
	bl OS_Terminate
_021D3F08:
	ldr r0, _021D411C ; =0x027FFE0C
	add r1, r4, #0x15
	mov r2, #4
	bl MI_CpuCopy8
	ldr r0, _021D4120 ; =0x027FFE10
	ldrb r0, [r0]
	cmp r0, #0
	bne _021D3F2C
	bl OS_Terminate
_021D3F2C:
	ldr r0, _021D4120 ; =0x027FFE10
	add r1, r4, #0x1a
	mov r2, #2
	bl MI_CpuCopy8
	mov r1, #0x30
	add r0, sp, #0x16
	strb r1, [r4, #0x1d]
	bl OS_GetMacAddress
	ldr r5, _021D4124 ; =0x02215FE0
	add r7, sp, #0x16
	add r8, r4, #0x1f
	mov r6, #0
_021D3F5C:
	ldrb r2, [r7], #1
	mov r0, r8
	mov r1, r5
	bl OS_SPrintf
	add r6, r6, #1
	cmp r6, #6
	add r8, r8, #2
	blt _021D3F5C
	add r0, sp, #0x38
	bl OS_GetOwnerInfo
	ldrb r0, [sp, #0x38]
	ldr r2, _021D4124 ; =0x02215FE0
	mov r1, #3
	cmp r0, #8
	movhs r0, #1
	strhsb r0, [sp, #0x38]
	ldrb r3, [sp, #0x38]
	add r0, r4, #0x2c
	bl OS_SNPrintf
	add r0, sp, #0x3c
	add r1, r4, #0x7e
	mov r2, #0x14
	bl MI_CpuCopy8
	ldrb r1, [sp, #0x3b]
	ldr r2, _021D4128 ; =0x02215FE8
	add r0, r4, #0x2f
	str r1, [sp]
	ldrb r3, [sp, #0x3a]
	mov r1, #5
	bl OS_SNPrintf
	add r0, sp, #0x28
	add r1, sp, #0x1c
	bl RTC_GetDateTime
	cmp r0, #0
	addne sp, sp, #0x8c
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x2c]
	ldr r2, _021D412C ; =0x02215FF4
	str r0, [sp]
	ldr r1, [sp, #0x30]
	add r0, r4, #0x34
	str r1, [sp, #4]
	ldr r3, [sp, #0x1c]
	mov r1, #0xd
	str r3, [sp, #8]
	ldr r3, [sp, #0x20]
	str r3, [sp, #0xc]
	ldr r3, [sp, #0x24]
	str r3, [sp, #0x10]
	ldr r3, [sp, #0x28]
	bl OS_SNPrintf
	bl OS_DisableInterrupts
	mov r6, r0
	bl WCM_GetApMacAddress
	mov r7, r0
	mov r1, #6
	bl DC_InvalidateRange
	cmp r7, #0
	bne _021D4060
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021D4060:
	ldr r5, _021D4124 ; =0x02215FE0
	add r8, r4, #0x41
	mov sb, #0
_021D406C:
	ldrb r2, [r7, sb]
	mov r0, r8
	mov r1, r5
	bl OS_SPrintf
	add sb, sb, #1
	cmp sb, #6
	add r8, r8, #2
	blt _021D406C
	bl DWC_AC_GetApType
	mov r3, r0
	cmp r3, #0xff
	beq _021D40A4
	cmp r3, #0x63
	bls _021D40A8
_021D40A4:
	mov r3, #0x63
_021D40A8:
	ldr r2, _021D4130 ; =0x02216010
	add r0, r4, #0x6f
	mov r1, #0xe
	bl OS_SNPrintf
	add r0, sp, #0x14
	bl ov4_022153DC
	mov r5, r0
	mov r1, #0x20
	bl DC_InvalidateRange
	cmp r5, #0
	bne _021D40E8
	mov r0, r6
	bl OS_RestoreInterrupts
	add sp, sp, #0x8c
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021D40E8:
	mov r0, r5
	add r1, r4, #0x4e
	mov r2, #0x20
	bl MI_CpuCopy8
	add r0, r4, #0x72
	bl DWC_AC_GetApSpotInfo
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	add sp, sp, #0x8c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021D4114: .word Unk_ov4_02215FD0
_021D4118: .word Unk_ov4_02215FD8
_021D411C: .word 0x027FFE0C
_021D4120: .word 0x027FFE10
_021D4124: .word Unk_ov4_02215FE0
_021D4128: .word Unk_ov4_02215FE8
_021D412C: .word Unk_ov4_02215FF4
_021D4130: .word Unk_ov4_02216010
	arm_func_end DWC_Auth_GetCalInfoFromWiFiInfo

	arm_func_start DWC_Auth_SetCalInfoToHttp
DWC_Auth_SetCalInfoToHttp: ; 0x021D4134
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x28
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r3, #2
	ldr r2, _021D4430 ; =0x02216020
	add r0, sp, #4
	mov r1, #0x21
	str r3, [sp]
	bl OS_SNPrintf
	add r0, sp, #4
	bl strlen
	mov r3, r0
	ldr r1, _021D4434 ; =0x0221602C
	mov r0, r6
	add r2, sp, #4
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl strlen
	mov r3, r0
	ldr r1, _021D4438 ; =0x02216034
	mov r0, r6
	mov r2, r5
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0xe
	bl strlen
	mov r3, r0
	ldr r1, _021D443C ; =0x0221603C
	mov r0, r6
	add r2, r5, #0xe
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x41
	bl strlen
	mov r3, r0
	ldr r1, _021D4440 ; =0x02216044
	mov r0, r6
	add r2, r5, #0x41
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x6f
	bl strlen
	mov r3, r0
	ldr r1, _021D4444 ; =0x0221604C
	mov r0, r6
	add r2, r5, #0x6f
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x15
	bl strlen
	mov r3, r0
	ldr r1, _021D4448 ; =0x02216054
	mov r0, r6
	add r2, r5, #0x15
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1a
	bl strlen
	mov r3, r0
	ldr r1, _021D444C ; =0x0221605C
	mov r0, r6
	add r2, r5, #0x1a
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1d
	bl strlen
	mov r3, r0
	ldr r1, _021D4450 ; =0x02216064
	mov r0, r6
	add r2, r5, #0x1d
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x1f
	bl strlen
	mov r3, r0
	ldr r1, _021D4454 ; =0x0221606C
	mov r0, r6
	add r2, r5, #0x1f
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x2c
	bl strlen
	mov r3, r0
	ldr r1, _021D4458 ; =0x02216074
	mov r0, r6
	add r2, r5, #0x2c
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x2f
	bl strlen
	mov r3, r0
	ldr r1, _021D445C ; =0x0221607C
	mov r0, r6
	add r2, r5, #0x2f
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x34
	bl strlen
	mov r3, r0
	ldr r1, _021D4460 ; =0x02216084
	mov r0, r6
	add r2, r5, #0x34
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r5, #0x7e
	bl wcslen
	mov r3, r0
	ldr r1, _021D4464 ; =0x0221608C
	mov r0, r6
	add r2, r5, #0x7e
	mov r3, r3, lsl #1
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	cmp r4, #1
	bne _021D43D4
	add r0, r5, #0x4e
	bl strlen
	mov r3, r0
	ldr r1, _021D4468 ; =0x02216094
	mov r0, r6
	add r2, r5, #0x4e
	bl DWC_Http_Add_PostBase64Item
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
_021D43D4:
	ldr r2, _021D446C ; =0x0221609C
	mov r3, #2
	add r0, sp, #4
	mov r1, #0x21
	str r3, [sp]
	bl OS_SNPrintf
	ldr r1, _021D4470 ; =0x022160B4
	add r2, sp, #4
	mov r0, r6
	bl DWC_Http_Add_HeaderItem
	cmp r0, #0
	addne sp, sp, #0x28
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r1, _021D4474 ; =0x022160C0
	mov r0, r6
	add r2, r5, #0x15
	bl DWC_Http_Add_HeaderItem
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021D4430: .word Unk_ov4_02216020
_021D4434: .word Unk_ov4_0221602C
_021D4438: .word Unk_ov4_02216034
_021D443C: .word Unk_ov4_0221603C
_021D4440: .word Unk_ov4_02216044
_021D4444: .word Unk_ov4_0221604C
_021D4448: .word Unk_ov4_02216054
_021D444C: .word Unk_ov4_0221605C
_021D4450: .word Unk_ov4_02216064
_021D4454: .word Unk_ov4_0221606C
_021D4458: .word Unk_ov4_02216074
_021D445C: .word Unk_ov4_0221607C
_021D4460: .word Unk_ov4_02216084
_021D4464: .word Unk_ov4_0221608C
_021D4468: .word Unk_ov4_02216094
_021D446C: .word Unk_ov4_0221609C
_021D4470: .word Unk_ov4_022160B4
_021D4474: .word Unk_ov4_022160C0
	arm_func_end DWC_Auth_SetCalInfoToHttp

	.data


	.global Unk_ov4_02215FD0
Unk_ov4_02215FD0: ; 0x02215FD0
	.incbin "incbin/overlay4_data.bin", 0x150, 0x158 - 0x150

	.global Unk_ov4_02215FD8
Unk_ov4_02215FD8: ; 0x02215FD8
	.incbin "incbin/overlay4_data.bin", 0x158, 0x160 - 0x158

	.global Unk_ov4_02215FE0
Unk_ov4_02215FE0: ; 0x02215FE0
	.incbin "incbin/overlay4_data.bin", 0x160, 0x168 - 0x160

	.global Unk_ov4_02215FE8
Unk_ov4_02215FE8: ; 0x02215FE8
	.incbin "incbin/overlay4_data.bin", 0x168, 0x174 - 0x168

	.global Unk_ov4_02215FF4
Unk_ov4_02215FF4: ; 0x02215FF4
	.incbin "incbin/overlay4_data.bin", 0x174, 0x190 - 0x174

	.global Unk_ov4_02216010
Unk_ov4_02216010: ; 0x02216010
	.incbin "incbin/overlay4_data.bin", 0x190, 0x1A0 - 0x190

	.global Unk_ov4_02216020
Unk_ov4_02216020: ; 0x02216020
	.incbin "incbin/overlay4_data.bin", 0x1A0, 0x1AC - 0x1A0

	.global Unk_ov4_0221602C
Unk_ov4_0221602C: ; 0x0221602C
	.incbin "incbin/overlay4_data.bin", 0x1AC, 0x1B4 - 0x1AC

	.global Unk_ov4_02216034
Unk_ov4_02216034: ; 0x02216034
	.incbin "incbin/overlay4_data.bin", 0x1B4, 0x1BC - 0x1B4

	.global Unk_ov4_0221603C
Unk_ov4_0221603C: ; 0x0221603C
	.incbin "incbin/overlay4_data.bin", 0x1BC, 0x1C4 - 0x1BC

	.global Unk_ov4_02216044
Unk_ov4_02216044: ; 0x02216044
	.incbin "incbin/overlay4_data.bin", 0x1C4, 0x1CC - 0x1C4

	.global Unk_ov4_0221604C
Unk_ov4_0221604C: ; 0x0221604C
	.incbin "incbin/overlay4_data.bin", 0x1CC, 0x1D4 - 0x1CC

	.global Unk_ov4_02216054
Unk_ov4_02216054: ; 0x02216054
	.incbin "incbin/overlay4_data.bin", 0x1D4, 0x1DC - 0x1D4

	.global Unk_ov4_0221605C
Unk_ov4_0221605C: ; 0x0221605C
	.incbin "incbin/overlay4_data.bin", 0x1DC, 0x1E4 - 0x1DC

	.global Unk_ov4_02216064
Unk_ov4_02216064: ; 0x02216064
	.incbin "incbin/overlay4_data.bin", 0x1E4, 0x1EC - 0x1E4

	.global Unk_ov4_0221606C
Unk_ov4_0221606C: ; 0x0221606C
	.incbin "incbin/overlay4_data.bin", 0x1EC, 0x1F4 - 0x1EC

	.global Unk_ov4_02216074
Unk_ov4_02216074: ; 0x02216074
	.incbin "incbin/overlay4_data.bin", 0x1F4, 0x1FC - 0x1F4

	.global Unk_ov4_0221607C
Unk_ov4_0221607C: ; 0x0221607C
	.incbin "incbin/overlay4_data.bin", 0x1FC, 0x204 - 0x1FC

	.global Unk_ov4_02216084
Unk_ov4_02216084: ; 0x02216084
	.incbin "incbin/overlay4_data.bin", 0x204, 0x20C - 0x204

	.global Unk_ov4_0221608C
Unk_ov4_0221608C: ; 0x0221608C
	.incbin "incbin/overlay4_data.bin", 0x20C, 0x214 - 0x20C

	.global Unk_ov4_02216094
Unk_ov4_02216094: ; 0x02216094
	.incbin "incbin/overlay4_data.bin", 0x214, 0x21C - 0x214

	.global Unk_ov4_0221609C
Unk_ov4_0221609C: ; 0x0221609C
	.incbin "incbin/overlay4_data.bin", 0x21C, 0x234 - 0x21C

	.global Unk_ov4_022160B4
Unk_ov4_022160B4: ; 0x022160B4
	.incbin "incbin/overlay4_data.bin", 0x234, 0x240 - 0x234

	.global Unk_ov4_022160C0
Unk_ov4_022160C0: ; 0x022160C0
	.incbin "incbin/overlay4_data.bin", 0x240, 0xE

