	.include "macros/function.inc"
	.include "include/_f_add.inc"

	

	.text


	arm_func_start _fadd
	arm_func_start _f_add
_fadd:
_f_add: ; 0x020E0B00
	eors r2, r0, r1
	eormi r1, r1, #0x80000000
	bmi __fsub_start
	arm_func_end _f_add

	arm_func_start __fadd_start
__fadd_start: ; 0x020E0B0C
	subs ip, r0, r1
	sublo r0, r0, ip
	addlo r1, r1, ip
	mov r2, #-0x80000000
	mov r3, r0, lsr #0x17
	orr r0, r2, r0, lsl #8
	ands ip, r3, #0xff
	cmpne ip, #0xff
	beq _020E0BA0
	mov ip, r1, lsr #0x17
	orr r1, r2, r1, lsl #8
	ands r2, ip, #0xff
	beq _020E0BE0
_020E0B40:
	subs ip, r3, ip
	beq _020E0B58
	rsb r2, ip, #0x20
	movs r2, r1, lsl r2
	mov r1, r1, lsr ip
	orrne r1, r1, #1
_020E0B58:
	adds r0, r0, r1
	blo _020E0B78
	and r1, r0, #1
	orr r0, r1, r0, rrx
	add r3, r3, #1
	and r2, r3, #0xff
	cmp r2, #0xff
	beq _020E0CE8
_020E0B78:
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
_020E0BA0:
	cmp r3, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	ands r3, r3, #0xff
	beq _020E0C04
	movs r0, r0, lsl #1
	bne _020E0D14
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands ip, ip, #0xff
	beq _020E0D08
	cmp ip, #0xff
	blt _020E0D08
	cmp r1, #0
	beq _020E0D08
	b _020E0D14
_020E0BE0:
	cmp r3, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	and r3, r3, #0xff
	ands ip, ip, #0xff
	beq _020E0C60
_020E0BF8:
	movs r1, r1, lsl #1
	bne _020E0D14
	b _020E0D08
_020E0C04:
	movs r0, r0, lsl #1
	beq _020E0C3C
	mov r3, #1
	mov r0, r0, lsr #1
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #8
	ands ip, ip, #0xff
	beq _020E0C60
	cmp ip, #0xff
	beq _020E0BF8
	orr r1, r1, #0x80000000
	orr r3, r3, r2, lsr #23
	orr ip, ip, r2, lsr #23
	b _020E0B40
_020E0C3C:
	mov r3, r1, lsr #0x17
	mov r0, r1, lsl #9
	ands r3, r3, #0xff
	beq _020E0CC8
	cmp r3, #0xff
	blt _020E0CC8
	cmp r0, #0
	beq _020E0D08
	b _020E0D00
_020E0C60:
	movs r1, r1, lsl #1
	beq _020E0CD0
	mov r1, r1, lsr #1
	mov ip, #1
	orr r3, r3, r2, lsr #23
	orr ip, ip, r2, lsr #23
	cmp r0, #0
	bmi _020E0B40
	adds r0, r0, r1
	blo _020E0C94
	and r1, r0, #1
	orr r0, r1, r0, rrx
	add ip, ip, #1
_020E0C94:
	cmp r0, #0
	subge ip, ip, #1
	ands r1, r0, #0xff
	add r0, r0, r0
	mov r0, r0, lsr #9
	orr r0, r0, ip, lsl #23
	bxeq lr
	tst r1, #0x80
	bxeq lr
	ands r1, r1, #0x7f
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E0CC8:
	mov r0, r1
	bx lr
_020E0CD0:
	cmp r0, #0
	subges r3, r3, #1
	add r0, r0, r0
	orr r0, r2, r0, lsr #9
	orr r0, r0, r3, lsl #23
	bx lr
_020E0CE8:
	cmp r3, #0x100
	movge r2, #-0x80000000
	movlt r2, #0
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E0D00:
	mvn r0, #0x80000000
	bx lr
_020E0D08:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E0D14:
	mvn r0, #0x80000000
	bx lr
_020E0D1C:
	.byte 0x02, 0x01, 0xE0, 0xE3
	.byte 0x1E, 0xFF, 0x2F, 0xE1
	arm_func_end __fadd_start