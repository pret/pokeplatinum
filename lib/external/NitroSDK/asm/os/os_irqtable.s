	.include "macros/function.inc"
	.include "include/os_irqtable.inc"

	.extern OS_IRQTable


	.text


	arm_func_start OS_IrqDummy
OS_IrqDummy: ; 0x020C1328
	bx lr
	arm_func_end OS_IrqDummy

	arm_func_start OSi_IrqCallback
OSi_IrqCallback: ; 0x020C132C
	stmfd sp!, {r3, r4, r5, lr}
	mov r1, #0xc
	mul r5, r0, r1
	ldr r2, _020C13A0 ; =0x021CCBF8
	ldr r3, _020C13A4 ; =0x0210114C
	mov r4, r0, lsl #1
	ldr r1, [r2, r5]
	mov r0, #0
	ldrh r3, [r3, r4]
	mov r4, #1
	str r0, [r2, r5]
	cmp r1, #0
	mov r4, r4, lsl r3
	beq _020C1370
	ldr r0, _020C13A8 ; =0x021CCC00
	ldr r0, [r0, r5]
	blx r1
_020C1370:
	ldr r0, _020C13AC ; =0x027E0000
	ldr r1, _020C13B0 ; =0x021CCBFC
	add r0, r0, #0x3000
	ldr r2, [r0, #0xff8]
	ldr r1, [r1, r5]
	orr r2, r2, r4
	str r2, [r0, #0xff8]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl OS_DisableIrqMask
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C13A0: .word Unk_021CCBF8
_020C13A4: .word Unk_0210114C
_020C13A8: .word 0x021CCC00
_020C13AC: .word OS_IRQTable
_020C13B0: .word 0x021CCBFC
	arm_func_end OSi_IrqCallback

	arm_func_start OSi_IrqDma0
OSi_IrqDma0: ; 0x020C13B4
	ldr ip, _020C13C0 ; =OSi_IrqCallback
	mov r0, #0
	bx ip
	; .align 2, 0
_020C13C0: .word OSi_IrqCallback
	arm_func_end OSi_IrqDma0

	arm_func_start OSi_IrqDma1
OSi_IrqDma1: ; 0x020C13C4
	ldr ip, _020C13D0 ; =OSi_IrqCallback
	mov r0, #1
	bx ip
	; .align 2, 0
_020C13D0: .word OSi_IrqCallback
	arm_func_end OSi_IrqDma1

	arm_func_start OSi_IrqDma2
OSi_IrqDma2: ; 0x020C13D4
	ldr ip, _020C13E0 ; =OSi_IrqCallback
	mov r0, #2
	bx ip
	; .align 2, 0
_020C13E0: .word OSi_IrqCallback
	arm_func_end OSi_IrqDma2

	arm_func_start OSi_IrqDma3
OSi_IrqDma3: ; 0x020C13E4
	ldr ip, _020C13F0 ; =OSi_IrqCallback
	mov r0, #3
	bx ip
	; .align 2, 0
_020C13F0: .word OSi_IrqCallback
	arm_func_end OSi_IrqDma3

	arm_func_start OSi_IrqTimer0
OSi_IrqTimer0: ; 0x020C13F4
	ldr ip, _020C1400 ; =OSi_IrqCallback
	mov r0, #4
	bx ip
	; .align 2, 0
_020C1400: .word OSi_IrqCallback
	arm_func_end OSi_IrqTimer0

	arm_func_start OSi_IrqTimer1
OSi_IrqTimer1: ; 0x020C1404
	ldr ip, _020C1410 ; =OSi_IrqCallback
	mov r0, #5
	bx ip
	; .align 2, 0
_020C1410: .word OSi_IrqCallback
	arm_func_end OSi_IrqTimer1

	arm_func_start OSi_IrqTimer2
OSi_IrqTimer2: ; 0x020C1414
	ldr ip, _020C1420 ; =OSi_IrqCallback
	mov r0, #6
	bx ip
	; .align 2, 0
_020C1420: .word OSi_IrqCallback
	arm_func_end OSi_IrqTimer2

	arm_func_start OSi_IrqTimer3
OSi_IrqTimer3: ; 0x020C1424
	ldr ip, _020C1430 ; =OSi_IrqCallback
	mov r0, #7
	bx ip
	; .align 2, 0
_020C1430: .word OSi_IrqCallback
	arm_func_end OSi_IrqTimer3

	.data


	.global Unk_0210114C
Unk_0210114C: ; 0x0210114C
	.short 0x8, 0x9, 0xA, 0xB, 0x3, 0x4, 0x5, 0x6



	.bss


	.global Unk_021CCBF8
Unk_021CCBF8: ; 0x021CCBF8
	.space 0x60

