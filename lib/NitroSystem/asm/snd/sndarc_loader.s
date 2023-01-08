	.include "macros/function.inc"
	.include "include/sndarc_loader.inc"

	.extern Unk_021CBEF4
	

	.text


	arm_func_start NNS_SndArcLoadGroup
NNS_SndArcLoadGroup: ; 0x020BA240
	stmfd sp!, {r3, lr}
	bl NNSi_SndArcLoadGroup
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndArcLoadGroup

	arm_func_start NNS_SndArcLoadSeq
NNS_SndArcLoadSeq: ; 0x020BA258
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov ip, #0
	mov r1, #0xff
	mov r3, #1
	str ip, [sp]
	bl NNSi_SndArcLoadSeq
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndArcLoadSeq

	arm_func_start NNS_SndArcLoadBank
NNS_SndArcLoadBank: ; 0x020BA284
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov ip, #0
	mov r1, #0xff
	mov r3, #1
	str ip, [sp]
	bl NNSi_SndArcLoadBank
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndArcLoadBank

	arm_func_start NNS_SndArcLoadWaveArc
NNS_SndArcLoadWaveArc: ; 0x020BA2B0
	stmfd sp!, {r3, lr}
	mov r2, r1
	mov ip, #0
	mov r1, #0xff
	mov r3, #1
	str ip, [sp]
	bl NNSi_SndArcLoadWaveArc
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndArcLoadWaveArc

	arm_func_start NNS_SndArcLoadSeqEx
NNS_SndArcLoadSeqEx: ; 0x020BA2DC
	stmfd sp!, {r3, lr}
	mov ip, #0
	mov r3, #1
	str ip, [sp]
	bl NNSi_SndArcLoadSeq
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndArcLoadSeqEx

	arm_func_start NNSi_SndArcLoadGroup
NNSi_SndArcLoadGroup: ; 0x020BA300
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov sb, r1
	bl NNS_SndArcGetGroupInfo
	movs r6, r0
	moveq r0, #1
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r6, #0]
	mov r7, #0
	cmp r0, #0
	bls _020BA3FC
	add r8, r6, #4
	mov fp, r7
	mov sl, r7
	mov r4, r7
	mov r5, r7
_020BA33C:
	ldrb r0, [r8]
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020BA3E8
_020BA34C: ; jump table
	b _020BA35C ; case 0
	b _020BA3A4 ; case 1
	b _020BA3C8 ; case 2
	b _020BA380 ; case 3
