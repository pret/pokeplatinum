	.include "macros/function.inc"
	.include "overlay060/ov60_02225670.inc"

	

	.text


	arm_func_start ov60_02225670
ov60_02225670: ; 0x02225670
	ldr ip, _02225678 ; =STD_GetStringLength
	bx ip
	; .align 2, 0
_02225678: .word STD_GetStringLength
	arm_func_end ov60_02225670

	arm_func_start ov60_0222567C
ov60_0222567C: ; 0x0222567C
	ldr ip, _02225684 ; =STD_CompareNString
	bx ip
	; .align 2, 0
_02225684: .word STD_CompareNString
	arm_func_end ov60_0222567C

	arm_func_start ov60_02225688
ov60_02225688: ; 0x02225688
	ldr ip, _02225698 ; =MI_CpuFill8
	mov r2, r1
	mov r1, #0
	bx ip
	; .align 2, 0
_02225698: .word MI_CpuFill8
	arm_func_end ov60_02225688

	arm_func_start ov60_0222569C
ov60_0222569C: ; 0x0222569C
	ldr ip, _022256B0 ; =MI_CpuCopy8
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	; .align 2, 0
_022256B0: .word MI_CpuCopy8
	arm_func_end ov60_0222569C