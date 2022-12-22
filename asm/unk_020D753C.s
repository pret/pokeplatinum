	.include "macros/function.inc"

	

	.text


	arm_func_start qsort
qsort: ; 0x020D753C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	mov sb, r1
	cmp sb, #2
	mov sl, r0
	mov r8, r2
	mov r7, r3
	addlo sp, sp, #0x10
	ldmloia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sb, lsr #1
	add fp, r0, #1
	sub r0, fp, #1
	mla r0, r8, r0, sl
	sub r2, sb, #1
	str r0, [sp, #0xc]
	mla r0, r8, r2, sl
	str r0, [sp, #8]
	mul r0, fp, r8
	mvn r1, #0
	str r0, [sp, #4]
	mul r0, r8, r1
	str r0, [sp]
_020D7594:
	cmp fp, #1
	bls _020D75BC
	ldr r0, [sp, #4]
	sub fp, fp, #1
	sub r0, r0, r8
	str r0, [sp, #4]
	ldr r0, [sp, #0xc]
	sub r0, r0, r8
	str r0, [sp, #0xc]
	b _020D7604
_020D75BC:
	mov r2, r8
	ldr r4, [sp, #8]
	ldr r3, [sp, #0xc]
	cmp r8, #0
	beq _020D75E8
_020D75D0:
	ldrsb r0, [r4]
	ldrsb r1, [r3]
	subs r2, r2, #1
	strb r0, [r3], #1
	strb r1, [r4], #1
	bne _020D75D0
_020D75E8:
	sub sb, sb, #1
	cmp sb, #1
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [sp, #8]
	sub r0, r0, r8
	str r0, [sp, #8]
_020D7604:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r4, fp
	add r0, r1, r0
	cmp sb, fp, lsl #1
	add r5, sl, r0
	blo _020D7594
_020D7620:
	mov r4, r4, lsl #1
	sub r0, r4, #1
	mov r6, r5
	mla r5, r8, r0, sl
	cmp sb, r4
	bls _020D7650
	mov r0, r5
	add r1, r5, r8
	blx r7
	cmp r0, #0
	addlt r4, r4, #1
	addlt r5, r5, r8
_020D7650:
	mov r0, r6
	mov r1, r5
	blx r7
	cmp r0, #0
	bge _020D7594
	mov r2, r8
	mov r3, r5
	cmp r8, #0
	beq _020D768C
_020D7674:
	ldrsb r1, [r6]
	ldrsb r0, [r3]
	subs r2, r2, #1
	strb r0, [r6], #1
	strb r1, [r3], #1
	bne _020D7674
_020D768C:
	cmp sb, r4, lsl #1
	bhs _020D7620
	b _020D7594
_020D7698:
	.byte 0x10, 0xD0, 0x8D, 0xE2, 0xF8, 0x8F, 0xBD, 0xE8
	arm_func_end qsort