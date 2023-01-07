	.include "macros/function.inc"
	.include "include/dwci_lobbycallb.inc"

	

	.text


	arm_func_start ov66_0224640C
ov66_0224640C: ; 0x0224640C
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0x1c
	mov r4, r0
	ldr lr, _02246498 ; =0x02259138
	add r3, sp, #0x10
	str r1, [sp, #0x14]
	mov ip, #0
	add r0, sp, #4
	add r2, sp, #8
	mov r1, r4
	str lr, [sp, #0x10]
	str ip, [sp, #0x18]
	str r3, [sp, #8]
	bl ov66_02243C94
	ldr r1, [sp, #4]
	add r0, r4, #4
	cmp r1, r0
	str r1, [sp, #0xc]
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, pc}
	ldr r0, [r1, #0xc]
	cmp r0, #0
	beq _02246478
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_02246478:
	add r1, sp, #0xc
	ldr r2, [r1, #0]
	add r0, sp, #0
	mov r1, r4
	bl ov66_02246518
	mov r0, #1
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02246498: .word 0x02259138
	arm_func_end ov66_0224640C

	arm_func_start ov66_0224649C
ov66_0224649C: ; 0x0224649C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0xc
	mov r5, r0
	ldr r0, [r5, #8]
	add r4, r5, #4
	str r0, [sp, #8]
	cmp r0, r4
	addeq sp, sp, #0xc
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	add r8, sp, #8
	add r7, sp, #0
	add r6, sp, #4
_022464CC:
	ldr r0, [r0, #0xc]
	cmp r0, #0
	beq _022464E4
	ldr r1, [r0, #0]
	ldr r1, [r1, #4]
	blx r1
_022464E4:
	ldr r1, [sp, #8]
	mov r0, r8
	str r1, [sp, #4]
	bl ov66_0223AD6C
	ldr r2, [r6, #0]
	mov r0, r7
	mov r1, r5
	bl ov66_02246518
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _022464CC
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_0224649C

	arm_func_start ov66_02246518
ov66_02246518: ; 0x02246518
	stmfd sp!, {r0, r1, r2, r3}
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	ldr r4, [sp, #0x18]
	ldr r1, [r5, #8]
	mov r6, r0
	cmp r4, r1
	bne _02246548
	add r0, sp, #0x18
	bl ov66_0223AD6C
	ldr r0, [sp, #0x18]
	str r0, [r5, #8]
_02246548:
	ldr r1, [r5, #4]
	mov r0, r4
	bl ov66_0223AFE4
	str r0, [r6, #0]
	cmp r4, #0
	beq _02246570
	mov r0, #0
	mov r1, r4
	mov r2, r0
	bl DWC_Free
_02246570:
	ldr r0, [r5, #0]
	sub r0, r0, #1
	str r0, [r5, #0]
	ldmia sp!, {r4, r5, r6, lr}
	add sp, sp, #0x10
	bx lr
	arm_func_end ov66_02246518