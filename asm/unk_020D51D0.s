	.include "macros/function.inc"

	

	.text


	arm_func_start __fill_mem
__fill_mem: ; 0x020D51D0
	cmp r2, #0x20
	and r3, r1, #0xff
	blo _020D5264
	rsb r1, r0, #0
	ands ip, r1, #3
	beq _020D51FC
	sub r2, r2, ip
	and r1, r3, #0xff
_020D51F0:
	strb r1, [r0], #1
	subs ip, ip, #1
	bne _020D51F0
_020D51FC:
	cmp r3, #0
	beq _020D5214
	mov r1, r3, lsl #0x10
	orr r1, r1, r3, lsl #24
	orr r1, r1, r3, lsl #8
	orr r3, r3, r1
_020D5214:
	movs r1, r2, lsr #5
	beq _020D5248
_020D521C:
	str r3, [r0, #0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #0xc]
	str r3, [r0, #0x10]
	str r3, [r0, #0x14]
	str r3, [r0, #0x18]
	str r3, [r0, #0x1c]
	add r0, r0, #0x20
	subs r1, r1, #1
	bne _020D521C
_020D5248:
	and r1, r2, #0x1f
	movs r1, r1, lsr #2
	beq _020D5260
_020D5254:
	str r3, [r0, #0], #4
	subs r1, r1, #1
	bne _020D5254
_020D5260:
	and r2, r2, #3
_020D5264:
	cmp r2, #0
	bxeq lr
	and r1, r3, #0xff
_020D5270:
	strb r1, [r0], #1
	subs r2, r2, #1
	bne _020D5270
	bx lr
	arm_func_end __fill_mem