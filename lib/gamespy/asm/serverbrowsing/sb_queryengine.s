	.include "macros/function.inc"
	.include "include/sb_queryengine.inc"

	.extern Unk_ov4_0221AE50

	.extern Unk_ov4_02219B38
	.text


	arm_func_start ov4_021FD7CC
ov4_021FD7CC: ; 0x021FD7CC
	ldr r2, [r0, #4]
	cmp r2, #0
	strne r1, [r2, #0x20]
	str r1, [r0, #4]
	mov r2, #0
	str r2, [r1, #0x20]
	ldr r2, [r0, #0]
	cmp r2, #0
	streq r1, [r0]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr
	arm_func_end ov4_021FD7CC

	arm_func_start ov4_021FD800
ov4_021FD800: ; 0x021FD800
	ldr r2, [r0, #0]
	str r2, [r1, #0x20]
	str r1, [r0, #0]
	ldr r2, [r0, #4]
	cmp r2, #0
	streq r1, [r0, #4]
	ldr r1, [r0, #8]
	add r1, r1, #1
	str r1, [r0, #8]
	bx lr
	arm_func_end ov4_021FD800

	arm_func_start ov4_021FD828
ov4_021FD828: ; 0x021FD828
	ldr r2, [r0, #0]
	cmp r2, #0
	beq _021FD854
	ldr r1, [r2, #0x20]
	str r1, [r0, #0]
	cmp r1, #0
	moveq r1, #0
	streq r1, [r0, #4]
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
_021FD854:
	mov r0, r2
	bx lr
	arm_func_end ov4_021FD828

	arm_func_start ov4_021FD85C
ov4_021FD85C: ; 0x021FD85C
	ldr r2, [r0, #0]
	mov r3, #0
	cmp r2, #0
	beq _021FD8C0
_021FD86C:
	cmp r2, r1
	bne _021FD8B0
	cmp r3, #0
	ldrne r1, [r2, #0x20]
	strne r1, [r3, #0x20]
	ldr r1, [r0, #0]
	cmp r1, r2
	ldreq r1, [r2, #0x20]
	streq r1, [r0]
	ldr r1, [r0, #4]
	cmp r1, r2
	streq r3, [r0, #4]
	ldr r1, [r0, #8]
	sub r1, r1, #1
	str r1, [r0, #8]
	mov r0, #1
	bx lr
_021FD8B0:
	mov r3, r2
	ldr r2, [r2, #0x20]
	cmp r2, #0
	bne _021FD86C
_021FD8C0:
	mov r0, #0
	bx lr
	arm_func_end ov4_021FD85C

	arm_func_start ov4_021FD8C8
ov4_021FD8C8: ; 0x021FD8C8
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0]
	str r1, [r0, #8]
	bx lr
	arm_func_end ov4_021FD8C8

	arm_func_start ov4_021FD8DC
ov4_021FD8DC: ; 0x021FD8DC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x110
	mov r5, r0
	mov r4, r1
	add r0, r5, #8
	bl ov4_021FD7CC
	bl ov4_021EA840
	str r0, [r4, #0x1c]
	mov r0, #2
	strb r0, [sp, #9]
	ldrb r1, [r4, #0x14]
	tst r1, #0x20
	addne sp, sp, #0x110
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r5, #0]
	cmp r0, #1
	bne _021FD9E0
	mov r2, #0xfe
	mov r1, #0xfd
	mov r0, #0
	strb r2, [sp, #0x10]
	strb r1, [sp, #0x11]
	strb r0, [sp, #0x12]
	ldrb r2, [r4, #0x1c]
	ldrb r1, [r4, #0x1d]
	add r3, sp, #0x13
	strb r2, [r3]
	strb r1, [r3, #1]
	ldrb r2, [r4, #0x1e]
	ldrb r1, [r4, #0x1f]
	strb r2, [r3, #2]
	strb r1, [r3, #3]
	ldrb r1, [r4, #0x14]
	tst r1, #4
	beq _021FD9C8
	ldr r1, [r5, #0x40]
	strb r1, [sp, #0x17]
	ldr r3, [r5, #0x40]
	cmp r3, #0
	ble _021FD9A0
	add r2, sp, #0x10
_021FD980:
	add r1, r5, r0
	ldrb r1, [r1, #0x2c]
	add r0, r0, #1
	strb r1, [r2, #8]
	ldr r3, [r5, #0x40]
	add r2, r2, #1
	cmp r0, r3
	blt _021FD980
_021FD9A0:
	add r1, sp, #0x10
	add r0, r3, #8
	mov r2, #0
	strb r2, [r1, r0]
	ldr r0, [r5, #0x40]
	add r0, r0, #9
	strb r2, [r1, r0]
	ldr r0, [r5, #0x40]
	add r2, r0, #0xa
	b _021FDA50
_021FD9C8:
	mov r0, #0xff
	strb r0, [sp, #0x17]
	strb r0, [sp, #0x18]
	strb r0, [sp, #0x19]
	mov r2, #0xa
	b _021FDA50
_021FD9E0:
	tst r1, #4
	add ip, sp, #0x10
	beq _021FDA24
	ldr r3, _021FDAB4 ; =0x02219F30
	mov r2, #6
_021FD9F4:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [ip]
	strb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	bne _021FD9F4
	ldrb r0, [r3]
	mov r2, #0xd
	strb r0, [ip]
	b _021FDA50
_021FDA24:
	ldr r3, _021FDAB8 ; =0x02219F40
	mov r2, #4
_021FDA2C:
	ldrb r1, [r3]
	ldrb r0, [r3, #1]
	add r3, r3, #2
	strb r1, [ip]
	strb r0, [ip, #1]
	add ip, ip, #2
	subs r2, r2, #1
	bne _021FDA2C
	mov r2, #8
_021FDA50:
	ldr r1, [r4, #0]
	ldr r0, [r5, #0x28]
	cmp r1, r0
	bne _021FDA80
	ldrb r0, [r4, #0x15]
	tst r0, #2
	beq _021FDA80
	ldr r0, [r4, #8]
	str r0, [sp, #0xc]
	ldrh r0, [r4, #0xc]
	strh r0, [sp, #0xa]
	b _021FDA8C
_021FDA80:
	str r1, [sp, #0xc]
	ldrh r0, [r4, #4]
	strh r0, [sp, #0xa]
_021FDA8C:
	add r1, sp, #8
	str r1, [sp]
	mov r0, #8
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	add r1, sp, #0x10
	mov r3, #0
	bl ov4_021EAE5C
	add sp, sp, #0x110
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021FDAB4: .word Unk_ov4_02219F30
_021FDAB8: .word Unk_ov4_02219F40
	arm_func_end ov4_021FD8DC

	arm_func_start ov4_021FDABC
ov4_021FDABC: ; 0x021FDABC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	cmp r3, #0
	bne _021FDAE4
	ldr r0, _021FDB2C ; =0x0221AE50
	ldr r0, [r0, #0]
	cmp r0, #1
	ldmneia sp!, {r4, r5, r6, pc}
_021FDAE4:
	bl ov4_021EA8A4
	stmia r6, {r4, r5}
	mov r2, #0
	ldr r3, [sp, #0x10]
	str r2, [r6, #0x40]
	ldr r1, [sp, #0x14]
	str r3, [r6, #0x44]
	str r1, [r6, #0x48]
	mov r0, #2
	mov r1, r0
	str r2, [r6, #0x28]
	bl ov4_021EACDC
	str r0, [r6, #0x20]
	add r0, r6, #0x14
	bl ov4_021FD8C8
	add r0, r6, #8
	bl ov4_021FD8C8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021FDB2C: .word Unk_ov4_0221AE50
	arm_func_end ov4_021FDABC

	arm_func_start ov4_021FDB30
ov4_021FDB30: ; 0x021FDB30
	str r1, [r0, #0x28]
	bx lr
	arm_func_end ov4_021FDB30

	arm_func_start ov4_021FDB38
ov4_021FDB38: ; 0x021FDB38
	stmfd sp!, {r4, lr}
	mov r4, r0
	add r0, r4, #0x14
	bl ov4_021FD8C8
	add r0, r4, #8
	bl ov4_021FD8C8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FDB38

	arm_func_start ov4_021FDB54
ov4_021FDB54: ; 0x021FDB54
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0x20]
	bl ov4_021EACF0
	mvn r1, #0
	add r0, r4, #0x14
	str r1, [r4, #0x20]
	bl ov4_021FD8C8
	add r0, r4, #8
	bl ov4_021FD8C8
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FDB54

	arm_func_start ov4_021FDB80
ov4_021FDB80: ; 0x021FDB80
	stmfd sp!, {r3, lr}
	ldrb ip, [r1, #0x14]
	cmp r3, #0
	and ip, ip, #0xc3
	strb ip, [r1, #0x14]
	bne _021FDBA8
	ldrb r3, [r1, #0x14]
	orr r3, r3, #4
	strb r3, [r1, #0x14]
	b _021FDBC8
_021FDBA8:
	cmp r3, #1
	bne _021FDBC0
	ldrb r3, [r1, #0x14]
	orr r3, r3, #8
	strb r3, [r1, #0x14]
	b _021FDBC8
_021FDBC0:
	cmp r3, #2
	ldmeqia sp!, {r3, pc}
_021FDBC8:
	ldr ip, [r0, #0x10]
	ldr r3, [r0, #4]
	cmp ip, r3
	bge _021FDBE0
	bl ov4_021FD8DC
	ldmia sp!, {r3, pc}
_021FDBE0:
	cmp r2, #0
	add r0, r0, #0x14
	beq _021FDBF4
	bl ov4_021FD800
	ldmia sp!, {r3, pc}
_021FDBF4:
	bl ov4_021FD7CC
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021FDB80

	arm_func_start ov4_021FDBFC
ov4_021FDBFC: ; 0x021FDBFC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r2
	ldrsb r2, [r8]
	mov sl, r0
	mov sb, r1
	mov r7, r3
	cmp r2, #0
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	ldrb r0, [sb, #0x14]
	add r8, r8, #5
	sub r7, r7, #5
	tst r0, #4
	beq _021FDC98
	ldr r0, [sl, #0x40]
	mov r6, #0
	cmp r0, #0
	ble _021FDC88
	ldr r4, _021FDCF8 ; =0x02219B38
_021FDC44:
	mov r0, r8
	mov r1, r7
	bl ov4_021FF4AC
	movs r5, r0
	bmi _021FDC88
	add r0, sl, r6
	ldrb r1, [r0, #0x2c]
	mov r0, sb
	mov r2, r8
	ldr r1, [r4, r1, lsl #2]
	bl ov4_021FE1A8
	ldr r0, [sl, #0x40]
	add r6, r6, #1
	cmp r6, r0
	add r8, r8, r5
	sub r7, r7, r5
	blt _021FDC44
_021FDC88:
	ldrb r0, [sb, #0x14]
	orr r0, r0, #0x41
	strb r0, [sb, #0x14]
	b _021FDCB4
_021FDC98:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl ov4_021FE51C
	ldrb r0, [sb, #0x14]
	orr r0, r0, #0x43
	strb r0, [sb, #0x14]
_021FDCB4:
	ldrb r0, [sb, #0x14]
	and r0, r0, #0xf3
	strb r0, [sb, #0x14]
	bl ov4_021EA840
	ldr r2, [sb, #0x1c]
	mov r1, sb
	sub r0, r0, r2
	str r0, [sb, #0x1c]
	add r0, sl, #8
	bl ov4_021FD85C
	ldr r3, [sl, #0x48]
	ldr r4, [sl, #0x44]
	mov r0, sl
	mov r2, sb
	mov r1, #0
	blx r4
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_021FDCF8: .word Unk_ov4_02219B38
	arm_func_end ov4_021FDBFC

	arm_func_start ov4_021FDCFC
ov4_021FDCFC: ; 0x021FDCFC
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r1
	mov r7, r2
	mov r5, r0
	ldr r1, _021FDD90 ; =0x02219F4C
	mov r0, r7
	bl strstr
	cmp r0, #0
	movne r6, #1
	moveq r6, #0
	mov r0, r4
	mov r1, r7
	bl ov4_021FE49C
	cmp r6, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r0, [r4, #0x14]
	tst r0, #4
	orrne r0, r0, #0x41
	orreq r0, r0, #0x42
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	and r0, r0, #0xf3
	strb r0, [r4, #0x14]
	bl ov4_021EA840
	ldr r2, [r4, #0x1c]
	mov r1, r4
	sub r0, r0, r2
	str r0, [r4, #0x1c]
	add r0, r5, #8
	bl ov4_021FD85C
	ldr r3, [r5, #0x48]
	ldr ip, [r5, #0x44]
	mov r0, r5
	mov r2, r4
	mov r1, #0
	blx ip
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021FDD90: .word Unk_ov4_02219F4C
	arm_func_end ov4_021FDCFC

	arm_func_start ov4_021FDD94
ov4_021FDD94: ; 0x021FDD94
	mov r0, #1
	bx lr
	arm_func_end ov4_021FDD94

	arm_func_start ov4_021FDD9C
ov4_021FDD9C: ; 0x021FDD9C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x14
	sub sp, sp, #0x800
	movs r8, r1
	mov r1, #8
	mov sb, r0
	str r1, [sp, #8]
	ldrne r7, [sb, #0x24]
	ldreq r7, [sb, #0x20]
	mov r0, r7
	bl ov4_021EAB6C
	cmp r0, #0
	addeq sp, sp, #0x14
	addeq sp, sp, #0x800
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
_021FDDD8:
	add r0, sp, #0xc
	str r0, [sp]
	add r4, sp, #8
	ldr r2, _021FDF2C ; =0x000007FF
	add r1, sp, #0x14
	mov r0, r7
	mov r3, #0
	str r4, [sp, #4]
	bl ov4_021EAE18
	mov r5, r0
	mvn r0, #0
	cmp r5, r0
	addeq sp, sp, #0x14
	addeq sp, sp, #0x800
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	add r4, sp, #0x14
	mov r0, #0
	strb r0, [r4, r5]
	ldr r6, [sb, #8]
	cmp r6, #0
	beq _021FDF10
_021FDE2C:
	cmp r8, #0
	beq _021FDE50
	ldrb r0, [r6, #0x15]
	tst r0, #8
	beq _021FDE50
	ldr r1, [r6, #0x10]
	ldr r0, [sp, #0x10]
	cmp r1, r0
	beq _021FDEA8
_021FDE50:
	ldr r3, [sp, #0x10]
	ldr r2, [r6, #0]
	cmp r2, r3
	bne _021FDE78
	ldrh r1, [r6, #4]
	ldrh r0, [sp, #0xe]
	cmp r1, r0
	beq _021FDEA8
	cmp r8, #0
	bne _021FDEA8
_021FDE78:
	ldr r0, [sb, #0x28]
	cmp r2, r0
	bne _021FDF04
	ldrb r0, [r6, #0x15]
	tst r0, #2
	beq _021FDF04
	ldr r0, [r6, #8]
	cmp r0, r3
	ldreqh r1, [r6, #0xc]
	ldreqh r0, [sp, #0xe]
	cmpeq r1, r0
	bne _021FDF04
_021FDEA8:
	cmp r8, #0
	beq _021FDED0
	mov r0, sb
	mov r1, r6
	mov r2, r4
	mov r3, r5
	bl ov4_021FDD94
	cmp r0, #0
	bne _021FDF10
	b _021FDF04
_021FDED0:
	ldr r0, [sb]
	add r2, sp, #0x14
	cmp r0, #1
	mov r0, sb
	bne _021FDEF4
	mov r1, r6
	mov r3, r5
	bl ov4_021FDBFC
	b _021FDF10
_021FDEF4:
	mov r1, r6
	mov r3, r5
	bl ov4_021FDCFC
	b _021FDF10
_021FDF04:
	ldr r6, [r6, #0x20]
	cmp r6, #0
	bne _021FDE2C
_021FDF10:
	mov r0, r7
	bl ov4_021EAB6C
	cmp r0, #0
	bne _021FDDD8
	add sp, sp, #0x14
	add sp, sp, #0x800
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021FDF2C: .word 0x000007FF
	arm_func_end ov4_021FDD9C

	arm_func_start ov4_021FDF30
ov4_021FDF30: ; 0x021FDF30
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	bl ov4_021EA840
	ldr r3, [r6, #8]
	mov r5, r0
	cmp r3, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r4, _021FDFBC ; =0x000009C4
	mov r7, #1
_021FDF54:
	ldr r0, [r3, #0x1c]
	add r0, r0, #0x1c4
	add r0, r0, #0x800
	cmp r5, r0
	ldmlsia sp!, {r3, r4, r5, r6, r7, pc}
	ldrb r2, [r3, #0x15]
	mov r0, r6
	mov r1, r7
	orr r2, r2, #0x10
	strb r2, [r3, #0x15]
	ldr r2, [r6, #8]
	str r4, [r2, #0x1c]
	ldr r3, [r6, #8]
	ldrb r2, [r3, #0x15]
	and r2, r2, #0xd3
	strb r2, [r3, #0x15]
	ldr r2, [r6, #8]
	ldr r3, [r6, #0x48]
	ldr ip, [r6, #0x44]
	blx ip
	add r0, r6, #8
	bl ov4_021FD828
	ldr r3, [r6, #8]
	cmp r3, #0
	bne _021FDF54
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021FDFBC: .word 0x000009C4
	arm_func_end ov4_021FDF30

	arm_func_start ov4_021FDFC0
ov4_021FDFC0: ; 0x021FDFC0
	stmfd sp!, {r4, lr}
	mov r4, r0
	b _021FDFE0
_021FDFCC:
	add r0, r4, #0x14
	bl ov4_021FD828
	mov r1, r0
	mov r0, r4
	bl ov4_021FD8DC
_021FDFE0:
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r1, r0
	ldmgeia sp!, {r4, pc}
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	bgt _021FDFCC
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FDFC0

	arm_func_start ov4_021FE000
ov4_021FE000: ; 0x021FE000
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x10]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	bl ov4_021FDD9C
	mov r0, r4
	bl ov4_021FDF30
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	ble _021FE038
	mov r0, r4
	bl ov4_021FDFC0
_021FE038:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	ldmneia sp!, {r4, pc}
	ldr r3, [r4, #0x48]
	ldr ip, [r4, #0x44]
	mov r0, r4
	mov r1, #2
	mov r2, #0
	blx ip
	ldmia sp!, {r4, pc}
	arm_func_end ov4_021FE000

	arm_func_start ov4_021FE060
ov4_021FE060: ; 0x021FE060
	ldr r3, [r0, #0x40]
	cmp r3, #0x14
	bxge lr
	add r2, r3, #1
	str r2, [r0, #0x40]
	add r0, r0, r3
	strb r1, [r0, #0x2c]
	bx lr
	arm_func_end ov4_021FE060

	arm_func_start ov4_021FE080
ov4_021FE080: ; 0x021FE080
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #8
	mov r4, r1
	bl ov4_021FD85C
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, r4
	add r0, r5, #0x14
	bl ov4_021FD85C
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021FE080

	.data


	.global Unk_ov4_02219F30
Unk_ov4_02219F30: ; 0x02219F30
	.asciz "\\basic\\\\info\\"
	.space 0x2

	.global Unk_ov4_02219F40
Unk_ov4_02219F40: ; 0x02219F40
	.ascii "\\status\\"
	.space 0x4

	.global Unk_ov4_02219F4C
Unk_ov4_02219F4C: ; 0x02219F4C
	.asciz "\\final\\"

