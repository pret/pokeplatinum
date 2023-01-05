	.include "macros/function.inc"
	.include "include/unk_020A5D88.inc"

	.extern Unk_021C3AB4
	.extern NNS_GfdDefaultFuncAllocPlttVram
	.extern NNS_GfdDefaultFuncFreePlttVram

	.text


	arm_func_start NNS_GfdInitFrmPlttVramManager
NNS_GfdInitFrmPlttVramManager: ; 0x020A5D88
	stmfd sp!, {r4, lr}
	ldr r2, _020A5DC0 ; =0x021C3AB4
	mov r4, r1
	str r0, [r2, #8]
	bl NNS_GfdResetFrmPlttVramState
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _020A5DC4 ; =NNS_GfdAllocFrmPlttVram
	ldr r1, _020A5DC8 ; =0x02100DF4
	ldr r2, _020A5DCC ; =NNS_GfdFreeFrmPlttVram
	ldr r0, _020A5DD0 ; =0x02100DF8
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A5DC0: .word Unk_021C3AB4
_020A5DC4: .word NNS_GfdAllocFrmPlttVram
_020A5DC8: .word NNS_GfdDefaultFuncAllocPlttVram
_020A5DCC: .word NNS_GfdFreeFrmPlttVram
_020A5DD0: .word NNS_GfdDefaultFuncFreePlttVram
	arm_func_end NNS_GfdInitFrmPlttVramManager

	arm_func_start NNS_GfdAllocFrmPlttVram
NNS_GfdAllocFrmPlttVram: ; 0x020A5DD4
	stmfd sp!, {r4, lr}
	cmp r0, #0
	moveq r0, #8
	addne r0, r0, #7
	ldr ip, _020A5F08 ; =0x0007FFF8
	bicne r0, r0, #7
	cmp r0, ip
	mov r3, #0
	movhs r0, #0
	ldmhsia sp!, {r4, pc}
	cmp r2, #1
	bne _020A5E80
	ldr r2, _020A5F0C ; =0x021C3AB4
	cmp r1, #0
	ldr lr, [r2]
	andeq r2, lr, #0xf
	rsbeq r2, r2, #0x10
	andeq r4, r2, #0xf
	beq _020A5E2C
	and r2, lr, #7
	rsb r2, r2, #8
	and r4, r2, #7
_020A5E2C:
	ldr r2, _020A5F0C ; =0x021C3AB4
	add ip, r0, r4
	ldr r2, [r2, #4]
	sub r2, r2, lr
	cmp r2, ip
	blo _020A5E78
	cmp r1, #0
	add r1, lr, ip
	beq _020A5E5C
	cmp r1, #0x10000
	movhi lr, #0
	bhi _020A5EE8
_020A5E5C:
	ldr r1, _020A5F0C ; =0x021C3AB4
	add r3, lr, r4
	ldr r2, [r1, #0]
	mov lr, #1
	add r2, r2, ip
	str r2, [r1, #0]
	b _020A5EE8
_020A5E78:
	mov lr, #0
	b _020A5EE8
_020A5E80:
	ldr r2, _020A5F0C ; =0x021C3AB4
	ldr lr, [r2, #4]
	cmp lr, r0
	blo _020A5EE4
	sub r2, lr, r0
	cmp r1, #0
	andne r4, r2, #7
	andeq r4, r2, #0xf
	ldr r2, _020A5F0C ; =0x021C3AB4
	add ip, r0, r4
	ldr r2, [r2, #0]
	sub r2, lr, r2
	cmp r2, ip
	blo _020A5EE4
	cmp r1, #0
	beq _020A5ECC
	cmp lr, #0x10000
	movhi lr, #0
	bhi _020A5EE8
_020A5ECC:
	ldr r1, _020A5F0C ; =0x021C3AB4
	mov lr, #1
	ldr r2, [r1, #4]
	sub r3, r2, ip
	str r3, [r1, #4]
	b _020A5EE8
_020A5EE4:
	mov lr, #0
_020A5EE8:
	cmp lr, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r1, r3, lsl #0xd
	mov r2, r0, lsr #3
	mov r0, r1, lsr #0x10
	orr r0, r0, r2, lsl #16
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A5F08: .word 0x0007FFF8
_020A5F0C: .word Unk_021C3AB4
	arm_func_end NNS_GfdAllocFrmPlttVram

	arm_func_start NNS_GfdFreeFrmPlttVram
NNS_GfdFreeFrmPlttVram: ; 0x020A5F10
	mov r0, #0
	bx lr
	arm_func_end NNS_GfdFreeFrmPlttVram

	arm_func_start NNS_GfdGetFrmPlttVramState
NNS_GfdGetFrmPlttVramState: ; 0x020A5F18
	ldr r1, _020A5F30 ; =0x021C3AB4
	ldr r2, [r1, #0]
	str r2, [r0, #0]
	ldr r1, [r1, #4]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020A5F30: .word Unk_021C3AB4
	arm_func_end NNS_GfdGetFrmPlttVramState

	arm_func_start NNS_GfdSetFrmPlttVramState
NNS_GfdSetFrmPlttVramState: ; 0x020A5F34
	ldr r2, [r0, #0]
	ldr r1, _020A5F4C ; =0x021C3AB4
	str r2, [r1, #0]
	ldr r0, [r0, #4]
	str r0, [r1, #4]
	bx lr
	; .align 2, 0
_020A5F4C: .word Unk_021C3AB4
	arm_func_end NNS_GfdSetFrmPlttVramState

	arm_func_start NNS_GfdResetFrmPlttVramState
NNS_GfdResetFrmPlttVramState: ; 0x020A5F50
	ldr r0, _020A5F68 ; =0x021C3AB4
	mov r1, #0
	str r1, [r0, #0]
	ldr r1, [r0, #8]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020A5F68: .word Unk_021C3AB4
	arm_func_end NNS_GfdResetFrmPlttVramState

	.bss


	.global Unk_021C3AB4
Unk_021C3AB4: ; 0x021C3AB4
	.space 0xC

