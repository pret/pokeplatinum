	.include "macros/function.inc"
	.include "include/gx.inc"

	.extern Unk_021CCB9C
	

	.text


	arm_func_start GX_Init
GX_Init: ; 0x020BDC08
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _020BDD30 ; =0x04000304
	ldr r0, _020BDD34 ; =0xFFFFFDF1
	ldrh r1, [r2]
	orr r1, r1, #0x8000
	strh r1, [r2]
	ldrh r1, [r2]
	and r0, r1, r0
	orr r0, r0, #0xe
	orr r0, r0, #0x200
	strh r0, [r2]
	ldrh r0, [r2]
	orr r0, r0, #1
	strh r0, [r2]
	bl GX_InitGXState
	ldr r5, _020BDD38 ; =0x021CCB9C
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _020BDC7C
	mvn r4, #2
_020BDC58:
	bl OS_GetLockID
	mov r6, r0
	cmp r6, r4
	bne _020BDC6C
	bl OS_Terminate
_020BDC6C:
	strh r6, [r5, #2]
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _020BDC58
_020BDC7C:
	ldr r0, _020BDD3C ; =0x04000004
	mov r2, #0
	mov r3, #0x4000000
	strh r2, [r0]
	ldr r0, _020BDD40 ; =0x02101144
	str r2, [r3, #0]
	ldr r0, [r0, #4]
	sub r1, r3, #0x4000001
	cmp r0, r1
	beq _020BDCD4
	add r1, r3, #8
	mov r3, #0x60
	bl MI_DmaFill32
	ldr r1, _020BDD44 ; =0x0400006C
	mov r2, #0
	ldr r0, _020BDD40 ; =0x02101144
	strh r2, [r1]
	ldr r0, [r0, #4]
	ldr r1, _020BDD48 ; =0x04001000
	mov r3, #0x70
	bl MI_DmaFill32
	b _020BDCFC
_020BDCD4:
	mov r0, r2
	add r1, r3, #8
	mov r2, #0x60
	bl MIi_CpuClear32
	ldr r3, _020BDD44 ; =0x0400006C
	mov r0, #0
	ldr r1, _020BDD48 ; =0x04001000
	mov r2, #0x70
	strh r0, [r3]
	bl MIi_CpuClear32
_020BDCFC:
	ldr r0, _020BDD4C ; =0x04000020
	mov r2, #0x100
	strh r2, [r0]
	strh r2, [r0, #6]
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x16]
	add r1, r0, #0x1000
	ldr r0, _020BDD50 ; =0x04001026
	strh r2, [r1]
	strh r2, [r0]
	strh r2, [r0, #0xa]
	strh r2, [r0, #0x10]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020BDD30: .word 0x04000304
_020BDD34: .word 0xFFFFFDF1
_020BDD38: .word Unk_021CCB9C
_020BDD3C: .word 0x04000004
_020BDD40: .word 0x02101144
_020BDD44: .word 0x0400006C
_020BDD48: .word 0x04001000
_020BDD4C: .word 0x04000020
_020BDD50: .word 0x04001026
	arm_func_end GX_Init

	arm_func_start GX_HBlankIntr
GX_HBlankIntr: ; 0x020BDD54
	ldr r2, _020BDD84 ; =0x04000004
	cmp r0, #0
	ldrh r0, [r2]
	ldreqh r1, [r2]
	and r0, r0, #0x10
	biceq r1, r1, #0x10
	streqh r1, [r2]
	bxeq lr
	ldrh r1, [r2]
	orr r1, r1, #0x10
	strh r1, [r2]
	bx lr
	; .align 2, 0
_020BDD84: .word 0x04000004
	arm_func_end GX_HBlankIntr

	arm_func_start GX_VBlankIntr
GX_VBlankIntr: ; 0x020BDD88
	ldr r2, _020BDDB8 ; =0x04000004
	cmp r0, #0
	ldrh r0, [r2]
	ldreqh r1, [r2]
	and r0, r0, #8
	biceq r1, r1, #8
	streqh r1, [r2]
	bxeq lr
	ldrh r1, [r2]
	orr r1, r1, #8
	strh r1, [r2]
	bx lr
	; .align 2, 0
_020BDDB8: .word 0x04000004
	arm_func_end GX_VBlankIntr

	arm_func_start GX_DispOff
GX_DispOff: ; 0x020BDDBC
	stmfd sp!, {r3, lr}
	mov lr, #0x4000000
	ldr ip, [lr]
	ldr r1, _020BDDF0 ; =0x02101144
	and r2, ip, #0x30000
	mov r3, #0
	ldr r0, _020BDDF4 ; =0x021CCB9C
	mov r2, r2, lsr #0x10
	strh r3, [r1]
	strh r2, [r0]
	bic r0, ip, #0x30000
	str r0, [lr]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BDDF0: .word 0x02101144
_020BDDF4: .word Unk_021CCB9C
	arm_func_end GX_DispOff

	arm_func_start GX_DispOn
GX_DispOn: ; 0x020BDDF8
	ldr r0, _020BDE38 ; =0x021CCB9C
	ldr r1, _020BDE3C ; =0x02101144
	ldrh r2, [r0]
	mov r0, #1
	strh r0, [r1]
	mov r1, #0x4000000
	cmp r2, #0
	ldreq r0, [r1]
	orreq r0, r0, #0x10000
	streq r0, [r1]
	bxeq lr
	ldr r0, [r1, #0]
	bic r0, r0, #0x30000
	orr r0, r0, r2, lsl #16
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020BDE38: .word Unk_021CCB9C
_020BDE3C: .word 0x02101144
	arm_func_end GX_DispOn

	arm_func_start GX_SetGraphicsMode
GX_SetGraphicsMode: ; 0x020BDE40
	stmfd sp!, {r3, lr}
	ldr r3, _020BDE9C ; =0x02101144
	mov lr, #0x4000000
	ldrh ip, [r3]
	ldr lr, [lr]
	ldr r3, _020BDEA0 ; =0x021CCB9C
	cmp ip, #0
	strh r0, [r3]
	ldr r3, _020BDEA4 ; =0xFFF0FFF0
	moveq r0, #0
	and r3, lr, r3
	orr r0, r3, r0, lsl #16
	orr r0, r1, r0
	orr r1, r0, r2, lsl #3
	mov ip, #0x4000000
	ldr r0, _020BDEA0 ; =0x021CCB9C
	str r1, [ip]
	ldrh r0, [r0]
	cmp r0, #0
	ldreq r0, _020BDE9C ; =0x02101144
	moveq r1, #0
	streqh r1, [r0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020BDE9C: .word 0x02101144
_020BDEA0: .word Unk_021CCB9C
_020BDEA4: .word 0xFFF0FFF0
	arm_func_end GX_SetGraphicsMode

	arm_func_start GXS_SetGraphicsMode
GXS_SetGraphicsMode: ; 0x020BDEA8
	ldr r2, _020BDEC0 ; =0x04001000
	ldr r1, [r2, #0]
	bic r1, r1, #7
	orr r0, r1, r0
	str r0, [r2, #0]
	bx lr
	; .align 2, 0
_020BDEC0: .word 0x04001000
	arm_func_end GXS_SetGraphicsMode

	arm_func_start GXx_SetMasterBrightness_
GXx_SetMasterBrightness_: ; 0x020BDEC4
	cmp r1, #0
	moveq r1, #0
	streqh r1, [r0]
	bxeq lr
	orrgt r1, r1, #0x4000
	strgth r1, [r0]
	rsble r1, r1, #0
	orrle r1, r1, #0x8000
	strleh r1, [r0]
	bx lr
	arm_func_end GXx_SetMasterBrightness_

	.data


	.global Unk_02101144
Unk_02101144: ; 0x02101144
	.incbin "incbin/arm9_data.bin", 0x2464, 0x2468 - 0x2464

	.global Unk_02101148
Unk_02101148: ; 0x02101148
	.incbin "incbin/arm9_data.bin", 0x2468, 0x4



	.bss


	.global Unk_021CCB9C
Unk_021CCB9C: ; 0x021CCB9C
	.space 0x2

	.global Unk_021CCB9E
Unk_021CCB9E: ; 0x021CCB9E
	.space 0x2

