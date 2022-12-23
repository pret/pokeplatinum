	.include "macros/function.inc"
	.include "overlay004/ov4_02201504.inc"

	

	.text


	arm_func_start ov4_02201504
ov4_02201504: ; 0x02201504
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r6, #0
	cmp r2, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	ldr lr, _0220164C ; =0x00007FFF
	ldr ip, _02201650 ; =0x02215C44
	ldr r5, _02201654 ; =0x02215C54
	rsb r4, r4, #0
_02201528:
	ldrb r7, [r3, #2]
	ldrb sl, [r0]
	ldrsh r8, [r3]
	mov sb, r7, lsl #1
	ldrsh fp, [r5, sb]
	and sl, sl, #0xf
	tst sl, #4
	mov sb, fp, asr #3
	addne sb, sb, fp
	tst sl, #2
	addne sb, sb, fp, asr #1
	tst sl, #1
	addne sb, sb, fp, asr #2
	tst sl, #8
	beq _02201574
	sub r8, r8, sb
	cmp r8, r4
	movlt r8, r4
	b _02201580
_02201574:
	add r8, r8, sb
	cmp r8, lr
	movgt r8, lr
_02201580:
	ldrsb sb, [ip, sl]
	adds r7, r7, sb
	movmi r7, #0
	bmi _02201598
	cmp r7, #0x58
	movgt r7, #0x58
_02201598:
	mov r8, r8, lsl #0x10
	mov r8, r8, asr #0x10
	strh r8, [r3]
	strb r7, [r3, #2]
	strh r8, [r1]
	ldrb r7, [r3, #2]
	ldrb sl, [r0]
	ldrsh r8, [r3]
	mov sb, r7, lsl #1
	ldrsh fp, [r5, sb]
	mov sl, sl, asr #4
	and sl, sl, #0xf
	mov sb, fp, asr #3
	tst sl, #4
	addne sb, sb, fp
	tst sl, #2
	addne sb, sb, fp, asr #1
	tst sl, #1
	addne sb, sb, fp, asr #2
	tst sl, #8
	beq _022015FC
	sub r8, r8, sb
	cmp r8, r4
	movlt r8, r4
	b _02201608
_022015FC:
	add r8, r8, sb
	cmp r8, lr
	movgt r8, lr
_02201608:
	ldrsb sb, [ip, sl]
	adds r7, r7, sb
	movmi r7, #0
	bmi _02201620
	cmp r7, #0x58
	movgt r7, #0x58
_02201620:
	mov r8, r8, lsl #0x10
	mov r8, r8, asr #0x10
	strh r8, [r3]
	strb r7, [r3, #2]
	add r6, r6, #1
	strh r8, [r1, #2]
	cmp r6, r2
	add r1, r1, #4
	add r0, r0, #1
	blo _02201528
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220164C: .word 0x00007FFF
_02201650: .word 0x02215C44
_02201654: .word 0x02215C54
	arm_func_end ov4_02201504

	arm_func_start ov4_02201658
ov4_02201658: ; 0x02201658
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs r8, r2, lsr #1
	mov r4, #0
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov ip, #0x8000
	rsb ip, ip, #0
	ldr lr, _022017DC ; =0x02215C54
	mov r2, ip, lsr #0x11
_02201678:
	ldrb r6, [r3, #2]
	ldrsh r7, [r3]
	ldrsh r5, [r1]
	mov sb, r6, lsl #1
	ldrsh sb, [lr, sb]
	subs sl, r5, r7
	movmi r5, #8
	rsbmi sl, sl, #0
	movpl r5, #0
	cmp sl, sb
	orrge r5, r5, #4
	subge sl, sl, sb
	cmp sl, sb, asr #1
	orrge r5, r5, #2
	subge sl, sl, sb, asr #1
	cmp sl, sb, asr #2
	orrge r5, r5, #1
	mov sl, sb, asr #3
	tst r5, #4
	addne sl, sl, sb
	tst r5, #2
	addne sl, sl, sb, asr #1
	tst r5, #1
	addne sl, sl, sb, asr #2
	tst r5, #8
	rsbne sl, sl, #0
	add sb, r7, sl
	ldr r7, _022017E0 ; =0x02215C44
	cmp sb, ip
	movlt sb, ip
	cmp sb, ip, lsr #17
	ldrsb r7, [r7, r5]
	movgt sb, r2
	adds r6, r6, r7
	movmi r6, #0
	bmi _02201710
	cmp r6, #0x58
	movgt r6, #0x58
_02201710:
	strh sb, [r3]
	strb r6, [r3, #2]
	and r7, r6, #0xff
	ldrsh r6, [r1, #2]
	ldrsh sb, [r3]
	mov sl, r7, lsl #1
	ldrsh sl, [lr, sl]
	subs fp, r6, sb
	movmi r6, #8
	rsbmi fp, fp, #0
	movpl r6, #0
	cmp fp, sl
	orrge r6, r6, #4
	subge fp, fp, sl
	cmp fp, sl, asr #1
	orrge r6, r6, #2
	subge fp, fp, sl, asr #1
	cmp fp, sl, asr #2
	orrge r6, r6, #1
	mov fp, sl, asr #3
	tst r6, #4
	addne fp, fp, sl
	tst r6, #2
	addne fp, fp, sl, asr #1
	tst r6, #1
	addne fp, fp, sl, asr #2
	tst r6, #8
	rsbne fp, fp, #0
	add sl, sb, fp
	ldr sb, _022017E0 ; =0x02215C44
	cmp sl, ip
	movlt sl, ip
	cmp sl, ip, lsr #17
	ldrsb sb, [sb, r6]
	movgt sl, r2
	and r5, r5, #0xff
	adds r7, r7, sb
	add r1, r1, #4
	movmi r7, #0
	bmi _022017B8
	cmp r7, #0x58
	movgt r7, #0x58
_022017B8:
	strh sl, [r3]
	strb r7, [r3, #2]
	and r6, r6, #0xff
	orr r5, r5, r6, lsl #4
	strb r5, [r0], #1
	add r4, r4, #1
	cmp r4, r8
	blo _02201678
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022017DC: .word 0x02215C54
_022017E0: .word 0x02215C44
	arm_func_end ov4_02201658

	arm_func_start ov4_022017E4
ov4_022017E4: ; 0x022017E4
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #0x10
	ldr r5, _02201C68 ; =0xAAAAAAAB
	mov r4, #0
	str r4, [sp, #0xc]
	umull r5, r4, r2, r5
	movs r2, r4, lsr #1
	str r2, [sp]
	addeq sp, sp, #0x10
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	ldr lr, _02201C6C ; =0x00007FFF
	ldr r5, _02201C70 ; =0x02215C54
	rsb r4, r4, #0
_0220181C:
	ldrb r7, [r3, #2]
	ldrb fp, [r0]
	ldrb r2, [r0, #1]
	mov r6, r7, lsl #1
	ldrsh r6, [r5, r6]
	mov sb, fp, asr #5
	tst sb, #2
	str r6, [sp, #8]
	ldrne sl, [sp, #8]
	mov r6, r6, asr #2
	addne r6, r6, sl
	tst sb, #1
	ldrne sl, [sp, #8]
	ldrb ip, [r0, #2]
	addne r6, r6, sl, asr #1
	ldrsh r8, [r3]
	tst sb, #4
	beq _02201874
	sub r8, r8, r6
	cmp r8, r4
	movlt r8, r4
	b _02201880
_02201874:
	add r8, r8, r6
	cmp r8, lr
	movgt r8, lr
_02201880:
	ldr r6, _02201C74 ; =0x02215C3C
	ldrsb r6, [r6, sb]
	adds r7, r7, r6
	movmi r7, #0
	bmi _0220189C
	cmp r7, #0x58
	movgt r7, #0x58
_0220189C:
	mov r6, r8, lsl #0x10
	mov r6, r6, asr #0x10
	strh r6, [r3]
	strb r7, [r3, #2]
	strh r6, [r1]
	ldrb r7, [r3, #2]
	mov sb, fp, asr #2
	tst sb, #2
	mov r6, r7, lsl #1
	ldrsh r6, [r5, r6]
	ldrsh r8, [r3]
	str r6, [sp, #4]
	ldrne sl, [sp, #4]
	mov r6, r6, asr #2
	addne r6, r6, sl
	tst sb, #1
	ldrne sl, [sp, #4]
	addne r6, r6, sl, asr #1
	tst sb, #4
	beq _022018FC
	sub r8, r8, r6
	cmp r8, r4
	movlt r8, r4
	b _02201908
_022018FC:
	add r8, r8, r6
	cmp r8, lr
	movgt r8, lr
_02201908:
	ldr r6, _02201C74 ; =0x02215C3C
	and sb, sb, #7
	ldrsb r6, [r6, sb]
	adds r7, r7, r6
	movmi r7, #0
	bmi _02201928
	cmp r7, #0x58
	movgt r7, #0x58
_02201928:
	mov r6, r8, lsl #0x10
	mov r6, r6, asr #0x10
	strh r6, [r3]
	strb r7, [r3, #2]
	strh r6, [r1, #2]
	ldrb r6, [r3, #2]
	mov r8, fp, lsl #1
	and r8, r8, #7
	mov sb, r6, lsl #1
	ldrsh sl, [r5, sb]
	orr r8, r8, r2, asr #7
	tst r8, #2
	mov sb, sl, asr #2
	addne sb, sb, sl
	tst r8, #1
	addne sb, sb, sl, asr #1
	ldrsh r7, [r3]
	tst r8, #4
	beq _02201984
	sub r7, r7, sb
	cmp r7, r4
	movlt r7, r4
	b _02201990
_02201984:
	add r7, r7, sb
	cmp r7, lr
	movgt r7, lr
_02201990:
	ldr sb, _02201C74 ; =0x02215C3C
	ldrsb r8, [sb, r8]
	adds r6, r6, r8
	movmi r6, #0
	bmi _022019AC
	cmp r6, #0x58
	movgt r6, #0x58
_022019AC:
	mov r7, r7, lsl #0x10
	mov r7, r7, asr #0x10
	strh r7, [r3]
	strb r6, [r3, #2]
	strh r7, [r1, #4]
	ldrb r6, [r3, #2]
	mov r8, r2, asr #4
	tst r8, #2
	mov sb, r6, lsl #1
	ldrsh sl, [r5, sb]
	ldrsh r7, [r3]
	mov sb, sl, asr #2
	addne sb, sb, sl
	tst r8, #1
	addne sb, sb, sl, asr #1
	tst r8, #4
	beq _02201A00
	sub r7, r7, sb
	cmp r7, r4
	movlt r7, r4
	b _02201A0C
_02201A00:
	add r7, r7, sb
	cmp r7, lr
	movgt r7, lr
_02201A0C:
	and sb, r8, #7
	ldr r8, _02201C74 ; =0x02215C3C
	ldrsb r8, [r8, sb]
	adds r6, r6, r8
	movmi r6, #0
	bmi _02201A2C
	cmp r6, #0x58
	movgt r6, #0x58
_02201A2C:
	mov r7, r7, lsl #0x10
	mov r7, r7, asr #0x10
	strh r7, [r3]
	strb r6, [r3, #2]
	strh r7, [r1, #6]
	ldrb r6, [r3, #2]
	mov r8, r2, asr #1
	tst r8, #2
	mov sb, r6, lsl #1
	ldrsh sl, [r5, sb]
	ldrsh r7, [r3]
	mov sb, sl, asr #2
	addne sb, sb, sl
	tst r8, #1
	addne sb, sb, sl, asr #1
	tst r8, #4
	beq _02201A80
	sub r7, r7, sb
	cmp r7, r4
	movlt r7, r4
	b _02201A8C
_02201A80:
	add r7, r7, sb
	cmp r7, lr
	movgt r7, lr
_02201A8C:
	and sb, r8, #7
	ldr r8, _02201C74 ; =0x02215C3C
	ldrsb r8, [r8, sb]
	adds r6, r6, r8
	movmi r6, #0
	bmi _02201AAC
	cmp r6, #0x58
	movgt r6, #0x58
_02201AAC:
	mov r7, r7, lsl #0x10
	mov r8, r7, asr #0x10
	strh r8, [r3]
	mov r2, r2, lsl #2
	strb r6, [r3, #2]
	and r2, r2, #7
	strh r8, [r1, #8]
	orr r7, r2, ip, asr #6
	ldrb r2, [r3, #2]
	tst r7, #2
	ldrsh r6, [r3]
	mov r8, r2, lsl #1
	ldrsh sb, [r5, r8]
	mov r8, sb, asr #2
	addne r8, r8, sb
	tst r7, #1
	addne r8, r8, sb, asr #1
	tst r7, #4
	beq _02201B08
	sub r6, r6, r8
	cmp r6, r4
	movlt r6, r4
	b _02201B14
_02201B08:
	add r6, r6, r8
	cmp r6, lr
	movgt r6, lr
_02201B14:
	ldr r8, _02201C74 ; =0x02215C3C
	ldrsb r7, [r8, r7]
	adds r2, r2, r7
	movmi r2, #0
	bmi _02201B30
	cmp r2, #0x58
	movgt r2, #0x58
_02201B30:
	mov r6, r6, lsl #0x10
	mov r6, r6, asr #0x10
	strh r6, [r3]
	strb r2, [r3, #2]
	strh r6, [r1, #0xa]
	ldrb r2, [r3, #2]
	mov sb, ip, asr #3
	tst sb, #2
	mov r7, r2, lsl #1
	ldrsh r8, [r5, r7]
	ldrsh r6, [r3]
	mov r7, r8, asr #2
	addne r7, r7, r8
	tst sb, #1
	addne r7, r7, r8, asr #1
	tst sb, #4
	beq _02201B84
	sub r6, r6, r7
	cmp r6, r4
	movlt r6, r4
	b _02201B90
_02201B84:
	add r6, r6, r7
	cmp r6, lr
	movgt r6, lr
_02201B90:
	ldr r7, _02201C74 ; =0x02215C3C
	and r8, sb, #7
	ldrsb r7, [r7, r8]
	adds r2, r2, r7
	movmi r2, #0
	bmi _02201BB0
	cmp r2, #0x58
	movgt r2, #0x58
_02201BB0:
	mov r6, r6, lsl #0x10
	mov r6, r6, asr #0x10
	strh r6, [r3]
	strb r2, [r3, #2]
	strh r6, [r1, #0xc]
	ldrb r2, [r3, #2]
	tst ip, #2
	ldrsh r6, [r3]
	mov r7, r2, lsl #1
	ldrsh r8, [r5, r7]
	mov r7, r8, asr #2
	addne r7, r7, r8
	tst ip, #1
	addne r7, r7, r8, asr #1
	tst ip, #4
	beq _02201C00
	sub r6, r6, r7
	cmp r6, r4
	movlt r6, r4
	b _02201C0C
_02201C00:
	add r6, r6, r7
	cmp r6, lr
	movgt r6, lr
_02201C0C:
	ldr r7, _02201C74 ; =0x02215C3C
	and r8, ip, #7
	ldrsb r7, [r7, r8]
	adds r2, r2, r7
	movmi r2, #0
	bmi _02201C2C
	cmp r2, #0x58
	movgt r2, #0x58
_02201C2C:
	mov r6, r6, lsl #0x10
	mov r6, r6, asr #0x10
	strh r6, [r3]
	strb r2, [r3, #2]
	ldr r2, [sp, #0xc]
	strh r6, [r1, #0xe]
	add r6, r2, #1
	ldr r2, [sp]
	add r0, r0, #3
	add r1, r1, #0x10
	str r6, [sp, #0xc]
	cmp r6, r2
	blo _0220181C
	add sp, sp, #0x10
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02201C68: .word 0xAAAAAAAB
_02201C6C: .word 0x00007FFF
_02201C70: .word 0x02215C54
_02201C74: .word 0x02215C3C
	arm_func_end ov4_022017E4

	arm_func_start ov4_02201C78
ov4_02201C78: ; 0x02201C78
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	sub sp, sp, #8
	movs r2, r2, lsr #3
	str r2, [sp]
	mov r2, #0
	str r2, [sp, #4]
	addeq sp, sp, #8
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r6, #0x8000
	rsb r6, r6, #0
	ldr r7, _0220217C ; =0x02215C54
	ldr r4, _02202180 ; =0x02215C3C
	mov r5, r6, lsr #0x11
_02201CAC:
	ldrsh r2, [r3]
	ldrsh sb, [r1]
	ldrb r8, [r3, #2]
	subs fp, sb, r2
	mov sb, r8, lsl #1
	movmi sl, #4
	ldrsh sb, [r7, sb]
	rsbmi fp, fp, #0
	movpl sl, #0
	cmp fp, sb
	orrge sl, sl, #2
	subge fp, fp, sb
	cmp fp, sb, asr #1
	orrge sl, sl, #1
	mov fp, sb, asr #2
	tst sl, #2
	addne fp, fp, sb
	tst sl, #1
	addne fp, fp, sb, asr #1
	tst sl, #4
	rsbne fp, fp, #0
	add sb, r2, fp
	cmp sb, r6
	movlt sb, r6
	cmp sb, r6, lsr #17
	ldrsb r2, [r4, sl]
	movgt sb, r5
	adds r8, r8, r2
	movmi r8, #0
	bmi _02201D2C
	cmp r8, #0x58
	movgt r8, #0x58
_02201D2C:
	strh sb, [r3]
	strb r8, [r3, #2]
	and r2, sl, #0xff
	and sb, r8, #0xff
	mov fp, sb, lsl #1
	ldrsh sl, [r3]
	ldrsh r8, [r1, #2]
	ldrsh fp, [r7, fp]
	mov r2, r2, lsl #5
	subs ip, r8, sl
	movmi r8, #4
	rsbmi ip, ip, #0
	movpl r8, #0
	cmp ip, fp
	orrge r8, r8, #2
	subge ip, ip, fp
	cmp ip, fp, asr #1
	orrge r8, r8, #1
	mov ip, fp, asr #2
	tst r8, #2
	addne ip, ip, fp
	tst r8, #1
	addne ip, ip, fp, asr #1
	tst r8, #4
	rsbne ip, ip, #0
	add fp, sl, ip
	cmp fp, r6
	movlt fp, r6
	cmp fp, r6, lsr #17
	ldrsb sl, [r4, r8]
	movgt fp, r5
	and r2, r2, #0xff
	adds sb, sb, sl
	movmi sb, #0
	bmi _02201DC0
	cmp sb, #0x58
	movgt sb, #0x58
_02201DC0:
	strh fp, [r3]
	strb sb, [r3, #2]
	and r8, r8, #0xff
	orr r2, r2, r8, lsl #2
	and sb, sb, #0xff
	mov fp, sb, lsl #1
	ldrsh sl, [r3]
	ldrsh r8, [r1, #4]
	ldrsh fp, [r7, fp]
	and r2, r2, #0xff
	subs ip, r8, sl
	movmi r8, #4
	rsbmi ip, ip, #0
	movpl r8, #0
	cmp ip, fp
	orrge r8, r8, #2
	subge ip, ip, fp
	cmp ip, fp, asr #1
	orrge r8, r8, #1
	mov ip, fp, asr #2
	tst r8, #2
	addne ip, ip, fp
	tst r8, #1
	addne ip, ip, fp, asr #1
	tst r8, #4
	rsbne ip, ip, #0
	add fp, sl, ip
	cmp fp, r6
	movlt fp, r6
	cmp fp, r6, lsr #17
	ldrsb sl, [r4, r8]
	movgt fp, r5
	adds sb, sb, sl
	movmi sb, #0
	bmi _02201E54
	cmp sb, #0x58
	movgt sb, #0x58
_02201E54:
	strh fp, [r3]
	and lr, r8, #0xff
	strb sb, [r3, #2]
	orr r2, r2, lr, asr #1
	strb r2, [r0]
	ldrb sb, [r3, #2]
	ldrsh r8, [r3]
	ldrsh r2, [r1, #6]
	mov sl, sb, lsl #1
	ldrsh sl, [r7, sl]
	subs fp, r2, r8
	movmi r2, #4
	rsbmi fp, fp, #0
	movpl r2, #0
	cmp fp, sl
	orrge r2, r2, #2
	subge fp, fp, sl
	cmp fp, sl, asr #1
	orrge r2, r2, #1
	mov fp, sl, asr #2
	tst r2, #2
	addne fp, fp, sl
	tst r2, #1
	addne fp, fp, sl, asr #1
	tst r2, #4
	rsbne fp, fp, #0
	add sl, r8, fp
	cmp sl, r6
	movlt sl, r6
	cmp sl, r6, lsr #17
	ldrsb r8, [r4, r2]
	movgt sl, r5
	adds sb, sb, r8
	movmi sb, #0
	bmi _02201EE8
	cmp sb, #0x58
	movgt sb, #0x58
_02201EE8:
	strh sl, [r3]
	and r2, r2, #0xff
	mov r2, r2, lsl #4
	strb sb, [r3, #2]
	and r8, r2, #0xff
	and ip, sb, #0xff
	ldrsh r2, [r3]
	ldrsh sb, [r1, #8]
	subs fp, sb, r2
	mov sb, ip, lsl #1
	movmi sl, #4
	ldrsh sb, [r7, sb]
	rsbmi fp, fp, #0
	movpl sl, #0
	cmp fp, sb
	orrge sl, sl, #2
	subge fp, fp, sb
	cmp fp, sb, asr #1
	orrge sl, sl, #1
	mov fp, sb, asr #2
	tst sl, #2
	addne fp, fp, sb
	tst sl, #1
	addne fp, fp, sb, asr #1
	tst sl, #4
	rsbne fp, fp, #0
	add sb, r2, fp
	cmp sb, r6
	movlt sb, r6
	cmp sb, r6, lsr #17
	ldrsb r2, [r4, sl]
	movgt sb, r5
	adds ip, ip, r2
	movmi ip, #0
	bmi _02201F7C
	cmp ip, #0x58
	movgt ip, #0x58
_02201F7C:
	strh sb, [r3]
	strb ip, [r3, #2]
	and r2, sl, #0xff
	orr r2, r8, r2, lsl #1
	and r8, r2, #0xff
	ldrsh r2, [r3]
	ldrsh sb, [r1, #0xa]
	and ip, ip, #0xff
	subs fp, sb, r2
	mov sb, ip, lsl #1
	movmi sl, #4
	ldrsh sb, [r7, sb]
	rsbmi fp, fp, #0
	movpl sl, #0
	cmp fp, sb
	orrge sl, sl, #2
	subge fp, fp, sb
	cmp fp, sb, asr #1
	orrge sl, sl, #1
	mov fp, sb, asr #2
	tst sl, #2
	addne fp, fp, sb
	tst sl, #1
	addne fp, fp, sb, asr #1
	tst sl, #4
	rsbne fp, fp, #0
	add r2, r2, fp
	cmp r2, r6
	movlt r2, r6
	cmp r2, r6, lsr #17
	ldrsb sb, [r4, sl]
	movgt r2, r5
	adds ip, ip, sb
	movmi ip, #0
	bmi _02202010
	cmp ip, #0x58
	movgt ip, #0x58
_02202010:
	strh r2, [r3]
	orr r8, r8, lr, lsl #7
	and r2, sl, #0xff
	strb ip, [r3, #2]
	orr r8, r8, r2, asr #2
	strb r8, [r0, #1]
	ldrb sb, [r3, #2]
	ldrsh sl, [r3]
	ldrsh r8, [r1, #0xc]
	mov fp, sb, lsl #1
	ldrsh fp, [r7, fp]
	subs ip, r8, sl
	movmi r8, #4
	rsbmi ip, ip, #0
	movpl r8, #0
	cmp ip, fp
	orrge r8, r8, #2
	subge ip, ip, fp
	cmp ip, fp, asr #1
	orrge r8, r8, #1
	mov ip, fp, asr #2
	tst r8, #2
	addne ip, ip, fp
	tst r8, #1
	addne ip, ip, fp, asr #1
	tst r8, #4
	rsbne ip, ip, #0
	add fp, sl, ip
	cmp fp, r6
	movlt fp, r6
	cmp fp, r6, lsr #17
	ldrsb sl, [r4, r8]
	movgt fp, r5
	adds sb, sb, sl
	movmi sb, #0
	bmi _022020A8
	cmp sb, #0x58
	movgt sb, #0x58
_022020A8:
	strh fp, [r3]
	and r8, r8, #0xff
	mov r8, r8, lsl #3
	strb sb, [r3, #2]
	and ip, r8, #0xff
	and sl, sb, #0xff
	ldrsh r8, [r1, #0xe]
	ldrsh fp, [r3]
	mov lr, sl, lsl #1
	ldrsh lr, [r7, lr]
	subs sb, r8, fp
	movmi r8, #4
	rsbmi sb, sb, #0
	movpl r8, #0
	cmp sb, lr
	orrge r8, r8, #2
	subge sb, sb, lr
	cmp sb, lr, asr #1
	orrge r8, r8, #1
	mov sb, lr, asr #2
	tst r8, #2
	addne sb, sb, lr
	tst r8, #1
	addne sb, sb, lr, asr #1
	tst r8, #4
	rsbne sb, sb, #0
	add fp, fp, sb
	cmp fp, r6
	movlt fp, r6
	cmp fp, r6, lsr #17
	ldrsb sb, [r4, r8]
	movgt fp, r5
	add r1, r1, #0x10
	adds sl, sl, sb
	movmi sl, #0
	bmi _02202140
	cmp sl, #0x58
	movgt sl, #0x58
_02202140:
	and r8, r8, #0xff
	strh fp, [r3]
	orr r8, ip, r8
	strb sl, [r3, #2]
	orr r2, r8, r2, lsl #6
	strb r2, [r0, #2]
	ldr r2, [sp, #4]
	add r0, r0, #3
	add r8, r2, #1
	ldr r2, [sp]
	str r8, [sp, #4]
	cmp r8, r2
	blo _02201CAC
	add sp, sp, #8
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_0220217C: .word 0x02215C54
_02202180: .word 0x02215C3C
	arm_func_end ov4_02201C78

	arm_func_start ov4_02202184
ov4_02202184: ; 0x02202184
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	mov r7, #0
	cmp r2, #0
	ldmlsia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	ldr lr, _02202390 ; =0x00007FFF
	ldr ip, _02202394 ; =0x02215C38
	ldr r6, _02202398 ; =0x02215C54
	rsb r4, r4, #0
	mov r5, r7
_022021AC:
	ldrb sl, [r0]
	ldrb r8, [r3, #2]
	ldrsh sb, [r3]
	and fp, sl, #3
	mov sl, r8, lsl #1
	ldrsh sl, [r6, sl]
	tst fp, #1
	moveq sl, r5
	tst fp, #2
	beq _022021E4
	sub sb, sb, sl
	cmp sb, r4
	movlt sb, r4
	b _022021F0
_022021E4:
	add sb, sb, sl
	cmp sb, lr
	movgt sb, lr
_022021F0:
	ldrsb sl, [ip, fp]
	adds r8, r8, sl
	movmi r8, #0
	bmi _02202208
	cmp r8, #0x58
	movgt r8, #0x58
_02202208:
	mov sb, sb, lsl #0x10
	mov sb, sb, asr #0x10
	strh sb, [r3]
	strb r8, [r3, #2]
	strh sb, [r1]
	ldrb sl, [r0]
	ldrb r8, [r3, #2]
	ldrsh sb, [r3]
	mov sl, sl, asr #2
	and fp, sl, #3
	mov sl, r8, lsl #1
	ldrsh sl, [r6, sl]
	tst fp, #1
	moveq sl, #0
	tst fp, #2
	beq _02202258
	sub sb, sb, sl
	cmp sb, r4
	movlt sb, r4
	b _02202264
_02202258:
	add sb, sb, sl
	cmp sb, lr
	movgt sb, lr
_02202264:
	ldrsb sl, [ip, fp]
	adds r8, r8, sl
	movmi r8, #0
	bmi _0220227C
	cmp r8, #0x58
	movgt r8, #0x58
_0220227C:
	mov sb, sb, lsl #0x10
	mov sb, sb, asr #0x10
	strh sb, [r3]
	strb r8, [r3, #2]
	strh sb, [r1, #2]
	ldrb sl, [r0]
	ldrb r8, [r3, #2]
	ldrsh sb, [r3]
	mov sl, sl, asr #4
	and fp, sl, #3
	mov sl, r8, lsl #1
	ldrsh sl, [r6, sl]
	tst fp, #1
	moveq sl, #0
	tst fp, #2
	beq _022022CC
	sub sb, sb, sl
	cmp sb, r4
	movlt sb, r4
	b _022022D8
_022022CC:
	add sb, sb, sl
	cmp sb, lr
	movgt sb, lr
_022022D8:
	ldrsb sl, [ip, fp]
	adds r8, r8, sl
	movmi r8, #0
	bmi _022022F0
	cmp r8, #0x58
	movgt r8, #0x58
_022022F0:
	mov sb, sb, lsl #0x10
	mov sb, sb, asr #0x10
	strh sb, [r3]
	strb r8, [r3, #2]
	strh sb, [r1, #4]
	ldrb sl, [r0]
	ldrb r8, [r3, #2]
	ldrsh sb, [r3]
	mov sl, sl, asr #6
	and fp, sl, #3
	mov sl, r8, lsl #1
	ldrsh sl, [r6, sl]
	tst fp, #1
	moveq sl, #0
	tst fp, #2
	beq _02202340
	sub sb, sb, sl
	cmp sb, r4
	movlt sb, r4
	b _0220234C
_02202340:
	add sb, sb, sl
	cmp sb, lr
	movgt sb, lr
_0220234C:
	ldrsb sl, [ip, fp]
	adds r8, r8, sl
	movmi r8, #0
	bmi _02202364
	cmp r8, #0x58
	movgt r8, #0x58
_02202364:
	mov sb, sb, lsl #0x10
	mov sb, sb, asr #0x10
	strh sb, [r3]
	strb r8, [r3, #2]
	add r7, r7, #1
	strh sb, [r1, #6]
	add r1, r1, #8
	add r0, r0, #1
	cmp r7, r2
	blo _022021AC
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_02202390: .word 0x00007FFF
_02202394: .word 0x02215C38
_02202398: .word 0x02215C54
	arm_func_end ov4_02202184

	arm_func_start ov4_0220239C
ov4_0220239C: ; 0x0220239C
	stmfd sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, lr}
	movs r2, r2, lsr #2
	mov fp, #0
	str r2, [sp]
	ldmeqia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	mov r4, #0x8000
	rsb r4, r4, #0
	ldr r5, _022025C4 ; =0x02215C54
	ldr ip, _022025C8 ; =0x02215C38
	mov lr, r4, lsr #0x11
_022023C4:
	ldrb r7, [r3, #2]
	ldrsh r6, [r3]
	ldrsh r2, [r1]
	mov r8, r7, lsl #1
	ldrsh r8, [r5, r8]
	subs sb, r2, r6
	movmi r2, #2
	rsbmi sb, sb, #0
	movpl r2, #0
	cmp sb, r8
	orrge r2, r2, #1
	tst r2, #1
	moveq r8, #0
	tst r2, #2
	rsbne r8, r8, #0
	add r8, r6, r8
	cmp r8, r4
	movlt r8, r4
	cmp r8, r4, lsr #17
	ldrsb r6, [ip, r2]
	movgt r8, lr
	adds r7, r7, r6
	movmi r7, #0
	bmi _0220242C
	cmp r7, #0x58
	movgt r7, #0x58
_0220242C:
	strh r8, [r3]
	strb r7, [r3, #2]
	and r6, r2, #0xff
	ldrsh sl, [r3]
	ldrsh r2, [r1, #2]
	and sb, r7, #0xff
	subs r8, r2, sl
	mov r2, sb, lsl #1
	movmi r7, #2
	ldrsh r2, [r5, r2]
	rsbmi r8, r8, #0
	movpl r7, #0
	cmp r8, r2
	orrge r7, r7, #1
	tst r7, #1
	moveq r2, #0
	tst r7, #2
	rsbne r2, r2, #0
	add r8, sl, r2
	cmp r8, r4
	movlt r8, r4
	cmp r8, r4, lsr #17
	ldrsb r2, [ip, r7]
	movgt r8, lr
	adds sb, sb, r2
	movmi sb, #0
	bmi _022024A0
	cmp sb, #0x58
	movgt sb, #0x58
_022024A0:
	strh r8, [r3]
	strb sb, [r3, #2]
	and r2, r7, #0xff
	orr r2, r6, r2, lsl #2
	and r6, r2, #0xff
	ldrsh sl, [r3]
	ldrsh r2, [r1, #4]
	and sb, sb, #0xff
	subs r8, r2, sl
	mov r2, sb, lsl #1
	movmi r7, #2
	ldrsh r2, [r5, r2]
	rsbmi r8, r8, #0
	movpl r7, #0
	cmp r8, r2
	orrge r7, r7, #1
	tst r7, #1
	moveq r2, #0
	tst r7, #2
	rsbne r2, r2, #0
	add r8, sl, r2
	cmp r8, r4
	movlt r8, r4
	cmp r8, r4, lsr #17
	ldrsb r2, [ip, r7]
	movgt r8, lr
	adds sb, sb, r2
	movmi sb, #0
	bmi _0220251C
	cmp sb, #0x58
	movgt sb, #0x58
_0220251C:
	strh r8, [r3]
	strb sb, [r3, #2]
	and r2, r7, #0xff
	orr r2, r6, r2, lsl #4
	and r6, r2, #0xff
	ldrsh r2, [r1, #6]
	ldrsh sl, [r3]
	and sb, sb, #0xff
	add r1, r1, #8
	subs r8, r2, sl
	mov r2, sb, lsl #1
	movmi r7, #2
	ldrsh r2, [r5, r2]
	rsbmi r8, r8, #0
	movpl r7, #0
	cmp r8, r2
	orrge r7, r7, #1
	tst r7, #1
	moveq r2, #0
	tst r7, #2
	rsbne r2, r2, #0
	add r8, sl, r2
	cmp r8, r4
	movlt r8, r4
	cmp r8, r4, lsr #17
	ldrsb r2, [ip, r7]
	movgt r8, lr
	adds sb, sb, r2
	movmi sb, #0
	bmi _0220259C
	cmp sb, #0x58
	movgt sb, #0x58
_0220259C:
	strh r8, [r3]
	and r2, r7, #0xff
	strb sb, [r3, #2]
	orr r2, r6, r2, lsl #6
	strb r2, [r0], #1
	ldr r2, [sp]
	add fp, fp, #1
	cmp fp, r2
	blo _022023C4
	ldmia sp!, {r3, r4, r5, r6, r7, r8, sb, sl, fp, pc}
	; .align 2, 0
_022025C4: .word 0x02215C54
_022025C8: .word 0x02215C38
	arm_func_end ov4_0220239C

	arm_func_start ov4_022025CC
ov4_022025CC: ; 0x022025CC
	stmfd sp!, {r3, lr}
	ldrsh ip, [r0]
	cmp r3, #2
	strh ip, [sp]
	ldrb ip, [r0, #2]
	strb ip, [sp, #2]
	beq _022025FC
	cmp r3, #3
	beq _02202610
	cmp r3, #4
	beq _02202624
	ldmia sp!, {r3, pc}
_022025FC:
	add r3, sp, #0
	add r0, r0, #4
	sub r2, r2, #4
	bl ov4_02202184
	ldmia sp!, {r3, pc}
_02202610:
	add r3, sp, #0
	add r0, r0, #4
	sub r2, r2, #4
	bl ov4_022017E4
	ldmia sp!, {r3, pc}
_02202624:
	add r3, sp, #0
	add r0, r0, #4
	sub r2, r2, #4
	bl ov4_02201504
	ldmia sp!, {r3, pc}
	arm_func_end ov4_022025CC

	arm_func_start ov4_02202638
ov4_02202638: ; 0x02202638
	stmfd sp!, {r4, lr}
	ldrsh r4, [r3]
	ldr ip, [sp, #8]
	mov lr, #0
	strh r4, [r0]
	ldrb r4, [r3, #2]
	cmp ip, #2
	strb r4, [r0, #2]
	strb lr, [r0, #3]
	beq _02202674
	cmp ip, #3
	beq _02202680
	cmp ip, #4
	beq _0220268C
	ldmia sp!, {r4, pc}
_02202674:
	add r0, r0, #4
	bl ov4_0220239C
	ldmia sp!, {r4, pc}
_02202680:
	add r0, r0, #4
	bl ov4_02201C78
	ldmia sp!, {r4, pc}
_0220268C:
	add r0, r0, #4
	bl ov4_02201658
	ldmia sp!, {r4, pc}
	arm_func_end ov4_02202638

	.rodata


	.global Unk_ov4_02215C38
Unk_ov4_02215C38: ; 0x02215C38
	.incbin "incbin/overlay4_rodata.bin", 0x3D0, 0x3D4 - 0x3D0

	.global Unk_ov4_02215C3C
Unk_ov4_02215C3C: ; 0x02215C3C
	.incbin "incbin/overlay4_rodata.bin", 0x3D4, 0x3DC - 0x3D4

	.global Unk_ov4_02215C44
Unk_ov4_02215C44: ; 0x02215C44
	.incbin "incbin/overlay4_rodata.bin", 0x3DC, 0x3EC - 0x3DC

	.global Unk_ov4_02215C54
Unk_ov4_02215C54: ; 0x02215C54
	.incbin "incbin/overlay4_rodata.bin", 0x3EC, 0xB4

