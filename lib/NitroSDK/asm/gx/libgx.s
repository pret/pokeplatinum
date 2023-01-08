	.include "macros/function.inc"

	

	.text


	arm_func_start G3_BeginMakeDL
G3_BeginMakeDL: ; 0x020C11A8
	str r2, [r0, #0xc]
	str r1, [r0, #8]
	str r1, [r0, #0]
	add r1, r1, #4
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #0x10]
	bx lr
	arm_func_end G3_BeginMakeDL

	arm_func_start G3_EndMakeDL
G3_EndMakeDL: ; 0x020C11C8
	ldr r3, [r0, #0]
	ldr r2, [r0, #8]
	cmp r2, r3
	moveq r0, #0
	bxeq lr
	and r1, r3, #3
	cmp r1, #3
	addls pc, pc, r1, lsl #2
	b _020C123C
_020C11EC: ; jump table
	b _020C11FC ; case 0
	b _020C1204 ; case 1
	b _020C1214 ; case 2
	b _020C1228 ; case 3
_020C11FC:
	sub r0, r3, r2
	bx lr
_020C1204:
	add r1, r3, #1
	str r1, [r0, #0]
	mov r1, #0
	strb r1, [r3]
_020C1214:
	ldr r3, [r0, #0]
	mov r1, #0
	add r2, r3, #1
	str r2, [r0, #0]
	strb r1, [r3]
_020C1228:
	ldr r3, [r0, #0]
	mov r1, #0
	add r2, r3, #1
	str r2, [r0, #0]
	strb r1, [r3]
_020C123C:
	ldr r1, [r0, #0x10]
	cmp r1, #0
	beq _020C1260
	ldr r3, [r0, #4]
	mov r1, #0
	add r2, r3, #4
	str r2, [r0, #4]
	str r1, [r3, #0]
	str r1, [r0, #0x10]
_020C1260:
	ldr r1, [r0, #4]
	str r1, [r0, #0]
	ldr r0, [r0, #8]
	sub r0, r1, r0
	bx lr
	arm_func_end G3_EndMakeDL