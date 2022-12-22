	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020AB040
sub_020AB040: ; 0x020AB040
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #0x18
	ldr r4, [r0, #4]
	ldr r3, [r1, #8]
	mov ip, r2
	smull r6, r5, r4, r3
	ldr r4, [r0, #0]
	ldr r3, [r1, #0]
	cmp ip, r1
	smlal r6, r5, r4, r3
	mov r3, r6, lsr #0xc
	addeq r2, sp, #0
	orr r3, r3, r5, lsl #20
	str r3, [r2, #0]
	ldr r4, [r0, #4]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #0]
	smull r7, r6, r4, r3
	ldr r3, [r1, #4]
	add lr, sp, #0
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #20
	str r3, [r2, #4]
	ldr r4, [r0, #0xc]
	ldr r3, [r1, #8]
	ldr r5, [r0, #8]
	smull r7, r6, r4, r3
	ldr r3, [r1, #0]
	cmp r2, lr
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #20
	str r3, [r2, #8]
	ldr r4, [r0, #0xc]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #8]
	smull r7, r6, r4, r3
	ldr r3, [r1, #4]
	addne sp, sp, #0x18
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #20
	str r3, [r2, #0xc]
	ldr r4, [r0, #0x14]
	ldr r3, [r1, #8]
	ldr r5, [r0, #0x10]
	smull r7, r6, r4, r3
	ldr r3, [r1, #0]
	ldr r4, [r1, #0x10]
	smlal r7, r6, r5, r3
	mov r3, r7, lsr #0xc
	orr r3, r3, r6, lsl #20
	add r3, r4, r3
	str r3, [r2, #0x10]
	ldr r4, [r0, #0x14]
	ldr r3, [r1, #0xc]
	ldr r5, [r0, #0x10]
	ldr r0, [r1, #4]
	smull r6, r3, r4, r3
	smlal r6, r3, r5, r0
	mov r0, r6, lsr #0xc
	ldr r1, [r1, #0x14]
	orr r0, r0, r3, lsl #20
	add r0, r1, r0
	str r0, [r2, #0x14]
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldmia lr!, {r0, r1, r2, r3}
	stmia ip!, {r0, r1, r2, r3}
	ldmia lr, {r0, r1}
	stmia ip, {r0, r1}
	add sp, sp, #0x18
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end sub_020AB040