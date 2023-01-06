	.include "macros/function.inc"
	.include "overlay060/ov60_022263B8.inc"

	.extern Unk_ov60_0222A014
	.extern Unk_ov60_0222A018
	.extern Unk_ov60_0222A01C
	.extern Unk_ov60_0222A020


	.text


	arm_func_start ov60_022263B8
ov60_022263B8: ; 0x022263B8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov fp, r0
	movs r0, r1
	cmpne r0, #1
	str r1, [sp]
	mov r5, r2
	mov r4, r3
	mov r7, #0
	cmpne r0, #2
	beq _022263F0
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #0xb
	str r1, [r0, #0]
	b _0222687C
_022263F0:
	cmp r4, #0
	bne _02226408
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #0xb
	str r1, [r0, #0]
	b _0222687C
_02226408:
	ldr r1, _02226904 ; =0x0222A018
	mov r0, #0x58
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	movs r7, r0
	bne _02226434
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_02226434:
	mov r1, #0x58
	bl ov60_02227158
	ldr r1, _02226904 ; =0x0222A018
	mov r0, #0x420
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	str r0, [r7, #0x30]
	cmp r0, #0
	bne _0222646C
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_0222646C:
	mov r1, #0x420
	bl ov60_02227158
	ldr r1, [r7, #0x30]
	mov r0, fp
	str r5, [r1, #0x18]
	ldr r1, [r7, #0x30]
	str r4, [r1, #0xc]
	bl ov60_0222714C
	mov r4, r0
	cmp r4, #7
	bgt _022264A8
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_022264A8:
	mov r8, #7
	mov r3, #0x50
	ldr r1, _02226908 ; =0x02229CD0
	mov r0, fp
	mov r2, r8
	str r3, [r7, #0x28]
	bl ov60_022270E4
	cmp r0, #0
	beq _02226508
	ldr r1, _0222690C ; =0x02229CD8
	mov r0, fp
	mov r2, #8
	bl ov60_022270E4
	cmp r0, #0
	beq _022264F4
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_022264F4:
	mov r0, #1
	str r0, [r7, #8]
	rsb r0, r0, #0x1bc
	str r0, [r7, #0x28]
	mov r8, #8
_02226508:
	sub r4, r4, r8
	cmp r4, #0
	add r6, fp, r8
	bgt _02226528
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_02226528:
	mov r5, #0
	mov sb, r5
	mov sl, r5
	b _0222659C
_02226538:
	cmp sl, #2
	subeq sl, sl, #1
	beq _02226598
	cmp sl, #1
	bne _0222658C
	sub r0, r5, #1
	mov r1, #2
	add r0, r6, r0
	bl ov60_02228898
	mov r0, r0, lsl #0x18
	movs r0, r0, asr #0x18
	sub sl, sl, #1
	bpl _0222657C
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_0222657C:
	cmp r0, #0x2f
	bne _02226598
	sub sb, sb, #1
	b _022265B0
_0222658C:
	cmp r0, #0x25
	moveq sl, #2
	addeq sb, sb, #1
_02226598:
	add r5, r5, #1
_0222659C:
	cmp r5, r4
	bge _022265B0
	ldrsb r0, [r6, r5]
	cmp r0, #0x2f
	bne _02226538
_022265B0:
	cmp sl, #0
	beq _022265C8
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_022265C8:
	ldr r0, _02226904 ; =0x0222A018
	add r1, r8, r4
	sub r1, r1, sb, lsl #1
	ldr r2, [r0, #0]
	add r0, r1, #1
	mov r1, #4
	blx r2
	str r0, [r7, #0x24]
	cmp r0, #0
	bne _02226600
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_02226600:
	mov r1, fp
	mov r2, r8
	bl ov60_0222716C
	mov sb, #0
	mov r5, sb
	mov sl, sb
	mov fp, sb
	cmp r4, #0
	ble _022266A4
_02226624:
	cmp sl, #2
	subeq sl, sl, #1
	beq _02226698
	cmp sl, #1
	bne _02226670
	sub r0, sb, #1
	add r0, r6, r0
	mov r1, #2
	bl ov60_02228898
	mov r0, r0, lsl #0x18
	mov r1, r0, asr #0x18
	ldr r0, [r7, #0x24]
	cmp r1, #0x2f
	add r0, r8, r0
	add r0, r5, r0
	sub sl, sl, #1
	strb r1, [r0, #-1]
	moveq fp, #1
	b _02226698
_02226670:
	ldrsb r1, [r6, sb]
	cmp r1, #0x2f
	moveq fp, #1
	cmp fp, #0
	cmpeq r1, #0x25
	ldrne r0, [r7, #0x24]
	moveq sl, #2
	addne r0, r8, r0
	strneb r1, [r5, r0]
	add r5, r5, #1
_02226698:
	add sb, sb, #1
	cmp sb, r4
	blt _02226624
_022266A4:
	ldr r1, [r7, #0x24]
	add r0, r8, r5
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r7, #0x24]
	cmp r5, #0
	add r1, r0, r8
	ble _022266E8
_022266C4:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	cmpne r0, #0x3a
	addeq r0, r2, r8
	streq r0, [r7, #0xc]
	beq _022266E8
	add r2, r2, #1
	cmp r2, r5
	blt _022266C4
_022266E8:
	cmp r2, r5
	bne _02226700
	add r0, r2, r8
	str r0, [r7, #0xc]
	str r0, [r7, #0x10]
	b _022267A4
_02226700:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	ldreq r0, [r7, #0xc]
	streq r0, [r7, #0x10]
	beq _022267A4
	cmp r0, #0x3a
	bne _022267A4
	cmp r2, r5
	bge _02226744
_02226724:
	ldrsb r0, [r1, r2]
	cmp r0, #0x2f
	addeq r0, r2, r8
	streq r0, [r7, #0x10]
	beq _02226744
	add r2, r2, #1
	cmp r2, r5
	blt _02226724
_02226744:
	cmp r2, r5
	addeq r0, r2, r8
	streq r0, [r7, #0x10]
	beq _022267A4
	ldr r1, [r7, #0xc]
	ldr r0, [r7, #0x24]
	add r2, r1, #1
	ldr r1, [r7, #0x10]
	add r0, r0, r2
	sub r1, r1, r2
	bl ov60_02228B58
	cmp r0, #0
	ldrlt r0, [r7, #0x28]
	blt _02226798
	ldr r1, _02226910 ; =0x0000FFFF
	cmp r0, r1
	ble _02226798
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #4
	str r1, [r0, #0]
	b _0222687C
_02226798:
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	str r0, [r7, #0x28]
_022267A4:
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _0222684C
	ldr r0, _02226904 ; =0x0222A018
	ldr r3, [r7, #0xc]
	ldr r2, [r0, #0]
	mov r0, #0x830
	mov r1, #4
	sub r4, r3, r8
	blx r2
	str r0, [r7, #0x20]
	cmp r0, #0
	bne _022267E8
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_022267E8:
	mov r1, #0x830
	bl ov60_02227158
	ldr r1, _02226904 ; =0x0222A018
	add r0, r4, #1
	ldr r2, [r1, #0]
	mov r1, #4
	blx r2
	ldr r1, [r7, #0x20]
	str r0, [r1, #0x800]
	ldr r0, [r7, #0x20]
	ldr r0, [r0, #0x800]
	cmp r0, #0
	bne _0222682C
	ldr r0, _02226900 ; =0x0222A014
	mov r1, #1
	str r1, [r0, #0]
	b _0222687C
_0222682C:
	ldr r1, [r7, #0x24]
	mov r2, r4
	add r1, r1, r8
	bl ov60_0222716C
	ldr r0, [r7, #0x20]
	mov r1, #0
	ldr r0, [r0, #0x800]
	strb r1, [r0, r4]
_0222684C:
	ldr r1, _02226914 ; =0x02228D74
	add r0, r7, #0x44
	mov r2, #0x14
	bl ov60_0222716C
	ldr r0, [sp, #0x2c]
	ldr r1, [sp, #0x28]
	str r0, [r7, #0x2c]
	ldr r0, [sp]
	str r0, [r7, #0x40]
	mov r0, r7
	str r1, [r7, #0x3c]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_0222687C:
	cmp r7, #0
	beq _022268F8
	ldr r0, [r7, #0x20]
	cmp r0, #0
	beq _022268B8
	ldr r0, [r0, #0x800]
	cmp r0, #0
	beq _022268A8
	ldr r1, _02226918 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_022268A8:
	ldr r1, _02226918 ; =0x0222A01C
	ldr r0, [r7, #0x20]
	ldr r1, [r1, #0]
	blx r1
_022268B8:
	ldr r0, [r7, #0x24]
	cmp r0, #0
	beq _022268D0
	ldr r1, _02226918 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_022268D0:
	ldr r0, [r7, #0x30]
	cmp r0, #0
	beq _022268E8
	ldr r1, _02226918 ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_022268E8:
	ldr r1, _02226918 ; =0x0222A01C
	mov r0, r7
	ldr r1, [r1, #0]
	blx r1
_022268F8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02226900: .word Unk_ov60_0222A014
_02226904: .word Unk_ov60_0222A018
_02226908: .word Unk_ov60_02229CD0
_0222690C: .word Unk_ov60_02229CD8
_02226910: .word 0x0000FFFF
_02226914: .word Unk_ov60_02228D74
_02226918: .word Unk_ov60_0222A01C
	arm_func_end ov60_022263B8

	arm_func_start ov60_0222691C
ov60_0222691C: ; 0x0222691C
	stmfd sp!, {r4, lr}
	ldr r1, _02226940 ; =0x0222A01C
	mov r4, r0
	ldr r0, [r4, #0x30]
	ldr r1, [r1, #0]
	blx r1
	mov r0, r4
	bl ov60_02226998
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02226940: .word Unk_ov60_0222A01C
	arm_func_end ov60_0222691C

	arm_func_start ov60_02226944
ov60_02226944: ; 0x02226944
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r7, r0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _02226994 ; =0x0222A01C
	mov r5, #0
_02226958:
	ldr r0, [r7, #0]
	cmp r7, r0
	beq _02226978
	ldr r6, [r0, #0]
	ldr r1, [r4, #0]
	blx r1
	str r6, [r7, #0]
	b _02226988
_02226978:
	ldr r1, [r4, #0]
	mov r0, r7
	blx r1
	mov r7, r5
_02226988:
	cmp r7, #0
	bne _02226958
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02226994: .word Unk_ov60_0222A01C
	arm_func_end ov60_02226944

	arm_func_start ov60_02226998
ov60_02226998: ; 0x02226998
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x34]
	bl ov60_02226944
	ldr r0, [r4, #0x38]
	bl ov60_02226944
	ldr r0, [r4, #0x20]
	cmp r0, #0
	beq _022269E4
	ldr r0, [r0, #0x800]
	cmp r0, #0
	beq _022269D4
	ldr r1, _02226A0C ; =0x0222A01C
	ldr r1, [r1, #0]
	blx r1
_022269D4:
	ldr r1, _02226A0C ; =0x0222A01C
	ldr r0, [r4, #0x20]
	ldr r1, [r1, #0]
	blx r1
_022269E4:
	ldr r1, _02226A0C ; =0x0222A01C
	ldr r0, [r4, #0x24]
	ldr r1, [r1, #0]
	blx r1
	ldr r1, _02226A0C ; =0x0222A01C
	mov r0, r4
	ldr r1, [r1, #0]
	blx r1
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02226A0C: .word Unk_ov60_0222A01C
	arm_func_end ov60_02226998

	arm_func_start ov60_02226A10
ov60_02226A10: ; 0x02226A10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0]
	cmp r0, #0
	beq _02226A38
	ldr r0, _02226A98 ; =0x0222A014
	mov r1, #0xb
	str r1, [r0, #0]
	sub r0, r1, #0xc
	ldmia sp!, {r3, r4, r5, pc}
_02226A38:
	ldr r0, [r5, #0x40]
	cmp r0, #1
	ldreq r0, [r5, #0x38]
	cmpeq r0, #0
	bne _02226A60
	ldr r0, _02226A98 ; =0x0222A014
	mov r1, #0xb
	str r1, [r0, #0]
	sub r0, r1, #0xc
	ldmia sp!, {r3, r4, r5, pc}
_02226A60:
	bl ov60_02225E38
	mov r0, r5
	bl ov60_02225C2C
	movs r4, r0
	ldrmi r0, _02226A98 ; =0x0222A014
	movmi r1, #1
	strmi r1, [r0]
	bmi _02226A8C
	mov r0, #1
	str r0, [r5, #0]
	bl ov60_02225F1C
_02226A8C:
	bl ov60_02225E4C
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02226A98: .word Unk_ov60_0222A014
	arm_func_end ov60_02226A10

	arm_func_start ov60_02226A9C
ov60_02226A9C: ; 0x02226A9C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, #0
	bl ov60_02225E38
	ldr r0, _02226B14 ; =0x0222A020
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02226AF4
	ldr r1, [r2, #8]
	cmp r1, r4
	ldreq r1, [r2, #0xc]
	ldreq r1, [r1, #4]
	cmpeq r1, #0
	bne _02226AF4
	ldr r1, [r2, #0xc]
	mov r2, #1
	str r2, [r1, #4]
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl ov60_022270BC
	mov r5, #1
_02226AF4:
	cmp r5, #0
	bne _02226B08
	mov r0, r4
	bl ov60_02225D38
	mov r5, r0
_02226B08:
	bl ov60_02225E4C
	mov r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02226B14: .word 0x0222A020
	arm_func_end ov60_02226A9C

	arm_func_start ov60_02226B18
ov60_02226B18: ; 0x02226B18
	stmfd sp!, {r3, lr}
	bl ov60_02225E38
	ldr r0, _02226B68 ; =0x0222A020
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _02226B5C
	ldr r1, [r2, #0xc]
	ldr r1, [r1, #4]
	cmp r1, #0
	bne _02226B5C
	ldr r1, [r2, #0xc]
	mov r2, #1
	str r2, [r1, #4]
	ldr r1, [r0, #0]
	ldr r0, [r1, #0xc]
	ldr r1, [r1, #0x10]
	bl ov60_022270BC
_02226B5C:
	bl ov60_02225DD8
	bl ov60_02225E4C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02226B68: .word 0x0222A020
	arm_func_end ov60_02226B18

	.rodata


	.global Unk_ov60_02228D74
Unk_ov60_02228D74: ; 0x02228D74
	.incbin "incbin/overlay60_rodata.bin", 0x128, 0x15



	.data


	.global Unk_ov60_02229CD0
Unk_ov60_02229CD0: ; 0x02229CD0
	.incbin "incbin/overlay60_data.bin", 0xE90, 0xE98 - 0xE90

	.global Unk_ov60_02229CD8
Unk_ov60_02229CD8: ; 0x02229CD8
	.incbin "incbin/overlay60_data.bin", 0xE98, 0xC

