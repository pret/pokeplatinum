	.include "macros/function.inc"

	

	.text


	arm_func_start ov18_02245E50
ov18_02245E50: ; 0x02245E50
	cmp r1, #0
	mov r3, #0
	ble _02245E74
_02245E5C:
	ldrb r2, [r0, r3]
	cmp r2, #0
	beq _02245E74
	add r3, r3, #1
	cmp r3, r1
	blt _02245E5C
_02245E74:
	mov r0, r3
	bx lr
	arm_func_end ov18_02245E50