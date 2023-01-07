	.include "macros/function.inc"
	.include "include/dwci_nd_filelis.inc"

	

	.text


	arm_func_start ov60_02225294
ov60_02225294: ; 0x02225294
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x18
	ldr r2, [r1, #0x14]
	str r1, [sp]
	mov r1, #0xb0
	mul r1, r2, r1
	mov r4, r0
	ldr r0, [sp]
	mov r2, #0
	ldr r0, [r0, #0x10]
	str r2, [sp, #4]
	bl ov60_02225688
	ldr r1, _02225514 ; =0x02229CC0
	add r2, sp, #0x10
	mov r0, r4
	bl ov60_02226D88
	cmp r0, #0
	ble _022252FC
	ldr r1, [sp, #0x10]
	ldrsb r0, [r1]
	cmp r0, #0x30
	ldreqsb r0, [r1, #1]
	cmpeq r0, #0
	addeq sp, sp, #0x18
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022252FC:
	add r1, sp, #0x14
	mov r0, r4
	bl ov60_02226E8C
	mov r4, r0
	cmp r4, #0
	ble _02225508
	ldr r0, [sp]
	mov r5, #0
	ldr r0, [r0, #0x14]
	str r5, [sp, #0xc]
	cmp r0, #0
	ble _02225508
	str r5, [sp, #8]
_02225330:
	cmp r5, r4
	movge r0, #1
	strge r0, [sp, #4]
	bge _02225508
	ldr r0, [sp]
	mov r6, #0
	ldr r1, [r0, #0x10]
	ldr r0, [sp, #8]
	mov r7, r5
	mov r2, r6
	str r6, [sp, #4]
	cmp r5, r4
	add r8, r1, r0
	bge _022254E0
	mov sl, r6
	mov fp, #1
_02225370:
	ldr r3, [sp, #0x14]
	ldrsb r0, [r3, r5]
	cmp r0, #0xd
	moveq r2, fp
	beq _022254D4
	cmp r2, #0
	beq _022253DC
	cmp r0, #0xa
	bne _022254D0
	cmp r6, #5
	bne _022253C0
	sub r0, r5, #1
	sub r1, r0, r7
	cmp r1, #8
	bgt _02225508
	add r0, r3, r7
	bl ov60_022256B4
	cmp r0, #0
	blt _02225508
	str r0, [r8, #0xac]
_022253C0:
	cmp r6, #5
	movge r0, #1
	strge r0, [sp, #4]
	movlt r0, #0
	add r5, r5, #1
	strlt r0, [sp, #4]
	b _022254E0
_022253DC:
	cmp r0, #9
	bne _022254D0
	cmp r6, #5
	addls pc, pc, r6, lsl #2
	b _022254C8
_022253F0: ; jump table
	b _02225408 ; case 0
	b _02225424 ; case 1
	b _02225454 ; case 2
	b _02225470 ; case 3
	b _0222548C ; case 4
	b _022254A8 ; case 5
_02225408:
	sub r2, r5, r7
	cmp r2, #0x20
	bhi _02225508
	add r1, r3, r7
	mov r0, r8
	bl ov60_0222569C
	b _022254C8
_02225424:
	sub sb, r5, r7
	mov r0, sb
	bl ov60_02223FA0
	cmp r0, #0x66
	bhi _02225508
	ldr r0, [sp, #0x14]
	mov r2, sb
	add r1, r0, r7
	add r0, r8, #0x22
	bl ov60_022240C0
	strh sl, [r8, #0x86]
	b _022254C8
_02225454:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _02225508
	add r1, r3, r7
	add r0, r8, #0x88
	bl ov60_0222569C
	b _022254C8
_02225470:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _02225508
	add r1, r3, r7
	add r0, r8, #0x93
	bl ov60_0222569C
	b _022254C8
_0222548C:
	sub r2, r5, r7
	cmp r2, #0xa
	bhi _02225508
	add r1, r3, r7
	add r0, r8, #0x9e
	bl ov60_0222569C
	b _022254C8
_022254A8:
	sub r1, r5, r7
	cmp r1, #8
	bgt _02225508
	add r0, r3, r7
	bl ov60_022256B4
	cmp r0, #0
	blt _02225508
	str r0, [r8, #0xac]
_022254C8:
	add r6, r6, #1
	add r7, r5, #1
_022254D0:
	mov r2, #0
_022254D4:
	add r5, r5, #1
	cmp r5, r4
	blt _02225370
_022254E0:
	ldr r0, [sp]
	ldr r1, [r0, #0x14]
	ldr r0, [sp, #0xc]
	add r0, r0, #1
	str r0, [sp, #0xc]
	cmp r0, r1
	ldr r0, [sp, #8]
	add r0, r0, #0xb0
	str r0, [sp, #8]
	blt _02225330
_02225508:
	ldr r0, [sp, #4]
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02225514: .word Unk_ov60_02229CC0
	arm_func_end ov60_02225294

	.data


	.global Unk_ov60_02229CC0
Unk_ov60_02229CC0: ; 0x02229CC0
	.incbin "incbin/overlay60_data.bin", 0xE80, 0x10

