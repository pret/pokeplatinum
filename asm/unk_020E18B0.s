	.include "macros/function.inc"
	.include "include/unk_020E18B0.inc"

	

	.text


	arm_func_start sub_020E18B0
sub_020E18B0: ; 0x020E18B0
	eor r2, r0, r1
	and r2, r2, #0x80000000
	mov ip, #0xff
	ands r3, ip, r0, lsr #23
	mov r0, r0, lsl #8
	cmpne r3, #0xff
	beq _020E192C
	orr r0, r0, #0x80000000
	ands ip, ip, r1, lsr #23
	mov r1, r1, lsl #8
	cmpne ip, #0xff
	beq _020E196C
	orr r1, r1, #0x80000000
_020E18E4:
	add ip, r3, ip
	umull r1, r3, r0, r1
	movs r0, r3
	addpl r0, r0, r0
	subpl ip, ip, #1
	subs ip, ip, #0x7f
	bmi _020E19F8
	cmp ip, #0xfe
	bge _020E1A64
	ands r3, r0, #0xff
	orr r0, r2, r0, lsr #8
	add r0, r0, ip, lsl #23
	tst r3, #0x80
	bxeq lr
	orrs r1, r1, r3, lsl #25
	andeqs r3, r0, #1
	addne r0, r0, #1
	bx lr
_020E192C:
	cmp r3, #0
	beq _020E1980
	movs r0, r0, lsl #1
	bne sub_020E1A54
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands ip, ip, #0xff
	beq _020E1960
	cmp ip, #0xff
	blt sub_020E1A48
	cmp r1, #0
	beq sub_020E1A48
	b sub_020E1A54
_020E1960:
	cmp r1, #0
	beq sub_020E1A5C
	b sub_020E1A48
_020E196C:
	cmp ip, #0
	beq _020E19DC
_020E1974:
	movs r1, r1, lsl #1
	bne sub_020E1A54
	b sub_020E1A48
_020E1980:
	movs r0, r0, lsl #1
	beq _020E19B8
	mov r0, r0, lsr #1
	clz r3, r0
	movs r0, r0, lsl r3
	rsb r3, r3, #1
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #8
	ands ip, ip, #0xff
	beq _020E19DC
	cmp ip, #0xff
	beq _020E1974
	orr r1, r1, #0x80000000
	b _020E18E4
_020E19B8:
	mov ip, r1, lsr #0x17
	mov r1, r1, lsl #9
	ands ip, ip, #0xff
	beq _020E1A88
	cmp ip, #0xff
	blt _020E1A88
	cmp r1, #0
	beq sub_020E1A5C
	b sub_020E1A54
_020E19DC:
	movs r1, r1, lsl #1
	beq _020E1A88
	mov r1, r1, lsr #1
	clz ip, r1
	movs r1, r1, lsl ip
	rsb ip, ip, #1
	b _020E18E4
_020E19F8:
	cmn ip, #0x18
	beq _020E1A40
	bmi _020E1A80
	cmp r1, #0
	orrne r0, r0, #1
	mov r3, r0
	mov r0, r0, lsr #8
	rsb ip, ip, #0
	orr r0, r2, r0, lsr ip
	rsb ip, ip, #0x18
	movs r1, r3, lsl ip
	bxeq lr
	tst r1, #-0x80000000
	bxeq lr
	movs r1, r1, lsl #1
	andeqs r1, r0, #1
	addne r0, r0, #1
	bx lr
_020E1A40:
	mov r0, r0, lsl #1
	b _020E1A70
	arm_func_end sub_020E18B0

	arm_func_start sub_020E1A48
sub_020E1A48: ; 0x020E1A48
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
	arm_func_end sub_020E1A48

	arm_func_start sub_020E1A54
sub_020E1A54: ; 0x020E1A54
	mvn r0, #0x80000000
	bx lr
	arm_func_end sub_020E1A54

	arm_func_start sub_020E1A5C
sub_020E1A5C: ; 0x020E1A5C
	mvn r0, #0x80000000
	bx lr
_020E1A64:
	mov r0, #-0x1000000
	orr r0, r2, r0, lsr #1
	bx lr
_020E1A70:
	movs r1, r0
	mov r0, r2
	addne r0, r0, #1
	bx lr
_020E1A80:
	mov r0, r2
	bx lr
_020E1A88:
	mov r0, r2
	bx lr
	arm_func_end sub_020E1A5C