	.include "macros/function.inc"
	.include "include/dwci_lobbybase.inc"

	

	.text


	arm_func_start ov66_02246290
ov66_02246290: ; 0x02246290
	stmfd sp!, {r4, r5, r6, lr}
	movs r6, r0
	ldr r4, _022462D8 ; =0x0225B6E4
	moveq r6, #1
	mov r5, #0
_022462A4:
	mov r0, r5
	mov r1, r6
	bl DWC_Alloc
	cmp r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #0]
	str r0, [r4, #0]
	cmp r0, #0
	beq _022462D0
	blx r0
	b _022462A4
_022462D0:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022462D8: .word Unk_ov66_0225B6E4
	arm_func_end ov66_02246290
	.bss


	.global Unk_ov66_0225B6E4
Unk_ov66_0225B6E4: ; 0x0225B6E4
	.space 0x4

