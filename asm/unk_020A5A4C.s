	.include "macros/function.inc"
	.include "include/unk_020A5A4C.inc"


	.extern NNS_GfdDefaultFuncAllocTexVram
	.extern NNS_GfdDefaultFuncFreeTexVram

	.text


	arm_func_start NNSi_GfdSetTexNrmSearchArray
NNSi_GfdSetTexNrmSearchArray: ; 0x020A5A4C
	stmfd sp!, {r4, r5, r6, lr}
	ldr r5, _020A5A8C ; =0x02100E18
	mov ip, #0x18
	mla r6, r0, ip, r5
	ldr lr, [sp, #0x10]
	ldr r0, _020A5A90 ; =0x02100DFC
	mla r4, r1, ip, r5
	str r6, [r0, #8]
	mla r1, r2, ip, r5
	str r4, [r0, #0xc]
	mla r2, r3, ip, r5
	str r1, [r0, #0x10]
	mla r1, lr, ip, r5
	str r2, [r0, #0x14]
	str r1, [r0, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020A5A8C: .word Unk_02100E18
_020A5A90: .word Unk_02100DFC
	arm_func_end NNSi_GfdSetTexNrmSearchArray

	arm_func_start NNS_GfdInitFrmTexVramManager
NNS_GfdInitFrmTexVramManager: ; 0x020A5A94
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	cmp r5, #2
	mov ip, #1
	mov r0, #4
	mov r1, #3
	bhi _020A5AC8
	mov r2, #2
	mov r3, #0
	str ip, [sp]
	bl NNSi_GfdSetTexNrmSearchArray
	b _020A5AD8
_020A5AC8:
	mov r2, #0
	mov r3, #2
	str ip, [sp]
	bl NNSi_GfdSetTexNrmSearchArray
_020A5AD8:
	ldr r0, _020A5B08 ; =0x021C3AB0
	strh r5, [r0]
	bl NNS_GfdResetFrmTexVramState
	cmp r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, _020A5B0C ; =NNS_GfdAllocFrmTexVram
	ldr r1, _020A5B10 ; =0x02100DEC
	ldr r2, _020A5B14 ; =NNS_GfdFreeFrmTexVram
	ldr r0, _020A5B18 ; =0x02100DF0
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020A5B08: .word Unk_021C3AB0
_020A5B0C: .word NNS_GfdAllocFrmTexVram
_020A5B10: .word NNS_GfdDefaultFuncAllocTexVram
_020A5B14: .word NNS_GfdFreeFrmTexVram
_020A5B18: .word NNS_GfdDefaultFuncFreeTexVram
	arm_func_end NNS_GfdInitFrmTexVramManager

	arm_func_start NNS_GfdResetFrmTexVramState
NNS_GfdResetFrmTexVramState: ; 0x020A5B1C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r0, _020A5B88 ; =0x021C3AB0
	mov r5, #0
	ldrh r7, [r0]
	ldr r6, _020A5B8C ; =0x02100E18
	mov lr, r5
	cmp r7, #1
	addhi r7, r7, #1
	mov r4, #1
	mov r1, r5
	mov r0, #0x20000
	mov r3, r5
	mov r2, #0x10000
_020A5B50:
	cmp r5, r7
	strlt r4, [r6, #8]
	strge lr, [r6, #8]
	ldr ip, [r6, #0xc]
	add r5, r5, #1
	cmp ip, #0
	strne r3, [r6]
	strne r2, [r6, #4]
	streq r1, [r6]
	streq r0, [r6, #4]
	cmp r5, #5
	add r6, r6, #0x18
	blt _020A5B50
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020A5B88: .word Unk_021C3AB0
_020A5B8C: .word Unk_02100E18
	arm_func_end NNS_GfdResetFrmTexVramState

	arm_func_start NNS_GfdAllocFrmTexVram
NNS_GfdAllocFrmTexVram: ; 0x020A5B90
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	cmp r0, #0
	moveq r3, #0x10
	addne r0, r0, #0xf
	bicne r3, r0, #0xf
	ldr r0, _020A5CEC ; =0x0007FFF0
	cmp r3, r0
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	cmp r1, #0
	beq _020A5C74
	mov r4, #0
	ldr r8, _020A5CF0 ; =0x02100E48
	ldr sb, _020A5CF4 ; =0x02100E30
	ldr r0, _020A5CF8 ; =0x02100DFC
	mov r7, r4
_020A5BD0:
	ldr lr, [r0, r4, lsl #2]
	ldr r5, [lr, #8]
	cmp r5, #0
	beq _020A5C60
	ldmia lr, {r5, r6}
	sub r5, r6, r5
	cmp r5, r3
	blo _020A5C60
	ldrh r5, [lr, #0x10]
	cmp r5, #0
	beq _020A5C08
	cmp r5, #3
	beq _020A5C10
	b _020A5C18
_020A5C08:
	mov ip, sb
	b _020A5C1C
_020A5C10:
	mov ip, r8
	b _020A5C1C
_020A5C18:
	mov ip, r7
_020A5C1C:
	ldr r5, [ip, #8]
	cmp r5, #0
	beq _020A5C60
	ldmia ip, {r5, r6}
	sub r5, r6, r5
	cmp r5, r3, lsr #1
	blo _020A5C60
	ldr r4, [lr]
	mov r0, #1
	add r2, r4, r3
	str r2, [lr]
	ldr r2, [ip]
	add r2, r2, r3, lsr #1
	str r2, [ip]
	ldr r2, [lr, #0x14]
	add r2, r4, r2
	b _020A5CC8
_020A5C60:
	add r4, r4, #1
	cmp r4, #2
	blt _020A5BD0
	mov r0, #0
	b _020A5CC8
_020A5C74:
	ldr lr, _020A5CFC ; =0x02100E04
	mov r5, #0
_020A5C7C:
	ldr ip, [lr, r5, lsl #2]
	ldr r0, [ip, #8]
	cmp r0, #0
	beq _020A5CB8
	ldmia ip, {r0, r4}
	sub r0, r4, r0
	cmp r0, r3
	blo _020A5CB8
	ldr r2, [ip, #4]
	mov r0, #1
	sub r4, r2, r3
	str r4, [ip, #4]
	ldr r2, [ip, #0x14]
	add r2, r4, r2
	b _020A5CC8
_020A5CB8:
	add r5, r5, #1
	cmp r5, #5
	blt _020A5C7C
	mov r0, #0
_020A5CC8:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r2, lsl #0xd
	mov r2, r3, lsr #4
	mov r0, r0, lsr #0x10
	orr r0, r0, r2, lsl #16
	orr r0, r0, r1, lsl #31
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020A5CEC: .word 0x0007FFF0
_020A5CF0: .word 0x02100E48
_020A5CF4: .word 0x02100E30
_020A5CF8: .word Unk_02100DFC
_020A5CFC: .word Unk_02100E04
	arm_func_end NNS_GfdAllocFrmTexVram

	arm_func_start NNS_GfdFreeFrmTexVram
NNS_GfdFreeFrmTexVram: ; 0x020A5D00
	mov r0, #0
	bx lr
	arm_func_end NNS_GfdFreeFrmTexVram

	arm_func_start NNS_GfdGetFrmTexVramState
NNS_GfdGetFrmTexVramState: ; 0x020A5D08
	stmfd sp!, {r3, lr}
	mov r3, #0
	ldr ip, _020A5D44 ; =0x02100E18
	mov lr, r3
_020A5D18:
	ldr r1, [ip]
	add r3, r3, #1
	str r1, [r0, lr, lsl #2]
	ldr r2, [ip, #4]
	add r1, r0, lr, lsl #2
	str r2, [r1, #4]
	cmp r3, #5
	add ip, ip, #0x18
	add lr, lr, #2
	blt _020A5D18
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A5D44: .word Unk_02100E18
	arm_func_end NNS_GfdGetFrmTexVramState

	arm_func_start NNS_GfdSetFrmTexVramState
NNS_GfdSetFrmTexVramState: ; 0x020A5D48
	stmfd sp!, {r3, lr}
	mov r3, #0
	ldr lr, _020A5D84 ; =0x02100E18
	mov ip, r3
_020A5D58:
	ldr r2, [r0, ip, lsl #2]
	add r1, r0, ip, lsl #2
	str r2, [lr]
	ldr r1, [r1, #4]
	add r3, r3, #1
	str r1, [lr, #4]
	cmp r3, #5
	add ip, ip, #2
	add lr, lr, #0x18
	blt _020A5D58
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A5D84: .word Unk_02100E18
	arm_func_end NNS_GfdSetFrmTexVramState

	.data


	.global Unk_02100DFC
Unk_02100DFC: ; 0x02100DFC
	.incbin "incbin/arm9_data.bin", 0x211C, 0x2124 - 0x211C

	.global Unk_02100E04
Unk_02100E04: ; 0x02100E04
	.incbin "incbin/arm9_data.bin", 0x2124, 0x2138 - 0x2124

	.global Unk_02100E18
Unk_02100E18: ; 0x02100E18
	.incbin "incbin/arm9_data.bin", 0x2138, 0x78



	.bss


	.global Unk_021C3AB0
Unk_021C3AB0: ; 0x021C3AB0
	.space 0x2

