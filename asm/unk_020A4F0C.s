	.include "macros/function.inc"
	.include "include/unk_020A4F0C.inc"

	

	.text


	arm_func_start GetRegionOfMBlock
GetRegionOfMBlock: ; 0x020A4F0C
	ldrh r2, [r1, #2]
	add r3, r1, #0x10
	mov r2, r2, asr #8
	and r2, r2, #0x7f
	mov r2, r2, lsl #0x10
	sub r2, r1, r2, lsr #16
	str r2, [r0, #0]
	ldr r1, [r1, #4]
	add r1, r1, r3
	str r1, [r0, #4]
	bx lr
	arm_func_end GetRegionOfMBlock

	arm_func_start RemoveMBlock
RemoveMBlock: ; 0x020A4F38
	ldr r2, [r1, #8]
	ldr r1, [r1, #0xc]
	cmp r2, #0
	strne r1, [r2, #0xc]
	streq r1, [r0]
	cmp r1, #0
	strne r2, [r1, #8]
	streq r2, [r0, #4]
	mov r0, r2
	bx lr
	arm_func_end RemoveMBlock

	arm_func_start InsertMBlock
InsertMBlock: ; 0x020A4F60
	str r2, [r1, #8]
	cmp r2, #0
	ldrne r3, [r2, #0xc]
	strne r1, [r2, #0xc]
	ldreq r3, [r0]
	streq r1, [r0]
	str r3, [r1, #0xc]
	cmp r3, #0
	strne r1, [r3, #8]
	streq r1, [r0, #4]
	mov r0, r1
	bx lr
	arm_func_end InsertMBlock

	arm_func_start InitMBlock
InitMBlock: ; 0x020A4F90
	ldr r3, [r0, #0]
	mov r2, #0
	strh r1, [r3]
	strh r2, [r3, #2]
	ldr r1, [r0, #4]
	add r0, r3, #0x10
	sub r0, r1, r0
	stmib r3, {r0, r2}
	mov r0, r3
	str r2, [r3, #0xc]
	bx lr
	arm_func_end InitMBlock

	arm_func_start InitExpHeap
InitExpHeap: ; 0x020A4FBC
	stmfd sp!, {r3, r4, lr}
	sub sp, sp, #0xc
	mov r3, r1
	mov r4, r0
	str r2, [sp]
	ldr r1, _020A5028 ; =0x45585048
	add r2, r4, #0x38
	bl NNSi_FndInitHeapHead
	mov r0, #0
	strh r0, [r4, #0x34]
	bic r0, r0, #1
	strh r0, [r4, #0x36]
	ldr r1, [r4, #0x18]
	add r0, sp, #4
	str r1, [sp, #4]
	ldr r2, [r4, #0x1c]
	ldr r1, _020A502C ; =0x00004652
	str r2, [sp, #8]
	bl InitMBlock
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	mov r1, #0
	str r1, [r4, #0x2c]
	mov r0, r4
	str r1, [r4, #0x30]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, pc}
	; .align 2, 0
_020A5028: .word 0x45585048
_020A502C: .word 0x00004652
	arm_func_end InitExpHeap

	arm_func_start AllocUsedBlockFromFreeBlock
AllocUsedBlockFromFreeBlock: ; 0x020A5030
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	sub sp, sp, #0x18
	mov r7, r0
	add r0, sp, #0x10
	mov r8, r1
	mov r6, r2
	mov r4, r3
	bl GetRegionOfMBlock
	ldr r3, [sp, #0x14]
	sub r5, r6, #0x10
	add r2, r4, r6
	mov r0, r7
	mov r1, r8
	str r5, [sp, #0x14]
	str r3, [sp, #0xc]
	str r2, [sp, #8]
	bl RemoveMBlock
	ldr r2, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r4, r0
	sub r0, r1, r2
	cmp r0, #0x14
	strlo r2, [sp, #0x14]
	blo _020A50B0
	ldr r1, _020A51A8 ; =0x00004652
	add r0, sp, #0x10
	bl InitMBlock
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl InsertMBlock
	mov r4, r0
_020A50B0:
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	cmp r0, #0x14
	strlo r1, [sp, #8]
	blo _020A50E4
	ldr r1, _020A51A8 ; =0x00004652
	add r0, sp, #8
	bl InitMBlock
	mov r1, r0
	mov r0, r7
	mov r2, r4
	bl InsertMBlock
_020A50E4:
	ldr r0, [r7, #-4]
	ldr r1, [sp, #0x14]
	ldr r2, [sp, #8]
	and r0, r0, #0xff
	tst r0, #1
	sub r2, r2, r1
	beq _020A5108
	mov r0, #0
	bl MIi_CpuClear32
_020A5108:
	ldr r2, [sp, #8]
	ldr r1, _020A51AC ; =0x00005544
	add r0, sp, #0
	str r5, [sp]
	str r2, [sp, #4]
	bl InitMBlock
	mov r1, r0
	ldrh r3, [r1, #2]
	ldrh r2, [sp, #0x30]
	add r0, r7, #8
	bic r3, r3, #0x8000
	strh r3, [r1, #2]
	ldrh r3, [r1, #2]
	mov r2, r2, lsl #0x1f
	orr r2, r3, r2, lsr #16
	strh r2, [r1, #2]
	ldrh r2, [r1, #2]
	ldr r3, [sp, #0x14]
	bic r2, r2, #0x7f00
	strh r2, [r1, #2]
	sub r2, r1, r3
	mov r2, r2, lsl #0x10
	mov r2, r2, lsr #0x10
	ldrh r3, [r1, #2]
	mov r2, r2, lsl #0x19
	orr r2, r3, r2, lsr #17
	strh r2, [r1, #2]
	ldrh r2, [r1, #2]
	ldrh r3, [r7, #0x10]
	bic r2, r2, #0xff
	strh r2, [r1, #2]
	ldrh r2, [r1, #2]
	and r3, r3, #0xff
	orr r2, r2, r3
	strh r2, [r1, #2]
	ldr r2, [r7, #0xc]
	bl InsertMBlock
	mov r0, r6
	add sp, sp, #0x18
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	; .align 2, 0
_020A51A8: .word 0x00004652
_020A51AC: .word 0x00005544
	arm_func_end AllocUsedBlockFromFreeBlock

	arm_func_start AllocFromHead_dup1
AllocFromHead_dup1: ; 0x020A51B0
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrh r4, [r0, #0x36]
	mov r3, r1
	ldr ip, [r0, #0x24]
	and r1, r4, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	mov r1, #0
	moveq r6, #1
	movne r6, #0
	mov r4, r1
	cmp ip, #0
	sub lr, r1, #1
	beq _020A5240
	sub r2, r2, #1
	mvn r5, r2
_020A51F0:
	add r8, ip, #0x10
	add r7, r2, r8
	and sb, r5, r7
	sub r7, sb, r8
	ldr r8, [ip, #4]
	add r7, r3, r7
	cmp r8, r7
	blo _020A5234
	cmp lr, r8
	bls _020A5234
	mov r1, ip
	mov lr, r8
	mov r4, sb
	cmp r6, #0
	bne _020A5240
	cmp r8, r3
	beq _020A5240
_020A5234:
	ldr ip, [ip, #0xc]
	cmp ip, #0
	bne _020A51F0
_020A5240:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r5, #0
	mov r2, r4
	add r0, r0, #0x24
	str r5, [sp]
	bl AllocUsedBlockFromFreeBlock
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end AllocFromHead_dup1

	arm_func_start AllocFromTail_dup1
AllocFromTail_dup1: ; 0x020A5264
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	ldrh r4, [r0, #0x36]
	mov r3, r1
	ldr ip, [r0, #0x28]
	and r1, r4, #1
	mov r1, r1, lsl #0x10
	movs r1, r1, lsr #0x10
	mov r1, #0
	moveq r5, #1
	movne r5, #0
	mov r4, r1
	cmp ip, #0
	sub lr, r1, #1
	beq _020A52F0
	sub r2, r2, #1
	mvn r2, r2
_020A52A4:
	ldr r8, [ip, #4]
	add sb, ip, #0x10
	add r6, r8, sb
	sub r6, r6, r3
	and r7, r2, r6
	subs r6, r7, sb
	bmi _020A52E4
	cmp lr, r8
	bls _020A52E4
	mov r1, ip
	mov lr, r8
	mov r4, r7
	cmp r5, #0
	bne _020A52F0
	cmp r8, r3
	beq _020A52F0
_020A52E4:
	ldr ip, [ip, #8]
	cmp ip, #0
	bne _020A52A4
_020A52F0:
	cmp r1, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r5, #1
	mov r2, r4
	add r0, r0, #0x24
	str r5, [sp]
	bl AllocUsedBlockFromFreeBlock
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	arm_func_end AllocFromTail_dup1

	arm_func_start RecycleRegion
RecycleRegion: ; 0x020A5314
	stmfd sp!, {r4, r5, r6, lr}
	sub sp, sp, #8
	mov r5, r1
	ldr r2, [r5, #0]
	ldr r1, [r5, #4]
	mov r6, r0
	str r2, [sp]
	str r1, [sp, #4]
	ldr r1, [r6, #0]
	mov r4, #0
	cmp r1, #0
	beq _020A5388
	ldr r0, [r5, #0]
_020A5348:
	cmp r1, r0
	movlo r4, r1
	blo _020A537C
	ldr r0, [r5, #4]
	cmp r1, r0
	bne _020A5388
	ldr r2, [r1, #4]
	add r0, r1, #0x10
	add r2, r2, r0
	mov r0, r6
	str r2, [sp, #4]
	bl RemoveMBlock
	b _020A5388
_020A537C:
	ldr r1, [r1, #0xc]
	cmp r1, #0
	bne _020A5348
_020A5388:
	cmp r4, #0
	beq _020A53BC
	ldr r2, [r4, #4]
	add r1, r4, #0x10
	ldr r0, [r5, #0]
	add r1, r2, r1
	cmp r1, r0
	bne _020A53BC
	mov r0, r6
	mov r1, r4
	str r4, [sp]
	bl RemoveMBlock
	mov r4, r0
_020A53BC:
	ldr r1, [sp, #4]
	ldr r0, [sp]
	sub r0, r1, r0
	cmp r0, #0x10
	addlo sp, sp, #8
	movlo r0, #0
	ldmloia sp!, {r4, r5, r6, pc}
	ldr r1, _020A5400 ; =0x00004652
	add r0, sp, #0
	bl InitMBlock
	mov r1, r0
	mov r0, r6
	mov r2, r4
	bl InsertMBlock
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A5400: .word 0x00004652
	arm_func_end RecycleRegion

	arm_func_start NNS_FndCreateExpHeapEx
NNS_FndCreateExpHeapEx: ; 0x020A5404
	stmfd sp!, {r3, lr}
	add r1, r1, r0
	add r0, r0, #3
	bic r1, r1, #3
	bic r0, r0, #3
	cmp r0, r1
	bhi _020A542C
	sub r3, r1, r0
	cmp r3, #0x4c
	bhs _020A5434
_020A542C:
	mov r0, #0
	ldmia sp!, {r3, pc}
_020A5434:
	bl InitExpHeap
	ldmia sp!, {r3, pc}
	arm_func_end NNS_FndCreateExpHeapEx

	arm_func_start NNS_FndDestroyExpHeap
NNS_FndDestroyExpHeap: ; 0x020A543C
	ldr ip, _020A5444 ; =NNSi_FndFinalizeHeap
	bx ip
	; .align 2, 0
_020A5444: .word NNSi_FndFinalizeHeap
	arm_func_end NNS_FndDestroyExpHeap

	arm_func_start NNS_FndAllocFromExpHeapEx
NNS_FndAllocFromExpHeapEx: ; 0x020A5448
	stmfd sp!, {r3, lr}
	cmp r1, #0
	moveq r1, #1
	add r1, r1, #3
	cmp r2, #0
	bic r1, r1, #3
	blt _020A546C
	bl AllocFromHead_dup1
	ldmia sp!, {r3, pc}
_020A546C:
	rsb r2, r2, #0
	bl AllocFromTail_dup1
	ldmia sp!, {r3, pc}
	arm_func_end NNS_FndAllocFromExpHeapEx

	arm_func_start NNS_FndResizeForMBlockExpHeap
NNS_FndResizeForMBlockExpHeap: ; 0x020A5478
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #0x10
	mov r4, r1
	mov sb, r2
	sub r8, r4, #0x10
	add r1, sb, #3
	ldr r7, [r8, #4]
	bic sb, r1, #3
	cmp sb, r7
	mov r5, r0
	addeq sp, sp, #0x10
	moveq r0, sb
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	bls _020A5598
	ldr r6, [r5, #0x24]
	add r0, r8, #0x10
	cmp r6, #0
	add r0, r7, r0
	beq _020A54D4
_020A54C4:
	cmp r6, r0
	ldrne r6, [r6, #0xc]
	cmpne r6, #0
	bne _020A54C4
_020A54D4:
	cmp r6, #0
	beq _020A54F0
	ldr r0, [r6, #4]
	add r1, r7, #0x10
	add r0, r1, r0
	cmp sb, r0
	bls _020A54FC
_020A54F0:
	add sp, sp, #0x10
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020A54FC:
	add r0, sp, #8
	mov r1, r6
	bl GetRegionOfMBlock
	mov r1, r6
	add r0, r5, #0x24
	bl RemoveMBlock
	ldr r2, [sp, #0xc]
	add r3, sb, r4
	ldr r6, [sp, #8]
	sub r1, r2, r3
	str r3, [sp, #8]
	cmp r1, #0x10
	strlo r2, [sp, #8]
	mov r7, r0
	ldr r0, [sp, #8]
	sub r0, r0, r4
	str r0, [r8, #4]
	ldr r1, [sp, #0xc]
	ldr r0, [sp, #8]
	sub r0, r1, r0
	cmp r0, #0x10
	blo _020A5570
	ldr r1, _020A55D4 ; =0x00004652
	add r0, sp, #8
	bl InitMBlock
	mov r1, r0
	mov r2, r7
	add r0, r5, #0x24
	bl InsertMBlock
_020A5570:
	ldr r0, [r5, #0x20]
	ldr r1, [sp, #8]
	and r0, r0, #0xff
	tst r0, #1
	sub r2, r1, r6
	beq _020A55C8
	mov r1, r6
	mov r0, #0
	bl MIi_CpuClear32
	b _020A55C8
_020A5598:
	add r0, sb, r4
	str r0, [sp]
	ldr r1, [r8, #4]
	add r0, r8, #0x10
	add r0, r1, r0
	str r0, [sp, #4]
	add r1, sp, #0
	add r0, r5, #0x24
	str sb, [r8, #4]
	bl RecycleRegion
	cmp r0, #0
	streq r7, [r8, #4]
_020A55C8:
	ldr r0, [r8, #4]
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020A55D4: .word 0x00004652
	arm_func_end NNS_FndResizeForMBlockExpHeap

	arm_func_start NNS_FndFreeToExpHeap
NNS_FndFreeToExpHeap: ; 0x020A55D8
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #8
	sub r4, r1, #0x10
	mov r5, r0
	add r0, sp, #0
	mov r1, r4
	bl GetRegionOfMBlock
	mov r1, r4
	add r0, r5, #0x2c
	bl RemoveMBlock
	add r1, sp, #0
	add r0, r5, #0x24
	bl RecycleRegion
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_FndFreeToExpHeap

	arm_func_start NNS_FndGetTotalFreeSizeForExpHeap
NNS_FndGetTotalFreeSizeForExpHeap: ; 0x020A5614
	ldr r2, [r0, #0x24]
	mov r0, #0
	cmp r2, #0
	bxeq lr
_020A5624:
	ldr r1, [r2, #4]
	ldr r2, [r2, #0xc]
	add r0, r0, r1
	cmp r2, #0
	bne _020A5624
	bx lr
	arm_func_end NNS_FndGetTotalFreeSizeForExpHeap

	arm_func_start NNS_FndSetGroupIDForExpHeap
NNS_FndSetGroupIDForExpHeap: ; 0x020A563C
	ldrh r2, [r0, #0x34]
	strh r1, [r0, #0x34]
	mov r0, r2
	bx lr
	arm_func_end NNS_FndSetGroupIDForExpHeap

	arm_func_start NNS_FndGetSizeForMBlockExpHeap
NNS_FndGetSizeForMBlockExpHeap: ; 0x020A564C
	ldr r0, [r0, #-0xc]
	bx lr
	arm_func_end NNS_FndGetSizeForMBlockExpHeap

	arm_func_start NNS_FndGetGroupIDForMBlockExpHeap
NNS_FndGetGroupIDForMBlockExpHeap: ; 0x020A5654
	ldrh r0, [r0, #-0xe]
	and r0, r0, #0xff
	bx lr
	arm_func_end NNS_FndGetGroupIDForMBlockExpHeap