	.include "macros/function.inc"
	.include "overlay004/ov4_021F1708.inc"

	

	.text


	arm_func_start ov4_021F1708
ov4_021F1708: ; 0x021F1708
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	movs r7, r0
	mov r6, r1
	ldr r4, [r7, #0]
	bne _021F1734
	ldr r0, _021F1A34 ; =0x02218908
	ldr r1, _021F1A38 ; =0x0221891C
	ldr r2, _021F1A3C ; =0x022188E0
	mov r3, #0x22
	bl __msl_assertion_failed
_021F1734:
	ldr r0, [r7, #0]
	cmp r0, #0
	bne _021F1754
	ldr r0, _021F1A40 ; =0x0221892C
	ldr r1, _021F1A38 ; =0x0221891C
	ldr r2, _021F1A3C ; =0x022188E0
	mov r3, #0x23
	bl __msl_assertion_failed
_021F1754:
	cmp r6, #0
	bne _021F1770
	ldr r0, _021F1A44 ; =0x02218940
	ldr r1, _021F1A38 ; =0x0221891C
	ldr r2, _021F1A3C ; =0x022188E0
	mov r3, #0x24
	bl __msl_assertion_failed
_021F1770:
	ldr r1, [r6, #0xc]
	ldr r0, [r6, #0x10]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r1, #0
	beq _021F1A28
	ldr r0, [r6, #0]
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021F1A14
_021F1798: ; jump table
	b _021F17AC ; case 0
	b _021F1838 ; case 1
	b _021F18B4 ; case 2
	b _021F1920 ; case 3
	b _021F19A8 ; case 4
_021F17AC:
	mov r0, #0x20
	bl ov4_021D7880
	movs r5, r0
	bne _021F17D4
	ldr r1, _021F1A48 ; =0x02218954
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F17D4:
	mov r1, #0
	mov r2, #0x20
	bl memset
	ldr r1, [r6, #0x1c]
	ldr r0, _021F1A4C ; =0x00000201
	str r1, [r5, #0]
	ldr r1, [r4, #0x418]
	cmp r1, r0
	bne _021F1808
	ldr r1, [r4, #0x1a0]
	mov r0, #0
	str r1, [r5, #4]
	str r0, [r4, #0x1a0]
_021F1808:
	add r1, sp, #8
	mov r0, r7
	mov r3, r5
	str r6, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F1A28
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1838:
	mov r0, #8
	bl ov4_021D7880
	movs r3, r0
	bne _021F1860
	ldr r1, _021F1A48 ; =0x02218954
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1860:
	mov r2, #0
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	strb r2, [r3, #4]
	strb r2, [r3, #5]
	strb r2, [r3, #6]
	strb r2, [r3, #7]
	ldr r0, [r6, #0x1c]
	add r1, sp, #8
	str r0, [r3, #0]
	str r6, [sp]
	str r2, [sp, #4]
	mov r0, r7
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F1A28
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F18B4:
	mov r0, #0x204
	bl ov4_021D7880
	movs r4, r0
	bne _021F18DC
	ldr r1, _021F1A48 ; =0x02218954
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F18DC:
	mov r1, #0
	mov r2, #0x204
	bl memset
	ldr r0, [r6, #0x1c]
	add r1, sp, #8
	str r0, [r4, #0]
	mov r0, r7
	mov r3, r4
	str r6, [sp]
	mov r2, #0
	str r2, [sp, #4]
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F1A28
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1920:
	mov r0, #0x10
	bl ov4_021D7880
	movs r3, r0
	bne _021F1948
	ldr r1, _021F1A48 ; =0x02218954
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1948:
	mov r2, r3
	mov r1, #4
	mov r0, #0
_021F1954:
	strb r0, [r2]
	strb r0, [r2, #1]
	strb r0, [r2, #2]
	strb r0, [r2, #3]
	add r2, r2, #4
	subs r1, r1, #1
	bne _021F1954
	ldr r0, [r6, #0x1c]
	mov r2, #0
	str r0, [r3, #0]
	str r2, [r3, #0xc]
	str r6, [sp]
	add r1, sp, #8
	str r2, [sp, #4]
	mov r0, r7
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F1A28
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F19A8:
	mov r0, #4
	bl ov4_021D7880
	movs r3, r0
	bne _021F19D0
	ldr r1, _021F1A48 ; =0x02218954
	mov r0, r7
	bl ov4_021F5D68
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F19D0:
	mov r2, #0
	strb r2, [r3]
	strb r2, [r3, #1]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	ldr r0, [r6, #0x1c]
	add r1, sp, #8
	str r0, [r3, #0]
	str r6, [sp]
	str r2, [sp, #4]
	mov r0, r7
	ldmia r1, {r1, r2}
	bl ov4_021EDF5C
	cmp r0, #0
	beq _021F1A28
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021F1A14:
	ldr r0, _021F1A50 ; =0x02218964
	ldr r1, _021F1A38 ; =0x0221891C
	ldr r2, _021F1A3C ; =0x022188E0
	mov r3, #0x6b
	bl __msl_assertion_failed
_021F1A28:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021F1A34: .word 0x02218908
_021F1A38: .word 0x0221891C
_021F1A3C: .word 0x022188E0
_021F1A40: .word 0x0221892C
_021F1A44: .word 0x02218940
_021F1A48: .word 0x02218954
_021F1A4C: .word 0x00000201
_021F1A50: .word 0x02218964
	arm_func_end ov4_021F1708

	arm_func_start ov4_021F1A54
ov4_021F1A54: ; 0x021F1A54
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r0
	mov r0, #0x24
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldr r4, [r8]
	bl ov4_021D7880
	cmp r0, #0
	bne _021F1A90
	ldr r1, _021F1B08 ; =0x02218954
	mov r0, r8
	bl ov4_021F5D68
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021F1A90:
	str r7, [r0, #0]
	ldr r1, [sp, #0x18]
	str r6, [r0, #4]
	str r1, [r0, #8]
	mov r1, #0
	str r1, [r0, #0x14]
	cmp r7, #0
	moveq r1, #1
	streq r1, [r0, #0x18]
	beq _021F1AD8
	ldr r2, [r4, #0x20c]
	add r1, r2, #1
	str r1, [r4, #0x20c]
	str r2, [r0, #0x18]
	ldr r1, [r4, #0x20c]
	cmp r1, #2
	movlt r1, #2
	strlt r1, [r4, #0x20c]
_021F1AD8:
	mov r3, #0
	ldr r2, [sp, #0x1c]
	str r3, [r0, #0x1c]
	ldr r1, [sp, #0x20]
	str r2, [r0, #0xc]
	str r1, [r0, #0x10]
	ldr r1, [r4, #0x424]
	str r1, [r0, #0x20]
	str r0, [r4, #0x424]
	str r0, [r5, #0]
	mov r0, r3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021F1B08: .word 0x02218954
	arm_func_end ov4_021F1A54

	arm_func_start ov4_021F1B0C
ov4_021F1B0C: ; 0x021F1B0C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	ldr r1, [r4, #0]
	ldr r2, [r0, #0]
	cmp r1, #3
	bne _021F1B80
	ldr r0, [r2, #0x210]
	ldr r5, [r4, #4]
	subs r0, r0, #1
	str r0, [r2, #0x210]
	bpl _021F1B4C
	ldr r0, _021F1B9C ; =0x02218968
	ldr r1, _021F1BA0 ; =0x0221891C
	ldr r2, _021F1BA4 ; =0x022188CC
	mov r3, #0xb6
	bl __msl_assertion_failed
_021F1B4C:
	ldr r0, [r5, #4]
	mov r1, #2
	bl ov4_021EAD04
	ldr r0, [r5, #4]
	bl ov4_021EACF0
	ldr r0, [r5, #0x18]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r5, #0x18]
	ldr r0, [r5, #8]
	bl ov4_021D78B0
	mov r0, #0
	str r0, [r5, #8]
_021F1B80:
	ldr r0, [r4, #4]
	bl ov4_021D78B0
	mov r1, #0
	mov r0, r4
	str r1, [r4, #4]
	bl ov4_021D78B0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F1B9C: .word 0x02218968
_021F1BA0: .word 0x0221891C
_021F1BA4: .word 0x022188CC
	arm_func_end ov4_021F1B0C

	arm_func_start ov4_021F1BA8
ov4_021F1BA8: ; 0x021F1BA8
	stmfd sp!, {r3, lr}
	ldr r3, [r0, #0]
	mov ip, #0
	ldr r2, [r3, #0x424]
	cmp r2, #0
	ldmeqia sp!, {r3, pc}
_021F1BC0:
	cmp r2, r1
	bne _021F1BE4
	cmp ip, #0
	ldreq r2, [r2, #0x20]
	streq r2, [r3, #0x424]
	ldrne r2, [r1, #0x20]
	strne r2, [ip, #0x20]
	bl ov4_021F1B0C
	ldmia sp!, {r3, pc}
_021F1BE4:
	mov ip, r2
	ldr r2, [r2, #0x20]
	cmp r2, #0
	bne _021F1BC0
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021F1BA8

	arm_func_start ov4_021F1BF8
ov4_021F1BF8: ; 0x021F1BF8
	ldr r0, [r0, #0]
	ldr r3, [r0, #0x424]
	cmp r3, #0
	beq _021F1C30
_021F1C08:
	ldr r0, [r3, #0x18]
	cmp r0, r2
	bne _021F1C24
	cmp r1, #0
	strne r3, [r1]
	mov r0, #1
	bx lr
_021F1C24:
	ldr r3, [r3, #0x20]
	cmp r3, #0
	bne _021F1C08
_021F1C30:
	cmp r1, #0
	movne r0, #0
	strne r0, [r1]
	mov r0, #0
	bx lr
	arm_func_end ov4_021F1BF8

	arm_func_start ov4_021F1C44
ov4_021F1C44: ; 0x021F1C44
	ldr r0, [r0, #0]
	ldr r1, [r0, #0x424]
	cmp r1, #0
	beq _021F1C78
_021F1C54:
	ldr r0, [r1, #8]
	cmp r0, #0
	ldrne r0, [r1]
	cmpne r0, #3
	movne r0, #1
	bxne lr
	ldr r1, [r1, #0x20]
	cmp r1, #0
	bne _021F1C54
_021F1C78:
	mov r0, #0
	bx lr
	arm_func_end ov4_021F1C44

	arm_func_start ov4_021F1C80
ov4_021F1C80: ; 0x021F1C80
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r1
	ldr r3, [r5, #0]
	mov r4, #0
	cmp r3, #4
	addls pc, pc, r3, lsl #2
	b _021F1CE0
_021F1C9C: ; jump table
	b _021F1CB0 ; case 0
	b _021F1CBC ; case 1
	b _021F1CC8 ; case 2
	b _021F1CE0 ; case 3
	b _021F1CD4 ; case 4
_021F1CB0:
	bl ov4_021EEF30
	mov r4, r0
	b _021F1D00
_021F1CBC:
	bl ov4_021F3064
	mov r4, r0
	b _021F1D00
_021F1CC8:
	bl ov4_021EFD24
	mov r4, r0
	b _021F1D00
_021F1CD4:
	bl ov4_021F571C
	mov r4, r0
	b _021F1D00
_021F1CE0:
	ldr r1, _021F1D10 ; =0x02218988
	mov r2, r3
	bl ov4_021F5894
	ldr r0, _021F1D14 ; =0x02218964
	ldr r1, _021F1D18 ; =0x0221891C
	ldr r2, _021F1D1C ; =0x022188F4
	ldr r3, _021F1D20 ; =0x00000146
	bl __msl_assertion_failed
_021F1D00:
	cmp r4, #0
	strne r4, [r5, #0x1c]
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021F1D10: .word 0x02218988
_021F1D14: .word 0x02218964
_021F1D18: .word 0x0221891C
_021F1D1C: .word 0x022188F4
_021F1D20: .word 0x00000146
	arm_func_end ov4_021F1C80

	.data


	.global Unk_ov4_022188CC
Unk_ov4_022188CC: ; 0x022188CC
	.incbin "incbin/overlay4_data.bin", 0x2A4C, 0x2A60 - 0x2A4C

	.global Unk_ov4_022188E0
Unk_ov4_022188E0: ; 0x022188E0
	.incbin "incbin/overlay4_data.bin", 0x2A60, 0x2A74 - 0x2A60

	.global Unk_ov4_022188F4
Unk_ov4_022188F4: ; 0x022188F4
	.incbin "incbin/overlay4_data.bin", 0x2A74, 0x2A88 - 0x2A74

	.global Unk_ov4_02218908
Unk_ov4_02218908: ; 0x02218908
	.incbin "incbin/overlay4_data.bin", 0x2A88, 0x2A9C - 0x2A88

	.global Unk_ov4_0221891C
Unk_ov4_0221891C: ; 0x0221891C
	.incbin "incbin/overlay4_data.bin", 0x2A9C, 0x2AAC - 0x2A9C

	.global Unk_ov4_0221892C
Unk_ov4_0221892C: ; 0x0221892C
	.incbin "incbin/overlay4_data.bin", 0x2AAC, 0x2AC0 - 0x2AAC

	.global Unk_ov4_02218940
Unk_ov4_02218940: ; 0x02218940
	.incbin "incbin/overlay4_data.bin", 0x2AC0, 0x2AD4 - 0x2AC0

	.global Unk_ov4_02218954
Unk_ov4_02218954: ; 0x02218954
	.incbin "incbin/overlay4_data.bin", 0x2AD4, 0x2AE4 - 0x2AD4

	.global Unk_ov4_02218964
Unk_ov4_02218964: ; 0x02218964
	.incbin "incbin/overlay4_data.bin", 0x2AE4, 0x2AE8 - 0x2AE4

	.global Unk_ov4_02218968
Unk_ov4_02218968: ; 0x02218968
	.incbin "incbin/overlay4_data.bin", 0x2AE8, 0x2B08 - 0x2AE8

	.global Unk_ov4_02218988
Unk_ov4_02218988: ; 0x02218988
	.incbin "incbin/overlay4_data.bin", 0x2B08, 0x47

