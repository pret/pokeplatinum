	.include "macros/function.inc"
	.include "include/frameheap.inc"

	

	.text


	arm_func_start InitFrameHeap
InitFrameHeap: ; 0x020A5660
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #4
	mov r3, r1
	mov r4, r0
	str r2, [sp]
	ldr r1, _020A56A4 ; =0x46524D48
	add r2, r4, #0x30
	bl NNSi_FndInitHeapHead
	ldr r0, [r4, #0x18]
	mov r1, #0
	str r0, [r4, #0x24]
	ldr r2, [r4, #0x1c]
	mov r0, r4
	str r2, [r4, #0x28]
	str r1, [r4, #0x2c]
	add sp, sp, #4
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020A56A4: .word 0x46524D48
	arm_func_end InitFrameHeap

	arm_func_start AllocFromHead_dup2
AllocFromHead_dup2: ; 0x020A56A8
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	ldr r3, [r4, #0]
	sub r0, r2, #1
	mvn r2, r0
	add r0, r0, r3
	and r5, r2, r0
	ldr r0, [r4, #4]
	add r6, r1, r5
	cmp r6, r0
	movhi r0, #0
	ldmhiia sp!, {r4, r5, r6, pc}
	ldr r0, [r4, #-4]
	sub r2, r6, r3
	and r0, r0, #0xff
	tst r0, #1
	beq _020A56F8
	mov r1, r3
	mov r0, #0
	bl MIi_CpuClear32
_020A56F8:
	mov r0, r5
	str r6, [r4, #0]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end AllocFromHead_dup2

	arm_func_start AllocFromTail_dup2
AllocFromTail_dup2: ; 0x020A5704
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	ldr r3, [r4, #4]
	sub r0, r2, #1
	mvn r2, r0
	sub r1, r3, r1
	ldr r0, [r4, #0]
	and r5, r2, r1
	cmp r5, r0
	movlo r0, #0
	ldmloia sp!, {r3, r4, r5, pc}
	ldr r0, [r4, #-4]
	sub r2, r3, r5
	and r0, r0, #0xff
	tst r0, #1
	beq _020A5750
	mov r1, r5
	mov r0, #0
	bl MIi_CpuClear32
_020A5750:
	mov r0, r5
	str r5, [r4, #4]
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end AllocFromTail_dup2

	arm_func_start FreeHead
FreeHead: ; 0x020A575C
	ldr r2, [r0, #0x18]
	mov r1, #0
	str r2, [r0, #0x24]
	str r1, [r0, #0x2c]
	bx lr
	arm_func_end FreeHead

	arm_func_start FreeTail
FreeTail: ; 0x020A5770
	ldr r2, [r0, #0x2c]
	cmp r2, #0
	beq _020A5790
_020A577C:
	ldr r1, [r0, #0x1c]
	str r1, [r2, #8]
	ldr r2, [r2, #0xc]
	cmp r2, #0
	bne _020A577C
_020A5790:
	ldr r1, [r0, #0x1c]
	str r1, [r0, #0x28]
	bx lr
	arm_func_end FreeTail

	arm_func_start NNS_FndCreateFrmHeapEx
NNS_FndCreateFrmHeapEx: ; 0x020A579C
	stmfd sp!, {r3, lr}
	add r1, r1, r0
	add r0, r0, #3
	bic r1, r1, #3
	bic r0, r0, #3
	cmp r0, r1
	bhi _020A57C4
	sub r3, r1, r0
	cmp r3, #0x30
	bhs _020A57CC
_020A57C4:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020A57CC:
	bl InitFrameHeap
	ldmia sp!, {r3, pc}
	arm_func_end NNS_FndCreateFrmHeapEx

	arm_func_start NNS_FndDestroyFrmHeap
NNS_FndDestroyFrmHeap: ; 0x020A57D4
	ldr ip, _020A57DC ; =NNSi_FndFinalizeHeap
	bx ip
	; .align 2, 0
_020A57DC: .word NNSi_FndFinalizeHeap
	arm_func_end NNS_FndDestroyFrmHeap

	arm_func_start NNS_FndAllocFromFrmHeapEx
NNS_FndAllocFromFrmHeapEx: ; 0x020A57E0
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r1, #1
	add r1, r1, #3
	cmp r2, #0
	bic r1, r1, #3
	add r0, r0, #0x24
	blt _020A5808
	bl AllocFromHead_dup2
	ldmia sp!, {r3, pc}
_020A5808:
	rsb r2, r2, #0
	bl AllocFromTail_dup2
	ldmia sp!, {r3, pc}
	arm_func_end NNS_FndAllocFromFrmHeapEx

	arm_func_start NNS_FndFreeToFrmHeap
NNS_FndFreeToFrmHeap: ; 0x020A5814
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r5, r0
	tst r4, #1
	beq _020A582C
	bl FreeHead
_020A582C:
	tst r4, #2
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	bl FreeTail
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_FndFreeToFrmHeap

	arm_func_start NNS_FndRecordStateForFrmHeap
NNS_FndRecordStateForFrmHeap: ; 0x020A5840
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	ldr r4, [r6, #0x24]
	mov r5, r1
	add r0, r6, #0x24
	mov r1, #0x10
	mov r2, #4
	bl AllocFromHead_dup2
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	str r5, [r0, #0]
	str r4, [r0, #4]
	ldr r1, [r6, #0x28]
	str r1, [r0, #8]
	ldr r1, [r6, #0x2c]
	str r1, [r0, #0xc]
	str r0, [r6, #0x2c]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNS_FndRecordStateForFrmHeap

	arm_func_start NNS_FndFreeByStateToFrmHeap
NNS_FndFreeByStateToFrmHeap: ; 0x020A5890
	ldr r3, [r0, #0x2c]
	cmp r1, #0
	cmpne r3, #0
	beq _020A58B4
_020A58A0:
	ldr r2, [r3, #0]
	cmp r2, r1
	ldrne r3, [r3, #0xc]
	cmpne r3, #0
	bne _020A58A0
_020A58B4:
	cmp r3, #0
	moveq r0, #0
	bxeq lr
	ldr r1, [r3, #4]
	str r1, [r0, #0x24]
	ldr r1, [r3, #8]
	str r1, [r0, #0x28]
	ldr r1, [r3, #0xc]
	str r1, [r0, #0x2c]
	mov r0, #1
	bx lr
	arm_func_end NNS_FndFreeByStateToFrmHeap