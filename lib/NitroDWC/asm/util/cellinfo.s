	.include "macros/function.inc"
	.include "include/cellinfo.inc"

	

	.text


	arm_func_start ov18_02243E74
ov18_02243E74: ; 0x02243E74
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r4, r0
	mov r0, r1
	add r1, sp, #0
	mov r2, #4
	bl ov18_02243738
	ldr r1, _02243EA0 ; =0x022533B4
	str r0, [r1, r4, lsl #2]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_02243EA0: .word Unk_ov18_022533B4
	arm_func_end ov18_02243E74

	arm_func_start ov18_02243EA4
ov18_02243EA4: ; 0x02243EA4
	stmfd sp!, {r4, lr}
	ldr r1, _02243EC8 ; =0x022533B4
	mov r4, r0
	ldr r0, [r1, r4, lsl #2]
	bl ov18_0224382C
	ldr r0, _02243EC8 ; =0x022533B4
	mov r1, #0
	str r1, [r0, r4, lsl #2]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02243EC8: .word Unk_ov18_022533B4
	arm_func_end ov18_02243EA4

	arm_func_start ov18_02243ECC
ov18_02243ECC: ; 0x02243ECC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #8
	ldr r3, _02243F5C ; =0x022533B4
	mov r5, r2
	ldr r6, [r3, r0, lsl #2]
	mov r2, r1, lsl #3
	add r0, r6, r1, lsl #3
	ldr r3, [r0, #4]
	ldrh r4, [r6, r2]
	add r1, sp, #0
	mov r0, #0
	mov r2, #8
	add sb, r6, r3
	bl MIi_CpuClear32
	cmp r4, #0
	mov sl, #0
	addle sp, sp, #8
	ldmleia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	add r8, sp, #0
	mov r7, #6
	mov r6, #8
_02243F20:
	mov r0, sb
	mov r1, r8
	mov r2, r7
	bl MIi_CpuCopy16
	mov r0, r8
	mov r1, r5
	mov r2, r6
	bl MIi_CpuCopy32
	add sl, sl, #1
	cmp sl, r4
	add sb, sb, #6
	add r5, r5, #8
	blt _02243F20
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02243F5C: .word Unk_ov18_022533B4
	arm_func_end ov18_02243ECC

	arm_func_start ov18_02243F60
ov18_02243F60: ; 0x02243F60
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	bl ov18_02245B54
	mov r4, r0
	mov r0, r6
	mov r1, r5
	mov r2, r4
	bl ov18_02243ECC
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov18_02243F60

	arm_func_start ov18_02243F8C
ov18_02243F8C: ; 0x02243F8C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _02243FD0 ; =0x022533B4
	mov r6, r0
	mov r5, r1
	ldr r3, [r3, r6, lsl #2]
	mov r1, r5, lsl #3
	ldrh r1, [r3, r1]
	bl ov18_022439E0
	mov r1, #0
	mov r4, r0
	bl ov18_02243BBC
	mov r2, r0
	mov r0, r6
	mov r1, r5
	bl ov18_02243ECC
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02243FD0: .word Unk_ov18_022533B4
	arm_func_end ov18_02243F8C

	.bss


	.global Unk_ov18_022533B4
Unk_ov18_022533B4: ; 0x022533B4
	.space 0x8

