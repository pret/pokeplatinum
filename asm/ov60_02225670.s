	.include "macros/function.inc"
	.include "include/ov60_02225670.inc"

	

	.text


	arm_func_start ov60_02225670
ov60_02225670: ; 0x02225670
	ldr ip, _02225678 ; =sub_020D33B4
	bx ip
	; .align 2, 0
_02225678: .word sub_020D33B4
	arm_func_end ov60_02225670

	arm_func_start ov60_0222567C
ov60_0222567C: ; 0x0222567C
	ldr ip, _02225684 ; =sub_020D3408
	bx ip
	; .align 2, 0
_02225684: .word sub_020D3408
	arm_func_end ov60_0222567C

	arm_func_start ov60_02225688
ov60_02225688: ; 0x02225688
	ldr ip, _02225698 ; =sub_020C4CF4
	mov r2, r1
	mov r1, #0
	bx ip
	; .align 2, 0
_02225698: .word sub_020C4CF4
	arm_func_end ov60_02225688

	arm_func_start ov60_0222569C
ov60_0222569C: ; 0x0222569C
	ldr ip, _022256B0 ; =sub_020C4DB0
	mov r3, r0
	mov r0, r1
	mov r1, r3
	bx ip
	; .align 2, 0
_022256B0: .word sub_020C4DB0
	arm_func_end ov60_0222569C