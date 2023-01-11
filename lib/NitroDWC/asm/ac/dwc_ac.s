	.include "macros/function.inc"
	.include "include/dwc_ac.inc"

	

	.text


	arm_func_start DWC_AC_Create
DWC_AC_Create: ; 0x021E5C34
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r2, [r4, #0]
	mov r0, #1
	mov r1, #0x24
	blx r2
	mov r1, r0
	ldr r3, _021E5DD4 ; =0x0221AE2C
	mov r0, #0
	mov r2, #0x24
	str r1, [r3, #0xc]
	bl MIi_CpuClear32
	ldr r0, _021E5DD4 ; =0x0221AE2C
	ldr r1, [r4, #0]
	ldr r3, [r0, #0xc]
	mov r2, #1
	str r1, [r3, #0]
	ldr r0, [r4, #4]
	ldr r1, _021E5DD8 ; =0x00000D18
	str r0, [r3, #4]
	strb r2, [r3, #9]
	strb r2, [r3, #0x16]
	mov r0, #0x10
	strb r2, [r3, #8]
	bl ov4_021E6124
	ldr r2, _021E5DD4 ; =0x0221AE2C
	mov r1, #0x2300
	str r0, [r2, #0x10]
	mov r0, #2
	bl ov4_021E6124
	ldr r2, _021E5DD4 ; =0x0221AE2C
	mov r1, #0x58
	str r0, [r2, #0]
	mov r0, #4
	bl ov4_021E6124
	ldr r2, _021E5DD4 ; =0x0221AE2C
	mov r1, #0xc
	str r0, [r2, #4]
	mov r0, #8
	bl ov4_021E6124
	ldr r1, _021E5DD4 ; =0x0221AE2C
	ldr r2, _021E5DD8 ; =0x00000D18
	str r0, [r1, #8]
	ldr r1, [r1, #0x10]
	mov r0, #0
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021E5DD4 ; =0x0221AE2C
	mov r2, #0x2300
	ldr r1, [r1, #0]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021E5DD4 ; =0x0221AE2C
	mov r2, #0x58
	ldr r1, [r1, #4]
	bl MIi_CpuClear32
	mov r0, #0
	ldr r1, _021E5DD4 ; =0x0221AE2C
	mov r2, #0xc
	ldr r1, [r1, #8]
	bl MIi_CpuClear32
	ldr r1, _021E5DD4 ; =0x0221AE2C
	ldrb r2, [r4, #8]
	ldr r0, [r1, #0x10]
	strb r2, [r0, #0xd0a]
	ldrb r3, [r0, #0xd0b]
	ldrb r2, [r4, #9]
	bic r3, r3, #3
	and r2, r2, #3
	orr r2, r3, r2
	strb r2, [r0, #0xd0b]
	ldr r3, [r1, #8]
	ldr r2, [r4, #0]
	mov r1, #0
	str r2, [r3, #0]
	ldr r2, [r4, #4]
	str r2, [r3, #4]
	str r1, [r3, #8]
	ldrb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xa]
	bic r2, r2, #0xf
	and r1, r1, #0xf
	orr r2, r2, r1
	strb r2, [r0, #0xd0c]
	ldrb r1, [r4, #0xb]
	and r2, r2, #0xff
	bic r2, r2, #0x30
	mov r1, r1, lsl #0x1e
	orr r1, r2, r1, lsr #26
	strb r1, [r0, #0xd0c]
	bl sub_020A2810
	ldr r0, _021E5DD4 ; =0x0221AE2C
	mov r1, #0x2300
	ldr r0, [r0, #0]
	bl WCM_Init
	cmp r0, #1
	beq _021E5DC0
	cmp r0, #4
	ble _021E5DCC
_021E5DC0:
	bl ov4_021E61C8
	mov r0, #0
	ldmia sp!, {r4, pc}
_021E5DCC:
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E5DD4: .word Unk_ov4_0221AE2C
_021E5DD8: .word 0x00000D18
	arm_func_end DWC_AC_Create

	arm_func_start DWC_AC_Process
DWC_AC_Process: ; 0x021E5DDC
	stmfd sp!, {r3, r4, r5, lr}
	bl ov4_021E63A4
	mov r5, r0
	cmp r5, #1
	bne _021E5DFC
	bl ov4_021E80B0
	mov r5, r0
	b _021E5E70
_021E5DFC:
	cmp r5, #7
	bhs _021E5E24
	bl OS_DisableInterrupts
	mov r4, r0
	bl ov4_021E78E0
	mov r5, r0
	bl ov4_021E6344
	mov r0, r4
	bl OS_RestoreInterrupts
	b _021E5E70
_021E5E24:
	cmp r5, #9
	bhs _021E5E38
	bl ov4_021E6B90
	mov r5, r0
	b _021E5E70
_021E5E38:
	cmp r5, #0xa
	bhs _021E5E4C
	bl ov4_021E7804
	mov r5, r0
	b _021E5E70
_021E5E4C:
	cmp r5, #0x10
	bhs _021E5E60
	bl ov4_021E8138
	mov r5, r0
	b _021E5E70
_021E5E60:
	cmp r5, #0x11
	bne _021E5E70
	bl ov4_021E7210
	mov r5, r0
_021E5E70:
	mov r0, r5
	bl ov4_021E6344
	cmp r5, #0x10
	bne _021E5E94
	bl ov4_021E64E8
	mov r4, r0
	bl ov4_021E64B0
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
_021E5E94:
	cmp r5, #0x12
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	bl ov4_021E64B0
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end DWC_AC_Process

	arm_func_start DWC_AC_GetStatus
DWC_AC_GetStatus: ; 0x021E5EAC
	stmfd sp!, {r3, lr}
	bl ov4_021E63A4
	cmp r0, #1
	movls r0, #0
	ldmlsia sp!, {r3, pc}
	cmp r0, #7
	movlo r0, #1
	ldmloia sp!, {r3, pc}
	cmp r0, #9
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0xa
	movlo r0, #2
	ldmloia sp!, {r3, pc}
	cmp r0, #0xb
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x10
	movlo r0, #3
	ldmloia sp!, {r3, pc}
	moveq r0, #5
	ldmeqia sp!, {r3, pc}
	cmp r0, #0x11
	moveq r0, #4
	ldmeqia sp!, {r3, pc}
	bl ov4_021E7234
	ldmia sp!, {r3, pc}
	arm_func_end DWC_AC_GetStatus

	arm_func_start DWC_AC_GetApType
DWC_AC_GetApType: ; 0x021E5F18
	stmfd sp!, {r4, lr}
	mov r4, #0xff
	bl ov4_021E63A4
	cmp r0, #0xa
	blo _021E5F3C
	cmp r0, #0x10
	ldrls r0, _021E5F44 ; =0x0221AE2C
	ldrls r0, [r0, #0xc]
	ldrlsb r4, [r0, #0x17]
_021E5F3C:
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E5F44: .word Unk_ov4_0221AE2C
	arm_func_end DWC_AC_GetApType

	arm_func_start DWC_AC_GetApSpotInfo
DWC_AC_GetApSpotInfo: ; 0x021E5F48
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl ov4_021E63A4
	cmp r0, #0xa
	blo _021E5F94
	cmp r0, #0x10
	bhi _021E5F94
	ldr r0, _021E5F9C ; =0x0221AE2C
	ldr r2, [r0, #0xc]
	ldrb r0, [r2, #0x17]
	cmp r0, #4
	cmpne r0, #8
	bne _021E5F94
	mov r1, r5
	add r0, r2, #0x18
	mov r2, #0xa
	bl MI_CpuCopy8
	mov r4, #1
_021E5F94:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021E5F9C: .word Unk_ov4_0221AE2C
	arm_func_end DWC_AC_GetApSpotInfo

	arm_func_start DWC_AC_Destroy
DWC_AC_Destroy: ; 0x021E5FA0
	stmfd sp!, {r3, lr}
	bl ov4_021E63A4
	strb r0, [sp]
	ands r0, r0, #0xff
	cmpne r0, #0x12
	bne _021E5FC4
	bl ov4_021E61C8
	mov r0, #1
	ldmia sp!, {r3, pc}
_021E5FC4:
	add r0, sp, #0
	bl ov4_021E70C8
	ldrb r0, [sp]
	bl ov4_021E6344
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end DWC_AC_Destroy

	arm_func_start DWC_AC_SetSpecifyApEx
DWC_AC_SetSpecifyApEx: ; 0x021E5FDC
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r5, r3
	mov r0, #1
	mov r7, r1
	mov r6, r2
	bl ov4_021E62EC
	mov r4, r0
	cmp r5, #0
	mov r2, #0xa
	beq _021E6018
	mov r0, r5
	add r1, r4, #0x18
	bl MI_CpuCopy8
	b _021E6024
_021E6018:
	add r0, r4, #0x18
	mov r1, #0
	bl MI_CpuFill8
_021E6024:
	ldr r3, [sp, #0x18]
	mov r0, r8
	mov r1, r7
	mov r2, r6
	strb r3, [r4, #0x22]
	bl DWC_AC_SetSpecifyAp
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end DWC_AC_SetSpecifyApEx

	arm_func_start DWC_AC_SetSpecifyAp
DWC_AC_SetSpecifyAp: ; 0x021E6040
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r0, #0x10
	mov r6, r1
	mov r5, r2
	bl ov4_021E62EC
	mov r4, r0
	ldrb r3, [r4, #0xd0c]
	mov r1, #0
	mov r2, #0xf0
	bic r3, r3, #0xf
	orr r3, r3, #1
	strb r3, [r4, #0xd0c]
	bl MI_CpuFill8
	mov r2, #0
_021E607C:
	ldrb r1, [r7, r2]
	cmp r1, #0
	beq _021E609C
	add r0, r4, r2
	add r2, r2, #1
	strb r1, [r0, #0x40]
	cmp r2, #0x20
	blt _021E607C
_021E609C:
	cmp r6, #0
	cmpne r5, #0
	bne _021E60B8
	ldrb r0, [r4, #0xe6]
	bic r0, r0, #3
	strb r0, [r4, #0xe6]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E60B8:
	cmp r5, #1
	moveq r2, #5
	beq _021E60D0
	cmp r5, #2
	moveq r2, #0xd
	movne r2, #0x10
_021E60D0:
	mov r0, r6
	add r1, r4, #0x80
	bl MI_CpuCopy8
	ldrb r1, [r4, #0xe6]
	and r0, r5, #0xff
	and r0, r0, #3
	bic r1, r1, #3
	orr r0, r1, r0
	strb r0, [r4, #0xe6]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWC_AC_SetSpecifyAp

	arm_func_start ov4_021E60F8
ov4_021E60F8: ; 0x021E60F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #0x10
	mov r4, r1
	bl ov4_021E62EC
	mov r1, r0
	mov r0, r4
	add r1, r1, r5, lsl #8
	mov r2, #0xf0
	bl MIi_CpuCopy32
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E60F8

	arm_func_start ov4_021E6124
ov4_021E6124: ; 0x021E6124
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	mov r4, r1
	bl ov4_021E62EC
	ldrb r1, [r0, #8]
	tst r1, r5
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	orr r1, r1, r5
	strb r1, [r0, #8]
	ldr r2, [r0, #0]
	mov r0, r5
	mov r1, r4
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E6124

	arm_func_start ov4_021E6164
ov4_021E6164: ; 0x021E6164
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	mov r5, r1
	mov r4, r2
	bl ov4_021E62EC
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldrb r2, [r0, #8]
	tst r2, r6
	ldmeqia sp!, {r4, r5, r6, pc}
	mvn r1, r6
	and r1, r2, r1
	strb r1, [r0, #8]
	ldr r3, [r0, #4]
	mov r0, r6
	mov r1, r5
	mov r2, r4
	blx r3
	cmp r6, #1
	ldreq r0, _021E61C4 ; =0x0221AE2C
	moveq r1, #0
	streq r1, [r0, #0xc]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E61C4: .word Unk_ov4_0221AE2C
	arm_func_end ov4_021E6164

	arm_func_start ov4_021E61C8
ov4_021E61C8: ; 0x021E61C8
	stmfd sp!, {r4, lr}
	mov r0, #1
	bl ov4_021E62EC
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	ldrb r0, [r4, #8]
	tst r0, #0x10
	beq _021E6210
	mov r0, #0x10
	bl ov4_021E62EC
	ldrb r3, [r4, #8]
	mov r1, r0
	ldr r2, _021E62E4 ; =0x00000D18
	bic r0, r3, #0x10
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r0, #0x10
	blx r3
_021E6210:
	ldrb r0, [r4, #8]
	tst r0, #8
	beq _021E6244
	mov r0, #8
	bl ov4_021E62EC
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #8
	bic r2, r2, #8
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0xc
	blx r3
_021E6244:
	ldrb r0, [r4, #8]
	tst r0, #4
	beq _021E6278
	mov r0, #4
	bl ov4_021E62EC
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #4
	bic r2, r2, #4
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x58
	blx r3
_021E6278:
	ldrb r0, [r4, #8]
	tst r0, #2
	beq _021E62AC
	mov r0, #2
	bl ov4_021E62EC
	ldrb r2, [r4, #8]
	mov r1, r0
	mov r0, #2
	bic r2, r2, #2
	strb r2, [r4, #8]
	ldr r3, [r4, #4]
	mov r2, #0x2300
	blx r3
_021E62AC:
	ldrb r0, [r4, #8]
	tst r0, #1
	ldmeqia sp!, {r4, pc}
	bic r0, r0, #1
	strb r0, [r4, #8]
	ldr r3, [r4, #4]
	mov r1, r4
	mov r0, #1
	mov r2, #0x24
	blx r3
	ldr r0, _021E62E8 ; =0x0221AE2C
	mov r1, #0
	str r1, [r0, #0xc]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E62E4: .word 0x00000D18
_021E62E8: .word Unk_ov4_0221AE2C
	arm_func_end ov4_021E61C8

	arm_func_start ov4_021E62EC
ov4_021E62EC: ; 0x021E62EC
	tst r0, #1
	ldrne r0, _021E6340 ; =0x0221AE2C
	ldrne r0, [r0, #0xc]
	bxne lr
	tst r0, #2
	ldrne r0, _021E6340 ; =0x0221AE2C
	ldrne r0, [r0]
	bxne lr
	tst r0, #4
	ldrne r0, _021E6340 ; =0x0221AE2C
	ldrne r0, [r0, #4]
	bxne lr
	tst r0, #8
	ldrne r0, _021E6340 ; =0x0221AE2C
	ldrne r0, [r0, #8]
	bxne lr
	tst r0, #0x10
	ldrne r0, _021E6340 ; =0x0221AE2C
	ldrne r0, [r0, #0x10]
	moveq r0, #0
	bx lr
	; .align 2, 0
_021E6340: .word Unk_ov4_0221AE2C
	arm_func_end ov4_021E62EC

	arm_func_start ov4_021E6344
ov4_021E6344: ; 0x021E6344
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #1
	bl ov4_021E62EC
	mov r5, r0
	mov r0, #0x10
	bl ov4_021E62EC
	mov r4, r0
	strb r6, [r5, #9]
	cmp r6, #0x10
	ldmhsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r5, #0x16]
	cmp r6, r0
	strhib r6, [r5, #0x16]
	cmphi r6, #7
	ldmlsia sp!, {r4, r5, r6, pc}
	ldrb r0, [r4, #0xd0d]
	bl ov4_021E64A0
	strb r0, [r5, #0x15]
	ldrb r0, [r4, #0xd13]
	add r0, r4, r0, lsl #2
	ldrb r0, [r0, #0x444]
	strb r0, [r5, #0x14]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E6344

	arm_func_start ov4_021E63A4
ov4_021E63A4: ; 0x021E63A4
	ldr r0, _021E63BC ; =0x0221AE2C
	ldr r0, [r0, #0xc]
	cmp r0, #0
	ldrneb r0, [r0, #9]
	moveq r0, #0
	bx lr
	; .align 2, 0
_021E63BC: .word Unk_ov4_0221AE2C
	arm_func_end ov4_021E63A4

	arm_func_start ov4_021E63C0
ov4_021E63C0: ; 0x021E63C0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r0, #1
	bl ov4_021E62EC
	mov r4, r0
	str r5, [r4, #0xc]
	bl ov4_021E63A4
	strb r0, [r4, #0xa]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E63C0

	arm_func_start ov4_021E63E4
ov4_021E63E4: ; 0x021E63E4
	ldr r0, _021E63F4 ; =0x0221AE2C
	ldr r0, [r0, #0xc]
	ldr r0, [r0, #0xc]
	bx lr
	; .align 2, 0
_021E63F4: .word Unk_ov4_0221AE2C
	arm_func_end ov4_021E63E4

	arm_func_start ov4_021E63F8
ov4_021E63F8: ; 0x021E63F8
	stmfd sp!, {r4, lr}
	ldr r1, _021E649C ; =0x0221AE2C
	ldr r1, [r1, #0xc]
	ldrb r2, [r1, #0x22]
	cmp r2, #0
	bne _021E6418
	bl ov4_021E64A0
	mov r2, r0
_021E6418:
	ldr r1, _021E649C ; =0x0221AE2C
	mov r0, #0
	ldr r1, [r1, #0xc]
	strb r2, [r1, #0x17]
	bl WCM_GetApEssid
	movs r4, r0
	beq _021E6450
	mov r1, #0x20
	bl DC_InvalidateRange
	ldr r1, _021E649C ; =0x0221AE2C
	mov r0, r4
	ldr r1, [r1, #0xc]
	add r1, r1, #0x18
	bl ov4_021E8654
_021E6450:
	ldr r0, _021E649C ; =0x0221AE2C
	mov r1, #0
	ldr r3, [r0, #0xc]
	mov r2, r3
_021E6460:
	ldrsb r0, [r2, #0x18]
	cmp r0, #0x20
	blt _021E6474
	cmp r0, #0x7e
	ble _021E6488
_021E6474:
	add r0, r3, #0x18
	mov r1, #0
	mov r2, #0xa
	bl MI_CpuFill8
	ldmia sp!, {r4, pc}
_021E6488:
	add r1, r1, #1
	cmp r1, #0xa
	add r2, r2, #1
	blt _021E6460
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E649C: .word Unk_ov4_0221AE2C
	arm_func_end ov4_021E63F8

	arm_func_start ov4_021E64A0
ov4_021E64A0: ; 0x021E64A0
	cmp r0, #2
	subhi r0, r0, #3
	andhi r0, r0, #0xff
	bx lr
	arm_func_end ov4_021E64A0

	arm_func_start ov4_021E64B0
ov4_021E64B0: ; 0x021E64B0
	stmfd sp!, {r3, lr}
	ldr r1, _021E64E0 ; =0x0221AE2C
	mov r0, #8
	ldr r1, [r1, #8]
	mov r2, #0xc
	bl ov4_021E6164
	ldr r0, _021E64E0 ; =0x0221AE2C
	ldr r2, _021E64E4 ; =0x00000D18
	ldr r1, [r0, #0x10]
	mov r0, #0x10
	bl ov4_021E6164
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E64E0: .word Unk_ov4_0221AE2C
_021E64E4: .word 0x00000D18
	arm_func_end ov4_021E64B0

	arm_func_start ov4_021E64E8
ov4_021E64E8: ; 0x021E64E8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	ldr r0, _021E6584 ; =0x0221AE2C
	mov r1, #0xc0
	ldr r8, [r0, #0x10]
	ldrb r7, [r8, #0xd13]
	ldrb r2, [r8, #0xd0d]
	add r0, r8, #0x74
	smulbb r4, r7, r1
	add r5, r0, #0x400
	cmp r2, #6
	movhs r0, #1
	ldmhsia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb sb, [r8, #0xd12]
	mov r6, #0
	cmp sb, #0
	bls _021E657C
	mov sl, r1
_021E652C:
	cmp r6, r7
	beq _021E656C
	add r0, r8, r6, lsl #2
	ldrb r0, [r0, #0x445]
	cmp r0, #6
	bhs _021E656C
	mul r1, r6, sl
	add r0, r8, r1
	add r0, r0, #0x400
	ldrh r2, [r0, #0x7a]
	add r0, r5, r4
	add r1, r5, r1
	bl strncmp
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E656C:
	add r0, r6, #1
	and r6, r0, #0xff
	cmp r6, sb
	blo _021E652C
_021E657C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021E6584: .word Unk_ov4_0221AE2C
	arm_func_end ov4_021E64E8

	.bss


	.global Unk_ov4_0221AE2C
Unk_ov4_0221AE2C: ; 0x0221AE2C
	.space 0x4

	.global Unk_ov4_0221AE30
Unk_ov4_0221AE30: ; 0x0221AE30
	.space 0x4

	.global Unk_ov4_0221AE34
Unk_ov4_0221AE34: ; 0x0221AE34
	.space 0x4

	.global Unk_ov4_0221AE38
Unk_ov4_0221AE38: ; 0x0221AE38
	.space 0x4

	.global Unk_ov4_0221AE3C
Unk_ov4_0221AE3C: ; 0x0221AE3C
	.space 0x4

