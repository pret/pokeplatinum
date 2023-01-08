	.include "macros/function.inc"
	.include "include/gfdi_linkedlistvramman.inc"

	

	.text


	arm_func_start TryToMergeBlockRegion_
TryToMergeBlockRegion_: ; 0x020A6424
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	ldr r3, [r0, #0]
	mov lr, #0
	cmp r3, #0
	beq _020A6500
	mov r8, lr
	mov r4, lr
_020A6440:
	ldr r6, [r3, #0]
	ldr r5, [r2, #4]
	ldr ip, [r3, #0xc]
	cmp r6, r5
	bne _020A649C
	ldr r5, [r3, #4]
	orr lr, lr, #1
	add r5, r6, r5
	str r5, [r2, #4]
	ldr r6, [r3, #8]
	ldr r5, [r3, #0xc]
	cmp r6, #0
	strne r5, [r6, #0xc]
	streq r5, [r0]
	cmp r5, #0
	strne r6, [r5, #8]
	ldr r5, [r1, #0]
	cmp r5, #0
	strne r3, [r5, #8]
	ldr r5, [r1, #0]
	str r5, [r3, #0xc]
	str r8, [r3, #8]
	str r3, [r1, #0]
_020A649C:
	ldr r7, [r3, #0]
	ldr r5, [r3, #4]
	ldr r6, [r2, #0]
	add r5, r7, r5
	cmp r6, r5
	bne _020A64F4
	str r7, [r2, #0]
	ldr r6, [r3, #8]
	ldr r5, [r3, #0xc]
	cmp r6, #0
	strne r5, [r6, #0xc]
	streq r5, [r0]
	cmp r5, #0
	strne r6, [r5, #8]
	ldr r5, [r1, #0]
	orr lr, lr, #1
	cmp r5, #0
	strne r3, [r5, #8]
	ldr r5, [r1, #0]
	str r5, [r3, #0xc]
	str r4, [r3, #8]
	str r3, [r1, #0]
_020A64F4:
	mov r3, ip
	cmp ip, #0
	bne _020A6440
_020A6500:
	mov r0, lr
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end TryToMergeBlockRegion_

	arm_func_start NNSi_GfdInitLnkVramMan
NNSi_GfdInitLnkVramMan: ; 0x020A6508
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	arm_func_end NNSi_GfdInitLnkVramMan

	arm_func_start NNSi_GfdInitLnkVramBlockPool
NNSi_GfdInitLnkVramBlockPool: ; 0x020A6514
	stmfd sp!, {r4, lr}
	subs lr, r1, #1
	mov r2, #0
	beq _020A654C
	mov r4, r0
_020A6528:
	add r3, r2, #1
	add r2, r0, r2, lsl #4
	add ip, r0, r3, lsl #4
	str ip, [r2, #0xc]
	str r4, [r2, #0x18]
	mov r2, r3
	cmp r3, lr
	add r4, r4, #0x10
	blo _020A6528
_020A654C:
	mov r2, #0
	str r2, [r0, #8]
	add r1, r0, r1, lsl #4
	str r2, [r1, #-4]
	ldmia sp!, {r4, pc}
	arm_func_end NNSi_GfdInitLnkVramBlockPool

	arm_func_start NNSi_GfdAddNewFreeBlock
NNSi_GfdAddNewFreeBlock: ; 0x020A6560
	stmfd sp!, {r3, lr}
	ldr lr, [r1]
	cmp lr, #0
	ldrne ip, [lr, #0xc]
	strne ip, [r1]
	cmp lr, #0
	beq _020A65B4
	stmia lr, {r2, r3}
	mov r1, #0
	str r1, [lr, #8]
	str r1, [lr, #0xc]
	ldr r1, [r0, #0]
	cmp r1, #0
	strne lr, [r1, #8]
	ldr r2, [r0, #0]
	mov r1, #0
	str r2, [lr, #0xc]
	str r1, [lr, #8]
	str lr, [r0]
	mov r0, #1
	ldmia sp!, {r3, pc}
_020A65B4:
	mov r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end NNSi_GfdAddNewFreeBlock

	arm_func_start NNSi_GfdAllocLnkVram
NNSi_GfdAllocLnkVram: ; 0x020A65BC
	stmfd sp!, {r3, lr}
	mov ip, #0
	str ip, [sp]
	bl NNSi_GfdAllocLnkVramAligned
	ldmia sp!, {r3, pc}
	arm_func_end NNSi_GfdAllocLnkVram

	arm_func_start NNSi_GfdAllocLnkVramAligned
NNSi_GfdAllocLnkVramAligned: ; 0x020A65D0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r7, [r0, #0]
	ldr sb, [sp, #0x28]
	cmp r7, #0
	mov r6, #0
	beq _020A6638
	sub ip, sb, #1
	mvn r8, ip
	mov fp, r6
_020A65F4:
	cmp sb, #1
	ldrls lr, [r7]
	movls r5, fp
	movls r4, r3
	bls _020A661C
	ldr r5, [r7, #0]
	add r4, r5, ip
	and lr, r8, r4
	sub r5, lr, r5
	add r4, r3, r5
_020A661C:
	ldr sl, [r7, #4]
	cmp sl, r4
	movhs r6, r7
	bhs _020A6638
	ldr r7, [r7, #0xc]
	cmp r7, #0
	bne _020A65F4
_020A6638:
	cmp r6, #0
	beq _020A6704
	cmp r5, #0
	beq _020A6698
	ldr r8, [r1]
	cmp r8, #0
	ldrne r3, [r8, #0xc]
	strne r3, [r1]
	cmp r8, #0
	beq _020A6704
	ldr r7, [r6, #0]
	mov r3, #0
	str r7, [r8]
	str r5, [r8, #4]
	str r3, [r8, #8]
	str r3, [r8, #0xc]
	ldr r3, [r0, #0]
	cmp r3, #0
	strne r8, [r3, #8]
	ldr r5, [r0, #0]
	mov r3, #0
	str r5, [r8, #0xc]
	str r3, [r8, #8]
	str r8, [r0]
_020A6698:
	ldr r3, [r6, #4]
	sub r3, r3, r4
	str r3, [r6, #4]
	ldr r3, [r6, #0]
	add r3, r3, r4
	str r3, [r6, #0]
	ldr r3, [r6, #4]
	cmp r3, #0
	bne _020A66F8
	ldr r4, [r6, #8]
	ldr r3, [r6, #0xc]
	cmp r4, #0
	strne r3, [r4, #0xc]
	streq r3, [r0]
	cmp r3, #0
	strne r4, [r3, #8]
	ldr r0, [r1, #0]
	cmp r0, #0
	strne r6, [r0, #8]
	ldr r3, [r1, #0]
	mov r0, #0
	str r3, [r6, #0xc]
	str r0, [r6, #8]
	str r6, [r1, #0]
_020A66F8:
	str lr, [r2]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020A6704:
	mov r0, #0
	str r0, [r2, #0]
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNSi_GfdAllocLnkVramAligned

	arm_func_start NNSi_GfdMergeAllFreeBlocks
NNSi_GfdMergeAllFreeBlocks: ; 0x020A6710
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	mov r7, r0
	ldr r5, [r7, #0]
	mov r6, r1
	cmp r5, #0
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	add r4, sp, #0
_020A6734:
	ldr r1, [r5, #0]
	mov r0, r7
	str r1, [sp]
	ldr r3, [r5, #0]
	ldr r2, [r5, #4]
	mov r1, r6
	add r3, r3, r2
	mov r2, r4
	str r3, [sp, #4]
	bl TryToMergeBlockRegion_
	cmp r0, #0
	ldreq r5, [r5, #0xc]
	beq _020A6784
	ldr r0, [sp]
	str r0, [r5, #0]
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	str r0, [r5, #4]
	ldr r5, [r7, #0]
_020A6784:
	cmp r5, #0
	bne _020A6734
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNSi_GfdMergeAllFreeBlocks

	arm_func_start NNSi_GfdFreeLnkVram
NNSi_GfdFreeLnkVram: ; 0x020A6794
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	add r3, r2, r3
	str r2, [sp]
	add r2, sp, #0
	mov r5, r1
	str r3, [sp, #4]
	mov r4, r0
	bl TryToMergeBlockRegion_
	ldr r3, [r5, #0]
	cmp r3, #0
	ldrne r0, [r3, #0xc]
	strne r0, [r5]
	cmp r3, #0
	addeq sp, sp, #8
	mov r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, [sp]
	str r1, [r3, #0]
	ldr r2, [sp, #4]
	ldr r1, [sp]
	sub r1, r2, r1
	str r1, [r3, #4]
	str r0, [r3, #8]
	str r0, [r3, #0xc]
	ldr r0, [r4, #0]
	cmp r0, #0
	strne r3, [r0, #8]
	ldr r1, [r4, #0]
	mov r0, #0
	str r1, [r3, #0xc]
	str r0, [r3, #8]
	str r3, [r4, #0]
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNSi_GfdFreeLnkVram