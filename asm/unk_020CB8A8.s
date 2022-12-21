	.include "macros/function.inc"
	.include "include/unk_020CB8A8.inc"

	

	.text


	arm_func_start sub_020CB8A8
sub_020CB8A8: ; 0x020CB8A8
	stmfd sp!, {r3, r4, r5, lr}
	ldr r0, _020CB90C ; =0x021CED58
	ldrh r1, [r0]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	mov r1, #1
	strh r1, [r0]
	mov r1, #0
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x28]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	bl sub_020C6350
	mov r5, #5
	mov r4, #1
_020CB8E8:
	mov r0, r5
	mov r1, r4
	bl sub_020C64A8
	cmp r0, #0
	beq _020CB8E8
	ldr r1, _020CB910 ; =sub_020CBB1C
	mov r0, #5
	bl sub_020C645C
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CB90C: .word 0x021CED58
_020CB910: .word sub_020CBB1C
	arm_func_end sub_020CB8A8

	arm_func_start sub_020CB914
sub_020CB914: ; 0x020CB914
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C3D98
	ldr r1, _020CB980 ; =0x021CED58
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _020CB944
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020CB944:
	mov r2, #1
	str r2, [r1, #0xc]
	bl sub_020C3DAC
	ldr r0, _020CB980 ; =0x021CED58
	mov r1, #0
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r6, [r0, #0x14]
	str r5, [r0, #0x10]
	str r4, [r0, #0x1c]
	bl sub_020CC114
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CB980: .word 0x021CED58
	arm_func_end sub_020CB914

	arm_func_start sub_020CB984
sub_020CB984: ; 0x020CB984
	stmfd sp!, {r3, lr}
	ldr r1, _020CB9B4 ; =sub_020CC0DC
	mov r2, #0
	bl sub_020CB914
	ldr r1, _020CB9B8 ; =0x021CED58
	cmp r0, #0
	str r0, [r1, #0x2c]
	bne _020CB9A8
	bl sub_020CC0EC
_020CB9A8:
	ldr r0, _020CB9B8 ; =0x021CED58
	ldr r0, [r0, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CB9B4: .word sub_020CC0DC
_020CB9B8: .word 0x021CED58
	arm_func_end sub_020CB984

	arm_func_start sub_020CB9BC
sub_020CB9BC: ; 0x020CB9BC
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	bl sub_020C3D98
	ldr r1, _020CBA2C ; =0x021CED58
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _020CB9EC
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_020CB9EC:
	mov r2, #1
	str r2, [r1, #0xc]
	bl sub_020C3DAC
	ldr r0, _020CBA2C ; =0x021CED58
	mov r1, #1
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r6, [r0, #0x14]
	str r5, [r0, #0x10]
	str r4, [r0, #0x1c]
	bl sub_020CC124
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_020CBA2C: .word 0x021CED58
	arm_func_end sub_020CB9BC

	arm_func_start sub_020CBA30
sub_020CBA30: ; 0x020CBA30
	stmfd sp!, {r3, lr}
	ldr r1, _020CBA60 ; =sub_020CC0DC
	mov r2, #0
	bl sub_020CB9BC
	ldr r1, _020CBA64 ; =0x021CED58
	cmp r0, #0
	str r0, [r1, #0x2c]
	bne _020CBA54
	bl sub_020CC0EC
_020CBA54:
	ldr r0, _020CBA64 ; =0x021CED58
	ldr r0, [r0, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CBA60: .word sub_020CC0DC
_020CBA64: .word 0x021CED58
	arm_func_end sub_020CBA30

	arm_func_start sub_020CBA68
sub_020CBA68: ; 0x020CBA68
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl sub_020C3D98
	ldr r1, _020CBAE0 ; =0x021CED58
	ldr r2, [r1, #0xc]
	cmp r2, #0
	beq _020CBA9C
	bl sub_020C3DAC
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_020CBA9C:
	mov r2, #1
	str r2, [r1, #0xc]
	bl sub_020C3DAC
	ldr r0, _020CBAE0 ; =0x021CED58
	mov r1, #2
	str r1, [r0, #0x20]
	mov r1, #0
	str r1, [r0, #0x24]
	str r7, [r0, #0x14]
	str r6, [r0, #0x18]
	str r5, [r0, #0x10]
	str r4, [r0, #0x1c]
	bl sub_020CC104
	cmp r0, #0
	movne r0, #0
	moveq r0, #3
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_020CBAE0: .word 0x021CED58
	arm_func_end sub_020CBA68

	arm_func_start sub_020CBAE4
sub_020CBAE4: ; 0x020CBAE4
	stmfd sp!, {r3, lr}
	ldr r2, _020CBB14 ; =sub_020CC0DC
	mov r3, #0
	bl sub_020CBA68
	ldr r1, _020CBB18 ; =0x021CED58
	cmp r0, #0
	str r0, [r1, #0x2c]
	bne _020CBB08
	bl sub_020CC0EC
_020CBB08:
	ldr r0, _020CBB18 ; =0x021CED58
	ldr r0, [r0, #0x2c]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_020CBB14: .word sub_020CC0DC
_020CBB18: .word 0x021CED58
	arm_func_end sub_020CBAE4

	arm_func_start sub_020CBB1C
sub_020CBB1C: ; 0x020CBB1C
	stmfd sp!, {r3, r4, r5, lr}
	cmp r2, #0
	beq _020CBB78
	ldr r0, _020CC05C ; =0x021CED58
	ldr r1, [r0, #0x24]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0x24]
	ldr r0, _020CC05C ; =0x021CED58
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0xc]
	ldr r0, _020CC05C ; =0x021CED58
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x1c]
	mov r0, #6
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
_020CBB78:
	and r0, r1, #0x7f00
	mov r0, r0, lsr #8
	and r0, r0, #0xff
	cmp r0, #0x30
	and r2, r1, #0xff
	bne _020CBBA8
	ldr r0, _020CC05C ; =0x021CED58
	ldr r0, [r0, #0x28]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	blx r0
	ldmia sp!, {r3, r4, r5, pc}
_020CBBA8:
	cmp r2, #0
	bne _020CBFCC
	ldr r0, _020CC05C ; =0x021CED58
	mov r4, #0
	ldr r1, [r0, #0x20]
	cmp r1, #0xf
	addls pc, pc, r1, lsl #2
	b _020CBFB8
_020CBBC8: ; jump table
	b _020CBC08 ; case 0
	b _020CBC64 ; case 1
	b _020CBCB4 ; case 2
	b _020CC014 ; case 3
	b _020CC014 ; case 4
	b _020CC014 ; case 5
	b _020CBD5C ; case 6
	b _020CBD8C ; case 7
	b _020CBDB0 ; case 8
	b _020CBE58 ; case 9
	b _020CBF0C ; case 10
	b _020CC014 ; case 11
	b _020CC014 ; case 12
	b _020CC014 ; case 13
	b _020CC014 ; case 14
	b _020CC014 ; case 15
_020CBC08:
	ldr r1, _020CC060 ; =0x027FFDE8
	ldr r5, [r0, #0x14]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x18
	mov r0, r0, lsr #0x18
	bl sub_020CC06C
	ldr r1, _020CC060 ; =0x027FFDE8
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl sub_020CC06C
	ldr r1, _020CC060 ; =0x027FFDE8
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl sub_020CC06C
	str r0, [r5, #8]
	mov r0, r5
	bl sub_020CC488
	str r0, [r5, #0xc]
	b _020CC014
_020CBC64:
	ldr r1, _020CC064 ; =0x027FFDEC
	ldr r5, [r0, #0x14]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1a
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	str r0, [r5, #8]
	b _020CC014
_020CBCB4:
	ldr r1, _020CC060 ; =0x027FFDE8
	ldr r5, [r0, #0x14]
	ldr r0, [r1, #0]
	and r0, r0, #0xff
	bl sub_020CC06C
	ldr r1, _020CC060 ; =0x027FFDE8
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x13
	mov r0, r0, lsr #0x1b
	bl sub_020CC06C
	ldr r1, _020CC060 ; =0x027FFDE8
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0xa
	mov r0, r0, lsr #0x1a
	bl sub_020CC06C
	str r0, [r5, #8]
	mov r0, r5
	bl sub_020CC488
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #0xc]
	ldr r0, [r1, #0]
	ldr r1, _020CC05C ; =0x021CED58
	mov r0, r0, lsl #0x1a
	mov r0, r0, lsr #0x1a
	ldr r5, [r1, #0x18]
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x11
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	str r0, [r5, #8]
	b _020CC014
_020CBD5C:
	ldr r1, _020CC068 ; =0x027FFDEA
	ldr r2, [r0, #0x14]
	ldrh r0, [r1]
	mov r0, r0, lsl #0x1c
	mov r0, r0, lsr #0x1c
	cmp r0, #4
	bne _020CBD84
	mov r0, #1
	str r0, [r2, #0]
	b _020CC014
_020CBD84:
	str r4, [r2, #0]
	b _020CC014
_020CBD8C:
	ldr r1, _020CC068 ; =0x027FFDEA
	ldr r2, [r0, #0x14]
	ldrh r0, [r1]
	mov r0, r0, lsl #0x19
	movs r0, r0, lsr #0x1f
	movne r0, #1
	strne r0, [r2]
	streq r4, [r2]
	b _020CC014
_020CBDB0:
	ldr r1, _020CC064 ; =0x027FFDEC
	ldr r5, [r0, #0x14]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x1d
	mov r0, r0, lsr #0x1d
	str r0, [r5, #0]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #0x12
	mov r0, r0, lsr #0x1a
	bl sub_020CC06C
	ldr r1, _020CC064 ; =0x027FFDEC
	str r0, [r5, #4]
	ldr r0, [r1, #0]
	mov r0, r0, lsl #9
	mov r0, r0, lsr #0x19
	bl sub_020CC06C
	str r0, [r5, #8]
	mov r1, r4
	ldr r0, _020CC064 ; =0x027FFDEC
	str r1, [r5, #0xc]
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x18
	movs r0, r0, lsr #0x1f
	ldrne r0, [r5, #0xc]
	addne r0, r0, #1
	strne r0, [r5, #0xc]
	ldr r0, _020CC064 ; =0x027FFDEC
	ldr r0, [r0, #0]
	mov r0, r0, lsl #0x10
	movs r0, r0, lsr #0x1f
	ldrne r0, [r5, #0xc]
	addne r0, r0, #2
	strne r0, [r5, #0xc]
	ldr r0, _020CC064 ; =0x027FFDEC
	ldr r0, [r0, #0]
	mov r0, r0, lsl #8
	movs r0, r0, lsr #0x1f
	beq _020CC014
	ldr r0, [r5, #0xc]
	add r0, r0, #4
	str r0, [r5, #0xc]
	b _020CC014
_020CBE58:
	ldr r3, [r0, #0x24]
	cmp r3, #0
	bne _020CBF04
	ldr r1, [r0, #0x14]
	ldr r2, _020CC068 ; =0x027FFDEA
	ldr r1, [r1, #0]
	cmp r1, #1
	ldrh r1, [r2]
	bne _020CBEC4
	mov r1, r1, lsl #0x1c
	mov r1, r1, lsr #0x1c
	cmp r1, #4
	beq _020CC014
	add r1, r3, #1
	str r1, [r0, #0x24]
	ldrh r0, [r2]
	bic r0, r0, #0xf
	orr r0, r0, #4
	strh r0, [r2]
	bl sub_020CC134
	cmp r0, #0
	bne _020CC014
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, r4
	str r1, [r0, #0x24]
	mov r4, #3
	b _020CC014
_020CBEC4:
	mov r1, r1, lsl #0x1c
	movs r1, r1, lsr #0x1c
	beq _020CC014
	add r1, r3, #1
	str r1, [r0, #0x24]
	ldrh r0, [r2]
	bic r0, r0, #0xf
	strh r0, [r2]
	bl sub_020CC134
	cmp r0, #0
	bne _020CC014
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, r4
	str r1, [r0, #0x24]
	mov r4, #3
	b _020CC014
_020CBF04:
	str r4, [r0, #0x24]
	b _020CC014
_020CBF0C:
	ldr r3, [r0, #0x24]
	cmp r3, #0
	bne _020CBFB0
	ldr r1, [r0, #0x14]
	ldr r2, _020CC068 ; =0x027FFDEA
	ldr r1, [r1, #0]
	cmp r1, #1
	ldrh r1, [r2]
	bne _020CBF70
	mov r1, r1, lsl #0x19
	movs r1, r1, lsr #0x1f
	bne _020CC014
	add r1, r3, #1
	str r1, [r0, #0x24]
	ldrh r0, [r2]
	orr r0, r0, #0x40
	strh r0, [r2]
	bl sub_020CC134
	cmp r0, #0
	bne _020CC014
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, r4
	str r1, [r0, #0x24]
	mov r4, #3
	b _020CC014
_020CBF70:
	mov r1, r1, lsl #0x19
	movs r1, r1, lsr #0x1f
	beq _020CC014
	add r1, r3, #1
	str r1, [r0, #0x24]
	ldrh r0, [r2]
	bic r0, r0, #0x40
	strh r0, [r2]
	bl sub_020CC134
	cmp r0, #0
	bne _020CC014
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, r4
	str r1, [r0, #0x24]
	mov r4, #3
	b _020CC014
_020CBFB0:
	str r4, [r0, #0x24]
	b _020CC014
_020CBFB8:
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, #0
	str r1, [r0, #0x24]
	mov r4, #4
	b _020CC014
_020CBFCC:
	ldr r0, _020CC05C ; =0x021CED58
	mov r1, #0
	str r1, [r0, #0x24]
	cmp r2, #4
	addls pc, pc, r2, lsl #2
	b _020CC010
_020CBFE4: ; jump table
	b _020CC010 ; case 0
	b _020CBFF8 ; case 1
	b _020CC000 ; case 2
	b _020CC008 ; case 3
	b _020CC010 ; case 4
_020CBFF8:
	mov r4, #4
	b _020CC014
_020CC000:
	mov r4, #5
	b _020CC014
_020CC008:
	mov r4, #1
	b _020CC014
_020CC010:
	mov r4, #6
_020CC014:
	ldr r0, _020CC05C ; =0x021CED58
	ldr r1, [r0, #0x24]
	cmp r1, #0
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, [r0, #0xc]
	cmp r1, #0
	movne r1, #0
	strne r1, [r0, #0xc]
	ldr r0, _020CC05C ; =0x021CED58
	ldr r2, [r0, #0x10]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r1, #0
	str r1, [r0, #0x10]
	ldr r1, [r0, #0x1c]
	mov r0, r4
	blx r2
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_020CC05C: .word 0x021CED58
_020CC060: .word 0x027FFDE8
_020CC064: .word 0x027FFDEC
_020CC068: .word 0x027FFDEA
	arm_func_end sub_020CBB1C

	arm_func_start sub_020CC06C
sub_020CC06C: ; 0x020CC06C
	stmfd sp!, {r3, r4, r5, lr}
	mov ip, #0
	mov r2, ip
	mov r3, ip
_020CC07C:
	mov r1, r0, lsr r3
	and r1, r1, #0xf
	cmp r1, #0xa
	movhs r0, #0
	ldmhsia sp!, {r3, r4, r5, pc}
	add r2, r2, #1
	cmp r2, #8
	add r3, r3, #4
	blt _020CC07C
	mov r5, #0
	mov r4, r5
	mov lr, #1
	mov r2, #0xa
_020CC0B0:
	mov r1, r0, lsr r4
	and r3, r1, #0xf
	mul r1, lr, r2
	mla ip, lr, r3, ip
	add r5, r5, #1
	mov lr, r1
	cmp r5, #8
	add r4, r4, #4
	blt _020CC0B0
	mov r0, ip
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end sub_020CC06C

	arm_func_start sub_020CC0DC
sub_020CC0DC: ; 0x020CC0DC
	ldr r1, _020CC0E8 ; =0x021CED58
	str r0, [r1, #0x2c]
	bx lr
	; .align 2, 0
_020CC0E8: .word 0x021CED58
	arm_func_end sub_020CC0DC

	arm_func_start sub_020CC0EC
sub_020CC0EC: ; 0x020CC0EC
	ldr ip, _020CC100 ; =0x021CED64
_020CC0F0:
	ldr r0, [ip]
	cmp r0, #1
	beq _020CC0F0
	bx lr
	; .align 2, 0
_020CC100: .word 0x021CED64
	arm_func_end sub_020CC0EC

	.bss


	.global Unk_021CED58
Unk_021CED58: ; 0x021CED58
	.space 0x2

	.global Unk_021CED5A
Unk_021CED5A: ; 0x021CED5A
	.space 0x2

	.global Unk_021CED5C
Unk_021CED5C: ; 0x021CED5C
	.space 0x8

	.global Unk_021CED64
Unk_021CED64: ; 0x021CED64
	.space 0x3C

