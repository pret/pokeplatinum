	.include "macros/function.inc"
	.include "overlay004/ov4_02204160.inc"

	

	.text


	arm_func_start ov4_02204160
ov4_02204160: ; 0x02204160
	stmfd sp!, {r3, lr}
	ldr r1, _02204184 ; =0x0221DBD8
	ldr r1, [r1, #0x10]
	cmp r1, #0
	cmpne r1, #2
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	bl ov4_02204700
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02204184: .word 0x0221DBD8
	arm_func_end ov4_02204160

	arm_func_start ov4_02204188
ov4_02204188: ; 0x02204188
	stmfd sp!, {r3, lr}
	ldr r2, _02204238 ; =0x0221C6D0
	mov ip, #0
	cmp r0, #0
	ldr lr, [r2, #0x14]
	moveq r0, ip
	ldmeqia sp!, {r3, pc}
	ldr r1, _0220423C ; =0x0221DBD8
	ldr r1, [r1, #0x10]
	cmp r1, #2
	bne _022041C8
	ldr r1, _02204240 ; =0x0221C70C
	cmp r0, r1
	streq ip, [r2, #0x3c]
	mov r0, #1
	ldmia sp!, {r3, pc}
_022041C8:
	cmp lr, #0
	beq _02204230
_022041D0:
	cmp lr, r0
	bne _02204220
	mov r3, #0
	str r3, [r0, #0]
	cmp ip, #0
	ldrne r1, [r0, #0x14]
	strne r1, [ip, #0x14]
	bne _02204208
	ldr r2, [lr, #0x14]
	cmp r2, #0
	ldrne r1, _02204238 ; =0x0221C6D0
	strne r2, [r1, #0x14]
	ldreq r1, _02204238 ; =0x0221C6D0
	streq r3, [r1, #0x14]
_02204208:
	ldr r1, _02204238 ; =0x0221C6D0
	ldr r2, [r1, #0x10]
	str r2, [r0, #0x14]
	str r0, [r1, #0x10]
	mov r0, #1
	ldmia sp!, {r3, pc}
_02204220:
	mov ip, lr
	ldr lr, [lr, #0x14]
	cmp lr, #0
	bne _022041D0
_02204230:
	mov r0, #0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02204238: .word 0x0221C6D0
_0220423C: .word 0x0221DBD8
_02204240: .word 0x0221C70C
	arm_func_end ov4_02204188

	arm_func_start ov4_02204244
ov4_02204244: ; 0x02204244
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r0
	mov r4, r1
	mov r6, r2
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r3, #0x10
	mvnlo r0, #0
	ldmloia sp!, {r4, r5, r6, pc}
	ldr r1, _022042F0 ; =0x0221DBD8
	ldr r1, [r1, #0xc]
	cmp r1, #1
	mvneq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r4, #0
	blt _0220428C
	cmp r4, #5
	blt _02204294
_0220428C:
	mvn r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_02204294:
	mov r3, #0xff
	mov r1, r6
	and r2, r4, #0xff
	strb r3, [r6, #4]
	bl ov4_02204A50
	mov r0, r5
	mov r1, r6
	bl ov4_02204BBC
	cmp r0, #0
	mvneq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
	ldr r0, _022042F0 ; =0x0221DBD8
	ldr r0, [r0, #0x10]
	cmp r0, #1
	cmpeq r4, #0
	bne _022042E8
	mov r0, r5
	bl ov4_02204B70
	cmp r0, #0
	mvneq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
_022042E8:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022042F0: .word 0x0221DBD8
	arm_func_end ov4_02204244

	arm_func_start ov4_022042F4
ov4_022042F4: ; 0x022042F4
	stmfd sp!, {r3, lr}
	ldr r2, _02204314 ; =0x0221DBD8
	ldr r2, [r2, #0x10]
	cmp r2, #2
	mvneq r0, #2
	ldmeqia sp!, {r3, pc}
	bl ov4_0220476C
	ldmia sp!, {r3, pc}
	; .align 2, 0
_02204314: .word 0x0221DBD8
	arm_func_end ov4_022042F4

	arm_func_start ov4_02204318
ov4_02204318: ; 0x02204318
	stmfd sp!, {r4, r5, r6, lr}
	movs r5, r0
	mov r6, r1
	mov r4, r2
	mvneq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	cmp r3, #0x10
	mvnlo r0, #0
	ldmloia sp!, {r4, r5, r6, pc}
	cmp r6, #0
	blt _0220434C
	cmp r6, #6
	blt _02204354
_0220434C:
	mvn r0, #2
	ldmia sp!, {r4, r5, r6, pc}
_02204354:
	mov r3, #0
	mov r1, r4
	and r2, r6, #0xff
	strb r3, [r4, #4]
	bl ov4_02204A50
	cmp r6, #0
	bne _022043B0
	ldr r0, _022043CC ; =0x0221DBD8
	ldr r0, [r0, #0x10]
	cmp r0, #1
	ldreq r0, [r5, #0xc]
	cmpeq r0, #4
	bne _0220439C
	mov r0, r5
	bl ov4_02204B70
	cmp r0, #0
	mvneq r0, #2
	ldmeqia sp!, {r4, r5, r6, pc}
_0220439C:
	ldrb r1, [r5, #4]
	mov r0, #1
	cmp r1, #0
	movne r0, r0, lsl r1
	str r0, [r5, #8]
_022043B0:
	mov r0, r5
	mov r1, r4
	bl ov4_02204BBC
	cmp r0, #0
	mvneq r0, #2
	movne r0, #0
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_022043CC: .word 0x0221DBD8
	arm_func_end ov4_02204318

	arm_func_start ov4_022043D0
ov4_022043D0: ; 0x022043D0
	stmfd sp!, {r3, lr}
	ldr r2, _022043F0 ; =0x0221DBD8
	ldr r2, [r2, #0x10]
	cmp r2, #2
	mvneq r0, #2
	ldmeqia sp!, {r3, pc}
	bl ov4_022047B0
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022043F0: .word 0x0221DBD8
	arm_func_end ov4_022043D0

	arm_func_start ov4_022043F4
ov4_022043F4: ; 0x022043F4
	stmfd sp!, {r4, lr}
	ldr r2, _022044A4 ; =0x0221DBD8
	mov r4, r0
	ldr r1, [r2, #0x10]
	cmp r1, #3
	mvnne r0, #1
	ldmneia sp!, {r4, pc}
	ldr r1, _022044A8 ; =0x0221C6D0
	ldr r1, [r1, #0]
	cmp r1, #3
	mvneq r0, #5
	ldmeqia sp!, {r4, pc}
	ldrb r1, [r2]
	cmp r4, r1
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	bl ov4_02204C44
	cmp r0, #0
	movne r0, #0
	ldmneia sp!, {r4, pc}
	mov r0, r4
	bl ov4_02204160
	movs r2, r0
	mvneq r0, #0
	ldmeqia sp!, {r4, pc}
	strb r4, [r2, #4]
	mov r0, #1
	strb r4, [r2, #5]
	mov r3, #2
	mov r1, r0, lsl r4
	str r3, [r2, #0xc]
	ldr r0, _022044A4 ; =0x0221DBD8
	str r1, [r2, #8]
	ldr r3, [r0, #8]
	ldr ip, [r0, #4]
	mov r0, r4
	mov r1, #7
	blx ip
	ldr r1, _022044A8 ; =0x0221C6D0
	mov r0, #0
	ldr r2, [r1, #0]
	add r2, r2, #1
	str r2, [r1, #0]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022044A4: .word 0x0221DBD8
_022044A8: .word 0x0221C6D0
	arm_func_end ov4_022043F4

	arm_func_start ov4_022044AC
ov4_022044AC: ; 0x022044AC
	stmfd sp!, {r4, lr}
	mov r4, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	ldrne r1, [r4, #4]
	cmpne r1, #0
	beq _022044D0
	cmp r1, #8
	bls _022044D8
_022044D0:
	mov r0, #0
	ldmia sp!, {r4, pc}
_022044D8:
	ldr r1, _022045A4 ; =0x0221C6D0
	mov r2, #0x18
	str r0, [r1, #0x10]
	ldr r3, [r4, #4]
	mov r1, #0
	mul r2, r3, r2
	bl MI_CpuFill8
	ldr r0, _022045A8 ; =0x0221C70C
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r0, _022045AC ; =0x0221C6F4
	mov r1, #0
	mov r2, #0x18
	bl MI_CpuFill8
	ldr r3, [r4, #4]
	mov ip, #0
	subs r0, r3, #1
	beq _02204558
	ldr r1, _022045A4 ; =0x0221C6D0
	mov lr, ip
	mov r0, #0x18
_02204530:
	ldr r2, [r1, #0x10]
	add ip, ip, #1
	mla r3, ip, r0, r2
	add r2, r2, lr
	str r3, [r2, #0x14]
	ldr r3, [r4, #4]
	add lr, lr, #0x18
	sub r2, r3, #1
	cmp ip, r2
	blo _02204530
_02204558:
	ldr r1, _022045A4 ; =0x0221C6D0
	mov r0, #0x18
	ldr r2, [r1, #0x10]
	mov r4, #0
	mla r0, r3, r0, r2
	str r4, [r0, #-4]
	str r4, [r1, #0x14]
	str r4, [r1, #4]
	ldr r0, _022045B0 ; =0x0221DBD8
	str r4, [r1, #0]
	ldr r3, _022045B4 ; =OS_GetTick
	str r4, [r0, #0x14]
	ldr r2, _022045B8 ; =0x5D588B65
	str r3, [r1, #0x18]
	ldr r0, _022045BC ; =0x00269EC3
	str r2, [r1, #0x1c]
	str r0, [r1, #0x20]
	mov r0, #1
	ldmia sp!, {r4, pc}
	; .align 2, 0
_022045A4: .word 0x0221C6D0
_022045A8: .word 0x0221C70C
_022045AC: .word 0x0221C6F4
_022045B0: .word 0x0221DBD8
_022045B4: .word OS_GetTick
_022045B8: .word 0x5D588B65
_022045BC: .word 0x00269EC3
	arm_func_end ov4_022044AC

	arm_func_start ov4_022045C0
ov4_022045C0: ; 0x022045C0
	ldr r0, _022045D4 ; =0x0221C6D0
	mov r1, #0
	str r1, [r0, #0x14]
	str r1, [r0, #0x10]
	bx lr
	; .align 2, 0
_022045D4: .word 0x0221C6D0
	arm_func_end ov4_022045C0

	arm_func_start ov4_022045D8
ov4_022045D8: ; 0x022045D8
	stmfd sp!, {r3, r4, r5, lr}
	bl OS_GetTick
	ldr r2, _02204674 ; =0x0221DBD8
	ldr r3, [r2, #0x10]
	cmp r3, #2
	ldmneia sp!, {r3, r4, r5, pc}
	ldr r2, [r2, #0xc]
	cmp r2, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r3, _02204678 ; =0x0221C6D0
	mov ip, #0
	ldr r5, [r3, #0xc]
	ldr r4, [r3, #8]
	cmp r5, #0
	cmpeq r4, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldr r2, _0220467C ; =0x0221A10C
	subs r4, r0, r4
	ldr lr, [r2]
	ldr r0, [r2, #4]
	sbc r1, r1, r5
	cmp r1, r0
	cmpeq r4, lr
	ldmlsia sp!, {r3, r4, r5, pc}
	str ip, [r3, #8]
	str ip, [r3, #0xc]
	str ip, [r3, #0x3c]
	mov r0, ip
	str ip, [r3, #0x48]
	bl ov4_022048DC
	ldr r1, _02204674 ; =0x0221DBD8
	ldr r0, _02204678 ; =0x0221C6D0
	ldr r3, [r1, #8]
	ldrb r0, [r0, #0x40]
	ldr ip, [r1, #4]
	ldr r2, _02204680 ; =0x0221C70C
	mov r1, #9
	blx ip
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02204674: .word 0x0221DBD8
_02204678: .word 0x0221C6D0
_0220467C: .word 0x0221A10C
_02204680: .word 0x0221C70C
	arm_func_end ov4_022045D8

	arm_func_start ov4_02204684
ov4_02204684: ; 0x02204684
	stmfd sp!, {r3, lr}
	cmp r2, #0x10
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r2, [r1, #8]
	cmp r2, r0
	bne _022046B4
	ldr r0, _022046FC ; =0x0221DBD8
	ldrb ip, [r1, #9]
	ldrb r2, [r0]
	cmp ip, r2
	beq _022046BC
_022046B4:
	mov r0, #0
	ldmia sp!, {r3, pc}
_022046BC:
	ldrb r2, [r1, #5]
	cmp r2, #0x10
	beq _022046D8
	mov r0, r1
	mov r1, r3
	bl ov4_02204F90
	ldmia sp!, {r3, pc}
_022046D8:
	ldr r0, [r0, #0xc]
	cmp r0, #0
	mov r0, r1
	mov r1, r3
	bne _022046F4
	bl ov4_02204CC4
	ldmia sp!, {r3, pc}
_022046F4:
	bl ov4_02204E00
	ldmia sp!, {r3, pc}
	; .align 2, 0
_022046FC: .word 0x0221DBD8
	arm_func_end ov4_02204684

	arm_func_start ov4_02204700
ov4_02204700: ; 0x02204700
	stmfd sp!, {r4, lr}
	mov r1, r0
	cmp r1, #0x20
	movhs r0, #0
	ldmhsia sp!, {r4, pc}
	ldr r0, _02204764 ; =0x0221DBD8
	ldrb r0, [r0]
	cmp r1, r0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r2, _02204768 ; =0x0221C6D0
	ldr r4, [r2, #0x10]
	cmp r4, #0
	moveq r0, #0
	ldmeqia sp!, {r4, pc}
	ldr r3, [r4, #0x14]
	mov r0, r4
	str r3, [r2, #0x10]
	bl ov4_0220491C
	ldr r1, _02204768 ; =0x0221C6D0
	mov r0, r4
	ldr r2, [r1, #0x14]
	str r2, [r4, #0x14]
	str r4, [r1, #0x14]
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02204764: .word 0x0221DBD8
_02204768: .word 0x0221C6D0
	arm_func_end ov4_02204700

	arm_func_start ov4_0220476C
ov4_0220476C: ; 0x0220476C
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	add r2, sp, #0
	mov r3, #0x10
	mov r4, r0
	bl ov4_02204244
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, pc}
	add r1, sp, #0
	mov r0, r4
	bl ov4_02204964
	cmp r0, #0
	movne r0, #0
	mvneq r0, #3
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end ov4_0220476C

	arm_func_start ov4_022047B0
ov4_022047B0: ; 0x022047B0
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	add r2, sp, #0
	mov r3, #0x10
	mov r4, r0
	bl ov4_02204318
	cmp r0, #0
	addne sp, sp, #0x10
	ldmneia sp!, {r4, pc}
	add r1, sp, #0
	mov r0, r4
	bl ov4_02204964
	cmp r0, #0
	movne r0, #0
	mvneq r0, #3
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	arm_func_end ov4_022047B0

	arm_func_start ov4_022047F4
ov4_022047F4: ; 0x022047F4
	ldrb r2, [r1, #0xa]
	cmp r2, #1
	bxne lr
	ldrb r2, [r0, #4]
	ldr r0, _02204818 ; =0x0221C6D0
	strb r2, [r1, #0xb]
	ldr r0, [r0, #4]
	str r0, [r1, #0xc]
	bx lr
	; .align 2, 0
_02204818: .word 0x0221C6D0
	arm_func_end ov4_022047F4

	arm_func_start ov4_0220481C
ov4_0220481C: ; 0x0220481C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	str r0, [sp]
	mov sl, r1
	mov r8, #0
	bl ov4_022047F4
	mov r6, #1
	ldr r4, _022048D4 ; =0x0221DBD8
	ldr r5, _022048D8 ; =0x0221C6D0
	mov sb, r8
	mov r7, r6
	mov fp, #0x10
_02204848:
	cmp sb, #0
	movne r1, r7, lsl sb
	ldr r0, [r5, #4]
	moveq r1, r6
	tst r0, r1
	ldrneb r0, [r4]
	cmpne sb, r0
	beq _02204884
	mov r0, sb
	mov r1, sl
	mov r2, fp
	strb sb, [sl, #9]
	bl ov4_021E4AE8
	cmp r0, #0
	addne r8, r8, #1
_02204884:
	add r0, sb, #1
	and sb, r0, #0xff
	cmp sb, #0x20
	blo _02204848
	ldrb r0, [sl, #0xa]
	cmp r0, #1
	bne _022048B4
	ldr r0, _022048D8 ; =0x0221C6D0
	ldr r1, [r0, #4]
	ldr r0, [sp]
	str r1, [r0, #8]
	b _022048C4
_022048B4:
	cmp r0, #0
	ldreq r0, [sp]
	moveq r1, #0
	streq r1, [r0, #8]
_022048C4:
	cmp r8, #0
	mvneq r0, #3
	movne r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022048D4: .word 0x0221DBD8
_022048D8: .word 0x0221C6D0
	arm_func_end ov4_0220481C

	arm_func_start ov4_022048DC
ov4_022048DC: ; 0x022048DC
	stmfd sp!, {r4, lr}
	sub sp, sp, #0x10
	mov r4, r0
	mov r3, #0xff
	ldr r0, _02204918 ; =0x0221C70C
	add r1, sp, #0
	mov r2, #4
	strb r3, [sp, #4]
	bl ov4_02204A50
	ldr r0, _02204918 ; =0x0221C70C
	add r1, sp, #0
	strb r4, [sp, #0xa]
	bl ov4_0220481C
	add sp, sp, #0x10
	ldmia sp!, {r4, pc}
	; .align 2, 0
_02204918: .word 0x0221C70C
	arm_func_end ov4_022048DC

	arm_func_start ov4_0220491C
ov4_0220491C: ; 0x0220491C
	mov ip, r0
	mov r3, #6
	mov r2, #0
_02204928:
	strb r2, [ip]
	strb r2, [ip, #1]
	strb r2, [ip, #2]
	strb r2, [ip, #3]
	add ip, ip, #4
	subs r3, r3, #1
	bne _02204928
	ldr r2, _02204960 ; =0x0221DBD8
	mov r3, #0
	ldr r2, [r2, #0x10]
	str r2, [r0, #0]
	str r3, [r0, #0xc]
	strb r1, [r0, #4]
	bx lr
	; .align 2, 0
_02204960: .word 0x0221DBD8
	arm_func_end ov4_0220491C

	arm_func_start ov4_02204964
ov4_02204964: ; 0x02204964
	stmfd sp!, {r3, lr}
	ldrb r2, [r1, #4]
	cmp r2, #0xff
	ldreqb r2, [r1, #6]
	cmpeq r2, #4
	bne _02204984
	bl ov4_0220481C
	b _0220499C
_02204984:
	ldrb r0, [r0, #4]
	mov r2, #0x10
	bl ov4_021E4AE8
	cmp r0, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
_0220499C:
	mov r0, #1
	ldmia sp!, {r3, pc}
	arm_func_end ov4_02204964

	arm_func_start ov4_022049A4
ov4_022049A4: ; 0x022049A4
	ldrb r2, [r0, #0xb]
	strb r2, [r1, #5]
	ldrb r2, [r0, #4]
	cmp r2, #0xff
	bne _022049E8
	ldrb r2, [r0, #6]
	cmp r2, #0
	bne _022049D8
	ldrb r3, [r1, #4]
	mov r2, #1
	cmp r3, #0
	movne r2, r2, lsl r3
	str r2, [r1, #8]
_022049D8:
	ldrb r1, [r0, #6]
	ldr r0, _02204A48 ; =0x02215D28
	ldrb r0, [r0, r1]
	bx lr
_022049E8:
	cmp r2, #0
	bne _02204A40
	ldrb r2, [r0, #6]
	cmp r2, #0
	bne _02204A34
	ldr r0, [r1, #0xc]
	cmp r0, #1
	bne _02204A24
	ldrb r2, [r1, #4]
	mov r0, #1
	cmp r2, #0
	movne r0, r0, lsl r2
	str r0, [r1, #8]
	mov r0, #7
	bx lr
_02204A24:
	cmp r0, #5
	moveq r0, #9
	movne r0, #0xc
	bx lr
_02204A34:
	ldr r0, _02204A4C ; =0x02215D30
	ldrb r0, [r0, r2]
	bx lr
_02204A40:
	mov r0, #0xc
	bx lr
	; .align 2, 0
_02204A48: .word 0x02215D28
_02204A4C: .word 0x02215D30
	arm_func_end ov4_022049A4

	arm_func_start ov4_02204A50
ov4_02204A50: ; 0x02204A50
	ldr ip, _02204A90 ; =0x5F564354
	mov r3, #0x10
	str ip, [r1]
	strb r3, [r1, #5]
	ldr r3, _02204A94 ; =0x0221DBD8
	strb r2, [r1, #6]
	ldrb r2, [r3]
	strb r2, [r1, #8]
	ldrb r2, [r0, #4]
	mov r0, #0
	strb r2, [r1, #9]
	strb r0, [r1, #0xa]
	ldrb r2, [r3]
	strb r2, [r1, #0xb]
	str r0, [r1, #0xc]
	bx lr
	; .align 2, 0
_02204A90: .word 0x5F564354
_02204A94: .word 0x0221DBD8
	arm_func_end ov4_02204A50

	arm_func_start ov4_02204A98
ov4_02204A98: ; 0x02204A98
	stmfd sp!, {r3, r4, r5, lr}
	ldrb r2, [r1, #4]
	ldrb r3, [r1, #6]
	mov r4, r0
	cmp r2, #0
	addeq r3, r3, #5
	cmp r3, #0
	blt _02204AC0
	cmp r3, #0xb
	blt _02204AC4
_02204AC0:
	mvn r3, #0
_02204AC4:
	cmp r3, #0
	mvnlt r0, #0
	ldmltia sp!, {r3, r4, r5, pc}
	ldr r0, _02204B64 ; =0x0221DBD8
	ldr r2, [r4, #0xc]
	ldr r0, [r0, #0x10]
	cmp r0, #1
	ldreq r1, _02204B68 ; =0x02215DFE
	mov r0, #0xb
	ldrne r1, _02204B6C ; =0x02215D38
	mla r0, r2, r0, r1
	ldrsb r5, [r3, r0]
	mvn r1, #2
	cmp r5, r1
	beq _02204B40
	add r0, r1, #1
	cmp r5, r0
	beq _02204B20
	add r0, r1, #2
	cmp r5, r0
	mov r0, r5
	bne _02204B60
	ldmia sp!, {r3, r4, r5, pc}
_02204B20:
	mov r0, r4
	mov r1, #1
	bl ov4_022047B0
	mov r1, #0
	str r1, [r4, #0xc]
	mov r0, r5
	str r1, [r4, #0]
	ldmia sp!, {r3, r4, r5, pc}
_02204B40:
	mov r0, r4
	mov r1, #3
	bl ov4_022047B0
	mov r1, #0
	str r1, [r4, #0xc]
	mov r0, r5
	str r1, [r4, #0]
	ldmia sp!, {r3, r4, r5, pc}
_02204B60:
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02204B64: .word 0x0221DBD8
_02204B68: .word 0x02215DFE
_02204B6C: .word 0x02215D38
	arm_func_end ov4_02204A98

	arm_func_start ov4_02204B70
ov4_02204B70: ; 0x02204B70
	ldr r1, _02204BB8 ; =0x0221C6D0
	ldr r2, [r1, #0x14]
	cmp r2, #0
	beq _02204BB0
_02204B80:
	ldr r1, [r2, #0]
	cmp r1, #0
	beq _02204BA4
	ldr r1, [r2, #0xc]
	cmp r1, #2
	bne _02204BA4
	cmp r0, r2
	movne r0, #0
	bxne lr
_02204BA4:
	ldr r2, [r2, #0x14]
	cmp r2, #0
	bne _02204B80
_02204BB0:
	mov r0, #1
	bx lr
	; .align 2, 0
_02204BB8: .word 0x0221C6D0
	arm_func_end ov4_02204B70

	arm_func_start ov4_02204BBC
ov4_02204BBC: ; 0x02204BBC
	ldrb r2, [r1, #4]
	ldrb ip, [r1, #6]
	cmp r2, #0
	addeq ip, ip, #5
	cmp ip, #0
	blt _02204BDC
	cmp ip, #0xb
	blt _02204BE0
_02204BDC:
	mvn ip, #0
_02204BE0:
	cmp ip, #0
	mvnlt r0, #0
	bxlt lr
	ldr r1, _02204C38 ; =0x0221DBD8
	ldr r3, [r0, #0xc]
	ldr r1, [r1, #0x10]
	cmp r1, #1
	ldreq r2, _02204C3C ; =0x02215D7A
	mov r1, #0xb
	ldrne r2, _02204C40 ; =0x02215DBC
	mla r1, r3, r1, r2
	ldrsb r2, [ip, r1]
	mvn r1, #0
	cmp r2, r1
	moveq r0, #1
	bxeq lr
	sub r1, r1, #1
	cmp r2, r1
	moveq r0, #0
	strne r2, [r0, #0xc]
	movne r0, #1
	bx lr
	; .align 2, 0
_02204C38: .word 0x0221DBD8
_02204C3C: .word 0x02215D7A
_02204C40: .word 0x02215DBC
	arm_func_end ov4_02204BBC

	arm_func_start ov4_02204C44
ov4_02204C44: ; 0x02204C44
	ldr r1, _02204CB8 ; =0x0221DBD8
	ldr r2, _02204CBC ; =0x0221C6D0
	ldr r1, [r1, #0x10]
	ldr r3, [r2, #0x14]
	cmp r1, #2
	bne _02204C80
	ldr r1, [r2, #0x3c]
	cmp r1, #0
	beq _02204C78
	ldrb r1, [r2, #0x40]
	cmp r1, r0
	ldreq r0, _02204CC0 ; =0x0221C70C
	bxeq lr
_02204C78:
	mov r0, #0
	bx lr
_02204C80:
	cmp r3, #0
	beq _02204CB0
_02204C88:
	ldr r1, [r3, #0]
	cmp r1, #0
	beq _02204CA4
	ldrb r1, [r3, #4]
	cmp r1, r0
	moveq r0, r3
	bxeq lr
_02204CA4:
	ldr r3, [r3, #0x14]
	cmp r3, #0
	bne _02204C88
_02204CB0:
	mov r0, #0
	bx lr
	; .align 2, 0
_02204CB8: .word 0x0221DBD8
_02204CBC: .word 0x0221C6D0
_02204CC0: .word 0x0221C70C
	arm_func_end ov4_02204C44

	arm_func_start ov4_02204CC4
ov4_02204CC4: ; 0x02204CC4
	stmfd sp!, {r3, r4, r5, r6, r7, lr}
	mov r6, r0
	ldrb r2, [r6, #4]
	mov r5, r1
	cmp r2, #0xff
	bne _02204CFC
	ldrb r2, [r6, #6]
	cmp r2, #4
	bne _02204CF0
	bl ov4_02205008
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02204CF0:
	cmp r2, #3
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, pc}
_02204CFC:
	ldrb r0, [r6, #8]
	bl ov4_02204C44
	movs r4, r0
	beq _02204D7C
	mov r1, r6
	bl ov4_02204A98
	mov r7, r0
	mvn r0, #1
	cmp r7, r0
	beq _02204D38
	add r0, r0, #1
	cmp r7, r0
	bne _02204D54
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02204D38:
	mov r0, #0xc
	str r0, [r5, #0]
	mov r0, #0
	str r0, [r4, #0]
	str r4, [r5, #4]
	mov r0, #1
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02204D54:
	mov r0, r6
	mov r1, r4
	bl ov4_022049A4
	stmia r5, {r0, r4}
	str r7, [r4, #0xc]
	ldr r0, [r5, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02204D7C:
	ldrb r0, [r6, #8]
	bl ov4_02204700
	movs r7, r0
	bne _02204DAC
	ldrb r1, [r6, #8]
	ldr r0, _02204DFC ; =0x0221C6F4
	bl ov4_0220491C
	ldr r0, _02204DFC ; =0x0221C6F4
	mov r1, #3
	bl ov4_022047B0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02204DAC:
	mov r1, r6
	bl ov4_02204A98
	mov r4, r0
	add r0, r4, #2
	cmp r0, #1
	bhi _02204DD4
	mov r0, r7
	bl ov4_02204188
	mov r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
_02204DD4:
	mov r0, r6
	mov r1, r7
	bl ov4_022049A4
	stmia r5, {r0, r7}
	str r4, [r7, #0xc]
	ldr r0, [r5, #0]
	cmp r0, #0
	movne r0, #1
	moveq r0, #0
	ldmia sp!, {r3, r4, r5, r6, r7, pc}
	; .align 2, 0
_02204DFC: .word 0x0221C6F4
	arm_func_end ov4_02204CC4

	arm_func_start ov4_02204E00
ov4_02204E00: ; 0x02204E00
	stmfd sp!, {r4, r5, r6, lr}
	ldr r2, _02204F88 ; =0x0221C6D0
	mov r5, r0
	ldr r0, [r2, #0x3c]
	mov r4, r1
	cmp r0, #2
	bne _02204EB0
	ldrb r1, [r2, #0x40]
	ldrb r0, [r5, #8]
	cmp r1, r0
	bne _02204EA0
	ldr r0, _02204F8C ; =0x0221C70C
	mov r1, r5
	bl ov4_02204A98
	mov r6, r0
	mvn r1, #2
	cmp r6, r1
	beq _02204E7C
	add r0, r1, #1
	cmp r6, r0
	beq _02204E64
	add r0, r1, #2
	cmp r6, r0
	beq _02204E7C
	b _02204E84
_02204E64:
	mov r0, #0xc
	str r0, [r4, #0]
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
_02204E7C:
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02204E84:
	ldr r1, _02204F8C ; =0x0221C70C
	mov r0, r5
	bl ov4_022049A4
	ldr r1, _02204F8C ; =0x0221C70C
	stmia r4, {r0, r1}
	str r6, [r1, #0xc]
	b _02204F40
_02204EA0:
	mov r0, #1
	bl ov4_022048DC
	mov r0, #0
	ldmia sp!, {r4, r5, r6, pc}
_02204EB0:
	ldrb r1, [r5, #8]
	ldr r2, _02204F88 ; =0x0221C6D0
	cmp r1, #0
	movne r0, #1
	movne r3, r0, lsl r1
	ldr r0, [r2, #4]
	moveq r3, #1
	tst r0, r3
	moveq r0, #0
	ldmeqia sp!, {r4, r5, r6, pc}
	strb r1, [r2, #0x40]
	mov r3, #2
	str r3, [r2, #0x3c]
	mov r3, #0
	ldr r0, _02204F8C ; =0x0221C70C
	mov r1, r5
	str r3, [r2, #0x48]
	bl ov4_02204A98
	mov r6, r0
	mvn r1, #2
	cmp r6, r1
	addne r0, r1, #1
	cmpne r6, r0
	addne r0, r1, #2
	cmpne r6, r0
	bne _02204F28
	ldr r1, _02204F88 ; =0x0221C6D0
	mov r0, #0
	str r0, [r1, #0x3c]
	ldmia sp!, {r4, r5, r6, pc}
_02204F28:
	ldr r1, _02204F8C ; =0x0221C70C
	mov r0, r5
	bl ov4_022049A4
	ldr r1, _02204F8C ; =0x0221C70C
	stmia r4, {r0, r1}
	str r6, [r1, #0xc]
_02204F40:
	ldr r0, [r4, #0]
	cmp r0, #0xa
	bne _02204F68
	mov r0, #1
	bl ov4_022048DC
	bl OS_GetTick
	ldr r2, _02204F88 ; =0x0221C6D0
	str r0, [r2, #8]
	str r1, [r2, #0xc]
	b _02204F80
_02204F68:
	mov r0, #0
	bl ov4_022048DC
	ldr r0, _02204F88 ; =0x0221C6D0
	mov r1, #0
	str r1, [r0, #8]
	str r1, [r0, #0xc]
_02204F80:
	mov r0, #1
	ldmia sp!, {r4, r5, r6, pc}
	; .align 2, 0
_02204F88: .word 0x0221C6D0
_02204F8C: .word 0x0221C70C
	arm_func_end ov4_02204E00

	arm_func_start ov4_02204F90
ov4_02204F90: ; 0x02204F90
	stmfd sp!, {r3, r4, r5, lr}
	mov r5, r0
	ldrb r0, [r5, #4]
	mov r4, r1
	cmp r0, #0xff
	ldreqb r0, [r5, #6]
	cmpeq r0, #4
	moveq r0, #0
	ldmeqia sp!, {r3, r4, r5, pc}
	ldrb r0, [r5, #8]
	bl ov4_02204C44
	cmp r0, #0
	beq _02204FE4
	mov r1, #2
	str r1, [r4, #0]
	str r0, [r4, #4]
	mov r2, #0
	str r2, [r0, #0]
	bl ov4_022047B0
	mov r0, #1
	ldmia sp!, {r3, r4, r5, pc}
_02204FE4:
	ldrb r1, [r5, #8]
	ldr r0, _02205004 ; =0x0221C6F4
	bl ov4_0220491C
	ldr r0, _02205004 ; =0x0221C6F4
	mov r1, #2
	bl ov4_022047B0
	mov r0, #0
	ldmia sp!, {r3, r4, r5, pc}
	; .align 2, 0
_02205004: .word 0x0221C6F4
	arm_func_end ov4_02204F90

	arm_func_start ov4_02205008
ov4_02205008: ; 0x02205008
	stmfd sp!, {r3, lr}
	ldr r3, _0220511C ; =0x0221DBD8
	ldr r2, [r3, #0x10]
	cmp r2, #2
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb ip, [r3, #1]
	ldrb r2, [r0, #8]
	cmp ip, r2
	movne r0, #0
	ldmneia sp!, {r3, pc}
	ldrb r2, [r0, #0xa]
	cmp r2, #0
	beq _0220504C
	cmp r2, #1
	beq _02205098
	b _0220510C
_0220504C:
	ldr r0, _02205120 ; =0x0221C6D0
	ldr r2, [r0, #0x3c]
	cmp r2, #0
	moveq r0, #0
	ldmeqia sp!, {r3, pc}
	ldr r0, [r0, #0x48]
	mov r3, #0
	cmp r0, #5
	cmpne r0, #2
	moveq r0, #9
	streq r0, [r1]
	movne r0, #5
	strne r0, [r1]
	ldr r0, _02205120 ; =0x0221C6D0
	ldr r2, _02205124 ; =0x0221C70C
	str r3, [r0, #0x3c]
	str r3, [r0, #0x48]
	str r2, [r1, #4]
	b _02205114
_02205098:
	ldr r2, _02205120 ; =0x0221C6D0
	mov lr, #2
	str lr, [r2, #0x3c]
	ldrb ip, [r0, #0xb]
	ldrb r3, [r3]
	cmp ip, r3
	bne _022050C8
	str lr, [r2, #0x48]
	mov r3, #7
	str r3, [r1, #0]
	ldr r3, [r0, #0xc]
	b _022050F0
_022050C8:
	mov r3, #3
	str r3, [r2, #0x48]
	mov r2, #6
	str r2, [r1, #0]
	ldrb r3, [r0, #0xb]
	cmp r3, #0
	movne r2, #1
	movne r3, r2, lsl r3
	ldr r2, _02205120 ; =0x0221C6D0
	moveq r3, #1
_022050F0:
	str r3, [r2, #0x44]
	ldrb r3, [r0, #0xb]
	ldr r0, _02205120 ; =0x0221C6D0
	ldr r2, _02205124 ; =0x0221C70C
	strb r3, [r0, #0x41]
	str r2, [r1, #4]
	b _02205114
_0220510C:
	mov r0, #0
	ldmia sp!, {r3, pc}
_02205114:
	mov r0, #1
	ldmia sp!, {r3, pc}
	; .align 2, 0
_0220511C: .word 0x0221DBD8
_02205120: .word 0x0221C6D0
_02205124: .word 0x0221C70C
	arm_func_end ov4_02205008

	.rodata


	.global Unk_ov4_02215D28
Unk_ov4_02215D28: ; 0x02215D28
	.incbin "incbin/overlay4_rodata.bin", 0x4C0, 0x4C8 - 0x4C0

	.global Unk_ov4_02215D30
Unk_ov4_02215D30: ; 0x02215D30
	.incbin "incbin/overlay4_rodata.bin", 0x4C8, 0x4D0 - 0x4C8

	.global Unk_ov4_02215D38
Unk_ov4_02215D38: ; 0x02215D38
	.incbin "incbin/overlay4_rodata.bin", 0x4D0, 0x512 - 0x4D0

	.global Unk_ov4_02215D7A
Unk_ov4_02215D7A: ; 0x02215D7A
	.incbin "incbin/overlay4_rodata.bin", 0x512, 0x554 - 0x512

	.global Unk_ov4_02215DBC
Unk_ov4_02215DBC: ; 0x02215DBC
	.incbin "incbin/overlay4_rodata.bin", 0x554, 0x596 - 0x554

	.global Unk_ov4_02215DFE
Unk_ov4_02215DFE: ; 0x02215DFE
	.incbin "incbin/overlay4_rodata.bin", 0x596, 0x42



	.data


	.global Unk_ov4_0221A10C
Unk_ov4_0221A10C: ; 0x0221A10C
	.incbin "incbin/overlay4_data.bin", 0x428C, 0x8



	.bss


	.global Unk_ov4_0221C6D0
Unk_ov4_0221C6D0: ; 0x0221C6D0
	.space 0x4

	.global Unk_ov4_0221C6D4
Unk_ov4_0221C6D4: ; 0x0221C6D4
	.space 0x4

	.global Unk_ov4_0221C6D8
Unk_ov4_0221C6D8: ; 0x0221C6D8
	.space 0x8

	.global Unk_ov4_0221C6E0
Unk_ov4_0221C6E0: ; 0x0221C6E0
	.space 0x44

