	.include "macros/function.inc"
	.include "include/gpibuffer.inc"

	

	.text


	arm_func_start ov4_021ED420
ov4_021ED420: ; 0x021ED420
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	movs r4, r1
	mov r8, r0
	mov r7, r2
	bne _021ED448
	ldr r0, _021ED4A8 ; =0x02217E78
	ldr r1, _021ED4AC ; =0x02217E90
	ldr r2, _021ED4B0 ; =0x02217E28
	mov r3, #0x25
	bl __msl_assertion_failed
_021ED448:
	ldr r5, [r4, #8]
	ldmia r4, {r0, r6}
	cmp r6, r5
	bne _021ED480
	add r6, r6, #0x800
	add r1, r6, #1
	bl DWCi_GsRealloc
	cmp r0, #0
	bne _021ED480
	ldr r1, _021ED4B4 ; =0x02217E9C
	mov r0, r8
	bl ov4_021F5D68
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021ED480:
	strb r7, [r0, r5]
	add r1, r5, #1
	mov r2, #0
	strb r2, [r0, r1]
	ldr r1, [r4, #8]
	add r1, r1, #1
	str r1, [r4, #8]
	stmia r4, {r0, r6}
	mov r0, r2
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021ED4A8: .word Unk_ov4_02217E78
_021ED4AC: .word Unk_ov4_02217E90
_021ED4B0: .word Unk_ov4_02217E28
_021ED4B4: .word Unk_ov4_02217E9C
	arm_func_end ov4_021ED420

	arm_func_start ov4_021ED4B8
ov4_021ED4B8: ; 0x021ED4B8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	movs r8, r2
	mov sl, r0
	mov sb, r1
	mov r7, r3
	bne _021ED4E4
	ldr r0, _021ED5AC ; =0x02217EAC
	ldr r1, _021ED5B0 ; =0x02217E90
	ldr r2, _021ED5B4 ; =0x02217E5C
	mov r3, #0x51
	bl __msl_assertion_failed
_021ED4E4:
	cmp r7, #0
	bge _021ED500
	ldr r0, _021ED5B8 ; =0x02217EBC
	ldr r1, _021ED5B0 ; =0x02217E90
	ldr r2, _021ED5B4 ; =0x02217E5C
	mov r3, #0x52
	bl __msl_assertion_failed
_021ED500:
	cmp sb, #0
	bne _021ED51C
	ldr r0, _021ED5BC ; =0x02217E78
	ldr r1, _021ED5B0 ; =0x02217E90
	ldr r2, _021ED5B4 ; =0x02217E5C
	mov r3, #0x53
	bl __msl_assertion_failed
_021ED51C:
	cmp r8, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldr r4, [sb, #8]
	ldr r5, [sb, #4]
	ldr r6, [sb]
	sub r0, r5, r4
	cmp r0, r7
	bge _021ED578
	cmp r7, #0x800
	movlt r0, #0x800
	movge r0, r7
	add r5, r5, r0
	mov r0, r6
	add r1, r5, #1
	bl DWCi_GsRealloc
	movs r6, r0
	bne _021ED578
	ldr r1, _021ED5C0 ; =0x02217E9C
	mov r0, sl
	bl ov4_021F5D68
	mov r0, #1
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_021ED578:
	mov r1, r8
	mov r2, r7
	add r0, r6, r4
	bl memcpy
	add r1, r4, r7
	mov r0, #0
	strb r0, [r6, r1]
	ldr r1, [sb, #8]
	add r1, r1, r7
	str r1, [sb, #8]
	str r5, [sb, #4]
	str r6, [sb]
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021ED5AC: .word Unk_ov4_02217EAC
_021ED5B0: .word Unk_ov4_02217E90
_021ED5B4: .word Unk_ov4_02217E5C
_021ED5B8: .word Unk_ov4_02217EBC
_021ED5BC: .word Unk_ov4_02217E78
_021ED5C0: .word Unk_ov4_02217E9C
	arm_func_end ov4_021ED4B8

	arm_func_start ov4_021ED5C4
ov4_021ED5C4: ; 0x021ED5C4
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r0, r4
	bl strlen
	mov r3, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_021ED4B8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021ED5C4

	arm_func_start ov4_021ED5F4
ov4_021ED5F4: ; 0x021ED5F4
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov r5, r0
	ldr r1, _021ED628 ; =0x02217ECC
	add r0, sp, #0
	bl sprintf
	add r2, sp, #0
	mov r0, r5
	mov r1, r4
	bl ov4_021ED5C4
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021ED628: .word Unk_ov4_02217ECC
	arm_func_end ov4_021ED5F4

	arm_func_start ov4_021ED62C
ov4_021ED62C: ; 0x021ED62C
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r8, r1
	mov r7, r0
	mov r1, r2
	mov r2, r3
	mov r0, r8
	mov r3, #0
	ldr r6, [sp, #0x18]
	ldr r5, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	bl ov4_021EAE48
	mvn r1, #0
	cmp r0, r1
	bne _021ED6D8
	mov r0, r8
	bl GOAGetLastError
	mvn r2, #5
	cmp r0, r2
	subne r1, r2, #0x14
	cmpne r0, r1
	subne r1, r2, #0x46
	cmpne r0, r1
	beq _021ED6C8
	ldrsb r0, [r4]
	cmp r0, #0x50
	ldreqsb r0, [r4, #1]
	cmpeq r0, #0x52
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	ldr r2, _021ED714 ; =0x02217ED0
	mov r0, r7
	mov r1, #5
	bl ov4_021F5D44
	mov r0, r7
	mov r1, #3
	mov r2, #0
	bl ov4_021EDE68
	mov r0, #3
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
_021ED6C8:
	mov r0, #0
	str r0, [r5, #0]
	str r0, [r6, #0]
	b _021ED70C
_021ED6D8:
	cmp r0, #0
	strne r0, [r5]
	movne r0, #0
	strne r0, [r6]
	bne _021ED70C
	ldr r1, _021ED718 ; =0x02217EF8
	mov r0, r7
	mov r2, r4
	bl ov4_021F5894
	mov r0, #0
	str r0, [r5, #0]
	mov r0, #1
	str r0, [r6, #0]
_021ED70C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_021ED714: .word Unk_ov4_02217ED0
_021ED718: .word Unk_ov4_02217EF8
	arm_func_end ov4_021ED62C

	arm_func_start ov4_021ED71C
ov4_021ED71C: ; 0x021ED71C
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x14
	mov r4, r1
	ldr r1, [r4, #0x28]
	mov r5, r0
	cmp r1, #0
	bne _021ED750
	ldr r0, _021ED7EC ; =0x02217F1C
	ldr r1, _021ED7F0 ; =0x02217E90
	ldr r2, _021ED7F4 ; =0x02217E14
	mov r3, #0xde
	bl __msl_assertion_failed
_021ED750:
	ldr r1, [r4, #0x30]
	ldr r0, [r4, #0x34]
	subs r0, r1, r0
	bne _021ED7CC
	ldr r0, [r4, #0x38]
	bl ov4_021E9BBC
	cmp r0, #0
	bne _021ED7CC
	add r0, sp, #0x10
	str r0, [sp]
	add r1, sp, #0xc
	ldr r0, _021ED7F8 ; =0x02217F40
	str r1, [sp, #4]
	str r0, [sp, #8]
	ldr r1, [r4, #8]
	add r2, sp, #0x28
	mov r0, r5
	mov r3, #1
	bl ov4_021ED62C
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
	ldr r0, [sp, #0xc]
	cmp r0, #0
	addne sp, sp, #0x14
	movne r0, #0
	ldmneia sp!, {r4, r5, lr}
	addne sp, sp, #0x10
	bxne lr
_021ED7CC:
	ldrsb r2, [sp, #0x28]
	mov r0, r5
	add r1, r4, #0x28
	bl ov4_021ED420
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, lr}
	add sp, sp, #0x10
	bx lr
	; .align 2, 0
_021ED7EC: .word Unk_ov4_02217F1C
_021ED7F0: .word Unk_ov4_02217E90
_021ED7F4: .word Unk_ov4_02217E14
_021ED7F8: .word Unk_ov4_02217F40
	arm_func_end ov4_021ED71C

	arm_func_start ov4_021ED7FC
ov4_021ED7FC: ; 0x021ED7FC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	mov sb, r1
	ldr r1, [sb, #0x28]
	mov sl, r0
	mov r8, r2
	mov r7, r3
	cmp r1, #0
	bne _021ED834
	ldr r0, _021ED8EC ; =0x02217F1C
	ldr r1, _021ED8F0 ; =0x02217E90
	ldr r2, _021ED8F4 ; =0x02217E40
	mov r3, #0xfb
	bl __msl_assertion_failed
_021ED834:
	cmp r7, #0
	mov r6, #0
	addeq sp, sp, #0x14
	moveq r0, r6
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sb, #0x30]
	ldr r0, [sb, #0x34]
	subs r0, r1, r0
	bne _021ED8B8
	ldr r0, [sb, #0x38]
	bl ov4_021E9BBC
	cmp r0, #0
	bne _021ED8B8
	ldr fp, _021ED8F8 ; =0x02217F40
	add r5, sp, #0x10
	add r4, sp, #0xc
_021ED874:
	str r5, [sp]
	stmib sp, {r4, fp}
	ldr r1, [sb, #8]
	mov r0, sl
	mov r3, r7
	add r2, r8, r6
	bl ov4_021ED62C
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0xc]
	cmp r0, #0
	subne r7, r7, r0
	addne r6, r6, r0
	cmp r0, #0
	cmpne r7, #0
	bne _021ED874
_021ED8B8:
	cmp r7, #0
	beq _021ED8E0
	mov r0, sl
	mov r3, r7
	add r1, sb, #0x28
	add r2, r8, r6
	bl ov4_021ED4B8
	cmp r0, #0
	addne sp, sp, #0x14
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021ED8E0:
	mov r0, #0
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021ED8EC: .word Unk_ov4_02217F1C
_021ED8F0: .word Unk_ov4_02217E90
_021ED8F4: .word Unk_ov4_02217E40
_021ED8F8: .word Unk_ov4_02217F40
	arm_func_end ov4_021ED7FC

	arm_func_start ov4_021ED8FC
ov4_021ED8FC: ; 0x021ED8FC
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r2
	mov r6, r0
	mov r5, r1
	mov r0, r4
	bl strlen
	mov r3, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov4_021ED7FC
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021ED8FC

	arm_func_start ov4_021ED92C
ov4_021ED92C: ; 0x021ED92C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x44]
	mov sl, r1
	mvn r1, #0
	str r2, [sp, #4]
	str r3, [sp, #8]
	cmp sl, r1
	str r0, [sp, #0x44]
	bne _021ED96C
	ldr r0, _021EDB20 ; =0x02217F44
	ldr r1, _021EDB24 ; =0x02217E90
	ldr r2, _021EDB28 ; =0x02217DF0
	mov r3, #0x150
	bl __msl_assertion_failed
_021ED96C:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _021ED98C
	ldr r0, _021EDB2C ; =0x02217F5C
	ldr r1, _021EDB24 ; =0x02217E90
	ldr r2, _021EDB28 ; =0x02217DF0
	ldr r3, _021EDB30 ; =0x00000151
	bl __msl_assertion_failed
_021ED98C:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _021ED9AC
	ldr r0, _021EDB34 ; =0x02217F70
	ldr r1, _021EDB24 ; =0x02217E90
	ldr r2, _021EDB28 ; =0x02217DF0
	ldr r3, _021EDB38 ; =0x00000152
	bl __msl_assertion_failed
_021ED9AC:
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bne _021ED9CC
	ldr r0, _021EDB3C ; =0x02217F84
	ldr r1, _021EDB24 ; =0x02217E90
	ldr r2, _021EDB28 ; =0x02217DF0
	ldr r3, _021EDB40 ; =0x00000153
	bl __msl_assertion_failed
_021ED9CC:
	ldr r0, [sp, #4]
	mvn r4, #0
	ldr r6, [r0, #8]
	ldmia r0, {r5, r7}
	sub r0, r4, #0x4b
	str r0, [sp, #0x14]
	sub r0, r4, #0x19
	mov sb, #0
	str r0, [sp, #0x10]
	sub r0, r4, #5
	mov fp, sb
	str r0, [sp, #0xc]
_021ED9FC:
	add r0, r6, #0x800
	cmp r0, r7
	ble _021EDA38
	mov r7, r0
	add r1, r0, #1
	mov r0, r5
	bl DWCi_GsRealloc
	movs r5, r0
	bne _021EDA38
	ldr r1, _021EDB44 ; =0x02217E9C
	ldr r0, [sp]
	bl ov4_021F5D68
	add sp, sp, #0x18
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EDA38:
	mov r0, sl
	add r1, r5, r6
	sub r2, r7, r6
	mov r3, #0
	bl ov4_021EAE04
	mov r8, r0
	cmp r8, r4
	bne _021EDA94
	mov r0, sl
	bl GOAGetLastError
	ldr r1, [sp, #0xc]
	cmp r0, r1
	ldrne r1, [sp, #0x10]
	cmpne r0, r1
	ldrne r1, [sp, #0x14]
	cmpne r0, r1
	beq _021EDAB8
	ldr r1, _021EDB48 ; =0x02217F98
	ldr r0, [sp]
	bl ov4_021F5D68
	add sp, sp, #0x18
	mov r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EDA94:
	cmp r8, #0
	addne r6, r6, r8
	addne sb, sb, r8
	bne _021EDAB8
	ldr r0, [sp]
	ldr r1, _021EDB4C ; =0x02217FC4
	ldr r2, [sp, #0x44]
	mov fp, #1
	bl ov4_021F5894
_021EDAB8:
	mov r0, #0
	cmp r8, r4
	strb r0, [r5, r6]
	beq _021EDAD8
	cmp fp, #0
	bne _021EDAD8
	cmp sb, #0x20000
	blt _021ED9FC
_021EDAD8:
	cmp sb, #0
	beq _021EDAF4
	ldr r1, _021EDB50 ; =0x02217FE8
	ldr r0, [sp]
	ldr r2, [sp, #0x44]
	mov r3, sb
	bl ov4_021F5894
_021EDAF4:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x40]
	str r5, [r0, #0]
	str r6, [r0, #8]
	str r7, [r0, #4]
	ldr r0, [sp, #8]
	str sb, [r0]
	str fp, [r1]
	mov r0, #0
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021EDB20: .word Unk_ov4_02217F44
_021EDB24: .word Unk_ov4_02217E90
_021EDB28: .word Unk_ov4_02217DF0
_021EDB2C: .word Unk_ov4_02217F5C
_021EDB30: .word 0x00000151
_021EDB34: .word Unk_ov4_02217F70
_021EDB38: .word 0x00000152
_021EDB3C: .word Unk_ov4_02217F84
_021EDB40: .word 0x00000153
_021EDB44: .word Unk_ov4_02217E9C
_021EDB48: .word Unk_ov4_02217F98
_021EDB4C: .word Unk_ov4_02217FC4
_021EDB50: .word Unk_ov4_02217FE8
	arm_func_end ov4_021ED92C

	arm_func_start ov4_021EDB54
ov4_021EDB54: ; 0x021EDB54
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x1c
	mov sl, r0
	str r2, [sp, #0xc]
	mov sb, r1
	str r3, [sp, #0x10]
	movs r0, r2
	ldr r8, [sp, #0x44]
	bne _021EDB8C
	ldr r0, _021EDCB0 ; =0x02217E78
	ldr r1, _021EDCB4 ; =0x02217E90
	ldr r2, _021EDCB8 ; =0x02217E00
	ldr r3, _021EDCBC ; =0x000001B9
	bl __msl_assertion_failed
_021EDB8C:
	ldr r0, [sp, #0xc]
	mov r4, #0
	ldr fp, [r0, #8]
	ldr r7, [r0, #0xc]
	ldr r6, [r0, #0]
	subs r5, fp, r7
	addeq sp, sp, #0x1c
	moveq r0, r4
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_021EDBB0:
	add r0, sp, #0x18
	str r0, [sp]
	add r1, r7, r4
	add r0, sp, #0x14
	str r0, [sp, #4]
	add r2, r6, r1
	mov r0, sl
	mov r1, sb
	mov r3, r5
	str r8, [sp, #8]
	bl ov4_021ED62C
	cmp r0, #0
	addne sp, sp, #0x1c
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #0x14]
	cmp r0, #0
	subne r5, r5, r0
	addne r4, r4, r0
	cmp r0, #0
	cmpne r5, #0
	bne _021EDBB0
	ldr r0, [sp, #0x40]
	cmp r0, #0
	beq _021EDC30
	cmp r4, #0
	ble _021EDC34
	mov r0, r6
	add r1, r6, r4
	add r2, r5, #1
	bl memmove
	sub fp, fp, r4
	b _021EDC34
_021EDC30:
	add r7, r7, r4
_021EDC34:
	cmp fp, #0
	bge _021EDC50
	ldr r0, _021EDCC0 ; =0x02217FFC
	ldr r1, _021EDCB4 ; =0x02217E90
	ldr r2, _021EDCB8 ; =0x02217E00
	ldr r3, _021EDCC4 ; =0x000001DE
	bl __msl_assertion_failed
_021EDC50:
	cmp r7, #0
	bge _021EDC6C
	ldr r0, _021EDCC8 ; =0x02218008
	ldr r1, _021EDCB4 ; =0x02217E90
	ldr r2, _021EDCB8 ; =0x02217E00
	ldr r3, _021EDCCC ; =0x000001DF
	bl __msl_assertion_failed
_021EDC6C:
	cmp r7, fp
	ble _021EDC88
	ldr r0, _021EDCD0 ; =0x02218014
	ldr r1, _021EDCB4 ; =0x02217E90
	ldr r2, _021EDCB8 ; =0x02217E00
	mov r3, #0x1e0
	bl __msl_assertion_failed
_021EDC88:
	ldr r0, [sp, #0xc]
	str fp, [r0, #8]
	str r7, [r0, #0xc]
	ldr r0, [sp, #0x10]
	cmp r0, #0
	ldrne r1, [sp, #0x18]
	strne r1, [r0]
	mov r0, #0
	add sp, sp, #0x1c
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021EDCB0: .word Unk_ov4_02217E78
_021EDCB4: .word Unk_ov4_02217E90
_021EDCB8: .word Unk_ov4_02217E00
_021EDCBC: .word 0x000001B9
_021EDCC0: .word Unk_ov4_02217FFC
_021EDCC4: .word 0x000001DE
_021EDCC8: .word Unk_ov4_02218008
_021EDCCC: .word 0x000001DF
_021EDCD0: .word Unk_ov4_02218014
	arm_func_end ov4_021EDB54

	arm_func_start ov4_021EDCD4
ov4_021EDCD4: ; 0x021EDCD4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x10
	mov r5, r2
	mov r0, #0
	mov r6, r1
	str r0, [r5, #0]
	ldr r1, [r6, #8]
	mov r7, r3
	cmp r1, #5
	addlt sp, sp, #0x10
	ldmltia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r6, #0]
	mov r1, #0xa
	bl strchr
	movs r4, r0
	beq _021EDDF8
	ldr r1, _021EDE04 ; =0x02218020
	sub r0, r4, #5
	mov r2, #5
	bl strncmp
	cmp r0, #0
	addne sp, sp, #0x10
	movne r0, #3
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	strb r0, [r4]
	ldr r0, [r6, #0]
	ldr r1, _021EDE08 ; =0x02218028
	add r2, sp, #0
	mov r3, #0x10
	bl ov4_021F5978
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0
	bl atoi
	str r0, [r7, #0]
	ldr r0, [r6, #0]
	ldr r1, _021EDE0C ; =0x0221802C
	add r2, sp, #0
	mov r3, #0x10
	bl ov4_021F5978
	cmp r0, #0
	addeq sp, sp, #0x10
	moveq r0, #3
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r0, sp, #0
	bl atoi
	ldr r2, [r6, #0]
	add r1, r0, #1
	sub r2, r4, r2
	ldr r3, [r6, #8]
	add r2, r1, r2
	cmp r3, r2
	ble _021EDDF0
	ldrsb r2, [r4, r1]
	cmp r2, #0
	addne sp, sp, #0x10
	movne r0, #3
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r3, r4, #1
	ldr r2, [sp, #0x28]
	str r3, [r5, #0]
	str r0, [r2, #0]
	ldr r0, [r6, #0]
	sub r0, r4, r0
	add r0, r1, r0
	add r0, r0, #1
	str r0, [r6, #0xc]
	b _021EDDF8
_021EDDF0:
	mov r0, #0xa
	strb r0, [r4]
_021EDDF8:
	mov r0, #0
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021EDE04: .word Unk_ov4_02218020
_021EDE08: .word Unk_ov4_02218028
_021EDE0C: .word Unk_ov4_0221802C
	arm_func_end ov4_021EDCD4

	arm_func_start ov4_021EDE10
ov4_021EDE10: ; 0x021EDE10
	stmfd sp!, {r4, lr}
	movs r4, r1
	ldrne r0, [r4]
	cmpne r0, #0
	ldrne r1, [r4, #0xc]
	cmpne r1, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [r4, #8]
	subs r2, r0, r1
	str r2, [r4, #8]
	beq _021EDE50
	ldr r0, [r4, #0]
	ldr r1, [r4, #0xc]
	add r1, r0, r1
	bl memmove
_021EDE50:
	ldr r2, [r4, #0]
	ldr r1, [r4, #8]
	mov r0, #0
	strb r0, [r2, r1]
	str r0, [r4, #0xc]
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021EDE10

	.data


	.global Unk_ov4_02217DF0
Unk_ov4_02217DF0: ; 0x02217DF0
	.incbin "incbin/overlay4_data.bin", 0x1F70, 0x1F80 - 0x1F70

	.global Unk_ov4_02217E00
Unk_ov4_02217E00: ; 0x02217E00
	.incbin "incbin/overlay4_data.bin", 0x1F80, 0x1F94 - 0x1F80

	.global Unk_ov4_02217E14
Unk_ov4_02217E14: ; 0x02217E14
	.incbin "incbin/overlay4_data.bin", 0x1F94, 0x1FA8 - 0x1F94

	.global Unk_ov4_02217E28
Unk_ov4_02217E28: ; 0x02217E28
	.incbin "incbin/overlay4_data.bin", 0x1FA8, 0x1FC0 - 0x1FA8

	.global Unk_ov4_02217E40
Unk_ov4_02217E40: ; 0x02217E40
	.incbin "incbin/overlay4_data.bin", 0x1FC0, 0x1FDC - 0x1FC0

	.global Unk_ov4_02217E5C
Unk_ov4_02217E5C: ; 0x02217E5C
	.incbin "incbin/overlay4_data.bin", 0x1FDC, 0x1FF8 - 0x1FDC

	.global Unk_ov4_02217E78
Unk_ov4_02217E78: ; 0x02217E78
	.incbin "incbin/overlay4_data.bin", 0x1FF8, 0x2010 - 0x1FF8

	.global Unk_ov4_02217E90
Unk_ov4_02217E90: ; 0x02217E90
	.incbin "incbin/overlay4_data.bin", 0x2010, 0x201C - 0x2010

	.global Unk_ov4_02217E9C
Unk_ov4_02217E9C: ; 0x02217E9C
	.incbin "incbin/overlay4_data.bin", 0x201C, 0x202C - 0x201C

	.global Unk_ov4_02217EAC
Unk_ov4_02217EAC: ; 0x02217EAC
	.incbin "incbin/overlay4_data.bin", 0x202C, 0x203C - 0x202C

	.global Unk_ov4_02217EBC
Unk_ov4_02217EBC: ; 0x02217EBC
	.incbin "incbin/overlay4_data.bin", 0x203C, 0x204C - 0x203C

	.global Unk_ov4_02217ECC
Unk_ov4_02217ECC: ; 0x02217ECC
	.incbin "incbin/overlay4_data.bin", 0x204C, 0x2050 - 0x204C

	.global Unk_ov4_02217ED0
Unk_ov4_02217ED0: ; 0x02217ED0
	.incbin "incbin/overlay4_data.bin", 0x2050, 0x2078 - 0x2050

	.global Unk_ov4_02217EF8
Unk_ov4_02217EF8: ; 0x02217EF8
	.incbin "incbin/overlay4_data.bin", 0x2078, 0x209C - 0x2078

	.global Unk_ov4_02217F1C
Unk_ov4_02217F1C: ; 0x02217F1C
	.incbin "incbin/overlay4_data.bin", 0x209C, 0x20C0 - 0x209C

	.global Unk_ov4_02217F40
Unk_ov4_02217F40: ; 0x02217F40
	.incbin "incbin/overlay4_data.bin", 0x20C0, 0x20C4 - 0x20C0

	.global Unk_ov4_02217F44
Unk_ov4_02217F44: ; 0x02217F44
	.incbin "incbin/overlay4_data.bin", 0x20C4, 0x20DC - 0x20C4

	.global Unk_ov4_02217F5C
Unk_ov4_02217F5C: ; 0x02217F5C
	.incbin "incbin/overlay4_data.bin", 0x20DC, 0x20F0 - 0x20DC

	.global Unk_ov4_02217F70
Unk_ov4_02217F70: ; 0x02217F70
	.incbin "incbin/overlay4_data.bin", 0x20F0, 0x2104 - 0x20F0

	.global Unk_ov4_02217F84
Unk_ov4_02217F84: ; 0x02217F84
	.incbin "incbin/overlay4_data.bin", 0x2104, 0x2118 - 0x2104

	.global Unk_ov4_02217F98
Unk_ov4_02217F98: ; 0x02217F98
	.incbin "incbin/overlay4_data.bin", 0x2118, 0x2144 - 0x2118

	.global Unk_ov4_02217FC4
Unk_ov4_02217FC4: ; 0x02217FC4
	.incbin "incbin/overlay4_data.bin", 0x2144, 0x2168 - 0x2144

	.global Unk_ov4_02217FE8
Unk_ov4_02217FE8: ; 0x02217FE8
	.incbin "incbin/overlay4_data.bin", 0x2168, 0x217C - 0x2168

	.global Unk_ov4_02217FFC
Unk_ov4_02217FFC: ; 0x02217FFC
	.incbin "incbin/overlay4_data.bin", 0x217C, 0x2188 - 0x217C

	.global Unk_ov4_02218008
Unk_ov4_02218008: ; 0x02218008
	.incbin "incbin/overlay4_data.bin", 0x2188, 0x2194 - 0x2188

	.global Unk_ov4_02218014
Unk_ov4_02218014: ; 0x02218014
	.incbin "incbin/overlay4_data.bin", 0x2194, 0x21A0 - 0x2194

	.global Unk_ov4_02218020
Unk_ov4_02218020: ; 0x02218020
	.incbin "incbin/overlay4_data.bin", 0x21A0, 0x21A8 - 0x21A0

	.global Unk_ov4_02218028
Unk_ov4_02218028: ; 0x02218028
	.incbin "incbin/overlay4_data.bin", 0x21A8, 0x21AC - 0x21A8

	.global Unk_ov4_0221802C
Unk_ov4_0221802C: ; 0x0221802C
	.incbin "incbin/overlay4_data.bin", 0x21AC, 0x6

