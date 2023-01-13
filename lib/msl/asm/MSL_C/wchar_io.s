	.include "macros/function.inc"

	

	.text


	arm_func_start fwide
fwide: ; 0x020DAE20
	cmp r0, #0
	beq _020DAE38
	ldr r3, [r0, #4]
	mov r2, r3, lsl #0x16
	movs r2, r2, lsr #0x1d
	bne _020DAE40
_020DAE38:
	mov r0, #0
	bx lr
_020DAE40:
	mov r2, r3, lsl #0x14
	movs r2, r2, lsr #0x1e
	beq _020DAE60
	cmp r2, #1
	beq _020DAE88
	cmp r2, #2
	moveq r1, #1
	b _020DAE8C
_020DAE60:
	cmp r1, #0
	ble _020DAE78
	bic r2, r3, #0xc00
	orr r2, r2, #0x800
	str r2, [r0, #4]
	b _020DAE8C
_020DAE78:
	biclt r2, r3, #0xc00
	orrlt r2, r2, #0x400
	strlt r2, [r0, #4]
	b _020DAE8C
_020DAE88:
	mvn r1, #0
_020DAE8C:
	mov r0, r1
	bx lr
	arm_func_end fwide