	.include "macros/function.inc"
	.include "include/sndarc.inc"

	.extern Unk_021CBEF0
	

	.text


	arm_func_start NNS_SndArcInit
NNS_SndArcInit: ; 0x020B97C8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov ip, #0
	str ip, [r6, #0x8c]
	str ip, [r6, #0x84]
	str ip, [r6, #0x88]
	add r0, r6, #0x7c
	mov r5, r2
	mov r4, r3
	str ip, [r6, #0x90]
	bl FS_ConvertPathToFileID
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	add r0, r6, #0x34
	bl FS_InitFile
	add r1, r6, #0x7c
	add r0, r6, #0x34
	ldmia r1, {r1, r2}
	bl FS_OpenFileFast
	cmp r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	mov r3, #1
	mov r0, r6
	mov r1, r5
	mov r2, r4
	str r3, [r6, #0x30]
	bl NNS_SndArcSetup
	cmp r0, #0
	ldrne r0, _020B9844 ; =0x021CBEF0
	strne r6, [r0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020B9844: .word Unk_021CBEF0
	arm_func_end NNS_SndArcInit

	arm_func_start NNS_SndArcSetup
NNS_SndArcSetup: ; 0x020B9848
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #4
	mov r5, r0
	mov r4, r1
	mov r1, #0
	mov r6, r2
	mov r2, r1
	add r0, r5, #0x34
	bl FS_SeekFile
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	mov r1, r5
	add r0, r5, #0x34
	mov r2, #0x30
	bl FS_ReadFile
	cmp r0, #0x30
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	cmp r4, #0
	beq _020B9A08
	mov r0, #0
	str r0, [sp]
	ldr r1, [r5, #0x1c]
	ldr r2, _020B9A14 ; =InfoDisposeCallback
	mov r0, r4
	mov r3, r5
	bl NNS_SndHeapAlloc
	cmp r0, #0
	str r0, [r5, #0x8c]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x18]
	add r0, r5, #0x34
	mov r2, #0
	bl FS_SeekFile
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x8c]
	ldr r2, [r5, #0x1c]
	add r0, r5, #0x34
	bl FS_ReadFile
	ldr r1, [r5, #0x1c]
	cmp r0, r1
	addne sp, sp, #4
	mov r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	str r0, [sp]
	ldr r1, [r5, #0x24]
	ldr r2, _020B9A18 ; =FatDisposeCallback
	mov r0, r4
	mov r3, r5
	bl NNS_SndHeapAlloc
	cmp r0, #0
	str r0, [r5, #0x84]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x20]
	add r0, r5, #0x34
	mov r2, #0
	bl FS_SeekFile
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x84]
	ldr r2, [r5, #0x24]
	add r0, r5, #0x34
	bl FS_ReadFile
	ldr r1, [r5, #0x24]
	cmp r0, r1
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
	cmp r6, #0
	ldrne r1, [r5, #0x14]
	cmpne r1, #0
	beq _020B9A08
	ldr r2, _020B9A1C ; =SymbolDisposeCallback
	mov ip, #0
	mov r0, r4
	mov r3, r5
	str ip, [sp]
	bl NNS_SndHeapAlloc
	cmp r0, #0
	str r0, [r5, #0x88]
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x10]
	add r0, r5, #0x34
	mov r2, #0
	bl FS_SeekFile
	cmp r0, #0
	addeq sp, sp, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, pc}
	ldr r1, [r5, #0x88]
	ldr r2, [r5, #0x14]
	add r0, r5, #0x34
	bl FS_ReadFile
	ldr r1, [r5, #0x14]
	cmp r0, r1
	addne sp, sp, #4
	movne r0, #0
	ldmneia sp!, {r3, r4, r5, r6, pc}
_020B9A08:
	mov r0, #1
	add sp, sp, #4
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_020B9A14: .word InfoDisposeCallback
_020B9A18: .word FatDisposeCallback
_020B9A1C: .word SymbolDisposeCallback
	arm_func_end NNS_SndArcSetup

	arm_func_start NNS_SndArcInitOnMemory
NNS_SndArcInitOnMemory: ; 0x020B9A20
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	mov r0, r4
	mov r1, r5
	mov r2, #0x30
	bl MIi_CpuCopy32
	ldr r0, [r5, #0x18]
	mov r3, #0
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	str r0, [r5, #0x8c]
	ldr r0, [r5, #0x20]
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	str r0, [r5, #0x84]
	ldr r0, [r5, #0x10]
	cmp r0, #0
	moveq r0, #0
	addne r0, r4, r0
	str r0, [r5, #0x88]
	str r3, [r5, #0x90]
	ldr r2, [r5, #0x84]
	ldr r0, [r2, #8]
	cmp r0, #0
	bls _020B9ACC
	mov ip, r3
	mov r1, r3
_020B9A98:
	add r2, r2, #0xc
	ldr r0, [r2, ip]
	add r2, r2, ip
	cmp r0, #0
	moveq r0, r1
	addne r0, r4, r0
	str r0, [r2, #8]
	ldr r2, [r5, #0x84]
	add r3, r3, #1
	ldr r0, [r2, #8]
	add ip, ip, #0x10
	cmp r3, r0
	blo _020B9A98
_020B9ACC:
	mov r1, #0
	ldr r0, _020B9AE0 ; =0x021CBEF0
	str r1, [r5, #0x30]
	str r5, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020B9AE0: .word Unk_021CBEF0
	arm_func_end NNS_SndArcInitOnMemory

	arm_func_start NNS_SndArcSetCurrent
NNS_SndArcSetCurrent: ; 0x020B9AE4
	ldr r1, _020B9AF8 ; =0x021CBEF0
	ldr r2, [r1, #0]
	str r0, [r1, #0]
	mov r0, r2
	bx lr
	; .align 2, 0
_020B9AF8: .word Unk_021CBEF0
	arm_func_end NNS_SndArcSetCurrent

	arm_func_start NNS_SndArcGetCurrent
NNS_SndArcGetCurrent: ; 0x020B9AFC
	ldr r0, _020B9B08 ; =0x021CBEF0
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020B9B08: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetCurrent

	arm_func_start NNS_SndArcGetSeqParam
NNS_SndArcGetSeqParam: ; 0x020B9B0C
	stmfd sp!, {r3, lr}
	bl NNS_SndArcGetSeqInfo
	cmp r0, #0
	moveq r0, #0
	addne r0, r0, #4
	ldmia sp!, {r3, pc}
	arm_func_end NNS_SndArcGetSeqParam

	arm_func_start NNS_SndArcGetSeqInfo
NNS_SndArcGetSeqInfo: ; 0x020B9B24
	ldr r1, _020B9B84 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #8]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9B84: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetSeqInfo

	arm_func_start NNS_SndArcGetSeqArcInfo
NNS_SndArcGetSeqArcInfo: ; 0x020B9B88
	ldr r1, _020B9BE8 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0xc]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9BE8: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetSeqArcInfo

	arm_func_start NNS_SndArcGetBankInfo
NNS_SndArcGetBankInfo: ; 0x020B9BEC
	ldr r1, _020B9C4C ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0x10]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9C4C: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetBankInfo

	arm_func_start NNS_SndArcGetWaveArcInfo
NNS_SndArcGetWaveArcInfo: ; 0x020B9C50
	ldr r1, _020B9CB0 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0x14]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9CB0: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetWaveArcInfo

	arm_func_start NNS_SndArcGetPlayerInfo
NNS_SndArcGetPlayerInfo: ; 0x020B9CB4
	ldr r1, _020B9D14 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0x18]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9D14: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetPlayerInfo

	arm_func_start NNS_SndArcGetGroupInfo
NNS_SndArcGetGroupInfo: ; 0x020B9D18
	ldr r1, _020B9D78 ; =0x021CBEF0
	ldr r3, [r1, #0]
	ldr r2, [r3, #0x8c]
	ldr r1, [r2, #0x1c]
	cmp r1, #0
	moveq r2, #0
	addne r2, r2, r1
	cmp r2, #0
	moveq r0, #0
	bxeq lr
	cmp r0, #0
	movlt r0, #0
	bxlt lr
	ldr r1, [r2, #0]
	cmp r0, r1
	movhs r0, #0
	bxhs lr
	add r0, r2, r0, lsl #2
	ldr r1, [r0, #4]
	ldr r0, [r3, #0x8c]
	cmp r1, #0
	moveq r0, #0
	addne r0, r0, r1
	bx lr
	; .align 2, 0
_020B9D78: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetGroupInfo

	arm_func_start NNS_SndArcGetFileSize
NNS_SndArcGetFileSize: ; 0x020B9D7C
	ldr r1, _020B9DA0 ; =0x021CBEF0
	ldr r1, [r1, #0]
	ldr r2, [r1, #0x84]
	ldr r1, [r2, #8]
	cmp r0, r1
	movhs r0, #0
	addlo r0, r2, r0, lsl #4
	ldrlo r0, [r0, #0x10]
	bx lr
	; .align 2, 0
_020B9DA0: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetFileSize

	arm_func_start NNS_SndArcReadFile
NNS_SndArcReadFile: ; 0x020B9DA4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r4, _020B9E68 ; =0x021CBEF0
	mov sb, r2
	ldr r7, [r4, #0]
	mov sl, r1
	ldr r2, [r7, #0x84]
	mov r8, r3
	ldr r1, [r2, #8]
	cmp r0, r1
	mvnhs r0, #0
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r5, [r7, #0x90]
	add r1, r2, #0xc
	cmp r5, #0
	moveq r5, sb
	add fp, r1, r0, lsl #4
	cmp sb, #0
	mov r4, #0
	ble _020B9E60
_020B9DF0:
	ldr r0, [fp, #4]
	sub r6, sb, r4
	cmp r6, r5
	movgt r6, r5
	sub r0, r0, r8
	cmp r6, r0
	movhi r6, r0
	cmp r6, #0
	beq _020B9E60
	ldr r1, [fp]
	mov r2, #0
	add r0, r7, #0x34
	add r1, r1, r8
	bl FS_SeekFile
	cmp r0, #0
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r1, sl
	mov r2, r6
	add r0, r7, #0x34
	bl FS_ReadFile
	cmp r0, #0
	ldmltia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r4, r4, r0
	cmp r4, sb
	add r8, r8, r0
	add sl, sl, r0
	blt _020B9DF0
_020B9E60:
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_020B9E68: .word Unk_021CBEF0
	arm_func_end NNS_SndArcReadFile

	arm_func_start NNS_SndArcGetFileAddress
NNS_SndArcGetFileAddress: ; 0x020B9E6C
	ldr r1, _020B9E90 ; =0x021CBEF0
	ldr r1, [r1, #0]
	ldr r2, [r1, #0x84]
	ldr r1, [r2, #8]
	cmp r0, r1
	movhs r0, #0
	addlo r0, r2, r0, lsl #4
	ldrlo r0, [r0, #0x14]
	bx lr
	; .align 2, 0
_020B9E90: .word Unk_021CBEF0
	arm_func_end NNS_SndArcGetFileAddress

	arm_func_start NNS_SndArcSetFileAddress
NNS_SndArcSetFileAddress: ; 0x020B9E94
	ldr r2, _020B9EAC ; =0x021CBEF0
	ldr r2, [r2, #0]
	ldr r2, [r2, #0x84]
	add r0, r2, r0, lsl #4
	str r1, [r0, #0x14]
	bx lr
	; .align 2, 0
_020B9EAC: .word Unk_021CBEF0
	arm_func_end NNS_SndArcSetFileAddress

	arm_func_start InfoDisposeCallback
InfoDisposeCallback: ; 0x020B9EB0
	mov r0, #0
	str r0, [r2, #0x8c]
	bx lr
	arm_func_end InfoDisposeCallback

	arm_func_start FatDisposeCallback
FatDisposeCallback: ; 0x020B9EBC
	mov r0, #0
	str r0, [r2, #0x84]
	bx lr
	arm_func_end FatDisposeCallback

	arm_func_start SymbolDisposeCallback
SymbolDisposeCallback: ; 0x020B9EC8
	mov r0, #0
	str r0, [r2, #0x88]
	bx lr
	arm_func_end SymbolDisposeCallback

	.bss


	.global Unk_021CBEF0
Unk_021CBEF0: ; 0x021CBEF0
	.space 0x4

