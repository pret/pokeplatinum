	.include "macros/function.inc"
	.include "overlay004/ov4_021EDE68.inc"

	

	.text


	arm_func_start ov4_021EDE68
ov4_021EDE68: ; 0x021EDE68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r0
	ldr r5, [r4, #0]
	mov r7, r1
	mov r6, r2
	cmp r5, #0
	bne _021EDE9C
	ldr r0, _021EDF48 ; =0x0221805C
	ldr r1, _021EDF4C ; =0x02218070
	ldr r2, _021EDF50 ; =0x02218044
	mov r3, #0x23
	bl __msl_assertion_failed
_021EDE9C:
	cmp r7, #0
	bne _021EDEB8
	ldr r0, _021EDF54 ; =0x02218080
	ldr r1, _021EDF4C ; =0x02218070
	ldr r2, _021EDF50 ; =0x02218044
	mov r3, #0x24
	bl __msl_assertion_failed
_021EDEB8:
	cmp r6, #1
	cmpne r6, #0
	beq _021EDED8
	ldr r0, _021EDF58 ; =0x02218098
	ldr r1, _021EDF4C ; =0x02218070
	ldr r2, _021EDF50 ; =0x02218044
	mov r3, #0x25
	bl __msl_assertion_failed
_021EDED8:
	cmp r6, #1
	moveq r0, #1
	streq r0, [r5, #0x41c]
	ldr r1, [r5, #0x1a4]
	ldr r0, [r5, #0x1a8]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0x10
	bl ov4_021D7880
	movs r3, r0
	beq _021EDF20
	str r7, [r3, #0]
	str r6, [r3, #0xc]
	ldr r0, [r5, #0x418]
	stmib r3, {r0, r5}
_021EDF20:
	mov r2, #0
	str r2, [sp]
	mov r2, #1
	add r1, sp, #8
	str r2, [sp, #4]
	mov r0, r4
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EDF48: .word 0x0221805C
_021EDF4C: .word 0x02218070
_021EDF50: .word 0x02218044
_021EDF54: .word 0x02218080
_021EDF58: .word 0x02218098
	arm_func_end ov4_021EDE68

	arm_func_start ov4_021EDF5C
ov4_021EDF5C: ; 0x021EDF5C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r0, #0x18
	mov r5, r3
	ldr r4, [r6, #0]
	bl ov4_021D7880
	cmp r0, #0
	bne _021EDF9C
	ldr r1, _021EDFFC ; =0x022180C8
	mov r0, r6
	bl ov4_021F5D68
	mov r0, #1
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
_021EDF9C:
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #0x18]
	str r1, [r0, #0]
	ldr r1, [sp, #0x20]
	stmib r0, {r2, r5}
	cmp r1, #0
	ldrne r1, [r1, #0x18]
	ldr r2, [sp, #0x24]
	moveq r1, #0
	str r1, [r0, #0x10]
	mov r1, #0
	str r2, [r0, #0xc]
	str r1, [r0, #0x14]
	ldr r1, [r4, #0x438]
	cmp r1, #0
	streq r0, [r4, #0x438]
	ldr r1, [r4, #0x43c]
	cmp r1, #0
	strne r0, [r1, #0x14]
	str r0, [r4, #0x43c]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_021EDFFC: .word 0x022180C8
	arm_func_end ov4_021EDF5C

	arm_func_start ov4_021EE000
ov4_021EE000: ; 0x021EE000
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	ldr r1, [r7, #0]
	mov r4, r0
	cmp r1, #0
	bne _021EE02C
	ldr r0, _021EE1E8 ; =0x022180D8
	ldr r1, _021EE1EC ; =0x02218070
	ldr r2, _021EE1F0 ; =0x02218034
	mov r3, #0x6e
	bl __msl_assertion_failed
_021EE02C:
	ldr r0, [r7, #8]
	cmp r0, #0
	bne _021EE04C
	ldr r0, _021EE1F4 ; =0x022180F8
	ldr r1, _021EE1EC ; =0x02218070
	ldr r2, _021EE1F0 ; =0x02218034
	mov r3, #0x6f
	bl __msl_assertion_failed
_021EE04C:
	ldr r1, [r7, #8]
	ldr r2, [r7, #4]
	ldr r3, [r7, #0]
	mov r0, r4
	blx r3
	ldr r0, [r7, #0xc]
	cmp r0, #2
	bne _021EE088
	ldr r0, [r7, #8]
	ldr r0, [r0, #8]
	bl ov4_021D78B0
	ldr r0, [r7, #8]
	mov r1, #0
	str r1, [r0, #8]
	b _021EE1CC
_021EE088:
	cmp r0, #3
	bne _021EE108
	ldr r6, [r7, #8]
	mov r5, #0
	ldr r0, [r6, #0x38]
	cmp r0, #0
	ble _021EE0E4
	mov r4, r5
	mov r8, r5
_021EE0AC:
	ldr r0, [r6, #0x3c]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #0x3c]
	str r4, [r0, r5, lsl #2]
	ldr r0, [r6, #0x40]
	ldr r0, [r0, r5, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r6, #0x40]
	str r8, [r0, r5, lsl #2]
	ldr r0, [r6, #0x38]
	add r5, r5, #1
	cmp r5, r0
	blt _021EE0AC
_021EE0E4:
	ldr r0, [r6, #0x3c]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r6, #0x3c]
	ldr r0, [r6, #0x40]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r6, #0x40]
	b _021EE1CC
_021EE108:
	cmp r0, #4
	bne _021EE128
	ldr r4, [r7, #8]
	ldr r0, [r4, #0xc]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0xc]
	b _021EE1CC
_021EE128:
	cmp r0, #7
	bne _021EE150
	ldr r4, [r7, #8]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _021EE1CC
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #0x10]
	b _021EE1CC
_021EE150:
	cmp r0, #8
	bne _021EE178
	ldr r4, [r7, #8]
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _021EE1CC
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r4, #8]
	b _021EE1CC
_021EE178:
	cmp r0, #9
	bne _021EE1CC
	ldr r5, [r7, #8]
	mov r4, #0
	ldr r0, [r5, #4]
	cmp r0, #0
	ble _021EE1BC
	mov r6, r4
_021EE198:
	ldr r0, [r5, #8]
	ldr r0, [r0, r4, lsl #2]
	bl ov4_021D78B0
	ldr r0, [r5, #8]
	str r6, [r0, r4, lsl #2]
	ldr r0, [r5, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _021EE198
_021EE1BC:
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r5, #8]
_021EE1CC:
	ldr r0, [r7, #8]
	bl ov4_021D78B0
	mov r1, #0
	mov r0, r7
	str r1, [r7, #8]
	bl ov4_021D78B0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021EE1E8: .word 0x022180D8
_021EE1EC: .word 0x02218070
_021EE1F0: .word 0x02218034
_021EE1F4: .word 0x022180F8
	arm_func_end ov4_021EE000

	arm_func_start ov4_021EE1F8
ov4_021EE1F8: ; 0x021EE1F8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov sl, r0
	movs sb, r1
	ldr r4, [sl]
	beq _021EE294
	ldr r5, [r4, #0x438]
	ldr r6, [r4, #0x43c]
	mov r7, #0
	str r7, [r4, #0x438]
	mov r1, r5
	str r7, [r4, #0x43c]
	cmp r5, #0
	beq _021EE274
_021EE22C:
	ldr r0, [r1, #0x10]
	ldr r8, [r1, #0x14]
	cmp r0, sb
	ldrne r0, [r1, #0xc]
	cmpne r0, #1
	bne _021EE264
	mov r0, sl
	cmp r7, #0
	strne r8, [r7, #0x14]
	moveq r5, r8
	cmp r6, r1
	moveq r6, r7
	bl ov4_021EE000
	b _021EE268
_021EE264:
	mov r7, r1
_021EE268:
	mov r1, r8
	cmp r8, #0
	bne _021EE22C
_021EE274:
	ldr r0, [r4, #0x438]
	cmp r0, #0
	ldrne r0, [r4, #0x43c]
	strne r5, [r0, #0x14]
	streq r5, [r4, #0x438]
	str r6, [r4, #0x43c]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021EE294:
	ldr r1, [r4, #0x438]
	cmp r1, #0
	beq _021EE2D8
	mov r5, #0
_021EE2A4:
	str r5, [r4, #0x438]
	str r5, [r4, #0x43c]
	cmp r1, #0
	beq _021EE2CC
_021EE2B4:
	ldr r6, [r1, #0x14]
	mov r0, sl
	bl ov4_021EE000
	mov r1, r6
	cmp r6, #0
	bne _021EE2B4
_021EE2CC:
	ldr r1, [r4, #0x438]
	cmp r1, #0
	bne _021EE2A4
_021EE2D8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov4_021EE1F8

	.data


	.global Unk_ov4_02218034
Unk_ov4_02218034: ; 0x02218034
	.incbin "incbin/overlay4_data.bin", 0x21B4, 0x21C4 - 0x21B4

	.global Unk_ov4_02218044
Unk_ov4_02218044: ; 0x02218044
	.incbin "incbin/overlay4_data.bin", 0x21C4, 0x21DC - 0x21C4

	.global Unk_ov4_0221805C
Unk_ov4_0221805C: ; 0x0221805C
	.incbin "incbin/overlay4_data.bin", 0x21DC, 0x21F0 - 0x21DC

	.global Unk_ov4_02218070
Unk_ov4_02218070: ; 0x02218070
	.incbin "incbin/overlay4_data.bin", 0x21F0, 0x2200 - 0x21F0

	.global Unk_ov4_02218080
Unk_ov4_02218080: ; 0x02218080
	.incbin "incbin/overlay4_data.bin", 0x2200, 0x2218 - 0x2200

	.global Unk_ov4_02218098
Unk_ov4_02218098: ; 0x02218098
	.incbin "incbin/overlay4_data.bin", 0x2218, 0x2248 - 0x2218

	.global Unk_ov4_022180C8
Unk_ov4_022180C8: ; 0x022180C8
	.incbin "incbin/overlay4_data.bin", 0x2248, 0x2258 - 0x2248

	.global Unk_ov4_022180D8
Unk_ov4_022180D8: ; 0x022180D8
	.incbin "incbin/overlay4_data.bin", 0x2258, 0x2278 - 0x2258

	.global Unk_ov4_022180F8
Unk_ov4_022180F8: ; 0x022180F8
	.incbin "incbin/overlay4_data.bin", 0x2278, 0x12

