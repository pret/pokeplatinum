	.include "macros/function.inc"
	.include "include/unk_020DAE94.inc"

	

	.text


	arm_func_start sub_020DAE94
sub_020DAE94: ; 0x020DAE94
	ldr ip, _020DAEA0 ; =sub_020D50B8
	mov r2, r2, lsl #1
	bx ip
	; .align 2, 0
_020DAEA0: .word sub_020D50B8
	arm_func_end sub_020DAE94

	arm_func_start sub_020DAEA4
sub_020DAEA4: ; 0x020DAEA4
	cmp r2, #0
	beq _020DAEC4
_020DAEAC:
	ldrh r3, [r0]
	cmp r3, r1
	bxeq lr
	add r0, r0, #2
	subs r2, r2, #1
	bne _020DAEAC
_020DAEC4:
	mov r0, #0
	bx lr
	arm_func_end sub_020DAEA4