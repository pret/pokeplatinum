	.include "macros/function.inc"
	.include "include/unk_020E1A90.inc"

	

	.text


	arm_func_start _frsb
_frsb: ; 0x020E1A90
	eor r0, r0, r1
	eor r1, r0, r1
	eor r0, r0, r1
	arm_func_end _frsb

	arm_func_start _fsub
	arm_func_start _f_sub
_fsub:
_f_sub: ; 0x020E1A9C
	eors r2, r0, r1
	eormi r1, r1, #0x80000000
	bmi __fadd_start
	arm_func_end _f_sub

	arm_func_start __fsub_start
__fsub_start: ; 0x020E1AA8
	subs ip, r0, r1
	eorlo ip, ip, #0x80000000
	sublo r0, r0, ip
	addlo r1, r1, ip
	mov r2, #-0x80000000
	mov r3, r0, lsr #0x17
	orr r0, r2, r0, lsl #8
	ands ip, r3, #0xff
	cmpne ip, #0xff
	beq _020E1BC4
	mov ip, r1, lsr #0x17
	orr r1, r2, r1, lsl #8
	ands r2, ip, #0xff
	beq _020E1C04
_020E1AE0:
	subs ip, r3, ip
	beq _020E1B28
	rsb r2, ip, #0x20
	movs r2, r1, lsl r2
	mov r1, r1, lsr ip
	orrne r1, r1, #1
	subs r0, r0, r1
	bpl _020E1B6C
	ands r1, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, r3, lsl #23
	tst r1, #0x80
	bxeq lr
	ands r1, r1, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E1B28:
	subs r0, r0, r1
	beq _020E1CD0
	mov r2, r3, lsl #0x17
	and r2, r2, #0x80000000
	bic r3, r3, #0x100
	clz ip, r0
	movs r0, r0, lsl ip
	sub r3, r3, ip
	cmp r3, #0
	bgt _020E1B5C
	rsb r3, r3, #9
	orr r0, r2, r0, lsr r3
	bx lr
_020E1B5C:
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_020E1B6C:
	mov r2, r3, lsl #0x17
	and r2, r2, #0x80000000
	bic r3, r3, #0x100
	clz ip, r0
	movs r0, r0, lsl ip
	sub r3, r3, ip
	cmp r3, #0
	bgt _020E1B98
	rsb r3, r3, #9
	orr r0, r2, r0, lsr r3
	bx lr
_020E1B98:
	ands r1, r0, #0xff
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	ands r1, r1, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E1BC4:
	cmp r3, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	ands r3, r3, #0xff
	beq _020E1C2C
	movs r0, r0, lsl #1
	bne _020E1D04
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands ip, ip, #0xff
	beq _020E1CF8
	cmp ip, #0xff
	blt _020E1CF8
	cmp r1, #0
	beq _020E1D0C
	b _020E1D04
_020E1C04:
	cmp ip, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	and r3, r3, #0xff
	ands ip, ip, #0xff
	beq _020E1C94
_020E1C1C:
	eor r2, r2, #0x80000000
	movs r1, r1, lsl #1
	bne _020E1D04
	b _020E1CF8
_020E1C2C:
	movs r0, r0, lsl #1
	beq _020E1C64
	mov r0, r0, lsr #1
	mov r3, #1
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #8
	ands ip, ip, #0xff
	beq _020E1C94
	cmp ip, #0xff
	beq _020E1C1C
	orr r1, r1, #0x80000000
	orr r3, r3, r2, lsr #23
	orr ip, ip, r2, lsr #23
	b _020E1AE0
_020E1C64:
	mov r3, r1, lsr #0x17
	mov r0, r1, lsl #9
	ands r2, r3, #0xff
	beq _020E1C88
	cmp r2, #0xff
	blt _020E1CB0
	cmp r0, #0
	bne _020E1CF0
	b _020E1CF8
_020E1C88:
	cmp r0, #0
	beq _020E1CD0
	b _020E1CB0
_020E1C94:
	movs r1, r1, lsl #1
	beq _020E1CB8
	mov r1, r1, lsr #1
	mov ip, #1
	orr ip, ip, r2, lsr #23
	orr r3, r3, r2, lsr #23
	b _020E1AE0
_020E1CB0:
	mov r0, r1
	bx lr
_020E1CB8:
	cmp r0, #0
	subges r3, r3, #1
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_020E1CD0:
	mov r0, #0
	bx lr
_020E1CD8:
	.byte 0x00, 0x00, 0x50, 0xE3, 0x01, 0x30, 0x53, 0xA2
	.byte 0x00, 0x00, 0x80, 0xE0, 0xA0, 0x04, 0xA0, 0xE1, 0x83, 0x0B, 0x80, 0xE1, 0x1E, 0xFF, 0x2F, 0xE1
_020E1CF0:
	mvn r0, #0x80000000
	bx lr
_020E1CF8:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E1D04:
	mvn r0, #0x80000000
	bx lr
_020E1D0C:
	mvn r0, #0x80000000
	bx lr
	arm_func_end __fsub_start