	.include "macros/function.inc"
	.include "include/ov66_0224D450.inc"

	

	.text


	arm_func_start ov66_0224D450
ov66_0224D450: ; 0x0224D450
	stmfd sp!, {r4, r5, r6, r7, r8, lr}
	mov r7, r1
	mov r8, r0
	mov r6, r2
	mov r1, #0
_0224D464:
	rsb r0, r1, #0xff
	strb r1, [r6, r0]
	add r1, r1, #1
	cmp r1, #0x100
	blt _0224D464
	mov r0, #0
	strb r0, [r6, #0x100]
	mov r4, r0
	mov r5, r0
	strb r0, [r6, #0x101]
_0224D48C:
	ldrb r2, [r6, r5]
	ldrb r3, [r8, r0]
	mov r1, r7
	add r0, r0, #1
	add r3, r3, r2
	add r3, r4, r3
	mov r4, r3, lsr #0x1f
	rsb r3, r4, r3, lsl #24
	add r3, r4, r3, ror #24
	and r4, r3, #0xff
	ldrb r3, [r6, r4]
	strb r3, [r6, r5]
	strb r2, [r6, r4]
	bl _s32_div_f
	add r5, r5, #1
	cmp r5, #0x100
	and r0, r1, #0xff
	blt _0224D48C
	ldmia sp!, {r4, r5, r6, r7, r8, pc}
	arm_func_end ov66_0224D450

	arm_func_start ov66_0224D4D8
ov66_0224D4D8: ; 0x0224D4D8
	stmfd sp!, {r4, r5, r6, lr}
	cmp r1, #0
	ldrb r3, [r2, #0x100]
	ldrb ip, [r2, #0x101]
	mov lr, #0
	ble _0224D55C
_0224D4F0:
	add r3, r3, #1
	mov r4, r3, lsr #0x1f
	rsb r3, r4, r3, lsl #24
	add r3, r4, r3, ror #24
	and r3, r3, #0xff
	ldrb r5, [r2, r3]
	add r4, ip, r5
	mov ip, r4, lsr #0x1f
	rsb r4, ip, r4, lsl #24
	add r4, ip, r4, ror #24
	and ip, r4, #0xff
	ldrb r4, [r2, ip]
	strb r4, [r2, r3]
	strb r5, [r2, ip]
	ldrb r4, [r2, r3]
	ldrb r6, [r0, lr]
	add r4, r4, r5
	mov r5, r4, lsr #0x1f
	rsb r4, r5, r4, lsl #24
	add r4, r5, r4, ror #24
	and r4, r4, #0xff
	ldrb r4, [r2, r4]
	eor r4, r6, r4
	strb r4, [r0, lr]
	add lr, lr, #1
	cmp lr, r1
	blt _0224D4F0
_0224D55C:
	strb r3, [r2, #0x100]
	strb ip, [r2, #0x101]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov66_0224D4D8

	arm_func_start ov66_0224D568
ov66_0224D568: ; 0x0224D568
	stmfd sp!, {r4, lr}
	mov r4, r2
	cmp r1, #0
	mov lr, #0
	ldmleia sp!, {r4, pc}
_0224D57C:
	ldrsb ip, [r0, lr]
	ldrsb r3, [r4]
	eor r3, ip, r3
	strb r3, [r0, lr]
	ldrsb r3, [r4, #1]!
	add lr, lr, #1
	cmp r3, #0
	moveq r4, r2
	cmp lr, r1
	blt _0224D57C
	ldmia sp!, {r4, pc}
	arm_func_end ov66_0224D568