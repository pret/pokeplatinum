	.include "macros/function.inc"
	.include "include/unk_020B7AC4.inc"

	

	.text


	arm_func_start sub_020B7AC4
sub_020B7AC4: ; 0x020B7AC4
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #1
	ldmeqia sp!, {r4, pc}
	ldr r1, _020B7B08 ; =0x021CAE00
	ldr r1, [r1, #8]
	tst r4, r1
	movne r0, #0
	ldmneia sp!, {r4, pc}
	mov r1, #0
	bl sub_020C5310
	ldr r1, _020B7B08 ; =0x021CAE00
	mov r0, #1
	ldr r2, [r1, #8]
	orr r2, r2, r4
	str r2, [r1, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B7B08: .word 0x021CAE00
	arm_func_end sub_020B7AC4

	arm_func_start sub_020B7B0C
sub_020B7B0C: ; 0x020B7B0C
	stmfd sp!, {r4, lr}
	movs r4, r0
	ldmeqia sp!, {r4, pc}
	mov r1, #0
	bl sub_020C5330
	ldr r0, _020B7B38 ; =0x021CAE00
	mvn r1, r4
	ldr r2, [r0, #8]
	and r1, r2, r1
	str r1, [r0, #8]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020B7B38: .word 0x021CAE00
	arm_func_end sub_020B7B0C

	arm_func_start sub_020B7B3C
sub_020B7B3C: ; 0x020B7B3C
	ldr r1, _020B7B5C ; =0x021CAE00
	ldr r2, [r1, #0]
	tst r0, r2
	movne r0, #0
	orreq r0, r2, r0
	streq r0, [r1]
	moveq r0, #1
	bx lr
	; .align 2, 0
_020B7B5C: .word 0x021CAE00
	arm_func_end sub_020B7B3C

	arm_func_start sub_020B7B60
sub_020B7B60: ; 0x020B7B60
	ldr r1, _020B7B78 ; =0x021CAE00
	mvn r0, r0
	ldr r2, [r1, #0]
	and r0, r2, r0
	str r0, [r1, #0]
	bx lr
	; .align 2, 0
_020B7B78: .word 0x021CAE00
	arm_func_end sub_020B7B60

	arm_func_start sub_020B7B7C
sub_020B7B7C: ; 0x020B7B7C
	ldr r0, _020B7BC0 ; =0x021CAE00
	mov r3, #1
	ldr r1, [r0, #4]
	mov r0, #0
_020B7B8C:
	tst r1, r3
	bne _020B7BA8
	ldr r1, _020B7BC0 ; =0x021CAE00
	ldr r2, [r1, #4]
	orr r2, r2, r3
	str r2, [r1, #4]
	bx lr
_020B7BA8:
	add r0, r0, #1
	cmp r0, #8
	mov r3, r3, lsl #1
	blt _020B7B8C
	mvn r0, #0
	bx lr
	; .align 2, 0
_020B7BC0: .word 0x021CAE00
	arm_func_end sub_020B7B7C

	arm_func_start sub_020B7BC4
sub_020B7BC4: ; 0x020B7BC4
	ldr r1, _020B7BE0 ; =0x021CAE00
	mov r2, #1
	mvn r0, r2, lsl r0
	ldr r2, [r1, #4]
	and r0, r2, r0
	str r0, [r1, #4]
	bx lr
	; .align 2, 0
_020B7BE0: .word 0x021CAE00
	arm_func_end sub_020B7BC4

	arm_func_start sub_020B7BE4
sub_020B7BE4: ; 0x020B7BE4
	ldr r0, _020B7BFC ; =0x021CAE00
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0]
	str r1, [r0, #4]
	bx lr
	; .align 2, 0
_020B7BFC: .word 0x021CAE00
	arm_func_end sub_020B7BE4

	.bss


	.global Unk_021CAE00
Unk_021CAE00: ; 0x021CAE00
	.space 0x4

	.global Unk_021CAE04
Unk_021CAE04: ; 0x021CAE04
	.space 0x4

	.global Unk_021CAE08
Unk_021CAE08: ; 0x021CAE08
	.space 0x4

