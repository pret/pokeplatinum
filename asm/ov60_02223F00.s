	.include "macros/function.inc"
	.include "include/ov60_02223F00.inc"

	

	.text


	arm_func_start ov60_02223F00
ov60_02223F00: ; 0x02223F00
	stmfd sp!, {r4, lr}
	mov r4, #0
	mov lr, r4
	cmp r2, #0
	ble _02223F40
	mov r3, r4
_02223F18:
	ldrsb ip, [r1]
	cmp ip, #0
	streqb r3, [r0], #1
	beq _02223F34
	add r4, r4, #1
	add r1, r1, #1
	strb ip, [r0], #1
_02223F34:
	add lr, lr, #1
	cmp lr, r2
	blt _02223F18
_02223F40:
	mov r0, r4
	ldmia sp!, {r4, pc}
	arm_func_end ov60_02223F00

	arm_func_start ov60_02223F48
ov60_02223F48: ; 0x02223F48
	cmp r0, #0x41
	blo _02223F5C
	cmp r0, #0x5a
	subls r0, r0, #0x41
	bxls lr
_02223F5C:
	cmp r0, #0x61
	blo _02223F70
	cmp r0, #0x7a
	subls r0, r0, #0x47
	bxls lr
_02223F70:
	cmp r0, #0x30
	blo _02223F84
	cmp r0, #0x39
	addls r0, r0, #4
	bxls lr
_02223F84:
	cmp r0, #0x2e
	moveq r0, #0x3e
	bxeq lr
	cmp r0, #0x2d
	moveq r0, #0x3f
	mvnne r0, #0
	bx lr
	arm_func_end ov60_02223F48

	arm_func_start ov60_02223FA0
ov60_02223FA0: ; 0x02223FA0
	mov r0, r0, asr #2
	add r0, r0, r0, lsl #1
	bx lr
	arm_func_end ov60_02223FA0

	arm_func_start ov60_02223FAC
ov60_02223FAC: ; 0x02223FAC
	ldr r1, _02223FC4 ; =0x55555556
	add r2, r0, #2
	smull r0, r3, r1, r2
	add r3, r3, r2, lsr #31
	mov r0, r3, lsl #2
	bx lr
	; .align 2, 0
_02223FC4: .word 0x55555556
	arm_func_end ov60_02223FAC

	arm_func_start ov60_02223FC8
ov60_02223FC8: ; 0x02223FC8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, r2
	mov r8, r1
	mov sb, r0
	cmp r7, #3
	movgt r2, #3
	add r0, sp, #0
	mov r1, r8
	mov r6, #0
	bl ov60_02223F00
	cmp r0, #0
	ble _022240AC
	mov r5, #0
	ldr sl, _022240BC ; =0x02228C78
	mov r4, r5
	mov fp, #0x2a
_02224008:
	cmp r7, #3
	strltb r5, [sp, #2]
	cmp r7, #2
	strltb r4, [sp, #1]
	ldrb r1, [sp, #2]
	ldrb r2, [sp]
	ldrb r3, [sp, #1]
	mov lr, r1, asr #6
	mov ip, r2, asr #2
	orr lr, lr, r3, lsl #2
	mov r3, r3, asr #4
	and ip, ip, #0xff
	orr r2, r3, r2, lsl #4
	ldrsb ip, [sl, ip]
	and r2, r2, #0x3f
	ldrsb r2, [sl, r2]
	strb ip, [sb]
	and ip, lr, #0x3f
	cmp r0, #1
	strb r2, [sb, #1]
	ldrgtsb r2, [sl, ip]
	and r1, r1, #0x3f
	add r8, r8, r0
	movle r2, fp
	cmp r0, #2
	ldrgtsb r1, [sl, r1]
	strb r2, [sb, #2]
	add r6, r6, #4
	movle r1, #0x2a
	strb r1, [sb, #3]
	add sb, sb, #4
	subs r7, r7, r0
	beq _022240AC
	cmp r7, #3
	movgt r2, #3
	movle r2, r7
	add r0, sp, #0
	mov r1, r8
	bl ov60_02223F00
	cmp r0, #0
	bgt _02224008
_022240AC:
	mov r1, #0
	mov r0, r6
	strb r1, [sb]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022240BC: .word 0x02228C78
	arm_func_end ov60_02223FC8

	arm_func_start ov60_022240C0
ov60_022240C0: ; 0x022240C0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov sb, r0
	mov r7, r2
	add r0, sp, #3
	mov r2, #4
	mov r6, #0
	mov r8, r1
	bl ov60_02223F00
	mov r5, r0
	mov r4, r6
	b _022241CC
_022240F0:
	ldrb r0, [sp, #3]
	mov r1, #0
	strb r1, [sp]
	strb r1, [sp, #1]
	strb r1, [sp, #2]
	bl ov60_02223F48
	movs r4, r0
	bmi _02224178
	ldrb r0, [sp, #4]
	mov r1, r4, lsl #2
	strb r1, [sp]
	bl ov60_02223F48
	movs r4, r0
	bmi _02224178
	ldrsb r2, [sp]
	ldrb r0, [sp, #5]
	mov r1, r4, lsl #4
	orr r2, r2, r4, asr #4
	strb r2, [sp]
	strb r1, [sp, #1]
	bl ov60_02223F48
	movs r4, r0
	bmi _02224178
	ldrsb r2, [sp, #1]
	ldrb r0, [sp, #6]
	mov r1, r4, lsl #6
	orr r2, r2, r4, asr #2
	strb r1, [sp, #2]
	strb r2, [sp, #1]
	bl ov60_02223F48
	movs r4, r0
	ldrplsb r0, [sp, #2]
	orrpl r0, r0, r4
	strplb r0, [sp, #2]
_02224178:
	sub r1, r5, #1
	cmp r1, #0
	mov r2, #0
	ble _022241A0
	add r3, sp, #0
_0222418C:
	ldrsb r0, [r3], #1
	add r2, r2, #1
	cmp r2, r1
	strb r0, [sb], #1
	blt _0222418C
_022241A0:
	sub r0, r5, #1
	sub r7, r7, #4
	cmp r7, #0
	add r8, r8, r5
	add r6, r6, r0
	ble _022241DC
	add r0, sp, #3
	mov r1, r8
	mov r2, #4
	bl ov60_02223F00
	mov r5, r0
_022241CC:
	cmp r5, #0
	ble _022241DC
	cmp r4, #0
	bge _022240F0
_022241DC:
	mov r0, r6
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov60_022240C0

	.rodata


	.global Unk_ov60_02228C78
Unk_ov60_02228C78: ; 0x02228C78
	.incbin "incbin/overlay60_rodata.bin", 0x2C, 0x41

