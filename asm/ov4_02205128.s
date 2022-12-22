	.include "macros/function.inc"
	.include "include/ov4_02205128.inc"

	

	.text


	arm_func_start ov4_02205128
ov4_02205128: ; 0x02205128
	stmfd sp!, {r4, r5, r6, lr}
	ldr r3, _022051E4 ; =0xE525982B
	mov r2, r1
	umull r1, r4, r2, r3
	ldr r1, _022051E8 ; =0x0221C724
	mov r4, r4, lsr #0xa
	str r0, [r1, #4]
	cmp r4, #4
	blo _02205154
	cmp r4, #0x48
	bls _0220515C
_02205154:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_0220515C:
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	tst r0, #0x1f
	movne r0, #0
	strne r0, [r1, #4]
	ldmneia sp!, {r4, r5, r6, pc}
	mov r1, r0
	mov r0, #0
	bl MIi_CpuClearFast
	subs lr, r4, #1
	mov r5, #0
	beq _022051BC
	ldr r2, _022051E8 ; =0x0221C724
	ldr r0, _022051EC ; =0x00000478
	mov r6, r5
_0220519C:
	ldr ip, [r2, #4]
	add r5, r5, #1
	mla r3, r5, r0, ip
	add r1, r6, #0x78
	str r3, [ip, r6]
	cmp r5, lr
	add r6, r1, #0x400
	blo _0220519C
_022051BC:
	ldr r1, _022051E8 ; =0x0221C724
	ldr r0, _022051EC ; =0x00000478
	ldr r2, [r1, #4]
	mov r3, #0
	mla r0, r4, r0, r2
	str r3, [r0, #-0x478]
	ldr r2, [r1, #4]
	mov r0, #1
	str r2, [r1, #0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022051E4: .word 0xE525982B
_022051E8: .word 0x0221C724
_022051EC: .word 0x00000478
	arm_func_end ov4_02205128

	arm_func_start ov4_022051F0
ov4_022051F0: ; 0x022051F0
	ldr r0, _02205204 ; =0x0221C724
	mov r1, #0
	str r1, [r0, #0]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_02205204: .word 0x0221C724
	arm_func_end ov4_022051F0

	arm_func_start ov4_02205208
ov4_02205208: ; 0x02205208
	stmfd sp!, {r4, lr}
	mov r4, #0
	bl OS_DisableInterrupts
	ldr r1, _02205238 ; =0x0221C724
	ldr r3, [r1, #0]
	cmp r3, #0
	ldrne r2, [r3]
	movne r4, r3
	strne r2, [r1]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02205238: .word 0x0221C724
	arm_func_end ov4_02205208

	arm_func_start ov4_0220523C
ov4_0220523C: ; 0x0220523C
	stmfd sp!, {r4, lr}
	mov r4, r0
	bl OS_DisableInterrupts
	ldr r1, _0220526C ; =0x0221C724
	mov r2, #0
	ldr r3, [r1, #0]
	str r3, [r4, #0]
	str r4, [r1, #0]
	str r2, [r4, #4]
	str r2, [r4, #8]
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, pc}
	; .align 2, 0
_0220526C: .word 0x0221C724
	arm_func_end ov4_0220523C

	.bss


	.global Unk_ov4_0221C724
Unk_ov4_0221C724: ; 0x0221C724
	.space 0x4

	.global Unk_ov4_0221C728
Unk_ov4_0221C728: ; 0x0221C728
	.space 0x4

