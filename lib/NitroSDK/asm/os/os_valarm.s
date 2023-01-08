	.include "macros/function.inc"
	.include "include/os_valarm.inc"

	.extern Unk_021CCFD0
	

	.text


	arm_func_start OS_InitVAlarm
OS_InitVAlarm: ; 0x020C3D3C
	stmfd sp!, {r3, lr}
	ldr r1, _020C3D80 ; =0x021CCFD0
	ldrh r0, [r1]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	mov r0, #1
	strh r0, [r1]
	mov r2, #0
	str r2, [r1, #0xc]
	mov r0, #4
	str r2, [r1, #0x10]
	bl OS_DisableIrqMask
	ldr r0, _020C3D80 ; =0x021CCFD0
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C3D80: .word Unk_021CCFD0
	arm_func_end OS_InitVAlarm

	.bss


	.global Unk_021CCFD0
Unk_021CCFD0: ; 0x021CCFD0
	.space 0x2

	.global Unk_021CCFD4
Unk_021CCFD4: ; 0x021CCFD4
	.space 0x4

	.global Unk_021CCFD8
Unk_021CCFD8: ; 0x021CCFD8
	.space 0x4

	.global Unk_021CCFDC
Unk_021CCFDC: ; 0x021CCFDC
	.space 0x8

