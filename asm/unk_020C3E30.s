	.include "macros/function.inc"
	.include "include/unk_020C3E30.inc"

	

	.text


	arm_func_start sub_020C3E30
sub_020C3E30: ; 0x020C3E30
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020C3E7C ; =0x021CCFE4
	ldrh r1, [r0, #2]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0, #2]
	bl sub_020C6350
	mov r5, #0xc
	mov r4, #1
_020C3E58:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020C3E58
	ldr r1, _020C3E80 ; =sub_020C3E84
	mov r0, #0xc
	bl sub_020C645C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020C3E7C: .word 0x021CCFE4
_020C3E80: .word sub_020C3E84
	arm_func_end sub_020C3E30

	arm_func_start sub_020C3E84
sub_020C3E84: ; 0x020C3E84
	stmfd sp!, {r3, lr}
	and r0, r1, #0x7f00
	mov r0, r0, lsl #8
	mov r0, r0, lsr #0x10
	cmp r0, #0x10
	bne _020C3EAC
	ldr r0, _020C3EB4 ; =0x021CCFE4
	mov r1, #1
	strh r1, [r0]
	ldmia sp!, {r3, pc}
_020C3EAC:
	bl sub_020C42A8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020C3EB4: .word 0x021CCFE4
	arm_func_end sub_020C3E84

	arm_func_start sub_020C3EB8
sub_020C3EB8: ; 0x020C3EB8
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0, lsl #8
	mov r5, #0xc
	mov r4, #0
_020C3EC8:
	mov r0, r5
	mov r1, r6
	mov r2, r4
	bl sub_020C64CC
	cmp r0, #0
	bne _020C3EC8
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end sub_020C3EB8

	arm_func_start sub_020C3EE4
sub_020C3EE4: ; 0x020C3EE4
	stmfd sp!, {r4, lr}
	ldr r1, _020C3F74 ; =0x027FFC40
	mov r4, r0
	ldrh r0, [r1]
	cmp r0, #2
	moveq r0, #1
	movne r0, #0
	cmp r0, #0
	beq _020C3F0C
	bl sub_020C42A8
_020C3F0C:
	bl sub_020C1A00
	mov r0, r0, lsl #0x10
	mov r0, r0, lsr #0x10
	bl sub_020CC854
	ldr r0, _020C3F78 ; =0x00000000
	bl sub_020C45F4
	ldr r0, _020C3F7C ; =0x00000001
	bl sub_020C45F4
	ldr r0, _020C3F80 ; =0x00000002
	bl sub_020C45F4
	ldr r0, _020C3F84 ; =0x00000003
	bl sub_020C45F4
	ldr r0, _020C3F88 ; =0x00040000
	bl sub_020C15F0
	ldr r0, _020C3F8C ; =0xFFFFFFFF
	bl sub_020C167C
	ldr r1, _020C3F90 ; =0x027FFC20
	ldr r0, _020C3F94 ; =0x00000010
	str r4, [r1, #0]
	bl sub_020C3EB8
	ldr r0, _020C3F98 ; =0x027E3F80
	ldr r1, _020C3F9C ; =0x00000800
	sub r0, r0, r1
	mov sp, r0
	bl sub_01FF81E4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020C3F74: .word 0x027FFC40
_020C3F78: .word 0x00000000
_020C3F7C: .word 0x00000001
_020C3F80: .word 0x00000002
_020C3F84: .word 0x00000003
_020C3F88: .word 0x00040000
_020C3F8C: .word 0xFFFFFFFF
_020C3F90: .word 0x027FFC20
_020C3F94: .word 0x00000010
_020C3F98: .word 0x027E3F80
_020C3F9C: .word 0x00000800
	arm_func_end sub_020C3EE4

	.bss


	.global Unk_021CCFE4
Unk_021CCFE4: ; 0x021CCFE4
	.space 0x2

	.global Unk_021CCFE6
Unk_021CCFE6: ; 0x021CCFE6
	.space 0x2

