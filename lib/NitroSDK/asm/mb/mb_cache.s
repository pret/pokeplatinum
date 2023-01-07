	.include "macros/function.inc"
	.include "include/mb_cache.inc"

	

	.text


	arm_func_start ov18_02223F10
ov18_02223F10: ; 0x02223F10
	ldr ip, _02223F20 ; =MI_CpuFill8
	mov r1, #0
	mov r2, #0x70
	bx ip
	; .align 2, 0
_02223F20: .word MI_CpuFill8
	arm_func_end ov18_02223F10

	arm_func_start ov18_02223F24
ov18_02223F24: ; 0x02223F24
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r4, r0
	mov sb, r1
	mov r8, r2
	mov r7, r3
	bl OS_DisableInterrupts
	add r6, r4, #0x30
	mov r5, r0
	add r4, r4, #0x70
_02223F48:
	cmp r6, r4
	blo _02223F54
	bl OS_Terminate
_02223F54:
	ldr r0, [r6, #0xc]
	cmp r0, #0
	bne _02223F78
	str sb, [r6]
	str r8, [r6, #4]
	ldr r0, [sp, #0x20]
	str r7, [r6, #8]
	str r0, [r6, #0xc]
	b _02223F80
_02223F78:
	add r6, r6, #0x10
	b _02223F48
_02223F80:
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov18_02223F24

	arm_func_start ov18_02223F8C
ov18_02223F8C: ; 0x02223F8C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	mov r6, r3
	mov r4, #0
	bl OS_DisableInterrupts
	add r2, sb, #0x30
	add r1, sb, #0x70
	mov r5, r0
	cmp r2, r1
	bhs _02224014
_02223FBC:
	ldr r0, [r2, #0xc]
	cmp r0, #2
	blo _02224008
	ldr r0, [r2, #0]
	subs r0, r8, r0
	bmi _02224008
	ldr r3, [r2, #4]
	add ip, r0, r6
	cmp ip, r3
	bhi _02224008
	ldr r3, [r2, #8]
	mov r1, r7
	mov r2, r6
	add r0, r3, r0
	bl MI_CpuCopy8
	mov r0, #0
	str r0, [sb]
	mov r4, #1
	b _02224014
_02224008:
	add r2, r2, #0x10
	cmp r2, r1
	blo _02223FBC
_02224014:
	mov r0, r5
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end ov18_02223F8C