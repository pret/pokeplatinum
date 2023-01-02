	.include "macros/function.inc"
	.include "include/unk_020C4054.inc"

	.extern Unk_021CCFE8
	.extern Unk_021CCFEC
	

	.text


	arm_func_start OsCountZeroBits
OsCountZeroBits: ; 0x020C4054
	clz r0, r0
	bx lr
	arm_func_end OsCountZeroBits

	arm_func_start OSi_InitVramExclusive
OSi_InitVramExclusive: ; 0x020C405C
	ldr r0, _020C4088 ; =0x021CCFE8
	mov r3, #0
	str r3, [r0, #0]
	ldr r0, _020C408C ; =0x021CCFEC
	mov r2, r3
_020C4070:
	mov r1, r3, lsl #1
	add r3, r3, #1
	strh r2, [r0, r1]
	cmp r3, #9
	blt _020C4070
	bx lr
	; .align 2, 0
_020C4088: .word Unk_021CCFE8
_020C408C: .word Unk_021CCFEC
	arm_func_end OSi_InitVramExclusive

	arm_func_start OSi_TryLockVram
OSi_TryLockVram: ; 0x020C4090
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r7, r0
	mov r8, r1
	bl OS_DisableInterrupts
	ldr r1, _020C4144 ; =0x021CCFE8
	mov r6, r0
	ldr r0, [r1, #0]
	ldr sb, _020C4148 ; =0x021CCFEC
	and r5, r7, r0
	mov r4, #1
_020C40B8:
	mov r0, r5
	bl OsCountZeroBits
	rsbs r1, r0, #0x1f
	bmi _020C40F0
	mov r0, r1, lsl #1
	ldrh r0, [sb, r0]
	mvn r1, r4, lsl r1
	cmp r8, r0
	and r5, r5, r1
	beq _020C40B8
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
_020C40F0:
	ldr r0, _020C414C ; =0x000001FF
	ldr r4, _020C4148 ; =0x021CCFEC
	ldr sb, _020C4144 ; =0x021CCFE8
	and r7, r7, r0
	mov r5, #1
_020C4104:
	mov r0, r7
	bl OsCountZeroBits
	rsbs r1, r0, #0x1f
	bmi _020C4134
	ldr r0, [sb]
	mvn r2, r5, lsl r1
	orr r0, r0, r5, lsl r1
	mov r1, r1, lsl #1
	strh r8, [r4, r1]
	str r0, [sb]
	and r7, r7, r2
	b _020C4104
_020C4134:
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020C4144: .word Unk_021CCFE8
_020C4148: .word Unk_021CCFEC
_020C414C: .word 0x000001FF
	arm_func_end OSi_TryLockVram

	arm_func_start OSi_UnlockVram
OSi_UnlockVram: ; 0x020C4150
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r5, r0
	mov sl, r1
	bl OS_DisableInterrupts
	ldr r4, _020C41CC ; =0x021CCFE8
	ldr r1, _020C41D0 ; =0x000001FF
	ldr r2, [r4, #0]
	mov sb, r0
	and r0, r5, r2
	ldr r6, _020C41D4 ; =0x021CCFEC
	and r8, r0, r1
	mov r7, #1
	mov r5, #0
_020C4184:
	mov r0, r8
	bl OsCountZeroBits
	rsbs r2, r0, #0x1f
	bmi _020C41C0
	mov r1, r2, lsl #1
	ldrh r0, [r6, r1]
	mvn r2, r7, lsl r2
	cmp sl, r0
	and r8, r8, r2
	bne _020C4184
	ldr r0, [r4, #0]
	strh r5, [r6, r1]
	and r0, r0, r2
	str r0, [r4, #0]
	b _020C4184
_020C41C0:
	mov r0, sb
	bl OS_RestoreInterrupts
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	; .align 2, 0
_020C41CC: .word Unk_021CCFE8
_020C41D0: .word 0x000001FF
_020C41D4: .word Unk_021CCFEC
	arm_func_end OSi_UnlockVram

	.bss


	.global Unk_021CCFE8
Unk_021CCFE8: ; 0x021CCFE8
	.space 0x4

	.global Unk_021CCFEC
Unk_021CCFEC: ; 0x021CCFEC
	.space 0x12

