	.include "macros/function.inc"
	.include "include/unk_020C1434.inc"

	.extern OS_IRQTable
	.extern OSi_IrqThreadQueue
	.extern Unk_021CCBF8


	.text


	arm_func_start OS_InitIrqTable
OS_InitIrqTable: ; 0x020C1434
	ldr r0, _020C1448 ; =0x027E0060
	mov r1, #0
	str r1, [r0, #4]
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_020C1448: .word OSi_IrqThreadQueue
	arm_func_end OS_InitIrqTable

	arm_func_start OS_SetIrqFunction
OS_SetIrqFunction: ; 0x020C144C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	mov r8, #0
	mov r2, #0xc
	ldr r4, _020C14CC ; =0x027E0000
	ldr r6, _020C14D0 ; =0x021CCBF8
	mov r7, r8
	mov lr, r8
	mov ip, #1
	mov r3, r2
_020C1470:
	tst r0, #1
	beq _020C14B8
	mov sb, r7
	cmp r8, #8
	blt _020C1494
	cmp r8, #0xb
	suble r5, r8, #8
	mlale sb, r5, r3, r6
	ble _020C14B0
_020C1494:
	cmp r8, #3
	blt _020C14AC
	cmp r8, #6
	addle r5, r8, #1
	mlale sb, r5, r2, r6
	ble _020C14B0
_020C14AC:
	str r1, [r4, r8, lsl #2]
_020C14B0:
	cmp sb, #0
	stmneia sb, {r1, ip, lr}
_020C14B8:
	add r8, r8, #1
	cmp r8, #0x16
	mov r0, r0, lsr #1
	blt _020C1470
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_020C14CC: .word OS_IRQTable
_020C14D0: .word Unk_021CCBF8
	arm_func_end OS_SetIrqFunction

	arm_func_start OS_GetIrqFunction
OS_GetIrqFunction: ; 0x020C14D4
	ldr r2, _020C1558 ; =0x027E0000
	mov r1, #0
_020C14DC:
	tst r0, #1
	beq _020C153C
	cmp r1, #8
	blt _020C150C
	cmp r1, #0xb
	bgt _020C150C
	sub r1, r1, #8
	mov r0, #0xc
	mul r2, r1, r0
	ldr r0, _020C155C ; =0x021CCBF8
	ldr r0, [r0, r2]
	bx lr
_020C150C:
	cmp r1, #3
	blt _020C1534
	cmp r1, #6
	bgt _020C1534
	add r1, r1, #1
	mov r0, #0xc
	mul r2, r1, r0
	ldr r0, _020C155C ; =0x021CCBF8
	ldr r0, [r0, r2]
	bx lr
_020C1534:
	ldr r0, [r2, #0]
	bx lr
_020C153C:
	add r1, r1, #1
	cmp r1, #0x16
	mov r0, r0, lsr #1
	add r2, r2, #4
	blt _020C14DC
	mov r0, #0
	bx lr
	; .align 2, 0
_020C1558: .word OS_IRQTable
_020C155C: .word Unk_021CCBF8
	arm_func_end OS_GetIrqFunction

	arm_func_start OSi_EnterDmaCallback
OSi_EnterDmaCallback: ; 0x020C1560
	stmfd sp!, {r4, r5, r6, lr}
	mov r3, #0xc
	mul r6, r0, r3
	ldr ip, _020C159C ; =0x021CCBF8
	add r4, r0, #8
	mov r5, #1
	mov r0, r5, lsl r4
	ldr r3, _020C15A0 ; =0x021CCC00
	str r1, [ip, r6]
	str r2, [r3, r6]
	bl OS_EnableIrqMask
	and r1, r0, r5, lsl r4
	ldr r0, _020C15A4 ; =0x021CCBFC
	str r1, [r0, r6]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C159C: .word Unk_021CCBF8
_020C15A0: .word 0x021CCC00
_020C15A4: .word 0x021CCBFC
	arm_func_end OSi_EnterDmaCallback

	arm_func_start OSi_EnterTimerCallback
OSi_EnterTimerCallback: ; 0x020C15A8
	stmfd sp!, {r4, lr}
	mov r3, #0xc
	mul r4, r0, r3
	ldr ip, _020C15E4 ; =0x021CCC28
	add r0, r0, #3
	mov r3, #1
	mov r0, r3, lsl r0
	ldr r3, _020C15E8 ; =0x021CCC30
	str r1, [ip, r4]
	str r2, [r3, r4]
	bl OS_EnableIrqMask
	ldr r0, _020C15EC ; =0x021CCC2C
	mov r1, #1
	str r1, [r0, r4]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C15E4: .word 0x021CCC28
_020C15E8: .word 0x021CCC30
_020C15EC: .word 0x021CCC2C
	arm_func_end OSi_EnterTimerCallback

	arm_func_start OS_SetIrqMask
OS_SetIrqMask: ; 0x020C15F0
	ldr r3, _020C1618 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #8]
	str r0, [r3, #8]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
	; .align 2, 0
_020C1618: .word 0x04000208
	arm_func_end OS_SetIrqMask

	arm_func_start OS_EnableIrqMask
OS_EnableIrqMask: ; 0x020C161C
	ldr r3, _020C1648 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #8]
	orr r0, r1, r0
	str r0, [r3, #8]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
	; .align 2, 0
_020C1648: .word 0x04000208
	arm_func_end OS_EnableIrqMask

	arm_func_start OS_DisableIrqMask
OS_DisableIrqMask: ; 0x020C164C
	ldr ip, _020C1678 ; =0x04000208
	mov r2, #0
	ldrh r3, [ip]
	mvn r1, r0
	strh r2, [ip]
	ldr r0, [ip, #8]
	and r1, r0, r1
	str r1, [ip, #8]
	ldrh r1, [ip]
	strh r3, [ip]
	bx lr
	; .align 2, 0
_020C1678: .word 0x04000208
	arm_func_end OS_DisableIrqMask

	arm_func_start OS_ResetRequestIrqMask
OS_ResetRequestIrqMask: ; 0x020C167C
	ldr r3, _020C16A4 ; =0x04000208
	mov r1, #0
	ldrh r2, [r3]
	strh r1, [r3]
	ldr r1, [r3, #0xc]
	str r0, [r3, #0xc]
	ldrh r0, [r3]
	mov r0, r1
	strh r2, [r3]
	bx lr
	; .align 2, 0
_020C16A4: .word 0x04000208
	arm_func_end OS_ResetRequestIrqMask

	arm_func_start OS_SetIrqStackChecker
OS_SetIrqStackChecker: ; 0x020C16A8
	ldr ip, _020C16CC ; =0x027E0000
	ldr r3, _020C16D0 ; =0xFDDB597D
	add r0, ip, #0x3000
	ldr r2, _020C16D4 ; =0x7BF9DD5B
	ldr r1, _020C16D8 ; =0x00000800
	str r3, [r0, #0xf7c]
	add r0, ip, #0x3f80
	str r2, [r0, -r1]
	bx lr
	; .align 2, 0
_020C16CC: .word OS_IRQTable
_020C16D0: .word 0xFDDB597D
_020C16D4: .word 0x7BF9DD5B
_020C16D8: .word 0x00000800
	arm_func_end OS_SetIrqStackChecker