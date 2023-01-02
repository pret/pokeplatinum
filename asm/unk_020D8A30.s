	.include "macros/function.inc"
	.include "include/unk_020D8A30.inc"

	.extern Unk_021CCC80
	

	.text


	arm_func_start raise
raise: ; 0x020D8A30
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	cmp r5, #1
	blt _020D8A48
	cmp r5, #7
	ble _020D8A50
_020D8A48:
	mvn r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020D8A50:
	ldr r0, _020D8B4C ; =0x021D0A10
	bl OS_TryLockMutex
	cmp r0, #0
	bne _020D8A84
	ldr r0, _020D8B50 ; =0x021CCC80
	ldr r1, _020D8B54 ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D8B58 ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0x1c]
	str r2, [r0, #0x1c]
	b _020D8ADC
_020D8A84:
	ldr r0, _020D8B50 ; =0x021CCC80
	ldr r1, _020D8B54 ; =0x021D0920
	ldr r0, [r0, #4]
	ldr r1, [r1, #0x1c]
	ldr r0, [r0, #0x6c]
	cmp r1, r0
	bne _020D8AB4
	ldr r0, _020D8B58 ; =0x021D0944
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	b _020D8ADC
_020D8AB4:
	ldr r0, _020D8B4C ; =0x021D0A10
	bl OS_LockMutex
	ldr r0, _020D8B50 ; =0x021CCC80
	ldr r1, _020D8B54 ; =0x021D0920
	ldr r2, [r0, #4]
	ldr r0, _020D8B58 ; =0x021D0944
	ldr r3, [r2, #0x6c]
	mov r2, #1
	str r3, [r1, #0x1c]
	str r2, [r0, #0x1c]
_020D8ADC:
	ldr r1, _020D8B5C ; =0x021D0D44
	sub r2, r5, #1
	ldr r4, [r1, r2, lsl #2]
	cmp r4, #1
	movne r0, #0
	strne r0, [r1, r2, lsl #2]
	ldr r0, _020D8B58 ; =0x021D0944
	ldr r1, [r0, #0x1c]
	subs r1, r1, #1
	str r1, [r0, #0x1c]
	bne _020D8B10
	ldr r0, _020D8B4C ; =0x021D0A10
	bl OS_UnlockMutex
_020D8B10:
	cmp r4, #1
	beq _020D8B24
	cmp r4, #0
	cmpeq r5, #1
	bne _020D8B2C
_020D8B24:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_020D8B2C:
	cmp r4, #0
	bne _020D8B3C
	mov r0, #0
	bl exit
_020D8B3C:
	mov r0, r5
	blx r4
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020D8B4C: .word 0x021D0A10
_020D8B50: .word Unk_021CCC80
_020D8B54: .word 0x021D0920
_020D8B58: .word 0x021D0944
_020D8B5C: .word 0x021D0D44
	arm_func_end raise

	.bss


	.global Unk_021D0D44
Unk_021D0D44: ; 0x021D0D44
	.space 0x1C

