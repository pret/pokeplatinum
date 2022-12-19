	.include "macros/function.inc"
	.include "include/ov4_02203504.inc"

	

	.text


	arm_func_start ov4_02203504
ov4_02203504: ; 0x02203504
	stmfd sp!, {r3, lr}
	bl sub_020C3D98
	mov r3, #0
	ldr r1, _0220353C ; =0x0221C698
	mov r2, r3
	str r3, [r1, #4]
	str r3, [r1, #0]
	ldr r1, _02203540 ; =0x0221C6A0
_02203524:
	str r2, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #3
	blt _02203524
	bl sub_020C3DAC
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220353C: .word 0x0221C698
_02203540: .word 0x0221C6A0
	arm_func_end ov4_02203504

	arm_func_start ov4_02203544
ov4_02203544: ; 0x02203544
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	bl sub_020C3D98
	mov r4, r0
	mov r0, r6
	bl ov4_022036B4
	movs r5, r0
	beq _02203584
_02203564:
	mov r0, r5
	bl ov4_02203704
	mov r0, r5
	bl ov4_0220523C
	mov r0, r6
	bl ov4_022036B4
	movs r5, r0
	bne _02203564
_02203584:
	ldr r1, _0220359C ; =0x0221C6A0
	mov r2, #0
	mov r0, r4
	str r2, [r1, r6, lsl #2]
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_0220359C: .word 0x0221C6A0
	arm_func_end ov4_02203544

	arm_func_start ov4_022035A0
ov4_022035A0: ; 0x022035A0
	stmfd sp!, {r3, r4, r5, lr}
	bl sub_020C3D98
	ldr r1, _02203604 ; =0x0221C698
	mov r4, r0
	ldr r5, [r1, #0]
	cmp r5, #0
	beq _022035D0
_022035BC:
	mov r0, r5
	ldr r5, [r5, #8]
	bl ov4_0220523C
	cmp r5, #0
	bne _022035BC
_022035D0:
	ldr r0, _02203604 ; =0x0221C698
	mov r2, #0
	str r2, [r0, #0]
	str r2, [r0, #4]
	ldr r0, _02203608 ; =0x0221C6A0
	mov r1, r2
_022035E8:
	str r1, [r0, r2, lsl #2]
	add r2, r2, #1
	cmp r2, #3
	blt _022035E8
	mov r0, r4
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02203604: .word 0x0221C698
_02203608: .word 0x0221C6A0
	arm_func_end ov4_022035A0

	arm_func_start ov4_0220360C
ov4_0220360C: ; 0x0220360C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _0220368C ; =0x0221C698
	ldr r2, [r1, #0]
	cmp r2, #0
	bne _02203648
	str r4, [r1, #0]
	mov r3, #0
	str r3, [r4, #4]
	ldr r2, [r1, #0]
	str r3, [r2, #8]
	ldr r2, [r1, #0]
	str r2, [r1, #4]
	b _02203664
_02203648:
	ldr r3, [r1, #4]
	mov r2, #0
	str r3, [r4, #4]
	str r2, [r4, #8]
	ldr r2, [r1, #4]
	str r4, [r2, #8]
	str r4, [r1, #4]
_02203664:
	ldrb r2, [r4, #0x11]
	ldr r3, _02203690 ; =0x0221C6A0
	ldr r1, [r3, r2, lsl #2]
	add r1, r1, #1
	str r1, [r3, r2, lsl #2]
	bl sub_020C3DAC
	ldrb r1, [r4, #0x11]
	ldr r0, _02203690 ; =0x0221C6A0
	ldr r0, [r0, r1, lsl #2]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220368C: .word 0x0221C698
_02203690: .word 0x0221C6A0
	arm_func_end ov4_0220360C

	arm_func_start ov4_02203694
ov4_02203694: ; 0x02203694
	ldr r0, _022036A0 ; =0x0221C698
	ldr r0, [r0, #0]
	bx lr
	; .align 2, 0
_022036A0: .word 0x0221C698
	arm_func_end ov4_02203694

	arm_func_start ov4_022036A4
ov4_022036A4: ; 0x022036A4
	ldr r1, _022036B0 ; =0x0221C6A0
	ldr r0, [r1, r0, lsl #2]
	bx lr
	; .align 2, 0
_022036B0: .word 0x0221C6A0
	arm_func_end ov4_022036A4

	arm_func_start ov4_022036B4
ov4_022036B4: ; 0x022036B4
	stmfd sp!, {r3, r4, r5, lr}
	ldr r1, _02203700 ; =0x0221C698
	mov r5, r0
	ldr r4, [r1, #0]
	bl sub_020C3D98
	cmp r4, #0
	beq _022036F4
_022036D0:
	ldrb r1, [r4, #0x11]
	cmp r1, r5
	bne _022036E8
	bl sub_020C3DAC
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
_022036E8:
	ldr r4, [r4, #8]
	cmp r4, #0
	bne _022036D0
_022036F4:
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02203700: .word 0x0221C698
	arm_func_end ov4_022036B4

	arm_func_start ov4_02203704
ov4_02203704: ; 0x02203704
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r2, [r4, #4]
	cmp r2, #0
	ldrne r1, [r4, #8]
	strne r1, [r2, #8]
	bne _0220373C
	ldr r2, [r4, #8]
	ldr r1, _02203790 ; =0x0221C698
	cmp r2, #0
	str r2, [r1, #0]
	movne r1, #0
	strne r1, [r2, #4]
_0220373C:
	ldr r2, [r4, #8]
	cmp r2, #0
	ldrne r1, [r4, #4]
	strne r1, [r2, #4]
	bne _02203768
	ldr r2, [r4, #4]
	ldr r1, _02203790 ; =0x0221C698
	cmp r2, #0
	str r2, [r1, #4]
	movne r1, #0
	strne r1, [r2, #8]
_02203768:
	ldrb r2, [r4, #0x11]
	ldr r3, _02203794 ; =0x0221C6A0
	ldr r1, [r3, r2, lsl #2]
	sub r1, r1, #1
	str r1, [r3, r2, lsl #2]
	bl sub_020C3DAC
	ldrb r1, [r4, #0x11]
	ldr r0, _02203794 ; =0x0221C6A0
	ldr r0, [r0, r1, lsl #2]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02203790: .word 0x0221C698
_02203794: .word 0x0221C6A0
	arm_func_end ov4_02203704

	.bss


	.global Unk_ov4_0221C698
Unk_ov4_0221C698: ; 0x0221C698
	.space 0x4

	.global Unk_ov4_0221C69C
Unk_ov4_0221C69C: ; 0x0221C69C
	.space 0x4

	.global Unk_ov4_0221C6A0
Unk_ov4_0221C6A0: ; 0x0221C6A0
	.space 0xC

