	.include "macros/function.inc"
	.include "include/_d_sub.inc"

	

	.text


	arm_func_start _drsb
_drsb: ; 0x020E0734
	eor r1, r1, r3
	eor r3, r1, r3
	eor r1, r1, r3
	eor r0, r0, r2
	eor r2, r0, r2
	eor r0, r0, r2
	arm_func_end _drsb

	arm_func_start _dsub
_dsub: ; 0x020E074C
	stmfd sp!, {r4, lr}
	eors ip, r1, r3
	eormi r3, r3, #0x80000000
	bmi __dadd_start
	arm_func_end _dsub

	arm_func_start __dsub_start
__dsub_start: ; 0x020E075C
	subs ip, r0, r2
	sbcs lr, r1, r3
	bhs _020E077C
	eor lr, lr, #0x80000000
	adds r2, r2, ip
	adc r3, r3, lr
	subs r0, r0, ip
	sbc r1, r1, lr
_020E077C:
	mov lr, #-0x80000000
	mov ip, r1, lsr #0x14
	orr r1, lr, r1, lsl #11
	orr r1, r1, r0, lsr #21
	mov r0, r0, lsl #0xb
	movs r4, ip, lsl #0x15
	cmnne r4, #0x200000
	beq _020E0980
	mov r4, r3, lsr #0x14
	orr r3, lr, r3, lsl #11
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs lr, r4, lsl #0x15
	beq _020E09C8
_020E07B4:
	subs r4, ip, r4
	beq _020E085C
	cmp r4, #0x20
	ble _020E07F0
	cmp r4, #0x38
	movge r4, #0x3f
	sub r4, r4, #0x20
	rsb lr, r4, #0x20
	orrs lr, r2, r3, lsl lr
	mov r2, r3, lsr r4
	orrne r2, r2, #1
	subs r0, r0, r2
	sbcs r1, r1, #0
	bmi _020E0818
	b _020E0908
_020E07F0:
	rsb lr, r4, #0x20
	movs lr, r2, lsl lr
	rsb lr, r4, #0x20
	mov r2, r2, lsr r4
	orr r2, r2, r3, lsl lr
	mov r3, r3, lsr r4
	orrne r2, r2, #1
	subs r0, r0, r2
	sbcs r1, r1, r3
	bpl _020E0908
_020E0818:
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
_020E085C:
	subs r0, r0, r2
	sbc r1, r1, r3
	orrs lr, r1, r0
	beq _020E0AEC
	mov lr, ip, lsl #0x14
	and lr, lr, #0x80000000
	bic ip, ip, #0x800
	cmp r1, #0
	bmi _020E08E4
	bne _020E0894
	sub ip, ip, #0x20
	movs r1, r0
	mov r0, #0
	bmi _020E08B0
_020E0894:
	clz r4, r1
	movs r1, r1, lsl r4
	rsb r4, r4, #0x20
	orr r1, r1, r0, lsr r4
	rsb r4, r4, #0x20
	mov r0, r0, lsl r4
	sub ip, ip, r4
_020E08B0:
	cmp ip, #0
	bgt _020E08EC
	rsb ip, ip, #0xc
	cmp ip, #0x20
	movge r0, r1
	movge r1, #0
	subge ip, ip, #0x20
	rsb r4, ip, #0x20
	mov r0, r0, lsr ip
	orr r0, r0, r1, lsl r4
	orr r1, lr, r1, lsr ip
	ldmia sp!, {r4, lr}
	bx lr
_020E08E4:
	cmp r1, #0
	subges ip, ip, #1
_020E08EC:
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmia sp!, {r4, lr}
	bx lr
_020E0908:
	mov lr, ip, lsl #0x14
	and lr, lr, #0x80000000
	bic ip, ip, #0x800
	cmp r1, #0
	bne _020E092C
	sub ip, ip, #0x20
	movs r1, r0
	mov r0, #0
	bmi _020E0948
_020E092C:
	clz r4, r1
	movs r1, r1, lsl r4
	rsb r4, r4, #0x20
	orr r1, r1, r0, lsr r4
	rsb r4, r4, #0x20
	mov r0, r0, lsl r4
	sub ip, ip, r4
_020E0948:
	cmp ip, #0
	orrgt ip, ip, lr, lsr #20
	bgt _020E0818
	rsb ip, ip, #0xc
	cmp ip, #0x20
	movge r0, r1
	movge r1, #0
	subge ip, ip, #0x20
	rsb r4, ip, #0x20
	mov r0, r0, lsr ip
	orr r0, r0, r1, lsl r4
	orr r1, lr, r1, lsr ip
	ldmia sp!, {r4, lr}
	bx lr
_020E0980:
	cmp ip, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	bics ip, ip, #0x800
	beq _020E09EC
	orrs r4, r0, r1, lsl #1
	bne _020E0AC8
	mov r4, r3, lsr #0x14
	mov r3, r3, lsl #0xb
	orr r3, r3, r2, lsr #21
	mov r2, r2, lsl #0xb
	movs r4, r4, lsl #0x15
	beq _020E0AB4
	cmn r4, #0x200000
	bne _020E0AB4
	orrs r4, r2, r3, lsl #1
	beq _020E0ADC
	b _020E0AC8
_020E09C8:
	cmp r4, #0x800
	movge lr, #-0x80000000
	movlt lr, #0
	bic ip, ip, #0x800
	bics r4, r4, #0x800
	beq _020E0A64
	orrs r4, r2, r3, lsl #1
	bne _020E0AC8
	b _020E0AB4
_020E09EC:
	orrs r4, r0, r1, lsl #1
	beq _020E0A2C
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
	beq _020E09C8
	orr r3, r3, #0x80000000
	orr ip, ip, lr, lsr #20
	b _020E07B4
_020E0A2C:
	mov ip, r3, lsr #0x14
	mov r1, r3, lsl #0xb
	orr r1, r1, r2, lsr #21
	mov r0, r2, lsl #0xb
	movs r4, ip, lsl #0x15
	beq _020E0A58
	cmn r4, #0x200000
	bne _020E0A80
	orrs r4, r0, r1, lsl #1
	bne _020E0ACC
	b _020E0AB4
_020E0A58:
	orrs r4, r0, r1, lsl #1
	beq _020E0AEC
	b _020E0A80
_020E0A64:
	orrs r4, r2, r3, lsl #1
	beq _020E0A90
	mov r4, #1
	bic r3, r3, #0x80000000
	orr ip, ip, lr, lsr #20
	orr r4, r4, lr, lsr #20
	b _020E07B4
_020E0A80:
	mov r1, r3
	mov r0, r2
	ldmia sp!, {r4, lr}
	bx lr
_020E0A90:
	cmp r1, #0
	subges ip, ip, #1
	mov r0, r0, lsr #0xb
	orr r0, r0, r1, lsl #21
	add r1, r1, r1
	orr r1, lr, r1, lsr #12
	orr r1, r1, ip, lsl #20
	ldmia sp!, {r4, lr}
	bx lr
_020E0AB4:
	ldr r1, _020E0AFC ; =0x7FF00000
	orr r1, lr, r1
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
_020E0AC8:
	mov r1, r3
_020E0ACC:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmia sp!, {r4, lr}
	bx lr
_020E0ADC:
	mvn r0, #0
	bic r1, r0, #0x80000000
	ldmia sp!, {r4, lr}
	bx lr
_020E0AEC:
	mov r1, #0
	mov r0, #0
	ldmia sp!, {r4, lr}
	bx lr
	; .align 2, 0
_020E0AFC:
	.word 0x7FF00000
	arm_func_end __dsub_start