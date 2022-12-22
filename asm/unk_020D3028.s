	.include "macros/function.inc"
	.include "include/unk_020D3028.inc"

	

	.text


	arm_func_start MATH_CalcMD5
MATH_CalcMD5: ; 0x020D3028
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x58
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	mov r4, r2
	bl DGT_Hash1Reset
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl DGT_Hash1SetSource
	add r1, sp, #0
	mov r0, r6
	bl DGT_Hash1GetDigest_R
	add sp, sp, #0x58
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MATH_CalcMD5

	arm_func_start MATH_CalcSHA1
MATH_CalcSHA1: ; 0x020D3068
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #0x68
	mov r6, r0
	add r0, sp, #0
	mov r5, r1
	mov r4, r2
	bl DGT_Hash2Reset
	add r0, sp, #0
	mov r1, r5
	mov r2, r4
	bl DGT_Hash2SetSource
	add r0, sp, #0
	mov r1, r6
	bl DGT_Hash2GetDigest
	add sp, sp, #0x68
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end MATH_CalcSHA1