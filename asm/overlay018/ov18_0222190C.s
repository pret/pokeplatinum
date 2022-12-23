	.include "macros/function.inc"
	.include "overlay018/ov18_0222190C.inc"

	

	.text


	arm_func_start ov18_0222190C
ov18_0222190C: ; 0x0222190C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r4, r2
	add r2, r6, #0x1f
	mov r5, r1
	mov r0, r4
	bic r1, r2, #0x1f
	bl DC_FlushRange
	bl DC_WaitWriteBufferEmpty
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov18_02223D50
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov18_0222190C

	arm_func_start ov18_02221944
ov18_02221944: ; 0x02221944
	mov r3, r1, asr #1
	cmp r3, #0
	mov r2, #0
	ble _02221968
_02221954:
	ldrh r1, [r0], #2
	sub r3, r3, #1
	cmp r3, #0
	add r2, r2, r1
	bgt _02221954
_02221968:
	mov r0, r2, lsl #0x10
	mov r0, r0, lsr #0x10
	add r1, r0, r2, lsr #16
	ldr r0, _0222198C ; =0x0000FFFF
	add r1, r1, r1, lsr #16
	eor r0, r1, r0
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bx lr
	; .align 2, 0
_0222198C: .word 0x0000FFFF
	arm_func_end ov18_02221944