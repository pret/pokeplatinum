	.include "macros/function.inc"
	.include "overlay004/ov4_021E558C.inc"

	

	.text


	arm_func_start ov4_021E558C
ov4_021E558C: ; 0x021E558C
	stmfd sp!, {r3, lr}
	bl ov60_022215B4
	ldr r1, _021E55AC ; =0x0221AE24
	mov r0, #1
	ldr r2, [r1, #4]
	add r2, r2, #1
	str r2, [r1, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E55AC: .word 0x0221AE24
	arm_func_end ov4_021E558C

	arm_func_start ov4_021E55B0
ov4_021E55B0: ; 0x021E55B0
	stmfd sp!, {r3, lr}
	ldr r0, _021E55EC ; =0x0221AE24
	ldr r0, [r0, #4]
	cmp r0, #0
	movle r0, #1
	ldmleia sp!, {r3, pc}
	bl ov60_02221608
	ldr r0, _021E55EC ; =0x0221AE24
	ldr r1, [r0, #4]
	subs r1, r1, #1
	str r1, [r0, #4]
	bne _021E55E4
	bl ov4_021E5BC4
_021E55E4:
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E55EC: .word 0x0221AE24
	arm_func_end ov4_021E55B0

	arm_func_start ov4_021E55F0
ov4_021E55F0: ; 0x021E55F0
	stmfd sp!, {r3, lr}
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r3, pc}
	bl ov60_022218EC
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E55F0

	arm_func_start ov4_021E5610
ov4_021E5610: ; 0x021E5610
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r4, [sp, #0x18]
	mov r7, r1
	ldr r5, [r4, #4]
	ldr r6, [r4, #0xc]
	cmp r5, #0
	beq _021E5668
	cmp r7, #0
	bne _021E564C
	mov r1, r3
	mov r0, r2
	ldr r3, [r4, #0]
	mov r2, r7
	blx r5
	b _021E5668
_021E564C:
	mov r0, r7
	bl ov4_021E5988
	mov r0, #0
	ldr r3, [r4, #0]
	mov r1, r0
	mov r2, r7
	blx r5
_021E5668:
	cmp r7, #0
	bne _021E5678
	cmp r6, #1
	bne _021E5694
_021E5678:
	ldr r1, [r4, #0x10]
	cmp r1, #0
	moveq r6, #1
	beq _021E5694
	mov r0, #4
	mov r2, #0
	bl ov4_021D77C4
_021E5694:
	mov r0, r4
	bl ov4_021E5B40
	cmp r6, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021E5610

	arm_func_start ov4_021E56AC
ov4_021E56AC: ; 0x021E56AC
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x18]
	ldr lr, [r4, #8]
	cmp lr, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r4, pc}
	ldr ip, [sp, #0x14]
	mov r0, r1
	str ip, [sp]
	mov r1, r2
	mov r2, r3
	ldr ip, [r4]
	ldr r3, [sp, #0x10]
	str ip, [sp, #4]
	blx lr
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021E56AC

	arm_func_start ov4_021E56F4
ov4_021E56F4: ; 0x021E56F4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r7, r1
	mov r6, r2
	bl ov4_021D7708
	cmp r0, #0
	addne sp, sp, #0x10
	mvnne r0, #7
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, #0
	mov r1, #1
	add r0, sp, #0
	str r6, [sp]
	str r7, [sp, #4]
	str r2, [sp, #8]
	str r1, [sp, #0xc]
	bl ov4_021E5AE4
	movs r5, r0
	bne _021E576C
	mvn r0, #4
	bl ov4_021E5988
	mov r0, #0
	mov r1, r0
	mov r3, r6
	sub r2, r0, #5
	blx r7
	add sp, sp, #0x10
	mvn r0, #4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E576C:
	ldr r2, _021E57B8 ; =ov4_021E5610
	mov r0, r4
	mov r3, r5
	mov r1, #0
	bl ov60_02221664
	movs r4, r0
	bpl _021E57A8
	bl ov4_021E5988
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r6
	blx r7
	mov r0, r5
	bl ov4_021E5B40
_021E57A8:
	mov r0, r4
	str r4, [r5, #0x14]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E57B8: .word ov4_021E5610
	arm_func_end ov4_021E56F4

	arm_func_start ov4_021E57BC
ov4_021E57BC: ; 0x021E57BC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x28
	ldr sb, [sp, #0x4c]
	ldr r8, [sp, #0x50]
	mov r5, r0
	mov r4, r1
	mov r7, r2
	mov sl, r3
	mov r6, #0
	bl ov4_021D7708
	cmp r0, #0
	addne sp, sp, #0x28
	mvnne r0, #7
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r1, [sp, #0x48]
	add r0, sp, #0x18
	str r8, [sp, #0x18]
	str sb, [sp, #0x1c]
	str r1, [sp, #0x20]
	str r7, [sp, #0x24]
	bl ov4_021E5AE4
	movs r7, r0
	bne _021E5840
	mvn r0, #4
	bl ov4_021E5988
	mov r0, r6
	mov r1, r0
	mov r3, r8
	sub r2, r0, #5
	blx sb
	add sp, sp, #0x28
	mvn r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E5840:
	cmp r4, #0
	ble _021E5890
	mov r1, r4
	mov r0, #4
	bl ov4_021D7780
	movs r6, r0
	bne _021E588C
	mvn r0, #4
	bl ov4_021E5988
	mov r0, #0
	mov r1, r0
	mov r3, r8
	sub r2, r0, #5
	blx sb
	mov r0, r7
	bl ov4_021E5B40
	add sp, sp, #0x28
	mvn r0, #4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021E588C:
	str r6, [r7, #0x10]
_021E5890:
	cmp sl, #0
	mov r1, #0
	beq _021E58D0
	ldr r0, [sl]
	ldr r2, _021E5958 ; =ov4_021E56AC
	stmia sp, {r0, r1}
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, _021E595C ; =ov4_021E5610
	mov r2, r6
	str r0, [sp, #0x10]
	mov r0, r5
	mov r3, r4
	str r7, [sp, #0x14]
	bl ov60_022216A0
	b _021E5900
_021E58D0:
	str r1, [sp]
	str r1, [sp, #4]
	ldr r2, _021E5958 ; =ov4_021E56AC
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	ldr r0, _021E595C ; =ov4_021E5610
	mov r2, r6
	str r0, [sp, #0x10]
	mov r0, r5
	mov r3, r4
	str r7, [sp, #0x14]
	bl ov60_022216A0
_021E5900:
	mov r4, r0
	cmp r4, #0
	bge _021E5948
	mov r0, r4
	bl ov4_021E5988
	mov r0, #0
	mov r1, r0
	mov r2, r4
	mov r3, r8
	blx sb
	ldr r1, [r7, #0x10]
	cmp r1, #0
	beq _021E5940
	mov r0, #4
	mov r2, #0
	bl ov4_021D77C4
_021E5940:
	mov r0, r7
	bl ov4_021E5B40
_021E5948:
	mov r0, r4
	str r4, [r7, #0x14]
	add sp, sp, #0x28
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021E5958: .word ov4_021E56AC
_021E595C: .word ov4_021E5610
	arm_func_end ov4_021E57BC

	arm_func_start ov4_021E5960
ov4_021E5960: ; 0x021E5960
	stmdb sp!, {lr}
	sub sp, sp, #0xc
	ldr lr, [sp, #0x10]
	ldr ip, [sp, #0x14]
	stmia sp, {r3, lr}
	mov r3, #0
	str ip, [sp, #8]
	bl ov4_021E57BC
	add sp, sp, #0xc
	ldmia sp!, {pc}
	arm_func_end ov4_021E5960

	arm_func_start ov4_021E5988
ov4_021E5988: ; 0x021E5988
	stmfd sp!, {r4, lr}
	movs r4, r0
	mov r0, #7
	ldr r1, _021E5AC8 ; =0xFFFE8130
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	add r2, r4, #7
	cmp r2, #0x1a
	addls pc, pc, r2, lsl #2
	b _021E5ABC
_021E59B0: ; jump table
	b _021E5A1C ; case 0
	b _021E5A24 ; case 1
	b _021E5A30 ; case 2
	b _021E5A38 ; case 3
	b _021E5A38 ; case 4
	b _021E5A38 ; case 5
	b _021E5A40 ; case 6
	b _021E5ABC ; case 7
	b _021E5A4C ; case 8
	b _021E5A58 ; case 9
	b _021E5A60 ; case 10
	b _021E5A6C ; case 11
	b _021E5A74 ; case 12
	b _021E5A7C ; case 13
	b _021E5A84 ; case 14
	b _021E5A8C ; case 15
	b _021E5A8C ; case 16
	b _021E5A8C ; case 17
	b _021E5A7C ; case 18
	b _021E5A7C ; case 19
	b _021E5A98 ; case 20
	b _021E5A98 ; case 21
	b _021E5AA0 ; case 22
	b _021E5AAC ; case 23
	b _021E5AB4 ; case 24
	b _021E5ABC ; case 25
	b _021E5A4C ; case 26
_021E5A1C:
	sub r1, r1, #0x320
	b _021E5ABC
_021E5A24:
	ldr r2, _021E5ACC ; =0xFFFFFCD6
	add r1, r1, r2
	b _021E5ABC
_021E5A30:
	sub r1, r1, #0x348
	b _021E5ABC
_021E5A38:
	sub r1, r1, #0x334
	b _021E5ABC
_021E5A40:
	ldr r2, _021E5AD0 ; =0xFFFFFCC2
	add r1, r1, r2
	b _021E5ABC
_021E5A4C:
	sub r1, r1, #1
	mov r0, #9
	b _021E5ABC
_021E5A58:
	sub r1, r1, #0x348
	b _021E5ABC
_021E5A60:
	ldr r2, _021E5AD4 ; =0xFFFFFCAE
	add r1, r1, r2
	b _021E5ABC
_021E5A6C:
	sub r1, r1, #0x1e
	b _021E5ABC
_021E5A74:
	sub r1, r1, #0x32
	b _021E5ABC
_021E5A7C:
	sub r1, r1, #0x14
	b _021E5ABC
_021E5A84:
	sub r1, r1, #0x35c
	b _021E5ABC
_021E5A8C:
	ldr r2, _021E5AD8 ; =0xFFFFFC9A
	add r1, r1, r2
	b _021E5ABC
_021E5A98:
	sub r1, r1, #0x370
	b _021E5ABC
_021E5AA0:
	ldr r2, _021E5ADC ; =0xFFFFFC86
	add r1, r1, r2
	b _021E5ABC
_021E5AAC:
	sub r1, r1, #0x384
	b _021E5ABC
_021E5AB4:
	ldr r2, _021E5AE0 ; =0xFFFFFC72
	add r1, r1, r2
_021E5ABC:
	bl ov4_021D7724
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E5AC8: .word 0xFFFE8130
_021E5ACC: .word 0xFFFFFCD6
_021E5AD0: .word 0xFFFFFCC2
_021E5AD4: .word 0xFFFFFCAE
_021E5AD8: .word 0xFFFFFC9A
_021E5ADC: .word 0xFFFFFC86
_021E5AE0: .word 0xFFFFFC72
	arm_func_end ov4_021E5988

	arm_func_start ov4_021E5AE4
ov4_021E5AE4: ; 0x021E5AE4
	stmfd sp!, {r4, lr}
	mov r4, r0
	mov r0, #4
	mov r1, #0x1c
	bl ov4_021D7780
	movs ip, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldmia r4, {r0, r1, r2, r3}
	stmia ip, {r0, r1, r2, r3}
	mov r0, #0
	str r0, [ip, #0x18]
	ldr r1, _021E5B3C ; =0x0221AE24
	str r0, [ip, #0x10]
	ldr r0, [r1, #0]
	cmp r0, #0
	moveq r0, ip
	streq ip, [r1]
	strne r0, [ip, #0x18]
	movne r0, ip
	strne ip, [r1]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E5B3C: .word 0x0221AE24
	arm_func_end ov4_021E5AE4

	arm_func_start ov4_021E5B40
ov4_021E5B40: ; 0x021E5B40
	stmfd sp!, {r4, lr}
	ldr r1, _021E5BC0 ; =0x0221AE24
	ldr r1, [r1, #0]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	cmp r1, r0
	bne _021E5B78
	mov r0, #4
	mov r2, #0
	ldr r4, [r1, #0x18]
	bl ov4_021D77C4
	ldr r0, _021E5BC0 ; =0x0221AE24
	str r4, [r0, #0]
	ldmia sp!, {r4, pc}
_021E5B78:
	ldr r2, [r1, #0x18]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
_021E5B84:
	cmp r2, r0
	movne r1, r2
	bne _021E5BB0
	ldr ip, [r1, #0x18]
	mov r0, #4
	ldr r3, [ip, #0x18]
	mov r2, #0
	str r3, [r1, #0x18]
	mov r1, ip
	bl ov4_021D77C4
	ldmia sp!, {r4, pc}
_021E5BB0:
	ldr r2, [r2, #0x18]
	cmp r2, #0
	bne _021E5B84
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E5BC0: .word 0x0221AE24
	arm_func_end ov4_021E5B40

	arm_func_start ov4_021E5BC4
ov4_021E5BC4: ; 0x021E5BC4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldr r0, _021E5C30 ; =0x0221AE24
	ldr r8, [r0]
	cmp r8, #0
	beq _021E5C20
	mov r7, #4
	mov r6, #0
	mov r5, r7
	mov r4, r6
_021E5BE8:
	mov sb, r8
	ldr r1, [sb, #0x10]
	ldr r8, [r8, #0x18]
	cmp r1, #0
	beq _021E5C08
	mov r0, r7
	mov r2, r6
	bl ov4_021D77C4
_021E5C08:
	mov r0, r5
	mov r1, sb
	mov r2, r4
	bl ov4_021D77C4
	cmp r8, #0
	bne _021E5BE8
_021E5C20:
	ldr r0, _021E5C30 ; =0x0221AE24
	mov r1, #0
	str r1, [r0, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021E5C30: .word 0x0221AE24
	arm_func_end ov4_021E5BC4

	.bss


	.global Unk_ov4_0221AE24
Unk_ov4_0221AE24: ; 0x0221AE24
	.space 0x4

	.global Unk_ov4_0221AE28
Unk_ov4_0221AE28: ; 0x0221AE28
	.space 0x4

