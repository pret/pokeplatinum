	.include "macros/function.inc"
	.include "include/unk_020CA638.inc"

	.extern Unk_021CECCC
	.extern Unk_021CECD0
	

	.text


	arm_func_start MIC_Init
MIC_Init: ; 0x020CA638
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CA69C ; =0x021CECCC
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #8]
	bl PXI_Init
	mov r5, #9
	mov r4, #1
_020CA66C:
	mov r0, r5
	mov r1, r4
	bl PXI_IsCallbackReady
	cmp r0, #0
	beq _020CA66C
	ldr r2, _020CA6A0 ; =0x027FFF90
	mov r3, #0
	ldr r1, _020CA6A4 ; =MicCommonCallback
	mov r0, #9
	str r3, [r2, #0]
	bl PXI_SetFifoRecvCallback
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CA69C: .word Unk_021CECCC
_020CA6A0: .word 0x027FFF90
_020CA6A4: .word MicCommonCallback
	arm_func_end MIC_Init

	arm_func_start MIC_DoSamplingAsync
MIC_DoSamplingAsync: ; 0x020CA6A8
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r1
	cmp r0, #6
	mov r6, r2
	mov r5, r3
	movge r0, #2
	ldmgeia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #3
	addls pc, pc, r0, lsl #2
	b _020CA700
_020CA6D0: ; jump table
	b _020CA6E0 ; case 0
	b _020CA6E8 ; case 1
	b _020CA6F0 ; case 2
	b _020CA6F8 ; case 3
_020CA6E0:
	mov r4, #0
	b _020CA708
_020CA6E8:
	mov r4, #1
	b _020CA708
_020CA6F0:
	mov r4, #2
	b _020CA708
_020CA6F8:
	mov r4, #3
	b _020CA708
_020CA700:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CA708:
	bl OS_DisableInterrupts
	ldr r1, _020CA75C ; =0x021CECCC
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _020CA728
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CA728:
	mov r2, #1
	str r2, [r1, #4]
	bl OS_RestoreInterrupts
	ldr r1, _020CA75C ; =0x021CECCC
	mov r0, r4
	str r6, [r1, #8]
	str r5, [r1, #0xc]
	str r7, [r1, #0x1c]
	bl MicDoSampling
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CA75C: .word Unk_021CECCC
	arm_func_end MIC_DoSamplingAsync

	arm_func_start MIC_StartAutoSamplingAsync
MIC_StartAutoSamplingAsync: ; 0x020CA760
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	ldr r0, [r7, #4]
	mov r6, r1
	tst r0, #0x1f
	mov r5, r2
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #8]
	tst r0, #0x1f
	movne r0, #2
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	cmp r0, #0
	moveq r0, #2
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0xc]
	cmp r0, #0x400
	movlo r0, #2
	ldmloia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r7, #0]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	b _020CA804
_020CA7BC: ; jump table
	b _020CA7D4 ; case 0
	b _020CA7DC ; case 1
	b _020CA7E4 ; case 2
	b _020CA7EC ; case 3
	b _020CA7F4 ; case 4
	b _020CA7FC ; case 5
_020CA7D4:
	mov r1, #0
	b _020CA80C
_020CA7DC:
	mov r1, #1
	b _020CA80C
_020CA7E4:
	mov r1, #2
	b _020CA80C
_020CA7EC:
	mov r1, #3
	b _020CA80C
_020CA7F4:
	mov r1, #5
	b _020CA80C
_020CA7FC:
	mov r1, #7
	b _020CA80C
_020CA804:
	mov r0, #2
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CA80C:
	ldr r0, [r7, #0x10]
	cmp r0, #0
	orrne r0, r1, #0x10
	andne r0, r0, #0xff
	andeq r0, r1, #0xff
	and r4, r0, #0xff
	bl OS_DisableInterrupts
	ldr r1, _020CA888 ; =0x021CECCC
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _020CA844
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CA844:
	mov r2, #1
	str r2, [r1, #4]
	bl OS_RestoreInterrupts
	ldr r0, _020CA888 ; =0x021CECCC
	mov r3, r4
	str r6, [r0, #8]
	str r5, [r0, #0xc]
	ldr r1, [r7, #0x14]
	str r1, [r0, #0x14]
	ldr r1, [r7, #0x18]
	str r1, [r0, #0x18]
	ldmib r7, {r0, r1, r2}
	bl MicStartAutoSampling
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CA888: .word Unk_021CECCC
	arm_func_end MIC_StartAutoSamplingAsync

	arm_func_start MIC_StartAutoSampling
MIC_StartAutoSampling: ; 0x020CA88C
	stmfd sp!, {r3, lr}
	ldr r1, _020CA8BC ; =MicGetResultCallback
	mov r2, #0
	bl MIC_StartAutoSamplingAsync
	ldr r1, _020CA8C0 ; =0x021CECCC
	cmp r0, #0
	str r0, [r1, #0x10]
	bne _020CA8B0
	bl MicWaitBusy
_020CA8B0:
	ldr r0, _020CA8C0 ; =0x021CECCC
	ldr r0, [r0, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CA8BC: .word MicGetResultCallback
_020CA8C0: .word Unk_021CECCC
	arm_func_end MIC_StartAutoSampling

	arm_func_start MIC_StopAutoSamplingAsync
MIC_StopAutoSamplingAsync: ; 0x020CA8C4
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	ldr r1, _020CA91C ; =0x021CECCC
	ldr r2, [r1, #4]
	cmp r2, #0
	beq _020CA8F0
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_020CA8F0:
	mov r2, #1
	str r2, [r1, #4]
	bl OS_RestoreInterrupts
	ldr r0, _020CA91C ; =0x021CECCC
	str r5, [r0, #8]
	str r4, [r0, #0xc]
	bl MicStopAutoSampling
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CA91C: .word Unk_021CECCC
	arm_func_end MIC_StopAutoSamplingAsync

	arm_func_start MIC_StopAutoSampling
MIC_StopAutoSampling: ; 0x020CA920
	stmfd sp!, {r3, lr}
	ldr r0, _020CA950 ; =MicGetResultCallback
	mov r1, #0
	bl MIC_StopAutoSamplingAsync
	ldr r1, _020CA954 ; =0x021CECCC
	cmp r0, #0
	str r0, [r1, #0x10]
	bne _020CA944
	bl MicWaitBusy
_020CA944:
	ldr r0, _020CA954 ; =0x021CECCC
	ldr r0, [r0, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CA950: .word MicGetResultCallback
_020CA954: .word Unk_021CECCC
	arm_func_end MIC_StopAutoSampling

	arm_func_start MIC_GetLastSamplingAddress
MIC_GetLastSamplingAddress: ; 0x020CA958
	ldr r0, _020CA964 ; =0x027FFF90
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_020CA964: .word 0x027FFF90
	arm_func_end MIC_GetLastSamplingAddress

	arm_func_start MicCommonCallback
MicCommonCallback: ; 0x020CA968
	stmfd sp!, {r4, lr}
	mov r4, r1
	cmp r2, #0
	beq _020CA9B0
	ldr r0, _020CAA88 ; =0x021CECCC
	ldr r1, [r0, #4]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #4]
	ldr r0, _020CAA88 ; =0x021CECCC
	ldr r2, [r0, #8]
	cmp r2, #0
	beq _020CA9B0
	mov r1, #0
	str r1, [r0, #8]
	ldr r1, [r0, #0xc]
	mov r0, #6
	blx r2
_020CA9B0:
	and r0, r4, #0x7f00
	and r1, r4, #0xff
	mov r0, r0, lsl #8
	cmp r1, #4
	mov r2, r0, lsr #0x10
	addls pc, pc, r1, lsl #2
	b _020CAA08
_020CA9CC: ; jump table
	b _020CA9E0 ; case 0
	b _020CA9E8 ; case 1
	b _020CA9F0 ; case 2
	b _020CA9F8 ; case 3
	b _020CAA00 ; case 4
_020CA9E0:
	mov r0, #0
	b _020CAA0C
_020CA9E8:
	mov r0, #4
	b _020CAA0C
_020CA9F0:
	mov r0, #2
	b _020CAA0C
_020CA9F8:
	mov r0, #5
	b _020CAA0C
_020CAA00:
	mov r0, #1
	b _020CAA0C
_020CAA08:
	mov r0, #6
_020CAA0C:
	cmp r2, #0x51
	bne _020CAA30
	ldr r1, _020CAA88 ; =0x021CECCC
	ldr r2, [r1, #0x14]
	cmp r2, #0
	ldmeqia sp!, {r4, pc}
	ldr r1, [r1, #0x18]
	blx r2
	ldmia sp!, {r4, pc}
_020CAA30:
	cmp r2, #0x40
	bne _020CAA50
	ldr r1, _020CAA88 ; =0x021CECCC
	ldr r2, [r1, #0x1c]
	cmp r2, #0
	ldrne r1, _020CAA8C ; =0x027FFF94
	ldrneh r1, [r1]
	strneh r1, [r2]
_020CAA50:
	ldr r1, _020CAA88 ; =0x021CECCC
	ldr r2, [r1, #4]
	cmp r2, #0
	movne r2, #0
	strne r2, [r1, #4]
	ldr r1, _020CAA88 ; =0x021CECCC
	ldr r3, [r1, #8]
	cmp r3, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0
	str r2, [r1, #8]
	ldr r1, [r1, #0xc]
	blx r3
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020CAA88: .word Unk_021CECCC
_020CAA8C: .word 0x027FFF94
	arm_func_end MicCommonCallback

	arm_func_start MicDoSampling
MicDoSampling: ; 0x020CAA90
	stmfd sp!, {r3, lr}
	orr r1, r0, #0x4000
	orr r1, r1, #0x3000000
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, pc}
	arm_func_end MicDoSampling

	arm_func_start MicStartAutoSampling
MicStartAutoSampling: ; 0x020CAAB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r1
	orr r1, r3, #0x4100
	mov r6, r0
	mov r4, r2
	orr r1, r1, #0x2000000
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r6, lsr #0x10
	orr r1, r0, #0x10000
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r6, lsl #0x10
	mov r0, r0, lsr #0x10
	orr r1, r0, #0x20000
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r5, lsr #0x10
	orr r1, r0, #0x30000
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r5, lsl #0x10
	mov r0, r0, lsr #0x10
	orr r1, r0, #0x40000
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	mov r0, r4, lsr #0x10
	orr r1, r0, #0x50000
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movlt r0, #0
	ldmltia sp!, {r4, r5, r6, pc}
	ldr r1, _020CABB8 ; =0x01060000
	mov r0, r4, lsl #0x10
	orr r1, r1, r0, lsr #16
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CABB8: .word 0x01060000
	arm_func_end MicStartAutoSampling

	arm_func_start MicStopAutoSampling
MicStopAutoSampling: ; 0x020CABBC
	stmfd sp!, {r3, lr}
	ldr r1, _020CABE0 ; =0x03004200
	mov r0, #9
	mov r2, #0
	bl PXI_SendWordByFifo
	cmp r0, #0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CABE0: .word 0x03004200
	arm_func_end MicStopAutoSampling

	arm_func_start MicGetResultCallback
MicGetResultCallback: ; 0x020CABE4
	ldr r1, _020CABF0 ; =0x021CECCC
	str r0, [r1, #0x10]
	bx lr
	; .align 2, 0
_020CABF0: .word Unk_021CECCC
	arm_func_end MicGetResultCallback

	arm_func_start MicWaitBusy
MicWaitBusy: ; 0x020CABF4
	ldr ip, _020CAC08 ; =0x021CECD0
_020CABF8:
	ldr r0, [ip]
	cmp r0, #1
	beq _020CABF8
	bx lr
	; .align 2, 0
_020CAC08: .word Unk_021CECD0
	arm_func_end MicWaitBusy

	.bss


	.global Unk_021CECCC
Unk_021CECCC: ; 0x021CECCC
	.space 0x4

	.global Unk_021CECD0
Unk_021CECD0: ; 0x021CECD0
	.space 0x1C

