	.include "macros/function.inc"
	.include "overlay004/ov4_02206A3C.inc"

	

	.text


	arm_func_start ov4_02206A3C
ov4_02206A3C: ; 0x02206A3C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0xc
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl ov4_022082CC
	cmp r0, #0
	addne sp, sp, #0xc
	mvnne r0, #0x1b
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldr r0, [sp, #0x2c]
	tst r0, #4
	bne _02206A80
	ldrsb r0, [sb, #0x72]
	cmp r0, #0
	bne _02206A9C
_02206A80:
	ldrsb r0, [sb, #0x73]
	cmp r0, #4
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r5, #0
	b _02206AB4
_02206A9C:
	bl OS_GetProcMode
	cmp r0, #0x12
	addeq sp, sp, #0xc
	mvneq r0, #0x1b
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	mov r5, #1
_02206AB4:
	cmp sb, #0
	mov r1, #0
	beq _02206ACC
	ldrsh r0, [sb, #0x70]
	tst r0, #1
	movne r1, #1
_02206ACC:
	cmp r1, #0
	addeq sp, sp, #0xc
	mvneq r0, #0x26
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, pc}
	ldrsb r0, [sb, #0x73]
	mov r1, #1
	cmp r0, #0
	cmpne r0, #4
	movne r1, #0
	cmp r1, #0
	beq _02206B1C
	ldrsh r0, [sb, #0x70]
	tst r0, #4
	beq _02206B10
	ldrsh r0, [sb, #0x70]
	tst r0, #8
	beq _02206B1C
_02206B10:
	add sp, sp, #0xc
	mvn r0, #0x37
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02206B1C:
	ldr r4, [sb, #0x64]
	tst r5, #1
	add r0, r4, #0xe0
	bne _02206B44
	bl OS_TryLockMutex
	cmp r0, #0
	bne _02206B48
	add sp, sp, #0xc
	mvn r0, #5
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
_02206B44:
	bl OS_LockMutex
_02206B48:
	ldr r0, [sp, #0x28]
	ldr ip, [sp, #0x2c]
	str r0, [sp]
	mov r0, sb
	mov r1, r8
	mov r2, r7
	mov r3, r6
	stmib sp, {r5, ip}
	bl ov4_02206B84
	mov r5, r0
	add r0, r4, #0xe0
	bl OS_UnlockMutex
	mov r0, r5
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_02206A3C

	arm_func_start ov4_02206B84
ov4_02206B84: ; 0x02206B84
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	ldr r4, [sp, #0x28]
	mov r7, r0
	tst r4, #2
	ldr r4, [r7, #0x64]
	cmpne r4, #0
	movne r6, #1
	moveq r6, #0
	cmp r6, #0
	ldrnesb r5, [r4, #0xfe]
	movne r0, #1
	strneb r0, [r4, #0xfe]
	ldrsb r0, [r7, #0x73]
	cmp r0, #1
	bne _02206BE4
	ldr r0, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str ip, [sp, #4]
	bl ov4_02207044
	mov r8, r0
	b _02206C0C
_02206BE4:
	ldr r0, [sp, #0x20]
	ldr ip, [sp, #0x24]
	str r0, [sp]
	mov r0, r7
	str ip, [sp, #4]
	bl ov4_02206C20
	movs r8, r0
	bmi _02206C0C
	mov r0, r7
	bl ov4_02206FAC
_02206C0C:
	cmp r6, #0
	strneb r5, [r4, #0xfe]
	mov r0, r8
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov4_02206B84

	arm_func_start ov4_02206C20
ov4_02206C20: ; 0x02206C20
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldrsb ip, [r7, #0x73]
	mov r6, r1
	mov r5, r2
	mov r4, r3
	cmp ip, #4
	bne _02206C50
	ldr r4, [sp, #0x18]
	str r4, [sp]
	bl ov4_02206E10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02206C50:
	ldr ip, [sp, #0x18]
	str ip, [sp]
	bl ov4_02206C94
	mvn r1, #5
	cmp r0, r1
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, [sp, #0x1c]
	tst r1, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr ip, [sp, #0x18]
	mov r0, r7
	mov r1, r6
	mov r2, r5
	mov r3, r4
	str ip, [sp]
	bl ov4_02206E10
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_02206C20

	arm_func_start ov4_02206C94
ov4_02206C94: ; 0x02206C94
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	bl OS_DisableInterrupts
	add r1, sp, #8
	mov r4, r0
	str r1, [sp]
	add r1, sp, #0xc
	mov r0, sb
	add r2, sp, #6
	add r3, sp, #4
	bl ov4_02206D9C
	cmp r0, #0
	beq _02206D34
	ldr r5, [sp, #0xc]
	cmp r5, #0
	mvneq r5, #5
	beq _02206D50
	ldrsb r1, [sb, #0x73]
	cmp r7, r5
	mov r2, #1
	movgt r7, r5
	cmp r1, #0
	cmpne r1, #4
	movne r2, #0
	cmp r2, #0
	mov r1, r8
	mov r2, r7
	movne r5, r7
	bl MI_CpuCopy8
	ldr r1, [sb, #0x64]
	ldrsb r0, [r1, #0xfe]
	cmp r0, #0
	ldreq r0, [r1, #0xf8]
	addeq r0, r0, r5
	streq r0, [r1, #0xf8]
	b _02206D50
_02206D34:
	ldr r0, [sp, #0xc]
	cmp r0, #0
	ldrsh r0, [sb, #0x70]
	moveq r5, #0
	mvnne r5, #0x1b
	bic r0, r0, #6
	strh r0, [sb, #0x70]
_02206D50:
	cmp r5, #0
	blt _02206D88
	cmp r6, #0
	ldrne r1, [sp, #0x30]
	cmpne r1, #0
	beq _02206D78
	ldrh r0, [sp, #4]
	strh r0, [r6]
	ldr r0, [sp, #8]
	str r0, [r1, #0]
_02206D78:
	ldrh r0, [sb, #0x74]
	cmp r0, #0
	ldreqh r0, [sp, #6]
	streqh r0, [sb, #0x74]
_02206D88:
	mov r0, r4
	bl OS_RestoreInterrupts
	mov r0, r5
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov4_02206C94

	arm_func_start ov4_02206D9C
ov4_02206D9C: ; 0x02206D9C
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, [r0, #0x64]
	ldr r4, [r0, #0xc4]
	ldr r5, [r0, #0xf8]
	ldr r0, [r4, #0x44]
	subs lr, r0, r5
	bmi _02206DF4
	ldrh ip, [r4, #0xa]
	ldr r0, [sp, #0x10]
	cmp lr, #0
	strh ip, [r2]
	ldrh r2, [r4, #0x18]
	strh r2, [r3]
	ldr r2, [r4, #0x1c]
	str r2, [r0, #0]
	str lr, [r1]
	bne _02206E04
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq _02206E04
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02206DF4:
	mvn r0, #0
	str r0, [r1, #0]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_02206E04:
	ldr r0, [r4, #0x40]
	add r0, r0, r5
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_02206D9C

	arm_func_start ov4_02206E10
ov4_02206E10: ; 0x02206E10
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	ldr r0, _02206E58 ; =ov4_02206E5C
	mov r1, r7
	mov r2, #1
	mov r4, r3
	bl ov4_02205FF4
	mov r1, r0
	str r6, [r1, #0x10]
	str r5, [r1, #0x14]
	ldr r2, [sp, #0x18]
	str r4, [r1, #0x18]
	mov r0, r7
	str r2, [r1, #0x1c]
	bl ov4_0220613C
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02206E58: .word ov4_02206E5C
	arm_func_end ov4_02206E10

	arm_func_start ov4_02206E5C
ov4_02206E5C: ; 0x02206E5C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x14
	ldr r7, [r0, #4]
	ldr r1, [r0, #0x10]
	ldr r8, [r7, #0x64]
	str r1, [sp, #0xc]
	ldr r1, [r0, #0x18]
	ldr sl, [r0, #0x14]
	ldr r0, [r0, #0x1c]
	ldr sb, [r8, #0xf8]
	str r1, [sp, #8]
	str r0, [sp, #4]
	mov r4, #0
	mov r5, #1
	mov fp, #0xa
	add r6, sp, #0x10
_02206E9C:
	mov r0, r6
	bl ov4_0220C1D0
	cmp r0, #0
	beq _02206EF0
	ldr r1, [sp, #0x10]
	sub r1, r1, sb
	cmp r1, #0
	bgt _02206EF0
	ldrsb r0, [r7, #0x73]
	mov r1, r5
	cmp r0, #0
	cmpne r0, #4
	movne r1, r4
	cmp r1, #0
	ldrneb r0, [r7, #8]
	cmpne r0, #4
	movne r0, #0
	bne _02206EF0
	mov r0, fp
	bl OS_Sleep
	b _02206E9C
_02206EF0:
	ldrsh r1, [r7, #0x70]
	tst r1, #0x80
	addne sp, sp, #0x14
	mvnne r0, #0xe
	ldmneia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrsb r1, [r7, #0x73]
	cmp r1, #4
	bne _02206F4C
	cmp r0, #0
	addeq sp, sp, #0x14
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r1, [sp, #0x10]
	cmp sl, r1
	movhi sl, r1
	ldr r1, [sp, #0xc]
	mov r2, sl
	bl MI_CpuCopy8
	mov r0, sl
	bl ov4_0220C2C4
	add sp, sp, #0x14
	mov r0, sl
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
_02206F4C:
	cmp r0, #0
	moveq r4, #0
	beq _02206F78
	ldr r4, [sp, #4]
	ldr r1, [sp, #0xc]
	ldr r3, [sp, #8]
	mov r0, r7
	mov r2, sl
	str r4, [sp]
	bl ov4_02206C94
	mov r4, r0
_02206F78:
	cmp r4, #0
	addle sp, sp, #0x14
	movle r0, r4
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldrh r0, [r8, #0xfc]
	ldr r1, [r8, #0xf8]
	cmp r1, r0
	blt _02206FA0
	mov r0, r7
	bl ov4_02207008
_02206FA0:
	mov r0, r4
	add sp, sp, #0x14
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov4_02206E5C

	arm_func_start ov4_02206FAC
ov4_02206FAC: ; 0x02206FAC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r1, [r4, #0x64]
	ldrh r0, [r1, #0xfc]
	ldr r1, [r1, #0xf8]
	cmp r1, r0
	movlt r0, #0
	ldmltia sp!, {r4, pc}
	ldr r0, _02206FF4 ; =ov4_02206FF8
	mov r1, r4
	mov r2, #0
	bl ov4_02205FF4
	movs r1, r0
	mvneq r0, #0x20
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl ov4_0220613C
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02206FF4: .word ov4_02206FF8
	arm_func_end ov4_02206FAC

	arm_func_start ov4_02206FF8
ov4_02206FF8: ; 0x02206FF8
	ldr ip, _02207004 ; =ov4_02207008
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_02207004: .word ov4_02207008
	arm_func_end ov4_02206FF8

	arm_func_start ov4_02207008
ov4_02207008: ; 0x02207008
	stmfd sp!, {r4, r5, r6, lr}
	ldr r4, [r0, #0x64]
	bl OS_DisableInterrupts
	ldr r6, [r4, #0xf8]
	mov r5, r0
	cmp r6, #0
	beq _02207034
	mov r1, #0
	mov r0, r6
	str r1, [r4, #0xf8]
	bl ov4_0220C2C4
_02207034:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r6
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_02207008

	arm_func_start ov4_02207044
ov4_02207044: ; 0x02207044
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0xc
	mov sl, r0
	ldr r6, [sl, #0x64]
	str r1, [sp]
	ldr r0, [r6, #0x104]
	str r2, [sp, #4]
	mov fp, r3
	bl OS_DisableInterrupts
	ldr r7, [r6, #0x104]
	str r0, [sp, #8]
	cmp r7, #0
	bne _022070E0
	ldr r0, [sp, #0x34]
	mov r4, #1
	and sb, r0, #1
	mov r5, #0
_02207088:
	cmp sb, #0
	mvneq r8, #5
	beq _022070E0
	add r0, r6, #0x10c
	bl OS_SleepThread
	mov r0, sl
	bl ov4_022082CC
	cmp r0, #0
	bne _022070CC
	mov r1, r5
	cmp sl, #0
	beq _022070C4
	ldrsh r0, [sl, #0x70]
	tst r0, #1
	movne r1, r4
_022070C4:
	cmp r1, #0
	bne _022070D4
_022070CC:
	mvn r8, #0x37
	b _022070E0
_022070D4:
	ldr r7, [r6, #0x104]
	cmp r7, #0
	beq _02207088
_022070E0:
	cmp r7, #0
	beq _02207170
	ldrh r1, [r7, #4]
	ldr r0, [sp, #4]
	cmp r0, r1
	strgt r1, [sp, #4]
	ldr r1, [sp]
	ldr r2, [sp, #4]
	add r0, r7, #0xc
	bl MI_CpuCopy8
	cmp fp, #0
	ldrneh r0, [r7, #6]
	ldr r1, [sp, #0x30]
	strneh r0, [fp]
	cmp r1, #0
	ldrne r0, [r7, #8]
	strne r0, [r1]
	ldrsb r0, [r6, #0xfe]
	ldrh r8, [r7, #4]
	cmp r0, #0
	bne _02207170
	ldr r0, [r7, #0]
	ldr r1, _02207184 ; =0x0221A134
	str r0, [r6, #0x104]
	ldr r0, [r7, #0]
	cmp r0, #0
	moveq r0, #0
	streq r0, [r6, #0x100]
	ldr r1, [r1, #0]
	mov r0, r7
	ldr r1, [r1, #0x1c]
	blx r1
	add r0, r6, #0x100
	ldrh r1, [r0, #8]
	sub r1, r1, r8
	strh r1, [r0, #8]
_02207170:
	ldr r0, [sp, #8]
	bl OS_RestoreInterrupts
	mov r0, r8
	add sp, sp, #0xc
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02207184: .word 0x0221A134
	arm_func_end ov4_02207044

	arm_func_start ov4_02207188
ov4_02207188: ; 0x02207188
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r2
	ldr r4, [r7, #0x64]
	mov sb, r0
	mov r8, r1
	bl OS_DisableInterrupts
	add r1, r4, #0x100
	ldrh r2, [r1, #8]
	ldrh r1, [r1, #0xa]
	mov r6, r0
	add r0, r2, r8
	cmp r1, r0
	blo _0220724C
	ldr r1, _02207294 ; =0x0221A134
	add r0, r8, #0xc
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	blx r1
	movs r5, r0
	beq _02207238
	add r1, r4, #0x100
	ldrh r3, [r1, #8]
	mov r2, #0
	mov r0, sb
	add r3, r3, r8
	strh r3, [r1, #8]
	str r2, [r5, #0]
	strh r8, [r5, #4]
	ldrh r3, [r7, #0x18]
	mov r2, r8
	add r1, r5, #0xc
	strh r3, [r5, #6]
	ldr r3, [r7, #0x1c]
	str r3, [r5, #8]
	bl MI_CpuCopy8
	ldr r0, [r4, #0x100]
	cmp r0, #0
	ldrne r0, [r4, #0x100]
	strne r5, [r0]
	str r5, [r4, #0x100]
	ldr r0, [r4, #0x104]
	cmp r0, #0
	streq r5, [r4, #0x104]
	b _0220725C
_02207238:
	ldr r0, _02207298 ; =0x0221DC54
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	b _0220725C
_0220724C:
	ldr r0, _02207298 ; =0x0221DC54
	ldr r1, [r0, #4]
	add r1, r1, #1
	str r1, [r0, #4]
_0220725C:
	ldrh r0, [r7, #0x74]
	cmp r0, #0
	ldreqh r0, [r7, #0xa]
	streqh r0, [r7, #0x74]
	ldrh r1, [r7, #0x1a]
	add r0, r4, #0x10c
	strh r1, [r7, #0x18]
	ldr r1, [r7, #0x20]
	str r1, [r7, #0x1c]
	bl OS_WakeupThread
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02207294: .word 0x0221A134
_02207298: .word 0x0221DC54
	arm_func_end ov4_02207188

	.bss


	.global Unk_ov4_0221DC54
Unk_ov4_0221DC54: ; 0x0221DC54
	.space 0x8

