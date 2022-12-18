	.include "macros/function.inc"
	.include "include/ov12_022384F0.inc"

	

	.text


	thumb_func_start ov12_022384F0
ov12_022384F0: ; 0x022384F0
	ldr r2, _02238590 ; =0x0000013B
	cmp r0, r2
	bhi _0223851E
	bhs _0223857E
	cmp r0, #0x7d
	bhi _0223850C
	bhs _0223857E
	cmp r0, #0x63
	bhi _02238506
	beq _0223857E
	b _0223858A
_02238506:
	cmp r0, #0x78
	beq _0223857E
	b _0223858A
_0223850C:
	cmp r0, #0xc9
	bhi _02238518
	bhs _0223857E
	cmp r0, #0x9f
	beq _0223857E
	b _0223858A
_02238518:
	cmp r0, #0xd7
	beq _0223857E
	b _0223858A
_0223851E:
	add r3, r2, #0
	add r3, #0x5c
	cmp r0, r3
	bhi _0223855E
	add r1, r2, #0
	add r1, #0x5b
	cmp r0, r1
	blo _0223853E
	add r1, r2, #0
	add r1, #0x5b
	cmp r0, r1
	beq _0223857E
	add r2, #0x5c
	cmp r0, r2
	beq _0223857E
	b _0223858A
_0223853E:
	add r1, r2, #0
	add r1, #0x2c
	cmp r0, r1
	bhi _02238556
	add r1, r2, #0
	add r1, #0x2c
	cmp r0, r1
	bhs _0223857E
	add r2, #0x14
	cmp r0, r2
	beq _0223857E
	b _0223858A
_02238556:
	add r2, #0x4a
	cmp r0, r2
	beq _0223857E
	b _0223858A
_0223855E:
	add r3, r2, #0
	add r3, #0x99
	cmp r0, r3
	bhi _02238576
	add r1, r2, #0
	add r1, #0x99
	cmp r0, r1
	bhs _0223857E
	add r2, #0x98
	cmp r0, r2
	beq _0223857E
	b _0223858A
_02238576:
	add r2, #0xb1
	cmp r0, r2
	beq _02238582
	b _0223858A
_0223857E:
	mov r0, #0
	bx lr
_02238582:
	cmp r1, #1
	bne _0223858A
	mov r0, #0
	bx lr
_0223858A:
	mov r0, #1
	bx lr
	nop
_02238590: .word 0x0000013B
	thumb_func_end ov12_022384F0