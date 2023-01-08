	.include "macros/function.inc"
	.include "include/heap_nnssnd.inc"

	

	.text


	arm_func_start NNS_SndHeapCreate
NNS_SndHeapCreate: ; 0x020B9ED4
	stmfd sp!, {r3, r4, r5, lr}
	add r2, r0, #3
	add r0, r0, r1
	bic r5, r2, #3
	cmp r5, r0
	movhi r0, #0
	ldmhiia sp!, {r3, r4, r5, pc}
	sub r1, r0, r5
	cmp r1, #0x10
	movlo r0, #0
	ldmloia sp!, {r3, r4, r5, pc}
	add r0, r5, #0x10
	sub r1, r1, #0x10
	mov r2, #0
	bl NNS_FndCreateFrmHeapEx
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r1, r4
	bl InitHeap
	cmp r0, #0
	movne r0, r5
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl NNS_FndDestroyFrmHeap
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NNS_SndHeapCreate

	arm_func_start NNS_SndHeapDestroy
NNS_SndHeapDestroy: ; 0x020B9F44
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl NNS_SndHeapClear
	ldr r0, [r4, #0]
	bl NNS_FndDestroyFrmHeap
	ldmia sp!, {r4, pc}
	arm_func_end NNS_SndHeapDestroy

	arm_func_start NNS_SndHeapClear
NNS_SndHeapClear: ; 0x020B9F5C
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, r0
	mov r6, #0
	mov r1, r6
	add r0, r8, #4
	bl NNS_FndGetPrevListObject
	movs r5, r0
	beq _020B9FF4
	mov sl, #1
	mov sb, r6
	mov r4, r6
_020B9F88:
	mov r0, r5
	mov r1, r4
	bl NNS_FndGetPrevListObject
	movs r7, r0
	beq _020B9FD4
_020B9F9C:
	ldr ip, [r7, #0xc]
	cmp ip, #0
	beq _020B9FC0
	ldr r1, [r7, #8]
	ldr r2, [r7, #0x10]
	ldr r3, [r7, #0x14]
	add r0, r7, #0x20
	blx ip
	mov r6, sl
_020B9FC0:
	mov r0, r5
	mov r1, r7
	bl NNS_FndGetPrevListObject
	movs r7, r0
	bne _020B9F9C
_020B9FD4:
	mov r1, r5
	add r0, r8, #4
	bl NNS_FndRemoveListObject
	mov r1, sb
	add r0, r8, #4
	bl NNS_FndGetPrevListObject
	movs r5, r0
	bne _020B9F88
_020B9FF4:
	ldr r0, [r8]
	mov r1, #3
	bl NNS_FndFreeToFrmHeap
	cmp r6, #0
	beq _020BA00C
	bl EraseSync
_020BA00C:
	mov r0, r8
	bl NewSection
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end NNS_SndHeapClear

	arm_func_start NNS_SndHeapAlloc
NNS_SndHeapAlloc: ; 0x020BA018
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	add r0, r7, #0x1f
	bic r1, r0, #0x1f
	mov r6, r2
	ldr r0, [r8]
	add r1, r1, #0x20
	mov r2, #0x20
	mov r5, r3
	bl NNS_FndAllocFromFrmHeapEx
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, r7, r8, pc}
	add r0, r8, #4
	mov r1, #0
	bl NNS_FndGetPrevListObject
	str r7, [r4, #8]
	str r6, [r4, #0xc]
	ldr r2, [sp, #0x18]
	str r5, [r4, #0x10]
	mov r1, r4
	str r2, [r4, #0x14]
	bl NNS_FndAppendListObject
	add r0, r4, #0x20
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end NNS_SndHeapAlloc

	arm_func_start NNS_SndHeapSaveState
NNS_SndHeapSaveState: ; 0x020BA080
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldrh r1, [r4, #0xc]
	ldr r0, [r4, #0]
	bl NNS_FndRecordStateForFrmHeap
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r0, r4
	bl NewSection
	cmp r0, #0
	ldrneh r0, [r4, #0xc]
	subne r0, r0, #1
	ldmneia sp!, {r4, pc}
	ldr r0, [r4, #0]
	mov r1, #0
	bl NNS_FndFreeByStateToFrmHeap
	mvn r0, #0
	ldmia sp!, {r4, pc}
	arm_func_end NNS_SndHeapSaveState

	arm_func_start NNS_SndHeapLoadState
NNS_SndHeapLoadState: ; 0x020BA0CC
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r8, #0
	movs sb, r1
	mov sl, r0
	mov r7, r8
	bne _020BA0EC
	bl NNS_SndHeapClear
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
_020BA0EC:
	ldrh r0, [sl, #0xc]
	cmp sb, r0
	bge _020BA170
	mov r4, #1
	mov r5, r8
_020BA100:
	mov r1, r5
	add r0, sl, #4
	bl NNS_FndGetPrevListObject
	mov r1, r8
	mov r6, r0
	bl NNS_FndGetPrevListObject
	movs r8, r0
	beq _020BA158
_020BA120:
	ldr ip, [r8, #0xc]
	cmp ip, #0
	beq _020BA144
	ldr r1, [r8, #8]
	ldr r2, [r8, #0x10]
	ldr r3, [r8, #0x14]
	add r0, r8, #0x20
	blx ip
	mov r7, r4
_020BA144:
	mov r0, r6
	mov r1, r8
	bl NNS_FndGetPrevListObject
	movs r8, r0
	bne _020BA120
_020BA158:
	mov r1, r6
	add r0, sl, #4
	bl NNS_FndRemoveListObject
	ldrh r0, [sl, #0xc]
	cmp sb, r0
	blt _020BA100
_020BA170:
	ldr r0, [sl]
	mov r1, sb
	bl NNS_FndFreeByStateToFrmHeap
	cmp r7, #0
	beq _020BA188
	bl EraseSync
_020BA188:
	ldrh r1, [sl, #0xc]
	ldr r0, [sl]
	bl NNS_FndRecordStateForFrmHeap
	mov r0, sl
	bl NewSection
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end NNS_SndHeapLoadState

	arm_func_start InitHeapSection
InitHeapSection: ; 0x020BA1A0
	ldr ip, _020BA1AC ; =NNS_FndInitList
	mov r1, #0
	bx ip
	; .align 2, 0
_020BA1AC: .word NNS_FndInitList
	arm_func_end InitHeapSection

	arm_func_start InitHeap
InitHeap: ; 0x020BA1B0
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	add r0, r5, #4
	mov r1, #0xc
	bl NNS_FndInitList
	mov r0, r5
	str r4, [r5, #0]
	bl NewSection
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end InitHeap

	arm_func_start NewSection
NewSection: ; 0x020BA1E4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldr r0, [r5, #0]
	mov r1, #0x14
	mov r2, #4
	bl NNS_FndAllocFromFrmHeapEx
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	bl InitHeapSection
	mov r1, r4
	add r0, r5, #4
	bl NNS_FndAppendListObject
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end NewSection

	arm_func_start EraseSync
EraseSync: ; 0x020BA220
	stmfd sp!, {r4, lr}
	bl SND_GetCurrentCommandTag
	mov r4, r0
	mov r0, #1
	bl SND_FlushCommand
	mov r0, r4
	bl SND_WaitForCommandProc
	ldmia sp!, {r4, pc}
	arm_func_end EraseSync