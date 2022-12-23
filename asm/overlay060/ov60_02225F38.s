	.include "macros/function.inc"
	.include "overlay060/ov60_02225F38.inc"

	

	.text


	arm_func_start ov60_02225F38
ov60_02225F38: ; 0x02225F38
	stmfd sp!, {r3, lr}
	cmp r1, #0x400
	bge _02225F54
	mov r0, #0
	str r0, [r2, #0]
	str r1, [r3, #0]
	ldmia sp!, {r3, pc}
_02225F54:
	sub ip, r1, #0x400
	movs ip, ip, asr #9
	sub lr, ip, #1
	ldr ip, [r0, #0x1c]
	beq _02225F78
_02225F68:
	cmp lr, #0
	sub lr, lr, #1
	ldr ip, [ip]
	bne _02225F68
_02225F78:
	ldr r0, _02225F90 ; =0x000001FF
	sub r1, r1, #0x400
	str ip, [r2]
	and r0, r1, r0
	str r0, [r3, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225F90: .word 0x000001FF
	arm_func_end ov60_02225F38

	arm_func_start ov60_02225F94
ov60_02225F94: ; 0x02225F94
	ldr r3, [r1, #0]
	cmp r3, #0
	bne _02225FD4
	ldr r3, [r2, #0]
	cmp r3, #0x400
	bge _02225FC0
	add r1, r3, #1
	str r1, [r2, #0]
	add r0, r0, r3
	ldrsb r0, [r0, #0x20]
	bx lr
_02225FC0:
	mov r3, #0
	str r3, [r2, #0]
	ldr r0, [r0, #0x1c]
	str r0, [r1, #0]
	b _02225FF4
_02225FD4:
	ldr r0, [r2, #0]
	cmp r0, #0x200
	bne _02225FF4
	mov r0, #0
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	ldr r0, [r0, #0]
	str r0, [r1, #0]
_02225FF4:
	ldr r3, [r2, #0]
	add r0, r3, #1
	str r0, [r2, #0]
	ldr r0, [r1, #0]
	add r0, r0, r3
	ldrsb r0, [r0, #4]
	bx lr
	arm_func_end ov60_02225F94

	arm_func_start ov60_02226010
ov60_02226010: ; 0x02226010
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov r6, #0
	movs r7, r3
	mov sl, r0
	subne r0, r6, #1
	mov sb, r1
	mov r8, r2
	strne r0, [r7]
	cmp sb, r8
	bge _022260D4
	add r2, sp, #4
	add r3, sp, #0
	mov r0, sl
	mov r1, sb
	bl ov60_02225F38
	cmp sb, r8
	bge _022260D4
	mov fp, #1
	add r5, sp, #4
	add r4, sp, #0
_02226064:
	mov r0, sl
	mov r1, r5
	mov r2, r4
	bl ov60_02225F94
	cmp r0, #0x3a
	bne _02226090
	cmp r7, #0
	beq _02226090
	ldr r1, [r7, #0]
	cmp r1, #0
	strlt sb, [r7]
_02226090:
	cmp r6, #0
	bne _022260A4
	cmp r0, #0xd
	moveq r6, fp
	b _022260C8
_022260A4:
	cmp r0, #0xa
	bne _022260C4
	sub r0, r8, #1
	cmp sb, r0
	moveq r0, #0
	add sp, sp, #8
	addne r0, sb, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_022260C4:
	mov r6, #0
_022260C8:
	add sb, sb, #1
	cmp sb, r8
	blt _02226064
_022260D4:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov60_02226010

	arm_func_start ov60_022260E0
ov60_022260E0: ; 0x022260E0
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r6, r2
	mov r8, r0
	cmp r7, r6
	bge _02226144
	add r2, sp, #4
	add r3, sp, #0
	bl ov60_02225F38
	cmp r7, r6
	bge _02226144
	add r5, sp, #4
	add r4, sp, #0
_02226118:
	mov r0, r8
	mov r1, r5
	mov r2, r4
	bl ov60_02225F94
	cmp r0, #0x20
	addne sp, sp, #8
	movne r0, r7
	ldmneia sp!, {r4, r5, r6, r7, r8, pc}
	add r7, r7, #1
	cmp r7, r6
	blt _02226118
_02226144:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov60_022260E0

	arm_func_start ov60_02226150
ov60_02226150: ; 0x02226150
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sb, r1
	mov r4, r2
	mov sl, r0
	mov r8, r3
	cmp sb, r4
	ldr r7, [sp, #0x30]
	bge _02226214
	add r2, sp, #4
	add r3, sp, #0
	bl ov60_02225F38
	add r1, sp, #4
	add r2, sp, #0
	mov r0, sl
	bl ov60_02225F94
	sub r6, r4, #1
	add r5, sp, #4
	add r4, sp, #0
	mov fp, #0
	b _022261D8
_022261A4:
	cmp r2, #0
	cmpne r2, #0x20
	cmpne r2, r7
	cmpne sb, r6
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r0, sl
	mov r1, r5
	mov r2, r4
	bl ov60_02225F94
	add sb, sb, #1
	add r8, r8, #1
_022261D8:
	ldrsb r2, [r8]
	mov r1, fp
	cmp r2, #0x41
	blt _022261F0
	cmp r2, #0x5a
	movle r1, #1
_022261F0:
	cmp r1, #0
	addne r1, r2, #0x20
	moveq r1, r2
	cmp r0, #0x41
	blt _0222620C
	cmp r0, #0x5a
	addle r0, r0, #0x20
_0222620C:
	cmp r0, r1
	beq _022261A4
_02226214:
	mvn r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end ov60_02226150

	arm_func_start ov60_02226220
ov60_02226220: ; 0x02226220
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov r7, r2
	mov r6, r3
	ldr r0, [r4, #0]
	add r2, r7, r6
	mov r8, r1
	cmp r2, r0
	bgt _02226300
	cmp r6, #0
	beq _022262F8
	cmp r7, #0x400
	bge _02226280
	rsb r5, r7, #0x400
	cmp r6, r5
	movle r5, r6
	add r1, r4, #0x20
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl ov60_0222716C
	add r7, r7, r5
	sub r6, r6, r5
	add r8, r8, r5
_02226280:
	cmp r6, #0
	beq _022262F8
	sub r2, r7, #0x400
	ldr r0, _02226308 ; =0x000001FF
	movs r1, r2, asr #9
	and r7, r2, r0
	sub r0, r1, #1
	ldr r4, [r4, #0x1c]
	beq _022262B4
_022262A4:
	cmp r0, #0
	sub r0, r0, #1
	ldr r4, [r4, #0]
	bne _022262A4
_022262B4:
	cmp r6, #0
	beq _022262F8
	ldr sb, _02226308 ; =0x000001FF
_022262C0:
	rsb r5, r7, #0x200
	cmp r6, r5
	movle r5, r6
	add r1, r4, #4
	mov r0, r8
	mov r2, r5
	add r1, r1, r7
	bl ov60_0222716C
	add r0, r7, r5
	and r7, r0, sb
	subs r6, r6, r5
	add r8, r8, r5
	ldr r4, [r4, #0]
	bne _022262C0
_022262F8:
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_02226300:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_02226308: .word 0x000001FF
	arm_func_end ov60_02226220

	arm_func_start ov60_0222630C
ov60_0222630C: ; 0x0222630C
	ldr r0, [r0, #0xc]
	cmp r0, r1
	movls r0, #1
	movhi r0, #0
	bx lr
	arm_func_end ov60_0222630C

	arm_func_start ov60_02226320
ov60_02226320: ; 0x02226320
	stmfd sp!, {r3, lr}
	ldr ip, [r0, #0x30]
	mov lr, r2
	str r3, [sp]
	ldr r2, [ip, #0x18]
	ldr r3, [ip, #0xc]
	add r2, r2, lr
	sub r3, r3, lr
	bl ov60_02227024
	ldmia sp!, {r3, pc}
	arm_func_end ov60_02226320

	arm_func_start ov60_02226348
ov60_02226348: ; 0x02226348
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	ldr r4, [r8, #0x30]
	mov r6, r2
	mov r7, r1
	mov r0, r4
	mov r1, r6
	mov r5, r3
	bl ov60_0222630C
	cmp r0, #0
	addne sp, sp, #4
	ldrne r0, _022263B4 ; =0xFFFFFC15
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [r4, #0xc]
	ldr r1, [sp, #0x20]
	sub r3, r0, r6
	str r1, [sp]
	ldr r2, [r4, #0x18]
	cmp r5, r3
	movle r3, r5
	mov r0, r8
	mov r1, r7
	add r2, r2, r6
	bl ov60_02227024
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_022263B4: .word 0xFFFFFC15
	arm_func_end ov60_02226348