	.include "macros/function.inc"
	.include "include/gfd_linkedlistplttvramman.inc"

	.extern NNS_GfdDefaultFuncAllocPlttVram
	.extern NNS_GfdDefaultFuncFreePlttVram

	.text


	arm_func_start NNS_GfdGetLnkPlttVramManagerWorkSize
NNS_GfdGetLnkPlttVramManagerWorkSize: ; 0x020A6B84
	mov r0, r0, lsl #4
	bx lr
	arm_func_end NNS_GfdGetLnkPlttVramManagerWorkSize

	arm_func_start NNS_GfdInitLnkPlttVramManager
NNS_GfdInitLnkPlttVramManager: ; 0x020A6B8C
	stmfd sp!, {r4, lr}
	ldr ip, _020A6BCC ; =0x021C3AF0
	mov r4, r3
	str r0, [ip, #8]
	str r1, [ip, #0xc]
	str r2, [ip, #0x10]
	bl NNS_GfdResetLnkPlttVramState
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _020A6BD0 ; =NNS_GfdAllocLnkPlttVram
	ldr r1, _020A6BD4 ; =0x02100DF4
	ldr r2, _020A6BD8 ; =NNS_GfdFreeLnkPlttVram
	ldr r0, _020A6BDC ; =0x02100DF8
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A6BCC: .word Unk_021C3AF0
_020A6BD0: .word NNS_GfdAllocLnkPlttVram
_020A6BD4: .word NNS_GfdDefaultFuncAllocPlttVram
_020A6BD8: .word NNS_GfdFreeLnkPlttVram
_020A6BDC: .word NNS_GfdDefaultFuncFreePlttVram
	arm_func_end NNS_GfdInitLnkPlttVramManager

	arm_func_start NNS_GfdAllocLnkPlttVram
NNS_GfdAllocLnkPlttVram: ; 0x020A6BE0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	cmp r0, #0
	moveq r4, #8
	addne r0, r0, #7
	bicne r4, r0, #7
	ldr r0, _020A6CA0 ; =0x0007FFF8
	cmp r4, r0
	addhs sp, sp, #8
	movhs r0, #0
	ldmhsia sp!, {r4, pc}
	cmp r1, #0
	add r2, sp, #4
	beq _020A6C5C
	mov ip, #8
	ldr r0, _020A6CA4 ; =0x021C3AF0
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	str ip, [sp]
	bl NNSi_GfdAllocLnkVramAligned
	ldr r2, [sp, #4]
	add r1, r2, r4
	cmp r1, #0x10000
	bls _020A6C74
	ldr r0, _020A6CA4 ; =0x021C3AF0
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	bl NNSi_GfdFreeLnkVram
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_020A6C5C:
	ldr r0, _020A6CA4 ; =0x021C3AF0
	mov ip, #0x10
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	str ip, [sp]
	bl NNSi_GfdAllocLnkVramAligned
_020A6C74:
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #4]
	mov r1, r4, lsr #3
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A6CA0: .word 0x0007FFF8
_020A6CA4: .word Unk_021C3AF0
_020A6CA8: .word 0x021C3AF4
	arm_func_end NNS_GfdAllocLnkPlttVram

	arm_func_start NNS_GfdFreeLnkPlttVram
NNS_GfdFreeLnkPlttVram: ; 0x020A6CAC
	stmfd sp!, {r3, lr}
	mov r1, #0x10000
	rsb r1, r1, #0
	and r1, r0, r1
	mov r2, r0, lsl #0x10
	mov r3, r1, lsr #0x10
	ldr r0, _020A6CE8 ; =0x021C3AF0
	ldr r1, _020A6CEC ; =0x021C3AF4
	mov r2, r2, lsr #0xd
	mov r3, r3, lsl #3
	bl NNSi_GfdFreeLnkVram
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6CE8: .word Unk_021C3AF0
_020A6CEC: .word 0x021C3AF4
	arm_func_end NNS_GfdFreeLnkPlttVram

	arm_func_start NNS_GfdResetLnkPlttVramState
NNS_GfdResetLnkPlttVramState: ; 0x020A6CF0
	stmfd sp!, {r3, lr}
	ldr r0, _020A6D40 ; =0x021C3AF0
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0xc]
	mov r1, r1, lsr #4
	bl NNSi_GfdInitLnkVramBlockPool
	ldr r1, _020A6D40 ; =0x021C3AF0
	str r0, [r1, #4]
	ldr r0, _020A6D44 ; =0x021C3AF0
	bl NNSi_GfdInitLnkVramMan
	ldr r1, _020A6D40 ; =0x021C3AF0
	ldr r0, _020A6D44 ; =0x021C3AF0
	ldr r3, [r1, #8]
	ldr r1, _020A6D48 ; =0x021C3AF4
	mov r2, #0
	bl NNSi_GfdAddNewFreeBlock
	ldr r0, _020A6D44 ; =0x021C3AF0
	ldr r1, _020A6D48 ; =0x021C3AF4
	bl NNSi_GfdMergeAllFreeBlocks
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6D40: .word Unk_021C3AF0
_020A6D44: .word Unk_021C3AF0
_020A6D48: .word 0x021C3AF4
	arm_func_end NNS_GfdResetLnkPlttVramState

	.bss


	.global Unk_021C3AF0
Unk_021C3AF0: ; 0x021C3AF0
	.space 0x14

