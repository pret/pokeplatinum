	.include "macros/function.inc"
	.include "include/unk_020C12B4.inc"

	

	.text


	arm_func_start OS_WaitIrq
OS_WaitIrq: ; 0x020C12B4
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r4, r1
	bl OS_DisableInterrupts
	cmp r5, #0
	beq _020C12E4
	ldr r1, _020C1320 ; =0x027E0000
	mvn r2, r4
	add r1, r1, #0x3000
	ldr r3, [r1, #0xff8]
	and r2, r3, r2
	str r2, [r1, #0xff8]
_020C12E4:
	bl OS_RestoreInterrupts
	ldr r1, _020C1320 ; =0x027E0000
	add r0, r1, #0x3000
	ldr r0, [r0, #0xff8]
	tst r4, r0
	ldmneia sp!, {r4, r5, r6, pc}
	add r0, r1, #0x3f8
	ldr r5, _020C1324 ; =0x027E0060
	add r6, r0, #0x3c00
_020C1308:
	mov r0, r5
	bl OS_SleepThread
	ldr r0, [r6, #0]
	tst r4, r0
	beq _020C1308
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020C1320: .word 0x027E0000
_020C1324: .word 0x027E0060
	arm_func_end OS_WaitIrq