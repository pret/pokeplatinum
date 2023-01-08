	.include "macros/function.inc"
	.include "include/g2di_bitreader.inc"

	

	.text


	arm_func_start NNSi_G2dBitReaderRead
NNSi_G2dBitReaderRead: ; 0x020AE41C
	stmfd sp!, {r4, r5, r6, lr}
	ldrsb r3, [r0, #4]
	ldrb r4, [r0, #5]
	mov r5, r1
	cmp r3, r5
	subge r1, r3, r5
	movge r2, r4, lsr r1
	strgeb r1, [r0, #4]
	bge _020AE46C
	ldr r2, [r0, #0]
	sub r6, r5, r3
	add r1, r2, #1
	str r1, [r0, #0]
	ldrb r3, [r2]
	mov r1, r6
	mov r2, #8
	strb r3, [r0, #5]
	strb r2, [r0, #4]
	bl NNSi_G2dBitReaderRead
	orr r2, r0, r4, lsl r6
_020AE46C:
	rsb r0, r5, #8
	mov r1, #0xff
	and r0, r2, r1, asr r0
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end NNSi_G2dBitReaderRead