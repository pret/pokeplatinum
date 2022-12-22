	.include "macros/function.inc"

	

	.text


	arm_func_start CP_SaveContext
CP_SaveContext: ; 0x020C99FC
	ldr r1, _020C9A38 ; =0x04000290
	stmdb sp!, {r4}
	ldmia r1, {r2, r3, r4, ip}
	stmia r0!, {r2, r3, r4, ip}
	ldrh ip, [r1, #-0x10]
	add r1, r1, #0x28
	ldmia r1, {r2, r3}
	stmia r0!, {r2, r3}
	and ip, ip, #3
	ldrh r2, [r1, #-8]
	strh ip, [r0]
	and r2, r2, #1
	strh r2, [r0, #2]
	ldmia sp!, {r4}
	bx lr
	; .align 2, 0
_020C9A38: .word 0x04000290
	arm_func_end CP_SaveContext

	arm_func_start CPi_RestoreContext
CPi_RestoreContext: ; 0x020C9A3C
	stmdb sp!, {r4}
	ldr r1, _020C9A74 ; =0x04000290
	ldmia r0, {r2, r3, r4, ip}
	stmia r1, {r2, r3, r4, ip}
	ldrh r2, [r0, #0x18]
	ldrh r3, [r0, #0x1a]
	strh r2, [r1, #-0x10]
	strh r3, [r1, #0x20]
	add r0, r0, #0x10
	add r1, r1, #0x28
	ldmia r0, {r2, r3}
	stmia r1, {r2, r3}
	ldmia sp!, {r4}
	bx lr
	; .align 2, 0
_020C9A74: .word 0x04000290
	arm_func_end CPi_RestoreContext