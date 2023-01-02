	.include "macros/function.inc"
	.include "include/unk_020C3128.inc"

	.extern Unk_021CCEE0
	

	.text


	arm_func_start DLAddFront
DLAddFront: ; 0x020C3128
	str r0, [r1, #4]
	mov r2, #0
	str r2, [r1, #0]
	cmp r0, #0
	strne r1, [r0]
	mov r0, r1
	bx lr
	arm_func_end DLAddFront

	arm_func_start DLExtract
DLExtract: ; 0x020C3144
	ldr r3, [r1, #4]
	cmp r3, #0
	ldrne r2, [r1]
	strne r2, [r3]
	ldr r2, [r1, #0]
	cmp r2, #0
	ldreq r0, [r1, #4]
	ldrne r1, [r1, #4]
	strne r1, [r2, #4]
	bx lr
	arm_func_end DLExtract

	arm_func_start DLInsert
DLInsert: ; 0x020C316C
	stmfd sp!, {r3, lr}
	mov lr, r0
	cmp r0, #0
	mov ip, #0
	beq _020C3198
_020C3180:
	cmp r1, lr
	bls _020C3198
	mov ip, lr
	ldr lr, [lr, #4]
	cmp lr, #0
	bne _020C3180
_020C3198:
	stmia r1, {ip, lr}
	cmp lr, #0
	beq _020C31D4
	str r1, [lr]
	ldr r3, [r1, #8]
	add r2, r1, r3
	cmp r2, lr
	bne _020C31D4
	ldr r2, [lr, #8]
	add r2, r3, r2
	str r2, [r1, #8]
	ldr lr, [lr, #4]
	str lr, [r1, #4]
	cmp lr, #0
	strne r1, [lr]
_020C31D4:
	cmp ip, #0
	beq _020C320C
	str r1, [ip, #4]
	ldr r2, [ip, #8]
	add r3, ip, r2
	cmp r3, r1
	ldmneia sp!, {r3, pc}
	ldr r1, [r1, #8]
	cmp lr, #0
	add r1, r2, r1
	str r1, [ip, #8]
	str lr, [ip, #4]
	strne ip, [lr]
	ldmia sp!, {r3, pc}
_020C320C:
	mov r0, r1
	ldmia sp!, {r3, pc}
	arm_func_end DLInsert

	arm_func_start OS_AllocFromHeap
OS_AllocFromHeap: ; 0x020C3214
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r4, r0
	mov r5, r1
	mov r7, r2
	bl OS_DisableInterrupts
	ldr r1, _020C3318 ; =0x021CCEE0
	mov r6, r0
	ldr r1, [r1, r4, lsl #2]
	cmp r1, #0
	bne _020C3248
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C3248:
	cmp r5, #0
	ldrlt r5, [r1]
	ldr r1, [r1, #0x10]
	mov r0, #0xc
	mla r4, r5, r0, r1
	ldr r0, [r4, #4]
	add r1, r7, #0x3f
	mov r5, r0
	cmp r0, #0
	bic r7, r1, #0x1f
	beq _020C328C
_020C3274:
	ldr r1, [r5, #8]
	cmp r7, r1
	ble _020C328C
	ldr r5, [r5, #4]
	cmp r5, #0
	bne _020C3274
_020C328C:
	cmp r5, #0
	bne _020C32A4
	mov r0, r6
	bl OS_RestoreInterrupts
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020C32A4:
	ldr r1, [r5, #8]
	sub r1, r1, r7
	cmp r1, #0x40
	bhs _020C32C4
	mov r1, r5
	bl DLExtract
	str r0, [r4, #4]
	b _020C32F8
_020C32C4:
	str r7, [r5, #8]
	add r2, r5, r7
	str r1, [r2, #8]
	ldr r0, [r5, #0]
	str r0, [r5, r7]
	ldr r0, [r5, #4]
	str r0, [r2, #4]
	cmp r0, #0
	strne r2, [r0]
	ldr r0, [r2, #0]
	cmp r0, #0
	strne r2, [r0, #4]
	streq r2, [r4, #4]
_020C32F8:
	ldr r0, [r4, #8]
	mov r1, r5
	bl DLAddFront
	str r0, [r4, #8]
	mov r0, r6
	bl OS_RestoreInterrupts
	add r0, r5, #0x20
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C3318: .word Unk_021CCEE0
	arm_func_end OS_AllocFromHeap

	arm_func_start OS_FreeToHeap
OS_FreeToHeap: ; 0x020C331C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r1, _020C3380 ; =0x021CCEE0
	mov r4, r0
	ldr r0, [r1, r7, lsl #2]
	cmp r6, #0
	ldrlt r6, [r0]
	ldr r1, [r0, #0x10]
	mov r0, #0xc
	mla r7, r6, r0, r1
	sub r5, r5, #0x20
	ldr r0, [r7, #8]
	mov r1, r5
	bl DLExtract
	str r0, [r7, #8]
	ldr r0, [r7, #4]
	mov r1, r5
	bl DLInsert
	str r0, [r7, #4]
	mov r0, r4
	bl OS_RestoreInterrupts
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C3380: .word Unk_021CCEE0
	arm_func_end OS_FreeToHeap

	arm_func_start OS_SetCurrentHeap
OS_SetCurrentHeap: ; 0x020C3384
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl OS_DisableInterrupts
	ldr r1, _020C33B0 ; =0x021CCEE0
	ldr r1, [r1, r4, lsl #2]
	ldr r4, [r1, #0]
	str r5, [r1, #0]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C33B0: .word Unk_021CCEE0
	arm_func_end OS_SetCurrentHeap

	arm_func_start OS_InitAlloc
OS_InitAlloc: ; 0x020C33B4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r5, r1
	mov r4, r2
	mov r6, r3
	bl OS_DisableInterrupts
	ldr r2, _020C3458 ; =0x021CCEE0
	mov r1, #0xc
	str r5, [r2, r7, lsl #2]
	add r2, r5, #0x14
	str r2, [r5, #0x10]
	mul r1, r6, r1
	str r6, [r5, #4]
	cmp r6, #0
	mov lr, #0
	ble _020C3428
	mov r6, lr
	mvn ip, #0
	mov r3, lr
_020C3400:
	ldr r2, [r5, #0x10]
	add lr, lr, #1
	str ip, [r2, r6]
	add r2, r2, r6
	str r3, [r2, #8]
	str r3, [r2, #4]
	ldr r2, [r5, #4]
	add r6, r6, #0xc
	cmp lr, r2
	blt _020C3400
_020C3428:
	mvn r2, #0
	str r2, [r5, #0]
	ldr r3, [r5, #0x10]
	bic r2, r4, #0x1f
	add r1, r3, r1
	add r1, r1, #0x1f
	bic r1, r1, #0x1f
	str r1, [r5, #8]
	str r2, [r5, #0xc]
	bl OS_RestoreInterrupts
	ldr r0, [r5, #8]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020C3458: .word Unk_021CCEE0
	arm_func_end OS_InitAlloc

	arm_func_start OS_ClearAlloc
OS_ClearAlloc: ; 0x020C345C
	ldr r1, _020C346C ; =0x021CCEE0
	mov r2, #0
	str r2, [r1, r0, lsl #2]
	bx lr
	; .align 2, 0
_020C346C: .word Unk_021CCEE0
	arm_func_end OS_ClearAlloc

	arm_func_start OS_CreateHeap
OS_CreateHeap: ; 0x020C3470
	stmfd sp!, {r4, r5, r6, lr}
	mov r4, r0
	mov r6, r1
	mov r5, r2
	bl OS_DisableInterrupts
	ldr r2, _020C3504 ; =0x021CCEE0
	add r1, r6, #0x1f
	ldr r2, [r2, r4, lsl #2]
	bic r6, r1, #0x1f
	ldr ip, [r2, #4]
	bic r5, r5, #0x1f
	cmp ip, #0
	mov r4, #0
	ble _020C34F8
	ldr r3, [r2, #0x10]
_020C34AC:
	ldr r1, [r3, #0]
	cmp r1, #0
	bge _020C34E8
	sub r1, r5, r6
	str r1, [r3, #0]
	mov r2, #0
	str r2, [r6, #0]
	str r2, [r6, #4]
	ldr r1, [r3, #0]
	str r1, [r6, #8]
	str r6, [r3, #4]
	str r2, [r3, #8]
	bl OS_RestoreInterrupts
	mov r0, r4
	ldmia sp!, {r4, r5, r6, pc}
_020C34E8:
	add r4, r4, #1
	cmp r4, ip
	add r3, r3, #0xc
	blt _020C34AC
_020C34F8:
	bl OS_RestoreInterrupts
	mvn r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C3504: .word Unk_021CCEE0
	arm_func_end OS_CreateHeap

	.bss


	.global Unk_021CCEE0
Unk_021CCEE0: ; 0x021CCEE0
	.space 0x24

