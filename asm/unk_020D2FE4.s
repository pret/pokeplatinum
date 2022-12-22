	.include "macros/function.inc"

	

	.text


	arm_func_start MATH_CountPopulation
MATH_CountPopulation: ; 0x020D2FE4
	ldr r1, _020D301C ; =0x55555555
	ldr r2, _020D3020 ; =0x33333333
	and r1, r1, r0, lsr #1
	sub r0, r0, r1
	and r1, r0, r2
	and r0, r2, r0, lsr #2
	add r1, r1, r0
	ldr r0, _020D3024 ; =0x0F0F0F0F
	add r1, r1, r1, lsr #4
	and r0, r1, r0
	add r0, r0, r0, lsr #8
	add r0, r0, r0, lsr #16
	and r0, r0, #0xff
	bx lr
	; .align 2, 0
_020D301C: .word 0x55555555
_020D3020: .word 0x33333333
_020D3024: .word 0x0F0F0F0F
	arm_func_end MATH_CountPopulation