	.include "macros/function.inc"
	.include "include/_d_add.inc"

	

	.text

	arm_func_start _dadd
	arm_func_start _d_add
_dadd:
_d_add: ; 0x020DFC6C
	stmfd sp!, {r4, lr}
	eors ip, r1, r3
	eormi r3, r3, #0x80000000
	bmi __dsub_start
	arm_func_end _d_add

	arm_func_start __dadd_start
__dadd_start: ; 0x020DFC7C
	subs ip, r0, r2
	sbcs lr, r1, r3
	bhs _020DFC98
	adds r2, r2, ip
	adc r3, r3, lr
	subs r0, r0, ip
	sbc r1, r1, lr
_020DFC98:
	mov lr, #-0x80000000
	mov ip, r1, lsr #0x14
	orr r1, lr, r1, lsl #11
	orr r1, r1, r0, lsr #21
	mov r0, r0, lsl #0xb
	movs r4, ip, lsl #0x15
	cmnne r4, #0x200000
	beq _020DFD94
	mov r4, r3, lsr #0x14
	orr r3, lr, r3, lsl #11
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs lr, r4, lsl #0x15
	beq _020DFDDC
_020DFCD0:
	subs r4, ip, r4
	beq _020DFD28
	cmp r4, #0x20
	ble _020DFD0C
	cmp r4, #0x38
	movge r4, #0x3f
	sub r4, r4, #0x20
	rsb lr, r4, #0x20
	orrs lr, r2, r3, lsl lr
	mov r2, r3, lsr r4
	orrne r2, r2, #1
	adds r0, r0, r2
	adcs r1, r1, #0
	blo _020DFD50
	b _020DFD34
_020DFD0C:
	rsb lr, r4, #0x20
	movs lr, r2, lsl lr
	rsb lr, r4, #0x20
	mov r2, r2, lsr r4
	orr r2, r2, r3, lsl lr
	mov r3, r3, lsr r4
	orrne r2, r2, #1
_020DFD28:
	adds r0, r0, r2
	adcs r1, r1, r3
	blo _020DFD50
_020DFD34:
	add ip, ip, #1
	and r4, r0, #1
	movs r1, r1, rrx
	orr r0, r4, r0, rrx
	mov lr, ip, lsl #0x15
	cmn lr, #0x200000
	beq _020DFF60
_020DFD50:
	movs r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	mov r1, r1, lsr #0xc
	orr r1, r1, ip, lsl #20
	tst r2, #-0x80000000
	ldmeqia sp!, {r4, lr}
	bxeq lr
	movs r2, r2, lsl #1
	andeqs r2, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
	adds r0, r0, #1
	adc r1, r1, #0
	ldmia sp!, {r4, lr}
	bx lr
_020DFD94:
	cmp ip, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	bics ip, ip, #0x800
	beq _020DFE00
	orrs r4, r0, r1, lsl #1
	bne _020DFF3C
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r4, r4, lsl #0x15
	beq _020DFF28
	cmn r4, #0x200000
	bne _020DFF28
	orrs r4, r2, r3, lsl #1
	beq _020DFF28
	b _020DFF3C
_020DFDDC:
	cmp r4, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	bic ip, ip, #0x800
	bics r4, r4, #0x800
	beq _020DFE6C
	orrs r4, r2, r3, lsl #1
	bne _020DFF3C
	b _020DFF28
_020DFE00:
	orrs r4, r0, r1, lsl #1
	beq _020DFE40
	mov ip, #1
	bic r1, r1, #0x80000000
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r4, r4, lsl #0x15
	cmnne r4, #0x200000
	mov r4, r4, lsr #0x15
	orr r4, r4, lr, lsr #20
	beq _020DFDDC
	orr r3, r3, #0x80000000
	orr ip, ip, lr, lsr #20
	b _020DFCD0
_020DFE40:
	mov ip, r3, lsr #0x14
	mov r1, r3, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r0, r2, lsl #0xb
	movs r4, ip, lsl #0x15
	beq _020DFEF4
	cmn r4, #0x200000
	bne _020DFEF4
	orrs r4, r0, r1, lsl #1
	beq _020DFF28
	b _020DFF40
_020DFE6C:
	orrs r4, r2, r3, lsl #1
	beq _020DFF04
	mov r4, #1
	bic r3, r3, #0x80000000
	cmp r1, #0
	bpl _020DFE90
	orr ip, ip, lr, lsr #20
	orr r4, r4, lr, lsr #20
	b _020DFCD0
_020DFE90:
	adds r0, r0, r2
	adcs r1, r1, r3
	blo _020DFEB0
	add ip, ip, #1
	and r4, r0, #1
	movs r1, r1, rrx
	mov r0, r0, rrx
	orr r0, r0, r4
_020DFEB0:
	cmp r1, #0
	subges ip, ip, #1
	movs r2, r0, lsl #0x15
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmeqia sp!, {r4, lr}
	bxeq lr
	tst r2, #-0x80000000
	ldmeqia sp!, {r4, lr}
	bxeq lr
	movs r2, r2, lsl #1
	andeqs r2, r0, #1
	ldmeqia sp!, {r4, lr}
	bxeq lr
_020DFEF4:
	mov r1, r3
	mov r0, r2
	ldmia sp!, {r4, lr}
	bx lr
_020DFF04:
	cmp r1, #0
	subges ip, ip, #1
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmia sp!, {r4, lr}
	bx lr
_020DFF28:
	ldr r1, _020DFF80 ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
_020DFF3C:
	mov r1, r3
_020DFF40:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmia sp!, {r4, lr}
	bx lr
_020DFF50:
	.byte 0x00, 0x00, 0xE0, 0xE3, 0x02, 0x11, 0xC0, 0xE3, 0x10, 0x40, 0xBD, 0xE8, 0x1E, 0xFF, 0x2F, 0xE1
_020DFF60:
	cmp ip, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	ldr r1, _020DFF80 ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020DFF80:
	.word 0x7FF00000
	arm_func_end __dadd_start