	.include "macros/function.inc"
	.include "include/ov60_022257FC.inc"

	

	.text


	arm_func_start ov60_022257FC
ov60_022257FC: ; 0x022257FC
	stmfd sp!, {r4, lr}
	ldr r3, _022258C0 ; =0x0222A010
	mov ip, #0
	str r0, [r3, #8]
	str r1, [r3, #0xc]
	str ip, [r3, #4]
	str ip, [r3, #0x1c]
	str ip, [r3, #0x20]
	str ip, [r3, #0x10]
	mov r4, r2
	str ip, [r3, #0x14]
	bl ov60_02225E1C
	cmp r0, #0
	bne _02225848
	ldr r0, _022258C0 ; =0x0222A010
	mov r1, #9
	str r1, [r0, #4]
	mov r0, #0
	ldmia sp!, {r4, pc}
_02225848:
	ldr r1, _022258C0 ; =0x0222A010
	mov r0, #0x2000
	ldr r2, [r1, #8]
	mov r1, #8
	blx r2
	movs r1, r0
	ldr r0, _022258C0 ; =0x0222A010
	str r1, [r0, #0x18]
	bne _02225880
	mov r1, #1
	str r1, [r0, #4]
	bl ov60_02225E34
	mov r0, #0
	ldmia sp!, {r4, pc}
_02225880:
	mov r0, r4
	bl ov60_02225E60
	cmp r0, #0
	ldrne r1, _022258C0 ; =0x0222A010
	movne r0, #1
	strne r0, [r1]
	ldmneia sp!, {r4, pc}
	ldr r1, _022258C0 ; =0x0222A010
	mov r0, #9
	str r0, [r1, #4]
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0xc]
	blx r1
	bl ov60_02225E34
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022258C0: .word 0x0222A010
	arm_func_end ov60_022257FC

	arm_func_start ov60_022258C4
ov60_022258C4: ; 0x022258C4
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	mov r2, r0
	mov ip, #0x800
	ldr r0, _02225900 ; =0x0222A034
	ldr r1, _02225904 ; =ov60_0222590C
	ldr r3, _02225908 ; =0x0222A8F4
	str ip, [sp]
	mov ip, #0x10
	str ip, [sp, #4]
	bl OS_CreateThread
	ldr r0, _02225900 ; =0x0222A034
	bl OS_WakeupThreadDirect
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02225900: .word 0x0222A034
_02225904: .word ov60_0222590C
_02225908: .word 0x0222A8F4
	arm_func_end ov60_022258C4

	arm_func_start ov60_0222590C
ov60_0222590C: ; 0x0222590C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl ov60_02226B18
	bl ov60_02225ED8
	ldr r1, _02225944 ; =0x0222A010
	ldr r0, [r1, #0x18]
	ldr r1, [r1, #0xc]
	blx r1
	bl ov60_02225E34
	ldr r0, _02225944 ; =0x0222A010
	mov r1, #0
	str r1, [r0, #0]
	blx r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02225944: .word 0x0222A010
	arm_func_end ov60_0222590C

	.bss


	.global Unk_ov60_0222A010
Unk_ov60_0222A010: ; 0x0222A010
	.space 0x4

	.global Unk_ov60_0222A014
Unk_ov60_0222A014: ; 0x0222A014
	.space 0x4

	.global Unk_ov60_0222A018
Unk_ov60_0222A018: ; 0x0222A018
	.space 0x4

	.global Unk_ov60_0222A01C
Unk_ov60_0222A01C: ; 0x0222A01C
	.space 0x4

	.global Unk_ov60_0222A020
Unk_ov60_0222A020: ; 0x0222A020
	.space 0x4

	.global Unk_ov60_0222A024
Unk_ov60_0222A024: ; 0x0222A024
	.space 0x4

	.global Unk_ov60_0222A028
Unk_ov60_0222A028: ; 0x0222A028
	.space 0x4

	.global Unk_ov60_0222A02C
Unk_ov60_0222A02C: ; 0x0222A02C
	.space 0x4

	.global Unk_ov60_0222A030
Unk_ov60_0222A030: ; 0x0222A030
	.space 0x4

	.global Unk_ov60_0222A034
Unk_ov60_0222A034: ; 0x0222A034
	.space 0xC0

	.global Unk_ov60_0222A0F4
Unk_ov60_0222A0F4: ; 0x0222A0F4
	.space 0x800

