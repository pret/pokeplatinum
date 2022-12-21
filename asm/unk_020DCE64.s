	.include "macros/function.inc"
	.include "include/unk_020DCE64.inc"

	

	.text


	arm_func_start sub_020DCE64
sub_020DCE64: ; 0x020DCE64
	mvn r2, #0
_020DCE68:
	ldrh r1, [r0], #2
	add r2, r2, #1
	cmp r1, #0
	bne _020DCE68
	mov r0, r2
	bx lr
	arm_func_end sub_020DCE64

	arm_func_start sub_020DCE80
sub_020DCE80: ; 0x020DCE80
	mov r3, r0
_020DCE84:
	ldrh r2, [r1], #2
	mov ip, r3
	strh r2, [r3], #2
	ldrh r2, [ip]
	cmp r2, #0
	bne _020DCE84
	bx lr
	arm_func_end sub_020DCE80

	arm_func_start sub_020DCEA0
sub_020DCEA0: ; 0x020DCEA0
	ldrh r2, [r0], #2
	cmp r2, #0
	beq _020DCEC4
_020DCEAC:
	cmp r2, r1
	subeq r0, r0, #2
	bxeq lr
	ldrh r2, [r0], #2
	cmp r2, #0
	bne _020DCEAC
_020DCEC4:
	cmp r1, #0
	movne r0, #0
	subeq r0, r0, #2
	bx lr
	arm_func_end sub_020DCEA0