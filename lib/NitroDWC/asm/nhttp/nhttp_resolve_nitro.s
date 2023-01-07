	.include "macros/function.inc"
	.include "include/nhttp_resolve_n.inc"

	

	.text


	arm_func_start ov60_02226B6C
ov60_02226B6C: ; 0x02226B6C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r5, r0
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0xc]
	mov r0, #0
	ldrsb r4, [r2, r1]
	strb r0, [r2, r1]
	ldr r0, [r5, #8]
	ldr r6, [r5, #0x24]
	cmp r0, #0
	movne r7, #8
	moveq r7, #7
	add r1, sp, #0
	add r0, r6, r7
	bl ov4_02208A24
	cmp r0, #0
	ldrne r0, [sp]
	bne _02226BF4
	add r0, r6, r7
	bl ov4_02207F58
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	mov r2, r0, lsr #0x18
	mov r1, r0, lsr #8
	mov r3, r0, lsl #8
	mov ip, r0, lsl #0x18
	and r2, r2, #0xff
	and r0, r1, #0xff00
	and r1, r3, #0xff0000
	orr r0, r2, r0
	and r2, ip, #0xff000000
	orr r0, r1, r0
	orr r0, r2, r0
_02226BF4:
	ldr r2, [r5, #0x24]
	ldr r1, [r5, #0xc]
	strb r4, [r2, r1]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov60_02226B6C