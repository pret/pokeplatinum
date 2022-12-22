	.include "macros/function.inc"
	.include "include/unk_020A4DE8.inc"

	

	.text


	arm_func_start FindContainHeap
FindContainHeap: ; 0x020A4DE8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	mov r1, #0
	mov r6, r0
	bl NNS_FndGetNextListObject
	movs r4, r0
	beq _020A4E48
_020A4E04:
	ldr r0, [r4, #0x18]
	cmp r0, r5
	bhi _020A4E34
	ldr r0, [r4, #0x1c]
	cmp r5, r0
	bhs _020A4E34
	mov r1, r5
	add r0, r4, #0xc
	bl FindContainHeap
	cmp r0, #0
	moveq r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_020A4E34:
	mov r0, r6
	mov r1, r4
	bl NNS_FndGetNextListObject
	movs r4, r0
	bne _020A4E04
_020A4E48:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end FindContainHeap

	arm_func_start FindListContainHeap
FindListContainHeap: ; 0x020A4E50
	stmfd sp!, {r4, lr}
	ldr r4, _020A4E74 ; =0x021C3AA4
	mov r1, r0
	mov r0, r4
	bl FindContainHeap
	cmp r0, #0
	addne r4, r0, #0xc
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A4E74: .word 0x021C3AA4
	arm_func_end FindListContainHeap

	arm_func_start NNSi_FndInitHeapHead
NNSi_FndInitHeapHead: ; 0x020A4E78
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r0, [sp, #8]
	str r1, [r4, #0]
	mov ip, #0
	str r2, [r4, #0x18]
	bic r1, ip, #0xff
	and r0, r0, #0xff
	orr r2, r1, r0
	str r3, [r4, #0x1c]
	add r0, r4, #0xc
	mov r1, #4
	str r2, [r4, #0x20]
	bl NNS_FndInitList
	ldr r0, _020A4EEC ; =0x021C3AA0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne _020A4ED8
	ldr r0, _020A4EF0 ; =0x021C3AA4
	mov r1, #4
	bl NNS_FndInitList
	ldr r0, _020A4EEC ; =0x021C3AA0
	mov r1, #1
	str r1, [r0, #0]
_020A4ED8:
	mov r0, r4
	bl FindListContainHeap
	mov r1, r4
	bl NNS_FndAppendListObject
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A4EEC: .word 0x021C3AA0
_020A4EF0: .word 0x021C3AA4
	arm_func_end NNSi_FndInitHeapHead

	arm_func_start NNSi_FndFinalizeHeap
NNSi_FndFinalizeHeap: ; 0x020A4EF4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl FindListContainHeap
	mov r1, r4
	bl NNS_FndRemoveListObject
	ldmia sp!, {r4, pc}
	arm_func_end NNSi_FndFinalizeHeap

	.bss


	.global Unk_021C3AA0
Unk_021C3AA0: ; 0x021C3AA0
	.space 0x4

	.global Unk_021C3AA4
Unk_021C3AA4: ; 0x021C3AA4
	.space 0xC

