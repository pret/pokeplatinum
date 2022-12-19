	.include "macros/function.inc"
	.include "include/ov4_021E4A58.inc"

	

	.text


	arm_func_start ov4_021E4A58
ov4_021E4A58: ; 0x021E4A58
	ldr ip, _021E4A64 ; =ov4_021E4A68
	mov r1, #1
	bx ip
	; .align 2, 0
_021E4A64: .word ov4_021E4A68
	arm_func_end ov4_021E4A58

	arm_func_start ov4_021E4A68
ov4_021E4A68: ; 0x021E4A68
	stmfd sp!, {r3, r4, r5, lr}
	mov r4, r0
	mov r5, r1
	bl ov4_021D7708
	cmp r0, #0
	bne _021E4AA8
	cmp r5, #1
	bne _021E4A98
	mov r0, r4
	bl ov4_021D9A08
	cmp r0, #0
	beq _021E4AA8
_021E4A98:
	mov r0, r4
	bl ov4_021D9C8C
	cmp r0, #0
	bne _021E4AB0
_021E4AA8:
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
_021E4AB0:
	mov r0, r4
	bl ov4_021E51AC
	cmp r0, #1
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	mov r0, r4
	bl ov4_021E5568
	mov r4, r0
	mov r0, r5
	bl ov4_021E4E40
	cmp r4, r0
	movge r0, #1
	movlt r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E4A68

	arm_func_start ov4_021E4AE8
ov4_021E4AE8: ; 0x021E4AE8
	stmfd sp!, {r3, lr}
	mov ip, r1
	mov r3, r2
	mov r1, r0
	mov r2, ip
	mov r0, #1
	bl ov4_021E4B08
	ldmia sp!, {r3, pc}
	arm_func_end ov4_021E4AE8

	arm_func_start ov4_021E4B08
