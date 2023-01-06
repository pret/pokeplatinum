	.include "macros/function.inc"
	.include "include/unk_020A5948.inc"

	

	.text


	arm_func_start AllocatorAllocForExpHeap
AllocatorAllocForExpHeap: ; 0x020A5948
	ldr ip, _020A5958 ; =NNS_FndAllocFromExpHeapEx
	mov r2, r0
	ldmib r2, {r0, r2}
	bx ip
	; .align 2, 0
_020A5958: .word NNS_FndAllocFromExpHeapEx
	arm_func_end AllocatorAllocForExpHeap

	arm_func_start AllocatorFreeForExpHeap
AllocatorFreeForExpHeap: ; 0x020A595C
	ldr ip, _020A5968 ; =NNS_FndFreeToExpHeap
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_020A5968: .word NNS_FndFreeToExpHeap
	arm_func_end AllocatorFreeForExpHeap

	arm_func_start AllocatorAllocForFrmHeap
AllocatorAllocForFrmHeap: ; 0x020A596C
	ldr ip, _020A597C ; =NNS_FndAllocFromFrmHeapEx
	mov r2, r0
	ldmib r2, {r0, r2}
	bx ip
	; .align 2, 0
_020A597C: .word NNS_FndAllocFromFrmHeapEx
	arm_func_end AllocatorAllocForFrmHeap

	arm_func_start AllocatorFreeForFrmHeap
AllocatorFreeForFrmHeap: ; 0x020A5980
	bx lr
	arm_func_end AllocatorFreeForFrmHeap

	arm_func_start AllocatorAllocForUnitHeap
AllocatorAllocForUnitHeap: ; 0x020A5984
	stmfd sp!, {r3, lr}
	ldr r0, [r0, #4]
	ldr r2, [r0, #0x28]
	cmp r1, r2
	movhi r0, #0
	ldmhiia sp!, {r3, pc}
	bl NNS_FndAllocFromUnitHeap
	ldmia sp!, {r3, pc}
	arm_func_end AllocatorAllocForUnitHeap

	arm_func_start AllocatorFreeForUnitHeap
AllocatorFreeForUnitHeap: ; 0x020A59A4
	ldr ip, _020A59B0 ; =NNS_FndFreeToUnitHeap
	ldr r0, [r0, #4]
	bx ip
	; .align 2, 0
_020A59B0: .word NNS_FndFreeToUnitHeap
	arm_func_end AllocatorFreeForUnitHeap

	arm_func_start AllocatorAllocForSDKHeap
AllocatorAllocForSDKHeap: ; 0x020A59B4
	ldr ip, _020A59CC ; =OS_AllocFromHeap
	mov r3, r0
	mov r2, r1
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	bx ip
	; .align 2, 0
_020A59CC: .word OS_AllocFromHeap
	arm_func_end AllocatorAllocForSDKHeap

	arm_func_start AllocatorFreeForSDKHeap
AllocatorFreeForSDKHeap: ; 0x020A59D0
	ldr ip, _020A59E8 ; =OS_FreeToHeap
	mov r3, r0
	mov r2, r1
	ldr r0, [r3, #8]
	ldr r1, [r3, #4]
	bx ip
	; .align 2, 0
_020A59E8: .word OS_FreeToHeap
	arm_func_end AllocatorFreeForSDKHeap

	arm_func_start NNS_FndAllocFromAllocator
NNS_FndAllocFromAllocator: ; 0x020A59EC
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	ldr r2, [r2, #0]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end NNS_FndAllocFromAllocator

	arm_func_start NNS_FndFreeToAllocator
NNS_FndFreeToAllocator: ; 0x020A5A00
	stmfd sp!, {r3, lr}
	ldr r2, [r0, #0]
	ldr r2, [r2, #4]
	blx r2
	ldmia sp!, {r3, pc}
	arm_func_end NNS_FndFreeToAllocator

	arm_func_start NNS_FndInitAllocatorForExpHeap
NNS_FndInitAllocatorForExpHeap: ; 0x020A5A14
	ldr ip, _020A5A28 ; =0x020F9560
	mov r3, #0
	str ip, [r0]
	stmib r0, {r1, r2, r3}
	bx lr
	; .align 2, 0
_020A5A28: .word Unk_020F9560
	arm_func_end NNS_FndInitAllocatorForExpHeap

	.rodata


	.global Unk_020F9550
Unk_020F9550: ; 0x020F9550
	.word AllocatorAllocForUnitHeap
    .word AllocatorFreeForUnitHeap

	.global Unk_020F9558
Unk_020F9558: ; 0x020F9558
	.word AllocatorAllocForFrmHeap
    .word AllocatorFreeForFrmHeap

	.global Unk_020F9560
Unk_020F9560: ; 0x020F9560
	.word AllocatorAllocForExpHeap
    .word AllocatorFreeForExpHeap

	.global Unk_020F9568
Unk_020F9568: ; 0x020F9568
	.word AllocatorAllocForSDKHeap
    .word AllocatorFreeForSDKHeap

