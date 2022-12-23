	.include "macros/function.inc"
	.include "overlay004/ov4_021E80B0.inc"

	

	.text


	arm_func_start ov4_021E80B0
ov4_021E80B0: ; 0x021E80B0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	bl ov4_02213898
	mov r4, r0
	mov r0, #0x10
	bl ov4_021E62EC
	cmp r4, #1
	bne _021E811C
	ldrb r1, [r0, #0xd0a]
	mov r0, #0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	bl ov4_021E73FC
	ldr r1, _021E8134 ; =ov4_021E6B04
	add r0, sp, #0
	bl ov4_02212E38
	cmp r0, #1
	beq _021E8108
	cmp r0, #4
	blt _021E8128
_021E8108:
	mov r0, #1
	bl ov4_021E63C0
	add sp, sp, #0x10
	mov r0, #0x11
	ldmia sp!, {r4, pc}
_021E811C:
	add sp, sp, #0x10
	mov r0, #1
	ldmia sp!, {r4, pc}
_021E8128:
	mov r0, #2
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E8134: .word ov4_021E6B04
	arm_func_end ov4_021E80B0