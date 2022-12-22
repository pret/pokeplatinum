	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020C4F48
sub_020C4F48: ; 0x020C4F48
	stmfd sp!, {r4, r5, r6, r7, lr}
	ldr r5, [r0, #0], #4
	mov r2, r5, lsr #8
	mov r7, #0
	tst r5, #0xf
	bne _020C4F64
	b _020C4F68
_020C4F64:
	mov r7, #1
_020C4F68:
	cmp r2, #0
	ble _020C5040
	ldrb lr, [r0], #1
	mov r4, #8
_020C4F78:
	subs r4, r4, #1
	blt _020C4F68
	tst lr, #0x80
	bne _020C4F9C
	ldrb r6, [r0], #1
	.word 0xE1416096
	add r1, r1, #1
	sub r2, r2, #1
	b _020C5028
_020C4F9C:
	ldrb r5, [r0]
	cmp r7, #0
	beq _020C4FAC
	b _020C4FB0
_020C4FAC:
	mov r6, #3
_020C4FB0:
	beq _020C4FF4
	tst r5, #0xe0
	bne _020C4FC0
	b _020C4FC4
_020C4FC0:
	mov r6, #1
_020C4FC4:
	bne _020C4FF4
	add r0, r0, #1
	and r6, r5, #0xf
	mov r6, r6, lsl #4
	tst r5, #0x10
	beq _020C4FEC
	mov r6, r6, lsl #8
	ldrb r5, [r0], #1
	add r6, r6, r5, lsl #4
	add r6, r6, #0x100
_020C4FEC:
	add r6, r6, #0x11
	ldrb r5, [r0]
_020C4FF4:
	add r3, r6, r5, asr #4
	add r0, r0, #1
	and r5, r5, #0xf
	mov ip, r5, lsl #8
	ldrb r6, [r0], #1
	orr r5, r6, ip
	add ip, r5, #1
	sub r2, r2, r3
_020C5014:
	ldrb r5, [r1, -ip]
	.word 0xE1415095
	add r1, r1, #1
	subs r3, r3, #1
	bgt _020C5014
_020C5028:
	cmp r2, #0
	bgt _020C5034
	b _020C5038
_020C5034:
	mov lr, lr, lsl #1
_020C5038:
	bgt _020C4F78
	b _020C4F68
_020C5040:
	ldmia sp!, {r4, r5, r6, r7, lr}
	bx lr
	arm_func_end sub_020C4F48