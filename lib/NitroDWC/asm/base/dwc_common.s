	.include "macros/function.inc"
	.include "include/dwc_common.inc"

	

	.text


	arm_func_start DWC_SetCommonKeyValueString
DWC_SetCommonKeyValueString: ; 0x021D8948
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	stmia sp, {r0, r3}
	mov r4, r2
	str r1, [sp, #8]
	ldr r2, _021D897C ; =0x02217460
	mov r0, r4
	mov r1, #0x1000
	bl OS_SNPrintf
	mov r0, r4
	bl strlen
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_021D897C: .word Unk_ov4_02217460
	arm_func_end DWC_SetCommonKeyValueString

	arm_func_start DWC_AddCommonKeyValueString
DWC_AddCommonKeyValueString: ; 0x021D8980
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r6, r1
	mov r4, r3
	mov r0, r5
	mov r1, #0
	bl strchr
	mov r2, r0
	mov r0, r7
	mov r1, r6
	mov r3, r4
	bl DWC_SetCommonKeyValueString
	mov r0, r5
	bl strlen
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWC_AddCommonKeyValueString

	arm_func_start DWC_GetCommonValueString
DWC_GetCommonValueString: ; 0x021D89C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r7, r0
	mov r6, r3
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, r2
	mov r1, r6
	bl strchr
	movs r5, r0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_021D89F0:
	mov r0, r7
	bl strlen
	mov r2, r0
	mov r1, r7
	add r0, r5, #1
	bl strncmp
	cmp r0, #0
	bne _021D8A28
	mov r0, r7
	bl strlen
	add r0, r0, r5
	ldrsb r0, [r0, #1]
	cmp r6, r0
	beq _021D8A5C
_021D8A28:
	mov r1, r6
	add r0, r5, #1
	bl strchr
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r0, #1
	bl strchr
	movs r5, r0
	bne _021D89F0
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021D8A5C:
	mov r1, r6
	add r0, r5, #1
	bl strchr
	movs r5, r0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r1, r6
	add r0, r5, #1
	bl strchr
	cmp r0, #0
	addne r1, r5, #1
	subne r6, r0, r1
	bne _021D8A9C
	add r0, r5, #1
	bl strlen
	mov r6, r0
_021D8A9C:
	mov r0, r4
	mov r2, r6
	add r1, r5, #1
	bl strncpy
	mov r1, #0
	mov r0, r6
	strb r1, [r4, r6]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DWC_GetCommonValueString

	arm_func_start DWCi_GetMathRand32
DWCi_GetMathRand32: ; 0x021D8ABC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r1, _021D8BC8 ; =0x0221A4EC
	mov r4, r0
	ldr r0, [r1, #4]
	ldr r2, [r1, #0]
	cmp r0, #0
	cmpeq r2, #0
	mov r0, #0
	bne _021D8B80
	ldr r2, [r1, #0xc]
	ldr r3, [r1, #8]
	cmp r2, r0
	cmpeq r3, r0
	bne _021D8B80
	ldr r2, [r1, #0x14]
	ldr r1, [r1, #0x10]
	cmp r2, r0
	cmpeq r1, r0
	bne _021D8B80
	add r0, sp, #0
	bl OS_GetMacAddress
	bl OS_GetTick
	mov r2, r1, lsl #0x18
	ldr ip, [sp]
	ldr r3, [sp, #4]
	mov lr, ip, lsr #0x18
	orr lr, lr, r3, lsl #8
	mvn r1, #0xff000000
	and r1, lr, r1
	orr lr, r1, r0, lsl #24
	mov ip, #0
	orr r2, r2, r0, lsr #8
	and r1, ip, r3, lsr #24
	orr r2, r1, r2
	ldr r0, _021D8BCC ; =0x0221A4EC
	add r1, sp, #0
	str lr, [sp]
	str r2, [sp, #4]
	ldmia r1, {r2, r3}
	stmia r0, {r2, r3}
	ldr r1, _021D8BD0 ; =0x6C078965
	ldr r0, _021D8BC8 ; =0x0221A4EC
	ldr r2, _021D8BD4 ; =0x5D588B65
	str r1, [r0, #8]
	ldr r1, _021D8BD8 ; =0x00269EC3
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	str ip, [r0, #0x14]
_021D8B80:
	ldr r1, _021D8BC8 ; =0x0221A4EC
	ldr r2, [r1, #0]
	ldmib r1, {r0, r3}
	umull lr, ip, r3, r2
	mla ip, r3, r0, ip
	ldr r0, [r1, #0xc]
	ldr r3, [r1, #0x10]
	mla ip, r0, r2, ip
	ldr r0, [r1, #0x14]
	adds r2, r3, lr
	adc r0, r0, ip
	str r2, [r1, #0]
	str r0, [r1, #4]
	cmp r4, #0
	umullne r2, r1, r0, r4
	movne r0, r1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021D8BC8: .word Unk_ov4_0221A4EC
_021D8BCC: .word Unk_ov4_0221A4EC
_021D8BD0: .word 0x6C078965
_021D8BD4: .word 0x5D588B65
_021D8BD8: .word 0x00269EC3
	arm_func_end DWCi_GetMathRand32

	arm_func_start DWCi_WStrLen
DWCi_WStrLen: ; 0x021D8BDC
	ldrh r1, [r0]
	mov r2, #0
	cmp r1, #0
	beq _021D8C00
_021D8BEC:
	add r2, r2, #1
	mov r1, r2, lsl #1
	ldrh r1, [r0, r1]
	cmp r1, #0
	bne _021D8BEC
_021D8C00:
	mov r0, r2
	bx lr
	arm_func_end DWCi_WStrLen

	.data


	.global Unk_ov4_02217460
Unk_ov4_02217460: ; 0x02217460
	.asciz "%c%s%c%s"



	.bss


	.global Unk_ov4_0221A4EC
Unk_ov4_0221A4EC: ; 0x0221A4EC
	.space 0x18

