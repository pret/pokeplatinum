	.include "macros/function.inc"
	.include "include/ov18_02245BD8.inc"

	

	.text


	arm_func_start ov18_02245BD8
ov18_02245BD8: ; 0x02245BD8
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r0, #0x340
	mov r1, #4
	bl ov18_02245068
	ldr r4, _02245C94 ; =0x022533EC
	mov sb, #0
	mov sl, sb
	str r0, [r4, #0]
	mov r8, #0x20
	mov r7, #0xc
	mov r6, #0x300
	mov r5, #0x400
_02245C08:
	ldr r1, [r4, #0]
	mov r0, r8
	mov r2, r7
	add r1, r1, sl
	bl ov18_02244008
	ldr r1, [r4, #0]
	add r1, r1, sl
	str r0, [r1, #0x19c]
	bl ov18_02245974
	ldr r1, [r4, #0]
	add r1, r1, sl
	str r0, [r1, #0x198]
	ldr r0, [r4, #0]
	add r0, r0, sl
	add r0, r0, #0x100
	strh r6, [r0, #0x88]
	ldr r0, [r4, #0]
	add r0, r0, sl
	add r0, r0, #0x100
	strh r5, [r0, #0x94]
	ldr r0, [r4, #0]
	add r1, r0, sl
	ldr r0, [r1, #0x198]
	add r1, r1, #0x180
	bl ov18_02245A34
	ldr r0, [r4, #0]
	add r1, r0, sl
	ldr r0, [r1, #0x198]
	add r1, r1, #0x18c
	bl ov18_02245A24
	add sb, sb, #1
	cmp sb, #2
	add sl, sl, #0x1a0
	blt _02245C08
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02245C94: .word 0x022533EC
	arm_func_end ov18_02245BD8

	arm_func_start ov18_02245C98
ov18_02245C98: ; 0x02245C98
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, r0
	mov r0, #0x1a0
	mul sb, r5, r0
	ldr r0, _02245E0C ; =0x022533EC
	mov r6, r1
	ldr r0, [r0, #0]
	mov sl, r2
	add r0, r0, sb
	ldr r0, [r0, #0x19c]
	mov r4, r3
	bl ov18_022440BC
	add r1, r6, #3
	bic r1, r1, #3
	mov r6, r0
	mov r8, r1, asr #2
	mov r0, #1
	strh r8, [r6, #0xa]
	bl OS_DisableIrqMask
	mov r7, r0
	cmp sl, #0
	mov r0, #0x1a0
	beq _02245D74
	ldr r1, _02245E0C ; =0x022533EC
	ldr r1, [r1, #0]
	mla r0, r5, r0, r1
	add r5, r0, #0x180
	add r0, r0, #0x18c
	cmp r5, r0
	beq _02245D54
	add r0, r1, sb
	add r1, r0, #0x18c
_02245D18:
	ldr r0, [r5, #4]
	ldrh sl, [r5, #8]
	ldrh r3, [r5, #0xa]
	ldrh r2, [r0, #8]
	add sl, sl, r3
	add r3, sl, r8
	cmp r3, r2
	bgt _02245D48
	mov r1, r6
	strh sl, [r6, #8]
	bl ov18_022459F4
	b _02245D54
_02245D48:
	mov r5, r0
	cmp r0, r1
	bne _02245D18
_02245D54:
	ldr r0, _02245E0C ; =0x022533EC
	ldr r0, [r0, #0]
	add r0, r0, sb
	add r0, r0, #0x18c
	cmp r5, r0
	bne _02245DF4
	bl OS_Terminate
	b _02245DF4
_02245D74:
	ldr r1, _02245E0C ; =0x022533EC
	ldr r1, [r1, #0]
	mla r0, r5, r0, r1
	add r5, r0, #0x18c
	add r0, r0, #0x180
	cmp r5, r0
	beq _02245DD8
	add r0, r1, sb
	add r0, r0, #0x180
_02245D98:
	ldr sl, [r5]
	ldrh r3, [r5, #8]
	ldrh r2, [sl, #8]
	ldrh r1, [sl, #0xa]
	sub r3, r3, r8
	add r1, r2, r1
	cmp r3, r1
	blt _02245DCC
	mov r0, r5
	mov r1, r6
	strh r3, [r6, #8]
	bl ov18_022459F4
	b _02245DD8
_02245DCC:
	mov r5, sl
	cmp sl, r0
	bne _02245D98
_02245DD8:
	ldr r0, _02245E0C ; =0x022533EC
	ldr r0, [r0, #0]
	add r0, r0, sb
	add r0, r0, #0x180
	cmp r5, r0
	bne _02245DF4
	bl OS_Terminate
_02245DF4:
	ldrh r1, [r6, #8]
	mov r0, r7
	str r1, [r4, #0]
	bl OS_EnableIrqMask
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_02245E0C: .word 0x022533EC
	arm_func_end ov18_02245C98

	arm_func_start ov18_02245E10
ov18_02245E10: ; 0x02245E10
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, #0
	bl ov18_022459BC
	ldr r0, _02245E4C ; =0x022533EC
	ldr r1, [r0, #0]
	add r0, r1, #0x1a0
	cmp r5, r0
	movhs r4, #1
	mov r0, #0x1a0
	mla r0, r4, r0, r1
	ldr r0, [r0, #0x19c]
	mov r1, r5
	bl ov18_02244064
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02245E4C: .word 0x022533EC
	arm_func_end ov18_02245E10

	.bss


	.global Unk_ov18_022533EC
Unk_ov18_022533EC: ; 0x022533EC
	.space 0x4

