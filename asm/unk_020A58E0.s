	.include "macros/function.inc"
	.include "include/unk_020A58E0.inc"

	

	.text


	arm_func_start PopMBlock
PopMBlock: ; 0x020A58E0
	ldr r2, [r0, #0]
	cmp r2, #0
	ldrne r1, [r2]
	strne r1, [r0]
	mov r0, r2
	bx lr
	arm_func_end PopMBlock

	arm_func_start NNS_FndAllocFromUnitHeap
NNS_FndAllocFromUnitHeap: ; 0x020A58F8
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	add r0, r5, #0x24
	bl PopMBlock
	movs r4, r0
	beq _020A5930
	ldr r0, [r5, #0x20]
	ldr r2, [r5, #0x28]
	and r0, r0, #0xff
	tst r0, #1
	beq _020A5930
	mov r1, r4
	mov r0, #0
	bl MIi_CpuClear32
_020A5930:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_FndAllocFromUnitHeap

	arm_func_start NNS_FndFreeToUnitHeap
NNS_FndFreeToUnitHeap: ; 0x020A5938
	ldr r2, [r0, #0x24]
	str r2, [r1, #0]
	str r1, [r0, #0x24]
	bx lr
	arm_func_end NNS_FndFreeToUnitHeap