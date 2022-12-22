	.include "macros/function.inc"

	

	.text


	arm_func_start sub_020E012C
sub_020E012C: ; 0x020E012C
	tst r1, #-0x80000000
	bne _020E0190
	ldr r2, _020E01B4 ; =0x0000043E
	subs r2, r2, r1, lsr #20
	blt _020E01A8
	cmp r2, #0x40
	bge _020E0184
	mov ip, r1, lsl #0xb
	orr ip, ip, #0x80000000
	orr ip, ip, r0, lsr #21
	cmp r2, #0x20
	ble _020E016C
	sub r2, r2, #0x20
	mov r1, #0
	mov r0, ip, lsr r2
	bx lr
_020E016C:
	mov r3, r0, lsl #0xb
	mov r1, ip, lsr r2
	mov r0, r3, lsr r2
	rsb r2, r2, #0x20
	orr r0, r0, ip, lsl r2
	bx lr
_020E0184:
	mov r1, #0
	mov r0, #0
	bx lr
_020E0190:
	cmn r1, #0x100000
	cmpeq r0, #0
	bhi _020E01A8
	mov r1, #0
	mov r0, #0
	bx lr
_020E01A8:
	mvn r1, #0
	mvn r0, #0
	bx lr
	; .align 2, 0
_020E01B4: .word 0x0000043E
	arm_func_end sub_020E012C