ov4_021E4B08: ; 0x021E4B08
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, lr}
	sub sp, sp, #8
	mov r7, r1
	mov r8, r0
	mov r0, r7
	mov r6, r2
	mov r5, r3
	bl ov4_021E5194
	mov r4, r0
	mov r0, r7
	mov r1, r8
	bl ov4_021E4A68
	cmp r0, #0
	addeq sp, sp, #8
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, #1
	strb r0, [r4, #0x1c]
	str r6, [r4, #0]
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, sp, #0
	mov r1, r8
	mov r2, r5
	str r5, [r4, #0x14]
	bl ov4_021E4DD4
	add r1, sp, #0
	mov r0, r7
	mov r2, #8
	mov r3, #1
	bl ov4_021E51E4
	ldr r0, _021E4C24 ; =0x0221AE20
	ldr r0, [r0, #0]
	add r0, r0, #0x600
	ldrh sb, [r0, #0x10]
	mov r0, r7
	cmp r5, sb
	movle sb, r5
	bl ov4_021E5568
	cmp sb, r0
	addgt sp, sp, #8
	movgt r0, #1
	ldmgtia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	mov r0, r7
	mov r1, r6
	mov r2, sb
	mov r3, #1
	bl ov4_021E51E4
	ldr r0, [r4, #0xc]
	add r1, r0, sb
	str r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	cmp r1, r0
	bne _021E4C18
	mov r2, #0
	strb r2, [r4, #0x1c]
	str r2, [r4, #0]
	str r2, [r4, #0xc]
	ldr r1, _021E4C24 ; =0x0221AE20
	str r2, [r4, #0x14]
	ldr r1, [r1, #0]
	ldr r2, [r1, #0x600]
	cmp r2, #0
	beq _021E4C18
	cmp r8, #1
	bne _021E4C18
	mov r1, r7
	blx r2
_021E4C18:
	mov r0, #1
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, pc}
	; .align 2, 0
_021E4C24: .word 0x0221AE20
	arm_func_end ov4_021E4B08

	arm_func_start ov4_021E4C28
ov4_021E4C28: ; 0x021E4C28
	stmfd sp!, {r4, r5, r6, r7, r8, sb, sl, lr}
	mov r7, #1
	mov r6, r0
	mov r5, r1
	mov r4, r2
	mov sb, #0
	mov r8, r7
_021E4C44:
	cmp sb, #0
	movne sl, r8, lsl sb
	moveq sl, r7
	tst r6, sl
	beq _021E4C80
	bl ov4_021D9968
	cmp sb, r0
	beq _021E4C80
	mov r0, sb
	mov r1, r5
	mov r2, r4
	bl ov4_021E4AE8
	cmp r0, #0
	mvneq r0, sl
	andeq r6, r6, r0
_021E4C80:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #0x20
	blo _021E4C44
	mov r0, r6
	ldmia sp!, {r4, r5, r6, r7, r8, sb, sl, pc}
	arm_func_end ov4_021E4C28

	arm_func_start ov4_021E4C98
ov4_021E4C98: ; 0x021E4C98
	stmfd sp!, {r4, r5, r6, lr}
	mov r5, r0
	mov r6, r1
	mov r4, r2
	bl ov4_021D7708
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, r5, r6, pc}
	mov r0, r5
	bl ov4_021D9A08
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _021E4D24 ; =0x0221AE20
	ldr r0, [r0, #0]
	add r0, r0, #0x600
	ldrh r0, [r0, #0x10]
	cmp r4, r0
	movgt r0, #0
	ldmgtia sp!, {r4, r5, r6, pc}
	mov r0, r5
	mov r1, r6
	mov r2, r4
	mov r3, #0
	bl ov4_021E51E4
	ldr r0, _021E4D24 ; =0x0221AE20
	ldr r0, [r0, #0]
	ldr r2, [r0, #0x600]
	cmp r2, #0
	beq _021E4D1C
	mov r0, r4
	mov r1, r5
	blx r2
_021E4D1C:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E4D24: .word 0x0221AE20
	arm_func_end ov4_021E4C98

	arm_func_start ov4_021E4D28
ov4_021E4D28: ; 0x021E4D28
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r7, r0
	mov r6, r1
	mov r5, r2
	bl ov4_021E5194
	mov r4, r0
	mov r0, r7
	bl ov4_021E51C8
	cmp r0, #2
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	str r6, [r4, #4]
	str r5, [r4, #8]
	mov r0, #1
	strb r0, [r4, #0x1d]
	mov r1, #0
	str r1, [r4, #0x10]
	str r1, [r4, #0x18]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	arm_func_end ov4_021E4D28

	arm_func_start ov4_021E4D74
ov4_021E4D74: ; 0x021E4D74
	ldr r1, _021E4D90 ; =0x0221AE20
	ldr r1, [r1, #0]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x600]
	movne r0, #1
	bx lr
	; .align 2, 0
_021E4D90: .word 0x0221AE20
	arm_func_end ov4_021E4D74

	arm_func_start ov4_021E4D94
ov4_021E4D94: ; 0x021E4D94
	ldr r1, _021E4DB0 ; =0x0221AE20
	ldr r1, [r1, #0]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x604]
	movne r0, #1
	bx lr
	; .align 2, 0
_021E4DB0: .word 0x0221AE20
	arm_func_end ov4_021E4D94

	arm_func_start ov4_021E4DB4
ov4_021E4DB4: ; 0x021E4DB4
	ldr r1, _021E4DD0 ; =0x0221AE20
	ldr r1, [r1, #0]
	cmp r1, #0
	moveq r0, #0
	strne r0, [r1, #0x608]
	movne r0, #1
	bx lr
	; .align 2, 0
_021E4DD0: .word 0x0221AE20
	arm_func_end ov4_021E4DB4

	arm_func_start ov4_021E4DD4
ov4_021E4DD4: ; 0x021E4DD4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r0
	mov r5, r1
	mov r4, r2
	ldr r1, _021E4E00 ; =0x02217608
	add r0, r6, #6
	mov r2, #2
	bl sub_020D8C44
	strh r5, [r6, #4]
	str r4, [r6, #0]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E4E00: .word 0x02217608
	arm_func_end ov4_021E4DD4

	arm_func_start ov4_021E4E04
ov4_021E4E04: ; 0x021E4E04
	stmfd sp!, {r3, lr}
	sub sp, sp, #8
	add r1, sp, #0
	mov r2, #8
	bl sub_020C4DB0
	ldr r1, _021E4E3C ; =0x02217608
	add r0, sp, #6
	mov r2, #2
	bl sub_020D5190
	cmp r0, #0
	ldreqh r0, [sp, #4]
	movne r0, #0
	add sp, sp, #8
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E4E3C: .word 0x02217608
	arm_func_end ov4_021E4E04

	arm_func_start ov4_021E4E40
ov4_021E4E40: ; 0x021E4E40
	cmp r0, #2
	cmpne r0, #3
	cmpne r0, #4
	bne _021E4E58
	mov r0, #0xc
	bx lr
_021E4E58:
	mov r0, #8
	bx lr
	arm_func_end ov4_021E4E40

	arm_func_start ov4_021E4E60
ov4_021E4E60: ; 0x021E4E60
	stmfd sp!, {r4, lr}
	ldr r2, _021E4EA8 ; =0x0221AE20
	ldr r3, [r2, #0]
	cmp r3, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	mov r2, #0x30
	mul r4, r0, r2
	add r0, r3, r4
	str r1, [r0, #0x2c]
	bl sub_020C3880
	ldr r2, _021E4EA8 ; =0x0221AE20
	ldr r2, [r2, #0]
	add r2, r2, r4
	str r0, [r2, #0x24]
	str r1, [r2, #0x28]
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E4EA8: .word 0x0221AE20
	arm_func_end ov4_021E4E60

	arm_func_start ov4_021E4EAC
ov4_021E4EAC: ; 0x021E4EAC
	stmfd sp!, {r3, lr}
	ldr r3, _021E4EDC ; =0x0221AE20
	ldr r2, _021E4EE0 ; =0x00000614
	mov r1, #0
	str r0, [r3, #0]
	bl sub_020C4CF4
	ldr r0, _021E4EDC ; =0x0221AE20
	ldr r1, _021E4EE4 ; =0x000005B9
	ldr r0, [r0, #0]
	add r0, r0, #0x600
	strh r1, [r0, #0x10]
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E4EDC: .word 0x0221AE20
_021E4EE0: .word 0x00000614
_021E4EE4: .word 0x000005B9
	arm_func_end ov4_021E4EAC

	arm_func_start ov4_021E4EE8
ov4_021E4EE8: ; 0x021E4EE8
	stmfd sp!, {r3, lr}
	ldr ip, _021E4F20 ; =0x0221AE20
	ldr ip, [ip]
	cmp ip, #0
	ldmeqia sp!, {r3, pc}
	cmp r1, #0
	cmpne r2, #0
	ldmeqia sp!, {r3, pc}
	cmp r3, #0
	beq _021E4F18
	bl ov4_021E520C
	ldmia sp!, {r3, pc}
_021E4F18:
	bl ov4_021E5300
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E4F20: .word 0x0221AE20
	arm_func_end ov4_021E4EE8

	arm_func_start ov4_021E4F24
ov4_021E4F24: ; 0x021E4F24
	stmfd sp!, {r4, lr}
	ldr r2, _021E4F60 ; =0x0221AE20
	mov r4, r1
	ldr r1, [r2, #0]
	ldr r1, [r1, #0x60c]
	cmp r1, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_021D9B88
	ldr r2, _021E4F60 ; =0x0221AE20
	mov r1, r0
	ldr r2, [r2, #0]
	mov r0, r4
	ldr r2, [r2, #0x60c]
	blx r2
	ldmia sp!, {r4, pc}
	; .align 2, 0
_021E4F60: .word 0x0221AE20
	arm_func_end ov4_021E4F24

	arm_func_start ov4_021E4F64
ov4_021E4F64: ; 0x021E4F64
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	ldr r0, _021E50F0 ; =0x0221AE20
	ldr r0, [r0, #0]
	cmp r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	add r0, sp, #0
	bl ov4_021D9984
	mov r7, r0
	mov r8, #0
	cmp r7, #0
	ldmleia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	ldr r4, _021E50F0 ; =0x0221AE20
	mov fp, r8
_021E4F98:
	ldr r0, [sp]
	ldrb sb, [r0, r8]
	mov r0, sb
	bl ov4_021D9A08
	cmp r0, #0
	beq _021E502C
	mov r0, sb
	bl ov4_021E5194
	ldr r1, [r4, #0]
	mov r6, r0
	ldr r0, [r1, #0x608]
	cmp r0, #0
	ldrne r0, [r6, #0x2c]
	cmpne r0, #0
	beq _021E502C
	bl sub_020C3880
	mov sl, r1
	ldr r2, [r6, #0x24]
	mov r5, r0
	subs r2, r5, r2
	ldr r1, [r6, #0x28]
	mov r0, r2, lsl #6
	sbc r1, sl, r1
	mov r1, r1, lsl #6
	orr r1, r1, r2, lsr #26
	ldr r2, _021E50F4 ; =0x000082EA
	mov r3, #0
	bl sub_020E1ED4
	ldr r1, [r6, #0x2c]
	cmp r0, r1
	bls _021E502C
	ldr r1, [r4, #0]
	mov r0, sb
	ldr r1, [r1, #0x608]
	blx r1
	str r5, [r6, #0x24]
	str sl, [r6, #0x28]
_021E502C:
	bl ov4_021D9968
	cmp sb, r0
	beq _021E50E0
	mov r0, sb
	bl ov4_021E51AC
	cmp r0, #1
	bne _021E50E0
	mov r0, sb
	bl ov4_021E5194
	mov r5, r0
	ldr r0, [r4, #0]
	ldr r2, [r5, #0x14]
	add r0, r0, #0x600
	ldr r1, [r5, #0xc]
	ldrh r6, [r0, #0x10]
	sub r0, r2, r1
	cmp r0, r6
	movle r6, r0
	mov r0, sb
	bl ov4_021E5568
	cmp r0, r6
	blt _021E50E0
	ldr r3, [r5, #0]
	ldr r1, [r5, #0xc]
	mov r0, sb
	add r1, r3, r1
	mov r2, r6
	mov r3, #1
	bl ov4_021E51E4
	ldr r0, [r5, #0xc]
	add r1, r0, r6
	str r1, [r5, #0xc]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	bne _021E50E0
	strb fp, [r5, #0x1c]
	str fp, [r5]
	str fp, [r5, #0xc]
	str fp, [r5, #0x14]
	ldr r1, [r4, #0]
	ldr r2, [r1, #0x600]
	cmp r2, #0
	beq _021E50E0
	mov r1, sb
	blx r2
_021E50E0:
	add r8, r8, #1
	cmp r8, r7
	blt _021E4F98
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_021E50F0: .word 0x0221AE20
_021E50F4: .word 0x000082EA
	arm_func_end ov4_021E4F64

	arm_func_start ov4_021E50F8
ov4_021E50F8: ; 0x021E50F8
	ldr r2, _021E517C ; =0x0221AE20
	ldr r3, [r2, #0]
	cmp r3, #0
	bxeq lr
	mov r1, #0x30
	mul r1, r0, r1
	add r0, r3, r1
	mov r3, #0
	str r3, [r0, #0xc]
	ldr r0, [r2, #0]
	add r0, r0, r1
	str r3, [r0, #0x10]
	ldr r0, [r2, #0]
	add r0, r0, r1
	str r3, [r0, #0x14]
	ldr r0, [r2, #0]
	add r0, r0, r1
	str r3, [r0, #0x18]
	ldr r0, [r2, #0]
	add r0, r0, r1
	strb r3, [r0, #0x1c]
	ldr r0, [r2, #0]
	add r2, r0, #0x1d
	ldrb r0, [r2, r1]
	cmp r0, #0
	movne r0, #1
	strneb r0, [r2, r1]
	ldr r0, _021E517C ; =0x0221AE20
	mov r2, #0
	ldr r0, [r0, #0]
	add r0, r0, r1
	strh r2, [r0, #0x22]
	bx lr
	; .align 2, 0
_021E517C: .word 0x0221AE20
	arm_func_end ov4_021E50F8

	arm_func_start ov4_021E5180
ov4_021E5180: ; 0x021E5180
	ldr r0, _021E5190 ; =0x0221AE20
	mov r1, #0
	str r1, [r0, #0]
	bx lr
	; .align 2, 0
_021E5190: .word 0x0221AE20
	arm_func_end ov4_021E5180

	arm_func_start ov4_021E5194
ov4_021E5194: ; 0x021E5194
	ldr r2, _021E51A8 ; =0x0221AE20
	mov r1, #0x30
	ldr r2, [r2, #0]
	mla r0, r1, r0, r2
	bx lr
	; .align 2, 0
_021E51A8: .word 0x0221AE20
	arm_func_end ov4_021E5194

	arm_func_start ov4_021E51AC
ov4_021E51AC: ; 0x021E51AC
	ldr r2, _021E51C4 ; =0x0221AE20
	mov r1, #0x30
	ldr r2, [r2, #0]
	mla r1, r0, r1, r2
	ldrb r0, [r1, #0x1c]
	bx lr
	; .align 2, 0
_021E51C4: .word 0x0221AE20
	arm_func_end ov4_021E51AC

	arm_func_start ov4_021E51C8
ov4_021E51C8: ; 0x021E51C8
	ldr r2, _021E51E0 ; =0x0221AE20
	mov r1, #0x30
	ldr r2, [r2, #0]
	mla r1, r0, r1, r2
	ldrb r0, [r1, #0x1d]
	bx lr
	; .align 2, 0
_021E51E0: .word 0x0221AE20
	arm_func_end ov4_021E51C8

	arm_func_start ov4_021E51E4
ov4_021E51E4: ; 0x021E51E4
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	mov r4, r3
	bl ov4_021D9B24
	mov r1, r6
	mov r2, r5
	mov r3, r4
	bl ov4_021F866C
	ldmia sp!, {r4, r5, r6, pc}
	arm_func_end ov4_021E51E4

	arm_func_start ov4_021E520C
ov4_021E520C: ; 0x021E520C
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	bl ov4_021D9B88
	mov r4, r0
	bl ov4_021E51C8
	cmp r0, #4
	addls pc, pc, r0, lsl #2
	b _021E52E8
_021E5230: ; jump table
	b _021E5244 ; case 0
	b _021E5270 ; case 1
	b _021E5284 ; case 2
	b _021E5298 ; case 3
	b _021E52AC ; case 4
_021E5244:
	mov r0, r6
	bl ov4_021E4E04
	cmp r0, #2
	ldmloia sp!, {r4, r5, r6, pc}
	cmp r0, #4
	ldmhiia sp!, {r4, r5, r6, pc}
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov4_021E5380
	ldmia sp!, {r4, r5, r6, pc}
_021E5270:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov4_021E5380
	ldmia sp!, {r4, r5, r6, pc}
_021E5284:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov4_021E5448
	ldmia sp!, {r4, r5, r6, pc}
_021E5298:
	mov r0, r4
	mov r1, r6
	mov r2, r5
	bl ov4_021E552C
	ldmia sp!, {r4, r5, r6, pc}
_021E52AC:
	mov r0, #0x30
	mul ip, r4, r0
	ldr r0, _021E52F8 ; =0x0221AE20
	mov r3, #1
	ldr r1, [r0, #0]
	mov r2, #0
	add r1, r1, ip
	strb r3, [r1, #0x1d]
	ldr r1, [r0, #0]
	add r1, r1, ip
	str r2, [r1, #0x10]
	ldr r0, [r0, #0]
	add r0, r0, ip
	str r2, [r0, #0x18]
	ldmia sp!, {r4, r5, r6, pc}
_021E52E8:
	ldr r1, _021E52FC ; =0xFFFE82B6
	mov r0, #6
	bl ov4_021D7724
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E52F8: .word 0x0221AE20
_021E52FC: .word 0xFFFE82B6
	arm_func_end ov4_021E520C

	arm_func_start ov4_021E5300
ov4_021E5300: ; 0x021E5300
	stmfd sp!, {r4, r5, r6, lr}
	mov r6, r1
	mov r5, r2
	bl ov4_021D9B88
	ldr r2, _021E537C ; =0x0221AE20
	mov r1, #0x30
	ldr r2, [r2, #0]
	mla r4, r0, r1, r2
	ldr r1, [r4, #4]
	cmp r1, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r1, [r4, #8]
	cmp r1, r5
	ldmltia sp!, {r4, r5, r6, pc}
	ldr r3, [r2, #0x604]
	cmp r3, #0
	beq _021E5350
	mov r1, r6
	mov r2, r5
	blx r3
_021E5350:
	ldr r0, _021E537C ; =0x0221AE20
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x608]
	cmp r0, #0
	ldrne r0, [r4, #0x2c]
	cmpne r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	bl sub_020C3880
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_021E537C: .word 0x0221AE20
	arm_func_end ov4_021E5300

	arm_func_start ov4_021E5380
ov4_021E5380: ; 0x021E5380
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	sub sp, sp, #8
	ldr r4, _021E5444 ; =0x0221AE20
	mov r3, #0x30
	ldr r4, [r4, #0]
	mov r7, r1
	mla r4, r0, r3, r4
	mov r6, r2
	bl ov4_021E51C8
	strb r0, [r4, #0x1e]
	mov r0, r7
	bl ov4_021E4E04
	mov r5, r0
	cmp r5, #4
	addls pc, pc, r5, lsl #2
	b _021E5438
_021E53C0: ; jump table
	b _021E5438 ; case 0
	b _021E53D4 ; case 1
	b _021E5430 ; case 2
	b _021E5430 ; case 3
	b _021E5430 ; case 4
_021E53D4:
	cmp r6, #8
	addne sp, sp, #8
	ldmneia sp!, {r3, r4, r5, r6, r7, pc}
	add r1, sp, #0
	mov r0, r7
	mov r2, #8
	bl sub_020C4DB0
	ldr r1, [sp]
	mov r0, #0
	str r1, [r4, #0x18]
	str r0, [r4, #0x10]
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _021E5424
	ldr r1, [r4, #8]
	ldr r0, [r4, #0x18]
	cmp r1, r0
	movge r0, #2
	strgeb r0, [r4, #0x1d]
	bge _021E5438
_021E5424:
	mov r0, #4
	strb r0, [r4, #0x1d]
	b _021E5438
_021E5430:
	mov r0, #3
	strb r0, [r4, #0x1d]
_021E5438:
	strh r5, [r4, #0x22]
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E5444: .word 0x0221AE20
	arm_func_end ov4_021E5380

	arm_func_start ov4_021E5448
ov4_021E5448: ; 0x021E5448
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	ldr r3, _021E5524 ; =0x0221AE20
	mov r7, r0
	ldr r4, [r3, #0]
	mov r3, #0x30
	mla r4, r7, r3, r4
	mov r6, r1
	mov r5, r2
	bl ov4_021E51C8
	cmp r0, #2
	bne _021E54AC
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #8]
	add r1, r3, r5
	cmp r1, r0
	ble _021E5498
	ldr r1, _021E5528 ; =0xFFFE82AC
	mov r0, #6
	bl ov4_021D7724
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_021E5498:
	ldr r1, [r4, #4]
	mov r0, r6
	mov r2, r5
	add r1, r1, r3
	bl sub_020C4DB0
_021E54AC:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	str r0, [r4, #0x10]
	ldr r2, [r4, #0x18]
	cmp r0, r2
	bne _021E54F8
	mov r0, #1
	strb r0, [r4, #0x1d]
	mov r1, #0
	str r1, [r4, #0x10]
	ldr r0, _021E5524 ; =0x0221AE20
	str r1, [r4, #0x18]
	ldr r0, [r0, #0]
	ldr r3, [r0, #0x604]
	cmp r3, #0
	beq _021E54F8
	ldr r1, [r4, #4]
	mov r0, r7
	blx r3
_021E54F8:
	ldr r0, _021E5524 ; =0x0221AE20
	ldr r0, [r0, #0]
	ldr r0, [r0, #0x608]
	cmp r0, #0
	ldrne r0, [r4, #0x2c]
	cmpne r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
	bl sub_020C3880
	str r0, [r4, #0x24]
	str r1, [r4, #0x28]
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_021E5524: .word 0x0221AE20
_021E5528: .word 0xFFFE82AC
	arm_func_end ov4_021E5448

	arm_func_start ov4_021E552C
ov4_021E552C: ; 0x021E552C
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	mov r4, r1
	bl ov4_021E5194
	ldrb r1, [r0, #0x1e]
	strb r1, [r0, #0x1d]
	ldrh r1, [r0, #0x22]
	cmp r1, #2
	cmpne r1, #3
	cmpne r1, #4
	ldmneia sp!, {r3, r4, r5, pc}
	mov r0, r5
	mov r2, r4
	bl ov4_021DE4B4
	ldmia sp!, {r3, r4, r5, pc}
	arm_func_end ov4_021E552C

	arm_func_start ov4_021E5568
ov4_021E5568: ; 0x021E5568
	stmfd sp!, {r3, lr}
	bl ov4_021D9B24
	bl ov4_021F875C
	ldr r1, _021E5588 ; =0xFFFFFDF9
	add r0, r0, r1
	cmp r0, #0
	movle r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_021E5588: .word 0xFFFFFDF9
	arm_func_end ov4_021E5568

	.data


	.global Unk_ov4_02217608
Unk_ov4_02217608: ; 0x02217608
	.incbin "incbin/overlay4_data.bin", 0x1788, 0x3



	.bss


	.global Unk_ov4_0221AE20
Unk_ov4_0221AE20: ; 0x0221AE20
	.space 0x4

