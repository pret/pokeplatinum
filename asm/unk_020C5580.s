	.include "macros/function.inc"
	.include "include/unk_020C5580.inc"

	

	.text


	arm_func_start sub_020C5580
sub_020C5580: ; 0x020C5580
	stmfd sp!, {r3, lr}
	ldr r1, _020C55B0 ; =0x021CD020
	ldr r0, [r1, #0]
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _020C55B4 ; =0x021CD024
	mov r2, #1
	str r2, [r1, #0]
	bl sub_020C29C0
	bl sub_020C55E0
	bl sub_020C5CF0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C55B0: .word 0x021CD020
_020C55B4: .word 0x021CD024
	arm_func_end sub_020C5580

	arm_func_start sub_020C55B8
sub_020C55B8: ; 0x020C55B8
	ldr ip, _020C55C4 ; =sub_020C29D8
	ldr r0, _020C55C8 ; =0x021CD024
	bx ip
	; .align 2, 0
_020C55C4: .word sub_020C29D8
_020C55C8: .word 0x021CD024
	arm_func_end sub_020C55B8

	arm_func_start sub_020C55CC
sub_020C55CC: ; 0x020C55CC
	ldr ip, _020C55D8 ; =sub_020C2A5C
	ldr r0, _020C55DC ; =0x021CD024
	bx ip
	; .align 2, 0
_020C55D8: .word sub_020C2A5C
_020C55DC: .word 0x021CD024
	arm_func_end sub_020C55CC

	.bss


	.global Unk_021CD020
Unk_021CD020: ; 0x021CD020
	.space 0x4

	.global Unk_021CD024
Unk_021CD024: ; 0x021CD024
	.space 0x1C