_020BA35C:
	str r5, [sp]
	ldrb r1, [r8, #1]
	ldr r0, [r8, #4]
	mov r2, sb
	mov r3, #1
	bl NNSi_SndArcLoadSeq
	cmp r0, #0
	beq _020BA3E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA380:
	str r4, [sp]
	ldrb r1, [r8, #1]
	ldr r0, [r8, #4]
	mov r2, sb
	mov r3, #1
	bl NNSi_SndArcLoadSeqArc
	cmp r0, #0
	beq _020BA3E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA3A4:
	str sl, [sp]
	ldrb r1, [r8, #1]
	ldr r0, [r8, #4]
	mov r2, sb
	mov r3, #1
	bl NNSi_SndArcLoadBank
	cmp r0, #0
	beq _020BA3E8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA3C8:
	str fp, [sp]
	ldrb r1, [r8, #1]
	ldr r0, [r8, #4]
	mov r2, sb
	mov r3, #1
	bl NNSi_SndArcLoadWaveArc
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA3E8:
	ldr r0, [r6, #0]
	add r7, r7, #1
	cmp r7, r0
	add r8, r8, #8
	blo _020BA33C
_020BA3FC:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	arm_func_end NNSi_SndArcLoadGroup

	arm_func_start NNSi_SndArcLoadSeq
NNSi_SndArcLoadSeq: ; 0x020BA404
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl NNS_SndArcGetSeqInfo
	movs r4, r0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r0, #0
	str r0, [sp]
	ldrh r0, [r4, #4]
	mov r1, r7
	mov r2, r6
	mov r3, r5
	bl NNSi_SndArcLoadBank
	cmp r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	tst r7, #1
	ldr r0, [r4, #0]
	beq _020BA470
	mov r1, r6
	mov r2, r5
	bl LoadSeq
	cmp r0, #0
	bne _020BA474
	mov r0, #6
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020BA470:
	bl NNS_SndArcGetFileAddress
_020BA474:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end NNSi_SndArcLoadSeq

	arm_func_start NNSi_SndArcLoadSeqArc
NNSi_SndArcLoadSeqArc: ; 0x020BA488
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl NNS_SndArcGetSeqArcInfo
	cmp r0, #0
	moveq r0, #3
	ldmeqia sp!, {r4, r5, r6, pc}
	tst r6, #8
	ldr r0, [r0, #0]
	beq _020BA4D0
	mov r1, r5
	mov r2, r4
	bl LoadSeqArc
	cmp r0, #0
	bne _020BA4D4
	mov r0, #7
	ldmia sp!, {r4, r5, r6, pc}
_020BA4D0:
	bl NNS_SndArcGetFileAddress
_020BA4D4:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_SndArcLoadSeqArc

	arm_func_start NNSi_SndArcLoadBank
NNSi_SndArcLoadBank: ; 0x020BA4E8
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	mov sl, r1
	mov sb, r2
	mov fp, r3
	bl NNS_SndArcGetBankInfo
	movs r5, r0
	addeq sp, sp, #8
	moveq r0, #4
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	tst sl, #2
	ldr r0, [r5, #0]
	beq _020BA53C
	mov r1, sb
	mov r2, fp
	bl LoadBank
	movs r6, r0
	bne _020BA544
	add sp, sp, #8
	mov r0, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA53C:
	bl NNS_SndArcGetFileAddress
	mov r6, r0
_020BA544:
	and r8, sl, #4
	mov r7, #0
_020BA54C:
	add r0, r5, r7, lsl #1
	ldrh r0, [r0, #4]
	ldr r1, _020BA624 ; =0x0000FFFF
	cmp r0, r1
	beq _020BA600
	bl NNS_SndArcGetWaveArcInfo
	movs r4, r0
	addeq sp, sp, #8
	moveq r0, #5
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #4
	str r0, [sp]
	add r0, r5, r7, lsl #1
	ldrh r0, [r0, #4]
	mov r1, sl
	mov r2, sb
	mov r3, fp
	bl NNSi_SndArcLoadWaveArc
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r0, [r4, #0]
	mov r0, r0, lsr #0x18
	tst r0, #1
	cmpne r8, #0
	beq _020BA5E4
	str sb, [sp]
	ldr r1, [r4, #0]
	ldr r0, [sp, #4]
	mov r3, r1, lsl #8
	mov r1, r6
	mov r2, r7
	mov r3, r3, lsr #8
	bl LoadSingleWaves
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #9
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
_020BA5E4:
	cmp r6, #0
	ldrne r2, [sp, #4]
	cmpne r2, #0
	beq _020BA600
	mov r0, r6
	mov r1, r7
	bl SND_AssignWaveArc
_020BA600:
	add r7, r7, #1
	cmp r7, #4
	blt _020BA54C
	ldr r0, [sp, #0x30]
	cmp r0, #0
	strne r6, [r0]
	mov r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020BA624: .word 0x0000FFFF
	arm_func_end NNSi_SndArcLoadBank

	arm_func_start NNSi_SndArcLoadWaveArc
NNSi_SndArcLoadWaveArc: ; 0x020BA628
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl NNS_SndArcGetWaveArcInfo
	cmp r0, #0
	moveq r0, #5
	ldmeqia sp!, {r4, r5, r6, pc}
	tst r6, #4
	ldr r0, [r0, #0]
	beq _020BA694
	mov r1, r0, lsr #0x18
	tst r1, #1
	mov r0, r0, lsl #8
	mov r1, r5
	beq _020BA678
	mov r2, r4
	mov r0, r0, lsr #8
	bl LoadWaveArcTable
	b _020BA684
_020BA678:
	mov r2, r4
	mov r0, r0, lsr #8
	bl LoadWaveArc
_020BA684:
	cmp r0, #0
	bne _020BA6A0
	mov r0, #9
	ldmia sp!, {r4, r5, r6, pc}
_020BA694:
	mov r0, r0, lsl #8
	mov r0, r0, lsr #8
	bl NNS_SndArcGetFileAddress
_020BA6A0:
	ldr r1, [sp, #0x10]
	cmp r1, #0
	strne r0, [r1]
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_SndArcLoadWaveArc

	arm_func_start NNSi_SndArcLoadFile
NNSi_SndArcLoadFile: ; 0x020BA6B4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, lr}
	sub sp, sp, #4
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r4, r3
	bl NNS_SndArcGetFileSize
	movs r5, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	ldr r0, [sp, #0x20]
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r2, r7
	mov r3, r6
	add r1, r5, #0x20
	str r4, [sp]
	bl NNS_SndHeapAlloc
	movs r4, r0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r8
	mov r1, r4
	mov r2, r5
	mov r3, #0
	bl NNS_SndArcReadFile
	cmp r5, r0
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, pc}
	mov r0, r4
	mov r1, r5
	bl DC_StoreRange
	mov r0, r4
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, pc}
	arm_func_end NNSi_SndArcLoadFile

	arm_func_start LoadSeq
LoadSeq: ; 0x020BA754
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl NNS_SndArcGetFileAddress
	movs r4, r0
	bne _020BA7B4
	cmp r5, #0
	moveq r2, #0
	beq _020BA784
	bl NNS_SndArcGetCurrent
	mov r2, r0
_020BA784:
	ldr r1, _020BA7BC ; =SeqDisposeCallback
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl NNSi_SndArcLoadFile
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _020BA7B4
	mov r0, r7
	mov r1, r4
	bl NNS_SndArcSetFileAddress
_020BA7B4:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BA7BC: .word SeqDisposeCallback
	arm_func_end LoadSeq

	arm_func_start LoadSeqArc
LoadSeqArc: ; 0x020BA7C0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl NNS_SndArcGetFileAddress
	movs r4, r0
	bne _020BA820
	cmp r5, #0
	moveq r2, #0
	beq _020BA7F0
	bl NNS_SndArcGetCurrent
	mov r2, r0
_020BA7F0:
	ldr r1, _020BA828 ; =SeqDisposeCallback
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl NNSi_SndArcLoadFile
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _020BA820
	mov r0, r7
	mov r1, r4
	bl NNS_SndArcSetFileAddress
_020BA820:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BA828: .word SeqDisposeCallback
	arm_func_end LoadSeqArc

	arm_func_start LoadBank
LoadBank: ; 0x020BA82C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl NNS_SndArcGetFileAddress
	movs r4, r0
	bne _020BA88C
	cmp r5, #0
	moveq r2, #0
	beq _020BA85C
	bl NNS_SndArcGetCurrent
	mov r2, r0
_020BA85C:
	ldr r1, _020BA894 ; =BankDisposeCallback
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl NNSi_SndArcLoadFile
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _020BA88C
	mov r0, r7
	mov r1, r4
	bl NNS_SndArcSetFileAddress
_020BA88C:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BA894: .word BankDisposeCallback
	arm_func_end LoadBank

	arm_func_start LoadWaveArc
LoadWaveArc: ; 0x020BA898
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl NNS_SndArcGetFileAddress
	movs r4, r0
	bne _020BA8F8
	cmp r5, #0
	moveq r2, #0
	beq _020BA8C8
	bl NNS_SndArcGetCurrent
	mov r2, r0
_020BA8C8:
	ldr r1, _020BA900 ; =WaveArcDisposeCallback
	mov r0, r7
	mov r3, r7
	str r6, [sp]
	bl NNSi_SndArcLoadFile
	mov r4, r0
	cmp r5, #0
	cmpne r4, #0
	beq _020BA8F8
	mov r0, r7
	mov r1, r4
	bl NNS_SndArcSetFileAddress
_020BA8F8:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020BA900: .word WaveArcDisposeCallback
	arm_func_end LoadWaveArc

	arm_func_start LoadWaveArcTable
LoadWaveArcTable: ; 0x020BA904
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov sb, r0
	mov r8, r1
	mov r7, r2
	bl NNS_SndArcGetFileAddress
	movs r5, r0
	bne _020BA9F8
	ldr r1, _020BAA00 ; =0x021CBEF4
	mov r0, sb
	mov r2, #0x3c
	mov r3, #0
	bl NNS_SndArcReadFile
	cmp r0, #0x3c
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r0, _020BAA04 ; =0x021CBEF4
	cmp r8, #0
	ldr r0, [r0, #0x38]
	mov r6, r0, lsl #2
	mov r4, r6, lsl #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r7, #0
	moveq r3, #0
	beq _020BA970
	bl NNS_SndArcGetCurrent
	mov r3, r0
_020BA970:
	ldr r2, _020BAA08 ; =WaveArcTableDisposeCallback
	mov r0, r8
	add r1, r4, #0x5c
	str sb, [sp]
	bl NNS_SndHeapAlloc
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, sb
	mov r1, r5
	add r2, r6, #0x3c
	mov r3, #0
	bl NNS_SndArcReadFile
	add r1, r6, #0x3c
	cmp r0, r1
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r1, [r5, #0x38]
	add r0, r5, #0x3c
	mov r2, r6
	add r1, r0, r1, lsl #2
	bl MI_CpuCopy8
	mov r2, r6
	add r0, r5, #0x3c
	mov r1, #0
	bl MI_CpuFill8
	mov r0, r5
	add r1, r4, #0x3c
	bl DC_StoreRange
	cmp r7, #0
	beq _020BA9F8
	mov r0, sb
	mov r1, r5
	bl NNS_SndArcSetFileAddress
_020BA9F8:
	mov r0, r5
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BAA00: .word Unk_021CBEF4
_020BAA04: .word Unk_021CBEF4
_020BAA08: .word WaveArcTableDisposeCallback
	arm_func_end LoadWaveArcTable

	arm_func_start DisposeCallback
DisposeCallback: ; 0x020BAA0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	movs r4, r1
	mov r7, r0
	mov r6, r2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl OS_DisableInterrupts
	mov r5, r0
	mov r0, r4
	bl NNS_SndArcSetCurrent
	mov r4, r0
	mov r0, r6
	bl NNS_SndArcGetFileAddress
	cmp r7, r0
	bne _020BAA50
	mov r0, r6
	mov r1, #0
	bl NNS_SndArcSetFileAddress
_020BAA50:
	mov r0, r4
	bl NNS_SndArcSetCurrent
	mov r0, r5
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end DisposeCallback

	arm_func_start SeqDisposeCallback
SeqDisposeCallback: ; 0x020BAA64
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl DisposeCallback
	mov r0, r5
	add r1, r5, r4
	bl SND_InvalidateSeqData
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end SeqDisposeCallback

	arm_func_start BankDisposeCallback
BankDisposeCallback: ; 0x020BAA8C
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl DisposeCallback
	mov r0, r5
	add r1, r5, r4
	bl SND_InvalidateBankData
	mov r0, r5
	bl SND_DestroyBank
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end BankDisposeCallback

	arm_func_start WaveArcDisposeCallback
WaveArcDisposeCallback: ; 0x020BAABC
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r1
	mov r1, r2
	mov r5, r0
	mov r2, r3
	bl DisposeCallback
	mov r0, r5
	add r1, r5, r4
	bl SND_InvalidateWaveData
	mov r0, r5
	bl SND_DestroyWaveArc
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end WaveArcDisposeCallback

	arm_func_start WaveArcTableDisposeCallback
WaveArcTableDisposeCallback: ; 0x020BAAEC
	stmfd sp!, {r4, lr}
	mov r1, r2
	mov r4, r0
	mov r2, r3
	bl DisposeCallback
	mov r0, r4
	bl SND_DestroyWaveArc
	ldmia sp!, {r4, pc}
	arm_func_end WaveArcTableDisposeCallback

	arm_func_start SingleWaveDisposeCallback
SingleWaveDisposeCallback: ; 0x020BAB0C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r2
	mov r7, r0
	mov r4, r3
	mov r6, r1
	mov r0, r5
	mov r1, r4
	bl SND_GetWaveDataAddress
	cmp r7, r0
	bne _020BAB44
	mov r0, r5
	mov r1, r4
	mov r2, #0
	bl SND_SetWaveDataAddress
_020BAB44:
	mov r0, r7
	add r1, r7, r6
	bl SND_InvalidateWaveData
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end SingleWaveDisposeCallback

	arm_func_start LoadSingleWave
LoadSingleWave: ; 0x020BAB54
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, r0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	bl SND_GetWaveDataAddress
	cmp r0, #0
	movne r0, #1
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r8
	bl SND_GetWaveDataCount
	ldr r1, [r8, #0x38]
	sub r0, r0, #1
	add r1, r1, r7
	add r1, r8, r1, lsl #2
	cmp r7, r0
	ldrlo r0, [r1, #0x40]
	ldr r4, [r1, #0x3c]
	ldrhs r0, [r8, #8]
	cmp r5, #0
	sub sb, r0, r4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	ldr r2, _020BAC18 ; =SingleWaveDisposeCallback
	mov r0, r5
	mov r3, r8
	add r1, sb, #0x20
	str r7, [sp]
	bl NNS_SndHeapAlloc
	movs r5, r0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r6
	mov r1, r5
	mov r2, sb
	mov r3, r4
	bl NNS_SndArcReadFile
	cmp sb, r0
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r5
	mov r1, sb
	bl DC_StoreRange
	mov r0, r8
	mov r1, r7
	mov r2, r5
	bl SND_SetWaveDataAddress
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020BAC18: .word SingleWaveDisposeCallback
	arm_func_end LoadSingleWave

	arm_func_start LoadSingleWaves
LoadSingleWaves: ; 0x020BAC1C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, lr}
	sub sp, sp, #0x1c
	mov r8, r0
	add r0, sp, #0
	mov r7, r1
	mov r6, r2
	mov r5, r3
	ldr r4, [sp, #0x40]
	bl SND_GetFirstInstDataPos
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	cmp r7, #0
	add r2, sp, #8
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	add r1, sp, #0x10
	mov r0, r7
	bl SND_GetNextInstData
	cmp r0, #0
	beq _020BACD0
	add sl, sp, #0x10
	add sb, sp, #8
_020BAC80:
	ldrb r0, [sp, #0x10]
	cmp r0, #1
	ldreqh r0, [sp, #0x14]
	cmpeq r6, r0
	bne _020BACB8
	ldrh r1, [sp, #0x12]
	mov r0, r8
	mov r2, r5
	mov r3, r4
	bl LoadSingleWave
	cmp r0, #0
	addeq sp, sp, #0x1c
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
_020BACB8:
	mov r0, r7
	mov r1, sl
	mov r2, sb
	bl SND_GetNextInstData
	cmp r0, #0
	bne _020BAC80
_020BACD0:
	mov r0, #1
	add sp, sp, #0x1c
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end LoadSingleWaves

	.bss


	.global Unk_021CBEF4
Unk_021CBEF4: ; 0x021CBEF4
	.space 0x3C

