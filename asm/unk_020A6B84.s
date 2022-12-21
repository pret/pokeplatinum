	.include "macros/function.inc"
	.include "include/unk_020A6B84.inc"

	

	.text


	arm_func_start sub_020A6B84
sub_020A6B84: ; 0x020A6B84
	mov r0, r0, lsl #4
	bx lr
	arm_func_end sub_020A6B84

	arm_func_start sub_020A6B8C
sub_020A6B8C: ; 0x020A6B8C
	stmfd sp!, {r4, lr}
	ldr ip, _020A6BCC ; =0x021C3AF0
	mov r4, r3
	str r0, [ip, #8]
	str r1, [ip, #0xc]
	str r2, [ip, #0x10]
	bl sub_020A6CF0
	cmp r4, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, _020A6BD0 ; =sub_020A6BE0
	ldr r1, _020A6BD4 ; =0x02100DF4
	ldr r2, _020A6BD8 ; =sub_020A6CAC
	ldr r0, _020A6BDC ; =0x02100DF8
	str r3, [r1, #0]
	str r2, [r0, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A6BCC: .word 0x021C3AF0
_020A6BD0: .word sub_020A6BE0
_020A6BD4: .word 0x02100DF4
_020A6BD8: .word sub_020A6CAC
_020A6BDC: .word 0x02100DF8
	arm_func_end sub_020A6B8C

	arm_func_start sub_020A6BE0
sub_020A6BE0: ; 0x020A6BE0
	stmfd sp!, {r4, lr}
	sub sp, sp, #8
	cmp r0, #0
	moveq r4, #8
	addne r0, r0, #7
	bicne r4, r0, #7
	ldr r0, _020A6CA0 ; =0x0007FFF8
	cmp r4, r0
	addhs sp, sp, #8
	movhs r0, #0
	ldmhsia sp!, {r4, pc}
	cmp r1, #0
	add r2, sp, #4
	beq _020A6C5C
	mov ip, #8
	ldr r0, _020A6CA4 ; =0x021C3AF0
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	str ip, [sp]
	bl sub_020A65D0
	ldr r2, [sp, #4]
	add r1, r2, r4
	cmp r1, #0x10000
	bls _020A6C74
	ldr r0, _020A6CA4 ; =0x021C3AF0
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	bl sub_020A6794
	add sp, sp, #8
	mov r0, #0
	ldmia sp!, {r4, pc}
_020A6C5C:
	ldr r0, _020A6CA4 ; =0x021C3AF0
	mov ip, #0x10
	ldr r1, _020A6CA8 ; =0x021C3AF4
	mov r3, r4
	str ip, [sp]
	bl sub_020A65D0
_020A6C74:
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r0, [sp, #4]
	mov r1, r4, lsr #3
	mov r0, r0, lsl #0xd
	mov r0, r0, lsr #0x10
	orr r0, r0, r1, lsl #16
	add sp, sp, #8
	ldmia sp!, {r4, pc}
	; .align 2, 0
_020A6CA0: .word 0x0007FFF8
_020A6CA4: .word 0x021C3AF0
_020A6CA8: .word 0x021C3AF4
	arm_func_end sub_020A6BE0

	arm_func_start sub_020A6CAC
sub_020A6CAC: ; 0x020A6CAC
	stmfd sp!, {r3, lr}
	mov r1, #0x10000
	rsb r1, r1, #0
	and r1, r0, r1
	mov r2, r0, lsl #0x10
	mov r3, r1, lsr #0x10
	ldr r0, _020A6CE8 ; =0x021C3AF0
	ldr r1, _020A6CEC ; =0x021C3AF4
	mov r2, r2, lsr #0xd
	mov r3, r3, lsl #3
	bl sub_020A6794
	cmp r0, #0
	moveq r0, #1
	movne r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6CE8: .word 0x021C3AF0
_020A6CEC: .word 0x021C3AF4
	arm_func_end sub_020A6CAC

	arm_func_start sub_020A6CF0
sub_020A6CF0: ; 0x020A6CF0
	stmfd sp!, {r3, lr}
	ldr r0, _020A6D40 ; =0x021C3AF0
	ldr r1, [r0, #0x10]
	ldr r0, [r0, #0xc]
	mov r1, r1, lsr #4
	bl sub_020A6514
	ldr r1, _020A6D40 ; =0x021C3AF0
	str r0, [r1, #4]
	ldr r0, _020A6D44 ; =0x021C3AF0
	bl sub_020A6508
	ldr r1, _020A6D40 ; =0x021C3AF0
	ldr r0, _020A6D44 ; =0x021C3AF0
	ldr r3, [r1, #8]
	ldr r1, _020A6D48 ; =0x021C3AF4
	mov r2, #0
	bl sub_020A6560
	ldr r0, _020A6D44 ; =0x021C3AF0
	ldr r1, _020A6D48 ; =0x021C3AF4
	bl sub_020A6710
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020A6D40: .word 0x021C3AF0
_020A6D44: .word 0x021C3AF0
_020A6D48: .word 0x021C3AF4
	arm_func_end sub_020A6CF0

	.bss


	.global Unk_021C3AF0
Unk_021C3AF0: ; 0x021C3AF0
	.space 0x14

