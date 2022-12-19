	.include "macros/function.inc"
	.include "include/ov4_021DA6C8.inc"

	

	.text


	arm_func_start ov4_021DA6C8
ov4_021DA6C8: ; 0x021DA6C8
	stmfd sp!, {r4, r5, r6, lr}
	ldr ip, _021DA748 ; =0x0221A68C
	mov r6, r1
	mov r5, r2
	mov r1, #0
	mov r2, #0x280
	mov r4, r3
	str r0, [ip, #4]
	bl sub_020C4CF4
	ldr r0, _021DA748 ; =0x0221A68C
	mov r2, #0
	ldr r1, [r0, #4]
	ldr ip, [sp, #0x10]
	str r5, [r1, #0]
	ldr r1, [r0, #4]
	ldr r5, [sp, #0x14]
	str r2, [r1, #4]
	ldr r1, [r0, #4]
	ldr r3, [sp, #0x18]
	str r4, [r1, #8]
	ldr r1, [r0, #4]
	ldr r2, [sp, #0x1c]
	str ip, [r1, #0xc]
	ldr r1, [r0, #4]
	str r5, [r1, #0x10]
	ldr r1, [r0, #4]
	str r3, [r1, #0x14]
	ldr r1, [r0, #4]
	str r2, [r1, #0x18]
	ldr r0, [r0, #4]
	str r6, [r0, #0x1c]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021DA748: .word 0x0221A68C
	arm_func_end ov4_021DA6C8

	arm_func_start ov4_021DA74C
ov4_021DA74C: ; 0x021DA74C
	stmfd sp!, {r3, lr}
	ldr r0, _021DA77C ; =ov4_021DAB18
	mov r1, #0
	bl ov4_021DABCC
	ldr r0, _021DA780 ; =0x0221A68C
	mov r3, #1
	ldr r2, [r0, #4]
	mov r1, #0
	str r3, [r2, #4]
	ldr r0, [r0, #4]
	str r1, [r0, #0x30]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DA77C: .word ov4_021DAB18
_021DA780: .word 0x0221A68C
	arm_func_end ov4_021DA74C

	arm_func_start ov4_021DA784
ov4_021DA784: ; 0x021DA784
	stmfd sp!, {r3, lr}
	ldr r0, _021DA86C ; =0x0221A68C
	ldr r0, [r0, #4]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_021D7708
	cmp r0, #0
	ldmneia sp!, {r3, pc}
	ldr r0, _021DA86C ; =0x0221A68C
	ldr r1, [r0, #4]
	ldr r0, [r1, #4]
	cmp r0, #5
	addls pc, pc, r0, lsl #2
	ldmia sp!, {r3, pc}
_021DA7BC: ; jump table
	ldmia sp!, {r3, pc} ; case 0
	b _021DA7D4 ; case 1
	b _021DA7DC ; case 2
	b _021DA7DC ; case 3
	b _021DA7DC ; case 4
	ldmia sp!, {r3, pc} ; case 5
_021DA7D4:
	bl ov4_021DAD98
	ldmia sp!, {r3, pc}
_021DA7DC:
	ldr r0, [r1, #0]
	cmp r0, #0
	ldrne r1, [r0]
	cmpne r1, #0
	beq _021DA7F4
	bl ov4_021EB274
_021DA7F4:
	ldr r0, _021DA86C ; =0x0221A68C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	ldmeqia sp!, {r3, pc}
	bl sub_020C3880
	ldr r3, _021DA86C ; =0x0221A68C
	ldr r2, _021DA870 ; =0x000082EA
	ldr ip, [r3, #4]
	mov r3, #0
	ldr lr, [ip, #0x34]
	ldr ip, [ip, #0x38]
	subs lr, r0, lr
	sbc r0, r1, ip
	mov r1, r0, lsl #6
	orr r1, r1, lr, lsr #26
	mov r0, lr, lsl #6
	bl sub_020E1ED4
	ldr r2, _021DA874 ; =0x0000EA60
	cmp r1, #0
	cmpeq r0, r2
	ldmlsia sp!, {r3, pc}
	ldr r1, _021DA878 ; =0xFFFF1172
	mov r0, #6
	bl ov4_021DA898
	ldr r0, _021DA86C ; =0x0221A68C
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x30]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DA86C: .word 0x0221A68C
_021DA870: .word 0x000082EA
_021DA874: .word 0x0000EA60
_021DA878: .word 0xFFFF1172
	arm_func_end ov4_021DA784

	arm_func_start ov4_021DA87C
ov4_021DA87C: ; 0x021DA87C
	ldr r0, _021DA894 ; =0x0221A68C
	ldr r0, [r0, #4]
	cmp r0, #0
	ldrne r0, [r0, #0x1c]
	moveq r0, #0
	bx lr
	; .align 2, 0
_021DA894: .word 0x0221A68C
	arm_func_end ov4_021DA87C

	arm_func_start ov4_021DA898
ov4_021DA898: ; 0x021DA898
	stmfd sp!, {r4, lr}
	ldr r2, _021DA8E4 ; =0x0221A68C
	mov r4, r0
	ldr r2, [r2, #4]
	cmp r2, #0
	cmpne r4, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_021D7724
	ldr r0, _021DA8E4 ; =0x0221A68C
	ldr r0, [r0, #4]
	ldr r3, [r0, #0x14]
	cmp r3, #0
	beq _021DA8DC
	ldr r2, [r0, #0x18]
	mov r0, r4
	mov r1, #0
	blx r3
_021DA8DC:
	bl ov4_021DA944
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021DA8E4: .word 0x0221A68C
	arm_func_end ov4_021DA898

	arm_func_start ov4_021DA8E8
ov4_021DA8E8: ; 0x021DA8E8
	stmfd sp!, {r3, lr}
	ldr r0, _021DA940 ; =0x0221A68C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x24]
	cmp r0, #0
	beq _021DA930
	bl ov4_021D3220
	bl ov4_021D32AC
	ldr r1, _021DA940 ; =0x0221A68C
	mov r0, #0
	ldr r1, [r1, #4]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl ov4_021D77C4
	ldr r0, _021DA940 ; =0x0221A68C
	mov r1, #0
	ldr r0, [r0, #4]
	str r1, [r0, #0x24]
_021DA930:
	ldr r0, _021DA940 ; =0x0221A68C
	mov r1, #0
	str r1, [r0, #4]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DA940: .word 0x0221A68C
	arm_func_end ov4_021DA8E8

	arm_func_start ov4_021DA944
ov4_021DA944: ; 0x021DA944
	ldr r0, _021DA968 ; =0x0221A68C
	ldr r2, [r0, #4]
	cmp r2, #0
	bxeq lr
	mov r1, #0
	str r1, [r2, #4]
	ldr r0, [r0, #4]
	str r1, [r0, #0x30]
	bx lr
	; .align 2, 0
_021DA968: .word 0x0221A68C
	arm_func_end ov4_021DA944

	arm_func_start ov4_021DA96C
ov4_021DA96C: ; 0x021DA96C
	stmfd sp!, {r4, lr}
	movs r4, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	cmp r4, #4
	addls pc, pc, r4, lsl #2
	b _021DA9C8
_021DA988: ; jump table
	b _021DA9C8 ; case 0
	b _021DA99C ; case 1
	b _021DA9A8 ; case 2
	b _021DA9B4 ; case 3
	b _021DA9C0 ; case 4
_021DA99C:
	mov r0, #9
	sub r2, r0, #0xa
	b _021DA9C8
_021DA9A8:
	mov r0, #9
	sub r2, r0, #0xb
	b _021DA9C8
_021DA9B4:
	mov r0, #6
	sub r2, r0, #0x10
	b _021DA9C8
_021DA9C0:
	mov r0, #6
	sub r2, r0, #0x1a
_021DA9C8:
	ldr r1, _021DA9DC ; =0xFFFF11B8
	add r1, r2, r1
	bl ov4_021DA898
	mov r0, r4
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021DA9DC: .word 0xFFFF11B8
	arm_func_end ov4_021DA96C

	arm_func_start ov4_021DA9E0
ov4_021DA9E0: ; 0x021DA9E0
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r2, _021DAB08 ; =0x0221A68C
	mov lr, #0
	ldr r3, [r2, #4]
	mov r4, r1
	str lr, [r3, #0x30]
	mov r7, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne _021DAAFC
	ldr ip, [r2, #4]
	mov r6, r4
	add r5, ip, #0x260
	ldmia r6!, {r0, r1, r2, r3}
	stmia r5!, {r0, r1, r2, r3}
	ldmia r6, {r0, r1, r2, r3}
	stmia r5, {r0, r1, r2, r3}
	ldr r0, [ip, #4]
	cmp r0, #2
	bne _021DAAC4
	ldr r1, [ip, #0x1c]
	ldr r0, [r4, #4]
	ldr r1, [r1, #0x1c]
	cmp r1, r0
	bne _021DAAB0
	ldr r1, _021DAB0C ; =0x02217484
	mov r3, #5
	mov r2, lr
	mov r0, #1
	str r3, [ip, #4]
	bl ov4_021DB978
	bl ov4_021DA96C
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, _021DAB08 ; =0x0221A68C
	ldr r1, [r4, #4]
	ldr r3, [r0, #4]
	mov r0, #0
	ldr r2, [r3, #0x18]
	ldr r3, [r3, #0x14]
	blx r3
	bl ov4_021D9A5C
	cmp r0, #0
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r0, [r4, #4]
	bl ov4_021DCC74
	add sp, sp, #8
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DAAB0:
	ldr r1, _021DAB10 ; =0xFFFF15A0
	mov r0, #6
	bl ov4_021DA898
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DAAC4:
	cmp r0, #3
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	ldr r1, _021DAB14 ; =ov4_021DAFA0
	mov r0, r7
	stmia sp, {r1, lr}
	ldr r1, [r4, #4]
	mov r2, lr
	mov r3, lr
	bl ov4_021EB4F8
	bl ov4_021DA96C
	add sp, sp, #8
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021DAAFC:
	bl ov4_021DA96C
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021DAB08: .word 0x0221A68C
_021DAB0C: .word 0x02217484
_021DAB10: .word 0xFFFF15A0
_021DAB14: .word ov4_021DAFA0
	arm_func_end ov4_021DA9E0

	arm_func_start ov4_021DAB18
ov4_021DAB18: ; 0x021DAB18
	ldr ip, _021DAB28 ; =ov4_021DAB30
	ldr r2, _021DAB2C ; =ov4_021DA9E0
	mov r3, #2
	bx ip
	; .align 2, 0
_021DAB28: .word ov4_021DAB30
_021DAB2C: .word ov4_021DA9E0
	arm_func_end ov4_021DAB18

	arm_func_start ov4_021DAB30
ov4_021DAB30: ; 0x021DAB30
	stmfd sp!, {r3, r4, r5, r6, lr}
	sub sp, sp, #0xc
	ldr r4, _021DABC8 ; =0x0221A68C
	mov r6, r1
	ldr r4, [r4, #4]
	mov r1, r0
	add r0, r4, #0x48
	mov r5, r2
	mov r4, r3
	bl sub_020D8B7C
	ldr r0, _021DABC8 ; =0x0221A68C
	mov r1, r6
	ldr r0, [r0, #4]
	add r0, r0, #0x148
	bl sub_020D8B7C
	ldr r0, _021DABC8 ; =0x0221A68C
	ldr r6, [r0, #4]
	bl sub_020C3880
	str r0, [r6, #0x34]
	str r1, [r6, #0x38]
	mov r3, #1
	ldr r0, _021DABC8 ; =0x0221A68C
	str r3, [r6, #0x30]
	ldr r2, [r0, #4]
	mov r1, #0
	stmia sp, {r1, r5}
	str r1, [sp, #8]
	ldr r0, [r2, #0]
	add r1, r2, #0x48
	add r2, r2, #0x148
	bl ov4_021EB2F8
	bl ov4_021DA96C
	cmp r0, #0
	ldreq r0, _021DABC8 ; =0x0221A68C
	ldreq r0, [r0, #4]
	streq r4, [r0, #4]
	add sp, sp, #0xc
	ldmia sp!, {r3, r4, r5, r6, pc}
	; .align 2, 0
_021DABC8: .word 0x0221A68C
	arm_func_end ov4_021DAB30

	arm_func_start ov4_021DABCC
ov4_021DABCC: ; 0x021DABCC
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r5, r0
	mov r4, r1
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x48
	bl sub_020C4CF4
	ldr r0, _021DAD7C ; =0x0221A68C
	str r5, [r0, #8]
	str r4, [r0, #0]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl sub_020A4488
	cmp r0, #0
	beq _021DAC2C
	ldr r0, _021DAD7C ; =0x0221A68C
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x1c]
	add r2, r1, #0x248
	ldr r1, [r0, #0x24]
	add r0, r0, #0x10
	bl sub_020A4234
	b _021DACE0
_021DAC2C:
	ldr r0, _021DAD7C ; =0x0221A68C
	ldr r0, [r0, #4]
	add r0, r0, #0x3c
	bl sub_020A4470
	cmp r0, #0
	bne _021DAC94
	ldr r0, _021DAD7C ; =0x0221A68C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	add r0, r0, #4
	bl sub_020A4404
	cmp r0, #0
	beq _021DAC80
	ldr r0, _021DAD7C ; =0x0221A68C
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x1c]
	add r3, r1, #0x3c
	add r0, r0, #4
	ldmia r0, {r0, r1, r2}
	stmia r3, {r0, r1, r2}
	b _021DACC8
_021DAC80:
	ldr r0, _021DAD7C ; =0x0221A68C
	ldr r0, [r0, #4]
	add r0, r0, #0x3c
	bl sub_020A4340
	b _021DACC8
_021DAC94:
	bl sub_020C3880
	ldr r2, _021DAD80 ; =0x6C078965
	ldr r3, _021DAD84 ; =0x5D588B65
	umull ip, r4, r0, r2
	mla r4, r0, r3, r4
	ldr r3, _021DAD7C ; =0x0221A68C
	ldr r0, _021DAD88 ; =0x00269EC3
	mla r4, r1, r2, r4
	adds r0, ip, r0
	ldr r3, [r3, #4]
	adc r1, r4, #0
	add r0, r3, #0x3c
	bl sub_020A3FEC
_021DACC8:
	ldr r0, _021DAD7C ; =0x0221A68C
	ldr r2, [r0, #4]
	ldr r1, [r2, #0xc]
	add r0, r2, #0x3c
	add r2, r2, #0x248
	bl sub_020A4234
_021DACE0:
	ldr r0, _021DAD7C ; =0x0221A68C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x10]
	bl ov4_021D8BDC
	ldr r1, _021DAD7C ; =0x0221A68C
	mov r2, r0, lsl #1
	ldr r1, [r1, #4]
	add r2, r2, #2
	ldr r0, [r1, #0x10]
	add r1, sp, #0
	bl sub_020C4DB0
	ldr r1, _021DAD7C ; =0x0221A68C
	add r0, sp, #0x34
	ldr r1, [r1, #4]
	add r1, r1, #0x51
	add r1, r1, #0x200
	bl sub_020D8B7C
	ldr r4, _021DAD8C ; =ov4_021D7780
	ldr r3, _021DAD90 ; =ov4_021D77C4
	ldr r1, _021DAD94 ; =0x00001C14
	mov r0, #0
	mov r2, #4
	str r4, [sp, #0x40]
	str r3, [sp, #0x44]
	bl ov4_021D7790
	ldr r1, _021DAD7C ; =0x0221A68C
	mov r4, r0
	ldr r0, [r1, #4]
	str r4, [r0, #0x24]
	bl sub_020C3880
	ldr r2, _021DAD7C ; =0x0221A68C
	ldr r2, [r2, #4]
	str r0, [r2, #0x28]
	str r1, [r2, #0x2c]
	mov r1, r4
	add r0, sp, #0
	bl ov4_021D3048
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DAD7C: .word 0x0221A68C
_021DAD80: .word 0x6C078965
_021DAD84: .word 0x5D588B65
_021DAD88: .word 0x00269EC3
_021DAD8C: .word ov4_021D7780
_021DAD90: .word ov4_021D77C4
_021DAD94: .word 0x00001C14
	arm_func_end ov4_021DABCC

	arm_func_start ov4_021DAD98
ov4_021DAD98: ; 0x021DAD98
	stmfd sp!, {r3, lr}
	sub sp, sp, #0x3d0
	bl ov4_021D3334
	cmp r0, #0x15
	bne _021DAE68
	add r0, sp, #0x20c
	bl ov4_021D3380
	ldr r0, _021DAF88 ; =0x0221A68C
	add r1, sp, #0x200
	ldr r0, [r0, #4]
	add r1, r1, #0x56
	add r0, r0, #0x48
	bl sub_020D8B7C
	ldr r0, _021DAF88 ; =0x0221A68C
	add r1, sp, #0x300
	ldr r0, [r0, #4]
	add r1, r1, #0x83
	add r0, r0, #0x148
	bl sub_020D8B7C
	bl ov4_021D32AC
	ldr r1, _021DAF88 ; =0x0221A68C
	mov r0, #0
	ldr r1, [r1, #4]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl ov4_021D77C4
	ldr r0, _021DAF88 ; =0x0221A68C
	mov r2, #0
	ldr r1, [r0, #4]
	str r2, [r1, #0x24]
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x1c]
	bl sub_020A4488
	cmp r0, #0
	beq _021DAE44
	ldr r0, _021DAF88 ; =0x0221A68C
	ldr r2, [r0, #0]
	ldmib r0, {r1, r3}
	add r0, r1, #0x48
	add r1, r1, #0x148
	blx r3
	add sp, sp, #0x3d0
	ldmia sp!, {r3, pc}
_021DAE44:
	ldr r0, _021DAF88 ; =0x0221A68C
	ldr r2, _021DAF8C ; =ov4_021DA9E0
	ldr r1, [r0, #4]
	mov r3, #3
	add r0, r1, #0x48
	add r1, r1, #0x148
	bl ov4_021DAB30
	add sp, sp, #0x3d0
	ldmia sp!, {r3, pc}
_021DAE68:
	bl ov4_021D3334
	cmp r0, #0
	addeq sp, sp, #0x3d0
	ldmeqia sp!, {r3, pc}
	bl sub_020C3880
	ldr r3, _021DAF88 ; =0x0221A68C
	ldr r2, _021DAF90 ; =0x000082EA
	ldr ip, [r3, #4]
	mov r3, #0
	ldr lr, [ip, #0x28]
	ldr ip, [ip, #0x2c]
	subs lr, r0, lr
	sbc r0, r1, ip
	mov r1, r0, lsl #6
	orr r1, r1, lr, lsr #26
	mov r0, lr, lsl #6
	bl sub_020E1ED4
	ldr r2, _021DAF94 ; =0x00002710
	cmp r1, #0
	cmpeq r0, r2
	bls _021DAF04
	add r0, sp, #0x48
	bl ov4_021D3380
	bl ov4_021D32AC
	ldr r1, _021DAF88 ; =0x0221A68C
	mov r0, #0
	ldr r1, [r1, #4]
	mov r2, r0
	ldr r1, [r1, #0x24]
	bl ov4_021D77C4
	ldr r0, _021DAF88 ; =0x0221A68C
	mov r2, #0
	ldr r1, [r0, #4]
	mov r0, #2
	str r2, [r1, #0x24]
	ldr r1, [sp, #0x48]
	bl ov4_021DA898
	add sp, sp, #0x3d0
	ldmia sp!, {r3, pc}
_021DAF04:
	bl ov4_021D32AC
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x48
	bl sub_020C4CF4
	ldr r0, _021DAF88 ; =0x0221A68C
	ldr r0, [r0, #4]
	ldr r0, [r0, #0x10]
	bl ov4_021D8BDC
	ldr r1, _021DAF88 ; =0x0221A68C
	mov r2, r0, lsl #1
	ldr r1, [r1, #4]
	add r2, r2, #2
	ldr r0, [r1, #0x10]
	add r1, sp, #0
	bl sub_020C4DB0
	ldr r1, _021DAF88 ; =0x0221A68C
	add r0, sp, #0x34
	ldr r1, [r1, #4]
	add r1, r1, #0x51
	add r1, r1, #0x200
	bl sub_020D8B7C
	ldr r2, _021DAF98 ; =ov4_021D7780
	ldr r0, _021DAF88 ; =0x0221A68C
	str r2, [sp, #0x40]
	ldr r2, _021DAF9C ; =ov4_021D77C4
	ldr r1, [r0, #4]
	str r2, [sp, #0x44]
	ldr r1, [r1, #0x24]
	add r0, sp, #0
	bl ov4_021D3048
	add sp, sp, #0x3d0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021DAF88: .word 0x0221A68C
_021DAF8C: .word ov4_021DA9E0
_021DAF90: .word 0x000082EA
_021DAF94: .word 0x00002710
_021DAF98: .word ov4_021D7780
_021DAF9C: .word ov4_021D77C4
	arm_func_end ov4_021DAD98

	arm_func_start ov4_021DAFA0
ov4_021DAFA0: ; 0x021DAFA0
	stmfd sp!, {r3, r4, r5, lr}
	sub sp, sp, #0x48
	mov r4, r1
	ldr r1, [r4, #0]
	mov r5, r0
	cmp r1, #0
	addne sp, sp, #0x48
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r1, _021DB134 ; =0x0221A68C
	ldr r2, [r1, #4]
	ldr r1, [r2, #4]
	cmp r1, #3
	bne _021DB078
	ldrsb r1, [r4, #0x8e]
	cmp r1, #0
	bne _021DB050
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0xc]
	add r2, sp, #0x32
	add r0, r0, #4
	bl sub_020A4234
	ldr r1, _021DB138 ; =0x00000705
	add r2, sp, #0x32
	mov r0, r5
	bl ov4_021EB5D4
	bl ov4_021DA96C
	cmp r0, #0
	addne sp, sp, #0x48
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, _021DB134 ; =0x0221A68C
	mov r3, #4
	ldr r1, [r0, #4]
	ldr r0, _021DB13C ; =ov4_021DAFA0
	mov r2, #0
	str r3, [r1, #4]
	stmia sp, {r0, r2}
	ldr r1, [r4, #4]
	mov r0, r5
	mov r3, r2
	bl ov4_021EB4F8
	bl ov4_021DA96C
	add sp, sp, #0x48
	cmp r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021DB050:
	bl ov4_021EB3FC
	ldr r0, _021DB140 ; =ov4_021DAB18
	mov r1, #0
	bl ov4_021DABCC
	ldr r0, _021DB134 ; =0x0221A68C
	mov r1, #1
	ldr r0, [r0, #4]
	add sp, sp, #0x48
	str r1, [r0, #4]
	ldmia sp!, {r3, r4, r5, pc}
_021DB078:
	cmp r1, #4
	addne sp, sp, #0x48
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r0, [r2, #0x1c]
	ldr r1, [r2, #0xc]
	add r2, sp, #0x1d
	add r0, r0, #4
	bl sub_020A4234
	add r1, sp, #0x1d
	add r0, r4, #0x8e
	bl sub_020D8D14
	cmp r0, #0
	bne _021DB108
	ldr r0, _021DB134 ; =0x0221A68C
	add r2, sp, #8
	ldr r0, [r0, #4]
	ldr r1, [r0, #0xc]
	add r0, r0, #0x3c
	bl sub_020A4234
	ldr r0, _021DB134 ; =0x0221A68C
	ldr r2, [r4, #4]
	ldr r1, [r0, #4]
	ldr r0, [r1, #0x1c]
	add r1, r1, #0x3c
	bl sub_020A45A4
	ldr r1, _021DB134 ; =0x0221A68C
	mov r3, #2
	ldr r2, [r1, #4]
	mov r0, r5
	str r3, [r2, #4]
	ldr r1, [r1, #4]
	mov r2, #0
	add r1, r1, #0x260
	bl ov4_021DA9E0
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
_021DB108:
	ldr r0, _021DB13C ; =ov4_021DAFA0
	mov r2, #0
	stmia sp, {r0, r2}
	ldr r1, [r4, #4]
	mov r0, r5
	mov r3, r2
	bl ov4_021EB4F8
	bl ov4_021DA96C
	cmp r0, #0
	add sp, sp, #0x48
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_021DB134: .word 0x0221A68C
_021DB138: .word 0x00000705
_021DB13C: .word ov4_021DAFA0
_021DB140: .word ov4_021DAB18
	arm_func_end ov4_021DAFA0

	arm_func_start ov4_021DB144
ov4_021DB144: ; 0x021DB144
	ldr r0, _021DB16C ; =0x0221A68C
	ldr r0, [r0, #4]
	cmp r0, #0
	beq _021DB164
	ldr r0, [r0, #4]
	cmp r0, #5
	moveq r0, #1
	bxeq lr
_021DB164:
	mov r0, #0
	bx lr
	; .align 2, 0
_021DB16C: .word 0x0221A68C
	arm_func_end ov4_021DB144

	.data


	.global Unk_ov4_02217484
Unk_ov4_02217484: ; 0x02217484
	.incbin "incbin/overlay4_data.bin", 0x1604, 0x1



	.bss


	.global Unk_ov4_0221A68C
Unk_ov4_0221A68C: ; 0x0221A68C
	.space 0x4

	.global Unk_ov4_0221A690
Unk_ov4_0221A690: ; 0x0221A690
	.space 0x4

	.global Unk_ov4_0221A694
Unk_ov4_0221A694: ; 0x0221A694
	.space 0x4

