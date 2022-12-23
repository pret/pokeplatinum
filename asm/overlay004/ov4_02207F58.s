	.include "macros/function.inc"
	.include "overlay004/ov4_02207F58.inc"

	

	.text


	arm_func_start ov4_02207F58
ov4_02207F58: ; 0x02207F58
	stmfd sp!, {r4, r5, lr}
	sub sp, sp, #0x64
	movs r5, r0
	addeq sp, sp, #0x64
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	ldr r1, _02207FFC ; =0x0221A134
	mov r0, #0xfd0
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x18]
	blx r1
	movs r4, r0
	addeq sp, sp, #0x64
	moveq r0, #0
	ldmeqia sp!, {r4, r5, pc}
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x64
	bl MI_CpuFill8
	add r0, r4, #0x368
	add r2, r0, #0x800
	ldr r3, _02208000 ; =0x00000B68
	ldr r1, _02208004 ; =0x00000466
	add r0, sp, #0
	str r4, [sp, #0x40]
	str r3, [sp, #0x3c]
	str r2, [sp, #0x4c]
	str r1, [sp, #0x48]
	bl ov4_0220BCF0
	mov r0, r5
	bl ov4_0220D8D8
	mov r5, r0
	bl ov4_0220BD04
	ldr r1, _02207FFC ; =0x0221A134
	mov r0, r4
	ldr r1, [r1, #0]
	ldr r1, [r1, #0x1c]
	blx r1
	mov r0, r5
	add sp, sp, #0x64
	ldmia sp!, {r4, r5, pc}
	; .align 2, 0
_02207FFC: .word 0x0221A134
_02208000: .word 0x00000B68
_02208004: .word 0x00000466
	arm_func_end ov4_02207F58

	arm_func_start ov4_02208008
ov4_02208008: ; 0x02208008
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _02208050 ; =0x0221DE50
	mov r5, r0
	ldmia r1, {r6, r7}
	mov r2, #0
	str r2, [r1, #0]
	mov r0, r4
	str r2, [r1, #4]
	bl ov4_0220D8D8
	ldr r1, _02208050 ; =0x0221DE50
	mov r4, r0
	mov r0, r5
	stmia r1, {r6, r7}
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02208050: .word 0x0221DE50
	arm_func_end ov4_02208008

	arm_func_start ov4_02208054
ov4_02208054: ; 0x02208054
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_02208088
	cmp r0, #0
	mvneq r0, #0x26
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r1, _02208084 ; =0x0221DE50
	mov r0, #0
	str r5, [r1, #0]
	str r4, [r1, #4]
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02208084: .word 0x0221DE50
	arm_func_end ov4_02208054

	arm_func_start ov4_02208088
ov4_02208088: ; 0x02208088
	stmfd sp!, {r3, lr}
	ldr r0, _022080E4 ; =0x0221DE40
	ldr r2, [r0, #0]
	cmp r2, #0
	bne _022080C8
	ldr r0, _022080E8 ; =0x0221DBF8
	ldr r0, [r0, #0]
	and r0, r0, #3
	cmp r0, #1
	bne _022080D8
	bl OS_GetProcMode
	cmp r0, #0x12
	beq _022080D8
	mov r0, #0xa
	bl OS_Sleep
	b _022080D8
_022080C8:
	ldr r0, _022080EC ; =0x0221DBF4
	ldr r1, [r0, #0]
	cmp r1, #0
	streq r2, [r0]
_022080D8:
	ldr r0, _022080E4 ; =0x0221DE40
	ldr r0, [r0, #0]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022080E4: .word 0x0221DE40
_022080E8: .word 0x0221DBF8
_022080EC: .word 0x0221DBF4
	arm_func_end ov4_02208088