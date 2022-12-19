	.include "macros/function.inc"
	.include "include/ov4_022038F4.inc"

	

	.text


	arm_func_start ov4_022038F4
ov4_022038F4: ; 0x022038F4
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r3, _02203924 ; =0x0221C6C4
	mov ip, #0
	ldr r1, _02203928 ; =0x0221C6B8
	ldr r2, _0220392C ; =0x0221C6AC
	str ip, [r3, r4, lsl #2]
	str ip, [r2, r4, lsl #2]
	str ip, [r1, r4, lsl #2]
	bl sub_020C3DAC
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02203924: .word 0x0221C6C4
_02203928: .word 0x0221C6B8
_0220392C: .word 0x0221C6AC
	arm_func_end ov4_022038F4

	arm_func_start ov4_02203930
ov4_02203930: ; 0x02203930
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	bl sub_020C3D98
	ldr r7, _02203994 ; =0x0221C6AC
	mov r4, r0
	ldr r0, [r7, r5, lsl #2]
	cmp r0, #0
	beq _02203974
	mov r6, #0
_02203954:
	ldr r1, [r0, #8]
	str r1, [r7, r5, lsl #2]
	cmp r1, #0
	strne r6, [r1, #4]
	bl ov4_0220523C
	ldr r0, [r7, r5, lsl #2]
	cmp r0, #0
	bne _02203954
_02203974:
	ldr r2, _02203998 ; =0x0221C6C4
	mov r3, #0
	ldr r1, _0220399C ; =0x0221C6B8
	mov r0, r4
	str r3, [r2, r5, lsl #2]
	str r3, [r1, r5, lsl #2]
	bl sub_020C3DAC
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02203994: .word 0x0221C6AC
_02203998: .word 0x0221C6C4
_0220399C: .word 0x0221C6B8
	arm_func_end ov4_02203930

	arm_func_start ov4_022039A0
ov4_022039A0: ; 0x022039A0
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	bl sub_020C3D98
	mov r6, #0
	mov r5, r0
	mov sl, r6
	ldr r4, _02203A14 ; =0x0221C6AC
	mov sb, r6
	ldr r8, _02203A18 ; =0x0221C6C4
	ldr r7, _02203A1C ; =0x0221C6B8
	b _02203A00
_022039C8:
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq _022039F4
_022039D4:
	ldr r1, [r0, #8]
	str r1, [r4, r6, lsl #2]
	cmp r1, #0
	strne sl, [r1, #4]
	bl ov4_0220523C
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne _022039D4
_022039F4:
	str sb, [r8, r6, lsl #2]
	str sb, [r7, r6, lsl #2]
	add r6, r6, #1
_02203A00:
	cmp r6, #3
	blt _022039C8
	mov r0, r5
	bl sub_020C3DAC
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02203A14: .word 0x0221C6AC
_02203A18: .word 0x0221C6C4
_02203A1C: .word 0x0221C6B8
	arm_func_end ov4_022039A0

	arm_func_start ov4_02203A20
ov4_02203A20: ; 0x02203A20
	stmfd sp!, {r3, r4, r5, lr}
	movs r5, r0
	mov r4, r1
	mvneq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	cmp r4, #3
	mvnhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	bl sub_020C3D98
	ldr ip, _02203B14 ; =0x0221C6AC
	ldr r1, [ip, r4, lsl #2]
	cmp r1, #0
	bne _02203A78
	str r5, [ip, r4, lsl #2]
	mov r3, #0
	str r3, [r5, #4]
	ldr r2, [ip, r4, lsl #2]
	ldr r1, _02203B18 ; =0x0221C6C4
	str r3, [r2, #8]
	ldr r2, [ip, r4, lsl #2]
	str r2, [r1, r4, lsl #2]
	b _02203AF4
_02203A78:
	ldr r1, _02203B18 ; =0x0221C6C4
	ldr r3, [r1, r4, lsl #2]
	cmp r3, #0
	beq _02203AD4
	ldr r2, [r5, #0x18]
_02203A8C:
	ldr r1, [r3, #0x18]
	cmp r1, r2
	bhs _02203AC8
	str r3, [r5, #4]
	ldr r1, [r3, #8]
	ldr r2, _02203B18 ; =0x0221C6C4
	str r1, [r5, #8]
	str r5, [r3, #8]
	ldr r1, [r5, #8]
	cmp r1, #0
	strne r5, [r1, #4]
	ldr r1, [r2, r4, lsl #2]
	cmp r3, r1
	streq r5, [r2, r4, lsl #2]
	b _02203AF4
_02203AC8:
	ldr r3, [r3, #4]
	cmp r3, #0
	bne _02203A8C
_02203AD4:
	mov r1, #0
	ldr r2, _02203B14 ; =0x0221C6AC
	str r1, [r5, #4]
	ldr r1, [r2, r4, lsl #2]
	str r1, [r5, #8]
	ldr r1, [r2, r4, lsl #2]
	str r5, [r1, #4]
	str r5, [r2, r4, lsl #2]
_02203AF4:
	ldr r2, _02203B1C ; =0x0221C6B8
	ldr r1, [r2, r4, lsl #2]
	add r1, r1, #1
	str r1, [r2, r4, lsl #2]
	bl sub_020C3DAC
	ldr r0, _02203B1C ; =0x0221C6B8
	ldr r0, [r0, r4, lsl #2]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02203B14: .word 0x0221C6AC
_02203B18: .word 0x0221C6C4
_02203B1C: .word 0x0221C6B8
	arm_func_end ov4_02203A20

	arm_func_start ov4_02203B20
ov4_02203B20: ; 0x02203B20
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr r1, _02203B58 ; =0x0221C6AC
	ldr r1, [r1, r4, lsl #2]
	cmp r1, #0
	beq _02203B4C
	bl sub_020C3DAC
	ldr r0, _02203B58 ; =0x0221C6AC
	ldr r0, [r0, r4, lsl #2]
	ldmia sp!, {r4, pc}
_02203B4C:
	bl sub_020C3DAC
	mov r0, #0
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02203B58: .word 0x0221C6AC
	arm_func_end ov4_02203B20

	arm_func_start ov4_02203B5C
ov4_02203B5C: ; 0x02203B5C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl sub_020C3D98
	ldr ip, _02203BB8 ; =0x0221C6AC
	ldr r1, [ip, r4, lsl #2]
	cmp r1, #0
	beq _02203BA8
	ldr r2, _02203BBC ; =0x0221C6B8
	ldr r3, [r1, #8]
	ldr r1, [r2, r4, lsl #2]
	str r3, [ip, r4, lsl #2]
	sub r1, r1, #1
	str r1, [r2, r4, lsl #2]
	cmp r3, #0
	movne r1, #0
	strne r1, [r3, #4]
	ldreq r1, _02203BC0 ; =0x0221C6C4
	moveq r2, #0
	streq r2, [r1, r4, lsl #2]
_02203BA8:
	bl sub_020C3DAC
	ldr r0, _02203BBC ; =0x0221C6B8
	ldr r0, [r0, r4, lsl #2]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02203BB8: .word 0x0221C6AC
_02203BBC: .word 0x0221C6B8
_02203BC0: .word 0x0221C6C4
	arm_func_end ov4_02203B5C

	arm_func_start ov4_02203BC4
ov4_02203BC4: ; 0x02203BC4
	ldr r1, _02203BD0 ; =0x0221C6B8
	ldr r0, [r1, r0, lsl #2]
	bx lr
	; .align 2, 0
_02203BD0: .word 0x0221C6B8
	arm_func_end ov4_02203BC4

	.bss


	.global Unk_ov4_0221C6AC
Unk_ov4_0221C6AC: ; 0x0221C6AC
	.space 0xC

	.global Unk_ov4_0221C6B8
Unk_ov4_0221C6B8: ; 0x0221C6B8
	.space 0xC

	.global Unk_ov4_0221C6C4
Unk_ov4_0221C6C4: ; 0x0221C6C4
	.space 0xC

