	.include "macros/function.inc"
	.include "include/ov4_02211D9C.inc"

	

	.text


	arm_func_start ov4_02211D9C
ov4_02211D9C: ; 0x02211D9C
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r3, #0
	strb r3, [r0]
	strb r3, [r0, #1]
	add r4, r0, #2
_02211DB0:
	strb r3, [r4, r3]
	add r3, r3, #1
	cmp r3, #0x100
	blt _02211DB0
	mov r6, #0
	mov r5, r6
	mov r7, r6
	mov r0, r6
_02211DD0:
	ldrb lr, [r4, r7]
	ldrb ip, [r1, r6]
	add r3, r6, #1
	and r6, r3, #0xff
	add r3, lr, ip
	add r3, r5, r3
	and r5, r3, #0xff
	ldrb r3, [r4, r5]
	cmp r6, r2
	movge r6, r0
	strb r3, [r4, r7]
	add r7, r7, #1
	strb lr, [r4, r5]
	cmp r7, #0x100
	blt _02211DD0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_02211D9C

	arm_func_start ov4_02211E10
ov4_02211E10: ; 0x02211E10
	stmfd sp!, {r4, r5, r6, lr}
	cmp r2, #0
	add r4, r0, #2
	ldrb ip, [r0]
	ldrb lr, [r0, #1]
	mov r3, #0
	ble _02211E70
_02211E2C:
	add r5, ip, #1
	and ip, r5, #0xff
	ldrb r6, [r4, ip]
	add r5, lr, r6
	and lr, r5, #0xff
	ldrb r5, [r4, lr]
	strb r5, [r4, ip]
	add r5, r6, r5
	strb r6, [r4, lr]
	and r5, r5, #0xff
	ldrb r6, [r1, r3]
	ldrb r5, [r4, r5]
	eor r5, r6, r5
	strb r5, [r1, r3]
	add r3, r3, #1
	cmp r3, r2
	blt _02211E2C
_02211E70:
	strb ip, [r0]
	strb lr, [r0, #1]
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_02211E10