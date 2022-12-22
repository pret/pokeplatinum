	.include "macros/function.inc"
	.include "include/unk_020A3EF0.inc"

	

	.text


	arm_func_start DWC_Init
DWC_Init: ; 0x020A3EF0
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r0, _020A3F50 ; =0x02000BC4
	mov r5, #0
	bl OSi_ReferSymbol
	mov r0, r6
	bl DWC_BM_Init
	mov r4, r0
	bl sub_020A3EA0
	cmp r0, #0
	beq _020A3F28
	mov r0, r6
	bl sub_020A3C18
	mov r5, #1
_020A3F28:
	cmp r4, #0
	bge _020A3F40
	cmp r5, #0
	movne r0, #2
	moveq r0, #3
	ldmia sp!, {r4, r5, r6, pc}
_020A3F40:
	cmp r5, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A3F50: .word 0x02000BC4
	arm_func_end DWC_Init