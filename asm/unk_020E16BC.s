	.include "macros/function.inc"
	.include "include/unk_020E16BC.inc"

	

	.text


	arm_func_start sub_020E16BC
sub_020E16BC: ; 0x020E16BC
	and r2, r0, #0x80000000
	mov ip, r0, lsr #0x17
	mov r3, r0, lsl #9
	ands ip, ip, #0xff
	beq _020E16EC
	cmp ip, #0xff
	beq _020E1718
_020E16D8:
	add ip, ip, #0x380
	mov r0, r3, lsl #0x14
	orr r1, r2, r3, lsr #12
	orr r1, r1, ip, lsl #20
	bx lr
_020E16EC:
	cmp r3, #0
	bne _020E1700
	mov r1, r2
	mov r0, #0
	bx lr
_020E1700:
	mov r3, r3, lsr #1
	clz ip, r3
	movs r3, r3, lsl ip
	rsb ip, ip, #1
	add r3, r3, r3
	b _020E16D8
_020E1718:
	cmp r3, #0
	bhi _020E1730
	ldr r1, _020E173C ; =0x7FF00000
	orr r1, r1, r2
	mov r0, #0
	bx lr
_020E1730:
	mvn r0, #0
	bic r1, r0, #0x80000000
	bx lr
	; .align 2, 0
_020E173C: .word 0x7FF00000
	arm_func_end sub_020E16BC