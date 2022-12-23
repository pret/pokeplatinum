	.include "macros/function.inc"
	.include "overlay004/ov4_02205988.inc"

	

	.text


	arm_func_start ov4_02205988
ov4_02205988: ; 0x02205988
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, _02205AB4 ; =0x02000C14
	bl OSi_ReferSymbol
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, _02205AB8 ; =0x0221DBCC
	ldr r0, [r0, #8]
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #8]
	cmp r0, #1
	cmpne r0, #2
	cmpne r0, #3
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0x18]
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, [r4, #0x10]
	cmp r2, #0
	ldrne r0, [r4, #0x14]
	cmpne r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, r2, lsr #0x1f
	rsb r0, r1, r2, lsl #27
	adds r0, r1, r0, ror #27
	movne r0, #0
	ldmneia sp!, {r4, pc}
	ldr r0, _02205ABC ; =0x0221DBD8
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r2, [r4, #0x18]
	ldr r1, _02205AB8 ; =0x0221DBCC
	mov r0, #0
	str r2, [r1, #0x10]
	ldr r2, [r4, #0x1c]
	str r2, [r1, #0x14]
	ldr r2, [r4, #8]
	str r2, [r1, #0x1c]
	str r0, [r1, #0x18]
	ldrb r2, [r4, #0xc]
	cmp r2, #0x20
	ldmhsia sp!, {r4, pc}
	strb r2, [r1, #0xc]
	ldr r0, [r4, #0x10]
	ldr r1, [r4, #0x14]
	bl ov4_02205128
	cmp r0, #0
	bne _02205A70
	bl ov4_022051F0
	mov r0, #0
	ldmia sp!, {r4, pc}
_02205A70:
	mov r0, r4
	bl ov4_022044AC
	cmp r0, #0
	bne _02205A8C
	bl ov4_022051F0
	mov r0, #0
	ldmia sp!, {r4, pc}
_02205A8C:
	bl ov4_02202698
	cmp r0, #0
	ldrne r1, _02205AB8 ; =0x0221DBCC
	movne r0, #1
	strne r0, [r1, #8]
	ldmneia sp!, {r4, pc}
	bl ov4_022045C0
	bl ov4_022051F0
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02205AB4: .word 0x02000C14
_02205AB8: .word 0x0221DBCC
_02205ABC: .word 0x0221DBD8
	arm_func_end ov4_02205988

	arm_func_start ov4_02205AC0
ov4_02205AC0: ; 0x02205AC0
	stmfd sp!, {r3, lr}
	bl ov4_02202794
	bl ov4_022045C0
	bl ov4_022051F0
	ldr r0, _02205AE4 ; =0x0221DBCC
	mov r1, #0
	str r1, [r0, #0x1c]
	str r1, [r0, #8]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02205AE4: .word 0x0221DBCC
	arm_func_end ov4_02205AC0

	arm_func_start ov4_02205AE8
ov4_02205AE8: ; 0x02205AE8
	stmfd sp!, {r3, lr}
	ldr r0, _02205B28 ; =0x0221DBCC
	ldr r1, [r0, #8]
	cmp r1, #0
	ldmeqia sp!, {r3, pc}
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	tst r1, #0xf
	bne _02205B14
	bl ov4_022045D8
_02205B14:
	bl ov4_022033F8
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_02203328
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02205B28: .word 0x0221DBCC
	arm_func_end ov4_02205AE8

	arm_func_start ov4_02205B2C
ov4_02205B2C: ; 0x02205B2C
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	add r3, sp, #0
	mov r4, r0
	bl ov4_02205BA0
	cmp r0, #0
	beq _02205B90
	cmp r0, #1
	beq _02205B5C
	cmp r0, #2
	beq _02205B84
	b _02205B90
_02205B5C:
	ldr r0, _02205B9C ; =0x0221DBCC
	ldr r1, [sp]
	ldr r2, [sp, #4]
	ldr r3, [r0, #0x14]
	ldr ip, [r0, #0x10]
	mov r0, r4
	blx ip
	add sp, sp, #8
	mov r0, #1
	ldmia sp!, {r4, pc}
_02205B84:
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_02205B90:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02205B9C: .word 0x0221DBCC
	arm_func_end ov4_02205B2C

	arm_func_start ov4_02205BA0
ov4_02205BA0: ; 0x02205BA0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r6, r1
	mov r7, r0
	mov r5, r2
	mov r4, r3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [r6, #0]
	ldr r0, _02205C74 ; =0x5F564354
	cmp r1, r0
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _02205C78 ; =0x0221DBCC
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	ldrne r0, [r0, #8]
	cmpne r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [r4, #0]
	str r0, [r4, #4]
	bl OS_GetTick
	ldrb r2, [r6, #4]
	and r3, r2, #0xf0
	cmp r3, #0x40
	bne _02205C3C
	ldr r2, _02205C78 ; =0x0221DBCC
	mov r3, r0
	ldr r4, [r2, #4]
	mov r0, r7
	add r4, r4, #1
	str r4, [r2, #4]
	str r1, [sp]
	mov r1, r6
	mov r2, r5
	bl ov4_0220313C
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02205C3C:
	cmp r2, #0
	cmpne r2, #0xff
	bne _02205C6C
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov4_02204684
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02205C6C:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02205C74: .word 0x5F564354
_02205C78: .word 0x0221DBCC
	arm_func_end ov4_02205BA0

	.bss


	.global Unk_ov4_0221DBCC
Unk_ov4_0221DBCC: ; 0x0221DBCC
	.space 0x4

	.global Unk_ov4_0221DBD0
Unk_ov4_0221DBD0: ; 0x0221DBD0
	.space 0x4

	.global Unk_ov4_0221DBD4
Unk_ov4_0221DBD4: ; 0x0221DBD4
	.space 0x4

	.global Unk_ov4_0221DBD8
Unk_ov4_0221DBD8: ; 0x0221DBD8
	.space 0x18

