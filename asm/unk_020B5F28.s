	.include "macros/function.inc"
	.include "include/unk_020B5F28.inc"

	

	.text


	arm_func_start sub_020B5F28
sub_020B5F28: ; 0x020B5F28
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	tst r0, #4
	bne _020B5F6C
	tst r0, #2
	bne _020B5F58
	add r1, r4, #0x28
	mov r0, #0x19
	mov r2, #0xc
	bl sub_020B275C
	b _020B5F84
_020B5F58:
	add r1, r4, #0x4c
	mov r0, #0x1c
	mov r2, #3
	bl sub_020B275C
	b _020B5F84
_020B5F6C:
	tst r0, #2
	bne _020B5F84
	add r1, r4, #0x28
	mov r0, #0x1a
	mov r2, #9
	bl sub_020B275C
_020B5F84:
	ldr r0, [r4, #0]
	tst r0, #1
	ldmneia sp!, {r4, pc}
	add r1, r4, #4
	mov r0, #0x1b
	mov r2, #3
	bl sub_020B275C
	ldmia sp!, {r4, pc}
	arm_func_end sub_020B5F28

	arm_func_start sub_020B5FA4
sub_020B5FA4: ; 0x020B5FA4
	tst r3, #4
	beq _020B5FBC
	ldr r1, [r0, #0]
	orr r1, r1, #1
	str r1, [r0, #0]
	b _020B5FD4
_020B5FBC:
	ldr r2, [r1, #0]
	str r2, [r0, #4]
	ldr r2, [r1, #4]
	str r2, [r0, #8]
	ldr r1, [r1, #8]
	str r1, [r0, #0xc]
_020B5FD4:
	ldr r1, [r0, #0]
	orr r1, r1, #0x18
	str r1, [r0, #0]
	bx lr
	arm_func_end sub_020B5FA4