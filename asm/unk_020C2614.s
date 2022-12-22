	.include "macros/function.inc"
	.include "include/unk_020C2614.inc"

	

	.text


	arm_func_start OS_InitContext
OS_InitContext: ; 0x020C2614
	add r1, r1, #4
	str r1, [r0, #0x40]
	str r2, [r0, #0x44]
	sub r2, r2, #0x40
	tst r2, #4
	bne _020C2630
	b _020C2634
_020C2630:
	sub r2, r2, #4
_020C2634:
	str r2, [r0, #0x38]
	ands r1, r1, #1
	bne _020C2644
	b _020C2648
_020C2644:
	mov r1, #0x3f
_020C2648:
	beq _020C2650
	b _020C2654
_020C2650:
	mov r1, #0x1f
_020C2654:
	str r1, [r0, #0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	str r1, [r0, #0x3c]
	bx lr
	arm_func_end OS_InitContext

	arm_func_start OS_SaveContext
OS_SaveContext: ; 0x020C2698
	stmfd sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _020C26E0 ; =CP_SaveContext
	blx r1
	ldmia sp!, {r0, lr}
	add r1, r0, #0
	mrs r2, cpsr
	str r2, [r1, #0], #4
	mov r0, #0xd3
	msr cpsr_c, r0
	str sp, [r1, #0x40]
	msr cpsr_c, r2
	mov r0, #1
	stmia r1, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr}
	add r0, pc, #0x8 ; =_020C26E0
	str r0, [r1, #0x3c]
	mov r0, #0
	bx lr
	; .align 2, 0
_020C26E0: .word CP_SaveContext
	arm_func_end OS_SaveContext

	arm_func_start OS_LoadContext
OS_LoadContext: ; 0x020C26E4
	stmfd sp!, {r0, lr}
	add r0, r0, #0x48
	ldr r1, _020C2724 ; =CPi_RestoreContext
	blx r1
	ldmia sp!, {r0, lr}
	mrs r1, cpsr
	bic r1, r1, #0x1f
	orr r1, r1, #0xd3
	msr cpsr_c, r1
	ldr r1, [r0, #0], #4
	msr spsr_fsxc, r1
	ldr sp, [r0, #0x40]
	ldr lr, [r0, #0x3c]
	ldmia r0, {r0, r1, r2, r3, r4, r5, r6, r7, r8, sb, sl, fp, ip, sp, lr} ^
	mov r0, r0
	subs pc, lr, #4
	; .align 2, 0
_020C2724: .word CPi_RestoreContext
	arm_func_end OS_LoadContext