	.include "macros/function.inc"
	.include "include/unk_020C2BB0.inc"

	

	.text


	arm_func_start sub_020C2BB0
sub_020C2BB0: ; 0x020C2BB0
	mov r0, #0
	mcr p15, 0, r0, c7, c6, 0
	bx lr
	arm_func_end sub_020C2BB0

	arm_func_start sub_020C2BBC
sub_020C2BBC: ; 0x020C2BBC
	mov r1, #0
_020C2BC0:
	mov r0, #0
_020C2BC4:
	orr r2, r1, r0
	mcr p15, 0, r2, c7, c10, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _020C2BC4
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _020C2BC0
	bx lr
	arm_func_end sub_020C2BBC

	arm_func_start sub_020C2BE8
sub_020C2BE8: ; 0x020C2BE8
	mov ip, #0
	mov r1, #0
_020C2BF0:
	mov r0, #0
_020C2BF4:
	orr r2, r1, r0
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r2, c7, c14, 2
	add r0, r0, #0x20
	cmp r0, #0x400
	blt _020C2BF4
	add r1, r1, #0x40000000
	cmp r1, #0
	bne _020C2BF0
	bx lr
	arm_func_end sub_020C2BE8

	arm_func_start sub_020C2C1C
sub_020C2C1C: ; 0x020C2C1C
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C24:
	mcr p15, 0, r0, c7, c6, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C24
	bx lr
	arm_func_end sub_020C2C1C

	arm_func_start sub_020C2C38
sub_020C2C38: ; 0x020C2C38
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C40:
	mcr p15, 0, r0, c7, c10, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C40
	bx lr
	arm_func_end sub_020C2C38

	arm_func_start sub_020C2C54
sub_020C2C54: ; 0x020C2C54
	mov ip, #0
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C60:
	mcr p15, 0, ip, c7, c10, 4
	mcr p15, 0, r0, c7, c14, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C60
	bx lr
	arm_func_end sub_020C2C54

	arm_func_start sub_020C2C78
sub_020C2C78: ; 0x020C2C78
	mov r0, #0
	mcr p15, 0, r0, c7, c10, 4
	bx lr
	arm_func_end sub_020C2C78

	arm_func_start sub_020C2C84
sub_020C2C84: ; 0x020C2C84
	mov r0, #0
	mcr p15, 0, r0, c7, c5, 0
	bx lr
	arm_func_end sub_020C2C84

	arm_func_start sub_020C2C90
sub_020C2C90: ; 0x020C2C90
	add r1, r1, r0
	bic r0, r0, #0x1f
_020C2C98:
	mcr p15, 0, r0, c7, c5, 1
	add r0, r0, #0x20
	cmp r0, r1
	blt _020C2C98
	bx lr
	arm_func_end sub_020C2C90