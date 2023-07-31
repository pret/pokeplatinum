	.include "macros/function.inc"
	.include "include/util.inc"


	.text


	arm_func_start CRYPTO_SetAllocator
CRYPTO_SetAllocator: ; 0x0223D5C8
	ldr r3, _0223D5DC ; =0x02240AF4
	ldr r2, _0223D5E0 ; =0x02240AF8
	str r0, [r3, #0]
	str r1, [r2, #0]
	bx lr
	; .align 2, 0
_0223D5DC: .word 0x02240AF4
_0223D5E0: .word 0x02240AF8
	arm_func_end CRYPTO_SetAllocator

	arm_func_start CRYPTOi_MyFree
CRYPTOi_MyFree: ; 0x0223D5E4
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0223D628 ; =0x02240AF8
	mov r2, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0223D610
	blx r1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_0223D610:
	mov r0, #0
	mvn r1, #0
	bl OS_FreeToHeap
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	; .align 2, 0
_0223D628: .word 0x02240AF8
	arm_func_end CRYPTOi_MyFree

	arm_func_start CRYPTOi_MyAlloc
CRYPTOi_MyAlloc: ; 0x0223D62C
	stmdb sp!, {lr}
	sub sp, sp, #4
	ldr r1, _0223D670 ; =0x02240AF4
	mov r2, r0
	ldr r1, [r1, #0]
	cmp r1, #0
	beq _0223D658
	blx r1
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
_0223D658:
	mov r0, #0
	mvn r1, #0
	bl OS_AllocFromHeap
	add sp, sp, #4
	ldmia sp!, {lr}
	bx lr
	; .align 2, 0
_0223D670: .word 0x02240AF4
	arm_func_end CRYPTOi_MyAlloc
